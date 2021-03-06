	.section	.text
	.align	32
	#Procedure 0x401840

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
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	#Procedure 0x401940

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401970

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_25
	nop	
.label_24:
	mov	edi, OFFSET FLAT:label_17
	call	strcmp
	test	eax, eax
	je	.label_22
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_24
.label_22:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_17
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_18
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_18
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_17
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:label_30
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a90

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
	mov	esi, OFFSET FLAT:label_30
	call	setlocale
	mov	edi, OFFSET FLAT:label_35
	mov	esi, OFFSET FLAT:label_47
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_35
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
	jmp	.label_43
.label_45:
	mov	r12d, OFFSET FLAT:sysv_sum_file
.label_43:
	mov	edx, OFFSET FLAT:label_34
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x71
	jle	.label_42
	cmp	eax, 0x72
	mov	r12d, OFFSET FLAT:bsd_sum_file
	je	.label_43
	cmp	eax, 0x73
	je	.label_45
	jmp	.label_33
.label_42:
	cmp	eax, -1
	jne	.label_46
	mov	ebp, r15d
	sub	ebp,  dword ptr [dword ptr [rip + optind]]
	jle	.label_31
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	bl, 1
	cmp	eax, r15d
	jge	.label_36
	mov	bl, 1
	nop	dword ptr [rax + rax]
.label_44:
	cdqe	
	mov	rdi, qword ptr [r14 + rax*8]
	mov	esi, ebp
	call	r12
	and	bl, al
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r15d
	jl	.label_44
	jmp	.label_36
.label_31:
	mov	edi, OFFSET FLAT:label_32
	mov	esi, ebp
	call	r12
	mov	ebx, eax
.label_36:
	cmp	byte ptr [byte ptr [rip + have_read_stdin]],  1
	jne	.label_37
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_40
.label_37:
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
.label_46:
	cmp	eax, 0xffffff7d
	je	.label_48
	cmp	eax, 0xffffff7e
	jne	.label_33
	xor	edi, edi
	call	usage
.label_48:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_17
	mov	edx, OFFSET FLAT:label_20
	mov	r8d, OFFSET FLAT:label_38
	mov	r9d, OFFSET FLAT:label_39
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_33:
	mov	edi, 1
	call	usage
.label_40:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	edx, OFFSET FLAT:label_32
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_41
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c50

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
	jne	.label_55
	cmp	byte ptr [r15 + 1], 0
	je	.label_59
.label_55:
	mov	esi, OFFSET FLAT:label_60
	mov	rdi, r15
	call	fopen
	mov	r12, rax
	test	r12, r12
	je	.label_50
	xor	r13d, r13d
	jmp	.label_54
.label_59:
	mov	r12,  qword ptr [word ptr [rip + stdin]]
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	edi, edi
	xor	esi, esi
	call	xset_binary_mode
	mov	r13b, 1
.label_54:
	mov	esi, 2
	mov	rdi, r12
	call	fadvise
	mov	rdi, r12
	call	getc_unlocked
	xor	ebp, ebp
	cmp	eax, -1
	mov	ebx, 0
	je	.label_52
	xor	ebx, ebx
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_56:
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
	jne	.label_56
.label_52:
	mov	rdi, r12
	call	ferror_unlocked
	test	eax, eax
	je	.label_51
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_41
	xor	eax, eax
	mov	esi, ebp
	call	error
	test	r13b, r13b
	jne	.label_53
	mov	rdi, r12
	call	rpl_fclose
	xor	ebx, ebx
	jmp	.label_53
.label_51:
	test	r13b, r13b
	jne	.label_57
	mov	rdi, r12
	call	rpl_fclose
	test	eax, eax
	je	.label_57
.label_50:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_41
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_53
.label_57:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	ecx, 1
	mov	r8d, 0x400
	mov	rdi, rbp
	call	human_readable
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_58
	xor	eax, eax
	mov	edx, ebx
	call	__printf_chk
	cmp	r14d, 2
	jl	.label_61
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_49
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
.label_61:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	bl, 1
.label_53:
	mov	eax, ebx
	add	rsp, 0x298
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
	#Procedure 0x401e00

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
	jne	.label_62
	cmp	byte ptr [r15 + 1], 0
	je	.label_69
.label_62:
	xor	r13d, r13d
	xor	esi, esi
	xor	eax, eax
	mov	rdi, r15
	call	open
	mov	r12d, eax
	cmp	r12d, -1
	jne	.label_71
	jmp	.label_74
.label_69:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	r12d, r12d
	xor	edi, edi
	xor	esi, esi
	call	xset_binary_mode
	mov	r13b, 1
.label_71:
	mov	dword ptr [rsp + 0xc], ebx
	xor	r14d, r14d
	lea	rbp, [rsp + 0x2a0]
	xor	ebx, ebx
	jmp	.label_65
	nop	dword ptr [rax]
.label_70:
	add	rbx, rax
.label_65:
	mov	edx, 0x2000
	mov	edi, r12d
	mov	rsi, rbp
	call	safe_read
	cmp	rax, -1
	je	.label_63
	test	rax, rax
	je	.label_73
	mov	rcx, rax
	mov	rdx, rbp
	nop	word ptr cs:[rax + rax]
.label_67:
	movzx	esi, byte ptr [rdx]
	add	r14d, esi
	inc	rdx
	dec	rcx
	jne	.label_67
	jmp	.label_70
.label_63:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_41
	xor	eax, eax
	mov	esi, ebp
	call	error
	test	r13b, r13b
	jne	.label_66
	mov	edi, r12d
	call	close
	xor	ebx, ebx
	jmp	.label_66
.label_73:
	test	r13b, r13b
	jne	.label_72
	mov	edi, r12d
	call	close
	test	eax, eax
	je	.label_72
.label_74:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_41
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_66
.label_72:
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
	mov	esi, OFFSET FLAT:label_68
	xor	eax, eax
	mov	edx, ebp
	call	__printf_chk
	cmp	dword ptr [rsp + 0xc], 0
	je	.label_64
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_49
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
.label_64:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	bl, 1
.label_66:
	mov	eax, ebx
	add	rsp, 0x22a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fc0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fd0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fe0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_77
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_75
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_75
.label_77:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_78
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_75:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_76
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_41
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_78:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_76:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_79
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020a0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020b0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_81
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_81:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020d0

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
	mov	eax, OFFSET FLAT:label_89
	cmovb	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	rbx, qword ptr [rbp + 8]
	mov	rbp, qword ptr [rbp + 0x10]
	mov	rdi, rbx
	call	strlen
	mov	rsi, r14
	cmp	rax, 0x11
	mov	r14d, OFFSET FLAT:label_30
	cmovb	r14, rbx
	mov	qword ptr [rsp + 0x20], r12
	lea	rax, [r12 + 0x287]
	mov	qword ptr [rsp + 0x28], rax
	cmp	rsi, r15
	mov	qword ptr [rsp + 0x60], rsi
	mov	qword ptr [rsp + 0x70], rbp
	mov	qword ptr [rsp + 0x68], r14
	jbe	.label_101
	test	r15, r15
	mov	r8d, dword ptr [rsp + 0x34]
	je	.label_82
	xor	edx, edx
	mov	rax, rsi
	div	r15
	test	rdx, rdx
	jne	.label_82
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
	jmp	.label_114
.label_101:
	xor	edx, edx
	mov	rax, r15
	div	rsi
	test	rdx, rdx
	mov	r8d, dword ptr [rsp + 0x34]
	jne	.label_82
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
	jne	.label_82
.label_114:
	mov	r15d, dword ptr [rsp + 0x1c]
	and	r15d, 0x10
	mov	ebx, 0xffffffff
	je	.label_90
	mov	esi, r8d
	xor	ebx, ebx
	cmp	rsi, r12
	mov	rax, qword ptr [rsp + 0x28]
	jbe	.label_94
	mov	r14, rax
	jmp	.label_84
.label_82:
	mov	qword ptr [rsp + 0x80], rsi
	xor	eax, eax
	test	rsi, rsi
	setns	al
	fild	qword ptr [rsp + 0x80]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_99]]
	mov	qword ptr [rsp + 0x88], r13
	xor	eax, eax
	test	r13, r13
	setns	al
	fild	qword ptr [rsp + 0x88]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_99]]
	mov	qword ptr [rsp + 0x90], r15
	xor	eax, eax
	test	r15, r15
	setns	al
	fild	qword ptr [rsp + 0x90]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_99]]
	fdivrp	st(2)
	fmulp	st(1)
	mov	r12d, dword ptr [rsp + 0x1c]
	test	r12b, 0x10
	jne	.label_100
	fstp	xword ptr [rsp]
	mov	edi, dword ptr [rsp + 0x3c]
	call	adjust_value
	fstp	xword ptr [rsp]
	xor	r13d, r13d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_117
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x20]
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	ebx, 0xffffffff
	jmp	.label_110
.label_100:
	mov	eax, r8d
	mov	qword ptr [rsp + 0x78], rax
	fld1	
	xor	ebx, ebx
	fild	qword ptr [rsp + 0x78]
	fldz	
	nop	dword ptr [rax]
.label_91:
	fstp	st(0)
	fmul	st(1), st(0)
	inc	ebx
	fld	st(0)
	fmul	st(2)
	cmp	ebx, 7
	jg	.label_87
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	fldz	
	jae	.label_91
.label_87:
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
	mov	ecx, OFFSET FLAT:label_96
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
	jb	.label_103
	fld	xword ptr [rsp + 0x40]
	fstp	st(0)
	inc	r13
	test	r12b, 8
	je	.label_110
	cmp	byte ptr [r15 + rax - 1], 0x30
	jne	.label_110
.label_103:
	fld	dword ptr [dword ptr [rip + label_113]]
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
	mov	ecx, OFFSET FLAT:label_117
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
.label_110:
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbp, r14
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rax
	call	memmove
	sub	r14, r13
	jmp	.label_85
.label_90:
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_84
.label_94:
	xor	ebx, ebx
	mov	r9d, dword ptr [rsp + 0x3c]
	nop	dword ptr [rax]
.label_105:
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
	jae	.label_92
	xor	eax, eax
	add	edx, ebp
	setne	al
	mov	ebp, eax
	jmp	.label_97
	nop	word ptr cs:[rax + rax]
.label_92:
	add	edx, ebp
	cmp	r8d, edx
	sbb	ebp, ebp
	and	ebp, 1
	or	ebp, 2
.label_97:
	inc	ebx
	cmp	ebx, 7
	jg	.label_120
	cmp	rsi, r12
	jbe	.label_105
.label_120:
	cmp	r12, 9
	ja	.label_107
	cmp	r9d, 1
	jne	.label_108
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	cmp	eax, 2
	ja	.label_109
	jmp	.label_93
.label_107:
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_84
.label_108:
	test	r9d, r9d
	jne	.label_93
	test	ebp, ebp
	je	.label_93
.label_109:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_93
	inc	r12
	xor	ecx, ecx
	cmp	r12, 9
	mov	ebp, 0
	ja	.label_115
.label_93:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 8
	je	.label_116
	test	ecx, ecx
	jne	.label_116
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_84
.label_116:
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
	jmp	.label_84
.label_115:
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r12d, 0xa
.label_84:
	mov	eax, dword ptr [rsp + 0x1c]
	and	al, 3
	je	.label_112
	cmp	al, 1
	jne	.label_88
	movsxd	rax, ebp
	mov	edx, r12d
	and	edx, 1
	xor	esi, esi
	add	rdx, rax
	setne	sil
	add	esi, ecx
	cmp	esi, 5
	jg	.label_121
	jmp	.label_88
.label_112:
	add	ecx, ebp
	jle	.label_88
.label_121:
	inc	r12
	mov	eax, dword ptr [rsp + 0x34]
	cmp	ebx, 7
	jg	.label_88
	test	r15d, r15d
	je	.label_88
	cmp	r12, rax
	jne	.label_88
	inc	ebx
	mov	r12d, 1
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 8
	jne	.label_88
	mov	byte ptr [r14 - 1], 0x30
	dec	r14
	mov	rdx, qword ptr [rsp + 0x50]
	sub	r14, rdx
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x40]
	call	memcpy
	mov	r12d, 1
.label_88:
	mov	r15, qword ptr [rsp + 0x20]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, r14
	nop	word ptr cs:[rax + rax]
.label_118:
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
	ja	.label_118
	mov	r12d, dword ptr [rsp + 0x1c]
.label_85:
	test	r12b, 4
	je	.label_119
	sub	r14, rbp
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x68]
	call	group_number
	mov	rbp, rax
.label_119:
	mov	rsi, qword ptr [rsp + 0x60]
	mov	eax, dword ptr [rsp + 0x34]
	mov	rdi, qword ptr [rsp + 0x28]
	test	r12b, r12b
	jns	.label_83
	test	ebx, ebx
	jns	.label_86
	xor	ebx, ebx
	cmp	rsi, 2
	jb	.label_86
	mov	eax, eax
	xor	ecx, ecx
	mov	edx, 1
	nop	word ptr cs:[rax + rax]
.label_95:
	mov	ebx, 8
	cmp	ecx, 7
	je	.label_86
	inc	ecx
	imul	rdx, rax
	cmp	rdx, rsi
	mov	ebx, ecx
	jb	.label_95
.label_86:
	mov	eax, r12d
	and	eax, 0x100
	test	r12b, 0x40
	je	.label_98
	mov	ecx, ebx
	or	ecx, eax
	je	.label_98
	mov	byte ptr [r15 + 0x287], 0x20
	add	r15, 0x288
	mov	rdi, r15
.label_98:
	test	ebx, ebx
	je	.label_102
	cmp	dword ptr [rsp + 0x38], 0
	jne	.label_104
	mov	cl, 0x6b
	cmp	ebx, 1
	je	.label_106
.label_104:
	movsxd	rcx, ebx
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_106:
	mov	byte ptr [rdi], cl
	inc	rdi
.label_102:
	test	eax, eax
	je	.label_83
	cmp	dword ptr [rsp + 0x38], 0
	je	.label_111
	test	ebx, ebx
	je	.label_111
	mov	byte ptr [rdi], 0x69
	inc	rdi
.label_111:
	mov	byte ptr [rdi], 0x42
	inc	rdi
.label_83:
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
	.section	.text
	.align	32
	#Procedure 0x4026d0

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	fld	xword ptr [rsp + 8]
	cmp	edi, 1
	je	.label_122
	fld	xword ptr [word ptr [rip + label_124]]
	fucomip	st(1)
	jbe	.label_122
	fld	dword ptr [dword ptr [rip + label_123]]
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
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_99]]
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
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_99]]
.label_122:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4027a0

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
	jmp	.label_127
	nop	dword ptr [rax]
.label_125:
	add	rbx, r13
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r14
	call	memcpy
.label_127:
	movzx	eax, byte ptr [r15]
	test	rax, rax
	je	.label_126
	cmp	al, 0x7f
	cmovae	rax, r12
	inc	r15
	mov	rbp, rax
.label_126:
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
	jne	.label_125
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402850
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
	jne	.label_128
	call	default_block_size
	mov	qword ptr [rbx], rax
	mov	eax, 4
.label_128:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402880

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
	jne	.label_129
	mov	edi, OFFSET FLAT:label_135
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	jne	.label_129
	mov	edi, OFFSET FLAT:label_137
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	je	.label_139
.label_129:
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
	js	.label_138
	cdqe	
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	mov	qword ptr [r15], 1
.label_131:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_140
.label_138:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_130
	mov	rdi, rbx
	mov	rcx, r15
	call	xstrtoumax
	test	eax, eax
	je	.label_136
	mov	dword ptr [r14], 0
.label_140:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_136:
	mov	al, byte ptr [rbx]
	add	al, 0xd0
	cmp	al, 0xa
	jb	.label_131
	mov	rax, qword ptr [rsp]
	nop	dword ptr [rax]
.label_132:
	cmp	rax, rbx
	je	.label_134
	movzx	ecx, byte ptr [rbx + 1]
	inc	rbx
	add	cl, 0xd0
	cmp	cl, 0xa
	jae	.label_132
	jmp	.label_131
.label_139:
	call	default_block_size
	mov	qword ptr [r15], rax
	xor	ebp, ebp
	jmp	.label_131
.label_134:
	mov	ecx, ebp
	or	ecx, 0x80
	or	ebp, 0x180
	cmp	byte ptr [rax - 1], 0x42
	cmove	ecx, ebp
	jne	.label_133
	cmp	byte ptr [rax - 2], 0x69
	jne	.label_131
.label_133:
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_131
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402990

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rax
	mov	edi, OFFSET FLAT:label_141
	call	getenv
	test	rax, rax
	mov	ecx, 0x200
	mov	eax, 0x400
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4029b0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_145
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_147
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_147
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_143
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_143:
	mov	rbx, r14
.label_147:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_145:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_146
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a60
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
	#Procedure 0x402aa0
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
	#Procedure 0x402ab0
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
	#Procedure 0x402ac0

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
	#Procedure 0x402b00
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
	#Procedure 0x402b20

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_148
	test	rdx, rdx
	je	.label_148
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_148:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b50
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bd0

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
.label_179:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_205
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_185]]
.label_450:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_189
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_197
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_451:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_206
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_206
	xor	r14d, r14d
.label_220:
	cmp	r14, r11
	jae	.label_217
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_217:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_220
.label_206:
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
	jmp	.label_210
.label_443:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_210
.label_446:
	mov	al, 1
.label_444:
	mov	r12b, 1
.label_447:
	test	r12b, 1
	mov	cl, 1
	je	.label_238
	mov	ecx, eax
.label_238:
	mov	al, cl
.label_445:
	test	r12b, 1
	jne	.label_240
	test	r11, r11
	je	.label_212
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_212:
	mov	r14d, 1
	jmp	.label_245
.label_240:
	xor	r14d, r14d
.label_245:
	mov	ecx, OFFSET FLAT:label_197
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_210
.label_448:
	test	r12b, 1
	jne	.label_252
	test	r11, r11
	je	.label_260
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_260:
	mov	r14d, 1
	jmp	.label_256
.label_449:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_209
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_210
.label_252:
	xor	r14d, r14d
.label_256:
	mov	eax, OFFSET FLAT:label_209
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_210:
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
	jmp	.label_203
	nop	dword ptr [rax]
.label_163:
	inc	rsi
.label_203:
	cmp	rbp, -1
	je	.label_196
	cmp	rsi, rbp
	jne	.label_176
	jmp	.label_201
	nop	word ptr cs:[rax + rax]
.label_196:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_201
.label_176:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_208
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_233
	cmp	rbp, -1
	jne	.label_233
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
.label_233:
	cmp	rbx, rbp
	jbe	.label_226
.label_208:
	xor	r8d, r8d
.label_253:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_227
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_230]]
.label_473:
	test	rsi, rsi
	jne	.label_167
	jmp	.label_234
	nop	
.label_226:
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
	jne	.label_243
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_253
	jmp	.label_157
.label_243:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_253
.label_477:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_259
	test	rsi, rsi
	jne	.label_261
	cmp	rbp, 1
	je	.label_234
	xor	r13d, r13d
	jmp	.label_175
.label_466:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_150
	cmp	byte ptr [rsp + 7], 0
	jne	.label_154
	cmp	r12d, 2
	jne	.label_156
	mov	eax, r9d
	and	al, 1
	jne	.label_156
	cmp	r14, r11
	jae	.label_160
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_160:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_164
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_164:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_170
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_170:
	add	r14, 3
	mov	r9b, 1
.label_156:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_169
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_169:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_180
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_180
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_180
	cmp	r14, r11
	jae	.label_190
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_190:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_213
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_213:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_175
.label_467:
	mov	bl, 0x62
	jmp	.label_204
.label_468:
	mov	cl, 0x74
	jmp	.label_191
.label_469:
	mov	bl, 0x76
	jmp	.label_204
.label_470:
	mov	bl, 0x66
	jmp	.label_204
.label_471:
	mov	cl, 0x72
	jmp	.label_191
.label_474:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_215
	cmp	byte ptr [rsp + 7], 0
	jne	.label_154
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
	jae	.label_223
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_223:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_231
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_231:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_235
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_235:
	add	r14, 3
	xor	r9d, r9d
.label_215:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_175
.label_475:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_242
	cmp	r12d, 2
	jne	.label_167
	cmp	byte ptr [rsp + 7], 0
	je	.label_167
	jmp	.label_154
.label_476:
	cmp	r12d, 2
	jne	.label_249
	cmp	byte ptr [rsp + 7], 0
	jne	.label_154
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_177
.label_227:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_193
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
.label_159:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_171
	test	r8b, r8b
	je	.label_171
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_175
.label_259:
	test	rsi, rsi
	jne	.label_178
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_178
.label_234:
	mov	dl, 1
.label_472:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_154
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_175:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_186
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_187
	jmp	.label_158
	nop	word ptr cs:[rax + rax]
.label_186:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_158
.label_187:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_198
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_177
	jmp	.label_214
	nop	dword ptr [rax]
.label_158:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_214
	jmp	.label_177
.label_198:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_214
.label_150:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_163
	xor	r15d, r15d
	jmp	.label_167
.label_249:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_191
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_177
.label_191:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_154
.label_204:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_175
	nop	word ptr cs:[rax + rax]
.label_214:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_154
	cmp	r12d, 2
	jne	.label_192
	mov	eax, r9d
	and	al, 1
	jne	.label_192
	cmp	r14, r11
	jae	.label_241
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_241:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_224
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_224:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_247
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_247:
	add	r14, 3
	mov	r9b, 1
.label_192:
	cmp	r14, r11
	jae	.label_251
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_251:
	inc	r14
	jmp	.label_254
.label_193:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_257
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_257:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_216:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_162
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_166
	cmp	rbp, -2
	je	.label_258
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_152
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_225:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_202
	bt	rsi, rdx
	jb	.label_157
.label_202:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_225
.label_152:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_200
	xor	r13d, r13d
.label_200:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_216
	jmp	.label_159
.label_180:
	xor	r13d, r13d
	jmp	.label_175
.label_178:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_175
.label_242:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_167
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_167
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_167
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_232
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_222
	cmp	byte ptr [rsp + 7], 0
	jne	.label_154
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_221
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_221:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_182
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_182:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_244
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_244:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_246
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_246:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_175
.label_167:
	xor	eax, eax
.label_261:
	xor	r13d, r13d
	jmp	.label_175
.label_171:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_255
	nop	word ptr cs:[rax + rax]
.label_219:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_255:
	test	r8b, r8b
	je	.label_262
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_153
	cmp	r14, r11
	jae	.label_263
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_263:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_153
	nop	dword ptr [rax]
.label_262:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_157
	cmp	r12d, 2
	jne	.label_161
	mov	eax, r9d
	and	al, 1
	jne	.label_161
	cmp	r14, r11
	jae	.label_165
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_165:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_151
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_151:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_155
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_155:
	add	r14, 3
	mov	r9b, 1
.label_161:
	cmp	r14, r11
	jae	.label_194
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_194:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_183
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_183:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_188
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_188:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_153:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_177
	test	r9b, 1
	je	.label_207
	mov	ebx, eax
	and	bl, 1
	jne	.label_207
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_211
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_211:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_236
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_236:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_207:
	cmp	r14, r11
	jae	.label_219
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_219
	nop	word ptr cs:[rax + rax]
.label_177:
	test	r9b, 1
	je	.label_228
	and	al, 1
	jne	.label_228
	cmp	r14, r11
	jae	.label_229
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_229:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_173
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_173:
	add	r14, 2
	xor	r9d, r9d
.label_228:
	mov	ebx, r15d
.label_254:
	cmp	r14, r11
	jae	.label_237
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_237:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_163
.label_166:
	xor	r13d, r13d
.label_162:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_159
.label_258:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_248
	mov	rsi, qword ptr [rsp + 0x50]
.label_250:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_168
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_250
	xor	r13d, r13d
	jmp	.label_159
.label_248:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_159
.label_168:
	xor	r13d, r13d
	jmp	.label_159
.label_232:
	xor	r13d, r13d
	jmp	.label_175
.label_222:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_175
	nop	dword ptr [rax + rax]
.label_201:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_149
	or	dl, al
	je	.label_157
.label_149:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_172
	or	dl, al
	jne	.label_172
	test	r10b, 1
	jne	.label_174
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_172
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_179
.label_172:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_181
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_184
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_184
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_199:
	cmp	r14, r11
	jae	.label_195
	mov	byte ptr [rcx + r14], al
.label_195:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_199
	jmp	.label_184
.label_154:
	mov	qword ptr [rsp + 0x20], rbp
.label_157:
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
.label_239:
	mov	r14, rax
.label_218:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_174:
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
	jmp	.label_239
.label_181:
	mov	rcx, qword ptr [rsp + 8]
.label_184:
	cmp	r14, r11
	jae	.label_218
	mov	byte ptr [rcx + r14], 0
	jmp	.label_218
.label_205:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403990
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039a0

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
	je	.label_264
	mov	qword ptr [rax], rbx
.label_264:
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
	#Procedure 0x403a90
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_265
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_267:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_267
.label_265:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_268
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_269]], OFFSET FLAT:slot0
.label_268:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_266
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_266:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b30

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403b40

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
	js	.label_270
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_273
	cmp	r12d, 0x7fffffff
	je	.label_275
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
	jne	.label_271
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_271:
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
.label_273:
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
	jbe	.label_276
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_272
.label_276:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_274
	mov	rdi, r14
	call	free
.label_274:
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
.label_272:
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
.label_270:
	call	abort
.label_275:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d00

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d10
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d20
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
	#Procedure 0x403d30

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d70

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
	je	.label_277
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
.label_277:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403dd0

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e10
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e30
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e50

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
	mov	rcx,  qword ptr [word ptr [rip + label_278]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_279]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_280]]
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ec0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ed0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ee0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ef0

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f40

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f50

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
	mov	rax,  qword ptr [word ptr [rip + label_278]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_279]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_280]]
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fc0
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403fe0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404000

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404010
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
	#Procedure 0x404020

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404030

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404040

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
	jne	.label_288
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
	je	.label_285
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_281
	mov	eax, OFFSET FLAT:label_282
	jmp	.label_283
.label_285:
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
	je	.label_284
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_286
	mov	eax, OFFSET FLAT:label_287
	jmp	.label_283
.label_284:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_209
	mov	eax, OFFSET FLAT:label_197
.label_283:
	cmove	rax, rcx
.label_288:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404100

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
	je	.label_289
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_291
	jmp	.label_290
.label_289:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_290
.label_291:
	mov	eax, 1
	test	bpl, bpl
	je	.label_290
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
.label_290:
	add	rsp, 8
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
	#Procedure 0x404180

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
	je	.label_294
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_292
	jmp	.label_293
.label_294:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_293
.label_292:
	mov	eax, 1
	test	bpl, bpl
	je	.label_293
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
.label_293:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404210

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
	je	.label_295
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_297
	jmp	.label_296
.label_295:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_296
.label_297:
	mov	eax, 1
	test	bpl, bpl
	je	.label_296
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
.label_296:
	add	rsp, 8
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
	#Procedure 0x404290

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
	je	.label_300
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_299
	jmp	.label_298
.label_300:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_298
.label_299:
	mov	eax, 1
	test	bpl, bpl
	je	.label_298
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
.label_298:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404300

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
	je	.label_303
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_301
	jmp	.label_302
.label_303:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_302
.label_301:
	mov	eax, 1
	test	bpl, bpl
	je	.label_302
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_302:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404360

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
	je	.label_304
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_306
	jmp	.label_305
.label_304:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_305
.label_306:
	mov	eax, 1
	test	bpl, bpl
	je	.label_305
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_305:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043b0

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
	je	.label_309
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_308
	jmp	.label_307
.label_309:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_307
.label_308:
	mov	eax, 1
	test	bpl, bpl
	je	.label_307
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_307:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404400

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_311
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_312
	jmp	.label_310
.label_311:
	mov	eax, 1
	test	cl, cl
	je	.label_310
.label_312:
	xor	eax, eax
.label_310:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404430

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
.label_314:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_313
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_314
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
	jb	.label_313
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_314
.label_313:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044c0

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
	je	.label_315
	mov	edx, OFFSET FLAT:label_325
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_331
.label_315:
	mov	edx, OFFSET FLAT:label_332
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_331:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_318
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
	mov	esi, OFFSET FLAT:label_333
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_320
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_321]]
.label_508:
	add	rsp, 8
	jmp	.label_319
.label_320:
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
	mov	esi, OFFSET FLAT:label_316
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
	mov	esi, OFFSET FLAT:label_329
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
	mov	esi, OFFSET FLAT:label_326
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
	mov	esi, OFFSET FLAT:label_323
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
	mov	esi, OFFSET FLAT:label_322
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
	mov	esi, OFFSET FLAT:label_324
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
	mov	esi, OFFSET FLAT:label_327
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
	mov	esi, OFFSET FLAT:label_330
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
	mov	esi, OFFSET FLAT:label_317
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404820
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_334:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_334
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404850

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_336:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_335
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_337
	nop	dword ptr [rax]
.label_335:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_337:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_338
	inc	r9
	cmp	r9, 0xa
	jb	.label_336
.label_338:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4048b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_339
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_339:
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
	#Procedure 0x404940
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_341
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049c0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_344
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_344:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_345
	test	rax, rax
	je	.label_346
.label_345:
	pop	rbx
	ret	
.label_346:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a10
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_347
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_347:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a40

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_348
	test	rbx, rbx
	jne	.label_348
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_348:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_350
	test	rax, rax
	je	.label_349
.label_350:
	pop	rbx
	ret	
.label_349:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404a70

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_351
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_354
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_352
.label_351:
	test	rcx, rcx
	jne	.label_355
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_355:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_353
.label_352:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_354:
	call	xalloc_die
.label_353:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404af0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b00
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b10
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b40
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_356
	call	rpl_calloc
	test	rax, rax
	je	.label_356
	pop	rcx
	ret	
.label_356:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b70

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ba0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_41
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404bf0
	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c00

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	jmp	set_binary_mode
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c10

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
	jae	.label_362
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_374:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_374
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_371
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_363
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_369
	cmp	eax, 0x22
	jne	.label_371
	mov	r12d, 1
.label_369:
	test	rbp, rbp
	jne	.label_373
	jmp	.label_358
.label_363:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_371
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_371
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_371
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_373:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_358
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_364
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_368
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_368
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_361
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_375
	cmp	ecx, 0x44
	je	.label_375
	cmp	ecx, 0x69
	jne	.label_361
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_361
.label_375:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_361
.label_368:
	mov	rsi, r14
.label_361:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_364
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_370]]
.label_455:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_360
.label_364:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_372
.label_456:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_360
.label_457:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_360
.label_459:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_360
.label_453:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_359
.label_454:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_360
.label_458:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_360
.label_460:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_360
.label_461:
	lea	rdi, [rsp]
	mov	edx, 7
.label_360:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_359:
	mov	rsi, r14
.label_463:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_358:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_372:
	mov	r15d, r12d
.label_371:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_462:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_359
.label_464:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_359
.label_362:
	mov	edi, OFFSET FLAT:label_365
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_367
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ec0

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ef0

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
	je	.label_376
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_377:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_377
.label_376:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404f30

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_378
	test	rsi, rsi
	mov	ecx, 1
	je	.label_379
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_379
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_378:
	mov	ecx, 1
.label_379:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f80

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_381
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_380
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_381
.label_380:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_381
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_382
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_382:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_381:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405000

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_383
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_383
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_383:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405030

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_384
	ret	
.label_384:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405050

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
	jne	.label_385
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_385
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_386
.label_385:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_386:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_387
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_387:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4050c0

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
	je	.label_388
	cmp	r15, -2
	jb	.label_388
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_388
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_388:
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
	#Procedure 0x405120

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405130

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
	je	.label_392
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_389:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_390
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_394
	cmp	qword ptr [rsp + 8], -1
	je	.label_395
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_391
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_390
.label_391:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_390
.label_395:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_390:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_389
	jmp	.label_393
.label_392:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_393:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_394:
	mov	rax, rbp
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
	#Procedure 0x405230

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
	je	.label_396
	mov	esi, OFFSET FLAT:label_397
	jmp	.label_398
.label_396:
	mov	esi, OFFSET FLAT:label_399
.label_398:
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
	#Procedure 0x4052a0

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
	mov	esi, OFFSET FLAT:label_400
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_406
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_402:
	test	rbp, rbp
	je	.label_404
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_401
.label_404:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_407
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_403
	nop	word ptr cs:[rax + rax]
.label_401:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_405
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_403:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_402
.label_406:
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x4053a0
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
	jns	.label_408
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
.label_408:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405410
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
	je	.label_409
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_410:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_409
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_410
.label_409:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405480
	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405490
	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054a0

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054b0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_411
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_411
.label_412:
	ret	
.label_411:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_412
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054e0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_413
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_413:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405500
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405510
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405520
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_414
.label_415:
	ret	
.label_414:
	cmp	edi, 0x7f
	je	.label_415
	xor	eax, eax
	jmp	.label_415
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405540
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405550
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405560
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405570
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405580
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_416
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_417]]
.label_418:
	ret	
.label_416:
	xor	eax, eax
	jmp	.label_418
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055a0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_419
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_419:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055c0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055d0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_420
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_420:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4055f0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405600
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405610

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
	je	.label_422
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_421
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_421
.label_422:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_421
	test	cl, cl
	jne	.label_421
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_421:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405680

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_424
	cmp	byte ptr [rax], 0x43
	jne	.label_426
	cmp	byte ptr [rax + 1], 0
	je	.label_423
.label_426:
	mov	esi, OFFSET FLAT:label_425
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_424
.label_423:
	xor	ebx, ebx
.label_424:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_30
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_427
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x4056f0

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
