	.section	.text
	.align	32
	#Procedure 0x401dc0

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
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
	mov	esi, OFFSET FLAT:label_31
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
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_22
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_26
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x402040

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_71
	call	setlocale
	mov	edi, OFFSET FLAT:label_80
	mov	esi, OFFSET FLAT:label_81
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_80
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r15d, r15d
	lea	r14, [rsp + 0x50]
	jmp	.label_115
.label_3131:
	mov	rdi, qword ptr [rip + optarg]
	call	copy_unescaped_string
	mov	qword ptr [rip + word_regex],  rax
	cmp	byte ptr [rax], 0
	cmove	rax, r15
	mov	qword ptr [rip + word_regex],  rax
	nop	dword ptr [rax + rax]
.label_115:
	mov	edx, OFFSET FLAT:label_138
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x78
	ja	.label_149
	jmp	qword ptr [(rcx * 8) + label_156]
.label_3122:
	mov	rsi, qword ptr [rip + optarg]
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_161
	mov	edx, OFFSET FLAT:format_args
	mov	ecx, OFFSET FLAT:format_vals
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + format_vals]
	mov	dword ptr [rip + output_format],  eax
	jmp	.label_115
.label_3123:
	mov	byte ptr [rip + auto_reference],  1
	jmp	.label_115
.label_3128:
	mov	byte ptr [rip + right_reference],  1
	jmp	.label_115
.label_3132:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + break_file],  rax
	jmp	.label_115
.label_3133:
	mov	byte ptr [rip + ignore_case],  1
	jmp	.label_115
.label_3135:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + ignore_file],  rax
	jmp	.label_115
.label_3136:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + only_file],  rax
	jmp	.label_115
.label_3124:
	mov	rdi, qword ptr [rip + optarg]
	call	copy_unescaped_string
	mov	qword ptr [rip + truncation_string],  rax
	jmp	.label_115
.label_3125:
	mov	byte ptr [rip + gnu_extensions],  1
	jmp	.label_115
.label_3126:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + macro_name],  rax
	jmp	.label_115
.label_3127:
	mov	dword ptr [rip + output_format],  2
	jmp	.label_115
.label_3129:
	mov	rdi, qword ptr [rip + optarg]
	call	copy_unescaped_string
	mov	qword ptr [rip + context_regex],  rax
	jmp	.label_115
.label_3130:
	mov	dword ptr [rip + output_format],  3
	jmp	.label_115
.label_3134:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rcx, r14
	call	xstrtoimax
	test	eax, eax
	jne	.label_261
	mov	rax, qword ptr [rsp + 0x50]
	test	rax, rax
	jle	.label_261
	mov	qword ptr [rip + gap_size],  rax
	jmp	.label_115
.label_3137:
	mov	byte ptr [rip + input_reference],  1
	jmp	.label_115
.label_3138:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rcx, r14
	call	xstrtoimax
	test	eax, eax
	jne	.label_297
	mov	rax, qword ptr [rsp + 0x50]
	test	rax, rax
	jle	.label_297
	mov	qword ptr [rip + line_width],  rax
	jmp	.label_115
.label_3121:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebp
	jne	.label_303
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rip + input_file_name],  rax
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rip + file_line_count],  rax
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rip + text_buffers],  rax
	mov	dword ptr [rip + number_input_files],  1
	mov	rax, qword ptr [rip + input_file_name]
	mov	qword ptr [rax], 0
	jmp	.label_311
.label_303:
	mov	cl, byte ptr [rip + gnu_extensions]
	test	cl, cl
	je	.label_325
	mov	dword ptr [rip + number_input_files],  1
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rip + input_file_name],  rax
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rip + file_line_count],  rax
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rip + text_buffers],  rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rbx + rax*8]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_339
	cmp	dl, 0x2d
	jne	.label_346
	cmp	byte ptr [rcx + 1], 0
	je	.label_339
.label_346:
	mov	rdx, qword ptr [rip + input_file_name]
	mov	qword ptr [rdx], rcx
	jmp	.label_350
.label_325:
	sub	ebp, eax
	mov	dword ptr [rip + number_input_files],  ebp
	js	.label_76
	movsxd	rdi, ebp
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [rip + input_file_name],  rax
	movsxd	rdi, dword ptr [rip + number_input_files]
	test	rdi, rdi
	js	.label_76
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [rip + file_line_count],  rax
	movsxd	rdi, dword ptr [rip + number_input_files]
	test	rdi, rdi
	js	.label_76
	shl	rdi, 4
	call	xmalloc
	mov	qword ptr [rip + text_buffers],  rax
	movsxd	rax, dword ptr [rip + number_input_files]
	test	rax, rax
	jle	.label_311
	mov	rcx, qword ptr [rip + input_file_name]
	movsxd	rsi, dword ptr [rip + optind]
	lea	edx, [rsi + 1]
	lea	rsi, [rbx + rsi*8]
	xor	edi, edi
	nop	dword ptr [rax]
.label_397:
	mov	rbp, qword ptr [rsi + rdi*8]
	movzx	ebx, byte ptr [rbp]
	test	bl, bl
	je	.label_379
	cmp	bl, 0x2d
	jne	.label_389
	cmp	byte ptr [rbp + 1], 0
	je	.label_379
.label_389:
	mov	qword ptr [rcx + rdi*8], rbp
	jmp	.label_392
	nop	dword ptr [rax]
.label_379:
	mov	qword ptr [rcx + rdi*8], 0
.label_392:
	lea	ebp, [rdx + rdi]
	mov	dword ptr [rip + optind],  ebp
	inc	rdi
	cmp	rdi, rax
	jl	.label_397
	jmp	.label_311
.label_339:
	mov	rcx, qword ptr [rip + input_file_name]
	mov	qword ptr [rcx], 0
.label_350:
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	cmp	ecx, ebp
	jge	.label_40
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	mov	rdx, qword ptr [rip + stdout]
	mov	esi, OFFSET FLAT:label_44
	call	freopen_safer
	test	rax, rax
	je	.label_51
	mov	ecx, dword ptr [rip + optind]
	inc	ecx
	mov	dword ptr [rip + optind],  ecx
.label_40:
	cmp	ecx, ebp
	jl	.label_61
.label_311:
	cmp	dword ptr [rip + output_format],  0
	jne	.label_65
	movzx	eax, byte ptr [rip + gnu_extensions]
	inc	eax
	mov	dword ptr [rip + output_format],  eax
.label_65:
	cmp	byte ptr [rip + ignore_case],  1
	jne	.label_77
	xor	ebx, ebx
	call	__ctype_toupper_loc
	nop	word ptr cs:[rax + rax]
.label_108:
	mov	rcx, qword ptr [rax]
	movzx	ecx, byte ptr [rcx + rbx*4]
	mov	byte ptr [rbx + folded_chars],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, byte ptr [rcx + rbx*4 + 4]
	mov	byte ptr [rbx + label_105],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, byte ptr [rcx + rbx*4 + 8]
	mov	byte ptr [rbx + label_106],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, byte ptr [rcx + rbx*4 + 0xc]
	mov	byte ptr [rbx + label_107],  cl
	add	rbx, 4
	cmp	rbx, 0x100
	jne	.label_108
.label_77:
	mov	rax, qword ptr [rip + context_regex]
	test	rax, rax
	je	.label_121
	cmp	byte ptr [rax], 0
	jne	.label_154
	mov	qword ptr [rip + context_regex],  0
	jmp	.label_148
.label_121:
	mov	al, byte ptr [rip + gnu_extensions]
	test	al, al
	jne	.label_155
	mov	al, byte ptr [rip + input_reference]
	test	al, al
	je	.label_162
.label_155:
	mov	qword ptr [rip + context_regex], OFFSET FLAT:label_167
	jmp	.label_154
.label_162:
	mov	qword ptr [rip + context_regex], OFFSET FLAT:label_177
.label_154:
	mov	edi, OFFSET FLAT:context_regex
	call	compile_regex
.label_148:
	cmp	qword ptr [rip + word_regex],  0
	je	.label_182
	mov	edi, OFFSET FLAT:word_regex
	call	compile_regex
	mov	rdi, qword ptr [rip + break_file]
	test	rdi, rdi
	jne	.label_186
	jmp	.label_72
.label_182:
	mov	rdi, qword ptr [rip + break_file]
	test	rdi, rdi
	je	.label_194
.label_186:
	lea	rsi, [rsp + 0x50]
	call	swallow_file_in_memory
	movdqa	xmm0, xmmword ptr [rip + label_84]
	movdqa	xmmword ptr [rip + label_85],  xmm0
	movdqa	xmmword ptr [rip + label_86],  xmm0
	movdqa	xmmword ptr [rip + label_87],  xmm0
	movdqa	xmmword ptr [rip + label_88],  xmm0
	movdqa	xmmword ptr [rip + label_89],  xmm0
	movdqa	xmmword ptr [rip + label_90],  xmm0
	movdqa	xmmword ptr [rip + label_91],  xmm0
	movdqa	xmmword ptr [rip + label_92],  xmm0
	movdqa	xmmword ptr [rip + label_93],  xmm0
	movdqa	xmmword ptr [rip + label_94],  xmm0
	movdqa	xmmword ptr [rip + label_95],  xmm0
	movdqa	xmmword ptr [rip + label_96],  xmm0
	movdqa	xmmword ptr [rip + label_97],  xmm0
	movdqa	xmmword ptr [rip + label_98],  xmm0
	movdqa	xmmword ptr [rip + label_99],  xmm0
	movdqa	xmmword ptr [rip + word_fastmap],  xmm0
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rdi, rax
	jae	.label_205
	mov	rcx, rdi
	nop	word ptr cs:[rax + rax]
.label_264:
	movzx	edx, byte ptr [rcx]
	mov	byte ptr [rdx + word_fastmap],  0
	inc	rcx
	cmp	rax, rcx
	jne	.label_264
.label_205:
	cmp	byte ptr [rip + gnu_extensions],  1
	jne	.label_291
	mov	byte ptr [rip + label_98],  0
	mov	word ptr [rip + label_100],  0
.label_291:
	call	free
.label_72:
	mov	rdi, qword ptr [rip + ignore_file]
	test	rdi, rdi
	je	.label_294
	mov	esi, OFFSET FLAT:ignore_table
	call	digest_word_file
	cmp	qword ptr [rip + label_257],  0
	jne	.label_294
	mov	qword ptr [rip + ignore_file],  0
.label_294:
	mov	rdi, qword ptr [rip + only_file]
	test	rdi, rdi
	je	.label_302
	mov	esi, OFFSET FLAT:only_table
	call	digest_word_file
	cmp	qword ptr [rip + label_309],  0
	jne	.label_302
	mov	qword ptr [rip + only_file],  0
.label_302:
	mov	qword ptr [rip + number_of_occurs.0],  0
	mov	qword ptr [rip + total_line_count],  0
	mov	qword ptr [rip + maximum_word_length],  0
	mov	qword ptr [rip + reference_max_width],  0
	cmp	dword ptr [rip + number_input_files],  0
	jle	.label_164
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_332:
	mov	rbp, r13
	shl	rbp, 4
	mov	rsi, qword ptr [rip + text_buffers]
	add	rsi, rbp
	mov	rax, qword ptr [rip + input_file_name]
	mov	rdi, qword ptr [rax + r13*8]
	call	swallow_file_in_memory
	mov	r14, qword ptr [rip + text_buffers]
	mov	rax, qword ptr [r14 + rbp]
	mov	rbx, qword ptr [r14 + rbp + 8]
	cmp	byte ptr [rip + input_reference],  1
	mov	qword ptr [rsp + 0x10], rax
	mov	r12d, 0
	jne	.label_336
	cmp	rax, rbx
	mov	r15, rax
	mov	rdx, rax
	jae	.label_344
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, r15
	nop	dword ptr [rax + rax]
.label_355:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_344
	inc	rdx
	cmp	rdx, rbx
	jb	.label_355
.label_344:
	mov	rax, rdx
	sub	rax, r15
	mov	r12, rax
	mov	qword ptr [rsp + 0x10], rdx
	cmp	rdx, rbx
	jae	.label_360
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_369:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_365
	inc	rdx
	cmp	rdx, rbx
	jb	.label_369
.label_365:
	mov	qword ptr [rsp + 0x10], rdx
.label_360:
	mov	rax, r15
.label_336:
	cmp	rax, rbx
	jae	.label_373
	lea	rcx, [r14 + rbp + 8]
	mov	qword ptr [rsp + 0x28], rcx
	mov	rbp, rax
	mov	qword ptr [rsp + 8], r13
	nop	word ptr cs:[rax + rax]
.label_326:
	mov	r15, rax
	cmp	qword ptr [rip + context_regex],  0
	je	.label_382
	mov	rdx, rbx
	sub	rdx, r15
	mov	edi, OFFSET FLAT:label_383
	xor	ecx, ecx
	mov	r9d, OFFSET FLAT:context_regs
	mov	rsi, r15
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_382
	test	rax, rax
	je	.label_394
	cmp	rax, -2
	je	.label_398
	mov	rax, qword ptr [rip + label_400]
	mov	rbx, qword ptr [rax]
	add	rbx, r15
.label_382:
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x40], rbx
	nop	word ptr [rax + rax]
.label_49:
	mov	r14, rbx
	cmp	r14, r15
	jbe	.label_42
	lea	rbx, [r14 - 1]
	movzx	ebp, byte ptr [r14 - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	jne	.label_49
.label_42:
	mov	qword ptr [rsp + 0x18], r15
	mov	rbp, r12
	jmp	.label_62
.label_396:
	mov	r13, qword ptr [rsp + 8]
	nop	
.label_62:
	mov	rbx, r15
	jmp	.label_223
	nop	word ptr cs:[rax + rax]
.label_144:
	inc	rbx
.label_223:
	cmp	qword ptr [rip + word_regex],  0
	je	.label_69
	mov	rdx, r14
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_73
	xor	ecx, ecx
	mov	r9d, OFFSET FLAT:word_regs
	mov	rsi, rbx
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_102
	cmp	rax, -2
	je	.label_111
	mov	rax, qword ptr [rip + label_116]
	mov	rax, qword ptr [rax]
	add	rax, rbx
	mov	rcx, qword ptr [rip + label_117]
	mov	r15, rbx
	add	r15, qword ptr [rcx]
	mov	rbx, rax
	jmp	.label_118
	nop	
.label_133:
	inc	rbx
.label_69:
	cmp	rbx, r14
	jae	.label_55
	movzx	eax, byte ptr [rbx]
	cmp	byte ptr [rax + word_fastmap],  0
	je	.label_133
.label_55:
	cmp	rbx, r14
	je	.label_102
	jae	.label_144
	mov	r15, rbx
	nop	word ptr cs:[rax + rax]
.label_163:
	movzx	eax, byte ptr [r15]
	cmp	byte ptr [rax + word_fastmap],  0
	je	.label_118
	inc	r15
	cmp	r15, r14
	jb	.label_163
	nop	word ptr cs:[rax + rax]
.label_118:
	mov	r12, r15
	sub	r12, rbx
	je	.label_144
	cmp	r12, qword ptr [rip + maximum_word_length]
	jle	.label_181
	mov	qword ptr [rip + maximum_word_length],  r12
.label_181:
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_184
	mov	rax, qword ptr [rsp + 0x10]
	cmp	rax, rbx
	jae	.label_185
.label_236:
	mov	r13, rax
	nop	word ptr [rax + rax]
.label_197:
	cmp	byte ptr [r13], 0xa
	je	.label_195
	inc	r13
	cmp	r13, rbx
	jb	.label_197
	jmp	.label_201
	nop	word ptr cs:[rax + rax]
.label_195:
	inc	qword ptr [rip + total_line_count]
	lea	rbp, [r13 + 1]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	cmp	rbp, rax
	mov	rdx, rbp
	jae	.label_208
	mov	qword ptr [rsp], rax
	call	__ctype_b_loc
	mov	rsi, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rdx, rbp
	nop	
.label_234:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_208
	inc	rdx
	cmp	rdx, rsi
	jb	.label_234
.label_208:
	mov	rax, rbp
	mov	rbp, rdx
	mov	qword ptr [rsp], rax
	sub	rbp, rax
	cmp	rdx, rbx
	mov	rax, rdx
	jb	.label_236
	inc	r13
	mov	qword ptr [rsp], r13
	jmp	.label_239
.label_201:
	mov	rax, r13
.label_239:
	mov	r13, qword ptr [rsp + 8]
.label_185:
	mov	qword ptr [rsp + 0x10], rax
	cmp	rax, rbx
	ja	.label_62
.label_184:
	cmp	qword ptr [rip + ignore_file],  0
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_249
	mov	rdx, qword ptr [rip + label_257]
	test	rdx, rdx
	jle	.label_249
	mov	r9, qword ptr [rip + ignore_table]
	mov	r8b, byte ptr [rip + ignore_case]
	xor	r11d, r11d
.label_331:
	mov	r10, rdx
	dec	r10
.label_323:
	lea	rax, [r11 + r10]
	mov	rdx, rax
	shr	rdx, 0x3f
	add	rdx, rax
	sar	rdx, 1
	mov	rax, rdx
	shl	rax, 4
	lea	rsi, [r9 + rax]
	mov	r13, qword ptr [r9 + rax + 8]
	cmp	r12, r13
	mov	rcx, r13
	cmovle	rcx, r12
	test	r8b, 1
	je	.label_290
	test	rcx, rcx
	jle	.label_298
	mov	rdi, qword ptr [rsi]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_305:
	movzx	eax, byte ptr [rbx + rsi]
	movzx	eax, byte ptr [rax + folded_chars]
	movzx	ebp, byte ptr [rdi + rsi]
	movzx	ebp, byte ptr [rbp + folded_chars]
	sub	eax, ebp
	jne	.label_252
	inc	rsi
	cmp	rsi, rcx
	jl	.label_305
	jmp	.label_298
	nop	word ptr cs:[rax + rax]
.label_290:
	test	rcx, rcx
	jle	.label_298
	mov	rsi, qword ptr [rsi]
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_313:
	movzx	eax, byte ptr [rbx + rdi]
	movzx	ebp, byte ptr [rsi + rdi]
	sub	eax, ebp
	jne	.label_252
	inc	rdi
	cmp	rdi, rcx
	jl	.label_313
.label_298:
	cmp	r12, r13
	jl	.label_317
	jg	.label_319
	jmp	.label_321
.label_252:
	test	eax, eax
	js	.label_317
.label_319:
	cmp	rdx, r10
	lea	r11, [rdx + 1]
	mov	rbp, qword ptr [rsp + 0x20]
	jl	.label_323
	jmp	.label_249
	nop	dword ptr [rax + rax]
.label_317:
	cmp	r11, rdx
	mov	rbp, qword ptr [rsp + 0x20]
	jl	.label_331
.label_249:
	cmp	qword ptr [rip + only_file],  0
	je	.label_254
	mov	rax, qword ptr [rip + label_309]
	test	rax, rax
	mov	r13, qword ptr [rsp + 8]
	jle	.label_62
	mov	r9, qword ptr [rip + only_table]
	mov	r8b, byte ptr [rip + ignore_case]
	xor	r11d, r11d
.label_399:
	mov	r10, rax
	dec	r10
	nop	dword ptr [rax + rax]
.label_48:
	lea	rcx, [r11 + r10]
	mov	rax, rcx
	shr	rax, 0x3f
	add	rax, rcx
	sar	rax, 1
	mov	rcx, rax
	shl	rcx, 4
	lea	rsi, [r9 + rcx]
	mov	r13, qword ptr [r9 + rcx + 8]
	cmp	r12, r13
	mov	rdx, r13
	cmovle	rdx, r12
	test	r8b, 1
	je	.label_348
	test	rdx, rdx
	jle	.label_314
	mov	rdi, qword ptr [rsi]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_152:
	movzx	ecx, byte ptr [rbx + rsi]
	movzx	ecx, byte ptr [rcx + folded_chars]
	movzx	ebp, byte ptr [rdi + rsi]
	movzx	ebp, byte ptr [rbp + folded_chars]
	sub	ecx, ebp
	jne	.label_363
	inc	rsi
	cmp	rsi, rdx
	jl	.label_152
	jmp	.label_314
	nop	word ptr cs:[rax + rax]
.label_348:
	test	rdx, rdx
	jle	.label_314
	mov	rsi, qword ptr [rsi]
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_287:
	movzx	ecx, byte ptr [rbx + rdi]
	movzx	ebp, byte ptr [rsi + rdi]
	sub	ecx, ebp
	jne	.label_363
	inc	rdi
	cmp	rdi, rdx
	jl	.label_287
.label_314:
	cmp	r12, r13
	mov	rbp, qword ptr [rsp + 0x20]
	jl	.label_333
	jg	.label_384
	jmp	.label_254
	nop	word ptr cs:[rax + rax]
.label_363:
	test	ecx, ecx
	mov	rbp, qword ptr [rsp + 0x20]
	js	.label_333
.label_384:
	cmp	rax, r10
	lea	r11, [rax + 1]
	jl	.label_48
	jmp	.label_396
	nop	dword ptr [rax + rax]
.label_333:
	cmp	r11, rax
	jl	.label_399
	mov	r13, qword ptr [rsp + 8]
	jmp	.label_62
.label_254:
	mov	rsi, qword ptr [rip + number_of_occurs.0]
	cmp	rsi, qword ptr [rip + occurs_alloc]
	mov	r13, qword ptr [rsp + 8]
	jne	.label_36
	mov	rdi, qword ptr [rip + occurs_table.0]
	test	rdi, rdi
	je	.label_120
	movabs	rax, 0x1c71c71c71c71c7
	cmp	rsi, rax
	jae	.label_47
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_199
.label_321:
	mov	r13, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_62
.label_36:
	mov	r8, qword ptr [rip + occurs_table.0]
	jmp	.label_260
.label_120:
	test	rsi, rsi
	mov	eax, 2
	cmove	rsi, rax
	movabs	rax, 0x2aaaaaaaaaaaaab
	cmp	rsi, rax
	jae	.label_53
.label_199:
	mov	qword ptr [rip + occurs_alloc],  rsi
	shl	rsi, 4
	lea	rsi, [rsi + rsi*2]
	call	xrealloc
	mov	r8, rax
	mov	qword ptr [rip + occurs_table.0],  r8
	mov	rsi, qword ptr [rip + number_of_occurs.0]
.label_260:
	mov	rax, qword ptr [rsp + 0x10]
	lea	r10, [rsi + rsi*2]
	shl	r10, 4
	lea	r9, [r8 + r10]
	cmp	byte ptr [rip + auto_reference],  1
	jne	.label_385
	cmp	rax, rbx
	jae	.label_137
.label_66:
	mov	r13, rax
	nop	word ptr [rax + rax]
.label_180:
	cmp	byte ptr [r13], 0xa
	je	.label_145
	inc	r13
	cmp	r13, rbx
	jb	.label_180
	jmp	.label_153
	nop	word ptr cs:[rax + rax]
.label_145:
	inc	qword ptr [rip + total_line_count]
	lea	rdx, [r13 + 1]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	cmp	rdx, rax
	mov	qword ptr [rsp], rdx
	jae	.label_45
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x48], r8
	mov	qword ptr [rsp + 0x38], r10
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x10], rax
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rsp]
	nop	word ptr [rax + rax]
.label_206:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_45
	inc	rdx
	cmp	rdx, rdi
	jb	.label_206
.label_45:
	cmp	rdx, rbx
	mov	rax, rdx
	jb	.label_66
	inc	r13
	mov	qword ptr [rsp], r13
	jmp	.label_137
.label_385:
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_220
	mov	rax, qword ptr [rsp]
	sub	rax, rbx
	mov	qword ptr [r8 + r10 + 0x20], rax
	mov	al, 1
	cmp	rbp, qword ptr [rip + reference_max_width]
	jle	.label_224
	mov	qword ptr [rip + reference_max_width],  rbp
	jmp	.label_224
.label_153:
	mov	rax, r13
.label_137:
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rip + total_line_count]
	mov	qword ptr [r8 + r10 + 0x20], rax
	mov	al, byte ptr [rip + input_reference]
	mov	r13, qword ptr [rsp + 8]
.label_224:
	test	al, 1
	je	.label_220
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rsp], rax
	jne	.label_247
	cmp	rax, r14
	mov	r13, rax
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x38], r10
	mov	qword ptr [rsp + 0x30], r9
	jae	.label_292
	mov	r13, r8
	call	__ctype_b_loc
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x38]
	mov	r8, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	r13, qword ptr [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_315:
	movzx	ecx, byte ptr [r13]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_292
	inc	r13
	cmp	r13, r14
	jb	.label_315
.label_292:
	cmp	r13, r14
	jae	.label_134
	mov	qword ptr [rsp + 0x48], r8
	call	__ctype_b_loc
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	nop	word ptr [rax + rax]
.label_306:
	movzx	ecx, byte ptr [r13]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_134
	inc	r13
	cmp	r13, r14
	jb	.label_306
.label_134:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp], rax
	mov	rax, r13
	mov	r13, qword ptr [rsp + 8]
	jmp	.label_247
.label_220:
	mov	rax, qword ptr [rsp + 0x18]
.label_247:
	mov	qword ptr [r9], rbx
	mov	qword ptr [r8 + r10 + 8], r12
	mov	qword ptr [rsp + 0x18], rax
	sub	rax, rbx
	mov	qword ptr [r8 + r10 + 0x10], rax
	mov	rax, r14
	sub	rax, rbx
	mov	qword ptr [r8 + r10 + 0x18], rax
	mov	dword ptr [r8 + r10 + 0x28], r13d
	inc	rsi
	mov	qword ptr [rip + number_of_occurs.0],  rsi
	jmp	.label_62
.label_102:
	mov	r12, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, rbx
	mov	rbp, qword ptr [rsp]
	jb	.label_326
.label_373:
	mov	rax, qword ptr [rip + total_line_count]
	inc	rax
	mov	qword ptr [rip + total_line_count],  rax
	mov	rcx, qword ptr [rip + file_line_count]
	mov	qword ptr [rcx + r13*8], rax
	inc	r13
	movsxd	rax, dword ptr [rip + number_input_files]
	cmp	r13, rax
	jl	.label_332
	mov	rsi, qword ptr [rip + number_of_occurs.0]
	test	rsi, rsi
	je	.label_164
	mov	rdi, qword ptr [rip + occurs_table.0]
	mov	edx, 0x30
	mov	ecx, OFFSET FLAT:compare_occurs
	call	qsort
.label_164:
	cmp	byte ptr [rip + auto_reference],  1
	jne	.label_351
	mov	qword ptr [rip + reference_max_width],  0
	xor	edi, edi
	cmp	dword ptr [rip + number_input_files],  0
	je	.label_356
	lea	r14, [rsp + 0x50]
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_386:
	mov	rax, qword ptr [rip + file_line_count]
	mov	r8, qword ptr [rax + rbp*8]
	inc	r8
	test	rbp, rbp
	je	.label_59
	sub	r8, qword ptr [rax + rbp*8 - 8]
.label_59:
	mov	esi, 1
	mov	edx, 0x15
	mov	ecx, OFFSET FLAT:label_368
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	movsxd	rbx, eax
	mov	rax, qword ptr [rip + input_file_name]
	mov	rdi, qword ptr [rax + rbp*8]
	test	rdi, rdi
	je	.label_376
	call	strlen
	add	rbx, rax
.label_376:
	mov	rdi, qword ptr [rip + reference_max_width]
	cmp	rbx, rdi
	jle	.label_380
	mov	qword ptr [rip + reference_max_width],  rbx
	mov	rdi, rbx
.label_380:
	inc	rbp
	movsxd	rax, dword ptr [rip + number_input_files]
	cmp	rbp, rax
	jb	.label_386
.label_356:
	lea	rax, [rdi + 1]
	mov	qword ptr [rip + reference_max_width],  rax
	add	rdi, 2
	call	xmalloc
	mov	qword ptr [rip + reference],  rax
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_395
.label_351:
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_402
.label_395:
	mov	al, byte ptr [rip + right_reference]
	test	al, al
	je	.label_404
.label_402:
	mov	rax, qword ptr [rip + line_width]
	jmp	.label_58
.label_404:
	mov	rcx, qword ptr [rip + gap_size]
	mov	rax, qword ptr [rip + line_width]
	add	rcx, qword ptr [rip + reference_max_width]
	sub	rax, rcx
	mov	qword ptr [rip + line_width],  rax
.label_58:
	test	rax, rax
	jns	.label_54
	mov	qword ptr [rip + line_width],  0
	xor	eax, eax
.label_54:
	mov	rbx, rax
	shr	rbx, 0x3f
	add	rbx, rax
	sar	rbx, 1
	mov	qword ptr [rip + half_line_width],  rbx
	mov	rbp, rbx
	sub	rbp, qword ptr [rip + gap_size]
	mov	qword ptr [rip + before_max_width],  rbp
	mov	qword ptr [rip + keyafter_max_width],  rbx
	mov	rdi, qword ptr [rip + truncation_string]
	test	rdi, rdi
	je	.label_209
	cmp	byte ptr [rdi], 0
	je	.label_209
	call	strlen
	mov	qword ptr [rip + truncation_string_length],  rax
	jmp	.label_347
.label_209:
	mov	qword ptr [rip + truncation_string],  0
	mov	rax, qword ptr [rip + truncation_string_length]
.label_347:
	mov	cl, byte ptr [rip + gnu_extensions]
	add	rax, rax
	test	cl, cl
	je	.label_125
	or	rax, 1
	jmp	.label_129
.label_125:
	xor	ecx, ecx
	sub	rbp, rax
	cmovns	rcx, rbp
	mov	qword ptr [rip + before_max_width],  rcx
.label_129:
	sub	rbx, rax
	mov	qword ptr [rip + keyafter_max_width],  rbx
	call	__ctype_b_loc
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rax]
	lea	rcx, [rax + 0x1fe]
	mov	edx, OFFSET FLAT:edited_flag
	cmp	rcx, rdx
	jb	.label_147
	mov	ecx, OFFSET FLAT:label_221
	cmp	rax, rcx
	ja	.label_147
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_174:
	movzx	edx, word ptr [rax + rcx*2]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [rcx + edited_flag],  dl
	movzx	edx, word ptr [rax + rcx*2 + 2]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [rcx + label_171],  dl
	movzx	edx, word ptr [rax + rcx*2 + 4]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [rcx + label_172],  dl
	movzx	edx, word ptr [rax + rcx*2 + 6]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [rcx + label_173],  dl
	add	rcx, 4
	cmp	rcx, 0x100
	jne	.label_174
	jmp	.label_202
.label_147:
	xor	ecx, ecx
	movdqa	xmm0, xmmword ptr [rip + label_203]
	pand	xmm0, xmmword ptr [rip + label_204]
	nop	word ptr [rax + rax]
.label_216:
	movdqu	xmm1, xmmword ptr [rax + rcx*2]
	movdqu	xmm2, xmmword ptr [rax + rcx*2 + 0x10]
	psrlw	xmm1, 0xd
	psrlw	xmm2, 0xd
	pand	xmm1, xmm0
	packuswb	xmm1, xmm1
	movq	qword ptr [rcx + edited_flag],  xmm1
	pand	xmm2, xmm0
	packuswb	xmm2, xmm2
	movq	qword ptr [rcx + label_213],  xmm2
	movdqu	xmm1, xmmword ptr [rax + rcx*2 + 0x20]
	movdqu	xmm2, xmmword ptr [rax + rcx*2 + 0x30]
	psrlw	xmm1, 0xd
	psrlw	xmm2, 0xd
	pand	xmm1, xmm0
	packuswb	xmm1, xmm1
	movq	qword ptr [rcx + label_214],  xmm1
	pand	xmm2, xmm0
	packuswb	xmm2, xmm2
	movq	qword ptr [rcx + label_215],  xmm2
	add	rcx, 0x20
	cmp	rcx, 0x100
	jne	.label_216
.label_202:
	mov	byte ptr [rip + label_255],  1
	mov	eax, dword ptr [rip + output_format]
	cmp	eax, 2
	je	.label_256
	cmp	eax, 3
	jne	.label_262
	mov	byte ptr [rip + label_266],  1
	mov	byte ptr [rip + label_267],  1
	mov	byte ptr [rip + label_268],  1
	mov	byte ptr [rip + label_269],  1
	mov	dword ptr [rip + label_270],  0x1010101
	movdqu	xmm2, xmmword ptr [rip + label_271]
	pxor	xmm0, xmm0
	pcmpeqb	xmm2, xmm0
	movdqa	xmm1, xmmword ptr [rip + label_84]
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_272],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_273]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_274],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_275]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_276],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_277]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_278],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_279]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_280],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_281]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_282],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_283]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_284],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_285]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_286],  xmm2
	jmp	.label_262
.label_256:
	mov	byte ptr [rip + label_253],  1
.label_262:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rip + tail],  xmm0
	mov	byte ptr [rip + tail_truncation],  0
	movdqu	xmmword ptr [rip + head],  xmm0
	mov	byte ptr [rip + head_truncation],  0
	cmp	qword ptr [rip + number_of_occurs.0],  0
	jle	.label_341
	mov	r14, qword ptr [rip + occurs_table.0]
	xor	r12d, r12d
	jmp	.label_340
.label_194:
	mov	al, byte ptr [rip + gnu_extensions]
	test	al, al
	je	.label_359
	movdqa	xmm0, xmmword ptr [rip + label_84]
	movdqa	xmmword ptr [rip + label_85],  xmm0
	movdqa	xmmword ptr [rip + label_86],  xmm0
	movdqa	xmmword ptr [rip + label_87],  xmm0
	movdqa	xmmword ptr [rip + label_88],  xmm0
	movdqa	xmmword ptr [rip + label_89],  xmm0
	movdqa	xmmword ptr [rip + label_90],  xmm0
	movdqa	xmmword ptr [rip + label_91],  xmm0
	movdqa	xmmword ptr [rip + label_92],  xmm0
	movdqa	xmmword ptr [rip + label_93],  xmm0
	movdqa	xmmword ptr [rip + label_94],  xmm0
	movdqa	xmmword ptr [rip + label_95],  xmm0
	movdqa	xmmword ptr [rip + label_96],  xmm0
	movdqa	xmmword ptr [rip + label_97],  xmm0
	movdqa	xmmword ptr [rip + label_98],  xmm0
	movdqa	xmmword ptr [rip + label_99],  xmm0
	movdqa	xmmword ptr [rip + word_fastmap],  xmm0
	mov	byte ptr [rip + label_98],  0
	mov	word ptr [rip + label_100],  0
	jmp	.label_72
.label_359:
	xor	ebx, ebx
	call	__ctype_b_loc
	nop	word ptr cs:[rax + rax]
.label_35:
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [rbx + word_fastmap],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 2]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [rbx + label_32],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 4]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [rbx + label_33],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 6]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [rbx + label_34],  cl
	add	rbx, 4
	cmp	rbx, 0x100
	jne	.label_35
	jmp	.label_72
.label_329:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_82
	nop	dword ptr [rax]
.label_114:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_329
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_82:
	dec	rbx
	cmp	rbx, 1
	jg	.label_114
	jmp	.label_229
.label_103:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_219
.label_231:
	mov	esi, 0x7b
	call	__overflow
	jmp	.label_334
.label_345:
	mov	esi, 0x7d
	call	__overflow
	jmp	.label_139
.label_401:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_159
.label_127:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_196
.label_132:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_165
.label_128:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_170
.label_330:
	mov	esi, 0x7b
	call	__overflow
	jmp	.label_301
.label_122:
	mov	esi, 0x7d
	call	__overflow
	jmp	.label_112
.label_189:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_112
.label_70:
	mov	esi, 0x3a
	call	__overflow
	jmp	.label_193
	nop	
.label_340:
	mov	qword ptr [rsp + 0x40], r12
	mov	r8, qword ptr [r14]
	mov	qword ptr [rip + keyafter],  r8
	mov	rcx, qword ptr [r14 + 8]
	lea	rbx, [r8 + rcx]
	mov	qword ptr [rip + label_56],  rbx
	mov	rax, qword ptr [r14 + 0x10]
	add	rax, r8
	mov	qword ptr [rsp + 0x18], rax
	mov	rdx, qword ptr [r14 + 0x18]
	lea	r15, [r8 + rdx]
	movsxd	rsi, dword ptr [r14 + 0x28]
	mov	rdi, qword ptr [rip + text_buffers]
	shl	rsi, 4
	mov	r13, qword ptr [rdi + rsi]
	mov	r12, qword ptr [rdi + rsi + 8]
	cmp	rcx, rdx
	jge	.label_251
	jmp	.label_228
	nop	word ptr cs:[rax + rax]
.label_259:
	movzx	ecx, byte ptr [rbx]
	cmp	byte ptr [rcx + word_fastmap],  0
	je	.label_235
	cmp	rbx, r15
	jae	.label_238
	inc	rbx
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_245:
	mov	rbx, rcx
	cmp	rbx, r15
	jae	.label_238
	movzx	edx, byte ptr [rbx]
	lea	rcx, [rbx + 1]
	cmp	byte ptr [rdx + word_fastmap],  0
	jne	.label_245
	jmp	.label_238
.label_235:
	inc	rbx
	jmp	.label_238
	nop	
.label_228:
	mov	rcx, qword ptr [rip + keyafter_max_width]
	add	rcx, r8
	cmp	rbx, rcx
	ja	.label_251
	mov	qword ptr [rip + label_56],  rbx
	cmp	qword ptr [rip + word_regex],  0
	je	.label_259
	mov	rdx, r15
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_73
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_241
	cmp	rax, -1
	mov	ecx, 1
	cmove	rax, rcx
	add	rbx, rax
	mov	r8, qword ptr [rip + keyafter]
.label_238:
	cmp	rbx, r15
	jb	.label_228
.label_251:
	mov	rcx, qword ptr [rip + keyafter_max_width]
	add	rcx, r8
	cmp	rbx, rcx
	jbe	.label_296
	mov	rbx, qword ptr [rip + label_56]
	jmp	.label_300
	nop	word ptr cs:[rax + rax]
.label_296:
	mov	qword ptr [rip + label_56],  rbx
.label_300:
	cmp	rbx, r15
	sbb	cl, cl
	cmp	qword ptr [rip + truncation_string],  0
	setne	dl
	and	dl, cl
	mov	byte ptr [rip + keyafter_truncation],  dl
	cmp	rbx, r8
	jbe	.label_179
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rax]
	dec	rbx
	nop	
.label_312:
	movzx	edx, byte ptr [rbx]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_179
	mov	qword ptr [rip + label_56],  rbx
	cmp	rbx, r8
	lea	rbx, [rbx - 1]
	ja	.label_312
.label_179:
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rcx, rbx
	neg	rcx
	mov	rdx, qword ptr [rip + maximum_word_length]
	add	rdx, qword ptr [rip + half_line_width]
	cmp	rdx, rcx
	jge	.label_320
	mov	rbx, r8
	sub	rbx, rdx
	cmp	qword ptr [rip + word_regex],  0
	je	.label_327
	mov	edi, OFFSET FLAT:label_73
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_241
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	add	rbx, rcx
	mov	r8, qword ptr [rip + keyafter]
	jmp	.label_293
.label_320:
	add	rbx, r8
.label_293:
	mov	qword ptr [rip + before],  rbx
	mov	qword ptr [rip + label_60],  r8
	cmp	r8, rbx
	mov	qword ptr [rsp + 0x28], r14
	jbe	.label_343
	mov	rax, qword ptr [rsp]
	mov	rsi, qword ptr [rax]
	lea	rdx, [r8 - 1]
	nop	word ptr cs:[rax + rax]
.label_361:
	mov	rcx, rdx
	movzx	edx, byte ptr [rcx]
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_358
	mov	qword ptr [rip + label_60],  rcx
	lea	rdx, [rcx - 1]
	cmp	rcx, rbx
	mov	r8, rcx
	ja	.label_361
	inc	rdx
	mov	r8, rcx
	jmp	.label_126
	nop	dword ptr [rax + rax]
.label_343:
	mov	rdx, r8
	jmp	.label_126
	nop	word ptr cs:[rax + rax]
.label_358:
	inc	rcx
	mov	rdx, rcx
.label_126:
	mov	r14, qword ptr [rip + before_max_width]
	lea	rcx, [rbx + r14]
	cmp	rcx, rdx
	jae	.label_371
	mov	rcx, rbx
	mov	rsi, rbx
.label_67:
	cmp	qword ptr [rip + word_regex],  0
	je	.label_242
	sub	rdx, rsi
	mov	edi, OFFSET FLAT:label_73
	xor	ecx, ecx
	xor	r8d, r8d
	call	rpl_re_match
	cmp	rax, -2
	je	.label_241
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	add	rcx, qword ptr [rip + before]
	mov	qword ptr [rip + before],  rcx
	mov	r14, qword ptr [rip + before_max_width]
	mov	r8, qword ptr [rip + label_60]
	mov	rdx, r8
	mov	rsi, rcx
	jmp	.label_41
	nop	word ptr [rax + rax]
.label_242:
	movzx	edi, byte ptr [rsi]
	cmp	byte ptr [rdi + word_fastmap],  0
	je	.label_243
	cmp	rsi, rdx
	jae	.label_41
	inc	rsi
	mov	rcx, rsi
	nop	word ptr [rax + rax]
.label_52:
	mov	rsi, rcx
	mov	qword ptr [rip + before],  rsi
	cmp	rsi, rdx
	jae	.label_46
	movzx	edi, byte ptr [rsi]
	lea	rcx, [rsi + 1]
	cmp	byte ptr [rdi + word_fastmap],  0
	jne	.label_52
	dec	rcx
	jmp	.label_41
.label_243:
	inc	rsi
	mov	qword ptr [rip + before],  rsi
.label_46:
	mov	rcx, rsi
.label_41:
	lea	rdi, [rsi + r14]
	cmp	rdi, rdx
	jb	.label_67
	jmp	.label_74
.label_371:
	mov	rcx, rbx
	mov	rsi, rbx
.label_74:
	cmp	qword ptr [rip + truncation_string],  0
	je	.label_79
	mov	rdi, rsi
	nop	word ptr cs:[rax + rax]
.label_113:
	mov	rdx, rdi
	cmp	rdx, r13
	jbe	.label_141
	lea	rdi, [rdx - 1]
	movzx	ebp, byte ptr [rdx - 1]
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	jne	.label_113
.label_141:
	cmp	qword ptr [rsp + 0x18], rdx
	setb	dl
	jmp	.label_123
	nop	dword ptr [rax + rax]
.label_79:
	xor	edx, edx
.label_123:
	mov	byte ptr [rip + before_truncation],  dl
	cmp	rsi, r12
	jae	.label_131
	mov	rax, qword ptr [rsp]
	mov	rdx, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_151:
	movzx	eax, byte ptr [rsi]
	test	byte ptr [rdx + rax*2 + 1], 0x20
	je	.label_131
	inc	rsi
	mov	qword ptr [rip + before],  rsi
	cmp	rsi, r12
	mov	rcx, rsi
	jb	.label_151
.label_131:
	sub	r14, r8
	add	r14, rcx
	sub	r14, qword ptr [rip + gap_size]
	test	r14, r14
	jle	.label_225
	mov	rax, qword ptr [rip + label_56]
	mov	qword ptr [rip + tail],  rax
	cmp	rax, r12
	jae	.label_176
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx]
	nop	dword ptr [rax]
.label_135:
	movzx	edx, byte ptr [rax]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_176
	inc	rax
	mov	qword ptr [rip + tail],  rax
	cmp	rax, r12
	jb	.label_135
.label_176:
	mov	qword ptr [rip + label_191],  rax
	mov	rbp, rax
	cmp	rax, r15
	jae	.label_192
	jmp	.label_200
	nop	
.label_372:
	movzx	ecx, byte ptr [rbp]
	cmp	byte ptr [rcx + word_fastmap],  0
	je	.label_188
	cmp	rbp, r15
	jae	.label_75
	inc	rbp
	mov	rcx, rbp
	nop	dword ptr [rax + rax]
.label_146:
	mov	rbp, rcx
	cmp	rbp, r15
	jae	.label_75
	movzx	edx, byte ptr [rbp]
	lea	rcx, [rbp + 1]
	cmp	byte ptr [rdx + word_fastmap],  0
	jne	.label_146
	jmp	.label_75
.label_188:
	inc	rbp
	jmp	.label_75
.label_200:
	mov	qword ptr [rip + label_191],  rbp
	cmp	qword ptr [rip + word_regex],  0
	je	.label_372
	mov	rdx, r15
	sub	rdx, rbp
	mov	edi, OFFSET FLAT:label_73
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbp
	call	rpl_re_match
	cmp	rax, -2
	je	.label_241
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	add	rbp, rcx
	mov	rax, qword ptr [rip + tail]
.label_75:
	lea	rcx, [rax + r14]
	cmp	rbp, r15
	jae	.label_335
	cmp	rbp, rcx
	jb	.label_200
.label_335:
	cmp	rbp, rcx
	jae	.label_366
.label_192:
	mov	r14, qword ptr [rsp + 0x28]
	mov	qword ptr [rip + label_191],  rbp
	jmp	.label_258
	nop	dword ptr [rax + rax]
.label_225:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rip + tail],  xmm0
	mov	byte ptr [rip + tail_truncation],  0
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_83
.label_327:
	movzx	ecx, byte ptr [rbx]
	cmp	byte ptr [rcx + word_fastmap],  0
	je	.label_130
	neg	rdx
	jns	.label_293
	lea	rcx, [r8 + rdx + 1]
	nop	dword ptr [rax + rax]
.label_299:
	mov	rbx, rcx
	cmp	rbx, r8
	jae	.label_293
	movzx	edx, byte ptr [rbx]
	lea	rcx, [rbx + 1]
	cmp	byte ptr [rdx + word_fastmap],  0
	jne	.label_299
	jmp	.label_293
.label_366:
	mov	rbp, qword ptr [rip + label_191]
	mov	r14, qword ptr [rsp + 0x28]
.label_258:
	cmp	rbp, rax
	jbe	.label_307
	mov	byte ptr [rip + keyafter_truncation],  0
	cmp	rbp, r15
	sbb	dl, dl
	cmp	qword ptr [rip + truncation_string],  0
	setne	cl
	and	cl, dl
	jmp	.label_322
	nop	dword ptr [rax]
.label_307:
	xor	ecx, ecx
.label_322:
	mov	byte ptr [rip + tail_truncation],  cl
	cmp	rbp, rax
	jbe	.label_83
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx]
	dec	rbp
	nop	word ptr [rax + rax]
.label_387:
	movzx	edx, byte ptr [rbp]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_83
	mov	qword ptr [rip + label_191],  rbp
	cmp	rbp, rax
	lea	rbp, [rbp - 1]
	ja	.label_387
	nop	dword ptr [rax + rax]
.label_83:
	mov	rbp, qword ptr [rip + keyafter_max_width]
	sub	rbp, qword ptr [rip + label_56]
	add	rbp, qword ptr [rip + keyafter]
	sub	rbp, qword ptr [rip + gap_size]
	test	rbp, rbp
	jle	.label_109
	mov	rdx, qword ptr [rip + before]
	mov	qword ptr [rip + label_142],  rdx
	cmp	rdx, r13
	jbe	.label_338
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	dec	rdx
	nop	word ptr cs:[rax + rax]
.label_143:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_378
	mov	qword ptr [rip + label_142],  rdx
	cmp	rdx, r13
	lea	rdx, [rdx - 1]
	ja	.label_143
.label_378:
	inc	rdx
.label_338:
	mov	qword ptr [rip + head],  rbx
	lea	rax, [rbx + rbp]
	cmp	rax, rdx
	mov	r12, qword ptr [rsp + 0x40]
	jae	.label_357
	jmp	.label_38
	nop	dword ptr [rax + rax]
.label_232:
	movzx	eax, byte ptr [rbx]
	cmp	byte ptr [rax + word_fastmap],  0
	je	.label_349
	cmp	rbx, rdx
	jae	.label_175
	inc	rbx
	mov	rax, rbx
	nop	dword ptr [rax + rax]
.label_207:
	mov	rbx, rax
	mov	qword ptr [rip + head],  rbx
	cmp	rbx, rdx
	jae	.label_175
	movzx	ecx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	cmp	byte ptr [rcx + word_fastmap],  0
	jne	.label_207
	jmp	.label_175
.label_349:
	inc	rbx
	mov	qword ptr [rip + head],  rbx
	jmp	.label_175
	nop	dword ptr [rax]
.label_38:
	cmp	qword ptr [rip + word_regex],  0
	je	.label_232
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_73
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_187
	cmp	rax, -1
	mov	ebx, 1
	cmovne	rbx, rax
	add	rbx, qword ptr [rip + head]
	mov	qword ptr [rip + head],  rbx
	mov	rdx, qword ptr [rip + label_142]
.label_175:
	lea	rax, [rbx + rbp]
	cmp	rax, rdx
	jb	.label_38
.label_357:
	cmp	rdx, rbx
	jbe	.label_37
	mov	byte ptr [rip + before_truncation],  0
	cmp	qword ptr [rsp + 0x18], rbx
	sbb	cl, cl
	cmp	qword ptr [rip + truncation_string],  0
	setne	al
	and	al, cl
	jmp	.label_337
	nop	word ptr cs:[rax + rax]
.label_109:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rip + head],  xmm0
	mov	byte ptr [rip + head_truncation],  0
	mov	r12, qword ptr [rsp + 0x40]
	jmp	.label_68
	nop	word ptr [rax + rax]
.label_37:
	xor	eax, eax
.label_337:
	mov	byte ptr [rip + head_truncation],  al
	cmp	rbx, rdx
	jae	.label_68
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_101:
	movzx	ecx, byte ptr [rbx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_68
	inc	rbx
	mov	qword ptr [rip + head],  rbx
	cmp	rbx, rdx
	jb	.label_101
	nop	dword ptr [rax]
.label_68:
	cmp	byte ptr [rip + auto_reference],  1
	jne	.label_119
	movsxd	rax, dword ptr [r14 + 0x28]
	mov	rcx, qword ptr [rip + input_file_name]
	mov	rsi, qword ptr [rcx + rax*8]
	test	rsi, rsi
	mov	ecx, OFFSET FLAT:label_71
	cmove	rsi, rcx
	mov	rbx, qword ptr [r14 + 0x20]
	inc	rbx
	test	rax, rax
	jle	.label_377
	mov	rcx, qword ptr [rip + file_line_count]
	sub	rbx, qword ptr [rcx + rax*8 - 8]
.label_377:
	mov	rdi, qword ptr [rip + reference]
	call	stpcpy
	mov	rbp, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_150
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, rbx
	call	__sprintf_chk
	cdqe	
	add	rax, rbp
	mov	qword ptr [rip + label_169],  rax
	jmp	.label_166
	nop	word ptr [rax + rax]
.label_119:
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_166
	mov	rax, qword ptr [rip + keyafter]
	add	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rip + reference],  rax
	mov	qword ptr [rip + label_169],  rax
	cmp	rax, r15
	jae	.label_166
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx]
	nop	
.label_198:
	movzx	edx, byte ptr [rax]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	jne	.label_166
	inc	rax
	mov	qword ptr [rip + label_169],  rax
	cmp	rax, r15
	jb	.label_198
	nop	dword ptr [rax]
.label_166:
	mov	eax, dword ptr [rip + output_format]
	cmp	eax, 2
	jb	.label_352
	je	.label_212
	cmp	eax, 3
	jne	.label_219
	mov	rdx, qword ptr [rip + macro_name]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_222
	xor	eax, eax
	call	__printf_chk
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_231
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7b
.label_334:
	mov	rdi, qword ptr [rip + tail]
	mov	rsi, qword ptr [rip + label_191]
	call	print_field
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_246
	call	fputs_unlocked
	mov	rdi, qword ptr [rip + before]
	mov	rsi, qword ptr [rip + label_60]
	call	print_field
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_246
	call	fputs_unlocked
	mov	rbp, qword ptr [rip + keyafter]
	mov	r15, qword ptr [rip + label_56]
	cmp	qword ptr [rip + word_regex],  0
	je	.label_250
	mov	rdx, r15
	sub	rdx, rbp
	mov	edi, OFFSET FLAT:label_73
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbp
	call	rpl_re_match
	cmp	rax, -2
	je	.label_187
	cmp	rax, -1
	mov	ebx, 1
	cmovne	rbx, rax
	add	rbx, rbp
.label_168:
	mov	rdi, rbp
	mov	rsi, rbx
	call	print_field
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_246
	call	fputs_unlocked
	mov	rdi, rbx
	mov	rsi, r15
	call	print_field
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_246
	call	fputs_unlocked
	mov	rdi, qword ptr [rip + head]
	mov	rsi, qword ptr [rip + label_142]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_345
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7d
.label_139:
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_324
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_112
.label_324:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_330
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7b
.label_301:
	mov	rdi, qword ptr [rip + reference]
	mov	rsi, qword ptr [rip + label_169]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_122
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7d
	jmp	.label_112
	nop	word ptr cs:[rax + rax]
.label_352:
	mov	al, byte ptr [rip + right_reference]
	test	al, al
	jne	.label_230
	mov	bl, byte ptr [rip + auto_reference]
	mov	rdi, qword ptr [rip + reference]
	mov	rsi, qword ptr [rip + label_169]
	call	print_field
	cmp	bl, 1
	jne	.label_362
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_70
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x3a
.label_193:
	mov	rax, qword ptr [rip + gap_size]
	add	rax, qword ptr [rip + reference_max_width]
	mov	rbx, qword ptr [rip + reference]
	sub	rbx, qword ptr [rip + label_169]
	add	rbx, rax
	cmp	rbx, 2
	jl	.label_230
	jmp	.label_136
.label_212:
	mov	rdx, qword ptr [rip + macro_name]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_381
	xor	eax, eax
	call	__printf_chk
	mov	rdi, qword ptr [rip + tail]
	mov	rsi, qword ptr [rip + label_191]
	call	print_field
	cmp	byte ptr [rip + tail_truncation],  0
	je	.label_218
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_218:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_401
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_159:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_43
	call	fputs_unlocked
	cmp	byte ptr [rip + before_truncation],  0
	je	.label_157
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_157:
	mov	rdi, qword ptr [rip + before]
	mov	rsi, qword ptr [rip + label_60]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_127
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_196:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_43
	call	fputs_unlocked
	mov	rdi, qword ptr [rip + keyafter]
	mov	rsi, qword ptr [rip + label_56]
	call	print_field
	cmp	byte ptr [rip + keyafter_truncation],  0
	je	.label_403
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_403:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_132
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_165:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_43
	call	fputs_unlocked
	cmp	byte ptr [rip + head_truncation],  0
	je	.label_158
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_158:
	mov	rdi, qword ptr [rip + head]
	mov	rsi, qword ptr [rip + label_142]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_128
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_170:
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_190
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_112
.label_190:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_43
	call	fputs_unlocked
	mov	rdi, qword ptr [rip + reference]
	mov	rsi, qword ptr [rip + label_169]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_189
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
	jmp	.label_112
.label_362:
	mov	rax, qword ptr [rip + reference_max_width]
	mov	rdx, qword ptr [rip + gap_size]
	lea	rdi, [rdx + rax]
	mov	rcx, qword ptr [rip + label_169]
	mov	rbp, qword ptr [rip + reference]
	mov	rsi, rbp
	sub	rsi, rcx
	add	rsi, rdi
	test	rsi, rsi
	jle	.label_230
	add	rbp, rdx
	lea	rbx, [rax + rbp + 1]
	sub	rbx, rcx
	jmp	.label_244
.label_250:
	movzx	eax, byte ptr [rbp]
	cmp	byte ptr [rax + word_fastmap],  0
	je	.label_248
	cmp	rbp, r15
	mov	rbx, rbp
	jae	.label_168
	lea	rax, [rbp + 1]
	nop	word ptr cs:[rax + rax]
.label_288:
	mov	rbx, rax
	cmp	rbx, r15
	jae	.label_168
	movzx	ecx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	cmp	byte ptr [rcx + word_fastmap],  0
	jne	.label_288
	jmp	.label_168
.label_130:
	inc	rbx
	jmp	.label_293
.label_248:
	lea	rbx, [rbp + 1]
	jmp	.label_168
.label_233:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_210
	nop	
.label_244:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_233
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_210:
	dec	rbx
	cmp	rbx, 1
	jg	.label_244
	jmp	.label_230
.label_183:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_318
	nop	word ptr cs:[rax + rax]
.label_136:
	dec	rbx
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_183
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_318:
	cmp	rbx, 1
	jg	.label_136
	nop	word ptr cs:[rax + rax]
.label_230:
	mov	rdi, qword ptr [rip + tail]
	mov	rsi, qword ptr [rip + label_191]
	cmp	rdi, rsi
	jae	.label_240
	call	print_field
	cmp	byte ptr [rip + tail_truncation],  0
	je	.label_328
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	cl, byte ptr [rip + tail_truncation]
	jmp	.label_237
.label_240:
	mov	rbp, qword ptr [rip + half_line_width]
	mov	rcx, qword ptr [rip + gap_size]
	mov	rax, qword ptr [rip + label_60]
	mov	rsi, qword ptr [rip + before]
	xor	edi, edi
	sub	rdi, qword ptr [rip + truncation_string_length]
	cmp	byte ptr [rip + before_truncation],  0
	mov	edx, 0
	cmove	rdi, rdx
	mov	rdx, rbp
	sub	rdx, rcx
	sub	rdx, rax
	add	rdx, rsi
	add	rdx, rdi
	test	rdx, rdx
	jle	.label_104
	add	rdi, rbp
	lea	rbx, [rsi + rdi + 1]
	sub	rbx, rcx
	sub	rbx, rax
	jmp	.label_64
.label_328:
	xor	ecx, ecx
.label_237:
	mov	rdx, qword ptr [rip + half_line_width]
	mov	r9, qword ptr [rip + gap_size]
	mov	r8, qword ptr [rip + label_60]
	mov	rsi, qword ptr [rip + before]
	xor	ebx, ebx
	sub	rbx, qword ptr [rip + truncation_string_length]
	cmp	byte ptr [rip + before_truncation],  0
	mov	ebp, 0
	cmovne	rbp, rbx
	mov	rdi, qword ptr [rip + label_191]
	mov	rax, qword ptr [rip + tail]
	test	cl, cl
	mov	ecx, 0
	cmove	rbx, rcx
	mov	rcx, rdx
	sub	rcx, r9
	sub	rcx, r8
	add	rcx, rsi
	add	rcx, rbp
	sub	rcx, rdi
	add	rcx, rbx
	add	rcx, rax
	test	rcx, rcx
	jle	.label_104
	add	rbp, rbx
	add	rbp, rdx
	add	rbp, rsi
	lea	rbx, [rax + rbp + 1]
	sub	rbx, r9
	sub	rbx, r8
	sub	rbx, rdi
	jmp	.label_308
.label_63:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_304
	nop	word ptr cs:[rax + rax]
.label_64:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_63
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_304:
	dec	rbx
	cmp	rbx, 1
	jg	.label_64
	jmp	.label_104
.label_388:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_265
	nop	word ptr cs:[rax + rax]
.label_308:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_388
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_265:
	dec	rbx
	cmp	rbx, 1
	jg	.label_308
.label_104:
	cmp	byte ptr [rip + before_truncation],  0
	je	.label_263
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_263:
	mov	rdi, qword ptr [rip + before]
	mov	rsi, qword ptr [rip + label_60]
	call	print_field
	mov	rbx, qword ptr [rip + gap_size]
	test	rbx, rbx
	jle	.label_110
	inc	rbx
	jmp	.label_140
.label_211:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_124
	nop	word ptr cs:[rax + rax]
.label_140:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_211
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_124:
	dec	rbx
	cmp	rbx, 1
	jg	.label_140
.label_110:
	mov	rdi, qword ptr [rip + keyafter]
	mov	rsi, qword ptr [rip + label_56]
	call	print_field
	cmp	byte ptr [rip + keyafter_truncation],  0
	je	.label_160
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_160:
	mov	rcx, qword ptr [rip + head]
	mov	rsi, qword ptr [rip + label_142]
	mov	rdi, rcx
	sub	rdi, rsi
	jae	.label_178
	mov	r9, qword ptr [rip + half_line_width]
	mov	r8, qword ptr [rip + label_56]
	xor	edx, edx
	sub	rdx, qword ptr [rip + truncation_string_length]
	cmp	byte ptr [rip + keyafter_truncation],  0
	mov	r10, qword ptr [rip + keyafter]
	mov	ebx, 0
	cmovne	rbx, rdx
	mov	al, byte ptr [rip + head_truncation]
	test	al, al
	mov	ebp, 0
	cmove	rdx, rbp
	add	rdi, r9
	sub	rdi, r8
	add	rdi, r10
	add	rdi, rbx
	add	rdi, rdx
	test	rdi, rdi
	jle	.label_57
	add	rbx, rdx
	add	rbx, rcx
	add	rbx, r9
	lea	rbx, [r10 + rbx + 1]
	sub	rbx, rsi
	sub	rbx, r8
	jmp	.label_217
.label_178:
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_226
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_229
.label_226:
	cmp	byte ptr [rip + right_reference],  1
	jne	.label_229
	mov	rcx, qword ptr [rip + half_line_width]
	mov	rax, qword ptr [rip + label_56]
	mov	rdx, qword ptr [rip + keyafter]
	xor	esi, esi
	sub	rsi, qword ptr [rip + truncation_string_length]
	cmp	byte ptr [rip + keyafter_truncation],  0
	mov	edi, 0
	cmove	rsi, rdi
	mov	rdi, rcx
	sub	rdi, rax
	add	rdi, rdx
	add	rdi, rsi
	test	rdi, rdi
	jle	.label_229
	add	rsi, rcx
	lea	rbx, [rdx + rsi + 1]
	sub	rbx, rax
	jmp	.label_114
.label_353:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_50
	nop	dword ptr [rax]
.label_217:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_353
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_50:
	dec	rbx
	cmp	rbx, 1
	jg	.label_217
	mov	al, byte ptr [rip + head_truncation]
.label_57:
	test	al, al
	je	.label_295
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_295:
	mov	rdi, qword ptr [rip + head]
	mov	rsi, qword ptr [rip + label_142]
	call	print_field
.label_229:
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_289
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_112
.label_289:
	cmp	byte ptr [rip + right_reference],  1
	jne	.label_112
	mov	rbx, qword ptr [rip + gap_size]
	test	rbx, rbx
	jle	.label_342
	inc	rbx
	jmp	.label_310
.label_316:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_227
	nop	
.label_310:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_316
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_227:
	dec	rbx
	cmp	rbx, 1
	jg	.label_310
.label_342:
	mov	rdi, qword ptr [rip + reference]
	mov	rsi, qword ptr [rip + label_169]
	call	print_field
	nop	dword ptr [rax + rax]
.label_112:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_103
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_219:
	add	r14, 0x30
	inc	r12
	cmp	r12, qword ptr [rip + number_of_occurs.0]
	jl	.label_340
.label_341:
	xor	eax, eax
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_111:
	call	matcher_error
.label_241:
	call	matcher_error
.label_187:
	call	matcher_error
.label_394:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + context_regex]
.label_370:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_398:
	call	matcher_error
.label_149:
	cmp	eax, 0xffffff7d
	je	.label_364
	cmp	eax, 0xffffff7e
	jne	.label_367
	xor	edi, edi
	call	usage
.label_367:
	mov	edi, 1
	call	usage
.label_364:
	mov	r14, qword ptr [rip + stdout]
	mov	rbp, qword ptr [rip + Version]
	mov	edi, OFFSET FLAT:label_374
	mov	esi, OFFSET FLAT:label_375
	call	proper_name_utf8
	mov	rbx, rax
	mov	esi, OFFSET FLAT:label_25
	mov	edx, OFFSET FLAT:label_23
	xor	r9d, r9d
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	version_etc
	xor	edi, edi
	call	exit
.label_261:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
	jmp	.label_391
.label_297:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
.label_391:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	jmp	.label_370
.label_76:
	call	xalloc_die
.label_47:
	call	xalloc_die
.label_53:
	call	xalloc_die
.label_61:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [rbx + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_51:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	movsxd	rax, dword ptr [rip + optind]
	mov	rdx, qword ptr [rbx + rax*8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_78
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404880

	.globl copy_unescaped_string
	.type copy_unescaped_string, @function
copy_unescaped_string:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rdi, [rax + 1]
	call	xmalloc
	mov	r14, rax
	mov	cl, byte ptr [rbx]
	test	cl, cl
	mov	r15, r14
	je	.label_412
	mov	r15, r14
	jmp	.label_408
.label_2908:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rax]
	movzx	edx, byte ptr [rbx + 2]
	test	byte ptr [rdi + rdx*2 + 1], 0x10
	jne	.label_420
	add	rbx, 2
	mov	word ptr [r15], 0x785c
.label_413:
	add	r15, 2
	jmp	.label_424
.label_421:
	add	rbx, 2
	xor	ecx, ecx
	jmp	.label_427
.label_420:
	movsx	ecx, dl
	mov	eax, ecx
	add	al, 0x9f
	cmp	al, 5
	ja	.label_411
	add	ecx, -0x57
	jmp	.label_431
.label_425:
	add	rbx, 3
	jmp	.label_427
.label_411:
	add	dl, 0xbf
	cmp	dl, 5
	ja	.label_432
	add	ecx, -0x37
	jmp	.label_431
.label_429:
	add	rbx, 4
.label_427:
	mov	rax, rbx
	mov	byte ptr [r15], cl
	jmp	.label_405
.label_432:
	add	ecx, -0x30
.label_431:
	movzx	esi, byte ptr [rbx + 3]
	test	byte ptr [rdi + rsi*2 + 1], 0x10
	jne	.label_409
	add	rbx, 3
	jmp	.label_407
.label_409:
	movsx	edx, sil
	shl	ecx, 4
	mov	eax, edx
	add	al, 0x9f
	cmp	al, 6
	jae	.label_415
	add	edx, -0x57
	jmp	.label_419
.label_415:
	add	sil, 0xbf
	cmp	sil, 6
	jae	.label_416
	add	edx, -0x37
	jmp	.label_419
.label_416:
	add	edx, -0x30
.label_419:
	add	edx, ecx
	movzx	esi, byte ptr [rbx + 4]
	test	byte ptr [rdi + rsi*2 + 1], 0x10
	jne	.label_423
	add	rbx, 4
	mov	rax, rbx
	mov	ecx, edx
	mov	byte ptr [r15], cl
	jmp	.label_405
.label_423:
	movsx	ecx, sil
	shl	edx, 4
	mov	eax, ecx
	add	al, 0x9f
	cmp	al, 6
	jae	.label_430
	add	ecx, -0x57
	jmp	.label_406
.label_430:
	add	sil, 0xbf
	cmp	sil, 6
	jae	.label_428
	add	ecx, -0x37
	jmp	.label_406
.label_428:
	add	ecx, -0x30
.label_406:
	add	ecx, edx
	add	rbx, 5
.label_407:
	mov	rax, rbx
	mov	byte ptr [r15], cl
	jmp	.label_405
	nop	word ptr [rax + rax]
.label_408:
	lea	rax, [rbx + 1]
	cmp	cl, 0x5c
	jne	.label_414
	mov	cl, byte ptr [rax]
	movsx	edx, cl
	lea	esi, [rdx - 0x30]
	cmp	esi, 0x48
	ja	.label_417
	jmp	qword ptr [(rsi * 8) + label_422]
.label_2898:
	movsx	ecx, byte ptr [rbx + 2]
	mov	eax, ecx
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_421
	add	ecx, -0x30
	movsx	eax, byte ptr [rbx + 3]
	mov	edx, eax
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_425
	lea	ecx, [rax + rcx*8 - 0x30]
	movsx	eax, byte ptr [rbx + 4]
	mov	edx, eax
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_429
	lea	ecx, [rax + rcx*8 - 0x30]
	add	rbx, 5
	jmp	.label_427
	nop	word ptr cs:[rax + rax]
.label_414:
	mov	byte ptr [r15], cl
.label_405:
	inc	r15
	jmp	.label_410
.label_417:
	test	edx, edx
	je	.label_410
.label_2899:
	mov	byte ptr [r15], 0x5c
	mov	al, byte ptr [rbx + 1]
	add	rbx, 2
	mov	byte ptr [r15 + 1], al
	jmp	.label_413
.label_2900:
	mov	byte ptr [r15], 7
	jmp	.label_418
.label_2903:
	mov	byte ptr [r15], 0xc
	jmp	.label_418
.label_2901:
	mov	byte ptr [r15], 8
	jmp	.label_418
.label_2902:
	test	cl, cl
	je	.label_410
	inc	rbx
	mov	rax, rbx
	nop	dword ptr [rax]
.label_426:
	cmp	byte ptr [rax + 1], 0
	lea	rax, [rax + 1]
	jne	.label_426
	jmp	.label_410
.label_2904:
	mov	byte ptr [r15], 0xa
	jmp	.label_418
.label_2905:
	mov	byte ptr [r15], 0xd
	jmp	.label_418
.label_2906:
	mov	byte ptr [r15], 9
	jmp	.label_418
.label_2907:
	mov	byte ptr [r15], 0xb
	nop	word ptr cs:[rax + rax]
.label_418:
	inc	r15
	add	rbx, 2
.label_424:
	mov	rax, rbx
.label_410:
	mov	cl, byte ptr [rax]
	test	cl, cl
	mov	rbx, rax
	jne	.label_408
.label_412:
	mov	byte ptr [r15], 0
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ab0

	.globl digest_word_file
	.type digest_word_file, @function
digest_word_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	lea	rsi, [rsp + 8]
	call	swallow_file_in_memory
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	mov	rbx, qword ptr [rsp + 8]
	mov	r13, qword ptr [rsp + 0x10]
	xor	esi, esi
	cmp	rbx, r13
	mov	edi, 0
	jae	.label_435
	xor	edi, edi
	movabs	r12, 0x555555555555555
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_441:
	cmp	rbx, r13
	jae	.label_436
	mov	rbp, rbx
	nop	dword ptr [rax + rax]
.label_439:
	cmp	byte ptr [rbp], 0xa
	je	.label_440
	inc	rbp
	cmp	rbp, r13
	jb	.label_439
.label_440:
	mov	r15, rbp
	sub	r15, rbx
	jbe	.label_437
	cmp	rsi, qword ptr [r14 + 8]
	jne	.label_442
	test	rdi, rdi
	je	.label_443
	cmp	rsi, r12
	jae	.label_433
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_434
	nop	word ptr [rax + rax]
.label_436:
	mov	rbp, rbx
	jmp	.label_437
.label_443:
	test	rsi, rsi
	mov	eax, 8
	cmove	rsi, rax
	mov	rax, rsi
	shr	rax, 0x3b
	jne	.label_438
.label_434:
	mov	qword ptr [r14 + 8], rsi
	shl	rsi, 4
	call	xrealloc
	mov	rdi, rax
	mov	qword ptr [r14], rdi
	mov	rsi, qword ptr [r14 + 0x10]
.label_442:
	mov	rax, rsi
	shl	rax, 4
	mov	qword ptr [rdi + rax], rbx
	mov	qword ptr [rdi + rax + 8], r15
	inc	rsi
	mov	qword ptr [r14 + 0x10], rsi
.label_437:
	lea	rbx, [rbp + 1]
	cmp	rbp, r13
	cmovae	rbx, rbp
	cmp	rbx, r13
	jb	.label_441
.label_435:
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_words
	call	qsort
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_433:
	call	xalloc_die
.label_438:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bf0

	.globl swallow_file_in_memory
	.type swallow_file_in_memory, @function
swallow_file_in_memory:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_446
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_446
	cmp	al, 0x2d
	jne	.label_445
	cmp	byte ptr [rbx + 1], 0
	je	.label_446
.label_445:
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	read_file
	mov	qword ptr [r14], rax
	jmp	.label_444
.label_446:
	mov	rdi, qword ptr [rip + stdin]
	lea	rsi, [rsp + 8]
	call	fread_file
	mov	qword ptr [r14], rax
	mov	ebx, OFFSET FLAT:label_447
.label_444:
	test	rax, rax
	je	.label_448
	add	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14 + 8], rax
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_448:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_78
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c90

	.globl compile_regex
	.type compile_regex, @function
compile_regex:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, qword ptr [rdi]
	lea	rax, [rdi + 0x48]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 8], xmm0
	mov	qword ptr [rdi + 0x28], rax
	mov	al, byte ptr [rip + ignore_case]
	mov	ecx, OFFSET FLAT:folded_chars
	xor	edx, edx
	test	al, al
	cmovne	rdx, rcx
	mov	qword ptr [rdi + 0x30], rdx
	lea	rbx, [rdi + 8]
	mov	rdi, r15
	call	strlen
	mov	rdi, r15
	mov	rsi, rax
	mov	rdx, rbx
	call	rpl_re_compile_pattern
	mov	r14, rax
	test	r14, r14
	jne	.label_450
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	rpl_re_compile_fastmap
.label_450:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_449
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r15
	call	quote
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d30

	.globl compare_words
	.type compare_words, @function
compare_words:
	mov	r8, qword ptr [rdi + 8]
	mov	r9, qword ptr [rsi + 8]
	cmp	r8, r9
	mov	rdx, r9
	cmovle	rdx, r8
	mov	al, byte ptr [rip + ignore_case]
	test	al, al
	je	.label_454
	test	rdx, rdx
	jle	.label_452
	mov	r10, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_455:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rax + folded_chars]
	movzx	edi, byte ptr [rsi + rcx]
	movzx	edi, byte ptr [rdi + folded_chars]
	sub	eax, edi
	jne	.label_451
	inc	rcx
	cmp	rcx, rdx
	jl	.label_455
	jmp	.label_452
.label_454:
	test	rdx, rdx
	jle	.label_452
	mov	r10, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_453:
	movzx	eax, byte ptr [r10 + rdi]
	movzx	ecx, byte ptr [rsi + rdi]
	sub	eax, ecx
	jne	.label_451
	inc	rdi
	cmp	rdi, rdx
	jl	.label_453
.label_452:
	xor	ecx, ecx
	cmp	r8, r9
	setg	cl
	mov	eax, 0xffffffff
	cmovge	eax, ecx
.label_451:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dd0

	.globl matcher_error
	.type matcher_error, @function
matcher_error:
	push	rbx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_456
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
	#Procedure 0x404e00

	.globl compare_occurs
	.type compare_occurs, @function
compare_occurs:
	push	rbx
	mov	r8, qword ptr [rdi + 8]
	mov	r9, qword ptr [rsi + 8]
	cmp	r8, r9
	mov	rdx, r9
	cmovle	rdx, r8
	mov	al, byte ptr [rip + ignore_case]
	test	al, al
	je	.label_457
	test	rdx, rdx
	jle	.label_460
	mov	r10, qword ptr [rdi]
	mov	r11, qword ptr [rsi]
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_459:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rax + folded_chars]
	movzx	ebx, byte ptr [r11 + rcx]
	movzx	ebx, byte ptr [rbx + folded_chars]
	sub	eax, ebx
	jne	.label_458
	inc	rcx
	cmp	rcx, rdx
	jl	.label_459
	jmp	.label_460
.label_457:
	test	rdx, rdx
	jle	.label_460
	mov	r10, qword ptr [rdi]
	mov	r11, qword ptr [rsi]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_461:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	ebx, byte ptr [r11 + rcx]
	sub	eax, ebx
	jne	.label_458
	inc	rcx
	cmp	rcx, rdx
	jl	.label_461
.label_460:
	mov	eax, 0xffffffff
	cmp	r8, r9
	jl	.label_458
	mov	eax, 1
	jg	.label_458
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	mov	eax, 0xffffffff
	jb	.label_458
	cmp	rdx, rcx
	sbb	eax, eax
	and	eax, 1
.label_458:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ec0

	.globl print_field
	.type print_field, @function
print_field:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	r15, r14
	jae	.label_480
	mov	r12d, OFFSET FLAT:label_487
	jmp	.label_488
.label_484:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_491
	call	fputs_unlocked
	jmp	.label_462
.label_463:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_493
	call	fputs_unlocked
	jmp	.label_462
.label_483:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_465
	call	fputs_unlocked
	jmp	.label_462
.label_472:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_490
	call	fputs_unlocked
	jmp	.label_462
.label_471:
	mov	esi, r13d
	call	__overflow
	jmp	.label_462
	.section	.text
	.align	32
	#Procedure 0x405210

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405220

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_504
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_498:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_503
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_500
	cmp	qword ptr [rsp + 8], -1
	je	.label_502
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_501
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_503
.label_501:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_503
.label_502:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_503:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_498
	jmp	.label_499
.label_504:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_499:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_500:
	mov	rax, rbp
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
	#Procedure 0x405320

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_505
	mov	esi, OFFSET FLAT:label_506
	jmp	.label_507
.label_505:
	mov	esi, OFFSET FLAT:label_508
.label_507:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	32
	#Procedure 0x405390

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	rbp, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_513
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_510
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_515:
	test	r15, r15
	je	.label_509
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_514
.label_509:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_511
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_517
	nop	word ptr cs:[rax + rax]
.label_514:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_516
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_517:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_515
.label_510:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_512
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_512:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054c0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_518
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_518:
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
	#Procedure 0x405530
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_519
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_520:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_519
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_520
.label_519:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_526
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_522
	cmp	dword ptr [rbp], 0x20
	jne	.label_522
.label_526:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_524
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_522:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_521
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_523
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_78
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_524:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_523:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_525
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
	#Procedure 0x405680

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	call	fileno
	xor	r12d, r12d
	test	eax, eax
	je	.label_532
	cmp	eax, 1
	je	.label_536
	cmp	eax, 2
	je	.label_538
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_538:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_530
.label_532:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_534
.label_536:
	xor	r15d, r15d
.label_530:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_527
	mov	edi, OFFSET FLAT:label_531
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_527
	mov	r13b, 1
	jmp	.label_535
.label_527:
	test	r12b, r12b
	je	.label_539
	mov	edi, OFFSET FLAT:label_531
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_537
.label_539:
	test	r15b, r15b
	je	.label_534
	mov	edi, OFFSET FLAT:label_531
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_535
.label_534:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_529
.label_537:
	mov	r12b, 1
.label_535:
	xor	r14d, r14d
	test	eax, eax
	js	.label_529
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_529:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_541
	mov	edi, 2
	call	close
.label_541:
	test	r12b, r12b
	je	.label_528
	mov	edi, 1
	call	close
.label_528:
	test	r13b, r13b
	je	.label_533
	xor	edi, edi
	call	close
.label_533:
	test	r14, r14
	jne	.label_540
	mov	dword ptr [rbx], ebp
.label_540:
	mov	rax, r14
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
	#Procedure 0x4057d0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_545
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_547
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_542
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_547
	mov	esi, OFFSET FLAT:label_544
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_543
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_543:
	mov	rbx, r14
.label_547:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_545:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_546
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405880
	.globl proper_name
	.type proper_name, @function
proper_name:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	r14, rax
	cmp	r14, rbx
	je	.label_550
	mov	rdi, r14
	mov	rsi, rbx
	call	mbsstr_trimmed_wordbounded
	test	al, al
	je	.label_549
	mov	rbx, r14
	jmp	.label_550
.label_549:
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	mov	rdi, rbx
	call	strlen
	lea	rdi, [r15 + rax + 4]
	call	xmalloc
	mov	r15, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_548
	xor	eax, eax
	mov	rdi, r15
	mov	r8, r14
	mov	r9, rbx
	call	__sprintf_chk
	mov	rbx, r15
.label_550:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405900

	.globl mbsstr_trimmed_wordbounded
	.type mbsstr_trimmed_wordbounded, @function
mbsstr_trimmed_wordbounded:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	rax, rsi
	mov	rbp, rdi
	mov	esi, 2
	mov	rdi, rax
	call	trim2
	mov	r14, rax
	cmp	byte ptr [rbp], 0
	je	.label_557
	lea	r12, [rsp + 8]
	lea	r15, [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_552:
	mov	rdi, rbp
	mov	rsi, r14
	call	mbsstr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_557
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_567
	mov	qword ptr [rsp + 0x18], rbp
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	r13b, 1
	cmp	rbp, rbx
	jae	.label_560
	nop	word ptr cs:[rax + rax]
.label_559:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	mov	rdi, rax
	shr	rdi, 0x20
	test	al, al
	je	.label_554
	test	edi, edi
	je	.label_562
.label_554:
	mov	rcx, qword ptr [rsp + 0x18]
	add	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rsp + 0x14], 0
	cmp	rcx, rbx
	jb	.label_559
	test	al, al
	je	.label_560
	call	iswalnum
	test	eax, eax
	sete	r13b
.label_560:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	qword ptr [rsp + 0x58], r14
	mov	byte ptr [rsp + 0x48], 0
	mov	qword ptr [rsp + 0x4c], 0
	jmp	.label_566
	nop	word ptr cs:[rax + rax]
.label_565:
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rax, qword ptr [rsp + 0x60]
	add	qword ptr [rsp + 0x58], rax
.label_566:
	mov	byte ptr [rsp + 0x54], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	je	.label_563
	shr	rax, 0x20
	je	.label_561
.label_563:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_565
	shr	rax, 0x20
	jne	.label_565
	jmp	.label_562
	nop	word ptr cs:[rax + rax]
.label_567:
	mov	r15, r14
	mov	r13b, 1
	cmp	rbp, rbx
	mov	r14b, 1
	jae	.label_568
	movzx	ebp, byte ptr [rbx - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r14b
.label_568:
	mov	rdi, r15
	call	strlen
	movzx	ebp, byte ptr [rbx + rax]
	test	rbp, rbp
	je	.label_555
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r13b
.label_555:
	mov	bpl, 1
	test	r14b, r13b
	mov	r14, r15
	jne	.label_556
	cmp	byte ptr [rbx], 0
	je	.label_557
	inc	rbx
	mov	rbp, rbx
	lea	r15, [rsp + 0x48]
	jmp	.label_564
	nop	dword ptr [rax + rax]
.label_561:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	mov	rdi, rax
	shr	rdi, 0x20
	test	edi, edi
	sete	cl
	test	al, al
	setne	dl
	test	al, al
	mov	bpl, 1
	mov	al, 1
	je	.label_558
	and	dl, cl
	mov	al, 1
	jne	.label_558
	call	iswalnum
	test	eax, eax
	sete	al
.label_558:
	test	r13b, r13b
	je	.label_553
	test	al, al
	jne	.label_556
.label_553:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_551
	shr	rax, 0x20
	je	.label_557
.label_551:
	add	rbx, qword ptr [rsp + 0x20]
	mov	rbp, rbx
.label_564:
	cmp	byte ptr [rbp], 0
	jne	.label_552
.label_557:
	xor	ebp, ebp
.label_556:
	mov	rdi, r14
	call	free
	mov	eax, ebp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_562:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b90

	.globl proper_name_utf8
	.type proper_name_utf8, @function
proper_name_utf8:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r12, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r12
	call	dcgettext
	mov	rbx, rax
	call	locale_charset
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_573
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_574
	mov	qword ptr [rsp + 0x10], rbx
	mov	esi, OFFSET FLAT:label_573
	mov	rdi, r13
	mov	rdx, r14
	call	xstr_iconv
	mov	r15, rax
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0xb]
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	movabs	rax, 0x4c534e4152542f2f
	mov	qword ptr [rbp + rbx], rax
	mov	byte ptr [rbp + rbx + 0xa], 0
	mov	word ptr [rbp + rbx + 8], 0x5449
	mov	esi, OFFSET FLAT:label_573
	mov	rdi, r13
	mov	rdx, rbp
	call	xstr_iconv
	mov	r13, rax
	mov	rdi, rbp
	call	free
	test	r13, r13
	je	.label_575
	mov	esi, 0x3f
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_579
	mov	rdi, r13
	call	free
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_581
.label_574:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	r15, r13
	xor	ebp, ebp
	jmp	.label_582
.label_575:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	jmp	.label_581
.label_579:
	mov	qword ptr [rsp + 8], r13
.label_581:
	mov	rbp, r15
	mov	rbx, qword ptr [rsp + 0x10]
.label_582:
	test	r13, r13
	mov	r14, r12
	cmovne	r14, r13
	test	r15, r15
	cmovne	r14, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_571
	mov	rdi, rbx
	mov	rsi, r12
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_576
	test	r15, r15
	je	.label_577
	mov	rdi, rbx
	mov	rsi, r15
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_576
.label_577:
	test	r13, r13
	je	.label_580
	mov	rdi, rbx
	mov	rsi, r13
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_576
.label_580:
	mov	rdi, rbx
	call	strlen
	mov	r15, rbx
	mov	rbx, rax
	mov	rdi, r14
	call	strlen
	lea	rdi, [rbx + rax + 4]
	call	xmalloc
	mov	rbx, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_548
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r15
	mov	r9, r14
	call	__sprintf_chk
.label_576:
	test	rbp, rbp
	je	.label_572
	mov	rdi, rbp
	call	free
.label_572:
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_570
	call	free
	jmp	.label_570
.label_571:
	test	rbp, rbp
	je	.label_578
	cmp	rbp, r14
	je	.label_578
	mov	rdi, rbp
	call	free
.label_578:
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_569
	cmp	rdi, r14
	je	.label_569
	call	free
.label_569:
	mov	rbx, r14
.label_570:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d90
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
	#Procedure 0x405dd0
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
	#Procedure 0x405de0
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
	#Procedure 0x405df0
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
	#Procedure 0x405e30
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
	#Procedure 0x405e50
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_583
	test	rdx, rdx
	je	.label_583
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_583:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e80
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
	#Procedure 0x405f00

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
.label_689:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_687
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_613]
.label_2889:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_695
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_639
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_2890:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_588
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_588
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_608:
	cmp	r14, r11
	jae	.label_605
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_605:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_608
.label_588:
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
	jmp	.label_615
.label_2882:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_615
.label_2885:
	mov	al, 1
.label_2883:
	mov	r12b, 1
.label_2886:
	test	r12b, 1
	mov	cl, 1
	je	.label_629
	mov	ecx, eax
.label_629:
	mov	al, cl
.label_2884:
	test	r12b, 1
	jne	.label_633
	test	r11, r11
	je	.label_647
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_647:
	mov	r14d, 1
	jmp	.label_636
.label_633:
	xor	r14d, r14d
.label_636:
	mov	ecx, OFFSET FLAT:label_639
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_615
.label_2887:
	test	r12b, 1
	jne	.label_646
	test	r11, r11
	je	.label_648
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_648:
	mov	r14d, 1
	jmp	.label_650
.label_2888:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_652
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_615
.label_646:
	xor	r14d, r14d
.label_650:
	mov	eax, OFFSET FLAT:label_652
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_615:
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
	jmp	.label_668
	nop	dword ptr [rax]
.label_609:
	inc	rsi
.label_668:
	cmp	rbp, -1
	je	.label_703
	cmp	rsi, rbp
	jne	.label_704
	jmp	.label_705
	nop	word ptr cs:[rax + rax]
.label_703:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_591
.label_704:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_635
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_599
	cmp	rbp, -1
	jne	.label_599
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
.label_599:
	cmp	rbx, rbp
	jbe	.label_616
.label_635:
	xor	r8d, r8d
.label_607:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_619
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_622]
.label_3106:
	test	rsi, rsi
	jne	.label_611
	jmp	.label_628
	nop	word ptr cs:[rax + rax]
.label_616:
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
	jne	.label_640
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_607
	jmp	.label_618
.label_640:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_607
.label_3110:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_658
	test	rsi, rsi
	jne	.label_659
	cmp	rbp, 1
	je	.label_628
	xor	r13d, r13d
	jmp	.label_592
.label_3099:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_666
	cmp	byte ptr [rsp + 6], 0
	jne	.label_632
	cmp	r12d, 2
	jne	.label_672
	mov	eax, r9d
	and	al, 1
	jne	.label_672
	cmp	r14, r11
	jae	.label_673
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_673:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_678
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_678:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_682
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_682:
	add	r14, 3
	mov	r9b, 1
.label_672:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_598
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_598:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_692
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_692
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_692
	cmp	r14, r11
	jae	.label_669
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_669:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_657
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_657:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_592
.label_3100:
	mov	bl, 0x62
	jmp	.label_596
.label_3101:
	mov	cl, 0x74
	jmp	.label_621
.label_3102:
	mov	bl, 0x76
	jmp	.label_596
.label_3103:
	mov	bl, 0x66
	jmp	.label_596
.label_3104:
	mov	cl, 0x72
	jmp	.label_621
.label_3107:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_606
	cmp	byte ptr [rsp + 6], 0
	jne	.label_610
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
	jae	.label_614
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_614:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_626
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_626:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_630
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_630:
	add	r14, 3
	xor	r9d, r9d
.label_606:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_592
.label_3108:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_637
	cmp	r12d, 2
	jne	.label_611
	cmp	byte ptr [rsp + 6], 0
	je	.label_611
	jmp	.label_610
.label_3109:
	cmp	r12d, 2
	jne	.label_691
	cmp	byte ptr [rsp + 6], 0
	jne	.label_610
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_597
.label_619:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_655
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
.label_603:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_671
	test	r8b, r8b
	je	.label_671
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_592
.label_658:
	test	rsi, rsi
	jne	.label_690
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_690
.label_628:
	mov	dl, 1
.label_3105:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_610
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_592:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_697
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_699
	jmp	.label_584
	nop	word ptr cs:[rax + rax]
.label_697:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_584
.label_699:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_586
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_597
	jmp	.label_602
	nop	dword ptr [rax]
.label_584:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_602
	jmp	.label_597
.label_586:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_602
.label_666:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_609
	xor	r15d, r15d
	jmp	.label_611
.label_691:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_621
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_597
.label_621:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_610
.label_596:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_592
	nop	word ptr cs:[rax + rax]
.label_602:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_632
	cmp	r12d, 2
	jne	.label_634
	mov	eax, r9d
	and	al, 1
	jne	.label_634
	cmp	r14, r11
	jae	.label_631
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_631:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_641
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_641:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_624
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_624:
	add	r14, 3
	mov	r9b, 1
.label_634:
	cmp	r14, r11
	jae	.label_589
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_589:
	inc	r14
	jmp	.label_653
.label_655:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_656
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_656:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_675:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_674
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_680
	cmp	rbp, -2
	je	.label_685
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_701
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_594:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_663
	bt	rsi, rdx
	jb	.label_702
.label_663:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_594
.label_701:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_601
	xor	r13d, r13d
.label_601:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_675
	jmp	.label_603
.label_692:
	xor	r13d, r13d
	jmp	.label_592
.label_690:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_592
.label_637:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_611
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_611
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_611
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_649
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_667
	cmp	byte ptr [rsp + 6], 0
	jne	.label_698
	cmp	r14, r11
	jae	.label_700
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_700:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_694
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_694:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_638
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_638:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_677
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_677:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_592
.label_611:
	xor	eax, eax
.label_659:
	xor	r13d, r13d
	jmp	.label_592
.label_671:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_654
	nop	word ptr cs:[rax + rax]
.label_612:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_654:
	test	r8b, r8b
	je	.label_660
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_662
	cmp	r14, r11
	jae	.label_664
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_664:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_662
	nop	dword ptr [rax]
.label_660:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_618
	cmp	r12d, 2
	jne	.label_617
	mov	eax, r9d
	and	al, 1
	jne	.label_617
	cmp	r14, r11
	jae	.label_679
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_679:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_681
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_681:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_688
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_688:
	add	r14, 3
	mov	r9b, 1
.label_617:
	cmp	r14, r11
	jae	.label_625
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_625:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_696
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_696:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_676
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_676:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_662:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_597
	test	r9b, 1
	je	.label_590
	mov	ebx, eax
	and	bl, 1
	jne	.label_590
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_600
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_600:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_642
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_642:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_590:
	cmp	r14, r11
	jae	.label_612
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_612
	nop	word ptr cs:[rax + rax]
.label_597:
	test	r9b, 1
	je	.label_620
	and	al, 1
	jne	.label_620
	cmp	r14, r11
	jae	.label_623
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_623:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_683
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_683:
	add	r14, 2
	xor	r9d, r9d
.label_620:
	mov	ebx, r15d
.label_653:
	cmp	r14, r11
	jae	.label_604
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_604:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_609
.label_680:
	xor	r13d, r13d
.label_674:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_603
.label_685:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_645
	mov	rsi, qword ptr [rsp + 0x58]
.label_651:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_661
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_651
	xor	r13d, r13d
	jmp	.label_603
.label_645:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_603
.label_661:
	xor	r13d, r13d
	jmp	.label_603
.label_649:
	xor	r13d, r13d
	jmp	.label_592
.label_667:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_592
	nop	dword ptr [rax + rax]
.label_705:
	mov	rcx, rsi
.label_591:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_665
	or	al, dl
	je	.label_670
.label_665:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_627
	or	al, dl
	jne	.label_627
	test	r10b, 1
	jne	.label_684
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_627
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_689
.label_627:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_693
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_593
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_593
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_587:
	cmp	r14, r11
	jae	.label_585
	mov	byte ptr [rcx + r14], al
.label_585:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_587
	jmp	.label_593
.label_632:
	mov	qword ptr [rsp + 0x20], rbp
.label_618:
	mov	rdx, rdi
	jmp	.label_595
.label_610:
	mov	qword ptr [rsp + 0x20], rbp
.label_702:
	mov	rdx, rdi
	mov	eax, 2
.label_686:
	mov	qword ptr [rsp + 0x38], rax
.label_595:
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
.label_643:
	mov	r14, rax
.label_644:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_670:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_595
.label_684:
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
	jmp	.label_643
.label_693:
	mov	rcx, qword ptr [rsp + 8]
.label_593:
	cmp	r14, r11
	jae	.label_644
	mov	byte ptr [rcx + r14], 0
	jmp	.label_644
.label_698:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_686
.label_687:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d10
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
	#Procedure 0x406de0
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
	je	.label_706
	mov	qword ptr [rax], rbx
.label_706:
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
	#Procedure 0x406ed0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_707
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_710:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_710
.label_707:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_711
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_708], OFFSET FLAT:slot0
.label_711:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_709
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_709:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f70
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406f80

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
	js	.label_712
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_715
	cmp	r12d, 0x7fffffff
	je	.label_717
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
	jne	.label_713
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_713:
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
.label_715:
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
	jbe	.label_718
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_714
.label_718:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_716
	mov	rdi, r14
	call	free
.label_716:
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
.label_714:
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
.label_712:
	call	abort
.label_717:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407140
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407150
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
	#Procedure 0x407170
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
	#Procedure 0x407190

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
	je	.label_719
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
.label_719:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407200
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
	je	.label_720
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
.label_720:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407270
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
	je	.label_721
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
.label_721:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072e0
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
	je	.label_722
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
.label_722:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407350
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_723]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_724]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_725]
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
	#Procedure 0x4073c0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_723]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_724]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_725]
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
	#Procedure 0x407430

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_723]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_724]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_725]
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
	#Procedure 0x407490
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_723]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_724]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_725]
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
	#Procedure 0x4074f0

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
	je	.label_726
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
.label_726:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407590
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_723]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_724]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_725]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_727
	test	rdx, rdx
	je	.label_727
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_727:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x407600
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_723]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_724]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_725]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_728
	test	rdx, rdx
	je	.label_728
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_728:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407670
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_723]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_724]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_725]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_729
	test	rsi, rsi
	je	.label_729
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_729:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4076e0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_723]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_724]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_725]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_730
	test	rsi, rsi
	je	.label_730
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
.label_730:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407750
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407760
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
	#Procedure 0x407780

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077a0

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
	#Procedure 0x4077c0

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
	jne	.label_732
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_737
	cmp	ecx, 0x55
	jne	.label_731
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_731
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_731
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_731
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_731
	cmp	byte ptr [rax + 5], 0
	jne	.label_731
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_734
	mov	eax, OFFSET FLAT:label_735
	jmp	.label_736
.label_737:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_731
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_731
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_731
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_731
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_731
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_731
	cmp	byte ptr [rax + 7], 0
	je	.label_733
.label_731:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_652
	mov	eax, OFFSET FLAT:label_639
.label_736:
	cmove	rax, rcx
.label_732:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_733:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_738
	mov	eax, OFFSET FLAT:label_739
	jmp	.label_736
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407890

	.globl fread_file
	.type fread_file, @function
fread_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rsi
	mov	r15, rdi
	call	fileno
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, eax
	call	__fxstat
	mov	ebp, 0x2000
	test	eax, eax
	js	.label_744
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	mov	ebp, 0x2000
	cmp	eax, 0x8000
	jne	.label_744
	mov	rdi, r15
	call	ftello
	mov	ebp, 0x2000
	test	rax, rax
	js	.label_744
	mov	rcx, qword ptr [rsp + 0x38]
	mov	ebp, 0x2000
	sub	rcx, rax
	jle	.label_744
	cmp	rcx, -1
	je	.label_748
	inc	rcx
	mov	rbp, rcx
.label_744:
	mov	rdi, rbp
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_740
	mov	qword ptr [rsp], rbx
	xor	r14d, r14d
	mov	r13, -1
	nop	
.label_746:
	mov	r12, rax
	mov	rbx, rbp
	sub	rbx, r14
	lea	rdi, [r12 + r14]
	mov	esi, 1
	mov	rdx, rbx
	mov	rcx, r15
	call	fread
	add	r14, rax
	cmp	rax, rbx
	jne	.label_742
	cmp	rbp, -1
	je	.label_743
	mov	rbx, rbp
	shr	rbx, 1
	mov	rax, rbx
	not	rax
	add	rbx, rbp
	cmp	rbp, rax
	cmovae	rbx, r13
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	test	rax, rax
	mov	rbp, rbx
	jne	.label_746
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	jmp	.label_745
.label_742:
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	mov	rdi, r15
	call	ferror
	test	eax, eax
	jne	.label_745
	dec	rbp
	cmp	r14, rbp
	jae	.label_747
	lea	rsi, [r14 + 1]
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
.label_747:
	mov	rax, qword ptr [rsp]
	mov	byte ptr [r12 + r14], 0
	mov	qword ptr [rax], r14
	jmp	.label_740
.label_743:
	mov	ebx, 0xc
	call	__errno_location
	mov	r13, rax
.label_745:
	mov	rdi, r12
	call	free
	mov	dword ptr [r13], ebx
.label_741:
	xor	r12d, r12d
.label_740:
	mov	rax, r12
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_748:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_741
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a20

	.globl read_file
	.type read_file, @function
read_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	esi, OFFSET FLAT:label_749
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_750
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	je	.label_750
	test	r15, r15
	je	.label_751
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_751:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_750:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a90
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	esi, OFFSET FLAT:label_752
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_753
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	je	.label_753
	test	r15, r15
	je	.label_754
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_754:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_753:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b00

	.globl trim2
	.type trim2, @function
trim2:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14d, esi
	call	__strdup
	mov	r12, rax
	test	r12, r12
	je	.label_762
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_767
	test	r14d, r14d
	je	.label_763
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r12
	call	strlen
	lea	rcx, [r12 + rax]
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	test	rax, rax
	mov	rbp, r12
	jle	.label_766
	lea	rbp, [rsp + 8]
	nop	
.label_760:
	mov	rdi, rbp
	call	mbiter_multi_next
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_758
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_758
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_760
.label_758:
	mov	rbp, qword ptr [rsp + 0x20]
.label_766:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_755
.label_763:
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r12
	call	strlen
	mov	rcx, r12
	add	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	test	rax, rax
	jle	.label_755
	xor	ebp, ebp
	lea	r14, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_771:
	mov	rdi, r14
	call	mbiter_multi_next
	cmp	ebp, 1
	je	.label_764
	test	ebp, ebp
	jne	.label_765
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	test	dil, dil
	je	.label_756
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_770
	xor	ebp, ebp
	jmp	.label_756
	nop	dword ptr [rax + rax]
.label_764:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	test	dil, dil
	je	.label_756
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_756
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_761
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_761
	mov	ebp, 2
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_756
	nop	
.label_765:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_761
	shr	rdi, 0x20
	call	iswspace
	mov	ebp, 2
	test	eax, eax
	jne	.label_756
	jmp	.label_761
.label_770:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_756
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_756
	nop	word ptr cs:[rax + rax]
.label_761:
	mov	ebp, 1
.label_756:
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_771
	cmp	ebp, 2
	jne	.label_755
	mov	byte ptr [r15], 0
	jmp	.label_755
.label_767:
	test	r14d, r14d
	je	.label_757
	mov	bl, byte ptr [r12]
	test	bl, bl
	mov	rbp, r12
	je	.label_768
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_769:
	movzx	ecx, bl
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_768
	movzx	ebx, byte ptr [rbp + 1]
	inc	rbp
	test	bl, bl
	jne	.label_769
.label_768:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_755
.label_757:
	mov	rdi, r12
	call	strlen
	lea	rbp, [r12 + rax - 1]
	cmp	rbp, r12
	jb	.label_755
	call	__ctype_b_loc
	nop	dword ptr [rax]
.label_759:
	movzx	ecx, byte ptr [rbp]
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_755
	mov	byte ptr [rbp], 0
	dec	rbp
	cmp	rbp, r12
	jae	.label_759
.label_755:
	mov	rax, r12
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_762:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407db0

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
	je	.label_787
	mov	edx, OFFSET FLAT:label_777
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_784
.label_787:
	mov	edx, OFFSET FLAT:label_785
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_784:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_790
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
	mov	esi, OFFSET FLAT:label_786
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_773
	jmp	qword ptr [(r12 * 8) + label_774]
.label_2926:
	add	rsp, 8
	jmp	.label_772
.label_773:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_789
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
	jmp	.label_772
.label_2927:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_782
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
.label_2928:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_780
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
.label_2929:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_778
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
.label_2930:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_775
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
	jmp	.label_772
.label_2931:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_781
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
	jmp	.label_772
.label_2932:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_776
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
	jmp	.label_772
.label_2933:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_779
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
	jmp	.label_772
.label_2935:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_783
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
	jmp	.label_772
.label_2934:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_788
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
.label_772:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408110
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_791:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_791
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408140

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_792
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_794
.label_792:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_794:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_795
	cmp	r10d, 0x29
	jae	.label_804
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_793
.label_804:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_793:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_795
	cmp	r10d, 0x29
	jae	.label_802
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_803
.label_802:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_803:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_795
	cmp	r10d, 0x29
	jae	.label_800
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_801
.label_800:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_801:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_795
	cmp	r10d, 0x29
	jae	.label_798
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_799
.label_798:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_799:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_795
	cmp	r10d, 0x29
	jae	.label_796
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_797
.label_796:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_797:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_795
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_795
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_795
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_795
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_795:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408330

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_805
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_805:
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
	#Procedure 0x4083c0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_806
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_807
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_809
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_808
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408440
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_810
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_811
	test	rax, rax
	je	.label_810
.label_811:
	pop	rbx
	ret	
.label_810:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408480

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_812
	test	rax, rax
	je	.label_813
.label_812:
	pop	rbx
	ret	
.label_813:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084a0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_814
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_815
	test	rbx, rbx
	jne	.label_815
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_815:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_816
	test	rax, rax
	je	.label_814
.label_816:
	pop	rbx
	ret	
.label_814:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084f0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_817
	test	rbx, rbx
	jne	.label_817
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_817:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_819
	test	rax, rax
	je	.label_818
.label_819:
	pop	rbx
	ret	
.label_818:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408520
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_820
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_823
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_821
.label_820:
	test	rcx, rcx
	jne	.label_826
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_826:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_825
.label_821:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_822
	test	rbx, rbx
	jne	.label_822
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_822:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_824
	test	rax, rax
	je	.label_823
.label_824:
	pop	rbx
	ret	
.label_823:
	call	xalloc_die
.label_825:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085c0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_827
	test	rax, rax
	je	.label_828
.label_827:
	pop	rbx
	ret	
.label_828:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085e0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_829
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_832
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_833
	call	free
	xor	eax, eax
	jmp	.label_830
.label_829:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_831
	mov	qword ptr [rsi], rbx
.label_833:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_830
	test	rax, rax
	je	.label_831
.label_830:
	pop	rbx
	ret	
.label_831:
	call	xalloc_die
.label_832:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408650
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
	je	.label_835
	test	r14, r14
	je	.label_834
.label_835:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_834:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408690
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_836
	call	rpl_calloc
	test	rax, rax
	je	.label_836
	pop	rcx
	ret	
.label_836:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086c0

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
	je	.label_837
	test	r15, r15
	je	.label_838
.label_837:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_838:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408700
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
	je	.label_840
	test	r15, r15
	je	.label_839
.label_840:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_839:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408750

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_841
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_78
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408780
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	push	rbx
	call	mem_cd_iconv
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_843
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_842
.label_843:
	mov	eax, ebx
	pop	rbx
	ret	
.label_842:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4087a0
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbx
	call	str_cd_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_845
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_844
.label_845:
	mov	rax, rbx
	pop	rbx
	ret	
.label_844:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087d0

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	push	rbx
	call	str_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_847
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_846
.label_847:
	mov	rax, rbx
	pop	rbx
	ret	
.label_846:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408800

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
	jae	.label_848
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
	je	.label_895
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_867
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_865
	mov	r13d, 1
.label_867:
	test	r14, r14
	je	.label_873
	mov	r15d, r13d
	jmp	.label_879
.label_895:
	mov	r13d, 4
	test	r14, r14
	je	.label_865
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_865
	mov	rdi, r14
	call	strchr
	xor	r15d, r15d
	mov	ebp, 1
	test	rax, rax
	je	.label_865
.label_879:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_889
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_870
	mov	ebx, 1
	mov	r10d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_852
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_852
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ebx, 1
	mov	r10d, 0x400
	test	rax, rax
	je	.label_852
	movsx	eax, byte ptr [r12 + 1]
	mov	ebx, 1
	mov	r10d, 0x400
	cmp	eax, 0x42
	je	.label_857
	cmp	eax, 0x44
	je	.label_857
	cmp	eax, 0x69
	jne	.label_852
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	rbx, [rax + rax + 1]
	mov	r10d, 0x400
	jmp	.label_852
.label_873:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	jmp	.label_865
.label_857:
	mov	ebx, 2
	mov	r10d, 0x3e8
.label_852:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_870
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r8, rbp
	jmp	qword ptr [(r13 * 8) + label_874]
.label_2912:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ecx, 1
	jl	.label_882
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rsi, r9
.label_882:
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_892
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_892:
	or	r14d, ecx
	cmp	rdi, r11
	mov	ecx, 1
	jl	.label_898
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_898:
	or	ecx, r14d
	jmp	.label_849
.label_870:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	r15d, 2
	jmp	.label_859
.label_2913:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	cmp	rbp, rax
	mov	ecx, 1
	jl	.label_849
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
	jmp	.label_849
.label_2914:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ecx, 1
	mov	rsi, r8
	mov	r11d, 1
	jl	.label_871
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_871:
	cmp	rsi, rdi
	jl	.label_887
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_887:
	or	ecx, r11d
	jmp	.label_849
.label_2916:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_893
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rbp
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rdi, r9
.label_893:
	mov	rbp, rbx
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_853
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rdi
	setl	r14b
	cmovl	rsi, r9
.label_853:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_862
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_862:
	or	edi, r14d
	cmp	rbx, r11
	jl	.label_869
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_869:
	or	ecx, edi
	mov	rbx, rbp
	jmp	.label_849
.label_2910:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_876
	mov	r8, rbp
	shl	r8, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_872
.label_2911:
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
	jl	.label_884
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_884:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_855
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_855:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_897
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_897:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_864
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_864:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rsi, r8
	mov	ebx, 1
	jl	.label_875
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebx, ebx
	cmp	rax, rdi
	setl	bl
	cmovl	rsi, r9
.label_875:
	or	ebx, r14d
	cmp	rsi, r11
	jl	.label_886
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_886:
	or	ecx, ebx
	mov	rbx, r13
	jmp	.label_849
.label_2915:
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
	jl	.label_894
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_894:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_856
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_856:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_863
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_863:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_885
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_885:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rbx, r13
	jl	.label_883
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_883:
	or	ecx, r14d
	jmp	.label_849
.label_2917:
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
	jl	.label_891
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_891:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_850
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_850:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_861
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_861:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_866
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_866:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ebp, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_877
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rdi, r9
.label_877:
	or	ecx, r14d
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_888
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_888:
	or	ebp, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_858
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_858:
	or	edi, ebp
	cmp	rbx, r11
	jl	.label_851
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	jmp	.label_878
.label_2918:
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
	jl	.label_860
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_860:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_868
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_868:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_881
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_881:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_890
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_890:
	or	r14d, ecx
	cmp	rsi, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_896
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_896:
	or	ecx, r14d
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_854
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_854:
	or	edi, ecx
	cmp	rsi, r11
	mov	ecx, 1
	jl	.label_851
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
.label_878:
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_851:
	or	ecx, edi
	mov	rbx, r13
	jmp	.label_849
.label_2919:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_876
	mov	r8, rbp
	shl	r8, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_872
.label_2920:
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_880
.label_876:
	inc	r9
	mov	ecx, 1
	mov	r8, r9
	jmp	.label_849
.label_880:
	lea	r8, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_872:
	xor	ecx, ecx
	cmp	rbp, rax
	setg	cl
	cmovg	r8, r9
.label_849:
	or	ecx, r15d
	lea	rax, [r12 + rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rax
	lea	r15d, [rcx + 2]
	cmp	byte ptr [r12 + rbx], 0
	cmove	r15d, ecx
	mov	rbp, r8
.label_889:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_859:
	mov	r13d, r15d
.label_865:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_848:
	mov	edi, OFFSET FLAT:label_899
	mov	esi, OFFSET FLAT:label_900
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_901
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409120

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_902
	test	rsi, rsi
	mov	ecx, 1
	je	.label_903
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_903
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_902:
	mov	ecx, 1
.label_903:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409170

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_904
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_906
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_904
.label_906:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_904
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_905
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_905:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_904:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_907
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_907
	test	byte ptr [rbx + 1], 1
	je	.label_907
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_907:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409230

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_909
	test	rbx, rbx
	je	.label_909
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_909
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_909
	mov	edi, OFFSET FLAT:label_531
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_908
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_909
.label_908:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_909:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092d0

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
	jne	.label_910
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_910
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_911
.label_910:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_911:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_912
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_912:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409340

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
	je	.label_913
	cmp	r15, -2
	jb	.label_913
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_913
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_913:
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
	#Procedure 0x4093a0

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
	je	.label_914
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_914:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409400

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
	jbe	.label_1179
.label_964:
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
	ja	.label_1200
	lea	rdi, [r13 + 1]
	mov	qword ptr [r12 + 8], rdi
	mov	rax, rdi
	mov	qword ptr [rsp + 8], rax
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_1249:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_1249
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
	jne	.label_1269
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_1269
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_1269
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_1269
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_1269
	or	byte ptr [r12 + 0xb0], 4
.label_1269:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_1284
	test	al, 4
	jne	.label_1294
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	test	rax, rax
	je	.label_1200
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1307:
	mov	edi, ebp
	call	btowc
	cmp	eax, -1
	je	.label_1300
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_1300:
	cmp	ebp, 0x7f
	ja	.label_1303
	cmp	ebp, eax
	je	.label_1303
	or	byte ptr [r12 + 0xb0], 8
.label_1303:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1307
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1323:
	lea	rbx, [rbp + 0x40]
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_1311
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_1311:
	cmp	ebx, eax
	je	.label_1317
	or	byte ptr [r12 + 0xb0], 8
.label_1317:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1323
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1336:
	mov	edi, ebp
	sub	edi, -0x80
	call	btowc
	cmp	eax, -1
	je	.label_1329
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_1329:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1336
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1341:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_1337
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_1337:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1341
	jmp	.label_1284
.label_1294:
	mov	qword ptr [r12 + 120], OFFSET FLAT:utf8_sb_map
.label_1284:
	cmp	qword ptr [r12], 0
	je	.label_1200
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1200
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
	jle	.label_1327
	cmp	edx, 2
	jl	.label_1386
	mov	r12d, 0xc
	mov	rax, qword ptr [rsp + 8]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_921
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_921
	mov	qword ptr [rsp + 0x58], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_1386:
	xor	eax, eax
	test	bpl, bpl
	je	.label_935
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_921
	mov	qword ptr [rsp + 0x50], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_935:
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x88], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	jmp	.label_949
.label_1200:
	mov	dword ptr [rsp + 4], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_943
.label_1327:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 8], rdx
.label_949:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x50], rax
	cmp	qword ptr [rsp + 0xe0], 0
	je	.label_1185
	cmp	ecx, 2
	jl	.label_982
	lea	rdi, [rsp + 0x48]
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_921
	lea	rbx, [rsp + 0x48]
	nop	
.label_1048:
	cmp	qword ptr [rsp + 0x80], r13
	mov	r12, qword ptr [rsp + 0x18]
	jge	.label_997
	mov	rbp, qword ptr [rsp + 0x88]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x78]
	cmp	rbp, rax
	jg	.label_997
	lea	r14, [rbp + rbp]
	cmp	dword ptr [rsp + 0xd8], 2
	jl	.label_1023
	mov	r12d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	r14, rax
	ja	.label_921
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_921
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_1023
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_921
	mov	qword ptr [rsp + 0x60], rax
.label_1023:
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_1000
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r14
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_921
	mov	qword ptr [rsp + 0x50], rax
.label_1000:
	mov	qword ptr [rsp + 0x88], r14
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	je	.label_1048
.label_921:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_1052
.label_1185:
	cmp	ecx, 2
	jl	.label_1053
	lea	rdi, [rsp + 0x48]
	call	build_wcs_buffer
	jmp	.label_997
.label_982:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_1060
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_1068
	nop	dword ptr [rax]
.label_1092:
	mov	r14, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0xc0]
	inc	rbp
.label_1068:
	add	r14, rax
	movzx	eax, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_1078
.label_1097:
	movzx	ebx, al
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1083
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1083:
	mov	rax, qword ptr [rsp + 0x50]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_1092
	jmp	.label_1096
.label_1078:
	movzx	eax, byte ptr [rbx + rcx]
	jmp	.label_1097
.label_1053:
	test	rbx, rbx
	je	.label_1099
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_1100
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 1
	je	.label_1100
	mov	eax, 1
	nop	word ptr [rax + rax]
.label_1115:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x50]
	add	rcx, qword ptr [rsp + 0x70]
	movzx	ecx, byte ptr [rax + rcx]
	mov	rsi, qword ptr [rsp + 0xc0]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	byte ptr [rdx + rax], cl
	inc	rax
	cmp	rax, rdi
	jl	.label_1115
	mov	rcx, rdi
.label_1100:
	mov	qword ptr [rsp + 0x78], rcx
	mov	qword ptr [rsp + 0x80], rcx
	jmp	.label_997
.label_1096:
	mov	rax, r13
	jmp	.label_1060
.label_1099:
	mov	rax, qword ptr [rsp + 8]
.label_1060:
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x80], rax
.label_997:
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
	jne	.label_1146
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1151
.label_1146:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1134
	mov	rax, qword ptr [rbx + 0x70]
.label_978:
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
.label_974:
	test	r14, r14
	mov	rcx, rbp
	je	.label_1169
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_1173
	mov	rax, qword ptr [rbx + 0x70]
.label_955:
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
	je	.label_992
	mov	qword ptr [rbp], rcx
.label_1169:
	test	rbp, rbp
	je	.label_992
	test	rcx, rcx
	je	.label_992
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
	je	.label_945
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_945
	test	rax, rax
	je	.label_945
	mov	rax, qword ptr [rbx + 0x28]
	test	rax, rax
	je	.label_945
	mov	rbp, qword ptr [r15 + 0x30]
	lea	rdi, [rbp*8]
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	mov	rdi, rbx
	mov	qword ptr [rsp + 8], rdi
	je	.label_1224
	test	rbp, rbp
	je	.label_1229
	xor	edx, edx
	cmp	rbp, 4
	jb	.label_1233
	xor	edx, edx
	mov	rcx, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_1233
	lea	rsi, [rcx - 4]
	mov	rbx, rsi
	shr	rbx, 2
	lea	edx, [rbx + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_1238
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_1339
.label_1224:
	lea	r12, [rdi + 0x68]
	jmp	.label_1353
.label_1238:
	lea	rsi, [rdx - 1]
	sub	rsi, rbx
	mov	ebx, 1
	movq	xmm0, rbx
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_1253]
	movdqa	xmm9, xmmword ptr [rip + label_1254]
	movdqa	xmm10, xmmword ptr [rip + label_1255]
	movdqa	xmm11, xmmword ptr [rip + label_1256]
	movdqa	xmm5, xmmword ptr [rip + label_1257]
	movdqa	xmm6, xmmword ptr [rip + label_1258]
	movdqa	xmm7, xmmword ptr [rip + label_1259]
	movdqa	xmm1, xmmword ptr [rip + label_1260]
	nop	word ptr cs:[rax + rax]
.label_1051:
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
	jne	.label_1051
.label_1339:
	test	rdx, rdx
	je	.label_1305
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_1253]
	movdqa	xmm2, xmmword ptr [rip + label_1254]
	nop	word ptr cs:[rax + rax]
.label_1093:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_1093
.label_1305:
	cmp	rbp, rcx
	mov	rdx, rcx
	je	.label_1229
	nop	dword ptr [rax]
.label_1233:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	rdx, rbp
	jb	.label_1233
.label_1229:
	mov	rbp, qword ptr [rdi + 0x68]
	mov	rsi, rbp
	call	optimize_subexps
	test	eax, eax
	jne	.label_1334
	nop	dword ptr [rax]
.label_1344:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1335
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1340:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_927
	test	rbx, rbx
	jne	.label_1335
.label_927:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_1340
	jmp	.label_1334
	nop	
.label_1335:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbx
	call	optimize_subexps
	test	eax, eax
	mov	rbp, rbx
	je	.label_1344
.label_1334:
	mov	rax, qword ptr [r15 + 0x30]
	xor	ecx, ecx
	test	rax, rax
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1069
	mov	rdx, qword ptr [rdi + 0xe0]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_1383:
	cmp	rcx, qword ptr [rdx + rcx*8]
	jne	.label_1069
	inc	rcx
	cmp	rcx, rax
	jb	.label_1383
.label_1069:
	lea	r12, [rdi + 0x68]
	cmp	rcx, rax
	jne	.label_1353
	mov	rdi, qword ptr [rdi + 0xe0]
	call	free
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rdi + 0xe0], 0
.label_1353:
	mov	rax, qword ptr [r12]
	lea	rbp, [rsp + 0x20]
	nop	dword ptr [rax]
.label_1362:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1362
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1362
	xor	edx, edx
	jmp	.label_1369
	nop	dword ptr [rax]
.label_1389:
	mov	rdx, qword ptr [rcx + 8]
	mov	rbx, rcx
.label_1369:
	mov	dword ptr [rsp + 0x20], 0
	test	rdx, rdx
	je	.label_1372
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_1372
	mov	rdi, rbp
	mov	rsi, r15
	call	lower_subexp
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_1372
	mov	qword ptr [rax], rbx
	nop	word ptr cs:[rax + rax]
.label_1372:
	mov	rdx, qword ptr [rbx + 0x10]
	test	rdx, rdx
	je	.label_1299
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_1299
	mov	rdi, rbp
	mov	rsi, r15
	call	lower_subexp
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1299
	mov	qword ptr [rax], rbx
	nop	dword ptr [rax + rax]
.label_1299:
	mov	eax, dword ptr [rsp + 0x20]
	test	eax, eax
	jne	.label_951
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_1387
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbx
	je	.label_1389
	test	rax, rax
	je	.label_1389
	jmp	.label_1362
.label_1387:
	mov	rax, qword ptr [r12]
	mov	ebp, 0xfffc00ff
	nop	dword ptr [rax + rax]
.label_922:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_922
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_922
	nop	word ptr cs:[rax + rax]
.label_967:
	cmp	byte ptr [rbx + 0x30], 0x10
	jne	.label_932
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_933
	nop	dword ptr [rax]
.label_932:
	mov	qword ptr [rbx + 0x18], rbx
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	call	re_dfa_add_node
	mov	qword ptr [rbx + 0x38], rax
	cmp	rax, -1
	je	.label_945
	cmp	byte ptr [rbx + 0x30], 0xc
	mov	rdi, qword ptr [rsp + 8]
	jne	.label_933
	mov	ecx, dword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rdi]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebp
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_933:
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_963
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbx
	mov	rbx, rcx
	je	.label_967
	test	rax, rax
	mov	rbx, rcx
	je	.label_967
	jmp	.label_922
.label_963:
	mov	rbp, qword ptr [r12]
	mov	al, byte ptr [rbp + 0x30]
	cmp	al, 0x10
	je	.label_976
	cmp	al, 0xb
	jne	.label_981
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rax + 0x20], rbp
	jmp	.label_984
.label_976:
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_987
.label_981:
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	je	.label_1270
	mov	rcx, qword ptr [rbp + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1270:
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	je	.label_984
.label_987:
	mov	rdx, qword ptr [rbp + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_984:
	mov	rdx, rbp
	jmp	.label_956
.label_938:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_956:
	test	rax, rax
	mov	rcx, rax
	jne	.label_1009
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1018:
	mov	rsi, rax
	mov	rax, rdx
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rsi
	je	.label_1016
	test	rcx, rcx
	jne	.label_1009
.label_1016:
	mov	rdx, qword ptr [rax]
	test	rdx, rdx
	jne	.label_1018
	jmp	.label_931
	nop	
.label_1009:
	mov	al, byte ptr [rcx + 0x30]
	cmp	al, 0x10
	je	.label_938
	cmp	al, 0xb
	jne	.label_1028
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_956
.label_1028:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_1032
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_1032:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_956
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_956
.label_931:
	mov	rsi, rbp
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_951
	nop	word ptr [rax + rax]
.label_1064:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1050
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1059:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_1054
	test	rbx, rbx
	jne	.label_1050
.label_1054:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_1059
	jmp	.label_1062
	nop	
.label_1050:
	mov	rdi, rsi
	mov	rsi, rbx
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rbp, rbx
	je	.label_1064
	jmp	.label_951
.label_1062:
	xor	eax, eax
	lea	r12, [rsp + 0x20]
	xor	r14d, r14d
	jmp	.label_1074
	nop	dword ptr [rax + rax]
.label_1087:
	inc	rbp
	mov	rax, rbp
.label_1074:
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_1079
	xor	ebp, ebp
	test	r14b, 1
	mov	r14d, 0
	jne	.label_1080
	jmp	.label_1085
	nop	dword ptr [rax]
.label_1079:
	mov	rbp, rax
.label_1080:
	mov	rax, qword ptr [rsi + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_1087
	mov	ecx, 1
	mov	rdi, r12
	mov	rdx, rbp
	mov	r13, rsi
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_951
	mov	rax, qword ptr [r13 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsi, r13
	jne	.label_1087
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rsi, qword ptr [rsp + 8]
	mov	r14b, 1
	jmp	.label_1087
.label_1085:
	test	byte ptr [r15 + 0x38], 0x10
	mov	qword ptr [rsp + 0x38], r15
	mov	r14, qword ptr [rsp + 0x18]
	jne	.label_1110
	cmp	qword ptr [r15 + 0x30], 0
	je	.label_1110
	test	byte ptr [rsi + 0xb0], 1
	jne	.label_1117
.label_1110:
	cmp	qword ptr [rsi + 0x98], 0
	je	.label_1122
.label_1117:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0x38], rax
	test	rax, rax
	je	.label_945
	cmp	qword ptr [r8 + 0x10], 0
	je	.label_1122
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r8 + 0x10]
	cmp	rax, 2
	jb	.label_1128
	mov	ecx, 1
	mov	edx, 0x18
	nop	
.label_1098:
	mov	rax, qword ptr [r8 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r8 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_1098
.label_1128:
	test	rax, rax
	je	.label_1122
	mov	r9, qword ptr [r8 + 0x30]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1183:
	lea	r10, [rbp + rbp*2]
	cmp	qword ptr [r9 + r10*8 + 8], 0
	jle	.label_1145
	mov	r13, qword ptr [r9 + r10*8 + 0x10]
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x40], r10
	nop	dword ptr [rax]
.label_1174:
	mov	r14, qword ptr [r8 + 0x38]
	mov	rax, qword ptr [r13 + rbx*8]
	lea	r12, [rax + rax*2]
	mov	rax, qword ptr [r14 + r12*8]
	lea	r15, [r14 + r12*8 + 8]
	mov	rdx, qword ptr [r14 + r12*8 + 8]
	cmp	rax, rdx
	jne	.label_1154
	lea	rcx, [r14 + r12*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r14 + r12*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1167
	lea	rcx, [r14 + r12*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r15]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [r8 + 0x30]
	mov	r10, qword ptr [rsp + 0x40]
	jmp	.label_1170
	nop	word ptr cs:[rax + rax]
.label_1154:
	mov	rax, qword ptr [r14 + r12*8 + 0x10]
.label_1170:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r15], rsi
	mov	qword ptr [rax + rdx*8], rbp
	inc	rbx
	cmp	rbx, qword ptr [r9 + r10*8 + 8]
	jl	.label_1174
	mov	rax, qword ptr [r8 + 0x10]
	mov	r15, qword ptr [rsp + 0x38]
	mov	r14, qword ptr [rsp + 0x18]
.label_1145:
	inc	rbp
	cmp	rbp, rax
	jb	.label_1183
.label_1122:
	mov	dword ptr [rsp + 4], 0
	cmp	qword ptr [rsp + 0xe0], 0
	jne	.label_1163
	mov	al, byte ptr [r14 + 0xb0]
	mov	ecx, eax
	and	cl, 4
	je	.label_1163
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_1163
	mov	rdx, qword ptr [r14 + 0x10]
	test	rdx, rdx
	je	.label_1197
	mov	rbp, qword ptr [r14]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbp
	xor	r10d, r10d
	xor	edi, edi
.label_1227:
	movzx	ebx, byte ptr [rcx + 8]
	dec	bl
	movzx	esi, bl
	cmp	sil, 0xb
	ja	.label_1204
	jmp	qword ptr [(rsi * 8) + label_1208]
.label_2968:
	cmp	byte ptr [rcx], 0
	mov	sil, 1
	js	.label_1209
	mov	esi, r10d
.label_1209:
	mov	r10b, sil
	jmp	.label_1213
.label_2969:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_1163
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_1213
	jmp	.label_1163
.label_2970:
	mov	r9b, 1
	jmp	.label_1213
.label_2971:
	mov	esi, dword ptr [rcx]
	lea	ebx, [rsi - 0x10]
	cmp	ebx, 0x30
	ja	.label_1219
	bt	r8, rbx
	jb	.label_1213
.label_1219:
	cmp	esi, 0x80
	jne	.label_1163
.label_1213:
	inc	rdi
	add	rcx, 0x10
	cmp	rdi, rdx
	jb	.label_1227
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_1231
	xor	eax, eax
	mov	edx, 8
	jmp	.label_1235
.label_945:
	mov	eax, 0xc
.label_951:
	mov	dword ptr [rsp + 4], eax
.label_1052:
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1056
.label_1261:
	add	rdx, 0x10
	mov	rbp, qword ptr [r14]
.label_1235:
	mov	esi, dword ptr [rbp + rdx]
	cmp	sil, 5
	je	.label_1241
	cmp	sil, 1
	jne	.label_1244
	cmp	byte ptr [rbp + rdx - 8], 0
	jns	.label_1244
	and	esi, 0xffdfffff
	jmp	.label_1248
.label_1241:
	and	esi, 0xffffff00
	or	esi, 7
.label_1248:
	mov	dword ptr [rbp + rdx], esi
.label_1244:
	inc	rax
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_1261
	mov	al, byte ptr [r14 + 0xb0]
	jmp	.label_1231
.label_1197:
	xor	ecx, ecx
.label_1231:
	mov	dword ptr [r14 + 0xb4], 1
	cmp	qword ptr [r14 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r14 + 0xb0], al
.label_1163:
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
	jle	.label_1272
	mov	qword ptr [rsp + 0x20], r13
	lea	rdi, [r13*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0x30], rbp
	test	rbp, rbp
	je	.label_1286
	mov	rsi, qword ptr [r15 + r12*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x14], 0
	test	r13, r13
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jle	.label_1296
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_1296
	xor	eax, eax
	lea	r14, [rsp + 0x20]
	jmp	.label_1302
	nop	dword ptr [rax + rax]
.label_1347:
	mov	rbp, qword ptr [rsp + 0x30]
.label_1302:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	cmp	byte ptr [rdx + rsi + 8], 4
	jne	.label_1304
	test	r13, r13
	mov	edi, 0
	jle	.label_1309
	add	rsi, rdx
	xor	edi, edi
	nop	
.label_1322:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	cmp	byte ptr [rdx + rcx + 8], 9
	jne	.label_1113
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_1309
.label_1113:
	inc	rdi
	cmp	rdi, r13
	jl	.label_1322
.label_1309:
	cmp	rdi, r13
	je	.label_1304
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r13, r13
	jle	.label_1324
	mov	rdx, r13
	dec	rdx
	mov	esi, 0
	je	.label_1330
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_1228:
	lea	rdi, [rsi + rdx]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rsi, rbx
	cmovge	rdx, rdi
	cmp	rsi, rdx
	jb	.label_1228
.label_1330:
	cmp	rsi, -1
	je	.label_1324
	cmp	qword ptr [rbp + rsi*8], rcx
	je	.label_1304
.label_1324:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_946
	mov	r13, qword ptr [rsp + 0x28]
	xor	eax, eax
	nop	
.label_1304:
	inc	rax
	cmp	rax, r13
	jl	.label_1347
	jmp	.label_1296
.label_1272:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	mov	dword ptr [rsp + 0x14], 0
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
.label_1296:
	lea	rdi, [rsp + 0x14]
	lea	rdx, [rsp + 0x20]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_1359
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1363
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_1366
.label_1363:
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
	je	.label_1381
	test	rax, rax
	je	.label_1381
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_1381
.label_1366:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	xor	eax, eax
.label_946:
	mov	dword ptr [rsp + 4], eax
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_1388
	nop	dword ptr [rax]
.label_1199:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_1199
.label_1388:
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
	je	.label_936
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_936:
	xor	eax, eax
	cmp	dword ptr [rsp + 4], 0
	je	.label_943
	jmp	.label_1034
.label_1381:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_946
.label_1167:
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	jmp	.label_951
.label_1179:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_943
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_964
.label_1134:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_974
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_978
.label_1173:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_992
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_955
.label_992:
	mov	dword ptr [rsp + 4], 0xc
.label_1151:
	mov	qword ptr [r12 + 0x68], 0
.label_1056:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_1004
	nop	word ptr cs:[rax + rax]
.label_1012:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_1012
.label_1004:
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
	je	.label_1034
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_1034:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, dword ptr [rsp + 4]
.label_943:
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1359:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_946
.label_1286:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	dword ptr [rsp + 0x14], 0xc
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_946
.label_1204:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a9f0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax, qword ptr [rip + rpl_re_syntax_options]
	mov	qword ptr [rip + rpl_re_syntax_options],  rdi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40aa00

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
	je	.label_1394
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1394:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_1393
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1393:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_1395
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1395:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aad0

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
	jne	.label_1442
	mov	r14b, byte ptr [r13 + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_1407
.label_1442:
	xor	r14d, r14d
.label_1407:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_1358
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp], rcx
	nop	dword ptr [rax + rax]
.label_1354:
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
	ja	.label_1140
	lea	rsi, [rcx + r12]
	jmp	qword ptr [(rdx * 8) + label_1144]
.label_2876:
	movzx	ebx, byte ptr [rsi]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_1149
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1153
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1153:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_1149:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1140
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_1140
	mov	qword ptr [rsp + 0x18], r13
	mov	rdx, qword ptr [rsp]
	mov	rax, qword ptr [rdx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	inc	rbp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	jae	.label_1161
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
.label_1365:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_1161
	movzx	eax, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_1365
.label_1161:
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
	jne	.label_988
	mov	edi, dword ptr [rsp + 0x14]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_988
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_988:
	mov	r13, qword ptr [rsp + 0x18]
	jmp	.label_1140
	nop	dword ptr [rax]
.label_2878:
	mov	rax, qword ptr [rcx + r12]
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_1215:
	bt	rbp, rbx
	jae	.label_1203
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_1203
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x180
	jae	.label_1205
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_1211
.label_1205:
	mov	eax, ebx
.label_1211:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1203:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1215
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 8]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_1295:
	bt	rbp, rbx
	jae	.label_1216
	mov	byte ptr [r15 + rbx + 0x40], 1
	test	r14b, r14b
	je	.label_1216
	lea	eax, [rbx + 0xc0]
	cmp	eax, 0x180
	jae	.label_1226
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x100]
	jmp	.label_916
.label_1226:
	lea	rax, [rbx + 0x40]
.label_916:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1216:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1295
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1266:
	bt	rbp, rbx
	jae	.label_1247
	mov	byte ptr [r15 + rbx + 0x80], 1
	test	r14b, r14b
	je	.label_1247
	lea	eax, [rbx + 0x100]
	cmp	eax, 0x180
	jae	.label_1251
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x200]
	jmp	.label_1262
.label_1251:
	mov	rax, rbx
	sub	rax, -0x80
.label_1262:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1247:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1266
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x18]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1287:
	bt	rbp, rbx
	jae	.label_1007
	mov	byte ptr [r15 + rbx + 0xc0], 1
	test	r14b, r14b
	je	.label_1007
	lea	eax, [rbx + 0x140]
	cmp	eax, 0x180
	jae	.label_1278
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x300]
	jmp	.label_1282
.label_1278:
	lea	rax, [rbx + 0xc0]
.label_1282:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1007:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1287
	jmp	.label_1140
	nop	
.label_2879:
	mov	r12, qword ptr [rsi]
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1292
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_1143
	test	byte ptr [r12 + 0x20], 1
	jne	.label_1143
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1292
.label_1143:
	mov	byte ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x30]
	lea	rbp, [rsp + 8]
	nop	word ptr [rax + rax]
.label_1308:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp + 8]
	cmp	rax, -2
	jne	.label_972
	mov	byte ptr [r15 + rcx], 1
.label_972:
	inc	cl
	mov	byte ptr [rsp + 8], cl
	jne	.label_1308
	jmp	.label_1140
.label_1292:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_1140
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1351:
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1326
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_1326
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1332
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1332:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_1326:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1022
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_1022
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1022
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	word ptr cs:[rax + rax]
.label_1022:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_1351
	nop	
.label_1140:
	mov	rdx, qword ptr [rsp + 0x28]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rsp]
	jl	.label_1354
	jmp	.label_1358
.label_2877:
	movaps	xmm0, xmmword ptr [rip + label_84]
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
	jne	.label_1358
	or	byte ptr [r13 + 0x38], 1
.label_1358:
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
	.align	32
	#Procedure 0x40afc0
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
	je	.label_1488
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_1490
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_1491
.label_1490:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_1491:
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
	jne	.label_1489
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_1488:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1489:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_1488
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b0b0
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
	jae	.label_1492
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
	je	.label_1494
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_1495
.label_1493:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_1494:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1495:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_1493
.label_1492:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b130
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_1496
	call	free_dfa_content
.label_1496:
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
	#Procedure 0x40b170

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
	je	.label_1497
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1497
	xor	ebx, ebx
	mov	r12d, 8
	mov	ebp, 0x400ff
	jmp	.label_1499
	nop	dword ptr [rax]
.label_1509:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1499:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_1501
	cmp	ecx, 6
	jne	.label_1505
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
	jmp	.label_1510
	nop	word ptr cs:[rax + rax]
.label_1501:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1510:
	call	free
.label_1505:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1509
.label_1497:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1498
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1512:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_1504
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1504:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1507
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1507:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1508
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1508:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_1512
	jmp	.label_1513
.label_1498:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1513:
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
	je	.label_1500
	xor	r15d, r15d
	jmp	.label_1502
.label_1511:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1502:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_1506
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1503:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_1503
.label_1506:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1511
	mov	rdi, qword ptr [r14 + 0x40]
.label_1500:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_1514
	call	free
.label_1514:
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
	#Procedure 0x40b340
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
	ja	.label_1515
	test	bl, 4
	jne	.label_1516
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1517
.label_1516:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_1517:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_1518
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
	jmp	.label_1519
.label_1518:
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
.label_1519:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_1515:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b3e0

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
	je	.label_1533
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	xor	ebx, ebx
	cmp	cl, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r13, rax
.label_1533:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r15, [r9 - 1]
	mov	rcx, r15
	sub	rcx, rax
	xor	r12d, r12d
	cmp	rax, r9
	cmovb	r12, rcx
	mov	ebx, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_1044
	mov	rax, qword ptr [r11 + 0x48]
	test	rax, rax
	je	.label_1044
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_1044
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	je	.label_1044
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsi, r14
	cmp	qword ptr [r11 + 0x60], 0
	je	.label_1044
	mov	r14, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0x58], r14
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1523
	mov	rax, r8
	mov	r14, rsi
	jmp	.label_1520
.label_1523:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r14, rsi
	jne	.label_1527
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_1528
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_1527
.label_1528:
	xor	eax, eax
	test	rbp, rbp
	je	.label_1530
	test	r8, r8
	mov	ebp, 0
	jne	.label_1044
	jmp	.label_1520
.label_1527:
	mov	rax, r8
.label_1520:
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x40], r13
	mov	qword ptr [rsp + 0x1e8], r15
	mov	qword ptr [rsp + 0x1e0], r12
	sub	r9, r12
	mov	qword ptr [rsp + 0x38], r9
	mov	byte ptr [rsp + 7], 1
	jne	.label_1534
	cmp	qword ptr [r11 + 0x98], 0
	setne	byte ptr [rsp + 7]
.label_1534:
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
	jl	.label_1524
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ebx, 0xc
	cmp	r15, rax
	ja	.label_920
	lea	rsi, [r15*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_920
	mov	qword ptr [rsp + 0x90], rax
	mov	r11, qword ptr [rsp + 0x20]
.label_1524:
	test	r12b, r12b
	je	.label_1525
	xor	edi, edi
	mov	rsi, r15
	call	realloc
	mov	ebx, 0xc
	test	rax, rax
	je	.label_920
	mov	qword ptr [rsp + 0x88], rax
	mov	r11, qword ptr [rsp + 0x20]
.label_1525:
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
	jne	.label_1531
	shr	rax, 0x20
	mov	rcx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x88], rcx
	xor	ecx, ecx
	cmp	eax, 1
	cmovle	rcx, qword ptr [rsp + 0x78]
.label_1531:
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
	jle	.label_1526
	mov	ebx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r13, rax
	ja	.label_920
	shl	r14, 4
	lea	rdi, [r14 + r14*4]
	call	malloc
	mov	r12, rax
	mov	qword ptr [rsp + 0x158], r12
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x178], rax
	test	r12, r12
	je	.label_920
	test	rax, rax
	je	.label_920
.label_1526:
	mov	qword ptr [rsp + 0x150], r13
	mov	dword ptr [rsp + 0x160], 1
	mov	qword ptr [rsp + 0x170], r13
	cmp	qword ptr [rsp + 0x38], 1
	mov	rax, qword ptr [rsp + 0x20]
	ja	.label_1529
	mov	rdi, qword ptr [rax + 0xb0]
	test	dil, 2
	jne	.label_1529
	shr	rdi, 0x20
	mov	qword ptr [rsp + 0x138], 0
	jmp	.label_1535
.label_1529:
	mov	ebx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r15, rax
	ja	.label_920
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	je	.label_920
	mov	rax, qword ptr [rsp + 0x20]
	mov	edi, dword ptr [rax + 0xb4]
.label_1535:
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
	je	.label_1532
	cmp	edi, 1
	je	.label_1521
	mov	ecx, 0x400000
	xor	eax, eax
	test	rsi, rsi
	jne	.label_1522
	mov	rdx, qword ptr [rsp + 0x48]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_1522
.label_1521:
	mov	eax, 4
.label_1522:
	xor	ecx, ecx
	test	rsi, rsi
	setne	cl
	xor	edx, edx
	cmp	rbp, rbx
	setle	dl
	lea	ecx, [rcx + rdx*2]
	or	ecx, eax
.label_1532:
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
	jmp	.label_1312
.label_1530:
	xor	ebp, ebp
	jmp	.label_1520
.label_1274:
	mov	rdi, r15
	call	free
	mov	rdi, rbp
	call	free
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x70]
	je	.label_1165
	cmp	ebx, 1
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	je	.label_1019
	jmp	.label_920
.label_1250:
	test	al, al
	js	.label_973
	cmp	byte ptr [rsp + 7], 0
	mov	rdx, r8
	mov	ecx, 1
	jne	.label_983
	mov	r14, r8
	jmp	.label_1013
.label_1243:
	mov	r14, r8
	lea	rbp, [rbx + 8]
	xor	edx, edx
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1042
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_1046
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	call	transit_state_bkref
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1042
.label_1046:
	mov	dword ptr [rsp + 0x18], 0
	mov	r8, r14
	jmp	.label_1055
.label_973:
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
	je	.label_1013
	or	rdx, r14
	mov	r8, r14
	jmp	.label_983
.label_1042:
	movsxd	r14, eax
	jmp	.label_1013
	nop	word ptr cs:[rax + rax]
.label_1312:
	mov	rax, qword ptr [rsp + 0x210]
	cmp	eax, 4
	ja	.label_1082
	jmp	qword ptr [(rax * 8) + label_1276]
.label_2957:
	cmp	rbp, r15
	mov	rax, rbp
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x58]
	jl	.label_1088
	nop	dword ptr [rax + rax]
.label_1109:
	xor	eax, eax
	cmp	rbp, rcx
	jge	.label_1102
	movzx	eax, byte ptr [rdx + rbp]
.label_1102:
	test	rdi, rdi
	je	.label_1104
	movzx	eax, byte ptr [rdi + rax]
.label_1104:
	cmp	byte ptr [rsi + rax], 0
	jne	.label_1106
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x28], rax
	cmp	rbp, r15
	mov	rbp, rax
	jg	.label_1109
	jmp	.label_1088
.label_2959:
	cmp	rbp, r12
	jge	.label_1116
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x58]
	nop	dword ptr [rax + rax]
.label_1126:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rsi + rax]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_1116
	inc	rbp
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r12
	jl	.label_1126
	jmp	.label_1116
.label_2958:
	cmp	rbp, r12
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
	jge	.label_1116
	nop	dword ptr [rax]
.label_1130:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_1116
	inc	rbp
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r12
	jl	.label_1130
	nop	word ptr [rax + rax]
.label_1116:
	cmp	rbp, r12
	jne	.label_1133
	xor	eax, eax
	cmp	r12, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x50]
	jge	.label_1136
	movzx	eax, byte ptr [rcx + r12]
.label_1136:
	mov	rcx, qword ptr [rsp + 0x58]
	test	rcx, rcx
	je	.label_1142
	movzx	eax, byte ptr [rcx + rax]
.label_1142:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	ebx, 1
	cmp	byte ptr [rcx + rax], 0
	mov	rbp, r12
	jne	.label_1133
	jmp	.label_920
.label_1082:
	mov	rax, qword ptr [rsp + 0xa8]
	jmp	.label_1147
.label_1176:
	add	rbp, r13
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r15
	mov	ebx, 1
	jl	.label_920
	cmp	rbp, r12
	jle	.label_1147
	jmp	.label_920
.label_1172:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x260]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_920
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_1290
	nop	word ptr cs:[rax + rax]
.label_1147:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0xb8]
	jae	.label_1172
.label_1290:
	cmp	rbp, qword ptr [rsp + 0x78]
	mov	edx, 0
	mov	rsi, qword ptr [rsp + 0x40]
	jge	.label_1345
	mov	rdx, qword ptr [rsp + 0x88]
	movzx	edx, byte ptr [rdx + rcx]
.label_1345:
	cmp	byte ptr [rsi + rdx], 0
	je	.label_1176
	jmp	.label_1133
.label_1106:
	mov	rax, rbp
.label_1088:
	mov	ebx, 1
	cmp	rax, r15
	mov	rbp, rax
	jl	.label_920
.label_1133:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x260]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_920
	mov	rax, qword ptr [rsp + 0x208]
	cmp	eax, 1
	je	.label_1189
	mov	rax, qword ptr [rsp + 0xb0]
	test	rax, rax
	je	.label_1189
	mov	rax, qword ptr [rsp + 0x90]
	cmp	dword ptr [rax], -1
	je	.label_1195
.label_1189:
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0xb8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x88], xmm0
	mov	rbp, qword ptr [rsp + 0x118]
	mov	r8, qword ptr [rsp + 0xc8]
	mov	dword ptr [rsp + 8], 0
	mov	rbx, qword ptr [rbp + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	js	.label_1076
	mov	r14b, byte ptr [rsp + 0xf]
	jmp	.label_1157
	nop	
.label_1076:
	mov	qword ptr [rsp + 0x10], r8
	lea	rsi, [r8 - 1]
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	call	re_string_context_at
	test	al, 1
	mov	r14b, byte ptr [rsp + 0xf]
	jne	.label_1220
	test	eax, eax
	je	.label_1223
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	mov	r8, qword ptr [rsp + 0x10]
	je	.label_1232
	test	sil, sil
	jne	.label_1232
	mov	rbx, qword ptr [rbp + 0x60]
	jmp	.label_1157
.label_1220:
	mov	rbx, qword ptr [rbp + 0x50]
.label_1223:
	mov	r8, qword ptr [rsp + 0x10]
.label_1157:
	test	rbx, rbx
	je	.label_1148
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	mov	cl, r14b
	mov	dword ptr [rsp + 0x18], ecx
	je	.label_1055
	mov	qword ptr [rax + r8*8], rbx
	cmp	qword ptr [rbp + 0x98], 0
	mov	al, r14b
	mov	dword ptr [rsp + 0x18], eax
	jne	.label_1243
.label_1055:
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	test	al, 0x10
	mov	ecx, 0
	jne	.label_1250
.label_983:
	mov	r14, qword ptr [rsp + 0xc8]
	mov	rax, qword ptr [rsp + 0x200]
.label_1031:
	mov	r13, rax
	mov	qword ptr [rsp + 0x60], rdx
	cmp	qword ptr [rsp + 0xe8], r14
	jle	.label_1040
	test	rcx, rcx
	sete	al
	or	al, byte ptr [rsp + 7]
	mov	byte ptr [rsp + 0x198], al
	mov	r12, rbx
	jmp	.label_979
.label_999:
	add	r14d, 2
	lea	rdi, [rsp + 0x80]
	mov	esi, r14d
	mov	rbx, r8
	call	extend_buffers
	mov	r8, rbx
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1281
	jmp	.label_1075
.label_1001:
	cmp	qword ptr [r12 + 0x10], 0
	jle	.label_1081
	mov	rbp, qword ptr [rsp + 0x118]
	xor	edx, edx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x1f8], rbp
.label_939:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rbp]
	mov	rsi, rcx
	mov	qword ptr [rsp + 0x68], rsi
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	je	.label_926
	mov	r14d, ebx
	shr	r14d, 8
	test	r14w, 0x3ff
	mov	r9, qword ptr [rsp + 0xc8]
	mov	qword ptr [rsp + 0x180], rdx
	je	.label_989
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
	je	.label_948
	test	ecx, ecx
	je	.label_926
.label_948:
	test	bh, 8
	je	.label_1321
	test	ecx, ecx
	jne	.label_926
.label_1321:
	test	bh, 0x20
	je	.label_1135
	mov	ecx, eax
	and	ecx, 2
	je	.label_926
.label_1135:
	test	r14b, r14b
	jns	.label_989
	and	eax, 8
	je	.label_926
.label_989:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x68]
	lea	rdx, [rsp + 0x80]
	mov	rcx, r9
	call	check_node_accept_bytes
	mov	rdx, qword ptr [rsp + 0x180]
	mov	r8, qword ptr [rsp + 0x10]
	test	eax, eax
	je	.label_926
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
	jg	.label_1385
	cmp	rcx, rax
	jl	.label_1348
.label_1385:
	mov	rcx, qword ptr [rsp + 0xb0]
	cmp	rcx, rbx
	jg	.label_1194
	cmp	rcx, rax
	jge	.label_1194
.label_1348:
	lea	esi, [rbx + 1]
	lea	rdi, [rsp + 0x80]
	call	extend_buffers
	test	eax, eax
	jne	.label_1355
.label_1194:
	mov	rdx, rbx
	sub	rdx, r14
	jle	.label_1356
	mov	rax, qword ptr [rsp + 0x138]
	lea	rdi, [rax + r14*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	qword ptr [rsp + 0x140], rbx
.label_1356:
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
	je	.label_994
	mov	rsi, qword ptr [rax + 0x50]
	lea	rbx, [rsp + 0x1a0]
	mov	rdi, rbx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x34], eax
	test	eax, eax
	je	.label_1285
	jmp	.label_1297
.label_994:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x1b0], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
	lea	rbx, [rsp + 0x1a0]
.label_1285:
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
	je	.label_1263
	mov	rdi, qword ptr [rsp + 0x1b0]
	call	free
.label_1263:
	mov	rax, qword ptr [rsp + 0x138]
	cmp	qword ptr [rax + r14*8], 0
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x180]
	jne	.label_926
	mov	eax, dword ptr [rsp + 0x34]
	test	eax, eax
	jne	.label_934
.label_926:
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jl	.label_939
.label_1081:
	mov	dword ptr [rsp + 8], 0
	jmp	.label_1373
.label_1378:
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
	jmp	.label_971
.label_1129:
	cmp	r12, rbx
	je	.label_961
	mov	dword ptr [rsp + 0x18], 0
.label_961:
	cmove	r8, r15
	jmp	.label_1221
.label_934:
	mov	dword ptr [rsp + 8], eax
.label_1029:
	xor	ebx, ebx
	jmp	.label_971
.label_1355:
	mov	dword ptr [rsp + 0x34], eax
.label_1297:
	mov	dword ptr [rsp + 8], eax
	xor	ebx, ebx
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_971
	nop	dword ptr [rax]
.label_979:
	lea	r15, [r14 + 1]
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	r15, rcx
	jl	.label_986
	cmp	rcx, rax
	jl	.label_999
.label_986:
	mov	rcx, qword ptr [rsp + 0xb0]
	cmp	r15, rcx
	jl	.label_1075
	cmp	rcx, rax
	jl	.label_999
.label_1075:
	test	byte ptr [r12 + 0x68], 0x20
	jne	.label_1001
.label_1373:
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0xc8], rcx
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ebx, byte ptr [rcx + rax]
.label_1376:
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	jne	.label_1011
	mov	qword ptr [rsp + 0x10], r8
	mov	r14, qword ptr [r12 + 0x60]
	test	r14, r14
	jne	.label_1378
	mov	rdi, qword ptr [rsp + 0x118]
	mov	rsi, r12
	call	build_trtable
	test	al, al
	mov	r8, qword ptr [rsp + 0x10]
	jne	.label_1376
	mov	dword ptr [rsp + 8], 0xc
	jmp	.label_1029
	nop	word ptr [rax + rax]
.label_1011:
	mov	rbx, qword ptr [rax + rbx*8]
.label_971:
	cmp	qword ptr [rsp + 0x138], 0
	je	.label_1036
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x80]
	mov	rdx, rbx
	mov	rbx, r8
	call	merge_state_with_log
	mov	r8, rbx
	mov	rbx, rax
.label_1036:
	test	rbx, rbx
	jne	.label_1043
	cmp	dword ptr [rsp + 8], 0
	jne	.label_1047
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	setne	cl
	and	cl, byte ptr [rsp + 0x198]
	cmp	cl, 1
	je	.label_1121
	jmp	.label_1040
.label_1086:
	mov	rax, qword ptr [rsp + 0x138]
	mov	r8, rbp
.label_1121:
	mov	rdx, qword ptr [rsp + 0xc8]
	mov	rcx, qword ptr [rsp + 0x140]
	nop	dword ptr [rax + rax]
.label_1192:
	cmp	rdx, rcx
	jge	.label_1040
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0xc8], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_1192
	mov	rbp, r8
	xor	edx, edx
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x80]
	call	merge_state_with_log
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_958
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	je	.label_1086
.label_958:
	test	rbx, rbx
	mov	r8, rbp
	je	.label_1040
	nop	word ptr cs:[rax + rax]
.label_1043:
	mov	eax, dword ptr [rsp + 0x18]
	test	al, 1
	jne	.label_1129
.label_1221:
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	jne	.label_1101
	mov	r14, qword ptr [rsp + 0xc8]
	jmp	.label_1103
	nop	dword ptr [rax]
.label_1101:
	mov	r14, qword ptr [rsp + 0xc8]
	test	al, al
	jns	.label_1005
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rbp, r8
	call	check_halt_state_context
	mov	r8, rbp
	test	rax, rax
	jne	.label_1005
.label_1103:
	cmp	qword ptr [rsp + 0xe8], r14
	mov	r12, rbx
	jg	.label_979
	jmp	.label_1040
.label_1005:
	cmp	byte ptr [rsp + 7], 0
	mov	rdx, r14
	mov	ecx, 1
	mov	eax, 0
	mov	r13, qword ptr [rsp + 0x70]
	jne	.label_1031
	jmp	.label_1013
	nop	dword ptr [rax]
.label_1040:
	mov	rax, r13
	test	rax, rax
	mov	r13, qword ptr [rsp + 0x70]
	je	.label_1017
	add	qword ptr [rax], r8
.label_1017:
	mov	r14, qword ptr [rsp + 0x60]
.label_1013:
	cmp	r14, -1
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	je	.label_1019
	mov	ebx, 0xc
	cmp	r14, -2
	je	.label_920
	mov	r12, qword ptr [rsp + 0x38]
	cmp	r12, 1
	seta	al
	mov	qword ptr [rsp + 0x128], r14
	mov	rcx, qword ptr [rsp + 0x48]
	test	byte ptr [rcx + 0x38], 0x10
	sete	r15b
	and	r15b, al
	je	.label_1139
	mov	rax, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rax + r14*8]
	lea	rdi, [rsp + 0x80]
	mov	rdx, r14
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x130], rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1035
.label_1139:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_1165
	mov	rax, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rax + r14*8]
	lea	rdi, [rsp + 0x80]
	mov	rdx, r14
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x130], rax
	test	r15b, 1
	je	.label_1160
.label_1035:
	test	byte ptr [rbp + 0xb0], 1
	jne	.label_1166
.label_1160:
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_1165
.label_1166:
	movabs	rax, 0x1ffffffffffffffe
	cmp	r14, rax
	ja	.label_920
	mov	r15, qword ptr [rsp + 0x118]
	mov	r12, qword ptr [rsp + 0x130]
	lea	rbp, [r14*8 + 8]
	mov	rdi, rbp
	call	malloc
	mov	r13, rax
	test	rax, rax
	mov	eax, 0
	je	.label_1178
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_1181
	mov	qword ptr [rsp + 0x198], r15
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	je	.label_1186
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
	jne	.label_925
	lea	r13, [r14 + 1]
.label_1271:
	cmp	qword ptr [r15], 0
	mov	rcx, qword ptr [rsp + 0x18]
	jne	.label_991
	cmp	qword ptr [rcx], 0
	jne	.label_991
	test	r14, r14
	jle	.label_1206
	mov	rax, qword ptr [rsp + 0x138]
	mov	r13, r14
	nop	word ptr cs:[rax + rax]
.label_1301:
	lea	r14, [r13 - 1]
	mov	rsi, qword ptr [rax + r13*8 - 8]
	test	rsi, rsi
	je	.label_1230
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_1279
.label_1230:
	cmp	r13, 2
	mov	r13, r14
	jge	.label_1301
	jmp	.label_1206
.label_1279:
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
	je	.label_1271
.label_925:
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_1274
.label_1181:
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
	jne	.label_1274
	cmp	qword ptr [r15], 0
	mov	ecx, 0
	jne	.label_1298
.label_1206:
	mov	rdi, r15
	mov	rbx, rcx
	call	free
	mov	rdi, rbx
	call	free
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	mov	r13, qword ptr [rsp + 0x70]
.label_1019:
	lea	rdi, [rsp + 0x80]
	call	match_ctx_clean
.label_1195:
	mov	rbp, qword ptr [rsp + 0x28]
	add	rbp, r13
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r15
	mov	ebx, 1
	jl	.label_920
	cmp	r12, rbp
	jge	.label_1312
	jmp	.label_920
.label_1232:
	test	edx, edx
	jne	.label_1319
	test	ecx, ecx
	je	.label_1157
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbx, rax
	jmp	.label_1157
.label_1319:
	mov	rbx, qword ptr [rbp + 0x58]
	jmp	.label_1157
.label_991:
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
	jne	.label_1274
.label_1298:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	qword ptr [rsp + 0x138], r15
	mov	qword ptr [rsp + 0x130], r12
	mov	qword ptr [rsp + 0x128], r14
	mov	r12, qword ptr [rsp + 0x38]
.label_1165:
	xor	ebx, ebx
	test	r12, r12
	je	.label_920
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rbx, 1
	je	.label_1349
	mov	rax, qword ptr [rsp + 0x258]
	lea	rdi, [rax + 0x10]
	cmp	rbx, 2
	mov	edx, 2
	cmova	rdx, rbx
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
.label_1349:
	mov	rax, qword ptr [rsp + 0x258]
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rcx + 8], rax
	cmp	rbx, 2
	jb	.label_1137
	mov	rax, qword ptr [rsp + 0x48]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_1137
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_1371
	xor	eax, eax
	jmp	.label_1375
.label_1371:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_1375:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x38]
	movzx	r8d, al
	lea	rsi, [rsp + 0x80]
	mov	rcx, qword ptr [rsp + 0x258]
	call	set_regs
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_920
.label_1137:
	mov	r9b, byte ptr [rsp + 0x10c]
	mov	r8, qword ptr [rsp + 0x98]
	mov	rax, qword ptr [rsp + 0x258]
	lea	rdx, [rax + 8]
	xor	ecx, ecx
	mov	r14, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x250]
	mov	r10, qword ptr [rsp + 0x1e0]
	jmp	.label_962
.label_1281:
	cmp	eax, 0xc
	je	.label_1047
	mov	edi, OFFSET FLAT:label_1065
	mov	esi, OFFSET FLAT:label_1066
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_1067
	call	__assert_fail
.label_1148:
	cmp	dword ptr [rsp + 8], 0xc
	jne	.label_1392
.label_1047:
	mov	ebx, 0xc
	jmp	.label_920
.label_1212:
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
	jmp	.label_965
	nop	word ptr cs:[rax + rax]
.label_962:
	mov	rdi, qword ptr [rdx - 8]
	cmp	rdi, -1
	je	.label_952
	test	r9b, r9b
	jne	.label_1212
	mov	rbx, qword ptr [rdx]
	mov	rbp, rdx
.label_965:
	mov	rsi, qword ptr [rsp + 0x28]
	add	rdi, rsi
	mov	qword ptr [rdx - 8], rdi
	add	rbx, rsi
	mov	qword ptr [rbp], rbx
.label_952:
	inc	rcx
	add	rdx, 0x10
	dec	rax
	cmp	r10, rax
	jne	.label_962
	test	r10, r10
	mov	rbp, qword ptr [rsp + 0x38]
	jle	.label_1058
	mov	rdi, rbp
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x258]
	mov	rdx, r10
	shl	rdx, 4
	mov	esi, 0xff
	call	memset
.label_1058:
	mov	rax, qword ptr [r14 + 0xe0]
	xor	ebx, ebx
	test	rax, rax
	je	.label_920
	cmp	rbp, 2
	jb	.label_920
	mov	rcx, qword ptr [rsp + 0x1e0]
	sub	qword ptr [rsp + 0x1e8], rcx
	mov	rcx, qword ptr [rsp + 0x258]
	lea	rcx, [rcx + 0x18]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1158:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_1306
	shl	rsi, 4
	mov	rdi, qword ptr [rsp + 0x258]
	mov	rsi, qword ptr [rdi + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rax + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rdi + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_1306:
	inc	rdx
	add	rcx, 0x10
	xor	ebx, ebx
	cmp	qword ptr [rsp + 0x1e8], rdx
	jne	.label_1158
.label_920:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1024
	lea	rdi, [rsp + 0x80]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x178]
	call	free
	mov	rdi, qword ptr [rsp + 0x158]
	call	free
.label_1024:
	mov	rdi, qword ptr [rsp + 0x90]
	call	free
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	cmp	byte ptr [rsp + 0x10b], 0
	je	.label_1044
	mov	rdi, qword ptr [rsp + 0x88]
	call	free
.label_1044:
	mov	eax, ebx
	add	rsp, 0x218
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1186:
	mov	qword ptr [rsp + 0x1d8], r13
.label_1178:
	mov	rdi, qword ptr [rsp + 0x1d8]
	mov	rbp, rax
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_920
.label_1392:
	mov	edi, OFFSET FLAT:label_1065
	mov	esi, OFFSET FLAT:label_1066
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_1067
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ca20

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
	.align	32
	#Procedure 0x40ca40

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
	js	.label_1543
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x10], r9
	cmp	rcx, rbx
	jg	.label_1543
	xor	r12d, r12d
	add	r8, rcx
	js	.label_1567
	mov	r12, r8
.label_1567:
	mov	rbp, qword ptr [rsp + 0x60]
	cmp	r8, rbx
	cmovg	r12, rbx
	movzx	r13d, byte ptr [rdi + 0x38]
	cmp	r12, rcx
	mov	eax, r13d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 8], rdi
	jle	.label_1546
	test	r13b, 8
	mov	eax, r13d
	jne	.label_1546
	mov	rax, qword ptr [rdi + 0x20]
	test	rax, rax
	mov	eax, r13d
	je	.label_1546
	call	rpl_re_compile_fastmap
	mov	rdi, qword ptr [rsp + 8]
	mov	al, byte ptr [rdi + 0x38]
.label_1546:
	xor	r14d, r14d
	test	rbp, rbp
	mov	r15d, 1
	je	.label_1537
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_1537
	and	al, 6
	cmp	al, 4
	jne	.label_1541
	mov	rax, qword ptr [rbp]
	mov	r15, qword ptr [rdi + 0x30]
	cmp	rax, r15
	ja	.label_1563
	xor	r14d, r14d
	test	rax, rax
	jle	.label_1565
	mov	r14, rbp
.label_1565:
	mov	r15d, 1
	test	rax, rax
	jle	.label_1537
	mov	r15, rax
	jmp	.label_1537
.label_1541:
	mov	r15, qword ptr [rdi + 0x30]
.label_1563:
	inc	r15
	mov	r14, rbp
.label_1537:
	mov	rdi, r15
	shl	rdi, 4
	call	malloc
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, -2
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x20]
	je	.label_1543
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
	je	.label_1564
	xor	ebp, ebp
	cmp	eax, 1
	sete	bpl
	or	rbp, 0xfffffffffffffffe
	mov	rdi, r12
.label_1550:
	call	free
.label_1543:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1564:
	test	r14, r14
	mov	rdi, r12
	je	.label_1542
	mov	r8, qword ptr [rsp + 8]
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	cmp	al, 2
	je	.label_1547
	lea	rbx, [r15 + 1]
	cmp	al, 1
	je	.label_1551
	test	al, al
	jne	.label_1553
	lea	r13, [rbx*8]
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 8], rax
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x10], rax
	test	rax, rax
	je	.label_1561
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1539
	mov	qword ptr [r14], rbx
	mov	r13d, 1
.label_1560:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1540
.label_1547:
	mov	rbx, qword ptr [r14]
	mov	r13d, 2
	cmp	rbx, r15
	jae	.label_1540
	mov	edi, OFFSET FLAT:label_1544
	mov	esi, OFFSET FLAT:label_1066
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_1545
	call	__assert_fail
.label_1551:
	mov	rax, qword ptr [r14]
	mov	r13d, 1
	cmp	rbx, rax
	ja	.label_1562
	mov	rbx, rax
.label_1540:
	test	r15, r15
	jle	.label_1556
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r14 + 0x10]
	mov	r9d, r15d
	and	r9d, 1
	xor	edx, edx
	cmp	r15, 1
	je	.label_1559
	mov	rsi, r15
	sub	rsi, r9
	mov	rbp, rdi
	add	rbp, 0x18
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1536:
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
	jne	.label_1536
.label_1559:
	test	r9, r9
	je	.label_1549
	mov	rsi, rdx
	shl	rsi, 4
	mov	rbp, qword ptr [rdi + rsi]
	mov	qword ptr [rcx + rdx*8], rbp
	mov	rcx, qword ptr [rdi + rsi + 8]
	mov	qword ptr [rax + rdx*8], rcx
.label_1549:
	mov	rbx, qword ptr [r14]
	jmp	.label_1555
.label_1556:
	xor	r15d, r15d
.label_1555:
	cmp	r15, rbx
	jae	.label_1568
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1566:
	mov	qword ptr [rcx + r15*8], -1
	mov	qword ptr [rax + r15*8], -1
	inc	r15
	cmp	r15, qword ptr [r14]
	jb	.label_1566
.label_1568:
	mov	ebp, r13d
.label_1548:
	mov	al, byte ptr [r8 + 0x38]
	add	bpl, bpl
	and	al, 0xf9
	mov	ecx, ebp
	and	cl, 6
	or	cl, al
	and	bpl, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	rbp, -2
	je	.label_1550
.label_1542:
	mov	al, byte ptr [rsp + 0x68]
	mov	rbp, qword ptr [rdi]
	test	al, al
	je	.label_1550
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rbp, rax
	jne	.label_1569
	mov	rbp, qword ptr [rdi + 8]
	sub	rbp, rax
	jmp	.label_1550
.label_1562:
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_1561
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1538
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [r14 + 8], rcx
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r14], rbx
	jmp	.label_1560
.label_1539:
	mov	rdi, qword ptr [rsp + 0x10]
.label_1554:
	call	free
.label_1561:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1548
.label_1553:
	mov	edi, OFFSET FLAT:label_1552
	mov	esi, OFFSET FLAT:label_1066
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_1545
	call	__assert_fail
.label_1569:
	mov	edi, OFFSET FLAT:label_1557
	mov	esi, OFFSET FLAT:label_1066
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_1558
	call	__assert_fail
.label_1538:
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_1554
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ce00

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
	.align	32
	#Procedure 0x40ce20
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
	js	.label_1570
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1573
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1570
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1571
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1574
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1570
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
	jmp	.label_1571
.label_1573:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1572
.label_1570:
	mov	rax, -2
	jmp	.label_1575
.label_1572:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1571
.label_1574:
	mov	r13, r15
.label_1571:
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
.label_1575:
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
	#Procedure 0x40cf30
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
	js	.label_1579
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1581
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1579
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1578
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1576
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1579
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
	jmp	.label_1578
.label_1581:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1580
.label_1579:
	mov	rax, -2
	jmp	.label_1577
.label_1580:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1578
.label_1576:
	mov	r13, r15
.label_1578:
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
.label_1577:
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
	#Procedure 0x40d040
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9d, eax
	or	r9b, 2
	test	rdx, rdx
	je	.label_1582
	mov	eax, r9d
.label_1582:
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
	#Procedure 0x40d070

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
	je	.label_1583
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_1583:
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
	#Procedure 0x40d0d0

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1585
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_1584
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_1584
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1585
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_1584
	mov	qword ptr [rbx + 0x18], rax
.label_1585:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1586
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_1584
	mov	qword ptr [rbx + 8], rax
.label_1586:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_1584:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d160

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
	jne	.label_1611
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1611
	cmp	byte ptr [r13 + 0x8c], 0
	je	.label_1623
.label_1611:
	mov	r12, qword ptr [r13 + 0x38]
	jmp	.label_1603
.label_1623:
	cmp	rdx, r15
	jle	.label_1630
	lea	rax, [r13 + 0x78]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 8], rax
	jmp	.label_1604
.label_1629:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_1638
	cmp	rbp, -2
	jne	.label_1640
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1640
.label_1638:
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
	jne	.label_1590
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_1590
	nop	
.label_1604:
	mov	r14, rdx
	mov	rbp, qword ptr [r13]
	mov	rbx, qword ptr [r13 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r12d, byte ptr [rbp + rax]
	test	r12b, r12b
	js	.label_1595
	mov	rdi, qword ptr [rsp + 8]
	call	mbsinit
	test	eax, eax
	je	.label_1595
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
.label_1590:
	mov	rax, r15
	jmp	.label_1593
	nop	dword ptr [rax]
.label_1595:
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
	ja	.label_1629
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	r12d, eax
	cmp	r12d, dword ptr [rsp + 4]
	lea	rbx, [rsp + 0x30]
	jne	.label_1636
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, r15
	jmp	.label_1644
	nop	word ptr cs:[rax + rax]
.label_1636:
	mov	rdi, rbx
	mov	esi, r12d
	lea	rdx, [rsp + 0x10]
	call	wcrtomb
	cmp	rbp, rax
	jne	.label_1587
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbx
.label_1644:
	mov	rdx, rbp
	call	memcpy
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], r12d
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_1593
	lea	rdi, [rcx + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_1593:
	mov	rdx, r14
	cmp	rdx, rax
	mov	r15, rax
	jg	.label_1604
	jmp	.label_1634
.label_1587:
	mov	r12, r15
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_1608
.label_1640:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_1630:
	mov	rax, r15
.label_1634:
	mov	qword ptr [r13 + 0x30], rax
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_1615
.label_1603:
	cmp	r15, rdx
	jge	.label_1619
	lea	rcx, [r13 + 0x20]
	lea	rsi, [r13 + 0x78]
.label_1608:
	mov	qword ptr [rsp + 0x18], rdx
	sub	rdx, r15
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsi]
	test	rax, rax
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 8], rcx
	jne	.label_1624
	mov	rbp, qword ptr [r13]
	add	rbp, qword ptr [r13 + 0x28]
	add	rbp, r12
.label_1596:
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	cmp	r12, -4
	ja	.label_1642
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 4]
	je	.label_1643
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x10]
	mov	esi, ebx
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_1588
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_1592
.label_1624:
	lea	rbp, [rsp + 0x30]
	movsxd	r8, dword ptr [r13 + 0x90]
	test	r8, r8
	jle	.label_1596
	xor	esi, esi
.label_1609:
	cmp	rsi, rdx
	jge	.label_1596
	mov	rdi, qword ptr [r13]
	add	rdi, qword ptr [r13 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rsi + rdi]
	movzx	ebx, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, r8
	jl	.label_1609
	jmp	.label_1596
.label_1642:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1610
	cmp	r14, -2
	jne	.label_1605
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1605
.label_1610:
	mov	rax, qword ptr [r13 + 0x28]
	mov	r12, qword ptr [rsp + 0x20]
	add	rax, r12
	mov	rdx, qword ptr [r13]
	mov	rcx, qword ptr [r13 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1616
.label_1613:
	movzx	eax, al
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_1626
.label_1639:
	inc	r12
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	jne	.label_1602
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_1602
.label_1588:
	cmp	rcx, -1
	je	.label_1643
	lea	rbp, [rcx + r15]
	mov	rdi, qword ptr [r13 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1645
.label_1605:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	r12, qword ptr [rsp + 0x20]
.label_1619:
	mov	qword ptr [r13 + 0x30], r15
	mov	qword ptr [r13 + 0x38], r12
.label_1615:
	xor	eax, eax
.label_1601:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1643:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1592:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r13 + 0x8c], 0
	mov	r12, qword ptr [rsp + 0x20]
	jne	.label_1600
.label_1591:
	add	r12, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_1602
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	jmp	.label_1614
.label_1602:
	mov	rbp, r15
.label_1614:
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r15, rbp
	jmp	.label_1603
.label_1600:
	mov	rax, qword ptr [r13 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_1618
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_1618
	movq	xmm0, r12
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [rcx - 4]
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 1
	mov	esi, 1
	test	rdi, rdi
	je	.label_1627
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm8, xmmword ptr [rip + label_1254]
	movdqa	xmm3, xmmword ptr [rip + label_1253]
	movdqa	xmm4, xmmword ptr [rip + label_1256]
	movdqa	xmm5, xmmword ptr [rip + label_1255]
.label_1635:
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
	jne	.label_1635
	jmp	.label_1606
.label_1645:
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [r13 + 0x18]
	test	rax, rax
	mov	qword ptr [rsp + 0x28], rcx
	jne	.label_1607
	shl	rdi, 3
	call	malloc
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1633
.label_1607:
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_1594
	test	r15, r15
	je	.label_1612
	xor	edx, edx
	cmp	r15, 4
	jb	.label_1625
	xor	edx, edx
	mov	r9, r15
	and	r9, 0xfffffffffffffffc
	je	.label_1625
	lea	rsi, [r9 - 4]
	mov	rdi, rsi
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_1589
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_1647
.label_1627:
	movq	xmm1, rsi
	pslldq	xmm1, 8
.label_1606:
	test	rdx, rdx
	je	.label_1646
	paddq	xmm0, xmm1
	movq	rdx, xmm1
	add	rdx, r15
	movdqu	xmmword ptr [rax + rdx*8], xmm0
	paddq	xmm0, xmmword ptr [rip + label_1253]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm0
.label_1646:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_1591
.label_1618:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + r12]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
.label_1598:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_1598
	jmp	.label_1591
.label_1633:
	mov	eax, 0xc
	jmp	.label_1601
.label_1589:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_1253]
	movdqa	xmm9, xmmword ptr [rip + label_1254]
	movdqa	xmm10, xmmword ptr [rip + label_1255]
	movdqa	xmm11, xmmword ptr [rip + label_1256]
	movdqa	xmm5, xmmword ptr [rip + label_1257]
	movdqa	xmm6, xmmword ptr [rip + label_1258]
	movdqa	xmm7, xmmword ptr [rip + label_1259]
	movdqa	xmm1, xmmword ptr [rip + label_1260]
.label_1628:
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
	jne	.label_1628
.label_1647:
	test	rdx, rdx
	je	.label_1599
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_1253]
	movdqa	xmm2, xmmword ptr [rip + label_1254]
.label_1632:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_1632
.label_1599:
	cmp	r15, r9
	mov	rdx, r9
	je	.label_1612
.label_1625:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1625
.label_1612:
	mov	byte ptr [r13 + 0x8c], 1
.label_1594:
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
	jb	.label_1597
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_1617
	mov	rsi, r10
	and	rsi, 0xfffffffffffffffc
	mov	r8, r10
	and	r8, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1617
	mov	rax, rsi
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm6, xmm0, 0x44
	movq	xmm1, r12
	pshufd	xmm11, xmm1, 0x44
	mov	r9, rbx
	movq	xmm2, rbx
	pshufd	xmm12, xmm2, 0x44
	movdqa	xmm7, xmmword ptr [rip + label_1620]
	movdqa	xmm8, xmmword ptr [rip + label_1253]
	movdqa	xmm9, xmmword ptr [rip + label_1254]
	movdqa	xmm10, xmmword ptr [rip + label_1621]
	pxor	xmm6, xmm10
	pshufd	xmm13, xmmword ptr [rip + label_1622],  0xe8
	mov	rdi, r8
.label_1637:
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
	jne	.label_1637
	cmp	r10, r8
	mov	rbx, r9
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_1597
.label_1617:
	lea	rcx, [rcx + r15*4]
	lea	rdx, [rdx + r15*8]
.label_1631:
	cmp	rax, r14
	mov	rsi, r12
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_1631
.label_1597:
	mov	rax, qword ptr [r13 + 0x58]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rax, rcx
	mov	qword ptr [r13 + 0x58], rax
	cmp	qword ptr [r13 + 0x60], rbx
	mov	r12, rbx
	jle	.label_1641
	add	qword ptr [r13 + 0x68], rcx
.label_1641:
	mov	rdx, qword ptr [r13 + 0x40]
	cmp	rdx, rax
	cmovg	rdx, rax
	add	r12, r14
	mov	r15, rbp
	jmp	.label_1603
.label_1616:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1613
.label_1626:
	mov	rcx, qword ptr [r13 + 0x18]
	mov	qword ptr [rcx + r15*8], r12
	jmp	.label_1639
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da90

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
	jle	.label_1659
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1656
	nop	dword ptr [rax + rax]
.label_1649:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [r13 + 0x78]
	test	rax, rax
	jne	.label_1652
.label_1660:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_1654:
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_1658
	lea	rdi, [rdx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1658:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_1656
	jmp	.label_1657
.label_1653:
	mov	ecx, dword ptr [rsp + 0xc]
	jmp	.label_1654
.label_1655:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1648
	xor	eax, eax
.label_1651:
	cmp	rax, rdx
	jge	.label_1650
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
	jl	.label_1651
	lea	rsi, [rsp + 0x10]
	jmp	.label_1648
.label_1652:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_1660
.label_1650:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1648
	nop	
.label_1656:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1655
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_1648:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1649
	cmp	rax, -2
	jne	.label_1653
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1649
	mov	qword ptr [r14], rbp
.label_1659:
	mov	rcx, rbx
.label_1657:
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
	.align	32
	#Procedure 0x40dc10

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
	jne	.label_1664
	mov	eax, dword ptr [r8]
	test	eax, eax
	jne	.label_1668
.label_1664:
	cmp	byte ptr [r13 + 8], 0xa
	jne	.label_1673
	mov	rax, qword ptr [rsp + 8]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1663
.label_1673:
	mov	rbp, rbx
	jmp	.label_1668
.label_1672:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1665
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	mov	r8, rbp
	jmp	.label_1667
	nop	word ptr cs:[rax + rax]
.label_1663:
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
	je	.label_1666
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_1675
	cmp	eax, 9
	mov	r15d, 0
	je	.label_1666
.label_1675:
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
	jne	.label_1670
	mov	eax, dword ptr [r8]
	test	eax, eax
	jne	.label_1671
.label_1670:
	mov	rax, qword ptr [rsp + 0x28]
	or	qword ptr [r14 + 0xa8], rax
	nop	dword ptr [rax]
.label_1666:
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_1672
	mov	rax, qword ptr [r14 + 0x70]
.label_1667:
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
	je	.label_1676
	mov	qword ptr [rbx], rbp
.label_1676:
	test	r15, r15
	je	.label_1678
	mov	qword ptr [r15], rbp
.label_1678:
	cmp	byte ptr [r13 + 8], 0xa
	mov	rbx, rbp
	je	.label_1663
.label_1668:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1671:
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_1668
	mov	r14d, 0x400ff
	xor	ebp, ebp
.label_1661:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_1661
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1661
.label_1669:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1677
	cmp	eax, 6
	jne	.label_1674
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
	jmp	.label_1662
.label_1677:
	mov	rdi, qword ptr [r15 + 0x28]
.label_1662:
	call	free
.label_1674:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1668
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_1669
	test	rbx, rbx
	mov	r15, rax
	je	.label_1669
	jmp	.label_1661
.label_1665:
	mov	dword ptr [rbp], 0xc
	xor	ebp, ebp
	jmp	.label_1668
	.section	.text
	.align	32
	#Procedure 0x40de80

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
	jle	.label_1679
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
	jl	.label_1689
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1689
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1707
.label_1689:
	cmp	bl, 0x5c
	jne	.label_1703
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1714
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_1713
.label_1698:
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
.label_1684:
	mov	byte ptr [r15], bl
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1711
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
	jmp	.label_1697
.label_1679:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_923
.label_1703:
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1718
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
	jmp	.label_1690
.label_1714:
	and	r14d, 0xff9fff00
	or	r14d, 0x24
	jmp	.label_1701
.label_1718:
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
.label_1690:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	add	bl, 0xf6
	movzx	ecx, bl
	cmp	cl, 0x73
	ja	.label_923
	jmp	qword ptr [(rcx * 8) + label_1683]
.label_3042:
	mov	rcx, r12
	test	ch, 8
	je	.label_923
	jmp	.label_1091
.label_1711:
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
.label_1697:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 2
	add	bl, 0xd9
	movzx	ecx, bl
	cmp	cl, 0x56
	ja	.label_923
	jmp	qword ptr [(rcx * 8) + label_1691]
.label_3028:
	mov	rcx, r12
	test	ch, 0x40
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	rbp, -0x31
	mov	qword ptr [r15], rbp
	jmp	.label_923
.label_1707:
	and	r14d, 0xff9fff00
	or	r14d, 0x200001
.label_1701:
	mov	dword ptr [r15 + 8], r14d
	mov	r14d, 1
.label_923:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_3043:
	mov	rdx, r12
	test	dl, 8
	jne	.label_969
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_969
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 8]
	add	eax, -9
	cmp	eax, 1
	ja	.label_923
	mov	eax, dword ptr [r15 + 8]
.label_969:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_923
.label_3044:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_923
	jmp	.label_998
.label_3045:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_923
	jmp	.label_1002
.label_3046:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_3047:
	test	r12w, 0x402
	jne	.label_923
	jmp	.label_1010
.label_3048:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_3049:
	test	r12w, 0x402
	jne	.label_923
	jmp	.label_1316
.label_3050:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_3051:
	mov	rdx, r12
	test	edx, 0x800008
	jne	.label_1027
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_1027
	test	dh, 8
	je	.label_923
	mov	rdx, qword ptr [rbp + 8]
	cmp	byte ptr [rdx + rcx - 1], 0xa
	jne	.label_923
.label_1027:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_923
.label_3052:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_923
	jmp	.label_1049
.label_3053:
	mov	rcx, r12
	test	ch, 4
	jne	.label_923
	test	cx, cx
	js	.label_1091
	jmp	.label_923
.label_3054:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_923
	jmp	.label_1162
.label_3024:
	test	r12d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_923
.label_3025:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_923
.label_998:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_3026:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_923
.label_1002:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_3027:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_923
.label_1010:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_3029:
	test	r12d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_923
.label_3030:
	test	r12d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_923
.label_3031:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_923
.label_1316:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_3032:
	test	r12d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_923
.label_3033:
	test	r12d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_3034:
	test	r12d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_3035:
	test	r12d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_923
.label_3036:
	test	r12d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_923
.label_3037:
	test	r12d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_3038:
	test	r12d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_3039:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_923
.label_1049:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_3040:
	mov	rcx, r12
	test	ch, 4
	jne	.label_923
	test	cx, cx
	js	.label_923
.label_1091:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_3041:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_923
.label_1162:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_1713:
	cmp	edx, 2
	jl	.label_1696
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_1698
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_1696
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_1698
.label_1696:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_1712
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1712:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	bl, byte ptr [rcx + rsi]
	je	.label_1684
	test	bl, bl
	js	.label_1698
	jmp	.label_1684
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e4a0

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
	jne	.label_1743
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_1743
	jmp	.label_1724
	nop	dword ptr [rax]
.label_1741:
	test	rbx, rbx
	cmove	rbx, r12
.label_1743:
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_1728
	test	r15, r15
	je	.label_1725
	cmp	eax, 9
	je	.label_1728
.label_1725:
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
	jne	.label_1737
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1739
.label_1737:
	test	rbx, rbx
	je	.label_1741
	test	r12, r12
	je	.label_1741
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rax + 0x80]
	cmp	ecx, 0xf
	je	.label_1744
	mov	rsi, rax
	mov	rax, qword ptr [rsi + 0x70]
.label_1742:
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
	jmp	.label_1743
.label_1744:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1740
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbp, r14
	jmp	.label_1742
.label_1728:
	mov	r12, rbx
.label_1724:
	mov	rax, r12
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1739:
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_1724
	mov	r14d, 0x400ff
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1730:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1730
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1730
.label_1723:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1736
	cmp	eax, 6
	jne	.label_1720
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
	jmp	.label_1729
.label_1736:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1729:
	call	free
.label_1720:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1724
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1723
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1723
	jmp	.label_1730
.label_1740:
	mov	ebp, 0x400ff
	mov	rcx, r14
.label_1732:
	mov	r13, r12
	mov	r12, qword ptr [r13 + 8]
	test	r12, r12
	jne	.label_1732
	mov	r12, qword ptr [r13 + 0x10]
	test	r12, r12
	jne	.label_1732
.label_1726:
	mov	eax, dword ptr [r13 + 0x30]
	and	eax, ebp
	cmp	eax, 3
	je	.label_1738
	cmp	eax, 6
	jne	.label_1731
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
	jmp	.label_1734
.label_1738:
	mov	rdi, qword ptr [r13 + 0x28]
.label_1734:
	call	free
	mov	rcx, r14
.label_1731:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1721
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, r13
	mov	r13, rax
	je	.label_1726
	test	r12, r12
	mov	r13, rax
	je	.label_1726
	jmp	.label_1732
.label_1721:
	mov	ebp, 0x400ff
.label_1733:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_1733
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1733
.label_1727:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, ebp
	cmp	eax, 3
	je	.label_1735
	cmp	eax, 6
	jne	.label_1746
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
	jmp	.label_1745
.label_1735:
	mov	rdi, qword ptr [r15 + 0x28]
.label_1745:
	call	free
	mov	rcx, r14
.label_1746:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1722
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_1727
	test	rbx, rbx
	mov	r15, rax
	je	.label_1727
	jmp	.label_1733
.label_1722:
	mov	dword ptr [rcx], 0xc
	xor	r12d, r12d
	jmp	.label_1724
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e7b0

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
	ja	.label_941
	mov	rdi, qword ptr [r14]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x18], rdi
	jmp	qword ptr [(rcx * 8) + label_1747]
.label_3065:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_917
	mov	ecx, OFFSET FLAT:label_918
	jmp	.label_919
.label_3066:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_980
	mov	ecx, OFFSET FLAT:label_71
.label_919:
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_937
	mov	eax, dword ptr [r12]
	test	eax, eax
.label_1338:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	je	.label_928
	jmp	.label_941
.label_937:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_928
.label_3056:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_953
	mov	rax, qword ptr [rdi + 0x70]
.label_1025:
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
	jl	.label_957
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	jg	.label_990
	mov	rbp, r14
	jmp	.label_928
.label_1105:
	mov	rcx, qword ptr [r8 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1283
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
	je	.label_1003
	mov	rax, qword ptr [rsi + 0x70]
	pxor	xmm1, xmm1
.label_1077:
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
.label_1070:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_1033
	mov	rax, qword ptr [rsi + 0x70]
.label_1367:
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
	je	.label_1020
	mov	qword ptr [rbx], rbp
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	mov	r14, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	jg	.label_990
	jmp	.label_928
.label_1003:
	mov	edi, 0x3c8
	call	malloc
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ebx, 0
	mov	r10, qword ptr [rsp + 8]
	pxor	xmm1, xmm1
	je	.label_1070
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1077
.label_1033:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1020
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1367
.label_990:
	cmp	rax, qword ptr [r8 + 0x30]
	jne	.label_1105
	mov	rbp, r14
	jmp	.label_928
.label_3057:
	mov	cl, byte ptr [r10]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [rdi + 0xa8], rax
	je	.label_1111
	or	qword ptr [rdi + 0xa0], rax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_1120
	mov	rax, qword ptr [rdi + 0x70]
.label_1072:
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
	jmp	.label_928
.label_3058:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_1141
	mov	rax, qword ptr [rdi + 0x70]
.label_1045:
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
	jle	.label_928
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_928
.label_3059:
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
	je	.label_1168
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
	jne	.label_941
	cmp	byte ptr [r10 + 8], 9
	jne	.label_1180
	mov	r15, rbp
.label_1168:
	cmp	r15, 8
	mov	rsi, qword ptr [rsp + 0x18]
	ja	.label_954
	mov	eax, 1
	mov	ecx, r15d
	shl	eax, cl
	cdqe	
	or	qword ptr [rsi + 0xa8], rax
.label_954:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_1191
	mov	rax, qword ptr [rsi + 0x70]
.label_1138:
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
	je	.label_1041
	mov	qword ptr [rdi], rbp
.label_1041:
	mov	qword ptr [rax + rcx + 0x30], r15
	jmp	.label_928
.label_3062:
	mov	eax, dword ptr [r10]
	test	ax, 0x30f
	je	.label_1214
	mov	al, byte ptr [rdi + 0xb0]
	test	al, 0x10
	jne	.label_1196
	mov	ecx, eax
	or	cl, 0x10
	mov	byte ptr [rdi + 0xb0], cl
	xor	r14d, r14d
	test	al, 8
	mov	ebp, 0
	jne	.label_1217
	movdqa	xmm0, xmmword ptr [rip + label_1225]
	movdqu	xmmword ptr [rdi + 0xb8], xmm0
	mov	ebp, 2
	mov	r14d, 0x80
	test	al, 4
	je	.label_1217
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0xc8], xmm0
.label_1196:
	mov	eax, dword ptr [r10]
.label_1214:
	cmp	eax, 0x200
	je	.label_1237
	cmp	eax, 0x100
	jne	.label_1239
	mov	dword ptr [r10], 6
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_1384
	mov	rax, qword ptr [rdi + 0x70]
.label_1202:
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
	jmp	.label_1252
.label_3064:
	test	ebx, 0x1000000
	jne	.label_1275
.label_3061:
	test	bl, 0x20
	jne	.label_1275
	test	bl, 0x10
	jne	.label_1280
.label_3060:
	test	ebx, 0x20000
	jne	.label_1073
	movzx	ecx, al
	cmp	ecx, 9
	jne	.label_1073
	mov	dword ptr [r12], 0x10
	jmp	.label_1038
.label_1073:
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r10 + 8], eax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_1288
	mov	rax, qword ptr [rdi + 0x70]
.label_1320:
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
.label_996:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_928
.label_3063:
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
	je	.label_1318
	test	r15, r15
	je	.label_1318
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, rbp
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 0x19
	je	.label_1328
	cmp	cl, 2
	je	.label_1331
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_1333
.label_3067:
	mov	dword ptr [r12], 5
	jmp	.label_1038
.label_1280:
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
.label_957:
	mov	rbp, r14
	jmp	.label_928
.label_1328:
	or	byte ptr [r15 + 0x20], 1
	test	bh, 1
	je	.label_1350
	or	byte ptr [r14 + 1], 4
.label_1350:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x10]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rdx
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 2
	je	.label_1331
	mov	sil, 1
	mov	dword ptr [rsp + 0x28], esi
.label_1333:
	cmp	cl, 0x15
	jne	.label_1360
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rdx + 8], ecx
.label_1360:
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
	jne	.label_1370
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_1357
.label_1207:
	cmp	al, 2
	je	.label_1379
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
	je	.label_1357
	jmp	.label_1370
.label_3076:
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	qword ptr [rsp + 0x68], rcx
	je	.label_1390
	mov	rax, qword ptr [r15]
.label_1030:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x58]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_1026
.label_3077:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	je	.label_929
	jmp	.label_1006
.label_1175:
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax]
	jmp	.label_1015
.label_1380:
	xor	eax, eax
.label_1015:
	cmp	r15d, 3
	je	.label_1352
	test	r15d, r15d
	jne	.label_940
	mov	bl, byte ptr [rsp + 0xa0]
	jmp	.label_942
.label_1352:
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	bl, byte ptr [rcx]
	jmp	.label_942
.label_940:
	xor	ebx, ebx
.label_942:
	cmp	ebp, 3
	je	.label_1090
	test	ebp, ebp
	jne	.label_947
.label_1090:
	test	r12, r12
	movzx	edx, al
	je	.label_950
	mov	edi, edx
	call	btowc
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	edx, eax
	jmp	.label_950
.label_947:
	mov	edx, dword ptr [rsp + 0x58]
.label_950:
	cmp	r15d, 3
	je	.label_959
	test	r15d, r15d
	jne	.label_960
.label_959:
	test	r12, r12
	movzx	eax, bl
	je	.label_970
	mov	edi, eax
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_970
.label_960:
	mov	eax, dword ptr [rsp + 0xa0]
.label_970:
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	edx, -1
	mov	ecx, 3
	je	.label_975
	cmp	eax, -1
	je	.label_975
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_1242
	cmp	edx, eax
	mov	ecx, 0xb
	ja	.label_975
.label_1242:
	test	r12, r12
	je	.label_995
	mov	rsi, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x60], rsi
	je	.label_1391
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12 + 0x10]
.label_1071:
	mov	dword ptr [rdi + rsi*4], edx
	lea	rcx, [rsi + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [rbp + rsi*4], eax
.label_995:
	mov	r15, qword ptr [rsp + 0x30]
	mov	eax, eax
	mov	edx, edx
	xor	ecx, ecx
	mov	r12, qword ptr [rsp + 0x48]
	nop	dword ptr [rax]
.label_1021:
	cmp	rdx, rcx
	ja	.label_930
	cmp	rcx, rax
	ja	.label_930
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r14 + rdi*8], rsi
.label_930:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_1021
	mov	dword ptr [r12], 0
	jmp	.label_1026
.label_1390:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_1037
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rcx, [rcx + rcx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	r15, qword ptr [rsp + 0x30]
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_1030
.label_1391:
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
	je	.label_1063
	test	rbp, rbp
	je	.label_1063
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
	jmp	.label_1071
.label_1357:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	ebp, dword ptr [rsp + 0x50]
	cmp	ebp, 2
	je	.label_1236
	cmp	ebp, 4
	jne	.label_1342
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
	je	.label_1026
	jmp	.label_993
.label_1342:
	mov	rax, qword ptr [rsp + 8]
	mov	al, byte ptr [rax + 8]
	cmp	al, 0x16
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_1095
	cmp	al, 2
	jne	.label_1123
	jmp	.label_1124
.label_1095:
	movsxd	rax, r13d
	add	qword ptr [rsi + 0x48], rax
	lea	rdi, [rsp + 0xb0]
	mov	rdx, rbx
	mov	r15, rsi
	call	peek_token_bracket
	mov	cl, byte ptr [rsp + 0xb8]
	cmp	cl, 0x15
	je	.label_1008
	cmp	cl, 2
	je	.label_1377
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
	jne	.label_1152
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
	je	.label_975
	cmp	r15d, 4
	je	.label_975
	cmp	ebp, 3
	mov	r10, qword ptr [rsp + 8]
	jne	.label_1265
	mov	rdi, qword ptr [rsp + 0x58]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_975
.label_1265:
	cmp	r15d, 3
	jne	.label_1171
	mov	rdi, qword ptr [rsp + 0xa0]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_975
.label_1171:
	cmp	ebp, 3
	je	.label_1175
	test	ebp, ebp
	jne	.label_1380
	mov	al, byte ptr [rsp + 0x58]
	jmp	.label_1015
.label_1008:
	mov	eax, r13d
	neg	eax
	cdqe	
	add	qword ptr [r15 + 0x48], rax
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + 8], 1
	mov	r15, qword ptr [rsp + 0x30]
.label_1123:
	mov	eax, ebp
	cmp	ebp, 3
	ja	.label_968
	jmp	qword ptr [(rax * 8) + label_1187]
.label_3075:
	mov	cl, byte ptr [rsp + 0x58]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	jmp	.label_1188
.label_1236:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_1198
.label_929:
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_1188:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
.label_1026:
	mov	al, byte ptr [r10 + 8]
	cmp	al, 0x15
	jne	.label_1207
	movsxd	rax, r13d
	mov	rcx, qword ptr [rsp + 0x10]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	je	.label_1210
	movdqu	xmm0, xmmword ptr [r14]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14], xmm0
	movdqu	xmm0, xmmword ptr [r14 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14 + 0x10], xmm0
.label_1210:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_1222
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r14], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r14 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r14 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r14 + 0x18], rcx
.label_1222:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_915
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_915
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_915
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_915
	cmp	eax, 2
	jl	.label_1245
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_915
	test	byte ptr [r15 + 0x20], 1
	jne	.label_915
.label_1245:
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
	je	.label_944
	mov	rax, qword ptr [rsi + 0x70]
.label_1364:
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
	jmp	.label_996
.label_915:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1107
	mov	rax, qword ptr [r9 + 0x70]
.label_1246:
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
	jne	.label_1240
	cmp	qword ptr [r14 + 8], 0
	jne	.label_1240
	cmp	qword ptr [r14 + 0x10], 0
	jne	.label_1240
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_1267
.label_1240:
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_1310
	mov	rbp, qword ptr [r9 + 0x70]
	mov	r8, qword ptr [rsp + 0x10]
.label_1108:
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
	je	.label_1343
	mov	rax, qword ptr [r9 + 0x70]
.label_985:
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
.label_928:
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
.label_1475:
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x17
	ja	.label_941
	mov	ecx, 0x8c0800
	bt	rcx, rax
	jae	.label_941
	mov	r14, qword ptr [r8 + 0x48]
	movdqu	xmm0, xmmword ptr [rdi]
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	cmp	eax, 0x17
	mov	qword ptr [rsp + 0x28], r15
	jne	.label_1374
	mov	rsi, -1
	jmp	.label_977
	nop	word ptr cs:[rax + rax]
.label_1374:
	xor	r13d, r13d
	cmp	eax, 0x12
	sete	r13b
	cmp	eax, 0x13
	mov	r15, -1
	mov	eax, 1
	cmove	r15, rax
.label_1125:
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
	je	.label_1132
	mov	rax, r15
	mov	r11, r13
	or	rax, r11
	je	.label_1479
	test	r11, r11
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	rdi, qword ptr [rsp + 8]
	jg	.label_1397
.label_1424:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_1400
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	
.label_1403:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_1403
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1403
	nop	word ptr cs:[rax + rax]
.label_1419:
	mov	edx, dword ptr [rcx + 0x30]
	cmp	dl, 0x11
	jne	.label_1412
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_1412
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1412:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_1400
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_1419
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_1419
	jmp	.label_1403
	nop	word ptr cs:[rax + rax]
.label_1400:
	xor	ebx, ebx
	cmp	r15, -1
	sete	r14b
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1427
	mov	rax, qword ptr [rbp + 0x70]
.label_1402:
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
	je	.label_1436
	mov	qword ptr [r12], r14
.label_1436:
	add	r11, 2
	cmp	r11, r15
	jg	.label_1447
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_1409
.label_1039:
	lea	rax, [r13 + r13*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	esi, 0x8000
	cmovle	rsi, rax
	nop	dword ptr [rax + rax]
.label_977:
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
	je	.label_1014
	cmp	al, 2
	mov	r9, qword ptr [rsp + 0x28]
	je	.label_924
	mov	sil, 0x2c
	cmp	dl, 0x2c
	mov	ebx, eax
	je	.label_1094
	cmp	dl, 0x30
	mov	rsi, -2
	mov	rbx, qword ptr [rsp + 0x20]
	jb	.label_977
	cmp	eax, 1
	jne	.label_977
	cmp	r13, -2
	je	.label_977
	cmp	dl, 0x39
	ja	.label_977
	cmp	r13, -1
	jne	.label_1039
	add	rcx, -0x30
	mov	rsi, rcx
	jmp	.label_977
	nop	dword ptr [rax]
.label_1014:
	mov	esi, edx
	mov	r9, qword ptr [rsp + 0x28]
.label_1094:
	cmp	r13, -1
	jne	.label_1089
	cmp	sil, 0x2c
	jne	.label_1119
	cmp	eax, 1
	mov	r13d, 0
	je	.label_1118
	jmp	.label_1119
	nop	word ptr [rax + rax]
.label_1089:
	cmp	r13, -2
	je	.label_924
.label_1118:
	cmp	bl, 0x18
	je	.label_1061
	cmp	bl, 1
	jne	.label_924
	cmp	sil, 0x2c
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_924
	mov	rdx, -1
	jmp	.label_1114
.label_1061:
	mov	r15, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_1201
.label_1112:
	lea	rax, [r15 + r15*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_1114:
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
	je	.label_966
	cmp	al, 2
	je	.label_924
	cmp	cl, 0x2c
	je	.label_966
	cmp	cl, 0x30
	mov	rdx, -2
	jb	.label_1114
	cmp	eax, 1
	jne	.label_1114
	cmp	r15, -2
	je	.label_1114
	cmp	cl, 0x39
	ja	.label_1114
	cmp	r15, -1
	jne	.label_1112
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_1114
.label_966:
	cmp	r15, -2
	je	.label_924
.label_1201:
	cmp	r15, -1
	sete	cl
	cmp	r13, r15
	setle	dl
	or	dl, cl
	cmp	dl, 1
	jne	.label_1119
	cmp	eax, 0x18
	jne	.label_1119
	cmp	r15, -1
	mov	rax, r15
	cmove	rax, r13
	cmp	rax, 0x8000
	jl	.label_1125
	mov	dword ptr [r12], 0xf
	jmp	.label_1057
	nop	dword ptr [rax]
.label_1119:
	mov	dword ptr [r12], 0xa
	jmp	.label_1057
.label_924:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1131
	mov	qword ptr [r8 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rdi], xmm0
	mov	byte ptr [rdi + 8], 1
	mov	rcx, r9
	jmp	.label_1132
.label_1410:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1455
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
	jmp	.label_1457
.label_1443:
	mov	qword ptr [rsp + 0x40], r11
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_1472
.label_1408:
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
	je	.label_1396
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1480
.label_1455:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1482
.label_1474:
	mov	qword ptr [rbx], 0
	mov	r15, qword ptr [rsp + 0x30]
.label_1482:
	xor	r12d, r12d
.label_1472:
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
	je	.label_1396
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1452
	nop	dword ptr [rax + rax]
.label_1409:
	mov	r13, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1410
	mov	rax, qword ptr [rbp + 0x70]
.label_1457:
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
	jmp	.label_1418
	nop	dword ptr [rax + rax]
.label_1469:
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
.label_1418:
	mov	qword ptr [rcx], r13
	mov	rax, qword ptr [rbx]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r13, qword ptr [rbx]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1451
	lea	rbx, [r13 + 8]
	mov	r12, rax
	jmp	.label_1454
	nop	dword ptr [rax]
.label_1451:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1462:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1458
	test	r12, r12
	jne	.label_1461
.label_1458:
	mov	r12, qword ptr [rax]
	mov	r13, qword ptr [r13]
	test	r12, r12
	jne	.label_1462
	jmp	.label_1465
.label_1461:
	lea	rbx, [r13 + 0x10]
.label_1454:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1466
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1469
.label_1466:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1474
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
	jmp	.label_1469
.label_1465:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1443
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
.label_1452:
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
	je	.label_1396
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1408
	mov	rax, qword ptr [rbp + 0x70]
.label_1480:
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
	jl	.label_1409
.label_1447:
	mov	rbx, qword ptr [rsp + 0x38]
	test	rbx, rbx
	je	.label_1431
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_1434
	mov	rax, qword ptr [rbp + 0x70]
.label_1432:
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
	jmp	.label_1441
.label_1431:
	mov	r12, qword ptr [rsp + 0x48]
.label_1441:
	mov	rbx, qword ptr [rsp + 0x20]
	xor	eax, eax
	mov	rcx, r14
	jmp	.label_1429
.label_1479:
	mov	rax, r9
	nop	word ptr cs:[rax + rax]
.label_1453:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1453
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1453
.label_1478:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_1460
	cmp	eax, 6
	jne	.label_1486
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
	jmp	.label_1483
.label_1460:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1483:
	call	free
	mov	r9, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x10]
.label_1486:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_1132
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_1478
	test	rax, rax
	mov	rbx, rdx
	je	.label_1478
	jmp	.label_1453
.label_1397:
	cmp	r11, 1
	mov	rax, r9
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	je	.label_1481
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	r14d, 2
	mov	rax, r9
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_1463
.label_1427:
	mov	edi, 0x3c8
	call	malloc
.label_2945:
	mov	r11, r13
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1396
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1402
.label_1434:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ecx, 0
	je	.label_1132
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_1432
.label_1131:
	xor	ecx, ecx
	cmp	al, 2
	setne	cl
	add	ecx, 9
	mov	dword ptr [r12], ecx
	jmp	.label_1057
.label_1464:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1437
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
	jmp	.label_1438
.label_1444:
	mov	r12, rbx
	jmp	.label_1445
.label_1437:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1446
.label_1433:
	mov	qword ptr [r15], 0
.label_1446:
	xor	r12d, r12d
.label_1445:
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
	je	.label_1396
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1459
.label_1463:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x40], rax
	je	.label_1464
	mov	rax, qword ptr [rbp + 0x70]
.label_1438:
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
	jmp	.label_1470
.label_1426:
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
.label_1470:
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	mov	qword ptr [rsp + 0x38], rcx
	je	.label_1399
	lea	r15, [rcx + 8]
	mov	r12, rax
	jmp	.label_1404
.label_1399:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
	nop	word ptr [rax + rax]
.label_1415:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1471
	test	r12, r12
	jne	.label_1414
.label_1471:
	mov	r12, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsp + 0x38], rcx
	test	r12, r12
	jne	.label_1415
	jmp	.label_1421
.label_1414:
	mov	rax, qword ptr [rsp + 0x38]
	lea	r15, [rax + 0x10]
.label_1404:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1423
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1426
.label_1423:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1433
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
	jmp	.label_1426
.label_1421:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1444
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, rbx
.label_1459:
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
	je	.label_1448
	mov	qword ptr [rbx], rdx
.label_1448:
	mov	qword ptr [rsp + 0x38], rdx
	test	r12, r12
	je	.label_1396
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12], rax
	cmp	r14, r11
	lea	r14, [r14 + 1]
	jl	.label_1463
.label_1481:
	cmp	r11, r15
	jne	.label_1468
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x48]
	jmp	.label_1132
.label_1468:
	mov	r14, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x30], r15
	je	.label_1450
	mov	rax, qword ptr [rbp + 0x70]
.label_1449:
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
	jmp	.label_1476
.label_1428:
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
.label_1476:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_1405
	lea	r15, [r14 + 8]
	mov	rbx, rax
	jmp	.label_1398
.label_1405:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
.label_1422:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_1417
	test	rbx, rbx
	jne	.label_1440
.label_1417:
	mov	rbx, qword ptr [rax]
	mov	r14, qword ptr [r14]
	test	rbx, rbx
	jne	.label_1422
	jmp	.label_1424
.label_1440:
	lea	r15, [r14 + 0x10]
.label_1398:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1425
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1428
.label_1425:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1435
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
	jmp	.label_1428
.label_1450:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1484
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
	jmp	.label_1449
.label_1484:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1456
.label_1435:
	mov	qword ptr [r15], 0
.label_1456:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x28]
.label_1396:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], 0xc
.label_1057:
	xor	ecx, ecx
.label_1132:
	test	rcx, rcx
	sete	al
	jne	.label_1467
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1429
	jmp	.label_1473
	nop	word ptr cs:[rax + rax]
.label_1467:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
.label_1429:
	cmp	qword ptr [rsp + 0x68], 0
	mov	r15, rcx
	je	.label_1475
	mov	dl, byte ptr [rdi + 8]
	cmp	dl, 0x17
	je	.label_1477
	cmp	dl, 0xb
	mov	r15, rcx
	jne	.label_1475
.label_1477:
	test	al, al
	jne	.label_1275
	mov	r14d, 0x400ff
	nop	dword ptr [rax + rax]
.label_1411:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1411
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1411
	nop	word ptr cs:[rax + rax]
.label_1406:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1485
	cmp	eax, 6
	jne	.label_1487
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
	jmp	.label_1401
	nop	dword ptr [rax]
.label_1485:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1401:
	call	free
.label_1487:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1275
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1406
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1406
	jmp	.label_1411
.label_1275:
	mov	dword ptr [r12], 0xd
.label_1038:
	xor	r15d, r15d
.label_941:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1237:
	mov	dword ptr [r10], 5
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_1325
	mov	rax, qword ptr [rdi + 0x70]
.label_1218:
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
.label_1252:
	mov	dword ptr [r10], ecx
	mov	ebp, dword ptr [r15]
	cmp	ebp, 0xf
	je	.label_1346
	mov	rax, qword ptr [rdi + 0x70]
.label_1155:
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
.label_1150:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_1361
	mov	rax, qword ptr [rdi + 0x70]
.label_1164:
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
	je	.label_1368
	mov	qword ptr [r14], r15
.label_1368:
	test	rbp, rbp
	je	.label_1020
	mov	qword ptr [rbp], r15
	test	r14, r14
	jne	.label_1156
	jmp	.label_1020
.label_1239:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_1382
	mov	rax, qword ptr [rdi + 0x70]
.label_1234:
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
.label_1156:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbx, r8
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_941
.label_1283:
	mov	rbp, r14
	jmp	.label_928
.label_1473:
	xor	r15d, r15d
	test	r9, r9
	je	.label_941
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1413:
	mov	rbx, r9
	mov	r9, qword ptr [rbx + 8]
	test	r9, r9
	jne	.label_1413
	mov	r9, qword ptr [rbx + 0x10]
	test	r9, r9
	jne	.label_1413
.label_1439:
	mov	eax, dword ptr [rbx + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1416
	cmp	eax, 6
	jne	.label_1420
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
	jmp	.label_1430
.label_1416:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1430:
	call	free
.label_1420:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_941
	mov	r9, qword ptr [rax + 0x10]
	cmp	r9, rbx
	mov	rbx, rax
	je	.label_1439
	test	r9, r9
	mov	rbx, rax
	je	.label_1439
	jmp	.label_1413
.label_1267:
	mov	rdi, r14
	call	free
	mov	r10, qword ptr [rsp + 8]
	mov	rbp, r15
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_928
.label_1370:
	mov	dword ptr [r12], eax
	jmp	.label_993
.label_1379:
	mov	dword ptr [r12], 7
	jmp	.label_993
.label_1288:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1020
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1320
.label_1331:
	mov	dword ptr [r12], 2
	jmp	.label_993
.label_953:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1020
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1025
.label_1111:
	mov	dword ptr [r12], 6
	jmp	.label_1038
.label_1141:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1020
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1045
.label_1318:
	mov	rdi, r14
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_1020
.label_1120:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1020
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1072
.label_1107:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1037
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1246
.label_1310:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1037
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1108
.label_1343:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1037
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_985
.label_1198:
	mov	dword ptr [r12], 3
	jmp	.label_993
.label_1191:
	mov	rbp, rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1020
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
	jmp	.label_1138
.label_1346:
	mov	edi, 0x3c8
	call	malloc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	xor	ebp, ebp
	test	rax, rax
	je	.label_1150
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_1155
.label_1361:
	mov	edi, 0x3c8
	call	malloc
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1020
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_1164
.label_1124:
	mov	dword ptr [r12], 7
	jmp	.label_993
.label_1217:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rax]
	inc	r14
.label_1193:
	mov	rsi, r14
	xor	eax, eax
.label_1190:
	test	byte ptr [r9 + rsi*2 - 2], 8
	je	.label_1177
	mov	edx, 1
	mov	ecx, eax
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_1177:
	cmp	esi, 0x5f
	je	.label_1182
	movzx	ecx, word ptr [r9 + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_1184
.label_1182:
	lea	ecx, [rax + 1]
	mov	edx, 1
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_1184:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_1190
	inc	rbp
	add	r14, 0x40
	cmp	ebp, 4
	jne	.label_1193
	jmp	.label_1196
.label_1384:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	r14d, r14d
	test	rax, rax
	je	.label_1127
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1202
.label_1325:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	r14d, r14d
	test	rax, rax
	je	.label_1127
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1218
.label_1382:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1020
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1234
.label_1020:
	mov	dword ptr [r12], 0xc
	jmp	.label_1038
.label_1377:
	mov	dword ptr [r12], 7
	jmp	.label_1159
.label_1127:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_1252
.label_1180:
	mov	rax, rdi
	test	rdi, rdi
	je	.label_1264
	mov	r14d, 0x400ff
	mov	rcx, rax
.label_1268:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1268
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1268
.label_1291:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1273
	cmp	eax, 6
	jne	.label_1277
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
	jmp	.label_1084
.label_1273:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1084:
	call	free
.label_1277:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1264
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1291
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1291
	jmp	.label_1268
.label_1264:
	mov	dword ptr [r12], 8
	jmp	.label_1038
.label_1152:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], eax
	jmp	.label_1159
.label_1006:
	mov	dword ptr [r12], 3
	jmp	.label_993
.label_944:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1037
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_1364
.label_1037:
	mov	dword ptr [r12], 0xc
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_1159
.label_968:
	mov	edi, OFFSET FLAT:label_1313
	mov	esi, OFFSET FLAT:label_1314
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_1315
	call	__assert_fail
.label_1063:
	call	free
	mov	rdi, rbp
	call	free
	mov	ecx, 0xc
	mov	rbx, qword ptr [rsp + 0x20]
.label_975:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], ecx
.label_1159:
	mov	r15, qword ptr [rsp + 0x30]
.label_993:
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
	jmp	.label_1338
	.section	.text
	.align	32
	#Procedure 0x410ed0

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
	je	.label_1752
	mov	qword ptr [rsp + 8], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1756
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
	jne	.label_1763
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1750
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1748:
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
	jne	.label_1748
.label_1750:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_1757
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1757:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1761
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_1761:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_1749
	mov	rax, qword ptr [r12 + 0x70]
.label_1762:
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
	jl	.label_1754
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1764
	mov	rbp, qword ptr [r12 + 0x70]
.label_1755:
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
	je	.label_1753
	mov	rcx, qword ptr [r12 + 0x70]
.label_1751:
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
	jmp	.label_1759
.label_1754:
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
.label_1759:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1752:
	mov	dword ptr [r15], 0xc
	jmp	.label_1758
.label_1756:
	mov	rdi, rbx
	jmp	.label_1765
.label_1763:
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
	jmp	.label_1758
.label_1749:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1760
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1762
.label_1764:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1760
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_1755
.label_1760:
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
.label_1765:
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1758:
	xor	eax, eax
	jmp	.label_1759
.label_1753:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1759
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_1751
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4112b0

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1775
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1769
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1769
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_1767
.label_1769:
	test	dl, 1
	je	.label_1773
	cmp	al, 0x5c
	jne	.label_1773
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1773
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_1767
.label_1775:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1773:
	cmp	al, 0x5c
	jg	.label_1770
	cmp	al, 0x2d
	je	.label_1771
	cmp	al, 0x5b
	jne	.label_1767
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1772
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	al, 0x3d
	je	.label_1774
	cmp	al, 0x3a
	je	.label_1776
	cmp	al, 0x2e
	jne	.label_1768
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1770:
	cmp	al, 0x5d
	je	.label_1766
	cmp	al, 0x5e
	jne	.label_1767
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1767:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1771:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1766:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1772:
	mov	byte ptr [rdi], 0
.label_1768:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1774:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1776:
	test	dl, 4
	je	.label_1768
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4113a0

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
	je	.label_1777
	lea	rax, [r11 + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_1777
	mov	r10, qword ptr [rsi + 0x10]
	lea	rax, [r10 + r11*4]
	mov	edi, 1
	nop	word ptr cs:[rax + rax]
.label_1780:
	cmp	dword ptr [rax + rdi*4], -1
	jne	.label_1778
	lea	rdx, [r11 + rdi + 1]
	inc	rdi
	cmp	rdx, rbx
	jl	.label_1780
.label_1778:
	cmp	edi, 2
	jl	.label_1777
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + r11*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, r11
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1781
.label_1777:
	movsxd	rax, ecx
	add	r11, rax
	mov	qword ptr [rsi + 0x48], r11
	movzx	edi, byte ptr [r15 + 8]
	mov	eax, edi
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_1289
	jmp	qword ptr [(rax * 8) + label_1779]
.label_3079:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], r11
	jle	.label_1293
	mov	r11b, byte ptr [r15]
	xor	ecx, ecx
	jmp	.label_1704
	nop	word ptr cs:[rax + rax]
.label_1700:
	inc	rcx
	movzx	edi, byte ptr [r15 + 8]
.label_1704:
	cmp	dil, 0x1e
	jne	.label_1717
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1716
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1688
	nop	dword ptr [rax]
.label_1717:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_1708:
	mov	bl, byte ptr [rbx + rdx]
.label_1688:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1293
	cmp	bl, r11b
	jne	.label_1693
	mov	rdx, qword ptr [rsi + 8]
	cmp	byte ptr [rdx + rdi], 0x5d
	je	.label_1694
.label_1693:
	mov	rdx, qword ptr [r14 + 8]
	mov	byte ptr [rdx + rcx], bl
	cmp	rcx, 0x1e
	jle	.label_1700
	jmp	.label_1293
.label_1716:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_1715
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_1709
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_1710
.label_1709:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1710
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1692
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_1692
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_1699:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1692
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_1699
.label_1692:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_1688
.label_1715:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_1708
.label_1710:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1688
.label_1694:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	cl, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	cl, 0x1e
	je	.label_1680
	cmp	cl, 0x1c
	je	.label_1687
	cmp	cl, 0x1a
	jne	.label_1293
	mov	dword ptr [r14], 3
	jmp	.label_1293
.label_1680:
	mov	dword ptr [r14], 4
	jmp	.label_1293
.label_1687:
	mov	dword ptr [r14], 2
	jmp	.label_1293
.label_3078:
	test	r9b, r9b
	jne	.label_1289
	lea	rdi, [rsp]
	mov	rdx, r8
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 8], 0x15
	jne	.label_1293
.label_1289:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1781:
	xor	eax, eax
.label_1293:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411600

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
	je	.label_1782
	mov	esi, OFFSET FLAT:label_1787
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1788
	mov	esi, OFFSET FLAT:label_1790
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1782
.label_1788:
	mov	r12d, OFFSET FLAT:label_1792
.label_1782:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1793
.label_1843:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_917
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1864
	mov	esi, OFFSET FLAT:label_1802
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1803
	mov	esi, OFFSET FLAT:label_1790
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1809
	mov	esi, OFFSET FLAT:label_980
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1812
	mov	esi, OFFSET FLAT:label_1792
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1816
	mov	esi, OFFSET FLAT:label_1817
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1820
	mov	esi, OFFSET FLAT:label_1822
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1826
	mov	esi, OFFSET FLAT:label_1787
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1828
	mov	esi, OFFSET FLAT:label_1831
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1834
	mov	esi, OFFSET FLAT:label_1836
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1837
	mov	esi, OFFSET FLAT:label_1840
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1865
	mov	esi, OFFSET FLAT:label_1844
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_1785
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1848
	xor	ecx, ecx
.label_1854:
	test	byte ptr [rdx + rcx*2 + 1], 0x10
	je	.label_1838
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1838:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1854
	jmp	.label_1785
.label_1864:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1858
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1783:
	test	byte ptr [rdx + rcx*2], 8
	je	.label_1861
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1861:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1783
	jmp	.label_1785
.label_1803:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1786
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1795:
	test	byte ptr [rdx + rcx*2], 2
	je	.label_1833
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1833:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1795
	jmp	.label_1785
.label_1809:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1798
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1806:
	test	byte ptr [rdx + rcx*2 + 1], 2
	je	.label_1799
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1799:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1806
	jmp	.label_1785
.label_1812:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1811
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1823:
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_1815
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1815:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1823
	jmp	.label_1785
.label_1816:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1827
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1839:
	test	byte ptr [rdx + rcx*2 + 1], 4
	je	.label_1832
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1832:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1839
	jmp	.label_1785
.label_1820:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1845
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1851:
	test	byte ptr [rdx + rcx*2 + 1], 8
	je	.label_1805
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1805:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1851
	jmp	.label_1785
.label_1826:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1853
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1862:
	test	byte ptr [rdx + rcx*2 + 1], 0x40
	je	.label_1857
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1857:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1862
	jmp	.label_1785
.label_1828:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1866
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1791:
	test	byte ptr [rdx + rcx*2 + 1], 1
	je	.label_1784
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1784:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1791
	jmp	.label_1785
.label_1834:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1860
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1801:
	test	byte ptr [rdx + rcx*2], 1
	je	.label_1796
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1796:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1801
	jmp	.label_1785
.label_1837:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1804
	xor	ecx, ecx
.label_1814:
	cmp	word ptr [rdx + rcx*2], 0
	jns	.label_1808
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1808:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1814
	jmp	.label_1785
.label_1865:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1818
	xor	ecx, ecx
.label_1829:
	test	byte ptr [rdx + rcx*2], 4
	je	.label_1821
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1821:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1829
.label_1785:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1793:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1785
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_1843
.label_1858:
	xor	esi, esi
.label_1849:
	test	byte ptr [rdx + rsi*2], 8
	je	.label_1847
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1847:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1849
	jmp	.label_1785
.label_1786:
	xor	esi, esi
.label_1856:
	test	byte ptr [rdx + rsi*2], 2
	je	.label_1852
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1852:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1856
	jmp	.label_1785
.label_1798:
	xor	esi, esi
.label_1863:
	test	byte ptr [rdx + rsi*2 + 1], 2
	je	.label_1859
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1859:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1863
	jmp	.label_1785
.label_1811:
	xor	esi, esi
.label_1807:
	test	byte ptr [rdx + rsi*2 + 1], 0x20
	je	.label_1867
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1867:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1807
	jmp	.label_1785
.label_1827:
	xor	esi, esi
.label_1794:
	test	byte ptr [rdx + rsi*2 + 1], 4
	je	.label_1789
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1789:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1794
	jmp	.label_1785
.label_1845:
	xor	esi, esi
.label_1800:
	test	byte ptr [rdx + rsi*2 + 1], 8
	je	.label_1797
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1797:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1800
	jmp	.label_1785
.label_1853:
	xor	esi, esi
.label_1810:
	test	byte ptr [rdx + rsi*2 + 1], 0x40
	je	.label_1842
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1842:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1810
	jmp	.label_1785
.label_1866:
	xor	esi, esi
.label_1819:
	test	byte ptr [rdx + rsi*2 + 1], 1
	je	.label_1813
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1813:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1819
	jmp	.label_1785
.label_1860:
	xor	esi, esi
.label_1830:
	test	byte ptr [rdx + rsi*2], 1
	je	.label_1825
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1825:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1830
	jmp	.label_1785
.label_1804:
	xor	esi, esi
.label_1841:
	cmp	word ptr [rdx + rsi*2], 0
	jns	.label_1835
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1835:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1841
	jmp	.label_1785
.label_1818:
	xor	esi, esi
.label_1824:
	test	byte ptr [rdx + rsi*2], 4
	je	.label_1846
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1846:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1824
	jmp	.label_1785
.label_1848:
	xor	esi, esi
.label_1855:
	test	byte ptr [rdx + rsi*2 + 1], 0x10
	je	.label_1850
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1850:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1855
	jmp	.label_1785
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411dd0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	mov	al, byte ptr [rsi + 0x30]
	cmp	al, 0x11
	je	.label_1868
	cmp	al, 4
	jne	.label_1870
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_1870
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_1868:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1870
	cmp	byte ptr [rax + 0x30], 0x11
	jne	.label_1870
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_1869
	mov	qword ptr [rdx], rsi
.label_1869:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_1870
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_1870:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411e60

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
	ja	.label_1871
	xor	eax, eax
	jmp	qword ptr [(rbx * 8) + label_1877]
.label_3087:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0, xmmword ptr [rip + label_1686]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1874
	mov	qword ptr [rax], r15
	jmp	.label_1681
.label_3088:
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
	js	.label_1873
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_1878
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1682
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_1875
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_1681
.label_3085:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_1682
	mov	edi, OFFSET FLAT:label_1719
	mov	esi, OFFSET FLAT:label_1314
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:label_1706
	call	__assert_fail
.label_3086:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_1681
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0, xmmword ptr [rip + label_1686]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_1695
	mov	qword ptr [rax], rbx
	jmp	.label_1681
.label_1871:
	test	dl, 8
	jne	.label_1702
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1681
.label_1875:
	mov	qword ptr [rax], 2
	jge	.label_1872
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_1681
.label_1872:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1681:
	xor	eax, eax
.label_1682:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1874:
	lea	rax, [r14 + rbx*8]
.label_1685:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1682
.label_1695:
	lea	rax, [r14 + r15*8]
	jmp	.label_1685
.label_1873:
	mov	edi, OFFSET FLAT:label_1879
	mov	esi, OFFSET FLAT:label_1314
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:label_1706
	call	__assert_fail
.label_1878:
	mov	edi, OFFSET FLAT:label_1876
	mov	esi, OFFSET FLAT:label_1314
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:label_1706
	call	__assert_fail
.label_1702:
	mov	edi, OFFSET FLAT:label_1705
	mov	esi, OFFSET FLAT:label_1314
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_1706
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412070

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
	je	.label_1884
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1884
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1887
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_1887
.label_1884:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_1882
	mov	rax, qword ptr [rbx + 0x70]
.label_1895:
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
.label_1890:
	mov	qword ptr [rsp], rbp
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_1892
	mov	rax, qword ptr [rbx + 0x70]
.label_1893:
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
.label_1886:
	test	r13, r13
	mov	rbp, r15
	je	.label_1881
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1891
	mov	rax, qword ptr [rbx + 0x70]
.label_1885:
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
	je	.label_1881
	mov	qword ptr [r15], rbp
.label_1881:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1889
	mov	rax, qword ptr [rbx + 0x70]
.label_1883:
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
	je	.label_1888
	mov	qword ptr [r12], r13
.label_1888:
	test	rbp, rbp
	je	.label_1880
	mov	qword ptr [rbp], r13
.label_1880:
	test	r15, r15
	je	.label_1894
	test	r12, r12
	je	.label_1894
	test	rbp, rbp
	je	.label_1894
	test	r13, r13
	je	.label_1894
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
.label_1887:
	mov	rax, r13
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1882:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_1890
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1895
.label_1892:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_1886
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1893
.label_1889:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_1880
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1883
.label_1894:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_1887
.label_1891:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1881
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1885
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412370

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
	jae	.label_1900
.label_1901:
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
	jne	.label_1898
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1896
.label_1898:
	cmp	eax, 6
	sete	cl
.label_1896:
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
.label_1897:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1900:
	lea	rcx, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_1897
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1897
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
	je	.label_1899
	test	rax, rax
	je	.label_1899
	test	r13, r13
	je	.label_1899
	test	rbp, rbp
	je	.label_1899
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_1901
.label_1899:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_1897
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412540

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
	je	.label_1905
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
	je	.label_1907
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_1907
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1907
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1905
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_1907:
	test	al, 8
	mov	qword ptr [rsp + 0x28], r12
	je	.label_1906
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1906
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1903:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_1902
	test	rcx, rcx
	jne	.label_1909
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1911
	jmp	.label_1905
	nop	word ptr [rax + rax]
.label_1909:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_1911:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1905
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1910
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_1902:
	mov	r15b, 1
.label_1910:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_1903
	jmp	.label_1908
.label_1906:
	xor	r15d, r15d
.label_1908:
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x28]
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_1905
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1912
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1912
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1904
.label_1912:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1904:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1905:
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
	#Procedure 0x412750

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
.label_1923:
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0xc], eax
	mov	r15, r14
	mov	dword ptr [rsp + 0x1c], r13d
	nop	word ptr cs:[rax + rax]
.label_1921:
	mov	rax, qword ptr [r12]
	mov	rdx, r15
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 4
	jne	.label_1916
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
	je	.label_1918
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
	jne	.label_1921
	jmp	.label_1918
	nop	dword ptr [rax + rax]
.label_1916:
	mov	r8, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rsi, qword ptr [r8 + rcx*8 + 8]
	test	rsi, rsi
	je	.label_1917
	mov	rdi, qword ptr [r8 + rcx*8 + 0x10]
	mov	r14, qword ptr [rdi]
	lea	rdi, [rbp + rbp*2]
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [r8 + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_1914
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_1913
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebx, dword ptr [rax + rdx + 8]
	mov	edx, ebx
	and	edx, 0x40000
	je	.label_1913
	mov	rdx, qword ptr [r12 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	word ptr cs:[rax + rax]
.label_1915:
	cmp	qword ptr [rdx + rsi*8], r14
	jne	.label_1924
	shr	ebx, 8
	and	ebx, 0x3ff
	cmp	ebx, r13d
	je	.label_1925
.label_1924:
	dec	rsi
	test	rsi, rsi
	jle	.label_1913
	mov	ebx, dword ptr [rdi]
	mov	ebp, ebx
	and	ebp, 0x40000
	add	rdi, -0x10
	test	ebp, ebp
	jne	.label_1915
	jmp	.label_1913
.label_1925:
	cmp	rsi, -1
	je	.label_1913
	mov	r15, rcx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1920
	jmp	.label_1918
	nop	dword ptr [rax]
.label_1913:
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
	je	.label_1918
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
	je	.label_1918
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1918
.label_1920:
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
	je	.label_1918
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
	jne	.label_1921
	jmp	.label_1918
	nop	
.label_1914:
	cmp	r15, qword ptr [rsp + 0x20]
	jne	.label_1926
	cmp	rbp, r15
	jne	.label_1922
.label_1926:
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
	je	.label_1918
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
	jne	.label_1923
	jmp	.label_1918
.label_1917:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbp*8], rcx
.label_1919:
	mov	dword ptr [rsp + 8], 0
.label_1918:
	mov	eax, dword ptr [rsp + 8]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1922:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	mov	rsi, r14
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1919
	jmp	.label_1918
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412bc0

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
	je	.label_1927
	mov	rax, qword ptr [r14 + 8]
	test	rax, rax
	je	.label_1927
	mov	rbx, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_1934
	add	rbx, rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1929
	add	rbx, rbx
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
.label_1934:
	test	rcx, rcx
	je	.label_1935
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1937
	mov	rdx, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	jmp	.label_1928
.label_1933:
	dec	rax
.label_1939:
	dec	rcx
	jmp	.label_1931
	nop	word ptr [rax + rax]
.label_1928:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1933
	jge	.label_1939
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_1931:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1928
.label_1937:
	test	rax, rax
	js	.label_1940
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1940:
	mov	r9, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_1927
	lea	rax, [rsi + r9]
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
.label_1930:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_1936:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_1932
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_1936
	jmp	.label_1927
	nop	word ptr cs:[rax + rax]
.label_1932:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_1930
	lea	rsi, [rdi + r12*8]
.label_1938:
	call	memcpy
.label_1927:
	xor	eax, eax
.label_1929:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1935:
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [r14 + 8]
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rdx, 3
	jmp	.label_1938
	nop	
	.section	.text
	.align	32
	#Procedure 0x412d50

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
	je	.label_1946
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1948
	cmp	rsi, rcx
	jne	.label_1950
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1941
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1945
.label_1946:
	movaps	xmm0, xmmword ptr [rip + label_1686]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1951
	mov	qword ptr [rax], rbx
	jmp	.label_1954
.label_1948:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_1953
.label_1950:
	mov	rax, qword ptr [r14 + 0x10]
.label_1945:
	cmp	qword ptr [rax], rbx
	jle	.label_1942
	test	rcx, rcx
	jle	.label_1944
	nop	word ptr cs:[rax + rax]
.label_1947:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_1947
	jmp	.label_1944
.label_1942:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_1952
	nop	dword ptr [rax]
.label_1943:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1952:
	cmp	rdx, rbx
	jg	.label_1943
.label_1944:
	mov	qword ptr [rax + rcx*8], rbx
.label_1953:
	inc	qword ptr [r14 + 8]
.label_1954:
	mov	al, 1
.label_1949:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1951:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
.label_1941:
	xor	eax, eax
	jmp	.label_1949
	nop	
	.section	.text
	.align	32
	#Procedure 0x412e30

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
	je	.label_1964
	mov	r14d, r12d
	add	r14, r8
	test	r8, r8
	jle	.label_1969
	mov	rcx, qword ptr [rdx + 0x10]
	xor	r9d, r9d
	cmp	r8, 4
	jb	.label_1970
	mov	r9, r8
	and	r9, 0xfffffffffffffffc
	je	.label_1987
	movq	xmm0, r14
	lea	rbp, [r9 - 4]
	mov	rax, rbp
	shr	rax, 2
	lea	esi, [rax + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_1978
	pxor	xmm1, xmm1
	jmp	.label_1985
.label_1964:
	mov	dword ptr [r15], 0
.label_1955:
	xor	ebp, ebp
	jmp	.label_1956
.label_1987:
	xor	r9d, r9d
	jmp	.label_1970
.label_1978:
	lea	rbp, [rsi - 1]
	sub	rbp, rax
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1993:
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
	jne	.label_1993
.label_1985:
	test	rsi, rsi
	je	.label_1962
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_1981:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_1981
.label_1962:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r14, xmm1
	cmp	r8, r9
	je	.label_1969
.label_1970:
	mov	rsi, r8
	sub	rsi, r9
	lea	rcx, [rcx + r9*8]
	nop	dword ptr [rax + rax]
.label_1980:
	add	r14, qword ptr [rcx]
	add	rcx, 8
	dec	rsi
	jne	.label_1980
.label_1969:
	mov	rax, qword ptr [r13 + 0x40]
	mov	rcx, qword ptr [r13 + 0x88]
	and	rcx, r14
	lea	rcx, [rcx + rcx*2]
	mov	r10, qword ptr [rax + rcx*8]
	test	r10, r10
	jle	.label_1982
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	xor	esi, esi
	nop	
.label_1957:
	mov	rbp, qword ptr [r9 + rsi*8]
	cmp	qword ptr [rbp], r14
	jne	.label_1961
	movzx	eax, byte ptr [rbp + 0x68]
	and	eax, 0xf
	cmp	eax, r12d
	jne	.label_1961
	test	rdx, rdx
	je	.label_1961
	mov	rdi, qword ptr [rbp + 0x50]
	test	rdi, rdi
	je	.label_1961
	cmp	qword ptr [rdi + 8], r8
	jne	.label_1961
	mov	rax, r8
	nop	dword ptr [rax]
.label_1995:
	test	rax, rax
	jle	.label_1956
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbx, qword ptr [rcx + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	cmp	rbx, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_1995
	nop	word ptr cs:[rax + rax]
.label_1961:
	inc	rsi
	cmp	rsi, r10
	jl	.label_1957
.label_1982:
	mov	qword ptr [rsp + 8], rdx
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r9, rax
	test	r9, r9
	je	.label_1958
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
	jle	.label_1966
	mov	r13, rax
	mov	qword ptr [r9 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rdi + 0x18], rax
	test	rax, rax
	je	.label_1976
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
	jmp	.label_1986
.label_1966:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, rax
.label_1986:
	mov	al, byte ptr [r9 + 0x68]
	mov	edx, r12d
	mov	ecx, r12d
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r9 + 0x68], al
	mov	qword ptr [r9 + 0x50], r15
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1992
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
.label_1989:
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
	jne	.label_1972
	test	ecx, ecx
	je	.label_1968
.label_1972:
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
	je	.label_1967
	cmp	dl, 2
	jne	.label_1974
	or	bl, 0x10
	jmp	.label_1975
.label_1967:
	or	bl, 0x40
.label_1975:
	mov	byte ptr [r9 + 0x68], bl
.label_1974:
	test	ecx, ecx
	je	.label_1977
	cmp	qword ptr [r9 + 0x50], r15
	jne	.label_1979
	mov	edi, 0x18
	call	malloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rbx, rax
	mov	qword ptr [r9 + 0x50], rbx
	test	rbx, rbx
	je	.label_1983
	mov	rax, qword ptr [rsp + 8]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], r15
	test	r15, r15
	jle	.label_1988
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1991
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_1994
.label_1977:
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_1968
.label_1988:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_1994:
	mov	r15, qword ptr [rsp + 0x30]
	or	byte ptr [r9 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x20]
.label_1979:
	test	ebp, ebp
	mov	rsi, qword ptr [rsp + 8]
	jne	.label_1960
	mov	eax, r13d
	and	eax, 1
	jne	.label_1959
.label_1960:
	test	ebp, ebp
	je	.label_1963
	mov	eax, r13d
	and	eax, 2
	jne	.label_1959
.label_1963:
	cmp	dword ptr [rsp + 0x2c], 0
	jne	.label_1965
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_1959
.label_1965:
	cmp	dword ptr [rsp + 0x28], 0
	jne	.label_1968
	and	r13d, 0x40
	je	.label_1968
	nop	word ptr cs:[rax + rax]
.label_1959:
	mov	rax, r12
	sub	rax, r8
	js	.label_1971
	mov	rcx, qword ptr [r9 + 0x10]
	cmp	rcx, rax
	jle	.label_1971
	dec	rcx
	mov	qword ptr [r9 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1971
	lea	rax, [r12*8]
	add	rax, qword ptr [r9 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	
.label_1984:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r9 + 0x10]
	jl	.label_1984
	nop	word ptr [rax + rax]
.label_1971:
	inc	r8
.label_1968:
	inc	r12
	cmp	r12, qword ptr [rsi + 8]
	jl	.label_1989
.label_1992:
	mov	rsi, r9
	mov	rdx, r14
	call	register_state
	mov	rbp, qword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_1990
.label_1956:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1983:
	mov	rdi, r9
	jmp	.label_1973
.label_1991:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	jmp	.label_1996
.label_1990:
	mov	rdi, rbp
.label_1973:
	call	free_state
.label_1996:
	mov	r15, qword ptr [rsp + 0x18]
.label_1958:
	mov	dword ptr [r15], 0xc
	jmp	.label_1955
.label_1976:
	call	free
	jmp	.label_1958
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413320

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
	je	.label_1997
	test	r13, r13
	jle	.label_1998
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2002:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_2001
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_2000
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1999
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_2000:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_2001:
	inc	rbp
	cmp	rbp, r13
	jl	.label_2002
.label_1998:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_2003
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_2004:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
.label_1997:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1999:
	mov	ecx, 0xc
	jmp	.label_1997
.label_2003:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1997
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_2004
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413460

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
	jle	.label_2031
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2040
	mov	qword ptr [rbx + 0x20], 0
.label_2040:
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
	jne	.label_2048
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r12
.label_2048:
	test	r14, r14
	je	.label_2019
	mov	rbp, qword ptr [rbx + 0x38]
	cmp	r14, rbp
	jge	.label_2065
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_2067
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2011
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_2011:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2032
.label_2061:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_2006:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2019
	add	qword ptr [rbx + 8], r14
.label_2019:
	mov	qword ptr [rbx + 0x28], r12
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2030
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2037
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_2041
	jmp	.label_2042
.label_2030:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2044
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_2042
.label_2037:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_2042:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_2041:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2031:
	mov	r14, r12
	sub	r14, rax
	jmp	.label_2048
.label_2065:
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	movzx	r8d, word ptr [rbx + 0x8c]
	test	r8b, r8b
	jne	.label_2060
.label_2054:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rdi, dword ptr [rbx + 0x90]
	cmp	rdi, 2
	jl	.label_2063
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_2005
	mov	r10, qword ptr [rbx]
	lea	rdx, [r10 + rax]
	mov	rsi, r14
	sub	rsi, rdi
	add	rsi, rdx
	cmp	rsi, r10
	cmovb	rsi, r10
	lea	r8, [rdx + r14]
	add	r10, r14
.label_2021:
	lea	rdi, [r10 + rax - 1]
	cmp	rdi, rsi
	jb	.label_2005
	movzx	ecx, byte ptr [rax + r10 - 1]
	and	cl, 0xc0
	dec	r10
	cmp	cl, 0x80
	je	.label_2021
	mov	qword ptr [rsp], r8
	add	rdx, qword ptr [rbx + 0x58]
	lea	rbp, [r10 + rax]
	sub	rdx, rbp
	mov	rdi, qword ptr [rbx + 0x78]
	test	rdi, rdi
	mov	rsi, rbp
	jne	.label_2026
.label_2025:
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 8]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_2010
	cmp	rax, -3
	ja	.label_2010
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x14]
.label_2010:
	mov	edx, esi
	cmp	edx, -1
	jne	.label_2052
	mov	rax, qword ptr [rbx + 0x28]
	mov	rbp, qword ptr [rbx + 0x38]
.label_2005:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jge	.label_2056
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp], rax
	jmp	.label_2027
.label_2067:
	mov	r8, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	xor	ecx, ecx
	mov	qword ptr [rsp], rdx
.label_2009:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [r8 + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_2064
	jge	.label_2008
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_2064:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_2009
.label_2008:
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
	jle	.label_2020
	cmp	rbp, r14
	jne	.label_2020
	cmp	qword ptr [rsi + r14*8], r14
	jne	.label_2020
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
	jle	.label_2006
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
.label_2066:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_2066
	jmp	.label_2006
.label_2032:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_2061
.label_2020:
	mov	rax, r14
	sub	rax, r12
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_2029:
	mov	rax, rbp
	test	rax, rax
	jle	.label_2015
	lea	rbp, [rax - 1]
	cmp	qword ptr [rsi + rax*8 - 8], r14
	je	.label_2029
.label_2015:
	cmp	rax, rdi
	jge	.label_2012
	mov	rcx, qword ptr [rbx + 0x10]
.label_2013:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2012
	inc	rax
	cmp	rax, rdi
	jl	.label_2013
.label_2012:
	cmp	rax, rdi
	jne	.label_2017
	mov	qword ptr [rbx + 0x30], 0
	xor	eax, eax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2006
.label_2044:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2059
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jl	.label_2028
	jmp	.label_2034
.label_2051:
	mov	r12, qword ptr [r13]
.label_2028:
	inc	r15
	add	r12, qword ptr [rbx]
	movzx	eax, byte ptr [r15 + r12 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_2036
.label_2055:
	movzx	ebp, al
	mov	eax, ebp
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_2043
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_2043:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_2051
	jmp	.label_2053
.label_2036:
	movzx	eax, byte ptr [rdx + rcx]
	jmp	.label_2055
.label_2063:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	cl, byte ptr [rdx + rax - 1]
	movzx	edx, cl
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_2057
	mov	cl, byte ptr [rsi + rdx]
.label_2057:
	mov	rdx, qword ptr [rbx + 0x80]
	mov	eax, ecx
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rdx + rax*8]
	mov	edx, 1
	movzx	esi, cl
	bt	rax, rsi
	jb	.label_2007
	xor	edx, edx
	cmp	cl, 0xa
	jne	.label_2007
	movzx	eax, r8w
	xor	edx, edx
	cmp	eax, 0xff
	seta	dl
	add	edx, edx
.label_2007:
	mov	dword ptr [rbx + 0x70], edx
	jmp	.label_2006
.label_2017:
	mov	rbp, qword ptr [rsi + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	xor	eax, eax
	test	rbp, rbp
	je	.label_2046
	jle	.label_2022
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_2022:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rax, qword ptr [rbx + 0x30]
.label_2046:
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2006
.label_2056:
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_2024
.label_2059:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_2042
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_2038
	add	r12, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r12]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_2047
.label_2058:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
.label_2047:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_2058
	mov	rax, rcx
.label_2038:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2042
.label_2053:
	mov	r15, r14
.label_2034:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_2042
.label_2023:
	mov	rcx, qword ptr [rsp + 0x28]
	xor	edx, edx
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_2045
	test	rax, rax
	je	.label_2045
	mov	rax, qword ptr [rbx]
	movzx	edx, byte ptr [rax + rbp]
.label_2045:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_2062
.label_2027:
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
	jae	.label_2023
	mov	edx, dword ptr [rsp + 8]
.label_2062:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jl	.label_2027
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	cmp	edx, -1
	je	.label_2024
.label_2052:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2033
.label_2014:
	xor	ecx, ecx
	cmp	edx, 0xa
	jne	.label_2018
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_2018:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_2039
.label_2024:
	mov	rsi, qword ptr [rsp + 0x20]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_2039:
	test	rbp, rbp
	jne	.label_2050
.label_2049:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2006
.label_2060:
	mov	rdx, r14
	sub	rdx, r12
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_2054
.label_2050:
	jle	.label_2016
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_2016:
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rdx, rbp
	je	.label_2049
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	call	memset
	jmp	.label_2049
.label_2033:
	mov	ebp, edx
	mov	edi, ebp
	call	iswalnum
	mov	edx, ebp
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_2018
	test	eax, eax
	je	.label_2014
	jmp	.label_2018
.label_2026:
	lea	rsi, [rsp + 0x1a]
	cmp	rdx, 7
	mov	r8d, 6
	cmovl	r8, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_2025
	movsxd	r8, r8d
	lea	r9, [rsp + r8 + 0x19]
	add	rax, r8
	lea	r10, [r10 + rax - 1]
	xor	ecx, ecx
.label_2035:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rdi + rax]
	mov	byte ptr [r9 + rcx], al
	lea	rax, [r8 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_2035
	jmp	.label_2025
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413ba0

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
	jle	.label_2069
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
.label_2068:
	mov	rcx, qword ptr [r11 + rbx*8]
	mov	rdx, rcx
	shl	rdx, 4
	mov	esi, dword ptr [rdi + rdx + 8]
	cmp	sil, 2
	jne	.label_2071
	shr	esi, 8
	test	si, 0x3ff
	je	.label_2069
	test	r9d, r9d
	jne	.label_2072
	mov	edx, esi
	and	edx, 4
	jne	.label_2071
.label_2072:
	test	r9d, r9d
	je	.label_2073
	mov	edx, esi
	and	edx, 8
	jne	.label_2071
.label_2073:
	test	r8d, r8d
	jne	.label_2070
	mov	edx, esi
	and	edx, 0x20
	jne	.label_2071
.label_2070:
	test	eax, eax
	jne	.label_2069
	test	sil, sil
	jns	.label_2069
	nop	dword ptr [rax]
.label_2071:
	inc	rbx
	cmp	rbx, r10
	mov	ecx, 0
	jl	.label_2068
.label_2069:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413c60

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
	jle	.label_2074
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2077:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_2075
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_2078:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_2078
.label_2075:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_2076
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_2076:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_2077
.label_2074:
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
	#Procedure 0x413d20

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
	mov	rax, qword ptr [rip + label_2123]
	mov	qword ptr [rbp - 0xa0], rax
	movups	xmm0, xmmword ptr [rip + label_2124]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	xor	eax, eax
	test	r8b, r8b
	je	.label_2125
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0xa0], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_2090
	lea	rax, [rbp - 0xb0]
.label_2125:
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x90], r13
	mov	r13, qword ptr [r13 + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	qword ptr [rbp - 0x60], 0
	mov	rdx, rbx
	shl	rdx, 4
	cmp	rdx, 0xfbf
	ja	.label_2135
	mov	rdi, rsp
	lea	rax, [rdx + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x2c], 0
	jmp	.label_2140
.label_2135:
	mov	r14, rdx
	mov	rdi, rdx
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_2131
	mov	al, 1
	mov	dword ptr [rbp - 0x2c], eax
	mov	rdx, r14
.label_2140:
	mov	qword ptr [rbp - 0x40], rdi
	mov	rsi, r15
	mov	qword ptr [rbp - 0x58], rdx
	call	memcpy
	mov	r14, qword ptr [r15]
	xor	edi, edi
	cmp	r14, qword ptr [r15 + 8]
	jg	.label_2082
	lea	rax, [r15 + 8]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], rbx
	mov	qword ptr [rbp - 0x48], r12
	mov	qword ptr [rbp - 0x78], r15
	jmp	.label_2087
.label_2097:
	test	r13, r13
	mov	r14, qword ptr [rbp - 0x50]
	je	.label_2084
.label_2110:
	mov	r14, qword ptr [r13]
	lea	rax, [r14 + 1]
	mov	qword ptr [r13], rax
	cmp	rax, qword ptr [r13 + 8]
	jne	.label_2096
	mov	rdi, qword ptr [r13 + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_2089
	mov	rax, qword ptr [rbp - 0x38]
	shl	qword ptr [rax + 8], 1
	mov	qword ptr [rax + 0x10], r13
	jmp	.label_2104
.label_2096:
	mov	r13, qword ptr [r13 + 0x10]
.label_2104:
	lea	r14, [r14 + r14*2]
	shl	r14, 4
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [r13 + r14], rax
	mov	qword ptr [r13 + r14 + 8], rbx
	mov	rdi, qword ptr [rbp - 0x58]
	call	malloc
	mov	qword ptr [r13 + r14 + 0x10], rax
	test	rax, rax
	je	.label_2089
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	lea	rbx, [r13 + r14 + 0x18]
	mov	qword ptr [r13 + r14 + 0x20], r15
	test	r15, r15
	jle	.label_2111
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [r13 + r14 + 0x28], rax
	test	rax, rax
	je	.label_2118
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_2084
.label_2111:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_2084
.label_2106:
	mov	r12, rax
	jmp	.label_2084
	nop	dword ptr [rax]
.label_2087:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax]
	mov	rdx, r13
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	cmp	cl, 9
	je	.label_2115
	cmp	cl, 8
	jne	.label_2128
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_2128
	shl	rax, 4
	mov	qword ptr [r15 + rax], r14
	mov	qword ptr [r15 + rax + 8], -1
	jmp	.label_2128
	nop	word ptr cs:[rax + rax]
.label_2115:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_2128
	shl	rax, 4
	cmp	qword ptr [r15 + rax], r14
	jge	.label_2101
	mov	qword ptr [r15 + rax + 8], r14
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, r15
	jmp	.label_2134
.label_2101:
	test	ecx, 0x80000
	je	.label_2136
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rcx + rax], -1
	je	.label_2136
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x40]
.label_2134:
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	jmp	.label_2128
.label_2136:
	mov	qword ptr [r15 + rax + 8], r14
	nop	dword ptr [rax]
.label_2128:
	cmp	r14, qword ptr [r15 + 8]
	jne	.label_2141
	cmp	r13, qword ptr [r12 + 0xb0]
	jne	.label_2141
	mov	r15, qword ptr [rbp - 0x38]
	test	r15, r15
	je	.label_2144
	test	rbx, rbx
	mov	eax, 0
	je	.label_2083
	mov	rcx, qword ptr [rbp - 0x80]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2086:
	cmp	qword ptr [rcx - 8], 0
	js	.label_2079
	cmp	qword ptr [rcx], -1
	je	.label_2083
.label_2079:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_2086
.label_2083:
	cmp	rax, rbx
	je	.label_2088
	mov	rcx, qword ptr [r15]
	lea	rax, [rcx - 1]
	mov	qword ptr [r15], rax
	test	rcx, rcx
	jle	.label_2091
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
.label_2141:
	mov	r15, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r15]
	mov	rbx, r13
	shl	rbx, 4
	mov	ecx, dword ptr [rax + rbx + 8]
	test	cl, 8
	jne	.label_2127
	test	ecx, 0x100000
	jne	.label_2109
	movzx	ecx, cl
	cmp	ecx, 4
	jne	.label_2095
	mov	rax, qword ptr [rax + rbx]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rcx + rax + 0x10]
	mov	rax, qword ptr [rcx + rax + 0x18]
	mov	rdx, rax
	sub	rdx, rdi
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_2114
	cmp	rax, -1
	mov	r12, r14
	je	.label_2119
	cmp	rdi, -1
	je	.label_2119
	test	rdx, rdx
	je	.label_2112
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, r12
	cmp	rax, rdx
	jl	.label_2119
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rax + 8]
	add	rdi, rsi
	add	rsi, r12
	mov	rbx, rdx
	call	memcmp
	mov	rdx, rbx
	test	eax, eax
	jne	.label_2119
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, r12
	mov	r12, qword ptr [rax + r13*8]
	add	rdx, rcx
	jmp	.label_2132
	nop	
.label_2127:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	qword ptr [rbp - 0x50], r14
	mov	r14, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [r15 + 0x28]
	lea	rdi, [rbp - 0x70]
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	je	.label_2089
	lea	rax, [r13 + r13*2]
	mov	r9, qword ptr [rbx + rax*8 + 8]
	test	r9, r9
	jle	.label_2081
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	mov	r11, qword ptr [r14 + 0x10]
	lea	r10, [r11 - 1]
	mov	r12, -1
	xor	r15d, r15d
	mov	r13, qword ptr [rbp - 0x38]
	nop	word ptr cs:[rax + rax]
.label_2080:
	test	r11, r11
	jle	.label_2138
	mov	rbx, qword ptr [r8 + r15*8]
	test	r10, r10
	mov	rcx, qword ptr [r14 + 0x18]
	mov	eax, 0
	je	.label_2139
	mov	rsi, r10
	xor	eax, eax
	nop	dword ptr [rax]
.label_2143:
	lea	rdx, [rax + rsi]
	shr	rdx, 1
	cmp	qword ptr [rcx + rdx*8], rbx
	lea	rdi, [rdx + 1]
	cmovl	rax, rdi
	cmovge	rsi, rdx
	cmp	rax, rsi
	jb	.label_2143
.label_2139:
	cmp	rax, -1
	je	.label_2138
	cmp	qword ptr [rcx + rax*8], rbx
	jne	.label_2138
	cmp	r12, -1
	jne	.label_2145
	mov	r12, rbx
.label_2138:
	inc	r15
	cmp	r15, r9
	jl	.label_2080
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_2084
	nop	word ptr cs:[rax + rax]
.label_2109:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r14
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_2130:
	test	rdx, rdx
	jne	.label_2093
	jmp	.label_2095
.label_2145:
	mov	r15, qword ptr [rbp - 0x68]
	test	r15, r15
	jle	.label_2097
	mov	rcx, r15
	dec	rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, 0
	mov	r14, qword ptr [rbp - 0x50]
	je	.label_2098
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2102:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2102
.label_2098:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r12
	sete	dl
	and	dl, cl
	mov	rax, r12
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_2106
	test	r13, r13
	jne	.label_2110
	mov	r12, rax
	jmp	.label_2084
.label_2114:
	test	rdx, rdx
	mov	rcx, r14
	je	.label_2112
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r13*8]
	add	rdx, rcx
	jmp	.label_2116
.label_2112:
	lea	rdi, [rbp - 0x70]
	mov	rsi, r13
	mov	r12, rdx
	call	re_node_set_insert
	mov	rdx, r12
	test	al, al
	je	.label_2089
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2095
	mov	rdi, qword ptr [r15 + 0x28]
	lea	rsi, [r13 + r13*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r12, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_2120
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_2126:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_2126
.label_2120:
	cmp	rcx, -1
	je	.label_2130
	cmp	qword ptr [r8 + rcx*8], r12
	je	.label_2084
	jmp	.label_2130
	nop	word ptr cs:[rax + rax]
.label_2095:
	add	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	mov	rdx, r14
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_2081
.label_2093:
	add	rdx, r14
	cmp	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r13*8]
	je	.label_2116
.label_2132:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_2119
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_2119
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2119
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_2142
	xor	ebx, ebx
	nop	
.label_2129:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_2129
.label_2142:
	cmp	rbx, -1
	je	.label_2081
	cmp	qword ptr [rcx + rbx*8], r12
	jne	.label_2081
.label_2116:
	mov	qword ptr [rbp - 0x68], 0
	mov	r14, rdx
.label_2084:
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x78]
	jns	.label_2103
	cmp	r12, -2
	je	.label_2089
	nop	word ptr [rax + rax]
.label_2081:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_2092
.label_2119:
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbx]
	lea	rax, [rcx - 1]
	mov	qword ptr [rbx], rax
	test	rcx, rcx
	jle	.label_2091
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
.label_2103:
	cmp	r14, qword ptr [r15 + 8]
	mov	r13, r12
	mov	rbx, qword ptr [rbp - 0x88]
	mov	r12, qword ptr [rbp - 0x48]
	jle	.label_2087
	mov	rdi, qword ptr [rbp - 0x60]
.label_2082:
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_2117
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_2117:
	xor	r14d, r14d
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_2090
	cmp	qword ptr [r12], 0
	jle	.label_2099
	xor	ebx, ebx
	xor	r15d, r15d
	nop	
.label_2122:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_2122
	jmp	.label_2099
.label_2131:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_2090
	cmp	qword ptr [r12], 0
	jle	.label_2099
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_2133:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_2133
.label_2099:
	mov	rdi, qword ptr [r12 + 0x10]
.label_2100:
	call	free
.label_2090:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2092:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	r14d, 1
	jmp	.label_2137
.label_2144:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	xor	r14d, r14d
.label_2137:
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_2090
	mov	rdi, qword ptr [rbp - 0x40]
	jmp	.label_2100
.label_2088:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_2113
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_2113:
	cmp	qword ptr [r15], 0
	jle	.label_2121
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2085:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r14
	add	rbx, 0x30
	cmp	r14, qword ptr [r15]
	jl	.label_2085
.label_2121:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	xor	r14d, r14d
	jmp	.label_2090
.label_2118:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_2089:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_2094
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_2094:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_2090
	cmp	qword ptr [r12], 0
	jle	.label_2099
	xor	ebx, ebx
	xor	r15d, r15d
.label_2105:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_2105
	jmp	.label_2099
.label_2091:
	mov	edi, OFFSET FLAT:label_2107
	mov	esi, OFFSET FLAT:label_1066
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_2108
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4146c0

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_2146
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_2150
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2154
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_2153:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_2151
	dec	rsi
	test	rsi, rsi
	jg	.label_2153
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2147
.label_2154:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_2147
	xor	edx, edx
	cmp	al, 0xa
	je	.label_2149
	jmp	.label_2147
.label_2151:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2152
.label_2148:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_2147
.label_2149:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_2147:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_2146:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2147
.label_2150:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_2147
.label_2152:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_2147
	test	eax, eax
	je	.label_2148
	jmp	.label_2147
	nop	
	.section	.text
	.align	32
	#Procedure 0x414780

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
	jle	.label_2155
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_2156
.label_2157:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2155
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_2159
	nop	word ptr [rax + rax]
.label_2156:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 8
	jne	.label_2158
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_2158
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_2158
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_2157
.label_2159:
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
	je	.label_2155
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	word ptr [rax + rax]
.label_2158:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_2156
.label_2155:
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
	#Procedure 0x4148b0

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
	jle	.label_2198
	mov	rcx, qword ptr [rdi + 0x98]
	mov	r15, qword ptr [rdi + 0x48]
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x50], rcx
	nop	dword ptr [rax]
.label_2208:
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x80], rdx
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rcx]
	mov	rcx, r14
	mov	qword ptr [rsp + 0x48], rcx
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	cmp	bl, 4
	jne	.label_2173
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_2169
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rsi, r15
	call	re_string_context_at
	mov	rdi, qword ptr [rsp + 0x20]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2179
	test	ecx, ecx
	je	.label_2173
.label_2179:
	test	bh, 8
	je	.label_2189
	test	ecx, ecx
	jne	.label_2173
.label_2189:
	test	bh, 0x20
	je	.label_2195
	mov	ecx, eax
	and	ecx, 2
	je	.label_2173
.label_2195:
	test	bpl, bpl
	jns	.label_2169
	and	eax, 8
	je	.label_2173
	nop	word ptr [rax + rax]
.label_2169:
	mov	rax, qword ptr [rdi + 0xc8]
	mov	r8, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	mov	eax, 0
	jle	.label_2207
	mov	rcx, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_2221:
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
	jl	.label_2221
.label_2207:
	cmp	rax, qword ptr [rsp + 0x40]
	jge	.label_2197
	cmp	rax, -1
	je	.label_2197
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r15
	jne	.label_2197
	lea	rax, [rcx + rax*8]
	nop	
.label_2170:
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax], rcx
	je	.label_2165
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_2170
.label_2197:
	cmp	qword ptr [rdi + 0xe8], 0
	jle	.label_2165
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + r14]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x30], rcx
	xor	edx, edx
	mov	qword ptr [rsp + 0x38], r14
	jmp	.label_2178
	nop	word ptr cs:[rax + rax]
.label_2160:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
.label_2178:
	mov	rcx, qword ptr [rdi + 0xf8]
	mov	r9, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [r9 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r14
	mov	qword ptr [rsp + 0x88], rdx
	jne	.label_2161
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [r9 + 0x20]
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r9
	jle	.label_2210
	mov	rcx, qword ptr [rsp + 8]
	xor	r14d, r14d
	jmp	.label_2190
.label_2210:
	xor	r14d, r14d
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_2172
.label_2218:
	mov	rdx, qword ptr [rdi + 0x58]
	mov	r10d, 7
	cmp	r13, rdx
	jg	.label_2164
	mov	rsi, qword ptr [rdi + 0x40]
	mov	r12, qword ptr [rdi + 0xc0]
	cmp	rsi, r13
	setle	r9b
	cmp	rsi, rdx
	setl	sil
	cmp	rax, rdx
	jl	.label_2226
	and	r9b, sil
	je	.label_2163
.label_2226:
	lea	esi, [r13 + 1]
	mov	qword ptr [rsp + 0x70], r8
	mov	qword ptr [rsp + 0x58], rcx
	call	extend_buffers
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x20]
	test	eax, eax
	je	.label_2163
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_2164
.label_2175:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_2176
.label_2163:
	mov	rdx, r13
	sub	rdx, r12
	jle	.label_2184
	mov	rax, qword ptr [rdi + 0xb8]
	lea	rdi, [rax + r12*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	qword ptr [rsp + 0x58], rcx
	call	memset
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	qword ptr [rdi + 0xc0], r13
.label_2184:
	mov	r12, rbp
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_2204
	nop	word ptr cs:[rax + rax]
.label_2190:
	mov	rax, qword ptr [r9 + 0x28]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [rbp + 8]
	mov	r13, rbx
	mov	rax, qword ptr [rsp + 0x28]
	sub	r13, rax
	add	r13, rcx
	mov	r15, rbx
	sub	r15, rax
	jle	.label_2211
	mov	rax, qword ptr [rdi + 0x30]
	cmp	r13, rax
	mov	qword ptr [rsp + 0x68], rbx
	jg	.label_2218
	mov	r12, rbp
.label_2204:
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
	jne	.label_2164
.label_2211:
	mov	rsi, r9
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rdi + 8]
	mov	r10d, 9
	cmp	eax, 1
	je	.label_2167
	test	eax, eax
	jne	.label_2175
	xor	r10d, r10d
.label_2167:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
.label_2176:
	mov	r9, qword ptr [rsp + 0x10]
.label_2164:
	mov	eax, r10d
	and	al, 0xf
	je	.label_2183
	cmp	al, 9
	jne	.label_2187
.label_2183:
	inc	r14
	mov	rax, qword ptr [r9 + 0x20]
	cmp	r14, rax
	jl	.label_2190
	jmp	.label_2172
.label_2187:
	cmp	al, 7
	jne	.label_2188
	mov	rax, qword ptr [r9 + 0x20]
	nop	
.label_2172:
	cmp	r14, rax
	jge	.label_2203
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2161
	nop	word ptr cs:[rax + rax]
.label_2203:
	xor	ebx, ebx
	test	r14, r14
	setg	bl
	add	rbx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 8]
	cmp	rbx, r15
	jle	.label_2185
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2161
.label_2185:
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2215
.label_2214:
	cmp	r13, -1
	je	.label_2193
	mov	rbp, r8
	mov	rsi, qword ptr [r9 + 0x10]
	test	rsi, rsi
	jne	.label_2223
	lea	rsi, [rbx + 1]
	sub	rsi, qword ptr [r9]
	mov	edi, 0x18
	call	rpl_calloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rax
	mov	qword ptr [r9 + 0x10], rsi
	test	rsi, rsi
	je	.label_2228
.label_2223:
	mov	rcx, qword ptr [r9]
	mov	rdx, qword ptr [r9 + 8]
	mov	dword ptr [rsp], 9
	mov	r8, r13
	mov	r9, rbx
	call	check_arrival
	cmp	eax, 1
	jne	.label_2206
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 0xc
	jmp	.label_2162
.label_2206:
	test	eax, eax
	mov	r8, rbp
	jne	.label_2180
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rcx + 0x20]
	cmp	r14, qword ptr [rcx + 0x18]
	je	.label_2213
.label_2194:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r10d, 1
	test	rax, rax
	je	.label_2201
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
	jne	.label_2217
	mov	r10d, 0xc
	jmp	.label_2230
.label_2217:
	test	eax, eax
	jne	.label_2224
	xor	r10d, r10d
.label_2230:
	mov	rcx, r15
.label_2186:
	mov	r15, qword ptr [rsp + 8]
.label_2212:
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_2162
.label_2228:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	jmp	.label_2162
.label_2219:
	mov	r10d, 0xa
	cmp	rcx, qword ptr [rdi + 0x58]
	jge	.label_2162
	mov	r14, r8
	mov	r12, rcx
	lea	r15, [rcx + 1]
	mov	esi, r15d
	mov	rbp, rdi
	call	extend_buffers
	test	eax, eax
	jne	.label_2174
	mov	r8, qword ptr [rbp + 8]
	mov	rdi, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_2192
.label_2180:
	mov	r10d, 1
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_2186
.label_2213:
	lea	rax, [r14 + r14]
	mov	rdi, qword ptr [rcx + 0x28]
	lea	rsi, [rax*8 + 8]
	mov	r12, rcx
	call	realloc
	test	rax, rax
	je	.label_2191
	lea	rcx, [r14 + r14 + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_2194
.label_2201:
	mov	rcx, r15
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2212
.label_2224:
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 1
	jmp	.label_2162
.label_2174:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_2162
.label_2191:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, r12
	jmp	.label_2162
	nop	word ptr [rax + rax]
.label_2215:
	cmp	rbx, qword ptr [r9]
	jle	.label_2177
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_2219
	lea	r15, [rcx + 1]
.label_2192:
	mov	al, byte ptr [r8 + rcx]
	mov	r10d, 0xa
	cmp	al, byte ptr [r8 + rbx - 1]
	je	.label_2182
	jmp	.label_2193
	nop	word ptr cs:[rax + rax]
.label_2177:
	mov	r15, rcx
.label_2182:
	mov	rax, qword ptr [rdi + 0xb8]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r10d, 0xc
	test	rcx, rcx
	je	.label_2193
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2193
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rdx]
	xor	esi, esi
.label_2216:
	mov	r13, qword ptr [rcx + rsi*8]
	mov	rbp, r13
	shl	rbp, 4
	cmp	byte ptr [rdx + rbp + 8], 9
	jne	.label_2181
	cmp	qword ptr [rdx + rbp], r14
	je	.label_2214
.label_2181:
	inc	rsi
	cmp	rsi, rax
	jl	.label_2216
.label_2193:
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
.label_2162:
	mov	eax, r10d
	and	al, 0xf
	je	.label_2220
	cmp	al, 0xc
	jne	.label_2222
.label_2220:
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	jl	.label_2215
	jmp	.label_2161
.label_2188:
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2227
.label_2222:
	cmp	al, 0xa
	je	.label_2161
.label_2227:
	cmp	r10d, 6
	je	.label_2161
	test	r10d, r10d
	jne	.label_2209
	nop	word ptr cs:[rax + rax]
.label_2161:
	mov	rdx, qword ptr [rsp + 0x88]
	inc	rdx
	cmp	rdx, qword ptr [rdi + 0xe8]
	jl	.label_2160
.label_2165:
	mov	dword ptr [rsp + 0x1c], 0
	mov	rbx, qword ptr [rsp + 0x40]
.label_2231:
	cmp	rbx, qword ptr [rdi + 0xc8]
	jge	.label_2173
	lea	rax, [rbx + rbx*4]
	lea	rbp, [rax*8 + 0x18]
	nop	
.label_2171:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_2166
	cmp	qword ptr [rax + rbp - 0x10], r15
	jne	.label_2166
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rcx + 0x30]
	cmp	rsi, rdx
	mov	qword ptr [rsp + 0x40], rbx
	jne	.label_2199
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_2205
.label_2199:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rax, [rax*8]
	add	rax, qword ptr [rcx + 0x18]
.label_2205:
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
	je	.label_2225
	mov	rdx, qword ptr [rcx + 0x10]
.label_2225:
	mov	qword ptr [rsp + 0x68], rdx
	lea	r12, [r14 + r15*8]
	test	rax, rax
	lea	rcx, [rsp + 0x90]
	je	.label_2229
	mov	rsi, qword ptr [rax + 0x50]
	mov	r14, rcx
	mov	rdi, r14
	mov	rdx, r12
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	r15, qword ptr [rsp + 8]
	jne	.label_2168
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
	jne	.label_2196
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	je	.label_2196
	jmp	.label_2200
.label_2229:
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
	jne	.label_2196
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_2202
	jmp	.label_2200
.label_2196:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
.label_2202:
	cmp	rsi, rdx
	jne	.label_2166
	mov	rax, qword ptr [rcx + r15*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_2166
	mov	rsi, r12
	mov	rdx, r15
	call	check_subexp_matching_top
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_2200
	mov	rsi, r12
	call	transit_state_bkref
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_2200
	nop	
.label_2166:
	inc	rbx
	add	rbp, 0x28
	cmp	rbx, qword ptr [rdi + 0xc8]
	jl	.label_2171
	nop	word ptr cs:[rax + rax]
.label_2173:
	mov	rdx, qword ptr [rsp + 0x80]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsp + 0x50]
	jl	.label_2208
	jmp	.label_2198
.label_2209:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_2231
	jmp	.label_2200
.label_2198:
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
.label_2200:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2168:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rbx, rax
	call	free
	mov	rax, rbx
	jmp	.label_2200
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4152b0

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
	ja	.label_2238
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
	jne	.label_2238
	mov	rdi, qword ptr [r14 + 0xb8]
	test	rdi, rdi
	je	.label_2233
	mov	rax, qword ptr [r14 + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_2238
	mov	qword ptr [r14 + 0xb8], rcx
.label_2233:
	cmp	byte ptr [r14 + 0x88], 0
	mov	eax, dword ptr [r14 + 0x90]
	je	.label_2242
	cmp	eax, 2
	jl	.label_2235
	mov	rdi, r14
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_2234
	jmp	.label_2238
.label_2242:
	cmp	eax, 2
	jl	.label_2245
	mov	rdi, r14
	call	build_wcs_buffer
	jmp	.label_2234
.label_2235:
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jl	.label_2232
	jmp	.label_2236
.label_2245:
	mov	rdx, qword ptr [r14 + 0x78]
	test	rdx, rdx
	je	.label_2234
	mov	rax, qword ptr [r14 + 0x30]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [r14 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_2240
	mov	rsi, qword ptr [r14 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbx + rax], dl
	jmp	.label_2237
	nop	word ptr cs:[rax + rax]
.label_2244:
	mov	rdx, qword ptr [r14 + 0x78]
	mov	rsi, qword ptr [r14]
	mov	rdi, qword ptr [r14 + 8]
	add	rsi, qword ptr [r14 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_2237:
	inc	rax
	cmp	rax, rcx
	jl	.label_2244
	mov	rax, rcx
.label_2240:
	mov	qword ptr [r14 + 0x30], rax
	mov	qword ptr [r14 + 0x38], rax
	jmp	.label_2234
.label_2239:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_2241
	nop	word ptr cs:[rax + rax]
.label_2232:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	movzx	ecx, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_2239
.label_2241:
	movzx	r12d, cl
	mov	eax, r12d
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_2243
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r12d, dword ptr [rax + r12*4]
.label_2243:
	mov	rax, qword ptr [r14 + 8]
	mov	byte ptr [rax + rbx], r12b
	inc	rbx
	cmp	rbx, r15
	jl	.label_2232
	mov	rbx, r15
.label_2236:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
.label_2234:
	xor	eax, eax
.label_2238:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x415480

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
	jle	.label_2246
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_2252
.label_2246:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_2247
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_2249
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_2251
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_2253
.label_2247:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_2252
.label_2249:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_2253:
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
	jne	.label_2252
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_2252:
	test	rbx, rbx
	je	.label_2250
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_2250
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2248
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_2248
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2248
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_2248
.label_2250:
	mov	rax, rbx
.label_2248:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2251:
	xor	eax, eax
	jmp	.label_2248
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4155d0

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
	je	.label_2259
	mov	r13, qword ptr [r12 + 8]
	test	rbx, rbx
	je	.label_2256
	test	r13, r13
	jle	.label_2256
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_2256
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2262
	xor	edi, edi
	xor	esi, esi
	xor	ebp, ebp
.label_2255:
	mov	r15, rdi
	mov	r14, rsi
	nop	word ptr cs:[rax + rax]
.label_2264:
	cmp	r14, qword ptr [rbx + 8]
	jge	.label_2254
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	cmp	rdx, rcx
	jle	.label_2260
	inc	r14
	mov	qword ptr [rax + r15*8], rcx
	inc	r15
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_2264
	jmp	.label_2254
.label_2260:
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
	jl	.label_2255
	xor	esi, esi
	cmp	rdx, rcx
	sete	sil
	inc	r15
	add	r14, rsi
.label_2254:
	sub	r13, rbp
	jle	.label_2265
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r15, rbp
	add	r15, qword ptr [r12 + 8]
	jmp	.label_2261
.label_2256:
	test	r13, r13
	jle	.label_2259
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_2263
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2258
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_2257
.label_2259:
	test	rbx, rbx
	je	.label_2263
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_2263
	mov	qword ptr [rbp + 8], rdi
	mov	r14, rbx
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jle	.label_2263
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2258
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2257
.label_2263:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_2257
.label_2265:
	mov	rdx, qword ptr [rbx + 8]
	sub	rdx, r14
	jle	.label_2261
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rax + r14*8]
	shl	rdx, 3
	call	memcpy
	sub	r15, r14
	add	r15, qword ptr [rbx + 8]
.label_2261:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r15
.label_2257:
	xor	ecx, ecx
.label_2262:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2258:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_2262
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4157e0

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
	jne	.label_2270
	mov	qword ptr [rsp + 0x20], r15
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_2273
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_2271
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
.label_2273:
	test	r15, r15
	jle	.label_2274
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_2268
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_2268
.label_2274:
	mov	rax, qword ptr [r13 + 0xd8]
.label_2268:
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
	jge	.label_2269
	mov	dword ptr [r13 + 0xe0], edi
.label_2269:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_2272
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_2266
.label_2272:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_2267
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_2267
.label_2266:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2270
.label_2267:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_2270
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_2270:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2271:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_2270
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4159c0

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
	jle	.label_2302
	mov	r14, qword ptr [rbp + 0x10]
.label_2298:
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
	jne	.label_2292
	mov	dword ptr [rsp + 0x38], eax
	movaps	xmm0, xmmword ptr [rip + label_1686]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2279
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
	jne	.label_2280
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_2306
.label_2292:
	mov	rdx, qword ptr [r14 + r13*8]
	test	rdx, rdx
	je	.label_2310
	mov	dword ptr [rsp + 0x38], eax
	mov	al, byte ptr [rdx + 0x68]
	test	al, 0x40
	jne	.label_2276
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_2278
.label_2310:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	edx, edx
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
	jmp	.label_2283
.label_2276:
	mov	rbp, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x18], rbp
	test	rbp, rbp
	mov	r13, qword ptr [rsp + 0x40]
	jle	.label_2290
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x10], rbp
	lea	r15, [rbp*8]
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rsp + 0xd0]
	je	.label_2279
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [r12 + 0x18]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	rdx, r12
	mov	al, byte ptr [rdx + 0x68]
	mov	dword ptr [rsp + 4], 0
	mov	r12, qword ptr [rsp + 0x58]
	jmp	.label_2301
.label_2290:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [rsp + 0x28]
.label_2278:
	mov	ebx, dword ptr [rsp + 0xd0]
.label_2301:
	test	al, 0x40
	je	.label_2283
.label_2306:
	test	rbp, rbp
	je	.label_2308
	lea	rsi, [rsp + 0x10]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_2280
.label_2308:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 0x10]
	mov	rsi, r12
	mov	ecx, dword ptr [rsp + 0x38]
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_2289
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2286
.label_2289:
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8], rdx
.label_2283:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x50]
	jge	.label_2291
	xor	esi, esi
	nop	
.label_2311:
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rsi, rax
	jg	.label_2293
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	test	rsi, rsi
	je	.label_2296
	add	rsi, 8
	lea	rdi, [rsp + 0x10]
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2286
.label_2296:
	test	rdx, rdx
	je	.label_2303
	mov	r13, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0x34], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0x70], 0
	cmp	qword ptr [rdx + 0x28], 0
	mov	edi, 0
	jle	.label_2304
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x48], rdx
	nop	word ptr cs:[rax + rax]
.label_2295:
	mov	rax, qword ptr [rdx + 0x30]
	mov	r15, qword ptr [rax + rbx*8]
	mov	rsi, qword ptr [r13]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_2277
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	r12, qword ptr [rsp + 8]
	mov	rcx, r12
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_2287
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
	je	.label_2307
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
	jne	.label_2297
.label_2307:
	mov	rbp, rcx
	mov	rdi, rbp
	mov	rsi, rdx
	call	re_node_set_insert
	test	al, al
	mov	rdx, rbp
	je	.label_2284
	lea	rdi, [rsp + 0x34]
	mov	rsi, r13
	call	re_acquire_state
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rdx
	jne	.label_2275
	mov	r12d, dword ptr [rsp + 0x34]
	test	r12d, r12d
	je	.label_2275
	jmp	.label_2297
	nop	
.label_2287:
	test	eax, eax
	jne	.label_2275
	mov	rsi, qword ptr [r13]
	nop	dword ptr [rax + rax]
.label_2277:
	add	rsi, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	check_node_accept
	test	al, al
	je	.label_2282
.label_2275:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_insert
	test	al, al
	je	.label_2284
.label_2282:
	inc	rbx
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rbx, qword ptr [rdx + 0x28]
	jl	.label_2295
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x58]
.label_2304:
	call	free
	mov	dword ptr [rsp + 4], 0
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
.label_2303:
	mov	rax, qword ptr [rsp + 8]
	lea	rbp, [rax + 1]
	cmp	qword ptr [rsp + 0x18], 0
	lea	r15, [rsp + 0x10]
	je	.label_2294
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2286
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2286
.label_2294:
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
	jne	.label_2305
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2286
.label_2305:
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
	jl	.label_2311
	jmp	.label_2285
.label_2291:
	mov	rbp, rax
	jmp	.label_2285
.label_2293:
	mov	rbp, qword ptr [rsp + 8]
.label_2285:
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
	je	.label_2288
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	jle	.label_2288
	xor	ebp, ebp
	dec	rax
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, 0
	je	.label_2299
	xor	edx, edx
.label_2300:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2300
.label_2299:
	cmp	rdx, -1
	je	.label_2288
	cmp	qword ptr [rcx + rdx*8], rbx
	je	.label_2281
.label_2288:
	mov	ebp, 1
.label_2281:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2284:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	r12d, 0xc
	jmp	.label_2309
.label_2297:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_2309:
	mov	dword ptr [rsp + 4], r12d
.label_2286:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	ebp, dword ptr [rsp + 4]
	jmp	.label_2281
.label_2302:
	mov	r13, rbp
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, r12
	mov	ebp, 0xc
	cmp	rdx, rdi
	jle	.label_2281
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rsp + 0x50]
	lea	r15, [rax + rcx + 1]
	lea	rcx, [r15 + r12]
	mov	rax, rcx
	shr	rax, 0x3d
	jne	.label_2281
	mov	rdi, qword ptr [r13 + 0x10]
	mov	qword ptr [rsp + 0x38], rcx
	lea	rsi, [rcx*8]
	call	realloc
	mov	r14, rax
	test	r14, r14
	je	.label_2281
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
	jmp	.label_2298
.label_2280:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_2281
.label_2279:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 4], 0xc
	mov	ebp, 0xc
	jmp	.label_2281
	nop	
	.section	.text
	.align	32
	#Procedure 0x4160d0

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
	je	.label_2314
	test	r12, r12
	jle	.label_2320
	xor	r12d, r12d
	jmp	.label_2313
	nop	dword ptr [rax]
.label_2317:
	cmp	rbp, -1
	je	.label_2312
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_2318
	nop	dword ptr [rax]
.label_2313:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_2312
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_2319:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_2316
	cmp	qword ptr [rbx + rcx], r13
	je	.label_2317
.label_2316:
	inc	rax
	cmp	rax, r10
	jl	.label_2319
.label_2312:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_2318:
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_2315
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_2313
.label_2320:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_2314:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2315:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_2314
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416200

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
	jle	.label_2321
	mov	r10, qword ptr [rdi + 0xd8]
	xor	r11d, r11d
	mov	rdx, r9
	nop	dword ptr [rax]
.label_2338:
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
	jl	.label_2338
.label_2321:
	cmp	r11, r9
	jge	.label_2340
	cmp	r11, -1
	je	.label_2340
	mov	qword ptr [rsp + 0x50], rcx
	mov	dword ptr [rsp + 0x44], r8d
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [r11 + r11*4]
	mov	qword ptr [rsp + 0x48], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_2340
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x28], r14
	jmp	.label_2331
.label_2337:
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
.label_2331:
	mov	rax, qword ptr [rsp + 0x48]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_2329:
	mov	r9, qword ptr [rsi + 8]
	test	r9, r9
	jle	.label_2325
	mov	rdx, qword ptr [r13]
	dec	r9
	mov	r8, qword ptr [rsi + 0x10]
	mov	eax, 0
	je	.label_2344
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2322:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [r8 + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_2322
.label_2344:
	cmp	rax, -1
	je	.label_2325
	cmp	qword ptr [r8 + rax*8], rdx
	jne	.label_2325
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_2334
	test	r9, r9
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rax + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_2339
	xor	edx, edx
.label_2346:
	lea	rax, [rdx + r9]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rbx
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_2346
.label_2339:
	cmp	rdx, -1
	je	.label_2352
	mov	ecx, 4
	cmp	qword ptr [r8 + rdx*8], rbx
	je	.label_2323
.label_2352:
	movaps	xmm0, xmmword ptr [rip + label_1686]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2333
	mov	qword ptr [rax], rbx
	xor	r12d, r12d
.label_2332:
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
	je	.label_2323
	test	r14d, r14d
	cmovne	ebx, r14d
	test	r12d, r12d
	cmovne	ebx, r12d
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_2323
.label_2334:
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r9, qword ptr [rax + r12*8]
	test	r9, r9
	je	.label_2335
	mov	r8, qword ptr [r9 + 0x10]
	test	r8, r8
	jle	.label_2341
	mov	rcx, r8
	dec	rcx
	mov	rax, qword ptr [r9 + 0x18]
	mov	edx, 0
	je	.label_2343
	xor	edx, edx
	nop	
.label_2350:
	lea	rbp, [rdx + rcx]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], r14
	lea	rbx, [rbp + 1]
	cmovl	rdx, rbx
	cmovge	rcx, rbp
	cmp	rdx, rcx
	jb	.label_2350
.label_2343:
	cmp	rdx, -1
	je	.label_2328
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_2323
.label_2328:
	mov	qword ptr [rsp + 0x18], r8
	test	r8, r8
	jle	.label_2330
	mov	rbp, r9
	mov	qword ptr [rsp + 0x10], r8
	shl	r8, 3
	mov	rdi, r8
	mov	rbx, r8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2349
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2345
.label_2335:
	movaps	xmm0, xmmword ptr [rip + label_1686]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2351
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 8], 0
	jmp	.label_2324
.label_2341:
	mov	qword ptr [rsp + 0x18], r8
.label_2330:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
.label_2345:
	xor	ebx, ebx
.label_2342:
	mov	dword ptr [rsp + 8], ebx
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_2347
	xor	al, 1
	jne	.label_2347
.label_2324:
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
	jne	.label_2336
	mov	eax, dword ptr [rsp + 0xc]
.label_2336:
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], eax
	mov	rsi, qword ptr [rsp + 0x38]
	jmp	.label_2348
.label_2333:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	r12d, 0xc
	jmp	.label_2332
.label_2347:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_2326
.label_2351:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 8], 0xc
	mov	dword ptr [rsp + 0xc], 0xc
	mov	ecx, 1
.label_2326:
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x30]
.label_2323:
	mov	r14, qword ptr [rsp + 0x28]
.label_2348:
	test	ecx, ecx
	je	.label_2325
	cmp	ecx, 4
	jne	.label_2327
.label_2325:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_2329
	jmp	.label_2340
.label_2349:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	ebx, 0xc
	jmp	.label_2342
.label_2327:
	cmp	ecx, 2
	je	.label_2337
	mov	eax, dword ptr [rsp + 0xc]
.label_2340:
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
	.align	32
	#Procedure 0x416660

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
	jmp	.label_2360
	nop	dword ptr [rax]
.label_2356:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_2360:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_2354
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_2357
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2361:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2361
.label_2357:
	cmp	rdx, -1
	je	.label_2354
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_2358
.label_2354:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_2359
	cmp	qword ptr [rax + rcx], r14
	je	.label_2362
.label_2359:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_2353
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_2355
	test	rcx, rcx
	jne	.label_2356
	jmp	.label_2358
	nop	dword ptr [rax]
.label_2355:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_2353
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_2356
.label_2362:
	cmp	r15d, 9
	jne	.label_2358
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_2353
.label_2358:
	xor	eax, eax
.label_2353:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x416780

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
	je	.label_2363
	mov	rbx, r8
	jle	.label_2369
	mov	rcx, qword ptr [r12 + 0x10]
	xor	esi, esi
	cmp	r8, 4
	mov	rbx, r8
	jb	.label_2372
	xor	esi, esi
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	rbx, r8
	je	.label_2372
	movq	xmm0, r8
	lea	rbp, [rdx - 4]
	mov	rbx, rbp
	shr	rbx, 2
	lea	esi, [rbx + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_2384
	pxor	xmm1, xmm1
	jmp	.label_2387
.label_2384:
	lea	rbp, [rsi - 1]
	sub	rbp, rbx
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2365:
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
	jne	.label_2365
.label_2387:
	test	rsi, rsi
	je	.label_2386
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_2364:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_2364
.label_2386:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	rbx, xmm1
	cmp	r8, rdx
	mov	rsi, rdx
	je	.label_2369
.label_2372:
	mov	rdx, r8
	sub	rdx, rsi
	lea	rcx, [rcx + rsi*8]
	nop	
.label_2378:
	add	rbx, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_2378
.label_2369:
	mov	rdx, qword ptr [r15 + 0x40]
	mov	rcx, qword ptr [r15 + 0x88]
	and	rcx, rbx
	lea	rsi, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rsi*8]
	test	rcx, rcx
	jle	.label_2380
	mov	rdx, qword ptr [rdx + rsi*8 + 0x10]
	xor	esi, esi
	nop	
.label_2382:
	test	r12, r12
	je	.label_2388
	mov	r13, qword ptr [rdx + rsi*8]
	cmp	rbx, qword ptr [r13]
	jne	.label_2388
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_2388
	mov	rdi, r8
	nop	dword ptr [rax + rax]
.label_2368:
	test	rdi, rdi
	jle	.label_2374
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_2368
	nop	word ptr cs:[rax + rax]
.label_2388:
	inc	rsi
	cmp	rsi, rcx
	jl	.label_2382
.label_2380:
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2371
	mov	rax, r13
	add	rax, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 8], r14
	jle	.label_2385
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2367
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r13 + 0x50], rax
	jmp	.label_2376
.label_2385:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rax
	jle	.label_2379
	lea	r14, [r12 + 0x10]
.label_2376:
	xor	eax, eax
	nop	dword ptr [rax]
.label_2383:
	mov	r8, qword ptr [r15]
	mov	rdx, qword ptr [r14]
	mov	rsi, qword ptr [rdx + rax*8]
	shl	rsi, 4
	mov	ebp, dword ptr [r8 + rsi + 8]
	mov	edx, ebp
	and	edx, 0x3ffff
	cmp	edx, 1
	je	.label_2381
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
	je	.label_2373
	cmp	bpl, 4
	je	.label_2375
	cmp	bpl, 2
	jne	.label_2377
	or	cl, 0x10
	jmp	.label_2370
.label_2375:
	or	cl, 0x40
	jmp	.label_2370
.label_2377:
	lea	rdx, [r8 + rsi + 8]
	test	dword ptr [rdx], 0x3ff00
	je	.label_2381
.label_2373:
	or	cl, 0x80
.label_2370:
	mov	byte ptr [r13 + 0x68], cl
.label_2381:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2383
.label_2379:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbx
	call	register_state
	test	eax, eax
	jne	.label_2389
.label_2374:
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2363:
	mov	dword ptr [r14], 0
	jmp	.label_2366
.label_2389:
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_2371
.label_2367:
	mov	rdi, r13
	call	free
.label_2371:
	mov	dword ptr [r14], 0xc
.label_2366:
	xor	r13d, r13d
	jmp	.label_2374
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416ac0

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
	je	.label_2408
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_2396
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_2396
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2395:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2396
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_2395
.label_2396:
	cmp	r10d, 5
	jne	.label_2402
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2391
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2404
	mov	rsi, qword ptr [rdx + 8]
	cmp	byte ptr [rsi + rcx], 0xa
	je	.label_2391
.label_2404:
	test	al, al
	jns	.label_2410
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_2391
.label_2410:
	mov	r14d, ebx
	jmp	.label_2391
.label_2402:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2391
	test	al, al
	je	.label_2391
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_2393
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_2393
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2398
.label_2393:
	cmp	r8d, 1
	jne	.label_2401
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_2398
.label_2401:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2398:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2406
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_2412:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_2390
	inc	rdx
	cmp	rdx, rax
	jl	.label_2412
.label_2406:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_2413
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2394:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_2390
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2394
	mov	rsi, qword ptr [r15 + 0x40]
.label_2413:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_2397
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_2414:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_2400
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_2390
.label_2400:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2414
	jmp	.label_2397
.label_2390:
	mov	ecx, ebx
.label_2397:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2407
	mov	r14d, ecx
	jmp	.label_2391
.label_2407:
	test	ecx, ecx
	jg	.label_2391
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
.label_2391:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2408:
	mov	rax, qword ptr [rdx + 8]
	mov	bl, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	bl, 0xc2
	jb	.label_2391
	lea	rsi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rsi, rdx
	jg	.label_2391
	mov	dil, byte ptr [rax + rcx + 1]
	cmp	bl, 0xdf
	ja	.label_2392
	cmp	dil, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	dil, dil
	cmovs	r14d, eax
	jmp	.label_2391
.label_2392:
	cmp	bl, 0xef
	ja	.label_2409
	mov	esi, 3
	cmp	bl, 0xe0
	jne	.label_2399
	cmp	dil, 0xa0
	jb	.label_2391
	jmp	.label_2399
.label_2409:
	cmp	bl, 0xf7
	ja	.label_2405
	mov	esi, 4
	cmp	bl, 0xf0
	jne	.label_2399
	cmp	dil, 0x90
	jb	.label_2391
	jmp	.label_2399
.label_2405:
	cmp	bl, 0xfb
	ja	.label_2411
	mov	esi, 5
	cmp	bl, 0xf8
	jne	.label_2399
	cmp	dil, 0x88
	jb	.label_2391
	jmp	.label_2399
.label_2411:
	cmp	bl, 0xfd
	ja	.label_2391
	mov	esi, 6
	cmp	bl, 0xfc
	jne	.label_2399
	cmp	dil, 0x84
	jb	.label_2391
.label_2399:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_2391
	add	rax, rcx
	mov	ecx, 1
.label_2403:
	movzx	edx, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_2391
	cmp	dl, 0xbf
	ja	.label_2391
	inc	rcx
	cmp	rcx, rdi
	jl	.label_2403
	mov	r14d, esi
	jmp	.label_2391
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416d50

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
	ja	.label_2415
	jmp	qword ptr [(rbp * 8) + label_2423]
.label_3093:
	cmp	byte ptr [rsi], cl
	je	.label_2417
	xor	eax, eax
	jmp	.label_2415
.label_3094:
	mov	rax, qword ptr [rsi]
	mov	ebx, ecx
	shr	bl, 6
	movzx	esi, bl
	mov	rax, qword ptr [rax + rsi*8]
	bt	rax, rcx
	jb	.label_2417
	xor	eax, eax
	jmp	.label_2415
.label_3096:
	test	cl, cl
	js	.label_2422
.label_3095:
	test	cl, cl
	je	.label_2418
	cmp	cl, 0xa
	jne	.label_2417
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2417
	xor	eax, eax
	jmp	.label_2415
.label_2418:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_2421
.label_2417:
	mov	eax, r14d
	mov	ebp, eax
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_2415
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2416
	test	ecx, ecx
	jne	.label_2416
	xor	eax, eax
	jmp	.label_2415
.label_2416:
	mov	edx, r14d
	test	dh, 8
	je	.label_2419
	test	ecx, ecx
	je	.label_2419
.label_2422:
	xor	eax, eax
	jmp	.label_2415
.label_2419:
	mov	ecx, r14d
	test	ch, 0x20
	je	.label_2420
	mov	ecx, eax
	and	ecx, 2
	jne	.label_2420
.label_2421:
	xor	eax, eax
	jmp	.label_2415
.label_2420:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_2415:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x416e40

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
	je	.label_2451
	lea	rax, [r14 + 0x58]
	mov	qword ptr [rbp - 0xc8], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	xor	ebx, ebx
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_2453
	lea	rax, [r15 + 0x1800]
	mov	qword ptr [rbp - 0x88], rax
	xor	r12d, r12d
	mov	qword ptr [rbp - 0x70], r15
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xb0], r14
	nop	dword ptr [rax]
.label_2499:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [rsi]
	shl	rax, 4
	lea	rdi, [rcx + rax]
	mov	eax, dword ptr [rcx + rax + 8]
	movzx	ecx, al
	mov	dword ptr [rbp - 0xa0], ecx
	cmp	ecx, 1
	jne	.label_2531
	mov	cl, byte ptr [rdi]
	mov	edx, 1
	shl	rdx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x50], rdx
.label_2439:
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, ecx
	and	edx, 0x3ff
	je	.label_2475
	test	cl, 0x20
	je	.label_2480
	mov	rdx, qword ptr [rbp - 0x50]
	test	dh, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	je	.label_2426
	mov	qword ptr [rbp - 0x50], 0x400
.label_2480:
	test	cl, cl
	js	.label_2489
	test	cl, 4
	je	.label_2491
	mov	edx, eax
	and	edx, 0x4000ff
	cmp	edx, 1
	je	.label_2489
	mov	r9, rbx
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2497
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
	jmp	.label_2504
	nop	word ptr cs:[rax + rax]
.label_2531:
	cmp	al, 7
	je	.label_2528
	cmp	al, 5
	je	.label_2529
	cmp	al, 3
	jne	.label_2426
	mov	rcx, qword ptr [rdi]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x50]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	jmp	.label_2439
.label_2528:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	rcx, qword ptr [rsi + 0xd8]
	mov	rdx, -2
	test	cl, 0x40
	jne	.label_2429
	mov	qword ptr [rbp - 0x50], -0x401
	mov	rdx, -0x402
.label_2429:
	test	cl, cl
	jns	.label_2439
	mov	qword ptr [rbp - 0x50], rdx
	jmp	.label_2439
.label_2529:
	cmp	dword ptr [rsi + 0xb4], 2
	jl	.label_2446
	mov	rcx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	movq	rcx, xmm0
	jmp	.label_2447
.label_2446:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	rcx, -1
.label_2447:
	mov	rdx, qword ptr [rsi + 0xd8]
	test	dl, 0x40
	jne	.label_2460
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x50], rcx
.label_2460:
	test	dl, dl
	jns	.label_2439
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_2439
.label_2497:
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
.label_2504:
	movq	rdx, xmm0
	or	rdx, rbx
	test	rdx, rdx
	mov	rbx, r9
	je	.label_2426
.label_2491:
	test	cl, 8
	je	.label_2475
	cmp	dword ptr [rbp - 0xa0], 1
	setne	cl
	test	eax, 0x400000
	je	.label_2484
	test	cl, cl
	jne	.label_2484
	nop	word ptr cs:[rax + rax]
.label_2489:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_2426
.label_2484:
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2495
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
	jmp	.label_2498
.label_2495:
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
.label_2498:
	test	rax, rax
	je	.label_2426
	nop	word ptr cs:[rax + rax]
.label_2475:
	mov	qword ptr [rbp - 0xa8], rbx
	test	r12, r12
	jle	.label_2435
	mov	qword ptr [rbp - 0x78], r15
	mov	r14, qword ptr [rbp - 0x88]
	xor	r13d, r13d
	mov	qword ptr [rbp - 0x80], rdi
	jmp	.label_2438
.label_2435:
	xor	r13d, r13d
	jmp	.label_2441
.label_2532:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x90]
	movdqu	xmmword ptr [rax], xmm0
	mov	ebx, 0x1a
	mov	r12, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0x58]
	mov	r15, qword ptr [rbp - 0x70]
	jmp	.label_2445
	nop	word ptr cs:[rax + rax]
.label_2438:
	cmp	dword ptr [rbp - 0xa0], 1
	jne	.label_2457
	movzx	eax, byte ptr [rdi]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [r14 + rcx*8]
	mov	ebx, 0x13
	bt	rcx, rax
	jae	.label_2445
.label_2457:
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
	je	.label_2450
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
	je	.label_2478
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
	jle	.label_2509
	mov	qword ptr [rbp - 0x98], rax
	mov	qword ptr [rbp - 0x90], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2532
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x98]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_2433
.label_2478:
	mov	r15, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0xa8]
	jmp	.label_2467
.label_2509:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
.label_2433:
	inc	qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	r15, qword ptr [rbp - 0x70]
.label_2467:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rbp - 0x78]
	call	re_node_set_insert
	mov	ebx, 0x1a
	test	al, al
	je	.label_2450
	or	r13, qword ptr [rbp - 0xc0]
	or	r12, qword ptr [rbp - 0xb8]
	or	r12, r13
	mov	ebx, 0
	mov	eax, 0x11
	cmove	ebx, eax
.label_2450:
	mov	r12, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0x58]
.label_2445:
	mov	eax, ebx
	and	al, 0x1f
	and	ebx, 0x1f
	cmp	al, 0x1a
	ja	.label_2462
	jmp	qword ptr [(rbx * 8) + label_2465]
.label_3071:
	inc	r13
	add	r14, 0x20
	add	qword ptr [rbp - 0x78], 0x18
	cmp	r13, r12
	jl	.label_2438
.label_2441:
	cmp	r13, r12
	mov	r14, qword ptr [rbp - 0xb0]
	mov	rbx, qword ptr [rbp - 0xa8]
	jne	.label_2426
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
	movdqa	xmm0, xmmword ptr [rip + label_1686]
	movdqu	xmmword ptr [r15 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r15 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2485
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
.label_2426:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jl	.label_2499
	test	r12, r12
	jle	.label_2505
.label_2462:
	lea	rax, [r12 + 1]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x48], 0
	lea	rdi, [r12*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_2514
	xor	ecx, ecx
.label_2514:
	mov	dword ptr [rbp - 0x64], ecx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r12, rcx
	ja	.label_2424
	test	rax, rax
	je	.label_2424
	lea	rax, [r12*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_2519
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa8], 0
	jmp	.label_2527
.label_2519:
	call	malloc
	test	rax, rax
	je	.label_2424
	mov	cl, 1
	mov	dword ptr [rbp - 0xa8], ecx
.label_2527:
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
.label_2518:
	mov	qword ptr [rbp - 0x48], 0
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + rcx*8 + 8]
	test	rax, rax
	jle	.label_2452
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rbx, [rdx + rcx*8 + 8]
	mov	r14, qword ptr [rdx + rcx*8 + 0x10]
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_2471:
	mov	rcx, qword ptr [r14 + r12*8]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_2463
	mov	rax, qword ptr [rsi + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r13
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x64], eax
	test	eax, eax
	jne	.label_2443
	mov	rax, qword ptr [rbx]
	mov	rsi, qword ptr [rbp - 0x30]
.label_2463:
	inc	r12
	cmp	r12, rax
	jl	.label_2471
.label_2452:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x64]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_2474
	mov	ecx, dword ptr [rbp - 0x64]
	test	ecx, ecx
	jne	.label_2443
.label_2474:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2477
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + r15*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + r15*8]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	jmp	.label_2479
	nop	
.label_2477:
	mov	ecx, 1
	lea	rdi, [rbp - 0x64]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_2493
	mov	ecx, dword ptr [rbp - 0x64]
	test	ecx, ecx
	jne	.label_2443
.label_2493:
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	qword ptr [rcx + r15*8], rax
	je	.label_2442
	mov	rsi, qword ptr [rbp - 0x30]
	cmp	dword ptr [rsi + 0xb4], 1
	mov	al, 1
	jg	.label_2503
	mov	rax, qword ptr [rbp - 0x80]
.label_2503:
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_2510
.label_2442:
	mov	rsi, qword ptr [rbp - 0x30]
.label_2510:
	mov	ecx, 2
	lea	rdi, [rbp - 0x64]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_2479
	mov	eax, dword ptr [rbp - 0x64]
	test	eax, eax
	jne	.label_2443
	nop	word ptr cs:[rax + rax]
.label_2479:
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
	jl	.label_2518
	mov	rax, qword ptr [rbp - 0x80]
	and	al, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	edi, 8
	jne	.label_2436
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_2443
	cmp	qword ptr [rbp - 0x78], 0
	mov	r14, qword ptr [rbp - 0x70]
	mov	r15, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r13, qword ptr [rbp - 0x90]
	je	.label_2448
	lea	r8, [rdi - 8]
	mov	edx, 1
	xor	esi, esi
	mov	rbx, qword ptr [rbp - 0x78]
	jmp	.label_2455
.label_2523:
	mov	rcx, r10
	mov	r9, r8
.label_2459:
	add	r9, 8
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2459
	mov	rcx, qword ptr [rbp - 0x30]
	test	qword ptr [rcx + 0xb8], rdx
	je	.label_2516
	mov	rcx, qword ptr [r9 + r15*8]
	jmp	.label_2526
.label_2516:
	mov	rcx, qword ptr [r9]
.label_2526:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2466
	nop	word ptr [rax + rax]
.label_2455:
	test	bl, 1
	jne	.label_2523
.label_2466:
	add	rdx, rdx
	shr	rbx, 1
	inc	rsi
	test	rbx, rbx
	jne	.label_2455
.label_2448:
	test	r13, r13
	mov	r11, qword ptr [rbp - 0xa0]
	mov	r12, qword ptr [rbp - 0x98]
	je	.label_2470
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2473
.label_2487:
	mov	rdx, r9
	mov	rcx, r8
.label_2430:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2430
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xc0], rsi
	je	.label_2449
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2483
.label_2449:
	mov	rcx, qword ptr [rcx]
.label_2483:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2472
	nop	dword ptr [rax]
.label_2473:
	test	r13b, 1
	jne	.label_2487
.label_2472:
	add	rsi, rsi
	shr	r13, 1
	inc	rbx
	test	r13, r13
	jne	.label_2473
.label_2470:
	test	r12, r12
	je	.label_2492
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2494
.label_2500:
	mov	rdx, r9
	mov	rcx, r8
.label_2501:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2501
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xc8], rsi
	je	.label_2506
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2511
.label_2506:
	mov	rcx, qword ptr [rcx]
.label_2511:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2512
	nop	
.label_2494:
	test	r12b, 1
	jne	.label_2500
.label_2512:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_2494
.label_2492:
	test	r11, r11
	je	.label_2481
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2533
.label_2437:
	mov	rdx, r9
	mov	rcx, r8
.label_2521:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2521
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xd0], rsi
	je	.label_2525
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2431
.label_2525:
	mov	rcx, qword ptr [rcx]
.label_2431:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2530
	nop	
.label_2533:
	test	r11b, 1
	jne	.label_2437
.label_2530:
	add	rsi, rsi
	shr	r11, 1
	inc	rbx
	test	r11, r11
	jne	.label_2533
.label_2481:
	mov	rcx, qword ptr [rbp - 0x78]
	test	ch, 4
	je	.label_2425
	xor	ecx, ecx
	nop	
.label_2432:
	test	byte ptr [r10 + 1], 4
	jne	.label_2428
	inc	rcx
	add	r10, 0x20
	cmp	rcx, r15
	jl	.label_2432
	jmp	.label_2425
.label_2428:
	mov	rdx, r15
	shl	rdx, 4
	add	rdx, rdi
	mov	rsi, qword ptr [rbp - 0x80]
	test	sil, sil
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2425
	mov	qword ptr [rax + 0x850], rcx
.label_2425:
	mov	eax, dword ptr [rbp - 0xa8]
	test	al, al
	je	.label_2444
	call	free
.label_2444:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2454:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2454
	mov	rdi, r14
	call	free
	mov	al, 1
	jmp	.label_2488
.label_2424:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	jmp	.label_2461
.label_2485:
	lea	rax, [r15 + rbx*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	r12, r13
.label_3072:
	mov	rbx, -1
	test	r12, r12
	jle	.label_2453
	mov	rbx, r15
	add	rbx, 0x10
.label_2468:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2468
	mov	rbx, -1
.label_2453:
	mov	r12, rbx
.label_2505:
	mov	rdi, r15
	call	free
	test	r12, r12
	jne	.label_2451
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_2488
.label_2436:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_2443
	cmp	qword ptr [rbp - 0x78], 0
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	je	.label_2486
	lea	r8, [rdi - 8]
	mov	r9d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x78]
	jmp	.label_2515
.label_2443:
	mov	eax, dword ptr [rbp - 0xa8]
	test	al, al
	je	.label_2496
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_2496:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	r12, qword ptr [rbp - 0x60]
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x70]
	jle	.label_2508
.label_2461:
	mov	rbx, r15
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_2513:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2513
.label_2508:
	mov	rdi, r15
	call	free
.label_2451:
	xor	eax, eax
.label_2488:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2534:
	mov	rbx, qword ptr [rbp - 0x88]
	mov	rcx, r8
.label_2520:
	add	rcx, 8
	test	qword ptr [rbx], r9
	lea	rbx, [rbx + 0x20]
	je	.label_2520
	mov	rbx, qword ptr [rcx]
	mov	qword ptr [rax + rsi*8], rbx
	mov	rbx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + rbx*8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	jmp	.label_2524
.label_2515:
	test	dl, 1
	jne	.label_2534
.label_2524:
	add	r9, r9
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_2515
.label_2486:
	test	rcx, rcx
	mov	r12, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x98]
	je	.label_2427
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2434
.label_2456:
	mov	r10, rcx
	mov	rdx, r9
	mov	rcx, r8
.label_2440:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2440
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
	jmp	.label_2522
.label_2434:
	test	cl, 1
	jne	.label_2456
.label_2522:
	add	rsi, rsi
	shr	rcx, 1
	inc	rbx
	test	rcx, rcx
	jne	.label_2434
.label_2427:
	test	rdx, rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x88]
	je	.label_2502
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2464
.label_2476:
	mov	r11, rdx
	mov	rdx, r9
	mov	rcx, r8
.label_2458:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2458
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
	jmp	.label_2469
.label_2464:
	test	dl, 1
	jne	.label_2476
.label_2469:
	add	rsi, rsi
	shr	rdx, 1
	inc	rbx
	test	rdx, rdx
	jne	.label_2464
.label_2502:
	test	r12, r12
	je	.label_2481
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2482
.label_2507:
	mov	r11, r12
	mov	rdx, r9
	mov	rcx, r8
.label_2490:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2490
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r12, r11
	jmp	.label_2517
.label_2482:
	test	r12b, 1
	jne	.label_2507
.label_2517:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_2482
	jmp	.label_2481
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x417d90

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
	movaps	xmm0, xmmword ptr [rip + label_1686]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	test	rax, rax
	je	.label_2546
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2543
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x38], rax
	mov	dword ptr [rsp + 0x14], 0
	nop	word ptr cs:[rax + rax]
.label_2542:
	mov	rdx, r15
	test	rdx, rdx
	jle	.label_2538
	mov	rdi, qword ptr [r14]
	mov	ecx, dword ptr [rsp + 0x14]
	inc	ecx
	cmp	qword ptr [rdi + rdx*8], 0
	mov	eax, 0
	cmovne	ecx, eax
	cmp	ecx, dword ptr [r13 + 0xe0]
	jg	.label_2539
	mov	dword ptr [rsp + 0x14], ecx
	mov	qword ptr [rsp + 0x28], 0
	lea	r15, [rdx - 1]
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [rax + rdx*8 - 8]
	test	rax, rax
	je	.label_2552
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2552
	mov	rcx, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x18], rcx
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax + rax]
.label_2553:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, r12
	mov	qword ptr [rsp + 8], rcx
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2536
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
	jle	.label_2550
	movsxd	rcx, eax
	mov	rsi, r14
	add	rcx, r14
	cmp	rcx, qword ptr [rsp + 0x48]
	jle	.label_2551
	mov	r14, r15
	mov	r15, rsi
	jmp	.label_2535
.label_2550:
	mov	rcx, r15
	mov	r15, r14
	mov	r14, rcx
	jne	.label_2535
	jmp	.label_2536
.label_2551:
	mov	r14, r15
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r15, rsi
	je	.label_2536
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_2536
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2544
	xor	edi, edi
	nop	dword ptr [rax]
.label_2547:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_2547
.label_2544:
	test	eax, eax
	je	.label_2536
	cmp	rdi, -1
	je	.label_2536
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2535
.label_2536:
	mov	rax, qword ptr [rsp + 0x18]
	add	r12, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	check_node_accept
	test	al, al
	je	.label_2537
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_2537
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2537
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_2545
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2541:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_2541
.label_2545:
	cmp	rsi, -1
	je	.label_2537
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_2537
	nop	dword ptr [rax]
.label_2535:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_2540
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
	jne	.label_2548
.label_2540:
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_2548:
	or	cl, 4
	mov	ebp, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_2543
.label_2537:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_2553
.label_2552:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_2542
	jmp	.label_2543
.label_2538:
	xor	ebp, ebp
	jmp	.label_2543
.label_2539:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_2543:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_2549:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2546:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	jmp	.label_2549
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4180f0

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
	jle	.label_2555
	xor	ebp, ebp
	lea	r13, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_2556:
	mov	rsi, qword ptr [rbx + rbp*8]
	mov	rdx, qword ptr [r14 + rbp*8]
	test	rsi, rsi
	je	.label_2554
	test	rdx, rdx
	je	.label_2557
	add	rsi, 8
	add	rdx, 8
	mov	rdi, r13
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_2555
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r13
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_2557
	jmp	.label_2555
	nop	word ptr cs:[rax + rax]
.label_2554:
	mov	qword ptr [rbx + rbp*8], rdx
.label_2557:
	inc	rbp
	xor	eax, eax
	cmp	rbp, r15
	jl	.label_2556
.label_2555:
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
	#Procedure 0x4181a0

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
	je	.label_2597
	test	r15, r15
	je	.label_2560
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
	jne	.label_2564
	mov	r13, r14
	add	r13, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rdx, qword ptr [rsp + 0x28]
	jne	.label_2575
	mov	rdi, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	mov	r12d, 0xc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2587
	xor	ecx, ecx
.label_2587:
	test	rax, rax
	mov	dword ptr [rsp + 0x50], ecx
	je	.label_2564
	mov	rdx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rdx + 8], 0
	jle	.label_2575
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_2604:
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
	jne	.label_2564
	inc	rbx
	cmp	rbx, qword ptr [rbp + 8]
	mov	rdx, rbp
	jl	.label_2604
.label_2575:
	mov	rdi, rdx
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, r13
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	mov	r9, qword ptr [rsp + 0x10]
	jne	.label_2574
	mov	r12, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [r12 + 0x28]
	test	rax, rax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x20]
	je	.label_2560
	mov	qword ptr [rsp + 0x48], r15
	jle	.label_2566
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	mov	qword ptr [rsp + 0x30], rax
	xor	r13d, r13d
	nop	
.label_2599:
	mov	rax, qword ptr [r12 + 0x30]
	mov	rax, qword ptr [rax + r13*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rcx + rax*8 + 0x10], r9
	jge	.label_2568
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rcx + rax*8 + 8], r9
	jl	.label_2568
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rdx + rax*8]
	mov	rbp, qword ptr [r11]
	shl	rcx, 4
	mov	r14, qword ptr [rbp + rcx]
	cmp	qword ptr [rdx + rax*8 + 0x18], r9
	mov	rax, qword ptr [r10 + 8]
	jne	.label_2588
	test	rax, rax
	jle	.label_2568
	mov	rdx, qword ptr [r10 + 0x10]
	mov	r15, -1
	mov	rsi, -1
	nop	dword ptr [rax]
.label_2607:
	mov	rbx, qword ptr [rdx]
	mov	rdi, rbx
	shl	rdi, 4
	movzx	ecx, byte ptr [rbp + rdi + 8]
	cmp	cl, 9
	je	.label_2567
	cmp	cl, 8
	jne	.label_2603
	cmp	r14, qword ptr [rbp + rdi]
	cmove	rsi, rbx
	jmp	.label_2603
	nop	word ptr cs:[rax + rax]
.label_2567:
	cmp	r14, qword ptr [rbp + rdi]
	cmove	r15, rbx
.label_2603:
	add	rdx, 8
	dec	rax
	jne	.label_2607
	test	rsi, rsi
	js	.label_2608
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2564
.label_2608:
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x38]
	js	.label_2568
	mov	r8, qword ptr [r10 + 8]
	test	r8, r8
	jle	.label_2568
	xor	r14d, r14d
.label_2601:
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rsi, qword ptr [rcx + r14*8]
	mov	rdi, qword ptr [r11 + 0x38]
	lea	rcx, [rsi + rsi*2]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_2593
	dec	rdx
	mov	rdi, qword ptr [rdi + rcx*8 + 0x10]
	mov	ebx, 0
	je	.label_2585
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_2589:
	lea	rbp, [rbx + rdx]
	shr	rbp, 1
	cmp	qword ptr [rdi + rbp*8], r15
	lea	rax, [rbp + 1]
	cmovl	rbx, rax
	cmovge	rdx, rbp
	cmp	rbx, rdx
	jb	.label_2589
.label_2585:
	cmp	rbx, -1
	je	.label_2593
	cmp	qword ptr [rdi + rbx*8], r15
	je	.label_2594
.label_2593:
	mov	rdi, qword ptr [r11 + 0x30]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_2578
	dec	rdx
	mov	rcx, qword ptr [rdi + rcx*8 + 0x10]
	mov	edi, 0
	je	.label_2611
	xor	edi, edi
	nop	dword ptr [rax + rax]
.label_2602:
	lea	rax, [rdi + rdx]
	shr	rax, 1
	cmp	qword ptr [rcx + rax*8], r15
	lea	rbp, [rax + 1]
	cmovl	rdi, rbp
	cmovge	rdx, rax
	cmp	rdi, rdx
	jb	.label_2602
.label_2611:
	cmp	rdi, -1
	je	.label_2578
	cmp	qword ptr [rcx + rdi*8], r15
	je	.label_2594
.label_2578:
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2564
	dec	r14
	mov	r8, qword ptr [r10 + 8]
	mov	r12, qword ptr [rsp + 0x38]
.label_2594:
	inc	r14
	cmp	r14, r8
	jl	.label_2601
	jmp	.label_2568
.label_2588:
	test	rax, rax
	jle	.label_2568
	xor	ebx, ebx
	jmp	.label_2572
	nop	dword ptr [rax]
.label_2609:
	mov	rbp, qword ptr [r11]
.label_2572:
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rsi, qword ptr [rcx + rbx*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	ecx, dword ptr [rbp + rdx + 8]
	mov	edi, 0xfe
	and	ecx, edi
	or	ecx, 1
	cmp	ecx, 9
	jne	.label_2579
	cmp	r14, qword ptr [rbp + rdx]
	jne	.label_2579
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2564
	mov	rax, qword ptr [r10 + 8]
	mov	r12, qword ptr [rsp + 0x38]
.label_2579:
	inc	rbx
	cmp	rbx, rax
	jl	.label_2609
	nop	dword ptr [rax + rax]
.label_2568:
	inc	r13
	cmp	r13, qword ptr [r12 + 0x28]
	jl	.label_2599
.label_2566:
	mov	dword ptr [rsp + 0xc], 0
	mov	r15, qword ptr [rsp + 0x48]
.label_2560:
	lea	rdi, [rsp + 0xc]
	mov	rsi, r11
	mov	rdx, r10
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [r12]
	mov	qword ptr [rdx + rcx*8], rax
	mov	r12d, dword ptr [rsp + 0xc]
	test	r12d, r12d
	je	.label_2605
	jmp	.label_2574
.label_2597:
	mov	rax, qword ptr [r12]
	mov	qword ptr [rax + rcx*8], 0
.label_2605:
	test	r15, r15
	je	.label_2561
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rax, qword ptr [rax + rcx*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_2561
	mov	rax, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rax + 0xc8]
	xor	r15d, r15d
	test	rax, rax
	jle	.label_2569
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rdx + 0xd8]
	xor	r15d, r15d
	mov	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_2590:
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
	jl	.label_2590
.label_2569:
	cmp	r15, rax
	mov	rdx, qword ptr [rsp + 0x38]
	jge	.label_2592
	cmp	r15, -1
	je	.label_2592
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rsi, [r15 + r15*4]
	mov	qword ptr [rsp + 0x48], rsi
	cmp	qword ptr [rax + rsi*8 + 8], rcx
	jne	.label_2592
	mov	qword ptr [rsp + 0x50], 0
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2592
	lea	rax, [rdx + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0x90], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	shl	qword ptr [rsp + 0x48], 3
	mov	qword ptr [rsp + 0x30], r10
	nop	word ptr cs:[rax + rax]
.label_2563:
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
	jne	.label_2562
	cmp	eax, 4
	jne	.label_2577
	cmp	qword ptr [r12 + 0x18], rcx
	jne	.label_2580
	jmp	.label_2577
	nop	word ptr cs:[rax + rax]
.label_2562:
	cmp	eax, 4
	jne	.label_2577
.label_2580:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rax + 0xd8]
	add	rbx, qword ptr [rsp + 0x48]
	mov	r13, r15
	nop	dword ptr [rax]
.label_2558:
	cmp	qword ptr [rbx], r14
	jne	.label_2559
	mov	rax, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x10]
	mov	r9, rax
	sub	r9, rdx
	add	r9, rcx
	cmp	rax, rdx
	je	.label_2591
	lea	rsi, [r14*8]
	add	rsi, qword ptr [r10 + 0x18]
	jmp	.label_2596
.label_2591:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rdx, [r14 + r14*2]
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
.label_2596:
	cmp	r9, qword ptr [r12 + 0x18]
	jg	.label_2559
	mov	rax, qword ptr [r12]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_2559
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2559
	mov	r8, qword ptr [rsi]
	dec	rax
	mov	rbp, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2606
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2581:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rbp + rsi*8], r8
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2581
.label_2606:
	cmp	rdx, -1
	je	.label_2559
	cmp	qword ptr [rbp + rdx*8], r8
	jne	.label_2559
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r14
	call	check_dst_limits
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	test	al, al
	jne	.label_2559
	cmp	qword ptr [rsp + 0x50], 0
	jne	.label_2584
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
	jle	.label_2576
	mov	qword ptr [rsp + 0x70], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_2598
	mov	rsi, qword ptr [r12 + 0x30]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_2584
.label_2576:
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_2584:
	mov	qword ptr [rsp + 0x60], r14
	mov	qword ptr [rsp + 0x68], rcx
	lea	rdi, [rsp + 0x70]
	mov	rsi, r13
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, 0xc
	test	al, al
	je	.label_2570
	mov	rbp, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rbp + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x50]
	call	sift_states_backward
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2570
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 8]
	test	rsi, rsi
	je	.label_2595
	mov	rdi, r10
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x90]
	call	merge_state_array
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2570
.label_2595:
	mov	qword ptr [rbp + rcx*8], rbx
	mov	rsi, qword ptr [rsp + 0x78]
	test	rsi, rsi
	jle	.label_2582
	mov	rbp, rsi
	dec	rbp
	mov	r8, qword ptr [rsp + 0x80]
	mov	edx, 0
	je	.label_2583
	mov	rdi, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_2571:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [r8 + rbx*8], r13
	lea	rax, [rbx + 1]
	cmovl	rdx, rax
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_2571
.label_2583:
	cmp	qword ptr [r8 + rdx*8], r13
	mov	rdi, -1
	cmove	rdi, rdx
	test	rdi, rdi
	js	.label_2582
	cmp	rsi, rdi
	jle	.label_2582
	mov	qword ptr [rsp + 0x78], rbp
	cmp	rbp, rdi
	jle	.label_2582
	lea	r12, [rdx + 1]
	cmp	rbp, r12
	mov	r11, r12
	cmovge	r11, rbp
	sub	r11, rdx
	cmp	r11, 4
	jb	.label_2565
	mov	rax, r11
	and	rax, 0xfffffffffffffffc
	mov	r9, r11
	and	r9, 0xfffffffffffffffc
	je	.label_2565
	cmp	rbp, r12
	cmovge	r12, rbp
	sub	r12, rdx
	add	r12, -4
	shr	r12, 2
	lea	r10d, [r12 + 1]
	and	r10d, 1
	test	r12, r12
	mov	edi, 0
	je	.label_2600
	lea	rbx, [r8 + rdx*8 + 0x38]
	lea	rsi, [r10 - 1]
	sub	rsi, r12
	xor	edi, edi
	nop	dword ptr [rax]
.label_2610:
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
	jne	.label_2610
.label_2600:
	test	r10, r10
	je	.label_2586
	add	rdi, rdx
	movups	xmm0, xmmword ptr [r8 + rdi*8 + 8]
	movups	xmm1, xmmword ptr [r8 + rdi*8 + 0x18]
	movups	xmmword ptr [r8 + rdi*8], xmm0
	movups	xmmword ptr [r8 + rdi*8 + 0x10], xmm1
.label_2586:
	cmp	r11, r9
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 0x30]
	je	.label_2582
	add	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_2565:
	mov	rax, qword ptr [r8 + rdx*8 + 8]
	mov	qword ptr [r8 + rdx*8], rax
	inc	rdx
	cmp	rdx, rbp
	jl	.label_2565
.label_2582:
	lea	rbx, [r13 + r13*4]
	shl	rbx, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbx, qword ptr [rax + 0xd8]
	mov	r12, qword ptr [rsp + 0x38]
	nop	dword ptr [rax + rax]
.label_2559:
	inc	r13
	cmp	byte ptr [rbx + 0x20], 0
	lea	rbx, [rbx + 0x28]
	jne	.label_2558
.label_2577:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, rax
	inc	rsi
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	rdx, rsi
	mov	qword ptr [rsp + 0x20], rdx
	cmp	rsi, qword ptr [rax + 8]
	jl	.label_2563
.label_2570:
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_2573
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
.label_2573:
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	je	.label_2561
	jmp	.label_2574
.label_2592:
	mov	dword ptr [rsp + 0xc], 0
.label_2561:
	xor	r12d, r12d
.label_2574:
	mov	eax, r12d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2564:
	mov	dword ptr [rsp + 0xc], r12d
	jmp	.label_2574
.label_2598:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x70]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_2570
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418ba0

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
	je	.label_2613
	mov	r11, qword ptr [r14 + 8]
	test	r11, r11
	je	.label_2613
	lea	rax, [r11 + rcx]
	mov	r13, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	lea	rsi, [rdx + rax]
	cmp	rsi, r13
	jle	.label_2618
	add	r13, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [r13*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2613
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], r13
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r15 + 8]
	mov	r11, qword ptr [r14 + 8]
	jmp	.label_2617
.label_2618:
	lea	r8, [r12 + 0x10]
.label_2617:
	lea	r10, [rcx + rdx]
	add	r10, r11
	dec	rdx
	mov	rsi, qword ptr [r15 + 0x10]
	mov	r9, qword ptr [r14 + 0x10]
.label_2629:
	dec	rcx
	mov	rdi, r11
.label_2625:
	lea	r11, [rdi - 1]
	mov	rax, qword ptr [r9 + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2621:
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_2619
	jl	.label_2620
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2621
	jmp	.label_2615
	nop	word ptr cs:[rax + rax]
.label_2620:
	cmp	rdi, 2
	mov	rdi, r11
	jge	.label_2625
	jmp	.label_2615
	nop	dword ptr [rax + rax]
.label_2619:
	mov	rbx, qword ptr [r8]
	test	rdx, rdx
	js	.label_2612
	nop	dword ptr [rax + rax]
.label_2614:
	cmp	qword ptr [rbx + rdx*8], rax
	jle	.label_2627
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_2614
	jmp	.label_2612
.label_2627:
	je	.label_2616
	nop	word ptr cs:[rax + rax]
.label_2612:
	mov	qword ptr [rbx + r10*8 - 8], rax
	dec	r10
.label_2616:
	test	rcx, rcx
	jle	.label_2615
	cmp	rdi, 2
	jge	.label_2629
.label_2615:
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
	jle	.label_2622
	test	rax, rax
	js	.label_2622
	xor	edx, edx
.label_2626:
	lea	rax, [rcx + r8]
	lea	rax, [rdi + rax*8]
	nop	dword ptr [rax + rax]
.label_2623:
	mov	rbx, qword ptr [rdi + r9*8]
	mov	rsi, qword ptr [rdi + rcx*8]
	cmp	rbx, rsi
	jg	.label_2624
	mov	qword ptr [rax], rsi
	add	rax, -8
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2623
	jmp	.label_2622
	nop	
.label_2624:
	dec	r9
	dec	r8
	mov	qword ptr [rax], rbx
	jne	.label_2626
	jmp	.label_2628
.label_2622:
	mov	rdx, r8
.label_2628:
	lea	rsi, [rdi + r10*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_2613:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418d60

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
	jle	.label_2652
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rcx
	lea	r13, [rax + rcx*8 + 8]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2641:
	mov	r11, qword ptr [r13 + 8]
	mov	rax, qword ptr [r11 + r14*8]
	cmp	rax, r15
	je	.label_2639
	mov	rdx, qword ptr [rdi]
	mov	rcx, rax
	shl	rcx, 4
	test	byte ptr [rdx + rcx + 8], 8
	je	.label_2639
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rax + rax*2]
	mov	rax, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rax]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_2653
	mov	r10, qword ptr [rax + 8]
.label_2653:
	test	r9, r9
	jle	.label_2633
	mov	rax, r9
	dec	rax
	mov	ebp, 0
	je	.label_2636
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2640:
	lea	rbx, [rbp + rax]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rcx, [rbx + 1]
	cmovl	rbp, rcx
	cmovge	rax, rbx
	cmp	rbp, rax
	jb	.label_2640
.label_2636:
	cmp	rbp, -1
	je	.label_2633
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2634
.label_2633:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_2634
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2651
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2654:
	lea	rcx, [rax + rbp]
	shr	rcx, 1
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbp, rcx
	cmp	rax, rbp
	jb	.label_2654
.label_2651:
	cmp	rax, -1
	je	.label_2634
	cmp	qword ptr [rbx + rax*8], rsi
	je	.label_2638
.label_2634:
	test	r10, r10
	jle	.label_2639
	test	r9, r9
	jle	.label_2642
	mov	rax, r9
	dec	rax
	mov	esi, 0
	je	.label_2643
	xor	esi, esi
	nop	dword ptr [rax]
.label_2631:
	lea	rcx, [rsi + rax]
	shr	rcx, 1
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rsi, rdx
	cmovge	rax, rcx
	cmp	rsi, rax
	jb	.label_2631
.label_2643:
	cmp	rsi, -1
	je	.label_2642
	cmp	qword ptr [r11 + rsi*8], r10
	je	.label_2639
.label_2642:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_2639
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2656
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_2637:
	lea	rcx, [rax + rsi]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rsi, rcx
	cmp	rax, rsi
	jb	.label_2637
.label_2656:
	cmp	rax, -1
	je	.label_2639
	cmp	qword ptr [rbp + rax*8], r10
	jne	.label_2639
.label_2638:
	mov	rbx, rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2655
	mov	r9, qword ptr [r13]
	mov	rdi, rbx
	nop	word ptr cs:[rax + rax]
.label_2639:
	inc	r14
	cmp	r14, r9
	jl	.label_2641
	test	r9, r9
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x20]
	jle	.label_2652
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	r10, [r9 - 1]
	mov	r8, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2630:
	test	r9, r9
	mov	rbp, qword ptr [r8 + r15*8]
	jle	.label_2644
	test	r10, r10
	mov	eax, 0
	je	.label_2646
	mov	rcx, r10
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_2649:
	lea	rdx, [rax + rcx]
	shr	rdx, 1
	cmp	qword ptr [rdi + rdx*8], rbp
	lea	rbx, [rdx + 1]
	cmovl	rax, rbx
	cmovge	rcx, rdx
	cmp	rax, rcx
	jb	.label_2649
.label_2646:
	cmp	rax, -1
	je	.label_2644
	cmp	qword ptr [rdi + rax*8], rbp
	je	.label_2647
.label_2644:
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jle	.label_2647
	mov	r11, r14
	dec	r11
	mov	rdx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2632
	mov	rbx, r11
	xor	eax, eax
	nop	dword ptr [rax]
.label_2648:
	lea	rcx, [rax + rbx]
	shr	rcx, 1
	cmp	qword ptr [rdx + rcx*8], rbp
	lea	rsi, [rcx + 1]
	cmovl	rax, rsi
	cmovge	rbx, rcx
	cmp	rax, rbx
	jb	.label_2648
.label_2632:
	cmp	qword ptr [rdx + rax*8], rbp
	mov	rbx, -1
	cmove	rbx, rax
	test	rbx, rbx
	js	.label_2647
	cmp	r14, rbx
	jle	.label_2647
	mov	qword ptr [r12 + 8], r11
	cmp	r11, rbx
	jle	.label_2647
	nop	
.label_2650:
	mov	rcx, qword ptr [rdx + rax*8 + 8]
	mov	qword ptr [rdx + rax*8], rcx
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2650
	nop	word ptr cs:[rax + rax]
.label_2647:
	inc	r15
	cmp	r15, qword ptr [r13]
	jl	.label_2630
	jmp	.label_2635
.label_2652:
	mov	rdi, qword ptr [rsp + 0x10]
.label_2635:
	call	free
	xor	ebp, ebp
.label_2645:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2655:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	jmp	.label_2645
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4190c0

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
	jle	.label_2657
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r14d, r14d
	mov	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_2667:
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
	jl	.label_2667
.label_2657:
	cmp	r14, r8
	jge	.label_2671
	mov	rsi, qword ptr [rdi + 0xd8]
	lea	rdx, [r14 + r14*4]
	cmp	qword ptr [rsi + rdx*8 + 8], rcx
	je	.label_2660
.label_2671:
	mov	r14, -1
.label_2660:
	xor	r12d, r12d
	test	r8, r8
	jle	.label_2661
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r12d, r12d
	mov	rdx, r8
	nop	
.label_2668:
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
	jl	.label_2668
.label_2661:
	cmp	r12, r8
	jge	.label_2663
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rdx, [r12 + r12*4]
	mov	rsi, qword ptr [rsp]
	cmp	qword ptr [rax + rdx*8 + 8], rsi
	je	.label_2665
.label_2663:
	mov	r12, -1
.label_2665:
	cmp	qword ptr [r9 + 8], 0
	jle	.label_2658
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], r10
	nop	word ptr cs:[rax + rax]
.label_2666:
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
	jle	.label_2669
	mov	ebx, 0xffffffff
	jmp	.label_2662
	nop	dword ptr [rax]
.label_2669:
	mov	rbx, qword ptr [rax + rsi*8 + 0x18]
	cmp	rbx, rcx
	jge	.label_2670
	mov	ebx, 1
	jmp	.label_2662
	nop	word ptr cs:[rax + rax]
.label_2670:
	xor	r8d, r8d
	cmp	rbp, rcx
	sete	r8b
	xor	esi, esi
	cmp	rbx, rcx
	sete	sil
	add	esi, esi
	xor	ebx, ebx
	or	esi, r8d
	je	.label_2662
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
.label_2662:
	cmp	rbp, qword ptr [rsp]
	jg	.label_2659
	lea	rsi, [r11 + r11*4]
	mov	rax, qword ptr [rax + rsi*8 + 0x18]
	mov	r13d, 1
	cmp	rax, qword ptr [rsp]
	jl	.label_2659
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
	je	.label_2659
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r8, r12
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r13d, eax
	nop	word ptr cs:[rax + rax]
.label_2659:
	cmp	r13d, ebx
	mov	al, 1
	jne	.label_2664
	inc	r15
	cmp	r15, qword ptr [r9 + 8]
	jl	.label_2666
.label_2658:
	xor	eax, eax
.label_2664:
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
	.align	32
	#Procedure 0x419350

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
	jle	.label_2682
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
.label_2672:
	mov	rax, qword ptr [r11 + 8]
	mov	r14, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r10]
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_2685
	cmp	al, 8
	je	.label_2677
	cmp	al, 4
	jne	.label_2673
	cmp	r8, -1
	je	.label_2673
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x20]
	add	r13, qword ptr [rax + 0xd8]
	mov	r12d, ecx
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_2684:
	mov	ebp, 7
	cmp	qword ptr [r13], r14
	jne	.label_2676
	cmp	rdx, 0x3f
	jg	.label_2681
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x50], rax
	je	.label_2676
.label_2681:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r15
	jne	.label_2687
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_2675
	nop	dword ptr [rax + rax]
.label_2687:
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
	je	.label_2675
	test	eax, eax
	jne	.label_2679
	cmp	dword ptr [rsp + 0x10], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x14]
	je	.label_2680
	jmp	.label_2675
.label_2679:
	xor	ebp, ebp
	cmp	rdx, 0x3f
	jg	.label_2676
.label_2680:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x28]
	and	eax, ecx
	mov	word ptr [r13 + 0x22], ax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2676:
	mov	ecx, r12d
.label_2675:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_2683
	test	al, al
	jne	.label_2674
.label_2683:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_2684
	jmp	.label_2673
	nop	word ptr cs:[rax + rax]
.label_2685:
	cmp	dword ptr [rsp + 0x10], 0
	je	.label_2673
	xor	eax, eax
	jmp	.label_2678
	nop	dword ptr [rax + rax]
.label_2677:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_2673
	mov	eax, 0xffffffff
.label_2678:
	cmp	qword ptr [rdi], rdx
	jne	.label_2673
	jmp	.label_2686
.label_2674:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_2686
	nop	dword ptr [rax]
.label_2673:
	inc	rbx
	cmp	rbx, qword ptr [r11]
	jl	.label_2672
.label_2682:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_2686:
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
	.align	32
	#Procedure 0x4195b0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	xor	eax, eax
	cmp	rdi, rsi
	je	.label_2688
	nop	word ptr [rax + rax]
.label_2691:
	movzx	ecx, byte ptr [rdi]
	lea	edx, [rcx - 0x41]
	lea	eax, [rcx + 0x20]
	cmp	edx, 0x1a
	cmovae	eax, ecx
	movzx	edx, byte ptr [rsi]
	lea	r8d, [rdx - 0x41]
	lea	ecx, [rdx + 0x20]
	cmp	r8d, 0x1a
	cmovae	ecx, edx
	and	eax, 0xff
	je	.label_2689
	inc	rdi
	inc	rsi
	movzx	ecx, cl
	cmp	eax, ecx
	je	.label_2691
	jmp	.label_2690
.label_2689:
	movzx	ecx, cl
	xor	eax, eax
.label_2690:
	sub	eax, ecx
.label_2688:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x419600

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
	jne	.label_2693
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_2692
	test	cl, cl
	jne	.label_2692
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_2692
.label_2693:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_2692
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2692:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419660

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_2695
	cmp	byte ptr [rax], 0x43
	jne	.label_2697
	cmp	byte ptr [rax + 1], 0
	je	.label_2694
.label_2697:
	mov	esi, OFFSET FLAT:label_2696
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_2695
.label_2694:
	xor	ebx, ebx
.label_2695:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4196a0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_71
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_2698
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4196d0

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x14], 0
	jne	.label_2708
	cmp	byte ptr [rbx + 8], 0
	je	.label_2709
	lea	r13, [rbx + 0x18]
	mov	r15, qword ptr [rbx + 0x18]
	lea	r14, [rbx + 0xc]
.label_2714:
	lea	r12, [rbx + 0x2c]
	mov	rdx, qword ptr [rbx]
	sub	rdx, r15
	mov	rdi, r12
	mov	rsi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x20], rax
	cmp	rax, -2
	je	.label_2704
	test	rax, rax
	je	.label_2706
	cmp	rax, -1
	jne	.label_2707
	mov	qword ptr [rbx + 0x20], 1
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_2703
.label_2709:
	mov	r15, qword ptr [rbx + 0x18]
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_2710
	mov	qword ptr [rbx + 0x20], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x2c], eax
	mov	byte ptr [rbx + 0x28], 1
	jmp	.label_2703
.label_2704:
	mov	rax, qword ptr [rbx]
	sub	rax, qword ptr [r13]
	mov	qword ptr [rbx + 0x20], rax
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_2703
.label_2706:
	mov	qword ptr [rbx + 0x20], 1
	mov	rax, qword ptr [rbx + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_2711
	cmp	dword ptr [r12], 0
	jne	.label_2699
.label_2707:
	mov	byte ptr [rbx + 0x28], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_2703
	mov	byte ptr [rbx + 8], 0
.label_2703:
	mov	byte ptr [rbx + 0x14], 1
.label_2708:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_2710:
	lea	r14, [rbx + 0xc]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_2712
	mov	byte ptr [rbx + 8], 1
	lea	r13, [rbx + 0x18]
	jmp	.label_2714
.label_2711:
	mov	edi, OFFSET FLAT:label_2700
	mov	esi, OFFSET FLAT:label_2701
	mov	edx, 0xa9
	mov	ecx, OFFSET FLAT:label_2702
	call	__assert_fail
.label_2699:
	mov	edi, OFFSET FLAT:label_2705
	mov	esi, OFFSET FLAT:label_2701
	mov	edx, 0xaa
	mov	ecx, OFFSET FLAT:label_2702
	call	__assert_fail
.label_2712:
	mov	edi, OFFSET FLAT:label_2713
	mov	esi, OFFSET FLAT:label_2701
	mov	edx, 0x8e
	mov	ecx, OFFSET FLAT:label_2702
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419820
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	add	qword ptr [rdi + 0x18], rsi
	add	qword ptr [rdi], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419830
	.globl mbiter_multi_copy
	.type mbiter_multi_copy, @function
mbiter_multi_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r14], rax
	mov	al, byte ptr [rbx + 8]
	test	al, al
	mov	byte ptr [r14 + 8], al
	je	.label_2715
	mov	rax, qword ptr [rbx + 0xc]
	mov	qword ptr [r14 + 0xc], rax
	jmp	.label_2717
.label_2715:
	mov	qword ptr [r14 + 0xc], 0
.label_2717:
	mov	al, byte ptr [rbx + 0x14]
	mov	byte ptr [r14 + 0x14], al
	mov	rsi, qword ptr [rbx + 0x18]
	lea	rax, [rbx + 0x30]
	cmp	rsi, rax
	jne	.label_2718
	lea	r15, [r14 + 0x30]
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_2718:
	mov	qword ptr [r14 + 0x18], rsi
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [r14 + 0x20], rax
	mov	rax, qword ptr [rbx + 0x28]
	test	al, al
	mov	byte ptr [r14 + 0x28], al
	je	.label_2716
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x2c], eax
.label_2716:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4198b0

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x168
	mov	rbp, rsi
	mov	qword ptr [rsp], rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	mov	qword ptr [rsp + 8], rbp
	jb	.label_2749
	mov	qword ptr [rsp + 0xf8], rbp
	mov	byte ptr [rsp + 0xe8], 0
	mov	qword ptr [rsp + 0xec], 0
	mov	byte ptr [rsp + 0xf4], 0
	lea	rdi, [rsp + 0xe8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x108]
	test	al, al
	je	.label_2722
	shr	rax, 0x20
	jne	.label_2722
	mov	rax, qword ptr [rsp]
	jmp	.label_2727
.label_2749:
	mov	r12b, byte ptr [rbp]
	test	r12b, r12b
	mov	rdi, rbp
	je	.label_2752
	mov	rbp, qword ptr [rsp]
	mov	r15b, byte ptr [rbp]
	xor	eax, eax
	test	r15b, r15b
	je	.label_2727
	mov	r9b, 1
	xor	r8d, r8d
	mov	r10, rdi
	xor	r13d, r13d
	xor	r14d, r14d
.label_2736:
	cmp	r14, 0xa
	jb	.label_2737
	mov	eax, r9d
	and	al, 1
	je	.label_2737
	lea	rax, [r14 + r14*4]
	cmp	r13, rax
	jb	.label_2737
	test	r10, r10
	je	.label_2740
	mov	byte ptr [rsp], r12b
	mov	rsi, r13
	sub	rsi, r8
	mov	rbx, rbp
	mov	rdi, r10
	mov	rbp, r9
	mov	r12, r10
	call	strnlen
	mov	r10, r12
	mov	r9, rbp
	mov	r12b, byte ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbx
	cmp	byte ptr [r10 + rax], 0
	mov	r8, r13
	je	.label_2740
	add	r10, rax
	mov	r8, r13
	jne	.label_2737
.label_2740:
	mov	qword ptr [rsp], r13
	mov	r13, r8
	mov	rbx, rbp
	mov	rbp, rdi
	call	strlen
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	lea	rcx, [rsp + 0xe8]
	call	knuth_morris_pratt
	test	al, al
	jne	.label_2750
	mov	r15b, byte ptr [rbx]
	xor	r9d, r9d
	xor	r10d, r10d
	mov	rbp, rbx
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, r13
	mov	r13, qword ptr [rsp]
.label_2737:
	cmp	r15b, r12b
	jne	.label_2725
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_2732:
	movzx	edx, byte ptr [rdi + rcx]
	test	dl, dl
	je	.label_2728
	movzx	ebx, byte ptr [rbp + rcx]
	test	bl, bl
	mov	eax, 0
	je	.label_2727
	inc	rcx
	cmp	bl, dl
	je	.label_2732
	add	r13, rcx
	jmp	.label_2733
	nop	word ptr [rax + rax]
.label_2725:
	inc	r13
.label_2733:
	inc	r14
	mov	r15b, byte ptr [rbp + 1]
	inc	rbp
	test	r15b, r15b
	mov	eax, 0
	jne	.label_2736
	jmp	.label_2727
.label_2722:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x138], rax
	mov	byte ptr [rsp + 0x128], 0
	mov	qword ptr [rsp + 0x12c], 0
	mov	byte ptr [rsp + 0x134], 0
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x70], rax
	mov	byte ptr [rsp + 0x60], 0
	mov	qword ptr [rsp + 0x64], 0
	mov	byte ptr [rsp + 0x6c], 0
	lea	rdi, [rsp + 0x60]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x80]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	test	al, al
	je	.label_2746
	shr	rax, 0x20
	je	.label_2719
.label_2746:
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	lea	r12, [rsp + 0x60]
	lea	rbx, [rsp + 0x128]
	xor	ebp, ebp
	xor	r14d, r14d
	xor	r13d, r13d
.label_2723:
	mov	r15, r14
	cmp	r13, 0xa
	jb	.label_2724
	mov	eax, dword ptr [rsp + 0x14]
	and	al, 1
	je	.label_2724
	lea	rax, [r13 + r13*4]
	cmp	r15, rax
	jb	.label_2724
	cmp	r15, rbp
	je	.label_2729
	sub	rbp, r15
	nop	dword ptr [rax]
.label_2734:
	mov	rdi, rbx
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x148]
	test	al, al
	je	.label_2731
	shr	rax, 0x20
	je	.label_2729
.label_2731:
	mov	rax, qword ptr [rsp + 0x140]
	add	qword ptr [rsp + 0x138], rax
	mov	byte ptr [rsp + 0x134], 0
	inc	rbp
	jne	.label_2734
.label_2729:
	mov	rdi, rbx
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x148]
	test	al, al
	je	.label_2739
	shr	rax, 0x20
	mov	rbp, r15
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_2724
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdx, [rsp + 0xa0]
	call	knuth_morris_pratt_multibyte
	test	al, al
	jne	.label_2747
	mov	dword ptr [rsp + 0x14], 0
.label_2739:
	mov	rbp, r15
.label_2724:
	lea	r14, [r15 + 1]
	mov	rax, qword ptr [rsp + 0x80]
	test	al, al
	je	.label_2742
	mov	rcx, qword ptr [rsp + 0x108]
	test	cl, cl
	je	.label_2742
	shr	rcx, 0x20
	shr	rax, 0x20
	cmp	eax, ecx
	je	.label_2730
	jmp	.label_2720
.label_2742:
	mov	rdx, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsp + 0x100]
	jne	.label_2720
	mov	rdi, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0xf8]
	call	memcmp
	test	eax, eax
	jne	.label_2720
.label_2730:
	mov	qword ptr [rsp + 0xe0], r13
	movups	xmm0, xmmword ptr [rsp + 0x60]
	movups	xmm1, xmmword ptr [rsp + 0x70]
	movups	xmm2, xmmword ptr [rsp + 0x80]
	movups	xmm3, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0xd0], xmm3
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	mov	rax, qword ptr [rsp + 0xb8]
	add	qword ptr [rsp + 0xb0], rax
	mov	byte ptr [rsp + 0xac], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x24], 0
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_2741
	shr	rax, 0x20
	je	.label_2743
.label_2741:
	mov	rax, qword ptr [rsp + 0x38]
	add	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_2745
	shr	rax, 0x20
	je	.label_2748
.label_2745:
	add	r15, 2
	mov	r14, r15
	nop	word ptr cs:[rax + rax]
.label_2744:
	lea	rdi, [rsp + 0xa0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	je	.label_2751
	test	eax, eax
	je	.label_2719
.label_2751:
	test	cl, cl
	sete	dl
	mov	rcx, qword ptr [rsp + 0x40]
	test	cl, cl
	je	.label_2721
	test	dl, dl
	jne	.label_2721
	shr	rcx, 0x20
	cmp	eax, ecx
	jne	.label_2726
	mov	r15, qword ptr [rsp + 0xb0]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	r12, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_2738
	nop	word ptr cs:[rax + rax]
.label_2721:
	mov	r13, qword ptr [rsp + 0xb8]
	cmp	r13, qword ptr [rsp + 0x38]
	jne	.label_2726
	mov	r15, qword ptr [rsp + 0xb0]
	mov	r12, qword ptr [rsp + 0x30]
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	mov	rax, r13
	jne	.label_2726
.label_2738:
	add	r15, rax
	mov	qword ptr [rsp + 0xb0], r15
	mov	byte ptr [rsp + 0xac], 0
	add	r12, r13
	mov	qword ptr [rsp + 0x30], r12
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	inc	r14
	test	al, al
	je	.label_2744
	shr	rax, 0x20
	jne	.label_2744
	jmp	.label_2748
.label_2726:
	lea	r12, [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0xe0]
	nop	word ptr cs:[rax + rax]
.label_2720:
	inc	r13
	mov	rax, qword ptr [rsp + 0x78]
	add	qword ptr [rsp + 0x70], rax
	mov	byte ptr [rsp + 0x6c], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x80]
	test	al, al
	je	.label_2723
	shr	rax, 0x20
	jne	.label_2723
	jmp	.label_2719
.label_2752:
	mov	rax, qword ptr [rsp]
	jmp	.label_2727
.label_2728:
	mov	rax, rbp
	jmp	.label_2727
.label_2748:
	mov	rax, qword ptr [rsp + 0x70]
.label_2735:
	mov	qword ptr [rsp + 0x18], rax
.label_2719:
	mov	rax, qword ptr [rsp + 0x18]
.label_2727:
	add	rsp, 0x168
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2750:
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_2727
.label_2747:
	mov	rax, qword ptr [rsp + 0xa0]
	jmp	.label_2735
.label_2743:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419e60

	.globl knuth_morris_pratt_multibyte
	.type knuth_morris_pratt_multibyte, @function
knuth_morris_pratt_multibyte:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15, rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	rdi, r14
	call	mbslen
	mov	rbx, rax
	movabs	rax, 0x249249249249249
	cmp	rbx, rax
	ja	.label_2754
	imul	rdi, rbx, 0x38
	cmp	rdi, 0xfa0
	ja	.label_2763
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	r13, [rax + rdi + 0x1f]
	and	r13, 0xffffffffffffffe0
	jmp	.label_2769
.label_2763:
	call	mmalloca
	mov	r13, rax
.label_2769:
	test	r13, r13
	je	.label_2754
	mov	qword ptr [rbp - 0xc8], r12
	mov	qword ptr [rbp - 0x30], rbx
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x68], r14
	mov	byte ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x74], 0
	mov	byte ptr [rbp - 0x6c], 0
	lea	rdi, [rbp - 0x78]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_2758
	shr	rax, 0x20
	je	.label_2761
.label_2758:
	lea	rbx, [rbp - 0x50]
	lea	r14, [r13 + 0x18]
	lea	r12, [rbp - 0x78]
	nop	dword ptr [rax]
.label_2756:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, rbx
	jne	.label_2771
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	rax, r14
.label_2771:
	mov	qword ptr [r14 - 0x18], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [r14 - 0x10], rax
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	mov	byte ptr [r14 - 8], al
	je	.label_2778
	shr	rax, 0x20
	mov	dword ptr [r14 - 4], eax
.label_2778:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	add	r14, 0x30
	test	al, al
	je	.label_2756
	shr	rax, 0x20
	jne	.label_2756
.label_2761:
	mov	qword ptr [rbp - 0x80], r15
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [r13 + rax]
	mov	qword ptr [r13 + rax + 8], 1
	cmp	qword ptr [rbp - 0x30], 3
	mov	qword ptr [rbp - 0x38], rsi
	jb	.label_2760
	mov	r14d, 2
	xor	ebx, ebx
	nop	
.label_2770:
	lea	rax, [r14 + r14*2]
	shl	rax, 4
	lea	r12, [r13 + rax - 0x30]
	mov	r15b, byte ptr [r13 + rax - 0x20]
	jmp	.label_2777
	nop	word ptr cs:[rax + rax]
.label_2774:
	sub	rbx, qword ptr [rsi + rbx*8]
.label_2777:
	test	r15b, r15b
	je	.label_2782
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	byte ptr [r13 + rax + 0x10], 0
	je	.label_2782
	mov	ecx, dword ptr [r12 + 0x14]
	cmp	ecx, dword ptr [r13 + rax + 0x14]
	jne	.label_2759
	jmp	.label_2764
	nop	word ptr [rax + rax]
.label_2782:
	mov	rdx, qword ptr [r12 + 8]
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	rdx, qword ptr [r13 + rax + 8]
	jne	.label_2759
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r13 + rax]
	call	memcmp
	mov	rsi, qword ptr [rbp - 0x38]
	test	eax, eax
	je	.label_2764
.label_2759:
	test	rbx, rbx
	jne	.label_2774
	mov	qword ptr [rsi + r14*8], r14
	xor	ebx, ebx
	jmp	.label_2776
	nop	word ptr [rax + rax]
.label_2764:
	inc	rbx
	mov	rax, r14
	sub	rax, rbx
	mov	qword ptr [rsi + r14*8], rax
.label_2776:
	inc	r14
	cmp	r14, qword ptr [rbp - 0x30]
	jne	.label_2770
.label_2760:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x74], 0
	mov	byte ptr [rbp - 0x6c], 0
	mov	qword ptr [rbp - 0xb0], rax
	mov	byte ptr [rbp - 0xc0], 0
	mov	qword ptr [rbp - 0xbc], 0
	mov	byte ptr [rbp - 0xb4], 0
	lea	rdi, [rbp - 0xc0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	mov	rbx, qword ptr [rbp - 0x30]
	je	.label_2775
	test	eax, eax
	je	.label_2773
.label_2775:
	xor	r15d, r15d
.label_2762:
	lea	rdx, [r15 + r15*2]
	shl	rdx, 4
	cmp	byte ptr [r13 + rdx + 0x10], 0
	je	.label_2781
	xor	cl, 1
	test	cl, 1
	jne	.label_2781
	cmp	dword ptr [r13 + rdx + 0x14], eax
	jne	.label_2765
	mov	r12, qword ptr [rbp - 0xb0]
	mov	r14, qword ptr [rbp - 0xa8]
	jmp	.label_2768
	nop	word ptr cs:[rax + rax]
.label_2781:
	mov	r14, qword ptr [r13 + rdx + 8]
	cmp	r14, qword ptr [rbp - 0xa8]
	jne	.label_2765
	mov	rdi, qword ptr [r13 + rdx]
	mov	r12, qword ptr [rbp - 0xb0]
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_2768
.label_2765:
	test	r15, r15
	je	.label_2772
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rax + r15*8]
	sub	r15, rbx
	test	rbx, rbx
	lea	r14, [rbp - 0x78]
	je	.label_2783
	nop	word ptr cs:[rax + rax]
.label_2755:
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_2757
	shr	rax, 0x20
	je	.label_2753
.label_2757:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	dec	rbx
	jne	.label_2755
.label_2783:
	mov	rbx, qword ptr [rbp - 0x30]
	jmp	.label_2766
	nop	word ptr cs:[rax + rax]
.label_2768:
	inc	r15
	add	r12, r14
	mov	qword ptr [rbp - 0xb0], r12
	mov	byte ptr [rbp - 0xb4], 0
	cmp	r15, rbx
	jne	.label_2766
	jmp	.label_2767
	nop	dword ptr [rax + rax]
.label_2772:
	lea	rdi, [rbp - 0x78]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_2780
	shr	rax, 0x20
	je	.label_2753
.label_2780:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	mov	rax, qword ptr [rbp - 0xa8]
	add	qword ptr [rbp - 0xb0], rax
	mov	byte ptr [rbp - 0xb4], 0
	xor	r15d, r15d
.label_2766:
	lea	rdi, [rbp - 0xc0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_2762
	test	eax, eax
	jne	.label_2762
	jmp	.label_2773
.label_2754:
	xor	eax, eax
	jmp	.label_2779
.label_2767:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx], rax
.label_2773:
	mov	rdi, r13
	call	freea
	mov	al, 1
.label_2779:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2753:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a270

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r12, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, r12
	shr	rax, 0x3c
	je	.label_2793
	xor	eax, eax
	jmp	.label_2786
.label_2793:
	lea	rdi, [r12*8]
	cmp	rdi, 0xfa0
	ja	.label_2788
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	rdi, [rax + rdi + 0x1f]
	and	rdi, 0xffffffffffffffe0
	jmp	.label_2794
.label_2788:
	call	mmalloca
	mov	rdi, rax
.label_2794:
	test	rdi, rdi
	je	.label_2790
	mov	qword ptr [rdi + 8], 1
	cmp	r12, 3
	jb	.label_2792
	mov	eax, 2
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_2795:
	mov	dl, byte ptr [rbx + rax - 1]
	jmp	.label_2799
	nop	word ptr cs:[rax + rax]
.label_2787:
	sub	rcx, qword ptr [rdi + rcx*8]
.label_2799:
	cmp	dl, byte ptr [rbx + rcx]
	je	.label_2785
	test	rcx, rcx
	jne	.label_2787
	mov	qword ptr [rdi + rax*8], rax
	xor	ecx, ecx
	jmp	.label_2789
	nop	word ptr cs:[rax + rax]
.label_2785:
	inc	rcx
	mov	rdx, rax
	sub	rdx, rcx
	mov	qword ptr [rdi + rax*8], rdx
.label_2789:
	inc	rax
	cmp	rax, r12
	jne	.label_2795
.label_2792:
	mov	qword ptr [r14], 0
	neg	r12
	xor	r8d, r8d
	mov	r9, r15
	jmp	.label_2791
.label_2790:
	xor	eax, eax
	jmp	.label_2786
.label_2784:
	add	r9, rdx
	lea	rax, [rdi + r8*8]
	mov	rax, qword ptr [rax + rdx*8]
	add	r15, rax
	sub	r8, rax
	add	r8, rdx
.label_2791:
	lea	rsi, [r12 + r8]
	lea	rcx, [rbx + r8]
	xor	edx, edx
	nop	dword ptr [rax]
.label_2800:
	movzx	eax, byte ptr [r9 + rdx]
	test	al, al
	je	.label_2796
	cmp	byte ptr [rcx + rdx], al
	jne	.label_2798
	inc	rdx
	mov	rax, rsi
	add	rax, rdx
	jne	.label_2800
	jmp	.label_2797
.label_2798:
	mov	rax, r8
	add	rax, rdx
	jne	.label_2784
	inc	r15
	lea	r9, [r9 + rdx + 1]
	xor	r8d, r8d
	jmp	.label_2791
.label_2797:
	mov	qword ptr [r14], r15
.label_2796:
	call	freea
	mov	al, 1
.label_2786:
	lea	rsp, [rbp - 0x20]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a3c0

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	jne	.label_2801
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_2806
	lea	r14, [rbx + 4]
.label_2812:
	lea	r12, [rbx + 0x24]
	call	__ctype_get_mb_cur_max
	mov	rdi, r15
	mov	rsi, rax
	call	strnlen1
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x18], rax
	cmp	rax, -2
	je	.label_2804
	test	rax, rax
	je	.label_2805
	cmp	rax, -1
	jne	.label_2803
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_2802
.label_2806:
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_2808
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_2802
.label_2804:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_2802
.label_2805:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_2807
	cmp	dword ptr [r12], 0
	jne	.label_2813
.label_2803:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_2802
	mov	byte ptr [rbx], 0
.label_2802:
	mov	byte ptr [rbx + 0xc], 1
.label_2801:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_2808:
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_2811
	mov	byte ptr [rbx], 1
	jmp	.label_2812
.label_2807:
	mov	edi, OFFSET FLAT:label_2700
	mov	esi, OFFSET FLAT:label_2809
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:label_2810
	call	__assert_fail
.label_2813:
	mov	edi, OFFSET FLAT:label_2705
	mov	esi, OFFSET FLAT:label_2809
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_2810
	call	__assert_fail
.label_2811:
	mov	edi, OFFSET FLAT:label_2713
	mov	esi, OFFSET FLAT:label_2809
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:label_2810
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a510
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a520
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	al, byte ptr [rbx]
	test	al, al
	mov	byte ptr [r14], al
	je	.label_2814
	mov	rax, qword ptr [rbx + 4]
	mov	qword ptr [r14 + 4], rax
	jmp	.label_2815
.label_2814:
	mov	qword ptr [r14 + 4], 0
.label_2815:
	mov	al, byte ptr [rbx + 0xc]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	cmp	rsi, rax
	jne	.label_2816
	lea	r15, [r14 + 0x28]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_2816:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rax, qword ptr [rbx + 0x18]
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	mov	byte ptr [r14 + 0x20], al
	je	.label_2817
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_2817:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a5a0

	.globl mem_cd_iconv
	.type mem_cd_iconv, @function
mem_cd_iconv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1048
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x40], rcx
	mov	rax, rdx
	mov	rbp, rsi
	mov	r14, rdi
	xor	ebx, ebx
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rax
	call	iconv
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 0x20], r14
	mov	qword ptr [rsp + 0x18], rbp
	mov	qword ptr [rsp + 0x38], rbp
	test	rbp, rbp
	je	.label_2831
	xor	ebx, ebx
	lea	r12, [rsp + 0x48]
	lea	rbp, [rsp + 0x18]
	lea	r15, [rsp]
	lea	r13, [rsp + 0x30]
	nop	
.label_2838:
	mov	qword ptr [rsp], r12
	mov	qword ptr [rsp + 0x30], 0x1000
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsp + 0x20]
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r13
	call	iconv
	cmp	rax, -1
	jne	.label_2818
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 7
	je	.label_2818
	mov	r14d, 3
	cmp	eax, 0x16
	je	.label_2828
	mov	r14d, 1
	jmp	.label_2828
	nop	word ptr [rax + rax]
.label_2818:
	sub	rbx, r12
	add	rbx, qword ptr [rsp]
	xor	r14d, r14d
.label_2828:
	mov	eax, r14d
	and	al, 3
	jne	.label_2836
	cmp	qword ptr [rsp + 0x18], 0
	jne	.label_2838
	jmp	.label_2831
.label_2836:
	cmp	al, 3
	jne	.label_2825
.label_2831:
	lea	rbp, [rsp + 0x48]
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x30], 0x1000
	xor	r14d, r14d
	lea	rcx, [rsp]
	lea	r8, [rsp + 0x30]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	je	.label_2827
	sub	rbx, rbp
	add	rbx, qword ptr [rsp]
	jmp	.label_2825
.label_2827:
	mov	r14d, 1
.label_2825:
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_2822
	test	rbx, rbx
	je	.label_2829
	mov	r12, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [r12]
	test	r14, r14
	je	.label_2830
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax], rbx
	jae	.label_2834
.label_2830:
	mov	rdi, rbx
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_2839
.label_2834:
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	call	iconv
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp], rbx
	test	rax, rax
	je	.label_2820
	lea	r13, [rsp + 0x48]
	lea	rbp, [rsp + 0x20]
	lea	r15, [rsp + 0x18]
	lea	r14, [rsp]
.label_2819:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r14
	call	iconv
	cmp	rax, -1
	je	.label_2835
	xor	eax, eax
	jmp	.label_2837
.label_2835:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	setne	al
	add	al, 5
.label_2837:
	and	al, 7
	jne	.label_2840
	cmp	qword ptr [rsp + 0x20], 0
	jne	.label_2819
	jmp	.label_2820
.label_2829:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], 0
	jmp	.label_2821
.label_2839:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_2822
.label_2840:
	cmp	al, 5
	jne	.label_2823
.label_2820:
	lea	rcx, [rsp + 0x18]
	lea	r8, [rsp]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	je	.label_2826
	cmp	qword ptr [rsp], 0
	mov	rax, qword ptr [rsp + 8]
	jne	.label_2824
	mov	qword ptr [r12], rax
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], rbx
.label_2821:
	xor	ebp, ebp
	jmp	.label_2822
.label_2826:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_2833
.label_2823:
	cmp	al, 6
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_2832
.label_2833:
	cmp	rbp, qword ptr [r12]
	je	.label_2832
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_2832:
	mov	ebp, 0xffffffff
.label_2822:
	mov	eax, ebp
	add	rsp, 0x1048
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2824:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a830

	.globl str_cd_iconv
	.type str_cd_iconv, @function
str_cd_iconv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], rdi
	call	strlen
	mov	qword ptr [rsp + 0x18], rax
	mov	rbx, rax
	shl	rbx, 4
	cmp	rax, 0x10000000
	cmovae	rbx, rax
	lea	rbp, [rbx + 1]
	mov	rdi, rbp
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_2844
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, r14
	call	iconv
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp + 0x10], rbx
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_2853
	mov	rbx, rbp
	mov	r13, r12
.label_2842:
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_2845
	mov	rbp, rbx
	mov	r12, r13
.label_2851:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rsp + 8]
	sub	rsi, r12
	cmp	rsi, rbp
	jae	.label_2850
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
	jmp	.label_2850
.label_2844:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_2848
.label_2853:
	call	__errno_location
	mov	r15, rax
.label_2854:
	mov	eax, dword ptr [r15]
	cmp	eax, 7
	jne	.label_2852
	lea	rbx, [rbp + rbp]
	cmp	rbx, rbp
	jbe	.label_2847
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_2847
	sub	rbp, r12
	mov	rax, r13
	add	rax, rbp
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rbx - 1]
	sub	rax, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r14
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	mov	r12, r13
	mov	rbp, rbx
	je	.label_2854
	jmp	.label_2842
.label_2845:
	call	__errno_location
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_2846:
	cmp	dword ptr [r15], 7
	jne	.label_2841
	lea	rbp, [rbx + rbx]
	cmp	rbp, rbx
	jbe	.label_2843
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, r13
	mov	rsi, rbp
	call	realloc
	mov	r12, rax
	test	r12, r12
	je	.label_2843
	sub	rbx, r13
	mov	rax, r12
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rbp - 1]
	sub	rax, rbx
	mov	qword ptr [rsp + 0x10], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	mov	r13, r12
	mov	rbx, rbp
	je	.label_2846
	jmp	.label_2851
.label_2847:
	mov	dword ptr [r15], 0xc
	jmp	.label_2849
.label_2843:
	mov	dword ptr [r15], 0xc
.label_2841:
	mov	r12, r13
.label_2849:
	mov	ebx, dword ptr [r15]
	mov	rdi, r12
	call	free
	mov	dword ptr [r15], ebx
.label_2848:
	xor	r12d, r12d
.label_2850:
	mov	rax, r12
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2852:
	cmp	eax, 0x16
	mov	rbx, rbp
	mov	r13, r12
	je	.label_2842
	jmp	.label_2849
	nop	
	.section	.text
	.align	32
	#Procedure 0x41aa70

	.globl str_iconv
	.type str_iconv, @function
str_iconv:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0
	je	.label_2855
	mov	rdi, r14
	mov	rsi, r15
	call	c_strcasecmp
	test	eax, eax
	je	.label_2855
	mov	rdi, r15
	mov	rsi, r14
	call	iconv_open
	mov	r15, rax
	xor	r14d, r14d
	cmp	r15, -1
	je	.label_2857
	mov	rdi, rbx
	mov	rsi, r15
	call	str_cd_iconv
	mov	r14, rax
	test	r14, r14
	je	.label_2859
	mov	rdi, r15
	call	iconv_close
	test	eax, eax
	jns	.label_2857
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	jmp	.label_2856
.label_2855:
	mov	rdi, rbx
	call	__strdup
	mov	r14, rax
	test	r14, r14
	jne	.label_2857
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_2858
.label_2859:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	iconv_close
.label_2856:
	mov	dword ptr [rbx], ebp
.label_2858:
	xor	r14d, r14d
.label_2857:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ab20

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rdx, r14
	call	memchr
	mov	ecx, 1
	sub	rcx, rbx
	add	rcx, rax
	test	rax, rax
	cmove	rcx, r14
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ab60

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ab80

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	xor	eax, eax
	cmp	rdi, -0x21
	ja	.label_2860
	push	rax
	add	rdi, 0x20
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	lea	rsp, [rsp + 8]
	je	.label_2860
	mov	rdx, rcx
	add	rdx, 0x10
	and	rdx, 0xffffffffffffffe0
	lea	rax, [rdx + 0x10]
	mov	esi, eax
	sub	esi, ecx
	mov	byte ptr [rdx + 0xf], sil
.label_2860:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41abc0

	.globl freea
	.type freea, @function
freea:
	test	dil, 0xf
	jne	.label_2861
	test	dil, 0x10
	jne	.label_2862
	ret	
.label_2862:
	movzx	eax, byte ptr [rdi - 1]
	sub	rdi, rax
	jmp	free
.label_2861:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x41abe0
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_2863
	mov	edi, ebx
	call	iswcntrl
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	sete	al
.label_2863:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41ac00
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	cmp	rsi, rax
	jne	.label_2864
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_2864:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_2865
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_2865:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41ac50
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax, dword ptr [rax + is_basic_table]
	bt	eax, edi
	setb	al
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x41ac70

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_2869
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	test	al, al
	je	.label_2868
	shr	rax, 0x20
	je	.label_2866
.label_2868:
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_2867:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_2867
	shr	rax, 0x20
	jne	.label_2867
.label_2866:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_2869:
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	jmp	strlen
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
