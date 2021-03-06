	.section	.text
	.align	32
	#Procedure 0x401b80

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x48
	mov	r15, rsi
	mov	r14d, edi
	nop	
	mov	qword ptr [rsp + 0x10], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str
	call	setlocale
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.1
	mov	esi, OFFSET FLAT:.str.2
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.1
	mov	rbp, rbp
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rbp, rbp
	xor	r13d, r13d
	cmp	r14d, 2
	lea	rdi, [rdi]
	mov	r12d, 0
	jl	.label_49
	movsxd	rax, r14d
	lea	rdi, [rax*8 - 8]
	call	xmalloc
	mov	r12, rax
.label_49:
	mov	dword ptr [rsp + 0x1c], 0xffffffff
	lea	r8, [rsp + 0x1c]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	mov	ebp, eax
	cmp	ebp, -1
	nop	
	je	.label_12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	lea	rdi, [rdi]
	xor	r14d, r14d
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_15
	nop	dword ptr [rax]
.label_14:
	cmp	ebp, 0x43
	lea	rsi, [rsi]
	jle	.label_19
	add	ebp, -0x44
	mov	rsp, rsp
	cmp	ebp, 0x3d
	nop	
	ja	.label_31
	jmp	qword ptr [word ptr [+ (rbp * 8) + label_45]]
.label_1321:
	nop	
	mov	byte ptr [byte ptr [rip + use_form_feed]],  1
	xor	r15d, r15d
	nop	
	jmp	.label_7
.label_19:
	cmp	ebp, 1
	lea	rdi, [rdi]
	jne	.label_44
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + first_page_number]],  0
	nop	
	jne	.label_25
	nop	
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rdx]
	nop	
	cmp	eax, 0x2b
	jne	.label_25
	inc	rdx
	mov	rsp, rsp
	mov	edi, 0xfffffffe
	mov	esi, 0x2b
	call	first_last_page
	test	al, al
	jne	.label_30
.label_25:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	ecx, ebx
	inc	ebx
	mov	qword ptr [r12 + rcx*8], rax
.label_30:
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_7
.label_1320:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + date_format]],  rax
	xor	r15d, r15d
	jmp	.label_7
.label_1322:
	mov	byte ptr [byte ptr [rip + join_lines]],  1
	xor	r15d, r15d
	jmp	.label_7
.label_1323:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + skip_count]],  1
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.6
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, -0x80000000
	nop	
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	nop	
	xor	r9d, r9d
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	r8, rax
	nop	
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + start_line_num]],  eax
	jmp	.label_7
.label_1324:
	mov	qword ptr [word ptr [rip + col_sep_string]], OFFSET FLAT:.str
	mov	dword ptr [dword ptr [rip + col_sep_length]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_46
	nop	
	mov	rdi, rbp
	call	strlen
	test	rax, -0x80000000
	jne	.label_23
	nop	
	mov	dword ptr [dword ptr [rip + col_sep_length]],  eax
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + col_sep_string]],  rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_7
.label_1325:
	nop	
	mov	byte ptr [byte ptr [rip + extremities]],  1
	mov	byte ptr [byte ptr [rip + keep_FF]],  0
	xor	r15d, r15d
	jmp	.label_7
.label_1326:
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	esi, 1
	mov	rsp, rsp
	mov	edx, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rdi, rbp
	nop	
	mov	r8, rax
	call	xdectoimax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + chars_per_line]],  eax
	xor	r15d, r15d
	nop	
	jmp	.label_7
.label_1327:
	mov	byte ptr [byte ptr [rip + print_across_flag]],  1
	jmp	.label_21
.label_1328:
	mov	byte ptr [byte ptr [rip + balance_columns]],  1
	xor	r15d, r15d
	jmp	.label_7
.label_1329:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + use_cntrl_prefix]],  1
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_7
.label_1330:
	mov	byte ptr [byte ptr [rip + double_space]],  1
	xor	r15d, r15d
	jmp	.label_7
.label_1331:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_28
	nop	
	mov	esi, 0x65
	mov	edx, OFFSET FLAT:input_tab_char
	mov	ecx, OFFSET FLAT:chars_per_input_tab
	call	getoptarg
.label_28:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + untabify_input]],  1
	mov	rbp, rbp
	xor	r15d, r15d
	jmp	.label_7
.label_1332:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + custom_header]],  rax
	mov	rbp, rbp
	xor	r15d, r15d
	nop	
	jmp	.label_7
.label_1333:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_33
	mov	esi, 0x69
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:output_tab_char
	mov	ecx, OFFSET FLAT:chars_per_output_tab
	call	getoptarg
.label_33:
	mov	byte ptr [byte ptr [rip + tabify_output]],  1
	lea	rsi, [rsi]
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_7
.label_1334:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	xor	r15d, r15d
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str
	xor	r9d, r9d
	mov	rdi, rbp
	mov	rbp, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + lines_per_page]],  eax
	jmp	.label_7
.label_1335:
	mov	byte ptr [byte ptr [rip + parallel_files]],  1
.label_21:
	nop	
	mov	byte ptr [byte ptr [rip + storing_columns]],  1
	xor	r15d, r15d
	jmp	.label_7
.label_1336:
	mov	byte ptr [byte ptr [rip + numbered_lines]],  1
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_7
	mov	rbp, rbp
	mov	esi, 0x6e
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:number_separator
	mov	ecx, OFFSET FLAT:chars_per_number
	call	getoptarg
	lea	rsi, [rsi]
	xor	r15d, r15d
	jmp	.label_7
.label_1337:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	esi, 0
	nop	
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + chars_per_margin]],  eax
	lea	rsi, [rsi]
	jmp	.label_7
.label_1338:
	mov	byte ptr [byte ptr [rip + ignore_failed_opens]],  1
	mov	rbp, rbp
	xor	r15d, r15d
	jmp	.label_7
.label_1339:
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	nop	
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_18
	mov	al,  byte ptr [byte ptr [rip + use_col_separator]]
	xor	al, 1
	test	al, 1
	lea	rsi, [rsi]
	je	.label_18
	mov	rdi, rbp
	nop	
	call	strlen
	lea	rdi, [rdi]
	test	rax, -0x80000000
	lea	rdi, [rdi]
	jne	.label_23
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + col_sep_length]],  eax
	mov	qword ptr [word ptr [rip + col_sep_string]],  rbp
	xor	r15d, r15d
.label_18:
	nop	
	mov	al, 1
	nop	
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_7
.label_1340:
	mov	byte ptr [byte ptr [rip + extremities]],  1
	mov	byte ptr [byte ptr [rip + keep_FF]],  1
	xor	r15d, r15d
	jmp	.label_7
.label_1341:
	nop	
	mov	byte ptr [byte ptr [rip + use_esc_sequence]],  1
	nop	
	xor	r15d, r15d
	jmp	.label_7
.label_1342:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	cl,  byte ptr [byte ptr [rip + truncate_lines]]
	and	cl, 1
	mov	cl, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rcx
	jne	.label_37
	mov	dword ptr [dword ptr [rip + chars_per_line]],  eax
	xor	r15d, r15d
.label_37:
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_7
.label_1343:
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	mov	rsp, rsp
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + columns]],  eax
	mov	byte ptr [byte ptr [rip + explicit_columns]],  1
	mov	rdi, r13
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], 0
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_7
.label_1344:
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_48
	mov	edi, dword ptr [rsp + 0x1c]
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	call	first_last_page
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_7
	jmp	.label_10
.label_46:
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	jmp	.label_7
	nop	word ptr cs:[rax + rax]
.label_15:
	lea	rsi, [rsi]
	lea	eax, [rbp - 0x30]
	cmp	eax, 9
	lea	rdi, [rdi]
	ja	.label_14
	nop	
	lea	r15, [r14 + 1]
	cmp	r15, qword ptr [rsp + 0x10]
	nop	
	jb	.label_50
	nop	
	mov	rdi, r13
	mov	rbp, rbp
	lea	rsi, [rsp + 0x10]
	mov	rbp, rbp
	call	x2realloc
	mov	r13, rax
.label_50:
	mov	byte ptr [r13 + r14], bpl
	mov	byte ptr [r13 + r14 + 1], 0
.label_7:
	nop	
	mov	dword ptr [rsp + 0x1c], 0xffffffff
	nop	
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x20]
	nop	
	lea	r8, [rsp + 0x1c]
	lea	rdi, [rdi]
	call	getopt_long
	mov	rbp, rbp
	mov	ebp, eax
	cmp	ebp, -1
	mov	r14, r15
	lea	rsi, [rsi]
	jne	.label_15
	test	r13, r13
	je	.label_26
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	nop	
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, r13
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + columns]],  eax
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + explicit_columns]],  1
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	call	free
.label_26:
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x30]
	jmp	.label_32
.label_12:
	lea	rdi, [rdi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_32:
	cmp	qword ptr [word ptr [rip + date_format]],  0
	nop	
	jne	.label_38
	nop	
	mov	edi, OFFSET FLAT:.str.14
	call	getenv
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.16
	nop	
	test	rax, rax
	nop	
	je	.label_40
	lea	rsi, [rsi]
	mov	edi, 2
	lea	rdi, [rdi]
	call	hard_locale
	mov	edx, OFFSET FLAT:.str.16
	mov	ecx, OFFSET FLAT:.str.15
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	cmovne	rcx, rdx
.label_40:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + date_format]],  rcx
.label_38:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_0
	call	getenv
	lea	rdi, [rdi]
	mov	rdi, rax
	call	tzalloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + localtz]],  rax
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + first_page_number]],  0
	jne	.label_47
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + first_page_number]],  1
.label_47:
	lea	rsi, [rsi]
	mov	r8b,  byte ptr [byte ptr [rip + parallel_files]]
	and	r8b, 1
	mov	rsp, rsp
	movzx	eax, r8b
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_35
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + explicit_columns]]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	je	.label_53
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + print_across_flag]]
	and	eax, 1
	nop	
	cmp	eax, 1
	mov	rbp, rbp
	je	.label_8
.label_35:
	nop	
	test	bpl, 1
	mov	rsp, rsp
	je	.label_11
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	jne	.label_13
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	test	al, 1
	je	.label_11
	test	byte ptr [byte ptr [rip + use_col_separator]],  1
	mov	rbp, rbp
	jne	.label_11
	lea	rdi, [rdi]
	test	r8b, r8b
	lea	rsi, [rsi]
	jne	.label_17
	movzx	eax,  byte ptr [byte ptr [rip + explicit_columns]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_11
.label_17:
	mov	al,  byte ptr [byte ptr [rip + truncate_lines]]
	nop	
	and	al, 1
	jne	.label_20
	mov	byte ptr [byte ptr [rip + join_lines]],  1
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + col_sep_length]],  0
	mov	rsp, rsp
	jg	.label_20
	jmp	.label_11
.label_13:
	lea	rdi, [rdi]
	test	r8b, r8b
	jne	.label_24
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + explicit_columns]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_51
.label_24:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	je	.label_11
.label_20:
	nop	
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
	mov	rbp, rbp
	jmp	.label_11
.label_51:
	mov	byte ptr [byte ptr [rip + join_lines]],  1
.label_11:
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	nop	
	cmp	ecx, r14d
	nop	
	jge	.label_43
	mov	esi, r14d
	mov	rsp, rsp
	sub	esi, ecx
	lea	edx, [r14 - 1]
	nop	
	sub	edx, ecx
	test	sil, 3
	je	.label_52
	nop	
	movsxd	rcx, ecx
	mov	rbp, rbp
	and	esi, 3
	neg	esi
	nop	
.label_34:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + rcx*8]
	mov	edi, ebx
	inc	ebx
	mov	rsp, rsp
	mov	qword ptr [r12 + rdi*8], rax
	inc	rcx
	lea	rsi, [rsi]
	inc	esi
	jne	.label_34
.label_52:
	cmp	edx, 3
	mov	rsp, rsp
	jb	.label_36
	lea	rdi, [rdi]
	mov	r9d, ecx
	nop	
	lea	eax, [rcx + 3]
	nop	
	cdqe	
	lea	rdi, [rdi]
	lea	r10, [r15 + rax*8]
	mov	rsp, rsp
	lea	eax, [rcx + 2]
	mov	rbp, rbp
	cdqe	
	lea	r11, [r15 + rax*8]
	movsxd	rax, ecx
	lea	rbp, [r15 + rax*8]
	mov	rsp, rsp
	inc	eax
	mov	rbp, rbp
	cdqe	
	lea	rdx, [r15 + rax*8]
	mov	ebx, ebx
	mov	rbp, rbp
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_41:
	mov	rcx, qword ptr [rbp + rax*8]
	lea	rsi, [rbx + rax]
	mov	edi, esi
	lea	rsi, [rsi]
	mov	qword ptr [r12 + rdi*8], rcx
	mov	rcx, qword ptr [rdx + rax*8]
	lea	edi, [rsi + 1]
	mov	qword ptr [r12 + rdi*8], rcx
	mov	rcx, qword ptr [r11 + rax*8]
	lea	edi, [rsi + 2]
	nop	
	mov	qword ptr [r12 + rdi*8], rcx
	mov	rcx, qword ptr [r10 + rax*8]
	add	esi, 3
	mov	rsp, rsp
	mov	qword ptr [r12 + rsi*8], rcx
	add	rax, 4
	mov	rsp, rsp
	lea	ecx, [r9 + rax]
	mov	rbp, rbp
	cmp	ecx, r14d
	mov	rbp, rbp
	jl	.label_41
	add	ebx, eax
.label_36:
	nop	
	mov	dword ptr [dword ptr [rip + optind]],  ecx
.label_43:
	nop	
	test	ebx, ebx
	je	.label_42
	test	r8b, r8b
	je	.label_27
	mov	edi, ebx
	mov	rsi, r12
	mov	rsp, rsp
	call	print_files
	mov	rsp, rsp
	jmp	.label_9
	nop	word ptr cs:[rax + rax]
.label_27:
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, r12
	nop	
	call	print_files
	add	r12, 8
	lea	rsi, [rsi]
	dec	ebx
	lea	rdi, [rdi]
	jne	.label_27
	jmp	.label_9
.label_42:
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	call	print_files
.label_9:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + number_buff]]
	mov	rbp, rbp
	call	free
	mov	rdi,  qword ptr [word ptr [rip + clump_buff]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + column_vector]]
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + line_vector]]
	lea	rdi, [rdi]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + end_vector]]
	call	free
	nop	
	mov	rdi,  qword ptr [word ptr [rip + buff]]
	call	free
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_22
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	lea	rdi, [rdi]
	cmp	eax, -1
	nop	
	je	.label_16
.label_22:
	movzx	eax,  byte ptr [byte ptr [rip + failed_opens]]
	lea	rsi, [rsi]
	and	eax, 1
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_44:
	cmp	ebp, 0xffffff7d
	je	.label_29
	cmp	ebp, 0xffffff7e
	jne	.label_31
	mov	rbp, rbp
	xor	edi, edi
	call	usage
.label_29:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.12
	mov	r9d, OFFSET FLAT:.str.13
	xor	eax, eax
	mov	rbp, rbp
	call	version_etc
	mov	rbp, rbp
	xor	edi, edi
	call	exit
.label_31:
	nop	
	mov	edi, 1
	call	usage
.label_53:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.18
	mov	rsp, rsp
	jmp	.label_39
.label_8:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.19
	jmp	.label_39
.label_16:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
.label_23:
	call	integer_overflow
.label_48:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
.label_39:
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_10:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	nop	
	call	quote
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	nop	
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402830

	.globl first_last_page
	.type first_last_page, @function
first_last_page:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	r15d, esi
	mov	rsp, rsp
	mov	r14d, edi
	mov	qword ptr [rsp], -1
	lea	rsi, [rsp + 0x10]
	mov	rsp, rsp
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str
	mov	rdi, rbx
	call	xstrtoumax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	or	ecx, 2
	cmp	ecx, 2
	jne	.label_54
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	cmp	rbp, rbx
	je	.label_57
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_57
	movzx	edx, byte ptr [rbp]
	mov	rsp, rsp
	cmp	edx, 0x3a
	jne	.label_56
	mov	rsp, rsp
	inc	rbp
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str
	nop	
	mov	rdi, rbp
	call	xstrtoumax
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_54
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	cmp	rbp, rdx
	lea	rsi, [rsi]
	je	.label_60
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	cmp	rax, rcx
	jae	.label_58
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_57
.label_56:
	mov	rax, -1
	jmp	.label_55
.label_60:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_57
.label_58:
	mov	dl, byte ptr [rdx]
.label_55:
	test	dl, dl
	je	.label_59
	xor	eax, eax
	jmp	.label_57
.label_59:
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + first_page_number]],  rcx
	mov	qword ptr [word ptr [rip + last_page_number]],  rax
	mov	al, 1
.label_57:
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	nop	
	ret	
.label_54:
	movsx	edx, r15b
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:long_options
	lea	rdi, [rdi]
	mov	edi, eax
	mov	esi, r14d
	mov	r8, rbx
	call	xstrtol_fatal
	nop	
	.section	.text
	.align	32
	#Procedure 0x402980

	.globl getoptarg
	.type getoptarg, @function
getoptarg:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	rbp, rcx
	lea	rdi, [rdi]
	mov	r14d, esi
	lea	rdi, [rdi]
	mov	rbx, rdi
	movsx	eax, byte ptr [rbx]
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	add	ecx, -0x30
	cmp	ecx, 0xa
	nop	
	jb	.label_61
	lea	rsi, [rsi]
	mov	byte ptr [rdx], al
	mov	al, byte ptr [rbx + 1]
	inc	rbx
.label_61:
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_62
	lea	rcx, [rsp + 8]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str
	mov	rsp, rsp
	mov	rdi, rbx
	call	xstrtol
	mov	rcx, qword ptr [rsp + 8]
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_63
	nop	
	lea	rax, [rcx - 1]
	cmp	rax, 0x7fffffff
	jae	.label_63
	mov	dword ptr [rbp], ecx
.label_62:
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_63:
	mov	r15d, 0x4b
	cmp	rcx, 0x7fffffff
	mov	rsp, rsp
	jg	.label_64
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rax]
.label_64:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	movsx	ebp, r14b
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, r15d
	lea	rdi, [rdi]
	mov	rdx, r12
	lea	rdi, [rdi]
	mov	ecx, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	edi, 1
	mov	rsp, rsp
	call	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402aa0

	.globl usage
	.type usage, @function
usage:
	lea	rsi, [rsi]
	push	rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	mov	ebp, edi
	nop	
	test	ebp, ebp
	jne	.label_66
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.81
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.29
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.33
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.91
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	edi, 5
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	call	setlocale
	test	rax, rax
	je	.label_65
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_65
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_65:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.95
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.96
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.10
	mov	ecx, OFFSET FLAT:.str.97
	lea	rsi, [rsi]
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	call	exit
.label_66:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
	mov	edi, ebp
	lea	rdi, [rdi]
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f10

	.globl print_files
	.type print_files, @function
print_files:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r14d, edi
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + lines_per_page]]
	mov	eax, ecx
	mov	rbp, rbp
	add	eax, -0xa
	mov	dword ptr [dword ptr [rip + lines_per_body]],  eax
	jle	.label_278
	movzx	edx,  byte ptr [byte ptr [rip + extremities]]
	lea	rsi, [rsi]
	and	edx, 1
	cmp	edx, 1
	mov	rsp, rsp
	jne	.label_286
	jmp	.label_291
.label_278:
	mov	byte ptr [byte ptr [rip + extremities]],  1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + keep_FF]],  1
.label_291:
	nop	
	mov	dword ptr [dword ptr [rip + lines_per_body]],  ecx
	mov	eax, ecx
.label_286:
	movzx	ecx,  byte ptr [byte ptr [rip + double_space]]
	and	ecx, 1
	cmp	ecx, 1
	mov	rsp, rsp
	jne	.label_297
	mov	ecx, eax
	shr	ecx, 0x1f
	mov	rbp, rbp
	add	ecx, eax
	lea	rdi, [rdi]
	sar	ecx, 1
	mov	dword ptr [dword ptr [rip + lines_per_body]],  ecx
.label_297:
	mov	rsp, rsp
	test	r14d, r14d
	je	.label_305
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	nop	
	cmp	eax, 1
	jne	.label_306
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + columns]],  r14d
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	jmp	.label_267
.label_305:
	mov	byte ptr [byte ptr [rip + parallel_files]],  0
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_267
.label_306:
	lea	rsi, [rsi]
	xor	eax, eax
.label_267:
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	and	cl, 1
	nop	
	jne	.label_319
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + balance_columns]],  1
.label_319:
	lea	rsi, [rsi]
	mov	r8d,  dword ptr [dword ptr [rip + columns]]
	cmp	r8d, 2
	mov	rsp, rsp
	jl	.label_314
	mov	cl,  byte ptr [byte ptr [rip + use_col_separator]]
	mov	rbp, rbp
	and	cl, 1
	mov	cl,  byte ptr [byte ptr [rip + join_lines]]
	je	.label_71
	cmp	dword ptr [dword ptr [rip + col_sep_length]],  1
	mov	rsp, rsp
	jne	.label_76
	mov	rsp, rsp
	mov	dl, cl
	mov	rbp, rbp
	xor	dl, 1
	mov	rsp, rsp
	test	dl, 1
	je	.label_76
	mov	rdx,  qword ptr [word ptr [rip + col_sep_string]]
	mov	rbp, rbp
	movzx	edx, byte ptr [rdx]
	cmp	edx, 9
	jne	.label_76
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + col_sep_string]], OFFSET FLAT:.str.70
	lea	rsi, [rsi]
	jmp	.label_76
.label_314:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + storing_columns]],  1
	mov	cl,  byte ptr [byte ptr [rip + join_lines]]
	and	cl, 1
	mov	rbp, rbp
	jne	.label_97
	jmp	.label_103
.label_71:
	nop	
	mov	edx, OFFSET FLAT:.str.69
	mov	esi, OFFSET FLAT:.str.70
	nop	
	test	cl, 1
	cmovne	rsi, rdx
	nop	
	mov	qword ptr [word ptr [rip + col_sep_string]],  rsi
	mov	dword ptr [dword ptr [rip + col_sep_length]],  1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
.label_76:
	nop	
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	mov	byte ptr [byte ptr [rip + tabify_output]],  1
	mov	rbp, rbp
	test	cl, 1
	je	.label_103
.label_97:
	nop	
	mov	byte ptr [byte ptr [rip + truncate_lines]],  0
.label_103:
	mov	r10b,  byte ptr [byte ptr [rip + numbered_lines]]
	lea	rsi, [rsi]
	and	r10b, 1
	nop	
	xor	r11d, r11d
	nop	
	movzx	edx, r10b
	cmp	edx, 1
	mov	rbp, rbp
	jne	.label_129
	mov	rsp, rsp
	mov	edx,  dword ptr [dword ptr [rip + start_line_num]]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + line_count]],  edx
	mov	rsp, rsp
	mov	edx,  dword ptr [dword ptr [rip + chars_per_number]]
	mov	rbp, rbp
	movzx	esi,  byte ptr [byte ptr [rip + number_separator]]
	lea	rdi, [rdi]
	cmp	esi, 9
	jne	.label_137
	mov	rbp, rbp
	mov	esi, edx
	sar	esi, 0x1f
	shr	esi, 0x1d
	lea	rsi, [rsi]
	add	esi, edx
	and	esi, 0xfffffff8
	mov	rbp, rbp
	mov	edi, edx
	sub	edi, esi
	neg	edi
	lea	edx, [rdx + rdi + 8]
	nop	
	jmp	.label_257
.label_137:
	inc	edx
.label_257:
	nop	
	mov	dword ptr [dword ptr [rip + number_width]],  edx
	xor	r11d, r11d
	lea	rdi, [rdi]
	test	al, al
	cmovne	r11d, edx
.label_129:
	mov	rsp, rsp
	mov	ebp,  dword ptr [dword ptr [rip + col_sep_length]]
	test	ebp, ebp
	mov	rbp, rbp
	js	.label_167
	je	.label_172
	test	r8d, r8d
	jle	.label_176
	lea	rsi, [rsi]
	lea	r9d, [r8 - 1]
	lea	rsi, [rsi]
	mov	edi, 0x7fffffff
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	xor	edx, edx
	lea	rsi, [rsi]
	idiv	ebp
	mov	rbp, rbp
	jmp	.label_179
.label_167:
	mov	rbp, rbp
	test	r8d, r8d
	lea	rsi, [rsi]
	jle	.label_170
	nop	
	cmp	ebp, -1
	je	.label_172
	lea	rsi, [rsi]
	lea	r9d, [r8 - 1]
	nop	
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	cdq	
	lea	rsi, [rsi]
	idiv	ebp
	mov	edi, 0x7fffffff
.label_179:
	cmp	eax, r9d
	jl	.label_197
	lea	rdi, [rdi]
	jmp	.label_172
.label_176:
	mov	eax, 0x80000000
	cdq	
	idiv	ebp
	mov	edi, 0x7fffffff
	jmp	.label_261
.label_170:
	lea	rdi, [rdi]
	mov	edi, 0x7fffffff
	mov	eax, 0x7fffffff
	xor	edx, edx
	lea	rdi, [rdi]
	idiv	ebp
.label_261:
	mov	rbp, rbp
	cmp	r8d, eax
	lea	rsi, [rsi]
	jle	.label_197
.label_172:
	nop	
	lea	eax, [r8 - 1]
	imul	ebp, eax
	test	ebp, ebp
	nop	
	js	.label_310
	nop	
	mov	edi, ebp
.label_197:
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + chars_per_line]]
	mov	rbp, rbp
	mov	edx, ecx
	sub	edx, r11d
	mov	esi, edi
	xor	esi, 0x80000000
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	edx, esi
	lea	rsi, [rsi]
	mov	ebp, edi
	jl	.label_220
	jmp	.label_227
.label_310:
	lea	r9d, [rbp + 0x7fffffff]
	mov	ecx,  dword ptr [dword ptr [rip + chars_per_line]]
	mov	rbp, rbp
	mov	esi, ecx
	sub	esi, r11d
	xor	eax, eax
	mov	rsp, rsp
	cmp	r9d, esi
	jl	.label_220
.label_227:
	sub	ecx, r11d
	mov	rsp, rsp
	sub	ecx, ebp
	mov	eax, ecx
.label_220:
	cdq	
	idiv	r8d
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + chars_per_column]],  eax
	nop	
	test	eax, eax
	nop	
	jle	.label_239
	test	r10b, r10b
	lea	rdi, [rdi]
	je	.label_245
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + number_buff]]
	call	free
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + chars_per_number]]
	cmp	rax, 0xb
	mov	rsp, rsp
	mov	edi, 0xb
	cmova	rdi, rax
	lea	rsi, [rsi]
	inc	rdi
	call	xmalloc
	mov	qword ptr [word ptr [rip + number_buff]],  rax
.label_245:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + clump_buff]]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + chars_per_input_tab]]
	cmp	eax, 8
	mov	ecx, 8
	mov	rbp, rbp
	cmovge	ecx, eax
	lea	rdi, [rdi]
	movsxd	rdi, ecx
	mov	rsp, rsp
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + clump_buff]],  rax
	mov	dword ptr [dword ptr [rip + total_files]],  0
	mov	rdi,  qword ptr [word ptr [rip + column_vector]]
	call	free
	movsxd	rdi,  dword ptr [dword ptr [rip + columns]]
	mov	rsp, rsp
	test	rdi, rdi
	nop	
	js	.label_199
	shl	rdi, 6
	lea	rdi, [rdi]
	call	xmalloc
	mov	rbp, rax
	nop	
	mov	qword ptr [word ptr [rip + column_vector]],  rbp
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	je	.label_270
	nop	
	test	r14d, r14d
	lea	rsi, [rsi]
	jle	.label_285
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	mov	rsi, rbp
	call	open_file
	mov	rbp, rbp
	test	al, al
	je	.label_84
	mov	rbx, qword ptr [rbx]
	mov	rdi, qword ptr [rbp]
	call	fileno
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	esi, eax
	call	init_header
	mov	rbp, rbp
	mov	dword ptr [rbp + 0x2c], 0
	lea	rdi, [rdi]
	lea	rbx, [rbp + 8]
	mov	rsp, rsp
	jmp	.label_300
	nop	
.label_312:
	mov	rbp, rbp
	add	rbp, 0x40
	nop	
	add	rbx, 8
.label_270:
	test	r14d, r14d
	je	.label_308
	dec	r14d
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	nop	
	call	open_file
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	jne	.label_312
	lea	rdi, [rdi]
	add	rbp, -0x40
	mov	rbp, rbp
	dec	dword ptr [dword ptr [rip + columns]]
	mov	rsp, rsp
	jmp	.label_312
.label_308:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + columns]],  0
	je	.label_84
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
	call	init_header
	mov	rbp, rbp
	jmp	.label_69
.label_285:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.20
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rbx, [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rax
	nop	
	mov	rax,  qword ptr [word ptr [rip + stdin]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp], rax
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	rbp, rbp
	mov	dword ptr [rbp + 0x10], 0
	nop	
	mov	byte ptr [rbp + 0x39], 0
	mov	rsp, rsp
	inc	dword ptr [dword ptr [rip + total_files]]
	mov	edi, OFFSET FLAT:.str
	nop	
	mov	esi, 0xffffffff
	call	init_header
	lea	rsi, [rsi]
	mov	dword ptr [rbp + 0x2c], 0
.label_300:
	nop	
	mov	esi,  dword ptr [dword ptr [rip + columns]]
	mov	eax, esi
	dec	eax
	je	.label_69
	nop	
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp]
	add	rbp, 0x40
	nop	
	lea	edi, [rsi + 3]
	nop	
	add	esi, -2
	nop	
	test	dil, 3
	mov	rsp, rsp
	je	.label_110
	lea	rsi, [rsi]
	and	edi, 3
	lea	rdi, [rdi]
	neg	edi
	nop	dword ptr [rax]
.label_105:
	mov	qword ptr [rbp + 8], rcx
	mov	qword ptr [rbp], rdx
	mov	dword ptr [rbp + 0x10], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp + 0x39], 0
	mov	dword ptr [rbp + 0x2c], 0
	add	rbp, 0x40
	dec	eax
	nop	
	inc	edi
	jne	.label_105
.label_110:
	mov	rbp, rbp
	cmp	esi, 3
	nop	
	jb	.label_69
	nop	
	add	rbp, 0xf9
	nop	dword ptr [rax]
.label_219:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf1], rcx
	mov	qword ptr [rbp - 0xf9], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe9], 0
	mov	byte ptr [rbp - 0xc0], 0
	mov	dword ptr [rbp - 0xcd], 0
	nop	
	mov	qword ptr [rbp - 0xb1], rcx
	mov	qword ptr [rbp - 0xb9], rdx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa9], 0
	mov	byte ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8d], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x71], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x79], rdx
	mov	dword ptr [rbp - 0x69], 0
	mov	byte ptr [rbp - 0x40], 0
	mov	dword ptr [rbp - 0x4d], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x31], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x39], rdx
	mov	dword ptr [rbp - 0x29], 0
	mov	byte ptr [rbp], 0
	mov	dword ptr [rbp - 0xd], 0
	mov	rbp, rbp
	add	rbp, 0x100
	add	eax, -4
	mov	rbp, rbp
	jne	.label_219
.label_69:
	mov	eax,  dword ptr [dword ptr [rip + total_files]]
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  eax
	mov	al,  byte ptr [byte ptr [rip + storing_columns]]
	and	al, 1
	mov	rsp, rsp
	jne	.label_196
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	test	ecx, ecx
	js	.label_201
	mov	r14d,  dword ptr [dword ptr [rip + lines_per_body]]
	je	.label_204
	test	r14d, r14d
	mov	rsp, rsp
	js	.label_210
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	xor	edx, edx
	jmp	.label_213
.label_201:
	mov	r14d,  dword ptr [dword ptr [rip + lines_per_body]]
	mov	rsp, rsp
	test	r14d, r14d
	js	.label_216
	nop	
	cmp	ecx, -1
	mov	rsp, rsp
	je	.label_204
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	cdq	
.label_213:
	lea	rdi, [rdi]
	idiv	ecx
	mov	rsp, rsp
	cmp	eax, r14d
	lea	rsi, [rsi]
	jge	.label_204
	jmp	.label_143
.label_210:
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	cdq	
	jmp	.label_230
.label_216:
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_230:
	idiv	ecx
	mov	rbp, rbp
	cmp	r14d, eax
	mov	rbp, rbp
	jl	.label_143
.label_204:
	mov	rbp, rbp
	imul	r14d, ecx
	cmp	r14d, 0x7fffffff
	nop	
	je	.label_143
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_column]]
	mov	rsp, rsp
	cmp	ebp, 0x7fffffff
	je	.label_143
	inc	ebp
	js	.label_250
	mov	rbp, rbp
	test	ebp, ebp
	nop	
	je	.label_252
	test	r14d, r14d
	js	.label_253
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	xor	edx, edx
	jmp	.label_254
.label_250:
	test	r14d, r14d
	js	.label_307
	cmp	ebp, -1
	je	.label_252
	mov	eax, 0x80000000
	cdq	
.label_254:
	lea	rdi, [rdi]
	idiv	ebp
	cmp	eax, r14d
	lea	rdi, [rdi]
	jge	.label_252
	lea	rdi, [rdi]
	jmp	.label_143
.label_253:
	mov	rsp, rsp
	mov	eax, 0x80000000
	cdq	
	jmp	.label_269
.label_307:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_269:
	idiv	ebp
	cmp	r14d, eax
	jl	.label_143
.label_252:
	lea	ebx, [r14 + 1]
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + line_vector]]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	test	ebx, ebx
	js	.label_199
	movsxd	rdi, ebx
	mov	rbp, rbp
	shl	rdi, 2
	call	xmalloc
	mov	qword ptr [word ptr [rip + line_vector]],  rax
	mov	rdi,  qword ptr [word ptr [rip + end_vector]]
	call	free
	test	r14d, r14d
	lea	rsi, [rsi]
	js	.label_199
	imul	ebp, r14d
	movsxd	rdi, r14d
	shl	rdi, 2
	call	xmalloc
	nop	
	mov	qword ptr [word ptr [rip + end_vector]],  rax
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + buff]]
	lea	rsi, [rsi]
	call	free
	movsxd	rbx, ebp
	mov	al,  byte ptr [byte ptr [rip + use_col_separator]]
	and	al, 1
	movabs	rcx, 0x3fffffffffffffff
	lea	rsi, [rsi]
	movabs	rdx, 0x7fffffffffffffff
	mov	rbp, rbp
	cmovne	rdx, rcx
	mov	rsp, rsp
	cmp	rdx, rbx
	mov	rbp, rbp
	jb	.label_199
	mov	rbp, rbp
	movzx	edi, al
	inc	rdi
	imul	rdi, rbx
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + buff]],  rax
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	mov	rbp, rbp
	inc	rax
	mov	rbp, rbp
	imul	rax, rbx
	mov	qword ptr [word ptr [rip + buff_allocated]],  rax
.label_196:
	mov	r14,  qword ptr [word ptr [rip + first_page_number]]
	lea	rdi, [rdi]
	mov	eax, 1
	cmp	r14, 2
	jb	.label_112
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	mov	rbp, rbp
	mov	r15d, 1
	nop	word ptr [rax + rax]
.label_272:
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + lines_per_body]]
	nop	
	mov	r12d, 1
	cmp	ecx, 1
	jle	.label_67
	nop	word ptr cs:[rax + rax]
.label_102:
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	jle	.label_77
	mov	ebp, 1
	mov	rbx,  qword ptr [word ptr [rip + column_vector]]
	nop	word ptr cs:[rax + rax]
.label_94:
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_184
	mov	rdi, rbx
	mov	esi, ebp
	lea	rdi, [rdi]
	call	skip_read
	mov	eax,  dword ptr [dword ptr [rip + columns]]
.label_184:
	mov	rbp, rbp
	add	rbx, 0x40
	cmp	ebp, eax
	mov	rbp, rbp
	lea	ecx, [rbp + 1]
	mov	ebp, ecx
	lea	rsi, [rsi]
	jl	.label_94
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + lines_per_body]]
.label_77:
	lea	rsi, [rsi]
	inc	r12d
	lea	rsi, [rsi]
	cmp	r12d, ecx
	jl	.label_102
.label_67:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + last_line]],  1
	mov	rsp, rsp
	test	eax, eax
	jle	.label_108
	mov	ebp, 1
	mov	rbx,  qword ptr [word ptr [rip + column_vector]]
	nop	word ptr [rax + rax]
.label_133:
	cmp	dword ptr [rbx + 0x10], 0
	mov	rbp, rbp
	jne	.label_121
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	mov	esi, ebp
	call	skip_read
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + columns]]
.label_121:
	add	rbx, 0x40
	cmp	ebp, eax
	lea	ecx, [rbp + 1]
	mov	ebp, ecx
	jl	.label_133
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	test	eax, eax
	nop	
	jle	.label_86
	test	cl, 1
	jne	.label_86
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	lea	rdi, [rdi]
	lea	edx, [rax - 1]
	nop	
	mov	esi, 1
	lea	rsi, [rsi]
	test	al, 3
	je	.label_141
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rbp, rbp
	and	edi, 3
	xor	ebp, ebp
	nop	
.label_159:
	mov	esi, ebp
	mov	rsp, rsp
	cmp	dword ptr [rcx + 0x10], 3
	mov	rbp, rbp
	je	.label_155
	mov	dword ptr [rcx + 0x10], 2
.label_155:
	nop	
	add	rcx, 0x40
	lea	ebp, [rsi + 1]
	cmp	edi, ebp
	lea	rdi, [rdi]
	jne	.label_159
	mov	rbp, rbp
	add	esi, 2
.label_141:
	lea	rdi, [rdi]
	cmp	edx, 3
	nop	
	jae	.label_165
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_86
.label_108:
	lea	rsi, [rsi]
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	nop	
	jmp	.label_86
.label_165:
	mov	rsp, rsp
	lea	edx, [rax + 1]
	sub	edx, esi
	lea	rdi, [rdi]
	add	rcx, 0xd0
	nop	word ptr cs:[rax + rax]
.label_206:
	mov	rbp, rbp
	cmp	dword ptr [rcx - 0xc0], 3
	mov	rsp, rsp
	je	.label_189
	mov	dword ptr [rcx - 0xc0], 2
.label_189:
	lea	rdi, [rdi]
	cmp	dword ptr [rcx - 0x80], 3
	lea	rsi, [rsi]
	je	.label_193
	mov	dword ptr [rcx - 0x80], 2
.label_193:
	cmp	dword ptr [rcx - 0x40], 3
	lea	rsi, [rsi]
	je	.label_198
	mov	dword ptr [rcx - 0x40], 2
.label_198:
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 3
	nop	
	je	.label_200
	lea	rsi, [rsi]
	mov	dword ptr [rcx], 2
.label_200:
	mov	rsp, rsp
	add	rcx, 0x100
	lea	rdi, [rdi]
	add	edx, -4
	mov	rsp, rsp
	jne	.label_206
	nop	
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_86:
	mov	rdx,  qword ptr [word ptr [rip + column_vector]]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_203
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	mov	rsi, rdx
	mov	edi, eax
	je	.label_224
	mov	rsp, rsp
	cmp	dword ptr [rdx + 0x10], 2
	nop	
	jne	.label_225
	mov	dword ptr [rdx + 0x10], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_225:
	lea	edi, [rax - 1]
	lea	rsi, [rdx + 0x40]
.label_224:
	nop	
	cmp	eax, 1
	lea	rsi, [rsi]
	je	.label_203
	add	rsi, 0x50
	nop	dword ptr [rax]
.label_251:
	cmp	dword ptr [rsi - 0x40], 2
	jne	.label_237
	lea	rdi, [rdi]
	mov	dword ptr [rsi - 0x40], 0
	lea	rsi, [rsi]
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_237:
	cmp	dword ptr [rsi], 2
	mov	rbp, rbp
	jne	.label_244
	mov	rsp, rsp
	mov	dword ptr [rsi], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_244:
	mov	rbp, rbp
	add	rsi, 0x80
	lea	rdi, [rdi]
	add	edi, -2
	jne	.label_251
.label_203:
	test	cl, 1
	lea	rdi, [rdi]
	je	.label_255
	nop	
	mov	ecx,  dword ptr [dword ptr [rip + files_ready_to_read]]
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + last_line]],  0
	test	ecx, ecx
	lea	rdi, [rdi]
	jg	.label_259
	jmp	.label_264
	nop	word ptr cs:[rax + rax]
.label_255:
	cmp	dword ptr [rdx + 0x10], 3
	lea	rdi, [rdi]
	je	.label_268
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + last_line]],  0
.label_259:
	lea	rdi, [rdi]
	inc	r15
	lea	rsi, [rsi]
	cmp	r15, r14
	lea	rdi, [rdi]
	jb	.label_272
	jmp	.label_274
.label_268:
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  0
	mov	byte ptr [byte ptr [rip + last_line]],  0
.label_264:
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.75
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	mov	rbp, rbp
	mov	r8, r15
	mov	rbp, rbp
	call	error
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + files_ready_to_read]],  0
	jle	.label_84
.label_274:
	mov	rax,  qword ptr [word ptr [rip + first_page_number]]
.label_112:
	mov	qword ptr [word ptr [rip + page_number]],  rax
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + chars_per_margin]]
	mov	rsp, rsp
	mov	dl,  byte ptr [byte ptr [rip + truncate_lines]]
	and	dl, 1
	xor	ebx, ebx
	nop	
	movzx	ecx, dl
	cmp	ecx, 1
	mov	rsp, rsp
	jne	.label_290
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [rip + parallel_files]]
	and	ecx, 1
	cmp	ecx, 1
	lea	rsi, [rsi]
	jne	.label_299
	movzx	ecx,  byte ptr [byte ptr [rip + numbered_lines]]
	and	ecx, 1
	nop	
	cmp	ecx, 1
	jne	.label_299
	lea	rsi, [rsi]
	mov	ebx,  dword ptr [dword ptr [rip + chars_per_column]]
	add	ebx, eax
	lea	rsi, [rsi]
	add	ebx,  dword ptr [dword ptr [rip + number_width]]
	jmp	.label_290
.label_299:
	mov	ebx,  dword ptr [dword ptr [rip + chars_per_column]]
	add	ebx, eax
.label_290:
	mov	r10d,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	rsp, rsp
	add	eax, r10d
	mov	rsp, rsp
	mov	r13,  qword ptr [word ptr [rip + column_vector]]
	mov	esi, 1
	mov	r8b,  byte ptr [byte ptr [rip + storing_columns]]
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + columns]],  2
	jl	.label_315
	mov	r9d,  dword ptr [dword ptr [rip + chars_per_column]]
	lea	rsi, [rsi]
	mov	r11d, OFFSET FLAT:print_char
	mov	edi, OFFSET FLAT:store_char
	mov	esi, OFFSET FLAT:read_line
	mov	ebp, OFFSET FLAT:print_stored
	mov	rsp, rsp
	mov	cl, r8b
	and	cl, 1
	cmovne	rbp, rsi
	mov	rbp, rbp
	test	cl, cl
	cmovne	rdi, r11
	movzx	ecx,  byte ptr [byte ptr [rip + numbered_lines]]
	and	ecx, 1
	lea	rsi, [rsi]
	cmp	ecx, 1
	lea	rdi, [rdi]
	jne	.label_318
	mov	r15b,  byte ptr [byte ptr [rip + parallel_files]]
	mov	rsp, rsp
	xor	r15b, 1
	mov	rbp, rbp
	test	dl, dl
	mov	rsp, rsp
	je	.label_87
	nop	
	mov	r14d,  dword ptr [dword ptr [rip + columns]]
	mov	r11d, r9d
	lea	rsi, [rsi]
	neg	r11d
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rdx, r13
	nop	
.label_104:
	mov	rsp, rsp
	mov	qword ptr [rdx + 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x18], rbp
	cmp	esi, 1
	mov	rsp, rsp
	sete	cl
	nop	
	or	cl, r15b
	mov	rbp, rbp
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rdx + 0x38], cl
	lea	rsi, [rsi]
	mov	dword ptr [rdx + 0x34], eax
	mov	eax, ebx
	add	eax, r10d
	mov	rbp, rbp
	lea	ebx, [rax + r9]
	add	rdx, 0x40
	mov	rbp, rbp
	inc	esi
	cmp	esi, r14d
	nop	
	jl	.label_104
	lea	rdi, [rdi]
	jmp	.label_128
.label_315:
	mov	rbp, rbp
	mov	rdx, r13
	mov	rsp, rsp
	jmp	.label_131
.label_318:
	test	dl, dl
	mov	rsp, rsp
	je	.label_134
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	mov	r11d, r9d
	neg	r11d
	nop	
	mov	esi, 1
	mov	rdx, r13
	nop	dword ptr [rax + rax]
.label_323:
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x20], rdi
	mov	qword ptr [rdx + 0x18], rbp
	lea	rdi, [rdi]
	mov	byte ptr [rdx + 0x38], 0
	mov	dword ptr [rdx + 0x34], eax
	mov	rsp, rsp
	mov	eax, ebx
	nop	
	add	eax, r10d
	lea	ebx, [rax + r9]
	add	rdx, 0x40
	mov	rsp, rsp
	inc	esi
	cmp	esi, ecx
	jl	.label_323
.label_128:
	lea	rdi, [rdi]
	add	r11d, ebx
	mov	rbp, rbp
	mov	eax, r11d
	jmp	.label_131
.label_87:
	lea	rdi, [rdi]
	mov	esi, 1
	mov	ebx,  dword ptr [dword ptr [rip + columns]]
	mov	rbp, rbp
	mov	rdx, r13
	nop	word ptr cs:[rax + rax]
.label_281:
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x18], rbp
	cmp	esi, 1
	mov	rbp, rbp
	sete	cl
	or	cl, r15b
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rdx + 0x38], cl
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x34], eax
	add	rdx, 0x40
	inc	esi
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	esi, ebx
	jl	.label_281
	mov	rbp, rbp
	jmp	.label_131
.label_134:
	mov	esi, 1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	mov	rbp, rbp
	mov	rdx, r13
	nop	word ptr cs:[rax + rax]
.label_89:
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x20], rdi
	mov	qword ptr [rdx + 0x18], rbp
	lea	rdi, [rdi]
	mov	byte ptr [rdx + 0x38], 0
	mov	dword ptr [rdx + 0x34], eax
	lea	rsi, [rsi]
	add	rdx, 0x40
	lea	rdi, [rdi]
	inc	esi
	xor	eax, eax
	nop	
	cmp	esi, ecx
	lea	rdi, [rdi]
	jl	.label_89
.label_131:
	test	r8b, 1
	jne	.label_211
	movzx	ecx,  byte ptr [byte ptr [rip + balance_columns]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_211
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rdx + 32]], OFFSET FLAT:store_char
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rdx + 24]], OFFSET FLAT:print_stored
	lea	rsi, [rsi]
	jmp	.label_214
.label_211:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rdx + 32]], OFFSET FLAT:print_char
	mov	qword ptr [word ptr [rdx + 24]], OFFSET FLAT:read_line
.label_214:
	movzx	ecx,  byte ptr [byte ptr [rip + numbered_lines]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_229
	mov	cl,  byte ptr [byte ptr [rip + parallel_files]]
	lea	rsi, [rsi]
	cmp	esi, 1
	lea	rdi, [rdi]
	sete	bl
	nop	
	xor	cl, 1
	or	cl, bl
	nop	
	jmp	.label_233
.label_229:
	xor	ecx, ecx
.label_233:
	and	cl, 1
	mov	rbp, rbp
	mov	byte ptr [rdx + 0x38], cl
	lea	rsi, [rsi]
	mov	dword ptr [rdx + 0x34], eax
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + line_count]]
	mov	dword ptr [dword ptr [rip + line_number]],  eax
	movabs	r14, 0x1fffffff8
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_92]]
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_91]]
	mov	rsp, rsp
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_90]]
	mov	rsp, rsp
	jmp	.label_240
	nop	word ptr cs:[rax + rax]
.label_117:
	cmp	dword ptr [r13 + 0x10], 3
	setne	al
	nop	
	movzx	eax, al
	nop	
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  eax
	lea	rsi, [rsi]
	xor	r8d, r8d
.label_240:
	test	r8b, 1
	nop	
	je	.label_123
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	jmp	.label_222
	nop	dword ptr [rax + rax]
.label_123:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + buff_current]],  0
	lea	rsi, [rsi]
	mov	r8b,  byte ptr [byte ptr [rip + balance_columns]]
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	mov	rsp, rsp
	mov	dl, r8b
	not	dl
	movzx	edx, dl
	lea	rsi, [rsi]
	and	edx, 1
	mov	esi, ecx
	lea	rsi, [rsi]
	sub	esi, edx
	test	esi, esi
	lea	rdi, [rdi]
	jle	.label_81
	lea	rdi, [rdi]
	lea	eax, [rsi - 1]
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	test	sil, 7
	lea	rdi, [rdi]
	mov	rdx, r13
	mov	rbp, rbp
	je	.label_280
	mov	dl, r8b
	nop	
	inc	dl
	lea	rdi, [rdi]
	movzx	edx, dl
	lea	rsi, [rsi]
	and	edx, 1
	mov	rsp, rsp
	mov	ebp, ecx
	sub	ebp, edx
	lea	rsi, [rsi]
	and	ebp, 7
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rsp, rsp
	mov	rdx, r13
	nop	word ptr [rax + rax]
.label_116:
	lea	rsi, [rsi]
	mov	edi, ebx
	mov	dword ptr [rdx + 0x2c], 0
	lea	rdi, [rdi]
	add	rdx, 0x40
	lea	ebx, [rdi + 1]
	lea	rdi, [rdi]
	cmp	ebp, ebx
	jne	.label_116
	lea	rdi, [rdi]
	add	edi, 2
.label_280:
	mov	rbp, rbp
	cmp	eax, 7
	lea	rsi, [rsi]
	jb	.label_181
	nop	
	add	rdx, 0x1ec
	lea	rsi, [rsi]
	mov	al, r8b
	mov	rbp, rbp
	inc	al
	movzx	eax, al
	and	eax, 1
	lea	rdi, [rdi]
	sub	ecx, eax
	inc	ecx
	mov	rbp, rbp
	sub	ecx, edi
	nop	word ptr [rax + rax]
.label_317:
	mov	dword ptr [rdx - 0x1c0], 0
	mov	dword ptr [rdx - 0x180], 0
	lea	rsi, [rsi]
	mov	dword ptr [rdx - 0x140], 0
	mov	dword ptr [rdx - 0x100], 0
	mov	dword ptr [rdx - 0xc0], 0
	mov	dword ptr [rdx - 0x80], 0
	mov	rbp, rbp
	mov	dword ptr [rdx - 0x40], 0
	mov	rbp, rbp
	mov	dword ptr [rdx], 0
	add	rdx, 0x200
	lea	rdi, [rdi]
	add	ecx, -8
	jne	.label_317
.label_181:
	lea	rsi, [rsi]
	test	esi, esi
	jle	.label_81
	mov	ecx,  dword ptr [dword ptr [rip + files_ready_to_read]]
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_81
	mov	qword ptr [rsp], rsi
	mov	r12d, 1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_183:
	mov	dword ptr [r13 + 0x28], ebp
	lea	rsi, [rsi]
	mov	r15, r14
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_96
	nop	
	mov	esi,  dword ptr [dword ptr [rip + lines_per_body]]
	test	esi, esi
	mov	rsp, rsp
	je	.label_96
	mov	rbp, rbp
	mov	edx, dword ptr [r13 + 0x10]
	mov	ebx, 1
	lea	rdi, [rdi]
	sub	ebx, esi
	mov	rbp, rbp
	mov	r14d, eax
	nop	
.label_260:
	lea	rdi, [rdi]
	test	edx, edx
	je	.label_115
	mov	rsp, rsp
	mov	eax, r14d
	jmp	.label_118
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	dword ptr [dword ptr [rip + input_position]],  0
	mov	rdi, r13
	call	read_line
	test	al, al
	jne	.label_138
	lea	rdi, [rdi]
	mov	rdi, r13
	call	read_rest_of_line
.label_138:
	nop	
	mov	edx, dword ptr [r13 + 0x10]
	mov	eax,  dword ptr [dword ptr [rip + buff_current]]
	nop	
	test	edx, edx
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_92]]
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_91]]
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_90]]
	nop	
	je	.label_147
	cmp	r14d, eax
	jne	.label_147
	lea	rsi, [rsi]
	mov	eax, r14d
	nop	
	jmp	.label_118
.label_147:
	inc	dword ptr [r13 + 0x2c]
	mov	rbp, rbp
	mov	ecx, ebp
	mov	rsi,  qword ptr [word ptr [rip + line_vector]]
	mov	rbp, rbp
	mov	dword ptr [rsi + rcx*4], r14d
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [rip + input_position]]
	inc	ebp
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + end_vector]]
	nop	
	mov	dword ptr [rdi + rcx*4], esi
	nop	dword ptr [rax]
.label_118:
	mov	ecx,  dword ptr [dword ptr [rip + files_ready_to_read]]
	test	ebx, ebx
	je	.label_96
	nop	
	inc	ebx
	test	ecx, ecx
	nop	
	mov	r14d, eax
	nop	
	jne	.label_260
.label_96:
	nop	
	mov	rdx, qword ptr [rsp]
	cmp	r12d, edx
	mov	r14, r15
	jge	.label_177
	inc	r12d
	mov	rbp, rbp
	add	r13, 0x40
	mov	rbp, rbp
	test	ecx, ecx
	lea	rdi, [rdi]
	jne	.label_183
.label_177:
	mov	cl,  byte ptr [byte ptr [rip + balance_columns]]
	and	cl, 1
	lea	rdi, [rdi]
	mov	ecx, ebp
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + line_vector]]
	lea	rdi, [rdi]
	mov	dword ptr [rdx + rcx*4], eax
	jne	.label_188
	lea	rdi, [rdi]
	xor	r8d, r8d
	jmp	.label_195
	nop	word ptr [rax + rax]
.label_81:
	mov	rax,  qword ptr [word ptr [rip + line_vector]]
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	xor	ebp, ebp
	nop	
	test	r8b, 1
	mov	r8d, 0
	je	.label_195
.label_188:
	mov	edi,  dword ptr [dword ptr [rip + columns]]
	mov	r8b, 1
	test	edi, edi
	nop	
	jle	.label_195
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + column_vector]]
	mov	r9d,  dword ptr [dword ptr [rip + columns]]
	add	rsi, 0x2c
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_223:
	mov	rbp, rbp
	mov	eax, ebp
	nop	
	cdq	
	idiv	edi
	inc	ebx
	lea	rsi, [rsi]
	cmp	ebx, edx
	lea	rdi, [rdi]
	setle	dl
	nop	
	movzx	edx, dl
	nop	
	add	edx, eax
	mov	dword ptr [rsi], edx
	mov	dword ptr [rsi - 4], ecx
	mov	rbp, rbp
	add	ecx, edx
	add	rsi, 0x40
	cmp	ebx, r9d
	nop	
	mov	edi, r9d
	nop	
	jl	.label_223
.label_195:
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [rip + columns]]
	mov	rsp, rsp
	mov	r13,  qword ptr [word ptr [rip + column_vector]]
	lea	rsi, [rsi]
	mov	eax, edi
	mov	rbp, rbp
	dec	eax
	mov	rcx, r13
	lea	rsi, [rsi]
	je	.label_235
	lea	rsi, [rsi]
	lea	edx, [rdi - 2]
	mov	rbp, rbp
	add	edi, 7
	test	dil, 7
	nop	
	je	.label_246
	and	edi, 7
	nop	
	neg	edi
	mov	rsi, r13
	nop	word ptr [rax + rax]
.label_293:
	nop	
	mov	ecx, dword ptr [rsi + 0x2c]
	mov	rsp, rsp
	mov	dword ptr [rsi + 0x30], ecx
	mov	rbp, rbp
	add	rsi, 0x40
	dec	eax
	lea	rdi, [rdi]
	inc	edi
	lea	rsi, [rsi]
	jne	.label_293
	jmp	.label_263
.label_246:
	mov	rsi, r13
.label_263:
	cmp	edx, 7
	nop	
	jb	.label_275
	add	rsi, 0x1f0
	nop	word ptr cs:[rax + rax]
.label_249:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsi - 0x1c4]
	lea	rsi, [rsi]
	mov	dword ptr [rsi - 0x1c0], ecx
	mov	ecx, dword ptr [rsi - 0x184]
	mov	dword ptr [rsi - 0x180], ecx
	nop	
	mov	ecx, dword ptr [rsi - 0x144]
	mov	dword ptr [rsi - 0x140], ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsi - 0x104]
	mov	dword ptr [rsi - 0x100], ecx
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi - 0xc4]
	nop	
	mov	dword ptr [rsi - 0xc0], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rsi - 0x84]
	mov	dword ptr [rsi - 0x80], ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsi - 0x44]
	lea	rsi, [rsi]
	mov	dword ptr [rsi - 0x40], ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsi - 4]
	mov	dword ptr [rsi], ecx
	add	rsi, 0x200
	lea	rdi, [rdi]
	add	eax, -8
	jne	.label_249
.label_275:
	mov	eax, edx
	shl	rax, 6
	lea	rsi, [rsi]
	lea	rcx, [rax + r13 + 0x40]
.label_235:
	mov	rsp, rsp
	test	r8b, r8b
	je	.label_289
	mov	eax, dword ptr [rcx + 0x2c]
	mov	dword ptr [rcx + 0x30], eax
	jmp	.label_68
	nop	word ptr [rax + rax]
.label_289:
	cmp	dword ptr [rcx + 0x10], 0
	je	.label_295
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0x30], 0
	jmp	.label_68
.label_295:
	mov	eax,  dword ptr [dword ptr [rip + lines_per_body]]
	nop	
	mov	dword ptr [rcx + 0x30], eax
	mov	rsp, rsp
	jmp	.label_68
	nop	word ptr [rax + rax]
.label_222:
	test	eax, eax
	nop	
	je	.label_84
	mov	ebp,  dword ptr [dword ptr [rip + lines_per_body]]
	lea	esi, [rax - 1]
	nop	
	test	al, 3
	je	.label_215
	mov	edi, eax
	and	edi, 3
	nop	
	neg	edi
	mov	rsp, rsp
	mov	rdx, r13
	nop	word ptr cs:[rax + rax]
.label_321:
	cmp	dword ptr [rdx + 0x10], 0
	lea	rdi, [rdi]
	mov	ecx, ebp
	mov	rsp, rsp
	je	.label_106
	lea	rsi, [rsi]
	xor	ecx, ecx
.label_106:
	lea	rsi, [rsi]
	mov	dword ptr [rdx + 0x30], ecx
	dec	eax
	add	rdx, 0x40
	inc	edi
	mov	rbp, rbp
	jne	.label_321
	nop	
	jmp	.label_326
	nop	dword ptr [rax]
.label_215:
	mov	rdx, r13
.label_326:
	lea	rsi, [rsi]
	cmp	esi, 3
	jb	.label_68
	mov	rbp, rbp
	add	rdx, 0xf0
	nop	word ptr cs:[rax + rax]
.label_100:
	cmp	dword ptr [rdx - 0xe0], 0
	nop	
	mov	ecx, ebp
	je	.label_126
	lea	rdi, [rdi]
	xor	ecx, ecx
.label_126:
	mov	rsp, rsp
	mov	dword ptr [rdx - 0xc0], ecx
	nop	
	cmp	dword ptr [rdx - 0xa0], 0
	mov	ecx, ebp
	lea	rdi, [rdi]
	je	.label_83
	xor	ecx, ecx
.label_83:
	mov	rsp, rsp
	mov	dword ptr [rdx - 0x80], ecx
	cmp	dword ptr [rdx - 0x60], 0
	mov	ecx, ebp
	mov	rsp, rsp
	je	.label_88
	xor	ecx, ecx
.label_88:
	mov	dword ptr [rdx - 0x40], ecx
	cmp	dword ptr [rdx - 0x20], 0
	lea	rsi, [rsi]
	mov	ecx, ebp
	mov	rbp, rbp
	je	.label_95
	lea	rsi, [rsi]
	xor	ecx, ecx
.label_95:
	mov	dword ptr [rdx], ecx
	nop	
	add	rdx, 0x100
	mov	rsp, rsp
	add	eax, -4
	lea	rsi, [rsi]
	jne	.label_100
.label_68:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_84
	mov	dl,  byte ptr [byte ptr [rip + storing_columns]]
	lea	rdi, [rdi]
	and	dl, 1
	lea	rdi, [rdi]
	je	.label_113
	mov	rsp, rsp
	lea	ebp, [rax - 1]
	lea	rbx, [rbp + 1]
	xor	ecx, ecx
	cmp	rbx, 8
	jae	.label_119
	xor	r8d, r8d
	nop	
	mov	rsi, r13
	lea	rsi, [rsi]
	jmp	.label_125
	nop	dword ptr [rax]
.label_113:
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	test	al, 1
	mov	ebp, 0
	mov	rsi, r13
	je	.label_132
	nop	
	cmp	dword ptr [r13 + 0x10], 2
	nop	
	jb	.label_136
	xor	ecx, ecx
	cmp	dword ptr [r13 + 0x2c], 0
	jle	.label_140
	mov	rbp, rbp
	cmp	dword ptr [r13 + 0x30], 0
	jle	.label_140
.label_136:
	nop	
	mov	ecx, 1
.label_140:
	lea	rsi, [r13 + 0x40]
	mov	ebp, 1
.label_132:
	cmp	eax, 1
	je	.label_148
	lea	rdi, [rdi]
	mov	edi, eax
	sub	edi, ebp
	add	rsi, 0x70
	nop	word ptr cs:[rax + rax]
.label_174:
	cmp	dword ptr [rsi - 0x60], 2
	jb	.label_158
	lea	rsi, [rsi]
	cmp	dword ptr [rsi - 0x44], 0
	mov	rsp, rsp
	jle	.label_160
	cmp	dword ptr [rsi - 0x40], 0
	jle	.label_160
.label_158:
	inc	ecx
.label_160:
	lea	rdi, [rdi]
	cmp	dword ptr [rsi - 0x20], 2
	nop	
	jb	.label_311
	cmp	dword ptr [rsi - 4], 0
	jle	.label_169
	cmp	dword ptr [rsi], 0
	lea	rsi, [rsi]
	jle	.label_169
.label_311:
	inc	ecx
.label_169:
	add	rsi, 0x80
	add	edi, -2
	nop	
	jne	.label_174
	nop	
	jmp	.label_148
	nop	word ptr [rax + rax]
.label_119:
	mov	rdi, rbx
	lea	rsi, [rsi]
	and	rdi, r14
	lea	rdi, [rdi]
	mov	r9, rbx
	mov	rsp, rsp
	and	r9, r14
	mov	r8d, 0
	mov	rsi, r13
	je	.label_125
	nop	
	shl	rdi, 6
	lea	rdi, [rdi]
	mov	rsi, rdi
	add	rsi, r13
	mov	r8d, r9d
	lea	rcx, [r13 + 0x1d0]
	inc	rbp
	and	rbp, r14
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	nop	word ptr [rax + rax]
.label_202:
	lea	rsi, [rsi]
	movd	xmm2, dword ptr [rcx - 0x100]
	mov	rbp, rbp
	movd	xmm3, dword ptr [rcx - 0x180]
	mov	rsp, rsp
	punpckldq	xmm3, xmm2
	movd	xmm2, dword ptr [rcx - 0x140]
	lea	rdi, [rdi]
	movd	xmm4, dword ptr [rcx - 0x1c0]
	mov	rsp, rsp
	punpckldq	xmm4, xmm2
	nop	
	punpckldq	xmm4, xmm3
	movd	xmm2, dword ptr [rcx]
	mov	rbp, rbp
	movd	xmm3, dword ptr [rcx - 0x80]
	nop	
	punpckldq	xmm3, xmm2
	lea	rsi, [rsi]
	movd	xmm2, dword ptr [rcx - 0x40]
	movd	xmm5, dword ptr [rcx - 0xc0]
	punpckldq	xmm5, xmm2
	lea	rsi, [rsi]
	punpckldq	xmm5, xmm3
	lea	rsi, [rsi]
	pxor	xmm4, xmm6
	mov	rsp, rsp
	movdqa	xmm2, xmm7
	pcmpgtd	xmm2, xmm4
	nop	
	pand	xmm2, xmm8
	nop	
	pxor	xmm5, xmm6
	movdqa	xmm3, xmm7
	mov	rbp, rbp
	pcmpgtd	xmm3, xmm5
	pand	xmm3, xmm8
	paddd	xmm0, xmm2
	mov	rbp, rbp
	paddd	xmm1, xmm3
	add	rcx, 0x200
	lea	rdi, [rdi]
	add	rbp, -8
	lea	rdi, [rdi]
	jne	.label_202
	paddd	xmm1, xmm0
	nop	
	pshufd	xmm0, xmm1, 0x4e
	lea	rdi, [rdi]
	paddd	xmm0, xmm1
	mov	rsp, rsp
	pshufd	xmm1, xmm0, 0xe5
	paddd	xmm1, xmm0
	movd	ecx, xmm1
	cmp	rbx, r9
	nop	
	je	.label_148
	nop	
.label_125:
	nop	
	mov	edi, eax
	sub	edi, r8d
	mov	rsp, rsp
	add	rsi, 0x10
	nop	dword ptr [rax]
.label_124:
	cmp	dword ptr [rsi], 2
	lea	rdi, [rdi]
	adc	ecx, 0
	add	rsi, 0x40
	dec	edi
	nop	
	jne	.label_124
.label_148:
	test	ecx, ecx
	je	.label_84
	mov	cl,  byte ptr [byte ptr [rip + extremities]]
	and	cl, 1
	jne	.label_271
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + print_a_header]],  1
.label_271:
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [rip + lines_per_body]]
	lea	rsi, [rsi]
	mov	cl,  byte ptr [byte ptr [rip + double_space]]
	and	cl, 1
	nop	
	shl	esi, cl
	mov	rsp, rsp
	mov	dword ptr [rsp], esi
	xor	r12d, r12d
	nop	
	test	esi, esi
	jg	.label_273
	jmp	.label_185
	nop	word ptr cs:[rax + rax]
.label_256:
	nop	
	mov	dword ptr [rsp], r15d
	mov	r13,  qword ptr [word ptr [rip + column_vector]]
	mov	dl,  byte ptr [byte ptr [rip + storing_columns]]
.label_273:
	test	dl, 1
	je	.label_329
	mov	rbp, rbp
	lea	ebx, [rax - 1]
	lea	rdi, [rbx + 1]
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	rdi, 8
	lea	rsi, [rsi]
	jae	.label_287
	nop	
	xor	r8d, r8d
	mov	rdx, r13
	mov	rsp, rsp
	jmp	.label_82
	nop	word ptr cs:[rax + rax]
.label_329:
	nop	
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	al, 1
	mov	edi, 0
	nop	
	mov	rdx, r13
	je	.label_298
	cmp	dword ptr [r13 + 0x10], 2
	mov	rsp, rsp
	jb	.label_302
	nop	
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	dword ptr [r13 + 0x2c], 0
	mov	rsp, rsp
	jle	.label_304
	lea	rdi, [rdi]
	cmp	dword ptr [r13 + 0x30], 0
	lea	rdi, [rdi]
	jle	.label_304
.label_302:
	mov	rbp, rbp
	mov	ecx, 1
.label_304:
	nop	
	lea	rdx, [r13 + 0x40]
	mov	edi, 1
.label_298:
	cmp	eax, 1
	je	.label_79
	mov	esi, eax
	sub	esi, edi
	add	rdx, 0x70
	nop	dword ptr [rax]
.label_73:
	cmp	dword ptr [rdx - 0x60], 2
	mov	rbp, rbp
	jb	.label_283
	cmp	dword ptr [rdx - 0x44], 0
	jle	.label_182
	cmp	dword ptr [rdx - 0x40], 0
	mov	rbp, rbp
	jle	.label_182
.label_283:
	inc	ecx
.label_182:
	cmp	dword ptr [rdx - 0x20], 2
	nop	
	jb	.label_327
	cmp	dword ptr [rdx - 4], 0
	nop	
	jle	.label_70
	cmp	dword ptr [rdx], 0
	jle	.label_70
.label_327:
	mov	rbp, rbp
	inc	ecx
.label_70:
	mov	rbp, rbp
	add	rdx, 0x80
	add	esi, -2
	mov	rbp, rbp
	jne	.label_73
	jmp	.label_79
	nop	dword ptr [rax]
.label_287:
	nop	
	mov	rsi, rdi
	mov	rbp, rbp
	and	rsi, r14
	mov	rbp, rdi
	and	rbp, r14
	mov	rsp, rsp
	mov	r8d, 0
	lea	rdi, [rdi]
	mov	rdx, r13
	je	.label_82
	shl	rsi, 6
	lea	rdi, [rdi]
	mov	rdx, rsi
	mov	rbp, rbp
	add	rdx, r13
	mov	r8d, ebp
	lea	rcx, [r13 + 0x1d0]
	mov	rsp, rsp
	inc	rbx
	lea	rdi, [rdi]
	and	rbx, r14
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	dword ptr [rax]
.label_111:
	mov	rsp, rsp
	movd	xmm2, dword ptr [rcx - 0x100]
	mov	rbp, rbp
	movd	xmm3, dword ptr [rcx - 0x180]
	nop	
	punpckldq	xmm3, xmm2
	movd	xmm2, dword ptr [rcx - 0x140]
	movd	xmm4, dword ptr [rcx - 0x1c0]
	punpckldq	xmm4, xmm2
	punpckldq	xmm4, xmm3
	movd	xmm2, dword ptr [rcx]
	movd	xmm3, dword ptr [rcx - 0x80]
	lea	rsi, [rsi]
	punpckldq	xmm3, xmm2
	movd	xmm2, dword ptr [rcx - 0x40]
	movd	xmm5, dword ptr [rcx - 0xc0]
	nop	
	punpckldq	xmm5, xmm2
	punpckldq	xmm5, xmm3
	nop	
	pxor	xmm4, xmm6
	movdqa	xmm2, xmm7
	pcmpgtd	xmm2, xmm4
	pand	xmm2, xmm8
	pxor	xmm5, xmm6
	movdqa	xmm3, xmm7
	nop	
	pcmpgtd	xmm3, xmm5
	pand	xmm3, xmm8
	mov	rbp, rbp
	paddd	xmm0, xmm2
	nop	
	paddd	xmm1, xmm3
	mov	rsp, rsp
	add	rcx, 0x200
	mov	rsp, rsp
	add	rbx, -8
	jne	.label_111
	paddd	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddd	xmm0, xmm1
	lea	rsi, [rsi]
	pshufd	xmm1, xmm0, 0xe5
	mov	rbp, rbp
	paddd	xmm1, xmm0
	movd	ecx, xmm1
	mov	rbp, rbp
	cmp	rdi, rbp
	je	.label_79
	nop	dword ptr [rax + rax]
.label_82:
	mov	esi, eax
	mov	rbp, rbp
	sub	esi, r8d
	add	rdx, 0x10
	nop	dword ptr [rax]
.label_180:
	cmp	dword ptr [rdx], 2
	mov	rbp, rbp
	adc	ecx, 0
	mov	rbp, rbp
	add	rdx, 0x40
	nop	
	dec	esi
	jne	.label_180
.label_79:
	nop	
	test	ecx, ecx
	je	.label_185
	mov	dword ptr [dword ptr [rip + output_position]],  0
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  0
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + empty_line]],  1
	nop	
	mov	ebp, 1
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jle	.label_187
	nop	dword ptr [rax + rax]
.label_122:
	mov	dword ptr [dword ptr [rip + input_position]],  0
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0x30]
	mov	rbx, rax
	lea	rsi, [rsi]
	shr	rbx, 0x20
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	jg	.label_207
	lea	rsi, [rsi]
	cmp	dword ptr [r13 + 0x10], 1
	mov	rsp, rsp
	jne	.label_221
.label_207:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + FF_only]],  0
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  ebx
	mov	rdi, r13
	call	qword ptr [r13 + 0x18]
	mov	rsp, rsp
	test	al, al
	jne	.label_228
	mov	rdi, r13
	call	read_rest_of_line
.label_228:
	mov	r8b,  byte ptr [byte ptr [rip + pad_vertically]]
	lea	rdi, [rdi]
	and	r12b, 1
	mov	rsp, rsp
	or	r12b, r8b
	mov	rbx, qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	lea	eax, [rbx - 1]
	mov	rbp, rbp
	mov	dword ptr [r13 + 0x30], eax
	lea	rsi, [rsi]
	cmp	ebx, 1
	lea	rdi, [rdi]
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_92]]
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_91]]
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_90]]
	nop	
	jg	.label_232
	mov	rbp, rbp
	mov	edx,  dword ptr [dword ptr [rip + columns]]
	xor	eax, eax
	lea	rsi, [rsi]
	test	edx, edx
	lea	rsi, [rsi]
	je	.label_163
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	and	cl, 1
	nop	
	je	.label_262
	lea	rsi, [rsi]
	lea	ecx, [rdx - 1]
	lea	rsi, [rsi]
	lea	r10, [rcx + 1]
	xor	esi, esi
	cmp	r10, 8
	jb	.label_266
	mov	rdi, r10
	mov	rbp, rbp
	and	rdi, r14
	mov	r9, r10
	and	r9, r14
	je	.label_266
	mov	rsp, rsp
	shl	rdi, 6
	add	rdi, rax
	add	rax, 0x1d0
	inc	rcx
	and	rcx, r14
	pxor	xmm0, xmm0
	mov	rbp, rbp
	pxor	xmm1, xmm1
	nop	dword ptr [rax]
.label_120:
	lea	rdi, [rdi]
	movd	xmm2, dword ptr [rax - 0x100]
	nop	
	movd	xmm3, dword ptr [rax - 0x180]
	punpckldq	xmm3, xmm2
	mov	rbp, rbp
	movd	xmm2, dword ptr [rax - 0x140]
	mov	rsp, rsp
	movd	xmm4, dword ptr [rax - 0x1c0]
	lea	rsi, [rsi]
	punpckldq	xmm4, xmm2
	lea	rsi, [rsi]
	punpckldq	xmm4, xmm3
	lea	rdi, [rdi]
	movd	xmm2, dword ptr [rax]
	movd	xmm3, dword ptr [rax - 0x80]
	punpckldq	xmm3, xmm2
	mov	rsp, rsp
	movd	xmm2, dword ptr [rax - 0x40]
	movd	xmm5, dword ptr [rax - 0xc0]
	mov	rbp, rbp
	punpckldq	xmm5, xmm2
	punpckldq	xmm5, xmm3
	pxor	xmm4, xmm6
	nop	
	movdqa	xmm2, xmm7
	pcmpgtd	xmm2, xmm4
	lea	rsi, [rsi]
	pand	xmm2, xmm8
	nop	
	pxor	xmm5, xmm6
	movdqa	xmm3, xmm7
	lea	rsi, [rsi]
	pcmpgtd	xmm3, xmm5
	lea	rsi, [rsi]
	pand	xmm3, xmm8
	paddd	xmm0, xmm2
	lea	rdi, [rdi]
	paddd	xmm1, xmm3
	mov	rbp, rbp
	add	rax, 0x200
	mov	rbp, rbp
	add	rcx, -8
	lea	rdi, [rdi]
	jne	.label_120
	paddd	xmm1, xmm0
	mov	rbp, rbp
	pshufd	xmm0, xmm1, 0x4e
	paddd	xmm0, xmm1
	pshufd	xmm1, xmm0, 0xe5
	paddd	xmm1, xmm0
	mov	rsp, rsp
	movd	esi, xmm1
	cmp	r10, r9
	lea	rsi, [rsi]
	je	.label_109
	jmp	.label_325
.label_262:
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	test	dl, 1
	mov	rbp, rbp
	jne	.label_161
	xor	edi, edi
	jmp	.label_127
.label_221:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_72
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + empty_line]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_80
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  1
	jmp	.label_72
.label_266:
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, rax
.label_325:
	mov	rsp, rsp
	mov	eax, edx
	sub	eax, r9d
	add	rdi, 0x10
	nop	word ptr cs:[rax + rax]
.label_164:
	nop	
	cmp	dword ptr [rdi], 2
	mov	rbp, rbp
	adc	esi, 0
	mov	rbp, rbp
	add	rdi, 0x40
	mov	rsp, rsp
	dec	eax
	mov	rsp, rsp
	jne	.label_164
	mov	rsp, rsp
	jmp	.label_109
.label_161:
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x10], 2
	jb	.label_296
	xor	esi, esi
	cmp	dword ptr [rax + 0x2c], 0
	jle	.label_114
	cmp	dword ptr [rax + 0x30], 0
	lea	rdi, [rdi]
	jle	.label_114
.label_296:
	mov	esi, 1
.label_114:
	lea	rdi, [rdi]
	add	rax, 0x40
	mov	rbp, rbp
	mov	edi, 1
.label_127:
	lea	rsi, [rsi]
	cmp	edx, 1
	nop	
	je	.label_109
	mov	ecx, edx
	mov	rsp, rsp
	sub	ecx, edi
	lea	rdi, [rdi]
	add	rax, 0x70
	nop	dword ptr [rax + rax]
.label_149:
	cmp	dword ptr [rax - 0x60], 2
	jb	.label_135
	cmp	dword ptr [rax - 0x44], 0
	lea	rsi, [rsi]
	jle	.label_247
	cmp	dword ptr [rax - 0x40], 0
	jle	.label_247
.label_135:
	inc	esi
.label_247:
	cmp	dword ptr [rax - 0x20], 2
	jb	.label_139
	cmp	dword ptr [rax - 4], 0
	lea	rdi, [rdi]
	jle	.label_99
	mov	rbp, rbp
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	jle	.label_99
.label_139:
	inc	esi
.label_99:
	add	rax, 0x80
	add	ecx, -2
	jne	.label_149
.label_109:
	test	esi, esi
	je	.label_153
.label_232:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_72
	mov	rsp, rsp
	mov	eax, dword ptr [r13 + 0x10]
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_72
	mov	rbp, rbp
	movzx	ecx,  byte ptr [byte ptr [rip + empty_line]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_322
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  1
	jmp	.label_72
.label_322:
	mov	rbp, rbp
	cmp	eax, 3
	je	.label_192
	cmp	eax, 2
	mov	rbp, rbp
	jne	.label_72
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + FF_only]]
	mov	rsp, rsp
	and	eax, 1
	nop	
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_72
.label_192:
	mov	rbp, rbp
	mov	r15, r14
	mov	rsp, rsp
	shr	rbx, 0x20
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  ebx
	nop	
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	rsp, rsp
	mov	r14d, ebx
	sub	r14d, eax
	jle	.label_218
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	lea	rdi, [rdi]
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	lea	rsi, [rsi]
	and	dl, 1
	jne	.label_208
	lea	rdi, [rdi]
	cmp	r14d, ecx
	jle	.label_209
	sub	ebx, ecx
	mov	rsp, rsp
	sub	ebx, eax
	lea	rdi, [rdi]
	jmp	.label_101
.label_80:
	lea	rsi, [rsi]
	mov	r15, r14
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  ebx
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	rsp, rsp
	mov	r14d, ebx
	nop	
	sub	r14d, eax
	jle	.label_218
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	mov	rsp, rsp
	je	.label_231
.label_208:
	nop	
	sub	r14d, ecx
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r14d
	jmp	.label_166
.label_241:
	mov	esi, 0x20
	nop	
	call	__overflow
	jmp	.label_238
	nop	word ptr cs:[rax + rax]
.label_101:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_241
	nop	
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0x20
.label_238:
	nop	
	dec	ebx
	mov	rsp, rsp
	jne	.label_101
	jmp	.label_209
.label_231:
	lea	rsi, [rsi]
	cmp	r14d, ecx
	nop	
	jle	.label_209
	lea	rdi, [rdi]
	sub	ebx, ecx
	mov	rsp, rsp
	sub	ebx, eax
	lea	rdi, [rdi]
	jmp	.label_212
.label_142:
	mov	esi, 0x20
	lea	rsi, [rsi]
	call	__overflow
	mov	rsp, rsp
	jmp	.label_265
	nop	dword ptr [rax + rax]
.label_212:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	nop	
	jae	.label_142
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_265:
	lea	rsi, [rsi]
	dec	ebx
	nop	
	jne	.label_212
.label_209:
	nop	
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
.label_166:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_218:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	mov	r14, r15
	nop	
	jne	.label_276
	call	print_sep_string
.label_276:
	cmp	byte ptr [r13 + 0x38], 0
	nop	
	je	.label_279
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rbp, rbp
	call	add_line_number
.label_279:
	nop	
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_92]]
	mov	rbp, rbp
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_91]]
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_90]]
	nop	
.label_72:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_288
	mov	rsp, rsp
	inc	dword ptr [dword ptr [rip + separators_not_printed]]
.label_288:
	mov	rbp, rbp
	add	r13, 0x40
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	cmp	ebp, eax
	lea	rdi, [rdi]
	lea	ecx, [rbp + 1]
	lea	rsi, [rsi]
	mov	ebp, ecx
	jl	.label_122
	mov	r8b,  byte ptr [byte ptr [rip + pad_vertically]]
	mov	rsp, rsp
	jmp	.label_163
	nop	word ptr [rax + rax]
.label_187:
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rsp]
	jmp	.label_248
.label_153:
	mov	eax, edx
.label_163:
	test	r8b, r8b
	mov	r15d, dword ptr [rsp]
	mov	rbp, rbp
	je	.label_248
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_205
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_151:
	dec	r15d
	mov	eax,  dword ptr [dword ptr [rip + columns]]
.label_248:
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_303
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	mov	dl,  byte ptr [byte ptr [rip + storing_columns]]
	mov	rbp, rbp
	and	dl, 1
	mov	rbp, rbp
	je	.label_328
	lea	rdi, [rdi]
	lea	ebx, [rax - 1]
	lea	rbp, [rbx + 1]
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rsi, [rsi]
	cmp	rbp, 8
	jb	.label_75
	mov	rsi, rbp
	and	rsi, r14
	lea	rdi, [rdi]
	mov	rdi, rbp
	and	rdi, r14
	mov	rsp, rsp
	je	.label_75
	shl	rsi, 6
	add	rsi, rcx
	add	rcx, 0x1d0
	inc	rbx
	and	rbx, r14
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	nop	word ptr [rax + rax]
.label_243:
	movd	xmm2, dword ptr [rcx - 0x100]
	movd	xmm3, dword ptr [rcx - 0x180]
	nop	
	punpckldq	xmm3, xmm2
	nop	
	movd	xmm2, dword ptr [rcx - 0x140]
	movd	xmm4, dword ptr [rcx - 0x1c0]
	punpckldq	xmm4, xmm2
	nop	
	punpckldq	xmm4, xmm3
	movd	xmm2, dword ptr [rcx]
	movd	xmm3, dword ptr [rcx - 0x80]
	lea	rdi, [rdi]
	punpckldq	xmm3, xmm2
	mov	rsp, rsp
	movd	xmm2, dword ptr [rcx - 0x40]
	lea	rsi, [rsi]
	movd	xmm5, dword ptr [rcx - 0xc0]
	lea	rdi, [rdi]
	punpckldq	xmm5, xmm2
	mov	rsp, rsp
	punpckldq	xmm5, xmm3
	nop	
	pxor	xmm4, xmm6
	movdqa	xmm2, xmm7
	nop	
	pcmpgtd	xmm2, xmm4
	pand	xmm2, xmm8
	mov	rbp, rbp
	pxor	xmm5, xmm6
	movdqa	xmm3, xmm7
	pcmpgtd	xmm3, xmm5
	pand	xmm3, xmm8
	nop	
	paddd	xmm0, xmm2
	nop	
	paddd	xmm1, xmm3
	mov	rsp, rsp
	add	rcx, 0x200
	nop	
	add	rbx, -8
	mov	rbp, rbp
	jne	.label_243
	paddd	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddd	xmm0, xmm1
	pshufd	xmm1, xmm0, 0xe5
	paddd	xmm1, xmm0
	movd	edx, xmm1
	cmp	rbp, rdi
	nop	
	je	.label_156
	lea	rsi, [rsi]
	jmp	.label_162
	nop	word ptr cs:[rax + rax]
.label_328:
	mov	rbp, rbp
	xor	edx, edx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_320
	nop	
	xor	esi, esi
	jmp	.label_171
	nop	word ptr cs:[rax + rax]
.label_75:
	xor	edi, edi
	nop	
	mov	rsi, rcx
.label_162:
	sub	eax, edi
	add	rsi, 0x10
	nop	dword ptr [rax]
.label_144:
	cmp	dword ptr [rsi], 2
	mov	rsp, rsp
	adc	edx, 0
	add	rsi, 0x40
	nop	
	dec	eax
	lea	rsi, [rsi]
	jne	.label_144
	nop	
	jmp	.label_156
.label_320:
	cmp	dword ptr [rcx + 0x10], 2
	nop	
	jb	.label_191
	mov	rsp, rsp
	xor	edx, edx
	cmp	dword ptr [rcx + 0x2c], 0
	jle	.label_194
	nop	
	cmp	dword ptr [rcx + 0x30], 0
	nop	
	jle	.label_194
.label_191:
	lea	rsi, [rsi]
	mov	edx, 1
.label_194:
	mov	rsp, rsp
	add	rcx, 0x40
	mov	rbp, rbp
	mov	esi, 1
.label_171:
	cmp	eax, 1
	je	.label_156
	sub	eax, esi
	lea	rsi, [rsi]
	add	rcx, 0x70
	nop	word ptr [rax + rax]
.label_107:
	cmp	dword ptr [rcx - 0x60], 2
	jb	.label_258
	cmp	dword ptr [rcx - 0x44], 0
	jle	.label_85
	cmp	dword ptr [rcx - 0x40], 0
	jle	.label_85
.label_258:
	mov	rsp, rsp
	inc	edx
.label_85:
	lea	rdi, [rdi]
	cmp	dword ptr [rcx - 0x20], 2
	lea	rdi, [rdi]
	jb	.label_316
	cmp	dword ptr [rcx - 4], 0
	mov	rsp, rsp
	jle	.label_74
	cmp	dword ptr [rcx], 0
	jle	.label_74
.label_316:
	lea	rsi, [rsi]
	inc	edx
.label_74:
	add	rcx, 0x80
	mov	rsp, rsp
	add	eax, -2
	mov	rbp, rbp
	jne	.label_107
.label_156:
	test	edx, edx
	lea	rdi, [rdi]
	jne	.label_226
.label_303:
	mov	al,  byte ptr [byte ptr [rip + extremities]]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_152
.label_226:
	mov	rsp, rsp
	test	r12b, 1
	lea	rsi, [rsi]
	je	.label_234
	mov	al,  byte ptr [byte ptr [rip + double_space]]
	xor	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_234
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_236
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0xa
.label_93:
	dec	r15d
.label_234:
	test	r15d, r15d
	jle	.label_152
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_256
	jmp	.label_154
.label_236:
	mov	rsp, rsp
	mov	esi, 0xa
	call	__overflow
	lea	rdi, [rdi]
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_90]]
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_91]]
	lea	rsi, [rsi]
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_92]]
	lea	rsi, [rsi]
	jmp	.label_93
.label_205:
	nop	
	mov	esi, 0xa
	call	__overflow
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_90]]
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_91]]
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_92]]
	nop	
	jmp	.label_151
	nop	word ptr [rax + rax]
.label_152:
	lea	rdi, [rdi]
	mov	dword ptr [rsp], r15d
.label_185:
	nop	
	mov	r15d, dword ptr [rsp]
	mov	rsp, rsp
	test	r15d, r15d
	lea	rdi, [rdi]
	jne	.label_154
	nop	
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rsp, rsp
	test	eax, eax
	jle	.label_154
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	lea	edx, [rax - 1]
	mov	esi, 1
	test	al, 3
	je	.label_284
	mov	edi, eax
	and	edi, 3
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_294:
	mov	esi, ebp
	cmp	dword ptr [rcx + 0x10], 0
	jne	.label_292
	mov	byte ptr [rcx + 0x39], 1
.label_292:
	mov	rbp, rbp
	add	rcx, 0x40
	nop	
	lea	ebp, [rsi + 1]
	mov	rsp, rsp
	cmp	edi, ebp
	mov	rbp, rbp
	jne	.label_294
	nop	
	add	esi, 2
.label_284:
	mov	rsp, rsp
	cmp	edx, 3
	jb	.label_154
	mov	rbp, rbp
	add	rcx, 0xf9
	mov	rbp, rbp
	inc	eax
	sub	eax, esi
	nop	
.label_282:
	cmp	dword ptr [rcx - 0xe9], 0
	jne	.label_146
	mov	byte ptr [rcx - 0xc0], 1
.label_146:
	cmp	dword ptr [rcx - 0xa9], 0
	lea	rsi, [rsi]
	jne	.label_309
	mov	rsp, rsp
	mov	byte ptr [rcx - 0x80], 1
.label_309:
	lea	rdi, [rdi]
	cmp	dword ptr [rcx - 0x69], 0
	jne	.label_313
	mov	byte ptr [rcx - 0x40], 1
.label_313:
	lea	rdi, [rdi]
	cmp	dword ptr [rcx - 0x29], 0
	mov	rsp, rsp
	jne	.label_157
	mov	byte ptr [rcx], 1
.label_157:
	mov	rbp, rbp
	add	rcx, 0x100
	nop	
	add	eax, -4
	jne	.label_282
	nop	
.label_154:
	lea	rsi, [rsi]
	and	r12b, 1
	mov	byte ptr [byte ptr [rip + pad_vertically]],  r12b
	je	.label_324
	mov	al,  byte ptr [byte ptr [rip + extremities]]
	and	al, 1
	nop	
	je	.label_168
.label_324:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_78
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + print_a_FF]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_78
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_173
	nop	
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0xc
.label_145:
	nop	
	mov	byte ptr [byte ptr [rip + print_a_FF]],  0
	jmp	.label_78
	nop	
.label_168:
	mov	al,  byte ptr [byte ptr [rip + use_form_feed]]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	je	.label_98
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_277
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xc
	mov	rbp, rbp
	jmp	.label_78
	nop	word ptr cs:[rax + rax]
.label_98:
	mov	eax, r15d
	lea	rsi, [rsi]
	add	eax, 5
	lea	rdi, [rdi]
	je	.label_78
	mov	ebx, 0xfffffffb
	nop	
	sub	ebx, r15d
	jmp	.label_130
.label_242:
	mov	rbp, rbp
	mov	esi, 0xa
	call	__overflow
	lea	rdi, [rdi]
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_90]]
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_91]]
	lea	rsi, [rsi]
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_92]]
	mov	rsp, rsp
	jmp	.label_175
	nop	word ptr [rax + rax]
.label_130:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_242
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0xa
.label_175:
	lea	rsi, [rsi]
	inc	ebx
	jne	.label_130
	nop	word ptr [rax + rax]
.label_78:
	mov	rax,  qword ptr [word ptr [rip + last_page_number]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + page_number]]
	mov	rbp, rbp
	inc	rcx
	mov	qword ptr [word ptr [rip + page_number]],  rcx
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jb	.label_84
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	lea	rsi, [rsi]
	mov	r13,  qword ptr [word ptr [rip + column_vector]]
	test	eax, eax
	mov	rbp, rbp
	je	.label_178
	lea	rdi, [rdi]
	test	al, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	edx, eax
	mov	rsp, rsp
	je	.label_186
	lea	rdi, [rdi]
	cmp	dword ptr [r13 + 0x10], 2
	jne	.label_190
	mov	rbp, rbp
	mov	dword ptr [r13 + 0x10], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_190:
	lea	rdi, [rdi]
	lea	edx, [rax - 1]
	lea	rdi, [rdi]
	lea	rcx, [r13 + 0x40]
.label_186:
	cmp	eax, 1
	mov	rbp, rbp
	je	.label_178
	add	rcx, 0x50
	nop	dword ptr [rax]
.label_217:
	cmp	dword ptr [rcx - 0x40], 2
	nop	
	jne	.label_150
	mov	dword ptr [rcx - 0x40], 0
	nop	
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_150:
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 2
	jne	.label_301
	nop	
	mov	dword ptr [rcx], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_301:
	lea	rsi, [rsi]
	add	rcx, 0x80
	mov	rsp, rsp
	add	edx, -2
	jne	.label_217
.label_178:
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	and	cl, 1
	jne	.label_222
	jmp	.label_117
.label_173:
	mov	esi, 0xc
	nop	
	call	__overflow
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_90]]
	mov	rsp, rsp
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_91]]
	mov	rsp, rsp
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_92]]
	jmp	.label_145
.label_277:
	mov	esi, 0xc
	call	__overflow
	nop	
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_90]]
	lea	rdi, [rdi]
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_91]]
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_92]]
	jmp	.label_78
.label_84:
	nop	
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_199:
	call	xalloc_die
.label_239:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	nop	
	call	error
.label_143:
	call	integer_overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056e0

	.globl integer_overflow
	.type integer_overflow, @function
integer_overflow:
	push	rax
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405720

	.globl open_file
	.type open_file, @function
open_file:
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_330
	cmp	byte ptr [r14 + 1], 0
	je	.label_335
.label_330:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], r14
	nop	
	mov	esi, OFFSET FLAT:.str.72
	mov	rdi, r14
	mov	rbp, rbp
	call	fopen_safer
	nop	
	mov	qword ptr [rbx], rax
	jmp	.label_334
.label_335:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + stdin]]
	mov	qword ptr [rbx], rax
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
.label_334:
	nop	
	test	rax, rax
	je	.label_333
	nop	
	mov	esi, 2
	mov	rdi, rax
	mov	rbp, rbp
	call	fadvise
	mov	dword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x39], 0
	lea	rdi, [rdi]
	inc	dword ptr [dword ptr [rip + total_files]]
	mov	rsp, rsp
	mov	bl, 1
	lea	rdi, [rdi]
	jmp	.label_332
.label_333:
	mov	byte ptr [byte ptr [rip + failed_opens]],  1
	mov	al,  byte ptr [byte ptr [rip + ignore_failed_opens]]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	je	.label_331
	nop	
	xor	ebx, ebx
	nop	
	jmp	.label_332
.label_331:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rax]
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	nop	
	call	error
.label_332:
	mov	al, bl
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405840

	.globl init_header
	.type init_header, @function
init_header:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0xf8
	mov	rsp, rsp
	mov	r13, rdi
	movzx	ecx, byte ptr [r13]
	mov	rbp, rbp
	mov	eax, 0x2d
	sub	eax, ecx
	mov	rsp, rsp
	jne	.label_336
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13 + 1]
	neg	eax
.label_336:
	cmp	eax, 1
	nop	
	sbb	r15d, r15d
	lea	rdi, [rdi]
	or	r15d, esi
	mov	rbp, rbp
	js	.label_341
	lea	rdx, [rsp + 0x30]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, r15d
	lea	rsi, [rsi]
	call	__fxstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_342
.label_341:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + init_header.timespec]],  0
	jne	.label_340
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:init_header.timespec
	call	gettime
.label_340:
	movdqu	xmm0,  xmmword ptr [word ptr [rip + init_header.timespec]]
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	r14, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x20]
	nop	
	jmp	.label_337
.label_342:
	mov	rsp, rsp
	movdqu	xmm0, xmmword ptr [rsp + 0x88]
	lea	rsi, [rsp + 0x20]
	lea	rsi, [rsi]
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	pshufd	xmm0, xmm0, 0x4e
	lea	rsi, [rsi]
	movq	r14, xmm0
.label_337:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + localtz]]
	lea	rdx, [rsp + 0xc0]
	call	localtime_rz
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_339
	mov	rdx,  qword ptr [word ptr [rip + date_format]]
	mov	r8,  qword ptr [word ptr [rip + localtz]]
	nop	
	lea	r12, [rsp + 0xc0]
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, -1
	mov	rcx, r12
	mov	rsp, rsp
	mov	r9d, r14d
	mov	rbp, rbp
	call	nstrftime
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	rbp, rbp
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + date_format]]
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [rip + localtz]]
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rcx, r12
	mov	r9d, r14d
	mov	rbp, rbp
	call	nstrftime
	jmp	.label_338
.label_339:
	nop	
	mov	edi, 0x21
	call	xmalloc
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rsi, [rsp]
	call	imaxtostr
	nop	
	mov	rbx, rax
	mov	esi, 1
	mov	rdx, -1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.74
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	r8, rbx
	mov	r9d, r14d
	mov	rsp, rsp
	call	__sprintf_chk
.label_338:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + date_text]]
	mov	rsp, rsp
	call	free
	mov	qword ptr [word ptr [rip + date_text]],  rbp
	mov	rax,  qword ptr [word ptr [rip + custom_header]]
	test	r15d, r15d
	mov	ecx, OFFSET FLAT:.str
	cmovs	r13, rcx
	test	rax, rax
	mov	rbp, rbp
	cmovne	r13, rax
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_text]],  r13
	mov	rsp, rsp
	mov	ebx,  dword ptr [dword ptr [rip + chars_per_line]]
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rdi, rbp
	call	gnu_mbswidth
	lea	rsi, [rsi]
	sub	ebx, eax
	mov	rdi,  qword ptr [word ptr [rip + file_text]]
	xor	esi, esi
	call	gnu_mbswidth
	sub	ebx, eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + header_width_available]],  ebx
	lea	rdi, [rdi]
	add	rsp, 0xf8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a90

	.globl skip_read
	.type skip_read, @function
skip_read:
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14d, esi
	mov	r15, rdi
	mov	rbx, qword ptr [r15]
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbx + 0x10]
	nop	
	jae	.label_348
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rcx
	mov	rbp, rbp
	movzx	ebp, byte ptr [rax]
.label_365:
	cmp	ebp, 0xc
	nop	
	jne	.label_343
	lea	rsi, [rsi]
	mov	ebp, 0xc
	mov	rbp, rbp
	cmp	byte ptr [r15 + 0x39], 0
	nop	
	je	.label_343
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_363
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_345:
	cmp	ebp, 0xa
	mov	rsp, rsp
	jne	.label_343
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_347
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rax]
.label_343:
	nop	
	mov	al,  byte ptr [byte ptr [rip + last_line]]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [r15 + 0x39], al
	lea	rsi, [rsi]
	mov	eax, ebp
	lea	rdi, [rdi]
	jmp	.label_351
	nop	word ptr cs:[rax + rax]
.label_366:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	nop	
	movzx	eax, byte ptr [rax]
.label_351:
	cmp	eax, -1
	je	.label_361
	cmp	eax, 0xa
	je	.label_350
	cmp	eax, 0xc
	je	.label_364
	mov	rax, qword ptr [rbx + 8]
	nop	
	cmp	rax, qword ptr [rbx + 0x10]
	jb	.label_366
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	__uflow
	mov	rsp, rsp
	jmp	.label_351
.label_361:
	mov	rdi, r15
	mov	rbp, rbp
	call	close_file
	jmp	.label_350
.label_364:
	movzx	eax,  byte ptr [byte ptr [rip + last_line]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_352
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_356
	mov	byte ptr [r15 + 0x39], 0
	lea	rsi, [rsi]
	jmp	.label_352
.label_356:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_352
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	lea	rdi, [rdi]
	lea	edx, [rax - 1]
	test	al, 7
	mov	rbp, rbp
	je	.label_362
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	and	esi, 7
	mov	rbp, rbp
	neg	esi
	nop	word ptr cs:[rax + rax]
.label_360:
	nop	
	mov	byte ptr [rcx + 0x39], 0
	add	rcx, 0x40
	dec	eax
	inc	esi
	jne	.label_360
.label_362:
	lea	rdi, [rdi]
	cmp	edx, 7
	lea	rdi, [rdi]
	jb	.label_352
	add	rcx, 0x1f9
	nop	word ptr cs:[rax + rax]
.label_359:
	mov	byte ptr [rcx - 0x1c0], 0
	mov	byte ptr [rcx - 0x180], 0
	mov	rsp, rsp
	mov	byte ptr [rcx - 0x140], 0
	lea	rsi, [rsi]
	mov	byte ptr [rcx - 0x100], 0
	mov	byte ptr [rcx - 0xc0], 0
	mov	rbp, rbp
	mov	byte ptr [rcx - 0x80], 0
	mov	byte ptr [rcx - 0x40], 0
	mov	byte ptr [rcx], 0
	mov	rbp, rbp
	add	rcx, 0x200
	add	eax, -8
	jne	.label_359
.label_352:
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_346
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	edi, byte ptr [rax]
.label_367:
	mov	rsp, rsp
	cmp	edi, 0xa
	lea	rdi, [rdi]
	je	.label_354
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	ungetc
.label_354:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	je	.label_358
	mov	dword ptr [r15 + 0x10], 2
	jmp	.label_357
.label_358:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_357
	nop	
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	and	edx, 1
	mov	rbp, rbp
	inc	edx
	lea	rdi, [rdi]
	lea	esi, [rax - 1]
	test	al, 7
	je	.label_349
	mov	edi, eax
	mov	rbp, rbp
	and	edi, 7
	mov	rsp, rsp
	neg	edi
	nop	word ptr [rax + rax]
.label_344:
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x10], edx
	lea	rsi, [rsi]
	add	rcx, 0x40
	dec	eax
	inc	edi
	lea	rsi, [rsi]
	jne	.label_344
.label_349:
	cmp	esi, 7
	jb	.label_357
	add	rcx, 0x1d0
	nop	word ptr cs:[rax + rax]
.label_355:
	mov	dword ptr [rcx - 0x1c0], edx
	mov	dword ptr [rcx - 0x180], edx
	mov	dword ptr [rcx - 0x140], edx
	lea	rdi, [rdi]
	mov	dword ptr [rcx - 0x100], edx
	mov	dword ptr [rcx - 0xc0], edx
	lea	rsi, [rsi]
	mov	dword ptr [rcx - 0x80], edx
	mov	rsp, rsp
	mov	dword ptr [rcx - 0x40], edx
	mov	rsp, rsp
	mov	dword ptr [rcx], edx
	lea	rsi, [rsi]
	add	rcx, 0x200
	mov	rbp, rbp
	add	eax, -8
	jne	.label_355
.label_357:
	mov	dword ptr [r15 + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_350:
	mov	al,  byte ptr [byte ptr [rip + skip_count]]
	lea	rdi, [rdi]
	and	al, 1
	jne	.label_353
	cmp	r14d, 1
	setne	al
	lea	rdi, [rdi]
	cmp	ebp, 0xc
	nop	
	je	.label_353
	mov	rbp, rbp
	and	al,  byte ptr [byte ptr [rip + parallel_files]]
	mov	rbp, rbp
	jne	.label_353
	nop	
	inc	dword ptr [dword ptr [rip + line_count]]
.label_353:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_348:
	nop	
	mov	rdi, rbx
	nop	
	call	__uflow
	mov	ebp, eax
	jmp	.label_365
.label_346:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__uflow
	mov	rsp, rsp
	mov	edi, eax
	jmp	.label_367
.label_363:
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__uflow
	mov	ebp, eax
	lea	rdi, [rdi]
	jmp	.label_345
.label_347:
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	call	__uflow
	mov	ebp, eax
	lea	rdi, [rdi]
	jmp	.label_343
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e40

	.globl close_file
	.type close_file, @function
close_file:
	mov	rsp, rsp
	push	rbp
	push	rbx
	mov	rbp, rbp
	push	rax
	nop	
	mov	rbx, rdi
	lea	rsi, [rsi]
	cmp	dword ptr [rbx + 0x10], 3
	lea	rdi, [rdi]
	je	.label_368
	mov	rdi, qword ptr [rbx]
	test	byte ptr [rdi], 0x20
	jne	.label_376
	call	fileno
	mov	rsp, rsp
	test	eax, eax
	je	.label_373
	mov	rdi, qword ptr [rbx]
	call	rpl_fclose
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_376
.label_373:
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	mov	rsp, rsp
	and	al, 1
	je	.label_371
	mov	dword ptr [rbx + 0x10], 3
	mov	dword ptr [rbx + 0x30], 0
	jmp	.label_375
.label_371:
	mov	edx,  dword ptr [dword ptr [rip + columns]]
	test	edx, edx
	je	.label_375
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	test	dl, 1
	jne	.label_378
	lea	rdi, [rdi]
	mov	ecx, edx
	lea	rdi, [rdi]
	jmp	.label_370
.label_378:
	mov	dword ptr [rax + 0x10], 3
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_372
	mov	rsp, rsp
	mov	dword ptr [rax + 0x30], 0
.label_372:
	add	rax, 0x40
	lea	rsi, [rsi]
	lea	ecx, [rdx - 1]
.label_370:
	cmp	edx, 1
	je	.label_375
	lea	rsi, [rsi]
	add	rax, 0x70
	nop	
.label_377:
	mov	rsp, rsp
	mov	dword ptr [rax - 0x60], 3
	cmp	dword ptr [rax - 0x44], 0
	jne	.label_369
	mov	dword ptr [rax - 0x40], 0
.label_369:
	mov	rsp, rsp
	mov	dword ptr [rax - 0x20], 3
	cmp	dword ptr [rax - 4], 0
	jne	.label_374
	mov	dword ptr [rax], 0
.label_374:
	add	rax, 0x80
	add	ecx, -2
	mov	rbp, rbp
	jne	.label_377
.label_375:
	lea	rdi, [rdi]
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_368:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	rbp
	ret	
.label_376:
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 8]
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, 3
	nop	
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x405f90

	.globl store_char
	.type store_char, @function
store_char:
	push	rbx
	mov	rsp, rsp
	mov	ebx, edi
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + buff_current]]
	lea	rsi, [rsi]
	cmp	rcx,  qword ptr [word ptr [rip + buff_allocated]]
	mov	rax,  qword ptr [word ptr [rip + buff]]
	lea	rsi, [rsi]
	jb	.label_379
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:buff_allocated
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	x2realloc
	mov	qword ptr [word ptr [rip + buff]],  rax
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + buff_current]]
.label_379:
	lea	edx, [rcx + 1]
	nop	
	mov	dword ptr [dword ptr [rip + buff_current]],  edx
	lea	rsi, [rsi]
	mov	ecx, ecx
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	pop	rbx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406000

	.globl print_stored
	.type print_stored, @function
print_stored:
	nop
	push	rbp
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	movsxd	r14, dword ptr [r15 + 0x28]
	lea	rdi, [rdi]
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 0x28], eax
	mov	rax,  qword ptr [word ptr [rip + line_vector]]
	movsxd	r13, dword ptr [rax + r14*4]
	mov	rbx,  qword ptr [word ptr [rip + buff]]
	add	rbx, r13
	lea	rsi, [rsi]
	movsxd	r12, dword ptr [rax + r14*4 + 4]
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	nop	
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	nop	
	jne	.label_381
	nop	
	call	print_header
.label_381:
	mov	rbp, rbp
	cmp	dword ptr [r15 + 0x10], 1
	jne	.label_392
	nop	
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	mov	rsp, rsp
	jle	.label_389
	nop	
	lea	r8d, [rax - 1]
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rsi, [rsi]
	test	al, 7
	mov	rdx, rcx
	lea	rsi, [rsi]
	je	.label_386
	mov	ebp, eax
	and	ebp, 7
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	rdx, rcx
	nop	word ptr cs:[rax + rax]
.label_380:
	mov	esi, edi
	mov	rbp, rbp
	mov	dword ptr [rdx + 0x10], 2
	add	rdx, 0x40
	lea	edi, [rsi + 1]
	cmp	ebp, edi
	nop	
	jne	.label_380
	nop	
	add	esi, 2
.label_386:
	lea	rdi, [rdi]
	cmp	r8d, 7
	jb	.label_389
	dec	esi
	add	rdx, 0x1d0
	nop	
.label_395:
	nop	
	mov	dword ptr [rdx - 0x1c0], 2
	nop	
	mov	dword ptr [rdx - 0x180], 2
	mov	dword ptr [rdx - 0x140], 2
	mov	dword ptr [rdx - 0x100], 2
	mov	dword ptr [rdx - 0xc0], 2
	lea	rsi, [rsi]
	mov	dword ptr [rdx - 0x80], 2
	nop	
	mov	dword ptr [rdx - 0x40], 2
	mov	dword ptr [rdx], 2
	mov	rsp, rsp
	add	esi, 8
	lea	rsi, [rsi]
	add	rdx, 0x200
	nop	
	cmp	esi, eax
	lea	rsi, [rsi]
	jl	.label_395
.label_389:
	mov	rsp, rsp
	cmp	dword ptr [rcx + 0x30], 0
	lea	rdi, [rdi]
	jle	.label_385
.label_392:
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	ebp,  dword ptr [dword ptr [rip + padding_not_printed]]
	nop	
	mov	r13d, ebp
	sub	r13d, eax
	mov	rbp, rbp
	jle	.label_391
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	rbp, rbp
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	mov	rbp, rbp
	and	dl, 1
	nop	
	je	.label_382
	sub	r13d, ecx
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r13d
	jmp	.label_390
.label_382:
	cmp	r13d, ecx
	jle	.label_396
	nop	
	sub	ebp, ecx
	sub	ebp, eax
	jmp	.label_393
.label_384:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_397
	nop	dword ptr [rax]
.label_393:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_384
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_397:
	nop	
	dec	ebp
	mov	rsp, rsp
	jne	.label_393
.label_396:
	mov	dword ptr [dword ptr [rip + output_position]],  r13d
.label_390:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_391:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	mov	rbp, rbp
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_383
	mov	rsp, rsp
	call	print_sep_string
.label_383:
	nop	
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	cmp	eax, r12d
	je	.label_394
	nop	
	sub	r12, rax
	nop	
.label_387:
	movsx	edi, byte ptr [rbx]
	lea	rdi, [rdi]
	inc	rbx
	mov	rsp, rsp
	call	print_char
	dec	r12
	nop	
	jne	.label_387
.label_394:
	cmp	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	mov	rbp, rbp
	jne	.label_388
	mov	rbp, rbp
	mov	edx, dword ptr [r15 + 0x34]
	mov	rax,  qword ptr [word ptr [rip + end_vector]]
	mov	eax, dword ptr [rax + r14*4]
	lea	rsi, [rsi]
	add	eax, edx
	nop	
	mov	dword ptr [dword ptr [rip + output_position]],  eax
	mov	ecx,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	rbp, rbp
	sub	edx, ecx
	mov	rbp, rbp
	cmp	edx,  dword ptr [dword ptr [rip + chars_per_margin]]
	lea	rdi, [rdi]
	jne	.label_388
	mov	rbp, rbp
	sub	eax, ecx
	mov	dword ptr [dword ptr [rip + output_position]],  eax
	jmp	.label_388
.label_385:
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + extremities]]
	mov	rbp, rbp
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_388
	nop	
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
.label_388:
	mov	al, 1
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4062e0

	.globl print_char
	.type print_char, @function
print_char:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	mov	r15d, edi
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + tabify_output]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_399
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	lea	rdi, [rdi]
	movzx	r14d, r15b
	lea	rdi, [rdi]
	cmp	r14d, 0x20
	mov	rsp, rsp
	jne	.label_401
	mov	rsp, rsp
	inc	eax
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  eax
	mov	rsp, rsp
	jmp	.label_400
.label_401:
	test	eax, eax
	jle	.label_411
	mov	ebx,  dword ptr [dword ptr [rip + output_position]]
	lea	r12d, [rbx + rax]
	lea	rsi, [rsi]
	cmp	eax, 2
	jge	.label_402
	mov	ecx, ebx
	jmp	.label_404
	nop	word ptr cs:[rax + rax]
.label_409:
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_406
	nop	
	lea	rdx, [rcx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_408:
	lea	rdi, [rdi]
	cmp	ebp, 1
	lea	rdi, [rdi]
	mov	ecx, ebx
	lea	rdi, [rdi]
	jg	.label_402
	mov	rsp, rsp
	jmp	.label_404
.label_406:
	movzx	esi, al
	lea	rdi, [rdi]
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_408
	nop	
.label_402:
	mov	ecx, ebx
	nop	
	mov	ebx,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	idiv	ebx
	lea	rsi, [rsi]
	sub	ebx, edx
	add	ebx, ecx
	mov	ebp, r12d
	sub	ebp, ebx
	jge	.label_409
.label_404:
	cmp	ecx, r12d
	jge	.label_403
	mov	ebx, r12d
	sub	ebx, ecx
	jmp	.label_405
.label_410:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_407
	nop	word ptr cs:[rax + rax]
.label_405:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_410
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_407:
	lea	rsi, [rsi]
	dec	ebx
	lea	rsi, [rsi]
	jne	.label_405
.label_403:
	mov	dword ptr [dword ptr [rip + output_position]],  r12d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
.label_411:
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r14*2 + 1], 0x40
	mov	rsp, rsp
	jne	.label_412
	lea	rsi, [rsi]
	cmp	r14d, 8
	mov	rsp, rsp
	jne	.label_399
	dec	dword ptr [dword ptr [rip + output_position]]
	lea	rdi, [rdi]
	jmp	.label_399
.label_412:
	inc	dword ptr [dword ptr [rip + output_position]]
.label_399:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_398
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], r15b
.label_400:
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_398:
	mov	rsp, rsp
	movzx	esi, r15b
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	jmp	__overflow
	nop	
	.section	.text
	.align	32
	#Procedure 0x4064b0

	.globl read_line
	.type read_line, @function
read_line:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r13, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [r13]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_465
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	mov	rbp, rbp
	movzx	ebx, byte ptr [rax]
.label_464:
	lea	rdi, [rdi]
	mov	ebp,  dword ptr [dword ptr [rip + input_position]]
	mov	rbp, rbp
	cmp	ebx, 0xc
	jne	.label_422
	mov	rbp, rbp
	cmp	byte ptr [r13 + 0x39], 0
	je	.label_418
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r13]
	nop	
	mov	rax, qword ptr [rdi + 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	jae	.label_423
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	lea	rdi, [rdi]
	movzx	ebx, byte ptr [rax]
.label_458:
	cmp	ebx, 0xa
	jne	.label_422
	mov	rdi, qword ptr [r13]
	nop	
	mov	rax, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_437
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_422:
	nop	
	mov	byte ptr [r13 + 0x39], 0
	cmp	ebx, -1
	je	.label_450
	cmp	ebx, 0xa
	mov	rbp, rbp
	je	.label_451
	mov	rbp, rbp
	cmp	ebx, 0xc
	je	.label_454
	nop	
	movsx	edi, bl
	call	char_to_clump
	mov	rbp, rbp
	mov	r12d, eax
.label_451:
	movzx	eax,  byte ptr [byte ptr [rip + truncate_lines]]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_459
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + input_position]]
	cmp	eax,  dword ptr [dword ptr [rip + chars_per_column]]
	lea	rdi, [rdi]
	jle	.label_459
	mov	dword ptr [dword ptr [rip + input_position]],  ebp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_432
.label_459:
	mov	eax, OFFSET FLAT:store_char
	cmp	qword ptr [r13 + 0x20], rax
	je	.label_433
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_470
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + storing_columns]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	jne	.label_470
	lea	rdi, [rdi]
	call	print_header
.label_470:
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	nop	
	jne	.label_424
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + align_empty_cols]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_424
	mov	dword ptr [rsp], ebx
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + separators_not_printed]]
	mov	rsp, rsp
	mov	dword ptr [rsp + 4], eax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  0
	test	eax, eax
	mov	rbp, rbp
	jle	.label_439
	mov	rsp, rsp
	mov	ebx, 1
	mov	rbp,  qword ptr [word ptr [rip + column_vector]]
	nop	word ptr cs:[rax + rax]
.label_452:
	mov	r15d, dword ptr [rbp + 0x34]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  r15d
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	lea	rdi, [rdi]
	mov	r14d, r15d
	mov	rbp, rbp
	sub	r14d, eax
	mov	rbp, rbp
	jle	.label_457
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	nop	
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	je	.label_463
	lea	rsi, [rsi]
	sub	r14d, ecx
	nop	
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r14d
	mov	rbp, rbp
	jmp	.label_416
	nop	
.label_463:
	mov	rsp, rsp
	cmp	r14d, ecx
	jle	.label_469
	mov	rsp, rsp
	sub	r15d, ecx
	mov	rsp, rsp
	sub	r15d, eax
	jmp	.label_428
.label_448:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_434
	nop	word ptr cs:[rax + rax]
.label_428:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_448
	nop	
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
.label_434:
	dec	r15d
	lea	rdi, [rdi]
	jne	.label_428
.label_469:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
.label_416:
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_457:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	jne	.label_440
	lea	rdi, [rdi]
	call	print_sep_string
.label_440:
	lea	rdi, [rdi]
	cmp	byte ptr [rbp + 0x38], 0
	je	.label_455
	mov	rbp, rbp
	mov	rdi, rbp
	call	add_line_number
.label_455:
	inc	dword ptr [dword ptr [rip + separators_not_printed]]
	add	rbp, 0x40
	lea	rdi, [rdi]
	cmp	ebx, dword ptr [rsp + 4]
	lea	eax, [rbx + 1]
	mov	rbp, rbp
	mov	ebx, eax
	jne	.label_452
.label_439:
	mov	eax, dword ptr [r13 + 0x34]
	nop	
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  eax
	mov	al,  byte ptr [byte ptr [rip + truncate_lines]]
	mov	rsp, rsp
	xor	ecx, ecx
	and	al, 1
	cmovne	ecx,  dword ptr [dword ptr [rip + chars_per_column]]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  ecx
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  0
	mov	ebx, dword ptr [rsp]
.label_424:
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	ebp,  dword ptr [dword ptr [rip + padding_not_printed]]
	lea	rsi, [rsi]
	mov	r14d, ebp
	sub	r14d, eax
	nop	
	jle	.label_468
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	je	.label_471
	mov	rbp, rbp
	sub	r14d, ecx
	nop	
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r14d
	jmp	.label_415
.label_450:
	nop	
	mov	rdi, r13
	call	close_file
	mov	rbp, rbp
	jmp	.label_426
.label_418:
	lea	rsi, [rsi]
	mov	byte ptr [r13 + 0x39], 0
.label_454:
	mov	rdi, qword ptr [r13]
	nop	
	mov	rax, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_431
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 8], rcx
	movzx	edi, byte ptr [rax]
.label_430:
	cmp	edi, 0xa
	je	.label_441
	nop	
	mov	rsi, qword ptr [r13]
	mov	rbp, rbp
	call	ungetc
.label_441:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + FF_only]],  1
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_449
	movzx	eax,  byte ptr [byte ptr [rip + storing_columns]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	jne	.label_449
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	call	print_header
	lea	rdi, [rdi]
	jmp	.label_461
.label_449:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_461
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_461:
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_466
	mov	dword ptr [r13 + 0x10], 2
	jmp	.label_435
.label_466:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_435
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	mov	rsp, rsp
	and	edx, 1
	inc	edx
	mov	rsp, rsp
	lea	esi, [rax - 1]
	test	al, 7
	lea	rdi, [rdi]
	je	.label_474
	nop	
	mov	edi, eax
	and	edi, 7
	mov	rsp, rsp
	neg	edi
	nop	dword ptr [rax]
.label_472:
	mov	dword ptr [rcx + 0x10], edx
	add	rcx, 0x40
	dec	eax
	inc	edi
	mov	rbp, rbp
	jne	.label_472
.label_474:
	cmp	esi, 7
	mov	rsp, rsp
	jb	.label_435
	lea	rsi, [rsi]
	add	rcx, 0x1d0
	nop	word ptr cs:[rax + rax]
.label_447:
	mov	dword ptr [rcx - 0x1c0], edx
	mov	rbp, rbp
	mov	dword ptr [rcx - 0x180], edx
	mov	dword ptr [rcx - 0x140], edx
	mov	dword ptr [rcx - 0x100], edx
	lea	rdi, [rdi]
	mov	dword ptr [rcx - 0xc0], edx
	nop	
	mov	dword ptr [rcx - 0x80], edx
	mov	dword ptr [rcx - 0x40], edx
	mov	rsp, rsp
	mov	dword ptr [rcx], edx
	add	rcx, 0x200
	lea	rsi, [rsi]
	add	eax, -8
	jne	.label_447
.label_435:
	mov	rbp, rbp
	mov	dword ptr [r13 + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_426:
	mov	r15b, 1
	jmp	.label_432
.label_465:
	lea	rsi, [rsi]
	call	__uflow
	lea	rdi, [rdi]
	mov	ebx, eax
	lea	rsi, [rsi]
	jmp	.label_464
.label_471:
	cmp	r14d, ecx
	jle	.label_467
	nop	
	sub	ebp, ecx
	nop	
	sub	ebp, eax
	mov	rbp, rbp
	jmp	.label_417
.label_414:
	mov	rsp, rsp
	mov	esi, 0x20
	mov	rsp, rsp
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_425
	nop	word ptr cs:[rax + rax]
.label_417:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_414
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x20
.label_425:
	dec	ebp
	jne	.label_417
.label_467:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
.label_415:
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_468:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	jne	.label_433
	mov	rsp, rsp
	call	print_sep_string
.label_433:
	cmp	byte ptr [r13 + 0x38], 0
	je	.label_442
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsp, rsp
	call	add_line_number
.label_442:
	mov	byte ptr [byte ptr [rip + empty_line]],  0
	lea	rdi, [rdi]
	mov	r15b, 1
	nop	
	cmp	ebx, 0xa
	lea	rdi, [rdi]
	je	.label_432
	test	r12d, r12d
	je	.label_456
	mov	rbp,  qword ptr [word ptr [rip + clump_buff]]
	nop	word ptr cs:[rax + rax]
.label_462:
	movsx	edi, byte ptr [rbp]
	inc	rbp
	nop	
	call	qword ptr [r13 + 0x20]
	dec	r12d
	lea	rdi, [rdi]
	jne	.label_462
	jmp	.label_456
	nop	word ptr cs:[rax + rax]
.label_445:
	test	ebp, ebp
	lea	rsi, [rsi]
	je	.label_456
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + clump_buff]]
	nop	word ptr cs:[rax + rax]
.label_473:
	mov	rsp, rsp
	movsx	edi, byte ptr [rbx]
	inc	rbx
	lea	rsi, [rsi]
	call	qword ptr [r13 + 0x20]
	nop	
	dec	ebp
	lea	rsi, [rsi]
	jne	.label_473
	nop	
	jmp	.label_456
.label_420:
	call	__uflow
	jmp	.label_413
	nop	word ptr cs:[rax + rax]
.label_456:
	nop	
	mov	rdi, qword ptr [r13]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_420
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax]
.label_413:
	cmp	eax, -1
	je	.label_444
	lea	rsi, [rsi]
	cmp	eax, 0xa
	je	.label_432
	cmp	eax, 0xc
	nop	
	je	.label_443
	mov	r14d,  dword ptr [dword ptr [rip + input_position]]
	mov	rsp, rsp
	movsx	edi, al
	call	char_to_clump
	mov	rsp, rsp
	mov	ebp, eax
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + truncate_lines]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_445
	mov	eax,  dword ptr [dword ptr [rip + input_position]]
	cmp	eax,  dword ptr [dword ptr [rip + chars_per_column]]
	jle	.label_445
	mov	dword ptr [dword ptr [rip + input_position]],  r14d
	mov	rbp, rbp
	xor	r15d, r15d
	jmp	.label_432
.label_444:
	mov	rdi, r13
	call	close_file
	jmp	.label_432
.label_443:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	jae	.label_421
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rax]
.label_427:
	lea	rsi, [rsi]
	cmp	edi, 0xa
	lea	rdi, [rdi]
	je	.label_419
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r13]
	lea	rsi, [rsi]
	call	ungetc
.label_419:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_460
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_460:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_436
	mov	rbp, rbp
	mov	dword ptr [r13 + 0x10], 2
	jmp	.label_438
.label_431:
	call	__uflow
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	jmp	.label_430
.label_423:
	lea	rdi, [rdi]
	call	__uflow
	mov	ebx, eax
	jmp	.label_458
.label_436:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_438
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	and	edx, 1
	inc	edx
	lea	esi, [rax - 1]
	test	al, 7
	je	.label_429
	mov	edi, eax
	and	edi, 7
	neg	edi
	nop	dword ptr [rax]
.label_453:
	mov	dword ptr [rcx + 0x10], edx
	add	rcx, 0x40
	dec	eax
	inc	edi
	mov	rbp, rbp
	jne	.label_453
.label_429:
	nop	
	cmp	esi, 7
	jb	.label_438
	add	rcx, 0x1d0
.label_446:
	mov	dword ptr [rcx - 0x1c0], edx
	mov	rbp, rbp
	mov	dword ptr [rcx - 0x180], edx
	mov	dword ptr [rcx - 0x140], edx
	mov	dword ptr [rcx - 0x100], edx
	nop	
	mov	dword ptr [rcx - 0xc0], edx
	mov	dword ptr [rcx - 0x80], edx
	mov	rsp, rsp
	mov	dword ptr [rcx - 0x40], edx
	mov	rbp, rbp
	mov	dword ptr [rcx], edx
	add	rcx, 0x200
	mov	rbp, rbp
	add	eax, -8
	lea	rdi, [rdi]
	jne	.label_446
.label_438:
	mov	dword ptr [r13 + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_432:
	lea	rdi, [rdi]
	mov	al, r15b
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_437:
	call	__uflow
	nop	
	mov	ebx, eax
	jmp	.label_422
.label_421:
	call	__uflow
	mov	rsp, rsp
	mov	edi, eax
	lea	rdi, [rdi]
	jmp	.label_427
	.section	.text
	.align	32
	#Procedure 0x406d30

	.globl print_header
	.type print_header, @function
print_header:
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x148
	mov	dword ptr [dword ptr [rip + output_position]],  0
	mov	rbp, rbp
	mov	r14d,  dword ptr [dword ptr [rip + chars_per_margin]]
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + tabify_output]]
	and	al, 1
	je	.label_488
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r14d
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_483
.label_488:
	test	r14d, r14d
	mov	rbp, rbp
	jle	.label_487
	lea	rsi, [rsi]
	mov	ebx, r14d
	jmp	.label_489
.label_479:
	lea	rdi, [rdi]
	mov	esi, 0x20
	call	__overflow
	nop	
	jmp	.label_478
	nop	
.label_489:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_479
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x20
.label_478:
	dec	ebx
	jne	.label_489
.label_487:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	lea	rdi, [rdi]
	mov	ebx, r14d
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	mov	rbp, rbp
	mov	r14d, eax
.label_483:
	lea	r15d, [rbx + r14]
	cmp	r14d, 2
	jge	.label_482
	mov	ecx, ebx
	jmp	.label_485
	nop	dword ptr [rax]
.label_475:
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_480
	lea	rdx, [rcx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_490:
	cmp	ebp, 1
	mov	ecx, ebx
	lea	rdi, [rdi]
	jg	.label_482
	nop	
	jmp	.label_485
.label_480:
	lea	rsi, [rsi]
	movzx	esi, al
	mov	rsp, rsp
	call	__overflow
	nop	
	jmp	.label_490
	nop	dword ptr [rax + rax]
.label_482:
	mov	ecx, ebx
	mov	rbp, rbp
	mov	ebx,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	rsp, rsp
	mov	eax, ecx
	cdq	
	mov	rbp, rbp
	idiv	ebx
	lea	rsi, [rsi]
	sub	ebx, edx
	add	ebx, ecx
	mov	ebp, r15d
	sub	ebp, ebx
	jge	.label_475
.label_485:
	nop	
	cmp	ecx, r15d
	jge	.label_484
	lea	rsi, [rsi]
	mov	ebx, r15d
	lea	rsi, [rsi]
	sub	ebx, ecx
	jmp	.label_486
.label_481:
	lea	rdi, [rdi]
	mov	esi, 0x20
	call	__overflow
	nop	
	jmp	.label_477
	nop	word ptr [rax + rax]
.label_486:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_481
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x20
.label_477:
	mov	rbp, rbp
	dec	ebx
	lea	rdi, [rdi]
	jne	.label_486
.label_484:
	mov	dword ptr [dword ptr [rip + output_position]],  r15d
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + page_number]],  0
	je	.label_476
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.77
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	r8,  qword ptr [word ptr [rip + page_number]]
	mov	rsp, rsp
	lea	rbx, [rsp + 0x30]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, 0x114
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	call	__sprintf_chk
	mov	rbp, rbp
	mov	ebp,  dword ptr [dword ptr [rip + header_width_available]]
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	gnu_mbswidth
	sub	ebp, eax
	nop	
	cmovs	ebp, r14d
	mov	r9d, ebp
	nop	
	sar	r9d, 1
	sub	ebp, r9d
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [rip + chars_per_margin]]
	mov	r8,  qword ptr [word ptr [rip + date_text]]
	mov	rax,  qword ptr [word ptr [rip + file_text]]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 0x10], ebp
	mov	rsp, rsp
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str.70
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.70
	mov	edi, 1
	nop	
	mov	esi, OFFSET FLAT:.str.78
	mov	ecx, OFFSET FLAT:.str
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + print_a_header]],  0
	mov	dword ptr [dword ptr [rip + output_position]],  0
	mov	rbp, rbp
	add	rsp, 0x148
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_476:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407010

	.globl print_sep_string
	.type print_sep_string, @function
print_sep_string:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	cmp	dword ptr [dword ptr [rip + separators_not_printed]],  0
	jle	.label_519
	mov	rax,  qword ptr [word ptr [rip + col_sep_string]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	r12d,  dword ptr [dword ptr [rip + col_sep_length]]
	nop	word ptr cs:[rax + rax]
.label_508:
	mov	rsp, rsp
	test	r12d, r12d
	lea	r12d, [r12 - 1]
	jle	.label_520
	mov	r15d, r12d
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_494
.label_515:
	mov	rbp, rbp
	movzx	esi, al
	lea	rdi, [rdi]
	call	__overflow
	jmp	.label_524
	nop	word ptr cs:[rax + rax]
.label_494:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx]
	mov	ecx,  dword ptr [dword ptr [rip + spaces_not_printed]]
	cmp	eax, 0x20
	mov	rsp, rsp
	jne	.label_521
	inc	ecx
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  ecx
	jmp	.label_502
	nop	word ptr cs:[rax + rax]
.label_521:
	mov	rbp, rbp
	test	ecx, ecx
	jle	.label_510
	mov	rsp, rsp
	mov	ebp,  dword ptr [dword ptr [rip + output_position]]
	lea	r14d, [rbp + rcx]
	nop	
	cmp	ecx, 2
	nop	
	mov	ecx, ebp
	mov	rbp, rbp
	jl	.label_496
	lea	rsi, [rsi]
	jmp	.label_513
.label_500:
	mov	rbp, rbp
	movzx	esi, al
	lea	rsi, [rsi]
	call	__overflow
	jmp	.label_525
	nop	word ptr [rax + rax]
.label_513:
	mov	ecx, ebp
	mov	rsp, rsp
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	idiv	ebp
	sub	ebp, edx
	add	ebp, ecx
	mov	r13d, r14d
	sub	r13d, ebp
	lea	rdi, [rdi]
	jl	.label_496
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_500
	lea	rdx, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_525:
	cmp	r13d, 1
	lea	rdi, [rdi]
	mov	ecx, ebp
	jg	.label_513
.label_496:
	lea	rdi, [rdi]
	cmp	ecx, r14d
	mov	rsp, rsp
	jge	.label_516
	mov	ebp, r14d
	lea	rsi, [rsi]
	sub	ebp, ecx
	lea	rdi, [rdi]
	jmp	.label_499
.label_523:
	mov	esi, 0x20
	mov	rsp, rsp
	call	__overflow
	mov	rbp, rbp
	jmp	.label_526
	nop	word ptr cs:[rax + rax]
.label_499:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_523
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
.label_526:
	dec	ebp
	jne	.label_499
.label_516:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx]
.label_510:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_515
	lea	rdx, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x28], rdx
	mov	rsp, rsp
	mov	byte ptr [rcx], al
.label_524:
	inc	dword ptr [dword ptr [rip + output_position]]
.label_502:
	inc	rbx
	mov	rsp, rsp
	test	r12d, r12d
	lea	eax, [r12 - 1]
	mov	r12d, eax
	mov	rsp, rsp
	jg	.label_494
	nop	
	mov	rax, qword ptr [rsp]
	nop	
	lea	rax, [rax + r15 + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	r12d, 0xffffffff
.label_520:
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	mov	rbp, rbp
	test	eax, eax
	jle	.label_507
	mov	ebp,  dword ptr [dword ptr [rip + output_position]]
	lea	r14d, [rbp + rax]
	cmp	eax, 2
	lea	rdi, [rdi]
	mov	ecx, ebp
	jl	.label_491
	lea	rsi, [rsi]
	jmp	.label_512
.label_501:
	movzx	esi, al
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_522
	nop	word ptr cs:[rax + rax]
.label_512:
	mov	rsp, rsp
	mov	ecx, ebp
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	nop	
	cdq	
	idiv	ebp
	sub	ebp, edx
	lea	rdi, [rdi]
	add	ebp, ecx
	mov	ebx, r14d
	nop	
	sub	ebx, ebp
	jl	.label_491
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_501
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_522:
	cmp	ebx, 1
	lea	rdi, [rdi]
	mov	ecx, ebp
	jg	.label_512
.label_491:
	mov	rsp, rsp
	cmp	ecx, r14d
	mov	rbp, rbp
	jge	.label_514
	nop	
	mov	ebp, r14d
	sub	ebp, ecx
	jmp	.label_504
.label_506:
	mov	esi, 0x20
	call	__overflow
	mov	rbp, rbp
	jmp	.label_498
	nop	word ptr cs:[rax + rax]
.label_504:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_506
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
.label_498:
	dec	ebp
	jne	.label_504
.label_514:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
.label_507:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + separators_not_printed]]
	lea	ecx, [rax - 1]
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  ecx
	cmp	eax, 1
	mov	rbp, rbp
	jg	.label_508
	jmp	.label_503
.label_519:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	test	eax, eax
	jle	.label_503
	mov	rsp, rsp
	mov	ebp,  dword ptr [dword ptr [rip + output_position]]
	lea	rdi, [rdi]
	lea	r14d, [rbp + rax]
	cmp	eax, 2
	jge	.label_509
	mov	ecx, ebp
	lea	rdi, [rdi]
	jmp	.label_493
	nop	word ptr [rax + rax]
.label_518:
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_497
	mov	rbp, rbp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_517:
	lea	rdi, [rdi]
	cmp	ebx, 1
	mov	rbp, rbp
	mov	ecx, ebp
	mov	rbp, rbp
	jg	.label_509
	jmp	.label_493
.label_497:
	lea	rsi, [rsi]
	movzx	esi, al
	call	__overflow
	mov	rsp, rsp
	jmp	.label_517
.label_509:
	lea	rdi, [rdi]
	mov	ecx, ebp
	nop	
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	lea	rdi, [rdi]
	idiv	ebp
	sub	ebp, edx
	nop	
	add	ebp, ecx
	mov	ebx, r14d
	nop	
	sub	ebx, ebp
	jge	.label_518
.label_493:
	cmp	ecx, r14d
	mov	rsp, rsp
	jge	.label_492
	lea	rdi, [rdi]
	mov	ebp, r14d
	mov	rsp, rsp
	sub	ebp, ecx
	jmp	.label_495
.label_505:
	mov	esi, 0x20
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_511
	nop	word ptr cs:[rax + rax]
.label_495:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_505
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_511:
	dec	ebp
	jne	.label_495
.label_492:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
.label_503:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407490

	.globl char_to_clump
	.type char_to_clump, @function
char_to_clump:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	nop	
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	ebx, edi
	mov	r14,  qword ptr [word ptr [rip + clump_buff]]
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + input_tab_char]]
	movzx	ebp, bl
	cmp	eax, ebp
	mov	rsp, rsp
	mov	ecx, 8
	lea	rsi, [rsi]
	cmove	ecx,  dword ptr [dword ptr [rip + chars_per_input_tab]]
	mov	rsp, rsp
	cmp	ebp, 9
	je	.label_529
	nop	
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, ebp
	mov	rbp, rbp
	je	.label_529
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	nop	
	jne	.label_532
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + use_esc_sequence]]
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	je	.label_533
	movzx	eax,  byte ptr [byte ptr [rip + use_cntrl_prefix]]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	jne	.label_527
	test	bl, bl
	js	.label_533
	nop	
	mov	byte ptr [r14], 0x5e
	xor	bl, 0x40
	mov	rbp, rbp
	mov	byte ptr [r14 + 1], bl
	lea	rdi, [rdi]
	mov	ebp, 2
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
	mov	rbp, rbp
	mov	eax, 2
	nop	
	jmp	.label_528
.label_529:
	lea	rsi, [rsi]
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
	mov	eax, r15d
	mov	rsp, rsp
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	mov	ebp, ecx
	lea	rdi, [rdi]
	sub	ebp, edx
	movzx	eax,  byte ptr [byte ptr [rip + untabify_input]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_530
	lea	rdi, [rdi]
	dec	ecx
	mov	rbp, rbp
	sub	ecx, edx
	mov	rbp, rbp
	inc	rcx
	mov	esi, 0x20
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, rcx
	mov	rbp, rbp
	call	memset
	mov	eax, ebp
	jmp	.label_531
.label_532:
	mov	byte ptr [r14], bl
	mov	ebp, 1
	lea	rdi, [rdi]
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
	mov	eax, 1
	lea	rdi, [rdi]
	jmp	.label_528
.label_530:
	mov	byte ptr [r14], bl
	mov	eax, 1
	jmp	.label_531
.label_533:
	mov	rsp, rsp
	mov	byte ptr [r14], 0x5c
	lea	rdi, [rsp + 4]
	mov	esi, 1
	mov	edx, 4
	mov	ecx, OFFSET FLAT:.str.79
	xor	eax, eax
	mov	r8d, ebp
	lea	rsi, [rsi]
	call	__sprintf_chk
	mov	rsp, rsp
	mov	al, byte ptr [rsp + 4]
	mov	byte ptr [r14 + 1], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rsp + 5]
	mov	byte ptr [r14 + 2], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rsp + 6]
	mov	rsp, rsp
	mov	byte ptr [r14 + 3], al
	mov	ebp, 4
	mov	rbp, rbp
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
	mov	eax, 4
	jmp	.label_528
.label_527:
	lea	rdi, [rdi]
	mov	byte ptr [r14], bl
	xor	eax, eax
	nop	
	cmp	ebp, 8
	lea	rdi, [rdi]
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	cmovne	ebp, eax
	mov	eax, 1
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
.label_531:
	test	ebp, ebp
	jns	.label_534
	mov	rsp, rsp
	test	r15d, r15d
	lea	rsi, [rsi]
	jne	.label_534
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + input_position]],  0
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_535
.label_534:
	test	ebp, ebp
	setns	cl
	lea	rsi, [rsi]
	mov	edx, ebp
	neg	edx
	mov	rbp, rbp
	cmp	r15d, edx
	jg	.label_528
	mov	rsp, rsp
	test	cl, cl
	mov	rsp, rsp
	jne	.label_528
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + input_position]],  0
	lea	rsi, [rsi]
	jmp	.label_535
.label_528:
	mov	rbp, rbp
	add	ebp, r15d
	nop	
	mov	dword ptr [dword ptr [rip + input_position]],  ebp
.label_535:
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076f0

	.globl add_line_number
	.type add_line_number, @function
add_line_number:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r14
	nop	
	push	rbx
	mov	r14, rdi
	mov	rdi,  qword ptr [word ptr [rip + number_buff]]
	mov	r8d,  dword ptr [dword ptr [rip + chars_per_number]]
	mov	r9d,  dword ptr [dword ptr [rip + line_number]]
	mov	esi, 1
	mov	rdx, -1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.80
	nop	
	xor	eax, eax
	call	__sprintf_chk
	inc	dword ptr [dword ptr [rip + line_number]]
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_number]]
	mov	rsp, rsp
	test	ebp, ebp
	lea	rsi, [rsi]
	jle	.label_538
	sub	eax, ebp
	movsxd	rbx, eax
	lea	rdi, [rdi]
	add	rbx,  qword ptr [word ptr [rip + number_buff]]
	mov	rbp, rbp
	inc	ebp
	nop	dword ptr [rax]
.label_537:
	movsx	edi, byte ptr [rbx]
	nop	
	inc	rbx
	mov	rbp, rbp
	call	qword ptr [r14 + 0x20]
	dec	ebp
	cmp	ebp, 1
	jg	.label_537
.label_538:
	cmp	dword ptr [dword ptr [rip + columns]],  2
	jl	.label_540
	movzx	eax,  byte ptr [byte ptr [rip + number_separator]]
	lea	rsi, [rsi]
	cmp	eax, 9
	jne	.label_542
	mov	ebx,  dword ptr [dword ptr [rip + number_width]]
	mov	eax,  dword ptr [dword ptr [rip + chars_per_number]]
	lea	rdi, [rdi]
	cmp	ebx, eax
	mov	rsp, rsp
	jle	.label_536
	mov	rbp, rbp
	inc	ebx
	sub	ebx, eax
	nop	
.label_541:
	mov	edi, 0x20
	nop	
	call	qword ptr [r14 + 0x20]
	lea	rsi, [rsi]
	dec	ebx
	lea	rdi, [rdi]
	cmp	ebx, 1
	mov	rbp, rbp
	jg	.label_541
	jmp	.label_536
.label_540:
	movsx	edi,  byte ptr [byte ptr [rip + number_separator]]
	mov	rbp, rbp
	call	qword ptr [r14 + 0x20]
	movzx	eax,  byte ptr [byte ptr [rip + number_separator]]
	mov	rbp, rbp
	cmp	eax, 9
	jne	.label_536
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	nop	
	mov	esi,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	lea	rdi, [rdi]
	mov	eax, ecx
	cdq	
	mov	rbp, rbp
	idiv	esi
	mov	rbp, rbp
	add	esi, ecx
	sub	esi, edx
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + output_position]],  esi
	nop	
	jmp	.label_536
.label_542:
	movsx	edi, al
	call	qword ptr [r14 + 0x20]
.label_536:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + truncate_lines]]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_539
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	mov	rbp, rbp
	jne	.label_539
	mov	eax,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsi]
	add	dword ptr [dword ptr [rip + input_position]],  eax
.label_539:
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407860

	.globl read_rest_of_line
	.type read_rest_of_line, @function
read_rest_of_line:
	mov	rbp, rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	nop	
	push	rax
	mov	r14, rdi
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r14]
	mov	rbp, rbp
	jmp	.label_552
.label_548:
	mov	rdi, rbx
	call	__uflow
	lea	rsi, [rsi]
	jmp	.label_544
	nop	word ptr cs:[rax + rax]
.label_552:
	nop	
	mov	rax, qword ptr [rbx + 8]
	nop	
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_548
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_544:
	nop	
	cmp	eax, -1
	je	.label_553
	cmp	eax, 0xa
	je	.label_554
	lea	rdi, [rdi]
	cmp	eax, 0xc
	jne	.label_552
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	jae	.label_556
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	edi, byte ptr [rax]
.label_550:
	cmp	edi, 0xa
	mov	rbp, rbp
	je	.label_551
	mov	rsi, rbx
	call	ungetc
.label_551:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	jne	.label_549
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_549:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	mov	rbp, rbp
	and	al, 1
	je	.label_546
	mov	dword ptr [r14 + 0x10], 2
	mov	rsp, rsp
	jmp	.label_545
.label_553:
	nop	
	mov	rdi, r14
	nop	
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	jmp	close_file
.label_546:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_545
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	lea	rsi, [rsi]
	and	edx, 1
	mov	rbp, rbp
	inc	edx
	lea	esi, [rax - 1]
	lea	rsi, [rsi]
	test	al, 7
	lea	rdi, [rdi]
	je	.label_547
	lea	rsi, [rsi]
	mov	edi, eax
	and	edi, 7
	neg	edi
	nop	
.label_543:
	mov	rsp, rsp
	mov	dword ptr [rcx + 0x10], edx
	mov	rbp, rbp
	add	rcx, 0x40
	lea	rsi, [rsi]
	dec	eax
	inc	edi
	jne	.label_543
.label_547:
	mov	rsp, rsp
	cmp	esi, 7
	mov	rbp, rbp
	jb	.label_545
	add	rcx, 0x1d0
	nop	dword ptr [rax + rax]
.label_555:
	mov	rsp, rsp
	mov	dword ptr [rcx - 0x1c0], edx
	nop	
	mov	dword ptr [rcx - 0x180], edx
	nop	
	mov	dword ptr [rcx - 0x140], edx
	mov	dword ptr [rcx - 0x100], edx
	mov	dword ptr [rcx - 0xc0], edx
	mov	dword ptr [rcx - 0x80], edx
	lea	rsi, [rsi]
	mov	dword ptr [rcx - 0x40], edx
	mov	rsp, rsp
	mov	dword ptr [rcx], edx
	add	rcx, 0x200
	add	eax, -8
	jne	.label_555
.label_545:
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_554:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_556:
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	__uflow
	mov	edi, eax
	jmp	.label_550
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x407a30
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
	#Procedure 0x407a40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a50

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
	je	.label_558
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_557
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_557
.label_558:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_560
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_557:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_559
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
.label_560:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_559:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
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
	#Procedure 0x407b50
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b60

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_561
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_561:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407b90

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	call	fopen
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_562
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_563
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_566
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_565
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_562
.label_565:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_564
.label_563:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_562
.label_566:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_564:
	xor	eax, eax
.label_562:
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407c70

	.globl gettime
	.type gettime, @function
gettime:
	mov	rsp, rsp
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	32
	#Procedure 0x407c80
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	lea	rsi, [rsi]
	sub	rsp, 0x18
	lea	rsi, [rsi]
	lea	rsi, [rsp + 8]
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407cb0

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
	je	.label_568
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_567
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_569
.label_567:
	nop	
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_568
.label_569:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_568:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407d00

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	lea	rsi, [rsi]
	js	.label_570
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
.label_573:
	lea	rdi, [rdi]
	mov	rax, rcx
	imul	r8
	mov	rbp, rbp
	mov	rax, rdx
	mov	rsp, rsp
	shr	rax, 0x3f
	sar	rdx, 2
	nop	
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	rdi, [rdi]
	lea	r9d, [rdi + rdi*4]
	nop	
	mov	edi, ecx
	sub	edi, r9d
	lea	rsi, [rsi]
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rbp, rbp
	mov	rcx, rdx
	ja	.label_573
	mov	rbp, rbp
	jmp	.label_572
.label_570:
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
.label_571:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	nop	
	sar	rdx, 2
	lea	edi, [rdx + r10]
	lea	rdi, [rdi]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	lea	rdi, [rdi]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	nop	
	sub	eax, edi
	nop	
	mov	byte ptr [rsi - 2], al
	add	rdx, r10
	mov	rbp, rbp
	add	rcx, 9
	dec	rsi
	mov	rsp, rsp
	cmp	rcx, 0x12
	mov	rcx, rdx
	mov	rsp, rsp
	ja	.label_571
	mov	rbp, rbp
	mov	byte ptr [rsi - 2], 0x2d
	mov	rsp, rsp
	add	rsi, -2
.label_572:
	nop	
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407df0

	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:
	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	ebp, esi
	nop	
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, rax
	mov	edx, ebp
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	mbsnwidth
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e20

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	nop
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x28
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	r15, [rbx + rbp]
	lea	rsi, [rsi]
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_601
	xor	r12d, r12d
	test	rbp, rbp
	jle	.label_576
	mov	rsp, rsp
	mov	ecx, r14d
	nop	
	and	ecx, 1
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rbp, rbp
	xor	eax, 1
	mov	dword ptr [rsp + 0x24], eax
	lea	eax, [rcx*4]
	xor	eax, 5
	mov	dword ptr [rsp + 0x14], eax
	mov	rbp, rbp
	xor	r13d, r13d
	lea	rbp, [rsp + 8]
	mov	rsp, rsp
	mov	r12d, 0x7fffffff
	lea	rdi, [rdi]
	test	r14b, 2
	mov	rbp, rbp
	jne	.label_577
	nop	
.label_604:
	mov	rbp, rbp
	movsx	eax, byte ptr [rbx]
	add	eax, -0x20
	lea	rsi, [rsi]
	cmp	eax, 0x5e
	ja	.label_592
	nop	
	jmp	qword ptr [word ptr [+ (rax * 8) + label_599]]
.label_1280:
	inc	rbx
	inc	r13d
.label_579:
	cmp	rbx, r15
	jb	.label_604
	mov	rbp, rbp
	jmp	.label_574
.label_592:
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
	nop	dword ptr [rax + rax]
.label_600:
	mov	rdx, r15
	mov	rsp, rsp
	sub	rdx, rbx
	lea	rsi, [rsi]
	lea	rdi, [rsp + 4]
	mov	rsi, rbx
	mov	rcx, rbp
	lea	rsi, [rsi]
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	r14, rax
	test	r14, r14
	je	.label_578
	cmp	r14, -2
	je	.label_582
	lea	rdi, [rdi]
	cmp	r14, -1
	jne	.label_588
	lea	rsi, [rsi]
	jmp	.label_591
	nop	word ptr cs:[rax + rax]
.label_578:
	mov	r14d, 1
.label_588:
	mov	edi, dword ptr [rsp + 4]
	lea	rdi, [rdi]
	call	wcwidth
	test	eax, eax
	js	.label_584
	mov	rbp, rbp
	mov	edx, 0x7fffffff
	sub	edx, r13d
	mov	ecx, 7
	lea	rsi, [rsi]
	cmp	eax, edx
	jg	.label_575
	add	r13d, eax
	jmp	.label_595
	nop	word ptr cs:[rax + rax]
.label_584:
	mov	edi, dword ptr [rsp + 4]
	call	iswcntrl
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_595
	mov	rsp, rsp
	cmp	r13d, 0x7fffffff
	je	.label_580
	inc	r13d
	nop	word ptr cs:[rax + rax]
.label_595:
	mov	rbp, rbp
	add	rbx, r14
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	call	mbsinit
	test	eax, eax
	mov	rbp, rbp
	mov	rax, rbx
	je	.label_600
	jmp	.label_605
.label_582:
	nop	
	add	r13d, dword ptr [rsp + 0x24]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	test	eax, eax
	mov	rax, r15
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x14]
	je	.label_605
	lea	rdi, [rdi]
	jmp	.label_575
.label_591:
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_575
	inc	rbx
	inc	r13d
	mov	rax, rbx
.label_605:
	mov	rbx, rax
	mov	rbp, rbp
	jmp	.label_579
.label_580:
	mov	rsp, rsp
	mov	ecx, 7
	lea	rdi, [rdi]
	mov	r13d, 0x7fffffff
.label_575:
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	je	.label_579
	jmp	.label_596
	nop	
.label_577:
	movsx	eax, byte ptr [rbx]
	add	eax, -0x20
	cmp	eax, 0x5e
	mov	rbp, rbp
	ja	.label_598
	jmp	qword ptr [word ptr [+ (rax * 8) + label_602]]
.label_1426:
	lea	rsi, [rsi]
	inc	rbx
	inc	r13d
.label_603:
	lea	rdi, [rdi]
	cmp	rbx, r15
	nop	
	jb	.label_577
	jmp	.label_574
.label_598:
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
	nop	dword ptr [rax + rax]
.label_585:
	nop	
	mov	rdx, r15
	nop	
	sub	rdx, rbx
	lea	rdi, [rsp + 4]
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rcx, rbp
	lea	rsi, [rsi]
	call	rpl_mbrtowc
	mov	r14, rax
	mov	rsp, rsp
	test	r14, r14
	je	.label_586
	mov	rbp, rbp
	cmp	r14, -2
	je	.label_590
	cmp	r14, -1
	lea	rsi, [rsi]
	jne	.label_594
	mov	rsp, rsp
	jmp	.label_597
	nop	word ptr cs:[rax + rax]
.label_586:
	mov	r14d, 1
.label_594:
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 4]
	call	wcwidth
	mov	ecx, 1
	test	eax, eax
	js	.label_593
	mov	rsp, rsp
	mov	edx, 0x7fffffff
	sub	edx, r13d
	mov	ecx, 7
	cmp	eax, edx
	lea	rdi, [rdi]
	jg	.label_593
	mov	rsp, rsp
	add	r13d, eax
	mov	rsp, rsp
	add	rbx, r14
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	mbsinit
	nop	
	test	eax, eax
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	je	.label_585
	jmp	.label_583
.label_590:
	mov	rsp, rsp
	add	r13d, dword ptr [rsp + 0x24]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	test	eax, eax
	lea	rdi, [rdi]
	mov	rax, r15
	nop	
	mov	ecx, dword ptr [rsp + 0x14]
	jne	.label_593
.label_583:
	mov	rbx, rax
	jmp	.label_603
.label_597:
	mov	ecx, 1
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	test	eax, eax
	nop	
	jne	.label_593
	inc	rbx
	mov	rsp, rsp
	inc	r13d
	mov	rax, rbx
	jmp	.label_603
.label_593:
	lea	rdi, [rdi]
	test	ecx, ecx
	je	.label_603
.label_596:
	mov	r13d, 0xffffffff
	cmp	ecx, 7
	jne	.label_574
	mov	rsp, rsp
	jmp	.label_576
.label_601:
	xor	r13d, r13d
	mov	rbp, rbp
	test	r14b, 2
	lea	rsi, [rsi]
	je	.label_581
	nop	word ptr cs:[rax + rax]
.label_606:
	lea	rsi, [rsi]
	cmp	rbx, r15
	mov	rsp, rsp
	jae	.label_574
	movzx	ebp, byte ptr [rbx]
	mov	rsp, rsp
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	r12d, 0xffffffff
	mov	rsp, rsp
	test	byte ptr [rax + rbp*2 + 1], 0x40
	je	.label_576
	lea	rdi, [rdi]
	inc	rbx
	inc	r13d
	mov	r12d, 0x7fffffff
	lea	rdi, [rdi]
	cmp	r13d, 0x80000000
	jne	.label_606
	mov	rsp, rsp
	jmp	.label_576
.label_587:
	lea	rdi, [rdi]
	inc	r13d
	mov	rsp, rsp
	jmp	.label_581
.label_589:
	nop	
	mov	r12d, 0x7fffffff
	cmp	r13d, 0x7fffffff
	jne	.label_587
	mov	rsp, rsp
	jmp	.label_576
	nop	word ptr [rax + rax]
.label_581:
	mov	rbp, rbp
	cmp	rbx, r15
	lea	rsi, [rsi]
	jae	.label_574
	mov	rbp, rbp
	movzx	ebp, byte ptr [rbx]
	mov	rsp, rsp
	inc	rbx
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_589
	mov	rsp, rsp
	test	al, 2
	mov	rsp, rsp
	jne	.label_581
	lea	rdi, [rdi]
	jmp	.label_589
.label_574:
	mov	rbp, rbp
	mov	r12d, r13d
.label_576:
	mov	eax, r12d
	lea	rdi, [rdi]
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082b0

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	nop	
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], r9d
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r8
	mov	dword ptr [rsp], 0xffffffff
	nop	
	xor	r8d, r8d
	lea	rdi, [rdi]
	xor	r9d, r9d
	lea	rdi, [rdi]
	call	__strftime_internal
	add	rsp, 0x18
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082f0

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x4a8
	mov	dword ptr [rsp + 0x54], r8d
	mov	rbp, rbp
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x88], rsi
	mov	eax, dword ptr [rcx + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x30]
	test	rdx, rdx
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str
	cmovne	rsi, rdx
	nop	
	lea	edx, [rax - 0xc]
	test	eax, eax
	mov	ebx, 0xc
	cmovne	ebx, eax
	mov	rbp, rbp
	cmp	eax, 0xc
	cmovg	ebx, edx
	mov	al, byte ptr [rbp]
	test	al, al
	mov	rsp, rsp
	je	.label_737
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x84], ebx
	mov	qword ptr [rsp + 0x48], rsi
	mov	qword ptr [rsp + 0x90], rcx
	mov	dword ptr [rsp + 0x24], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	movabs	r15, 0x1000000000002500
	xor	esi, esi
	mov	rsp, rsp
	mov	r9, rdi
	jmp	.label_698
.label_737:
	nop	
	xor	esi, esi
	mov	rbp, rbp
	mov	r9, rdi
	jmp	.label_764
.label_706:
	lea	rsi, [rsi]
	mov	r12d, 3
	jmp	.label_770
	nop	dword ptr [rax]
.label_698:
	movzx	ecx, al
	xor	ebx, ebx
	lea	rdi, [rdi]
	cmp	ecx, 0x25
	nop	
	jne	.label_704
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rsi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x54]
	nop	
	mov	dil, al
	mov	rbp, rbp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_641
	nop	
.label_704:
	mov	rsp, rsp
	test	r14d, r14d
	nop	
	mov	ecx, r14d
	nop	
	mov	edx, 0
	lea	rdi, [rdi]
	cmovs	ecx, edx
	movsxd	rbx, ecx
	nop	
	cmp	ebx, 1
	lea	rdi, [rdi]
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	sub	rdx, rsi
	mov	rsp, rsp
	cmp	rbx, rdx
	nop	
	jae	.label_608
	mov	rsp, rsp
	test	r9, r9
	lea	rsi, [rsi]
	mov	edx, 0
	mov	rsp, rsp
	je	.label_618
	nop	
	cmp	ecx, 2
	lea	rsi, [rsi]
	jb	.label_620
	movsxd	r14, r14d
	lea	rdx, [r14 - 1]
	mov	r12, rsi
	nop	
	mov	esi, 0x20
	mov	rdi, r9
	mov	r13, r9
	lea	rsi, [rsi]
	call	memset
	mov	r9, r13
	mov	rsp, rsp
	mov	rsi, r12
	lea	r9, [r9 + r14 - 1]
	mov	rsp, rsp
	mov	al, byte ptr [rbp]
.label_620:
	mov	byte ptr [r9], al
.label_667:
	inc	r9
	nop	
	mov	rdx, r9
.label_618:
	lea	rdi, [rdi]
	add	rsi, rbx
	mov	rsp, rsp
	mov	r9, rdx
	nop	
	jmp	.label_634
	nop	word ptr cs:[rax + rax]
.label_649:
	mov	bl, 1
	nop	
	mov	al, dil
	jmp	.label_641
	nop	dword ptr [rax + rax]
.label_647:
	inc	rbp
	lea	rsi, [rsi]
	mov	r13d, edx
.label_652:
	mov	cl, byte ptr [rbp]
	lea	rsi, [rsi]
	movsx	edx, cl
	lea	esi, [rdx - 0x23]
	cmp	esi, 0x3c
	ja	.label_643
	lea	rdi, [rdi]
	bt	r15, rsi
	nop	
	jb	.label_647
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_649
	lea	rdi, [rdi]
	cmp	rsi, 0x3b
	jne	.label_643
.label_641:
	nop	
	mov	dil, al
	inc	rbp
	mov	rbp, rbp
	jmp	.label_652
	nop	dword ptr [rax]
.label_643:
	lea	rdi, [rdi]
	add	edx, -0x30
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_656
	nop	word ptr cs:[rax + rax]
.label_782:
	lea	rdi, [rdi]
	mov	r14d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_661
	movsx	ecx, cl
	mov	rsp, rsp
	cmp	eax, 0xccccccc
	lea	rdi, [rdi]
	jne	.label_664
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_661
.label_664:
	lea	rsi, [rsi]
	lea	eax, [rax + rax*4]
	nop	
	lea	r14d, [rcx + rax*2 - 0x30]
.label_661:
	movsx	ecx, byte ptr [rbp + 1]
	mov	rbp, rbp
	inc	rbp
	mov	rbp, rbp
	mov	eax, ecx
	mov	rsp, rsp
	add	eax, -0x30
	lea	rdi, [rdi]
	cmp	eax, 0xa
	mov	rbp, rbp
	mov	eax, r14d
	jb	.label_782
.label_656:
	lea	rsi, [rsi]
	movsx	eax, cl
	lea	rsi, [rsi]
	cmp	eax, 0x4f
	je	.label_676
	cmp	eax, 0x45
	nop	
	jne	.label_660
.label_676:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rdi
	mov	cl, byte ptr [rbp + 1]
	nop	
	inc	rbp
	jmp	.label_681
.label_660:
	mov	qword ptr [rsp + 0x58], rdi
	xor	eax, eax
.label_681:
	movsx	r11d, cl
	lea	rdi, [rdi]
	xor	r12d, r12d
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	lea	edx, [r11 - 0x25]
	lea	rsi, [rsi]
	cmp	edx, 0x55
	mov	rsp, rsp
	ja	.label_687
	nop	
	mov	dword ptr [rsp + 0x30], eax
	mov	eax, OFFSET FLAT:.str.3_0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r8b, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	esi, esi
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_705]]
.label_1356:
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_615
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r9
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x90]
	mov	r9d, dword ptr [rdx + 0x14]
	nop	
	mov	r8d, dword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	eax, r9d
	mov	rbp, rbp
	sar	eax, 0x1f
	and	eax, 0x190
	lea	r12d, [r9 + rax - 0x64]
	mov	rbp, rbp
	mov	ebx, dword ptr [rdx + 0x1c]
	lea	edx, [rbx + 0x17e]
	sub	edx, r8d
	movsxd	rdx, edx
	mov	rbp, rbp
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	rsi, [rsi]
	add	esi, edx
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, 0x1f
	sar	esi, 2
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	sub	edx, edi
	nop	
	lea	edi, [rbx + 3]
	nop	
	sub	edi, edx
	mov	rbp, rbp
	js	.label_707
	lea	rsi, [rsi]
	mov	edx, 0x16d
	lea	rdi, [rdi]
	test	r12b, 3
	jne	.label_723
	lea	rdi, [rdi]
	movsxd	rdx, r12d
	mov	rbp, rbp
	imul	rdx, rdx, 0x51eb851f
	mov	rsi, rdx
	sar	rsi, 0x25
	mov	rax, rdx
	lea	rdi, [rdi]
	shr	rax, 0x3f
	add	esi, eax
	imul	esi, esi, 0x64
	lea	rdi, [rdi]
	sar	rdx, 0x27
	add	edx, eax
	imul	eax, edx, 0x190
	nop	
	cmp	r12d, eax
	sete	al
	movzx	eax, al
	add	eax, 0x16d
	cmp	r12d, esi
	lea	rsi, [rsi]
	mov	edx, 0x16e
	nop	
	cmove	edx, eax
.label_723:
	sub	ebx, edx
	nop	
	lea	eax, [rbx + 0x17e]
	sub	eax, r8d
	nop	
	cdqe	
	mov	rbp, rbp
	imul	rdx, rax, -0x6db6db6d
	lea	rsi, [rsi]
	shr	rdx, 0x20
	mov	rsp, rsp
	add	edx, eax
	mov	esi, edx
	shr	esi, 0x1f
	mov	rbp, rbp
	sar	edx, 2
	nop	
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	nop	
	sub	eax, esi
	add	ebx, 3
	mov	rbp, rbp
	sub	ebx, eax
	cmovns	edi, ebx
	lea	rsi, [rsi]
	shr	ebx, 0x1f
	xor	ebx, 1
	jmp	.label_680
	nop	word ptr cs:[rax + rax]
.label_751:
	inc	rdi
.label_1350:
	movzx	eax, byte ptr [rbp + rdi]
	cmp	eax, 0x3a
	lea	rsi, [rsi]
	je	.label_751
	movzx	eax, al
	nop	
	cmp	eax, 0x7a
	jne	.label_615
	add	rbp, rdi
	mov	r12, rdi
.label_1387:
	mov	rax, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x20], 0
	mov	rsp, rsp
	js	.label_758
	mov	eax, dword ptr [rax + 0x28]
	nop	
	mov	r8b, 1
	mov	rsp, rsp
	test	eax, eax
	js	.label_763
	test	eax, eax
	je	.label_688
	xor	r8d, r8d
	lea	rdi, [rdi]
	jmp	.label_763
.label_1370:
	test	bl, bl
	je	.label_773
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rax
.label_773:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x30]
	nop	
	cmp	edx, 0x45
	mov	rsp, rsp
	je	.label_615
	lea	rdi, [rdi]
	mov	r8b, cl
	mov	rbp, rbp
	jmp	.label_640
.label_687:
	lea	rsi, [rsi]
	test	r11d, r11d
	jne	.label_615
	dec	rbp
	nop	
	jmp	.label_615
.label_1349:
	cmp	dword ptr [rsp + 0x30], 0
	jne	.label_615
	mov	rsp, rsp
	xor	eax, eax
	nop	
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rdx, eax
	cmp	edx, 1
	nop	
	mov	ebx, 1
	cmova	rbx, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsi, qword ptr [rsp + 0x38]
	sub	rdx, rsi
	cmp	rbx, rdx
	jae	.label_608
	mov	rbp, rbp
	xor	edx, edx
	test	r9, r9
	je	.label_618
	cmp	eax, 2
	jb	.label_623
	movsxd	r14, r14d
	mov	rsp, rsp
	dec	r14
	cmp	r13d, 0x30
	je	.label_626
	cmp	r13d, 0x2b
	lea	rdi, [rdi]
	jne	.label_628
.label_626:
	nop	
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	esi, 0x30
	jmp	.label_632
.label_1351:
	mov	eax, dword ptr [rsp + 0x30]
	mov	rsp, rsp
	test	eax, eax
	jne	.label_615
	test	bl, bl
	nop	
	je	.label_638
	mov	al, 1
	mov	qword ptr [rsp + 0x58], rax
.label_638:
	nop	
	xor	eax, eax
	mov	r8b, 0x41
	jmp	.label_640
.label_1352:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x45
	je	.label_615
	nop	
	test	bl, bl
	mov	rsp, rsp
	je	.label_625
	mov	al, 1
	mov	qword ptr [rsp + 0x58], rax
.label_625:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	r8b, 0x42
	jmp	.label_640
.label_1353:
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	nop	
	jne	.label_650
	nop	
	xor	eax, eax
	mov	r8b, 0x43
	lea	rsi, [rsi]
	jmp	.label_640
.label_1354:
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x30], 0
	jne	.label_615
	mov	eax, OFFSET FLAT:.str.1_1
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r10d, 0xffffffff
	jmp	.label_657
.label_1355:
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x30], 0
	jne	.label_615
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_739
	test	r14d, r14d
	mov	rbp, rbp
	jns	.label_739
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13d, 0x2b
	mov	r10d, 4
	jmp	.label_657
.label_1357:
	mov	rbp, rbp
	mov	r10d, dword ptr [rsp + 0x30]
	nop	
	cmp	r10d, 0x45
	je	.label_615
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	jmp	.label_636
.label_1358:
	mov	r12d, 2
	lea	rsi, [rsi]
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	je	.label_615
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x84]
	lea	rsi, [rsi]
	mov	edx, eax
	jmp	.label_653
.label_1359:
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_615
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 4]
	jmp	.label_636
.label_1360:
	lea	rsi, [rsi]
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	je	.label_615
	mov	r12d, 9
	nop	
	cmp	r14d, -1
	lea	rdi, [rdi]
	je	.label_702
	nop	
	cmp	r14d, 8
	jg	.label_607
	lea	rdi, [rdi]
	mov	edi, 9
	mov	rbp, rbp
	sub	edi, r14d
	mov	eax, 8
	sub	eax, r14d
	test	dil, 3
	lea	rdi, [rdi]
	mov	edx, dword ptr [rsp + 0x4f0]
	mov	ebx, r14d
	je	.label_697
	and	edi, 3
	mov	rbp, rbp
	neg	edi
	lea	rdi, [rdi]
	mov	edx, dword ptr [rsp + 0x4f0]
	mov	rsp, rsp
	mov	ebx, r14d
	nop	dword ptr [rax]
.label_715:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	lea	rdi, [rdi]
	mov	rsi, rdx
	shr	rsi, 0x3f
	lea	rsi, [rsi]
	sar	rdx, 0x22
	add	edx, esi
	inc	ebx
	mov	rsp, rsp
	inc	edi
	jne	.label_715
.label_697:
	cmp	eax, 3
	lea	rsi, [rsi]
	jae	.label_721
	mov	r12d, r14d
	lea	rsi, [rsi]
	jmp	.label_653
.label_1361:
	mov	sil, 1
.label_1379:
	mov	rbp, rbp
	xor	r12d, r12d
	test	bl, bl
	lea	rdi, [rdi]
	je	.label_753
	mov	rsp, rsp
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
.label_753:
	mov	rbp, rbp
	je	.label_728
	mov	sil, 1
.label_728:
	mov	r8b, 0x70
	mov	al, sil
	jmp	.label_666
.label_1362:
	lea	rdi, [rdi]
	mov	r10d, dword ptr [rsp + 0x30]
	nop	
	cmp	r10d, 0x45
	je	.label_615
	mov	rax, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
	jmp	.label_636
.label_1363:
	mov	eax, OFFSET FLAT:.str.4_0
.label_658:
	mov	qword ptr [rsp + 0x28], rax
.label_657:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x30], r10d
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	nop	
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], r10d
	lea	rsi, [rsi]
	movzx	r8d, al
	xor	ebx, ebx
	xor	edi, edi
	mov	rbp, rbp
	mov	rsi, -1
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	r12, r9
	lea	rsi, [rsi]
	mov	r9d, r13d
	call	__strftime_internal
	lea	rsi, [rsi]
	mov	rdi, r12
	test	r14d, r14d
	nop	
	cmovns	ebx, r14d
	lea	rdi, [rdi]
	movsxd	rdx, ebx
	cmp	rax, rdx
	mov	rbx, rax
	cmovb	rbx, rdx
	mov	r12, qword ptr [rsp + 0x88]
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	sub	r12, rsi
	cmp	rbx, r12
	lea	rdi, [rdi]
	jae	.label_608
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_679
	lea	rsi, [rsi]
	cmp	rax, rdx
	mov	rbp, rbp
	jae	.label_771
	movsxd	rcx, r14d
	sub	rcx, rax
	mov	qword ptr [rsp + 0x98], rax
	lea	rsi, [rsi]
	cmp	r13d, 0x30
	mov	rsp, rsp
	je	.label_774
	cmp	r13d, 0x2b
	nop	
	jne	.label_779
.label_774:
	mov	esi, 0x30
	jmp	.label_780
.label_1364:
	lea	rsi, [rsi]
	mov	r10d, dword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	mov	rbp, rbp
	je	.label_615
	mov	rdx, qword ptr [rsp + 0x90]
	mov	eax, dword ptr [rdx + 0x1c]
	add	eax, 7
	nop	
	sub	eax, dword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	movsxd	rdx, eax
	jmp	.label_635
.label_1365:
	mov	r10d, dword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	je	.label_615
	mov	rdx, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rdx + 0x1c]
	lea	esi, [rax + 6]
	movsxd	rsi, esi
	lea	rsi, [rsi]
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	eax, [rdi + rax + 6]
	lea	rdi, [rdi]
	mov	edi, eax
	mov	rsp, rsp
	shr	edi, 0x1f
	sar	eax, 2
	add	eax, edi
	lea	rdi, [rdi]
	lea	edi, [rax*8]
	sub	edi, eax
	mov	rsp, rsp
	sub	esi, edi
	add	edx, 7
	lea	rdi, [rdi]
	sub	edx, esi
	mov	rsp, rsp
	movsxd	rdx, edx
.label_635:
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	edx, eax
	lea	rsi, [rsi]
	mov	eax, edx
	nop	
	shr	eax, 0x1f
	sar	edx, 2
	lea	rsi, [rsi]
	add	edx, eax
	jmp	.label_636
.label_1366:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	mov	rbp, rbp
	cmp	eax, 0x4f
	mov	rbp, rbp
	je	.label_615
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r8b, 0x58
	jmp	.label_640
.label_1367:
	mov	r10d, dword ptr [rsp + 0x30]
	nop	
	cmp	r10d, 0x45
	nop	
	je	.label_648
	cmp	r10d, 0x4f
	lea	rsi, [rsi]
	je	.label_615
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax + 0x14]
	cmp	edx, 0xfffff894
	setl	r8b
	add	edx, 0x76c
	mov	r12d, 4
	mov	rsp, rsp
	jmp	.label_610
.label_1368:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	r12, r9
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	r9, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	test	r14d, r14d
	cmovns	eax, r14d
	mov	rbp, rbp
	cdqe	
	mov	rbp, rbp
	cmp	r9, rax
	mov	r12, r9
	nop	
	cmovb	r12, rax
	nop	
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	sub	rcx, rsi
	cmp	r12, rcx
	jae	.label_608
	lea	rsi, [rsi]
	xor	ecx, ecx
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_675
	cmp	r9, rax
	jae	.label_678
	movsxd	r14, r14d
	lea	rsi, [rsi]
	sub	r14, r9
	nop	
	mov	qword ptr [rsp + 0x30], r9
	cmp	r13d, 0x30
	je	.label_683
	mov	rbp, rbp
	cmp	r13d, 0x2b
	jne	.label_682
.label_683:
	mov	esi, 0x30
	jmp	.label_689
.label_1369:
	mov	eax, dword ptr [rsp + 0x30]
	test	eax, eax
	jne	.label_615
	nop	
	test	bl, bl
	je	.label_695
	mov	al, 1
	nop	
	mov	qword ptr [rsp + 0x58], rax
.label_695:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r8b, 0x61
	nop	
	jmp	.label_640
.label_1371:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x4f
	mov	rbp, rbp
	je	.label_615
	xor	eax, eax
	mov	r8b, 0x63
	jmp	.label_640
.label_1372:
	mov	rbp, rbp
	mov	r10d, dword ptr [rsp + 0x30]
	mov	rsp, rsp
	cmp	r10d, 0x45
	lea	rdi, [rdi]
	je	.label_615
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax + 0xc]
	lea	rsi, [rsi]
	jmp	.label_636
.label_1373:
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_615
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax + 0xc]
	nop	
	jmp	.label_711
.label_1374:
	nop	
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_615
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x90]
	nop	
	mov	edx, dword ptr [rax + 0x1c]
	cmp	edx, -1
	setl	r8b
	inc	edx
	nop	
	mov	r12d, 3
	lea	rdi, [rdi]
	jmp	.label_674
.label_1375:
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	lea	rdi, [rdi]
	je	.label_615
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	jmp	.label_711
.label_1376:
	mov	r10d, dword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	nop	
	mov	eax, dword ptr [rsp + 0x84]
	mov	edx, eax
	lea	rdi, [rdi]
	je	.label_615
.label_711:
	test	r13d, r13d
	lea	rsi, [rsi]
	mov	eax, 0x5f
	mov	rbp, rbp
	cmove	r13d, eax
.label_636:
	mov	r12d, 2
	nop	
	jmp	.label_653
.label_1377:
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	je	.label_615
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax + 0x10]
	cmp	edx, -1
	nop	
	setl	r8b
	nop	
	inc	edx
	mov	r12d, 2
	lea	rdi, [rdi]
	jmp	.label_674
.label_1378:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x38]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_608
	nop	
	xor	ecx, ecx
	test	r9, r9
	je	.label_679
	mov	rbp, rbp
	cmp	eax, 2
	nop	
	jb	.label_630
	lea	rsi, [rsi]
	mov	r12, rsi
	movsxd	r14, r14d
	lea	rsi, [rsi]
	dec	r14
	mov	rbp, rbp
	cmp	r13d, 0x30
	lea	rdi, [rdi]
	je	.label_614
	cmp	r13d, 0x2b
	jne	.label_765
.label_614:
	mov	esi, 0x30
	jmp	.label_769
.label_1380:
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	imul	edx, dword ptr [rax + 0x10], 0xb
	mov	rsp, rsp
	sar	edx, 5
	nop	
	inc	edx
	mov	r12d, 1
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	edi, edi
	xor	r8d, r8d
	mov	rbp, rbp
	mov	r10d, dword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	jmp	.label_673
.label_1381:
	lea	rdi, [rdi]
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rcx]
	nop	
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0xa0]
	mov	rdi, qword ptr [rsp + 0x4e8]
	lea	rdi, [rdi]
	call	mktime_z
	mov	rcx, rax
	mov	r8, rcx
	shr	r8, 0x3f
	lea	r12, [rsp + 0x77]
	je	.label_622
	nop	word ptr [rax + rax]
.label_713:
	lea	rdi, [rdi]
	movabs	rdx, 0x6666666666666667
	mov	rsp, rsp
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	lea	rdi, [rdi]
	shr	rax, 0x3f
	sar	rdx, 2
	mov	rsp, rsp
	lea	esi, [rdx + rax]
	add	esi, esi
	lea	rdi, [rdi]
	lea	esi, [rsi + rsi*4]
	mov	edi, ecx
	sub	edi, esi
	nop	
	add	rdx, rax
	mov	rsp, rsp
	mov	al, 0x30
	sub	al, dil
	mov	rsp, rsp
	mov	byte ptr [r12 - 1], al
	dec	r12
	mov	rbp, rbp
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	mov	rbp, rbp
	ja	.label_713
	jmp	.label_645
	nop	word ptr cs:[rax + rax]
.label_622:
	mov	rbp, rbp
	movabs	rdx, 0x6666666666666667
	mov	rbp, rbp
	mov	rax, rcx
	lea	rdi, [rdi]
	imul	rdx
	mov	rax, rdx
	mov	rbp, rbp
	shr	rax, 0x3f
	sar	rdx, 2
	lea	esi, [rdx + rax]
	add	esi, esi
	lea	rsi, [rsi]
	lea	esi, [rsi + rsi*4]
	mov	edi, ecx
	sub	edi, esi
	lea	rsi, [rsi]
	add	rdx, rax
	nop	
	add	dil, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	add	rcx, 9
	mov	rsp, rsp
	cmp	rcx, 0x12
	mov	rcx, rdx
	nop	
	ja	.label_622
.label_645:
	mov	rsp, rsp
	mov	r10d, 1
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	r9, rbx
	lea	rsi, [rsi]
	jmp	.label_662
.label_1382:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x88]
	nop	
	mov	rsi, qword ptr [rsp + 0x38]
	sub	rcx, rsi
	lea	rsi, [rsi]
	cmp	rbx, rcx
	mov	rbp, rbp
	jae	.label_608
	xor	ecx, ecx
	test	r9, r9
	je	.label_679
	mov	rbp, rbp
	cmp	eax, 2
	jb	.label_684
	mov	r12, rsi
	movsxd	r14, r14d
	lea	rsi, [rsi]
	dec	r14
	mov	rbp, rbp
	cmp	r13d, 0x30
	lea	rdi, [rdi]
	je	.label_686
	mov	rsp, rsp
	cmp	r13d, 0x2b
	jne	.label_690
.label_686:
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rdi, [rdi]
	jmp	.label_669
.label_1383:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	eax, dword ptr [rax + 0x18]
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	lea	rdi, [rdi]
	imul	rsi, rdx, -0x6db6db6d
	lea	rsi, [rsi]
	shr	rsi, 0x20
	nop	
	lea	eax, [rsi + rax + 6]
	lea	rdi, [rdi]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	mov	rsp, rsp
	sub	esi, eax
	sub	edx, esi
	inc	edx
	mov	r12d, 1
	mov	r10d, dword ptr [rsp + 0x30]
	jmp	.label_653
.label_1384:
	mov	rbp, rbp
	mov	r10d, dword ptr [rsp + 0x30]
	mov	rbp, rbp
	cmp	r10d, 0x45
	je	.label_615
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	r12d, 1
	jmp	.label_653
.label_1385:
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	cmp	eax, 0x4f
	je	.label_615
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r8b, 0x78
	jmp	.label_640
.label_1386:
	mov	r10d, dword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	mov	rsp, rsp
	jne	.label_720
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r8b, 0x79
	lea	rsi, [rsi]
	jmp	.label_640
.label_771:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rcx, qword ptr [rsp + 0x90]
	jmp	.label_726
.label_707:
	nop	
	dec	r12d
	nop	
	mov	edi, 0x16d
	mov	rsp, rsp
	test	r12b, 3
	mov	rbp, rbp
	jne	.label_730
	movsxd	rdx, r12d
	imul	rdx, rdx, 0x51eb851f
	mov	rbp, rbp
	mov	rsi, rdx
	sar	rsi, 0x25
	mov	rdi, rdx
	shr	rdi, 0x3f
	lea	rdi, [rdi]
	add	esi, edi
	nop	
	imul	esi, esi, 0x64
	lea	rdi, [rdi]
	sar	rdx, 0x27
	lea	rsi, [rsi]
	add	edx, edi
	nop	
	imul	edx, edx, 0x190
	cmp	r12d, edx
	nop	
	sete	dl
	movzx	edx, dl
	lea	rdi, [rdi]
	add	edx, 0x16d
	cmp	r12d, esi
	mov	rbp, rbp
	mov	edi, 0x16e
	cmove	edi, edx
.label_730:
	mov	rbp, rbp
	lea	eax, [rdi + rbx + 0x17e]
	sub	eax, r8d
	cdqe	
	lea	rdi, [rdi]
	imul	rdx, rax, -0x6db6db6d
	nop	
	shr	rdx, 0x20
	add	edx, eax
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	mov	rsp, rsp
	add	edx, esi
	lea	esi, [rdx*8]
	lea	rsi, [rsi]
	sub	esi, edx
	mov	rbp, rbp
	sub	eax, esi
	mov	rsp, rsp
	lea	edi, [rdi + rbx + 3]
	nop	
	sub	edi, eax
	mov	ebx, 0xffffffff
.label_680:
	cmp	r11d, 0x47
	je	.label_757
	cmp	r11d, 0x67
	jne	.label_759
	movsxd	rax, r9d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	nop	
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	sar	rax, 0x25
	add	eax, edx
	imul	eax, eax, 0x64
	mov	rsp, rsp
	mov	edx, r9d
	sub	edx, eax
	add	edx, ebx
	nop	
	movsxd	rdx, edx
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	shr	rsi, 0x3f
	sar	rax, 0x25
	add	eax, esi
	mov	rsp, rsp
	imul	eax, eax, 0x64
	sub	edx, eax
	mov	r12d, 2
	jns	.label_761
	mov	eax, 0xfffff894
	sub	eax, ebx
	mov	esi, edx
	mov	rbp, rbp
	neg	esi
	mov	rsp, rsp
	add	edx, 0x64
	cmp	r9d, eax
	mov	rbp, rbp
	cmovl	edx, esi
.label_761:
	mov	rsp, rsp
	xor	r8d, r8d
	lea	rdi, [rdi]
	jmp	.label_781
.label_758:
	nop	
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_634
.label_650:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	r8b
	mov	rsp, rsp
	setg	bl
	imul	rdx, rax, 0x51eb851f
	mov	rsp, rsp
	mov	rsi, rdx
	lea	rdi, [rdi]
	shr	rsi, 0x3f
	nop	
	sar	rdx, 0x25
	add	edx, esi
	imul	esi, edx, 0x64
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	rbp, rbp
	sets	al
	lea	rsi, [rsi]
	and	al, bl
	movzx	eax, al
	sub	edx, eax
	add	edx, 0x13
	mov	r12d, 2
	jmp	.label_610
.label_720:
	mov	rax, qword ptr [rsp + 0x90]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	mov	rbp, rbp
	shr	rsi, 0x3f
	mov	rsp, rsp
	sar	rdx, 0x25
	add	edx, esi
	mov	rsp, rsp
	imul	esi, edx, 0x64
	lea	rdi, [rdi]
	mov	edx, eax
	nop	
	sub	edx, esi
	lea	rsi, [rsi]
	mov	r12d, 2
	lea	rdi, [rdi]
	js	.label_629
	xor	r8d, r8d
	jmp	.label_610
.label_757:
	mov	rsp, rsp
	mov	eax, 0xfffff894
	lea	rdi, [rdi]
	sub	eax, ebx
	cmp	r9d, eax
	mov	rsp, rsp
	setl	r8b
	lea	rsi, [rsi]
	lea	edx, [rbx + r9 + 0x76c]
	lea	rdi, [rdi]
	mov	r12d, 4
.label_781:
	mov	eax, dword ptr [rsp + 0x24]
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	jmp	.label_651
.label_759:
	movsxd	rax, edi
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	mov	rbp, rbp
	add	eax, edx
	mov	rsp, rsp
	mov	edx, eax
	mov	rsp, rsp
	sar	edx, 2
	nop	
	shr	eax, 0x1f
	lea	rdi, [rdi]
	lea	edx, [rdx + rax + 1]
	mov	r12d, 2
	mov	r9, qword ptr [rsp + 0x28]
	jmp	.label_653
.label_648:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r8b, 0x59
.label_640:
	lea	rsi, [rsi]
	xor	r12d, r12d
	jmp	.label_666
.label_678:
	nop	
	mov	r14, qword ptr [rsp + 0x48]
	jmp	.label_762
.label_779:
	mov	esi, 0x20
.label_780:
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x4a0], rdx
	mov	r14, rdi
	call	memset
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x90]
	add	r14, qword ptr [rsp + 0x4a0]
	lea	rdi, [rdi]
	mov	rdi, r14
.label_726:
	mov	esi, dword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x90], rcx
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	test	al, al
	setne	al
	mov	edx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], edx
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x4e8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdx
	nop	
	mov	dword ptr [rsp], esi
	movzx	r8d, al
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	r9d, r13d
	call	__strftime_internal
	mov	rax, qword ptr [rsp + 0x98]
	add	rax, r14
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x38]
.label_679:
	nop	
	add	rsi, rbx
	jmp	.label_655
.label_688:
	mov	rdx, qword ptr [rsp + 0x48]
	nop	
	movzx	edx, byte ptr [rdx]
	cmp	edx, 0x2d
	sete	r8b
.label_763:
	nop	
	cmp	r12, 3
	mov	r10d, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	ja	.label_615
	mov	rbp, rbp
	movsxd	rdx, eax
	imul	rsi, rdx, -0x77777777
	lea	rdi, [rdi]
	shr	rsi, 0x20
	lea	rdi, [rdi]
	add	esi, eax
	nop	
	mov	edi, esi
	lea	rsi, [rsi]
	shr	edi, 0x1f
	mov	rbp, rbp
	sar	esi, 5
	add	esi, edi
	lea	rdi, [rdi]
	imul	rdx, rdx, -0x6e5d4c3b
	shr	rdx, 0x20
	add	edx, eax
	mov	rsp, rsp
	mov	edi, edx
	lea	rdi, [rdi]
	shr	edi, 0x1f
	sar	edx, 0xb
	add	edx, edi
	lea	rsi, [rsi]
	movsxd	rdi, esi
	imul	rsi, rdi, -0x77777777
	shr	rsi, 0x20
	mov	rbp, rbp
	add	esi, edi
	mov	rbp, rbp
	mov	ebx, esi
	shr	ebx, 0x1f
	sar	esi, 5
	mov	rbp, rbp
	add	esi, ebx
	lea	rsi, [rsi]
	imul	esi, esi, 0x3c
	imul	ebx, edi, 0x3c
	sub	edi, esi
	sub	eax, ebx
	nop	
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_709]]
.label_1404:
	imul	edx, edx, 0x64
	lea	rdi, [rdi]
	add	edx, edi
	mov	r12d, 5
.label_770:
	mov	rsp, rsp
	mov	dil, 1
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_673
.label_615:
	mov	rsp, rsp
	lea	rbx, [rbp + 1]
	mov	rbp, rbp
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_733:
	inc	r12
	movzx	eax, byte ptr [rbx - 1]
	mov	rsp, rsp
	dec	rbx
	cmp	eax, 0x25
	jne	.label_733
	mov	rsp, rsp
	test	r14d, r14d
	mov	rbp, rbp
	mov	eax, r14d
	mov	ecx, 0
	lea	rdi, [rdi]
	cmovs	eax, ecx
	nop	
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	rdi, ecx
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rsi, qword ptr [rsp + 0x38]
	sub	rcx, rsi
	cmp	rdi, rcx
	jae	.label_608
	nop	
	test	r9, r9
	mov	ecx, 0
	je	.label_744
	nop	
	movsxd	rdx, r12d
	cmp	r12d, eax
	nop	
	jae	.label_748
	mov	rbp, rbp
	movsxd	r14, r14d
	lea	rsi, [rsi]
	sub	r14, rdx
	mov	rbp, rbp
	cmp	r13d, 0x30
	nop	
	je	.label_749
	cmp	r13d, 0x2b
	mov	rsp, rsp
	jne	.label_752
.label_749:
	mov	qword ptr [rsp + 0x28], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdi
	mov	esi, 0x30
	lea	rdi, [rdi]
	jmp	.label_755
.label_752:
	mov	qword ptr [rsp + 0x28], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdi
	nop	
	mov	esi, 0x20
.label_755:
	mov	rsp, rsp
	mov	rdi, r9
	mov	rdx, r14
	mov	rbp, rbp
	mov	r13, r9
	nop	
	call	memset
	nop	
	mov	r9, r13
	mov	rsi, qword ptr [rsp + 0x38]
	nop	
	add	r9, r14
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
.label_748:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x38], rsi
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_776
	mov	rdi, r9
	mov	rbp, rbp
	mov	rsi, rbx
	mov	r14, r9
	mov	rbx, rdx
	nop	
	call	memcpy
	mov	r10, rbx
	mov	rsp, rsp
	mov	r9, r14
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x30]
	jmp	.label_633
.label_776:
	mov	r13, r9
	mov	r14, rdx
	call	__ctype_toupper_loc
	mov	r10, r14
	lea	rdi, [rdi]
	mov	r9, r13
	nop	
	movsxd	rcx, r12d
	lea	rdi, [rdi]
	lea	r8, [rcx - 1]
	mov	rsp, rsp
	test	cl, 3
	mov	rbp, rbp
	mov	rcx, r10
	je	.label_612
	nop	
	and	r12d, 3
	lea	rdi, [rdi]
	neg	r12
	mov	rcx, r10
	nop	word ptr cs:[rax + rax]
.label_624:
	movzx	esi, byte ptr [rbx + rcx - 1]
	mov	rdi, qword ptr [rax]
	nop	
	mov	dl, byte ptr [rdi + rsi*4]
	mov	rbp, rbp
	mov	byte ptr [r9 + rcx - 1], dl
	mov	rbp, rbp
	dec	rcx
	lea	rsi, [rsi]
	inc	r12
	jne	.label_624
.label_612:
	cmp	r8, 3
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x30]
	nop	
	jb	.label_633
	nop	word ptr cs:[rax + rax]
.label_637:
	nop	
	movzx	edx, byte ptr [rbx + rcx - 1]
	nop	
	mov	rsi, qword ptr [rax]
	nop	
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rsp, rsp
	mov	byte ptr [r9 + rcx - 1], dl
	movzx	edx, byte ptr [rbx + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [r9 + rcx - 2], dl
	movzx	edx, byte ptr [rbx + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 3], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx + rcx - 4]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rsi, [rsi]
	mov	byte ptr [r9 + rcx - 4], dl
	add	rcx, -4
	jne	.label_637
.label_633:
	lea	rdi, [rdi]
	add	r9, r10
	mov	rbp, rbp
	mov	rcx, r9
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x38]
.label_744:
	add	rsi, rdi
	mov	rsp, rsp
	jmp	.label_655
.label_739:
	mov	rsp, rsp
	xor	eax, eax
	mov	r10d, r14d
	lea	rsi, [rsi]
	add	r10d, -6
	lea	rdi, [rdi]
	cmovs	r10d, eax
	nop	
	mov	eax, OFFSET FLAT:.str.2_0
	mov	rbp, rbp
	jmp	.label_658
.label_702:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	edx, eax
	nop	
	mov	r14d, 9
	mov	rsp, rsp
	jmp	.label_653
.label_629:
	mov	rsp, rsp
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	mov	rbp, rbp
	cmp	eax, 0xfffff894
	lea	rsi, [rsi]
	cmovl	edx, esi
	nop	
	xor	r8d, r8d
.label_610:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x24]
.label_651:
	mov	dword ptr [rsp + 0x24], eax
	lea	rdi, [rdi]
	test	r13d, r13d
	cmove	r13d, eax
	xor	ebx, ebx
	mov	rsp, rsp
	cmp	r13d, 0x2b
	mov	edi, 0
	lea	rdi, [rdi]
	jne	.label_673
	cmp	r12d, 2
	mov	rsp, rsp
	mov	eax, 0x63
	mov	rbp, rbp
	mov	esi, 0x270f
	cmove	esi, eax
	mov	rbp, rbp
	cmp	esi, edx
	lea	rsi, [rsi]
	setb	al
	nop	
	cmp	r12d, r14d
	setl	dil
	or	dil, al
	nop	
	jmp	.label_673
.label_1407:
	test	eax, eax
	nop	
	je	.label_693
.label_1406:
	imul	edx, edx, 0x2710
	mov	rbp, rbp
	imul	esi, edi, 0x64
	add	edx, eax
	mov	rsp, rsp
	add	edx, esi
	mov	r12d, 9
	mov	dil, 1
	lea	rdi, [rdi]
	mov	ebx, 0x14
	jmp	.label_673
.label_607:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x4f0]
	lea	rdi, [rdi]
	mov	edx, eax
	mov	r12d, r14d
	jmp	.label_653
.label_682:
	lea	rsi, [rsi]
	mov	esi, 0x20
.label_689:
	mov	rdx, r14
	mov	r13, rdi
	mov	rbp, rbp
	call	memset
	lea	rsi, [rsi]
	add	r13, r14
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x48]
	nop	
	mov	rdi, r13
	mov	r9, qword ptr [rsp + 0x30]
.label_762:
	test	bl, bl
	je	.label_710
	test	r9, r9
	nop	
	je	.label_619
	mov	r13, rdi
	nop	
	mov	rbx, r9
	nop	
	call	__ctype_tolower_loc
	mov	rsp, rsp
	mov	r9, rbx
	lea	r8, [r9 - 1]
	nop	
	test	r9b, 3
	lea	rdi, [rdi]
	je	.label_716
	mov	rbp, rbp
	mov	esi, r9d
	mov	rsp, rsp
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	word ptr cs:[rax + rax]
.label_724:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [r14 + rcx - 1]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_724
	jmp	.label_731
.label_710:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	test	al, al
	je	.label_732
	lea	rsi, [rsi]
	test	r9, r9
	nop	
	je	.label_619
	mov	r13, rdi
	mov	rbx, r9
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rsp, rsp
	mov	r9, rbx
	mov	rsp, rsp
	lea	r8, [r9 - 1]
	test	r9b, 3
	je	.label_734
	nop	
	mov	esi, r9d
	mov	rbp, rbp
	and	esi, 3
	mov	rsp, rsp
	neg	rsi
	mov	rcx, r9
	mov	rbp, rbp
	mov	rdi, r13
.label_742:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 1], bl
	mov	rbp, rbp
	dec	rcx
	lea	rdi, [rdi]
	inc	rsi
	jne	.label_742
	mov	rbp, rbp
	jmp	.label_745
.label_765:
	mov	rsp, rsp
	mov	esi, 0x20
.label_769:
	mov	rbp, rbp
	mov	rdi, r9
	mov	rdx, r14
	nop	
	mov	r13, r9
	call	memset
	lea	rsi, [rsi]
	add	r13, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbp, rbp
	mov	r9, r13
.label_630:
	mov	rsp, rsp
	mov	byte ptr [r9], 0xa
	mov	rbp, rbp
	jmp	.label_756
.label_690:
	mov	esi, 0x20
.label_669:
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	r13, r9
	call	memset
	mov	rbp, rbp
	add	r13, r14
	mov	rsi, r12
	mov	rbp, rbp
	mov	r9, r13
.label_684:
	mov	byte ptr [r9], 9
.label_756:
	mov	rbp, rbp
	inc	r9
	mov	rsp, rsp
	mov	rcx, r9
	add	rsi, rbx
	jmp	.label_655
.label_716:
	lea	rsi, [rsi]
	mov	rcx, r9
	mov	rdi, r13
.label_731:
	cmp	r8, 3
	jb	.label_619
	nop	dword ptr [rax + rax]
.label_777:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [r14 + rcx - 1]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	mov	rsp, rsp
	movzx	edx, byte ptr [r14 + rcx - 2]
	mov	rsi, qword ptr [rax]
	nop	
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r14 + rcx - 3]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r14 + rcx - 4]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rsp, rsp
	mov	byte ptr [rdi + rcx - 4], dl
	mov	rbp, rbp
	add	rcx, -4
	mov	rbp, rbp
	jne	.label_777
	jmp	.label_619
.label_732:
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, r9
	mov	r13, rdi
	mov	rbx, r9
	lea	rdi, [rdi]
	call	memcpy
	mov	rbp, rbp
	mov	r9, rbx
	mov	rdi, r13
	jmp	.label_619
.label_721:
	mov	rsp, rsp
	mov	eax, 9
	sub	eax, ebx
.label_627:
	lea	rdi, [rdi]
	movsxd	rdx, edx
	nop	
	imul	rdx, rdx, 0x68db8bad
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x2c
	lea	rdi, [rdi]
	add	edx, esi
	add	eax, -4
	jne	.label_627
	mov	r12d, r14d
.label_653:
	lea	rsi, [rsi]
	mov	r8d, edx
	lea	rsi, [rsi]
	shr	r8d, 0x1f
.label_674:
	xor	ebx, ebx
	xor	edi, edi
.label_673:
	cmp	r10d, 0x4f
	jne	.label_639
	test	r8b, r8b
	jne	.label_639
	nop	
	mov	dword ptr [rsp + 0x30], r10d
	xor	eax, eax
	mov	r8b, cl
.label_666:
	lea	rdi, [rdi]
	mov	rbx, r12
	nop	
	mov	dword ptr [rsp + 0x28], eax
	mov	r12, r9
	mov	word ptr [rsp + 0x43], 0x2520
	mov	eax, dword ptr [rsp + 0x30]
	test	eax, eax
	lea	rcx, [rsp + 0x45]
	nop	
	je	.label_642
	mov	byte ptr [rsp + 0x45], al
	lea	rcx, [rsp + 0x46]
.label_642:
	mov	byte ptr [rcx], r8b
	mov	byte ptr [rcx + 1], 0
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xa0]
	lea	rdx, [rsp + 0x43]
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x90]
	call	strftime
	test	rax, rax
	je	.label_659
	lea	rsi, [rsi]
	mov	r8, rbx
	lea	r9, [rax - 1]
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	lea	rsi, [rsi]
	test	r14d, r14d
	nop	
	cmovns	eax, r14d
	cdqe	
	cmp	r9, rax
	mov	rdx, r9
	lea	rdi, [rdi]
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	sub	rcx, rsi
	cmp	rdx, rcx
	nop	
	mov	ebx, dword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	jae	.label_608
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsp, rsp
	test	rdi, rdi
	nop	
	je	.label_665
	lea	rsi, [rsi]
	cmp	r9, rax
	setae	al
	mov	rbp, rbp
	mov	r12, rdx
	test	r8d, r8d
	jne	.label_677
	mov	rbp, rbp
	test	al, al
	jne	.label_677
	mov	rsp, rsp
	movsxd	r14, r14d
	mov	rsp, rsp
	sub	r14, r9
	mov	qword ptr [rsp + 0x98], r9
	mov	rbp, rbp
	cmp	r13d, 0x30
	lea	rsi, [rsi]
	je	.label_692
	cmp	r13d, 0x2b
	mov	rsp, rsp
	jne	.label_691
.label_692:
	lea	rsi, [rsi]
	mov	esi, 0x30
	jmp	.label_696
.label_639:
	mov	r10, r12
	mov	eax, edx
	neg	eax
	lea	rsi, [rsi]
	test	r8b, r8b
	cmove	eax, edx
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x77]
	nop	word ptr cs:[rax + rax]
.label_708:
	test	bl, 1
	lea	rdi, [rdi]
	je	.label_654
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_654:
	lea	rsi, [rsi]
	sar	ebx, 1
	mov	edx, eax
	mov	ecx, 0xcccccccd
	lea	rdi, [rdi]
	imul	rcx, rdx
	lea	rsi, [rsi]
	shr	rcx, 0x23
	lea	rdi, [rdi]
	lea	edx, [rcx + rcx]
	mov	rbp, rbp
	lea	edx, [rdx + rdx*4]
	mov	esi, eax
	sub	esi, edx
	mov	rbp, rbp
	or	esi, 0x30
	mov	rbp, rbp
	mov	byte ptr [r12 - 1], sil
	mov	rbp, rbp
	dec	r12
	nop	
	cmp	eax, 9
	mov	eax, ecx
	ja	.label_708
	test	ebx, ebx
	mov	eax, ecx
	nop	
	jne	.label_708
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x38]
.label_662:
	mov	rbp, rbp
	cmp	r10d, r14d
	cmovl	r10d, r14d
	nop	
	mov	qword ptr [rsp + 0x30], r10
	test	dil, dil
	je	.label_719
	lea	rdi, [rdi]
	mov	dil, 0x2b
.label_719:
	test	r8b, r8b
	mov	r8b, 0x2d
	mov	rbp, rbp
	jne	.label_722
	lea	rdi, [rdi]
	mov	r8b, dil
.label_722:
	cmp	r13d, 0x2d
	jne	.label_725
	mov	rbp, rbp
	test	r8b, r8b
	je	.label_668
	xor	eax, eax
	lea	rdi, [rdi]
	test	r14d, r14d
	lea	rdi, [rdi]
	cmovns	eax, r14d
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x88]
	sub	rcx, rsi
	cmp	rbx, rcx
	lea	rsi, [rsi]
	jae	.label_608
	nop	
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	r9, r9
	je	.label_685
	mov	rbp, rbp
	cmp	eax, 2
	setb	al
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x30]
	nop	
	test	ecx, ecx
	jne	.label_611
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	jne	.label_611
	movsxd	rax, r14d
	mov	qword ptr [rsp + 0x4a0], rax
	lea	rdi, [rdi]
	lea	rdx, [rax - 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rsi
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r9
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x98], r8b
	call	memset
	nop	
	mov	r8b, byte ptr [rsp + 0x98]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x4a0]
	lea	rsi, [rsi]
	lea	r9, [r9 + rax - 1]
	mov	rbp, rbp
	jmp	.label_611
.label_659:
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r9, r12
	jmp	.label_634
.label_725:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	cdqe	
	mov	rsp, rsp
	mov	rcx, r12
	lea	rdx, [rsp + 0x77]
	sub	rcx, rdx
	lea	rsi, [rsi]
	mov	dl, r8b
	nop	
	neg	dl
	sbb	rbx, rbx
	mov	rsp, rsp
	add	rbx, rcx
	mov	rbp, rbp
	add	rbx, rax
	mov	rbp, rbp
	test	ebx, ebx
	lea	rsi, [rsi]
	jle	.label_767
	nop	
	cmp	r13d, 0x5f
	lea	rdi, [rdi]
	jne	.label_778
	movsxd	rdx, ebx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	sub	rax, rsi
	nop	
	cmp	rdx, rax
	jae	.label_608
	mov	rsp, rsp
	xor	edi, edi
	test	r9, r9
	mov	r10d, 0
	je	.label_783
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rsi
	mov	rsp, rsp
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, r9
	nop	
	mov	qword ptr [rsp + 0x28], r9
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x98], r8b
	mov	qword ptr [rsp + 0x4a0], rdx
	nop	
	call	memset
	mov	rdx, qword ptr [rsp + 0x4a0]
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	add	rax, rdx
	mov	r10, rax
.label_783:
	add	rsi, rdx
	sub	r14d, ebx
	cmovg	edi, r14d
	nop	
	test	r8b, r8b
	mov	rsp, rsp
	je	.label_631
	xor	eax, eax
	test	edi, edi
	lea	rsi, [rsi]
	cmovns	eax, edi
	movsxd	rcx, eax
	cmp	ecx, 1
	lea	rdi, [rdi]
	mov	ebx, 1
	mov	rsp, rsp
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x88]
	sub	rcx, rsi
	mov	rsp, rsp
	cmp	rbx, rcx
	nop	
	jae	.label_608
	mov	rbp, rbp
	xor	r9d, r9d
	test	r10, r10
	je	.label_644
	lea	rsi, [rsi]
	cmp	eax, 2
	setb	al
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x30]
	nop	
	test	ecx, ecx
	jne	.label_646
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x98], r8b
	mov	rbp, rbp
	test	al, al
	jne	.label_670
	lea	rdi, [rdi]
	movsxd	rax, edi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x4a0], rax
	mov	qword ptr [rsp + 0x28], rdi
	lea	rdx, [rax - 1]
	mov	qword ptr [rsp + 0x38], rsi
	mov	esi, 0x20
	mov	r14, r10
	mov	rdi, r14
	call	memset
	lea	rsi, [rsi]
	mov	r10, r14
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x4a0]
	lea	rdi, [rdi]
	lea	r10, [r10 + rax - 1]
	nop	
	jmp	.label_738
.label_767:
	test	r8b, r8b
	mov	rsp, rsp
	je	.label_668
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	test	r14d, r14d
	lea	rsi, [rsi]
	cmovns	eax, r14d
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	ecx, 1
	nop	
	mov	ebx, 1
	lea	rdi, [rdi]
	cmova	rbx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	sub	rcx, rsi
	nop	
	cmp	rbx, rcx
	jae	.label_608
	xor	ecx, ecx
	test	r9, r9
	nop	
	je	.label_685
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	test	ecx, ecx
	jne	.label_611
	test	al, al
	jne	.label_611
	mov	byte ptr [rsp + 0x98], r8b
	mov	qword ptr [rsp + 0x38], rsi
	movsxd	rax, r14d
	nop	
	dec	rax
	cmp	r13d, 0x30
	mov	rsp, rsp
	je	.label_694
	nop	
	cmp	r13d, 0x2b
	jne	.label_700
.label_694:
	mov	esi, 0x30
	jmp	.label_703
.label_778:
	mov	rcx, qword ptr [rsp + 0x88]
	sub	rcx, rsi
	cmp	rax, rcx
	jae	.label_608
	lea	rsi, [rsi]
	test	r8b, r8b
	mov	rbp, rbp
	je	.label_718
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rdx, eax
	nop	
	cmp	edx, 1
	lea	rdi, [rdi]
	mov	edi, 1
	cmova	rdi, rdx
	cmp	rdi, rcx
	jae	.label_608
	xor	ecx, ecx
	nop	
	test	r9, r9
	lea	rsi, [rsi]
	je	.label_712
	lea	rdi, [rdi]
	cmp	eax, 2
	setb	al
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x30]
	test	ecx, ecx
	jne	.label_714
	test	al, al
	lea	rdi, [rdi]
	jne	.label_714
	mov	qword ptr [rsp + 0x28], rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x98], r8b
	mov	qword ptr [rsp + 0x38], rsi
	movsxd	rax, r14d
	mov	rbp, rbp
	dec	rax
	cmp	r13d, 0x30
	lea	rdi, [rdi]
	je	.label_729
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	mov	rsp, rsp
	jne	.label_768
.label_729:
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rbp, rbp
	jmp	.label_727
.label_691:
	lea	rsi, [rsi]
	mov	esi, 0x20
.label_696:
	mov	rdx, r14
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	memset
	lea	rdi, [rdi]
	add	rbx, r14
	mov	rdi, rbx
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x98]
	mov	ebx, dword ptr [rsp + 0x28]
.label_677:
	test	bl, 1
	mov	rsp, rsp
	jne	.label_735
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_736
	lea	rsi, [rsp + 0xa1]
	mov	rdx, r9
	mov	r14, rdi
	mov	rbx, r9
	call	memcpy
	nop	
	mov	r9, rbx
	mov	rdi, r14
	lea	rsi, [rsi]
	jmp	.label_617
.label_735:
	mov	rbp, rbp
	test	r9, r9
	je	.label_617
	mov	r14, rdi
	mov	rbx, r9
	call	__ctype_tolower_loc
	mov	rbp, rbp
	mov	r9, rbx
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x30]
	lea	ecx, [rdx + 3]
	lea	rsi, [rsi]
	mov	r8, rdx
	nop	
	add	r8, -2
	mov	rbp, rbp
	test	cl, 3
	mov	rcx, r9
	lea	rdi, [rdi]
	je	.label_760
	lea	rsi, [rsi]
	lea	esi, [rdx + 3]
	mov	rsp, rsp
	and	esi, 3
	lea	rsi, [rsi]
	neg	rsi
	lea	rsi, [rsi]
	mov	rcx, r9
	nop	word ptr cs:[rax + rax]
.label_766:
	movzx	edx, byte ptr [rsp + rcx + 0xa0]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	lea	rsi, [rsi]
	inc	rsi
	mov	rsp, rsp
	jne	.label_766
.label_760:
	cmp	r8, 3
	jb	.label_617
	nop	word ptr [rax + rax]
.label_775:
	movzx	edx, byte ptr [rsp + rcx + 0xa0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [rsp + rcx + 0x9f]
	mov	rsi, qword ptr [rax]
	nop	
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [rsp + rcx + 0x9e]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [rsp + rcx + 0x9d]
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_775
	jmp	.label_617
.label_736:
	test	r9, r9
	mov	rbp, rbp
	je	.label_617
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, rbp
	mov	rbx, r9
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rbp, rbp
	mov	r9, rbx
	nop	
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	lea	ecx, [rdx + 3]
	mov	r8, rdx
	lea	rsi, [rsi]
	add	r8, -2
	test	cl, 3
	lea	rdi, [rdi]
	mov	rcx, r9
	lea	rdi, [rdi]
	je	.label_621
	lea	esi, [rdx + 3]
	and	esi, 3
	lea	rdi, [rdi]
	neg	rsi
	nop	
	mov	rcx, r9
	nop	word ptr cs:[rax + rax]
.label_717:
	movzx	edx, byte ptr [rsp + rcx + 0xa0]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 1], bl
	lea	rsi, [rsi]
	dec	rcx
	inc	rsi
	lea	rsi, [rsi]
	jne	.label_717
.label_621:
	lea	rdi, [rdi]
	cmp	r8, 3
	jb	.label_617
	nop	dword ptr [rax]
.label_772:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rsp + rcx + 0xa0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	nop	
	movzx	edx, byte ptr [rsp + rcx + 0x9f]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rsp, rsp
	mov	byte ptr [rdi + rcx - 2], dl
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rsp + rcx + 0x9e]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 3], dl
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rsp + rcx + 0x9d]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_772
.label_617:
	mov	rbp, rbp
	add	rdi, r9
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, r12
	lea	rsi, [rsi]
	jmp	.label_665
.label_631:
	nop	
	mov	r9, r10
	lea	rdi, [rdi]
	mov	r14d, edi
	nop	
	jmp	.label_668
.label_646:
	mov	qword ptr [rsp + 0x28], rdi
	jmp	.label_616
.label_670:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
.label_738:
	mov	r8b, byte ptr [rsp + 0x98]
.label_616:
	lea	rsi, [rsi]
	mov	byte ptr [r10], r8b
	mov	rbp, rbp
	inc	r10
	mov	r9, r10
	mov	rdi, qword ptr [rsp + 0x28]
.label_644:
	add	rsi, rbx
	lea	rdi, [rdi]
	mov	r14d, edi
	nop	
	jmp	.label_668
.label_700:
	mov	esi, 0x20
.label_703:
	lea	rsi, [rsi]
	mov	rdi, r9
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x4a0], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r9
	lea	rdi, [rdi]
	call	memset
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0x4a0]
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	r9, rax
	nop	
	mov	r8b, byte ptr [rsp + 0x98]
.label_611:
	lea	rdi, [rdi]
	mov	byte ptr [r9], r8b
	lea	rdi, [rdi]
	inc	r9
	mov	rbp, rbp
	mov	rcx, r9
.label_685:
	add	rsi, rbx
	nop	
	mov	r9, rcx
	jmp	.label_668
.label_693:
	test	edi, edi
	je	.label_706
.label_1405:
	lea	rdi, [rdi]
	imul	edx, edx, 0x64
	mov	rbp, rbp
	add	edx, edi
	lea	rsi, [rsi]
	mov	r12d, 6
	mov	dil, 1
	mov	rsp, rsp
	mov	ebx, 4
	lea	rdi, [rdi]
	jmp	.label_673
.label_768:
	mov	esi, 0x20
.label_727:
	mov	rbp, rbp
	mov	rdi, r9
	mov	rdx, rax
	mov	qword ptr [rsp + 0x4a0], rdx
	lea	rsi, [rsi]
	mov	r14, r9
	call	memset
	add	r14, qword ptr [rsp + 0x4a0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r9, r14
	mov	r8b, byte ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x28]
.label_714:
	mov	rbp, rbp
	mov	byte ptr [r9], r8b
	inc	r9
	lea	rsi, [rsi]
	mov	rcx, r9
.label_712:
	add	rsi, rdi
	mov	r9, rcx
.label_718:
	xor	r14d, r14d
	test	r9, r9
	movsxd	rcx, ebx
	mov	ebx, 0
	je	.label_750
	mov	qword ptr [rsp + 0x38], rsi
	mov	esi, 0x30
	mov	rdi, r9
	nop	
	mov	qword ptr [rsp + 0x28], rcx
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rbx, r9
	call	memset
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x38]
	add	rbx, rcx
.label_750:
	nop	
	add	rsi, rcx
	mov	r9, rbx
.label_668:
	lea	rdi, [rdi]
	lea	rbx, [rsp + 0x77]
	sub	rbx, r12
	lea	rdi, [rdi]
	xor	eax, eax
	test	r14d, r14d
	mov	rbp, rbp
	cmovns	eax, r14d
	cdqe	
	lea	rdi, [rdi]
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x88]
	sub	rcx, rsi
	mov	rbp, rbp
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jae	.label_608
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	test	r9, r9
	je	.label_665
	cmp	rbx, rax
	setae	al
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	test	ecx, ecx
	jne	.label_743
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	jne	.label_747
	lea	rsi, [rsi]
	movsxd	r14, r14d
	mov	rsp, rsp
	sub	r14, rbx
	mov	rbp, rbp
	cmp	r13d, 0x30
	je	.label_746
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	lea	rdi, [rdi]
	jne	.label_613
.label_746:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rsi
	nop	
	mov	esi, 0x30
	mov	rsp, rsp
	jmp	.label_754
.label_665:
	mov	rbp, rbp
	add	rsi, rdx
	mov	rsp, rsp
	jmp	.label_655
.label_743:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rsi
	jmp	.label_671
.label_747:
	mov	qword ptr [rsp + 0x38], rsi
	mov	rbp, rbp
	jmp	.label_671
.label_613:
	mov	qword ptr [rsp + 0x38], rsi
	mov	esi, 0x20
.label_754:
	mov	rbp, rbp
	mov	rdi, r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rbp
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	r13, r9
	lea	rdi, [rdi]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	r9, r13
	add	r9, r14
.label_671:
	lea	rsi, [rsi]
	mov	r13, rdx
	mov	rax, qword ptr [rsp + 0x58]
	test	al, al
	je	.label_741
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x77]
	cmp	rax, r12
	je	.label_663
	mov	r14, r9
	mov	rsp, rsp
	call	__ctype_toupper_loc
	nop	
	mov	r9, r14
	lea	rcx, [rsp + 0x77]
	mov	rbp, rbp
	sub	ecx, r12d
	lea	rsi, [rsi]
	lea	r8, [rsp + 0x76]
	nop	
	sub	r8, r12
	lea	rdi, [rdi]
	test	cl, 3
	mov	rcx, rbx
	je	.label_609
	lea	rsi, [rsp + 0x77]
	sub	esi, r12d
	lea	rsi, [rsi]
	and	esi, 3
	mov	rbp, rbp
	neg	rsi
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_699:
	movzx	edi, byte ptr [r12 + rcx - 1]
	mov	rdx, qword ptr [rax]
	mov	dl, byte ptr [rdx + rdi*4]
	lea	rsi, [rsi]
	mov	byte ptr [r9 + rcx - 1], dl
	dec	rcx
	mov	rbp, rbp
	inc	rsi
	jne	.label_699
.label_609:
	cmp	r8, 3
	mov	rbp, rbp
	jb	.label_663
	nop	dword ptr [rax]
.label_740:
	movzx	edx, byte ptr [r12 + rcx - 1]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 1], dl
	nop	
	movzx	edx, byte ptr [r12 + rcx - 2]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 2], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [r12 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [r9 + rcx - 3], dl
	movzx	edx, byte ptr [r12 + rcx - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 4], dl
	mov	rsp, rsp
	add	rcx, -4
	lea	rdi, [rdi]
	jne	.label_740
	jmp	.label_663
.label_741:
	mov	rdi, r9
	mov	rbp, rbp
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	mov	r14, r9
	lea	rdi, [rdi]
	call	memcpy
	mov	rbp, rbp
	mov	r9, r14
.label_663:
	nop	
	add	r9, rbx
	mov	rcx, r9
	nop	
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	rdx, r13
	add	rsi, rdx
	jmp	.label_655
.label_628:
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	esi, 0x20
.label_632:
	mov	rdi, r9
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	r13, r9
	mov	rbp, rbp
	call	memset
	nop	
	mov	r9, r13
	mov	rsi, r12
	add	r9, r14
	mov	cl, byte ptr [rbp]
.label_623:
	mov	byte ptr [r9], cl
	lea	rsi, [rsi]
	jmp	.label_667
.label_734:
	mov	rcx, r9
	mov	rdi, r13
.label_745:
	lea	rdi, [rdi]
	cmp	r8, 3
	lea	rdi, [rdi]
	jb	.label_619
.label_672:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [r14 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r14 + rcx - 3]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r14 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	nop	
	add	rcx, -4
	jne	.label_672
.label_619:
	mov	qword ptr [rsp + 0x48], r14
	add	rdi, r9
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x38]
.label_675:
	add	rsi, r12
	nop	dword ptr [rax]
.label_655:
	mov	rbp, rbp
	mov	r9, rcx
.label_634:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	r14d, 0xffffffff
	test	al, al
	jne	.label_698
.label_764:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x88], 0
	je	.label_701
	lea	rdi, [rdi]
	test	r9, r9
	je	.label_701
	mov	byte ptr [r9], 0
	jmp	.label_701
.label_608:
	mov	rbp, rbp
	xor	esi, esi
.label_701:
	mov	rax, rsi
	add	rsp, 0x4a8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aa30

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
	je	.label_784
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
	jl	.label_786
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_786
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
	jne	.label_785
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_785:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_786:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_784:
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
	#Procedure 0x40ab20
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
	#Procedure 0x40ab70
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
	#Procedure 0x40ab90
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
	#Procedure 0x40abb0
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
	#Procedure 0x40ac20
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
	#Procedure 0x40ac40
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
	je	.label_787
	test	rdx, rdx
	nop	
	je	.label_787
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_787:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ac80
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
	#Procedure 0x40ad30

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
	sub	rsp, 0xf8
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x24], ebx
	mov	r12d, r8d
	mov	r15, rcx
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	qword ptr [rsp + 0xb8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x18], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rax
	mov	dl, bl
	mov	rbp, rbp
	shr	dl, 1
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x94], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x5c], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
.label_903:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_797
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_803]]
.label_1444:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11
	nop	
	mov	esi, r12d
	mov	r14, r10
	nop	
	mov	r13b, r8b
	mov	bl, dl
	mov	rbp, rbp
	call	gettext_quote
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	rsp, rsp
	mov	esi, r12d
	call	gettext_quote
	mov	rsp, rsp
	mov	dl, bl
	mov	rsp, rsp
	mov	edi, r15d
	mov	r8b, r13b
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x98], rax
.label_1445:
	nop	
	mov	qword ptr [rsp + 0xd8], r10
	mov	byte ptr [rsp + 0xf7], r8b
	mov	dword ptr [rsp + 0x38], edi
	test	dl, 1
	mov	rbp, rbp
	mov	r15b, dl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jne	.label_836
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_836
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_905:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_853
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_853:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_905
.label_836:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x98]
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x68], rbx
	mov	r13b, 1
	mov	rbp, rbp
	mov	sil, r15b
	mov	r10, qword ptr [rsp + 0xd8]
	nop	
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	edi, dword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jmp	.label_788
.label_1437:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_788
.label_1440:
	lea	rsi, [rsi]
	mov	al, 1
.label_1438:
	lea	rsi, [rsi]
	mov	dl, 1
.label_1441:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_888
	mov	rbp, rbp
	mov	cl, al
.label_888:
	mov	al, cl
.label_1439:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_891
	test	rbp, rbp
	je	.label_897
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_876
.label_891:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_876
.label_1442:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_906
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_911
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_817
.label_1443:
	mov	r13b, 1
	mov	rsp, rsp
	mov	r9d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	sil, 1
	lea	rsi, [rsi]
	jmp	.label_788
.label_897:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_876:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_788
.label_906:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_817
.label_911:
	nop	
	mov	r14d, 1
.label_817:
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	sil, dl
	nop	word ptr cs:[rax + rax]
.label_788:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x46], r13b
	cmp	qword ptr [rsp + 0x130], 0
	mov	rbp, rbp
	setne	r12b
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	r15b
	sete	al
	mov	cl, r13b
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rsp + 0x37], cl
	lea	rsi, [rsi]
	sete	byte ptr [rsp + 0xf6]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0x83], bl
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xa0], 0
	lea	rsi, [rsi]
	setne	cl
	mov	dl, cl
	lea	rsi, [rsi]
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x56], dl
	mov	rbp, rbp
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc6], bl
	sete	dl
	lea	rdi, [rdi]
	and	al, bl
	mov	byte ptr [rsp + 0x47], al
	and	r12b, bl
	mov	byte ptr [rsp + 0x57], r12b
	mov	rsp, rsp
	or	dl, r15b
	mov	byte ptr [rsp + 0xc7], dl
	and	r13b, sil
	mov	rbp, rbp
	and	r13b, cl
	mov	byte ptr [rsp + 0xb7], r13b
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_837
	nop	dword ptr [rax]
.label_832:
	mov	rsp, rsp
	inc	r15
.label_837:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_821
	cmp	r15, r10
	jne	.label_883
	jmp	.label_849
	nop	dword ptr [rax]
.label_821:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_886
.label_883:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_887
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_893
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_893
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	rdi, r11
	mov	r12b, r8b
	mov	r13, r9
	mov	r15, r14
	lea	rsi, [rsi]
	mov	r14, r11
	nop	
	call	strlen
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, r15
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x38]
	mov	r9, r13
	mov	r8b, r12b
	mov	r10, rax
.label_893:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_792
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_796
	nop	dword ptr [rax]
.label_887:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_796
	nop	word ptr cs:[rax + rax]
.label_792:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r15d, edi
	lea	rdi, [rdi]
	mov	r13, r9
	mov	rsp, rsp
	mov	r12b, r8b
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [r11 + rax]
	nop	
	mov	r14, r11
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], eax
	mov	rsp, rsp
	jne	.label_835
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xc6], 0
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r8b, r12b
	lea	rsi, [rsi]
	mov	r9, r13
	nop	
	mov	edi, r15d
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r15, qword ptr [rsp + 0x88]
	je	.label_796
	jmp	.label_819
.label_835:
	mov	r10, rbx
	mov	r8b, r12b
	mov	r9, r13
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	r11, r14
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x88]
	nop	dword ptr [rax + rax]
.label_796:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_865
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_866]]
.label_1266:
	test	r15, r15
	jne	.label_798
	jmp	.label_875
.label_1270:
	xor	eax, eax
	cmp	r10, -1
	je	.label_878
	test	r15, r15
	jne	.label_880
	nop	
	cmp	r10, 1
	je	.label_875
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_827
.label_1259:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_884
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_819
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_892
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_892
	cmp	r14, rbp
	jae	.label_896
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_896:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_833
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_833:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_910
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_910:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_892:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_790
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_790:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_800
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_806
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_808
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_816
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_816:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_828
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_828:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_827
.label_1260:
	mov	bl, 0x62
	nop	
	jmp	.label_845
.label_1261:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_794
.label_1262:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_845
.label_1263:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_845
.label_1264:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_794
.label_1267:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_864
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_857
	nop	
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, rcx
	mov	rsp, rsp
	test	rdx, rdx
	setne	cl
	lea	rsi, [rsi]
	or	cl, al
	mov	rbp, rbp
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x48], rdx
	mov	rsp, rsp
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_861
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_861:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_877
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_877:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_839
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_839:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_864:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_827
.label_1268:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_890
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_798
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_798
	nop	
	jmp	.label_902
.label_1269:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_904
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_908
	jmp	.label_912
.label_865:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_885
	mov	rbp, rbp
	mov	rbx, r10
	mov	rbp, r11
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	r11, rbp
	nop	
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r12*2]
	shr	r13d, 0xe
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_860
.label_878:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_814
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_814
.label_875:
	mov	dl, 1
.label_1265:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_823
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_827
.label_884:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_832
	jmp	.label_798
.label_904:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_794
.label_908:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_795
.label_794:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_844
.label_845:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_827
	jmp	.label_851
.label_885:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_855
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_855:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_840
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_916:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [r11 + rax]
	mov	rsp, rsp
	mov	rdx, r10
	lea	rsi, [rsi]
	sub	rdx, rax
	lea	rdi, [rsp + 0x58]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -2
	lea	rdi, [rdi]
	je	.label_850
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_846
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_915
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_899
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_909:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_914
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_791
.label_914:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_909
.label_899:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_802
	mov	rbp, rbp
	xor	r13d, r13d
.label_802:
	lea	rbp, [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	add	rax, rbx
	mov	rdi, rbp
	nop	
	mov	rbx, rax
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	je	.label_916
	jmp	.label_807
	nop	
.label_840:
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, r10
	lea	rdi, [rdi]
	sub	rdx, rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_842
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_846
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_850
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_858
	xor	r13d, r13d
.label_858:
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	add	rax, rbp
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_840
	lea	rsi, [rsi]
	jmp	.label_807
.label_814:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_827
.label_890:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_798
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_798
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_798
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_873
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_870
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_805
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_831
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_831:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_907
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_907:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_848
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_848:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_889
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_889:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_827
.label_798:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_827:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_810
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_815
	nop	
	jmp	.label_826
	nop	dword ptr [rax + rax]
.label_810:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_826
.label_815:
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	lea	rsi, [rsi]
	mov	cl, r12b
	shl	esi, cl
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
	jne	.label_829
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_838
	nop	word ptr cs:[rax + rax]
.label_826:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_838:
	mov	bl, r12b
	je	.label_795
	jmp	.label_851
.label_829:
	mov	bl, r12b
.label_851:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_819
	cmp	r9d, 2
	jne	.label_854
	mov	al, dil
	and	al, 1
	jne	.label_854
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_859
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_859:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_863
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_863:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_868
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_868:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_854:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_874
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_874:
	mov	rbp, rbp
	inc	r14
	jmp	.label_882
.label_880:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_827
.label_800:
	xor	r13d, r13d
	jmp	.label_827
.label_806:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_827
.label_808:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_827
.label_846:
	xor	r13d, r13d
.label_842:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_807
.label_850:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_898
	lea	rax, [r11 + r15]
.label_913:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_879
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_913
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_807
.label_898:
	xor	r13d, r13d
	jmp	.label_807
.label_879:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_807
.label_915:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_807:
	mov	rbp, rbp
	mov	rbx, r10
.label_860:
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	cl, r13b
	lea	rdi, [rdi]
	or	cl, byte ptr [rsp + 0xf6]
	cmp	rdx, 1
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0xd0]
	mov	edi, dword ptr [rsp + 0x38]
	ja	.label_824
	test	cl, cl
	je	.label_824
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_827
.label_824:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_830
	nop	dword ptr [rax]
.label_818:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_830:
	mov	rsp, rsp
	test	cl, cl
	je	.label_841
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_843
	cmp	r14, rbp
	jae	.label_847
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_847:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_843:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_856
	nop	dword ptr [rax + rax]
.label_841:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_862
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_822
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_822
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_869
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_869:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_793
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_793:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_881
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_881:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_822:
	cmp	r14, rbp
	jae	.label_871
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_871:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_820
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_820:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_825
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_825:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_856:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_795
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_799
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_799
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_852
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_852:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_894
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_894:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_799:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_818
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_818
	nop	word ptr cs:[rax + rax]
.label_795:
	test	dil, 1
	je	.label_834
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_834
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_901
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_901:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_812
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_812:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_834:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_882:
	cmp	r14, rbp
	jae	.label_813
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_813:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_832
.label_873:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_827
.label_870:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_827
	nop	word ptr [rax + rax]
.label_849:
	nop	
	mov	rcx, r15
.label_886:
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	al
	mov	rbp, rbp
	test	r14, r14
	mov	rsp, rsp
	setne	dl
	cmp	byte ptr [rsp + 0xc6], 0
	lea	rsi, [rsi]
	je	.label_872
	mov	rsp, rsp
	or	al, dl
	je	.label_900
.label_872:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], r11
	cmp	r9d, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x46]
	nop	
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_811
	mov	rsp, rsp
	or	al, dl
	jne	.label_811
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_895
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_811
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	mov	r12d, r9d
	mov	al, bl
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	dl, sil
	mov	r13, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	je	.label_903
.label_811:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_789
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_789
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_789
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_804:
	cmp	r14, rbp
	jae	.label_801
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_801:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_804
.label_789:
	cmp	r14, rbp
	jae	.label_809
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_809
.label_823:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_819
.label_791:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_819
.label_862:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_819
.label_900:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_819
.label_844:
	nop	
	mov	r9d, 2
.label_819:
	cmp	byte ptr [rsp + 0x37], 0
	mov	r8d, 4
	mov	rbp, rbp
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	nop	
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r11
	nop	
	mov	rcx, r10
.label_867:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_809:
	lea	rdi, [rdi]
	mov	rax, r14
	lea	rdi, [rdi]
	add	rsp, 0xf8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_895:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x130]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x24]
	jmp	.label_867
.label_857:
	mov	r9d, 2
	jmp	.label_819
.label_912:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_819
.label_902:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_819
.label_805:
	mov	r9d, 5
	nop	
	jmp	.label_819
.label_797:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c1d0
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
	#Procedure 0x40c310
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
	je	.label_917
	mov	qword ptr [rax], rbx
.label_917:
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
	#Procedure 0x40c460
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_918
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_922:
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
	jl	.label_922
.label_918:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_921
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_919]], OFFSET FLAT:slot0
.label_921:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_920
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_920:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c520
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c530

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
	js	.label_928
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_924
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_925
.label_924:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_929
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
	jne	.label_927
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_927:
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
.label_925:
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
	ja	.label_926
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
	je	.label_923
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_923:
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
.label_926:
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
.label_928:
	lea	rdi, [rdi]
	call	abort
.label_929:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c7a0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c7b0
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
	#Procedure 0x40c7e0
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
	#Procedure 0x40c810
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
	je	.label_930
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
.label_930:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c8a0
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
	je	.label_931
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
.label_931:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c940
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
	je	.label_932
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
.label_932:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c9d0
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
	je	.label_933
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
.label_933:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40ca40
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_934]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_935]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_936]]
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
	#Procedure 0x40cae0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_934]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_935]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_936]]
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
	#Procedure 0x40cb80

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_934]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_935]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_936]]
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
	#Procedure 0x40cbf0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_934]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_935]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_936]]
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
	#Procedure 0x40cc60

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
	je	.label_937
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
.label_937:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40cd40
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_934]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_935]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_936]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_938
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_938
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
.label_938:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40cdd0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_934]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_935]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_936]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_939
	test	rdx, rdx
	je	.label_939
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
.label_939:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ce60
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_934]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_935]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_936]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_940
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_940
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
.label_940:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cf00
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_934]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_935]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_936]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_941
	test	rsi, rsi
	je	.label_941
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
.label_941:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cfa0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cfb0
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
	#Procedure 0x40cfd0
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
	#Procedure 0x40cff0

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
	#Procedure 0x40d020

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
	jne	.label_943
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_945
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_944
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_944
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_944
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_944
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_944
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_944
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_943
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_943
.label_945:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_944
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_944
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_944
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_944
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_944
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_944
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_942
.label_944:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_943:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_942:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_943
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_943
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d190

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d1b0

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
	je	.label_953
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
	jmp	.label_955
.label_953:
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_955:
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
	ja	.label_951
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_947]]
.label_1392:
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
.label_951:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_954
.label_1393:
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
.label_1394:
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
.label_1395:
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
	jmp	.label_952
.label_1396:
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
	jmp	.label_949
.label_1397:
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
	jmp	.label_948
.label_1398:
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
.label_948:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_949:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_952:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_946
.label_1400:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_954:
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
	jmp	.label_950
.label_1399:
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
.label_950:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_946:
	mov	rbp, rbp
	call	__fprintf_chk
.label_1391:
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
	#Procedure 0x40d5a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_956:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_956
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d5d0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_960:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_957
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_959
	nop	word ptr cs:[rax + rax]
.label_957:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_959:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_958
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_960
.label_958:
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
	#Procedure 0x40d660

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_961
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
.label_961:
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
.label_963:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_962
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_964
	nop	dword ptr [rax + rax]
.label_962:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_964:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_965
	inc	r9
	cmp	r9, 0xa
	jb	.label_963
.label_965:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d7a0
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
	mov	ecx, OFFSET FLAT:.str.18_0
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
	#Procedure 0x40d830
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
	jb	.label_966
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_967
	test	rax, rax
	je	.label_966
.label_967:
	nop	
	pop	rbx
	ret	
.label_966:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d880

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_968
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_969
.label_968:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_969:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d8b0
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
	jb	.label_971
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_970
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_970
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_970:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_972
	test	rax, rax
	je	.label_971
.label_972:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_971:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d930

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_973
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_973
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_973:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_974
	test	rax, rax
	nop	
	je	.label_975
.label_974:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_975:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d980
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_976
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_980
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_979
.label_976:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_982
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_982:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_977
.label_979:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_978
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_978
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_978:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_981
	test	rax, rax
	mov	rbp, rbp
	je	.label_980
.label_981:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_980:
	call	xalloc_die
.label_977:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da60
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_984
	test	rax, rax
	mov	rbp, rbp
	je	.label_983
.label_984:
	pop	rbx
	ret	
.label_983:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40da80

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_985
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_988
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_989
	call	free
	xor	eax, eax
	jmp	.label_986
.label_985:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_987
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_989:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_986
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_987
.label_986:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_987:
	mov	rbp, rbp
	call	xalloc_die
.label_988:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40db10
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
	je	.label_990
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_991
.label_990:
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
.label_991:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db70
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
	jb	.label_992
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_992
	pop	rcx
	ret	
.label_992:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40dba0

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
	je	.label_994
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_993
.label_994:
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
.label_993:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dc00
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
	je	.label_995
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_996
.label_995:
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
.label_996:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40dc60

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_4
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
	#Procedure 0x40dcb0

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	nop	
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	nop	
	mov	r14, r9
	lea	rdi, [rdi]
	mov	r12, rcx
	mov	r13, rdx
	lea	rsi, [rsi]
	mov	eax, esi
	mov	r15, rdi
	mov	rbp, rbp
	lea	rcx, [rsp]
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, eax
	nop	
	call	xstrtoimax
	mov	rsp, rsp
	test	eax, eax
	je	.label_1001
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	je	.label_1003
	mov	rbp, rbp
	cmp	eax, 3
	jne	.label_998
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_997
.label_1001:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	nop	
	jl	.label_1004
	cmp	rbx, r12
	jle	.label_999
.label_1004:
	mov	rsp, rsp
	cmp	rbx, 0x40000000
	lea	rsi, [rsi]
	jl	.label_1000
.label_1003:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_997
.label_998:
	mov	rsp, rsp
	call	__errno_location
.label_997:
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x40]
	nop	
	test	ecx, ecx
	mov	ebx, 1
	nop	
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ebp, 0x16
	mov	rbp, rbp
	cmove	ebp, eax
	mov	rbp, rbp
	mov	rdi, r15
	call	quote
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rsp, rsp
	mov	rcx, r14
	call	error
	nop	
	mov	rbx, qword ptr [rsp]
.label_999:
	mov	rbp, rbp
	mov	rax, rbx
	nop	
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_1000:
	call	__errno_location
	mov	rsp, rsp
	cmp	rbx, -0x40000001
	jg	.label_1002
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_997
.label_1002:
	mov	dword ptr [rax], 0x22
	jmp	.label_997
	nop	
	.section	.text
	.align	32
	#Procedure 0x40de00

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rax
	mov	rsp, rsp
	mov	r10, r8
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rsp, rsp
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	r8, rax
	mov	r9, r10
	call	xnumtoimax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40de40

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
	jae	.label_1021
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
	je	.label_1051
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_1053
	mov	rbp, rbp
	mov	r13d, 4
	lea	rsi, [rsi]
	cmp	eax, 0x22
	jne	.label_1008
	mov	rsp, rsp
	mov	r13d, 1
.label_1053:
	test	r14, r14
	nop	
	je	.label_1061
	lea	rsi, [rsi]
	mov	r12d, r13d
	mov	rbp, rbp
	jmp	.label_1006
.label_1051:
	mov	rbp, rbp
	mov	r13d, 4
	test	r14, r14
	je	.label_1008
	lea	rsi, [rsi]
	mov	r15, rcx
	nop	
	movsx	esi, byte ptr [r12]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_1008
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
	je	.label_1008
.label_1006:
	nop	
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_1031
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, r13d
	call	strchr
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1026
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	r8d, 0x400
	mov	rsp, rsp
	lea	eax, [r13 - 0x45]
	mov	rsp, rsp
	cmp	eax, 0x2f
	nop	
	ja	.label_1017
	lea	rdi, [rdi]
	movabs	rcx, 0x814400308945
	mov	rbp, rbp
	bt	rcx, rax
	lea	rdi, [rdi]
	jae	.label_1017
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
	je	.label_1017
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	movsx	eax, byte ptr [rax + 1]
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	r8d, 0x400
	mov	rsp, rsp
	cmp	eax, 0x42
	je	.label_1005
	lea	rdi, [rdi]
	cmp	eax, 0x44
	mov	rbp, rbp
	je	.label_1005
	cmp	eax, 0x69
	lea	rdi, [rdi]
	jne	.label_1017
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	movzx	eax, byte ptr [rax + 2]
	mov	r15d, 3
	cmp	eax, 0x42
	nop	
	je	.label_1027
	mov	r15d, 1
.label_1027:
	mov	r8d, 0x400
	jmp	.label_1017
.label_1061:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	jmp	.label_1008
.label_1031:
	mov	rbp, rbp
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jmp	.label_1038
.label_1005:
	mov	r15d, 2
	mov	r8d, 0x3e8
.label_1017:
	movabs	r9, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	r13d, 0x59
	jg	.label_1040
	lea	eax, [r13 - 0x42]
	lea	rdi, [rdi]
	cmp	eax, 0xe
	ja	.label_1042
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1047]]
.label_1251:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	lea	rsi, [rsi]
	jl	.label_1011
	nop	
	mov	r13, rbp
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	lea	rsi, [rsi]
	jmp	.label_1014
.label_1040:
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_1057
	lea	rsi, [rsi]
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_1043
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r13, rbp
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1012]]
.label_1316:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	nop	
	jl	.label_1011
	mov	r13, rbp
	shl	r13, 9
	lea	rsi, [rsi]
	movabs	rax, 0x3fffffffffffff
	jmp	.label_1014
.label_1042:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	je	.label_1023
	cmp	r13d, 0x59
	jne	.label_1026
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
	jl	.label_1029
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
.label_1029:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1032
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
.label_1032:
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
	jl	.label_1058
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
.label_1058:
	or	ebx, edi
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	jl	.label_1022
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
.label_1022:
	or	r11d, ebx
	cmp	rsi, r10
	mov	r14d, 1
	mov	rcx, r13
	nop	
	mov	ebx, 1
	nop	
	jl	.label_1034
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
.label_1034:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1049
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
.label_1049:
	or	r14d, ebx
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_1039
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
.label_1039:
	lea	rsi, [rsi]
	or	edi, r14d
	cmp	rcx, r10
	jl	.label_1016
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
.label_1016:
	mov	rbp, rbp
	or	ebx, edi
	nop	
	jmp	.label_1009
.label_1057:
	cmp	r13d, 0x74
	je	.label_1023
	cmp	r13d, 0x77
	jne	.label_1026
	mov	rbp, rbp
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_1036
.label_1011:
	inc	r9
	mov	rsp, rsp
	mov	ebx, 1
	mov	r13, r9
	lea	rsi, [rsi]
	jmp	.label_1009
.label_1253:
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
	jl	.label_1044
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
.label_1044:
	nop	
	cmp	rcx, rdi
	mov	rsi, r13
	jl	.label_1062
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
.label_1062:
	lea	rsi, [rsi]
	or	r10d, ebx
	cmp	rsi, rdi
	mov	rbp, rbp
	mov	ebx, 1
	nop	
	jl	.label_1015
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
.label_1015:
	lea	rdi, [rdi]
	or	ebx, r10d
	jmp	.label_1009
.label_1254:
	lea	rsi, [rsi]
	lea	r13, [r9 + 1]
	lea	rdi, [rdi]
	mov	rax, r13
	cqo	
	idiv	r8
	cmp	rbp, rax
	mov	ebx, 1
	jl	.label_1009
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
	jmp	.label_1009
.label_1255:
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
	jl	.label_1052
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
.label_1052:
	lea	rsi, [rsi]
	cmp	rcx, rdi
	nop	
	jl	.label_1007
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
.label_1007:
	or	ebx, r10d
	lea	rdi, [rdi]
	jmp	.label_1009
.label_1023:
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
	jl	.label_1025
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
.label_1025:
	cmp	rcx, r10
	mov	rsi, r13
	nop	
	jl	.label_1059
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
.label_1059:
	mov	rsp, rsp
	or	r11d, edi
	lea	rdi, [rdi]
	cmp	rsi, r10
	mov	rsp, rsp
	mov	ebx, 1
	mov	rcx, r13
	mov	rbp, rbp
	mov	edi, 1
	jl	.label_1054
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
.label_1054:
	lea	rdi, [rdi]
	or	edi, r11d
	cmp	rcx, r10
	mov	rbp, rbp
	jl	.label_1013
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
.label_1013:
	or	ebx, edi
	jmp	.label_1009
.label_1043:
	nop	
	cmp	r13d, 0x5a
	jne	.label_1026
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
	jl	.label_1030
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
.label_1030:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_1045
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
.label_1045:
	nop	
	or	edi, ebx
	cmp	rsi, r10
	lea	rdi, [rdi]
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	nop	
	jl	.label_1024
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
.label_1024:
	lea	rdi, [rdi]
	or	ebx, edi
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_1028
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
.label_1028:
	or	r11d, ebx
	mov	rbp, rbp
	cmp	rsi, r10
	mov	rsp, rsp
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_1019
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
.label_1019:
	or	ebx, r11d
	mov	rbp, rbp
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_1041
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
.label_1041:
	or	edi, ebx
	cmp	rsi, r10
	nop	
	mov	ebx, 1
	nop	
	jl	.label_1056
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
.label_1056:
	nop	
	or	ebx, edi
	mov	rsp, rsp
	jmp	.label_1009
.label_1026:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	or	r12d, 2
	lea	rsi, [rsi]
	mov	r13d, r12d
	lea	rsi, [rsi]
	jmp	.label_1008
.label_1252:
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
	jl	.label_1055
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
.label_1055:
	mov	rsp, rsp
	cmp	rcx, r10
	mov	rbp, rbp
	mov	rbx, r13
	jl	.label_1037
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
.label_1037:
	or	r14d, edi
	lea	rdi, [rdi]
	cmp	rbx, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_1050
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
.label_1050:
	or	ecx, r14d
	nop	
	cmp	rsi, r10
	mov	rdi, r13
	lea	rsi, [rsi]
	jl	.label_1060
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
.label_1060:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	r14d, 1
	lea	rsi, [rsi]
	jl	.label_1018
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
.label_1018:
	or	r14d, r11d
	cmp	rsi, r10
	jl	.label_1033
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
.label_1033:
	nop	
	or	ebx, r14d
	lea	rdi, [rdi]
	jmp	.label_1009
.label_1256:
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
	jl	.label_1046
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
.label_1046:
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1063
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
.label_1063:
	lea	rdi, [rdi]
	or	r14d, edi
	cmp	rsi, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rbx, r13
	mov	edi, 1
	nop	
	jl	.label_1020
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
.label_1020:
	or	edi, r14d
	mov	rsp, rsp
	cmp	rbx, r10
	mov	rsi, r13
	jl	.label_1035
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
.label_1035:
	or	r11d, edi
	cmp	rsi, r10
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_1048
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
.label_1048:
	or	ebx, r11d
	mov	rsp, rsp
	jmp	.label_1009
.label_1036:
	lea	r13, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_1014:
	nop	
	cmp	rbp, rax
	setg	al
	cmovg	r13, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_1009:
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
	je	.label_1010
	or	ebx, 2
.label_1010:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12d, ebx
.label_1038:
	lea	rdi, [rdi]
	mov	qword ptr [rax], r13
	mov	r13d, r12d
.label_1008:
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
.label_1021:
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eb90

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r14, r8
	mov	qword ptr [rsp + 8], rcx
	mov	ebp, edx
	mov	rbp, rbp
	mov	r13, rdi
	nop	
	cmp	ebp, 0x25
	jae	.label_1101
	test	rsi, rsi
	lea	rsi, [rsi]
	lea	r15, [rsp + 0x10]
	nop	
	cmovne	r15, rsi
	mov	rsp, rsp
	call	__errno_location
	mov	rbx, rax
	mov	rsp, rsp
	mov	dword ptr [rbx], 0
	mov	rdi, r13
	mov	rsi, r15
	mov	edx, ebp
	call	strtol
	nop	
	mov	r12, rax
	mov	rcx, qword ptr [r15]
	cmp	rcx, r13
	nop	
	je	.label_1122
	mov	eax, dword ptr [rbx]
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1065
	lea	rdi, [rdi]
	mov	ebp, 4
	lea	rdi, [rdi]
	cmp	eax, 0x22
	mov	rsp, rsp
	jne	.label_1073
	lea	rdi, [rdi]
	mov	ebp, 1
.label_1065:
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1081
	mov	rbp, rbp
	mov	edx, ebp
	jmp	.label_1097
.label_1122:
	nop	
	mov	ebp, 4
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_1073
	mov	rbx, rcx
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_1073
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strchr
	lea	rsi, [rsi]
	xor	edx, edx
	mov	r12d, 1
	mov	rsp, rsp
	test	rax, rax
	mov	rcx, rbx
	je	.label_1073
.label_1097:
	lea	rsi, [rsi]
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_1100
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24], edx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, r13d
	call	strchr
	mov	rbp, rbp
	test	rax, rax
	je	.label_1099
	mov	r8d, 1
	mov	r11d, 0x400
	nop	
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	ja	.label_1072
	movabs	rcx, 0x814400308945
	lea	rdi, [rdi]
	bt	rcx, rax
	jae	.label_1072
	mov	rbp, rbp
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	call	strchr
	mov	r8d, 1
	lea	rsi, [rsi]
	mov	r11d, 0x400
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1072
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rax + 1]
	mov	r8d, 1
	mov	r11d, 0x400
	lea	rdi, [rdi]
	cmp	eax, 0x42
	je	.label_1080
	cmp	eax, 0x44
	lea	rdi, [rdi]
	je	.label_1080
	cmp	eax, 0x69
	mov	rbp, rbp
	jne	.label_1072
	mov	rax, qword ptr [rsp + 0x18]
	movzx	eax, byte ptr [rax + 2]
	mov	r8d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	lea	rdi, [rdi]
	je	.label_1090
	lea	rdi, [rdi]
	mov	r8d, 1
.label_1090:
	mov	r11d, 0x400
	nop	
	jmp	.label_1072
.label_1081:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [rax], r12
	jmp	.label_1073
.label_1100:
	nop	
	mov	r13, r12
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_1105
.label_1080:
	lea	rsi, [rsi]
	mov	r8d, 2
	lea	rsi, [rsi]
	mov	r11d, 0x3e8
.label_1072:
	mov	rbp, rbp
	movabs	r10, 0x7fffffffffffffff
	cmp	r13d, 0x59
	jg	.label_1104
	lea	rdi, [rdi]
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_1115
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1117]]
.label_1300:
	movabs	rax, 0xffe0000000000000
	mov	rbp, rbp
	cmp	r12, rax
	lea	rsi, [rsi]
	jl	.label_1085
	mov	r13, r12
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	nop	
	jmp	.label_1066
.label_1104:
	cmp	r13d, 0x73
	jg	.label_1075
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	lea	rsi, [rsi]
	ja	.label_1077
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r13, r12
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1082]]
.label_1419:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	mov	rsp, rsp
	jl	.label_1085
	lea	rdi, [rdi]
	mov	r13, r12
	lea	rsi, [rsi]
	shl	r13, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_1066
.label_1115:
	cmp	r13d, 0x54
	je	.label_1095
	lea	rdi, [rdi]
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_1099
	nop	
	lea	r13, [r10 + 1]
	mov	rax, r13
	lea	rdi, [rdi]
	cqo	
	idiv	r11
	mov	rbp, rbp
	mov	r9, rax
	lea	rdi, [rdi]
	cmp	r12, r9
	nop	
	mov	ecx, 1
	mov	rsp, rsp
	mov	rbx, r13
	mov	edi, 1
	lea	rdi, [rdi]
	jl	.label_1102
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	mov	rbx, r12
	lea	rsi, [rsi]
	imul	rbx, r11
	lea	rsi, [rsi]
	cmp	rax, r12
	mov	rsp, rsp
	setl	al
	cmovl	rbx, r10
	mov	rbp, rbp
	movzx	edi, al
.label_1102:
	cmp	rbx, r9
	mov	rbp, rbp
	mov	rsi, r13
	jl	.label_1121
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r10
	div	r11
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	imul	rsi, r11
	nop	
	cmp	rax, rbx
	setl	al
	lea	rsi, [rsi]
	cmovl	rsi, r10
	mov	rsp, rsp
	movzx	ecx, al
.label_1121:
	or	ecx, edi
	mov	rbp, rbp
	cmp	rsi, r9
	lea	rsi, [rsi]
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rbp, r13
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	jl	.label_1078
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	lea	rsi, [rsi]
	imul	rbp, r11
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_1078:
	or	edi, ecx
	cmp	rbp, r9
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_1094
	xor	edx, edx
	nop	
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	lea	rdi, [rdi]
	cmp	rax, rbp
	setl	al
	nop	
	cmovl	rsi, r10
	movzx	ebx, al
.label_1094:
	mov	rsp, rsp
	or	ebx, edi
	lea	rdi, [rdi]
	cmp	rsi, r9
	mov	edi, 1
	mov	rbp, rbp
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rsi, [rsi]
	jl	.label_1107
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r10
	nop	
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	lea	rdi, [rdi]
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	lea	rdi, [rdi]
	movzx	ecx, al
.label_1107:
	or	ecx, ebx
	cmp	rbp, r9
	lea	rdi, [rdi]
	mov	rsi, r13
	jl	.label_1120
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rbp
	mov	rsi, rbp
	imul	rsi, r11
	nop	
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	mov	rsp, rsp
	movzx	edi, al
.label_1120:
	mov	rsp, rsp
	or	edi, ecx
	mov	rsp, rsp
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rsp, rsp
	jl	.label_1076
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsp, rsp
	mov	rbp, rsi
	imul	rbp, r11
	mov	rbp, rbp
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_1076:
	or	ecx, edi
	cmp	rbp, r9
	mov	rbp, rbp
	jl	.label_1092
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rbp
	mov	rsp, rsp
	cmp	rax, rbp
	lea	rsi, [rsi]
	setl	al
	mov	rbp, rbp
	cmovl	r11, r10
	mov	rbp, rbp
	movzx	ebx, al
	mov	r13, r11
.label_1092:
	nop	
	or	ebx, ecx
	jmp	.label_1074
.label_1075:
	mov	rbp, rbp
	cmp	r13d, 0x74
	je	.label_1095
	cmp	r13d, 0x77
	jne	.label_1099
	nop	
	movabs	rax, 0xc000000000000000
	nop	
	cmp	r12, rax
	nop	
	jge	.label_1109
.label_1085:
	lea	rsi, [rsi]
	inc	r10
	lea	rdi, [rdi]
	mov	ebx, 1
	mov	r13, r10
	lea	rsi, [rsi]
	jmp	.label_1074
.label_1302:
	lea	r13, [r10 + 1]
	mov	rax, r13
	lea	rsi, [rsi]
	cqo	
	mov	rbp, rbp
	idiv	r11
	mov	rdi, rax
	cmp	r12, rdi
	lea	rsi, [rsi]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rbp, r13
	mov	rsp, rsp
	mov	ebx, 1
	mov	rsp, rsp
	jl	.label_1118
	xor	edx, edx
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	lea	rdi, [rdi]
	mov	rbp, r12
	imul	rbp, r11
	mov	rbp, rbp
	cmp	rax, r12
	mov	rsp, rsp
	setl	al
	lea	rdi, [rdi]
	cmovl	rbp, r10
	mov	rbp, rbp
	movzx	ebx, al
.label_1118:
	cmp	rbp, rdi
	lea	rdi, [rdi]
	mov	rsi, r13
	jl	.label_1086
	xor	edx, edx
	mov	rax, r10
	div	r11
	lea	rsi, [rsi]
	mov	rsi, rbp
	lea	rdi, [rdi]
	imul	rsi, r11
	mov	rbp, rbp
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1086:
	mov	rsp, rsp
	or	ecx, ebx
	cmp	rsi, rdi
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_1096
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_1096:
	or	ebx, ecx
	jmp	.label_1074
.label_1303:
	mov	rsp, rsp
	lea	r13, [r10 + 1]
	mov	rbp, rbp
	mov	rax, r13
	cqo	
	idiv	r11
	cmp	r12, rax
	lea	rdi, [rdi]
	mov	ebx, 1
	jl	.label_1074
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, r10
	div	r11
	mov	rsp, rsp
	imul	r11, r12
	lea	rdi, [rdi]
	cmp	rax, r12
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	r11, r10
	movzx	ebx, al
	mov	rbp, rbp
	mov	r13, r11
	jmp	.label_1074
.label_1304:
	mov	rsp, rsp
	lea	r13, [r10 + 1]
	mov	rsp, rsp
	mov	rax, r13
	nop	
	cqo	
	idiv	r11
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	cmp	r12, rdi
	lea	rdi, [rdi]
	mov	ebx, 1
	nop	
	mov	rsi, r13
	mov	rsp, rsp
	mov	ecx, 1
	jl	.label_1068
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r10
	nop	
	div	r11
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbp, rbp
	imul	rsi, r11
	cmp	rax, r12
	lea	rsi, [rsi]
	setl	al
	cmovl	rsi, r10
	mov	rbp, rbp
	movzx	ecx, al
.label_1068:
	lea	rdi, [rdi]
	cmp	rsi, rdi
	jl	.label_1093
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	mov	rsp, rsp
	setl	al
	mov	rsp, rsp
	cmovl	r11, r10
	movzx	ebx, al
	lea	rsi, [rsi]
	mov	r13, r11
.label_1093:
	or	ebx, ecx
	mov	rsp, rsp
	jmp	.label_1074
.label_1095:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	lea	rdi, [rdi]
	mov	r9, rax
	nop	
	cmp	r12, r9
	lea	rsi, [rsi]
	mov	ecx, 1
	nop	
	mov	rbx, r13
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	jl	.label_1108
	xor	edx, edx
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	lea	rdi, [rdi]
	mov	rbx, r12
	nop	
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	nop	
	cmovl	rbx, r10
	nop	
	movzx	edi, al
.label_1108:
	mov	rbp, rbp
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_1064
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	mov	rsi, rbx
	mov	rsp, rsp
	imul	rsi, r11
	cmp	rax, rbx
	mov	rsp, rsp
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r10
	lea	rsi, [rsi]
	movzx	ecx, al
.label_1064:
	mov	rsp, rsp
	or	ecx, edi
	lea	rdi, [rdi]
	cmp	rsi, r9
	mov	ebx, 1
	lea	rsi, [rsi]
	mov	rbp, r13
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_1083
	xor	edx, edx
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	mov	rbp, rsi
	lea	rdi, [rdi]
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	nop	
	movzx	edi, al
.label_1083:
	lea	rdi, [rdi]
	or	edi, ecx
	mov	rbp, rbp
	cmp	rbp, r9
	mov	rbp, rbp
	jl	.label_1098
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	div	r11
	imul	r11, rbp
	mov	rbp, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	setl	al
	cmovl	r11, r10
	lea	rsi, [rsi]
	movzx	ebx, al
	mov	rsp, rsp
	mov	r13, r11
.label_1098:
	or	ebx, edi
	jmp	.label_1074
.label_1077:
	nop	
	cmp	r13d, 0x5a
	lea	rdi, [rdi]
	jne	.label_1099
	mov	rbp, rbp
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	lea	rsi, [rsi]
	mov	r9, rax
	lea	rdi, [rdi]
	cmp	r12, r9
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	rbx, r13
	mov	edi, 1
	jl	.label_1114
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r10
	div	r11
	lea	rsi, [rsi]
	mov	rbx, r12
	lea	rsi, [rsi]
	imul	rbx, r11
	mov	rsp, rsp
	cmp	rax, r12
	mov	rsp, rsp
	setl	al
	nop	
	cmovl	rbx, r10
	lea	rsi, [rsi]
	movzx	edi, al
.label_1114:
	cmp	rbx, r9
	mov	rsi, r13
	lea	rsi, [rsi]
	jl	.label_1079
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	lea	rdi, [rdi]
	cmp	rax, rbx
	setl	al
	lea	rsi, [rsi]
	cmovl	rsi, r10
	mov	rsp, rsp
	movzx	ecx, al
.label_1079:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_1091
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r10
	lea	rsi, [rsi]
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	nop	
	cmp	rax, rsi
	mov	rsp, rsp
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_1091:
	or	edi, ecx
	mov	rbp, rbp
	cmp	rbp, r9
	nop	
	mov	rsi, r13
	jl	.label_1106
	xor	edx, edx
	mov	rax, r10
	lea	rsi, [rsi]
	div	r11
	mov	rsp, rsp
	mov	rsi, rbp
	imul	rsi, r11
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rdi, [rdi]
	setl	al
	nop	
	cmovl	rsi, r10
	lea	rsi, [rsi]
	movzx	ebx, al
.label_1106:
	lea	rsi, [rsi]
	or	ebx, edi
	mov	rbp, rbp
	cmp	rsi, r9
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, r13
	mov	rbp, rbp
	mov	ecx, 1
	jl	.label_1116
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r10
	mov	rbp, rbp
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	nop	
	setl	al
	mov	rsp, rsp
	cmovl	rbp, r10
	lea	rsi, [rsi]
	movzx	ecx, al
.label_1116:
	mov	rsp, rsp
	or	ecx, ebx
	lea	rdi, [rdi]
	cmp	rbp, r9
	nop	
	mov	rsi, r13
	nop	
	jl	.label_1067
	xor	edx, edx
	nop	
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	lea	rsi, [rsi]
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	edi, al
.label_1067:
	or	edi, ecx
	mov	rbp, rbp
	cmp	rsi, r9
	mov	ebx, 1
	jl	.label_1070
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	nop	
	mov	r13, r11
.label_1070:
	mov	rbp, rbp
	or	ebx, edi
	jmp	.label_1074
.label_1099:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x24]
	nop	
	or	eax, 2
	mov	rbp, rbp
	mov	ebp, eax
	lea	rdi, [rdi]
	jmp	.label_1073
.label_1301:
	lea	rsi, [rsi]
	lea	r13, [r10 + 1]
	mov	rsp, rsp
	mov	rax, r13
	nop	
	cqo	
	lea	rdi, [rdi]
	idiv	r11
	mov	r9, rax
	nop	
	cmp	r12, r9
	mov	ebx, 1
	mov	rbp, rbp
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_1110
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r10
	div	r11
	mov	rsi, r12
	imul	rsi, r11
	cmp	rax, r12
	mov	rbp, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1110:
	mov	rsp, rsp
	cmp	rsi, r9
	mov	rdi, r13
	mov	rbp, rbp
	jl	.label_1088
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	lea	rdi, [rdi]
	movzx	ebx, al
.label_1088:
	or	ebx, ecx
	lea	rdi, [rdi]
	cmp	rdi, r9
	lea	rdi, [rdi]
	mov	r14d, 1
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rbp, rbp
	mov	ecx, 1
	jl	.label_1084
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	mov	rbp, rbp
	mov	rsi, rdi
	lea	rsi, [rsi]
	imul	rsi, r11
	lea	rsi, [rsi]
	cmp	rax, rdi
	mov	rsp, rsp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1084:
	or	ecx, ebx
	cmp	rsi, r9
	mov	rdi, r13
	jl	.label_1089
	xor	edx, edx
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	imul	rdi, r11
	mov	rsp, rsp
	cmp	rax, rsi
	mov	rbp, rbp
	setl	al
	cmovl	rdi, r10
	movzx	r14d, al
.label_1089:
	or	r14d, ecx
	lea	rsi, [rsi]
	cmp	rdi, r9
	lea	rdi, [rdi]
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_1119
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	lea	rsi, [rsi]
	div	r11
	lea	rdi, [rdi]
	mov	rsi, rdi
	mov	rsp, rsp
	imul	rsi, r11
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1119:
	lea	rsi, [rsi]
	or	ecx, r14d
	mov	rsp, rsp
	cmp	rsi, r9
	jl	.label_1069
	xor	edx, edx
	mov	rax, r10
	nop	
	div	r11
	nop	
	imul	r11, rsi
	mov	rsp, rsp
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	rbp, rbp
	mov	r13, r11
.label_1069:
	or	ebx, ecx
	lea	rsi, [rsi]
	jmp	.label_1074
.label_1305:
	nop	
	lea	r13, [r10 + 1]
	mov	rbp, rbp
	mov	rax, r13
	cqo	
	nop	
	idiv	r11
	mov	r9, rax
	lea	rsi, [rsi]
	cmp	r12, r9
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_1112
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, r10
	div	r11
	lea	rsi, [rsi]
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	mov	rsp, rsp
	setl	al
	cmovl	rbx, r10
	nop	
	movzx	edi, al
.label_1112:
	cmp	rbx, r9
	nop	
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_1103
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r10
	mov	rbp, rbp
	div	r11
	mov	rsi, rbx
	nop	
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1103:
	lea	rdi, [rdi]
	or	ecx, edi
	lea	rdi, [rdi]
	cmp	rsi, r9
	nop	
	mov	r14d, 1
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_1113
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r10
	lea	rsi, [rsi]
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	mov	rbp, rbp
	movzx	ebx, al
.label_1113:
	or	ebx, ecx
	mov	rbp, rbp
	cmp	rdi, r9
	lea	rdi, [rdi]
	mov	rcx, r13
	mov	rbp, rbp
	jl	.label_1071
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	lea	rdi, [rdi]
	mov	rcx, rdi
	mov	rsp, rsp
	imul	rcx, r11
	lea	rdi, [rdi]
	cmp	rax, rdi
	mov	rsp, rsp
	setl	al
	nop	
	cmovl	rcx, r10
	movzx	r14d, al
.label_1071:
	nop	
	or	r14d, ebx
	mov	rsp, rsp
	cmp	rcx, r9
	lea	rsi, [rsi]
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_1087
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	mov	rbp, rbp
	div	r11
	imul	r11, rcx
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	nop	
	cmovl	r11, r10
	nop	
	movzx	ebx, al
	mov	r13, r11
.label_1087:
	nop	
	or	ebx, r14d
	mov	rsp, rsp
	jmp	.label_1074
.label_1109:
	lea	r13, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_1066:
	cmp	r12, rax
	lea	rsi, [rsi]
	setg	al
	lea	rdi, [rdi]
	cmovg	r13, r10
	lea	rdi, [rdi]
	movzx	ebx, al
.label_1074:
	or	ebx, dword ptr [rsp + 0x24]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rax, [rcx + r8]
	mov	qword ptr [r15], rax
	lea	rdi, [rdi]
	cmp	byte ptr [rcx + r8], 0
	je	.label_1111
	or	ebx, 2
.label_1111:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, ebx
.label_1105:
	mov	rsp, rsp
	mov	qword ptr [rax], r13
	mov	ebp, edx
.label_1073:
	nop	
	mov	eax, ebp
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_1101:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	lea	rsi, [rsi]
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f930

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	lea	rsi, [rsi]
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	mov	r15, r8
	mov	eax, esi
	nop	
	mov	ebp,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	dec	edi
	nop	
	cmp	edi, 4
	jae	.label_1123
	movsxd	rsi, edi
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_1125]]
	mov	rbp, rbp
	cdqe	
	test	eax, eax
	nop	
	jns	.label_1126
	nop	
	lea	r14, [rsp + 6]
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:.str_7
	mov	rsp, rsp
	sub	rbx, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
	mov	rsp, rsp
	jmp	.label_1124
.label_1126:
	mov	rbp, rbp
	shl	rax, 5
	mov	r14, qword ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str_7
.label_1124:
	xor	edi, edi
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, r14
	mov	r9, r15
	mov	rbp, rbp
	call	error
.label_1123:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f9e0

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
	jae	.label_1151
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
.label_1145:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1145
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
	je	.label_1132
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
	je	.label_1133
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_1137
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_1132
	mov	dword ptr [rsp + 4], 1
.label_1137:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_1148
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_1132
.label_1133:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_1132
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_1132
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
	je	.label_1132
.label_1148:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_1140
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
	je	.label_1147
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1129
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1129
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
	je	.label_1129
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1138
	cmp	eax, 0x44
	nop	
	je	.label_1138
	cmp	eax, 0x69
	jne	.label_1129
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_1152
	lea	rdi, [rdi]
	mov	ecx, 1
.label_1152:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_1129
.label_1140:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_1131
.label_1138:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_1129:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_1139
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_1142
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1146]]
.label_1292:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_1149
.label_1139:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_1150
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_1153
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1127]]
.label_1318:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_1149:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_1134
.label_1142:
	cmp	r13d, 0x54
	nop	
	je	.label_1143
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_1147
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
	jmp	.label_1135
.label_1150:
	cmp	r13d, 0x74
	je	.label_1143
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_1147
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
	jmp	.label_1134
.label_1294:
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
	jmp	.label_1144
.label_1295:
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
	jmp	.label_1130
.label_1296:
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
	jmp	.label_1141
.label_1143:
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
	jmp	.label_1136
.label_1153:
	cmp	r13d, 0x5a
	jne	.label_1147
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
.label_1411:
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
.label_1135:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_1130
.label_1147:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_1132
.label_1293:
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
	jmp	.label_1141
.label_1297:
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
.label_1136:
	or	dl, r10b
.label_1144:
	lea	rsi, [rsi]
	or	dl, bl
.label_1141:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_1130:
	mov	rsp, rsp
	mov	rbp, rsi
.label_1134:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_1128
	or	eax, 2
.label_1128:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_1131:
	mov	qword ptr [rax], rbp
.label_1132:
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
.label_1151:
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4102a0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_1154
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1155
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
	je	.label_1155
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
.label_1154:
	mov	ecx, 1
.label_1155:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410310

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
	js	.label_1157
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_1158
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
	je	.label_1157
.label_1158:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1157
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_1156
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_1156:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1157:
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
	#Procedure 0x4103c0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	ebx, edi
	test	al, al
	je	.label_1173
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1173:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rsi, [rsi]
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_1166
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_1179
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_1163
	mov	rsp, rsp
	test	esi, esi
	jne	.label_1166
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_1177
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1172
.label_1166:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_1178
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_1163
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1159
.label_1179:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1164
.label_1163:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_1165
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1169
.label_1165:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1169:
	mov	edx, dword ptr [rax]
.label_1176:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_1164:
	mov	ebp, eax
.label_1160:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1159:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_1178
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1161
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1167
.label_1178:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1171
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_1174
.label_1177:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1172:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_1176
.label_1161:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1167:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1168
	mov	esi, 0x406
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rsi, [rsi]
	test	ebp, ebp
	jns	.label_1175
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1175
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rdi, [rdi]
	call	fcntl
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	js	.label_1160
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_1162
.label_1175:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1160
.label_1171:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_1174:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_1164
.label_1168:
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	mov	ebp, eax
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_1162:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_1160
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_1160
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1170
	or	ecx, 1
	mov	esi, 2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_1160
.label_1170:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	nop	
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	jmp	.label_1160
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x410790

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1180
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_1180
	test	byte ptr [rbx + 1], 1
	je	.label_1180
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_1180:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4107d0

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
	jne	.label_1181
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1181
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1182
.label_1181:
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
.label_1182:
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
	je	.label_1183
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1183:
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
	#Procedure 0x410880

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
	je	.label_1184
	nop	
	cmp	r15, -2
	jb	.label_1184
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_1184
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_1184:
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
	#Procedure 0x410910

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	mov	rbp, rbp
	je	.label_1185
	mov	rbp, rbp
	mov	rdi, r14
	call	strlen
	nop	
	mov	r15, rax
	inc	r15
.label_1185:
	lea	rdi, [rdi]
	lea	rax, [r15 + 0x11]
	nop	
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	nop	
	cmovae	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1186
	mov	rsp, rsp
	mov	qword ptr [rbx], 0
	test	r14, r14
	lea	rdi, [rdi]
	setne	byte ptr [rbx + 8]
	nop	
	mov	byte ptr [rbx + 9], 0
	lea	rsi, [rsi]
	je	.label_1186
	mov	r12, rbx
	mov	rbp, rbp
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	lea	rsi, [rsi]
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_1186:
	mov	rax, rbx
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4109c0
	.globl tzfree
	.type tzfree, @function
tzfree:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	cmp	rdi, 2
	jb	.label_1188
	nop	dword ptr [rax]
.label_1187:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	jne	.label_1187
.label_1188:
	mov	rsp, rsp
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4109f0

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	nop	
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	r15, rdi
	mov	rsp, rsp
	test	r15, r15
	mov	rbp, rbp
	je	.label_1205
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rdx
	mov	edi, OFFSET FLAT:.str_0
	call	getenv
	mov	r13, rax
	test	r13, r13
	mov	bl, byte ptr [r15 + 8]
	nop	
	je	.label_1192
	nop	
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbp, rbp
	test	bl, bl
	je	.label_1198
	nop	
	lea	rdi, [r15 + 9]
	lea	rdi, [rdi]
	mov	rsi, r13
	call	strcmp
	lea	rdi, [rdi]
	mov	r14d, 1
	test	eax, eax
	je	.label_1197
.label_1198:
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rbp, rbp
	call	strlen
	mov	rbp, rax
	mov	rbp, rbp
	inc	rbp
	nop	
	mov	r12b, 1
	lea	rsi, [rsi]
	jmp	.label_1207
.label_1205:
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsi, rdx
	lea	rdi, [rdi]
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	gmtime_r
.label_1192:
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	xor	r12d, r12d
	mov	r14d, 1
	nop	
	test	bl, bl
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_1197
.label_1207:
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	lea	rsi, [rsi]
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_1206
	mov	rsp, rsp
	mov	qword ptr [r14], 0
	mov	byte ptr [r14 + 8], r12b
	lea	rsi, [rsi]
	mov	byte ptr [r14 + 9], 0
	test	r12b, r12b
	lea	rdi, [rdi]
	je	.label_1189
	lea	rsi, [rsi]
	lea	r12, [r14 + 9]
	mov	rdi, r12
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	byte ptr [r12 + rbp], 0
.label_1189:
	test	bl, bl
	je	.label_1199
	mov	rsp, rsp
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:.str_0
	mov	edx, 1
	mov	rsp, rsp
	call	setenv
	mov	rsp, rsp
	jmp	.label_1202
.label_1199:
	mov	edi, OFFSET FLAT:.str_0
	call	unsetenv
.label_1202:
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	je	.label_1204
	call	__errno_location
	nop	
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	cmp	r14, 2
	jb	.label_1208
	nop	dword ptr [rax + rax]
.label_1191:
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	test	rbx, rbx
	mov	r14, rbx
	lea	rdi, [rdi]
	jne	.label_1191
.label_1208:
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r15d
.label_1206:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1194
.label_1204:
	call	tzset
.label_1197:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
	mov	rsi, rbx
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	mov	rbp, rbp
	mov	r12b, 1
	mov	rsp, rsp
	je	.label_1201
	mov	rdi, r15
	mov	rsi, rbx
	nop	
	call	save_abbr
	lea	rdi, [rdi]
	mov	r12b, al
	xor	r12b, 1
.label_1201:
	mov	rbp, rbp
	cmp	r14, 1
	je	.label_1209
	lea	rdi, [rdi]
	call	__errno_location
	mov	r15, rax
	lea	rsi, [rsi]
	mov	r13d, dword ptr [r15]
	cmp	byte ptr [r14 + 8], 0
	mov	rbp, rbp
	je	.label_1190
	lea	rsi, [r14 + 9]
	mov	edi, OFFSET FLAT:.str_0
	mov	edx, 1
	call	setenv
	jmp	.label_1196
.label_1190:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_0
	call	unsetenv
.label_1196:
	test	eax, eax
	je	.label_1195
	lea	rdi, [rdi]
	mov	r13d, dword ptr [r15]
	xor	ebp, ebp
	mov	rsp, rsp
	jmp	.label_1200
.label_1195:
	nop	
	call	tzset
	mov	bpl, 1
.label_1200:
	mov	rsp, rsp
	cmp	r14, 2
	mov	rsp, rsp
	jb	.label_1203
	nop	
.label_1193:
	mov	rbp, rbp
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	mov	r14, rbx
	mov	rsp, rsp
	jne	.label_1193
.label_1203:
	mov	dword ptr [r15], r13d
	mov	rbx, qword ptr [rsp + 8]
.label_1209:
	xor	eax, eax
	nop	
	xor	bpl, 1
	cmovne	rbx, rax
	test	r12b, r12b
	mov	rsp, rsp
	cmovne	rbx, rax
	mov	rsp, rsp
	mov	rax, rbx
.label_1194:
	lea	rsi, [rsi]
	add	rsp, 0x18
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410cd0

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	mov	r14b, 1
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_1213
	cmp	r15, rbx
	ja	.label_1212
	nop	
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	lea	rsi, [rsi]
	jb	.label_1213
.label_1212:
	mov	ebp, OFFSET FLAT:.str
	nop	
	cmp	byte ptr [rbx], 0
	je	.label_1216
	lea	rbp, [r12 + 9]
	jmp	.label_1218
.label_1217:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	mov	rbp, rbp
	cmovne	r12, rax
.label_1218:
	lea	r13, [r12 + 9]
.label_1215:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1216
	cmp	byte ptr [rbp], 0
	mov	rsp, rsp
	jne	.label_1219
	lea	rsi, [rsi]
	cmp	rbp, r13
	jne	.label_1220
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 8], 0
	je	.label_1210
.label_1219:
	mov	rbp, rbp
	mov	rdi, rbp
	call	strlen
	nop	
	lea	rcx, [rax + rbp + 1]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + rbp + 1], 0
	mov	rbp, rcx
	jne	.label_1215
	lea	rdi, [rdi]
	jmp	.label_1217
.label_1210:
	lea	rdi, [rdi]
	mov	rbp, r13
.label_1220:
	mov	rdi, rbx
	mov	rbp, rbp
	call	strlen
	lea	rdx, [rax + 1]
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	sub	rcx, r13
	mov	rbp, rbp
	mov	rsi, rcx
	not	rsi
	lea	rsi, [rsi]
	cmp	rdx, rsi
	jbe	.label_1211
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
.label_1222:
	xor	r14d, r14d
	jmp	.label_1213
.label_1211:
	add	rcx, rdx
	mov	rbp, rbp
	cmp	rcx, 0x76
	ja	.label_1221
	nop	
	mov	rdi, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	mov	qword ptr [r15 + 0x30], rbp
	jmp	.label_1213
.label_1221:
	add	rax, 0x12
	lea	rdi, [rdi]
	and	rax, 0xfffffffffffffff8
	lea	rsi, [rsi]
	cmp	rdx, 0x77
	mov	rsp, rsp
	mov	r13, rdx
	mov	rbp, rbp
	mov	edi, 0x80
	cmovae	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_1214
	nop	
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	lea	rsi, [rsi]
	mov	rbp, rax
	add	rbp, 9
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r13
	mov	rbx, rax
	mov	rsp, rsp
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_1216:
	mov	qword ptr [r15 + 0x30], rbp
.label_1213:
	mov	rbp, rbp
	mov	al, r14b
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1214:
	mov	qword ptr [r12], 0
	jmp	.label_1222
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410ed0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x48
	mov	rbx, rdi
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1238
	mov	qword ptr [rsp + 0x40], rsi
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_0
	call	getenv
	mov	r13, rax
	lea	rsi, [rsi]
	test	r13, r13
	mov	rsp, rsp
	mov	r12b, byte ptr [rbx + 8]
	mov	rbp, rbp
	je	.label_1227
	test	r12b, r12b
	nop	
	je	.label_1232
	lea	rdi, [rbx + 9]
	mov	rsi, r13
	lea	rdi, [rdi]
	call	strcmp
	lea	rdi, [rdi]
	mov	r15d, 1
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1223
.label_1232:
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	mov	rbp, rax
	inc	rbp
	lea	rsi, [rsi]
	mov	r14b, 1
	jmp	.label_1240
.label_1238:
	nop	
	mov	rdi, rsi
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	jmp	timegm
.label_1227:
	nop	
	xor	r14d, r14d
	lea	rdi, [rdi]
	mov	r15d, 1
	lea	rsi, [rsi]
	test	r12b, r12b
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_1223
.label_1240:
	lea	rdi, [rdi]
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_1229
	nop	
	mov	qword ptr [r15], 0
	lea	rdi, [rdi]
	mov	byte ptr [r15 + 8], r14b
	mov	byte ptr [r15 + 9], 0
	test	r14b, r14b
	mov	rbp, rbp
	je	.label_1242
	lea	r14, [r15 + 9]
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r13
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	memcpy
	mov	byte ptr [r14 + rbp], 0
.label_1242:
	mov	rbp, rbp
	test	r12b, r12b
	nop	
	je	.label_1226
	lea	rsi, [rbx + 9]
	mov	edi, OFFSET FLAT:.str_0
	mov	edx, 1
	call	setenv
	jmp	.label_1235
.label_1226:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str_0
	call	unsetenv
.label_1235:
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1228
	call	__errno_location
	mov	rbp, rax
	mov	rbp, rbp
	mov	r14d, dword ptr [rbp]
	mov	rsp, rsp
	cmp	r15, 2
	jb	.label_1244
	nop	word ptr cs:[rax + rax]
.label_1224:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	mov	rbp, rbp
	mov	rdi, r15
	nop	
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_1224
.label_1244:
	mov	dword ptr [rbp], r14d
	mov	rbp, rbp
	mov	rax, -1
	lea	rdi, [rdi]
	jmp	.label_1229
.label_1228:
	call	tzset
.label_1223:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, rbp
	call	mktime
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, -1
	mov	rbp, rbp
	jne	.label_1236
	mov	rbp, rbp
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	nop	
	call	localtime_r
	mov	rbp, rbp
	test	rax, rax
	je	.label_1243
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	xor	rax, qword ptr [rbp]
	mov	rsp, rsp
	xor	rcx, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	or	edx, eax
	shr	rax, 0x20
	mov	rbp, rbp
	or	edx, eax
	lea	rdi, [rdi]
	shr	rcx, 0x20
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	xor	rax, qword ptr [rbp + 0x10]
	nop	
	mov	esi, eax
	or	esi, ecx
	mov	rbp, rbp
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	rsp, rsp
	mov	edi, dword ptr [rbp + 0x20]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	test	edi, edi
	sete	sil
	test	edx, edx
	mov	rsp, rsp
	sete	cl
	xor	cl, sil
	or	edx, edi
	mov	rbp, rbp
	setns	dl
	and	dl, cl
	lea	rdi, [rdi]
	movzx	ecx, dl
	nop	
	or	ecx, eax
	jne	.label_1243
.label_1236:
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, rbp
	nop	
	call	save_abbr
	test	al, al
	jne	.label_1243
	mov	qword ptr [rsp + 0x38], -1
.label_1243:
	cmp	r15, 1
	je	.label_1234
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rbp, rbp
	mov	r12d, dword ptr [r14]
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 8], 0
	lea	rsi, [rsi]
	je	.label_1231
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:.str_0
	mov	edx, 1
	call	setenv
	jmp	.label_1237
.label_1231:
	mov	edi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	unsetenv
.label_1237:
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_1239
	mov	r12d, dword ptr [r14]
	xor	ebp, ebp
	lea	rsi, [rsi]
	jmp	.label_1241
.label_1239:
	call	tzset
	mov	bpl, 1
.label_1241:
	lea	rsi, [rsi]
	cmp	r15, 2
	jb	.label_1225
	nop	word ptr cs:[rax + rax]
.label_1230:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15]
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_1230
.label_1225:
	mov	dword ptr [r14], r12d
	test	bpl, bpl
	je	.label_1233
.label_1234:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	jmp	.label_1229
.label_1233:
	nop	
	mov	rax, -1
.label_1229:
	mov	rbp, rbp
	add	rsp, 0x48
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411260

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
	jne	.label_1245
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_1246
	test	cl, cl
	mov	rsp, rsp
	jne	.label_1246
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_1246
.label_1245:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1246
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_1246:
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
	#Procedure 0x4112f0

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
	mov	ecx, OFFSET FLAT:.str
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1247
	nop	
	mov	rax, rcx
.label_1247:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	32
	#Procedure 0x411330

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