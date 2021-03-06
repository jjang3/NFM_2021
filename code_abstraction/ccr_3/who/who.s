	.section	.text
	.align	32
	#Procedure 0x4019a0

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
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
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
	mov	esi, OFFSET FLAT:label_27
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
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
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
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_18
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_18
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_10
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_24:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c10

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_43
	call	setlocale
	mov	edi, OFFSET FLAT:label_48
	mov	esi, OFFSET FLAT:label_49
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_48
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	bpl, 1
	jmp	.label_42
.label_37:
	mov	byte ptr [rip + include_idle],  1
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_42:
	mov	edx, OFFSET FLAT:label_53
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x81
	ja	.label_34
	jmp	qword ptr [(rcx * 8) + label_41]
.label_556:
	mov	byte ptr [rip + include_mesg],  1
	jmp	.label_42
.label_555:
	mov	byte ptr [rip + include_heading],  1
	jmp	.label_42
.label_558:
	mov	byte ptr [rip + need_boottime],  1
	xor	ebp, ebp
	jmp	.label_42
.label_559:
	mov	byte ptr [rip + need_deadprocs],  1
	jmp	.label_50
.label_560:
	mov	byte ptr [rip + need_login],  1
	jmp	.label_37
.label_561:
	mov	byte ptr [rip + my_line_only],  1
	jmp	.label_42
.label_564:
	mov	byte ptr [rip + need_runlevel],  1
	jmp	.label_37
.label_565:
	mov	byte ptr [rip + short_output],  1
	jmp	.label_42
.label_568:
	mov	byte ptr [rip + do_lookup],  1
	jmp	.label_42
.label_557:
	mov	byte ptr [rip + need_boottime],  1
	mov	byte ptr [rip + need_deadprocs],  1
	mov	byte ptr [rip + need_login],  1
	mov	byte ptr [rip + need_initspawn],  1
	mov	byte ptr [rip + need_runlevel],  1
	mov	byte ptr [rip + need_clockchange],  1
	mov	byte ptr [rip + need_users],  1
	mov	byte ptr [rip + include_mesg],  1
.label_50:
	mov	byte ptr [rip + include_idle],  1
	mov	byte ptr [rip + include_exit],  1
	xor	ebp, ebp
	jmp	.label_42
.label_562:
	mov	byte ptr [rip + need_initspawn],  1
	xor	ebp, ebp
	jmp	.label_42
.label_563:
	mov	byte ptr [rip + short_list],  1
	jmp	.label_42
.label_566:
	mov	byte ptr [rip + need_clockchange],  1
	xor	ebp, ebp
	jmp	.label_42
.label_567:
	mov	byte ptr [rip + need_users],  1
	jmp	.label_37
.label_554:
	test	bpl, bpl
	je	.label_55
	mov	byte ptr [rip + need_users],  1
	mov	byte ptr [rip + short_output],  1
.label_55:
	cmp	byte ptr [rip + include_exit],  1
	jne	.label_35
	mov	byte ptr [rip + short_output],  0
.label_35:
	mov	edi, 2
	call	hard_locale
	mov	ecx, OFFSET FLAT:label_44
	mov	edx, OFFSET FLAT:label_45
	test	al, al
	cmovne	rdx, rcx
	movzx	eax, al
	lea	eax, [rax*4 + 0xc]
	mov	qword ptr [rip + time_format],  rdx
	mov	dword ptr [rip + time_format_width],  eax
	movsxd	rax, dword ptr [rip + optind]
	sub	ebx, eax
	lea	ecx, [rbx + 1]
	cmp	ecx, 2
	jb	.label_46
	cmp	ebx, 1
	je	.label_47
	cmp	ebx, 2
	jne	.label_51
	mov	byte ptr [rip + my_line_only],  1
.label_46:
	mov	edi, OFFSET FLAT:label_19
	mov	esi, 1
	jmp	.label_54
.label_47:
	mov	rdi, qword ptr [r14 + rax*8]
	xor	esi, esi
.label_54:
	call	who
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_34:
	cmp	eax, 0xffffff7d
	je	.label_36
	cmp	eax, 0xffffff7e
	jne	.label_33
	xor	edi, edi
	call	usage
.label_33:
	mov	edi, 1
	call	usage
.label_36:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_11
	mov	edx, OFFSET FLAT:label_31
	mov	r8d, OFFSET FLAT:label_38
	mov	r9d, OFFSET FLAT:label_39
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_40
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_51:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r14 + rax*8 + 0x10]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	
	.section	.text
	.align	32
	#Procedure 0x401eb0

	.globl who
	.type who, @function
who:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x218
	mov	eax, esi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x48]
	lea	rdx, [rsp + 0x40]
	mov	ecx, eax
	call	read_utmp
	test	eax, eax
	jne	.label_99
	mov	r12, qword ptr [rsp + 0x48]
	mov	rbx, qword ptr [rsp + 0x40]
	cmp	byte ptr [rip + short_list],  1
	jne	.label_100
	xor	r14d, r14d
	test	r12, r12
	je	.label_103
	mov	r15d, OFFSET FLAT:label_43
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_119:
	dec	r12
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_105
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	jne	.label_105
	mov	rdi, rbx
	call	extract_trimmed_name
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_111
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, rbp
	call	__printf_chk
	mov	rdi, rbp
	call	free
	inc	r14
	mov	r15d, OFFSET FLAT:label_116
.label_105:
	add	rbx, 0x180
	test	r12, r12
	jne	.label_119
.label_103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, r14
	call	__printf_chk
	jmp	.label_71
.label_100:
	cmp	byte ptr [rip + include_heading],  1
	jne	.label_127
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x30], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	edi, 0xffffffff
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, r15
	push	rax
	push	r14
	push	rbp
	push	r13
	call	print_line
	add	rsp, 0x20
.label_127:
	cmp	byte ptr [rip + my_line_only],  1
	jne	.label_78
	xor	edi, edi
	call	ttyname
	mov	rbp, rax
	test	rbp, rbp
	je	.label_71
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	mov	rdi, rbp
	call	strncmp
	lea	r13, [rbp + 5]
	test	eax, eax
	cmovne	r13, rbp
.label_78:
	test	r12, r12
	je	.label_71
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rsp + 8], r13
	nop	word ptr cs:[rax + rax]
.label_114:
	cmp	byte ptr [rip + my_line_only],  1
	jne	.label_92
	lea	rsi, [rbx + 8]
	mov	edx, 0x20
	mov	rdi, r13
	call	strncmp
	test	eax, eax
	jne	.label_68
.label_92:
	cmp	byte ptr [rip + need_users],  1
	jne	.label_98
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_98
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	jne	.label_98
	movsxd	r8, dword ptr [rbx + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_59
	xor	eax, eax
	lea	rdi, [rsp + 0x1c]
	call	__sprintf_chk
	mov	cl, byte ptr [rbx + 8]
	cmp	cl, 0x2f
	lea	rax, [rsp + 0x50]
	je	.label_107
	mov	word ptr [rsp + 0x54], 0x2f
	mov	dword ptr [rsp + 0x50], 0x7665642f
	test	cl, cl
	lea	rax, [rsp + 0x55]
	mov	rdx, rax
	je	.label_102
.label_107:
	lea	rdx, [rbx + 0x28]
	mov	edi, 9
	nop	word ptr cs:[rax + rax]
.label_74:
	mov	rsi, rdi
	lea	rdi, [rbx + rsi]
	mov	byte ptr [rax + rsi - 9], cl
	cmp	rdi, rdx
	jae	.label_117
	movzx	ecx, byte ptr [rdi]
	lea	rdi, [rsi + 1]
	test	cl, cl
	jne	.label_74
.label_117:
	lea	rdx, [rax + rsi - 8]
.label_102:
	mov	byte ptr [rdx], 0
	mov	edi, 1
	lea	rsi, [rsp + 0x50]
	lea	rdx, [rsp + 0x188]
	call	__xstat
	mov	r14b, 0x3f
	test	eax, eax
	jne	.label_126
	mov	r14b, byte ptr [rsp + 0x1a0]
	shr	r14b, 3
	not	r14b
	and	r14b, 2
	add	r14b, 0x2b
	mov	rbp, qword ptr [rsp + 0x1d0]
	test	rbp, rbp
	je	.label_126
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rip + idle_string.now],  rax
	jne	.label_137
	mov	edi, OFFSET FLAT:idle_string.now
	call	time
.label_137:
	cmp	rbp, qword ptr [rsp + 0x30]
	jle	.label_142
	mov	r9, qword ptr [rip + idle_string.now]
	cmp	r9, rbp
	jl	.label_142
	lea	rax, [r9 - 0x15180]
	cmp	rax, rbp
	jge	.label_142
	sub	r9d, ebp
	cmp	r9d, 0x3c
	mov	ebp, OFFSET FLAT:label_57
	jl	.label_58
	cmp	r9d, 0x15180
	jge	.label_85
	mov	r8d, r9d
	mov	eax, 0x91a2b3c5
	imul	r8, rax
	shr	r8, 0x2b
	imul	eax, r8d, 0xe10
	sub	r9d, eax
	mov	eax, 0x88888889
	imul	r9, rax
	shr	r9, 0x25
	mov	edi, OFFSET FLAT:idle_string.idle_hhmm
	mov	esi, 1
	mov	edx, 6
	mov	ecx, OFFSET FLAT:label_65
	xor	eax, eax
	call	__sprintf_chk
	mov	ebp, OFFSET FLAT:idle_string.idle_hhmm
	jmp	.label_58
.label_98:
	cmp	byte ptr [rip + need_runlevel],  1
	jne	.label_81
	movzx	eax, word ptr [rbx]
	cmp	eax, 1
	jne	.label_81
	mov	r15d, dword ptr [rbx + 4]
	mov	ebp, r15d
	sar	ebp, 0x1f
	shr	ebp, 0x18
	add	ebp, r15d
	mov	r14, qword ptr [rip + print_runlevel.runlevline]
	test	r14, r14
	jne	.label_84
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 3]
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [rip + print_runlevel.runlevline],  r14
.label_84:
	sar	ebp, 8
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
	movzx	r9d, r15b
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_101
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	mov	r14, qword ptr [rip + print_runlevel.comment]
	test	r14, r14
	jne	.label_104
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 2]
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [rip + print_runlevel.comment],  r14
.label_104:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
	movzx	ebp, bpl
	cmp	ebp, 0x4e
	mov	r9d, ebp
	mov	eax, 0x53
	cmove	r9d, eax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_144
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	mov	r14, qword ptr [rip + print_runlevel.runlevline]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_135
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_139
	nop	word ptr cs:[rax + rax]
.label_81:
	cmp	byte ptr [rip + need_boottime],  1
	jne	.label_143
	movzx	eax, word ptr [rbx]
	cmp	eax, 2
	jne	.label_143
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_63
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_73
	nop	
.label_143:
	cmp	byte ptr [rip + need_clockchange],  1
	jne	.label_61
	movzx	eax, word ptr [rbx]
	cmp	eax, 3
	jne	.label_61
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_86
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_93
	nop	
.label_61:
	cmp	byte ptr [rip + need_initspawn],  1
	jne	.label_95
	movzx	eax, word ptr [rbx]
	cmp	eax, 5
	jne	.label_95
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 5]
	call	xmalloc
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbp
	mov	rsi, rax
	call	strcpy
	lea	rsi, [rbx + 0x28]
	mov	edx, 4
	mov	rcx, -1
	mov	rdi, rbp
	call	__strncat_chk
	movsxd	r8, dword ptr [rbx + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_59
	xor	eax, eax
	lea	rdi, [rsp + 0x1c]
	call	__sprintf_chk
	lea	r15, [rbx + 8]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_121
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_122
.label_95:
	cmp	byte ptr [rip + need_login],  1
	jne	.label_133
	movzx	eax, word ptr [rbx]
	cmp	eax, 6
	jne	.label_133
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 5]
	call	xmalloc
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbp
	mov	rsi, rax
	call	strcpy
	lea	rsi, [rbx + 0x28]
	mov	edx, 4
	mov	rcx, -1
	mov	rdi, rbp
	call	__strncat_chk
	movsxd	r8, dword ptr [rbx + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_59
	xor	eax, eax
	lea	rdi, [rsp + 0x1c]
	call	__sprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	lea	r14, [rbx + 8]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_76
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_82
.label_133:
	cmp	byte ptr [rip + need_deadprocs],  1
	jne	.label_68
	movzx	eax, word ptr [rbx]
	cmp	eax, 8
	jne	.label_68
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 5]
	call	xmalloc
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rdi, r15
	mov	rsi, rax
	call	strcpy
	lea	rsi, [rbx + 0x28]
	mov	edx, 4
	mov	rcx, -1
	mov	rdi, r15
	call	__strncat_chk
	movsxd	r8, dword ptr [rbx + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_59
	xor	eax, eax
	lea	rdi, [rsp + 0x1c]
	call	__sprintf_chk
	mov	rbp, qword ptr [rip + print_deadprocs.exitstr]
	test	rbp, rbp
	jne	.label_110
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rbp + rax + 0xe]
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [rip + print_deadprocs.exitstr],  rbp
.label_110:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsx	r13d, word ptr [rbx + 0x14c]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	movsx	r11d, word ptr [rbx + 0x14e]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_134
	mov	eax, 0
	mov	rdi, rbp
	mov	r8, r14
	mov	r9d, r13d
	push	r11
	push	r10
	call	__sprintf_chk
	add	rsp, 0x10
	lea	rbp, [rbx + 8]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_148
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_62
.label_126:
	mov	esi, 1
	mov	edx, 7
	mov	ecx, OFFSET FLAT:label_66
	xor	eax, eax
	lea	rdi, [rsp + 0x39]
	call	__sprintf_chk
	jmp	.label_72
.label_135:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_139:
	add	ebp, -0x20
	cmp	ebp, 0x5f
	mov	rax, qword ptr [rip + print_runlevel.comment]
	mov	ecx, OFFSET FLAT:label_43
	cmovae	rax, rcx
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, r14
	push	OFFSET FLAT:label_43
	push	rax
	push	OFFSET FLAT:label_43
	push	OFFSET FLAT:label_43
	call	print_line
	add	rsp, 0x20
	jmp	.label_68
.label_63:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_73:
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, rbp
	push	OFFSET FLAT:label_43
	push	OFFSET FLAT:label_43
	push	OFFSET FLAT:label_43
	push	OFFSET FLAT:label_43
	call	print_line
	add	rsp, 0x20
	jmp	.label_68
.label_86:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_93:
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, rbp
	push	OFFSET FLAT:label_43
	push	OFFSET FLAT:label_43
	push	OFFSET FLAT:label_43
	push	OFFSET FLAT:label_43
	call	print_line
	add	rsp, 0x20
	jmp	.label_68
.label_121:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_122:
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	r8, r15
	push	OFFSET FLAT:label_43
	push	rbp
	lea	rax, [rsp + 0x2c]
	push	rax
	push	OFFSET FLAT:label_43
	call	print_line
	add	rsp, 0x20
	mov	rdi, rbp
	jmp	.label_125
.label_142:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
.label_58:
	mov	esi, 1
	mov	edx, 7
	mov	ecx, OFFSET FLAT:label_136
	mov	r8d, 6
	xor	eax, eax
	lea	rdi, [rsp + 0x39]
	mov	r9, rbp
	call	__sprintf_chk
.label_72:
	mov	cl, byte ptr [rbx + 0x4c]
	test	cl, cl
	je	.label_140
	mov	byte ptr [rsp + 0x10], r14b
	lea	rax, [rbx + 0x14c]
	mov	esi, 0x4d
	nop	word ptr cs:[rax + rax]
.label_56:
	mov	rdx, rsi
	lea	rsi, [rbx + rdx]
	mov	byte ptr [rsp + rdx + 0x33], cl
	cmp	rsi, rax
	jae	.label_145
	movzx	ecx, byte ptr [rsi]
	lea	rsi, [rdx + 1]
	test	cl, cl
	jne	.label_56
.label_145:
	mov	byte ptr [rsp + rdx + 0x34], 0
	mov	esi, 0x3a
	lea	rdi, [rsp + 0x80]
	call	strchr
	test	rax, rax
	mov	r14d, 0
	je	.label_64
	mov	r14, rax
	inc	r14
	mov	byte ptr [rax], 0
.label_64:
	cmp	byte ptr [rsp + 0x80], 0
	mov	eax, 0
	je	.label_69
	cmp	byte ptr [rip + do_lookup],  1
	mov	eax, 0
	jne	.label_69
	lea	rdi, [rsp + 0x80]
	call	canon_host
.label_69:
	test	rax, rax
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rax
	lea	rax, [rsp + 0x80]
	cmove	rbp, rax
	mov	r15, qword ptr [rip + print_user.hostlen]
	mov	rdi, rbp
	call	strlen
	mov	r13, rax
	test	r14, r14
	je	.label_83
	mov	rdi, r14
	call	strlen
	lea	rax, [r13 + rax + 4]
	cmp	r15, rax
	jae	.label_87
	mov	qword ptr [rip + print_user.hostlen],  rax
	mov	rdi, qword ptr [rip + print_user.hoststr]
	call	free
	mov	rdi, qword ptr [rip + print_user.hostlen]
	call	xmalloc
	mov	rdi, rax
	mov	qword ptr [rip + print_user.hoststr],  rdi
	jmp	.label_96
.label_140:
	cmp	qword ptr [rip + print_user.hostlen],  0
	je	.label_97
	mov	rax, qword ptr [rip + print_user.hoststr]
	jmp	.label_113
.label_83:
	add	r13, 3
	cmp	r15, r13
	jae	.label_91
	mov	qword ptr [rip + print_user.hostlen],  r13
	mov	rdi, qword ptr [rip + print_user.hoststr]
	call	free
	mov	rdi, qword ptr [rip + print_user.hostlen]
	call	xmalloc
	mov	rdi, rax
	mov	qword ptr [rip + print_user.hoststr],  rdi
	jmp	.label_108
.label_87:
	mov	rdi, qword ptr [rip + print_user.hoststr]
.label_96:
	mov	r13, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0x28]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_79
	xor	eax, eax
	mov	r8, rbp
	mov	r9, r14
	call	__sprintf_chk
	mov	r14b, byte ptr [rsp + 0x10]
	jmp	.label_118
.label_76:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_82:
	mov	edi, 0xffffffff
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	rsi, r15
	mov	r8, r14
	push	OFFSET FLAT:label_43
	push	rbp
	lea	rax, [rsp + 0x2c]
	push	rax
	push	OFFSET FLAT:label_43
	call	print_line
	add	rsp, 0x20
	mov	rdi, rbp
	jmp	.label_125
.label_97:
	mov	qword ptr [rip + print_user.hostlen],  1
	mov	rdi, qword ptr [rip + print_user.hoststr]
	call	free
	mov	rdi, qword ptr [rip + print_user.hostlen]
	call	xmalloc
	mov	qword ptr [rip + print_user.hoststr],  rax
.label_113:
	mov	byte ptr [rax], 0
	jmp	.label_77
.label_148:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_62:
	mov	r13, qword ptr [rsp + 8]
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	r8, rbp
	push	qword ptr [rip + print_deadprocs.exitstr]
	push	r15
	lea	rax, [rsp + 0x2c]
	push	rax
	push	OFFSET FLAT:label_43
	call	print_line
	add	rsp, 0x20
	mov	rdi, r15
.label_125:
	call	free
	jmp	.label_68
.label_91:
	mov	rdi, qword ptr [rip + print_user.hoststr]
.label_108:
	mov	r13, qword ptr [rsp + 8]
	mov	r14b, byte ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 0x28]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_70
	xor	eax, eax
	mov	r8, rbp
	call	__sprintf_chk
.label_118:
	test	r15, r15
	je	.label_77
	mov	rdi, rbp
	call	free
.label_77:
	lea	r15, [rbx + 0x2c]
	lea	rbp, [rbx + 8]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_88
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_94
.label_88:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_94:
	mov	rax, qword ptr [rip + print_user.hoststr]
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_43
	cmove	rax, rcx
	movsx	edx, r14b
	mov	edi, 0x20
	mov	ecx, 0x20
	mov	rsi, r15
	mov	r8, rbp
	push	OFFSET FLAT:label_43
	push	rax
	lea	rax, [rsp + 0x2c]
	push	rax
	lea	rax, [rsp + 0x51]
	push	rax
	call	print_line
	add	rsp, 0x20
	nop	word ptr cs:[rax + rax]
.label_68:
	dec	r12
	movzx	eax, word ptr [rbx]
	cmp	eax, 2
	jne	.label_109
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x30], rax
.label_109:
	add	rbx, 0x180
	test	r12, r12
	jne	.label_114
.label_71:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	add	rsp, 0x218
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_99:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_124
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_85:
	mov	edi, OFFSET FLAT:label_128
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 0xcd
	mov	ecx, OFFSET FLAT:label_130
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402db0

	.globl print_line
	.type print_line, @function
print_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	r12d, ecx
	mov	rbx, rsi
	mov	r13d, edi
	mov	byte ptr [rip + label_161],  dl
	cmp	byte ptr [rip + include_idle],  1
	jne	.label_155
	mov	al, byte ptr [rip + short_output]
	test	al, al
	jne	.label_155
	mov	r14, qword ptr [rsp + 0x70]
	mov	rdi, r14
	call	strlen
	cmp	rax, 6
	ja	.label_155
	lea	rdi, [rsp + 0x10]
	mov	esi, 1
	mov	edx, 8
	mov	ecx, OFFSET FLAT:label_163
	xor	eax, eax
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_154
.label_155:
	mov	byte ptr [rsp + 0x10], 0
.label_154:
	mov	al, byte ptr [rip + short_output]
	test	al, al
	jne	.label_157
	mov	r14, qword ptr [rsp + 0x78]
	mov	rdi, r14
	call	strlen
	cmp	rax, 0xb
	ja	.label_157
	lea	rdi, [rsp + 0x2b]
	mov	esi, 1
	mov	edx, 0xd
	mov	ecx, OFFSET FLAT:label_164
	xor	eax, eax
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_160
.label_157:
	mov	byte ptr [rsp + 0x2b], 0
.label_160:
	mov	r14, qword ptr [rsp + 0x88]
	mov	edi, 1
	cmp	byte ptr [rip + include_exit],  1
	jne	.label_158
	mov	rdi, r14
	call	strlen
	cmp	rax, 0xc
	lea	rax, [rax + 2]
	mov	edi, 0xe
	cmovae	rdi, rax
.label_158:
	mov	r15, qword ptr [rsp + 0x80]
	call	xmalloc
	mov	rbp, rax
	cmp	byte ptr [rip + include_exit],  1
	jne	.label_150
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_159
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_151
.label_150:
	mov	byte ptr [rbp], 0
.label_151:
	test	rbx, rbx
	mov	r8d, OFFSET FLAT:label_152
	cmovne	r8, rbx
	mov	al, byte ptr [rip + include_mesg]
	mov	ecx, OFFSET FLAT:print_line.mesg
	mov	r9d, OFFSET FLAT:label_43
	test	al, al
	cmovne	r9, rcx
	mov	ebx, dword ptr [rip + time_format_width]
	lea	r10, [rsp + 0x2b]
	lea	r11, [rsp + 0x10]
	lea	rdi, [rsp + 8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_153
	mov	eax, 0
	mov	ecx, r13d
	push	rbp
	push	r15
	push	r10
	push	r11
	push	qword ptr [rsp + 0x38]
	push	rbx
	push	qword ptr [rsp + 0x50]
	push	r12
	call	__asprintf_chk
	add	rsp, 0x40
	cmp	eax, -1
	je	.label_162
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, rbx
	call	strlen
	lea	rax, [rbx + rax + 1]
	nop	dword ptr [rax]
.label_156:
	cmp	byte ptr [rax - 2], 0x20
	lea	rax, [rax - 1]
	je	.label_156
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rsp + 8]
	call	puts
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, rbp
	call	free
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_162:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f90

	.globl canon_host
	.type canon_host, @function
canon_host:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], 0
	mov	dword ptr [rip + canon_host_r.hints],  2
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	je	.label_167
	mov	dword ptr [rip + last_cherror],  eax
	xor	ebx, ebx
	jmp	.label_165
.label_167:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_166
	mov	dword ptr [rip + last_cherror],  0xfffffff6
.label_166:
	mov	rdi, qword ptr [rsp + 8]
	call	freeaddrinfo
.label_165:
	mov	rax, rbx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403010
	.globl canon_host_r
	.type canon_host_r, @function
canon_host_r:

	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], 0
	mov	dword ptr [rip + canon_host_r.hints],  2
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	je	.label_170
	xor	ebx, ebx
	test	r14, r14
	je	.label_168
	mov	dword ptr [r14], eax
	xor	ebx, ebx
	jmp	.label_168
.label_170:
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	r14, r14
	je	.label_169
	test	rbx, rbx
	jne	.label_169
	mov	dword ptr [r14], 0xfffffff6
.label_169:
	mov	rdi, qword ptr [rsp]
	call	freeaddrinfo
.label_168:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403090
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	mov	edi, dword ptr [rip + last_cherror]
	jmp	gai_strerror
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_176
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_172
	cmp	dword ptr [rbp], 0x20
	jne	.label_172
.label_176:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_174
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_172:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_171
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_173
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_124
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_174:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_173:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_175
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
	#Procedure 0x403180

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_178
	cmp	byte ptr [rax], 0x43
	jne	.label_180
	cmp	byte ptr [rax + 1], 0
	je	.label_177
.label_180:
	mov	esi, OFFSET FLAT:label_179
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_178
.label_177:
	xor	ebx, ebx
.label_178:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031c0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_181
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_182:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_182
	jmp	.label_184
.label_181:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_183:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_183
	mov	byte ptr [rsi], 0x2d
.label_184:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403280

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_185
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_187
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_189
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_187
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_190
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_190:
	mov	rbx, r14
.label_187:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_185:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_186
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403330
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
	#Procedure 0x403370
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
	#Procedure 0x403380
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
	#Procedure 0x403390
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
	#Procedure 0x4033d0
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
	#Procedure 0x4033f0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_191
	test	rdx, rdx
	je	.label_191
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_191:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403420
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
	#Procedure 0x4034a0

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
	jmp	.label_265
	nop	
.label_301:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_211
	or	al, dl
	jne	.label_211
	test	dil, 1
	jne	.label_298
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_211
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_265
	jmp	.label_211
.label_462:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_306
	test	rbp, rbp
	je	.label_309
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_309:
	mov	r14d, 1
	jmp	.label_312
.label_463:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_193
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_260
.label_306:
	xor	r14d, r14d
.label_312:
	mov	eax, OFFSET FLAT:label_193
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_194
	nop	
.label_265:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_204
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_212]
.label_464:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_220
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_219
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_465:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_235
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_235
	xor	r14d, r14d
	nop	
.label_251:
	cmp	r14, rbp
	jae	.label_224
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_224:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_251
.label_235:
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
	jmp	.label_260
.label_457:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_260
.label_460:
	mov	al, 1
.label_458:
	mov	r12b, 1
.label_461:
	test	r12b, 1
	mov	cl, 1
	je	.label_272
	mov	ecx, eax
.label_272:
	mov	al, cl
.label_459:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_274
	test	rbp, rbp
	je	.label_279
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_279:
	mov	r14d, 1
	jmp	.label_281
.label_274:
	xor	r14d, r14d
.label_281:
	mov	ecx, OFFSET FLAT:label_219
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_194:
	mov	sil, r12b
.label_260:
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
	jmp	.label_290
	nop	word ptr cs:[rax + rax]
.label_240:
	inc	r12
.label_290:
	cmp	r11, -1
	je	.label_316
	cmp	r12, r11
	jne	.label_317
	jmp	.label_318
	nop	word ptr cs:[rax + rax]
.label_316:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_198
.label_317:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_205
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_208
	cmp	r11, -1
	jne	.label_208
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_208:
	cmp	rbx, r11
	jbe	.label_225
.label_205:
	xor	esi, esi
.label_241:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_227
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_232]
.label_492:
	test	r12, r12
	jne	.label_248
	jmp	.label_239
	nop	word ptr cs:[rax + rax]
.label_225:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_250
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_241
	jmp	.label_262
.label_250:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_241
.label_496:
	xor	eax, eax
	cmp	r11, -1
	je	.label_267
	test	r12, r12
	jne	.label_271
	cmp	r11, 1
	je	.label_239
	xor	r13d, r13d
	jmp	.label_197
.label_485:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_276
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_262
	cmp	r8d, 2
	jne	.label_283
	mov	eax, r9d
	and	al, 1
	jne	.label_283
	cmp	r14, rbp
	jae	.label_284
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_284:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_286
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_286:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_292
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_292:
	add	r14, 3
	mov	r9b, 1
.label_283:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_297
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_297:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_299
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_299
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_299
	cmp	r14, rbp
	jae	.label_237
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_237:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_263
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_263:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_197
.label_486:
	mov	bl, 0x62
	jmp	.label_196
.label_487:
	mov	cl, 0x74
	jmp	.label_228
.label_488:
	mov	bl, 0x76
	jmp	.label_196
.label_489:
	mov	bl, 0x66
	jmp	.label_196
.label_490:
	mov	cl, 0x72
	jmp	.label_228
.label_493:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_202
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_210
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
	jae	.label_213
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_213:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_230
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_230:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_234
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_234:
	add	r14, 3
	xor	r9d, r9d
.label_202:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_197
.label_494:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_243
	cmp	r8d, 2
	jne	.label_248
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_248
	jmp	.label_210
.label_495:
	cmp	r8d, 2
	jne	.label_254
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_210
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_280
.label_227:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_264
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_273
.label_267:
	test	r12, r12
	jne	.label_282
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_282
.label_239:
	mov	dl, 1
.label_491:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_210
	xor	eax, eax
	mov	r13b, dl
.label_197:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_291
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_293
	jmp	.label_294
	nop	word ptr cs:[rax + rax]
.label_291:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_294
.label_293:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_305
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_303
	nop	dword ptr [rax]
.label_294:
	test	sil, sil
.label_303:
	mov	ebx, r15d
	je	.label_242
	jmp	.label_308
.label_305:
	mov	ebx, r15d
	jmp	.label_308
.label_276:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_240
	xor	r15d, r15d
	jmp	.label_248
.label_254:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_228
	xor	eax, eax
	mov	r15b, 0x5c
.label_280:
	xor	r13d, r13d
	jmp	.label_242
.label_228:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_210
.label_196:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_197
	nop	
.label_308:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_262
	cmp	r8d, 2
	jne	.label_203
	mov	eax, r9d
	and	al, 1
	jne	.label_203
	cmp	r14, rbp
	jae	.label_207
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_207:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_214
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_214:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_218
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_218:
	add	r14, 3
	mov	r9b, 1
.label_203:
	cmp	r14, rbp
	jae	.label_226
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_226:
	inc	r14
	jmp	.label_245
.label_264:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_233
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_233:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_300
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_295:
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
	je	.label_255
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_268
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_244
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_277
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_314:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_209
	bt	rsi, rdx
	jb	.label_210
.label_209:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_314
.label_277:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_296
	xor	r13d, r13d
.label_296:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_295
	jmp	.label_270
.label_299:
	xor	r13d, r13d
	jmp	.label_197
.label_282:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_197
.label_243:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_248
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_248
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_248
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_315
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_313
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_217
	cmp	r14, rbp
	jae	.label_200
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_200:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_206
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_206:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_229
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_229:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_236
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_236:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_313:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_197
.label_248:
	xor	eax, eax
.label_271:
	xor	r13d, r13d
	jmp	.label_197
.label_300:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_310:
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
	je	.label_285
	cmp	rbp, -1
	je	.label_253
	cmp	rbp, -2
	je	.label_255
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_304
	xor	r13d, r13d
.label_304:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_310
	jmp	.label_270
.label_255:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_258
	lea	rax, [r10 + r12]
.label_256:
	cmp	byte ptr [rax + rsi], 0
	je	.label_258
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_256
.label_258:
	mov	qword ptr [rsp + 0x40], rsi
.label_268:
	xor	r13d, r13d
	jmp	.label_244
.label_253:
	xor	r13d, r13d
.label_285:
	mov	r10, qword ptr [rsp + 0x28]
.label_244:
	mov	r12, qword ptr [rsp + 0x40]
.label_270:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_273:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_289
	test	al, al
	je	.label_289
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_197
.label_289:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_302
	nop	word ptr [rax + rax]
.label_269:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_302:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_307
	test	sil, 1
	je	.label_238
	cmp	r14, rbp
	jae	.label_311
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_311:
	inc	r14
	xor	esi, esi
	jmp	.label_238
	nop	word ptr cs:[rax + rax]
.label_307:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_262
	cmp	r8d, 2
	jne	.label_192
	mov	eax, r9d
	and	al, 1
	jne	.label_192
	cmp	r14, rbp
	jae	.label_195
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_195:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_201
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_201:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_259
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_259:
	add	r14, 3
	mov	r9b, 1
.label_192:
	cmp	r14, rbp
	jae	.label_216
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_216:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_222
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_222:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_231
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_231:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_238:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_242
	test	r9b, 1
	je	.label_246
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_199
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_249
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_249:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_257
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_257:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_246
	nop	word ptr cs:[rax + rax]
.label_199:
	mov	rbx, rcx
.label_246:
	cmp	r14, rbp
	jae	.label_269
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_269
	nop	
.label_242:
	test	r9b, 1
	je	.label_275
	and	al, 1
	jne	.label_275
	cmp	r14, rbp
	jae	.label_278
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_278:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_288
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_288:
	add	r14, 2
	xor	r9d, r9d
.label_275:
	mov	ebx, r15d
.label_245:
	cmp	r14, rbp
	jae	.label_287
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_287:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_240
.label_315:
	xor	r13d, r13d
	jmp	.label_197
	nop	word ptr cs:[rax + rax]
.label_318:
	mov	rcx, r12
.label_198:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_301
	or	al, dl
	jne	.label_301
	mov	r11, rcx
	jmp	.label_262
.label_210:
	mov	eax, 2
.label_252:
	mov	qword ptr [rsp + 0x38], rax
.label_262:
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
.label_261:
	mov	r14, rax
.label_247:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_211:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_266
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_215
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_215
	inc	rdx
	nop	dword ptr [rax + rax]
.label_223:
	cmp	r14, rbp
	jae	.label_221
	mov	byte ptr [rcx + r14], al
.label_221:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_223
	jmp	.label_215
.label_298:
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
	jmp	.label_261
.label_266:
	mov	rcx, qword ptr [rsp + 0x10]
.label_215:
	cmp	r14, rbp
	jae	.label_247
	mov	byte ptr [rcx + r14], 0
	jmp	.label_247
.label_217:
	mov	eax, 5
	jmp	.label_252
.label_204:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4042d0
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
	#Procedure 0x4043a0
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
	je	.label_319
	mov	qword ptr [rax], rbx
.label_319:
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
	#Procedure 0x404490
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_320
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_323:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_323
.label_320:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_324
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_321], OFFSET FLAT:slot0
.label_324:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_322
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_322:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404530
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404540

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
	js	.label_325
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_328
	cmp	r12d, 0x7fffffff
	je	.label_330
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
	jne	.label_326
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_326:
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
.label_328:
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
	jbe	.label_331
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_327
.label_331:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_329
	mov	rdi, r14
	call	free
.label_329:
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
.label_327:
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
.label_325:
	call	abort
.label_330:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404700
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404710
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
	#Procedure 0x404730
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
	#Procedure 0x404750
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
	je	.label_332
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
.label_332:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4047c0
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
	je	.label_333
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
.label_333:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404830
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
	je	.label_334
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
.label_334:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048a0
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
	je	.label_335
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
.label_335:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404910
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_336]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_338]
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
	#Procedure 0x404980
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_336]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_338]
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
	#Procedure 0x4049f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_336]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_338]
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
	#Procedure 0x404a50
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_336]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_338]
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
	#Procedure 0x404ab0

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
	je	.label_339
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
.label_339:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b50
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_336]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_338]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_340
	test	rdx, rdx
	je	.label_340
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_340:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404bc0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_336]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_338]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_341
	test	rdx, rdx
	je	.label_341
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_341:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c30
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_336]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_338]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_342
	test	rsi, rsi
	je	.label_342
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_342:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404ca0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_336]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_338]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_343
	test	rsi, rsi
	je	.label_343
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
.label_343:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d10
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d20
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
	#Procedure 0x404d40
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d60

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
	#Procedure 0x404d80

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
	jne	.label_348
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_352
	cmp	ecx, 0x55
	jne	.label_344
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_344
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_344
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_344
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_344
	cmp	byte ptr [rax + 5], 0
	jne	.label_344
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_350
	mov	eax, OFFSET FLAT:label_351
	jmp	.label_347
.label_352:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_344
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_344
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_344
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_344
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_344
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_344
	cmp	byte ptr [rax + 7], 0
	je	.label_349
.label_344:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_193
	mov	eax, OFFSET FLAT:label_219
.label_347:
	cmove	rax, rcx
.label_348:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_349:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_345
	mov	eax, OFFSET FLAT:label_346
	jmp	.label_347
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e50

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
	je	.label_363
	mov	edx, OFFSET FLAT:label_368
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_355
.label_363:
	mov	edx, OFFSET FLAT:label_357
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_355:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
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
	mov	esi, OFFSET FLAT:label_358
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_364
	jmp	qword ptr [(r12 * 8) + label_365]
.label_540:
	add	rsp, 8
	jmp	.label_356
.label_364:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
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
	jmp	.label_356
.label_541:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
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
.label_542:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
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
.label_543:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
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
.label_544:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
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
	jmp	.label_356
.label_545:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
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
	jmp	.label_356
.label_546:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
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
	jmp	.label_356
.label_547:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
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
	jmp	.label_356
.label_549:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
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
	jmp	.label_356
.label_548:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
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
.label_356:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_372:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_372
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_383
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_385
.label_383:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_385:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_374
	cmp	r10d, 0x29
	jae	.label_382
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_384
.label_382:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_384:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_374
	cmp	r10d, 0x29
	jae	.label_380
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_381
.label_380:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_381:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_374
	cmp	r10d, 0x29
	jae	.label_378
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_379
.label_378:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_379:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_374
	cmp	r10d, 0x29
	jae	.label_376
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_377
.label_376:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_377:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_374
	cmp	r10d, 0x29
	jae	.label_373
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_375
.label_373:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_375:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_374
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_374
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_374
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_374
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_374:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053d0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_386
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_386:
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
	#Procedure 0x405460
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_387
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_388
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_389
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054e0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_391
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_392
	test	rax, rax
	je	.label_391
.label_392:
	pop	rbx
	ret	
.label_391:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405520

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_393
	test	rax, rax
	je	.label_394
.label_393:
	pop	rbx
	ret	
.label_394:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405540
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_395
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_396
	test	rbx, rbx
	jne	.label_396
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_396:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_397
	test	rax, rax
	je	.label_395
.label_397:
	pop	rbx
	ret	
.label_395:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405590

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_398
	test	rbx, rbx
	jne	.label_398
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_398:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_400
	test	rax, rax
	je	.label_399
.label_400:
	pop	rbx
	ret	
.label_399:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4055c0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_401
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_404
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_402
.label_401:
	test	rcx, rcx
	jne	.label_407
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_407:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_403
.label_402:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_406
	test	rbx, rbx
	jne	.label_406
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_406:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_405
	test	rax, rax
	je	.label_404
.label_405:
	pop	rbx
	ret	
.label_404:
	call	xalloc_die
.label_403:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405660
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_408
	test	rax, rax
	je	.label_409
.label_408:
	pop	rbx
	ret	
.label_409:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405680
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_410
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_413
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_414
	call	free
	xor	eax, eax
	jmp	.label_411
.label_410:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_412
	mov	qword ptr [rsi], rbx
.label_414:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_411
	test	rax, rax
	je	.label_412
.label_411:
	pop	rbx
	ret	
.label_412:
	call	xalloc_die
.label_413:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056f0
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
	je	.label_416
	test	r14, r14
	je	.label_415
.label_416:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_415:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405730
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_417
	call	rpl_calloc
	test	rax, rax
	je	.label_417
	pop	rcx
	ret	
.label_417:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405760

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
	je	.label_418
	test	r15, r15
	je	.label_419
.label_418:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_419:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4057a0
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
	je	.label_421
	test	r15, r15
	je	.label_420
.label_421:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_420:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_422
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_124
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405820

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_423
	test	rsi, rsi
	mov	ecx, 1
	je	.label_424
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_424
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_423:
	mov	ecx, 1
.label_424:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405870

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
	je	.label_425
	cmp	r15, -2
	jb	.label_425
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_425
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_425:
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
	#Procedure 0x4058d0

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
	jle	.label_427
	add	rax, rbx
	nop	dword ptr [rax]
.label_426:
	cmp	byte ptr [rax - 1], 0x20
	jne	.label_427
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_426
.label_427:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405930

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
	mov	r12d, ecx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	call	utmpxname
	call	setutxent
	call	getutxent
	mov	rbp, rax
	xor	r13d, r13d
	test	rbp, rbp
	mov	ebx, 0
	je	.label_433
	mov	r14d, r12d
	and	r14d, 2
	and	r12d, 1
	xor	ebx, ebx
	xor	r13d, r13d
	xor	r15d, r15d
.label_438:
	test	r14d, r14d
	jne	.label_429
	test	r12d, r12d
	je	.label_430
	nop	
.label_436:
	cmp	byte ptr [rbp + 0x2c], 0
	je	.label_430
	movzx	eax, word ptr [rbp]
	cmp	eax, 7
	jne	.label_430
	mov	edi, dword ptr [rbp + 4]
	test	edi, edi
	jle	.label_430
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_430
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_430
	call	getutxent
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_436
	jmp	.label_433
	nop	word ptr cs:[rax + rax]
.label_429:
	test	r12d, r12d
	jne	.label_437
	nop	word ptr cs:[rax + rax]
.label_432:
	cmp	byte ptr [rbp + 0x2c], 0
	je	.label_428
	movzx	eax, word ptr [rbp]
	cmp	eax, 7
	je	.label_430
.label_428:
	call	getutxent
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_432
	jmp	.label_433
	nop	word ptr cs:[rax + rax]
.label_437:
	cmp	byte ptr [rbp + 0x2c], 0
	je	.label_435
	movzx	eax, word ptr [rbp]
	cmp	eax, 7
	jne	.label_435
	mov	edi, dword ptr [rbp + 4]
	test	edi, edi
	jle	.label_430
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_430
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_430
.label_435:
	call	getutxent
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_437
	jmp	.label_433
	nop	dword ptr [rax]
.label_430:
	cmp	rbx, r15
	jne	.label_440
	test	r13, r13
	je	.label_439
	movabs	rax, 0x38e38e38e38e38
	cmp	rbx, rax
	jae	.label_441
	mov	rax, rbx
	shr	rax, 1
	lea	r15, [rbx + rax + 1]
	jmp	.label_431
.label_439:
	test	rbx, rbx
	mov	r15, rbx
	mov	eax, 1
	cmove	r15, rax
	movabs	rax, 0x55555555555556
	cmp	r15, rax
	jae	.label_434
.label_431:
	mov	rax, r15
	shl	rax, 7
	lea	rsi, [rax + rax*2]
	mov	rdi, r13
	call	xrealloc
	mov	r13, rax
.label_440:
	lea	rdi, [rbx + rbx*2]
	inc	rbx
	shl	rdi, 7
	add	rdi, r13
	mov	edx, 0x180
	mov	rsi, rbp
	call	memcpy
	call	getutxent
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_438
.label_433:
	call	endutxent
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbx
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], r13
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_441:
	call	xalloc_die
.label_434:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b30

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
	jne	.label_443
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_442
	test	cl, cl
	jne	.label_442
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_442
.label_443:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_442
	call	__errno_location
	mov	dword ptr [rax], 0
.label_442:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b90

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_43
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_444
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bc0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_445
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_446
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_445
.label_446:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_445
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_447
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_447:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_445:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_448
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_448
	test	byte ptr [rbx + 1], 1
	je	.label_448
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_448:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c80

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
	jne	.label_449
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_449
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_450
.label_449:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_450:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_451
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_451:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x405cf0

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
