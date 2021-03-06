	.section	.text
	.align	16
	#Procedure 0x401630

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_25
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
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
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_19
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_19
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_25:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
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
	#Procedure 0x401830

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_32
	call	setlocale
	mov	edi, OFFSET FLAT:label_39
	mov	esi, OFFSET FLAT:label_40
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_39
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + have_read_stdin],  0
	mov	byte ptr [rip + count_bytes],  0
	mov	byte ptr [rip + break_spaces],  0
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r14
	call	getopt_long
	mov	r15d, 0x50
	cmp	eax, -1
	je	.label_46
	mov	r15d, 0x50
	lea	r12, [rsp + 6]
	nop	word ptr cs:[rax + rax]
.label_34:
	lea	ecx, [rax - 0x30]
	cmp	ecx, 0x47
	ja	.label_36
	jmp	qword ptr [(rcx * 8) + label_41]
.label_389:
	mov	rbx, qword ptr [rip + optarg]
	test	rbx, rbx
	je	.label_43
	dec	rbx
	mov	qword ptr [rip + optarg],  rbx
	jmp	.label_28
	nop	dword ptr [rax + rax]
.label_43:
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [rsp + 7], 0
	mov	qword ptr [rip + optarg],  r12
	mov	rbx, r12
	jmp	.label_28
.label_390:
	mov	byte ptr [rip + count_bytes],  1
	jmp	.label_37
.label_391:
	mov	byte ptr [rip + break_spaces],  1
	jmp	.label_37
.label_392:
	mov	rbx, qword ptr [rip + optarg]
	nop	
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -0xa
	mov	ecx, OFFSET FLAT:label_32
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r15, rax
.label_37:
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, -1
	jne	.label_34
.label_46:
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r13d
	jne	.label_30
	mov	edi, OFFSET FLAT:label_29
	mov	rsi, r15
	call	fold_file
	mov	ebx, eax
	jmp	.label_42
.label_30:
	mov	bl, 1
	cmp	eax, r13d
	jge	.label_42
	lea	rbp, [r14 + rax*8]
	sub	r13d, eax
	mov	bl, 1
	nop	word ptr cs:[rax + rax]
.label_33:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r15
	call	fold_file
	and	bl, al
	add	rbp, 8
	dec	r13d
	jne	.label_33
.label_42:
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_38
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_47
.label_38:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_36:
	cmp	eax, 0xffffff7d
	je	.label_31
	cmp	eax, 0xffffff7e
	jne	.label_35
	xor	edi, edi
	call	usage
.label_35:
	mov	edi, 1
	call	usage
.label_31:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_16
	mov	edx, OFFSET FLAT:label_27
	mov	r8d, OFFSET FLAT:label_44
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_47:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	xor	eax, eax
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x401a70

	.globl fold_file
	.type fold_file, @function
fold_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0x2d
	jne	.label_88
	cmp	byte ptr [rbx + 1], 0
	je	.label_69
.label_88:
	mov	esi, OFFSET FLAT:label_73
	mov	rdi, rbx
	call	fopen
	mov	r15, rax
.label_50:
	mov	qword ptr [rsp + 0x10], rbx
	test	r15, r15
	je	.label_84
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x18], r15
	jmp	.label_63
.label_56:
	mov	rdi, qword ptr [rip + fold_file.line_out]
	mov	byte ptr [rdi + rbp], bl
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, r14
	call	fwrite_unlocked
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_63:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_87
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_54:
	lea	r14, [rbp + 1]
	cmp	r14, qword ptr [rip + fold_file.allocated_out]
	jb	.label_81
	mov	rdi, qword ptr [rip + fold_file.line_out]
	mov	esi, OFFSET FLAT:fold_file.allocated_out
	call	x2realloc
	mov	qword ptr [rip + fold_file.line_out],  rax
.label_81:
	cmp	ebx, 0xa
	je	.label_56
	mov	dword ptr [rsp + 4], ebx
	mov	r14, rbp
	mov	rax, qword ptr [rsp + 8]
	jmp	.label_62
	nop	dword ptr [rax + rax]
.label_82:
	mov	byte ptr [r15 + r14], 0xa
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbp
	call	fwrite_unlocked
	xor	r14d, r14d
	xor	eax, eax
.label_62:
	mov	r15, rax
	mov	al, byte ptr [rip + count_bytes]
	jmp	.label_65
.label_61:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_68
	nop	dword ptr [rax + rax]
.label_65:
	test	al, 1
	je	.label_71
	inc	r15
	mov	rax, r15
	mov	ecx, dword ptr [rsp + 4]
	jmp	.label_72
.label_71:
	mov	ecx, dword ptr [rsp + 4]
	cmp	cl, 8
	je	.label_75
	cmp	cl, 9
	je	.label_77
	cmp	cl, 0xd
	mov	eax, 0
	je	.label_52
	inc	r15
	mov	rax, r15
	jmp	.label_72
.label_75:
	lea	rax, [r15 - 1]
	test	r15, r15
	cmove	rax, r15
	jmp	.label_72
.label_77:
	mov	eax, r15d
	and	eax, 7
	neg	rax
	lea	rax, [r15 + rax + 8]
	nop	
.label_72:
	cmp	rax, qword ptr [rsp + 0x20]
	jbe	.label_52
	mov	qword ptr [rsp + 8], rax
	mov	r15, qword ptr [rip + fold_file.line_out]
	cmp	byte ptr [rip + break_spaces],  1
	jne	.label_49
	lea	rbx, [r15 + r14]
	mov	r13b, 1
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_53:
	mov	rax, r14
	add	rax, rbp
	je	.label_49
	movzx	r12d, byte ptr [rbx + rbp - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	dec	rbp
	inc	r13b
	test	byte ptr [rax + r12*2], 1
	je	.label_53
	mov	rcx, qword ptr [rip + stdout]
	lea	rdx, [r14 + rbp + 1]
	mov	esi, 1
	mov	rdi, r15
	call	fwrite_unlocked
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_61
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_68:
	mov	rbx, qword ptr [rip + fold_file.line_out]
	add	r14, rbx
	lea	rsi, [rbp + r14 + 1]
	mov	r15, rbp
	not	r15
	mov	rdi, rbx
	mov	rdx, r15
	call	memmove
	cmp	rbp, -1
	mov	r14d, 0
	mov	eax, 0
	je	.label_62
	mov	al, 1
	mov	cl, byte ptr [rip + count_bytes]
	test	cl, cl
	mov	r14, r15
	jne	.label_65
	mov	r14, rbp
	not	r14
	mov	edi, r14d
	and	edi, 1
	cmp	rbp, -2
	mov	edx, 0
	mov	ecx, 0
	je	.label_80
	not	rbp
	and	r13b, 1
	movzx	eax, r13b
	sub	rbp, rax
	xor	edx, edx
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_85:
	movzx	eax, byte ptr [rbx + rcx]
	cmp	al, 0xd
	mov	esi, 0
	je	.label_51
	cmp	al, 9
	je	.label_89
	cmp	al, 8
	jne	.label_48
	lea	rsi, [rdx - 1]
	test	rdx, rdx
	cmove	rsi, rdx
	jmp	.label_51
	nop	word ptr cs:[rax + rax]
.label_89:
	mov	eax, edx
	and	eax, 7
	neg	rax
	lea	rsi, [rdx + rax + 8]
	jmp	.label_51
	nop	
.label_48:
	inc	rdx
	mov	rsi, rdx
.label_51:
	movzx	eax, byte ptr [rbx + rcx + 1]
	cmp	al, 8
	je	.label_57
	cmp	al, 9
	je	.label_66
	cmp	al, 0xd
	mov	edx, 0
	je	.label_60
	inc	rsi
	mov	rdx, rsi
	jmp	.label_60
	nop	word ptr cs:[rax + rax]
.label_57:
	lea	rdx, [rsi - 1]
	test	rsi, rsi
	cmove	rdx, rsi
	jmp	.label_60
	nop	dword ptr [rax]
.label_66:
	mov	eax, esi
	and	eax, 7
	neg	rax
	lea	rdx, [rsi + rax + 8]
.label_60:
	add	rcx, 2
	cmp	rbp, rcx
	jne	.label_85
.label_80:
	test	rdi, rdi
	mov	rax, rdx
	je	.label_62
	mov	al, byte ptr [rbx + rcx]
	cmp	al, 8
	je	.label_74
	cmp	al, 0xd
	mov	ecx, 0
	je	.label_78
	cmp	al, 9
	jne	.label_76
	mov	eax, edx
	and	eax, 7
	neg	rax
	lea	rcx, [rdx + rax + 8]
	jmp	.label_78
	nop	dword ptr [rax]
.label_49:
	lea	rbp, [r14 + 1]
	test	r14, r14
	jne	.label_82
	jmp	.label_83
.label_74:
	lea	rcx, [rdx - 1]
	test	rdx, rdx
	cmove	rcx, rdx
	jmp	.label_78
.label_76:
	inc	rdx
	mov	rcx, rdx
.label_78:
	mov	rax, rcx
	jmp	.label_62
	nop	word ptr [rax + rax]
.label_52:
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rip + fold_file.line_out]
	mov	byte ptr [rax + r14], cl
	inc	r14
	mov	rbp, r14
	mov	r15, qword ptr [rsp + 0x18]
	jmp	.label_63
.label_83:
	mov	eax, dword ptr [rsp + 4]
	mov	byte ptr [r15 + r14], al
	mov	r15, qword ptr [rsp + 0x18]
	jmp	.label_63
.label_87:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_54
	call	__errno_location
	mov	r14, rax
	mov	r12d, dword ptr [r14]
	test	rbp, rbp
	je	.label_58
	mov	rdi, qword ptr [rip + fold_file.line_out]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbp
	call	fwrite_unlocked
.label_58:
	test	byte ptr [r15], 0x20
	jne	.label_59
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	byte ptr [rbp], 0x2d
	jne	.label_64
	mov	bl, 1
	cmp	byte ptr [rbp + 1], 0
	je	.label_67
.label_64:
	mov	rdi, r15
	call	rpl_fclose
	mov	bl, 1
	cmp	eax, -1
	jne	.label_67
	mov	rdx, rbp
	mov	ebp, dword ptr [r14]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	jmp	.label_70
.label_84:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
.label_70:
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_79
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_67
.label_59:
	xor	edi, edi
	mov	esi, 3
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_79
	xor	eax, eax
	mov	esi, r12d
	call	error
	cmp	byte ptr [rbx], 0x2d
	jne	.label_86
	cmp	byte ptr [rbx + 1], 0
	je	.label_55
.label_86:
	mov	rdi, r15
	call	rpl_fclose
.label_55:
	xor	ebx, ebx
.label_67:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_69:
	mov	r15, qword ptr [rip + stdin]
	mov	byte ptr [rip + have_read_stdin],  1
	jmp	.label_50
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f30
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f50

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_95
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_92
	cmp	dword ptr [rbp], 0x20
	jne	.label_92
.label_95:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_91
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_92:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_90
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_79
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_91:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_90:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_94
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
	#Procedure 0x402010
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402020

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_96
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_96:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402040

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_97
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_99
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_99
	mov	esi, OFFSET FLAT:label_100
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_102
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_102:
	mov	rbx, r14
.label_99:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_97:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_98
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020f0
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
	#Procedure 0x402130
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
	#Procedure 0x402140
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
	#Procedure 0x402150
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
	#Procedure 0x402190
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
	#Procedure 0x4021b0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_103
	test	rdx, rdx
	je	.label_103
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_103:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021e0
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
	#Procedure 0x402260

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
	jmp	.label_153
	nop	
.label_195:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_126
	or	al, dl
	jne	.label_126
	test	dil, 1
	jne	.label_192
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_126
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_153
	jmp	.label_126
.label_430:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_201
	test	rbp, rbp
	je	.label_179
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_179:
	mov	r14d, 1
	jmp	.label_205
.label_431:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_206
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_145
.label_201:
	xor	r14d, r14d
.label_205:
	mov	eax, OFFSET FLAT:label_206
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_213
	nop	
.label_153:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_223
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_228]
.label_432:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_106
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_113
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_433:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_120
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_120
	xor	r14d, r14d
	nop	
.label_172:
	cmp	r14, rbp
	jae	.label_148
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_148:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_172
.label_120:
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
	jmp	.label_145
.label_425:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_145
.label_428:
	mov	al, 1
.label_426:
	mov	r12b, 1
.label_429:
	test	r12b, 1
	mov	cl, 1
	je	.label_163
	mov	ecx, eax
.label_163:
	mov	al, cl
.label_427:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_165
	test	rbp, rbp
	je	.label_171
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_171:
	mov	r14d, 1
	jmp	.label_217
.label_165:
	xor	r14d, r14d
.label_217:
	mov	ecx, OFFSET FLAT:label_113
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_213:
	mov	sil, r12b
.label_145:
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
	jmp	.label_184
	nop	word ptr cs:[rax + rax]
.label_104:
	inc	r12
.label_184:
	cmp	r11, -1
	je	.label_208
	cmp	r12, r11
	jne	.label_210
	jmp	.label_212
	nop	word ptr cs:[rax + rax]
.label_208:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_216
.label_210:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_224
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_137
	cmp	r11, -1
	jne	.label_137
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_137:
	cmp	rbx, r11
	jbe	.label_111
.label_224:
	xor	esi, esi
.label_138:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_114
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_117]
.label_444:
	test	r12, r12
	jne	.label_121
	jmp	.label_122
	nop	word ptr cs:[rax + rax]
.label_111:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_133
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_138
	jmp	.label_112
.label_133:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_138
.label_448:
	xor	eax, eax
	cmp	r11, -1
	je	.label_155
	test	r12, r12
	jne	.label_160
	cmp	r11, 1
	je	.label_122
	xor	r13d, r13d
	jmp	.label_108
.label_437:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_167
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_112
	cmp	r8d, 2
	jne	.label_173
	mov	eax, r9d
	and	al, 1
	jne	.label_173
	cmp	r14, rbp
	jae	.label_176
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_176:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_180
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_180:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_186
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_186:
	add	r14, 3
	mov	r9b, 1
.label_173:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_191
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_191:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_147
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_147
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_147
	cmp	r14, rbp
	jae	.label_177
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_177:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_199
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_199:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_108
.label_438:
	mov	bl, 0x62
	jmp	.label_110
.label_439:
	mov	cl, 0x74
	jmp	.label_136
.label_440:
	mov	bl, 0x76
	jmp	.label_110
.label_441:
	mov	bl, 0x66
	jmp	.label_110
.label_442:
	mov	cl, 0x72
	jmp	.label_136
.label_445:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_221
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_143
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
	jae	.label_229
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_229:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_115
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_115:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_119
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_119:
	add	r14, 3
	xor	r9d, r9d
.label_221:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_108
.label_446:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_127
	cmp	r8d, 2
	jne	.label_121
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_121
	jmp	.label_143
.label_447:
	cmp	r8d, 2
	jne	.label_140
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_143
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_209
.label_114:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_151
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_164
.label_155:
	test	r12, r12
	jne	.label_174
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_174
.label_122:
	mov	dl, 1
.label_443:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_143
	xor	eax, eax
	mov	r13b, dl
.label_108:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_185
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_187
	jmp	.label_188
	nop	word ptr cs:[rax + rax]
.label_185:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_188
.label_187:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_193
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_198
	nop	dword ptr [rax]
.label_188:
	test	sil, sil
.label_198:
	mov	ebx, r15d
	je	.label_125
	jmp	.label_203
.label_193:
	mov	ebx, r15d
	jmp	.label_203
.label_167:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_104
	xor	r15d, r15d
	jmp	.label_121
.label_140:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_136
	xor	eax, eax
	mov	r15b, 0x5c
.label_209:
	xor	r13d, r13d
	jmp	.label_125
.label_136:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_143
.label_110:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_108
	nop	
.label_203:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_112
	cmp	r8d, 2
	jne	.label_222
	mov	eax, r9d
	and	al, 1
	jne	.label_222
	cmp	r14, rbp
	jae	.label_226
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_226:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_230
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_230:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_128
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_128:
	add	r14, 3
	mov	r9b, 1
.label_222:
	cmp	r14, rbp
	jae	.label_162
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_162:
	inc	r14
	jmp	.label_181
.label_151:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_118
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_118:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_124
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_204:
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
	je	.label_141
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_157
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_175
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_169
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_218:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_190
	bt	rsi, rdx
	jb	.label_143
.label_190:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_218
.label_169:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_152
	xor	r13d, r13d
.label_152:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_204
	jmp	.label_159
.label_147:
	xor	r13d, r13d
	jmp	.label_108
.label_174:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_108
.label_127:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_121
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_121
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_121
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_207
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_123
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_215
	cmp	r14, rbp
	jae	.label_219
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_219:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_225
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_225:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_189
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_189:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_131
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_131:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_123:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_108
.label_121:
	xor	eax, eax
.label_160:
	xor	r13d, r13d
	jmp	.label_108
.label_124:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_154:
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
	je	.label_134
	cmp	rbp, -1
	je	.label_139
	cmp	rbp, -2
	je	.label_141
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_146
	xor	r13d, r13d
.label_146:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_154
	jmp	.label_159
.label_141:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_156
	lea	rax, [r10 + r12]
.label_182:
	cmp	byte ptr [rax + rsi], 0
	je	.label_156
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_182
.label_156:
	mov	qword ptr [rsp + 0x40], rsi
.label_157:
	xor	r13d, r13d
	jmp	.label_175
.label_139:
	xor	r13d, r13d
.label_134:
	mov	r10, qword ptr [rsp + 0x28]
.label_175:
	mov	r12, qword ptr [rsp + 0x40]
.label_159:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_164:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_183
	test	al, al
	je	.label_183
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_108
.label_183:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_197
	nop	word ptr [rax + rax]
.label_158:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_197:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_202
	test	sil, 1
	je	.label_178
	cmp	r14, rbp
	jae	.label_194
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_194:
	inc	r14
	xor	esi, esi
	jmp	.label_178
	nop	word ptr cs:[rax + rax]
.label_202:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_112
	cmp	r8d, 2
	jne	.label_211
	mov	eax, r9d
	and	al, 1
	jne	.label_211
	cmp	r14, rbp
	jae	.label_214
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_214:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_150
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_150:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_149
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_149:
	add	r14, 3
	mov	r9b, 1
.label_211:
	cmp	r14, rbp
	jae	.label_105
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_105:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_200
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_200:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_116
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_116:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_178:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_125
	test	r9b, 1
	je	.label_129
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_144
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_132
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_132:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_142
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_142:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_129
	nop	word ptr cs:[rax + rax]
.label_144:
	mov	rbx, rcx
.label_129:
	cmp	r14, rbp
	jae	.label_158
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_158
	nop	
.label_125:
	test	r9b, 1
	je	.label_166
	and	al, 1
	jne	.label_166
	cmp	r14, rbp
	jae	.label_170
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_170:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_220
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_220:
	add	r14, 2
	xor	r9d, r9d
.label_166:
	mov	ebx, r15d
.label_181:
	cmp	r14, rbp
	jae	.label_135
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_135:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_104
.label_207:
	xor	r13d, r13d
	jmp	.label_108
	nop	word ptr cs:[rax + rax]
.label_212:
	mov	rcx, r12
.label_216:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_195
	or	al, dl
	jne	.label_195
	mov	r11, rcx
	jmp	.label_112
.label_143:
	mov	eax, 2
.label_196:
	mov	qword ptr [rsp + 0x38], rax
.label_112:
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
.label_161:
	mov	r14, rax
.label_130:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_126:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_227
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_168
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_168
	inc	rdx
	nop	dword ptr [rax + rax]
.label_109:
	cmp	r14, rbp
	jae	.label_107
	mov	byte ptr [rcx + r14], al
.label_107:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_109
	jmp	.label_168
.label_192:
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
	jmp	.label_161
.label_227:
	mov	rcx, qword ptr [rsp + 0x10]
.label_168:
	cmp	r14, rbp
	jae	.label_130
	mov	byte ptr [rcx + r14], 0
	jmp	.label_130
.label_215:
	mov	eax, 5
	jmp	.label_196
.label_223:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403090
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
	#Procedure 0x403160
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
	je	.label_231
	mov	qword ptr [rax], rbx
.label_231:
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
	#Procedure 0x403250
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_232
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_235:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_235
.label_232:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_236
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_233], OFFSET FLAT:slot0
.label_236:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_234
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_234:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403300

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
	js	.label_237
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_240
	cmp	r12d, 0x7fffffff
	je	.label_242
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
	jne	.label_238
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_238:
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
.label_240:
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
	jbe	.label_243
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_239
.label_243:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_241
	mov	rdi, r14
	call	free
.label_241:
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
.label_239:
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
.label_237:
	call	abort
.label_242:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4034c0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034d0
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
	#Procedure 0x4034f0
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
	#Procedure 0x403510
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
	je	.label_244
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
.label_244:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403580
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
	je	.label_245
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
.label_245:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035f0
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
	je	.label_246
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
.label_246:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403660
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
	je	.label_247
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
.label_247:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036d0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_248]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_249]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_250]
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
	#Procedure 0x403740
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_248]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_249]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_250]
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
	#Procedure 0x4037b0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_248]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_249]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_250]
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
	#Procedure 0x403810
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_248]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_249]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_250]
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
	#Procedure 0x403870

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
	je	.label_251
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
.label_251:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403910
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_248]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_249]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_250]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_252
	test	rdx, rdx
	je	.label_252
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_252:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x403980
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_248]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_249]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_250]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_253
	test	rdx, rdx
	je	.label_253
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_253:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039f0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_248]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_249]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_250]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_254
	test	rsi, rsi
	je	.label_254
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_254:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403a60
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_248]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_249]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_250]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_255
	test	rsi, rsi
	je	.label_255
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
.label_255:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ad0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ae0
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
	#Procedure 0x403b00
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b20

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
	#Procedure 0x403b40

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
	jne	.label_257
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_262
	cmp	ecx, 0x55
	jne	.label_256
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_256
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_256
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_256
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_256
	cmp	byte ptr [rax + 5], 0
	jne	.label_256
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_259
	mov	eax, OFFSET FLAT:label_260
	jmp	.label_261
.label_262:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_256
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_256
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_256
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_256
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_256
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_256
	cmp	byte ptr [rax + 7], 0
	je	.label_258
.label_256:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_206
	mov	eax, OFFSET FLAT:label_113
.label_261:
	cmove	rax, rcx
.label_257:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_258:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_263
	mov	eax, OFFSET FLAT:label_264
	jmp	.label_261
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c10

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
	je	.label_275
	mov	edx, OFFSET FLAT:label_280
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_267
.label_275:
	mov	edx, OFFSET FLAT:label_269
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_267:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
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
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_276
	jmp	qword ptr [(r12 * 8) + label_277]
.label_484:
	add	rsp, 8
	jmp	.label_268
.label_276:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
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
	jmp	.label_268
.label_485:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
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
.label_486:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
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
.label_487:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
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
.label_488:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
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
	jmp	.label_268
.label_489:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
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
	jmp	.label_268
.label_490:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
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
	jmp	.label_268
.label_491:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_282
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
	jmp	.label_268
.label_493:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_266
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
	jmp	.label_268
.label_492:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_272
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
.label_268:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f70
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_284:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_284
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fa0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_295
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_297
.label_295:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_297:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_286
	cmp	r10d, 0x29
	jae	.label_294
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_296
.label_294:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_296:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_286
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
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_286
	cmp	r10d, 0x29
	jae	.label_290
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_291
.label_290:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_291:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_286
	cmp	r10d, 0x29
	jae	.label_288
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_289
.label_288:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_289:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_286
	cmp	r10d, 0x29
	jae	.label_285
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_287
.label_285:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_287:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_286
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_286
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_286
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_286
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_286:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404190

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_298
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_298:
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
	#Procedure 0x404220
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_300
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_303
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_304
	test	rax, rax
	je	.label_303
.label_304:
	pop	rbx
	ret	
.label_303:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_305
	test	rax, rax
	je	.label_306
.label_305:
	pop	rbx
	ret	
.label_306:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404300
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_307
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_308
	test	rbx, rbx
	jne	.label_308
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_308:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_309
	test	rax, rax
	je	.label_307
.label_309:
	pop	rbx
	ret	
.label_307:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404350

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_310
	test	rbx, rbx
	jne	.label_310
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_310:
	mov	rsi, rbx
	call	realloc
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
	#Procedure 0x404380
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_313
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_316
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_314
.label_313:
	test	rcx, rcx
	jne	.label_319
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_319:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_315
.label_314:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_318
	test	rbx, rbx
	jne	.label_318
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_318:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_317
	test	rax, rax
	je	.label_316
.label_317:
	pop	rbx
	ret	
.label_316:
	call	xalloc_die
.label_315:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404420
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_320
	test	rax, rax
	je	.label_321
.label_320:
	pop	rbx
	ret	
.label_321:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404440

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_322
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_325
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_326
	call	free
	xor	eax, eax
	jmp	.label_323
.label_322:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_324
	mov	qword ptr [rsi], rbx
.label_326:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_323
	test	rax, rax
	je	.label_324
.label_323:
	pop	rbx
	ret	
.label_324:
	call	xalloc_die
.label_325:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044b0
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
	je	.label_328
	test	r14, r14
	je	.label_327
.label_328:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_327:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044f0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_329
	call	rpl_calloc
	test	rax, rax
	je	.label_329
	pop	rcx
	ret	
.label_329:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404520

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
	je	.label_330
	test	r15, r15
	je	.label_331
.label_330:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_331:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404560
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
	je	.label_333
	test	r15, r15
	je	.label_332
.label_333:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_332:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_79
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4045e0

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_336
	cmp	eax, 1
	je	.label_338
	cmp	eax, 3
	jne	.label_340
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_335
.label_338:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_335
.label_336:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_339
	cmp	rbx, r15
	jbe	.label_341
.label_339:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_337
	mov	dword ptr [rax], 0x4b
	jmp	.label_335
.label_340:
	call	__errno_location
	jmp	.label_335
.label_337:
	mov	dword ptr [rax], 0x22
.label_335:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_94
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_341:
	mov	rax, rbx
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
	.align	16
	#Procedure 0x4046b0

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046e0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_353
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_348:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_348
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_342
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_356
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_363
	cmp	eax, 0x22
	jne	.label_342
	mov	ebp, 1
.label_363:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_345
	jmp	.label_347
.label_356:
	test	r14, r14
	je	.label_342
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_342
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_342
.label_345:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_347
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_357
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_344
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_344
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_344
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_349
	cmp	eax, 0x44
	je	.label_349
	cmp	eax, 0x69
	jne	.label_344
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_344
.label_349:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_344:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_357
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_343]
.label_397:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_354
.label_357:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_355
.label_398:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_358
.label_399:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_346
.label_401:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_352
.label_395:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_350
.label_396:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_346
.label_400:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_352:
	or	dl, r10b
.label_354:
	or	dl, bl
.label_346:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_351
.label_402:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	mov	r13d, r15d
	sbb	r15b, r15b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_359
.label_403:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_359:
	movzx	eax, dl
.label_358:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_351
.label_404:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_350:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_351
.label_405:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_351:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_347:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_355:
	mov	r13d, r15d
.label_342:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_353:
	mov	edi, OFFSET FLAT:label_360
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_362
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d20

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_364
	test	rsi, rsi
	mov	ecx, 1
	je	.label_365
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_365
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_364:
	mov	ecx, 1
.label_365:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d70

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_366
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_368
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_366
.label_368:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_366
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_367
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_367:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_366:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404df0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_369
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_369
	test	byte ptr [rbx + 1], 1
	je	.label_369
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_369:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e30

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
	jne	.label_370
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_370
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_371
.label_370:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_371:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_372
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_372:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404ea0

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
	je	.label_373
	cmp	r15, -2
	jb	.label_373
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_373
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_373:
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
	#Procedure 0x404f00

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
	jne	.label_375
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_374
	test	cl, cl
	jne	.label_374
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_374
.label_375:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_374
	call	__errno_location
	mov	dword ptr [rax], 0
.label_374:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f60

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_377
	cmp	byte ptr [rax], 0x43
	jne	.label_379
	cmp	byte ptr [rax + 1], 0
	je	.label_376
.label_379:
	mov	esi, OFFSET FLAT:label_378
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_377
.label_376:
	xor	ebx, ebx
.label_377:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fa0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_32
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_380
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x404fd0

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
