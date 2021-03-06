	.section	.text
	.align	16
	#Procedure 0x401d50

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_10
	xor	eax, eax
	call	error
	call	cleanup_fatal
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d80

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
	.align	16
	#Procedure 0x401dc0

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
	mov	rbx, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_47
	call	setlocale
	mov	edi, OFFSET FLAT:label_134
	mov	esi, OFFSET FLAT:label_135
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_134
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rip + global_argv],  rbx
	mov	qword ptr [rip + controls],  0
	mov	qword ptr [rip + control_used],  0
	mov	byte ptr [rip + suppress_count],  0
	mov	byte ptr [rip + remove_files],  1
	mov	byte ptr [rip + suppress_matched],  0
	mov	qword ptr [rip + prefix], OFFSET FLAT:label_93
	jmp	.label_94
	nop	word ptr cs:[rax + rax]
.label_2448:
	mov	byte ptr [rip + suppress_count],  1
.label_94:
	mov	edx, OFFSET FLAT:label_108
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, qword ptr [rsp + 8]
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_139
	add	eax, -0x62
	cmp	eax, 0x1e
	ja	.label_82
	jmp	qword ptr [(rax * 8) + label_113]
.label_2444:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + suffix],  rax
	jmp	.label_94
.label_2445:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + prefix],  rax
	jmp	.label_94
.label_2446:
	mov	byte ptr [rip + remove_files],  0
	jmp	.label_94
.label_2447:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_47
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + digits],  eax
	jmp	.label_94
.label_2449:
	mov	byte ptr [rip + elide_empty_files],  1
	jmp	.label_94
.label_2450:
	mov	byte ptr [rip + suppress_matched],  1
	jmp	.label_94
.label_139:
	cmp	eax, -1
	jne	.label_145
	mov	eax, dword ptr [rip + optind]
	mov	ecx, r15d
	sub	ecx, eax
	cmp	ecx, 1
	mov	dword ptr [rsp + 0x10], r15d
	jle	.label_146
	mov	rdi, qword ptr [rip + prefix]
	call	strlen
	mov	r14, rax
	cmp	qword ptr [rip + suffix],  0
	je	.label_152
	mov	r8, qword ptr [rip + suffix]
	xor	edi, edi
	movabs	rax, 0x100800001
	mov	r9d, 0x21000
	mov	rdx, r8
	jmp	.label_176
	nop	dword ptr [rax + rax]
.label_31:
	inc	rdx
.label_176:
	mov	bl, byte ptr [rdx]
	cmp	bl, 0x25
	je	.label_163
	test	bl, bl
	jne	.label_31
	jmp	.label_164
	nop	word ptr cs:[rax + rax]
.label_163:
	mov	cl, byte ptr [rdx + 1]
	inc	rdx
	cmp	cl, 0x25
	je	.label_31
	test	dil, 1
	jne	.label_172
	xor	edi, edi
	jmp	.label_101
	nop	dword ptr [rax]
.label_181:
	mov	cl, byte ptr [rdx + 1]
	inc	rdx
.label_101:
	movsx	ebp, cl
	lea	ebx, [rbp - 0x23]
	cmp	ebx, 0xd
	ja	.label_177
	jmp	qword ptr [(rbx * 8) + label_179]
.label_2553:
	or	edi, 2
	jmp	.label_181
	nop	dword ptr [rax]
.label_2554:
	or	edi, 1
	jmp	.label_181
	nop	word ptr cs:[rax + rax]
.label_177:
	add	ebp, -0x30
	cmp	ebp, 9
	ja	.label_147
	nop	dword ptr [rax + rax]
.label_11:
	movsx	ecx, byte ptr [rdx + 1]
	inc	rdx
	mov	esi, ecx
	add	esi, -0x30
	cmp	esi, 0xa
	jb	.label_11
.label_147:
	cmp	cl, 0x2e
	jne	.label_14
	nop	word ptr cs:[rax + rax]
.label_16:
	movsx	ecx, byte ptr [rdx + 1]
	inc	rdx
	mov	esi, ecx
	add	esi, -0x30
	cmp	esi, 0xa
	jb	.label_16
.label_14:
	mov	ebx, ecx
	add	bl, 0xa8
	movzx	ebp, bl
	cmp	bpl, 0x20
	ja	.label_20
	bt	rax, rbp
	jb	.label_74
	mov	ebx, 0xfffffffe
	bt	r9, rbp
	jae	.label_24
	mov	byte ptr [rdx], 0x75
	jmp	.label_25
.label_74:
	mov	ebx, 0xfffffffd
	jmp	.label_25
.label_24:
	cmp	rbp, 0x1d
	jne	.label_20
	nop	word ptr [rax + rax]
.label_25:
	and	ebx, edi
	mov	dil, 1
	je	.label_31
	movzx	ebp, cl
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	add	ebx, ebx
	and	ebx, 4
	xor	ebx, 0x27
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	mov	r8d, ebp
	call	error
.label_164:
	test	dil, 1
	je	.label_42
	mov	edi, 0
	mov	esi, 0
	mov	edx, 1
	xor	ecx, ecx
	mov	r9d, 0xffffffff
	xor	eax, eax
	call	__snprintf_chk
	test	eax, eax
	js	.label_48
	cdqe	
	jmp	.label_50
.label_152:
	mov	ecx, dword ptr [rip + digits]
	mov	eax, 0xa
	cmp	ecx, 0xa
	jb	.label_50
	movsxd	rax, dword ptr [rip + digits]
.label_50:
	mov	rcx, -2
	sub	rcx, r14
	cmp	rcx, rax
	jb	.label_48
	lea	rdi, [r14 + rax + 1]
	call	xmalloc
	mov	qword ptr [rip + filename_space],  rax
	movsxd	rax, dword ptr [rip + optind]
	lea	r13d, [rax + 1]
	mov	dword ptr [rip + optind],  r13d
	mov	rcx, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rcx + rax*8]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_112
	cmp	byte ptr [rbx + 1], 0
	je	.label_60
.label_112:
	xor	edi, edi
	xor	edx, edx
	xor	ecx, ecx
	mov	rsi, rbx
	call	fd_reopen
	test	eax, eax
	js	.label_63
	mov	r13d, dword ptr [rip + optind]
.label_60:
	cmp	r13d, r15d
	jge	.label_67
	nop	dword ptr [rax + rax]
.label_53:
	movsxd	r12, r13d
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax + r12*8]
	movsx	r15d, byte ptr [rbx]
	cmp	r15d, 0x2f
	je	.label_68
	cmp	r15b, 0x25
	jne	.label_70
.label_68:
	lea	rbp, [rbx + 1]
	mov	rdi, rbp
	mov	esi, r15d
	call	strrchr
	mov	r14, rax
	test	r14, r14
	je	.label_75
	mov	rax, qword ptr [rip + control_used]
	cmp	rax, qword ptr [rip + new_control_record.control_allocated]
	mov	qword ptr [rsp + 0x18], rbp
	jne	.label_77
	mov	rdi, qword ptr [rip + controls]
	test	rdi, rdi
	je	.label_80
	movabs	rcx, 0xe38e38e38e38e3
	cmp	rax, rcx
	jae	.label_83
	mov	rcx, rax
	shr	rcx, 1
	lea	rax, [rax + rcx + 1]
	jmp	.label_85
	nop	word ptr cs:[rax + rax]
.label_70:
	mov	rax, qword ptr [rip + control_used]
	cmp	rax, qword ptr [rip + new_control_record.control_allocated]
	jne	.label_91
	mov	rdi, qword ptr [rip + controls]
	test	rdi, rdi
	je	.label_92
	movabs	rcx, 0xe38e38e38e38e3
	cmp	rax, rcx
	jae	.label_98
	mov	rcx, rax
	shr	rcx, 1
	lea	rcx, [rax + rcx + 1]
	jmp	.label_99
	nop	word ptr cs:[rax + rax]
.label_77:
	mov	rbp, qword ptr [rip + controls]
	jmp	.label_104
.label_91:
	mov	r15, qword ptr [rip + controls]
	jmp	.label_105
.label_80:
	test	rax, rax
	mov	ecx, 1
	cmove	rax, rcx
	movabs	rcx, 0x155555555555555
	cmp	rax, rcx
	ja	.label_107
.label_85:
	mov	qword ptr [rip + new_control_record.control_allocated],  rax
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	xrealloc
	mov	rbp, rax
	mov	qword ptr [rip + controls],  rbp
	mov	rax, qword ptr [rip + control_used]
.label_104:
	mov	qword ptr [rsp + 0x20], rbx
	not	rbx
	add	rbx, r14
	lea	r12, [rax + rax*2]
	inc	rax
	shl	r12, 5
	cmp	r15b, 0x25
	mov	qword ptr [rip + control_used],  rax
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
	mov	qword ptr [rip + rpl_re_syntax_options],  0x2c6
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, r15
	call	rpl_re_compile_pattern
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_148
	add	rbp, r12
	cmp	byte ptr [r14 + 1], 0
	je	.label_151
	inc	r14
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_47
	mov	rdi, r14
	mov	rcx, rbp
	call	xstrtoimax
	test	eax, eax
	mov	ecx, dword ptr [rsp + 0x10]
	je	.label_156
	jmp	.label_158
.label_92:
	test	rax, rax
	mov	ecx, 1
	cmovne	rcx, rax
	movabs	rax, 0x155555555555555
	cmp	rcx, rax
	ja	.label_159
.label_99:
	mov	qword ptr [rip + new_control_record.control_allocated],  rcx
	shl	rcx, 5
	lea	rsi, [rcx + rcx*2]
	call	xrealloc
	mov	r15, rax
	mov	qword ptr [rip + controls],  r15
	mov	rax, qword ptr [rip + control_used]
.label_105:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + control_used],  rcx
	lea	rbx, [rax + rax*2]
	shl	rbx, 5
	mov	byte ptr [r15 + rbx + 0x1e], 0
	mov	byte ptr [r15 + rbx + 0x1c], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + rbx], xmm0
	mov	qword ptr [r15 + rbx + 0x10], 0
	mov	dword ptr [r15 + rbx + 0x18], r13d
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax + r12*8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_47
	lea	rcx, [rsp + 0x28]
	call	xstrtoumax
	test	eax, eax
	jne	.label_13
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_15
	lea	rbp, [r15 + rbx]
	cmp	rax, qword ptr [rip + parse_patterns.last_val]
	jb	.label_17
	jne	.label_23
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax + r12*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	rax, qword ptr [rsp + 0x28]
.label_23:
	mov	qword ptr [rip + parse_patterns.last_val],  rax
	mov	qword ptr [r15 + rbx + 8], rax
.label_151:
	mov	ecx, dword ptr [rsp + 0x10]
.label_156:
	lea	ebx, [r13 + 1]
	cmp	ebx, ecx
	jge	.label_35
	movsxd	r15, ebx
	mov	rax, qword ptr [rsp + 8]
	mov	r14, qword ptr [rax + r15*8]
	cmp	byte ptr [r14], 0x7b
	jne	.label_35
	mov	rdi, r14
	call	strlen
	mov	r12, rax
	cmp	byte ptr [r14 + r12 - 1], 0x7d
	jne	.label_38
	mov	byte ptr [r14 + r12 - 1], 0
	lea	rdi, [r14 + 1]
	cmp	r12, 3
	jne	.label_43
	cmp	byte ptr [rdi], 0x2a
	jne	.label_43
	mov	byte ptr [rbp + 0x1c], 1
	jmp	.label_45
.label_43:
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_47
	lea	rcx, [rsp + 0x30]
	call	xstrtoumax
	test	eax, eax
	jne	.label_51
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rbp + 0x10], rax
.label_45:
	mov	byte ptr [r14 + r12 - 1], 0x7d
	mov	r13d, ebx
	mov	ecx, dword ptr [rsp + 0x10]
.label_35:
	inc	r13d
	cmp	r13d, ecx
	jl	.label_53
.label_67:
	mov	edi, OFFSET FLAT:caught_signals
	call	sigemptyset
	lea	rdx, [rsp + 0x30]
	mov	edi, 0xe
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_57
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xe
	call	sigaddset
.label_57:
	lea	rdx, [rsp + 0x30]
	mov	edi, 1
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_62
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigaddset
.label_62:
	lea	rdx, [rsp + 0x30]
	mov	edi, 2
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_69
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigaddset
.label_69:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0xd
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_76
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xd
	call	sigaddset
.label_76:
	lea	rdx, [rsp + 0x30]
	mov	edi, 3
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_119
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 3
	call	sigaddset
.label_119:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0xf
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_88
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	call	sigaddset
.label_88:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0x1d
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_95
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1d
	call	sigaddset
.label_95:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0x1b
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_71
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	call	sigaddset
.label_71:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0x1a
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_109
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1a
	call	sigaddset
.label_109:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0x18
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_100
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigaddset
.label_100:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0x19
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_121
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x19
	call	sigaddset
.label_121:
	mov	qword ptr [rsp + 48], OFFSET FLAT:interrupt_handler
	movups	xmm0, xmmword ptr [rip + label_125]
	movups	xmmword ptr [rsp + 0xa8], xmm0
	movups	xmm0, xmmword ptr [rip + label_126]
	movups	xmmword ptr [rsp + 0x98], xmm0
	movups	xmm0, xmmword ptr [rip + label_127]
	movups	xmmword ptr [rsp + 0x88], xmm0
	movups	xmm0, xmmword ptr [rip + label_128]
	movups	xmmword ptr [rsp + 0x78], xmm0
	movups	xmm0, xmmword ptr [rip + label_129]
	movups	xmmword ptr [rsp + 0x68], xmm0
	movups	xmm0, xmmword ptr [rip + label_130]
	movups	xmmword ptr [rsp + 0x58], xmm0
	movups	xmm0, xmmword ptr [rip + label_131]
	movups	xmmword ptr [rsp + 0x48], xmm0
	movups	xmm0, xmmword ptr [rip + caught_signals]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	dword ptr [rsp + 0xb8], 0
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xe
	call	sigismember
	test	eax, eax
	je	.label_155
	lea	rsi, [rsp + 0x30]
	mov	edi, 0xe
	xor	edx, edx
	call	sigaction
.label_155:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigismember
	test	eax, eax
	je	.label_162
	lea	rsi, [rsp + 0x30]
	mov	edi, 1
	xor	edx, edx
	call	sigaction
.label_162:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigismember
	test	eax, eax
	je	.label_170
	lea	rsi, [rsp + 0x30]
	mov	edi, 2
	xor	edx, edx
	call	sigaction
.label_170:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xd
	call	sigismember
	test	eax, eax
	je	.label_178
	lea	rsi, [rsp + 0x30]
	mov	edi, 0xd
	xor	edx, edx
	call	sigaction
.label_178:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 3
	call	sigismember
	test	eax, eax
	je	.label_182
	lea	rsi, [rsp + 0x30]
	mov	edi, 3
	xor	edx, edx
	call	sigaction
.label_182:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	call	sigismember
	test	eax, eax
	je	.label_28
	lea	rsi, [rsp + 0x30]
	mov	edi, 0xf
	xor	edx, edx
	call	sigaction
.label_28:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1d
	call	sigismember
	test	eax, eax
	je	.label_22
	lea	rsi, [rsp + 0x30]
	mov	edi, 0x1d
	xor	edx, edx
	call	sigaction
.label_22:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	call	sigismember
	test	eax, eax
	je	.label_166
	lea	rsi, [rsp + 0x30]
	mov	edi, 0x1b
	xor	edx, edx
	call	sigaction
.label_166:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1a
	call	sigismember
	test	eax, eax
	je	.label_33
	lea	rsi, [rsp + 0x30]
	mov	edi, 0x1a
	xor	edx, edx
	call	sigaction
.label_33:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigismember
	test	eax, eax
	je	.label_175
	lea	rsi, [rsp + 0x30]
	mov	edi, 0x18
	xor	edx, edx
	call	sigaction
.label_175:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x19
	call	sigismember
	test	eax, eax
	je	.label_44
	lea	rsi, [rsp + 0x30]
	mov	edi, 0x19
	xor	edx, edx
	call	sigaction
.label_44:
	cmp	qword ptr [rip + control_used],  0
	je	.label_49
	mov	r15, qword ptr [rip + controls]
	xor	eax, eax
.label_168:
	mov	qword ptr [rsp + 0x10], rax
	lea	r13, [rax + rax*2]
	shl	r13, 5
	cmp	byte ptr [r15 + r13 + 0x1e], 0
	je	.label_52
	xor	r14d, r14d
	jmp	.label_54
	nop	
.label_136:
	mov	r14, rbx
	inc	r14
	mov	r15, qword ptr [rip + controls]
.label_54:
	cmp	byte ptr [r15 + r13 + 0x1c], 0
	jne	.label_56
	cmp	r14, qword ptr [r15 + r13 + 0x10]
	ja	.label_137
.label_56:
	mov	r12b, byte ptr [r15 + r13 + 0x1d]
	test	r12b, r12b
	jne	.label_58
	call	create_output_file
.label_58:
	lea	rbp, [r15 + r13]
	cmp	byte ptr [rip + suppress_matched],  1
	jne	.label_61
	mov	rax, qword ptr [rip + current_line]
	test	rax, rax
	je	.label_61
	call	remove_line
.label_61:
	lea	rax, [r15 + r13 + 0x1c]
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbp], 0
	js	.label_65
	mov	rdi, qword ptr [rip + current_line]
	inc	rdi
	mov	qword ptr [rip + current_line],  rdi
	call	find_line
	test	rax, rax
	je	.label_72
	lea	rbx, [r15 + r13 + 0x20]
.label_86:
	mov	rcx, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rsi + rcx - 1], 0xa
	cmovne	rdx, rcx
	xor	ecx, ecx
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	jne	.label_79
	call	remove_line
	test	r12b, r12b
	jne	.label_81
	mov	rdi, rax
	call	save_line_to_file
.label_81:
	mov	rdi, qword ptr [rip + current_line]
	inc	rdi
	mov	qword ptr [rip + current_line],  rdi
	call	find_line
	test	rax, rax
	jne	.label_86
	jmp	.label_72
	nop	word ptr cs:[rax + rax]
.label_65:
	lea	rbx, [r15 + r13 + 0x20]
.label_78:
	mov	rdi, qword ptr [rip + current_line]
	inc	rdi
	mov	qword ptr [rip + current_line],  rdi
	call	find_line
	test	rax, rax
	je	.label_96
	mov	rcx, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rsi + rcx - 1], 0xa
	cmovne	rdx, rcx
	xor	ecx, ecx
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_78
.label_79:
	mov	rbx, r14
	cmp	rax, -2
	je	.label_103
	mov	qword ptr [rsp + 8], rbp
	mov	r14, qword ptr [rbp]
	add	r14, qword ptr [rip + current_line]
	movsxd	rbp, dword ptr [r15 + r13 + 0x18]
	mov	rax, qword ptr [rip + head]
	test	rax, rax
	jne	.label_106
	call	load_buffer
	test	al, al
	je	.label_110
	mov	rax, qword ptr [rip + head]
.label_106:
	mov	qword ptr [rsp + 0x18], rbp
	mov	rbp, r14
	sub	rbp, qword ptr [rax + 0x18]
	jb	.label_111
	je	.label_116
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_124:
	call	remove_line
	test	rax, rax
	je	.label_111
	test	r12b, r12b
	jne	.label_122
	mov	rdi, rax
	call	save_line_to_file
.label_122:
	inc	r15
	cmp	r15, rbp
	jb	.label_124
.label_116:
	test	r12b, r12b
	jne	.label_132
	call	close_output_file
.label_132:
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jle	.label_136
	mov	qword ptr [rip + current_line],  r14
	jmp	.label_136
	nop	dword ptr [rax + rax]
.label_52:
	xor	r14d, r14d
	jmp	.label_138
	nop	word ptr cs:[rax + rax]
.label_180:
	mov	r15, qword ptr [rip + controls]
	mov	r14, r12
.label_138:
	cmp	byte ptr [r15 + r13 + 0x1c], 0
	jne	.label_144
	cmp	r14, qword ptr [r15 + r13 + 0x10]
	ja	.label_137
.label_144:
	mov	rbx, qword ptr [r15 + r13 + 8]
	call	create_output_file
	mov	rdi, qword ptr [rip + current_line]
	inc	rdi
	call	find_line
	test	rax, rax
	jne	.label_165
	cmp	byte ptr [rip + suppress_matched],  1
	je	.label_18
.label_165:
	mov	rax, qword ptr [rip + head]
	test	rax, rax
	jne	.label_153
	call	load_buffer
	test	al, al
	je	.label_110
	mov	rax, qword ptr [rip + head]
.label_153:
	lea	r12, [r14 + 1]
	imul	rbx, r12
	mov	rbp, qword ptr [rax + 0x18]
	jmp	.label_160
	nop	word ptr cs:[rax + rax]
.label_171:
	inc	rbp
	mov	rdi, rax
	call	save_line_to_file
.label_160:
	cmp	rbp, rbx
	jae	.label_167
	call	remove_line
	test	rax, rax
	jne	.label_171
	jmp	.label_18
	nop	
.label_167:
	call	close_output_file
	cmp	byte ptr [rip + suppress_matched],  1
	jne	.label_174
	call	remove_line
.label_174:
	mov	rdi, qword ptr [rip + current_line]
	inc	rdi
	call	find_line
	test	rax, rax
	jne	.label_180
	mov	al, byte ptr [rip + suppress_matched]
	test	al, al
	jne	.label_180
	jmp	.label_18
	nop	
.label_137:
	mov	rax, qword ptr [rsp + 0x10]
	inc	rax
	cmp	rax, qword ptr [rip + control_used]
	jb	.label_168
.label_49:
	call	create_output_file
	jmp	.label_12
	nop	dword ptr [rax]
.label_41:
	mov	rdi, rax
	call	save_line_to_file
.label_12:
	call	remove_line
	test	rax, rax
	jne	.label_41
	call	close_output_file
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_19
	xor	eax, eax
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_72:
	mov	rax, qword ptr [rsp + 8]
	cmp	byte ptr [rax], 0
	je	.label_34
	test	r12b, r12b
	je	.label_26
	jmp	.label_27
	nop	
.label_30:
	mov	rdi, rax
	call	save_line_to_file
.label_26:
	call	remove_line
	test	rax, rax
	jne	.label_30
	call	close_output_file
.label_27:
	xor	edi, edi
	call	exit
.label_96:
	mov	rax, qword ptr [rsp + 8]
	cmp	byte ptr [rax], 0
	je	.label_34
	test	r12b, r12b
	je	.label_36
	jmp	.label_157
	nop	word ptr cs:[rax + rax]
.label_40:
	mov	rdi, rax
	call	save_line_to_file
.label_36:
	call	remove_line
	test	rax, rax
	jne	.label_40
	call	close_output_file
.label_157:
	xor	edi, edi
	call	exit
.label_18:
	add	r15, r13
	mov	rdi, r15
	mov	rsi, r14
	call	handle_line_error
.label_111:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rip + global_argv]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rax + rcx*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	call	cleanup_fatal
.label_103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_39:
	mov	rdx, rcx
	call	error
	call	cleanup_fatal
.label_110:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_75:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
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
.label_148:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	r8, rbx
	call	error
	call	cleanup_fatal
.label_145:
	cmp	eax, 0xffffff7d
	je	.label_89
	cmp	eax, 0xffffff7e
	jne	.label_82
	xor	edi, edi
	call	usage
.label_158:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_87
.label_13:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax + r12*8]
	jmp	.label_87
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rax + r12*8]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	call	error
.label_17:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax + r12*8]
	call	quote
	mov	rbp, rax
	mov	rdi, qword ptr [rip + parse_patterns.last_val]
	lea	rsi, [rsp + 0x30]
	call	umaxtostr
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_172:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	jmp	.label_115
.label_20:
	test	cl, cl
	jne	.label_117
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	jmp	.label_115
.label_38:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	jmp	.label_87
.label_83:
	call	xalloc_die
.label_51:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_133
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rip + global_argv]
	mov	rdi, qword ptr [rax + r15*8]
.label_87:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_89:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_140
	mov	edx, OFFSET FLAT:label_141
	mov	r8d, OFFSET FLAT:label_142
	mov	r9d, OFFSET FLAT:label_143
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_82:
	mov	edi, 1
	call	usage
.label_117:
	movzx	ebx, cl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	jne	.label_154
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	jmp	.label_150
.label_107:
	call	xalloc_die
.label_48:
	call	xalloc_die
.label_98:
	call	xalloc_die
.label_154:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_161
.label_150:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_146:
	xor	edi, edi
	cmp	eax, r15d
	jge	.label_169
	mov	esi, OFFSET FLAT:label_173
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
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
.label_159:
	call	xalloc_die
.label_63:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
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
.label_42:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
.label_115:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_34:
	movzx	edx, r12b
	mov	rdi, rbp
	mov	rsi, r14
	call	regexp_error
.label_169:
	mov	esi, OFFSET FLAT:label_29
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
.label_19:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_39
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030c0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_184
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_186
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_141
	mov	ecx, OFFSET FLAT:label_197
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_190
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_190
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_189
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_190:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_197
	mov	ecx, OFFSET FLAT:label_140
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_199
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_140
	mov	ecx, OFFSET FLAT:label_195
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_184:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
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
	#Procedure 0x403320

	.globl interrupt_handler
	.type interrupt_handler, @function
interrupt_handler:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	byte ptr [rip + remove_files],  0
	je	.label_204
	cmp	dword ptr [rip + files_created],  0
	je	.label_205
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_206:
	mov	edi, ebp
	call	make_filename
	mov	rdi, rax
	call	unlink
	inc	ebp
	cmp	ebp, dword ptr [rip + files_created]
	jb	.label_206
.label_205:
	mov	dword ptr [rip + files_created],  0
.label_204:
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
	.align	16
	#Procedure 0x403380

	.globl close_output_file
	.type close_output_file, @function
close_output_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x88
	mov	rdi, qword ptr [rip + output_stream]
	test	rdi, rdi
	je	.label_207
	test	byte ptr [rdi], 0x20
	jne	.label_212
	call	rpl_fclose
	test	eax, eax
	jne	.label_208
	mov	rdi, qword ptr [rip + bytes_written]
	test	rdi, rdi
	jne	.label_214
	cmp	byte ptr [rip + elide_empty_files],  1
	jne	.label_214
	lea	r15, [rsp]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	call	sigprocmask
	mov	rdi, qword ptr [rip + output_filename]
	call	unlink
	mov	ebp, eax
	xor	ebx, ebx
	test	ebp, ebp
	sete	bl
	call	__errno_location
	mov	r14d, dword ptr [rax]
	sub	dword ptr [rip + files_created],  ebx
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	sigprocmask
	test	ebp, ebp
	je	.label_210
	mov	rdx, qword ptr [rip + output_filename]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_10
	xor	eax, eax
	mov	esi, r14d
	call	error
	jmp	.label_210
.label_214:
	mov	al, byte ptr [rip + suppress_count]
	test	al, al
	jne	.label_210
	mov	rbx, qword ptr [rip + stdout]
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_211
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_210:
	mov	qword ptr [rip + output_stream],  0
.label_207:
	add	rsp, 0x88
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_212:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + output_filename]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_213
.label_208:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + output_filename]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_10
	xor	eax, eax
	mov	esi, ebx
.label_213:
	call	error
	mov	qword ptr [rip + output_stream],  0
	call	cleanup_fatal
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403500

	.globl delete_all_files
	.type delete_all_files, @function
delete_all_files:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, edi
	cmp	byte ptr [rip + remove_files],  0
	je	.label_215
	cmp	dword ptr [rip + files_created],  0
	je	.label_218
	xor	ebp, ebp
	nop	
.label_216:
	mov	edi, ebp
	call	make_filename
	mov	rbx, rax
	mov	rdi, rbx
	call	unlink
	test	eax, eax
	je	.label_217
	test	r14b, r14b
	jne	.label_217
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_10
	xor	eax, eax
	mov	esi, r15d
	call	error
.label_217:
	inc	ebp
	cmp	ebp, dword ptr [rip + files_created]
	jb	.label_216
.label_218:
	mov	dword ptr [rip + files_created],  0
.label_215:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403590

	.globl make_filename
	.type make_filename, @function
make_filename:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edi
	mov	rdi, qword ptr [rip + filename_space]
	mov	rsi, qword ptr [rip + prefix]
	call	strcpy
	mov	rbx, qword ptr [rip + suffix]
	mov	rbp, qword ptr [rip + filename_space]
	mov	rdi, qword ptr [rip + prefix]
	call	strlen
	mov	rdi, rax
	add	rdi, rbp
	cmp	rbx, 0
	je	.label_219
	mov	rcx, qword ptr [rip + suffix]
	mov	esi, 1
	mov	rdx, -1
	xor	eax, eax
	mov	r8d, r14d
	call	__sprintf_chk
	jmp	.label_220
.label_219:
	mov	r8d, dword ptr [rip + digits]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_221
	xor	eax, eax
	mov	r9d, r14d
	call	__sprintf_chk
.label_220:
	mov	rax, qword ptr [rip + filename_space]
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403620

	.globl create_output_file
	.type create_output_file, @function
create_output_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x88
	mov	edi, dword ptr [rip + files_created]
	call	make_filename
	mov	qword ptr [rip + output_filename],  rax
	mov	ecx, dword ptr [rip + files_created]
	cmp	ecx, -1
	je	.label_223
	lea	r15, [rsp + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	call	sigprocmask
	mov	rdi, qword ptr [rip + output_filename]
	mov	esi, OFFSET FLAT:label_222
	call	fopen_safer
	mov	rbp, rax
	mov	qword ptr [rip + output_stream],  rbp
	xor	ebx, ebx
	test	rbp, rbp
	setne	bl
	call	__errno_location
	mov	r14d, dword ptr [rax]
	add	dword ptr [rip + files_created],  ebx
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	sigprocmask
	test	rbp, rbp
	je	.label_225
	mov	qword ptr [rip + bytes_written],  0
	add	rsp, 0x88
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_223:
	mov	r14d, 0x4b
	jmp	.label_224
.label_225:
	mov	rax, qword ptr [rip + output_filename]
.label_224:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_10
	xor	eax, eax
	mov	esi, r14d
	call	error
	call	cleanup_fatal
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403700

	.globl remove_line
	.type remove_line, @function
remove_line:
	push	r14
	push	rbx
	push	rax
	mov	r14, qword ptr [rip + remove_line.prev_buf]
	test	r14, r14
	je	.label_226
	mov	rdi, qword ptr [r14 + 0x30]
	test	rdi, rdi
	je	.label_231
	nop	dword ptr [rax]
.label_229:
	mov	rbx, qword ptr [rdi + 0x518]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_229
.label_231:
	mov	qword ptr [r14 + 0x30], 0
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	qword ptr [r14 + 0x28], 0
	mov	rdi, qword ptr [rip + remove_line.prev_buf]
	call	free
	mov	qword ptr [rip + remove_line.prev_buf],  0
.label_226:
	mov	rax, qword ptr [rip + head]
	test	rax, rax
	jne	.label_228
	xor	ebx, ebx
	call	load_buffer
	test	al, al
	je	.label_230
	mov	rax, qword ptr [rip + head]
.label_228:
	mov	rcx, qword ptr [rax + 0x18]
	cmp	qword ptr [rip + current_line],  rcx
	jae	.label_227
	mov	qword ptr [rip + current_line],  rcx
.label_227:
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
	jne	.label_230
	mov	rcx, qword ptr [rcx + 0x518]
	mov	qword ptr [rax + 0x38], rcx
	test	rcx, rcx
	je	.label_232
	cmp	qword ptr [rcx], 0
	jne	.label_230
.label_232:
	mov	qword ptr [rip + remove_line.prev_buf],  rax
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rip + head],  rax
.label_230:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037f0

	.globl find_line
	.type find_line, @function
find_line:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	r15, qword ptr [rip + head]
	test	r15, r15
	jne	.label_242
	xor	r14d, r14d
	call	load_buffer
	test	al, al
	je	.label_240
	mov	r15, qword ptr [rip + head]
.label_242:
	mov	rax, qword ptr [r15 + 0x10]
	xor	r14d, r14d
	cmp	rax, rbx
	ja	.label_240
	test	r15, r15
	je	.label_238
	mov	rcx, qword ptr [r15 + 0x20]
	add	rcx, rax
	cmp	rcx, rbx
	jbe	.label_239
	mov	rcx, r15
	jmp	.label_244
.label_239:
	xor	r14d, r14d
.label_243:
	mov	rcx, qword ptr [r15 + 0x40]
	test	rcx, rcx
	jne	.label_233
	call	load_buffer
	test	al, al
	je	.label_240
	mov	rcx, qword ptr [r15 + 0x40]
	test	rcx, rcx
	je	.label_238
.label_233:
	mov	rax, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rcx + 0x20]
	add	rdx, rax
	cmp	rdx, rbx
	mov	r15, rcx
	jbe	.label_243
.label_244:
	sub	rbx, rax
	mov	rax, qword ptr [rcx + 0x30]
	cmp	rbx, 0x50
	jb	.label_241
	nop	dword ptr [rax + rax]
.label_234:
	add	rbx, -0x50
	mov	rax, qword ptr [rax + 0x518]
	cmp	rbx, 0x4f
	ja	.label_234
.label_241:
	shl	rbx, 4
	lea	r14, [rax + rbx + 0x18]
.label_240:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_238:
	mov	edi, OFFSET FLAT:label_235
	mov	esi, OFFSET FLAT:label_236
	mov	edx, 0x26a
	mov	ecx, OFFSET FLAT:label_237
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4038c0

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
	mov	r12, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	rbx, qword ptr [rip + program_name]
	movsxd	rax, dword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rip + global_argv]
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
	je	.label_251
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
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
	jmp	.label_248
.label_251:
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_249
	xor	eax, eax
	call	__fprintf_chk
.label_248:
	test	r14b, r14b
	je	.label_246
	jmp	.label_247
	nop	word ptr [rax + rax]
.label_252:
	mov	rdi, rax
	call	save_line_to_file
.label_246:
	call	remove_line
	test	rax, rax
	jne	.label_252
	call	close_output_file
.label_247:
	call	cleanup_fatal
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4039b0

	.globl save_line_to_file
	.type save_line_to_file, @function
save_line_to_file:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rip + output_stream]
	mov	esi, 1
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbx]
	jne	.label_253
	add	qword ptr [rip + bytes_written],  rax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_253:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + output_filename]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	qword ptr [rip + output_stream],  0
	call	cleanup_fatal
	nop	
	.section	.text
	.align	16
	#Procedure 0x403a30

	.globl load_buffer
	.type load_buffer, @function
load_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	al, byte ptr [rip + have_read_eof]
	test	al, al
	jne	.label_265
	mov	rbx, qword ptr [rip + hold_count]
	cmp	rbx, 0x1fff
	mov	eax, 0x1fff
	cmovbe	rbx, rax
	jmp	.label_267
	nop	word ptr cs:[rax + rax]
.label_269:
	add	rbx, rbx
	mov	qword ptr [r14 + 0x30], 0
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, r14
	call	free
.label_267:
	cmp	rbx, 0x2000
	mov	r13d, 0x1fff
	jb	.label_258
	add	rbx, -0x1800
	and	rbx, 0xfffffffffffff800
	add	rbx, 0x1fff
	mov	r13, rbx
.label_258:
	mov	edi, 0x48
	call	xmalloc
	mov	r14, rax
	lea	rdi, [r13 + 1]
	call	xmalloc
	mov	r12, rax
	mov	qword ptr [r14 + 0x28], r12
	mov	qword ptr [r14], r13
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14 + 0x30], xmm0
	mov	qword ptr [r14 + 0x20], 0
	mov	qword ptr [r14 + 8], 0
	mov	rax, qword ptr [rip + last_line_number]
	inc	rax
	mov	qword ptr [r14 + 0x18], rax
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r14 + 0x40], 0
	mov	rbx, qword ptr [rip + hold_count]
	test	rbx, rbx
	je	.label_271
	mov	rsi, qword ptr [rip + hold_area]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcpy
	mov	qword ptr [r14 + 8], rbx
	sub	r13, rbx
	mov	qword ptr [rip + hold_count],  0
	mov	r15d, 0
	je	.label_262
	add	r12, rbx
.label_271:
	xor	edi, edi
	mov	rsi, r12
	mov	rdx, r13
	call	safe_read
	mov	r15, rax
	test	r15, r15
	je	.label_274
	cmp	r15, -1
	jne	.label_262
	jmp	.label_277
	nop	word ptr cs:[rax + rax]
.label_274:
	mov	byte ptr [rip + have_read_eof],  1
	xor	r15d, r15d
.label_262:
	lea	rax, [r14 + 0x30]
	mov	qword ptr [rsp], rax
	add	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], r15
	je	.label_282
	mov	rbx, qword ptr [r14 + 0x28]
	mov	esi, 0xa
	mov	rdi, rbx
	mov	rdx, r15
	call	memchr
	mov	r13, rax
	xor	ebp, ebp
	test	r13, r13
	je	.label_276
	nop	word ptr cs:[rax + rax]
.label_256:
	mov	r12, r13
	sub	r12, rbx
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_255
	mov	rax, qword ptr [r14 + 0x38]
	jmp	.label_275
	nop	word ptr cs:[rax + rax]
.label_255:
	mov	edi, 0x520
	call	xmalloc
	mov	qword ptr [rax + 0x518], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	qword ptr [r14 + 0x38], rax
	mov	qword ptr [r14 + 0x30], rax
.label_275:
	inc	r12
	cmp	qword ptr [rax], 0x50
	jne	.label_259
	mov	edi, 0x520
	call	xmalloc
	mov	qword ptr [rax + 0x518], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rcx, qword ptr [r14 + 0x38]
	mov	qword ptr [rcx + 0x518], rax
	mov	qword ptr [r14 + 0x38], rax
.label_259:
	mov	rcx, qword ptr [rax + 8]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 0x20], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	movdqu	xmm0, xmmword ptr [rax]
	paddq	xmm0, xmmword ptr [rip + label_272]
	movdqu	xmmword ptr [rax], xmm0
	sub	r15, r12
	mov	rbx, r13
	inc	rbx
	inc	rbp
	mov	esi, 0xa
	mov	rdi, rbx
	mov	rdx, r15
	call	memchr
	mov	r13, rax
	test	r13, r13
	jne	.label_256
	test	r15, r15
	je	.label_268
.label_276:
	cmp	byte ptr [rip + have_read_eof],  1
	jne	.label_261
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_263
	mov	r12, r14
	add	r12, 0x38
	mov	rax, qword ptr [r14 + 0x38]
	jmp	.label_257
	nop	dword ptr [rax]
.label_261:
	mov	rdi, rbx
	mov	rsi, r15
	call	xmemdup
	mov	rbx, rax
	mov	rdi, qword ptr [rip + hold_area]
	call	free
	mov	qword ptr [rip + hold_area],  rbx
	mov	qword ptr [rip + hold_count],  r15
	jmp	.label_268
.label_263:
	mov	edi, 0x520
	call	xmalloc
	mov	qword ptr [rax + 0x518], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	r12, r14
	add	r12, 0x38
	mov	qword ptr [r14 + 0x38], rax
	mov	qword ptr [r14 + 0x30], rax
.label_257:
	cmp	qword ptr [rax], 0x50
	jne	.label_270
	mov	edi, 0x520
	call	xmalloc
	mov	qword ptr [rax + 0x518], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rcx, qword ptr [r12]
	mov	qword ptr [rcx + 0x518], rax
	mov	qword ptr [r12], rax
.label_270:
	mov	rcx, qword ptr [rax + 8]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 0x20], rbx
	mov	qword ptr [rax + rcx + 0x18], r15
	movdqu	xmm0, xmmword ptr [rax]
	paddq	xmm0, xmmword ptr [rip + label_272]
	movdqu	xmmword ptr [rax], xmm0
	inc	rbp
.label_268:
	mov	qword ptr [r14 + 0x20], rbp
	mov	rax, qword ptr [rip + last_line_number]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14 + 0x18], rcx
	add	rax, rbp
	mov	qword ptr [rip + last_line_number],  rax
	test	rbp, rbp
	jne	.label_254
.label_282:
	mov	al, byte ptr [rip + have_read_eof]
	test	al, al
	jne	.label_264
	mov	rbx, qword ptr [r14]
	mov	rax, rbx
	shr	rax, 0x3e
	jne	.label_266
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rax]
	test	rdi, rdi
	je	.label_269
	nop	word ptr cs:[rax + rax]
.label_279:
	mov	rbp, qword ptr [rdi + 0x518]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_279
	jmp	.label_269
.label_264:
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rax]
	test	rdi, rdi
	je	.label_281
	nop	word ptr cs:[rax + rax]
.label_260:
	mov	rbx, qword ptr [rdi + 0x518]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_260
.label_281:
	mov	qword ptr [r14 + 0x30], 0
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, r14
	call	free
.label_265:
	xor	eax, eax
.label_280:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_254:
	mov	qword ptr [r14 + 0x40], 0
	mov	rax, qword ptr [r14 + 0x30]
	mov	qword ptr [r14 + 0x38], rax
	mov	rax, qword ptr [rip + head]
	test	rax, rax
	je	.label_273
	nop	word ptr [rax + rax]
.label_278:
	mov	rcx, rax
	mov	rax, qword ptr [rcx + 0x40]
	test	rax, rax
	jne	.label_278
	mov	qword ptr [rcx + 0x40], r14
	mov	al, 1
	jmp	.label_280
.label_273:
	mov	qword ptr [rip + head],  r14
	mov	al, 1
	jmp	.label_280
.label_266:
	call	xalloc_die
.label_277:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
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
	.align	16
	#Procedure 0x403ed0

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
	mov	r15, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r13, qword ptr [rip + program_name]
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
	mov	rbx, qword ptr [rip + stderr]
	jne	.label_284
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_249
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	call	cleanup_fatal
.label_284:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
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
	.section	.text
	.align	16
	#Procedure 0x403fa0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fb0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fc0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_290
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_286
	cmp	dword ptr [rbp], 0x20
	jne	.label_286
.label_290:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_288
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_286:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_285
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_287
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_10
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_288:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_287:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_289
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
	#Procedure 0x404080

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
	je	.label_291
	test	ebx, ebx
	js	.label_291
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
	jmp	.label_292
.label_291:
	mov	eax, ebx
.label_292:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040e0

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
	je	.label_293
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_297
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_294
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_295
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_293
.label_295:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_296
.label_297:
	mov	rax, rbx
	jmp	.label_293
.label_294:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_296:
	xor	eax, eax
.label_293:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404170

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_298:
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
	ja	.label_298
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041c0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_299
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_301
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_303
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_301
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_304
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_304:
	mov	rbx, r14
.label_301:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_299:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_300
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404270
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
	#Procedure 0x4042b0
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
	#Procedure 0x4042c0
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
	#Procedure 0x4042d0
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
	#Procedure 0x404310
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
	#Procedure 0x404330
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_305
	test	rdx, rdx
	je	.label_305
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_305:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404360
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
	#Procedure 0x4043e0

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
.label_345:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_341
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_347]
.label_2592:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_355
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_361
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_2593:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_373
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_373
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_383:
	cmp	r14, r11
	jae	.label_381
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_381:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_383
.label_373:
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
	jmp	.label_390
.label_2585:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_390
.label_2588:
	mov	al, 1
.label_2586:
	mov	r12b, 1
.label_2589:
	test	r12b, 1
	mov	cl, 1
	je	.label_402
	mov	ecx, eax
.label_402:
	mov	al, cl
.label_2587:
	test	r12b, 1
	jne	.label_404
	test	r11, r11
	je	.label_405
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_405:
	mov	r14d, 1
	jmp	.label_407
.label_404:
	xor	r14d, r14d
.label_407:
	mov	ecx, OFFSET FLAT:label_361
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_390
.label_2590:
	test	r12b, 1
	jne	.label_416
	test	r11, r11
	je	.label_419
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_419:
	mov	r14d, 1
	jmp	.label_422
.label_2591:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_311
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_390
.label_416:
	xor	r14d, r14d
.label_422:
	mov	eax, OFFSET FLAT:label_311
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_390:
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
	jmp	.label_323
	nop	dword ptr [rax]
.label_385:
	inc	rsi
.label_323:
	cmp	rbp, -1
	je	.label_365
	cmp	rsi, rbp
	jne	.label_367
	jmp	.label_368
	nop	word ptr cs:[rax + rax]
.label_365:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_376
.label_367:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_378
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_343
	cmp	rbp, -1
	jne	.label_343
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
.label_343:
	cmp	rbx, rbp
	jbe	.label_391
.label_378:
	xor	r8d, r8d
.label_400:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_393
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_395]
.label_2606:
	test	rsi, rsi
	jne	.label_386
	jmp	.label_315
	nop	word ptr cs:[rax + rax]
.label_391:
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
	jne	.label_410
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_400
	jmp	.label_420
.label_410:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_400
.label_2610:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_308
	test	rsi, rsi
	jne	.label_312
	cmp	rbp, 1
	je	.label_315
	xor	r13d, r13d
	jmp	.label_310
.label_2599:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_320
	cmp	byte ptr [rsp + 6], 0
	jne	.label_322
	cmp	r12d, 2
	jne	.label_327
	mov	eax, r9d
	and	al, 1
	jne	.label_327
	cmp	r14, r11
	jae	.label_329
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_329:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_334
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_334:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_330
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_330:
	add	r14, 3
	mov	r9b, 1
.label_327:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_396
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_396:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_350
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_350
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_350
	cmp	r14, r11
	jae	.label_363
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_363:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_344
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_344:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_310
.label_2600:
	mov	bl, 0x62
	jmp	.label_307
.label_2601:
	mov	cl, 0x74
	jmp	.label_318
.label_2602:
	mov	bl, 0x76
	jmp	.label_307
.label_2603:
	mov	bl, 0x66
	jmp	.label_307
.label_2604:
	mov	cl, 0x72
	jmp	.label_318
.label_2607:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_382
	cmp	byte ptr [rsp + 6], 0
	jne	.label_352
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
	jae	.label_389
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_389:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_399
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_399:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_403
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_403:
	add	r14, 3
	xor	r9d, r9d
.label_382:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_310
.label_2608:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_408
	cmp	r12d, 2
	jne	.label_386
	cmp	byte ptr [rsp + 6], 0
	je	.label_386
	jmp	.label_352
.label_2609:
	cmp	r12d, 2
	jne	.label_417
	cmp	byte ptr [rsp + 6], 0
	jne	.label_352
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_379
.label_393:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_426
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
.label_306:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_326
	test	r8b, r8b
	je	.label_326
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_310
.label_308:
	test	rsi, rsi
	jne	.label_346
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_346
.label_315:
	mov	dl, 1
.label_2605:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_352
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_310:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_357
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_360
	jmp	.label_364
	nop	word ptr cs:[rax + rax]
.label_357:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_364
.label_360:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_371
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_379
	jmp	.label_358
	nop	dword ptr [rax]
.label_364:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_358
	jmp	.label_379
.label_371:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_358
.label_320:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_385
	xor	r15d, r15d
	jmp	.label_386
.label_417:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_318
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_379
.label_318:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_352
.label_307:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_310
	nop	word ptr cs:[rax + rax]
.label_358:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_322
	cmp	r12d, 2
	jne	.label_406
	mov	eax, r9d
	and	al, 1
	jne	.label_406
	cmp	r14, r11
	jae	.label_337
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_337:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_411
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_411:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_424
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_424:
	add	r14, 3
	mov	r9b, 1
.label_406:
	cmp	r14, r11
	jae	.label_421
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_421:
	inc	r14
	jmp	.label_423
.label_426:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_427
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_427:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_370:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_332
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_336
	cmp	rbp, -2
	je	.label_340
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_321
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_333:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_374
	bt	rsi, rdx
	jb	.label_362
.label_374:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_333
.label_321:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_418
	xor	r13d, r13d
.label_418:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_370
	jmp	.label_306
.label_350:
	xor	r13d, r13d
	jmp	.label_310
.label_346:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_310
.label_408:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_386
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_386
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_386
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_324
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_348
	cmp	byte ptr [rsp + 6], 0
	jne	.label_316
	cmp	r14, r11
	jae	.label_398
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_398:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_384
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_384:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_409
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_409:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_397
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_397:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_310
.label_386:
	xor	eax, eax
.label_312:
	xor	r13d, r13d
	jmp	.label_310
.label_326:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_425
	nop	word ptr cs:[rax + rax]
.label_387:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_425:
	test	r8b, r8b
	je	.label_313
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_314
	cmp	r14, r11
	jae	.label_317
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_317:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_314
	nop	dword ptr [rax]
.label_313:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_420
	cmp	r12d, 2
	jne	.label_331
	mov	eax, r9d
	and	al, 1
	jne	.label_331
	cmp	r14, r11
	jae	.label_335
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_335:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_338
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_338:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_342
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_342:
	add	r14, 3
	mov	r9b, 1
.label_331:
	cmp	r14, r11
	jae	.label_415
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_415:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_356
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_356:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_359
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_359:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_314:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_379
	test	r9b, 1
	je	.label_349
	mov	ebx, eax
	and	bl, 1
	jne	.label_349
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_380
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_380:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_392
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_392:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_349:
	cmp	r14, r11
	jae	.label_387
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_387
	nop	word ptr cs:[rax + rax]
.label_379:
	test	r9b, 1
	je	.label_394
	and	al, 1
	jne	.label_394
	cmp	r14, r11
	jae	.label_375
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_375:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_366
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_366:
	add	r14, 2
	xor	r9d, r9d
.label_394:
	mov	ebx, r15d
.label_423:
	cmp	r14, r11
	jae	.label_401
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_401:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_385
.label_336:
	xor	r13d, r13d
.label_332:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_306
.label_340:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_414
	mov	rsi, qword ptr [rsp + 0x58]
.label_309:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_351
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_309
	xor	r13d, r13d
	jmp	.label_306
.label_414:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_306
.label_351:
	xor	r13d, r13d
	jmp	.label_306
.label_324:
	xor	r13d, r13d
	jmp	.label_310
.label_348:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_310
	nop	dword ptr [rax + rax]
.label_368:
	mov	rcx, rsi
.label_376:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_319
	or	al, dl
	je	.label_325
.label_319:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_328
	or	al, dl
	jne	.label_328
	test	r10b, 1
	jne	.label_339
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_328
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_345
.label_328:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_353
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_354
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_354
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_372:
	cmp	r14, r11
	jae	.label_388
	mov	byte ptr [rcx + r14], al
.label_388:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_372
	jmp	.label_354
.label_322:
	mov	qword ptr [rsp + 0x20], rbp
.label_420:
	mov	rdx, rdi
	jmp	.label_377
.label_352:
	mov	qword ptr [rsp + 0x20], rbp
.label_362:
	mov	rdx, rdi
	mov	eax, 2
.label_369:
	mov	qword ptr [rsp + 0x38], rax
.label_377:
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
.label_412:
	mov	r14, rax
.label_413:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_325:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_377
.label_339:
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
	jmp	.label_412
.label_353:
	mov	rcx, qword ptr [rsp + 8]
.label_354:
	cmp	r14, r11
	jae	.label_413
	mov	byte ptr [rcx + r14], 0
	jmp	.label_413
.label_316:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_369
.label_341:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051f0
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
	#Procedure 0x4052c0
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
	je	.label_428
	mov	qword ptr [rax], rbx
.label_428:
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
	#Procedure 0x4053b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_429
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_432:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_432
.label_429:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_433
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_430], OFFSET FLAT:slot0
.label_433:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_431
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_431:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405450
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405460

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
	js	.label_434
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_437
	cmp	r12d, 0x7fffffff
	je	.label_439
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
	jne	.label_435
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_435:
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
.label_437:
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
	jbe	.label_440
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_436
.label_440:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_438
	mov	rdi, r14
	call	free
.label_438:
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
.label_436:
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
.label_434:
	call	abort
.label_439:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405620
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405650
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
	#Procedure 0x405670
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
	je	.label_441
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
.label_441:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4056e0
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
	je	.label_442
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
.label_442:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405750

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
	je	.label_443
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
.label_443:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057c0
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
	je	.label_444
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
.label_444:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405830
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_445]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_446]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_447]
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
	#Procedure 0x4058a0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_445]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_446]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_447]
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
	#Procedure 0x405910

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_445]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_446]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_447]
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
	#Procedure 0x405970
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_445]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_446]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_447]
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
	#Procedure 0x4059d0

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
	je	.label_448
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
.label_448:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a70
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_445]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_446]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_447]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_449
	test	rdx, rdx
	je	.label_449
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_449:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x405ae0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_445]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_446]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_447]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_450
	test	rdx, rdx
	je	.label_450
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_450:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b50
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_445]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_446]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_447]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_451
	test	rsi, rsi
	je	.label_451
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_451:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405bc0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_445]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_446]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_447]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_452
	test	rsi, rsi
	je	.label_452
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
.label_452:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405c30
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c40
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
	#Procedure 0x405c60
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c80

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
	#Procedure 0x405ca0

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
	jne	.label_458
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_454
	cmp	ecx, 0x55
	jne	.label_453
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_453
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_453
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_453
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_453
	cmp	byte ptr [rax + 5], 0
	jne	.label_453
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_460
	mov	eax, OFFSET FLAT:label_461
	jmp	.label_457
.label_454:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_453
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_453
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_453
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_453
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_453
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_453
	cmp	byte ptr [rax + 7], 0
	je	.label_459
.label_453:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_311
	mov	eax, OFFSET FLAT:label_361
.label_457:
	cmove	rax, rcx
.label_458:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_459:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_455
	mov	eax, OFFSET FLAT:label_456
	jmp	.label_457
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d70

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
.label_463:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_462
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_463
	cmp	rbx, 0x7ff00001
	jb	.label_462
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_463
.label_462:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405dd0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x405de0

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
	je	.label_476
	mov	edx, OFFSET FLAT:label_467
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_473
.label_476:
	mov	edx, OFFSET FLAT:label_474
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_473:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_478
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
	mov	esi, OFFSET FLAT:label_475
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_479
	jmp	qword ptr [(r12 * 8) + label_480]
.label_2557:
	add	rsp, 8
	jmp	.label_466
.label_479:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_470
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
	jmp	.label_466
.label_2558:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_465
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
.label_2559:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_471
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
.label_2560:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_468
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
.label_2561:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_482
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
	jmp	.label_466
.label_2562:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_481
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
	jmp	.label_466
.label_2563:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_464
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
	jmp	.label_466
.label_2564:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_469
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
	jmp	.label_466
.label_2566:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_472
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
	jmp	.label_466
.label_2565:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_477
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
.label_466:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406140
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_483:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_483
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406170

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_494
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_496
.label_494:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_496:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_484
	cmp	r10d, 0x29
	jae	.label_493
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_495
.label_493:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_495:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_484
	cmp	r10d, 0x29
	jae	.label_491
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_492
.label_491:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_492:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_484
	cmp	r10d, 0x29
	jae	.label_489
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_490
.label_489:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_490:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_484
	cmp	r10d, 0x29
	jae	.label_487
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_488
.label_487:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_488:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_484
	cmp	r10d, 0x29
	jae	.label_485
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_486
.label_485:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_486:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_484
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_484
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_484
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_484
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_484:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406360

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_497
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_497:
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
	#Procedure 0x4063f0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_498
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_499
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_501
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_141
	mov	ecx, OFFSET FLAT:label_197
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_500
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406470
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_502
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_503
	test	rax, rax
	je	.label_502
.label_503:
	pop	rbx
	ret	
.label_502:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064b0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_504
	test	rax, rax
	je	.label_505
.label_504:
	pop	rbx
	ret	
.label_505:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064d0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_506
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_507
	test	rbx, rbx
	jne	.label_507
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_507:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_508
	test	rax, rax
	je	.label_506
.label_508:
	pop	rbx
	ret	
.label_506:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406520

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_509
	test	rbx, rbx
	jne	.label_509
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_509:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_511
	test	rax, rax
	je	.label_510
.label_511:
	pop	rbx
	ret	
.label_510:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406550
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_515
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_517
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_512
.label_515:
	test	rcx, rcx
	jne	.label_518
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_518:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_513
.label_512:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_514
	test	rbx, rbx
	jne	.label_514
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_514:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_516
	test	rax, rax
	je	.label_517
.label_516:
	pop	rbx
	ret	
.label_517:
	call	xalloc_die
.label_513:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065f0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_519
	test	rax, rax
	je	.label_520
.label_519:
	pop	rbx
	ret	
.label_520:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406610
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_523
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_525
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_522
	call	free
	xor	eax, eax
	jmp	.label_524
.label_523:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_521
	mov	qword ptr [rsi], rbx
.label_522:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_524
	test	rax, rax
	je	.label_521
.label_524:
	pop	rbx
	ret	
.label_521:
	call	xalloc_die
.label_525:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406680
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
	je	.label_527
	test	r14, r14
	je	.label_526
.label_527:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_526:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066c0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_528
	call	rpl_calloc
	test	rax, rax
	je	.label_528
	pop	rcx
	ret	
.label_528:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066f0

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
	je	.label_529
	test	r15, r15
	je	.label_530
.label_529:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_530:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406730
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
	je	.label_532
	test	r15, r15
	je	.label_531
.label_532:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_531:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406780

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
	je	.label_535
	cmp	eax, 1
	je	.label_537
	cmp	eax, 3
	jne	.label_540
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_536
.label_535:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jl	.label_533
	cmp	rbx, r12
	jle	.label_539
.label_533:
	cmp	rbx, 0x40000000
	jl	.label_538
.label_537:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_536
.label_540:
	call	__errno_location
.label_536:
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
	mov	edx, OFFSET FLAT:label_289
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_539:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_538:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_534
	mov	dword ptr [rax], 0x4b
	jmp	.label_536
.label_534:
	mov	dword ptr [rax], 0x22
	jmp	.label_536
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406860

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
	.section	.text
	.align	16
	#Procedure 0x406890

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
	jae	.label_574
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
	je	.label_558
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_591
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_549
	mov	r13d, 1
.label_591:
	test	r14, r14
	je	.label_544
	mov	r15d, r13d
	jmp	.label_548
.label_558:
	mov	r13d, 4
	test	r14, r14
	je	.label_549
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_549
	mov	rdi, r14
	call	strchr
	xor	r15d, r15d
	mov	ebp, 1
	test	rax, rax
	je	.label_549
.label_548:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_561
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_541
	mov	ebx, 1
	mov	r10d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_568
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_568
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ebx, 1
	mov	r10d, 0x400
	test	rax, rax
	je	.label_568
	movsx	eax, byte ptr [r12 + 1]
	mov	ebx, 1
	mov	r10d, 0x400
	cmp	eax, 0x42
	je	.label_580
	cmp	eax, 0x44
	je	.label_580
	cmp	eax, 0x69
	jne	.label_568
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	rbx, [rax + rax + 1]
	mov	r10d, 0x400
	jmp	.label_568
.label_544:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	jmp	.label_549
.label_580:
	mov	ebx, 2
	mov	r10d, 0x3e8
.label_568:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_541
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r8, rbp
	jmp	qword ptr [(r13 * 8) + label_545]
.label_2523:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ecx, 1
	jl	.label_553
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rsi, r9
.label_553:
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_564
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_564:
	or	r14d, ecx
	cmp	rdi, r11
	mov	ecx, 1
	jl	.label_570
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_570:
	or	ecx, r14d
	jmp	.label_552
.label_541:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	r15d, 2
	jmp	.label_581
.label_2524:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	cmp	rbp, rax
	mov	ecx, 1
	jl	.label_552
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
	jmp	.label_552
.label_2525:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ecx, 1
	mov	rsi, r8
	mov	r11d, 1
	jl	.label_542
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_542:
	cmp	rsi, rdi
	jl	.label_557
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_557:
	or	ecx, r11d
	jmp	.label_552
.label_2527:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_565
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rbp
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rdi, r9
.label_565:
	mov	rbp, rbx
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_577
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rdi
	setl	r14b
	cmovl	rsi, r9
.label_577:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_586
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_586:
	or	edi, r14d
	cmp	rbx, r11
	jl	.label_594
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_594:
	or	ecx, edi
	mov	rbx, rbp
	jmp	.label_552
.label_2521:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_555
	mov	r8, rbp
	shl	r8, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_543
.label_2522:
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
	jl	.label_592
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_592:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_584
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_584:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_560
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_560:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_589
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_589:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rsi, r8
	mov	ebx, 1
	jl	.label_546
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebx, ebx
	cmp	rax, rdi
	setl	bl
	cmovl	rsi, r9
.label_546:
	or	ebx, r14d
	cmp	rsi, r11
	jl	.label_556
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_556:
	or	ecx, ebx
	mov	rbx, r13
	jmp	.label_552
.label_2526:
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
	jl	.label_567
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_567:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_579
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_579:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_587
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_587:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_569
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_569:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rbx, r13
	jl	.label_554
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_554:
	or	ecx, r14d
	jmp	.label_552
.label_2528:
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
	jl	.label_563
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_563:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_576
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_576:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_583
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_583:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_590
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_590:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ebp, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_547
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rdi, r9
.label_547:
	or	ecx, r14d
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_559
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_559:
	or	ebp, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_566
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_566:
	or	edi, ebp
	cmp	rbx, r11
	jl	.label_575
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	jmp	.label_588
.label_2529:
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
	jl	.label_582
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_582:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_593
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_593:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_551
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_551:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_562
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_562:
	or	r14d, ecx
	cmp	rsi, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_585
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_585:
	or	ecx, r14d
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_578
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_578:
	or	edi, ecx
	cmp	rsi, r11
	mov	ecx, 1
	jl	.label_575
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
.label_588:
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_575:
	or	ecx, edi
	mov	rbx, r13
	jmp	.label_552
.label_2530:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_555
	mov	r8, rbp
	shl	r8, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_543
.label_2531:
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_550
.label_555:
	inc	r9
	mov	ecx, 1
	mov	r8, r9
	jmp	.label_552
.label_550:
	lea	r8, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_543:
	xor	ecx, ecx
	cmp	rbp, rax
	setg	cl
	cmovg	r8, r9
.label_552:
	or	ecx, r15d
	lea	rax, [r12 + rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rax
	lea	r15d, [rcx + 2]
	cmp	byte ptr [r12 + rbx], 0
	cmove	r15d, ecx
	mov	rbp, r8
.label_561:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_581:
	mov	r13d, r15d
.label_549:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_574:
	mov	edi, OFFSET FLAT:label_571
	mov	esi, OFFSET FLAT:label_572
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_573
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071b0

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
	jae	.label_602
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_595:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_595
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_597
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
	je	.label_604
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_610
	cmp	eax, 0x22
	jne	.label_597
	mov	ebp, 1
.label_610:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_606
	jmp	.label_598
.label_604:
	test	r14, r14
	je	.label_597
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_597
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_597
.label_606:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_598
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_605
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_601
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_601
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_601
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_596
	cmp	eax, 0x44
	je	.label_596
	cmp	eax, 0x69
	jne	.label_601
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_601
.label_596:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_601:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_605
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_612]
.label_2435:
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
	jmp	.label_613
.label_605:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_603
.label_2436:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_607
.label_2437:
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
	jmp	.label_599
.label_2439:
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
	jmp	.label_614
.label_2433:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_611
.label_2434:
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
	jmp	.label_599
.label_2438:
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
.label_614:
	or	dl, r10b
.label_613:
	or	dl, bl
.label_599:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_600
.label_2440:
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
	jmp	.label_608
.label_2441:
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
.label_608:
	movzx	eax, dl
.label_607:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_600
.label_2442:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_611:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_600
.label_2443:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_600:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_598:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_603:
	mov	r13d, r15d
.label_597:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_602:
	mov	edi, OFFSET FLAT:label_571
	mov	esi, OFFSET FLAT:label_572
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_609
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_615
	test	rsi, rsi
	mov	ecx, 1
	je	.label_616
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_616
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_615:
	mov	ecx, 1
.label_616:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407840

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_617
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_619
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_617
.label_619:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_617
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_618
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_618:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_617:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078c0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_634
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_634:
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
	ja	.label_622
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_635
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_623
	test	esi, esi
	jne	.label_622
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_637
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_638
.label_622:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_620
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_623
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_626
.label_635:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_629
.label_623:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_630
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_631
.label_630:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_631:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_633:
	call	fcntl
.label_629:
	mov	ebp, eax
.label_625:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_626:
	cmp	eax, 6
	jne	.label_620
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_640
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_621
.label_620:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_624
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_628
.label_637:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_638:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_633
.label_640:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_621:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_636
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_639
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_639
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_625
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_627
.label_639:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_625
.label_624:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_628:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_629
.label_636:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_627:
	test	al, al
	je	.label_625
	test	ebp, ebp
	js	.label_625
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_632
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_625
.label_632:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_625
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b60

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_641
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_641
	test	byte ptr [rbx + 1], 1
	je	.label_641
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_641:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ba0

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
	jne	.label_642
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_642
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_643
.label_642:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_643:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_644
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_644:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407c10

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
	je	.label_645
	cmp	r15, -2
	jb	.label_645
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_645
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_645:
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
	#Procedure 0x407c70

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
	mov	al, byte ptr [rdx + 0x38]
	mov	rdi, rcx
	shr	rdi, 0x15
	and	dil, 0x10
	and	al, 0x6f
	or	al, dil
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_646
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_646:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cd0

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 4], 0
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [r15 + 0x18], rcx
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	r12, qword ptr [r15]
	cmp	qword ptr [r15 + 8], 0xe7
	jbe	.label_935
.label_742:
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
	ja	.label_960
	lea	rdi, [r13 + 1]
	mov	qword ptr [r12 + 8], rdi
	mov	rax, rdi
	mov	qword ptr [rsp + 8], rax
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_1009:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_1009
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
	cmp	cl, 0x75
	jne	.label_1032
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_1032
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_1032
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_1032
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_1032
	or	byte ptr [r12 + 0xb0], 4
.label_1032:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_1046
	test	al, 4
	jne	.label_1056
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	test	rax, rax
	je	.label_960
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1072:
	mov	edi, ebp
	call	btowc
	cmp	eax, -1
	je	.label_1061
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_1061:
	cmp	ebp, 0x7f
	ja	.label_1066
	cmp	ebp, eax
	je	.label_1066
	or	byte ptr [r12 + 0xb0], 8
.label_1066:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1072
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1092:
	lea	rbx, [rbp + 0x40]
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_1079
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_1079:
	cmp	ebx, eax
	je	.label_853
	or	byte ptr [r12 + 0xb0], 8
.label_853:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1092
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1104:
	mov	edi, ebp
	sub	edi, -0x80
	call	btowc
	cmp	eax, -1
	je	.label_1097
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_1097:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1104
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1109:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_1106
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_1106:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1109
	jmp	.label_1046
.label_1056:
	mov	qword ptr [r12 + 120], OFFSET FLAT:utf8_sb_map
.label_1046:
	cmp	qword ptr [r12], 0
	je	.label_960
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_960
	mov	dword ptr [rsp + 4], 0
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x40]
	and	ecx, 0x400000
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rsp + 0xd0], xmm0
	movdqu	xmmword ptr [rsp + 0xc0], xmm0
	movdqu	xmmword ptr [rsp + 0xb0], xmm0
	movdqu	xmmword ptr [rsp + 0xa0], xmm0
	movdqu	xmmword ptr [rsp + 0x90], xmm0
	movdqu	xmmword ptr [rsp + 0x80], xmm0
	movdqu	xmmword ptr [rsp + 0x70], xmm0
	movdqu	xmmword ptr [rsp + 0x60], xmm0
	movdqu	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x48], r14
	mov	qword ptr [rsp + 0xa0], r13
	mov	qword ptr [rsp + 0x98], r13
	mov	qword ptr [rsp + 0xc0], rbx
	mov	rax, rcx
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xd0], al
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rax, rcx
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xd3]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	dword ptr [rsp + 0xd8], edx
	mov	rcx, qword ptr [r12 + 0xb0]
	mov	eax, ecx
	shr	al, 2
	and	al, 1
	mov	byte ptr [rsp + 0xd1], al
	mov	eax, ecx
	shr	al, 3
	and	al, 1
	mov	byte ptr [rsp + 0xd2], al
	mov	qword ptr [rsp + 0xb0], r13
	mov	qword ptr [rsp + 0xa8], r13
	xor	eax, eax
	test	r13, r13
	mov	qword ptr [rsp + 0x18], r12
	jle	.label_1118
	cmp	edx, 2
	jl	.label_696
	mov	r12d, 0xc
	mov	rax, qword ptr [rsp + 8]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_698
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_698
	mov	qword ptr [rsp + 0x58], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_696:
	xor	eax, eax
	test	bpl, bpl
	je	.label_716
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_698
	mov	qword ptr [rsp + 0x50], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_716:
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x88], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	jmp	.label_729
.label_960:
	mov	dword ptr [rsp + 4], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_723
.label_1118:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 8], rdx
.label_729:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x50], rax
	cmp	qword ptr [rsp + 0xe0], 0
	je	.label_940
	cmp	ecx, 2
	jl	.label_751
	lea	rdi, [rsp + 0x48]
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_698
	lea	rbx, [rsp + 0x48]
	nop	
.label_803:
	cmp	qword ptr [rsp + 0x80], r13
	mov	r12, qword ptr [rsp + 0x18]
	jge	.label_762
	mov	rbp, qword ptr [rsp + 0x88]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x78]
	cmp	rbp, rax
	jg	.label_762
	lea	r14, [rbp + rbp]
	cmp	dword ptr [rsp + 0xd8], 2
	jl	.label_783
	mov	r12d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	r14, rax
	ja	.label_698
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_698
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_783
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_698
	mov	qword ptr [rsp + 0x60], rax
.label_783:
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_1003
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r14
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_698
	mov	qword ptr [rsp + 0x50], rax
.label_1003:
	mov	qword ptr [rsp + 0x88], r14
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	je	.label_803
.label_698:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_806
.label_940:
	cmp	ecx, 2
	jl	.label_809
	lea	rdi, [rsp + 0x48]
	call	build_wcs_buffer
	jmp	.label_762
.label_751:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_815
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_825
	nop	dword ptr [rax]
.label_849:
	mov	r14, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0xc0]
	inc	rbp
.label_825:
	add	r14, rax
	movzx	eax, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_838
.label_852:
	movzx	ebx, al
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_841
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_841:
	mov	rax, qword ptr [rsp + 0x50]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_849
	jmp	.label_851
.label_838:
	movzx	eax, byte ptr [rbx + rcx]
	jmp	.label_852
.label_809:
	test	rbx, rbx
	je	.label_854
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_856
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 1
	je	.label_856
	mov	eax, 1
	nop	word ptr [rax + rax]
.label_869:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x50]
	add	rcx, qword ptr [rsp + 0x70]
	movzx	ecx, byte ptr [rax + rcx]
	mov	rsi, qword ptr [rsp + 0xc0]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	byte ptr [rdx + rax], cl
	inc	rax
	cmp	rax, rdi
	jl	.label_869
	mov	rcx, rdi
.label_856:
	mov	qword ptr [rsp + 0x78], rcx
	mov	qword ptr [rsp + 0x80], rcx
	jmp	.label_762
.label_851:
	mov	rax, r13
	jmp	.label_815
.label_854:
	mov	rax, qword ptr [rsp + 8]
.label_815:
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x80], rax
.label_762:
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [r15 + 0x30], 0
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0x20]
	lea	r13, [rsp + 0x48]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	add	qword ptr [rsp + 0x90], rax
	lea	r9, [rsp + 4]
	xor	r8d, r8d
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	call	parse_reg_exp
	mov	r14, rax
	test	r14, r14
	jne	.label_904
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_906
.label_904:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_733
	mov	rax, qword ptr [rbx + 0x70]
.label_749:
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
.label_747:
	test	r14, r14
	mov	rcx, rbp
	je	.label_922
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_926
	mov	rax, qword ptr [rbx + 0x70]
.label_760:
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
	je	.label_758
	mov	qword ptr [rbp], rcx
.label_922:
	test	rbp, rbp
	je	.label_758
	test	rcx, rcx
	je	.label_758
	mov	qword ptr [r12 + 0x68], rcx
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x18], rax
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x20], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_675
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_675
	test	rax, rax
	je	.label_675
	mov	rax, qword ptr [rbx + 0x28]
	test	rax, rax
	je	.label_675
	mov	rbp, qword ptr [r15 + 0x30]
	lea	rdi, [rbp*8]
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	mov	rdi, rbx
	mov	qword ptr [rsp + 8], rdi
	je	.label_988
	test	rbp, rbp
	je	.label_993
	xor	edx, edx
	cmp	rbp, 4
	jb	.label_888
	xor	edx, edx
	mov	rcx, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_888
	lea	rsi, [rcx - 4]
	mov	rbx, rsi
	shr	rbx, 2
	lea	edx, [rbx + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_836
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_1007
.label_988:
	lea	r12, [rdi + 0x68]
	jmp	.label_664
.label_836:
	lea	rsi, [rdx - 1]
	sub	rsi, rbx
	mov	ebx, 1
	movq	xmm0, rbx
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_1014]
	movdqa	xmm9, xmmword ptr [rip + label_1015]
	movdqa	xmm10, xmmword ptr [rip + label_1016]
	movdqa	xmm11, xmmword ptr [rip + label_1017]
	movdqa	xmm5, xmmword ptr [rip + label_1018]
	movdqa	xmm6, xmmword ptr [rip + label_1019]
	movdqa	xmm7, xmmword ptr [rip + label_1020]
	movdqa	xmm1, xmmword ptr [rip + label_1021]
	nop	word ptr cs:[rax + rax]
.label_1054:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rbx, xmm0
	movdqu	xmmword ptr [rax + rbx*8], xmm0
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rbx, xmm3
	movdqu	xmmword ptr [rax + rbx*8], xmm3
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rbx, xmm4
	movdqu	xmmword ptr [rax + rbx*8], xmm4
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rbx, xmm3
	movdqu	xmmword ptr [rax + rbx*8], xmm3
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_1054
.label_1007:
	test	rdx, rdx
	je	.label_1070
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_1014]
	movdqa	xmm2, xmmword ptr [rip + label_1015]
	nop	word ptr cs:[rax + rax]
.label_820:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_820
.label_1070:
	cmp	rbp, rcx
	mov	rdx, rcx
	je	.label_993
	nop	dword ptr [rax]
.label_888:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	rdx, rbp
	jb	.label_888
.label_993:
	mov	rbp, qword ptr [rdi + 0x68]
	mov	rsi, rbp
	call	optimize_subexps
	test	eax, eax
	jne	.label_1102
	nop	dword ptr [rax]
.label_1110:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1103
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1108:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_968
	test	rbx, rbx
	jne	.label_1103
.label_968:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_1108
	jmp	.label_1102
	nop	
.label_1103:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbx
	call	optimize_subexps
	test	eax, eax
	mov	rbp, rbx
	je	.label_1110
.label_1102:
	mov	rax, qword ptr [r15 + 0x30]
	xor	ecx, ecx
	test	rax, rax
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1063
	mov	rdx, qword ptr [rdi + 0xe0]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_1121:
	cmp	rcx, qword ptr [rdx + rcx*8]
	jne	.label_1063
	inc	rcx
	cmp	rcx, rax
	jb	.label_1121
.label_1063:
	lea	r12, [rdi + 0x68]
	cmp	rcx, rax
	jne	.label_664
	mov	rdi, qword ptr [rdi + 0xe0]
	call	free
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rdi + 0xe0], 0
.label_664:
	mov	rax, qword ptr [r12]
	lea	rbp, [rsp + 0x20]
	nop	dword ptr [rax]
.label_651:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_651
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_651
	xor	edx, edx
	jmp	.label_657
	nop	dword ptr [rax]
.label_690:
	mov	rdx, qword ptr [rcx + 8]
	mov	rbx, rcx
.label_657:
	mov	dword ptr [rsp + 0x20], 0
	test	rdx, rdx
	je	.label_659
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_659
	mov	rdi, rbp
	mov	rsi, r15
	call	lower_subexp
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_659
	mov	qword ptr [rax], rbx
	nop	word ptr cs:[rax + rax]
.label_659:
	mov	rdx, qword ptr [rbx + 0x10]
	test	rdx, rdx
	je	.label_671
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_671
	mov	rdi, rbp
	mov	rsi, r15
	call	lower_subexp
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_671
	mov	qword ptr [rax], rbx
	nop	dword ptr [rax + rax]
.label_671:
	mov	eax, dword ptr [rsp + 0x20]
	test	eax, eax
	jne	.label_681
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_685
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbx
	je	.label_690
	test	rax, rax
	je	.label_690
	jmp	.label_651
.label_685:
	mov	rax, qword ptr [r12]
	mov	ebp, 0xfffc00ff
	nop	dword ptr [rax + rax]
.label_702:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_702
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_702
	nop	word ptr cs:[rax + rax]
.label_744:
	cmp	byte ptr [rbx + 0x30], 0x10
	jne	.label_1010
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_713
	nop	dword ptr [rax]
.label_1010:
	mov	qword ptr [rbx + 0x18], rbx
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	call	re_dfa_add_node
	mov	qword ptr [rbx + 0x38], rax
	cmp	rax, -1
	je	.label_675
	cmp	byte ptr [rbx + 0x30], 0xc
	mov	rdi, qword ptr [rsp + 8]
	jne	.label_713
	mov	ecx, dword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rdi]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebp
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_713:
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_741
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbx
	mov	rbx, rcx
	je	.label_744
	test	rax, rax
	mov	rbx, rcx
	je	.label_744
	jmp	.label_702
.label_741:
	mov	rbp, qword ptr [r12]
	mov	al, byte ptr [rbp + 0x30]
	cmp	al, 0x10
	je	.label_748
	cmp	al, 0xb
	jne	.label_750
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rax + 0x20], rbp
	jmp	.label_752
.label_748:
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_755
.label_750:
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	je	.label_794
	mov	rcx, qword ptr [rbp + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_794:
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	je	.label_752
.label_755:
	mov	rdx, qword ptr [rbp + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_752:
	mov	rdx, rbp
	jmp	.label_766
.label_957:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_766:
	test	rax, rax
	mov	rcx, rax
	jne	.label_770
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_780:
	mov	rsi, rax
	mov	rax, rdx
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rsi
	je	.label_778
	test	rcx, rcx
	jne	.label_770
.label_778:
	mov	rdx, qword ptr [rax]
	test	rdx, rdx
	jne	.label_780
	jmp	.label_950
	nop	
.label_770:
	mov	al, byte ptr [rcx + 0x30]
	cmp	al, 0x10
	je	.label_957
	cmp	al, 0xb
	jne	.label_788
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_766
.label_788:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_791
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_791:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_766
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_766
.label_950:
	mov	rsi, rbp
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_681
	nop	word ptr [rax + rax]
.label_823:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_804
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_814:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_810
	test	rbx, rbx
	jne	.label_804
.label_810:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_814
	jmp	.label_817
	nop	
.label_804:
	mov	rdi, rsi
	mov	rsi, rbx
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rbp, rbx
	je	.label_823
	jmp	.label_681
.label_817:
	xor	eax, eax
	lea	r12, [rsp + 0x20]
	xor	r14d, r14d
	jmp	.label_831
	nop	dword ptr [rax + rax]
.label_846:
	inc	rbp
	mov	rax, rbp
.label_831:
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_961
	xor	ebp, ebp
	test	r14b, 1
	mov	r14d, 0
	jne	.label_839
	jmp	.label_842
	nop	dword ptr [rax]
.label_961:
	mov	rbp, rax
.label_839:
	mov	rax, qword ptr [rsi + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_846
	mov	ecx, 1
	mov	rdi, r12
	mov	rdx, rbp
	mov	r13, rsi
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_681
	mov	rax, qword ptr [r13 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsi, r13
	jne	.label_846
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rsi, qword ptr [rsp + 8]
	mov	r14b, 1
	jmp	.label_846
.label_842:
	test	byte ptr [r15 + 0x38], 0x10
	mov	qword ptr [rsp + 0x38], r15
	mov	r14, qword ptr [rsp + 0x18]
	jne	.label_866
	cmp	qword ptr [r15 + 0x30], 0
	je	.label_866
	test	byte ptr [rsi + 0xb0], 1
	jne	.label_872
.label_866:
	cmp	qword ptr [rsi + 0x98], 0
	je	.label_875
.label_872:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0x38], rax
	test	rax, rax
	je	.label_675
	cmp	qword ptr [r8 + 0x10], 0
	je	.label_875
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r8 + 0x10]
	cmp	rax, 2
	jb	.label_881
	mov	ecx, 1
	mov	edx, 0x18
	nop	
.label_682:
	mov	rax, qword ptr [r8 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r8 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_682
.label_881:
	test	rax, rax
	je	.label_875
	mov	r9, qword ptr [r8 + 0x30]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_939:
	lea	r10, [rbp + rbp*2]
	cmp	qword ptr [r9 + r10*8 + 8], 0
	jle	.label_902
	mov	r13, qword ptr [r9 + r10*8 + 0x10]
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x40], r10
	nop	dword ptr [rax]
.label_930:
	mov	r14, qword ptr [r8 + 0x38]
	mov	rax, qword ptr [r13 + rbx*8]
	lea	r12, [rax + rax*2]
	mov	rax, qword ptr [r14 + r12*8]
	lea	r15, [r14 + r12*8 + 8]
	mov	rdx, qword ptr [r14 + r12*8 + 8]
	cmp	rax, rdx
	jne	.label_909
	lea	rcx, [r14 + r12*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r14 + r12*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_919
	lea	rcx, [r14 + r12*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r15]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [r8 + 0x30]
	mov	r10, qword ptr [rsp + 0x40]
	jmp	.label_923
	nop	word ptr cs:[rax + rax]
.label_909:
	mov	rax, qword ptr [r14 + r12*8 + 0x10]
.label_923:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r15], rsi
	mov	qword ptr [rax + rdx*8], rbp
	inc	rbx
	cmp	rbx, qword ptr [r9 + r10*8 + 8]
	jl	.label_930
	mov	rax, qword ptr [r8 + 0x10]
	mov	r15, qword ptr [rsp + 0x38]
	mov	r14, qword ptr [rsp + 0x18]
.label_902:
	inc	rbp
	cmp	rbp, rax
	jb	.label_939
.label_875:
	mov	dword ptr [rsp + 4], 0
	cmp	qword ptr [rsp + 0xe0], 0
	jne	.label_679
	mov	al, byte ptr [r14 + 0xb0]
	mov	ecx, eax
	and	cl, 4
	je	.label_679
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_679
	mov	rdx, qword ptr [r14 + 0x10]
	test	rdx, rdx
	je	.label_956
	mov	rbp, qword ptr [r14]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbp
	xor	r10d, r10d
	xor	edi, edi
.label_991:
	movzx	ebx, byte ptr [rcx + 8]
	dec	bl
	movzx	esi, bl
	cmp	sil, 0xb
	ja	.label_967
	jmp	qword ptr [(rsi * 8) + label_972]
.label_2626:
	cmp	byte ptr [rcx], 0
	mov	sil, 1
	js	.label_974
	mov	esi, r10d
.label_974:
	mov	r10b, sil
	jmp	.label_977
.label_2627:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_679
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_977
	jmp	.label_679
.label_2628:
	mov	r9b, 1
	jmp	.label_977
.label_2629:
	mov	esi, dword ptr [rcx]
	lea	ebx, [rsi - 0x10]
	cmp	ebx, 0x30
	ja	.label_984
	bt	r8, rbx
	jb	.label_977
.label_984:
	cmp	esi, 0x80
	jne	.label_679
.label_977:
	inc	rdi
	add	rcx, 0x10
	cmp	rdi, rdx
	jb	.label_991
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_722
	xor	eax, eax
	mov	edx, 8
	jmp	.label_997
.label_675:
	mov	eax, 0xc
.label_681:
	mov	dword ptr [rsp + 4], eax
.label_806:
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_999
.label_1024:
	add	rdx, 0x10
	mov	rbp, qword ptr [r14]
.label_997:
	mov	esi, dword ptr [rbp + rdx]
	cmp	sil, 5
	je	.label_1002
	cmp	sil, 1
	jne	.label_1005
	cmp	byte ptr [rbp + rdx - 8], 0
	jns	.label_1005
	and	esi, 0xffdfffff
	jmp	.label_1008
.label_1002:
	and	esi, 0xffffff00
	or	esi, 7
.label_1008:
	mov	dword ptr [rbp + rdx], esi
.label_1005:
	inc	rax
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_1024
	mov	al, byte ptr [r14 + 0xb0]
	jmp	.label_722
.label_956:
	xor	ecx, ecx
.label_722:
	mov	dword ptr [r14 + 0xb4], 1
	cmp	qword ptr [r14 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r14 + 0xb0], al
.label_679:
	mov	rax, qword ptr [r14 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r14 + 0x90], rax
	mov	r15, qword ptr [r14 + 0x30]
	lea	r12, [rax + rax*2]
	mov	r13, qword ptr [r15 + r12*8 + 8]
	mov	qword ptr [rsp + 0x28], r13
	mov	r14, qword ptr [r15 + r12*8 + 8]
	test	r14, r14
	jle	.label_1034
	mov	qword ptr [rsp + 0x20], r13
	lea	rdi, [r13*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0x30], rbp
	test	rbp, rbp
	je	.label_1048
	mov	rsi, qword ptr [r15 + r12*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x14], 0
	test	r13, r13
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jle	.label_1058
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_1058
	xor	eax, eax
	lea	r14, [rsp + 0x20]
	jmp	.label_1062
	nop	dword ptr [rax + rax]
.label_1114:
	mov	rbp, qword ptr [rsp + 0x30]
.label_1062:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	cmp	byte ptr [rdx + rsi + 8], 4
	jne	.label_1068
	test	r13, r13
	mov	edi, 0
	jle	.label_1076
	add	rsi, rdx
	xor	edi, edi
	nop	
.label_1090:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	cmp	byte ptr [rdx + rcx + 8], 9
	jne	.label_1084
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_1076
.label_1084:
	inc	rdi
	cmp	rdi, r13
	jl	.label_1090
.label_1076:
	cmp	rdi, r13
	je	.label_1068
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r13, r13
	jle	.label_1093
	mov	rdx, r13
	dec	rdx
	mov	esi, 0
	je	.label_1098
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_892:
	lea	rdi, [rsi + rdx]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rsi, rbx
	cmovge	rdx, rdi
	cmp	rsi, rdx
	jb	.label_892
.label_1098:
	cmp	rsi, -1
	je	.label_1093
	cmp	qword ptr [rbp + rsi*8], rcx
	je	.label_1068
.label_1093:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_727
	mov	r13, qword ptr [rsp + 0x28]
	xor	eax, eax
	nop	
.label_1068:
	inc	rax
	cmp	rax, r13
	jl	.label_1114
	jmp	.label_1058
.label_1034:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	mov	dword ptr [rsp + 0x14], 0
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
.label_1058:
	lea	rdi, [rsp + 0x14]
	lea	rdx, [rsp + 0x20]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_647
	cmp	byte ptr [rax + 0x68], 0
	js	.label_652
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_653
.label_652:
	lea	rbx, [rsp + 0x14]
	lea	rbp, [rsp + 0x20]
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
	je	.label_680
	test	rax, rax
	je	.label_680
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_680
.label_653:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	xor	eax, eax
.label_727:
	mov	dword ptr [rsp + 4], eax
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_686
	nop	dword ptr [rax]
.label_695:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_695
.label_686:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_717
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_717:
	xor	eax, eax
	cmp	dword ptr [rsp + 4], 0
	je	.label_723
	jmp	.label_726
.label_680:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_727
.label_919:
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	jmp	.label_681
.label_935:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_723
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_742
.label_733:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_747
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_749
.label_926:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_758
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_760
.label_758:
	mov	dword ptr [rsp + 4], 0xc
.label_906:
	mov	qword ptr [r12 + 0x68], 0
.label_999:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_768
	nop	word ptr cs:[rax + rax]
.label_775:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_775
.label_768:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_726
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_726:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, dword ptr [rsp + 4]
.label_723:
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_647:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_727
.label_1048:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	dword ptr [rsp + 0x14], 0xc
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_727
.label_967:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4092c0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax, qword ptr [rip + rpl_re_syntax_options]
	mov	qword ptr [rip + rpl_re_syntax_options],  rdi
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4092d0

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
	je	.label_1127
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1127:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_1126
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1126:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_1128
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1128:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093a0

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rdx
	mov	r13, rdi
	mov	rcx, qword ptr [r13]
	cmp	dword ptr [rcx + 0xb4], 1
	jne	.label_1209
	mov	r14b, byte ptr [r13 + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_1208
.label_1209:
	xor	r14d, r14d
.label_1208:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_1124
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp], rcx
	nop	dword ptr [rax + rax]
.label_1122:
	mov	rax, qword ptr [rsi + 0x18]
	mov	qword ptr [rsp + 0x28], rdx
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rcx, qword ptr [rcx]
	mov	r12, rbp
	shl	r12, 4
	movzx	eax, byte ptr [rcx + r12 + 8]
	mov	edx, eax
	dec	dl
	movzx	edx, dl
	cmp	dl, 6
	ja	.label_813
	lea	rsi, [rcx + r12]
	jmp	qword ptr [(rdx * 8) + label_901]
.label_2577:
	movzx	ebx, byte ptr [rsi]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_905
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_907
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_907:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_905:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_813
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_813
	mov	qword ptr [rsp + 0x18], r13
	mov	rdx, qword ptr [rsp]
	mov	rax, qword ptr [rdx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	inc	rbp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	jae	.label_913
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
.label_929:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_913
	movzx	eax, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_929
.label_913:
	mov	qword ptr [rsp + 8], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x14]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp + 8]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_943
	mov	edi, dword ptr [rsp + 0x14]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_943
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_943:
	mov	r13, qword ptr [rsp + 0x18]
	jmp	.label_813
	nop	dword ptr [rax]
.label_2579:
	mov	rax, qword ptr [rcx + r12]
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_979:
	bt	rbp, rbx
	jae	.label_966
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_966
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x180
	jae	.label_970
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_1023
.label_970:
	mov	eax, ebx
.label_1023:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_966:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_979
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 8]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_818:
	bt	rbp, rbx
	jae	.label_982
	mov	byte ptr [r15 + rbx + 0x40], 1
	test	r14b, r14b
	je	.label_982
	lea	eax, [rbx + 0xc0]
	cmp	eax, 0x180
	jae	.label_990
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x100]
	jmp	.label_1047
.label_990:
	lea	rax, [rbx + 0x40]
.label_1047:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_982:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_818
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1029:
	bt	rbp, rbx
	jae	.label_900
	mov	byte ptr [r15 + rbx + 0x80], 1
	test	r14b, r14b
	je	.label_900
	lea	eax, [rbx + 0x100]
	cmp	eax, 0x180
	jae	.label_1011
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x200]
	jmp	.label_1025
.label_1011:
	mov	rax, rbx
	sub	rax, -0x80
.label_1025:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_900:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1029
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x18]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1049:
	bt	rbp, rbx
	jae	.label_1012
	mov	byte ptr [r15 + rbx + 0xc0], 1
	test	r14b, r14b
	je	.label_1012
	lea	eax, [rbx + 0x140]
	cmp	eax, 0x180
	jae	.label_1040
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x300]
	jmp	.label_1044
.label_1040:
	lea	rax, [rbx + 0xc0]
.label_1044:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1012:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1049
	jmp	.label_813
	nop	
.label_2580:
	mov	r12, qword ptr [rsi]
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1053
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_835
	test	byte ptr [r12 + 0x20], 1
	jne	.label_835
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1053
.label_835:
	mov	byte ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x30]
	lea	rbp, [rsp + 8]
	nop	word ptr [rax + rax]
.label_1074:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp + 8]
	cmp	rax, -2
	jne	.label_1071
	mov	byte ptr [r15 + rcx], 1
.label_1071:
	inc	cl
	mov	byte ptr [rsp + 8], cl
	jne	.label_1074
	jmp	.label_813
.label_1053:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_813
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1119:
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_886
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_886
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1100
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1100:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_886:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1031
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_1031
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1031
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	word ptr cs:[rax + rax]
.label_1031:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_1119
	nop	
.label_813:
	mov	rdx, qword ptr [rsp + 0x28]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rsp]
	jl	.label_1122
	jmp	.label_1124
.label_2578:
	movaps	xmm0, xmmword ptr [rip + label_1125]
	movups	xmmword ptr [r15 + 0xf0], xmm0
	movups	xmmword ptr [r15 + 0xe0], xmm0
	movups	xmmword ptr [r15 + 0xd0], xmm0
	movups	xmmword ptr [r15 + 0xc0], xmm0
	movups	xmmword ptr [r15 + 0xb0], xmm0
	movups	xmmword ptr [r15 + 0xa0], xmm0
	movups	xmmword ptr [r15 + 0x90], xmm0
	movups	xmmword ptr [r15 + 0x80], xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	cmp	eax, 2
	jne	.label_1124
	or	byte ptr [r13 + 0x38], 1
.label_1124:
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409890
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
	je	.label_1223
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_1221
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_1222
.label_1221:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_1222:
	mov	byte ptr [r15 + 0x38], al
	add	bpl, bpl
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
	jne	.label_1224
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_1223:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1224:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_1223
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409980
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
	jae	.label_1225
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_1228
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_1227
.label_1226:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_1228:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1227:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_1226
.label_1225:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a00
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_1229
	call	free_dfa_content
.label_1229:
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
	.align	16
	#Procedure 0x409a40

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
	je	.label_1240
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1240
	xor	ebx, ebx
	mov	r12d, 8
	mov	ebp, 0x400ff
	jmp	.label_1244
	nop	dword ptr [rax]
.label_1242:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1244:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_1246
	cmp	ecx, 6
	jne	.label_1231
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
	jmp	.label_1237
	nop	word ptr cs:[rax + rax]
.label_1246:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1237:
	call	free
.label_1231:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1242
.label_1240:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1243
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1238:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_1230
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1230:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1234
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1234:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1235
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1235:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_1238
	jmp	.label_1241
.label_1243:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1241:
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
	je	.label_1236
	xor	r15d, r15d
	jmp	.label_1247
.label_1239:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1247:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_1232
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1233:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_1233
.label_1232:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1239
	mov	rdi, qword ptr [r14 + 0x40]
.label_1236:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_1245
	call	free
.label_1245:
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
	.align	16
	#Procedure 0x409c10
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	ebx, r8d
	mov	r15, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	eax, 2
	cmp	ebx, 7
	ja	.label_1249
	test	bl, 4
	jne	.label_1250
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1252
.label_1250:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_1252:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_1248
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	r15
	push	r14
	call	re_search_internal
	add	rsp, 0x20
	jmp	.label_1251
.label_1248:
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	0
	push	0
	call	re_search_internal
	add	rsp, 0x20
.label_1251:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_1249:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409cb0

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x218
	mov	r14, r9
	mov	rbp, rcx
	mov	r9, qword ptr [rsp + 0x250]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
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
	mov	qword ptr [rsp + 0x118], r11
	mov	rax, qword ptr [rdi + 0x20]
	xor	r13d, r13d
	test	rax, rax
	je	.label_1261
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	xor	ebx, ebx
	cmp	cl, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r13, rax
.label_1261:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r15, [r9 - 1]
	mov	rcx, r15
	sub	rcx, rax
	xor	r12d, r12d
	cmp	rax, r9
	cmovb	r12, rcx
	mov	ebx, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_800
	mov	rax, qword ptr [r11 + 0x48]
	test	rax, rax
	je	.label_800
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_800
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	je	.label_800
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsi, r14
	cmp	qword ptr [r11 + 0x60], 0
	je	.label_800
	mov	r14, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0x58], r14
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1265
	mov	rax, r8
	mov	r14, rsi
	jmp	.label_1260
.label_1265:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r14, rsi
	jne	.label_1254
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_1253
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_1254
.label_1253:
	xor	eax, eax
	test	rbp, rbp
	je	.label_1256
	test	r8, r8
	mov	ebp, 0
	jne	.label_800
	jmp	.label_1260
.label_1254:
	mov	rax, r8
.label_1260:
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x40], r13
	mov	qword ptr [rsp + 0x1e8], r15
	mov	qword ptr [rsp + 0x1e0], r12
	sub	r9, r12
	mov	qword ptr [rsp + 0x38], r9
	mov	byte ptr [rsp + 7], 1
	jne	.label_1262
	cmp	qword ptr [r11 + 0x98], 0
	setne	byte ptr [rsp + 7]
.label_1262:
	mov	r15, qword ptr [r11 + 0x10]
	inc	r15
	mov	qword ptr [rsp + 0x48], rdi
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r11 + 0xb4]
	cmp	rax, r15
	cmovge	r15, rax
	mov	rbx, rdx
	lea	rdi, [rbx + 1]
	cmp	rdi, r15
	cmovle	r15, rdi
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x80], rdx
	mov	qword ptr [rsp + 0xd8], rbx
	mov	qword ptr [rsp + 0xd0], rbx
	mov	rsi, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0xf8], rsi
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0x108], cl
	test	rsi, rsi
	mov	rsi, rbx
	setne	r12b
	or	r12b, cl
	mov	byte ptr [rsp + 0x10b], r12b
	mov	dword ptr [rsp + 0x110], eax
	mov	cl, byte ptr [r11 + 0xb0]
	mov	edx, ecx
	shr	dl, 2
	and	dl, 1
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0x109], dl
	mov	byte ptr [rsp + 0x10a], cl
	mov	qword ptr [rsp + 0xe8], rsi
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0xe0], rsi
	mov	qword ptr [rsp + 0x20], r11
	jl	.label_1266
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ebx, 0xc
	cmp	r15, rax
	ja	.label_670
	lea	rsi, [r15*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_670
	mov	qword ptr [rsp + 0x90], rax
	mov	r11, qword ptr [rsp + 0x20]
.label_1266:
	test	r12b, r12b
	je	.label_1267
	xor	edi, edi
	mov	rsi, r15
	call	realloc
	mov	ebx, 0xc
	test	rax, rax
	je	.label_670
	mov	qword ptr [rsp + 0x88], rax
	mov	r11, qword ptr [rsp + 0x20]
.label_1267:
	mov	edx, dword ptr [rsp + 0x260]
	mov	qword ptr [rsp + 0xc0], r15
	lea	rax, [r11 + 0xb8]
	mov	qword ptr [rsp + 0x100], rax
	mov	rax, qword ptr [r11 + 0xb0]
	mov	ecx, eax
	shr	cl, 4
	and	cl, 1
	mov	byte ptr [rsp + 0x10e], cl
	xor	ecx, ecx
	test	r12b, r12b
	jne	.label_1257
	shr	rax, 0x20
	mov	rcx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x88], rcx
	xor	ecx, ecx
	cmp	eax, 1
	cmovle	rcx, qword ptr [rsp + 0x78]
.label_1257:
	mov	qword ptr [rsp + 0xb0], rcx
	mov	qword ptr [rsp + 0xb8], rcx
	mov	qword ptr [rsp + 0xe8], r14
	mov	qword ptr [rsp + 0xe0], r14
	mov	rax, qword ptr [rsp + 0x48]
	mov	al, byte ptr [rax + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0x10d], al
	mov	r14, qword ptr [r11 + 0x98]
	lea	r13, [r14 + r14]
	mov	dword ptr [rsp + 0x120], edx
	mov	qword ptr [rsp + 0x128], -1
	test	r14, r14
	jle	.label_1268
	mov	ebx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r13, rax
	ja	.label_670
	shl	r14, 4
	lea	rdi, [r14 + r14*4]
	call	malloc
	mov	r12, rax
	mov	qword ptr [rsp + 0x158], r12
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x178], rax
	test	r12, r12
	je	.label_670
	test	rax, rax
	je	.label_670
.label_1268:
	mov	qword ptr [rsp + 0x150], r13
	mov	dword ptr [rsp + 0x160], 1
	mov	qword ptr [rsp + 0x170], r13
	cmp	qword ptr [rsp + 0x38], 1
	mov	rax, qword ptr [rsp + 0x20]
	ja	.label_1255
	mov	rdi, qword ptr [rax + 0xb0]
	test	dil, 2
	jne	.label_1255
	shr	rdi, 0x20
	mov	qword ptr [rsp + 0x138], 0
	jmp	.label_1263
.label_1255:
	mov	ebx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r15, rax
	ja	.label_670
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	je	.label_670
	mov	rax, qword ptr [rsp + 0x20]
	mov	edi, dword ptr [rax + 0xb4]
.label_1263:
	mov	eax, dword ptr [rsp + 0x260]
	mov	qword ptr [rsp + 0x28], rbp
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xf0], eax
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	rbx, rbp
	mov	r15, rbp
	cmovle	r15, rbx
	mov	r12, rbx
	cmovl	r12, rbp
	mov	ecx, 8
	cmp	qword ptr [rsp + 0x40], 0
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_1258
	cmp	edi, 1
	je	.label_1264
	mov	ecx, 0x400000
	xor	eax, eax
	test	rsi, rsi
	jne	.label_1259
	mov	rdx, qword ptr [rsp + 0x48]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_1259
.label_1264:
	mov	eax, 4
.label_1259:
	xor	ecx, ecx
	test	rsi, rsi
	setne	cl
	xor	edx, edx
	cmp	rbp, rbx
	setle	dl
	lea	ecx, [rcx + rdx*2]
	or	ecx, eax
.label_1258:
	mov	qword ptr [rsp + 0x208], rdi
	xor	edx, edx
	cmp	rbp, rbx
	setle	byte ptr [rsp + 0xf]
	lea	rsi, [rsp + 0x28]
	mov	eax, 0
	mov	qword ptr [rsp + 0x1d8], rax
	cmovg	rsi, rdx
	mov	qword ptr [rsp + 0x200], rsi
	cmp	rbx, rbp
	mov	eax, 1
	mov	r13, -1
	cmovge	r13, rax
	add	ecx, -4
	mov	qword ptr [rsp + 0x210], rcx
	mov	qword ptr [rsp + 0x70], r13
	mov	qword ptr [rsp + 0x190], r15
	mov	qword ptr [rsp + 0x188], r12
	jmp	.label_1080
.label_1256:
	xor	ebp, ebp
	jmp	.label_1260
.label_1036:
	mov	rdi, r15
	call	free
	mov	rdi, rbp
	call	free
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x70]
	je	.label_848
	cmp	ebx, 1
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	je	.label_781
	jmp	.label_670
.label_898:
	test	al, al
	js	.label_790
	cmp	byte ptr [rsp + 7], 0
	mov	rdx, r8
	mov	ecx, 1
	jne	.label_833
	mov	r14, r8
	jmp	.label_822
.label_1004:
	mov	r14, r8
	lea	rbp, [rbx + 8]
	xor	edx, edx
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1064
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_802
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	call	transit_state_bkref
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1064
.label_802:
	mov	dword ptr [rsp + 0x18], 0
	mov	r8, r14
	jmp	.label_895
.label_790:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbx
	mov	rdx, r8
	mov	r14, r8
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	xor	ecx, ecx
	test	rax, rax
	sete	al
	setne	cl
	or	al, byte ptr [rsp + 7]
	je	.label_822
	or	rdx, r14
	mov	r8, r14
	jmp	.label_833
.label_1064:
	movsxd	r14, eax
	jmp	.label_822
	nop	word ptr cs:[rax + rax]
.label_1080:
	mov	rax, qword ptr [rsp + 0x210]
	cmp	eax, 4
	ja	.label_840
	jmp	qword ptr [(rax * 8) + label_844]
.label_2650:
	cmp	rbp, r15
	mov	rax, rbp
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x58]
	jl	.label_845
	nop	dword ptr [rax + rax]
.label_865:
	xor	eax, eax
	cmp	rbp, rcx
	jge	.label_858
	movzx	eax, byte ptr [rdx + rbp]
.label_858:
	test	rdi, rdi
	je	.label_860
	movzx	eax, byte ptr [rdi + rax]
.label_860:
	cmp	byte ptr [rsi + rax], 0
	jne	.label_862
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x28], rax
	cmp	rbp, r15
	mov	rbp, rax
	jg	.label_865
	jmp	.label_845
.label_2652:
	cmp	rbp, r12
	jge	.label_871
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x58]
	nop	dword ptr [rax + rax]
.label_879:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rsi + rax]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_871
	inc	rbp
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r12
	jl	.label_879
	jmp	.label_871
.label_2651:
	cmp	rbp, r12
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
	jge	.label_871
	nop	dword ptr [rax]
.label_883:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_871
	inc	rbp
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r12
	jl	.label_883
	nop	word ptr [rax + rax]
.label_871:
	cmp	rbp, r12
	jne	.label_887
	xor	eax, eax
	cmp	r12, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x50]
	jge	.label_889
	movzx	eax, byte ptr [rcx + r12]
.label_889:
	mov	rcx, qword ptr [rsp + 0x58]
	test	rcx, rcx
	je	.label_896
	movzx	eax, byte ptr [rcx + rax]
.label_896:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	ebx, 1
	cmp	byte ptr [rcx + rax], 0
	mov	rbp, r12
	jne	.label_887
	jmp	.label_670
.label_840:
	mov	rax, qword ptr [rsp + 0xa8]
	jmp	.label_754
.label_932:
	add	rbp, r13
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r15
	mov	ebx, 1
	jl	.label_670
	cmp	rbp, r12
	jle	.label_754
	jmp	.label_670
.label_925:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x260]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_670
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_914
	nop	word ptr cs:[rax + rax]
.label_754:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0xb8]
	jae	.label_925
.label_914:
	cmp	rbp, qword ptr [rsp + 0x78]
	mov	edx, 0
	mov	rsi, qword ptr [rsp + 0x40]
	jge	.label_882
	mov	rdx, qword ptr [rsp + 0x88]
	movzx	edx, byte ptr [rdx + rcx]
.label_882:
	cmp	byte ptr [rsi + rdx], 0
	je	.label_932
	jmp	.label_887
.label_862:
	mov	rax, rbp
.label_845:
	mov	ebx, 1
	cmp	rax, r15
	mov	rbp, rax
	jl	.label_670
.label_887:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x260]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_670
	mov	rax, qword ptr [rsp + 0x208]
	cmp	eax, 1
	je	.label_947
	mov	rax, qword ptr [rsp + 0xb0]
	test	rax, rax
	je	.label_947
	mov	rax, qword ptr [rsp + 0x90]
	cmp	dword ptr [rax], -1
	je	.label_954
.label_947:
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0xb8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x88], xmm0
	mov	rbp, qword ptr [rsp + 0x118]
	mov	r8, qword ptr [rsp + 0xc8]
	mov	dword ptr [rsp + 8], 0
	mov	rbx, qword ptr [rbp + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	js	.label_1069
	mov	r14b, byte ptr [rsp + 0xf]
	jmp	.label_672
	nop	
.label_1069:
	mov	qword ptr [rsp + 0x10], r8
	lea	rsi, [r8 - 1]
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	call	re_string_context_at
	test	al, 1
	mov	r14b, byte ptr [rsp + 0xf]
	jne	.label_985
	test	eax, eax
	je	.label_987
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	mov	r8, qword ptr [rsp + 0x10]
	je	.label_964
	test	sil, sil
	jne	.label_964
	mov	rbx, qword ptr [rbp + 0x60]
	jmp	.label_672
.label_985:
	mov	rbx, qword ptr [rbp + 0x50]
.label_987:
	mov	r8, qword ptr [rsp + 0x10]
.label_672:
	test	rbx, rbx
	je	.label_821
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	mov	cl, r14b
	mov	dword ptr [rsp + 0x18], ecx
	je	.label_895
	mov	qword ptr [rax + r8*8], rbx
	cmp	qword ptr [rbp + 0x98], 0
	mov	al, r14b
	mov	dword ptr [rsp + 0x18], eax
	jne	.label_1004
.label_895:
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	test	al, 0x10
	mov	ecx, 0
	jne	.label_898
.label_833:
	mov	r14, qword ptr [rsp + 0xc8]
	mov	rax, qword ptr [rsp + 0x200]
.label_969:
	mov	r13, rax
	mov	qword ptr [rsp + 0x60], rdx
	cmp	qword ptr [rsp + 0xe8], r14
	jle	.label_703
	test	rcx, rcx
	sete	al
	or	al, byte ptr [rsp + 7]
	mov	byte ptr [rsp + 0x198], al
	mov	r12, rbx
	jmp	.label_992
.label_711:
	add	r14d, 2
	lea	rdi, [rsp + 0x80]
	mov	esi, r14d
	mov	rbx, r8
	call	extend_buffers
	mov	r8, rbx
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1042
	jmp	.label_941
.label_765:
	cmp	qword ptr [r12 + 0x10], 0
	jle	.label_1075
	mov	rbp, qword ptr [rsp + 0x118]
	xor	edx, edx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x1f8], rbp
.label_719:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rbp]
	mov	rsi, rcx
	mov	qword ptr [rsp + 0x68], rsi
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	je	.label_704
	mov	r14d, ebx
	shr	r14d, 8
	test	r14w, 0x3ff
	mov	r9, qword ptr [rsp + 0xc8]
	mov	qword ptr [rsp + 0x180], rdx
	je	.label_678
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	mov	rsi, r9
	mov	rbp, r9
	call	re_string_context_at
	mov	r9, rbp
	mov	rdx, qword ptr [rsp + 0x180]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x1f8]
	mov	ecx, eax
	and	ecx, 1
	test	r14b, 4
	je	.label_1073
	test	ecx, ecx
	je	.label_704
.label_1073:
	test	bh, 8
	je	.label_1089
	test	ecx, ecx
	jne	.label_704
.label_1089:
	test	bh, 0x20
	je	.label_1091
	mov	ecx, eax
	and	ecx, 2
	je	.label_704
.label_1091:
	test	r14b, r14b
	jns	.label_678
	and	eax, 8
	je	.label_704
.label_678:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x68]
	lea	rdx, [rsp + 0x80]
	mov	rcx, r9
	call	check_node_accept_bytes
	mov	rdx, qword ptr [rsp + 0x180]
	mov	r8, qword ptr [rsp + 0x10]
	test	eax, eax
	je	.label_704
	movsxd	rbx, eax
	add	rbx, qword ptr [rsp + 0xc8]
	mov	ecx, dword ptr [rsp + 0x160]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x160], ecx
	mov	r14, qword ptr [rsp + 0x140]
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	rcx, rbx
	jg	.label_963
	cmp	rcx, rax
	jl	.label_1115
.label_963:
	mov	rcx, qword ptr [rsp + 0xb0]
	cmp	rcx, rbx
	jg	.label_674
	cmp	rcx, rax
	jge	.label_674
.label_1115:
	lea	esi, [rbx + 1]
	lea	rdi, [rsp + 0x80]
	call	extend_buffers
	test	eax, eax
	jne	.label_1105
.label_674:
	mov	rdx, rbx
	sub	rdx, r14
	jle	.label_1123
	mov	rax, qword ptr [rsp + 0x138]
	lea	rdi, [rax + r14*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	qword ptr [rsp + 0x140], rbx
.label_1123:
	mov	dword ptr [rsp + 0x34], 0
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rax + rcx*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x68], rbx
	mov	rax, qword ptr [rax + rbx*8]
	test	rax, rax
	mov	qword ptr [rsp + 0x1f0], rax
	je	.label_684
	mov	rsi, qword ptr [rax + 0x50]
	lea	rbx, [rsp + 0x1a0]
	mov	rdi, rbx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x34], eax
	test	eax, eax
	je	.label_808
	jmp	.label_666
.label_684:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x1b0], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
	lea	rbx, [rsp + 0x1a0]
.label_808:
	mov	r14, qword ptr [rsp + 0x68]
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	call	re_string_context_at
	lea	rdi, [rsp + 0x34]
	mov	rsi, rbp
	mov	rdx, rbx
	mov	ecx, eax
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x1f0], 0
	mov	rcx, qword ptr [rsp + 0x138]
	mov	qword ptr [rcx + r14*8], rax
	je	.label_712
	mov	rdi, qword ptr [rsp + 0x1b0]
	call	free
.label_712:
	mov	rax, qword ptr [rsp + 0x138]
	cmp	qword ptr [rax + r14*8], 0
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x180]
	jne	.label_704
	mov	eax, dword ptr [rsp + 0x34]
	test	eax, eax
	jne	.label_714
.label_704:
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jl	.label_719
.label_1075:
	mov	dword ptr [rsp + 8], 0
	jmp	.label_1060
.label_911:
	mov	rsi, qword ptr [rsp + 0xc8]
	dec	rsi
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	call	re_string_context_at
	and	eax, 1
	shl	rax, 8
	or	rax, rbx
	mov	rbx, qword ptr [r14 + rax*8]
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_728
.label_725:
	cmp	r12, rbx
	je	.label_739
	mov	dword ptr [rsp + 0x18], 0
.label_739:
	cmove	r8, r15
	jmp	.label_683
.label_714:
	mov	dword ptr [rsp + 8], eax
.label_789:
	xor	ebx, ebx
	jmp	.label_728
.label_1105:
	mov	dword ptr [rsp + 0x34], eax
.label_666:
	mov	dword ptr [rsp + 8], eax
	xor	ebx, ebx
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_728
	nop	dword ptr [rax]
.label_992:
	lea	r15, [r14 + 1]
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	r15, rcx
	jl	.label_753
	cmp	rcx, rax
	jl	.label_711
.label_753:
	mov	rcx, qword ptr [rsp + 0xb0]
	cmp	r15, rcx
	jl	.label_941
	cmp	rcx, rax
	jl	.label_711
.label_941:
	test	byte ptr [r12 + 0x68], 0x20
	jne	.label_765
.label_1060:
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0xc8], rcx
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ebx, byte ptr [rcx + rax]
.label_786:
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	jne	.label_774
	mov	qword ptr [rsp + 0x10], r8
	mov	r14, qword ptr [r12 + 0x60]
	test	r14, r14
	jne	.label_911
	mov	rdi, qword ptr [rsp + 0x118]
	mov	rsi, r12
	call	build_trtable
	test	al, al
	mov	r8, qword ptr [rsp + 0x10]
	jne	.label_786
	mov	dword ptr [rsp + 8], 0xc
	jmp	.label_789
	nop	word ptr [rax + rax]
.label_774:
	mov	rbx, qword ptr [rax + rbx*8]
.label_728:
	cmp	qword ptr [rsp + 0x138], 0
	je	.label_793
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x80]
	mov	rdx, rbx
	mov	rbx, r8
	call	merge_state_with_log
	mov	r8, rbx
	mov	rbx, rax
.label_793:
	test	rbx, rbx
	jne	.label_1067
	cmp	dword ptr [rsp + 8], 0
	jne	.label_688
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	setne	cl
	and	cl, byte ptr [rsp + 0x198]
	cmp	cl, 1
	je	.label_805
	jmp	.label_703
.label_843:
	mov	rax, qword ptr [rsp + 0x138]
	mov	r8, rbp
.label_805:
	mov	rdx, qword ptr [rsp + 0xc8]
	mov	rcx, qword ptr [rsp + 0x140]
	nop	dword ptr [rax + rax]
.label_721:
	cmp	rdx, rcx
	jge	.label_703
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0xc8], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_721
	mov	rbp, r8
	xor	edx, edx
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x80]
	call	merge_state_with_log
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_782
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	je	.label_843
.label_782:
	test	rbx, rbx
	mov	r8, rbp
	je	.label_703
	nop	word ptr cs:[rax + rax]
.label_1067:
	mov	eax, dword ptr [rsp + 0x18]
	test	al, 1
	jne	.label_725
.label_683:
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	jne	.label_857
	mov	r14, qword ptr [rsp + 0xc8]
	jmp	.label_859
	nop	dword ptr [rax]
.label_857:
	mov	r14, qword ptr [rsp + 0xc8]
	test	al, al
	jns	.label_870
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rbp, r8
	call	check_halt_state_context
	mov	r8, rbp
	test	rax, rax
	jne	.label_870
.label_859:
	cmp	qword ptr [rsp + 0xe8], r14
	mov	r12, rbx
	jg	.label_992
	jmp	.label_703
.label_870:
	cmp	byte ptr [rsp + 7], 0
	mov	rdx, r14
	mov	ecx, 1
	mov	eax, 0
	mov	r13, qword ptr [rsp + 0x70]
	jne	.label_969
	jmp	.label_822
	nop	dword ptr [rax]
.label_703:
	mov	rax, r13
	test	rax, rax
	mov	r13, qword ptr [rsp + 0x70]
	je	.label_1027
	add	qword ptr [rax], r8
.label_1027:
	mov	r14, qword ptr [rsp + 0x60]
.label_822:
	cmp	r14, -1
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	je	.label_781
	mov	ebx, 0xc
	cmp	r14, -2
	je	.label_670
	mov	r12, qword ptr [rsp + 0x38]
	cmp	r12, 1
	seta	al
	mov	qword ptr [rsp + 0x128], r14
	mov	rcx, qword ptr [rsp + 0x48]
	test	byte ptr [rcx + 0x38], 0x10
	sete	r15b
	and	r15b, al
	je	.label_891
	mov	rax, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rax + r14*8]
	lea	rdi, [rsp + 0x80]
	mov	rdx, r14
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x130], rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_951
.label_891:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_848
	mov	rax, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rax + r14*8]
	lea	rdi, [rsp + 0x80]
	mov	rdx, r14
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x130], rax
	test	r15b, 1
	je	.label_912
.label_951:
	test	byte ptr [rbp + 0xb0], 1
	jne	.label_917
.label_912:
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_848
.label_917:
	movabs	rax, 0x1ffffffffffffffe
	cmp	r14, rax
	ja	.label_670
	mov	r15, qword ptr [rsp + 0x118]
	mov	r12, qword ptr [rsp + 0x130]
	lea	rbp, [r14*8 + 8]
	mov	rdi, rbp
	call	malloc
	mov	r13, rax
	test	rax, rax
	mov	eax, 0
	je	.label_934
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_937
	mov	qword ptr [rsp + 0x198], r15
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	je	.label_944
	xor	esi, esi
	mov	rdi, rax
	mov	rdx, rbp
	mov	rbx, rax
	call	memset
	mov	r15, r13
	mov	qword ptr [rsp + 0x1a0], r15
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x1a8], rbx
	mov	qword ptr [rsp + 0x60], r12
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x80]
	lea	r12, [rsp + 0x1a0]
	mov	rsi, r12
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1113
	lea	r13, [r14 + 1]
.label_1033:
	cmp	qword ptr [r15], 0
	mov	rcx, qword ptr [rsp + 0x18]
	jne	.label_738
	cmp	qword ptr [rcx], 0
	jne	.label_738
	test	r14, r14
	jle	.label_976
	mov	rax, qword ptr [rsp + 0x138]
	mov	r13, r14
	nop	word ptr cs:[rax + rax]
.label_798:
	lea	r14, [r13 - 1]
	mov	rsi, qword ptr [rax + r13*8 - 8]
	test	rsi, rsi
	je	.label_994
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_995
.label_994:
	cmp	r13, 2
	mov	r13, r14
	jge	.label_798
	jmp	.label_976
.label_995:
	lea	rbx, [rsp + 0x80]
	mov	rdi, rbx
	mov	rdx, r14
	mov	rbx, rcx
	call	check_halt_state_context
	mov	rbp, rax
	lea	rdx, [r13*8]
	xor	esi, esi
	mov	rdi, rbx
	call	memset
	mov	qword ptr [rsp + 0x1a0], r15
	mov	qword ptr [rsp + 0x1a8], rbx
	mov	qword ptr [rsp + 0x60], rbp
	mov	qword ptr [rsp + 0x1b0], rbp
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x80]
	mov	rsi, r12
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	je	.label_1033
.label_1113:
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_1036
.label_937:
	mov	r15, r13
	mov	qword ptr [rsp + 0x1a0], r15
	mov	qword ptr [rsp + 0x1a8], 0
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	mov	ebp, 0
	jne	.label_1036
	cmp	qword ptr [r15], 0
	mov	ecx, 0
	jne	.label_1059
.label_976:
	mov	rdi, r15
	mov	rbx, rcx
	call	free
	mov	rdi, rbx
	call	free
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	mov	r13, qword ptr [rsp + 0x70]
.label_781:
	lea	rdi, [rsp + 0x80]
	call	match_ctx_clean
.label_954:
	mov	rbp, qword ptr [rsp + 0x28]
	add	rbp, r13
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r15
	mov	ebx, 1
	jl	.label_670
	cmp	r12, rbp
	jge	.label_1080
	jmp	.label_670
.label_964:
	test	edx, edx
	jne	.label_1086
	test	ecx, ecx
	je	.label_672
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbx, rax
	jmp	.label_672
.label_1086:
	mov	rbx, qword ptr [rbp + 0x58]
	jmp	.label_672
.label_738:
	mov	rdi, qword ptr [rsp + 0x198]
	mov	rsi, r15
	mov	rdx, rcx
	mov	rbp, rcx
	mov	rcx, r13
	call	merge_state_array
	mov	ebx, eax
	mov	rdi, rbp
	call	free
	test	ebx, ebx
	mov	ebp, 0
	mov	r12, qword ptr [rsp + 0x60]
	jne	.label_1036
.label_1059:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	qword ptr [rsp + 0x138], r15
	mov	qword ptr [rsp + 0x130], r12
	mov	qword ptr [rsp + 0x128], r14
	mov	r12, qword ptr [rsp + 0x38]
.label_848:
	xor	ebx, ebx
	test	r12, r12
	je	.label_670
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rbx, 1
	je	.label_1116
	mov	rax, qword ptr [rsp + 0x258]
	lea	rdi, [rax + 0x10]
	cmp	rbx, 2
	mov	edx, 2
	cmova	rdx, rbx
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
.label_1116:
	mov	rax, qword ptr [rsp + 0x258]
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rcx + 8], rax
	cmp	rbx, 2
	jb	.label_656
	mov	rax, qword ptr [rsp + 0x48]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_656
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_658
	xor	eax, eax
	jmp	.label_743
.label_658:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_743:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x38]
	movzx	r8d, al
	lea	rsi, [rsp + 0x80]
	mov	rcx, qword ptr [rsp + 0x258]
	call	set_regs
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_670
.label_656:
	mov	r9b, byte ptr [rsp + 0x10c]
	mov	r8, qword ptr [rsp + 0x98]
	mov	rax, qword ptr [rsp + 0x258]
	lea	rdx, [rax + 8]
	xor	ecx, ecx
	mov	r14, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x250]
	mov	r10, qword ptr [rsp + 0x1e0]
	jmp	.label_740
.label_1042:
	cmp	eax, 0xc
	je	.label_688
	mov	edi, OFFSET FLAT:label_691
	mov	esi, OFFSET FLAT:label_692
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_693
	call	__assert_fail
.label_821:
	cmp	dword ptr [rsp + 8], 0xc
	jne	.label_938
.label_688:
	mov	ebx, 0xc
	jmp	.label_670
.label_1112:
	mov	rbx, qword ptr [rsp + 0xb0]
	cmp	rdi, rbx
	lea	rdi, [r8 + rdi*8]
	lea	rsi, [rsp + 0xb8]
	mov	r11, rsi
	cmove	rdi, r11
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rdx - 8], rdi
	mov	rsi, rcx
	shl	rsi, 4
	mov	rbp, qword ptr [rsp + 0x258]
	lea	rbp, [rbp + rsi + 8]
	mov	rsi, qword ptr [rdx]
	cmp	rsi, rbx
	lea	rsi, [r8 + rsi*8]
	cmove	rsi, r11
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rdx], rbx
	jmp	.label_662
	nop	word ptr cs:[rax + rax]
.label_740:
	mov	rdi, qword ptr [rdx - 8]
	cmp	rdi, -1
	je	.label_730
	test	r9b, r9b
	jne	.label_1112
	mov	rbx, qword ptr [rdx]
	mov	rbp, rdx
.label_662:
	mov	rsi, qword ptr [rsp + 0x28]
	add	rdi, rsi
	mov	qword ptr [rdx - 8], rdi
	add	rbx, rsi
	mov	qword ptr [rbp], rbx
.label_730:
	inc	rcx
	add	rdx, 0x10
	dec	rax
	cmp	r10, rax
	jne	.label_740
	test	r10, r10
	mov	rbp, qword ptr [rsp + 0x38]
	jle	.label_746
	mov	rdi, rbp
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x258]
	mov	rdx, r10
	shl	rdx, 4
	mov	esi, 0xff
	call	memset
.label_746:
	mov	rax, qword ptr [r14 + 0xe0]
	xor	ebx, ebx
	test	rax, rax
	je	.label_670
	cmp	rbp, 2
	jb	.label_670
	mov	rcx, qword ptr [rsp + 0x1e0]
	sub	qword ptr [rsp + 0x1e8], rcx
	mov	rcx, qword ptr [rsp + 0x258]
	lea	rcx, [rcx + 0x18]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_855:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_1000
	shl	rsi, 4
	mov	rdi, qword ptr [rsp + 0x258]
	mov	rsi, qword ptr [rdi + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rax + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rdi + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_1000:
	inc	rdx
	add	rcx, 0x10
	xor	ebx, ebx
	cmp	qword ptr [rsp + 0x1e8], rdx
	jne	.label_855
.label_670:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_784
	lea	rdi, [rsp + 0x80]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x178]
	call	free
	mov	rdi, qword ptr [rsp + 0x158]
	call	free
.label_784:
	mov	rdi, qword ptr [rsp + 0x90]
	call	free
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	cmp	byte ptr [rsp + 0x10b], 0
	je	.label_800
	mov	rdi, qword ptr [rsp + 0x88]
	call	free
.label_800:
	mov	eax, ebx
	add	rsp, 0x218
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_944:
	mov	qword ptr [rsp + 0x1d8], r13
.label_934:
	mov	rdi, qword ptr [rsp + 0x1d8]
	mov	rbp, rax
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_670
.label_938:
	mov	edi, OFFSET FLAT:label_691
	mov	esi, OFFSET FLAT:label_692
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_693
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b2f0
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	push	rax
	mov	rax, r8
	mov	r8d, 0
	mov	r9, rdx
	push	1
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b310

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	test	rcx, rcx
	mov	rbp, -1
	js	.label_1272
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x10], r9
	cmp	rcx, rbx
	jg	.label_1272
	xor	r12d, r12d
	add	r8, rcx
	js	.label_1291
	mov	r12, r8
.label_1291:
	mov	rbp, qword ptr [rsp + 0x60]
	cmp	r8, rbx
	cmovg	r12, rbx
	movzx	r13d, byte ptr [rdi + 0x38]
	cmp	r12, rcx
	mov	eax, r13d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 8], rdi
	jle	.label_1292
	test	r13b, 8
	mov	eax, r13d
	jne	.label_1292
	mov	rax, qword ptr [rdi + 0x20]
	test	rax, rax
	mov	eax, r13d
	je	.label_1292
	call	rpl_re_compile_fastmap
	mov	rdi, qword ptr [rsp + 8]
	mov	al, byte ptr [rdi + 0x38]
.label_1292:
	xor	r14d, r14d
	test	rbp, rbp
	mov	r15d, 1
	je	.label_1274
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_1274
	and	al, 6
	cmp	al, 4
	jne	.label_1282
	mov	rax, qword ptr [rbp]
	mov	r15, qword ptr [rdi + 0x30]
	cmp	rax, r15
	ja	.label_1284
	xor	r14d, r14d
	test	rax, rax
	jle	.label_1287
	mov	r14, rbp
.label_1287:
	mov	r15d, 1
	test	rax, rax
	jle	.label_1274
	mov	r15, rax
	jmp	.label_1274
.label_1282:
	mov	r15, qword ptr [rdi + 0x30]
.label_1284:
	inc	r15
	mov	r14, rbp
.label_1274:
	mov	rdi, r15
	shl	rdi, 4
	call	malloc
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, -2
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x20]
	je	.label_1272
	mov	edx, r13d
	shr	dl, 5
	and	dl, 1
	and	r13d, 0x40
	movzx	edx, dl
	shr	r13d, 5
	or	r13d, edx
	sub	rsp, 8
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x18]
	push	r13
	mov	r12, rax
	push	rax
	push	r15
	call	re_search_internal
	add	rsp, 0x20
	test	eax, eax
	je	.label_1286
	xor	ebp, ebp
	cmp	eax, 1
	sete	bpl
	or	rbp, 0xfffffffffffffffe
	mov	rdi, r12
.label_1269:
	call	free
.label_1272:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1286:
	test	r14, r14
	mov	rdi, r12
	je	.label_1295
	mov	r8, qword ptr [rsp + 8]
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	cmp	al, 2
	je	.label_1298
	lea	rbx, [r15 + 1]
	cmp	al, 1
	je	.label_1283
	test	al, al
	jne	.label_1271
	lea	r13, [rbx*8]
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 8], rax
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x10], rax
	test	rax, rax
	je	.label_1281
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1273
	mov	qword ptr [r14], rbx
	mov	r13d, 1
.label_1285:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1275
.label_1298:
	mov	rbx, qword ptr [r14]
	mov	r13d, 2
	cmp	rbx, r15
	jae	.label_1275
	mov	edi, OFFSET FLAT:label_1297
	mov	esi, OFFSET FLAT:label_692
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_1289
	call	__assert_fail
.label_1283:
	mov	rax, qword ptr [r14]
	mov	r13d, 1
	cmp	rbx, rax
	ja	.label_1270
	mov	rbx, rax
.label_1275:
	test	r15, r15
	jle	.label_1276
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r14 + 0x10]
	mov	r9d, r15d
	and	r9d, 1
	xor	edx, edx
	cmp	r15, 1
	je	.label_1279
	mov	rsi, r15
	sub	rsi, r9
	mov	rbp, rdi
	add	rbp, 0x18
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1293:
	mov	rbx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + rdx*8 + 8], rbx
	mov	rbx, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8 + 8], rbx
	add	rdx, 2
	add	rbp, 0x20
	cmp	rsi, rdx
	jne	.label_1293
.label_1279:
	test	r9, r9
	je	.label_1302
	mov	rsi, rdx
	shl	rsi, 4
	mov	rbp, qword ptr [rdi + rsi]
	mov	qword ptr [rcx + rdx*8], rbp
	mov	rcx, qword ptr [rdi + rsi + 8]
	mov	qword ptr [rax + rdx*8], rcx
.label_1302:
	mov	rbx, qword ptr [r14]
	jmp	.label_1300
.label_1276:
	xor	r15d, r15d
.label_1300:
	cmp	r15, rbx
	jae	.label_1296
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1290:
	mov	qword ptr [rcx + r15*8], -1
	mov	qword ptr [rax + r15*8], -1
	inc	r15
	cmp	r15, qword ptr [r14]
	jb	.label_1290
.label_1296:
	mov	ebp, r13d
.label_1301:
	mov	al, byte ptr [r8 + 0x38]
	add	bpl, bpl
	and	al, 0xf9
	mov	ecx, ebp
	and	cl, 6
	or	cl, al
	and	bpl, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	rbp, -2
	je	.label_1269
.label_1295:
	mov	al, byte ptr [rsp + 0x68]
	mov	rbp, qword ptr [rdi]
	test	al, al
	je	.label_1269
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rbp, rax
	jne	.label_1299
	mov	rbp, qword ptr [rdi + 8]
	sub	rbp, rax
	jmp	.label_1269
.label_1270:
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_1281
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1280
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [r14 + 8], rcx
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r14], rbx
	jmp	.label_1285
.label_1273:
	mov	rdi, qword ptr [rsp + 0x10]
.label_1294:
	call	free
.label_1281:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1301
.label_1271:
	mov	edi, OFFSET FLAT:label_1288
	mov	esi, OFFSET FLAT:label_692
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_1289
	call	__assert_fail
.label_1299:
	mov	edi, OFFSET FLAT:label_1277
	mov	esi, OFFSET FLAT:label_692
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_1278
	call	__assert_fail
.label_1280:
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_1294
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b6d0

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	push	rax
	mov	rax, r9
	mov	r9, rdx
	push	0
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b6f0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1304
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1308
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1304
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1306
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1303
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1304
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_1306
.label_1308:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1307
.label_1304:
	mov	rax, -2
	jmp	.label_1305
.label_1307:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1306
.label_1303:
	mov	r13, r15
.label_1306:
	mov	r8d, 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	1
	push	qword ptr [rsp + 0x58]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1305:
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
	#Procedure 0x40b800
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1309
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1312
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1309
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1310
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1313
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1309
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_1310
.label_1312:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1311
.label_1309:
	mov	rax, -2
	jmp	.label_1314
.label_1311:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1310
.label_1313:
	mov	r13, r15
.label_1310:
	mov	r8, qword ptr [rsp + 0x50]
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	0
	push	qword ptr [rsp + 0x60]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1314:
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
	#Procedure 0x40b910
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9d, eax
	or	r9b, 2
	test	rdx, rdx
	je	.label_1315
	mov	eax, r9d
.label_1315:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b940

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
	je	.label_1316
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_1316:
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
	.align	16
	#Procedure 0x40b9a0

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1317
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_1318
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_1318
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1317
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_1318
	mov	qword ptr [rbx + 0x18], rax
.label_1317:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1319
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_1318
	mov	qword ptr [rbx + 8], rax
.label_1319:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_1318:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ba30

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
	mov	r13, rdi
	mov	r15, qword ptr [r13 + 0x30]
	mov	rdx, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	rdx, rax
	cmovg	rdx, rax
	cmp	byte ptr [r13 + 0x8a], 0
	jne	.label_1332
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1332
	cmp	byte ptr [r13 + 0x8c], 0
	je	.label_1350
.label_1332:
	mov	r12, qword ptr [r13 + 0x38]
	jmp	.label_1367
.label_1350:
	cmp	rdx, r15
	jle	.label_1360
	lea	rax, [r13 + 0x78]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 8], rax
	jmp	.label_1327
.label_1359:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_1361
	cmp	rbp, -2
	jne	.label_1368
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1368
.label_1361:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [r13]
	mov	rdx, qword ptr [r13 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	jne	.label_1334
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_1334
	nop	
.label_1327:
	mov	r14, rdx
	mov	rbp, qword ptr [r13]
	mov	rbx, qword ptr [r13 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r12d, byte ptr [rbp + rax]
	test	r12b, r12b
	js	.label_1325
	mov	rdi, qword ptr [rsp + 8]
	call	mbsinit
	test	eax, eax
	je	.label_1325
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + r12*4]
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, qword ptr [r13 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
.label_1334:
	mov	rax, r15
	jmp	.label_1339
	nop	dword ptr [rax]
.label_1325:
	mov	rdx, r14
	sub	rdx, r15
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	add	rbp, rbx
	add	rbp, r15
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rax, [rbp - 1]
	cmp	rax, -4
	ja	.label_1359
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	r12d, eax
	cmp	r12d, dword ptr [rsp + 4]
	lea	rbx, [rsp + 0x30]
	jne	.label_1366
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, r15
	jmp	.label_1372
	nop	word ptr cs:[rax + rax]
.label_1366:
	mov	rdi, rbx
	mov	esi, r12d
	lea	rdx, [rsp + 0x10]
	call	wcrtomb
	cmp	rbp, rax
	jne	.label_1374
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbx
.label_1372:
	mov	rdx, rbp
	call	memcpy
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], r12d
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_1339
	lea	rdi, [rcx + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_1339:
	mov	rdx, r14
	cmp	rdx, rax
	mov	r15, rax
	jg	.label_1327
	jmp	.label_1329
.label_1374:
	mov	r12, r15
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_1330
.label_1368:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_1360:
	mov	rax, r15
.label_1329:
	mov	qword ptr [r13 + 0x30], rax
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_1343
.label_1367:
	cmp	r15, rdx
	jge	.label_1347
	lea	rcx, [r13 + 0x20]
	lea	rsi, [r13 + 0x78]
.label_1330:
	mov	qword ptr [rsp + 0x18], rdx
	sub	rdx, r15
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsi]
	test	rax, rax
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 8], rcx
	jne	.label_1351
	mov	rbp, qword ptr [r13]
	add	rbp, qword ptr [r13 + 0x28]
	add	rbp, r12
.label_1320:
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	cmp	r12, -4
	ja	.label_1369
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 4]
	je	.label_1345
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x10]
	mov	esi, ebx
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_1376
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_1377
.label_1351:
	lea	rbp, [rsp + 0x30]
	movsxd	r8, dword ptr [r13 + 0x90]
	test	r8, r8
	jle	.label_1320
	xor	esi, esi
.label_1336:
	cmp	rsi, rdx
	jge	.label_1320
	mov	rdi, qword ptr [r13]
	add	rdi, qword ptr [r13 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rsi + rdi]
	movzx	ebx, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, r8
	jl	.label_1336
	jmp	.label_1320
.label_1369:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1331
	cmp	r14, -2
	jne	.label_1333
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1333
.label_1331:
	mov	rax, qword ptr [r13 + 0x28]
	mov	r12, qword ptr [rsp + 0x20]
	add	rax, r12
	mov	rdx, qword ptr [r13]
	mov	rcx, qword ptr [r13 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1344
.label_1337:
	movzx	eax, al
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_1356
.label_1341:
	inc	r12
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	jne	.label_1326
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_1326
.label_1376:
	cmp	rcx, -1
	je	.label_1345
	lea	rbp, [rcx + r15]
	mov	rdi, qword ptr [r13 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1371
.label_1333:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	r12, qword ptr [rsp + 0x20]
.label_1347:
	mov	qword ptr [r13 + 0x30], r15
	mov	qword ptr [r13 + 0x38], r12
.label_1343:
	xor	eax, eax
.label_1324:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1345:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1377:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r13 + 0x8c], 0
	mov	r12, qword ptr [rsp + 0x20]
	jne	.label_1321
.label_1323:
	add	r12, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_1326
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	jmp	.label_1340
.label_1326:
	mov	rbp, r15
.label_1340:
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r15, rbp
	jmp	.label_1367
.label_1321:
	mov	rax, qword ptr [r13 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_1346
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_1346
	movq	xmm0, r12
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [rcx - 4]
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 1
	mov	esi, 1
	test	rdi, rdi
	je	.label_1357
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm8, xmmword ptr [rip + label_1015]
	movdqa	xmm3, xmmword ptr [rip + label_1014]
	movdqa	xmm4, xmmword ptr [rip + label_1017]
	movdqa	xmm5, xmmword ptr [rip + label_1016]
.label_1348:
	movdqa	xmm6, xmm1
	paddq	xmm6, xmm8
	movdqa	xmm7, xmm1
	paddq	xmm7, xmm0
	movdqa	xmm2, xmm7
	paddq	xmm2, xmm3
	movq	rdi, xmm1
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm7
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	paddq	xmm1, xmm4
	paddq	xmm7, xmm5
	movq	rdi, xmm6
	paddq	xmm6, xmm0
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm6
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm7
	add	rsi, 2
	jne	.label_1348
	jmp	.label_1328
.label_1371:
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [r13 + 0x18]
	test	rax, rax
	mov	qword ptr [rsp + 0x28], rcx
	jne	.label_1370
	shl	rdi, 3
	call	malloc
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1365
.label_1370:
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_1378
	test	r15, r15
	je	.label_1335
	xor	edx, edx
	cmp	r15, 4
	jb	.label_1322
	xor	edx, edx
	mov	r9, r15
	and	r9, 0xfffffffffffffffc
	je	.label_1322
	lea	rsi, [r9 - 4]
	mov	rdi, rsi
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_1362
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_1375
.label_1357:
	movq	xmm1, rsi
	pslldq	xmm1, 8
.label_1328:
	test	rdx, rdx
	je	.label_1373
	paddq	xmm0, xmm1
	movq	rdx, xmm1
	add	rdx, r15
	movdqu	xmmword ptr [rax + rdx*8], xmm0
	paddq	xmm0, xmmword ptr [rip + label_1014]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm0
.label_1373:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_1323
.label_1346:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + r12]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
.label_1380:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_1380
	jmp	.label_1323
.label_1365:
	mov	eax, 0xc
	jmp	.label_1324
.label_1362:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_1014]
	movdqa	xmm9, xmmword ptr [rip + label_1015]
	movdqa	xmm10, xmmword ptr [rip + label_1016]
	movdqa	xmm11, xmmword ptr [rip + label_1017]
	movdqa	xmm5, xmmword ptr [rip + label_1018]
	movdqa	xmm6, xmmword ptr [rip + label_1019]
	movdqa	xmm7, xmmword ptr [rip + label_1020]
	movdqa	xmm1, xmmword ptr [rip + label_1021]
.label_1358:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rdi, xmm0
	movdqu	xmmword ptr [rax + rdi*8], xmm0
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rdi, xmm4
	movdqu	xmmword ptr [rax + rdi*8], xmm4
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_1358
.label_1375:
	test	rdx, rdx
	je	.label_1379
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_1014]
	movdqa	xmm2, xmmword ptr [rip + label_1015]
.label_1364:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_1364
.label_1379:
	cmp	r15, r9
	mov	rdx, r9
	je	.label_1335
.label_1322:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1322
.label_1335:
	mov	byte ptr [r13 + 0x8c], 1
.label_1378:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, rcx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], ebx
	mov	rdx, qword ptr [r13 + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	qword ptr [rdx + r15*8], rbx
	cmp	rdi, 2
	jb	.label_1355
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_1349
	mov	rsi, r10
	and	rsi, 0xfffffffffffffffc
	mov	r8, r10
	and	r8, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1349
	mov	rax, rsi
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm6, xmm0, 0x44
	movq	xmm1, r12
	pshufd	xmm11, xmm1, 0x44
	mov	r9, rbx
	movq	xmm2, rbx
	pshufd	xmm12, xmm2, 0x44
	movdqa	xmm7, xmmword ptr [rip + label_1352]
	movdqa	xmm8, xmmword ptr [rip + label_1014]
	movdqa	xmm9, xmmword ptr [rip + label_1015]
	movdqa	xmm10, xmmword ptr [rip + label_1353]
	pxor	xmm6, xmm10
	pshufd	xmm13, xmmword ptr [rip + label_1354],  0xe8
	mov	rdi, r8
.label_1338:
	movdqa	xmm4, xmm7
	paddq	xmm4, xmm8
	movdqa	xmm3, xmm7
	paddq	xmm3, xmm9
	movdqa	xmm5, xmm7
	pxor	xmm5, xmm10
	movdqa	xmm0, xmm6
	pcmpgtd	xmm0, xmm5
	pshufd	xmm2, xmm0, 0xa0
	pcmpeqd	xmm5, xmm6
	pshufd	xmm1, xmm5, 0xf5
	pand	xmm1, xmm2
	pshufd	xmm5, xmm0, 0xf5
	por	xmm5, xmm1
	movdqa	xmm0, xmm4
	pxor	xmm0, xmm10
	movdqa	xmm1, xmm6
	pcmpgtd	xmm1, xmm0
	pshufd	xmm2, xmm1, 0xa0
	pcmpeqd	xmm0, xmm6
	pshufd	xmm0, xmm0, 0xf5
	pand	xmm0, xmm2
	pshufd	xmm1, xmm1, 0xf5
	por	xmm1, xmm0
	movq	rbx, xmm7
	pand	xmm7, xmm5
	pandn	xmm5, xmm11
	por	xmm5, xmm7
	pand	xmm4, xmm1
	pandn	xmm1, xmm11
	por	xmm1, xmm4
	paddq	xmm5, xmm12
	paddq	xmm1, xmm12
	add	rbx, r15
	movdqu	xmmword ptr [rdx + rbx*8], xmm5
	movdqu	xmmword ptr [rdx + rbx*8 + 0x10], xmm1
	movq	qword ptr [rcx + rbx*4], xmm13
	movq	qword ptr [rcx + rbx*4 + 8], xmm13
	add	rdi, -4
	movdqa	xmm7, xmm3
	jne	.label_1338
	cmp	r10, r8
	mov	rbx, r9
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_1355
.label_1349:
	lea	rcx, [rcx + r15*4]
	lea	rdx, [rdx + r15*8]
.label_1363:
	cmp	rax, r14
	mov	rsi, r12
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_1363
.label_1355:
	mov	rax, qword ptr [r13 + 0x58]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rax, rcx
	mov	qword ptr [r13 + 0x58], rax
	cmp	qword ptr [r13 + 0x60], rbx
	mov	r12, rbx
	jle	.label_1342
	add	qword ptr [r13 + 0x68], rcx
.label_1342:
	mov	rdx, qword ptr [r13 + 0x40]
	cmp	rdx, rax
	cmovg	rdx, rax
	add	r12, r14
	mov	r15, rbp
	jmp	.label_1367
.label_1344:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1337
.label_1356:
	mov	rcx, qword ptr [r13 + 0x18]
	mov	qword ptr [rcx + r15*8], r12
	jmp	.label_1341
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c360

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
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x30]
	mov	r12, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, rbx
	jle	.label_1390
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1384
	nop	dword ptr [rax + rax]
.label_1386:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [r13 + 0x78]
	test	rax, rax
	jne	.label_1381
.label_1388:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_1385:
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_1382
	lea	rdi, [rdx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1382:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_1384
	jmp	.label_1393
.label_1391:
	mov	ecx, dword ptr [rsp + 0xc]
	jmp	.label_1385
.label_1392:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1383
	xor	eax, eax
.label_1389:
	cmp	rax, rdx
	jge	.label_1387
	mov	rcx, qword ptr [r13]
	mov	rsi, qword ptr [r13 + 0x78]
	add	rcx, qword ptr [r13 + 0x28]
	add	rcx, rbx
	movzx	ecx, byte ptr [rax + rcx]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [r13 + 8]
	add	rsi, rbx
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [r13 + 0x90]
	cmp	rax, rcx
	jl	.label_1389
	lea	rsi, [rsp + 0x10]
	jmp	.label_1383
.label_1381:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_1388
.label_1387:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1383
	nop	
.label_1384:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1392
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_1383:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1386
	cmp	rax, -2
	jne	.label_1391
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1386
	mov	qword ptr [r14], rbp
.label_1390:
	mov	rcx, rbx
.label_1393:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c4e0

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
	mov	rbx, r9
	mov	r13, rdx
	mov	r12, rdi
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x10], r8
	call	parse_branch
	mov	r8, rbx
	mov	rbx, rax
	xor	ebp, ebp
	test	rbx, rbx
	jne	.label_1403
	mov	eax, dword ptr [r8]
	test	eax, eax
	jne	.label_1399
.label_1403:
	cmp	byte ptr [r13 + 8], 0xa
	jne	.label_1409
	mov	rax, qword ptr [rsp + 8]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1402
.label_1409:
	mov	rbp, rbx
	jmp	.label_1399
.label_1408:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1404
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	mov	r8, rbp
	jmp	.label_1406
	nop	word ptr cs:[rax + rax]
.label_1402:
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, r8
	call	peek_token
	mov	r8, rbp
	cdqe	
	add	qword ptr [r12 + 0x48], rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	mov	r15d, 0
	je	.label_1398
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_1394
	cmp	eax, 9
	mov	r15d, 0
	je	.label_1398
.label_1394:
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r14 + 0xa8], rax
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, rbp
	call	parse_branch
	mov	r8, rbp
	mov	r15, rax
	test	r15, r15
	jne	.label_1410
	mov	eax, dword ptr [r8]
	test	eax, eax
	jne	.label_1411
.label_1410:
	mov	rax, qword ptr [rsp + 0x28]
	or	qword ptr [r14 + 0xa8], rax
	nop	dword ptr [rax]
.label_1398:
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_1408
	mov	rax, qword ptr [r14 + 0x70]
.label_1406:
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
	je	.label_1395
	mov	qword ptr [rbx], rbp
.label_1395:
	test	r15, r15
	je	.label_1400
	mov	qword ptr [r15], rbp
.label_1400:
	cmp	byte ptr [r13 + 8], 0xa
	mov	rbx, rbp
	je	.label_1402
.label_1399:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1411:
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_1399
	mov	r14d, 0x400ff
	xor	ebp, ebp
.label_1396:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_1396
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1396
.label_1407:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1397
	cmp	eax, 6
	jne	.label_1405
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
	jmp	.label_1401
.label_1397:
	mov	rdi, qword ptr [r15 + 0x28]
.label_1401:
	call	free
.label_1405:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1399
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_1407
	test	rbx, rbx
	mov	r15, rax
	je	.label_1407
	jmp	.label_1396
.label_1404:
	mov	dword ptr [rbp], 0xc
	xor	ebp, ebp
	jmp	.label_1399
	.section	.text
	.align	16
	#Procedure 0x40c750

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_1443
	mov	r12, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	ebx, byte ptr [rcx + rax]
	mov	byte ptr [r15], bl
	mov	r14d, dword ptr [r15 + 8]
	mov	eax, r14d
	and	eax, 0xff9fffff
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	jl	.label_1425
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1425
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1429
.label_1425:
	cmp	bl, 0x5c
	jne	.label_1434
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1419
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_1441
.label_1418:
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
.label_1440:
	mov	byte ptr [r15], bl
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1445
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
	movzx	ebp, bl
	jmp	.label_1447
.label_1443:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_649
.label_1434:
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1439
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	r14d, dword ptr [rax + rcx*4]
	mov	edi, r14d
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	r14d, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_1414
.label_1419:
	and	r14d, 0xff9fff00
	or	r14d, 0x24
	jmp	.label_1422
.label_1439:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_1414:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	add	bl, 0xf6
	movzx	ecx, bl
	cmp	cl, 0x73
	ja	.label_649
	jmp	qword ptr [(rcx * 8) + label_1433]
.label_2655:
	mov	rcx, r12
	test	ch, 8
	je	.label_649
	jmp	.label_983
.label_1445:
	movzx	ebp, bl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_1447:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 2
	add	bl, 0xd9
	movzx	ecx, bl
	cmp	cl, 0x56
	ja	.label_649
	jmp	qword ptr [(rcx * 8) + label_1413]
.label_2502:
	mov	rcx, r12
	test	ch, 0x40
	jne	.label_649
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	rbp, -0x31
	mov	qword ptr [r15], rbp
	jmp	.label_649
.label_1429:
	and	r14d, 0xff9fff00
	or	r14d, 0x200001
.label_1422:
	mov	dword ptr [r15 + 8], r14d
	mov	r14d, 1
.label_649:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2656:
	mov	rdx, r12
	test	dl, 8
	jne	.label_745
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_745
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 8]
	add	eax, -9
	cmp	eax, 1
	ja	.label_649
	mov	eax, dword ptr [r15 + 8]
.label_745:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_649
.label_2657:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_649
	jmp	.label_764
.label_2658:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_649
	jmp	.label_850
.label_2659:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_649
.label_2660:
	test	r12w, 0x402
	jne	.label_649
	jmp	.label_771
.label_2661:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_649
.label_2662:
	test	r12w, 0x402
	jne	.label_649
	jmp	.label_779
.label_2663:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_649
.label_2664:
	mov	rdx, r12
	test	edx, 0x800008
	jne	.label_787
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_787
	test	dh, 8
	je	.label_649
	mov	rdx, qword ptr [rbp + 8]
	cmp	byte ptr [rdx + rcx - 1], 0xa
	jne	.label_649
.label_787:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_649
.label_2665:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_649
	jmp	.label_1095
.label_2666:
	mov	rcx, r12
	test	ch, 4
	jne	.label_649
	test	cx, cx
	js	.label_983
	jmp	.label_649
.label_2667:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_649
	jmp	.label_819
.label_2498:
	test	r12d, 0x80000
	jne	.label_649
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_649
.label_2499:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_649
.label_764:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_649
.label_2500:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_649
.label_850:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_649
.label_2501:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_649
.label_771:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_649
.label_2503:
	test	r12d, 0x80000
	jne	.label_649
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_649
.label_2504:
	test	r12d, 0x80000
	jne	.label_649
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_649
.label_2505:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_649
.label_779:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_649
.label_2506:
	test	r12d, 0x80000
	jne	.label_649
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_649
.label_2507:
	test	r12d, 0x80000
	jne	.label_649
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_649
.label_2508:
	test	r12d, 0x80000
	jne	.label_649
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_649
.label_2509:
	test	r12d, 0x80000
	jne	.label_649
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_649
.label_2510:
	test	r12d, 0x80000
	jne	.label_649
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_649
.label_2511:
	test	r12d, 0x80000
	jne	.label_649
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_649
.label_2512:
	test	r12d, 0x80000
	jne	.label_649
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_649
.label_2513:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_649
.label_1095:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_649
.label_2514:
	mov	rcx, r12
	test	ch, 4
	jne	.label_649
	test	cx, cx
	js	.label_649
.label_983:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_649
.label_2515:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_649
.label_819:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_649
.label_1441:
	cmp	edx, 2
	jl	.label_1416
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_1418
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_1416
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_1418
.label_1416:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_1435
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1435:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	bl, byte ptr [rcx + rsi]
	je	.label_1440
	test	bl, bl
	js	.label_1418
	jmp	.label_1440
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd70

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r9
	mov	r15, r8
	mov	r13, rdx
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rcx
	call	parse_expression
	mov	rbp, rbx
	mov	rbx, rax
	xor	r12d, r12d
	test	rbx, rbx
	jne	.label_1464
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_1464
	jmp	.label_1466
	nop	dword ptr [rax]
.label_1462:
	test	rbx, rbx
	cmove	rbx, r12
.label_1464:
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_1470
	test	r15, r15
	je	.label_1474
	cmp	eax, 9
	je	.label_1470
.label_1474:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8, r15
	mov	r14, rbp
	mov	r9, r14
	call	parse_expression
	mov	r12, rax
	test	r12, r12
	jne	.label_1456
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1476
.label_1456:
	test	rbx, rbx
	je	.label_1462
	test	r12, r12
	je	.label_1462
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rax + 0x80]
	cmp	ecx, 0xf
	je	.label_1465
	mov	rsi, rax
	mov	rax, qword ptr [rsi + 0x70]
.label_1463:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
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
	jmp	.label_1464
.label_1465:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1461
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbp, r14
	jmp	.label_1463
.label_1470:
	mov	r12, rbx
.label_1466:
	mov	rax, r12
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1476:
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_1466
	mov	r14d, 0x400ff
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1478:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1478
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1478
.label_1473:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1454
	cmp	eax, 6
	jne	.label_1459
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
	jmp	.label_1477
.label_1454:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1477:
	call	free
.label_1459:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1466
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1473
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1473
	jmp	.label_1478
.label_1461:
	mov	ebp, 0x400ff
	mov	rcx, r14
.label_1452:
	mov	r13, r12
	mov	r12, qword ptr [r13 + 8]
	test	r12, r12
	jne	.label_1452
	mov	r12, qword ptr [r13 + 0x10]
	test	r12, r12
	jne	.label_1452
.label_1475:
	mov	eax, dword ptr [r13 + 0x30]
	and	eax, ebp
	cmp	eax, 3
	je	.label_1457
	cmp	eax, 6
	jne	.label_1460
	mov	r15, qword ptr [r13 + 0x28]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_1455
.label_1457:
	mov	rdi, qword ptr [r13 + 0x28]
.label_1455:
	call	free
	mov	rcx, r14
.label_1460:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1471
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, r13
	mov	r13, rax
	je	.label_1475
	test	r12, r12
	mov	r13, rax
	je	.label_1475
	jmp	.label_1452
.label_1471:
	mov	ebp, 0x400ff
.label_1453:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_1453
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1453
.label_1467:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, ebp
	cmp	eax, 3
	je	.label_1458
	cmp	eax, 6
	jne	.label_1468
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
	jmp	.label_1469
.label_1458:
	mov	rdi, qword ptr [r15 + 0x28]
.label_1469:
	call	free
	mov	rcx, r14
.label_1468:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1472
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_1467
	test	rbx, rbx
	mov	r15, rax
	je	.label_1467
	jmp	.label_1453
.label_1472:
	mov	dword ptr [rcx], 0xc
	xor	r12d, r12d
	jmp	.label_1466
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d080

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
	mov	r13, r8
	mov	rbx, rcx
	mov	r10, rdx
	mov	r14, rsi
	mov	r8, rdi
	mov	eax, dword ptr [r10 + 8]
	xor	r15d, r15d
	mov	ecx, eax
	dec	cl
	movzx	ecx, cl
	cmp	cl, 0x23
	ja	.label_655
	mov	rdi, qword ptr [r14]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x18], rdi
	jmp	qword ptr [(rcx * 8) + label_1479]
.label_2640:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_699
	mov	ecx, OFFSET FLAT:label_700
	jmp	.label_701
.label_2641:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_705
	mov	ecx, OFFSET FLAT:label_47
.label_701:
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_718
	mov	eax, dword ptr [r12]
	test	eax, eax
.label_1107:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	je	.label_706
	jmp	.label_655
.label_718:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_706
.label_2631:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_732
	mov	rax, qword ptr [rdi + 0x70]
.label_785:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 2
	jl	.label_735
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	jg	.label_757
	mov	rbp, r14
	jmp	.label_706
.label_861:
	mov	rcx, qword ptr [r8 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_763
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_767
	mov	rax, qword ptr [rsi + 0x70]
	pxor	xmm1, xmm1
.label_837:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	r10, qword ptr [rsp + 8]
	movdqu	xmm0, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_826:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_792
	mov	rax, qword ptr [rsi + 0x70]
.label_915:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbx
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbp
	test	rbx, rbx
	je	.label_668
	mov	qword ptr [rbx], rbp
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	mov	r14, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	jg	.label_757
	jmp	.label_706
.label_767:
	mov	edi, 0x3c8
	call	malloc
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ebx, 0
	mov	r10, qword ptr [rsp + 8]
	pxor	xmm1, xmm1
	je	.label_826
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_837
.label_792:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_668
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_915
.label_757:
	cmp	rax, qword ptr [r8 + 0x30]
	jne	.label_861
	mov	rbp, r14
	jmp	.label_706
.label_2632:
	mov	cl, byte ptr [r10]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [rdi + 0xa8], rax
	je	.label_867
	or	qword ptr [rdi + 0xa0], rax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_874
	mov	rax, qword ptr [rdi + 0x70]
.label_830:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	inc	qword ptr [rdi + 0x98]
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_706
.label_2633:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_893
	mov	rax, qword ptr [rdi + 0x70]
.label_801:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 1
	jle	.label_706
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_706
.label_2634:
	mov	r15, qword ptr [r14 + 0x30]
	lea	rax, [r15 + 1]
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbx
	or	rdx, 0x800000
	mov	rdi, r10
	mov	rsi, r8
	call	peek_token
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	xor	edi, edi
	cmp	byte ptr [r10 + 8], 9
	je	.label_920
	mov	rbp, r15
	inc	r13
	mov	rdi, r8
	mov	rsi, r14
	mov	rdx, r10
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, rax
	xor	r15d, r15d
	cmp	dword ptr [r12], 0
	jne	.label_655
	cmp	byte ptr [r10 + 8], 9
	jne	.label_936
	mov	r15, rbp
.label_920:
	cmp	r15, 8
	mov	rsi, qword ptr [rsp + 0x18]
	ja	.label_973
	mov	eax, 1
	mov	ecx, r15d
	shl	eax, cl
	cdqe	
	or	qword ptr [rsi + 0xa8], rax
.label_973:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_949
	mov	rax, qword ptr [rsi + 0x70]
.label_890:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdi
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rdi, rdi
	je	.label_953
	mov	qword ptr [rdi], rbp
.label_953:
	mov	qword ptr [rax + rcx + 0x30], r15
	jmp	.label_706
.label_2637:
	mov	eax, dword ptr [r10]
	test	ax, 0x30f
	je	.label_978
	mov	al, byte ptr [rdi + 0xb0]
	test	al, 0x10
	jne	.label_955
	mov	ecx, eax
	or	cl, 0x10
	mov	byte ptr [rdi + 0xb0], cl
	xor	r14d, r14d
	test	al, 8
	mov	ebp, 0
	jne	.label_980
	movdqa	xmm0, xmmword ptr [rip + label_989]
	movdqu	xmmword ptr [rdi + 0xb8], xmm0
	mov	ebp, 2
	mov	r14d, 0x80
	test	al, 4
	je	.label_980
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0xc8], xmm0
.label_955:
	mov	eax, dword ptr [r10]
.label_978:
	cmp	eax, 0x200
	je	.label_998
	cmp	eax, 0x100
	jne	.label_1001
	mov	dword ptr [r10], 6
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_863
	mov	rax, qword ptr [rdi + 0x70]
.label_962:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	jmp	.label_1013
.label_2639:
	test	ebx, 0x1000000
	jne	.label_1037
.label_2636:
	test	bl, 0x20
	jne	.label_1037
	test	bl, 0x10
	jne	.label_1041
.label_2635:
	test	ebx, 0x20000
	jne	.label_1043
	movzx	ecx, al
	cmp	ecx, 9
	jne	.label_1043
	mov	dword ptr [r12], 0x10
	jmp	.label_795
.label_1043:
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r10 + 8], eax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_1050
	mov	rax, qword ptr [rdi + 0x70]
.label_1120:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_897:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_706
.label_2638:
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r14, r14
	je	.label_1085
	test	r15, r15
	je	.label_1085
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, rbp
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 0x19
	je	.label_1096
	cmp	cl, 2
	je	.label_1099
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_1101
.label_2642:
	mov	dword ptr [r12], 5
	jmp	.label_795
.label_1041:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbp, r8
	mov	r15, r10
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, rbx
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
.label_735:
	mov	rbp, r14
	jmp	.label_706
.label_1096:
	or	byte ptr [r15 + 0x20], 1
	test	bh, 1
	je	.label_1117
	or	byte ptr [r14 + 1], 4
.label_1117:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x10]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rdx
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 2
	je	.label_1099
	mov	sil, 1
	mov	dword ptr [rsp + 0x28], esi
.label_1101:
	cmp	cl, 0x15
	jne	.label_648
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rdx + 8], ecx
.label_648:
	lea	rcx, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rcx
	mov	dword ptr [rsp + 0x50], 3
	lea	rdi, [rsp + 0x50]
	mov	r9d, 1
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_908
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_665
.label_971:
	cmp	al, 2
	je	.label_673
	lea	rax, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x50], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r10
	mov	ecx, r13d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_665
	jmp	.label_908
.label_2456:
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	qword ptr [rsp + 0x68], rcx
	je	.label_694
	mov	rax, qword ptr [r15]
.label_796:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x58]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_697
.label_2457:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	je	.label_707
	jmp	.label_710
.label_931:
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax]
	jmp	.label_1026
.label_921:
	xor	eax, eax
.label_1026:
	cmp	r15d, 3
	je	.label_1039
	test	r15d, r15d
	jne	.label_720
	mov	bl, byte ptr [rsp + 0xa0]
	jmp	.label_724
.label_1039:
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	bl, byte ptr [rcx]
	jmp	.label_724
.label_720:
	xor	ebx, ebx
.label_724:
	cmp	ebp, 3
	je	.label_1087
	test	ebp, ebp
	jne	.label_1057
.label_1087:
	test	r12, r12
	movzx	edx, al
	je	.label_827
	mov	edi, edx
	call	btowc
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	edx, eax
	jmp	.label_827
.label_1057:
	mov	edx, dword ptr [rsp + 0x58]
.label_827:
	cmp	r15d, 3
	je	.label_736
	test	r15d, r15d
	jne	.label_737
.label_736:
	test	r12, r12
	movzx	eax, bl
	je	.label_669
	mov	edi, eax
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_669
.label_737:
	mov	eax, dword ptr [rsp + 0xa0]
.label_669:
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	edx, -1
	mov	ecx, 3
	je	.label_663
	cmp	eax, -1
	je	.label_663
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_756
	cmp	edx, eax
	mov	ecx, 0xb
	ja	.label_663
.label_756:
	test	r12, r12
	je	.label_761
	mov	rsi, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x60], rsi
	je	.label_880
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12 + 0x10]
.label_709:
	mov	dword ptr [rdi + rsi*4], edx
	lea	rcx, [rsi + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [rbp + rsi*4], eax
.label_761:
	mov	r15, qword ptr [rsp + 0x30]
	mov	eax, eax
	mov	edx, edx
	xor	ecx, ecx
	mov	r12, qword ptr [rsp + 0x48]
	nop	dword ptr [rax]
.label_942:
	cmp	rdx, rcx
	ja	.label_829
	cmp	rcx, rax
	ja	.label_829
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r14 + rdi*8], rsi
.label_829:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_942
	mov	dword ptr [r12], 0
	jmp	.label_697
.label_694:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_734
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rcx, [rcx + rcx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	r15, qword ptr [rsp + 0x30]
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_796
.label_880:
	mov	dword ptr [rsp + 0x40], eax
	mov	r15d, edx
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r12 + 8]
	lea	rbp, [rax*4 + 4]
	mov	rsi, rbp
	call	realloc
	mov	rbx, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rdi, rbx
	test	rbx, rbx
	je	.label_824
	test	rbp, rbp
	je	.label_824
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], rbp
	mov	rsi, qword ptr [r12 + 0x40]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, r15d
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_709
.label_665:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	ebp, dword ptr [rsp + 0x50]
	cmp	ebp, 2
	je	.label_927
	cmp	ebp, 4
	jne	.label_689
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0x58]
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0xa8]
	mov	r9, rbx
	call	build_charclass
	mov	dword ptr [r12], eax
	test	eax, eax
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	je	.label_697
	jmp	.label_759
.label_689:
	mov	rax, qword ptr [rsp + 8]
	mov	al, byte ptr [rax + 8]
	cmp	al, 0x16
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_1045
	cmp	al, 2
	jne	.label_876
	jmp	.label_877
.label_1045:
	movsxd	rax, r13d
	add	qword ptr [rsi + 0x48], rax
	lea	rdi, [rsp + 0xb0]
	mov	rdx, rbx
	mov	r15, rsi
	call	peek_token_bracket
	mov	cl, byte ptr [rsp + 0xb8]
	cmp	cl, 0x15
	je	.label_1022
	cmp	cl, 2
	je	.label_1065
	mov	qword ptr [rsp + 0x48], r12
	lea	rcx, [rsp + 0x70]
	mov	qword ptr [rsp + 0xa0], rcx
	mov	dword ptr [rsp + 0x98], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0x98]
	mov	r15, qword ptr [rsp + 0x10]
	mov	rsi, r15
	lea	rdx, [rsp + 0xb0]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_661
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r15
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	r9, qword ptr [rsp + 0x18]
	cmp	dword ptr [r9 + 0xb4], 1
	mov	r12d, 0
	cmovg	r12, qword ptr [rsp + 0x30]
	mov	ecx, 0xb
	mov	r15d, dword ptr [rsp + 0x98]
	cmp	r15d, 2
	je	.label_663
	cmp	r15d, 4
	je	.label_663
	cmp	ebp, 3
	mov	r10, qword ptr [rsp + 8]
	jne	.label_776
	mov	rdi, qword ptr [rsp + 0x58]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_663
.label_776:
	cmp	r15d, 3
	jne	.label_924
	mov	rdi, qword ptr [rsp + 0xa0]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_663
.label_924:
	cmp	ebp, 3
	je	.label_931
	test	ebp, ebp
	jne	.label_921
	mov	al, byte ptr [rsp + 0x58]
	jmp	.label_1026
.label_1022:
	mov	eax, r13d
	neg	eax
	cdqe	
	add	qword ptr [r15 + 0x48], rax
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + 8], 1
	mov	r15, qword ptr [rsp + 0x30]
.label_876:
	mov	eax, ebp
	cmp	ebp, 3
	ja	.label_903
	jmp	qword ptr [(rax * 8) + label_945]
.label_2455:
	mov	cl, byte ptr [rsp + 0x58]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	jmp	.label_946
.label_927:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_958
.label_707:
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_946:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
.label_697:
	mov	al, byte ptr [r10 + 8]
	cmp	al, 0x15
	jne	.label_971
	movsxd	rax, r13d
	mov	rcx, qword ptr [rsp + 0x10]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	je	.label_975
	movdqu	xmm0, xmmword ptr [r14]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14], xmm0
	movdqu	xmm0, xmmword ptr [r14 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14 + 0x10], xmm0
.label_975:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_986
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r14], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r14 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r14 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r14 + 0x18], rcx
.label_986:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_828
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_828
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_828
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_828
	cmp	eax, 2
	jl	.label_1006
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_828
	test	byte ptr [r15 + 0x20], 1
	jne	.label_828
.label_1006:
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
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_965
	mov	rax, qword ptr [rsi + 0x70]
.label_832:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r14
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_897
.label_828:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_894
	mov	rax, qword ptr [r9 + 0x70]
.label_812:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + rcx + 0x30], rdx
	mov	dword ptr [rax + rcx + 0x38], 6
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r14], 0
	jne	.label_918
	cmp	qword ptr [r14 + 8], 0
	jne	.label_918
	cmp	qword ptr [r14 + 0x10], 0
	jne	.label_918
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_811
.label_918:
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_1077
	mov	rbp, qword ptr [r9 + 0x70]
	mov	r8, qword ptr [rsp + 0x10]
.label_864:
	lea	ecx, [rax + 1]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r14
	mov	dword ptr [rbp + rbx + 0x38], 3
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1088
	mov	rax, qword ptr [r9 + 0x70]
.label_899:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rdx], rbp
	mov	qword ptr [r15], rbp
	mov	rbx, qword ptr [rsp + 0x20]
.label_706:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	r15, rbp
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	eax, ebx
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, ebx
	and	eax, 0x200000
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x48], r12
	nop	word ptr cs:[rax + rax]
.label_1151:
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x17
	ja	.label_655
	mov	ecx, 0x8c0800
	bt	rcx, rax
	jae	.label_655
	mov	r14, qword ptr [r8 + 0x48]
	movdqu	xmm0, xmmword ptr [rdi]
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	cmp	eax, 0x17
	mov	qword ptr [rsp + 0x28], r15
	jne	.label_660
	mov	rsi, -1
	jmp	.label_667
	nop	word ptr cs:[rax + rax]
.label_660:
	xor	r13d, r13d
	cmp	eax, 0x12
	sete	r13b
	cmp	eax, 0x13
	mov	r15, -1
	mov	eax, 1
	cmove	r15, rax
.label_878:
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	test	r9, r9
	mov	ecx, 0
	je	.label_885
	mov	rax, r15
	mov	r11, r13
	or	rax, r11
	je	.label_1130
	test	r11, r11
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	rdi, qword ptr [rsp + 8]
	jg	.label_1165
.label_1192:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_1185
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	
.label_1173:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_1173
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1173
	nop	word ptr cs:[rax + rax]
.label_1186:
	mov	edx, dword ptr [rcx + 0x30]
	cmp	dl, 0x11
	jne	.label_1164
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_1164
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1164:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_1185
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_1186
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_1186
	jmp	.label_1173
	nop	word ptr cs:[rax + rax]
.label_1185:
	xor	ebx, ebx
	cmp	r15, -1
	sete	r14b
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1195
	mov	rax, qword ptr [rbp + 0x70]
.label_1172:
	mov	bl, r14b
	or	ebx, 0xa
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], ebx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1201
	mov	qword ptr [r12], r14
.label_1201:
	add	r11, 2
	cmp	r11, r15
	jg	.label_1214
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_1178
.label_797:
	lea	rax, [r13 + r13*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	esi, 0x8000
	cmovle	rsi, rax
	nop	dword ptr [rax + rax]
.label_667:
	mov	r13, rsi
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	edx, byte ptr [rdi]
	movzx	ecx, dl
	movzx	eax, byte ptr [rdi + 8]
	mov	bl, 0x18
	cmp	al, 0x18
	je	.label_777
	cmp	al, 2
	mov	r9, qword ptr [rsp + 0x28]
	je	.label_676
	mov	sil, 0x2c
	cmp	dl, 0x2c
	mov	ebx, eax
	je	.label_773
	cmp	dl, 0x30
	mov	rsi, -2
	mov	rbx, qword ptr [rsp + 0x20]
	jb	.label_667
	cmp	eax, 1
	jne	.label_667
	cmp	r13, -2
	je	.label_667
	cmp	dl, 0x39
	ja	.label_667
	cmp	r13, -1
	jne	.label_797
	add	rcx, -0x30
	mov	rsi, rcx
	jmp	.label_667
	nop	dword ptr [rax]
.label_777:
	mov	esi, edx
	mov	r9, qword ptr [rsp + 0x28]
.label_773:
	cmp	r13, -1
	jne	.label_834
	cmp	sil, 0x2c
	jne	.label_873
	cmp	eax, 1
	mov	r13d, 0
	je	.label_807
	jmp	.label_873
	nop	word ptr [rax + rax]
.label_834:
	cmp	r13, -2
	je	.label_676
.label_807:
	cmp	bl, 0x18
	je	.label_816
	cmp	bl, 1
	jne	.label_676
	cmp	sil, 0x2c
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_676
	mov	rdx, -1
	jmp	.label_715
.label_816:
	mov	r15, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_731
.label_868:
	lea	rax, [r15 + r15*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_715:
	mov	r15, rdx
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	ecx, byte ptr [rdi]
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x18
	je	.label_847
	cmp	al, 2
	je	.label_676
	cmp	cl, 0x2c
	je	.label_847
	cmp	cl, 0x30
	mov	rdx, -2
	jb	.label_715
	cmp	eax, 1
	jne	.label_715
	cmp	r15, -2
	je	.label_715
	cmp	cl, 0x39
	ja	.label_715
	cmp	r15, -1
	jne	.label_868
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_715
.label_847:
	cmp	r15, -2
	je	.label_676
.label_731:
	cmp	r15, -1
	sete	cl
	cmp	r13, r15
	setle	dl
	or	dl, cl
	cmp	dl, 1
	jne	.label_873
	cmp	eax, 0x18
	jne	.label_873
	cmp	r15, -1
	mov	rax, r15
	cmove	rax, r13
	cmp	rax, 0x8000
	jl	.label_878
	mov	dword ptr [r12], 0xf
	jmp	.label_687
	nop	dword ptr [rax]
.label_873:
	mov	dword ptr [r12], 0xa
	jmp	.label_687
.label_676:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_884
	mov	qword ptr [r8 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rdi], xmm0
	mov	byte ptr [rdi + 8], 1
	mov	rcx, r9
	jmp	.label_885
.label_1169:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1131
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_1132
.label_1138:
	mov	qword ptr [rsp + 0x40], r11
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_1147
.label_1174:
	mov	edi, 0x3c8
	mov	rbp, r11
	call	malloc
	mov	r11, rbp
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1136
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1155
.label_1131:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1158
.label_1149:
	mov	qword ptr [rbx], 0
	mov	r15, qword ptr [rsp + 0x30]
.label_1158:
	xor	r12d, r12d
.label_1147:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	je	.label_1136
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1219
	nop	dword ptr [rax + rax]
.label_1178:
	mov	r13, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1169
	mov	rax, qword ptr [rbp + 0x70]
.label_1132:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r15, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r15
	mov	rcx, r15
	mov	rbx, r10
	jmp	.label_1210
	nop	dword ptr [rax + rax]
.label_1150:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
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
	mov	qword ptr [rbx], rcx
.label_1210:
	mov	qword ptr [rcx], r13
	mov	rax, qword ptr [rbx]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r13, qword ptr [rbx]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1217
	lea	rbx, [r13 + 8]
	mov	r12, rax
	jmp	.label_1220
	nop	dword ptr [rax]
.label_1217:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1166:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1133
	test	r12, r12
	jne	.label_1137
.label_1133:
	mov	r12, qword ptr [rax]
	mov	r13, qword ptr [r13]
	test	r12, r12
	jne	.label_1166
	jmp	.label_1142
.label_1137:
	lea	rbx, [r13 + 0x10]
.label_1220:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1206
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1150
.label_1206:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1149
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_1150
.label_1142:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1138
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
.label_1219:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbx
	test	r12, r12
	je	.label_1136
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1174
	mov	rax, qword ptr [rbp + 0x70]
.label_1155:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r14
	cmp	r11, r15
	lea	r11, [r11 + 1]
	jl	.label_1178
.label_1214:
	mov	rbx, qword ptr [rsp + 0x38]
	test	rbx, rbx
	je	.label_1198
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_1199
	mov	rax, qword ptr [rbp + 0x70]
.label_1203:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	r14, rdx
	jmp	.label_1207
.label_1198:
	mov	r12, qword ptr [rsp + 0x48]
.label_1207:
	mov	rbx, qword ptr [rsp + 0x20]
	xor	eax, eax
	mov	rcx, r14
	jmp	.label_1167
.label_1130:
	mov	rax, r9
	nop	word ptr cs:[rax + rax]
.label_1129:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1129
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1129
.label_1154:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_1135
	cmp	eax, 6
	jne	.label_1139
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
	jmp	.label_1148
.label_1135:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1148:
	call	free
	mov	r9, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x10]
.label_1139:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_885
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_1154
	test	rax, rax
	mov	rbx, rdx
	je	.label_1154
	jmp	.label_1129
.label_1165:
	cmp	r11, 1
	mov	rax, r9
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	je	.label_1156
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	r14d, 2
	mov	rax, r9
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_1140
.label_1195:
	mov	edi, 0x3c8
	call	malloc
	mov	r11, r13
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1136
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1172
.label_1199:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ecx, 0
	je	.label_885
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_1203
.label_884:
	xor	ecx, ecx
	cmp	al, 2
	setne	cl
	add	ecx, 9
	mov	dword ptr [r12], ecx
	jmp	.label_687
.label_1141:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1202
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1204
.label_1211:
	mov	r12, rbx
	jmp	.label_1212
.label_1202:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1213
.label_1159:
	mov	qword ptr [r15], 0
.label_1213:
	xor	r12d, r12d
.label_1212:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	mov	r15, qword ptr [rsp + 0x30]
	je	.label_1136
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1134
.label_1140:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x40], rax
	je	.label_1141
	mov	rax, qword ptr [rbp + 0x70]
.label_1204:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
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
	mov	qword ptr [rsp + 0x70], rbx
	mov	rcx, rbx
	mov	r15, r10
	jmp	.label_1145
.label_1194:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
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
	mov	qword ptr [r15], rcx
.label_1145:
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	mov	qword ptr [rsp + 0x38], rcx
	je	.label_1168
	lea	r15, [rcx + 8]
	mov	r12, rax
	jmp	.label_1175
.label_1168:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
	nop	word ptr [rax + rax]
.label_1182:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1179
	test	r12, r12
	jne	.label_1181
.label_1179:
	mov	r12, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsp + 0x38], rcx
	test	r12, r12
	jne	.label_1182
	jmp	.label_1189
.label_1181:
	mov	rax, qword ptr [rsp + 0x38]
	lea	r15, [rax + 0x10]
.label_1175:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1191
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1194
.label_1191:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1159
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1194
.label_1189:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1211
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, rbx
.label_1134:
	mov	rbx, qword ptr [rsp + 0x40]
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1215
	mov	qword ptr [rbx], rdx
.label_1215:
	mov	qword ptr [rsp + 0x38], rdx
	test	r12, r12
	je	.label_1136
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12], rax
	cmp	r14, r11
	lea	r14, [r14 + 1]
	jl	.label_1140
.label_1156:
	cmp	r11, r15
	jne	.label_1144
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x48]
	jmp	.label_885
.label_1144:
	mov	r14, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x30], r15
	je	.label_1218
	mov	rax, qword ptr [rbp + 0x70]
.label_1216:
	lea	rdx, [r12 + 0x28]
	mov	rbx, r12
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
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
	mov	qword ptr [rsp + 0x70], r12
	mov	rcx, r12
	mov	r15, r10
	jmp	.label_1152
.label_1196:
	lea	rdx, [rbx + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
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
	mov	qword ptr [r15], rcx
.label_1152:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_1176
	lea	r15, [r14 + 8]
	mov	rbx, rax
	jmp	.label_1180
.label_1176:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
.label_1190:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_1184
	test	rbx, rbx
	jne	.label_1188
.label_1184:
	mov	rbx, qword ptr [rax]
	mov	r14, qword ptr [r14]
	test	rbx, rbx
	jne	.label_1190
	jmp	.label_1192
.label_1188:
	lea	r15, [r14 + 0x10]
.label_1180:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1193
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1196
.label_1193:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1200
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1196
.label_1218:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1162
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1216
.label_1162:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1146
.label_1200:
	mov	qword ptr [r15], 0
.label_1146:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x28]
.label_1136:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], 0xc
.label_687:
	xor	ecx, ecx
.label_885:
	test	rcx, rcx
	sete	al
	jne	.label_1143
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1167
	jmp	.label_1170
	nop	word ptr cs:[rax + rax]
.label_1143:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
.label_1167:
	cmp	qword ptr [rsp + 0x68], 0
	mov	r15, rcx
	je	.label_1151
	mov	dl, byte ptr [rdi + 8]
	cmp	dl, 0x17
	je	.label_1153
	cmp	dl, 0xb
	mov	r15, rcx
	jne	.label_1151
.label_1153:
	test	al, al
	jne	.label_1037
	mov	r14d, 0x400ff
	nop	dword ptr [rax + rax]
.label_1157:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1157
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1157
	nop	word ptr cs:[rax + rax]
.label_1177:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1160
	cmp	eax, 6
	jne	.label_1163
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
	jmp	.label_1171
	nop	dword ptr [rax]
.label_1160:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1171:
	call	free
.label_1163:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1037
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1177
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1177
	jmp	.label_1157
.label_1037:
	mov	dword ptr [r12], 0xd
.label_795:
	xor	r15d, r15d
.label_655:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_998:
	mov	dword ptr [r10], 5
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_1094
	mov	rax, qword ptr [rdi + 0x70]
.label_981:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 0xa
.label_1013:
	mov	dword ptr [r10], ecx
	mov	ebp, dword ptr [r15]
	cmp	ebp, 0xf
	je	.label_1111
	mov	rax, qword ptr [rdi + 0x70]
.label_910:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_708:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_650
	mov	rax, qword ptr [rdi + 0x70]
.label_916:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r14, r14
	je	.label_654
	mov	qword ptr [r14], r15
.label_654:
	test	rbp, rbp
	je	.label_668
	mov	qword ptr [rbp], r15
	test	r14, r14
	jne	.label_928
	jmp	.label_668
.label_1001:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_677
	mov	rax, qword ptr [rdi + 0x70]
.label_996:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_928:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbx, r8
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_655
.label_763:
	mov	rbp, r14
	jmp	.label_706
.label_1170:
	xor	r15d, r15d
	test	r9, r9
	je	.label_655
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1161:
	mov	rbx, r9
	mov	r9, qword ptr [rbx + 8]
	test	r9, r9
	jne	.label_1161
	mov	r9, qword ptr [rbx + 0x10]
	test	r9, r9
	jne	.label_1161
.label_1205:
	mov	eax, dword ptr [rbx + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1183
	cmp	eax, 6
	jne	.label_1187
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
	jmp	.label_1197
.label_1183:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1197:
	call	free
.label_1187:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_655
	mov	r9, qword ptr [rax + 0x10]
	cmp	r9, rbx
	mov	rbx, rax
	je	.label_1205
	test	r9, r9
	mov	rbx, rax
	je	.label_1205
	jmp	.label_1161
.label_811:
	mov	rdi, r14
	call	free
	mov	r10, qword ptr [rsp + 8]
	mov	rbp, r15
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_706
.label_908:
	mov	dword ptr [r12], eax
	jmp	.label_759
.label_673:
	mov	dword ptr [r12], 7
	jmp	.label_759
.label_1050:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_668
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1120
.label_1099:
	mov	dword ptr [r12], 2
	jmp	.label_759
.label_732:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_668
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_785
.label_867:
	mov	dword ptr [r12], 6
	jmp	.label_795
.label_893:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_668
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_801
.label_1085:
	mov	rdi, r14
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_668
.label_874:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_668
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_830
.label_894:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_734
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_812
.label_1077:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_734
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_864
.label_1088:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_734
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_899
.label_958:
	mov	dword ptr [r12], 3
	jmp	.label_759
.label_949:
	mov	rbp, rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_668
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, rbp
	jmp	.label_890
.label_1111:
	mov	edi, 0x3c8
	call	malloc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	xor	ebp, ebp
	test	rax, rax
	je	.label_708
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_910
.label_650:
	mov	edi, 0x3c8
	call	malloc
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_668
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_916
.label_877:
	mov	dword ptr [r12], 7
	jmp	.label_759
.label_980:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rax]
	inc	r14
.label_952:
	mov	rsi, r14
	xor	eax, eax
.label_948:
	test	byte ptr [r9 + rsi*2 - 2], 8
	je	.label_933
	mov	edx, 1
	mov	ecx, eax
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_933:
	cmp	esi, 0x5f
	je	.label_959
	movzx	ecx, word ptr [r9 + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_769
.label_959:
	lea	ecx, [rax + 1]
	mov	edx, 1
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_769:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_948
	inc	rbp
	add	r14, 0x40
	cmp	ebp, 4
	jne	.label_952
	jmp	.label_955
.label_863:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	r14d, r14d
	test	rax, rax
	je	.label_799
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_962
.label_1094:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	r14d, r14d
	test	rax, rax
	je	.label_799
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_981
.label_677:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_668
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_996
.label_668:
	mov	dword ptr [r12], 0xc
	jmp	.label_795
.label_1065:
	mov	dword ptr [r12], 7
	jmp	.label_772
.label_799:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_1013
.label_936:
	mov	rax, rdi
	test	rdi, rdi
	je	.label_1028
	mov	r14d, 0x400ff
	mov	rcx, rax
.label_1030:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1030
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1030
.label_1052:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1035
	cmp	eax, 6
	jne	.label_1038
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
	jmp	.label_1078
.label_1035:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1078:
	call	free
.label_1038:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1028
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1052
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1052
	jmp	.label_1030
.label_1028:
	mov	dword ptr [r12], 8
	jmp	.label_795
.label_661:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], eax
	jmp	.label_772
.label_710:
	mov	dword ptr [r12], 3
	jmp	.label_759
.label_965:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_734
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_832
.label_734:
	mov	dword ptr [r12], 0xc
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_772
.label_903:
	mov	edi, OFFSET FLAT:label_1081
	mov	esi, OFFSET FLAT:label_1082
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_1083
	call	__assert_fail
.label_824:
	call	free
	mov	rdi, rbp
	call	free
	mov	ecx, 0xc
	mov	rbx, qword ptr [rsp + 0x20]
.label_663:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], ecx
.label_772:
	mov	r15, qword ptr [rsp + 0x30]
.label_759:
	mov	rdi, r14
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
	xor	ebp, ebp
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	jmp	.label_1107
	.section	.text
	.align	16
	#Procedure 0x40f7a0

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
	mov	dword ptr [rsp + 4], r8d
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
	je	.label_1491
	mov	qword ptr [rsp + 8], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1496
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 4]
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
	jne	.label_1484
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1486
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1489:
	movsx	rcx, al
	mov	eax, 1
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x3a
	add	rdx, rcx
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_1489
.label_1486:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_1497
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1497:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1482
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_1482:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_1490
	mov	rax, qword ptr [r12 + 0x70]
.label_1483:
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
	jl	.label_1493
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1487
	mov	rbp, qword ptr [r12 + 0x70]
.label_1494:
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
	je	.label_1492
	mov	rcx, qword ptr [r12 + 0x70]
.label_1495:
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
	jmp	.label_1485
.label_1493:
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
.label_1485:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1491:
	mov	dword ptr [r15], 0xc
	jmp	.label_1480
.label_1496:
	mov	rdi, rbx
	jmp	.label_1488
.label_1484:
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
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], r14d
	jmp	.label_1480
.label_1490:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1481
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1483
.label_1487:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1481
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_1494
.label_1481:
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
.label_1488:
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1480:
	xor	eax, eax
	jmp	.label_1485
.label_1492:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1485
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_1495
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fb80

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1498
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1502
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1502
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_1501
.label_1502:
	test	dl, 1
	je	.label_1505
	cmp	al, 0x5c
	jne	.label_1505
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1505
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_1501
.label_1498:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1505:
	cmp	al, 0x5c
	jg	.label_1508
	cmp	al, 0x2d
	je	.label_1504
	cmp	al, 0x5b
	jne	.label_1501
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1506
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	al, 0x3d
	je	.label_1500
	cmp	al, 0x3a
	je	.label_1499
	cmp	al, 0x2e
	jne	.label_1507
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1508:
	cmp	al, 0x5d
	je	.label_1503
	cmp	al, 0x5e
	jne	.label_1501
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1501:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1504:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1503:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1506:
	mov	byte ptr [rdi], 0
.label_1507:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1500:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1499:
	test	dl, 4
	je	.label_1507
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40fc70

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdx
	mov	r14, rdi
	mov	r11, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1509
	lea	rax, [r11 + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_1509
	mov	r10, qword ptr [rsi + 0x10]
	lea	rax, [r10 + r11*4]
	mov	edi, 1
	nop	word ptr cs:[rax + rax]
.label_1512:
	cmp	dword ptr [rax + rdi*4], -1
	jne	.label_1510
	lea	rdx, [r11 + rdi + 1]
	inc	rdi
	cmp	rdx, rbx
	jl	.label_1512
.label_1510:
	cmp	edi, 2
	jl	.label_1509
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + r11*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, r11
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1513
.label_1509:
	movsxd	rax, ecx
	add	r11, rax
	mov	qword ptr [rsi + 0x48], r11
	movzx	edi, byte ptr [r15 + 8]
	mov	eax, edi
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_1051
	jmp	qword ptr [(rax * 8) + label_1511]
.label_2647:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], r11
	jle	.label_1055
	mov	r11b, byte ptr [r15]
	xor	ecx, ecx
	jmp	.label_1426
	nop	word ptr cs:[rax + rax]
.label_1420:
	inc	rcx
	movzx	edi, byte ptr [r15 + 8]
.label_1426:
	cmp	dil, 0x1e
	jne	.label_1444
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1438
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1437
	nop	dword ptr [rax]
.label_1444:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_1430:
	mov	bl, byte ptr [rbx + rdx]
.label_1437:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1055
	cmp	bl, r11b
	jne	.label_1449
	mov	rdx, qword ptr [rsi + 8]
	cmp	byte ptr [rdx + rdi], 0x5d
	je	.label_1412
.label_1449:
	mov	rdx, qword ptr [r14 + 8]
	mov	byte ptr [rdx + rcx], bl
	cmp	rcx, 0x1e
	jle	.label_1420
	jmp	.label_1055
.label_1438:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_1442
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_1451
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_1417
.label_1451:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1417
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1423
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_1423
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_1415:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1423
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_1415
.label_1423:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_1437
.label_1442:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_1430
.label_1417:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1437
.label_1412:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	cl, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	cl, 0x1e
	je	.label_1446
	cmp	cl, 0x1c
	je	.label_1448
	cmp	cl, 0x1a
	jne	.label_1055
	mov	dword ptr [r14], 3
	jmp	.label_1055
.label_1446:
	mov	dword ptr [r14], 4
	jmp	.label_1055
.label_1448:
	mov	dword ptr [r14], 2
	jmp	.label_1055
.label_2646:
	test	r9b, r9b
	jne	.label_1051
	lea	rdi, [rsp]
	mov	rdx, r8
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 8], 0x15
	jne	.label_1055
.label_1051:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1513:
	xor	eax, eax
.label_1055:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fed0

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
	je	.label_1548
	mov	esi, OFFSET FLAT:label_1582
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1552
	mov	esi, OFFSET FLAT:label_1554
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1548
.label_1552:
	mov	r12d, OFFSET FLAT:label_1556
.label_1548:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1557
.label_1523:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_699
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1596
	mov	esi, OFFSET FLAT:label_1567
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1517
	mov	esi, OFFSET FLAT:label_1554
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1571
	mov	esi, OFFSET FLAT:label_705
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1576
	mov	esi, OFFSET FLAT:label_1556
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1580
	mov	esi, OFFSET FLAT:label_1581
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1585
	mov	esi, OFFSET FLAT:label_1588
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1591
	mov	esi, OFFSET FLAT:label_1582
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1593
	mov	esi, OFFSET FLAT:label_1575
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1598
.label_2520:
	mov	esi, OFFSET FLAT:label_1515
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1516
	mov	esi, OFFSET FLAT:label_1519
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1522
	mov	esi, OFFSET FLAT:label_1524
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_1520
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1528
	xor	ecx, ecx
.label_1537:
	test	byte ptr [rdx + rcx*2 + 1], 0x10
	je	.label_1531
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1531:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1537
	jmp	.label_1520
.label_1596:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1541
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1549:
	test	byte ptr [rdx + rcx*2], 8
	je	.label_1543
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1543:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1549
	jmp	.label_1520
.label_1517:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1551
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1560:
	test	byte ptr [rdx + rcx*2], 2
	je	.label_1514
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1514:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1560
	jmp	.label_1520
.label_1571:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1563
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1569:
	test	byte ptr [rdx + rcx*2 + 1], 2
	je	.label_1564
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1564:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1569
	jmp	.label_1520
.label_1576:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1574
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1589:
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_1586
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1586:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1589
	jmp	.label_1520
.label_1580:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1592
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1518:
	test	byte ptr [rdx + rcx*2 + 1], 4
	je	.label_1597
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1597:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1518
	jmp	.label_1520
.label_1585:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1525
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1532:
	test	byte ptr [rdx + rcx*2 + 1], 8
	je	.label_1579
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1579:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1532
	jmp	.label_1520
.label_1591:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1536
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1544:
	test	byte ptr [rdx + rcx*2 + 1], 0x40
	je	.label_1540
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1540:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1544
	jmp	.label_1520
.label_1593:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1546
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1555:
	test	byte ptr [rdx + rcx*2 + 1], 1
	je	.label_1550
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1550:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1555
	jmp	.label_1520
.label_1598:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1558
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1566:
	test	byte ptr [rdx + rcx*2], 1
	je	.label_1561
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1561:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1566
	jmp	.label_1520
.label_1516:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1568
	xor	ecx, ecx
.label_1578:
	cmp	word ptr [rdx + rcx*2], 0
	jns	.label_1570
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1570:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1578
	jmp	.label_1520
.label_1522:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1583
	xor	ecx, ecx
.label_1594:
	test	byte ptr [rdx + rcx*2], 4
	je	.label_1587
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1587:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1594
.label_1520:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1557:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1520
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_1523
.label_1541:
	xor	esi, esi
.label_1530:
	test	byte ptr [rdx + rsi*2], 8
	je	.label_1527
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1527:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1530
	jmp	.label_1520
.label_1551:
	xor	esi, esi
.label_1539:
	test	byte ptr [rdx + rsi*2], 2
	je	.label_1534
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1534:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1539
	jmp	.label_1520
.label_1563:
	xor	esi, esi
.label_1545:
	test	byte ptr [rdx + rsi*2 + 1], 2
	je	.label_1542
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1542:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1545
	jmp	.label_1520
.label_1574:
	xor	esi, esi
.label_1573:
	test	byte ptr [rdx + rsi*2 + 1], 0x20
	je	.label_1547
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1547:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1573
	jmp	.label_1520
.label_1592:
	xor	esi, esi
.label_1559:
	test	byte ptr [rdx + rsi*2 + 1], 4
	je	.label_1553
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1553:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1559
	jmp	.label_1520
.label_1525:
	xor	esi, esi
.label_1565:
	test	byte ptr [rdx + rsi*2 + 1], 8
	je	.label_1562
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1562:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1565
	jmp	.label_1520
.label_1536:
	xor	esi, esi
.label_1572:
	test	byte ptr [rdx + rsi*2 + 1], 0x40
	je	.label_1535
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1535:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1572
	jmp	.label_1520
.label_1546:
	xor	esi, esi
.label_1584:
	test	byte ptr [rdx + rsi*2 + 1], 1
	je	.label_1577
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1577:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1584
	jmp	.label_1520
.label_1558:
	xor	esi, esi
.label_1595:
	test	byte ptr [rdx + rsi*2], 1
	je	.label_1590
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1590:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1595
	jmp	.label_1520
.label_1568:
	xor	esi, esi
.label_1521:
	cmp	word ptr [rdx + rsi*2], 0
	jns	.label_1599
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1599:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1521
	jmp	.label_1520
.label_1583:
	xor	esi, esi
.label_1529:
	test	byte ptr [rdx + rsi*2], 4
	je	.label_1526
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1526:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1529
	jmp	.label_1520
.label_1528:
	xor	esi, esi
.label_1538:
	test	byte ptr [rdx + rsi*2 + 1], 0x10
	je	.label_1533
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1533:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1538
	jmp	.label_1520
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4106a0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	mov	al, byte ptr [rsi + 0x30]
	cmp	al, 0x11
	je	.label_1600
	cmp	al, 4
	jne	.label_1602
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_1602
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_1600:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1602
	cmp	byte ptr [rax + 0x30], 0x11
	jne	.label_1602
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_1601
	mov	qword ptr [rdx], rsi
.label_1601:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_1602
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_1602:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410730

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	mov	edx, dword ptr [rsi + 0x30]
	mov	eax, edx
	add	al, 0xfe
	movzx	ebx, al
	cmp	bl, 0xe
	ja	.label_1607
	xor	eax, eax
	jmp	qword ptr [(rbx * 8) + label_1609]
.label_2572:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0, xmmword ptr [rip + label_272]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1610
	mov	qword ptr [rax], r15
	jmp	.label_1421
.label_2573:
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
	js	.label_1608
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_1605
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1431
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_1611
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_1421
.label_2570:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_1431
	mov	edi, OFFSET FLAT:label_1436
	mov	esi, OFFSET FLAT:label_1082
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:label_1428
	call	__assert_fail
.label_2571:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_1421
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0, xmmword ptr [rip + label_272]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_1432
	mov	qword ptr [rax], rbx
	jmp	.label_1421
.label_1607:
	test	dl, 8
	jne	.label_1424
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1421
.label_1611:
	mov	qword ptr [rax], 2
	jge	.label_1603
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_1421
.label_1603:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1421:
	xor	eax, eax
.label_1431:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1610:
	lea	rax, [r14 + rbx*8]
.label_1450:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1431
.label_1432:
	lea	rax, [r14 + r15*8]
	jmp	.label_1450
.label_1608:
	mov	edi, OFFSET FLAT:label_1606
	mov	esi, OFFSET FLAT:label_1082
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:label_1428
	call	__assert_fail
.label_1605:
	mov	edi, OFFSET FLAT:label_1604
	mov	esi, OFFSET FLAT:label_1082
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:label_1428
	call	__assert_fail
.label_1424:
	mov	edi, OFFSET FLAT:label_1427
	mov	esi, OFFSET FLAT:label_1082
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_1428
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410940

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
	je	.label_1612
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1612
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1622
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_1622
.label_1612:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_1613
	mov	rax, qword ptr [rbx + 0x70]
.label_1627:
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
.label_1625:
	mov	qword ptr [rsp], rbp
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_1614
	mov	rax, qword ptr [rbx + 0x70]
.label_1624:
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
.label_1621:
	test	r13, r13
	mov	rbp, r15
	je	.label_1615
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1626
	mov	rax, qword ptr [rbx + 0x70]
.label_1616:
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
	je	.label_1615
	mov	qword ptr [r15], rbp
.label_1615:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1619
	mov	rax, qword ptr [rbx + 0x70]
.label_1620:
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
	je	.label_1623
	mov	qword ptr [r12], r13
.label_1623:
	test	rbp, rbp
	je	.label_1618
	mov	qword ptr [rbp], r13
.label_1618:
	test	r15, r15
	je	.label_1617
	test	r12, r12
	je	.label_1617
	test	rbp, rbp
	je	.label_1617
	test	r13, r13
	je	.label_1617
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
.label_1622:
	mov	rax, r13
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1613:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_1625
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1627
.label_1614:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_1621
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1624
.label_1619:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_1618
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1620
.label_1617:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_1622
.label_1626:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1615
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1616
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410c40

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
	jae	.label_1628
.label_1629:
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
	jne	.label_1633
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1631
.label_1633:
	cmp	eax, 6
	sete	cl
.label_1631:
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
.label_1630:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1628:
	lea	rcx, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_1630
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1630
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [r13 + r13*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_1632
	test	rax, rax
	je	.label_1632
	test	r13, r13
	je	.label_1632
	test	rbp, rbp
	je	.label_1632
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_1629
.label_1632:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_1630
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410e10

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
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1635
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
	je	.label_1642
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_1642
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1642
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1635
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_1642:
	test	al, 8
	mov	qword ptr [rsp + 0x28], r12
	je	.label_1639
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1639
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1637:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_1636
	test	rcx, rcx
	jne	.label_1641
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1644
	jmp	.label_1635
	nop	word ptr [rax + rax]
.label_1641:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_1644:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1635
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1643
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_1636:
	mov	r15b, 1
.label_1643:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_1637
	jmp	.label_1640
.label_1639:
	xor	r15d, r15d
.label_1640:
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x28]
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_1635
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1634
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1634
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1638
.label_1634:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1638:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1635:
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
	.align	16
	#Procedure 0x411020

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
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rdx
	mov	r14, rsi
	mov	r12, rdi
.label_1652:
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0xc], eax
	mov	r15, r14
	mov	dword ptr [rsp + 0x1c], r13d
	nop	word ptr cs:[rax + rax]
.label_1650:
	mov	rax, qword ptr [r12]
	mov	rdx, r15
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 4
	jne	.label_1657
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r14, [rbp + rbp*2]
	mov	qword ptr [rdx + r14*8 + 8], 0
	mov	rbx, r13
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rdi, rbp
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1648
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r13
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rdi*8], rcx
	mov	rax, qword ptr [r12 + 0x28]
	lea	rdi, [rax + r14*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x1c]
	jne	.label_1650
	jmp	.label_1648
	nop	dword ptr [rax + rax]
.label_1657:
	mov	r8, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rsi, qword ptr [r8 + rcx*8 + 8]
	test	rsi, rsi
	je	.label_1646
	mov	rdi, qword ptr [r8 + rcx*8 + 0x10]
	mov	r14, qword ptr [rdi]
	lea	rdi, [rbp + rbp*2]
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [r8 + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_1655
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_1649
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebx, dword ptr [rax + rdx + 8]
	mov	edx, ebx
	and	edx, 0x40000
	je	.label_1649
	mov	rdx, qword ptr [r12 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	word ptr cs:[rax + rax]
.label_1656:
	cmp	qword ptr [rdx + rsi*8], r14
	jne	.label_1653
	shr	ebx, 8
	and	ebx, 0x3ff
	cmp	ebx, r13d
	je	.label_1654
.label_1653:
	dec	rsi
	test	rsi, rsi
	jle	.label_1649
	mov	ebx, dword ptr [rdi]
	mov	ebp, ebx
	and	ebp, 0x40000
	add	rdi, -0x10
	test	ebp, ebp
	jne	.label_1656
	jmp	.label_1649
.label_1654:
	cmp	rsi, -1
	je	.label_1649
	mov	r15, rcx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1651
	jmp	.label_1648
	nop	dword ptr [rax]
.label_1649:
	mov	r15, rcx
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1648
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	je	.label_1648
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1648
.label_1651:
	mov	rax, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rcx + r15*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1648
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r15
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	jne	.label_1650
	jmp	.label_1648
	nop	
.label_1655:
	cmp	r15, qword ptr [rsp + 0x20]
	jne	.label_1645
	cmp	rbp, r15
	jne	.label_1647
.label_1645:
	lea	rcx, [rax + rdx + 8]
	mov	ebp, dword ptr [rcx]
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	r15, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	r15, -1
	je	.label_1648
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	mov	rax, qword ptr [r12]
	mov	rcx, r15
	shl	rcx, 4
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	esi, dword ptr [rax + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	dword ptr [rax + rcx + 8], esi
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + r15*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	mov	rbp, r15
	jne	.label_1652
	jmp	.label_1648
.label_1646:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbp*8], rcx
.label_1658:
	mov	dword ptr [rsp + 8], 0
.label_1648:
	mov	eax, dword ptr [rsp + 8]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1647:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	mov	rsi, r14
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1658
	jmp	.label_1648
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411490

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_1663
	mov	rax, qword ptr [r14 + 8]
	test	rax, rax
	je	.label_1663
	mov	rbx, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_1670
	add	rbx, rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1665
	add	rbx, rbx
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
.label_1670:
	test	rcx, rcx
	je	.label_1666
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1659
	mov	rdx, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	jmp	.label_1660
.label_1669:
	dec	rax
.label_1671:
	dec	rcx
	jmp	.label_1668
	nop	word ptr [rax + rax]
.label_1660:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1669
	jge	.label_1671
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_1668:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1660
.label_1659:
	test	rax, rax
	js	.label_1662
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1662:
	mov	r9, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_1663
	lea	rax, [rsi + r9]
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
.label_1667:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_1672:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_1664
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_1672
	jmp	.label_1663
	nop	word ptr cs:[rax + rax]
.label_1664:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_1667
	lea	rsi, [rdi + r12*8]
.label_1661:
	call	memcpy
.label_1663:
	xor	eax, eax
.label_1665:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1666:
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [r14 + 8]
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rdx, 3
	jmp	.label_1661
	nop	
	.section	.text
	.align	16
	#Procedure 0x411620

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
	je	.label_1680
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1683
	cmp	rsi, rcx
	jne	.label_1685
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1676
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1678
.label_1680:
	movaps	xmm0, xmmword ptr [rip + label_272]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1686
	mov	qword ptr [rax], rbx
	jmp	.label_1679
.label_1683:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_1675
.label_1685:
	mov	rax, qword ptr [r14 + 0x10]
.label_1678:
	cmp	qword ptr [rax], rbx
	jle	.label_1677
	test	rcx, rcx
	jle	.label_1673
	nop	word ptr cs:[rax + rax]
.label_1682:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_1682
	jmp	.label_1673
.label_1677:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_1674
	nop	dword ptr [rax]
.label_1681:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1674:
	cmp	rdx, rbx
	jg	.label_1681
.label_1673:
	mov	qword ptr [rax + rcx*8], rbx
.label_1675:
	inc	qword ptr [r14 + 8]
.label_1679:
	mov	al, 1
.label_1684:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1686:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
.label_1676:
	xor	eax, eax
	jmp	.label_1684
	nop	
	.section	.text
	.align	16
	#Procedure 0x411700

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
	mov	r12d, ecx
	mov	r13, rsi
	mov	r15, rdi
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_1687
	mov	r14d, r12d
	add	r14, r8
	test	r8, r8
	jle	.label_1693
	mov	rcx, qword ptr [rdx + 0x10]
	xor	r9d, r9d
	cmp	r8, 4
	jb	.label_1694
	mov	r9, r8
	and	r9, 0xfffffffffffffffc
	je	.label_1698
	movq	xmm0, r14
	lea	rbp, [r9 - 4]
	mov	rax, rbp
	shr	rax, 2
	lea	esi, [rax + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_1702
	pxor	xmm1, xmm1
	jmp	.label_1709
.label_1687:
	mov	dword ptr [r15], 0
.label_1723:
	xor	ebp, ebp
	jmp	.label_1719
.label_1698:
	xor	r9d, r9d
	jmp	.label_1694
.label_1702:
	lea	rbp, [rsi - 1]
	sub	rbp, rax
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1718:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rcx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rcx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_1718
.label_1709:
	test	rsi, rsi
	je	.label_1727
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_1691:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_1691
.label_1727:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r14, xmm1
	cmp	r8, r9
	je	.label_1693
.label_1694:
	mov	rsi, r8
	sub	rsi, r9
	lea	rcx, [rcx + r9*8]
	nop	dword ptr [rax + rax]
.label_1704:
	add	r14, qword ptr [rcx]
	add	rcx, 8
	dec	rsi
	jne	.label_1704
.label_1693:
	mov	rax, qword ptr [r13 + 0x40]
	mov	rcx, qword ptr [r13 + 0x88]
	and	rcx, r14
	lea	rcx, [rcx + rcx*2]
	mov	r10, qword ptr [rax + rcx*8]
	test	r10, r10
	jle	.label_1705
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	xor	esi, esi
	nop	
.label_1714:
	mov	rbp, qword ptr [r9 + rsi*8]
	cmp	qword ptr [rbp], r14
	jne	.label_1712
	movzx	eax, byte ptr [rbp + 0x68]
	and	eax, 0xf
	cmp	eax, r12d
	jne	.label_1712
	test	rdx, rdx
	je	.label_1712
	mov	rdi, qword ptr [rbp + 0x50]
	test	rdi, rdi
	je	.label_1712
	cmp	qword ptr [rdi + 8], r8
	jne	.label_1712
	mov	rax, r8
	nop	dword ptr [rax]
.label_1721:
	test	rax, rax
	jle	.label_1719
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbx, qword ptr [rcx + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	cmp	rbx, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_1721
	nop	word ptr cs:[rax + rax]
.label_1712:
	inc	rsi
	cmp	rsi, r10
	jl	.label_1714
.label_1705:
	mov	qword ptr [rsp + 8], rdx
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r9, rax
	test	r9, r9
	je	.label_1725
	mov	qword ptr [rsp + 0x20], r13
	mov	rax, r9
	add	rax, 8
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsi + 8]
	mov	qword ptr [r9 + 0x10], rdi
	mov	rbp, qword ptr [rsi + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 0x18], r15
	jle	.label_1689
	mov	r13, rax
	mov	qword ptr [r9 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rdi + 0x18], rax
	test	rax, rax
	je	.label_1699
	mov	rbx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	r9, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, r13
	jmp	.label_1710
.label_1689:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, rax
.label_1710:
	mov	al, byte ptr [r9 + 0x68]
	mov	edx, r12d
	mov	ecx, r12d
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r9 + 0x68], al
	mov	qword ptr [r9 + 0x50], r15
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1716
	mov	ebp, edx
	and	ebp, 1
	mov	eax, edx
	and	eax, 2
	mov	dword ptr [rsp + 0x2c], eax
	and	edx, 4
	mov	dword ptr [rsp + 0x28], edx
	xor	r12d, r12d
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x30], r15
	nop	dword ptr [rax]
.label_1713:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r13d, edx
	shr	r13d, 8
	mov	ecx, r13d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_1724
	test	ecx, ecx
	je	.label_1692
.label_1724:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r9 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r9 + 0x68], bl
	cmp	dl, 4
	je	.label_1708
	cmp	dl, 2
	jne	.label_1696
	or	bl, 0x10
	jmp	.label_1697
.label_1708:
	or	bl, 0x40
.label_1697:
	mov	byte ptr [r9 + 0x68], bl
.label_1696:
	test	ecx, ecx
	je	.label_1701
	cmp	qword ptr [r9 + 0x50], r15
	jne	.label_1703
	mov	edi, 0x18
	call	malloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rbx, rax
	mov	qword ptr [r9 + 0x50], rbx
	test	rbx, rbx
	je	.label_1706
	mov	rax, qword ptr [rsp + 8]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], r15
	test	r15, r15
	jle	.label_1711
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1715
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_1720
.label_1701:
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_1692
.label_1711:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_1720:
	mov	r15, qword ptr [rsp + 0x30]
	or	byte ptr [r9 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x20]
.label_1703:
	test	ebp, ebp
	mov	rsi, qword ptr [rsp + 8]
	jne	.label_1726
	mov	eax, r13d
	and	eax, 1
	jne	.label_1690
.label_1726:
	test	ebp, ebp
	je	.label_1728
	mov	eax, r13d
	and	eax, 2
	jne	.label_1690
.label_1728:
	cmp	dword ptr [rsp + 0x2c], 0
	jne	.label_1688
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_1690
.label_1688:
	cmp	dword ptr [rsp + 0x28], 0
	jne	.label_1692
	and	r13d, 0x40
	je	.label_1692
	nop	word ptr cs:[rax + rax]
.label_1690:
	mov	rax, r12
	sub	rax, r8
	js	.label_1695
	mov	rcx, qword ptr [r9 + 0x10]
	cmp	rcx, rax
	jle	.label_1695
	dec	rcx
	mov	qword ptr [r9 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1695
	lea	rax, [r12*8]
	add	rax, qword ptr [r9 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	
.label_1707:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r9 + 0x10]
	jl	.label_1707
	nop	word ptr [rax + rax]
.label_1695:
	inc	r8
.label_1692:
	inc	r12
	cmp	r12, qword ptr [rsi + 8]
	jl	.label_1713
.label_1716:
	mov	rsi, r9
	mov	rdx, r14
	call	register_state
	mov	rbp, qword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_1717
.label_1719:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1706:
	mov	rdi, r9
	jmp	.label_1700
.label_1715:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	jmp	.label_1722
.label_1717:
	mov	rdi, rbp
.label_1700:
	call	free_state
.label_1722:
	mov	r15, qword ptr [rsp + 0x18]
.label_1725:
	mov	dword ptr [r15], 0xc
	jmp	.label_1723
.label_1699:
	call	free
	jmp	.label_1725
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411bf0

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
	je	.label_1731
	test	r13, r13
	jle	.label_1733
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1730:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1729
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_1735
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1734
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_1735:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1729:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1730
.label_1733:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_1732
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1736:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
.label_1731:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1734:
	mov	ecx, 0xc
	jmp	.label_1731
.label_1732:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1731
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_1736
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411d30

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
	mov	r12, rsi
	mov	rbx, rdi
	lea	r13, [rbx + 0x28]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r12
	jle	.label_1756
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1768
	mov	qword ptr [rbx + 0x20], 0
.label_1768:
	mov	rax, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r14, r12
	jne	.label_1774
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r12
.label_1774:
	test	r14, r14
	je	.label_1751
	mov	rbp, qword ptr [rbx + 0x38]
	cmp	r14, rbp
	jge	.label_1776
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1792
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1775
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_1775:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1742
.label_1788:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1741:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1751
	add	qword ptr [rbx + 8], r14
.label_1751:
	mov	qword ptr [rbx + 0x28], r12
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1754
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1765
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1769
	jmp	.label_1770
.label_1754:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1761
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_1770
.label_1765:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1770:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1769:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1756:
	mov	r14, r12
	sub	r14, rax
	jmp	.label_1774
.label_1776:
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	movzx	r8d, word ptr [rbx + 0x8c]
	test	r8b, r8b
	jne	.label_1787
.label_1782:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rdi, dword ptr [rbx + 0x90]
	cmp	rdi, 2
	jl	.label_1789
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1793
	mov	r10, qword ptr [rbx]
	lea	rdx, [r10 + rax]
	mov	rsi, r14
	sub	rsi, rdi
	add	rsi, rdx
	cmp	rsi, r10
	cmovb	rsi, r10
	lea	r8, [rdx + r14]
	add	r10, r14
.label_1762:
	lea	rdi, [r10 + rax - 1]
	cmp	rdi, rsi
	jb	.label_1793
	movzx	ecx, byte ptr [rax + r10 - 1]
	and	cl, 0xc0
	dec	r10
	cmp	cl, 0x80
	je	.label_1762
	mov	qword ptr [rsp], r8
	add	rdx, qword ptr [rbx + 0x58]
	lea	rbp, [r10 + rax]
	sub	rdx, rbp
	mov	rdi, qword ptr [rbx + 0x78]
	test	rdi, rdi
	mov	rsi, rbp
	jne	.label_1747
.label_1753:
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 8]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_1766
	cmp	rax, -3
	ja	.label_1766
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x14]
.label_1766:
	mov	edx, esi
	cmp	edx, -1
	jne	.label_1796
	mov	rax, qword ptr [rbx + 0x28]
	mov	rbp, qword ptr [rbx + 0x38]
.label_1793:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jge	.label_1784
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp], rax
	jmp	.label_1749
.label_1792:
	mov	r8, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	xor	ecx, ecx
	mov	qword ptr [rsp], rdx
.label_1795:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [r8 + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_1790
	jge	.label_1794
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_1790:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_1795
.label_1794:
	xor	ecx, ecx
	cmp	rsi, r14
	setl	cl
	lea	rbp, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	mov	edx, r15d
	mov	r15, r8
	call	re_string_context_at
	mov	rsi, r15
	mov	dword ptr [rbx + 0x70], eax
	mov	rdi, qword ptr [rsp]
	mov	rdx, rdi
	sub	rdx, r14
	jle	.label_1740
	cmp	rbp, r14
	jne	.label_1740
	cmp	qword ptr [rsi + r14*8], r14
	jne	.label_1740
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
	jle	.label_1741
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
.label_1750:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1750
	jmp	.label_1741
.label_1742:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_1788
.label_1740:
	mov	rax, r14
	sub	rax, r12
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_1755:
	mov	rax, rbp
	test	rax, rax
	jle	.label_1780
	lea	rbp, [rax - 1]
	cmp	qword ptr [rsi + rax*8 - 8], r14
	je	.label_1755
.label_1780:
	cmp	rax, rdi
	jge	.label_1779
	mov	rcx, qword ptr [rbx + 0x10]
.label_1798:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1779
	inc	rax
	cmp	rax, rdi
	jl	.label_1798
.label_1779:
	cmp	rax, rdi
	jne	.label_1737
	mov	qword ptr [rbx + 0x30], 0
	xor	eax, eax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1741
.label_1761:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1748
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jl	.label_1752
	jmp	.label_1758
.label_1778:
	mov	r12, qword ptr [r13]
.label_1752:
	inc	r15
	add	r12, qword ptr [rbx]
	movzx	eax, byte ptr [r15 + r12 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1764
.label_1783:
	movzx	ebp, al
	mov	eax, ebp
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1771
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_1771:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_1778
	jmp	.label_1781
.label_1764:
	movzx	eax, byte ptr [rdx + rcx]
	jmp	.label_1783
.label_1789:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	cl, byte ptr [rdx + rax - 1]
	movzx	edx, cl
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1785
	mov	cl, byte ptr [rsi + rdx]
.label_1785:
	mov	rdx, qword ptr [rbx + 0x80]
	mov	eax, ecx
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rdx + rax*8]
	mov	edx, 1
	movzx	esi, cl
	bt	rax, rsi
	jb	.label_1757
	xor	edx, edx
	cmp	cl, 0xa
	jne	.label_1757
	movzx	eax, r8w
	xor	edx, edx
	cmp	eax, 0xff
	seta	dl
	add	edx, edx
.label_1757:
	mov	dword ptr [rbx + 0x70], edx
	jmp	.label_1741
.label_1737:
	mov	rbp, qword ptr [rsi + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	xor	eax, eax
	test	rbp, rbp
	je	.label_1745
	jle	.label_1739
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_1739:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rax, qword ptr [rbx + 0x30]
.label_1745:
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1741
.label_1784:
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1772
.label_1748:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1770
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_1767
	add	r12, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r12]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_1773
.label_1786:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
.label_1773:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_1786
	mov	rax, rcx
.label_1767:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1770
.label_1781:
	mov	r15, r14
.label_1758:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1770
.label_1744:
	mov	rcx, qword ptr [rsp + 0x28]
	xor	edx, edx
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1791
	test	rax, rax
	je	.label_1791
	mov	rax, qword ptr [rbx]
	movzx	edx, byte ptr [rax + rbp]
.label_1791:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_1746
.label_1749:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdx, qword ptr [rbx + 0x50]
	sub	rdx, rbp
	mov	rsi, qword ptr [rbx]
	add	rsi, rbp
	lea	rdi, [rsp + 8]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rcx, qword ptr [rsp]
	call	rpl_mbrtowc
	lea	rcx, [rax - 1]
	cmp	rcx, -3
	jae	.label_1744
	mov	edx, dword ptr [rsp + 8]
.label_1746:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jl	.label_1749
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	cmp	edx, -1
	je	.label_1772
.label_1796:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1759
.label_1799:
	xor	ecx, ecx
	cmp	edx, 0xa
	jne	.label_1738
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_1738:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_1797
.label_1772:
	mov	rsi, qword ptr [rsp + 0x20]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_1797:
	test	rbp, rbp
	jne	.label_1777
.label_1763:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1741
.label_1787:
	mov	rdx, r14
	sub	rdx, r12
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1782
.label_1777:
	jle	.label_1743
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_1743:
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rdx, rbp
	je	.label_1763
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	call	memset
	jmp	.label_1763
.label_1759:
	mov	ebp, edx
	mov	edi, ebp
	call	iswalnum
	mov	edx, ebp
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_1738
	test	eax, eax
	je	.label_1799
	jmp	.label_1738
.label_1747:
	lea	rsi, [rsp + 0x1a]
	cmp	rdx, 7
	mov	r8d, 6
	cmovl	r8, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1753
	movsxd	r8, r8d
	lea	r9, [rsp + r8 + 0x19]
	add	rax, r8
	lea	r10, [r10 + rax - 1]
	xor	ecx, ecx
.label_1760:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rdi + rax]
	mov	byte ptr [r9 + rcx], al
	lea	rax, [r8 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_1760
	jmp	.label_1753
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412470

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
	jle	.label_1802
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
.label_1801:
	mov	rcx, qword ptr [r11 + rbx*8]
	mov	rdx, rcx
	shl	rdx, 4
	mov	esi, dword ptr [rdi + rdx + 8]
	cmp	sil, 2
	jne	.label_1800
	shr	esi, 8
	test	si, 0x3ff
	je	.label_1802
	test	r9d, r9d
	jne	.label_1805
	mov	edx, esi
	and	edx, 4
	jne	.label_1800
.label_1805:
	test	r9d, r9d
	je	.label_1803
	mov	edx, esi
	and	edx, 8
	jne	.label_1800
.label_1803:
	test	r8d, r8d
	jne	.label_1804
	mov	edx, esi
	and	edx, 0x20
	jne	.label_1800
.label_1804:
	test	eax, eax
	jne	.label_1802
	test	sil, sil
	jns	.label_1802
	nop	dword ptr [rax]
.label_1800:
	inc	rbx
	cmp	rbx, r10
	mov	ecx, 0
	jl	.label_1801
.label_1802:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412530

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
	jle	.label_1808
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1810:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_1806
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1807:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1807
.label_1806:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_1809
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_1809:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1810
.label_1808:
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
	.align	16
	#Procedure 0x4125f0

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
	sub	rsp, 0x88
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r13, qword ptr [rdi]
	mov	rax, qword ptr [rip + label_1859]
	mov	qword ptr [rbp - 0xa0], rax
	movups	xmm0, xmmword ptr [rip + label_1860]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	xor	eax, eax
	test	r8b, r8b
	je	.label_1861
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0xa0], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_1819
	lea	rax, [rbp - 0xb0]
.label_1861:
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x90], r13
	mov	r13, qword ptr [r13 + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	qword ptr [rbp - 0x60], 0
	mov	rdx, rbx
	shl	rdx, 4
	cmp	rdx, 0xfbf
	ja	.label_1826
	mov	rdi, rsp
	lea	rax, [rdx + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x2c], 0
	jmp	.label_1857
.label_1826:
	mov	r14, rdx
	mov	rdi, rdx
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_1875
	mov	al, 1
	mov	dword ptr [rbp - 0x2c], eax
	mov	rdx, r14
.label_1857:
	mov	qword ptr [rbp - 0x40], rdi
	mov	rsi, r15
	mov	qword ptr [rbp - 0x58], rdx
	call	memcpy
	mov	r14, qword ptr [r15]
	xor	edi, edi
	cmp	r14, qword ptr [r15 + 8]
	jg	.label_1842
	lea	rax, [r15 + 8]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], rbx
	mov	qword ptr [rbp - 0x48], r12
	mov	qword ptr [rbp - 0x78], r15
	jmp	.label_1858
.label_1854:
	test	r13, r13
	mov	r14, qword ptr [rbp - 0x50]
	je	.label_1818
.label_1868:
	mov	r14, qword ptr [r13]
	lea	rax, [r14 + 1]
	mov	qword ptr [r13], rax
	cmp	rax, qword ptr [r13 + 8]
	jne	.label_1852
	mov	rdi, qword ptr [r13 + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_1821
	mov	rax, qword ptr [rbp - 0x38]
	shl	qword ptr [rax + 8], 1
	mov	qword ptr [rax + 0x10], r13
	jmp	.label_1864
.label_1852:
	mov	r13, qword ptr [r13 + 0x10]
.label_1864:
	lea	r14, [r14 + r14*2]
	shl	r14, 4
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [r13 + r14], rax
	mov	qword ptr [r13 + r14 + 8], rbx
	mov	rdi, qword ptr [rbp - 0x58]
	call	malloc
	mov	qword ptr [r13 + r14 + 0x10], rax
	test	rax, rax
	je	.label_1821
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	lea	rbx, [r13 + r14 + 0x18]
	mov	qword ptr [r13 + r14 + 0x20], r15
	test	r15, r15
	jle	.label_1869
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [r13 + r14 + 0x28], rax
	test	rax, rax
	je	.label_1873
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_1818
.label_1869:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_1818
.label_1863:
	mov	r12, rax
	jmp	.label_1818
	nop	dword ptr [rax]
.label_1858:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax]
	mov	rdx, r13
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	cmp	cl, 9
	je	.label_1877
	cmp	cl, 8
	jne	.label_1814
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1814
	shl	rax, 4
	mov	qword ptr [r15 + rax], r14
	mov	qword ptr [r15 + rax + 8], -1
	jmp	.label_1814
	nop	word ptr cs:[rax + rax]
.label_1877:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1814
	shl	rax, 4
	cmp	qword ptr [r15 + rax], r14
	jge	.label_1824
	mov	qword ptr [r15 + rax + 8], r14
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, r15
	jmp	.label_1825
.label_1824:
	test	ecx, 0x80000
	je	.label_1828
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rcx + rax], -1
	je	.label_1828
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x40]
.label_1825:
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	jmp	.label_1814
.label_1828:
	mov	qword ptr [r15 + rax + 8], r14
	nop	dword ptr [rax]
.label_1814:
	cmp	r14, qword ptr [r15 + 8]
	jne	.label_1833
	cmp	r13, qword ptr [r12 + 0xb0]
	jne	.label_1833
	mov	r15, qword ptr [rbp - 0x38]
	test	r15, r15
	je	.label_1836
	test	rbx, rbx
	mov	eax, 0
	je	.label_1838
	mov	rcx, qword ptr [rbp - 0x80]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1845:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1840
	cmp	qword ptr [rcx], -1
	je	.label_1838
.label_1840:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_1845
.label_1838:
	cmp	rax, rbx
	je	.label_1847
	mov	rcx, qword ptr [r15]
	lea	rax, [rcx - 1]
	mov	qword ptr [r15], rax
	test	rcx, rcx
	jle	.label_1848
	mov	rcx, qword ptr [r15 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r13, qword ptr [rax + rbx + 8]
.label_1833:
	mov	r15, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r15]
	mov	rbx, r13
	shl	rbx, 4
	mov	ecx, dword ptr [rax + rbx + 8]
	test	cl, 8
	jne	.label_1815
	test	ecx, 0x100000
	jne	.label_1867
	movzx	ecx, cl
	cmp	ecx, 4
	jne	.label_1853
	mov	rax, qword ptr [rax + rbx]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rcx + rax + 0x10]
	mov	rax, qword ptr [rcx + rax + 0x18]
	mov	rdx, rax
	sub	rdx, rdi
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1870
	cmp	rax, -1
	mov	r12, r14
	je	.label_1812
	cmp	rdi, -1
	je	.label_1812
	test	rdx, rdx
	je	.label_1843
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, r12
	cmp	rax, rdx
	jl	.label_1812
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rax + 8]
	add	rdi, rsi
	add	rsi, r12
	mov	rbx, rdx
	call	memcmp
	mov	rdx, rbx
	test	eax, eax
	jne	.label_1812
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, r12
	mov	r12, qword ptr [rax + r13*8]
	add	rdx, rcx
	jmp	.label_1823
	nop	
.label_1815:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	qword ptr [rbp - 0x50], r14
	mov	r14, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [r15 + 0x28]
	lea	rdi, [rbp - 0x70]
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	je	.label_1821
	lea	rax, [r13 + r13*2]
	mov	r9, qword ptr [rbx + rax*8 + 8]
	test	r9, r9
	jle	.label_1822
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	mov	r11, qword ptr [r14 + 0x10]
	lea	r10, [r11 - 1]
	mov	r12, -1
	xor	r15d, r15d
	mov	r13, qword ptr [rbp - 0x38]
	nop	word ptr cs:[rax + rax]
.label_1841:
	test	r11, r11
	jle	.label_1830
	mov	rbx, qword ptr [r8 + r15*8]
	test	r10, r10
	mov	rcx, qword ptr [r14 + 0x18]
	mov	eax, 0
	je	.label_1831
	mov	rsi, r10
	xor	eax, eax
	nop	dword ptr [rax]
.label_1835:
	lea	rdx, [rax + rsi]
	shr	rdx, 1
	cmp	qword ptr [rcx + rdx*8], rbx
	lea	rdi, [rdx + 1]
	cmovl	rax, rdi
	cmovge	rsi, rdx
	cmp	rax, rsi
	jb	.label_1835
.label_1831:
	cmp	rax, -1
	je	.label_1830
	cmp	qword ptr [rcx + rax*8], rbx
	jne	.label_1830
	cmp	r12, -1
	jne	.label_1839
	mov	r12, rbx
.label_1830:
	inc	r15
	cmp	r15, r9
	jl	.label_1841
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_1818
	nop	word ptr cs:[rax + rax]
.label_1867:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r14
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_1816:
	test	rdx, rdx
	jne	.label_1850
	jmp	.label_1853
.label_1839:
	mov	r15, qword ptr [rbp - 0x68]
	test	r15, r15
	jle	.label_1854
	mov	rcx, r15
	dec	rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, 0
	mov	r14, qword ptr [rbp - 0x50]
	je	.label_1855
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1856:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1856
.label_1855:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r12
	sete	dl
	and	dl, cl
	mov	rax, r12
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_1863
	test	r13, r13
	jne	.label_1868
	mov	r12, rax
	jmp	.label_1818
.label_1870:
	test	rdx, rdx
	mov	rcx, r14
	je	.label_1843
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r13*8]
	add	rdx, rcx
	jmp	.label_1827
.label_1843:
	lea	rdi, [rbp - 0x70]
	mov	rsi, r13
	mov	r12, rdx
	call	re_node_set_insert
	mov	rdx, r12
	test	al, al
	je	.label_1821
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1853
	mov	rdi, qword ptr [r15 + 0x28]
	lea	rsi, [r13 + r13*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r12, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_1874
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1811:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_1811
.label_1874:
	cmp	rcx, -1
	je	.label_1816
	cmp	qword ptr [r8 + rcx*8], r12
	je	.label_1818
	jmp	.label_1816
	nop	word ptr cs:[rax + rax]
.label_1853:
	add	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	mov	rdx, r14
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_1822
.label_1850:
	add	rdx, r14
	cmp	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r13*8]
	je	.label_1827
.label_1823:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_1812
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_1812
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1812
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_1834
	xor	ebx, ebx
	nop	
.label_1817:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_1817
.label_1834:
	cmp	rbx, -1
	je	.label_1822
	cmp	qword ptr [rcx + rbx*8], r12
	jne	.label_1822
.label_1827:
	mov	qword ptr [rbp - 0x68], 0
	mov	r14, rdx
.label_1818:
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x78]
	jns	.label_1846
	cmp	r12, -2
	je	.label_1821
	nop	word ptr [rax + rax]
.label_1822:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1849
.label_1812:
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbx]
	lea	rax, [rcx - 1]
	mov	qword ptr [rbx], rax
	test	rcx, rcx
	jle	.label_1848
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rax, 4
	lea	r14, [rax + rax*2]
	mov	r13, qword ptr [rcx + r14]
	mov	rsi, qword ptr [rcx + r14 + 0x10]
	mov	r15, qword ptr [rbp - 0x78]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r14 + 0x10]
	call	free
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rax + r14 + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + r14 + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r12, qword ptr [rax + r14 + 8]
	mov	r14, r13
.label_1846:
	cmp	r14, qword ptr [r15 + 8]
	mov	r13, r12
	mov	rbx, qword ptr [rbp - 0x88]
	mov	r12, qword ptr [rbp - 0x48]
	jle	.label_1858
	mov	rdi, qword ptr [rbp - 0x60]
.label_1842:
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1872
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_1872:
	xor	r14d, r14d
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_1819
	cmp	qword ptr [r12], 0
	jle	.label_1813
	xor	ebx, ebx
	xor	r15d, r15d
	nop	
.label_1876:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1876
	jmp	.label_1813
.label_1875:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_1819
	cmp	qword ptr [r12], 0
	jle	.label_1813
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1820:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1820
.label_1813:
	mov	rdi, qword ptr [r12 + 0x10]
.label_1832:
	call	free
.label_1819:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1849:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	r14d, 1
	jmp	.label_1829
.label_1836:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	xor	r14d, r14d
.label_1829:
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1819
	mov	rdi, qword ptr [rbp - 0x40]
	jmp	.label_1832
.label_1847:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1871
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_1871:
	cmp	qword ptr [r15], 0
	jle	.label_1837
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1844:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r14
	add	rbx, 0x30
	cmp	r14, qword ptr [r15]
	jl	.label_1844
.label_1837:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	xor	r14d, r14d
	jmp	.label_1819
.label_1873:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_1821:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1851
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_1851:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_1819
	cmp	qword ptr [r12], 0
	jle	.label_1813
	xor	ebx, ebx
	xor	r15d, r15d
.label_1862:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1862
	jmp	.label_1813
.label_1848:
	mov	edi, OFFSET FLAT:label_1865
	mov	esi, OFFSET FLAT:label_692
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_1866
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412f90

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_1883
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1886
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1881
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_1884:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_1878
	dec	rsi
	test	rsi, rsi
	jg	.label_1884
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1879
.label_1881:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_1879
	xor	edx, edx
	cmp	al, 0xa
	je	.label_1885
	jmp	.label_1879
.label_1878:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1880
.label_1882:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1879
.label_1885:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_1879:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1883:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1879
.label_1886:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_1879
.label_1880:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1879
	test	eax, eax
	je	.label_1882
	jmp	.label_1879
	nop	
	.section	.text
	.align	16
	#Procedure 0x413050

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
	jle	.label_1890
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_1888
.label_1891:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1890
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_1889
	nop	word ptr [rax + rax]
.label_1888:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 8
	jne	.label_1887
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_1887
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_1887
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_1891
.label_1889:
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
	je	.label_1890
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	word ptr [rax + rax]
.label_1887:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_1888
.label_1890:
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
	.align	16
	#Procedure 0x413180

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
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1914
	mov	rcx, qword ptr [rdi + 0x98]
	mov	r15, qword ptr [rdi + 0x48]
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x50], rcx
	nop	dword ptr [rax]
.label_1952:
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x80], rdx
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rcx]
	mov	rcx, r14
	mov	qword ptr [rsp + 0x48], rcx
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	cmp	bl, 4
	jne	.label_1903
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1919
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rsi, r15
	call	re_string_context_at
	mov	rdi, qword ptr [rsp + 0x20]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1895
	test	ecx, ecx
	je	.label_1903
.label_1895:
	test	bh, 8
	je	.label_1907
	test	ecx, ecx
	jne	.label_1903
.label_1907:
	test	bh, 0x20
	je	.label_1912
	mov	ecx, eax
	and	ecx, 2
	je	.label_1903
.label_1912:
	test	bpl, bpl
	jns	.label_1919
	and	eax, 8
	je	.label_1903
	nop	word ptr [rax + rax]
.label_1919:
	mov	rax, qword ptr [rdi + 0xc8]
	mov	r8, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	mov	eax, 0
	jle	.label_1924
	mov	rcx, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_1943:
	lea	rsi, [rdx + rax]
	mov	rbp, rsi
	shr	rbp, 0x3f
	add	rbp, rsi
	sar	rbp, 1
	lea	rsi, [rbp + rbp*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r15
	cmovge	rdx, rbp
	lea	rsi, [rbp + 1]
	cmovl	rax, rsi
	cmp	rax, rdx
	jl	.label_1943
.label_1924:
	cmp	rax, qword ptr [rsp + 0x40]
	jge	.label_1933
	cmp	rax, -1
	je	.label_1933
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r15
	jne	.label_1933
	lea	rax, [rcx + rax*8]
	nop	
.label_1957:
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax], rcx
	je	.label_1954
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_1957
.label_1933:
	cmp	qword ptr [rdi + 0xe8], 0
	jle	.label_1954
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + r14]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x30], rcx
	xor	edx, edx
	mov	qword ptr [rsp + 0x38], r14
	jmp	.label_1894
	nop	word ptr cs:[rax + rax]
.label_1953:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
.label_1894:
	mov	rcx, qword ptr [rdi + 0xf8]
	mov	r9, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [r9 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r14
	mov	qword ptr [rsp + 0x88], rdx
	jne	.label_1918
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [r9 + 0x20]
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r9
	jle	.label_1926
	mov	rcx, qword ptr [rsp + 8]
	xor	r14d, r14d
	jmp	.label_1908
.label_1926:
	xor	r14d, r14d
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_1893
.label_1937:
	mov	rdx, qword ptr [rdi + 0x58]
	mov	r10d, 7
	cmp	r13, rdx
	jg	.label_1941
	mov	rsi, qword ptr [rdi + 0x40]
	mov	r12, qword ptr [rdi + 0xc0]
	cmp	rsi, r13
	setle	r9b
	cmp	rsi, rdx
	setl	sil
	cmp	rax, rdx
	jl	.label_1949
	and	r9b, sil
	je	.label_1932
.label_1949:
	lea	esi, [r13 + 1]
	mov	qword ptr [rsp + 0x70], r8
	mov	qword ptr [rsp + 0x58], rcx
	call	extend_buffers
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x20]
	test	eax, eax
	je	.label_1932
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1941
.label_1962:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1963
.label_1932:
	mov	rdx, r13
	sub	rdx, r12
	jle	.label_1902
	mov	rax, qword ptr [rdi + 0xb8]
	lea	rdi, [rax + r12*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	qword ptr [rsp + 0x58], rcx
	call	memset
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	qword ptr [rdi + 0xc0], r13
.label_1902:
	mov	r12, rbp
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_1922
	nop	word ptr cs:[rax + rax]
.label_1908:
	mov	rax, qword ptr [r9 + 0x28]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [rbp + 8]
	mov	r13, rbx
	mov	rax, qword ptr [rsp + 0x28]
	sub	r13, rax
	add	r13, rcx
	mov	r15, rbx
	sub	r15, rax
	jle	.label_1927
	mov	rax, qword ptr [rdi + 0x30]
	cmp	r13, rax
	mov	qword ptr [rsp + 0x68], rbx
	jg	.label_1937
	mov	r12, rbp
.label_1922:
	lea	rdi, [r8 + rcx]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [r8 + rax]
	mov	rdx, r15
	mov	rbx, r8
	mov	r15, rcx
	call	memcmp
	mov	rcx, r15
	mov	r8, rbx
	mov	r10d, 7
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	rbx, qword ptr [rsp + 0x68]
	jne	.label_1941
.label_1927:
	mov	rsi, r9
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rdi + 8]
	mov	r10d, 9
	cmp	eax, 1
	je	.label_1955
	test	eax, eax
	jne	.label_1962
	xor	r10d, r10d
.label_1955:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
.label_1963:
	mov	r9, qword ptr [rsp + 0x10]
.label_1941:
	mov	eax, r10d
	and	al, 0xf
	je	.label_1901
	cmp	al, 9
	jne	.label_1905
.label_1901:
	inc	r14
	mov	rax, qword ptr [r9 + 0x20]
	cmp	r14, rax
	jl	.label_1908
	jmp	.label_1893
.label_1905:
	cmp	al, 7
	jne	.label_1915
	mov	rax, qword ptr [r9 + 0x20]
	nop	
.label_1893:
	cmp	r14, rax
	jge	.label_1920
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1918
	nop	word ptr cs:[rax + rax]
.label_1920:
	xor	ebx, ebx
	test	r14, r14
	setg	bl
	add	rbx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 8]
	cmp	rbx, r15
	jle	.label_1959
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1918
.label_1959:
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1936
.label_1931:
	cmp	r13, -1
	je	.label_1916
	mov	rbp, r8
	mov	rsi, qword ptr [r9 + 0x10]
	test	rsi, rsi
	jne	.label_1935
	lea	rsi, [rbx + 1]
	sub	rsi, qword ptr [r9]
	mov	edi, 0x18
	call	rpl_calloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rax
	mov	qword ptr [r9 + 0x10], rsi
	test	rsi, rsi
	je	.label_1942
.label_1935:
	mov	rcx, qword ptr [r9]
	mov	rdx, qword ptr [r9 + 8]
	mov	dword ptr [rsp], 9
	mov	r8, r13
	mov	r9, rbx
	call	check_arrival
	cmp	eax, 1
	jne	.label_1899
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 0xc
	jmp	.label_1938
.label_1899:
	test	eax, eax
	mov	r8, rbp
	jne	.label_1897
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rcx + 0x20]
	cmp	r14, qword ptr [rcx + 0x18]
	je	.label_1911
.label_1910:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r10d, 1
	test	rax, rax
	je	.label_1917
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r13
	mov	qword ptr [rax + 8], rbx
	inc	rcx
	mov	qword ptr [rsi + 0x20], rcx
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rdi, rbp
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, rbp
	mov	r8, qword ptr [rdi + 8]
	cmp	eax, 1
	mov	r14, qword ptr [rsp + 0x38]
	jne	.label_1961
	mov	r10d, 0xc
	jmp	.label_1946
.label_1961:
	test	eax, eax
	jne	.label_1945
	xor	r10d, r10d
.label_1946:
	mov	rcx, r15
.label_1904:
	mov	r15, qword ptr [rsp + 8]
.label_1929:
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_1938
.label_1942:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	jmp	.label_1938
.label_1925:
	mov	r10d, 0xa
	cmp	rcx, qword ptr [rdi + 0x58]
	jge	.label_1938
	mov	r14, r8
	mov	r12, rcx
	lea	r15, [rcx + 1]
	mov	esi, r15d
	mov	rbp, rdi
	call	extend_buffers
	test	eax, eax
	jne	.label_1960
	mov	r8, qword ptr [rbp + 8]
	mov	rdi, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_1898
.label_1897:
	mov	r10d, 1
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_1904
.label_1911:
	lea	rax, [r14 + r14]
	mov	rdi, qword ptr [rcx + 0x28]
	lea	rsi, [rax*8 + 8]
	mov	r12, rcx
	call	realloc
	test	rax, rax
	je	.label_1939
	lea	rcx, [r14 + r14 + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1910
.label_1917:
	mov	rcx, r15
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1929
.label_1945:
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 1
	jmp	.label_1938
.label_1960:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_1938
.label_1939:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, r12
	jmp	.label_1938
	nop	word ptr [rax + rax]
.label_1936:
	cmp	rbx, qword ptr [r9]
	jle	.label_1892
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_1925
	lea	r15, [rcx + 1]
.label_1898:
	mov	al, byte ptr [r8 + rcx]
	mov	r10d, 0xa
	cmp	al, byte ptr [r8 + rbx - 1]
	je	.label_1900
	jmp	.label_1916
	nop	word ptr cs:[rax + rax]
.label_1892:
	mov	r15, rcx
.label_1900:
	mov	rax, qword ptr [rdi + 0xb8]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r10d, 0xc
	test	rcx, rcx
	je	.label_1916
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1916
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rdx]
	xor	esi, esi
.label_1934:
	mov	r13, qword ptr [rcx + rsi*8]
	mov	rbp, r13
	shl	rbp, 4
	cmp	byte ptr [rdx + rbp + 8], 9
	jne	.label_1896
	cmp	qword ptr [rdx + rbp], r14
	je	.label_1931
.label_1896:
	inc	rsi
	cmp	rsi, rax
	jl	.label_1934
.label_1916:
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
.label_1938:
	mov	eax, r10d
	and	al, 0xf
	je	.label_1940
	cmp	al, 0xc
	jne	.label_1928
.label_1940:
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	jl	.label_1936
	jmp	.label_1918
.label_1915:
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1950
.label_1928:
	cmp	al, 0xa
	je	.label_1918
.label_1950:
	cmp	r10d, 6
	je	.label_1918
	test	r10d, r10d
	jne	.label_1930
	nop	word ptr cs:[rax + rax]
.label_1918:
	mov	rdx, qword ptr [rsp + 0x88]
	inc	rdx
	cmp	rdx, qword ptr [rdi + 0xe8]
	jl	.label_1953
.label_1954:
	mov	dword ptr [rsp + 0x1c], 0
	mov	rbx, qword ptr [rsp + 0x40]
.label_1947:
	cmp	rbx, qword ptr [rdi + 0xc8]
	jge	.label_1903
	lea	rax, [rbx + rbx*4]
	lea	rbp, [rax*8 + 0x18]
	nop	
.label_1958:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_1909
	cmp	qword ptr [rax + rbp - 0x10], r15
	jne	.label_1909
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rcx + 0x30]
	cmp	rsi, rdx
	mov	qword ptr [rsp + 0x40], rbx
	jne	.label_1913
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1923
.label_1913:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rax, [rax*8]
	add	rax, qword ptr [rcx + 0x18]
.label_1923:
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	mov	r12, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x10], rsi
	lea	r13, [rsi + r12]
	mov	qword ptr [rsp + 0x28], rdx
	sub	r13, rdx
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	mov	ebx, eax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rax + 0xb8]
	mov	rax, qword ptr [rcx + r13*8]
	mov	rcx, qword ptr [rcx + r12*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_1948
	mov	rdx, qword ptr [rcx + 0x10]
.label_1948:
	mov	qword ptr [rsp + 0x68], rdx
	lea	r12, [r14 + r15*8]
	test	rax, rax
	lea	rcx, [rsp + 0x90]
	je	.label_1944
	mov	rsi, qword ptr [rax + 0x50]
	mov	r14, rcx
	mov	rdi, r14
	mov	rdx, r12
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	r15, qword ptr [rsp + 8]
	jne	.label_1956
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r14
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	rdi, rbx
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	jne	.label_1906
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	je	.label_1906
	jmp	.label_1921
.label_1944:
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r12
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	mov	r15, qword ptr [rsp + 8]
	jne	.label_1906
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_1951
	jmp	.label_1921
.label_1906:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1951:
	cmp	rsi, rdx
	jne	.label_1909
	mov	rax, qword ptr [rcx + r15*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1909
	mov	rsi, r12
	mov	rdx, r15
	call	check_subexp_matching_top
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_1921
	mov	rsi, r12
	call	transit_state_bkref
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_1921
	nop	
.label_1909:
	inc	rbx
	add	rbp, 0x28
	cmp	rbx, qword ptr [rdi + 0xc8]
	jl	.label_1958
	nop	word ptr cs:[rax + rax]
.label_1903:
	mov	rdx, qword ptr [rsp + 0x80]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsp + 0x50]
	jl	.label_1952
	jmp	.label_1914
.label_1930:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_1947
	jmp	.label_1921
.label_1914:
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
.label_1921:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1956:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rbx, rax
	call	free
	mov	rax, rbx
	jmp	.label_1921
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413b80

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
	ja	.label_1964
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
	jne	.label_1964
	mov	rdi, qword ptr [r14 + 0xb8]
	test	rdi, rdi
	je	.label_1970
	mov	rax, qword ptr [r14 + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_1964
	mov	qword ptr [r14 + 0xb8], rcx
.label_1970:
	cmp	byte ptr [r14 + 0x88], 0
	mov	eax, dword ptr [r14 + 0x90]
	je	.label_1966
	cmp	eax, 2
	jl	.label_1972
	mov	rdi, r14
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1971
	jmp	.label_1964
.label_1966:
	cmp	eax, 2
	jl	.label_1976
	mov	rdi, r14
	call	build_wcs_buffer
	jmp	.label_1971
.label_1972:
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jl	.label_1965
	jmp	.label_1973
.label_1976:
	mov	rdx, qword ptr [r14 + 0x78]
	test	rdx, rdx
	je	.label_1971
	mov	rax, qword ptr [r14 + 0x30]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [r14 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_1974
	mov	rsi, qword ptr [r14 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbx + rax], dl
	jmp	.label_1977
	nop	word ptr cs:[rax + rax]
.label_1968:
	mov	rdx, qword ptr [r14 + 0x78]
	mov	rsi, qword ptr [r14]
	mov	rdi, qword ptr [r14 + 8]
	add	rsi, qword ptr [r14 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_1977:
	inc	rax
	cmp	rax, rcx
	jl	.label_1968
	mov	rax, rcx
.label_1974:
	mov	qword ptr [r14 + 0x30], rax
	mov	qword ptr [r14 + 0x38], rax
	jmp	.label_1971
.label_1975:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_1969
	nop	word ptr cs:[rax + rax]
.label_1965:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	movzx	ecx, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_1975
.label_1969:
	movzx	r12d, cl
	mov	eax, r12d
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1967
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r12d, dword ptr [rax + r12*4]
.label_1967:
	mov	rax, qword ptr [r14 + 8]
	mov	byte ptr [rax + rbx], r12b
	inc	rbx
	cmp	rbx, r15
	jl	.label_1965
	mov	rbx, r15
.label_1973:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
.label_1971:
	xor	eax, eax
.label_1964:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413d50

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
	jle	.label_1981
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1978
.label_1981:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_1980
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_1982
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_1984
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_1985
.label_1980:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1978
.label_1982:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_1985:
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
	jne	.label_1978
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1978:
	test	rbx, rbx
	je	.label_1983
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1983
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1979
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1979
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1979
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1979
.label_1983:
	mov	rax, rbx
.label_1979:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1984:
	xor	eax, eax
	jmp	.label_1979
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413ea0

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
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	test	r12, r12
	je	.label_1994
	mov	r13, qword ptr [r12 + 8]
	test	rbx, rbx
	je	.label_1989
	test	r13, r13
	jle	.label_1989
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_1989
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1996
	xor	edi, edi
	xor	esi, esi
	xor	ebp, ebp
.label_1990:
	mov	r15, rdi
	mov	r14, rsi
	nop	word ptr cs:[rax + rax]
.label_1997:
	cmp	r14, qword ptr [rbx + 8]
	jge	.label_1986
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	cmp	rdx, rcx
	jle	.label_1995
	inc	r14
	mov	qword ptr [rax + r15*8], rcx
	inc	r15
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1997
	jmp	.label_1986
.label_1995:
	mov	rdi, rbx
	sete	bl
	movzx	esi, bl
	mov	rbx, rdi
	add	rsi, r14
	inc	rbp
	lea	rdi, [r15 + 1]
	mov	qword ptr [rax + r15*8], rdx
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1990
	xor	esi, esi
	cmp	rdx, rcx
	sete	sil
	inc	r15
	add	r14, rsi
.label_1986:
	sub	r13, rbp
	jle	.label_1988
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r15, rbp
	add	r15, qword ptr [r12 + 8]
	jmp	.label_1991
.label_1989:
	test	r13, r13
	jle	.label_1994
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_1987
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1992
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1993
.label_1994:
	test	rbx, rbx
	je	.label_1987
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_1987
	mov	qword ptr [rbp + 8], rdi
	mov	r14, rbx
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jle	.label_1987
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1992
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1993
.label_1987:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_1993
.label_1988:
	mov	rdx, qword ptr [rbx + 8]
	sub	rdx, r14
	jle	.label_1991
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rax + r14*8]
	shl	rdx, 3
	call	memcpy
	sub	r15, r14
	add	r15, qword ptr [rbx + 8]
.label_1991:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r15
.label_1993:
	xor	ecx, ecx
.label_1996:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1992:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_1996
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4140b0

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
	jne	.label_1998
	mov	qword ptr [rsp + 0x20], r15
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_2006
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_2004
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
.label_2006:
	test	r15, r15
	jle	.label_1999
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_2000
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_2000
.label_1999:
	mov	rax, qword ptr [r13 + 0xd8]
.label_2000:
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
	jge	.label_2003
	mov	dword ptr [r13 + 0xe0], edi
.label_2003:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_2005
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_2001
.label_2005:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_2002
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_2002
.label_2001:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1998
.label_2002:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_1998
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_1998:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2004:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_1998
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414290

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rdx
	mov	rbp, rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rax, qword ptr [rax]
	shl	rdx, 4
	mov	rax, qword ptr [rax + rdx]
	mov	qword ptr [rsp + 0x40], rax
	mov	r12, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x28], rdi
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rdi, [rax + r9]
	cmp	r12, rdi
	mov	qword ptr [rsp + 0x50], r9
	mov	qword ptr [rsp + 0x90], r8
	mov	qword ptr [rsp + 0x48], rbx
	jle	.label_2031
	mov	r14, qword ptr [rbp + 0x10]
.label_2028:
	mov	r13, qword ptr [rbp]
	test	r13, r13
	cmove	r13, rcx
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rdi + 0x48]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rdi + 0xb8], r14
	mov	qword ptr [rdi + 0x48], r13
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rcx
	call	re_string_context_at
	cmp	r13, rbx
	mov	r12, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x88], rbp
	mov	qword ptr [rsp + 0x80], r15
	mov	qword ptr [rsp + 8], r13
	jne	.label_2020
	mov	dword ptr [rsp + 0x38], eax
	movaps	xmm0, xmmword ptr [rip + label_272]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2014
	mov	rcx, qword ptr [rsp + 0x48]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 4], 0
	lea	rsi, [rsp + 0x10]
	mov	rdi, r12
	mov	r13, qword ptr [rsp + 0x40]
	mov	rdx, r13
	mov	ebx, dword ptr [rsp + 0xd0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_2035
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_2037
.label_2020:
	mov	rdx, qword ptr [r14 + r13*8]
	test	rdx, rdx
	je	.label_2016
	mov	dword ptr [rsp + 0x38], eax
	mov	al, byte ptr [rdx + 0x68]
	test	al, 0x40
	jne	.label_2040
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_2042
.label_2016:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	edx, edx
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
	jmp	.label_2008
.label_2040:
	mov	rbp, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x18], rbp
	test	rbp, rbp
	mov	r13, qword ptr [rsp + 0x40]
	jle	.label_2017
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x10], rbp
	lea	r15, [rbp*8]
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rsp + 0xd0]
	je	.label_2014
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [r12 + 0x18]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	rdx, r12
	mov	al, byte ptr [rdx + 0x68]
	mov	dword ptr [rsp + 4], 0
	mov	r12, qword ptr [rsp + 0x58]
	jmp	.label_2030
.label_2017:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [rsp + 0x28]
.label_2042:
	mov	ebx, dword ptr [rsp + 0xd0]
.label_2030:
	test	al, 0x40
	je	.label_2008
.label_2037:
	test	rbp, rbp
	je	.label_2038
	lea	rsi, [rsp + 0x10]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_2035
.label_2038:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 0x10]
	mov	rsi, r12
	mov	ecx, dword ptr [rsp + 0x38]
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_2019
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2012
.label_2019:
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8], rdx
.label_2008:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x50]
	jge	.label_2018
	xor	esi, esi
	nop	
.label_2041:
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rsi, rax
	jg	.label_2021
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	test	rsi, rsi
	je	.label_2024
	add	rsi, 8
	lea	rdi, [rsp + 0x10]
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2012
.label_2024:
	test	rdx, rdx
	je	.label_2032
	mov	r13, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0x34], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0x70], 0
	cmp	qword ptr [rdx + 0x28], 0
	mov	edi, 0
	jle	.label_2033
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x48], rdx
	nop	word ptr cs:[rax + rax]
.label_2025:
	mov	rax, qword ptr [rdx + 0x30]
	mov	r15, qword ptr [rax + rbx*8]
	mov	rsi, qword ptr [r13]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_2022
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	r12, qword ptr [rsp + 8]
	mov	rcx, r12
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_2013
	mov	rcx, qword ptr [r13 + 0x18]
	mov	rdx, qword ptr [rcx + r15*8]
	mov	rcx, r14
	movsxd	r14, eax
	add	r14, r12
	mov	rax, qword ptr [rcx + 0xb8]
	mov	rsi, qword ptr [rax + r14*8]
	mov	qword ptr [rsp + 0x68], 0
	test	rsi, rsi
	lea	rax, [rsp + 0x60]
	mov	rcx, rax
	je	.label_2026
	add	rsi, 8
	mov	r12, rcx
	mov	rdi, r12
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	rcx, r12
	mov	r12d, eax
	mov	dword ptr [rsp + 0x34], r12d
	test	r12d, r12d
	jne	.label_2027
.label_2026:
	mov	rbp, rcx
	mov	rdi, rbp
	mov	rsi, rdx
	call	re_node_set_insert
	test	al, al
	mov	rdx, rbp
	je	.label_2009
	lea	rdi, [rsp + 0x34]
	mov	rsi, r13
	call	re_acquire_state
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rdx
	jne	.label_2034
	mov	r12d, dword ptr [rsp + 0x34]
	test	r12d, r12d
	je	.label_2034
	jmp	.label_2027
	nop	
.label_2013:
	test	eax, eax
	jne	.label_2034
	mov	rsi, qword ptr [r13]
	nop	dword ptr [rax + rax]
.label_2022:
	add	rsi, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	check_node_accept
	test	al, al
	je	.label_2043
.label_2034:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_insert
	test	al, al
	je	.label_2009
.label_2043:
	inc	rbx
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rbx, qword ptr [rdx + 0x28]
	jl	.label_2025
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x58]
.label_2033:
	call	free
	mov	dword ptr [rsp + 4], 0
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
.label_2032:
	mov	rax, qword ptr [rsp + 8]
	lea	rbp, [rax + 1]
	cmp	qword ptr [rsp + 0x18], 0
	lea	r15, [rsp + 0x10]
	je	.label_2023
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2012
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2012
.label_2023:
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 8]
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, r12
	mov	rdx, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_2036
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2012
.label_2036:
	mov	rsi, qword ptr [rsp + 0x38]
	inc	rsi
	test	rdx, rdx
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8 + 8], rdx
	mov	eax, 0
	cmovne	rsi, rax
	cmp	rbp, qword ptr [rsp + 0x50]
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	jl	.label_2041
	jmp	.label_2010
.label_2018:
	mov	rbp, rax
	jmp	.label_2010
.label_2021:
	mov	rbp, qword ptr [rsp + 8]
.label_2010:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rax + rcx*8]
	lea	rcx, [rax + 8]
	test	rax, rax
	cmove	rcx, rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [r14 + 0xb8], rax
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r14 + 0x48], rax
	mov	rbx, qword ptr [rsp + 0x90]
	je	.label_2015
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	jle	.label_2015
	xor	ebp, ebp
	dec	rax
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, 0
	je	.label_2029
	xor	edx, edx
.label_2007:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2007
.label_2029:
	cmp	rdx, -1
	je	.label_2015
	cmp	qword ptr [rcx + rdx*8], rbx
	je	.label_2011
.label_2015:
	mov	ebp, 1
.label_2011:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2009:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	r12d, 0xc
	jmp	.label_2039
.label_2027:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_2039:
	mov	dword ptr [rsp + 4], r12d
.label_2012:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	ebp, dword ptr [rsp + 4]
	jmp	.label_2011
.label_2031:
	mov	r13, rbp
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, r12
	mov	ebp, 0xc
	cmp	rdx, rdi
	jle	.label_2011
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rsp + 0x50]
	lea	r15, [rax + rcx + 1]
	lea	rcx, [r15 + r12]
	mov	rax, rcx
	shr	rax, 0x3d
	jne	.label_2011
	mov	rdi, qword ptr [r13 + 0x10]
	mov	qword ptr [rsp + 0x38], rcx
	lea	rsi, [rcx*8]
	call	realloc
	mov	r14, rax
	test	r14, r14
	je	.label_2011
	mov	qword ptr [r13 + 0x10], r14
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r13 + 8], rax
	lea	rdi, [r14 + r12*8]
	shl	r15, 3
	xor	esi, esi
	mov	rdx, r15
	call	memset
	mov	rbp, r13
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_2028
.label_2035:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_2011
.label_2014:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 4], 0xc
	mov	ebp, 0xc
	jmp	.label_2011
	nop	
	.section	.text
	.align	16
	#Procedure 0x4149a0

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
	je	.label_2048
	test	r12, r12
	jle	.label_2051
	xor	r12d, r12d
	jmp	.label_2050
	nop	dword ptr [rax]
.label_2046:
	cmp	rbp, -1
	je	.label_2044
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_2045
	nop	dword ptr [rax]
.label_2050:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_2044
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_2049:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_2052
	cmp	qword ptr [rbx + rcx], r13
	je	.label_2046
.label_2052:
	inc	rax
	cmp	rax, r10
	jl	.label_2049
.label_2044:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_2045:
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_2047
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_2050
.label_2051:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_2048:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2047:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_2048
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414ad0

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rdx
	mov	r14, qword ptr [rdi + 0x98]
	mov	r9, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r9, r9
	mov	r11d, 0
	jle	.label_2071
	mov	r10, qword ptr [rdi + 0xd8]
	xor	r11d, r11d
	mov	rdx, r9
	nop	dword ptr [rax]
.label_2057:
	lea	rbp, [rdx + r11]
	mov	rbx, rbp
	shr	rbx, 0x3f
	add	rbx, rbp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [r10 + rbp*8 + 8], r15
	cmovge	rdx, rbx
	lea	rbp, [rbx + 1]
	cmovl	r11, rbp
	cmp	r11, rdx
	jl	.label_2057
.label_2071:
	cmp	r11, r9
	jge	.label_2064
	cmp	r11, -1
	je	.label_2064
	mov	qword ptr [rsp + 0x50], rcx
	mov	dword ptr [rsp + 0x44], r8d
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [r11 + r11*4]
	mov	qword ptr [rsp + 0x48], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_2064
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x28], r14
	jmp	.label_2082
.label_2070:
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
.label_2082:
	mov	rax, qword ptr [rsp + 0x48]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_2079:
	mov	r9, qword ptr [rsi + 8]
	test	r9, r9
	jle	.label_2062
	mov	rdx, qword ptr [r13]
	dec	r9
	mov	r8, qword ptr [rsi + 0x10]
	mov	eax, 0
	je	.label_2066
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2075:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [r8 + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_2075
.label_2066:
	cmp	rax, -1
	je	.label_2062
	cmp	qword ptr [r8 + rax*8], rdx
	jne	.label_2062
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_2053
	test	r9, r9
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rax + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_2058
	xor	edx, edx
.label_2068:
	lea	rax, [rdx + r9]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rbx
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_2068
.label_2058:
	cmp	rdx, -1
	je	.label_2074
	mov	ecx, 4
	cmp	qword ptr [r8 + rdx*8], rbx
	je	.label_2063
.label_2074:
	movaps	xmm0, xmmword ptr [rip + label_272]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2084
	mov	qword ptr [rax], rbx
	xor	r12d, r12d
.label_2083:
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, r14
	lea	rbx, [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x50]
	mov	ecx, dword ptr [rsp + 0x44]
	call	check_arrival_expand_ecl
	mov	r14d, eax
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdi, rbp
	mov	rsi, rbx
	call	re_node_set_merge
	mov	ebx, eax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rsi, rbp
	mov	eax, r14d
	or	eax, r12d
	mov	ecx, 2
	or	eax, ebx
	mov	rdi, qword ptr [rsp + 0x30]
	je	.label_2063
	test	r14d, r14d
	cmovne	ebx, r14d
	test	r12d, r12d
	cmovne	ebx, r12d
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_2063
.label_2053:
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r9, qword ptr [rax + r12*8]
	test	r9, r9
	je	.label_2054
	mov	r8, qword ptr [r9 + 0x10]
	test	r8, r8
	jle	.label_2061
	mov	rcx, r8
	dec	rcx
	mov	rax, qword ptr [r9 + 0x18]
	mov	edx, 0
	je	.label_2065
	xor	edx, edx
	nop	
.label_2072:
	lea	rbp, [rdx + rcx]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], r14
	lea	rbx, [rbp + 1]
	cmovl	rdx, rbx
	cmovge	rcx, rbp
	cmp	rdx, rcx
	jb	.label_2072
.label_2065:
	cmp	rdx, -1
	je	.label_2078
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_2063
.label_2078:
	mov	qword ptr [rsp + 0x18], r8
	test	r8, r8
	jle	.label_2081
	mov	rbp, r9
	mov	qword ptr [rsp + 0x10], r8
	shl	r8, 3
	mov	rdi, r8
	mov	rbx, r8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2055
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2067
.label_2054:
	movaps	xmm0, xmmword ptr [rip + label_272]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2073
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 8], 0
	jmp	.label_2076
.label_2061:
	mov	qword ptr [rsp + 0x18], r8
.label_2081:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
.label_2067:
	xor	ebx, ebx
.label_2069:
	mov	dword ptr [rsp + 8], ebx
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_2056
	xor	al, 1
	jne	.label_2056
.label_2076:
	lea	rdi, [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rsi, r14
	lea	rdx, [rsp + 0x10]
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, rbx
	mov	rax, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	sete	dl
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	setne	cl
	and	cl, dl
	jne	.label_2060
	mov	eax, dword ptr [rsp + 0xc]
.label_2060:
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], eax
	mov	rsi, qword ptr [rsp + 0x38]
	jmp	.label_2080
.label_2084:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	r12d, 0xc
	jmp	.label_2083
.label_2056:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_2059
.label_2073:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 8], 0xc
	mov	dword ptr [rsp + 0xc], 0xc
	mov	ecx, 1
.label_2059:
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x30]
.label_2063:
	mov	r14, qword ptr [rsp + 0x28]
.label_2080:
	test	ecx, ecx
	je	.label_2062
	cmp	ecx, 4
	jne	.label_2077
.label_2062:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_2079
	jmp	.label_2064
.label_2055:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	ebx, 0xc
	jmp	.label_2069
.label_2077:
	cmp	ecx, 2
	je	.label_2070
	mov	eax, dword ptr [rsp + 0xc]
.label_2064:
	add	rsp, 0x58
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
	#Procedure 0x414f30

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
	jmp	.label_2094
	nop	dword ptr [rax]
.label_2090:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_2094:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_2088
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_2091
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2085:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2085
.label_2091:
	cmp	rdx, -1
	je	.label_2088
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_2092
.label_2088:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_2093
	cmp	qword ptr [rax + rcx], r14
	je	.label_2086
.label_2093:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_2087
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_2089
	test	rcx, rcx
	jne	.label_2090
	jmp	.label_2092
	nop	dword ptr [rax]
.label_2089:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_2087
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_2090
.label_2086:
	cmp	r15d, 9
	jne	.label_2092
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_2087
.label_2092:
	xor	eax, eax
.label_2087:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x415050

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
	mov	r15, rsi
	mov	r14, rdi
	mov	r8, qword ptr [r12 + 8]
	test	r8, r8
	je	.label_2113
	mov	rbx, r8
	jle	.label_2120
	mov	rcx, qword ptr [r12 + 0x10]
	xor	esi, esi
	cmp	r8, 4
	mov	rbx, r8
	jb	.label_2100
	xor	esi, esi
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	rbx, r8
	je	.label_2100
	movq	xmm0, r8
	lea	rbp, [rdx - 4]
	mov	rbx, rbp
	shr	rbx, 2
	lea	esi, [rbx + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_2106
	pxor	xmm1, xmm1
	jmp	.label_2111
.label_2106:
	lea	rbp, [rsi - 1]
	sub	rbp, rbx
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2115:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rcx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rcx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_2115
.label_2111:
	test	rsi, rsi
	je	.label_2109
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_2119:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_2119
.label_2109:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	rbx, xmm1
	cmp	r8, rdx
	mov	rsi, rdx
	je	.label_2120
.label_2100:
	mov	rdx, r8
	sub	rdx, rsi
	lea	rcx, [rcx + rsi*8]
	nop	
.label_2099:
	add	rbx, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_2099
.label_2120:
	mov	rdx, qword ptr [r15 + 0x40]
	mov	rcx, qword ptr [r15 + 0x88]
	and	rcx, rbx
	lea	rsi, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rsi*8]
	test	rcx, rcx
	jle	.label_2104
	mov	rdx, qword ptr [rdx + rsi*8 + 0x10]
	xor	esi, esi
	nop	
.label_2121:
	test	r12, r12
	je	.label_2110
	mov	r13, qword ptr [rdx + rsi*8]
	cmp	rbx, qword ptr [r13]
	jne	.label_2110
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_2110
	mov	rdi, r8
	nop	dword ptr [rax + rax]
.label_2118:
	test	rdi, rdi
	jle	.label_2095
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_2118
	nop	word ptr cs:[rax + rax]
.label_2110:
	inc	rsi
	cmp	rsi, rcx
	jl	.label_2121
.label_2104:
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2107
	mov	rax, r13
	add	rax, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 8], r14
	jle	.label_2108
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2117
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r13 + 0x50], rax
	jmp	.label_2097
.label_2108:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rax
	jle	.label_2101
	lea	r14, [r12 + 0x10]
.label_2097:
	xor	eax, eax
	nop	dword ptr [rax]
.label_2102:
	mov	r8, qword ptr [r15]
	mov	rdx, qword ptr [r14]
	mov	rsi, qword ptr [rdx + rax*8]
	shl	rsi, 4
	mov	ebp, dword ptr [r8 + rsi + 8]
	mov	edx, ebp
	and	edx, 0x3ffff
	cmp	edx, 1
	je	.label_2105
	mov	edi, ebp
	shr	edi, 0x14
	movzx	ecx, byte ptr [r13 + 0x68]
	mov	edx, ecx
	shr	dl, 5
	movzx	edx, dl
	or	edx, edi
	shl	dl, 5
	and	dl, 0x20
	and	cl, 0xdf
	or	cl, dl
	mov	byte ptr [r13 + 0x68], cl
	cmp	bpl, 0xc
	je	.label_2114
	cmp	bpl, 4
	je	.label_2096
	cmp	bpl, 2
	jne	.label_2098
	or	cl, 0x10
	jmp	.label_2103
.label_2096:
	or	cl, 0x40
	jmp	.label_2103
.label_2098:
	lea	rdx, [r8 + rsi + 8]
	test	dword ptr [rdx], 0x3ff00
	je	.label_2105
.label_2114:
	or	cl, 0x80
.label_2103:
	mov	byte ptr [r13 + 0x68], cl
.label_2105:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2102
.label_2101:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbx
	call	register_state
	test	eax, eax
	jne	.label_2112
.label_2095:
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2113:
	mov	dword ptr [r14], 0
	jmp	.label_2116
.label_2112:
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_2107
.label_2117:
	mov	rdi, r13
	call	free
.label_2107:
	mov	dword ptr [r14], 0xc
.label_2116:
	xor	r13d, r13d
	jmp	.label_2095
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415390

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
	je	.label_2141
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_2135
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_2135
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2142:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2135
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_2142
.label_2135:
	cmp	r10d, 5
	jne	.label_2146
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2122
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2125
	mov	rsi, qword ptr [rdx + 8]
	cmp	byte ptr [rsi + rcx], 0xa
	je	.label_2122
.label_2125:
	test	al, al
	jns	.label_2131
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_2122
.label_2131:
	mov	r14d, ebx
	jmp	.label_2122
.label_2146:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2122
	test	al, al
	je	.label_2122
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_2139
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_2139
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2143
.label_2139:
	cmp	r8d, 1
	jne	.label_2145
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_2143
.label_2145:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2143:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2128
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_2133:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_2123
	inc	rdx
	cmp	rdx, rax
	jl	.label_2133
.label_2128:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_2130
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2140:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_2123
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2140
	mov	rsi, qword ptr [r15 + 0x40]
.label_2130:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_2137
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_2136:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_2144
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_2123
.label_2144:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2136
	jmp	.label_2137
.label_2123:
	mov	ecx, ebx
.label_2137:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2129
	mov	r14d, ecx
	jmp	.label_2122
.label_2129:
	test	ecx, ecx
	jg	.label_2122
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
.label_2122:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2141:
	mov	rax, qword ptr [rdx + 8]
	mov	bl, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	bl, 0xc2
	jb	.label_2122
	lea	rsi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rsi, rdx
	jg	.label_2122
	mov	dil, byte ptr [rax + rcx + 1]
	cmp	bl, 0xdf
	ja	.label_2138
	cmp	dil, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	dil, dil
	cmovs	r14d, eax
	jmp	.label_2122
.label_2138:
	cmp	bl, 0xef
	ja	.label_2134
	mov	esi, 3
	cmp	bl, 0xe0
	jne	.label_2126
	cmp	dil, 0xa0
	jb	.label_2122
	jmp	.label_2126
.label_2134:
	cmp	bl, 0xf7
	ja	.label_2127
	mov	esi, 4
	cmp	bl, 0xf0
	jne	.label_2126
	cmp	dil, 0x90
	jb	.label_2122
	jmp	.label_2126
.label_2127:
	cmp	bl, 0xfb
	ja	.label_2132
	mov	esi, 5
	cmp	bl, 0xf8
	jne	.label_2126
	cmp	dil, 0x88
	jb	.label_2122
	jmp	.label_2126
.label_2132:
	cmp	bl, 0xfd
	ja	.label_2122
	mov	esi, 6
	cmp	bl, 0xfc
	jne	.label_2126
	cmp	dil, 0x84
	jb	.label_2122
.label_2126:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_2122
	add	rax, rcx
	mov	ecx, 1
.label_2124:
	movzx	edx, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_2122
	cmp	dl, 0xbf
	ja	.label_2122
	inc	rcx
	cmp	rcx, rdi
	jl	.label_2124
	mov	r14d, esi
	jmp	.label_2122
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415620

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r14
	push	rbx
	mov	rax, qword ptr [rdi + 8]
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebp, dword ptr [rsi + 8]
	xor	eax, eax
	mov	r14d, ebp
	mov	ebx, ebp
	dec	bl
	movzx	ebp, bl
	cmp	bpl, 6
	ja	.label_2150
	jmp	qword ptr [(rbp * 8) + label_2151]
.label_2451:
	cmp	byte ptr [rsi], cl
	je	.label_2147
	xor	eax, eax
	jmp	.label_2150
.label_2452:
	mov	rax, qword ptr [rsi]
	mov	ebx, ecx
	shr	bl, 6
	movzx	esi, bl
	mov	rax, qword ptr [rax + rsi*8]
	bt	rax, rcx
	jb	.label_2147
	xor	eax, eax
	jmp	.label_2150
.label_2454:
	test	cl, cl
	js	.label_2153
.label_2453:
	test	cl, cl
	je	.label_2154
	cmp	cl, 0xa
	jne	.label_2147
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2147
	xor	eax, eax
	jmp	.label_2150
.label_2154:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_2155
.label_2147:
	mov	eax, r14d
	mov	ebp, eax
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_2150
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2149
	test	ecx, ecx
	jne	.label_2149
	xor	eax, eax
	jmp	.label_2150
.label_2149:
	mov	edx, r14d
	test	dh, 8
	je	.label_2148
	test	ecx, ecx
	je	.label_2148
.label_2153:
	xor	eax, eax
	jmp	.label_2150
.label_2148:
	mov	ecx, r14d
	test	ch, 0x20
	je	.label_2152
	mov	ecx, eax
	and	ecx, 2
	jne	.label_2152
.label_2155:
	xor	eax, eax
	jmp	.label_2150
.label_2152:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_2150:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x415710

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
	sub	rsp, 0xa8
	mov	r14, rsi
	mov	qword ptr [rbp - 0x30], rdi
	mov	edi, 0x3800
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_2229
	lea	rax, [r14 + 0x58]
	mov	qword ptr [rbp - 0xc8], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	xor	ebx, ebx
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_2231
	lea	rax, [r15 + 0x1800]
	mov	qword ptr [rbp - 0x88], rax
	xor	r12d, r12d
	mov	qword ptr [rbp - 0x70], r15
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xb0], r14
	nop	dword ptr [rax]
.label_2172:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [rsi]
	shl	rax, 4
	lea	rdi, [rcx + rax]
	mov	eax, dword ptr [rcx + rax + 8]
	movzx	ecx, al
	mov	dword ptr [rbp - 0xa0], ecx
	cmp	ecx, 1
	jne	.label_2251
	mov	cl, byte ptr [rdi]
	mov	edx, 1
	shl	rdx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x50], rdx
.label_2205:
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, ecx
	and	edx, 0x3ff
	je	.label_2256
	test	cl, 0x20
	je	.label_2261
	mov	rdx, qword ptr [rbp - 0x50]
	test	dh, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	je	.label_2160
	mov	qword ptr [rbp - 0x50], 0x400
.label_2261:
	test	cl, cl
	js	.label_2158
	test	cl, 4
	je	.label_2161
	mov	edx, eax
	and	edx, 0x4000ff
	cmp	edx, 1
	je	.label_2158
	mov	r9, rbx
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2170
	mov	rdx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	movdqu	xmm1, xmmword ptr [rdx]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	r10, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	movdqu	xmm1, xmmword ptr [rdx + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x40]
	movq	rbx, xmm1
	or	rbx, r8
	or	rbx, r10
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	jmp	.label_2175
	nop	word ptr cs:[rax + rax]
.label_2251:
	cmp	al, 7
	je	.label_2203
	cmp	al, 5
	je	.label_2204
	cmp	al, 3
	jne	.label_2160
	mov	rcx, qword ptr [rdi]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x50]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	jmp	.label_2205
.label_2203:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	rcx, qword ptr [rsi + 0xd8]
	mov	rdx, -2
	test	cl, 0x40
	jne	.label_2212
	mov	qword ptr [rbp - 0x50], -0x401
	mov	rdx, -0x402
.label_2212:
	test	cl, cl
	jns	.label_2205
	mov	qword ptr [rbp - 0x50], rdx
	jmp	.label_2205
.label_2204:
	cmp	dword ptr [rsi + 0xb4], 2
	jl	.label_2224
	mov	rcx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	movq	rcx, xmm0
	jmp	.label_2226
.label_2224:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	rcx, -1
.label_2226:
	mov	rdx, qword ptr [rsi + 0xd8]
	test	dl, 0x40
	jne	.label_2238
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x50], rcx
.label_2238:
	test	dl, dl
	jns	.label_2205
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_2205
.label_2170:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rdx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r8, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x40]
	movq	rbx, xmm0
	or	rbx, rdx
	or	rbx, r8
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
.label_2175:
	movq	rdx, xmm0
	or	rdx, rbx
	test	rdx, rdx
	mov	rbx, r9
	je	.label_2160
.label_2161:
	test	cl, 8
	je	.label_2256
	cmp	dword ptr [rbp - 0xa0], 1
	setne	cl
	test	eax, 0x400000
	je	.label_2157
	test	cl, cl
	jne	.label_2157
	nop	word ptr cs:[rax + rax]
.label_2158:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_2160
.label_2157:
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2167
	mov	rax, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	movdqu	xmm1, xmmword ptr [rax]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	movdqu	xmm1, xmmword ptr [rax + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x40]
	movq	rcx, xmm1
	or	rcx, r8
	or	rcx, rdx
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rax, xmm0
	or	rax, rcx
	jmp	.label_2171
.label_2167:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rax, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdx, xmm0
	or	rdx, rax
	or	rdx, rcx
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rax, xmm0
	or	rax, rdx
.label_2171:
	test	rax, rax
	je	.label_2160
	nop	word ptr cs:[rax + rax]
.label_2256:
	mov	qword ptr [rbp - 0xa8], rbx
	test	r12, r12
	jle	.label_2217
	mov	qword ptr [rbp - 0x78], r15
	mov	r14, qword ptr [rbp - 0x88]
	xor	r13d, r13d
	mov	qword ptr [rbp - 0x80], rdi
	jmp	.label_2219
.label_2217:
	xor	r13d, r13d
	jmp	.label_2221
.label_2206:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x90]
	movdqu	xmmword ptr [rax], xmm0
	mov	ebx, 0x1a
	mov	r12, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0x58]
	mov	r15, qword ptr [rbp - 0x70]
	jmp	.label_2223
	nop	word ptr cs:[rax + rax]
.label_2219:
	cmp	dword ptr [rbp - 0xa0], 1
	jne	.label_2235
	movzx	eax, byte ptr [rdi]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [r14 + rcx*8]
	mov	ebx, 0x13
	bt	rcx, rax
	jae	.label_2223
.label_2235:
	mov	qword ptr [rbp - 0x58], r13
	mov	qword ptr [rbp - 0x60], r12
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r9, qword ptr [r14]
	mov	r13, qword ptr [r14 + 8]
	mov	rdx, r9
	and	rdx, rax
	mov	rsi, r13
	and	rsi, rcx
	mov	qword ptr [rbp - 0x90], rsi
	mov	rdi, rsi
	mov	qword ptr [rbp - 0x98], rdx
	or	rdi, rdx
	mov	r11, qword ptr [rbp - 0x40]
	mov	r12, qword ptr [r14 + 0x10]
	mov	r8, r12
	and	r8, r11
	or	rdi, r8
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [r14 + 0x18]
	mov	r10, rsi
	and	r10, rdx
	mov	ebx, 0x13
	or	rdi, r10
	je	.label_2228
	mov	rbx, rax
	not	rbx
	and	rbx, r9
	not	r9
	and	r9, rax
	mov	qword ptr [rbp - 0xc0], r9
	mov	qword ptr [rbp - 0x50], r9
	mov	r15, rcx
	not	r15
	and	r15, r13
	mov	rax, r15
	or	rax, rbx
	not	r13
	and	r13, rcx
	mov	qword ptr [rbp - 0x48], r13
	mov	rcx, r11
	not	rcx
	and	rcx, r12
	or	rax, rcx
	not	r12
	and	r12, r11
	mov	qword ptr [rbp - 0x40], r12
	mov	rdi, rdx
	not	rdi
	and	rdi, rsi
	not	rsi
	and	rsi, rdx
	mov	qword ptr [rbp - 0x38], rsi
	or	rax, rdi
	mov	qword ptr [rbp - 0xb8], rsi
	je	.label_2260
	mov	r11, qword ptr [rbp - 0x60]
	mov	rax, r11
	shl	rax, 5
	mov	rdx, qword ptr [rbp - 0x88]
	mov	qword ptr [rdx + rax], rbx
	mov	qword ptr [rdx + rax + 8], r15
	mov	qword ptr [rdx + rax + 0x10], rcx
	mov	qword ptr [rdx + rax + 0x18], rdi
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], r8
	mov	qword ptr [r14 + 0x18], r10
	lea	rbx, [r11 + r11*2]
	mov	r15, qword ptr [rbp - 0x70]
	lea	rcx, [r15 + rbx*8]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r15 + rbx*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_2181
	mov	qword ptr [rbp - 0x98], rax
	mov	qword ptr [rbp - 0x90], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2206
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x98]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_2215
.label_2260:
	mov	r15, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0xa8]
	jmp	.label_2249
.label_2181:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
.label_2215:
	inc	qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	r15, qword ptr [rbp - 0x70]
.label_2249:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rbp - 0x78]
	call	re_node_set_insert
	mov	ebx, 0x1a
	test	al, al
	je	.label_2228
	or	r13, qword ptr [rbp - 0xc0]
	or	r12, qword ptr [rbp - 0xb8]
	or	r12, r13
	mov	ebx, 0
	mov	eax, 0x11
	cmove	ebx, eax
.label_2228:
	mov	r12, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0x58]
.label_2223:
	mov	eax, ebx
	and	al, 0x1f
	and	ebx, 0x1f
	cmp	al, 0x1a
	ja	.label_2241
	jmp	qword ptr [(rbx * 8) + label_2244]
.label_2539:
	inc	r13
	add	r14, 0x20
	add	qword ptr [rbp - 0x78], 0x18
	cmp	r13, r12
	jl	.label_2219
.label_2221:
	cmp	r13, r12
	mov	r14, qword ptr [rbp - 0xb0]
	mov	rbx, qword ptr [rbp - 0xa8]
	jne	.label_2160
	mov	rax, r13
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmm1, xmmword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x88]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	mov	rcx, rbx
	lea	rbx, [r13 + r13*2]
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rcx*8]
	movdqa	xmm0, xmmword ptr [rip + label_272]
	movdqu	xmmword ptr [r15 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r15 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2265
	mov	qword ptr [rax], r14
	inc	r13
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	r12, r13
	mov	rsi, qword ptr [rbp - 0x30]
	mov	r14, qword ptr [rbp - 0xb0]
	mov	rbx, qword ptr [rbp - 0xa8]
	nop	dword ptr [rax]
.label_2160:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jl	.label_2172
	test	r12, r12
	jle	.label_2176
.label_2241:
	lea	rax, [r12 + 1]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x48], 0
	lea	rdi, [r12*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_2187
	xor	ecx, ecx
.label_2187:
	mov	dword ptr [rbp - 0x64], ecx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r12, rcx
	ja	.label_2190
	test	rax, rax
	je	.label_2190
	lea	rax, [r12*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_2195
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa8], 0
	jmp	.label_2202
.label_2195:
	call	malloc
	test	rax, rax
	je	.label_2190
	mov	cl, 1
	mov	dword ptr [rbp - 0xa8], ecx
.label_2202:
	mov	qword ptr [rbp - 0x58], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xb8], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rax
	lea	r13, [rbp - 0x50]
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x78], rax
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rbp - 0x80], rax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], r12
	nop	word ptr cs:[rax + rax]
.label_2194:
	mov	qword ptr [rbp - 0x48], 0
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + rcx*8 + 8]
	test	rax, rax
	jle	.label_2230
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rbx, [rdx + rcx*8 + 8]
	mov	r14, qword ptr [rdx + rcx*8 + 0x10]
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_2263:
	mov	rcx, qword ptr [r14 + r12*8]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_2242
	mov	rax, qword ptr [rsi + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r13
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x64], eax
	test	eax, eax
	jne	.label_2168
	mov	rax, qword ptr [rbx]
	mov	rsi, qword ptr [rbp - 0x30]
.label_2242:
	inc	r12
	cmp	r12, rax
	jl	.label_2263
.label_2230:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x64]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_2253
	mov	ecx, dword ptr [rbp - 0x64]
	test	ecx, ecx
	jne	.label_2168
.label_2253:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2259
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + r15*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + r15*8]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	jmp	.label_2188
	nop	
.label_2259:
	mov	ecx, 1
	lea	rdi, [rbp - 0x64]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_2163
	mov	ecx, dword ptr [rbp - 0x64]
	test	ecx, ecx
	jne	.label_2168
.label_2163:
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	qword ptr [rcx + r15*8], rax
	je	.label_2225
	mov	rsi, qword ptr [rbp - 0x30]
	cmp	dword ptr [rsi + 0xb4], 1
	mov	al, 1
	jg	.label_2174
	mov	rax, qword ptr [rbp - 0x80]
.label_2174:
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_2183
.label_2225:
	mov	rsi, qword ptr [rbp - 0x30]
.label_2183:
	mov	ecx, 2
	lea	rdi, [rbp - 0x64]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_2188
	mov	eax, dword ptr [rbp - 0x64]
	test	eax, eax
	jne	.label_2168
	nop	word ptr cs:[rax + rax]
.label_2188:
	mov	rax, r15
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x78]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x78], rdx
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 8]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x98], rdx
	mov	rdx, qword ptr [rbp - 0xa0]
	or	rdx, qword ptr [rcx + rax + 0x18]
	mov	qword ptr [rbp - 0xa0], rdx
	inc	r15
	mov	r12, qword ptr [rbp - 0x60]
	cmp	r15, r12
	mov	rsi, qword ptr [rbp - 0x30]
	jl	.label_2194
	mov	rax, qword ptr [rbp - 0x80]
	and	al, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	edi, 8
	jne	.label_2218
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_2168
	cmp	qword ptr [rbp - 0x78], 0
	mov	r14, qword ptr [rbp - 0x70]
	mov	r15, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r13, qword ptr [rbp - 0x90]
	je	.label_2227
	lea	r8, [rdi - 8]
	mov	edx, 1
	xor	esi, esi
	mov	rbx, qword ptr [rbp - 0x78]
	jmp	.label_2233
.label_2264:
	mov	rcx, r10
	mov	r9, r8
.label_2237:
	add	r9, 8
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2237
	mov	rcx, qword ptr [rbp - 0x30]
	test	qword ptr [rcx + 0xb8], rdx
	je	.label_2197
	mov	rcx, qword ptr [r9 + r15*8]
	jmp	.label_2213
.label_2197:
	mov	rcx, qword ptr [r9]
.label_2213:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2246
	nop	word ptr [rax + rax]
.label_2233:
	test	bl, 1
	jne	.label_2264
.label_2246:
	add	rdx, rdx
	shr	rbx, 1
	inc	rsi
	test	rbx, rbx
	jne	.label_2233
.label_2227:
	test	r13, r13
	mov	r11, qword ptr [rbp - 0xa0]
	mov	r12, qword ptr [rbp - 0x98]
	je	.label_2252
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2156
.label_2255:
	mov	rdx, r9
	mov	rcx, r8
.label_2258:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2258
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xc0], rsi
	je	.label_2236
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2262
.label_2236:
	mov	rcx, qword ptr [rcx]
.label_2262:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2254
	nop	dword ptr [rax]
.label_2156:
	test	r13b, 1
	jne	.label_2255
.label_2254:
	add	rsi, rsi
	shr	r13, 1
	inc	rbx
	test	r13, r13
	jne	.label_2156
.label_2252:
	test	r12, r12
	je	.label_2245
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2165
.label_2177:
	mov	rdx, r9
	mov	rcx, r8
.label_2173:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2173
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xc8], rsi
	je	.label_2178
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2184
.label_2178:
	mov	rcx, qword ptr [rcx]
.label_2184:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2186
	nop	
.label_2165:
	test	r12b, 1
	jne	.label_2177
.label_2186:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_2165
.label_2245:
	test	r11, r11
	je	.label_2185
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2207
.label_2191:
	mov	rdx, r9
	mov	rcx, r8
.label_2198:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2198
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xd0], rsi
	je	.label_2200
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2166
.label_2200:
	mov	rcx, qword ptr [rcx]
.label_2166:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2240
	nop	
.label_2207:
	test	r11b, 1
	jne	.label_2191
.label_2240:
	add	rsi, rsi
	shr	r11, 1
	inc	rbx
	test	r11, r11
	jne	.label_2207
.label_2185:
	mov	rcx, qword ptr [rbp - 0x78]
	test	ch, 4
	je	.label_2209
	xor	ecx, ecx
	nop	
.label_2214:
	test	byte ptr [r10 + 1], 4
	jne	.label_2211
	inc	rcx
	add	r10, 0x20
	cmp	rcx, r15
	jl	.label_2214
	jmp	.label_2209
.label_2211:
	mov	rdx, r15
	shl	rdx, 4
	add	rdx, rdi
	mov	rsi, qword ptr [rbp - 0x80]
	test	sil, sil
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2209
	mov	qword ptr [rax + 0x850], rcx
.label_2209:
	mov	eax, dword ptr [rbp - 0xa8]
	test	al, al
	je	.label_2222
	call	free
.label_2222:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2232:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2232
	mov	rdi, r14
	call	free
	mov	al, 1
	jmp	.label_2164
.label_2190:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	jmp	.label_2239
.label_2265:
	lea	rax, [r15 + rbx*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	r12, r13
.label_2540:
	mov	rbx, -1
	test	r12, r12
	jle	.label_2231
	mov	rbx, r15
	add	rbx, 0x10
.label_2248:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2248
	mov	rbx, -1
.label_2231:
	mov	r12, rbx
.label_2176:
	mov	rdi, r15
	call	free
	test	r12, r12
	jne	.label_2229
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_2164
.label_2218:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_2168
	cmp	qword ptr [rbp - 0x78], 0
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	je	.label_2266
	lea	r8, [rdi - 8]
	mov	r9d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x78]
	jmp	.label_2162
.label_2168:
	mov	eax, dword ptr [rbp - 0xa8]
	test	al, al
	je	.label_2169
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_2169:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	r12, qword ptr [rbp - 0x60]
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x70]
	jle	.label_2180
.label_2239:
	mov	rbx, r15
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_2189:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2189
.label_2180:
	mov	rdi, r15
	call	free
.label_2229:
	xor	eax, eax
.label_2164:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2208:
	mov	rbx, qword ptr [rbp - 0x88]
	mov	rcx, r8
.label_2196:
	add	rcx, 8
	test	qword ptr [rbx], r9
	lea	rbx, [rbx + 0x20]
	je	.label_2196
	mov	rbx, qword ptr [rcx]
	mov	qword ptr [rax + rsi*8], rbx
	mov	rbx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + rbx*8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	jmp	.label_2192
.label_2162:
	test	dl, 1
	jne	.label_2208
.label_2192:
	add	r9, r9
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_2162
.label_2266:
	test	rcx, rcx
	mov	r12, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x98]
	je	.label_2210
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2216
.label_2234:
	mov	r10, rcx
	mov	rdx, r9
	mov	rcx, r8
.label_2220:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2220
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r12, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, r10
	jmp	.label_2201
.label_2216:
	test	cl, 1
	jne	.label_2234
.label_2201:
	add	rsi, rsi
	shr	rcx, 1
	inc	rbx
	test	rcx, rcx
	jne	.label_2216
.label_2210:
	test	rdx, rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x88]
	je	.label_2193
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2243
.label_2257:
	mov	r11, rdx
	mov	rdx, r9
	mov	rcx, r8
.label_2247:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2247
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r12, qword ptr [rbp - 0xa0]
	mov	rdx, r11
	jmp	.label_2250
.label_2243:
	test	dl, 1
	jne	.label_2257
.label_2250:
	add	rsi, rsi
	shr	rdx, 1
	inc	rbx
	test	rdx, rdx
	jne	.label_2243
.label_2193:
	test	r12, r12
	je	.label_2185
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2182
.label_2179:
	mov	r11, r12
	mov	rdx, r9
	mov	rcx, r8
.label_2159:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2159
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r12, r11
	jmp	.label_2199
.label_2182:
	test	r12b, 1
	jne	.label_2179
.label_2199:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_2182
	jmp	.label_2185
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x416660

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
	mov	r14, rsi
	mov	r13, rdi
	mov	r15, qword ptr [r14 + 0x18]
	mov	rbx, qword ptr [r14 + 0x10]
	movaps	xmm0, xmmword ptr [rip + label_272]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	test	rax, rax
	je	.label_2271
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2275
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x38], rax
	mov	dword ptr [rsp + 0x14], 0
	nop	word ptr cs:[rax + rax]
.label_2283:
	mov	rdx, r15
	test	rdx, rdx
	jle	.label_2284
	mov	rdi, qword ptr [r14]
	mov	ecx, dword ptr [rsp + 0x14]
	inc	ecx
	cmp	qword ptr [rdi + rdx*8], 0
	mov	eax, 0
	cmovne	ecx, eax
	cmp	ecx, dword ptr [r13 + 0xe0]
	jg	.label_2281
	mov	dword ptr [rsp + 0x14], ecx
	mov	qword ptr [rsp + 0x28], 0
	lea	r15, [rdx - 1]
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [rax + rdx*8 - 8]
	test	rax, rax
	je	.label_2277
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2277
	mov	rcx, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x18], rcx
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax + rax]
.label_2280:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, r12
	mov	qword ptr [rsp + 8], rcx
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2278
	mov	rax, r14
	mov	r14, r15
	mov	r15, rax
	mov	rdx, r13
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, r14
	call	check_node_accept_bytes
	test	eax, eax
	jle	.label_2274
	movsxd	rcx, eax
	mov	rsi, r14
	add	rcx, r14
	cmp	rcx, qword ptr [rsp + 0x48]
	jle	.label_2276
	mov	r14, r15
	mov	r15, rsi
	jmp	.label_2279
.label_2274:
	mov	rcx, r15
	mov	r15, r14
	mov	r14, rcx
	jne	.label_2279
	jmp	.label_2278
.label_2276:
	mov	r14, r15
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r15, rsi
	je	.label_2278
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_2278
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2285
	xor	edi, edi
	nop	dword ptr [rax]
.label_2269:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_2269
.label_2285:
	test	eax, eax
	je	.label_2278
	cmp	rdi, -1
	je	.label_2278
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2279
.label_2278:
	mov	rax, qword ptr [rsp + 0x18]
	add	r12, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	check_node_accept
	test	al, al
	je	.label_2268
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_2268
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2268
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_2270
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2267:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_2267
.label_2270:
	cmp	rsi, -1
	je	.label_2268
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_2268
	nop	dword ptr [rax]
.label_2279:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_2282
	movsxd	rcx, eax
	add	rcx, r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + r8*8]
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r9, r15
	call	check_dst_limits
	mov	ecx, 4
	test	al, al
	jne	.label_2272
.label_2282:
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_2272:
	or	cl, 4
	mov	ebp, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_2275
.label_2268:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_2280
.label_2277:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_2283
	jmp	.label_2275
.label_2284:
	xor	ebp, ebp
	jmp	.label_2275
.label_2281:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_2275:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_2273:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2271:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	jmp	.label_2273
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4169c0

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	xor	eax, eax
	test	r15, r15
	jle	.label_2286
	xor	ebp, ebp
	lea	r13, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_2289:
	mov	rsi, qword ptr [rbx + rbp*8]
	mov	rdx, qword ptr [r14 + rbp*8]
	test	rsi, rsi
	je	.label_2287
	test	rdx, rdx
	je	.label_2288
	add	rsi, 8
	add	rdx, 8
	mov	rdi, r13
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_2286
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r13
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_2288
	jmp	.label_2286
	nop	word ptr cs:[rax + rax]
.label_2287:
	mov	qword ptr [rbx + rbp*8], rdx
.label_2288:
	inc	rbp
	xor	eax, eax
	cmp	rbp, r15
	jl	.label_2289
.label_2286:
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
	#Procedure 0x416a70

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r10, rcx
	mov	rcx, rdx
	mov	r12, rsi
	mov	r11, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	mov	qword ptr [rsp + 0x18], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r15, qword ptr [rax + rcx*8]
	lea	rax, [r15 + 8]
	test	r15, r15
	cmove	rax, r15
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r10 + 8], 0
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x38], r12
	je	.label_2332
	test	r15, r15
	je	.label_2337
	mov	dword ptr [rsp + 0x50], 0
	lea	rdi, [rsp + 0x50]
	mov	qword ptr [rsp + 0x20], r11
	mov	rsi, r11
	mov	qword ptr [rsp + 0x28], r10
	mov	rdx, r10
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x50]
	test	r12d, r12d
	jne	.label_2310
	mov	r13, r14
	add	r13, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rdx, qword ptr [rsp + 0x28]
	jne	.label_2294
	mov	rdi, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	mov	r12d, 0xc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2305
	xor	ecx, ecx
.label_2305:
	test	rax, rax
	mov	dword ptr [rsp + 0x50], ecx
	je	.label_2310
	mov	rdx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rdx + 8], 0
	jle	.label_2294
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_2328:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rcx + rbx*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r13
	mov	rbp, rdx
	call	re_node_set_merge
	mov	dword ptr [rsp + 0x50], eax
	test	eax, eax
	jne	.label_2310
	inc	rbx
	cmp	rbx, qword ptr [rbp + 8]
	mov	rdx, rbp
	jl	.label_2328
.label_2294:
	mov	rdi, rdx
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, r13
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	mov	r9, qword ptr [rsp + 0x10]
	jne	.label_2301
	mov	r12, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [r12 + 0x28]
	test	rax, rax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x20]
	je	.label_2337
	mov	qword ptr [rsp + 0x48], r15
	jle	.label_2342
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	mov	qword ptr [rsp + 0x30], rax
	xor	r13d, r13d
	nop	
.label_2325:
	mov	rax, qword ptr [r12 + 0x30]
	mov	rax, qword ptr [rax + r13*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rcx + rax*8 + 0x10], r9
	jge	.label_2290
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rcx + rax*8 + 8], r9
	jl	.label_2290
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rdx + rax*8]
	mov	rbp, qword ptr [r11]
	shl	rcx, 4
	mov	r14, qword ptr [rbp + rcx]
	cmp	qword ptr [rdx + rax*8 + 0x18], r9
	mov	rax, qword ptr [r10 + 8]
	jne	.label_2306
	test	rax, rax
	jle	.label_2290
	mov	rdx, qword ptr [r10 + 0x10]
	mov	r15, -1
	mov	rsi, -1
	nop	dword ptr [rax]
.label_2333:
	mov	rbx, qword ptr [rdx]
	mov	rdi, rbx
	shl	rdi, 4
	movzx	ecx, byte ptr [rbp + rdi + 8]
	cmp	cl, 9
	je	.label_2291
	cmp	cl, 8
	jne	.label_2321
	cmp	r14, qword ptr [rbp + rdi]
	cmove	rsi, rbx
	jmp	.label_2321
	nop	word ptr cs:[rax + rax]
.label_2291:
	cmp	r14, qword ptr [rbp + rdi]
	cmove	r15, rbx
.label_2321:
	add	rdx, 8
	dec	rax
	jne	.label_2333
	test	rsi, rsi
	js	.label_2334
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2310
.label_2334:
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x38]
	js	.label_2290
	mov	r8, qword ptr [r10 + 8]
	test	r8, r8
	jle	.label_2290
	xor	r14d, r14d
.label_2330:
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rsi, qword ptr [rcx + r14*8]
	mov	rdi, qword ptr [r11 + 0x38]
	lea	rcx, [rsi + rsi*2]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_2314
	dec	rdx
	mov	rdi, qword ptr [rdi + rcx*8 + 0x10]
	mov	ebx, 0
	je	.label_2303
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_2308:
	lea	rbp, [rbx + rdx]
	shr	rbp, 1
	cmp	qword ptr [rdi + rbp*8], r15
	lea	rax, [rbp + 1]
	cmovl	rbx, rax
	cmovge	rdx, rbp
	cmp	rbx, rdx
	jb	.label_2308
.label_2303:
	cmp	rbx, -1
	je	.label_2314
	cmp	qword ptr [rdi + rbx*8], r15
	je	.label_2315
.label_2314:
	mov	rdi, qword ptr [r11 + 0x30]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_2316
	dec	rdx
	mov	rcx, qword ptr [rdi + rcx*8 + 0x10]
	mov	edi, 0
	je	.label_2322
	xor	edi, edi
	nop	dword ptr [rax + rax]
.label_2326:
	lea	rax, [rdi + rdx]
	shr	rax, 1
	cmp	qword ptr [rcx + rax*8], r15
	lea	rbp, [rax + 1]
	cmovl	rdi, rbp
	cmovge	rdx, rax
	cmp	rdi, rdx
	jb	.label_2326
.label_2322:
	cmp	rdi, -1
	je	.label_2316
	cmp	qword ptr [rcx + rdi*8], r15
	je	.label_2315
.label_2316:
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2310
	dec	r14
	mov	r8, qword ptr [r10 + 8]
	mov	r12, qword ptr [rsp + 0x38]
.label_2315:
	inc	r14
	cmp	r14, r8
	jl	.label_2330
	jmp	.label_2290
.label_2306:
	test	rax, rax
	jle	.label_2290
	xor	ebx, ebx
	jmp	.label_2292
	nop	dword ptr [rax]
.label_2320:
	mov	rbp, qword ptr [r11]
.label_2292:
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rsi, qword ptr [rcx + rbx*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	ecx, dword ptr [rbp + rdx + 8]
	mov	edi, 0xfe
	and	ecx, edi
	or	ecx, 1
	cmp	ecx, 9
	jne	.label_2296
	cmp	r14, qword ptr [rbp + rdx]
	jne	.label_2296
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2310
	mov	rax, qword ptr [r10 + 8]
	mov	r12, qword ptr [rsp + 0x38]
.label_2296:
	inc	rbx
	cmp	rbx, rax
	jl	.label_2320
	nop	dword ptr [rax + rax]
.label_2290:
	inc	r13
	cmp	r13, qword ptr [r12 + 0x28]
	jl	.label_2325
.label_2342:
	mov	dword ptr [rsp + 0xc], 0
	mov	r15, qword ptr [rsp + 0x48]
.label_2337:
	lea	rdi, [rsp + 0xc]
	mov	rsi, r11
	mov	rdx, r10
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [r12]
	mov	qword ptr [rdx + rcx*8], rax
	mov	r12d, dword ptr [rsp + 0xc]
	test	r12d, r12d
	je	.label_2329
	jmp	.label_2301
.label_2332:
	mov	rax, qword ptr [r12]
	mov	qword ptr [rax + rcx*8], 0
.label_2329:
	test	r15, r15
	je	.label_2299
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rax, qword ptr [rax + rcx*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_2299
	mov	rax, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rax + 0xc8]
	xor	r15d, r15d
	test	rax, rax
	jle	.label_2343
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rdx + 0xd8]
	xor	r15d, r15d
	mov	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_2300:
	lea	rsi, [rdx + r15]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	cmp	r15, rdx
	jl	.label_2300
.label_2343:
	cmp	r15, rax
	mov	rdx, qword ptr [rsp + 0x38]
	jge	.label_2313
	cmp	r15, -1
	je	.label_2313
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rsi, [r15 + r15*4]
	mov	qword ptr [rsp + 0x48], rsi
	cmp	qword ptr [rax + rsi*8 + 8], rcx
	jne	.label_2313
	mov	qword ptr [rsp + 0x50], 0
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2313
	lea	rax, [rdx + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0x90], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	shl	qword ptr [rsp + 0x48], 3
	mov	qword ptr [rsp + 0x30], r10
	nop	word ptr cs:[rax + rax]
.label_2340:
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [r10]
	mov	rdx, r14
	shl	rdx, 4
	movzx	eax, byte ptr [rax + rdx + 8]
	mov	r12, qword ptr [rsp + 0x38]
	cmp	r14, qword ptr [r12 + 0x10]
	jne	.label_2339
	cmp	eax, 4
	jne	.label_2295
	cmp	qword ptr [r12 + 0x18], rcx
	jne	.label_2298
	jmp	.label_2295
	nop	word ptr cs:[rax + rax]
.label_2339:
	cmp	eax, 4
	jne	.label_2295
.label_2298:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rax + 0xd8]
	add	rbx, qword ptr [rsp + 0x48]
	mov	r13, r15
	nop	dword ptr [rax]
.label_2336:
	cmp	qword ptr [rbx], r14
	jne	.label_2297
	mov	rax, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x10]
	mov	r9, rax
	sub	r9, rdx
	add	r9, rcx
	cmp	rax, rdx
	je	.label_2312
	lea	rsi, [r14*8]
	add	rsi, qword ptr [r10 + 0x18]
	jmp	.label_2319
.label_2312:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rdx, [r14 + r14*2]
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
.label_2319:
	cmp	r9, qword ptr [r12 + 0x18]
	jg	.label_2297
	mov	rax, qword ptr [r12]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_2297
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2297
	mov	r8, qword ptr [rsi]
	dec	rax
	mov	rbp, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2331
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2341:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rbp + rsi*8], r8
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2341
.label_2331:
	cmp	rdx, -1
	je	.label_2297
	cmp	qword ptr [rbp + rdx*8], r8
	jne	.label_2297
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r14
	call	check_dst_limits
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	test	al, al
	jne	.label_2297
	cmp	qword ptr [rsp + 0x50], 0
	jne	.label_2302
	mov	rax, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x80], rax
	movups	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbx, qword ptr [r12 + 0x28]
	mov	qword ptr [rsp + 0x78], rbx
	test	rbx, rbx
	jle	.label_2317
	mov	qword ptr [rsp + 0x70], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_2324
	mov	rsi, qword ptr [r12 + 0x30]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_2302
.label_2317:
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_2302:
	mov	qword ptr [rsp + 0x60], r14
	mov	qword ptr [rsp + 0x68], rcx
	lea	rdi, [rsp + 0x70]
	mov	rsi, r13
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, 0xc
	test	al, al
	je	.label_2304
	mov	rbp, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rbp + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x50]
	call	sift_states_backward
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2304
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 8]
	test	rsi, rsi
	je	.label_2318
	mov	rdi, r10
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x90]
	call	merge_state_array
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2304
.label_2318:
	mov	qword ptr [rbp + rcx*8], rbx
	mov	rsi, qword ptr [rsp + 0x78]
	test	rsi, rsi
	jle	.label_2309
	mov	rbp, rsi
	dec	rbp
	mov	r8, qword ptr [rsp + 0x80]
	mov	edx, 0
	je	.label_2323
	mov	rdi, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_2327:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [r8 + rbx*8], r13
	lea	rax, [rbx + 1]
	cmovl	rdx, rax
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_2327
.label_2323:
	cmp	qword ptr [r8 + rdx*8], r13
	mov	rdi, -1
	cmove	rdi, rdx
	test	rdi, rdi
	js	.label_2309
	cmp	rsi, rdi
	jle	.label_2309
	mov	qword ptr [rsp + 0x78], rbp
	cmp	rbp, rdi
	jle	.label_2309
	lea	r12, [rdx + 1]
	cmp	rbp, r12
	mov	r11, r12
	cmovge	r11, rbp
	sub	r11, rdx
	cmp	r11, 4
	jb	.label_2335
	mov	rax, r11
	and	rax, 0xfffffffffffffffc
	mov	r9, r11
	and	r9, 0xfffffffffffffffc
	je	.label_2335
	cmp	rbp, r12
	cmovge	r12, rbp
	sub	r12, rdx
	add	r12, -4
	shr	r12, 2
	lea	r10d, [r12 + 1]
	and	r10d, 1
	test	r12, r12
	mov	edi, 0
	je	.label_2338
	lea	rbx, [r8 + rdx*8 + 0x38]
	lea	rsi, [r10 - 1]
	sub	rsi, r12
	xor	edi, edi
	nop	dword ptr [rax]
.label_2307:
	movups	xmm0, xmmword ptr [rbx + rdi*8 - 0x30]
	movups	xmm1, xmmword ptr [rbx + rdi*8 - 0x20]
	movups	xmmword ptr [rbx + rdi*8 - 0x38], xmm0
	movups	xmmword ptr [rbx + rdi*8 - 0x28], xmm1
	movups	xmm0, xmmword ptr [rbx + rdi*8 - 0x10]
	movups	xmm1, xmmword ptr [rbx + rdi*8]
	movups	xmmword ptr [rbx + rdi*8 - 0x18], xmm0
	movups	xmmword ptr [rbx + rdi*8 - 8], xmm1
	add	rdi, 8
	add	rsi, 2
	jne	.label_2307
.label_2338:
	test	r10, r10
	je	.label_2311
	add	rdi, rdx
	movups	xmm0, xmmword ptr [r8 + rdi*8 + 8]
	movups	xmm1, xmmword ptr [r8 + rdi*8 + 0x18]
	movups	xmmword ptr [r8 + rdi*8], xmm0
	movups	xmmword ptr [r8 + rdi*8 + 0x10], xmm1
.label_2311:
	cmp	r11, r9
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 0x30]
	je	.label_2309
	add	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_2335:
	mov	rax, qword ptr [r8 + rdx*8 + 8]
	mov	qword ptr [r8 + rdx*8], rax
	inc	rdx
	cmp	rdx, rbp
	jl	.label_2335
.label_2309:
	lea	rbx, [r13 + r13*4]
	shl	rbx, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbx, qword ptr [rax + 0xd8]
	mov	r12, qword ptr [rsp + 0x38]
	nop	dword ptr [rax + rax]
.label_2297:
	inc	r13
	cmp	byte ptr [rbx + 0x20], 0
	lea	rbx, [rbx + 0x28]
	jne	.label_2336
.label_2295:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, rax
	inc	rsi
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	rdx, rsi
	mov	qword ptr [rsp + 0x20], rdx
	cmp	rsi, qword ptr [rax + 8]
	jl	.label_2340
.label_2304:
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_2293
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
.label_2293:
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	je	.label_2299
	jmp	.label_2301
.label_2313:
	mov	dword ptr [rsp + 0xc], 0
.label_2299:
	xor	r12d, r12d
.label_2301:
	mov	eax, r12d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2310:
	mov	dword ptr [rsp + 0xc], r12d
	jmp	.label_2301
.label_2324:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x70]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_2304
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417470

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rcx, qword ptr [r15 + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_2351
	mov	r11, qword ptr [r14 + 8]
	test	r11, r11
	je	.label_2351
	lea	rax, [r11 + rcx]
	mov	r13, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	lea	rsi, [rdx + rax]
	cmp	rsi, r13
	jle	.label_2353
	add	r13, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [r13*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2351
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], r13
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r15 + 8]
	mov	r11, qword ptr [r14 + 8]
	jmp	.label_2352
.label_2353:
	lea	r8, [r12 + 0x10]
.label_2352:
	lea	r10, [rcx + rdx]
	add	r10, r11
	dec	rdx
	mov	rsi, qword ptr [r15 + 0x10]
	mov	r9, qword ptr [r14 + 0x10]
.label_2349:
	dec	rcx
	mov	rdi, r11
.label_2344:
	lea	r11, [rdi - 1]
	mov	rax, qword ptr [r9 + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2358:
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_2354
	jl	.label_2356
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2358
	jmp	.label_2348
	nop	word ptr cs:[rax + rax]
.label_2356:
	cmp	rdi, 2
	mov	rdi, r11
	jge	.label_2344
	jmp	.label_2348
	nop	dword ptr [rax + rax]
.label_2354:
	mov	rbx, qword ptr [r8]
	test	rdx, rdx
	js	.label_2350
	nop	dword ptr [rax + rax]
.label_2355:
	cmp	qword ptr [rbx + rdx*8], rax
	jle	.label_2345
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_2355
	jmp	.label_2350
.label_2345:
	je	.label_2357
	nop	word ptr cs:[rax + rax]
.label_2350:
	mov	qword ptr [rbx + r10*8 - 8], rax
	dec	r10
.label_2357:
	test	rcx, rcx
	jle	.label_2348
	cmp	rdi, 2
	jge	.label_2349
.label_2348:
	mov	rdx, qword ptr [r12 + 8]
	lea	rcx, [rdx - 1]
	mov	r9, qword ptr [r15 + 8]
	add	r9, rcx
	add	r9, qword ptr [r14 + 8]
	mov	rax, r9
	sub	rax, r10
	lea	r8, [rax + 1]
	lea	rsi, [rax + rdx + 1]
	mov	qword ptr [r12 + 8], rsi
	mov	rdi, qword ptr [r12 + 0x10]
	test	rdx, rdx
	jle	.label_2346
	test	rax, rax
	js	.label_2346
	xor	edx, edx
.label_2361:
	lea	rax, [rcx + r8]
	lea	rax, [rdi + rax*8]
	nop	dword ptr [rax + rax]
.label_2359:
	mov	rbx, qword ptr [rdi + r9*8]
	mov	rsi, qword ptr [rdi + rcx*8]
	cmp	rbx, rsi
	jg	.label_2360
	mov	qword ptr [rax], rsi
	add	rax, -8
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2359
	jmp	.label_2346
	nop	
.label_2360:
	dec	r9
	dec	r8
	mov	qword ptr [rax], rbx
	jne	.label_2361
	jmp	.label_2347
.label_2346:
	mov	rdx, r8
.label_2347:
	lea	rsi, [rdi + r10*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_2351:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417630

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
	mov	qword ptr [rsp + 0x30], rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rax, qword ptr [rdi + 0x38]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x10], 0
	lea	rcx, [r15 + r15*2]
	mov	r9, qword ptr [rax + rcx*8 + 8]
	test	r9, r9
	jle	.label_2373
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rcx
	lea	r13, [rax + rcx*8 + 8]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2376:
	mov	r11, qword ptr [r13 + 8]
	mov	rax, qword ptr [r11 + r14*8]
	cmp	rax, r15
	je	.label_2368
	mov	rdx, qword ptr [rdi]
	mov	rcx, rax
	shl	rcx, 4
	test	byte ptr [rdx + rcx + 8], 8
	je	.label_2368
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rax + rax*2]
	mov	rax, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rax]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_2375
	mov	r10, qword ptr [rax + 8]
.label_2375:
	test	r9, r9
	jle	.label_2367
	mov	rax, r9
	dec	rax
	mov	ebp, 0
	je	.label_2382
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2387:
	lea	rbx, [rbp + rax]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rcx, [rbx + 1]
	cmovl	rbp, rcx
	cmovge	rax, rbx
	cmp	rbp, rax
	jb	.label_2387
.label_2382:
	cmp	rbp, -1
	je	.label_2367
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2369
.label_2367:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_2369
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2371
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2363:
	lea	rcx, [rax + rbp]
	shr	rcx, 1
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbp, rcx
	cmp	rax, rbp
	jb	.label_2363
.label_2371:
	cmp	rax, -1
	je	.label_2369
	cmp	qword ptr [rbx + rax*8], rsi
	je	.label_2385
.label_2369:
	test	r10, r10
	jle	.label_2368
	test	r9, r9
	jle	.label_2372
	mov	rax, r9
	dec	rax
	mov	esi, 0
	je	.label_2388
	xor	esi, esi
	nop	dword ptr [rax]
.label_2384:
	lea	rcx, [rsi + rax]
	shr	rcx, 1
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rsi, rdx
	cmovge	rax, rcx
	cmp	rsi, rax
	jb	.label_2384
.label_2388:
	cmp	rsi, -1
	je	.label_2372
	cmp	qword ptr [r11 + rsi*8], r10
	je	.label_2368
.label_2372:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_2368
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2378
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_2383:
	lea	rcx, [rax + rsi]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rsi, rcx
	cmp	rax, rsi
	jb	.label_2383
.label_2378:
	cmp	rax, -1
	je	.label_2368
	cmp	qword ptr [rbp + rax*8], r10
	jne	.label_2368
.label_2385:
	mov	rbx, rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2377
	mov	r9, qword ptr [r13]
	mov	rdi, rbx
	nop	word ptr cs:[rax + rax]
.label_2368:
	inc	r14
	cmp	r14, r9
	jl	.label_2376
	test	r9, r9
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x20]
	jle	.label_2373
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	r10, [r9 - 1]
	mov	r8, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2379:
	test	r9, r9
	mov	rbp, qword ptr [r8 + r15*8]
	jle	.label_2362
	test	r10, r10
	mov	eax, 0
	je	.label_2365
	mov	rcx, r10
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_2370:
	lea	rdx, [rax + rcx]
	shr	rdx, 1
	cmp	qword ptr [rdi + rdx*8], rbp
	lea	rbx, [rdx + 1]
	cmovl	rax, rbx
	cmovge	rcx, rdx
	cmp	rax, rcx
	jb	.label_2370
.label_2365:
	cmp	rax, -1
	je	.label_2362
	cmp	qword ptr [rdi + rax*8], rbp
	je	.label_2366
.label_2362:
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jle	.label_2366
	mov	r11, r14
	dec	r11
	mov	rdx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2380
	mov	rbx, r11
	xor	eax, eax
	nop	dword ptr [rax]
.label_2386:
	lea	rcx, [rax + rbx]
	shr	rcx, 1
	cmp	qword ptr [rdx + rcx*8], rbp
	lea	rsi, [rcx + 1]
	cmovl	rax, rsi
	cmovge	rbx, rcx
	cmp	rax, rbx
	jb	.label_2386
.label_2380:
	cmp	qword ptr [rdx + rax*8], rbp
	mov	rbx, -1
	cmove	rbx, rax
	test	rbx, rbx
	js	.label_2366
	cmp	r14, rbx
	jle	.label_2366
	mov	qword ptr [r12 + 8], r11
	cmp	r11, rbx
	jle	.label_2366
	nop	
.label_2374:
	mov	rcx, qword ptr [rdx + rax*8 + 8]
	mov	qword ptr [rdx + rax*8], rcx
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2374
	nop	word ptr cs:[rax + rax]
.label_2366:
	inc	r15
	cmp	r15, qword ptr [r13]
	jl	.label_2379
	jmp	.label_2381
.label_2373:
	mov	rdi, qword ptr [rsp + 0x10]
.label_2381:
	call	free
	xor	ebp, ebp
.label_2364:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2377:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	jmp	.label_2364
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417990

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
	mov	qword ptr [rsp], r9
	mov	qword ptr [rsp + 0x30], r8
	mov	qword ptr [rsp + 0x28], rdx
	mov	r9, rsi
	mov	r10, qword ptr [rdi + 0x98]
	mov	r8, qword ptr [rdi + 0xc8]
	xor	r14d, r14d
	test	r8, r8
	jle	.label_2398
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r14d, r14d
	mov	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_2397:
	lea	rsi, [rdx + r14]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	lea	rsi, [rax + rax*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rax
	lea	rsi, [rax + 1]
	cmovl	r14, rsi
	cmp	r14, rdx
	jl	.label_2397
.label_2398:
	cmp	r14, r8
	jge	.label_2391
	mov	rsi, qword ptr [rdi + 0xd8]
	lea	rdx, [r14 + r14*4]
	cmp	qword ptr [rsi + rdx*8 + 8], rcx
	je	.label_2392
.label_2391:
	mov	r14, -1
.label_2392:
	xor	r12d, r12d
	test	r8, r8
	jle	.label_2399
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r12d, r12d
	mov	rdx, r8
	nop	
.label_2390:
	lea	rsi, [rdx + r12]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	lea	rsi, [rax + rax*4]
	mov	rbx, qword ptr [rsp]
	cmp	qword ptr [rbp + rsi*8 + 8], rbx
	cmovge	rdx, rax
	lea	rsi, [rax + 1]
	cmovl	r12, rsi
	cmp	r12, rdx
	jl	.label_2390
.label_2399:
	cmp	r12, r8
	jge	.label_2400
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rdx, [r12 + r12*4]
	mov	rsi, qword ptr [rsp]
	cmp	qword ptr [rax + rdx*8 + 8], rsi
	je	.label_2402
.label_2400:
	mov	r12, -1
.label_2402:
	cmp	qword ptr [r9 + 8], 0
	jle	.label_2393
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], r10
	nop	word ptr cs:[rax + rax]
.label_2403:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rdx, qword ptr [r9 + 0x10]
	mov	r11, qword ptr [rdx + r15*8]
	lea	rsi, [r11 + r11*4]
	mov	rdx, qword ptr [rax + rsi*8]
	mov	rbx, qword ptr [r10]
	shl	rdx, 4
	mov	rdx, qword ptr [rbx + rdx]
	mov	rbp, qword ptr [rax + rsi*8 + 0x10]
	mov	r13d, 0xffffffff
	cmp	rbp, rcx
	jle	.label_2394
	mov	ebx, 0xffffffff
	jmp	.label_2396
	nop	dword ptr [rax]
.label_2394:
	mov	rbx, qword ptr [rax + rsi*8 + 0x18]
	cmp	rbx, rcx
	jge	.label_2395
	mov	ebx, 1
	jmp	.label_2396
	nop	word ptr cs:[rax + rax]
.label_2395:
	xor	r8d, r8d
	cmp	rbp, rcx
	sete	r8b
	xor	esi, esi
	cmp	rbx, rcx
	sete	sil
	add	esi, esi
	xor	ebx, ebx
	or	esi, r8d
	je	.label_2396
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, r14
	mov	rbx, rdx
	call	check_dst_limits_calc_pos_1
	mov	rdx, rbx
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	ebx, eax
	mov	rax, qword ptr [r9 + 0x10]
	mov	r11, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rsi, [r11 + r11*4]
	mov	rbp, qword ptr [rax + rsi*8 + 0x10]
	nop	dword ptr [rax]
.label_2396:
	cmp	rbp, qword ptr [rsp]
	jg	.label_2389
	lea	rsi, [r11 + r11*4]
	mov	rax, qword ptr [rax + rsi*8 + 0x18]
	mov	r13d, 1
	cmp	rax, qword ptr [rsp]
	jl	.label_2389
	mov	r11d, ebx
	xor	ebx, ebx
	mov	r8, qword ptr [rsp]
	cmp	rbp, r8
	sete	bl
	xor	esi, esi
	cmp	rax, r8
	sete	sil
	add	esi, esi
	xor	r13d, r13d
	or	esi, ebx
	mov	ebx, r11d
	je	.label_2389
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r8, r12
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r13d, eax
	nop	word ptr cs:[rax + rax]
.label_2389:
	cmp	r13d, ebx
	mov	al, 1
	jne	.label_2401
	inc	r15
	cmp	r15, qword ptr [r9 + 8]
	jl	.label_2403
.label_2393:
	xor	eax, eax
.label_2401:
	add	rsp, 0x38
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
	#Procedure 0x417c20

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x20], rdi
	mov	r10, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [r10 + 0x30]
	lea	rcx, [r15 + r15*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_2411
	lea	r11, [rax + rcx*8 + 8]
	mov	esi, 1
	mov	ecx, edx
	shl	rsi, cl
	mov	eax, dword ptr [rsp + 0xc]
	mov	ecx, eax
	shl	ecx, 0x1f
	sar	ecx, 0x1f
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x50], rsi
	xor	rsi, 0xffff
	mov	qword ptr [rsp + 0x28], rsi
	mov	ecx, eax
	and	ecx, 2
	mov	dword ptr [rsp + 0x10], ecx
	shr	ecx, 1
	cmp	rdx, 0x3f
	setg	bl
	mov	dword ptr [rsp + 0x14], ecx
	or	bl, cl
	mov	byte ptr [rsp + 0xb], bl
	and	eax, 1
	mov	dword ptr [rsp + 0x18], eax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], r10
	mov	qword ptr [rsp + 0x30], rdx
	nop	word ptr cs:[rax + rax]
.label_2410:
	mov	rax, qword ptr [r11 + 8]
	mov	r14, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r10]
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_2404
	cmp	al, 8
	je	.label_2413
	cmp	al, 4
	jne	.label_2412
	cmp	r8, -1
	je	.label_2412
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x20]
	add	r13, qword ptr [rax + 0xd8]
	mov	r12d, ecx
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_2419:
	mov	ebp, 7
	cmp	qword ptr [r13], r14
	jne	.label_2405
	cmp	rdx, 0x3f
	jg	.label_2417
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x50], rax
	je	.label_2405
.label_2417:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r15
	jne	.label_2408
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_2407
	nop	dword ptr [rax + rax]
.label_2408:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rbx, r8
	mov	r14, r11
	call	check_dst_limits_calc_pos_1
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	mov	rbx, qword ptr [rsp + 0x48]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_2407
	test	eax, eax
	jne	.label_2415
	cmp	dword ptr [rsp + 0x10], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x14]
	je	.label_2416
	jmp	.label_2407
.label_2415:
	xor	ebp, ebp
	cmp	rdx, 0x3f
	jg	.label_2405
.label_2416:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x28]
	and	eax, ecx
	mov	word ptr [r13 + 0x22], ax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2405:
	mov	ecx, r12d
.label_2407:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_2409
	test	al, al
	jne	.label_2418
.label_2409:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_2419
	jmp	.label_2412
	nop	word ptr cs:[rax + rax]
.label_2404:
	cmp	dword ptr [rsp + 0x10], 0
	je	.label_2412
	xor	eax, eax
	jmp	.label_2414
	nop	dword ptr [rax + rax]
.label_2413:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_2412
	mov	eax, 0xffffffff
.label_2414:
	cmp	qword ptr [rdi], rdx
	jne	.label_2412
	jmp	.label_2406
.label_2418:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_2406
	nop	dword ptr [rax]
.label_2412:
	inc	rbx
	cmp	rbx, qword ptr [r11]
	jl	.label_2410
.label_2411:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_2406:
	add	rsp, 0x58
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
	#Procedure 0x417e80

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
	jne	.label_2421
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_2420
	test	cl, cl
	jne	.label_2420
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_2420
.label_2421:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_2420
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2420:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417ee0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_2423
	cmp	byte ptr [rax], 0x43
	jne	.label_2425
	cmp	byte ptr [rax + 1], 0
	je	.label_2422
.label_2425:
	mov	esi, OFFSET FLAT:label_2424
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_2423
.label_2422:
	xor	ebx, ebx
.label_2423:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417f20

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_47
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_2426
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x417f50

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
