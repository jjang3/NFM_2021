	.section	.text
	.align	16
	#Procedure 0x401d50

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_17
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
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
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
	mov	rbx, qword ptr [rip + stdout]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	esi, 1
	mov	ecx, 2
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
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
	mov	esi, OFFSET FLAT:label_27
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
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_11
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_11
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_11:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_23
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_17:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fc0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x118
	mov	rbp, rsi
	mov	dword ptr [rsp + 0x18], edi
	call	getpagesize
	movsxd	rbx, eax
	mov	qword ptr [rsp + 0x10], rbp
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_73
	call	setlocale
	mov	edi, OFFSET FLAT:label_34
	mov	esi, OFFSET FLAT:label_232
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_34
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rip + infile], OFFSET FLAT:label_40
	mov	qword ptr [rip + outbase], OFFSET FLAT:label_41
	mov	qword ptr [rsp + 0x28], rbx
	not	rbx
	mov	qword ptr [rsp + 0x38], rbx
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	r12d, r12d
	mov	dword ptr [rsp + 0x20], 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	xor	r15d, r15d
	jmp	.label_32
.label_730:
	mov	byte ptr [rip + unbuffered],  1
	nop	dword ptr [rax + rax]
.label_32:
	mov	ebx, dword ptr [rip + optind]
	test	ebx, ebx
	mov	eax, 1
	cmove	ebx, eax
	mov	edx, OFFSET FLAT:label_63
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
	call	getopt_long
	mov	r13d, eax
	lea	eax, [r13 + 0x83]
	cmp	eax, 0x106
	ja	.label_74
	jmp	qword ptr [(rax * 8) + label_79]
.label_721:
	test	r15d, r15d
	mov	ebp, 0
	je	.label_83
	cmp	r15d, 4
	mov	rbp, r12
	jne	.label_85
.label_83:
	cmp	dword ptr [rsp + 0x20], 0
	je	.label_90
	cmp	dword ptr [rsp + 0x20], ebx
	mov	eax, 0
	jne	.label_92
.label_90:
	movabs	rax, 0x1999999999999999
	cmp	rbp, rax
	mov	rax, rbp
	ja	.label_94
.label_92:
	lea	rcx, [rax + rax*4]
	movsxd	rdx, r13d
	lea	r12, [rdx + rcx*2 - 0x30]
	mov	r15d, 4
	cmp	r12, rax
	mov	dword ptr [rsp + 0x20], ebx
	mov	rbp, rax
	jae	.label_32
	jmp	.label_94
.label_725:
	cmp	r13d, 0x64
	mov	r14d, OFFSET FLAT:label_160
	mov	eax, OFFSET FLAT:label_161
	cmove	r14, rax
	mov	qword ptr [rip + suffix_alphabet],  r14
	mov	rbp, qword ptr [rip + optarg]
	test	rbp, rbp
	je	.label_32
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, rbp
	mov	rsi, r14
	call	strspn
	cmp	rbx, rax
	jne	.label_46
	cmp	byte ptr [rbp], 0x30
	jne	.label_61
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_121:
	cmp	byte ptr [rbp], 0
	je	.label_119
	mov	qword ptr [rip + optarg],  rbp
	lea	rax, [rbp + 1]
	cmp	byte ptr [rbp], 0x30
	mov	rbp, rax
	je	.label_121
	dec	rax
	mov	rbp, rax
	mov	qword ptr [rip + numeric_suffix_start],  rbp
	jmp	.label_32
.label_722:
	test	r15d, r15d
	jne	.label_85
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	movabs	rdx, 0x7fffffffffffffff
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	mov	r15d, 2
	jmp	.label_32
.label_723:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_137
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:label_73
	xor	r9d, r9d
	mov	rdi, rbx
	movabs	rdx, 0x1fffffffffffffff
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rip + suffix_length],  rax
	jmp	.label_32
.label_724:
	test	r15d, r15d
	jne	.label_85
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	movabs	rdx, 0x7fffffffffffffff
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	mov	r15d, 1
	jmp	.label_32
.label_727:
	test	r15d, r15d
	jne	.label_85
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_73
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	mov	r15d, 3
	jmp	.label_32
.label_732:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + filter_command],  rax
	jmp	.label_32
.label_734:
	mov	rbx, qword ptr [rip + optarg]
	mov	rdi, rbx
	call	last_component
	cmp	rax, rbx
	jne	.label_178
	mov	qword ptr [rip + additional_suffix],  rbx
	jmp	.label_32
.label_726:
	mov	byte ptr [rip + elide_empty_files],  1
	jmp	.label_32
.label_728:
	test	r15d, r15d
	jne	.label_85
	mov	rbx, qword ptr [rip + optarg]
	movzx	ebp, byte ptr [rbx]
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	test	byte ptr [rcx + rbp*2 + 1], 0x20
	je	.label_188
	inc	rbx
	nop	dword ptr [rax + rax]
.label_68:
	mov	qword ptr [rip + optarg],  rbx
	movzx	ecx, byte ptr [rbx]
	mov	rdx, qword ptr [rax]
	inc	rbx
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	jne	.label_68
	dec	rbx
.label_188:
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 2
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	je	.label_203
	mov	esi, OFFSET FLAT:label_206
	mov	edx, 2
	mov	rdi, rbx
	call	strncmp
	mov	r15d, 5
	test	eax, eax
	jne	.label_210
	add	rbx, 2
	mov	qword ptr [rip + optarg],  rbx
	mov	r15d, 6
	jmp	.label_210
.label_729:
	mov	rcx, qword ptr [rip + optarg]
	mov	al, byte ptr [rcx]
	test	al, al
	je	.label_218
	mov	dl, byte ptr [rcx + 1]
	test	dl, dl
	je	.label_221
	cmp	al, 0x5c
	jne	.label_202
	cmp	dl, 0x30
	jne	.label_202
	cmp	byte ptr [rcx + 2], 0
	jne	.label_202
	xor	eax, eax
.label_221:
	mov	ecx, dword ptr [rip + eolchar]
	test	ecx, ecx
	movsx	eax, al
	js	.label_228
	cmp	eax, ecx
	jne	.label_231
.label_228:
	mov	dword ptr [rip + eolchar],  eax
	jmp	.label_32
.label_731:
	mov	byte ptr [rip + verbose],  1
	jmp	.label_32
.label_733:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_32
.label_203:
	add	rbx, 2
	mov	qword ptr [rip + optarg],  rbx
	mov	r15d, 7
.label_210:
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_65
	lea	rbx, [rbp + 1]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_73
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	cmp	qword ptr [rip + optarg],  rbp
	je	.label_32
	mov	byte ptr [rbp], 0
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:label_73
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, r12
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_32
.label_65:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_73
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	jmp	.label_32
.label_119:
	dec	rbp
.label_61:
	mov	qword ptr [rip + numeric_suffix_start],  rbp
	jmp	.label_32
.label_720:
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_72
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	jne	.label_113
.label_72:
	mov	r14d, 3
	mov	eax, 0x3e8
	mov	qword ptr [rsp + 0x20], rax
	test	r15d, r15d
	mov	r13, qword ptr [rsp + 0x40]
	je	.label_116
	test	r12, r12
	mov	r14d, r15d
	mov	qword ptr [rsp + 0x20], r12
	je	.label_120
.label_116:
	cmp	dword ptr [rip + eolchar],  0
	jns	.label_122
	mov	dword ptr [rip + eolchar],  0xa
.label_122:
	mov	rdi, qword ptr [rip + numeric_suffix_start]
	test	rdi, rdi
	mov	r12, qword ptr [rsp + 0x20]
	je	.label_126
	mov	byte ptr [rip + suffix_auto],  1
.label_126:
	lea	r15d, [r14 - 5]
	xor	ebx, ebx
	cmp	r15d, 2
	ja	.label_129
	test	rdi, rdi
	mov	rbx, r12
	je	.label_130
	lea	rcx, [rsp + 0x80]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_73
	call	xstrtoumax
	test	eax, eax
	mov	rbx, r12
	jne	.label_130
	mov	rax, qword ptr [rsp + 0x80]
	mov	rcx, r12
	not	rcx
	xor	edx, edx
	cmp	rax, r12
	mov	ebx, 0
	cmovb	rbx, rax
	cmp	rax, rcx
	cmova	rbx, rdx
	add	rbx, r12
.label_130:
	mov	rdi, qword ptr [rip + suffix_alphabet]
	call	strlen
	mov	rcx, rax
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	mov	rsi, rdx
	xor	edi, edi
	cmp	rcx, rbx
	ja	.label_99
	xor	edi, edi
.label_142:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	inc	rdi
	mov	rbx, rax
	cmp	rcx, rbx
	jbe	.label_142
.label_99:
	xor	ebx, ebx
	test	rsi, rsi
	setne	bl
	add	rbx, rdi
	mov	byte ptr [rip + suffix_auto],  1
.label_129:
	mov	rbp, qword ptr [rip + suffix_length]
	test	rbp, rbp
	je	.label_144
	cmp	rbp, rbx
	jb	.label_147
	mov	byte ptr [rip + suffix_auto],  1
	jmp	.label_148
.label_144:
	cmp	rbx, 2
	mov	ebp, 2
	cmovae	rbp, rbx
	mov	qword ptr [rip + suffix_length],  rbp
.label_148:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, dword ptr [rsp + 0x18]
	jge	.label_153
	movsxd	rcx, eax
	inc	eax
	mov	dword ptr [rip + optind],  eax
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rip + infile],  rcx
.label_153:
	cmp	eax, dword ptr [rsp + 0x18]
	jge	.label_165
	movsxd	rcx, eax
	lea	eax, [rax + 1]
	mov	dword ptr [rip + optind],  eax
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rip + outbase],  rcx
.label_165:
	cmp	eax, dword ptr [rsp + 0x18]
	jl	.label_169
	mov	rdi, qword ptr [rip + numeric_suffix_start]
	test	rdi, rdi
	je	.label_172
	call	strlen
	cmp	rax, rbp
	ja	.label_175
.label_172:
	mov	rsi, qword ptr [rip + infile]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_177
	cmp	byte ptr [rsi + 1], 0
	je	.label_105
.label_177:
	xor	edi, edi
	xor	edx, edx
	xor	ecx, ecx
	call	fd_reopen
	test	eax, eax
	js	.label_183
.label_105:
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:in_stat_buf
	call	__fxstat
	test	eax, eax
	jne	.label_87
	test	r13, r13
	jne	.label_189
	mov	rax, qword ptr [rip + label_191]
	movabs	rcx, 0x1fffffffffffffff
	mov	rdx, rcx
	add	rdx, 2
	cmp	rax, rdx
	mov	ecx, 0x200
	mov	r13d, 0x200
	cmovb	r13, rax
	test	rax, rax
	cmovle	r13, rcx
	cmp	rax, rdx
	mov	ecx, 0x20000
	cmovae	r13, rcx
	test	rax, rax
	cmovle	r13, rcx
	cmp	rax, 0x20000
	cmovl	r13, rcx
.label_189:
	mov	qword ptr [rsp + 0x40], r13
	mov	rbx, qword ptr [rsp + 0x28]
	lea	rdi, [r13 + rbx]
	call	xmalloc
	lea	rcx, [rax + rbx - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rbx
	sub	rcx, rdx
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13, -1
	cmp	r15d, 1
	ja	.label_214
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	mov	r12, rax
	test	r12, r12
	js	.label_224
	xor	ebx, ebx
	mov	rbp, qword ptr [rsp + 0x40]
.label_37:
	mov	rax, qword ptr [rsp + 0x38]
	lea	rsi, [rax + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	xor	edi, edi
	call	safe_read
	test	rax, rax
	je	.label_33
	cmp	rax, -1
	je	.label_58
	add	rbx, rax
	cmp	rbx, rbp
	jb	.label_37
	mov	rax, qword ptr [rip + label_42]
	test	rax, rax
	je	.label_43
	add	r12, rbx
	movzx	ecx, word ptr [rip + label_47]
	or	ecx, 0x2000
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_48
	cmp	r12, rax
	jle	.label_54
.label_48:
	xor	edi, edi
	xor	esi, esi
	mov	edx, 2
	call	lseek
	mov	r15, rax
	test	r15, r15
	js	.label_58
	cmp	r15, r12
	mov	rax, r12
	je	.label_54
	xor	edi, edi
	xor	edx, edx
	mov	rsi, r12
	call	lseek
	test	rax, rax
	js	.label_58
	cmp	r15, r12
	cmovl	r15, r12
	mov	rax, r15
.label_54:
	sub	rax, r12
	add	rbx, rax
	movabs	rax, 0x7fffffffffffffff
	cmp	rbx, rax
	je	.label_43
.label_33:
	test	rbx, rbx
	js	.label_58
	mov	r12, qword ptr [rsp + 0x20]
	test	r12, r12
	js	.label_52
	cmp	rbx, rbp
	mov	r13, rbp
	cmovb	r13, rbx
	cmp	rbx, r12
	cmovbe	rbx, r12
	jmp	.label_86
.label_214:
	movabs	rbx, 0x7fffffffffffffff
.label_86:
	cmp	qword ptr [rip + filter_command],  0
	je	.label_110
	mov	edi, OFFSET FLAT:newblocked
	call	sigemptyset
	lea	rdx, [rsp + 0x80]
	mov	edi, 0xd
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x80], 1
	je	.label_102
	mov	edi, OFFSET FLAT:newblocked
	mov	esi, 0xd
	call	sigaddset
.label_102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:newblocked
	mov	edx, OFFSET FLAT:oldblocked
	call	sigprocmask
.label_110:
	dec	r14d
	cmp	r14d, 6
	ja	.label_107
	jmp	qword ptr [(r14 * 8) + label_208]
.label_750:
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_139:
	xor	edi, edi
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x40]
	call	safe_read
	cmp	rax, -1
	je	.label_87
	lea	r13, [rbx + rax]
	mov	ebp, dword ptr [rip + eolchar]
	mov	byte ptr [rbx + rax], bpl
	mov	qword ptr [rsp + 0x10], rax
	lea	r15, [rbx + rax + 1]
	mov	r12, rbx
	jmp	.label_117
	nop	dword ptr [rax + rax]
.label_135:
	mov	eax, dword ptr [rsp + 0x18]
	and	al, 1
	mov	rdx, rbx
	sub	rdx, r12
	movzx	edi, al
	mov	rsi, r12
	call	cwrite
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	mov	ebp, dword ptr [rip + eolchar]
	mov	r12, rbx
	xor	r14d, r14d
.label_117:
	mov	rbx, r12
	nop	dword ptr [rax]
.label_134:
	mov	rdx, r15
	sub	rdx, rbx
	mov	rdi, rbx
	mov	esi, ebp
	call	memchr
	mov	rbx, rax
	cmp	rbx, r13
	je	.label_132
	inc	rbx
	inc	r14
	cmp	r14, qword ptr [rsp + 0x20]
	jb	.label_134
	jmp	.label_135
	nop	word ptr [rax + rax]
.label_132:
	sub	r13, r12
	je	.label_136
	mov	eax, dword ptr [rsp + 0x18]
	and	al, 1
	movzx	edi, al
	mov	rsi, r12
	mov	rdx, r13
	call	cwrite
	mov	dword ptr [rsp + 0x18], 0
.label_136:
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_139
	jmp	.label_96
.label_748:
	mov	rcx, -1
	xor	r8d, r8d
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x40]
	jmp	.label_140
.label_749:
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rax, rdx
	not	rax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	r15d, r15d
	xor	r14d, r14d
.label_101:
	xor	edi, edi
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	call	safe_read
	test	rax, rax
	je	.label_181
	cmp	rax, -1
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x70], rax
	mov	rdx, rax
	mov	qword ptr [rsp + 0x20], r12
	jne	.label_100
	jmp	.label_87
.label_225:
	mov	ebx, ebp
	mov	r12, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_158
	nop	word ptr cs:[rax + rax]
.label_100:
	mov	r13, r12
	sub	r13, r14
	sub	r13, r15
	cmp	r13, rdx
	mov	qword ptr [rsp + 0x50], rdx
	jbe	.label_168
	mov	esi, dword ptr [rip + eolchar]
	mov	rdi, qword ptr [rsp + 0x18]
	call	memrchr
	mov	r12, rax
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_174
	nop	word ptr cs:[rax + rax]
.label_168:
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rax, [rdi + r13 - 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	esi, dword ptr [rip + eolchar]
	mov	rdx, r13
	call	memrchr
	mov	r12, rax
.label_174:
	test	r15, r15
	je	.label_184
	test	r14, r14
	je	.label_123
	test	r12, r12
	je	.label_187
.label_123:
	xor	edi, edi
	test	r14, r14
	sete	dil
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rsi, rbx
	mov	rdx, r15
	call	cwrite
	add	r14, r15
	mov	rdi, rbx
	mov	rbx, qword ptr [rsp + 0x40]
	cmp	r15, rbx
	jbe	.label_195
	mov	rsi, rbx
	call	xrealloc
	mov	qword ptr [rsp + 0x28], rax
.label_195:
	mov	qword ptr [rsp + 0x30], rbx
.label_184:
	xor	r15d, r15d
.label_187:
	test	r12, r12
	je	.label_204
	mov	qword ptr [rsp + 0x58], r15
	mov	rbx, r12
	mov	rsi, qword ptr [rsp + 0x18]
	sub	rbx, rsi
	lea	rbp, [rbx + 1]
	xor	edi, edi
	test	r14, r14
	sete	dil
	mov	rdx, rbp
	call	cwrite
	lea	r14, [r14 + rbx + 1]
	mov	r15, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	sub	rdx, rbp
	inc	r12
	mov	rcx, qword ptr [rsp + 0x10]
	test	rcx, rcx
	cmove	rbp, rcx
	sub	r13, rbp
	mov	bl, 1
	mov	qword ptr [rsp + 0x18], r12
	jmp	.label_213
	nop	word ptr cs:[rax + rax]
.label_204:
	test	bpl, 1
	jne	.label_225
	xor	edi, edi
	test	r14, r14
	sete	dil
	mov	rbx, qword ptr [rsp + 0x10]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x58], rbp
	mov	rbp, qword ptr [rsp + 0x50]
	cmovne	rbp, r13
	mov	rax, r13
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x68], rax
	mov	r12, qword ptr [rsp + 0x18]
	mov	rsi, r12
	mov	rdx, rbp
	call	cwrite
	mov	rcx, rbx
	mov	rdx, qword ptr [rsp + 0x50]
	add	r14, rbp
	sub	rdx, rbp
	add	r12, rbp
	mov	qword ptr [rsp + 0x18], r12
	sub	r13, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rsp + 0x58]
	mov	ebx, eax
.label_213:
	mov	r12, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x30]
.label_158:
	test	rcx, rcx
	je	.label_55
	test	r13, r13
	jne	.label_56
.label_55:
	test	rcx, rcx
	jne	.label_60
	test	rdx, rdx
	je	.label_60
.label_56:
	test	rcx, rcx
	cmove	r13, rdx
	mov	rcx, rax
	sub	rax, r15
	cmp	rax, r13
	jae	.label_62
	mov	r12, rdx
	cmp	rcx, qword ptr [rsp + 0x60]
	mov	rsi, rcx
	ja	.label_67
	mov	ebp, ebx
	add	rsi, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rax, rsi
	mov	qword ptr [rsp + 0x30], rax
	call	xrealloc
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_230
.label_62:
	mov	ebp, ebx
	mov	r12, rdx
.label_230:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rax + r15]
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, r13
	call	memcpy
	add	r15, r13
	mov	rdx, r12
	sub	rdx, r13
	add	rbx, r13
	mov	qword ptr [rsp + 0x18], rbx
	mov	r12, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	ebx, ebp
.label_60:
	xor	eax, eax
	test	rcx, rcx
	mov	ebp, 0
	jne	.label_97
	mov	bpl, bl
.label_97:
	cmovne	r14, rax
	test	rdx, rdx
	jne	.label_100
	cmp	qword ptr [rsp + 0x70], 0
	mov	rdx, qword ptr [rsp + 0x40]
	jne	.label_101
.label_181:
	test	r15, r15
	je	.label_151
	xor	edi, edi
	test	r14, r14
	sete	dil
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r15
	call	cwrite
.label_151:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	jmp	.label_96
.label_751:
	mov	rcx, qword ptr [rsp + 0x50]
	test	rcx, rcx
	je	.label_108
	lea	rbp, [rcx - 1]
	cmp	rbp, r12
	jae	.label_111
	cmp	r12, rbx
	ja	.label_111
	xor	edx, edx
	mov	rax, rbx
	div	r12
	mov	r15, rax
	imul	rbp, r15
	imul	r15, rcx
	cmp	rcx, r12
	cmove	r15, rbx
	sub	r13, rbp
	jbe	.label_114
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rdi + rbp]
	mov	rdx, r13
	call	memmove
	jmp	.label_124
.label_752:
	mov	r14, qword ptr [rsp + 0x50]
	cmp	r14, r12
	ja	.label_125
	lea	rax, [r12 - 1]
	cmp	rax, rbx
	jae	.label_125
	xor	edx, edx
	mov	qword ptr [rsp + 0x10], rbx
	mov	rax, rbx
	div	r12
	mov	rbx, rax
	mov	ebp, 1
	xor	r15d, r15d
	cmp	r14, 2
	jb	.label_128
	lea	rbp, [r14 - 1]
	mov	r15, rbx
	imul	r15, rbp
	dec	r15
	mov	rsi, r15
	sub	rsi, r13
	jae	.label_131
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rdi + r15]
	sub	r13, r15
	mov	rdx, r13
	call	memmove
	mov	r12, r15
	jmp	.label_118
.label_753:
	mov	r14, qword ptr [rsp + 0x50]
	test	r14, r14
	mov	qword ptr [rsp + 0x10], rax
	jne	.label_138
	mov	rax, r12
	shr	rax, 0x3a
	jne	.label_89
	mov	rdi, r12
	shl	rdi, 5
	call	xmalloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rbx, rax
	add	rbx, 0x18
	mov	rbp, r12
	nop	word ptr [rax + rax]
.label_145:
	call	next_file_name
	mov	rdi, qword ptr [rip + outfile]
	call	xstrdup
	mov	qword ptr [rbx - 0x18], rax
	mov	dword ptr [rbx - 0x10], 0xffffffff
	mov	qword ptr [rbx - 8], 0
	mov	dword ptr [rbx], 0
	add	rbx, 0x20
	dec	rbp
	jne	.label_145
.label_138:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	mov	rdx, qword ptr [rsp + 0x40]
	jmp	.label_91
.label_186:
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [rsp + 0x28]
.label_91:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x38]
	call	safe_read
	mov	r12, rax
	test	r12, r12
	je	.label_167
	cmp	r12, -1
	je	.label_87
	mov	r13, qword ptr [rsp + 0x38]
	add	r12, r13
	jmp	.label_78
.label_219:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0x20]
	lea	rax, [rax + 1]
	mov	ecx, 1
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	rbx, qword ptr [rsp + 0x28]
.label_78:
	mov	rcx, qword ptr [rsp + 0x30]
	shl	rcx, 5
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x68], rcx
	lea	rax, [rax + rcx + 8]
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, r13
.label_220:
	mov	al, bl
	mov	qword ptr [rsp + 0x28], rax
	nop	dword ptr [rax]
.label_216:
	cmp	rbp, r12
	je	.label_186
	mov	esi, dword ptr [rip + eolchar]
	mov	rdx, r12
	sub	rdx, rbp
	mov	rdi, rbp
	call	memchr
	mov	r15, rax
	lea	r13, [r15 + 1]
	test	r15, r15
	mov	rbx, r13
	cmove	rbx, r12
	sub	rbx, rbp
	test	r14, r14
	je	.label_193
	cmp	qword ptr [rsp + 0x18], r14
	jne	.label_197
	cmp	byte ptr [rip + unbuffered],  1
	jne	.label_199
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	je	.label_197
	jmp	.label_207
.label_199:
	mov	rcx, qword ptr [rip + stdout]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, rbx
	call	fwrite_unlocked
	cmp	rax, 1
	jne	.label_182
.label_197:
	test	r15, r15
	mov	rbp, r12
	je	.label_216
	jmp	.label_219
.label_193:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x20]
	call	ofile_open
	mov	byte ptr [rsp + 0x70], al
	cmp	byte ptr [rip + unbuffered],  1
	jne	.label_222
	mov	rax, qword ptr [rsp + 0x58]
	mov	edi, dword ptr [rax]
	mov	rsi, rbp
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	jne	.label_229
	jmp	.label_35
.label_222:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rax + 8]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, rbx
	call	fwrite_unlocked
	cmp	rax, 1
	je	.label_35
.label_229:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x20
	jne	.label_45
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	je	.label_45
.label_35:
	mov	rbp, qword ptr [rsp + 0x28]
	and	bpl, 1
	call	__errno_location
	mov	rsi, rax
	mov	eax, dword ptr [rsi]
	cmp	qword ptr [rip + filter_command],  0
	jne	.label_51
	mov	cl, 1
	mov	qword ptr [rsp + 0x60], rcx
.label_51:
	mov	bl, byte ptr [rsp + 0x70]
	or	bl, bpl
	cmp	eax, 0x20
	je	.label_59
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_59:
	test	bl, bl
	mov	rbp, qword ptr [rsp + 0x58]
	je	.label_64
	mov	qword ptr [rsp + 0x28], rsi
	mov	rdi, qword ptr [rbp + 8]
	call	rpl_fclose
	test	eax, eax
	jne	.label_70
	mov	qword ptr [rbp + 8], 0
	mov	dword ptr [rbp], 0xfffffffe
.label_64:
	test	r15, r15
	mov	rbp, r12
	je	.label_220
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, rax
	inc	rcx
	mov	rax, rcx
	mov	qword ptr [rsp + 0x30], rax
	cmp	rcx, qword ptr [rsp + 0x20]
	jne	.label_78
	mov	al, 1
	mov	qword ptr [rsp + 0x78], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x60], rax
	jne	.label_78
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x30], rax
.label_167:
	test	r14, r14
	jne	.label_96
	mov	rax, qword ptr [rsp + 0x78]
	test	al, 1
	mov	rax, qword ptr [rsp + 0x30]
	cmovne	rax, qword ptr [rsp + 0x20]
	movsxd	r14, eax
	mov	rax, qword ptr [rsp + 0x10]
	lea	rbp, [rax + 0x18]
	xor	ebx, ebx
	mov	r15, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_115:
	cmp	rbx, r14
	jb	.label_106
	movzx	eax, byte ptr [rip + elide_empty_files]
	test	al, al
	jne	.label_106
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r15
	call	ofile_open
.label_106:
	mov	esi, dword ptr [rbp - 0x10]
	test	esi, esi
	js	.label_226
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp]
	call	closeout
.label_226:
	mov	dword ptr [rbp - 0x10], 0xfffffffe
	inc	rbx
	add	rbp, 0x20
	cmp	r15, rbx
	jne	.label_115
	jmp	.label_96
.label_128:
	lea	r12, [rbx - 1]
	jmp	.label_118
.label_108:
	xor	edx, edx
	mov	rax, rbx
	div	r12
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, r13
	mov	r8, r12
.label_140:
	call	bytes_split
	jmp	.label_96
.label_114:
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	call	lseek
	mov	r13, -1
	test	rax, rax
	jns	.label_124
	jmp	.label_87
	nop	dword ptr [rax]
.label_104:
	add	rbp, rbx
	mov	r13, -1
.label_124:
	cmp	r15, rbp
	jle	.label_96
	cmp	r13, -1
	jne	.label_133
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x40]
	call	safe_read
	mov	r13, rax
	cmp	r13, -1
	je	.label_87
.label_133:
	test	r13, r13
	je	.label_96
	mov	rbx, r15
	sub	rbx, rbp
	cmp	r13, rbx
	cmovb	rbx, r13
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	je	.label_104
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 0x20
	jne	.label_141
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	jne	.label_104
.label_141:
	xor	edi, edi
	mov	esi, 3
	mov	edx, OFFSET FLAT:label_40
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_131:
	xor	edi, edi
	mov	edx, 1
	call	lseek
	mov	r13, -1
	test	rax, rax
	mov	r12, r15
	js	.label_87
.label_118:
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r15, rax
	jge	.label_205
	mov	qword ptr [rsp + 0x78], rbx
	dec	rax
	mov	qword ptr [rsp + 0x18], rax
	mov	cl, 1
	xor	edi, edi
	jmp	.label_157
.label_93:
	mov	rbx, qword ptr [rsp + 0x10]
	sub	rbx, r15
	cmp	r13, rbx
	cmovb	rbx, r13
	test	rbx, rbx
	je	.label_164
	mov	rax, qword ptr [rsp + 0x38]
	lea	r13, [rax + rbx]
	mov	dword ptr [rsp + 0x70], 0
	mov	rsi, rax
	mov	qword ptr [rsp + 0x68], r13
	mov	qword ptr [rsp + 0x50], r14
	jmp	.label_71
.label_164:
	xor	edi, edi
.label_76:
	mov	r13, -1
	cmp	r15, qword ptr [rsp + 0x10]
	jl	.label_157
	jmp	.label_95
.label_49:
	mov	rsi, r13
	jmp	.label_179
.label_71:
	mov	byte ptr [rsp + 0x4f], cl
	mov	r14, rsi
	mov	rax, r12
	sub	rax, r15
	mov	ecx, 0
	cmovns	rcx, rax
	cmp	rbx, rcx
	cmovb	rcx, rbx
	lea	rdi, [r14 + rcx]
	mov	esi, dword ptr [rip + eolchar]
	mov	qword ptr [rsp + 0x28], rbx
	mov	rdx, rbx
	sub	rdx, rcx
	call	memchr
	test	rax, rax
	lea	rax, [rax + 1]
	setne	cl
	cmove	rax, r13
	mov	qword ptr [rsp + 0x60], rax
	mov	rdx, rax
	mov	rax, qword ptr [rsp + 0x50]
	sub	rdx, r14
	cmp	rbp, rax
	mov	byte ptr [rsp + 0x30], cl
	mov	qword ptr [rsp + 0x58], rdx
	jne	.label_190
	mov	edi, 1
	mov	rsi, r14
	call	full_write
	mov	rdx, qword ptr [rsp + 0x58]
	mov	cl, byte ptr [rsp + 0x30]
	cmp	rax, rdx
	je	.label_75
	jmp	.label_207
.label_190:
	test	rax, rax
	jne	.label_75
	mov	al, byte ptr [rsp + 0x4f]
	and	al, 1
	movzx	edi, al
	mov	rsi, r14
	call	cwrite
	mov	rdx, qword ptr [rsp + 0x58]
	mov	cl, byte ptr [rsp + 0x30]
.label_75:
	add	r15, rdx
	test	cl, cl
	setne	al
	jne	.label_215
	cmp	r12, r15
	mov	r14, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x60]
	jge	.label_143
	mov	sil, cl
	jmp	.label_50
.label_215:
	mov	sil, cl
	mov	r14, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_50
	nop	dword ptr [rax + rax]
.label_39:
	cmp	rbp, r14
	ja	.label_96
.label_53:
	add	r12, rbx
	cmp	qword ptr [rsp + 0x20], rbp
	cmove	r12, qword ptr [rsp + 0x18]
	test	r14, r14
	jne	.label_194
	cmp	r12, r15
	jge	.label_194
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	inc	rbp
	test	r14, r14
	jne	.label_39
	jmp	.label_53
.label_50:
	mov	dword ptr [rsp + 0x60], esi
	cmp	r13, qword ptr [rsp + 0x68]
	jne	.label_44
	xor	al, 1
	mov	dil, 1
	test	al, 1
	jne	.label_49
.label_44:
	inc	rbp
	test	r14, r14
	mov	rbx, qword ptr [rsp + 0x78]
	jne	.label_39
	jmp	.label_53
.label_194:
	cmp	r12, r15
	mov	cl, byte ptr [rsp + 0x30]
	jge	.label_180
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x58]
	mov	esi, dword ptr [rsp + 0x60]
	jmp	.label_57
.label_180:
	xor	esi, esi
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x58]
.label_57:
	mov	eax, esi
	and	al, 1
	cmp	r12, r15
	jl	.label_50
	test	al, al
	jne	.label_50
.label_143:
	mov	rsi, r13
	mov	eax, dword ptr [rsp + 0x70]
	mov	dil, al
.label_179:
	sub	rbx, rdx
	mov	r13, qword ptr [rsp + 0x68]
	cmp	rsi, r13
	mov	al, dil
	mov	dword ptr [rsp + 0x70], eax
	jne	.label_71
	jmp	.label_76
.label_157:
	cmp	r13, -1
	jne	.label_77
	mov	rbx, rdi
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	r13d, ecx
	call	safe_read
	mov	rdi, rbx
	mov	ecx, r13d
	mov	r13, rax
	cmp	r13, -1
	je	.label_87
.label_77:
	test	r13, r13
	jne	.label_93
	jmp	.label_95
.label_205:
	xor	edi, edi
.label_95:
	and	dil, 1
	movzx	ebx, dil
	test	r14, r14
	jne	.label_96
	add	rbx, rbp
	jmp	.label_98
	nop	dword ptr [rax + rax]
.label_103:
	inc	rbx
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
.label_98:
	cmp	rbx, qword ptr [rsp + 0x20]
	jbe	.label_103
.label_96:
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_87
	mov	esi, dword ptr [rip + output_desc]
	mov	edx, dword ptr [rip + filter_pid]
	mov	rcx, qword ptr [rip + outfile]
	xor	edi, edi
	call	closeout
	xor	eax, eax
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_94:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_227
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rsi, [rsp + 0x80]
	mov	rdi, rbp
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r8d, r13d
	call	error
.label_87:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + infile]
.label_109:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
.label_150:
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_85:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
.label_171:
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
.label_718:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_20
	mov	edx, OFFSET FLAT:label_25
	mov	r8d, OFFSET FLAT:label_200
	mov	r9d, OFFSET FLAT:label_201
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_719:
	xor	edi, edi
	call	usage
.label_74:
	mov	edi, 1
	call	usage
.label_67:
	call	xalloc_die
.label_202:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_182:
	mov	rdi, qword ptr [rip + stdout]
	call	clearerr_unlocked
.label_207:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	jmp	.label_150
.label_46:
	xor	edi, edi
	cmp	r13d, 0x64
	jne	.label_152
	mov	esi, OFFSET FLAT:label_155
	jmp	.label_156
.label_178:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_159
	jmp	.label_156
.label_218:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	jmp	.label_163
.label_231:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
.label_163:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_113:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_170
	jmp	.label_171
.label_169:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	jmp	.label_176
.label_107:
	call	abort
.label_183:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + infile]
	mov	edi, 4
	call	quotearg_style
	jmp	.label_192
.label_120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_196
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	mov	edi, 1
	call	usage
.label_147:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
.label_175:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	jmp	.label_171
.label_224:
	call	__errno_location
	cmp	dword ptr [rax], 0x1d
	jne	.label_58
	mov	dword ptr [rax], 0
.label_58:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_223
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [rip + infile]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
.label_192:
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_152:
	mov	esi, OFFSET FLAT:label_36
.label_156:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
.label_176:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_52:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp + 0x80]
	mov	rdi, r12
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 0x4b
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_125:
	mov	edi, OFFSET FLAT:label_211
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 0x362
	mov	ecx, OFFSET FLAT:label_212
	call	__assert_fail
.label_111:
	mov	edi, OFFSET FLAT:label_80
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 0x3e0
	mov	ecx, OFFSET FLAT:label_82
	call	__assert_fail
.label_70:
	mov	rax, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rax]
.label_45:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rax + rcx]
	jmp	.label_109
.label_89:
	call	xalloc_die
.label_43:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_58
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403900

	.globl bytes_split
	.type bytes_split, @function
bytes_split:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, r8
	mov	r14, rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [r13 - 1]
	mov	bpl, 1
	xor	r12d, r12d
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rdi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x10], rsi
.label_235:
	cmp	r14, -1
	je	.label_245
	cmp	r14, qword ptr [rsp + 0x20]
	setb	byte ptr [rsp + 7]
	jmp	.label_247
	nop	dword ptr [rax]
.label_245:
	mov	r15d, eax
	test	al, 1
	jne	.label_236
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbx
	call	lseek
	cmp	rax, -1
	je	.label_242
	mov	bpl, 1
.label_242:
	cmovne	rbx, qword ptr [rsp + 0x18]
.label_236:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x20]
	call	safe_read
	mov	r14, rax
	cmp	r14, -1
	je	.label_234
	test	r14, r14
	sete	byte ptr [rsp + 7]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	eax, r15d
.label_247:
	cmp	r14, rbx
	jae	.label_241
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_244
	nop	
.label_241:
	mov	r15, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_246:
	mov	ecx, eax
	or	cl, bpl
	and	bpl, 1
	test	cl, 1
	je	.label_233
	movzx	edi, bpl
	mov	rsi, r15
	mov	rdx, rbx
	call	cwrite
	mov	rsi, qword ptr [rsp + 0x10]
.label_233:
	movzx	ecx, bpl
	add	r12, rcx
	cmp	rsi, r12
	jae	.label_240
	mov	ecx, eax
	and	cl, 1
	je	.label_243
.label_240:
	cmp	rsi, r12
	setae	bpl
	add	r15, rbx
	sub	r14, rbx
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	r14, rcx
	mov	rbx, rcx
	jae	.label_246
	mov	rbx, qword ptr [rsp + 0x18]
.label_244:
	mov	cl, 1
	test	r14, r14
	je	.label_237
	mov	ecx, eax
	or	cl, bpl
	and	bpl, 1
	test	cl, 1
	je	.label_239
	movzx	edi, bpl
	mov	rsi, r15
	mov	rdx, r14
	call	cwrite
	mov	rsi, qword ptr [rsp + 0x10]
.label_239:
	movzx	ecx, bpl
	add	r12, rcx
	xor	ebp, ebp
	mov	edi, eax
	and	dil, 1
	mov	rdx, r14
	cmove	rdx, rbp
	cmp	r12, r13
	setne	cl
	cmovne	rdx, r14
	sub	rbx, rdx
	or	cl, dil
.label_237:
	test	cl, 1
	je	.label_243
	xor	byte ptr [rsp + 7], 1
	mov	r14, -1
	jne	.label_235
.label_243:
	cmp	r12, r13
	jae	.label_248
	sub	r13, r12
	nop	word ptr cs:[rax + rax]
.label_238:
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	dec	r13
	jne	.label_238
.label_248:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_234:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + infile]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403af0

	.globl closeout
	.type closeout, @function
closeout:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x30
	mov	r14, rcx
	mov	r15d, edx
	mov	ebx, esi
	mov	rbp, rdi
	test	rbp, rbp
	je	.label_250
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	je	.label_250
	call	__errno_location
	mov	r12d, dword ptr [rax]
	cmp	r12d, 0x20
	jne	.label_253
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	je	.label_253
.label_250:
	test	ebx, ebx
	js	.label_256
	test	rbp, rbp
	jne	.label_258
	mov	edi, ebx
	call	close
	test	eax, eax
	js	.label_260
.label_258:
	mov	rax, qword ptr [rip + n_open_pipes]
	test	rax, rax
	je	.label_256
	mov	rcx, qword ptr [rip + open_pipes]
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_265:
	cmp	dword ptr [rcx + rdx*4], ebx
	je	.label_254
	inc	rdx
	cmp	rdx, rax
	jb	.label_265
	jmp	.label_256
.label_254:
	lea	rsi, [rax - 1]
	mov	qword ptr [rip + n_open_pipes],  rsi
	mov	eax, dword ptr [rcx + rax*4 - 4]
	mov	dword ptr [rcx + rdx*4], eax
.label_256:
	test	r15d, r15d
	jle	.label_249
	mov	dword ptr [rsp + 0xc], 0
	lea	rsi, [rsp + 0xc]
	xor	edx, edx
	mov	edi, r15d
	call	waitpid
	cmp	eax, -1
	jne	.label_255
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0xa
	jne	.label_262
.label_255:
	mov	ebx, dword ptr [rsp + 0xc]
	mov	ebp, ebx
	and	ebp, 0x7f
	mov	eax, ebp
	shl	eax, 0x18
	add	eax, 0x1000000
	sar	eax, 0x19
	test	eax, eax
	jle	.label_259
	cmp	ebp, 0xd
	je	.label_249
	lea	rsi, [rsp + 0x10]
	mov	edi, ebp
	call	sig2str
	test	eax, eax
	je	.label_266
	lea	rdi, [rsp + 0x10]
	mov	esi, 1
	mov	edx, 0x13
	mov	ecx, OFFSET FLAT:label_264
	xor	eax, eax
	mov	r8d, ebp
	call	__sprintf_chk
.label_266:
	or	ebp, 0x80
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	r9, qword ptr [rip + filter_command]
	lea	r8, [rsp + 0x10]
	mov	esi, 0
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rbx
	call	error
	jmp	.label_249
.label_259:
	test	ebp, ebp
	jne	.label_263
	shr	ebx, 8
	and	ebx, 0xff
	je	.label_249
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_261
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	r9, qword ptr [rip + filter_command]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	rdx, rbp
	mov	r8d, ebx
	call	error
.label_249:
	add	rsp, 0x30
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_253:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	esi, r12d
	call	error
.label_260:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_262:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_263:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0xc]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d70

	.globl cwrite
	.type cwrite, @function
cwrite:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	test	dil, dil
	je	.label_271
	test	r14, r14
	jne	.label_268
	test	rbx, rbx
	jne	.label_268
	mov	al, 1
	mov	cl, byte ptr [rip + elide_empty_files]
	test	cl, cl
	jne	.label_269
.label_268:
	mov	esi, dword ptr [rip + output_desc]
	mov	edx, dword ptr [rip + filter_pid]
	mov	rcx, qword ptr [rip + outfile]
	xor	edi, edi
	call	closeout
	call	next_file_name
	mov	rdi, qword ptr [rip + outfile]
	call	create
	mov	edi, eax
	mov	dword ptr [rip + output_desc],  edi
	test	edi, edi
	jns	.label_267
	call	__errno_location
	mov	ebx, dword ptr [rax]
	jmp	.label_270
.label_271:
	mov	edi, dword ptr [rip + output_desc]
.label_267:
	mov	rsi, r14
	mov	rdx, rbx
	call	full_write
	mov	rcx, rax
	mov	al, 1
	cmp	rcx, rbx
	je	.label_269
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x20
	jne	.label_270
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	je	.label_270
	xor	eax, eax
.label_269:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_270:
	mov	rdx, qword ptr [rip + outfile]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e40

	.globl next_file_name
	.type next_file_name, @function
next_file_name:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, qword ptr [rip + outfile]
	test	r14, r14
	je	.label_284
	mov	rax, qword ptr [rip + suffix_length]
	test	rax, rax
	je	.label_292
	mov	rcx, qword ptr [rip + next_file_name.sufindex]
	mov	r8b, byte ptr [rip + suffix_auto]
	xor	r8b, 1
	mov	rsi, qword ptr [rip + suffix_alphabet]
	mov	rdi, qword ptr [rip + outfile_mid]
	nop	word ptr cs:[rax + rax]
.label_288:
	mov	rbx, qword ptr [rcx + rax*8 - 8]
	inc	rbx
	mov	qword ptr [rcx + rax*8 - 8], rbx
	cmp	rax, 1
	sete	dl
	and	dl, r8b
	cmp	dl, 1
	jne	.label_277
	mov	rdx, qword ptr [rcx]
	cmp	byte ptr [rsi + rdx + 1], 0
	je	.label_284
.label_277:
	movzx	edx, byte ptr [rsi + rbx]
	mov	byte ptr [rdi + rax - 1], dl
	test	dl, dl
	jne	.label_274
	mov	qword ptr [rcx + rax*8 - 8], 0
	movzx	edx, byte ptr [rsi]
	mov	byte ptr [rdi + rax - 1], dl
	dec	rax
	jne	.label_288
.label_292:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_293
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_284:
	mov	r12, qword ptr [rip + next_file_name.outfile_length]
	test	r12, r12
	je	.label_272
	lea	rsi, [r12 + 2]
	mov	qword ptr [rip + next_file_name.outfile_length],  rsi
	inc	qword ptr [rip + suffix_length]
	mov	rbx, qword ptr [rip + next_file_name.outbase_length]
	jmp	.label_276
.label_272:
	mov	rdi, qword ptr [rip + outbase]
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rip + next_file_name.outbase_length],  rbx
	mov	rdi, qword ptr [rip + additional_suffix]
	xor	eax, eax
	test	rdi, rdi
	je	.label_286
	call	strlen
.label_286:
	mov	qword ptr [rip + next_file_name.addsuf_length],  rax
	mov	rsi, rbx
	add	rsi, rax
	add	rsi, qword ptr [rip + suffix_length]
	mov	qword ptr [rip + next_file_name.outfile_length],  rsi
.label_276:
	inc	rsi
	cmp	rsi, rbx
	jb	.label_275
	mov	rdi, r14
	call	xrealloc
	mov	rbx, rax
	test	r12, r12
	mov	r14, rbx
	mov	qword ptr [rip + outfile],  rbx
	je	.label_273
	mov	rax, qword ptr [rip + next_file_name.sufindex]
	mov	rcx, qword ptr [rax]
	mov	rax, qword ptr [rip + suffix_alphabet]
	mov	cl, byte ptr [rax + rcx]
	mov	r15, qword ptr [rip + next_file_name.outbase_length]
	mov	byte ptr [r14 + r15], cl
	inc	r15
	mov	qword ptr [rip + next_file_name.outbase_length],  r15
	jmp	.label_278
.label_273:
	mov	rsi, qword ptr [rip + outbase]
	mov	r15, qword ptr [rip + next_file_name.outbase_length]
	mov	rdi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rip + suffix_alphabet]
.label_278:
	add	rbx, r15
	mov	qword ptr [rip + outfile_mid],  rbx
	mov	r15, qword ptr [rip + suffix_length]
	movzx	esi, byte ptr [rax]
	mov	rdi, rbx
	mov	rdx, r15
	call	memset
	mov	rsi, qword ptr [rip + additional_suffix]
	test	rsi, rsi
	je	.label_296
	add	rbx, r15
	mov	rdx, qword ptr [rip + next_file_name.addsuf_length]
	mov	rdi, rbx
	call	memcpy
.label_296:
	mov	rax, qword ptr [rip + next_file_name.outfile_length]
	mov	byte ptr [r14 + rax], 0
	mov	rdi, qword ptr [rip + next_file_name.sufindex]
	call	free
	mov	rdi, qword ptr [rip + suffix_length]
	mov	esi, 8
	call	xcalloc
	mov	r14, rax
	mov	qword ptr [rip + next_file_name.sufindex],  r14
	mov	rbx, qword ptr [rip + numeric_suffix_start]
	test	rbx, rbx
	je	.label_274
	test	r12, r12
	jne	.label_285
	mov	rdi, rbx
	call	strlen
	mov	r15, rax
	mov	r12, qword ptr [rip + suffix_length]
	mov	rdi, qword ptr [rip + outfile_mid]
	add	rdi, r12
	sub	rdi, r15
	mov	rsi, rbx
	mov	rdx, r15
	call	memcpy
	test	r15, r15
	je	.label_274
	lea	rax, [r14 + r12*8]
	cmp	r15, 4
	jae	.label_280
	mov	rcx, r15
	jmp	.label_282
.label_280:
	mov	ecx, r15d
	and	ecx, 3
	mov	r8, r15
	sub	r8, rcx
	je	.label_283
	lea	rsi, [r12*8]
	lea	rdi, [r15*8]
	sub	rsi, rdi
	add	rsi, r14
	lea	rdi, [rbx + r15 - 1]
	cmp	rsi, rdi
	ja	.label_287
	lea	rsi, [r14 + r12*8 - 8]
	cmp	rbx, rsi
	ja	.label_287
.label_283:
	mov	rcx, r15
	jmp	.label_282
.label_287:
	mov	rsi, rcx
	sub	rsi, r15
	lea	rax, [rax + rsi*8]
	lea	rsi, [r14 + r12*8 - 0x10]
	lea	rdi, [rbx + r15 - 2]
	pxor	xmm0, xmm0
	movdqa	xmm1, xmmword ptr [rip + label_294]
	nop	dword ptr [rax + rax]
.label_279:
	movzx	edx, word ptr [rdi]
	movd	xmm2, edx
	movzx	edx, word ptr [rdi - 2]
	movd	xmm3, edx
	punpcklbw	xmm2, xmm0
	pshuflw	xmm2, xmm2, 0xe1
	packuswb	xmm2, xmm0
	punpcklbw	xmm2, xmm2
	punpcklwd	xmm2, xmm2
	movdqa	xmm4, xmm2
	psrad	xmm4, 0x1f
	psrad	xmm2, 0x18
	punpckldq	xmm2, xmm4
	punpcklbw	xmm3, xmm0
	pshuflw	xmm3, xmm3, 0xe1
	packuswb	xmm3, xmm0
	punpcklbw	xmm3, xmm3
	punpcklwd	xmm3, xmm3
	movdqa	xmm4, xmm3
	psrad	xmm4, 0x1f
	psrad	xmm3, 0x18
	punpckldq	xmm3, xmm4
	paddq	xmm2, xmm1
	paddq	xmm3, xmm1
	pshufd	xmm2, xmm2, 0x4e
	movdqu	xmmword ptr [rsi], xmm2
	pshufd	xmm2, xmm3, 0x4e
	movdqu	xmmword ptr [rsi - 0x10], xmm2
	add	rsi, -0x20
	add	rdi, -4
	add	r8, -4
	jne	.label_279
	test	rcx, rcx
	je	.label_274
.label_282:
	lea	rsi, [rcx - 1]
	mov	edx, ecx
	and	edx, 3
	cmp	rsi, 3
	jb	.label_291
	nop	word ptr cs:[rax + rax]
.label_295:
	movsx	rsi, byte ptr [rbx + rcx - 1]
	add	rsi, -0x30
	mov	qword ptr [rax - 8], rsi
	movsx	rsi, byte ptr [rbx + rcx - 2]
	add	rsi, -0x30
	mov	qword ptr [rax - 0x10], rsi
	movsx	rsi, byte ptr [rbx + rcx - 3]
	add	rsi, -0x30
	mov	qword ptr [rax - 0x18], rsi
	movsx	rsi, byte ptr [rbx + rcx - 4]
	add	rcx, -4
	add	rsi, -0x30
	mov	qword ptr [rax - 0x20], rsi
	add	rax, -0x20
	cmp	rdx, rcx
	jne	.label_295
.label_291:
	test	rdx, rdx
	je	.label_274
	lea	rcx, [rbx + rcx - 1]
	add	rax, -8
	neg	rdx
	nop	word ptr cs:[rax + rax]
.label_281:
	movsx	rsi, byte ptr [rcx]
	add	rsi, -0x30
	mov	qword ptr [rax], rsi
	dec	rcx
	add	rax, -8
	inc	rdx
	jne	.label_281
.label_274:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_275:
	call	xalloc_die
.label_285:
	mov	edi, OFFSET FLAT:label_289
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 0x198
	mov	ecx, OFFSET FLAT:label_290
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404270

	.globl create
	.type create, @function
create:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x98
	mov	r15, rdi
	cmp	qword ptr [rip + filter_command],  0
	je	.label_321
	mov	edi, OFFSET FLAT:label_326
	call	getenv
	test	rax, rax
	mov	r14d, OFFSET FLAT:label_328
	cmovne	r14, rax
	mov	edi, OFFSET FLAT:label_329
	mov	edx, 1
	mov	rsi, r15
	call	setenv
	test	eax, eax
	jne	.label_335
	cmp	byte ptr [rip + verbose],  1
	jne	.label_337
	mov	rbp, qword ptr [rip + stdout]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbp
	mov	rdx, rbx
	call	__fprintf_chk
.label_337:
	lea	rdi, [rsp + 8]
	call	pipe
	test	eax, eax
	jne	.label_301
	call	fork
	mov	ebx, eax
	test	ebx, ebx
	je	.label_303
	cmp	ebx, -1
	je	.label_307
	mov	edi, dword ptr [rsp + 8]
	call	close
	test	eax, eax
	jne	.label_312
	mov	dword ptr [rip + filter_pid],  ebx
	mov	rcx, qword ptr [rip + n_open_pipes]
	cmp	rcx, qword ptr [rip + open_pipes_alloc]
	jne	.label_313
	mov	rdi, qword ptr [rip + open_pipes]
	test	rdi, rdi
	je	.label_317
	movabs	rax, 0x1555555555555555
	cmp	rcx, rax
	jae	.label_320
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_324
.label_321:
	cmp	byte ptr [rip + verbose],  1
	jne	.label_327
	mov	r14, qword ptr [rip + stdout]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rbp
	call	__fprintf_chk
.label_327:
	mov	esi, 0x41
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, r15
	call	open_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_310
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, ebp
	call	__fxstat
	test	eax, eax
	jne	.label_297
	mov	rax, qword ptr [rip + label_299]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_300
	mov	rax, qword ptr [rip + in_stat_buf]
	cmp	rax, qword ptr [rsp + 8]
	je	.label_302
.label_300:
	xor	esi, esi
	mov	edi, ebp
	call	ftruncate
	test	eax, eax
	je	.label_310
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	jne	.label_310
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	jmp	.label_323
.label_303:
	cmp	qword ptr [rip + n_open_pipes],  0
	je	.label_325
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_333:
	mov	rax, qword ptr [rip + open_pipes]
	mov	edi, dword ptr [rax + rbx*4]
	call	close
	test	eax, eax
	jne	.label_332
	inc	rbx
	cmp	rbx, qword ptr [rip + n_open_pipes]
	jb	.label_333
.label_325:
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	test	eax, eax
	jne	.label_336
	mov	edi, dword ptr [rsp + 8]
	test	edi, edi
	je	.label_338
	xor	esi, esi
	call	dup2
	test	eax, eax
	jne	.label_341
	mov	edi, dword ptr [rsp + 8]
	call	close
	test	eax, eax
	jne	.label_340
.label_338:
	mov	edi, 2
	mov	esi, OFFSET FLAT:oldblocked
	xor	edx, edx
	call	sigprocmask
	mov	rdi, r14
	call	last_component
	mov	rsi, rax
	mov	rcx, qword ptr [rip + filter_command]
	mov	edx, OFFSET FLAT:label_298
	xor	r8d, r8d
	xor	eax, eax
	mov	rdi, r14
	call	execl
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	r8, qword ptr [rip + filter_command]
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_332:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
	jmp	.label_305
.label_313:
	mov	rax, qword ptr [rip + open_pipes]
	jmp	.label_319
.label_336:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
.label_305:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_317:
	test	rcx, rcx
	mov	esi, 0x20
	cmovne	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_331
.label_324:
	mov	qword ptr [rip + open_pipes_alloc],  rsi
	shl	rsi, 2
	call	xrealloc
	mov	qword ptr [rip + open_pipes],  rax
	mov	rcx, qword ptr [rip + n_open_pipes]
.label_319:
	mov	edx, dword ptr [rsp + 0xc]
	lea	rsi, [rcx + 1]
	mov	qword ptr [rip + n_open_pipes],  rsi
	mov	dword ptr [rax + rcx*4], edx
	mov	ebp, dword ptr [rsp + 0xc]
.label_310:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_341:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	jmp	.label_305
.label_340:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
	jmp	.label_305
.label_335:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	jmp	.label_305
.label_301:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
	jmp	.label_305
.label_307:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
	jmp	.label_305
.label_312:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_318
	jmp	.label_305
.label_297:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
.label_323:
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_302:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_320:
	call	xalloc_die
.label_331:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046f0

	.globl ofile_open
	.type ofile_open, @function
ofile_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rcx, rbx
	shl	rcx, 5
	mov	eax, dword ptr [r14 + rcx + 8]
	test	eax, eax
	js	.label_353
	xor	ebp, ebp
	jmp	.label_348
.label_353:
	lea	rdx, [r14 + rcx + 8]
	mov	qword ptr [rsp + 8], rdx
	test	rbx, rbx
	mov	r12, r15
	cmovne	r12, rbx
	dec	r12
	mov	qword ptr [rsp + 0x10], rcx
	lea	rcx, [r14 + rcx]
	mov	qword ptr [rsp], rcx
	xor	ebp, ebp
	jmp	.label_349
	nop	word ptr cs:[rax + rax]
.label_354:
	lea	rax, [r14 + r13 + 8]
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 0xfffffffe
	mov	rax, qword ptr [rsp + 8]
	mov	eax, dword ptr [rax]
	mov	bpl, 1
.label_349:
	mov	rcx, qword ptr [rsp]
	mov	rdi, qword ptr [rcx]
	cmp	eax, -1
	je	.label_352
	mov	esi, 0xc01
	xor	eax, eax
	call	open_safer
	jmp	.label_344
	nop	word ptr [rax + rax]
.label_352:
	call	create
.label_344:
	test	eax, eax
	jns	.label_347
	call	__errno_location
	mov	rbp, rax
	mov	ecx, dword ptr [rbp]
	lea	eax, [rcx - 0x17]
	cmp	eax, 1
	ja	.label_345
	nop	word ptr cs:[rax + rax]
.label_346:
	mov	r13, r12
	shl	r13, 5
	cmp	dword ptr [r14 + r13 + 8], 0
	jns	.label_343
	test	r12, r12
	cmove	r12, r15
	dec	r12
	cmp	r12, rbx
	jne	.label_346
	jmp	.label_345
	nop	word ptr cs:[rax + rax]
.label_343:
	mov	rdi, qword ptr [r14 + r13 + 0x10]
	call	rpl_fclose
	test	eax, eax
	je	.label_354
	mov	ebx, dword ptr [rbp]
	mov	rdx, qword ptr [r14 + r13]
.label_350:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_347:
	mov	rcx, qword ptr [rsp + 8]
	mov	dword ptr [rcx], eax
	mov	esi, OFFSET FLAT:label_351
	mov	edi, eax
	call	fdopen
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + rcx + 0x10], rax
	test	rax, rax
	je	.label_355
	mov	eax, dword ptr [rip + filter_pid]
	mov	dword ptr [r14 + rcx + 0x18], eax
	mov	dword ptr [rip + filter_pid],  0
.label_348:
	and	bpl, 1
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_345:
	mov	rax, qword ptr [rsp]
	mov	rdx, qword ptr [rax]
	xor	edi, edi
	mov	rbx, rcx
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_355:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rax, qword ptr [rsp]
	mov	rdx, qword ptr [rax]
	jmp	.label_350
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_359
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_356
	cmp	dword ptr [rbp], 0x20
	jne	.label_356
.label_359:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_358
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_356:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_357
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_358:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_357:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049a0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_360:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_360
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_364
	nop	word ptr cs:[rax + rax]
.label_363:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_364:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_363
	test	dl, dl
	je	.label_362
	mov	ecx, esi
	and	cl, 1
	je	.label_361
	xor	esi, esi
.label_361:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_363
.label_362:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a00
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_366:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_365
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_366
.label_365:
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a30

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_367
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_367:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_368
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_370
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_369
.label_370:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_369:
	mov	edx, dword ptr [rax]
.label_368:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b00

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
	je	.label_372
	test	ebx, ebx
	js	.label_372
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
	jmp	.label_371
.label_372:
	mov	eax, ebx
.label_371:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b60

	.globl full_write
	.type full_write, @function
full_write:
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
	je	.label_373
	nop	word ptr [rax + rax]
.label_375:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_373
	test	rax, rax
	je	.label_374
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_375
	jmp	.label_373
.label_374:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_373:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404bc0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_376:
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
	ja	.label_376
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c10

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_380
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_382
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_382
	mov	esi, OFFSET FLAT:label_379
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_378
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_378:
	mov	rbx, r14
.label_382:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_380:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_381
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cc0
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
	#Procedure 0x404d00
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
	#Procedure 0x404d10
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
	#Procedure 0x404d20
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
	#Procedure 0x404d60
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
	#Procedure 0x404d80
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_383
	test	rdx, rdx
	je	.label_383
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_383:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404db0
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
	#Procedure 0x404e30

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
.label_448:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_446
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_480]
.label_829:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_453
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_385
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_830:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_469
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_469
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_481:
	cmp	r14, r11
	jae	.label_478
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_478:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_481
.label_469:
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
	jmp	.label_386
.label_822:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_386
.label_825:
	mov	al, 1
.label_823:
	mov	r12b, 1
.label_826:
	test	r12b, 1
	mov	cl, 1
	je	.label_499
	mov	ecx, eax
.label_499:
	mov	al, cl
.label_824:
	test	r12b, 1
	jne	.label_501
	test	r11, r11
	je	.label_482
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_482:
	mov	r14d, 1
	jmp	.label_504
.label_501:
	xor	r14d, r14d
.label_504:
	mov	ecx, OFFSET FLAT:label_385
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_386
.label_827:
	test	r12b, 1
	jne	.label_398
	test	r11, r11
	je	.label_402
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_402:
	mov	r14d, 1
	jmp	.label_405
.label_828:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_409
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_386
.label_398:
	xor	r14d, r14d
.label_405:
	mov	eax, OFFSET FLAT:label_409
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_386:
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
	jmp	.label_429
	nop	dword ptr [rax]
.label_483:
	inc	rsi
.label_429:
	cmp	rbp, -1
	je	.label_463
	cmp	rsi, rbp
	jne	.label_464
	jmp	.label_466
	nop	word ptr cs:[rax + rax]
.label_463:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_470
.label_464:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_502
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_476
	cmp	rbp, -1
	jne	.label_476
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
.label_476:
	cmp	rbx, rbp
	jbe	.label_486
.label_502:
	xor	r8d, r8d
.label_391:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_488
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_492]
.label_851:
	test	rsi, rsi
	jne	.label_390
	jmp	.label_420
	nop	word ptr cs:[rax + rax]
.label_486:
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
	jne	.label_387
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_391
	jmp	.label_404
.label_387:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_391
.label_855:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_416
	test	rsi, rsi
	jne	.label_418
	cmp	rbp, 1
	je	.label_420
	xor	r13d, r13d
	jmp	.label_408
.label_844:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_425
	cmp	byte ptr [rsp + 6], 0
	jne	.label_428
	cmp	r12d, 2
	jne	.label_432
	mov	eax, r9d
	and	al, 1
	jne	.label_432
	cmp	r14, r11
	jae	.label_436
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_436:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_439
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_439:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_438
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_438:
	add	r14, 3
	mov	r9b, 1
.label_432:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_471
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_471:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_451
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_451
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_451
	cmp	r14, r11
	jae	.label_426
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_426:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_459
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_459:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_408
.label_845:
	mov	bl, 0x62
	jmp	.label_474
.label_846:
	mov	cl, 0x74
	jmp	.label_392
.label_847:
	mov	bl, 0x76
	jmp	.label_474
.label_848:
	mov	bl, 0x66
	jmp	.label_474
.label_849:
	mov	cl, 0x72
	jmp	.label_392
.label_852:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_479
	cmp	byte ptr [rsp + 6], 0
	jne	.label_396
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
	jae	.label_485
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_485:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_495
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_495:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_500
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_500:
	add	r14, 3
	xor	r9d, r9d
.label_479:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_408
.label_853:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_505
	cmp	r12d, 2
	jne	.label_390
	cmp	byte ptr [rsp + 6], 0
	je	.label_390
	jmp	.label_396
.label_854:
	cmp	r12d, 2
	jne	.label_399
	cmp	byte ptr [rsp + 6], 0
	jne	.label_396
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_406
.label_488:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_412
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
.label_413:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_431
	test	r8b, r8b
	je	.label_431
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_408
.label_416:
	test	rsi, rsi
	jne	.label_449
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_449
.label_420:
	mov	dl, 1
.label_850:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_396
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_408:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_458
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_427
	jmp	.label_462
	nop	word ptr cs:[rax + rax]
.label_458:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_462
.label_427:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_467
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_406
	jmp	.label_434
	nop	dword ptr [rax]
.label_462:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_434
	jmp	.label_406
.label_467:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_434
.label_425:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_483
	xor	r15d, r15d
	jmp	.label_390
.label_399:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_392
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_406
.label_392:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_396
.label_474:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_408
	nop	word ptr cs:[rax + rax]
.label_434:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_428
	cmp	r12d, 2
	jne	.label_503
	mov	eax, r9d
	and	al, 1
	jne	.label_503
	cmp	r14, r11
	jae	.label_465
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_465:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_388
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_388:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_414
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_414:
	add	r14, 3
	mov	r9b, 1
.label_503:
	cmp	r14, r11
	jae	.label_403
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_403:
	inc	r14
	jmp	.label_410
.label_412:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_493
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_493:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_457:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_437
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_442
	cmp	rbp, -2
	je	.label_445
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_456
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_450:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_417
	bt	rsi, rdx
	jb	.label_460
.label_417:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_450
.label_456:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_497
	xor	r13d, r13d
.label_497:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_457
	jmp	.label_413
.label_451:
	xor	r13d, r13d
	jmp	.label_408
.label_449:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_408
.label_505:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_390
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_390
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_390
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_397
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_422
	cmp	byte ptr [rsp + 6], 0
	jne	.label_498
	cmp	r14, r11
	jae	.label_472
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_472:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_487
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_487:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_384
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_384:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_421
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_421:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_408
.label_390:
	xor	eax, eax
.label_418:
	xor	r13d, r13d
	jmp	.label_408
.label_431:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_411
	nop	word ptr cs:[rax + rax]
.label_484:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_411:
	test	r8b, r8b
	je	.label_475
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_419
	cmp	r14, r11
	jae	.label_423
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_423:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_419
	nop	dword ptr [rax]
.label_475:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_404
	cmp	r12d, 2
	jne	.label_401
	mov	eax, r9d
	and	al, 1
	jne	.label_401
	cmp	r14, r11
	jae	.label_441
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_441:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_395
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_395:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_447
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_447:
	add	r14, 3
	mov	r9b, 1
.label_401:
	cmp	r14, r11
	jae	.label_490
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_490:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_454
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_454:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_435
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_435:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_419:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_406
	test	r9b, 1
	je	.label_400
	mov	ebx, eax
	and	bl, 1
	jne	.label_400
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_477
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_477:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_496
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_496:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_400:
	cmp	r14, r11
	jae	.label_484
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_484
	nop	word ptr cs:[rax + rax]
.label_406:
	test	r9b, 1
	je	.label_491
	and	al, 1
	jne	.label_491
	cmp	r14, r11
	jae	.label_494
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_494:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_440
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_440:
	add	r14, 2
	xor	r9d, r9d
.label_491:
	mov	ebx, r15d
.label_410:
	cmp	r14, r11
	jae	.label_489
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_489:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_483
.label_442:
	xor	r13d, r13d
.label_437:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_413
.label_445:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_394
	mov	rsi, qword ptr [rsp + 0x58]
.label_407:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_415
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_407
	xor	r13d, r13d
	jmp	.label_413
.label_394:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_413
.label_415:
	xor	r13d, r13d
	jmp	.label_413
.label_397:
	xor	r13d, r13d
	jmp	.label_408
.label_422:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_408
	nop	dword ptr [rax + rax]
.label_466:
	mov	rcx, rsi
.label_470:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_424
	or	al, dl
	je	.label_430
.label_424:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_433
	or	al, dl
	jne	.label_433
	test	r10b, 1
	jne	.label_444
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_433
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_448
.label_433:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_452
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_455
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_455
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_468:
	cmp	r14, r11
	jae	.label_461
	mov	byte ptr [rcx + r14], al
.label_461:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_468
	jmp	.label_455
.label_428:
	mov	qword ptr [rsp + 0x20], rbp
.label_404:
	mov	rdx, rdi
	jmp	.label_473
.label_396:
	mov	qword ptr [rsp + 0x20], rbp
.label_460:
	mov	rdx, rdi
	mov	eax, 2
.label_443:
	mov	qword ptr [rsp + 0x38], rax
.label_473:
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
.label_389:
	mov	r14, rax
.label_393:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_430:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_473
.label_444:
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
	jmp	.label_389
.label_452:
	mov	rcx, qword ptr [rsp + 8]
.label_455:
	cmp	r14, r11
	jae	.label_393
	mov	byte ptr [rcx + r14], 0
	jmp	.label_393
.label_498:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_443
.label_446:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c40
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
	#Procedure 0x405d10
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
	je	.label_506
	mov	qword ptr [rax], rbx
.label_506:
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
	#Procedure 0x405e00
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_507
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_509:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_509
.label_507:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_510
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_511], OFFSET FLAT:slot0
.label_510:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_508
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_508:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ea0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405eb0

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
	js	.label_515
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_518
	cmp	r12d, 0x7fffffff
	je	.label_513
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
	jne	.label_516
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_516:
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
.label_518:
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
	jbe	.label_514
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_517
.label_514:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_512
	mov	rdi, r14
	call	free
.label_512:
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
.label_517:
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
.label_515:
	call	abort
.label_513:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406070
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406080
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
	#Procedure 0x4060a0
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
	#Procedure 0x4060c0
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
	je	.label_519
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
.label_519:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406130
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
	je	.label_520
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
.label_520:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061a0

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
	je	.label_521
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
.label_521:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406210
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
	je	.label_522
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
.label_522:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406280
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_523]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_524]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_525]
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
	#Procedure 0x4062f0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_523]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_524]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_525]
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
	#Procedure 0x406360

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_523]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_524]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_525]
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
	#Procedure 0x4063c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_523]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_524]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_525]
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
	#Procedure 0x406420

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
	je	.label_526
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
.label_526:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064c0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_523]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_524]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_525]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_527
	test	rdx, rdx
	je	.label_527
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_527:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x406530
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_523]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_524]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_525]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_528
	test	rdx, rdx
	je	.label_528
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_528:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065a0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_523]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_524]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_525]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_529
	test	rsi, rsi
	je	.label_529
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_529:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406610
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_523]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_524]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_525]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_530
	test	rsi, rsi
	je	.label_530
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
.label_530:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406680
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406690
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
	#Procedure 0x4066b0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066d0

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
	#Procedure 0x4066f0

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
	jne	.label_532
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_537
	cmp	ecx, 0x55
	jne	.label_531
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_531
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_531
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_531
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_531
	cmp	byte ptr [rax + 5], 0
	jne	.label_531
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_534
	mov	eax, OFFSET FLAT:label_535
	jmp	.label_536
.label_537:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_531
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_531
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_531
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_531
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_531
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_531
	cmp	byte ptr [rax + 7], 0
	je	.label_533
.label_531:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_409
	mov	eax, OFFSET FLAT:label_385
.label_536:
	cmove	rax, rcx
.label_532:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_533:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_538
	mov	eax, OFFSET FLAT:label_539
	jmp	.label_536
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067c0

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
.label_541:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_540
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_541
	cmp	rbx, 0x7ff00001
	jb	.label_540
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_541
.label_540:
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
	#Procedure 0x406820

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_543:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_542
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_543
	cmp	rbx, 0x7ff00001
	jb	.label_542
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_543
.label_542:
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
	#Procedure 0x406880

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_544
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_545
.label_544:
	mov	eax, ebx
.label_545:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068d0

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
	je	.label_552
	mov	edx, OFFSET FLAT:label_561
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_548
.label_552:
	mov	edx, OFFSET FLAT:label_550
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_548:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_555
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
	mov	esi, OFFSET FLAT:label_551
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_557
	jmp	qword ptr [(r12 * 8) + label_558]
.label_833:
	add	rsp, 8
	jmp	.label_549
.label_557:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_564
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
	jmp	.label_549
.label_834:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_556
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
.label_835:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_546
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
.label_836:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_562
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
.label_837:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_559
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
	jmp	.label_549
.label_838:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_554
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
	jmp	.label_549
.label_839:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_560
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
	jmp	.label_549
.label_840:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_563
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
	jmp	.label_549
.label_842:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_547
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
	jmp	.label_549
.label_841:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_553
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
.label_549:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c30
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_565:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_565
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c60

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_576
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_578
.label_576:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_578:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_567
	cmp	r10d, 0x29
	jae	.label_575
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_577
.label_575:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_577:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_567
	cmp	r10d, 0x29
	jae	.label_573
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_574
.label_573:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_574:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_567
	cmp	r10d, 0x29
	jae	.label_571
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_572
.label_571:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_572:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_567
	cmp	r10d, 0x29
	jae	.label_569
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_570
.label_569:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_570:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_567
	cmp	r10d, 0x29
	jae	.label_566
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_568
.label_566:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_568:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_567
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_567
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_567
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_567
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_567:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e50

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_579
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_579:
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
	#Procedure 0x406ee0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_580
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_581
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_583
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_582
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f60
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_584
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_585
	test	rax, rax
	je	.label_584
.label_585:
	pop	rbx
	ret	
.label_584:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406fa0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_586
	test	rax, rax
	je	.label_587
.label_586:
	pop	rbx
	ret	
.label_587:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406fc0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_588
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_589
	test	rbx, rbx
	jne	.label_589
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_589:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_590
	test	rax, rax
	je	.label_588
.label_590:
	pop	rbx
	ret	
.label_588:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407010

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_591
	test	rbx, rbx
	jne	.label_591
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_591:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_593
	test	rax, rax
	je	.label_592
.label_593:
	pop	rbx
	ret	
.label_592:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407040
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_594
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_597
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_595
.label_594:
	test	rcx, rcx
	jne	.label_600
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_600:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_596
.label_595:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_599
	test	rbx, rbx
	jne	.label_599
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_599:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_598
	test	rax, rax
	je	.label_597
.label_598:
	pop	rbx
	ret	
.label_597:
	call	xalloc_die
.label_596:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070e0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_601
	test	rax, rax
	je	.label_602
.label_601:
	pop	rbx
	ret	
.label_602:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407100
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_603
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_606
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_607
	call	free
	xor	eax, eax
	jmp	.label_604
.label_603:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_605
	mov	qword ptr [rsi], rbx
.label_607:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_604
	test	rax, rax
	je	.label_605
.label_604:
	pop	rbx
	ret	
.label_605:
	call	xalloc_die
.label_606:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407170
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
	je	.label_609
	test	r14, r14
	je	.label_608
.label_609:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_608:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071b0

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_610
	call	rpl_calloc
	test	rax, rax
	je	.label_610
	pop	rcx
	ret	
.label_610:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071e0

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
	je	.label_611
	test	r15, r15
	je	.label_612
.label_611:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_612:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407220

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
	je	.label_614
	test	r15, r15
	je	.label_613
.label_614:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_613:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407270

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_615
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4072a0

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
	je	.label_617
	cmp	eax, 1
	je	.label_619
	cmp	eax, 3
	jne	.label_621
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_616
.label_619:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_616
.label_617:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_620
	cmp	rbx, r15
	jbe	.label_622
.label_620:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_618
	mov	dword ptr [rax], 0x4b
	jmp	.label_616
.label_621:
	call	__errno_location
	jmp	.label_616
.label_618:
	mov	dword ptr [rax], 0x22
.label_616:
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
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_622:
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
	#Procedure 0x407370

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
	#Procedure 0x4073a0

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
	jae	.label_628
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_643:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_643
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_633
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
	je	.label_631
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_639
	cmp	eax, 0x22
	jne	.label_633
	mov	ebp, 1
.label_639:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_641
	jmp	.label_626
.label_631:
	test	r14, r14
	je	.label_633
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_633
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_633
.label_641:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_626
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_632
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_627
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_627
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_627
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_625
	cmp	eax, 0x44
	je	.label_625
	cmp	eax, 0x69
	jne	.label_627
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_627
.label_625:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_627:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_632
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_640]
.label_875:
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
	jmp	.label_642
.label_632:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_629
.label_876:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_634
.label_877:
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
	jmp	.label_623
.label_879:
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
	jmp	.label_624
.label_873:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_644
.label_874:
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
	jmp	.label_623
.label_878:
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
.label_624:
	or	dl, r10b
.label_642:
	or	dl, bl
.label_623:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_630
.label_880:
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
	jmp	.label_635
.label_881:
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
.label_635:
	movzx	eax, dl
.label_634:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_630
.label_882:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_644:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_630
.label_883:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_630:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_626:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_629:
	mov	r13d, r15d
.label_633:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_628:
	mov	edi, OFFSET FLAT:label_636
	mov	esi, OFFSET FLAT:label_637
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_638
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079e0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_645
	test	rsi, rsi
	mov	ecx, 1
	je	.label_646
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_646
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_645:
	mov	ecx, 1
.label_646:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a30

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_647
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_649
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_647
.label_649:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_647
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_648
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_648:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_647:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ab0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_650
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_650
	test	byte ptr [rbx + 1], 1
	je	.label_650
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_650:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407af0

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
	jne	.label_651
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_651
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_652
.label_651:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_652:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_653
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_653:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407b60

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
	je	.label_654
	cmp	r15, -2
	jb	.label_654
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_654
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_654:
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
	#Procedure 0x407bc0
	.globl str2sig
	.type str2sig, @function
str2sig:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r12, rdi
	movsx	eax, byte ptr [r12]
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_655
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	cmp	rax, 0x40
	jg	.label_656
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_658
	jmp	.label_656
.label_655:
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_659
	nop	word ptr cs:[rax + rax]
.label_666:
	mov	rdi, rbp
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_664
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_666
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r15d, eax
	test	ebp, ebp
	jle	.label_657
	mov	esi, OFFSET FLAT:label_661
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	je	.label_662
.label_657:
	test	r15d, r15d
	jle	.label_656
	mov	esi, OFFSET FLAT:label_665
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	jne	.label_656
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	cmp	byte ptr [rcx], 0
	jne	.label_656
	sub	ebp, r15d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_656
	test	rax, rax
	jg	.label_656
	mov	ecx, r15d
	jmp	.label_660
.label_664:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_658
.label_662:
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	test	rax, rax
	js	.label_656
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_656
	sub	r15d, ebp
	movsxd	rcx, r15d
	cmp	rax, rcx
	jle	.label_663
.label_656:
	mov	eax, 0xffffffff
.label_658:
	mov	dword ptr [r14], eax
	sar	eax, 0x1f
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_663:
	mov	ecx, ebp
.label_660:
	add	rax, rcx
	jmp	.label_658
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d20

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rsi
	mov	ebp, edi
	mov	ecx, OFFSET FLAT:numname_table
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_673:
	mov	edx, eax
	cmp	dword ptr [rcx], ebp
	je	.label_667
	lea	esi, [rdx + 1]
	cmp	dword ptr [rcx + 0xc], ebp
	je	.label_669
	lea	esi, [rdx + 2]
	cmp	dword ptr [rcx + 0x18], ebp
	je	.label_669
	add	edx, 3
	cmp	dword ptr [rcx + 0x24], ebp
	mov	rsi, rdx
	je	.label_669
	cmp	dword ptr [rcx + 0x30], ebp
	je	.label_671
	add	rax, 5
	add	rcx, 0x3c
	cmp	eax, 0x23
	jb	.label_673
	call	__libc_current_sigrtmin
	mov	r14d, eax
	call	__libc_current_sigrtmax
	cmp	r14d, ebp
	mov	ebx, 0xffffffff
	jg	.label_668
	cmp	eax, ebp
	jl	.label_668
	mov	ecx, eax
	sub	ecx, r14d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r14d
	cmp	edx, ebp
	jge	.label_670
	mov	word ptr [r15 + 4], 0x58
	mov	dword ptr [r15], 0x414d5452
	mov	r14d, eax
	jmp	.label_672
.label_667:
	mov	rsi, rdx
	jmp	.label_669
.label_671:
	add	rax, 4
	mov	rsi, rax
.label_669:
	lea	rax, [rsi + rsi*2]
	lea	rsi, qword ptr [(rax * 4) + label_659]
	mov	rdi, r15
	call	strcpy
	xor	ebx, ebx
.label_668:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_670:
	mov	word ptr [r15 + 4], 0x4e
	mov	dword ptr [r15], 0x494d5452
.label_672:
	xor	ebx, ebx
	sub	ebp, r14d
	je	.label_668
	add	r15, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_674
	xor	eax, eax
	mov	rdi, r15
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_668
	.section	.text
	.align	16
	#Procedure 0x407e20

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
	jne	.label_676
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_675
	test	cl, cl
	jne	.label_675
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_675
.label_676:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_675
	call	__errno_location
	mov	dword ptr [rax], 0
.label_675:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e80

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_678
	cmp	byte ptr [rax], 0x43
	jne	.label_680
	cmp	byte ptr [rax + 1], 0
	je	.label_677
.label_680:
	mov	esi, OFFSET FLAT:label_679
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_678
.label_677:
	xor	ebx, ebx
.label_678:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ec0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_73
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_681
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ef0

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
	#Procedure 0x407f00

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_682
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_682:
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
	ja	.label_689
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_685
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_686
	test	esi, esi
	jne	.label_689
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_690
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_691
.label_689:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_692
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_686
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_696
.label_685:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_687
.label_686:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_700
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_701
.label_700:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_701:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_702:
	call	fcntl
.label_687:
	mov	ebp, eax
.label_684:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_696:
	cmp	eax, 6
	jne	.label_692
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_694
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_683
.label_692:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_695
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_698
.label_690:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_691:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_702
.label_694:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_683:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_688
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_693
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_693
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_684
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_697
.label_693:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_684
.label_695:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_698:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_687
.label_688:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_697:
	test	al, al
	je	.label_684
	test	ebp, ebp
	js	.label_684
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_699
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_684
.label_699:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_684
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x4081a0

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
