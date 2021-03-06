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
	sub	rsp, 0x4198
	mov	r15, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_138
	call	setlocale
	mov	edi, OFFSET FLAT:label_73
	mov	esi, OFFSET FLAT:label_74
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_73
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + have_read_stdin],  0
	mov	byte ptr [rip + print_headers],  0
	mov	byte ptr [rip + line_end],  1
	mov	al, 1
	mov	qword ptr [rsp + 0x38], rax
	xor	r14d, r14d
	cmp	r13d, 2
	jl	.label_80
	mov	rax, qword ptr [r15 + 8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_80
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_80
	lea	r12, [r15 + 8]
	lea	rbx, [rax + 1]
	add	rax, 2
	nop	word ptr cs:[rax + rax]
.label_101:
	movsx	ecx, byte ptr [rax]
	lea	edx, [rcx - 0x30]
	inc	rax
	cmp	edx, 0xa
	jb	.label_101
	test	cl, cl
	je	.label_99
	mov	r8, rbx
	xor	edx, edx
	mov	sil, 1
	mov	qword ptr [rsp + 0x38], rsi
	mov	rbp, rax
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_126:
	mov	rsi, qword ptr [rsp + 0x38]
	mov	ebx, esi
	mov	esi, edx
	movsx	edi, cl
	add	edi, -0x62
	cmp	edi, 0x18
	ja	.label_104
	xor	edx, edx
	mov	qword ptr [rsp + 0x38], rdx
	xor	edx, edx
	jmp	qword ptr [(rdi * 8) + label_112]
.label_616:
	xor	edx, edx
	mov	qword ptr [rsp + 0x38], rdx
	mov	dl, cl
	jmp	.label_187
.label_617:
	mov	cl, 1
	jmp	.label_118
.label_618:
	mov	r14d, 2
	jmp	.label_120
.label_619:
	mov	r14d, 1
	jmp	.label_120
.label_620:
	mov	byte ptr [rip + line_end],  0
.label_120:
	mov	cl, bl
.label_118:
	mov	qword ptr [rsp + 0x38], rcx
	mov	dl, sil
.label_187:
	mov	cl, byte ptr [rbp]
	inc	rbp
	test	cl, cl
	jne	.label_126
	mov	byte ptr [rax - 1], dl
	test	dl, dl
	je	.label_130
	mov	byte ptr [rax], 0
.label_130:
	mov	rax, qword ptr [rsp + 0x38]
	test	al, 1
	mov	rbx, r8
	jne	.label_132
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	jmp	.label_136
.label_80:
	mov	eax, 0xa
	mov	qword ptr [rsp + 0x10], rax
	mov	r12, r15
.label_114:
	xor	eax, eax
	mov	qword ptr [rsp + 0x98], rax
	jmp	.label_141
	nop	word ptr cs:[rax + rax]
.label_538:
	mov	r14d, 1
.label_141:
	mov	ebx, r14d
	jmp	.label_163
.label_539:
	mov	byte ptr [rip + line_end],  0
	nop	word ptr cs:[rax + rax]
.label_163:
	mov	edx, OFFSET FLAT:label_147
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	mov	ebp, eax
	cmp	ebp, 0x62
	jle	.label_150
	lea	eax, [rbp - 0x63]
	cmp	eax, 0x1d
	ja	.label_123
	mov	r14d, 2
	jmp	qword ptr [(rax * 8) + label_154]
.label_536:
	mov	rbp, qword ptr [rip + optarg]
	cmp	byte ptr [rbp], 0x2d
	sete	al
	mov	qword ptr [rsp + 0x98], rax
	jne	.label_156
	inc	rbp
	mov	qword ptr [rip + optarg],  rbp
.label_156:
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_105
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_163
.label_537:
	mov	rbp, qword ptr [rip + optarg]
	cmp	byte ptr [rbp], 0x2d
	sete	al
	mov	qword ptr [rsp + 0x98], rax
	jne	.label_166
	inc	rbp
	mov	qword ptr [rip + optarg],  rbp
.label_166:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_105
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x10], rax
	mov	al, 1
	mov	qword ptr [rsp + 0x38], rax
	jmp	.label_163
.label_540:
	mov	byte ptr [rip + presume_input_pipe],  1
	jmp	.label_163
.label_150:
	cmp	ebp, -1
	jne	.label_179
	cmp	ebx, 1
	je	.label_180
	test	ebx, ebx
	jne	.label_182
	lea	eax, [r13 - 1]
	cmp	dword ptr [rip + optind],  eax
	jge	.label_182
.label_180:
	mov	byte ptr [rip + print_headers],  1
.label_182:
	mov	rax, qword ptr [rsp + 0x38]
	and	al, 1
	mov	qword ptr [rsp + 0x38], rax
	jne	.label_89
	cmp	qword ptr [rsp + 0x10], 0
	jns	.label_89
	mov	rax, qword ptr [rsp + 0x98]
	test	al, al
	jne	.label_168
.label_89:
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r13d
	lea	rax, [r12 + rax*8]
	mov	r12d, OFFSET FLAT:main.default_file_list
	cmovl	r12, rax
	mov	rbp, qword ptr [r12]
	mov	al, 1
	test	rbp, rbp
	je	.label_191
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rax, [rdx + 0x2000]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rdx + rdx + 0x4000]
	mov	qword ptr [rsp + 0xe0], rax
	mov	eax, edx
	and	eax, 0x1fff
	mov	ecx, 0x2000
	mov	qword ptr [rsp + 0xd0], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 0xd8], rcx
	lea	rax, [rcx + rdx]
	shr	rax, 0xd
	mov	qword ptr [rsp + 0xb8], rax
	inc	rax
	cmp	rax, 0x10
	mov	ecx, 0x10
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0xf0], rcx
	mov	qword ptr [rsp + 0xc8], rax
	shr	rax, 1
	mov	qword ptr [rsp + 0xe8], rax
	mov	al, 1
	lea	r15, [rsp + 0x190]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x90], r12
	jmp	.label_32
.label_78:
	neg	rbx
	lea	rdi, [rsp + 0x2190]
	mov	r13, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_57:
	test	rbp, rbp
	je	.label_60
	dec	rbp
	inc	rbx
	cmp	rbx, 1
	jne	.label_57
	jmp	.label_83
.label_60:
	cmp	r12, qword ptr [rsp + 0x48]
	mov	r13b, 1
	je	.label_62
	add	r12, -0x2000
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x28]
	mov	edi, ebp
	mov	rsi, r12
	call	lseek
	test	rax, rax
	js	.label_68
	mov	edx, 0x2000
	mov	edi, ebp
	lea	rsi, [rsp + 0x2190]
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	je	.label_62
	neg	rbx
	cmp	rbp, -1
	jne	.label_78
.label_153:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_62
.label_170:
	lea	r15, [rsp + 0x190]
.label_83:
	mov	r14, qword ptr [rsp + 0x48]
	cmp	r12, r14
	jle	.label_91
	xor	edx, edx
	mov	edi, r13d
	mov	rsi, r14
	call	lseek
	test	rax, rax
	js	.label_96
	mov	rbx, r12
	sub	rbx, r14
	je	.label_98
.label_117:
	cmp	rbx, 0x2000
	mov	edx, 0x2000
	cmovbe	rdx, rbx
	mov	edi, r13d
	mov	rsi, r15
	call	safe_read
	mov	edi, 1
	cmp	rax, -1
	je	.label_111
	sub	rbx, rax
	test	rax, rax
	jne	.label_165
	mov	edi, 2
	test	rbx, rbx
	jne	.label_111
.label_165:
	mov	rdi, r15
	mov	rsi, rax
	call	xwrite_stdout
	test	rbx, rbx
	jne	.label_117
.label_98:
	lea	rdi, [rsp + 0x2190]
.label_91:
	lea	rsi, [rbp + 1]
	call	xwrite_stdout
	lea	rbp, [r12 + rbp + 1]
	xor	edx, edx
	mov	edi, r13d
	mov	rsi, rbp
	call	lseek
	mov	rbx, rax
	test	rbx, rbx
	jns	.label_63
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	r13, rax
	mov	rdi, rbp
	lea	rsi, [rsp + 0xa0]
	call	offtostr
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	lea	r15, [rsp + 0x190]
	mov	rcx, r13
	mov	r8, rbp
	call	error
.label_63:
	test	rbx, rbx
	setns	r13b
.label_62:
	mov	r14d, dword ptr [rsp + 0x1c]
	jmp	.label_35
.label_96:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	rbx, rax
	mov	rdi, r14
	lea	rsi, [rsp + 0xa0]
	call	offtostr
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	jmp	.label_157
.label_111:
	mov	rsi, qword ptr [rsp + 0x30]
	call	diagnose_copy_fd_failure
	xor	r13d, r13d
	jmp	.label_62
.label_68:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	rbx, rax
	mov	rdi, r12
	lea	rsi, [rsp + 0xa0]
	call	offtostr
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_172:
	lea	r15, [rsp + 0x190]
	jmp	.label_62
	nop	word ptr [rax + rax]
.label_32:
	mov	qword ptr [rsp + 0xf8], rcx
	mov	byte ptr [rsp + 0x47], al
	cmp	byte ptr [rbp], 0x2d
	jne	.label_33
	cmp	byte ptr [rbp + 1], 0
	je	.label_173
.label_33:
	xor	r14d, r14d
	xor	esi, esi
	xor	eax, eax
	mov	rdi, rbp
	call	open
	mov	r13d, eax
	test	r13d, r13d
	jns	.label_175
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 5
	call	dcgettext
	mov	rsi, rbp
	mov	rbp, rax
	mov	edi, 4
	jmp	.label_139
.label_173:
	mov	byte ptr [rip + have_read_stdin],  1
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	r14b, 1
.label_175:
	cmp	byte ptr [rip + print_headers],  1
	jne	.label_189
	mov	al, byte ptr [rip + write_header.first_file]
	test	al, al
	mov	edx, OFFSET FLAT:label_138
	mov	eax, OFFSET FLAT:label_183
	cmovne	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_184
	xor	eax, eax
	mov	rcx, rbp
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
.label_189:
	mov	rax, qword ptr [rsp + 0x98]
	test	al, al
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 0x30], rbp
	je	.label_34
	mov	edi, 1
	mov	esi, r13d
	lea	rdx, [rsp + 0x100]
	call	__fxstat
	test	eax, eax
	je	.label_38
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rsi, rbp
	mov	rbp, rax
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_35
	nop	dword ptr [rax]
.label_34:
	mov	dword ptr [rsp + 0x1c], r14d
	mov	rax, qword ptr [rsp + 0x38]
	test	al, al
	je	.label_52
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_54
	mov	rbp, rax
	nop	word ptr [rax + rax]
.label_79:
	mov	edx, 0x2000
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r15
	call	safe_read
	cmp	rax, -1
	je	.label_61
	test	rax, rax
	je	.label_54
	mov	cl, byte ptr [rip + line_end]
	test	cl, cl
	mov	ecx, 0
	mov	edx, 0xa
	cmovne	ecx, edx
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_72:
	cmp	rbx, rax
	jae	.label_70
	movsx	edx, byte ptr [rsp + rbx + 0x190]
	inc	rbx
	cmp	edx, ecx
	jne	.label_72
	dec	rbp
	jne	.label_72
	jmp	.label_76
	nop	
.label_70:
	mov	rdi, r15
	mov	rsi, rbx
	call	xwrite_stdout
	test	rbp, rbp
	jne	.label_79
	jmp	.label_54
.label_38:
	mov	al, byte ptr [rip + presume_input_pipe]
	mov	qword ptr [rsp + 0x48], -1
	mov	cl, 1
	test	al, al
	jne	.label_81
	movzx	eax, word ptr [rsp + 0x118]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_85
	xor	esi, esi
	mov	edx, 1
	mov	edi, r13d
	call	lseek
	mov	qword ptr [rsp + 0x48], rax
	test	rax, rax
	js	.label_90
	mov	cl, byte ptr [rip + presume_input_pipe]
	jmp	.label_81
.label_52:
	mov	r13b, 1
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_94
	mov	ebx, 0x2000
	mov	r14, rax
	nop	dword ptr [rax]
.label_56:
	cmp	r14, rbx
	cmovb	rbx, r14
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r15
	mov	rdx, rbx
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	je	.label_106
	cmp	rbp, -1
	je	.label_109
	mov	rdi, r15
	mov	rsi, rbp
	call	xwrite_stdout
	sub	r14, rbp
	jne	.label_56
	jmp	.label_106
.label_85:
	xor	ecx, ecx
.label_81:
	mov	r12, qword ptr [rsp + 0x130]
	mov	rax, qword ptr [rsp + 0x138]
	cmp	qword ptr [rsp + 0x48], 0
	sets	dl
	or	dl, cl
	mov	rcx, qword ptr [rsp + 0x38]
	test	cl, cl
	je	.label_119
	test	dl, 1
	jne	.label_128
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	cmp	rcx, r12
	jge	.label_128
	mov	r13b, 1
	mov	rax, r12
	sub	rax, qword ptr [rsp + 0x48]
	lea	r15, [rsp + 0x190]
	jle	.label_35
	mov	dword ptr [rsp + 0x1c], r14d
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x33
	add	rcx, rax
	and	rcx, 0xffffffffffffe000
	sub	rax, rcx
	mov	ebx, 0x2000
	cmovne	rbx, rax
	sub	r12, rbx
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x28]
	mov	edi, ebp
	mov	rsi, r12
	call	lseek
	test	rax, rax
	js	.label_148
	mov	edi, ebp
	lea	rsi, [rsp + 0x2190]
	mov	rdx, rbx
	call	safe_read
	mov	rbp, rax
	cmp	rbp, -1
	je	.label_153
	mov	rsi, qword ptr [rsp + 0x10]
	test	rsi, rsi
	mov	rbx, rsi
	je	.label_155
	test	rbp, rbp
	mov	rbx, rsi
	je	.label_155
	movsx	eax, byte ptr [rsp + rbp + 0x218f]
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
.label_155:
	test	rsi, rsi
	je	.label_78
.label_188:
	mov	al, byte ptr [rip + line_end]
	test	al, al
	mov	r15d, 0
	mov	eax, 0xa
	cmovne	r15d, eax
	neg	rbx
	lea	rdi, [rsp + 0x2190]
	mov	r13, qword ptr [rsp + 0x28]
	nop	word ptr [rax + rax]
.label_53:
	test	rbp, rbp
	je	.label_167
	mov	esi, r15d
	mov	rdx, rbp
	call	memrchr
	mov	rbp, rax
	lea	rdi, [rsp + 0x2190]
	test	rbp, rbp
	je	.label_167
	sub	rbp, rdi
	inc	rbx
	cmp	rbx, 1
	jne	.label_53
	jmp	.label_170
.label_167:
	cmp	r12, qword ptr [rsp + 0x48]
	mov	r13b, 1
	je	.label_172
	add	r12, -0x2000
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x28]
	mov	edi, ebp
	mov	rsi, r12
	call	lseek
	test	rax, rax
	lea	r15, [rsp + 0x190]
	js	.label_68
	mov	edx, 0x2000
	mov	edi, ebp
	lea	rsi, [rsp + 0x2190]
	call	safe_read
	mov	rbp, rax
	cmp	rbp, -1
	je	.label_153
	neg	rbx
	test	rbp, rbp
	jne	.label_188
	jmp	.label_62
.label_119:
	test	dl, 1
	jne	.label_181
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	cmp	rcx, r12
	jge	.label_181
	sub	r12, qword ptr [rsp + 0x48]
	mov	ebx, 0
	cmovns	rbx, r12
	mov	r13b, 1
	sub	rbx, qword ptr [rsp + 0x10]
	jbe	.label_55
	lea	r15, [rsp + 0x190]
	je	.label_35
	nop	dword ptr [rax + rax]
.label_51:
	cmp	rbx, 0x2000
	mov	edx, 0x2000
	cmovbe	rdx, rbx
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r15
	call	safe_read
	mov	edi, 1
	cmp	rax, -1
	je	.label_42
	sub	rbx, rax
	test	rax, rax
	jne	.label_44
	mov	edi, 2
	test	rbx, rbx
	jne	.label_42
.label_44:
	mov	rdi, r15
	mov	rsi, rax
	call	xwrite_stdout
	test	rbx, rbx
	jne	.label_51
	jmp	.label_35
.label_128:
	mov	edi, 0x2018
	call	xmalloc
	mov	r12, rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x2000], xmm0
	mov	qword ptr [r12 + 0x2010], 0
	mov	edi, 0x2018
	call	xmalloc
	mov	r15, rax
	lea	rax, [r12 + 0x2008]
	mov	qword ptr [rsp + 0x68], rax
	cmp	qword ptr [rsp + 0x10], 0
	mov	rbx, qword ptr [rsp + 0x48]
	mov	dword ptr [rsp + 0x1c], r14d
	mov	qword ptr [rsp + 0x88], r12
	je	.label_58
	mov	rax, r12
	add	rax, 0x2000
	mov	qword ptr [rsp + 0x80], rax
	lea	rbx, [r15 + 0x2008]
	mov	rax, r15
	add	rax, 0x2000
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x58], r15
	mov	qword ptr [rsp + 0x50], r12
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x78], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	mov	r14, r15
	lea	r15, [rsp + 0x190]
	jmp	.label_67
	nop	dword ptr [rax]
.label_129:
	add	rdi, qword ptr [rsp + 0x50]
	mov	r14, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	memcpy
	mov	rax, qword ptr [rsp + 0x70]
	mov	rax, qword ptr [rax]
	add	qword ptr [r15], rax
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rsp + 0x78]
	add	qword ptr [rcx], rax
	lea	r15, [rsp + 0x190]
	mov	r13, qword ptr [rsp + 0x28]
.label_67:
	mov	edx, 0x2000
	mov	edi, r13d
	mov	rsi, r14
	call	safe_read
	mov	rbp, rax
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_97
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [rax], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	al, byte ptr [rip + line_end]
	test	al, al
	mov	r13d, 0
	mov	eax, 0xa
	cmovne	r13d, eax
	mov	r12, r14
	mov	rdi, r14
	mov	esi, r13d
	mov	rdx, rbp
	call	memchr
	test	rax, rax
	mov	r15d, 0
	je	.label_113
	mov	rcx, qword ptr [rsp + 0x58]
	lea	r14, [rcx + rbp]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_127:
	inc	rax
	inc	r15
	mov	qword ptr [rbx], r15
	mov	rdx, r14
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r13d
	call	memchr
	test	rax, rax
	jne	.label_127
.label_113:
	mov	rcx, qword ptr [rsp + 0x20]
	add	rcx, r15
	mov	r15, qword ptr [rsp + 0x80]
	mov	rdi, qword ptr [r15]
	mov	rax, rbp
	add	rax, rdi
	cmp	rax, 0x1fff
	mov	qword ptr [rsp + 0x20], rcx
	jbe	.label_129
	mov	rax, qword ptr [rsp + 0x50]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	qword ptr [rax + 0x2010], rbp
	mov	rax, rcx
	mov	rcx, qword ptr [rsp + 0x68]
	sub	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rsp + 0x10]
	lea	r15, [rsp + 0x190]
	mov	r13, qword ptr [rsp + 0x28]
	ja	.label_137
	mov	edi, 0x2018
	call	xmalloc
	mov	r14, rax
	lea	rax, [r14 + 0x2000]
	mov	qword ptr [rsp + 0x70], rax
	mov	rbx, r14
	add	rbx, 0x2008
	lea	rax, [rbp + 0x2008]
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x50], rbp
	lea	rax, [rbp + 0x2000]
	mov	qword ptr [rsp + 0x80], rax
	mov	qword ptr [rsp + 0x58], r14
	jmp	.label_67
.label_137:
	mov	r12, qword ptr [rsp + 0x88]
	mov	rsi, qword ptr [r12 + 0x2000]
	add	qword ptr [rsp + 0x60], rsi
	mov	r14, r12
	mov	rdi, r12
	call	xwrite_stdout
	mov	rax, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rsp + 0x20]
	sub	rcx, qword ptr [rax]
	mov	qword ptr [rsp + 0x20], rcx
	lea	rax, [r12 + 0x2000]
	mov	qword ptr [rsp + 0x70], rax
	mov	rbx, r12
	mov	rax, qword ptr [r12 + 0x2010]
	add	rbx, 0x2008
	lea	rcx, [rbp + 0x2000]
	mov	qword ptr [rsp + 0x80], rcx
	lea	rcx, [rbp + 0x2008]
	mov	qword ptr [rsp + 0x78], rcx
	lea	rcx, [rax + 0x2008]
	mov	qword ptr [rsp + 0x68], rcx
	mov	qword ptr [rsp + 0x50], rbp
	mov	qword ptr [rsp + 0x88], rax
	mov	qword ptr [rsp + 0x58], r14
	jmp	.label_67
	nop	word ptr cs:[rax + rax]
.label_174:
	add	rbx, rbp
	mov	rdi, r15
	mov	rsi, rbp
	call	xwrite_stdout
.label_58:
	mov	edx, 0x2000
	mov	edi, r13d
	mov	rsi, r15
	call	safe_read
	mov	rbp, rax
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jae	.label_174
	mov	rdi, r15
	mov	qword ptr [rsp + 0x60], rbx
	mov	rbx, r12
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	lea	r15, [rsp + 0x190]
	jmp	.label_177
.label_181:
	mov	dword ptr [rsp + 0x1c], r14d
	cmp	qword ptr [rsp + 0x10], 0x100001
	jae	.label_84
	mov	rbx, qword ptr [rsp + 0xc0]
	mov	rax, rbx
	shr	rax, 0x3e
	jne	.label_100
	mov	rdi, qword ptr [rsp + 0xe0]
	call	xmalloc
	mov	qword ptr [rsp + 0x2190], rax
	mov	rcx, rax
	add	rcx, rbx
	mov	qword ptr [rsp + 0x2198], rcx
	mov	r12b, 1
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x20], rax
	mov	r13, rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x50], rax
	xor	ebx, ebx
	jmp	.label_190
	nop	word ptr cs:[rax + rax]
.label_95:
	xor	bl, 1
	movzx	eax, bl
	mov	r13, qword ptr [rsp + rax*8 + 0x2190]
	xor	r12d, r12d
.label_190:
	movzx	ebx, bl
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r13
	mov	r15, qword ptr [rsp + 0xc0]
	mov	rdx, r15
	call	full_read
	mov	rbp, rax
	cmp	rbp, r15
	mov	eax, 0
	jae	.label_40
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	r14d, r14d
	jne	.label_43
	mov	rax, qword ptr [rsp + 0x10]
	sub	rax, rbp
	mov	ecx, 0
	cmovb	rax, rcx
	test	r12b, r12b
	cmovne	rax, rcx
	mov	r14b, 1
.label_40:
	test	r12b, r12b
	je	.label_48
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_49
	nop	word ptr cs:[rax + rax]
.label_48:
	mov	r15, qword ptr [rsp + 0x10]
	mov	rsi, r15
	sub	rsi, rax
	add	qword ptr [rsp + 0x50], rsi
	mov	rax, rbx
	xor	rax, 1
	mov	rdi, qword ptr [rsp + rax*8 + 0x2190]
	add	rdi, 0x2000
	call	xwrite_stdout
.label_49:
	sub	rbp, r15
	jbe	.label_59
	add	qword ptr [rsp + 0x50], rbp
	mov	rdi, r13
	mov	rsi, rbp
	call	xwrite_stdout
.label_59:
	mov	r13b, 1
	test	r14b, 1
	je	.label_95
	mov	qword ptr [rsp + 0x10], r15
	jmp	.label_65
.label_97:
	mov	rdi, r14
	mov	rbx, qword ptr [rsp + 0x50]
.label_177:
	call	free
	cmp	rbp, -1
	je	.label_71
	mov	rax, qword ptr [rbx + 0x2000]
	test	rax, rax
	je	.label_149
	movsx	eax, byte ptr [rbx + rax - 1]
	mov	cl, byte ptr [rip + line_end]
	test	cl, cl
	mov	ecx, 0
	mov	edx, 0xa
	cmovne	ecx, edx
	cmp	eax, ecx
	mov	rax, qword ptr [rsp + 0x68]
	jne	.label_77
	mov	rcx, qword ptr [rsp + 0x20]
	jmp	.label_82
.label_84:
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 1
	xor	r14d, r14d
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x80], rax
	nop	
.label_145:
	mov	rbp, rbx
	cmp	rcx, r14
	jne	.label_86
	test	rcx, rcx
	mov	rbx, qword ptr [rsp + 0xf0]
	je	.label_92
	cmp	rcx, qword ptr [rsp + 0xe8]
	lea	rbx, [rcx + rcx]
	cmova	rbx, qword ptr [rsp + 0xc8]
.label_92:
	mov	rax, rbx
	shr	rax, 0x3c
	mov	rdi, qword ptr [rsp + 0x20]
	jne	.label_100
	lea	rsi, [rbx*8]
	call	xrealloc
	mov	r12, rax
	mov	rcx, rbx
	jmp	.label_107
	nop	word ptr cs:[rax + rax]
.label_86:
	mov	r12, qword ptr [rsp + 0x20]
.label_107:
	test	r13b, 1
	mov	qword ptr [rsp + 0x70], rbp
	mov	rbx, rcx
	jne	.label_116
	mov	edi, 0x2000
	call	xmalloc
	mov	rsi, rax
	mov	qword ptr [r12 + r14*8], rsi
	lea	rax, [r14 + 1]
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_122
	nop	
.label_116:
	mov	rsi, qword ptr [r12 + r14*8]
.label_122:
	mov	r15, qword ptr [rsp + 0x10]
	mov	edx, 0x2000
	mov	rdi, qword ptr [rsp + 0x28]
	call	full_read
	mov	qword ptr [rsp + 0x78], rax
	cmp	rax, 0x1fff
	ja	.label_131
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	al, 1
	mov	qword ptr [rsp + 0x80], rax
	test	ebp, ebp
	jne	.label_133
.label_131:
	mov	qword ptr [rsp + 0x20], r12
	cmp	r14, qword ptr [rsp + 0xb8]
	mov	r15b, 1
	je	.label_140
	mov	r15d, r13d
.label_140:
	mov	r12d, r15d
	and	r12b, 1
	mov	r14, qword ptr [rsp + 0x70]
	je	.label_143
	mov	rsi, qword ptr [rsp + 0x78]
	add	qword ptr [rsp + 0x50], rsi
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rax + r14*8]
	call	xwrite_stdout
.label_143:
	mov	rcx, rbx
	lea	rax, [r14 + 1]
	xor	edx, edx
	div	qword ptr [rsp + 0xc8]
	mov	rbx, rdx
	mov	rax, qword ptr [rsp + 0x80]
	test	al, 1
	mov	r13b, r15b
	lea	r15, [rsp + 0x190]
	je	.label_145
	mov	r13b, 1
	mov	rax, qword ptr [rsp + 0xd8]
	test	rax, rax
	je	.label_152
	test	r12b, r12b
	mov	rbp, qword ptr [rsp + 0x58]
	jne	.label_162
	mov	rax, qword ptr [rsp + 0x70]
	cmp	rax, qword ptr [rsp + 0xb8]
	mov	r12, qword ptr [rsp + 0x20]
	jne	.label_158
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rsi, qword ptr [rsp + 0xd0]
	add	qword ptr [rsp + 0x50], rsi
	mov	rdi, qword ptr [r12 + rbx*8]
	jmp	.label_176
.label_76:
	mov	rbp, rbx
	sub	rbp, rax
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, rbp
	call	lseek
	test	rax, rax
	jns	.label_164
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x28]
	lea	rdx, [rsp + 0x2190]
	call	__fxstat
	test	eax, eax
	jne	.label_169
	mov	eax, dword ptr [rsp + 0x21a8]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_164
.label_169:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, rbp
	call	lseek
	test	rax, rax
	jns	.label_164
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	r14, rax
	mov	rdi, rbp
	lea	rsi, [rsp + 0xa0]
	call	offtostr
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r15
	lea	r15, [rsp + 0x190]
	mov	rcx, r14
	mov	r12, qword ptr [rsp + 0x90]
	mov	r8, rbp
	call	error
.label_164:
	mov	rdi, r15
	mov	rsi, rbx
	call	xwrite_stdout
	jmp	.label_54
.label_109:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_106:
	mov	r12, qword ptr [rsp + 0x90]
.label_94:
	mov	r14d, dword ptr [rsp + 0x1c]
	jmp	.label_37
.label_90:
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rbx, rax
	xor	edi, edi
	lea	rsi, [rsp + 0xa0]
	call	offtostr
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	xor	r13d, r13d
	mov	rdx, r15
	lea	r15, [rsp + 0x190]
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	jmp	.label_35
.label_71:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rbp, qword ptr [rsp + 0x60]
	jmp	.label_186
.label_61:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_54:
	mov	r14d, dword ptr [rsp + 0x1c]
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_37
.label_149:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rsp + 0x20]
	jmp	.label_82
.label_77:
	inc	qword ptr [rbx + 0x2008]
	mov	rcx, qword ptr [rsp + 0x20]
	inc	rcx
.label_82:
	mov	r13, qword ptr [rax]
	mov	rax, rcx
	sub	rax, r13
	cmp	rax, qword ptr [rsp + 0x10]
	jbe	.label_87
	mov	rbx, qword ptr [rsp + 0x88]
	mov	r14, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x68]
	nop	dword ptr [rax]
.label_108:
	mov	rsi, qword ptr [rbx + 0x2000]
	add	rbp, rsi
	mov	rdi, rbx
	mov	r12, rcx
	call	xwrite_stdout
	mov	rcx, r12
	sub	rcx, qword ptr [r15]
	mov	rbx, qword ptr [rbx + 0x2010]
	lea	r15, [rbx + 0x2008]
	mov	r13, qword ptr [rbx + 0x2008]
	mov	rax, rcx
	sub	rax, r13
	cmp	rax, r14
	ja	.label_108
	jmp	.label_103
.label_87:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	r14, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x68]
.label_103:
	mov	qword ptr [rsp + 0x60], rbp
	cmp	rcx, r14
	jbe	.label_110
	mov	rsi, rbx
	je	.label_115
	mov	rbp, qword ptr [rbx + 0x2000]
	add	rbp, rbx
	mov	al, byte ptr [rip + line_end]
	test	al, al
	mov	r12d, 0
	mov	eax, 0xa
	cmovne	r12d, eax
	inc	r13
	mov	r14, qword ptr [rsp + 0x10]
	sub	r14, rcx
	mov	rax, rbx
	nop	word ptr cs:[rax + rax]
.label_134:
	mov	rdx, rbp
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r12d
	call	memchr
	test	rax, rax
	mov	esi, 0
	je	.label_115
	inc	rax
	mov	qword ptr [r15], r13
	inc	r13
	inc	r14
	mov	rsi, rax
	jne	.label_134
.label_115:
	sub	rsi, rbx
	mov	rbp, qword ptr [rsp + 0x60]
	add	rbp, rsi
	mov	rdi, rbx
	call	xwrite_stdout
	jmp	.label_142
.label_110:
	mov	rbp, qword ptr [rsp + 0x60]
.label_142:
	mov	r13b, 1
	lea	r15, [rsp + 0x190]
.label_186:
	mov	rdi, qword ptr [rsp + 0x88]
	test	rdi, rdi
	je	.label_160
	nop	
.label_146:
	mov	rbx, qword ptr [rdi + 0x2010]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_146
.label_160:
	cmp	qword ptr [rsp + 0x48], 0
	js	.label_64
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, rbp
	call	lseek
	jmp	.label_151
.label_43:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_65:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	lea	r15, [rsp + 0x190]
	jmp	.label_159
.label_133:
	mov	qword ptr [rsp + 0x10], r15
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	lea	r15, [rsp + 0x190]
	mov	rbp, qword ptr [rsp + 0x58]
	jmp	.label_158
.label_55:
	lea	r15, [rsp + 0x190]
	jmp	.label_35
.label_152:
	mov	r12, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x58]
	jmp	.label_158
.label_162:
	mov	esi, 0x2000
	mov	rdx, qword ptr [rsp + 0x78]
	sub	rsi, rdx
	add	qword ptr [rsp + 0x50], rax
	mov	r12, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [r12 + rcx*8]
	add	rdi, rdx
	mov	r14, rax
	sub	r14, rsi
	jae	.label_171
	mov	rsi, rax
	jmp	.label_176
.label_42:
	mov	rsi, rbp
	call	diagnose_copy_fd_failure
	xor	r13d, r13d
	jmp	.label_35
.label_148:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	rbx, rax
	mov	rdi, r12
	lea	rsi, [rsp + 0xa0]
	call	offtostr
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
.label_157:
	mov	rdx, r15
	lea	r15, [rsp + 0x190]
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	jmp	.label_62
.label_171:
	call	xwrite_stdout
	mov	rdi, qword ptr [r12 + rbx*8]
	mov	rsi, r14
.label_176:
	call	xwrite_stdout
.label_158:
	test	rbp, rbp
	je	.label_36
	mov	rbx, r12
	nop	word ptr cs:[rax + rax]
.label_124:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 8
	dec	rbp
	jne	.label_124
.label_36:
	mov	rdi, r12
	call	free
.label_159:
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbx, qword ptr [rsp + 0x50]
	test	rax, rax
	js	.label_64
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, rbx
	call	lseek
	mov	rbp, rbx
.label_151:
	mov	rbx, rax
	test	rbx, rbx
	jns	.label_47
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	r15, rax
	mov	rdi, rbp
	lea	rsi, [rsp + 0xa0]
	call	offtostr
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r12
	mov	rcx, r15
	lea	r15, [rsp + 0x190]
	mov	r8, rbp
	call	error
.label_47:
	test	rbx, rbx
	jns	.label_64
	xor	r13d, r13d
.label_64:
	mov	r14d, dword ptr [rsp + 0x1c]
	and	r13b, 1
.label_35:
	mov	r12, qword ptr [rsp + 0x90]
.label_37:
	test	r14b, r14b
	jne	.label_69
	mov	rdi, qword ptr [rsp + 0x28]
	call	close
	test	eax, eax
	je	.label_69
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
.label_139:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_69:
	mov	al, byte ptr [rsp + 0x47]
	and	al, r13b
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	rbp, qword ptr [r12 + rcx*8 + 8]
	inc	rcx
	test	rbp, rbp
	jne	.label_32
.label_191:
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_66
	xor	edi, edi
	mov	ebx, eax
	call	close
	test	eax, eax
	mov	eax, ebx
	js	.label_93
.label_66:
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0x4198
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_99:
	mov	byte ptr [rax - 1], 0
	mov	al, 1
	mov	qword ptr [rsp + 0x38], rax
	xor	r14d, r14d
.label_132:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
.label_136:
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_105
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [r15 + 8], rax
	dec	r13d
	jmp	.label_114
.label_100:
	call	xalloc_die
.label_179:
	cmp	ebp, 0xffffff7d
	je	.label_121
	cmp	ebp, 0xffffff7e
	jne	.label_123
	xor	edi, edi
	call	usage
.label_104:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	movsx	ecx, byte ptr [rbp - 1]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	call	error
	mov	edi, 1
	call	usage
.label_121:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_16
	mov	edx, OFFSET FLAT:label_24
	mov	r8d, OFFSET FLAT:label_45
	mov	r9d, OFFSET FLAT:label_46
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_123:
	lea	eax, [rbp - 0x30]
	cmp	eax, 9
	ja	.label_144
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebp
	call	error
.label_144:
	mov	edi, 1
	call	usage
.label_168:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp + 0x2190]
	mov	rdi, qword ptr [rsp + 0x10]
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 0x4b
	mov	edx, OFFSET FLAT:label_88
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_93:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_161
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403330

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	test	rbx, rbx
	je	.label_192
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_195
.label_192:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_195:
	mov	rdi, qword ptr [rip + stdout]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_194
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
	#Procedure 0x4033b0

	.globl diagnose_copy_fd_failure
	.type diagnose_copy_fd_failure, @function
diagnose_copy_fd_failure:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	cmp	edi, 2
	je	.label_196
	cmp	edi, 1
	jne	.label_199
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	jmp	.label_197
.label_196:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
.label_197:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	pop	rbx
	pop	r14
	pop	rbp
	jmp	error
.label_199:
	call	abort
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403440
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403450
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403460

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_205
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_202
	cmp	dword ptr [rbp], 0x20
	jne	.label_202
.label_205:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_204
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_202:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_203
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_201
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_204:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_203:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_88
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
	#Procedure 0x403520

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
	je	.label_206
	nop	word ptr [rax + rax]
.label_208:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_read
	cmp	rax, -1
	je	.label_206
	test	rax, rax
	je	.label_207
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_208
	jmp	.label_206
.label_207:
	call	__errno_location
	mov	dword ptr [rax], 0
.label_206:
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
	#Procedure 0x403580

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_209
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_210:
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
	ja	.label_210
	jmp	.label_212
.label_209:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_211:
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
	ja	.label_211
	mov	byte ptr [rsi], 0x2d
.label_212:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403640

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_213:
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
	ja	.label_213
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403690

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_217
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_219
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_219
	mov	esi, OFFSET FLAT:label_216
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_215
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_215:
	mov	rbx, r14
.label_219:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_217:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_218
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403740
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
	#Procedure 0x403780
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
	#Procedure 0x403790
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
	#Procedure 0x4037a0
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
	#Procedure 0x4037e0
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
	#Procedure 0x403800
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_220
	test	rdx, rdx
	je	.label_220
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_220:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403830
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
	#Procedure 0x4038b0

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
	jmp	.label_293
	nop	
.label_331:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_266
	or	al, dl
	jne	.label_266
	test	dil, 1
	jne	.label_330
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_266
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_293
	jmp	.label_266
.label_632:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_336
	test	rbp, rbp
	je	.label_341
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_341:
	mov	r14d, 1
	jmp	.label_344
.label_633:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_339
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_288
.label_336:
	xor	r14d, r14d
.label_344:
	mov	eax, OFFSET FLAT:label_339
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_340
	nop	
.label_293:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_237
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_245]
.label_634:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_252
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_258
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_635:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_261
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_261
	xor	r14d, r14d
	nop	
.label_283:
	cmp	r14, rbp
	jae	.label_342
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_342:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_283
.label_261:
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
	jmp	.label_288
.label_627:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_288
.label_630:
	mov	al, 1
.label_628:
	mov	r12b, 1
.label_631:
	test	r12b, 1
	mov	cl, 1
	je	.label_282
	mov	ecx, eax
.label_282:
	mov	al, cl
.label_629:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_303
	test	rbp, rbp
	je	.label_308
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_308:
	mov	r14d, 1
	jmp	.label_310
.label_303:
	xor	r14d, r14d
.label_310:
	mov	ecx, OFFSET FLAT:label_258
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_340:
	mov	sil, r12b
.label_288:
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
	jmp	.label_320
	nop	word ptr cs:[rax + rax]
.label_322:
	inc	r12
.label_320:
	cmp	r11, -1
	je	.label_222
	cmp	r12, r11
	jne	.label_224
	jmp	.label_228
	nop	word ptr cs:[rax + rax]
.label_222:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_232
.label_224:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_238
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_243
	cmp	r11, -1
	jne	.label_243
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_243:
	cmp	rbx, r11
	jbe	.label_257
.label_238:
	xor	esi, esi
.label_292:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_260
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_264]
.label_566:
	test	r12, r12
	jne	.label_275
	jmp	.label_269
	nop	word ptr cs:[rax + rax]
.label_257:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_277
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_292
	jmp	.label_221
.label_277:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_292
.label_570:
	xor	eax, eax
	cmp	r11, -1
	je	.label_297
	test	r12, r12
	jne	.label_301
	cmp	r11, 1
	je	.label_269
	xor	r13d, r13d
	jmp	.label_248
.label_559:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_305
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_221
	cmp	r8d, 2
	jne	.label_312
	mov	eax, r9d
	and	al, 1
	jne	.label_312
	cmp	r14, rbp
	jae	.label_314
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_314:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_317
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_317:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_324
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_324:
	add	r14, 3
	mov	r9b, 1
.label_312:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_329
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_329:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_239
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_239
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_239
	cmp	r14, rbp
	jae	.label_249
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_249:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_309
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_309:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_248
.label_560:
	mov	bl, 0x62
	jmp	.label_223
.label_561:
	mov	cl, 0x74
	jmp	.label_226
.label_562:
	mov	bl, 0x76
	jmp	.label_223
.label_563:
	mov	bl, 0x66
	jmp	.label_223
.label_564:
	mov	cl, 0x72
	jmp	.label_226
.label_567:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_235
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_244
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
	jae	.label_246
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_246:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_262
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_262:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_267
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_267:
	add	r14, 3
	xor	r9d, r9d
.label_235:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_248
.label_568:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_273
	cmp	r8d, 2
	jne	.label_275
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_275
	jmp	.label_244
.label_569:
	cmp	r8d, 2
	jne	.label_285
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_244
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_323
.label_260:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_291
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_294
.label_297:
	test	r12, r12
	jne	.label_311
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_311
.label_269:
	mov	dl, 1
.label_565:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_244
	xor	eax, eax
	mov	r13b, dl
.label_248:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_321
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_325
	jmp	.label_326
	nop	word ptr cs:[rax + rax]
.label_321:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_326
.label_325:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_328
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_334
	nop	dword ptr [rax]
.label_326:
	test	sil, sil
.label_334:
	mov	ebx, r15d
	je	.label_268
	jmp	.label_338
.label_328:
	mov	ebx, r15d
	jmp	.label_338
.label_305:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_322
	xor	r15d, r15d
	jmp	.label_275
.label_285:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_226
	xor	eax, eax
	mov	r15b, 0x5c
.label_323:
	xor	r13d, r13d
	jmp	.label_268
.label_226:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_244
.label_223:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_248
	nop	
.label_338:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_221
	cmp	r8d, 2
	jne	.label_236
	mov	eax, r9d
	and	al, 1
	jne	.label_236
	cmp	r14, rbp
	jae	.label_242
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_242:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_247
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_247:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_251
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_251:
	add	r14, 3
	mov	r9b, 1
.label_236:
	cmp	r14, rbp
	jae	.label_271
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_271:
	inc	r14
	jmp	.label_296
.label_291:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_265
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_265:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_346
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_302:
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
	je	.label_286
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_298
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_295
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_306
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_345:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_313
	bt	rsi, rdx
	jb	.label_244
.label_313:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_345
.label_306:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_327
	xor	r13d, r13d
.label_327:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_302
	jmp	.label_300
.label_239:
	xor	r13d, r13d
	jmp	.label_248
.label_311:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_248
.label_273:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_275
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_275
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_275
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_347
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_241
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_231
	cmp	r14, rbp
	jae	.label_233
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_233:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_240
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_240:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_256
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_256:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_229
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_229:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_241:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_248
.label_275:
	xor	eax, eax
.label_301:
	xor	r13d, r13d
	jmp	.label_248
.label_346:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_316:
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
	je	.label_279
	cmp	rbp, -1
	je	.label_284
	cmp	rbp, -2
	je	.label_286
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_289
	xor	r13d, r13d
.label_289:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_316
	jmp	.label_300
.label_286:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_280
	lea	rax, [r10 + r12]
.label_278:
	cmp	byte ptr [rax + rsi], 0
	je	.label_280
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_278
.label_280:
	mov	qword ptr [rsp + 0x40], rsi
.label_298:
	xor	r13d, r13d
	jmp	.label_295
.label_284:
	xor	r13d, r13d
.label_279:
	mov	r10, qword ptr [rsp + 0x28]
.label_295:
	mov	r12, qword ptr [rsp + 0x40]
.label_300:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_294:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_319
	test	al, al
	je	.label_319
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_248
.label_319:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_332
	nop	word ptr [rax + rax]
.label_299:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_332:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_337
	test	sil, 1
	je	.label_290
	cmp	r14, rbp
	jae	.label_343
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_343:
	inc	r14
	xor	esi, esi
	jmp	.label_290
	nop	word ptr cs:[rax + rax]
.label_337:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_221
	cmp	r8d, 2
	jne	.label_225
	mov	eax, r9d
	and	al, 1
	jne	.label_225
	cmp	r14, rbp
	jae	.label_230
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_230:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_234
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_234:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_333
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_333:
	add	r14, 3
	mov	r9b, 1
.label_225:
	cmp	r14, rbp
	jae	.label_250
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_250:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_254
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_254:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_263
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_263:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_290:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_268
	test	r9b, 1
	je	.label_274
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_259
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_276
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_276:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_287
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_287:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_274
	nop	word ptr cs:[rax + rax]
.label_259:
	mov	rbx, rcx
.label_274:
	cmp	r14, rbp
	jae	.label_299
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_299
	nop	
.label_268:
	test	r9b, 1
	je	.label_304
	and	al, 1
	jne	.label_304
	cmp	r14, rbp
	jae	.label_307
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_307:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_335
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_335:
	add	r14, 2
	xor	r9d, r9d
.label_304:
	mov	ebx, r15d
.label_296:
	cmp	r14, rbp
	jae	.label_318
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_318:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_322
.label_347:
	xor	r13d, r13d
	jmp	.label_248
	nop	word ptr cs:[rax + rax]
.label_228:
	mov	rcx, r12
.label_232:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_331
	or	al, dl
	jne	.label_331
	mov	r11, rcx
	jmp	.label_221
.label_244:
	mov	eax, 2
.label_281:
	mov	qword ptr [rsp + 0x38], rax
.label_221:
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
.label_272:
	mov	r14, rax
.label_270:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_266:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_315
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_227
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_227
	inc	rdx
	nop	dword ptr [rax + rax]
.label_255:
	cmp	r14, rbp
	jae	.label_253
	mov	byte ptr [rcx + r14], al
.label_253:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_255
	jmp	.label_227
.label_330:
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
	jmp	.label_272
.label_315:
	mov	rcx, qword ptr [rsp + 0x10]
.label_227:
	cmp	r14, rbp
	jae	.label_270
	mov	byte ptr [rcx + r14], 0
	jmp	.label_270
.label_231:
	mov	eax, 5
	jmp	.label_281
.label_237:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4046e0
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
	#Procedure 0x4047b0
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
	je	.label_348
	mov	qword ptr [rax], rbx
.label_348:
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
	#Procedure 0x4048a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_349
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_352:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_352
.label_349:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_353
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_350], OFFSET FLAT:slot0
.label_353:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_351
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_351:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404940
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404950

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
	js	.label_357
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_360
	cmp	r12d, 0x7fffffff
	je	.label_355
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
	jne	.label_358
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_358:
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
.label_360:
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
	jbe	.label_356
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_359
.label_356:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_354
	mov	rdi, r14
	call	free
.label_354:
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
.label_359:
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
.label_357:
	call	abort
.label_355:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b10
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b20
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
	#Procedure 0x404b40
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
	#Procedure 0x404b60
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
	je	.label_361
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
.label_361:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404bd0
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
	je	.label_362
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
.label_362:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c40

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
	je	.label_363
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
.label_363:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cb0
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
	je	.label_364
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
.label_364:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d20
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_365]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_366]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_367]
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
	#Procedure 0x404d90
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_365]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_366]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_367]
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
	#Procedure 0x404e00

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_365]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_366]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_367]
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
	#Procedure 0x404e60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_365]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_366]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_367]
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
	#Procedure 0x404ec0

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
	je	.label_368
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
.label_368:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f60
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_365]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_366]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_367]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_369
	test	rdx, rdx
	je	.label_369
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_369:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404fd0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_365]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_366]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_367]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_370
	test	rdx, rdx
	je	.label_370
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_370:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405040
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_365]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_366]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_367]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_371
	test	rsi, rsi
	je	.label_371
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_371:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4050b0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_365]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_366]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_367]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_372
	test	rsi, rsi
	je	.label_372
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
.label_372:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405120
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405130
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
	#Procedure 0x405150
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405170

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
	#Procedure 0x405190

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
	jne	.label_377
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_381
	cmp	ecx, 0x55
	jne	.label_373
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_373
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_373
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_373
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_373
	cmp	byte ptr [rax + 5], 0
	jne	.label_373
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_379
	mov	eax, OFFSET FLAT:label_380
	jmp	.label_376
.label_381:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_373
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_373
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_373
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_373
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_373
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_373
	cmp	byte ptr [rax + 7], 0
	je	.label_378
.label_373:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_339
	mov	eax, OFFSET FLAT:label_258
.label_376:
	cmove	rax, rcx
.label_377:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_378:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_374
	mov	eax, OFFSET FLAT:label_375
	jmp	.label_376
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405260

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
.label_383:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_382
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_383
	cmp	rbx, 0x7ff00001
	jb	.label_382
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_383
.label_382:
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
	#Procedure 0x4052c0

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
	je	.label_384
	mov	edx, OFFSET FLAT:label_394
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_400
.label_384:
	mov	edx, OFFSET FLAT:label_401
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_400:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_387
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
	mov	esi, OFFSET FLAT:label_402
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_389
	jmp	qword ptr [(r12 * 8) + label_390]
.label_581:
	add	rsp, 8
	jmp	.label_388
.label_389:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
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
	jmp	.label_388
.label_582:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_385
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
.label_583:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_398
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
.label_584:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
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
.label_585:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
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
	jmp	.label_388
.label_586:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
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
	jmp	.label_388
.label_587:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
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
	jmp	.label_388
.label_588:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
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
	jmp	.label_388
.label_590:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_399
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
	jmp	.label_388
.label_589:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_386
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
.label_388:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405620
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_403:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_403
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405650

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_408
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_411
.label_408:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_411:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_410
	cmp	r10d, 0x29
	jae	.label_407
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_409
.label_407:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_409:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_410
	cmp	r10d, 0x29
	jae	.label_405
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_406
.label_405:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_406:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_410
	cmp	r10d, 0x29
	jae	.label_416
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_404
.label_416:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_404:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_410
	cmp	r10d, 0x29
	jae	.label_414
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_415
.label_414:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_415:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_410
	cmp	r10d, 0x29
	jae	.label_412
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_413
.label_412:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_413:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_410
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_410
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_410
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_410
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_410:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405840

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_417
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_417:
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
	#Procedure 0x4058d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_418
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_419
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_420
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405950
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_422
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_423
	test	rax, rax
	je	.label_422
.label_423:
	pop	rbx
	ret	
.label_422:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405990

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
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
	#Procedure 0x4059b0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_426
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_427
	test	rbx, rbx
	jne	.label_427
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_427:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_428
	test	rax, rax
	je	.label_426
.label_428:
	pop	rbx
	ret	
.label_426:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a00

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_429
	test	rbx, rbx
	jne	.label_429
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_429:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_431
	test	rax, rax
	je	.label_430
.label_431:
	pop	rbx
	ret	
.label_430:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405a30
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_435
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_437
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_432
.label_435:
	test	rcx, rcx
	jne	.label_438
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_438:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_433
.label_432:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_434
	test	rbx, rbx
	jne	.label_434
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_434:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_436
	test	rax, rax
	je	.label_437
.label_436:
	pop	rbx
	ret	
.label_437:
	call	xalloc_die
.label_433:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ad0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_439
	test	rax, rax
	je	.label_440
.label_439:
	pop	rbx
	ret	
.label_440:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405af0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_443
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_445
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_442
	call	free
	xor	eax, eax
	jmp	.label_444
.label_443:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_441
	mov	qword ptr [rsi], rbx
.label_442:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_444
	test	rax, rax
	je	.label_441
.label_444:
	pop	rbx
	ret	
.label_441:
	call	xalloc_die
.label_445:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b60
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
	je	.label_447
	test	r14, r14
	je	.label_446
.label_447:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_446:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ba0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_448
	call	rpl_calloc
	test	rax, rax
	je	.label_448
	pop	rcx
	ret	
.label_448:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bd0

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
	je	.label_449
	test	r15, r15
	je	.label_450
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
.label_450:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c10
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
	je	.label_452
	test	r15, r15
	je	.label_451
.label_452:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_451:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c60

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_453
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_201
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405c90

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
	je	.label_457
	cmp	eax, 1
	je	.label_458
	cmp	eax, 3
	jne	.label_460
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_454
.label_458:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_454
.label_457:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_459
	cmp	rbx, r15
	jbe	.label_455
.label_459:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_456
	mov	dword ptr [rax], 0x4b
	jmp	.label_454
.label_460:
	call	__errno_location
	jmp	.label_454
.label_456:
	mov	dword ptr [rax], 0x22
.label_454:
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
	mov	edx, OFFSET FLAT:label_88
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_455:
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
	#Procedure 0x405d60

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
	#Procedure 0x405d90

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
	jae	.label_467
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_480:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_480
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_466
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
	je	.label_470
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_464
	cmp	eax, 0x22
	jne	.label_466
	mov	ebp, 1
.label_464:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_479
	jmp	.label_462
.label_470:
	test	r14, r14
	je	.label_466
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_466
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_466
.label_479:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_462
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_471
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_465
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_465
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_465
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_481
	cmp	eax, 0x44
	je	.label_481
	cmp	eax, 0x69
	jne	.label_465
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_465
.label_481:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_465:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_471
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_478]
.label_545:
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
	jmp	.label_461
.label_471:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_468
.label_546:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_472
.label_547:
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
.label_549:
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
	jmp	.label_477
.label_543:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_482
.label_544:
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
.label_548:
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
.label_477:
	or	dl, r10b
.label_461:
	or	dl, bl
.label_463:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_469
.label_550:
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
	jmp	.label_473
.label_551:
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
.label_473:
	movzx	eax, dl
.label_472:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_469
.label_552:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_482:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_469
.label_553:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_469:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_462:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_468:
	mov	r13d, r15d
.label_466:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_467:
	mov	edi, OFFSET FLAT:label_474
	mov	esi, OFFSET FLAT:label_475
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_476
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063d0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_483
	test	rsi, rsi
	mov	ecx, 1
	je	.label_484
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_484
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_483:
	mov	ecx, 1
.label_484:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406420

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
	je	.label_485
	cmp	r15, -2
	jb	.label_485
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_485
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_485:
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
	#Procedure 0x406480

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
	jne	.label_487
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_486
	test	cl, cl
	jne	.label_486
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_486
.label_487:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_486
	call	__errno_location
	mov	dword ptr [rax], 0
.label_486:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4064e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_489
	cmp	byte ptr [rax], 0x43
	jne	.label_491
	cmp	byte ptr [rax + 1], 0
	je	.label_488
.label_491:
	mov	esi, OFFSET FLAT:label_490
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_489
.label_488:
	xor	ebx, ebx
.label_489:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406520

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_138
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_492
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406550

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_493
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_495
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_493
.label_495:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_493
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_494
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_494:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_493:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_496
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_496
	test	byte ptr [rbx + 1], 1
	je	.label_496
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_496:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406610

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
	jne	.label_497
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_497
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_498
.label_497:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_498:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_499
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_499:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x406680

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
