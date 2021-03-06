	.section	.text
	.align	32
	#Procedure 0x401d00

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	lea	rsi, [rsi]
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.25
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_8
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.37
	nop	
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	nop	
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
.label_8:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.39
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.18
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10
	nop	
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.40
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.41
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rbp, rbp
	mov	edi, ebp
	nop	
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402050

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	rbx, rsi
	mov	ebp, edi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.13
	nop	
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	call	textdomain
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:close_stdout
	mov	rbp, rbp
	call	atexit
	lea	r14, [rsp + 0x50]
	jmp	.label_65
.label_127:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.17_0
	nop	
	mov	edx, OFFSET FLAT:format_args
	mov	ecx, OFFSET FLAT:format_vals
	mov	r8d, 4
	mov	rbp, rbp
	call	__xargmatch_internal
	nop	
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + format_vals]]
	nop	
	mov	dword ptr [dword ptr [rip + output_format]],  eax
	nop	word ptr cs:[rax + rax]
.label_65:
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rbp, rbp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x45
	jg	.label_274
	cmp	eax, 9
	nop	
	jle	.label_123
	cmp	eax, 0xa
	lea	rdi, [rdi]
	je	.label_127
	cmp	eax, 0x41
	jne	.label_130
	mov	byte ptr [byte ptr [rip + auto_reference]],  1
	lea	rdi, [rdi]
	jmp	.label_65
	nop	dword ptr [rax]
.label_274:
	lea	ecx, [rax - 0x46]
	cmp	ecx, 0x11
	nop	
	jbe	.label_213
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x62]
	mov	rbp, rbp
	cmp	ecx, 7
	mov	rsp, rsp
	jbe	.label_144
	add	eax, -0x6f
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_130
	jmp	qword ptr [word ptr [+ (rax * 8) + label_154]]
.label_2783:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + only_file]],  rax
	jmp	.label_65
	nop	dword ptr [rax]
.label_213:
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_176]]
.label_2972:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [rip + truncation_string]],  rax
	jmp	.label_65
.label_144:
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_181]]
.label_2981:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + break_file]],  rax
	lea	rsi, [rsi]
	jmp	.label_65
.label_2973:
	nop	
	mov	byte ptr [byte ptr [rip + gnu_extensions]],  1
	lea	rsi, [rsi]
	jmp	.label_65
.label_2974:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + macro_name]],  rax
	jmp	.label_65
.label_2975:
	nop	
	mov	dword ptr [dword ptr [rip + output_format]],  2
	nop	
	jmp	.label_65
.label_2976:
	nop	
	mov	byte ptr [byte ptr [rip + right_reference]],  1
	jmp	.label_65
.label_2977:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	call	copy_unescaped_string
	mov	qword ptr [word ptr [rip + context_regex]],  rax
	mov	rsp, rsp
	jmp	.label_65
.label_2978:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + output_format]],  3
	nop	
	jmp	.label_65
.label_2979:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [rip + word_regex]],  rax
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_232
	xor	eax, eax
.label_232:
	mov	qword ptr [word ptr [rip + word_regex]],  rax
	jmp	.label_65
.label_2982:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + ignore_case]],  1
	jmp	.label_65
.label_2983:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	edx, edx
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	rcx, r14
	call	xstrtoimax
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_273
	mov	rax, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	test	rax, rax
	jle	.label_273
	mov	qword ptr [word ptr [rip + gap_size]],  rax
	jmp	.label_65
.label_2984:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + ignore_file]],  rax
	jmp	.label_65
.label_2784:
	mov	byte ptr [byte ptr [rip + input_reference]],  1
	jmp	.label_65
.label_2785:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rcx, r14
	call	xstrtoimax
	test	eax, eax
	nop	
	jne	.label_305
	mov	rax, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	test	rax, rax
	nop	
	jle	.label_305
	mov	qword ptr [word ptr [rip + line_width]],  rax
	lea	rsi, [rsi]
	jmp	.label_65
.label_123:
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_313
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	mov	rbp, rbp
	jne	.label_38
	mov	rbp, rbp
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [word ptr [rip + input_file_name]],  rax
	mov	edi, 8
	nop	
	call	xmalloc
	mov	qword ptr [word ptr [rip + file_line_count]],  rax
	mov	edi, 0x10
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + text_buffers]],  rax
	mov	dword ptr [dword ptr [rip + number_input_files]],  1
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	rsp, rsp
	mov	qword ptr [rax], 0
	nop	
	jmp	.label_98
.label_38:
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [rip + gnu_extensions]]
	lea	rsi, [rsi]
	and	cl, 1
	je	.label_339
	mov	dword ptr [dword ptr [rip + number_input_files]],  1
	mov	edi, 8
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [word ptr [rip + input_file_name]],  rax
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [word ptr [rip + file_line_count]],  rax
	mov	edi, 0x10
	mov	rsp, rsp
	call	xmalloc
	mov	qword ptr [word ptr [rip + text_buffers]],  rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + rax*8]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx]
	mov	rsp, rsp
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_22
	movzx	edx, dl
	cmp	edx, 0x2d
	jne	.label_39
	mov	rsp, rsp
	cmp	byte ptr [rcx + 1], 0
	je	.label_22
.label_39:
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + input_file_name]]
	nop	
	mov	qword ptr [rdx], rcx
	nop	
	jmp	.label_49
.label_339:
	mov	rbp, rbp
	sub	ebp, eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + number_input_files]],  ebp
	js	.label_60
	lea	rdi, [rdi]
	movsxd	rdi, ebp
	mov	rsp, rsp
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [word ptr [rip + input_file_name]],  rax
	movsxd	rdi,  dword ptr [dword ptr [rip + number_input_files]]
	mov	rsp, rsp
	test	rdi, rdi
	nop	
	js	.label_60
	mov	rsp, rsp
	shl	rdi, 3
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [word ptr [rip + file_line_count]],  rax
	lea	rsi, [rsi]
	movsxd	rdi,  dword ptr [dword ptr [rip + number_input_files]]
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	js	.label_60
	lea	rdi, [rdi]
	shl	rdi, 4
	call	xmalloc
	mov	qword ptr [word ptr [rip + text_buffers]],  rax
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + number_input_files]]
	mov	rbp, rbp
	test	rax, rax
	jle	.label_98
	mov	rcx,  qword ptr [word ptr [rip + input_file_name]]
	nop	
	movsxd	rsi,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	lea	edx, [rsi + 1]
	lea	rsi, [rsi]
	lea	rsi, [rbx + rsi*8]
	lea	rsi, [rsi]
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_150:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsi + rdi*8]
	mov	bl, byte ptr [rbp]
	test	bl, bl
	je	.label_89
	lea	rdi, [rdi]
	movzx	ebx, bl
	cmp	ebx, 0x2d
	jne	.label_133
	mov	rbp, rbp
	cmp	byte ptr [rbp + 1], 0
	je	.label_89
.label_133:
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rdi*8], rbp
	lea	rdi, [rdi]
	jmp	.label_140
	nop	
.label_89:
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rdi*8], 0
.label_140:
	lea	ebp, [rdx + rdi]
	mov	dword ptr [dword ptr [rip + optind]],  ebp
	inc	rdi
	cmp	rdi, rax
	nop	
	jl	.label_150
	nop	
	jmp	.label_98
.label_22:
	mov	rcx,  qword ptr [word ptr [rip + input_file_name]]
	mov	qword ptr [rcx], 0
.label_49:
	lea	rdi, [rdi]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rsp, rsp
	cmp	ecx, ebp
	mov	rbp, rbp
	jge	.label_158
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	nop	
	mov	rdx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, OFFSET FLAT:.str.22
	mov	rsp, rsp
	call	freopen_safer
	nop	
	test	rax, rax
	je	.label_175
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	inc	ecx
	mov	dword ptr [dword ptr [rip + optind]],  ecx
.label_158:
	mov	rsp, rsp
	cmp	ecx, ebp
	nop	
	jl	.label_302
.label_98:
	cmp	dword ptr [dword ptr [rip + output_format]],  0
	nop	
	jne	.label_187
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + gnu_extensions]]
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	inc	eax
	mov	dword ptr [dword ptr [rip + output_format]],  eax
.label_187:
	movzx	eax,  byte ptr [byte ptr [rip + ignore_case]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_199
	lea	rsi, [rsi]
	xor	ebx, ebx
	call	__ctype_toupper_loc
	nop	dword ptr [rax]
.label_211:
	mov	rcx, qword ptr [rax]
	mov	rsp, rsp
	mov	cl, byte ptr [rcx + rbx*4]
	mov	byte ptr [byte ptr [rbx + folded_chars]],  cl
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	mov	cl, byte ptr [rcx + rbx*4 + 4]
	mov	byte ptr [byte ptr [rbx + label_208]],  cl
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rcx + rbx*4 + 8]
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rbx + label_209]],  cl
	nop	
	mov	rcx, qword ptr [rax]
	mov	cl, byte ptr [rcx + rbx*4 + 0xc]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rbx + label_210]],  cl
	lea	rsi, [rsi]
	add	rbx, 4
	mov	rbp, rbp
	cmp	rbx, 0x100
	lea	rdi, [rdi]
	jne	.label_211
.label_199:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + context_regex]]
	test	rax, rax
	je	.label_258
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	jne	.label_263
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + context_regex]],  0
	jmp	.label_267
.label_258:
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	al, 1
	nop	
	jne	.label_271
	nop	
	mov	al,  byte ptr [byte ptr [rip + input_reference]]
	and	al, 1
	lea	rdi, [rdi]
	je	.label_276
.label_271:
	nop	
	mov	qword ptr [word ptr [rip + context_regex]], OFFSET FLAT:.str.65
	jmp	.label_263
.label_276:
	mov	qword ptr [word ptr [rip + context_regex]], OFFSET FLAT:.str.64
.label_263:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:context_regex
	call	compile_regex
.label_267:
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_292
	mov	edi, OFFSET FLAT:word_regex
	call	compile_regex
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + break_file]]
	lea	rsi, [rsi]
	test	rdi, rdi
	jne	.label_298
	jmp	.label_101
.label_292:
	mov	rdi,  qword ptr [word ptr [rip + break_file]]
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_303
.label_298:
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x50]
	call	swallow_file_in_memory
	mov	edi, OFFSET FLAT:word_fastmap
	mov	esi, 1
	mov	rsp, rsp
	mov	edx, 0x100
	call	memset
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	cmp	rdi, rax
	jae	.label_72
	nop	
	mov	rcx, rdi
	nop	dword ptr [rax]
.label_322:
	mov	rbp, rbp
	movzx	edx, byte ptr [rcx]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rdx + word_fastmap]],  0
	lea	rsi, [rsi]
	inc	rcx
	nop	
	cmp	rax, rcx
	jne	.label_322
.label_72:
	movzx	eax,  byte ptr [byte ptr [rip + gnu_extensions]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_326
	mov	byte ptr [byte ptr [rip + label_99]],  0
	mov	word ptr [word ptr [rip + label_100]],  0
.label_326:
	call	free
.label_101:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + ignore_file]]
	test	rdi, rdi
	je	.label_304
	mov	esi, OFFSET FLAT:ignore_table
	call	digest_word_file
	cmp	qword ptr [word ptr [rip + label_80]],  0
	nop	
	jne	.label_304
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + ignore_file]],  0
.label_304:
	mov	rdi,  qword ptr [word ptr [rip + only_file]]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_17
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:only_table
	call	digest_word_file
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + label_16]],  0
	nop	
	jne	.label_17
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + only_file]],  0
.label_17:
	nop	
	mov	qword ptr [word ptr [rip + number_of_occurs.0]],  0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + total_line_count]],  0
	mov	qword ptr [word ptr [rip + maximum_word_length]],  0
	mov	qword ptr [word ptr [rip + reference_max_width]],  0
	xor	edx, edx
	cmp	dword ptr [dword ptr [rip + number_input_files]],  0
	lea	rdi, [rdi]
	jle	.label_30
	nop	
.label_286:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rdx
	mov	rbp, rbp
	mov	r15, rdx
	shl	r15, 4
	mov	rsi,  qword ptr [word ptr [rip + text_buffers]]
	nop	
	add	rsi, r15
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	rdi, qword ptr [rax + rdx*8]
	lea	rdi, [rdi]
	call	swallow_file_in_memory
	lea	rsi, [rsi]
	mov	r14,  qword ptr [word ptr [rip + text_buffers]]
	mov	r12, qword ptr [r14 + r15]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r14 + r15 + 8]
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, r12
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
	jne	.label_145
	lea	rdi, [rdi]
	cmp	r12, rbx
	mov	rbp, r12
	jae	.label_97
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, r12
	nop	
.label_113:
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp]
	mov	rsp, rsp
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_97
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, rbx
	mov	rbp, rbp
	jb	.label_113
.label_97:
	mov	rsp, rsp
	mov	rax, rbp
	mov	rbp, rbp
	sub	rax, r12
	cmp	rbp, rbx
	jae	.label_116
	mov	qword ptr [rsp + 0x38], rax
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
.label_139:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	lea	rdi, [rdi]
	je	.label_145
	lea	rdi, [rdi]
	inc	rbp
	cmp	rbp, rbx
	jb	.label_139
	lea	rsi, [rsi]
	jmp	.label_145
	nop	word ptr cs:[rax + rax]
.label_116:
	nop	
	mov	qword ptr [rsp + 0x38], rax
.label_145:
	cmp	r12, rbx
	jae	.label_152
	lea	rax, [r14 + r15 + 8]
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r12
	nop	word ptr cs:[rax + rax]
.label_278:
	mov	r14, r12
	nop	
	cmp	qword ptr [word ptr [rip + context_regex]],  0
	je	.label_162
	mov	rdx, rbx
	lea	rdi, [rdi]
	sub	rdx, r14
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:label_166
	xor	ecx, ecx
	nop	
	mov	r9d, OFFSET FLAT:context_regs
	mov	rbp, rbp
	mov	rsi, r14
	mov	r8, rdx
	call	rpl_re_search
	nop	
	cmp	rax, -1
	lea	rdi, [rdi]
	je	.label_162
	test	rax, rax
	je	.label_186
	mov	rsp, rsp
	cmp	rax, -2
	je	.label_188
	mov	rax,  qword ptr [word ptr [rip + label_192]]
	mov	rbx, qword ptr [rax]
	mov	rsp, rsp
	add	rbx, r14
.label_162:
	mov	rsp, rsp
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x28], rbx
	nop	word ptr cs:[rax + rax]
.label_217:
	lea	rsi, [rsi]
	mov	r13, rbx
	cmp	r13, r14
	jbe	.label_114
	lea	rbx, [r13 - 1]
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [r13 - 1]
	lea	rsi, [rsi]
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	mov	rsp, rsp
	jne	.label_217
.label_114:
	mov	r15, r14
	jmp	.label_180
.label_153:
	mov	qword ptr [r8], rbx
	mov	qword ptr [rsi + rdi + 8], r12
	mov	rsp, rsp
	mov	rax, r14
	sub	rax, rbx
	mov	qword ptr [rsi + rdi + 0x10], rax
	nop	
	mov	rax, r13
	mov	rbp, rbp
	sub	rax, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rdi + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	dword ptr [rsi + rdi + 0x28], eax
	mov	rsp, rsp
	inc	rdx
	mov	qword ptr [word ptr [rip + number_of_occurs.0]],  rdx
.label_180:
	lea	rdi, [rdi]
	mov	rbx, r15
	mov	rsp, rsp
	jmp	.label_259
	nop	dword ptr [rax + rax]
.label_107:
	lea	rdi, [rdi]
	inc	rbx
.label_259:
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_266
	mov	rsp, rsp
	mov	rdx, r13
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_23
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	r9d, OFFSET FLAT:word_regs
	mov	rsi, rbx
	mov	r8, rdx
	mov	rsp, rsp
	call	rpl_re_search
	lea	rsi, [rsi]
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_280
	cmp	rax, -2
	je	.label_283
	mov	rax,  qword ptr [word ptr [rip + label_287]]
	nop	
	mov	rax, qword ptr [rax]
	add	rax, rbx
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + label_288]]
	mov	rsp, rsp
	mov	r15, rbx
	add	r15, qword ptr [rcx]
	mov	rbx, rax
	lea	rsi, [rsi]
	jmp	.label_289
	nop	word ptr [rax + rax]
.label_306:
	inc	rbx
.label_266:
	cmp	rbx, r13
	lea	rdi, [rdi]
	jae	.label_279
	movzx	eax, byte ptr [rbx]
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	mov	rsp, rsp
	je	.label_306
.label_279:
	cmp	rbx, r13
	mov	rbp, rbp
	je	.label_280
	mov	r15, rbx
	mov	rsp, rsp
	jae	.label_107
	nop	word ptr cs:[rax + rax]
.label_319:
	movzx	eax, byte ptr [r15]
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	nop	
	je	.label_289
	inc	r15
	cmp	r15, r13
	jb	.label_319
	nop	dword ptr [rax]
.label_289:
	mov	rbp, rbp
	mov	r12, r15
	nop	
	sub	r12, rbx
	je	.label_107
	lea	rdi, [rdi]
	cmp	r12,  qword ptr [word ptr [rip + maximum_word_length]]
	nop	
	jle	.label_146
	mov	qword ptr [word ptr [rip + maximum_word_length]],  r12
.label_146:
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_329
	cmp	qword ptr [rsp], rbx
	mov	rsp, rsp
	jae	.label_63
.label_51:
	nop	
	mov	rcx, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_345:
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0xa
	lea	rdi, [rdi]
	je	.label_343
	nop	
	inc	rcx
	cmp	rcx, rbx
	jb	.label_345
	jmp	.label_348
	nop	dword ptr [rax]
.label_343:
	lea	rsi, [rsi]
	inc	qword ptr [word ptr [rip + total_line_count]]
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rax]
	cmp	rcx, rbp
	mov	rdx, rcx
	jae	.label_9
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	
	mov	rdx, qword ptr [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_277:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdx]
	mov	rsp, rsp
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_9
	mov	rbp, rbp
	inc	rdx
	cmp	rdx, rbp
	jb	.label_277
.label_9:
	mov	qword ptr [rsp], rdx
	mov	rsp, rsp
	mov	rax, rdx
	sub	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	cmp	rdx, rbx
	jb	.label_51
	jmp	.label_63
.label_348:
	mov	qword ptr [rsp], rcx
.label_63:
	mov	rsp, rsp
	cmp	qword ptr [rsp], rbx
	mov	rsp, rsp
	ja	.label_180
.label_329:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + ignore_file]],  0
	nop	
	je	.label_74
	nop	
	mov	rdx,  qword ptr [word ptr [rip + label_80]]
	test	rdx, rdx
	nop	
	jle	.label_74
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + ignore_table]]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	mov	byte ptr [rsp + 0x10], al
	xor	r11d, r11d
.label_191:
	mov	rbp, rbp
	mov	r10, rdx
	nop	
	dec	r10
	nop	dword ptr [rax]
.label_52:
	mov	rbp, rbp
	lea	rax, [r11 + r10]
	lea	rsi, [rsi]
	mov	rdx, rax
	shr	rdx, 0x3f
	add	rdx, rax
	mov	rbp, rbp
	sar	rdx, 1
	lea	rsi, [rsi]
	mov	rax, rdx
	shl	rax, 4
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rcx + rax]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rcx + rax + 8]
	cmp	r12, r9
	mov	rcx, r9
	cmovle	rcx, r12
	test	byte ptr [rsp + 0x10], 1
	je	.label_95
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_66
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rdi]
	xor	r8d, r8d
	nop	word ptr [rax + rax]
.label_147:
	movzx	eax, byte ptr [rbx + r8]
	mov	rbp, rbp
	movzx	edi,  byte ptr [byte ptr [rax + folded_chars]]
	movzx	eax, byte ptr [rsi + r8]
	nop	
	movzx	eax,  byte ptr [byte ptr [rax + folded_chars]]
	sub	edi, eax
	lea	rdi, [rdi]
	jne	.label_135
	inc	r8
	cmp	r8, rcx
	jl	.label_147
	jmp	.label_66
	nop	dword ptr [rax]
.label_95:
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_66
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_174:
	movzx	edi, byte ptr [rbx + rax]
	movzx	ebp, byte ptr [rsi + rax]
	mov	rsp, rsp
	sub	edi, ebp
	jne	.label_135
	inc	rax
	cmp	rax, rcx
	jl	.label_174
.label_66:
	cmp	r12, r9
	setg	al
	mov	rsp, rsp
	jl	.label_164
	movzx	edi, al
	jmp	.label_171
	nop	word ptr [rax + rax]
.label_135:
	lea	rsi, [rsi]
	test	edi, edi
	js	.label_164
.label_171:
	mov	rbp, rbp
	test	edi, edi
	jle	.label_180
	cmp	rdx, r10
	lea	rsi, [rsi]
	lea	r11, [rdx + 1]
	nop	
	jl	.label_52
	mov	rsp, rsp
	jmp	.label_74
	nop	dword ptr [rax + rax]
.label_164:
	mov	rbp, rbp
	cmp	r11, rdx
	mov	rsp, rsp
	jl	.label_191
.label_74:
	nop	
	cmp	qword ptr [word ptr [rip + only_file]],  0
	je	.label_196
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	jle	.label_180
	mov	rcx,  qword ptr [word ptr [rip + only_table]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rcx
	mov	rbp, rbp
	mov	cl,  byte ptr [byte ptr [rip + ignore_case]]
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x10], cl
	nop	
	xor	r11d, r11d
.label_59:
	mov	r10, rax
	dec	r10
	nop	
.label_307:
	nop	
	lea	rcx, [r11 + r10]
	mov	rax, rcx
	lea	rsi, [rsi]
	shr	rax, 0x3f
	lea	rdi, [rdi]
	add	rax, rcx
	sar	rax, 1
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	shl	rcx, 4
	nop	
	mov	rdx, qword ptr [rsp + 8]
	nop	
	lea	rsi, [rdx + rcx]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdx + rcx + 8]
	cmp	r12, r9
	mov	rdx, r9
	cmovle	rdx, r12
	lea	rsi, [rsi]
	test	byte ptr [rsp + 0x10], 1
	nop	
	je	.label_221
	test	rdx, rdx
	lea	rdi, [rdi]
	jle	.label_129
	mov	rdi, qword ptr [rsi]
	xor	r8d, r8d
	nop	dword ptr [rax + rax]
.label_96:
	movzx	ecx, byte ptr [rbx + r8]
	nop	
	movzx	esi,  byte ptr [byte ptr [rcx + folded_chars]]
	movzx	ecx, byte ptr [rdi + r8]
	movzx	ecx,  byte ptr [byte ptr [rcx + folded_chars]]
	sub	esi, ecx
	lea	rdi, [rdi]
	jne	.label_260
	mov	rbp, rbp
	inc	r8
	lea	rsi, [rsi]
	cmp	r8, rdx
	jl	.label_96
	jmp	.label_129
.label_221:
	mov	rsp, rsp
	test	rdx, rdx
	lea	rdi, [rdi]
	jle	.label_129
	mov	rdi, qword ptr [rsi]
	xor	ecx, ecx
.label_293:
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rbx + rcx]
	movzx	ebp, byte ptr [rdi + rcx]
	sub	esi, ebp
	jne	.label_260
	nop	
	inc	rcx
	nop	
	cmp	rcx, rdx
	jl	.label_293
.label_129:
	cmp	r12, r9
	mov	rsp, rsp
	setg	cl
	jl	.label_295
	movzx	esi, cl
	jmp	.label_301
	nop	dword ptr [rax]
.label_260:
	test	esi, esi
	lea	rsi, [rsi]
	js	.label_295
.label_301:
	mov	rbp, rbp
	test	esi, esi
	jle	.label_196
	mov	rbp, rbp
	cmp	rax, r10
	mov	rsp, rsp
	lea	r11, [rax + 1]
	mov	rbp, rbp
	jl	.label_307
	jmp	.label_180
	nop	dword ptr [rax]
.label_295:
	mov	rsp, rsp
	cmp	r11, rax
	lea	rsi, [rsi]
	jl	.label_59
	jmp	.label_180
.label_196:
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + number_of_occurs.0]]
	cmp	rdx,  qword ptr [word ptr [rip + occurs_alloc]]
	jne	.label_315
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + occurs_table.0]]
	nop	
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	je	.label_321
	nop	
	movabs	rax, 0x1c71c71c71c71c7
	cmp	rdx, rax
	nop	
	jae	.label_324
	lea	rsi, [rsi]
	mov	rbp, rcx
	mov	rax, rdx
	lea	rdi, [rdi]
	shr	rax, 1
	lea	rdx, [rdx + rax + 1]
	lea	rsi, [rsi]
	jmp	.label_272
.label_315:
	mov	rsi,  qword ptr [word ptr [rip + occurs_table.0]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	jmp	.label_337
.label_321:
	lea	rdi, [rdi]
	mov	rbp, rcx
	nop	
	test	rdx, rdx
	lea	rsi, [rsi]
	mov	eax, 2
	cmove	rdx, rax
	movabs	rax, 0x2aaaaaaaaaaaaab
	lea	rsi, [rsi]
	cmp	rdx, rax
	nop	
	jae	.label_341
.label_272:
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + occurs_alloc]],  rdx
	shl	rdx, 4
	mov	rsp, rsp
	lea	rsi, [rdx + rdx*2]
	call	xrealloc
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + occurs_table.0]],  rsi
	mov	rdx,  qword ptr [word ptr [rip + number_of_occurs.0]]
	mov	rcx, rbp
.label_337:
	lea	rdi, [rdx + rdx*2]
	lea	rsi, [rsi]
	shl	rdi, 4
	lea	r8, [rsi + rdi]
	movzx	eax,  byte ptr [byte ptr [rip + auto_reference]]
	nop	
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_126
	cmp	qword ptr [rsp], rbx
	lea	rdi, [rdi]
	jae	.label_48
.label_262:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r8
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_71:
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx]
	mov	rbp, rbp
	cmp	eax, 0xa
	je	.label_69
	inc	rcx
	cmp	rcx, rbx
	jb	.label_71
	jmp	.label_76
	nop	dword ptr [rax + rax]
.label_69:
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdi, [rdi]
	inc	qword ptr [word ptr [rip + total_line_count]]
	inc	rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rcx
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rdx, rcx
	jae	.label_156
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x40], rdi
	mov	rbp, rax
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	nop	word ptr [rax + rax]
.label_218:
	nop	
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_156
	mov	rsp, rsp
	inc	rdx
	lea	rdi, [rdi]
	cmp	rdx, rbp
	jb	.label_218
.label_156:
	mov	qword ptr [rsp], rdx
	cmp	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 8]
	nop	
	jb	.label_262
	lea	rdi, [rdi]
	jmp	.label_48
.label_126:
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_131
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	sub	rax, rbx
	mov	rsp, rsp
	mov	qword ptr [rsi + rdi + 0x20], rax
	mov	al, 1
	cmp	rcx,  qword ptr [word ptr [rip + reference_max_width]]
	jle	.label_137
	mov	qword ptr [word ptr [rip + reference_max_width]],  rcx
	jmp	.label_137
.label_131:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rcx
	jmp	.label_153
.label_76:
	mov	qword ptr [rsp], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 8]
.label_48:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + total_line_count]]
	mov	qword ptr [rsi + rdi + 0x20], rax
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + input_reference]]
.label_137:
	test	al, 1
	mov	rsp, rsp
	je	.label_165
	mov	qword ptr [rsp + 0x38], rcx
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	cmp	rax, r14
	jne	.label_153
	cmp	r14, r13
	mov	rbp, r14
	jae	.label_143
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], r8
	lea	rdi, [rdi]
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rdi
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rbp, r14
	nop	word ptr [rax + rax]
.label_212:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	lea	rsi, [rsi]
	jne	.label_143
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, r13
	jb	.label_212
.label_143:
	cmp	rbp, r13
	jae	.label_214
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r8
	nop	
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x40], rdi
	nop	
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_336:
	movzx	ecx, byte ptr [rbp]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	mov	rbp, rbp
	je	.label_214
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, r13
	jb	.label_336
.label_214:
	nop	
	mov	qword ptr [rsp + 0x18], r14
	lea	rdi, [rdi]
	mov	r14, rbp
	mov	rsp, rsp
	jmp	.label_153
.label_165:
	mov	qword ptr [rsp + 0x38], rcx
	mov	rsp, rsp
	jmp	.label_153
	nop	word ptr [rax + rax]
.label_280:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax]
	mov	r12, qword ptr [rsp + 0x28]
	cmp	r12, rbx
	mov	rbp, qword ptr [rsp]
	jb	.label_278
.label_152:
	mov	rax,  qword ptr [word ptr [rip + total_line_count]]
	lea	rdi, [rdi]
	inc	rax
	mov	qword ptr [word ptr [rip + total_line_count]],  rax
	mov	rcx,  qword ptr [word ptr [rip + file_line_count]]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + number_input_files]]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_286
	mov	rsi,  qword ptr [word ptr [rip + number_of_occurs.0]]
	nop	
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_30
	mov	rdi,  qword ptr [word ptr [rip + occurs_table.0]]
	lea	rsi, [rsi]
	mov	edx, 0x30
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:compare_occurs
	mov	rbp, rbp
	call	qsort
.label_30:
	movzx	eax,  byte ptr [byte ptr [rip + auto_reference]]
	and	eax, 1
	nop	
	cmp	eax, 1
	jne	.label_314
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + reference_max_width]],  0
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + number_input_files]],  0
	lea	rdi, [rdi]
	je	.label_318
	lea	rdi, [rdi]
	lea	r14, [rsp + 0x50]
	xor	ebp, ebp
.label_24:
	nop	
	mov	rax,  qword ptr [word ptr [rip + file_line_count]]
	mov	r8, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	inc	r8
	test	rbp, rbp
	nop	
	je	.label_350
	sub	r8, qword ptr [rax + rbp*8 - 8]
.label_350:
	mov	esi, 1
	mov	edx, 0x15
	mov	ecx, OFFSET FLAT:.str.69
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	__sprintf_chk
	movsxd	rbx, eax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbp*8]
	test	rdi, rdi
	je	.label_342
	nop	
	call	strlen
	add	rbx, rax
.label_342:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + reference_max_width]]
	cmp	rbx, rdi
	mov	rbp, rbp
	jle	.label_149
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + reference_max_width]],  rbx
	lea	rdi, [rdi]
	mov	rdi, rbx
.label_149:
	inc	rbp
	movsxd	rax,  dword ptr [dword ptr [rip + number_input_files]]
	cmp	rbp, rax
	nop	
	jb	.label_24
.label_318:
	lea	rax, [rdi + 1]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + reference_max_width]],  rax
	add	rdi, 2
	call	xmalloc
	mov	qword ptr [word ptr [rip + reference]],  rax
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	jne	.label_43
.label_314:
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_50
.label_43:
	mov	al,  byte ptr [byte ptr [rip + right_reference]]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	je	.label_58
.label_50:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + line_width]]
	jmp	.label_62
.label_58:
	mov	rcx,  qword ptr [word ptr [rip + gap_size]]
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + line_width]]
	lea	rsi, [rsi]
	add	rcx,  qword ptr [word ptr [rip + reference_max_width]]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + line_width]],  rax
.label_62:
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	jns	.label_20
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + line_width]],  0
	xor	eax, eax
.label_20:
	mov	rbp, rbp
	mov	rbx, rax
	shr	rbx, 0x3f
	mov	rbp, rbp
	add	rbx, rax
	sar	rbx, 1
	mov	qword ptr [word ptr [rip + half_line_width]],  rbx
	lea	rdi, [rdi]
	mov	rbp, rbx
	lea	rdi, [rdi]
	sub	rbp,  qword ptr [word ptr [rip + gap_size]]
	mov	qword ptr [word ptr [rip + before_max_width]],  rbp
	mov	qword ptr [word ptr [rip + keyafter_max_width]],  rbx
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_88
	mov	rsp, rsp
	cmp	byte ptr [rdi], 0
	je	.label_88
	mov	rbp, rbp
	call	strlen
	mov	qword ptr [word ptr [rip + truncation_string_length]],  rax
	jmp	.label_121
.label_88:
	mov	qword ptr [word ptr [rip + truncation_string]],  0
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
.label_121:
	mov	cl,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	cl, 1
	lea	rsi, [rsi]
	add	rax, rax
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_132
	mov	rbp, rbp
	or	rax, 1
	nop	
	jmp	.label_346
.label_132:
	nop	
	xor	ecx, ecx
	sub	rbp, rax
	cmovns	rcx, rbp
	mov	qword ptr [word ptr [rip + before_max_width]],  rcx
.label_346:
	sub	rbx, rax
	mov	qword ptr [word ptr [rip + keyafter_max_width]],  rbx
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	xor	ecx, ecx
	mov	rsp, rsp
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_104]]
	lea	rsi, [rsi]
	pand	xmm0,  xmmword ptr [word ptr [rip + label_105]]
	nop	word ptr cs:[rax + rax]
.label_170:
	nop	
	movdqu	xmm1, xmmword ptr [rax + rcx*2]
	mov	rbp, rbp
	psrlw	xmm1, 0xd
	pand	xmm1, xmm0
	mov	rsp, rsp
	packuswb	xmm1, xmm1
	movq	qword ptr [word ptr [rcx + edited_flag]],  xmm1
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [rax + rcx*2 + 0x10]
	psrlw	xmm1, 0xd
	lea	rdi, [rdi]
	pand	xmm1, xmm0
	packuswb	xmm1, xmm1
	mov	rbp, rbp
	movq	qword ptr [word ptr [rcx + label_167]],  xmm1
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [rax + rcx*2 + 0x20]
	mov	rsp, rsp
	psrlw	xmm1, 0xd
	lea	rsi, [rsi]
	pand	xmm1, xmm0
	mov	rbp, rbp
	packuswb	xmm1, xmm1
	mov	rbp, rbp
	movq	qword ptr [word ptr [rcx + label_168]],  xmm1
	movdqu	xmm1, xmmword ptr [rax + rcx*2 + 0x30]
	psrlw	xmm1, 0xd
	pand	xmm1, xmm0
	nop	
	packuswb	xmm1, xmm1
	mov	rsp, rsp
	movq	qword ptr [word ptr [rcx + label_169]],  xmm1
	add	rcx, 0x20
	lea	rsi, [rsi]
	cmp	rcx, 0x100
	mov	rsp, rsp
	jne	.label_170
	nop	
	mov	byte ptr [byte ptr [rip + label_223]],  1
	mov	eax,  dword ptr [dword ptr [rip + output_format]]
	lea	rsi, [rsi]
	cmp	eax, 2
	lea	rsi, [rsi]
	je	.label_224
	cmp	eax, 3
	jne	.label_255
	mov	byte ptr [byte ptr [rip + label_233]],  1
	mov	byte ptr [byte ptr [rip + label_234]],  1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + label_235]],  1
	nop	
	mov	byte ptr [byte ptr [rip + label_236]],  1
	nop	
	mov	dword ptr [dword ptr [rip + label_237]],  0x1010101
	lea	rsi, [rsi]
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_238]]
	mov	rsp, rsp
	pxor	xmm0, xmm0
	pcmpeqb	xmm2, xmm0
	mov	rsp, rsp
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_239]]
	mov	rbp, rbp
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [word ptr [rip + label_240]],  xmm2
	mov	rsp, rsp
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_241]]
	nop	
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [word ptr [rip + label_242]],  xmm2
	mov	rbp, rbp
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_243]]
	mov	rbp, rbp
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	nop	
	movdqa	xmmword ptr [word ptr [rip + label_244]],  xmm2
	nop	
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_245]]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	mov	rsp, rsp
	movdqa	xmmword ptr [word ptr [rip + label_246]],  xmm2
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_247]]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	nop	
	movdqa	xmmword ptr [word ptr [rip + label_248]],  xmm2
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_249]]
	mov	rsp, rsp
	pcmpeqb	xmm2, xmm0
	lea	rsi, [rsi]
	pandn	xmm2, xmm1
	nop	
	movdqa	xmmword ptr [word ptr [rip + label_250]],  xmm2
	mov	rsp, rsp
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_251]]
	pcmpeqb	xmm2, xmm0
	lea	rsi, [rsi]
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [word ptr [rip + label_252]],  xmm2
	nop	
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_253]]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	mov	rbp, rbp
	movdqa	xmmword ptr [word ptr [rip + label_254]],  xmm2
	mov	rbp, rbp
	jmp	.label_255
.label_224:
	nop	
	mov	byte ptr [byte ptr [rip + label_184]],  1
.label_255:
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [word ptr [rip + tail]],  xmm0
	mov	byte ptr [byte ptr [rip + tail_truncation]],  0
	movdqu	xmmword ptr [word ptr [rip + head]],  xmm0
	mov	byte ptr [byte ptr [rip + head_truncation]],  0
	cmp	qword ptr [word ptr [rip + number_of_occurs.0]],  0
	jle	.label_333
	mov	r14,  qword ptr [word ptr [rip + occurs_table.0]]
	lea	rsi, [rsi]
	mov	ebp, 1
	xor	eax, eax
	jmp	.label_78
.label_332:
	lea	rdi, [rdi]
	mov	esi, 0xa
	call	__overflow
	jmp	.label_14
.label_11:
	mov	esi, 0x7b
	nop	
	call	__overflow
	jmp	.label_18
.label_27:
	mov	rsp, rsp
	mov	esi, 0x22
	call	__overflow
	jmp	.label_94
.label_160:
	lea	rdi, [rdi]
	mov	esi, 0x22
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_33
.label_102:
	mov	esi, 0x22
	call	__overflow
	mov	rsp, rsp
	jmp	.label_42
.label_310:
	mov	rbp, rbp
	mov	esi, 0x22
	lea	rdi, [rdi]
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_53
.label_229:
	mov	esi, 0x7d
	lea	rsi, [rsi]
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_61
.label_338:
	mov	esi, 0x22
	mov	rbp, rbp
	call	__overflow
	jmp	.label_12
.label_67:
	mov	esi, 0x7b
	lea	rsi, [rsi]
	call	__overflow
	jmp	.label_79
.label_294:
	mov	esi, 0x7d
	lea	rsi, [rsi]
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_12
.label_128:
	mov	rbp, rbp
	mov	esi, 0x3a
	nop	
	call	__overflow
	jmp	.label_85
	nop	dword ptr [rax]
.label_78:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14]
	nop	
	mov	qword ptr [word ptr [rip + keyafter]],  rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 8]
	nop	
	lea	rbx, [rax + rcx]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + label_13]],  rbx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14 + 0x10]
	add	rdx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdx
	nop	
	mov	rdx, qword ptr [r14 + 0x18]
	lea	r15, [rax + rdx]
	movsxd	rsi, dword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + text_buffers]]
	mov	rbp, rbp
	shl	rsi, 4
	mov	r13, qword ptr [rdi + rsi]
	mov	r12, qword ptr [rdi + rsi + 8]
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_90
	nop	word ptr cs:[rax + rax]
.label_204:
	mov	rcx,  qword ptr [word ptr [rip + keyafter_max_width]]
	add	rcx, rax
	cmp	rbx, rcx
	mov	rbp, rbp
	ja	.label_90
	mov	qword ptr [word ptr [rip + label_13]],  rbx
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	lea	rsi, [rsi]
	je	.label_148
	mov	rdx, r15
	lea	rsi, [rsi]
	sub	rdx, rbx
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:label_23
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	mov	rsp, rsp
	cmp	rax, -2
	je	.label_161
	lea	rsi, [rsi]
	cmp	rax, -1
	cmove	rax, rbp
	lea	rsi, [rsi]
	add	rbx, rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + keyafter]]
	jmp	.label_163
	nop	word ptr cs:[rax + rax]
.label_148:
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbx]
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	mov	rbp, rbp
	je	.label_183
	cmp	rbx, r15
	jae	.label_163
	inc	rbx
	lea	rdi, [rdi]
	mov	rcx, rbx
.label_194:
	lea	rsi, [rsi]
	mov	rbx, rcx
	cmp	rbx, r15
	jae	.label_163
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbx]
	nop	
	lea	rcx, [rbx + 1]
	cmp	byte ptr [byte ptr [rdx + word_fastmap]],  0
	lea	rdi, [rdi]
	jne	.label_194
	mov	rbp, rbp
	jmp	.label_163
.label_183:
	nop	
	inc	rbx
	nop	dword ptr [rax + rax]
.label_163:
	lea	rdi, [rdi]
	cmp	rbx, r15
	nop	
	jb	.label_204
.label_90:
	nop	
	mov	rcx,  qword ptr [word ptr [rip + keyafter_max_width]]
	nop	
	add	rcx, rax
	cmp	rbx, rcx
	jbe	.label_207
	nop	
	mov	rbx,  qword ptr [word ptr [rip + label_13]]
	lea	rdi, [rdi]
	jmp	.label_216
	nop	dword ptr [rax + rax]
.label_207:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + label_13]],  rbx
.label_216:
	mov	rsp, rsp
	cmp	rbx, r15
	sbb	cl, cl
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	mov	rsp, rsp
	setne	dl
	lea	rdi, [rdi]
	and	dl, cl
	mov	byte ptr [byte ptr [rip + keyafter_truncation]],  dl
	lea	rsi, [rsi]
	cmp	rbx, rax
	jbe	.label_225
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_26:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rbx]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	mov	rbp, rbp
	je	.label_225
	mov	qword ptr [word ptr [rip + label_13]],  rbx
	mov	rsp, rsp
	cmp	rbx, rax
	lea	rbx, [rbx - 1]
	lea	rsi, [rsi]
	ja	.label_26
.label_225:
	mov	rbp, rbp
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	mov	rcx, rbx
	neg	rcx
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + half_line_width]]
	lea	rdi, [rdi]
	add	rdx,  qword ptr [word ptr [rip + maximum_word_length]]
	lea	rdi, [rdi]
	cmp	rdx, rcx
	jge	.label_275
	lea	rdi, [rdi]
	mov	rbx, rax
	sub	rbx, rdx
	nop	
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	mov	rsp, rsp
	je	.label_290
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:label_23
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	nop	
	call	rpl_re_match
	cmp	rax, -2
	lea	rsi, [rsi]
	je	.label_161
	cmp	rax, -1
	mov	ecx, 1
	mov	rbp, rbp
	cmovne	rcx, rax
	add	rbx, rcx
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + keyafter]]
	jmp	.label_172
	nop	
.label_275:
	add	rbx, rax
.label_172:
	mov	qword ptr [word ptr [rip + before]],  rbx
	nop	
	mov	qword ptr [word ptr [rip + label_40]],  rax
	cmp	rax, rbx
	jbe	.label_312
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx]
	mov	rbp, rbp
	lea	rdx, [rax - 1]
	nop	dword ptr [rax + rax]
.label_325:
	mov	rcx, rdx
	movzx	edx, byte ptr [rcx]
	mov	rsp, rsp
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_282
	mov	qword ptr [word ptr [rip + label_40]],  rcx
	lea	rdx, [rcx - 1]
	lea	rdi, [rdi]
	cmp	rcx, rbx
	mov	rsp, rsp
	mov	rax, rcx
	mov	rsp, rsp
	ja	.label_325
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r14
	inc	rdx
	mov	rax, rcx
	jmp	.label_198
	nop	dword ptr [rax]
.label_312:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r14
	mov	rdx, rax
	mov	rsp, rsp
	jmp	.label_198
.label_282:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r14
	inc	rcx
	mov	rbp, rbp
	mov	rdx, rcx
.label_198:
	lea	rsi, [rsi]
	mov	r14,  qword ptr [word ptr [rip + before_max_width]]
	lea	rcx, [rbx + r14]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	mov	rsi, rbx
	jae	.label_344
	nop	word ptr cs:[rax + rax]
.label_200:
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	lea	rsi, [rsi]
	je	.label_15
	sub	rdx, rsi
	nop	
	mov	edi, OFFSET FLAT:label_23
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	xor	r8d, r8d
	lea	rsi, [rsi]
	call	rpl_re_match
	lea	rsi, [rsi]
	cmp	rax, -2
	mov	rbp, rbp
	je	.label_34
	cmp	rax, -1
	mov	rbp, rbp
	mov	esi, 1
	cmovne	rsi, rax
	add	rsi,  qword ptr [word ptr [rip + before]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + before]],  rsi
	lea	rsi, [rsi]
	mov	r14,  qword ptr [word ptr [rip + before_max_width]]
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + label_40]]
	mov	rdx, rax
	jmp	.label_41
	nop	word ptr cs:[rax + rax]
.label_15:
	movzx	ecx, byte ptr [rsi]
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	lea	rdi, [rdi]
	je	.label_73
	lea	rdi, [rdi]
	cmp	rsi, rdx
	jae	.label_41
	mov	rbp, rbp
	inc	rsi
	mov	rcx, rsi
.label_84:
	mov	rsi, rcx
	mov	qword ptr [word ptr [rip + before]],  rsi
	lea	rsi, [rsi]
	cmp	rsi, rdx
	jae	.label_41
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rsi]
	lea	rsi, [rsi]
	lea	rcx, [rsi + 1]
	cmp	byte ptr [byte ptr [rdi + word_fastmap]],  0
	jne	.label_84
	jmp	.label_41
.label_73:
	mov	rsp, rsp
	inc	rsi
	mov	qword ptr [word ptr [rip + before]],  rsi
	nop	word ptr [rax + rax]
.label_41:
	lea	rsi, [rsi]
	lea	rcx, [rsi + r14]
	cmp	rcx, rdx
	jb	.label_200
.label_344:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	mov	rdx, rsi
	je	.label_347
.label_300:
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rsi, [rsi]
	cmp	rcx, r13
	nop	
	jbe	.label_112
	lea	rdx, [rcx - 1]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rcx - 1]
	mov	rbp, qword ptr [rsp]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	byte ptr [rbp + rdi*2 + 1], 0x20
	jne	.label_300
.label_112:
	cmp	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	setb	cl
	nop	
	jmp	.label_317
	nop	word ptr [rax + rax]
.label_347:
	mov	rsp, rsp
	xor	ecx, ecx
.label_317:
	mov	byte ptr [byte ptr [rip + before_truncation]],  cl
	cmp	rsi, r12
	jae	.label_141
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	nop	word ptr [rax + rax]
.label_155:
	movzx	edx, byte ptr [rsi]
	nop	
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	lea	rdi, [rdi]
	je	.label_141
	lea	rdi, [rdi]
	inc	rsi
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + before]],  rsi
	cmp	rsi, r12
	nop	
	jb	.label_155
.label_141:
	lea	rdi, [rdi]
	sub	r14, rax
	nop	
	add	r14, rsi
	sub	r14,  qword ptr [word ptr [rip + gap_size]]
	test	r14, r14
	jle	.label_159
	mov	rax,  qword ptr [word ptr [rip + label_13]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + tail]],  rax
	lea	rdi, [rdi]
	cmp	rax, r12
	jae	.label_202
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp]
	nop	
	mov	rcx, qword ptr [rcx]
	nop	word ptr cs:[rax + rax]
.label_189:
	movzx	edx, byte ptr [rax]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_202
	inc	rax
	mov	qword ptr [word ptr [rip + tail]],  rax
	cmp	rax, r12
	jb	.label_189
.label_202:
	mov	qword ptr [word ptr [rip + label_46]],  rax
	mov	rbp, rax
	lea	rdi, [rdi]
	cmp	rax, r15
	jae	.label_193
	nop	
.label_281:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + label_46]],  rbp
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_201
	mov	rbp, rbp
	mov	rdx, r15
	nop	
	sub	rdx, rbp
	mov	edi, OFFSET FLAT:label_23
	mov	rsp, rsp
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rbp, rbp
	mov	rsi, rbp
	call	rpl_re_match
	nop	
	cmp	rax, -2
	je	.label_219
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	lea	rdi, [rdi]
	add	rbp, rcx
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + tail]]
	jmp	.label_81
.label_201:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp]
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	mov	rbp, rbp
	je	.label_231
	cmp	rbp, r15
	jae	.label_81
	nop	
	inc	rbp
	mov	rcx, rbp
	nop	word ptr cs:[rax + rax]
.label_269:
	mov	rbp, rcx
	mov	rsp, rsp
	cmp	rbp, r15
	lea	rdi, [rdi]
	jae	.label_81
	movzx	edx, byte ptr [rbp]
	lea	rcx, [rbp + 1]
	cmp	byte ptr [byte ptr [rdx + word_fastmap]],  0
	jne	.label_269
	jmp	.label_81
.label_231:
	mov	rsp, rsp
	inc	rbp
	nop	word ptr [rax + rax]
.label_81:
	lea	rcx, [rax + r14]
	mov	rsp, rsp
	cmp	rbp, r15
	jae	.label_226
	lea	rdi, [rdi]
	cmp	rbp, rcx
	jb	.label_281
.label_226:
	cmp	rbp, rcx
	mov	rbp, rbp
	jae	.label_151
.label_193:
	mov	r14, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + label_46]],  rbp
	lea	rdi, [rdi]
	jmp	.label_173
	nop	dword ptr [rax + rax]
.label_159:
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [word ptr [rip + tail]],  xmm0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + tail_truncation]],  0
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	jmp	.label_299
.label_290:
	movzx	ecx, byte ptr [rbx]
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	je	.label_309
	mov	rcx, rdx
	neg	rcx
	lea	rsi, [rsi]
	jns	.label_172
	mov	rcx, rax
	mov	rsp, rsp
	sub	rcx, rdx
	inc	rcx
	nop	word ptr cs:[rax + rax]
.label_323:
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	rsp, rsp
	cmp	rbx, rax
	mov	rsp, rsp
	jae	.label_172
	mov	rsp, rsp
	movzx	edx, byte ptr [rbx]
	lea	rcx, [rbx + 1]
	cmp	byte ptr [byte ptr [rdx + word_fastmap]],  0
	lea	rdi, [rdi]
	jne	.label_323
	nop	
	jmp	.label_172
.label_151:
	mov	rbp,  qword ptr [word ptr [rip + label_46]]
	mov	r14, qword ptr [rsp + 0x28]
.label_173:
	lea	rsi, [rsi]
	cmp	rbp, rax
	lea	rdi, [rdi]
	jbe	.label_334
	mov	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	lea	rsi, [rsi]
	cmp	rbp, r15
	sbb	dl, dl
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	setne	cl
	and	cl, dl
	lea	rdi, [rdi]
	jmp	.label_222
	nop	dword ptr [rax]
.label_334:
	lea	rdi, [rdi]
	xor	ecx, ecx
.label_222:
	mov	byte ptr [byte ptr [rip + tail_truncation]],  cl
	lea	rdi, [rdi]
	cmp	rbp, rax
	jbe	.label_299
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx]
	dec	rbp
	nop	dword ptr [rax]
.label_47:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rbp]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_299
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_46]],  rbp
	cmp	rbp, rax
	mov	rsp, rsp
	lea	rbp, [rbp - 1]
	lea	rdi, [rdi]
	ja	.label_47
	nop	word ptr [rax + rax]
.label_299:
	lea	rdi, [rdi]
	mov	rbp,  qword ptr [word ptr [rip + keyafter_max_width]]
	mov	rbp, rbp
	sub	rbp,  qword ptr [word ptr [rip + label_13]]
	add	rbp,  qword ptr [word ptr [rip + keyafter]]
	sub	rbp,  qword ptr [word ptr [rip + gap_size]]
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	jle	.label_31
	mov	rdx,  qword ptr [word ptr [rip + before]]
	mov	qword ptr [word ptr [rip + label_54]],  rdx
	cmp	rdx, r13
	mov	rbp, rbp
	jbe	.label_55
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	dec	rdx
	nop	word ptr [rax + rax]
.label_77:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_285
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + label_54]],  rdx
	cmp	rdx, r13
	lea	rdx, [rdx - 1]
	ja	.label_77
.label_285:
	inc	rdx
	jmp	.label_55
	nop	word ptr cs:[rax + rax]
.label_87:
	inc	rbx
.label_55:
	mov	qword ptr [word ptr [rip + head]],  rbx
	jmp	.label_56
	nop	dword ptr [rax]
.label_64:
	cmp	rax, -1
	mov	ebx, 1
	cmovne	rbx, rax
	add	rbx,  qword ptr [word ptr [rip + head]]
	mov	qword ptr [word ptr [rip + head]],  rbx
	mov	rdx,  qword ptr [word ptr [rip + label_54]]
.label_56:
	lea	rsi, [rsi]
	lea	rax, [rbx + rbp]
	mov	rsp, rsp
	cmp	rax, rdx
	jae	.label_83
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_109
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_23
	xor	ecx, ecx
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	rpl_re_match
	cmp	rax, -2
	mov	rsp, rsp
	jne	.label_64
	lea	rdi, [rdi]
	jmp	.label_70
	nop	word ptr cs:[rax + rax]
.label_109:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx]
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	lea	rsi, [rsi]
	je	.label_87
	nop	
	cmp	rbx, rdx
	lea	rsi, [rsi]
	jae	.label_56
	inc	rbx
	mov	rax, rbx
	nop	word ptr cs:[rax + rax]
.label_103:
	mov	rbx, rax
	mov	qword ptr [word ptr [rip + head]],  rbx
	cmp	rbx, rdx
	nop	
	jae	.label_56
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	lea	rax, [rbx + 1]
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	jne	.label_103
	mov	rbp, rbp
	jmp	.label_56
	nop	
.label_83:
	cmp	rdx, rbx
	jbe	.label_205
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + before_truncation]],  0
	cmp	qword ptr [rsp + 8], rbx
	sbb	cl, cl
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	lea	rsi, [rsi]
	setne	al
	mov	rsp, rsp
	and	al, cl
	lea	rsi, [rsi]
	jmp	.label_256
	nop	word ptr cs:[rax + rax]
.label_31:
	nop	
	pxor	xmm0, xmm0
	lea	rdi, [rdi]
	movdqu	xmmword ptr [word ptr [rip + head]],  xmm0
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + head_truncation]],  0
	mov	rbp, rbp
	mov	ebp, 1
	nop	
	jmp	.label_32
	nop	word ptr cs:[rax + rax]
.label_205:
	xor	eax, eax
.label_256:
	lea	rsi, [rsi]
	mov	ebp, 1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + head_truncation]],  al
	mov	rsp, rsp
	cmp	rbx, rdx
	mov	rbp, rbp
	jae	.label_32
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_227:
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_32
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + head]],  rbx
	cmp	rbx, rdx
	lea	rdi, [rdi]
	jb	.label_227
	nop	word ptr cs:[rax + rax]
.label_32:
	movzx	eax,  byte ptr [byte ptr [rip + auto_reference]]
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_257
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [r14 + 0x28]
	mov	rcx,  qword ptr [word ptr [rip + input_file_name]]
	mov	rsi, qword ptr [rcx + rax*8]
	test	rsi, rsi
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rsi, rcx
	mov	rbp, rbp
	mov	rbx, qword ptr [r14 + 0x20]
	inc	rbx
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	jle	.label_261
	nop	
	mov	rcx,  qword ptr [word ptr [rip + file_line_count]]
	lea	rsi, [rsi]
	sub	rbx, qword ptr [rcx + rax*8 - 8]
.label_261:
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	nop	
	call	stpcpy
	mov	rbp, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.71
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__sprintf_chk
	cdqe	
	add	rax, rbp
	mov	qword ptr [word ptr [rip + label_45]],  rax
	mov	rsp, rsp
	mov	ebp, 1
	mov	rbp, rbp
	jmp	.label_108
	nop	word ptr cs:[rax + rax]
.label_257:
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	jne	.label_108
	nop	
	mov	rax,  qword ptr [word ptr [rip + keyafter]]
	mov	rbp, rbp
	add	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [word ptr [rip + reference]],  rax
	nop	
	mov	qword ptr [word ptr [rip + label_45]],  rax
	mov	rsp, rsp
	cmp	rax, r15
	lea	rdi, [rdi]
	jae	.label_108
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	nop	dword ptr [rax + rax]
.label_327:
	mov	rbp, rbp
	movzx	edx, byte ptr [rax]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	nop	
	jne	.label_108
	lea	rdi, [rdi]
	inc	rax
	mov	qword ptr [word ptr [rip + label_45]],  rax
	mov	rsp, rsp
	cmp	rax, r15
	lea	rdi, [rdi]
	jb	.label_327
	nop	word ptr cs:[rax + rax]
.label_108:
	mov	eax,  dword ptr [dword ptr [rip + output_format]]
	cmp	eax, 2
	jb	.label_265
	je	.label_340
	nop	
	cmp	eax, 3
	jne	.label_14
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + macro_name]]
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.90
	nop	
	xor	eax, eax
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_11
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7b
.label_18:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + tail]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + label_46]]
	mov	rsp, rsp
	call	print_field
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.91
	nop	
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + before]]
	mov	rsi,  qword ptr [word ptr [rip + label_40]]
	call	print_field
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.91
	call	fputs_unlocked
	mov	rbp,  qword ptr [word ptr [rip + keyafter]]
	lea	rsi, [rsi]
	mov	r15,  qword ptr [word ptr [rip + label_13]]
	nop	
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_185
	nop	
	mov	rdx, r15
	sub	rdx, rbp
	mov	edi, OFFSET FLAT:label_23
	xor	ecx, ecx
	mov	rsp, rsp
	xor	r8d, r8d
	mov	rsi, rbp
	call	rpl_re_match
	lea	rsi, [rsi]
	cmp	rax, -2
	je	.label_70
	cmp	rax, -1
	mov	rbp, rbp
	mov	ebx, 1
	mov	rsp, rsp
	cmovne	rbx, rax
	mov	rbp, rbp
	add	rbx, rbp
	lea	rsi, [rsi]
	jmp	.label_157
.label_265:
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + right_reference]]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_125
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + label_45]]
	movzx	ebx,  byte ptr [byte ptr [rip + auto_reference]]
	lea	rsi, [rsi]
	call	print_field
	and	ebx, 1
	lea	rdi, [rdi]
	cmp	ebx, 1
	jne	.label_122
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_128
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x3a
.label_85:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + gap_size]]
	add	rax,  qword ptr [word ptr [rip + reference_max_width]]
	mov	rbx,  qword ptr [word ptr [rip + reference]]
	sub	rbx,  qword ptr [word ptr [rip + label_45]]
	add	rbx, rax
	cmp	rbx, 2
	jl	.label_125
	jmp	.label_82
.label_340:
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + macro_name]]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.88
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + tail]]
	nop	
	mov	rsi,  qword ptr [word ptr [rip + label_46]]
	lea	rsi, [rsi]
	call	print_field
	cmp	byte ptr [byte ptr [rip + tail_truncation]],  0
	je	.label_177
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	call	fputs_unlocked
.label_177:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_27
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x22
.label_94:
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.89
	call	fputs_unlocked
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	je	.label_206
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	fputs_unlocked
.label_206:
	mov	rdi,  qword ptr [word ptr [rip + before]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + label_40]]
	call	print_field
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_160
	nop	
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0x22
.label_33:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	edi, OFFSET FLAT:.str.89
	call	fputs_unlocked
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + keyafter]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + label_13]]
	nop	
	call	print_field
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	lea	rdi, [rdi]
	je	.label_270
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	call	fputs_unlocked
.label_270:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_102
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_42:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.89
	call	fputs_unlocked
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + head_truncation]],  0
	je	.label_215
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	call	fputs_unlocked
.label_215:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + head]]
	mov	rsi,  qword ptr [word ptr [rip + label_54]]
	call	print_field
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_310
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x22
.label_53:
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	mov	rsp, rsp
	jne	.label_320
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_12
.label_320:
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.89
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	mov	rsi,  qword ptr [word ptr [rip + label_45]]
	mov	rbp, rbp
	call	print_field
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	nop	
	jae	.label_338
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
	mov	rbp, rbp
	jmp	.label_12
.label_122:
	mov	rax,  qword ptr [word ptr [rip + reference_max_width]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + gap_size]]
	lea	rdi, [rdx + rax]
	mov	rcx,  qword ptr [word ptr [rip + label_45]]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + reference]]
	mov	rsi, rbp
	sub	rsi, rcx
	add	rsi, rdi
	test	rsi, rsi
	nop	
	jle	.label_125
	nop	
	add	rbp, rdx
	lea	rbx, [rax + rbp + 1]
	lea	rdi, [rdi]
	sub	rbx, rcx
	jmp	.label_29
.label_331:
	lea	rdi, [rdi]
	mov	esi, 0x20
	call	__overflow
	mov	rsp, rsp
	jmp	.label_44
	nop	
.label_29:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_331
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
.label_44:
	lea	rdi, [rdi]
	dec	rbx
	nop	
	cmp	rbx, 1
	jg	.label_29
	jmp	.label_125
.label_349:
	mov	esi, 0x20
	lea	rdi, [rdi]
	call	__overflow
	jmp	.label_203
.label_82:
	mov	rsp, rsp
	dec	rbx
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_349
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0x20
.label_203:
	cmp	rbx, 1
	lea	rdi, [rdi]
	jg	.label_82
	nop	word ptr cs:[rax + rax]
.label_125:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + tail]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + label_46]]
	cmp	rdi, rsi
	nop	
	jae	.label_268
	mov	rsp, rsp
	call	print_field
	nop	
	cmp	byte ptr [byte ptr [rip + tail_truncation]],  0
	lea	rdi, [rdi]
	je	.label_228
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	cl,  byte ptr [byte ptr [rip + tail_truncation]]
	nop	
	jmp	.label_37
.label_268:
	mov	rbx,  qword ptr [word ptr [rip + half_line_width]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + gap_size]]
	mov	rax,  qword ptr [word ptr [rip + label_40]]
	mov	rsi,  qword ptr [word ptr [rip + before]]
	nop	
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	nop	
	je	.label_124
	mov	rbp,  qword ptr [word ptr [rip + truncation_string_length]]
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	sub	rdi, rbp
	nop	
	jmp	.label_142
.label_185:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp]
	nop	
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	mov	rsp, rsp
	je	.label_75
	mov	rsp, rsp
	cmp	rbp, r15
	nop	
	mov	rbx, rbp
	nop	
	jae	.label_157
	mov	rbp, rbp
	lea	rax, [rbp + 1]
	nop	
.label_93:
	mov	rbx, rax
	cmp	rbx, r15
	mov	rsp, rsp
	jae	.label_157
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	lea	rax, [rbx + 1]
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	lea	rdi, [rdi]
	jne	.label_93
	jmp	.label_157
.label_228:
	lea	rdi, [rdi]
	xor	ecx, ecx
.label_37:
	mov	rdx,  qword ptr [word ptr [rip + half_line_width]]
	mov	r9,  qword ptr [word ptr [rip + gap_size]]
	lea	rdi, [rdi]
	mov	r8,  qword ptr [word ptr [rip + label_40]]
	nop	
	mov	rsi,  qword ptr [word ptr [rip + before]]
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
	lea	rsi, [rsi]
	xor	ebp, ebp
	nop	
	sub	rbp, rax
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	lea	rsi, [rsi]
	mov	rbx, rbp
	nop	
	jne	.label_182
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_182:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + label_46]]
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + tail]]
	test	cl, cl
	lea	rsi, [rsi]
	mov	ecx, 0
	nop	
	cmove	rbp, rcx
	mov	rsp, rsp
	mov	rcx, rdx
	mov	rbp, rbp
	sub	rcx, r9
	sub	rcx, r8
	add	rcx, rsi
	add	rcx, rbx
	mov	rsp, rsp
	sub	rcx, rdi
	add	rcx, rbp
	mov	rbp, rbp
	add	rcx, rax
	lea	rsi, [rsi]
	test	rcx, rcx
	nop	
	jle	.label_111
	lea	rdi, [rdi]
	add	rbx, rbp
	mov	rbp, rbp
	add	rbx, rdx
	lea	rsi, [rsi]
	add	rbx, rsi
	lea	rbx, [rax + rbx + 1]
	sub	rbx, r9
	lea	rdi, [rdi]
	sub	rbx, r8
	sub	rbx, rdi
	lea	rdi, [rdi]
	jmp	.label_230
.label_291:
	lea	rdi, [rdi]
	mov	esi, 0x20
	mov	rbp, rbp
	call	__overflow
	jmp	.label_264
	nop	word ptr cs:[rax + rax]
.label_230:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_291
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_264:
	mov	rsp, rsp
	dec	rbx
	cmp	rbx, 1
	lea	rsi, [rsi]
	jg	.label_230
	jmp	.label_111
.label_124:
	mov	rsp, rsp
	xor	edi, edi
.label_142:
	mov	rdx, rbx
	sub	rdx, rcx
	mov	rsp, rsp
	sub	rdx, rax
	mov	rsp, rsp
	add	rdx, rsi
	add	rdx, rdi
	lea	rsi, [rsi]
	test	rdx, rdx
	jle	.label_111
	add	rdi, rbx
	lea	rdi, [rdi]
	lea	rbx, [rsi + rdi + 1]
	mov	rbp, rbp
	sub	rbx, rcx
	mov	rsp, rsp
	sub	rbx, rax
	lea	rsi, [rsi]
	jmp	.label_297
.label_86:
	lea	rsi, [rsi]
	mov	esi, 0x20
	call	__overflow
	jmp	.label_311
	nop	dword ptr [rax]
.label_297:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_86
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0x20
.label_311:
	dec	rbx
	cmp	rbx, 1
	jg	.label_297
.label_111:
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	je	.label_68
	nop	
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_68:
	mov	rdi,  qword ptr [word ptr [rip + before]]
	mov	rsi,  qword ptr [word ptr [rip + label_40]]
	call	print_field
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + gap_size]]
	test	rbx, rbx
	mov	rbp, rbp
	jle	.label_328
	inc	rbx
	lea	rsi, [rsi]
	jmp	.label_115
.label_21:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_190
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_21
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
.label_190:
	mov	rsp, rsp
	dec	rbx
	cmp	rbx, 1
	lea	rsi, [rsi]
	jg	.label_115
.label_328:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + keyafter]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + label_13]]
	lea	rdi, [rdi]
	call	print_field
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	je	.label_28
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_28:
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + head]]
	nop	
	mov	rsi,  qword ptr [word ptr [rip + label_54]]
	mov	rsp, rsp
	mov	rcx, rbp
	sub	rcx, rsi
	nop	
	jae	.label_178
	mov	rbp, rbp
	mov	r9,  qword ptr [word ptr [rip + half_line_width]]
	mov	rsp, rsp
	mov	r8,  qword ptr [word ptr [rip + label_13]]
	mov	r10,  qword ptr [word ptr [rip + keyafter]]
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
	nop	
	xor	ebx, ebx
	mov	rbp, rbp
	sub	rbx, rax
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	nop	
	mov	rdx, rbx
	jne	.label_308
	xor	edx, edx
.label_308:
	mov	al,  byte ptr [byte ptr [rip + head_truncation]]
	mov	rsp, rsp
	test	al, al
	mov	edi, 0
	cmove	rbx, rdi
	add	rcx, r9
	sub	rcx, r8
	nop	
	add	rcx, r10
	add	rcx, rdx
	add	rcx, rbx
	mov	rsp, rsp
	test	rcx, rcx
	jle	.label_195
	lea	rdi, [rdi]
	add	rdx, rbx
	lea	rdi, [rdi]
	add	rdx, rbp
	lea	rdi, [rdi]
	add	rdx, r9
	lea	rbx, [r10 + rdx + 1]
	lea	rdi, [rdi]
	sub	rbx, rsi
	sub	rbx, r8
	mov	rbp, rbp
	jmp	.label_92
.label_220:
	mov	rsp, rsp
	mov	esi, 0x20
	nop	
	call	__overflow
	mov	rbp, rbp
	jmp	.label_110
	nop	dword ptr [rax + rax]
.label_92:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_220
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_110:
	lea	rdi, [rdi]
	dec	rbx
	cmp	rbx, 1
	jg	.label_92
	mov	al,  byte ptr [byte ptr [rip + head_truncation]]
.label_195:
	test	al, al
	je	.label_136
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_136:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + head]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + label_54]]
	lea	rsi, [rsi]
	call	print_field
	mov	ebp, 1
	jmp	.label_138
.label_178:
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	lea	rsi, [rsi]
	mov	ebp, 1
	jne	.label_330
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_138
.label_330:
	movzx	eax,  byte ptr [byte ptr [rip + right_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_138
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + half_line_width]]
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_13]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + keyafter]]
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	je	.label_179
	mov	rdi,  qword ptr [word ptr [rip + truncation_string_length]]
	xor	esi, esi
	sub	rsi, rdi
	lea	rsi, [rsi]
	jmp	.label_134
.label_309:
	inc	rbx
	lea	rsi, [rsi]
	jmp	.label_172
.label_75:
	lea	rbx, [rbp + 1]
.label_157:
	mov	rdi, rbp
	mov	rsi, rbx
	call	print_field
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.91
	call	fputs_unlocked
	mov	rdi, rbx
	mov	rsi, r15
	mov	rbp, rbp
	call	print_field
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.91
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + head]]
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + label_54]]
	call	print_field
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_229
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x7d
.label_61:
	mov	rsp, rsp
	mov	ebp, 1
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	jne	.label_57
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_12
.label_57:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_67
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0x7b
.label_79:
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	mov	rsi,  qword ptr [word ptr [rip + label_45]]
	mov	rsp, rsp
	call	print_field
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_294
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7d
	jmp	.label_12
.label_179:
	mov	rbp, rbp
	xor	esi, esi
.label_134:
	mov	rdi, rcx
	lea	rsi, [rsi]
	sub	rdi, rax
	add	rdi, rdx
	lea	rsi, [rsi]
	add	rdi, rsi
	test	rdi, rdi
	jle	.label_138
	add	rsi, rcx
	lea	rdi, [rdi]
	lea	rbx, [rdx + rsi + 1]
	sub	rbx, rax
	jmp	.label_36
.label_35:
	mov	esi, 0x20
	mov	rbp, rbp
	call	__overflow
	jmp	.label_316
	nop	word ptr [rax + rax]
.label_36:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_35
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x20
.label_316:
	dec	rbx
	cmp	rbx, 1
	jg	.label_36
	nop	word ptr cs:[rax + rax]
.label_138:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	mov	rsp, rsp
	jne	.label_335
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	nop	
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_12
.label_335:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + right_reference]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_12
	mov	rbx,  qword ptr [word ptr [rip + gap_size]]
	mov	rbp, rbp
	test	rbx, rbx
	jle	.label_106
	inc	rbx
	jmp	.label_10
.label_25:
	lea	rsi, [rsi]
	mov	esi, 0x20
	call	__overflow
	mov	rsp, rsp
	jmp	.label_19
	nop	dword ptr [rax]
.label_10:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_25
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x20
.label_19:
	dec	rbx
	nop	
	cmp	rbx, 1
	jg	.label_10
.label_106:
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + label_45]]
	lea	rdi, [rdi]
	call	print_field
	nop	dword ptr [rax + rax]
.label_12:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_332
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0xa
.label_14:
	lea	rsi, [rsi]
	add	r14, 0x30
	mov	rax, qword ptr [rsp + 0x20]
	inc	rax
	cmp	rax,  qword ptr [word ptr [rip + number_of_occurs.0]]
	mov	rbp, rbp
	jl	.label_78
.label_333:
	xor	eax, eax
	add	rsp, 0x68
	nop	
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_303:
	mov	al,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	al, 1
	je	.label_91
	mov	edi, OFFSET FLAT:word_fastmap
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, 0x100
	call	memset
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + label_99]],  0
	mov	word ptr [word ptr [rip + label_100]],  0
	nop	
	jmp	.label_101
.label_91:
	xor	ebx, ebx
	call	__ctype_b_loc
	nop	word ptr cs:[rax + rax]
.label_120:
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [byte ptr [rbx + word_fastmap]],  cl
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	movzx	ecx, word ptr [rcx + rbx*2 + 2]
	shr	ecx, 0xa
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rbx + label_117]],  cl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 4]
	nop	
	shr	ecx, 0xa
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [byte ptr [rbx + label_118]],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 6]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [byte ptr [rbx + label_119]],  cl
	add	rbx, 4
	lea	rsi, [rsi]
	cmp	rbx, 0x100
	lea	rsi, [rsi]
	jne	.label_120
	jmp	.label_101
.label_283:
	call	matcher_error
.label_34:
	lea	rdi, [rdi]
	call	matcher_error
.label_70:
	lea	rdi, [rdi]
	call	matcher_error
.label_219:
	call	matcher_error
.label_161:
	lea	rsi, [rsi]
	call	matcher_error
.label_186:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.67
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + context_regex]]
.label_296:
	call	quote
	mov	rcx, rax
	nop	
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbx
	call	error
.label_188:
	mov	rsp, rsp
	call	matcher_error
.label_313:
	nop	
	cmp	eax, 0xffffff7d
	je	.label_197
	cmp	eax, 0xffffff7e
	mov	rsp, rsp
	jne	.label_130
	xor	edi, edi
	call	usage
.label_197:
	mov	r14,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rbp,  qword ptr [word ptr [rip + Version]]
	mov	edi, OFFSET FLAT:.str.19
	mov	esi, OFFSET FLAT:.str.20
	lea	rsi, [rsi]
	call	proper_name_utf8
	nop	
	mov	rbx, rax
	mov	esi, OFFSET FLAT:.str.10
	nop	
	mov	edx, OFFSET FLAT:.str.17
	xor	r9d, r9d
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	version_etc
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_130:
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	call	usage
.label_324:
	lea	rsi, [rsi]
	call	xalloc_die
.label_60:
	call	xalloc_die
.label_341:
	lea	rdi, [rdi]
	call	xalloc_die
.label_302:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + rax*8]
	call	quote
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbp
	nop	
	call	error
	mov	edi, 1
	call	usage
.label_273:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.15
	jmp	.label_284
.label_305:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
.label_284:
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	jmp	.label_296
.label_175:
	call	__errno_location
	nop	
	mov	ebp, dword ptr [rax]
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdx, qword ptr [rbx + rax*8]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405360

	.globl copy_unescaped_string
	.type copy_unescaped_string, @function
copy_unescaped_string:
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	call	strlen
	nop	
	lea	rdi, [rax + 1]
	nop	
	call	xmalloc
	mov	r14, rax
	mov	rbp, rbp
	mov	al, byte ptr [rbx]
	nop	
	test	al, al
	nop	
	mov	r15, r14
	je	.label_380
	mov	rbp, rbp
	mov	r15, r14
	mov	rsp, rsp
	jmp	.label_359
.label_373:
	movsx	eax, dl
	lea	rsi, [rsi]
	mov	cl, al
	add	cl, 0x9f
	movzx	ecx, cl
	nop	
	cmp	ecx, 5
	ja	.label_363
	add	eax, -0x57
	jmp	.label_367
.label_375:
	mov	rsp, rsp
	add	rbx, 2
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_368
.label_363:
	lea	rdi, [rdi]
	add	dl, 0xbf
	lea	rdi, [rdi]
	movzx	ecx, dl
	cmp	ecx, 5
	ja	.label_371
	add	eax, -0x37
	jmp	.label_367
.label_354:
	nop	
	add	rbx, 3
	lea	rdi, [rdi]
	jmp	.label_368
.label_371:
	mov	rbp, rbp
	add	eax, -0x30
.label_367:
	movzx	esi, byte ptr [rbx + 3]
	lea	rsi, [rsi]
	test	byte ptr [rdi + rsi*2 + 1], 0x10
	jne	.label_378
	add	rbx, 3
	mov	rsp, rsp
	jmp	.label_352
.label_378:
	movsx	edx, sil
	mov	rsp, rsp
	shl	eax, 4
	mov	rsp, rsp
	mov	cl, dl
	mov	rsp, rsp
	add	cl, 0x9f
	movzx	ecx, cl
	cmp	ecx, 6
	jae	.label_356
	lea	rdi, [rdi]
	add	edx, -0x57
	jmp	.label_361
.label_356:
	lea	rdi, [rdi]
	add	sil, 0xbf
	lea	rsi, [rsi]
	movzx	ecx, sil
	nop	
	cmp	ecx, 6
	jae	.label_365
	lea	rsi, [rsi]
	add	edx, -0x37
	mov	rsp, rsp
	jmp	.label_361
.label_366:
	add	rbx, 4
.label_368:
	mov	rcx, rbx
	mov	rbp, rbp
	mov	byte ptr [r15], al
	mov	rsp, rsp
	jmp	.label_370
.label_365:
	add	edx, -0x30
.label_361:
	add	edx, eax
	movzx	esi, byte ptr [rbx + 4]
	test	byte ptr [rdi + rsi*2 + 1], 0x10
	jne	.label_376
	add	rbx, 4
	lea	rdi, [rdi]
	mov	eax, edx
	lea	rdi, [rdi]
	jmp	.label_352
.label_376:
	movsx	eax, sil
	shl	edx, 4
	mov	cl, al
	nop	
	add	cl, 0x9f
	movzx	ecx, cl
	nop	
	cmp	ecx, 6
	nop	
	jae	.label_353
	nop	
	add	eax, -0x57
	lea	rsi, [rsi]
	jmp	.label_360
.label_353:
	mov	rbp, rbp
	add	sil, 0xbf
	movzx	ecx, sil
	mov	rsp, rsp
	cmp	ecx, 6
	nop	
	jae	.label_364
	add	eax, -0x37
	lea	rsi, [rsi]
	jmp	.label_360
.label_364:
	mov	rsp, rsp
	add	eax, -0x30
.label_360:
	add	eax, edx
	add	rbx, 5
.label_352:
	nop	
	mov	rcx, rbx
	mov	byte ptr [r15], al
	jmp	.label_370
	nop	word ptr cs:[rax + rax]
.label_359:
	lea	rcx, [rbx + 1]
	lea	rdi, [rdi]
	movzx	edx, al
	cmp	edx, 0x5c
	nop	
	jne	.label_374
	mov	dl, byte ptr [rcx]
	lea	rdi, [rdi]
	movsx	eax, dl
	cmp	eax, 0x6d
	jg	.label_372
	lea	rdi, [rdi]
	lea	esi, [rax - 0x61]
	cmp	esi, 5
	ja	.label_379
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_355]]
.label_2786:
	mov	rsp, rsp
	mov	byte ptr [r15], 7
	jmp	.label_358
	nop	dword ptr [rax + rax]
.label_374:
	mov	rsp, rsp
	mov	byte ptr [r15], al
.label_370:
	inc	r15
	jmp	.label_357
	nop	
.label_372:
	nop	
	add	eax, -0x6e
	nop	
	cmp	eax, 0xa
	ja	.label_362
	jmp	qword ptr [word ptr [+ (rax * 8) + label_369]]
.label_2813:
	mov	byte ptr [r15], 0xa
	nop	
	jmp	.label_358
.label_379:
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_357
	mov	rbp, rbp
	cmp	eax, 0x30
	jne	.label_362
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rbx + 2]
	mov	ecx, eax
	and	ecx, 0xf8
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	lea	rsi, [rsi]
	jne	.label_375
	mov	rsp, rsp
	add	eax, -0x30
	movsx	ecx, byte ptr [rbx + 3]
	lea	rdi, [rdi]
	mov	edx, ecx
	and	edx, 0xf8
	cmp	edx, 0x30
	jne	.label_354
	mov	rbp, rbp
	lea	eax, [rcx + rax*8 - 0x30]
	nop	
	movsx	ecx, byte ptr [rbx + 4]
	nop	
	mov	edx, ecx
	mov	rbp, rbp
	and	edx, 0xf8
	lea	rdi, [rdi]
	cmp	edx, 0x30
	jne	.label_366
	lea	eax, [rcx + rax*8 - 0x30]
	lea	rdi, [rdi]
	add	rbx, 5
	jmp	.label_368
.label_2787:
	mov	byte ptr [r15], 8
	jmp	.label_358
.label_2788:
	mov	rsp, rsp
	test	dl, dl
	lea	rdi, [rdi]
	je	.label_357
	inc	rbx
	mov	rbp, rbp
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_351:
	cmp	byte ptr [rcx + 1], 0
	lea	rdi, [rdi]
	lea	rcx, [rcx + 1]
	jne	.label_351
	nop	
	jmp	.label_357
.label_2789:
	mov	byte ptr [r15], 0xc
	lea	rdi, [rdi]
	jmp	.label_358
.label_2814:
	lea	rdi, [rdi]
	mov	byte ptr [r15], 0xd
	mov	rbp, rbp
	jmp	.label_358
.label_2815:
	mov	rsp, rsp
	mov	byte ptr [r15], 9
	jmp	.label_358
.label_2816:
	lea	rsi, [rsi]
	mov	byte ptr [r15], 0xb
	nop	dword ptr [rax + rax]
.label_358:
	nop	
	inc	r15
	mov	rbp, rbp
	add	rbx, 2
	mov	rcx, rbx
	mov	rsp, rsp
	jmp	.label_357
.label_2817:
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rbx + 2]
	test	byte ptr [rdi + rdx*2 + 1], 0x10
	jne	.label_373
	lea	rdi, [rdi]
	add	rbx, 2
	lea	rdi, [rdi]
	mov	word ptr [r15], 0x785c
	lea	rdi, [rdi]
	jmp	.label_377
.label_362:
	mov	rsp, rsp
	mov	byte ptr [r15], 0x5c
	mov	al, byte ptr [rbx + 1]
	add	rbx, 2
	lea	rdi, [rdi]
	mov	byte ptr [r15 + 1], al
.label_377:
	lea	rsi, [rsi]
	add	r15, 2
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_357:
	nop	
	mov	al, byte ptr [rcx]
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	mov	rbx, rcx
	jne	.label_359
.label_380:
	mov	byte ptr [r15], 0
	mov	rax, r14
	mov	rsp, rsp
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056e0

	.globl digest_word_file
	.type digest_word_file, @function
digest_word_file:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x18
	nop	
	mov	r14, rsi
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	call	swallow_file_in_memory
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	mov	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x10]
	xor	esi, esi
	cmp	rbx, r13
	lea	rsi, [rsi]
	mov	edi, 0
	lea	rsi, [rsi]
	jae	.label_383
	xor	edi, edi
	movabs	r12, 0x555555555555555
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
.label_388:
	cmp	rbx, r13
	mov	rbp, rbp
	mov	rbp, rbx
	jae	.label_386
	nop	dword ptr [rax + rax]
.label_391:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0xa
	je	.label_382
	mov	rsp, rsp
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, r13
	nop	
	jb	.label_391
.label_382:
	mov	r15, rbp
	sub	r15, rbx
	jbe	.label_381
	cmp	rsi, qword ptr [r14 + 8]
	jne	.label_390
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_385
	cmp	rsi, r12
	mov	rbp, rbp
	jae	.label_387
	mov	rax, rsi
	mov	rbp, rbp
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_389
	nop	word ptr cs:[rax + rax]
.label_386:
	lea	rsi, [rsi]
	mov	rbp, rbx
	nop	
	jmp	.label_381
.label_385:
	mov	rbp, rbp
	test	rsi, rsi
	nop	
	mov	eax, 8
	nop	
	cmove	rsi, rax
	lea	rsi, [rsi]
	mov	rax, rsi
	shr	rax, 0x3b
	jne	.label_384
.label_389:
	mov	qword ptr [r14 + 8], rsi
	nop	
	shl	rsi, 4
	call	xrealloc
	mov	rdi, rax
	nop	
	mov	qword ptr [r14], rdi
	mov	rsi, qword ptr [r14 + 0x10]
.label_390:
	lea	rdi, [rdi]
	mov	rax, rsi
	nop	
	shl	rax, 4
	mov	qword ptr [rdi + rax], rbx
	nop	
	mov	qword ptr [rdi + rax + 8], r15
	lea	rdi, [rdi]
	inc	rsi
	mov	qword ptr [r14 + 0x10], rsi
.label_381:
	lea	rbx, [rbp + 1]
	mov	rbp, rbp
	cmp	rbp, r13
	cmovae	rbx, rbp
	lea	rdi, [rdi]
	cmp	rbx, r13
	jb	.label_388
.label_383:
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_words
	call	qsort
	nop	
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_387:
	mov	rsp, rsp
	call	xalloc_die
.label_384:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405870

	.globl swallow_file_in_memory
	.type swallow_file_in_memory, @function
swallow_file_in_memory:
	push	rbp
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_393
	nop	
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_393
	nop	
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_394
	cmp	byte ptr [rbx + 1], 0
	lea	rsi, [rsi]
	je	.label_393
.label_394:
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	read_file
	mov	qword ptr [r14], rax
	mov	rbp, rbp
	jmp	.label_395
.label_393:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	lea	rsi, [rsp + 8]
	lea	rsi, [rsi]
	call	fread_file
	nop	
	mov	qword ptr [r14], rax
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.21
.label_395:
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_392
	nop	
	add	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14 + 8], rax
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	rbp
	ret	
.label_392:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdx, rbx
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405950

	.globl compile_regex
	.type compile_regex, @function
compile_regex:
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r15, qword ptr [rdi]
	lea	rax, [rdi + 0x48]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rax
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	nop	
	xor	ecx, ecx
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:folded_chars
	mov	rsp, rsp
	cmovne	rcx, rax
	mov	qword ptr [rdi + 0x30], rcx
	lea	rbx, [rdi + 8]
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rsp, rsp
	call	rpl_re_compile_pattern
	mov	r14, rax
	lea	rdi, [rdi]
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_396
	mov	rdi, rbx
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	jmp	rpl_re_compile_fastmap
.label_396:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	r12, rax
	lea	rdi, [rdi]
	mov	rdi, r15
	call	quote
	mov	rbx, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	lea	rsi, [rsi]
	mov	rcx, r14
	nop	
	mov	r8, rbx
	nop	
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a40

	.globl compare_words
	.type compare_words, @function
compare_words:
	nop
	mov	r8, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	r8, r9
	mov	rsp, rsp
	mov	rdx, r9
	mov	rsp, rsp
	cmovle	rdx, r8
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	and	al, 1
	je	.label_398
	test	rdx, rdx
	jle	.label_400
	mov	rsp, rsp
	mov	r10, qword ptr [rdi]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
.label_399:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax,  byte ptr [byte ptr [rax + folded_chars]]
	mov	rsp, rsp
	movzx	edi, byte ptr [rsi + rcx]
	lea	rsi, [rsi]
	movzx	edi,  byte ptr [byte ptr [rdi + folded_chars]]
	sub	eax, edi
	nop	
	jne	.label_397
	inc	rcx
	cmp	rcx, rdx
	nop	
	jl	.label_399
	jmp	.label_400
.label_398:
	test	rdx, rdx
	jle	.label_400
	mov	r10, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_401:
	movzx	eax, byte ptr [r10 + rdi]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rsi + rdi]
	sub	eax, ecx
	jne	.label_397
	inc	rdi
	cmp	rdi, rdx
	lea	rdi, [rdi]
	jl	.label_401
.label_400:
	cmp	r8, r9
	setg	al
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovge	eax, ecx
.label_397:
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b00

	.globl matcher_error
	.type matcher_error, @function
matcher_error:
	push	rbx
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.68
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b50

	.globl compare_occurs
	.type compare_occurs, @function
compare_occurs:
	push	rbx
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 8]
	nop	
	mov	r9, qword ptr [rsi + 8]
	cmp	r8, r9
	mov	rdx, r9
	cmovle	rdx, r8
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	and	al, 1
	mov	rbp, rbp
	je	.label_406
	lea	rsi, [rsi]
	test	rdx, rdx
	nop	
	jle	.label_405
	mov	r10, qword ptr [rdi]
	mov	r11, qword ptr [rsi]
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_407:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax,  byte ptr [byte ptr [rax + folded_chars]]
	lea	rsi, [rsi]
	movzx	ebx, byte ptr [r11 + rcx]
	mov	rbp, rbp
	movzx	ebx,  byte ptr [byte ptr [rbx + folded_chars]]
	mov	rsp, rsp
	sub	eax, ebx
	lea	rsi, [rsi]
	jne	.label_402
	lea	rdi, [rdi]
	inc	rcx
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jl	.label_407
	lea	rsi, [rsi]
	jmp	.label_405
.label_406:
	lea	rsi, [rsi]
	test	rdx, rdx
	lea	rdi, [rdi]
	jle	.label_405
	mov	r10, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsi]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_403:
	mov	rbp, rbp
	movzx	eax, byte ptr [r10 + rcx]
	movzx	ebx, byte ptr [r11 + rcx]
	sub	eax, ebx
	jne	.label_402
	inc	rcx
	nop	
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jl	.label_403
.label_405:
	cmp	r8, r9
	nop	
	setg	cl
	mov	rsp, rsp
	mov	eax, 0xffffffff
	jl	.label_404
	movzx	eax, cl
.label_402:
	test	eax, eax
	mov	rsp, rsp
	jne	.label_404
	nop	
	mov	rcx, qword ptr [rdi]
	nop	
	mov	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	eax, 0xffffffff
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_404
	mov	rsp, rsp
	cmp	rdx, rcx
	mov	rsp, rsp
	sbb	eax, eax
	and	eax, 1
.label_404:
	nop	
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c60

	.globl print_field
	.type print_field, @function
print_field:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	r15, r14
	jae	.label_417
	mov	r12d, OFFSET FLAT:.str.77
	jmp	.label_408
.label_426:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	edi, OFFSET FLAT:.str.83
	nop	
	call	fputs_unlocked
	jmp	.label_411
.label_413:
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.85
	mov	rbp, rbp
	call	fputs_unlocked
	jmp	.label_411
.label_409:
	mov	esi, 0x5c
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_424
.label_414:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.75
	call	fputs_unlocked
	mov	rbp, rbp
	jmp	.label_411
.label_429:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.74
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	jmp	.label_411
.label_415:
	mov	esi, 0x20
	nop	
	call	__overflow
	jmp	.label_411
.label_419:
	mov	rbp, rbp
	mov	esi, 0x22
	call	__overflow
	mov	rsp, rsp
	jmp	.label_418
.label_421:
	lea	rsi, [rsi]
	mov	esi, 0x22
	nop	
	call	__overflow
	jmp	.label_411
	nop	word ptr cs:[rax + rax]
.label_408:
	mov	bpl, byte ptr [r15]
	movzx	ebx, bpl
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rbx + edited_flag]],  0
	lea	rdi, [rdi]
	je	.label_424
	movsx	eax,  byte ptr [byte ptr [rbx + diacrit_diac]]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_430
	cmp	dword ptr [dword ptr [rip + output_format]],  3
	mov	rbp, rbp
	jne	.label_430
	lea	rdi, [rdi]
	dec	eax
	mov	rsp, rsp
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_411
	mov	rsp, rsp
	movsx	ecx,  byte ptr [byte ptr [rbx + diacrit_base]]
	nop	
	jmp	qword ptr [word ptr [+ (rax * 8) + label_416]]
.label_2791:
	mov	rsp, rsp
	movzx	eax, cl
	lea	rsi, [rsi]
	cmp	eax, 0x69
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, r12
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.76
	lea	rsi, [rsi]
	jmp	.label_420
	nop	dword ptr [rax]
.label_430:
	cmp	ebx, 0x5b
	nop	
	jg	.label_423
	lea	eax, [rbx - 0x23]
	mov	rbp, rbp
	cmp	eax, 4
	lea	rsi, [rsi]
	jb	.label_428
	lea	rsi, [rsi]
	cmp	ebx, 0x22
	lea	rsi, [rsi]
	jne	.label_410
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_419
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_418:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	nop	
	jae	.label_421
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0x22
	mov	rbp, rbp
	jmp	.label_411
.label_423:
	cmp	ebx, 0x7a
	mov	rbp, rbp
	jg	.label_425
	mov	rbp, rbp
	cmp	ebx, 0x5c
	je	.label_431
	mov	rsp, rsp
	cmp	ebx, 0x5f
	jne	.label_410
.label_428:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_409
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
.label_424:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_422
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
	jmp	.label_411
.label_425:
	cmp	ebx, 0x7b
	je	.label_427
	nop	
	cmp	ebx, 0x7d
	jne	.label_410
.label_427:
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.86
	xor	eax, eax
	mov	edx, ebx
	call	__printf_chk
	nop	
	jmp	.label_411
.label_2790:
	cmp	ecx, 0x60
	jg	.label_412
	lea	rsi, [rsi]
	cmp	ecx, 0x41
	je	.label_414
	cmp	ecx, 0x4f
	mov	rsp, rsp
	jne	.label_410
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.73
	mov	rsp, rsp
	call	fputs_unlocked
	jmp	.label_411
.label_2792:
	mov	rbp, rbp
	movzx	eax, cl
	cmp	eax, 0x69
	nop	
	mov	edx, OFFSET FLAT:.str_0
	nop	
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.78
	mov	rbp, rbp
	jmp	.label_420
.label_2793:
	movzx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0x69
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.79
	lea	rdi, [rdi]
	jmp	.label_420
.label_2794:
	nop	
	movzx	eax, cl
	cmp	eax, 0x69
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, r12
	mov	edi, 1
	nop	
	mov	esi, OFFSET FLAT:.str.80
.label_420:
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	jmp	.label_411
.label_2795:
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	mov	esi, OFFSET FLAT:.str.81
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, ecx
	mov	rsp, rsp
	call	__printf_chk
	mov	rsp, rsp
	jmp	.label_411
.label_2796:
	nop	
	cmp	ecx, 0x41
	mov	rbp, rbp
	je	.label_426
	nop	
	cmp	ecx, 0x61
	lea	rdi, [rdi]
	jne	.label_410
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	edi, OFFSET FLAT:.str.82
	call	fputs_unlocked
	mov	rsp, rsp
	jmp	.label_411
.label_2797:
	cmp	ecx, 0x4f
	je	.label_413
	mov	rbp, rbp
	cmp	ecx, 0x6f
	lea	rdi, [rdi]
	jne	.label_410
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.84
	mov	rbp, rbp
	call	fputs_unlocked
	jmp	.label_411
.label_431:
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.87
	call	fputs_unlocked
	jmp	.label_411
.label_422:
	mov	rbp, rbp
	mov	esi, ebx
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_411
.label_412:
	mov	rbp, rbp
	cmp	ecx, 0x61
	mov	rbp, rbp
	je	.label_429
	mov	rsp, rsp
	cmp	ecx, 0x6f
	jne	.label_410
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.72
	lea	rdi, [rdi]
	call	fputs_unlocked
	jmp	.label_411
.label_410:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_415
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x20
	nop	word ptr cs:[rax + rax]
.label_411:
	mov	rbp, rbp
	inc	r15
	nop	
	cmp	r14, r15
	jne	.label_408
.label_417:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406100

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x406110

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbp
	lea	rsi, [rsi]
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_434
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], -1
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_436:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_433
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_435
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_432
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_437
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	lea	rdi, [rdi]
	add	rdi, rax
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r13
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	je	.label_433
.label_437:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_433
.label_432:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_433:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_436
	lea	rsi, [rsi]
	jmp	.label_438
.label_434:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_438:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_435:
	mov	rax, rbp
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x406290
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_439
	mov	esi, OFFSET FLAT:.str.1_0
	nop	
	jmp	.label_440
.label_439:
	nop	
	mov	esi, OFFSET FLAT:.str_2
.label_440:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x406330

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx]
	nop	
	test	rbx, rbx
	je	.label_446
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_442:
	test	r15, r15
	mov	rbp, rbp
	je	.label_441
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_445
.label_441:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_444
	nop	dword ptr [rax]
.label_445:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_444:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_442
.label_446:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_443
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_443:
	mov	rsp, rsp
	mov	esi, 0xa
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064b0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_449
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_447
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	jmp	.label_448
.label_447:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_2
.label_448:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 8
	mov	rbp, rbp
	mov	rdx, r14
	call	quotearg_n_style
	nop	
	mov	r14, rax
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	argmatch_valid
	mov	rsp, rsp
	call	rbx
	mov	rbp, rbp
	mov	rax, -1
.label_449:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065d0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_450
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_451:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_450
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_451
.label_450:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406660
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
	#Procedure 0x406670
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406680

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
	je	.label_455
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_452
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_452
.label_455:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_453
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_452:
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
	jne	.label_454
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
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
.label_453:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_454:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
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
	#Procedure 0x406780

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	mov	rbp, rbp
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	nop	
	call	fileno
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_464
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	je	.label_461
	mov	rbp, rbp
	cmp	eax, 2
	je	.label_457
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, 2
	mov	rsp, rsp
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_457:
	lea	rdi, [rdi]
	mov	r15b, r12b
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 1
	mov	rbp, rbp
	call	dup2
	nop	
	cmp	eax, 1
	mov	rsp, rsp
	setne	r12b
	jmp	.label_458
.label_464:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_456
.label_461:
	nop	
	xor	r15d, r15d
.label_458:
	nop	
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_460
	nop	
	mov	edi, OFFSET FLAT:.str_4
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	nop	
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_460
	lea	rsi, [rsi]
	mov	r13b, 1
	lea	rdi, [rdi]
	jmp	.label_466
.label_460:
	nop	
	test	r12b, r12b
	je	.label_459
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_4
	nop	
	xor	esi, esi
	nop	
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_466
.label_459:
	lea	rdi, [rdi]
	test	r15b, r15b
	lea	rdi, [rdi]
	je	.label_456
	mov	edi, OFFSET FLAT:.str_4
	xor	esi, esi
	xor	eax, eax
	call	open
	nop	
	cmp	eax, 2
	jne	.label_466
.label_456:
	mov	rdi, rbp
	nop	
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_465
.label_466:
	xor	r14d, r14d
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_465
	mov	edi, eax
	call	close
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_465:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rsi, [rsi]
	test	r15b, r15b
	nop	
	je	.label_463
	nop	
	mov	edi, 2
	call	close
.label_463:
	mov	rbp, rbp
	test	r12b, r12b
	je	.label_467
	mov	edi, 1
	nop	
	call	close
.label_467:
	test	r13b, r13b
	je	.label_468
	nop	
	xor	edi, edi
	mov	rsp, rsp
	call	close
.label_468:
	nop	
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_462
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
.label_462:
	mov	rax, r14
	add	rsp, 8
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406950

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
	je	.label_469
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
	jl	.label_471
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_471
	mov	esi, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_470
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_470:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_471:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_469:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_5
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
	#Procedure 0x406a40
	.globl proper_name
	.type proper_name, @function
proper_name:

	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	mov	rsi, rbx
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rdi]
	cmp	r14, rbx
	je	.label_472
	mov	rdi, r14
	mov	rsi, rbx
	call	mbsstr_trimmed_wordbounded
	test	al, al
	lea	rdi, [rdi]
	je	.label_473
	mov	rbp, rbp
	mov	rbx, r14
	jmp	.label_472
.label_473:
	mov	rbp, rbp
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	strlen
	lea	rsi, [rsi]
	lea	rdi, [r15 + rax + 4]
	call	xmalloc
	lea	rdi, [rdi]
	mov	r15, rax
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_6
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r15
	mov	r8, r14
	mov	r9, rbx
	call	__sprintf_chk
	nop	
	mov	rbx, r15
.label_472:
	mov	rsp, rsp
	mov	rax, rbx
	pop	rbx
	nop	
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b00

	.globl mbsstr_trimmed_wordbounded
	.type mbsstr_trimmed_wordbounded, @function
mbsstr_trimmed_wordbounded:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x88
	mov	rax, rsi
	mov	rsp, rsp
	mov	rbp, rdi
	mov	rsp, rsp
	mov	esi, 2
	mov	rdi, rax
	mov	rsp, rsp
	call	trim2
	mov	qword ptr [rsp + 0x80], rax
	cmp	byte ptr [rbp], 0
	je	.label_474
	lea	r12, [rsp + 0x40]
	lea	r15, [rsp]
	nop	word ptr [rax + rax]
.label_483:
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	call	mbsstr
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_474
	lea	rsi, [rsi]
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	cmp	rax, 2
	nop	
	jb	.label_475
	mov	qword ptr [rsp + 0x50], rbp
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x40], 0
	nop	
	mov	qword ptr [rsp + 0x44], 0
	nop	
	mov	byte ptr [rsp + 0x4c], 0
	mov	r13b, 1
	cmp	rbp, rbx
	mov	rsp, rsp
	jae	.label_476
.label_489:
	mov	rdi, r12
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x60]
	nop	
	mov	rdi, rax
	shr	rdi, 0x20
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_486
	test	edi, edi
	lea	rsi, [rsi]
	je	.label_487
.label_486:
	nop	
	mov	rcx, qword ptr [rsp + 0x50]
	add	rcx, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rcx
	mov	byte ptr [rsp + 0x4c], 0
	nop	
	cmp	rcx, rbx
	mov	rsp, rsp
	jb	.label_489
	test	al, al
	je	.label_476
	call	iswalnum
	test	eax, eax
	sete	r13b
.label_476:
	mov	qword ptr [rsp + 0x50], rbx
	nop	
	mov	byte ptr [rsp + 0x40], 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x44], 0
	mov	byte ptr [rsp + 0x4c], 0
	mov	rax, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	byte ptr [rsp], 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 4], 0
	lea	rsi, [rsi]
	jmp	.label_478
	nop	dword ptr [rax]
.label_484:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	add	qword ptr [rsp + 0x50], rax
	mov	byte ptr [rsp + 0x4c], 0
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	add	qword ptr [rsp + 0x10], rax
.label_478:
	mov	byte ptr [rsp + 0xc], 0
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	nop	
	je	.label_477
	lea	rdi, [rdi]
	shr	rax, 0x20
	je	.label_479
.label_477:
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	test	al, al
	je	.label_484
	lea	rdi, [rdi]
	shr	rax, 0x20
	jne	.label_484
	mov	rbp, rbp
	jmp	.label_487
	nop	dword ptr [rax + rax]
.label_475:
	mov	rsp, rsp
	mov	r13b, 1
	cmp	rbp, rbx
	nop	
	mov	r14b, 1
	lea	rdi, [rdi]
	jae	.label_491
	mov	rsp, rsp
	movzx	ebp, byte ptr [rbx - 1]
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	mov	rsp, rsp
	sete	r14b
.label_491:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x80]
	nop	
	call	strlen
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rbx + rax]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_482
	nop	
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	test	byte ptr [rax + rbp*2], 8
	lea	rdi, [rdi]
	sete	r13b
.label_482:
	mov	bpl, 1
	test	r14b, r13b
	lea	rdi, [rdi]
	jne	.label_480
	mov	rsp, rsp
	cmp	byte ptr [rbx], 0
	je	.label_474
	mov	rsp, rsp
	inc	rbx
	jmp	.label_488
	nop	
.label_479:
	lea	rsi, [rsi]
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	shr	rdi, 0x20
	mov	rsp, rsp
	test	edi, edi
	sete	cl
	mov	rsp, rsp
	test	al, al
	setne	dl
	test	al, al
	mov	bpl, 1
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	je	.label_481
	and	dl, cl
	mov	al, 1
	mov	rsp, rsp
	jne	.label_481
	call	iswalnum
	test	eax, eax
	sete	al
.label_481:
	test	r13b, r13b
	lea	rdi, [rdi]
	je	.label_485
	nop	
	test	al, al
	mov	rsp, rsp
	jne	.label_480
.label_485:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rbx
	nop	
	mov	byte ptr [rsp + 0x40], 0
	mov	qword ptr [rsp + 0x44], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x4c], 0
	lea	rsi, [rsi]
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	lea	rdi, [rdi]
	je	.label_490
	shr	rax, 0x20
	mov	rsp, rsp
	je	.label_474
.label_490:
	add	rbx, qword ptr [rsp + 0x58]
.label_488:
	mov	rbp, rbx
	cmp	byte ptr [rbp], 0
	mov	rsp, rsp
	jne	.label_483
.label_474:
	xor	ebp, ebp
.label_480:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	lea	rdi, [rdi]
	mov	al, bpl
	add	rsp, 0x88
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_487:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e60

	.globl proper_name_utf8
	.type proper_name_utf8, @function
proper_name_utf8:
	nop	
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r13, rsi
	mov	r12, rdi
	xor	edi, edi
	mov	edx, 5
	lea	rdi, [rdi]
	mov	rsi, r12
	call	dcgettext
	mov	rbx, rax
	call	locale_charset
	mov	rsp, rsp
	mov	r14, rax
	mov	esi, OFFSET FLAT:.str.1_3
	mov	rdi, r14
	call	c_strcasecmp
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_498
	nop	
	mov	qword ptr [rsp + 0x10], rbx
	nop	
	mov	esi, OFFSET FLAT:.str.1_3
	nop	
	mov	rdi, r13
	mov	rdx, r14
	lea	rdi, [rdi]
	call	xstr_iconv
	mov	r15, rax
	mov	rdi, r14
	nop	
	call	strlen
	nop	
	mov	rbx, rax
	lea	rdi, [rbx + 0xb]
	call	xmalloc
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memcpy
	movabs	rax, 0x4c534e4152542f2f
	mov	qword ptr [rbp + rbx], rax
	mov	byte ptr [rbp + rbx + 0xa], 0
	lea	rsi, [rsi]
	mov	word ptr [rbp + rbx + 8], 0x5449
	mov	esi, OFFSET FLAT:.str.1_3
	mov	rdi, r13
	mov	rdx, rbp
	mov	rbp, rbp
	call	xstr_iconv
	mov	rsp, rsp
	mov	r13, rax
	mov	rdi, rbp
	call	free
	test	r13, r13
	mov	rsp, rsp
	je	.label_499
	mov	esi, 0x3f
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strchr
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_501
	nop	
	mov	rdi, r13
	nop	
	call	free
	xor	r13d, r13d
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	jmp	.label_504
.label_498:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	r15, r13
	xor	ebp, ebp
	jmp	.label_493
.label_499:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_504
.label_501:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r13
.label_504:
	mov	rbp, r15
	mov	rbx, qword ptr [rsp + 0x10]
.label_493:
	lea	rsi, [rsi]
	test	r13, r13
	mov	r14, r12
	cmovne	r14, r13
	mov	rbp, rbp
	test	r15, r15
	cmovne	r14, r15
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r12
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	je	.label_502
	mov	rdi, rbx
	mov	rsi, r12
	mov	rbp, rbp
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_495
	mov	rsp, rsp
	test	r15, r15
	nop	
	je	.label_505
	mov	rdi, rbx
	mov	rsi, r15
	nop	
	call	mbsstr_trimmed_wordbounded
	lea	rdi, [rdi]
	test	al, al
	nop	
	jne	.label_495
.label_505:
	test	r13, r13
	je	.label_497
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r13
	nop	
	call	mbsstr_trimmed_wordbounded
	test	al, al
	je	.label_497
.label_495:
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_500
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	call	free
.label_500:
	nop	
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_496
	nop	
	call	free
	mov	rsp, rsp
	jmp	.label_496
.label_502:
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_503
	lea	rdi, [rdi]
	cmp	rbp, r14
	mov	rbp, rbp
	je	.label_503
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
.label_503:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_494
	cmp	rdi, r14
	je	.label_494
	nop	
	call	free
.label_494:
	nop	
	mov	rbx, r14
	jmp	.label_496
.label_497:
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	strlen
	mov	r15, rbx
	mov	rbx, rax
	mov	rdi, r14
	nop	
	call	strlen
	nop	
	lea	rdi, [rbx + rax + 4]
	call	xmalloc
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	mov	r8, r15
	nop	
	mov	r9, r14
	lea	rdi, [rdi]
	call	__sprintf_chk
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_492
	mov	rdi, rbp
	call	free
.label_492:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_496
	lea	rsi, [rsi]
	call	free
.label_496:
	mov	rax, rbx
	add	rsp, 0x18
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407150
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
	#Procedure 0x4071a0
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
	#Procedure 0x4071c0
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
	#Procedure 0x4071e0
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
	#Procedure 0x407250
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
	#Procedure 0x407270
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
	je	.label_506
	test	rdx, rdx
	nop	
	je	.label_506
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_506:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4072b0
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
	#Procedure 0x407360

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
.label_557:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_532
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_542]]
.label_2828:
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
.label_2829:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_564
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_564
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_582:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_578
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_578:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_582
.label_564:
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
	jmp	.label_534
.label_2821:
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
	jmp	.label_534
.label_2824:
	lea	rsi, [rsi]
	mov	al, 1
.label_2822:
	mov	rbp, rbp
	mov	r12b, 1
.label_2825:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_616
	lea	rsi, [rsi]
	mov	cl, al
.label_616:
	mov	rsp, rsp
	mov	al, cl
.label_2823:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_620
	test	r10, r10
	je	.label_628
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_515
.label_620:
	xor	ecx, ecx
	jmp	.label_515
.label_2826:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_516
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_522
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_526
.label_2827:
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
	jmp	.label_534
.label_628:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_515:
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
	jmp	.label_534
.label_516:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_526
.label_522:
	lea	rdi, [rdi]
	mov	eax, 1
.label_526:
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
.label_534:
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
	jmp	.label_576
	nop	word ptr cs:[rax + rax]
.label_536:
	nop	
	inc	rdi
.label_576:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_617
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_583
	jmp	.label_623
	nop	dword ptr [rax + rax]
.label_617:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_627
.label_583:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_509
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_513
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_513
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
.label_513:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_554
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_520
	nop	dword ptr [rax + rax]
.label_509:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_520
	nop	word ptr cs:[rax + rax]
.label_554:
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
	jne	.label_579
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
	je	.label_520
	jmp	.label_511
.label_579:
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
.label_520:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_593
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_613]]
.label_2865:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_535
	mov	rbp, rbp
	jmp	.label_614
.label_2869:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_615
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_618
	nop	
	cmp	rbp, 1
	je	.label_614
	xor	r13d, r13d
	jmp	.label_518
.label_2858:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_630
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_511
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_517
	mov	al, r14b
	and	al, 1
	jne	.label_521
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_525
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_525:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_537
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_537:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_546
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_546:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_545
.label_2859:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_539
.label_2860:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_559
.label_2861:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_539
.label_2862:
	mov	bl, 0x66
	jmp	.label_539
.label_2863:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_559
.label_2866:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_572
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_575
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
	jae	.label_519
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_519:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_592
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_592:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_600
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_600:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_572:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_518
.label_2867:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_541
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_535
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_535
	mov	rbp, rbp
	jmp	.label_622
.label_2868:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_625
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_631
	lea	rdi, [rdi]
	jmp	.label_512
.label_593:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_549
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
.label_540:
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
	ja	.label_544
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_544
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_518
.label_615:
	test	rdi, rdi
	jne	.label_562
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_562
.label_614:
	mov	dl, 1
.label_2864:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_569
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_518
.label_630:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_536
	jmp	.label_535
.label_625:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_559
.label_631:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_556
.label_559:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_580
.label_539:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_518
	lea	rsi, [rsi]
	jmp	.label_558
.label_549:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_591
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
.label_591:
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
.label_548:
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
	je	.label_626
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_507
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_604
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_586
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_553:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_543
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_570
.label_543:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_553
.label_586:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_624
	xor	r13d, r13d
.label_624:
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
	je	.label_548
	mov	rsp, rsp
	jmp	.label_540
.label_562:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_518
.label_541:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_535
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_535
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_535
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_589
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_587
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_598
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_602
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_602:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_610
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_610:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_563
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_563:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_601
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_601:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_518
.label_535:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_518:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_608
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_528
	lea	rsi, [rsi]
	jmp	.label_533
.label_608:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_533
.label_528:
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
	jne	.label_538
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_550
	nop	word ptr cs:[rax + rax]
.label_533:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_550:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_556
	mov	rsp, rsp
	jmp	.label_558
.label_538:
	mov	bl, r15b
.label_558:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_511
	nop	
	cmp	r9d, 2
	jne	.label_573
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_573
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_596
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_596:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_577
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_577:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_565
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_565:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_573:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_606
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_606:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_590
.label_618:
	xor	r13d, r13d
	nop	
	jmp	.label_518
.label_544:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_597
	nop	dword ptr [rax + rax]
.label_529:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_597:
	test	cl, cl
	je	.label_605
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_568
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_612
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_612:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_568
	nop	dword ptr [rax]
.label_605:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_511
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_510
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_510
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_547
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_547:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_523
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_523:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_629
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_629:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_510:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_551
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_551:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_555
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_555:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_567
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
.label_567:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_568:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_556
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_584
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_584
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_588
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_588:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_595
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_595:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_584:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_529
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_529
	nop	word ptr cs:[rax + rax]
.label_556:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_619
	mov	rsp, rsp
	and	al, 1
	jne	.label_619
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_607
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_607:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_530
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_530:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_619:
	mov	rsp, rsp
	mov	bl, r15b
.label_590:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_594
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_594:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_536
.label_517:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_545
.label_521:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_545:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_552
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_552:
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
	je	.label_574
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_561
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_560
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_571
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_571:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_621
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_621:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_518
.label_574:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_518
.label_561:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_518
.label_560:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_518
.label_507:
	xor	r13d, r13d
.label_626:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_540
.label_604:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_599
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_611:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_609
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_611
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_540
.label_599:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_540
.label_609:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_540
.label_589:
	xor	r13d, r13d
	jmp	.label_518
.label_587:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_518
.label_623:
	nop	
	mov	r13, rdi
.label_627:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_514
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_527
.label_514:
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
	je	.label_531
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_531
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_603
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_531
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_557
.label_531:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_566
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_566
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_566
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_581:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_508
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_508:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_581
.label_566:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_585
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_585
.label_569:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_511
.label_570:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_511
.label_527:
	nop	
	mov	rbp, r13
	jmp	.label_511
.label_580:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_511:
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
.label_524:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_585:
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
.label_603:
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
	jmp	.label_524
.label_575:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_511
.label_512:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_511
.label_622:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_511
.label_598:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_511
.label_532:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088e0
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
	#Procedure 0x408a20
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
	je	.label_632
	mov	qword ptr [rax], rbx
.label_632:
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
	#Procedure 0x408b70
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_633
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_637:
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
	jl	.label_637
.label_633:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_636
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_634]], OFFSET FLAT:slot0
.label_636:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_635
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_635:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c30
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x408c40

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
	js	.label_641
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_643
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_639
.label_643:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_644
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
	jne	.label_640
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_640:
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
.label_639:
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
	ja	.label_638
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
	je	.label_642
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_642:
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
.label_638:
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
.label_641:
	lea	rdi, [rdi]
	call	abort
.label_644:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x408eb0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408ec0
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
	#Procedure 0x408ef0
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
	#Procedure 0x408f20

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
	je	.label_645
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
.label_645:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408fb0
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
	je	.label_646
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
.label_646:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409050
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
	je	.label_647
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
.label_647:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090e0
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
	je	.label_648
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
.label_648:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409150
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_649]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_651]]
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
	#Procedure 0x4091f0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_649]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_651]]
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
	#Procedure 0x409290

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_649]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_651]]
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
	#Procedure 0x409300
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_649]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_651]]
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
	#Procedure 0x409370

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
	je	.label_652
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
.label_652:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409450
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_649]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_651]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_653
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_653
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
.label_653:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4094e0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_649]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_651]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_654
	test	rdx, rdx
	je	.label_654
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
.label_654:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409570
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_649]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_651]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_655
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_655
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
.label_655:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409610
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_649]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_651]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_656
	test	rsi, rsi
	je	.label_656
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
.label_656:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096b0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096c0
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
	#Procedure 0x4096e0

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
	#Procedure 0x409700

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
	#Procedure 0x409730

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
	jne	.label_658
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_660
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_657
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_657
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_657
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_657
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_657
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_657
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_658
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_658
.label_660:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_657
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_657
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_657
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_657
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_657
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_657
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_659
.label_657:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_658:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_659:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_658
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_658
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4098a0

	.globl fread_file
	.type fread_file, @function
fread_file:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x98
	mov	rbp, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	call	fileno
	mov	rsp, rsp
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, eax
	call	__fxstat
	lea	rsi, [rsi]
	mov	ebx, 0x2000
	test	eax, eax
	mov	rbp, rbp
	js	.label_663
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	ebx, 0x2000
	mov	rsp, rsp
	cmp	eax, 0x8000
	jne	.label_663
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	ftello
	nop	
	mov	ebx, 0x2000
	test	rax, rax
	js	.label_663
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x30]
	mov	ebx, 0x2000
	sub	rcx, rax
	jle	.label_663
	cmp	rcx, -1
	je	.label_668
	inc	rcx
	nop	
	mov	rbx, rcx
.label_663:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	malloc
	lea	rsi, [rsi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_662
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rbp
	nop	
	mov	r14, -1
	nop	
.label_667:
	lea	rdi, [rdi]
	mov	r12, rax
	nop	
	mov	rbp, rbx
	nop	
	sub	rbp, r13
	lea	rdi, [r12 + r13]
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rdx, rbp
	mov	rcx, r15
	call	fread
	add	r13, rax
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	jne	.label_664
	cmp	rbx, -1
	lea	rsi, [rsi]
	je	.label_665
	mov	rbp, rbp
	mov	rbp, rbx
	shr	rbp, 1
	lea	rdi, [rdi]
	mov	rax, rbp
	lea	rdi, [rdi]
	not	rax
	lea	rsi, [rsi]
	add	rbp, rbx
	mov	rbp, rbp
	cmp	rbx, rax
	cmovae	rbp, r14
	mov	rsp, rsp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbx, rbp
	nop	
	jne	.label_667
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	nop	
	jmp	.label_661
.label_664:
	call	__errno_location
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	mov	r14d, dword ptr [rbp]
	nop	
	mov	rdi, r15
	call	ferror
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_661
	lea	rsi, [rsi]
	dec	rbx
	cmp	r13, rbx
	jae	.label_666
	lea	rsi, [r13 + 1]
	mov	rdi, r12
	call	realloc
	test	rax, rax
	mov	rbp, rbp
	cmovne	r12, rax
.label_666:
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	mov	byte ptr [r12 + r13], 0
	mov	rbp, rbp
	mov	qword ptr [rax], r13
	mov	rbp, rbp
	mov	r13, r12
	jmp	.label_662
.label_665:
	mov	r14d, 0xc
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
.label_661:
	mov	rdi, r12
	nop	
	call	free
	mov	dword ptr [rbp], r14d
.label_669:
	xor	r13d, r13d
.label_662:
	mov	rax, r13
	mov	rbp, rbp
	add	rsp, 0x98
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_668:
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	jmp	.label_669
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ad0

	.globl read_file
	.type read_file, @function
read_file:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_7
	call	fopen
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_670
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	mov	rbp, rbp
	call	rpl_fclose
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_670
	test	r15, r15
	je	.label_671
	nop	
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	mov	rsp, rsp
	call	free
.label_671:
	lea	rdi, [rdi]
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	xor	r15d, r15d
.label_670:
	mov	rsp, rsp
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409b60
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	nop
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rbp, rbp
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_672
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	mov	rsi, r14
	nop	
	call	fread_file
	mov	r15, rax
	call	__errno_location
	nop	
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_fclose
	test	eax, eax
	je	.label_672
	test	r15, r15
	je	.label_673
	mov	rsp, rsp
	mov	ebp, dword ptr [r14]
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	call	free
.label_673:
	lea	rdi, [rdi]
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_672:
	mov	rax, r15
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409c00

	.globl trim2
	.type trim2, @function
trim2:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	r14d, esi
	call	__strdup
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_686
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_683
	mov	rbp, rbp
	test	r14d, r14d
	je	.label_685
	nop	
	mov	qword ptr [rsp + 0x20], r12
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	strlen
	nop	
	lea	rcx, [r12 + rax]
	mov	qword ptr [rsp + 8], rcx
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	test	rax, rax
	mov	rbp, rbp
	mov	rbp, r12
	lea	rsi, [rsi]
	jle	.label_688
	mov	rsp, rsp
	lea	rbp, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_680:
	mov	rdi, rbp
	call	mbiter_multi_next
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_681
	mov	rbp, rbp
	shr	rdi, 0x20
	nop	
	call	iswspace
	nop	
	test	eax, eax
	nop	
	je	.label_681
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_680
.label_681:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x20]
.label_688:
	mov	rdi, rbp
	call	strlen
	lea	rsi, [rsi]
	lea	rdx, [rax + 1]
	mov	rdi, r12
	nop	
	mov	rsi, rbp
	mov	rbp, rbp
	call	memmove
	lea	rsi, [rsi]
	cmp	r14d, 1
	lea	rsi, [rsi]
	je	.label_677
.label_685:
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r12
	mov	rbp, rbp
	call	strlen
	nop	
	mov	rcx, r12
	add	rcx, rax
	nop	
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x10], 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	test	rax, rax
	nop	
	jle	.label_677
	nop	
	xor	ebp, ebp
	lea	rdi, [rdi]
	lea	r14, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_675:
	mov	rbp, rbp
	mov	rdi, r14
	call	mbiter_multi_next
	cmp	ebp, 1
	je	.label_689
	lea	rsi, [rsi]
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_674
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	ebp, 1
	mov	rbp, rbp
	test	dil, dil
	je	.label_676
	shr	rdi, 0x20
	lea	rdi, [rdi]
	call	iswspace
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_682
	mov	rsp, rsp
	xor	ebp, ebp
	jmp	.label_676
	nop	dword ptr [rax + rax]
.label_689:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	nop	
	test	dil, dil
	je	.label_676
	shr	rdi, 0x20
	lea	rdi, [rdi]
	call	iswspace
	test	eax, eax
	je	.label_676
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	nop	
	je	.label_678
	shr	rdi, 0x20
	lea	rsi, [rsi]
	call	iswspace
	nop	
	test	eax, eax
	je	.label_678
	lea	rsi, [rsi]
	mov	ebp, 2
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_676
	nop	word ptr cs:[rax + rax]
.label_674:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	mov	rbp, rbp
	je	.label_678
	lea	rsi, [rsi]
	shr	rdi, 0x20
	call	iswspace
	nop	
	mov	ebp, 2
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_676
	lea	rsi, [rsi]
	jmp	.label_678
.label_682:
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	dil, dil
	je	.label_676
	nop	
	shr	rdi, 0x20
	nop	
	call	iswspace
	test	eax, eax
	je	.label_676
	nop	word ptr [rax + rax]
.label_678:
	mov	ebp, 1
.label_676:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_675
	mov	rbp, rbp
	cmp	ebp, 2
	jne	.label_677
	mov	byte ptr [r15], 0
	lea	rsi, [rsi]
	jmp	.label_677
.label_683:
	test	r14d, r14d
	je	.label_687
	lea	rdi, [rdi]
	mov	bl, byte ptr [r12]
	test	bl, bl
	mov	rbp, r12
	je	.label_679
	lea	rdi, [rdi]
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_690:
	mov	rbp, rbp
	movzx	ecx, bl
	nop	
	test	byte ptr [rax + rcx*2 + 1], 0x20
	nop	
	je	.label_679
	mov	rbp, rbp
	mov	bl, byte ptr [rbp + 1]
	mov	rsp, rsp
	inc	rbp
	test	bl, bl
	jne	.label_690
.label_679:
	mov	rsp, rsp
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	nop	
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_677
.label_687:
	mov	rdi, r12
	call	strlen
	lea	rdi, [rdi]
	lea	rbp, [r12 + rax - 1]
	cmp	rbp, r12
	jb	.label_677
	lea	rsi, [rsi]
	call	__ctype_b_loc
	nop	dword ptr [rax]
.label_684:
	movzx	ecx, byte ptr [rbp]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	lea	rdi, [rdi]
	je	.label_677
	mov	byte ptr [rbp], 0
	dec	rbp
	cmp	rbp, r12
	jae	.label_684
.label_677:
	lea	rdi, [rdi]
	mov	rax, r12
	mov	rsp, rsp
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_686:
	mov	rbp, rbp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409fa0

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
	je	.label_695
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_8
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_697
.label_695:
	mov	edx, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_697:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_1
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
	ja	.label_699
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_691]]
.label_2874:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_699:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_693
.label_2875:
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
.label_2876:
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
.label_2877:
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
	jmp	.label_698
.label_2878:
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
	jmp	.label_694
.label_2879:
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
	jmp	.label_692
.label_2880:
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
.label_692:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_694:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_698:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_700
.label_2882:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_693:
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
	jmp	.label_696
.label_2881:
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
.label_696:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_700:
	mov	rbp, rbp
	call	__fprintf_chk
.label_2873:
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
	#Procedure 0x40a390
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_701:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_701
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3c0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_705:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_702
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_704
	nop	word ptr cs:[rax + rax]
.label_702:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_704:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_703
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_705
.label_703:
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
	#Procedure 0x40a450

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_706
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
.label_706:
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
.label_708:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_707
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_709
	nop	dword ptr [rax + rax]
.label_707:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_709:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_710
	inc	r9
	cmp	r9, 0xa
	jb	.label_708
.label_710:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a590
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
	mov	esi, OFFSET FLAT:.str.16_0
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
	mov	esi, OFFSET FLAT:.str.19_0
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
	#Procedure 0x40a620
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
	jb	.label_711
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_712
	test	rax, rax
	je	.label_711
.label_712:
	nop	
	pop	rbx
	ret	
.label_711:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a670

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_713
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_714
.label_713:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_714:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6a0
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
	jb	.label_716
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_715
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_715
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_715:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_717
	test	rax, rax
	je	.label_716
.label_717:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_716:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a720

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_718
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_718
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_718:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_719
	test	rax, rax
	nop	
	je	.label_720
.label_719:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_720:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a770
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_725
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_721
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_727
.label_725:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_724
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_724:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_726
.label_727:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_723
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_723
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_723:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_722
	test	rax, rax
	mov	rbp, rbp
	je	.label_721
.label_722:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_721:
	call	xalloc_die
.label_726:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a850
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_728
	test	rax, rax
	mov	rbp, rbp
	je	.label_729
.label_728:
	pop	rbx
	ret	
.label_729:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40a870
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_733
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_734
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_732
	call	free
	xor	eax, eax
	jmp	.label_730
.label_733:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_731
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_732:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_730
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_731
.label_730:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_731:
	mov	rbp, rbp
	call	xalloc_die
.label_734:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a900
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
	je	.label_735
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_736
.label_735:
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
.label_736:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a960
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
	jb	.label_737
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_737
	pop	rcx
	ret	
.label_737:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a990

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
	je	.label_739
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_738
.label_739:
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
.label_738:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a9f0
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
	je	.label_740
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_741
.label_740:
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
.label_741:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40aa50

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_6
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aaa0
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	call	mem_cd_iconv
	mov	ebx, eax
	mov	rsp, rsp
	test	ebx, ebx
	jns	.label_743
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	mov	rbp, rbp
	je	.label_742
.label_743:
	mov	eax, ebx
	pop	rbx
	mov	rbp, rbp
	ret	
.label_742:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aae0
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbx
	mov	rsp, rsp
	call	str_cd_iconv
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_744
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0xc
	nop	
	je	.label_745
.label_744:
	mov	rbp, rbp
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_745:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ab20

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	mov	rsp, rsp
	push	rbx
	call	str_iconv
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_746
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_747
.label_746:
	lea	rdi, [rdi]
	mov	rax, rbx
	pop	rbx
	ret	
.label_747:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab60

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r14, r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	ebp, edx
	nop	
	mov	r12, rdi
	cmp	ebp, 0x25
	mov	rsp, rsp
	jae	.label_774
	mov	rsp, rsp
	test	rsi, rsi
	lea	rdi, [rdi]
	lea	rbx, [rsp + 8]
	lea	rdi, [rdi]
	cmovne	rbx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, r12
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	edx, ebp
	call	__strtol_internal
	lea	rsi, [rsi]
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	cmp	rcx, r12
	nop	
	je	.label_754
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_803
	mov	rbp, rbp
	mov	r13d, 4
	lea	rsi, [rsi]
	cmp	eax, 0x22
	jne	.label_763
	mov	rsp, rsp
	mov	r13d, 1
.label_803:
	test	r14, r14
	nop	
	je	.label_756
	lea	rsi, [rsi]
	mov	r12d, r13d
	mov	rbp, rbp
	jmp	.label_761
.label_754:
	mov	rbp, rbp
	mov	r13d, 4
	test	r14, r14
	je	.label_763
	lea	rsi, [rsi]
	mov	r15, rcx
	nop	
	movsx	esi, byte ptr [r12]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_763
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsp, rsp
	call	strchr
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rdi, [rdi]
	mov	ebp, 1
	nop	
	test	rax, rax
	mov	rcx, r15
	je	.label_763
.label_761:
	nop	
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_783
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, r13d
	call	strchr
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_778
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	r8d, 0x400
	mov	rsp, rsp
	lea	eax, [r13 - 0x45]
	mov	rsp, rsp
	cmp	eax, 0x2f
	nop	
	ja	.label_749
	lea	rdi, [rdi]
	movabs	rcx, 0x814400308945
	mov	rbp, rbp
	bt	rcx, rax
	lea	rdi, [rdi]
	jae	.label_749
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strchr
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	r8d, 0x400
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_749
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	movsx	eax, byte ptr [rax + 1]
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	r8d, 0x400
	mov	rsp, rsp
	cmp	eax, 0x42
	je	.label_760
	lea	rdi, [rdi]
	cmp	eax, 0x44
	mov	rbp, rbp
	je	.label_760
	cmp	eax, 0x69
	lea	rdi, [rdi]
	jne	.label_749
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	movzx	eax, byte ptr [rax + 2]
	mov	r15d, 3
	cmp	eax, 0x42
	nop	
	je	.label_757
	mov	r15d, 1
.label_757:
	mov	r8d, 0x400
	jmp	.label_749
.label_756:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	jmp	.label_763
.label_783:
	mov	rbp, rbp
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jmp	.label_768
.label_760:
	mov	r15d, 2
	mov	r8d, 0x3e8
.label_749:
	movabs	r9, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	r13d, 0x59
	jg	.label_789
	lea	eax, [r13 - 0x42]
	lea	rdi, [rdi]
	cmp	eax, 0xe
	ja	.label_792
	jmp	qword ptr [word ptr [+ (rax * 8) + label_796]]
.label_2911:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	lea	rsi, [rsi]
	jl	.label_766
	nop	
	mov	r13, rbp
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	lea	rsi, [rsi]
	jmp	.label_770
.label_789:
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_750
	lea	rsi, [rsi]
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_779
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r13, rbp
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_800]]
.label_2906:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	nop	
	jl	.label_766
	mov	r13, rbp
	shl	r13, 9
	lea	rsi, [rsi]
	movabs	rax, 0x3fffffffffffff
	jmp	.label_770
.label_792:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	je	.label_776
	cmp	r13d, 0x59
	jne	.label_778
	mov	rsp, rsp
	lea	r13, [r9 + 1]
	mov	rsp, rsp
	mov	rax, r13
	cqo	
	mov	rbp, rbp
	idiv	r8
	mov	r10, rax
	mov	rsp, rsp
	cmp	rbp, r10
	mov	edi, 1
	nop	
	mov	rcx, r13
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_780
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	mov	rbp, rbp
	div	r8
	nop	
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	rcx, r9
	lea	rsi, [rsi]
	movzx	ebx, al
.label_780:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_801
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	nop	
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	edi, al
.label_801:
	mov	rsp, rsp
	or	edi, ebx
	cmp	rsi, r10
	lea	rsi, [rsi]
	mov	r11d, 1
	mov	rsp, rsp
	mov	rcx, r13
	mov	rsp, rsp
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_753
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	lea	rdi, [rdi]
	mov	rcx, rsi
	imul	rcx, r8
	mov	rbp, rbp
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	rcx, r9
	lea	rdi, [rdi]
	movzx	ebx, al
.label_753:
	or	ebx, edi
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	jl	.label_775
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	nop	
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	mov	rbp, rbp
	cmovl	rsi, r9
	mov	rsp, rsp
	movzx	r11d, al
.label_775:
	or	r11d, ebx
	cmp	rsi, r10
	mov	r14d, 1
	mov	rcx, r13
	nop	
	mov	ebx, 1
	nop	
	jl	.label_785
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	nop	
	div	r8
	mov	rcx, rsi
	nop	
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	nop	
	movzx	ebx, al
.label_785:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_798
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	lea	rsi, [rsi]
	movzx	r14d, al
.label_798:
	or	r14d, ebx
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_769
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsp, rsp
	mov	rcx, rsi
	lea	rsi, [rsi]
	imul	rcx, r8
	nop	
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	lea	rdi, [rdi]
	movzx	edi, al
.label_769:
	lea	rsi, [rsi]
	or	edi, r14d
	cmp	rcx, r10
	jl	.label_802
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	nop	
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	lea	rdi, [rdi]
	movzx	ebx, al
	mov	r13, r8
.label_802:
	mov	rbp, rbp
	or	ebx, edi
	nop	
	jmp	.label_752
.label_750:
	cmp	r13d, 0x74
	je	.label_776
	cmp	r13d, 0x77
	jne	.label_778
	mov	rbp, rbp
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_787
.label_766:
	inc	r9
	mov	rsp, rsp
	mov	ebx, 1
	mov	r13, r9
	lea	rsi, [rsi]
	jmp	.label_752
.label_2907:
	mov	rsp, rsp
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	r10d, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	ebx, 1
	mov	rbp, rbp
	jl	.label_790
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	nop	
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	mov	rbp, rbp
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_790:
	nop	
	cmp	rcx, rdi
	mov	rsi, r13
	jl	.label_758
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	imul	rsi, r8
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	nop	
	cmovl	rsi, r9
	movzx	r10d, al
.label_758:
	lea	rsi, [rsi]
	or	r10d, ebx
	cmp	rsi, rdi
	mov	rbp, rbp
	mov	ebx, 1
	nop	
	jl	.label_771
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	mov	rbp, rbp
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_771:
	lea	rdi, [rdi]
	or	ebx, r10d
	jmp	.label_752
.label_2908:
	lea	rsi, [rsi]
	lea	r13, [r9 + 1]
	lea	rdi, [rdi]
	mov	rax, r13
	cqo	
	idiv	r8
	cmp	rbp, rax
	mov	ebx, 1
	jl	.label_752
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	imul	r8, rbp
	nop	
	cmp	rax, rbp
	nop	
	setl	al
	cmovl	r8, r9
	lea	rdi, [rdi]
	movzx	ebx, al
	mov	r13, r8
	nop	
	jmp	.label_752
.label_2909:
	lea	r13, [r9 + 1]
	mov	rax, r13
	mov	rbp, rbp
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ebx, 1
	mov	rcx, r13
	mov	r10d, 1
	jl	.label_765
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rsp, rsp
	mov	rcx, rbp
	mov	rsp, rsp
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rdi, [rdi]
	setl	al
	cmovl	rcx, r9
	movzx	r10d, al
.label_765:
	lea	rsi, [rsi]
	cmp	rcx, rdi
	nop	
	jl	.label_762
	xor	edx, edx
	mov	rax, r9
	nop	
	div	r8
	imul	r8, rcx
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	setl	al
	lea	rsi, [rsi]
	cmovl	r8, r9
	movzx	ebx, al
	lea	rdi, [rdi]
	mov	r13, r8
.label_762:
	or	ebx, r10d
	lea	rdi, [rdi]
	jmp	.label_752
.label_776:
	lea	r13, [r9 + 1]
	mov	rsp, rsp
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rbp, rbp
	mov	r10, rax
	lea	rsi, [rsi]
	cmp	rbp, r10
	mov	rbp, rbp
	mov	r11d, 1
	lea	rdi, [rdi]
	mov	rcx, r13
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_777
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	lea	rdi, [rdi]
	imul	rcx, r8
	cmp	rax, rbp
	mov	rbp, rbp
	setl	al
	lea	rsi, [rsi]
	cmovl	rcx, r9
	lea	rsi, [rsi]
	movzx	edi, al
.label_777:
	cmp	rcx, r10
	mov	rsi, r13
	nop	
	jl	.label_793
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	lea	rsi, [rsi]
	imul	rsi, r8
	nop	
	cmp	rax, rcx
	setl	al
	lea	rsi, [rsi]
	cmovl	rsi, r9
	movzx	r11d, al
.label_793:
	mov	rsp, rsp
	or	r11d, edi
	lea	rdi, [rdi]
	cmp	rsi, r10
	mov	rsp, rsp
	mov	ebx, 1
	mov	rcx, r13
	mov	rbp, rbp
	mov	edi, 1
	jl	.label_805
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	mov	rbp, rbp
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	mov	rbp, rbp
	movzx	edi, al
.label_805:
	lea	rdi, [rdi]
	or	edi, r11d
	cmp	rcx, r10
	mov	rbp, rbp
	jl	.label_767
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	nop	
	cmovl	r8, r9
	movzx	ebx, al
	mov	rbp, rbp
	mov	r13, r8
.label_767:
	or	ebx, edi
	jmp	.label_752
.label_779:
	nop	
	cmp	r13d, 0x5a
	jne	.label_778
	lea	r13, [r9 + 1]
	nop	
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rsp, rsp
	mov	r10, rax
	nop	
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_781
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	mov	rbp, rbp
	setl	al
	cmovl	rcx, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_781:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_794
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r9
	mov	rsp, rsp
	div	r8
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	nop	
	cmovl	rsi, r9
	movzx	edi, al
.label_794:
	nop	
	or	edi, ebx
	cmp	rsi, r10
	lea	rdi, [rdi]
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	nop	
	jl	.label_748
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rbp, rbp
	mov	rcx, rsi
	imul	rcx, r8
	lea	rsi, [rsi]
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	rcx, r9
	movzx	ebx, al
.label_748:
	lea	rdi, [rdi]
	or	ebx, edi
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_782
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	div	r8
	lea	rdi, [rdi]
	mov	rsi, rcx
	imul	rsi, r8
	nop	
	cmp	rax, rcx
	nop	
	setl	al
	cmovl	rsi, r9
	mov	rbp, rbp
	movzx	r11d, al
.label_782:
	or	r11d, ebx
	mov	rbp, rbp
	cmp	rsi, r10
	mov	rsp, rsp
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_804
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	mov	rbp, rbp
	movzx	ebx, al
.label_804:
	or	ebx, r11d
	mov	rbp, rbp
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_791
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	edi, al
.label_791:
	or	edi, ebx
	cmp	rsi, r10
	nop	
	mov	ebx, 1
	nop	
	jl	.label_806
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	imul	r8, rsi
	lea	rdi, [rdi]
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	r8, r9
	mov	rbp, rbp
	movzx	ebx, al
	mov	r13, r8
.label_806:
	nop	
	or	ebx, edi
	mov	rsp, rsp
	jmp	.label_752
.label_778:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	or	r12d, 2
	lea	rsi, [rsi]
	mov	r13d, r12d
	lea	rsi, [rsi]
	jmp	.label_763
.label_2912:
	lea	r13, [r9 + 1]
	mov	rax, r13
	lea	rdi, [rdi]
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	nop	
	mov	rcx, r13
	mov	edi, 1
	jl	.label_751
	xor	edx, edx
	nop	
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	mov	rsp, rsp
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_751:
	mov	rsp, rsp
	cmp	rcx, r10
	mov	rbp, rbp
	mov	rbx, r13
	jl	.label_788
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	div	r8
	nop	
	mov	rbx, rcx
	imul	rbx, r8
	cmp	rax, rcx
	mov	rbp, rbp
	setl	al
	lea	rdi, [rdi]
	cmovl	rbx, r9
	movzx	r14d, al
.label_788:
	or	r14d, edi
	lea	rdi, [rdi]
	cmp	rbx, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_799
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	nop	
	setl	al
	lea	rdi, [rdi]
	cmovl	rsi, r9
	movzx	ecx, al
.label_799:
	or	ecx, r14d
	nop	
	cmp	rsi, r10
	mov	rdi, r13
	lea	rsi, [rsi]
	jl	.label_755
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	lea	rdi, [rdi]
	imul	rdi, r8
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	mov	rbp, rbp
	cmovl	rdi, r9
	movzx	r11d, al
.label_755:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	r14d, 1
	lea	rsi, [rsi]
	jl	.label_772
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	setl	al
	nop	
	cmovl	rsi, r9
	mov	rbp, rbp
	movzx	r14d, al
.label_772:
	or	r14d, r11d
	cmp	rsi, r10
	jl	.label_784
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	lea	rsi, [rsi]
	cmp	rax, rsi
	mov	rsp, rsp
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_784:
	nop	
	or	ebx, r14d
	lea	rdi, [rdi]
	jmp	.label_752
.label_2913:
	nop	
	lea	r13, [r9 + 1]
	mov	rbp, rbp
	mov	rax, r13
	cqo	
	lea	rsi, [rsi]
	idiv	r8
	mov	r10, rax
	lea	rsi, [rsi]
	cmp	rbp, r10
	mov	rsp, rsp
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_795
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	setl	al
	nop	
	cmovl	rcx, r9
	movzx	edi, al
.label_795:
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_759
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r9
	nop	
	div	r8
	mov	rbp, rbp
	mov	rsi, rcx
	nop	
	imul	rsi, r8
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	r14d, al
.label_759:
	lea	rdi, [rdi]
	or	r14d, edi
	cmp	rsi, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rbx, r13
	mov	edi, 1
	nop	
	jl	.label_773
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rsi
	mov	rbp, rbp
	imul	rbx, r8
	nop	
	cmp	rax, rsi
	setl	al
	nop	
	cmovl	rbx, r9
	lea	rdi, [rdi]
	movzx	edi, al
.label_773:
	or	edi, r14d
	mov	rsp, rsp
	cmp	rbx, r10
	mov	rsi, r13
	jl	.label_786
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	nop	
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	mov	rbp, rbp
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_786:
	or	r11d, edi
	cmp	rsi, r10
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_797
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	div	r8
	mov	rbp, rbp
	imul	r8, rsi
	cmp	rax, rsi
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	r8, r9
	movzx	ebx, al
	lea	rdi, [rdi]
	mov	r13, r8
.label_797:
	or	ebx, r11d
	mov	rsp, rsp
	jmp	.label_752
.label_787:
	lea	r13, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_770:
	nop	
	cmp	rbp, rax
	setg	al
	cmovg	r13, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_752:
	mov	rbp, rbp
	or	ebx, r12d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	lea	rax, [rdx + r15]
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	cmp	byte ptr [rdx + r15], 0
	je	.label_764
	or	ebx, 2
.label_764:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12d, ebx
.label_768:
	lea	rdi, [rdi]
	mov	qword ptr [rax], r13
	mov	r13d, r12d
.label_763:
	mov	rbp, rbp
	mov	eax, r13d
	lea	rsi, [rsi]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_774:
	mov	edi, OFFSET FLAT:.str_9
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b8b0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_807
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_808
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
	je	.label_808
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
.label_807:
	mov	ecx, 1
.label_808:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b920

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
	js	.label_809
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_811
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
	je	.label_809
.label_811:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_809
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_810
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_810:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_809:
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
	#Procedure 0x40b9d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_812
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_812
	test	byte ptr [rbx + 1], 1
	je	.label_812
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_812:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ba10

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rbp, rbp
	call	freopen
	lea	rsi, [rsi]
	mov	rbx, rax
	test	r15, r15
	mov	rsp, rsp
	je	.label_813
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_813
	mov	rdi, rbx
	mov	rsp, rsp
	call	fileno
	mov	ebp, eax
	mov	rbp, rbp
	mov	edi, ebp
	lea	rdi, [rdi]
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_813
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 9
	jne	.label_813
	nop	
	mov	edi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	mov	rsp, rsp
	je	.label_814
	mov	edi, r12d
	nop	
	mov	esi, ebp
	call	dup2
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	mov	edi, r12d
	call	close
	nop	
	test	ebp, ebp
	js	.label_813
.label_814:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	freopen
.label_813:
	mov	rbp, rbp
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40baf0

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
	jne	.label_815
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_815
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_816
.label_815:
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
.label_816:
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
	je	.label_817
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_817:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bba0

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
	je	.label_818
	nop	
	cmp	r15, -2
	jb	.label_818
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_818
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_818:
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
	#Procedure 0x40bc30

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	nop	
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	nop	
	and	cl, 0x10
	and	al, 0x6f
	mov	rbp, rbp
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	nop	
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	nop	
	mov	rdi, rdx
	mov	rdx, r8
	lea	rdi, [rdi]
	call	re_compile_internal
	test	eax, eax
	je	.label_819
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	mov	rbp, rbp
	jmp	dcgettext
.label_819:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bca0

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xf8
	nop	
	mov	qword ptr [rsp + 0xc8], rcx
	nop	
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	nop	
	mov	dword ptr [rsp + 0x14], 0
	mov	rbp, rbp
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [r15 + 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	rsp, rsp
	mov	r12, qword ptr [r15]
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 8], 0xe7
	mov	rsp, rsp
	jbe	.label_969
.label_907:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	nop	
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	nop	
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x80], 0xf
	mov	rbp, rbp
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_853
	lea	rdi, [r13 + 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [r12 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	dword ptr [rax + rax]
.label_905:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	lea	rdi, [rdi]
	cmp	rbx, r13
	nop	
	jbe	.label_905
	lea	rsi, [rsi]
	mov	edi, 0x18
	mov	rsi, rbx
	mov	rbp, rbp
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	lea	rdi, [rdi]
	dec	rbx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x88], rbx
	nop	
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	mov	rbp, rbp
	movzx	ecx, cl
	cmp	ecx, 0x75
	mov	rsp, rsp
	jne	.label_835
	nop	
	mov	cl, byte ptr [rax + 1]
	lea	rdi, [rdi]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	mov	rbp, rbp
	jne	.label_835
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 2]
	lea	rsi, [rsi]
	or	cl, 0x20
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 0x66
	mov	rsp, rsp
	jne	.label_835
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	sete	cl
	nop	
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_835
	nop	
	cmp	byte ptr [rax + rcx + 4], 0
	lea	rsi, [rsi]
	jne	.label_835
	or	byte ptr [r12 + 0xb0], 4
.label_835:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_850
	lea	rsi, [rsi]
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_943
	mov	edi, 0x20
	mov	rsp, rsp
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	nop	
	xor	ebx, ebx
	test	rax, rax
	mov	rsp, rsp
	je	.label_853
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	
.label_954:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_949
	mov	edx, 1
	nop	
	mov	cl, bl
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_949:
	mov	rsp, rsp
	cmp	ebx, 0x7f
	lea	rsi, [rsi]
	ja	.label_951
	nop	
	cmp	ebx, eax
	mov	rsp, rsp
	je	.label_951
	or	byte ptr [r12 + 0xb0], 8
.label_951:
	inc	rbx
	mov	rbp, rbp
	cmp	rbx, 0x40
	lea	rdi, [rdi]
	jne	.label_954
	nop	
	mov	qword ptr [rsp + 0xd0], r15
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_975:
	mov	rsp, rsp
	lea	r15, [rbp + 0x40]
	mov	edi, r15d
	mov	rsp, rsp
	call	btowc
	cmp	eax, -1
	je	.label_963
	lea	rdi, [rdi]
	mov	edx, 1
	mov	cl, bpl
	mov	rsp, rsp
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	rbp, rbp
	or	qword ptr [rcx + 8], rdx
.label_963:
	lea	rsi, [rsi]
	cmp	r15d, eax
	mov	rbp, rbp
	je	.label_970
	or	byte ptr [r12 + 0xb0], 8
.label_970:
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, 0x40
	jne	.label_975
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 0xd0]
	nop	word ptr cs:[rax + rax]
.label_830:
	mov	rsp, rsp
	lea	edi, [rbx + 0x80]
	call	btowc
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_824
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, bl
	mov	rsp, rsp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	mov	rsp, rsp
	or	qword ptr [rcx + 0x10], rax
.label_824:
	mov	rbp, rbp
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, 0x40
	jne	.label_830
	nop	word ptr cs:[rax + rax]
.label_846:
	lea	rdi, [rdi]
	lea	edi, [rbp + 0xc0]
	mov	rsp, rsp
	call	btowc
	lea	rsi, [rsi]
	cmp	eax, -1
	je	.label_841
	mov	eax, 1
	mov	cl, bpl
	nop	
	shl	rax, cl
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_841:
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, 0x40
	jne	.label_846
	jmp	.label_850
.label_943:
	mov	qword ptr [word ptr [r12 + 120]], OFFSET FLAT:utf8_sb_map
.label_850:
	cmp	qword ptr [r12], 0
	je	.label_853
	cmp	qword ptr [r12 + 0x40], 0
	nop	
	je	.label_853
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0xc8]
	and	ecx, 0x400000
	nop	
	mov	qword ptr [rsp + 0xc0], rcx
	mov	rsp, rsp
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	movdqa	xmmword ptr [rsp + 0x60], xmm0
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	movdqa	xmmword ptr [rsp + 0x40], xmm0
	movdqa	xmmword ptr [rsp + 0x30], xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb0], 0
	mov	qword ptr [rsp + 0x20], r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], r13
	mov	qword ptr [rsp + 0x70], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], rbx
	mov	rax, rcx
	nop	
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xa8], al
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rbp, rbp
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xab]
	lea	rsi, [rsi]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], edx
	lea	rsi, [rsi]
	mov	al, byte ptr [r12 + 0xb0]
	shr	al, 2
	nop	
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xa9], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0xb0]
	lea	rsi, [rsi]
	mov	al, cl
	mov	rbp, rbp
	shr	al, 3
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rsp + 0xaa], al
	mov	qword ptr [rsp + 0x88], r13
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x80], r13
	mov	rsp, rsp
	xor	eax, eax
	test	r13, r13
	jle	.label_859
	mov	rsp, rsp
	cmp	edx, 2
	lea	rsi, [rsi]
	jl	.label_902
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], r15
	mov	r15d, 0xc
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	movabs	rcx, 0x1fffffffffffffff
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	ja	.label_820
	lea	rsi, [rax*4]
	xor	edi, edi
	nop	
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_820
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xd0]
.label_902:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_917
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd0], r15
	xor	edi, edi
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x18]
	nop	
	call	realloc
	mov	r15d, 0xc
	nop	
	test	rax, rax
	je	.label_820
	mov	qword ptr [rsp + 0x28], rax
	mov	r15, qword ptr [rsp + 0xd0]
.label_917:
	nop	
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x60], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	nop	
	jmp	.label_924
.label_853:
	mov	dword ptr [rsp + 0x14], 0xc
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	call	free_dfa_content
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_872
.label_859:
	shr	rcx, 0x20
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
.label_924:
	mov	rsp, rsp
	test	bpl, bpl
	lea	rdi, [rdi]
	cmove	rax, r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	cmp	qword ptr [rsp + 0xc0], 0
	lea	rdi, [rdi]
	je	.label_941
	lea	rsi, [rsi]
	cmp	ecx, 2
	jl	.label_925
	mov	qword ptr [rsp + 0xd0], r15
	mov	rbp, rbp
	lea	rdi, [rsp + 0x20]
	mov	rbp, rbp
	call	build_wcs_upper_buffer
	lea	rdi, [rdi]
	mov	r15d, eax
	test	r15d, r15d
	lea	rsi, [rsi]
	jne	.label_820
	lea	r14, [rsp + 0x20]
.label_898:
	cmp	qword ptr [rsp + 0x58], r13
	jge	.label_849
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	cmp	rbp, rax
	mov	rbp, rbp
	jg	.label_849
	lea	rbx, [rbp + rbp]
	cmp	dword ptr [rsp + 0xb0], 2
	lea	rdi, [rdi]
	jl	.label_958
	nop	
	mov	r15d, 0xc
	mov	rsp, rsp
	movabs	rax, 0x1fffffffffffffff
	cmp	rbx, rax
	ja	.label_820
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rbp*8]
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_820
	nop	
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_958
	shl	rbp, 4
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rsp, rsp
	call	realloc
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_820
	mov	qword ptr [rsp + 0x38], rax
.label_958:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xab], 0
	je	.label_823
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	realloc
	lea	rsi, [rsi]
	mov	r15d, 0xc
	test	rax, rax
	je	.label_820
	mov	qword ptr [rsp + 0x28], rax
.label_823:
	mov	qword ptr [rsp + 0x60], rbx
	mov	rdi, r14
	nop	
	call	build_wcs_upper_buffer
	mov	rsp, rsp
	mov	r15d, eax
	mov	rsp, rsp
	test	r15d, r15d
	je	.label_898
.label_820:
	mov	dword ptr [rsp + 0x14], r15d
	jmp	.label_839
.label_941:
	mov	rbp, rbp
	cmp	ecx, 2
	jl	.label_842
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], r15
	nop	
	lea	rdi, [rsp + 0x20]
	lea	rsi, [rsi]
	call	build_wcs_buffer
	lea	rdi, [rdi]
	jmp	.label_849
.label_925:
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	cmp	rax, r13
	cmovg	rax, r13
	lea	rdi, [rdi]
	mov	r13, rax
	lea	rsi, [rsi]
	xor	eax, eax
	test	r13, r13
	nop	
	jle	.label_955
	mov	rbp, rbp
	xor	eax, eax
	mov	ebp, 1
	mov	rsp, rsp
	jmp	.label_860
	nop	word ptr cs:[rax + rax]
.label_875:
	mov	r14, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x98]
	inc	rbp
.label_860:
	add	r14, rax
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	mov	rsp, rsp
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_869
.label_880:
	mov	rsp, rsp
	movzx	ebx, al
	lea	rsi, [rsi]
	lea	eax, [rbx + 0x80]
	mov	rsp, rsp
	cmp	eax, 0x17f
	ja	.label_836
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ebx, dword ptr [rax + rbx*4]
.label_836:
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_875
	jmp	.label_878
.label_869:
	mov	al, byte ptr [rbx + rcx]
	mov	rbp, rbp
	jmp	.label_880
.label_842:
	test	rbx, rbx
	je	.label_881
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r13
	mov	rbp, rbp
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	mov	rbp, rbp
	jle	.label_882
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [r14]
	nop	
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	lea	rsi, [rsi]
	cmp	rdi, 2
	nop	
	jl	.label_882
	nop	dword ptr [rax + rax]
.label_890:
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	add	rax, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x98]
	mov	al, byte ptr [rsi + rax]
	mov	byte ptr [rdx + rcx], al
	lea	rsi, [rsi]
	inc	rcx
	cmp	rcx, rdi
	nop	
	jl	.label_890
	lea	rsi, [rsi]
	mov	rcx, rdi
.label_882:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r15
	mov	qword ptr [rsp + 0x50], rcx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	jmp	.label_849
.label_969:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	lea	rdi, [rdi]
	test	r12, r12
	mov	rbp, rbp
	je	.label_872
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_907
.label_878:
	mov	rsp, rsp
	mov	rax, r13
.label_955:
	mov	qword ptr [rsp + 0xd0], r15
	jmp	.label_909
.label_881:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
.label_909:
	nop	
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x58], rax
.label_849:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x30], 0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	nop	
	mov	rbp, qword ptr [rsp + 0xc8]
	nop	
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rsi, [rsi]
	or	rdx, 0x800000
	mov	rsp, rsp
	lea	r14, [rsp + 0xe0]
	mov	rsp, rsp
	lea	r13, [rsp + 0x20]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	mov	rbp, rbp
	cdqe	
	add	qword ptr [rsp + 0x68], rax
	lea	r9, [rsp + 0x14]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, rbp
	call	parse_reg_exp
	nop	
	mov	r14, rax
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_934
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x14]
	test	eax, eax
	jne	.label_883
.label_934:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	mov	rbp, rbp
	je	.label_940
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x70]
.label_871:
	nop	
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	rbp, rbp
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 2
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	nop	
	mov	qword ptr [rax + rcx + 0x40], -1
.label_886:
	test	r14, r14
	mov	rbp, rbp
	mov	rcx, rbp
	lea	rdi, [rdi]
	je	.label_950
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbx + 0x80]
	lea	rsi, [rsi]
	cmp	ecx, 0xf
	lea	rdi, [rdi]
	je	.label_952
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x70]
.label_973:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	mov	rsp, rsp
	movsxd	rdx, ecx
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	qword ptr [rax + rdx + 8], 0
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 0x10], r14
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	rbp, rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	mov	rsp, rsp
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	mov	qword ptr [rax + rdx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [r14], rcx
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_903
	mov	qword ptr [rbp], rcx
.label_950:
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_903
	test	rcx, rcx
	je	.label_903
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x68], rcx
	nop	
	mov	r15, qword ptr [r15]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [r15 + 0x18], rax
	nop	
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x20], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	lea	rsi, [rsi]
	call	malloc
	nop	
	mov	qword ptr [r15 + 0x28], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rdi]
	lea	rdi, [rax + rax*2]
	call	malloc
	nop	
	mov	qword ptr [r15 + 0x30], rax
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_843
	cmp	qword ptr [r15 + 0x20], 0
	nop	
	je	.label_845
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_848
	mov	rax, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	test	rax, rax
	je	.label_960
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + 0x30]
	lea	rdi, [rbx*8]
	mov	rsp, rsp
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0xe0], rax
	test	rax, rax
	je	.label_863
	test	rbx, rbx
	je	.label_865
	mov	rcx, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x30]
	cmp	rcx, 1
	mov	rsp, rsp
	mov	edx, 1
	cmova	rdx, rcx
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	cmp	rdx, 4
	lea	rsi, [rsi]
	jb	.label_868
	mov	rsp, rsp
	xor	edi, edi
	mov	rsi, rdx
	lea	rsi, [rsi]
	and	rsi, 0xfffffffffffffffc
	je	.label_868
	cmp	rcx, 1
	lea	rsi, [rsi]
	mov	ebp, 1
	cmova	rbp, rcx
	lea	rsi, [rsi]
	add	rbp, -4
	mov	rbx, rbp
	nop	
	shr	rbx, 2
	mov	rbp, rbp
	xor	edi, edi
	bt	rbp, 2
	nop	
	jb	.label_946
	lea	rsi, [rsi]
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	mov	rsp, rsp
	movdqu	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_884]]
	nop	
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edi, 4
.label_946:
	mov	rbp, rbp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_888
	mov	rsp, rsp
	mov	ebp, 1
	movq	xmm0, rbp
	pslldq	xmm0, 8
	lea	rsi, [rsi]
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_884]]
.label_895:
	movq	xmm2, rdi
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	mov	rsp, rsp
	paddq	xmm2, xmm1
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	lea	rdi, [rdi]
	lea	rbp, [rdi + 4]
	nop	
	movq	xmm2, rbp
	lea	rdi, [rdi]
	pshufd	xmm2, xmm2, 0x44
	nop	
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	mov	rbp, rbp
	paddq	xmm2, xmm1
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rdi*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x30], xmm2
	add	rdi, 8
	cmp	rdi, rsi
	mov	rbp, rbp
	jne	.label_895
.label_888:
	mov	rbp, rbp
	cmp	rdx, rsi
	mov	rdi, rsi
	mov	rsp, rsp
	je	.label_865
	nop	dword ptr [rax + rax]
.label_868:
	mov	qword ptr [rax + rdi*8], rdi
	inc	rdi
	cmp	rdi, rcx
	jb	.label_868
.label_865:
	mov	rbx, qword ptr [r15 + 0x68]
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	mov	rsi, rbx
	call	optimize_subexps
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_915
.label_926:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_916
	nop	dword ptr [rax + rax]
.label_922:
	mov	rsp, rsp
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rbp, rcx
	je	.label_919
	test	rbp, rbp
	jne	.label_916
.label_919:
	mov	rbx, qword ptr [rax]
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_922
	jmp	.label_915
.label_916:
	mov	rdi, r15
	mov	rsi, rbp
	mov	rsp, rsp
	call	optimize_subexps
	test	eax, eax
	mov	rbx, rbp
	lea	rsi, [rsi]
	je	.label_926
.label_915:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rax, qword ptr [rax + 0x30]
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_927
	mov	rdx, qword ptr [r15 + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_937:
	cmp	rcx, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	jne	.label_927
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rax
	jb	.label_937
.label_927:
	lea	r14, [r15 + 0x68]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jne	.label_942
	mov	rdi, qword ptr [r15 + 0xe0]
	call	free
	mov	qword ptr [r15 + 0xe0], 0
	jmp	.label_942
.label_843:
	lea	rsi, [rsi]
	mov	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	mov	rbp, rbp
	jmp	.label_839
.label_845:
	nop	
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_839
.label_863:
	mov	rbp, rbp
	lea	r14, [r15 + 0x68]
.label_942:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	lea	rbx, [rsp + 0xe0]
	nop	word ptr cs:[rax + rax]
.label_832:
	mov	rbp, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	nop	
	jne	.label_832
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	test	rax, rax
	mov	edx, 0
	mov	rbp, rbp
	jne	.label_832
	mov	rsp, rsp
	jmp	.label_959
	nop	dword ptr [rax]
.label_837:
	mov	rdx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rbp, rcx
.label_959:
	mov	dword ptr [rsp + 0xe0], 0
	test	rdx, rdx
	je	.label_962
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdx + 0x30]
	mov	rsp, rsp
	cmp	eax, 0x11
	jne	.label_962
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	call	lower_subexp
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 8], rax
	test	rax, rax
	mov	rsp, rsp
	je	.label_962
	mov	qword ptr [rax], rbp
	nop	word ptr cs:[rax + rax]
.label_962:
	mov	rdx, qword ptr [rbp + 0x10]
	test	rdx, rdx
	nop	
	je	.label_826
	movzx	eax, byte ptr [rdx + 0x30]
	mov	rbp, rbp
	cmp	eax, 0x11
	jne	.label_826
	nop	
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0xd0]
	nop	
	call	lower_subexp
	nop	
	mov	qword ptr [rbp + 0x10], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_826
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	nop	
.label_826:
	mov	eax, dword ptr [rsp + 0xe0]
	test	eax, eax
	jne	.label_828
	mov	rcx, qword ptr [rbp]
	mov	rsp, rsp
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_831
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	nop	
	je	.label_837
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_837
	mov	rsp, rsp
	jmp	.label_832
.label_831:
	mov	rbp, rbp
	mov	rax, qword ptr [r14]
	nop	
	mov	ebx, 0xfffc00ff
.label_847:
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_847
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_847
	nop	dword ptr [rax]
.label_876:
	movzx	eax, byte ptr [rbp + 0x30]
	nop	
	cmp	eax, 0x10
	nop	
	jne	.label_855
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_857
.label_855:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	re_dfa_add_node
	nop	
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_866
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp + 0x30]
	cmp	ecx, 0xc
	lea	rsi, [rsi]
	jne	.label_857
	mov	ecx, dword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15]
	mov	rsp, rsp
	shl	rax, 4
	nop	
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_857:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_874
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rsp, rsp
	mov	rbp, rcx
	je	.label_876
	test	rax, rax
	lea	rdi, [rdi]
	mov	rbp, rcx
	mov	rbp, rbp
	je	.label_876
	lea	rdi, [rdi]
	jmp	.label_847
.label_940:
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	call	malloc
	xor	ebp, ebp
	mov	rbp, rbp
	test	rax, rax
	je	.label_886
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_871
.label_874:
	mov	rbx, qword ptr [r14]
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 0x30]
	nop	
	cmp	eax, 0x10
	mov	rsp, rsp
	je	.label_892
	lea	rdi, [rdi]
	cmp	eax, 0xb
	jne	.label_894
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rbx
	jmp	.label_897
.label_866:
	lea	rsi, [rsi]
	mov	eax, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], eax
	mov	rsp, rsp
	jmp	.label_839
.label_952:
	nop	
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	nop	
	test	rax, rax
	je	.label_903
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_973
.label_903:
	mov	dword ptr [rsp + 0x14], 0xc
.label_883:
	nop	
	mov	qword ptr [r12 + 0x68], 0
	jmp	.label_910
.label_892:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	lea	rdi, [rdi]
	jmp	.label_911
.label_894:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_914
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rcx
.label_914:
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_897
.label_911:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_897:
	mov	rdx, rbx
	lea	rsi, [rsi]
	jmp	.label_896
.label_936:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	lea	rsi, [rsi]
	mov	rdx, rcx
.label_896:
	xor	esi, esi
	test	rax, rax
	mov	rcx, rax
	nop	
	jne	.label_930
.label_933:
	mov	rbp, rbp
	mov	rax, rsi
	mov	rsi, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, rax
	je	.label_928
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_930
.label_928:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi]
	mov	rbp, rbp
	test	rdx, rdx
	jne	.label_933
	lea	rsi, [rsi]
	jmp	.label_935
.label_930:
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x10
	je	.label_936
	cmp	eax, 0xb
	jne	.label_939
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_896
.label_939:
	mov	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_944
	mov	rdx, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rdx
.label_944:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	test	rsi, rsi
	mov	rdx, rcx
	lea	rsi, [rsi]
	je	.label_896
	mov	rdx, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x20], rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	jmp	.label_896
.label_935:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, rbx
	mov	rsp, rsp
	call	link_nfa_nodes
	mov	rsp, rsp
	test	eax, eax
	jne	.label_828
.label_968:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	rsp, rsp
	mov	eax, 0
	jne	.label_953
	nop	word ptr [rax + rax]
.label_964:
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	rax, rbx
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	rbp, rcx
	lea	rdi, [rdi]
	je	.label_957
	test	rbp, rbp
	jne	.label_953
.label_957:
	mov	rbx, qword ptr [rax]
	lea	rdi, [rdi]
	test	rbx, rbx
	nop	
	jne	.label_964
	mov	rsp, rsp
	jmp	.label_967
.label_953:
	mov	rdi, r15
	mov	rsi, rbp
	nop	
	call	link_nfa_nodes
	nop	
	test	eax, eax
	mov	rbx, rbp
	je	.label_968
	lea	rdi, [rdi]
	jmp	.label_828
.label_967:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	lea	r14, [rsp + 0xe0]
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_867
	nop	dword ptr [rax + rax]
.label_840:
	inc	rbp
	lea	rdi, [rdi]
	mov	rax, rbp
.label_867:
	lea	rdi, [rdi]
	cmp	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	jne	.label_976
	mov	rbp, rbp
	xor	ebp, ebp
	nop	
	test	r13b, 1
	mov	r13d, 0
	jne	.label_821
	mov	rsp, rsp
	jmp	.label_825
.label_976:
	mov	rbp, rbp
	mov	rbp, rax
.label_821:
	mov	rax, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsp, rsp
	jne	.label_840
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	calc_eclosure_iter
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_828
	mov	rax, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rbp, rbp
	jne	.label_840
	mov	rdi, qword ptr [rsp + 0xf0]
	call	free
	mov	r13b, 1
	jmp	.label_840
.label_828:
	mov	dword ptr [rsp + 0x14], eax
.label_839:
	nop	
	mov	r15, qword ptr [rsp + 0xd0]
.label_910:
	nop	
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	nop	
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_852
	nop	dword ptr [rax + rax]
.label_861:
	mov	rbp, qword ptr [rdi]
	call	free
	mov	rbp, rbp
	test	rbp, rbp
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	jne	.label_861
.label_852:
	mov	qword ptr [rbx + 0x70], 0
	nop	
	mov	dword ptr [rbx + 0x80], 0xf
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x68], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	nop	
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	cmp	byte ptr [rsp + 0xab], 0
	mov	rbp, rbp
	je	.label_873
	nop	
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
.label_873:
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free_dfa_content
	nop	
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
.label_938:
	mov	eax, dword ptr [rsp + 0x14]
.label_872:
	lea	rdi, [rdi]
	add	rsp, 0xf8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_825:
	mov	rcx, qword ptr [rsp + 0xd0]
	test	byte ptr [rcx + 0x38], 0x10
	jne	.label_885
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xd0]
	cmp	qword ptr [rcx + 0x30], 0
	nop	
	je	.label_885
	test	byte ptr [r15 + 0xb0], 1
	nop	
	jne	.label_887
.label_885:
	cmp	qword ptr [r15 + 0x98], 0
	mov	rbp, rbp
	je	.label_889
.label_887:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	nop	
	mov	qword ptr [r15 + 0x38], rax
	nop	
	test	rax, rax
	je	.label_893
	cmp	qword ptr [r15 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_889
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	mov	ecx, 1
	mov	edx, 0x18
	cmp	rax, 1
	lea	rdi, [rdi]
	jbe	.label_900
.label_971:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r15 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_971
.label_900:
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_889
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	xor	r10d, r10d
.label_947:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc8], r10
	lea	r9, [r10 + r10*2]
	mov	qword ptr [rsp + 0x18], r9
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	rdi, [rdi]
	jle	.label_912
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	nop	
	mov	qword ptr [rsp + 8], rdi
	nop	
	xor	ebx, ebx
.label_945:
	mov	r13, qword ptr [r15 + 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + rbx*8]
	lea	rbp, [rax + rax*2]
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + rbp*8]
	mov	rbp, rbp
	lea	r14, [r13 + rbp*8 + 8]
	nop	
	mov	rdx, qword ptr [r13 + rbp*8 + 8]
	lea	rdi, [rdi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jne	.label_920
	mov	rbp, rbp
	lea	rcx, [r13 + rbp*8]
	mov	rsp, rsp
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rsi]
	lea	rsi, [rax*8 + 0x10]
	mov	rsp, rsp
	call	realloc
	test	rax, rax
	je	.label_858
	lea	rcx, [r13 + rbp*8 + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r14]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 0x30]
	mov	r10, qword ptr [rsp + 0xc8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_932
.label_920:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_932:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r14], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rax + rdx*8], r10
	inc	rbx
	cmp	rbx, qword ptr [r8 + r9*8 + 8]
	jl	.label_945
	mov	rax, qword ptr [r15 + 0x10]
.label_912:
	lea	rsi, [rsi]
	inc	r10
	nop	
	cmp	r10, rax
	nop	
	jb	.label_947
.label_889:
	nop	
	mov	dword ptr [rsp + 0x14], 0
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xc0], 0
	jne	.label_822
	mov	al, byte ptr [r12 + 0xb0]
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	and	cl, 4
	nop	
	je	.label_822
	mov	rcx, qword ptr [rsp + 0xd0]
	cmp	qword ptr [rcx + 0x28], 0
	lea	rsi, [rsi]
	jne	.label_822
	mov	rdx, qword ptr [r12 + 0x10]
	test	rdx, rdx
	je	.label_956
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r12]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	lea	rdi, [rdi]
	mov	rcx, rbx
	xor	r10d, r10d
	lea	rsi, [rsi]
	xor	ebp, ebp
.label_829:
	mov	rbp, rbp
	movzx	esi, byte ptr [rcx + 8]
	dec	esi
	lea	rsi, [rsi]
	cmp	esi, 0xb
	mov	rbp, rbp
	ja	.label_966
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_974]]
.label_2915:
	mov	rbp, rbp
	mov	sil, 1
	mov	rsp, rsp
	cmp	byte ptr [rcx], 0
	js	.label_972
	mov	sil, r10b
.label_972:
	mov	rbp, rbp
	mov	r10b, sil
	jmp	.label_827
.label_2916:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_822
	mov	rbp, rbp
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_827
	jmp	.label_822
.label_2917:
	mov	r9b, 1
	mov	rsp, rsp
	jmp	.label_827
.label_2918:
	mov	esi, dword ptr [rcx]
	lea	edi, [rsi - 0x10]
	mov	rsp, rsp
	cmp	edi, 0x30
	ja	.label_838
	bt	r8, rdi
	jb	.label_827
.label_838:
	nop	
	cmp	esi, 0x80
	mov	rsp, rsp
	jne	.label_822
.label_827:
	inc	rbp
	mov	rsp, rsp
	add	rcx, 0x10
	cmp	rbp, rdx
	jb	.label_829
	mov	rbp, rbp
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	lea	rdi, [rdi]
	xor	edx, edx
	mov	esi, 8
	mov	rsp, rsp
	test	r10b, 1
	je	.label_833
	jmp	.label_918
.label_848:
	mov	rbp, rbp
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_839
.label_960:
	mov	rbp, rbp
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_839
.label_864:
	add	rsi, 0x10
	mov	rbx, qword ptr [r12]
.label_918:
	mov	eax, dword ptr [rbx + rsi]
	movzx	edi, al
	mov	rsp, rsp
	cmp	edi, 5
	je	.label_851
	lea	rdi, [rdi]
	cmp	edi, 1
	mov	rbp, rbp
	jne	.label_856
	cmp	byte ptr [rbx + rsi - 8], 0
	mov	rbp, rbp
	jns	.label_856
	mov	rsp, rsp
	and	eax, 0xffdfffff
	jmp	.label_862
.label_851:
	mov	rsp, rsp
	and	eax, 0xffffff00
	nop	
	or	eax, 7
.label_862:
	mov	rsp, rsp
	mov	dword ptr [rbx + rsi], eax
.label_856:
	nop	
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jb	.label_864
	lea	rsi, [rsi]
	mov	al, byte ptr [r12 + 0xb0]
	mov	rbp, rbp
	jmp	.label_833
.label_858:
	mov	eax, 0xc
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_839
.label_956:
	xor	ecx, ecx
.label_833:
	mov	dword ptr [r12 + 0xb4], 1
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x98], 0
	nop	
	setg	dl
	or	dl, cl
	lea	rsi, [rsi]
	add	dl, dl
	nop	
	and	al, 0xf9
	or	al, dl
	lea	rsi, [rsi]
	mov	byte ptr [r12 + 0xb0], al
.label_822:
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x90], rax
	mov	rbx, qword ptr [r12 + 0x30]
	lea	r13, [rax + rax*2]
	mov	r15, qword ptr [rbx + r13*8 + 8]
	nop	
	mov	qword ptr [rsp + 0xe8], r15
	mov	r14, qword ptr [rbx + r13*8 + 8]
	lea	rsi, [rsi]
	test	r14, r14
	jle	.label_877
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xe0], r15
	lea	rdi, [r15*8]
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0xf0], rbp
	test	rbp, rbp
	je	.label_891
	mov	rsi, qword ptr [rbx + r13*8 + 0x10]
	nop	
	shl	r14, 3
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rdx, r14
	mov	rbp, rbp
	call	memcpy
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xdc], 0
	test	r15, r15
	jle	.label_899
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	mov	rbp, rbp
	jle	.label_899
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	lea	r14, [rsp + 0xe0]
	lea	rsi, [rsi]
	jmp	.label_904
.label_948:
	mov	rbp, qword ptr [rsp + 0xf0]
.label_904:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rsp, rsp
	mov	rdx, qword ptr [r12]
	lea	rsi, [rsi]
	mov	rsi, r8
	shl	rsi, 4
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rdx + rsi + 8]
	cmp	ecx, 4
	lea	rdi, [rdi]
	jne	.label_908
	lea	rdi, [rdi]
	test	r15, r15
	lea	rsi, [rsi]
	mov	edi, 0
	jle	.label_913
	add	rsi, rdx
	lea	rsi, [rsi]
	xor	edi, edi
.label_921:
	mov	rcx, qword ptr [rbp + rdi*8]
	nop	
	shl	rcx, 4
	movzx	ebx, byte ptr [rdx + rcx + 8]
	cmp	ebx, 9
	mov	rsp, rsp
	jne	.label_906
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	mov	rsp, rsp
	je	.label_913
.label_906:
	inc	rdi
	lea	rsi, [rsi]
	cmp	rdi, r15
	lea	rsi, [rsi]
	jl	.label_921
.label_913:
	mov	rsp, rsp
	cmp	rdi, r15
	je	.label_908
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	nop	
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	test	r15, r15
	lea	rdi, [rdi]
	jle	.label_923
	lea	rdi, [rdi]
	mov	rsi, r15
	mov	rbp, rbp
	dec	rsi
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_929
.label_931:
	lea	rdi, [rdi]
	lea	rdi, [rdx + rsi]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	mov	rbp, rbp
	lea	rbx, [rdi + 1]
	lea	rsi, [rsi]
	cmovl	rdx, rbx
	nop	
	cmovge	rsi, rdi
	cmp	rdx, rsi
	jb	.label_931
.label_929:
	cmp	rdx, -1
	je	.label_923
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + rdx*8], rcx
	nop	
	je	.label_908
.label_923:
	mov	rax, qword ptr [r12 + 0x30]
	nop	
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rdi]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	mov	rsp, rsp
	call	re_node_set_merge
	test	eax, eax
	jne	.label_879
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xe8]
	xor	eax, eax
.label_908:
	mov	rbp, rbp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r15
	jl	.label_948
	jmp	.label_899
.label_877:
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	mov	qword ptr [rsp + 0xf0], 0
	mov	dword ptr [rsp + 0xdc], 0
.label_899:
	lea	rdi, [rsp + 0xdc]
	lea	rdx, [rsp + 0xe0]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rsi, r12
	call	re_acquire_state_context
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x48], rax
	nop	
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_961
	cmp	byte ptr [rax + 0x68], 0
	mov	rsp, rsp
	js	.label_901
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_965
.label_901:
	mov	rsp, rsp
	lea	rbx, [rsp + 0xdc]
	lea	rbp, [rsp + 0xe0]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r12
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	nop	
	mov	ecx, 2
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	re_acquire_state_context
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	lea	rsi, [rsi]
	je	.label_834
	test	rax, rax
	je	.label_834
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_834
.label_965:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0xf0]
	call	free
	lea	rdi, [rdi]
	xor	eax, eax
.label_879:
	mov	dword ptr [rsp + 0x14], eax
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0xd0]
	mov	rbx, qword ptr [r14]
	nop	
	mov	rdi, qword ptr [rbx + 0x70]
	nop	
	test	rdi, rdi
	je	.label_844
.label_854:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rsp, rsp
	mov	rdi, rbp
	jne	.label_854
.label_844:
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x70], 0
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x80], 0xf
	nop	
	mov	qword ptr [rbx + 0x68], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	nop	
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	cmp	byte ptr [rsp + 0xab], 0
	lea	rsi, [rsi]
	je	.label_870
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
.label_870:
	xor	eax, eax
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x14], 0
	je	.label_872
	mov	rdi, r12
	nop	
	call	free_dfa_content
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r14], xmm0
	lea	rdi, [rdi]
	jmp	.label_938
.label_834:
	mov	eax, dword ptr [rsp + 0xdc]
	mov	rbp, rbp
	jmp	.label_879
.label_893:
	lea	rsi, [rsi]
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_839
.label_961:
	mov	eax, dword ptr [rsp + 0xdc]
	mov	rbp, rbp
	jmp	.label_879
.label_891:
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	nop	
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xdc], 0xc
	mov	eax, 0xc
	lea	rsi, [rsi]
	jmp	.label_879
.label_966:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d9a0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d9c0

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0xf0], xmm0
	nop	
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x40], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x50]
	lea	rdi, [rdi]
	cmp	rax, rsi
	je	.label_977
	nop	
	mov	rdi, r14
	mov	rdx, rbx
	nop	
	call	re_compile_fastmap_iter
	nop	
	mov	rax, qword ptr [r15 + 0x48]
.label_977:
	nop	
	mov	rsi, qword ptr [r15 + 0x58]
	nop	
	cmp	rax, rsi
	mov	rbp, rbp
	je	.label_978
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	nop	
	mov	rax, qword ptr [r15 + 0x48]
.label_978:
	nop	
	mov	rsi, qword ptr [r15 + 0x60]
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rsi, [rsi]
	je	.label_979
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	call	re_compile_fastmap_iter
.label_979:
	or	byte ptr [r14 + 0x38], 8
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40dad0

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x148
	lea	rdi, [rdi]
	mov	r15, rdx
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	mov	r13, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x138], r13
	mov	rax, qword ptr [r13]
	cmp	dword ptr [rax + 0xb4], 1
	nop	
	jne	.label_1012
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	r14b, byte ptr [r13 + 0x1a]
	lea	rdi, [rdi]
	and	r14b, 0x40
	lea	rsi, [rsi]
	shr	r14b, 6
	mov	rbp, rbp
	jmp	.label_984
.label_1012:
	nop	
	mov	qword ptr [rsp + 0x10], rax
	xor	r14d, r14d
.label_984:
	cmp	qword ptr [rsi + 0x10], 0
	mov	rsp, rsp
	jle	.label_991
	nop	
	xor	edx, edx
	nop	
.label_980:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi + 0x18]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	r12, rbp
	lea	rdi, [rdi]
	shl	r12, 4
	mov	rsp, rsp
	lea	rcx, [rax + r12]
	movzx	ebx, byte ptr [rax + r12 + 8]
	mov	rsp, rsp
	cmp	ebx, 1
	je	.label_995
	mov	qword ptr [rsp], rdx
	lea	rdi, [rdi]
	cmp	ebx, 6
	lea	rdi, [rdi]
	je	.label_1005
	mov	rsp, rsp
	cmp	ebx, 3
	mov	rbp, rbp
	jne	.label_1007
	mov	rsp, rsp
	mov	rax, qword ptr [rax + r12]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_982:
	bt	rbp, rbx
	jae	.label_1010
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_1010
	mov	rbp, rbp
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x180
	jae	.label_1013
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbx*4]
	mov	rbp, rbp
	jmp	.label_1016
.label_1013:
	nop	
	mov	eax, ebx
.label_1016:
	cdqe	
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rax], 1
.label_1010:
	inc	rbx
	cmp	rbx, 0x40
	mov	rbp, rbp
	jne	.label_982
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rax + 8]
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1011:
	bt	rbp, rbx
	mov	rbp, rbp
	jae	.label_988
	mov	byte ptr [r15 + rbx + 0x40], 1
	test	r14b, r14b
	je	.label_988
	nop	
	lea	eax, [rbx + 0xc0]
	cmp	eax, 0x180
	mov	rbp, rbp
	jae	.label_994
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	eax, dword ptr [rax + rbx*4 + 0x100]
	jmp	.label_998
.label_994:
	lea	rsi, [rsi]
	lea	rax, [rbx + 0x40]
.label_998:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_988:
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, 0x40
	lea	rsi, [rsi]
	jne	.label_1011
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	nop	
	mov	rbp, qword ptr [rax + 0x10]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_1017:
	bt	rbp, rbx
	lea	rsi, [rsi]
	jae	.label_1008
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rbx + 0x80], 1
	lea	rdi, [rdi]
	test	r14b, r14b
	mov	rsp, rsp
	je	.label_1008
	lea	eax, [rbx + 0x100]
	mov	rsp, rsp
	cmp	eax, 0x180
	jae	.label_1002
	lea	rsi, [rsi]
	call	__ctype_tolower_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x200]
	jmp	.label_1014
.label_1002:
	lea	rax, [rbx + 0x80]
.label_1014:
	mov	rbp, rbp
	cdqe	
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
.label_1008:
	nop	
	inc	rbx
	cmp	rbx, 0x40
	nop	
	jne	.label_1017
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x18]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_1001:
	mov	rbp, rbp
	bt	rbp, rbx
	jae	.label_986
	mov	rsp, rsp
	mov	byte ptr [r15 + rbx + 0xc0], 1
	lea	rdi, [rdi]
	test	r14b, r14b
	je	.label_986
	lea	rdi, [rdi]
	lea	eax, [rbx + 0x140]
	cmp	eax, 0x180
	nop	
	jae	.label_1000
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbx*4 + 0x300]
	lea	rdi, [rdi]
	jmp	.label_996
.label_1000:
	lea	rax, [rbx + 0xc0]
.label_996:
	lea	rdi, [rdi]
	cdqe	
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rax], 1
.label_986:
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1001
	jmp	.label_989
	nop	word ptr [rax + rax]
.label_1005:
	mov	r12, qword ptr [rcx]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rsi, [rsi]
	jle	.label_1006
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x48], 0
	mov	rbp, rbp
	jne	.label_1009
	lea	rdi, [rdi]
	test	byte ptr [r12 + 0x20], 1
	nop	
	jne	.label_1009
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1006
.label_1009:
	nop	
	mov	byte ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x30]
	nop	
	lea	rbp, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_987:
	mov	qword ptr [rsp + 0x30], 0
	nop	
	xor	edi, edi
	mov	edx, 1
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rsp, rsp
	movzx	ecx, byte ptr [rsp + 8]
	mov	rsp, rsp
	cmp	rax, -2
	mov	rbp, rbp
	jne	.label_999
	mov	byte ptr [r15 + rcx], 1
.label_999:
	mov	rsp, rsp
	inc	cl
	nop	
	mov	byte ptr [rsp + 8], cl
	jne	.label_987
	jmp	.label_989
	nop	dword ptr [rax]
.label_995:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	movzx	ebx, byte ptr [rcx]
	mov	byte ptr [r15 + rbx], 1
	lea	rsi, [rsi]
	test	r14b, r14b
	je	.label_992
	nop	
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_983
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_983:
	mov	rsp, rsp
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rax], 1
.label_992:
	mov	rsp, rsp
	test	byte ptr [r13 + 0x1a], 0x40
	lea	rsi, [rsi]
	je	.label_989
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_989
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	mov	rsp, rsp
	mov	rdx, rcx
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x31]
	lea	rdi, [rdi]
	mov	esi, 0x2000ff
	lea	rdi, [rdi]
	jae	.label_981
	add	r12, 0x18
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x31]
	nop	word ptr cs:[rax + rax]
.label_985:
	mov	rax, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + r12]
	lea	rsi, [rsi]
	and	ecx, esi
	cmp	ecx, 0x200001
	lea	rsi, [rsi]
	jne	.label_981
	nop	
	mov	al, byte ptr [rax + r12 - 8]
	mov	rbp, rbp
	mov	byte ptr [r13], al
	nop	
	inc	r13
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	nop	
	jb	.label_985
.label_981:
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], 0
	mov	rbp, rbp
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x144]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp + 8]
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	rpl_mbrtowc
	mov	rsp, rsp
	cmp	rax, r13
	mov	rbp, rbp
	jne	.label_1003
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x144]
	nop	
	call	towlower
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	wcrtomb
	mov	rsp, rsp
	cmp	rax, -1
	nop	
	je	.label_1003
	movzx	eax, byte ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rax], 1
.label_1003:
	nop	
	mov	r13, qword ptr [rsp + 0x138]
	lea	rsi, [rsi]
	jmp	.label_989
	nop	dword ptr [rax + rax]
.label_1007:
	nop	
	cmp	ebx, 2
	je	.label_993
	mov	eax, ebx
	or	eax, 2
	cmp	eax, 7
	jne	.label_989
	jmp	.label_993
.label_1006:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_989
	nop	
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1015:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + rbp*4]
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 8]
	call	wcrtomb
	mov	rbp, rbp
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_990
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	lea	rdi, [rdi]
	test	r14b, r14b
	mov	rbp, rbp
	je	.label_990
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	mov	rbp, rbp
	ja	.label_997
	lea	rdi, [rdi]
	call	__ctype_tolower_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	mov	ebx, dword ptr [rax + rbx*4]
.label_997:
	nop	
	movsxd	rax, ebx
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
.label_990:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1004
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_1004
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	lea	rsi, [rsi]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1004
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	word ptr cs:[rax + rax]
.label_1004:
	lea	rdi, [rdi]
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	jl	.label_1015
	nop	word ptr cs:[rax + rax]
.label_989:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp]
	nop	
	inc	rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rsi + 0x10]
	nop	
	jl	.label_980
.label_991:
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_993:
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, r15
	lea	rsi, [rsi]
	call	memset
	lea	rdi, [rdi]
	cmp	ebx, 2
	mov	rsp, rsp
	jne	.label_991
	or	byte ptr [r13 + 0x38], 1
	nop	
	jmp	.label_991
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e170
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	nop	
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	lea	rsi, [rsi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], rax
	lea	rdi, [rdi]
	mov	ebx, 0xc
	test	rax, rax
	mov	rbp, rbp
	je	.label_1020
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	mov	rbp, rbp
	cmovne	rcx, rax
	mov	ebx, ebp
	lea	rsi, [rsi]
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_1021
	mov	al, byte ptr [r15 + 0x38]
	lea	rsi, [rsi]
	and	al, 0x7f
	lea	rdi, [rdi]
	jmp	.label_1018
.label_1021:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	nop	
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_1018:
	mov	rbp, rbp
	mov	byte ptr [r15 + 0x38], al
	add	ebp, ebp
	nop	
	and	bpl, 0x10
	and	al, 0xef
	nop	
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	lea	rdi, [rdi]
	cmovne	ebx, eax
	test	ebx, ebx
	nop	
	jne	.label_1019
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_1020:
	mov	eax, ebx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1019:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], 0
	mov	rsp, rsp
	jmp	.label_1020
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e2a0
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_1022
	lea	rsi, [rsi]
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_1024
	lea	rdi, [rdi]
	cmp	rbx, r15
	mov	rsp, rsp
	mov	rdx, rbx
	ja	.label_1023
.label_1025:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	call	memcpy
.label_1024:
	mov	rax, rbx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
.label_1023:
	mov	rsp, rsp
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rbp, rbp
	jmp	.label_1025
.label_1022:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e350
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	lea	rdi, [rdi]
	push	rbx
	nop	
	mov	rbx, rdi
	nop	
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1026
	call	free_dfa_content
.label_1026:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e3b0

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	nop	
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1031
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r12d, 8
	cmp	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_1031
	mov	ebp, 0x400ff
	jmp	.label_1043
	nop	word ptr cs:[rax + rax]
.label_1044:
	mov	rbp, rbp
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1043:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	lea	rsi, [rsi]
	je	.label_1028
	nop	
	cmp	ecx, 6
	jne	.label_1030
	nop	
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	call	free
	mov	rdi, r15
	mov	rsp, rsp
	jmp	.label_1039
	nop	dword ptr [rax]
.label_1028:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1039:
	lea	rsi, [rsi]
	call	free
.label_1030:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1044
.label_1031:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	nop	
	je	.label_1027
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	nop	
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	dword ptr [rax + rax]
.label_1042:
	mov	rax, qword ptr [r12]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1029
	mov	rdi, qword ptr [rax + rbx]
	mov	rsp, rsp
	call	free
.label_1029:
	mov	rax, qword ptr [r15]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1034
	mov	rdi, qword ptr [rax + rbx]
	lea	rsi, [rsi]
	call	free
.label_1034:
	mov	rax, qword ptr [r13]
	nop	
	test	rax, rax
	je	.label_1038
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1038:
	mov	rsp, rsp
	inc	rbp
	add	rbx, 0x18
	lea	rdi, [rdi]
	cmp	rbp, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	jb	.label_1042
	lea	rdi, [rdi]
	jmp	.label_1033
.label_1027:
	mov	rsp, rsp
	lea	r13, [r14 + 0x28]
	mov	rbp, rbp
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1033:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r14]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_1036
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_1037
	nop	word ptr cs:[rax + rax]
.label_1035:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1037:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15*2]
	nop	
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	mov	rsp, rsp
	jle	.label_1041
	lea	rbx, [rdi + rax*8]
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1032:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	nop	
	cmp	rbp, qword ptr [rbx]
	nop	
	jl	.label_1032
.label_1041:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1035
	mov	rdi, qword ptr [r14 + 0x40]
.label_1036:
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	lea	rsi, [rsi]
	cmp	rdi, rax
	nop	
	je	.label_1040
	call	free
.label_1040:
	nop	
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e630
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	eax, 2
	mov	rbp, rbp
	cmp	ebp, 7
	nop	
	ja	.label_1045
	test	bpl, 4
	nop	
	jne	.label_1049
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1046
.label_1049:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_1046:
	test	byte ptr [rbx + 0x38], 0x10
	nop	
	jne	.label_1047
	mov	dword ptr [rsp + 0x10], ebp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r15
	lea	rsi, [rsi]
	jmp	.label_1048
.label_1047:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp], 0
.label_1048:
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r8, rdx
	lea	rdi, [rdi]
	mov	r9, rdx
	call	re_search_internal
	mov	rbp, rbp
	test	eax, eax
	setne	al
	movzx	eax, al
.label_1045:
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e710

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x268
	mov	r13, r9
	mov	rbp, rbp
	mov	rbp, rcx
	mov	r9, qword ptr [rsp + 0x2a0]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x180], xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x150], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x128], r11
	mov	rax, qword ptr [rdi + 0x20]
	xor	r12d, r12d
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1200
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	lea	rdi, [rdi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	xor	ebx, ebx
	nop	
	cmp	ecx, 8
	nop	
	cmovne	rax, rbx
	mov	rsp, rsp
	cmp	rbp, r8
	cmove	rax, rbx
	nop	
	mov	r12, rax
.label_1200:
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x30]
	lea	r14, [r9 - 1]
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	sub	rcx, rax
	xor	ebx, ebx
	mov	rsp, rsp
	cmp	rax, r9
	lea	rsi, [rsi]
	cmovb	rbx, rcx
	mov	eax, 1
	mov	rsp, rsp
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_1053
	mov	rbp, rbp
	mov	r15, qword ptr [r11 + 0x48]
	nop	
	test	r15, r15
	mov	rsp, rsp
	je	.label_1053
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1053
	lea	rsi, [rsi]
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	nop	
	je	.label_1075
	cmp	qword ptr [r11 + 0x60], 0
	nop	
	je	.label_1075
	mov	rbp, rbp
	mov	rax, r13
	lea	rsi, [rsi]
	mov	r13, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0x250], r13
	nop	
	cmp	qword ptr [r15 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_1083
	mov	rcx, r8
	mov	r13, rax
	jmp	.label_1077
.label_1075:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_1053
.label_1083:
	cmp	qword ptr [rcx + 0x10], 0
	mov	rbp, rbp
	mov	r13, rax
	mov	rbp, rbp
	je	.label_1122
	mov	rcx, r8
.label_1077:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1c0], r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r14
	lea	rdi, [rdi]
	mov	al, 1
	cmp	rbx, r9
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x230], rbx
	jne	.label_1098
	lea	rdi, [rdi]
	cmp	qword ptr [r11 + 0x98], 0
	mov	rsp, rsp
	setne	al
.label_1098:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x227], al
	mov	rsp, rsp
	mov	r12, qword ptr [r11 + 0x10]
	inc	r12
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x18]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [r11 + 0xb4]
	mov	rbp, rbp
	cmp	rax, r12
	cmovge	r12, rax
	lea	rsi, [rsi]
	lea	rbx, [rdx + 1]
	cmp	rbx, r12
	cmovle	r12, rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x90], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe8], rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbx, qword ptr [rsp + 0x250]
	mov	qword ptr [rsp + 0x108], rbx
	lea	rsi, [rsi]
	shr	rcx, 0x16
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x118], cl
	test	rbx, rbx
	setne	bl
	lea	rdi, [rdi]
	or	bl, cl
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x11b], bl
	mov	dword ptr [rsp + 0x120], eax
	lea	rsi, [rsi]
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 2
	and	cl, 1
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x119], cl
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 3
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	cmp	rax, 2
	nop	
	mov	byte ptr [rsp + 0x11a], cl
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf8], rdx
	mov	qword ptr [rsp + 0xf0], rdx
	lea	rdi, [rdi]
	jl	.label_1175
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x80], r11
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	nop	
	mov	ecx, 0xc
	nop	
	cmp	r12, rax
	mov	rbp, rbp
	ja	.label_1058
	mov	qword ptr [rsp + 0x210], rsi
	mov	qword ptr [rsp + 0x68], rdx
	mov	rsp, rsp
	mov	r14, rdi
	lea	rsi, [r12*4]
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	call	realloc
	mov	rbp, rbp
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1058
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x80]
	nop	
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x210]
.label_1175:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x210], rsi
	mov	qword ptr [rsp + 0x68], rdx
	test	bl, bl
	je	.label_1078
	mov	r14, rdi
	mov	qword ptr [rsp + 0x80], r11
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, r12
	call	realloc
	lea	rdi, [rdi]
	mov	ecx, 0xc
	mov	rbp, rbp
	test	rax, rax
	je	.label_1058
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	mov	rdi, r14
.label_1078:
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x2b0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r12
	mov	rsp, rsp
	lea	rax, [r11 + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x110], rax
	mov	rax, qword ptr [r11 + 0xb0]
	mov	cl, al
	mov	rsp, rsp
	shr	cl, 4
	and	cl, 1
	mov	byte ptr [rsp + 0x11e], cl
	xor	ecx, ecx
	test	bl, bl
	jne	.label_1194
	shr	rax, 0x20
	mov	rcx, qword ptr [rsp + 0x210]
	mov	qword ptr [rsp + 0x98], rcx
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	cmp	eax, 1
	mov	rbp, rbp
	cmovle	rcx, qword ptr [rsp + 0x68]
.label_1194:
	mov	qword ptr [rsp + 0xc0], rcx
	mov	qword ptr [rsp + 0xc8], rcx
	mov	qword ptr [rsp + 0xf8], r13
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xf0], r13
	mov	rbp, rbp
	mov	al, byte ptr [rdi + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x260], rdi
	nop	
	shr	al, 7
	mov	byte ptr [rsp + 0x11d], al
	mov	rbx, qword ptr [r11 + 0x98]
	mov	qword ptr [rsp + 0x80], r11
	lea	r14, [rbx + rbx]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x130], edx
	mov	qword ptr [rsp + 0x138], -1
	test	rbx, rbx
	mov	rbp, rbp
	jle	.label_1214
	mov	ecx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_1058
	lea	rdi, [rdi]
	shl	rbx, 4
	mov	rsp, rsp
	lea	rdi, [rbx + rbx*4]
	mov	rsp, rsp
	call	malloc
	lea	rdi, [rdi]
	mov	r13, rax
	mov	qword ptr [rsp + 0x168], r13
	mov	rbp, rbp
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x188], rax
	lea	rsi, [rsi]
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_1104
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	mov	ecx, 0xc
	nop	
	je	.label_1058
.label_1214:
	mov	rax, qword ptr [rsp + 0x2a0]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x230]
	mov	rbp, rbp
	sub	rcx, rax
	nop	
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x160], r14
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x170], 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x180], r14
	lea	rdi, [rdi]
	cmp	rcx, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x80]
	ja	.label_1132
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0xb0]
	mov	rbp, rbp
	test	dil, 2
	nop	
	jne	.label_1132
	shr	rdi, 0x20
	mov	qword ptr [rsp + 0x148], 0
	jmp	.label_1090
.label_1132:
	lea	rsi, [rsi]
	mov	ecx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r12, rax
	ja	.label_1058
	lea	rdi, [rdi]
	lea	rdi, [r12*8 + 8]
	call	malloc
	lea	rsi, [rsi]
	mov	ecx, 0xc
	mov	qword ptr [rsp + 0x148], rax
	test	rax, rax
	je	.label_1058
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x80]
	mov	edi, dword ptr [rax + 0xb4]
.label_1090:
	nop	
	mov	r13, qword ptr [rsp + 0x1c0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], rax
	mov	qword ptr [rsp + 0x88], rbp
	nop	
	mov	eax, dword ptr [rsp + 0x2b0]
	mov	rsp, rsp
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0x100], eax
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	cmp	rbx, rbp
	lea	rdi, [rdi]
	mov	rax, rbp
	mov	rsp, rsp
	cmovle	rax, rbx
	mov	qword ptr [rsp + 0x78], rax
	mov	rsp, rsp
	mov	r8, rax
	mov	r14, rbx
	cmovl	r14, rbp
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rdi, [rdi]
	mov	edx, 8
	mov	rbp, rbp
	test	r13, r13
	je	.label_1111
	cmp	edi, 1
	je	.label_1136
	nop	
	mov	ecx, 0x400000
	xor	eax, eax
	nop	
	cmp	qword ptr [rsp + 0x250], 0
	mov	rdx, qword ptr [rsp + 0x260]
	mov	rsp, rsp
	jne	.label_1137
	mov	rbp, rbp
	and	rcx, qword ptr [rdx + 0x18]
	mov	rsp, rsp
	jne	.label_1137
.label_1136:
	mov	eax, 4
.label_1137:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x250], 0
	setne	cl
	lea	rsi, [rsi]
	cmp	rbp, rbx
	setle	dl
	movzx	ecx, cl
	movzx	edx, dl
	lea	rdi, [rdi]
	lea	edx, [rcx + rdx*2]
	lea	rdi, [rdi]
	or	edx, eax
.label_1111:
	nop	
	mov	qword ptr [rsp + 8], rdi
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbp, rbx
	setle	byte ptr [rsp + 0x23f]
	mov	rbp, rbp
	lea	rcx, [rsp + 0x88]
	cmovg	rcx, rax
	mov	qword ptr [rsp + 0x1a8], rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x1a0], rax
	cmp	rbx, rbp
	mov	eax, 1
	nop	
	mov	rcx, -1
	cmovge	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1c0], rcx
	lea	rsi, [rsi]
	add	edx, -4
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rdx
	mov	rbx, r8
	jmp	.label_1067
.label_1140:
	mov	r12, qword ptr [rsp + 8]
	mov	rsp, rsp
	cmp	r12d, 1
	mov	rsp, rsp
	je	.label_1170
	mov	rax, qword ptr [rsp + 0xc0]
	test	rax, rax
	je	.label_1170
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xa0]
	cmp	dword ptr [rax], -1
	je	.label_1177
.label_1170:
	mov	dword ptr [rsp + 0x170], 0
	lea	rsi, [rsi]
	lea	rax, [rsp + 0x150]
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rax], xmm0
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x128]
	nop	
	mov	r14, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24c], 0
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	js	.label_1181
	mov	r12b, byte ptr [rsp + 0x227]
	lea	rdi, [rdi]
	jmp	.label_1059
.label_1181:
	lea	rsi, [rsi]
	test	r14, r14
	lea	rsi, [rsi]
	jle	.label_1195
	lea	rax, [r14 - 1]
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xe8], rax
	je	.label_1198
	cmp	dword ptr [rsp + 0x120], 2
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x227]
	mov	rbp, rbp
	jl	.label_1203
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	rcx, r14
	nop	dword ptr [rax + rax]
.label_1212:
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	mov	rsp, rsp
	cmp	ebp, -1
	jne	.label_1208
	dec	rcx
	mov	rbp, rbp
	jg	.label_1212
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x100]
	mov	rsp, rsp
	jmp	.label_1051
.label_1203:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x110]
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	mov	rsp, rsp
	shr	cl, 6
	nop	
	movzx	ecx, cl
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rbp, rbp
	bt	rcx, rax
	mov	rbp, rbp
	jb	.label_1055
	lea	rsi, [rsi]
	movzx	eax, al
	nop	
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_1059
	nop	
	jmp	.label_1225
.label_1208:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x11e], 0
	jne	.label_1176
.label_1089:
	cmp	ebp, 0xa
	mov	rbp, rbp
	jne	.label_1059
.label_1225:
	lea	rsi, [rsi]
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x11d], 0
	jne	.label_1051
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_1051
.label_1195:
	mov	ecx, dword ptr [rsp + 0x100]
	mov	r12b, byte ptr [rsp + 0x227]
	lea	rdi, [rdi]
	jmp	.label_1051
.label_1198:
	mov	ecx, dword ptr [rsp + 0x130]
	lea	rsi, [rsi]
	and	ecx, 2
	xor	ecx, 0xa
	mov	r12b, byte ptr [rsp + 0x227]
.label_1051:
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1055
	mov	rsp, rsp
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_1059
	mov	eax, ecx
	nop	
	and	eax, 4
	sete	sil
	nop	
	mov	edx, ecx
	and	edx, 2
	mov	rbp, rbp
	je	.label_1063
	test	sil, sil
	jne	.label_1063
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_1059
.label_1063:
	test	edx, edx
	nop	
	jne	.label_1068
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_1059
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x24c]
	mov	rbp, rbp
	mov	rsi, r15
	call	re_acquire_state_context
	mov	rbx, rax
	lea	rdi, [rdi]
	jmp	.label_1059
.label_1068:
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_1059
.label_1176:
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	iswalnum
	nop	
	cmp	ebp, 0x5f
	lea	rdi, [rdi]
	je	.label_1055
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1089
.label_1055:
	nop	
	mov	rbx, qword ptr [r15 + 0x50]
.label_1059:
	mov	cl, byte ptr [rsp + 0x23f]
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1073
	mov	rax, qword ptr [rsp + 0x148]
	test	rax, rax
	mov	rbp, rbp
	mov	dl, cl
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x30], edx
	je	.label_1100
	mov	qword ptr [rax + r14*8], rbx
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x98], 0
	lea	rdi, [rdi]
	mov	al, cl
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x30], eax
	jne	.label_1102
.label_1100:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x23f], cl
	mov	cl, byte ptr [rbx + 0x68]
	mov	rbp, rbp
	mov	r15, -1
	mov	rbp, rbp
	test	cl, 0x10
	mov	eax, 0
	jne	.label_1189
.label_1121:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x1a8]
.label_1221:
	mov	qword ptr [rsp + 0x1b0], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	cmp	qword ptr [rsp + 0xf8], rbp
	mov	rsp, rsp
	jle	.label_1119
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	sete	al
	or	al, r12b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x25f], al
	mov	r14, rbx
	jmp	.label_1126
.label_1127:
	mov	qword ptr [rsp + 0x228], r15
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	jle	.label_1133
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x128]
	mov	qword ptr [rsp + 0x70], rsi
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_1065
.label_1141:
	mov	rax, qword ptr [rsp + 0xd8]
	test	rax, rax
	jle	.label_1142
	lea	rdx, [rax - 1]
	nop	
	mov	ecx, 0xa
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0xe8], rdx
	je	.label_1099
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x120], 2
	jl	.label_1150
	mov	rcx, qword ptr [rsp + 0xa0]
.label_1157:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	mov	rbp, rbp
	jne	.label_1153
	mov	rbp, rbp
	dec	rax
	jg	.label_1157
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x100]
	jmp	.label_1099
.label_1201:
	lea	rsi, [rsi]
	cmp	r14, rbx
	mov	rsp, rsp
	je	.label_1159
	mov	dword ptr [rsp + 0x30], 0
.label_1159:
	mov	r14, qword ptr [rsp + 0x38]
	cmove	r14, qword ptr [rsp + 0x240]
	mov	rsp, rsp
	jmp	.label_1162
.label_1150:
	nop	
	mov	rax, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 0x110]
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	lea	rsi, [rsi]
	shr	dl, 6
	lea	rdi, [rdi]
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_1099
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	lea	rsi, [rsi]
	jne	.label_1099
	jmp	.label_1185
.label_1153:
	cmp	byte ptr [rsp + 0x11e], 0
	jne	.label_1186
.label_1101:
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	cmp	ebx, 0xa
	jne	.label_1099
.label_1185:
	mov	rbp, rbp
	mov	ecx, 2
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x11d], 0
	jne	.label_1099
	lea	rdi, [rdi]
	xor	ecx, ecx
	jmp	.label_1099
.label_1080:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x4c], eax
	nop	
	mov	qword ptr [rsp + 0x198], rcx
	mov	qword ptr [rsp + 0x70], rsi
	mov	edi, ebx
	mov	rsp, rsp
	call	iswalnum
	lea	rsi, [rsi]
	xor	edx, edx
	cmp	ebx, 0x5f
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	je	.label_1155
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x198]
	mov	eax, dword ptr [rsp + 0x4c]
	mov	rsp, rsp
	je	.label_1173
	jmp	.label_1071
.label_1218:
	mov	rsp, rsp
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	je	.label_1219
	test	eax, eax
	lea	rdi, [rsp + 0x50]
	je	.label_1230
	mov	rsp, rsp
	jmp	.label_1084
.label_1155:
	mov	rsi, qword ptr [rsp + 0x70]
	nop	
	mov	rcx, qword ptr [rsp + 0x198]
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x4c]
	lea	rsi, [rsi]
	jmp	.label_1071
.label_1219:
	lea	rdi, [rsp + 0x50]
	jmp	.label_1084
.label_1065:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x18]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rsi]
	mov	rsp, rsp
	mov	rcx, rbp
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	lea	rdi, [rdi]
	test	eax, 0x100000
	je	.label_1108
	mov	r12d, eax
	shr	r12d, 8
	mov	rbp, rbp
	test	r12w, 0x3ff
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rsp, rsp
	je	.label_1117
	test	rcx, rcx
	js	.label_1228
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xe8], rcx
	mov	rsp, rsp
	je	.label_1229
	mov	r8d, eax
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x120], 2
	jl	.label_1232
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rdx, [rcx + 1]
.label_1056:
	mov	rsp, rsp
	mov	ebx, dword ptr [rax + rdx*4 - 4]
	lea	rdi, [rdi]
	cmp	ebx, -1
	jne	.label_1079
	mov	rbp, rbp
	dec	rdx
	test	rdx, rdx
	jg	.label_1056
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x100]
	lea	rsi, [rsi]
	jmp	.label_1060
.label_1232:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rdi, qword ptr [rsp + 0x110]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + rcx]
	nop	
	mov	dl, al
	shr	dl, 6
	nop	
	movzx	edx, dl
	nop	
	mov	rdx, qword ptr [rdi + rdx*8]
	xor	edi, edi
	bt	rdx, rax
	jae	.label_1064
	mov	edi, 1
	xor	edx, edx
	mov	eax, r8d
	jmp	.label_1071
.label_1079:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x11e], 0
	mov	eax, r8d
	mov	rsp, rsp
	jne	.label_1080
.label_1173:
	lea	rsi, [rsi]
	mov	r8d, eax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	cmp	ebx, 0xa
	je	.label_1087
	jmp	.label_1060
.label_1064:
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	nop	
	jne	.label_1060
.label_1087:
	mov	edi, 2
	cmp	byte ptr [rsp + 0x11d], 0
	jne	.label_1060
	xor	edi, edi
	jmp	.label_1060
.label_1228:
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x100]
	jmp	.label_1060
.label_1229:
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x130]
	nop	
	and	edi, 2
	nop	
	xor	edi, 0xa
.label_1060:
	mov	eax, edi
	and	eax, 1
	lea	rdi, [rdi]
	sete	dl
	test	r12b, 4
	je	.label_1130
	lea	rdi, [rdi]
	test	eax, eax
	mov	eax, r8d
	je	.label_1108
	jmp	.label_1071
.label_1130:
	nop	
	mov	eax, r8d
.label_1071:
	test	ah, 8
	je	.label_1110
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_1108
.label_1110:
	test	ah, 0x20
	je	.label_1113
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 2
	lea	rdi, [rdi]
	je	.label_1108
.label_1113:
	test	r12b, r12b
	jns	.label_1117
	mov	rbp, rbp
	and	edi, 8
	lea	rsi, [rsi]
	je	.label_1108
.label_1117:
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rsp, rsp
	lea	rdx, [rsp + 0x90]
	call	check_node_accept_bytes
	mov	rsp, rsp
	mov	rsi, rbx
	test	eax, eax
	nop	
	je	.label_1108
	movsxd	r12, eax
	lea	rdi, [rdi]
	add	r12, qword ptr [rsp + 0xd8]
	nop	
	mov	ecx, dword ptr [rsp + 0x170]
	cmp	ecx, eax
	nop	
	cmovl	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x170], ecx
	mov	rbx, qword ptr [rsp + 0x150]
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	nop	
	cmp	rcx, r12
	jg	.label_1129
	cmp	rcx, rax
	jl	.label_1144
.label_1129:
	mov	rcx, qword ptr [rsp + 0xc0]
	cmp	rcx, r12
	lea	rsi, [rsi]
	jg	.label_1145
	cmp	rcx, rax
	lea	rdi, [rdi]
	jge	.label_1145
.label_1144:
	mov	rbp, rbp
	lea	esi, [r12 + 1]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x90]
	lea	rdi, [rdi]
	call	extend_buffers
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1152
.label_1145:
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rbp, rbp
	sub	rdx, rbx
	mov	rsp, rsp
	jle	.label_1154
	nop	
	mov	rax, qword ptr [rsp + 0x148]
	nop	
	lea	rdi, [rax + rbx*8 + 8]
	shl	rdx, 3
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x150], r12
.label_1154:
	mov	dword ptr [rsp + 0x50], 0
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	mov	rbp, rbp
	add	rdx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x148]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r12*8]
	mov	rbp, rcx
	nop	
	test	rbx, rbx
	je	.label_1163
	nop	
	mov	rsi, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x1d0]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x50], eax
	test	eax, eax
	je	.label_1182
	mov	rbp, rbp
	jmp	.label_1062
.label_1163:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x1e0], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x1d0], xmm0
.label_1182:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x198], rbx
	nop	
	test	r12, r12
	mov	rsp, rsp
	jle	.label_1082
	mov	rbp, rbp
	lea	rax, [r12 - 1]
	cmp	qword ptr [rsp + 0xe8], rax
	lea	rdi, [rsp + 0x50]
	mov	rsp, rsp
	je	.label_1191
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x120], 2
	mov	rbp, rbp
	jl	.label_1196
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	rcx, r12
.label_1190:
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	mov	rsp, rsp
	cmp	ebx, -1
	jne	.label_1202
	mov	rbp, rbp
	dec	rcx
	mov	rbp, rbp
	jg	.label_1190
	mov	ecx, dword ptr [rsp + 0x100]
	jmp	.label_1084
.label_1196:
	mov	rcx, qword ptr [rsp + 0x98]
	mov	rdx, qword ptr [rsp + 0x110]
	nop	
	movzx	eax, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	cl, al
	nop	
	shr	cl, 6
	lea	rdi, [rdi]
	movzx	ecx, cl
	nop	
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	bt	rdx, rax
	lea	rdi, [rdi]
	jb	.label_1084
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_1084
	jmp	.label_1217
.label_1202:
	nop	
	cmp	byte ptr [rsp + 0x11e], 0
	mov	rsp, rsp
	jne	.label_1218
.label_1230:
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	ebx, 0xa
	mov	rsp, rsp
	jne	.label_1084
.label_1217:
	mov	ecx, 2
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x11d], 0
	mov	rbp, rbp
	jne	.label_1084
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_1084
.label_1082:
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x50]
	mov	rsp, rsp
	jmp	.label_1084
.label_1191:
	mov	ecx, dword ptr [rsp + 0x130]
	lea	rdi, [rdi]
	and	ecx, 2
	lea	rsi, [rsi]
	xor	ecx, 0xa
.label_1084:
	mov	rsi, rbp
	lea	rdx, [rsp + 0x1d0]
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x198], 0
	mov	rcx, qword ptr [rsp + 0x148]
	mov	qword ptr [rcx + r12*8], rax
	mov	rbp, rbp
	je	.label_1233
	mov	rdi, qword ptr [rsp + 0x1e0]
	call	free
.label_1233:
	mov	rax, qword ptr [rsp + 0x148]
	cmp	qword ptr [rax + r12*8], 0
	lea	rsi, [rsi]
	mov	rsi, rbp
	jne	.label_1108
	nop	
	mov	eax, dword ptr [rsp + 0x50]
	nop	
	test	eax, eax
	nop	
	jne	.label_1062
.label_1108:
	inc	r15
	cmp	r15, qword ptr [r14 + 0x10]
	mov	rsp, rsp
	jl	.label_1065
.label_1133:
	mov	dword ptr [rsp + 0x24c], 0
	mov	r12b, byte ptr [rsp + 0x227]
	nop	
	mov	r15, qword ptr [rsp + 0x228]
	mov	rsp, rsp
	jmp	.label_1151
.label_1142:
	mov	ecx, dword ptr [rsp + 0x100]
.label_1099:
	mov	rbp, rbp
	and	ecx, 1
	nop	
	shl	rcx, 8
	mov	rbp, rbp
	or	rcx, rbp
	mov	rbx, qword ptr [r15 + rcx*8]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x228]
	lea	rsi, [rsi]
	jmp	.label_1081
.label_1152:
	mov	dword ptr [rsp + 0x50], eax
.label_1062:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24c], eax
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x227]
	mov	r15, qword ptr [rsp + 0x228]
	mov	rsp, rsp
	jmp	.label_1081
.label_1186:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_1099
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1101
	jmp	.label_1099
.label_1126:
	mov	rbp, rbp
	lea	rdx, [rbp + 1]
	mov	qword ptr [rsp + 0x240], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xd0]
	nop	
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	cmp	rdx, rcx
	jl	.label_1105
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1114
.label_1105:
	mov	rcx, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x240], rcx
	jl	.label_1115
	cmp	rcx, rax
	lea	rdi, [rdi]
	jge	.label_1115
.label_1114:
	add	ebp, 2
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	lea	rdi, [rdi]
	mov	esi, ebp
	call	extend_buffers
	mov	dword ptr [rsp + 0x24c], eax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1124
.label_1115:
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_1127
.label_1151:
	mov	rax, qword ptr [rsp + 0xd8]
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd8], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rcx + rax]
.label_1148:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1139
	mov	qword ptr [rsp + 0x228], r15
	mov	r15, qword ptr [r14 + 0x60]
	lea	rdi, [rdi]
	test	r15, r15
	nop	
	jne	.label_1141
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x128]
	mov	rsi, r14
	lea	rdi, [rdi]
	call	build_trtable
	test	al, al
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x228]
	lea	rdi, [rdi]
	jne	.label_1148
	mov	dword ptr [rsp + 0x24c], 0xc
	xor	ebx, ebx
	jmp	.label_1081
.label_1139:
	mov	rbx, qword ptr [rax + rbp*8]
.label_1081:
	cmp	qword ptr [rsp + 0x148], 0
	je	.label_1156
	lea	rdi, [rsp + 0x24c]
	lea	rsi, [rsp + 0x90]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	merge_state_with_log
	mov	rsp, rsp
	mov	rbx, rax
.label_1156:
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_1161
	nop	
	cmp	dword ptr [rsp + 0x24c], 0
	lea	rdi, [rdi]
	jne	.label_1104
	mov	rax, qword ptr [rsp + 0x148]
	lea	rdi, [rdi]
	test	rax, rax
	setne	cl
	lea	rsi, [rsi]
	and	cl, byte ptr [rsp + 0x25f]
	nop	
	movzx	ecx, cl
	cmp	ecx, 1
	mov	rbp, rbp
	je	.label_1167
	jmp	.label_1119
.label_1193:
	mov	rax, qword ptr [rsp + 0x148]
.label_1167:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xd8]
	nop	
	mov	rcx, qword ptr [rsp + 0x150]
	nop	dword ptr [rax + rax]
.label_1187:
	mov	rbp, rbp
	cmp	rdx, rcx
	jge	.label_1119
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0xd8], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	nop	
	je	.label_1187
	xor	edx, edx
	lea	rdi, [rsp + 0x24c]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x90]
	call	merge_state_with_log
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_1215
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x24c]
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1193
.label_1215:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1119
.label_1161:
	mov	eax, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1201
	mov	r14, qword ptr [rsp + 0x38]
.label_1162:
	mov	rbp, rbp
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	mov	rbp, rbp
	jne	.label_1204
	mov	qword ptr [rsp + 0x38], r14
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xd8]
	nop	
	jmp	.label_1206
.label_1204:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xd8]
	test	al, al
	jns	.label_1210
	lea	rdi, [rsp + 0x90]
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, rbp
	call	check_halt_state_context
	mov	rbp, rbp
	test	rax, rax
	nop	
	jne	.label_1210
	mov	qword ptr [rsp + 0x38], r14
.label_1206:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf8], rbp
	lea	rdi, [rdi]
	mov	r14, rbx
	nop	
	jg	.label_1126
	jmp	.label_1119
.label_1210:
	nop	
	test	r12b, r12b
	mov	r15, rbp
	mov	eax, 1
	mov	ecx, 0
	jne	.label_1221
	jmp	.label_1085
.label_1119:
	mov	rcx, qword ptr [rsp + 0x1b0]
	nop	
	test	rcx, rcx
	je	.label_1223
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	nop	
	add	qword ptr [rcx], rax
	mov	rbp, r15
	mov	rsp, rsp
	jmp	.label_1085
.label_1223:
	mov	rbp, rbp
	mov	rbp, r15
.label_1085:
	mov	byte ptr [rsp + 0x227], r12b
	mov	rbp, rbp
	cmp	rbp, -1
	mov	r12, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x1b8]
	je	.label_1188
	mov	ecx, 0xc
	mov	rbp, rbp
	cmp	rbp, -2
	nop	
	je	.label_1058
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x40], 1
	mov	rsp, rsp
	seta	al
	mov	qword ptr [rsp + 0x138], rbp
	mov	rcx, qword ptr [rsp + 0x260]
	test	byte ptr [rcx + 0x38], 0x10
	lea	rsi, [rsi]
	sete	bl
	and	bl, al
	mov	rbp, rbp
	je	.label_1052
	mov	rax, qword ptr [rsp + 0x148]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0x90]
	mov	rdx, rbp
	call	check_halt_state_context
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x140], rax
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x80]
	jmp	.label_1069
.label_1052:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x80]
	cmp	qword ptr [r12 + 0x98], 0
	nop	
	je	.label_1076
	mov	rax, qword ptr [rsp + 0x148]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	check_halt_state_context
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x140], rax
	lea	rdi, [rdi]
	test	bl, 1
	mov	rsp, rsp
	je	.label_1091
.label_1069:
	nop	
	test	byte ptr [r12 + 0xb0], 1
	mov	rsp, rsp
	jne	.label_1095
.label_1091:
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x98], 0
	mov	rsp, rsp
	je	.label_1076
.label_1095:
	mov	qword ptr [rsp + 0x80], r12
	mov	rbp, rbp
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	lea	rdi, [rdi]
	ja	.label_1104
	mov	r14, qword ptr [rsp + 0x128]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x240], rax
	lea	rsi, [rsi]
	lea	r12, [rbp*8 + 8]
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbx, rax
	mov	r15d, 0
	je	.label_1222
	cmp	qword ptr [r14 + 0x98], 0
	lea	rdi, [rdi]
	je	.label_1123
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], r14
	mov	rdi, r12
	mov	rbp, rbp
	call	malloc
	mov	r15, rax
	nop	
	test	r15, r15
	je	.label_1131
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	rdx, r12
	mov	rsp, rsp
	call	memset
	mov	r12, rbx
	mov	qword ptr [rsp + 0x38], r12
	mov	qword ptr [rsp + 0x1d0], r12
	nop	
	mov	qword ptr [rsp + 0x1d8], r15
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x240]
	mov	qword ptr [rsp + 0x1e0], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1e8], rbp
	lea	rax, [rsp + 0x1f0]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x1d0]
	lea	rsi, [rsi]
	call	sift_states_backward
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x1b8]
	jne	.label_1072
.label_1096:
	mov	rbp, rbp
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	mov	rsp, rsp
	jne	.label_1107
	cmp	qword ptr [r15], 0
	nop	
	mov	esi, 0
	jne	.label_1107
	lea	rdi, [rdi]
	mov	r12, r15
	mov	rbp, rbp
	test	rbp, rbp
	jle	.label_1165
	mov	rax, qword ptr [rsp + 0x148]
	dec	rbp
	nop	dword ptr [rax]
.label_1179:
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_1172
	lea	rdi, [rdi]
	test	byte ptr [rsi + 0x68], 0x10
	nop	
	jne	.label_1178
.label_1172:
	lea	rcx, [rbp - 1]
	nop	
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, 2
	mov	rbp, rcx
	jge	.label_1179
	jmp	.label_1165
.label_1178:
	mov	rbp, rbp
	lea	r15, [rsp + 0x90]
	mov	rdi, r15
	mov	rdx, rbp
	call	check_halt_state_context
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x240], rax
	lea	rdx, [rbp*8 + 8]
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, r12
	call	memset
	mov	rcx, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x1d0], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1d8], r12
	mov	rax, qword ptr [rsp + 0x240]
	mov	qword ptr [rsp + 0x1e0], rax
	mov	qword ptr [rsp + 0x1e8], rbp
	lea	rax, [rsp + 0x1f0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, r15
	mov	r15, r12
	mov	r12, rcx
	lea	rsi, [rsp + 0x1d0]
	mov	rbp, rbp
	call	sift_states_backward
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_1096
	lea	rsi, [rsi]
	mov	r12, r15
	jmp	.label_1118
.label_1123:
	nop	
	mov	qword ptr [rsp + 0x38], rbx
	nop	
	mov	qword ptr [rsp + 0x1d0], rbx
	mov	qword ptr [rsp + 0x1d8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x240]
	mov	qword ptr [rsp + 0x1e0], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1e8], rbp
	mov	rsp, rsp
	lea	rax, [rsp + 0x1f0]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x90]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x1d0]
	mov	rsp, rsp
	call	sift_states_backward
	test	eax, eax
	mov	r12d, 0
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x1b8]
	jne	.label_1118
	mov	rax, qword ptr [rsp + 0x38]
	nop	
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	mov	r12d, 0
	jne	.label_1164
.label_1165:
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
.label_2884:
	call	free
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 8]
.label_1188:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x90]
	call	match_ctx_clean
.label_1177:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x88]
	add	rbp, qword ptr [rsp + 0x1c0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rbp
	cmp	rbp, rbx
	mov	rbp, rbp
	mov	ecx, 1
	jl	.label_1058
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r12
	cmp	r14, rbp
	jge	.label_1067
	jmp	.label_1058
.label_1189:
	test	cl, cl
	js	.label_1074
	test	r12b, r12b
	lea	rsi, [rsi]
	mov	r15, r14
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rsi, [rsi]
	jne	.label_1121
	mov	rbp, r14
	jmp	.label_1085
.label_1102:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x23f], cl
	lea	rbp, [rbx + 8]
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24c], eax
	test	eax, eax
	jne	.label_1092
	lea	rsi, [rsi]
	test	byte ptr [rbx + 0x68], 0x40
	nop	
	je	.label_1097
	mov	rsp, rsp
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	call	transit_state_bkref
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x24c], eax
	mov	rsp, rsp
	test	eax, eax
	jne	.label_1103
.label_1097:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], 0
	mov	cl, byte ptr [rsp + 0x23f]
	jmp	.label_1100
.label_1074:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbx
	mov	rdx, r14
	call	check_halt_state_context
	cmp	rax, 1
	sbb	r15, r15
	nop	
	test	rax, rax
	sete	cl
	lea	rsi, [rsi]
	setne	al
	movzx	eax, al
	mov	rsp, rsp
	or	cl, r12b
	je	.label_1116
	mov	rbp, rbp
	or	r15, r14
	jmp	.label_1121
.label_1116:
	mov	rbp, r14
	mov	rsp, rsp
	jmp	.label_1085
.label_1107:
	nop	
	mov	qword ptr [rsp + 0x38], r12
	lea	rsi, [rsi]
	test	rbp, rbp
	js	.label_1125
	mov	rsp, rsp
	xor	r12d, r12d
	jmp	.label_1093
.label_1112:
	mov	rax, qword ptr [rsp + 0x38]
	nop	
	mov	rsi, qword ptr [rax + r12*8 + 8]
	inc	r12
.label_1093:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + r12*8]
	lea	rsi, [rsi]
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_1134
	test	rdx, rdx
	nop	
	je	.label_1138
	add	rsi, 8
	mov	rbp, rbp
	add	rdx, 8
	lea	rbx, [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	re_node_set_init_union
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x24c], eax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1146
	mov	rbp, rbp
	lea	rdi, [rsp + 0x24c]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + r12*8], rax
	nop	
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x24c]
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1138
	jmp	.label_1146
.label_1134:
	nop	
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	qword ptr [rax + r12*8], rdx
.label_1138:
	cmp	r12, rbp
	jl	.label_1112
.label_1125:
	xor	eax, eax
.label_1146:
	nop	
	mov	rdi, r15
	nop	
	mov	ebx, eax
	call	free
	nop	
	mov	eax, ebx
	test	eax, eax
	mov	rbp, rbp
	mov	r12d, 0
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x1b8]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	je	.label_1164
	jmp	.label_1118
.label_1072:
	mov	qword ptr [rsp + 0x38], r12
	mov	r12, r15
.label_1118:
	mov	r15, rbx
	nop	
	mov	rdi, qword ptr [rsp + 0x38]
	mov	ebp, eax
	call	free
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	nop	
	test	ebp, ebp
	lea	rdi, [rdi]
	mov	eax, ebp
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x80]
	lea	rsi, [rsi]
	je	.label_1076
	mov	ecx, eax
	cmp	ecx, 1
	mov	r12, qword ptr [rsp + 8]
	mov	rbx, r15
	je	.label_1188
	mov	rbp, rbp
	jmp	.label_1058
.label_1092:
	lea	rsi, [rsi]
	movsxd	rbp, eax
	mov	rsp, rsp
	jmp	.label_1085
.label_1103:
	movsxd	rbp, eax
	lea	rsi, [rsi]
	jmp	.label_1085
.label_1067:
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	cmp	eax, 4
	ja	.label_1192
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1197]]
.label_2985:
	lea	rsi, [rsi]
	cmp	rbp, rbx
	mov	rax, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x210]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x250]
	jl	.label_1199
	nop	dword ptr [rax + rax]
.label_1213:
	xor	eax, eax
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jge	.label_1205
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx + rbp]
.label_1205:
	test	rsi, rsi
	je	.label_1209
	movzx	eax, byte ptr [rsi + rax]
.label_1209:
	cmp	byte ptr [r13 + rax], 0
	jne	.label_1211
	nop	
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x88], rax
	lea	rdi, [rdi]
	cmp	rbp, rbx
	mov	rbp, rax
	jg	.label_1213
	jmp	.label_1199
.label_1192:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	jmp	.label_1216
	nop	word ptr cs:[rax + rax]
.label_1066:
	nop	
	add	rbp, qword ptr [rsp + 0x1c0]
	mov	qword ptr [rsp + 0x88], rbp
	cmp	rbp, rbx
	lea	rsi, [rsi]
	mov	ecx, 1
	lea	rdi, [rdi]
	jl	.label_1058
	lea	rdi, [rdi]
	cmp	rbp, r14
	jle	.label_1216
	mov	rsp, rsp
	jmp	.label_1058
.label_1054:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	nop	
	mov	edx, dword ptr [rsp + 0x2b0]
	call	re_string_reconstruct
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_1058
	mov	rbp, qword ptr [rsp + 0x88]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rcx, rbp
	mov	rbp, rbp
	sub	rcx, rax
	lea	rsi, [rsi]
	jmp	.label_1231
	nop	word ptr cs:[rax + rax]
.label_1216:
	mov	rcx, rbp
	sub	rcx, rax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rsp + 0xc8]
	jae	.label_1054
.label_1231:
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	rbp, rdx
	nop	
	mov	edx, 0
	nop	
	jge	.label_1061
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x98]
	movzx	edx, byte ptr [rdx + rcx]
.label_1061:
	cmp	byte ptr [r13 + rdx], 0
	mov	rbp, rbp
	je	.label_1066
	nop	
	jmp	.label_1070
.label_2986:
	nop	
	cmp	rbp, r14
	mov	rcx, qword ptr [rsp + 0x210]
	mov	rdx, qword ptr [rsp + 0x250]
	jge	.label_1086
	nop	word ptr cs:[rax + rax]
.label_1088:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [r13 + rax], 0
	mov	rsp, rsp
	jne	.label_1086
	lea	rsi, [rsi]
	inc	rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x88], rbp
	mov	rsp, rsp
	cmp	rbp, r14
	nop	
	jl	.label_1088
	jmp	.label_1086
.label_2987:
	cmp	rbp, r14
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x210]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x250]
	lea	rdi, [rdi]
	jge	.label_1086
	nop	dword ptr [rax]
.label_1106:
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rdx + rax]
	cmp	byte ptr [r13 + rax], 0
	lea	rdi, [rdi]
	jne	.label_1086
	mov	rbp, rbp
	inc	rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rbp
	mov	rbp, rbp
	cmp	rbp, r14
	nop	
	jl	.label_1106
.label_1086:
	mov	qword ptr [rsp + 0x250], rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x210], rcx
	cmp	rbp, r14
	lea	rsi, [rsi]
	jne	.label_1070
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	r14, rcx
	mov	rcx, qword ptr [rsp + 0x210]
	jge	.label_1207
	movzx	eax, byte ptr [rcx + r14]
.label_1207:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x250]
	mov	rbp, rbp
	test	rcx, rcx
	je	.label_1120
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rax]
.label_1120:
	mov	rsp, rsp
	mov	ecx, 1
	nop	
	cmp	byte ptr [r13 + rax], 0
	mov	rbp, r14
	lea	rdi, [rdi]
	jne	.label_1070
	mov	rbp, rbp
	jmp	.label_1058
.label_1211:
	mov	rax, rbp
.label_1199:
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	cmp	rax, rbx
	mov	rbp, rax
	jl	.label_1058
.label_1070:
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x2b0]
	mov	rsp, rsp
	call	re_string_reconstruct
	mov	ecx, eax
	lea	rdi, [rdi]
	test	ecx, ecx
	je	.label_1140
	jmp	.label_1058
.label_1124:
	cmp	eax, 0xc
	nop	
	jne	.label_1143
.label_1104:
	nop	
	mov	ecx, 0xc
.label_1058:
	lea	rsi, [rsi]
	mov	ebx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x148]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	mov	rsp, rsp
	je	.label_1149
	nop	
	lea	rdi, [rsp + 0x90]
	nop	
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x188]
	nop	
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x168]
	lea	rsi, [rsi]
	call	free
.label_1149:
	nop	
	mov	rdi, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x11b], 0
	lea	rsi, [rsi]
	je	.label_1166
	mov	rdi, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	call	free
.label_1166:
	lea	rdi, [rdi]
	mov	eax, ebx
.label_1053:
	lea	rsi, [rsi]
	add	rsp, 0x268
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_1122:
	lea	rdi, [rdi]
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_1180
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_1183
.label_1180:
	lea	rdi, [rdi]
	xor	ecx, ecx
	test	rbp, rbp
	nop	
	je	.label_1184
	mov	rbp, rbp
	test	r8, r8
	mov	ebp, 0
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	jne	.label_1053
	jmp	.label_1077
.label_1073:
	cmp	dword ptr [rsp + 0x24c], 0xc
	mov	rsp, rsp
	je	.label_1104
	nop	
	mov	edi, OFFSET FLAT:.str.25_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	mov	rbp, rbp
	call	__assert_fail
.label_1183:
	mov	rcx, r8
	jmp	.label_1077
.label_1184:
	xor	ebp, ebp
	mov	rbp, rbp
	jmp	.label_1077
.label_1164:
	mov	rdi, qword ptr [rsp + 0x148]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x240]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x140], rax
	nop	
	mov	qword ptr [rsp + 0x138], rbp
	mov	r12, qword ptr [rsp + 0x80]
.label_1076:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x80], r12
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x2a0]
	cmp	qword ptr [rsp + 0x230], rax
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x2a8]
	je	.label_1058
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x40], 2
	nop	
	jb	.label_1050
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x2a0]
	mov	rsp, rsp
	lea	edx, [rsi + 7]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x230]
	sub	edx, edi
	lea	rax, [rsi - 2]
	mov	rbp, rbp
	sub	rax, rdi
	nop	
	mov	ecx, 1
	lea	rsi, [rsi]
	test	dl, 7
	je	.label_1220
	mov	rbp, rbp
	lea	rdx, [r14 + 0x10]
	lea	rdi, [rdi]
	lea	esi, [rsi + 7]
	sub	esi, edi
	nop	
	and	esi, 7
	mov	rbp, rbp
	xor	edi, edi
.label_1227:
	mov	rcx, rdi
	mov	qword ptr [rdx + 8], -1
	nop	
	mov	qword ptr [rdx], -1
	mov	rbp, rbp
	lea	rdi, [rcx + 1]
	add	rdx, 0x10
	cmp	rsi, rdi
	lea	rsi, [rsi]
	jne	.label_1227
	nop	
	add	rcx, 2
.label_1220:
	mov	rsp, rsp
	cmp	rax, 7
	jb	.label_1050
	nop	
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	shl	rcx, 4
	lea	rcx, [rcx + r14 + 0x70]
.label_1057:
	mov	qword ptr [rcx - 0x68], -1
	mov	qword ptr [rcx - 0x70], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x58], -1
	mov	qword ptr [rcx - 0x60], -1
	mov	qword ptr [rcx - 0x48], -1
	mov	qword ptr [rcx - 0x50], -1
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 0x38], -1
	mov	qword ptr [rcx - 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rcx - 0x28], -1
	mov	qword ptr [rcx - 0x30], -1
	mov	qword ptr [rcx - 0x18], -1
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 0x20], -1
	mov	qword ptr [rcx - 8], -1
	mov	qword ptr [rcx - 0x10], -1
	mov	qword ptr [rcx + 8], -1
	nop	
	mov	qword ptr [rcx], -1
	add	rcx, 0x80
	add	rax, -8
	mov	rsp, rsp
	jne	.label_1057
.label_1050:
	nop	
	mov	qword ptr [r14], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [r14 + 8], rax
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_1094
	mov	rax, qword ptr [rsp + 0x260]
	mov	al, byte ptr [rax + 0x38]
	lea	rdi, [rdi]
	and	al, 0x10
	jne	.label_1094
	mov	rax, qword ptr [rsp + 0x80]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_1109
	nop	
	xor	eax, eax
	jmp	.label_1168
.label_1131:
	lea	rsi, [rsi]
	mov	rax, rbx
	mov	qword ptr [rsp + 0x1a0], rax
.label_1222:
	mov	rdi, qword ptr [rsp + 0x1a0]
	nop	
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	jmp	.label_1104
.label_1109:
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_1168:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x260]
	movzx	r8d, al
	lea	rsi, [rsp + 0x90]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rcx, r14
	lea	rsi, [rsi]
	call	set_regs
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	test	ecx, ecx
	mov	rsp, rsp
	jne	.label_1058
.label_1094:
	nop	
	mov	r10b, byte ptr [rsp + 0x11c]
	mov	r8, qword ptr [rsp + 0xa8]
	lea	rdx, [r14 + 8]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x230]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x2a0]
	mov	rsp, rsp
	lea	r11, [rsp + 0xc8]
	mov	rsp, rsp
	jmp	.label_1135
.label_1160:
	mov	rbx, qword ptr [rsp + 0xc0]
	cmp	rdi, rbx
	lea	rsi, [rsi]
	lea	rdi, [r8 + rdi*8]
	cmove	rdi, r11
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rdx - 8], rdi
	lea	rsi, [rsi]
	mov	rsi, rcx
	shl	rsi, 4
	mov	rsp, rsp
	lea	rbp, [r14 + rsi + 8]
	mov	rsi, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rsi, rbx
	lea	rsi, [r8 + rsi*8]
	cmove	rsi, r11
	mov	rbx, qword ptr [rsi]
	mov	rsp, rsp
	mov	qword ptr [rdx], rbx
	jmp	.label_1147
.label_1135:
	mov	rdi, qword ptr [rdx - 8]
	cmp	rdi, -1
	nop	
	je	.label_1158
	test	r10b, r10b
	jne	.label_1160
	mov	rbp, rbp
	mov	rbx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rbp, rdx
.label_1147:
	nop	
	mov	rsi, qword ptr [rsp + 0x88]
	add	rdi, rsi
	nop	
	mov	qword ptr [rdx - 8], rdi
	add	rbx, rsi
	mov	qword ptr [rbp], rbx
.label_1158:
	inc	rcx
	add	rdx, 0x10
	dec	rax
	cmp	r9, rax
	jne	.label_1135
	test	r9, r9
	mov	rdi, qword ptr [rsp + 0x80]
	jle	.label_1171
	mov	rbp, rbp
	lea	rcx, [r9 - 1]
	lea	rdi, [rdi]
	xor	eax, eax
	test	r9b, 3
	je	.label_1174
	nop	
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	shl	rdx, 4
	add	rdx, r14
	nop	
	mov	esi, r9d
	and	esi, 3
	xor	eax, eax
.label_1224:
	inc	rax
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	add	rdx, 0x10
	cmp	rsi, rax
	lea	rdi, [rdi]
	jne	.label_1224
.label_1174:
	lea	rsi, [rsi]
	cmp	rcx, 3
	mov	rsp, rsp
	jb	.label_1171
	mov	rcx, r9
	lea	rdi, [rdi]
	sub	rcx, rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	shl	rdx, 4
	mov	rsp, rsp
	add	rdx, r14
	lea	rsi, [rsi]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, rdx
	mov	rbp, rbp
	xor	edx, edx
.label_1169:
	nop	
	mov	qword ptr [rax + rdx + 8], -1
	mov	qword ptr [rax + rdx], -1
	mov	rsp, rsp
	mov	qword ptr [rax + rdx + 0x18], -1
	nop	
	mov	qword ptr [rax + rdx + 0x10], -1
	mov	rsp, rsp
	mov	qword ptr [rax + rdx + 0x28], -1
	mov	qword ptr [rax + rdx + 0x20], -1
	mov	qword ptr [rax + rdx + 0x38], -1
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 0x30], -1
	nop	
	add	rdx, 0x40
	lea	rdi, [rdi]
	add	rcx, -4
	jne	.label_1169
.label_1171:
	mov	rax, qword ptr [rdi + 0xe0]
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	test	rax, rax
	je	.label_1058
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_1058
	sub	qword ptr [rsp + 0x10], r9
	lea	rdi, [r14 + 0x18]
	mov	rsp, rsp
	xor	edx, edx
.label_1226:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rdx*8]
	mov	rsp, rsp
	cmp	rdx, rsi
	nop	
	je	.label_1128
	lea	rsi, [rsi]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdi - 8], rsi
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x18]
	mov	qword ptr [rdi], rsi
.label_1128:
	lea	rsi, [rsi]
	inc	rdx
	add	rdi, 0x10
	lea	rsi, [rsi]
	xor	ecx, ecx
	cmp	qword ptr [rsp + 0x10], rdx
	nop	
	jne	.label_1226
	jmp	.label_1058
.label_1143:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.25_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x46c
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	mov	rsp, rsp
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410c20

	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:
	nop	
	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	mov	rbp, rbp
	call	re_search_stub
	nop	
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410c50

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	test	rcx, rcx
	mov	r14, -1
	mov	rsp, rsp
	js	.label_1240
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], r9
	cmp	rcx, rdx
	nop	
	jg	.label_1240
	nop	
	mov	r14, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rbp, rbp
	add	r8, rcx
	cmovns	r12, r8
	cmp	r8, rdx
	cmovg	r12, rdx
	movzx	r13d, byte ptr [rbx + 0x38]
	cmp	r12, rcx
	mov	rsp, rsp
	mov	al, r13b
	lea	rdi, [rdi]
	jle	.label_1241
	test	r13b, 8
	mov	rbp, rbp
	mov	al, r13b
	lea	rdi, [rdi]
	jne	.label_1241
	mov	rax, qword ptr [rbx + 0x20]
	test	rax, rax
	nop	
	mov	al, r13b
	je	.label_1241
	mov	rdi, rbx
	mov	rbp, rcx
	mov	r15, rdx
	call	rpl_re_compile_fastmap
	mov	rsp, rsp
	mov	rdx, r15
	mov	rcx, rbp
	nop	
	mov	al, byte ptr [rbx + 0x38]
.label_1241:
	xor	esi, esi
	test	r14, r14
	lea	rdi, [rdi]
	mov	ebp, 1
	je	.label_1258
	mov	qword ptr [rsp + 0x38], rdx
	mov	rsp, rsp
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	and	cl, 0x10
	jne	.label_1237
	nop	
	and	al, 6
	movzx	eax, al
	cmp	eax, 4
	jne	.label_1251
	mov	rax, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx + 0x30]
	cmp	rax, rbp
	ja	.label_1246
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	cmovle	r14, rcx
	nop	
	mov	ebp, 1
	cmovg	rbp, rax
	mov	rbp, rbp
	jmp	.label_1248
.label_1258:
	nop	
	mov	qword ptr [rsp + 0x38], rdx
	mov	r15, rcx
	lea	rsi, [rsi]
	jmp	.label_1237
.label_1251:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx + 0x30]
.label_1246:
	mov	rsp, rsp
	inc	rbp
.label_1248:
	lea	rdi, [rdi]
	mov	rsi, r14
.label_1237:
	nop	
	mov	qword ptr [rsp + 0x28], rsi
	mov	rdi, rbp
	shl	rdi, 4
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	r14, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_1240
	mov	cl, r13b
	nop	
	shr	cl, 5
	mov	rsp, rsp
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	shr	r13d, 5
	mov	rsp, rsp
	or	r13d, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x10], r13d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	r13, rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r15
	lea	rdi, [rdi]
	mov	r8, r12
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x40]
	nop	
	call	re_search_internal
	nop	
	test	eax, eax
	je	.label_1235
	cmp	eax, 1
	sete	al
	mov	rbp, rbp
	movzx	r14d, al
	lea	rdi, [rdi]
	or	r14, 0xfffffffffffffffe
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsp, rsp
	jmp	.label_1238
.label_1235:
	mov	qword ptr [rsp + 0x38], r15
	mov	r12, qword ptr [rsp + 0x28]
	test	r12, r12
	mov	rdi, r13
	mov	rsp, rsp
	je	.label_1247
	mov	r8, r14
	mov	al, byte ptr [r8 + 0x38]
	lea	rsi, [rsi]
	shr	al, 1
	and	al, 3
	movzx	eax, al
	nop	
	cmp	eax, 2
	je	.label_1252
	lea	rsi, [rsi]
	lea	rbx, [rbp + 1]
	cmp	eax, 1
	nop	
	je	.label_1257
	mov	r13, r12
	mov	qword ptr [rsp + 0x40], rdi
	mov	rsp, rsp
	mov	r15, r8
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1249
	lea	r12, [rbx*8]
	lea	rsi, [rsi]
	mov	rdi, r12
	call	malloc
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rsp, rsp
	mov	rax, r13
	mov	qword ptr [rax + 8], r14
	lea	rdi, [rdi]
	xor	r13d, r13d
	test	r14, r14
	je	.label_1244
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	r12, rax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x10], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1254
	mov	qword ptr [r12], rbx
	mov	r14d, 1
	mov	r8, r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x40]
	jmp	.label_1243
.label_1252:
	mov	rbx, qword ptr [r12]
	mov	r14d, 2
	cmp	rbx, rbp
	mov	rsp, rsp
	jae	.label_1243
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.24_0
	nop	
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1257:
	mov	rsp, rsp
	mov	r15, rdi
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	r14d, 1
	cmp	rbx, rax
	ja	.label_1234
	mov	rbx, rax
	mov	rdi, r15
.label_1243:
	test	rbp, rbp
	jle	.label_1253
	mov	rdx, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x10]
	lea	rdi, [rdi]
	xor	esi, esi
	test	bpl, 1
	je	.label_1255
	mov	rax, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rcx], rax
	mov	esi, 1
.label_1255:
	lea	rdi, [rdi]
	cmp	rbp, 1
	mov	rbp, rbp
	je	.label_1242
	mov	rax, rbp
	lea	rsi, [rsi]
	sub	rax, rsi
	lea	rcx, [rcx + rsi*8 + 8]
	lea	rdx, [rdx + rsi*8 + 8]
	shl	rsi, 4
	mov	rbp, rbp
	lea	rsi, [rsi + rdi + 0x18]
	nop	
.label_1260:
	mov	rbx, qword ptr [rsi - 0x18]
	nop	
	mov	qword ptr [rdx - 8], rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsi - 0x10]
	mov	qword ptr [rcx - 8], rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi - 8]
	mov	qword ptr [rdx], rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rbx
	add	rcx, 0x10
	mov	rbp, rbp
	add	rsi, 0x20
	mov	rsp, rsp
	add	rdx, 0x10
	add	rax, -2
	jne	.label_1260
.label_1242:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12]
	jmp	.label_1259
.label_1253:
	xor	ebp, ebp
.label_1259:
	mov	rbp, rbp
	cmp	rbp, rbx
	jae	.label_1236
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [r12 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1250:
	mov	qword ptr [rcx + rbp*8], -1
	mov	rsp, rsp
	mov	qword ptr [rax + rbp*8], -1
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, qword ptr [r12]
	lea	rdi, [rdi]
	jb	.label_1250
.label_1236:
	nop	
	mov	r13d, r14d
.label_1256:
	nop	
	mov	al, byte ptr [r8 + 0x38]
	add	r13b, r13b
	lea	rsi, [rsi]
	and	al, 0xf9
	mov	cl, r13b
	mov	rbp, rbp
	and	cl, 6
	mov	rsp, rsp
	or	cl, al
	lea	rdi, [rdi]
	and	r13b, 6
	lea	rdi, [rdi]
	mov	byte ptr [r8 + 0x38], cl
	mov	r14, -2
	mov	rbp, rbp
	je	.label_1238
.label_1247:
	mov	rsp, rsp
	mov	al, byte ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	r14, qword ptr [rdi]
	test	al, al
	je	.label_1238
	mov	rax, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	cmp	r14, rax
	jne	.label_1239
	nop	
	mov	r14, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	sub	r14, rax
.label_1238:
	lea	rsi, [rsi]
	call	free
.label_1240:
	mov	rax, r14
	mov	rbp, rbp
	add	rsp, 0x48
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_1234:
	mov	qword ptr [rsp + 0x40], r8
	mov	rdi, qword ptr [r12 + 8]
	mov	rsp, rsp
	lea	rsi, [rbx*8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	call	realloc
	lea	rsi, [rsi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1261
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1245
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 8], rcx
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12], rbx
	mov	r8, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, r15
	jmp	.label_1243
.label_1254:
	mov	rsp, rsp
	mov	rdi, r14
	call	free
.label_1244:
	mov	r8, r15
	nop	
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_1256
.label_1245:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	free
.label_1261:
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	jmp	.label_1256
.label_1249:
	mov	edi, OFFSET FLAT:.str.23
	nop	
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1239:
	mov	edi, OFFSET FLAT:.str.21_0
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.22_0
	nop	
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x4111d0

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	nop	
	mov	r9, rdx
	call	re_search_stub
	mov	rsp, rsp
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411200
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	rbx, r8
	nop	
	mov	r15, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1262
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	nop	
	js	.label_1265
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, r14
	jl	.label_1262
	lea	rsi, [rsi]
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1266
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	mov	rbp, rbp
	jle	.label_1263
	mov	rsp, rsp
	mov	rdi, rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	call	malloc
	lea	rsi, [rsi]
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	je	.label_1262
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	r13, rax
	nop	
	call	memcpy
	mov	rdi, r12
	mov	rsp, rsp
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	nop	
	mov	r9, r13
	nop	
	mov	r13, r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_1266
.label_1265:
	mov	rbp, rbp
	inc	rax
	sub	rax, rbx
	mov	rsp, rsp
	cmp	rax, r14
	jle	.label_1267
.label_1262:
	mov	rsp, rsp
	mov	rax, -2
	jmp	.label_1264
.label_1267:
	nop	
	add	rbx, r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	
	mov	rdx, rbx
	jmp	.label_1266
.label_1263:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x10]
.label_1266:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], 1
	nop	
	xor	r8d, r8d
	mov	rsp, rsp
	mov	rsi, r13
	nop	
	mov	rcx, r9
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	nop	
	call	free
	mov	rbp, rbp
	mov	rax, rbx
.label_1264:
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4113b0
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	rbp, rbp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rax, rbx
	or	rax, r14
	lea	rdi, [rdi]
	or	rax, rbp
	js	.label_1268
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	lea	rsi, [rsi]
	js	.label_1273
	mov	rbp, rbp
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, r14
	jl	.label_1268
	nop	
	lea	rdx, [rbx + r14]
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	rbx, rbx
	nop	
	jle	.label_1269
	nop	
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	xor	r12d, r12d
	test	r14, r14
	lea	rdi, [rdi]
	jle	.label_1271
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_1268
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r14
	mov	r13, rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rdi, r12
	lea	rdi, [rdi]
	add	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_1269
.label_1273:
	inc	rax
	lea	rdi, [rdi]
	sub	rax, rbx
	cmp	rax, r14
	mov	rbp, rbp
	jle	.label_1270
.label_1268:
	mov	rbp, rbp
	mov	rax, -2
	jmp	.label_1272
.label_1270:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	mov	rsp, rsp
	jmp	.label_1269
.label_1271:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
.label_1269:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, r12
	call	free
	nop	
	mov	rax, rbx
.label_1272:
	mov	rsp, rsp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x411550
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	lea	rdi, [rdi]
	and	al, 0xf9
	mov	r9b, al
	mov	rbp, rbp
	or	r9b, 2
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_1274
	lea	rsi, [rsi]
	mov	al, r9b
.label_1274:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x411590

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	je	.label_1275
	mov	rdi, qword ptr [rax + 0x10]
	mov	rbp, rbp
	call	free
	nop	
	mov	rdi, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	call	free
.label_1275:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411610

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	cmp	dword ptr [rbx + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_1277
	mov	rax, r14
	lea	rdi, [rdi]
	shr	rax, 0x3d
	mov	ebp, 0xc
	lea	rdi, [rdi]
	jne	.label_1276
	nop	
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	lea	rsi, [r14*4]
	lea	rsi, [rsi]
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1276
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1277
	lea	rsi, [r14*8]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1276
	mov	qword ptr [rbx + 0x18], rax
.label_1277:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1278
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	mov	rsp, rsp
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_1276
	nop	
	mov	qword ptr [rbx + 8], rax
.label_1278:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x40], r14
	mov	rsp, rsp
	xor	ebp, ebp
.label_1276:
	mov	eax, ebp
	nop	
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4116e0

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x78
	mov	r12, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x58]
	lea	rsi, [rsi]
	cmp	r13, rax
	nop	
	cmovg	r13, rax
	cmp	byte ptr [r12 + 0x8a], 0
	jne	.label_1288
	cmp	qword ptr [r12 + 0x78], 0
	jne	.label_1288
	cmp	byte ptr [r12 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_1291
.label_1288:
	mov	rbp, rbp
	mov	rbx, qword ptr [r12 + 0x38]
	jmp	.label_1295
.label_1291:
	cmp	r13, r15
	mov	rsp, rsp
	jle	.label_1298
	lea	rax, [r12 + 0x78]
	nop	
	mov	qword ptr [rsp + 0x60], rax
	nop	
	lea	r14, [r12 + 0x20]
	jmp	.label_1282
.label_1323:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_1306
	lea	rdi, [rdi]
	cmp	rbp, -2
	jne	.label_1311
	nop	
	mov	rax, qword ptr [r12 + 0x40]
	nop	
	cmp	rax, qword ptr [r12 + 0x58]
	mov	rbp, rbp
	jl	.label_1311
.label_1306:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	add	rax, r15
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rbp, rbp
	mov	rdx, qword ptr [r12 + 8]
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	mov	rsp, rsp
	je	.label_1319
.label_1332:
	mov	rax, r15
	jmp	.label_1292
.label_1319:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_1332
	nop	word ptr cs:[rax + rax]
.label_1282:
	nop	
	mov	qword ptr [rsp + 0x50], r13
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12]
	mov	rbx, qword ptr [r12 + 0x28]
	mov	rsp, rsp
	lea	rax, [rbx + r15]
	movzx	r13d, byte ptr [rbp + rax]
	test	r13b, r13b
	js	.label_1289
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1289
	call	__ctype_toupper_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r13*4]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r15], al
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	lea	rsi, [rsi]
	mov	rax, r15
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	jmp	.label_1292
	nop	word ptr cs:[rax + rax]
.label_1289:
	mov	r13, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], rax
	add	rbp, rbx
	nop	
	add	rbp, r15
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbp, rax
	lea	rax, [rbp - 1]
	mov	rsp, rsp
	cmp	rax, -4
	ja	.label_1323
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	call	towupper
	lea	rdi, [rdi]
	mov	ebx, eax
	lea	rsi, [rsi]
	cmp	ebx, dword ptr [rsp + 0xc]
	nop	
	jne	.label_1331
	mov	rdi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	add	rdi, r15
	nop	
	mov	rsi, qword ptr [r12]
	add	rsi, qword ptr [r12 + 0x28]
	nop	
	add	rsi, r15
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rsp, rsp
	call	memcpy
	nop	
	jmp	.label_1284
.label_1331:
	mov	rbp, rbp
	mov	esi, ebx
	mov	dword ptr [rsp + 0x68], esi
	mov	rbx, rbp
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x10]
	mov	rdi, rbp
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	lea	rdi, [rdi]
	jne	.label_1293
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
.label_1284:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	mov	rsp, rsp
	cmp	rax, rbx
	nop	
	jge	.label_1292
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rdi]
	lea	rdi, [rax + r15*4 + 4]
	mov	rbp, rbp
	lea	rdx, [rbp*4 - 4]
	lea	rdi, [rdi]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_1292:
	lea	rdi, [rdi]
	cmp	r13, rax
	mov	r15, rax
	mov	rbp, rbp
	jg	.label_1282
	jmp	.label_1326
.label_1293:
	mov	rbx, r15
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	jmp	.label_1327
.label_1311:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [r14], rax
.label_1298:
	lea	rsi, [rsi]
	mov	rax, r15
.label_1326:
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x30], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x38], rax
	jmp	.label_1334
.label_1295:
	cmp	r15, r13
	jge	.label_1336
	lea	r14, [r12 + 0x20]
	lea	rdi, [rdi]
	lea	rcx, [r12 + 0x78]
.label_1327:
	nop	
	mov	rdx, r13
	nop	
	sub	rdx, r15
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rcx]
	test	rax, rax
	jne	.label_1283
	mov	rbp, qword ptr [r12]
	mov	rbp, rbp
	add	rbp, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	add	rbp, rbx
.label_1300:
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], r14
	call	rpl_mbrtowc
	mov	r14, rax
	mov	rsp, rsp
	lea	rax, [r14 - 1]
	cmp	rax, -4
	mov	rbp, rbp
	ja	.label_1302
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x50], r13
	nop	
	mov	edi, dword ptr [rsp + 8]
	mov	rsp, rsp
	call	towupper
	lea	rdi, [rdi]
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 8]
	je	.label_1279
	mov	rsp, rsp
	lea	rdi, [rsp + 0x10]
	nop	
	lea	rdx, [rsp + 0x70]
	lea	rdi, [rdi]
	mov	esi, r13d
	lea	rsi, [rsi]
	call	wcrtomb
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rcx, r8
	sub	rcx, r14
	mov	rbp, rbp
	jne	.label_1325
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	add	rdi, r15
	lea	rsi, [rsp + 0x10]
	jmp	.label_1329
.label_1283:
	mov	rsp, rsp
	lea	rbp, [rsp + 0x10]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [r12 + 0x90]
	test	rcx, rcx
	nop	
	jle	.label_1300
	lea	rsi, [rsi]
	mov	r8, rbx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1287:
	cmp	rsi, rdx
	jge	.label_1285
	mov	rdi, qword ptr [r12]
	add	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	add	rdi, r8
	movzx	edi, byte ptr [rsi + rdi]
	mov	bl, byte ptr [rax + rdi]
	mov	rbp, rbp
	mov	byte ptr [rsp + rsi + 0x10], bl
	lea	rsi, [rsi]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, rcx
	lea	rdi, [rdi]
	jl	.label_1287
	mov	rbx, r8
	nop	
	jmp	.label_1300
.label_1302:
	lea	rsi, [rsi]
	lea	rax, [r14 + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_1301
	lea	rsi, [rsi]
	cmp	r14, -2
	jne	.label_1304
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_1304
.label_1301:
	mov	rax, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	add	rax, rbx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	al, byte ptr [rdx + rax]
	mov	rbp, rbp
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1315
.label_1305:
	movzx	eax, al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r15], al
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1321
.label_1308:
	nop	
	inc	rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	nop	
	cmp	r14, -1
	lea	rsi, [rsi]
	je	.label_1330
.label_1314:
	mov	rbp, r15
	nop	
	jmp	.label_1295
.label_1325:
	lea	rsi, [rsi]
	cmp	r8, -1
	je	.label_1279
	lea	rbp, [r8 + r15]
	mov	rdi, qword ptr [r12 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1296
.label_1304:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
.label_1336:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x30], r15
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x38], rbx
.label_1334:
	xor	eax, eax
.label_1320:
	add	rsp, 0x78
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_1279:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12 + 8]
	nop	
	add	rdi, r15
	nop	
	mov	rsi, rbp
.label_1329:
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	call	memcpy
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_1309
	mov	rax, qword ptr [r12 + 0x18]
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	cmp	r14, 4
	mov	rbp, rbp
	jb	.label_1316
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	mov	rcx, r14
	mov	rbp, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_1316
	movq	xmm0, rbx
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [r14 - 4]
	mov	rsi, rdi
	mov	rsp, rsp
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	nop	
	jb	.label_1324
	lea	rdi, [rdi]
	mov	edx, 1
	movq	xmm1, rdx
	nop	
	pslldq	xmm1, 8
	mov	rsp, rsp
	paddq	xmm1, xmm0
	lea	rdi, [rdi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_884]]
	paddq	xmm2, xmm0
	movdqu	xmmword ptr [rax + r15*8], xmm1
	movdqu	xmmword ptr [rax + r15*8 + 0x10], xmm2
	mov	edx, 4
.label_1324:
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_1286
	lea	rsi, [rax + r15*8 + 0x30]
	lea	rdi, [rdi]
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	lea	rsi, [rsi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_884]]
	nop	
.label_1310:
	movq	xmm3, rdx
	pshufd	xmm3, xmm3, 0x44
	mov	rbp, rbp
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x30], xmm4
	movdqu	xmmword ptr [rsi + rdx*8 - 0x20], xmm3
	lea	rsi, [rsi]
	lea	rdi, [rdx + 4]
	movq	xmm3, rdi
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	lea	rsi, [rsi]
	movdqa	xmm4, xmm3
	lea	rsi, [rsi]
	paddq	xmm4, xmm1
	nop	
	paddq	xmm3, xmm2
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rsi + rdx*8 - 0x10], xmm4
	mov	rsp, rsp
	movdqu	xmmword ptr [rsi + rdx*8], xmm3
	nop	
	add	rdx, 8
	nop	
	cmp	rdx, rcx
	mov	rsp, rsp
	jne	.label_1310
.label_1286:
	mov	rsp, rsp
	cmp	r14, rcx
	nop	
	mov	rsi, rcx
	nop	
	je	.label_1309
.label_1316:
	mov	rcx, r14
	lea	rsi, [rsi]
	sub	rcx, rsi
	lea	rdx, [rsi + rbx]
	nop	
	add	rsi, r15
	lea	rax, [rax + rsi*8]
	nop	word ptr cs:[rax + rax]
.label_1333:
	mov	rsp, rsp
	mov	qword ptr [rax], rdx
	mov	rbp, rbp
	inc	rdx
	lea	rdi, [rdi]
	add	rax, 8
	dec	rcx
	mov	rsp, rsp
	jne	.label_1333
.label_1309:
	add	rbx, r14
	nop	
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r14 + r15]
	inc	r15
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_1337
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	nop	
	call	memset
	nop	
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, rbp
	lea	rdi, [rdi]
	jmp	.label_1295
.label_1337:
	mov	rbp, rbp
	mov	rbp, r15
	nop	
	mov	r13, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	jmp	.label_1295
.label_1285:
	mov	rbx, r8
	jmp	.label_1300
.label_1296:
	mov	rax, qword ptr [r12 + 0x18]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1307
	nop	
	shl	rdi, 3
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], r8
	lea	rdi, [rdi]
	call	malloc
	mov	r8, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_1317
.label_1307:
	mov	qword ptr [rsp + 0x58], rcx
	cmp	byte ptr [r12 + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1322
	nop	
	test	r15, r15
	je	.label_1328
	mov	rbp, rbp
	xor	edx, edx
	cmp	r15, 4
	nop	
	jb	.label_1299
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_1299
	lea	rdi, [rdi]
	lea	rdi, [r15 - 4]
	mov	rsp, rsp
	mov	rsi, rdi
	lea	rdi, [rdi]
	shr	rsi, 2
	lea	rdi, [rdi]
	xor	edx, edx
	bt	rdi, 2
	lea	rsi, [rsi]
	jb	.label_1335
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	nop	
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_884]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	nop	
	mov	edx, 4
.label_1335:
	lea	rsi, [rsi]
	test	rsi, rsi
	nop	
	je	.label_1297
	mov	rsp, rsp
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_884]]
.label_1303:
	movq	xmm2, rdx
	nop	
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	paddq	xmm2, xmm1
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rdx*8], xmm3
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm2
	nop	
	lea	rsi, [rdx + 4]
	movq	xmm2, rsi
	mov	rsp, rsp
	pshufd	xmm2, xmm2, 0x44
	nop	
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	mov	rbp, rbp
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x30], xmm2
	add	rdx, 8
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jne	.label_1303
.label_1297:
	cmp	r15, rcx
	lea	rdi, [rdi]
	mov	rdx, rcx
	je	.label_1328
.label_1299:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1299
.label_1328:
	mov	byte ptr [r12 + 0x8c], 1
.label_1322:
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, rbp
	add	rdi, r15
	lea	rsi, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	qword ptr [rsp + 0x50], r8
	lea	rsi, [rsi]
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [r12 + 0x10]
	nop	
	mov	dword ptr [rax + r15*4], r13d
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x18]
	mov	qword ptr [rax + r15*8], rbx
	cmp	rdi, 2
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x60]
	jb	.label_1281
	mov	r9, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r12 + 0x18]
	lea	r10, [rdi - 1]
	mov	eax, 1
	lea	rsi, [rsi]
	cmp	r10, 4
	mov	rsp, rsp
	jb	.label_1294
	mov	rbp, rbp
	mov	rcx, r10
	and	rcx, 0xfffffffffffffffc
	lea	rsi, [rsi]
	mov	r13, r10
	and	r13, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1294
	lea	rsi, [rsi]
	mov	rax, rcx
	or	rax, 1
	mov	rsp, rsp
	movq	xmm0, r14
	pshufd	xmm3, xmm0, 0x44
	movq	xmm1, r11
	nop	
	mov	rdi, r11
	pshufd	xmm11, xmm1, 0x44
	mov	rbp, rbp
	movq	xmm2, rbx
	nop	
	mov	r11, rbx
	lea	rdi, [rdi]
	pshufd	xmm12, xmm2, 0x44
	lea	rcx, [r8 + r15*8 + 0x18]
	lea	rdx, [r9 + r15*4 + 0xc]
	xor	esi, esi
	mov	ebx, 1
	lea	rdi, [rdi]
	movq	xmm10, rbx
	pslldq	xmm10, 8
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_884]]
	movdqa	xmm9,  xmmword ptr [word ptr [rip + label_1312]]
	mov	rsp, rsp
	pxor	xmm3, xmm9
	pshufd	xmm6,  xmmword ptr [word ptr [rip + label_1313]],  0xe8
.label_1318:
	lea	rbx, [rsi + 1]
	movq	xmm4, rbx
	pshufd	xmm7, xmm4, 0x44
	movdqa	xmm5, xmm7
	lea	rdi, [rdi]
	paddq	xmm5, xmm10
	paddq	xmm7, xmm8
	nop	
	movdqa	xmm4, xmm5
	lea	rdi, [rdi]
	pxor	xmm4, xmm9
	movdqa	xmm0, xmm3
	mov	rbp, rbp
	pcmpgtd	xmm0, xmm4
	pshufd	xmm1, xmm0, 0xa0
	pcmpeqd	xmm4, xmm3
	lea	rsi, [rsi]
	pshufd	xmm4, xmm4, 0xf5
	pand	xmm4, xmm1
	pshufd	xmm0, xmm0, 0xf5
	por	xmm0, xmm4
	movdqa	xmm1, xmm7
	pxor	xmm1, xmm9
	nop	
	movdqa	xmm4, xmm3
	lea	rdi, [rdi]
	pcmpgtd	xmm4, xmm1
	lea	rsi, [rsi]
	pshufd	xmm2, xmm4, 0xa0
	lea	rdi, [rdi]
	pcmpeqd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm1, xmm1, 0xf5
	pand	xmm1, xmm2
	mov	rsp, rsp
	pshufd	xmm2, xmm4, 0xf5
	por	xmm2, xmm1
	pand	xmm5, xmm0
	nop	
	pandn	xmm0, xmm11
	nop	
	por	xmm0, xmm5
	mov	rbp, rbp
	pand	xmm7, xmm2
	nop	
	pandn	xmm2, xmm11
	nop	
	por	xmm2, xmm7
	paddq	xmm0, xmm12
	paddq	xmm2, xmm12
	movdqu	xmmword ptr [rcx + rsi*8 - 0x10], xmm0
	movdqu	xmmword ptr [rcx + rsi*8], xmm2
	movq	qword ptr [rdx + rsi*4 - 8], xmm6
	lea	rdi, [rdi]
	movq	qword ptr [rdx + rsi*4], xmm6
	lea	rdi, [rdi]
	add	rsi, 4
	nop	
	cmp	r13, rsi
	jne	.label_1318
	mov	rbp, rbp
	cmp	r10, r13
	lea	rdi, [rdi]
	mov	rbx, r11
	mov	r11, rdi
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	je	.label_1281
.label_1294:
	lea	rsi, [rsi]
	lea	rcx, [r9 + r15*4]
	lea	rdx, [r8 + r15*8]
.label_1280:
	cmp	rax, r14
	nop	
	mov	rsi, r11
	cmovb	rsi, rax
	nop	
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rbp, rbp
	inc	rax
	cmp	rdi, rax
	jne	.label_1280
.label_1281:
	mov	rax, qword ptr [r12 + 0x58]
	mov	rcx, qword ptr [rsp + 0x58]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x58], rax
	nop	
	cmp	qword ptr [r12 + 0x60], rbx
	jle	.label_1290
	add	qword ptr [r12 + 0x68], rcx
.label_1290:
	nop	
	mov	r13, qword ptr [r12 + 0x40]
	cmp	r13, rax
	cmovg	r13, rax
	add	rbx, r14
	lea	rsi, [rsi]
	mov	r15, rbp
	jmp	.label_1295
.label_1315:
	mov	al, byte ptr [rcx + rdx]
	nop	
	jmp	.label_1305
.label_1321:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rcx + r15*8], rbx
	mov	rbp, rbp
	jmp	.label_1308
.label_1330:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	jmp	.label_1314
.label_1317:
	mov	rbp, rbp
	mov	eax, 0xc
	lea	rdi, [rdi]
	jmp	.label_1320
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4122b0

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x58
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	mov	rbp, rbp
	jle	.label_1350
	lea	r14, [rbx + 0x20]
	mov	rbp, rbp
	lea	r15, [rsp + 0xc]
	nop	
	jmp	.label_1340
	nop	word ptr [rax + rax]
.label_1343:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	nop	
	mov	rax, qword ptr [rbx + 0x78]
	test	rax, rax
	jne	.label_1339
.label_1341:
	nop	
	mov	qword ptr [r14], rbp
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_1347
.label_1338:
	nop	
	mov	ecx, dword ptr [rsp + 0xc]
	nop	word ptr cs:[rax + rax]
.label_1347:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	nop	
	jge	.label_1346
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rsi, [rsi]
	lea	rdx, [rax*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	nop	
	call	memset
	mov	rcx, rbp
.label_1346:
	nop	
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_1340
	mov	rbp, rbp
	jmp	.label_1345
.label_1342:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	nop	
	lea	rsi, [rsp + 0x10]
	jle	.label_1344
	nop	
.label_1349:
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_1348
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x78]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbx + 0x90]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jl	.label_1349
	mov	rbp, rbp
	lea	rsi, [rsp + 0x10]
	jmp	.label_1344
.label_1339:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rsp, rsp
	jmp	.label_1341
.label_1348:
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	nop	
	jmp	.label_1344
	nop	word ptr cs:[rax + rax]
.label_1340:
	nop	
	mov	rdx, r12
	lea	rsi, [rsi]
	sub	rdx, r13
	nop	
	mov	rbp, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_1342
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_1344:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	cmp	rcx, 2
	jb	.label_1343
	cmp	rax, -2
	jne	.label_1338
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	mov	rbp, rbp
	jge	.label_1343
	mov	rbp, rbp
	mov	qword ptr [r14], rbp
.label_1350:
	mov	rcx, r13
.label_1345:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
	mov	rsp, rsp
	pop	rbx
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
	#Procedure 0x4124d0

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	nop	
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	r12, rdi
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	call	parse_branch
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	ebp, ebp
	test	rbx, rbx
	jne	.label_1358
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_1356
.label_1358:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_1360
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	or	rax, 0x800000
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	jmp	.label_1363
.label_1351:
	mov	rbp, rbp
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_1368
	nop	
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1353
	nop	word ptr cs:[rax + rax]
.label_1363:
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp]
	call	peek_token
	nop	
	cdqe	
	nop	
	add	qword ptr [r12 + 0x48], rax
	movzx	eax, byte ptr [r13 + 8]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	or	ecx, 8
	lea	rdi, [rdi]
	cmp	ecx, 0xa
	mov	rbp, rbp
	mov	r15d, 0
	je	.label_1359
	cmp	qword ptr [rsp + 8], 0
	nop	
	je	.label_1366
	cmp	eax, 9
	mov	rsp, rsp
	mov	r15d, 0
	lea	rsi, [rsi]
	je	.label_1359
.label_1366:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	qword ptr [r14 + 0xa8], rax
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 8]
	nop	
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r9, rbp
	call	parse_branch
	mov	rbp, rbp
	mov	r15, rax
	test	r15, r15
	jne	.label_1362
	nop	
	mov	eax, dword ptr [rbp]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1364
.label_1362:
	mov	rax, qword ptr [rsp + 0x18]
	or	qword ptr [r14 + 0xa8], rax
	nop	dword ptr [rax]
.label_1359:
	mov	ecx, dword ptr [r14 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	nop	
	je	.label_1351
	mov	rax, qword ptr [r14 + 0x70]
.label_1353:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	nop	
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1357
	mov	qword ptr [rbx], rbp
.label_1357:
	test	r15, r15
	je	.label_1367
	mov	rsp, rsp
	mov	qword ptr [r15], rbp
.label_1367:
	mov	rbp, rbp
	movzx	eax, byte ptr [r13 + 8]
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rbx, rbp
	mov	rbp, rbp
	je	.label_1363
	jmp	.label_1356
.label_1360:
	mov	rbp, rbx
.label_1356:
	mov	rsp, rsp
	mov	rax, rbp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1364:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_1356
	mov	r14d, 0x400ff
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1354:
	lea	rdi, [rdi]
	mov	r15, rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_1354
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1354
	nop	word ptr cs:[rax + rax]
.label_1365:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	lea	rsi, [rsi]
	je	.label_1352
	cmp	eax, 6
	lea	rdi, [rdi]
	jne	.label_1355
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	nop	
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_1361
	nop	dword ptr [rax]
.label_1352:
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x28]
.label_1361:
	mov	rsp, rsp
	call	free
.label_1355:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1356
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	lea	rdi, [rdi]
	mov	r15, rax
	je	.label_1365
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	r15, rax
	je	.label_1365
	jmp	.label_1354
.label_1368:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	xor	ebp, ebp
	jmp	.label_1356
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412830

	.globl peek_token
	.type peek_token, @function
peek_token:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_1375
	mov	r13, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	nop	
	mov	byte ptr [r15], r12b
	mov	rsp, rsp
	mov	ebx, dword ptr [r15 + 8]
	mov	eax, ebx
	nop	
	and	eax, 0xff9fffff
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	mov	rbp, rbp
	jl	.label_1382
	nop	
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1382
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	cmp	dword ptr [rcx + rax*4], -1
	mov	rbp, rbp
	je	.label_1393
.label_1382:
	cmp	r12d, 0x5c
	jne	.label_1397
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1398
	cmp	byte ptr [rbp + 0x8b], 0
	lea	rdi, [rdi]
	jne	.label_1402
.label_1374:
	mov	rcx, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	mov	r14b, byte ptr [rcx + rax]
.label_1372:
	mov	rsp, rsp
	mov	byte ptr [r15], r14b
	mov	rsp, rsp
	and	ebx, 0xff9fff00
	nop	
	or	ebx, 1
	nop	
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1405
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	mov	rsp, rsp
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	mov	rbp, rbp
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	nop	
	or	eax, ecx
	jmp	.label_1377
.label_1375:
	mov	rsp, rsp
	mov	byte ptr [r15 + 8], 2
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_1369
.label_1397:
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1385
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebx, dword ptr [rax + rcx*4]
	mov	edi, ebx
	nop	
	call	iswalnum
	mov	rbp, rbp
	test	eax, eax
	nop	
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	nop	
	or	cl, al
	mov	rsp, rsp
	movzx	ecx, cl
	shl	ecx, 0x16
	lea	rdi, [rdi]
	mov	eax, 0xffbfffff
	mov	rbp, rbp
	and	eax, dword ptr [r15 + 8]
	lea	rdi, [rdi]
	or	eax, ecx
	lea	rsi, [rsi]
	jmp	.label_1390
.label_1398:
	lea	rsi, [rsi]
	and	ebx, 0xff9fff00
	or	ebx, 0x24
	jmp	.label_1400
.label_1385:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r12*2]
	mov	rbp, rbp
	cmp	r12d, 0x5f
	mov	rbp, rbp
	sete	cl
	lea	rsi, [rsi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	shr	eax, 3
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	or	eax, ecx
	nop	
	shl	eax, 0x16
	or	eax, ebx
.label_1390:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	mov	rsp, rsp
	cmp	r12d, 0x3e
	mov	rbp, rbp
	jg	.label_1388
	mov	rsp, rsp
	lea	ecx, [r12 - 0x24]
	cmp	ecx, 0xa
	nop	
	ja	.label_1376
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1379]]
.label_2846:
	nop	
	mov	rdx, r13
	mov	rbp, rbp
	test	dl, 8
	lea	rsi, [rsi]
	jne	.label_1380
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	lea	rsi, [rsi]
	je	.label_1380
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x48], rcx
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rbp, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	ja	.label_1369
	nop	
	mov	eax, dword ptr [r15 + 8]
.label_1380:
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0xc
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_1369
.label_1388:
	mov	rsp, rsp
	cmp	r12d, 0x7a
	lea	rsi, [rsi]
	jg	.label_1399
	cmp	r12d, 0x3f
	je	.label_1401
	lea	rdi, [rdi]
	cmp	r12d, 0x5b
	mov	rdx, r13
	je	.label_1403
	mov	rsp, rsp
	cmp	r12d, 0x5e
	jne	.label_1369
	mov	rbp, rbp
	test	edx, 0x800008
	mov	rbp, rbp
	jne	.label_1370
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_1370
	test	dh, 8
	je	.label_1369
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 8]
	movzx	ecx, byte ptr [rcx + rdx - 1]
	cmp	ecx, 0xa
	jne	.label_1369
.label_1370:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	lea	rsi, [rsi]
	mov	dword ptr [r15], 0x10
	jmp	.label_1369
.label_1405:
	movzx	ebp, r14b
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	mov	rbp, rbp
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	lea	rdi, [rdi]
	shl	eax, 0x16
	nop	
	or	eax, ebx
.label_1377:
	mov	dword ptr [r15 + 8], eax
	movzx	ecx, r14b
	mov	r14d, 2
	mov	rsp, rsp
	cmp	ecx, 0x5f
	nop	
	jg	.label_1387
	lea	edx, [rcx - 0x27]
	mov	rsp, rsp
	cmp	edx, 0x2c
	mov	rsp, rsp
	ja	.label_1391
	nop	
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1394]]
.label_2927:
	mov	rdx, r13
	test	dh, 0x40
	lea	rdi, [rdi]
	jne	.label_1369
	mov	rsp, rsp
	and	eax, 0xffffff00
	or	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	add	ecx, -0x31
	lea	rsi, [rsi]
	movsxd	rax, ecx
	nop	
	mov	qword ptr [r15], rax
	jmp	.label_1369
.label_1399:
	cmp	r12d, 0x7b
	je	.label_1404
	mov	rsp, rsp
	cmp	r12d, 0x7c
	lea	rsi, [rsi]
	mov	rcx, r13
	lea	rdi, [rdi]
	je	.label_1389
	cmp	r12d, 0x7d
	lea	rdi, [rdi]
	jne	.label_1369
	and	ecx, 0x1200
	lea	rdi, [rdi]
	cmp	rcx, 0x1200
	je	.label_1371
	jmp	.label_1369
.label_1393:
	mov	rbp, rbp
	and	ebx, 0xff9fff00
	or	ebx, 0x200001
.label_1400:
	mov	dword ptr [r15 + 8], ebx
	mov	rbp, rbp
	mov	r14d, 1
.label_1369:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_1387:
	lea	edx, [rcx - 0x73]
	lea	rdi, [rdi]
	cmp	edx, 0xa
	ja	.label_1381
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1384]]
.label_2934:
	lea	rsi, [rsi]
	test	r13d, 0x80000
	jne	.label_1369
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1369
.label_1376:
	cmp	r12d, 0xa
	mov	rsp, rsp
	jne	.label_1369
	lea	rdi, [rdi]
	mov	rcx, r13
	test	ch, 8
	jne	.label_1383
	jmp	.label_1369
.label_2847:
	mov	rbp, rbp
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1392
	nop	
	jmp	.label_1369
.label_2848:
	mov	rsp, rsp
	mov	rcx, r13
	lea	rdi, [rdi]
	test	ch, 0x20
	lea	rsi, [rsi]
	jne	.label_1395
	lea	rdi, [rdi]
	jmp	.label_1369
.label_2849:
	mov	rbp, rbp
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1369
.label_2850:
	test	r13w, 0x402
	lea	rdi, [rdi]
	jne	.label_1369
	jmp	.label_1407
.label_2851:
	nop	
	and	eax, 0xffffff00
	or	eax, 5
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	jmp	.label_1369
.label_1401:
	lea	rsi, [rsi]
	test	r13w, 0x402
	jne	.label_1369
	jmp	.label_1373
.label_1403:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	nop	
	jmp	.label_1369
.label_1404:
	and	r13d, 0x1200
	cmp	r13, 0x1200
	mov	rsp, rsp
	je	.label_1378
	jmp	.label_1369
.label_1389:
	test	ch, 4
	mov	rsp, rsp
	jne	.label_1369
	lea	rsi, [rsi]
	test	cx, cx
	lea	rdi, [rdi]
	js	.label_1383
	lea	rdi, [rdi]
	jmp	.label_1369
.label_1381:
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_1386
	nop	
	cmp	ecx, 0x62
	nop	
	jne	.label_1369
	test	r13d, 0x80000
	jne	.label_1369
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_1369
.label_1402:
	cmp	edx, 2
	lea	rsi, [rsi]
	jl	.label_1396
	mov	rdx, qword ptr [rbp + 0x10]
	nop	
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	mov	rbp, rbp
	je	.label_1374
	mov	rbp, rbp
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	mov	rsp, rsp
	je	.label_1396
	lea	rsi, [rsi]
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	nop	
	je	.label_1374
.label_1396:
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	je	.label_1406
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1406:
	nop	
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp]
	mov	r14b, byte ptr [rcx + rsi]
	nop	
	je	.label_1372
	test	r14b, r14b
	lea	rdi, [rdi]
	js	.label_1374
	mov	rbp, rbp
	jmp	.label_1372
.label_1391:
	cmp	ecx, 0x57
	mov	rsp, rsp
	jne	.label_1369
	lea	rdi, [rdi]
	test	r13d, 0x80000
	jne	.label_1369
	lea	rsi, [rsi]
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	lea	rdi, [rdi]
	jmp	.label_1369
.label_2935:
	nop	
	test	r13d, 0x80000
	lea	rsi, [rsi]
	jne	.label_1369
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1369
.label_2936:
	lea	rdi, [rdi]
	and	r13d, 0x1200
	nop	
	cmp	r13, 0x200
	lea	rsi, [rsi]
	jne	.label_1369
.label_1378:
	lea	rdi, [rdi]
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0x17
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1369
.label_2937:
	mov	rcx, r13
	lea	rsi, [rsi]
	test	ch, 4
	nop	
	jne	.label_1369
	test	cx, cx
	js	.label_1369
.label_1383:
	mov	rsp, rsp
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	nop	
	jmp	.label_1369
.label_2938:
	and	r13d, 0x1200
	lea	rdi, [rdi]
	cmp	r13, 0x200
	jne	.label_1369
.label_1371:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	jmp	.label_1369
.label_1386:
	nop	
	test	r13d, 0x80000
	nop	
	jne	.label_1369
	mov	rbp, rbp
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_1369
.label_2923:
	test	r13d, 0x80000
	jne	.label_1369
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_1369
.label_2924:
	mov	rcx, r13
	test	ch, 0x20
	lea	rdi, [rdi]
	jne	.label_1369
.label_1392:
	lea	rsi, [rsi]
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1369
.label_2925:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1369
.label_1395:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1369
.label_2926:
	and	r13d, 0x402
	lea	rdi, [rdi]
	cmp	r13, 2
	jne	.label_1369
.label_1407:
	and	eax, 0xffffff00
	mov	rbp, rbp
	or	eax, 0x12
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1369
.label_2928:
	lea	rdi, [rdi]
	test	r13d, 0x80000
	jne	.label_1369
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	mov	rbp, rbp
	mov	dword ptr [r15], 6
	lea	rdi, [rdi]
	jmp	.label_1369
.label_2929:
	test	r13d, 0x80000
	jne	.label_1369
	mov	rbp, rbp
	and	eax, 0xffffff00
	or	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_1369
.label_2930:
	nop	
	and	r13d, 0x402
	lea	rsi, [rsi]
	cmp	r13, 2
	jne	.label_1369
.label_1373:
	and	eax, 0xffffff00
	or	eax, 0x13
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1369
.label_2931:
	mov	rbp, rbp
	test	r13d, 0x80000
	lea	rdi, [rdi]
	jne	.label_1369
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_1369
.label_2932:
	mov	rsp, rsp
	test	r13d, 0x80000
	nop	
	jne	.label_1369
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1369
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4130c0

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	r15, r8
	mov	qword ptr [rsp + 8], rcx
	mov	rbp, rbp
	mov	r13, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rdi
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsi]
	call	parse_expression
	nop	
	mov	rbp, rbx
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	xor	r12d, r12d
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_1434
	nop	
	mov	eax, dword ptr [rbp]
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_1434
	jmp	.label_1418
	nop	word ptr cs:[rax + rax]
.label_1421:
	mov	rsp, rsp
	test	rbx, rbx
	cmove	rbx, r12
.label_1434:
	movzx	eax, byte ptr [r13 + 8]
	mov	rbp, rbp
	mov	ecx, eax
	or	ecx, 8
	mov	rbp, rbp
	cmp	ecx, 0xa
	je	.label_1425
	test	r15, r15
	je	.label_1430
	mov	rbp, rbp
	cmp	eax, 9
	je	.label_1432
.label_1430:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r8, r15
	mov	r9, rbp
	lea	rsi, [rsi]
	call	parse_expression
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rbp, rbp
	test	r12, r12
	jne	.label_1415
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1419
.label_1415:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1421
	test	r12, r12
	mov	rbp, rbp
	je	.label_1421
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_1427
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x70]
.label_1431:
	nop	
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	nop	
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r12], rdx
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rbp, rbp
	jmp	.label_1434
.label_1427:
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	mov	rsp, rsp
	test	rax, rax
	je	.label_1428
	nop	
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_1431
.label_1419:
	lea	rdi, [rdi]
	xor	r12d, r12d
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_1418
	mov	r14d, 0x400ff
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1416:
	mov	rbp, rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_1416
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1416
	nop	dword ptr [rax + rax]
.label_1420:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	nop	
	cmp	eax, 3
	je	.label_1409
	cmp	eax, 6
	lea	rsi, [rsi]
	jne	.label_1429
	nop	
	mov	rbx, qword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	mov	rsp, rsp
	jmp	.label_1411
.label_1409:
	nop	
	mov	rdi, qword ptr [rbp + 0x28]
.label_1411:
	call	free
.label_1429:
	mov	rax, qword ptr [rbp]
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_1418
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_1420
	test	rbx, rbx
	mov	rbp, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	je	.label_1420
	lea	rdi, [rdi]
	jmp	.label_1416
.label_1425:
	lea	rdi, [rdi]
	mov	r12, rbx
	jmp	.label_1418
.label_1432:
	lea	rsi, [rsi]
	mov	r12, rbx
.label_1418:
	mov	rax, r12
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_1428:
	mov	r14d, 0x400ff
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_1412:
	mov	rbp, r12
	mov	r12, qword ptr [rbp + 8]
	test	r12, r12
	jne	.label_1412
	nop	
	mov	r12, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	test	r12, r12
	lea	rdi, [rdi]
	jne	.label_1412
	nop	word ptr [rax + rax]
.label_1422:
	lea	rsi, [rsi]
	mov	r12, rcx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 0x30]
	mov	rsp, rsp
	and	eax, r14d
	cmp	eax, 3
	nop	
	je	.label_1423
	lea	rsi, [rsi]
	cmp	eax, 6
	lea	rsi, [rsi]
	jne	.label_1424
	mov	r15, qword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15]
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 8]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	nop	
	mov	rdi, r15
	lea	rsi, [rsi]
	jmp	.label_1426
.label_1423:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 0x28]
.label_1426:
	call	free
.label_1424:
	nop	
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rcx, r12
	mov	rsp, rsp
	je	.label_1433
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rbp
	mov	rbp, rax
	je	.label_1422
	lea	rsi, [rsi]
	test	r12, r12
	mov	rbp, rbp
	mov	rbp, rax
	je	.label_1422
	nop	
	jmp	.label_1412
.label_1433:
	mov	r14d, 0x400ff
.label_1414:
	mov	rbp, rbx
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1414
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_1414
	nop	dword ptr [rax + rax]
.label_1413:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp + 0x30]
	mov	rbp, rbp
	and	eax, r14d
	mov	rbp, rbp
	cmp	eax, 3
	mov	rbp, rbp
	je	.label_1408
	cmp	eax, 6
	lea	rsi, [rsi]
	jne	.label_1410
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rcx, r15
	jmp	.label_1410
.label_1408:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x28]
	mov	rbx, rcx
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	rcx, rbx
.label_1410:
	nop	
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1417
	nop	
	mov	rbx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	cmp	rbx, rbp
	mov	rsp, rsp
	mov	rbp, rax
	je	.label_1413
	test	rbx, rbx
	mov	rbp, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	je	.label_1413
	nop	
	jmp	.label_1414
.label_1417:
	mov	rsp, rsp
	mov	dword ptr [rcx], 0xc
	xor	r12d, r12d
	mov	rsp, rsp
	jmp	.label_1418
	nop	
	.section	.text
	.align	32
	#Procedure 0x413550

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	sub	rsp, 0xe8
	nop	
	mov	r12, r9
	mov	qword ptr [rsp + 0x98], r12
	mov	rsp, rsp
	mov	r13, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp], rdx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rdi
	mov	eax, dword ptr [rdx + 8]
	mov	rbp, rbp
	movzx	ecx, al
	xor	r15d, r15d
	lea	edx, [rcx - 1]
	cmp	edx, 0x23
	mov	rsp, rsp
	ja	.label_1437
	mov	r9, qword ptr [rbx]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1598]]
.label_2956:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x21
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_8
	nop	
	mov	ecx, OFFSET FLAT:.str.2_3
	nop	
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbx, r9
	mov	r9, r12
	lea	rsi, [rsi]
	call	build_charclass_op
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_1677
	mov	r9, rbx
	mov	rbp, rbp
	jmp	.label_1480
.label_2957:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	cmp	ecx, 0x23
	sete	al
	mov	rbp, rbp
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_2
	mov	ecx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rbp, rbp
	jne	.label_1605
.label_1677:
	nop	
	mov	eax, dword ptr [r12]
	nop	
	test	eax, eax
	mov	rsp, rsp
	mov	r9, rbx
	je	.label_1480
	nop	
	jmp	.label_1437
.label_2947:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1644
	mov	rax, qword ptr [r9 + 0x70]
.label_1483:
	mov	rsp, rsp
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp]
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rdx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 2
	jl	.label_1615
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rcx + 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x68], rax
	jg	.label_1474
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rdi]
	jmp	.label_1480
.label_1535:
	mov	rbp, r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1643
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	call	peek_token
	cdqe	
	mov	rbp, rbp
	add	qword ptr [rbx + 0x48], rax
	mov	r9, rbp
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1465
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x70]
.label_1629:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp]
	nop	
	movdqu	xmm0, xmmword ptr [rdx]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1488:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	je	.label_1676
	mov	rax, qword ptr [r9 + 0x70]
.label_1520:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r15
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r15], rdx
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1435
	mov	qword ptr [rbp], rdx
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	mov	r15, rdx
	mov	rbp, rdx
	lea	rsi, [rsi]
	jg	.label_1474
	lea	rdi, [rdi]
	jmp	.label_1480
.label_1465:
	mov	rbp, rbp
	mov	edi, 0x3c8
	mov	rbp, rbp
	mov	rbp, r9
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	mov	r9, rbp
	test	rax, rax
	mov	rsp, rsp
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_1488
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r9 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r9 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_1629
.label_1676:
	nop	
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	mov	r13, r9
	call	malloc
	nop	
	mov	r9, r13
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_1435
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_1520
.label_1474:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x58]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1535
	mov	rsp, rsp
	mov	rbp, r15
	jmp	.label_1480
.label_2948:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp]
	mov	rbp, rbp
	mov	cl, byte ptr [rbx]
	mov	eax, 1
	lea	rsi, [rsi]
	shl	eax, cl
	mov	rbp, rbp
	cdqe	
	lea	rsi, [rsi]
	test	qword ptr [r9 + 0xa8], rax
	je	.label_1542
	or	qword ptr [r9 + 0xa0], rax
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r9 + 0x80]
	mov	rsp, rsp
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1556
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1541:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	movdqu	xmm1, xmmword ptr [rbx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	inc	qword ptr [r9 + 0x98]
	nop	
	or	byte ptr [r9 + 0xb0], 2
	mov	rsp, rsp
	jmp	.label_1480
.label_2949:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1587
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x70]
	mov	rsi, qword ptr [rsp]
.label_1507:
	mov	qword ptr [rsp], rsi
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 1
	nop	
	jle	.label_1480
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_1480
.label_2950:
	mov	qword ptr [rsp + 0x18], r9
	mov	r15, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	lea	rax, [r15 + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	or	rdx, 0x800000
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	peek_token
	mov	rsp, rsp
	cdqe	
	lea	rdi, [rdi]
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r14 + 8]
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	cmp	eax, 9
	mov	rbp, rbp
	je	.label_1627
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rsi, [rsi]
	inc	r13
	nop	
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	lea	rsi, [rsi]
	mov	rsi, rax
	xor	r15d, r15d
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 0
	mov	rsp, rsp
	jne	.label_1437
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 9
	jne	.label_1646
	mov	r15, rbp
.label_1627:
	nop	
	cmp	r15, 8
	mov	r9, qword ptr [rsp + 0x18]
	nop	
	mov	rbx, r15
	ja	.label_1649
	mov	eax, 1
	mov	cl, bl
	mov	rbp, rbp
	shl	eax, cl
	cdqe	
	or	qword ptr [r9 + 0xa8], rax
.label_1649:
	nop	
	mov	ecx, dword ptr [r9 + 0x80]
	nop	
	cmp	ecx, 0xf
	lea	rdi, [rdi]
	je	.label_1656
	mov	rax, qword ptr [r9 + 0x70]
.label_1563:
	mov	rbp, rbp
	mov	qword ptr [rsp], r14
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rsi
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rsi, rsi
	nop	
	je	.label_1547
	mov	rbp, rbp
	mov	qword ptr [rsi], rbp
.label_1547:
	mov	qword ptr [rax + rcx + 0x30], rbx
	jmp	.label_1480
.label_2951:
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	ecx, 0x20000
	lea	rdi, [rdi]
	jne	.label_1682
	mov	rsp, rsp
	mov	dword ptr [r12], 0x10
	mov	rbp, rbp
	jmp	.label_1441
.label_2953:
	mov	r15, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15]
	test	ax, 0x30f
	mov	rbp, rbp
	je	.label_1449
	mov	al, byte ptr [r9 + 0xb0]
	nop	
	test	al, 0x10
	jne	.label_1456
	lea	rsi, [rsi]
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r9 + 0xb0], cl
	xor	ebx, ebx
	nop	
	test	al, 8
	mov	ebp, 0
	mov	rbp, rbp
	jne	.label_1462
	lea	rdi, [rdi]
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1476]]
	movdqu	xmmword ptr [r9 + 0xb8], xmm0
	lea	rsi, [rsi]
	mov	ebp, 2
	lea	rsi, [rsi]
	mov	ebx, 0x80
	test	al, 4
	je	.label_1462
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r9 + 0xc8], xmm0
.label_1456:
	mov	eax, dword ptr [r15]
.label_1449:
	cmp	eax, 0x200
	je	.label_1492
	lea	rsi, [rsi]
	cmp	eax, 0x100
	jne	.label_1496
	mov	dword ptr [r15], 6
	mov	r13, r15
	mov	rbp, rbp
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	lea	rdi, [rdi]
	je	.label_1502
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x70]
.label_1450:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	mov	rbp, rbp
	movsxd	rcx, ebp
	shl	rcx, 6
	nop	
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	lea	rdi, [rdi]
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	mov	rbp, rbp
	jmp	.label_1514
.label_2955:
	mov	rcx, qword ptr [rsp + 0x30]
	test	ecx, 0x1000000
	jne	.label_1544
.label_2952:
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	cl, 0x20
	jne	.label_1544
	test	cl, 0x10
	lea	rdi, [rdi]
	jne	.label_1555
.label_1682:
	nop	
	and	eax, 0xffffff00
	mov	rsp, rsp
	or	eax, 1
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 8], eax
	mov	rbp, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1509
	nop	
	mov	rax, qword ptr [r9 + 0x70]
.label_1680:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	mov	rbp, rbp
	lea	rbp, [rax + rcx + 8]
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_1639:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_1480
.label_2958:
	mov	dword ptr [r12], 5
	jmp	.label_1441
.label_2954:
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x90], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	lea	rdi, [rdi]
	mov	edi, 0x50
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_1604
	mov	rbp, rbp
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1604
	mov	qword ptr [rsp + 8], rbx
	mov	rbp, qword ptr [rsp]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	mov	rsp, rsp
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0x19
	nop	
	je	.label_1655
	mov	rsp, rsp
	cmp	edx, 2
	je	.label_1529
	mov	dword ptr [rsp + 0xe0], 0
	nop	
	jmp	.label_1619
.label_1605:
	mov	r9, rbx
	nop	
	jmp	.label_1480
.label_1555:
	mov	r15, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x58]
	nop	
	mov	rsi, rbp
	mov	r14, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rdx, r14
	mov	rsp, rsp
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, r13
	mov	rbp, rbp
	mov	r9, r12
	lea	rsi, [rsi]
	add	rsp, 0xe8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	parse_expression
.label_1615:
	mov	rbp, r15
	mov	rsp, rsp
	jmp	.label_1480
.label_1655:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	or	byte ptr [rcx + 0x20], 1
	nop	
	test	bh, 1
	lea	rdi, [rdi]
	je	.label_1647
	or	byte ptr [r13 + 1], 4
.label_1647:
	cdqe	
	nop	
	mov	rsi, qword ptr [rsp + 0x58]
	add	qword ptr [rsi + 0x48], rax
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 2
	lea	rsi, [rsi]
	je	.label_1529
	mov	dl, 1
	mov	dword ptr [rsp + 0xe0], edx
.label_1619:
	mov	qword ptr [rsp + 0x60], r13
	mov	rsp, rsp
	movzx	edx, cl
	nop	
	cmp	edx, 0x15
	mov	rsp, rsp
	jne	.label_1664
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp + 8], ecx
.label_1664:
	lea	rcx, [rsp + 0xb0]
	mov	qword ptr [rsp + 0x28], rcx
	mov	dword ptr [rsp + 0x20], 3
	lea	rdi, [rsp + 0x20]
	mov	r9d, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	r8, rbx
	call	parse_bracket_element
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1436
	mov	rbp, rbp
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0xd0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_1440
.label_1610:
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_1559
	nop	
	mov	qword ptr [rsp + 8], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	lea	rax, [rsp + 0xb0]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	nop	
	mov	rbp, qword ptr [rsp]
	mov	rdx, rbp
	mov	ecx, ebx
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	lea	rsi, [rsi]
	call	parse_bracket_element
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_1440
	lea	rdi, [rdi]
	jmp	.label_1436
.label_2963:
	nop	
	mov	cl, byte ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	or	qword ptr [r13 + rcx*8], rax
	jmp	.label_1497
.label_2964:
	mov	r15, qword ptr [rsp + 8]
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	cmp	rbp, rcx
	mov	rbp, rbp
	je	.label_1508
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15]
.label_1633:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	mov	edx, dword ptr [rsp + 0x28]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	nop	
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_1448
.label_1454:
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	mov	al, byte ptr [rax]
	jmp	.label_1534
.label_1597:
	nop	
	xor	eax, eax
.label_1534:
	cmp	ebx, 3
	je	.label_1537
	lea	rsi, [rsi]
	test	ebx, ebx
	jne	.label_1540
	nop	
	mov	bpl, byte ptr [rsp + 0xa8]
	jmp	.label_1513
.label_1537:
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	bpl, byte ptr [rcx]
	lea	rdi, [rdi]
	jmp	.label_1513
.label_1540:
	mov	rbp, rbp
	xor	ebp, ebp
.label_1513:
	lea	rsi, [rsi]
	cmp	r15d, 3
	je	.label_1510
	test	r15d, r15d
	mov	rsp, rsp
	jne	.label_1478
.label_1510:
	test	r12, r12
	movzx	edx, al
	je	.label_1557
	mov	edi, edx
	call	btowc
	mov	rbp, rbp
	mov	edx, eax
	jmp	.label_1557
.label_1478:
	mov	edx, dword ptr [rsp + 0x28]
.label_1557:
	cmp	ebx, 3
	je	.label_1472
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_1515
.label_1472:
	test	r12, r12
	movzx	ebp, bpl
	je	.label_1445
	mov	edi, ebp
	nop	
	mov	ebx, edx
	nop	
	call	btowc
	mov	edx, ebx
	lea	rdi, [rdi]
	mov	ebp, eax
	jmp	.label_1445
.label_1515:
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rsp + 0xa8]
.label_1445:
	mov	rsp, rsp
	cmp	edx, -1
	mov	ecx, 3
	je	.label_1470
	cmp	ebp, -1
	je	.label_1470
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xd0], 0
	lea	rsi, [rsi]
	je	.label_1578
	cmp	edx, ebp
	lea	rsi, [rsi]
	mov	ecx, 0xb
	ja	.label_1470
.label_1578:
	test	r12, r12
	je	.label_1583
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x50], rax
	je	.label_1463
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	mov	r9, r13
	nop	
	mov	r15, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rsp + 0x14]
.label_1522:
	mov	dword ptr [rdi + rax*4], edx
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [r14 + rax*4], ebp
	mov	r12, qword ptr [rsp + 0x98]
	jmp	.label_1570
.label_1583:
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r9, r13
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0x14]
.label_1570:
	lea	rdi, [rdi]
	mov	eax, ebp
	mov	edx, edx
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x60]
.label_1620:
	mov	rbp, rbp
	cmp	rdx, rcx
	mov	rbp, rbp
	ja	.label_1611
	cmp	rcx, rax
	lea	rsi, [rsi]
	ja	.label_1611
	lea	rdi, [rdi]
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	lea	rdi, [rdi]
	shr	rdi, 0x3a
	mov	rsp, rsp
	add	rdi, rcx
	mov	rbp, rbp
	sar	rdi, 6
	or	qword ptr [r13 + rdi*8], rsi
.label_1611:
	lea	rsi, [rsi]
	inc	rcx
	cmp	rcx, 0x100
	lea	rdi, [rdi]
	jne	.label_1620
	mov	dword ptr [r12], 0
	jmp	.label_1448
.label_1508:
	lea	rsi, [rsi]
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	lea	rsi, [rsi]
	call	realloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1490
	lea	rbp, [rbp + rbp + 1]
	mov	qword ptr [rsp + 0x38], rbp
	nop	
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	jmp	.label_1633
.label_1463:
	mov	dword ptr [rsp + 0xdc], edx
	mov	rax, qword ptr [rsp + 0x50]
	lea	rax, [rax + rax]
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	lea	rbx, [rax*4 + 4]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	realloc
	mov	r14, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbx
	nop	
	call	realloc
	mov	rdi, r14
	mov	r14, rax
	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	r15, qword ptr [rsp + 8]
	je	.label_1650
	lea	rdi, [rdi]
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1650
	mov	rax, qword ptr [rsp + 0x50]
	nop	
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], r14
	mov	rax, qword ptr [r12 + 0x40]
	mov	r9, r13
	mov	ebx, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0xdc]
	jmp	.label_1522
.label_1440:
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	peek_token_bracket
	mov	rbp, rbp
	mov	ebx, eax
	mov	r15d, dword ptr [rsp + 0x20]
	nop	
	cmp	r15d, 2
	je	.label_1673
	cmp	r15d, 4
	jne	.label_1679
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x60]
	nop	
	mov	rsi, r13
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	mov	rdx, r15
	lea	rcx, [rsp + 0x90]
	mov	r9, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	build_charclass
	lea	rsi, [rsi]
	mov	dword ptr [r12], eax
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x18]
	je	.label_1448
	nop	
	jmp	.label_1566
.label_1679:
	movzx	eax, byte ptr [rbp + 8]
	cmp	eax, 0x16
	mov	r9, qword ptr [rsp + 0x18]
	nop	
	je	.label_1460
	cmp	eax, 2
	jne	.label_1469
	mov	rbp, rbp
	jmp	.label_1473
.label_1460:
	mov	r13, r9
	nop	
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	add	qword ptr [rbp + 0x48], rax
	nop	
	lea	rdi, [rsp + 0x40]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x48]
	mov	rbp, rbp
	cmp	ecx, 0x15
	je	.label_1485
	lea	rsi, [rsi]
	cmp	ecx, 2
	mov	rsp, rsp
	je	.label_1489
	mov	rsp, rsp
	lea	rcx, [rsp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	mov	dword ptr [rsp + 0xa0], 3
	mov	r9d, 1
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xa0]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rbp, rbp
	lea	rdx, [rsp + 0x40]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	lea	rsi, [rsi]
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1523
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r12
	mov	rdi, qword ptr [rsp]
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	peek_token_bracket
	mov	rbp, rbp
	cmp	dword ptr [r13 + 0xb4], 1
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jg	.label_1536
	xor	r12d, r12d
.label_1536:
	nop	
	mov	ecx, 0xb
	mov	ebx, dword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	cmp	ebx, 2
	je	.label_1470
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	lea	rsi, [rsi]
	cmp	ebx, 4
	lea	rdi, [rdi]
	je	.label_1470
	cmp	r15d, 3
	lea	rsi, [rsi]
	jne	.label_1548
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	nop	
	call	strlen
	mov	ecx, 3
	mov	rbp, rbp
	cmp	rax, 1
	ja	.label_1470
.label_1548:
	cmp	ebx, 3
	mov	rbp, rbp
	jne	.label_1565
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xa8]
	call	strlen
	nop	
	mov	ecx, 3
	cmp	rax, 1
	nop	
	ja	.label_1470
.label_1565:
	mov	rbp, rbp
	cmp	r15d, 3
	nop	
	je	.label_1454
	test	r15d, r15d
	mov	rbp, rbp
	jne	.label_1597
	mov	al, byte ptr [rsp + 0x28]
	jmp	.label_1534
.label_1485:
	nop	
	mov	eax, ebx
	neg	eax
	cdqe	
	mov	rbp, rbp
	add	qword ptr [rbp + 0x48], rax
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 8], 1
	mov	r9, r13
.label_1469:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	mov	eax, r15d
	cmp	r15d, 3
	mov	rbp, rbp
	ja	.label_1589
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1595]]
.label_1673:
	mov	rbp, qword ptr [rsp + 0x28]
	nop	
	mov	rdi, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rdi, [rdi]
	jne	.label_1554
	mov	cl, byte ptr [rbp]
	mov	rbp, rbp
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_1497:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 8]
.label_1448:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	nop	
	movzx	eax, byte ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	eax, 0x15
	jne	.label_1610
	mov	rbp, rbp
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0xe0]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_1658
	movdqu	xmm0, xmmword ptr [r13]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [r13], xmm0
	movdqu	xmm0, xmmword ptr [r13 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13 + 0x10], xmm0
.label_1658:
	mov	eax, dword ptr [r9 + 0xb4]
	mov	rsp, rsp
	cmp	eax, 2
	nop	
	jl	.label_1628
	mov	rcx, qword ptr [r9 + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx]
	mov	rbp, rbp
	and	qword ptr [r13], rdx
	nop	
	mov	rdx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	qword ptr [r13 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	and	qword ptr [r13 + 0x10], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r13 + 0x18], rcx
.label_1628:
	cmp	qword ptr [r15 + 0x28], 0
	mov	rsp, rsp
	jne	.label_1457
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x30], 0
	mov	rbp, rbp
	jne	.label_1457
	cmp	qword ptr [r15 + 0x38], 0
	mov	rsp, rsp
	jne	.label_1457
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x40], 0
	lea	rsi, [rsi]
	jne	.label_1457
	mov	rsp, rsp
	cmp	eax, 2
	jl	.label_1461
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1457
	test	byte ptr [r15 + 0x20], 1
	nop	
	jne	.label_1457
.label_1461:
	mov	rdi, qword ptr [r15]
	mov	rbp, r9
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x10]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1668
	mov	rax, qword ptr [r9 + 0x70]
.label_1594:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r13
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_1639
.label_1457:
	nop	
	or	byte ptr [r9 + 0xb0], 2
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1442
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1638:
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdi, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x30], r15
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 6
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r13], 0
	nop	
	jne	.label_1455
	nop	
	cmp	qword ptr [r13 + 8], 0
	jne	.label_1455
	nop	
	cmp	qword ptr [r13 + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1455
	cmp	qword ptr [r13 + 0x18], 0
	je	.label_1493
.label_1455:
	nop	
	mov	qword ptr [rsp + 0x60], r13
	mov	rsp, rsp
	mov	eax, dword ptr [r9 + 0x80]
	mov	rbp, rbp
	cmp	eax, 0xf
	mov	rsp, rsp
	je	.label_1660
	mov	rbp, qword ptr [r9 + 0x70]
.label_1608:
	mov	rbp, rbp
	lea	ecx, [rax + 1]
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	mov	rbp, rbp
	shl	rbx, 6
	nop	
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	nop	
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp + rbx + 0x30], rax
	mov	dword ptr [rbp + rbx + 0x38], 3
	mov	rsp, rsp
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbp + rbx + 0x40], -1
	nop	
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1531
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1616:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rdi], rbp
	jmp	.label_1480
.label_1492:
	lea	rsi, [rsi]
	mov	dword ptr [r15], 5
	mov	rbp, rbp
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1569
	mov	rax, qword ptr [r9 + 0x70]
.label_1479:
	lea	ecx, [rbp + 1]
	nop	
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	mov	rbp, rbp
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	mov	rsp, rsp
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	ecx, 0xa
.label_1514:
	mov	dword ptr [r13], ecx
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r15]
	lea	rdi, [rdi]
	cmp	ebx, 0xf
	lea	rsi, [rsi]
	je	.label_1600
	mov	rax, qword ptr [r9 + 0x70]
.label_1579:
	lea	ecx, [rbx + 1]
	nop	
	mov	dword ptr [r15], ecx
	nop	
	movsxd	rcx, ebx
	shl	rcx, 6
	mov	rbp, rbp
	lea	rbx, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1517:
	mov	rbp, rbp
	mov	ecx, dword ptr [r15]
	nop	
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	je	.label_1618
	mov	rax, qword ptr [r9 + 0x70]
.label_1484:
	lea	edx, [rcx + 1]
	lea	rdi, [rdi]
	mov	dword ptr [r15], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	nop	
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbp
	mov	qword ptr [rax + rcx + 0x18], rbx
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_1622
	mov	qword ptr [rbp], r15
.label_1622:
	test	rbx, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	je	.label_1435
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	nop	
	test	rbp, rbp
	jne	.label_1640
	jmp	.label_1435
.label_1496:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1636
	mov	rsp, rsp
	mov	r13, r15
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x70]
.label_1494:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	lea	rsi, [rsi]
	movsxd	rcx, ecx
	lea	rdi, [rdi]
	shl	rcx, 6
	nop	
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	lea	rdi, [rdi]
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
.label_1640:
	nop	
	mov	rdi, r13
	mov	rbx, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	call	peek_token
	lea	rdi, [rdi]
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_1437
.label_1509:
	mov	rbp, r9
	nop	
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_1435
	lea	rdi, [rdi]
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_1680
.label_1436:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	dword ptr [r12], eax
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1447
.label_1529:
	mov	dword ptr [r12], 2
	jmp	.label_1453
.label_1559:
	mov	dword ptr [r12], 7
.label_1566:
	mov	qword ptr [rsp + 0x18], r9
	jmp	.label_1466
.label_1643:
	mov	r9, rbp
	mov	rbp, r15
	jmp	.label_1480
.label_1644:
	mov	rbp, rbp
	mov	rbx, r9
	mov	rbp, rbp
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	je	.label_1435
	nop	
	mov	r9, rbx
	nop	
	mov	rcx, qword ptr [r9 + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_1483
.label_1542:
	mov	dword ptr [r12], 6
	jmp	.label_1441
.label_1587:
	nop	
	mov	rbx, r9
	mov	rsp, rsp
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	mov	rsi, qword ptr [rsp]
	je	.label_1435
	lea	rsi, [rsi]
	mov	r9, rbx
	nop	
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	nop	
	jmp	.label_1507
.label_1604:
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rdi, rbx
	call	free
	lea	rdi, [rdi]
	jmp	.label_1435
.label_1556:
	mov	rsp, rsp
	mov	rbp, r9
	mov	edi, 0x3c8
	nop	
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1435
	mov	rsp, rsp
	mov	r9, rbp
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1541
.label_1656:
	nop	
	mov	r15, rsi
	mov	rsp, rsp
	mov	rbp, r9
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	je	.label_1435
	lea	rdi, [rdi]
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rsi, r15
	jmp	.label_1563
.label_1600:
	mov	edi, 0x3c8
	mov	rbx, r9
	call	malloc
	mov	r9, rbx
	lea	rdi, [rdi]
	xor	ebx, ebx
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1517
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_1579
.label_1618:
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_1435
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_1484
.label_1554:
	mov	dword ptr [r12], 3
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1447
.label_1462:
	nop	
	mov	r13, r9
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdx, qword ptr [rax]
	inc	rbx
.label_1626:
	lea	rdi, [rdi]
	mov	rsi, rbx
	xor	eax, eax
	nop	dword ptr [rax]
.label_1623:
	test	byte ptr [rdx + rsi*2 - 2], 8
	je	.label_1607
	lea	rsi, [rsi]
	mov	edi, 1
	mov	cl, al
	mov	rsp, rsp
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1607:
	cmp	esi, 0x5f
	mov	rbp, rbp
	je	.label_1612
	mov	rsp, rsp
	movzx	ecx, word ptr [rdx + rsi*2]
	lea	rsi, [rsi]
	and	ecx, 8
	lea	rdi, [rdi]
	test	cx, cx
	nop	
	je	.label_1613
.label_1612:
	lea	ecx, [rax + 1]
	mov	edi, 1
	shl	rdi, cl
	lea	rsi, [rsi]
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1613:
	mov	rsp, rsp
	add	rax, 2
	add	rsi, 2
	nop	
	cmp	rax, 0x40
	mov	rbp, rbp
	jne	.label_1623
	inc	rbp
	mov	rsp, rsp
	add	rbx, 0x40
	cmp	ebp, 4
	lea	rdi, [rdi]
	jne	.label_1626
	jmp	.label_1456
.label_1442:
	mov	qword ptr [rsp + 0x60], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1490
	mov	r9, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_1638
.label_1660:
	nop	
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x18], r9
	nop	
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1490
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_1608
.label_1531:
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_1490
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	nop	
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	jmp	.label_1616
.label_1473:
	mov	dword ptr [r12], 7
	mov	rsp, rsp
	jmp	.label_1447
.label_1502:
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	ecx, 9
	mov	rsp, rsp
	xor	ebp, ebp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1439
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1450
.label_1569:
	nop	
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	ecx, 0xa
	xor	ebp, ebp
	test	rax, rax
	je	.label_1475
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1479
.label_1636:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1435
	mov	r13, r15
	mov	r9, rbx
	mov	rbp, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	nop	
	mov	dword ptr [r9 + 0x80], 0
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_1494
.label_1435:
	lea	rdi, [rdi]
	mov	dword ptr [r12], 0xc
	lea	rsi, [rsi]
	jmp	.label_1441
.label_1489:
	mov	dword ptr [r12], 7
	jmp	.label_1516
.label_1493:
	mov	rbp, rdi
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rbx, r9
	lea	rdi, [rdi]
	call	free
	mov	r9, rbx
	lea	rdi, [rdi]
	jmp	.label_1480
.label_1646:
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_1530
	mov	rsp, rsp
	mov	r14d, 0x400ff
.label_1539:
	nop	
	mov	rbp, rsi
	mov	rsi, qword ptr [rbp + 8]
	test	rsi, rsi
	jne	.label_1539
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	test	rsi, rsi
	jne	.label_1539
.label_1567:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	mov	rsp, rsp
	je	.label_1545
	nop	
	cmp	eax, 6
	jne	.label_1551
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1564
.label_1545:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1564:
	nop	
	call	free
.label_1551:
	mov	rax, qword ptr [rbp]
	nop	
	test	rax, rax
	je	.label_1530
	mov	rsi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rsi, rbp
	mov	rsp, rsp
	mov	rbp, rax
	je	.label_1567
	test	rsi, rsi
	mov	rbp, rax
	je	.label_1567
	jmp	.label_1539
.label_1530:
	lea	rsi, [rsi]
	mov	dword ptr [r12], 8
	jmp	.label_1441
.label_1439:
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1514
.label_1475:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jmp	.label_1514
.label_1523:
	mov	dword ptr [r12], eax
	mov	rbp, rbp
	jmp	.label_1516
.label_1668:
	mov	qword ptr [rsp + 0x60], r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1490
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_1594
.label_1490:
	mov	dword ptr [r12], 0xc
	mov	r13, qword ptr [rsp + 0x60]
.label_1453:
	nop	
	mov	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_1466
.label_1650:
	call	free
	mov	rbp, rbp
	mov	rdi, r14
	call	free
	nop	
	mov	ecx, 0xc
.label_1470:
	mov	r12, qword ptr [rsp + 0x98]
	mov	dword ptr [r12], ecx
.label_1516:
	mov	rsp, rsp
	mov	r9, r13
.label_1447:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
.label_1466:
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	ebp, 0
	jne	.label_1437
.label_1480:
	mov	qword ptr [rsp + 0x18], r9
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	mov	rdi, rbx
	mov	r13, qword ptr [rsp + 0x58]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x30]
	mov	rdx, r14
	mov	rbp, rbp
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	nop	
	mov	eax, r14d
	nop	
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0xd0], rax
	and	r14d, 0x200000
	mov	qword ptr [rsp + 0x50], r14
	nop	dword ptr [rax]
.label_1553:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 8]
	nop	
	cmp	eax, 0x17
	ja	.label_1651
	mov	rsp, rsp
	mov	ecx, 0x8c0800
	mov	rbp, rbp
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_1654
	mov	r14, qword ptr [r13 + 0x48]
	nop	
	movdqu	xmm0, xmmword ptr [rbx]
	nop	
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	mov	rdx, -1
	nop	
	cmp	eax, 0x17
	mov	rbp, rbp
	je	.label_1464
	mov	r14, rbp
	lea	rsi, [rsi]
	cmp	eax, 0x12
	nop	
	sete	cl
	movzx	r15d, cl
	cmp	eax, 0x13
	lea	rsi, [rsi]
	mov	rcx, -1
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rbp, rbp
	cmove	rcx, rax
	jmp	.label_1666
.label_1648:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15*4]
	nop	
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	edx, 0x8000
	mov	rsp, rsp
	cmovle	rdx, rax
	nop	dword ptr [rax]
.label_1464:
	mov	rsp, rsp
	mov	r15, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	dl, byte ptr [rbx]
	lea	rdi, [rdi]
	movzx	ecx, dl
	movzx	eax, byte ptr [rbx + 8]
	nop	
	mov	esi, 0x18
	cmp	eax, 0x18
	je	.label_1443
	nop	
	cmp	eax, 2
	je	.label_1452
	lea	rsi, [rsi]
	mov	dl, 0x2c
	cmp	ecx, 0x2c
	je	.label_1458
	nop	
	cmp	ecx, 0x30
	mov	rdx, -2
	nop	
	jb	.label_1464
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_1464
	cmp	r15, -2
	je	.label_1464
	cmp	ecx, 0x39
	nop	
	ja	.label_1464
	nop	
	cmp	r15, -1
	mov	rbp, rbp
	jne	.label_1648
	lea	rdx, [rcx - 0x30]
	nop	
	jmp	.label_1464
.label_1458:
	lea	rdi, [rdi]
	mov	esi, eax
	nop	dword ptr [rax]
.label_1443:
	cmp	r15, -1
	lea	rdi, [rdi]
	jne	.label_1652
	movzx	eax, dl
	cmp	eax, 0x2c
	lea	rdi, [rdi]
	jne	.label_1487
	cmp	esi, 1
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_1674
.label_1487:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], rbp
	mov	rbp, rbp
	jmp	.label_1495
	nop	word ptr cs:[rax + rax]
.label_1652:
	cmp	r15, -2
	je	.label_1452
	lea	rdi, [rdi]
	cmp	esi, 0x18
	mov	rsp, rsp
	je	.label_1505
	cmp	esi, 1
	lea	rsi, [rsi]
	jne	.label_1452
	movzx	ecx, dl
	cmp	ecx, 0x2c
	jne	.label_1452
.label_1674:
	mov	qword ptr [rsp + 0x60], r14
	nop	
	mov	r14, rbp
	mov	rbp, r12
	lea	rsi, [rsi]
	mov	rdx, -1
	jmp	.label_1519
.label_1505:
	mov	rbp, rbp
	mov	r14, rbp
	mov	rcx, r15
	mov	rbp, rbp
	jmp	.label_1526
.label_1552:
	lea	rax, [r12 + r12*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	nop	
	cmovg	rdx, rax
.label_1519:
	mov	r12, rdx
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	call	peek_token
	cdqe	
	lea	rsi, [rsi]
	add	qword ptr [r13 + 0x48], rax
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 8]
	mov	rsp, rsp
	cmp	eax, 0x18
	lea	rsi, [rsi]
	je	.label_1550
	cmp	eax, 2
	je	.label_1560
	lea	rsi, [rsi]
	cmp	ecx, 0x2c
	je	.label_1550
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1519
	mov	rbp, rbp
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_1519
	cmp	r12, -2
	je	.label_1519
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0x39
	nop	
	ja	.label_1519
	lea	rdi, [rdi]
	cmp	r12, -1
	mov	rsp, rsp
	jne	.label_1552
	nop	
	add	rcx, -0x30
	mov	rdx, rcx
	nop	
	jmp	.label_1519
.label_1550:
	mov	rcx, r12
	lea	rsi, [rsi]
	cmp	rcx, -2
	lea	rsi, [rsi]
	je	.label_1560
	cmp	rcx, -1
	mov	r12, rbp
	lea	rsi, [rsi]
	je	.label_1526
	cmp	r15, rcx
	mov	rsp, rsp
	jg	.label_1584
.label_1526:
	cmp	eax, 0x18
	nop	
	jne	.label_1584
	mov	rsp, rsp
	cmp	rcx, -1
	mov	rax, rcx
	cmove	rax, r15
	cmp	rax, 0x8000
	lea	rdi, [rdi]
	jge	.label_1590
	nop	dword ptr [rax]
.label_1666:
	lea	rdi, [rdi]
	mov	rbp, rcx
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	mov	rsp, rsp
	add	qword ptr [r13 + 0x48], rax
	test	r14, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], r14
	nop	
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_1467
	lea	rsi, [rsi]
	mov	r9, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r9
	mov	rax, r9
	lea	rsi, [rsi]
	or	rax, r15
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rax, rdi
	lea	rsi, [rsi]
	je	.label_1446
	test	r15, r15
	lea	rdi, [rdi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
	nop	
	mov	r12, rdi
	mov	r8, qword ptr [rsp + 0x18]
	pxor	xmm1, xmm1
	jg	.label_1617
.label_1546:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12 + 0x30]
	mov	rsp, rsp
	cmp	eax, 0x11
	jne	.label_1624
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_1631:
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_1631
	mov	rdx, qword ptr [rcx + 0x10]
	nop	
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_1631
	nop	
.label_1662:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	movzx	esi, dl
	lea	rsi, [rsi]
	cmp	esi, 0x11
	mov	rsp, rsp
	jne	.label_1637
	cmp	qword ptr [rcx + 0x28], rax
	nop	
	jne	.label_1637
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1637:
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_1624
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rsi
	je	.label_1662
	lea	rsi, [rsi]
	test	rdx, rdx
	nop	
	mov	rcx, rsi
	mov	rbp, rbp
	je	.label_1662
	jmp	.label_1631
	nop	dword ptr [rax + rax]
.label_1624:
	nop	
	mov	qword ptr [rsp + 0xe0], rdi
	nop	
	cmp	r9, -1
	sete	bl
	nop	
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1581
	mov	rsp, rsp
	mov	rax, qword ptr [r8 + 0x70]
.label_1591:
	lea	rdi, [rdi]
	movzx	edx, bl
	or	edx, 0xa
	lea	esi, [rcx + 1]
	nop	
	mov	dword ptr [r8 + 0x80], esi
	mov	rbp, rbp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	nop	
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], edx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	r12, r12
	je	.label_1661
	mov	rsp, rsp
	mov	qword ptr [r12], r13
.label_1661:
	lea	rsi, [rsi]
	add	r15, 2
	cmp	r15, r9
	jg	.label_1681
	nop	
	jmp	.label_1438
	nop	word ptr cs:[rax + rax]
.label_1446:
	mov	rbx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1446
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1446
	nop	
.label_1501:
	nop	
	mov	eax, dword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	ecx, 0x400ff
	and	eax, ecx
	nop	
	cmp	eax, 3
	lea	rsi, [rsi]
	je	.label_1562
	mov	rbp, rbp
	cmp	eax, 6
	jne	.label_1471
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	nop	
	mov	rdi, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, rbp
	jmp	.label_1486
	nop	dword ptr [rax]
.label_1562:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1486:
	mov	rsp, rsp
	call	free
.label_1471:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_1467
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsp, rsp
	je	.label_1501
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, rdx
	je	.label_1501
	jmp	.label_1446
.label_1592:
	mov	qword ptr [rsp + 8], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], r15
	lea	rdi, [rdi]
	mov	r15, r8
	lea	rsi, [rsi]
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1524
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r8 + 0x80], 0
	nop	
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1525
.label_1630:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	r12, rbx
	lea	rdi, [rdi]
	jmp	.label_1670
.label_1477:
	mov	edi, 0x3c8
	mov	rsp, rsp
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	mov	r8, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1444
	mov	rsp, rsp
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1521
.label_1524:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1491
.label_1593:
	mov	qword ptr [r14], 0
.label_1491:
	xor	r12d, r12d
.label_1670:
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	call	malloc
	test	rax, rax
	mov	r8, r15
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	mov	rsp, rsp
	je	.label_1444
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r8 + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1663
	nop	word ptr cs:[rax + rax]
.label_1438:
	mov	rsp, rsp
	mov	rbp, qword ptr [r12]
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1592
	mov	rax, qword ptr [r8 + 0x70]
.label_1525:
	lea	rdx, [r12 + 0x28]
	nop	
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	nop	
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	nop	
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rsp, rsp
	lea	r14, [rsp + 0x70]
	jmp	.label_1601
	nop	dword ptr [rax + rax]
.label_1549:
	lea	rdx, [r12 + 0x28]
	mov	rbp, rbp
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	shl	rsi, 6
	nop	
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	mov	rsp, rsp
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	nop	
	lea	rcx, [rax + rsi + 8]
	nop	
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	nop	
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r14], rcx
.label_1601:
	mov	qword ptr [rcx], rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + 0x30], 0x40000
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1634
	mov	rsp, rsp
	lea	r14, [rbp + 8]
	mov	r12, rax
	jmp	.label_1642
	nop	word ptr [rax + rax]
.label_1634:
	mov	rbp, rbp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1527:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r12, rcx
	je	.label_1675
	test	r12, r12
	jne	.label_1606
.label_1675:
	mov	r12, qword ptr [rax]
	nop	
	mov	rbp, qword ptr [rbp]
	test	r12, r12
	jne	.label_1527
	nop	
	jmp	.label_1499
.label_1606:
	lea	r14, [rbp + 0x10]
.label_1642:
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	nop	
	je	.label_1665
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1549
.label_1665:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1593
	mov	r8, r15
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1549
	nop	word ptr cs:[rax + rax]
.label_1499:
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1630
	mov	rax, qword ptr [r8 + 0x70]
	nop	
	mov	r12, rbx
.label_1663:
	nop	
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	lea	rdi, [rdi]
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	nop	
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbx
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_1444
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1477
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1521:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	nop	
	lea	r13, [rax + rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rbx
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r13
	cmp	r15, r9
	nop	
	lea	r15, [r15 + 1]
	lea	rdi, [rdi]
	jl	.label_1438
.label_1681:
	mov	rax, qword ptr [rsp + 0x38]
	test	rax, rax
	je	.label_1512
	mov	rbx, rax
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x98]
	je	.label_1588
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1577:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	nop	
	lea	rdx, [rax + rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r13], rdx
	mov	r13, rdx
	nop	
	jmp	.label_1532
.label_1512:
	mov	r12, qword ptr [rsp + 0x98]
.label_1532:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, r13
	nop	
	jmp	.label_1533
.label_1584:
	mov	qword ptr [rsp + 0xe0], r14
.label_1495:
	nop	
	mov	dword ptr [r12], 0xa
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_1467
.label_1617:
	mov	rbp, rbp
	cmp	r15, 2
	mov	r13, rdi
	mov	rbp, rbp
	mov	rbp, rdi
	jl	.label_1568
	mov	rax, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rax]
	mov	r13, rax
	mov	rbp, rbp
	mov	ebx, 2
	lea	rdi, [rdi]
	mov	rdi, rax
	jmp	.label_1574
.label_1581:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	lea	rdi, [rdi]
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r8, rbp
	test	rax, rax
	je	.label_1444
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	rsp, rsp
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	jmp	.label_1591
.label_1560:
	mov	r12, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x60]
.label_1452:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x50], 0
	nop	
	je	.label_1603
	mov	qword ptr [r13 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xb0]
	nop	
	movdqu	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 8], 1
	nop	
	mov	rcx, rbp
	mov	qword ptr [rsp + 0xe0], rbp
	jmp	.label_1467
.label_1653:
	nop	
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 8], r9
	mov	edi, 0x3c8
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1614
	mov	rbp, rbp
	mov	r14, rbp
	mov	r8, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1571
.label_1459:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	mov	rsp, rsp
	mov	r13, rbp
	jmp	.label_1558
.label_1614:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], 0
	lea	rdi, [rdi]
	jmp	.label_1632
.label_1602:
	lea	rsi, [rsi]
	mov	qword ptr [r12], 0
.label_1632:
	nop	
	xor	r13d, r13d
.label_1558:
	lea	rdi, [rdi]
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x18]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 8]
	nop	
	je	.label_1444
	mov	rbp, rbp
	mov	rcx, qword ptr [r8 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	jmp	.label_1645
	nop	
.label_1574:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1653
	mov	rsp, rsp
	mov	r14, rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1571:
	lea	rsi, [rsi]
	lea	rdx, [r13 + 0x28]
	mov	rbp, rbp
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	mov	rbp, rbp
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], rbp
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	r12, [rsp + 0x70]
	jmp	.label_1659
	nop	word ptr cs:[rax + rax]
.label_1528:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rsi, [rsi]
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r12], rcx
.label_1659:
	mov	rsp, rsp
	mov	qword ptr [rcx], r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	lea	rsi, [rsi]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rdx, qword ptr [r12]
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1468
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	r12, [r14 + 8]
	mov	r13, rax
	jmp	.label_1481
	nop	dword ptr [rax]
.label_1468:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1500:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r13, rcx
	je	.label_1575
	test	r13, r13
	lea	rdi, [rdi]
	jne	.label_1451
.label_1575:
	nop	
	mov	r13, qword ptr [rax]
	mov	rdx, qword ptr [rdx]
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_1500
	jmp	.label_1504
.label_1451:
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	rsi, [rsi]
	lea	r12, [r14 + 0x10]
.label_1481:
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1506
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1528
.label_1506:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_1602
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1528
	nop	word ptr cs:[rax + rax]
.label_1504:
	mov	ecx, dword ptr [r8 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	je	.label_1459
	nop	
	mov	rax, qword ptr [r8 + 0x70]
	mov	r13, rbp
.label_1645:
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	nop	
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1518
	mov	qword ptr [rdi], rdx
.label_1518:
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_1444
	lea	rdi, [rdi]
	mov	rbp, rdx
	nop	
	mov	qword ptr [r13], rbp
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	mov	rdi, rbp
	nop	
	jl	.label_1574
.label_1568:
	cmp	r15, r9
	mov	rsp, rsp
	jne	.label_1586
	mov	qword ptr [rsp + 0x18], r8
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	jmp	.label_1467
.label_1588:
	mov	qword ptr [rsp + 0x18], r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	nop	
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_1467
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r8 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	pxor	xmm1, xmm1
	jmp	.label_1577
.label_1586:
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1609
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1482:
	nop	
	lea	rdx, [r13 + 0x28]
	lea	rdi, [rdi]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	mov	rsp, rsp
	movsxd	rcx, ecx
	mov	rsp, rsp
	shl	rcx, 6
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	mov	rsp, rsp
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], r12
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rbp, [rsp + 0x70]
	jmp	.label_1669
	nop	word ptr cs:[rax + rax]
.label_1503:
	nop	
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	lea	rdi, [rdi]
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	mov	rbp, rbp
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	rbp, rbp
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rbp], rcx
.label_1669:
	mov	rsp, rsp
	mov	qword ptr [rcx], rbx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1657
	lea	rbp, [rbx + 8]
	mov	r13, rax
	jmp	.label_1576
.label_1657:
	lea	rsi, [rsi]
	xor	eax, eax
.label_1672:
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	rax, r13
	nop	
	mov	r13, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r13, rcx
	je	.label_1667
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_1671
.label_1667:
	mov	rsp, rsp
	mov	r13, qword ptr [rax]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbx]
	lea	rsi, [rsi]
	test	r13, r13
	nop	
	jne	.label_1672
	jmp	.label_1678
.label_1671:
	lea	rbp, [rbx + 0x10]
.label_1576:
	mov	ecx, dword ptr [r8 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1511
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1503
.label_1511:
	mov	qword ptr [rsp + 8], r9
	mov	r14, r8
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_1596
	mov	r8, r14
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1503
.label_1603:
	mov	qword ptr [rsp + 0xe0], rbp
	cmp	eax, 2
	setne	al
	nop	
	movzx	eax, al
	mov	rbp, rbp
	add	eax, 9
	lea	rsi, [rsi]
	mov	dword ptr [r12], eax
	xor	ecx, ecx
	jmp	.label_1467
.label_1678:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xe0]
	jmp	.label_1546
.label_1590:
	mov	qword ptr [rsp + 0xe0], r14
	mov	rsp, rsp
	mov	dword ptr [r12], 0xf
	nop	
	xor	ecx, ecx
	jmp	.label_1467
.label_1609:
	lea	rsi, [rsi]
	mov	r14, r9
	nop	
	mov	r12, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_1498
	nop	
	mov	qword ptr [rsp + 0x38], rbp
	lea	rdi, [rdi]
	mov	r8, r12
	mov	rsp, rsp
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	nop	
	mov	dword ptr [r8 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
	mov	rsp, rsp
	mov	r9, r14
	lea	rdi, [rdi]
	jmp	.label_1482
.label_1498:
	mov	qword ptr [rsp + 0x70], 0
	nop	
	jmp	.label_1444
.label_1596:
	lea	rsi, [rsi]
	mov	qword ptr [rbp], 0
.label_1444:
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	mov	dword ptr [r12], 0xc
	xor	ecx, ecx
.label_1467:
	test	rcx, rcx
	nop	
	sete	al
	jne	.label_1533
	lea	rsi, [rsi]
	mov	edx, dword ptr [r12]
	lea	rdi, [rdi]
	test	edx, edx
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	je	.label_1538
	lea	rsi, [rsi]
	jmp	.label_1543
	nop	word ptr cs:[rax + rax]
.label_1533:
	mov	rbx, qword ptr [rsp]
.label_1538:
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rbp, rcx
	nop	
	mov	r13, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	je	.label_1553
	nop	
	movzx	edx, byte ptr [rbx + 8]
	mov	rbp, rbp
	cmp	edx, 0x17
	mov	rbp, rbp
	je	.label_1561
	nop	
	cmp	edx, 0xb
	nop	
	mov	rbp, rcx
	mov	rbp, rbp
	jne	.label_1553
.label_1561:
	mov	rbp, rbp
	test	al, al
	jne	.label_1544
	mov	r14d, 0x400ff
	nop	word ptr cs:[rax + rax]
.label_1572:
	nop	
	mov	rbp, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	test	rcx, rcx
	jne	.label_1572
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_1572
	nop	
.label_1573:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	and	eax, r14d
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rbp, rbp
	je	.label_1580
	lea	rsi, [rsi]
	cmp	eax, 6
	nop	
	jne	.label_1582
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	nop	
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	nop	
	mov	rdi, rbx
	jmp	.label_1599
	nop	dword ptr [rax + rax]
.label_1580:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1599:
	lea	rsi, [rsi]
	call	free
.label_1582:
	nop	
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1544
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1573
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1573
	jmp	.label_1572
.label_1543:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rcx, qword ptr [rsp + 0xe0]
	test	rcx, rcx
	nop	
	je	.label_1437
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1585:
	mov	rbp, rcx
	nop	
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_1585
	nop	
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_1585
	nop	dword ptr [rax]
.label_1641:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1621
	cmp	eax, 6
	jne	.label_1625
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	call	free
	mov	rdi, rbx
	jmp	.label_1635
	nop	
.label_1621:
	nop	
	mov	rdi, qword ptr [rbp + 0x28]
.label_1635:
	lea	rsi, [rsi]
	call	free
.label_1625:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1437
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1641
	test	rcx, rcx
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_1641
	mov	rsp, rsp
	jmp	.label_1585
.label_1544:
	mov	dword ptr [r12], 0xd
.label_1441:
	lea	rsi, [rsi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_1437
.label_1651:
	lea	rdi, [rdi]
	mov	r15, rbp
	mov	rsp, rsp
	jmp	.label_1437
.label_1654:
	mov	r15, rbp
.label_1437:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_1589:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	lea	rdi, [rdi]
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4167b0

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 0x14], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
	mov	edi, 0x20
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1700
	mov	qword ptr [rsp], r15
	nop	
	mov	edi, 0x50
	nop	
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1694
	lea	rdi, [rdi]
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0x14]
	or	al, cl
	lea	rdi, [rdi]
	mov	byte ptr [r15 + 0x20], al
	nop	
	lea	rcx, [rsp + 8]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	nop	
	call	build_charclass
	mov	rbp, rbp
	mov	r14d, eax
	mov	rbp, rbp
	test	r14d, r14d
	jne	.label_1695
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1698
	lea	rdi, [rdi]
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1685:
	movsx	rcx, al
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	lea	rdi, [rdi]
	shr	rdx, 0x3a
	add	rdx, rcx
	lea	rsi, [rsi]
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	mov	al, byte ptr [rbp]
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	test	al, al
	jne	.label_1685
.label_1698:
	mov	eax, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	test	al, al
	je	.label_1692
	movdqu	xmm0, xmmword ptr [rbx]
	lea	rdi, [rdi]
	pcmpeqd	xmm1, xmm1
	lea	rsi, [rsi]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	mov	rsp, rsp
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	mov	rbp, rbp
	pxor	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1692:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1683
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rdi]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	nop	
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	and	qword ptr [rbx + 0x18], rax
.label_1683:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1691
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x70]
.label_1689:
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	mov	rsp, rsp
	shl	rcx, 6
	mov	rsp, rsp
	lea	r14, [rax + rcx + 8]
	mov	rsp, rsp
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	cmp	dword ptr [r12 + 0xb4], 2
	lea	rsi, [rsi]
	jl	.label_1693
	lea	rsi, [rsi]
	or	byte ptr [r12 + 0xb0], 2
	mov	rsp, rsp
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	lea	rsi, [rsi]
	je	.label_1697
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 0x70]
.label_1696:
	lea	rdi, [rdi]
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	lea	rdi, [rdi]
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12 + 0x80]
	nop	
	cmp	eax, 0xf
	je	.label_1699
	mov	rcx, qword ptr [r12 + 0x70]
.label_1686:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	nop	
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	lea	rsi, [rsi]
	shl	rsi, 6
	nop	
	lea	rax, [rcx + rsi + 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + rsi + 8], 0
	nop	
	mov	qword ptr [rcx + rsi + 0x10], r14
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_1684
.label_1693:
	mov	rdi, qword ptr [r15]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	nop	
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_1684
.label_1700:
	mov	rsp, rsp
	mov	dword ptr [r15], 0xc
	nop	
	jmp	.label_1690
.label_1694:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_1688
.label_1695:
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 8]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
	jmp	.label_1690
.label_1691:
	lea	rsi, [rsi]
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1687
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_1689
.label_1697:
	mov	edi, 0x3c8
	call	malloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_1687
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x70], rbp
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x80], 0
	nop	
	xor	eax, eax
	jmp	.label_1696
.label_1687:
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
.label_1688:
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_1690:
	xor	eax, eax
.label_1684:
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_1699:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	mov	rbp, rbp
	xor	eax, eax
	test	rcx, rcx
	nop	
	je	.label_1684
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x80], 0
	mov	rsp, rsp
	jmp	.label_1686
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416cc0

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	lea	rsi, [rsi]
	jle	.label_1701
	mov	rcx, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	mov	rsp, rsp
	jl	.label_1706
	mov	rsp, rsp
	mov	r8, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1706
	mov	rcx, qword ptr [rsi + 0x10]
	nop	
	cmp	dword ptr [rcx + r8*4], -1
	lea	rdi, [rdi]
	je	.label_1705
.label_1706:
	test	dl, 1
	mov	rsp, rsp
	je	.label_1704
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 0x5c
	lea	rsi, [rsi]
	jne	.label_1704
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_1704
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x48], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	lea	rsi, [rsi]
	jmp	.label_1705
.label_1701:
	mov	byte ptr [rdi + 8], 2
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_1704:
	mov	rbp, rbp
	cmp	eax, 0x5b
	jne	.label_1707
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_1708
	mov	rcx, qword ptr [rsi + 8]
	nop	
	mov	al, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	jmp	.label_1711
.label_1707:
	cmp	eax, 0x5e
	nop	
	je	.label_1713
	lea	rdi, [rdi]
	cmp	eax, 0x5d
	je	.label_1703
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_1705
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	lea	rsi, [rsi]
	ret	
.label_1705:
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_1708:
	mov	rbp, rbp
	xor	eax, eax
.label_1711:
	mov	byte ptr [rdi], al
	nop	
	movzx	eax, al
	nop	
	cmp	eax, 0x3d
	je	.label_1712
	cmp	eax, 0x3a
	je	.label_1702
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_1709
	mov	byte ptr [rdi + 8], 0x1a
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_1703:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1702:
	mov	rsp, rsp
	test	dl, 4
	mov	rsp, rsp
	jne	.label_1710
.label_1709:
	nop	
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1713:
	lea	rdi, [rdi]
	mov	byte ptr [rdi + 8], 0x19
	mov	rsp, rsp
	mov	eax, 1
	ret	
.label_1712:
	mov	byte ptr [rdi + 8], 0x1c
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_1710:
	mov	byte ptr [rdi + 8], 0x1e
	lea	rdi, [rdi]
	mov	eax, 2
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416e40

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x18
	mov	r15, rdx
	nop	
	mov	r14, rdi
	mov	rdx, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1720
	lea	rax, [rdx + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	nop	
	jge	.label_1720
	nop	
	mov	r10, qword ptr [rsi + 0x10]
	lea	r11, [r10 + rdx*4]
	mov	edi, 1
	nop	
.label_1731:
	cmp	dword ptr [r11 + rdi*4], -1
	jne	.label_1714
	lea	rsi, [rsi]
	lea	rax, [rdx + rdi + 1]
	inc	rdi
	cmp	rax, rbx
	lea	rdi, [rdi]
	jl	.label_1731
.label_1714:
	cmp	edi, 2
	lea	rsi, [rsi]
	jl	.label_1720
	mov	dword ptr [r14], 1
	mov	rbp, rbp
	mov	eax, dword ptr [r10 + rdx*4]
	lea	rdi, [rdi]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	nop	
	add	rax, rdx
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1729
.label_1720:
	movsxd	rax, ecx
	add	rdx, rax
	mov	qword ptr [rsi + 0x48], rdx
	movzx	edi, byte ptr [r15 + 8]
	mov	rbp, rbp
	lea	eax, [rdi - 0x16]
	cmp	eax, 8
	ja	.label_1723
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1733]]
.label_2967:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], rdx
	mov	rsp, rsp
	jle	.label_1718
	mov	rbp, rbp
	mov	r11b, byte ptr [r15]
	xor	r12d, r12d
	jmp	.label_1715
	nop	dword ptr [rax]
.label_1726:
	inc	r12
	mov	rbp, rbp
	movzx	edi, byte ptr [r15 + 8]
.label_1715:
	lea	rsi, [rsi]
	movzx	edi, dil
	mov	rsp, rsp
	cmp	edi, 0x1e
	nop	
	jne	.label_1721
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1725
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	nop	
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1724
	nop	word ptr cs:[rax + rax]
.label_1721:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 8]
.label_1717:
	mov	bl, byte ptr [rbx + rdx]
.label_1724:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1718
	nop	
	movzx	edx, r11b
	movzx	ecx, bl
	nop	
	cmp	ecx, edx
	jne	.label_1716
	mov	rcx, qword ptr [rsi + 8]
	movzx	ecx, byte ptr [rcx + rdi]
	cmp	ecx, 0x5d
	je	.label_1719
.label_1716:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	byte ptr [rcx + r12], bl
	lea	rdi, [rdi]
	cmp	r12, 0x1e
	lea	rdi, [rdi]
	jle	.label_1726
	jmp	.label_1718
.label_1725:
	mov	rbp, rbp
	cmp	byte ptr [rsi + 0x8c], 0
	lea	rdi, [rdi]
	je	.label_1727
	nop	
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	nop	
	cmp	r8, r9
	lea	rsi, [rsi]
	je	.label_1730
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	lea	rdi, [rdi]
	je	.label_1734
.label_1730:
	mov	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1734
	nop	
	mov	edi, 1
	nop	
	cmp	dword ptr [rsi + 0x90], 1
	mov	rsp, rsp
	je	.label_1722
	lea	rdx, [r8 + 1]
	nop	
	cmp	rdx, r9
	jge	.label_1722
	lea	r10, [r8*4]
	lea	rdi, [rdi]
	add	r10, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	mov	edi, 1
.label_1732:
	lea	rdi, [rdi]
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1722
	lea	rdx, [r8 + rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	mov	rbp, rbp
	cmp	rdx, r9
	jl	.label_1732
.label_1722:
	movsxd	rdi, edi
	mov	rsp, rsp
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	jmp	.label_1724
.label_1727:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	mov	rbx, qword ptr [rsi]
	jmp	.label_1717
.label_1734:
	lea	rdi, [r8 + 1]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x48], rdi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1724
.label_1719:
	mov	rsp, rsp
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	movsxd	rax, r12d
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rsp, rsp
	movzx	ecx, byte ptr [r15 + 8]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, 0x1e
	je	.label_1728
	cmp	ecx, 0x1c
	je	.label_1735
	cmp	ecx, 0x1a
	mov	rbp, rbp
	jne	.label_1718
	mov	dword ptr [r14], 3
	nop	
	jmp	.label_1718
.label_1728:
	mov	dword ptr [r14], 4
	lea	rdi, [rdi]
	jmp	.label_1718
.label_1735:
	mov	dword ptr [r14], 2
	lea	rdi, [rdi]
	jmp	.label_1718
.label_2966:
	test	r9b, r9b
	lea	rsi, [rsi]
	jne	.label_1723
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rdx, r8
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_1718
.label_1723:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1729:
	xor	eax, eax
.label_1718:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417170

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r12, r8
	mov	r13, rcx
	nop	
	mov	rbx, rdx
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rsp, rsp
	test	r9d, 0x400000
	je	.label_1770
	nop	
	mov	esi, OFFSET FLAT:.str.7_1
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	nop	
	je	.label_1748
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1770
.label_1748:
	nop	
	mov	r12d, OFFSET FLAT:.str.9_1
.label_1770:
	nop	
	mov	rbp, qword ptr [r13]
	nop	
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1790
.label_1785:
	lea	rdi, [rdi]
	mov	rdi, r12
	call	wctype
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_8
	nop	
	mov	rdi, r12
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_1745
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	strcmp
	test	eax, eax
	nop	
	je	.label_1755
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1764
	mov	esi, OFFSET FLAT:.str.3_2
	nop	
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1780
	mov	esi, OFFSET FLAT:.str.9_1
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	je	.label_1759
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.11_1
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_1783
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1776
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1793
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13_1
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1799
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1743
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_1779
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.16_1
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	nop	
	mov	eax, 4
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_1746
	lea	rdi, [rdi]
	call	__ctype_b_loc
	xor	edx, edx
	mov	rbp, rbp
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1739
.label_1784:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_1798
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1798:
	inc	rdx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	jne	.label_1784
	mov	rsp, rsp
	jmp	.label_1746
.label_1745:
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1763
	nop	
.label_1740:
	lea	rdi, [rdi]
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1758
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	shl	rax, cl
	mov	rsp, rsp
	mov	rcx, rdx
	nop	
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1758:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdx, 0x100
	jne	.label_1740
	jmp	.label_1746
	nop	dword ptr [rax]
.label_1763:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1752
	mov	cl, byte ptr [r14 + rdx]
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rsi, [rsi]
	shl	rax, cl
	mov	rbp, rbp
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1752:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rsi, [rsi]
	jne	.label_1763
	jmp	.label_1746
.label_1755:
	call	__ctype_b_loc
	mov	rsp, rsp
	xor	edx, edx
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_1738
	nop	word ptr cs:[rax + rax]
.label_1787:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1777
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	nop	
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	nop	
	or	qword ptr [r15 + rcx*8], rax
.label_1777:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	jne	.label_1787
	jmp	.label_1746
	nop	
.label_1738:
	test	byte ptr [rsi + rdx*2], 2
	lea	rsi, [rsi]
	je	.label_1794
	lea	rsi, [rsi]
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	nop	
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	lea	rsi, [rsi]
	or	qword ptr [r15 + rcx*8], rax
.label_1794:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdx, 0x100
	nop	
	jne	.label_1738
	nop	
	jmp	.label_1746
.label_1764:
	nop	
	call	__ctype_b_loc
	xor	edx, edx
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	jne	.label_1749
	nop	dword ptr [rax + rax]
.label_1771:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1757
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	nop	
	sar	rcx, 0x3f
	mov	rsp, rsp
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rdx
	mov	rbp, rbp
	sar	rcx, 6
	lea	rdi, [rdi]
	or	qword ptr [r15 + rcx*8], rax
.label_1757:
	inc	rdx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	lea	rsi, [rsi]
	jne	.label_1771
	mov	rsp, rsp
	jmp	.label_1746
	nop	word ptr cs:[rax + rax]
.label_1749:
	lea	rsi, [rsi]
	test	byte ptr [rsi + rdx*2 + 1], 2
	mov	rsp, rsp
	je	.label_1781
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	mov	rbp, rbp
	shl	rax, cl
	shr	cl, 6
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1781:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1749
	mov	rbp, rbp
	jmp	.label_1746
.label_1780:
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1769
	nop	
.label_1753:
	mov	rsp, rsp
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1736
	nop	
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	mov	rcx, rdx
	mov	rbp, rbp
	sar	rcx, 0x3f
	lea	rdi, [rdi]
	shr	rcx, 0x3a
	nop	
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1736:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1753
	nop	
	jmp	.label_1746
.label_1769:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1762
	mov	cl, byte ptr [r14 + rdx]
	nop	
	mov	eax, 1
	shl	rax, cl
	nop	
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1762:
	lea	rsi, [rsi]
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	rdx, 0x100
	jne	.label_1769
	jmp	.label_1746
.label_1790:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1746
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	mov	rsp, rsp
	jmp	.label_1785
.label_1759:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	jne	.label_1767
	nop	word ptr cs:[rax + rax]
.label_1750:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 4
	lea	rdi, [rdi]
	je	.label_1797
	nop	
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	mov	rbp, rbp
	shl	rax, cl
	mov	rbp, rbp
	mov	rcx, rdx
	sar	rcx, 0x3f
	mov	rbp, rbp
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1797:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1750
	jmp	.label_1746
.label_1767:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1760
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	mov	rbp, rbp
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1760:
	nop	
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1767
	jmp	.label_1746
.label_1783:
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1741
	nop	dword ptr [rax]
.label_1791:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1775
	mov	rbp, rbp
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	lea	rdi, [rdi]
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	nop	
	add	rcx, rdx
	lea	rdi, [rdi]
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1775:
	inc	rdx
	xor	eax, eax
	nop	
	cmp	rdx, 0x100
	jne	.label_1791
	mov	rbp, rbp
	jmp	.label_1746
.label_1741:
	test	byte ptr [rsi + rdx*2 + 1], 8
	nop	
	je	.label_1796
	mov	rbp, rbp
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	nop	
	shr	cl, 6
	nop	
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1796:
	lea	rsi, [rsi]
	inc	rdx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1741
	mov	rbp, rbp
	jmp	.label_1746
.label_1776:
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	jne	.label_1756
	nop	dword ptr [rax + rax]
.label_1774:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1795
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rdx
	sar	rcx, 6
	nop	
	or	qword ptr [r15 + rcx*8], rax
.label_1795:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	jne	.label_1774
	jmp	.label_1746
.label_1756:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1782
	mov	rsp, rsp
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	lea	rsi, [rsi]
	shr	cl, 6
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1782:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1756
	nop	
	jmp	.label_1746
.label_1793:
	nop	
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	jne	.label_1744
	nop	
.label_1789:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1778
	lea	rsi, [rsi]
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rbp, rbp
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	nop	
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1778:
	inc	rdx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rdx, 0x100
	nop	
	jne	.label_1789
	jmp	.label_1746
.label_1744:
	test	byte ptr [rsi + rdx*2 + 1], 1
	lea	rdi, [rdi]
	je	.label_1754
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1754:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1744
	jmp	.label_1746
.label_1799:
	nop	
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	jne	.label_1737
	nop	word ptr cs:[rax + rax]
.label_1788:
	test	byte ptr [rsi + rdx*2], 1
	lea	rdi, [rdi]
	je	.label_1786
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rbp, rbp
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1786:
	mov	rsp, rsp
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1788
	jmp	.label_1746
.label_1737:
	test	byte ptr [rsi + rdx*2], 1
	lea	rsi, [rsi]
	je	.label_1792
	mov	cl, byte ptr [r14 + rdx]
	lea	rsi, [rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	rbp, rbp
	or	qword ptr [r15 + rcx*8], rax
.label_1792:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1737
	jmp	.label_1746
.label_1743:
	nop	
	call	__ctype_b_loc
	lea	rdi, [rdi]
	xor	edx, edx
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_1747
.label_1766:
	mov	rbp, rbp
	cmp	word ptr [rsi + rdx*2], 0
	nop	
	jns	.label_1751
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	lea	rsi, [rsi]
	shr	rcx, 0x3a
	add	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 6
	lea	rsi, [rsi]
	or	qword ptr [r15 + rcx*8], rax
.label_1751:
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1766
	nop	
	jmp	.label_1746
.label_1747:
	cmp	word ptr [rsi + rdx*2], 0
	mov	rbp, rbp
	jns	.label_1773
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	lea	rsi, [rsi]
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1773:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	nop	
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1747
	jmp	.label_1746
.label_1739:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_1765
	mov	cl, byte ptr [r14 + rdx]
	mov	rbp, rbp
	mov	eax, 1
	nop	
	shl	rax, cl
	mov	rsp, rsp
	shr	cl, 6
	lea	rsi, [rsi]
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1765:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1739
	mov	rsp, rsp
	jmp	.label_1746
.label_1779:
	call	__ctype_b_loc
	xor	edx, edx
	lea	rsi, [rsi]
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_1761
.label_1772:
	test	byte ptr [rsi + rdx*2], 4
	nop	
	je	.label_1742
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	lea	rdi, [rdi]
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1742:
	nop	
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1772
.label_1746:
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_1761:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1768
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	nop	
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1768:
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	nop	
	jne	.label_1761
	jmp	.label_1746
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417bb0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	nop	
	cmp	eax, 0x11
	mov	rbp, rbp
	je	.label_1800
	cmp	eax, 4
	jne	.label_1801
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_1801
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	mov	rsp, rsp
	cdqe	
	lea	rsi, [rsi]
	or	qword ptr [rdi + 0xa0], rax
	nop	
	xor	eax, eax
	ret	
.label_1800:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1801
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_1801
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_1802
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rsi
.label_1802:
	nop	
	mov	rax, qword ptr [rsi + 0x28]
	nop	
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rsp, rsp
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rsp, rsp
	cmp	rcx, 0x3f
	mov	rbp, rbp
	jg	.label_1801
	mov	rsp, rsp
	mov	rax, -2
	rol	rax, cl
	mov	rbp, rbp
	and	qword ptr [rdi + 0xa0], rax
.label_1801:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417c80

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	lea	rdi, [rdi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsi + 0x30]
	mov	rbp, rbp
	lea	ebx, [rdx - 2]
	cmp	ebx, 0xe
	ja	.label_1803
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_1813]]
.label_2970:
	mov	rsp, rsp
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1811]]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	lea	rsi, [rsi]
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1812
	mov	qword ptr [rax], r15
	mov	rsp, rsp
	jmp	.label_1805
.label_2971:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rsi, [rsi]
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	nop	
	js	.label_1808
	nop	
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	lea	rsi, [rsi]
	js	.label_1809
	lea	rdi, [rdi]
	mov	r12, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	lea	rbx, [rcx + rcx*2]
	mov	rbp, rbp
	mov	qword ptr [r12 + rbx*8], 2
	mov	rsp, rsp
	mov	edi, 0x10
	call	malloc
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1806
	lea	rax, [r12 + rbx*8 + 8]
	mov	rbp, rbp
	cmp	r14, r15
	mov	rsp, rsp
	jne	.label_1807
	mov	qword ptr [rax], 1
	mov	rsp, rsp
	mov	qword ptr [rcx], r14
	lea	rsi, [rsi]
	jmp	.label_1805
.label_2968:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	nop	
	je	.label_1806
	nop	
	mov	edi, OFFSET FLAT:.str.17_2
	nop	
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2969:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x30]
	lea	rsi, [rsi]
	cmp	eax, 4
	mov	rbp, rbp
	jne	.label_1805
	nop	
	mov	r14, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1811]]
	mov	rsp, rsp
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_1814
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	jmp	.label_1805
.label_1803:
	mov	rbp, rbp
	test	dl, 8
	jne	.label_1810
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	jmp	.label_1805
.label_1807:
	mov	qword ptr [rax], 2
	jge	.label_1815
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	lea	rdi, [rdi]
	jmp	.label_1805
.label_1815:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1805:
	xor	eax, eax
.label_1806:
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
.label_1812:
	lea	rax, [r14 + rbx*8]
.label_1804:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1806
.label_1814:
	mov	rbp, rbp
	lea	rax, [r14 + r15*8]
	jmp	.label_1804
.label_1808:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.18_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1809:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.19_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rbp, rbp
	mov	edx, 0x5b0
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rsp, rsp
	call	__assert_fail
.label_1810:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rbp, rbp
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417f30

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbp, rdi
	nop	
	mov	rbx, qword ptr [rsi]
	mov	rsp, rsp
	mov	r13, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	r13, r13
	mov	rsp, rsp
	je	.label_1825
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	lea	rdi, [rdi]
	je	.label_1825
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rsi, [rsi]
	cmp	rax, 0x3f
	mov	rsp, rsp
	jg	.label_1816
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_1816
.label_1825:
	mov	r12d, dword ptr [rbx + 0x80]
	nop	
	cmp	r12d, 0xf
	mov	rsp, rsp
	je	.label_1821
	mov	rax, qword ptr [rbx + 0x70]
.label_1828:
	lea	rdi, [rdi]
	lea	ecx, [r12 + 1]
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x80], ecx
	mov	rsp, rsp
	movsxd	rcx, r12d
	mov	rbp, rbp
	shl	rcx, 6
	mov	rbp, rbp
	lea	r12, [rax + rcx + 8]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	mov	rbp, rbp
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1823:
	mov	qword ptr [rsp], rbp
	mov	rbp, rbp
	mov	r15d, dword ptr [rbx + 0x80]
	mov	rbp, rbp
	cmp	r15d, 0xf
	je	.label_1827
	mov	rax, qword ptr [rbx + 0x70]
.label_1826:
	lea	rsi, [rsi]
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	mov	rsp, rsp
	movsxd	rcx, r15d
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 9
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1822:
	test	r13, r13
	lea	rsi, [rsi]
	mov	rbp, r15
	nop	
	je	.label_1820
	mov	rbp, rbp
	mov	ebp, dword ptr [rbx + 0x80]
	nop	
	cmp	ebp, 0xf
	mov	rbp, rbp
	je	.label_1830
	mov	rax, qword ptr [rbx + 0x70]
.label_1829:
	nop	
	lea	ecx, [rbp + 1]
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	qword ptr [r13], rbp
	lea	rdi, [rdi]
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_1820
	mov	qword ptr [r15], rbp
.label_1820:
	nop	
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1817
	mov	rax, qword ptr [rbx + 0x70]
.label_1824:
	lea	rdi, [rdi]
	lea	ecx, [r13 + 1]
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x80], ecx
	mov	rbp, rbp
	movsxd	rcx, r13d
	mov	rsp, rsp
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	nop	
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	nop	
	test	r12, r12
	je	.label_1831
	lea	rsi, [rsi]
	mov	qword ptr [r12], r13
.label_1831:
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1818
	nop	
	mov	qword ptr [rbp], r13
.label_1818:
	test	r15, r15
	je	.label_1819
	mov	rbp, rbp
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_1819
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_1819
	test	r13, r13
	je	.label_1819
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x28], rax
	lea	rdi, [rdi]
	mov	eax, 0x80000
	mov	rbp, rbp
	and	eax, dword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	mov	ecx, 0xfff7ffff
	mov	rsp, rsp
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	mov	rbp, rbp
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r12 + 0x30]
	or	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x30], ecx
.label_1816:
	mov	rax, r13
	nop	
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_1821:
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	rax, rax
	nop	
	je	.label_1823
	mov	rcx, qword ptr [rbx + 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	nop	
	jmp	.label_1828
.label_1827:
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	xor	r15d, r15d
	test	rax, rax
	je	.label_1822
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1826
.label_1817:
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	xor	r13d, r13d
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1818
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	mov	rbp, rbp
	jmp	.label_1824
.label_1819:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_1816
.label_1830:
	mov	edi, 0x3c8
	call	malloc
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rbp, rbp
	test	rax, rax
	je	.label_1820
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1829
	nop	
	.section	.text
	.align	32
	#Procedure 0x418310

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	cmp	rax, r13
	jae	.label_1837
.label_1836:
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx]
	mov	rsp, rsp
	shl	rax, 4
	nop	
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	mov	rsp, rsp
	jne	.label_1835
	lea	rdi, [rdi]
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	lea	rsi, [rsi]
	jg	.label_1833
.label_1835:
	lea	rdi, [rdi]
	cmp	eax, 6
	lea	rdi, [rdi]
	sete	cl
.label_1833:
	nop	
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	mov	rbp, rbp
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x28]
	nop	
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x30]
	nop	
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	rsp, rsp
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r15, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	lea	rax, [r15 + 1]
	nop	
	mov	qword ptr [rbx + 0x10], rax
.label_1834:
	mov	rax, r15
	mov	rsp, rsp
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1837:
	lea	rbp, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	lea	rdi, [rdi]
	ja	.label_1834
	nop	
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rsi, r13
	lea	rdi, [rdi]
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1834
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	mov	qword ptr [rbx], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	rdi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	lea	rbp, [r13 + r13*2]
	mov	rbp, rbp
	mov	rsi, rbp
	nop	
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rsp, rsp
	call	realloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1832
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_1832
	test	r13, r13
	mov	rbp, rbp
	je	.label_1832
	nop	
	test	rbp, rbp
	je	.label_1832
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	nop	
	mov	qword ptr [rbx + 0x28], r13
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	jmp	.label_1836
.label_1832:
	lea	rsi, [rsi]
	mov	rbx, rax
	call	free
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rbp, rbp
	call	free
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_1834
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4185a0

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0xc], ecx
	mov	r12, rdx
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], 0
	lea	rdi, [rdi]
	lea	rdi, [rax*8 + 8]
	mov	rbp, rbp
	call	malloc
	mov	rcx, rax
	nop	
	mov	qword ptr [rsp + 0x40], rcx
	nop	
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1838
	mov	qword ptr [rsp + 0x28], rbx
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	mov	qword ptr [rax + r14*8 + 8], -1
	nop	
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	rsp, rsp
	mov	r8d, eax
	mov	rbp, rbp
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1840
	lea	rsi, [rsi]
	lea	rdx, [r15 + r14*8 + 8]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	je	.label_1840
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	mov	rsp, rsp
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1840
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_1838
	mov	rax, qword ptr [rbp]
	mov	rbp, rbp
	mov	eax, dword ptr [rax + rbx + 8]
.label_1840:
	mov	rbx, r12
	lea	rdi, [rdi]
	test	al, 8
	jne	.label_1847
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_1846
.label_1847:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + r14*8 + 8], 0
	nop	
	jle	.label_1839
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1842:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	lea	r12, [rdx + rdx*2]
	nop	
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_1848
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_1843
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	lea	rdi, [rsp + 0x10]
	mov	rsp, rsp
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1849
	jmp	.label_1838
.label_1843:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1849:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1838
	nop	
	mov	rax, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + r12*8 + 8], 0
	mov	rsp, rsp
	jne	.label_1844
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	free
.label_1848:
	mov	r15b, 1
.label_1844:
	mov	rbp, rbp
	inc	r13
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	mov	rbp, rbp
	jl	.label_1842
	jmp	.label_1846
.label_1839:
	mov	rbp, rbp
	xor	r15d, r15d
.label_1846:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	lea	rsi, [rsi]
	mov	eax, 0xc
	je	.label_1838
	lea	rsi, [rsi]
	test	r15b, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	je	.label_1841
	mov	ecx, dword ptr [rsp + 0xc]
	test	cl, cl
	jne	.label_1841
	nop	
	mov	qword ptr [rax + r14*8 + 8], 0
	nop	
	jmp	.label_1845
.label_1841:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsp + 0x30]
	mov	rsp, rsp
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1845:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	lea	rsi, [rsi]
	xor	eax, eax
.label_1838:
	add	rsp, 0x48
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418850

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13d, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	rbx, rdx
	mov	r12, rsi
	nop	
	mov	r14, rdi
.label_1852:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x24], r13d
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], eax
	lea	rsi, [rsi]
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_1854:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14]
	mov	rbp, rbp
	mov	rdx, r15
	shl	rdx, 4
	movzx	ecx, byte ptr [rax + rdx + 8]
	cmp	ecx, 4
	jne	.label_1860
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rdx, qword ptr [r14 + 0x28]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r12, [rbx + rbx*2]
	mov	rsp, rsp
	mov	qword ptr [rdx + r12*8 + 8], 0
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rbp, rbp
	mov	rdi, r14
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	call	re_dfa_add_node
	nop	
	mov	rbx, rax
	lea	rsi, [rsi]
	cmp	rbx, -1
	je	.label_1857
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	mov	rbp, rbp
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	mov	rbp, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	rbp, rbp
	mov	esi, 0xfffc00ff
	nop	
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	nop	
	mov	dword ptr [rax + rcx + 8], edx
	mov	rsp, rsp
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	rbp, rbp
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r13
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x18]
	nop	
	mov	rcx, qword ptr [rax + r15*8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + rdx*8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x24]
	jne	.label_1854
	jmp	.label_1850
	nop	dword ptr [rax]
.label_1860:
	nop	
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rbp, [r15 + r15*2]
	mov	rsi, qword ptr [rcx + rbp*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_1863
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rbp*8 + 0x10]
	mov	r12, qword ptr [rdi]
	lea	rdi, [rdi]
	lea	rdi, [rbx + rbx*2]
	mov	qword ptr [rcx + rdi*8 + 8], 0
	nop	
	cmp	rsi, 1
	je	.label_1865
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	mov	r15, rdi
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	lea	rsi, [rsi]
	jle	.label_1855
	lea	rdi, [rdi]
	mov	rdx, rsi
	shl	rdx, 4
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rdx + 8]
	lea	rdi, [rdi]
	mov	edx, ebp
	mov	rsp, rsp
	and	edx, 0x40000
	je	.label_1855
	mov	rdx, qword ptr [r14 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	
.label_1853:
	cmp	qword ptr [rdx + rsi*8], r12
	mov	rsp, rsp
	jne	.label_1862
	mov	rbp, rbp
	shr	ebp, 8
	nop	
	and	ebp, 0x3ff
	cmp	ebp, r13d
	lea	rsi, [rsi]
	je	.label_1864
.label_1862:
	dec	rsi
	test	rsi, rsi
	jle	.label_1855
	mov	rbp, rbp
	mov	ebp, dword ptr [rdi]
	mov	rbp, rbp
	mov	ebx, ebp
	mov	rsp, rsp
	and	ebx, 0x40000
	mov	rsp, rsp
	add	rdi, -0x10
	test	ebx, ebx
	jne	.label_1853
	mov	rbp, rbp
	jmp	.label_1855
.label_1864:
	cmp	rsi, -1
	je	.label_1855
	mov	rbp, r15
	lea	rdi, [rcx + rbp*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x1c], 0xc
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_1861
	mov	rbp, rbp
	jmp	.label_1850
	nop	word ptr [rax + rax]
.label_1855:
	nop	
	mov	rbp, r12
	mov	rsp, rsp
	shl	rbp, 4
	nop	
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1851
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0xc
	mov	rax, qword ptr [r14]
	nop	
	mov	rcx, rbx
	nop	
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	mov	rsp, rsp
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	lea	rsi, [rsi]
	mov	esi, 0x3ff00
	and	edx, esi
	mov	rsp, rsp
	or	dword ptr [rax + rcx + 8], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	nop	
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r12
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rax + rbp*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	je	.label_1850
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x1c], eax
	nop	
	test	eax, eax
	nop	
	jne	.label_1850
.label_1861:
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	mov	rsp, rsp
	shl	rbx, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1859
	mov	dword ptr [rsp + 0x1c], 0xc
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rbp, rbp
	mov	edx, dword ptr [rdi + rcx + 8]
	mov	esi, 0xfffc00ff
	nop	
	and	edx, esi
	mov	rbp, rbp
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rdi + rcx + 8], edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	edx, esi
	mov	rsp, rsp
	or	dword ptr [rdi + rcx + 8], edx
	mov	rsp, rsp
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], r15
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x28]
	nop	
	lea	rdi, [rcx + rbp*8]
	mov	rsi, rax
	mov	rbx, rax
	lea	rsi, [rsi]
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_1854
	mov	rsp, rsp
	jmp	.label_1850
.label_1865:
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_1856
	mov	rsp, rsp
	cmp	rbx, r15
	jne	.label_1858
.label_1856:
	nop	
	mov	r15, rdi
	lea	rsi, [rsi]
	lea	rcx, [rax + rdx + 8]
	mov	rbp, rbp
	mov	ebp, dword ptr [rcx]
	mov	rbx, r12
	shl	rbx, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rsp, rsp
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x1c], 0xc
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_1850
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	nop	
	mov	rbp, qword ptr [r14]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	shl	rcx, 4
	nop	
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	rsp, rsp
	mov	esi, dword ptr [rbp + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	rbp, rbp
	mov	dword ptr [rbp + rcx + 8], esi
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	nop	
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rsp, rsp
	mov	rdx, qword ptr [r14]
	mov	rsp, rsp
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	lea	rdi, [rcx + r15*8]
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_1852
	jmp	.label_1850
.label_1857:
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	jmp	.label_1850
.label_1851:
	mov	dword ptr [rsp + 0x1c], 0xc
	jmp	.label_1850
.label_1859:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0xc
	lea	rsi, [rsi]
	jmp	.label_1850
.label_1863:
	mov	rax, qword ptr [r14 + 0x18]
	nop	
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_1866:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0
.label_1850:
	mov	eax, dword ptr [rsp + 0x1c]
	mov	rsp, rsp
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1858:
	lea	rdi, [rcx + rdi*8]
	mov	rsi, r12
	nop	
	call	re_node_set_insert
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_1850
	nop	
	jmp	.label_1866
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418e20

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_1875
	nop	
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1875
	mov	rsp, rsp
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	nop	
	cmp	rbx, rdx
	lea	rsi, [rsi]
	jge	.label_1872
	add	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	mov	rsp, rsp
	shl	rsi, 4
	lea	rdi, [rdi]
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	je	.label_1868
	nop	
	add	rbx, rbx
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x10], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r14], rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
.label_1872:
	test	rcx, rcx
	je	.label_1878
	nop	
	lea	rbx, [rcx + rax*2]
	lea	rdi, [rdi]
	dec	rax
	dec	rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	or	rdx, rcx
	nop	
	js	.label_1880
	mov	rbp, rbp
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	nop	
	jmp	.label_1874
.label_1867:
	dec	rax
.label_1873:
	dec	rcx
	jmp	.label_1876
	nop	word ptr cs:[rax + rax]
.label_1874:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + rax*8]
	mov	rbp, rbp
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1867
	jge	.label_1873
	nop	
	dec	rax
	mov	rsp, rsp
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	lea	rsi, [rsi]
	dec	rbx
.label_1876:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1874
.label_1880:
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	js	.label_1871
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	mov	rbp, rbp
	lea	rdi, [rbx*8]
	lea	rdi, [rdi]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1871:
	mov	r10, qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r10 + rax*2 - 1]
	mov	rdx, rcx
	sub	rdx, rbx
	lea	rdi, [rdi]
	inc	rdx
	lea	rsi, [rsi]
	je	.label_1875
	lea	rdi, [rdi]
	lea	rax, [rdx + r10]
	mov	qword ptr [r14 + 8], rax
	lea	r9, [r10 - 1]
.label_1870:
	lea	rdi, [rdi]
	lea	r8, [r10 - 1]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	lea	r11, [rdi + r9*8]
.label_1869:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rsi, qword ptr [rdi + r10*8 - 8]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jle	.label_1877
	nop	
	dec	rcx
	nop	
	mov	qword ptr [r11 + rdx*8], rax
	dec	rdx
	jne	.label_1869
	nop	
	jmp	.label_1875
	nop	word ptr cs:[rax + rax]
.label_1877:
	lea	rax, [rdx + r8]
	mov	qword ptr [rdi + rax*8], rsi
	dec	r9
	mov	rbp, rbp
	cmp	r10, 1
	nop	
	mov	r10, r8
	jg	.label_1870
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	mov	rbp, rbp
	jmp	.label_1879
.label_1878:
	mov	qword ptr [r14 + 8], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 8]
	nop	
	mov	rsi, qword ptr [r15 + 0x10]
.label_1879:
	shl	rdx, 3
	lea	rsi, [rsi]
	call	memcpy
.label_1875:
	xor	eax, eax
.label_1868:
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419040

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
	je	.label_1881
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_1888
	cmp	rsi, rcx
	lea	rdi, [rdi]
	jne	.label_1891
	lea	rax, [rsi + rsi]
	nop	
	mov	qword ptr [r14], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1884
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1886
.label_1881:
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1811]]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	nop	
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1893
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	jmp	.label_1885
.label_1888:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	mov	rbp, rbp
	jmp	.label_1887
.label_1891:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x10]
.label_1886:
	lea	rsi, [rsi]
	cmp	qword ptr [rax], rbx
	mov	rsp, rsp
	jle	.label_1892
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_1889
	nop	word ptr [rax + rax]
.label_1882:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rdi, [rdi]
	lea	rcx, [rcx - 1]
	jg	.label_1882
	lea	rdi, [rdi]
	jmp	.label_1889
.label_1892:
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	rsp, rsp
	jmp	.label_1894
	nop	dword ptr [rax + rax]
.label_1883:
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1894:
	cmp	rdx, rbx
	mov	rsp, rsp
	jg	.label_1883
.label_1889:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
.label_1887:
	inc	qword ptr [r14 + 8]
.label_1885:
	lea	rdi, [rdi]
	mov	al, 1
.label_1890:
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	ret	
.label_1893:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1890
.label_1884:
	xor	eax, eax
	jmp	.label_1890
	nop	
	.section	.text
	.align	32
	#Procedure 0x419180

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	r13d, ecx
	mov	r8, qword ptr [rdx + 8]
	mov	rsp, rsp
	test	r8, r8
	lea	rdi, [rdi]
	je	.label_1895
	nop	
	mov	qword ptr [rsp], rdi
	mov	r14d, r13d
	add	r14, r8
	lea	rdi, [rdi]
	test	r8, r8
	mov	rsp, rsp
	jle	.label_1898
	mov	rcx, qword ptr [rdx + 0x10]
	xor	ebx, ebx
	cmp	r8, 4
	jb	.label_1919
	lea	rsi, [rsi]
	mov	rbx, r8
	and	rbx, 0xfffffffffffffffc
	nop	
	je	.label_1925
	nop	
	movq	xmm0, r14
	nop	
	lea	r9, [r8 - 4]
	lea	rsi, [rsi]
	mov	eax, r9d
	shr	eax, 2
	nop	
	inc	eax
	xor	edi, edi
	test	al, 3
	mov	rsp, rsp
	je	.label_1929
	mov	rsp, rsp
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1932:
	nop	
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	lea	rdi, [rdi]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	lea	rsi, [rsi]
	add	rdi, 4
	inc	rbp
	jne	.label_1932
	jmp	.label_1922
.label_1895:
	mov	dword ptr [rdi], 0
	jmp	.label_1923
.label_1925:
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_1919
.label_1929:
	pxor	xmm1, xmm1
.label_1922:
	mov	rsp, rsp
	cmp	r9, 0xc
	jb	.label_1931
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	lea	rsi, [rsi]
	sub	rax, rdi
	mov	rsp, rsp
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr cs:[rax + rax]
.label_1907:
	nop	
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	mov	rsp, rsp
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	mov	rsp, rsp
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	mov	rsp, rsp
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [rdi]
	mov	rsp, rsp
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x80
	add	rax, -0x10
	jne	.label_1907
.label_1931:
	paddq	xmm1, xmm0
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	lea	rsi, [rsi]
	paddq	xmm0, xmm1
	mov	rbp, rbp
	movq	r14, xmm0
	cmp	r8, rbx
	je	.label_1898
.label_1919:
	mov	rax, r8
	sub	rax, rbx
	lea	rcx, [rcx + rbx*8]
	nop	
.label_1908:
	add	r14, qword ptr [rcx]
	add	rcx, 8
	nop	
	dec	rax
	lea	rdi, [rdi]
	jne	.label_1908
.label_1898:
	mov	rax, qword ptr [rsi + 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r14
	lea	rcx, [rcx + rcx*2]
	mov	r10, qword ptr [rax + rcx*8]
	test	r10, r10
	lea	rsi, [rsi]
	jle	.label_1916
	lea	rsi, [rsi]
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	mov	rsp, rsp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1930:
	nop	
	mov	r15, qword ptr [r9 + rbx*8]
	cmp	qword ptr [r15], r14
	lea	rdi, [rdi]
	jne	.label_1896
	movzx	eax, byte ptr [r15 + 0x68]
	nop	
	and	eax, 0xf
	nop	
	cmp	eax, r13d
	lea	rsi, [rsi]
	jne	.label_1896
	test	rdx, rdx
	je	.label_1896
	mov	rdi, qword ptr [r15 + 0x50]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_1896
	nop	
	cmp	qword ptr [rdi + 8], r8
	mov	rsp, rsp
	jne	.label_1896
	lea	rsi, [rsi]
	mov	rax, r8
.label_1918:
	test	rax, rax
	jle	.label_1902
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x10]
	nop	
	mov	rbp, qword ptr [rcx + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_1918
	nop	dword ptr [rax + rax]
.label_1896:
	nop	
	inc	rbx
	nop	
	cmp	rbx, r10
	lea	rdi, [rdi]
	jl	.label_1930
.label_1916:
	mov	rsp, rsp
	mov	rbx, rdx
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	rsp, rsp
	mov	r15, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r15
	lea	rdi, [rdi]
	test	r15, r15
	mov	rbp, rbp
	je	.label_1905
	nop	
	mov	r10, r15
	add	r10, 8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r10
	mov	r9, rbx
	nop	
	mov	qword ptr [rsp + 0x28], r9
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r9 + 8]
	mov	qword ptr [r15 + 0x10], rdi
	mov	rbx, qword ptr [r9 + 8]
	test	rbx, rbx
	jle	.label_1914
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r10
	mov	rbp, r15
	lea	rsi, [rsi]
	mov	r15, r9
	mov	qword ptr [rbp + 8], rdi
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp + 0x18], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1897
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	mov	r9, r15
	mov	rdi, r12
	mov	rbp, rbp
	mov	r15, rbp
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x18]
	jmp	.label_1913
.label_1914:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r10], xmm0
	mov	qword ptr [r10 + 0x10], 0
	lea	rdi, [rdi]
	mov	rdi, r12
.label_1913:
	mov	rsp, rsp
	mov	al, byte ptr [r15 + 0x68]
	mov	rsp, rsp
	mov	cl, r13b
	and	cl, 0xf
	and	al, 0xf0
	lea	rdi, [rdi]
	or	al, cl
	mov	rsp, rsp
	mov	byte ptr [r15 + 0x68], al
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x50], r10
	cmp	qword ptr [r9 + 8], 0
	jle	.label_1926
	mov	rsp, rsp
	mov	ebp, r13d
	lea	rdi, [rdi]
	and	ebp, 1
	lea	rsi, [rsi]
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 0x34], eax
	lea	rdi, [rdi]
	and	r13d, 4
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], r13d
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	r8d, r8d
	nop	
.label_1910:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	nop	
	mov	esi, dword ptr [rax + rcx + 8]
	lea	rsi, [rsi]
	movzx	edx, sil
	mov	r13d, esi
	shr	r13d, 8
	mov	ecx, r13d
	lea	rsi, [rsi]
	and	ecx, 0x3ff
	lea	rdi, [rdi]
	cmp	edx, 1
	jne	.label_1924
	mov	rbp, rbp
	test	ecx, ecx
	nop	
	je	.label_1900
.label_1924:
	shr	esi, 0x14
	mov	bl, byte ptr [r15 + 0x68]
	mov	al, bl
	mov	rbp, rbp
	shr	al, 5
	lea	rsi, [rsi]
	movzx	eax, al
	lea	rsi, [rsi]
	or	eax, esi
	lea	rsi, [rsi]
	shl	al, 5
	nop	
	and	al, 0x20
	mov	rsp, rsp
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r15 + 0x68], bl
	cmp	edx, 4
	je	.label_1901
	mov	rbp, rbp
	cmp	edx, 2
	lea	rsi, [rsi]
	jne	.label_1915
	or	bl, 0x10
	mov	rbp, rbp
	jmp	.label_1911
.label_1901:
	lea	rdi, [rdi]
	or	bl, 0x40
.label_1911:
	lea	rsi, [rsi]
	mov	byte ptr [r15 + 0x68], bl
.label_1915:
	nop	
	test	ecx, ecx
	je	.label_1900
	cmp	qword ptr [r15 + 0x50], r10
	jne	.label_1927
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	edi, 0x18
	nop	
	call	malloc
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x50], rbx
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1899
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], r15
	test	r15, r15
	jle	.label_1906
	lea	rsi, [rsi]
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rbp, rbp
	mov	rdi, r15
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1917
	nop	
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_1904
.label_1906:
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], 0
.label_1904:
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x20]
	or	byte ptr [r15 + 0x68], 0x80
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x18]
.label_1927:
	test	ebp, ebp
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	jne	.label_1912
	mov	rsp, rsp
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 1
	mov	rbp, rbp
	jne	.label_1903
.label_1912:
	nop	
	test	ebp, ebp
	lea	rdi, [rdi]
	je	.label_1921
	lea	rsi, [rsi]
	mov	eax, r13d
	and	eax, 2
	nop	
	jne	.label_1903
.label_1921:
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x34], 0
	nop	
	jne	.label_1920
	mov	rbp, rbp
	mov	eax, r13d
	and	eax, 0x10
	mov	rsp, rsp
	jne	.label_1903
.label_1920:
	nop	
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1900
	lea	rdi, [rdi]
	and	r13d, 0x40
	je	.label_1900
	nop	word ptr cs:[rax + rax]
.label_1903:
	mov	rax, r12
	lea	rdi, [rdi]
	sub	rax, r8
	js	.label_1909
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	rcx, rax
	jle	.label_1909
	dec	rcx
	nop	
	mov	qword ptr [r15 + 0x10], rcx
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jle	.label_1909
	lea	rax, [r12*8]
	mov	rsp, rsp
	add	rax, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rcx, r8
	lea	rdi, [rdi]
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1928:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	mov	rbp, rbp
	inc	rcx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r15 + 0x10]
	jl	.label_1928
	nop	word ptr cs:[rax + rax]
.label_1909:
	lea	rdi, [rdi]
	inc	r8
.label_1900:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r9 + 8]
	nop	
	jl	.label_1910
.label_1926:
	nop	
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	call	register_state
	test	eax, eax
	je	.label_1902
.label_1899:
	mov	rdi, r15
	call	free_state
	mov	rbp, rbp
	jmp	.label_1905
.label_1917:
	mov	rsp, rsp
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rbx], xmm0
	jmp	.label_1905
.label_1897:
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsp, rsp
	call	free
.label_1905:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
.label_1923:
	xor	r15d, r15d
.label_1902:
	mov	rsp, rsp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419830

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	mov	rsp, rsp
	lea	rdi, [r13*8]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	rsp, rsp
	mov	ecx, 0xc
	test	rax, rax
	mov	rsp, rsp
	je	.label_1933
	mov	rbp, rbp
	test	r13, r13
	jle	.label_1939
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1934:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	lea	rsi, [rsi]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1935
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	cmp	rdx, rcx
	lea	rsi, [rsi]
	jne	.label_1938
	lea	rcx, [rdx + rdx + 2]
	mov	rsp, rsp
	lea	rdx, [rdx + rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1936
	mov	qword ptr [rbx + 0x30], rax
	nop	
	mov	rcx, qword ptr [rbx + 0x28]
.label_1938:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1935:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1934
.label_1939:
	lea	rdi, [rdi]
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rsi, [rsi]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	lea	rsi, [rsi]
	jle	.label_1940
	nop	
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1937:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
	jmp	.label_1933
.label_1936:
	nop	
	mov	ecx, 0xc
.label_1933:
	mov	eax, ecx
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_1940:
	mov	rbp, rbp
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	mov	rsp, rsp
	lea	rsi, [rax*8 + 0x10]
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	ecx, 0xc
	mov	rsp, rsp
	je	.label_1933
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	rbp, rbp
	mov	qword ptr [rcx], rdx
	lea	rsi, [rsi]
	mov	r15, qword ptr [r14]
	lea	rdi, [rdi]
	jmp	.label_1937
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4199f0

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r13, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	lea	rbp, [rbx + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r13
	jle	.label_2004
	cmp	dword ptr [rbx + 0x90], 2
	lea	rsi, [rsi]
	jl	.label_1955
	mov	qword ptr [rbx + 0x20], 0
.label_1955:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	mov	rsp, rsp
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp], xmm0
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	mov	r14, r13
	jne	.label_1960
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	r14, r13
.label_1960:
	mov	rbp, rbp
	test	r14, r14
	je	.label_1959
	mov	r12, qword ptr [rbx + 0x38]
	mov	rbp, rbp
	cmp	r14, r12
	lea	rdi, [rdi]
	jge	.label_1992
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1996
	mov	rbp, rbp
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	edx, r15d
	mov	rsp, rsp
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_2005
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	lea	rsi, [rsi]
	shl	rdx, 2
	call	memmove
.label_2005:
	nop	
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rbp, rbp
	jne	.label_1952
.label_1985:
	nop	
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1944:
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	jne	.label_1959
	lea	rsi, [rsi]
	add	qword ptr [rbx + 8], r14
.label_1959:
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x28], r13
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x58]
	lea	rdi, [rdi]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1966
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1976
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	build_wcs_upper_buffer
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1983
	jmp	.label_1962
.label_1966:
	cmp	byte ptr [rbx + 0x8b], 0
	nop	
	jne	.label_1986
	mov	qword ptr [rbx + 0x30], rdx
	lea	rdi, [rdi]
	jmp	.label_1962
.label_1976:
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1962:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1983:
	mov	rbp, rbp
	add	rsp, 0x38
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_2004:
	mov	r14, r13
	lea	rsi, [rsi]
	sub	r14, rax
	lea	rdi, [rdi]
	jmp	.label_1960
.label_1992:
	mov	r10, qword ptr [rbx + 0x30]
	mov	cx, word ptr [rbx + 0x8c]
	mov	rbp, rbp
	test	cl, cl
	jne	.label_2002
.label_1972:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rsi, dword ptr [rbx + 0x90]
	cmp	rsi, 2
	lea	rdi, [rdi]
	jl	.label_1942
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rbp
	cmp	byte ptr [rbx + 0x89], 0
	mov	rsp, rsp
	je	.label_1953
	mov	rdi, qword ptr [rbx]
	lea	r8, [rdi + rax]
	nop	
	mov	rdx, r14
	sub	rdx, rsi
	mov	rbp, rbp
	add	rdx, r8
	cmp	rdx, rdi
	cmovb	rdx, rdi
	lea	r11, [r8 + r14]
	lea	rsi, [r14 + rax]
	mov	rsp, rsp
	lea	rsi, [rdi + rsi - 1]
	nop	word ptr cs:[rax + rax]
.label_1981:
	mov	rbp, rsi
	cmp	rbp, rdx
	mov	rsp, rsp
	jb	.label_1953
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp]
	and	cl, 0xc0
	movzx	ecx, cl
	mov	rbp, rbp
	lea	rsi, [rbp - 1]
	cmp	ecx, 0x80
	je	.label_1981
	add	r8, qword ptr [rbx + 0x58]
	mov	rdx, r8
	sub	rdx, rbp
	mov	r9, qword ptr [rbx + 0x78]
	mov	rsp, rsp
	test	r9, r9
	jne	.label_1987
	mov	qword ptr [rsp + 0x20], r11
	lea	rdi, [rdi]
	mov	r12, r10
	nop	
	mov	rsi, rbp
.label_1947:
	mov	qword ptr [rsp], 0
	lea	rdi, [rsp + 0x34]
	lea	rcx, [rsp]
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rsp, rsp
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_1950
	mov	rbp, rbp
	cmp	rax, -3
	lea	rdi, [rdi]
	mov	r10, r12
	ja	.label_1945
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x34]
	jmp	.label_1945
.label_1996:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rbp
	mov	rbp, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x20], rdx
	mov	rsp, rsp
	xor	ecx, ecx
.label_1979:
	lea	rsi, [rsi]
	lea	rsi, [rcx + rdx]
	mov	rsp, rsp
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	nop	
	sar	rax, 1
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_1961
	mov	rbp, rbp
	jge	.label_1974
	nop	
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	rdi, rdx
.label_1961:
	cmp	rcx, rdi
	mov	rbp, rbp
	mov	rdx, rdi
	jl	.label_1979
.label_1974:
	nop	
	cmp	rsi, r14
	lea	rdi, [rdi]
	setl	cl
	movzx	ecx, cl
	lea	r12, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rsi
	sub	rdx, r14
	jle	.label_1990
	lea	rdi, [rdi]
	cmp	r12, r14
	mov	rbp, rbp
	jne	.label_1990
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + r14*8], r14
	mov	rbp, rbp
	jne	.label_1990
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	mov	rsp, rsp
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	nop	
	lea	rsi, [rdi + r14]
	mov	rsp, rsp
	call	memmove
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	lea	rsi, [rsi]
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, qword ptr [rsp + 0x18]
	nop	
	jle	.label_1944
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	lea	rcx, [rax + r14*8]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1968:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	lea	rsi, [rsi]
	mov	qword ptr [rax + rdx*8], rsi
	mov	rbp, rbp
	inc	rdx
	nop	
	cmp	rdx, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	jl	.label_1968
	jmp	.label_1944
.label_1952:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	lea	rdi, [rdi]
	call	memmove
	jmp	.label_1985
.label_1990:
	mov	rax, r14
	sub	rax, r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	dword ptr [rax + rax]
.label_1997:
	mov	rax, r12
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	jle	.label_1982
	nop	
	lea	r12, [rax - 1]
	mov	rsp, rsp
	cmp	qword ptr [rbp + rax*8 - 8], r14
	lea	rdi, [rdi]
	je	.label_1997
.label_1982:
	cmp	rax, rsi
	mov	rsp, rsp
	jge	.label_1989
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	nop	
.label_2007:
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	jne	.label_1989
	mov	rbp, rbp
	inc	rax
	cmp	rax, rsi
	jl	.label_2007
.label_1989:
	mov	rbp, rbp
	cmp	rax, rsi
	lea	rdi, [rdi]
	jne	.label_1943
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], 0
	nop	
	xor	ebp, ebp
	lea	rdi, [rdi]
	jmp	.label_1949
.label_1986:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1954
	mov	rsp, rsp
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	lea	rdi, [rdi]
	cmovg	r14, rdx
	cmp	r15, r14
	mov	rbp, rbp
	jge	.label_1958
	lea	rdi, [rdi]
	jmp	.label_1970
	nop	dword ptr [rax]
.label_1964:
	mov	rbp, r12
	mov	r13, qword ptr [rbp]
.label_1970:
	lea	rdi, [rdi]
	inc	r15
	lea	rdi, [rdi]
	mov	r12, rbp
	mov	rsp, rsp
	add	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + r13 - 1]
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1973
.label_2000:
	movzx	ebp, al
	mov	rbp, rbp
	lea	eax, [rbp + 0x80]
	mov	rbp, rbp
	cmp	eax, 0x17f
	mov	rsp, rsp
	ja	.label_1971
	call	__ctype_toupper_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_1971:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	byte ptr [rax + r15 - 1], bpl
	lea	rsi, [rsi]
	cmp	r15, r14
	nop	
	jl	.label_1964
	lea	rdi, [rdi]
	jmp	.label_1998
.label_1973:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx]
	mov	rbp, rbp
	jmp	.label_2000
.label_1942:
	add	rax, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx]
	mov	al, byte ptr [rdx + rax - 1]
	movzx	edx, al
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_2001
	lea	rsi, [rsi]
	mov	al, byte ptr [rsi + rdx]
.label_2001:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 0x80]
	movzx	edx, al
	shr	al, 6
	movzx	eax, al
	mov	rsi, qword ptr [rsi + rax*8]
	mov	eax, 1
	bt	rsi, rdx
	jb	.label_1946
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0xa
	nop	
	jne	.label_1946
	lea	rdi, [rdi]
	movzx	eax, cx
	cmp	eax, 0xff
	seta	al
	movzx	eax, al
	lea	rsi, [rsi]
	add	eax, eax
.label_1946:
	mov	dword ptr [rbx + 0x70], eax
	mov	rbp, rbp
	jmp	.label_1944
.label_1943:
	mov	rbp, qword ptr [rbp + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	lea	rsi, [rsi]
	je	.label_1949
	test	rbp, rbp
	lea	rdi, [rdi]
	jle	.label_1975
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 1
	mov	rsp, rsp
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	lea	rsi, [rsi]
	call	memset
.label_1975:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	memset
	mov	rbp, qword ptr [rbx + 0x30]
.label_1949:
	mov	qword ptr [rbx + 0x38], rbp
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_1944
.label_1954:
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_1962
	nop	
	mov	rax, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x40]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	mov	rbp, rbp
	cmovg	rcx, rdx
	mov	rsp, rsp
	cmp	rax, rcx
	jge	.label_1999
	add	r13, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r13]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx]
	mov	rsp, rsp
	jmp	.label_2006
.label_1956:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
.label_2006:
	mov	rbp, rbp
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_1956
	mov	rax, rcx
.label_1999:
	mov	qword ptr [rbx + 0x30], rax
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1962
.label_1998:
	nop	
	mov	r15, r14
.label_1958:
	mov	qword ptr [rbx + 0x30], r15
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1962
.label_2002:
	nop	
	mov	rdx, r14
	sub	rdx, r13
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1972
.label_1950:
	mov	rbp, rbp
	mov	r10, r12
.label_1945:
	lea	rdi, [rdi]
	cmp	esi, -1
	jne	.label_1988
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbx + 0x38]
.label_1953:
	add	r12, rax
	mov	rbp, r12
	mov	rbp, rbp
	sub	rbp, r13
	jge	.label_1994
	mov	qword ptr [rsp + 0x10], r10
	lea	rax, [rbx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1977
.label_1969:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	cmp	rbp, r12
	lea	rsi, [rsi]
	je	.label_1993
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	je	.label_1984
	mov	rax, qword ptr [rbx]
	movzx	esi, byte ptr [rax + r12]
	nop	
	jmp	.label_1984
.label_1993:
	mov	rcx, qword ptr [rsp + 8]
.label_1984:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_1948
	nop	
.label_1977:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rdx, rbp
	sub	rdx, r12
	mov	rsi, qword ptr [rbx]
	lea	rdi, [rdi]
	add	rsi, r12
	mov	rbp, rbp
	lea	rdi, [rsp]
	mov	rcx, qword ptr [rsp + 0x20]
	nop	
	call	rpl_mbrtowc
	test	rax, rax
	je	.label_1969
	mov	rcx, rax
	or	rcx, 1
	mov	rsp, rsp
	cmp	rcx, -1
	nop	
	je	.label_1969
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp]
.label_1948:
	add	r12, rax
	mov	rbp, r12
	mov	rbp, rbp
	sub	rbp, r13
	nop	
	jl	.label_1977
	mov	qword ptr [rbx + 0x30], rbp
	nop	
	cmp	esi, -1
	mov	r10, qword ptr [rsp + 0x10]
	je	.label_1991
.label_1988:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1978
.label_1980:
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	jne	.label_1951
	mov	ecx, 2
	nop	
	cmp	byte ptr [rbx + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_1951
	nop	
	xor	ecx, ecx
.label_1951:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_1995
.label_1994:
	mov	qword ptr [rbx + 0x30], rbp
.label_1991:
	dec	r10
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r10
	mov	rbp, rbp
	mov	edx, r15d
	nop	
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_1995:
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_2003
.label_1957:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_1944
.label_2003:
	lea	rdi, [rdi]
	jle	.label_1963
	mov	rdi, qword ptr [rbx + 0x10]
	test	rbp, rbp
	mov	edx, 1
	nop	
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1963:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rsp, rsp
	je	.label_1957
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	memset
	lea	rsi, [rsi]
	jmp	.label_1957
.label_1978:
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	edi, ebp
	call	iswalnum
	lea	rsi, [rsi]
	mov	esi, ebp
	lea	rdi, [rdi]
	cmp	esi, 0x5f
	mov	rbp, rbp
	mov	ecx, 1
	je	.label_1951
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1980
	jmp	.label_1951
.label_1987:
	lea	rsi, [rsp + 0x2e]
	cmp	rdx, 6
	mov	ecx, 6
	mov	rsp, rsp
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1967
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r11
	lea	rsi, [rsi]
	lea	rdi, [rbp - 1]
	sub	rdi, r8
	mov	rbp, rbp
	cmp	rdi, -8
	lea	rdi, [rdi]
	mov	rcx, -7
	mov	rsp, rsp
	cmovg	rcx, rdi
	nop	
	xor	rcx, 0xffffffffffffffff
	shl	rcx, 0x20
	sar	rcx, 0x20
	mov	rsp, rsp
	inc	rcx
.label_1965:
	mov	rsp, rsp
	movzx	edi, byte ptr [rbp + rcx - 2]
	mov	al, byte ptr [r9 + rdi]
	mov	rsp, rsp
	mov	byte ptr [rsp + rcx + 0x2c], al
	dec	rcx
	mov	rsp, rsp
	cmp	rcx, 1
	nop	
	jg	.label_1965
	nop	
	jmp	.label_1941
.label_1967:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r11
.label_1941:
	mov	r12, r10
	nop	
	jmp	.label_1947
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a420

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	r14
	push	rbx
	push	rax
	nop	
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	edx, eax
	call	re_string_context_at
	mov	r10, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	mov	rbp, rbp
	test	r10, r10
	jle	.label_2008
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x98]
	mov	rbp, rbp
	mov	r11, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx]
	mov	r9d, eax
	and	r9d, 1
	lea	rdi, [rdi]
	mov	r8d, eax
	and	r8d, 2
	mov	rsp, rsp
	and	eax, 8
	mov	rsp, rsp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_2012:
	mov	rbp, rbp
	mov	rcx, qword ptr [r11 + rbx*8]
	mov	rbp, rbp
	mov	rdx, rcx
	shl	rdx, 4
	mov	edx, dword ptr [rdi + rdx + 8]
	movzx	esi, dl
	cmp	esi, 2
	jne	.label_2011
	shr	edx, 8
	mov	rsp, rsp
	test	dx, 0x3ff
	je	.label_2008
	test	r9d, r9d
	nop	
	jne	.label_2013
	mov	rsp, rsp
	mov	esi, edx
	and	esi, 4
	jne	.label_2011
.label_2013:
	lea	rdi, [rdi]
	test	r9d, r9d
	lea	rsi, [rsi]
	je	.label_2010
	mov	esi, edx
	mov	rbp, rbp
	and	esi, 8
	mov	rbp, rbp
	jne	.label_2011
.label_2010:
	test	r8d, r8d
	lea	rsi, [rsi]
	jne	.label_2009
	lea	rdi, [rdi]
	mov	esi, edx
	and	esi, 0x20
	mov	rbp, rbp
	jne	.label_2011
.label_2009:
	test	eax, eax
	jne	.label_2008
	nop	
	test	dl, dl
	jns	.label_2008
.label_2011:
	lea	rsi, [rsi]
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, r10
	mov	ecx, 0
	mov	rsp, rsp
	jl	.label_2012
.label_2008:
	lea	rsi, [rsi]
	mov	rax, rcx
	nop	
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a530

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdi
	nop	
	cmp	qword ptr [r14 + 0xe8], 0
	mov	rbp, rbp
	jle	.label_2016
	nop	
	xor	r12d, r12d
	nop	
.label_2017:
	mov	rax, qword ptr [r14 + 0xf8]
	nop	
	mov	r15, qword ptr [rax + r12*8]
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	mov	ebx, 0
	lea	rsi, [rsi]
	jle	.label_2014
	nop	word ptr cs:[rax + rax]
.label_2018:
	nop	
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	call	free
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_2018
.label_2014:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x28]
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbp, rbp
	je	.label_2015
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
.label_2015:
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	free
	mov	rbp, rbp
	inc	r12
	mov	rsp, rsp
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_2017
.label_2016:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a640

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	rbx, rcx
	nop	
	mov	qword ptr [rbp - 0x88], rbx
	mov	r14, rdx
	mov	qword ptr [rbp - 0x58], r14
	mov	r12, rsi
	mov	qword ptr [rbp - 0x30], r12
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + label_2056]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_2057]]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	xor	r13d, r13d
	test	r8b, r8b
	lea	rdi, [rdi]
	je	.label_2058
	mov	qword ptr [rbp - 0x78], rcx
	mov	r15, r14
	mov	edi, 0x60
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	r14d, 0xc
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_2060
	nop	
	lea	r13, [rbp - 0x50]
	nop	
	mov	r14, r15
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
.label_2058:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rcx
	mov	qword ptr [rbp - 0xb8], r13
	mov	r15, qword ptr [rcx + 0x90]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rsp, rsp
	shl	rdx, 4
	mov	rsp, rsp
	cmp	rdx, 0xfbf
	lea	rdi, [rdi]
	ja	.label_2080
	mov	rax, rsp
	mov	rsp, rsp
	lea	rcx, [rdx + 0xf]
	nop	
	and	rcx, 0xfffffffffffffff0
	lea	rsi, [rsi]
	sub	rax, rcx
	mov	rsp, rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], 0
	lea	rdi, [rdi]
	jmp	.label_2032
.label_2080:
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x98], rdx
	nop	
	call	malloc
	test	rax, rax
	je	.label_2048
	mov	cl, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], ecx
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
.label_2032:
	mov	qword ptr [rbp - 0x98], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rdi, rax
	mov	rsi, rbx
	call	memcpy
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx]
	xor	edi, edi
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbx + 8]
	nop	
	jg	.label_2061
	lea	rax, [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_2026
.label_2048:
	mov	r14d, 0xc
	test	r13, r13
	mov	rbp, rbp
	je	.label_2060
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [r13], 0
	jle	.label_2027
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2024:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	lea	rdi, [rdi]
	cmp	r15, qword ptr [r13]
	lea	rdi, [rdi]
	jl	.label_2024
	mov	rsp, rsp
	jmp	.label_2027
.label_2077:
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	r14, rax
	jmp	.label_2021
	nop	dword ptr [rax]
.label_2026:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rax]
	nop	
	mov	rdx, r15
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	movzx	edx, cl
	nop	
	cmp	edx, 9
	nop	
	je	.label_2039
	cmp	edx, 8
	jne	.label_2025
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r14
	mov	rbp, rbp
	jge	.label_2025
	shl	rax, 4
	nop	
	mov	qword ptr [rbx + rax], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbx + rax + 8], -1
	lea	rdi, [rdi]
	jmp	.label_2025
	nop	dword ptr [rax]
.label_2039:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r14
	lea	rsi, [rsi]
	jge	.label_2025
	lea	rsi, [rsi]
	shl	rax, 4
	cmp	qword ptr [rbx + rax], rsi
	mov	rbp, rbp
	jge	.label_2033
	mov	qword ptr [rbx + rax + 8], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	r13, rsi
	mov	rsi, rbx
	mov	rsp, rsp
	jmp	.label_2071
.label_2033:
	test	ecx, 0x80000
	je	.label_2078
	nop	
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax], -1
	mov	rsp, rsp
	je	.label_2078
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	r13, rsi
	mov	rsi, qword ptr [rbp - 0xb0]
.label_2071:
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	call	memcpy
	mov	rsi, r13
	lea	rdi, [rdi]
	jmp	.label_2025
.label_2078:
	mov	qword ptr [rbx + rax + 8], rsi
	nop	word ptr cs:[rax + rax]
.label_2025:
	mov	qword ptr [rbp - 0xa8], rsi
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rbx + 8]
	mov	rsp, rsp
	jne	.label_2035
	cmp	r15, qword ptr [r12 + 0xb0]
	nop	
	jne	.label_2035
	mov	rbp, rbp
	mov	r13, r12
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp - 0xb8]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_2046
	test	r14, r14
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	eax, 0
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	je	.label_2051
.label_2064:
	mov	rsp, rsp
	cmp	qword ptr [rcx - 8], 0
	js	.label_2036
	cmp	qword ptr [rcx], -1
	mov	rsp, rsp
	je	.label_2051
.label_2036:
	inc	rax
	lea	rsi, [rsi]
	add	rcx, 0x10
	cmp	rax, r14
	jb	.label_2064
.label_2051:
	lea	rdi, [rdi]
	cmp	rax, r14
	je	.label_2065
	mov	rcx, qword ptr [r12]
	nop	
	lea	rax, [rcx - 1]
	lea	rsi, [rsi]
	mov	qword ptr [r12], rax
	test	rcx, rcx
	jle	.label_2053
	mov	rcx, qword ptr [r12 + 0x10]
	shl	rax, 4
	mov	rsp, rsp
	lea	rbx, [rax + rax*2]
	nop	
	mov	rax, qword ptr [rcx + rbx]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r15, qword ptr [rax + rbx + 8]
	mov	r12, r13
.label_2035:
	mov	rbx, qword ptr [r12 + 0x98]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	mov	r13, r15
	lea	rdi, [rdi]
	shl	r13, 4
	mov	eax, dword ptr [rsi + r13 + 8]
	mov	rbp, rbp
	test	al, 8
	mov	rsp, rsp
	jne	.label_2072
	nop	
	test	eax, 0x100000
	lea	rdi, [rdi]
	jne	.label_2082
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 4
	jne	.label_2045
	mov	rax, qword ptr [rsi + r13]
	nop	
	shl	rax, 4
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rax + rcx + 0x10]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax + rcx + 0x18]
	nop	
	mov	rdx, r14
	mov	rbp, rbp
	sub	rdx, rdi
	cmp	qword ptr [rbp - 0xb8], 0
	lea	rdi, [rdi]
	je	.label_2049
	cmp	r14, -1
	je	.label_2022
	cmp	rdi, -1
	je	.label_2022
	cmp	r14, rdi
	je	.label_2049
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rsi, [rsi]
	jl	.label_2022
	mov	rsi, qword ptr [r12 + 8]
	mov	r12, rdi
	lea	rdi, [rdi]
	lea	rdi, [rsi + r12]
	nop	
	add	rsi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x80], rdx
	call	memcmp
	lea	rdi, [rdi]
	mov	rdi, r12
	nop	
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_2022
.label_2049:
	cmp	r14, rdi
	lea	rsi, [rsi]
	jne	.label_2029
	lea	rdi, [rbp - 0x70]
	mov	rsi, r15
	mov	r14, rdx
	lea	rsi, [rsi]
	call	re_node_set_insert
	mov	rdx, r14
	lea	rsi, [rsi]
	test	al, al
	je	.label_2020
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rcx*8]
	nop	
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	mov	rsp, rsp
	jle	.label_2029
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rdi, [rdi]
	lea	rsi, [r15 + r15*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	ecx, 0
	nop	
	je	.label_2062
	nop	word ptr cs:[rax + rax]
.label_2075:
	lea	rsi, [rcx + rax]
	mov	rsp, rsp
	shr	rsi, 1
	lea	rdi, [rdi]
	cmp	qword ptr [r8 + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_2075
.label_2062:
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_2029
	mov	rbp, rbp
	cmp	qword ptr [r8 + rcx*8], r14
	mov	rbp, rbp
	je	.label_2063
	jmp	.label_2029
	nop	word ptr cs:[rax + rax]
.label_2072:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [rbx + 0x28]
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, r15
	call	re_node_set_insert
	nop	
	test	al, al
	je	.label_2020
	lea	rdi, [rdi]
	lea	rax, [r15 + r15*2]
	mov	r9, qword ptr [rbx + rax*8 + 8]
	lea	rdi, [rdi]
	test	r9, r9
	jle	.label_2028
	nop	
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	mov	r10, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	lea	r11, [r10 - 1]
	mov	rbp, rbp
	mov	r14, -1
	xor	r15d, r15d
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp - 0xb8]
	nop	word ptr cs:[rax + rax]
.label_2019:
	nop	
	test	r10, r10
	jle	.label_2041
	mov	rbx, qword ptr [r8 + r15*8]
	test	r11, r11
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rsi, r11
	mov	eax, 0
	je	.label_2073
	nop	dword ptr [rax]
.label_2070:
	lea	rdx, [rax + rsi]
	mov	rsp, rsp
	shr	rdx, 1
	cmp	qword ptr [rcx + rdx*8], rbx
	lea	rdi, [rdx + 1]
	cmovl	rax, rdi
	nop	
	cmovge	rsi, rdx
	cmp	rax, rsi
	nop	
	jb	.label_2070
.label_2073:
	cmp	rax, -1
	lea	rdi, [rdi]
	je	.label_2041
	cmp	qword ptr [rcx + rax*8], rbx
	jne	.label_2041
	cmp	r14, -1
	lea	rdi, [rdi]
	jne	.label_2083
	mov	r14, rbx
.label_2041:
	inc	r15
	cmp	r15, r9
	jl	.label_2019
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	jmp	.label_2021
	nop	word ptr [rax + rax]
.label_2082:
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, r12
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	call	check_node_accept_bytes
	mov	rbp, rbp
	movsxd	rdx, eax
.label_2029:
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_2042
	mov	rsi, qword ptr [rbx]
	mov	r12, qword ptr [rbp - 0x30]
.label_2045:
	add	rsi, r13
	mov	rdi, r12
	nop	
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	call	check_node_accept
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rdi, [rdi]
	je	.label_2028
.label_2042:
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0xa8]
	nop	
	cmp	qword ptr [rbp - 0xb8], 0
	mov	rax, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rax + r15*8]
	je	.label_2054
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rax + 0xa8]
	lea	rsi, [rsi]
	jg	.label_2022
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	mov	rbp, rbp
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_2022
	nop	
	mov	rax, qword ptr [rcx + 0x10]
	nop	
	test	rax, rax
	nop	
	jle	.label_2022
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_2059
	nop	word ptr cs:[rax + rax]
.label_2052:
	mov	rbp, rbp
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r14
	lea	rdi, [rsi + 1]
	lea	rsi, [rsi]
	cmovl	rbx, rdi
	nop	
	cmovge	rax, rsi
	mov	rsp, rsp
	cmp	rbx, rax
	jb	.label_2052
.label_2059:
	cmp	rbx, -1
	lea	rdi, [rdi]
	je	.label_2028
	cmp	qword ptr [rcx + rbx*8], r14
	lea	rdi, [rdi]
	jne	.label_2028
.label_2054:
	mov	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	jmp	.label_2084
.label_2083:
	mov	r15, qword ptr [rbp - 0x68]
	test	r15, r15
	jle	.label_2076
	mov	rcx, r15
	dec	rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	edx, 0
	je	.label_2034
	nop	word ptr cs:[rax + rax]
.label_2055:
	lea	rsi, [rdx + rcx]
	nop	
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	nop	
	cmovge	rcx, rsi
	cmp	rdx, rcx
	mov	rbp, rbp
	jb	.label_2055
.label_2034:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r14
	mov	rbp, rbp
	sete	dl
	lea	rsi, [rsi]
	and	dl, cl
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	cmovne	rax, rbx
	test	dl, dl
	lea	rsi, [rsi]
	jne	.label_2077
	nop	
	test	r13, r13
	mov	rdx, qword ptr [rbp - 0xa8]
	jne	.label_2068
	lea	rdi, [rdi]
	mov	r14, rax
	jmp	.label_2021
.label_2076:
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa8]
	nop	
	je	.label_2021
.label_2068:
	mov	rcx, r13
	mov	rbp, rbp
	mov	r13, qword ptr [rcx]
	lea	rax, [r13 + 1]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_2047
	mov	rdi, qword ptr [rcx + 0x10]
	nop	
	shl	rax, 5
	nop	
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r12, rax
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_2020
	mov	rax, qword ptr [rbp - 0xb8]
	shl	qword ptr [rax + 8], 1
	nop	
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xa8]
	jmp	.label_2038
.label_2047:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
.label_2038:
	mov	qword ptr [rbp - 0x98], rdi
	lea	rsi, [rsi]
	lea	r13, [r13 + r13*2]
	shl	r13, 4
	lea	rdi, [rdi]
	mov	qword ptr [r12 + r13], rdx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + r13 + 8], rbx
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [r12 + r13 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_2020
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x88]
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	call	memcpy
	lea	rbx, [r12 + r13 + 0x18]
	mov	qword ptr [r12 + r13 + 0x20], r15
	test	r15, r15
	nop	
	jle	.label_2074
	mov	qword ptr [rbx], r15
	nop	
	shl	r15, 3
	mov	rdi, r15
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [r12 + r13 + 0x28], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_2081
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, r15
	call	memcpy
	jmp	.label_2063
.label_2074:
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], 0
.label_2063:
	mov	rdx, qword ptr [rbp - 0xa8]
.label_2084:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp - 0xb8]
.label_2021:
	test	r14, r14
	mov	rbp, rbp
	js	.label_2040
	mov	r12, qword ptr [rbp - 0x88]
	nop	
	jmp	.label_2067
.label_2040:
	mov	qword ptr [rbp - 0xb8], r13
	mov	rsp, rsp
	cmp	r14, -2
	lea	rsi, [rsi]
	je	.label_2020
	nop	dword ptr [rax]
.label_2028:
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_2050
.label_2022:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	lea	rdi, [rdi]
	mov	qword ptr [r13], rax
	mov	rbp, rbp
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_2053
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	r12, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0x98]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rbp, rbp
	mov	rdx, r14
	mov	rax, qword ptr [r13 + 0x10]
	nop	
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	nop	
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r14, qword ptr [rax + rbx + 8]
.label_2067:
	cmp	rdx, qword ptr [r12 + 8]
	mov	r15, r14
	mov	rsi, rdx
	mov	rbx, r12
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jle	.label_2026
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
.label_2061:
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	mov	rsp, rsp
	je	.label_2044
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb0]
	call	free
.label_2044:
	xor	r14d, r14d
	test	r13, r13
	je	.label_2060
	xor	r14d, r14d
	nop	
	cmp	qword ptr [r13], 0
	jle	.label_2027
	nop	
	xor	ebx, ebx
	nop	
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_2066:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	lea	rsi, [rsi]
	inc	r15
	add	rbx, 0x30
	mov	rsp, rsp
	cmp	r15, qword ptr [r13]
	mov	rbp, rbp
	jl	.label_2066
.label_2027:
	mov	rdi, qword ptr [r13 + 0x10]
	lea	rdi, [rdi]
	jmp	.label_2023
.label_2050:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	r14d, 1
	lea	rsi, [rsi]
	jmp	.label_2079
.label_2046:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	call	free
	xor	r14d, r14d
.label_2079:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_2060
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	jmp	.label_2023
.label_2065:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	lea	rsi, [rsi]
	je	.label_2030
	nop	
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	free
.label_2030:
	mov	rsp, rsp
	xor	r14d, r14d
	cmp	qword ptr [r12], 0
	lea	rdi, [rdi]
	jle	.label_2043
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_2031:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	nop	
	call	free
	inc	r15
	lea	rdi, [rdi]
	add	rbx, 0x30
	lea	rdi, [rdi]
	cmp	r15, qword ptr [r12]
	lea	rsi, [rsi]
	jl	.label_2031
	jmp	.label_2043
.label_2081:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_2020:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_2069
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	call	free
.label_2069:
	mov	rsp, rsp
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0xb8]
	nop	
	test	r12, r12
	je	.label_2060
	xor	ebx, ebx
	cmp	qword ptr [r12], 0
	mov	rsp, rsp
	jle	.label_2043
	nop	
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2037:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rsp, rsp
	inc	r15
	mov	rbp, rbp
	add	rbx, 0x30
	lea	rdi, [rdi]
	cmp	r15, qword ptr [r12]
	mov	rbp, rbp
	jl	.label_2037
.label_2043:
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
.label_2023:
	mov	rsp, rsp
	call	free
.label_2060:
	lea	rdi, [rdi]
	mov	eax, r14d
	mov	rbp, rbp
	lea	rsp, [rbp - 0x28]
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_2053:
	mov	edi, OFFSET FLAT:.str.26_0
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b3a0

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	nop	
	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_2085
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_2093
	nop	
	cmp	dword ptr [rbx + 0x90], 2
	nop	
	jl	.label_2089
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	inc	rsi
	nop	dword ptr [rax]
.label_2091:
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	lea	rdi, [rdi]
	cmp	ebp, -1
	jne	.label_2086
	nop	
	dec	rsi
	mov	rbp, rbp
	test	rsi, rsi
	jg	.label_2091
	nop	
	mov	edx, dword ptr [rbx + 0x70]
	nop	
	jmp	.label_2087
.label_2089:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	lea	rsi, [rsi]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	mov	rsp, rsp
	bt	rcx, rax
	jb	.label_2087
	xor	edx, edx
	nop	
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_2087
	jmp	.label_2088
.label_2086:
	cmp	byte ptr [rbx + 0x8e], 0
	nop	
	jne	.label_2090
.label_2092:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_2087
.label_2088:
	mov	edx, 2
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_2087
	xor	edx, edx
	lea	rdi, [rdi]
	jmp	.label_2087
.label_2085:
	mov	edx, dword ptr [rbx + 0x70]
	mov	rbp, rbp
	jmp	.label_2087
.label_2093:
	and	edx, 2
	xor	edx, 0xa
.label_2087:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_2090:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_2087
	test	eax, eax
	jne	.label_2087
	jmp	.label_2092
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b4a0

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	test	rcx, rcx
	jle	.label_2094
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_2095
.label_2098:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0xf8]
	nop	
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rdi]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_2094
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	rbp, rbp
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_2096
	nop	dword ptr [rax]
.label_2095:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rsp, rsp
	mov	rdx, rbp
	shl	rdx, 4
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax + rdx + 8]
	cmp	esi, 8
	lea	rdi, [rdi]
	jne	.label_2097
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rdx]
	lea	rdi, [rdi]
	cmp	rax, 0x3f
	nop	
	jg	.label_2097
	mov	rdx, qword ptr [r13 + 0xa0]
	mov	rbp, rbp
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_2097
	lea	rdi, [rdi]
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	lea	rdi, [rdi]
	je	.label_2098
.label_2096:
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 0x30
	mov	rsp, rsp
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	nop	
	test	rdx, rdx
	je	.label_2094
	mov	qword ptr [rdx + 8], rbp
	lea	rdi, [rdi]
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	nop	
	mov	rcx, qword ptr [r12 + 8]
	nop	dword ptr [rax + rax]
.label_2097:
	lea	rdi, [rdi]
	inc	rbx
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, rcx
	mov	rbp, rbp
	jl	.label_2095
.label_2094:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b640

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xa8
	mov	qword ptr [rsp + 0x80], rsi
	lea	rdi, [rdi]
	mov	r13, rdi
	cmp	qword ptr [rsi + 8], 0
	lea	rsi, [rsi]
	jle	.label_2115
	lea	rsi, [rsi]
	mov	r15, qword ptr [r13 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x90], r15
	nop	
	mov	r8, qword ptr [r13 + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x88], r8
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_2106:
	mov	qword ptr [rsp + 0x38], rcx
	mov	rax, qword ptr [rsp + 0x80]
	mov	rax, qword ptr [rax + 0x10]
	mov	r14, qword ptr [rax + rcx*8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], r14
	mov	rsp, rsp
	mov	rax, qword ptr [r15]
	lea	rsi, [rsi]
	shl	r14, 4
	mov	rbp, rbp
	mov	ebx, dword ptr [rax + r14 + 8]
	lea	rsi, [rsi]
	movzx	eax, bl
	lea	rdi, [rdi]
	cmp	eax, 4
	nop	
	jne	.label_2102
	lea	rsi, [rsi]
	mov	ebp, ebx
	mov	rsp, rsp
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_2122
	mov	edx, dword ptr [r13 + 0xa0]
	lea	rsi, [rsi]
	mov	rdi, r13
	nop	
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2131
	test	ecx, ecx
	je	.label_2102
.label_2131:
	lea	rsi, [rsi]
	test	bh, 8
	je	.label_2112
	test	ecx, ecx
	nop	
	jne	.label_2102
.label_2112:
	test	bh, 0x20
	je	.label_2118
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	and	ecx, 2
	je	.label_2102
.label_2118:
	test	bpl, bpl
	jns	.label_2122
	and	eax, 8
	je	.label_2102
	nop	dword ptr [rax]
.label_2122:
	mov	rbp, rbp
	mov	r12, qword ptr [r13 + 0xc8]
	mov	qword ptr [rsp + 0x48], r12
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9, qword ptr [r13 + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r9
	mov	rbp, rbp
	test	r12, r12
	mov	eax, 0
	jle	.label_2129
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	eax, eax
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_2140:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rsi*8 + 8], r8
	cmovge	rdx, rdi
	nop	
	lea	rsi, [rdi + 1]
	mov	rsp, rsp
	cmovl	rax, rsi
	lea	rdi, [rdi]
	cmp	rax, rdx
	jl	.label_2140
.label_2129:
	lea	rsi, [rsi]
	cmp	rax, r12
	jge	.label_2099
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_2099
	mov	rcx, qword ptr [r13 + 0xd8]
	lea	rax, [rax + rax*4]
	nop	
	cmp	qword ptr [rcx + rax*8 + 8], r8
	mov	rsp, rsp
	jne	.label_2099
	lea	rax, [rcx + rax*8]
	nop	word ptr cs:[rax + rax]
.label_2117:
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax], rcx
	lea	rsi, [rsi]
	je	.label_2125
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 0x20], 0
	lea	rdi, [rdi]
	lea	rax, [rax + 0x28]
	mov	rbp, rbp
	jne	.label_2117
.label_2099:
	cmp	qword ptr [r13 + 0xe8], 0
	lea	rdi, [rdi]
	mov	rax, r12
	lea	rsi, [rsi]
	jle	.label_2121
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], r15
	mov	rax, qword ptr [r9]
	mov	rsp, rsp
	mov	r10, qword ptr [rax + r14]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r10
	lea	rdi, [rdi]
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_2127
	nop	word ptr cs:[rax + rax]
.label_2116:
	mov	rbp, rbp
	mov	rax, qword ptr [r9]
.label_2127:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0xf8]
	nop	
	mov	r14, qword ptr [rcx + r11*8]
	mov	qword ptr [rsp + 0x68], r14
	mov	rcx, qword ptr [r14 + 8]
	shl	rcx, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rcx], r10
	mov	rbp, rbp
	jne	.label_2101
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r11
	mov	rsp, rsp
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x20]
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	jle	.label_2145
	nop	
	mov	rbx, r8
	xor	r12d, r12d
	jmp	.label_2137
.label_2145:
	mov	rdx, r8
	mov	rdi, r15
	xor	r12d, r12d
	nop	
	jmp	.label_2148
.label_2108:
	nop	
	mov	r9, qword ptr [r13 + 0x58]
	mov	rsp, rsp
	cmp	rdi, r9
	nop	
	jg	.label_2151
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [r13 + 0x40]
	mov	r8, qword ptr [r13 + 0xc0]
	cmp	rax, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], rdi
	nop	
	mov	rdi, r13
	nop	
	mov	rdx, r14
	jg	.label_2105
	mov	rsp, rsp
	cmp	rax, r9
	lea	rsi, [rsi]
	jl	.label_2134
.label_2105:
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rsp + 0x98]
	jg	.label_2119
	cmp	rcx, r9
	lea	rdi, [rdi]
	jge	.label_2119
.label_2134:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	lea	esi, [rax + 1]
	mov	r14, rdi
	mov	r13, r8
	call	extend_buffers
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rdi, r14
	mov	r8, r13
	mov	r13d, eax
	mov	rbp, rbp
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_2103
.label_2119:
	mov	r14, rdx
	nop	
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	sub	rdx, r8
	mov	rsp, rsp
	mov	r13, rdi
	jle	.label_2135
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r8*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	nop	
	call	memset
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [r13 + 0xc0], rax
.label_2135:
	mov	rax, qword ptr [r13 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	jmp	.label_2150
	nop	dword ptr [rax + rax]
.label_2137:
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rcx + r12*8]
	mov	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, rcx
	nop	
	sub	rdi, r15
	mov	rsp, rsp
	add	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rcx
	sub	rbp, r15
	jle	.label_2146
	mov	rbp, rbp
	mov	rcx, qword ptr [r13 + 0x30]
	cmp	rdi, rcx
	lea	rsi, [rsi]
	jg	.label_2108
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x98], rdi
.label_2150:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rdi, [rax + rbx]
	lea	rsi, [rax + r15]
	mov	rdx, rbp
	nop	
	call	memcmp
	test	eax, eax
	mov	r8, qword ptr [rsp + 0x88]
	mov	rdi, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x40]
	jne	.label_2126
.label_2146:
	mov	rsp, rsp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r14
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, r8
	call	get_subexp_sub
	mov	rcx, r13
	mov	r13d, eax
	cmp	r13d, 1
	nop	
	ja	.label_2103
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa0], rax
	inc	r12
	nop	
	mov	rax, qword ptr [r14 + 0x20]
	cmp	r12, rax
	mov	rdx, rbx
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r15, rdi
	mov	r13, rcx
	mov	r8, rbp
	lea	rsi, [rsi]
	jl	.label_2137
	mov	rbp, rbp
	jmp	.label_2148
.label_2126:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x20]
.label_2151:
	mov	rdx, rbx
	mov	rdi, r15
.label_2148:
	mov	rsp, rsp
	cmp	r12, rax
	lea	rsi, [rsi]
	jge	.label_2152
	mov	r12, qword ptr [rsp + 0x48]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x78]
	jmp	.label_2101
.label_2152:
	test	r12, r12
	setg	al
	mov	rbp, rbp
	movzx	ebp, al
	mov	rbp, rbp
	add	rbp, rdi
	lea	rdi, [rdi]
	cmp	rbp, r8
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x20]
	mov	r11, qword ptr [rsp + 0x78]
	jg	.label_2101
	jmp	.label_2107
.label_2130:
	cmp	r14, -1
	je	.label_2111
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], r11
	mov	qword ptr [rsp + 0x28], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], r8
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, r13
	jne	.label_2133
	nop	
	lea	rsi, [rbp + 1]
	sub	rsi, qword ptr [r15]
	mov	rsp, rsp
	mov	edi, 0x18
	call	rpl_calloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	mov	r13d, 0xc
	je	.label_2103
.label_2133:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	mov	dword ptr [rsp], 9
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rax
	mov	r8, r14
	mov	rbp, rbp
	mov	r9, rbp
	call	check_arrival
	lea	rsi, [rsi]
	mov	r13d, eax
	cmp	r13d, 1
	mov	r8, qword ptr [rsp + 0x88]
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x28]
	nop	
	mov	r10, qword ptr [rsp + 0x20]
	mov	r11, qword ptr [rsp + 0x78]
	nop	
	mov	rdx, qword ptr [rsp + 0x98]
	je	.label_2128
	test	r13d, r13d
	jne	.label_2103
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbx, qword ptr [r15 + 0x20]
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [r15 + 0x18]
	mov	r12, r15
	lea	rdi, [rdi]
	je	.label_2109
.label_2141:
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 0x28
	call	rpl_calloc
	mov	r13d, 0xc
	test	rax, rax
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_2103
	mov	rcx, qword ptr [r12 + 0x20]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	mov	qword ptr [rax], r14
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rbp
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x20], rcx
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	nop	
	mov	r8, qword ptr [rsp + 0x88]
	call	get_subexp_sub
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rbp, rbp
	cmp	r13d, 1
	ja	.label_2103
	mov	r15, r12
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x88]
	mov	r12, qword ptr [rsp + 0x48]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x78]
	jmp	.label_2144
.label_2149:
	cmp	rdx, qword ptr [r13 + 0x58]
	jge	.label_2101
	mov	qword ptr [rsp + 0x78], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r10
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x48], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], r8
	lea	rbx, [rdx + 1]
	lea	rdi, [rdi]
	mov	r15, rdx
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	esi, ebx
	call	extend_buffers
	mov	rcx, r13
	mov	rbp, rbp
	mov	r13d, eax
	mov	rsp, rsp
	test	r13d, r13d
	jne	.label_2103
	mov	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	r13, rcx
	mov	r8, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x48]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x20]
	mov	r11, qword ptr [rsp + 0x78]
	mov	rdx, r15
	jmp	.label_2123
.label_2109:
	lea	rsi, [rsi]
	lea	rax, [rbx + rbx]
	mov	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rax*8 + 8]
	lea	rdi, [rdi]
	call	realloc
	mov	rbp, rbp
	mov	r13d, 0xc
	nop	
	test	rax, rax
	je	.label_2103
	mov	rbp, rbp
	lea	rcx, [rbx + rbx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_2141
	nop	dword ptr [rax]
.label_2107:
	cmp	rbp, qword ptr [r14]
	mov	rbp, rbp
	jle	.label_2147
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r13 + 0x30]
	jge	.label_2149
	lea	rbx, [rdx + 1]
.label_2123:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xa0]
	movzx	eax, byte ptr [rbp + rcx - 1]
	nop	
	movzx	ecx, byte ptr [rcx + rdx]
	cmp	ecx, eax
	mov	rdx, rbx
	jne	.label_2101
.label_2147:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_2104
	mov	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	test	rax, rax
	jle	.label_2104
	mov	qword ptr [rsp + 0x98], rdx
	mov	r15, r14
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [r9]
	lea	rdi, [rdi]
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2132:
	mov	r14, qword ptr [rcx + rsi*8]
	mov	rdi, r14
	nop	
	shl	rdi, 4
	movzx	ebx, byte ptr [rdx + rdi + 8]
	cmp	ebx, 9
	mov	rsp, rsp
	jne	.label_2113
	cmp	qword ptr [rdx + rdi], r10
	je	.label_2130
.label_2113:
	nop	
	inc	rsi
	cmp	rsi, rax
	mov	rbp, rbp
	jl	.label_2132
.label_2111:
	lea	rdi, [rdi]
	mov	rbx, r13
.label_2144:
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	jmp	.label_2128
	nop	word ptr cs:[rax + rax]
.label_2104:
	nop	
	mov	r15, r14
	lea	rsi, [rsi]
	mov	rbx, r13
.label_2128:
	lea	rsi, [rsi]
	cmp	rbp, r8
	lea	rsi, [rsi]
	lea	rbp, [rbp + 1]
	mov	r13, rbx
	lea	rsi, [rsi]
	mov	r14, r15
	mov	rsp, rsp
	jl	.label_2107
	nop	dword ptr [rax]
.label_2101:
	inc	r11
	lea	rsi, [rsi]
	cmp	r11, qword ptr [r13 + 0xe8]
	jl	.label_2116
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xc8]
	mov	r15, qword ptr [rsp + 0x90]
	jmp	.label_2121
.label_2125:
	mov	rax, r12
.label_2121:
	mov	dword ptr [rsp + 0x14], 0
	mov	rbp, rbp
	cmp	r12, rax
	jge	.label_2102
	mov	rsp, rsp
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	dword ptr [rax]
.label_2100:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xd8]
	nop	
	mov	rbx, r13
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax + rbp - 0x18], rcx
	lea	rsi, [rsi]
	jne	.label_2110
	cmp	qword ptr [rax + rbp - 0x10], r8
	mov	rsp, rsp
	jne	.label_2110
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp]
	mov	r13, qword ptr [r15 + 0x30]
	cmp	rsi, rdx
	jne	.label_2124
	mov	qword ptr [rsp + 0x48], r12
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	lea	rdi, [rdi]
	jmp	.label_2143
.label_2124:
	mov	qword ptr [rsp + 0x48], r12
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rax, [rax*8]
	lea	rsi, [rsi]
	add	rax, qword ptr [r15 + 0x18]
.label_2143:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	lea	r14, [rsi + r8]
	mov	qword ptr [rsp + 0xa0], rsi
	sub	r14, rdx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	lea	rsi, [r14 - 1]
	nop	
	mov	r12, rbx
	mov	rbp, rbp
	mov	edx, dword ptr [r12 + 0xa0]
	mov	rdi, r12
	nop	
	mov	rbx, r8
	lea	rdi, [rdi]
	call	re_string_context_at
	mov	rdx, rbx
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	rsi, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rcx + rdx*8]
	lea	rsi, [rsi]
	test	rcx, rcx
	nop	
	mov	edx, 0
	mov	rbp, rbp
	je	.label_2139
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x10]
.label_2139:
	mov	qword ptr [rsp + 0x98], rdx
	lea	rdx, [r13 + r15*8]
	test	rsi, rsi
	nop	
	lea	rdi, [rsp + 0x50]
	je	.label_2142
	mov	r15d, eax
	mov	rsi, qword ptr [rsi + 0x50]
	nop	
	mov	qword ptr [rsp + 0x40], rdx
	nop	
	mov	rbx, rdi
	mov	rsp, rsp
	call	re_node_set_init_union
	nop	
	mov	r13d, eax
	mov	dword ptr [rsp + 0x14], r13d
	test	r13d, r13d
	jne	.label_2120
	nop	
	lea	rdi, [rsp + 0x14]
	nop	
	mov	rsi, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	call	re_acquire_state_context
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbp, rbp
	mov	rbx, r12
	mov	rsp, rsp
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_2136
	lea	rsi, [rsi]
	mov	r13d, dword ptr [rsp + 0x14]
	test	r13d, r13d
	je	.label_2136
	lea	rdi, [rdi]
	jmp	.label_2114
.label_2142:
	nop	
	lea	rdi, [rsp + 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rdi]
	mov	ecx, eax
	call	re_acquire_state_context
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbx, r12
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_2136
	lea	rdi, [rdi]
	mov	r13d, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	test	r13d, r13d
	mov	r15, qword ptr [rsp + 0x90]
	mov	r8, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0xa0]
	je	.label_2138
	mov	rsp, rsp
	jmp	.label_2114
.label_2136:
	mov	r15, qword ptr [rsp + 0x90]
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
.label_2138:
	nop	
	cmp	rdx, rcx
	jne	.label_2110
	mov	rax, qword ptr [rax + r8*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x98]
	cmp	qword ptr [rax + 0x10], rcx
	mov	rbp, rbp
	jle	.label_2110
	nop	
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rdx, r8
	mov	r14, r8
	call	check_subexp_matching_top
	mov	rcx, r14
	mov	r13d, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], r13d
	test	r13d, r13d
	jne	.label_2114
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x40]
	mov	r14, rcx
	mov	rbp, rbp
	call	transit_state_bkref
	mov	r8, r14
	lea	rdi, [rdi]
	mov	r13d, eax
	nop	
	mov	dword ptr [rsp + 0x14], r13d
	test	r13d, r13d
	jne	.label_2114
.label_2110:
	inc	r12
	add	rbp, 0x28
	lea	rdi, [rdi]
	mov	r13, rbx
	cmp	r12, qword ptr [r13 + 0xc8]
	jl	.label_2100
	nop	word ptr [rax + rax]
.label_2102:
	mov	rcx, qword ptr [rsp + 0x38]
	inc	rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x80]
	cmp	rcx, qword ptr [rax + 8]
	jl	.label_2106
.label_2115:
	nop	
	mov	dword ptr [rsp + 0x14], 0
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_2114
.label_2103:
	mov	dword ptr [rsp + 0x14], r13d
.label_2114:
	nop	
	mov	eax, r13d
	add	rsp, 0xa8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2120:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	jmp	.label_2114
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c290

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	ecx, esi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	lea	rsi, [rsi]
	cmp	rsi, rdx
	mov	rbp, rbp
	ja	.label_2159
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 0x58]
	add	rsi, rsi
	mov	rsp, rsp
	cmp	rcx, rsi
	lea	rdi, [rdi]
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	lea	rdi, [rdi]
	mov	rdi, r14
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_2159
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0xb8]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_2165
	mov	rax, qword ptr [r14 + 0x40]
	nop	
	lea	rsi, [rax*8 + 8]
	mov	rbp, rbp
	call	realloc
	mov	rbp, rbp
	mov	rcx, rax
	test	rcx, rcx
	lea	rsi, [rsi]
	mov	eax, 0xc
	je	.label_2159
	mov	qword ptr [r14 + 0xb8], rcx
.label_2165:
	nop	
	cmp	byte ptr [r14 + 0x88], 0
	mov	eax, dword ptr [r14 + 0x90]
	je	.label_2166
	mov	rsp, rsp
	cmp	eax, 2
	lea	rdi, [rdi]
	jl	.label_2158
	mov	rdi, r14
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_2156
	jmp	.label_2159
.label_2166:
	mov	rsp, rsp
	cmp	eax, 2
	jl	.label_2163
	mov	rdi, r14
	lea	rsi, [rsi]
	call	build_wcs_buffer
	nop	
	jmp	.label_2156
.label_2158:
	mov	rbx, qword ptr [r14 + 0x30]
	nop	
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	lea	rdi, [rdi]
	cmp	rbx, r15
	jge	.label_2157
	lea	rsi, [rsi]
	jmp	.label_2155
.label_2153:
	nop	
	mov	cl, byte ptr [rax + rdx]
	jmp	.label_2162
	nop	word ptr cs:[rax + rax]
.label_2155:
	mov	rcx, qword ptr [r14]
	nop	
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_2153
.label_2162:
	mov	rbp, rbp
	movzx	r12d, cl
	lea	eax, [r12 + 0x80]
	cmp	eax, 0x17f
	nop	
	ja	.label_2160
	nop	
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	r12d, dword ptr [rax + r12*4]
.label_2160:
	mov	rax, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rbx], r12b
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, r15
	nop	
	jl	.label_2155
	mov	rsp, rsp
	mov	rbx, r15
.label_2157:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x30], rbx
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x38], rbx
	jmp	.label_2156
.label_2163:
	mov	rdx, qword ptr [r14 + 0x78]
	nop	
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_2156
	mov	rax, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [r14 + 0x58]
	mov	rbp, rbp
	cmp	rcx, rsi
	cmovg	rcx, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2154
	mov	rsi, qword ptr [r14 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	rbp, rbp
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbx + rax], dl
	jmp	.label_2161
	nop	word ptr cs:[rax + rax]
.label_2164:
	mov	rdx, qword ptr [r14 + 0x78]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14]
	mov	rdi, qword ptr [r14 + 8]
	add	rsi, qword ptr [r14 + 0x28]
	nop	
	movzx	esi, byte ptr [rax + rsi]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rdx + rsi]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rax], dl
.label_2161:
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_2164
	lea	rdi, [rdi]
	mov	rax, rcx
.label_2154:
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x30], rax
	mov	qword ptr [r14 + 0x38], rax
.label_2156:
	lea	rdi, [rdi]
	xor	eax, eax
.label_2159:
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41c4f0

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r13 + 0x48]
	lea	rdi, [rdi]
	mov	r12, qword ptr [r13 + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_2173
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_2170
.label_2173:
	mov	rcx, qword ptr [rax + r14*8]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_2175
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_2168
	mov	rbp, rbp
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	rsp, rsp
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_2174
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	nop	
	jmp	.label_2167
.label_2175:
	mov	rbp, rbp
	mov	qword ptr [rax + r14*8], rbx
	mov	rbp, rbp
	jmp	.label_2170
.label_2168:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_2167:
	nop	
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	lea	rdi, [rdi]
	mov	rdi, r13
	lea	rdi, [rdi]
	call	re_string_context_at
	mov	rsp, rsp
	lea	rdx, [rsp]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	ecx, eax
	mov	rsp, rsp
	call	re_acquire_state_context
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	bpl, bpl
	lea	rdi, [rdi]
	jne	.label_2170
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_2170:
	test	rbx, rbx
	je	.label_2172
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_2171
	lea	r12, [rbx + 8]
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rdx, r14
	lea	rsi, [rsi]
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	lea	rsi, [rsi]
	xor	eax, eax
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_2169
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	lea	rdi, [rdi]
	je	.label_2169
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	call	transit_state_bkref
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	nop	
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2169
	nop	
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + r14*8]
	mov	rsp, rsp
	jmp	.label_2169
.label_2172:
	mov	rsp, rsp
	mov	rax, rbx
	nop	
	jmp	.label_2169
.label_2171:
	mov	rax, rbx
.label_2169:
	nop	
	add	rsp, 0x18
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_2174:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_2169
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c6c0

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r15, rdx
	mov	rbp, rbp
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	rbp, rdi
	lea	rdi, [rdi]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_2176
	lea	rsi, [rsi]
	mov	r13, qword ptr [r12 + 8]
	mov	rsp, rsp
	test	r15, r15
	je	.label_2177
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	jle	.label_2177
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2177
	lea	rsi, [rsi]
	add	rdi, r13
	mov	rsp, rsp
	mov	qword ptr [rbp], rdi
	mov	rsp, rsp
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, 0xc
	nop	
	je	.label_2182
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rbp
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rcx, rbx
	jmp	.label_2179
.label_2177:
	test	r13, r13
	jle	.label_2176
	mov	qword ptr [rbp + 8], r13
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_2178
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2181
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, r15
	call	memcpy
	mov	rsp, rsp
	jmp	.label_2188
.label_2176:
	test	r15, r15
	je	.label_2178
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2178
	mov	qword ptr [rbp + 8], rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	lea	rdi, [rdi]
	jle	.label_2178
	lea	rdi, [rdi]
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2181
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	shl	rbx, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	jmp	.label_2188
.label_2178:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_2188
.label_2183:
	mov	rcx, rbx
	nop	dword ptr [rax]
.label_2179:
	mov	rbp, rbp
	cmp	rcx, qword ptr [r15 + 8]
	mov	rsp, rsp
	jge	.label_2180
	mov	rdx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rdx + rbp*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsi + rcx*8]
	lea	rdi, [rdi]
	cmp	rdx, rsi
	nop	
	jle	.label_2184
	mov	rbp, rbp
	inc	rcx
	mov	qword ptr [rax + r14*8], rsi
	inc	r14
	mov	rsp, rsp
	mov	r13, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	rbp, r13
	nop	
	jl	.label_2179
	jmp	.label_2180
.label_2184:
	nop	
	sete	bl
	mov	rbp, rbp
	movzx	ebx, bl
	add	rbx, rcx
	inc	rbp
	mov	qword ptr [rax + r14*8], rdx
	inc	r14
	mov	rsp, rsp
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	nop	
	jl	.label_2183
	jmp	.label_2185
.label_2180:
	mov	rsp, rsp
	mov	rbx, rcx
.label_2185:
	nop	
	sub	r13, rbp
	jle	.label_2186
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	nop	
	mov	rdx, r13
	call	memcpy
	lea	rsi, [rsi]
	sub	r14, rbp
	add	r14, qword ptr [r12 + 8]
	jmp	.label_2187
.label_2186:
	mov	rdx, qword ptr [r15 + 8]
	nop	
	sub	rdx, rbx
	jle	.label_2187
	mov	rsp, rsp
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rax + rbx*8]
	mov	rsp, rsp
	shl	rdx, 3
	lea	rdi, [rdi]
	call	memcpy
	nop	
	sub	r14, rbx
	add	r14, qword ptr [r15 + 8]
.label_2187:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	nop	
	mov	qword ptr [rax + 8], r14
.label_2188:
	xor	ecx, ecx
.label_2182:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_2181:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	lea	rdi, [rdi]
	jmp	.label_2182
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c960

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r14, r8
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	rsp, rsp
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2190
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_2196
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [r13 + 0xd8]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	mov	rbp, rbp
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_2192
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rsp, rsp
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	mov	rbp, rbp
	add	rbp, rbp
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x10]
.label_2196:
	nop	
	test	r15, r15
	nop	
	jle	.label_2189
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rsi, [rsi]
	lea	rcx, [rcx + rcx*4]
	nop	
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_2191
	nop	
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_2191
.label_2189:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xd8]
.label_2191:
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rbx
	mov	rbp, rbp
	mov	qword ptr [rax + rcx*8 + 8], r14
	nop	
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	mov	rbp, rbp
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	mov	rbp, rbp
	cmovne	si, dx
	mov	rbp, rbp
	mov	word ptr [rax + rcx*8 + 0x22], si
	nop	
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	nop	
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_2194
	mov	dword ptr [r13 + 0xe0], edi
.label_2194:
	lea	rdi, [rdi]
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x18]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	lea	rsi, [rsi]
	mov	r15, qword ptr [r13 + 0xc0]
	nop	
	cmp	rax, r14
	jg	.label_2197
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_2195
.label_2197:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	mov	rbp, rbp
	jg	.label_2193
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_2193
.label_2195:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	mov	rsp, rsp
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_2190
.label_2193:
	xor	ebp, ebp
	mov	rdx, r14
	nop	
	sub	rdx, r15
	jle	.label_2190
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0xc0], r14
.label_2190:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_2192:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	lea	rdi, [rdi]
	mov	ebp, 0xc
	jmp	.label_2190
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41cbc0

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	nop	
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rsp + 0x98], r9
	mov	rbp, rcx
	mov	r15, rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0xb0], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rsp, rsp
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rbx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rdi + 0xe0]
	mov	rsp, rsp
	lea	rcx, [rax + r9]
	cmp	rbx, rcx
	mov	rbp, rbp
	jle	.label_2227
	nop	
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x60], r8
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [r15 + 0x10]
.label_2211:
	mov	qword ptr [rsp + 0x28], r12
	nop	
	mov	r14, qword ptr [r15]
	test	r14, r14
	cmove	r14, rbp
	mov	rdi, r12
	mov	r12, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	mov	rbx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rdi + 0xb8], r13
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	cmp	r14, rbp
	lea	rsi, [rsi]
	jne	.label_2221
	mov	dword ptr [rsp + 0x18], eax
	mov	rbp, rbp
	mov	rbp, r14
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1811]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	lea	rsi, [rsi]
	call	malloc
	nop	
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2209
	mov	qword ptr [rsp + 8], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], r15
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 0x14], 0
	nop	
	lea	rsi, [rsp + 0x40]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 0x100]
	mov	rbp, rbp
	call	check_arrival_expand_ecl
	lea	rsi, [rsi]
	mov	r14d, eax
	mov	dword ptr [rsp + 0x14], r14d
	nop	
	test	r14d, r14d
	nop	
	jne	.label_2205
	mov	qword ptr [rsp + 0xb8], r12
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, rbp
	jmp	.label_2207
.label_2221:
	mov	rbp, qword ptr [r13 + r14*8]
	lea	rsi, [rsi]
	mov	rcx, r14
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_2212
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rbx
	nop	
	mov	qword ptr [rsp + 0xb8], r12
	mov	qword ptr [rsp + 0x30], r15
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_2214
	mov	dword ptr [rsp + 0x18], eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
	xor	ebx, ebx
	nop	
	mov	r13, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	r8, rcx
	jmp	.label_2217
.label_2212:
	mov	qword ptr [rsp + 8], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb8], r12
	mov	qword ptr [rsp + 0x30], r15
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], 0
	lea	rdi, [rdi]
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, rcx
	nop	
	jmp	.label_2220
.label_2214:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rbx
	mov	r14, qword ptr [rbp + 0x10]
	test	r14, r14
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	r8, rcx
	nop	
	jle	.label_2232
	mov	r12, r8
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], eax
	mov	qword ptr [rsp + 0x40], rbx
	lea	rdi, [rdi]
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	nop	
	test	rax, rax
	nop	
	je	.label_2209
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x18]
	lea	rsi, [rsi]
	shl	r14, 3
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0
	nop	
	mov	r13, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r8, r12
	jmp	.label_2217
.label_2227:
	mov	rsp, rsp
	movabs	rsi, 0x7fffffffffffffff
	sub	rsi, rbx
	mov	rbp, rbp
	mov	r14d, 0xc
	lea	rsi, [rsi]
	cmp	rsi, rcx
	jle	.label_2199
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], r8
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rcx, [rax + rcx + 1]
	lea	rsi, [rcx + rbx]
	mov	rsp, rsp
	mov	rax, rsi
	lea	rsi, [rsi]
	shr	rax, 0x3d
	mov	rbp, rbp
	jne	.label_2199
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	rbp, rbp
	mov	r12, rdi
	mov	rdi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x68], rsi
	lea	rdi, [rdi]
	lea	rsi, [rsi*8]
	lea	rdi, [rdi]
	call	realloc
	mov	r13, rax
	test	r13, r13
	mov	rbp, rbp
	je	.label_2199
	mov	qword ptr [r15 + 0x10], r13
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 8], rax
	mov	rbp, rbp
	lea	rdi, [r13 + rbx*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x18]
	nop	
	shl	rdx, 3
	mov	rsp, rsp
	xor	esi, esi
	call	memset
	nop	
	jmp	.label_2211
.label_2232:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], eax
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], 0
	xor	ebx, ebx
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x28]
.label_2217:
	test	byte ptr [rbp + 0x68], 0x40
	mov	rsp, rsp
	je	.label_2220
.label_2207:
	test	rbx, rbx
	nop	
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	je	.label_2223
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rdx, r8
	mov	rbx, r8
	mov	r8d, dword ptr [rsp + 0x100]
	mov	rbp, rbp
	call	expand_bkref_cache
	lea	rdi, [rdi]
	mov	r8, rbx
	mov	r14d, eax
	mov	dword ptr [rsp + 0x14], r14d
	nop	
	test	r14d, r14d
	jne	.label_2205
.label_2223:
	mov	rbx, r8
	lea	rdi, [rsp + 0x14]
	mov	rbp, rbp
	lea	rdx, [rsp + 0x40]
	mov	rsi, r15
	nop	
	mov	ecx, dword ptr [rsp + 0x18]
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_2200
	mov	eax, dword ptr [rsp + 0x14]
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_2203
.label_2200:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	r8, rbx
	lea	rdi, [rdi]
	mov	qword ptr [rax + r8*8], rbp
.label_2220:
	mov	r15, qword ptr [rsp + 0x98]
	cmp	r8, r15
	jge	.label_2210
	nop	
	lea	rbx, [rsp + 0x40]
	xor	ecx, ecx
.label_2225:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rbp
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [r13 + 0xe0]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jg	.label_2231
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], 0
	nop	
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + r8*8 + 8]
	test	rsi, rsi
	mov	r15, rbx
	je	.label_2226
	add	rsi, 8
	mov	rdi, r15
	mov	rsp, rsp
	mov	rbx, r8
	mov	rsp, rsp
	call	re_node_set_merge
	lea	rsi, [rsi]
	mov	r8, rbx
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_2203
.label_2226:
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_2204
	mov	rbx, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0x94], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	cmp	qword ptr [rbp + 0x28], 0
	mov	edi, 0
	jle	.label_2198
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_2222:
	mov	rax, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	mov	r15, qword ptr [rax + r12*8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	mov	rsp, rsp
	je	.label_2201
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, r8
	mov	rbp, rbp
	mov	r14, r8
	lea	rsi, [rsi]
	call	check_node_accept_bytes
	cmp	eax, 2
	mov	rbp, rbp
	jl	.label_2233
	mov	rcx, qword ptr [rbx + 0x18]
	nop	
	mov	rdx, r14
	mov	r14, rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + r15*8]
	lea	rdi, [rdi]
	movsxd	rbp, eax
	add	rbp, rdx
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	qword ptr [rsp + 0x78], 0
	test	rsi, rsi
	lea	r13, [rsp + 0x70]
	nop	
	je	.label_2213
	add	rsi, 8
	mov	rdi, r13
	mov	rsp, rsp
	mov	rbx, rcx
	mov	rbp, rbp
	call	re_node_set_merge
	mov	rsp, rsp
	mov	rcx, rbx
	mov	ebx, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x94], ebx
	test	ebx, ebx
	lea	rdi, [rdi]
	jne	.label_2206
.label_2213:
	mov	rdi, r13
	mov	rsi, rcx
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	je	.label_2219
	lea	rdi, [rsp + 0x94]
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, r13
	call	re_acquire_state
	mov	r13, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rcx + rbp*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	mov	rbp, rbp
	jne	.label_2208
	mov	ebx, dword ptr [rsp + 0x94]
	test	ebx, ebx
	je	.label_2208
	jmp	.label_2206
	nop	word ptr cs:[rax + rax]
.label_2233:
	mov	r14, rbx
	test	eax, eax
	jne	.label_2208
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r14]
	mov	r8, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_2201:
	mov	r14, rbx
	add	rsi, rbp
	mov	rdi, r13
	mov	rdx, r8
	call	check_node_accept
	test	al, al
	lea	rsi, [rsi]
	je	.label_2215
.label_2208:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x40]
	call	re_node_set_insert
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_2219
.label_2215:
	inc	r12
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	cmp	r12, qword ptr [rbp + 0x28]
	mov	r8, qword ptr [rsp + 0x20]
	mov	rbx, r14
	jl	.label_2222
	mov	rdi, qword ptr [rsp + 0x80]
	lea	r15, [rsp + 0x40]
.label_2198:
	nop	
	mov	rbx, r8
	mov	rsp, rsp
	call	free
	nop	
	mov	r8, rbx
	mov	dword ptr [rsp + 0x14], 0
.label_2204:
	lea	r14, [r8 + 1]
	cmp	qword ptr [rsp + 0x48], 0
	lea	rsi, [rsi]
	je	.label_2230
	lea	rsi, [rsi]
	mov	r12, r8
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0x100]
	nop	
	mov	ecx, ebp
	mov	rbp, rbp
	call	check_arrival_expand_ecl
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_2203
	nop	
	mov	rdi, r13
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, rbx
	mov	rbp, rbp
	mov	r8d, ebp
	call	expand_bkref_cache
	mov	dword ptr [rsp + 0x14], eax
	lea	rdi, [rdi]
	test	eax, eax
	mov	r8, r12
	nop	
	jne	.label_2203
.label_2230:
	mov	rbp, rbp
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	mov	rsp, rsp
	lea	rdi, [rsp + 0x14]
	nop	
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rdx, r15
	mov	rbx, r15
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_2224
	nop	
	mov	eax, dword ptr [rsp + 0x14]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_2203
.label_2224:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x68]
	nop	
	inc	rcx
	test	rbp, rbp
	mov	rax, qword ptr [r13 + 0xb8]
	nop	
	mov	qword ptr [rax + r12*8 + 8], rbp
	mov	rsp, rsp
	mov	eax, 0
	lea	rsi, [rsi]
	cmovne	rcx, rax
	mov	r15, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	cmp	r14, r15
	mov	r8, r14
	jl	.label_2225
	lea	rdi, [rdi]
	jmp	.label_2218
.label_2210:
	mov	rsp, rsp
	mov	r14, r8
.label_2218:
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + r15*8]
	lea	rax, [rcx + 8]
	test	rcx, rcx
	nop	
	cmove	rax, rcx
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], r14
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r13 + 0xb8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	je	.label_2202
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	test	rcx, rcx
	lea	rsi, [rsi]
	jle	.label_2202
	xor	r14d, r14d
	mov	rbp, rbp
	dec	rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	je	.label_2216
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x60]
	nop	word ptr cs:[rax + rax]
.label_2228:
	lea	rsi, [rsi]
	lea	rsi, [rdx + rcx]
	mov	rbp, rbp
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	nop	
	cmp	rdx, rcx
	jb	.label_2228
	lea	rsi, [rsi]
	jmp	.label_2229
.label_2219:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	call	free
	mov	ebx, 0xc
	mov	dword ptr [rsp + 0x14], ebx
	mov	rbp, rbp
	jmp	.label_2203
.label_2206:
	mov	rdi, qword ptr [rsp + 0x80]
	nop	
	call	free
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], ebx
.label_2203:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	call	free
	mov	r14d, dword ptr [rsp + 0x14]
	nop	
	jmp	.label_2199
.label_2216:
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x60]
.label_2229:
	cmp	rdx, -1
	nop	
	je	.label_2202
	cmp	qword ptr [rax + rdx*8], rbp
	nop	
	je	.label_2199
.label_2202:
	lea	rsi, [rsi]
	mov	r14d, 1
.label_2199:
	mov	rbp, rbp
	mov	eax, r14d
	lea	rdi, [rdi]
	add	rsp, 0xc8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_2205:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	nop	
	jmp	.label_2199
.label_2209:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x14], 0xc
	lea	rdi, [rdi]
	mov	r14d, 0xc
	nop	
	jmp	.label_2199
.label_2231:
	mov	r14, r8
	jmp	.label_2218
	nop	
	.section	.text
	.align	32
	#Procedure 0x41d590

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r15d, ecx
	mov	r13, rdx
	mov	rbp, rbp
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rsi, [rsi]
	lea	rdi, [r12*8]
	call	malloc
	nop	
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_2235
	test	r12, r12
	mov	rbp, rbp
	jle	.label_2239
	mov	rbp, rbp
	xor	r12d, r12d
	jmp	.label_2236
	nop	dword ptr [rax]
.label_2237:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	nop	
	jl	.label_2236
	lea	rsi, [rsi]
	jmp	.label_2239
	nop	word ptr cs:[rax + rax]
.label_2241:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_2234
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	nop	
	jmp	.label_2240
	nop	
.label_2236:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r8, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	lea	r9, [rdx + rdx*2]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_2234
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	dword ptr [rax]
.label_2238:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbx + rcx + 8]
	lea	rdi, [rdi]
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_2242
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + rcx], r13
	je	.label_2241
.label_2242:
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jl	.label_2238
.label_2234:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_2240:
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	je	.label_2237
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	lea	rsi, [rsi]
	jmp	.label_2235
.label_2239:
	nop	
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	mov	rsp, rsp
	xor	ebx, ebx
.label_2235:
	mov	eax, ebx
	nop	
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d750

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x68
	mov	r15, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], r14
	nop	
	mov	r10, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	mov	rax, qword ptr [r10 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x60], rax
	mov	r9, qword ptr [r10 + 0xc8]
	xor	eax, eax
	test	r9, r9
	lea	rdi, [rdi]
	mov	edx, 0
	lea	rdi, [rdi]
	jle	.label_2269
	nop	
	mov	rsi, qword ptr [r10 + 0xd8]
	nop	
	xor	edx, edx
	mov	rdi, r9
	nop	
.label_2254:
	mov	rbp, rbp
	lea	rbp, [rdi + rdx]
	mov	rbx, rbp
	shr	rbx, 0x3f
	lea	rsi, [rsi]
	add	rbx, rbp
	mov	rsp, rsp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [rsi + rbp*8 + 8], r15
	cmovge	rdi, rbx
	lea	rbp, [rbx + 1]
	lea	rsi, [rsi]
	cmovl	rdx, rbp
	mov	rbp, rbp
	cmp	rdx, rdi
	jl	.label_2254
.label_2269:
	mov	rsp, rsp
	cmp	rdx, r9
	mov	rsp, rsp
	jge	.label_2244
	cmp	rdx, -1
	mov	rbp, rbp
	je	.label_2244
	mov	qword ptr [rsp + 0x28], rcx
	mov	dword ptr [rsp + 0x38], r8d
	mov	rbp, rbp
	mov	rcx, qword ptr [r10 + 0xd8]
	lea	rdx, [rdx + rdx*4]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	mov	rsp, rsp
	jne	.label_2244
	mov	dword ptr [rsp + 0x3c], eax
	mov	rbp, rbp
	jmp	.label_2260
.label_2246:
	mov	rcx, qword ptr [r10 + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_2260:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r13, [rcx + rax*8]
	nop	
.label_2262:
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_2261
	mov	rdx, qword ptr [r13]
	dec	rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	esi, 0
	je	.label_2271
	nop	
.label_2250:
	mov	rsp, rsp
	lea	rbp, [rsi + rdi]
	lea	rsi, [rsi]
	shr	rbp, 1
	mov	rsp, rsp
	cmp	qword ptr [rax + rbp*8], rdx
	nop	
	lea	rbx, [rbp + 1]
	lea	rsi, [rsi]
	cmovl	rsi, rbx
	mov	rbp, rbp
	cmovge	rdi, rbp
	cmp	rsi, rdi
	mov	rbp, rbp
	jb	.label_2250
.label_2271:
	mov	rbp, rbp
	cmp	rsi, -1
	je	.label_2261
	cmp	qword ptr [rax + rsi*8], rdx
	mov	rbp, rbp
	jne	.label_2261
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	lea	rdi, [rdi]
	cmp	r12, r15
	lea	rsi, [rsi]
	jne	.label_2267
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x60]
	nop	
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	edx, 0
	mov	rbp, rbp
	je	.label_2272
	nop	dword ptr [rax + rax]
.label_2256:
	lea	rsi, [rdx + rcx]
	lea	rdi, [rdi]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbx
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	mov	rsp, rsp
	cmovge	rcx, rsi
	mov	rsp, rsp
	cmp	rdx, rcx
	jb	.label_2256
.label_2272:
	cmp	rdx, -1
	lea	rdi, [rdi]
	je	.label_2266
	lea	rsi, [rsi]
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], rbx
	jne	.label_2266
	mov	rbp, r14
	jmp	.label_2243
.label_2267:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r10 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_2274
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	mov	rbp, rbp
	jle	.label_2255
	lea	rsi, [rsi]
	mov	rcx, rdi
	dec	rcx
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	edx, 0
	mov	rbp, rbp
	je	.label_2259
.label_2258:
	lea	rsi, [rdx + rcx]
	mov	rsp, rsp
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	lea	rsi, [rsi]
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2258
.label_2259:
	lea	rdi, [rdi]
	cmp	rdx, -1
	je	.label_2255
	mov	ecx, 4
	mov	rsp, rsp
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_2273
.label_2255:
	nop	
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	test	rbp, rbp
	jle	.label_2248
	mov	qword ptr [rsp + 0x40], rdi
	shl	rdi, 3
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_2270
	mov	rsi, qword ptr [rbx + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	nop	
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_2268
.label_2266:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1811]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_2245
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	xor	eax, eax
.label_2263:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x5c], eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x28]
	mov	ecx, dword ptr [rsp + 0x38]
	call	check_arrival_expand_ecl
	lea	rdi, [rdi]
	mov	ebx, eax
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rbp, r14
	mov	rsi, r12
	call	re_node_set_merge
	mov	r14d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	edx, dword ptr [rsp + 0x5c]
	mov	rsp, rsp
	mov	eax, ebx
	or	eax, edx
	mov	ecx, 2
	mov	rsp, rsp
	or	eax, r14d
	mov	r10, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jne	.label_2247
.label_2253:
	mov	r14, rbp
	jmp	.label_2243
.label_2274:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1811]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	nop	
	mov	edi, 8
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_2264
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_2265
.label_2248:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
.label_2268:
	mov	rsp, rsp
	xor	ebx, ebx
.label_2251:
	mov	dword ptr [rsp + 0xc], ebx
	mov	rsp, rsp
	lea	rdi, [rsp + 0x40]
	nop	
	mov	rsi, r14
	call	re_node_set_insert
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_2252
	xor	al, 1
	mov	rsp, rsp
	jne	.label_2252
.label_2265:
	lea	rdi, [rsp + 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rbp, rbp
	mov	r10, rbx
	mov	rax, qword ptr [r10 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	nop	
	sete	al
	mov	edx, dword ptr [rsp + 0xc]
	nop	
	test	edx, edx
	lea	rsi, [rsi]
	setne	cl
	mov	rbp, rbp
	and	cl, al
	movzx	ecx, cl
	nop	
	mov	eax, dword ptr [rsp + 0x3c]
	lea	rsi, [rsi]
	cmovne	eax, edx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x3c], eax
.label_2273:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x20]
.label_2243:
	test	ecx, ecx
	je	.label_2261
	nop	
	cmp	ecx, 4
	nop	
	jne	.label_2249
	nop	dword ptr [rax + rax]
.label_2261:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	rdi, [rdi]
	lea	r13, [r13 + 0x28]
	mov	rbp, rbp
	jne	.label_2262
	nop	
	jmp	.label_2244
.label_2245:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rsi, [rsi]
	jmp	.label_2263
.label_2247:
	lea	rsi, [rsi]
	test	ebx, ebx
	cmovne	r14d, ebx
	test	edx, edx
	cmovne	r14d, edx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xc], r14d
	mov	rsp, rsp
	mov	ecx, 1
	mov	dword ptr [rsp + 0x3c], r14d
	mov	rbp, rbp
	jmp	.label_2253
.label_2252:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	ebx, ebx
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rdi, [rdi]
	cmove	ebx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], ebx
	nop	
	mov	ecx, 1
	mov	dword ptr [rsp + 0x3c], ebx
	lea	rsi, [rsi]
	jmp	.label_2257
.label_2264:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x3c], 0xc
	lea	rdi, [rdi]
	mov	ecx, 1
.label_2257:
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_2243
.label_2270:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	ebx, 0xc
	nop	
	jmp	.label_2251
.label_2249:
	lea	rdi, [rdi]
	cmp	ecx, 2
	lea	rsi, [rsi]
	je	.label_2246
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x3c]
.label_2244:
	add	rsp, 0x68
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41dd60

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r15d, r8d
	lea	rdi, [rdi]
	mov	r14, rcx
	mov	rbp, rbp
	mov	rbp, rdx
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	nop	
	jmp	.label_2281
	nop	
.label_2282:
	mov	rsp, rsp
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, rbp
	mov	rbp, qword ptr [rax]
.label_2281:
	nop	
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_2278
	mov	rsp, rsp
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	lea	rdi, [rdi]
	je	.label_2283
	nop	dword ptr [rax]
.label_2275:
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	shr	rsi, 1
	mov	rsp, rsp
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	nop	
	cmovge	rax, rsi
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rsi, [rsi]
	jb	.label_2275
.label_2283:
	mov	rsp, rsp
	cmp	rdx, -1
	lea	rsi, [rsi]
	je	.label_2278
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_2284
.label_2278:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	lea	rdi, [rdi]
	jne	.label_2277
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rcx], r14
	je	.label_2276
.label_2277:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	nop	
	mov	eax, 0xc
	mov	rsp, rsp
	test	cl, cl
	je	.label_2280
	mov	rax, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	lea	rbp, [rbp + rbp*2]
	nop	
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_2279
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_2282
	jmp	.label_2284
	nop	word ptr cs:[rax + rax]
.label_2279:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	rcx, r14
	mov	rsp, rsp
	mov	r8d, r15d
	lea	rsi, [rsi]
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	mov	rsp, rsp
	jne	.label_2280
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_2282
.label_2276:
	cmp	r15d, 9
	jne	.label_2284
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	nop	
	je	.label_2280
.label_2284:
	nop	
	xor	eax, eax
.label_2280:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41df00

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r14, rdi
	nop	
	mov	r8, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	r8, r8
	je	.label_2285
	mov	rsp, rsp
	mov	r15, r8
	jle	.label_2297
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_2300
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	nop	
	mov	r15, r8
	je	.label_2300
	movq	xmm0, r8
	lea	rbx, [r8 - 4]
	mov	rsp, rsp
	mov	eax, ebx
	shr	eax, 2
	lea	rsi, [rsi]
	inc	eax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	test	al, 3
	nop	
	je	.label_2307
	nop	
	lea	ebp, [r8 - 4]
	nop	
	shr	ebp, 2
	nop	
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2294:
	nop	
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	lea	rdi, [rdi]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	mov	rbp, rbp
	paddq	xmm0, xmm2
	nop	
	paddq	xmm1, xmm3
	add	rdi, 4
	mov	rbp, rbp
	inc	rbp
	lea	rsi, [rsi]
	jne	.label_2294
	jmp	.label_2304
.label_2307:
	pxor	xmm1, xmm1
.label_2304:
	mov	rbp, rbp
	cmp	rbx, 0xc
	mov	rsp, rsp
	jb	.label_2305
	nop	
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	lea	rdi, [rdi]
	sub	rax, rdi
	mov	rbp, rbp
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr cs:[rax + rax]
.label_2286:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	lea	rsi, [rsi]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	lea	rdi, [rdi]
	paddq	xmm3, xmm1
	nop	
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	lea	rsi, [rsi]
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	mov	rbp, rbp
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	nop	
	paddq	xmm4, xmm2
	mov	rbp, rbp
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rdi]
	mov	rsp, rsp
	paddq	xmm0, xmm4
	mov	rsp, rsp
	paddq	xmm1, xmm5
	add	rdi, 0x80
	lea	rsi, [rsi]
	add	rax, -0x10
	mov	rsp, rsp
	jne	.label_2286
.label_2305:
	lea	rsi, [rsi]
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	mov	rbp, rbp
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_2297
.label_2300:
	mov	rdx, r8
	lea	rdi, [rdi]
	sub	rdx, rax
	nop	
	lea	rcx, [rcx + rax*8]
	nop	word ptr cs:[rax + rax]
.label_2299:
	add	r15, qword ptr [rcx]
	lea	rsi, [rsi]
	add	rcx, 8
	dec	rdx
	jne	.label_2299
.label_2297:
	mov	rdx, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	mov	rsp, rsp
	and	rcx, r15
	nop	
	lea	rax, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rax*8]
	mov	rsp, rsp
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_2302
	nop	
	mov	rdx, qword ptr [rdx + rax*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_2303:
	lea	rsi, [rsi]
	test	r12, r12
	nop	
	je	.label_2287
	mov	r13, qword ptr [rdx + rbx*8]
	lea	rsi, [rsi]
	cmp	r15, qword ptr [r13]
	jne	.label_2287
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_2287
	nop	
	mov	rdi, r8
.label_2292:
	test	rdi, rdi
	nop	
	jle	.label_2289
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rsi, [rsi]
	lea	rdi, [rdi - 1]
	mov	rbp, rbp
	je	.label_2292
	nop	dword ptr [rax]
.label_2287:
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, rcx
	lea	rsi, [rsi]
	jl	.label_2303
.label_2302:
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	mov	edi, 0x70
	mov	esi, 1
	mov	rsp, rsp
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2288
	mov	rbp, rbp
	mov	rbp, r13
	add	rbp, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 8]
	nop	
	test	rbx, rbx
	jle	.label_2301
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x18], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2295
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r14
	lea	r14, [r12 + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rbp, rbp
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x50], rbp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_2309
.label_2301:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r14
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	mov	rsp, rsp
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbp
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	jle	.label_2310
	mov	rbp, rbp
	lea	r14, [r12 + 0x10]
.label_2309:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2306:
	mov	r8, qword ptr [rdi]
	mov	rcx, qword ptr [r14]
	mov	rdx, qword ptr [rcx + rax*8]
	nop	
	shl	rdx, 4
	mov	ebp, dword ptr [r8 + rdx + 8]
	lea	rsi, [rsi]
	mov	ecx, ebp
	nop	
	and	ecx, 0x3ffff
	cmp	ecx, 1
	je	.label_2291
	movzx	esi, bpl
	mov	rsp, rsp
	shr	ebp, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	cl, bl
	mov	rbp, rbp
	shr	cl, 5
	movzx	ecx, cl
	or	ecx, ebp
	shl	cl, 5
	and	cl, 0x20
	mov	rsp, rsp
	and	bl, 0xdf
	mov	rsp, rsp
	or	bl, cl
	mov	byte ptr [r13 + 0x68], bl
	lea	rsi, [rsi]
	cmp	esi, 0xc
	je	.label_2308
	mov	rbp, rbp
	cmp	esi, 4
	je	.label_2293
	cmp	esi, 2
	lea	rsi, [rsi]
	jne	.label_2296
	or	bl, 0x10
	jmp	.label_2298
.label_2293:
	or	bl, 0x40
	jmp	.label_2298
.label_2296:
	lea	rdi, [rdi]
	lea	rcx, [r8 + rdx + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_2291
.label_2308:
	mov	rbp, rbp
	or	bl, 0x80
.label_2298:
	mov	rsp, rsp
	mov	byte ptr [r13 + 0x68], bl
.label_2291:
	mov	rbp, rbp
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2306
.label_2310:
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	register_state
	test	eax, eax
	mov	rbp, rbp
	je	.label_2289
	mov	rbp, rbp
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jmp	.label_2288
.label_2285:
	lea	rsi, [rsi]
	mov	dword ptr [r14], 0
	jmp	.label_2290
.label_2295:
	mov	rdi, r13
	call	free
.label_2288:
	mov	rbp, rbp
	mov	dword ptr [r14], 0xc
.label_2290:
	lea	rsi, [rsi]
	xor	r13d, r13d
.label_2289:
	mov	rbp, rbp
	mov	rax, r13
	nop	
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41e350

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	nop	
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	lea	rdi, [rdi]
	cmp	r10d, 7
	je	.label_2330
	mov	rsp, rsp
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r8d, 1
	lea	rdi, [rdi]
	je	.label_2319
	lea	rax, [rcx + 1]
	nop	
	mov	r11, qword ptr [rdx + 0x30]
	mov	rsp, rsp
	cmp	rax, r11
	lea	rsi, [rsi]
	jge	.label_2319
	lea	rax, [rcx*4]
	mov	rbp, rbp
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2322:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2319
	mov	rbp, rbp
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	lea	rdi, [rdi]
	jl	.label_2322
.label_2319:
	cmp	r10d, 5
	jne	.label_2333
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2314
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2335
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rsi + rcx]
	nop	
	cmp	esi, 0xa
	nop	
	je	.label_2314
.label_2335:
	test	al, al
	js	.label_2315
	mov	r14d, ebx
	jmp	.label_2314
.label_2333:
	mov	rsp, rsp
	cmp	ebx, 1
	setg	al
	mov	rbp, rbp
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2314
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_2314
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	nop	
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_2328
	cmp	qword ptr [r15 + 0x48], 0
	mov	rbp, rbp
	jne	.label_2328
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2334
.label_2328:
	cmp	r8d, 1
	jne	.label_2324
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	jmp	.label_2334
.label_2324:
	nop	
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2334:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2313
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax]
.label_2323:
	nop	
	cmp	r12d, dword ptr [rcx + rdx*4]
	nop	
	je	.label_2321
	inc	rdx
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_2323
.label_2313:
	cmp	qword ptr [r15 + 0x48], 0
	nop	
	jle	.label_2325
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2318:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	mov	edi, r12d
	call	iswctype
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_2321
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2318
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x40]
.label_2325:
	nop	
	xor	ecx, ecx
	test	rsi, rsi
	lea	rdi, [rdi]
	jle	.label_2311
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2326:
	cmp	dword ptr [rax + rdx*4], r12d
	lea	rdi, [rdi]
	jg	.label_2327
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	cmp	r12d, dword ptr [rcx + rdx*4]
	nop	
	jle	.label_2337
.label_2327:
	lea	rdi, [rdi]
	inc	rdx
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2326
	jmp	.label_2311
.label_2321:
	lea	rsi, [rsi]
	mov	ecx, ebx
.label_2311:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2331
	mov	r14d, ecx
	jmp	.label_2314
.label_2331:
	test	ecx, ecx
	mov	rbp, rbp
	jg	.label_2314
	test	ebx, ebx
	mov	r14d, 1
	mov	rsp, rsp
	cmovg	r14d, ebx
	jmp	.label_2314
.label_2315:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	byte ptr [rax + rcx], 0
	je	.label_2314
	mov	rbp, rbp
	mov	r14d, ebx
	nop	
	jmp	.label_2314
.label_2330:
	mov	rax, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	xor	r14d, r14d
	cmp	esi, 0xc2
	jae	.label_2317
.label_2314:
	mov	rbp, rbp
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_2337:
	nop	
	mov	ecx, ebx
	jmp	.label_2311
.label_2317:
	nop	
	lea	rdi, [rcx + 2]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rdi, rdx
	jg	.label_2314
	mov	bl, byte ptr [rcx + rax + 1]
	lea	rsi, [rsi]
	movzx	edi, sil
	mov	rsp, rsp
	cmp	edi, 0xdf
	mov	rsp, rsp
	ja	.label_2332
	lea	rsi, [rsi]
	movzx	eax, bl
	lea	rdi, [rdi]
	cmp	eax, 0xc0
	sbb	eax, eax
	mov	rbp, rbp
	and	eax, 2
	xor	r14d, r14d
	test	bl, bl
	cmovs	r14d, eax
	jmp	.label_2314
.label_2332:
	cmp	edi, 0xef
	nop	
	ja	.label_2316
	mov	esi, 3
	lea	rdi, [rdi]
	cmp	edi, 0xe0
	jne	.label_2312
	lea	rsi, [rsi]
	movzx	edi, bl
	cmp	edi, 0xa0
	mov	rsp, rsp
	jb	.label_2314
	jmp	.label_2312
.label_2316:
	cmp	edi, 0xf7
	nop	
	ja	.label_2329
	mov	esi, 4
	cmp	edi, 0xf0
	jne	.label_2312
	mov	rsp, rsp
	movzx	edi, bl
	mov	rsp, rsp
	cmp	edi, 0x90
	lea	rdi, [rdi]
	jb	.label_2314
	jmp	.label_2312
.label_2329:
	mov	rsp, rsp
	cmp	edi, 0xfb
	ja	.label_2336
	nop	
	mov	esi, 5
	lea	rsi, [rsi]
	cmp	edi, 0xf8
	jne	.label_2312
	movzx	edi, bl
	cmp	edi, 0x88
	lea	rdi, [rdi]
	jb	.label_2314
	mov	rsp, rsp
	jmp	.label_2312
.label_2336:
	cmp	edi, 0xfd
	ja	.label_2314
	mov	esi, 6
	cmp	edi, 0xfc
	jne	.label_2312
	mov	rbp, rbp
	movzx	edi, bl
	cmp	edi, 0x84
	mov	rbp, rbp
	jb	.label_2314
.label_2312:
	lea	rdi, [rdi]
	mov	edi, esi
	mov	rbp, rbp
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	nop	
	jg	.label_2314
	nop	
	add	rax, rcx
	mov	rbp, rbp
	mov	ecx, 1
.label_2320:
	nop	
	mov	dl, byte ptr [rax + rcx]
	mov	rsp, rsp
	test	dl, dl
	lea	rsi, [rsi]
	jns	.label_2314
	movzx	edx, dl
	cmp	edx, 0xbf
	ja	.label_2314
	mov	rsp, rsp
	inc	rcx
	cmp	rcx, rdi
	mov	rsp, rsp
	jl	.label_2320
	mov	r14d, esi
	jmp	.label_2314
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e740

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	lea	rsi, [rsi]
	push	rbp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rax, qword ptr [rdi + 8]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebx, dword ptr [rsi + 8]
	mov	rbp, rbp
	movzx	ebp, bl
	mov	rbp, rbp
	xor	eax, eax
	nop	
	dec	ebp
	cmp	ebp, 6
	lea	rsi, [rsi]
	ja	.label_2338
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rbp * 8) + label_2344]]
.label_2940:
	movzx	eax, byte ptr [rsi]
	cmp	eax, ecx
	je	.label_2342
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_2338
.label_2941:
	mov	rsi, qword ptr [rsi]
	nop	
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 6
	mov	rsp, rsp
	movzx	eax, al
	mov	rax, qword ptr [rsi + rax*8]
	bt	rax, rcx
	mov	rsp, rsp
	jb	.label_2342
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_2338
.label_2943:
	lea	rdi, [rdi]
	test	cl, cl
	js	.label_2346
.label_2942:
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_2341
	movzx	eax, cl
	nop	
	cmp	eax, 0xa
	lea	rsi, [rsi]
	jne	.label_2342
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2342
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_2338
.label_2341:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	lea	rsi, [rsi]
	js	.label_2345
.label_2342:
	mov	ebp, ebx
	mov	rsp, rsp
	shr	ebp, 8
	mov	al, 1
	lea	rsi, [rsi]
	test	bp, 0x3ff
	lea	rsi, [rsi]
	je	.label_2338
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	edx, eax
	mov	rsp, rsp
	call	re_string_context_at
	nop	
	mov	ecx, eax
	and	ecx, 1
	lea	rsi, [rsi]
	test	bpl, 4
	mov	rsp, rsp
	je	.label_2340
	mov	rsp, rsp
	test	ecx, ecx
	jne	.label_2340
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_2338
.label_2340:
	lea	rdi, [rdi]
	test	bh, 8
	lea	rdi, [rdi]
	je	.label_2343
	nop	
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_2343
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_2338
.label_2346:
	xor	eax, eax
	nop	
	jmp	.label_2338
.label_2343:
	test	bh, 0x20
	mov	rsp, rsp
	je	.label_2339
	mov	ecx, eax
	mov	rbp, rbp
	and	ecx, 2
	lea	rdi, [rdi]
	jne	.label_2339
	mov	rbp, rbp
	xor	eax, eax
	jmp	.label_2338
.label_2345:
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_2338
.label_2339:
	lea	rdi, [rdi]
	and	eax, 8
	nop	
	test	bpl, bpl
	mov	rsp, rsp
	setns	cl
	mov	rsp, rsp
	shr	eax, 3
	mov	rbp, rbp
	or	al, cl
.label_2338:
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41e8d0

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	lea	rdi, [rdi]
	mov	r13, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], r13
	mov	r12, rdi
	mov	qword ptr [rbp - 0xa8], r12
	mov	edi, 0x3800
	call	malloc
	mov	rsi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rsi
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_2403
	lea	rax, [r13 + 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	nop	
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	lea	rsi, [rsi]
	xor	r14d, r14d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_2378
	lea	rax, [rsi + 0x1800]
	mov	qword ptr [rbp - 0x30], rax
	xor	ebx, ebx
	mov	rsp, rsp
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2374:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rbx
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [r12]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rdx
	nop	
	mov	eax, dword ptr [rcx + rax + 8]
	mov	rbp, rbp
	movzx	r10d, al
	cmp	r10d, 1
	mov	rsp, rsp
	jne	.label_2428
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rcx]
	mov	edx, 1
	mov	rbp, rbp
	shl	rdx, cl
	mov	rbp, rbp
	shr	cl, 6
	lea	rdi, [rdi]
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x90], rdx
	jmp	.label_2356
	nop	word ptr cs:[rax + rax]
.label_2428:
	cmp	r10d, 7
	je	.label_2347
	cmp	r10d, 5
	je	.label_2349
	lea	rdi, [rdi]
	cmp	r10d, 3
	nop	
	jne	.label_2352
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rcx]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x90]
	movaps	xmmword ptr [rbp - 0x90], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	por	xmm0, xmmword ptr [rbp - 0x80]
	nop	
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	jmp	.label_2356
.label_2347:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], -1
	mov	rbp, rbp
	mov	rcx, qword ptr [r12 + 0xd8]
	mov	rsp, rsp
	mov	rdx, -2
	mov	rsp, rsp
	test	cl, 0x40
	jne	.label_2368
	nop	
	mov	qword ptr [rbp - 0x90], -0x401
	mov	rdx, -0x402
.label_2368:
	nop	
	test	cl, cl
	lea	rsi, [rsi]
	jns	.label_2356
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rdx
	lea	rdi, [rdi]
	jmp	.label_2356
.label_2349:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_2386
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x78]
	nop	
	movdqu	xmm0, xmmword ptr [rcx]
	nop	
	por	xmm0, xmmword ptr [rbp - 0x90]
	mov	rbp, rbp
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	mov	rbp, rbp
	por	xmm1, xmmword ptr [rbp - 0x80]
	movdqa	xmmword ptr [rbp - 0x80], xmm1
	lea	rsi, [rsi]
	movq	rcx, xmm0
	jmp	.label_2389
.label_2386:
	mov	qword ptr [rbp - 0x78], -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], -1
	mov	qword ptr [rbp - 0x90], -1
	lea	rsi, [rsi]
	mov	rcx, -1
.label_2389:
	mov	rdx, qword ptr [r12 + 0xd8]
	test	dl, 0x40
	mov	rbp, rbp
	jne	.label_2412
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x90], rcx
.label_2412:
	test	dl, dl
	jns	.label_2356
	lea	rdi, [rdi]
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x90], rcx
	nop	dword ptr [rax]
.label_2356:
	mov	rsp, rsp
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, ecx
	and	edx, 0x3ff
	mov	rbp, rbp
	je	.label_2401
	lea	rdi, [rdi]
	test	cl, 0x20
	mov	rsp, rsp
	je	.label_2431
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	test	dh, 4
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	mov	rsp, rsp
	je	.label_2352
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], 0x400
.label_2431:
	nop	
	test	cl, cl
	js	.label_2439
	lea	rsi, [rsi]
	test	cl, 4
	je	.label_2441
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	and	edx, 0x4000ff
	cmp	edx, 1
	je	.label_2439
	cmp	dword ptr [r12 + 0xb4], 1
	jle	.label_2421
	mov	rdx, qword ptr [r12 + 0x78]
	mov	rbp, rbp
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rdx]
	nop	
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x90]
	movdqa	xmmword ptr [rbp - 0x90], xmm1
	movq	r8, xmm1
	mov	rbp, rbp
	pshufd	xmm0, xmm1, 0x4e
	mov	rsp, rsp
	movq	r9, xmm0
	nop	
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	movdqu	xmm1, xmmword ptr [rdx + 0x10]
	nop	
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	lea	rdi, [rdi]
	pand	xmm1, xmmword ptr [rbp - 0x80]
	mov	rdi, rbx
	movq	rbx, xmm1
	or	rbx, r8
	or	rbx, r9
	movdqa	xmmword ptr [rbp - 0x80], xmm1
	pshufd	xmm0, xmm1, 0x4e
	lea	rdi, [rdi]
	movq	rdx, xmm0
	mov	rsp, rsp
	or	rdx, rbx
	nop	
	mov	rbx, rdi
	mov	rsp, rsp
	jmp	.label_2350
.label_2421:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	lea	rsi, [rsi]
	pand	xmm0, xmmword ptr [rbp - 0x90]
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	movq	rdx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r8, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x80]
	movq	rdi, xmm0
	mov	rsp, rsp
	or	rdi, rdx
	or	rdi, r8
	nop	
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	lea	rdi, [rdi]
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	or	rdx, rdi
.label_2350:
	test	rdx, rdx
	je	.label_2352
.label_2441:
	lea	rsi, [rsi]
	test	cl, 8
	mov	rbp, rbp
	je	.label_2401
	mov	rbp, rbp
	cmp	r10d, 1
	setne	cl
	nop	
	test	eax, 0x400000
	lea	rsi, [rsi]
	je	.label_2405
	mov	rbp, rbp
	test	cl, cl
	mov	rbp, rbp
	jne	.label_2405
	nop	word ptr cs:[rax + rax]
.label_2439:
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	mov	rsp, rsp
	jmp	.label_2352
.label_2405:
	nop	
	cmp	dword ptr [r12 + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_2357
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rax]
	nop	
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x90]
	mov	rbp, rbp
	movdqa	xmmword ptr [rbp - 0x90], xmm1
	lea	rsi, [rsi]
	movq	rcx, xmm1
	lea	rsi, [rsi]
	pshufd	xmm0, xmm1, 0x4e
	mov	rsp, rsp
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [rax + 0x10]
	pand	xmm1, xmm0
	nop	
	pandn	xmm1, xmmword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	movq	rdi, xmm1
	or	rdi, rcx
	mov	rsp, rsp
	or	rdi, rdx
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rbp - 0x80], xmm1
	nop	
	pshufd	xmm0, xmm1, 0x4e
	movq	rax, xmm0
	or	rax, rdi
	jmp	.label_2426
.label_2357:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x90]
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	movq	rax, xmm0
	pshufd	xmm0, xmm0, 0x4e
	nop	
	movq	rcx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	lea	rsi, [rsi]
	pandn	xmm0, xmmword ptr [rbp - 0x80]
	nop	
	movq	rdx, xmm0
	or	rdx, rax
	mov	rbp, rbp
	or	rdx, rcx
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	mov	rsp, rsp
	pshufd	xmm0, xmm0, 0x4e
	lea	rdi, [rdi]
	movq	rax, xmm0
	mov	rsp, rsp
	or	rax, rdx
.label_2426:
	test	rax, rax
	mov	rbp, rbp
	je	.label_2352
	nop	
.label_2401:
	nop	
	test	r14, r14
	nop	
	jle	.label_2371
	mov	qword ptr [rbp - 0x58], rsi
	mov	r13, qword ptr [rbp - 0x30]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, r10d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50], edx
	nop	word ptr cs:[rax + rax]
.label_2430:
	lea	rdi, [rdi]
	cmp	edx, 1
	jne	.label_2381
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	movzx	eax, byte ptr [rax]
	mov	cl, al
	shr	cl, 6
	nop	
	movzx	ecx, cl
	mov	rcx, qword ptr [r13 + rcx*8]
	bt	rcx, rax
	jae	.label_2383
.label_2381:
	nop	
	mov	qword ptr [rbp - 0xb0], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], r14
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	r12, qword ptr [r13]
	mov	r14, qword ptr [r13 + 8]
	lea	rdi, [rdi]
	mov	r9, r12
	mov	rsp, rsp
	and	r9, rax
	mov	r10, r14
	and	r10, rcx
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rbp, rbp
	or	rbx, r9
	mov	rdi, qword ptr [rbp - 0x80]
	mov	r15, qword ptr [r13 + 0x10]
	mov	r11, r15
	and	r11, rdi
	lea	rdi, [rdi]
	or	rbx, r11
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r13 + 0x18]
	mov	r8, rsi
	and	r8, rdx
	or	rbx, r8
	mov	rbp, rbp
	je	.label_2388
	lea	rdi, [rdi]
	mov	rbx, rax
	not	rbx
	and	rbx, r12
	lea	rdi, [rdi]
	not	r12
	lea	rdi, [rdi]
	and	r12, rax
	mov	qword ptr [rbp - 0x68], r12
	mov	qword ptr [rbp - 0x90], r12
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	not	rdx
	nop	
	and	rdx, r14
	lea	rdi, [rdi]
	mov	rax, rdx
	or	rax, rbx
	lea	rdi, [rdi]
	not	r14
	lea	rdi, [rdi]
	and	r14, rcx
	mov	qword ptr [rbp - 0x88], r14
	lea	rdi, [rdi]
	mov	rcx, rdi
	not	rcx
	and	rcx, r15
	or	rax, rcx
	lea	rsi, [rsi]
	not	r15
	and	r15, rdi
	mov	qword ptr [rbp - 0x80], r15
	mov	r12, qword ptr [rbp - 0xb8]
	mov	rdi, r12
	not	rdi
	and	rdi, rsi
	not	rsi
	and	rsi, r12
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rsi
	nop	
	or	rax, rdi
	mov	rbp, rbp
	mov	r12, rsi
	je	.label_2417
	mov	qword ptr [rbp - 0xb8], r12
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rax, rsi
	shl	rax, 5
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + rax], rbx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + rax + 8], rdx
	mov	rbp, rbp
	mov	qword ptr [r12 + rax + 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [r12 + rax + 0x18], rdi
	mov	qword ptr [r13], r9
	mov	qword ptr [r13 + 8], r10
	nop	
	mov	qword ptr [r13 + 0x10], r11
	mov	qword ptr [r13 + 0x18], r8
	nop	
	lea	r12, [rsi + rsi*2]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0xe0]
	lea	rcx, [rbx + r12*8]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + r12*8 + 8], rdi
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	jle	.label_2444
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	qword ptr [rcx], rdi
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rbp, rbp
	shl	rdi, 3
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbx + r12*8 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	r12, qword ptr [rbp - 0xb8]
	je	.label_2379
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0xc0]
	nop	
	shl	rdx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	call	memcpy
	nop	
	jmp	.label_2393
	nop	word ptr cs:[rax + rax]
.label_2388:
	mov	r14, qword ptr [rbp - 0xa0]
	mov	rbx, qword ptr [rbp - 0xd0]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	edx, dword ptr [rbp - 0x50]
	jmp	.label_2383
.label_2444:
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	mov	r12, qword ptr [rbp - 0xb8]
.label_2393:
	mov	rsp, rsp
	inc	qword ptr [rbp - 0xa0]
.label_2417:
	mov	rbx, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbx*8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	re_node_set_insert
	lea	rdi, [rdi]
	test	al, al
	je	.label_2415
	mov	rsp, rsp
	or	r14, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	or	r15, r12
	or	r15, r14
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	je	.label_2419
.label_2383:
	mov	rsp, rsp
	inc	rdi
	mov	rsp, rsp
	add	r13, 0x20
	mov	rsp, rsp
	add	qword ptr [rbp - 0x58], 0x18
	nop	
	cmp	rdi, r14
	jl	.label_2430
	nop	
	jmp	.label_2419
.label_2371:
	xor	edi, edi
.label_2419:
	cmp	rdi, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	jne	.label_2352
	lea	rsi, [rsi]
	mov	rax, rdi
	lea	rsi, [rsi]
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x90]
	nop	
	movdqa	xmm1, xmmword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x30]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	lea	rdi, [rdi]
	movups	xmmword ptr [rcx + rax], xmm0
	mov	rsp, rsp
	mov	r15, rbx
	lea	rsi, [rsi]
	lea	rbx, [rdi + rdi*2]
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	r14, qword ptr [rax + r15*8]
	mov	rbp, rbp
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1811]]
	movdqu	xmmword ptr [rsi + rbx*8], xmm0
	mov	rbp, rbp
	mov	r12, rdi
	mov	rbp, rbp
	mov	edi, 8
	mov	rsp, rsp
	call	malloc
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	qword ptr [rsi + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2362
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	inc	r12
	nop	
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	nop	
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	mov	r14, r12
	mov	rbx, r15
	mov	r12, qword ptr [rbp - 0xa8]
	nop	dword ptr [rax]
.label_2352:
	mov	rbp, rbp
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	jl	.label_2374
	lea	rsi, [rsi]
	test	r14, r14
	lea	rsi, [rsi]
	jle	.label_2378
	mov	r15, rsi
	lea	rax, [r14 + 1]
	mov	qword ptr [rbp - 0xf8], rax
	mov	qword ptr [rbp - 0xf0], 0
	mov	rbp, rbp
	lea	rdi, [r14*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0xe8], rax
	nop	
	xor	ecx, ecx
	test	rax, rax
	lea	rdi, [rdi]
	mov	edx, 0xc
	mov	rsp, rsp
	cmovne	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
	lea	rsi, [rsi]
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r14, rcx
	ja	.label_2360
	mov	rbp, rbp
	test	rax, rax
	je	.label_2360
	nop	
	lea	rax, [r14*8]
	lea	rsi, [rsi]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_2404
	mov	qword ptr [rbp - 0x60], r13
	mov	rsp, rsp
	mov	rax, rsp
	lea	rsi, [rsi]
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	nop	
	mov	dword ptr [rbp - 0xc0], 0
	jmp	.label_2411
.label_2379:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xc8]
	movdqu	xmmword ptr [rax], xmm0
.label_2415:
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	r12, qword ptr [rbp - 0xa0]
.label_2443:
	mov	r14, -1
	test	r12, r12
	nop	
	jle	.label_2378
	mov	rbx, rsi
	mov	r15, rsi
	add	rbx, 0x10
	nop	word ptr [rax + rax]
.label_2353:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2353
	mov	rsi, r15
.label_2378:
	mov	rdi, rsi
	nop	
	call	free
	test	r14, r14
	mov	rsp, rsp
	je	.label_2437
	xor	eax, eax
	nop	
	jmp	.label_2348
.label_2437:
	mov	edi, 8
	lea	rdi, [rdi]
	mov	esi, 0x100
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	test	rax, rax
	setne	al
	mov	rbp, rbp
	jmp	.label_2348
.label_2403:
	xor	eax, eax
	jmp	.label_2348
.label_2404:
	nop	
	call	malloc
	test	rax, rax
	nop	
	je	.label_2360
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], r13
	mov	cl, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc0], ecx
.label_2411:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], r14
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rbp - 0xb8], rax
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	xor	r14d, r14d
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], rax
.label_2382:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], 0
	nop	
	lea	rcx, [r14 + r14*2]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + rcx*8 + 8]
	mov	qword ptr [rbp - 0xe0], r15
	test	rax, rax
	jle	.label_2375
	mov	rdx, qword ptr [rbp - 0xe0]
	lea	rbx, [rdx + rcx*8 + 8]
	mov	rbp, rbp
	mov	r13, qword ptr [rdx + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2410:
	nop	
	mov	rcx, qword ptr [r13 + r15*8]
	nop	
	mov	rdx, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_2397
	mov	rax, qword ptr [r12 + 0x30]
	mov	rbp, rbp
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xf8]
	mov	rbp, rbp
	call	re_node_set_merge
	mov	dword ptr [rbp - 0xd4], eax
	mov	rbp, rbp
	test	eax, eax
	jne	.label_2369
	mov	rax, qword ptr [rbx]
.label_2397:
	nop	
	inc	r15
	mov	rsp, rsp
	cmp	r15, rax
	nop	
	jl	.label_2410
.label_2375:
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	lea	rdi, [rbp - 0xd4]
	mov	rbp, rbp
	mov	rsi, r12
	nop	
	lea	rdx, [rbp - 0xf8]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + r14*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	jne	.label_2422
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xd4]
	nop	
	test	ecx, ecx
	nop	
	jne	.label_2369
.label_2422:
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2429
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + r14*8]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + r14*8], rax
	jmp	.label_2367
.label_2429:
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	lea	rdi, [rbp - 0xd4]
	mov	rsi, r12
	lea	rdx, [rbp - 0xf8]
	lea	rdi, [rdi]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_2440
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xd4]
	test	ecx, ecx
	nop	
	jne	.label_2369
.label_2440:
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + r14*8], rax
	mov	rsp, rsp
	je	.label_2445
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	dword ptr [r12 + 0xb4], 1
	mov	rbp, rbp
	jg	.label_2355
	mov	rax, qword ptr [rbp - 0xc8]
.label_2355:
	mov	qword ptr [rbp - 0xc8], rax
.label_2445:
	mov	ecx, 2
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xd4]
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdx, [rbp - 0xf8]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + r14*8], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_2367
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_2369
.label_2367:
	mov	rbp, rbp
	mov	rax, r14
	shl	rax, 5
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0xb0]
	or	rdx, qword ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rsi, qword ptr [rbp - 0x98]
	or	rsi, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, qword ptr [rbp - 0xd0]
	nop	
	or	rdx, qword ptr [rcx + rax + 0x18]
	inc	r14
	mov	rbp, rbp
	cmp	r14, qword ptr [rbp - 0xa0]
	mov	r15, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	jl	.label_2382
	mov	r15, rsi
	mov	r13, rdx
	mov	rax, qword ptr [rbp - 0xc8]
	and	al, 1
	mov	qword ptr [rbp - 0xc8], rax
	mov	edi, 8
	jne	.label_2398
	lea	rsi, [rsi]
	mov	esi, 0x100
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_2369
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	je	.label_2409
	mov	rsp, rsp
	lea	r8, [r14 + 0x1800]
	nop	
	mov	edx, 1
	lea	rsi, [rsi]
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	jmp	.label_2438
.label_2427:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	mov	rbp, rbp
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	mov	rbp, rbp
	je	.label_2427
	test	qword ptr [r12 + 0xb8], rdx
	nop	
	je	.label_2433
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	jmp	.label_2434
.label_2433:
	nop	
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
.label_2434:
	lea	rsi, [rsi]
	mov	qword ptr [rax + r9*8], rcx
	lea	rdi, [rdi]
	jmp	.label_2436
.label_2438:
	mov	rbx, -1
	lea	rsi, [rsi]
	test	dil, 1
	mov	rcx, r8
	jne	.label_2427
.label_2436:
	mov	rbp, rbp
	add	rdx, rdx
	shr	rdi, 1
	lea	rsi, [rsi]
	inc	r9
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_2438
.label_2409:
	nop	
	mov	rsi, r15
	mov	rbp, rbp
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbp - 0xa0]
	je	.label_2442
	mov	rbp, rbp
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	r9d, 0x40
	jmp	.label_2370
.label_2387:
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	lea	rdi, [rbx + 1]
	lea	rdi, [rdi]
	test	qword ptr [rcx], rdx
	nop	
	lea	rcx, [rcx + 0x20]
	je	.label_2387
	test	qword ptr [r12 + 0xc0], rdx
	mov	rsp, rsp
	je	.label_2358
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2361
.label_2358:
	mov	rcx, qword ptr [r10 + rbx*8 + 8]
.label_2361:
	mov	rbp, rbp
	mov	qword ptr [rax + r9*8], rcx
	lea	rdi, [rdi]
	jmp	.label_2366
.label_2370:
	lea	rsi, [rsi]
	mov	rdi, -1
	test	sil, 1
	mov	rcx, r8
	jne	.label_2387
.label_2366:
	lea	rsi, [rsi]
	add	rdx, rdx
	lea	rsi, [rsi]
	shr	rsi, 1
	inc	r9
	nop	
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_2370
.label_2442:
	mov	r9, r10
	mov	r10, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	test	r10, r10
	mov	r11d, dword ptr [rbp - 0xc0]
	je	.label_2373
	nop	
	lea	r8, [r14 + 0x1810]
	mov	rbp, rbp
	mov	edx, 1
	mov	rsp, rsp
	mov	esi, 0x80
	jmp	.label_2380
.label_2364:
	mov	rbx, rdi
	nop	
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	test	qword ptr [rcx], rdx
	mov	rsp, rsp
	lea	rcx, [rcx + 0x20]
	nop	
	je	.label_2364
	test	qword ptr [r12 + 0xc8], rdx
	je	.label_2392
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2395
.label_2392:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_2395:
	mov	qword ptr [rax + rsi*8], rcx
	mov	rsp, rsp
	jmp	.label_2399
.label_2380:
	mov	rdi, -1
	test	r10b, 1
	lea	rdi, [rdi]
	mov	rcx, r8
	lea	rdi, [rdi]
	jne	.label_2364
.label_2399:
	add	rdx, rdx
	shr	r10, 1
	lea	rsi, [rsi]
	inc	rsi
	test	r10, r10
	nop	
	jne	.label_2380
.label_2373:
	test	r13, r13
	je	.label_2406
	nop	
	lea	r8, [r14 + 0x1818]
	nop	
	mov	edx, 1
	lea	rsi, [rsi]
	mov	esi, 0xc0
	jmp	.label_2408
.label_2413:
	nop	
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	lea	rdi, [rdi]
	je	.label_2413
	nop	
	test	qword ptr [r12 + 0xd0], rdx
	je	.label_2418
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	mov	rsp, rsp
	jmp	.label_2424
.label_2418:
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_2424:
	mov	rsp, rsp
	mov	qword ptr [rax + rsi*8], rcx
	lea	rsi, [rsi]
	jmp	.label_2416
.label_2408:
	mov	rdi, -1
	lea	rdi, [rdi]
	test	r13b, 1
	nop	
	mov	rcx, r8
	mov	rsp, rsp
	jne	.label_2413
.label_2416:
	add	rdx, rdx
	shr	r13, 1
	mov	rbp, rbp
	inc	rsi
	test	r13, r13
	nop	
	jne	.label_2408
.label_2406:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	test	ch, 4
	je	.label_2390
	lea	rdi, [rdi]
	lea	rdx, [r14 + 0x1800]
	xor	ecx, ecx
.label_2402:
	mov	rsp, rsp
	test	byte ptr [rdx + 1], 4
	lea	rdi, [rdi]
	jne	.label_2377
	mov	rbp, rbp
	inc	rcx
	add	rdx, 0x20
	cmp	rcx, r15
	jl	.label_2402
	nop	
	jmp	.label_2390
.label_2362:
	mov	rsp, rsp
	lea	rax, [rsi + rbx*8]
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	jmp	.label_2443
.label_2360:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_2354
.label_2377:
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	test	dl, dl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2390
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x850], rcx
.label_2390:
	test	r11b, r11b
	nop	
	je	.label_2365
	mov	rdi, r9
	lea	rsi, [rsi]
	call	free
.label_2365:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe8]
	nop	
	call	free
	mov	rbx, r14
	add	rbx, 0x10
.label_2372:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rsp, rsp
	add	rbx, 0x18
	dec	r15
	jne	.label_2372
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	call	free
	nop	
	mov	al, 1
	jmp	.label_2348
.label_2398:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x60], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_2369
	mov	rcx, qword ptr [rbp - 0xb0]
	test	rcx, rcx
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp - 0x58]
	je	.label_2385
	mov	rbp, rbp
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jmp	.label_2394
.label_2369:
	mov	eax, dword ptr [rbp - 0xc0]
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	je	.label_2400
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_2400:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe8]
	call	free
	mov	r14, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	test	r14, r14
	mov	r15, qword ptr [rbp - 0xe0]
	jle	.label_2407
.label_2354:
	lea	rdi, [rdi]
	mov	rbx, r15
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2420:
	nop	
	mov	rdi, qword ptr [rbx]
	call	free
	lea	rdi, [rdi]
	add	rbx, 0x18
	dec	r14
	jne	.label_2420
.label_2407:
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	nop	
	xor	eax, eax
.label_2348:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_2432:
	mov	rsi, rbx
	mov	rbp, rbp
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2432
	mov	rbp, rbp
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r9*8], rcx
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	nop	
	jmp	.label_2435
.label_2394:
	mov	rbx, -1
	test	dil, 1
	lea	rdi, [rdi]
	mov	rcx, r8
	lea	rdi, [rdi]
	jne	.label_2432
.label_2435:
	lea	rdi, [rdi]
	add	rdx, rdx
	mov	rbp, rbp
	shr	rdi, 1
	mov	rbp, rbp
	inc	r9
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_2394
.label_2385:
	mov	rbp, rbp
	mov	rsi, r15
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbp - 0xa0]
	je	.label_2446
	mov	rbp, rbp
	lea	r8, [r14 + 0x1808]
	lea	rdi, [rdi]
	mov	edx, 1
	mov	r9d, 0x40
	lea	rsi, [rsi]
	jmp	.label_2351
.label_2359:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	mov	rsp, rsp
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2359
	mov	rsp, rsp
	mov	rdi, qword ptr [r10 + rcx*8 + 8]
	mov	qword ptr [rax + r9*8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	mov	rsp, rsp
	jmp	.label_2363
.label_2351:
	lea	rsi, [rsi]
	mov	rbx, -1
	test	sil, 1
	lea	rsi, [rsi]
	mov	rdi, r8
	lea	rdi, [rdi]
	jne	.label_2359
.label_2363:
	add	rdx, rdx
	lea	rdi, [rdi]
	shr	rsi, 1
	mov	rbp, rbp
	inc	r9
	test	rsi, rsi
	jne	.label_2351
.label_2446:
	mov	r9, r10
	nop	
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	test	rcx, rcx
	mov	r11d, dword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	je	.label_2376
	lea	r8, [r14 + 0x1810]
	mov	rsp, rsp
	mov	edx, 1
	mov	rsp, rsp
	mov	esi, 0x80
	nop	
	jmp	.label_2384
.label_2391:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	nop	
	lea	rdi, [rdi + 0x20]
	nop	
	je	.label_2391
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rsi*8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2396
.label_2384:
	lea	rsi, [rsi]
	mov	rbx, -1
	test	cl, 1
	mov	rbp, rbp
	mov	r10, rcx
	lea	rdi, [rdi]
	mov	rdi, r8
	lea	rdi, [rdi]
	jne	.label_2391
.label_2396:
	lea	rsi, [rsi]
	add	rdx, rdx
	mov	rsp, rsp
	mov	rcx, r10
	shr	rcx, 1
	mov	rbp, rbp
	inc	rsi
	test	rcx, rcx
	jne	.label_2384
.label_2376:
	nop	
	test	r13, r13
	mov	rbp, rbp
	je	.label_2406
	lea	rdi, [rdi]
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	mov	rsp, rsp
	jmp	.label_2414
.label_2423:
	mov	rcx, rbx
	mov	rbp, rbp
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	lea	rdi, [rdi]
	je	.label_2423
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rsi*8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	mov	rsp, rsp
	jmp	.label_2425
.label_2414:
	mov	rbp, rbp
	mov	rbx, -1
	test	r13b, 1
	nop	
	mov	rdi, r8
	lea	rsi, [rsi]
	jne	.label_2423
.label_2425:
	lea	rsi, [rsi]
	add	rdx, rdx
	mov	rbp, rbp
	shr	r13, 1
	lea	rsi, [rsi]
	inc	rsi
	test	r13, r13
	nop	
	je	.label_2406
	lea	rsi, [rsi]
	jmp	.label_2414
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41fde0

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x58
	nop	
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x10]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1811]]
	nop	
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	nop	
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_2459
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rdx, r13
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2462
	lea	rdi, [rdi]
	lea	rax, [r15 + 0x20]
	nop	
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x4c], 0
	nop	
.label_2465:
	lea	rdi, [rdi]
	mov	rdx, r13
	mov	rbp, rbp
	test	rdx, rdx
	mov	rsp, rsp
	jle	.label_2466
	mov	rdi, qword ptr [r15]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + rdx*8], 0
	je	.label_2449
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_2453
	nop	dword ptr [rax]
.label_2449:
	mov	eax, dword ptr [rsp + 0x4c]
	lea	rdi, [rdi]
	inc	eax
.label_2453:
	lea	rsi, [rsi]
	cmp	eax, dword ptr [r14 + 0xe0]
	jg	.label_2457
	mov	dword ptr [rsp + 0x4c], eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], 0
	lea	r13, [rdx - 1]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8 - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rdx
	test	rax, rax
	je	.label_2464
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2464
	mov	rcx, qword ptr [r14 + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2458:
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	r12, qword ptr [rax + rbx*8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r12
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	shl	r12, 4
	lea	rdi, [rdi]
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2450
	mov	rax, r15
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rcx
	mov	rdx, r14
	mov	r14, rax
	mov	rbp, rbp
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	mov	rsi, qword ptr [rsp + 8]
	mov	r15, r13
	mov	r13, rdx
	mov	rcx, r15
	nop	
	call	check_node_accept_bytes
	test	eax, eax
	lea	rsi, [rsi]
	jle	.label_2452
	movsxd	rcx, eax
	add	rcx, r15
	cmp	rcx, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	jle	.label_2455
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	rbp, rbp
	mov	r14, r13
	mov	r13, r15
	mov	rbp, rbp
	mov	r15, rcx
	mov	rsp, rsp
	jmp	.label_2456
.label_2452:
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jne	.label_2456
	mov	rbp, rbp
	jmp	.label_2450
.label_2455:
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + rcx*8]
	nop	
	test	rdx, rdx
	mov	rsp, rsp
	mov	r14, r13
	mov	rsp, rsp
	mov	r13, r15
.label_2887:
	mov	r15, rsi
	nop	
	je	.label_2450
	mov	rsi, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rdi, [rdi]
	jle	.label_2450
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	nop	
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2454
	nop	word ptr [rax + rax]
.label_2451:
	mov	rbp, rbp
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	mov	rbp, rbp
	cmovge	rsi, rbp
	lea	rsi, [rsi]
	cmp	rdi, rsi
	jb	.label_2451
.label_2454:
	mov	rbp, rbp
	test	eax, eax
	je	.label_2450
	lea	rsi, [rsi]
	cmp	rdi, -1
	nop	
	je	.label_2450
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2456
.label_2450:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	add	r12, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	nop	
	call	check_node_accept
	nop	
	test	al, al
	nop	
	je	.label_2448
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_2448
	mov	rax, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	test	rax, rax
	jle	.label_2448
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	lea	rsi, [rsi]
	dec	rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	mov	rbp, rbp
	je	.label_2463
.label_2447:
	lea	rdi, [rsi + rax]
	mov	rbp, rbp
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	mov	rbp, rbp
	lea	rbp, [rdi + 1]
	nop	
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	mov	rbp, rbp
	jb	.label_2447
.label_2463:
	lea	rsi, [rsi]
	cmp	rsi, -1
	nop	
	je	.label_2448
	mov	eax, 1
	nop	
	cmp	qword ptr [rdx + rsi*8], rcx
	lea	rsi, [rsi]
	jne	.label_2448
	nop	
.label_2456:
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2461
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	add	rcx, r13
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	nop	
	mov	r8, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + r8*8]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	r9, r13
	call	check_dst_limits
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	jne	.label_2448
.label_2461:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	mov	rsp, rsp
	je	.label_2462
.label_2448:
	inc	rbx
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	mov	rbp, rbp
	jl	.label_2458
.label_2464:
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r13
	nop	
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	rsp, rsp
	mov	ebp, eax
	mov	rsp, rsp
	test	ebp, ebp
	je	.label_2465
	mov	rbp, rbp
	jmp	.label_2462
.label_2466:
	lea	rdi, [rdi]
	xor	ebp, ebp
	jmp	.label_2462
.label_2457:
	nop	
	shl	rdx, 3
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	esi, esi
	lea	rdi, [rdi]
	call	memset
.label_2462:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_2460:
	mov	eax, ebp
	mov	rbp, rbp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_2459:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	lea	rdi, [rdi]
	jmp	.label_2460
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x420250

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r11, rcx
	nop	
	mov	rbp, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rbp
	nop	
	mov	r13, rdi
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rbx, qword ptr [rax + rdx*8]
	lea	rax, [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	cmove	rax, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	cmp	qword ptr [r11 + 8], 0
	lea	rdi, [rdi]
	je	.label_2501
	mov	qword ptr [rsp + 0x68], rdx
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_2507
	mov	rbp, rbp
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x10], 0
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], r12
	mov	rdx, r11
	mov	rbx, r11
	call	re_acquire_state
	lea	rsi, [rsi]
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x10]
	nop	
	test	r12d, r12d
	mov	rbp, rbp
	jne	.label_2471
	lea	rdi, [rdi]
	mov	r15, r14
	lea	rsi, [rsi]
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rsp, rsp
	jne	.label_2480
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	lea	rdi, [rdi]
	shl	rdi, 3
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	mov	rsp, rsp
	xor	ecx, ecx
	test	rax, rax
	mov	r12d, 0xc
	cmove	ecx, r12d
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], ecx
	je	.label_2471
	mov	rsp, rsp
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2480
	mov	r14, rbp
	mov	rsp, rsp
	xor	ebp, ebp
	nop	
.label_2523:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	mov	rbp, rbp
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	call	re_node_set_merge
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_2512
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jl	.label_2523
	mov	dword ptr [rsp + 0x10], 0
	mov	rbp, r14
.label_2480:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	r14, rbx
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	nop	
	mov	rbx, qword ptr [rsp]
	jne	.label_2505
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	test	rax, rax
	mov	r11, r14
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	je	.label_2507
	mov	qword ptr [rsp + 0x80], r13
	nop	
	mov	r10, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	jle	.label_2487
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x80]
	mov	r13, qword ptr [rax + 0xd8]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_2511:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	lea	rsi, [rsi]
	cmp	qword ptr [r13 + rax*8 + 0x10], r10
	lea	rdi, [rdi]
	jge	.label_2477
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + rax*8 + 8], r10
	lea	rdi, [rdi]
	jl	.label_2477
	mov	rdx, qword ptr [r13 + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12]
	nop	
	shl	rdx, 4
	mov	rsp, rsp
	mov	r8, qword ptr [rcx + rdx]
	mov	qword ptr [rsp + 0x48], r8
	mov	rbp, rbp
	cmp	qword ptr [r13 + rax*8 + 0x18], r10
	mov	rax, qword ptr [r11 + 8]
	jne	.label_2513
	nop	
	test	rax, rax
	nop	
	jle	.label_2477
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	lea	rsi, [rsi]
	mov	rsi, -1
	nop	
.label_2494:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	mov	rbp, rbp
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	ebx, 9
	nop	
	je	.label_2531
	lea	rdi, [rdi]
	cmp	ebx, 8
	jne	.label_2479
	cmp	r8, qword ptr [rcx + rdi]
	mov	rbp, rbp
	je	.label_2475
	mov	rbp, rsi
.label_2475:
	lea	rsi, [rsi]
	mov	rsi, rbp
	jmp	.label_2479
	nop	word ptr cs:[rax + rax]
.label_2531:
	nop	
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2488
	mov	rbp, r14
.label_2488:
	lea	rsi, [rsi]
	mov	r14, rbp
.label_2479:
	mov	rbp, rbp
	add	rdx, 8
	dec	rax
	jne	.label_2494
	lea	rdi, [rdi]
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	rbp, r11
	js	.label_2499
	mov	rdi, qword ptr [rsp + 0x98]
	mov	rdx, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	rbx, r10
	call	sub_epsilon_src_nodes
	mov	r10, rbx
	lea	rsi, [rsi]
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_2509
.label_2499:
	test	r14, r14
	mov	rbp, rbp
	mov	r11, rbp
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	js	.label_2477
	mov	rbp, rbp
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	mov	ebp, 0
	jle	.label_2477
	nop	dword ptr [rax]
.label_2472:
	mov	rsp, rsp
	mov	rax, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x38]
	lea	r9, [rsi + rsi*2]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_2485
	mov	rbp, rbp
	dec	rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + r9*8 + 0x10]
	mov	rbp, rbp
	mov	eax, 0
	je	.label_2504
	nop	dword ptr [rax]
.label_2467:
	mov	rsp, rsp
	lea	rbx, [rax + rdx]
	lea	rdi, [rdi]
	shr	rbx, 1
	mov	rsp, rsp
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rcx, [rbx + 1]
	mov	rsp, rsp
	cmovl	rax, rcx
	cmovge	rdx, rbx
	mov	rbp, rbp
	cmp	rax, rdx
	jb	.label_2467
.label_2504:
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_2485
	mov	rbp, rbp
	cmp	qword ptr [rdi + rax*8], r14
	lea	rdi, [rdi]
	je	.label_2491
.label_2485:
	nop	
	mov	rax, qword ptr [r12 + 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	lea	rdi, [rdi]
	test	rdx, rdx
	jle	.label_2495
	nop	
	dec	rdx
	mov	rcx, qword ptr [rax + r9*8 + 0x10]
	lea	rdi, [rdi]
	mov	eax, 0
	je	.label_2490
	nop	dword ptr [rax]
.label_2493:
	lea	rdi, [rax + rdx]
	shr	rdi, 1
	nop	
	cmp	qword ptr [rcx + rdi*8], r14
	nop	
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmovl	rax, rbx
	cmovge	rdx, rdi
	mov	rbp, rbp
	cmp	rax, rdx
	jb	.label_2493
.label_2490:
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_2495
	mov	rbp, rbp
	cmp	qword ptr [rcx + rax*8], r14
	mov	rsp, rsp
	je	.label_2491
.label_2495:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], r15
	mov	r15, r13
	nop	
	mov	rdi, r12
	nop	
	mov	r13, r12
	lea	rsi, [rsi]
	mov	rdx, r11
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	mov	r12, r10
	nop	
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	nop	
	mov	r12d, eax
	test	r12d, r12d
	nop	
	jne	.label_2509
	mov	rsp, rsp
	dec	rbp
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	nop	
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x98]
.label_2491:
	inc	rbp
	nop	
	cmp	rbp, r8
	jl	.label_2472
	jmp	.label_2477
.label_2513:
	nop	
	test	rax, rax
	mov	ebp, 0
	jg	.label_2514
	jmp	.label_2477
	nop	dword ptr [rax]
.label_2525:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
.label_2514:
	mov	rbp, rbp
	mov	rdx, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	shl	rdx, 4
	nop	
	mov	edi, dword ptr [rcx + rdx + 8]
	mov	ebx, 0xfe
	mov	rbp, rbp
	and	edi, ebx
	nop	
	or	edi, 1
	cmp	edi, 9
	jne	.label_2498
	cmp	r8, qword ptr [rcx + rdx]
	jne	.label_2498
	mov	rbp, rbp
	mov	r14, r15
	mov	r15, r13
	mov	rsp, rsp
	mov	rdi, r12
	mov	r13, r12
	mov	rsp, rsp
	mov	rdx, r11
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	r12, r10
	mov	rbx, r11
	lea	rsi, [rsi]
	call	sub_epsilon_src_nodes
	mov	rbp, rbp
	mov	r10, r12
	mov	r12d, eax
	mov	rsp, rsp
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_2509
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	r11, rbx
	lea	rsi, [rsi]
	mov	r12, r13
	lea	rsi, [rsi]
	mov	r13, r15
	mov	r15, r14
	mov	r8, qword ptr [rsp + 0x48]
.label_2498:
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, rax
	jl	.label_2525
	nop	word ptr cs:[rax + rax]
.label_2477:
	inc	r15
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	cmp	r15, qword ptr [rbp + 0x28]
	jl	.label_2511
.label_2487:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0
	mov	r13, qword ptr [rsp + 0x80]
	mov	rbx, qword ptr [rsp]
.label_2507:
	nop	
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r11
	mov	rbp, rbp
	call	re_acquire_state
	mov	rcx, qword ptr [rbp]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	qword ptr [rcx + rdx*8], rax
	mov	rsp, rsp
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rbp, rbp
	test	r12d, r12d
	lea	rsi, [rsi]
	je	.label_2492
	jmp	.label_2505
.label_2501:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8], 0
.label_2492:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_2510
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rdx*8]
	test	byte ptr [rax + 0x68], 0x40
	nop	
	je	.label_2510
	mov	rbx, rbp
	mov	r11, qword ptr [r13 + 0x98]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r13 + 0xc8]
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rbp, rbp
	jle	.label_2515
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	r15d, r15d
	mov	rax, rbp
	nop	
.label_2524:
	mov	rbp, rbp
	lea	rsi, [rax + r15]
	nop	
	mov	rdi, rsi
	lea	rdi, [rdi]
	shr	rdi, 0x3f
	mov	rsp, rsp
	add	rdi, rsi
	sar	rdi, 1
	nop	
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], rdx
	lea	rdi, [rdi]
	cmovge	rax, rdi
	mov	rbp, rbp
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	lea	rsi, [rsi]
	cmp	r15, rax
	lea	rsi, [rsi]
	jl	.label_2524
.label_2515:
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_2476
	cmp	r15, -1
	nop	
	je	.label_2476
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [r15 + r15*4]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb0], rcx
	cmp	qword ptr [rax + rcx*8 + 8], rdx
	jne	.label_2476
	mov	qword ptr [rsp + 0x10], 0
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jle	.label_2497
	mov	rdi, r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], rdi
	mov	qword ptr [rsp + 0x68], rdx
	nop	
	mov	r10, rbx
	mov	qword ptr [rsp + 0xa8], r10
	mov	rbp, rbp
	lea	rax, [r10 + 0x20]
	mov	qword ptr [rsp + 0x78], rax
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	shl	qword ptr [rsp + 0xb0], 3
	xor	r13d, r13d
	nop	word ptr [rax + rax]
.label_2530:
	mov	qword ptr [rsp + 0x90], r13
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, qword ptr [rax + r13*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [r11]
	mov	rcx, rbp
	nop	
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	rbp, qword ptr [r10 + 0x10]
	lea	rsi, [rsi]
	jne	.label_2520
	cmp	eax, 4
	mov	rbp, rbp
	mov	rcx, rdx
	jne	.label_2469
	cmp	qword ptr [r10 + 0x18], rcx
	jne	.label_2532
	nop	
	jmp	.label_2469
.label_2520:
	nop	
	cmp	eax, 4
	mov	rcx, rdx
	mov	rbp, rbp
	jne	.label_2469
.label_2532:
	mov	rbx, qword ptr [rdi + 0xd8]
	mov	rsp, rsp
	add	rbx, qword ptr [rsp + 0xb0]
	mov	r14, r15
	nop	dword ptr [rax]
.label_2528:
	cmp	qword ptr [rbx], rbp
	lea	rsi, [rsi]
	jne	.label_2481
	mov	rax, qword ptr [rbx + 0x10]
	nop	
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r9, rdx
	sub	r9, rax
	add	r9, rcx
	cmp	rdx, rax
	jne	.label_2508
	mov	rbp, rbp
	mov	rax, qword ptr [r11 + 0x28]
	nop	
	lea	rdx, [rbp + rbp*2]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
	jmp	.label_2503
	nop	dword ptr [rax]
.label_2508:
	lea	rdi, [rdi]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r11 + 0x18]
.label_2503:
	cmp	r9, qword ptr [r10 + 0x18]
	jg	.label_2481
	lea	rsi, [rsi]
	mov	rax, qword ptr [r10]
	mov	rdx, qword ptr [rax + r9*8]
	lea	rsi, [rsi]
	test	rdx, rdx
	je	.label_2481
	mov	rax, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	test	rax, rax
	jle	.label_2481
	mov	rsp, rsp
	mov	r12, r10
	mov	r8, qword ptr [rsi]
	dec	rax
	lea	rdi, [rdi]
	mov	r10, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2519
	nop	dword ptr [rax]
.label_2521:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	shr	rsi, 1
	nop	
	cmp	qword ptr [r10 + rsi*8], r8
	lea	rdi, [rdi]
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rax, rsi
	cmp	rdx, rax
	lea	rdi, [rdi]
	jb	.label_2521
.label_2519:
	lea	rdi, [rdi]
	cmp	rdx, -1
	je	.label_2474
	nop	
	cmp	qword ptr [r10 + rdx*8], r8
	jne	.label_2474
	mov	qword ptr [rsp + 0x48], r11
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	call	check_dst_limits
	test	al, al
	lea	rdi, [rdi]
	mov	r10, r12
	je	.label_2482
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	nop	
	mov	rdi, qword ptr [rsp + 0x80]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_2486
.label_2474:
	lea	rdi, [rdi]
	mov	r10, r12
	nop	
	jmp	.label_2486
.label_2482:
	cmp	qword ptr [rsp], 0
	jne	.label_2502
	mov	rax, qword ptr [r10 + 0x30]
	mov	qword ptr [rsp + 0x40], rax
	movups	xmm0, xmmword ptr [r10]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [r10 + 0x10]
	mov	rbp, rbp
	movups	xmm2, xmmword ptr [r10 + 0x20]
	movaps	xmmword ptr [rsp + 0x30], xmm2
	movaps	xmmword ptr [rsp + 0x20], xmm1
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbx, qword ptr [r10 + 0x28]
	mov	qword ptr [rsp + 0x38], rbx
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	jle	.label_2506
	mov	rbp, rbp
	mov	rbp, r10
	mov	qword ptr [rsp + 0x30], rbx
	shl	rbx, 3
	mov	rdi, rbx
	mov	rbp, rbp
	call	malloc
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	nop	
	je	.label_2526
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	mov	r10, rbp
	jmp	.label_2502
.label_2506:
	lea	rax, [rsp + 0x30]
	nop	
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
.label_2502:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rbx, r10
	mov	rsp, rsp
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	rdx, rbx
	nop	
	mov	r12d, 0xc
	test	al, al
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x48]
	nop	
	je	.label_2489
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rbx + rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rcx
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r12, rax
	nop	
	mov	rbp, rdx
	lea	rdi, [rdi]
	call	sift_states_backward
	mov	r10, rbp
	mov	rsp, rsp
	mov	r11, r12
	nop	
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_2489
	mov	rdi, qword ptr [r10 + 8]
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	je	.label_2517
	lea	rdi, [rdi]
	mov	r13, -1
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x50]
	js	.label_2522
	nop	dword ptr [rax]
.label_2516:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdi + r13*8 + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + r13*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_2527
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_2500
	mov	rbp, rbp
	mov	rbx, rdi
	add	rsi, 8
	add	rdx, 8
	mov	rdi, rbp
	mov	rsp, rsp
	call	re_node_set_init_union
	lea	rdi, [rdi]
	mov	r12d, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xbc], r12d
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_2489
	mov	rsp, rsp
	lea	rdi, [rsp + 0xbc]
	mov	rsi, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state
	mov	qword ptr [rbx + r13*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rsp + 0xbc]
	test	r12d, r12d
	nop	
	mov	rcx, qword ptr [rsp + 0x68]
	mov	r10, qword ptr [rsp + 0xa8]
	mov	rbx, qword ptr [rsp]
	je	.label_2500
	jmp	.label_2489
.label_2527:
	lea	rsi, [rsi]
	mov	qword ptr [rdi + r13*8 + 8], rdx
.label_2500:
	inc	r13
	cmp	r13, rcx
	jl	.label_2516
.label_2522:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x90]
.label_2517:
	mov	qword ptr [rsp], rbx
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	qword ptr [rbx + rcx*8], rdx
	mov	r12, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	test	r12, r12
	jle	.label_2484
	mov	rbp, r12
	dec	rbp
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, rbp
	mov	edx, 0
	je	.label_2529
	nop	
.label_2468:
	mov	rsp, rsp
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rax + rbx*8], r14
	mov	rbp, rbp
	lea	rsi, [rbx + 1]
	cmovl	rdx, rsi
	cmovge	rdi, rbx
	cmp	rdx, rdi
	lea	rdi, [rdi]
	jb	.label_2468
.label_2529:
	cmp	qword ptr [rax + rdx*8], r14
	mov	rdi, rdx
	nop	
	je	.label_2483
	nop	
	mov	rdi, -1
.label_2483:
	test	rdi, rdi
	mov	rsp, rsp
	js	.label_2484
	lea	rsi, [rsi]
	cmp	r12, rdi
	jle	.label_2484
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rbp
	cmp	rbp, rdi
	nop	
	jle	.label_2484
	mov	rbp, rbp
	dec	r12
	lea	rdi, [rdx + 1]
	lea	rsi, [rsi]
	cmp	r12, rdi
	mov	rbx, rdi
	nop	
	cmovge	rbx, r12
	lea	rdi, [rdi]
	sub	rbx, rdx
	cmp	rbx, 4
	mov	rbp, rbp
	jb	.label_2496
	nop	
	mov	r8, rbx
	lea	rdi, [rdi]
	and	r8, 0xfffffffffffffffc
	nop	
	mov	r9, rbx
	and	r9, 0xfffffffffffffffc
	lea	rsi, [rsi]
	je	.label_2496
	mov	qword ptr [rsp + 0xa8], r10
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], r11
	lea	rsi, [rsi]
	cmp	r12, rdi
	mov	rsi, rdi
	cmovge	rsi, r12
	lea	rsi, [rsi]
	sub	rsi, rdx
	add	rsi, -4
	mov	r11, rsi
	nop	
	shr	r11, 2
	mov	rsp, rsp
	bt	rsi, 2
	mov	r10d, 0
	jb	.label_2518
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax + rdx*8 + 8]
	movups	xmm1, xmmword ptr [rax + rdx*8 + 0x18]
	movups	xmmword ptr [rax + rdx*8], xmm0
	movups	xmmword ptr [rax + rdx*8 + 0x10], xmm1
	mov	r10d, 4
.label_2518:
	mov	rbp, rbp
	test	r11, r11
	lea	rdi, [rdi]
	je	.label_2470
	mov	rbp, rbp
	cmp	r12, rdi
	lea	rsi, [rsi]
	cmovge	rdi, r12
	sub	rdi, rdx
	and	rdi, 0xfffffffffffffffc
	sub	rdi, r10
	add	r10, rdx
	nop	
	lea	rsi, [rax + r10*8 + 0x38]
.label_2478:
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rsi - 0x30]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rsi - 0x38], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rsi - 0x28], xmm1
	nop	
	movups	xmm0, xmmword ptr [rsi - 0x10]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rsi]
	movups	xmmword ptr [rsi - 0x18], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rsi - 8], xmm1
	add	rsi, 0x40
	mov	rsp, rsp
	add	rdi, -8
	mov	rbp, rbp
	jne	.label_2478
.label_2470:
	cmp	rbx, r9
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	r10, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	je	.label_2484
	add	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_2496:
	mov	rsi, qword ptr [rax + rdx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	mov	rbp, rbp
	cmp	rdx, rbp
	jl	.label_2496
.label_2484:
	lea	rbx, [r14 + r14*4]
	mov	rbp, rbp
	shl	rbx, 3
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	add	rbx, qword ptr [rdi + 0xd8]
.label_2486:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x98]
	nop	
.label_2481:
	mov	rbp, rbp
	inc	r14
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x20], 0
	mov	rbp, rbp
	lea	rbx, [rbx + 0x28]
	jne	.label_2528
.label_2469:
	mov	rdx, rcx
	nop	
	inc	r13
	xor	r12d, r12d
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	cmp	r13, qword ptr [rax + 8]
	jl	.label_2530
.label_2489:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_2473
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	free
.label_2473:
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	test	r12d, r12d
	je	.label_2510
	mov	rsp, rsp
	jmp	.label_2505
.label_2476:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0
.label_2510:
	xor	r12d, r12d
.label_2505:
	mov	rbp, rbp
	mov	eax, r12d
	add	rsp, 0xc8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_2509:
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	jmp	.label_2505
.label_2512:
	mov	dword ptr [rsp + 0x10], eax
.label_2471:
	nop	
	mov	dword ptr [rsp + 0xc], r12d
	lea	rdi, [rdi]
	jmp	.label_2505
.label_2497:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_2510
.label_2526:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x30]
	nop	
	movups	xmmword ptr [rax], xmm0
	lea	rdi, [rdi]
	mov	r12d, 0xc
	jmp	.label_2489
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4210a0

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rsp, rsp
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rdx, qword ptr [r15 + 8]
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_2540
	mov	r10, qword ptr [r14 + 8]
	nop	
	test	r10, r10
	je	.label_2540
	lea	rax, [r10 + rdx]
	mov	rbx, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	lea	rcx, [rsi + rax]
	cmp	rcx, rbx
	mov	rsp, rsp
	jle	.label_2544
	add	rbx, rax
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_2540
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r14 + 8]
	mov	rsp, rsp
	jmp	.label_2546
.label_2544:
	lea	rsi, [rsi]
	lea	r8, [r12 + 0x10]
.label_2546:
	lea	r9, [rdx + rsi]
	add	r9, r10
	dec	rsi
.label_2539:
	dec	rdx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	nop	
	mov	rcx, qword ptr [r14 + 0x10]
	nop	
	mov	rdi, r10
.label_2547:
	lea	rdi, [rdi]
	lea	r10, [rdi - 1]
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2538:
	nop	
	cmp	qword ptr [rbx + rdx*8], rax
	lea	rsi, [rsi]
	je	.label_2533
	nop	
	jl	.label_2537
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	rsp, rsp
	lea	rdx, [rdx - 1]
	mov	rsp, rsp
	jg	.label_2538
	nop	
	jmp	.label_2535
	nop	word ptr cs:[rax + rax]
.label_2537:
	nop	
	cmp	rdi, 2
	nop	
	mov	rdi, r10
	jge	.label_2547
	jmp	.label_2535
	nop	dword ptr [rax]
.label_2533:
	mov	rbx, qword ptr [r8]
	test	rsi, rsi
	lea	rsi, [rsi]
	js	.label_2534
	nop	dword ptr [rax + rax]
.label_2542:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + rsi*8]
	cmp	rcx, rax
	jle	.label_2543
	test	rsi, rsi
	mov	rsp, rsp
	lea	rsi, [rsi - 1]
	nop	
	jg	.label_2542
	mov	rbp, rbp
	jmp	.label_2534
.label_2543:
	test	rsi, rsi
	js	.label_2534
	cmp	rcx, rax
	je	.label_2549
	nop	dword ptr [rax + rax]
.label_2534:
	mov	rbp, rbp
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_2549:
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_2535
	cmp	rdi, 2
	lea	rdi, [rdi]
	jge	.label_2539
.label_2535:
	mov	rcx, qword ptr [r12 + 8]
	mov	r11, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r14 + 8]
	lea	r14, [rcx + r11 - 1]
	add	r14, rdx
	mov	rax, r14
	sub	rax, r9
	lea	r10, [rax + 1]
	lea	rsi, [rax + rcx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 8], rsi
	lea	rdi, [rdi]
	test	rcx, rcx
	jle	.label_2541
	nop	
	test	rax, rax
	js	.label_2541
	lea	rdi, [rdi]
	add	r11, rdx
	mov	rbp, rbp
	add	r11, rcx
	dec	rcx
	sub	r11, r9
	xor	edx, edx
.label_2550:
	mov	rsp, rsp
	mov	rdi, qword ptr [r8]
	lea	rax, [rdi + r11*8]
	nop	dword ptr [rax + rax]
.label_2548:
	mov	rsi, qword ptr [rdi + r14*8]
	nop	
	mov	rbx, qword ptr [rdi + rcx*8]
	mov	rbp, rbp
	cmp	rsi, rbx
	lea	rdi, [rdi]
	jg	.label_2536
	mov	qword ptr [rax + rcx*8], rbx
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	lea	rdi, [rdi]
	jg	.label_2548
	jmp	.label_2545
.label_2536:
	mov	rsp, rsp
	dec	r14
	nop	
	dec	r11
	lea	rax, [r10 + rcx]
	dec	r10
	mov	qword ptr [rdi + rax*8], rsi
	nop	
	jne	.label_2550
	mov	rbp, rbp
	jmp	.label_2551
.label_2541:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r8]
.label_2545:
	mov	rdx, r10
.label_2551:
	lea	rsi, [rdi + r9*8]
	lea	rsi, [rsi]
	shl	rdx, 3
	call	memcpy
	lea	rdi, [rdi]
	xor	eax, eax
.label_2540:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421300

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], rcx
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x38]
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], 0
	nop	
	lea	rdx, [r15 + r15*2]
	mov	rsp, rsp
	mov	r9, qword ptr [rcx + rdx*8 + 8]
	test	r9, r9
	jle	.label_2552
	lea	rsi, [rsi]
	lea	rax, [rcx + rdx*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	lea	r14, [rcx + rdx*8 + 0x10]
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_2572:
	mov	rbp, rbp
	mov	r11, qword ptr [r14]
	mov	rbp, rbp
	mov	rcx, qword ptr [r11 + r13*8]
	lea	rsi, [rsi]
	cmp	rcx, r15
	je	.label_2555
	mov	rdx, qword ptr [rdi]
	mov	rax, rcx
	mov	rsp, rsp
	shl	rax, 4
	lea	rsi, [rsi]
	test	byte ptr [rdx + rax + 8], 8
	je	.label_2555
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + r8*8 + 0x10]
	nop	
	mov	rsi, qword ptr [rcx]
	mov	rbp, rbp
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	lea	rdi, [rdi]
	jl	.label_2566
	mov	rsp, rsp
	mov	r10, qword ptr [rcx + 8]
.label_2566:
	test	r9, r9
	lea	rsi, [rsi]
	jle	.label_2562
	mov	rcx, r9
	dec	rcx
	mov	rbp, rbp
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_2578
	nop	
.label_2573:
	mov	rbp, rbp
	lea	rbx, [rbp + rcx]
	lea	rdi, [rdi]
	shr	rbx, 1
	lea	rdi, [rdi]
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rax, [rbx + 1]
	mov	rbp, rbp
	cmovl	rbp, rax
	nop	
	cmovge	rcx, rbx
	mov	rsp, rsp
	cmp	rbp, rcx
	jb	.label_2573
.label_2578:
	cmp	rbp, -1
	je	.label_2562
	lea	rsi, [rsi]
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2565
.label_2562:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	jle	.label_2565
	lea	rdi, [rdi]
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	ecx, 0
	je	.label_2570
	nop	word ptr cs:[rax + rax]
.label_2553:
	lea	rax, [rcx + rbp]
	mov	rbp, rbp
	shr	rax, 1
	nop	
	cmp	qword ptr [rbx + rax*8], rsi
	lea	rdx, [rax + 1]
	lea	rdi, [rdi]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	mov	rsp, rsp
	cmp	rcx, rbp
	mov	rbp, rbp
	jb	.label_2553
.label_2570:
	lea	rdi, [rdi]
	cmp	rcx, -1
	nop	
	je	.label_2565
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdi, [rdi]
	je	.label_2560
.label_2565:
	test	r10, r10
	jle	.label_2555
	test	r9, r9
	mov	rsp, rsp
	jle	.label_2558
	mov	rbp, r9
	mov	rsp, rsp
	dec	rbp
	mov	ecx, 0
	lea	rdi, [rdi]
	je	.label_2568
	nop	word ptr cs:[rax + rax]
.label_2575:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [r11 + rax*8], r10
	mov	rbp, rbp
	lea	rdx, [rax + 1]
	mov	rsp, rsp
	cmovl	rcx, rdx
	cmovge	rbp, rax
	mov	rbp, rbp
	cmp	rcx, rbp
	lea	rdi, [rdi]
	jb	.label_2575
.label_2568:
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_2558
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdi, [rdi]
	je	.label_2555
.label_2558:
	mov	rsi, qword ptr [r12 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	jle	.label_2555
	mov	rbp, rbp
	dec	rsi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2577
	nop	word ptr cs:[rax + rax]
.label_2576:
	nop	
	lea	rax, [rcx + rsi]
	shr	rax, 1
	cmp	qword ptr [rbp + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	mov	rsp, rsp
	cmovge	rsi, rax
	cmp	rcx, rsi
	mov	rbp, rbp
	jb	.label_2576
.label_2577:
	cmp	rcx, -1
	je	.label_2555
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rsi, [rsi]
	jne	.label_2555
.label_2560:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x38]
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdx, [rax + r8*8]
	nop	
	lea	rdi, [rsp + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	nop	
	mov	ebp, eax
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_2574
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rax]
	mov	rdi, rbx
	nop	word ptr [rax + rax]
.label_2555:
	inc	r13
	cmp	r13, r9
	jl	.label_2572
	test	r9, r9
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	jle	.label_2552
	lea	r8, [rsp + 0x30]
	mov	rsp, rsp
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r11, [r10 - 1]
	lea	rsi, [rsi]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_2567:
	lea	rsi, [rsi]
	test	r10, r10
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + r13*8]
	jle	.label_2556
	lea	rsi, [rsi]
	test	r11, r11
	lea	rsi, [rsi]
	mov	rdx, r11
	mov	rbp, rbp
	mov	ecx, 0
	je	.label_2563
	nop	word ptr cs:[rax + rax]
.label_2564:
	lea	rdi, [rdi]
	lea	rdi, [rcx + rdx]
	mov	rbp, rbp
	shr	rdi, 1
	mov	rbp, rbp
	cmp	qword ptr [rsi + rdi*8], rax
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmovl	rcx, rbx
	lea	rsi, [rsi]
	cmovge	rdx, rdi
	mov	rsp, rsp
	cmp	rcx, rdx
	jb	.label_2564
.label_2563:
	lea	rdi, [rdi]
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_2556
	cmp	qword ptr [rsi + rcx*8], rax
	mov	rsp, rsp
	je	.label_2557
.label_2556:
	mov	rsp, rsp
	mov	r14, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	r14, r14
	jle	.label_2557
	mov	r15, r14
	dec	r15
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdi, r15
	mov	edx, 0
	je	.label_2561
	nop	word ptr cs:[rax + rax]
.label_2579:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	mov	rbp, rbp
	cmp	qword ptr [rcx + rbx*8], rax
	lea	rbp, [rbx + 1]
	lea	rdi, [rdi]
	cmovl	rdx, rbp
	cmovge	rdi, rbx
	cmp	rdx, rdi
	nop	
	jb	.label_2579
.label_2561:
	cmp	qword ptr [rcx + rdx*8], rax
	mov	rax, rdx
	mov	rbp, rbp
	je	.label_2554
	nop	
	mov	rax, -1
.label_2554:
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_2557
	cmp	r14, rax
	jle	.label_2557
	mov	qword ptr [r12 + 8], r15
	cmp	r15, rax
	jle	.label_2557
	nop	
.label_2571:
	nop	
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	nop	
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, qword ptr [r12 + 8]
	jl	.label_2571
	nop	dword ptr [rax + rax]
.label_2557:
	inc	r13
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r13, qword ptr [rax]
	mov	rsp, rsp
	jl	.label_2567
	jmp	.label_2569
.label_2552:
	mov	rbp, rbp
	lea	r8, [rsp + 0x30]
.label_2569:
	mov	rdi, qword ptr [r8]
	call	free
	xor	ebp, ebp
.label_2559:
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_2574:
	nop	
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	jmp	.label_2559
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4217a0

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r8
	mov	qword ptr [rsp + 0x28], rcx
	nop	
	mov	qword ptr [rsp + 0x20], rdx
	lea	rsi, [rsi]
	mov	r10, rsi
	mov	qword ptr [rsp + 0x18], rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rdi + 0xc8]
	mov	rbp, rbp
	xor	r14d, r14d
	test	rax, rax
	jle	.label_2588
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r14d, r14d
	mov	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_2590:
	lea	rsi, [rdx + r14]
	mov	rbx, rsi
	mov	rsp, rsp
	shr	rbx, 0x3f
	add	rbx, rsi
	nop	
	sar	rbx, 1
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rbx
	mov	rbp, rbp
	lea	rsi, [rbx + 1]
	lea	rdi, [rdi]
	cmovl	r14, rsi
	cmp	r14, rdx
	jl	.label_2590
.label_2588:
	nop	
	cmp	r14, rax
	lea	rdi, [rdi]
	jge	.label_2581
	mov	rsi, qword ptr [rdi + 0xd8]
	lea	rdi, [rdi]
	lea	rdx, [r14 + r14*4]
	nop	
	cmp	qword ptr [rsi + rdx*8 + 8], rcx
	je	.label_2585
.label_2581:
	mov	r14, -1
.label_2585:
	nop	
	xor	r12d, r12d
	test	rax, rax
	nop	
	jle	.label_2592
	mov	rbp, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	xor	r12d, r12d
	lea	rsi, [rsi]
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_2583:
	lea	rsi, [rdx + r12]
	lea	rsi, [rsi]
	mov	rbx, rsi
	shr	rbx, 0x3f
	mov	rbp, rbp
	add	rbx, rsi
	sar	rbx, 1
	nop	
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], r9
	mov	rsp, rsp
	cmovge	rdx, rbx
	lea	rsi, [rsi]
	lea	rsi, [rbx + 1]
	mov	rbp, rbp
	cmovl	r12, rsi
	lea	rdi, [rdi]
	cmp	r12, rdx
	jl	.label_2583
.label_2592:
	cmp	r12, rax
	jge	.label_2582
	mov	rax, qword ptr [rdi + 0xd8]
	nop	
	lea	rdx, [r12 + r12*4]
	cmp	qword ptr [rax + rdx*8 + 8], r9
	lea	rdi, [rdi]
	je	.label_2584
.label_2582:
	nop	
	mov	r12, -1
.label_2584:
	cmp	qword ptr [r10 + 8], 0
	jle	.label_2593
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2591:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rsp, rsp
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rbp, qword ptr [rdx + r15*8]
	lea	rsi, [rbp + rbp*4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rsi*8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rbx]
	lea	rdi, [rdi]
	shl	rdx, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + rdx]
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	mov	r13d, 0xffffffff
	mov	rsp, rsp
	cmp	r11, rcx
	mov	rbp, rbp
	jle	.label_2589
	lea	rdi, [rdi]
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	jmp	.label_2580
.label_2589:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rsi*8 + 0x18]
	mov	ebx, 1
	cmp	rsi, rcx
	lea	rsi, [rsi]
	jl	.label_2580
	nop	
	cmp	r11, rcx
	mov	rsp, rsp
	sete	bl
	nop	
	movzx	r8d, bl
	lea	rdi, [rdi]
	cmp	rsi, rcx
	mov	rsp, rsp
	sete	bl
	movzx	esi, bl
	add	esi, esi
	xor	ebx, ebx
	or	esi, r8d
	je	.label_2580
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rdx
	nop	
	mov	r8, r14
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	rbp, r10
	mov	rsp, rsp
	call	check_dst_limits_calc_pos_1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x18]
	nop	
	mov	r10, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9, rbx
	mov	ebx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r10 + 0x10]
	nop	
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	lea	rsi, [rbp + rbp*4]
	nop	
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	nop	dword ptr [rax + rax]
.label_2580:
	mov	rbp, rbp
	cmp	r11, r9
	jg	.label_2587
	lea	rdi, [rdi]
	lea	rsi, [rbp + rbp*4]
	mov	rax, qword ptr [rax + rsi*8 + 0x18]
	mov	r13d, 1
	cmp	rax, r9
	jl	.label_2587
	lea	rsi, [rsi]
	cmp	r11, r9
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rsp, rsp
	sete	bl
	mov	rbp, rbp
	movzx	ebp, bl
	mov	ebx, esi
	mov	rbp, rbp
	cmp	rax, r9
	sete	al
	movzx	esi, al
	mov	rsp, rsp
	add	esi, esi
	mov	rbp, rbp
	xor	r13d, r13d
	or	esi, ebp
	nop	
	je	.label_2587
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, r12
	mov	rbp, r9
	mov	r13, r10
	call	check_dst_limits_calc_pos_1
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r10, r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r9, rbp
	mov	r13d, eax
	nop	dword ptr [rax + rax]
.label_2587:
	nop	
	cmp	r13d, ebx
	mov	al, 1
	jne	.label_2586
	nop	
	inc	r15
	cmp	r15, qword ptr [r10 + 8]
	jl	.label_2591
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_2586
.label_2593:
	xor	eax, eax
.label_2586:
	mov	rbp, rbp
	add	rsp, 0x38
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421ae0

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x48
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp], rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rsi, [rsi]
	jle	.label_2603
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	eax, 1
	mov	cl, bl
	nop	
	shl	rax, cl
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x3c], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	nop	
	mov	byte ptr [rsp + 0x3b], cl
	mov	eax, r13d
	nop	
	and	eax, 1
	mov	dword ptr [rsp + 0x24], eax
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2607:
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rax + r15*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp]
	mov	rsp, rsp
	mov	rdx, r12
	lea	rsi, [rsi]
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	nop	
	cmp	eax, 9
	lea	rsi, [rsi]
	je	.label_2594
	cmp	eax, 8
	mov	rsp, rsp
	je	.label_2600
	mov	rsp, rsp
	cmp	eax, 4
	jne	.label_2595
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_2595
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	add	r14, qword ptr [rax + 0xd8]
	nop	
.label_2606:
	mov	rbp, rbp
	cmp	qword ptr [r14], r12
	jne	.label_2601
	lea	rsi, [rsi]
	cmp	rbx, 0x3f
	jg	.label_2605
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x28], rax
	je	.label_2601
.label_2605:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	je	.label_2602
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_2604
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	nop	
	cmp	ecx, -1
	mov	rsp, rsp
	je	.label_2596
	lea	rdi, [rdi]
	cmp	rbx, 0x3f
	mov	rsp, rsp
	jg	.label_2601
	lea	rdi, [rdi]
	jmp	.label_2599
.label_2604:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x3b], 0
	mov	rsp, rsp
	je	.label_2599
	xor	eax, eax
	cmp	dword ptr [rsp + 0x3c], 0
	nop	
	je	.label_2601
	mov	rbp, rbp
	jmp	.label_2596
.label_2599:
	mov	rsp, rsp
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x18]
	nop	
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	word ptr cs:[rax + rax]
.label_2601:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x20], 0
	mov	rsp, rsp
	lea	r14, [r14 + 0x28]
	jne	.label_2606
	jmp	.label_2595
	nop	word ptr [rax + rax]
.label_2594:
	cmp	dword ptr [rsp + 0x3c], 0
	je	.label_2595
	xor	eax, eax
	jmp	.label_2598
	nop	dword ptr [rax + rax]
.label_2600:
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x24], 0
	nop	
	je	.label_2595
	mov	eax, 0xffffffff
.label_2598:
	nop	
	cmp	qword ptr [rcx], rbx
	je	.label_2596
.label_2595:
	inc	r15
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r15, qword ptr [rax]
	jl	.label_2607
.label_2603:
	lea	rsi, [rsi]
	shr	r13d, 1
	nop	
	and	r13d, 1
	lea	rdi, [rdi]
	jmp	.label_2597
.label_2602:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_2597:
	lea	rdi, [rdi]
	mov	eax, r13d
.label_2596:
	add	rsp, 0x48
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x421d90

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdi, rsi
	je	.label_2608
	nop	dword ptr [rax]
.label_2611:
	movzx	ecx, byte ptr [rdi]
	lea	edx, [rcx - 0x41]
	lea	rsi, [rsi]
	lea	eax, [rcx + 0x20]
	cmp	edx, 0x1a
	mov	rsp, rsp
	cmovae	eax, ecx
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsi]
	mov	rbp, rbp
	lea	r8d, [rdx - 0x41]
	mov	rbp, rbp
	lea	ecx, [rdx + 0x20]
	lea	rsi, [rsi]
	cmp	r8d, 0x1a
	cmovae	ecx, edx
	lea	rsi, [rsi]
	and	eax, 0xff
	mov	rbp, rbp
	je	.label_2609
	inc	rdi
	inc	rsi
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	eax, ecx
	je	.label_2611
	jmp	.label_2610
.label_2609:
	lea	rsi, [rsi]
	movzx	ecx, cl
	xor	eax, eax
.label_2610:
	nop	
	sub	eax, ecx
.label_2608:
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x421e10

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
	jne	.label_2612
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_2613
	test	cl, cl
	mov	rsp, rsp
	jne	.label_2613
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_2613
.label_2612:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_2613
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_2613:
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
	#Procedure 0x421ea0

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
	je	.label_2615
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_2614
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_2616
.label_2614:
	nop	
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_2615
.label_2616:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_2615:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x421ef0

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
	mov	eax, OFFSET FLAT:.str.1_10
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_2617
	nop	
	mov	rax, rcx
.label_2617:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421f30

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x14], 0
	lea	rdi, [rdi]
	jne	.label_2624
	mov	rsp, rsp
	cmp	byte ptr [rbx + 8], 0
	mov	rbp, rbp
	je	.label_2620
	nop	
	lea	r13, [rbx + 0x18]
	mov	r15, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	lea	r14, [rbx + 0xc]
	lea	rsi, [rsi]
	jmp	.label_2626
.label_2620:
	mov	r15, qword ptr [rbx + 0x18]
	nop	
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	lea	rsi, [rsi]
	bt	ecx, eax
	jae	.label_2625
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x20], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x2c], eax
	mov	byte ptr [rbx + 0x28], 1
	lea	rsi, [rsi]
	jmp	.label_2622
.label_2625:
	mov	rbp, rbp
	lea	r14, [rbx + 0xc]
	nop	
	mov	rdi, r14
	call	mbsinit
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_2618
	mov	byte ptr [rbx + 8], 1
	mov	rbp, rbp
	lea	r13, [rbx + 0x18]
.label_2626:
	lea	r12, [rbx + 0x2c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx]
	lea	rsi, [rsi]
	sub	rdx, r15
	mov	rdi, r12
	mov	rsi, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x20], rax
	lea	rdi, [rdi]
	cmp	rax, -2
	lea	rsi, [rsi]
	je	.label_2627
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2619
	lea	rdi, [rdi]
	cmp	rax, -1
	jne	.label_2628
	mov	qword ptr [rbx + 0x20], 1
	mov	byte ptr [rbx + 0x28], 0
	mov	rbp, rbp
	jmp	.label_2622
.label_2627:
	mov	rax, qword ptr [rbx]
	sub	rax, qword ptr [r13]
	mov	qword ptr [rbx + 0x20], rax
	mov	rbp, rbp
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_2622
.label_2619:
	mov	qword ptr [rbx + 0x20], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_2621
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 0
	jne	.label_2623
.label_2628:
	mov	byte ptr [rbx + 0x28], 1
	mov	rdi, r14
	call	mbsinit
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_2622
	mov	byte ptr [rbx + 8], 0
.label_2622:
	mov	rbp, rbp
	mov	byte ptr [rbx + 0x14], 1
.label_2624:
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
.label_2621:
	mov	edi, OFFSET FLAT:.str.2_4
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_11
	lea	rdi, [rdi]
	mov	edx, 0xa9
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_2623:
	mov	edi, OFFSET FLAT:.str.3_3
	nop	
	mov	esi, OFFSET FLAT:.str.1_11
	mov	edx, 0xaa
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_2618:
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_11
	nop	
	mov	edx, 0x8e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	nop	
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x4220f0
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	mov	rbp, rbp
	add	qword ptr [rdi + 0x18], rsi
	lea	rsi, [rsi]
	add	qword ptr [rdi], rsi
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x422100
	.globl mbiter_multi_copy
	.type mbiter_multi_copy, @function
mbiter_multi_copy:

	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	qword ptr [r14], rax
	nop	
	mov	al, byte ptr [rbx + 8]
	lea	rsi, [rsi]
	test	al, al
	mov	byte ptr [r14 + 8], al
	je	.label_2629
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xc]
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0xc], rax
	nop	
	jmp	.label_2632
.label_2629:
	mov	qword ptr [r14 + 0xc], 0
.label_2632:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx + 0x14]
	mov	byte ptr [r14 + 0x14], al
	mov	rsi, qword ptr [rbx + 0x18]
	lea	rax, [rbx + 0x30]
	cmp	rsi, rax
	mov	rbp, rbp
	jne	.label_2630
	lea	r15, [r14 + 0x30]
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rdi, r15
	mov	rsp, rsp
	call	memcpy
	lea	rdi, [rdi]
	mov	rsi, r15
.label_2630:
	nop	
	mov	qword ptr [r14 + 0x18], rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	test	al, al
	mov	byte ptr [r14 + 0x28], al
	lea	rdi, [rdi]
	je	.label_2631
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x2c], eax
.label_2631:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4221b0

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x178
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rsp, rsp
	call	__ctype_get_mb_cur_max
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rbp, rbp
	jb	.label_2667
	mov	qword ptr [rsp + 0xf0], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rbp
	mov	byte ptr [rsp + 0xe0], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe4], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xec], 0
	nop	
	lea	rdi, [rsp + 0xe0]
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	test	al, al
	lea	rdi, [rdi]
	je	.label_2644
	shr	rax, 0x20
	jne	.label_2644
	mov	rax, rbx
	jmp	.label_2640
.label_2667:
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp]
	test	cl, cl
	mov	r11, rbp
	je	.label_2651
	lea	rdi, [rdi]
	mov	rbp, rbx
	mov	rbp, rbp
	mov	r14b, byte ptr [rbp]
	xor	eax, eax
	test	r14b, r14b
	je	.label_2640
	mov	rbp, rbp
	mov	r10b, 1
	nop	
	xor	r9d, r9d
	lea	rdi, [rdi]
	movzx	r12d, cl
	mov	rsp, rsp
	mov	rdi, r11
	xor	r13d, r13d
	nop	
	xor	r15d, r15d
.label_2643:
	lea	rdi, [rdi]
	cmp	r15, 0xa
	nop	
	jb	.label_2659
	mov	al, r10b
	nop	
	and	al, 1
	nop	
	je	.label_2660
	lea	rax, [r15 + r15*4]
	cmp	r13, rax
	jb	.label_2656
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	mov	rsp, rsp
	mov	rbx, rbp
	lea	rsi, [rsi]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_2665
	mov	rsi, r13
	sub	rsi, r9
	mov	rbp, r11
	mov	qword ptr [rsp + 0x170], rdi
	call	strnlen
	nop	
	mov	rdi, qword ptr [rsp + 0x170]
	mov	rbp, rbp
	mov	r11, rbp
	cmp	byte ptr [rdi + rax], 0
	mov	r9, r13
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_2665
	lea	rsi, [rsi]
	add	rdi, rax
	mov	rbp, rbp
	mov	r9, r13
	jne	.label_2655
.label_2665:
	mov	qword ptr [rsp + 0xd8], r13
	mov	rbp, rbp
	mov	r13, r9
	mov	rbp, rbp
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbp, r11
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rdx, rax
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0xe0]
	lea	rdi, [rdi]
	call	knuth_morris_pratt
	lea	rdi, [rdi]
	test	al, al
	jne	.label_2669
	lea	rsi, [rsi]
	mov	r14b, byte ptr [rbx]
	lea	rdi, [rdi]
	xor	r10d, r10d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	r11, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0xd8]
	jmp	.label_2655
.label_2656:
	mov	rsp, rsp
	mov	rbx, rbp
	lea	rdi, [rdi]
	jmp	.label_2655
.label_2659:
	mov	rbx, rbp
	jmp	.label_2655
.label_2660:
	mov	rsp, rsp
	mov	rbx, rbp
	nop	word ptr [rax + rax]
.label_2655:
	mov	rsp, rsp
	movzx	eax, r14b
	cmp	eax, r12d
	mov	eax, 1
	nop	
	mov	rbp, rbx
	jne	.label_2663
	nop	word ptr cs:[rax + rax]
.label_2645:
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	dl, byte ptr [r11 + rcx]
	test	dl, dl
	je	.label_2647
	mov	rsp, rsp
	mov	bl, byte ptr [rbp + rcx]
	mov	rbp, rbp
	test	bl, bl
	mov	eax, 0
	je	.label_2640
	nop	
	movzx	edx, dl
	movzx	esi, bl
	lea	rdi, [rdi]
	lea	rax, [rcx + 1]
	lea	rdi, [rdi]
	cmp	esi, edx
	nop	
	je	.label_2645
	lea	r13, [r13 + rcx + 1]
	mov	rbp, rbp
	jmp	.label_2654
	nop	dword ptr [rax]
.label_2663:
	inc	r13
.label_2654:
	inc	r15
	mov	r14b, byte ptr [rbp + 1]
	inc	rbp
	test	r14b, r14b
	nop	
	mov	eax, 0
	jne	.label_2643
	jmp	.label_2640
.label_2644:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x138], rax
	mov	byte ptr [rsp + 0x128], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x12c], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x134], 0
	nop	
	mov	qword ptr [rsp + 0x68], rbx
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x58], 0
	mov	qword ptr [rsp + 0x5c], 0
	mov	byte ptr [rsp + 0x64], 0
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	mov	rbp, rbp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x78]
	nop	
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x168], rcx
	lea	rsi, [rsi]
	test	al, al
	je	.label_2635
	shr	rax, 0x20
	lea	rsi, [rsi]
	je	.label_2664
.label_2635:
	mov	al, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x170], eax
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x168], rax
	lea	r13, [rsp + 0x128]
	xor	ebp, ebp
	xor	r14d, r14d
	lea	rsi, [rsi]
	xor	r12d, r12d
.label_2638:
	lea	rsi, [rsi]
	mov	r15, r14
	cmp	r12, 0xa
	jb	.label_2670
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x170]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 8]
	je	.label_2637
	mov	rbp, rbp
	lea	rax, [r12 + r12*4]
	mov	qword ptr [rsp + 0xd8], r12
	cmp	r15, rax
	lea	rsi, [rsi]
	jb	.label_2634
	lea	rdi, [rdi]
	mov	r14, rsi
	cmp	r15, rbp
	je	.label_2633
	sub	rbp, r15
	nop	word ptr cs:[rax + rax]
.label_2641:
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x148]
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	je	.label_2653
	nop	
	shr	rax, 0x20
	je	.label_2633
.label_2653:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x140]
	add	qword ptr [rsp + 0x138], rax
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x134], 0
	mov	rbp, rbp
	inc	rbp
	jne	.label_2641
.label_2633:
	nop	
	mov	rdi, r13
	lea	rsi, [rsi]
	call	mbuiter_multi_next
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x148]
	test	al, al
	je	.label_2661
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	rbp, r15
	mov	rsi, r14
	jne	.label_2634
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	r14, rsi
	nop	
	lea	rdx, [rsp + 0x10]
	call	knuth_morris_pratt_multibyte
	test	al, al
	nop	
	jne	.label_2668
	mov	dword ptr [rsp + 0x170], 0
.label_2661:
	mov	rbp, r15
	mov	rsi, r14
	jmp	.label_2634
.label_2670:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xd8], r12
	mov	rsi, qword ptr [rsp + 8]
	mov	rbp, rbp
	jmp	.label_2634
.label_2637:
	nop	
	mov	qword ptr [rsp + 0xd8], r12
	nop	dword ptr [rax + rax]
.label_2634:
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, rbp
	lea	r14, [r15 + 1]
	mov	rax, qword ptr [rsp + 0x78]
	test	al, al
	lea	rdi, [rdi]
	je	.label_2639
	mov	rcx, qword ptr [rsp + 0x100]
	test	cl, cl
	mov	rbp, rbp
	je	.label_2639
	nop	
	shr	rcx, 0x20
	mov	rsp, rsp
	shr	rax, 0x20
	mov	rsp, rsp
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_2650
	mov	rbp, rbp
	jmp	.label_2652
	nop	word ptr cs:[rax + rax]
.label_2639:
	mov	rdx, qword ptr [rsp + 0x70]
	cmp	rdx, qword ptr [rsp + 0xf8]
	nop	
	jne	.label_2652
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_2652
.label_2650:
	movups	xmm0, xmmword ptr [rsp + 0x58]
	nop	
	movups	xmm1, xmmword ptr [rsp + 0x68]
	movups	xmm2, xmmword ptr [rsp + 0x78]
	movups	xmm3, xmmword ptr [rsp + 0x88]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm3
	movaps	xmmword ptr [rsp + 0x30], xmm2
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x20], xmm1
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	add	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x1c], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0xa8], rax
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x98], 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x9c], 0
	mov	byte ptr [rsp + 0xa4], 0
	lea	rdi, [rsp + 0x98]
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	test	al, al
	mov	rsp, rsp
	je	.label_2646
	lea	rdi, [rdi]
	shr	rax, 0x20
	je	.label_2648
.label_2646:
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	add	qword ptr [rsp + 0xa8], rax
	mov	byte ptr [rsp + 0xa4], 0
	lea	rdi, [rsp + 0x98]
	nop	
	call	mbuiter_multi_next
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	test	al, al
	je	.label_2657
	lea	rdi, [rdi]
	shr	rax, 0x20
	nop	
	je	.label_2658
.label_2657:
	add	r15, 2
	mov	rsp, rsp
	mov	r14, r15
	nop	dword ptr [rax]
.label_2636:
	lea	rdi, [rsp + 0x10]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	lea	rdi, [rdi]
	je	.label_2662
	test	eax, eax
	mov	rbp, rbp
	je	.label_2664
.label_2662:
	test	cl, cl
	lea	rdi, [rdi]
	sete	dl
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	test	cl, cl
	lea	rdi, [rdi]
	je	.label_2666
	test	dl, dl
	jne	.label_2666
	shr	rcx, 0x20
	nop	
	cmp	eax, ecx
	lea	rsi, [rsi]
	jne	.label_2642
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 0xa8]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0xb0]
	jmp	.label_2649
	nop	dword ptr [rax + rax]
.label_2666:
	mov	r13, qword ptr [rsp + 0x28]
	cmp	r13, qword ptr [rsp + 0xb0]
	jne	.label_2642
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0xa8]
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	mov	rax, r13
	mov	rbp, rbp
	jne	.label_2642
.label_2649:
	add	r15, rax
	nop	
	mov	qword ptr [rsp + 0x20], r15
	nop	
	mov	byte ptr [rsp + 0x1c], 0
	add	r12, r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], r12
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xa4], 0
	mov	rbp, rbp
	lea	rdi, [rsp + 0x98]
	mov	rbp, rbp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0xb8]
	inc	r14
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_2636
	shr	rax, 0x20
	jne	.label_2636
	jmp	.label_2658
.label_2642:
	lea	r13, [rsp + 0x128]
	nop	word ptr cs:[rax + rax]
.label_2652:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0xd8]
	inc	r12
	mov	rax, qword ptr [rsp + 0x70]
	add	qword ptr [rsp + 0x68], rax
	mov	byte ptr [rsp + 0x64], 0
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	mov	rsp, rsp
	call	mbuiter_multi_next
	nop	
	mov	rax, qword ptr [rsp + 0x78]
	test	al, al
	je	.label_2638
	shr	rax, 0x20
	mov	rbp, rbp
	jne	.label_2638
.label_2664:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x168]
	jmp	.label_2640
.label_2651:
	mov	rax, rbx
	nop	
	jmp	.label_2640
.label_2647:
	mov	rax, rbp
	jmp	.label_2640
.label_2658:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x168], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x168]
.label_2640:
	mov	rsp, rsp
	add	rsp, 0x178
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_2669:
	mov	rax, qword ptr [rsp + 0xe0]
	jmp	.label_2640
.label_2668:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x168], rax
	mov	rax, qword ptr [rsp + 0x168]
	nop	
	jmp	.label_2640
.label_2648:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4229b0

	.globl knuth_morris_pratt_multibyte
	.type knuth_morris_pratt_multibyte, @function
knuth_morris_pratt_multibyte:
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0xb8
	mov	r12, rdx
	mov	r14, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	call	mbslen
	nop	
	mov	r15, rax
	movabs	rax, 0x249249249249249
	lea	rdi, [rdi]
	cmp	r15, rax
	lea	rsi, [rsi]
	jbe	.label_2696
	nop	
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_2697
.label_2696:
	nop	
	imul	rdi, r15, 0x38
	cmp	rdi, 0xfa0
	ja	.label_2672
	mov	rax, rsp
	add	rdi, 0x2e
	mov	rbp, rbp
	and	rdi, 0xfffffffffffffff0
	mov	rsp, rsp
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	lea	rdi, [rdi]
	neg	rdi
	nop	
	lea	rax, [rax + rdi + 0x1f]
	nop	
	and	rax, 0xffffffffffffffe0
	lea	rsi, [rsi]
	jmp	.label_2677
.label_2672:
	lea	rdi, [rdi]
	call	mmalloca
.label_2677:
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2690
	mov	qword ptr [rbp - 0x90], rbx
	mov	r13, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], r12
	lea	rax, [r15 + r15*2]
	mov	rbp, rbp
	shl	rax, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], r14
	mov	byte ptr [rbp - 0xd8], 0
	mov	qword ptr [rbp - 0xd4], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xcc], 0
	lea	rdi, [rbp - 0xd8]
	mov	rsp, rsp
	call	mbuiter_multi_next
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	test	al, al
	je	.label_2683
	shr	rax, 0x20
	je	.label_2687
.label_2683:
	lea	rbx, [rbp - 0xb0]
	mov	rsp, rsp
	lea	r14, [r13 + 0x18]
	lea	r12, [rbp - 0xd8]
	nop	
.label_2693:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_2695
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	rax, r14
.label_2695:
	mov	qword ptr [r14 - 0x18], rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [r14 - 0x10], rax
	mov	rax, qword ptr [rbp - 0xb8]
	test	al, al
	lea	rdi, [rdi]
	mov	byte ptr [r14 - 8], al
	je	.label_2674
	shr	rax, 0x20
	mov	dword ptr [r14 - 4], eax
.label_2674:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	add	qword ptr [rbp - 0xc8], rax
	mov	byte ptr [rbp - 0xcc], 0
	mov	rdi, r12
	lea	rsi, [rsi]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0xb8]
	add	r14, 0x30
	test	al, al
	je	.label_2693
	shr	rax, 0x20
	lea	rsi, [rsi]
	jne	.label_2693
.label_2687:
	mov	r12, r13
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [r12 + rax]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + rax + 8], 1
	lea	rdi, [rdi]
	mov	ecx, 2
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	r15, 3
	mov	qword ptr [rbp - 0x40], r15
	nop	
	jb	.label_2694
.label_2681:
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rbp, rbp
	lea	rax, [rcx + rcx*2]
	shl	rax, 4
	mov	rbp, rbp
	lea	rcx, [rax + r12 - 0x30]
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	r15b, byte ptr [rax + r12 - 0x20]
	lea	r14, [rax + r12 - 0x28]
	lea	rax, [rax + r12 - 0x1c]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2671
	nop	word ptr cs:[rax + rax]
.label_2699:
	lea	rsi, [rsi]
	sub	rbx, qword ptr [rsi + rbx*8]
.label_2671:
	lea	rdi, [rdi]
	test	r15b, r15b
	je	.label_2700
	lea	rsi, [rsi]
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	mov	rsp, rsp
	cmp	byte ptr [r12 + rax + 0x10], 0
	lea	rsi, [rsi]
	je	.label_2700
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rcx]
	mov	rsp, rsp
	cmp	ecx, dword ptr [r12 + rax + 0x14]
	jne	.label_2678
	mov	rsp, rsp
	jmp	.label_2682
.label_2700:
	mov	rbp, rbp
	mov	rdx, qword ptr [r14]
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	mov	rbp, rbp
	cmp	rdx, qword ptr [r12 + rax + 8]
	jne	.label_2678
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r12 + rax]
	lea	rdi, [rdi]
	call	memcmp
	mov	rsi, r13
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_2682
.label_2678:
	test	rbx, rbx
	jne	.label_2699
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	qword ptr [rsi + rcx*8], rcx
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_2701
.label_2682:
	mov	rsp, rsp
	inc	rbx
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rax, rcx
	sub	rax, rbx
	mov	qword ptr [rsi + rcx*8], rax
.label_2701:
	inc	rcx
	cmp	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	jne	.label_2681
.label_2694:
	lea	rdi, [rdi]
	mov	r13, r12
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc8], rax
	mov	byte ptr [rbp - 0xd8], 0
	nop	
	mov	qword ptr [rbp - 0xd4], 0
	nop	
	mov	byte ptr [rbp - 0xcc], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x88], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x84], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7c], 0
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x88]
	call	mbuiter_multi_next
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	rax, rcx
	shr	rax, 0x20
	mov	rbp, rbp
	test	cl, cl
	mov	rsp, rsp
	setne	cl
	je	.label_2685
	test	eax, eax
	mov	rbp, rbp
	je	.label_2692
.label_2685:
	xor	r15d, r15d
	lea	rbx, [rbp - 0x88]
	nop	word ptr cs:[rax + rax]
.label_2673:
	nop	
	lea	rdx, [r15 + r15*2]
	lea	rsi, [rsi]
	shl	rdx, 4
	mov	rsp, rsp
	cmp	byte ptr [r13 + rdx + 0x10], 0
	je	.label_2688
	xor	cl, 1
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2688
	mov	rbp, rbp
	cmp	dword ptr [r13 + rdx + 0x14], eax
	jne	.label_2676
	mov	r12, qword ptr [rbp - 0x78]
	mov	r14, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	jmp	.label_2679
	nop	dword ptr [rax]
.label_2688:
	mov	rbp, rbp
	mov	r14, qword ptr [r13 + rdx + 8]
	cmp	r14, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	jne	.label_2676
	mov	rsp, rsp
	mov	rdi, qword ptr [r13 + rdx]
	mov	r12, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r14
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_2679
.label_2676:
	test	r15, r15
	mov	rsp, rsp
	je	.label_2675
	mov	rbp, rbp
	mov	r14, rbx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbx, qword ptr [rax + r15*8]
	sub	r15, rbx
	nop	
	test	rbx, rbx
	lea	r12, [rbp - 0xd8]
	lea	rdi, [rdi]
	je	.label_2702
	nop	word ptr cs:[rax + rax]
.label_2698:
	mov	rdi, r12
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_2686
	lea	rsi, [rsi]
	shr	rax, 0x20
	je	.label_2689
.label_2686:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	add	qword ptr [rbp - 0xc8], rax
	mov	byte ptr [rbp - 0xcc], 0
	mov	rsp, rsp
	dec	rbx
	mov	rsp, rsp
	jne	.label_2698
	mov	rsp, rsp
	mov	rbx, r14
	jmp	.label_2680
	nop	word ptr [rax + rax]
.label_2679:
	mov	rbp, rbp
	inc	r15
	mov	rsp, rsp
	add	r12, r14
	nop	
	mov	qword ptr [rbp - 0x78], r12
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7c], 0
	cmp	r15, qword ptr [rbp - 0x40]
	jne	.label_2680
	jmp	.label_2684
	nop	word ptr [rax + rax]
.label_2675:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xd8]
	call	mbuiter_multi_next
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	je	.label_2691
	shr	rax, 0x20
	mov	rsp, rsp
	je	.label_2689
.label_2691:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	add	qword ptr [rbp - 0xc8], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xcc], 0
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	add	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x7c], 0
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_2680
.label_2702:
	lea	rdi, [rdi]
	mov	rbx, r14
	nop	dword ptr [rax]
.label_2680:
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbuiter_multi_next
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	lea	rdi, [rdi]
	setne	cl
	je	.label_2673
	test	eax, eax
	jne	.label_2673
	jmp	.label_2692
.label_2690:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_2697
.label_2684:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_2692:
	mov	rdi, r13
	call	freea
	mov	al, 1
.label_2697:
	nop	
	lea	rsp, [rbp - 0x28]
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
.label_2689:
	nop	
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x422fb0

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rax, r12
	shr	rax, 0x3c
	je	.label_2715
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_2709
.label_2715:
	lea	rsi, [rsi]
	lea	rdi, [r12*8]
	lea	rsi, [rsi]
	cmp	rdi, 0xfa0
	ja	.label_2713
	mov	rax, rsp
	mov	rsp, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rbp, rbp
	mov	rsp, rcx
	neg	rdi
	mov	rbp, rbp
	lea	rdi, [rax + rdi + 0x1f]
	and	rdi, 0xffffffffffffffe0
	jmp	.label_2718
.label_2713:
	call	mmalloca
	nop	
	mov	rdi, rax
.label_2718:
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_2716
	mov	qword ptr [rdi + 8], 1
	mov	eax, 2
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	r12, 3
	nop	
	jb	.label_2717
	nop	word ptr [rax + rax]
.label_2705:
	nop	
	movzx	edx, byte ptr [rax + r13 - 1]
	mov	rbp, rbp
	movzx	esi, byte ptr [r13 + rcx]
	cmp	edx, esi
	je	.label_2711
	nop	word ptr cs:[rax + rax]
.label_2706:
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_2704
	mov	rsp, rsp
	sub	rcx, qword ptr [rdi + rcx*8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [r13 + rcx]
	nop	
	movzx	ebx, dl
	mov	rbp, rbp
	cmp	ebx, esi
	mov	rsp, rsp
	jne	.label_2706
.label_2711:
	inc	rcx
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	sub	rdx, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rax*8], rdx
	lea	rsi, [rsi]
	jmp	.label_2712
	nop	
.label_2704:
	mov	qword ptr [rdi + rax*8], rax
	xor	ecx, ecx
.label_2712:
	nop	
	inc	rax
	cmp	rax, r12
	jne	.label_2705
.label_2717:
	mov	qword ptr [r14], 0
	xor	ecx, ecx
	mov	rax, r15
	jmp	.label_2708
.label_2716:
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_2709
.label_2710:
	mov	rbp, rbp
	mov	rdx, qword ptr [rdi + rcx*8]
	lea	rdi, [rdi]
	add	r15, rdx
	sub	rcx, rdx
	nop	word ptr cs:[rax + rax]
.label_2708:
	nop	
	mov	dl, byte ptr [rax]
	lea	rdi, [rdi]
	test	dl, dl
	nop	
	je	.label_2703
	mov	rbp, rbp
	movzx	esi, byte ptr [r13 + rcx]
	movzx	edx, dl
	cmp	esi, edx
	jne	.label_2707
	lea	rdi, [rdi]
	inc	rcx
	inc	rax
	lea	rdi, [rdi]
	cmp	r12, rcx
	jne	.label_2708
	jmp	.label_2714
.label_2707:
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_2710
	mov	rbp, rbp
	inc	r15
	lea	rdi, [rdi]
	inc	rax
	xor	ecx, ecx
	jmp	.label_2708
.label_2714:
	mov	qword ptr [r14], r15
.label_2703:
	call	freea
	mov	rbp, rbp
	mov	al, 1
.label_2709:
	lea	rsp, [rbp - 0x28]
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x423170

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	lea	rsi, [rsi]
	jne	.label_2725
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_2721
	lea	r14, [rbx + 4]
	jmp	.label_2723
.label_2721:
	movzx	eax, byte ptr [r15]
	mov	rbp, rbp
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	mov	rbp, rbp
	bt	ecx, eax
	jae	.label_2724
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_2720
.label_2724:
	lea	rsi, [rsi]
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_2726
	lea	rsi, [rsi]
	mov	byte ptr [rbx], 1
.label_2723:
	lea	r12, [rbx + 0x24]
	nop	
	call	__ctype_get_mb_cur_max
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rax
	call	strnlen1
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, rax
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x18], rax
	nop	
	cmp	rax, -2
	je	.label_2719
	test	rax, rax
	je	.label_2727
	nop	
	cmp	rax, -1
	nop	
	jne	.label_2729
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_2720
.label_2719:
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_2720
.label_2727:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_2722
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 0
	lea	rsi, [rsi]
	jne	.label_2728
.label_2729:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	nop	
	call	mbsinit
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_2720
	mov	rsp, rsp
	mov	byte ptr [rbx], 0
.label_2720:
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0xc], 1
.label_2725:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_2722:
	mov	edi, OFFSET FLAT:.str.2_4
	nop	
	mov	esi, OFFSET FLAT:.str.1_12
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	nop	
	call	__assert_fail
.label_2728:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.3_3
	mov	esi, OFFSET FLAT:.str.1_12
	mov	edx, 0xb3
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_2726:
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_12
	lea	rdi, [rdi]
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	lea	rdi, [rdi]
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x423310
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x423320
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	r15
	mov	rsp, rsp
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r14, rdi
	mov	al, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	mov	byte ptr [r14], al
	je	.label_2730
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 4]
	nop	
	mov	qword ptr [r14 + 4], rax
	jmp	.label_2733
.label_2730:
	mov	rbp, rbp
	mov	qword ptr [r14 + 4], 0
.label_2733:
	mov	al, byte ptr [rbx + 0xc]
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	mov	rsp, rsp
	cmp	rsi, rax
	jne	.label_2732
	lea	rdi, [rdi]
	lea	r15, [r14 + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rsi, r15
.label_2732:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0x20], al
	mov	rbp, rbp
	je	.label_2731
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_2731:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4233d0

	.globl mem_cd_iconv
	.type mem_cd_iconv, @function
mem_cd_iconv:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x1058
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x40], rcx
	lea	rdi, [rdi]
	mov	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x18], rbp
	mov	r14, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r14
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, rax
	call	iconv
	mov	qword ptr [rsp + 0x10], r14
	nop	
	mov	qword ptr [rsp + 0x30], rbp
	test	rbp, rbp
	je	.label_2741
	xor	ebx, ebx
	lea	r12, [rsp + 0x50]
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x10]
	mov	rsp, rsp
	lea	rbp, [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r15, [rsp + 0x20]
	nop	
	lea	r13, [rsp + 0x38]
	nop	dword ptr [rax + rax]
.label_2746:
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x38], 0x1000
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r14
	mov	rdx, rbp
	mov	rbp, rbp
	mov	rcx, r15
	mov	r8, r13
	call	iconv
	cmp	rax, -1
	lea	rdi, [rdi]
	jne	.label_2740
	nop	
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 7
	mov	rbp, rbp
	jne	.label_2745
.label_2740:
	sub	rbx, r12
	add	rbx, qword ptr [rsp + 0x20]
	cmp	qword ptr [rsp + 0x30], 0
	jne	.label_2746
.label_2741:
	lea	r14, [rsp + 0x50]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], 0x1000
	xor	ebp, ebp
	lea	rcx, [rsp + 0x20]
	lea	r8, [rsp + 0x38]
	nop	
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x48]
	call	iconv
	nop	
	cmp	rax, -1
	nop	
	je	.label_2747
	lea	rdi, [rdi]
	sub	rbx, r14
	mov	rsp, rsp
	add	rbx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_2736
.label_2747:
	lea	rdi, [rdi]
	mov	ebp, 1
	lea	rdi, [rdi]
	jmp	.label_2736
.label_2745:
	cmp	eax, 0x16
	je	.label_2741
	mov	ebp, 1
.label_2736:
	mov	r12d, 0xffffffff
	mov	rbp, rbp
	test	ebp, ebp
	jne	.label_2735
	nop	
	test	rbx, rbx
	je	.label_2749
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	je	.label_2734
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax], rbx
	nop	
	jae	.label_2737
.label_2734:
	mov	rdi, rbx
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_2744
.label_2737:
	mov	qword ptr [rsp + 0x1050], rbp
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x48]
	call	iconv
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x30], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2742
	nop	
	lea	r13, [rsp + 0x50]
	lea	rbp, [rsp + 0x10]
	lea	r15, [rsp + 0x30]
	lea	r14, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_2743:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	nop	
	mov	rsi, r13
	mov	rdx, rbp
	mov	rbp, rbp
	mov	rcx, r15
	mov	rsp, rsp
	mov	r8, r14
	mov	rsp, rsp
	call	iconv
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_2738
	nop	
	cmp	qword ptr [rsp + 0x10], 0
	mov	rsp, rsp
	jne	.label_2743
	jmp	.label_2742
.label_2749:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	xor	r12d, r12d
	jmp	.label_2735
.label_2744:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	jmp	.label_2735
.label_2738:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x16
	lea	rsi, [rsi]
	jne	.label_2748
.label_2742:
	mov	rbp, rbp
	lea	rcx, [rsp + 0x30]
	lea	r8, [rsp + 0x20]
	mov	rbp, rbp
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x48]
	call	iconv
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_2748
	cmp	qword ptr [rsp + 0x20], 0
	jne	.label_2739
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x1050]
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	lea	rsi, [rsi]
	xor	r12d, r12d
	mov	rbp, rbp
	jmp	.label_2735
.label_2748:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x1050]
	nop	
	cmp	rbp, qword ptr [rax]
	je	.label_2735
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_2735:
	mov	rsp, rsp
	mov	eax, r12d
	add	rsp, 0x1058
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2739:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x423730

	.globl str_cd_iconv
	.type str_cd_iconv, @function
str_cd_iconv:
	mov	rbp, rbp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	mov	rbx, rax
	mov	rbp, rbp
	shl	rbx, 4
	cmp	rax, 0x10000000
	cmovae	rbx, rax
	mov	rbp, rbp
	lea	rbp, [rbx + 1]
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	malloc
	mov	rsp, rsp
	mov	r12, rax
	mov	rbp, rbp
	test	r12, r12
	je	.label_2754
	xor	esi, esi
	lea	rsi, [rsi]
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	nop	
	mov	rdi, r14
	call	iconv
	mov	qword ptr [rsp + 0x18], r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rbx
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x10]
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x18]
	lea	r8, [rsp + 8]
	mov	rsp, rsp
	mov	rdi, r14
	call	iconv
	mov	rbp, rbp
	cmp	rax, -1
	je	.label_2759
	mov	rbp, rbp
	mov	r13, r12
	mov	rbx, rbp
.label_2752:
	nop	
	lea	rcx, [rsp + 0x18]
	lea	rdi, [rdi]
	lea	r8, [rsp + 8]
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r14
	call	iconv
	nop	
	cmp	rax, -1
	je	.label_2757
	mov	r12, r13
	mov	rbp, rbx
.label_2756:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	sub	rsi, r12
	mov	rbp, rbp
	cmp	rsi, rbp
	lea	rdi, [rdi]
	jae	.label_2750
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	call	realloc
	test	rax, rax
	cmovne	r12, rax
	nop	
	jmp	.label_2750
.label_2754:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	xor	r12d, r12d
	jmp	.label_2750
.label_2759:
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	r15, rax
	nop	dword ptr [rax]
.label_2763:
	mov	eax, dword ptr [r15]
	cmp	eax, 7
	nop	
	jne	.label_2760
	lea	rbx, [rbp + rbp]
	cmp	rbx, rbp
	jbe	.label_2762
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x18]
	nop	
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_2755
	sub	rbp, r12
	mov	rax, r13
	mov	rsp, rsp
	add	rax, rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	lea	rax, [rbx - 1]
	sub	rax, rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rsi, [rsp + 0x20]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x10]
	mov	rbp, rbp
	lea	rcx, [rsp + 0x18]
	mov	rbp, rbp
	lea	r8, [rsp + 8]
	call	iconv
	lea	rdi, [rdi]
	cmp	rax, -1
	mov	r12, r13
	nop	
	mov	rbp, rbx
	mov	rsp, rsp
	je	.label_2763
	mov	rsp, rsp
	jmp	.label_2752
.label_2757:
	mov	rsp, rsp
	call	__errno_location
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_2758:
	mov	rbp, rbp
	cmp	dword ptr [r15], 7
	mov	rbp, rbp
	jne	.label_2751
	nop	
	lea	rbp, [rbx + rbx]
	lea	rdi, [rdi]
	cmp	rbp, rbx
	nop	
	jbe	.label_2761
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdi, r13
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	realloc
	mov	r12, rax
	nop	
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_2761
	lea	rsi, [rsi]
	sub	rbx, r13
	mov	rax, r12
	add	rax, rbx
	mov	qword ptr [rsp + 0x18], rax
	nop	
	lea	rax, [rbp - 1]
	lea	rdi, [rdi]
	sub	rax, rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	xor	esi, esi
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rcx, [rsp + 0x18]
	lea	r8, [rsp + 8]
	call	iconv
	cmp	rax, -1
	lea	rsi, [rsi]
	mov	r13, r12
	mov	rbx, rbp
	je	.label_2758
	mov	rsp, rsp
	jmp	.label_2756
.label_2761:
	mov	rbp, rbp
	mov	dword ptr [r15], 0xc
	mov	r12, r13
	jmp	.label_2753
.label_2760:
	cmp	eax, 0x16
	mov	r13, r12
	mov	rsp, rsp
	mov	rbx, rbp
	je	.label_2752
	jmp	.label_2753
.label_2762:
	lea	rdi, [rdi]
	mov	dword ptr [r15], 0xc
	jmp	.label_2753
.label_2755:
	mov	rbp, rbp
	mov	dword ptr [r15], 0xc
	lea	rsi, [rsi]
	jmp	.label_2753
.label_2751:
	mov	rsp, rsp
	mov	r12, r13
.label_2753:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [r15]
	mov	rsp, rsp
	mov	rdi, r12
	call	free
	mov	dword ptr [r15], ebx
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_2750:
	mov	rax, r12
	add	rsp, 0x28
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x423a70

	.globl str_iconv
	.type str_iconv, @function
str_iconv:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	nop	
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	cmp	byte ptr [rbx], 0
	je	.label_2764
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	nop	
	call	c_strcasecmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_2764
	mov	rbp, rbp
	mov	rdi, r15
	nop	
	mov	rsi, r14
	lea	rsi, [rsi]
	call	iconv_open
	mov	r15, rax
	mov	rsp, rsp
	xor	r14d, r14d
	cmp	r15, -1
	je	.label_2765
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, r15
	call	str_cd_iconv
	nop	
	mov	r14, rax
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_2768
	mov	rdi, r15
	call	iconv_close
	nop	
	test	eax, eax
	jns	.label_2765
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	jmp	.label_2767
.label_2764:
	mov	rdi, rbx
	nop	
	call	__strdup
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_2765
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	jmp	.label_2766
.label_2768:
	mov	rbp, rbp
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsp, rsp
	call	iconv_close
.label_2767:
	lea	rsi, [rsi]
	mov	dword ptr [rbx], ebp
.label_2766:
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_2765:
	lea	rdi, [rdi]
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x423b80

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, r14
	call	memchr
	lea	rdi, [rdi]
	mov	ecx, 1
	sub	rcx, rbx
	lea	rdi, [rdi]
	add	rcx, rax
	test	rax, rax
	mov	rbp, rbp
	cmove	rcx, r14
	lea	rsi, [rsi]
	mov	rax, rcx
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x423bd0

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
	.section	.text
	.align	32
	#Procedure 0x423bf0

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdi, -0x21
	ja	.label_2769
	push	rax
	lea	rsi, [rsi]
	add	rdi, 0x20
	call	malloc
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	eax, eax
	test	rcx, rcx
	lea	rsp, [rsp + 8]
	je	.label_2769
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 0x10
	and	rdx, 0xffffffffffffffe0
	lea	rdi, [rdi]
	lea	rax, [rdx + 0x10]
	lea	rdi, [rdi]
	mov	esi, eax
	sub	esi, ecx
	mov	rsp, rsp
	mov	byte ptr [rdx + 0xf], sil
.label_2769:
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x423c50

	.globl freea
	.type freea, @function
freea:
	mov	rsp, rsp
	test	dil, 0xf
	jne	.label_2770
	test	dil, 0x10
	mov	rsp, rsp
	jne	.label_2771
	lea	rsi, [rsi]
	ret	
.label_2771:
	nop	
	movzx	eax, byte ptr [rdi - 1]
	sub	rdi, rax
	jmp	free
.label_2770:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x423c80
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	mov	rbp, rbp
	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_2772
	lea	rdi, [rdi]
	mov	edi, ebx
	call	iswcntrl
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
.label_2772:
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x423cb0
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	mov	rbp, rbp
	cmp	rsi, rax
	mov	rsp, rsp
	jne	.label_2773
	mov	rbp, rbp
	lea	r15, [r14 + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_2773:
	mov	qword ptr [r14], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0x10], al
	mov	rsp, rsp
	je	.label_2774
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_2774:
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x423d30
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	rsp, rsp
	mov	eax, edi
	mov	rbp, rbp
	shr	eax, 3
	mov	rsp, rsp
	and	eax, 0x1c
	mov	eax,  dword ptr [dword ptr [rax + is_basic_table]]
	nop	
	bt	eax, edi
	mov	rsp, rsp
	setb	al
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section .text
	.align	32
	#Procedure 0x423d60

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x48
	lea	rdi, [rdi]
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_2778
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	mbuiter_multi_next
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	test	al, al
	lea	rsi, [rsi]
	je	.label_2776
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	rbp, rbp
	je	.label_2777
.label_2776:
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	lea	r14, [rsp + 8]
	nop	dword ptr [rax]
.label_2775:
	mov	rbp, rbp
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rsp, rsp
	mov	rdi, r14
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	test	al, al
	je	.label_2775
	nop	
	shr	rax, 0x20
	jne	.label_2775
.label_2777:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_2778:
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	jmp	strlen
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]