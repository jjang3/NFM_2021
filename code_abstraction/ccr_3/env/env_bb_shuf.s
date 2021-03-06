	.section	.text
	.align	32
	#Procedure 0x401989
	.globl sub_401989
	.type sub_401989, @function
sub_401989:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40198a
	.globl sub_40198a
	.type sub_40198a, @function
sub_40198a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019c2
	.globl sub_4019c2
	.type sub_4019c2, @function
sub_4019c2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a0a
	.globl sub_401a0a
	.type sub_401a0a, @function
sub_401a0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a2c
	.globl sub_401a2c
	.type sub_401a2c, @function
sub_401a2c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a3d
	.globl sub_401a3d
	.type sub_401a3d, @function
sub_401a3d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a56
	.globl sub_401a56
	.type sub_401a56, @function
sub_401a56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a60
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
	.section	.text
	.align	32
	#Procedure 0x401ad5
	.globl sub_401ad5
	.type sub_401ad5, @function
sub_401ad5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ae0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_10
	test	rax, rax
	je	.label_11
.label_10:
	pop	rbx
	ret	
.label_11:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401afa
	.globl sub_401afa
	.type sub_401afa, @function
sub_401afa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b00

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_13
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401b30

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_23
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
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
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
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
	mov	esi, OFFSET FLAT:label_38
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
	mov	esi, OFFSET FLAT:label_37
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
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
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
	je	.label_33
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_33
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_33:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_31
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_23:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
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
	.section	.text
	.align	32
	#Procedure 0x401e2b
	.globl sub_401e2b
	.type sub_401e2b, @function
sub_401e2b:

	nop	dword ptr [rax + rax]
.label_41:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401e35
	.globl sub_401e35
	.type sub_401e35, @function
sub_401e35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e40
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_41
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_42
	test	rax, rax
	je	.label_41
.label_42:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e70

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_53
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_55
.label_53:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_55:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_43
	cmp	r10d, 0x29
	jae	.label_52
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_54
.label_52:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_54:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_43
	cmp	r10d, 0x29
	jae	.label_50
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_51
.label_50:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_51:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_43
	cmp	r10d, 0x29
	jae	.label_48
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_49
.label_48:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_49:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_43
	cmp	r10d, 0x29
	jae	.label_46
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_47
.label_46:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_47:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_43
	cmp	r10d, 0x29
	jae	.label_44
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_45
.label_44:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_45:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_43
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_43
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_43
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_43
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_43:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x402052
	.globl sub_402052
	.type sub_402052, @function
sub_402052:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402060
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_56]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_57]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_58]
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
	.section	.text
	.align	32
	#Procedure 0x4020b4
	.globl sub_4020b4
	.type sub_4020b4, @function
sub_4020b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020c0

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
	jae	.label_59
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	cmp	rax, 0x40
	jg	.label_60
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_65
	jmp	.label_60
.label_59:
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_62
	nop	word ptr cs:[rax + rax]
.label_70:
	mov	rdi, rbp
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_68
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_70
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r15d, eax
	test	ebp, ebp
	jle	.label_61
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	je	.label_66
.label_61:
	test	r15d, r15d
	jle	.label_60
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	jne	.label_60
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	cmp	byte ptr [rcx], 0
	jne	.label_60
	sub	ebp, r15d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_60
	test	rax, rax
	jg	.label_60
	mov	ecx, r15d
	jmp	.label_63
.label_68:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_65
.label_66:
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	test	rax, rax
	js	.label_60
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_60
	sub	r15d, ebp
	movsxd	rcx, r15d
	cmp	rax, rcx
	jle	.label_67
.label_60:
	mov	eax, 0xffffffff
.label_65:
	mov	dword ptr [r14], eax
	sar	eax, 0x1f
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_67:
	mov	ecx, ebp
.label_63:
	add	rax, rcx
	jmp	.label_65
	.section	.text
	.align	32
	#Procedure 0x402212
	.globl sub_402212
	.type sub_402212, @function
sub_402212:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402220
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40222a
	.globl sub_40222a
	.type sub_40222a, @function
sub_40222a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402230

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
	mov	qword ptr [rsp + 0x10], rdi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_74
	call	setlocale
	mov	edi, OFFSET FLAT:label_196
	mov	esi, OFFSET FLAT:label_197
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_196
	call	textdomain
	mov	dword ptr [rip + exit_failure],  0x7d
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edi, 0x104
	call	xmalloc
	mov	qword ptr [rip + signals],  rax
	xor	esi, esi
	mov	edx, 0x104
	mov	rdi, rax
	call	memset
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	jmp	.label_104
	.section	.text
	.align	32
	#Procedure 0x4022bb
	.globl sub_4022bb
	.type sub_4022bb, @function
sub_4022bb:

	nop	dword ptr [rax + rax]
.label_239:
	mov	al, byte ptr [rsp + 0xe]
.label_104:
	mov	r13d, eax
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	r12, qword ptr [rsp + 0x10]
	mov	edi, r12d
	mov	rsi, r15
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 8
	jle	.label_230
	mov	byte ptr [rsp + 0xe], r13b
	lea	ecx, [rbx - 0x20]
	cmp	ecx, 0x63
	ja	.label_234
	mov	al, 1
	jmp	qword ptr [(rcx * 8) + label_237]
.label_622:
	mov	al, 1
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_239
.label_623:
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_239
.label_627:
	mov	rdi, qword ptr [rip + optarg]
	mov	esi, 1
	call	parse_signal_action_params
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	call	parse_block_signal_params
	jmp	.label_239
.label_629:
	mov	rdi, qword ptr [rip + optarg]
	mov	esi, 1
	call	parse_block_signal_params
	jmp	.label_239
.label_624:
	mov	rbp, qword ptr [rip + optarg]
	call	__ctype_b_loc
	mov	rcx, rax
	mov	rax, qword ptr [rcx]
	dec	rbp
	nop	word ptr [rax + rax]
.label_110:
	movsx	r13, byte ptr [rbp + 1]
	inc	rbp
	movzx	ebx, word ptr [rax + r13*2]
	test	bh, 0x20
	jne	.label_110
	test	r13b, r13b
	mov	al, byte ptr [rsp + 0xe]
	je	.label_104
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x20], r15
	test	rbp, rbp
	je	.label_259
	mov	eax, dword ptr [rip + optind]
	mov	dword ptr [rsp + 0x1c], eax
	mov	rdi, rbp
	call	strlen
	inc	rax
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	r14d, 1
	mov	qword ptr [rsp + 0x50], rbp
	xor	r12d, r12d
	xor	edi, edi
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x28]
	jmp	.label_201
	.section	.text
	.align	32
	#Procedure 0x4023dc
	.globl sub_4023dc
	.type sub_4023dc, @function
sub_4023dc:

	nop	dword ptr [rax]
.label_125:
	movzx	eax, r15b
	inc	rbp
	mov	rcx, qword ptr [r8]
	mov	bx, word ptr [rcx + r13*2]
.label_201:
	mov	edx, r14d
	and	ebx, 0xe000
	shr	ebx, 0xd
	mov	ecx, edi
	or	cl, r12b
	and	cl, 1
	sete	r15b
	and	r15b, bl
	cmovne	eax, esi
	mov	r14d, eax
	add	r14d, edx
	movsx	eax, r13b
	cmp	eax, 0x26
	jg	.label_273
	cmp	eax, 0x22
	je	.label_79
	cmp	eax, 0x24
	jne	.label_80
	test	r12b, 1
	jne	.label_80
	mov	ebx, edi
	mov	rdi, rbp
	call	extract_varname
	test	rax, rax
	je	.label_85
	mov	rdi, rax
	call	getenv
	test	rax, rax
	je	.label_91
	mov	rdi, rax
	call	strlen
	add	qword ptr [rsp + 0x38], rax
.label_91:
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x28]
	mov	edi, ebx
	jmp	.label_80
	.section	.text
	.align	32
	#Procedure 0x40246c
	.globl sub_40246c
	.type sub_40246c, @function
sub_40246c:

	nop	dword ptr [rax]
.label_273:
	cmp	eax, 0x5c
	je	.label_96
	cmp	eax, 0x27
	jne	.label_80
	and	r12b, dil
	test	r12b, 1
	jne	.label_97
	xor	cl, 1
	mov	r12b, cl
	jmp	.label_80
.label_79:
	and	dil, r12b
	test	dil, 1
	jne	.label_107
	xor	cl, 1
	mov	dil, cl
	jmp	.label_80
.label_96:
	movsx	ebx, byte ptr [rbp + 1]
	test	dil, 1
	je	.label_111
	cmp	bl, 0x63
	je	.label_113
.label_111:
	movzx	eax, bl
	cmp	al, 0x76
	ja	.label_114
	jmp	qword ptr [(rax * 8) + label_106]
.label_680:
	inc	rbp
	xor	eax, eax
	cmp	bl, 0x5f
	sete	al
	add	r14d, eax
	nop	word ptr [rax + rax]
.label_80:
	movsx	r13, byte ptr [rbp + 1]
	test	r13, r13
	jne	.label_125
	or	r12b, dil
	test	r12b, 1
	jne	.label_130
	mov	rdi, qword ptr [rsp + 0x38]
	add	rdi, 7
	call	xmalloc
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x10]
	lea	eax, [rax + 2]
	sub	eax, dword ptr [rsp + 0x1c]
	add	eax, r14d
	movsxd	rdi, eax
	shl	rdi, 3
	call	xmalloc
	mov	rdi, rbx
	mov	word ptr [rdi + 4], 0x59
	mov	dword ptr [rdi], 0x4d4d5544
	lea	r14, [rax + 8]
	mov	qword ptr [rax], rdi
	add	rdi, 6
	mov	r15, qword ptr [rsp + 0x50]
	mov	bl, byte ptr [r15]
	test	bl, bl
	je	.label_140
	mov	bpl, 1
	xor	r10d, r10d
	xor	r11d, r11d
	mov	r8, r14
.label_218:
	mov	r9d, r11d
	and	r9b, 1
.label_210:
	mov	r13d, r10d
	or	r13b, r11b
	and	r13b, 1
	mov	r12d, r10d
	and	r12b, 1
	jmp	.label_148
.label_683:
	mov	bl, 0xd
	jmp	.label_77
.label_684:
	mov	bl, 9
	jmp	.label_77
.label_685:
	mov	bl, 0xb
	jmp	.label_77
.label_223:
	dec	r15
	jmp	.label_77
	.section	.text
	.align	32
	#Procedure 0x402594
	.globl sub_402594
	.type sub_402594, @function
sub_402594:

	nop	word ptr cs:[rax + rax]
.label_148:
	test	r9b, r9b
	jne	.label_160
	test	r12b, r12b
	jne	.label_162
	test	r13b, r13b
	jne	.label_163
	mov	rcx, r15
	nop	
.label_248:
	movsx	esi, bl
	lea	edx, [rsi - 9]
	cmp	edx, 0x1e
	ja	.label_167
	mov	r15, rcx
	jmp	qword ptr [(rdx * 8) + label_224]
	.section	.text
	.align	32
	#Procedure 0x4025d5
	.globl sub_4025d5
	.type sub_4025d5, @function
sub_4025d5:

	nop	word ptr cs:[rax + rax]
.label_174:
	movzx	ebx, byte ptr [rcx + 1]
	inc	rcx
.label_663:
	movsx	edx, bl
	cmp	edx, 0x20
	je	.label_174
	cmp	edx, 9
	je	.label_174
	jmp	.label_176
	.section	.text
	.align	32
	#Procedure 0x4025f6
	.globl sub_4025f6
	.type sub_4025f6, @function
sub_4025f6:

	nop	word ptr cs:[rax + rax]
.label_167:
	cmp	esi, 0x5c
	jne	.label_177
	lea	r15, [rcx + 1]
	mov	bl, byte ptr [rcx + 1]
	mov	edx, ebx
	add	dl, 0xde
	movzx	edx, dl
	cmp	dl, 0x41
	ja	.label_168
	jmp	qword ptr [(rdx * 8) + label_120]
	.section	.text
	.align	32
	#Procedure 0x402628

	.globl sub_402628
	.type sub_402628, @function
sub_402628:
	mov	bl, byte ptr [rcx + 2]
	add	rcx, 2
.label_176:
	mov	bpl, 1
	test	bl, bl
	jne	.label_248
	jmp	.label_137
	.section	.text
	.align	32
	#Procedure 0x40263b
	.globl sub_40263b
	.type sub_40263b, @function
sub_40263b:

	nop	dword ptr [rax + rax]
.label_160:
	test	r12b, r12b
	jne	.label_155
	test	r13b, r13b
	jne	.label_199
	nop	word ptr cs:[rax + rax]
.label_212:
	movsx	edx, bl
	lea	ecx, [rdx - 9]
	cmp	ecx, 0x1e
	ja	.label_202
	jmp	qword ptr [(rcx * 8) + label_204]
	.section	.text
	.align	32
	#Procedure 0x402676
	.globl sub_402676
	.type sub_402676, @function
sub_402676:

	nop	word ptr cs:[rax + rax]
.label_211:
	movzx	ebx, byte ptr [r15 + 1]
	inc	r15
.label_641:
	movsx	ecx, bl
	cmp	ecx, 0x20
	je	.label_211
	cmp	ecx, 9
	je	.label_211
	mov	bpl, 1
	test	bl, bl
	jne	.label_212
	jmp	.label_137
	.section	.text
	.align	32
	#Procedure 0x4026a1
	.globl sub_4026a1
	.type sub_4026a1, @function
sub_4026a1:

	nop	word ptr cs:[rax + rax]
.label_162:
	test	r13b, r13b
	jne	.label_217
	nop	dword ptr [rax]
.label_236:
	movsx	edx, bl
	lea	ecx, [rdx - 9]
	cmp	ecx, 0x1e
	ja	.label_103
	jmp	qword ptr [(rcx * 8) + label_226]
	.section	.text
	.align	32
	#Procedure 0x4026d6
	.globl sub_4026d6
	.type sub_4026d6, @function
sub_4026d6:

	nop	word ptr cs:[rax + rax]
.label_233:
	movzx	ebx, byte ptr [r15 + 1]
	inc	r15
.label_665:
	movsx	ecx, bl
	cmp	ecx, 0x20
	je	.label_233
	cmp	ecx, 9
	je	.label_233
	mov	bpl, 1
	test	bl, bl
	jne	.label_236
	jmp	.label_137
	.section	.text
	.align	32
	#Procedure 0x402701
	.globl sub_402701
	.type sub_402701, @function
sub_402701:

	nop	word ptr cs:[rax + rax]
.label_155:
	test	r13b, r13b
	jne	.label_241
	nop	dword ptr [rax]
.label_253:
	movsx	edx, bl
	lea	ecx, [rdx - 9]
	cmp	ecx, 0x1e
	ja	.label_242
	jmp	qword ptr [(rcx * 8) + label_119]
	.section	.text
	.align	32
	#Procedure 0x402736
	.globl sub_402736
	.type sub_402736, @function
sub_402736:

	nop	word ptr cs:[rax + rax]
.label_251:
	movzx	ebx, byte ptr [r15 + 1]
	inc	r15
.label_690:
	movsx	ecx, bl
	cmp	ecx, 0x20
	je	.label_251
	cmp	ecx, 9
	je	.label_251
	mov	bpl, 1
	test	bl, bl
	jne	.label_253
	jmp	.label_137
.label_163:
	inc	r15
	nop	word ptr cs:[rax + rax]
.label_261:
	movsx	ecx, bl
	cmp	ecx, 0x5c
	jne	.label_255
	movzx	ebx, byte ptr [r15]
	mov	ecx, ebx
	add	cl, 0xde
	movzx	ecx, cl
	cmp	cl, 0x41
	ja	.label_168
	jmp	qword ptr [(rcx * 8) + label_260]
.label_583:
	movzx	ebx, byte ptr [r15 + 1]
	add	r15, 2
	test	bl, bl
	mov	bpl, 1
	jne	.label_261
	jmp	.label_137
.label_199:
	movsx	ecx, bl
	cmp	ecx, 0x23
	je	.label_240
	cmp	ecx, 0x5c
	je	.label_266
	cmp	ecx, 0x27
	jne	.label_77
	jmp	.label_194
.label_217:
	movsx	ecx, bl
	cmp	ecx, 0x23
	jle	.label_268
	cmp	ecx, 0x24
	je	.label_269
	cmp	ecx, 0x5c
	jne	.label_77
	mov	bl, byte ptr [r15 + 1]
	inc	r15
	mov	ecx, ebx
	add	cl, 0xde
	movzx	ecx, cl
	cmp	cl, 0x41
	ja	.label_168
	jmp	qword ptr [(rcx * 8) + label_71]
.label_646:
	mov	bl, 0x20
	jmp	.label_77
.label_241:
	movsx	ecx, bl
	cmp	ecx, 0x23
	je	.label_240
	cmp	ecx, 0x5c
	je	.label_112
	jmp	.label_77
.label_268:
	je	.label_240
	cmp	ecx, 0x22
	jne	.label_77
	jmp	.label_94
.label_255:
	add	ecx, -0x22
	cmp	ecx, 5
	ja	.label_223
	jmp	qword ptr [(rcx * 8) + label_89]
.label_578:
	dec	r15
.label_642:
	test	r9b, r9b
	jne	.label_77
	jmp	.label_94
.label_202:
	cmp	edx, 0x5c
	jne	.label_77
.label_266:
	mov	cl, byte ptr [r15 + 1]
	cmp	cl, 0x5c
	je	.label_95
	cmp	cl, 0x27
	jne	.label_77
.label_95:
	inc	r15
	cmp	cl, 0x27
	jne	.label_101
	mov	ebx, ecx
	jmp	.label_77
.label_103:
	cmp	edx, 0x5c
	jne	.label_77
	mov	bl, byte ptr [r15 + 1]
	inc	r15
	mov	ecx, ebx
	add	cl, 0xde
	movzx	ecx, cl
	cmp	cl, 0x41
	ja	.label_168
	jmp	qword ptr [(rcx * 8) + label_274]
.label_716:
	mov	bl, 0x20
	jmp	.label_77
.label_242:
	cmp	edx, 0x5c
	jne	.label_77
.label_112:
	mov	cl, byte ptr [r15 + 1]
	cmp	cl, 0x5c
	je	.label_118
	cmp	cl, 0x27
	jne	.label_77
.label_118:
	inc	r15
	cmp	cl, 0x27
	je	.label_124
.label_101:
	cmp	cl, 0x5c
	mov	ebx, ecx
	je	.label_77
.label_168:
	movsx	ecx, bl
	add	ecx, -0x66
	cmp	ecx, 0x10
	ja	.label_128
	mov	bl, 0xc
	jmp	qword ptr [(rcx * 8) + label_131]
.label_682:
	mov	bl, 0xa
	jmp	.label_77
.label_124:
	mov	ebx, ecx
	jmp	.label_77
.label_177:
	mov	r15, rcx
	jmp	.label_77
.label_579:
	dec	r15
.label_240:
	test	bpl, 1
	je	.label_77
	jmp	.label_137
.label_580:
	dec	r15
.label_643:
	test	r9b, r9b
	jne	.label_77
.label_269:
	mov	byte ptr [rsp + 0xf], r12b
	mov	dword ptr [rsp + 0x44], r11d
	mov	dword ptr [rsp + 0x1c], r10d
	mov	byte ptr [rsp + 0x38], r9b
	mov	r12, r8
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, r15
	call	extract_varname
	mov	qword ptr [rsp + 0x48], rax
	mov	rdi, rax
	call	getenv
	test	rax, rax
	je	.label_149
	mov	rdi, rbx
	test	bpl, 1
	je	.label_150
	mov	byte ptr [rdi], 0
	inc	rdi
	mov	qword ptr [r12], rdi
	add	r12, 8
	xor	ebp, ebp
.label_150:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_156
	mov	rcx, qword ptr [rip + stderr]
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, rax
	mov	rbx, rax
	call	quote
	mov	r8, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_161
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x48]
	call	__fprintf_chk
	mov	rax, rbx
	mov	rdi, qword ptr [rsp + 0x68]
.label_156:
	mov	rsi, rax
	call	stpcpy
	mov	rbx, rax
	jmp	.label_169
.label_149:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_169
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_171
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x48]
	call	__fprintf_chk
.label_169:
	mov	esi, 0x7d
	mov	rdi, r15
	call	strchr
	mov	r15, rax
	mov	rax, qword ptr [rsp + 0x28]
	mov	rdi, rbx
	mov	r8, r12
	mov	r9b, byte ptr [rsp + 0x38]
	mov	r10d, dword ptr [rsp + 0x1c]
	mov	r11d, dword ptr [rsp + 0x44]
	mov	r12b, byte ptr [rsp + 0xf]
	jmp	.label_181
.label_581:
	dec	r15
.label_644:
	test	r12b, r12b
	je	.label_194
	nop	word ptr [rax + rax]
.label_77:
	test	bpl, 1
	je	.label_195
	mov	byte ptr [rdi], 0
	inc	rdi
	mov	qword ptr [r8], rdi
	add	r8, 8
	xor	ebp, ebp
.label_195:
	mov	byte ptr [rdi], bl
	inc	rdi
.label_181:
	mov	bl, byte ptr [r15 + 1]
	inc	r15
	test	bl, bl
	jne	.label_148
	jmp	.label_137
.label_94:
	test	bpl, 1
	je	.label_203
	mov	byte ptr [rdi], 0
	inc	rdi
	mov	qword ptr [r8], rdi
	add	r8, 8
	xor	ebp, ebp
.label_203:
	xor	r12b, 1
	mov	bl, byte ptr [r15 + 1]
	inc	r15
	test	bl, bl
	mov	r10b, r12b
	jne	.label_210
	jmp	.label_137
.label_194:
	test	bpl, 1
	je	.label_213
	mov	byte ptr [rdi], 0
	inc	rdi
	mov	qword ptr [r8], rdi
	add	r8, 8
	xor	ebp, ebp
.label_213:
	xor	r9b, 1
	mov	bl, byte ptr [r15 + 1]
	inc	r15
	test	bl, bl
	mov	r11b, r9b
	jne	.label_218
	jmp	.label_137
.label_625:
	mov	rbp, qword ptr [rip + optarg]
	mov	rsi, qword ptr [rip + usvars_used]
	cmp	rsi, qword ptr [rip + usvars_alloc]
	jne	.label_225
	mov	rdi, qword ptr [rip + usvars]
	test	rdi, rdi
	je	.label_231
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rsi, rax
	jae	.label_235
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	mov	bl, byte ptr [rsp + 0xe]
	jmp	.label_238
.label_626:
	mov	byte ptr [rip + dev_debug],  1
	jmp	.label_239
.label_628:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	call	parse_signal_action_params
	jmp	.label_239
.label_630:
	mov	byte ptr [rip + report_signal_handling],  1
	jmp	.label_239
.label_225:
	mov	rax, qword ptr [rip + usvars]
	mov	bl, byte ptr [rsp + 0xe]
	jmp	.label_249
.label_231:
	test	rsi, rsi
	mov	eax, 0x10
	cmove	rsi, rax
	mov	rax, rsi
	shr	rax, 0x3c
	mov	bl, byte ptr [rsp + 0xe]
	jne	.label_267
.label_238:
	mov	qword ptr [rip + usvars_alloc],  rsi
	shl	rsi, 3
	call	xrealloc
	mov	qword ptr [rip + usvars],  rax
	mov	rsi, qword ptr [rip + usvars_used]
.label_249:
	lea	rcx, [rsi + 1]
	mov	qword ptr [rip + usvars_used],  rcx
	mov	qword ptr [rax + rsi*8], rbp
	mov	al, bl
	jmp	.label_104
.label_140:
	mov	r8, r14
.label_137:
	mov	r12b, byte ptr [rsp + 0xe]
	mov	byte ptr [rdi], 0
	mov	qword ptr [r8], 0
	mov	r15, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r15]
	mov	qword ptr [rax], rcx
	cmp	byte ptr [rip + dev_debug],  1
	mov	r13, rax
	jne	.label_86
	cmp	qword ptr [r14], 0
	mov	rax, r13
	je	.label_86
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, qword ptr [rsp + 0x50]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_272
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
	cmp	byte ptr [rip + dev_debug],  1
	mov	rbp, r14
	jne	.label_275
	mov	rbx, qword ptr [rip + stderr]
	mov	rax, r13
	mov	rbp, rax
	add	rbp, 0x10
	mov	rdi, qword ptr [rax + 8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_81
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_275:
	mov	rdi, qword ptr [rbp]
	jmp	.label_84
	nop	
.label_86:
	lea	rbp, [rax + 8]
	cmp	qword ptr [rax + 8], 0
	mov	rax, rbp
	jne	.label_86
	jmp	.label_90
.label_102:
	mov	rbx, qword ptr [rip + stderr]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_189
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rdi, qword ptr [rbp + 8]
	lea	rbp, [rbp + 8]
.label_84:
	test	rdi, rdi
	je	.label_90
	movzx	eax, byte ptr [rip + dev_debug]
	test	al, al
	jne	.label_102
	jmp	.label_105
.label_90:
	movsxd	rdx, dword ptr [rip + optind]
	mov	rax, qword ptr [rsp + 0x10]
	cmp	edx, eax
	jge	.label_108
	movsxd	rdi, eax
	mov	rax, rdi
	sub	rax, rdx
	lea	rsi, [rdi - 1]
	sub	rsi, rdx
	mov	ecx, eax
	and	ecx, 7
	cmp	rsi, 7
	jae	.label_270
	mov	rsi, rbp
	jmp	.label_117
.label_270:
	sub	rdi, rcx
	mov	rsi, rbp
	nop	word ptr [rax + rax]
.label_123:
	mov	rbx, qword ptr [r15 + rdx*8]
	mov	qword ptr [rsi], rbx
	mov	rbx, qword ptr [r15 + rdx*8 + 8]
	mov	qword ptr [rsi + 8], rbx
	mov	rbx, qword ptr [r15 + rdx*8 + 0x10]
	mov	qword ptr [rsi + 0x10], rbx
	mov	rbx, qword ptr [r15 + rdx*8 + 0x18]
	mov	qword ptr [rsi + 0x18], rbx
	mov	rbx, qword ptr [r15 + rdx*8 + 0x20]
	mov	qword ptr [rsi + 0x20], rbx
	mov	rbx, qword ptr [r15 + rdx*8 + 0x28]
	mov	qword ptr [rsi + 0x28], rbx
	mov	rbx, qword ptr [r15 + rdx*8 + 0x30]
	mov	qword ptr [rsi + 0x30], rbx
	mov	rbx, qword ptr [r15 + rdx*8 + 0x38]
	mov	qword ptr [rsi + 0x38], rbx
	add	rsi, 0x40
	add	rdx, 8
	cmp	rdi, rdx
	jne	.label_123
.label_117:
	test	rcx, rcx
	je	.label_138
	lea	rdx, [r15 + rdx*8]
	neg	rcx
	nop	
.label_142:
	mov	rdi, qword ptr [rdx]
	mov	qword ptr [rsi], rdi
	add	rsi, 8
	add	rdx, 8
	inc	rcx
	jne	.label_142
.label_138:
	lea	rbp, [rbp + rax*8]
.label_108:
	mov	qword ptr [rbp], 0
	xor	eax, eax
	cmp	qword ptr [r13], 0
	je	.label_144
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_147:
	cmp	qword ptr [r14 + rax*8], 0
	lea	rax, [rax + 1]
	jne	.label_147
.label_144:
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rip + optind],  0
	mov	r15, r13
	mov	al, r12b
	mov	r14, qword ptr [rsp + 0x30]
	jmp	.label_104
	nop	word ptr [rax + rax]
.label_105:
	jmp	.label_105
.label_230:
	cmp	ebx, -1
	jne	.label_157
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r12d
	jge	.label_159
	mov	rcx, qword ptr [r15 + rax*8]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_159
	cmp	byte ptr [rcx + 1], 0
	je	.label_187
.label_159:
	test	r13b, r13b
	jne	.label_164
	cmp	qword ptr [rip + usvars_used],  0
	je	.label_186
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_182:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_229
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rip + usvars]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_170
	xor	eax, eax
	call	__fprintf_chk
.label_229:
	mov	rax, qword ptr [rip + usvars]
	mov	rdi, qword ptr [rax + rbx*8]
	call	unsetenv
	test	eax, eax
	jne	.label_180
	inc	rbx
	cmp	rbx, qword ptr [rip + usvars_used]
	jb	.label_182
	jmp	.label_186
.label_187:
	inc	eax
	mov	dword ptr [rip + optind],  eax
.label_164:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_190
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_193
	xor	eax, eax
	call	__fprintf_chk
.label_190:
	mov	qword ptr [rip + __environ], OFFSET FLAT:main.dummy_environ
.label_186:
	mov	qword ptr [rsp + 0x30], r14
	mov	ebx, dword ptr [rip + optind]
	jmp	.label_200
	nop	word ptr cs:[rax + rax]
.label_228:
	mov	ebx, dword ptr [rip + optind]
	inc	ebx
	mov	dword ptr [rip + optind],  ebx
.label_200:
	cmp	ebx, r12d
	jge	.label_209
	movsxd	rax, ebx
	mov	rbp, qword ptr [r15 + rax*8]
	mov	esi, 0x3d
	mov	rdi, rbp
	call	strchr
	mov	r14, rax
	test	r14, r14
	je	.label_209
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_214
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_216
	xor	eax, eax
	mov	rcx, rbp
	call	__fprintf_chk
	movsxd	rax, dword ptr [rip + optind]
	mov	rbp, qword ptr [r15 + rax*8]
.label_214:
	mov	rdi, rbp
	call	putenv
	test	eax, eax
	je	.label_228
	mov	byte ptr [r14], 0
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	call	quote
.label_215:
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_209:
	mov	rcx, qword ptr [rsp + 0x58]
	test	cl, cl
	je	.label_254
	cmp	ebx, r12d
	jl	.label_244
.label_254:
	cmp	qword ptr [rsp + 0x30], 0
	sete	al
	cmp	ebx, r12d
	jl	.label_247
	test	al, al
	je	.label_250
.label_247:
	cmp	ebx, r12d
	jge	.label_252
	mov	qword ptr [rsp + 0x20], r15
	mov	ebx, 1
	lea	r13, [rsp + 0x90]
	lea	r15, [rsp + 0x70]
	nop	dword ptr [rax]
.label_92:
	mov	rax, qword ptr [rip + signals]
	mov	r14d, dword ptr [rax + rbx*4]
	test	r14d, r14d
	je	.label_246
	mov	r12b, 1
	cmp	r14d, 2
	je	.label_257
	cmp	r14d, 4
	je	.label_257
	xor	r12d, r12d
.label_257:
	xor	esi, esi
	mov	edi, ebx
	mov	rdx, r13
	call	sigaction
	mov	ebp, eax
	test	ebp, ebp
	sete	al
	test	r12b, r12b
	jne	.label_263
	test	al, al
	je	.label_264
.label_263:
	dec	r14d
	test	ebp, ebp
	jne	.label_265
	xor	eax, eax
	cmp	r14d, 1
	seta	al
	mov	qword ptr [rsp + 0x90], rax
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r13
	call	sigaction
	mov	ebp, eax
	test	ebp, ebp
	sete	al
	or	r12b, al
	je	.label_271
.label_265:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_246
	mov	edi, ebx
	mov	rsi, r15
	call	sig2str
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_246
	cmp	r14d, 2
	mov	rdi, qword ptr [rip + stderr]
	mov	r9d, OFFSET FLAT:label_72
	mov	eax, OFFSET FLAT:label_73
	cmovb	r9, rax
	test	ebp, ebp
	mov	ebp, OFFSET FLAT:label_74
	mov	eax, OFFSET FLAT:label_75
	cmovne	rbp, rax
	sub	rsp, 8
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_76
	xor	eax, eax
	mov	rcx, r15
	mov	r8d, ebx
	push	rbp
	call	__fprintf_chk
	add	rsp, 0x10
.label_246:
	inc	rbx
	cmp	rbx, 0x41
	jl	.label_92
	cmp	byte ptr [rip + sig_mask_changed],  1
	mov	r15, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x30]
	jne	.label_192
	lea	rbx, [rsp + 0x90]
	mov	rdi, rbx
	call	sigemptyset
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	call	sigprocmask
	test	eax, eax
	jne	.label_158
	mov	ebx, 1
	lea	r13, [rsp + 0x90]
	lea	r15, [rsp + 0x70]
	nop	
.label_143:
	mov	edi, OFFSET FLAT:block_signals
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	je	.label_116
	mov	rdi, r13
	mov	esi, ebx
	call	sigaddset
	mov	ebp, OFFSET FLAT:label_121
	jmp	.label_122
	nop	word ptr cs:[rax + rax]
.label_116:
	mov	edi, OFFSET FLAT:unblock_signals
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	je	.label_129
	mov	rdi, r13
	mov	esi, ebx
	call	sigdelset
	mov	ebp, OFFSET FLAT:label_132
.label_122:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_129
	mov	edi, ebx
	mov	rsi, r15
	call	sig2str
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_129
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_220
	xor	eax, eax
	mov	rcx, r15
	mov	r8d, ebx
	mov	r9, rbp
	call	__fprintf_chk
.label_129:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_143
	lea	rsi, [rsp + 0x90]
	mov	edi, 2
	xor	edx, edx
	call	sigprocmask
	test	eax, eax
	mov	r15, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x10]
	jne	.label_146
.label_192:
	cmp	byte ptr [rip + report_signal_handling],  1
	jne	.label_151
	lea	rbx, [rsp + 0x128]
	mov	rdi, rbx
	call	sigemptyset
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	call	sigprocmask
	test	eax, eax
	jne	.label_158
	mov	ebx, 1
	lea	rbp, [rsp + 0x90]
	lea	r13, [rsp + 0x70]
.label_83:
	xor	esi, esi
	mov	edi, ebx
	mov	rdx, rbp
	call	sigaction
	test	eax, eax
	jne	.label_165
	cmp	qword ptr [rsp + 0x90], 1
	mov	r14d, OFFSET FLAT:label_74
	mov	eax, OFFSET FLAT:label_72
	cmove	r14, rax
	lea	rdi, [rsp + 0x128]
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	mov	r15d, OFFSET FLAT:label_74
	mov	eax, OFFSET FLAT:label_121
	cmovne	r15, rax
	cmp	byte ptr [r14], 0
	movzx	eax, byte ptr [r15]
	je	.label_173
	test	al, al
	mov	r12d, OFFSET FLAT:label_74
	mov	eax, OFFSET FLAT:label_178
	cmovne	r12, rax
	jmp	.label_179
.label_173:
	test	al, al
	mov	r12d, OFFSET FLAT:label_74
	je	.label_165
.label_179:
	mov	edi, ebx
	mov	rsi, r13
	call	sig2str
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_191
	mov	eax, 0
	mov	rcx, r13
	mov	r8d, ebx
	mov	r9, r15
	push	r14
	push	r12
	call	__fprintf_chk
	add	rsp, 0x10
.label_165:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_83
	mov	r15, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x30]
.label_151:
	test	r14, r14
	je	.label_207
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_208
	mov	rbx, qword ptr [rip + stderr]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_256
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_208:
	mov	rdi, r14
	call	chdir
	test	eax, eax
	jne	.label_219
.label_207:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_221
	mov	rdi, qword ptr [rip + stderr]
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [r15 + rax*8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_141
	xor	eax, eax
	call	__fprintf_chk
	mov	ebp, dword ptr [rip + optind]
	cmp	ebp, r12d
	jge	.label_221
	movsxd	rax, ebp
	lea	rbx, [r15 + rax*8]
	nop	
.label_258:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_262
	mov	r15, qword ptr [rip + stderr]
	mov	r14d, ebp
	sub	r14d, dword ptr [rip + optind]
	mov	rdi, qword ptr [rbx]
	call	quote
	mov	r8, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_243
	xor	eax, eax
	mov	rdi, r15
	mov	r15, qword ptr [rsp + 0x20]
	mov	ecx, r14d
	call	__fprintf_chk
.label_262:
	inc	ebp
	add	rbx, 8
	cmp	r12d, ebp
	jne	.label_258
.label_221:
	movsxd	rax, dword ptr [rip + optind]
	lea	rsi, [r15 + rax*8]
	mov	rdi, qword ptr [r15 + rax*8]
	call	execvp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_13
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	r14d, 0x7e
	cmp	ebp, 2
	jne	.label_183
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	mov	esi, 0x20
	call	strchr
	mov	r14d, 0x7f
	test	rax, rax
	je	.label_183
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_183
.label_252:
	mov	rbx, qword ptr [rip + __environ]
	mov	rdx, qword ptr [rbx]
	xor	r14d, r14d
	test	rdx, rdx
	je	.label_183
	xor	r14d, r14d
	test	cl, cl
	mov	ebp, 0xa
	cmovne	ebp, r14d
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_82:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_78
	xor	eax, eax
	mov	ecx, ebp
	call	__printf_chk
	mov	rdx, qword ptr [rbx]
	add	rbx, 8
	test	rdx, rdx
	jne	.label_82
.label_183:
	mov	eax, r14d
	add	rsp, 0x1a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_264:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	jmp	.label_88
.label_180:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rip + usvars]
	mov	rdi, qword ptr [rax + rbx*8]
	call	quote
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_157:
	cmp	ebx, 0xffffff7d
	je	.label_109
	cmp	ebx, 0xffffff7e
	jne	.label_222
	xor	edi, edi
	call	usage
.label_271:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
.label_88:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_97:
	mov	edi, OFFSET FLAT:label_126
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 0x12f
	mov	ecx, OFFSET FLAT:label_127
	call	__assert_fail
.label_107:
	mov	edi, OFFSET FLAT:label_126
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 0x134
	mov	ecx, OFFSET FLAT:label_127
	call	__assert_fail
.label_113:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_133
	jmp	.label_134
.label_234:
	cmp	ebx, 9
	jne	.label_222
.label_621:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_139
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
.label_185:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 0x7d
	call	usage
.label_222:
	mov	edi, 0x7d
	call	usage
.label_109:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_20
	mov	edx, OFFSET FLAT:label_25
	mov	r8d, OFFSET FLAT:label_152
	mov	r9d, OFFSET FLAT:label_153
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_154
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_85:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
.label_679:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_172
	jmp	.label_134
.label_114:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_244:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	jmp	.label_185
.label_250:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	jmp	.label_185
.label_259:
	mov	edi, OFFSET FLAT:label_135
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 0x18b
	mov	ecx, OFFSET FLAT:label_136
	call	__assert_fail
.label_130:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
.label_134:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_158:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	jmp	.label_206
.label_235:
	call	xalloc_die
.label_219:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	jmp	.label_215
.label_146:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_227
.label_206:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_267:
	call	xalloc_die
.label_128:
	mov	edi, OFFSET FLAT:label_98
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 0xd2
	mov	ecx, OFFSET FLAT:label_100
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4036f9
	.globl sub_4036f9
	.type sub_4036f9, @function
sub_4036f9:

	nop	dword ptr [rax]
.label_277:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403705
	.globl sub_403705
	.type sub_403705, @function
sub_403705:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403709

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
	je	.label_276
	test	r15, r15
	je	.label_277
.label_276:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_281:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_278
	mov	eax, OFFSET FLAT:label_279
	jmp	.label_280
	.section	.text
	.align	32
	#Procedure 0x40374f
	.globl sub_40374f
	.type sub_40374f, @function
sub_40374f:

	nop	word ptr cs:[rax + rax]
.label_287:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_282
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_282
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_282
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_282
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_282
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_282
	cmp	byte ptr [rax + 7], 0
	je	.label_281
.label_282:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_283
	mov	eax, OFFSET FLAT:label_284
.label_280:
	cmove	rax, rcx
.label_288:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037a2

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
	jne	.label_288
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_287
	cmp	ecx, 0x55
	jne	.label_282
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_282
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_282
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_282
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_282
	cmp	byte ptr [rax + 5], 0
	jne	.label_282
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_285
	mov	eax, OFFSET FLAT:label_286
	jmp	.label_280
	.section	.text
	.align	32
	#Procedure 0x403810
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_289
	test	rax, rax
	je	.label_290
.label_289:
	pop	rbx
	ret	
.label_290:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40382a
	.globl sub_40382a
	.type sub_40382a, @function
sub_40382a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403830

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_296
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_294
	cmp	dword ptr [rbp], 0x20
	jne	.label_294
.label_296:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_293
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_293:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_291:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_292
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_294:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_291
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_13
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4038f0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403903
	.globl sub_403903
	.type sub_403903, @function
sub_403903:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403910
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
	je	.label_297
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
.label_297:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40397c
	.globl sub_40397c
	.type sub_40397c, @function
sub_40397c:

	nop	dword ptr [rax]
.label_304:
	test	rcx, rcx
	jne	.label_298
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_298:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_302
.label_303:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_301
	test	rbx, rbx
	jne	.label_301
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039cc
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_304
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_300
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_303
.label_301:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_299
	test	rax, rax
	je	.label_300
.label_299:
	pop	rbx
	ret	
.label_302:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403a12
	.globl sub_403a12
	.type sub_403a12, @function
sub_403a12:

	nop	word ptr [rax + rax]
.label_300:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403a20
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
	je	.label_305
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
.label_305:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403a88
	.globl sub_403a88
	.type sub_403a88, @function
sub_403a88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a90

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
	jmp	.label_370
	.section	.text
	.align	32
	#Procedure 0x403b3f
	.globl sub_403b3f
	.type sub_403b3f, @function
sub_403b3f:

	nop	
.label_407:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_390
	or	al, dl
	jne	.label_390
	test	dil, 1
	jne	.label_403
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_390
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_370
	jmp	.label_390
.label_613:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_411
	test	rbp, rbp
	je	.label_326
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_326:
	mov	r14d, 1
	jmp	.label_418
.label_614:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_283
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_367
.label_411:
	xor	r14d, r14d
.label_418:
	mov	eax, OFFSET FLAT:label_283
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_341
	.section	.text
	.align	32
	#Procedure 0x403c0f
	.globl sub_403c0f
	.type sub_403c0f, @function
sub_403c0f:

	nop	
.label_370:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_312
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_318]
.label_615:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_331
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_284
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_616:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_345
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_345
	xor	r14d, r14d
	nop	
.label_314:
	cmp	r14, rbp
	jae	.label_356
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_356:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_314
.label_345:
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
	jmp	.label_367
.label_608:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_367
.label_611:
	mov	al, 1
.label_609:
	mov	r12b, 1
.label_612:
	test	r12b, 1
	mov	cl, 1
	je	.label_377
	mov	ecx, eax
.label_377:
	mov	al, cl
.label_610:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_379
	test	rbp, rbp
	je	.label_385
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_385:
	mov	r14d, 1
	jmp	.label_387
.label_379:
	xor	r14d, r14d
.label_387:
	mov	ecx, OFFSET FLAT:label_284
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_341:
	mov	sil, r12b
.label_367:
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
	jmp	.label_393
	.section	.text
	.align	32
	#Procedure 0x403dd1
	.globl sub_403dd1
	.type sub_403dd1, @function
sub_403dd1:

	nop	word ptr cs:[rax + rax]
.label_415:
	inc	r12
.label_393:
	cmp	r11, -1
	je	.label_423
	cmp	r12, r11
	jne	.label_425
	jmp	.label_428
	.section	.text
	.align	32
	#Procedure 0x403df3
	.globl sub_403df3
	.type sub_403df3, @function
sub_403df3:

	nop	word ptr cs:[rax + rax]
.label_423:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_429
.label_425:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_313
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_321
	cmp	r11, -1
	jne	.label_321
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_321:
	cmp	rbx, r11
	jbe	.label_338
.label_313:
	xor	esi, esi
.label_328:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_339
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_342]
.label_701:
	test	r12, r12
	jne	.label_346
	jmp	.label_349
	.section	.text
	.align	32
	#Procedure 0x403e86
	.globl sub_403e86
	.type sub_403e86, @function
sub_403e86:

	nop	word ptr cs:[rax + rax]
.label_338:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_357
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_328
	jmp	.label_306
.label_357:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_328
.label_705:
	xor	eax, eax
	cmp	r11, -1
	je	.label_372
	test	r12, r12
	jne	.label_376
	cmp	r11, 1
	je	.label_349
	xor	r13d, r13d
	jmp	.label_330
.label_694:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_381
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_306
	cmp	r8d, 2
	jne	.label_359
	mov	eax, r9d
	and	al, 1
	jne	.label_359
	cmp	r14, rbp
	jae	.label_389
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_389:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_391
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_391:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_397
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_397:
	add	r14, 3
	mov	r9b, 1
.label_359:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_401
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_401:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_406
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_406
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_406
	cmp	r14, rbp
	jae	.label_420
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_420:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_350
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_350:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_330
.label_695:
	mov	bl, 0x62
	jmp	.label_424
.label_696:
	mov	cl, 0x74
	jmp	.label_307
.label_697:
	mov	bl, 0x76
	jmp	.label_424
.label_698:
	mov	bl, 0x66
	jmp	.label_424
.label_699:
	mov	cl, 0x72
	jmp	.label_307
.label_702:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_310
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_317
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
	jae	.label_319
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_319:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_340
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_340:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_344
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_344:
	add	r14, 3
	xor	r9d, r9d
.label_310:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_330
.label_703:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_353
	cmp	r8d, 2
	jne	.label_346
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_346
	jmp	.label_317
.label_704:
	cmp	r8d, 2
	jne	.label_362
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_317
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_368
.label_339:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_369
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_378
.label_372:
	test	r12, r12
	jne	.label_388
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_388
.label_349:
	mov	dl, 1
.label_700:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_317
	xor	eax, eax
	mov	r13b, dl
.label_330:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_394
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_398
	jmp	.label_399
	.section	.text
	.align	32
	#Procedure 0x404164
	.globl sub_404164
	.type sub_404164, @function
sub_404164:

	nop	word ptr cs:[rax + rax]
.label_394:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_399
.label_398:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_404
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_409
	.section	.text
	.align	32
	#Procedure 0x40419d
	.globl sub_40419d
	.type sub_40419d, @function
sub_40419d:

	nop	dword ptr [rax]
.label_399:
	test	sil, sil
.label_409:
	mov	ebx, r15d
	je	.label_396
	jmp	.label_413
.label_404:
	mov	ebx, r15d
	jmp	.label_413
.label_381:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_415
	xor	r15d, r15d
	jmp	.label_346
.label_362:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_307
	xor	eax, eax
	mov	r15b, 0x5c
.label_368:
	xor	r13d, r13d
	jmp	.label_396
.label_307:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_317
.label_424:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_330
	nop	
.label_413:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_306
	cmp	r8d, 2
	jne	.label_311
	mov	eax, r9d
	and	al, 1
	jne	.label_311
	cmp	r14, rbp
	jae	.label_315
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_315:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_320
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_320:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_366
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_366:
	add	r14, 3
	mov	r9b, 1
.label_311:
	cmp	r14, rbp
	jae	.label_427
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_427:
	inc	r14
	jmp	.label_335
.label_369:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_343
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_343:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_351
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_405:
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
	je	.label_363
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_373
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_334
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_383
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_327:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_324
	bt	rsi, rdx
	jb	.label_317
.label_324:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_327
.label_383:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_400
	xor	r13d, r13d
.label_400:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_405
	jmp	.label_375
.label_406:
	xor	r13d, r13d
	jmp	.label_330
.label_388:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_330
.label_353:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_346
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_346
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_346
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_421
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_402
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_430
	cmp	r14, rbp
	jae	.label_309
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_309:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_348
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_348:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_414
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_414:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_337
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_337:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_402:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_330
.label_346:
	xor	eax, eax
.label_376:
	xor	r13d, r13d
	jmp	.label_330
.label_351:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_371:
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
	je	.label_358
	cmp	rbp, -1
	je	.label_361
	cmp	rbp, -2
	je	.label_363
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_422
	xor	r13d, r13d
.label_422:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_371
	jmp	.label_375
.label_363:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_382
	lea	rax, [r10 + r12]
.label_410:
	cmp	byte ptr [rax + rsi], 0
	je	.label_382
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_410
.label_382:
	mov	qword ptr [rsp + 0x40], rsi
.label_373:
	xor	r13d, r13d
	jmp	.label_334
.label_361:
	xor	r13d, r13d
.label_358:
	mov	r10, qword ptr [rsp + 0x28]
.label_334:
	mov	r12, qword ptr [rsp + 0x40]
.label_375:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_378:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_365
	test	al, al
	je	.label_365
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_330
.label_365:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_408
	.section	.text
	.align	32
	#Procedure 0x404597
	.globl sub_404597
	.type sub_404597, @function
sub_404597:

	nop	word ptr [rax + rax]
.label_374:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_408:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_412
	test	sil, 1
	je	.label_323
	cmp	r14, rbp
	jae	.label_417
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_417:
	inc	r14
	xor	esi, esi
	jmp	.label_323
	.section	.text
	.align	32
	#Procedure 0x4045d5
	.globl sub_4045d5
	.type sub_4045d5, @function
sub_4045d5:

	nop	word ptr cs:[rax + rax]
.label_412:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_306
	cmp	r8d, 2
	jne	.label_426
	mov	eax, r9d
	and	al, 1
	jne	.label_426
	cmp	r14, rbp
	jae	.label_419
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_419:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_322
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_322:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_386
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_386:
	add	r14, 3
	mov	r9b, 1
.label_426:
	cmp	r14, rbp
	jae	.label_325
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_325:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_333
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_333:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_329
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_329:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_323:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_396
	test	r9b, 1
	je	.label_347
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_416
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_355
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_355:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_364
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_364:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_347
	.section	.text
	.align	32
	#Procedure 0x4046e6
	.globl sub_4046e6
	.type sub_4046e6, @function
sub_4046e6:

	nop	word ptr cs:[rax + rax]
.label_416:
	mov	rbx, rcx
.label_347:
	cmp	r14, rbp
	jae	.label_374
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_374
	.section	.text
	.align	32
	#Procedure 0x40470e
	.globl sub_40470e
	.type sub_40470e, @function
sub_40470e:

	nop	
.label_396:
	test	r9b, 1
	je	.label_380
	and	al, 1
	jne	.label_380
	cmp	r14, rbp
	jae	.label_384
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_384:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_395
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_395:
	add	r14, 2
	xor	r9d, r9d
.label_380:
	mov	ebx, r15d
.label_335:
	cmp	r14, rbp
	jae	.label_392
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_392:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_415
.label_421:
	xor	r13d, r13d
	jmp	.label_330
	.section	.text
	.align	32
	#Procedure 0x404771
	.globl sub_404771
	.type sub_404771, @function
sub_404771:

	nop	word ptr cs:[rax + rax]
.label_428:
	mov	rcx, r12
.label_429:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_407
	or	al, dl
	jne	.label_407
	mov	r11, rcx
	jmp	.label_306
.label_317:
	mov	eax, 2
.label_360:
	mov	qword ptr [rsp + 0x38], rax
.label_306:
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
.label_352:
	mov	r14, rax
.label_354:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_390:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_316
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_308
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_308
	inc	rdx
	nop	dword ptr [rax + rax]
.label_336:
	cmp	r14, rbp
	jae	.label_332
	mov	byte ptr [rcx + r14], al
.label_332:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_336
	jmp	.label_308
.label_403:
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
	jmp	.label_352
.label_316:
	mov	rcx, qword ptr [rsp + 0x10]
.label_308:
	cmp	r14, rbp
	jae	.label_354
	mov	byte ptr [rcx + r14], 0
	jmp	.label_354
.label_430:
	mov	eax, 5
	jmp	.label_360
.label_312:
	call	abort
.label_431:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4048c5
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_56]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_57]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_58]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_431
	test	rsi, rsi
	je	.label_431
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x404930
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_56]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_57]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_58]
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
	.section	.text
	.align	32
	#Procedure 0x40499e
	.globl sub_40499e
	.type sub_40499e, @function
sub_40499e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4049a0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_432
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_433
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_432
.label_433:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_432
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_434
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_434:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_432:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x404a14
	.globl sub_404a14
	.type sub_404a14, @function
sub_404a14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a20
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x404a39
	.globl sub_404a39
	.type sub_404a39, @function
sub_404a39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a40
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
	je	.label_435
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
.label_435:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404ad5
	.globl sub_404ad5
	.type sub_404ad5, @function
sub_404ad5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ae0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_56]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_57]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_58]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_436
	test	rsi, rsi
	je	.label_436
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
.label_436:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404b4c
	.globl sub_404b4c
	.type sub_404b4c, @function
sub_404b4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b50

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_437
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_437:
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
	.section	.text
	.align	32
	#Procedure 0x404bd3
	.globl sub_404bd3
	.type sub_404bd3, @function
sub_404bd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404be0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bef
	.globl sub_404bef
	.type sub_404bef, @function
sub_404bef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404bf0
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
	.section	.text
	.align	32
	#Procedure 0x404c23
	.globl sub_404c23
	.type sub_404c23, @function
sub_404c23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c30

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_438
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_438
	test	byte ptr [rbx + 1], 1
	je	.label_438
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_438:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x404c63
	.globl sub_404c63
	.type sub_404c63, @function
sub_404c63:

	nop	word ptr cs:[rax + rax]
.label_441:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_439
	test	rax, rax
	je	.label_440
.label_439:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c84
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_440
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_441
	test	rbx, rbx
	jne	.label_441
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_440:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404cb8
	.globl sub_404cb8
	.type sub_404cb8, @function
sub_404cb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cc0

	.globl parse_block_signal_params
	.type parse_block_signal_params, @function
parse_block_signal_params:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15d, esi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_442
	mov	al, byte ptr [rip + sig_mask_changed]
	test	al, al
	jne	.label_448
	mov	edi, OFFSET FLAT:block_signals
	call	sigemptyset
	mov	edi, OFFSET FLAT:unblock_signals
	call	sigemptyset
.label_448:
	mov	byte ptr [rip + sig_mask_changed],  1
	mov	rdi, rbx
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_178
	mov	rdi, r14
	call	strtok
	mov	rbp, rax
	test	rbp, rbp
	je	.label_446
	mov	r12d, OFFSET FLAT:block_signals
	mov	eax, OFFSET FLAT:unblock_signals
	test	r15b, r15b
	mov	r13d, OFFSET FLAT:unblock_signals
	cmovne	r13, r12
	cmovne	r12, rax
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_443:
	mov	rdi, rbp
	mov	rsi, r15
	call	operand2sig
	mov	ebx, eax
	test	ebx, ebx
	je	.label_447
	jle	.label_449
	mov	rdi, r13
	mov	esi, ebx
	call	sigaddset
	mov	rdi, r12
	mov	esi, ebx
	call	sigdelset
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
	call	strtok
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_443
.label_446:
	mov	rdi, r14
	call	free
	jmp	.label_445
.label_442:
	mov	ebx, OFFSET FLAT:block_signals
	mov	eax, OFFSET FLAT:unblock_signals
	test	r15b, r15b
	mov	edi, OFFSET FLAT:unblock_signals
	cmovne	rdi, rbx
	cmovne	rbx, rax
	call	sigfillset
	mov	rdi, rbx
	call	sigemptyset
	mov	byte ptr [rip + sig_mask_changed],  1
.label_445:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_447:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_444
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_449:
	mov	edi, dword ptr [rip + exit_failure]
	call	usage
	.section	.text
	.align	32
	#Procedure 0x404e0e
	.globl sub_404e0e
	.type sub_404e0e, @function
sub_404e0e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404e10

	.globl parse_signal_action_params
	.type parse_signal_action_params, @function
parse_signal_action_params:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	ebp, esi
	test	rdi, rdi
	je	.label_452
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_178
	mov	rdi, r14
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	je	.label_455
	xor	eax, eax
	test	bpl, bpl
	sete	al
	lea	ebp, [rax + rax + 1]
	lea	r15, [rsp]
	nop	
.label_457:
	mov	rdi, rbx
	mov	rsi, r15
	call	operand2sig
	test	eax, eax
	je	.label_453
	jle	.label_454
	cdqe	
	mov	rcx, qword ptr [rip + signals]
	mov	dword ptr [rcx + rax*4], ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_457
.label_455:
	mov	rdi, r14
	call	free
	jmp	.label_451
.label_452:
	xor	eax, eax
	test	bpl, bpl
	sete	al
	lea	r14d, [rax + rax + 2]
	mov	ebx, 1
	lea	rbp, [rsp]
	nop	word ptr cs:[rax + rax]
.label_450:
	mov	edi, ebx
	mov	rsi, rbp
	call	sig2str
	test	eax, eax
	jne	.label_456
	mov	rax, qword ptr [rip + signals]
	mov	dword ptr [rax + rbx*4], r14d
.label_456:
	inc	rbx
	cmp	rbx, 0x41
	jne	.label_450
.label_451:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_453:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_444
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
	call	error
.label_454:
	mov	edi, dword ptr [rip + exit_failure]
	call	usage
	.section	.text
	.align	32
	#Procedure 0x404f15
	.globl sub_404f15
	.type sub_404f15, @function
sub_404f15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f20
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
	.section	.text
	.align	32
	#Procedure 0x404f38
	.globl sub_404f38
	.type sub_404f38, @function
sub_404f38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f40
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x404f4a
	.globl sub_404f4a
	.type sub_404f4a, @function
sub_404f4a:

	nop	word ptr [rax + rax]
.label_458:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404f55
	.globl sub_404f55
	.type sub_404f55, @function
sub_404f55:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404f57
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_56]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_57]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_58]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_458
	test	rdx, rdx
	je	.label_458
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fc0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	32
	#Procedure 0x404fd7
	.globl sub_404fd7
	.type sub_404fd7, @function
sub_404fd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fe0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_56]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_57]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_58]
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
	.section	.text
	.align	32
	#Procedure 0x405035
	.globl sub_405035
	.type sub_405035, @function
sub_405035:

	nop	word ptr cs:[rax + rax]
.label_459:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405045
	.globl sub_405045
	.type sub_405045, @function
sub_405045:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405053

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
	je	.label_460
	test	r15, r15
	je	.label_459
.label_460:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_463:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_461
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_461:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050c4
	.globl sub_4050c4
	.type sub_4050c4, @function
sub_4050c4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4050c6

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
	jne	.label_462
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_462
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_463
.label_462:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x405100
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
	je	.label_464
	mov	qword ptr [rax], rbx
.label_464:
	mov	rax, r14
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
	#Procedure 0x4051ec
	.globl sub_4051ec
	.type sub_4051ec, @function
sub_4051ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4051f0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051ff
	.globl sub_4051ff
	.type sub_4051ff, @function
sub_4051ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405200
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_465
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_466
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_468
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_467
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x405274
	.globl sub_405274
	.type sub_405274, @function
sub_405274:

	nop	word ptr cs:[rax + rax]
.label_469:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405285
	.globl sub_405285
	.type sub_405285, @function
sub_405285:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40528f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_469
	call	rpl_calloc
	test	rax, rax
	je	.label_469
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052b0

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
	je	.label_481
	mov	edx, OFFSET FLAT:label_476
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_483
.label_481:
	mov	edx, OFFSET FLAT:label_484
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_483:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_488
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
	mov	esi, OFFSET FLAT:label_485
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_472
	jmp	qword ptr [(r12 * 8) + label_473]
.label_667:
	add	rsp, 8
	jmp	.label_471
.label_472:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_480
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
	jmp	.label_471
.label_668:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_486
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
.label_669:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_470
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
.label_670:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_478
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
.label_671:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_474
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
	jmp	.label_471
.label_672:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_477
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
	jmp	.label_471
.label_673:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_475
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
	jmp	.label_471
.label_674:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_479
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
	jmp	.label_471
.label_676:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_482
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
	jmp	.label_471
.label_675:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_487
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
.label_471:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405608
	.globl sub_405608
	.type sub_405608, @function
sub_405608:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405610
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405618
	.globl sub_405618
	.type sub_405618, @function
sub_405618:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405620

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_490
	cmp	byte ptr [rax], 0x43
	jne	.label_492
	cmp	byte ptr [rax + 1], 0
	je	.label_489
.label_492:
	mov	esi, OFFSET FLAT:label_491
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_490
.label_489:
	xor	ebx, ebx
.label_490:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405651
	.globl sub_405651
	.type sub_405651, @function
sub_405651:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405660
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
	je	.label_493
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
.label_493:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4056c1
	.globl sub_4056c1
	.type sub_4056c1, @function
sub_4056c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056d0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4056de
	.globl sub_4056de
	.type sub_4056de, @function
sub_4056de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4056e0

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
	js	.label_494
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_497
	cmp	r12d, 0x7fffffff
	je	.label_499
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
	jne	.label_495
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_495:
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
.label_497:
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
	jbe	.label_500
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_496
.label_500:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_498
	mov	rdi, r14
	call	free
.label_498:
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
.label_496:
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
.label_494:
	call	abort
.label_499:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40589d
	.globl sub_40589d
	.type sub_40589d, @function
sub_40589d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4058a0

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
	je	.label_501
	cmp	r15, -2
	jb	.label_501
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_501
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_501:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4058f6
	.globl sub_4058f6
	.type sub_4058f6, @function
sub_4058f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405900
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_502
	test	rdx, rdx
	je	.label_502
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_502:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40592b
	.globl sub_40592b
	.type sub_40592b, @function
sub_40592b:

	nop	dword ptr [rax + rax]
.label_504:
	mov	ecx, 1
.label_503:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x405940
	.globl sub_405940
	.type sub_405940, @function
sub_405940:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405945

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_504
	test	rsi, rsi
	mov	ecx, 1
	je	.label_503
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_503
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405980
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_56]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_57]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_58]
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
	.section	.text
	.align	32
	#Procedure 0x4059ef
	.globl sub_4059ef
	.type sub_4059ef, @function
sub_4059ef:

	nop	
.label_507:
	mov	edi, OFFSET FLAT:label_505
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 0xdd
	mov	ecx, OFFSET FLAT:label_506
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x405a09
	.globl sub_405a09
	.type sub_405a09, @function
sub_405a09:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a11

	.globl extract_varname
	.type extract_varname, @function
extract_varname:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	test	rdi, rdi
	je	.label_507
	cmp	byte ptr [rdi], 0x24
	jne	.label_507
	xor	r12d, r12d
	cmp	byte ptr [rdi + 1], 0x7b
	jne	.label_509
	movsx	eax, byte ptr [rdi + 2]
	mov	ecx, eax
	add	ecx, -0x41
	cmp	ecx, 0x39
	ja	.label_513
	movabs	rdx, 0x3ffffff03ffffff
	shr	rdx, cl
	and	edx, 1
	xor	r12d, r12d
	cmp	al, 0x5f
	je	.label_508
	test	rdx, rdx
	je	.label_509
	jmp	.label_508
.label_513:
	xor	r12d, r12d
	cmp	al, 0x5f
	jne	.label_509
.label_508:
	lea	r14, [rdi + 2]
	lea	rsi, [rdi + 3]
	xor	r12d, r12d
	movabs	rax, 0x3ffffff03ffffff
	jmp	.label_511
	.section	.text
	.align	32
	#Procedure 0x405a8a
	.globl sub_405a8a
	.type sub_405a8a, @function
sub_405a8a:

	nop	dword ptr [rax]
.label_510:
	inc	rsi
.label_511:
	movzx	ecx, byte ptr [rsi]
	movsx	edx, cl
	lea	ebx, [rdx - 0x41]
	cmp	ebx, 0x39
	ja	.label_512
	bt	rax, rbx
	jb	.label_510
.label_512:
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_510
	cmp	cl, 0x5f
	je	.label_510
	cmp	cl, 0x7d
	jne	.label_509
	sub	rsi, rdi
	lea	r15, [rsi - 2]
	cmp	r15, qword ptr [rip + vnlen]
	jb	.label_514
	dec	rsi
	mov	qword ptr [rip + vnlen],  rsi
	mov	rdi, qword ptr [rip + varname]
	call	xrealloc
	mov	qword ptr [rip + varname],  rax
.label_514:
	mov	r12, qword ptr [rip + varname]
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_509:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_517:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405b15

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_516
	test	rbx, rbx
	jne	.label_516
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_516:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_515
	test	rax, rax
	je	.label_517
.label_515:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b40
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
	.section	.text
	.align	32
	#Procedure 0x405c01
	.globl sub_405c01
	.type sub_405c01, @function
sub_405c01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c10
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
	je	.label_519
	test	r14, r14
	je	.label_518
.label_519:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_518:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405c46
	.globl sub_405c46
	.type sub_405c46, @function
sub_405c46:

	nop	word ptr cs:[rax + rax]
.label_520:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405c55
	.globl sub_405c55
	.type sub_405c55, @function
sub_405c55:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c5d

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
	je	.label_520
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
	.section	.text
	.align	32
	#Procedure 0x405cc0

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_521
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	mov	edi, 0xffffffff
	cmp	rcx, r15
	je	.label_523
	cmp	byte ptr [rcx], 0
	jne	.label_523
	cmp	dword ptr [rbx], 0
	jne	.label_523
	cmp	eax, -1
	je	.label_523
	movsxd	rcx, eax
	cmp	rcx, rax
	jne	.label_523
	cmp	eax, 0xfe
	mov	ecx, 0xff
	mov	edi, 0x7f
	cmovg	edi, ecx
	and	edi, eax
.label_523:
	mov	dword ptr [rsp + 4], edi
	jmp	.label_532
.label_521:
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
	mov	bpl, byte ptr [r12]
	test	bpl, bpl
	je	.label_522
	lea	rbx, [r12 + 1]
	nop	word ptr [rax + rax]
.label_530:
	movsx	esi, bpl
	mov	edi, OFFSET FLAT:label_529
	mov	edx, 0x1b
	call	memchr
	test	rax, rax
	je	.label_531
	add	bpl, 0xe0
	mov	byte ptr [rbx - 1], bpl
.label_531:
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	test	bpl, bpl
	jne	.label_530
.label_522:
	lea	rsi, [rsp + 4]
	mov	rdi, r12
	call	str2sig
	test	eax, eax
	je	.label_525
	cmp	byte ptr [r12], 0x53
	jne	.label_524
	cmp	byte ptr [r12 + 1], 0x49
	jne	.label_524
	cmp	byte ptr [r12 + 2], 0x47
	jne	.label_524
	mov	rdi, r12
	add	rdi, 3
	lea	rsi, [rsp + 4]
	call	str2sig
	test	eax, eax
	je	.label_525
.label_524:
	mov	dword ptr [rsp + 4], 0xffffffff
.label_525:
	mov	rdi, r12
	call	free
	mov	edi, dword ptr [rsp + 4]
.label_532:
	test	edi, edi
	js	.label_528
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	je	.label_527
.label_528:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_444
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	eax, 0xffffffff
	jmp	.label_526
.label_527:
	mov	eax, dword ptr [rsp + 4]
.label_526:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e31
	.globl sub_405e31
	.type sub_405e31, @function
sub_405e31:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e40

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
.label_535:
	mov	edx, eax
	cmp	dword ptr [rcx], ebp
	je	.label_540
	lea	esi, [rdx + 1]
	cmp	dword ptr [rcx + 0xc], ebp
	je	.label_538
	lea	esi, [rdx + 2]
	cmp	dword ptr [rcx + 0x18], ebp
	je	.label_538
	add	edx, 3
	cmp	dword ptr [rcx + 0x24], ebp
	mov	rsi, rdx
	je	.label_538
	cmp	dword ptr [rcx + 0x30], ebp
	je	.label_533
	add	rax, 5
	add	rcx, 0x3c
	cmp	eax, 0x23
	jb	.label_535
	call	__libc_current_sigrtmin
	mov	r14d, eax
	call	__libc_current_sigrtmax
	cmp	r14d, ebp
	mov	ebx, 0xffffffff
	jg	.label_536
	cmp	eax, ebp
	jl	.label_536
	mov	ecx, eax
	sub	ecx, r14d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r14d
	cmp	edx, ebp
	jge	.label_537
	mov	word ptr [r15 + 4], 0x58
	mov	dword ptr [r15], 0x414d5452
	mov	r14d, eax
	jmp	.label_534
.label_540:
	mov	rsi, rdx
	jmp	.label_538
.label_533:
	add	rax, 4
	mov	rsi, rax
.label_538:
	lea	rax, [rsi + rsi*2]
	lea	rsi, qword ptr [(rax * 4) + label_62]
	mov	rdi, r15
	call	strcpy
	xor	ebx, ebx
.label_536:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_537:
	mov	word ptr [r15 + 4], 0x4e
	mov	dword ptr [r15], 0x494d5452
.label_534:
	xor	ebx, ebx
	sub	ebp, r14d
	je	.label_536
	add	r15, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_539
	xor	eax, eax
	mov	rdi, r15
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_536
	.section	.text
	.align	32
	#Procedure 0x405f40
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
	.section	.text
	.align	32
	#Procedure 0x405f76
	.globl sub_405f76
	.type sub_405f76, @function
sub_405f76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f80
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_541
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_544
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_545
	call	free
	xor	eax, eax
	jmp	.label_542
.label_544:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405fb7
	.globl sub_405fb7
	.type sub_405fb7, @function
sub_405fb7:

	nop	word ptr cs:[rax + rax]
.label_543:
	call	xalloc_die
.label_541:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_543
	mov	qword ptr [rsi], rbx
.label_545:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_542
	test	rax, rax
	je	.label_543
.label_542:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ff0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ff8
	.globl sub_405ff8
	.type sub_405ff8, @function
sub_405ff8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406000
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
	.section	.text
	.align	32
	#Procedure 0x406018
	.globl sub_406018
	.type sub_406018, @function
sub_406018:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406020

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_74
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_546
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406045
	.globl sub_406045
	.type sub_406045, @function
sub_406045:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406050
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x406061
	.globl sub_406061
	.type sub_406061, @function
sub_406061:

	nop	word ptr cs:[rax + rax]
.label_551:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_547
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406090
	.globl sub_406090
	.type sub_406090, @function
sub_406090:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40609f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_551
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_549
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_552
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_549
	mov	esi, OFFSET FLAT:label_550
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_548
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_548:
	mov	rbx, r14
.label_549:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x406120
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_553
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_556:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_556
.label_553:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_557
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_554], OFFSET FLAT:slot0
.label_557:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_555
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_555:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4061b1
	.globl sub_4061b1
	.type sub_4061b1, @function
sub_4061b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061c0

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
	jne	.label_559
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_558
	test	cl, cl
	jne	.label_558
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_558
.label_559:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_558
	call	__errno_location
	mov	dword ptr [rax], 0
.label_558:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406220
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_560:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_560
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x406241
	.globl sub_406241
	.type sub_406241, @function
sub_406241:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406250

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x406269
	.globl sub_406269
	.type sub_406269, @function
sub_406269:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406270
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_56]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_57]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_58]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_561
	test	rdx, rdx
	je	.label_561
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_561:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4062da
	.globl sub_4062da
	.type sub_4062da, @function
sub_4062da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406345
	.globl sub_406345
	.type sub_406345, @function
sub_406345:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406352
	.globl sub_406352
	.type sub_406352, @function
sub_406352:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406376
	.globl sub_406376
	.type sub_406376, @function
sub_406376:

	nop	word ptr cs:[rax + rax]
