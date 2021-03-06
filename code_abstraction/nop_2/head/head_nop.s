	.section	.text
	.align	32
	#Procedure 0x4015e0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_8
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.31
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.18
	nop	
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	mov	rbp, rbp
	xor	esi, esi
	call	setlocale
	mov	rbp, rbp
	test	rax, rax
	je	.label_7
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.33
	nop	
	mov	edx, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strncmp
	test	eax, eax
	mov	rsp, rsp
	je	.label_7
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
.label_7:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	nop	
	mov	ecx, OFFSET FLAT:.str.9
	xor	eax, eax
	call	__printf_chk
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.37
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	lea	rdi, [rdi]
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401910

	.globl main
	.type main, @function
main:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x4168
	mov	rbp, rbp
	mov	rbx, rsi
	mov	ebp, edi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	set_program_name
	mov	rbp, rbp
	mov	edi, 6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.13
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	nop	
	call	textdomain
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + print_headers]],  0
	mov	byte ptr [byte ptr [rip + line_end]],  1
	lea	rdi, [rdi]
	mov	r15b, 1
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r12d, 0xa
	mov	rsp, rsp
	cmp	ebp, 2
	jl	.label_73
	mov	r9, qword ptr [rbx + 8]
	mov	r12d, 0xa
	movzx	eax, byte ptr [r9]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	lea	rdi, [rdi]
	jne	.label_80
	movsx	eax, byte ptr [r9 + 1]
	add	eax, -0x30
	lea	rsi, [rsi]
	mov	r12d, 0xa
	cmp	eax, 9
	mov	rsp, rsp
	ja	.label_120
	lea	r14, [rbx + 8]
	inc	r9
	mov	rsp, rsp
	mov	rax, r9
.label_88:
	nop	
	movsx	ecx, byte ptr [rax + 1]
	inc	rax
	lea	edx, [rcx - 0x30]
	mov	rsp, rsp
	cmp	edx, 0xa
	nop	
	jb	.label_88
	nop	
	test	cl, cl
	je	.label_89
	mov	rsp, rsp
	mov	r8, rbx
	nop	
	xor	esi, esi
	mov	rbp, rbp
	mov	r15b, 1
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_114:
	mov	dl, sil
	movsx	edi, cl
	mov	rbp, rbp
	cmp	edi, 0x70
	jg	.label_94
	lea	rsi, [rsi]
	add	edi, -0x62
	cmp	edi, 0xb
	lea	rdi, [rdi]
	ja	.label_95
	xor	r15d, r15d
	xor	esi, esi
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_99]]
.label_500:
	xor	r15d, r15d
	mov	sil, cl
	mov	rbp, rbp
	jmp	.label_18
	nop	word ptr [rax + rax]
.label_94:
	nop	
	cmp	edi, 0x71
	je	.label_103
	cmp	edi, 0x76
	lea	rdi, [rdi]
	je	.label_128
	cmp	edi, 0x7a
	nop	
	jne	.label_95
	mov	byte ptr [byte ptr [rip + line_end]],  0
	lea	rdi, [rdi]
	mov	sil, dl
	jmp	.label_18
.label_501:
	mov	r15b, 1
	nop	
	mov	sil, dl
	jmp	.label_18
.label_103:
	mov	r13d, 2
	mov	sil, dl
	jmp	.label_18
.label_128:
	mov	rbp, rbp
	mov	r13d, 1
	lea	rdi, [rdi]
	mov	sil, dl
	nop	word ptr [rax + rax]
.label_18:
	mov	rbp, rbp
	mov	cl, byte ptr [rbx + 1]
	nop	
	inc	rbx
	test	cl, cl
	jne	.label_114
	mov	r12, r9
	nop	
	mov	byte ptr [rax], sil
	test	sil, sil
	mov	rsp, rsp
	mov	rbx, r8
	mov	rbp, rbp
	je	.label_116
	mov	byte ptr [rax + 1], 0
.label_116:
	lea	rsi, [rsi]
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_119
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.20
	jmp	.label_121
.label_73:
	lea	rdi, [rdi]
	mov	r14, rbx
	lea	rdi, [rdi]
	jmp	.label_101
.label_80:
	lea	rsi, [rsi]
	mov	r14, rbx
	nop	
	jmp	.label_101
.label_120:
	mov	r14, rbx
	nop	
	jmp	.label_101
.label_89:
	mov	r12, r9
	mov	byte ptr [rax], 0
	xor	r13d, r13d
	mov	r15b, 1
.label_119:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
.label_121:
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	r8, rax
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.38
	nop	
	xor	r9d, r9d
	mov	rdi, r12
	mov	rbp, rbp
	call	xdectoumax
	nop	
	mov	r12, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	dec	ebp
.label_101:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	jmp	.label_43
.label_38:
	nop	
	mov	byte ptr [byte ptr [rip + line_end]],  0
	nop	dword ptr [rax]
.label_43:
	mov	edx, OFFSET FLAT:.str.15
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:long_options
	mov	rbp, rbp
	xor	r8d, r8d
	mov	rbp, rbp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	getopt_long
	mov	ebx, eax
	mov	rbp, rbp
	cmp	ebx, 0x70
	nop	
	jle	.label_142
	lea	rdi, [rdi]
	cmp	ebx, 0x79
	nop	
	jg	.label_122
	mov	r13d, 2
	lea	rdi, [rdi]
	cmp	ebx, 0x71
	lea	rdi, [rdi]
	je	.label_43
	mov	rsp, rsp
	cmp	ebx, 0x76
	jne	.label_20
	lea	rsi, [rsi]
	mov	r13d, 1
	mov	rsp, rsp
	jmp	.label_43
	nop	word ptr cs:[rax + rax]
.label_142:
	mov	rsp, rsp
	cmp	ebx, 0x62
	mov	rsp, rsp
	jle	.label_13
	cmp	ebx, 0x63
	je	.label_16
	mov	rsp, rsp
	cmp	ebx, 0x6e
	nop	
	jne	.label_20
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	nop	
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	sete	al
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x78], rax
	lea	rdi, [rdi]
	jne	.label_23
	inc	rbx
	mov	qword ptr [word ptr [rip + optarg]],  rbx
.label_23:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.38
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	nop	
	call	xdectoumax
	lea	rsi, [rsi]
	mov	r12, rax
	mov	r15b, 1
	jmp	.label_43
	nop	
.label_122:
	lea	rsi, [rsi]
	cmp	ebx, 0x7a
	je	.label_38
	cmp	ebx, 0x80
	mov	rbp, rbp
	jne	.label_20
	mov	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	jmp	.label_43
.label_16:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	nop	
	sete	al
	mov	qword ptr [rsp + 0x78], rax
	jne	.label_44
	nop	
	inc	rbx
	nop	
	mov	qword ptr [word ptr [rip + optarg]],  rbx
.label_44:
	nop	
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.38
	mov	rbp, rbp
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	lea	rsi, [rsi]
	jmp	.label_43
.label_13:
	mov	rbp, rbp
	cmp	ebx, -1
	jne	.label_62
	cmp	r13d, 1
	mov	rbp, rbp
	je	.label_65
	mov	rsp, rsp
	test	r13d, r13d
	lea	rsi, [rsi]
	jne	.label_67
	lea	eax, [rbp - 1]
	cmp	dword ptr [dword ptr [rip + optind]],  eax
	lea	rsi, [rsi]
	jge	.label_67
.label_65:
	mov	byte ptr [byte ptr [rip + print_headers]],  1
.label_67:
	and	r15b, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], r12
	lea	rsi, [rsi]
	jne	.label_70
	test	r12, r12
	jns	.label_70
	mov	rax, qword ptr [rsp + 0x78]
	test	al, al
	jne	.label_74
.label_70:
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	lea	rdi, [rdi]
	lea	rax, [r14 + rax*8]
	mov	ecx, OFFSET FLAT:main.default_file_list
	mov	rsp, rsp
	cmovl	rcx, rax
	mov	qword ptr [rsp + 0x70], rcx
	mov	rbx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	r14b, 1
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_77
	mov	qword ptr [rsp + 0x50], r12
	mov	rbp, rbp
	lea	rax, [r12 + 0x2000]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x2148], rax
	lea	rax, [r12 + r12 + 0x4000]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x4158], rax
	lea	rdi, [rdi]
	mov	eax, r12d
	and	eax, 0x1fff
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa8], rax
	mov	rbp, rbp
	mov	ecx, 0x2000
	sub	rcx, rax
	mov	qword ptr [rsp + 0xa0], rcx
	lea	rax, [rcx + r12]
	shr	rax, 0xd
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x90], rax
	mov	rbp, rbp
	inc	rax
	mov	qword ptr [rsp + 0x60], rax
	cmp	rax, 0x10
	nop	
	mov	ecx, 0x10
	mov	rbp, rbp
	cmovb	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	shr	rax, 1
	nop	
	mov	qword ptr [rsp + 0x28], rax
	mov	r14b, 1
	xor	eax, eax
	nop	dword ptr [rax]
.label_55:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	jne	.label_100
	cmp	byte ptr [rbx + 1], 0
	je	.label_105
.label_100:
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rsp, rsp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	call	open
	mov	r15d, eax
	test	r15d, r15d
	lea	rdi, [rdi]
	jns	.label_108
	mov	rbp, rbp
	call	__errno_location
	mov	r15, rbx
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r15
	jmp	.label_86
.label_105:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	bpl, 1
.label_108:
	mov	dword ptr [rsp + 0x5c], ebp
	mov	qword ptr [rsp + 0x4150], r15
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + print_headers]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_123
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	nop	
	and	al, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.54
	nop	
	cmovne	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.53
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, rbx
	nop	
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
.label_123:
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_136
	mov	r13d, ebp
	mov	qword ptr [rsp + 0x30], rbx
	mov	edi, 1
	mov	esi, r15d
	nop	
	lea	rdx, [rsp + 0xb0]
	call	__fxstat
	test	eax, eax
	je	.label_138
	mov	byte ptr [rsp + 0x17], r14b
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
.label_30:
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_19:
	mov	rbp, rbp
	mov	ebp, r13d
.label_71:
	lea	rdi, [rdi]
	mov	r14b, byte ptr [rsp + 0x17]
	jmp	.label_12
	nop	dword ptr [rax]
.label_136:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	je	.label_17
	mov	dword ptr [rsp + 0x5c], ebp
	lea	rsi, [rsi]
	mov	r12b, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x50]
	test	rax, rax
	mov	rbp, rax
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x2150]
	je	.label_22
	nop	dword ptr [rax + rax]
.label_83:
	lea	rsi, [rsi]
	mov	edx, 0x2000
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsi, r13
	call	safe_read
	nop	
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_31
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_22
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	mov	rsp, rsp
	and	cl, 1
	mov	rsp, rsp
	mov	ecx, 0
	mov	edx, 0xa
	cmovne	ecx, edx
	xor	ebx, ebx
	nop	
.label_41:
	cmp	rbx, rax
	jae	.label_79
	movsx	edx, byte ptr [rsp + rbx + 0x2150]
	inc	rbx
	nop	
	cmp	edx, ecx
	jne	.label_41
	mov	rbp, rbp
	dec	rbp
	jne	.label_41
	mov	rbp, rbp
	jmp	.label_46
	nop	word ptr cs:[rax + rax]
.label_79:
	lea	r13, [rsp + 0x2150]
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, rbx
	mov	rbp, rbp
	call	xwrite_stdout
	mov	rsp, rsp
	test	rbp, rbp
	jne	.label_83
	jmp	.label_22
.label_138:
	mov	byte ptr [rsp + 0x17], r14b
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + presume_input_pipe]]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	rbx, -1
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	mov	ebp, r13d
	lea	rsi, [rsi]
	jne	.label_53
	mov	eax, dword ptr [rsp + 0xc8]
	mov	ecx, 0x2000
	nop	
	or	eax, ecx
	and	eax, 0xf000
	cmp	eax, 0xa000
	mov	rsp, rsp
	jne	.label_63
	lea	rdi, [rdi]
	xor	r12d, r12d
	xor	esi, esi
	mov	edx, 1
	mov	edi, r15d
	mov	rcx, qword ptr [rsp + 0x30]
	call	elseek
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	js	.label_71
	nop	
	mov	al,  byte ptr [byte ptr [rip + presume_input_pipe]]
	jmp	.label_53
.label_17:
	lea	rsi, [rsi]
	mov	r13, r15
	lea	rsi, [rsi]
	lea	r15, [rsp + 0x2150]
	mov	byte ptr [rsp + 0x17], r14b
	mov	r12b, 1
	mov	rax, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	mov	ebx, 0x2000
	mov	rbp, rbp
	mov	r14, rax
	mov	rsp, rsp
	je	.label_75
	nop	dword ptr [rax]
.label_91:
	cmp	r14, rbx
	lea	rdi, [rdi]
	cmovb	rbx, r14
	mov	edi, r13d
	mov	rsi, r15
	mov	rdx, rbx
	call	safe_read
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_75
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_87
	mov	rdi, r15
	nop	
	mov	rsi, rbp
	mov	rsp, rsp
	call	xwrite_stdout
	sub	r14, rbp
	jne	.label_91
	mov	rsp, rsp
	jmp	.label_75
.label_63:
	lea	rdi, [rdi]
	xor	eax, eax
.label_53:
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0xe0]
	test	rbx, rbx
	lea	rdi, [rdi]
	sets	cl
	or	cl, al
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	test	al, al
	je	.label_93
	test	cl, 1
	nop	
	jne	.label_97
	mov	rax, qword ptr [rsp + 0xe8]
	nop	
	movabs	rcx, 0x2000000000000001
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	mov	ecx, 0x200
	cmovb	rcx, rax
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	mov	eax, 0x200
	cmovle	rcx, rax
	lea	rsi, [rsi]
	cmp	r14, rcx
	lea	rdi, [rdi]
	jle	.label_97
	mov	r12b, 1
	mov	rax, r14
	mov	rsp, rsp
	sub	rax, rbx
	mov	rbp, rbp
	jle	.label_71
	mov	r13d, ebp
	mov	qword ptr [rsp + 0x20], rbx
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x33
	mov	rbp, rbp
	add	rcx, rax
	and	rcx, 0xffffffffffffe000
	mov	rsp, rsp
	sub	rax, rcx
	mov	ebx, 0x2000
	cmovne	rbx, rax
	nop	
	sub	r14, rbx
	xor	r12d, r12d
	mov	rsp, rsp
	xor	edx, edx
	mov	edi, r15d
	mov	rbp, rbp
	mov	rsi, r14
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	elseek
	mov	rsp, rsp
	test	rax, rax
	js	.label_19
	mov	edi, r15d
	lea	rsi, [rsp + 0x140]
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	safe_read
	mov	rbp, rax
	nop	
	cmp	rbp, -1
	mov	rbp, rbp
	je	.label_130
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_131
	mov	rsi, rcx
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_133
	nop	
	lea	rax, [rsp + 0x140]
	movsx	eax, byte ptr [rbp + rax - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	mov	rsp, rsp
	and	cl, 1
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	edx, 0xa
	cmovne	ecx, edx
	mov	rbp, rbp
	mov	edx, 0xa
	cmp	eax, ecx
	setne	al
	movzx	eax, al
	nop	
	mov	rcx, rsi
	mov	rbx, rcx
	sub	rbx, rax
	lea	rdi, [rdi]
	jmp	.label_35
.label_93:
	nop	
	mov	r13d, ebp
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_140
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	movabs	rcx, 0x2000000000000001
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	mov	ecx, 0x200
	lea	rsi, [rsi]
	cmovb	rcx, rax
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	cmp	r14, rcx
	jle	.label_140
	sub	r14, rbx
	mov	ebp, 0
	lea	rsi, [rsi]
	cmovns	rbp, r14
	mov	r12b, 1
	mov	rsp, rsp
	sub	rbp, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	jbe	.label_19
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x2150]
	je	.label_19
	nop	word ptr cs:[rax + rax]
.label_39:
	nop	
	cmp	rbp, 0x2000
	lea	rdi, [rdi]
	mov	edx, 0x2000
	mov	rbp, rbp
	cmovbe	rdx, rbp
	lea	rsi, [rsi]
	mov	edi, r15d
	nop	
	mov	rsi, r14
	mov	rsp, rsp
	call	safe_read
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	mov	edi, 1
	cmp	rbx, -1
	je	.label_29
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_33
	lea	rdi, [rdi]
	mov	edi, 2
	lea	rdi, [rdi]
	cmp	rbp, rbx
	lea	rdi, [rdi]
	jne	.label_29
.label_33:
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	call	xwrite_stdout
	sub	rbp, rbx
	lea	rsi, [rsi]
	jne	.label_39
	jmp	.label_19
.label_97:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], ebp
	mov	rsp, rsp
	mov	edi, 0x2018
	nop	
	call	xmalloc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + 0x2000], xmm0
	mov	qword ptr [rbp + 0x2010], 0
	mov	rsp, rsp
	mov	edi, 0x2018
	call	xmalloc
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	rsi, [rsi]
	mov	r12, rbx
	mov	qword ptr [rsp + 0x20], rbx
	lea	rdi, [rdi]
	jmp	.label_50
.label_140:
	mov	r14, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	cmp	r14, 0x100000
	lea	rdi, [rdi]
	ja	.label_56
	mov	qword ptr [rsp + 0x20], rbx
	xor	edx, edx
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x2148]
	mov	rbp, rbp
	div	rbx
	mov	rsp, rsp
	cmp	rax, 1
	jbe	.label_125
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x4158]
	call	xmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x4160], rax
	mov	qword ptr [rsp + 0x140], rax
	mov	rcx, rax
	add	rcx, rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x148], rcx
	mov	rbp, rbp
	mov	r12b, 1
	xor	r15d, r15d
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
	jmp	.label_69
	nop	word ptr cs:[rax + rax]
.label_111:
	xor	r13b, 1
	movzx	eax, r13b
	mov	rsi, qword ptr [rsp + rax*8 + 0x140]
	mov	rsp, rsp
	xor	r12d, r12d
.label_69:
	mov	qword ptr [rsp + 0x98], rsi
	movzx	r13d, r13b
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x4150]
	mov	rbp, qword ptr [rsp + 0x2148]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	full_read
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, rbp
	mov	eax, 0
	jae	.label_61
	call	__errno_location
	mov	rbp, rbp
	mov	r15d, dword ptr [rax]
	mov	rbp, rbp
	test	r15d, r15d
	mov	rbp, rbp
	jne	.label_90
	mov	rbp, rbp
	mov	rax, r14
	mov	rsp, rsp
	sub	rax, rbx
	mov	ecx, 0
	mov	rbp, rbp
	cmovb	rax, rcx
	mov	rsp, rsp
	test	r12b, r12b
	cmovne	rax, rcx
	nop	
	mov	r15b, 1
.label_61:
	mov	rbp, rbp
	test	r12b, r12b
	lea	rdi, [rdi]
	jne	.label_96
	mov	rsi, r14
	lea	rdi, [rdi]
	sub	rsi, rax
	mov	rsp, rsp
	add	qword ptr [rsp + 0x18], rsi
	mov	rsp, rsp
	mov	rax, r13
	mov	rsp, rsp
	xor	rax, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + rax*8 + 0x140]
	lea	rdi, [rdi]
	add	rdi, 0x2000
	call	xwrite_stdout
.label_96:
	mov	rsp, rsp
	sub	rbx, r14
	jbe	.label_107
	add	qword ptr [rsp + 0x18], rbx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x98]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	xwrite_stdout
.label_107:
	mov	rbp, rbp
	test	r15b, 1
	je	.label_111
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_113
.label_56:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x20], rbx
	lea	rdi, [rdi]
	xor	ebx, ebx
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x88], rax
	mov	r13d, 1
	mov	rbp, rbp
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	r14d, r14d
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rax
	nop	
.label_32:
	lea	rsi, [rsi]
	cmp	rbx, r15
	jne	.label_126
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x98]
	je	.label_129
	cmp	rbx, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	lea	rbp, [rbx + rbx]
	cmova	rbp, qword ptr [rsp + 0x60]
.label_129:
	mov	rsp, rsp
	mov	rax, rbp
	shr	rax, 0x3c
	jne	.label_125
	mov	rsp, rsp
	lea	rsi, [rbp*8]
	call	xrealloc
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rbx, rbp
	mov	rsp, rsp
	jmp	.label_135
	nop	dword ptr [rax]
.label_126:
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x98]
.label_135:
	lea	rsi, [rsi]
	test	r14b, 1
	mov	rbp, rbp
	jne	.label_137
	mov	edi, 0x2000
	mov	rbp, rbp
	call	xmalloc
	mov	rsi, rax
	mov	qword ptr [r12 + r15*8], rsi
	lea	rax, [r15 + 1]
	mov	qword ptr [rsp + 0x88], rax
	jmp	.label_84
	nop	dword ptr [rax]
.label_137:
	mov	rsi, qword ptr [r12 + r15*8]
.label_84:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], r14
	lea	rdi, [rdi]
	mov	edx, 0x2000
	mov	rdi, qword ptr [rsp + 0x4150]
	call	full_read
	nop	
	mov	qword ptr [rsp + 0x4160], rax
	cmp	rax, 0x1fff
	lea	rsi, [rsi]
	ja	.label_145
	call	__errno_location
	mov	rsp, rsp
	mov	ebp, dword ptr [rax]
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0x40], rax
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_49
.label_145:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r12
	lea	rdi, [rdi]
	cmp	r15, qword ptr [rsp + 0x90]
	mov	r14b, 1
	je	.label_15
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	mov	r14b, al
.label_15:
	nop	
	mov	r12b, r14b
	lea	rsi, [rsi]
	and	r12b, 1
	mov	rbp, r13
	je	.label_24
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x4160]
	add	qword ptr [rsp + 0x18], rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbp*8]
	call	xwrite_stdout
.label_24:
	lea	rdi, [rdi]
	lea	rax, [rbp + 1]
	xor	edx, edx
	div	qword ptr [rsp + 0x60]
	mov	r13, rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	mov	r15, rbp
	je	.label_32
	nop	
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xa0]
	test	rax, rax
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x4150]
	mov	r14d, dword ptr [rsp + 0x5c]
	mov	rsp, rsp
	je	.label_37
	test	r12b, r12b
	jne	.label_47
	nop	
	cmp	rbp, qword ptr [rsp + 0x90]
	mov	r12, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	jne	.label_48
	mov	rsi, qword ptr [rsp + 0x4160]
	sub	rsi, qword ptr [rsp + 0xa8]
	mov	rbp, rbp
	add	qword ptr [rsp + 0x18], rsi
	nop	
	mov	rdi, qword ptr [r12 + r13*8]
	jmp	.label_78
.label_46:
	mov	rbp, rbx
	sub	rbp, rax
	mov	edx, 1
	nop	
	mov	edi, r15d
	mov	rsi, rbp
	call	lseek
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	jns	.label_60
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, r15d
	lea	rdx, [rsp + 0x140]
	call	__fxstat
	nop	
	test	eax, eax
	mov	rsp, rsp
	jne	.label_66
	mov	eax, dword ptr [rsp + 0x158]
	mov	rbp, rbp
	mov	ecx, 0xf000
	lea	rsi, [rsi]
	and	eax, ecx
	cmp	eax, 0x8000
	nop	
	jne	.label_60
.label_66:
	lea	rdi, [rdi]
	mov	edx, 1
	mov	edi, r15d
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	elseek
.label_60:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x2150]
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	call	xwrite_stdout
	mov	rbp, rbp
	jmp	.label_22
.label_87:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	nop	
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
.label_75:
	mov	r14b, byte ptr [rsp + 0x17]
	mov	r15, r13
.label_22:
	nop	
	mov	ebp, dword ptr [rsp + 0x5c]
	lea	rdi, [rdi]
	jmp	.label_12
.label_31:
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	nop	
	xor	r12d, r12d
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
	jmp	.label_22
.label_90:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
.label_113:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x4160]
	call	free
	mov	r15, qword ptr [rsp + 0x4150]
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0x5c]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jmp	.label_115
.label_49:
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.57
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	nop	
	mov	esi, ebp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
	mov	r15, qword ptr [rsp + 0x4150]
	mov	r14d, dword ptr [rsp + 0x5c]
	mov	rbp, rbp
	jmp	.label_48
.label_37:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	jmp	.label_48
.label_47:
	lea	rsi, [rsi]
	mov	esi, 0x2000
	mov	rcx, qword ptr [rsp + 0x4160]
	nop	
	sub	rsi, rcx
	add	qword ptr [rsp + 0x18], rax
	mov	r12, qword ptr [rsp + 0x98]
	mov	rdi, qword ptr [r12 + rbp*8]
	add	rdi, rcx
	mov	rbp, rax
	sub	rbp, rsi
	jae	.label_134
	nop	
	mov	rsi, rax
	nop	
	jmp	.label_78
.label_29:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	diagnose_copy_fd_failure
	xor	r12d, r12d
	jmp	.label_19
.label_134:
	lea	rsi, [rsi]
	call	xwrite_stdout
	mov	rdi, qword ptr [r12 + r13*8]
	nop	
	mov	rsi, rbp
.label_78:
	call	xwrite_stdout
.label_48:
	mov	rbp, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbx, r12
	je	.label_141
	nop	
.label_144:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 8
	dec	rbp
	lea	rdi, [rdi]
	jne	.label_144
.label_141:
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	mov	ebp, r14d
.label_115:
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	js	.label_146
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	call	elseek
	nop	
	test	rax, rax
	mov	rsp, rsp
	js	.label_21
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	bl, al
.label_21:
	mov	r12b, bl
	and	r12b, 1
	lea	rsi, [rsi]
	mov	r14b, byte ptr [rsp + 0x17]
	jmp	.label_12
.label_146:
	nop	
	mov	r12, qword ptr [rsp + 0x40]
	and	r12b, 1
	mov	rsp, rsp
	mov	r14b, byte ptr [rsp + 0x17]
	jmp	.label_12
.label_130:
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	nop	
	xor	r12d, r12d
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.57
	jmp	.label_30
.label_131:
	mov	edx, 0xa
	nop	
	mov	rbx, rcx
	jmp	.label_35
.label_133:
	lea	rsi, [rsi]
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	rcx, rsi
	mov	rbx, rcx
.label_35:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	r15d, 0
	nop	
	cmovne	r15d, edx
	nop	word ptr cs:[rax + rax]
.label_54:
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_34
	test	rcx, rcx
	je	.label_45
	lea	rdi, [rsp + 0x140]
	lea	rsi, [rsi]
	mov	esi, r15d
	lea	rdi, [rdi]
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	rbp, rcx
	nop	
	call	memrchr
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_34
	lea	rax, [rsp + 0x140]
	sub	rbp, rax
	jmp	.label_51
	nop	
.label_45:
	dec	rbp
.label_51:
	dec	rbx
	cmp	rbx, -1
	jne	.label_54
	jmp	.label_57
.label_34:
	lea	rdi, [rdi]
	cmp	r14, qword ptr [rsp + 0x20]
	je	.label_59
	add	r14, -0x2000
	xor	r12d, r12d
	xor	edx, edx
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x4150]
	nop	
	mov	edi, r15d
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x30]
	nop	
	call	elseek
	nop	
	test	rax, rax
	lea	rsi, [rsi]
	js	.label_19
	lea	rdi, [rdi]
	mov	edx, 0x2000
	mov	edi, r15d
	lea	rsi, [rsp + 0x140]
	lea	rdi, [rdi]
	call	safe_read
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	mov	r12b, 1
	mov	rbp, rbp
	je	.label_19
	nop	
	mov	edx, 0xa
	nop	
	mov	r12, qword ptr [rsp + 0x48]
	cmp	rbp, -1
	mov	rcx, qword ptr [rsp + 0x50]
	nop	
	jne	.label_35
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	error
	mov	r15, qword ptr [rsp + 0x4150]
	nop	
	jmp	.label_19
.label_57:
	mov	qword ptr [rsp + 0x50], rcx
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	cmp	r14, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], r12
	mov	rbx, qword ptr [rsp + 0x30]
	jle	.label_36
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	
	xor	edx, edx
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x4150]
	mov	rsp, rsp
	mov	edi, r15d
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	elseek
	test	rax, rax
	lea	rsi, [rsi]
	js	.label_19
	mov	rsp, rsp
	lea	r12, [rsp + 0x2150]
	mov	r15, r14
	sub	r15, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	je	.label_102
.label_117:
	cmp	r15, 0x2000
	lea	rsi, [rsi]
	mov	edx, 0x2000
	nop	
	cmovbe	rdx, r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x4150]
	mov	rsp, rsp
	mov	rsi, r12
	call	safe_read
	mov	rbx, rax
	mov	edi, 1
	cmp	rbx, -1
	je	.label_109
	nop	
	test	rbx, rbx
	jne	.label_112
	lea	rsi, [rsi]
	mov	edi, 2
	lea	rdi, [rdi]
	cmp	r15, rbx
	lea	rsi, [rsi]
	jne	.label_109
.label_112:
	mov	rdi, r12
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	xwrite_stdout
	sub	r15, rbx
	nop	
	jne	.label_117
.label_102:
	mov	rbx, qword ptr [rsp + 0x30]
.label_36:
	mov	qword ptr [rsp + 0x30], rbx
	lea	rsi, [rbp + 1]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x140]
	call	xwrite_stdout
	lea	rsi, [r14 + rbp + 1]
	lea	rdi, [rdi]
	xor	edx, edx
	mov	r15, qword ptr [rsp + 0x4150]
	mov	rsp, rsp
	mov	edi, r15d
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rbp, rbp
	call	elseek
	test	rax, rax
	lea	rdi, [rdi]
	setns	r12b
	jmp	.label_19
.label_109:
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	call	diagnose_copy_fd_failure
	nop	
	xor	r12d, r12d
	mov	r15, qword ptr [rsp + 0x4150]
	jmp	.label_19
.label_59:
	mov	qword ptr [rsp + 0x50], rcx
	nop	
	mov	qword ptr [rsp + 0x48], r12
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x4150]
	nop	
	mov	r12b, 1
	mov	rsp, rsp
	jmp	.label_19
.label_98:
	mov	r14, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [r14 + 0x2000]
	nop	
	add	r12, rsi
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	call	xwrite_stdout
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	sub	rdx, qword ptr [r14 + 0x2008]
	mov	rax, r14
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14 + 0x2010]
	nop	
	mov	r15, qword ptr [rsp + 0x4150]
	nop	
.label_50:
	mov	qword ptr [rsp + 0x40], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	lea	rcx, [rcx + 0x2008]
	mov	qword ptr [rsp + 0x80], rcx
	mov	rbx, rbp
	jmp	.label_104
.label_72:
	mov	edi, 0x2018
	call	xmalloc
	mov	rbx, rbp
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x4150]
	nop	word ptr [rax + rax]
.label_104:
	nop	
	mov	qword ptr [rsp + 0x4160], rbx
	nop	
	mov	rbp, rax
	lea	r13, [rbp + 0x2008]
	jmp	.label_9
	nop	word ptr cs:[rax + rax]
.label_28:
	add	r12, r14
	mov	rdi, rbp
	nop	
	mov	rsi, r14
	call	xwrite_stdout
.label_9:
	mov	edx, 0x2000
	lea	rdi, [rdi]
	mov	edi, r15d
	nop	
	mov	rsi, rbp
	mov	rsp, rsp
	call	safe_read
	mov	r14, rax
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_26
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x50]
	test	rax, rax
	mov	rbp, rbp
	je	.label_28
	mov	qword ptr [rsp + 0x98], r12
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x2000], r14
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [r13], xmm0
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	ebx, 0
	mov	eax, 0xa
	cmovne	ebx, eax
	mov	rbp, rbp
	mov	rdi, rbp
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, r14
	lea	rsi, [rsi]
	call	memchr
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_42
	mov	rsp, rsp
	lea	r12, [rbp + r14]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_58:
	inc	rax
	mov	rbp, rbp
	inc	r15
	mov	rsp, rsp
	mov	qword ptr [r13], r15
	lea	rdi, [rdi]
	mov	rdx, r12
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	esi, ebx
	call	memchr
	test	rax, rax
	mov	rbp, rbp
	jne	.label_58
	jmp	.label_139
.label_42:
	xor	r15d, r15d
.label_139:
	mov	rcx, qword ptr [rsp + 0x40]
	add	rcx, r15
	mov	rbx, qword ptr [rsp + 0x4160]
	mov	rdi, qword ptr [rbx + 0x2000]
	mov	rax, r14
	add	rax, rdi
	cmp	rax, 0x1fff
	lea	rdi, [rdi]
	ja	.label_52
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rcx
	add	rdi, rbx
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r14
	call	memcpy
	movdqu	xmm0, xmmword ptr [rbp + 0x2000]
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [rbx + 0x2000]
	paddq	xmm1, xmm0
	movdqu	xmmword ptr [rbx + 0x2000], xmm1
	mov	r15, qword ptr [rsp + 0x4150]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x98]
	jmp	.label_9
.label_52:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x2010], rbp
	nop	
	mov	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x80]
	sub	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 0x50]
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	jbe	.label_72
	jmp	.label_98
.label_26:
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	free
	cmp	r14, -1
	je	.label_81
	mov	rax, qword ptr [rbx + 0x2000]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_82
	movsx	eax, byte ptr [rax + rbx - 1]
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	and	cl, 1
	mov	ecx, 0
	mov	edx, 0xa
	mov	rbp, rbp
	cmovne	ecx, edx
	lea	rdi, [rdi]
	cmp	eax, ecx
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	je	.label_85
	inc	qword ptr [rbx + 0x2008]
	inc	rdx
.label_85:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r8, qword ptr [rsp + 0x80]
	lea	rsi, [rsi]
	jmp	.label_92
.label_81:
	mov	qword ptr [rsp + 0x98], r12
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x40], rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.57
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	mov	rbp, rbp
	jmp	.label_11
.label_82:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r8, qword ptr [rsp + 0x80]
	mov	rdx, qword ptr [rsp + 0x40]
.label_92:
	lea	rsi, [rsi]
	mov	r14, qword ptr [r8]
	lea	rsi, [rsi]
	mov	rax, rdx
	lea	rsi, [rsi]
	sub	rax, r14
	cmp	rax, rcx
	mov	rbp, qword ptr [rsp + 0x18]
	jbe	.label_110
	nop	word ptr [rax + rax]
.label_118:
	mov	rsi, qword ptr [rbp + 0x2000]
	add	r12, rsi
	mov	rdi, rbp
	mov	rbx, rcx
	mov	r14, r8
	lea	rsi, [rsi]
	mov	r13, rdx
	call	xwrite_stdout
	mov	rsp, rsp
	mov	rdx, r13
	mov	rcx, rbx
	lea	rdi, [rdi]
	sub	rdx, qword ptr [r14]
	mov	rbp, qword ptr [rbp + 0x2010]
	lea	r8, [rbp + 0x2008]
	nop	
	mov	r14, qword ptr [rbp + 0x2008]
	lea	rdi, [rdi]
	mov	rax, rdx
	sub	rax, r14
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_118
.label_110:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x98], r12
	mov	al, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	rsp, rsp
	cmp	rdx, rcx
	jbe	.label_127
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x4150], r15
	mov	rsp, rsp
	mov	ecx, 0xa
	lea	rdi, [rdi]
	mov	rsi, rbp
	je	.label_106
	mov	rbp, rbp
	mov	r12, qword ptr [rbp + 0x2000]
	mov	rsp, rsp
	add	r12, rbp
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	lea	rdi, [rdi]
	mov	ebx, 0
	cmovne	ebx, ecx
	lea	rdi, [rdi]
	inc	r14
	mov	r13, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	sub	r13, rdx
	mov	rax, rbp
	nop	dword ptr [rax + rax]
.label_143:
	lea	rdi, [rdi]
	mov	r15, r8
	mov	rbp, rbp
	mov	rdx, r12
	sub	rdx, rax
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rbp, rbp
	call	memchr
	mov	r8, r15
	lea	rdi, [rdi]
	test	rax, rax
	mov	esi, 0
	je	.label_106
	mov	rsp, rsp
	inc	rax
	mov	rbp, rbp
	mov	qword ptr [r8], r14
	nop	
	inc	r14
	mov	rbp, rbp
	inc	r13
	lea	rsi, [rsi]
	mov	rsi, rax
	jne	.label_143
.label_106:
	sub	rsi, rbp
	add	qword ptr [rsp + 0x98], rsi
	mov	rdi, rbp
	call	xwrite_stdout
	mov	r15, qword ptr [rsp + 0x4150]
	jmp	.label_11
.label_127:
	mov	qword ptr [rsp + 0x50], rcx
.label_11:
	mov	rbx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x18]
	nop	
	test	rdi, rdi
	nop	
	je	.label_14
	nop	word ptr cs:[rax + rax]
.label_25:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rdi + 0x2010]
	mov	rbp, rbp
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_25
.label_14:
	lea	rdi, [rdi]
	test	rbx, rbx
	js	.label_27
	mov	rbp, rbp
	xor	ebp, ebp
	xor	edx, edx
	mov	edi, r15d
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x30]
	call	elseek
	test	rax, rax
	mov	rsp, rsp
	js	.label_132
	mov	rax, qword ptr [rsp + 0x40]
	mov	bpl, al
.label_132:
	mov	r12b, bpl
	jmp	.label_124
.label_27:
	mov	r12, qword ptr [rsp + 0x40]
.label_124:
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	ebp, dword ptr [rsp + 0x5c]
	lea	rdi, [rdi]
	mov	r14b, byte ptr [rsp + 0x17]
	nop	word ptr cs:[rax + rax]
.label_12:
	test	bpl, bpl
	jne	.label_40
	mov	edi, r15d
	call	close
	test	eax, eax
	je	.label_40
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	r12d, r12d
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
.label_86:
	nop	
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_40:
	and	r14b, r12b
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + rcx*8 + 8]
	nop	
	mov	rax, rcx
	inc	rax
	test	rbx, rbx
	nop	
	jne	.label_55
.label_77:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	nop	
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_64
	xor	edi, edi
	lea	rsi, [rsi]
	call	close
	test	eax, eax
	js	.label_68
.label_64:
	lea	rdi, [rdi]
	movzx	eax, r14b
	mov	rsp, rsp
	xor	eax, 1
	add	rsp, 0x4168
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_125:
	call	xalloc_die
.label_62:
	lea	rdi, [rdi]
	cmp	ebx, 0xffffff7d
	je	.label_76
	cmp	ebx, 0xffffff7e
	mov	rbp, rbp
	jne	.label_20
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	call	usage
.label_76:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.17_0
	mov	r9d, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_20:
	lea	rdi, [rdi]
	lea	eax, [rbx - 0x30]
	mov	rsp, rsp
	cmp	eax, 9
	lea	rdi, [rdi]
	ja	.label_10
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rcx
	mov	rbp, rbp
	mov	ecx, ebx
	call	error
.label_10:
	mov	edi, 1
	call	usage
.label_95:
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbx]
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	call	usage
.label_74:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp + 0x140]
	mov	rdi, r12
	call	umaxtostr
	mov	rdi, rax
	lea	rdi, [rdi]
	call	quote
	nop	
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 0x4b
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_68:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.10
	xor	eax, eax
	lea	rsi, [rsi]
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403700

	.globl elseek
	.type elseek, @function
elseek:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	r15, rcx
	mov	rbp, rbp
	mov	ebp, edx
	mov	r14, rsi
	mov	rbp, rbp
	call	lseek
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rbp, rbp
	jns	.label_147
	call	__errno_location
	mov	r12d, dword ptr [rax]
	lea	rdi, [rdi]
	test	ebp, ebp
	mov	eax, OFFSET FLAT:.str.55
	mov	esi, OFFSET FLAT:.str.56
	mov	rsp, rsp
	cmove	rsi, rax
	xor	edi, edi
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	lea	rsi, [rsp]
	mov	rdi, r14
	nop	
	call	offtostr
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, r12d
	nop	
	mov	rdx, r13
	nop	
	mov	rcx, r15
	mov	rbp, rbp
	mov	r8, rbp
	call	error
.label_147:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037e0

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_148
	nop	
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_149
.label_148:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	rbp
	ret	
.label_149:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	call	clearerr_unlocked
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.59
	nop	
	call	quotearg_style
	nop	
	mov	rcx, rax
	nop	
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	esi, ebp
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403890

	.globl diagnose_copy_fd_failure
	.type diagnose_copy_fd_failure, @function
diagnose_copy_fd_failure:
	mov	rbp, rbp
	push	rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbx, rsi
	mov	rsp, rsp
	cmp	edi, 2
	je	.label_150
	lea	rsi, [rsi]
	cmp	edi, 1
	jne	.label_151
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	jmp	.label_152
.label_150:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
.label_152:
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	nop	
	mov	rdx, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	lea	rsi, [rsi]
	jmp	error
.label_151:
	call	abort
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403940
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403950
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403960

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_156
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_153
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_153
.label_156:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_154
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_153:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_155
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_154:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_155:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a60

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
	je	.label_157
	nop	word ptr [rax + rax]
.label_159:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_read
	cmp	rax, -1
	je	.label_157
	test	rax, rax
	je	.label_158
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_159
	jmp	.label_157
.label_158:
	call	__errno_location
	mov	dword ptr [rax], 0
.label_157:
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
	#Procedure 0x403ac0

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	mov	rsp, rsp
	test	rcx, rcx
	js	.label_160
	add	rsi, 0x14
	mov	rbp, rbp
	movabs	r8, 0x6666666666666667
.label_161:
	mov	rax, rcx
	mov	rsp, rsp
	imul	r8
	mov	rsp, rsp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	rsi, [rsi]
	lea	edi, [rdx + rax]
	mov	rsp, rsp
	add	edi, edi
	mov	rbp, rbp
	lea	r9d, [rdi + rdi*4]
	lea	rdi, [rdi]
	mov	edi, ecx
	lea	rdi, [rdi]
	sub	edi, r9d
	add	edi, 0x30
	lea	rdi, [rdi]
	mov	byte ptr [rsi - 1], dil
	lea	rdi, [rdi]
	dec	rsi
	mov	rbp, rbp
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	mov	rbp, rbp
	ja	.label_161
	jmp	.label_162
.label_160:
	mov	rsp, rsp
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_163:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	nop	
	sub	edi, r9d
	mov	eax, 0x30
	nop	
	sub	eax, edi
	mov	byte ptr [rsi - 2], al
	add	rdx, r10
	lea	rdi, [rdi]
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	nop	
	mov	rcx, rdx
	lea	rsi, [rsi]
	ja	.label_163
	mov	byte ptr [rsi - 2], 0x2d
	mov	rsp, rsp
	add	rsi, -2
.label_162:
	mov	rbp, rbp
	mov	rax, rsi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bb0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_164:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rdi, [rdi]
	mul	r8
	mov	rsp, rsp
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	mov	rbp, rbp
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dil
	mov	rbp, rbp
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_164
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c10

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_165
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_167
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_167
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_166
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_166:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_167:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_165:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d00
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d50
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d70
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d90
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e00
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e20
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_168
	test	rdx, rdx
	nop	
	je	.label_168
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_168:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e60
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	add	rbp, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f10

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_199:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_293
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_174]]
.label_438:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_439:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_207
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_207
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_224:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_221
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_221:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_224
.label_207:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_192
.label_431:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_192
.label_434:
	lea	rsi, [rsi]
	mov	al, 1
.label_432:
	mov	rbp, rbp
	mov	r12b, 1
.label_435:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_253
	lea	rsi, [rsi]
	mov	cl, al
.label_253:
	mov	rsp, rsp
	mov	al, cl
.label_433:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_260
	test	r10, r10
	je	.label_267
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_269
.label_260:
	xor	ecx, ecx
	jmp	.label_269
.label_436:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_280
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_285
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_203
.label_437:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_192
.label_267:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_269:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_192
.label_280:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_203
.label_285:
	lea	rdi, [rdi]
	mov	eax, 1
.label_203:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_192:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_179
	nop	word ptr cs:[rax + rax]
.label_171:
	nop	
	inc	rdi
.label_179:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_255
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_258
	jmp	.label_262
	nop	dword ptr [rax + rax]
.label_255:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_266
.label_258:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_274
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_278
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_278
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_278:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_189
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_193
	nop	dword ptr [rax + rax]
.label_274:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_193
	nop	word ptr cs:[rax + rax]
.label_189:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_254
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_193
	jmp	.label_196
.label_254:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_193:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_273
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_284]]
.label_472:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_217
	mov	rbp, rbp
	jmp	.label_251
.label_476:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_252
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_257
	nop	
	cmp	rbp, 1
	je	.label_251
	xor	r13d, r13d
	jmp	.label_202
.label_465:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_270
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_196
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_281
	mov	al, r14b
	and	al, 1
	jne	.label_236
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_247
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_247:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_172
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_172:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_182
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_182:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_181
.label_466:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_198
.label_467:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_197
.label_468:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_198
.label_469:
	mov	bl, 0x66
	jmp	.label_198
.label_470:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_197
.label_473:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_212
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_216
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_191
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_191:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_200
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_200:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_240
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_240:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_212:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_202
.label_474:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_249
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_217
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_217
	mov	rbp, rbp
	jmp	.label_261
.label_475:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_264
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_271
	lea	rdi, [rdi]
	jmp	.label_276
.label_273:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_214
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_213:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_180
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_180
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_202
.label_252:
	test	rdi, rdi
	jne	.label_206
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_206
.label_251:
	mov	dl, 1
.label_471:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_209
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_202
.label_270:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_171
	jmp	.label_217
.label_264:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_197
.label_271:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_187
.label_197:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_222
.label_198:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_202
	lea	rsi, [rsi]
	jmp	.label_204
.label_214:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_233
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_233:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_292:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_265
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_229
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_282
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_289
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_188:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_178
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_283
.label_178:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_188
.label_289:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_177
	xor	r13d, r13d
.label_177:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_292
	mov	rsp, rsp
	jmp	.label_213
.label_206:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_202
.label_249:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_217
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_217
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_217
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_232
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_228
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_238
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_241
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_241:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_245
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_245:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_215
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_215:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_268
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_268:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_202
.label_217:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_202:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_242
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_291
	lea	rsi, [rsi]
	jmp	.label_169
.label_242:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_169
.label_291:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_173
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_183
	nop	word ptr cs:[rax + rax]
.label_169:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_183:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_187
	mov	rsp, rsp
	jmp	.label_204
.label_173:
	mov	bl, r15b
.label_204:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_196
	nop	
	cmp	r9d, 2
	jne	.label_234
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_234
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_186
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_186:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_220
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_220:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_227
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_227:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_234:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_230
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_230:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_263
.label_257:
	xor	r13d, r13d
	nop	
	jmp	.label_202
.label_180:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_237
	nop	dword ptr [rax + rax]
.label_175:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_237:
	test	cl, cl
	je	.label_243
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_235
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_248
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_248:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_235
	nop	dword ptr [rax]
.label_243:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_196
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_272
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_272
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_250
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_250:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_287
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_287:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_176
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_176:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_272:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_184
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_184:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_195
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_195:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_208
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_208:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_235:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_187
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_225
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_225
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_231
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_231:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_219
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_219:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_225:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_175
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_175
	nop	word ptr cs:[rax + rax]
.label_187:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_259
	mov	rsp, rsp
	and	al, 1
	jne	.label_259
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_277
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_277:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_201
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_201:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_259:
	mov	rsp, rsp
	mov	bl, r15b
.label_263:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_256
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_256:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_171
.label_281:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_181
.label_236:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_181:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_185
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_185:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_286
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_205
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_275
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_211
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_211:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_170
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_170:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_202
.label_286:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_202
.label_205:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_202
.label_275:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_202
.label_229:
	xor	r13d, r13d
.label_265:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_213
.label_282:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_239
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_246:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_244
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_246
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_213
.label_239:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_213
.label_244:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_213
.label_232:
	xor	r13d, r13d
	jmp	.label_202
.label_228:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_202
.label_262:
	nop	
	mov	r13, rdi
.label_266:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_279
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_290
.label_279:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_190
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_190
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_194
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_190
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_199
.label_190:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_210
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_210
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_210
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_223:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_218
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_218:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_223
.label_210:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_226
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_226
.label_209:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_196
.label_283:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_196
.label_290:
	nop	
	mov	rbp, r13
	jmp	.label_196
.label_222:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_196:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_288:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_226:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_194:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_288
.label_216:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_196
.label_276:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_196
.label_261:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_196
.label_238:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_196
.label_293:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405490
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r14, rdx
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ecx
	mov	rsp, rsp
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	mov	rbp, rbp
	or	ebp, 1
	mov	rbp, rbp
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	nop	
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r12
	mov	r9d, ebp
	lea	rsi, [rsi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055d0
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xmalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x3c]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_294
	mov	qword ptr [rax], rbx
.label_294:
	mov	rax, r14
	mov	rsp, rsp
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
	#Procedure 0x405720
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_295
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_299:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_299
.label_295:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_298
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_296]], OFFSET FLAT:slot0
.label_298:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_297
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_297:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057e0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4057f0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_306
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_301
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_304
.label_301:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_302
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_305
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_305:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_304:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_303
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_300
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_300:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xmalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_303:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_306:
	lea	rdi, [rdi]
	call	abort
.label_302:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405a60
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a70
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	nop	
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405aa0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ad0
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	nop
	sub	rsp, 0x78
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	je	.label_307
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x64], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x54], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rbp, rbp
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_307:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b60
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	mov	rbp, rbp
	sub	rsp, 0x78
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	je	.label_308
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	nop	
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rsp, rsp
	lea	rax, [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_308:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c00

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	mov	rsp, rsp
	je	.label_309
	mov	dword ptr [rsp + 0x40], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	nop	
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x78
	lea	rsi, [rsi]
	ret	
.label_309:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c90
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_310
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	nop	
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x78
	ret	
.label_310:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405d00
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_311]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + rax*4 + 8]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, cl
	not	edi
	mov	rbp, rbp
	and	edi, 1
	lea	rsi, [rsi]
	shl	edi, cl
	xor	edi, esi
	nop	
	mov	dword ptr [rsp + rax*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r8
	nop	
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405da0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_311]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	mov	rbp, rbp
	shr	dl, 5
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, cl
	nop	
	not	edi
	mov	rsp, rsp
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e40

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_311]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405eb0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_311]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f20

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xb8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_314
	nop	
	mov	ecx, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x70], ecx
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x80], esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x70]
	nop	
	mov	dword ptr [rsp + 0xb4], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	nop	
	movups	xmmword ptr [rsp + 0xa4], xmm2
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x94], xmm1
	movups	xmmword ptr [rsp + 0x84], xmm0
	or	byte ptr [rsp + 0x8f], 4
	lea	rcx, [rsp + 0x80]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0xb8
	mov	rsp, rsp
	ret	
.label_314:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406000
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_311]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_315
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_315
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rax
	mov	rbp, rbp
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	ret	
.label_315:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406090
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_311]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_316
	test	rdx, rdx
	je	.label_316
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	nop	
	call	quotearg_n_options
	mov	rbp, rbp
	add	rsp, 0x38
	ret	
.label_316:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406120
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_311]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_317
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_317
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rdi]
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
.label_317:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061c0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_311]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_318
	test	rsi, rsi
	je	.label_318
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	ret	
.label_318:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406260
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406270
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rdx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406290
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062b0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	lea	rdi, [rdi]
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062e0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_320
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_322
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_321
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_321
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_321
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_321
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_321
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_321
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_320
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_320
.label_322:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_321
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_321
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_321
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_321
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_321
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_321
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_319
.label_321:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_320:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_319:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_320
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_320
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406450

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	rbx, rdx
	nop	
	mov	r14, rsi
	mov	rbp, rbp
	mov	r15d, edi
	nop	word ptr [rax + rax]
.label_324:
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	read
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	jns	.label_323
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_324
	mov	rbp, rbp
	cmp	rbx, 0x7ff00001
	jb	.label_323
	lea	rdi, [rdi]
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	lea	rsi, [rsi]
	je	.label_324
.label_323:
	nop	
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064e0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_329
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_5
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_332
.label_329:
	mov	edx, OFFSET FLAT:.str.1_1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_332:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_331
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_325]]
.label_507:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_331:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_333
.label_508:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_509:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_510:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_328
.label_511:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_327
.label_512:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_326
.label_513:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_326:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_327:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_328:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_334
.label_515:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_333:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_330
.label_514:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_330:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_334:
	mov	rbp, rbp
	call	__fprintf_chk
.label_506:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4068d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_335:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_335
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406900
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_339:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_336
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_338
	nop	word ptr cs:[rax + rax]
.label_336:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_338:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_337
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_339
.label_337:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406990

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_340
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0xc0], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm5
	movaps	xmmword ptr [rsp + 0xe0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xf0], xmm7
.label_340:
	mov	qword ptr [rsp + 0x78], r9
	nop	
	mov	qword ptr [rsp + 0x70], r8
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x110], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x120]
	mov	qword ptr [rsp + 0x108], rax
	mov	dword ptr [rsp + 0x104], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x100], 0x20
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0x100]
	nop	word ptr [rax + rax]
.label_342:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_341
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_343
	nop	dword ptr [rax + rax]
.label_341:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_343:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_344
	inc	r9
	cmp	r9, 0xa
	jb	.label_342
.label_344:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ad0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x406b60
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rbx
	cmp	rax, rdi
	jb	.label_345
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_346
	test	rax, rax
	je	.label_345
.label_346:
	nop	
	pop	rbx
	ret	
.label_345:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406bb0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_347
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_348
.label_347:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_348:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406be0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	cmp	rax, rsi
	jb	.label_350
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_349
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_349
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_349:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_351
	test	rax, rax
	je	.label_350
.label_351:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_350:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c60

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_352
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_352
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_352:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_353
	test	rax, rax
	nop	
	je	.label_354
.label_353:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_354:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cb0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_359
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_355
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_361
.label_359:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_358
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_358:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_360
.label_361:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_357
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_357
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_357:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_356
	test	rax, rax
	mov	rbp, rbp
	je	.label_355
.label_356:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_355:
	call	xalloc_die
.label_360:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d90
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_362
	test	rax, rax
	mov	rbp, rbp
	je	.label_363
.label_362:
	pop	rbx
	ret	
.label_363:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406db0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_367
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_368
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_366
	call	free
	xor	eax, eax
	jmp	.label_364
.label_367:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_365
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_366:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_364
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_365
.label_364:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_365:
	mov	rbp, rbp
	call	xalloc_die
.label_368:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406e40
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_369
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_370
.label_369:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_370:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ea0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_371
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_371
	pop	rcx
	ret	
.label_371:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ed0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_373
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_372
.label_373:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_372:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406f30
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	je	.label_374
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_375
.label_374:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_375:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406f90

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406fe0

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, r9
	mov	rbp, rbp
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	nop	
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_380
	cmp	eax, 1
	je	.label_382
	mov	rbp, rbp
	cmp	eax, 3
	nop	
	jne	.label_378
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_376
.label_382:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_376
.label_380:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_379
	lea	rdi, [rdi]
	cmp	rbx, r15
	jbe	.label_381
.label_379:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	cmp	rbx, 0x40000000
	jb	.label_377
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_376
.label_378:
	call	__errno_location
	nop	
	jmp	.label_376
.label_377:
	mov	dword ptr [rax], 0x22
.label_376:
	mov	ecx, dword ptr [rsp + 0x40]
	nop	
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	nop	
	mov	r8, rax
	mov	edx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, ebx
	lea	rdi, [rdi]
	mov	esi, ebp
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	call	error
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp]
.label_381:
	mov	rax, rbx
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407100

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	rsp, rsp
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rsp, rsp
	mov	r9, r10
	mov	rsp, rsp
	call	xnumtoumax
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407140

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_398
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_399:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_399
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsp + 8]
	cmovne	rsi, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r13d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_389
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	edx, r12d
	call	__strtoul_internal
	nop	
	mov	rcx, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r12, qword ptr [rcx]
	nop	
	cmp	r12, rbx
	nop	
	je	.label_408
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_397
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_389
	mov	dword ptr [rsp + 4], 1
.label_397:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_394
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_389
.label_408:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_389
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_389
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	mov	rsp, rsp
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_389
.label_394:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_387
	lea	rdi, [rdi]
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, r13d
	call	strchr
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_384
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_386
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_386
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	mov	rbp, rbp
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	test	rax, rax
	mov	rsp, rsp
	je	.label_386
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_396
	cmp	eax, 0x44
	nop	
	je	.label_396
	cmp	eax, 0x69
	jne	.label_386
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_401
	lea	rdi, [rdi]
	mov	ecx, 1
.label_401:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_386
.label_387:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_407
.label_396:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_386:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_385
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_390
	jmp	qword ptr [word ptr [+ (rax * 8) + label_393]]
.label_445:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_395
.label_385:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_406
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_402
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_403]]
.label_453:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_395:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_405
.label_390:
	cmp	r13d, 0x54
	nop	
	je	.label_391
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_384
	nop	
	mov	rdi, -1
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	lea	rsi, [rsi]
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	r14b, r14b
	mov	rbp, rbx
	lea	rdi, [rdi]
	imul	rbp, rsi
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	lea	rsi, [rsi]
	and	dl, 1
	lea	rdi, [rdi]
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_400
.label_406:
	cmp	r13d, 0x74
	je	.label_391
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_384
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	rdx, -1
	nop	
	cmovns	rdx, rax
	lea	rdi, [rdi]
	shr	rbp, 0x3f
	lea	rsi, [rsi]
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_405
.label_447:
	nop	
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	lea	rdi, [rdi]
	imul	rsi, rbp
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_392
.label_448:
	mov	rdi, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	nop	
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	nop	
	jmp	.label_404
.label_449:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	nop	
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbx
	nop	
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_388
.label_391:
	mov	rsp, rsp
	mov	r9, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rbx, r9
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	bl, bl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_383
.label_402:
	cmp	r13d, 0x5a
	jne	.label_384
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
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
	nop	
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rbx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	nop	
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	mov	rbp, rbp
	imul	rsi, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	lea	rsi, [rsi]
	or	dl, bl
.label_400:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_404
.label_384:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_389
.label_446:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	mov	rsp, rsp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r9b, r9b
	nop	
	mov	rbx, rbp
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	mov	rsp, rsp
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
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	bpl, bpl
	lea	rsi, [rsi]
	imul	rsi, rbx
	cmp	rax, rbx
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	nop	
	jmp	.label_388
.label_450:
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	nop	
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rdi, [rdi]
	or	dl, r9b
.label_383:
	or	dl, r10b
.label_392:
	lea	rsi, [rsi]
	or	dl, bl
.label_388:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_404:
	mov	rsp, rsp
	mov	rbp, rsi
.label_405:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_409
	or	eax, 2
.label_409:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_407:
	mov	qword ptr [rax], rbp
.label_389:
	nop	
	mov	eax, r13d
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_398:
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a00

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_410
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_411
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_411
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_410:
	mov	ecx, 1
.label_411:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a70

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_412
	nop	
	cmp	r15, -2
	jb	.label_412
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_412
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_412:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b00

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	nop	
	jne	.label_413
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_414
	test	cl, cl
	mov	rsp, rsp
	jne	.label_414
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_414
.label_413:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_414
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_414:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407b90

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_416
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_415
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_417
.label_415:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_416
.label_417:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_416:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407be0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_418
	nop	
	mov	rax, rcx
.label_418:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c20

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_419
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_421
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_419
.label_421:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_419
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_420
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_420:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_419:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x407cd0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_422
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_422
	test	byte ptr [rbx + 1], 1
	je	.label_422
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_422:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407d10

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_423
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_423
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_424
.label_423:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_424:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_425
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_425:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x407dc0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]