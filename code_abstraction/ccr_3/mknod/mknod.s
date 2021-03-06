	.section	.text
	.align	16
	#Procedure 0x401590

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_19
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
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
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_24
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_24
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_10
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_19:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401800

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
	mov	r12d, edi
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_35
	call	setlocale
	mov	edi, OFFSET FLAT:label_38
	mov	esi, OFFSET FLAT:label_39
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_38
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r14d, r14d
	jmp	.label_45
	nop	word ptr cs:[rax + rax]
.label_59:
	mov	r14, qword ptr [rip + optarg]
.label_45:
	mov	edx, OFFSET FLAT:label_47
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r13
	call	getopt_long
	cmp	eax, 0x59
	jle	.label_55
	cmp	eax, 0x5a
	je	.label_58
	cmp	eax, 0x6d
	je	.label_59
	jmp	.label_62
	nop	word ptr cs:[rax + rax]
.label_58:
	cmp	qword ptr [rip + optarg],  0
	je	.label_45
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_45
.label_55:
	cmp	eax, -1
	jne	.label_71
	mov	r15d, 0x1b6
	test	r14, r14
	je	.label_74
	mov	rdi, r14
	call	mode_compile
	mov	rbp, rax
	test	rbp, rbp
	je	.label_54
	xor	edi, edi
	call	umask
	mov	ebx, eax
	mov	edi, ebx
	call	umask
	mov	edi, 0x1b6
	xor	esi, esi
	xor	r8d, r8d
	mov	edx, ebx
	mov	rcx, rbp
	call	mode_adjust
	mov	r15d, eax
	mov	rdi, rbp
	call	free
	cmp	r15d, 0x200
	jae	.label_37
.label_74:
	movsxd	rax, dword ptr [rip + optind]
	mov	bpl, 1
	cmp	eax, r12d
	jge	.label_42
	lea	ecx, [rax + 1]
	cmp	ecx, r12d
	jge	.label_44
	mov	rcx, qword ptr [r13 + rax*8 + 8]
	cmp	byte ptr [rcx], 0x70
	sete	bpl
	jmp	.label_42
.label_44:
	xor	ebp, ebp
.label_42:
	xor	ecx, ecx
	test	bpl, bpl
	sete	cl
	lea	rbx, [rcx + rcx + 2]
	mov	ecx, r12d
	sub	ecx, eax
	movsxd	rcx, ecx
	cmp	rcx, rbx
	jb	.label_34
	cmp	rbx, rcx
	jb	.label_52
	mov	rcx, qword ptr [r13 + rax*8 + 8]
	movsx	ecx, byte ptr [rcx]
	add	ecx, -0x62
	cmp	ecx, 0x13
	ja	.label_56
	mov	ebp, 0x6000
	jmp	qword ptr [(rcx * 8) + label_63]
.label_491:
	mov	ebp, 0x2000
.label_490:
	mov	r12, qword ptr [r13 + rax*8 + 0x10]
	mov	rbx, qword ptr [r13 + rax*8 + 0x18]
	lea	rcx, [rsp]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rdi, r12
	call	xstrtoumax
	test	eax, eax
	jne	.label_68
	mov	rax, qword ptr [rsp]
	mov	ecx, eax
	cmp	rax, rcx
	jne	.label_68
	lea	rcx, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rdi, rbx
	call	xstrtoumax
	test	eax, eax
	jne	.label_78
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, eax
	cmp	rax, rcx
	jne	.label_78
	mov	rdx, qword ptr [rsp]
	movzx	esi, al
	mov	rdi, rdx
	shl	rdi, 8
	and	edi, 0xfff00
	shl	rax, 0xc
	movabs	rcx, 0xffffff00000
	and	rcx, rax
	and	rdx, 0xfffffffffffff000
	shl	rdx, 0x20
	or	rcx, rsi
	or	rcx, rdx
	or	rcx, rdi
	cmp	rcx, -1
	je	.label_33
	movsxd	rax, dword ptr [rip + optind]
	mov	rsi, qword ptr [r13 + rax*8]
	or	ebp, r15d
	mov	qword ptr [rsp + 0x10], rcx
	lea	rcx, [rsp + 0x10]
	xor	edi, edi
	mov	edx, ebp
	call	__xmknod
	jmp	.label_48
.label_492:
	mov	rdi, qword ptr [r13 + rax*8]
	mov	esi, r15d
	call	mkfifo
.label_48:
	test	eax, eax
	jne	.label_53
	test	r14, r14
	je	.label_57
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r13 + rax*8]
	mov	esi, r15d
	call	chmod
	test	eax, eax
	jne	.label_64
.label_57:
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_71:
	cmp	eax, 0xffffff7d
	je	.label_67
	cmp	eax, 0xffffff7e
	jne	.label_62
	xor	edi, edi
	call	usage
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_78:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_34:
	xor	edi, edi
	cmp	eax, r12d
	jge	.label_40
	mov	esi, OFFSET FLAT:label_46
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, r12d
	mov	rdi, qword ptr [r13 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_49
.label_67:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_12
	mov	edx, OFFSET FLAT:label_9
	mov	r8d, OFFSET FLAT:label_50
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_52:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax, dword ptr [rip + optind]
	add	rax, rbx
	mov	rdi, qword ptr [r13 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	test	bpl, bpl
	je	.label_75
	sub	r12d, dword ptr [rip + optind]
	cmp	r12d, 4
	jne	.label_75
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_32
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_75:
	mov	edi, 1
	call	usage
.label_56:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r13 + rax*8 + 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_62:
	mov	edi, 1
	call	usage
.label_53:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	movsxd	rax, dword ptr [rip + optind]
	mov	rdx, qword ptr [r13 + rax*8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_61
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_33:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r12
	mov	r8, rbx
	call	error
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	jmp	.label_70
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
.label_70:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_64:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rsi, qword ptr [r13 + rax*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_40:
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_49:
	test	bpl, bpl
	jne	.label_41
	sub	r12d, dword ptr [rip + optind]
	cmp	r12d, 2
	jne	.label_41
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_32
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_41:
	mov	edi, 1
	call	usage
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401db0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dc0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dd0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_84
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_81
	cmp	dword ptr [rbp], 0x20
	jne	.label_81
.label_84:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_80
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_81:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_79
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_61
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_80:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_79:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_83
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
	#Procedure 0x401e90

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	bl, byte ptr [r14]
	mov	eax, ebx
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_90
	xor	eax, eax
	xor	r15d, r15d
	mov	rdx, r14
	nop	
.label_103:
	movsx	ecx, bl
	lea	r15d, [rcx + r15*8 - 0x30]
	cmp	r15d, 0xfff
	ja	.label_87
	movzx	ebx, byte ptr [rdx + 1]
	inc	rdx
	mov	ecx, ebx
	and	cl, 0xf8
	cmp	cl, 0x30
	je	.label_103
	xor	eax, eax
	test	bl, bl
	jne	.label_87
	sub	rdx, r14
	mov	eax, r15d
	and	eax, 0xc00
	or	eax, 0x3ff
	cmp	rdx, 5
	mov	ebx, 0xfff
	cmovl	ebx, eax
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], r15d
	mov	dword ptr [rax + 0xc], ebx
	mov	byte ptr [rax + 0x11], 0
	jmp	.label_87
.label_90:
	lea	rax, [r14 + 1]
	mov	edi, 1
	jmp	.label_95
	nop	
.label_102:
	add	rdi, rdx
	movzx	ebx, byte ptr [rax]
	inc	rax
.label_95:
	cmp	bl, 0x2c
	jle	.label_107
	cmp	bl, 0x2d
	je	.label_100
	cmp	bl, 0x3d
	mov	edx, 1
	je	.label_102
	jmp	.label_105
	nop	
.label_107:
	cmp	bl, 0x2b
	mov	edx, 1
	je	.label_102
	test	bl, bl
	je	.label_108
.label_105:
	xor	edx, edx
	jmp	.label_102
	nop	word ptr cs:[rax + rax]
.label_100:
	mov	edx, 1
	jmp	.label_102
.label_108:
	mov	rax, rdi
	shr	rax, 0x3b
	jne	.label_111
	shl	rdi, 4
	call	xmalloc
	xor	r9d, r9d
	movabs	r8, 0x2000280000000000
	jmp	.label_88
	.section	.text
	.align	16
	#Procedure 0x4021b0
	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:

	push	rbx
	sub	rsp, 0x90
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rax
	call	__xstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_112
	mov	ebx, dword ptr [rsp + 0x18]
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebx
	mov	dword ptr [rax + 0xc], 0xfff
	mov	byte ptr [rax + 0x11], 0
.label_112:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402210

	.globl mode_adjust
	.type mode_adjust, @function
mode_adjust:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	qword ptr [rsp - 8], r8
	and	edi, 0xfff
	mov	al, byte ptr [rcx + 1]
	xor	r13d, r13d
	test	al, al
	je	.label_116
	xor	r13d, r13d
	test	sil, sil
	mov	r9d, 0xc00
	cmove	r9d, r13d
	not	edx
	mov	r10d, r9d
	not	r10d
	movzx	r12d, sil
	mov	r14d, 0x92
	mov	r15d, 0x49
	nop	dword ptr [rax + rax]
.label_115:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_113
	cmp	ebp, 3
	jne	.label_117
	and	esi, edi
	mov	ebp, esi
	and	ebp, 0x124
	mov	eax, 0x124
	cmovne	ebp, eax
	mov	r11d, esi
	and	r11d, 0x92
	cmovne	r11d, r14d
	or	r11d, esi
	and	esi, 0x49
	cmovne	esi, r15d
	or	esi, ebp
	or	esi, r11d
	jmp	.label_117
	nop	dword ptr [rax + rax]
.label_113:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_117:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_120
	cmp	esi, 0x2d
	je	.label_119
	cmp	esi, 0x3d
	jne	.label_114
	not	r8d
	and	r8d, r9d
	test	ebx, ebx
	mov	eax, ebx
	not	eax
	cmove	eax, ebx
	or	eax, r8d
	mov	esi, eax
	not	esi
	and	esi, 0xfff
	or	r13d, esi
	and	eax, edi
	or	ebp, eax
	mov	edi, ebp
	jmp	.label_114
	nop	word ptr [rax + rax]
.label_119:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_114
	nop	dword ptr [rax]
.label_120:
	or	r13d, ebp
	or	edi, ebp
.label_114:
	movzx	eax, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_115
.label_116:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_118
	mov	dword ptr [rax], r13d
.label_118:
	mov	eax, edi
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402350

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_123
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_122
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_121
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_122
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_126
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_126:
	mov	rbx, r14
.label_122:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_123:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_124
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402400
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
	#Procedure 0x402440
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
	#Procedure 0x402450
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
	#Procedure 0x402460
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
	#Procedure 0x4024a0
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
	#Procedure 0x4024c0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_127
	test	rdx, rdx
	je	.label_127
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_127:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024f0
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
	#Procedure 0x402570

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
	jmp	.label_157
	nop	
.label_155:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_148
	or	al, dl
	jne	.label_148
	test	dil, 1
	jne	.label_151
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_148
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_157
	jmp	.label_148
.label_466:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_163
	test	rbp, rbp
	je	.label_226
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_226:
	mov	r14d, 1
	jmp	.label_168
.label_467:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_170
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_171
.label_163:
	xor	r14d, r14d
.label_168:
	mov	eax, OFFSET FLAT:label_170
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_195
	nop	
.label_157:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_193
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_200]
.label_468:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_208
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_133
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_469:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_154
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_154
	xor	r14d, r14d
	nop	
.label_231:
	cmp	r14, rbp
	jae	.label_199
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_199:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_231
.label_154:
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
	jmp	.label_171
.label_461:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_171
.label_464:
	mov	al, 1
.label_462:
	mov	r12b, 1
.label_465:
	test	r12b, 1
	mov	cl, 1
	je	.label_249
	mov	ecx, eax
.label_249:
	mov	al, cl
.label_463:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_250
	test	rbp, rbp
	je	.label_174
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_174:
	mov	r14d, 1
	jmp	.label_129
.label_250:
	xor	r14d, r14d
.label_129:
	mov	ecx, OFFSET FLAT:label_133
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_195:
	mov	sil, r12b
.label_171:
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
	jmp	.label_140
	nop	word ptr cs:[rax + rax]
.label_142:
	inc	r12
.label_140:
	cmp	r11, -1
	je	.label_179
	cmp	r12, r11
	jne	.label_182
	jmp	.label_184
	nop	word ptr cs:[rax + rax]
.label_179:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_217
.label_182:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_194
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_198
	cmp	r11, -1
	jne	.label_198
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_198:
	cmp	rbx, r11
	jbe	.label_213
.label_194:
	xor	esi, esi
.label_234:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_214
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_218]
.label_423:
	test	r12, r12
	jne	.label_132
	jmp	.label_222
	nop	word ptr cs:[rax + rax]
.label_213:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_230
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_234
	jmp	.label_162
.label_230:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_234
.label_427:
	xor	eax, eax
	cmp	r11, -1
	je	.label_245
	test	r12, r12
	jne	.label_248
	cmp	r11, 1
	je	.label_222
	xor	r13d, r13d
	jmp	.label_147
.label_416:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_252
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_162
	cmp	r8d, 2
	jne	.label_131
	mov	eax, r9d
	and	al, 1
	jne	.label_131
	cmp	r14, rbp
	jae	.label_134
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_134:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_137
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_137:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_143
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_143:
	add	r14, 3
	mov	r9b, 1
.label_131:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_149
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_149:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_153
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_153
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_153
	cmp	r14, rbp
	jae	.label_223
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_223:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_243
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_243:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_147
.label_417:
	mov	bl, 0x62
	jmp	.label_180
.label_418:
	mov	cl, 0x74
	jmp	.label_172
.label_419:
	mov	bl, 0x76
	jmp	.label_180
.label_420:
	mov	bl, 0x66
	jmp	.label_180
.label_421:
	mov	cl, 0x72
	jmp	.label_172
.label_424:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_190
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_136
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
	jae	.label_201
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_201:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_215
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_215:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_220
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_220:
	add	r14, 3
	xor	r9d, r9d
.label_190:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_147
.label_425:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_225
	cmp	r8d, 2
	jne	.label_132
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_132
	jmp	.label_136
.label_426:
	cmp	r8d, 2
	jne	.label_236
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_136
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_240
.label_214:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_242
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_227
.label_245:
	test	r12, r12
	jne	.label_130
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_130
.label_222:
	mov	dl, 1
.label_422:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_136
	xor	eax, eax
	mov	r13b, dl
.label_147:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_141
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_144
	jmp	.label_145
	nop	word ptr cs:[rax + rax]
.label_141:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_145
.label_144:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_152
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_158
	nop	dword ptr [rax]
.label_145:
	test	sil, sil
.label_158:
	mov	ebx, r15d
	je	.label_176
	jmp	.label_165
.label_152:
	mov	ebx, r15d
	jmp	.label_165
.label_252:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_142
	xor	r15d, r15d
	jmp	.label_132
.label_236:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_172
	xor	eax, eax
	mov	r15b, 0x5c
.label_240:
	xor	r13d, r13d
	jmp	.label_176
.label_172:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_136
.label_180:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_147
	nop	
.label_165:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_162
	cmp	r8d, 2
	jne	.label_191
	mov	eax, r9d
	and	al, 1
	jne	.label_191
	cmp	r14, rbp
	jae	.label_197
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_197:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_202
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_202:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_206
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_206:
	add	r14, 3
	mov	r9b, 1
.label_191:
	cmp	r14, rbp
	jae	.label_212
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_212:
	inc	r14
	jmp	.label_207
.label_242:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_219
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_219:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_159
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_150:
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
	je	.label_237
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_192
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_146
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_253
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_232:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_135
	bt	rsi, rdx
	jb	.label_136
.label_135:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_232
.label_253:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_244
	xor	r13d, r13d
.label_244:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_150
	jmp	.label_160
.label_153:
	xor	r13d, r13d
	jmp	.label_147
.label_130:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_147
.label_225:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_132
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_132
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_132
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_177
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_203
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_188
	cmp	r14, rbp
	jae	.label_189
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_189:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_196
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_196:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_181
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_181:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_166
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_166:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_203:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_147
.label_132:
	xor	eax, eax
.label_248:
	xor	r13d, r13d
	jmp	.label_147
.label_159:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_186:
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
	je	.label_221
	cmp	rbp, -1
	je	.label_235
	cmp	rbp, -2
	je	.label_237
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_239
	xor	r13d, r13d
.label_239:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_186
	jmp	.label_160
.label_237:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_128
	lea	rax, [r10 + r12]
.label_175:
	cmp	byte ptr [rax + rsi], 0
	je	.label_128
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_175
.label_128:
	mov	qword ptr [rsp + 0x40], rsi
.label_192:
	xor	r13d, r13d
	jmp	.label_146
.label_235:
	xor	r13d, r13d
.label_221:
	mov	r10, qword ptr [rsp + 0x28]
.label_146:
	mov	r12, qword ptr [rsp + 0x40]
.label_160:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_227:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_139
	test	al, al
	je	.label_139
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_147
.label_139:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_156
	nop	word ptr [rax + rax]
.label_247:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_156:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_164
	test	sil, 1
	je	.label_173
	cmp	r14, rbp
	jae	.label_167
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_167:
	inc	r14
	xor	esi, esi
	jmp	.label_173
	nop	word ptr cs:[rax + rax]
.label_164:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_162
	cmp	r8d, 2
	jne	.label_185
	mov	eax, r9d
	and	al, 1
	jne	.label_185
	cmp	r14, rbp
	jae	.label_187
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_187:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_224
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_224:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_178
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_178:
	add	r14, 3
	mov	r9b, 1
.label_185:
	cmp	r14, rbp
	jae	.label_205
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_205:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_210
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_210:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_216
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_216:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_173:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_176
	test	r9b, 1
	je	.label_161
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_241
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_229
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_229:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_238
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_238:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_161
	nop	word ptr cs:[rax + rax]
.label_241:
	mov	rbx, rcx
.label_161:
	cmp	r14, rbp
	jae	.label_247
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_247
	nop	
.label_176:
	test	r9b, 1
	je	.label_251
	and	al, 1
	jne	.label_251
	cmp	r14, rbp
	jae	.label_254
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_254:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_169
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_169:
	add	r14, 2
	xor	r9d, r9d
.label_251:
	mov	ebx, r15d
.label_207:
	cmp	r14, rbp
	jae	.label_138
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_138:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_142
.label_177:
	xor	r13d, r13d
	jmp	.label_147
	nop	word ptr cs:[rax + rax]
.label_184:
	mov	rcx, r12
.label_217:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_155
	or	al, dl
	jne	.label_155
	mov	r11, rcx
	jmp	.label_162
.label_136:
	mov	eax, 2
.label_233:
	mov	qword ptr [rsp + 0x38], rax
.label_162:
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
.label_246:
	mov	r14, rax
.label_228:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_148:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_183
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_204
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_204
	inc	rdx
	nop	dword ptr [rax + rax]
.label_211:
	cmp	r14, rbp
	jae	.label_209
	mov	byte ptr [rcx + r14], al
.label_209:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_211
	jmp	.label_204
.label_151:
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
	jmp	.label_246
.label_183:
	mov	rcx, qword ptr [rsp + 0x10]
.label_204:
	cmp	r14, rbp
	jae	.label_228
	mov	byte ptr [rcx + r14], 0
	jmp	.label_228
.label_188:
	mov	eax, 5
	jmp	.label_233
.label_193:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4033a0
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
	#Procedure 0x403470
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
	je	.label_255
	mov	qword ptr [rax], rbx
.label_255:
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
	#Procedure 0x403560
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_256
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_259:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_259
.label_256:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_260
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_258], OFFSET FLAT:slot0
.label_260:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_257
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_257:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403600
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403610

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
	js	.label_264
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_267
	cmp	r12d, 0x7fffffff
	je	.label_262
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
	jne	.label_265
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_265:
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
.label_267:
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
	jbe	.label_263
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_266
.label_263:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_261
	mov	rdi, r14
	call	free
.label_261:
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
.label_266:
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
.label_264:
	call	abort
.label_262:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4037d0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037e0
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
	#Procedure 0x403800
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
	#Procedure 0x403820
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
	je	.label_268
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
.label_268:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403890
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
	je	.label_269
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
.label_269:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403900

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
	je	.label_270
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
.label_270:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403970
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
	je	.label_271
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
.label_271:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039e0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_272]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_273]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_274]
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
	#Procedure 0x403a50
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_272]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_273]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_274]
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
	#Procedure 0x403ac0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_272]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_273]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_274]
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
	#Procedure 0x403b20
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_272]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_273]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_274]
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
	#Procedure 0x403b80

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
	je	.label_275
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
.label_275:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c20
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_272]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_273]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_274]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_276
	test	rdx, rdx
	je	.label_276
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_276:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x403c90
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_272]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_273]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_274]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_277
	test	rdx, rdx
	je	.label_277
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_277:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d00
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_272]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_273]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_274]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_278
	test	rsi, rsi
	je	.label_278
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_278:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d70
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_272]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_273]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_274]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_279
	test	rsi, rsi
	je	.label_279
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
.label_279:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403de0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403df0
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
	#Procedure 0x403e10
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e30

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
	#Procedure 0x403e50

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
	jne	.label_284
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_288
	cmp	ecx, 0x55
	jne	.label_280
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_280
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_280
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_280
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_280
	cmp	byte ptr [rax + 5], 0
	jne	.label_280
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_286
	mov	eax, OFFSET FLAT:label_287
	jmp	.label_283
.label_288:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_280
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_280
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_280
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_280
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_280
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_280
	cmp	byte ptr [rax + 7], 0
	je	.label_285
.label_280:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_170
	mov	eax, OFFSET FLAT:label_133
.label_283:
	cmove	rax, rcx
.label_284:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_285:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_281
	mov	eax, OFFSET FLAT:label_282
	jmp	.label_283
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f20

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
	je	.label_301
	mov	edx, OFFSET FLAT:label_292
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_298
.label_301:
	mov	edx, OFFSET FLAT:label_299
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_298:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
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
	mov	esi, OFFSET FLAT:label_300
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_304
	jmp	qword ptr [(r12 * 8) + label_305]
.label_502:
	add	rsp, 8
	jmp	.label_291
.label_304:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
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
	jmp	.label_291
.label_503:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
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
.label_504:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
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
.label_505:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_293
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
.label_506:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_307
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
	jmp	.label_291
.label_507:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
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
	jmp	.label_291
.label_508:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
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
	jmp	.label_291
.label_509:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
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
	jmp	.label_291
.label_511:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
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
	jmp	.label_291
.label_510:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
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
.label_291:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404280
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_308:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_308
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042b0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_319
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_321
.label_319:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_321:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_309
	cmp	r10d, 0x29
	jae	.label_318
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_320
.label_318:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_320:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_309
	cmp	r10d, 0x29
	jae	.label_316
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_317
.label_316:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_317:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_309
	cmp	r10d, 0x29
	jae	.label_314
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_315
.label_314:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_315:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_309
	cmp	r10d, 0x29
	jae	.label_312
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_313
.label_312:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_313:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_309
	cmp	r10d, 0x29
	jae	.label_310
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_311
.label_310:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_311:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_309
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_309
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_309
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_309
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_309:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_322
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_322:
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
	#Procedure 0x404530
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_324
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_325
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045b0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_327
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_328
	test	rax, rax
	je	.label_327
.label_328:
	pop	rbx
	ret	
.label_327:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_329
	test	rax, rax
	je	.label_330
.label_329:
	pop	rbx
	ret	
.label_330:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404610
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_331
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_332
	test	rbx, rbx
	jne	.label_332
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_332:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_333
	test	rax, rax
	je	.label_331
.label_333:
	pop	rbx
	ret	
.label_331:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404660

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_334
	test	rbx, rbx
	jne	.label_334
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_334:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_336
	test	rax, rax
	je	.label_335
.label_336:
	pop	rbx
	ret	
.label_335:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404690
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_340
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_342
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_337
.label_340:
	test	rcx, rcx
	jne	.label_343
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_343:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_338
.label_337:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_339
	test	rbx, rbx
	jne	.label_339
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_339:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_341
	test	rax, rax
	je	.label_342
.label_341:
	pop	rbx
	ret	
.label_342:
	call	xalloc_die
.label_338:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404730
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_344
	test	rax, rax
	je	.label_345
.label_344:
	pop	rbx
	ret	
.label_345:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404750
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_348
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_350
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_347
	call	free
	xor	eax, eax
	jmp	.label_349
.label_348:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_346
	mov	qword ptr [rsi], rbx
.label_347:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_349
	test	rax, rax
	je	.label_346
.label_349:
	pop	rbx
	ret	
.label_346:
	call	xalloc_die
.label_350:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047c0
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
	je	.label_352
	test	r14, r14
	je	.label_351
.label_352:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_351:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404800
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_353
	call	rpl_calloc
	test	rax, rax
	je	.label_353
	pop	rcx
	ret	
.label_353:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404830

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
	je	.label_354
	test	r15, r15
	je	.label_355
.label_354:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_355:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404870
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
	je	.label_357
	test	r15, r15
	je	.label_356
.label_357:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_356:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048c0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_61
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4048f0

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
	jae	.label_378
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_372:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_372
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_367
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
	je	.label_380
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_365
	cmp	eax, 0x22
	jne	.label_367
	mov	ebp, 1
.label_365:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_369
	jmp	.label_370
.label_380:
	test	r14, r14
	je	.label_367
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_367
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_367
.label_369:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_370
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_366
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_361
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_361
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_361
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_373
	cmp	eax, 0x44
	je	.label_373
	cmp	eax, 0x69
	jne	.label_361
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_361
.label_373:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_361:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_366
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_368]
.label_526:
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
	jmp	.label_377
.label_366:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_379
.label_527:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_359
.label_528:
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
	jmp	.label_376
.label_530:
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
	jmp	.label_375
.label_524:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_374
.label_525:
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
	jmp	.label_376
.label_529:
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
.label_375:
	or	dl, r10b
.label_377:
	or	dl, bl
.label_376:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_371
.label_531:
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
	jmp	.label_360
.label_532:
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
.label_360:
	movzx	eax, dl
.label_359:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_371
.label_533:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_374:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_371
.label_534:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_371:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_370:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_379:
	mov	r13d, r15d
.label_367:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_378:
	mov	edi, OFFSET FLAT:label_362
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_364
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f30

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_381
	test	rsi, rsi
	mov	ecx, 1
	je	.label_382
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_382
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_381:
	mov	ecx, 1
.label_382:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f80

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
	je	.label_383
	cmp	r15, -2
	jb	.label_383
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_383
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_383:
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
	#Procedure 0x404fe0

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
	jne	.label_385
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_384
	test	cl, cl
	jne	.label_384
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_384
.label_385:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_384
	call	__errno_location
	mov	dword ptr [rax], 0
.label_384:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405040

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_387
	cmp	byte ptr [rax], 0x43
	jne	.label_389
	cmp	byte ptr [rax + 1], 0
	je	.label_386
.label_389:
	mov	esi, OFFSET FLAT:label_388
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_387
.label_386:
	xor	ebx, ebx
.label_387:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405080

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_35
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_390
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_391
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_393
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_391
.label_393:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_391
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_392
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_392:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_391:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405130

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_394
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_394
	test	byte ptr [rbx + 1], 1
	je	.label_394
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_394:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405170

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
	jne	.label_395
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_395
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_396
.label_395:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_396:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_397
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_397:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x4051e0

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
