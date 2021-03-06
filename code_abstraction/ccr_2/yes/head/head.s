	.section	.text
	.align	32
	#Procedure 0x401680

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
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
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
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
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
	mov	esi, OFFSET FLAT:label_23
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
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_18
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_18
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
.label_9:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
	#Procedure 0x4018f0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4168
	mov	rbx, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_75
	call	setlocale
	mov	edi, OFFSET FLAT:label_79
	mov	esi, OFFSET FLAT:label_80
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_79
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + have_read_stdin],  0
	mov	byte ptr [rip + print_headers],  0
	mov	byte ptr [rip + line_end],  1
	mov	r15b, 1
	xor	ebp, ebp
	mov	eax, 0xa
	mov	qword ptr [rsp + 0x18], rax
	cmp	r13d, 2
	jl	.label_82
	mov	rax, qword ptr [rbx + 8]
	mov	ecx, 0xa
	mov	qword ptr [rsp + 0x18], rcx
	cmp	byte ptr [rax], 0x2d
	jne	.label_82
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	mov	edx, 0xa
	mov	qword ptr [rsp + 0x18], rdx
	cmp	ecx, 9
	ja	.label_82
	lea	r12, [rbx + 8]
	lea	r14, [rax + 1]
	add	rax, 2
	nop	dword ptr [rax]
.label_161:
	movsx	ecx, byte ptr [rax]
	lea	edx, [rcx - 0x30]
	inc	rax
	cmp	edx, 0xa
	jb	.label_161
	test	cl, cl
	je	.label_101
	mov	r9, r14
	mov	r8, rbx
	xor	edx, edx
	mov	r15b, 1
	mov	r14, rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_120:
	mov	ebx, r15d
	mov	esi, edx
	movsx	edi, cl
	add	edi, -0x62
	cmp	edi, 0x18
	ja	.label_108
	xor	r15d, r15d
	xor	edx, edx
	jmp	qword ptr [(rdi * 8) + label_111]
.label_547:
	xor	r15d, r15d
	mov	dl, cl
	jmp	.label_113
.label_548:
	mov	r15b, 1
	jmp	.label_114
.label_549:
	mov	ebp, 2
	jmp	.label_116
.label_550:
	mov	ebp, 1
	jmp	.label_116
.label_551:
	mov	byte ptr [rip + line_end],  0
.label_116:
	mov	r15b, bl
.label_114:
	mov	dl, sil
.label_113:
	mov	cl, byte ptr [r14]
	inc	r14
	test	cl, cl
	jne	.label_120
	mov	byte ptr [rax - 1], dl
	test	dl, dl
	je	.label_121
	mov	byte ptr [rax], 0
.label_121:
	test	r15b, 1
	mov	rbx, r8
	mov	r14, r9
	jne	.label_122
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	jmp	.label_128
.label_82:
	mov	r12, rbx
.label_107:
	mov	qword ptr [rsp + 0x70], r15
	xor	eax, eax
	mov	qword ptr [rsp + 0x88], rax
	jmp	.label_130
	nop	dword ptr [rax + rax]
.label_583:
	mov	ebp, 1
.label_130:
	mov	r14d, ebp
	jmp	.label_135
.label_584:
	mov	byte ptr [rip + line_end],  0
	nop	word ptr cs:[rax + rax]
.label_135:
	mov	edx, OFFSET FLAT:label_136
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x62
	jle	.label_140
	lea	eax, [rbx - 0x63]
	cmp	eax, 0x1d
	ja	.label_39
	mov	ebp, 2
	jmp	qword ptr [(rax * 8) + label_144]
.label_581:
	mov	rbx, qword ptr [rip + optarg]
	cmp	byte ptr [rbx], 0x2d
	sete	al
	mov	qword ptr [rsp + 0x88], rax
	jne	.label_145
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
.label_145:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_98
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_135
.label_582:
	mov	rbx, qword ptr [rip + optarg]
	cmp	byte ptr [rbx], 0x2d
	sete	al
	mov	qword ptr [rsp + 0x88], rax
	jne	.label_153
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
.label_153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_98
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x18], rax
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_135
.label_585:
	mov	byte ptr [rip + presume_input_pipe],  1
	jmp	.label_135
.label_140:
	cmp	ebx, -1
	jne	.label_166
	cmp	r14d, 1
	je	.label_168
	test	r14d, r14d
	jne	.label_169
	lea	eax, [r13 - 1]
	cmp	dword ptr [rip + optind],  eax
	jge	.label_169
.label_168:
	mov	byte ptr [rip + print_headers],  1
.label_169:
	mov	rax, qword ptr [rsp + 0x70]
	and	al, 1
	mov	qword ptr [rsp + 0x70], rax
	jne	.label_132
	cmp	qword ptr [rsp + 0x18], 0
	jns	.label_132
	mov	rax, qword ptr [rsp + 0x88]
	test	al, al
	jne	.label_173
.label_132:
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r13d
	lea	rax, [r12 + rax*8]
	mov	r14d, OFFSET FLAT:main.default_file_list
	cmovl	r14, rax
	mov	r15, qword ptr [r14]
	mov	al, 1
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x18]
	je	.label_155
	lea	rax, [r12 + 0x2000]
	mov	qword ptr [rsp + 0x98], rax
	lea	rax, [r12 + r12 + 0x4000]
	mov	qword ptr [rsp + 0xb0], rax
	mov	eax, r12d
	and	eax, 0x1fff
	mov	ecx, 0x2000
	mov	qword ptr [rsp + 0xa8], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 0xc8], rcx
	lea	rax, [rcx + r12]
	shr	rax, 0xd
	mov	qword ptr [rsp + 0x90], rax
	inc	rax
	cmp	rax, 0x10
	mov	ecx, 0x10
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0xc0], rcx
	mov	qword ptr [rsp + 0xa0], rax
	shr	rax, 1
	mov	qword ptr [rsp + 0xb8], rax
	mov	al, 1
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x80], r14
	mov	qword ptr [rsp + 0x18], r12
	nop	word ptr [rax + rax]
.label_88:
	mov	byte ptr [rsp + 0x3f], al
	cmp	byte ptr [r15], 0x2d
	jne	.label_171
	cmp	byte ptr [r15 + 1], 0
	je	.label_51
.label_171:
	mov	dword ptr [rsp + 0x7c], 0
	xor	esi, esi
	xor	eax, eax
	mov	rdi, r15
	call	open
	mov	qword ptr [rsp + 0x10], rax
	test	eax, eax
	jns	.label_31
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	jmp	.label_59
.label_51:
	mov	byte ptr [rip + have_read_stdin],  1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	al, 1
	mov	dword ptr [rsp + 0x7c], eax
.label_31:
	cmp	byte ptr [rip + print_headers],  1
	jne	.label_74
	mov	al, byte ptr [rip + write_header.first_file]
	test	al, al
	mov	edx, OFFSET FLAT:label_75
	mov	eax, OFFSET FLAT:label_76
	cmovne	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_77
	xor	eax, eax
	mov	rcx, r15
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
.label_74:
	mov	rax, qword ptr [rsp + 0x88]
	test	al, al
	je	.label_83
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rdx, [rsp + 0xd0]
	call	__fxstat
	test	eax, eax
	je	.label_90
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
.label_70:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r14, qword ptr [rsp + 0x80]
	jmp	.label_41
	nop	word ptr [rax + rax]
.label_83:
	mov	qword ptr [rsp + 0x20], r13
	mov	r13, r15
	mov	rax, qword ptr [rsp + 0x70]
	mov	r12b, 1
	test	al, al
	je	.label_102
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_119
	mov	r15, rax
	lea	rbp, [rsp + 0x2160]
	nop	word ptr cs:[rax + rax]
.label_134:
	mov	edx, 0x2000
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	safe_read
	cmp	rax, -1
	je	.label_117
	test	rax, rax
	je	.label_119
	mov	cl, byte ptr [rip + line_end]
	test	cl, cl
	mov	ecx, 0
	mov	edx, 0xa
	cmovne	ecx, edx
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_126:
	cmp	rbx, rax
	jae	.label_125
	movsx	edx, byte ptr [rsp + rbx + 0x2160]
	inc	rbx
	cmp	edx, ecx
	jne	.label_126
	dec	r15
	jne	.label_126
	jmp	.label_129
	nop	
.label_125:
	lea	rbp, [rsp + 0x2160]
	mov	rdi, rbp
	mov	rsi, rbx
	call	xwrite_stdout
	test	r15, r15
	jne	.label_134
	jmp	.label_119
.label_90:
	mov	cl, byte ptr [rip + presume_input_pipe]
	mov	qword ptr [rsp + 0x40], -1
	mov	al, 1
	test	cl, cl
	jne	.label_147
	movzx	eax, word ptr [rsp + 0xe8]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_138
	xor	r12d, r12d
	xor	esi, esi
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rcx, r15
	call	elseek
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	js	.label_55
	mov	al, byte ptr [rip + presume_input_pipe]
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_147
.label_102:
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_119
	mov	ebx, 0x2000
	mov	r14, rax
	lea	r15, [rsp + 0x2160]
	nop	
.label_154:
	cmp	r14, rbx
	cmovb	rbx, r14
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	rdx, rbx
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	je	.label_100
	cmp	rbp, -1
	je	.label_143
	lea	r15, [rsp + 0x2160]
	mov	rdi, r15
	mov	rsi, rbp
	call	xwrite_stdout
	sub	r14, rbp
	jne	.label_154
.label_100:
	mov	r14, qword ptr [rsp + 0x80]
.label_119:
	mov	r15, r13
.label_139:
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_41
.label_138:
	xor	eax, eax
.label_147:
	mov	r14, qword ptr [rsp + 0x100]
	cmp	qword ptr [rsp + 0x40], 0
	sets	cl
	or	cl, al
	mov	rax, qword ptr [rsp + 0x70]
	test	al, al
	je	.label_157
	test	cl, 1
	jne	.label_57
	mov	rax, qword ptr [rsp + 0x108]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	cmp	r14, rcx
	jle	.label_57
	mov	r12b, 1
	mov	rax, r14
	sub	rax, qword ptr [rsp + 0x40]
	jle	.label_55
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x33
	add	rcx, rax
	and	rcx, 0xffffffffffffe000
	sub	rax, rcx
	mov	ebx, 0x2000
	cmovne	rbx, rax
	sub	r14, rbx
	xor	r12d, r12d
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rcx, r15
	call	elseek
	test	rax, rax
	js	.label_55
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsp + 0x160]
	mov	rdx, rbx
	call	safe_read
	mov	rbp, rax
	cmp	rbp, -1
	je	.label_34
	mov	qword ptr [rsp + 0x20], r13
	mov	rsi, qword ptr [rsp + 0x18]
	test	rsi, rsi
	mov	rbx, rsi
	je	.label_37
	test	rbp, rbp
	mov	rbx, rsi
	je	.label_37
	movsx	eax, byte ptr [rsp + rbp + 0x15f]
	mov	cl, byte ptr [rip + line_end]
	test	cl, cl
	mov	ecx, 0
	mov	edx, 0xa
	cmovne	ecx, edx
	xor	edx, edx
	cmp	eax, ecx
	setne	dl
	mov	rbx, rsi
	sub	rbx, rdx
.label_37:
	mov	r13, r15
	mov	al, byte ptr [rip + line_end]
	test	al, al
	mov	r15d, 0
	mov	eax, 0xa
	cmovne	r15d, eax
	neg	rbx
	nop	word ptr [rax + rax]
.label_68:
	test	rbp, rbp
	je	.label_36
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_47
	lea	rdi, [rsp + 0x160]
	mov	esi, r15d
	mov	rdx, rbp
	call	memrchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_36
	lea	rax, [rsp + 0x160]
	sub	rbp, rax
	jmp	.label_54
	nop	word ptr cs:[rax + rax]
.label_47:
	dec	rbp
.label_54:
	inc	rbx
	cmp	rbx, 1
	jne	.label_68
	jmp	.label_62
.label_36:
	cmp	r14, qword ptr [rsp + 0x40]
	je	.label_64
	add	r14, -0x2000
	xor	r12d, r12d
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	r15, r13
	mov	rcx, r15
	call	elseek
	test	rax, rax
	mov	r13, qword ptr [rsp + 0x20]
	js	.label_55
	mov	edx, 0x2000
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsp + 0x160]
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	mov	r12b, 1
	je	.label_55
	neg	rbx
	cmp	rbp, -1
	jne	.label_37
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r13, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rsp + 0x80]
	jmp	.label_41
.label_157:
	test	cl, 1
	jne	.label_97
	mov	rax, qword ptr [rsp + 0x108]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	cmp	r14, rcx
	jle	.label_97
	sub	r14, qword ptr [rsp + 0x40]
	mov	ebx, 0
	cmovns	rbx, r14
	mov	rax, r12
	mov	r12b, 1
	sub	rbx, rax
	jbe	.label_55
	lea	rbp, [rsp + 0x2160]
	je	.label_55
	nop	word ptr cs:[rax + rax]
.label_131:
	cmp	rbx, 0x2000
	mov	edx, 0x2000
	cmovbe	rdx, rbx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	safe_read
	mov	edi, 1
	cmp	rax, -1
	je	.label_32
	sub	rbx, rax
	test	rax, rax
	jne	.label_123
	mov	edi, 2
	test	rbx, rbx
	jne	.label_32
.label_123:
	mov	rdi, rbp
	mov	rsi, rax
	call	xwrite_stdout
	test	rbx, rbx
	jne	.label_131
	jmp	.label_55
.label_57:
	mov	edi, 0x2018
	call	xmalloc
	mov	rbp, rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + 0x2000], xmm0
	mov	qword ptr [rbp + 0x2010], 0
	mov	edi, 0x2018
	call	xmalloc
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rcx
	mov	rcx, rbp
	mov	rbx, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x48], r15
	mov	qword ptr [rsp + 0x20], r13
	jmp	.label_137
.label_97:
	cmp	r12, 0x100001
	mov	qword ptr [rsp + 0x48], r15
	mov	qword ptr [rsp + 0x20], r13
	jae	.label_142
	mov	rbx, qword ptr [rsp + 0x98]
	mov	rax, rbx
	shr	rax, 0x3e
	jne	.label_40
	mov	rdi, qword ptr [rsp + 0xb0]
	call	xmalloc
	mov	qword ptr [rsp + 0x160], rax
	mov	rcx, rax
	add	rcx, rbx
	mov	qword ptr [rsp + 0x168], rcx
	mov	r12b, 1
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x28], rax
	mov	r13, rax
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x50], rax
	xor	r14d, r14d
	jmp	.label_95
	nop	
.label_174:
	xor	r14b, 1
	movzx	eax, r14b
	mov	r13, qword ptr [rsp + rax*8 + 0x160]
	xor	r12d, r12d
.label_95:
	movzx	r14d, r14b
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdx, rbp
	call	full_read
	mov	rbx, rax
	cmp	rbx, rbp
	mov	eax, 0
	jae	.label_156
	call	__errno_location
	mov	r15d, dword ptr [rax]
	test	r15d, r15d
	jne	.label_158
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, rbx
	mov	ecx, 0
	cmovb	rax, rcx
	test	r12b, r12b
	cmovne	rax, rcx
	mov	r15b, 1
.label_156:
	test	r12b, r12b
	je	.label_163
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_164
	nop	word ptr cs:[rax + rax]
.label_163:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	sub	rsi, rax
	add	qword ptr [rsp + 0x50], rsi
	mov	rax, r14
	xor	rax, 1
	mov	rdi, qword ptr [rsp + rax*8 + 0x160]
	add	rdi, 0x2000
	call	xwrite_stdout
.label_164:
	sub	rbx, rbp
	jbe	.label_172
	add	qword ptr [rsp + 0x50], rbx
	mov	rdi, r13
	mov	rsi, rbx
	call	xwrite_stdout
.label_172:
	test	r15b, 1
	je	.label_174
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_176
.label_142:
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x50], rax
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	ebx, 1
	xor	r15d, r15d
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	nop	
.label_81:
	mov	qword ptr [rsp + 0x30], rbx
	cmp	rcx, r15
	jne	.label_35
	test	rcx, rcx
	mov	rbx, qword ptr [rsp + 0xc0]
	je	.label_38
	cmp	rcx, qword ptr [rsp + 0xb8]
	lea	rbx, [rcx + rcx]
	cmova	rbx, qword ptr [rsp + 0xa0]
.label_38:
	mov	rax, rbx
	shr	rax, 0x3c
	mov	rdi, qword ptr [rsp + 0x28]
	jne	.label_40
	lea	rsi, [rbx*8]
	call	xrealloc
	mov	rbp, rax
	mov	rcx, rbx
	jmp	.label_44
	nop	word ptr cs:[rax + rax]
.label_35:
	mov	rbp, qword ptr [rsp + 0x28]
.label_44:
	test	r13b, 1
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x68], rcx
	jne	.label_152
	mov	edi, 0x2000
	call	xmalloc
	mov	rsi, rax
	mov	qword ptr [rbp + r15*8], rsi
	lea	r14, [r15 + 1]
	jmp	.label_49
	nop	dword ptr [rax]
.label_152:
	mov	rsi, qword ptr [rbp + r15*8]
.label_49:
	mov	edx, 0x2000
	mov	rdi, qword ptr [rsp + 0x10]
	call	full_read
	mov	rbp, rax
	cmp	rbp, 0x1fff
	ja	.label_56
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	al, 1
	mov	qword ptr [rsp + 0x58], rax
	test	ebx, ebx
	jne	.label_60
.label_56:
	mov	qword ptr [rsp + 0x60], r14
	cmp	r15, qword ptr [rsp + 0x90]
	mov	r14b, 1
	je	.label_66
	mov	r14d, r13d
.label_66:
	mov	r12d, r14d
	and	r12b, 1
	mov	rdi, qword ptr [rsp + 0x30]
	je	.label_71
	add	qword ptr [rsp + 0x50], rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax + rcx*8]
	mov	rsi, rbp
	call	xwrite_stdout
	mov	rdi, qword ptr [rsp + 0x30]
.label_71:
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rax, [rdi + 1]
	xor	edx, edx
	div	qword ptr [rsp + 0xa0]
	mov	rbx, rdx
	mov	rax, qword ptr [rsp + 0x58]
	test	al, 1
	mov	r15, rdi
	mov	r13b, r14b
	mov	rax, qword ptr [rsp + 0xc8]
	mov	r14, qword ptr [rsp + 0x60]
	je	.label_81
	mov	cl, 1
	mov	qword ptr [rsp + 0x30], rcx
	test	rax, rax
	je	.label_89
	test	r12b, r12b
	mov	r15, qword ptr [rsp + 0x48]
	mov	r13, qword ptr [rsp + 0x20]
	jne	.label_118
	cmp	rdi, qword ptr [rsp + 0x90]
	jne	.label_94
	sub	rbp, qword ptr [rsp + 0xa8]
	add	qword ptr [rsp + 0x50], rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rax + rbx*8]
	mov	rsi, rbp
	call	xwrite_stdout
	jmp	.label_94
.label_129:
	mov	rbp, rbx
	sub	rbp, rax
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	lseek
	test	rax, rax
	mov	r15, r13
	mov	r13, qword ptr [rsp + 0x20]
	jns	.label_104
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rdx, [rsp + 0x160]
	call	__fxstat
	test	eax, eax
	jne	.label_109
	mov	eax, dword ptr [rsp + 0x178]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_104
.label_109:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	rcx, r15
	call	elseek
.label_104:
	lea	rdi, [rsp + 0x2160]
	mov	rsi, rbx
	call	xwrite_stdout
	jmp	.label_41
.label_143:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	r15, r13
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r14, qword ptr [rsp + 0x80]
	jmp	.label_139
.label_117:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	r15, r13
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_139
.label_158:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x48]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
.label_176:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	r15, qword ptr [rsp + 0x48]
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_150
.label_60:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	r15, qword ptr [rsp + 0x48]
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_94
.label_89:
	mov	r15, qword ptr [rsp + 0x48]
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_94
.label_118:
	mov	esi, 0x2000
	sub	rsi, rbp
	add	qword ptr [rsp + 0x50], rax
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [r14 + rdi*8]
	add	rdi, rbp
	mov	rbp, rax
	sub	rbp, rsi
	jae	.label_160
	mov	rsi, rax
	jmp	.label_165
.label_62:
	mov	rsi, qword ptr [rsp + 0x40]
	cmp	r14, rsi
	mov	r15, r13
	mov	r13, qword ptr [rsp + 0x20]
	jle	.label_167
	xor	r12d, r12d
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rcx, r15
	call	elseek
	test	rax, rax
	js	.label_55
	mov	r12, r14
	sub	r12, qword ptr [rsp + 0x40]
	lea	rbx, [rsp + 0x2160]
	je	.label_167
.label_67:
	cmp	r12, 0x2000
	mov	edx, 0x2000
	cmovbe	rdx, r12
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	call	safe_read
	mov	edi, 1
	cmp	rax, -1
	je	.label_32
	sub	r12, rax
	test	rax, rax
	jne	.label_33
	mov	edi, 2
	test	r12, r12
	jne	.label_32
.label_33:
	lea	rbx, [rsp + 0x2160]
	mov	rdi, rbx
	mov	rsi, rax
	call	xwrite_stdout
	test	r12, r12
	jne	.label_67
.label_167:
	lea	rsi, [rbp + 1]
	lea	rdi, [rsp + 0x160]
	call	xwrite_stdout
	lea	rsi, [r14 + rbp + 1]
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rcx, r15
	call	elseek
	test	rax, rax
	setns	r12b
	mov	r14, qword ptr [rsp + 0x80]
	jmp	.label_41
.label_32:
	mov	rsi, r15
	call	diagnose_copy_fd_failure
	xor	r12d, r12d
.label_55:
	mov	r14, qword ptr [rsp + 0x80]
	jmp	.label_41
.label_160:
	call	xwrite_stdout
	mov	rdi, qword ptr [r14 + rbx*8]
	mov	rsi, rbp
.label_165:
	call	xwrite_stdout
	mov	r14, qword ptr [rsp + 0x60]
.label_94:
	test	r14, r14
	mov	rbp, qword ptr [rsp + 0x28]
	je	.label_46
	mov	rbx, rbp
.label_50:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 8
	dec	r14
	jne	.label_50
.label_46:
	mov	rdi, rbp
	call	free
.label_150:
	cmp	qword ptr [rsp + 0x40], 0
	js	.label_53
	xor	ebx, ebx
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rcx, r15
	call	elseek
	test	rax, rax
	js	.label_61
	mov	rax, qword ptr [rsp + 0x30]
	mov	bl, al
.label_61:
	mov	r12b, bl
	jmp	.label_63
.label_34:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	jmp	.label_70
.label_64:
	mov	r15, r13
	mov	r13, qword ptr [rsp + 0x20]
	mov	r12b, 1
	mov	r14, qword ptr [rsp + 0x80]
	jmp	.label_41
.label_72:
	mov	r14, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [r14 + 0x2000]
	add	rbx, rsi
	mov	rdi, r14
	call	xwrite_stdout
	mov	rax, qword ptr [rsp + 0x28]
	sub	rax, qword ptr [r14 + 0x2008]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, r14
	mov	rcx, qword ptr [r14 + 0x2010]
	nop	
.label_137:
	mov	qword ptr [rsp + 0x68], rcx
	lea	rcx, [rcx + 0x2008]
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_87
.label_141:
	mov	edi, 0x2018
	call	xmalloc
	nop	dword ptr [rax]
.label_87:
	mov	qword ptr [rsp + 0x60], rbp
	mov	rbp, rax
	lea	rax, [rbp + 0x2008]
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_91
	nop	word ptr cs:[rax + rax]
.label_103:
	add	rbx, r14
	mov	rdi, rbp
	mov	rsi, r14
	call	xwrite_stdout
.label_91:
	mov	edx, 0x2000
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	safe_read
	mov	r14, rax
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_178
	test	r12, r12
	je	.label_103
	mov	qword ptr [rbp + 0x2000], r14
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0x30]
	movdqu	xmmword ptr [rax], xmm0
	mov	al, byte ptr [rip + line_end]
	test	al, al
	mov	r13d, 0
	mov	eax, 0xa
	cmovne	r13d, eax
	mov	rdi, rbp
	mov	esi, r13d
	mov	rdx, r14
	call	memchr
	test	rax, rax
	mov	r15d, 0
	je	.label_112
	lea	r12, [rbp + r14]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_124:
	inc	rax
	inc	r15
	mov	rcx, qword ptr [rsp + 0x30]
	mov	qword ptr [rcx], r15
	mov	rdx, r12
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r13d
	call	memchr
	test	rax, rax
	jne	.label_124
.label_112:
	mov	rcx, qword ptr [rsp + 0x28]
	add	rcx, r15
	mov	r15, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [r15 + 0x2000]
	mov	rax, r14
	add	rax, rdi
	cmp	rax, 0x1fff
	mov	qword ptr [rsp + 0x28], rcx
	ja	.label_96
	add	rdi, r15
	mov	rsi, rbp
	mov	rdx, r14
	call	memcpy
	movdqu	xmm0, xmmword ptr [rbp + 0x2000]
	movdqu	xmm1, xmmword ptr [r15 + 0x2000]
	paddq	xmm1, xmm0
	movdqu	xmmword ptr [r15 + 0x2000], xmm1
	mov	r12, qword ptr [rsp + 0x18]
	mov	r15, qword ptr [rsp + 0x48]
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_91
.label_96:
	mov	qword ptr [r15 + 0x2010], rbp
	mov	rax, rcx
	mov	rcx, qword ptr [rsp + 0x58]
	sub	rax, qword ptr [rcx]
	mov	r12, qword ptr [rsp + 0x18]
	cmp	rax, r12
	mov	r15, qword ptr [rsp + 0x48]
	mov	r13, qword ptr [rsp + 0x20]
	jbe	.label_141
	jmp	.label_72
.label_178:
	mov	rdi, rbp
	call	free
	cmp	r14, -1
	je	.label_86
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rsi + 0x2000]
	test	rax, rax
	je	.label_148
	movsx	eax, byte ptr [rsi + rax - 1]
	mov	cl, byte ptr [rip + line_end]
	test	cl, cl
	mov	ecx, 0
	mov	edx, 0xa
	cmovne	ecx, edx
	cmp	eax, ecx
	jne	.label_106
.label_148:
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	.label_151
.label_86:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	jmp	.label_159
.label_106:
	inc	qword ptr [rsi + 0x2008]
	mov	rdx, qword ptr [rsp + 0x28]
	inc	rdx
	mov	rcx, qword ptr [rsp + 0x58]
.label_151:
	mov	r14, qword ptr [rcx]
	mov	rax, rdx
	sub	rax, r14
	cmp	rax, r12
	jbe	.label_162
	mov	rbp, qword ptr [rsp + 0x68]
	nop	word ptr cs:[rax + rax]
.label_170:
	mov	rsi, qword ptr [rbp + 0x2000]
	add	rbx, rsi
	mov	rdi, rbp
	mov	r14, rbx
	mov	rbx, rcx
	mov	r15, rdx
	call	xwrite_stdout
	mov	rdx, r15
	sub	rdx, qword ptr [rbx]
	mov	rbx, r14
	mov	rbp, qword ptr [rbp + 0x2010]
	lea	rcx, [rbp + 0x2008]
	mov	r14, qword ptr [rbp + 0x2008]
	mov	rax, rdx
	sub	rax, r14
	cmp	rax, r12
	ja	.label_170
	jmp	.label_175
.label_162:
	mov	rbp, qword ptr [rsp + 0x68]
.label_175:
	mov	rax, r12
	mov	sil, 1
	mov	qword ptr [rsp + 0x30], rsi
	cmp	rdx, rax
	jbe	.label_177
	mov	qword ptr [rsp + 0x28], rbx
	mov	rsi, rbp
	je	.label_42
	mov	rbx, qword ptr [rbp + 0x2000]
	add	rbx, rbp
	mov	al, byte ptr [rip + line_end]
	test	al, al
	mov	r12d, 0
	mov	eax, 0xa
	cmovne	r12d, eax
	inc	r14
	mov	r13, qword ptr [rsp + 0x18]
	sub	r13, rdx
	mov	rax, rbp
	nop	dword ptr [rax + rax]
.label_43:
	mov	rdx, rbx
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r12d
	mov	r15, rcx
	call	memchr
	mov	rcx, r15
	test	rax, rax
	mov	esi, 0
	je	.label_42
	inc	rax
	mov	qword ptr [rcx], r14
	inc	r14
	inc	r13
	mov	rsi, rax
	jne	.label_43
.label_42:
	sub	rsi, rbp
	mov	rbx, qword ptr [rsp + 0x28]
	add	rbx, rsi
	mov	rdi, rbp
	call	xwrite_stdout
	mov	r13, qword ptr [rsp + 0x20]
.label_177:
	mov	r15, qword ptr [rsp + 0x48]
.label_159:
	mov	rdi, qword ptr [rsp + 0x68]
	test	rdi, rdi
	je	.label_45
	nop	dword ptr [rax]
.label_52:
	mov	rbp, qword ptr [rdi + 0x2010]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_52
.label_45:
	cmp	qword ptr [rsp + 0x40], 0
	js	.label_53
	xor	ebp, ebp
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rcx, r15
	call	elseek
	test	rax, rax
	js	.label_105
	mov	rax, qword ptr [rsp + 0x30]
	mov	bpl, al
.label_105:
	mov	r12b, bpl
	jmp	.label_63
.label_53:
	mov	r12, qword ptr [rsp + 0x30]
.label_63:
	and	r12b, 1
	mov	r14, qword ptr [rsp + 0x80]
	nop	word ptr cs:[rax + rax]
.label_41:
	mov	eax, dword ptr [rsp + 0x7c]
	test	al, al
	jne	.label_73
	mov	rdi, qword ptr [rsp + 0x10]
	call	close
	test	eax, eax
	je	.label_73
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
.label_59:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_73:
	mov	al, byte ptr [rsp + 0x3f]
	and	al, r12b
	mov	r15, qword ptr [r14 + r13*8 + 8]
	inc	r13
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x18]
	jne	.label_88
.label_155:
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_48
	xor	edi, edi
	mov	ebx, eax
	call	close
	test	eax, eax
	mov	eax, ebx
	js	.label_93
.label_48:
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0x4168
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_101:
	mov	byte ptr [rax - 1], 0
	mov	r15b, 1
	xor	ebp, ebp
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
.label_128:
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_98
	xor	r9d, r9d
	mov	rdi, r14
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	dec	r13d
	jmp	.label_107
.label_40:
	call	xalloc_die
.label_166:
	cmp	ebx, 0xffffff7d
	je	.label_110
	cmp	ebx, 0xffffff7e
	jne	.label_39
	xor	edi, edi
	call	usage
.label_108:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	movsx	ecx, byte ptr [r14 - 1]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	call	error
	mov	edi, 1
	call	usage
.label_110:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_16
	mov	edx, OFFSET FLAT:label_24
	mov	r8d, OFFSET FLAT:label_84
	mov	r9d, OFFSET FLAT:label_85
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_39:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_133
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_133:
	mov	edi, 1
	call	usage
.label_173:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp + 0x160]
	mov	rdi, qword ptr [rsp + 0x18]
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 0x4b
	mov	edx, OFFSET FLAT:label_146
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_93:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_149
	xor	eax, eax
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f10

	.globl elseek
	.type elseek, @function
elseek:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rcx
	mov	ebp, edx
	mov	r14, rsi
	call	lseek
	mov	rbx, rax
	test	rbx, rbx
	jns	.label_181
	call	__errno_location
	mov	r12d, dword ptr [rax]
	test	ebp, ebp
	mov	eax, OFFSET FLAT:label_179
	mov	esi, OFFSET FLAT:label_180
	cmove	rsi, rax
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	r15, rax
	lea	rsi, [rsp]
	mov	rdi, r14
	call	offtostr
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r13
	mov	rcx, r15
	mov	r8, rbp
	call	error
.label_181:
	mov	rax, rbx
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
	#Procedure 0x402fb0

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	test	rbx, rbx
	je	.label_182
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_185
.label_182:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_185:
	mov	rdi, qword ptr [rip + stdout]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_183
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403030

	.globl diagnose_copy_fd_failure
	.type diagnose_copy_fd_failure, @function
diagnose_copy_fd_failure:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	cmp	edi, 2
	je	.label_186
	cmp	edi, 1
	jne	.label_188
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	jmp	.label_189
.label_186:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
.label_189:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	pop	rbx
	pop	r14
	pop	rbp
	jmp	error
.label_188:
	call	abort
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_195
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_192
	cmp	dword ptr [rbp], 0x20
	jne	.label_192
.label_195:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_194
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_192:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_193
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_191
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_194:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_193:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_146
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
	#Procedure 0x4031a0

	.globl full_read
	.type full_read, @function
full_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_196
	nop	word ptr [rax + rax]
.label_198:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_read
	cmp	rax, -1
	je	.label_196
	test	rax, rax
	je	.label_197
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_198
	jmp	.label_196
.label_197:
	call	__errno_location
	mov	dword ptr [rax], 0
.label_196:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403200

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_199
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_200:
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
	ja	.label_200
	jmp	.label_201
.label_199:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_202:
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
	ja	.label_202
	mov	byte ptr [rsi], 0x2d
.label_201:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032c0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_203:
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
	ja	.label_203
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403310

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_207
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_205
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_205
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_206
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_206:
	mov	rbx, r14
.label_205:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_207:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_208
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033c0
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
	#Procedure 0x403400
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
	#Procedure 0x403410
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
	#Procedure 0x403420
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
	#Procedure 0x403460
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
	#Procedure 0x403480
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_210
	test	rdx, rdx
	je	.label_210
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_210:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034b0
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
	#Procedure 0x403530

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
.label_328:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_326
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_305]
.label_515:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_211
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_217
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_516:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_228
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_228
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_247:
	cmp	r14, r11
	jae	.label_242
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_242:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_247
.label_228:
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
	jmp	.label_255
.label_508:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_255
.label_511:
	mov	al, 1
.label_509:
	mov	r12b, 1
.label_512:
	test	r12b, 1
	mov	cl, 1
	je	.label_268
	mov	ecx, eax
.label_268:
	mov	al, cl
.label_510:
	test	r12b, 1
	jne	.label_271
	test	r11, r11
	je	.label_243
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_243:
	mov	r14d, 1
	jmp	.label_274
.label_271:
	xor	r14d, r14d
.label_274:
	mov	ecx, OFFSET FLAT:label_217
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_255
.label_513:
	test	r12b, 1
	jne	.label_285
	test	r11, r11
	je	.label_289
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_289:
	mov	r14d, 1
	jmp	.label_292
.label_514:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_295
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_255
.label_285:
	xor	r14d, r14d
.label_292:
	mov	eax, OFFSET FLAT:label_295
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_255:
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
	jmp	.label_309
	nop	dword ptr [rax]
.label_248:
	inc	rsi
.label_309:
	cmp	rbp, -1
	je	.label_221
	cmp	rsi, rbp
	jne	.label_223
	jmp	.label_224
	nop	word ptr cs:[rax + rax]
.label_221:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_229
.label_223:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_331
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_237
	cmp	rbp, -1
	jne	.label_237
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
.label_237:
	cmp	rbx, rbp
	jbe	.label_256
.label_331:
	xor	r8d, r8d
.label_281:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_258
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_261]
.label_528:
	test	rsi, rsi
	jne	.label_250
	jmp	.label_267
	nop	word ptr cs:[rax + rax]
.label_256:
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
	jne	.label_277
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_281
	jmp	.label_291
.label_277:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_281
.label_532:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_299
	test	rsi, rsi
	jne	.label_301
	cmp	rbp, 1
	je	.label_267
	xor	r13d, r13d
	jmp	.label_230
.label_521:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_307
	cmp	byte ptr [rsp + 6], 0
	jne	.label_270
	cmp	r12d, 2
	jne	.label_312
	mov	eax, r9d
	and	al, 1
	jne	.label_312
	cmp	r14, r11
	jae	.label_315
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_315:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_319
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_319:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_241
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_241:
	add	r14, 3
	mov	r9b, 1
.label_312:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_329
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_329:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_213
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_213
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_213
	cmp	r14, r11
	jae	.label_318
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_318:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_304
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_304:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_230
.label_522:
	mov	bl, 0x62
	jmp	.label_234
.label_523:
	mov	cl, 0x74
	jmp	.label_216
.label_524:
	mov	bl, 0x76
	jmp	.label_234
.label_525:
	mov	bl, 0x66
	jmp	.label_234
.label_526:
	mov	cl, 0x72
	jmp	.label_216
.label_529:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_244
	cmp	byte ptr [rsp + 6], 0
	jne	.label_249
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
	jae	.label_252
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_252:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_266
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_266:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_269
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_269:
	add	r14, 3
	xor	r9d, r9d
.label_244:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_230
.label_530:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_275
	cmp	r12d, 2
	jne	.label_250
	cmp	byte ptr [rsp + 6], 0
	je	.label_250
	jmp	.label_249
.label_531:
	cmp	r12d, 2
	jne	.label_286
	cmp	byte ptr [rsp + 6], 0
	jne	.label_249
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_235
.label_258:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_297
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
.label_225:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_311
	test	r8b, r8b
	je	.label_311
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_230
.label_299:
	test	rsi, rsi
	jne	.label_231
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_231
.label_267:
	mov	dl, 1
.label_527:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_249
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_230:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_215
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_254
	jmp	.label_220
	nop	word ptr cs:[rax + rax]
.label_215:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_220
.label_254:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_226
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_235
	jmp	.label_246
	nop	dword ptr [rax]
.label_220:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_246
	jmp	.label_235
.label_226:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_246
.label_307:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_248
	xor	r15d, r15d
	jmp	.label_250
.label_286:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_216
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_235
.label_216:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_249
.label_234:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_230
	nop	word ptr cs:[rax + rax]
.label_246:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_270
	cmp	r12d, 2
	jne	.label_272
	mov	eax, r9d
	and	al, 1
	jne	.label_272
	cmp	r14, r11
	jae	.label_325
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_325:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_279
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_279:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_253
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_253:
	add	r14, 3
	mov	r9b, 1
.label_272:
	cmp	r14, r11
	jae	.label_290
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_290:
	inc	r14
	jmp	.label_308
.label_297:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_298
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_298:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_259:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_317
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_321
	cmp	rbp, -2
	je	.label_324
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_287
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_222:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_294
	bt	rsi, rdx
	jb	.label_219
.label_294:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_222
.label_287:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_265
	xor	r13d, r13d
.label_265:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_259
	jmp	.label_225
.label_213:
	xor	r13d, r13d
	jmp	.label_230
.label_231:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_230
.label_275:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_250
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_250
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_250
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_283
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_239
	cmp	byte ptr [rsp + 6], 0
	jne	.label_278
	cmp	r14, r11
	jae	.label_238
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_238:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_314
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_314:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_276
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_276:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_245
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_245:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_230
.label_250:
	xor	eax, eax
.label_301:
	xor	r13d, r13d
	jmp	.label_230
.label_311:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_296
	nop	word ptr cs:[rax + rax]
.label_251:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_296:
	test	r8b, r8b
	je	.label_302
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_303
	cmp	r14, r11
	jae	.label_273
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_273:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_303
	nop	dword ptr [rax]
.label_302:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_291
	cmp	r12d, 2
	jne	.label_316
	mov	eax, r9d
	and	al, 1
	jne	.label_316
	cmp	r14, r11
	jae	.label_320
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_320:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_322
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_322:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_327
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_327:
	add	r14, 3
	mov	r9b, 1
.label_316:
	cmp	r14, r11
	jae	.label_232
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_232:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_212
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_212:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_218
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_218:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_303:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_235
	test	r9b, 1
	je	.label_236
	mov	ebx, eax
	and	bl, 1
	jne	.label_236
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_240
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_240:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_288
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_288:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_236:
	cmp	r14, r11
	jae	.label_251
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_251
	nop	word ptr cs:[rax + rax]
.label_235:
	test	r9b, 1
	je	.label_260
	and	al, 1
	jne	.label_260
	cmp	r14, r11
	jae	.label_263
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_263:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_262
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_262:
	add	r14, 2
	xor	r9d, r9d
.label_260:
	mov	ebx, r15d
.label_308:
	cmp	r14, r11
	jae	.label_300
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_300:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_248
.label_321:
	xor	r13d, r13d
.label_317:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_225
.label_324:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_257
	mov	rsi, qword ptr [rsp + 0x58]
.label_293:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_330
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_293
	xor	r13d, r13d
	jmp	.label_225
.label_257:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_225
.label_330:
	xor	r13d, r13d
	jmp	.label_225
.label_283:
	xor	r13d, r13d
	jmp	.label_230
.label_239:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_230
	nop	dword ptr [rax + rax]
.label_224:
	mov	rcx, rsi
.label_229:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_306
	or	al, dl
	je	.label_310
.label_306:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_313
	or	al, dl
	jne	.label_313
	test	r10b, 1
	jne	.label_323
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_313
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_328
.label_313:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_332
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_214
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_214
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_227:
	cmp	r14, r11
	jae	.label_284
	mov	byte ptr [rcx + r14], al
.label_284:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_227
	jmp	.label_214
.label_270:
	mov	qword ptr [rsp + 0x20], rbp
.label_291:
	mov	rdx, rdi
	jmp	.label_233
.label_249:
	mov	qword ptr [rsp + 0x20], rbp
.label_219:
	mov	rdx, rdi
	mov	eax, 2
.label_264:
	mov	qword ptr [rsp + 0x38], rax
.label_233:
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
.label_280:
	mov	r14, rax
.label_282:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_310:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_233
.label_323:
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
	jmp	.label_280
.label_332:
	mov	rcx, qword ptr [rsp + 8]
.label_214:
	cmp	r14, r11
	jae	.label_282
	mov	byte ptr [rcx + r14], 0
	jmp	.label_282
.label_278:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_264
.label_326:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404340
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
	#Procedure 0x404410
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
	je	.label_333
	mov	qword ptr [rax], rbx
.label_333:
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
	#Procedure 0x404500
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_334
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_337:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_337
.label_334:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_338
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_336], OFFSET FLAT:slot0
.label_338:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_335
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_335:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4045b0

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
	js	.label_342
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_345
	cmp	r12d, 0x7fffffff
	je	.label_340
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
	jne	.label_343
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_343:
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
.label_345:
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
	jbe	.label_341
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_344
.label_341:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_339
	mov	rdi, r14
	call	free
.label_339:
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
.label_344:
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
.label_342:
	call	abort
.label_340:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404770
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404780
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
	#Procedure 0x4047a0
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
	#Procedure 0x4047c0
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
	je	.label_346
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
.label_346:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404830
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
	je	.label_347
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
.label_347:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048a0

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
	je	.label_348
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
.label_348:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404910
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
	je	.label_349
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
.label_349:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404980
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_350]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_351]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_352]
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
	#Procedure 0x4049f0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_350]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_351]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_352]
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
	#Procedure 0x404a60

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_350]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_351]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_352]
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
	#Procedure 0x404ac0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_350]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_351]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_352]
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
	#Procedure 0x404b20

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
	je	.label_353
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
.label_353:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_350]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_351]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_352]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_354
	test	rdx, rdx
	je	.label_354
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_354:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404c30
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_350]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_351]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_352]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_355
	test	rdx, rdx
	je	.label_355
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_355:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ca0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_350]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_351]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_352]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_356
	test	rsi, rsi
	je	.label_356
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_356:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404d10
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_350]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_351]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_352]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_357
	test	rsi, rsi
	je	.label_357
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
.label_357:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d80
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d90
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
	#Procedure 0x404db0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dd0

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
	#Procedure 0x404df0

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
	jne	.label_359
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_364
	cmp	ecx, 0x55
	jne	.label_358
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_358
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_358
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_358
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_358
	cmp	byte ptr [rax + 5], 0
	jne	.label_358
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_361
	mov	eax, OFFSET FLAT:label_362
	jmp	.label_363
.label_364:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_358
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_358
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_358
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_358
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_358
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_358
	cmp	byte ptr [rax + 7], 0
	je	.label_360
.label_358:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_295
	mov	eax, OFFSET FLAT:label_217
.label_363:
	cmove	rax, rcx
.label_359:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_360:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_365
	mov	eax, OFFSET FLAT:label_366
	jmp	.label_363
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ec0

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
.label_368:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_367
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_368
	cmp	rbx, 0x7ff00001
	jb	.label_367
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_368
.label_367:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f20

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
	je	.label_381
	mov	edx, OFFSET FLAT:label_372
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_378
.label_381:
	mov	edx, OFFSET FLAT:label_379
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_378:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_383
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
	mov	esi, OFFSET FLAT:label_380
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_384
	jmp	qword ptr [(r12 * 8) + label_385]
.label_613:
	add	rsp, 8
	jmp	.label_371
.label_384:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
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
	jmp	.label_371
.label_614:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
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
.label_615:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_376
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
.label_616:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
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
.label_617:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_387
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
	jmp	.label_371
.label_618:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_386
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
	jmp	.label_371
.label_619:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
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
	jmp	.label_371
.label_620:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
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
	jmp	.label_371
.label_622:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
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
	jmp	.label_371
.label_621:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
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
.label_371:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405280
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_388:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_388
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052b0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_399
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_401
.label_399:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_401:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_389
	cmp	r10d, 0x29
	jae	.label_398
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_400
.label_398:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_400:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_389
	cmp	r10d, 0x29
	jae	.label_396
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_397
.label_396:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_397:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_389
	cmp	r10d, 0x29
	jae	.label_394
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_395
.label_394:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_395:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_389
	cmp	r10d, 0x29
	jae	.label_392
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_393
.label_392:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_393:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_389
	cmp	r10d, 0x29
	jae	.label_390
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_391
.label_390:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_391:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_389
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_389
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_389
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_389
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_389:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_402
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_402:
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
	#Procedure 0x405530
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_403
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_404
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055b0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_407
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_408
	test	rax, rax
	je	.label_407
.label_408:
	pop	rbx
	ret	
.label_407:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_409
	test	rax, rax
	je	.label_410
.label_409:
	pop	rbx
	ret	
.label_410:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405610
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_411
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_412
	test	rbx, rbx
	jne	.label_412
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_412:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_413
	test	rax, rax
	je	.label_411
.label_413:
	pop	rbx
	ret	
.label_411:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405660

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_414
	test	rbx, rbx
	jne	.label_414
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_414:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_416
	test	rax, rax
	je	.label_415
.label_416:
	pop	rbx
	ret	
.label_415:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405690
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_420
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_422
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_417
.label_420:
	test	rcx, rcx
	jne	.label_423
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_423:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_418
.label_417:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_419
	test	rbx, rbx
	jne	.label_419
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_419:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_421
	test	rax, rax
	je	.label_422
.label_421:
	pop	rbx
	ret	
.label_422:
	call	xalloc_die
.label_418:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405730
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_424
	test	rax, rax
	je	.label_425
.label_424:
	pop	rbx
	ret	
.label_425:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405750
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_428
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_430
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_427
	call	free
	xor	eax, eax
	jmp	.label_429
.label_428:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_426
	mov	qword ptr [rsi], rbx
.label_427:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_429
	test	rax, rax
	je	.label_426
.label_429:
	pop	rbx
	ret	
.label_426:
	call	xalloc_die
.label_430:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057c0
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
	je	.label_432
	test	r14, r14
	je	.label_431
.label_432:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_431:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405800
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_433
	call	rpl_calloc
	test	rax, rax
	je	.label_433
	pop	rcx
	ret	
.label_433:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405830

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
	je	.label_434
	test	r15, r15
	je	.label_435
.label_434:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_435:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405870
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
	je	.label_437
	test	r15, r15
	je	.label_436
.label_437:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_436:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058c0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_438
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_191
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4058f0

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
	je	.label_442
	cmp	eax, 1
	je	.label_443
	cmp	eax, 3
	jne	.label_445
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_439
.label_443:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_439
.label_442:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_444
	cmp	rbx, r15
	jbe	.label_440
.label_444:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_441
	mov	dword ptr [rax], 0x4b
	jmp	.label_439
.label_445:
	call	__errno_location
	jmp	.label_439
.label_441:
	mov	dword ptr [rax], 0x22
.label_439:
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
	mov	edx, OFFSET FLAT:label_146
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_440:
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
	.align	32
	#Procedure 0x4059c0

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
	.align	32
	#Procedure 0x4059f0

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
	jae	.label_464
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_460:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_460
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_454
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
	je	.label_466
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_452
	cmp	eax, 0x22
	jne	.label_454
	mov	ebp, 1
.label_452:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_456
	jmp	.label_458
.label_466:
	test	r14, r14
	je	.label_454
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_454
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_454
.label_456:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_458
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_453
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_448
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_448
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_448
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_461
	cmp	eax, 0x44
	je	.label_461
	cmp	eax, 0x69
	jne	.label_448
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_448
.label_461:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_448:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_453
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_455]
.label_591:
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
	jmp	.label_457
.label_453:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_465
.label_592:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_446
.label_593:
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
	jmp	.label_463
.label_595:
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
	jmp	.label_467
.label_589:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_462
.label_590:
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
	jmp	.label_463
.label_594:
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
.label_467:
	or	dl, r10b
.label_457:
	or	dl, bl
.label_463:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_459
.label_596:
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
	jmp	.label_447
.label_597:
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
.label_447:
	movzx	eax, dl
.label_446:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_459
.label_598:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_462:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_459
.label_599:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_459:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_458:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_465:
	mov	r13d, r15d
.label_454:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_464:
	mov	edi, OFFSET FLAT:label_449
	mov	esi, OFFSET FLAT:label_450
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_451
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406030

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_468
	test	rsi, rsi
	mov	ecx, 1
	je	.label_469
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_469
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_468:
	mov	ecx, 1
.label_469:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406080

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
	je	.label_470
	cmp	r15, -2
	jb	.label_470
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_470
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_470:
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
	#Procedure 0x4060e0

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
	jne	.label_472
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_471
	test	cl, cl
	jne	.label_471
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_471
.label_472:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_471
	call	__errno_location
	mov	dword ptr [rax], 0
.label_471:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406140

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_474
	cmp	byte ptr [rax], 0x43
	jne	.label_476
	cmp	byte ptr [rax + 1], 0
	je	.label_473
.label_476:
	mov	esi, OFFSET FLAT:label_475
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_474
.label_473:
	xor	ebx, ebx
.label_474:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406180

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_75
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_477
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_478
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_480
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_478
.label_480:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_478
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_479
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_479:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_478:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406230

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_481
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_481
	test	byte ptr [rbx + 1], 1
	je	.label_481
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_481:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406270

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
	jne	.label_482
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_482
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_483
.label_482:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_483:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_484
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_484:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x4062e0

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
