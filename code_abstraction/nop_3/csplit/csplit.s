	.section	.text
	.align	32
	#Procedure 0x401ca0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.2
	xor	eax, eax
	call	error
	call	cleanup_fatal
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cd0

	.globl cleanup_fatal
	.type cleanup_fatal, @function
cleanup_fatal:
	push	rbx
	sub	rsp, 0x80
	call	close_output_file
	lea	rbx, [rsp]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, rbx
	call	sigprocmask
	xor	edi, edi
	call	delete_all_files
	mov	edi, 2
	xor	edx, edx
	mov	rsi, rbx
	call	sigprocmask
	mov	edi, 1
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401d10

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x38], rbx
	mov	r15d, edi
	mov	dword ptr [rsp + 0x18], r15d
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str
	call	setlocale
	mov	edi, OFFSET FLAT:.str.3
	mov	esi, OFFSET FLAT:.str.4
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.3
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [word ptr [rip + global_argv]],  rbx
	mov	qword ptr [word ptr [rip + controls]],  0
	mov	qword ptr [word ptr [rip + control_used]],  0
	mov	byte ptr [byte ptr [rip + suppress_count]],  0
	mov	byte ptr [byte ptr [rip + remove_files]],  1
	mov	byte ptr [byte ptr [rip + suppress_matched]],  0
	mov	qword ptr [word ptr [rip + prefix]], OFFSET FLAT:.str.5
	jmp	.label_22
	nop	word ptr [rax + rax]
.label_2433:
	mov	byte ptr [byte ptr [rip + suppress_count]],  1
.label_22:
	mov	edx, OFFSET FLAT:.str.6
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, qword ptr [rsp + 0x38]
	call	getopt_long
	cmp	eax, 0x6a
	jle	.label_66
	lea	ecx, [rax - 0x6b]
	cmp	ecx, 8
	ja	.label_67
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_69]]
.label_2431:
	mov	byte ptr [byte ptr [rip + remove_files]],  0
	jmp	.label_22
	nop	
.label_66:
	cmp	eax, 0x61
	jle	.label_72
	cmp	eax, 0x62
	je	.label_9
	cmp	eax, 0x66
	jne	.label_53
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + prefix]],  rax
	jmp	.label_22
	nop	word ptr [rax + rax]
.label_67:
	cmp	eax, 0x7a
	je	.label_76
	cmp	eax, 0x80
	jne	.label_53
	mov	byte ptr [byte ptr [rip + suppress_matched]],  1
	jmp	.label_22
.label_2432:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + digits]],  eax
	jmp	.label_22
.label_9:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + suffix]],  rax
	jmp	.label_22
.label_76:
	mov	byte ptr [byte ptr [rip + elide_empty_files]],  1
	jmp	.label_22
.label_72:
	cmp	eax, -1
	jne	.label_93
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	ecx, r15d
	sub	ecx, eax
	cmp	ecx, 1
	jle	.label_94
	mov	rdi,  qword ptr [word ptr [rip + prefix]]
	call	strlen
	mov	r14, rax
	cmp	qword ptr [word ptr [rip + suffix]],  0
	je	.label_97
	mov	r8,  qword ptr [word ptr [rip + suffix]]
	xor	esi, esi
	movabs	rax, 0x100800001
	mov	r9d, 0x21000
	mov	rbp, r8
	jmp	.label_101
.label_112:
	inc	rdx
	mov	rbp, rdx
.label_101:
	movzx	ecx, byte ptr [rbp]
	cmp	ecx, 0x25
	je	.label_105
	test	cl, cl
	je	.label_109
	mov	rdx, rbp
	jmp	.label_112
	nop	dword ptr [rax]
.label_105:
	lea	rdx, [rbp + 1]
	movzx	edi, byte ptr [rbp + 1]
	cmp	edi, 0x25
	je	.label_112
	test	sil, 1
	jne	.label_115
	xor	esi, esi
	xor	ebx, ebx
	jmp	.label_117
	nop	dword ptr [rax]
.label_125:
	mov	dil, byte ptr [rbp + rbx + 2]
	inc	rbx
.label_117:
	movsx	ecx, dil
	cmp	ecx, 0x2c
	jg	.label_120
	cmp	ecx, 0x23
	je	.label_123
	cmp	ecx, 0x27
	jne	.label_124
	or	esi, 1
	jmp	.label_125
.label_120:
	cmp	ecx, 0x2d
	je	.label_125
	cmp	ecx, 0x30
	je	.label_125
	jmp	.label_124
	nop	dword ptr [rax]
.label_123:
	or	esi, 2
	jmp	.label_125
	nop	word ptr cs:[rax + rax]
.label_124:
	add	rdx, rbx
	jmp	.label_129
	nop	word ptr cs:[rax + rax]
.label_134:
	movsx	edi, byte ptr [rdx + 1]
	inc	rdx
	mov	ecx, edi
.label_129:
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_134
	movzx	ecx, dil
	cmp	ecx, 0x2e
	jne	.label_30
	nop	word ptr [rax + rax]
.label_62:
	movsx	edi, byte ptr [rdx + 1]
	inc	rdx
	mov	ecx, edi
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_62
.label_30:
	movzx	ebx, dil
	lea	ecx, [rbx - 0x58]
	cmp	ecx, 0x20
	ja	.label_39
	bt	rax, rcx
	jb	.label_142
	mov	ebp, 0xfffffffe
	bt	r9, rcx
	jae	.label_145
	mov	byte ptr [rdx], 0x75
	jmp	.label_148
.label_142:
	mov	ebp, 0xfffffffd
	jmp	.label_148
.label_145:
	cmp	rcx, 0x1d
	jne	.label_39
	nop	dword ptr [rax + rax]
.label_148:
	and	ebp, esi
	mov	sil, 1
	je	.label_112
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	add	ebp, ebp
	and	ebp, 4
	xor	ebp, 0x27
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebp
	mov	r8d, ebx
	call	error
.label_109:
	test	sil, 1
	je	.label_10
	mov	edi, 0
	mov	esi, 0
	mov	edx, 1
	xor	ecx, ecx
	mov	r9d, 0xffffffff
	xor	eax, eax
	call	__snprintf_chk
	test	eax, eax
	js	.label_17
	cdqe	
	jmp	.label_19
.label_97:
	mov	ecx,  dword ptr [dword ptr [rip + digits]]
	mov	eax, 0xa
	cmp	ecx, 0xa
	jb	.label_19
	movsxd	rax,  dword ptr [dword ptr [rip + digits]]
.label_19:
	mov	rcx, -2
	sub	rcx, r14
	cmp	rcx, rax
	jb	.label_17
	lea	rdi, [r14 + rax + 1]
	call	xmalloc
	mov	qword ptr [word ptr [rip + filename_space]],  rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	r13d, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  r13d
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rcx + rax*8]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_24
	cmp	byte ptr [rbx + 1], 0
	je	.label_32
.label_24:
	xor	edi, edi
	xor	edx, edx
	xor	ecx, ecx
	mov	rsi, rbx
	call	fd_reopen
	test	eax, eax
	js	.label_34
	mov	r13d,  dword ptr [dword ptr [rip + optind]]
.label_32:
	cmp	r13d, r15d
	jge	.label_46
	nop	dword ptr [rax + rax]
.label_31:
	movsxd	r12, r13d
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rax + r12*8]
	movsx	r15d, byte ptr [rbx]
	cmp	r15d, 0x2f
	je	.label_36
	movzx	eax, r15b
	cmp	eax, 0x25
	jne	.label_143
.label_36:
	lea	rbp, [rbx + 1]
	mov	rdi, rbp
	mov	esi, r15d
	call	strrchr
	mov	r14, rax
	test	r14, r14
	je	.label_43
	mov	rax,  qword ptr [word ptr [rip + control_used]]
	cmp	rax,  qword ptr [word ptr [rip + new_control_record.control_allocated]]
	jne	.label_153
	mov	rdi,  qword ptr [word ptr [rip + controls]]
	test	rdi, rdi
	je	.label_45
	movabs	rcx, 0xe38e38e38e38e3
	cmp	rax, rcx
	jae	.label_47
	mov	qword ptr [rsp + 0x20], rbp
	mov	rcx, rax
	shr	rcx, 1
	lea	rax, [rax + rcx + 1]
	jmp	.label_49
	nop	word ptr cs:[rax + rax]
.label_143:
	mov	rax,  qword ptr [word ptr [rip + control_used]]
	cmp	rax,  qword ptr [word ptr [rip + new_control_record.control_allocated]]
	jne	.label_55
	mov	rdi,  qword ptr [word ptr [rip + controls]]
	test	rdi, rdi
	je	.label_56
	movabs	rcx, 0xe38e38e38e38e3
	cmp	rax, rcx
	jae	.label_59
	mov	rcx, rax
	shr	rcx, 1
	lea	rcx, [rax + rcx + 1]
	jmp	.label_61
	nop	word ptr cs:[rax + rax]
.label_153:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbp,  qword ptr [word ptr [rip + controls]]
	jmp	.label_65
.label_55:
	mov	r15,  qword ptr [word ptr [rip + controls]]
	jmp	.label_119
.label_45:
	mov	qword ptr [rsp + 0x20], rbp
	test	rax, rax
	mov	ecx, 1
	cmove	rax, rcx
	movabs	rcx, 0x155555555555555
	cmp	rax, rcx
	ja	.label_71
.label_49:
	mov	qword ptr [word ptr [rip + new_control_record.control_allocated]],  rax
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	xrealloc
	mov	rbp, rax
	mov	qword ptr [word ptr [rip + controls]],  rbp
	mov	rax,  qword ptr [word ptr [rip + control_used]]
.label_65:
	mov	qword ptr [rsp + 0x10], rbx
	not	rbx
	add	rbx, r14
	movzx	ecx, r15b
	lea	r12, [rax + rax*2]
	inc	rax
	shl	r12, 5
	cmp	ecx, 0x25
	mov	qword ptr [word ptr [rip + control_used]],  rax
	mov	byte ptr [rbp + r12 + 0x1c], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + r12], xmm0
	mov	qword ptr [rbp + r12 + 0x10], 0
	mov	dword ptr [rbp + r12 + 0x18], r13d
	sete	byte ptr [rbp + r12 + 0x1d]
	mov	byte ptr [rbp + r12 + 0x1e], 1
	lea	r15, [rbp + r12 + 0x20]
	movups	xmmword ptr [rbp + r12 + 0x20], xmm0
	mov	edi, 0x100
	call	xmalloc
	mov	qword ptr [rbp + r12 + 0x40], rax
	mov	qword ptr [rbp + r12 + 0x48], 0
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  0x2c6
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rbx
	mov	rdx, r15
	call	rpl_re_compile_pattern
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_96
	add	rbp, r12
	cmp	byte ptr [r14 + 1], 0
	je	.label_98
	inc	r14
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str
	mov	rdi, r14
	mov	rcx, rbp
	call	xstrtoimax
	test	eax, eax
	mov	r14d, dword ptr [rsp + 0x18]
	je	.label_104
	jmp	.label_110
.label_56:
	test	rax, rax
	mov	ecx, 1
	cmovne	rcx, rax
	movabs	rax, 0x155555555555555
	cmp	rcx, rax
	ja	.label_111
.label_61:
	mov	qword ptr [word ptr [rip + new_control_record.control_allocated]],  rcx
	shl	rcx, 5
	lea	rsi, [rcx + rcx*2]
	call	xrealloc
	mov	r15, rax
	mov	qword ptr [word ptr [rip + controls]],  r15
	mov	rax,  qword ptr [word ptr [rip + control_used]]
.label_119:
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + control_used]],  rcx
	lea	rbx, [rax + rax*2]
	shl	rbx, 5
	mov	byte ptr [r15 + rbx + 0x1e], 0
	mov	byte ptr [r15 + rbx + 0x1c], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + rbx], xmm0
	mov	qword ptr [r15 + rbx + 0x10], 0
	mov	dword ptr [r15 + rbx + 0x18], r13d
	mov	rax, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + r12*8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str
	lea	rcx, [rsp + 0xe0]
	call	xstrtoumax
	test	eax, eax
	jne	.label_137
	mov	rax, qword ptr [rsp + 0xe0]
	test	rax, rax
	je	.label_138
	lea	rbp, [r15 + rbx]
	cmp	rax,  qword ptr [word ptr [rip + parse_patterns.last_val]]
	jb	.label_140
	jne	.label_147
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + r12*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	rax, qword ptr [rsp + 0xe0]
.label_147:
	mov	qword ptr [word ptr [rip + parse_patterns.last_val]],  rax
	mov	qword ptr [r15 + rbx + 8], rax
.label_98:
	mov	r14d, dword ptr [rsp + 0x18]
.label_104:
	lea	r15d, [r13 + 1]
	cmp	r15d, r14d
	jge	.label_8
	movsxd	rcx, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rax + rcx*8]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x7b
	jne	.label_8
	mov	r13, rcx
	mov	rdi, rbx
	call	strlen
	movzx	ecx, byte ptr [rbx + rax - 1]
	cmp	ecx, 0x7d
	jne	.label_78
	lea	r12, [rbx + rax - 1]
	mov	byte ptr [r12], 0
	inc	rbx
	lea	rax, [r12 - 1]
	cmp	rbx, rax
	jne	.label_15
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2a
	jne	.label_15
	mov	byte ptr [rbp + 0x1c], 1
	jmp	.label_21
	nop	dword ptr [rax + rax]
.label_15:
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str
	mov	rdi, rbx
	lea	rcx, [rsp + 0x40]
	call	xstrtoumax
	test	eax, eax
	jne	.label_26
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rbp + 0x10], rax
.label_21:
	mov	byte ptr [r12], 0x7d
	mov	r13d, r15d
.label_8:
	inc	r13d
	cmp	r13d, r14d
	jl	.label_31
.label_46:
	mov	edi, OFFSET FLAT:caught_signals
	call	sigemptyset
	lea	rdx, [rsp + 0x40]
	mov	edi, 0xe
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x40], 1
	je	.label_35
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xe
	call	sigaddset
.label_35:
	lea	rdx, [rsp + 0x40]
	mov	edi, 1
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x40], 1
	je	.label_37
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigaddset
.label_37:
	lea	rdx, [rsp + 0x40]
	mov	edi, 2
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x40], 1
	je	.label_107
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigaddset
.label_107:
	lea	rdx, [rsp + 0x40]
	mov	edi, 0xd
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x40], 1
	je	.label_151
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xd
	call	sigaddset
.label_151:
	lea	rdx, [rsp + 0x40]
	mov	edi, 3
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x40], 1
	je	.label_54
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 3
	call	sigaddset
.label_54:
	lea	rdx, [rsp + 0x40]
	mov	edi, 0xf
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x40], 1
	je	.label_60
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	call	sigaddset
.label_60:
	lea	rdx, [rsp + 0x40]
	mov	edi, 0x1d
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x40], 1
	je	.label_63
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1d
	call	sigaddset
.label_63:
	lea	rdx, [rsp + 0x40]
	mov	edi, 0x1b
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x40], 1
	je	.label_73
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	call	sigaddset
.label_73:
	lea	rdx, [rsp + 0x40]
	mov	edi, 0x1a
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x40], 1
	je	.label_75
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1a
	call	sigaddset
.label_75:
	lea	rdx, [rsp + 0x40]
	mov	edi, 0x18
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x40], 1
	je	.label_79
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigaddset
.label_79:
	lea	rdx, [rsp + 0x40]
	mov	edi, 0x19
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x40], 1
	je	.label_83
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x19
	call	sigaddset
.label_83:
	mov	qword ptr [word ptr [rsp + 64]], OFFSET FLAT:interrupt_handler
	movups	xmm0,  xmmword ptr [word ptr [rip + label_86]]
	movups	xmmword ptr [rsp + 0xb8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_87]]
	movups	xmmword ptr [rsp + 0xa8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_88]]
	movups	xmmword ptr [rsp + 0x98], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_89]]
	movups	xmmword ptr [rsp + 0x88], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_90]]
	movups	xmmword ptr [rsp + 0x78], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_91]]
	movups	xmmword ptr [rsp + 0x68], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_92]]
	movups	xmmword ptr [rsp + 0x58], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + caught_signals]]
	movups	xmmword ptr [rsp + 0x48], xmm0
	mov	dword ptr [rsp + 0xc8], 0
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xe
	call	sigismember
	test	eax, eax
	je	.label_28
	lea	rsi, [rsp + 0x40]
	mov	edi, 0xe
	xor	edx, edx
	call	sigaction
.label_28:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigismember
	test	eax, eax
	je	.label_118
	lea	rsi, [rsp + 0x40]
	mov	edi, 1
	xor	edx, edx
	call	sigaction
.label_118:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigismember
	test	eax, eax
	je	.label_126
	lea	rsi, [rsp + 0x40]
	mov	edi, 2
	xor	edx, edx
	call	sigaction
.label_126:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xd
	call	sigismember
	test	eax, eax
	je	.label_132
	lea	rsi, [rsp + 0x40]
	mov	edi, 0xd
	xor	edx, edx
	call	sigaction
.label_132:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 3
	call	sigismember
	test	eax, eax
	je	.label_136
	lea	rsi, [rsp + 0x40]
	mov	edi, 3
	xor	edx, edx
	call	sigaction
.label_136:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	call	sigismember
	test	eax, eax
	je	.label_144
	lea	rsi, [rsp + 0x40]
	mov	edi, 0xf
	xor	edx, edx
	call	sigaction
.label_144:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1d
	call	sigismember
	test	eax, eax
	je	.label_150
	lea	rsi, [rsp + 0x40]
	mov	edi, 0x1d
	xor	edx, edx
	call	sigaction
.label_150:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	call	sigismember
	test	eax, eax
	je	.label_13
	lea	rsi, [rsp + 0x40]
	mov	edi, 0x1b
	xor	edx, edx
	call	sigaction
.label_13:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1a
	call	sigismember
	test	eax, eax
	je	.label_11
	lea	rsi, [rsp + 0x40]
	mov	edi, 0x1a
	xor	edx, edx
	call	sigaction
.label_11:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigismember
	test	eax, eax
	je	.label_16
	lea	rsi, [rsp + 0x40]
	mov	edi, 0x18
	xor	edx, edx
	call	sigaction
.label_16:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x19
	call	sigismember
	test	eax, eax
	je	.label_100
	lea	rsi, [rsp + 0x40]
	mov	edi, 0x19
	xor	edx, edx
	call	sigaction
.label_100:
	cmp	qword ptr [word ptr [rip + control_used]],  0
	je	.label_23
	mov	r15,  qword ptr [word ptr [rip + controls]]
	xor	eax, eax
.label_139:
	mov	qword ptr [rsp + 0x18], rax
	lea	r13, [rax + rax*2]
	shl	r13, 5
	cmp	byte ptr [r15 + r13 + 0x1e], 0
	mov	eax, 0
	mov	r14d, 0
	jne	.label_29
	jmp	.label_33
	nop	word ptr [rax + rax]
.label_57:
	mov	r15,  qword ptr [word ptr [rip + controls]]
	mov	r14, r12
.label_33:
	cmp	byte ptr [r15 + r13 + 0x1c], 0
	jne	.label_42
	cmp	r14, qword ptr [r15 + r13 + 0x10]
	ja	.label_68
.label_42:
	mov	rbx, qword ptr [r15 + r13 + 8]
	call	create_output_file
	mov	rdi,  qword ptr [word ptr [rip + current_line]]
	inc	rdi
	call	find_line
	test	rax, rax
	jne	.label_38
	movzx	eax,  byte ptr [byte ptr [rip + suppress_matched]]
	and	eax, 1
	cmp	eax, 1
	je	.label_40
.label_38:
	mov	rax,  qword ptr [word ptr [rip + head]]
	test	rax, rax
	jne	.label_121
	call	load_buffer
	test	al, al
	je	.label_44
	mov	rax,  qword ptr [word ptr [rip + head]]
.label_121:
	lea	r12, [r14 + 1]
	imul	rbx, r12
	mov	rbp, qword ptr [rax + 0x18]
	jmp	.label_130
	nop	dword ptr [rax]
.label_50:
	inc	rbp
	mov	rdi, rax
	call	save_line_to_file
.label_130:
	cmp	rbp, rbx
	jae	.label_48
	call	remove_line
	test	rax, rax
	jne	.label_50
	jmp	.label_40
	nop	
.label_48:
	call	close_output_file
	movzx	eax,  byte ptr [byte ptr [rip + suppress_matched]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_52
	call	remove_line
.label_52:
	mov	rdi,  qword ptr [word ptr [rip + current_line]]
	inc	rdi
	call	find_line
	test	rax, rax
	jne	.label_57
	mov	al,  byte ptr [byte ptr [rip + suppress_matched]]
	and	al, 1
	jne	.label_57
	jmp	.label_40
	nop	word ptr cs:[rax + rax]
.label_135:
	mov	rax, qword ptr [rsp + 0x38]
	inc	rax
	mov	r15,  qword ptr [word ptr [rip + controls]]
.label_29:
	cmp	byte ptr [r15 + r13 + 0x1c], 0
	jne	.label_64
	cmp	rax, qword ptr [r15 + r13 + 0x10]
	ja	.label_68
.label_64:
	mov	qword ptr [rsp + 0x38], rax
	mov	r12b, byte ptr [r15 + r13 + 0x1d]
	test	r12b, r12b
	jne	.label_70
	call	create_output_file
.label_70:
	lea	rbx, [r15 + r13]
	movzx	eax,  byte ptr [byte ptr [rip + suppress_matched]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_74
	mov	rax,  qword ptr [word ptr [rip + current_line]]
	test	rax, rax
	je	.label_74
	call	remove_line
.label_74:
	lea	r14, [r15 + r13 + 0x1c]
	cmp	qword ptr [rbx], 0
	js	.label_27
	mov	rdi,  qword ptr [word ptr [rip + current_line]]
	inc	rdi
	mov	qword ptr [word ptr [rip + current_line]],  rdi
	call	find_line
	test	rax, rax
	je	.label_77
	lea	rbp, [r15 + r13 + 0x20]
.label_95:
	mov	rdx, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
	movzx	eax, byte ptr [rsi + rdx - 1]
	cmp	eax, 0xa
	jne	.label_81
	dec	rdx
.label_81:
	xor	ecx, ecx
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	jne	.label_84
	call	remove_line
	test	r12b, r12b
	jne	.label_85
	mov	rdi, rax
	call	save_line_to_file
.label_85:
	mov	rdi,  qword ptr [word ptr [rip + current_line]]
	inc	rdi
	mov	qword ptr [word ptr [rip + current_line]],  rdi
	call	find_line
	test	rax, rax
	jne	.label_95
	jmp	.label_77
	nop	dword ptr [rax]
.label_27:
	lea	rbp, [r15 + r13 + 0x20]
.label_106:
	mov	rdi,  qword ptr [word ptr [rip + current_line]]
	inc	rdi
	mov	qword ptr [word ptr [rip + current_line]],  rdi
	call	find_line
	test	rax, rax
	je	.label_99
	mov	rdx, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
	movzx	eax, byte ptr [rsi + rdx - 1]
	cmp	eax, 0xa
	jne	.label_103
	dec	rdx
.label_103:
	xor	ecx, ecx
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_106
.label_84:
	cmp	rax, -2
	je	.label_108
	mov	r14, qword ptr [rbx]
	mov	qword ptr [rsp + 0x20], rbx
	add	r14,  qword ptr [word ptr [rip + current_line]]
	movsxd	rbx, dword ptr [r15 + r13 + 0x18]
	mov	rax,  qword ptr [word ptr [rip + head]]
	test	rax, rax
	jne	.label_113
	call	load_buffer
	test	al, al
	je	.label_44
	mov	rax,  qword ptr [word ptr [rip + head]]
.label_113:
	mov	rbp, r14
	sub	rbp, qword ptr [rax + 0x18]
	jb	.label_122
	mov	r15d, 0
	je	.label_102
	nop	word ptr cs:[rax + rax]
.label_131:
	call	remove_line
	test	rax, rax
	je	.label_122
	test	r12b, r12b
	jne	.label_128
	mov	rdi, rax
	call	save_line_to_file
.label_128:
	inc	r15
	cmp	r15, rbp
	jb	.label_131
.label_102:
	test	r12b, r12b
	jne	.label_133
	call	close_output_file
.label_133:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	jle	.label_135
	mov	qword ptr [word ptr [rip + current_line]],  r14
	jmp	.label_135
	nop	dword ptr [rax + rax]
.label_68:
	mov	rax, qword ptr [rsp + 0x18]
	inc	rax
	cmp	rax,  qword ptr [word ptr [rip + control_used]]
	jb	.label_139
.label_23:
	call	create_output_file
	jmp	.label_146
	nop	dword ptr [rax]
.label_149:
	mov	rdi, rax
	call	save_line_to_file
.label_146:
	call	remove_line
	test	rax, rax
	jne	.label_149
	call	close_output_file
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_152
	xor	eax, eax
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_77:
	cmp	byte ptr [r14], 0
	je	.label_7
	test	r12b, r12b
	je	.label_141
	jmp	.label_25
	nop	dword ptr [rax + rax]
.label_41:
	mov	rdi, rax
	call	save_line_to_file
.label_141:
	call	remove_line
	test	rax, rax
	jne	.label_41
	call	close_output_file
.label_25:
	xor	edi, edi
	call	exit
.label_99:
	cmp	byte ptr [r14], 0
	je	.label_7
	test	r12b, r12b
	je	.label_12
	jmp	.label_14
	nop	
.label_18:
	mov	rdi, rax
	call	save_line_to_file
.label_12:
	call	remove_line
	test	rax, rax
	jne	.label_18
	call	close_output_file
.label_14:
	xor	edi, edi
	call	exit
.label_40:
	add	r15, r13
	mov	rdi, r15
	mov	rsi, r14
	call	handle_line_error
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax,  qword ptr [word ptr [rip + global_argv]]
	mov	rdi, qword ptr [rax + rbx*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	call	cleanup_fatal
.label_108:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_20:
	mov	rdx, rcx
	call	error
	call	cleanup_fatal
.label_44:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8d, r15d
	call	error
.label_96:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x10]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	r8, rbx
	call	error
	call	cleanup_fatal
.label_93:
	cmp	eax, 0xffffff7d
	je	.label_51
	cmp	eax, 0xffffff7e
	jne	.label_53
	xor	edi, edi
	call	usage
.label_110:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x10]
	jmp	.label_58
.label_137:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + r12*8]
	jmp	.label_58
.label_138:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rax + r12*8]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	call	error
.label_140:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + r12*8]
	call	quote
	mov	rbp, rax
	mov	rdi,  qword ptr [word ptr [rip + parse_patterns.last_val]]
	lea	rsi, [rsp + 0x40]
	call	umaxtostr
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_115:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	jmp	.label_80
.label_39:
	test	ebx, ebx
	jne	.label_82
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	jmp	.label_80
.label_78:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
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
.label_47:
	call	xalloc_die
.label_53:
	mov	edi, 1
	call	usage
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + global_argv]]
	mov	rdi, qword ptr [rax + r13*8]
.label_58:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_51:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.10
	mov	r9d, OFFSET FLAT:.str.11
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_82:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	jne	.label_114
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	jmp	.label_116
.label_71:
	call	xalloc_die
.label_17:
	call	xalloc_die
.label_59:
	call	xalloc_die
.label_114:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
.label_116:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_94:
	xor	edi, edi
	cmp	eax, r15d
	jge	.label_127
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, r15d
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_111:
	call	xalloc_die
.label_34:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_10:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
.label_80:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_7:
	movzx	edx, r12b
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x38]
	call	regexp_error
.label_127:
	mov	esi, OFFSET FLAT:.str.12
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
.label_152:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_20
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403080

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_154
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_155
	mov	esi, OFFSET FLAT:.str.76
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_155
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.77
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_155:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.78
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:.str.8
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.8
	mov	ecx, OFFSET FLAT:.str.80
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_154:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032e0

	.globl interrupt_handler
	.type interrupt_handler, @function
interrupt_handler:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	byte ptr [byte ptr [rip + remove_files]],  0
	je	.label_156
	cmp	dword ptr [dword ptr [rip + files_created]],  0
	je	.label_157
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_158:
	mov	edi, ebp
	call	make_filename
	mov	rdi, rax
	call	unlink
	inc	ebp
	cmp	ebp,  dword ptr [dword ptr [rip + files_created]]
	jb	.label_158
.label_157:
	mov	dword ptr [dword ptr [rip + files_created]],  0
.label_156:
	xor	esi, esi
	mov	edi, ebx
	call	signal
	mov	edi, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	raise
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403340

	.globl close_output_file
	.type close_output_file, @function
close_output_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x88
	mov	rdi,  qword ptr [word ptr [rip + output_stream]]
	test	rdi, rdi
	je	.label_159
	test	byte ptr [rdi], 0x20
	jne	.label_162
	call	rpl_fclose
	test	eax, eax
	jne	.label_163
	mov	rdi,  qword ptr [word ptr [rip + bytes_written]]
	test	rdi, rdi
	jne	.label_160
	movzx	eax,  byte ptr [byte ptr [rip + elide_empty_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_160
	lea	r15, [rsp]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	call	sigprocmask
	mov	rdi,  qword ptr [word ptr [rip + output_filename]]
	call	unlink
	mov	ebp, eax
	test	ebp, ebp
	sete	bl
	call	__errno_location
	mov	r14d, dword ptr [rax]
	movzx	eax, bl
	sub	dword ptr [dword ptr [rip + files_created]],  eax
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	sigprocmask
	test	ebp, ebp
	je	.label_161
	mov	rdx,  qword ptr [word ptr [rip + output_filename]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.2
	xor	eax, eax
	mov	esi, r14d
	call	error
	jmp	.label_161
.label_160:
	mov	al,  byte ptr [byte ptr [rip + suppress_count]]
	and	al, 1
	jne	.label_161
	mov	rbx,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.26
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_161:
	mov	qword ptr [word ptr [rip + output_stream]],  0
.label_159:
	add	rsp, 0x88
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_162:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + output_filename]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_164
.label_163:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + output_filename]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.2
	xor	eax, eax
	mov	esi, ebx
.label_164:
	call	error
	mov	qword ptr [word ptr [rip + output_stream]],  0
	call	cleanup_fatal
	nop	
	.section	.text
	.align	32
	#Procedure 0x4034c0

	.globl delete_all_files
	.type delete_all_files, @function
delete_all_files:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, edi
	cmp	byte ptr [byte ptr [rip + remove_files]],  0
	je	.label_165
	cmp	dword ptr [dword ptr [rip + files_created]],  0
	je	.label_168
	xor	ebp, ebp
	nop	
.label_166:
	mov	edi, ebp
	call	make_filename
	mov	rbx, rax
	mov	rdi, rbx
	call	unlink
	test	eax, eax
	je	.label_167
	test	r14b, r14b
	jne	.label_167
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.2
	xor	eax, eax
	mov	esi, r15d
	call	error
.label_167:
	inc	ebp
	cmp	ebp,  dword ptr [dword ptr [rip + files_created]]
	jb	.label_166
.label_168:
	mov	dword ptr [dword ptr [rip + files_created]],  0
.label_165:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403550

	.globl make_filename
	.type make_filename, @function
make_filename:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edi
	mov	rdi,  qword ptr [word ptr [rip + filename_space]]
	mov	rsi,  qword ptr [word ptr [rip + prefix]]
	call	strcpy
	mov	rbx,  qword ptr [word ptr [rip + suffix]]
	mov	rbp,  qword ptr [word ptr [rip + filename_space]]
	mov	rdi,  qword ptr [word ptr [rip + prefix]]
	call	strlen
	mov	rdi, rax
	add	rdi, rbp
	cmp	rbx, 0
	je	.label_169
	mov	rcx,  qword ptr [word ptr [rip + suffix]]
	mov	esi, 1
	mov	rdx, -1
	xor	eax, eax
	mov	r8d, r14d
	call	__sprintf_chk
	jmp	.label_170
.label_169:
	mov	r8d,  dword ptr [dword ptr [rip + digits]]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.27
	xor	eax, eax
	mov	r9d, r14d
	call	__sprintf_chk
.label_170:
	mov	rax,  qword ptr [word ptr [rip + filename_space]]
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4035e0

	.globl create_output_file
	.type create_output_file, @function
create_output_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x88
	mov	edi,  dword ptr [dword ptr [rip + files_created]]
	call	make_filename
	mov	qword ptr [word ptr [rip + output_filename]],  rax
	mov	ecx,  dword ptr [dword ptr [rip + files_created]]
	cmp	ecx, -1
	je	.label_171
	lea	r15, [rsp + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	call	sigprocmask
	mov	rdi,  qword ptr [word ptr [rip + output_filename]]
	mov	esi, OFFSET FLAT:.str.64
	call	fopen_safer
	mov	rbp, rax
	mov	qword ptr [word ptr [rip + output_stream]],  rbp
	test	rbp, rbp
	setne	bl
	call	__errno_location
	mov	r14d, dword ptr [rax]
	movzx	eax, bl
	add	dword ptr [dword ptr [rip + files_created]],  eax
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	sigprocmask
	test	rbp, rbp
	je	.label_173
	mov	qword ptr [word ptr [rip + bytes_written]],  0
	add	rsp, 0x88
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_171:
	mov	r14d, 0x4b
	jmp	.label_172
.label_173:
	mov	rax,  qword ptr [word ptr [rip + output_filename]]
.label_172:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.2
	xor	eax, eax
	mov	esi, r14d
	call	error
	call	cleanup_fatal
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036c0

	.globl remove_line
	.type remove_line, @function
remove_line:
	push	r14
	push	rbx
	push	rax
	mov	r14,  qword ptr [word ptr [rip + remove_line.prev_buf]]
	test	r14, r14
	je	.label_174
	mov	rdi, qword ptr [r14 + 0x30]
	test	rdi, rdi
	je	.label_180
	nop	dword ptr [rax]
.label_178:
	mov	rbx, qword ptr [rdi + 0x518]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_178
.label_180:
	mov	qword ptr [r14 + 0x30], 0
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	qword ptr [r14 + 0x28], 0
	mov	rdi,  qword ptr [word ptr [rip + remove_line.prev_buf]]
	call	free
	mov	qword ptr [word ptr [rip + remove_line.prev_buf]],  0
.label_174:
	mov	rax,  qword ptr [word ptr [rip + head]]
	test	rax, rax
	jne	.label_176
	xor	ebx, ebx
	call	load_buffer
	test	al, al
	je	.label_179
	mov	rax,  qword ptr [word ptr [rip + head]]
.label_176:
	mov	rcx, qword ptr [rax + 0x18]
	cmp	qword ptr [word ptr [rip + current_line]],  rcx
	jae	.label_175
	mov	qword ptr [word ptr [rip + current_line]],  rcx
.label_175:
	inc	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rcx, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, rdx
	shl	rsi, 4
	lea	rbx, [rcx + rsi + 0x18]
	inc	rdx
	mov	qword ptr [rcx + 0x10], rdx
	cmp	rdx, qword ptr [rcx]
	jne	.label_179
	mov	rcx, qword ptr [rcx + 0x518]
	mov	qword ptr [rax + 0x38], rcx
	test	rcx, rcx
	je	.label_177
	cmp	qword ptr [rcx], 0
	jne	.label_179
.label_177:
	mov	qword ptr [word ptr [rip + remove_line.prev_buf]],  rax
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [word ptr [rip + head]],  rax
.label_179:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037b0

	.globl find_line
	.type find_line, @function
find_line:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	r15,  qword ptr [word ptr [rip + head]]
	test	r15, r15
	jne	.label_187
	xor	r14d, r14d
	call	load_buffer
	test	al, al
	je	.label_185
	mov	r15,  qword ptr [word ptr [rip + head]]
.label_187:
	mov	rax, qword ptr [r15 + 0x10]
	xor	r14d, r14d
	cmp	rax, rbx
	ja	.label_185
	test	r15, r15
	je	.label_183
	mov	rcx, qword ptr [r15 + 0x20]
	add	rcx, rax
	cmp	rcx, rbx
	jbe	.label_184
	mov	rcx, r15
	jmp	.label_188
.label_184:
	xor	r14d, r14d
.label_189:
	mov	rcx, qword ptr [r15 + 0x40]
	test	rcx, rcx
	jne	.label_181
	call	load_buffer
	test	al, al
	je	.label_185
	mov	rcx, qword ptr [r15 + 0x40]
	test	rcx, rcx
	je	.label_183
.label_181:
	mov	rax, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rcx + 0x20]
	add	rdx, rax
	cmp	rdx, rbx
	mov	r15, rcx
	jbe	.label_189
.label_188:
	sub	rbx, rax
	mov	rax, qword ptr [rcx + 0x30]
	cmp	rbx, 0x50
	jb	.label_186
	nop	dword ptr [rax + rax]
.label_182:
	add	rbx, -0x50
	mov	rax, qword ptr [rax + 0x518]
	cmp	rbx, 0x4f
	ja	.label_182
.label_186:
	shl	rbx, 4
	lea	r14, [rax + rbx + 0x18]
.label_185:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_183:
	mov	edi, OFFSET FLAT:.str.56
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 0x26a
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.find_line
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403880

	.globl regexp_error
	.type regexp_error, @function
regexp_error:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, edx
	mov	r15, rsi
	mov	rbp, rdi
	mov	r12,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	rbx,  qword ptr [word ptr [rip + program_name]]
	movsxd	rax, dword ptr [rbp + 0x18]
	mov	rcx,  qword ptr [word ptr [rip + global_argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r12
	mov	rdx, r13
	mov	rcx, rbx
	mov	r8, rbp
	call	__fprintf_chk
	test	r15, r15
	je	.label_193
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsp]
	mov	rdi, r15
	call	umaxtostr
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rbp
	call	__fprintf_chk
	jmp	.label_192
.label_193:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.60
	xor	eax, eax
	call	__fprintf_chk
.label_192:
	test	r14b, r14b
	je	.label_190
	jmp	.label_191
	nop	word ptr [rax + rax]
.label_194:
	mov	rdi, rax
	call	save_line_to_file
.label_190:
	call	remove_line
	test	rax, rax
	jne	.label_194
	call	close_output_file
.label_191:
	call	cleanup_fatal
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403970

	.globl save_line_to_file
	.type save_line_to_file, @function
save_line_to_file:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	mov	rcx,  qword ptr [word ptr [rip + output_stream]]
	mov	esi, 1
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbx]
	jne	.label_195
	add	qword ptr [word ptr [rip + bytes_written]],  rax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_195:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + output_filename]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	qword ptr [word ptr [rip + output_stream]],  0
	call	cleanup_fatal
	nop	
	.section	.text
	.align	32
	#Procedure 0x4039f0

	.globl load_buffer
	.type load_buffer, @function
load_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	al,  byte ptr [byte ptr [rip + have_read_eof]]
	and	al, 1
	jne	.label_224
	mov	rbx,  qword ptr [word ptr [rip + hold_count]]
	cmp	rbx, 0x1fff
	mov	eax, 0x1fff
	cmovbe	rbx, rax
	jmp	.label_201
	nop	word ptr cs:[rax + rax]
.label_209:
	add	rbx, rbx
	mov	qword ptr [r14 + 0x30], 0
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, r14
	call	free
.label_201:
	cmp	rbx, 0x2000
	mov	r12d, 0x1fff
	jb	.label_213
	add	rbx, -0x1800
	and	rbx, 0xfffffffffffff800
	add	rbx, 0x1fff
	mov	r12, rbx
.label_213:
	mov	edi, 0x48
	call	xmalloc
	mov	r14, rax
	lea	rdi, [r12 + 1]
	call	xmalloc
	mov	r13, rax
	mov	qword ptr [r14 + 0x28], r13
	mov	qword ptr [r14], r12
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14 + 0x30], xmm0
	mov	qword ptr [r14 + 0x20], 0
	mov	qword ptr [r14 + 8], 0
	mov	rax,  qword ptr [word ptr [rip + last_line_number]]
	inc	rax
	mov	qword ptr [r14 + 0x18], rax
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r14 + 0x40], 0
	mov	r15,  qword ptr [word ptr [rip + hold_count]]
	test	r15, r15
	je	.label_200
	mov	rsi,  qword ptr [word ptr [rip + hold_area]]
	mov	rdi, r13
	mov	rdx, r15
	call	memcpy
	mov	qword ptr [r14 + 8], r15
	sub	r12, r15
	mov	qword ptr [word ptr [rip + hold_count]],  0
	mov	ebp, 0
	je	.label_205
	add	r13, r15
.label_200:
	xor	edi, edi
	mov	rsi, r13
	mov	rdx, r12
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	je	.label_202
	cmp	rbp, -1
	jne	.label_205
	jmp	.label_206
	nop	word ptr cs:[rax + rax]
.label_202:
	mov	byte ptr [byte ptr [rip + have_read_eof]],  1
	xor	ebp, ebp
.label_205:
	lea	rax, [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rax
	add	rbp, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], rbp
	je	.label_211
	mov	r12, qword ptr [r14 + 0x28]
	mov	esi, 0xa
	mov	rdi, r12
	mov	rdx, rbp
	call	memchr
	mov	r15, rax
	test	r15, r15
	je	.label_220
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	nop	word ptr [rax + rax]
.label_222:
	mov	r13, r15
	sub	r13, r12
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rax], 0
	je	.label_196
	mov	rax, qword ptr [r14 + 0x38]
	jmp	.label_203
	nop	word ptr [rax + rax]
.label_196:
	mov	edi, 0x520
	call	xmalloc
	mov	qword ptr [rax + 0x518], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	qword ptr [r14 + 0x38], rax
	mov	qword ptr [r14 + 0x30], rax
.label_203:
	inc	r13
	cmp	qword ptr [rax], 0x50
	jne	.label_214
	mov	edi, 0x520
	call	xmalloc
	mov	qword ptr [rax + 0x518], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rcx, qword ptr [r14 + 0x38]
	mov	qword ptr [rcx + 0x518], rax
	mov	qword ptr [r14 + 0x38], rax
.label_214:
	mov	rcx, qword ptr [rax + 8]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 0x20], r12
	mov	qword ptr [rax + rcx + 0x18], r13
	movdqu	xmm0, xmmword ptr [rax]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movdqu	xmmword ptr [rax], xmm0
	mov	rbx, rbp
	sub	rbp, r13
	mov	r12, r15
	inc	r12
	inc	qword ptr [rsp + 8]
	mov	esi, 0xa
	mov	rdi, r12
	mov	rdx, rbp
	call	memchr
	mov	r15, rax
	test	r15, r15
	jne	.label_222
	cmp	rbx, r13
	mov	rbx, qword ptr [rsp + 8]
	je	.label_212
	jmp	.label_221
	nop	dword ptr [rax]
.label_220:
	xor	ebx, ebx
.label_221:
	movzx	eax,  byte ptr [byte ptr [rip + have_read_eof]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_223
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rax], 0
	je	.label_197
	mov	r15, r14
	add	r15, 0x38
	mov	rax, qword ptr [r14 + 0x38]
	jmp	.label_215
	nop	dword ptr [rax]
.label_223:
	mov	rdi, r12
	mov	rsi, rbp
	call	xmemdup
	mov	r12, rax
	mov	rdi,  qword ptr [word ptr [rip + hold_area]]
	call	free
	mov	qword ptr [word ptr [rip + hold_area]],  r12
	mov	qword ptr [word ptr [rip + hold_count]],  rbp
	jmp	.label_212
.label_197:
	mov	edi, 0x520
	call	xmalloc
	mov	qword ptr [rax + 0x518], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	r15, r14
	add	r15, 0x38
	mov	qword ptr [r14 + 0x38], rax
	mov	qword ptr [r14 + 0x30], rax
.label_215:
	cmp	qword ptr [rax], 0x50
	jne	.label_198
	mov	edi, 0x520
	call	xmalloc
	mov	qword ptr [rax + 0x518], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rcx, qword ptr [r15]
	mov	qword ptr [rcx + 0x518], rax
	mov	qword ptr [r15], rax
.label_198:
	mov	rcx, qword ptr [rax + 8]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 0x20], r12
	mov	qword ptr [rax + rcx + 0x18], rbp
	movdqu	xmm0, xmmword ptr [rax]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movdqu	xmmword ptr [rax], xmm0
	inc	rbx
.label_212:
	mov	qword ptr [r14 + 0x20], rbx
	mov	rax,  qword ptr [word ptr [rip + last_line_number]]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14 + 0x18], rcx
	add	rax, rbx
	mov	qword ptr [word ptr [rip + last_line_number]],  rax
	test	rbx, rbx
	jne	.label_218
.label_211:
	mov	al,  byte ptr [byte ptr [rip + have_read_eof]]
	and	al, 1
	jne	.label_199
	mov	rbx, qword ptr [r14]
	xor	edx, edx
	movabs	rax, 0x7fffffffffffffff
	div	rbx
	cmp	rax, 1
	jbe	.label_204
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rax]
	test	rdi, rdi
	je	.label_209
	nop	
.label_217:
	mov	rbp, qword ptr [rdi + 0x518]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_217
	jmp	.label_209
.label_199:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rax]
	test	rdi, rdi
	je	.label_216
	nop	word ptr cs:[rax + rax]
.label_225:
	mov	rbx, qword ptr [rdi + 0x518]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_225
.label_216:
	mov	qword ptr [r14 + 0x30], 0
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, r14
	call	free
.label_224:
	xor	eax, eax
.label_208:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_218:
	mov	qword ptr [r14 + 0x40], 0
	mov	rax, qword ptr [r14 + 0x30]
	mov	qword ptr [r14 + 0x38], rax
	mov	rax,  qword ptr [word ptr [rip + head]]
	test	rax, rax
	je	.label_210
	nop	word ptr [rax + rax]
.label_219:
	mov	rcx, rax
	mov	rax, qword ptr [rcx + 0x40]
	test	rax, rax
	jne	.label_219
	mov	qword ptr [rcx + 0x40], r14
	mov	al, 1
	jmp	.label_208
.label_210:
	mov	qword ptr [word ptr [rip + head]],  r14
	mov	al, 1
	jmp	.label_208
.label_204:
	call	xalloc_die
.label_206:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	cleanup_fatal
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403eb0

	.globl handle_line_error
	.type handle_line_error, @function
handle_line_error:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r13,  qword ptr [word ptr [rip + program_name]]
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	__fprintf_chk
	test	r14, r14
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	jne	.label_226
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.60
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	call	cleanup_fatal
.label_226:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	lea	rsi, [rsp]
	mov	rdi, r14
	call	umaxtostr
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, r15
	call	__fprintf_chk
	call	cleanup_fatal
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x403f80
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f90
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fa0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_230
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_227
	cmp	dword ptr [rbp], 0x20
	jne	.label_227
.label_230:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_229
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_227:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_228
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_229:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_228:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404060

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
	je	.label_231
	test	ebx, ebx
	js	.label_231
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
	jmp	.label_232
.label_231:
	mov	eax, ebx
.label_232:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040c0

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_233
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_237
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_234
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_235
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_233
.label_235:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_236
.label_237:
	mov	rax, rbx
	jmp	.label_233
.label_234:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_236:
	xor	eax, eax
.label_233:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404150

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_238:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_238
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_239
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_240
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_240
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_241
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_241:
	mov	rbx, r14
.label_240:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_239:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_2
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404250
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
	#Procedure 0x404290
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
	#Procedure 0x4042a0
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
	#Procedure 0x4042b0
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	al, cl
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
	#Procedure 0x4042f0
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
	#Procedure 0x404310
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_242
	test	rdx, rdx
	je	.label_242
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_242:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404340
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	mov	rcx, qword ptr [rbp + 0x30]
	add	rbp, 8
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
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
	#Procedure 0x4043c0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	ebx, r9d
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0xa0], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r12b, bl
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	mov	dword ptr [rsp + 0xd8], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_340:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_279
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_282]]
.label_2459:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_2460:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_304
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_304
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_325:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_317
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_317:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_325
.label_304:
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	mov	rbx, r10
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r15d
	mov	qword ptr [rsp + 0xb8], rbp
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_258
.label_2452:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_258
.label_2455:
	mov	al, 1
.label_2453:
	mov	r12b, 1
.label_2456:
	test	r12b, 1
	mov	cl, 1
	je	.label_351
	mov	cl, al
.label_351:
	mov	al, cl
.label_2454:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_356
	test	r10, r10
	je	.label_359
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_361
.label_356:
	xor	ecx, ecx
	jmp	.label_361
.label_2457:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_360
	test	r10, r10
	je	.label_247
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_252
.label_2458:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_258
.label_359:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_361:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_258
.label_360:
	xor	eax, eax
	jmp	.label_252
.label_247:
	mov	eax, 1
.label_252:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_258:
	mov	qword ptr [rsp + 0x80], rsi
	mov	byte ptr [rsp + 0x8f], dil
	cmp	qword ptr [rsp + 0x140], 0
	setne	dl
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	and	cl, 1
	mov	byte ptr [rsp + 0xb6], cl
	sete	byte ptr [rsp + 0x6b]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd7], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	r13b
	mov	r12b, r13b
	and	r12b, bl
	mov	byte ptr [rsp + 0xc6], r12b
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	cl
	and	al, bl
	mov	byte ptr [rsp + 0x7f], al
	and	dl, bl
	mov	byte ptr [rsp + 0xc5], dl
	or	cl, r15b
	mov	byte ptr [rsp + 0xb7], cl
	and	dil, sil
	and	dil, r13b
	mov	byte ptr [rsp + 0x6a], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xd8]
	jmp	.label_280
.label_339:
	inc	rdi
.label_280:
	cmp	rbp, -1
	je	.label_330
	cmp	rdi, rbp
	jne	.label_332
	jmp	.label_335
	nop	word ptr cs:[rax + rax]
.label_330:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_309
.label_332:
	test	r12b, r12b
	je	.label_342
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_344
	cmp	rbp, -1
	jne	.label_344
	mov	eax, r14d
	mov	r14, rdi
	mov	rdi, r11
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xd8], eax
	mov	r12, r11
	call	strlen
	mov	rdi, r14
	mov	r11, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	r14d, dword ptr [rsp + 0xd8]
	mov	r9, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_344:
	cmp	rbx, rbp
	jbe	.label_365
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_251
	nop	word ptr [rax + rax]
.label_342:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_251
.label_365:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	r12, rbp
	mov	r13, r9
	mov	r15b, r8b
	mov	rbx, r10
	mov	r14, rdi
	lea	rdi, [r11 + r14]
	mov	rbp, r11
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_269
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_251
	jmp	.label_257
.label_269:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_251:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_298
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_299]]
.label_2411:
	test	rdi, rdi
	jne	.label_250
	jmp	.label_305
.label_2415:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_306
	test	rdi, rdi
	jne	.label_308
	cmp	rbp, 1
	je	.label_305
	xor	r13d, r13d
	jmp	.label_245
.label_2404:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_313
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_257
	cmp	r9d, 2
	jne	.label_318
	mov	al, r14b
	and	al, 1
	jne	.label_321
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_324
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_324:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_272
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_272:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_311
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_311:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_345
.label_2405:
	mov	bl, 0x62
	jmp	.label_293
.label_2406:
	mov	cl, 0x74
	jmp	.label_275
.label_2407:
	mov	bl, 0x76
	jmp	.label_293
.label_2408:
	mov	bl, 0x66
	jmp	.label_293
.label_2409:
	mov	cl, 0x72
	jmp	.label_275
.label_2412:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_357
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_362
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x90], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_367
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_367:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_264
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_264:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_271
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_271:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_357:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_245
.label_2413:
	cmp	r9d, 5
	je	.label_337
	cmp	r9d, 2
	jne	.label_250
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_250
	jmp	.label_289
.label_2414:
	cmp	r9d, 2
	jne	.label_291
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_294
	jmp	.label_300
.label_298:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_302
	mov	r13d, r14d
	mov	r14, r11
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	eax, 1
.label_266:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_314
	test	cl, cl
	je	.label_314
	xor	eax, eax
	jmp	.label_245
.label_306:
	test	rdi, rdi
	jne	.label_328
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_328
.label_305:
	mov	dl, 1
.label_2410:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_276
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_245
.label_313:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_339
	jmp	.label_250
.label_291:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_275
.label_294:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_274
.label_275:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_347
.label_293:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_245
	jmp	.label_277
.label_302:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_354
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_354:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_333:
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x50], rdi
	lea	rax, [rax + rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_263
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_268
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_273
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_297
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_290:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_285
	bt	rsi, rdx
	jb	.label_286
.label_285:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_290
.label_297:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_292
	xor	r13d, r13d
.label_292:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rdi, rbx
	mov	rbp, rax
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_333
	jmp	.label_266
.label_328:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_245
.label_337:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_250
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_250
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_250
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_322
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_326
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_267
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_336
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_336:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_341
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_341:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_349
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_349:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_287
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_287:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_245
.label_250:
	xor	eax, eax
	xor	r13d, r13d
.label_245:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_243
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_246
	jmp	.label_253
	nop	word ptr [rax + rax]
.label_243:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_253
.label_246:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_259
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_265
	nop	word ptr cs:[rax + rax]
.label_253:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_265:
	mov	bl, r15b
	je	.label_274
	jmp	.label_277
.label_259:
	mov	bl, r15b
.label_277:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_257
	cmp	r9d, 2
	jne	.label_281
	mov	al, r14b
	and	al, 1
	jne	.label_281
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_334
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_334:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_256
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_256:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_295
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_295:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_281:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_307
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_307:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_278
.label_308:
	xor	r13d, r13d
	jmp	.label_245
.label_314:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_316
	nop	word ptr [rax + rax]
.label_310:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_316:
	test	cl, cl
	je	.label_327
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_329
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_331
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_331:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_329
	nop	word ptr [rax + rax]
.label_327:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_257
	cmp	r9d, 2
	jne	.label_260
	mov	al, r14b
	and	al, 1
	jne	.label_260
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_350
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_350:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_353
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_353:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_366
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_366:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_260:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_255
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_255:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_262
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_262:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_352
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_352:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_329:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_274
	test	r14b, 1
	je	.label_288
	mov	bl, al
	and	bl, 1
	jne	.label_288
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_270
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_270:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_303
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_303:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_288:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_310
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_310
	nop	dword ptr [rax]
.label_274:
	test	r14b, 1
	je	.label_323
	and	al, 1
	jne	.label_323
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_320
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_320:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_301
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_301:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_323:
	mov	bl, r15b
.label_278:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_343
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_343:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_339
.label_318:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_345
.label_321:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_345:
	cmp	rcx, r10
	jae	.label_358
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_358:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_364
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_244
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_249
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_254
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_254:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_261
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_261:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_245
.label_364:
	xor	r13d, r13d
	jmp	.label_245
.label_244:
	xor	r13d, r13d
	jmp	.label_245
.label_249:
	xor	r13d, r13d
	jmp	.label_245
.label_268:
	xor	r13d, r13d
.label_263:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_266
.label_273:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_284
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_283:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_346
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_283
	xor	r13d, r13d
	jmp	.label_266
.label_284:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_266
.label_346:
	xor	r13d, r13d
	jmp	.label_266
.label_322:
	xor	r13d, r13d
	jmp	.label_245
.label_326:
	xor	r13d, r13d
	jmp	.label_245
	nop	dword ptr [rax]
.label_335:
	mov	r13, rdi
.label_309:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_312
	or	al, dl
	je	.label_315
.label_312:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	qword ptr [rsp + 0xa8], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x8f]
	mov	rsi, qword ptr [rsp + 0x80]
	je	.label_319
	or	al, dl
	jne	.label_319
	test	r8b, 1
	jne	.label_338
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_319
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_340
.label_319:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_348
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_348
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_348
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_363:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_355
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_355:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_363
.label_348:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_248
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_248
.label_276:
	mov	r9d, 2
	jmp	.label_257
.label_286:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_257
.label_315:
	mov	rbp, r13
	jmp	.label_257
.label_347:
	mov	r9d, 2
.label_257:
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x6c]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rdx, r11
	mov	rcx, rbp
.label_296:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_248:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_338:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_296
.label_362:
	mov	r9d, 2
	jmp	.label_257
.label_300:
	mov	r9d, 2
	jmp	.label_257
.label_289:
	mov	r9d, 2
	jmp	.label_257
.label_267:
	mov	r9d, 5
	jmp	.label_257
.label_279:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405550
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x34], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x38
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
	#Procedure 0x405620
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	sete	al
	movzx	ebp, al
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_368
	mov	qword ptr [rax], rbx
.label_368:
	mov	rax, r14
	add	rsp, 0x48
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
	#Procedure 0x405720
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_369
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_371:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_371
.label_369:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_372
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_373]], OFFSET FLAT:slot0
.label_372:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_370
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_370:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057c0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4057d0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_374
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_379
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_375
.label_379:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_378
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	lea	r15d, [rbx + 1]
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_377
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_377:
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
	mov	r14, qword ptr [rsp + 0x38]
.label_375:
	mov	qword ptr [rsp + 0x38], r14
	movsxd	r13, ebx
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	mov	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	lea	rdx, [rcx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, r14
	mov	r9d, r12d
	call	quotearg_buffer_restyled
	mov	r14, rax
	cmp	r15, r14
	ja	.label_380
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_376
	mov	rdi, rbx
	call	free
.label_376:
	mov	rdi, r14
	call	xmalloc
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rcx]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	call	quotearg_buffer_restyled
.label_380:
	mov	rax, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_374:
	call	abort
.label_378:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059a0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059b0
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
	#Procedure 0x4059d0
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
	#Procedure 0x4059f0
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_381
	mov	dword ptr [rsp + 8], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_381:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405a60
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_382
	mov	dword ptr [rsp + 8], esi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rax, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_382:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ad0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_383
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_383:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b40
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_384
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_384:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bb0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_385]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_386]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_387]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	al, cl
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
	#Procedure 0x405c20
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_385]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_386]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_387]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
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
	#Procedure 0x405c90

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_385]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_386]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_387]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x405cf0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_385]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_386]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_387]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x405d50

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xa8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0xa0], 0
	cmp	esi, 0xa
	je	.label_388
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	dword ptr [rsp + 0x30], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmm2, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x38], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x6c], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x5c], xmm2
	movups	xmmword ptr [rsp + 0x4c], xmm1
	movups	xmmword ptr [rsp + 0x3c], xmm0
	or	byte ptr [rsp + 0x47], 4
	lea	rcx, [rsp + 0x38]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0xa8
	ret	
.label_388:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405e00
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_385]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_386]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_387]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_389
	test	rdx, rdx
	je	.label_389
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_389:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405e70
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_385]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_386]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_387]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_390
	test	rdx, rdx
	je	.label_390
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_390:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ee0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_385]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_386]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_387]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_391
	test	rsi, rsi
	je	.label_391
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_391:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405f50
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_385]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_386]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_387]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_392
	test	rsi, rsi
	je	.label_392
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
.label_392:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405fc0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fd0
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
	#Procedure 0x405ff0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406010

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
	#Procedure 0x406030

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
	jne	.label_394
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_395
	cmp	ecx, 0x55
	jne	.label_393
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_393
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_393
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_393
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_393
	cmp	byte ptr [rax + 5], 0
	jne	.label_393
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_394
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_394
.label_395:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_393
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_393
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_393
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_393
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_393
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_393
	cmp	byte ptr [rax + 7], 0
	je	.label_396
.label_393:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_394:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_396:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_394
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_394
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406120

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_398:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_397
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_398
	cmp	rbx, 0x7ff00001
	jb	.label_397
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_398
.label_397:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406180

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	32
	#Procedure 0x406190

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_402
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_401
.label_402:
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_401:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
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
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_407
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_408]]
.label_2528:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_407:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_406
.label_2529:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_2530:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_2531:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_405
.label_2532:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_404
.label_2533:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_400
.label_2534:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_400:
	mov	qword ptr [rsp + 0x10], rdi
.label_404:
	mov	qword ptr [rsp + 8], rsi
.label_405:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_399
.label_2536:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_406:
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	r11, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_403
.label_2535:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rax
.label_403:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_399:
	call	__fprintf_chk
.label_2527:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406480
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_409:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_409
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064b0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_412:
	cmp	r10d, 0x28
	ja	.label_410
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_411
	nop	word ptr cs:[rax + rax]
.label_410:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_411:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_413
	inc	r9
	cmp	r9, 0xa
	jb	.label_412
.label_413:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406510

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_414
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_414:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x130]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	xor	r9d, r9d
	mov	r8d, dword ptr [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_417:
	cmp	r8d, 0x28
	ja	.label_415
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_416
	nop	
.label_415:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_416:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_418
	inc	r9
	cmp	r9, 0xa
	jb	.label_417
.label_418:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406610
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406690
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_419
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_420
	test	rax, rax
	je	.label_419
.label_420:
	pop	rbx
	ret	
.label_419:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_421
	test	rax, rax
	je	.label_422
.label_421:
	pop	rbx
	ret	
.label_422:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_423
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_424
	test	rbx, rbx
	jne	.label_424
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_424:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_425
	test	rax, rax
	je	.label_423
.label_425:
	pop	rbx
	ret	
.label_423:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406740

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_426
	test	rbx, rbx
	jne	.label_426
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_426:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_428
	test	rax, rax
	je	.label_427
.label_428:
	pop	rbx
	ret	
.label_427:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406770
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_433
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_434
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_429
.label_433:
	test	rcx, rcx
	jne	.label_435
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_435:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_431
.label_429:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_430
	test	rbx, rbx
	jne	.label_430
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_430:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_432
	test	rax, rax
	je	.label_434
.label_432:
	pop	rbx
	ret	
.label_434:
	call	xalloc_die
.label_431:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406810
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_436
	test	rax, rax
	je	.label_437
.label_436:
	pop	rbx
	ret	
.label_437:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406830
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_440
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_442
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_439
	call	free
	xor	eax, eax
	jmp	.label_441
.label_440:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_438
	mov	qword ptr [rsi], rbx
.label_439:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_441
	test	rax, rax
	je	.label_438
.label_441:
	pop	rbx
	ret	
.label_438:
	call	xalloc_die
.label_442:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068a0
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
	je	.label_444
	test	r14, r14
	je	.label_443
.label_444:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_443:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068e0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_445
	call	rpl_calloc
	test	rax, rax
	je	.label_445
	pop	rcx
	ret	
.label_445:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406910

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
	je	.label_446
	test	r15, r15
	je	.label_447
.label_446:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_447:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406950
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
	je	.label_449
	test	r15, r15
	je	.label_448
.label_449:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_448:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4069a0

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
	je	.label_452
	cmp	eax, 1
	je	.label_453
	cmp	eax, 3
	jne	.label_457
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_454
.label_452:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jl	.label_450
	cmp	rbx, r12
	jle	.label_456
.label_450:
	cmp	rbx, 0x40000000
	jl	.label_455
.label_453:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_454
.label_457:
	call	__errno_location
.label_454:
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
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_456:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_455:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_451
	mov	dword ptr [rax], 0x4b
	jmp	.label_454
.label_451:
	mov	dword ptr [rax], 0x22
	jmp	.label_454
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a80

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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ab0

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	ebp, edx
	mov	r12, rdi
	cmp	ebp, 0x25
	jae	.label_469
	test	rsi, rsi
	lea	rbx, [rsp + 0x20]
	cmovne	rbx, rsi
	mov	qword ptr [rsp + 0x10], rbx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, rbx
	mov	edx, ebp
	call	__strtol_internal
	mov	rbp, rax
	mov	rcx, qword ptr [rbx]
	cmp	rcx, r12
	je	.label_461
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_465
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_464
	mov	r13d, 1
.label_465:
	test	r14, r14
	je	.label_471
	mov	r12d, r13d
	jmp	.label_475
.label_461:
	mov	r13d, 4
	test	r14, r14
	je	.label_464
	mov	r15, rcx
	movsx	esi, byte ptr [r12]
	test	esi, esi
	je	.label_464
	mov	rdi, r14
	call	strchr
	xor	r12d, r12d
	mov	ebp, 1
	test	rax, rax
	mov	rcx, r15
	je	.label_464
.label_475:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_492
	mov	qword ptr [rsp + 8], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_472
	mov	r15d, 1
	mov	r8d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_470
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_470
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	r8d, 0x400
	test	rax, rax
	je	.label_470
	mov	rax, qword ptr [rsp + 8]
	movsx	eax, byte ptr [rax + 1]
	mov	r15d, 1
	mov	r8d, 0x400
	cmp	eax, 0x42
	je	.label_458
	cmp	eax, 0x44
	je	.label_458
	cmp	eax, 0x69
	jne	.label_470
	mov	rax, qword ptr [rsp + 8]
	movzx	eax, byte ptr [rax + 2]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_463
	mov	r15d, 1
.label_463:
	mov	r8d, 0x400
	jmp	.label_470
.label_471:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	jmp	.label_464
.label_492:
	mov	r13, rbp
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_477
.label_458:
	mov	r15d, 2
	mov	r8d, 0x3e8
.label_470:
	movabs	r9, 0x7fffffffffffffff
	cmp	r13d, 0x59
	jg	.label_479
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_485
	jmp	qword ptr [word ptr [+ (rax * 8) + label_488]]
.label_2392:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_483
	mov	r13, rbp
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_495
.label_479:
	cmp	r13d, 0x73
	jg	.label_504
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_502
	xor	ebx, ebx
	mov	r13, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_506]]
.label_2497:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_483
	mov	r13, rbp
	shl	r13, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_495
.label_485:
	cmp	r13d, 0x54
	je	.label_487
	cmp	r13d, 0x59
	jne	.label_472
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_516
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_516:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_476
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_476:
	or	edi, ebx
	cmp	rsi, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_482
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_482:
	or	ebx, edi
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_500
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_500:
	or	r11d, ebx
	cmp	rsi, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_507
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_507:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_496
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_496:
	or	r14d, ebx
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_494
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_494:
	or	edi, r14d
	cmp	rcx, r10
	jl	.label_478
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_478:
	or	ebx, edi
	jmp	.label_462
.label_504:
	cmp	r13d, 0x74
	je	.label_487
	cmp	r13d, 0x77
	jne	.label_472
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_493
.label_483:
	inc	r9
	mov	ebx, 1
	mov	r13, r9
	jmp	.label_462
.label_2394:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	r10d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_508
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_508:
	cmp	rcx, rdi
	mov	rsi, r13
	jl	.label_512
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r10d, al
.label_512:
	or	r10d, ebx
	cmp	rsi, rdi
	mov	ebx, 1
	jl	.label_460
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_460:
	or	ebx, r10d
	jmp	.label_462
.label_2395:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	cmp	rbp, rax
	mov	ebx, 1
	jl	.label_462
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	cmp	rax, rbp
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
	jmp	.label_462
.label_2396:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ebx, 1
	mov	rcx, r13
	mov	r10d, 1
	jl	.label_490
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	r10d, al
.label_490:
	cmp	rcx, rdi
	jl	.label_505
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_505:
	or	ebx, r10d
	jmp	.label_462
.label_487:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_510
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_510:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_467
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_467:
	or	r11d, edi
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_486
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_486:
	or	edi, r11d
	cmp	rcx, r10
	jl	.label_489
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_489:
	or	ebx, edi
	jmp	.label_462
.label_502:
	cmp	r13d, 0x5a
	jne	.label_472
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_501
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_501:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_511
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_511:
	or	edi, ebx
	cmp	rsi, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_459
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_459:
	or	ebx, edi
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_484
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_484:
	or	r11d, ebx
	cmp	rsi, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_481
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_481:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_498
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_498:
	or	edi, ebx
	cmp	rsi, r10
	mov	ebx, 1
	jl	.label_499
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_499:
	or	ebx, edi
	jmp	.label_462
.label_472:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	or	r12d, 2
	mov	r13d, r12d
	jmp	.label_464
.label_2393:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_515
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_515:
	cmp	rcx, r10
	mov	rbx, r13
	jl	.label_474
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rcx
	imul	rbx, r8
	cmp	rax, rcx
	setl	al
	cmovl	rbx, r9
	movzx	r14d, al
.label_474:
	or	r14d, edi
	cmp	rbx, r10
	mov	r11d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_480
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	ecx, al
.label_480:
	or	ecx, r14d
	cmp	rsi, r10
	mov	rdi, r13
	jl	.label_497
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	imul	rdi, r8
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r9
	movzx	r11d, al
.label_497:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ebx, 1
	mov	rsi, r13
	mov	r14d, 1
	jl	.label_473
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_473:
	or	r14d, r11d
	cmp	rsi, r10
	jl	.label_514
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_514:
	or	ebx, r14d
	jmp	.label_462
.label_2397:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_466
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_466:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_513
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_513:
	or	r14d, edi
	cmp	rsi, r10
	mov	r11d, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_491
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rsi
	imul	rbx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rbx, r9
	movzx	edi, al
.label_491:
	or	edi, r14d
	cmp	rbx, r10
	mov	rsi, r13
	jl	.label_503
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_503:
	or	r11d, edi
	cmp	rsi, r10
	mov	ebx, 1
	jl	.label_509
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_509:
	or	ebx, r11d
	jmp	.label_462
.label_493:
	lea	r13, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_495:
	cmp	rbp, rax
	setg	al
	cmovg	r13, r9
	movzx	ebx, al
.label_462:
	or	ebx, r12d
	mov	rdx, qword ptr [rsp + 8]
	lea	rax, [rdx + r15]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	cmp	byte ptr [rdx + r15], 0
	je	.label_468
	or	ebx, 2
.label_468:
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12d, ebx
.label_477:
	mov	qword ptr [rax], r13
	mov	r13d, r12d
.label_464:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_469:
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x407470

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
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_540
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_533:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_533
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_517
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rbp, rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	rcx, rbp
	mov	rbp, rax
	mov	r12, qword ptr [rcx]
	cmp	r12, rbx
	je	.label_518
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_523
	cmp	eax, 0x22
	jne	.label_517
	mov	dword ptr [rsp + 4], 1
.label_523:
	test	r14, r14
	jne	.label_525
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_517
.label_518:
	test	r14, r14
	je	.label_517
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_517
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_517
.label_525:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_542
	mov	r15, rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_520
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_522
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_522
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_522
	movsx	eax, byte ptr [r12 + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_538
	cmp	eax, 0x44
	je	.label_538
	cmp	eax, 0x69
	jne	.label_522
	movzx	eax, byte ptr [r12 + 2]
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_543
	mov	ecx, 1
.label_543:
	mov	esi, 0x400
	jmp	.label_522
.label_542:
	mov	rax, qword ptr [rsp + 8]
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_524
.label_538:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_522:
	cmp	r13d, 0x59
	jg	.label_531
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_532
	jmp	qword ptr [word ptr [+ (rax * 8) + label_534]]
.label_2473:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_535
.label_531:
	cmp	r13d, 0x73
	jg	.label_537
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_539
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_541]]
.label_2483:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_535:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_521
.label_532:
	cmp	r13d, 0x54
	je	.label_527
	cmp	r13d, 0x59
	jne	.label_520
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	sbb	r13b, r13b
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
	or	dl, r13b
	or	dl, bpl
	jmp	.label_528
.label_537:
	cmp	r13d, 0x74
	je	.label_527
	cmp	r13d, 0x77
	jne	.label_520
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rdx, -1
	cmovns	rdx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_521
.label_2475:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	jmp	.label_529
.label_2476:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_519
.label_2477:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_526
.label_527:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	jmp	.label_536
.label_539:
	cmp	r13d, 0x5a
	jne	.label_520
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
.label_528:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_519
.label_520:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	mov	r13d, eax
	jmp	.label_517
.label_2474:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	jmp	.label_526
.label_2478:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
.label_536:
	or	dl, r10b
.label_529:
	or	dl, bl
.label_526:
	and	dl, 1
	movzx	eax, dl
.label_519:
	mov	rbp, rsi
.label_521:
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	cmp	byte ptr [r12 + rcx], 0
	je	.label_530
	or	eax, 2
.label_530:
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 8]
.label_524:
	mov	qword ptr [rax], rbp
.label_517:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_540:
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x407b20

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_544
	test	rsi, rsi
	mov	ecx, 1
	je	.label_545
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_545
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_544:
	mov	ecx, 1
.label_545:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b70

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_546
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_548
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_546
.label_548:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_546
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_547
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_547:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_546:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x407bf0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_567
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_567:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_553
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_568
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_550
	test	esi, esi
	jne	.label_553
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_555
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_557
.label_553:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_559
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_550
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_563
.label_568:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_562
.label_550:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_566
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_554
.label_566:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_554:
	mov	edx, dword ptr [rax]
.label_558:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_562:
	mov	ebp, eax
.label_556:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_563:
	cmp	eax, 6
	jne	.label_559
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_560
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_549
.label_559:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_552
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_569
.label_555:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_557:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_558
.label_560:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_549:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_561
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_565
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_565
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_556
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_564
.label_565:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_556
.label_552:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_569:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_562
.label_561:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_564:
	test	al, al
	je	.label_556
	test	ebp, ebp
	js	.label_556
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_551
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_556
.label_551:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_556
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ed0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_570
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_570
	test	byte ptr [rbx + 1], 1
	je	.label_570
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_570:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407f10

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
	jne	.label_571
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_571
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_572
.label_571:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_572:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_573
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_573:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407f80

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
	je	.label_574
	cmp	r15, -2
	jb	.label_574
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_574
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_574:
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
	#Procedure 0x407fe0

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	and	cl, 0x10
	and	al, 0x6f
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_575
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_575:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408040

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 0xcc], 0
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [r15 + 0x18], rcx
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	r12, qword ptr [r15]
	cmp	qword ptr [r15 + 8], 0xe7
	jbe	.label_590
.label_716:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	mov	dword ptr [r12 + 0x80], 0xf
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_606
	lea	rdi, [r13 + 1]
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [r12 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_636:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_636
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	dec	rbx
	mov	qword ptr [r12 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x75
	jne	.label_649
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	jne	.label_649
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x66
	jne	.label_649
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	sete	cl
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_649
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_649
	or	byte ptr [r12 + 0xb0], 4
.label_649:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_660
	test	al, 4
	jne	.label_672
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	xor	ebx, ebx
	test	rax, rax
	je	.label_606
	xor	ebp, ebp
	nop	
.label_708:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_679
	mov	edx, 1
	mov	cl, bl
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_679:
	cmp	ebx, 0x7f
	ja	.label_683
	cmp	ebx, eax
	je	.label_683
	or	byte ptr [r12 + 0xb0], 8
.label_683:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_708
	mov	qword ptr [rsp + 0x28], r15
	xor	ebx, ebx
.label_694:
	lea	r15, [rbp + 0x40]
	mov	edi, r15d
	call	btowc
	cmp	eax, -1
	je	.label_680
	mov	edx, 1
	mov	cl, bpl
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_680:
	cmp	r15d, eax
	je	.label_691
	or	byte ptr [r12 + 0xb0], 8
.label_691:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_694
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_705:
	lea	edi, [rbx + 0x80]
	call	btowc
	cmp	eax, -1
	je	.label_704
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_704:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_705
	nop	dword ptr [rax]
.label_711:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_709
	mov	eax, 1
	mov	cl, bpl
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_709:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_711
	jmp	.label_660
.label_672:
	mov	qword ptr [word ptr [r12 + 120]], OFFSET FLAT:utf8_sb_map
.label_660:
	cmp	qword ptr [r12], 0
	je	.label_606
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_606
	mov	dword ptr [rsp + 0xcc], 0
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x18]
	and	ecx, 0x400000
	mov	qword ptr [rsp + 0x10], rcx
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	movdqa	xmmword ptr [rsp + 0x60], xmm0
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	movdqa	xmmword ptr [rsp + 0x40], xmm0
	movdqa	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0xc0], 0
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x88], r13
	mov	qword ptr [rsp + 0x80], r13
	mov	qword ptr [rsp + 0xa8], rbx
	mov	rax, rcx
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xb8], al
	mov	rax, rcx
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xbb]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	dword ptr [rsp + 0xc0], edx
	mov	al, byte ptr [r12 + 0xb0]
	shr	al, 2
	and	al, 1
	mov	byte ptr [rsp + 0xb9], al
	mov	rcx, qword ptr [r12 + 0xb0]
	mov	al, cl
	shr	al, 3
	and	al, 1
	mov	byte ptr [rsp + 0xba], al
	mov	qword ptr [rsp + 0x98], r13
	mov	qword ptr [rsp + 0x90], r13
	xor	eax, eax
	test	r13, r13
	jle	.label_714
	cmp	edx, 2
	jl	.label_597
	mov	qword ptr [rsp + 0x28], r15
	mov	r15d, 0xc
	mov	rax, qword ptr [rsp + 0x20]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_598
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_598
	mov	qword ptr [rsp + 0x40], rax
	mov	r15, qword ptr [rsp + 0x28]
.label_597:
	xor	eax, eax
	test	bpl, bpl
	je	.label_610
	mov	qword ptr [rsp + 0x28], r15
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x20]
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_598
	mov	qword ptr [rsp + 0x38], rax
	mov	r15, qword ptr [rsp + 0x28]
.label_610:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x70], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	jmp	.label_658
.label_606:
	mov	dword ptr [rsp + 0xcc], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_613
.label_714:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdx
.label_658:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x38], rax
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_623
	cmp	ecx, 2
	jl	.label_627
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rsp + 0x30]
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_598
	lea	r14, [rsp + 0x30]
.label_671:
	cmp	qword ptr [rsp + 0x68], r13
	jge	.label_634
	mov	rbp, qword ptr [rsp + 0x70]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x60]
	cmp	rbp, rax
	jg	.label_634
	lea	rbx, [rbp + rbp]
	cmp	dword ptr [rsp + 0xc0], 2
	jl	.label_641
	mov	r15d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	rbx, rax
	ja	.label_598
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_598
	mov	qword ptr [rsp + 0x40], rax
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_641
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_598
	mov	qword ptr [rsp + 0x48], rax
.label_641:
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_717
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_598
	mov	qword ptr [rsp + 0x38], rax
.label_717:
	mov	qword ptr [rsp + 0x70], rbx
	mov	rdi, r14
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	je	.label_671
.label_598:
	mov	dword ptr [rsp + 0xcc], r15d
	jmp	.label_621
.label_623:
	cmp	ecx, 2
	jl	.label_677
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rsp + 0x30]
	call	build_wcs_buffer
	jmp	.label_634
.label_627:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_678
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_682
	nop	word ptr cs:[rax + rax]
.label_602:
	mov	r14, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0xa8]
	inc	rbp
.label_682:
	add	r14, rax
	mov	al, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_685
.label_696:
	movzx	ebx, al
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_687
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_687:
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_602
	jmp	.label_695
.label_685:
	mov	al, byte ptr [rbx + rcx]
	jmp	.label_696
.label_677:
	test	rbx, rbx
	je	.label_700
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_701
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 2
	jl	.label_701
	nop	dword ptr [rax + rax]
.label_706:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	add	rax, qword ptr [rsp + 0x58]
	movzx	eax, byte ptr [rcx + rax]
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	al, byte ptr [rsi + rax]
	mov	byte ptr [rdx + rcx], al
	inc	rcx
	cmp	rcx, rdi
	jl	.label_706
	mov	rcx, rdi
.label_701:
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x68], rcx
	jmp	.label_634
.label_590:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_613
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_716
.label_695:
	mov	rax, r13
.label_678:
	mov	qword ptr [rsp + 0x28], r15
	jmp	.label_617
.label_700:
	mov	qword ptr [rsp + 0x28], r15
	mov	rax, qword ptr [rsp + 0x20]
.label_617:
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rax
.label_634:
	mov	dword ptr [rsp + 0xcc], 0
	mov	r15, qword ptr [rsp + 0x28]
	mov	qword ptr [r15 + 0x30], 0
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0xd0]
	lea	r13, [rsp + 0x30]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	add	qword ptr [rsp + 0x78], rax
	lea	r9, [rsp + 0xcc]
	xor	r8d, r8d
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	call	parse_reg_exp
	mov	r14, rax
	test	r14, r14
	jne	.label_576
	mov	eax, dword ptr [rsp + 0xcc]
	test	eax, eax
	jne	.label_577
.label_576:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_583
	mov	rax, qword ptr [rbx + 0x70]
.label_619:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 2
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_618:
	test	r14, r14
	mov	rcx, rbp
	je	.label_600
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_601
	mov	rax, qword ptr [rbx + 0x70]
.label_632:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	movsxd	rdx, ecx
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	qword ptr [rax + rdx + 8], 0
	mov	qword ptr [rax + rdx + 0x10], r14
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	mov	qword ptr [rax + rdx + 0x40], -1
	mov	qword ptr [r14], rcx
	test	rbp, rbp
	je	.label_616
	mov	qword ptr [rbp], rcx
.label_600:
	test	rbp, rbp
	je	.label_616
	test	rcx, rcx
	je	.label_616
	mov	qword ptr [r12 + 0x68], rcx
	mov	r15, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x18], rax
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x28], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x30], rax
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_629
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_727
	test	rax, rax
	je	.label_631
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	je	.label_633
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax + 0x30]
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [r15 + 0xe0], rax
	test	rax, rax
	je	.label_640
	test	rbx, rbx
	je	.label_643
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	cmp	rcx, 1
	mov	edx, 1
	cmova	rdx, rcx
	xor	edi, edi
	cmp	rdx, 4
	jb	.label_644
	xor	edi, edi
	mov	rsi, rdx
	and	rsi, 0xfffffffffffffffc
	je	.label_644
	cmp	rcx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	add	rbp, -4
	mov	rbx, rbp
	shr	rbx, 2
	xor	edi, edi
	bt	rbp, 2
	jb	.label_698
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_670]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edi, 4
.label_698:
	test	rbx, rbx
	je	.label_667
	mov	ebp, 1
	movq	xmm0, rbp
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_670]]
.label_676:
	movq	xmm2, rdi
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	lea	rbp, [rdi + 4]
	movq	xmm2, rbp
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdi*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x30], xmm2
	add	rdi, 8
	cmp	rdi, rsi
	jne	.label_676
.label_667:
	cmp	rdx, rsi
	mov	rdi, rsi
	je	.label_643
	nop	dword ptr [rax + rax]
.label_644:
	mov	qword ptr [rax + rdi*8], rdi
	inc	rdi
	cmp	rdi, rcx
	jb	.label_644
.label_643:
	mov	rbx, qword ptr [r15 + 0x68]
	mov	rdi, r15
	mov	rsi, rbx
	call	optimize_subexps
	test	eax, eax
	jne	.label_689
.label_702:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_690
	nop	dword ptr [rax]
.label_697:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_692
	test	rbp, rbp
	jne	.label_690
.label_692:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_697
	jmp	.label_689
.label_690:
	mov	rdi, r15
	mov	rsi, rbp
	call	optimize_subexps
	test	eax, eax
	mov	rbx, rbp
	je	.label_702
.label_689:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax + 0x30]
	xor	ecx, ecx
	test	rax, rax
	je	.label_645
	mov	rdx, qword ptr [r15 + 0xe0]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_707:
	cmp	rcx, qword ptr [rdx + rcx*8]
	jne	.label_645
	inc	rcx
	cmp	rcx, rax
	jb	.label_707
.label_645:
	lea	r14, [r15 + 0x68]
	cmp	rcx, rax
	jne	.label_595
	mov	rdi, qword ptr [r15 + 0xe0]
	call	free
	mov	qword ptr [r15 + 0xe0], 0
	jmp	.label_595
.label_629:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_621
.label_727:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_621
.label_640:
	lea	r14, [r15 + 0x68]
.label_595:
	mov	rax, qword ptr [r14]
	lea	rbx, [rsp + 0xd0]
	nop	word ptr cs:[rax + rax]
.label_589:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_589
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	mov	edx, 0
	jne	.label_589
	jmp	.label_721
	nop	dword ptr [rax]
.label_586:
	mov	rdx, qword ptr [rcx + 8]
	mov	rbp, rcx
.label_721:
	mov	dword ptr [rsp + 0xd0], 0
	test	rdx, rdx
	je	.label_725
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_725
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	lower_subexp
	mov	qword ptr [rbp + 8], rax
	test	rax, rax
	je	.label_725
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax]
.label_725:
	mov	rdx, qword ptr [rbp + 0x10]
	test	rdx, rdx
	je	.label_729
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_729
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	lower_subexp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_729
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax + rax]
.label_729:
	mov	eax, dword ptr [rsp + 0xd0]
	test	eax, eax
	jne	.label_578
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_584
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	je	.label_586
	test	rax, rax
	je	.label_586
	jmp	.label_589
.label_584:
	mov	rax, qword ptr [r14]
	mov	ebx, 0xfffc00ff
.label_592:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_592
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_592
.label_615:
	movzx	eax, byte ptr [rbp + 0x30]
	cmp	eax, 0x10
	jne	.label_596
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_599
.label_596:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r15
	call	re_dfa_add_node
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	je	.label_604
	movzx	ecx, byte ptr [rbp + 0x30]
	cmp	ecx, 0xc
	jne	.label_599
	mov	ecx, dword ptr [rbp + 0x28]
	mov	rdx, qword ptr [r15]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_599:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_612
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rbp, rcx
	je	.label_615
	test	rax, rax
	mov	rbp, rcx
	je	.label_615
	jmp	.label_592
.label_583:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_618
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_619
.label_612:
	mov	rbx, qword ptr [r14]
	movzx	eax, byte ptr [rbx + 0x30]
	cmp	eax, 0x10
	je	.label_622
	cmp	eax, 0xb
	jne	.label_625
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rax + 0x20], rbx
	jmp	.label_626
.label_604:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_621
.label_601:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_616
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_632
.label_616:
	mov	dword ptr [rsp + 0xcc], 0xc
.label_577:
	mov	qword ptr [r12 + 0x68], 0
	jmp	.label_639
.label_622:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_642
.label_625:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_646
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_646:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	je	.label_626
.label_642:
	mov	rdx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_626:
	mov	rdx, rbx
	jmp	.label_609
.label_665:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_609:
	xor	esi, esi
	test	rax, rax
	mov	rcx, rax
	jne	.label_656
	nop	
.label_661:
	mov	rax, rsi
	mov	rsi, rdx
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	rcx, rax
	je	.label_724
	test	rcx, rcx
	jne	.label_656
.label_724:
	mov	rdx, qword ptr [rsi]
	test	rdx, rdx
	jne	.label_661
	jmp	.label_664
.label_656:
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x10
	je	.label_665
	cmp	eax, 0xb
	jne	.label_669
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_609
.label_669:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_674
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_674:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_609
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_609
.label_664:
	mov	rdi, r15
	mov	rsi, rbx
	call	link_nfa_nodes
	test	eax, eax
	jne	.label_578
.label_688:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_681
	nop	word ptr cs:[rax + rax]
.label_684:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_718
	test	rbp, rbp
	jne	.label_681
.label_718:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_684
	jmp	.label_693
.label_681:
	mov	rdi, r15
	mov	rsi, rbp
	call	link_nfa_nodes
	test	eax, eax
	mov	rbx, rbp
	je	.label_688
	jmp	.label_578
.label_693:
	xor	eax, eax
	lea	r14, [rsp + 0xd0]
	xor	r13d, r13d
	jmp	.label_650
	nop	word ptr cs:[rax + rax]
.label_686:
	inc	rbp
	mov	rax, rbp
.label_650:
	cmp	rax, qword ptr [r15 + 0x10]
	jne	.label_699
	xor	ebp, ebp
	test	r13b, 1
	mov	r13d, 0
	jne	.label_624
	jmp	.label_703
.label_699:
	mov	rbp, rax
.label_624:
	mov	rax, qword ptr [r15 + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_686
	mov	ecx, 1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_578
	mov	rax, qword ptr [r15 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_686
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	mov	r13b, 1
	jmp	.label_686
.label_578:
	mov	dword ptr [rsp + 0xcc], eax
.label_621:
	mov	r15, qword ptr [rsp + 0x28]
.label_639:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_712
.label_713:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_713
.label_712:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_723
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
.label_723:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
.label_654:
	mov	eax, dword ptr [rsp + 0xcc]
.label_613:
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_703:
	mov	rcx, qword ptr [rsp + 0x28]
	test	byte ptr [rcx + 0x38], 0x10
	jne	.label_728
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rcx + 0x30], 0
	je	.label_728
	test	byte ptr [r15 + 0xb0], 1
	jne	.label_731
.label_728:
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_585
.label_731:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x38], rax
	test	rax, rax
	je	.label_581
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_585
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r15 + 0x10]
	mov	ecx, 1
	mov	edx, 0x18
	cmp	rax, 1
	jbe	.label_587
.label_594:
	mov	rax, qword ptr [r15 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r15 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_594
.label_587:
	test	rax, rax
	je	.label_585
	mov	r8, qword ptr [r15 + 0x30]
	xor	r10d, r10d
.label_628:
	mov	qword ptr [rsp + 0x18], r10
	lea	r9, [r10 + r10*2]
	mov	qword ptr [rsp + 0x20], r9
	cmp	qword ptr [r8 + r9*8 + 8], 0
	jle	.label_603
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	qword ptr [rsp + 8], rdi
	xor	ebx, ebx
.label_666:
	mov	r13, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [rdi + rbx*8]
	lea	rbp, [rax + rax*2]
	mov	rax, qword ptr [r13 + rbp*8]
	lea	r14, [r13 + rbp*8 + 8]
	mov	rdx, qword ptr [r13 + rbp*8 + 8]
	cmp	rax, rdx
	jne	.label_611
	lea	rcx, [r13 + rbp*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_719
	lea	rcx, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r14]
	mov	r8, qword ptr [r15 + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_655
.label_611:
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_655:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r14], rsi
	mov	qword ptr [rax + rdx*8], r10
	inc	rbx
	cmp	rbx, qword ptr [r8 + r9*8 + 8]
	jl	.label_666
	mov	rax, qword ptr [r15 + 0x10]
.label_603:
	inc	r10
	cmp	r10, rax
	jb	.label_628
.label_585:
	mov	dword ptr [rsp + 0xcc], 0
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_630
	mov	al, byte ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 4
	je	.label_630
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rcx + 0x28], 0
	jne	.label_630
	mov	rdx, qword ptr [r12 + 0x10]
	test	rdx, rdx
	je	.label_638
	mov	rbx, qword ptr [r12]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbx
	xor	r10d, r10d
	xor	ebp, ebp
.label_662:
	movzx	esi, byte ptr [rcx + 8]
	dec	esi
	cmp	esi, 0xb
	ja	.label_647
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_651]]
.label_2444:
	mov	sil, 1
	cmp	byte ptr [rcx], 0
	js	.label_652
	mov	sil, r10b
.label_652:
	mov	r10b, sil
	jmp	.label_653
.label_2445:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_630
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_653
	jmp	.label_630
.label_2446:
	mov	r9b, 1
	jmp	.label_653
.label_2447:
	mov	esi, dword ptr [rcx]
	lea	edi, [rsi - 0x10]
	cmp	edi, 0x30
	ja	.label_657
	bt	r8, rdi
	jb	.label_653
.label_657:
	cmp	esi, 0x80
	jne	.label_630
.label_653:
	inc	rbp
	add	rcx, 0x10
	cmp	rbp, rdx
	jb	.label_662
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	xor	edx, edx
	mov	esi, 8
	test	r10b, 1
	je	.label_668
	jmp	.label_675
.label_631:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_621
.label_633:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_621
.label_673:
	add	rsi, 0x10
	mov	rbx, qword ptr [r12]
.label_675:
	mov	eax, dword ptr [rbx + rsi]
	movzx	edi, al
	cmp	edi, 5
	je	.label_663
	cmp	edi, 1
	jne	.label_580
	cmp	byte ptr [rbx + rsi - 8], 0
	jns	.label_580
	and	eax, 0xffdfffff
	jmp	.label_637
.label_663:
	and	eax, 0xffffff00
	or	eax, 7
.label_637:
	mov	dword ptr [rbx + rsi], eax
.label_580:
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jb	.label_673
	mov	al, byte ptr [r12 + 0xb0]
	jmp	.label_668
.label_719:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_621
.label_638:
	xor	ecx, ecx
.label_668:
	mov	dword ptr [r12 + 0xb4], 1
	cmp	qword ptr [r12 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r12 + 0xb0], al
.label_630:
	mov	rax, qword ptr [r12 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r12 + 0x90], rax
	mov	rbx, qword ptr [r12 + 0x30]
	lea	r13, [rax + rax*2]
	mov	r15, qword ptr [rbx + r13*8 + 8]
	mov	qword ptr [rsp + 0xd8], r15
	mov	r14, qword ptr [rbx + r13*8 + 8]
	test	r14, r14
	jle	.label_614
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [r15*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0xe0], rbp
	test	rbp, rbp
	je	.label_710
	mov	rsi, qword ptr [rbx + r13*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0xf4], 0
	test	r15, r15
	jle	.label_593
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_593
	xor	eax, eax
	lea	r14, [rsp + 0xd0]
	jmp	.label_715
.label_591:
	mov	rbp, qword ptr [rsp + 0xe0]
.label_715:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	movzx	ecx, byte ptr [rdx + rsi + 8]
	cmp	ecx, 4
	jne	.label_582
	test	r15, r15
	mov	edi, 0
	jle	.label_722
	add	rsi, rdx
	xor	edi, edi
.label_659:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	movzx	ebx, byte ptr [rdx + rcx + 8]
	cmp	ebx, 9
	jne	.label_726
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_722
.label_726:
	inc	rdi
	cmp	rdi, r15
	jl	.label_659
.label_722:
	cmp	rdi, r15
	je	.label_582
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r15, r15
	jle	.label_579
	mov	rsi, r15
	dec	rsi
	mov	edx, 0
	je	.label_730
.label_732:
	lea	rdi, [rdx + rsi]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rdx, rbx
	cmovge	rsi, rdi
	cmp	rdx, rsi
	jb	.label_732
.label_730:
	cmp	rdx, -1
	je	.label_579
	cmp	qword ptr [rbp + rdx*8], rcx
	je	.label_582
.label_579:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_588
	mov	r15, qword ptr [rsp + 0xd8]
	xor	eax, eax
.label_582:
	inc	rax
	cmp	rax, r15
	jl	.label_591
	jmp	.label_593
.label_614:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	mov	qword ptr [rsp + 0xe0], 0
	mov	dword ptr [rsp + 0xf4], 0
.label_593:
	lea	rdi, [rsp + 0xf4]
	lea	rdx, [rsp + 0xd0]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_605
	cmp	byte ptr [rax + 0x68], 0
	js	.label_607
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_608
.label_607:
	lea	rbx, [rsp + 0xf4]
	lea	rbp, [rsp + 0xd0]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	je	.label_620
	test	rax, rax
	je	.label_620
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_620
.label_608:
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	xor	eax, eax
.label_588:
	mov	dword ptr [rsp + 0xcc], eax
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [r14]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_720
.label_635:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_635
.label_720:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_648
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
.label_648:
	xor	eax, eax
	cmp	dword ptr [rsp + 0xcc], 0
	je	.label_613
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	jmp	.label_654
.label_620:
	mov	eax, dword ptr [rsp + 0xf4]
	jmp	.label_588
.label_581:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_621
.label_605:
	mov	eax, dword ptr [rsp + 0xf4]
	jmp	.label_588
.label_710:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	mov	dword ptr [rsp + 0xf4], 0xc
	mov	eax, 0xc
	jmp	.label_588
.label_647:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409640
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409650

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xf0], xmm0
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	rax, rsi
	je	.label_734
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_734:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_733
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_733:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_735
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_735:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409720

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x148
	mov	r15, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	r13, rdi
	mov	qword ptr [rsp + 0x10], r13
	mov	rax, qword ptr [r13]
	cmp	dword ptr [rax + 0xb4], 1
	jne	.label_767
	mov	qword ptr [rsp + 0x28], rax
	mov	r14b, byte ptr [r13 + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_752
.label_767:
	mov	qword ptr [rsp + 0x28], rax
	xor	r14d, r14d
.label_752:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_736
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_757:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, rbp
	shl	r12, 4
	lea	rcx, [rax + r12]
	movzx	ebx, byte ptr [rax + r12 + 8]
	cmp	ebx, 1
	je	.label_756
	mov	qword ptr [rsp + 0x20], rdx
	cmp	ebx, 6
	je	.label_762
	cmp	ebx, 3
	jne	.label_765
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_738:
	bt	rbp, rbx
	jae	.label_768
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_768
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x180
	jae	.label_770
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_772
.label_770:
	mov	eax, ebx
.label_772:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_768:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_738
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 8]
	xor	ebx, ebx
	nop	
.label_754:
	bt	rbp, rbx
	jae	.label_742
	mov	byte ptr [r15 + rbx + 0x40], 1
	test	r14b, r14b
	je	.label_742
	lea	eax, [rbx + 0xc0]
	cmp	eax, 0x180
	jae	.label_745
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x100]
	jmp	.label_748
.label_745:
	lea	rax, [rbx + 0x40]
.label_748:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_742:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_754
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_751:
	bt	rbp, rbx
	jae	.label_737
	mov	byte ptr [r15 + rbx + 0x80], 1
	test	r14b, r14b
	je	.label_737
	lea	eax, [rbx + 0x100]
	cmp	eax, 0x180
	jae	.label_759
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x200]
	jmp	.label_771
.label_759:
	lea	rax, [rbx + 0x80]
.label_771:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_737:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_751
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x18]
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_758:
	bt	rbp, rbx
	jae	.label_740
	mov	byte ptr [r15 + rbx + 0xc0], 1
	test	r14b, r14b
	je	.label_740
	lea	eax, [rbx + 0x140]
	cmp	eax, 0x180
	jae	.label_773
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x300]
	jmp	.label_739
.label_773:
	lea	rax, [rbx + 0xc0]
.label_739:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_740:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_758
	jmp	.label_743
	nop	
.label_762:
	mov	r12, qword ptr [rcx]
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_744
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_749
	test	byte ptr [r12 + 0x20], 1
	jne	.label_749
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_744
.label_749:
	mov	byte ptr [rsp + 0x138], 0
	lea	rbx, [rsp + 0x30]
	lea	rbp, [rsp + 0x138]
	nop	word ptr cs:[rax + rax]
.label_763:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp + 0x138]
	cmp	rax, -2
	jne	.label_760
	mov	byte ptr [r15 + rcx], 1
.label_760:
	inc	cl
	mov	byte ptr [rsp + 0x138], cl
	jne	.label_763
	jmp	.label_743
	nop	
.label_756:
	mov	qword ptr [rsp + 0x20], rdx
	movzx	ebx, byte ptr [rcx]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_766
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_769
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_769:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_766:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_743
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_743
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rcx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	mov	rdx, rcx
	inc	rbp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	jae	.label_741
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	
.label_753:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_741
	mov	al, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_753
.label_741:
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x138], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x144]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp + 0x138]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_761
	mov	edi, dword ptr [rsp + 0x144]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_761
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_761:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_743
	nop	dword ptr [rax]
.label_765:
	cmp	ebx, 2
	je	.label_747
	mov	eax, ebx
	or	eax, 2
	cmp	eax, 7
	jne	.label_743
	jmp	.label_747
.label_744:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_743
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_764:
	mov	qword ptr [rsp + 0x138], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x138]
	call	wcrtomb
	cmp	rax, -1
	je	.label_746
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_746
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_750
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_750:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_746:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_755
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_755
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp + 0x138]
	call	wcrtomb
	cmp	rax, -1
	je	.label_755
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	
.label_755:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_764
	nop	
.label_743:
	mov	rdx, qword ptr [rsp + 0x20]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x18]
	cmp	rdx, qword ptr [rsi + 0x10]
	jl	.label_757
.label_736:
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_747:
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, r15
	call	memset
	cmp	ebx, 2
	jne	.label_736
	or	byte ptr [r13 + 0x38], 1
	jmp	.label_736
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c10
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_776
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_774
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_775
.label_774:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_775:
	mov	byte ptr [r15 + 0x38], al
	add	ebp, ebp
	and	bpl, 0x10
	and	al, 0xef
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	call	strlen
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	jne	.label_777
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_776:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_777:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_776
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d00
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_778
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_781
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_779
.label_780:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_781:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_779:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_780
.label_778:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d80
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_782
	call	free_dfa_content
.label_782:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409dc0

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.label_793
	xor	ebx, ebx
	mov	r12d, 8
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_793
	mov	ebp, 0x400ff
	jmp	.label_797
	nop	dword ptr [rax]
.label_795:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_797:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_799
	cmp	ecx, 6
	jne	.label_784
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_790
	nop	word ptr cs:[rax + rax]
.label_799:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_790:
	call	free
.label_784:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_795
.label_793:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_796
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_791:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_783
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_783:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_787
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_787:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_788
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_788:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_791
	jmp	.label_794
.label_796:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_794:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	je	.label_789
	xor	r15d, r15d
	jmp	.label_800
.label_792:
	mov	rdi, qword ptr [r14 + 0x40]
.label_800:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_785
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_786:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_786
.label_785:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_792
	mov	rdi, qword ptr [r14 + 0x40]
.label_789:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_798
	call	free
.label_798:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f90
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, 2
	cmp	ebp, 7
	ja	.label_801
	test	bpl, 4
	jne	.label_803
	mov	rdi, r14
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_802
.label_803:
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_802:
	test	byte ptr [rbx + 0x38], 0x10
	jne	.label_805
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], r15
	jmp	.label_804
.label_805:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
.label_804:
	mov	rdi, rbx
	mov	rsi, r14
	mov	r8, rdx
	mov	r9, rdx
	call	re_search_internal
	test	eax, eax
	setne	al
	movzx	eax, al
.label_801:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a030

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x258
	mov	r13, r9
	mov	rbp, rcx
	mov	r9, qword ptr [rsp + 0x290]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x1e0], xmm0
	movaps	xmmword ptr [rsp + 0x1d0], xmm0
	movaps	xmmword ptr [rsp + 0x1c0], xmm0
	movaps	xmmword ptr [rsp + 0x1b0], xmm0
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
	movaps	xmmword ptr [rsp + 0x190], xmm0
	movaps	xmmword ptr [rsp + 0x180], xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	mov	qword ptr [rsp + 0x188], r11
	mov	rax, qword ptr [rdi + 0x20]
	xor	r12d, r12d
	test	rax, rax
	je	.label_814
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	movzx	ecx, cl
	xor	ebx, ebx
	cmp	ecx, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r12, rax
.label_814:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r14, [r9 - 1]
	mov	rcx, r14
	sub	rcx, rax
	xor	ebx, ebx
	cmp	rax, r9
	cmovb	rbx, rcx
	mov	eax, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_859
	mov	r15, qword ptr [r11 + 0x48]
	test	r15, r15
	je	.label_859
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_859
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	je	.label_877
	cmp	qword ptr [r11 + 0x60], 0
	je	.label_877
	mov	rax, r13
	mov	r13, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0xd0], r13
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_879
	mov	rcx, r8
	mov	r13, rax
	jmp	.label_868
.label_877:
	mov	eax, 1
	jmp	.label_859
.label_879:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r13, rax
	je	.label_854
	mov	rcx, r8
.label_868:
	mov	qword ptr [rsp + 0xb0], rcx
	mov	qword ptr [rsp + 0xd8], r12
	mov	qword ptr [rsp + 0x68], r14
	mov	al, 1
	cmp	rbx, r9
	mov	qword ptr [rsp + 0xa0], rbx
	jne	.label_889
	cmp	qword ptr [r11 + 0x98], 0
	setne	al
.label_889:
	mov	byte ptr [rsp + 0xbe], al
	mov	r12, qword ptr [r11 + 0x10]
	inc	r12
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r11 + 0xb4]
	cmp	rax, r12
	cmovge	r12, rax
	lea	rbx, [rdx + 1]
	cmp	rbx, r12
	cmovle	r12, rbx
	mov	qword ptr [rsp + 0xf0], rsi
	mov	qword ptr [rsp + 0x148], rdx
	mov	qword ptr [rsp + 0x140], rdx
	mov	rbx, qword ptr [rsp + 0xd0]
	mov	qword ptr [rsp + 0x168], rbx
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0x178], cl
	test	rbx, rbx
	setne	bl
	or	bl, cl
	mov	byte ptr [rsp + 0x17b], bl
	mov	dword ptr [rsp + 0x180], eax
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 2
	and	cl, 1
	mov	byte ptr [rsp + 0x179], cl
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0x17a], cl
	mov	qword ptr [rsp + 0x158], rdx
	mov	qword ptr [rsp + 0x150], rdx
	jl	.label_895
	mov	qword ptr [rsp + 0xe8], r11
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ecx, 0xc
	cmp	r12, rax
	ja	.label_810
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xe0], rdx
	mov	r14, rdi
	lea	rsi, [r12*4]
	xor	edi, edi
	call	realloc
	mov	ecx, 0xc
	test	rax, rax
	je	.label_810
	mov	qword ptr [rsp + 0x100], rax
	mov	r11, qword ptr [rsp + 0xe8]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xc0]
.label_895:
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xe0], rdx
	test	bl, bl
	je	.label_946
	mov	r14, rdi
	mov	qword ptr [rsp + 0xe8], r11
	xor	edi, edi
	mov	rsi, r12
	call	realloc
	mov	ecx, 0xc
	test	rax, rax
	je	.label_810
	mov	qword ptr [rsp + 0xf8], rax
	mov	r11, qword ptr [rsp + 0xe8]
	mov	rdi, r14
.label_946:
	mov	edx, dword ptr [rsp + 0x2a0]
	mov	qword ptr [rsp + 0x130], r12
	lea	rax, [r11 + 0xb8]
	mov	qword ptr [rsp + 0x170], rax
	mov	rax, qword ptr [r11 + 0xb0]
	mov	cl, al
	shr	cl, 4
	and	cl, 1
	mov	byte ptr [rsp + 0x17e], cl
	xor	ecx, ecx
	test	bl, bl
	jne	.label_962
	shr	rax, 0x20
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0xf8], rcx
	xor	ecx, ecx
	cmp	eax, 1
	cmovle	rcx, qword ptr [rsp + 0xe0]
.label_962:
	mov	qword ptr [rsp + 0x120], rcx
	mov	qword ptr [rsp + 0x128], rcx
	mov	qword ptr [rsp + 0x158], r13
	mov	qword ptr [rsp + 0x150], r13
	mov	al, byte ptr [rdi + 0x38]
	mov	qword ptr [rsp + 0x80], rdi
	shr	al, 7
	mov	byte ptr [rsp + 0x17d], al
	mov	rbx, qword ptr [r11 + 0x98]
	mov	qword ptr [rsp + 0xe8], r11
	lea	r14, [rbx + rbx]
	mov	dword ptr [rsp + 0x190], edx
	mov	qword ptr [rsp + 0x198], -1
	test	rbx, rbx
	jle	.label_972
	mov	ecx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_810
	shl	rbx, 4
	lea	rdi, [rbx + rbx*4]
	call	malloc
	mov	r13, rax
	mov	qword ptr [rsp + 0x1c8], r13
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x1e8], rax
	test	r13, r13
	je	.label_813
	test	rax, rax
	mov	ecx, 0xc
	je	.label_810
.label_972:
	mov	rax, qword ptr [rsp + 0x290]
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 0xa0]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x58], rcx
	mov	qword ptr [rsp + 0x1c0], r14
	mov	dword ptr [rsp + 0x1d0], 1
	mov	qword ptr [rsp + 0x1e0], r14
	cmp	rcx, 1
	mov	rax, qword ptr [rsp + 0xe8]
	ja	.label_819
	mov	rdi, qword ptr [rax + 0xb0]
	test	dil, 2
	jne	.label_819
	shr	rdi, 0x20
	mov	qword ptr [rsp + 0x1a8], 0
	jmp	.label_837
.label_819:
	mov	ecx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r12, rax
	ja	.label_810
	lea	rdi, [r12*8 + 8]
	call	malloc
	mov	ecx, 0xc
	mov	qword ptr [rsp + 0x1a8], rax
	test	rax, rax
	je	.label_810
	mov	rax, qword ptr [rsp + 0xe8]
	mov	edi, dword ptr [rax + 0xb4]
.label_837:
	mov	r13, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0xc8], rdi
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0x1f8], rbp
	mov	eax, dword ptr [rsp + 0x2a0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0x160], eax
	mov	rbx, qword ptr [rsp + 0xb0]
	cmp	rbx, rbp
	mov	rax, rbp
	cmovle	rax, rbx
	mov	qword ptr [rsp + 0x78], rax
	mov	r8, rax
	mov	r14, rbx
	cmovl	r14, rbp
	mov	qword ptr [rsp + 0x70], r14
	mov	edx, 8
	test	r13, r13
	je	.label_852
	cmp	edi, 1
	je	.label_880
	mov	ecx, 0x400000
	xor	eax, eax
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rdx, qword ptr [rsp + 0x80]
	jne	.label_881
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_881
.label_880:
	mov	eax, 4
.label_881:
	cmp	qword ptr [rsp + 0xd0], 0
	setne	cl
	cmp	rbp, rbx
	setle	dl
	movzx	ecx, cl
	movzx	edx, dl
	lea	edx, [rcx + rdx*2]
	or	edx, eax
.label_852:
	mov	qword ptr [rsp + 0xc8], rdi
	xor	eax, eax
	cmp	rbp, rbx
	setle	byte ptr [rsp + 0xbf]
	lea	rcx, [rsp + 0x1f8]
	cmovg	rcx, rax
	mov	qword ptr [rsp + 0x88], rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	cmp	rbx, rbp
	mov	eax, 1
	mov	rcx, -1
	cmovge	rcx, rax
	mov	qword ptr [rsp + 0xd8], rcx
	add	edx, -4
	mov	qword ptr [rsp + 0xb0], rdx
	mov	rbx, r8
	jmp	.label_820
.label_825:
	mov	r12, qword ptr [rsp + 0xc8]
	cmp	r12d, 1
	je	.label_903
	mov	rax, qword ptr [rsp + 0x120]
	test	rax, rax
	je	.label_903
	mov	rax, qword ptr [rsp + 0x100]
	cmp	dword ptr [rax], -1
	je	.label_909
.label_903:
	mov	dword ptr [rsp + 0x1d0], 0
	lea	rax, [rsp + 0x1b0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	r15, qword ptr [rsp + 0x188]
	mov	r14, qword ptr [rsp + 0x138]
	mov	dword ptr [rsp + 0x254], 0
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	js	.label_913
	mov	r12b, byte ptr [rsp + 0xbe]
	jmp	.label_853
.label_913:
	test	r14, r14
	jle	.label_929
	lea	rax, [r14 - 1]
	cmp	qword ptr [rsp + 0x148], rax
	je	.label_931
	cmp	dword ptr [rsp + 0x180], 2
	mov	r12b, byte ptr [rsp + 0xbe]
	jl	.label_935
	mov	rax, qword ptr [rsp + 0x100]
	mov	rcx, r14
	nop	dword ptr [rax]
.label_943:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_941
	dec	rcx
	jg	.label_943
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_944
.label_935:
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	rdx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	bt	rcx, rax
	jb	.label_900
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_853
	jmp	.label_904
.label_941:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_950
.label_978:
	cmp	ebp, 0xa
	jne	.label_853
.label_904:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_944
	xor	ecx, ecx
	jmp	.label_944
.label_929:
	mov	ecx, dword ptr [rsp + 0x160]
	mov	r12b, byte ptr [rsp + 0xbe]
	jmp	.label_944
.label_931:
	mov	ecx, dword ptr [rsp + 0x190]
	and	ecx, 2
	xor	ecx, 0xa
	mov	r12b, byte ptr [rsp + 0xbe]
.label_944:
	test	cl, 1
	jne	.label_900
	test	ecx, ecx
	je	.label_853
	mov	eax, ecx
	and	eax, 4
	sete	sil
	mov	edx, ecx
	and	edx, 2
	je	.label_964
	test	sil, sil
	jne	.label_964
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_853
.label_964:
	test	edx, edx
	jne	.label_969
	test	eax, eax
	je	.label_853
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x254]
	mov	rsi, r15
	call	re_acquire_state_context
	mov	rbx, rax
	jmp	.label_853
.label_969:
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_853
.label_950:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	je	.label_900
	test	eax, eax
	je	.label_978
.label_900:
	mov	rbx, qword ptr [r15 + 0x50]
.label_853:
	mov	cl, byte ptr [rsp + 0xbf]
	test	rbx, rbx
	je	.label_918
	mov	rax, qword ptr [rsp + 0x1a8]
	test	rax, rax
	mov	dl, cl
	mov	dword ptr [rsp + 0x90], edx
	je	.label_836
	mov	qword ptr [rax + r14*8], rbx
	cmp	qword ptr [r15 + 0x98], 0
	mov	al, cl
	mov	dword ptr [rsp + 0x90], eax
	jne	.label_958
.label_836:
	mov	byte ptr [rsp + 0xbf], cl
	mov	cl, byte ptr [rbx + 0x68]
	mov	r15, -1
	test	cl, 0x10
	mov	eax, 0
	jne	.label_988
.label_846:
	mov	rbp, qword ptr [rsp + 0x138]
	mov	rcx, qword ptr [rsp + 0x88]
.label_960:
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0xa8], r14
	cmp	qword ptr [rsp + 0x158], rbp
	jle	.label_811
	test	rax, rax
	sete	al
	or	al, r12b
	mov	byte ptr [rsp + 0x57], al
	mov	r14, rbx
	jmp	.label_808
.label_926:
	mov	qword ptr [rsp + 0x40], r15
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_823
	mov	rsi, qword ptr [rsp + 0x188]
	mov	qword ptr [rsp + 0x30], rsi
	xor	r15d, r15d
	jmp	.label_827
.label_938:
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	jle	.label_830
	lea	rdx, [rax - 1]
	mov	ecx, 0xa
	cmp	qword ptr [rsp + 0x148], rdx
	je	.label_834
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_838
	mov	rcx, qword ptr [rsp + 0x100]
.label_968:
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	jne	.label_841
	dec	rax
	jg	.label_968
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_834
.label_916:
	cmp	r14, rbx
	je	.label_845
	mov	dword ptr [rsp + 0x90], 0
.label_845:
	mov	r14, qword ptr [rsp + 0xa8]
	cmove	r14, qword ptr [rsp + 0x98]
	jmp	.label_876
.label_838:
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rcx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_834
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_834
	jmp	.label_872
.label_841:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_874
.label_905:
	xor	ecx, ecx
	cmp	ebx, 0xa
	jne	.label_834
.label_872:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_834
	xor	ecx, ecx
	jmp	.label_834
.label_940:
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rsi
	mov	edi, ebx
	call	iswalnum
	xor	edx, edx
	cmp	ebx, 0x5f
	mov	edi, 1
	je	.label_886
	test	eax, eax
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x2c]
	je	.label_871
	jmp	.label_893
.label_902:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_957
	test	eax, eax
	lea	rdi, [rsp + 0x238]
	je	.label_822
	jmp	.label_840
.label_886:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x2c]
	jmp	.label_893
.label_957:
	lea	rdi, [rsp + 0x238]
	jmp	.label_840
.label_827:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rsi]
	mov	rcx, rbp
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	test	eax, 0x100000
	je	.label_883
	mov	r12d, eax
	shr	r12d, 8
	test	r12w, 0x3ff
	mov	rcx, qword ptr [rsp + 0x138]
	je	.label_907
	test	rcx, rcx
	js	.label_848
	cmp	qword ptr [rsp + 0x148], rcx
	je	.label_914
	mov	r8d, eax
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_917
	mov	rax, qword ptr [rsp + 0x100]
	lea	rdx, [rcx + 1]
.label_924:
	mov	ebx, dword ptr [rax + rdx*4 - 4]
	cmp	ebx, -1
	jne	.label_921
	dec	rdx
	test	rdx, rdx
	jg	.label_924
	mov	edi, dword ptr [rsp + 0x160]
	jmp	.label_861
.label_917:
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rdi, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rax + rcx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rdi + rdx*8]
	xor	edi, edi
	bt	rdx, rax
	jae	.label_927
	mov	edi, 1
	xor	edx, edx
	mov	eax, r8d
	jmp	.label_893
.label_921:
	cmp	byte ptr [rsp + 0x17e], 0
	mov	eax, r8d
	jne	.label_940
.label_871:
	mov	r8d, eax
	xor	edi, edi
	cmp	ebx, 0xa
	je	.label_942
	jmp	.label_861
.label_927:
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_861
.label_942:
	mov	edi, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_861
	xor	edi, edi
	jmp	.label_861
.label_848:
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x160]
	jmp	.label_861
.label_914:
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x190]
	and	edi, 2
	xor	edi, 0xa
.label_861:
	mov	eax, edi
	and	eax, 1
	sete	dl
	test	r12b, 4
	je	.label_899
	test	eax, eax
	mov	eax, r8d
	je	.label_883
	jmp	.label_893
.label_899:
	mov	eax, r8d
.label_893:
	test	ah, 8
	je	.label_953
	test	dl, dl
	je	.label_883
.label_953:
	test	ah, 0x20
	je	.label_959
	mov	eax, edi
	and	eax, 2
	je	.label_883
.label_959:
	test	r12b, r12b
	jns	.label_907
	and	edi, 8
	je	.label_883
.label_907:
	mov	rbx, rsi
	mov	rdi, rbx
	mov	rsi, rbp
	lea	rdx, [rsp + 0xf0]
	call	check_node_accept_bytes
	mov	rsi, rbx
	test	eax, eax
	je	.label_883
	movsxd	r12, eax
	add	r12, qword ptr [rsp + 0x138]
	mov	ecx, dword ptr [rsp + 0x1d0]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x1d0], ecx
	mov	rbx, qword ptr [rsp + 0x1b0]
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rax, qword ptr [rsp + 0x148]
	cmp	rcx, r12
	jg	.label_965
	cmp	rcx, rax
	jl	.label_975
.label_965:
	mov	rcx, qword ptr [rsp + 0x120]
	cmp	rcx, r12
	jg	.label_977
	cmp	rcx, rax
	jge	.label_977
.label_975:
	lea	esi, [r12 + 1]
	lea	rdi, [rsp + 0xf0]
	call	extend_buffers
	test	eax, eax
	jne	.label_979
.label_977:
	mov	rdx, r12
	sub	rdx, rbx
	jle	.label_981
	mov	rax, qword ptr [rsp + 0x1a8]
	lea	rdi, [rax + rbx*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	qword ptr [rsp + 0x1b0], r12
.label_981:
	mov	dword ptr [rsp + 0x238], 0
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + rbp*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rbx, qword ptr [rax + r12*8]
	mov	rbp, rcx
	test	rbx, rbx
	je	.label_989
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x200]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x238], eax
	test	eax, eax
	je	.label_887
	jmp	.label_821
.label_989:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x210], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x200], xmm0
.label_887:
	mov	qword ptr [rsp + 0x38], rbx
	test	r12, r12
	jle	.label_973
	lea	rax, [r12 - 1]
	cmp	qword ptr [rsp + 0x148], rax
	lea	rdi, [rsp + 0x238]
	je	.label_955
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_835
	mov	rax, qword ptr [rsp + 0x100]
	mov	rcx, r12
.label_897:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	jne	.label_839
	dec	rcx
	jg	.label_897
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_840
.label_835:
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	rdx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_840
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_840
	jmp	.label_851
.label_839:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_902
.label_822:
	xor	ecx, ecx
	cmp	ebx, 0xa
	jne	.label_840
.label_851:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_840
	xor	ecx, ecx
	jmp	.label_840
.label_973:
	mov	ecx, dword ptr [rsp + 0x160]
	lea	rdi, [rsp + 0x238]
	jmp	.label_840
.label_955:
	mov	ecx, dword ptr [rsp + 0x190]
	and	ecx, 2
	xor	ecx, 0xa
.label_840:
	mov	rsi, rbp
	lea	rdx, [rsp + 0x200]
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x38], 0
	mov	rcx, qword ptr [rsp + 0x1a8]
	mov	qword ptr [rcx + r12*8], rax
	je	.label_901
	mov	rdi, qword ptr [rsp + 0x210]
	call	free
.label_901:
	mov	rax, qword ptr [rsp + 0x1a8]
	cmp	qword ptr [rax + r12*8], 0
	mov	rsi, rbp
	jne	.label_883
	mov	eax, dword ptr [rsp + 0x238]
	test	eax, eax
	jne	.label_821
.label_883:
	inc	r15
	cmp	r15, qword ptr [r14 + 0x10]
	jl	.label_827
.label_823:
	mov	dword ptr [rsp + 0x254], 0
	mov	r12b, byte ptr [rsp + 0xbe]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_890
.label_830:
	mov	ecx, dword ptr [rsp + 0x160]
.label_834:
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	mov	rbx, qword ptr [r15 + rcx*8]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_869
.label_979:
	mov	dword ptr [rsp + 0x238], eax
.label_821:
	mov	dword ptr [rsp + 0x254], eax
	xor	ebx, ebx
	mov	r12b, byte ptr [rsp + 0xbe]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_869
.label_874:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_834
	test	eax, eax
	je	.label_905
	jmp	.label_834
.label_808:
	lea	rdx, [rbp + 1]
	mov	qword ptr [rsp + 0x98], rdx
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rax, qword ptr [rsp + 0x148]
	cmp	rdx, rcx
	jl	.label_908
	cmp	rcx, rax
	jl	.label_865
.label_908:
	mov	rcx, qword ptr [rsp + 0x120]
	cmp	qword ptr [rsp + 0x98], rcx
	jl	.label_882
	cmp	rcx, rax
	jge	.label_882
.label_865:
	add	ebp, 2
	lea	rdi, [rsp + 0xf0]
	mov	esi, ebp
	call	extend_buffers
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_923
.label_882:
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_926
.label_890:
	mov	rax, qword ptr [rsp + 0x138]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x138], rcx
	mov	rcx, qword ptr [rsp + 0xf8]
	movzx	ebp, byte ptr [rcx + rax]
.label_833:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_971
	mov	qword ptr [rsp + 0x40], r15
	mov	r15, qword ptr [r14 + 0x60]
	test	r15, r15
	jne	.label_938
	mov	rdi, qword ptr [rsp + 0x188]
	mov	rsi, r14
	call	build_trtable
	test	al, al
	mov	r15, qword ptr [rsp + 0x40]
	jne	.label_833
	mov	dword ptr [rsp + 0x254], 0xc
	xor	ebx, ebx
	jmp	.label_869
.label_971:
	mov	rbx, qword ptr [rax + rbp*8]
.label_869:
	cmp	qword ptr [rsp + 0x1a8], 0
	je	.label_945
	lea	rdi, [rsp + 0x254]
	lea	rsi, [rsp + 0xf0]
	mov	rdx, rbx
	call	merge_state_with_log
	mov	rbx, rax
.label_945:
	test	rbx, rbx
	jne	.label_951
	cmp	dword ptr [rsp + 0x254], 0
	jne	.label_813
	mov	rax, qword ptr [rsp + 0x1a8]
	test	rax, rax
	setne	cl
	and	cl, byte ptr [rsp + 0x57]
	movzx	ecx, cl
	cmp	ecx, 1
	je	.label_937
	jmp	.label_811
.label_976:
	mov	rax, qword ptr [rsp + 0x1a8]
.label_937:
	mov	rdx, qword ptr [rsp + 0x138]
	mov	rcx, qword ptr [rsp + 0x1b0]
	nop	word ptr cs:[rax + rax]
.label_967:
	cmp	rdx, rcx
	jge	.label_811
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0x138], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_967
	xor	edx, edx
	lea	rdi, [rsp + 0x254]
	lea	rsi, [rsp + 0xf0]
	call	merge_state_with_log
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_875
	mov	eax, dword ptr [rsp + 0x254]
	test	eax, eax
	je	.label_976
.label_875:
	test	rbx, rbx
	je	.label_811
.label_951:
	mov	eax, dword ptr [rsp + 0x90]
	test	al, 1
	jne	.label_916
	mov	r14, qword ptr [rsp + 0xa8]
.label_876:
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	jne	.label_980
	mov	qword ptr [rsp + 0xa8], r14
	mov	rbp, qword ptr [rsp + 0x138]
	jmp	.label_983
.label_980:
	mov	rbp, qword ptr [rsp + 0x138]
	test	al, al
	jns	.label_806
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbx
	mov	rdx, rbp
	call	check_halt_state_context
	test	rax, rax
	jne	.label_806
	mov	qword ptr [rsp + 0xa8], r14
.label_983:
	cmp	qword ptr [rsp + 0x158], rbp
	mov	r14, rbx
	jg	.label_808
	jmp	.label_811
.label_806:
	test	r12b, r12b
	mov	r15, rbp
	mov	eax, 1
	mov	ecx, 0
	jne	.label_960
	jmp	.label_817
.label_811:
	mov	rcx, qword ptr [rsp + 0x60]
	test	rcx, rcx
	je	.label_816
	mov	rax, qword ptr [rsp + 0xa8]
	add	qword ptr [rcx], rax
	mov	rbp, r15
	jmp	.label_817
.label_816:
	mov	rbp, r15
.label_817:
	mov	byte ptr [rsp + 0xbe], r12b
	cmp	rbp, -1
	mov	r12, qword ptr [rsp + 0xc8]
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	je	.label_824
	mov	ecx, 0xc
	cmp	rbp, -2
	je	.label_810
	cmp	qword ptr [rsp + 0x58], 1
	seta	al
	mov	qword ptr [rsp + 0x198], rbp
	mov	rcx, qword ptr [rsp + 0x80]
	test	byte ptr [rcx + 0x38], 0x10
	sete	bl
	and	bl, al
	je	.label_894
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0xf0]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x1a0], rax
	mov	r12, qword ptr [rsp + 0xe8]
	jmp	.label_985
.label_894:
	mov	r12, qword ptr [rsp + 0xe8]
	cmp	qword ptr [r12 + 0x98], 0
	je	.label_849
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0xf0]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x1a0], rax
	test	bl, 1
	je	.label_922
.label_985:
	test	byte ptr [r12 + 0xb0], 1
	jne	.label_866
.label_922:
	cmp	qword ptr [r12 + 0x98], 0
	je	.label_849
.label_866:
	mov	qword ptr [rsp + 0xe8], r12
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	ja	.label_813
	mov	r14, qword ptr [rsp + 0x188]
	mov	rax, qword ptr [rsp + 0x1a0]
	mov	qword ptr [rsp + 0x98], rax
	lea	r12, [rbp*8 + 8]
	mov	rdi, r12
	call	malloc
	test	rax, rax
	mov	rbx, rax
	mov	r15d, 0
	je	.label_885
	cmp	qword ptr [r14 + 0x98], 0
	je	.label_888
	mov	qword ptr [rsp + 0x90], r14
	mov	rdi, r12
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_892
	xor	esi, esi
	mov	rdi, r15
	mov	rdx, r12
	call	memset
	mov	r12, rbx
	mov	qword ptr [rsp + 0xa8], r12
	mov	qword ptr [rsp + 0x200], r12
	mov	qword ptr [rsp + 0x208], r15
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0xf0]
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	jne	.label_911
.label_954:
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	jne	.label_856
	cmp	qword ptr [r15], 0
	mov	esi, 0
	jne	.label_856
	mov	r12, r15
	test	rbp, rbp
	jle	.label_920
	mov	rax, qword ptr [rsp + 0x1a8]
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_948:
	mov	rsi, qword ptr [rax + rbp*8]
	test	rsi, rsi
	je	.label_939
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_930
.label_939:
	lea	rcx, [rbp - 1]
	inc	rbp
	cmp	rbp, 2
	mov	rbp, rcx
	jge	.label_948
	jmp	.label_920
.label_930:
	lea	r15, [rsp + 0xf0]
	mov	rdi, r15
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x98], rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r12
	call	memset
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0x200], rcx
	mov	qword ptr [rsp + 0x208], r12
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, r15
	mov	r15, r12
	mov	r12, rcx
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	je	.label_954
	mov	r12, r15
	jmp	.label_860
.label_888:
	mov	qword ptr [rsp + 0xa8], rbx
	mov	qword ptr [rsp + 0x200], rbx
	mov	qword ptr [rsp + 0x208], 0
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0xf0]
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	mov	r12d, 0
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	jne	.label_860
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	qword ptr [rax], 0
	mov	r12d, 0
	jne	.label_891
.label_920:
	mov	rdi, qword ptr [rsp + 0xa8]
	call	free
	mov	rdi, r12
	call	free
	mov	r12, qword ptr [rsp + 0xc8]
.label_824:
	lea	rdi, [rsp + 0xf0]
	call	match_ctx_clean
.label_909:
	mov	rbp, qword ptr [rsp + 0x1f8]
	add	rbp, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, rbx
	mov	ecx, 1
	jl	.label_810
	mov	qword ptr [rsp + 0xc8], r12
	cmp	r14, rbp
	jge	.label_820
	jmp	.label_810
.label_988:
	test	cl, cl
	js	.label_844
	test	r12b, r12b
	mov	r15, r14
	mov	eax, 1
	jne	.label_846
	mov	rbp, r14
	jmp	.label_817
.label_958:
	mov	byte ptr [rsp + 0xbf], cl
	lea	rbp, [rbx + 8]
	xor	edx, edx
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_826
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_829
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	call	transit_state_bkref
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_832
.label_829:
	mov	dword ptr [rsp + 0x90], 0
	mov	cl, byte ptr [rsp + 0xbf]
	jmp	.label_836
.label_844:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbx
	mov	rdx, r14
	call	check_halt_state_context
	cmp	rax, 1
	sbb	r15, r15
	test	rax, rax
	sete	cl
	setne	al
	movzx	eax, al
	or	cl, r12b
	je	.label_843
	or	r15, r14
	jmp	.label_846
.label_843:
	mov	rbp, r14
	jmp	.label_817
.label_856:
	mov	qword ptr [rsp + 0xa8], r12
	test	rbp, rbp
	js	.label_850
	xor	r12d, r12d
	jmp	.label_855
.label_970:
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rax + r12*8 + 8]
	inc	r12
.label_855:
	mov	rdx, qword ptr [r15 + r12*8]
	test	rsi, rsi
	je	.label_863
	test	rdx, rdx
	je	.label_884
	add	rsi, 8
	add	rdx, 8
	lea	rbx, [rsp + 0x238]
	mov	rdi, rbx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_873
	lea	rdi, [rsp + 0x254]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, rbx
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x248]
	call	free
	mov	eax, dword ptr [rsp + 0x254]
	test	eax, eax
	je	.label_884
	jmp	.label_873
.label_863:
	mov	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rax + r12*8], rdx
.label_884:
	cmp	r12, rbp
	jl	.label_970
.label_850:
	xor	eax, eax
.label_873:
	mov	rdi, r15
	mov	ebx, eax
	call	free
	mov	eax, ebx
	test	eax, eax
	mov	r12d, 0
	mov	r14, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0x78]
	je	.label_891
	jmp	.label_860
.label_911:
	mov	qword ptr [rsp + 0xa8], r12
	mov	r12, r15
.label_860:
	mov	r15, rbx
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	ebp, eax
	call	free
	mov	rdi, r12
	call	free
	test	ebp, ebp
	mov	eax, ebp
	mov	r12, qword ptr [rsp + 0xe8]
	je	.label_849
	mov	ecx, eax
	cmp	ecx, 1
	mov	r12, qword ptr [rsp + 0xc8]
	mov	rbx, r15
	je	.label_824
	jmp	.label_810
.label_826:
	movsxd	rbp, eax
	jmp	.label_817
.label_832:
	movsxd	rbp, eax
	jmp	.label_817
.label_820:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	eax, 4
	ja	.label_910
	jmp	qword ptr [word ptr [+ (rax * 8) + label_912]]
.label_2498:
	cmp	rbp, rbx
	mov	rax, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xd0]
	jl	.label_915
	nop	word ptr cs:[rax + rax]
.label_932:
	xor	eax, eax
	cmp	rbp, rcx
	jge	.label_925
	movzx	eax, byte ptr [rdx + rbp]
.label_925:
	test	rsi, rsi
	je	.label_933
	movzx	eax, byte ptr [rsi + rax]
.label_933:
	cmp	byte ptr [r13 + rax], 0
	jne	.label_928
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x1f8], rax
	cmp	rbp, rbx
	mov	rbp, rax
	jg	.label_932
	jmp	.label_915
.label_910:
	mov	rax, qword ptr [rsp + 0x118]
	jmp	.label_936
	nop	word ptr cs:[rax + rax]
.label_963:
	add	rbp, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, rbx
	mov	ecx, 1
	jl	.label_810
	cmp	rbp, r14
	jle	.label_936
	jmp	.label_810
.label_956:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x2a0]
	call	re_string_reconstruct
	mov	ecx, eax
	test	ecx, ecx
	jne	.label_810
	mov	rbp, qword ptr [rsp + 0x1f8]
	mov	rax, qword ptr [rsp + 0x118]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_947
	nop	word ptr cs:[rax + rax]
.label_936:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0x128]
	jae	.label_956
.label_947:
	mov	rdx, qword ptr [rsp + 0xe0]
	cmp	rbp, rdx
	mov	edx, 0
	jge	.label_961
	mov	rdx, qword ptr [rsp + 0xf8]
	movzx	edx, byte ptr [rdx + rcx]
.label_961:
	cmp	byte ptr [r13 + rdx], 0
	je	.label_963
	jmp	.label_812
.label_2499:
	cmp	rbp, r14
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xd0]
	jge	.label_857
	nop	word ptr cs:[rax + rax]
.label_878:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [r13 + rax], 0
	jne	.label_857
	inc	rbp
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, r14
	jl	.label_878
	jmp	.label_857
.label_2500:
	cmp	rbp, r14
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xd0]
	jge	.label_857
	nop	word ptr cs:[rax + rax]
.label_982:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rdx + rax]
	cmp	byte ptr [r13 + rax], 0
	jne	.label_857
	inc	rbp
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, r14
	jl	.label_982
.label_857:
	mov	qword ptr [rsp + 0xd0], rdx
	mov	qword ptr [rsp + 0xc0], rcx
	cmp	rbp, r14
	jne	.label_812
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0xe0]
	cmp	r14, rcx
	mov	rcx, qword ptr [rsp + 0xc0]
	jge	.label_987
	movzx	eax, byte ptr [rcx + r14]
.label_987:
	mov	rcx, qword ptr [rsp + 0xd0]
	test	rcx, rcx
	je	.label_809
	movzx	eax, byte ptr [rcx + rax]
.label_809:
	mov	ecx, 1
	cmp	byte ptr [r13 + rax], 0
	mov	rbp, r14
	jne	.label_812
	jmp	.label_810
.label_928:
	mov	rax, rbp
.label_915:
	mov	ecx, 1
	cmp	rax, rbx
	mov	rbp, rax
	jl	.label_810
.label_812:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x2a0]
	call	re_string_reconstruct
	mov	ecx, eax
	test	ecx, ecx
	je	.label_825
	jmp	.label_810
.label_923:
	cmp	eax, 0xc
	jne	.label_828
.label_813:
	mov	ecx, 0xc
.label_810:
	mov	ebx, ecx
	mov	rdi, qword ptr [rsp + 0x1a8]
	call	free
	mov	rax, qword ptr [rsp + 0xe8]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_831
	lea	rdi, [rsp + 0xf0]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x1e8]
	call	free
	mov	rdi, qword ptr [rsp + 0x1c8]
	call	free
.label_831:
	mov	rdi, qword ptr [rsp + 0x100]
	call	free
	mov	rdi, qword ptr [rsp + 0x108]
	call	free
	cmp	byte ptr [rsp + 0x17b], 0
	je	.label_847
	mov	rdi, qword ptr [rsp + 0xf8]
	call	free
.label_847:
	mov	eax, ebx
.label_859:
	add	rsp, 0x258
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_854:
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_858
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_862
.label_858:
	xor	ecx, ecx
	test	rbp, rbp
	je	.label_864
	test	r8, r8
	mov	ebp, 0
	mov	eax, 1
	jne	.label_859
	jmp	.label_868
.label_918:
	cmp	dword ptr [rsp + 0x254], 0xc
	je	.label_813
	mov	edi, OFFSET FLAT:.str.25_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_862:
	mov	rcx, r8
	jmp	.label_868
.label_864:
	xor	ebp, ebp
	jmp	.label_868
.label_891:
	mov	rdi, qword ptr [rsp + 0x1a8]
	call	free
	mov	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0x1a8], rax
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x1a0], rax
	mov	qword ptr [rsp + 0x198], rbp
	mov	r12, qword ptr [rsp + 0xe8]
.label_849:
	mov	qword ptr [rsp + 0xe8], r12
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x290]
	cmp	qword ptr [rsp + 0xa0], rax
	mov	r14, qword ptr [rsp + 0x298]
	je	.label_810
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_896
	mov	rsi, qword ptr [rsp + 0x290]
	lea	edx, [rsi + 7]
	mov	rdi, qword ptr [rsp + 0xa0]
	sub	edx, edi
	lea	rax, [rsi - 2]
	sub	rax, rdi
	mov	ecx, 1
	test	dl, 7
	je	.label_898
	lea	rdx, [r14 + 0x10]
	lea	esi, [rsi + 7]
	sub	esi, edi
	and	esi, 7
	xor	edi, edi
.label_906:
	mov	rcx, rdi
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	lea	rdi, [rcx + 1]
	add	rdx, 0x10
	cmp	rsi, rdi
	jne	.label_906
	add	rcx, 2
.label_898:
	cmp	rax, 7
	jb	.label_896
	mov	rax, qword ptr [rsp + 0x58]
	sub	rax, rcx
	shl	rcx, 4
	lea	rcx, [rcx + r14 + 0x70]
.label_919:
	mov	qword ptr [rcx - 0x68], -1
	mov	qword ptr [rcx - 0x70], -1
	mov	qword ptr [rcx - 0x58], -1
	mov	qword ptr [rcx - 0x60], -1
	mov	qword ptr [rcx - 0x48], -1
	mov	qword ptr [rcx - 0x50], -1
	mov	qword ptr [rcx - 0x38], -1
	mov	qword ptr [rcx - 0x40], -1
	mov	qword ptr [rcx - 0x28], -1
	mov	qword ptr [rcx - 0x30], -1
	mov	qword ptr [rcx - 0x18], -1
	mov	qword ptr [rcx - 0x20], -1
	mov	qword ptr [rcx - 8], -1
	mov	qword ptr [rcx - 0x10], -1
	mov	qword ptr [rcx + 8], -1
	mov	qword ptr [rcx], -1
	add	rcx, 0x80
	add	rax, -8
	jne	.label_919
.label_896:
	mov	qword ptr [r14], 0
	mov	rax, qword ptr [rsp + 0x198]
	mov	qword ptr [r14 + 8], rax
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_867
	mov	rax, qword ptr [rsp + 0x80]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_867
	mov	rax, qword ptr [rsp + 0xe8]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_949
	xor	eax, eax
	jmp	.label_952
.label_892:
	mov	rax, rbx
	mov	qword ptr [rsp + 0x48], rax
.label_885:
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_813
.label_949:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_952:
	mov	rdi, qword ptr [rsp + 0x80]
	movzx	r8d, al
	lea	rsi, [rsp + 0xf0]
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rcx, r14
	call	set_regs
	mov	ecx, eax
	test	ecx, ecx
	jne	.label_810
.label_867:
	mov	r10b, byte ptr [rsp + 0x17c]
	mov	r8, qword ptr [rsp + 0x108]
	lea	rdx, [r14 + 8]
	xor	ecx, ecx
	mov	r9, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0x290]
	lea	r11, [rsp + 0x128]
	jmp	.label_966
.label_986:
	mov	rbx, qword ptr [rsp + 0x120]
	cmp	rdi, rbx
	lea	rdi, [r8 + rdi*8]
	cmove	rdi, r11
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rdx - 8], rdi
	mov	rsi, rcx
	shl	rsi, 4
	lea	rbp, [r14 + rsi + 8]
	mov	rsi, qword ptr [rdx]
	cmp	rsi, rbx
	lea	rsi, [r8 + rsi*8]
	cmove	rsi, r11
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rdx], rbx
	jmp	.label_974
.label_966:
	mov	rdi, qword ptr [rdx - 8]
	cmp	rdi, -1
	je	.label_984
	test	r10b, r10b
	jne	.label_986
	mov	rbx, qword ptr [rdx]
	mov	rbp, rdx
.label_974:
	mov	rsi, qword ptr [rsp + 0x1f8]
	add	rdi, rsi
	mov	qword ptr [rdx - 8], rdi
	add	rbx, rsi
	mov	qword ptr [rbp], rbx
.label_984:
	inc	rcx
	add	rdx, 0x10
	dec	rax
	cmp	r9, rax
	jne	.label_966
	test	r9, r9
	mov	rdi, qword ptr [rsp + 0xe8]
	jle	.label_807
	lea	rcx, [r9 - 1]
	xor	eax, eax
	test	r9b, 3
	je	.label_842
	mov	rdx, qword ptr [rsp + 0x58]
	shl	rdx, 4
	add	rdx, r14
	mov	esi, r9d
	and	esi, 3
	xor	eax, eax
.label_818:
	inc	rax
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	add	rdx, 0x10
	cmp	rsi, rax
	jne	.label_818
.label_842:
	cmp	rcx, 3
	jb	.label_807
	mov	rcx, r9
	sub	rcx, rax
	mov	rdx, qword ptr [rsp + 0x58]
	shl	rdx, 4
	add	rdx, r14
	shl	rax, 4
	add	rax, rdx
	xor	edx, edx
.label_815:
	mov	qword ptr [rax + rdx + 8], -1
	mov	qword ptr [rax + rdx], -1
	mov	qword ptr [rax + rdx + 0x18], -1
	mov	qword ptr [rax + rdx + 0x10], -1
	mov	qword ptr [rax + rdx + 0x28], -1
	mov	qword ptr [rax + rdx + 0x20], -1
	mov	qword ptr [rax + rdx + 0x38], -1
	mov	qword ptr [rax + rdx + 0x30], -1
	add	rdx, 0x40
	add	rcx, -4
	jne	.label_815
.label_807:
	mov	rax, qword ptr [rdi + 0xe0]
	xor	ecx, ecx
	test	rax, rax
	je	.label_810
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_810
	sub	qword ptr [rsp + 0x68], r9
	lea	rdi, [r14 + 0x18]
	xor	edx, edx
.label_870:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_934
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x10]
	mov	qword ptr [rdi - 8], rsi
	mov	rsi, qword ptr [rsp + 0xe8]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x18]
	mov	qword ptr [rdi], rsi
.label_934:
	inc	rdx
	add	rdi, 0x10
	xor	ecx, ecx
	cmp	qword ptr [rsp + 0x68], rdx
	jne	.label_870
	jmp	.label_810
.label_828:
	mov	edi, OFFSET FLAT:.str.25_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd60
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd80

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	test	rcx, rcx
	mov	r14, -1
	js	.label_990
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x38], r9
	cmp	rcx, rdx
	jg	.label_990
	mov	r14, qword ptr [rsp + 0x80]
	xor	r12d, r12d
	add	r8, rcx
	cmovns	r12, r8
	cmp	r8, rdx
	cmovg	r12, rdx
	movzx	r13d, byte ptr [rbx + 0x38]
	cmp	r12, rcx
	mov	al, r13b
	jle	.label_1003
	test	r13b, 8
	mov	al, r13b
	jne	.label_1003
	mov	rax, qword ptr [rbx + 0x20]
	test	rax, rax
	mov	al, r13b
	je	.label_1003
	mov	rdi, rbx
	mov	rbp, rcx
	mov	r15, rdx
	call	rpl_re_compile_fastmap
	mov	rdx, r15
	mov	rcx, rbp
	mov	al, byte ptr [rbx + 0x38]
.label_1003:
	xor	esi, esi
	test	r14, r14
	mov	ebp, 1
	je	.label_992
	mov	qword ptr [rsp + 0x40], rdx
	mov	r15, rcx
	mov	cl, al
	and	cl, 0x10
	jne	.label_995
	and	al, 6
	movzx	eax, al
	cmp	eax, 4
	jne	.label_999
	mov	rax, qword ptr [r14]
	mov	rbp, qword ptr [rbx + 0x30]
	cmp	rax, rbp
	ja	.label_991
	xor	ecx, ecx
	test	rax, rax
	cmovle	r14, rcx
	mov	ebp, 1
	cmovg	rbp, rax
	jmp	.label_1004
.label_992:
	mov	qword ptr [rsp + 0x40], rdx
	mov	r15, rcx
	jmp	.label_995
.label_999:
	mov	rbp, qword ptr [rbx + 0x30]
.label_991:
	inc	rbp
.label_1004:
	mov	rsi, r14
.label_995:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rdi, rbp
	shl	rdi, 4
	call	malloc
	mov	rdi, rbx
	mov	r14, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x40]
	je	.label_990
	mov	cl, r13b
	shr	cl, 5
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	shr	r13d, 5
	or	r13d, ecx
	mov	dword ptr [rsp + 0x10], r13d
	mov	qword ptr [rsp + 8], rax
	mov	r13, rax
	mov	qword ptr [rsp], rbp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, r15
	mov	r8, r12
	mov	r14, rdi
	mov	r9, qword ptr [rsp + 0x38]
	call	re_search_internal
	test	eax, eax
	je	.label_1010
	cmp	eax, 1
	sete	al
	movzx	r14d, al
	or	r14, 0xfffffffffffffffe
	mov	rdi, r13
	jmp	.label_998
.label_1010:
	mov	qword ptr [rsp + 0x40], r15
	mov	r12, qword ptr [rsp + 0x28]
	test	r12, r12
	mov	rdi, r13
	je	.label_1012
	mov	r8, r14
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	movzx	eax, al
	cmp	eax, 2
	je	.label_1017
	lea	rbx, [rbp + 1]
	cmp	eax, 1
	je	.label_993
	mov	r13, r12
	mov	qword ptr [rsp + 0x38], rdi
	mov	r15, r8
	test	eax, eax
	jne	.label_997
	lea	r12, [rbx*8]
	mov	rdi, r12
	call	malloc
	mov	r14, rax
	mov	rax, r13
	mov	qword ptr [rax + 8], r14
	xor	r13d, r13d
	test	r14, r14
	je	.label_1005
	mov	rdi, r12
	mov	r12, rax
	call	malloc
	mov	qword ptr [r12 + 0x10], rax
	test	rax, rax
	je	.label_1001
	mov	qword ptr [r12], rbx
	mov	r14d, 1
	mov	r8, r15
	mov	rdi, qword ptr [rsp + 0x38]
	jmp	.label_996
.label_1017:
	mov	rbx, qword ptr [r12]
	mov	r14d, 2
	cmp	rbx, rbp
	jae	.label_996
	mov	edi, OFFSET FLAT:.str.24_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_993:
	mov	r15, rdi
	mov	rax, qword ptr [r12]
	mov	r14d, 1
	cmp	rbx, rax
	ja	.label_1000
	mov	rbx, rax
	mov	rdi, r15
.label_996:
	test	rbp, rbp
	jle	.label_1008
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	xor	esi, esi
	test	bpl, 1
	je	.label_1009
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rcx], rax
	mov	esi, 1
.label_1009:
	cmp	rbp, 1
	je	.label_1014
	mov	rax, rbp
	sub	rax, rsi
	lea	rcx, [rcx + rsi*8 + 8]
	lea	rdx, [rdx + rsi*8 + 8]
	shl	rsi, 4
	lea	rsi, [rsi + rdi + 0x18]
	nop	
.label_994:
	mov	rbx, qword ptr [rsi - 0x18]
	mov	qword ptr [rdx - 8], rbx
	mov	rbx, qword ptr [rsi - 0x10]
	mov	qword ptr [rcx - 8], rbx
	mov	rbx, qword ptr [rsi - 8]
	mov	qword ptr [rdx], rbx
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rcx], rbx
	add	rcx, 0x10
	add	rsi, 0x20
	add	rdx, 0x10
	add	rax, -2
	jne	.label_994
.label_1014:
	mov	rbx, qword ptr [r12]
	jmp	.label_1007
.label_1008:
	xor	ebp, ebp
.label_1007:
	cmp	rbp, rbx
	jae	.label_1015
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1011:
	mov	qword ptr [rcx + rbp*8], -1
	mov	qword ptr [rax + rbp*8], -1
	inc	rbp
	cmp	rbp, qword ptr [r12]
	jb	.label_1011
.label_1015:
	mov	r13d, r14d
.label_1006:
	mov	al, byte ptr [r8 + 0x38]
	add	r13b, r13b
	and	al, 0xf9
	mov	cl, r13b
	and	cl, 6
	or	cl, al
	and	r13b, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	r14, -2
	je	.label_998
.label_1012:
	mov	al, byte ptr [rsp + 0x88]
	mov	r14, qword ptr [rdi]
	test	al, al
	je	.label_998
	mov	rax, qword ptr [rsp + 0x40]
	cmp	r14, rax
	jne	.label_1002
	mov	r14, qword ptr [rdi + 8]
	sub	r14, rax
.label_998:
	call	free
.label_990:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1000:
	mov	qword ptr [rsp + 0x38], r8
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x30], rsi
	call	realloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_1016
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	call	realloc
	test	rax, rax
	je	.label_1013
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r12 + 8], rcx
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12], rbx
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdi, r15
	jmp	.label_996
.label_1001:
	mov	rdi, r14
	call	free
.label_1005:
	mov	r8, r15
	mov	rdi, qword ptr [rsp + 0x38]
	jmp	.label_1006
.label_1013:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1016:
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdi, r15
	jmp	.label_1006
.label_997:
	mov	edi, OFFSET FLAT:.str.23_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1002:
	mov	edi, OFFSET FLAT:.str.21_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c1a0

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c1c0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1018
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1021
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1018
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1020
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1023
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_1018
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	mov	r13, rax
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	mov	r9, r13
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_1020
.label_1021:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1019
.label_1018:
	mov	rax, -2
	jmp	.label_1022
.label_1019:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1020
.label_1023:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_1020:
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1022:
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
	#Procedure 0x40c2f0
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1026
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1029
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1026
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1025
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1027
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_1026
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	mov	r13, rax
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_1025
.label_1029:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1028
.label_1026:
	mov	rax, -2
	jmp	.label_1024
.label_1028:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1025
.label_1027:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_1025:
	mov	rax, qword ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1024:
	add	rsp, 0x28
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
	#Procedure 0x40c430
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9b, al
	or	r9b, 2
	test	rdx, rdx
	je	.label_1030
	mov	al, r9b
.label_1030:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c460

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	cmp	rax, rcx
	je	.label_1031
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_1031:
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rdi, qword ptr [rbx + 0x58]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c4c0

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1032
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_1033
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_1033
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1032
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_1033
	mov	qword ptr [rbx + 0x18], rax
.label_1032:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1034
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_1033
	mov	qword ptr [rbx + 8], rax
.label_1034:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_1033:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c550

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x40]
	mov	rax, qword ptr [r12 + 0x58]
	cmp	r13, rax
	cmovg	r13, rax
	cmp	byte ptr [r12 + 0x8a], 0
	jne	.label_1055
	cmp	qword ptr [r12 + 0x78], 0
	jne	.label_1055
	cmp	byte ptr [r12 + 0x8c], 0
	je	.label_1067
.label_1055:
	mov	rbx, qword ptr [r12 + 0x38]
	jmp	.label_1048
.label_1067:
	cmp	r13, r15
	jle	.label_1071
	lea	rax, [r12 + 0x78]
	mov	qword ptr [rsp + 0x10], rax
	lea	r14, [r12 + 0x20]
	jmp	.label_1058
.label_1056:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_1078
	cmp	rbp, -2
	jne	.label_1081
	mov	rax, qword ptr [r12 + 0x40]
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_1081
.label_1078:
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	je	.label_1085
.label_1039:
	mov	rax, r15
	jmp	.label_1037
.label_1085:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_1039
	nop	word ptr [rax + rax]
.label_1058:
	mov	qword ptr [rsp + 0x20], r13
	mov	rbp, qword ptr [r12]
	mov	rbx, qword ptr [r12 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r13d, byte ptr [rbp + rax]
	test	r13b, r13b
	js	.label_1045
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_1045
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r13*4]
	mov	rcx, qword ptr [r12 + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	mov	rax, r15
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_1037
	nop	word ptr cs:[rax + rax]
.label_1045:
	mov	r13, qword ptr [rsp + 0x20]
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x70], rax
	add	rbp, rbx
	add	rbp, r15
	lea	rdi, [rsp + 0x2c]
	mov	rsi, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rax, [rbp - 1]
	cmp	rax, -4
	ja	.label_1056
	mov	edi, dword ptr [rsp + 0x2c]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 0x2c]
	jne	.label_1083
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r12]
	add	rsi, qword ptr [r12 + 0x28]
	add	rsi, r15
	mov	rdx, rbp
	call	memcpy
	jmp	.label_1091
.label_1083:
	mov	esi, ebx
	mov	dword ptr [rsp + 0x18], esi
	mov	rbx, rbp
	lea	rbp, [rsp + 0x30]
	mov	rdi, rbp
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	jne	.label_1041
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbx
	mov	ebx, dword ptr [rsp + 0x18]
.label_1091:
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_1037
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_1037:
	cmp	r13, rax
	mov	r15, rax
	jg	.label_1058
	jmp	.label_1064
.label_1041:
	mov	rbx, r15
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_1065
.label_1081:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
.label_1071:
	mov	rax, r15
.label_1064:
	mov	qword ptr [r12 + 0x30], rax
	mov	qword ptr [r12 + 0x38], rax
	jmp	.label_1068
.label_1048:
	cmp	r15, r13
	jge	.label_1069
	lea	r14, [r12 + 0x20]
	lea	rcx, [r12 + 0x78]
.label_1065:
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rcx]
	test	rax, rax
	jne	.label_1076
	mov	rbp, qword ptr [r12]
	add	rbp, qword ptr [r12 + 0x28]
	add	rbp, rbx
.label_1054:
	lea	rdi, [rsp + 0x28]
	mov	rsi, rbp
	mov	rcx, r14
	mov	qword ptr [rsp + 0x18], r14
	call	rpl_mbrtowc
	mov	r14, rax
	lea	rax, [r14 - 1]
	cmp	rax, -4
	ja	.label_1089
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r13
	mov	edi, dword ptr [rsp + 0x28]
	call	towupper
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 0x28]
	je	.label_1038
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x70]
	mov	esi, r13d
	call	wcrtomb
	mov	r8, rax
	mov	rcx, r8
	sub	rcx, r14
	jne	.label_1049
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_1052
.label_1076:
	lea	rbp, [rsp + 0x30]
	movsxd	rcx, dword ptr [r12 + 0x90]
	test	rcx, rcx
	jle	.label_1054
	mov	r8, rbx
	xor	esi, esi
	nop	dword ptr [rax]
.label_1084:
	cmp	rsi, rdx
	jge	.label_1061
	mov	rdi, qword ptr [r12]
	add	rdi, qword ptr [r12 + 0x28]
	add	rdi, r8
	movzx	edi, byte ptr [rsi + rdi]
	mov	bl, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1084
	mov	rbx, r8
	jmp	.label_1054
.label_1089:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1072
	cmp	r14, -2
	jne	.label_1075
	mov	rax, qword ptr [r12 + 0x40]
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_1075
.label_1072:
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, rbx
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1079
.label_1051:
	movzx	eax, al
	mov	rcx, qword ptr [r12 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r12 + 0x8c], 0
	jne	.label_1086
.label_1053:
	inc	rbx
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	je	.label_1092
.label_1087:
	mov	rbp, r15
	jmp	.label_1048
.label_1049:
	cmp	r8, -1
	je	.label_1038
	lea	rbp, [r8 + r15]
	mov	rdi, qword ptr [r12 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1047
.label_1075:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
.label_1069:
	mov	qword ptr [r12 + 0x30], r15
	mov	qword ptr [r12 + 0x38], rbx
.label_1068:
	xor	eax, eax
.label_1057:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1038:
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1052:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r12 + 0x8c], 0
	je	.label_1060
	mov	rax, qword ptr [r12 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_1066
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_1066
	movq	xmm0, rbx
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [r14 - 4]
	mov	rsi, rdi
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	jb	.label_1070
	mov	edx, 1
	movq	xmm1, rdx
	pslldq	xmm1, 8
	paddq	xmm1, xmm0
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_670]]
	paddq	xmm2, xmm0
	movdqu	xmmword ptr [rax + r15*8], xmm1
	movdqu	xmmword ptr [rax + r15*8 + 0x10], xmm2
	mov	edx, 4
.label_1070:
	test	rsi, rsi
	je	.label_1090
	lea	rsi, [rax + r15*8 + 0x30]
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_670]]
	nop	word ptr cs:[rax + rax]
.label_1043:
	movq	xmm3, rdx
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x30], xmm4
	movdqu	xmmword ptr [rsi + rdx*8 - 0x20], xmm3
	lea	rdi, [rdx + 4]
	movq	xmm3, rdi
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x10], xmm4
	movdqu	xmmword ptr [rsi + rdx*8], xmm3
	add	rdx, 8
	cmp	rdx, rcx
	jne	.label_1043
.label_1090:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_1060
.label_1066:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + rbx]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
	nop	word ptr cs:[rax + rax]
.label_1080:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_1080
.label_1060:
	add	rbx, r14
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_1077
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	r13, qword ptr [rsp + 0x20]
	mov	r15, rbp
	jmp	.label_1048
.label_1077:
	mov	rbp, r15
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_1048
.label_1061:
	mov	rbx, r8
	jmp	.label_1054
.label_1047:
	mov	rax, qword ptr [r12 + 0x18]
	test	rax, rax
	jne	.label_1035
	shl	rdi, 3
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x20], r8
	call	malloc
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_1046
.label_1035:
	mov	qword ptr [rsp + 8], rcx
	cmp	byte ptr [r12 + 0x8c], 0
	jne	.label_1050
	test	r15, r15
	je	.label_1042
	xor	edx, edx
	cmp	r15, 4
	jb	.label_1044
	xor	edx, edx
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_1044
	lea	rdi, [r15 - 4]
	mov	rsi, rdi
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	jb	.label_1062
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_670]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edx, 4
.label_1062:
	test	rsi, rsi
	je	.label_1093
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_670]]
.label_1082:
	movq	xmm2, rdx
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm2
	lea	rsi, [rdx + 4]
	movq	xmm2, rsi
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x30], xmm2
	add	rdx, 8
	cmp	rdx, rcx
	jne	.label_1082
.label_1093:
	cmp	r15, rcx
	mov	rdx, rcx
	je	.label_1042
.label_1044:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1044
.label_1042:
	mov	byte ptr [r12 + 0x8c], 1
.label_1050:
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, r8
	mov	qword ptr [rsp + 0x20], r8
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	mov	rax, qword ptr [r12 + 0x18]
	mov	qword ptr [rax + r15*8], rbx
	cmp	rdi, 2
	mov	r11, qword ptr [rsp + 0x10]
	jb	.label_1059
	mov	r9, qword ptr [r12 + 0x10]
	mov	r8, qword ptr [r12 + 0x18]
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_1063
	mov	rcx, r10
	and	rcx, 0xfffffffffffffffc
	mov	r13, r10
	and	r13, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1063
	mov	rax, rcx
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm3, xmm0, 0x44
	movq	xmm1, r11
	mov	rdi, r11
	pshufd	xmm11, xmm1, 0x44
	movq	xmm2, rbx
	mov	r11, rbx
	pshufd	xmm12, xmm2, 0x44
	lea	rcx, [r8 + r15*8 + 0x18]
	lea	rdx, [r9 + r15*4 + 0xc]
	xor	esi, esi
	mov	ebx, 1
	movq	xmm10, rbx
	pslldq	xmm10, 8
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_670]]
	movdqa	xmm9,  xmmword ptr [word ptr [rip + label_1073]]
	pxor	xmm3, xmm9
	pshufd	xmm6,  xmmword ptr [word ptr [rip + label_1074]],  0xe8
.label_1040:
	lea	rbx, [rsi + 1]
	movq	xmm4, rbx
	pshufd	xmm7, xmm4, 0x44
	movdqa	xmm5, xmm7
	paddq	xmm5, xmm10
	paddq	xmm7, xmm8
	movdqa	xmm4, xmm5
	pxor	xmm4, xmm9
	movdqa	xmm0, xmm3
	pcmpgtd	xmm0, xmm4
	pshufd	xmm1, xmm0, 0xa0
	pcmpeqd	xmm4, xmm3
	pshufd	xmm4, xmm4, 0xf5
	pand	xmm4, xmm1
	pshufd	xmm0, xmm0, 0xf5
	por	xmm0, xmm4
	movdqa	xmm1, xmm7
	pxor	xmm1, xmm9
	movdqa	xmm4, xmm3
	pcmpgtd	xmm4, xmm1
	pshufd	xmm2, xmm4, 0xa0
	pcmpeqd	xmm1, xmm3
	pshufd	xmm1, xmm1, 0xf5
	pand	xmm1, xmm2
	pshufd	xmm2, xmm4, 0xf5
	por	xmm2, xmm1
	pand	xmm5, xmm0
	pandn	xmm0, xmm11
	por	xmm0, xmm5
	pand	xmm7, xmm2
	pandn	xmm2, xmm11
	por	xmm2, xmm7
	paddq	xmm0, xmm12
	paddq	xmm2, xmm12
	movdqu	xmmword ptr [rcx + rsi*8 - 0x10], xmm0
	movdqu	xmmword ptr [rcx + rsi*8], xmm2
	movq	qword ptr [rdx + rsi*4 - 8], xmm6
	movq	qword ptr [rdx + rsi*4], xmm6
	add	rsi, 4
	cmp	r13, rsi
	jne	.label_1040
	cmp	r10, r13
	mov	rbx, r11
	mov	r11, rdi
	mov	rdi, qword ptr [rsp + 0x20]
	je	.label_1059
.label_1063:
	lea	rcx, [r9 + r15*4]
	lea	rdx, [r8 + r15*8]
.label_1088:
	cmp	rax, r14
	mov	rsi, r11
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_1088
.label_1059:
	mov	rax, qword ptr [r12 + 0x58]
	mov	rcx, qword ptr [rsp + 8]
	add	rax, rcx
	mov	qword ptr [r12 + 0x58], rax
	cmp	qword ptr [r12 + 0x60], rbx
	jle	.label_1036
	add	qword ptr [r12 + 0x68], rcx
.label_1036:
	mov	r13, qword ptr [r12 + 0x40]
	cmp	r13, rax
	cmovg	r13, rax
	add	rbx, r14
	mov	r15, rbp
	jmp	.label_1048
.label_1079:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1051
.label_1086:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rcx + r15*8], rbx
	jmp	.label_1053
.label_1092:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_1087
.label_1046:
	mov	eax, 0xc
	jmp	.label_1057
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ce70

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	jle	.label_1102
	lea	r14, [rbx + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1100
	nop	dword ptr [rax + rax]
.label_1097:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [rbx + 0x78]
	test	rax, rax
	jne	.label_1105
.label_1106:
	mov	qword ptr [r14], rbp
	mov	eax, 1
	jmp	.label_1099
.label_1101:
	mov	ecx, dword ptr [rsp + 0xc]
	nop	dword ptr [rax]
.label_1099:
	mov	rdx, qword ptr [rbx + 0x10]
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	jge	.label_1095
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1095:
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_1100
	jmp	.label_1103
.label_1104:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1098
	nop	dword ptr [rax + rax]
.label_1096:
	cmp	rax, rdx
	jge	.label_1094
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	cmp	rax, rcx
	jl	.label_1096
	lea	rsi, [rsp + 0x10]
	jmp	.label_1098
.label_1105:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_1106
.label_1094:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1098
	nop	word ptr cs:[rax + rax]
.label_1100:
	mov	rdx, r12
	sub	rdx, r13
	mov	rbp, qword ptr [rbx + 0x20]
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_1104
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_1098:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1097
	cmp	rax, -2
	jne	.label_1101
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_1097
	mov	qword ptr [r14], rbp
.label_1102:
	mov	rcx, r13
.label_1103:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
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
	#Procedure 0x40d010

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	r12, rdi
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp], rax
	call	parse_branch
	mov	rbx, rax
	xor	ebp, ebp
	test	rbx, rbx
	jne	.label_1119
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax]
	test	eax, eax
	jne	.label_1120
.label_1119:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	jne	.label_1117
	mov	rax, qword ptr [rsp + 0x10]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1118
.label_1122:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1110
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1111
	nop	word ptr cs:[rax + rax]
.label_1118:
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [r12 + 0x48], rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	mov	r15d, 0
	je	.label_1115
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_1123
	cmp	eax, 9
	mov	r15d, 0
	je	.label_1115
.label_1123:
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14 + 0xa8], rax
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, rbp
	call	parse_branch
	mov	r15, rax
	test	r15, r15
	jne	.label_1114
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1108
.label_1114:
	mov	rax, qword ptr [rsp + 0x20]
	or	qword ptr [r14 + 0xa8], rax
	nop	word ptr [rax + rax]
.label_1115:
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_1122
	mov	rax, qword ptr [r14 + 0x70]
.label_1111:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1124
	mov	qword ptr [rbx], rbp
.label_1124:
	test	r15, r15
	je	.label_1116
	mov	qword ptr [r15], rbp
.label_1116:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	mov	rbx, rbp
	je	.label_1118
	jmp	.label_1120
.label_1117:
	mov	rbp, rbx
.label_1120:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1108:
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_1120
	mov	r14d, 0x400ff
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1107:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_1107
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1107
	nop	word ptr cs:[rax + rax]
.label_1109:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1112
	cmp	eax, 6
	jne	.label_1113
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1121
	nop	dword ptr [rax]
.label_1112:
	mov	rdi, qword ptr [r15 + 0x28]
.label_1121:
	call	free
.label_1113:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1120
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_1109
	test	rbx, rbx
	mov	r15, rax
	je	.label_1109
	jmp	.label_1107
.label_1110:
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [rax], 0xc
	xor	ebp, ebp
	jmp	.label_1120
	.section	.text
	.align	32
	#Procedure 0x40d2a0

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_1153
	mov	r13, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	mov	byte ptr [r15], r12b
	mov	ebx, dword ptr [r15 + 8]
	mov	eax, ebx
	and	eax, 0xff9fffff
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	jl	.label_1159
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1159
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1163
.label_1159:
	cmp	r12d, 0x5c
	jne	.label_1126
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1129
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_1133
.label_1134:
	mov	rcx, qword ptr [rbp + 8]
	mov	r14b, byte ptr [rcx + rax]
.label_1131:
	mov	byte ptr [r15], r14b
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1136
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_1141
.label_1153:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_1128
.label_1126:
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1145
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebx, dword ptr [rax + rcx*4]
	mov	edi, ebx
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_1157
.label_1129:
	and	ebx, 0xff9fff00
	or	ebx, 0x24
	jmp	.label_1162
.label_1145:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r12*2]
	cmp	r12d, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, ebx
.label_1157:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	cmp	r12d, 0x3e
	jg	.label_1130
	lea	ecx, [r12 - 0x24]
	cmp	ecx, 0xa
	ja	.label_1132
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1127]]
.label_2506:
	mov	rdx, r13
	test	dl, 8
	jne	.label_1135
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_1135
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	cmp	eax, 1
	ja	.label_1128
	mov	eax, dword ptr [r15 + 8]
.label_1135:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_1128
.label_1130:
	cmp	r12d, 0x7a
	jg	.label_1148
	cmp	r12d, 0x3f
	je	.label_1151
	cmp	r12d, 0x5b
	mov	rdx, r13
	je	.label_1152
	cmp	r12d, 0x5e
	jne	.label_1128
	test	edx, 0x800008
	jne	.label_1158
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_1158
	test	dh, 8
	je	.label_1128
	mov	rdx, qword ptr [rbp + 8]
	movzx	ecx, byte ptr [rcx + rdx - 1]
	cmp	ecx, 0xa
	jne	.label_1128
.label_1158:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_1128
.label_1136:
	movzx	ebp, r14b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, ebx
.label_1141:
	mov	dword ptr [r15 + 8], eax
	movzx	ecx, r14b
	mov	r14d, 2
	cmp	ecx, 0x5f
	jg	.label_1156
	lea	edx, [rcx - 0x27]
	cmp	edx, 0x2c
	ja	.label_1138
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1137]]
.label_2520:
	mov	rdx, r13
	test	dh, 0x40
	jne	.label_1128
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	ecx, -0x31
	movsxd	rax, ecx
	mov	qword ptr [r15], rax
	jmp	.label_1128
.label_1148:
	cmp	r12d, 0x7b
	je	.label_1142
	cmp	r12d, 0x7c
	mov	rcx, r13
	je	.label_1154
	cmp	r12d, 0x7d
	jne	.label_1128
	and	ecx, 0x1200
	cmp	rcx, 0x1200
	je	.label_1147
	jmp	.label_1128
.label_1163:
	and	ebx, 0xff9fff00
	or	ebx, 0x200001
.label_1162:
	mov	dword ptr [r15 + 8], ebx
	mov	r14d, 1
.label_1128:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1156:
	lea	edx, [rcx - 0x73]
	cmp	edx, 0xa
	ja	.label_1149
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1160]]
.label_2379:
	test	r13d, 0x80000
	jne	.label_1128
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1128
.label_1132:
	cmp	r12d, 0xa
	jne	.label_1128
	mov	rcx, r13
	test	ch, 8
	jne	.label_1150
	jmp	.label_1128
.label_2507:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1125
	jmp	.label_1128
.label_2508:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1139
	jmp	.label_1128
.label_2509:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1128
.label_2510:
	test	r13w, 0x402
	jne	.label_1128
	jmp	.label_1143
.label_2511:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1128
.label_1151:
	test	r13w, 0x402
	jne	.label_1128
	jmp	.label_1140
.label_1152:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1128
.label_1142:
	and	r13d, 0x1200
	cmp	r13, 0x1200
	je	.label_1144
	jmp	.label_1128
.label_1154:
	test	ch, 4
	jne	.label_1128
	test	cx, cx
	js	.label_1150
	jmp	.label_1128
.label_1149:
	cmp	ecx, 0x60
	je	.label_1155
	cmp	ecx, 0x62
	jne	.label_1128
	test	r13d, 0x80000
	jne	.label_1128
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_1128
.label_1133:
	cmp	edx, 2
	jl	.label_1161
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_1134
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_1161
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_1134
.label_1161:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_1146
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1146:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	r14b, byte ptr [rcx + rsi]
	je	.label_1131
	test	r14b, r14b
	js	.label_1134
	jmp	.label_1131
.label_1138:
	cmp	ecx, 0x57
	jne	.label_1128
	test	r13d, 0x80000
	jne	.label_1128
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1128
.label_2380:
	test	r13d, 0x80000
	jne	.label_1128
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1128
.label_2381:
	and	r13d, 0x1200
	cmp	r13, 0x200
	jne	.label_1128
.label_1144:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1128
.label_2382:
	mov	rcx, r13
	test	ch, 4
	jne	.label_1128
	test	cx, cx
	js	.label_1128
.label_1150:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1128
.label_2383:
	and	r13d, 0x1200
	cmp	r13, 0x200
	jne	.label_1128
.label_1147:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1128
.label_1155:
	test	r13d, 0x80000
	jne	.label_1128
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_1128
.label_2516:
	test	r13d, 0x80000
	jne	.label_1128
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_1128
.label_2517:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1128
.label_1125:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1128
.label_2518:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1128
.label_1139:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1128
.label_2519:
	and	r13d, 0x402
	cmp	r13, 2
	jne	.label_1128
.label_1143:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1128
.label_2521:
	test	r13d, 0x80000
	jne	.label_1128
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_1128
.label_2522:
	test	r13d, 0x80000
	jne	.label_1128
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_1128
.label_2523:
	and	r13d, 0x402
	cmp	r13, 2
	jne	.label_1128
.label_1140:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1128
.label_2524:
	test	r13d, 0x80000
	jne	.label_1128
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_1128
.label_2525:
	test	r13d, 0x80000
	jne	.label_1128
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1128
	.section	.text
	.align	32
	#Procedure 0x40d940

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	r15, r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rdi
	mov	r14, qword ptr [rsi]
	call	parse_expression
	mov	rbp, rbx
	mov	rbx, rax
	xor	r12d, r12d
	test	rbx, rbx
	jne	.label_1164
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_1164
	jmp	.label_1165
	nop	word ptr [rax + rax]
.label_1186:
	test	rbx, rbx
	cmove	rbx, r12
.label_1164:
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	je	.label_1167
	test	r15, r15
	je	.label_1172
	cmp	eax, 9
	je	.label_1168
.label_1172:
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r15
	mov	r9, rbp
	call	parse_expression
	mov	r12, rax
	test	r12, r12
	jne	.label_1180
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1171
.label_1180:
	test	rbx, rbx
	je	.label_1186
	test	r12, r12
	je	.label_1186
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_1188
	mov	rax, qword ptr [r14 + 0x70]
.label_1184:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r12], rdx
	mov	rbx, rdx
	jmp	.label_1164
.label_1188:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1182
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1184
.label_1171:
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_1165
	mov	r14d, 0x400ff
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1169:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1169
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1169
	nop	word ptr cs:[rax + rax]
.label_1166:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1183
	cmp	eax, 6
	jne	.label_1176
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1189
	nop	dword ptr [rax]
.label_1183:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1189:
	call	free
.label_1176:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1165
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1166
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1166
	jmp	.label_1169
.label_1167:
	mov	r12, rbx
	jmp	.label_1165
.label_1168:
	mov	r12, rbx
.label_1165:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1182:
	mov	r14d, 0x400ff
	mov	rcx, rbp
.label_1177:
	mov	rbp, r12
	mov	r12, qword ptr [rbp + 8]
	test	r12, r12
	jne	.label_1177
	mov	r12, qword ptr [rbp + 0x10]
	test	r12, r12
	jne	.label_1177
	nop	word ptr cs:[rax + rax]
.label_1175:
	mov	r12, rcx
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1187
	cmp	eax, 6
	jne	.label_1190
	mov	r15, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_1178
.label_1187:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1178:
	call	free
.label_1190:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rcx, r12
	je	.label_1179
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rbp
	mov	rbp, rax
	je	.label_1175
	test	r12, r12
	mov	rbp, rax
	je	.label_1175
	jmp	.label_1177
.label_1179:
	mov	r14d, 0x400ff
.label_1170:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1170
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1170
	nop	dword ptr [rax + rax]
.label_1173:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1185
	cmp	eax, 6
	jne	.label_1174
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	mov	r15, rcx
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	call	free
	mov	rcx, r15
	jmp	.label_1174
.label_1185:
	mov	rdi, qword ptr [rbp + 0x28]
	mov	rbx, rcx
	call	free
	mov	rcx, rbx
.label_1174:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1181
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1173
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1173
	jmp	.label_1170
.label_1181:
	mov	dword ptr [rcx], 0xc
	xor	r12d, r12d
	jmp	.label_1165
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc90

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r12, r9
	mov	qword ptr [rsp + 0x18], r12
	mov	r13, r8
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x40], rdx
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x38], rdi
	mov	eax, dword ptr [rdx + 8]
	movzx	ecx, al
	xor	r15d, r15d
	lea	edx, [rcx - 1]
	cmp	edx, 0x23
	ja	.label_1230
	mov	r9, qword ptr [rbx]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1247]]
.label_2426:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x21
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_3
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	rdi, r9
	mov	rbx, r9
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	je	.label_1324
	mov	r9, rbx
	jmp	.label_1202
.label_2427:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x23
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_1
	mov	ecx, OFFSET FLAT:.str
	mov	rdi, r9
	mov	rbx, r9
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_1283
.label_1324:
	mov	eax, dword ptr [r12]
	test	eax, eax
	mov	r9, rbx
	je	.label_1202
	jmp	.label_1230
.label_2417:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1224
	mov	rax, qword ptr [r9 + 0x70]
.label_1233:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x40]
	movdqu	xmm1, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 2
	jl	.label_1301
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rcx + 0x48]
	cmp	qword ptr [rcx + 0x68], rax
	jg	.label_1321
	mov	rbp, r15
	jmp	.label_1202
.label_1308:
	mov	rbp, r9
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1330
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	mov	r9, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1338
	mov	rax, qword ptr [r9 + 0x70]
.label_1404:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm1, xmm1
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x40]
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1399:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1370
	mov	rax, qword ptr [r9 + 0x70]
.label_1352:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r15
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r15], rdx
	test	rbp, rbp
	je	.label_1306
	mov	qword ptr [rbp], rdx
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	mov	r15, rdx
	mov	rbp, rdx
	jg	.label_1321
	jmp	.label_1202
.label_1338:
	mov	edi, 0x3c8
	mov	rbp, r9
	call	malloc
	mov	r9, rbp
	test	rax, rax
	mov	ebp, 0
	je	.label_1399
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1404
.label_1370:
	mov	edi, 0x3c8
	mov	r13, r9
	call	malloc
	mov	r9, r13
	test	rax, rax
	je	.label_1306
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1352
.label_1321:
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1308
	mov	rbp, r15
	jmp	.label_1202
.label_2418:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	cl, byte ptr [rbx]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [r9 + 0xa8], rax
	je	.label_1418
	or	qword ptr [r9 + 0xa0], rax
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1424
	mov	rax, qword ptr [r9 + 0x70]
.label_1412:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	inc	qword ptr [r9 + 0x98]
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_1202
.label_2419:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1194
	mov	rax, qword ptr [r9 + 0x70]
	mov	rsi, qword ptr [rsp + 0x40]
.label_1401:
	mov	qword ptr [rsp + 0x40], rsi
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 1
	jle	.label_1202
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_1202
.label_2420:
	mov	qword ptr [rsp + 0x20], r9
	mov	r15, qword ptr [rbx + 0x30]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x30], rax
	mov	rdx, qword ptr [rsp + 0x48]
	or	rdx, 0x800000
	mov	r14, qword ptr [rsp + 0x40]
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r14 + 8]
	xor	esi, esi
	cmp	eax, 9
	je	.label_1238
	mov	rbp, r15
	inc	r13
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	mov	rsi, rax
	xor	r15d, r15d
	cmp	dword ptr [r12], 0
	jne	.label_1230
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 9
	jne	.label_1262
	mov	r15, rbp
.label_1238:
	cmp	r15, 8
	mov	r9, qword ptr [rsp + 0x20]
	mov	rbx, r15
	ja	.label_1267
	mov	eax, 1
	mov	cl, bl
	shl	eax, cl
	cdqe	
	or	qword ptr [r9 + 0xa8], rax
.label_1267:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1278
	mov	rax, qword ptr [r9 + 0x70]
.label_1420:
	mov	qword ptr [rsp + 0x40], r14
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rsi
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rsi, rsi
	je	.label_1287
	mov	qword ptr [rsi], rbp
.label_1287:
	mov	qword ptr [rax + rcx + 0x30], rbx
	jmp	.label_1202
.label_2421:
	mov	rcx, qword ptr [rsp + 0x48]
	test	ecx, 0x20000
	jne	.label_1312
	mov	dword ptr [r12], 0x10
	jmp	.label_1315
.label_2423:
	mov	r15, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [r15]
	test	ax, 0x30f
	je	.label_1320
	mov	al, byte ptr [r9 + 0xb0]
	test	al, 0x10
	jne	.label_1235
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r9 + 0xb0], cl
	xor	ebx, ebx
	test	al, 8
	mov	ebp, 0
	jne	.label_1328
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1335]]
	movdqu	xmmword ptr [r9 + 0xb8], xmm0
	mov	ebp, 2
	mov	ebx, 0x80
	test	al, 4
	je	.label_1328
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r9 + 0xc8], xmm0
.label_1235:
	mov	eax, dword ptr [r15]
.label_1320:
	cmp	eax, 0x200
	je	.label_1348
	cmp	eax, 0x100
	jne	.label_1350
	mov	dword ptr [r15], 6
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1356
	mov	rax, qword ptr [r9 + 0x70]
.label_1325:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	jmp	.label_1364
.label_2425:
	mov	rcx, qword ptr [rsp + 0x48]
	test	ecx, 0x1000000
	jne	.label_1377
.label_2422:
	mov	rcx, qword ptr [rsp + 0x48]
	test	cl, 0x20
	jne	.label_1377
	test	cl, 0x10
	jne	.label_1393
.label_1312:
	and	eax, 0xffffff00
	or	eax, 1
	mov	rbx, qword ptr [rsp + 0x40]
	mov	dword ptr [rbx + 8], eax
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1395
	mov	rax, qword ptr [r9 + 0x70]
.label_1357:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_1326:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_1202
.label_2428:
	mov	dword ptr [r12], 5
	jmp	.label_1315
.label_2424:
	mov	qword ptr [rsp + 0x20], r9
	mov	qword ptr [rsp + 0xe0], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	r13, r13
	je	.label_1421
	test	rbx, rbx
	je	.label_1421
	mov	qword ptr [rsp + 0x58], rbx
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	cmp	edx, 0x19
	je	.label_1428
	cmp	edx, 2
	je	.label_1220
	mov	dword ptr [rsp + 0x50], 0
	jmp	.label_1432
.label_1283:
	mov	r9, rbx
	jmp	.label_1202
.label_1393:
	mov	r15, qword ptr [rsp + 0x40]
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	mov	r14, qword ptr [rsp + 0x48]
	mov	rdx, r14
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	mov	r8, r13
	mov	r9, r12
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_expression
.label_1301:
	mov	rbp, r15
	jmp	.label_1202
.label_1428:
	mov	rcx, qword ptr [rsp + 0x58]
	or	byte ptr [rcx + 0x20], 1
	test	bh, 1
	je	.label_1307
	or	byte ptr [r13 + 1], 4
.label_1307:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x38]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	cmp	edx, 2
	je	.label_1220
	mov	dl, 1
	mov	dword ptr [rsp + 0x50], edx
.label_1432:
	mov	qword ptr [rsp + 0x60], r13
	movzx	edx, cl
	cmp	edx, 0x15
	jne	.label_1229
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rbp + 8], ecx
.label_1229:
	lea	rcx, [rsp + 0xa0]
	mov	qword ptr [rsp + 0xd8], rcx
	mov	dword ptr [rsp + 0xd0], 3
	lea	rdi, [rsp + 0xd0]
	mov	r9d, 1
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbp
	mov	ecx, eax
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1250
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1291
.label_1332:
	cmp	eax, 2
	je	.label_1257
	mov	qword ptr [rsp + 0x58], r15
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	lea	rax, [rsp + 0xa0]
	mov	qword ptr [rsp + 0xd8], rax
	mov	dword ptr [rsp + 0xd0], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0xd0]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdx, rbp
	mov	ecx, ebx
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_1291
	jmp	.label_1250
.label_2463:
	mov	cl, byte ptr [rsp + 0xd8]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	jmp	.label_1294
.label_2464:
	mov	r15, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbp, qword ptr [rsp + 0x28]
	cmp	rbp, rcx
	je	.label_1303
	mov	rax, qword ptr [r15]
.label_1406:
	mov	r9, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x60]
	mov	edx, dword ptr [rsp + 0xd8]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_1198
.label_1260:
	mov	rax, qword ptr [rsp + 0xd8]
	mov	al, byte ptr [rax]
	jmp	.label_1245
.label_1409:
	xor	eax, eax
.label_1245:
	cmp	ebx, 3
	je	.label_1322
	test	ebx, ebx
	jne	.label_1323
	mov	bpl, byte ptr [rsp + 0xc8]
	jmp	.label_1329
.label_1322:
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	bpl, byte ptr [rcx]
	jmp	.label_1329
.label_1323:
	xor	ebp, ebp
.label_1329:
	cmp	r15d, 3
	je	.label_1240
	test	r15d, r15d
	jne	.label_1334
.label_1240:
	test	r12, r12
	movzx	edx, al
	je	.label_1336
	mov	edi, edx
	call	btowc
	mov	edx, eax
	jmp	.label_1336
.label_1334:
	mov	edx, dword ptr [rsp + 0xd8]
.label_1336:
	cmp	ebx, 3
	je	.label_1239
	test	ebx, ebx
	jne	.label_1343
.label_1239:
	test	r12, r12
	movzx	ebp, bpl
	je	.label_1345
	mov	edi, ebp
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	ebp, eax
	jmp	.label_1345
.label_1343:
	mov	ebp, dword ptr [rsp + 0xc8]
.label_1345:
	cmp	edx, -1
	mov	ecx, 3
	je	.label_1264
	cmp	ebp, -1
	je	.label_1264
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1359
	cmp	edx, ebp
	mov	ecx, 0xb
	ja	.label_1264
.label_1359:
	test	r12, r12
	je	.label_1381
	mov	rax, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x10], rax
	je	.label_1368
	mov	rdi, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	mov	r9, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebx, dword ptr [rsp + 0xc]
.label_1361:
	mov	dword ptr [rdi + rax*4], edx
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [r14 + rax*4], ebp
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1314
.label_1381:
	mov	r12, qword ptr [rsp + 0x18]
	mov	r9, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebx, dword ptr [rsp + 0xc]
.label_1314:
	mov	eax, ebp
	mov	edx, edx
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
.label_1422:
	cmp	rdx, rcx
	ja	.label_1258
	cmp	rcx, rax
	ja	.label_1258
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r13 + rdi*8], rsi
.label_1258:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_1422
	mov	dword ptr [r12], 0
	jmp	.label_1198
.label_1303:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_1241
	lea	rbp, [rbp + rbp + 1]
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	jmp	.label_1406
.label_1368:
	mov	dword ptr [rsp + 8], edx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r12 + 8]
	lea	rbx, [rax*4 + 4]
	mov	rsi, rbx
	call	realloc
	mov	r14, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbx
	call	realloc
	mov	rdi, r14
	mov	r14, rax
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x58]
	je	.label_1416
	test	r14, r14
	je	.label_1416
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], r14
	mov	rax, qword ptr [r12 + 0x40]
	mov	r9, r13
	mov	ebx, dword ptr [rsp + 0xc]
	mov	edx, dword ptr [rsp + 8]
	jmp	.label_1361
.label_1291:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebx, eax
	mov	r15d, dword ptr [rsp + 0xd0]
	cmp	r15d, 2
	je	.label_1431
	cmp	r15d, 4
	jne	.label_1435
	mov	rax, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0xd8]
	mov	r13, qword ptr [rsp + 0x60]
	mov	rsi, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	rdx, r15
	lea	rcx, [rsp + 0xe0]
	mov	r9, qword ptr [rsp + 0x48]
	call	build_charclass
	mov	dword ptr [r12], eax
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_1198
	jmp	.label_1204
.label_1435:
	movzx	eax, byte ptr [rbp + 8]
	cmp	eax, 0x16
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_1205
	cmp	eax, 2
	jne	.label_1209
	jmp	.label_1211
.label_1205:
	mov	r13, r9
	movsxd	rax, ebx
	mov	rbp, qword ptr [rsp + 0x38]
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x78]
	cmp	ecx, 0x15
	je	.label_1223
	cmp	ecx, 2
	je	.label_1228
	lea	rcx, [rsp + 0x80]
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dword ptr [rsp + 0xc0], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0xc0]
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	lea	rdx, [rsp + 0x70]
	mov	ecx, eax
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1246
	mov	qword ptr [rsp + 0x18], r12
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	cmp	dword ptr [r13 + 0xb4], 1
	mov	r12, qword ptr [rsp + 0x58]
	jg	.label_1254
	xor	r12d, r12d
.label_1254:
	mov	ecx, 0xb
	mov	ebx, dword ptr [rsp + 0xc0]
	cmp	ebx, 2
	je	.label_1264
	mov	dword ptr [rsp + 0xc], eax
	cmp	ebx, 4
	je	.label_1264
	cmp	r15d, 3
	jne	.label_1385
	mov	rdi, qword ptr [rsp + 0xd8]
	call	strlen
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_1264
.label_1385:
	cmp	ebx, 3
	jne	.label_1281
	mov	rdi, qword ptr [rsp + 0xc8]
	call	strlen
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_1264
.label_1281:
	cmp	r15d, 3
	je	.label_1260
	test	r15d, r15d
	jne	.label_1409
	mov	al, byte ptr [rsp + 0xd8]
	jmp	.label_1245
.label_1223:
	mov	eax, ebx
	neg	eax
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rax, qword ptr [rsp + 0x40]
	mov	byte ptr [rax + 8], 1
	mov	r9, r13
.label_1209:
	mov	qword ptr [rsp + 0x20], r9
	mov	eax, r15d
	cmp	r15d, 3
	ja	.label_1305
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1309]]
.label_1431:
	mov	rbp, qword ptr [rsp + 0xd8]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_1316
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_1294:
	mov	r9, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x58]
.label_1198:
	mov	rax, qword ptr [rsp + 0x40]
	movzx	eax, byte ptr [rax + 8]
	cmp	eax, 0x15
	jne	.label_1332
	movsxd	rax, ebx
	mov	rcx, qword ptr [rsp + 0x38]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x50]
	test	al, al
	je	.label_1337
	movdqu	xmm0, xmmword ptr [r13]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13], xmm0
	movdqu	xmm0, xmmword ptr [r13 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13 + 0x10], xmm0
.label_1337:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_1353
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r13], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r13 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r13 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r13 + 0x18], rcx
.label_1353:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_1231
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_1231
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_1231
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_1231
	cmp	eax, 2
	jl	.label_1425
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1231
	test	byte ptr [r15 + 0x20], 1
	jne	.label_1231
.label_1425:
	mov	rdi, qword ptr [r15]
	mov	rbp, r9
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	r9, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1215
	mov	rax, qword ptr [r9 + 0x70]
.label_1402:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r13
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_1326
.label_1231:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1408
	mov	rax, qword ptr [r9 + 0x70]
.label_1244:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdi, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r15
	mov	dword ptr [rax + rcx + 0x38], 6
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r13], 0
	jne	.label_1411
	cmp	qword ptr [r13 + 8], 0
	jne	.label_1411
	cmp	qword ptr [r13 + 0x10], 0
	jne	.label_1411
	cmp	qword ptr [r13 + 0x18], 0
	je	.label_1340
.label_1411:
	mov	qword ptr [rsp + 0x60], r13
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_1426
	mov	rbp, qword ptr [r9 + 0x70]
.label_1365:
	lea	ecx, [rax + 1]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rbp + rbx + 0x30], rax
	mov	dword ptr [rbp + rbx + 0x38], 3
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1430
	mov	rax, qword ptr [r9 + 0x70]
.label_1415:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdx
	mov	qword ptr [rax + rcx + 0x18], rdi
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rdx], rbp
	mov	qword ptr [rdi], rbp
	jmp	.label_1202
.label_1348:
	mov	dword ptr [r15], 5
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1227
	mov	rax, qword ptr [r9 + 0x70]
.label_1327:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 0xa
.label_1364:
	mov	dword ptr [r13], ecx
	mov	ebx, dword ptr [r15]
	cmp	ebx, 0xf
	je	.label_1255
	mov	rax, qword ptr [r9 + 0x70]
.label_1391:
	lea	ecx, [rbx + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1427:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_1284
	mov	rax, qword ptr [r9 + 0x70]
.label_1437:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbp
	mov	qword ptr [rax + rcx + 0x18], rbx
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbp, rbp
	je	.label_1289
	mov	qword ptr [rbp], r15
.label_1289:
	test	rbx, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	je	.label_1306
	mov	qword ptr [rbx], r15
	test	rbp, rbp
	jne	.label_1310
	jmp	.label_1306
.label_1350:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1313
	mov	r13, r15
	mov	rax, qword ptr [r9 + 0x70]
.label_1339:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rdx, qword ptr [rsp + 0x48]
.label_1310:
	mov	rdi, r13
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_1230
.label_1395:
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1306
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1357
.label_1250:
	mov	qword ptr [rsp + 0x48], rbx
	mov	dword ptr [r12], eax
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1196
.label_1220:
	mov	dword ptr [r12], 2
	jmp	.label_1372
.label_1257:
	mov	dword ptr [r12], 7
.label_1204:
	mov	qword ptr [rsp + 0x20], r9
	jmp	.label_1379
.label_1330:
	mov	r9, rbp
	mov	rbp, r15
	jmp	.label_1202
.label_1224:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1306
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1233
.label_1418:
	mov	dword ptr [r12], 6
	jmp	.label_1315
.label_1194:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rsi, qword ptr [rsp + 0x40]
	je	.label_1306
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1401
.label_1421:
	mov	rdi, r13
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_1306
.label_1424:
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1306
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1412
.label_1278:
	mov	r15, rsi
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1306
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rsi, r15
	jmp	.label_1420
.label_1255:
	mov	edi, 0x3c8
	mov	rbx, r9
	call	malloc
	mov	r9, rbx
	xor	ebx, ebx
	test	rax, rax
	je	.label_1427
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_1391
.label_1284:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1306
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_1437
.label_1316:
	mov	dword ptr [r12], 3
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1196
.label_1328:
	mov	r13, r9
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdx, qword ptr [rax]
	inc	rbx
.label_1232:
	mov	rsi, rbx
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1410:
	test	byte ptr [rdx + rsi*2 - 2], 8
	je	.label_1212
	mov	edi, 1
	mov	cl, al
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1212:
	cmp	esi, 0x5f
	je	.label_1218
	movzx	ecx, word ptr [rdx + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_1219
.label_1218:
	lea	ecx, [rax + 1]
	mov	edi, 1
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1219:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_1410
	inc	rbp
	add	rbx, 0x40
	cmp	ebp, 4
	jne	.label_1232
	jmp	.label_1235
.label_1408:
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1241
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_1244
.label_1426:
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1241
	mov	r9, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	rdi, rbx
	jmp	.label_1365
.label_1430:
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1241
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rdi, r15
	jmp	.label_1415
.label_1211:
	mov	dword ptr [r12], 7
	jmp	.label_1196
.label_1356:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	ebp, ebp
	test	rax, rax
	je	.label_1304
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1325
.label_1227:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	ebp, ebp
	test	rax, rax
	je	.label_1349
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1327
.label_1313:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1306
	mov	r13, r15
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1339
.label_1306:
	mov	dword ptr [r12], 0xc
	jmp	.label_1315
.label_1228:
	mov	dword ptr [r12], 7
	jmp	.label_1355
.label_1340:
	mov	rbp, rdi
	mov	rdi, r13
	mov	rbx, r9
	call	free
	mov	r9, rbx
	jmp	.label_1202
.label_1262:
	test	rsi, rsi
	je	.label_1362
	mov	r14d, 0x400ff
.label_1366:
	mov	rbp, rsi
	mov	rsi, qword ptr [rbp + 8]
	test	rsi, rsi
	jne	.label_1366
	mov	rsi, qword ptr [rbp + 0x10]
	test	rsi, rsi
	jne	.label_1366
.label_1389:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1407
	cmp	eax, 6
	jne	.label_1375
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1384
.label_1407:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1384:
	call	free
.label_1375:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1362
	mov	rsi, qword ptr [rax + 0x10]
	cmp	rsi, rbp
	mov	rbp, rax
	je	.label_1389
	test	rsi, rsi
	mov	rbp, rax
	je	.label_1389
	jmp	.label_1366
.label_1362:
	mov	dword ptr [r12], 8
	jmp	.label_1315
.label_1304:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1364
.label_1349:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_1364
.label_1246:
	mov	dword ptr [r12], eax
	jmp	.label_1355
.label_1215:
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1241
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_1402
.label_1241:
	mov	dword ptr [r12], 0xc
	mov	r13, qword ptr [rsp + 0x60]
.label_1372:
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_1379
.label_1416:
	call	free
	mov	rdi, r14
	call	free
	mov	ecx, 0xc
.label_1264:
	mov	r12, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], ecx
.label_1355:
	mov	r9, r13
.label_1196:
	mov	r13, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x20], r9
.label_1379:
	mov	rdi, r13
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	mov	r9, qword ptr [rsp + 0x20]
	mov	ebp, 0
	jne	.label_1230
.label_1202:
	mov	qword ptr [rsp + 0x20], r9
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdi, rbx
	mov	r13, qword ptr [rsp + 0x38]
	mov	rsi, r13
	mov	r14, qword ptr [rsp + 0x48]
	mov	rdx, r14
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	eax, r14d
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0x30], rax
	and	r14d, 0x200000
	mov	qword ptr [rsp + 0x10], r14
	nop	word ptr cs:[rax + rax]
.label_1367:
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 0x17
	ja	.label_1203
	mov	ecx, 0x8c0800
	bt	ecx, eax
	jae	.label_1295
	mov	r14, qword ptr [r13 + 0x48]
	movdqu	xmm0, xmmword ptr [rbx]
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	mov	rdx, -1
	cmp	eax, 0x17
	je	.label_1222
	mov	r14, rbp
	cmp	eax, 0x12
	sete	cl
	movzx	r15d, cl
	cmp	eax, 0x13
	mov	rcx, -1
	mov	eax, 1
	cmove	rcx, rax
	jmp	.label_1217
.label_1259:
	lea	rax, [r15 + r15*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	edx, 0x8000
	cmovle	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_1222:
	mov	r15, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	dl, byte ptr [rbx]
	movzx	ecx, dl
	movzx	eax, byte ptr [rbx + 8]
	mov	esi, 0x18
	cmp	eax, 0x18
	je	.label_1242
	cmp	eax, 2
	je	.label_1249
	mov	dl, 0x2c
	cmp	ecx, 0x2c
	je	.label_1253
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1222
	cmp	eax, 1
	jne	.label_1222
	cmp	r15, -2
	je	.label_1222
	cmp	ecx, 0x39
	ja	.label_1222
	cmp	r15, -1
	jne	.label_1259
	lea	rdx, [rcx - 0x30]
	jmp	.label_1222
.label_1253:
	mov	esi, eax
	nop	word ptr [rax + rax]
.label_1242:
	cmp	r15, -1
	jne	.label_1269
	movzx	eax, dl
	cmp	eax, 0x2c
	jne	.label_1272
	cmp	esi, 1
	mov	r15d, 0
	je	.label_1274
.label_1272:
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_1277
	nop	word ptr cs:[rax + rax]
.label_1269:
	cmp	r15, -2
	je	.label_1249
	cmp	esi, 0x18
	je	.label_1290
	cmp	esi, 1
	jne	.label_1249
	movzx	ecx, dl
	cmp	ecx, 0x2c
	jne	.label_1249
.label_1274:
	mov	qword ptr [rsp + 0x60], r14
	mov	r14, rbp
	mov	rbp, r12
	mov	rdx, -1
	jmp	.label_1195
.label_1290:
	mov	r14, rbp
	mov	rcx, r15
	jmp	.label_1302
.label_1192:
	lea	rax, [r12 + r12*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	dword ptr [rax]
.label_1195:
	mov	r12, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	movzx	ecx, byte ptr [rbx]
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 0x18
	je	.label_1317
	cmp	eax, 2
	je	.label_1216
	cmp	ecx, 0x2c
	je	.label_1317
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1195
	cmp	eax, 1
	jne	.label_1195
	cmp	r12, -2
	je	.label_1195
	movzx	eax, cl
	cmp	eax, 0x39
	ja	.label_1195
	cmp	r12, -1
	jne	.label_1192
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_1195
.label_1317:
	mov	rcx, r12
	cmp	rcx, -2
	je	.label_1216
	cmp	rcx, -1
	mov	r12, rbp
	je	.label_1302
	cmp	r15, rcx
	jg	.label_1344
.label_1302:
	cmp	eax, 0x18
	jne	.label_1344
	cmp	rcx, -1
	mov	rax, rcx
	cmove	rax, r15
	cmp	rax, 0x8000
	jge	.label_1288
.label_1217:
	mov	rbp, rcx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	test	r14, r14
	mov	qword ptr [rsp + 0x50], r14
	mov	ecx, 0
	je	.label_1206
	mov	r9, rbp
	mov	qword ptr [rsp + 0x58], r9
	mov	rax, r9
	or	rax, r15
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, rdi
	je	.label_1208
	test	r15, r15
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	r12, rdi
	mov	r8, qword ptr [rsp + 0x20]
	pxor	xmm1, xmm1
	jg	.label_1378
.label_1319:
	movzx	eax, byte ptr [r12 + 0x30]
	cmp	eax, 0x11
	jne	.label_1382
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	word ptr [rax + rax]
.label_1251:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_1251
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1251
	nop	word ptr cs:[rax + rax]
.label_1403:
	mov	edx, dword ptr [rcx + 0x30]
	movzx	esi, dl
	cmp	esi, 0x11
	jne	.label_1273
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_1273
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1273:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_1382
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_1403
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_1403
	jmp	.label_1251
	nop	dword ptr [rax + rax]
.label_1382:
	mov	qword ptr [rsp + 0x50], rdi
	cmp	r9, -1
	sete	bl
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1405
	mov	rax, qword ptr [r8 + 0x70]
.label_1234:
	movzx	edx, bl
	or	edx, 0xa
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], edx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1434
	mov	qword ptr [r12], r13
.label_1434:
	add	r15, 2
	cmp	r15, r9
	jg	.label_1423
	jmp	.label_1268
	nop	word ptr cs:[rax + rax]
.label_1208:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1208
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1208
	nop	word ptr cs:[rax + rax]
.label_1210:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_1433
	cmp	eax, 6
	jne	.label_1386
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_1236
	nop	word ptr cs:[rax + rax]
.label_1433:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1236:
	call	free
.label_1386:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_1206
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_1210
	test	rax, rax
	mov	rbx, rdx
	je	.label_1210
	jmp	.label_1208
.label_1292:
	mov	qword ptr [rsp + 0x58], r9
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1392
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1226
.label_1297:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	r12, rbx
	jmp	.label_1237
.label_1436:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	pxor	xmm1, xmm1
	mov	r8, rbp
	test	rax, rax
	je	.label_1221
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1197
.label_1392:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_1256
.label_1193:
	mov	qword ptr [r14], 0
.label_1256:
	xor	r12d, r12d
.label_1237:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, r15
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_1221
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1276
	nop	word ptr cs:[rax + rax]
.label_1268:
	mov	rbp, qword ptr [r12]
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1292
	mov	rax, qword ptr [r8 + 0x70]
.label_1226:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x80], rbx
	mov	rcx, rbx
	lea	r14, [rsp + 0x80]
	jmp	.label_1299
	nop	word ptr cs:[rax + rax]
.label_1199:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r14], rcx
.label_1299:
	mov	qword ptr [rcx], rbp
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbp, qword ptr [r14]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1347
	lea	r14, [rbp + 8]
	mov	r12, rax
	jmp	.label_1354
	nop	
.label_1347:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1296:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1351
	test	r12, r12
	jne	.label_1363
.label_1351:
	mov	r12, qword ptr [rax]
	mov	rbp, qword ptr [rbp]
	test	r12, r12
	jne	.label_1296
	jmp	.label_1390
.label_1363:
	lea	r14, [rbp + 0x10]
.label_1354:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1373
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1199
.label_1373:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1193
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1199
	nop	word ptr cs:[rax + rax]
.label_1390:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1297
	mov	rax, qword ptr [r8 + 0x70]
	mov	r12, rbx
.label_1276:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbx
	test	r12, r12
	je	.label_1221
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1436
	mov	rax, qword ptr [r8 + 0x70]
.label_1197:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r13
	cmp	r15, r9
	lea	r15, [r15 + 1]
	jl	.label_1268
.label_1423:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_1371
	mov	rbx, rax
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x18]
	je	.label_1383
	mov	rax, qword ptr [r8 + 0x70]
.label_1191:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r13], rdx
	mov	r13, rdx
	jmp	.label_1248
.label_1371:
	mov	r12, qword ptr [rsp + 0x18]
.label_1248:
	xor	eax, eax
	mov	rcx, r13
	jmp	.label_1252
.label_1344:
	mov	qword ptr [rsp + 0x50], r14
.label_1277:
	mov	dword ptr [r12], 0xa
	xor	ecx, ecx
	jmp	.label_1206
.label_1378:
	cmp	r15, 2
	mov	r13, rdi
	mov	rbp, rdi
	jl	.label_1213
	mov	rax, qword ptr [rsp + 0x50]
	mov	rbp, qword ptr [rax]
	mov	r13, rax
	mov	ebx, 2
	mov	rdi, rax
	jmp	.label_1214
.label_1405:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	pxor	xmm1, xmm1
	mov	r8, rbp
	test	rax, rax
	je	.label_1221
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1234
.label_1216:
	mov	r12, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x60]
.label_1249:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_1243
	mov	qword ptr [r13 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xa0]
	movdqu	xmmword ptr [rbx], xmm0
	mov	byte ptr [rbx + 8], 1
	mov	rcx, rbp
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_1206
.label_1311:
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 0x58], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1261
	mov	r14, rbp
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1263
.label_1341:
	mov	qword ptr [rsp + 0x60], rdi
	mov	r13, rbp
	jmp	.label_1280
.label_1261:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_1285
.label_1400:
	mov	qword ptr [r12], 0
.label_1285:
	xor	r13d, r13d
.label_1280:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x20]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_1221
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1271
	nop	dword ptr [rax + rax]
.label_1214:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1311
	mov	r14, rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1263:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x80], rbp
	mov	rcx, rbp
	lea	r12, [rsp + 0x80]
	jmp	.label_1318
	nop	word ptr cs:[rax + rax]
.label_1398:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r12], rcx
.label_1318:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rdx, qword ptr [r12]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1369
	mov	r14, rdx
	lea	r12, [r14 + 8]
	mov	r13, rax
	jmp	.label_1376
	nop	word ptr cs:[rax + rax]
.label_1369:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1388:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	cmp	r13, rcx
	je	.label_1413
	test	r13, r13
	jne	.label_1387
.label_1413:
	mov	r13, qword ptr [rax]
	mov	rdx, qword ptr [rdx]
	test	r13, r13
	jne	.label_1388
	jmp	.label_1394
.label_1387:
	mov	r14, rdx
	lea	r12, [r14 + 0x10]
.label_1376:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1396
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1398
.label_1396:
	mov	qword ptr [rsp + 0x60], rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1400
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1398
	nop	word ptr cs:[rax + rax]
.label_1394:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1341
	mov	rax, qword ptr [r8 + 0x70]
	mov	r13, rbp
.label_1271:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdi
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rdi, rdi
	je	.label_1414
	mov	qword ptr [rdi], rdx
.label_1414:
	test	r13, r13
	je	.label_1221
	mov	rbp, rdx
	mov	qword ptr [r13], rbp
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	mov	rdi, rbp
	jl	.label_1214
.label_1213:
	cmp	r15, r9
	jne	.label_1429
	mov	qword ptr [rsp + 0x20], r8
	mov	rcx, rbp
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1206
.label_1383:
	mov	qword ptr [rsp + 0x20], r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	ecx, 0
	je	.label_1206
.label_2471:
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	jmp	.label_1191
.label_1429:
	mov	rbx, qword ptr [r13]
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1201
	mov	qword ptr [rsp + 0x28], rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1333:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x80], r12
	mov	rcx, r12
	lea	rbp, [rsp + 0x80]
	jmp	.label_1207
	nop	word ptr cs:[rax + rax]
.label_1293:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [rbp], rcx
.label_1207:
	mov	qword ptr [rcx], rbx
	mov	rax, qword ptr [rbp]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbx, qword ptr [rbp]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1298
	lea	rbp, [rbx + 8]
	mov	r13, rax
	jmp	.label_1265
.label_1298:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1282:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	cmp	r13, rcx
	je	.label_1275
	test	r13, r13
	jne	.label_1279
.label_1275:
	mov	r13, qword ptr [rax]
	mov	rbx, qword ptr [rbx]
	test	r13, r13
	jne	.label_1282
	jmp	.label_1286
.label_1279:
	lea	rbp, [rbx + 0x10]
.label_1265:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1438
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1293
.label_1438:
	mov	qword ptr [rsp + 0x58], r9
	mov	r14, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1300
	mov	r8, r14
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_1293
.label_1243:
	mov	qword ptr [rsp + 0x50], rbp
	cmp	eax, 2
	setne	al
	movzx	eax, al
	add	eax, 9
	mov	dword ptr [r12], eax
	xor	ecx, ecx
	jmp	.label_1206
.label_1286:
	mov	rdi, qword ptr [rsp + 0x50]
	jmp	.label_1319
.label_1288:
	mov	qword ptr [rsp + 0x50], r14
	mov	dword ptr [r12], 0xf
	xor	ecx, ecx
	jmp	.label_1206
.label_1201:
	mov	r14, r9
	mov	r12, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1331
	mov	qword ptr [rsp + 0x28], rbp
	mov	r8, r12
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, r14
	jmp	.label_1333
.label_1331:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_1221
.label_1300:
	mov	qword ptr [rbp], 0
.label_1221:
	mov	r12, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], 0xc
	xor	ecx, ecx
.label_1206:
	test	rcx, rcx
	sete	al
	jne	.label_1252
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_1358
	jmp	.label_1360
	nop	word ptr cs:[rax + rax]
.label_1252:
	mov	rbx, qword ptr [rsp + 0x40]
.label_1358:
	cmp	qword ptr [rsp + 0x30], 0
	mov	rbp, rcx
	mov	r13, qword ptr [rsp + 0x38]
	je	.label_1367
	movzx	edx, byte ptr [rbx + 8]
	cmp	edx, 0x17
	je	.label_1374
	cmp	edx, 0xb
	mov	rbp, rcx
	jne	.label_1367
.label_1374:
	test	al, al
	jne	.label_1377
	mov	r14d, 0x400ff
	nop	dword ptr [rax]
.label_1380:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1380
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1380
	nop	word ptr cs:[rax + rax]
.label_1342:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1225
	cmp	eax, 6
	jne	.label_1270
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1397
	nop	dword ptr [rax]
.label_1225:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1397:
	call	free
.label_1270:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1377
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1342
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1342
	jmp	.label_1380
.label_1360:
	xor	r15d, r15d
	mov	rcx, qword ptr [rsp + 0x50]
	test	rcx, rcx
	je	.label_1230
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1266:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1266
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1266
	nop	word ptr cs:[rax + rax]
.label_1200:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1417
	cmp	eax, 6
	jne	.label_1419
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1346
	nop	dword ptr [rax]
.label_1417:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1346:
	call	free
.label_1419:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1230
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1200
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1200
	jmp	.label_1266
.label_1377:
	mov	dword ptr [r12], 0xd
.label_1315:
	xor	r15d, r15d
	jmp	.label_1230
.label_1203:
	mov	r15, rbp
	jmp	.label_1230
.label_1295:
	mov	r15, rbp
.label_1230:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1305:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x410430

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 0xc], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1455
	mov	qword ptr [rsp], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1441
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0xc]
	or	al, cl
	mov	byte ptr [r15 + 0x20], al
	lea	rcx, [rsp + 0x10]
	xor	r9d, r9d
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_1448
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1452
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1449:
	movsx	rcx, al
	mov	eax, 1
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x3a
	add	rdx, rcx
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	mov	al, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_1449
.label_1452:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1442
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1442:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1447
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_1447:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_1453
	mov	rax, qword ptr [r12 + 0x70]
.label_1445:
	lea	edx, [rcx + 1]
	mov	dword ptr [r12 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1451
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1450
	mov	rbp, qword ptr [r12 + 0x70]
.label_1446:
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1454
	mov	rcx, qword ptr [r12 + 0x70]
.label_1439:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	shl	rsi, 6
	lea	rax, [rcx + rsi + 8]
	mov	qword ptr [rcx + rsi + 8], 0
	mov	qword ptr [rcx + rsi + 0x10], r14
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_1440
.label_1451:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, r14
	jmp	.label_1440
.label_1455:
	mov	dword ptr [r15], 0xc
	jmp	.label_1443
.label_1441:
	mov	rdi, rbx
	jmp	.label_1456
.label_1448:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
	jmp	.label_1443
.label_1453:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1444
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1445
.label_1450:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1444
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_1446
.label_1444:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
.label_1456:
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_1443:
	xor	eax, eax
.label_1440:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1454:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1440
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_1439
	nop	
	.section	.text
	.align	32
	#Procedure 0x410800

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1457
	mov	rcx, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1460
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1460
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_1459
.label_1460:
	test	dl, 1
	je	.label_1466
	movzx	ecx, al
	cmp	ecx, 0x5c
	jne	.label_1466
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1466
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_1459
.label_1457:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1466:
	cmp	eax, 0x5b
	jne	.label_1462
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1463
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	jmp	.label_1467
.label_1462:
	cmp	eax, 0x5e
	je	.label_1469
	cmp	eax, 0x5d
	je	.label_1458
	cmp	eax, 0x2d
	jne	.label_1459
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1459:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1463:
	xor	eax, eax
.label_1467:
	mov	byte ptr [rdi], al
	movzx	eax, al
	cmp	eax, 0x3d
	je	.label_1461
	cmp	eax, 0x3a
	je	.label_1464
	cmp	eax, 0x2e
	jne	.label_1465
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1458:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1464:
	test	dl, 4
	jne	.label_1468
.label_1465:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1469:
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1461:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1468:
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410900

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	r14, rdi
	mov	rdx, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1470
	lea	rax, [rdx + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_1470
	mov	r10, qword ptr [rsi + 0x10]
	lea	r11, [r10 + rdx*4]
	mov	edi, 1
	nop	dword ptr [rax + rax]
.label_1486:
	cmp	dword ptr [r11 + rdi*4], -1
	jne	.label_1483
	lea	rax, [rdx + rdi + 1]
	inc	rdi
	cmp	rax, rbx
	jl	.label_1486
.label_1483:
	cmp	edi, 2
	jl	.label_1470
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + rdx*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, rdx
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1487
.label_1470:
	movsxd	rax, ecx
	add	rdx, rax
	mov	qword ptr [rsi + 0x48], rdx
	movzx	edi, byte ptr [r15 + 8]
	lea	eax, [rdi - 0x16]
	cmp	eax, 8
	ja	.label_1488
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1474]]
.label_2462:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], rdx
	jle	.label_1471
	mov	r11b, byte ptr [r15]
	xor	r12d, r12d
	jmp	.label_1478
.label_1475:
	inc	r12
	movzx	edi, byte ptr [r15 + 8]
.label_1478:
	movzx	edi, dil
	cmp	edi, 0x1e
	jne	.label_1482
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1484
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1476
	nop	
.label_1482:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_1480:
	mov	bl, byte ptr [rbx + rdx]
.label_1476:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1471
	movzx	edx, r11b
	movzx	ecx, bl
	cmp	ecx, edx
	jne	.label_1491
	mov	rcx, qword ptr [rsi + 8]
	movzx	ecx, byte ptr [rcx + rdi]
	cmp	ecx, 0x5d
	je	.label_1472
.label_1491:
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + r12], bl
	cmp	r12, 0x1e
	jle	.label_1475
	jmp	.label_1471
.label_1484:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_1479
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_1481
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_1485
.label_1481:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1485
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1473
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_1473
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_1489:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1473
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_1489
.label_1473:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_1476
.label_1479:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_1480
.label_1485:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1476
.label_1472:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, r12d
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	movzx	ecx, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	ecx, 0x1e
	je	.label_1477
	cmp	ecx, 0x1c
	je	.label_1490
	cmp	ecx, 0x1a
	jne	.label_1471
	mov	dword ptr [r14], 3
	jmp	.label_1471
.label_1477:
	mov	dword ptr [r14], 4
	jmp	.label_1471
.label_1490:
	mov	dword ptr [r14], 2
	jmp	.label_1471
.label_2461:
	test	r9b, r9b
	jne	.label_1488
	lea	rdi, [rsp + 8]
	mov	rdx, r8
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x10]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_1471
.label_1488:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1487:
	xor	eax, eax
.label_1471:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410b60

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	test	r9d, 0x400000
	je	.label_1515
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1534
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1515
.label_1534:
	mov	r12d, OFFSET FLAT:.str.9_0
.label_1515:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1494
.label_1518:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_3
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1547
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1552
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1497
	mov	esi, OFFSET FLAT:.str.3_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1507
	mov	esi, OFFSET FLAT:.str.9_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1511
	mov	esi, OFFSET FLAT:.str.11_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1516
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1524
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1505
	mov	esi, OFFSET FLAT:.str.13_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1514
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1538
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1545
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_1495
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1519
.label_1499:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	je	.label_1506
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1506:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1499
	jmp	.label_1495
.label_1547:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1509
	nop	word ptr cs:[rax + rax]
.label_1526:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1531
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1531:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1526
	jmp	.label_1495
	nop	dword ptr [rax]
.label_1509:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1530
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1530:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1509
	jmp	.label_1495
.label_1552:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1503
	nop	
.label_1549:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1542
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1542:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1549
	jmp	.label_1495
	nop	dword ptr [rax]
.label_1503:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1492
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1492:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1503
	jmp	.label_1495
.label_1497:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1512
	nop	
.label_1527:
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1553
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1553:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1527
	jmp	.label_1495
	nop	word ptr [rax + rax]
.label_1512:
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1529
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1529:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1512
	jmp	.label_1495
.label_1507:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1501
	nop	
.label_1550:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1555
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1555:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1550
	jmp	.label_1495
.label_1501:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1554
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1554:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1501
	jmp	.label_1495
.label_1494:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1495
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_1518
.label_1511:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1528
	nop	word ptr cs:[rax + rax]
.label_1540:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1493
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1493:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1540
	jmp	.label_1495
.label_1528:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1541
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1541:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1528
	jmp	.label_1495
.label_1516:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1520
	nop	dword ptr [rax]
.label_1508:
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1548
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1548:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1508
	jmp	.label_1495
.label_1520:
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1513
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1513:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1520
	jmp	.label_1495
.label_1524:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1496
	nop	dword ptr [rax]
.label_1551:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1532
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1532:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1551
	jmp	.label_1495
.label_1496:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1522
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1522:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1496
	jmp	.label_1495
.label_1505:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1537
	nop	dword ptr [rax]
.label_1500:
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1533
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1533:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1500
	jmp	.label_1495
.label_1537:
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1521
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1521:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1537
	jmp	.label_1495
.label_1514:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1535
	nop	dword ptr [rax]
.label_1539:
	test	byte ptr [rsi + rdx*2], 1
	je	.label_1504
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1504:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1539
	jmp	.label_1495
.label_1535:
	test	byte ptr [rsi + rdx*2], 1
	je	.label_1498
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1498:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1535
	jmp	.label_1495
.label_1538:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1517
.label_1502:
	cmp	word ptr [rsi + rdx*2], 0
	jns	.label_1543
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1543:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1502
	jmp	.label_1495
.label_1517:
	cmp	word ptr [rsi + rdx*2], 0
	jns	.label_1510
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1510:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1517
	jmp	.label_1495
.label_1519:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	je	.label_1523
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1523:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1519
	jmp	.label_1495
.label_1545:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1525
.label_1544:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1536
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1536:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1544
.label_1495:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1525:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1546
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1546:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1525
	jmp	.label_1495
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411310

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x11
	je	.label_1556
	cmp	eax, 4
	jne	.label_1557
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_1557
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_1556:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1557
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_1557
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_1558
	mov	qword ptr [rdx], rsi
.label_1558:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_1557
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_1557:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4113a0

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	movzx	edx, byte ptr [rsi + 0x30]
	lea	ebx, [rdx - 2]
	cmp	ebx, 0xe
	ja	.label_1565
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_1570]]
.label_2551:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1567
	mov	qword ptr [rax], r15
	jmp	.label_1559
.label_2552:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	js	.label_1560
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_1563
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1562
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_1568
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_1559
.label_2549:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_1562
	mov	edi, OFFSET FLAT:.str.17_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2550:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_1559
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_1569
	mov	qword ptr [rax], rbx
	jmp	.label_1559
.label_1565:
	test	dl, 8
	jne	.label_1561
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1559
.label_1568:
	mov	qword ptr [rax], 2
	jge	.label_1566
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_1559
.label_1566:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1559:
	xor	eax, eax
.label_1562:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1567:
	lea	rax, [r14 + rbx*8]
.label_1564:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1562
.label_1569:
	lea	rax, [r14 + r15*8]
	jmp	.label_1564
.label_1560:
	mov	edi, OFFSET FLAT:.str.18_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1563:
	mov	edi, OFFSET FLAT:.str.19_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1561:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4115b0

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbp, rdi
	mov	rbx, qword ptr [rsi]
	mov	r13, qword ptr [r14 + 8]
	test	r13, r13
	je	.label_1575
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1575
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1578
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_1578
.label_1575:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_1586
	mov	rax, qword ptr [rbx + 0x70]
.label_1585:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r12d
	shl	rcx, 6
	lea	r12, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1582:
	mov	qword ptr [rsp], rbp
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_1584
	mov	rax, qword ptr [rbx + 0x70]
.label_1581:
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r15d
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 9
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1577:
	test	r13, r13
	mov	rbp, r15
	je	.label_1572
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1583
	mov	rax, qword ptr [rbx + 0x70]
.label_1576:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbp
	test	r15, r15
	je	.label_1572
	mov	qword ptr [r15], rbp
.label_1572:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1580
	mov	rax, qword ptr [rbx + 0x70]
.label_1574:
	lea	ecx, [r13 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r13d
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1579
	mov	qword ptr [r12], r13
.label_1579:
	test	rbp, rbp
	je	.label_1571
	mov	qword ptr [rbp], r13
.label_1571:
	test	r15, r15
	je	.label_1573
	test	r12, r12
	je	.label_1573
	test	rbp, rbp
	je	.label_1573
	test	r13, r13
	je	.label_1573
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	qword ptr [r12 + 0x28], rax
	mov	eax, 0x80000
	and	eax, dword ptr [r14 + 0x30]
	mov	ecx, 0xfff7ffff
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r12 + 0x30]
	or	ecx, eax
	mov	dword ptr [r12 + 0x30], ecx
.label_1578:
	mov	rax, r13
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1586:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_1582
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1585
.label_1584:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_1577
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1581
.label_1580:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_1571
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1574
.label_1573:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_1578
.label_1583:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1572
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1576
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4118b0

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, r13
	jae	.label_1591
.label_1592:
	mov	rcx, qword ptr [rbx]
	shl	rax, 4
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	jne	.label_1589
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1588
.label_1589:
	cmp	eax, 6
	sete	cl
.label_1588:
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rax, [rax + rax*2]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r15, qword ptr [rbx + 0x10]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_1587:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1591:
	lea	rbp, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	ja	.label_1587
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1587
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [r13 + r13*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_1590
	test	rax, rax
	je	.label_1590
	test	r13, r13
	je	.label_1590
	test	rbp, rbp
	je	.label_1590
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_1592
.label_1590:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_1587
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411a80

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], 0
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1600
	mov	qword ptr [rsp + 8], rbx
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	r8d, eax
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1597
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_1597
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1597
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1600
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_1597:
	mov	rbx, r12
	test	al, 8
	jne	.label_1596
	xor	r15d, r15d
	jmp	.label_1598
.label_1596:
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1601
	xor	r15d, r15d
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1595:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r12, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_1593
	test	rcx, rcx
	jne	.label_1599
	xor	ecx, ecx
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1603
	jmp	.label_1600
	nop	dword ptr [rax]
.label_1599:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1603:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1600
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r12*8 + 8], 0
	jne	.label_1602
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1593:
	mov	r15b, 1
.label_1602:
	inc	r13
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	jl	.label_1595
	jmp	.label_1598
.label_1601:
	xor	r15d, r15d
.label_1598:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_1600
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1604
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1604
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1594
.label_1604:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1594:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1600:
	add	rsp, 0x48
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
	#Procedure 0x411c90

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13d, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r14, rdi
.label_1621:
	mov	dword ptr [rsp + 0x14], r13d
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0x20], eax
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_1606:
	mov	rax, qword ptr [r14]
	mov	rdx, r15
	shl	rdx, 4
	movzx	ecx, byte ptr [rax + rdx + 8]
	cmp	ecx, 4
	jne	.label_1618
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rdx, qword ptr [r14 + 0x28]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r12, [rbx + rbx*2]
	mov	qword ptr [rdx + r12*8 + 8], 0
	mov	rbp, r13
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rdi, r14
	mov	qword ptr [rsp + 0x18], rbx
	call	re_dfa_add_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1608
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r13
	mov	rax, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + rdx*8], rcx
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x14]
	jne	.label_1606
	jmp	.label_1605
	nop	dword ptr [rax + rax]
.label_1618:
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rbp, [r15 + r15*2]
	mov	rsi, qword ptr [rcx + rbp*8 + 8]
	test	rsi, rsi
	je	.label_1610
	mov	rdi, qword ptr [rcx + rbp*8 + 0x10]
	mov	r12, qword ptr [rdi]
	lea	rdi, [rbx + rbx*2]
	mov	qword ptr [rcx + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_1614
	mov	qword ptr [rsp + 0x18], rbp
	mov	r15, rdi
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_1611
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebp, dword ptr [rax + rdx + 8]
	mov	edx, ebp
	and	edx, 0x40000
	je	.label_1611
	mov	rdx, qword ptr [r14 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
.label_1612:
	cmp	qword ptr [rdx + rsi*8], r12
	jne	.label_1613
	shr	ebp, 8
	and	ebp, 0x3ff
	cmp	ebp, r13d
	je	.label_1609
.label_1613:
	dec	rsi
	test	rsi, rsi
	jle	.label_1611
	mov	ebp, dword ptr [rdi]
	mov	ebx, ebp
	and	ebx, 0x40000
	add	rdi, -0x10
	test	ebx, ebx
	jne	.label_1612
	jmp	.label_1611
.label_1609:
	cmp	rsi, -1
	je	.label_1611
	mov	rbp, r15
	lea	rdi, [rcx + rbp*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x24], 0xc
	test	al, al
	jne	.label_1619
	jmp	.label_1605
	nop	word ptr [rax + rax]
.label_1611:
	mov	rbp, r12
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1607
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r12
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, r15
	lea	rdi, [rax + rbp*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	je	.label_1605
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_1605
.label_1619:
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1617
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rdi, qword ptr [r14]
	mov	rcx, rax
	shl	rcx, 4
	mov	edx, dword ptr [rdi + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rdi + rcx + 8], edx
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r15
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rdi, [rcx + rbp*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_1606
	jmp	.label_1605
.label_1614:
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_1615
	cmp	rbx, r15
	jne	.label_1616
.label_1615:
	mov	r15, rdi
	lea	rcx, [rax + rdx + 8]
	mov	ebp, dword ptr [rcx]
	mov	rbx, r12
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	dword ptr [rsp + 0x24], 0xc
	cmp	rax, -1
	je	.label_1605
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	mov	rbp, qword ptr [r14]
	mov	rcx, rax
	shl	rcx, 4
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	esi, dword ptr [rbp + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	dword ptr [rbp + rcx + 8], esi
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r12
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rdi, [rcx + r15*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_1621
	jmp	.label_1605
.label_1608:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1605
.label_1607:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1605
.label_1617:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_1605
.label_1610:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_1620:
	mov	dword ptr [rsp + 0x24], 0
.label_1605:
	mov	eax, dword ptr [rsp + 0x24]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1616:
	lea	rdi, [rcx + rdi*8]
	mov	rsi, r12
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x24], 0xc
	test	al, al
	je	.label_1605
	jmp	.label_1620
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4120f0

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_1622
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	je	.label_1622
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_1625
	add	rbx, rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1632
	add	rbx, rbx
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
.label_1625:
	test	rcx, rcx
	je	.label_1626
	lea	rbx, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1629
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_1630
.label_1624:
	dec	rax
.label_1628:
	dec	rcx
	jmp	.label_1635
	nop	word ptr cs:[rax + rax]
.label_1630:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1624
	jge	.label_1628
	dec	rax
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	dec	rbx
.label_1635:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1630
.label_1629:
	test	rax, rax
	js	.label_1631
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1631:
	mov	r10, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r10 + rax*2 - 1]
	mov	rdx, rcx
	sub	rdx, rbx
	inc	rdx
	je	.label_1622
	lea	rax, [rdx + r10]
	mov	qword ptr [r14 + 8], rax
	lea	r9, [r10 - 1]
.label_1634:
	lea	r8, [r10 - 1]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	r11, [rdi + r9*8]
	nop	dword ptr [rax + rax]
.label_1623:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rsi, qword ptr [rdi + r10*8 - 8]
	cmp	rax, rsi
	jle	.label_1633
	dec	rcx
	mov	qword ptr [r11 + rdx*8], rax
	dec	rdx
	jne	.label_1623
	jmp	.label_1622
	nop	dword ptr [rax]
.label_1633:
	lea	rax, [rdx + r8]
	mov	qword ptr [rdi + rax*8], rsi
	dec	r9
	cmp	r10, 1
	mov	r10, r8
	jg	.label_1634
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	jmp	.label_1627
.label_1626:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
.label_1627:
	shl	rdx, 3
	call	memcpy
.label_1622:
	xor	eax, eax
.label_1632:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x412270

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_1648
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1637
	cmp	rsi, rcx
	jne	.label_1640
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1644
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1647
.label_1648:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1641
	mov	qword ptr [rax], rbx
	jmp	.label_1649
.label_1637:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_1643
.label_1640:
	mov	rax, qword ptr [r14 + 0x10]
.label_1647:
	cmp	qword ptr [rax], rbx
	jle	.label_1645
	test	rcx, rcx
	jle	.label_1639
	nop	word ptr cs:[rax + rax]
.label_1636:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_1636
	jmp	.label_1639
.label_1645:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_1642
	nop	dword ptr [rax]
.label_1646:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1642:
	cmp	rdx, rbx
	jg	.label_1646
.label_1639:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
.label_1643:
	inc	qword ptr [r14 + 8]
.label_1649:
	mov	al, 1
.label_1638:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1641:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	xor	eax, eax
	jmp	.label_1638
.label_1644:
	xor	eax, eax
	jmp	.label_1638
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412360

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13d, ecx
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_1673
	mov	qword ptr [rsp + 0x10], rdi
	mov	r14d, r13d
	add	r14, r8
	test	r8, r8
	jle	.label_1651
	mov	rcx, qword ptr [rdx + 0x10]
	xor	ebx, ebx
	cmp	r8, 4
	jb	.label_1657
	mov	rbx, r8
	and	rbx, 0xfffffffffffffffc
	je	.label_1664
	movq	xmm0, r14
	lea	r9, [r8 - 4]
	mov	eax, r9d
	shr	eax, 2
	inc	eax
	xor	edi, edi
	test	al, 3
	je	.label_1650
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_1681:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 4
	inc	rbp
	jne	.label_1681
	jmp	.label_1685
.label_1673:
	mov	dword ptr [rdi], 0
	jmp	.label_1687
.label_1664:
	xor	ebx, ebx
	jmp	.label_1657
.label_1650:
	pxor	xmm1, xmm1
.label_1685:
	cmp	r9, 0xc
	jb	.label_1658
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	sub	rax, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	dword ptr [rax]
.label_1666:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x80
	add	rax, -0x10
	jne	.label_1666
.label_1658:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r14, xmm0
	cmp	r8, rbx
	je	.label_1651
.label_1657:
	mov	rax, r8
	sub	rax, rbx
	lea	rcx, [rcx + rbx*8]
	nop	word ptr cs:[rax + rax]
.label_1663:
	add	r14, qword ptr [rcx]
	add	rcx, 8
	dec	rax
	jne	.label_1663
.label_1651:
	mov	rax, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r14
	lea	rcx, [rcx + rcx*2]
	mov	r10, qword ptr [rax + rcx*8]
	test	r10, r10
	jle	.label_1669
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_1672:
	mov	r15, qword ptr [r9 + rbx*8]
	cmp	qword ptr [r15], r14
	jne	.label_1660
	movzx	eax, byte ptr [r15 + 0x68]
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_1660
	test	rdx, rdx
	je	.label_1660
	mov	rdi, qword ptr [r15 + 0x50]
	test	rdi, rdi
	je	.label_1660
	cmp	qword ptr [rdi + 8], r8
	jne	.label_1660
	mov	rax, r8
	nop	dword ptr [rax]
.label_1659:
	test	rax, rax
	jle	.label_1656
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbp, qword ptr [rcx + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	cmp	rbp, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_1659
	nop	word ptr cs:[rax + rax]
.label_1660:
	inc	rbx
	cmp	rbx, r10
	jl	.label_1672
.label_1669:
	mov	rbx, rdx
	mov	r12, rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	mov	qword ptr [rsp + 0x18], r15
	test	r15, r15
	je	.label_1679
	mov	r10, r15
	add	r10, 8
	mov	qword ptr [rsp + 0x28], r10
	mov	r9, rbx
	mov	qword ptr [rsp + 0x30], r9
	mov	rdi, qword ptr [r9 + 8]
	mov	qword ptr [r15 + 0x10], rdi
	mov	rbx, qword ptr [r9 + 8]
	test	rbx, rbx
	jle	.label_1683
	mov	qword ptr [rsp + 0x28], r10
	mov	rbp, r15
	mov	r15, r9
	mov	qword ptr [rbp + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_1665
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	r9, r15
	mov	rdi, r12
	mov	r15, rbp
	mov	r10, qword ptr [rsp + 0x28]
	jmp	.label_1677
.label_1683:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r10], xmm0
	mov	qword ptr [r10 + 0x10], 0
	mov	rdi, r12
.label_1677:
	mov	al, byte ptr [r15 + 0x68]
	mov	cl, r13b
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [r15 + 0x50], r10
	cmp	qword ptr [r9 + 8], 0
	jle	.label_1684
	mov	ebp, r13d
	and	ebp, 1
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 0xc], eax
	and	r13d, 4
	mov	dword ptr [rsp + 8], r13d
	xor	r12d, r12d
	xor	r8d, r8d
	nop	
.label_1674:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r9 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	esi, dword ptr [rax + rcx + 8]
	movzx	edx, sil
	mov	r13d, esi
	shr	r13d, 8
	mov	ecx, r13d
	and	ecx, 0x3ff
	cmp	edx, 1
	jne	.label_1686
	test	ecx, ecx
	je	.label_1661
.label_1686:
	shr	esi, 0x14
	mov	bl, byte ptr [r15 + 0x68]
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r15 + 0x68], bl
	cmp	edx, 4
	je	.label_1680
	cmp	edx, 2
	jne	.label_1653
	or	bl, 0x10
	jmp	.label_1655
.label_1680:
	or	bl, 0x40
.label_1655:
	mov	byte ptr [r15 + 0x68], bl
.label_1653:
	test	ecx, ecx
	je	.label_1661
	cmp	qword ptr [r15 + 0x50], r10
	jne	.label_1676
	mov	qword ptr [rsp + 0x20], rdi
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	qword ptr [r15 + 0x50], rbx
	test	rbx, rbx
	je	.label_1668
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], r15
	test	r15, r15
	jle	.label_1670
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1682
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1654
.label_1670:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_1654:
	mov	r15, qword ptr [rsp + 0x18]
	or	byte ptr [r15 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
.label_1676:
	test	ebp, ebp
	mov	r9, qword ptr [rsp + 0x30]
	jne	.label_1667
	mov	eax, r13d
	and	eax, 1
	jne	.label_1671
.label_1667:
	test	ebp, ebp
	je	.label_1675
	mov	eax, r13d
	and	eax, 2
	jne	.label_1671
.label_1675:
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1678
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_1671
.label_1678:
	cmp	dword ptr [rsp + 8], 0
	jne	.label_1661
	and	r13d, 0x40
	je	.label_1661
	nop	
.label_1671:
	mov	rax, r12
	sub	rax, r8
	js	.label_1652
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	rcx, rax
	jle	.label_1652
	dec	rcx
	mov	qword ptr [r15 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1652
	lea	rax, [r12*8]
	add	rax, qword ptr [r15 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	
.label_1662:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r15 + 0x10]
	jl	.label_1662
	nop	word ptr [rax + rax]
.label_1652:
	inc	r8
.label_1661:
	inc	r12
	cmp	r12, qword ptr [r9 + 8]
	jl	.label_1674
.label_1684:
	mov	rsi, r15
	mov	rdx, r14
	call	register_state
	test	eax, eax
	je	.label_1656
.label_1668:
	mov	rdi, r15
	call	free_state
	jmp	.label_1679
.label_1682:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	jmp	.label_1679
.label_1665:
	mov	rdi, rbp
	call	free
.label_1679:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xc
.label_1687:
	xor	r15d, r15d
.label_1656:
	mov	rax, r15
	add	rsp, 0x38
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
	#Procedure 0x412820

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	lea	rdi, [r13*8]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1688
	test	r13, r13
	jle	.label_1689
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1692:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1691
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_1690
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1694
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_1690:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1691:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1692
.label_1689:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_1693
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1695:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
	jmp	.label_1688
.label_1694:
	mov	ecx, 0xc
.label_1688:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1693:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1688
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_1695
	nop	
	.section	.text
	.align	32
	#Procedure 0x412960

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r13, rsi
	mov	rbx, rdi
	lea	rbp, [rbx + 0x28]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r13
	jle	.label_1725
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1733
	mov	qword ptr [rbx + 0x20], 0
.label_1733:
	mov	rax, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r14, r13
	jne	.label_1738
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r13
.label_1738:
	test	r14, r14
	je	.label_1721
	mov	r12, qword ptr [rbx + 0x38]
	cmp	r14, r12
	jge	.label_1759
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1761
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1700
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_1700:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1714
.label_1706:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1702:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1721
	add	qword ptr [rbx + 8], r14
.label_1721:
	mov	qword ptr [rbx + 0x28], r13
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1724
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1730
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1734
	jmp	.label_1719
.label_1724:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1736
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_1719
.label_1730:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1719:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1734:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1725:
	mov	r14, r13
	sub	r14, rax
	jmp	.label_1738
.label_1759:
	mov	r10, qword ptr [rbx + 0x30]
	mov	cx, word ptr [rbx + 0x8c]
	test	cl, cl
	jne	.label_1748
.label_1713:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rsi, dword ptr [rbx + 0x90]
	cmp	rsi, 2
	jl	.label_1756
	mov	qword ptr [rsp + 8], rbp
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1707
	mov	rdi, qword ptr [rbx]
	lea	r8, [rdi + rax]
	mov	rdx, r14
	sub	rdx, rsi
	add	rdx, r8
	cmp	rdx, rdi
	cmovb	rdx, rdi
	lea	r11, [r8 + r14]
	lea	rsi, [r14 + rax]
	lea	rsi, [rdi + rsi - 1]
.label_1715:
	mov	rbp, rsi
	cmp	rbp, rdx
	jb	.label_1707
	mov	cl, byte ptr [rbp]
	and	cl, 0xc0
	movzx	ecx, cl
	lea	rsi, [rbp - 1]
	cmp	ecx, 0x80
	je	.label_1715
	add	r8, qword ptr [rbx + 0x58]
	mov	rdx, r8
	sub	rdx, rbp
	mov	r9, qword ptr [rbx + 0x78]
	test	r9, r9
	jne	.label_1757
	mov	qword ptr [rsp + 0x18], r11
	mov	r12, r10
	mov	rsi, rbp
.label_1760:
	mov	qword ptr [rsp + 0x30], 0
	lea	rdi, [rsp + 0x2c]
	lea	rcx, [rsp + 0x30]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp + 0x18]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_1735
	cmp	rax, -3
	mov	r10, r12
	ja	.label_1704
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x2c]
	jmp	.label_1704
.label_1761:
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x18], rdx
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1712:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [rbp + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_1755
	jge	.label_1762
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_1755:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_1712
.label_1762:
	cmp	rsi, r14
	setl	cl
	movzx	ecx, cl
	lea	r12, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, rsi
	sub	rdx, r14
	jle	.label_1705
	cmp	r12, r14
	jne	.label_1705
	cmp	qword ptr [rbp + r14*8], r14
	jne	.label_1705
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	mov	rbp, qword ptr [rsp + 8]
	jle	.label_1702
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
	nop	
.label_1743:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1743
	jmp	.label_1702
.label_1714:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_1706
.label_1705:
	mov	rax, r14
	sub	rax, r13
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	word ptr cs:[rax + rax]
.label_1716:
	mov	rax, r12
	test	rax, rax
	jle	.label_1697
	lea	r12, [rax - 1]
	cmp	qword ptr [rbp + rax*8 - 8], r14
	je	.label_1716
.label_1697:
	cmp	rax, rsi
	jge	.label_1703
	mov	rcx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_1711:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1703
	inc	rax
	cmp	rax, rsi
	jl	.label_1711
.label_1703:
	cmp	rax, rsi
	jne	.label_1729
	mov	qword ptr [rbx + 0x30], 0
	xor	ebp, ebp
	jmp	.label_1696
.label_1736:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1723
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jge	.label_1726
	jmp	.label_1731
	nop	dword ptr [rax]
.label_1745:
	mov	rbp, r12
	mov	r13, qword ptr [rbp]
.label_1731:
	inc	r15
	mov	r12, rbp
	add	r13, qword ptr [rbx]
	mov	al, byte ptr [r15 + r13 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1732
.label_1749:
	movzx	ebp, al
	lea	eax, [rbp + 0x80]
	cmp	eax, 0x17f
	ja	.label_1739
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_1739:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_1745
	jmp	.label_1746
.label_1732:
	mov	al, byte ptr [rdx + rcx]
	jmp	.label_1749
.label_1756:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	al, byte ptr [rdx + rax - 1]
	movzx	edx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1752
	mov	al, byte ptr [rsi + rdx]
.label_1752:
	mov	rsi, qword ptr [rbx + 0x80]
	movzx	edx, al
	shr	al, 6
	movzx	eax, al
	mov	rsi, qword ptr [rsi + rax*8]
	mov	eax, 1
	bt	rsi, rdx
	jb	.label_1699
	xor	eax, eax
	cmp	edx, 0xa
	jne	.label_1699
	movzx	eax, cx
	cmp	eax, 0xff
	seta	al
	movzx	eax, al
	add	eax, eax
.label_1699:
	mov	dword ptr [rbx + 0x70], eax
	jmp	.label_1702
.label_1729:
	mov	rbp, qword ptr [rbp + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	je	.label_1696
	test	rbp, rbp
	jle	.label_1717
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1717:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rbp, qword ptr [rbx + 0x30]
.label_1696:
	mov	qword ptr [rbx + 0x38], rbp
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1702
.label_1723:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1719
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_1727
	add	r13, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r13]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_1741
.label_1754:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
.label_1741:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_1754
	mov	rax, rcx
.label_1727:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1719
.label_1746:
	mov	r15, r14
.label_1726:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1719
.label_1748:
	mov	rdx, r14
	sub	rdx, r13
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1713
.label_1735:
	mov	r10, r12
.label_1704:
	cmp	esi, -1
	jne	.label_1747
	mov	rax, qword ptr [rbx + 0x28]
	mov	r12, qword ptr [rbx + 0x38]
.label_1707:
	add	r12, rax
	mov	rbp, r12
	sub	rbp, r13
	jge	.label_1710
	mov	qword ptr [rsp], r10
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_1718
.label_1742:
	xor	esi, esi
	cmp	rbp, r12
	je	.label_1722
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x10]
	je	.label_1698
	mov	rax, qword ptr [rbx]
	movzx	esi, byte ptr [rax + r12]
	jmp	.label_1698
.label_1722:
	mov	rcx, qword ptr [rsp + 0x10]
.label_1698:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_1728
.label_1718:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rdx, rbp
	sub	rdx, r12
	mov	rsi, qword ptr [rbx]
	add	rsi, r12
	lea	rdi, [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x18]
	call	rpl_mbrtowc
	test	rax, rax
	je	.label_1742
	mov	rcx, rax
	or	rcx, 1
	cmp	rcx, -1
	je	.label_1742
	mov	esi, dword ptr [rsp + 0x30]
.label_1728:
	add	r12, rax
	mov	rbp, r12
	sub	rbp, r13
	jl	.label_1718
	mov	qword ptr [rbx + 0x30], rbp
	cmp	esi, -1
	mov	r10, qword ptr [rsp]
	je	.label_1744
.label_1747:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1753
.label_1701:
	xor	ecx, ecx
	cmp	esi, 0xa
	jne	.label_1720
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1720
	xor	ecx, ecx
.label_1720:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_1750
.label_1710:
	mov	qword ptr [rbx + 0x30], rbp
.label_1744:
	dec	r10
	mov	rdi, rbx
	mov	rsi, r10
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_1750:
	test	rbp, rbp
	jne	.label_1740
.label_1708:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1702
.label_1740:
	jle	.label_1709
	mov	rdi, qword ptr [rbx + 0x10]
	test	rbp, rbp
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1709:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1708
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	jmp	.label_1708
.label_1753:
	mov	ebp, esi
	mov	edi, ebp
	call	iswalnum
	mov	esi, ebp
	cmp	esi, 0x5f
	mov	ecx, 1
	je	.label_1720
	test	eax, eax
	je	.label_1701
	jmp	.label_1720
.label_1757:
	lea	rsi, [rsp + 0x26]
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1737
	mov	qword ptr [rsp + 0x18], r11
	lea	rdi, [rbp - 1]
	sub	rdi, r8
	cmp	rdi, -8
	mov	rcx, -7
	cmovg	rcx, rdi
	xor	rcx, 0xffffffffffffffff
	shl	rcx, 0x20
	sar	rcx, 0x20
	inc	rcx
.label_1751:
	movzx	edi, byte ptr [rbp + rcx - 2]
	mov	al, byte ptr [r9 + rdi]
	mov	byte ptr [rsp + rcx + 0x24], al
	dec	rcx
	cmp	rcx, 1
	jg	.label_1751
	jmp	.label_1758
.label_1737:
	mov	qword ptr [rsp + 0x18], r11
.label_1758:
	mov	r12, r10
	jmp	.label_1760
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413100

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	r10, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	test	r10, r10
	jle	.label_1765
	mov	rcx, qword ptr [rbx + 0x98]
	mov	r11, qword ptr [r14 + 0x18]
	mov	rdi, qword ptr [rcx]
	mov	r9d, eax
	and	r9d, 1
	mov	r8d, eax
	and	r8d, 2
	and	eax, 8
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1763:
	mov	rcx, qword ptr [r11 + rbx*8]
	mov	rdx, rcx
	shl	rdx, 4
	mov	edx, dword ptr [rdi + rdx + 8]
	movzx	esi, dl
	cmp	esi, 2
	jne	.label_1764
	shr	edx, 8
	test	dx, 0x3ff
	je	.label_1765
	test	r9d, r9d
	jne	.label_1766
	mov	esi, edx
	and	esi, 4
	jne	.label_1764
.label_1766:
	test	r9d, r9d
	je	.label_1768
	mov	esi, edx
	and	esi, 8
	jne	.label_1764
.label_1768:
	test	r8d, r8d
	jne	.label_1767
	mov	esi, edx
	and	esi, 0x20
	jne	.label_1764
.label_1767:
	test	eax, eax
	jne	.label_1765
	test	dl, dl
	jns	.label_1765
	nop	dword ptr [rax]
.label_1764:
	inc	rbx
	cmp	rbx, r10
	mov	ecx, 0
	jl	.label_1763
.label_1765:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4131c0

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0xe8], 0
	jle	.label_1769
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1772:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	mov	ebx, 0
	jle	.label_1770
	nop	word ptr [rax + rax]
.label_1773:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1773
.label_1770:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_1771
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_1771:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1772
.label_1769:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413280

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	qword ptr [rbp - 0x78], rbx
	mov	r14, rdx
	mov	qword ptr [rbp - 0x98], r14
	mov	r12, rsi
	mov	qword ptr [rbp - 0x80], r12
	mov	rcx, qword ptr [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_1812]]
	mov	qword ptr [rbp - 0x50], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1813]]
	movaps	xmmword ptr [rbp - 0x60], xmm0
	xor	r13d, r13d
	test	r8b, r8b
	je	.label_1814
	mov	qword ptr [rbp - 0x88], rcx
	mov	r15, r14
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_1778
	lea	r13, [rbp - 0x60]
	mov	r14, r15
	mov	rcx, qword ptr [rbp - 0x88]
.label_1814:
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x70], r13
	mov	r15, qword ptr [rcx + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	qword ptr [rbp - 0x30], 0
	mov	rdx, r14
	shl	rdx, 4
	cmp	rdx, 0xfbf
	ja	.label_1775
	mov	rax, rsp
	lea	rcx, [rdx + 0xf]
	and	rcx, 0xfffffffffffffff0
	sub	rax, rcx
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa4], 0
	jmp	.label_1796
.label_1775:
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x90], rdx
	call	malloc
	test	rax, rax
	je	.label_1829
	mov	cl, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rdx, qword ptr [rbp - 0x90]
.label_1796:
	mov	qword ptr [rbp - 0x90], rdx
	mov	qword ptr [rbp - 0xa0], rax
	mov	rdi, rax
	mov	rsi, rbx
	call	memcpy
	mov	rsi, qword ptr [rbx]
	xor	edi, edi
	cmp	rsi, qword ptr [rbx + 8]
	jg	.label_1817
	lea	rax, [rbx + 8]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1804
.label_1829:
	mov	r14d, 0xc
	test	r13, r13
	je	.label_1778
	xor	ebx, ebx
	cmp	qword ptr [r13], 0
	jle	.label_1826
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1837:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1837
	jmp	.label_1826
.label_1831:
	mov	rdx, qword ptr [rbp - 0x68]
	mov	r14, rax
	jmp	.label_1786
	nop	word ptr [rax + rax]
.label_1804:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax]
	mov	rdx, r15
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	movzx	edx, cl
	cmp	edx, 9
	je	.label_1780
	cmp	edx, 8
	jne	.label_1794
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r14
	jge	.label_1794
	shl	rax, 4
	mov	qword ptr [rbx + rax], rsi
	mov	qword ptr [rbx + rax + 8], -1
	jmp	.label_1794
	nop	dword ptr [rax]
.label_1780:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r14
	jge	.label_1794
	shl	rax, 4
	cmp	qword ptr [rbx + rax], rsi
	jge	.label_1810
	mov	qword ptr [rbx + rax + 8], rsi
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	r13, rsi
	mov	rsi, rbx
	jmp	.label_1811
.label_1810:
	test	ecx, 0x80000
	je	.label_1797
	mov	rcx, qword ptr [rbp - 0xa0]
	cmp	qword ptr [rcx + rax], -1
	je	.label_1797
	mov	rdi, rbx
	mov	r13, rsi
	mov	rsi, qword ptr [rbp - 0xa0]
.label_1811:
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	mov	rsi, r13
	jmp	.label_1794
.label_1797:
	mov	qword ptr [rbx + rax + 8], rsi
	nop	word ptr cs:[rax + rax]
.label_1794:
	mov	qword ptr [rbp - 0x68], rsi
	cmp	rsi, qword ptr [rbx + 8]
	jne	.label_1836
	cmp	r15, qword ptr [r12 + 0xb0]
	jne	.label_1836
	mov	r13, r12
	mov	r12, qword ptr [rbp - 0x70]
	test	r12, r12
	je	.label_1839
	test	r14, r14
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	eax, 0
	mov	rdx, qword ptr [rbp - 0x90]
	je	.label_1787
	nop	word ptr cs:[rax + rax]
.label_1790:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1784
	cmp	qword ptr [rcx], -1
	je	.label_1787
.label_1784:
	inc	rax
	add	rcx, 0x10
	cmp	rax, r14
	jb	.label_1790
.label_1787:
	cmp	rax, r14
	je	.label_1808
	mov	rcx, qword ptr [r12]
	lea	rax, [rcx - 1]
	mov	qword ptr [r12], rax
	test	rcx, rcx
	jle	.label_1800
	mov	rcx, qword ptr [r12 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rcx + rbx]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, qword ptr [rbp - 0x78]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	r15, qword ptr [rax + rbx + 8]
	mov	r12, r13
.label_1836:
	mov	rbx, qword ptr [r12 + 0x98]
	mov	rsi, qword ptr [rbx]
	mov	r13, r15
	shl	r13, 4
	mov	eax, dword ptr [rsi + r13 + 8]
	test	al, 8
	jne	.label_1822
	test	eax, 0x100000
	jne	.label_1823
	movzx	eax, al
	cmp	eax, 4
	jne	.label_1835
	mov	rax, qword ptr [rsi + r13]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rax + rcx + 0x10]
	mov	r14, qword ptr [rax + rcx + 0x18]
	mov	rdx, r14
	sub	rdx, rdi
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1824
	cmp	r14, -1
	je	.label_1777
	cmp	rdi, -1
	je	.label_1777
	cmp	r14, rdi
	je	.label_1824
	mov	rax, qword ptr [r12 + 0x30]
	sub	rax, qword ptr [rbp - 0x68]
	cmp	rax, rdx
	jl	.label_1777
	mov	rsi, qword ptr [r12 + 8]
	mov	r12, rdi
	lea	rdi, [rsi + r12]
	add	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xb8], rdx
	call	memcmp
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0xb8]
	test	eax, eax
	jne	.label_1777
.label_1824:
	cmp	r14, rdi
	jne	.label_1774
	lea	rdi, [rbp - 0x40]
	mov	rsi, r15
	mov	r14, rdx
	call	re_node_set_insert
	mov	rdx, r14
	test	al, al
	je	.label_1785
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1774
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [r15 + r15*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r14, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_1792
	nop	word ptr cs:[rax + rax]
.label_1782:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_1782
.label_1792:
	cmp	rcx, -1
	je	.label_1774
	cmp	qword ptr [r8 + rcx*8], r14
	je	.label_1795
	jmp	.label_1774
	nop	word ptr cs:[rax + rax]
.label_1822:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	r12, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [rbx + 0x28]
	lea	rdi, [rbp - 0x40]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	je	.label_1785
	lea	rax, [r15 + r15*2]
	mov	r9, qword ptr [rbx + rax*8 + 8]
	test	r9, r9
	jle	.label_1798
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	mov	r10, qword ptr [r12 + 0x10]
	lea	r11, [r10 - 1]
	mov	r14, -1
	xor	r15d, r15d
	mov	r13, qword ptr [rbp - 0x70]
	nop	word ptr cs:[rax + rax]
.label_1830:
	test	r10, r10
	jle	.label_1776
	mov	rbx, qword ptr [r8 + r15*8]
	test	r11, r11
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rsi, r11
	mov	eax, 0
	je	.label_1828
	nop	dword ptr [rax + rax]
.label_1818:
	lea	rdx, [rax + rsi]
	shr	rdx, 1
	cmp	qword ptr [rcx + rdx*8], rbx
	lea	rdi, [rdx + 1]
	cmovl	rax, rdi
	cmovge	rsi, rdx
	cmp	rax, rsi
	jb	.label_1818
.label_1828:
	cmp	rax, -1
	je	.label_1776
	cmp	qword ptr [rcx + rax*8], rbx
	jne	.label_1776
	cmp	r14, -1
	jne	.label_1805
	mov	r14, rbx
.label_1776:
	inc	r15
	cmp	r15, r9
	jl	.label_1830
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_1786
	nop	word ptr cs:[rax + rax]
.label_1823:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r12
	mov	rcx, qword ptr [rbp - 0x68]
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_1774:
	test	rdx, rdx
	jne	.label_1838
	mov	rsi, qword ptr [rbx]
	mov	r12, qword ptr [rbp - 0x80]
.label_1835:
	add	rsi, r13
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0x68]
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_1798
.label_1838:
	add	rdx, qword ptr [rbp - 0x68]
	cmp	qword ptr [rbp - 0x70], 0
	mov	rax, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rax + r15*8]
	je	.label_1783
	mov	rax, qword ptr [rbp - 0x80]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_1777
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_1777
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1777
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_1809
.label_1820:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_1820
.label_1809:
	cmp	rbx, -1
	je	.label_1798
	cmp	qword ptr [rcx + rbx*8], r14
	jne	.label_1798
.label_1783:
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1819
.label_1805:
	mov	r15, qword ptr [rbp - 0x38]
	test	r15, r15
	jle	.label_1821
	mov	rcx, r15
	dec	rcx
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, 0
	je	.label_1825
	nop	word ptr [rax + rax]
.label_1807:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1807
.label_1825:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r14
	sete	dl
	and	dl, cl
	mov	rax, r14
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_1831
	test	r13, r13
	mov	rdx, qword ptr [rbp - 0x68]
	jne	.label_1802
	mov	r14, rax
	jmp	.label_1786
.label_1821:
	test	r13, r13
	mov	rdx, qword ptr [rbp - 0x68]
	je	.label_1786
.label_1802:
	mov	rcx, r13
	mov	r13, qword ptr [rcx]
	lea	rax, [r13 + 1]
	mov	qword ptr [rcx], rax
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1788
	mov	rdi, qword ptr [rcx + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r12, rax
	test	r12, r12
	je	.label_1785
	mov	rax, qword ptr [rbp - 0x70]
	shl	qword ptr [rax + 8], 1
	mov	qword ptr [rax + 0x10], r12
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_1806
.label_1788:
	mov	r12, qword ptr [rcx + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
.label_1806:
	mov	qword ptr [rbp - 0x90], rdi
	lea	r13, [r13 + r13*2]
	shl	r13, 4
	mov	qword ptr [r12 + r13], rdx
	mov	qword ptr [r12 + r13 + 8], rbx
	call	malloc
	mov	qword ptr [r12 + r13 + 0x10], rax
	test	rax, rax
	je	.label_1785
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	lea	rbx, [r12 + r13 + 0x18]
	mov	qword ptr [r12 + r13 + 0x20], r15
	test	r15, r15
	jle	.label_1827
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [r12 + r13 + 0x28], rax
	test	rax, rax
	je	.label_1834
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1795
.label_1827:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_1795:
	mov	rdx, qword ptr [rbp - 0x68]
.label_1819:
	mov	r13, qword ptr [rbp - 0x70]
.label_1786:
	test	r14, r14
	js	.label_1779
	mov	r12, qword ptr [rbp - 0x78]
	jmp	.label_1791
.label_1779:
	mov	qword ptr [rbp - 0x70], r13
	cmp	r14, -2
	je	.label_1785
	nop	dword ptr [rax + rax]
.label_1798:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1793
.label_1777:
	mov	r13, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_1800
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	r12, qword ptr [rbp - 0x78]
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rdx, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	r14, qword ptr [rax + rbx + 8]
.label_1791:
	cmp	rdx, qword ptr [r12 + 8]
	mov	r15, r14
	mov	rsi, rdx
	mov	rbx, r12
	mov	r14, qword ptr [rbp - 0x98]
	mov	r12, qword ptr [rbp - 0x80]
	jle	.label_1804
	mov	rdi, qword ptr [rbp - 0x30]
.label_1817:
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1833
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_1833:
	xor	r14d, r14d
	test	r13, r13
	je	.label_1778
	xor	r14d, r14d
	cmp	qword ptr [r13], 0
	jle	.label_1826
	xor	ebx, ebx
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1789:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1789
.label_1826:
	mov	rdi, qword ptr [r13 + 0x10]
	jmp	.label_1799
.label_1793:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	r14d, 1
	jmp	.label_1803
.label_1839:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	xor	r14d, r14d
.label_1803:
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1778
	mov	rdi, qword ptr [rbp - 0xa0]
	jmp	.label_1799
.label_1808:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1815
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_1815:
	xor	r14d, r14d
	cmp	qword ptr [r12], 0
	jle	.label_1781
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1832:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1832
	jmp	.label_1781
.label_1834:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_1785:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1816
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_1816:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x70]
	test	r12, r12
	je	.label_1778
	xor	ebx, ebx
	cmp	qword ptr [r12], 0
	jle	.label_1781
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1801:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1801
.label_1781:
	mov	rdi, qword ptr [r12 + 0x10]
.label_1799:
	call	free
.label_1778:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1800:
	mov	edi, OFFSET FLAT:.str.26_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x413c80

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_1840
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1843
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1848
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_1846:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_1844
	dec	rsi
	test	rsi, rsi
	jg	.label_1846
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1841
.label_1848:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_1841
	xor	edx, edx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1841
	jmp	.label_1845
.label_1844:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1847
.label_1842:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1841
.label_1845:
	mov	edx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1841
	xor	edx, edx
	jmp	.label_1841
.label_1840:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1841
.label_1843:
	and	edx, 2
	xor	edx, 0xa
.label_1841:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1847:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1841
	test	eax, eax
	jne	.label_1841
	jmp	.label_1842
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413d50

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rcx, rcx
	jle	.label_1852
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_1850
.label_1853:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1852
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_1851
	nop	word ptr [rax + rax]
.label_1850:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	movzx	esi, byte ptr [rax + rdx + 8]
	cmp	esi, 8
	jne	.label_1849
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_1849
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_1849
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_1853
.label_1851:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	test	rdx, rdx
	je	.label_1852
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	dword ptr [rax]
.label_1849:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_1850
.label_1852:
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
	#Procedure 0x413e80

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	qword ptr [rsp + 0x50], rsi
	mov	r13, rdi
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1888
	mov	r15, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x20], r15
	mov	r8, qword ptr [r13 + 0x48]
	mov	qword ptr [rsp + 0x58], r8
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1856:
	mov	qword ptr [rsp + 0x48], rcx
	mov	rax, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rax + 0x10]
	mov	r14, qword ptr [rax + rcx*8]
	mov	qword ptr [rsp + 0x80], r14
	mov	rax, qword ptr [r15]
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	movzx	eax, bl
	cmp	eax, 4
	jne	.label_1866
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1877
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1861
	test	ecx, ecx
	je	.label_1866
.label_1861:
	test	bh, 8
	je	.label_1869
	test	ecx, ecx
	jne	.label_1866
.label_1869:
	test	bh, 0x20
	je	.label_1872
	mov	ecx, eax
	and	ecx, 2
	je	.label_1866
.label_1872:
	test	bpl, bpl
	jns	.label_1877
	and	eax, 8
	je	.label_1866
	nop	word ptr cs:[rax + rax]
.label_1877:
	mov	r12, qword ptr [r13 + 0xc8]
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r9, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x30], r9
	test	r12, r12
	mov	eax, 0
	jle	.label_1881
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	eax, eax
	mov	rdx, r12
	nop	word ptr [rax + rax]
.label_1896:
	lea	rsi, [rdx + rax]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r8
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	rax, rsi
	cmp	rax, rdx
	jl	.label_1896
.label_1881:
	cmp	rax, r12
	jge	.label_1901
	cmp	rax, -1
	je	.label_1901
	mov	rcx, qword ptr [r13 + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r8
	jne	.label_1901
	lea	rax, [rcx + rax*8]
	nop	dword ptr [rax]
.label_1858:
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	qword ptr [rax], rcx
	je	.label_1905
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_1858
.label_1901:
	cmp	qword ptr [r13 + 0xe8], 0
	mov	rax, r12
	jle	.label_1859
	mov	qword ptr [rsp + 0x20], r15
	mov	rax, qword ptr [r9]
	mov	r10, qword ptr [rax + r14]
	mov	qword ptr [rsp + 0x18], r10
	xor	r11d, r11d
	jmp	.label_1864
	nop	word ptr cs:[rax + rax]
.label_1873:
	mov	rax, qword ptr [r9]
.label_1864:
	mov	rcx, qword ptr [r13 + 0xf8]
	mov	r14, qword ptr [rcx + r11*8]
	mov	qword ptr [rsp + 0x28], r14
	mov	rcx, qword ptr [r14 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r10
	jne	.label_1857
	mov	qword ptr [rsp + 0x38], r11
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x20]
	test	rax, rax
	jle	.label_1883
	mov	rbx, r8
	xor	r12d, r12d
	jmp	.label_1885
.label_1883:
	mov	rdx, r8
	mov	rdi, r15
	xor	r12d, r12d
	jmp	.label_1868
.label_1882:
	mov	r9, qword ptr [r13 + 0x58]
	cmp	rdi, r9
	jg	.label_1894
	mov	qword ptr [rsp + 0x60], rdx
	mov	rax, qword ptr [r13 + 0x40]
	mov	r8, qword ptr [r13 + 0xc0]
	cmp	rax, rdi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, r13
	mov	rdx, r14
	jg	.label_1895
	cmp	rax, r9
	jl	.label_1899
.label_1895:
	cmp	rcx, qword ptr [rsp + 0x68]
	jg	.label_1900
	cmp	rcx, r9
	jge	.label_1900
.label_1899:
	mov	rax, qword ptr [rsp + 0x68]
	lea	esi, [rax + 1]
	mov	r14, rdi
	mov	r13, r8
	call	extend_buffers
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rdi, r14
	mov	r8, r13
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1862
.label_1900:
	mov	r14, rdx
	mov	rdx, qword ptr [rsp + 0x68]
	sub	rdx, r8
	mov	r13, rdi
	jle	.label_1907
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r8*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [r13 + 0xc0], rax
.label_1907:
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_1870
	nop	word ptr cs:[rax + rax]
.label_1885:
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rcx + r12*8]
	mov	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x78], rcx
	mov	rdi, rcx
	sub	rdi, r15
	add	rdi, rbx
	mov	rbp, rcx
	sub	rbp, r15
	jle	.label_1889
	mov	rcx, qword ptr [r13 + 0x30]
	cmp	rdi, rcx
	jg	.label_1882
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0x68], rdi
.label_1870:
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rax + rbx]
	lea	rsi, [rax + r15]
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	mov	r8, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x60]
	jne	.label_1893
.label_1889:
	mov	rbx, rdi
	mov	rdi, r13
	mov	rsi, r14
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rbp, r8
	call	get_subexp_sub
	mov	rcx, r13
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_1862
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 0x70], rax
	inc	r12
	mov	rax, qword ptr [r14 + 0x20]
	cmp	r12, rax
	mov	rdx, rbx
	mov	rdi, qword ptr [rsp + 0x78]
	mov	r15, rdi
	mov	r13, rcx
	mov	r8, rbp
	jl	.label_1885
	jmp	.label_1868
.label_1893:
	mov	rax, qword ptr [r14 + 0x20]
.label_1894:
	mov	rdx, rbx
	mov	rdi, r15
.label_1868:
	cmp	r12, rax
	jge	.label_1854
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1857
.label_1854:
	test	r12, r12
	setg	al
	movzx	ebp, al
	add	rbp, rdi
	cmp	rbp, r8
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jg	.label_1857
	jmp	.label_1878
.label_1875:
	cmp	r14, -1
	je	.label_1879
	mov	qword ptr [rsp + 0x38], r11
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x58], r8
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbx, r13
	jne	.label_1880
	lea	rsi, [rbp + 1]
	sub	rsi, qword ptr [r15]
	mov	edi, 0x18
	call	rpl_calloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	mov	r13d, 0xc
	je	.label_1862
.label_1880:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	mov	dword ptr [rsp], 9
	mov	rdi, rbx
	mov	rsi, rax
	mov	r8, r14
	mov	r9, rbp
	call	check_arrival
	mov	r13d, eax
	cmp	r13d, 1
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x68]
	je	.label_1898
	test	r13d, r13d
	jne	.label_1862
	mov	qword ptr [rsp + 0x78], rbx
	mov	rbx, qword ptr [r15 + 0x20]
	cmp	rbx, qword ptr [r15 + 0x18]
	mov	r12, r15
	je	.label_1904
.label_1867:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r13d, 0xc
	test	rax, rax
	mov	rbx, qword ptr [rsp + 0x78]
	je	.label_1862
	mov	rcx, qword ptr [r12 + 0x20]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r14
	mov	qword ptr [rax + 8], rbp
	inc	rcx
	mov	qword ptr [r12 + 0x20], rcx
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x80]
	mov	r8, qword ptr [rsp + 0x58]
	call	get_subexp_sub
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_1862
	mov	r15, r12
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1890
.label_1876:
	cmp	rdx, qword ptr [r13 + 0x58]
	jge	.label_1857
	mov	qword ptr [rsp + 0x38], r11
	mov	qword ptr [rsp + 0x18], r10
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x58], r8
	lea	rbx, [rdx + 1]
	mov	r15, rdx
	mov	rdi, r13
	mov	esi, ebx
	call	extend_buffers
	mov	rcx, r13
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1862
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r13, rcx
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdx, r15
	jmp	.label_1902
.label_1904:
	lea	rax, [rbx + rbx]
	mov	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	r13d, 0xc
	test	rax, rax
	je	.label_1862
	lea	rcx, [rbx + rbx + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1867
	nop	dword ptr [rax + rax]
.label_1878:
	cmp	rbp, qword ptr [r14]
	jle	.label_1897
	cmp	rdx, qword ptr [r13 + 0x30]
	jge	.label_1876
	lea	rbx, [rdx + 1]
.label_1902:
	mov	rcx, qword ptr [rsp + 0x70]
	movzx	eax, byte ptr [rbp + rcx - 1]
	movzx	ecx, byte ptr [rcx + rdx]
	cmp	ecx, eax
	mov	rdx, rbx
	jne	.label_1857
.label_1897:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rax + rbp*8]
	test	rcx, rcx
	je	.label_1884
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1884
	mov	qword ptr [rsp + 0x68], rdx
	mov	r15, r14
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [r9]
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1892:
	mov	r14, qword ptr [rcx + rsi*8]
	mov	rdi, r14
	shl	rdi, 4
	movzx	ebx, byte ptr [rdx + rdi + 8]
	cmp	ebx, 9
	jne	.label_1903
	cmp	qword ptr [rdx + rdi], r10
	je	.label_1875
.label_1903:
	inc	rsi
	cmp	rsi, rax
	jl	.label_1892
.label_1879:
	mov	rbx, r13
.label_1890:
	mov	rdx, qword ptr [rsp + 0x68]
	jmp	.label_1898
	nop	word ptr cs:[rax + rax]
.label_1884:
	mov	r15, r14
	mov	rbx, r13
.label_1898:
	cmp	rbp, r8
	lea	rbp, [rbp + 1]
	mov	r13, rbx
	mov	r14, r15
	jl	.label_1878
	nop	dword ptr [rax]
.label_1857:
	inc	r11
	cmp	r11, qword ptr [r13 + 0xe8]
	jl	.label_1873
	mov	rax, qword ptr [r13 + 0xc8]
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_1859
.label_1905:
	mov	rax, r12
.label_1859:
	mov	dword ptr [rsp + 0xa4], 0
	cmp	r12, rax
	jge	.label_1866
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_1855:
	mov	rax, qword ptr [r13 + 0xd8]
	mov	rbx, r13
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_1865
	cmp	qword ptr [rax + rbp - 0x10], r8
	jne	.label_1865
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	r13, qword ptr [r15 + 0x30]
	cmp	rsi, rdx
	jne	.label_1886
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x80]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1891
.label_1886:
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [rsp + 0x80]
	lea	rax, [rax*8]
	add	rax, qword ptr [r15 + 0x18]
.label_1891:
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	lea	r14, [rsi + r8]
	mov	qword ptr [rsp + 0x70], rsi
	sub	r14, rdx
	mov	qword ptr [rsp + 0x78], rdx
	lea	rsi, [r14 - 1]
	mov	r12, rbx
	mov	edx, dword ptr [r12 + 0xa0]
	mov	rdi, r12
	mov	rbx, r8
	call	re_string_context_at
	mov	rdx, rbx
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	rsi, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rcx + rdx*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_1906
	mov	rdx, qword ptr [rcx + 0x10]
.label_1906:
	mov	qword ptr [rsp + 0x68], rdx
	lea	rdx, [r13 + r15*8]
	test	rsi, rsi
	lea	rdi, [rsp + 0x88]
	je	.label_1860
	mov	r15d, eax
	mov	rsi, qword ptr [rsi + 0x50]
	mov	qword ptr [rsp + 0x60], rdx
	mov	rbx, rdi
	call	re_node_set_init_union
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_1874
	lea	rdi, [rsp + 0xa4]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	ecx, r15d
	call	re_acquire_state_context
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbx, r12
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_1887
	mov	r13d, dword ptr [rsp + 0xa4]
	test	r13d, r13d
	je	.label_1887
	jmp	.label_1863
.label_1860:
	lea	rdi, [rsp + 0xa4]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x60], rdx
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbx, r12
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_1887
	mov	r13d, dword ptr [rsp + 0xa4]
	test	r13d, r13d
	mov	r15, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x70]
	je	.label_1871
	jmp	.label_1863
.label_1887:
	mov	r15, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x70]
.label_1871:
	cmp	rdx, rcx
	jne	.label_1865
	mov	rax, qword ptr [rax + r8*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1865
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, r8
	mov	r14, r8
	call	check_subexp_matching_top
	mov	rcx, r14
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_1863
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	r14, rcx
	call	transit_state_bkref
	mov	r8, r14
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_1863
	nop	
.label_1865:
	inc	r12
	add	rbp, 0x28
	mov	r13, rbx
	cmp	r12, qword ptr [r13 + 0xc8]
	jl	.label_1855
	nop	word ptr [rax + rax]
.label_1866:
	mov	rcx, qword ptr [rsp + 0x48]
	inc	rcx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rcx, qword ptr [rax + 8]
	jl	.label_1856
.label_1888:
	mov	dword ptr [rsp + 0xa4], 0
	xor	r13d, r13d
	jmp	.label_1863
.label_1862:
	mov	dword ptr [rsp + 0xa4], r13d
.label_1863:
	mov	eax, r13d
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1874:
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	jmp	.label_1863
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414800

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	ecx, esi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_1908
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 0x58]
	add	rsi, rsi
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rdi, r14
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1908
	mov	rdi, qword ptr [r14 + 0xb8]
	test	rdi, rdi
	je	.label_1914
	mov	rax, qword ptr [r14 + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_1908
	mov	qword ptr [r14 + 0xb8], rcx
.label_1914:
	cmp	byte ptr [r14 + 0x88], 0
	mov	eax, dword ptr [r14 + 0x90]
	je	.label_1910
	cmp	eax, 2
	jl	.label_1916
	mov	rdi, r14
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1909
	jmp	.label_1908
.label_1910:
	cmp	eax, 2
	jl	.label_1921
	mov	rdi, r14
	call	build_wcs_buffer
	jmp	.label_1909
.label_1916:
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jge	.label_1911
	jmp	.label_1913
.label_1920:
	mov	cl, byte ptr [rax + rdx]
	jmp	.label_1917
	nop	word ptr cs:[rax + rax]
.label_1913:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_1920
.label_1917:
	movzx	r12d, cl
	lea	eax, [r12 + 0x80]
	cmp	eax, 0x17f
	ja	.label_1919
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r12d, dword ptr [rax + r12*4]
.label_1919:
	mov	rax, qword ptr [r14 + 8]
	mov	byte ptr [rax + rbx], r12b
	inc	rbx
	cmp	rbx, r15
	jl	.label_1913
	mov	rbx, r15
.label_1911:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	jmp	.label_1909
.label_1921:
	mov	rdx, qword ptr [r14 + 0x78]
	test	rdx, rdx
	je	.label_1909
	mov	rax, qword ptr [r14 + 0x30]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [r14 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_1912
	mov	rsi, qword ptr [r14 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbx + rax], dl
	jmp	.label_1918
	nop	dword ptr [rax]
.label_1915:
	mov	rdx, qword ptr [r14 + 0x78]
	mov	rsi, qword ptr [r14]
	mov	rdi, qword ptr [r14 + 8]
	add	rsi, qword ptr [r14 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_1918:
	inc	rax
	cmp	rax, rcx
	jl	.label_1915
	mov	rax, rcx
.label_1912:
	mov	qword ptr [r14 + 0x30], rax
	mov	qword ptr [r14 + 0x38], rax
.label_1909:
	xor	eax, eax
.label_1908:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4149c0

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	r14, qword ptr [r13 + 0x48]
	mov	r12, qword ptr [r13 + 0x98]
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_1922
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1929
.label_1922:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_1923
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_1925
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_1928
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_1930
.label_1923:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1929
.label_1925:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_1930:
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	bpl, bpl
	jne	.label_1929
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1929:
	test	rbx, rbx
	je	.label_1926
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1927
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1924
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1924
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1924
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1924
.label_1926:
	mov	rax, rbx
	jmp	.label_1924
.label_1927:
	mov	rax, rbx
.label_1924:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1928:
	xor	eax, eax
	jmp	.label_1924
	nop	
	.section	.text
	.align	32
	#Procedure 0x414b10

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	rbp, rdi
	test	r12, r12
	je	.label_1937
	mov	r13, qword ptr [r12 + 8]
	test	r15, r15
	je	.label_1941
	test	r13, r13
	jle	.label_1941
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1941
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1942
	mov	qword ptr [rsp], rbp
	xor	r14d, r14d
	xor	ebx, ebx
	xor	ebp, ebp
	mov	rcx, rbx
	jmp	.label_1934
.label_1941:
	test	r13, r13
	jle	.label_1937
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_1933
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1940
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1931
.label_1937:
	test	r15, r15
	je	.label_1933
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1933
	mov	qword ptr [rbp + 8], rdi
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jle	.label_1933
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1940
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1931
.label_1933:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_1931
.label_1936:
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_1934:
	cmp	rcx, qword ptr [r15 + 8]
	jge	.label_1939
	mov	rdx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rdx + rbp*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsi + rcx*8]
	cmp	rdx, rsi
	jle	.label_1943
	inc	rcx
	mov	qword ptr [rax + r14*8], rsi
	inc	r14
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1934
	jmp	.label_1939
.label_1943:
	sete	bl
	movzx	ebx, bl
	add	rbx, rcx
	inc	rbp
	mov	qword ptr [rax + r14*8], rdx
	inc	r14
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1936
	jmp	.label_1935
.label_1939:
	mov	rbx, rcx
.label_1935:
	sub	r13, rbp
	jle	.label_1932
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r14, rbp
	add	r14, qword ptr [r12 + 8]
	jmp	.label_1938
.label_1932:
	mov	rdx, qword ptr [r15 + 8]
	sub	rdx, rbx
	jle	.label_1938
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rax + rbx*8]
	shl	rdx, 3
	call	memcpy
	sub	r14, rbx
	add	r14, qword ptr [r15 + 8]
.label_1938:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r14
.label_1931:
	xor	ecx, ecx
.label_1942:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1940:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_1942
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414d00

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1944
	mov	rsi, qword ptr [r15]
	mov	qword ptr [rsp + 0x20], r15
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_1947
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_1945
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1947:
	test	r15, r15
	jle	.label_1948
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_1949
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_1949
.label_1948:
	mov	rax, qword ptr [r13 + 0xd8]
.label_1949:
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rax + rcx*8], rbx
	mov	qword ptr [rax + rcx*8 + 8], r14
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	cmovne	si, dx
	mov	word ptr [rax + rcx*8 + 0x22], si
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_1952
	mov	dword ptr [r13 + 0xe0], edi
.label_1952:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_1946
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1950
.label_1946:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_1951
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1951
.label_1950:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1944
.label_1951:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_1944
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_1944:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1945:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_1944
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414ee0

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rcx
	mov	r15, rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x8c], 0
	mov	rax, qword ptr [rax]
	mov	rcx, rdx
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x40], rax
	mov	rbx, qword ptr [r15 + 8]
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rcx, [rax + r9]
	cmp	rbx, rcx
	jle	.label_1985
	mov	qword ptr [rsp + 0x68], rdx
	mov	qword ptr [rsp + 0x18], r8
	mov	r12, rdi
	mov	r13, qword ptr [r15 + 0x10]
.label_1982:
	mov	qword ptr [rsp + 0x50], r12
	mov	r14, qword ptr [r15]
	test	r14, r14
	cmove	r14, rbp
	mov	rdi, r12
	mov	r12, qword ptr [rdi + 0x48]
	mov	rbx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rdi + 0xb8], r13
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	cmp	r14, rbp
	jne	.label_1973
	mov	dword ptr [rsp + 0x60], eax
	mov	rbp, r14
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_1978
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x30], r15
	mov	rcx, qword ptr [rsp + 0x68]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 0x8c], 0
	lea	rsi, [rsp + 0x70]
	mov	r15, qword ptr [rsp + 0x58]
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	ecx, dword ptr [rsp + 0xf0]
	call	check_arrival_expand_ecl
	mov	r14d, eax
	mov	dword ptr [rsp + 0x8c], r14d
	test	r14d, r14d
	jne	.label_1988
	mov	qword ptr [rsp + 0x20], r12
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, rbp
	jmp	.label_1954
.label_1973:
	mov	rbp, qword ptr [r13 + r14*8]
	mov	rcx, r14
	test	rbp, rbp
	je	.label_1958
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x30], r15
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_1960
	mov	dword ptr [rsp + 0x60], eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebx, ebx
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x58]
	mov	r8, rcx
	jmp	.label_1965
.label_1958:
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x30], r15
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, rcx
	jmp	.label_1977
.label_1960:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	qword ptr [rsp + 0x78], rbx
	mov	r14, qword ptr [rbp + 0x10]
	test	r14, r14
	mov	r15, qword ptr [rsp + 0x58]
	mov	r8, rcx
	jle	.label_1976
	mov	r12, r8
	mov	dword ptr [rsp + 0x60], eax
	mov	qword ptr [rsp + 0x70], rbx
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_1978
	mov	rsi, qword ptr [rbp + 0x18]
	shl	r14, 3
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, r12
	jmp	.label_1965
.label_1985:
	movabs	rsi, 0x7fffffffffffffff
	sub	rsi, rbx
	mov	r14d, 0xc
	cmp	rsi, rcx
	jle	.label_1956
	mov	qword ptr [rsp + 0x18], r8
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rax + rcx + 1]
	lea	rsi, [rcx + rbx]
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_1956
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x68], rdx
	mov	r12, rdi
	mov	rdi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x38], rsi
	lea	rsi, [rsi*8]
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_1956
	mov	qword ptr [r15 + 0x10], r13
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r15 + 8], rax
	lea	rdi, [r13 + rbx*8]
	mov	rdx, qword ptr [rsp + 0x60]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	jmp	.label_1982
.label_1976:
	mov	dword ptr [rsp + 0x60], eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebx, ebx
	mov	dword ptr [rsp + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x50]
.label_1965:
	test	byte ptr [rbp + 0x68], 0x40
	je	.label_1977
.label_1954:
	test	rbx, rbx
	mov	rcx, qword ptr [rsp + 0x40]
	je	.label_1983
	lea	rsi, [rsp + 0x70]
	mov	rdi, r13
	mov	rdx, r8
	mov	rbx, r8
	mov	r8d, dword ptr [rsp + 0xf0]
	call	expand_bkref_cache
	mov	r8, rbx
	mov	r14d, eax
	mov	dword ptr [rsp + 0x8c], r14d
	test	r14d, r14d
	jne	.label_1988
.label_1983:
	mov	rbx, r8
	lea	rdi, [rsp + 0x8c]
	lea	rdx, [rsp + 0x70]
	mov	rsi, r15
	mov	ecx, dword ptr [rsp + 0x60]
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1957
	mov	eax, dword ptr [rsp + 0x8c]
	test	eax, eax
	jne	.label_1959
.label_1957:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	r8, rbx
	mov	qword ptr [rax + r8*8], rbp
.label_1977:
	mov	r15, qword ptr [rsp + 0x48]
	cmp	r8, r15
	jge	.label_1968
	lea	rbx, [rsp + 0x70]
	xor	ecx, ecx
.label_1962:
	mov	qword ptr [rsp + 0x68], r8
	mov	qword ptr [rsp + 0x60], rbp
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rcx, rax
	jg	.label_1971
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x78], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + r8*8 + 8]
	test	rsi, rsi
	mov	r15, rbx
	je	.label_1972
	add	rsi, 8
	mov	rdi, r15
	mov	rbx, r8
	call	re_node_set_merge
	mov	r8, rbx
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	jne	.label_1959
.label_1972:
	test	rbp, rbp
	je	.label_1980
	mov	rbx, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0xb4], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	mov	qword ptr [rsp + 0xa0], 0
	cmp	qword ptr [rbp + 0x28], 0
	mov	edi, 0
	jle	.label_1981
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1984:
	mov	rax, qword ptr [rbp + 0x30]
	mov	r15, qword ptr [rax + r12*8]
	mov	rsi, qword ptr [rbx]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_1955
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r13
	mov	rcx, r8
	mov	r14, r8
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1974
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, r14
	mov	r14, rbx
	mov	rcx, qword ptr [rcx + r15*8]
	movsxd	rbp, eax
	add	rbp, rdx
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	qword ptr [rsp + 0x98], 0
	test	rsi, rsi
	lea	r13, [rsp + 0x90]
	je	.label_1967
	add	rsi, 8
	mov	rdi, r13
	mov	rbx, rcx
	call	re_node_set_merge
	mov	rcx, rbx
	mov	ebx, eax
	mov	dword ptr [rsp + 0xb4], ebx
	test	ebx, ebx
	jne	.label_1975
.label_1967:
	mov	rdi, r13
	mov	rsi, rcx
	call	re_node_set_insert
	test	al, al
	je	.label_1964
	lea	rdi, [rsp + 0xb4]
	mov	rsi, r14
	mov	rdx, r13
	call	re_acquire_state
	mov	r13, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	jne	.label_1953
	mov	ebx, dword ptr [rsp + 0xb4]
	test	ebx, ebx
	je	.label_1953
	jmp	.label_1975
	nop	dword ptr [rax]
.label_1974:
	mov	r14, rbx
	test	eax, eax
	jne	.label_1953
	mov	rsi, qword ptr [r14]
	mov	r8, qword ptr [rsp + 0x68]
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_1955:
	mov	r14, rbx
	add	rsi, rbp
	mov	rdi, r13
	mov	rdx, r8
	call	check_node_accept
	test	al, al
	je	.label_1961
.label_1953:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x70]
	call	re_node_set_insert
	test	al, al
	je	.label_1964
.label_1961:
	inc	r12
	mov	rbp, qword ptr [rsp + 0x60]
	cmp	r12, qword ptr [rbp + 0x28]
	mov	r8, qword ptr [rsp + 0x68]
	mov	rbx, r14
	jl	.label_1984
	mov	rdi, qword ptr [rsp + 0xa0]
	lea	r15, [rsp + 0x70]
.label_1981:
	mov	rbx, r8
	call	free
	mov	r8, rbx
	mov	dword ptr [rsp + 0x8c], 0
.label_1980:
	lea	r14, [r8 + 1]
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_1966
	mov	r12, r8
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, r15
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, rbx
	mov	ebp, dword ptr [rsp + 0xf0]
	mov	ecx, ebp
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	jne	.label_1959
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8d, ebp
	call	expand_bkref_cache
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	mov	r8, r12
	jne	.label_1959
.label_1966:
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	lea	rdi, [rsp + 0x8c]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, r15
	mov	rbx, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1979
	mov	eax, dword ptr [rsp + 0x8c]
	test	eax, eax
	jne	.label_1959
.label_1979:
	mov	rcx, qword ptr [rsp + 0x38]
	inc	rcx
	test	rbp, rbp
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r12*8 + 8], rbp
	mov	eax, 0
	cmovne	rcx, rax
	mov	r15, qword ptr [rsp + 0x48]
	cmp	r14, r15
	mov	r8, r14
	jl	.label_1962
	jmp	.label_1969
.label_1968:
	mov	r14, r8
.label_1969:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rax + r15*8]
	lea	rax, [rcx + 8]
	test	rcx, rcx
	cmove	rax, rcx
	mov	rcx, qword ptr [rsp + 0x30]
	mov	qword ptr [rcx], r14
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0xb8], rcx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r13 + 0x48], rcx
	je	.label_1963
	mov	rcx, qword ptr [rax + 8]
	test	rcx, rcx
	jle	.label_1963
	xor	r14d, r14d
	dec	rcx
	mov	rax, qword ptr [rax + 0x10]
	je	.label_1970
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x18]
.label_1986:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1986
	jmp	.label_1987
.label_1964:
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	ebx, 0xc
	mov	dword ptr [rsp + 0x8c], ebx
	jmp	.label_1959
.label_1975:
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	dword ptr [rsp + 0x8c], ebx
.label_1959:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	mov	r14d, dword ptr [rsp + 0x8c]
	jmp	.label_1956
.label_1970:
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x18]
.label_1987:
	cmp	rdx, -1
	je	.label_1963
	cmp	qword ptr [rax + rdx*8], rbp
	je	.label_1956
.label_1963:
	mov	r14d, 1
.label_1956:
	mov	eax, r14d
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1988:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	jmp	.label_1956
.label_1978:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0x8c], 0xc
	mov	r14d, 0xc
	jmp	.label_1956
.label_1971:
	mov	r14, r8
	jmp	.label_1969
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4156a0

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, ecx
	mov	r13, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [r12*8]
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_1990
	test	r12, r12
	jle	.label_1991
	xor	r12d, r12d
	jmp	.label_1996
	nop	dword ptr [rax]
.label_1993:
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_1996
	jmp	.label_1991
	nop	
.label_1995:
	cmp	rbp, -1
	je	.label_1989
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_1994
	nop	dword ptr [rax]
.label_1996:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_1989
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_1992:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_1997
	cmp	qword ptr [rbx + rcx], r13
	je	.label_1995
.label_1997:
	inc	rax
	cmp	rax, r10
	jl	.label_1992
.label_1989:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_1994:
	mov	ebx, eax
	test	ebx, ebx
	je	.label_1993
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1990
.label_1991:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_1990:
	mov	eax, ebx
	add	rsp, 0x28
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
	#Procedure 0x4157e0

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r15, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r10, rdi
	mov	qword ptr [rsp + 0x30], r10
	mov	rax, qword ptr [r10 + 0x98]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9, qword ptr [r10 + 0xc8]
	xor	eax, eax
	test	r9, r9
	mov	edx, 0
	jle	.label_1999
	mov	rsi, qword ptr [r10 + 0xd8]
	xor	edx, edx
	mov	rdi, r9
	nop	dword ptr [rax]
.label_2007:
	lea	rbp, [rdi + rdx]
	mov	rbx, rbp
	shr	rbx, 0x3f
	add	rbx, rbp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [rsi + rbp*8 + 8], r15
	cmovge	rdi, rbx
	lea	rbp, [rbx + 1]
	cmovl	rdx, rbp
	cmp	rdx, rdi
	jl	.label_2007
.label_1999:
	cmp	rdx, r9
	jge	.label_2012
	cmp	rdx, -1
	je	.label_2012
	mov	qword ptr [rsp + 0x10], rcx
	mov	dword ptr [rsp + 0x1c], r8d
	mov	rcx, qword ptr [r10 + 0xd8]
	lea	rdx, [rdx + rdx*4]
	mov	qword ptr [rsp + 8], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_2012
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_2004
.label_2017:
	mov	rcx, qword ptr [r10 + 0xd8]
.label_2004:
	mov	rax, qword ptr [rsp + 8]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_2008:
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	jle	.label_2000
	mov	rdx, qword ptr [r13]
	dec	rcx
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, rcx
	mov	esi, 0
	je	.label_2015
	nop	word ptr cs:[rax + rax]
.label_2023:
	lea	rbp, [rsi + rdi]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rsi, rbx
	cmovge	rdi, rbp
	cmp	rsi, rdi
	jb	.label_2023
.label_2015:
	cmp	rsi, -1
	je	.label_2000
	cmp	qword ptr [rax + rsi*8], rdx
	jne	.label_2000
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_2002
	test	rcx, rcx
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rsi + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_2001
	nop	
.label_2016:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2016
.label_2001:
	cmp	rdx, -1
	je	.label_2021
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], rbx
	jne	.label_2021
	mov	rbp, r14
	jmp	.label_2011
.label_2002:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [r10 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_2029
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	jle	.label_2006
	mov	rcx, rdi
	dec	rcx
	mov	rax, qword ptr [rbx + 0x18]
	mov	edx, 0
	je	.label_2010
	nop	dword ptr [rax + rax]
.label_1998:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1998
.label_2010:
	cmp	rdx, -1
	je	.label_2006
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_2024
.label_2006:
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rbx + 0x10]
	test	rbp, rbp
	jle	.label_2027
	mov	qword ptr [rsp + 0x40], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2003
	mov	rsi, qword ptr [rbx + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	jmp	.label_2013
.label_2021:
	mov	qword ptr [rsp + 0x30], r10
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2026
	mov	qword ptr [rax], rbx
	xor	eax, eax
.label_2014:
	mov	dword ptr [rsp + 0x20], eax
	mov	dword ptr [rsp + 0x64], eax
	mov	rdi, qword ptr [rsp + 0x38]
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rsp + 0x1c]
	call	check_arrival_expand_ecl
	mov	ebx, eax
	mov	rdi, r14
	mov	rbp, r14
	mov	rsi, r12
	call	re_node_set_merge
	mov	r14d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	edx, dword ptr [rsp + 0x20]
	mov	eax, ebx
	or	eax, edx
	mov	ecx, 2
	or	eax, r14d
	mov	r10, qword ptr [rsp + 0x30]
	jne	.label_2019
.label_2020:
	mov	r14, rbp
	jmp	.label_2011
.label_2029:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2022
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 0x64], 0
	jmp	.label_2025
.label_2027:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x50], 0
.label_2013:
	xor	ebx, ebx
.label_2018:
	mov	dword ptr [rsp + 0x64], ebx
	lea	rdi, [rsp + 0x40]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_2005
	xor	al, 1
	jne	.label_2005
.label_2025:
	lea	rdi, [rsp + 0x64]
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	r10, rbx
	mov	rax, qword ptr [r10 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	sete	al
	mov	edx, dword ptr [rsp + 0x64]
	test	edx, edx
	setne	cl
	and	cl, al
	movzx	ecx, cl
	mov	eax, dword ptr [rsp + 0x24]
	cmovne	eax, edx
	mov	dword ptr [rsp + 0x24], eax
.label_2024:
	mov	r14, qword ptr [rsp + 0x28]
.label_2011:
	test	ecx, ecx
	je	.label_2000
	cmp	ecx, 4
	jne	.label_2009
	nop	dword ptr [rax + rax]
.label_2000:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_2008
	jmp	.label_2012
.label_2026:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	eax, 0xc
	jmp	.label_2014
.label_2019:
	test	ebx, ebx
	cmovne	r14d, ebx
	test	edx, edx
	cmovne	r14d, edx
	mov	dword ptr [rsp + 0x64], r14d
	mov	ecx, 1
	mov	dword ptr [rsp + 0x24], r14d
	jmp	.label_2020
.label_2005:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 0x64], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0x24], ebx
	jmp	.label_2028
.label_2022:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x64], 0xc
	mov	dword ptr [rsp + 0x24], 0xc
	mov	ecx, 1
.label_2028:
	mov	r14, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x30]
	jmp	.label_2011
.label_2003:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	ebx, 0xc
	jmp	.label_2018
.label_2009:
	cmp	ecx, 2
	je	.label_2017
	mov	eax, dword ptr [rsp + 0x24]
.label_2012:
	add	rsp, 0x68
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
	#Procedure 0x415c70

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, r8d
	mov	r14, rcx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r12, rdi
	jmp	.label_2031
	nop	dword ptr [rax]
.label_2035:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_2031:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_2033
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_2038
	nop	
.label_2032:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2032
.label_2038:
	cmp	rdx, -1
	je	.label_2033
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_2036
.label_2033:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_2037
	cmp	qword ptr [rax + rcx], r14
	je	.label_2039
.label_2037:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_2030
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_2034
	test	rcx, rcx
	jne	.label_2035
	jmp	.label_2036
	nop	dword ptr [rax]
.label_2034:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_2030
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_2035
.label_2039:
	cmp	r15d, 9
	jne	.label_2036
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_2030
.label_2036:
	xor	eax, eax
.label_2030:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x415d80

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r14, rdi
	mov	r8, qword ptr [r12 + 8]
	test	r8, r8
	je	.label_2040
	mov	r15, r8
	jle	.label_2045
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_2052
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	r15, r8
	je	.label_2052
	movq	xmm0, r8
	lea	rbx, [r8 - 4]
	mov	eax, ebx
	shr	eax, 2
	inc	eax
	xor	edi, edi
	test	al, 3
	je	.label_2059
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	dword ptr [rax]
.label_2064:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 4
	inc	rbp
	jne	.label_2064
	jmp	.label_2051
.label_2059:
	pxor	xmm1, xmm1
.label_2051:
	cmp	rbx, 0xc
	jb	.label_2050
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	sub	rax, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr [rax + rax]
.label_2065:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x80
	add	rax, -0x10
	jne	.label_2065
.label_2050:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_2045
.label_2052:
	mov	rdx, r8
	sub	rdx, rax
	lea	rcx, [rcx + rax*8]
	nop	dword ptr [rax + rax]
.label_2054:
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_2054
.label_2045:
	mov	rdx, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r15
	lea	rax, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rax*8]
	test	rcx, rcx
	jle	.label_2057
	mov	rdx, qword ptr [rdx + rax*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_2041:
	test	r12, r12
	je	.label_2049
	mov	r13, qword ptr [rdx + rbx*8]
	cmp	r15, qword ptr [r13]
	jne	.label_2049
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_2049
	mov	rdi, r8
	nop	dword ptr [rax + rax]
.label_2047:
	test	rdi, rdi
	jle	.label_2042
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_2047
	nop	word ptr cs:[rax + rax]
.label_2049:
	inc	rbx
	cmp	rbx, rcx
	jl	.label_2041
.label_2057:
	mov	qword ptr [rsp + 0x10], rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2044
	mov	rbp, r13
	add	rbp, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbx, qword ptr [r12 + 8]
	test	rbx, rbx
	jle	.label_2062
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2043
	mov	qword ptr [rsp + 8], r14
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	jmp	.label_2053
.label_2062:
	mov	qword ptr [rsp + 8], r14
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	jle	.label_2055
	lea	r14, [r12 + 0x10]
.label_2053:
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_2063:
	mov	r8, qword ptr [rdi]
	mov	rcx, qword ptr [r14]
	mov	rdx, qword ptr [rcx + rax*8]
	shl	rdx, 4
	mov	ebp, dword ptr [r8 + rdx + 8]
	mov	ecx, ebp
	and	ecx, 0x3ffff
	cmp	ecx, 1
	je	.label_2061
	movzx	esi, bpl
	shr	ebp, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	cl, bl
	shr	cl, 5
	movzx	ecx, cl
	or	ecx, ebp
	shl	cl, 5
	and	cl, 0x20
	and	bl, 0xdf
	or	bl, cl
	mov	byte ptr [r13 + 0x68], bl
	cmp	esi, 0xc
	je	.label_2048
	cmp	esi, 4
	je	.label_2056
	cmp	esi, 2
	jne	.label_2058
	or	bl, 0x10
	jmp	.label_2060
.label_2056:
	or	bl, 0x40
	jmp	.label_2060
.label_2058:
	lea	rcx, [r8 + rdx + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_2061
.label_2048:
	or	bl, 0x80
.label_2060:
	mov	byte ptr [r13 + 0x68], bl
.label_2061:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2063
.label_2055:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	je	.label_2042
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_2044
.label_2040:
	mov	dword ptr [r14], 0
	jmp	.label_2046
.label_2043:
	mov	rdi, r13
	call	free
.label_2044:
	mov	dword ptr [r14], 0xc
.label_2046:
	xor	r13d, r13d
.label_2042:
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
	#Procedure 0x4160d0

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	cmp	r10d, 7
	je	.label_2090
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_2066
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_2066
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2073:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2066
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_2073
.label_2066:
	cmp	r10d, 5
	jne	.label_2077
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2067
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2084
	mov	rsi, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rsi + rcx]
	cmp	esi, 0xa
	je	.label_2067
.label_2084:
	test	al, al
	js	.label_2087
	mov	r14d, ebx
	jmp	.label_2067
.label_2077:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2067
	test	al, al
	je	.label_2067
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_2069
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_2069
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2076
.label_2069:
	cmp	r8d, 1
	jne	.label_2074
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_2076
.label_2074:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2076:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2083
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2088:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_2070
	inc	rdx
	cmp	rdx, rax
	jl	.label_2088
.label_2083:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_2089
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2071:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_2070
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2071
	mov	rsi, qword ptr [r15 + 0x40]
.label_2089:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_2072
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_2082:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_2080
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_2079
.label_2080:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2082
	jmp	.label_2072
.label_2070:
	mov	ecx, ebx
.label_2072:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2085
	mov	r14d, ecx
	jmp	.label_2067
.label_2085:
	test	ecx, ecx
	jg	.label_2067
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
	jmp	.label_2067
.label_2087:
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_2067
	mov	r14d, ebx
	jmp	.label_2067
.label_2090:
	mov	rax, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	esi, 0xc2
	jae	.label_2092
.label_2067:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2079:
	mov	ecx, ebx
	jmp	.label_2072
.label_2092:
	lea	rdi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rdi, rdx
	jg	.label_2067
	mov	bl, byte ptr [rcx + rax + 1]
	movzx	edi, sil
	cmp	edi, 0xdf
	ja	.label_2075
	movzx	eax, bl
	cmp	eax, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	bl, bl
	cmovs	r14d, eax
	jmp	.label_2067
.label_2075:
	cmp	edi, 0xef
	ja	.label_2086
	mov	esi, 3
	cmp	edi, 0xe0
	jne	.label_2068
	movzx	edi, bl
	cmp	edi, 0xa0
	jb	.label_2067
	jmp	.label_2068
.label_2086:
	cmp	edi, 0xf7
	ja	.label_2091
	mov	esi, 4
	cmp	edi, 0xf0
	jne	.label_2068
	movzx	edi, bl
	cmp	edi, 0x90
	jb	.label_2067
	jmp	.label_2068
.label_2091:
	cmp	edi, 0xfb
	ja	.label_2081
	mov	esi, 5
	cmp	edi, 0xf8
	jne	.label_2068
	movzx	edi, bl
	cmp	edi, 0x88
	jb	.label_2067
	jmp	.label_2068
.label_2081:
	cmp	edi, 0xfd
	ja	.label_2067
	mov	esi, 6
	cmp	edi, 0xfc
	jne	.label_2068
	movzx	edi, bl
	cmp	edi, 0x84
	jb	.label_2067
.label_2068:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_2067
	add	rax, rcx
	mov	ecx, 1
.label_2078:
	mov	dl, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_2067
	movzx	edx, dl
	cmp	edx, 0xbf
	ja	.label_2067
	inc	rcx
	cmp	rcx, rdi
	jl	.label_2078
	mov	r14d, esi
	jmp	.label_2067
	nop	
	.section	.text
	.align	32
	#Procedure 0x4163b0

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	rbx
	push	rax
	mov	rax, qword ptr [rdi + 8]
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebx, dword ptr [rsi + 8]
	movzx	ebp, bl
	xor	eax, eax
	dec	ebp
	cmp	ebp, 6
	ja	.label_2094
	jmp	qword ptr [word ptr [+ (rbp * 8) + label_2096]]
.label_2372:
	movzx	eax, byte ptr [rsi]
	cmp	eax, ecx
	je	.label_2095
	xor	eax, eax
	jmp	.label_2094
.label_2373:
	mov	rsi, qword ptr [rsi]
	mov	al, cl
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rsi + rax*8]
	bt	rax, rcx
	jb	.label_2095
	xor	eax, eax
	jmp	.label_2094
.label_2375:
	test	cl, cl
	js	.label_2101
.label_2374:
	test	cl, cl
	je	.label_2093
	movzx	eax, cl
	cmp	eax, 0xa
	jne	.label_2095
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2095
	xor	eax, eax
	jmp	.label_2094
.label_2093:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_2098
.label_2095:
	mov	ebp, ebx
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_2094
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2097
	test	ecx, ecx
	jne	.label_2097
	xor	eax, eax
	jmp	.label_2094
.label_2097:
	test	bh, 8
	je	.label_2099
	test	ecx, ecx
	je	.label_2099
	xor	eax, eax
	jmp	.label_2094
.label_2101:
	xor	eax, eax
	jmp	.label_2094
.label_2099:
	test	bh, 0x20
	je	.label_2100
	mov	ecx, eax
	and	ecx, 2
	jne	.label_2100
	xor	eax, eax
	jmp	.label_2094
.label_2098:
	xor	eax, eax
	jmp	.label_2094
.label_2100:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_2094:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4164a0

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r13, rsi
	mov	qword ptr [rbp - 0xb8], r13
	mov	r12, rdi
	mov	qword ptr [rbp - 0xd8], r12
	mov	edi, 0x3800
	call	malloc
	mov	rsi, rax
	mov	qword ptr [rbp - 0xc0], rsi
	test	rsi, rsi
	je	.label_2148
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xe8], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	xor	r14d, r14d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_2140
	lea	rax, [rsi + 0x1800]
	mov	qword ptr [rbp - 0xc8], rax
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2197:
	mov	qword ptr [rbp - 0x98], rbx
	mov	rax, qword ptr [r13 + 0x18]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [r12]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	mov	qword ptr [rbp - 0xa0], rdx
	mov	eax, dword ptr [rcx + rax + 8]
	movzx	r10d, al
	cmp	r10d, 1
	jne	.label_2170
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	cl, byte ptr [rcx]
	mov	edx, 1
	shl	rdx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x50], rdx
	jmp	.label_2103
	nop	word ptr cs:[rax + rax]
.label_2170:
	cmp	r10d, 7
	je	.label_2185
	cmp	r10d, 5
	je	.label_2187
	cmp	r10d, 3
	jne	.label_2102
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rcx]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x50]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	jmp	.label_2103
.label_2185:
	mov	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x50], -1
	mov	rcx, qword ptr [r12 + 0xd8]
	mov	rdx, -2
	test	cl, 0x40
	jne	.label_2195
	mov	qword ptr [rbp - 0x50], -0x401
	mov	rdx, -0x402
.label_2195:
	test	cl, cl
	jns	.label_2103
	mov	qword ptr [rbp - 0x50], rdx
	jmp	.label_2103
.label_2187:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_2107
	mov	rcx, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	movq	rcx, xmm0
	jmp	.label_2146
.label_2107:
	mov	qword ptr [rbp - 0x38], -1
	mov	qword ptr [rbp - 0x40], -1
	mov	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x50], -1
	mov	rcx, -1
.label_2146:
	mov	rdx, qword ptr [r12 + 0xd8]
	test	dl, 0x40
	jne	.label_2127
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x50], rcx
.label_2127:
	test	dl, dl
	jns	.label_2103
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x50], rcx
	nop	word ptr cs:[rax + rax]
.label_2103:
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, ecx
	and	edx, 0x3ff
	je	.label_2196
	test	cl, 0x20
	je	.label_2145
	mov	rdx, qword ptr [rbp - 0x50]
	test	dh, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	je	.label_2102
	mov	qword ptr [rbp - 0x50], 0x400
.label_2145:
	test	cl, cl
	js	.label_2149
	test	cl, 4
	je	.label_2153
	mov	edx, eax
	and	edx, 0x4000ff
	cmp	edx, 1
	je	.label_2149
	cmp	dword ptr [r12 + 0xb4], 1
	jle	.label_2160
	mov	rdx, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rdx]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	r9, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	movdqu	xmm1, xmmword ptr [rdx + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x40]
	mov	rdi, rbx
	movq	rbx, xmm1
	or	rbx, r8
	or	rbx, r9
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	or	rdx, rbx
	mov	rbx, rdi
	jmp	.label_2165
.label_2160:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rdx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r8, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdi, xmm0
	or	rdi, rdx
	or	rdi, r8
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	or	rdx, rdi
.label_2165:
	test	rdx, rdx
	je	.label_2102
.label_2153:
	test	cl, 8
	je	.label_2196
	cmp	r10d, 1
	setne	cl
	test	eax, 0x400000
	je	.label_2189
	test	cl, cl
	jne	.label_2189
	nop	word ptr cs:[rax + rax]
.label_2149:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_2102
.label_2189:
	cmp	dword ptr [r12 + 0xb4], 1
	jle	.label_2182
	mov	rax, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rax]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	rcx, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	movdqu	xmm1, xmmword ptr [rax + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x40]
	movq	rdi, xmm1
	or	rdi, rcx
	or	rdi, rdx
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rax, xmm0
	or	rax, rdi
	jmp	.label_2112
.label_2182:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rax, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdx, xmm0
	or	rdx, rax
	or	rdx, rcx
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rax, xmm0
	or	rax, rdx
.label_2112:
	test	rax, rax
	je	.label_2102
	nop	dword ptr [rax]
.label_2196:
	test	r14, r14
	jle	.label_2151
	mov	qword ptr [rbp - 0x80], rsi
	mov	r13, qword ptr [rbp - 0xc8]
	xor	edi, edi
	mov	edx, r10d
	mov	dword ptr [rbp - 0xb0], edx
	nop	
.label_2169:
	cmp	edx, 1
	jne	.label_2162
	mov	rax, qword ptr [rbp - 0xa0]
	movzx	eax, byte ptr [rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [r13 + rcx*8]
	bt	rcx, rax
	jae	.label_2139
.label_2162:
	mov	qword ptr [rbp - 0x88], rdi
	mov	qword ptr [rbp - 0x78], r14
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r12, qword ptr [r13]
	mov	r14, qword ptr [r13 + 8]
	mov	r9, r12
	and	r9, rax
	mov	r10, r14
	and	r10, rcx
	mov	rbx, r10
	or	rbx, r9
	mov	rdi, qword ptr [rbp - 0x40]
	mov	r15, qword ptr [r13 + 0x10]
	mov	r11, r15
	and	r11, rdi
	or	rbx, r11
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rsi, qword ptr [r13 + 0x18]
	mov	r8, rsi
	and	r8, rdx
	or	rbx, r8
	je	.label_2171
	mov	rbx, rax
	not	rbx
	and	rbx, r12
	not	r12
	and	r12, rax
	mov	qword ptr [rbp - 0xa8], r12
	mov	qword ptr [rbp - 0x50], r12
	mov	rdx, rcx
	not	rdx
	and	rdx, r14
	mov	rax, rdx
	or	rax, rbx
	not	r14
	and	r14, rcx
	mov	qword ptr [rbp - 0x48], r14
	mov	rcx, rdi
	not	rcx
	and	rcx, r15
	or	rax, rcx
	not	r15
	and	r15, rdi
	mov	qword ptr [rbp - 0x40], r15
	mov	r12, qword ptr [rbp - 0x90]
	mov	rdi, r12
	not	rdi
	and	rdi, rsi
	not	rsi
	and	rsi, r12
	mov	qword ptr [rbp - 0x38], rsi
	or	rax, rdi
	mov	r12, rsi
	je	.label_2183
	mov	qword ptr [rbp - 0x90], r12
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rax, rsi
	shl	rax, 5
	mov	r12, qword ptr [rbp - 0xc8]
	mov	qword ptr [r12 + rax], rbx
	mov	qword ptr [r12 + rax + 8], rdx
	mov	qword ptr [r12 + rax + 0x10], rcx
	mov	qword ptr [r12 + rax + 0x18], rdi
	mov	qword ptr [r13], r9
	mov	qword ptr [r13 + 8], r10
	mov	qword ptr [r13 + 0x10], r11
	mov	qword ptr [r13 + 0x18], r8
	lea	r12, [rsi + rsi*2]
	mov	rbx, qword ptr [rbp - 0xc0]
	lea	rcx, [rbx + r12*8]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [rbx + r12*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_2192
	mov	qword ptr [rbp - 0xd0], rax
	mov	qword ptr [rcx], rdi
	mov	qword ptr [rbp - 0xe0], rcx
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + r12*8 + 0x10], rax
	test	rax, rax
	mov	r12, qword ptr [rbp - 0x90]
	je	.label_2133
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0xd0]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_2137
	nop	
.label_2171:
	mov	r14, qword ptr [rbp - 0x78]
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0xb0]
	jmp	.label_2139
.label_2192:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	mov	r12, qword ptr [rbp - 0x90]
.label_2137:
	inc	qword ptr [rbp - 0x78]
.label_2183:
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [rbp - 0x80]
	call	re_node_set_insert
	test	al, al
	je	.label_2157
	or	r14, qword ptr [rbp - 0xa8]
	or	r15, r12
	or	r15, r14
	mov	r14, qword ptr [rbp - 0x78]
	mov	edx, dword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rbp - 0x88]
	je	.label_2159
.label_2139:
	inc	rdi
	add	r13, 0x20
	add	qword ptr [rbp - 0x80], 0x18
	cmp	rdi, r14
	jl	.label_2169
	jmp	.label_2159
.label_2151:
	xor	edi, edi
.label_2159:
	cmp	rdi, r14
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	r12, qword ptr [rbp - 0xd8]
	mov	r13, qword ptr [rbp - 0xb8]
	jne	.label_2102
	mov	rax, rdi
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmm1, xmmword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0xc8]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	mov	r15, rbx
	lea	rbx, [rdi + rdi*2]
	mov	rax, qword ptr [r13 + 0x18]
	mov	r14, qword ptr [rax + r15*8]
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movdqu	xmmword ptr [rsi + rbx*8], xmm0
	mov	r12, rdi
	mov	edi, 8
	call	malloc
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsi + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2188
	mov	qword ptr [rax], r14
	inc	r12
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	r14, r12
	mov	rbx, r15
	mov	r12, qword ptr [rbp - 0xd8]
	nop	word ptr cs:[rax + rax]
.label_2102:
	inc	rbx
	cmp	rbx, qword ptr [r13 + 0x10]
	jl	.label_2197
	test	r14, r14
	jle	.label_2140
	mov	r15, rsi
	lea	rax, [r14 + 1]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 0
	lea	rdi, [r14*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x60], rax
	xor	ecx, ecx
	test	rax, rax
	mov	edx, 0xc
	cmovne	edx, ecx
	mov	dword ptr [rbp - 0x54], edx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r14, rcx
	ja	.label_2110
	test	rax, rax
	je	.label_2110
	lea	rax, [r14*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_2120
	mov	qword ptr [rbp - 0xb8], r13
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xd0], 0
	jmp	.label_2125
.label_2133:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xe0]
	movdqu	xmmword ptr [rax], xmm0
.label_2157:
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	r12, qword ptr [rbp - 0x78]
.label_2175:
	mov	r14, -1
	test	r12, r12
	jle	.label_2140
	mov	rbx, rsi
	mov	r15, rsi
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_2144:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2144
	mov	rsi, r15
.label_2140:
	mov	rdi, rsi
	call	free
	test	r14, r14
	je	.label_2150
	xor	eax, eax
	jmp	.label_2152
.label_2150:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_2152
.label_2148:
	xor	eax, eax
	jmp	.label_2152
.label_2120:
	call	malloc
	test	rax, rax
	je	.label_2110
	mov	qword ptr [rbp - 0xb8], r13
	mov	cl, 1
	mov	dword ptr [rbp - 0xd0], ecx
.label_2125:
	mov	qword ptr [rbp - 0x80], rax
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0xb0], rax
	mov	qword ptr [rbp - 0x78], r14
	xor	edx, edx
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	esi, esi
	xor	eax, eax
	mov	qword ptr [rbp - 0x88], rax
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0xe0], rax
.label_2147:
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0x98], rdx
	mov	qword ptr [rbp - 0x68], 0
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [r15 + rcx*8 + 8]
	mov	qword ptr [rbp - 0xc0], r15
	test	rax, rax
	jle	.label_2179
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rbx, [rdx + rcx*8 + 8]
	mov	r13, qword ptr [rdx + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	
.label_2200:
	mov	rcx, qword ptr [r13 + r15*8]
	mov	rdx, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_2194
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	lea	rdi, [rbp - 0x70]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x54], eax
	test	eax, eax
	jne	.label_2106
	mov	rax, qword ptr [rbx]
.label_2194:
	inc	r15
	cmp	r15, rax
	jl	.label_2200
.label_2179:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_2105
	mov	ecx, dword ptr [rbp - 0x54]
	test	ecx, ecx
	jne	.label_2106
.label_2105:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2111
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + r14*8]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r14*8], rax
	jmp	.label_2114
.label_2111:
	mov	ecx, 1
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_2124
	mov	ecx, dword ptr [rbp - 0x54]
	test	ecx, ecx
	jne	.label_2106
.label_2124:
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	qword ptr [rcx + r14*8], rax
	je	.label_2128
	mov	al, 1
	cmp	dword ptr [r12 + 0xb4], 1
	jg	.label_2130
	mov	rax, qword ptr [rbp - 0xe0]
.label_2130:
	mov	qword ptr [rbp - 0xe0], rax
.label_2128:
	mov	ecx, 2
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_2114
	mov	eax, dword ptr [rbp - 0x54]
	test	eax, eax
	jne	.label_2106
.label_2114:
	mov	rax, r14
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x88]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x88], rdx
	mov	rsi, qword ptr [rbp - 0xa0]
	or	rsi, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	or	rdx, qword ptr [rcx + rax + 0x18]
	inc	r14
	cmp	r14, qword ptr [rbp - 0x78]
	mov	r15, qword ptr [rbp - 0xc0]
	jl	.label_2147
	mov	r15, rsi
	mov	r13, rdx
	mov	rax, qword ptr [rbp - 0xe0]
	and	al, 1
	mov	qword ptr [rbp - 0xe0], rax
	mov	edi, 8
	jne	.label_2172
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_2106
	mov	rcx, qword ptr [rbp - 0x88]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xc0]
	mov	r10, qword ptr [rbp - 0x80]
	je	.label_2176
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	jmp	.label_2180
.label_2186:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2186
	test	qword ptr [r12 + 0xb8], rdx
	je	.label_2191
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	jmp	.label_2193
.label_2191:
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
.label_2193:
	mov	qword ptr [rax + r9*8], rcx
	jmp	.label_2132
.label_2180:
	mov	rbx, -1
	test	dil, 1
	mov	rcx, r8
	jne	.label_2186
.label_2132:
	add	rdx, rdx
	shr	rdi, 1
	inc	r9
	test	rdi, rdi
	jne	.label_2180
.label_2176:
	mov	rsi, r15
	test	rsi, rsi
	mov	r15, qword ptr [rbp - 0x78]
	je	.label_2199
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	r9d, 0x40
	jmp	.label_2121
.label_2104:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2104
	test	qword ptr [r12 + 0xc0], rdx
	je	.label_2109
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2113
.label_2109:
	mov	rcx, qword ptr [r10 + rbx*8 + 8]
.label_2113:
	mov	qword ptr [rax + r9*8], rcx
	jmp	.label_2117
.label_2121:
	mov	rdi, -1
	test	sil, 1
	mov	rcx, r8
	jne	.label_2104
.label_2117:
	add	rdx, rdx
	shr	rsi, 1
	inc	r9
	test	rsi, rsi
	jne	.label_2121
.label_2199:
	mov	r9, r10
	mov	r10, qword ptr [rbp - 0x90]
	test	r10, r10
	mov	r11d, dword ptr [rbp - 0xd0]
	je	.label_2123
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	esi, 0x80
	jmp	.label_2126
.label_2131:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2131
	test	qword ptr [r12 + 0xc8], rdx
	je	.label_2134
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2135
.label_2134:
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_2135:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2143
.label_2126:
	mov	rdi, -1
	test	r10b, 1
	mov	rcx, r8
	jne	.label_2131
.label_2143:
	add	rdx, rdx
	shr	r10, 1
	inc	rsi
	test	r10, r10
	jne	.label_2126
.label_2123:
	test	r13, r13
	je	.label_2115
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_2161
.label_2168:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2168
	test	qword ptr [r12 + 0xd0], rdx
	je	.label_2158
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2163
.label_2158:
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_2163:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2166
.label_2161:
	mov	rdi, -1
	test	r13b, 1
	mov	rcx, r8
	jne	.label_2168
.label_2166:
	add	rdx, rdx
	shr	r13, 1
	inc	rsi
	test	r13, r13
	jne	.label_2161
.label_2115:
	mov	rcx, qword ptr [rbp - 0x88]
	test	ch, 4
	je	.label_2119
	lea	rdx, [r14 + 0x1800]
	xor	ecx, ecx
.label_2177:
	test	byte ptr [rdx + 1], 4
	jne	.label_2173
	inc	rcx
	add	rdx, 0x20
	cmp	rcx, r15
	jl	.label_2177
	jmp	.label_2119
.label_2188:
	lea	rax, [rsi + rbx*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	jmp	.label_2175
.label_2110:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	jmp	.label_2155
.label_2173:
	mov	rdx, qword ptr [rbp - 0xe0]
	test	dl, dl
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2119
	mov	qword ptr [rax + 0x850], rcx
.label_2119:
	test	r11b, r11b
	je	.label_2190
	mov	rdi, r9
	call	free
.label_2190:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
.label_2142:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2142
	mov	rdi, r14
	call	free
	mov	al, 1
	jmp	.label_2152
.label_2172:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_2106
	mov	rcx, qword ptr [rbp - 0x88]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xc0]
	mov	r10, qword ptr [rbp - 0x80]
	je	.label_2201
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	jmp	.label_2108
.label_2106:
	mov	eax, dword ptr [rbp - 0xd0]
	test	al, al
	je	.label_2116
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_2116:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	r14, qword ptr [rbp - 0x78]
	test	r14, r14
	mov	r15, qword ptr [rbp - 0xc0]
	jle	.label_2122
.label_2155:
	mov	rbx, r15
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2129:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r14
	jne	.label_2129
.label_2122:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_2152:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2136:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2136
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
	mov	qword ptr [rax + r9*8], rcx
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	jmp	.label_2141
.label_2108:
	mov	rbx, -1
	test	dil, 1
	mov	rcx, r8
	jne	.label_2136
.label_2141:
	add	rdx, rdx
	shr	rdi, 1
	inc	r9
	test	rdi, rdi
	jne	.label_2108
.label_2201:
	mov	rsi, r15
	test	rsi, rsi
	mov	r15, qword ptr [rbp - 0x78]
	je	.label_2154
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	r9d, 0x40
	jmp	.label_2156
.label_2164:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2164
	mov	rdi, qword ptr [r10 + rcx*8 + 8]
	mov	qword ptr [rax + r9*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	jmp	.label_2167
.label_2156:
	mov	rbx, -1
	test	sil, 1
	mov	rdi, r8
	jne	.label_2164
.label_2167:
	add	rdx, rdx
	shr	rsi, 1
	inc	r9
	test	rsi, rsi
	jne	.label_2156
.label_2154:
	mov	r9, r10
	mov	rcx, qword ptr [rbp - 0x90]
	test	rcx, rcx
	mov	r11d, dword ptr [rbp - 0xd0]
	je	.label_2174
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	esi, 0x80
	jmp	.label_2178
.label_2181:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2181
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2184
.label_2178:
	mov	rbx, -1
	test	cl, 1
	mov	r10, rcx
	mov	rdi, r8
	jne	.label_2181
.label_2184:
	add	rdx, rdx
	mov	rcx, r10
	shr	rcx, 1
	inc	rsi
	test	rcx, rcx
	jne	.label_2178
.label_2174:
	test	r13, r13
	je	.label_2115
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_2118
.label_2138:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2138
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2198
.label_2118:
	mov	rbx, -1
	test	r13b, 1
	mov	rdi, r8
	jne	.label_2138
.label_2198:
	add	rdx, rdx
	shr	r13, 1
	inc	rsi
	test	r13, r13
	je	.label_2115
	jmp	.label_2118
	nop	
	.section	.text
	.align	32
	#Procedure 0x417440

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15 + 0x18]
	mov	rbx, qword ptr [r15 + 0x10]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2220
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x40]
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2206
	lea	rax, [r15 + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0xc], 0
	nop	word ptr cs:[rax + rax]
.label_2202:
	mov	rdx, r13
	test	rdx, rdx
	jle	.label_2212
	mov	rdi, qword ptr [r15]
	cmp	qword ptr [rdi + rdx*8], 0
	je	.label_2215
	xor	eax, eax
	jmp	.label_2216
	nop	word ptr [rax + rax]
.label_2215:
	mov	eax, dword ptr [rsp + 0xc]
	inc	eax
.label_2216:
	cmp	eax, dword ptr [r14 + 0xe0]
	jg	.label_2218
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x48], 0
	lea	r13, [rdx - 1]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8 - 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x18], rdx
	test	rax, rax
	je	.label_2210
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2210
	mov	rcx, qword ptr [r14 + 0x98]
	mov	qword ptr [rsp + 0x30], rcx
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_2209:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	qword ptr [rsp + 0x38], r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2204
	mov	rax, r15
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdx, r14
	mov	r14, rax
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r15, r13
	mov	r13, rdx
	mov	rcx, r15
	call	check_node_accept_bytes
	test	eax, eax
	jle	.label_2207
	movsxd	rcx, eax
	add	rcx, r15
	cmp	rcx, qword ptr [rsp + 0x20]
	jle	.label_2208
	mov	rcx, r14
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jmp	.label_2211
.label_2207:
	mov	rcx, r14
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jne	.label_2211
	jmp	.label_2204
.label_2208:
	mov	rsi, r14
	mov	rdx, qword ptr [rsi]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r14, r13
	mov	r13, r15
	mov	r15, rsi
	je	.label_2204
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_2204
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2219
	nop	word ptr cs:[rax + rax]
.label_2205:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_2205
.label_2219:
	test	eax, eax
	je	.label_2204
	cmp	rdi, -1
	je	.label_2204
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2211
.label_2204:
	mov	rax, qword ptr [rsp + 0x30]
	add	r12, qword ptr [rax]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	call	check_node_accept
	test	al, al
	je	.label_2203
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_2203
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2203
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_2213
.label_2214:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_2214
.label_2213:
	cmp	rsi, -1
	je	.label_2203
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_2203
	nop	dword ptr [rax]
.label_2211:
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2217
	movsxd	rcx, eax
	add	rcx, r13
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax + 0x18]
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rax + r8*8]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x10]
	mov	r9, r13
	call	check_dst_limits
	test	al, al
	jne	.label_2203
.label_2217:
	lea	rdi, [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x38]
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	je	.label_2206
.label_2203:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x28]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_2209
.label_2210:
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	lea	rcx, [rsp + 0x40]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_2202
	jmp	.label_2206
.label_2212:
	xor	ebp, ebp
	jmp	.label_2206
.label_2218:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_2206:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_2221:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2220:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	ebp, 0xc
	jmp	.label_2221
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417790

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r11, rcx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x58], rbp
	mov	r13, rdi
	mov	r12, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0x6c], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rbx, qword ptr [rax + rdx*8]
	lea	rax, [rbx + 8]
	test	rbx, rbx
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x60], rax
	cmp	qword ptr [r11 + 8], 0
	je	.label_2265
	mov	qword ptr [rsp + 0x50], rdx
	test	rbx, rbx
	je	.label_2283
	mov	qword ptr [rsp + 0x38], rbx
	mov	dword ptr [rsp + 0x70], 0
	lea	rdi, [rsp + 0x70]
	mov	rsi, r12
	mov	qword ptr [rsp + 0x48], r12
	mov	rdx, r11
	mov	rbx, r11
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x70]
	test	r12d, r12d
	jne	.label_2231
	mov	r15, r14
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_2237
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	xor	ecx, ecx
	test	rax, rax
	mov	r12d, 0xc
	cmove	ecx, r12d
	mov	dword ptr [rsp + 0x70], ecx
	je	.label_2231
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2237
	mov	r14, rbp
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2285:
	mov	rax, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	call	re_node_set_merge
	test	eax, eax
	jne	.label_2278
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_2285
	mov	dword ptr [rsp + 0x70], 0
	mov	rbp, r14
.label_2237:
	mov	rdi, rbx
	mov	r14, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, r15
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0x6c], r12d
	test	r12d, r12d
	mov	rbx, qword ptr [rsp + 0x38]
	jne	.label_2247
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	mov	r11, r14
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_2283
	mov	qword ptr [rsp + 0x30], r13
	mov	r10, qword ptr [rsp + 0x50]
	jle	.label_2287
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + 0xd8]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2261:
	mov	rax, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [r13 + rax*8 + 0x10], r10
	jge	.label_2222
	cmp	qword ptr [r13 + rax*8 + 8], r10
	jl	.label_2222
	mov	rdx, qword ptr [r13 + rax*8]
	mov	rcx, qword ptr [r12]
	shl	rdx, 4
	mov	r8, qword ptr [rcx + rdx]
	mov	qword ptr [rsp + 0x40], r8
	cmp	qword ptr [r13 + rax*8 + 0x18], r10
	mov	rax, qword ptr [r11 + 8]
	jne	.label_2250
	test	rax, rax
	jle	.label_2222
	mov	qword ptr [rsp + 0x48], r12
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	mov	rsi, -1
	nop	word ptr [rax + rax]
.label_2279:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	ebx, 9
	je	.label_2257
	cmp	ebx, 8
	jne	.label_2240
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2273
	mov	rbp, rsi
.label_2273:
	mov	rsi, rbp
	jmp	.label_2240
	nop	word ptr [rax + rax]
.label_2257:
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2276
	mov	rbp, r14
.label_2276:
	mov	r14, rbp
.label_2240:
	add	rdx, 8
	dec	rax
	jne	.label_2279
	test	rsi, rsi
	mov	rbp, r11
	js	.label_2281
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbx, r10
	call	sub_epsilon_src_nodes
	mov	r10, rbx
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2262
.label_2281:
	test	r14, r14
	mov	r11, rbp
	mov	r12, qword ptr [rsp + 0x48]
	js	.label_2222
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	mov	ebp, 0
	jle	.label_2222
	nop	word ptr cs:[rax + rax]
.label_2234:
	mov	rax, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r12 + 0x38]
	lea	r9, [rsi + rsi*2]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	test	rdx, rdx
	jle	.label_2243
	dec	rdx
	mov	rdi, qword ptr [rax + r9*8 + 0x10]
	mov	eax, 0
	je	.label_2277
	nop	word ptr [rax + rax]
.label_2256:
	lea	rbx, [rax + rdx]
	shr	rbx, 1
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rcx, [rbx + 1]
	cmovl	rax, rcx
	cmovge	rdx, rbx
	cmp	rax, rdx
	jb	.label_2256
.label_2277:
	cmp	rax, -1
	je	.label_2243
	cmp	qword ptr [rdi + rax*8], r14
	je	.label_2259
.label_2243:
	mov	rax, qword ptr [r12 + 0x30]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	test	rdx, rdx
	jle	.label_2263
	dec	rdx
	mov	rcx, qword ptr [rax + r9*8 + 0x10]
	mov	eax, 0
	je	.label_2271
	nop	word ptr [rax + rax]
.label_2274:
	lea	rdi, [rax + rdx]
	shr	rdi, 1
	cmp	qword ptr [rcx + rdi*8], r14
	lea	rbx, [rdi + 1]
	cmovl	rax, rbx
	cmovge	rdx, rdi
	cmp	rax, rdx
	jb	.label_2274
.label_2271:
	cmp	rax, -1
	je	.label_2263
	cmp	qword ptr [rcx + rax*8], r14
	je	.label_2259
.label_2263:
	mov	qword ptr [rsp + 0x48], r15
	mov	r15, r13
	mov	rdi, r12
	mov	r13, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r12, r10
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2262
	dec	rbp
	mov	r8, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x48]
.label_2259:
	inc	rbp
	cmp	rbp, r8
	jl	.label_2234
	jmp	.label_2222
.label_2250:
	test	rax, rax
	mov	ebp, 0
	jg	.label_2241
	jmp	.label_2222
	nop	dword ptr [rax]
.label_2233:
	mov	rcx, qword ptr [r12]
.label_2241:
	mov	rdx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	edi, dword ptr [rcx + rdx + 8]
	mov	ebx, 0xfe
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	jne	.label_2251
	cmp	r8, qword ptr [rcx + rdx]
	jne	.label_2251
	mov	r14, r15
	mov	r15, r13
	mov	rdi, r12
	mov	r13, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r12, r10
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2262
	mov	rax, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	mov	r13, r15
	mov	r15, r14
	mov	r8, qword ptr [rsp + 0x40]
.label_2251:
	inc	rbp
	cmp	rbp, rax
	jl	.label_2233
	nop	word ptr [rax + rax]
.label_2222:
	inc	r15
	mov	rbp, qword ptr [rsp + 0x58]
	cmp	r15, qword ptr [rbp + 0x28]
	jl	.label_2261
.label_2287:
	mov	qword ptr [rsp + 0x50], r10
	mov	dword ptr [rsp + 0x6c], 0
	mov	r13, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x38]
.label_2283:
	lea	rdi, [rsp + 0x6c]
	mov	rsi, r12
	mov	rdx, r11
	call	re_acquire_state
	mov	rcx, qword ptr [rbp]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rcx + rdx*8], rax
	mov	r12d, dword ptr [rsp + 0x6c]
	test	r12d, r12d
	je	.label_2286
	jmp	.label_2247
.label_2265:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8], 0
.label_2286:
	test	rbx, rbx
	je	.label_2235
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_2235
	mov	rbx, rbp
	mov	r11, qword ptr [r13 + 0x98]
	mov	rbp, qword ptr [r13 + 0xc8]
	xor	r15d, r15d
	test	rbp, rbp
	jle	.label_2248
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	r15d, r15d
	mov	rax, rbp
	nop	word ptr cs:[rax + rax]
.label_2270:
	lea	rsi, [rax + r15]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], rdx
	cmovge	rax, rdi
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	cmp	r15, rax
	jl	.label_2270
.label_2248:
	cmp	r15, rbp
	jge	.label_2267
	cmp	r15, -1
	je	.label_2267
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rsp + 0x20], rcx
	cmp	qword ptr [rax + rcx*8 + 8], rdx
	jne	.label_2267
	mov	qword ptr [rsp + 0x70], 0
	mov	rax, qword ptr [rsp + 0x60]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2275
	mov	rdi, r13
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x50], rdx
	mov	r10, rbx
	mov	qword ptr [rsp + 0x58], r10
	lea	rax, [r10 + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	shl	qword ptr [rsp + 0x20], 3
	xor	r13d, r13d
.label_2272:
	mov	qword ptr [rsp + 0x28], r13
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, qword ptr [rax + r13*8]
	mov	qword ptr [rsp + 0x48], rbp
	mov	rax, qword ptr [r11]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	rbp, qword ptr [r10 + 0x10]
	jne	.label_2229
	cmp	eax, 4
	mov	rcx, rdx
	jne	.label_2245
	cmp	qword ptr [r10 + 0x18], rcx
	jne	.label_2252
	jmp	.label_2245
.label_2229:
	cmp	eax, 4
	mov	rcx, rdx
	jne	.label_2245
.label_2252:
	mov	rbx, qword ptr [rdi + 0xd8]
	add	rbx, qword ptr [rsp + 0x20]
	mov	r14, r15
	nop	
.label_2282:
	cmp	qword ptr [rbx], rbp
	jne	.label_2230
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	r9, rdx
	sub	r9, rax
	add	r9, rcx
	cmp	rdx, rax
	jne	.label_2260
	mov	rax, qword ptr [r11 + 0x28]
	lea	rdx, [rbp + rbp*2]
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
	jmp	.label_2264
	nop	
.label_2260:
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r11 + 0x18]
.label_2264:
	cmp	r9, qword ptr [r10 + 0x18]
	jg	.label_2230
	mov	rax, qword ptr [r10]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_2230
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2230
	mov	r12, r10
	mov	r8, qword ptr [rsi]
	dec	rax
	mov	r10, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2280
	nop	word ptr [rax + rax]
.label_2284:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [r10 + rsi*8], r8
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2284
.label_2280:
	cmp	rdx, -1
	je	.label_2228
	cmp	qword ptr [r10 + rdx*8], r8
	jne	.label_2228
	mov	qword ptr [rsp + 0x40], r11
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x48]
	call	check_dst_limits
	test	al, al
	mov	r10, r12
	je	.label_2239
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_2244
.label_2228:
	mov	r10, r12
	jmp	.label_2244
.label_2239:
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_2254
	mov	rax, qword ptr [r10 + 0x30]
	mov	qword ptr [rsp + 0xa0], rax
	movups	xmm0, xmmword ptr [r10]
	movups	xmm1, xmmword ptr [r10 + 0x10]
	movups	xmm2, xmmword ptr [r10 + 0x20]
	movaps	xmmword ptr [rsp + 0x90], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	rbx, qword ptr [r10 + 0x28]
	mov	qword ptr [rsp + 0x98], rbx
	test	rbx, rbx
	jle	.label_2255
	mov	rbp, r10
	mov	qword ptr [rsp + 0x90], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0xa0], rax
	test	rax, rax
	je	.label_2266
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	r10, rbp
	jmp	.label_2254
.label_2255:
	lea	rax, [rsp + 0x90]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_2254:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x80], rax
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x88], rax
	lea	rdi, [rsp + 0x90]
	mov	rsi, r14
	mov	rbx, r10
	call	re_node_set_insert
	mov	rdx, rbx
	mov	r12d, 0xc
	test	al, al
	mov	rax, qword ptr [rsp + 0x40]
	je	.label_2232
	mov	rbx, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rbx + rcx*8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsp + 0x70]
	mov	r12, rax
	mov	rbp, rdx
	call	sift_states_backward
	mov	r10, rbp
	mov	r11, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2232
	mov	rdi, qword ptr [r10 + 8]
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x38], rbx
	je	.label_2258
	mov	r13, -1
	test	rcx, rcx
	lea	rbp, [rsp + 0xa8]
	js	.label_2225
	nop	dword ptr [rax]
.label_2238:
	mov	rsi, qword ptr [rdi + r13*8 + 8]
	mov	rdx, qword ptr [rbx + r13*8 + 8]
	test	rsi, rsi
	je	.label_2242
	test	rdx, rdx
	je	.label_2223
	mov	rbx, rdi
	add	rsi, 8
	add	rdx, 8
	mov	rdi, rbp
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc4], r12d
	test	r12d, r12d
	jne	.label_2232
	lea	rdi, [rsp + 0xc4]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, rbp
	call	re_acquire_state
	mov	qword ptr [rbx + r13*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0xb8]
	call	free
	mov	rdi, rbx
	mov	r12d, dword ptr [rsp + 0xc4]
	test	r12d, r12d
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r10, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x38]
	je	.label_2223
	jmp	.label_2232
.label_2242:
	mov	qword ptr [rdi + r13*8 + 8], rdx
.label_2223:
	inc	r13
	cmp	r13, rcx
	jl	.label_2238
.label_2225:
	mov	r11, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x28]
.label_2258:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + rcx*8], rdx
	mov	r12, qword ptr [rsp + 0x98]
	test	r12, r12
	jle	.label_2249
	mov	rbp, r12
	dec	rbp
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rdi, rbp
	mov	edx, 0
	je	.label_2253
	nop	dword ptr [rax + rax]
.label_2227:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rax + rbx*8], r14
	lea	rsi, [rbx + 1]
	cmovl	rdx, rsi
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_2227
.label_2253:
	cmp	qword ptr [rax + rdx*8], r14
	mov	rdi, rdx
	je	.label_2268
	mov	rdi, -1
.label_2268:
	test	rdi, rdi
	js	.label_2249
	cmp	r12, rdi
	jle	.label_2249
	mov	qword ptr [rsp + 0x98], rbp
	cmp	rbp, rdi
	jle	.label_2249
	dec	r12
	lea	rdi, [rdx + 1]
	cmp	r12, rdi
	mov	rbx, rdi
	cmovge	rbx, r12
	sub	rbx, rdx
	cmp	rbx, 4
	jb	.label_2224
	mov	r8, rbx
	and	r8, 0xfffffffffffffffc
	mov	r9, rbx
	and	r9, 0xfffffffffffffffc
	je	.label_2224
	mov	qword ptr [rsp + 0x58], r10
	mov	qword ptr [rsp + 0x40], r11
	cmp	r12, rdi
	mov	rsi, rdi
	cmovge	rsi, r12
	sub	rsi, rdx
	add	rsi, -4
	mov	r11, rsi
	shr	r11, 2
	bt	rsi, 2
	mov	r10d, 0
	jb	.label_2246
	movups	xmm0, xmmword ptr [rax + rdx*8 + 8]
	movups	xmm1, xmmword ptr [rax + rdx*8 + 0x18]
	movups	xmmword ptr [rax + rdx*8], xmm0
	movups	xmmword ptr [rax + rdx*8 + 0x10], xmm1
	mov	r10d, 4
.label_2246:
	test	r11, r11
	je	.label_2269
	cmp	r12, rdi
	cmovge	rdi, r12
	sub	rdi, rdx
	and	rdi, 0xfffffffffffffffc
	sub	rdi, r10
	add	r10, rdx
	lea	rsi, [rax + r10*8 + 0x38]
.label_2236:
	movups	xmm0, xmmword ptr [rsi - 0x30]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rsi - 0x38], xmm0
	movups	xmmword ptr [rsi - 0x28], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x10]
	movups	xmm1, xmmword ptr [rsi]
	movups	xmmword ptr [rsi - 0x18], xmm0
	movups	xmmword ptr [rsi - 8], xmm1
	add	rsi, 0x40
	add	rdi, -8
	jne	.label_2236
.label_2269:
	cmp	rbx, r9
	mov	r11, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x58]
	je	.label_2249
	add	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_2224:
	mov	rsi, qword ptr [rax + rdx*8 + 8]
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, rbp
	jl	.label_2224
.label_2249:
	lea	rbx, [r14 + r14*4]
	shl	rbx, 3
	mov	rdi, qword ptr [rsp + 0x30]
	add	rbx, qword ptr [rdi + 0xd8]
.label_2244:
	mov	rbp, qword ptr [rsp + 0x48]
	nop	word ptr [rax + rax]
.label_2230:
	inc	r14
	cmp	byte ptr [rbx + 0x20], 0
	lea	rbx, [rbx + 0x28]
	jne	.label_2282
.label_2245:
	mov	rdx, rcx
	inc	r13
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x60]
	cmp	r13, qword ptr [rax + 8]
	jl	.label_2272
.label_2232:
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_2226
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
.label_2226:
	mov	dword ptr [rsp + 0x6c], r12d
	test	r12d, r12d
	je	.label_2235
	jmp	.label_2247
.label_2267:
	mov	dword ptr [rsp + 0x6c], 0
.label_2235:
	xor	r12d, r12d
.label_2247:
	mov	eax, r12d
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2262:
	mov	dword ptr [rsp + 0x6c], r12d
	jmp	.label_2247
.label_2278:
	mov	dword ptr [rsp + 0x70], eax
.label_2231:
	mov	dword ptr [rsp + 0x6c], r12d
	jmp	.label_2247
.label_2275:
	mov	dword ptr [rsp + 0x6c], 0
	jmp	.label_2235
.label_2266:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x90]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_2232
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418280

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rdx, qword ptr [r15 + 8]
	xor	eax, eax
	test	rdx, rdx
	je	.label_2288
	mov	r10, qword ptr [r14 + 8]
	test	r10, r10
	je	.label_2288
	lea	rax, [r10 + rdx]
	mov	rbx, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	rcx, [rsi + rax]
	cmp	rcx, rbx
	jle	.label_2300
	add	rbx, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2288
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r14 + 8]
	jmp	.label_2299
.label_2300:
	lea	r8, [r12 + 0x10]
.label_2299:
	lea	r9, [rdx + rsi]
	add	r9, r10
	dec	rsi
.label_2295:
	dec	rdx
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rdi, r10
.label_2294:
	lea	r10, [rdi - 1]
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2303:
	cmp	qword ptr [rbx + rdx*8], rax
	je	.label_2297
	jl	.label_2302
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_2303
	jmp	.label_2290
	nop	word ptr cs:[rax + rax]
.label_2302:
	cmp	rdi, 2
	mov	rdi, r10
	jge	.label_2294
	jmp	.label_2290
	nop	dword ptr [rax + rax]
.label_2297:
	mov	rbx, qword ptr [r8]
	test	rsi, rsi
	js	.label_2289
	nop	dword ptr [rax + rax]
.label_2304:
	mov	rcx, qword ptr [rbx + rsi*8]
	cmp	rcx, rax
	jle	.label_2301
	test	rsi, rsi
	lea	rsi, [rsi - 1]
	jg	.label_2304
	jmp	.label_2289
.label_2301:
	test	rsi, rsi
	js	.label_2289
	cmp	rcx, rax
	je	.label_2291
	nop	
.label_2289:
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_2291:
	test	rdx, rdx
	jle	.label_2290
	cmp	rdi, 2
	jge	.label_2295
.label_2290:
	mov	rcx, qword ptr [r12 + 8]
	mov	r11, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r14 + 8]
	lea	r14, [rcx + r11 - 1]
	add	r14, rdx
	mov	rax, r14
	sub	rax, r9
	lea	r10, [rax + 1]
	lea	rsi, [rax + rcx + 1]
	mov	qword ptr [r12 + 8], rsi
	test	rcx, rcx
	jle	.label_2298
	test	rax, rax
	js	.label_2298
	add	r11, rdx
	add	r11, rcx
	dec	rcx
	sub	r11, r9
	xor	edx, edx
.label_2293:
	mov	rdi, qword ptr [r8]
	lea	rax, [rdi + r11*8]
	nop	
.label_2306:
	mov	rsi, qword ptr [rdi + r14*8]
	mov	rbx, qword ptr [rdi + rcx*8]
	cmp	rsi, rbx
	jg	.label_2305
	mov	qword ptr [rax + rcx*8], rbx
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2306
	jmp	.label_2292
.label_2305:
	dec	r14
	dec	r11
	lea	rax, [r10 + rcx]
	dec	r10
	mov	qword ptr [rdi + rax*8], rsi
	jne	.label_2293
	jmp	.label_2296
.label_2298:
	mov	rdi, qword ptr [r8]
.label_2292:
	mov	rdx, r10
.label_2296:
	lea	rsi, [rdi + r9*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_2288:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418450

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x38]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	lea	rdx, [r15 + r15*2]
	mov	r9, qword ptr [rcx + rdx*8 + 8]
	test	r9, r9
	jle	.label_2311
	lea	rax, [rcx + rdx*8 + 8]
	mov	qword ptr [rsp + 0x18], rax
	lea	r14, [rcx + rdx*8 + 0x10]
	mov	qword ptr [rsp], rdx
	mov	qword ptr [rsp + 8], rcx
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_2330:
	mov	r11, qword ptr [r14]
	mov	rcx, qword ptr [r11 + r13*8]
	cmp	rcx, r15
	je	.label_2312
	mov	rdx, qword ptr [rdi]
	mov	rax, rcx
	shl	rax, 4
	test	byte ptr [rdx + rax + 8], 8
	je	.label_2312
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rcx + rcx*2]
	mov	rcx, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rcx]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_2329
	mov	r10, qword ptr [rcx + 8]
.label_2329:
	test	r9, r9
	jle	.label_2323
	mov	rcx, r9
	dec	rcx
	mov	ebp, 0
	je	.label_2334
	nop	word ptr [rax + rax]
.label_2315:
	lea	rbx, [rbp + rcx]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rax, [rbx + 1]
	cmovl	rbp, rax
	cmovge	rcx, rbx
	cmp	rbp, rcx
	jb	.label_2315
.label_2334:
	cmp	rbp, -1
	je	.label_2323
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2324
.label_2323:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_2324
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2327
	nop	word ptr cs:[rax + rax]
.label_2326:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [rbx + rax*8], rsi
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	cmp	rcx, rbp
	jb	.label_2326
.label_2327:
	cmp	rcx, -1
	je	.label_2324
	cmp	qword ptr [rbx + rcx*8], rsi
	je	.label_2309
.label_2324:
	test	r10, r10
	jle	.label_2312
	test	r9, r9
	jle	.label_2316
	mov	rbp, r9
	dec	rbp
	mov	ecx, 0
	je	.label_2317
	nop	word ptr [rax + rax]
.label_2320:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [r11 + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	cmp	rcx, rbp
	jb	.label_2320
.label_2317:
	cmp	rcx, -1
	je	.label_2316
	cmp	qword ptr [r11 + rcx*8], r10
	je	.label_2312
.label_2316:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_2312
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2331
	nop	word ptr cs:[rax + rax]
.label_2307:
	lea	rax, [rcx + rsi]
	shr	rax, 1
	cmp	qword ptr [rbp + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rsi, rax
	cmp	rcx, rsi
	jb	.label_2307
.label_2331:
	cmp	rcx, -1
	je	.label_2312
	cmp	qword ptr [rbp + rcx*8], r10
	jne	.label_2312
.label_2309:
	mov	rax, qword ptr [rdi + 0x38]
	mov	rbx, rdi
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x10]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2328
	mov	rax, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rax]
	mov	rdi, rbx
	nop	dword ptr [rax]
.label_2312:
	inc	r13
	cmp	r13, r9
	jl	.label_2330
	test	r9, r9
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jle	.label_2311
	lea	r8, [rsp + 0x30]
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	r11, [r10 - 1]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_2332:
	test	r10, r10
	mov	rax, qword ptr [r9 + r13*8]
	jle	.label_2319
	test	r11, r11
	mov	rdx, r11
	mov	ecx, 0
	je	.label_2321
	nop	word ptr cs:[rax + rax]
.label_2308:
	lea	rdi, [rcx + rdx]
	shr	rdi, 1
	cmp	qword ptr [rsi + rdi*8], rax
	lea	rbx, [rdi + 1]
	cmovl	rcx, rbx
	cmovge	rdx, rdi
	cmp	rcx, rdx
	jb	.label_2308
.label_2321:
	cmp	rcx, -1
	je	.label_2319
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_2325
.label_2319:
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jle	.label_2325
	mov	r15, r14
	dec	r15
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdi, r15
	mov	edx, 0
	je	.label_2333
	nop	dword ptr [rax + rax]
.label_2318:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rcx + rbx*8], rax
	lea	rbp, [rbx + 1]
	cmovl	rdx, rbp
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_2318
.label_2333:
	cmp	qword ptr [rcx + rdx*8], rax
	mov	rax, rdx
	je	.label_2322
	mov	rax, -1
.label_2322:
	test	rax, rax
	js	.label_2325
	cmp	r14, rax
	jle	.label_2325
	mov	qword ptr [r12 + 8], r15
	cmp	r15, rax
	jle	.label_2325
.label_2313:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	cmp	rdx, qword ptr [r12 + 8]
	jl	.label_2313
	nop	word ptr cs:[rax + rax]
.label_2325:
	inc	r13
	mov	rax, qword ptr [rsp + 0x18]
	cmp	r13, qword ptr [rax]
	jl	.label_2332
	jmp	.label_2310
.label_2311:
	lea	r8, [rsp + 0x30]
.label_2310:
	mov	rdi, qword ptr [r8]
	call	free
	xor	ebp, ebp
.label_2314:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2328:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	jmp	.label_2314
	nop	
	.section	.text
	.align	32
	#Procedure 0x4187b0

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 8], rdx
	mov	r10, rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rdi + 0xc8]
	xor	r14d, r14d
	test	rax, rax
	jle	.label_2345
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r14d, r14d
	mov	rdx, rax
	nop	dword ptr [rax]
.label_2335:
	lea	rsi, [rdx + r14]
	mov	rbx, rsi
	shr	rbx, 0x3f
	add	rbx, rsi
	sar	rbx, 1
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rbx
	lea	rsi, [rbx + 1]
	cmovl	r14, rsi
	cmp	r14, rdx
	jl	.label_2335
.label_2345:
	cmp	r14, rax
	jge	.label_2347
	mov	rsi, qword ptr [rdi + 0xd8]
	lea	rdx, [r14 + r14*4]
	cmp	qword ptr [rsi + rdx*8 + 8], rcx
	je	.label_2344
.label_2347:
	mov	r14, -1
.label_2344:
	xor	r12d, r12d
	test	rax, rax
	jle	.label_2338
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r12d, r12d
	mov	rdx, rax
	nop	
.label_2343:
	lea	rsi, [rdx + r12]
	mov	rbx, rsi
	shr	rbx, 0x3f
	add	rbx, rsi
	sar	rbx, 1
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], r9
	cmovge	rdx, rbx
	lea	rsi, [rbx + 1]
	cmovl	r12, rsi
	cmp	r12, rdx
	jl	.label_2343
.label_2338:
	cmp	r12, rax
	jge	.label_2339
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rdx, [r12 + r12*4]
	cmp	qword ptr [rax + rdx*8 + 8], r9
	je	.label_2340
.label_2339:
	mov	r12, -1
.label_2340:
	cmp	qword ptr [r10 + 8], 0
	jle	.label_2346
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2348:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rbp, qword ptr [rdx + r15*8]
	lea	rsi, [rbp + rbp*4]
	mov	rdx, qword ptr [rax + rsi*8]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rbx]
	shl	rdx, 4
	mov	rdx, qword ptr [rbx + rdx]
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	mov	r13d, 0xffffffff
	cmp	r11, rcx
	jle	.label_2336
	mov	ebx, 0xffffffff
	jmp	.label_2342
	nop	word ptr cs:[rax + rax]
.label_2336:
	mov	rsi, qword ptr [rax + rsi*8 + 0x18]
	mov	ebx, 1
	cmp	rsi, rcx
	jl	.label_2342
	cmp	r11, rcx
	sete	bl
	movzx	r8d, bl
	cmp	rsi, rcx
	sete	bl
	movzx	esi, bl
	add	esi, esi
	xor	ebx, ebx
	or	esi, r8d
	je	.label_2342
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	r8, r14
	mov	rbx, r9
	mov	rbp, r10
	call	check_dst_limits_calc_pos_1
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9, rbx
	mov	ebx, eax
	mov	rax, qword ptr [r10 + 0x10]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rsi, [rbp + rbp*4]
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_2342:
	cmp	r11, r9
	jg	.label_2341
	lea	rsi, [rbp + rbp*4]
	mov	rax, qword ptr [rax + rsi*8 + 0x18]
	mov	r13d, 1
	cmp	rax, r9
	jl	.label_2341
	cmp	r11, r9
	mov	esi, ebx
	sete	bl
	movzx	ebp, bl
	mov	ebx, esi
	cmp	rax, r9
	sete	al
	movzx	esi, al
	add	esi, esi
	xor	r13d, r13d
	or	esi, ebp
	je	.label_2341
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	rbp, r9
	mov	r13, r10
	call	check_dst_limits_calc_pos_1
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, r13
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9, rbp
	mov	r13d, eax
	nop	
.label_2341:
	cmp	r13d, ebx
	mov	al, 1
	jne	.label_2337
	inc	r15
	cmp	r15, qword ptr [r10 + 8]
	jl	.label_2348
	xor	eax, eax
	jmp	.label_2337
.label_2346:
	xor	eax, eax
.label_2337:
	add	rsp, 0x38
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
	#Procedure 0x418a20

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_2355
	lea	rdx, [rax + rcx*8 + 8]
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	qword ptr [rsp + 0x18], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 8], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	mov	byte ptr [rsp + 0xf], cl
	mov	eax, r13d
	and	eax, 1
	mov	dword ptr [rsp + 4], eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2359:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rbp]
	mov	rdx, r12
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	cmp	eax, 9
	je	.label_2349
	cmp	eax, 8
	je	.label_2356
	cmp	eax, 4
	jne	.label_2350
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_2350
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	mov	rax, qword ptr [rsp + 0x38]
	add	r14, qword ptr [rax + 0xd8]
.label_2358:
	cmp	qword ptr [r14], r12
	jne	.label_2352
	cmp	rbx, 0x3f
	jg	.label_2361
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x18], rax
	je	.label_2352
.label_2361:
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	je	.label_2362
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	test	ecx, ecx
	je	.label_2357
	mov	eax, 0xffffffff
	cmp	ecx, -1
	je	.label_2353
	cmp	rbx, 0x3f
	jg	.label_2352
	jmp	.label_2360
.label_2357:
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_2360
	xor	eax, eax
	cmp	dword ptr [rsp + 8], 0
	je	.label_2352
	jmp	.label_2353
.label_2360:
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x10]
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	dword ptr [rax]
.label_2352:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_2358
	jmp	.label_2350
	nop	word ptr cs:[rax + rax]
.label_2349:
	cmp	dword ptr [rsp + 8], 0
	je	.label_2350
	xor	eax, eax
	jmp	.label_2354
	nop	dword ptr [rax + rax]
.label_2356:
	cmp	dword ptr [rsp + 4], 0
	je	.label_2350
	mov	eax, 0xffffffff
.label_2354:
	cmp	qword ptr [rcx], rbx
	je	.label_2353
.label_2350:
	inc	r15
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rax]
	jl	.label_2359
.label_2355:
	shr	r13d, 1
	and	r13d, 1
	jmp	.label_2351
.label_2362:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_2351:
	mov	eax, r13d
.label_2353:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x418c30

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
	jne	.label_2364
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_2363
	test	cl, cl
	jne	.label_2363
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_2363
.label_2364:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_2363
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2363:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418c90

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_2366
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_2367
	cmp	byte ptr [rax + 1], 0
	je	.label_2365
.label_2367:
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_2366
.label_2365:
	xor	ebx, ebx
.label_2366:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x418cd0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	je	.label_2368
	mov	rax, rcx
.label_2368:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x418d00

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
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]