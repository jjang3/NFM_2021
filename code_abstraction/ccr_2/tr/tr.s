	.section	.text
	.align	32
	#Procedure 0x4016a0

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
	mov	esi, OFFSET FLAT:label_23
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
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_10
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_10
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_10:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_19:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
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
	#Procedure 0x4018c0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1a8
	mov	r15, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_138
	call	setlocale
	mov	edi, OFFSET FLAT:label_191
	mov	esi, OFFSET FLAT:label_192
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_191
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_126
	nop	word ptr cs:[rax + rax]
.label_794:
	mov	byte ptr [rip + complement],  1
.label_126:
	mov	edx, OFFSET FLAT:label_133
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x40
	jle	.label_140
	add	eax, -0x41
	cmp	eax, 0x33
	ja	.label_157
	jmp	qword ptr [(rax * 8) + label_159]
.label_793:
	mov	edi, 3
	mov	esi, OFFSET FLAT:label_160
	call	setlocale
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	call	setlocale
	jmp	.label_126
.label_795:
	mov	byte ptr [rip + delete],  1
	jmp	.label_126
.label_796:
	mov	byte ptr [rip + squeeze_repeats],  1
	jmp	.label_126
.label_797:
	mov	byte ptr [rip + truncate_set1],  1
	jmp	.label_126
.label_140:
	cmp	eax, -1
	jne	.label_190
	mov	r12d, ebp
	sub	r12d, dword ptr [rip + optind]
	movzx	ebx, byte ptr [rip + delete]
	cmp	r12d, 2
	je	.label_195
	xor	eax, eax
	jmp	.label_200
.label_195:
	mov	al, bl
	xor	al, 1
.label_200:
	mov	byte ptr [rip + translating],  al
	mov	al, byte ptr [rip + squeeze_repeats]
	mov	ecx, ebx
	xor	cl, al
	movzx	ecx, cl
	mov	edx, 2
	mov	esi, 2
	sub	esi, ecx
	xor	ebx, 1
	inc	ebx
	test	al, al
	cmovne	ebx, edx
	cmp	r12d, esi
	jl	.label_204
	cmp	ebx, r12d
	jl	.label_216
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rax + 8], 0
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	lea	rsi, [rsp + 0x10]
	call	parse_str
	mov	ebp, 1
	test	al, al
	je	.label_37
	xor	r14d, r14d
	cmp	r12d, 2
	jne	.label_39
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rsp + 0x178], rax
	mov	qword ptr [rsp + 0x170], rax
	mov	qword ptr [rax + 8], 0
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8 + 8]
	lea	r14, [rsp + 0x170]
	mov	rsi, r14
	call	parse_str
	test	al, al
	je	.label_37
.label_39:
	lea	rdi, [rsp + 0x10]
	call	get_spec_stats
	cmp	byte ptr [rip + complement],  1
	jne	.label_136
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x160], xmm0
	movdqa	xmmword ptr [rsp + 0x150], xmm0
	movdqa	xmmword ptr [rsp + 0x140], xmm0
	movdqa	xmmword ptr [rsp + 0x130], xmm0
	movdqa	xmmword ptr [rsp + 0x120], xmm0
	movdqa	xmmword ptr [rsp + 0x110], xmm0
	movdqa	xmmword ptr [rsp + 0x100], xmm0
	movdqa	xmmword ptr [rsp + 0xf0], xmm0
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	mov	ecx, 0x100
	cmp	eax, -1
	je	.label_139
	mov	ebp, 0x100
	lea	rbx, [rsp + 0x10]
	nop	
.label_164:
	cdqe	
	movzx	ecx, byte ptr [rsp + rax + 0x70]
	xor	ecx, 1
	sub	ebp, ecx
	mov	byte ptr [rsp + rax + 0x70], 1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_164
	movsxd	rcx, ebp
.label_139:
	mov	qword ptr [rsp + 0x28], rcx
.label_136:
	cmp	qword ptr [rsp + 0x30], 0
	jne	.label_183
	test	r14, r14
	je	.label_48
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdi, r14
	call	get_spec_stats
	mov	rdx, qword ptr [r14 + 0x18]
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, rbx
	sub	rcx, rdx
	jb	.label_198
	cmp	rax, 1
	jne	.label_198
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [rax + 0x18], rcx
	mov	qword ptr [r14 + 0x18], rbx
	mov	eax, 1
	mov	rdx, rbx
	jmp	.label_201
.label_198:
	cmp	rax, 2
	jae	.label_206
.label_201:
	cmp	byte ptr [rip + translating],  0
	je	.label_209
	mov	eax, dword ptr [r14 + 0x30]
	test	al, al
	jne	.label_210
	test	eax, 0xff0000
	jne	.label_161
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [r14 + 8]
	movzx	eax, word ptr [r14 + 0x30]
	cmp	eax, 0x100
	jae	.label_218
	mov	rcx, rdx
	mov	rax, rdi
	jmp	.label_31
.label_209:
	test	rax, rax
	je	.label_48
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	jmp	.label_36
.label_218:
	mov	qword ptr [rsp + 0x68], rdi
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0x58], rsi
	mov	dword ptr [rsp + 0x4c], r12d
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x50], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	pxor	xmm8, xmm8
	xor	ecx, ecx
	movdqa	xmm9, xmmword ptr [rip + label_85]
	pand	xmm9, xmmword ptr [rip + label_86]
	pxor	xmm1, xmm1
	pxor	xmm0, xmm0
	pxor	xmm5, xmm5
	pxor	xmm4, xmm4
	nop	word ptr cs:[rax + rax]
.label_96:
	movd	xmm6, dword ptr [rax + rcx*2]
	punpcklwd	xmm6, xmm8
	punpckldq	xmm6, xmm8
	movd	xmm7, dword ptr [rax + rcx*2 + 4]
	punpcklwd	xmm7, xmm8
	punpckldq	xmm7, xmm8
	movdqa	xmm2, xmm6
	psrlq	xmm2, 8
	movdqa	xmm3, xmm7
	psrlq	xmm3, 8
	pand	xmm2, xmm9
	pand	xmm3, xmm9
	paddq	xmm1, xmm2
	paddq	xmm0, xmm3
	psrlq	xmm6, 9
	psrlq	xmm7, 9
	pand	xmm6, xmm9
	pand	xmm7, xmm9
	paddq	xmm5, xmm6
	paddq	xmm4, xmm7
	add	rcx, 4
	cmp	rcx, 0x100
	jne	.label_96
	paddq	xmm4, xmm5
	pshufd	xmm2, xmm4, 0x4e
	paddq	xmm2, xmm4
	movq	r15, xmm2
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r12, xmm1
	mov	qword ptr [rsp + 0x20], -2
	mov	qword ptr [r14 + 0x10], -2
	mov	r13b, 1
	mov	bl, 1
	nop	word ptr cs:[rax + rax]
.label_128:
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsp + 0x70]
	call	get_next
	mov	ebp, eax
	mov	rdi, r14
	lea	rsi, [rsp + 0xc]
	call	get_next
	mov	ecx, dword ptr [rsp + 0xc]
	test	r13b, r13b
	je	.label_158
	cmp	ecx, 2
	je	.label_158
	test	bl, bl
	je	.label_89
	cmp	dword ptr [rsp + 0x70], 2
	je	.label_89
.label_158:
	cmp	ecx, 2
	jne	.label_180
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rsp + 0x20]
	jmp	.label_181
	nop	
.label_180:
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x20], -1
	mov	rdx, qword ptr [r14 + 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 8], rdx
	mov	qword ptr [r14 + 0x10], -1
	cmp	dword ptr [rsp + 0x70], 1
	mov	rdx, r15
	cmove	rdx, r12
	mov	rsi, qword ptr [rsp + 0x28]
	neg	rdx
	lea	rdx, [rsi + rdx + 1]
	mov	qword ptr [rsp + 0x28], rdx
	cmp	ecx, 1
	mov	rcx, r15
	cmove	rcx, r12
	mov	edx, 1
	sub	rdx, rcx
	add	qword ptr [r14 + 0x18], rdx
	mov	rdx, -1
	mov	rcx, -1
.label_181:
	cmp	rdx, -1
	sete	bl
	cmp	rcx, -1
	sete	r13b
	cmp	ebp, -1
	je	.label_217
	cmp	eax, -1
	jne	.label_128
.label_217:
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rsp + 0x68], rax
	jb	.label_32
	mov	rcx, qword ptr [r14 + 0x18]
	cmp	qword ptr [rsp + 0x60], rcx
	jb	.label_32
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rsi, qword ptr [rsp + 0x58]
	mov	qword ptr [r14 + 8], rsi
	mov	r12d, dword ptr [rsp + 0x4c]
.label_31:
	mov	rbx, rax
	sub	rbx, rcx
	jbe	.label_50
	mov	dl, byte ptr [rip + truncate_set1]
	test	dl, dl
	jne	.label_50
	test	rcx, rcx
	je	.label_88
	cmp	byte ptr [rip + translating],  0
	je	.label_90
	mov	eax, dword ptr [rsi]
	cmp	rax, 4
	ja	.label_92
	jmp	qword ptr [(rax * 8) + label_94]
.label_812:
	add	rsi, 0x10
	jmp	.label_123
.label_813:
	add	rsi, 0x11
.label_123:
	mov	bpl, byte ptr [rsi]
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 4
	mov	byte ptr [rax + 0x10], bpl
	mov	qword ptr [rax + 0x18], rbx
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_189
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r14 + 0x18], rax
	mov	rcx, rax
.label_50:
	cmp	byte ptr [rip + complement],  1
	jne	.label_48
	cmp	byte ptr [rsp + 0x41], 0
	je	.label_48
	cmp	rcx, rax
	jne	.label_113
	mov	qword ptr [r14 + 0x10], -2
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	mov	ebx, eax
	cmp	ebx, -1
	je	.label_113
	nop	dword ptr [rax]
.label_125:
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	je	.label_48
	cmp	eax, ebx
	je	.label_125
.label_113:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	jmp	.label_36
.label_48:
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	call	fadvise
	mov	al, byte ptr [rip + squeeze_repeats]
	cmp	r12d, 1
	jne	.label_135
	test	al, 1
	je	.label_135
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_162
	lea	rbx, [rsp + 0x10]
	nop	
.label_184:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_184
.label_162:
	test	bpl, 1
	je	.label_187
	movdqa	xmm0, xmmword ptr [rip + label_141]
	movdqa	xmm1, xmmword ptr [rip + in_squeeze_set]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_165]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + in_squeeze_set],  xmm1
	movdqa	xmmword ptr [rip + label_165],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_166]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_167]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_166],  xmm1
	movdqa	xmmword ptr [rip + label_167],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_168]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_169]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_168],  xmm1
	movdqa	xmmword ptr [rip + label_169],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_170]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_171]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_170],  xmm1
	movdqa	xmmword ptr [rip + label_171],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_172]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_173]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_172],  xmm1
	movdqa	xmmword ptr [rip + label_173],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_174]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_175]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_174],  xmm1
	movdqa	xmmword ptr [rip + label_175],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_176]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_177]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_176],  xmm1
	movdqa	xmmword ptr [rip + label_177],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_178]
	pxor	xmm1, xmm0
	pxor	xmm0, xmmword ptr [rip + label_179]
	movdqa	xmmword ptr [rip + label_178],  xmm1
	movdqa	xmmword ptr [rip + label_179],  xmm0
.label_187:
	mov	edi, OFFSET FLAT:plain_read
	jmp	.label_105
.label_135:
	mov	cl, byte ptr [rip + delete]
	cmp	r12d, 1
	jne	.label_115
	test	cl, 1
	je	.label_115
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_129
	lea	rbx, [rsp + 0x10]
	nop	
.label_137:
	cdqe	
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_137
.label_129:
	test	bpl, 1
	je	.label_106
	movdqa	xmm0, xmmword ptr [rip + label_141]
	movdqa	xmm1, xmmword ptr [rip + in_delete_set]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_142]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + in_delete_set],  xmm1
	movdqa	xmmword ptr [rip + label_142],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_143]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_144]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_143],  xmm1
	movdqa	xmmword ptr [rip + label_144],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_145]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_146]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_145],  xmm1
	movdqa	xmmword ptr [rip + label_146],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_147]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_148]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_147],  xmm1
	movdqa	xmmword ptr [rip + label_148],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_149]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_150]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_149],  xmm1
	movdqa	xmmword ptr [rip + label_150],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_151]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_152]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_151],  xmm1
	movdqa	xmmword ptr [rip + label_152],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_153]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_154]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_153],  xmm1
	movdqa	xmmword ptr [rip + label_154],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_155]
	pxor	xmm1, xmm0
	pxor	xmm0, xmmword ptr [rip + label_156]
	movdqa	xmmword ptr [rip + label_155],  xmm1
	movdqa	xmmword ptr [rip + label_156],  xmm0
	nop	word ptr cs:[rax + rax]
.label_106:
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	call	read_and_delete
	mov	rbx, rax
	test	rbx, rbx
	je	.label_47
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	je	.label_106
.label_182:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
.label_111:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_115:
	cmp	r12d, 2
	sete	dl
	and	dl, cl
	and	al, dl
	cmp	al, 1
	jne	.label_122
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_132
	lea	rbx, [rsp + 0x10]
	nop	
.label_194:
	cdqe	
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_194
.label_132:
	test	bpl, 1
	je	.label_202
	movdqa	xmm0, xmmword ptr [rip + label_141]
	movdqa	xmm1, xmmword ptr [rip + in_delete_set]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_142]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + in_delete_set],  xmm1
	movdqa	xmmword ptr [rip + label_142],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_143]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_144]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_143],  xmm1
	movdqa	xmmword ptr [rip + label_144],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_145]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_146]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_145],  xmm1
	movdqa	xmmword ptr [rip + label_146],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_147]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_148]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_147],  xmm1
	movdqa	xmmword ptr [rip + label_148],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_149]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_150]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_149],  xmm1
	movdqa	xmmword ptr [rip + label_150],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_151]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_152]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_151],  xmm1
	movdqa	xmmword ptr [rip + label_152],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_153]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_154]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_153],  xmm1
	movdqa	xmmword ptr [rip + label_154],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_155]
	pxor	xmm1, xmm0
	pxor	xmm0, xmmword ptr [rip + label_156]
	movdqa	xmmword ptr [rip + label_155],  xmm1
	movdqa	xmmword ptr [rip + label_156],  xmm0
.label_202:
	mov	qword ptr [r14 + 0x10], -2
	jmp	.label_99
.label_42:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
.label_99:
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	jne	.label_42
	mov	edi, OFFSET FLAT:read_and_delete
	jmp	.label_105
.label_122:
	cmp	byte ptr [rip + translating],  0
	je	.label_47
	cmp	byte ptr [rip + complement],  1
	jne	.label_109
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_121
	lea	rbx, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_127:
	cdqe	
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_127
.label_121:
	mov	qword ptr [r14 + 0x10], -2
	movaps	xmm0, xmmword ptr [rip + label_51]
	movaps	xmmword ptr [rip + xlate],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_52]
	movaps	xmmword ptr [rip + label_53],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_54]
	movaps	xmmword ptr [rip + label_55],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_56]
	movaps	xmmword ptr [rip + label_57],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_58]
	movaps	xmmword ptr [rip + label_59],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_60]
	movaps	xmmword ptr [rip + label_61],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_62]
	movaps	xmmword ptr [rip + label_63],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_64]
	movaps	xmmword ptr [rip + label_65],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_66]
	movaps	xmmword ptr [rip + label_67],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_68]
	movaps	xmmword ptr [rip + label_69],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_70]
	movaps	xmmword ptr [rip + label_71],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_72]
	movaps	xmmword ptr [rip + label_73],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_74]
	movaps	xmmword ptr [rip + label_75],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_76]
	movaps	xmmword ptr [rip + label_77],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_78]
	movaps	xmmword ptr [rip + label_79],  xmm0
	movdqa	xmm0, xmmword ptr [rip + label_80]
	movdqa	xmmword ptr [rip + label_81],  xmm0
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_41:
	cmp	byte ptr [rbx + in_delete_set],  0
	jne	.label_34
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	je	.label_38
	mov	byte ptr [rbx + xlate],  al
.label_34:
	inc	rbx
	cmp	rbx, 0x100
	jl	.label_41
	jmp	.label_33
.label_109:
	movaps	xmm0, xmmword ptr [rip + label_51]
	movaps	xmmword ptr [rip + xlate],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_52]
	movaps	xmmword ptr [rip + label_53],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_54]
	movaps	xmmword ptr [rip + label_55],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_56]
	movaps	xmmword ptr [rip + label_57],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_58]
	movaps	xmmword ptr [rip + label_59],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_60]
	movaps	xmmword ptr [rip + label_61],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_62]
	movaps	xmmword ptr [rip + label_63],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_64]
	movaps	xmmword ptr [rip + label_65],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_66]
	movaps	xmmword ptr [rip + label_67],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_68]
	movaps	xmmword ptr [rip + label_69],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_70]
	movaps	xmmword ptr [rip + label_71],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_72]
	movaps	xmmword ptr [rip + label_73],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_74]
	movaps	xmmword ptr [rip + label_75],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_76]
	movaps	xmmword ptr [rip + label_77],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_78]
	movaps	xmmword ptr [rip + label_79],  xmm0
	movdqa	xmm0, xmmword ptr [rip + label_80]
	movdqa	xmmword ptr [rip + label_81],  xmm0
	mov	qword ptr [rsp + 0x20], -2
	mov	qword ptr [r14 + 0x10], -2
	lea	r13, [rsp + 0xc]
	jmp	.label_82
	nop	dword ptr [rax]
.label_208:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x20], -1
	mov	rax, qword ptr [r14 + 8]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
.label_82:
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsp + 0x70]
	call	get_next
	mov	ebp, eax
	mov	rdi, r14
	mov	rsi, r13
	call	get_next
	mov	ecx, dword ptr [rsp + 0x70]
	mov	r12d, dword ptr [rsp + 0xc]
	test	ecx, ecx
	jne	.label_186
	cmp	r12d, 1
	jne	.label_186
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_207:
	test	byte ptr [rbp + r15*2 + 1], 2
	je	.label_214
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + r15*4]
	mov	byte ptr [r15 + xlate],  al
.label_214:
	inc	r15
	cmp	r15, 0x100
	jne	.label_207
	jmp	.label_114
	nop	word ptr [rax + rax]
.label_186:
	cmp	ecx, 1
	jne	.label_213
	test	r12d, r12d
	jne	.label_213
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_43:
	test	byte ptr [rbp + rbx*2 + 1], 1
	je	.label_29
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + rbx*4]
	mov	byte ptr [rbx + xlate],  al
.label_29:
	inc	rbx
	cmp	rbx, 0x100
	jne	.label_43
	jmp	.label_114
	nop	word ptr [rax + rax]
.label_213:
	cmp	ebp, -1
	je	.label_40
	cmp	eax, -1
	je	.label_40
	movsxd	rcx, ebp
	mov	byte ptr [rcx + xlate],  al
.label_114:
	cmp	r12d, 2
	je	.label_82
	jmp	.label_208
.label_40:
	cmp	ebp, -1
	je	.label_33
	mov	al, byte ptr [rip + truncate_set1]
	test	al, al
	jne	.label_33
	mov	edi, OFFSET FLAT:label_84
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x762
	mov	ecx, OFFSET FLAT:label_46
	call	__assert_fail
.label_38:
	mov	al, byte ptr [rip + truncate_set1]
	test	al, al
	je	.label_95
.label_33:
	mov	al, byte ptr [rip + squeeze_repeats]
	test	al, al
	je	.label_97
	mov	qword ptr [r14 + 0x10], -2
	jmp	.label_98
	nop	dword ptr [rax]
.label_83:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
.label_98:
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	jne	.label_83
	mov	edi, OFFSET FLAT:read_and_xlate
.label_105:
	call	squeeze_filter
.label_47:
	xor	ebp, ebp
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_107
.label_37:
	mov	eax, ebp
	add	rsp, 0x1a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_97:
	xor	edi, edi
	mov	esi, OFFSET FLAT:io_buf
	mov	edx, 0x2000
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	je	.label_47
	cmp	rbp, -1
	je	.label_30
	lea	rcx, [rbp - 1]
	mov	eax, ebp
	and	eax, 3
	cmp	rcx, 3
	mov	ecx, 0
	jb	.label_124
	mov	rdx, rbp
	sub	rdx, rax
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_120:
	movzx	esi, byte ptr [rcx + io_buf]
	movzx	ebx, byte ptr [rsi + xlate]
	mov	byte ptr [rcx + io_buf],  bl
	movzx	esi, byte ptr [rcx + label_117]
	movzx	ebx, byte ptr [rsi + xlate]
	mov	byte ptr [rcx + label_117],  bl
	movzx	esi, byte ptr [rcx + label_118]
	movzx	ebx, byte ptr [rsi + xlate]
	mov	byte ptr [rcx + label_118],  bl
	movzx	esi, byte ptr [rcx + label_119]
	movzx	ebx, byte ptr [rsi + xlate]
	mov	byte ptr [rcx + label_119],  bl
	add	rcx, 4
	cmp	rdx, rcx
	jne	.label_120
.label_124:
	test	rax, rax
	je	.label_188
	lea	rcx, qword ptr [rcx + io_buf]
	neg	rax
	nop	dword ptr [rax + rax]
.label_199:
	movzx	edx, byte ptr [rcx]
	movzx	edx, byte ptr [rdx + xlate]
	mov	byte ptr [rcx], dl
	inc	rcx
	inc	rax
	jne	.label_199
.label_188:
	test	rbp, rbp
	je	.label_47
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 1
	mov	rdx, rbp
	call	fwrite_unlocked
	cmp	rax, rbp
	je	.label_97
	jmp	.label_182
.label_190:
	cmp	eax, 0xffffff7d
	je	.label_215
	cmp	eax, 0xffffff7e
	jne	.label_157
	xor	edi, edi
	call	usage
.label_215:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_20
	mov	edx, OFFSET FLAT:label_11
	mov	r8d, OFFSET FLAT:label_219
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_157:
	mov	edi, 1
	call	usage
.label_89:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	jmp	.label_36
.label_204:
	xor	edi, edi
	test	r12d, r12d
	jne	.label_49
	mov	esi, OFFSET FLAT:label_87
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
.label_216:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	movsxd	rcx, ebx
	add	rcx, rax
	mov	rdi, qword ptr [r15 + rcx*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	cmp	r12d, 2
	jne	.label_103
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_108
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_103:
	mov	edi, 1
	call	usage
.label_49:
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [r15 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	rbx, qword ptr [rip + stderr]
	mov	al, byte ptr [rip + squeeze_repeats]
	mov	ecx, OFFSET FLAT:label_130
	mov	esi, OFFSET FLAT:label_131
	test	al, al
	cmovne	rsi, rcx
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_108
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_183:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	jmp	.label_36
.label_107:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	jmp	.label_111
.label_210:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	jmp	.label_36
.label_161:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	jmp	.label_36
.label_32:
	mov	edi, OFFSET FLAT:label_196
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x4c5
	mov	ecx, OFFSET FLAT:label_197
	call	__assert_fail
.label_206:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
	jmp	.label_36
.label_88:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	jmp	.label_36
.label_90:
	mov	edi, OFFSET FLAT:label_101
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x55e
	mov	ecx, OFFSET FLAT:label_102
	call	__assert_fail
.label_189:
	mov	edi, OFFSET FLAT:label_211
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x2cf
	mov	ecx, OFFSET FLAT:label_212
	call	__assert_fail
.label_30:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	jmp	.label_111
.label_92:
	call	abort
.label_814:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
.label_36:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_95:
	mov	edi, OFFSET FLAT:label_44
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x72d
	mov	ecx, OFFSET FLAT:label_46
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x402c50

	.globl parse_str
	.type parse_str, @function
parse_str:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	qword ptr [rsp + 0x18], rsi
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	mov	rdi, rbx
	call	xmalloc
	mov	r12, rax
	mov	esi, 1
	mov	rdi, rbx
	call	xcalloc
	mov	qword ptr [rsp + 0x30], rax
	mov	r9, rax
	xor	ebx, ebx
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 0x38], r12
	jmp	.label_247
	nop	
.label_259:
	inc	ebx
	inc	ebp
.label_247:
	mov	eax, ebp
	movzx	eax, byte ptr [r14 + rax]
	cmp	al, 0x5c
	je	.label_254
	test	al, al
	je	.label_257
	mov	ecx, ebx
	mov	byte ptr [r12 + rcx], al
	jmp	.label_259
	nop	
.label_254:
	mov	r15d, ebx
	mov	byte ptr [r9 + r15], 1
	lea	r12d, [rbp + 1]
	movsx	eax, byte ptr [r14 + r12]
	cmp	eax, 0x76
	ja	.label_261
	mov	r13b, 0x5c
	jmp	qword ptr [(rax * 8) + label_266]
.label_745:
	add	al, 0xd0
	lea	edx, [rbp + 2]
	movsx	ecx, byte ptr [r14 + rdx]
	add	ecx, -0x30
	cmp	ecx, 7
	ja	.label_261
	movzx	eax, al
	lea	r13d, [rcx + rax*8]
	add	ebp, 3
	movsx	eax, byte ptr [r14 + rbp]
	add	eax, -0x30
	cmp	eax, 7
	ja	.label_272
	movzx	ecx, r13b
	lea	eax, [rax + rcx*8]
	cmp	eax, 0xff
	jg	.label_277
	mov	ebp, edx
	mov	r13b, al
	jmp	.label_225
.label_261:
	mov	r13b, al
	jmp	.label_225
.label_272:
	mov	ebp, r12d
	jmp	.label_225
.label_744:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_285
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r9, qword ptr [rsp + 0x10]
	mov	byte ptr [r9 + r15], 0
	dec	ebp
	jmp	.label_225
.label_747:
	mov	r13b, 8
	jmp	.label_225
.label_748:
	mov	r13b, 0xc
	jmp	.label_225
.label_277:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
	mov	qword ptr [rsp + 0x28], rdx
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	movsx	ecx, byte ptr [r14 + r12]
	mov	rax, qword ptr [rsp + 0x28]
	movsx	r8d, byte ptr [r14 + rax]
	movsx	r9d, byte ptr [r14 + rbp]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	eax, 0
	push	r9
	push	r8
	push	rcx
	call	error
	mov	r9, qword ptr [rsp + 0x30]
	add	rsp, 0x20
	mov	ebp, r12d
	jmp	.label_225
.label_746:
	mov	r13b, 7
	jmp	.label_225
.label_750:
	mov	r13b, 0xd
	jmp	.label_225
.label_751:
	mov	r13b, 9
	jmp	.label_225
.label_752:
	mov	r13b, 0xb
	jmp	.label_225
.label_749:
	mov	r13b, 0xa
	nop	word ptr cs:[rax + rax]
.label_225:
	inc	ebp
	mov	r12, qword ptr [rsp + 0x38]
	mov	byte ptr [r12 + r15], r13b
	jmp	.label_259
.label_257:
	mov	eax, ebx
	mov	qword ptr [rsp + 0x20], rax
	xor	r14d, r14d
	cmp	ebx, 3
	jb	.label_302
	mov	rax, qword ptr [rsp + 0x20]
	dec	rax
	mov	qword ptr [rsp + 0x28], rax
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x58], rax
	lea	rax, [r12 + 3]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 0x30]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x50], rcx
	add	rax, 3
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	r15d, 2
.label_307:
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_299:
	movzx	r13d, byte ptr [r12 + rbx]
	cmp	r13, 0x5b
	jne	.label_239
	cmp	byte ptr [r9 + rbx], 0
	jne	.label_239
	mov	r14b, byte ptr [r12 + rbx + 1]
	cmp	r14b, 0x3d
	je	.label_241
	cmp	r14b, 0x3a
	jne	.label_244
.label_241:
	cmp	byte ptr [r9 + rbx + 1], 0
	jne	.label_244
	cmp	qword ptr [rsp + 0x28], r15
	jbe	.label_244
	lea	r8, [r12 + rbx]
	mov	rax, qword ptr [rsp + 0x50]
	lea	rax, [rax + r15]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rcx, [rcx + r15]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_264:
	cmp	byte ptr [rcx + rbp - 1], r14b
	jne	.label_236
	cmp	byte ptr [rcx + rbp], 0x5d
	jne	.label_236
	cmp	byte ptr [rax + rbp - 1], 0
	jne	.label_236
	cmp	byte ptr [rax + rbp], 0
	je	.label_262
	nop	
.label_236:
	lea	rdx, [r15 + rbp + 1]
	inc	rbp
	cmp	rdx, qword ptr [rsp + 0x28]
	jb	.label_264
.label_244:
	lea	rax, [rbx + 2]
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rax, rcx
	jae	.label_268
	cmp	byte ptr [r12 + rax], 0x2a
	jne	.label_239
	cmp	byte ptr [r9 + rax], 0
	jne	.label_239
	lea	r8, [rbx + 3]
	cmp	r8, rcx
	jae	.label_239
	mov	rax, qword ptr [rsp + 0x40]
	lea	rax, [rax + rbx]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdx, [rdx + rbx]
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_284:
	cmp	byte ptr [rdx + rbp], 0
	jne	.label_239
	cmp	byte ptr [rax + rbp], 0x5d
	je	.label_281
	lea	rsi, [rbx + rbp + 4]
	inc	rbp
	cmp	rsi, rcx
	jb	.label_284
	nop	dword ptr [rax]
.label_239:
	lea	r14, [rbx + 1]
	cmp	byte ptr [r12 + rbx + 1], 0x2d
	jne	.label_286
	cmp	byte ptr [r9 + r14], 0
	je	.label_289
.label_286:
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 0
	mov	byte ptr [rax + 0x10], r13b
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_231
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
.label_311:
	mov	r9, qword ptr [rsp + 0x10]
.label_234:
	lea	r15, [r14 + 2]
	cmp	r15, qword ptr [rsp + 0x20]
	mov	rbx, r14
	jb	.label_299
	jmp	.label_302
.label_289:
	mov	r14b, byte ptr [r12 + rbx + 2]
	movzx	ebp, r14b
	cmp	bpl, r13b
	jb	.label_303
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 1
	mov	byte ptr [rax + 0x10], r13b
	mov	byte ptr [rax + 0x11], r14b
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_248
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
	add	rbx, 3
	mov	r14, rbx
	jmp	.label_311
.label_262:
	test	rbp, rbp
	je	.label_314
	add	r8, 2
	cmp	r14b, 0x3a
	jne	.label_223
	mov	esi, OFFSET FLAT:label_222
	mov	qword ptr [rsp + 8], r8
	mov	rdi, r8
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_227
	xor	r12d, r12d
	test	eax, eax
	je	.label_230
.label_227:
	mov	esi, OFFSET FLAT:label_232
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_235
	mov	r12d, 1
	test	eax, eax
	je	.label_230
.label_235:
	mov	esi, OFFSET FLAT:label_237
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_242
	mov	r12d, 2
	test	eax, eax
	je	.label_230
.label_242:
	mov	esi, OFFSET FLAT:label_278
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_252
	mov	r12d, 3
	test	eax, eax
	je	.label_230
.label_252:
	mov	esi, OFFSET FLAT:label_256
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_260
	mov	r12d, 4
	test	eax, eax
	je	.label_230
.label_260:
	mov	esi, OFFSET FLAT:label_263
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_269
	mov	r12d, 5
	test	eax, eax
	je	.label_230
.label_269:
	mov	esi, OFFSET FLAT:label_273
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_276
	mov	r12d, 6
	test	eax, eax
	je	.label_230
.label_276:
	mov	esi, OFFSET FLAT:label_253
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_283
	mov	r12d, 7
	test	eax, eax
	je	.label_230
.label_283:
	mov	esi, OFFSET FLAT:label_287
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_290
	mov	r12d, 8
	test	eax, eax
	je	.label_230
.label_290:
	mov	esi, OFFSET FLAT:label_293
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_296
	mov	r12d, 9
	test	eax, eax
	je	.label_230
.label_296:
	mov	esi, OFFSET FLAT:label_297
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_300
	mov	r12d, 0xa
	test	eax, eax
	je	.label_230
.label_300:
	mov	esi, OFFSET FLAT:label_304
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 6
	jne	.label_308
	mov	r12d, 0xb
	test	eax, eax
	jne	.label_308
.label_230:
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 2
	mov	dword ptr [rax + 0x10], r12d
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	je	.label_310
	mov	qword ptr [rcx + 8], rax
	mov	r12, qword ptr [rsp + 0x38]
	jmp	.label_315
.label_223:
	cmp	rbp, 1
	jne	.label_221
	mov	edi, 0x20
	mov	rbx, r8
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 3
	mov	cl, byte ptr [rbx]
	mov	byte ptr [rax + 0x10], cl
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	je	.label_275
	mov	qword ptr [rcx + 8], rax
.label_315:
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx + 8], rax
	lea	r14, [r15 + rbp + 2]
	jmp	.label_234
.label_221:
	cmp	byte ptr [r12 + r15], 0x2a
	jne	.label_238
	cmp	byte ptr [r9 + r15], 0
	jne	.label_238
	inc	r15
.label_250:
	mov	rax, r15
	cmp	rax, qword ptr [rsp + 0x20]
	jae	.label_238
	movzx	ecx, byte ptr [r12 + rax]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_246
	lea	r15, [rax + 1]
	cmp	byte ptr [r9 + rax], 0
	je	.label_250
.label_246:
	cmp	cl, 0x5d
	jne	.label_238
	cmp	byte ptr [r9 + rax], 0
	je	.label_244
	jmp	.label_238
.label_308:
	mov	r12, qword ptr [rsp + 0x38]
	cmp	byte ptr [r12 + r15], 0x2a
	mov	r9, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	jne	.label_258
	cmp	byte ptr [r9 + r15], 0
	jne	.label_258
	inc	r15
.label_274:
	mov	rax, r15
	cmp	rax, qword ptr [rsp + 0x20]
	jae	.label_258
	movzx	ecx, byte ptr [r12 + rax]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_271
	lea	r15, [rax + 1]
	cmp	byte ptr [r9 + rax], 0
	je	.label_274
.label_271:
	cmp	cl, 0x5d
	jne	.label_258
	cmp	byte ptr [r9 + rax], 0
	je	.label_244
	jmp	.label_258
.label_281:
	test	rbp, rbp
	je	.label_280
	lea	r13, [r12 + r8]
	xor	ecx, ecx
	cmp	byte ptr [r12 + r8], 0x30
	setne	cl
	lea	edx, [rcx + rcx + 8]
	xor	r8d, r8d
	mov	rdi, r13
	lea	rsi, [rsp + 0x60]
	lea	rcx, [rsp + 0x48]
	call	xstrtoumax
	test	eax, eax
	jne	.label_288
	mov	r15, qword ptr [rsp + 0x48]
	cmp	r15, -1
	je	.label_288
	mov	rax, qword ptr [rsp + 0x40]
	sub	rax, qword ptr [rsp + 0x60]
	add	rax, rbx
	add	rax, rbp
	je	.label_292
	jmp	.label_288
.label_280:
	mov	qword ptr [rsp + 0x48], 0
	xor	r15d, r15d
.label_292:
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 4
	mov	byte ptr [rax + 0x10], r14b
	mov	qword ptr [rax + 0x18], r15
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_298
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
	lea	rax, [rbx + rbp + 4]
	lea	r15, [rbx + rbp + 6]
	cmp	r15, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	jb	.label_307
	lea	r14, [rbx + rbp + 4]
.label_302:
	mov	r13b, 1
	mov	r15, qword ptr [rsp + 0x20]
	cmp	r14, r15
	jae	.label_279
	mov	rbp, qword ptr [rsp + 0x18]
	nop	
.label_226:
	movzx	ebx, byte ptr [r12 + r14]
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 0
	mov	byte ptr [rax + 0x10], bl
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	je	.label_231
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp + 8], rax
	inc	r14
	cmp	r14, r15
	jb	.label_226
.label_279:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	eax, r13d
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_303:
	mov	edi, 5
	call	xmalloc
	mov	rbx, rax
	call	__ctype_b_loc
	mov	r15, rax
	mov	rax, qword ptr [r15]
	test	byte ptr [rax + r13*2 + 1], 0x40
	mov	qword ptr [rsp + 0x28], rbx
	jne	.label_240
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_245
	xor	eax, eax
	mov	rdi, rbx
	mov	r8d, r13d
	call	__sprintf_chk
	jmp	.label_251
.label_240:
	mov	byte ptr [rbx], r13b
	mov	byte ptr [rbx + 1], 0
.label_251:
	mov	edi, 5
	call	xmalloc
	mov	rbx, rax
	mov	rax, qword ptr [r15]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	jne	.label_255
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_245
	xor	eax, eax
	mov	rdi, rbx
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_265
.label_255:
	mov	byte ptr [rbx], r14b
	mov	byte ptr [rbx + 1], 0
.label_265:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	mov	rdi, rbp
	call	free
.label_301:
	mov	rdi, rbx
	call	free
	jmp	.label_279
.label_238:
	mov	rdi, r8
	mov	rsi, rbp
	call	make_printable_str
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_282
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
.label_224:
	call	error
	mov	rdi, rbx
	call	free
	jmp	.label_291
.label_288:
	mov	rdi, r13
	mov	rsi, rbp
	call	make_printable_str
	mov	rbx, rax
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
	jmp	.label_301
.label_314:
	xor	edi, edi
	cmp	r14b, 0x3a
	jne	.label_309
	mov	esi, OFFSET FLAT:label_305
	jmp	.label_306
.label_309:
	mov	esi, OFFSET FLAT:label_312
.label_306:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_291:
	xor	r13d, r13d
	jmp	.label_279
.label_231:
	mov	edi, OFFSET FLAT:label_211
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x287
	mov	ecx, OFFSET FLAT:label_270
	call	__assert_fail
.label_258:
	mov	rsi, rbp
	call	make_printable_str
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	jmp	.label_224
.label_268:
	mov	edi, OFFSET FLAT:label_228
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x30e
	mov	ecx, OFFSET FLAT:label_229
	call	__assert_fail
.label_248:
	mov	edi, OFFSET FLAT:label_211
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x2a5
	mov	ecx, OFFSET FLAT:label_233
	call	__assert_fail
.label_298:
	mov	edi, OFFSET FLAT:label_211
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x2cf
	mov	ecx, OFFSET FLAT:label_212
	call	__assert_fail
.label_310:
	mov	edi, OFFSET FLAT:label_211
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x2bb
	mov	ecx, OFFSET FLAT:label_243
	call	__assert_fail
.label_275:
	mov	edi, OFFSET FLAT:label_211
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x2e5
	mov	ecx, OFFSET FLAT:label_249
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036b0

	.globl squeeze_filter
	.type squeeze_filter, @function
squeeze_filter:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	mov	r15d, 0x7fffffff
	xor	ebx, ebx
	xor	r12d, r12d
	jmp	.label_318
.label_326:
	mov	r15d, 0x7fffffff
	nop	
.label_318:
	cmp	rbx, r12
	mov	rax, rbx
	jb	.label_319
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	call	r14
	mov	r12, rax
	test	r12, r12
	mov	eax, 0
	je	.label_325
.label_319:
	cmp	r15d, 0x7fffffff
	jne	.label_328
	mov	r15, r12
	sub	r15, rax
	mov	rbx, rax
	jbe	.label_316
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_323:
	movzx	ecx, byte ptr [rbx + io_buf]
	cmp	byte ptr [rcx + in_squeeze_set],  0
	jne	.label_316
	add	rbx, 2
	cmp	rbx, r12
	jb	.label_323
.label_316:
	cmp	rbx, r12
	jne	.label_329
	lea	rbx, [r12 - 1]
	movzx	ecx, byte ptr [r12 + label_327]
	cmp	byte ptr [rcx + in_squeeze_set],  0
	cmove	rbx, r12
.label_329:
	cmp	rbx, r12
	jae	.label_320
	movsx	ebp, byte ptr [rbx + io_buf]
	mov	rcx, rbx
	sub	rcx, rax
	lea	r15, [rcx + 1]
	test	rbx, rbx
	je	.label_322
	cmp	byte ptr [rbx + label_327],  bpl
	cmove	r15, rcx
.label_322:
	inc	rbx
	jmp	.label_330
	nop	word ptr cs:[rax + rax]
.label_328:
	mov	ebp, r15d
	mov	rbx, rax
	jmp	.label_324
	nop	dword ptr [rax + rax]
.label_320:
	mov	ebp, 0x7fffffff
.label_330:
	test	r15, r15
	je	.label_321
	lea	rdi, qword ptr [rax + io_buf]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, r15
	call	fwrite_unlocked
	cmp	rax, r15
	jne	.label_317
.label_321:
	cmp	ebp, 0x7fffffff
	mov	r15d, 0x7fffffff
	je	.label_318
.label_324:
	cmp	rbx, r12
	mov	r15d, ebp
	jae	.label_318
	nop	dword ptr [rax + rax]
.label_331:
	movsx	eax, byte ptr [rbx + io_buf]
	cmp	eax, ebp
	jne	.label_326
	inc	rbx
	cmp	rbx, r12
	jb	.label_331
	mov	r15d, ebp
	jmp	.label_318
.label_325:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_317:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403850

	.globl plain_read
	.type plain_read, @function
plain_read:
	push	rbx
	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	call	safe_read
	cmp	rax, -1
	je	.label_332
	pop	rbx
	ret	
.label_332:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038a0

	.globl read_and_delete
	.type read_and_delete, @function
read_and_delete:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
.label_339:
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	call	safe_read
	test	rax, rax
	mov	ecx, 0
	je	.label_338
	cmp	rax, -1
	je	.label_333
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_340:
	movzx	edx, byte ptr [rbx + rcx]
	cmp	byte ptr [rdx + in_delete_set],  0
	jne	.label_336
	inc	rcx
	cmp	rcx, rax
	jb	.label_340
.label_336:
	mov	rsi, rcx
	jmp	.label_334
.label_337:
	mov	byte ptr [rbx + rcx], dil
	inc	rcx
	mov	rsi, rdx
	nop	word ptr cs:[rax + rax]
.label_334:
	lea	rdx, [rsi + 1]
	cmp	rdx, rax
	jae	.label_335
	movzx	edi, byte ptr [rbx + rsi + 1]
	cmp	byte ptr [rdi + in_delete_set],  0
	mov	rsi, rdx
	jne	.label_334
	jmp	.label_337
	nop	dword ptr [rax]
.label_335:
	test	rcx, rcx
	je	.label_339
.label_338:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_333:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403960

	.globl get_next
	.type get_next, @function
get_next:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	jmp	.label_361
.label_363:
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
	nop	dword ptr [rax]
.label_361:
	test	rsi, rsi
	je	.label_341
	mov	dword ptr [rsi], 2
.label_341:
	mov	rax, qword ptr [r14 + 0x10]
	cmp	rax, -2
	jne	.label_344
	mov	rax, qword ptr [r14]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], r15
	mov	qword ptr [r14 + 0x10], -1
	mov	rax, -1
	jmp	.label_347
	nop	word ptr cs:[rax + rax]
.label_344:
	mov	r15, qword ptr [r14 + 8]
.label_347:
	mov	ebx, 0xffffffff
	test	r15, r15
	je	.label_348
	mov	ecx, dword ptr [r15]
	cmp	rcx, 4
	ja	.label_359
	jmp	qword ptr [(rcx * 8) + label_360]
.label_688:
	mov	rcx, qword ptr [r15 + 0x18]
	test	rcx, rcx
	je	.label_363
	cmp	rax, -1
	jne	.label_351
	mov	qword ptr [r14 + 0x10], 0
	xor	eax, eax
.label_351:
	inc	rax
	mov	qword ptr [r14 + 0x10], rax
	movzx	ebx, byte ptr [r15 + 0x10]
	cmp	rax, rcx
	je	.label_342
	jmp	.label_348
.label_685:
	movzx	ebx, byte ptr [r15 + 0x10]
	mov	qword ptr [r14 + 0x10], -1
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	jmp	.label_348
.label_686:
	cmp	rax, -1
	je	.label_352
	inc	rax
	mov	cl, byte ptr [r15 + 0x11]
	mov	rbx, rax
	jmp	.label_355
.label_687:
	test	rsi, rsi
	je	.label_357
	mov	eax, dword ptr [r15 + 0x10]
	cmp	eax, 0xa
	je	.label_358
	cmp	eax, 6
	jne	.label_357
	mov	dword ptr [rsi], 0
	jmp	.label_357
.label_352:
	movzx	ecx, word ptr [r15 + 0x10]
	movzx	ebx, cl
	shr	ecx, 8
.label_355:
	mov	qword ptr [r14 + 0x10], rbx
	movzx	eax, cl
	cmp	rbx, rax
	je	.label_342
	jmp	.label_348
.label_358:
	mov	dword ptr [rsi], 1
.label_357:
	mov	rbx, qword ptr [r14 + 0x10]
	cmp	rbx, -1
	jne	.label_343
	mov	ebp, dword ptr [r15 + 0x10]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_350:
	movzx	esi, bl
	mov	edi, ebp
	call	is_char_class_member
	test	al, al
	jne	.label_349
	inc	rbx
	cmp	ebx, 0x100
	jl	.label_350
	mov	edi, OFFSET FLAT:label_353
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x434
	mov	ecx, OFFSET FLAT:label_354
	call	__assert_fail
.label_349:
	mov	qword ptr [r14 + 0x10], rbx
.label_343:
	mov	r12d, dword ptr [r15 + 0x10]
	movzx	esi, bl
	mov	edi, r12d
	call	is_char_class_member
	test	al, al
	je	.label_362
	lea	eax, [rbx + 1]
	cmp	eax, 0xff
	jg	.label_342
	movsxd	rbp, eax
	nop	word ptr cs:[rax + rax]
.label_346:
	movzx	esi, bpl
	mov	edi, r12d
	call	is_char_class_member
	test	al, al
	jne	.label_345
	inc	rbp
	cmp	ebp, 0x100
	jl	.label_346
.label_342:
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
.label_348:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_345:
	mov	qword ptr [r14 + 0x10], rbp
	jmp	.label_348
.label_359:
	call	abort
.label_362:
	mov	edi, OFFSET FLAT:label_356
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x437
	mov	ecx, OFFSET FLAT:label_354
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b60

	.globl read_and_xlate
	.type read_and_xlate, @function
read_and_xlate:
	push	rbx
	mov	rax, rsi
	mov	rbx, rdi
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, rax
	call	safe_read
	test	rax, rax
	je	.label_367
	cmp	rax, -1
	je	.label_368
	lea	rcx, [rax - 1]
	mov	esi, eax
	and	esi, 3
	xor	edx, edx
	cmp	rcx, 3
	jb	.label_366
	mov	r8, rax
	sub	r8, rsi
	xor	edx, edx
.label_364:
	movzx	edi, byte ptr [rbx + rdx]
	movzx	ecx, byte ptr [rdi + xlate]
	mov	byte ptr [rbx + rdx], cl
	movzx	ecx, byte ptr [rbx + rdx + 1]
	movzx	ecx, byte ptr [rcx + xlate]
	mov	byte ptr [rbx + rdx + 1], cl
	movzx	ecx, byte ptr [rbx + rdx + 2]
	movzx	ecx, byte ptr [rcx + xlate]
	mov	byte ptr [rbx + rdx + 2], cl
	movzx	ecx, byte ptr [rbx + rdx + 3]
	movzx	ecx, byte ptr [rcx + xlate]
	mov	byte ptr [rbx + rdx + 3], cl
	add	rdx, 4
	cmp	r8, rdx
	jne	.label_364
.label_366:
	test	rsi, rsi
	je	.label_367
	add	rbx, rdx
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_365:
	movzx	edx, byte ptr [rbx]
	movzx	edx, byte ptr [rdx + xlate]
	mov	byte ptr [rbx], dl
	inc	rbx
	inc	rsi
	jne	.label_365
.label_367:
	pop	rbx
	ret	
.label_368:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c50

	.globl make_printable_str
	.type make_printable_str, @function
make_printable_str:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [r14 + 1]
	mov	rax, rdi
	shr	rax, 0x3d
	jne	.label_379
	shl	rdi, 2
	call	xmalloc
	mov	r15, rax
	test	r14, r14
	je	.label_376
	mov	r13, r15
	nop	word ptr [rax + rax]
.label_371:
	movzx	r12d, byte ptr [rbx]
	movzx	ebp, r12b
	mov	eax, ebp
	add	al, 0xf9
	movzx	eax, al
	cmp	al, 6
	ja	.label_375
	jmp	qword ptr [(rax * 8) + label_380]
.label_843:
	mov	esi, OFFSET FLAT:label_383
	jmp	.label_370
	nop	word ptr cs:[rax + rax]
.label_375:
	cmp	r12b, 0x5c
	mov	esi, OFFSET FLAT:label_369
	je	.label_370
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	jne	.label_373
	mov	esi, 1
	mov	edx, 5
	mov	ecx, OFFSET FLAT:label_245
	xor	eax, eax
	lea	r12, [rsp + 3]
	mov	rdi, r12
	mov	r8d, ebp
	call	__sprintf_chk
	mov	rsi, r12
	jmp	.label_370
.label_844:
	mov	esi, OFFSET FLAT:label_382
	jmp	.label_370
.label_845:
	mov	esi, OFFSET FLAT:label_381
	jmp	.label_370
.label_846:
	mov	esi, OFFSET FLAT:label_374
	jmp	.label_370
.label_847:
	mov	esi, OFFSET FLAT:label_377
	jmp	.label_370
.label_848:
	mov	esi, OFFSET FLAT:label_378
	jmp	.label_370
.label_849:
	mov	esi, OFFSET FLAT:label_372
	jmp	.label_370
.label_373:
	mov	byte ptr [rsp + 3], r12b
	mov	byte ptr [rsp + 4], 0
	lea	rsi, [rsp + 3]
	nop	dword ptr [rax]
.label_370:
	mov	rdi, r13
	call	stpcpy
	mov	r13, rax
	inc	rbx
	dec	r14
	jne	.label_371
.label_376:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_379:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x403d70

	.globl get_spec_stats
	.type get_spec_stats, @function
get_spec_stats:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	qword ptr [r14 + 0x20], 0
	mov	byte ptr [r14 + 0x32], 0
	mov	word ptr [r14 + 0x30], 0
	mov	r13, qword ptr [r14]
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	r12d, r12d
	nop	
.label_388:
	mov	r13, qword ptr [r13 + 8]
	test	r13, r13
	je	.label_390
	mov	ebx, 1
	mov	eax, dword ptr [r13]
	cmp	rax, 4
	ja	.label_395
	jmp	qword ptr [(rax * 8) + label_384]
.label_805:
	movzx	ebx, byte ptr [r13 + 0x11]
	movzx	eax, byte ptr [r13 + 0x10]
	cmp	bl, al
	jb	.label_385
	inc	rbx
	sub	rbx, rax
	jmp	.label_389
.label_806:
	mov	byte ptr [r14 + 0x31], 1
	mov	ebp, dword ptr [r13 + 0x10]
	xor	r15d, r15d
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_386:
	movzx	esi, r15b
	mov	edi, ebp
	call	is_char_class_member
	movzx	eax, al
	add	rbx, rax
	inc	r15d
	cmp	r15d, 0x100
	jne	.label_386
	cmp	ebp, 6
	je	.label_389
	cmp	ebp, 0xa
	je	.label_389
	mov	byte ptr [r14 + 0x32], 1
	jmp	.label_389
.label_807:
	mov	al, byte ptr [r13 + 0x10]
	xor	ecx, ecx
	mov	edx, eax
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_387:
	cmp	dl, 1
	adc	rbx, 0
	mov	esi, ecx
	or	esi, 1
	xor	edi, edi
	cmp	al, sil
	sete	dil
	add	rdi, rbx
	mov	esi, ecx
	or	esi, 2
	xor	ebp, ebp
	cmp	al, sil
	sete	bpl
	add	rbp, rdi
	mov	esi, ecx
	or	esi, 3
	xor	edi, edi
	cmp	al, sil
	sete	dil
	add	rdi, rbp
	mov	esi, ecx
	or	esi, 4
	xor	ebp, ebp
	cmp	al, sil
	sete	bpl
	add	rbp, rdi
	mov	esi, ecx
	or	esi, 5
	xor	edi, edi
	cmp	al, sil
	sete	dil
	add	rdi, rbp
	mov	esi, ecx
	or	esi, 6
	xor	ebp, ebp
	cmp	al, sil
	sete	bpl
	add	rbp, rdi
	mov	esi, ecx
	or	esi, 7
	xor	ebx, ebx
	cmp	al, sil
	sete	bl
	add	rbx, rbp
	add	ecx, 8
	add	dl, 0xf8
	cmp	ecx, 0x100
	jne	.label_387
	mov	byte ptr [r14 + 0x30], 1
	jmp	.label_389
.label_808:
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	jne	.label_389
	mov	qword ptr [r14 + 0x28], r13
	mov	rax, qword ptr [rsp]
	mov	rcx, rax
	inc	rcx
	mov	rax, rcx
	mov	qword ptr [rsp], rax
	mov	qword ptr [r14 + 0x20], rcx
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_389:
	add	rbx, r12
	cmp	r12, rbx
	ja	.label_391
	cmp	rbx, -1
	mov	r12, rbx
	jne	.label_388
.label_391:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_390:
	mov	qword ptr [r14 + 0x18], r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_395:
	call	abort
.label_385:
	mov	edi, OFFSET FLAT:label_392
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x4ee
	mov	ecx, OFFSET FLAT:label_393
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f80

	.globl is_char_class_member
	.type is_char_class_member, @function
is_char_class_member:
	push	rbx
	mov	eax, edi
	cmp	edi, 0xb
	ja	.label_396
	jmp	qword ptr [(rax * 8) + label_398]
.label_754:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 8
	jmp	.label_397
.label_756:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 1
	jmp	.label_397
.label_757:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 2
	jmp	.label_397
.label_758:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x800
	jmp	.label_397
.label_763:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x2000
	jmp	.label_397
.label_765:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x1000
	jmp	.label_397
.label_755:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x400
	jmp	.label_397
.label_759:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x8000
	jmp	.label_397
.label_760:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x200
	jmp	.label_397
.label_761:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x4000
	jmp	.label_397
.label_762:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 4
	jmp	.label_397
.label_764:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x100
.label_397:
	test	eax, eax
	setne	al
	pop	rbx
	ret	
.label_396:
	call	abort
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4040c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_404
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_400
	cmp	dword ptr [rbp], 0x20
	jne	.label_400
.label_404:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_402
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_400:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_401
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_399
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_402:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_401:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_403
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
	#Procedure 0x4041a0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041b0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_405
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_405:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4041d0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_409
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_411
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_406
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_411
	mov	esi, OFFSET FLAT:label_408
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_407
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_407:
	mov	rbx, r14
.label_411:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_409:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_410
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404280
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
	#Procedure 0x4042c0
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
	#Procedure 0x4042d0
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
	#Procedure 0x4042e0
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
	#Procedure 0x404320
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
	#Procedure 0x404340
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_412
	test	rdx, rdx
	je	.label_412
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_412:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404370
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
	#Procedure 0x4043f0

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
.label_457:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_455
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_459]
.label_714:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_465
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_474
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_715:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_483
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_483
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_498:
	cmp	r14, r11
	jae	.label_525
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_525:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_498
.label_483:
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
	jmp	.label_475
.label_707:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_475
.label_710:
	mov	al, 1
.label_708:
	mov	r12b, 1
.label_711:
	test	r12b, 1
	mov	cl, 1
	je	.label_512
	mov	ecx, eax
.label_512:
	mov	al, cl
.label_709:
	test	r12b, 1
	jne	.label_515
	test	r11, r11
	je	.label_414
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_414:
	mov	r14d, 1
	jmp	.label_518
.label_515:
	xor	r14d, r14d
.label_518:
	mov	ecx, OFFSET FLAT:label_474
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_475
.label_712:
	test	r12b, 1
	jne	.label_529
	test	r11, r11
	je	.label_532
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_532:
	mov	r14d, 1
	jmp	.label_533
.label_713:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_424
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_475
.label_529:
	xor	r14d, r14d
.label_533:
	mov	eax, OFFSET FLAT:label_424
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_475:
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
	jmp	.label_436
	nop	dword ptr [rax]
.label_499:
	inc	rsi
.label_436:
	cmp	rbp, -1
	je	.label_478
	cmp	rsi, rbp
	jne	.label_479
	jmp	.label_480
	nop	word ptr cs:[rax + rax]
.label_478:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_485
.label_479:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_488
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_491
	cmp	rbp, -1
	jne	.label_491
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
.label_491:
	cmp	rbx, rbp
	jbe	.label_503
.label_488:
	xor	r8d, r8d
.label_469:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_505
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_508]
.label_725:
	test	rsi, rsi
	jne	.label_434
	jmp	.label_428
	nop	word ptr cs:[rax + rax]
.label_503:
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
	jne	.label_522
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_469
	jmp	.label_431
.label_522:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_469
.label_729:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_420
	test	rsi, rsi
	jne	.label_425
	cmp	rbp, 1
	je	.label_428
	xor	r13d, r13d
	jmp	.label_423
.label_718:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_433
	cmp	byte ptr [rsp + 6], 0
	jne	.label_435
	cmp	r12d, 2
	jne	.label_440
	mov	eax, r9d
	and	al, 1
	jne	.label_440
	cmp	r14, r11
	jae	.label_444
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_444:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_447
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_447:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_495
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_495:
	add	r14, 3
	mov	r9b, 1
.label_440:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_523
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_523:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_462
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_462
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_462
	cmp	r14, r11
	jae	.label_506
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_506:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_429
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_429:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_423
.label_719:
	mov	bl, 0x62
	jmp	.label_443
.label_720:
	mov	cl, 0x74
	jmp	.label_454
.label_721:
	mov	bl, 0x76
	jmp	.label_443
.label_722:
	mov	bl, 0x66
	jmp	.label_443
.label_723:
	mov	cl, 0x72
	jmp	.label_454
.label_726:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_496
	cmp	byte ptr [rsp + 6], 0
	jne	.label_463
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
	jae	.label_502
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_502:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_510
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_510:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_514
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_514:
	add	r14, 3
	xor	r9d, r9d
.label_496:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_423
.label_727:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_520
	cmp	r12d, 2
	jne	.label_434
	cmp	byte ptr [rsp + 6], 0
	je	.label_434
	jmp	.label_463
.label_728:
	cmp	r12d, 2
	jne	.label_530
	cmp	byte ptr [rsp + 6], 0
	jne	.label_463
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_489
.label_505:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_417
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
.label_418:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_439
	test	r8b, r8b
	je	.label_439
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_423
.label_420:
	test	rsi, rsi
	jne	.label_458
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_458
.label_428:
	mov	dl, 1
.label_724:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_463
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_423:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_471
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_473
	jmp	.label_477
	nop	word ptr cs:[rax + rax]
.label_471:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_477
.label_473:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_481
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_489
	jmp	.label_494
	nop	dword ptr [rax]
.label_477:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_494
	jmp	.label_489
.label_481:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_494
.label_433:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_499
	xor	r15d, r15d
	jmp	.label_434
.label_530:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_454
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_489
.label_454:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_463
.label_443:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_423
	nop	word ptr cs:[rax + rax]
.label_494:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_435
	cmp	r12d, 2
	jne	.label_516
	mov	eax, r9d
	and	al, 1
	jne	.label_516
	cmp	r14, r11
	jae	.label_437
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_437:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_460
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_460:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_490
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_490:
	add	r14, 3
	mov	r9b, 1
.label_516:
	cmp	r14, r11
	jae	.label_517
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_517:
	inc	r14
	jmp	.label_413
.label_417:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_419
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_419:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_467:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_445
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_449
	cmp	rbp, -2
	je	.label_453
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_511
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_504:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_470
	bt	rsi, rdx
	jb	.label_476
.label_470:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_504
.label_511:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_519
	xor	r13d, r13d
.label_519:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_467
	jmp	.label_418
.label_462:
	xor	r13d, r13d
	jmp	.label_423
.label_458:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_423
.label_520:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_434
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_434
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_434
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_531
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_484
	cmp	byte ptr [rsp + 6], 0
	jne	.label_416
	cmp	r14, r11
	jae	.label_501
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_501:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_422
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_422:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_521
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_521:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_486
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_486:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_423
.label_434:
	xor	eax, eax
.label_425:
	xor	r13d, r13d
	jmp	.label_423
.label_439:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_415
	nop	word ptr cs:[rax + rax]
.label_500:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_415:
	test	r8b, r8b
	je	.label_426
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_427
	cmp	r14, r11
	jae	.label_430
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_430:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_427
	nop	dword ptr [rax]
.label_426:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_431
	cmp	r12d, 2
	jne	.label_446
	mov	eax, r9d
	and	al, 1
	jne	.label_446
	cmp	r14, r11
	jae	.label_448
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_448:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_513
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_513:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_456
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_456:
	add	r14, 3
	mov	r9b, 1
.label_446:
	cmp	r14, r11
	jae	.label_442
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_442:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_466
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_466:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_493
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_493:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_427:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_489
	test	r9b, 1
	je	.label_450
	mov	ebx, eax
	and	bl, 1
	jne	.label_450
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_492
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_492:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_421
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_421:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_450:
	cmp	r14, r11
	jae	.label_500
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_500
	nop	word ptr cs:[rax + rax]
.label_489:
	test	r9b, 1
	je	.label_507
	and	al, 1
	jne	.label_507
	cmp	r14, r11
	jae	.label_509
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_509:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_497
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_497:
	add	r14, 2
	xor	r9d, r9d
.label_507:
	mov	ebx, r15d
.label_413:
	cmp	r14, r11
	jae	.label_528
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_528:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_499
.label_449:
	xor	r13d, r13d
.label_445:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_418
.label_453:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_527
	mov	rsi, qword ptr [rsp + 0x58]
.label_534:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_451
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_534
	xor	r13d, r13d
	jmp	.label_418
.label_527:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_418
.label_451:
	xor	r13d, r13d
	jmp	.label_418
.label_531:
	xor	r13d, r13d
	jmp	.label_423
.label_484:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_423
	nop	dword ptr [rax + rax]
.label_480:
	mov	rcx, rsi
.label_485:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_432
	or	al, dl
	je	.label_438
.label_432:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_441
	or	al, dl
	jne	.label_441
	test	r10b, 1
	jne	.label_452
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_441
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_457
.label_441:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_464
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_468
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_468
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_482:
	cmp	r14, r11
	jae	.label_461
	mov	byte ptr [rcx + r14], al
.label_461:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_482
	jmp	.label_468
.label_435:
	mov	qword ptr [rsp + 0x20], rbp
.label_431:
	mov	rdx, rdi
	jmp	.label_487
.label_463:
	mov	qword ptr [rsp + 0x20], rbp
.label_476:
	mov	rdx, rdi
	mov	eax, 2
.label_472:
	mov	qword ptr [rsp + 0x38], rax
.label_487:
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
.label_524:
	mov	r14, rax
.label_526:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_438:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_487
.label_452:
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
	jmp	.label_524
.label_464:
	mov	rcx, qword ptr [rsp + 8]
.label_468:
	cmp	r14, r11
	jae	.label_526
	mov	byte ptr [rcx + r14], 0
	jmp	.label_526
.label_416:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_472
.label_455:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405200
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
	#Procedure 0x4052d0
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
	je	.label_535
	mov	qword ptr [rax], rbx
.label_535:
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
	#Procedure 0x4053c0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_536
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_538:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_538
.label_536:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_540
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_539], OFFSET FLAT:slot0
.label_540:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_537
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_537:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405460
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x405470

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
	js	.label_544
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_547
	cmp	r12d, 0x7fffffff
	je	.label_542
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
	jne	.label_545
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_545:
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
.label_547:
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
	jbe	.label_543
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_546
.label_543:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_541
	mov	rdi, r14
	call	free
.label_541:
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
.label_546:
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
.label_544:
	call	abort
.label_542:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405630
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405640
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
	#Procedure 0x405660
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
	#Procedure 0x405680
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
	je	.label_548
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
.label_548:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4056f0
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
	je	.label_549
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
.label_549:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405760
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
	je	.label_550
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
.label_550:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057d0
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
	je	.label_551
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
.label_551:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405840
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_552]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_553]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_554]
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
	#Procedure 0x4058b0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_552]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_553]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_554]
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
	#Procedure 0x405920

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_552]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_553]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_554]
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
	#Procedure 0x405980
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_552]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_553]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_554]
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
	#Procedure 0x4059e0
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
	je	.label_555
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
.label_555:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a80
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_552]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_553]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_554]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_556
	test	rdx, rdx
	je	.label_556
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_556:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405af0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_552]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_553]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_554]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_557
	test	rdx, rdx
	je	.label_557
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_557:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b60
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_552]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_553]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_554]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_558
	test	rsi, rsi
	je	.label_558
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_558:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405bd0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_552]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_553]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_554]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_559
	test	rsi, rsi
	je	.label_559
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
.label_559:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c40
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c50
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
	#Procedure 0x405c70
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c90

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
	#Procedure 0x405cb0

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
	jne	.label_561
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_566
	cmp	ecx, 0x55
	jne	.label_560
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_560
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_560
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_560
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_560
	cmp	byte ptr [rax + 5], 0
	jne	.label_560
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_563
	mov	eax, OFFSET FLAT:label_564
	jmp	.label_565
.label_566:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_560
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_560
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_560
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_560
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_560
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_560
	cmp	byte ptr [rax + 7], 0
	je	.label_562
.label_560:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_424
	mov	eax, OFFSET FLAT:label_474
.label_565:
	cmove	rax, rcx
.label_561:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_562:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_567
	mov	eax, OFFSET FLAT:label_568
	jmp	.label_565
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d80

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
.label_570:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_569
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_570
	cmp	rbx, 0x7ff00001
	jb	.label_569
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_570
.label_569:
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
	je	.label_583
	mov	edx, OFFSET FLAT:label_574
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_580
.label_583:
	mov	edx, OFFSET FLAT:label_581
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_580:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_585
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
	mov	esi, OFFSET FLAT:label_582
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_586
	jmp	qword ptr [(r12 * 8) + label_587]
.label_768:
	add	rsp, 8
	jmp	.label_573
.label_586:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_577
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
	jmp	.label_573
.label_769:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_572
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
.label_770:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_578
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
.label_771:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_575
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
.label_772:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_589
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
	jmp	.label_573
.label_773:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_588
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
	jmp	.label_573
.label_774:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_571
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
	jmp	.label_573
.label_775:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_576
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
	jmp	.label_573
.label_777:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_579
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
	jmp	.label_573
.label_776:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_584
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
.label_573:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406140
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_590:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_590
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406170

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_601
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_603
.label_601:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_603:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_591
	cmp	r10d, 0x29
	jae	.label_600
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_602
.label_600:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_602:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_591
	cmp	r10d, 0x29
	jae	.label_598
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_599
.label_598:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_599:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_591
	cmp	r10d, 0x29
	jae	.label_596
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_597
.label_596:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_597:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_591
	cmp	r10d, 0x29
	jae	.label_594
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_595
.label_594:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_595:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_591
	cmp	r10d, 0x29
	jae	.label_592
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_593
.label_592:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_593:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_591
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_591
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_591
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_591
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_591:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406360

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_604
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_604:
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
	#Procedure 0x4063f0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_605
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_606
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_608
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_607
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
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
	jb	.label_609
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_610
	test	rax, rax
	je	.label_609
.label_610:
	pop	rbx
	ret	
.label_609:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064b0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_611
	test	rax, rax
	je	.label_612
.label_611:
	pop	rbx
	ret	
.label_612:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
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
	jb	.label_613
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_614
	test	rbx, rbx
	jne	.label_614
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_614:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_615
	test	rax, rax
	je	.label_613
.label_615:
	pop	rbx
	ret	
.label_613:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406520

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_616
	test	rbx, rbx
	jne	.label_616
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_616:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_618
	test	rax, rax
	je	.label_617
.label_618:
	pop	rbx
	ret	
.label_617:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406550
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_622
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_624
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_619
.label_622:
	test	rcx, rcx
	jne	.label_625
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_625:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_620
.label_619:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_621
	test	rbx, rbx
	jne	.label_621
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_621:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_623
	test	rax, rax
	je	.label_624
.label_623:
	pop	rbx
	ret	
.label_624:
	call	xalloc_die
.label_620:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065f0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_626
	test	rax, rax
	je	.label_627
.label_626:
	pop	rbx
	ret	
.label_627:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406610
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_630
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_632
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_629
	call	free
	xor	eax, eax
	jmp	.label_631
.label_630:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_628
	mov	qword ptr [rsi], rbx
.label_629:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_631
	test	rax, rax
	je	.label_628
.label_631:
	pop	rbx
	ret	
.label_628:
	call	xalloc_die
.label_632:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
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
	je	.label_634
	test	r14, r14
	je	.label_633
.label_634:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_633:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066c0

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_635
	call	rpl_calloc
	test	rax, rax
	je	.label_635
	pop	rcx
	ret	
.label_635:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
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
	je	.label_636
	test	r15, r15
	je	.label_637
.label_636:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_637:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
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
	je	.label_639
	test	r15, r15
	je	.label_638
.label_639:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_638:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406780

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_640
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_399
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4067b0

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
	jae	.label_648
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_641:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_641
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_643
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
	je	.label_651
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_659
	cmp	eax, 0x22
	jne	.label_643
	mov	ebp, 1
.label_659:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_653
	jmp	.label_645
.label_651:
	test	r14, r14
	je	.label_643
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_643
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_643
.label_653:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_645
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_652
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_647
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_647
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_647
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_642
	cmp	eax, 0x44
	je	.label_642
	cmp	eax, 0x69
	jne	.label_647
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_647
.label_642:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_647:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_652
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_660]
.label_819:
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
	jmp	.label_661
.label_652:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_650
.label_820:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_654
.label_821:
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
	jmp	.label_646
.label_823:
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
	jmp	.label_662
.label_817:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_644
.label_818:
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
	jmp	.label_646
.label_822:
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
.label_662:
	or	dl, r10b
.label_661:
	or	dl, bl
.label_646:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_649
.label_824:
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
	jmp	.label_655
.label_825:
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
.label_655:
	movzx	eax, dl
.label_654:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_649
.label_826:
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
	jmp	.label_649
.label_827:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_649:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_645:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_650:
	mov	r13d, r15d
.label_643:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_648:
	mov	edi, OFFSET FLAT:label_656
	mov	esi, OFFSET FLAT:label_657
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_658
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406df0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_663
	test	rsi, rsi
	mov	ecx, 1
	je	.label_664
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_664
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_663:
	mov	ecx, 1
.label_664:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e40

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
	je	.label_665
	cmp	r15, -2
	jb	.label_665
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_665
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_665:
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
	#Procedure 0x406ea0

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
	jne	.label_667
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_666
	test	cl, cl
	jne	.label_666
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_666
.label_667:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_666
	call	__errno_location
	mov	dword ptr [rax], 0
.label_666:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f00

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_669
	cmp	byte ptr [rax], 0x43
	jne	.label_671
	cmp	byte ptr [rax + 1], 0
	je	.label_668
.label_671:
	mov	esi, OFFSET FLAT:label_670
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_669
.label_668:
	xor	ebx, ebx
.label_669:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f40

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
	mov	eax, OFFSET FLAT:label_672
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f70

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_673
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_675
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_673
.label_675:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_673
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_674
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_674:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_673:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ff0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_676
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_676
	test	byte ptr [rbx + 1], 1
	je	.label_676
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_676:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407030

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
	jne	.label_677
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_677
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_678
.label_677:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_678:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_679
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_679:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x4070a0

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
