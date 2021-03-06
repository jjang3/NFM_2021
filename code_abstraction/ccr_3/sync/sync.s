	.section	.text
	.align	16
	#Procedure 0x4014f0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_24
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	mov	esi, OFFSET FLAT:label_11
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
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_14
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_26
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_26
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_14
	mov	ecx, OFFSET FLAT:label_15
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_24:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
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
	.align	16
	#Procedure 0x4016d0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	dword ptr [rsp + 0x14], edi
	mov	qword ptr [rsp + 0x20], rsi
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_60
	call	setlocale
	mov	edi, OFFSET FLAT:label_33
	mov	esi, OFFSET FLAT:label_64
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_33
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	ebx, ebx
	jmp	.label_39
	nop	dword ptr [rax]
.label_55:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
.label_39:
	mov	edx, OFFSET FLAT:label_45
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 0x14]
	mov	rsi, qword ptr [rsp + 0x20]
	call	getopt_long
	cmp	eax, 0x63
	jle	.label_52
	cmp	eax, 0x64
	je	.label_55
	cmp	eax, 0x66
	mov	bl, 1
	je	.label_39
	jmp	.label_29
.label_52:
	cmp	eax, -1
	jne	.label_59
	mov	eax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rsp + 0x18]
	test	cl, cl
	je	.label_41
	test	bl, bl
	jne	.label_27
.label_41:
	mov	rcx, qword ptr [rsp + 0x18]
	test	cl, cl
	je	.label_31
	cmp	eax, dword ptr [rsp + 0x14]
	jge	.label_36
.label_31:
	cmp	eax, dword ptr [rsp + 0x14]
	jge	.label_38
	test	bl, bl
	je	.label_40
	mov	cl, 2
	mov	qword ptr [rsp + 0x18], rcx
.label_40:
	mov	r14b, 1
	nop	word ptr cs:[rax + rax]
.label_28:
	cdqe	
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rcx + rax*8]
	mov	esi, 0x800
	xor	eax, eax
	mov	rdi, r13
	call	open
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_56
	call	__errno_location
	mov	r12d, dword ptr [rax]
	mov	esi, 0x801
	xor	eax, eax
	mov	rdi, r13
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_61
.label_56:
	mov	esi, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ecx, eax
	cmp	ecx, -1
	je	.label_32
	and	ecx, 0xfffff7ff
	mov	esi, 4
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	rpl_fcntl
	test	eax, eax
	js	.label_32
	mov	rax, qword ptr [rsp + 0x18]
	and	al, 3
	je	.label_42
	cmp	al, 2
	je	.label_44
	cmp	al, 1
	jne	.label_47
	mov	edi, ebp
	call	fdatasync
	jmp	.label_51
	nop	word ptr cs:[rax + rax]
.label_32:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	jmp	.label_54
.label_61:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbp
	call	error
	jmp	.label_46
.label_42:
	mov	edi, ebp
	call	fsync
	jmp	.label_51
.label_44:
	mov	edi, ebp
	call	syncfs
.label_51:
	mov	r15b, 1
	test	eax, eax
	jns	.label_43
.label_47:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
.label_54:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
.label_43:
	mov	edi, ebp
	call	close
	test	eax, eax
	jns	.label_62
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
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
	call	error
.label_62:
	test	r15b, r15b
	setne	bl
.label_46:
	and	r14b, bl
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, dword ptr [rsp + 0x14]
	jl	.label_28
	xor	r14b, 1
	movzx	eax, r14b
	jmp	.label_57
.label_38:
	call	sync
	xor	eax, eax
.label_57:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_59:
	cmp	eax, 0xffffff7d
	je	.label_63
	cmp	eax, 0xffffff7e
	jne	.label_29
	xor	edi, edi
	call	usage
.label_27:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	jmp	.label_35
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
.label_35:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_63:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_15
	mov	edx, OFFSET FLAT:label_19
	mov	r8d, OFFSET FLAT:label_49
	mov	r9d, OFFSET FLAT:label_50
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_29:
	mov	edi, 1
	call	usage
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a10
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a30

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_71
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_68
	cmp	dword ptr [rbp], 0x20
	jne	.label_68
.label_71:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_67
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_65
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_67:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_65:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_70
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
	#Procedure 0x401af0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_75
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_73
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_73
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_74
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_74:
	mov	rbx, r14
.label_73:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_75:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_76
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ba0
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
	.align	16
	#Procedure 0x401be0
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
	.align	16
	#Procedure 0x401bf0
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
	.align	16
	#Procedure 0x401c00
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
	.align	16
	#Procedure 0x401c40
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
	.align	16
	#Procedure 0x401c60
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_78
	test	rdx, rdx
	je	.label_78
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_78:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c90
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
	.align	16
	#Procedure 0x401d10

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
	jmp	.label_82
	nop	
.label_80:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_137
	or	al, dl
	jne	.label_137
	test	dil, 1
	jne	.label_205
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_137
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_82
	jmp	.label_137
.label_417:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_92
	test	rbp, rbp
	je	.label_161
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_161:
	mov	r14d, 1
	jmp	.label_97
.label_418:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_98
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_99
.label_92:
	xor	r14d, r14d
.label_97:
	mov	eax, OFFSET FLAT:label_98
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_131
	nop	
.label_82:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_119
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_125]
.label_419:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_133
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_147
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_420:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_143
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_143
	xor	r14d, r14d
	nop	
.label_158:
	cmp	r14, rbp
	jae	.label_153
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_153:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_158
.label_143:
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
	jmp	.label_99
.label_412:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_99
.label_415:
	mov	al, 1
.label_413:
	mov	r12b, 1
.label_416:
	test	r12b, 1
	mov	cl, 1
	je	.label_180
	mov	ecx, eax
.label_180:
	mov	al, cl
.label_414:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_181
	test	rbp, rbp
	je	.label_187
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_187:
	mov	r14d, 1
	jmp	.label_188
.label_181:
	xor	r14d, r14d
.label_188:
	mov	ecx, OFFSET FLAT:label_147
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_131:
	mov	sil, r12b
.label_99:
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
	jmp	.label_196
	nop	word ptr cs:[rax + rax]
.label_83:
	inc	r12
.label_196:
	cmp	r11, -1
	je	.label_106
	cmp	r12, r11
	jne	.label_108
	jmp	.label_110
	nop	word ptr cs:[rax + rax]
.label_106:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_114
.label_108:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_120
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_124
	cmp	r11, -1
	jne	.label_124
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_124:
	cmp	rbx, r11
	jbe	.label_138
.label_120:
	xor	esi, esi
.label_162:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_141
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_145]
.label_381:
	test	r12, r12
	jne	.label_95
	jmp	.label_85
	nop	word ptr cs:[rax + rax]
.label_138:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_157
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_162
	jmp	.label_90
.label_157:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_162
.label_385:
	xor	eax, eax
	cmp	r11, -1
	je	.label_173
	test	r12, r12
	jne	.label_177
	cmp	r11, 1
	je	.label_85
	xor	r13d, r13d
	jmp	.label_88
.label_374:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_183
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_90
	cmp	r8d, 2
	jne	.label_190
	mov	eax, r9d
	and	al, 1
	jne	.label_190
	cmp	r14, rbp
	jae	.label_192
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_192:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_193
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_193:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_198
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_198:
	add	r14, 3
	mov	r9b, 1
.label_190:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_204
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_204:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_79
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_79
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_79
	cmp	r14, rbp
	jae	.label_140
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_140:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_179
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_179:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_88
.label_375:
	mov	bl, 0x62
	jmp	.label_107
.label_376:
	mov	cl, 0x74
	jmp	.label_100
.label_377:
	mov	bl, 0x76
	jmp	.label_107
.label_378:
	mov	bl, 0x66
	jmp	.label_107
.label_379:
	mov	cl, 0x72
	jmp	.label_100
.label_382:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_117
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_104
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
	jae	.label_142
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_142:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_148
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_148:
	add	r14, 3
	xor	r9d, r9d
.label_117:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_88
.label_383:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_149
	cmp	r8d, 2
	jne	.label_95
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_95
	jmp	.label_104
.label_384:
	cmp	r8d, 2
	jne	.label_169
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_104
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_168
.label_141:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_170
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_165
.label_173:
	test	r12, r12
	jne	.label_189
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_189
.label_85:
	mov	dl, 1
.label_380:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_104
	xor	eax, eax
	mov	r13b, dl
.label_88:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_197
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_199
	jmp	.label_201
	nop	word ptr cs:[rax + rax]
.label_197:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_201
.label_199:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_87
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_84
	nop	dword ptr [rax]
.label_201:
	test	sil, sil
.label_84:
	mov	ebx, r15d
	je	.label_102
	jmp	.label_94
.label_87:
	mov	ebx, r15d
	jmp	.label_94
.label_183:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_83
	xor	r15d, r15d
	jmp	.label_95
.label_169:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_100
	xor	eax, eax
	mov	r15b, 0x5c
.label_168:
	xor	r13d, r13d
	jmp	.label_102
.label_100:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_104
.label_107:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_88
	nop	
.label_94:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_90
	cmp	r8d, 2
	jne	.label_118
	mov	eax, r9d
	and	al, 1
	jne	.label_118
	cmp	r14, rbp
	jae	.label_123
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_123:
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
.label_118:
	cmp	r14, rbp
	jae	.label_139
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_139:
	inc	r14
	jmp	.label_166
.label_170:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_146
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_146:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_89
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_200:
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
	je	.label_171
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_175
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_178
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_185
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_128:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_191
	bt	rsi, rdx
	jb	.label_104
.label_191:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_128
.label_185:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_202
	xor	r13d, r13d
.label_202:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_200
	jmp	.label_86
.label_79:
	xor	r13d, r13d
	jmp	.label_88
.label_189:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_88
.label_149:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_95
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_95
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_95
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_103
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_111
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_113
	cmp	r14, rbp
	jae	.label_115
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_115:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_121
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_121:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_203
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_203:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_122
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_122:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_111:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_88
.label_95:
	xor	eax, eax
.label_177:
	xor	r13d, r13d
	jmp	.label_88
.label_89:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_172:
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
	je	.label_150
	cmp	rbp, -1
	je	.label_163
	cmp	rbp, -2
	je	.label_171
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_167
	xor	r13d, r13d
.label_167:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_172
	jmp	.label_86
.label_171:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_136
	lea	rax, [r10 + r12]
.label_159:
	cmp	byte ptr [rax + rsi], 0
	je	.label_136
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_159
.label_136:
	mov	qword ptr [rsp + 0x40], rsi
.label_175:
	xor	r13d, r13d
	jmp	.label_178
.label_163:
	xor	r13d, r13d
.label_150:
	mov	r10, qword ptr [rsp + 0x28]
.label_178:
	mov	r12, qword ptr [rsp + 0x40]
.label_86:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_165:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_195
	test	al, al
	je	.label_195
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_88
.label_195:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_81
	nop	word ptr [rax + rax]
.label_176:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_81:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_93
	test	sil, 1
	je	.label_101
	cmp	r14, rbp
	jae	.label_96
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_96:
	inc	r14
	xor	esi, esi
	jmp	.label_101
	nop	word ptr cs:[rax + rax]
.label_93:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_90
	cmp	r8d, 2
	jne	.label_109
	mov	eax, r9d
	and	al, 1
	jne	.label_109
	cmp	r14, rbp
	jae	.label_112
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_112:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_156
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_156:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_164
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_164:
	add	r14, 3
	mov	r9b, 1
.label_109:
	cmp	r14, rbp
	jae	.label_130
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_130:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_116
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_116:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_144
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_144:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_101:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_102
	test	r9b, 1
	je	.label_151
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_91
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_155
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_155:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_174
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_174:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_151
	nop	word ptr cs:[rax + rax]
.label_91:
	mov	rbx, rcx
.label_151:
	cmp	r14, rbp
	jae	.label_176
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_176
	nop	
.label_102:
	test	r9b, 1
	je	.label_182
	and	al, 1
	jne	.label_182
	cmp	r14, rbp
	jae	.label_186
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_186:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_154
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_154:
	add	r14, 2
	xor	r9d, r9d
.label_182:
	mov	ebx, r15d
.label_166:
	cmp	r14, rbp
	jae	.label_194
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_194:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_83
.label_103:
	xor	r13d, r13d
	jmp	.label_88
	nop	word ptr cs:[rax + rax]
.label_110:
	mov	rcx, r12
.label_114:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_80
	or	al, dl
	jne	.label_80
	mov	r11, rcx
	jmp	.label_90
.label_104:
	mov	eax, 2
.label_160:
	mov	qword ptr [rsp + 0x38], rax
.label_90:
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
.label_105:
	mov	r14, rax
.label_152:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_137:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_184
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_129
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_129
	inc	rdx
	nop	dword ptr [rax + rax]
.label_135:
	cmp	r14, rbp
	jae	.label_134
	mov	byte ptr [rcx + r14], al
.label_134:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_135
	jmp	.label_129
.label_205:
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
	jmp	.label_105
.label_184:
	mov	rcx, qword ptr [rsp + 0x10]
.label_129:
	cmp	r14, rbp
	jae	.label_152
	mov	byte ptr [rcx + r14], 0
	jmp	.label_152
.label_113:
	mov	eax, 5
	jmp	.label_160
.label_119:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402b40
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
	.align	16
	#Procedure 0x402c10
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
	je	.label_206
	mov	qword ptr [rax], rbx
.label_206:
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
	.align	16
	#Procedure 0x402d00
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_207
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_209:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_209
.label_207:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_211
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_210], OFFSET FLAT:slot0
.label_211:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_208
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_208:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402da0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x402db0

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
	js	.label_215
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_218
	cmp	r12d, 0x7fffffff
	je	.label_213
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
	jne	.label_216
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_216:
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
.label_218:
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
	jbe	.label_214
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_217
.label_214:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_212
	mov	rdi, r14
	call	free
.label_212:
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
.label_217:
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
.label_215:
	call	abort
.label_213:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402f70
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f80
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
	.align	16
	#Procedure 0x402fa0
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
	.align	16
	#Procedure 0x402fc0
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
	je	.label_219
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
.label_219:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403030
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
	je	.label_220
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
.label_220:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030a0

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
	je	.label_221
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
.label_221:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403110
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
	je	.label_222
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
.label_222:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403180
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_223]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_224]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_225]
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
	.align	16
	#Procedure 0x4031f0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_223]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_224]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_225]
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
	.align	16
	#Procedure 0x403260

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_223]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_224]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_225]
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
	.align	16
	#Procedure 0x4032c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_223]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_224]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_225]
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
	.align	16
	#Procedure 0x403320
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
	je	.label_226
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
.label_226:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033c0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_223]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_224]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_225]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_227
	test	rdx, rdx
	je	.label_227
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_227:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x403430
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_223]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_224]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_225]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_228
	test	rdx, rdx
	je	.label_228
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_228:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034a0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_223]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_224]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_225]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_229
	test	rsi, rsi
	je	.label_229
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_229:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403510
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_223]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_224]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_225]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_230
	test	rsi, rsi
	je	.label_230
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
.label_230:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403580
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403590
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
	.align	16
	#Procedure 0x4035b0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035d0
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
	.align	16
	#Procedure 0x4035f0

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
	jne	.label_232
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_237
	cmp	ecx, 0x55
	jne	.label_231
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_231
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_231
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_231
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_231
	cmp	byte ptr [rax + 5], 0
	jne	.label_231
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_234
	mov	eax, OFFSET FLAT:label_235
	jmp	.label_236
.label_237:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_231
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_231
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_231
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_231
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_231
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_231
	cmp	byte ptr [rax + 7], 0
	je	.label_233
.label_231:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_98
	mov	eax, OFFSET FLAT:label_147
.label_236:
	cmove	rax, rcx
.label_232:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_233:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_238
	mov	eax, OFFSET FLAT:label_239
	jmp	.label_236
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036c0

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
	je	.label_240
	mov	edx, OFFSET FLAT:label_250
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_256
.label_240:
	mov	edx, OFFSET FLAT:label_257
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_256:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
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
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_245
	jmp	qword ptr [(r12 * 8) + label_246]
.label_356:
	add	rsp, 8
	jmp	.label_244
.label_245:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
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
	jmp	.label_244
.label_357:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_241
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
.label_358:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_254
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
.label_359:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
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
.label_360:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
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
	jmp	.label_244
.label_361:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
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
	jmp	.label_244
.label_362:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
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
	jmp	.label_244
.label_363:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
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
	jmp	.label_244
.label_365:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
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
	jmp	.label_244
.label_364:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
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
.label_244:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a20
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_259:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_259
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a50

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_264
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_267
.label_264:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_267:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_266
	cmp	r10d, 0x29
	jae	.label_263
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_265
.label_263:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_265:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_266
	cmp	r10d, 0x29
	jae	.label_261
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_262
.label_261:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_262:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_266
	cmp	r10d, 0x29
	jae	.label_272
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_260
.label_272:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_260:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_266
	cmp	r10d, 0x29
	jae	.label_270
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_271
.label_270:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_271:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_266
	cmp	r10d, 0x29
	jae	.label_268
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_269
.label_268:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_269:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_266
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_266
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_266
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_266
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_266:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c40

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_273
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_273:
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
	.align	16
	#Procedure 0x403cd0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_275
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_277
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_14
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d50
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_278
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_279
	test	rax, rax
	je	.label_278
.label_279:
	pop	rbx
	ret	
.label_278:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d90

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_280
	test	rax, rax
	je	.label_281
.label_280:
	pop	rbx
	ret	
.label_281:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403db0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_282
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_283
	test	rbx, rbx
	jne	.label_283
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_283:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_284
	test	rax, rax
	je	.label_282
.label_284:
	pop	rbx
	ret	
.label_282:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e00

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_285
	test	rbx, rbx
	jne	.label_285
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_285:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_287
	test	rax, rax
	je	.label_286
.label_287:
	pop	rbx
	ret	
.label_286:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403e30
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_291
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_293
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_288
.label_291:
	test	rcx, rcx
	jne	.label_294
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_294:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_289
.label_288:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_290
	test	rbx, rbx
	jne	.label_290
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_290:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_292
	test	rax, rax
	je	.label_293
.label_292:
	pop	rbx
	ret	
.label_293:
	call	xalloc_die
.label_289:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ed0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_295
	test	rax, rax
	je	.label_296
.label_295:
	pop	rbx
	ret	
.label_296:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ef0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_299
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_301
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_298
	call	free
	xor	eax, eax
	jmp	.label_300
.label_299:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_297
	mov	qword ptr [rsi], rbx
.label_298:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_300
	test	rax, rax
	je	.label_297
.label_300:
	pop	rbx
	ret	
.label_297:
	call	xalloc_die
.label_301:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f60
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
	je	.label_303
	test	r14, r14
	je	.label_302
.label_303:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_302:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fa0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_304
	call	rpl_calloc
	test	rax, rax
	je	.label_304
	pop	rcx
	ret	
.label_304:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fd0

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
	je	.label_305
	test	r15, r15
	je	.label_306
.label_305:
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404010
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
	je	.label_308
	test	r15, r15
	je	.label_307
.label_308:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_307:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404060

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404090

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_310
	test	rsi, rsi
	mov	ecx, 1
	je	.label_311
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_311
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_310:
	mov	ecx, 1
.label_311:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040e0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_329
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_329:
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
	ja	.label_319
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_330
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_318
	test	esi, esi
	jne	.label_319
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_332
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_312
.label_319:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_313
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_318
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_321
.label_330:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_325
.label_318:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_326
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_327
.label_326:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_327:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_328:
	call	fcntl
.label_325:
	mov	ebp, eax
.label_314:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_321:
	cmp	eax, 6
	jne	.label_313
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_316
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_324
.label_313:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_320
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_323
.label_332:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_312:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_328
.label_316:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_324:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_331
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_315
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_315
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_314
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_322
.label_315:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_314
.label_320:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_323:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_325
.label_331:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_322:
	test	al, al
	je	.label_314
	test	ebp, ebp
	js	.label_314
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_317
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_314
.label_317:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_314
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404380

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
	je	.label_333
	cmp	r15, -2
	jb	.label_333
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_333
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_333:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043e0

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
	jne	.label_335
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_334
	test	cl, cl
	jne	.label_334
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_334
.label_335:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_334
	call	__errno_location
	mov	dword ptr [rax], 0
.label_334:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404440

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_337
	cmp	byte ptr [rax], 0x43
	jne	.label_339
	cmp	byte ptr [rax + 1], 0
	je	.label_336
.label_339:
	mov	esi, OFFSET FLAT:label_338
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_337
.label_336:
	xor	ebx, ebx
.label_337:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404480

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
	mov	eax, OFFSET FLAT:label_340
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_341
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_343
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_341
.label_343:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_341
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_342
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_342:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_341:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404530

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_344
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_344
	test	byte ptr [rbx + 1], 1
	je	.label_344
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_344:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404570

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
	jne	.label_345
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_345
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_346
.label_345:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_346:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_347
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_347:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x4045e0

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
