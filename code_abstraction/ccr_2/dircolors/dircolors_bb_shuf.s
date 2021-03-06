	.section	.text
	.align	32
	#Procedure 0x4016e9
	.globl sub_4016e9
	.type sub_4016e9, @function
sub_4016e9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4016ea
	.globl sub_4016ea
	.type sub_4016ea, @function
sub_4016ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401722
	.globl sub_401722
	.type sub_401722, @function
sub_401722:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40176a
	.globl sub_40176a
	.type sub_40176a, @function
sub_40176a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40178c
	.globl sub_40178c
	.type sub_40178c, @function
sub_40178c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40179d
	.globl sub_40179d
	.type sub_40179d, @function
sub_40179d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4017b6
	.globl sub_4017b6
	.type sub_4017b6, @function
sub_4017b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017c0

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
	#Procedure 0x4017d7
	.globl sub_4017d7
	.type sub_4017d7, @function
sub_4017d7:

	nop	word ptr [rax + rax]
.label_9:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4017e5
	.globl sub_4017e5
	.type sub_4017e5, @function
sub_4017e5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4017e9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_10]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_9
	test	rsi, rsi
	je	.label_9
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
	.section	.text
	.align	32
	#Procedure 0x401850
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
	#Procedure 0x401869
	.globl sub_401869
	.type sub_401869, @function
sub_401869:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401870

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_13:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_13
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_17
	.section	.text
	.align	32
	#Procedure 0x401893
	.globl sub_401893
	.type sub_401893, @function
sub_401893:

	nop	word ptr cs:[rax + rax]
.label_16:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_17:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_16
	test	dl, dl
	je	.label_15
	mov	ecx, esi
	and	cl, 1
	je	.label_14
	xor	esi, esi
.label_14:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_16
.label_15:
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4018cc
	.globl sub_4018cc
	.type sub_4018cc, @function
sub_4018cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4018d0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4018de
	.globl sub_4018de
	.type sub_4018de, @function
sub_4018de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4018e0

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
	js	.label_18
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_21
	cmp	r12d, 0x7fffffff
	je	.label_23
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
	jne	.label_19
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_19:
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
.label_21:
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
	jbe	.label_24
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_20
.label_24:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_22
	mov	rdi, r14
	call	free
.label_22:
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
.label_20:
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
.label_18:
	call	abort
.label_23:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401a9d
	.globl sub_401a9d
	.type sub_401a9d, @function
sub_401a9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401aa0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_35
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_37
.label_35:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_37:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_26
	cmp	r10d, 0x29
	jae	.label_34
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_36
.label_34:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_36:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_26
	cmp	r10d, 0x29
	jae	.label_32
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_33
.label_32:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_33:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_26
	cmp	r10d, 0x29
	jae	.label_30
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_31
.label_30:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_31:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_26
	cmp	r10d, 0x29
	jae	.label_28
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_29
.label_28:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_29:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_26
	cmp	r10d, 0x29
	jae	.label_25
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_27
.label_25:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_27:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_26
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_26
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_26
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_26
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_26:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c82
	.globl sub_401c82
	.type sub_401c82, @function
sub_401c82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c90

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
	je	.label_39
	test	rbx, rbx
	je	.label_39
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_39
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_39
	mov	edi, OFFSET FLAT:label_40
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_38
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_39
.label_38:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_39:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d24
	.globl sub_401d24
	.type sub_401d24, @function
sub_401d24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d30
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
	#Procedure 0x401d3f
	.globl sub_401d3f
	.type sub_401d3f, @function
sub_401d3f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401d40
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_41
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_44:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_44
.label_41:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_45
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_43], OFFSET FLAT:slot0
.label_45:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_42
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_42:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401dd1
	.globl sub_401dd1
	.type sub_401dd1, @function
sub_401dd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401de0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_55
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_58
	mov	ecx, OFFSET FLAT:label_53
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_49
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_49
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_49:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_53
	mov	ecx, OFFSET FLAT:label_46
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_46
	mov	ecx, OFFSET FLAT:label_47
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_55:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
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
	#Procedure 0x401f9b
	.globl sub_401f9b
	.type sub_401f9b, @function
sub_401f9b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fa0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_10]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_12]
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
	#Procedure 0x401ff4
	.globl sub_401ff4
	.type sub_401ff4, @function
sub_401ff4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402000
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_63
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_64
	test	rax, rax
	je	.label_63
.label_64:
	pop	rbx
	ret	
.label_63:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402035
	.globl sub_402035
	.type sub_402035, @function
sub_402035:

	nop	word ptr cs:[rax + rax]
.label_65:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40204c

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	qword ptr [rbx + 0x38], rcx
	mov	qword ptr [rbx + 0x40], r8
	mov	qword ptr [rbx + 0x48], r9
	or	byte ptr [rbx + 0x50], 1
	test	rdx, rdx
	mov	r14d, 0x10
	cmovne	r14, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	mov	qword ptr [rbx], rax
	lea	r15, [r14 - 1]
	mov	qword ptr [rbx + 0x30], r15
	mov	rdi, r9
	mov	rsi, rax
	call	rcx
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_65
	lea	rcx, [rax + r15 + 0x10]
	neg	r14
	and	r14, rcx
	mov	qword ptr [rbx + 0x10], r14
	mov	qword ptr [rbx + 0x18], r14
	mov	rcx, qword ptr [rbx]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [rbx + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_70:
	mov	rdi, qword ptr [r15 + 0x48]
	call	qword ptr [r15 + 0x40]
.label_67:
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_69
.label_72:
	test	r14, r14
	je	.label_66
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4020ef

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 8]
	test	rsi, rsi
	je	.label_72
	nop	word ptr cs:[rax + rax]
.label_69:
	cmp	rsi, r14
	jae	.label_71
	cmp	qword ptr [rsi], r14
	jae	.label_68
.label_71:
	mov	rbx, qword ptr [rsi + 8]
	test	byte ptr [r15 + 0x50], 1
	jne	.label_70
	mov	rdi, rsi
	call	qword ptr [r15 + 0x40]
	jmp	.label_67
	.section	.text
	.align	32
	#Procedure 0x40212d
	.globl sub_40212d
	.type sub_40212d, @function
sub_40212d:

	nop	
.label_68:
	mov	qword ptr [r15 + 0x18], r14
	mov	qword ptr [r15 + 0x10], r14
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_66:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402148
	.globl sub_402148
	.type sub_402148, @function
sub_402148:

	nop	dword ptr [rax + rax]
.label_73:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402155
	.globl sub_402155
	.type sub_402155, @function
sub_402155:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40215d
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
	je	.label_73
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
	#Procedure 0x4021c0
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
	je	.label_74
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
.label_74:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402221
	.globl sub_402221
	.type sub_402221, @function
sub_402221:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402230
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
	#Procedure 0x4022f1
	.globl sub_4022f1
	.type sub_4022f1, @function
sub_4022f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402300
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_76:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_75
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_76
.label_75:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402326
	.globl sub_402326
	.type sub_402326, @function
sub_402326:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402330

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
	je	.label_77
	test	r15, r15
	je	.label_78
.label_77:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_78:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40236c
	.globl sub_40236c
	.type sub_40236c, @function
sub_40236c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402370
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
	#Procedure 0x402388
	.globl sub_402388
	.type sub_402388, @function
sub_402388:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402390

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_79
	pop	rcx
	ret	
.label_79:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4023a2
	.globl sub_4023a2
	.type sub_4023a2, @function
sub_4023a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023b8
	.globl sub_4023b8
	.type sub_4023b8, @function
sub_4023b8:

	nop	dword ptr [rax + rax]
.label_83:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4023c5
	.globl sub_4023c5
	.type sub_4023c5, @function
sub_4023c5:

	nop	word ptr [rax + rax]
.label_86:
	test	rcx, rcx
	jne	.label_84
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_84:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_83
.label_85:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_80
	test	rbx, rbx
	jne	.label_80
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_80:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_81
	test	rax, rax
	je	.label_82
.label_81:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40242e
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_86
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_82
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_85
.label_82:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402460

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
.label_161:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_159
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_132]
.label_552:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_167
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_101
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_553:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_163
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_163
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_195:
	cmp	r14, r11
	jae	.label_193
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_193:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_195
.label_163:
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
	jmp	.label_102
.label_545:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_102
.label_548:
	mov	al, 1
.label_546:
	mov	r12b, 1
.label_549:
	test	r12b, 1
	mov	cl, 1
	je	.label_89
	mov	ecx, eax
.label_89:
	mov	al, cl
.label_547:
	test	r12b, 1
	jne	.label_91
	test	r11, r11
	je	.label_92
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_92:
	mov	r14d, 1
	jmp	.label_97
.label_91:
	xor	r14d, r14d
.label_97:
	mov	ecx, OFFSET FLAT:label_101
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_102
.label_550:
	test	r12b, 1
	jne	.label_112
	test	r11, r11
	je	.label_114
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_114:
	mov	r14d, 1
	jmp	.label_119
.label_551:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_120
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_102
.label_112:
	xor	r14d, r14d
.label_119:
	mov	eax, OFFSET FLAT:label_120
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_102:
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
	jmp	.label_138
	.section	.text
	.align	32
	#Procedure 0x40274d
	.globl sub_40274d
	.type sub_40274d, @function
sub_40274d:

	nop	dword ptr [rax]
.label_94:
	inc	rsi
.label_138:
	cmp	rbp, -1
	je	.label_176
	cmp	rsi, rbp
	jne	.label_177
	jmp	.label_179
	.section	.text
	.align	32
	#Procedure 0x402763
	.globl sub_402763
	.type sub_402763, @function
sub_402763:

	nop	word ptr cs:[rax + rax]
.label_176:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_183
.label_177:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_206
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_168
	cmp	rbp, -1
	jne	.label_168
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
.label_168:
	cmp	rbx, rbp
	jbe	.label_198
.label_206:
	xor	r8d, r8d
.label_106:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_200
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_204]
.label_530:
	test	rsi, rsi
	jne	.label_109
	jmp	.label_87
	.section	.text
	.align	32
	#Procedure 0x402805
	.globl sub_402805
	.type sub_402805, @function
sub_402805:

	nop	word ptr cs:[rax + rax]
.label_198:
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
	jne	.label_103
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_106
	jmp	.label_117
.label_103:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_106
.label_534:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_128
	test	rsi, rsi
	jne	.label_130
	cmp	rbp, 1
	je	.label_87
	xor	r13d, r13d
	jmp	.label_95
.label_523:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_137
	cmp	byte ptr [rsp + 6], 0
	jne	.label_115
	cmp	r12d, 2
	jne	.label_143
	mov	eax, r9d
	and	al, 1
	jne	.label_143
	cmp	r14, r11
	jae	.label_146
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_146:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_150
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_150:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_199
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_199:
	add	r14, 3
	mov	r9b, 1
.label_143:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_162
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_162:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_164
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_164
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_164
	cmp	r14, r11
	jae	.label_205
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_205:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_129
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_129:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_95
.label_524:
	mov	bl, 0x62
	jmp	.label_188
.label_525:
	mov	cl, 0x74
	jmp	.label_189
.label_526:
	mov	bl, 0x76
	jmp	.label_188
.label_527:
	mov	bl, 0x66
	jmp	.label_188
.label_528:
	mov	cl, 0x72
	jmp	.label_189
.label_531:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_194
	cmp	byte ptr [rsp + 6], 0
	jne	.label_111
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
	jae	.label_197
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_197:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_208
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_208:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_90
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_90:
	add	r14, 3
	xor	r9d, r9d
.label_194:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_95
.label_532:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_99
	cmp	r12d, 2
	jne	.label_109
	cmp	byte ptr [rsp + 6], 0
	je	.label_109
	jmp	.label_111
.label_533:
	cmp	r12d, 2
	jne	.label_113
	cmp	byte ptr [rsp + 6], 0
	jne	.label_111
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_140
.label_200:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_123
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
.label_124:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_142
	test	r8b, r8b
	je	.label_142
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_95
.label_128:
	test	rsi, rsi
	jne	.label_118
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_118
.label_87:
	mov	dl, 1
.label_529:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_111
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_95:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_171
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_196
	jmp	.label_175
	.section	.text
	.align	32
	#Procedure 0x402b54
	.globl sub_402b54
	.type sub_402b54, @function
sub_402b54:

	nop	word ptr cs:[rax + rax]
.label_171:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_175
.label_196:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_181
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_140
	jmp	.label_192
	.section	.text
	.align	32
	#Procedure 0x402b9d
	.globl sub_402b9d
	.type sub_402b9d, @function
sub_402b9d:

	nop	dword ptr [rax]
.label_175:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_192
	jmp	.label_140
.label_181:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_192
.label_137:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_94
	xor	r15d, r15d
	jmp	.label_109
.label_113:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_189
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_140
.label_189:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_111
.label_188:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_95
	nop	word ptr cs:[rax + rax]
.label_192:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_115
	cmp	r12d, 2
	jne	.label_93
	mov	eax, r9d
	and	al, 1
	jne	.label_93
	cmp	r14, r11
	jae	.label_155
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_155:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_104
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_104:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_207
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_207:
	add	r14, 3
	mov	r9b, 1
.label_93:
	cmp	r14, r11
	jae	.label_116
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_116:
	inc	r14
	jmp	.label_121
.label_123:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_125
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_125:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_153:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_148
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_152
	cmp	rbp, -2
	je	.label_158
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_98
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_88:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_154
	bt	rsi, rdx
	jb	.label_174
.label_154:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_88
.label_98:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_202
	xor	r13d, r13d
.label_202:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_153
	jmp	.label_124
.label_164:
	xor	r13d, r13d
	jmp	.label_95
.label_118:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_95
.label_99:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_109
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_109
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_109
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_203
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_185
	cmp	byte ptr [rsp + 6], 0
	jne	.label_96
	cmp	r14, r11
	jae	.label_184
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_184:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_139
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_139:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_100
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_100:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_191
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_191:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_95
.label_109:
	xor	eax, eax
.label_130:
	xor	r13d, r13d
	jmp	.label_95
.label_142:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_122
	.section	.text
	.align	32
	#Procedure 0x402e82
	.globl sub_402e82
	.type sub_402e82, @function
sub_402e82:

	nop	word ptr cs:[rax + rax]
.label_133:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_122:
	test	r8b, r8b
	je	.label_131
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_134
	cmp	r14, r11
	jae	.label_135
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_135:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_134
	.section	.text
	.align	32
	#Procedure 0x402ecc
	.globl sub_402ecc
	.type sub_402ecc, @function
sub_402ecc:

	nop	dword ptr [rax]
.label_131:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_117
	cmp	r12d, 2
	jne	.label_147
	mov	eax, r9d
	and	al, 1
	jne	.label_147
	cmp	r14, r11
	jae	.label_151
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_151:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_156
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_156:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_160
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_160:
	add	r14, 3
	mov	r9b, 1
.label_147:
	cmp	r14, r11
	jae	.label_144
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_144:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_170
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_170:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_173
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_173:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_134:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_140
	test	r9b, 1
	je	.label_166
	mov	ebx, eax
	and	bl, 1
	jne	.label_166
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_190
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_190:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_178
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_178:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_166:
	cmp	r14, r11
	jae	.label_133
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_133
	.section	.text
	.align	32
	#Procedure 0x402fd3
	.globl sub_402fd3
	.type sub_402fd3, @function
sub_402fd3:

	nop	word ptr cs:[rax + rax]
.label_140:
	test	r9b, 1
	je	.label_172
	and	al, 1
	jne	.label_172
	cmp	r14, r11
	jae	.label_186
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_186:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_201
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_201:
	add	r14, 2
	xor	r9d, r9d
.label_172:
	mov	ebx, r15d
.label_121:
	cmp	r14, r11
	jae	.label_126
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_126:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_94
.label_152:
	xor	r13d, r13d
.label_148:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_124
.label_158:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_110
	mov	rsi, qword ptr [rsp + 0x58]
.label_127:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_180
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_127
	xor	r13d, r13d
	jmp	.label_124
.label_110:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_124
.label_180:
	xor	r13d, r13d
	jmp	.label_124
.label_203:
	xor	r13d, r13d
	jmp	.label_95
.label_185:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_95
	.section	.text
	.align	32
	#Procedure 0x4030a8
	.globl sub_4030a8
	.type sub_4030a8, @function
sub_4030a8:

	nop	dword ptr [rax + rax]
.label_179:
	mov	rcx, rsi
.label_183:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_136
	or	al, dl
	je	.label_141
.label_136:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_145
	or	al, dl
	jne	.label_145
	test	r10b, 1
	jne	.label_157
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_145
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_161
.label_145:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_165
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_169
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_169
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_182:
	cmp	r14, r11
	jae	.label_107
	mov	byte ptr [rcx + r14], al
.label_107:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_182
	jmp	.label_169
.label_115:
	mov	qword ptr [rsp + 0x20], rbp
.label_117:
	mov	rdx, rdi
	jmp	.label_187
.label_111:
	mov	qword ptr [rsp + 0x20], rbp
.label_174:
	mov	rdx, rdi
	mov	eax, 2
.label_149:
	mov	qword ptr [rsp + 0x38], rax
.label_187:
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
.label_105:
	mov	r14, rax
.label_108:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_141:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_187
.label_157:
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
	jmp	.label_105
.label_165:
	mov	rcx, qword ptr [rsp + 8]
.label_169:
	cmp	r14, r11
	jae	.label_108
	mov	byte ptr [rcx + r14], 0
	jmp	.label_108
.label_96:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_149
.label_159:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403267
	.globl sub_403267
	.type sub_403267, @function
sub_403267:

	nop	word ptr [rax + rax]
.label_209:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403275
	.globl sub_403275
	.type sub_403275, @function
sub_403275:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40327b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_10]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_209
	test	rdx, rdx
	je	.label_209
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_212:
	mov	rcx, qword ptr [rcx + 8]
.label_213:
	test	rcx, rcx
	je	.label_210
	cmp	rcx, rsi
	jae	.label_212
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_212
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x4032fa

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_213
	.section	.text
	.align	32
	#Procedure 0x403300
	.globl sub_403300
	.type sub_403300, @function
sub_403300:

	nop	word ptr cs:[rax + rax]
.label_210:
	xor	eax, eax
.label_211:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40330d
	.globl sub_40330d
	.type sub_40330d, @function
sub_40330d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403310
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_10]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_12]
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
	#Procedure 0x40337e
	.globl sub_40337e
	.type sub_40337e, @function
sub_40337e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403380

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_214
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_214:
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
	#Procedure 0x403403
	.globl sub_403403
	.type sub_403403, @function
sub_403403:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403410
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
	je	.label_216
	test	r14, r14
	je	.label_215
.label_216:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_215:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403446
	.globl sub_403446
	.type sub_403446, @function
sub_403446:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403450

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_257
	call	setlocale
	mov	edi, OFFSET FLAT:label_219
	mov	esi, OFFSET FLAT:label_244
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_219
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	ebp, 2
	xor	ecx, ecx
.label_251:
	mov	r15d, ecx
	mov	ebx, ebp
	jmp	.label_236
.label_254:
	mov	ebx, 1
	nop	dword ptr [rax]
.label_236:
	mov	ebp, ebx
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_240
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_246
	cmp	eax, 0x62
	je	.label_236
	mov	cl, 1
	cmp	eax, 0x70
	je	.label_251
	cmp	eax, 0x63
	je	.label_254
	jmp	.label_242
.label_246:
	cmp	eax, -1
	jne	.label_259
	movsxd	rax, dword ptr [rip + optind]
	test	r15b, r15b
	je	.label_261
	cmp	ebp, 2
	jne	.label_264
.label_261:
	sub	r14d, eax
	lea	r12, [r12 + rax*8]
	movzx	ebx, r15b
	xor	ebx, 1
	cmp	ebx, r14d
	jl	.label_235
	test	r15b, r15b
	je	.label_234
	mov	ebp, OFFSET FLAT:G_line
	mov	ebx, OFFSET FLAT:G_line
	nop	dword ptr [rax + rax]
.label_217:
	mov	rdi, rbx
	call	puts
	mov	rdi, rbx
	call	strlen
	lea	rbx, [rbx + rax + 1]
	mov	rcx, rbx
	sub	rcx, rbp
	xor	eax, eax
	cmp	rcx, 0x10c4
	jb	.label_217
	jmp	.label_241
.label_234:
	cmp	ebp, 2
	jne	.label_232
	mov	edi, OFFSET FLAT:label_255
	call	getenv
	test	rax, rax
	je	.label_258
	cmp	byte ptr [rax], 0
	je	.label_258
	mov	rdi, rax
	call	last_component
	cmp	byte ptr [rax], 0x63
	jne	.label_238
	cmp	byte ptr [rax + 1], 0x73
	jne	.label_238
	cmp	byte ptr [rax + 2], 0x68
	jne	.label_238
	mov	ebp, 1
	cmp	byte ptr [rax + 3], 0
	je	.label_232
.label_238:
	mov	esi, OFFSET FLAT:label_243
	mov	rdi, rax
	call	strcmp
	xor	ebp, ebp
	test	eax, eax
	sete	bpl
.label_232:
	mov	edi, OFFSET FLAT:lsc_obstack
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	test	r14d, r14d
	je	.label_248
	mov	rbx, qword ptr [r12]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_249
	cmp	byte ptr [rbx + 1], 0
	je	.label_253
.label_249:
	mov	rdx, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_247
	mov	rdi, rbx
	call	freopen_safer
	test	rax, rax
	je	.label_220
.label_253:
	mov	rdi, qword ptr [rip + stdin]
	mov	rsi, rbx
	call	dc_parse_stream
	mov	r14d, eax
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	test	eax, eax
	je	.label_233
.label_220:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_218
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	eax, 1
	jmp	.label_241
.label_248:
	xor	edi, edi
	xor	esi, esi
	call	dc_parse_stream
	mov	ecx, eax
	mov	eax, 1
	test	cl, cl
	jne	.label_252
	jmp	.label_241
.label_233:
	mov	eax, 1
	test	r14b, r14b
	je	.label_241
.label_252:
	mov	rax, qword ptr [rip + label_226]
	mov	r14, qword ptr [rip + label_227]
	mov	r15, rax
	sub	r15, r14
	jne	.label_263
	or	byte ptr [rip + label_221],  2
.label_263:
	mov	rcx, qword ptr [rip + label_223]
	add	rax, rcx
	not	rcx
	and	rcx, rax
	mov	rax, qword ptr [rip + label_224]
	mov	rdx, rcx
	sub	rdx, rax
	mov	rsi, qword ptr [rip + label_225]
	mov	rdi, rsi
	sub	rdi, rax
	cmp	rdx, rdi
	cmova	rcx, rsi
	mov	qword ptr [rip + label_226],  rcx
	mov	qword ptr [rip + label_227],  rcx
	test	ebp, ebp
	mov	eax, OFFSET FLAT:label_228
	mov	edi, OFFSET FLAT:label_229
	cmove	rdi, rax
	mov	eax, OFFSET FLAT:label_230
	mov	ebx, OFFSET FLAT:label_231
	cmove	rbx, rax
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, r15
	call	fwrite_unlocked
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
	xor	eax, eax
.label_241:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_259:
	cmp	eax, 0xffffff7d
	je	.label_239
	cmp	eax, 0xffffff7e
	jne	.label_242
	xor	edi, edi
	call	usage
.label_239:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_46
	mov	edx, OFFSET FLAT:label_58
	mov	r8d, OFFSET FLAT:label_245
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_264:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
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
.label_235:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [r12 + rbx*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	test	r15b, r15b
	je	.label_256
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_260
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_256:
	mov	edi, 1
	call	usage
.label_242:
	mov	edi, 1
	call	usage
.label_258:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_222
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403840

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_218
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403870
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_268
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_270
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_267
	call	free
	xor	eax, eax
	jmp	.label_269
.label_268:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_266
	mov	qword ptr [rsi], rbx
.label_267:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_269
	test	rax, rax
	je	.label_266
.label_269:
	pop	rbx
	ret	
.label_266:
	call	xalloc_die
.label_270:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4038d4
	.globl sub_4038d4
	.type sub_4038d4, @function
sub_4038d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038e0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4038f1
	.globl sub_4038f1
	.type sub_4038f1, @function
sub_4038f1:

	nop	word ptr cs:[rax + rax]
.label_273:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403905

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_272
	test	rbx, rbx
	jne	.label_272
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_272:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_271
	test	rax, rax
	je	.label_273
.label_271:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403930

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
	jne	.label_274
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_274
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_275
.label_274:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_275:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_276
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_276:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40399e
	.globl sub_40399e
	.type sub_40399e, @function
sub_40399e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4039a0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4039aa
	.globl sub_4039aa
	.type sub_4039aa, @function
sub_4039aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_277:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_277
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x4039d1
	.globl sub_4039d1
	.type sub_4039d1, @function
sub_4039d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039e0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	xor	eax, eax
	cmp	rdi, rsi
	je	.label_278
	nop	word ptr [rax + rax]
.label_281:
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
	je	.label_279
	inc	rdi
	inc	rsi
	movzx	ecx, cl
	cmp	eax, ecx
	je	.label_281
	jmp	.label_280
.label_279:
	movzx	ecx, cl
	xor	eax, eax
.label_280:
	sub	eax, ecx
.label_278:
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a2e
	.globl sub_403a2e
	.type sub_403a2e, @function
sub_403a2e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403a30

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_10]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_12]
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
	#Procedure 0x403a85
	.globl sub_403a85
	.type sub_403a85, @function
sub_403a85:

	nop	word ptr cs:[rax + rax]
.label_283:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403a95
	.globl sub_403a95
	.type sub_403a95, @function
sub_403a95:

	nop	dword ptr [rax + rax]
.label_284:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_282
	test	rax, rax
	je	.label_283
.label_282:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ab1
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_283
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_284
	test	rbx, rbx
	jne	.label_284
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ae0
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
	#Procedure 0x403b13
	.globl sub_403b13
	.type sub_403b13, @function
sub_403b13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b20
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_10]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_12]
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
	#Procedure 0x403b8f
	.globl sub_403b8f
	.type sub_403b8f, @function
sub_403b8f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403b90
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
	#Procedure 0x403ba8
	.globl sub_403ba8
	.type sub_403ba8, @function
sub_403ba8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bb0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_286
	cmp	byte ptr [rax], 0x43
	jne	.label_288
	cmp	byte ptr [rax + 1], 0
	je	.label_285
.label_288:
	mov	esi, OFFSET FLAT:label_287
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_286
.label_285:
	xor	ebx, ebx
.label_286:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403be1
	.globl sub_403be1
	.type sub_403be1, @function
sub_403be1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bf0
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
	#Procedure 0x403c03
	.globl sub_403c03
	.type sub_403c03, @function
sub_403c03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c10

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
	je	.label_299
	mov	edx, OFFSET FLAT:label_304
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_291
.label_299:
	mov	edx, OFFSET FLAT:label_293
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_291:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
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
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_300
	jmp	qword ptr [(r12 * 8) + label_301]
.label_447:
	add	rsp, 8
	jmp	.label_292
.label_300:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_307
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
	jmp	.label_292
.label_448:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
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
.label_449:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
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
.label_450:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
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
.label_451:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
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
	jmp	.label_292
.label_452:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
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
	jmp	.label_292
.label_453:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
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
	jmp	.label_292
.label_454:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
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
	jmp	.label_292
.label_456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
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
	jmp	.label_292
.label_455:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
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
.label_292:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f68
	.globl sub_403f68
	.type sub_403f68, @function
sub_403f68:

	nop	dword ptr [rax + rax]
.label_312:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_309
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_218
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x403fb1

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_311
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_312
	cmp	dword ptr [rbp], 0x20
	jne	.label_312
.label_311:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_313
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_313:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_309:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_310
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404030
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_314
	test	rdx, rdx
	je	.label_314
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_314:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40405b
	.globl sub_40405b
	.type sub_40405b, @function
sub_40405b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404060
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_10]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_315
	test	rsi, rsi
	je	.label_315
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_315:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4040d0

	.globl dc_parse_stream
	.type dc_parse_stream, @function
dc_parse_stream:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x30], 0
	mov	edi, OFFSET FLAT:label_359
	call	getenv
	test	rax, rax
	je	.label_317
	cmp	byte ptr [rax], 0
	jne	.label_320
.label_317:
	mov	eax, OFFSET FLAT:label_321
.label_320:
	mov	qword ptr [rsp + 0x28], rax
	mov	r13d, OFFSET FLAT:G_line
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, 3
	mov	qword ptr [rsp + 8], rax
	xor	ebx, ebx
	jmp	.label_323
.label_324:
	mov	rdi, r14
	call	free
	nop	dword ptr [rax]
.label_323:
	test	r12, r12
	je	.label_335
	mov	edx, 0xa
	lea	rdi, [rsp + 0x20]
	lea	rsi, [rsp + 0x30]
	mov	rcx, r12
	call	__getdelim
	mov	rbp, qword ptr [rsp + 0x20]
	test	rax, rax
	jg	.label_342
	jmp	.label_345
	.section	.text
	.align	32
	#Procedure 0x40416b
	.globl sub_40416b
	.type sub_40416b, @function
sub_40416b:

	nop	dword ptr [rax + rax]
.label_335:
	mov	eax, OFFSET FLAT:label_318
	cmp	r13, rax
	je	.label_319
	mov	rdi, r13
	call	strlen
	mov	rbp, r13
	lea	r13, [r13 + rax + 1]
.label_342:
	inc	rbx
	call	__ctype_b_loc
	mov	r15, rax
	mov	rax, qword ptr [r15]
	lea	rdi, [rbp - 1]
	add	rbp, 3
	nop	word ptr cs:[rax + rax]
.label_356:
	mov	rcx, rbp
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	lea	rbp, [rcx + 1]
	test	byte ptr [rax + rdx*2 + 1], 0x20
	jne	.label_356
	test	dl, dl
	je	.label_323
	cmp	dl, 0x23
	je	.label_323
	mov	r14, rdi
	nop	dword ptr [rax]
.label_362:
	mov	rbp, rcx
	movzx	ecx, byte ptr [r14 + 1]
	inc	r14
	test	rcx, rcx
	je	.label_360
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	lea	rcx, [rbp + 1]
	test	dx, dx
	je	.label_362
.label_360:
	mov	rsi, r14
	sub	rsi, rdi
	call	xstrndup
	mov	rdx, rax
	cmp	byte ptr [r14], 0
	mov	eax, 0
	je	.label_322
	mov	rdi, qword ptr [r15]
	nop	
.label_327:
	mov	rsi, rbp
	movzx	ecx, byte ptr [r14 + 1]
	inc	r14
	lea	rbp, [rsi + 1]
	test	byte ptr [rdi + rcx*2 + 1], 0x20
	jne	.label_327
	test	cl, cl
	je	.label_334
	cmp	cl, 0x23
	mov	eax, 0
	je	.label_322
	mov	rbp, rdx
	mov	rdx, r14
	jmp	.label_338
	.section	.text
	.align	32
	#Procedure 0x40424c
	.globl sub_40424c
	.type sub_40424c, @function
sub_40424c:

	nop	dword ptr [rax]
.label_333:
	mov	cl, byte ptr [rdx + 1]
	inc	rdx
	inc	rsi
.label_338:
	cmp	cl, 0x23
	je	.label_341
	test	cl, cl
	jne	.label_333
	nop	word ptr cs:[rax + rax]
.label_341:
	movzx	ecx, byte ptr [rsi - 2]
	dec	rsi
	test	byte ptr [rdi + rcx*2 + 1], 0x20
	jne	.label_341
	sub	rsi, r14
	mov	rdi, r14
	call	xstrndup
	mov	rdx, rbp
	jmp	.label_322
.label_334:
	xor	eax, eax
.label_322:
	test	rdx, rdx
	je	.label_323
	test	rax, rax
	jne	.label_352
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
	mov	r14, rdx
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	r8, rbx
	call	error
	jmp	.label_324
.label_352:
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_359
	mov	r15, rdx
	mov	rdi, rdx
	call	c_strcasecmp
	test	eax, eax
	je	.label_363
	mov	rax, qword ptr [rsp + 8]
	cmp	eax, 2
	mov	ecx, 1
	cmove	eax, ecx
	test	eax, eax
	je	.label_316
	mov	qword ptr [rsp + 8], rax
	mov	rdi, r15
	mov	al, byte ptr [rdi]
	cmp	al, 0x2a
	je	.label_325
	cmp	al, 0x2e
	jne	.label_328
	mov	rax, qword ptr [rip + label_226]
	cmp	qword ptr [rip + label_225],  rax
	jne	.label_330
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rdi, r15
	mov	rax, qword ptr [rip + label_226]
.label_330:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_226],  rcx
	mov	byte ptr [rax], 0x2a
.label_325:
	call	append_quoted
.label_326:
	mov	rax, qword ptr [rip + label_226]
	cmp	qword ptr [rip + label_225],  rax
	jne	.label_346
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_226]
.label_346:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_226],  rcx
	mov	byte ptr [rax], 0x3d
	mov	rdi, r14
	call	append_quoted
	mov	rax, qword ptr [rip + label_226]
	cmp	qword ptr [rip + label_225],  rax
	jne	.label_354
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_226]
.label_354:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_226],  rcx
	mov	byte ptr [rax], 0x3a
	jmp	.label_340
.label_363:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x28]
	call	fnmatch
	test	eax, eax
	je	.label_361
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 8]
	cmp	ecx, 2
	sete	al
	add	eax, eax
	jmp	.label_349
.label_316:
	xor	eax, eax
	jmp	.label_349
.label_361:
	mov	eax, 2
.label_349:
	mov	qword ptr [rsp + 8], rax
.label_340:
	mov	rdi, r15
.label_344:
	call	free
	jmp	.label_324
.label_328:
	mov	esi, OFFSET FLAT:label_355
	mov	rbp, rdi
	call	c_strcasecmp
	test	eax, eax
	je	.label_329
	mov	esi, OFFSET FLAT:label_331
	mov	rdi, rbp
	call	c_strcasecmp
	test	eax, eax
	je	.label_329
	mov	esi, OFFSET FLAT:label_339
	mov	rdi, rbp
	call	c_strcasecmp
	test	eax, eax
	je	.label_340
	mov	rbp, -0x128
.label_348:
	mov	rsi, qword ptr [rbp + label_343]
	mov	rdi, r15
	call	c_strcasecmp
	test	eax, eax
	je	.label_347
	add	rbp, 8
	jne	.label_348
	mov	rax, qword ptr [rsp + 8]
	lea	eax, [rax - 1]
	cmp	eax, 1
	ja	.label_340
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_351
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	jmp	.label_357
.label_347:
	mov	rax, qword ptr [rip + label_226]
	cmp	qword ptr [rip + label_225],  rax
	jne	.label_358
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_226]
.label_358:
	mov	rbp, qword ptr [rbp + label_336]
	mov	cl, byte ptr [rbp]
	lea	rdx, [rax + 1]
	mov	qword ptr [rip + label_226],  rdx
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rip + label_226]
	cmp	qword ptr [rip + label_225],  rax
	jne	.label_337
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_226]
.label_337:
	mov	cl, byte ptr [rbp + 1]
	lea	rdx, [rax + 1]
	mov	qword ptr [rip + label_226],  rdx
	mov	byte ptr [rax], cl
	jmp	.label_326
.label_351:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
	mov	edx, 5
	call	dcgettext
.label_357:
	mov	rcx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	r8, rbx
	mov	rbp, r15
	mov	r9, rbp
	call	error
.label_329:
	mov	rdi, rbp
	jmp	.label_344
.label_345:
	mov	rdi, rbp
	call	free
.label_319:
	mov	rax, qword ptr [rsp + 0x18]
	and	al, 1
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40458a
	.globl sub_40458a
	.type sub_40458a, @function
sub_40458a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404590

	.globl append_quoted
	.type append_quoted, @function
append_quoted:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	cl, byte ptr [r14]
	test	cl, cl
	je	.label_367
	inc	r14
	mov	al, 1
	nop	word ptr [rax + rax]
.label_370:
	movsx	ecx, cl
	lea	edx, [rcx - 0x3a]
	cmp	edx, 0x24
	ja	.label_374
	mov	bl, 1
	jmp	qword ptr [(rdx * 8) + label_372]
.label_568:
	not	al
	and	al, 1
	mov	ebx, eax
	jmp	.label_364
	.section	.text
	.align	32
	#Procedure 0x4045cf
	.globl sub_4045cf
	.type sub_4045cf, @function
sub_4045cf:

	nop	dword ptr [rax + rax]
.label_567:
	test	al, 1
	mov	bl, 1
	je	.label_364
	mov	rax, qword ptr [rip + label_226]
	cmp	qword ptr [rip + label_225],  rax
	jne	.label_371
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_226]
.label_371:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_226],  rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_369
	.section	.text
	.align	32
	#Procedure 0x404617
	.globl sub_404617
	.type sub_404617, @function
sub_404617:

	nop	word ptr [rax + rax]
.label_374:
	cmp	ecx, 0x27
	mov	bl, 1
	jne	.label_364
	mov	rax, qword ptr [rip + label_226]
	cmp	qword ptr [rip + label_225],  rax
	jne	.label_373
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_226]
.label_373:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_226],  rcx
	mov	byte ptr [rax], 0x27
	mov	rax, qword ptr [rip + label_226]
	cmp	qword ptr [rip + label_225],  rax
	jne	.label_368
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_226]
.label_368:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_226],  rcx
	mov	byte ptr [rax], 0x5c
	mov	rax, qword ptr [rip + label_226]
	cmp	qword ptr [rip + label_225],  rax
	jne	.label_365
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_226]
.label_365:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_226],  rcx
	mov	byte ptr [rax], 0x27
.label_369:
	mov	bl, 1
.label_364:
	mov	rax, qword ptr [rip + label_226]
	cmp	qword ptr [rip + label_225],  rax
	jne	.label_366
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_226]
.label_366:
	movzx	ecx, byte ptr [r14 - 1]
	lea	rdx, [rax + 1]
	mov	qword ptr [rip + label_226],  rdx
	mov	byte ptr [rax], cl
	movzx	ecx, byte ptr [r14]
	inc	r14
	test	cl, cl
	mov	eax, ebx
	jne	.label_370
.label_367:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40471a
	.globl sub_40471a
	.type sub_40471a, @function
sub_40471a:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404720

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_260
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, dword ptr [rip + exit_failure]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x40475b
	.globl sub_40475b
	.type sub_40475b, @function
sub_40475b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404760
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
	#Procedure 0x404796
	.globl sub_404796
	.type sub_404796, @function
sub_404796:

	nop	word ptr cs:[rax + rax]
.label_375:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047b5

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	qword ptr [r14 + 0x38], rcx
	mov	qword ptr [r14 + 0x40], r8
	and	byte ptr [r14 + 0x50], 0xfe
	test	rdx, rdx
	mov	ebx, 0x10
	cmovne	rbx, rdx
	test	rsi, rsi
	mov	edi, 0xfe0
	cmovne	rdi, rsi
	mov	qword ptr [r14], rdi
	lea	r15, [rbx - 1]
	mov	qword ptr [r14 + 0x30], r15
	call	rcx
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_375
	lea	rcx, [rax + r15 + 0x10]
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	mov	qword ptr [r14 + 0x18], rbx
	mov	rcx, qword ptr [r14]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [r14 + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_380:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_377
	mov	eax, OFFSET FLAT:label_378
	jmp	.label_379
	.section	.text
	.align	32
	#Procedure 0x40483f
	.globl sub_40483f
	.type sub_40483f, @function
sub_40483f:

	nop	word ptr cs:[rax + rax]
.label_384:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_376
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_376
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_376
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_376
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_376
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_376
	cmp	byte ptr [rax + 7], 0
	je	.label_380
.label_376:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_120
	mov	eax, OFFSET FLAT:label_101
.label_379:
	cmove	rax, rcx
.label_383:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404892

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
	jne	.label_383
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_384
	cmp	ecx, 0x55
	jne	.label_376
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_376
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_376
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_376
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_376
	cmp	byte ptr [rax + 5], 0
	jne	.label_376
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_381
	mov	eax, OFFSET FLAT:label_382
	jmp	.label_379
	.section	.text
	.align	32
	#Procedure 0x404900
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404908
	.globl sub_404908
	.type sub_404908, @function
sub_404908:

	nop	dword ptr [rax + rax]
.label_386:
	mov	ecx, 1
.label_385:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x404920
	.globl sub_404920
	.type sub_404920, @function
sub_404920:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404925

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_386
	test	rsi, rsi
	mov	ecx, 1
	je	.label_385
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_385
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404960
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
	#Procedure 0x40496f
	.globl sub_40496f
	.type sub_40496f, @function
sub_40496f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404970
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_387
	test	rax, rax
	je	.label_388
.label_387:
	pop	rbx
	ret	
.label_388:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40498a
	.globl sub_40498a
	.type sub_40498a, @function
sub_40498a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404990
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
	je	.label_390
	test	r15, r15
	je	.label_389
.label_390:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_389:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4049d2
	.globl sub_4049d2
	.type sub_4049d2, @function
sub_4049d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049e0

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
	je	.label_403
	cmp	eax, 1
	je	.label_391
	cmp	eax, 2
	je	.label_393
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_393:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_401
.label_403:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_394
.label_391:
	xor	r15d, r15d
.label_401:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_395
	mov	edi, OFFSET FLAT:label_40
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_395
	mov	r13b, 1
	jmp	.label_392
.label_395:
	test	r12b, r12b
	je	.label_400
	mov	edi, OFFSET FLAT:label_40
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_397
.label_400:
	test	r15b, r15b
	je	.label_394
	mov	edi, OFFSET FLAT:label_40
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_392
.label_394:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_399
.label_397:
	mov	r12b, 1
.label_392:
	xor	r14d, r14d
	test	eax, eax
	js	.label_399
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_399:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_396
	mov	edi, 2
	call	close
.label_396:
	test	r12b, r12b
	je	.label_398
	mov	edi, 1
	call	close
.label_398:
	test	r13b, r13b
	je	.label_404
	xor	edi, edi
	call	close
.label_404:
	test	r14, r14
	jne	.label_402
	mov	dword ptr [rbx], ebp
.label_402:
	mov	rax, r14
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
	#Procedure 0x404b22
	.globl sub_404b22
	.type sub_404b22, @function
sub_404b22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b30
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
	#Procedure 0x404ba5
	.globl sub_404ba5
	.type sub_404ba5, @function
sub_404ba5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bb0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x404bba
	.globl sub_404bba
	.type sub_404bba, @function
sub_404bba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_406
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_408
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_58
	mov	ecx, OFFSET FLAT:label_53
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_407
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x404c34
	.globl sub_404c34
	.type sub_404c34, @function
sub_404c34:

	nop	word ptr cs:[rax + rax]
.label_410:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_409
	call	__errno_location
	mov	dword ptr [rax], 0
.label_409:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c5b

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
	jne	.label_410
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_409
	test	cl, cl
	jne	.label_409
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_409
.label_411:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x404cac
	.globl sub_404cac
	.type sub_404cac, @function
sub_404cac:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cb8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_411
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_413
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_411
.label_413:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_411
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_412
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_412:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d20
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
	je	.label_414
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
.label_414:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404d88
	.globl sub_404d88
	.type sub_404d88, @function
sub_404d88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d90

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	mov	rcx, qword ptr [r12]
	mov	r14, qword ptr [r12 + 0x18]
	sub	r14, qword ptr [r12 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r12 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_416
	test	al, al
	jne	.label_416
	mov	r15, qword ptr [r12 + 8]
	test	byte ptr [r12 + 0x50], 1
	jne	.label_415
	mov	rdi, rbx
	call	qword ptr [r12 + 0x38]
	jmp	.label_419
.label_415:
	mov	rdi, qword ptr [r12 + 0x48]
	mov	rsi, rbx
	call	qword ptr [r12 + 0x38]
.label_419:
	mov	r13, rax
	test	r13, r13
	je	.label_416
	mov	qword ptr [r12 + 8], r13
	mov	qword ptr [r13 + 8], r15
	add	rbx, r13
	mov	qword ptr [r12 + 0x20], rbx
	mov	qword ptr [r13], rbx
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [r12 + 0x30]
	lea	rbx, [rbp + r13 + 0x10]
	mov	qword ptr [rsp + 8], r15
	mov	r15, rbp
	not	r15
	and	rbx, r15
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, r14
	call	memcpy
	test	byte ptr [r12 + 0x50], 2
	jne	.label_418
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rbp + rax + 0x10]
	and	rax, r15
	cmp	qword ptr [rsp + 0x10], rax
	jne	.label_418
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, rax
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r12 + 0x50], 1
	mov	rsi, rcx
	jne	.label_417
	mov	rdi, rsi
	call	qword ptr [r12 + 0x40]
	jmp	.label_418
.label_417:
	mov	rdi, qword ptr [r12 + 0x48]
	call	qword ptr [r12 + 0x40]
.label_418:
	mov	qword ptr [r12 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r12 + 0x18], r14
	and	byte ptr [r12 + 0x50], 0xfd
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_416:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr [rax + rax]
.label_420:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404ed5
	.globl sub_404ed5
	.type sub_404ed5, @function
sub_404ed5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ee0

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
	je	.label_420
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
	.section	.text
	.align	32
	#Procedure 0x404f70
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
	je	.label_421
	mov	qword ptr [rax], rbx
.label_421:
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
	#Procedure 0x40505c
	.globl sub_40505c
	.type sub_40505c, @function
sub_40505c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405060

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rcx, qword ptr [rdi + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_422
	xor	eax, eax
	nop	dword ptr [rax]
.label_423:
	sub	rax, rcx
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_423
.label_422:
	ret	
	.section	.text
	.align	32
	#Procedure 0x405080

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
	#Procedure 0x405099
	.globl sub_405099
	.type sub_405099, @function
sub_405099:

	nop	dword ptr [rax]
.label_424:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4050a5
	.globl sub_4050a5
	.type sub_4050a5, @function
sub_4050a5:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4050a7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_10]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_424
	test	rdx, rdx
	je	.label_424
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_430:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_428
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405130
	.globl sub_405130
	.type sub_405130, @function
sub_405130:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40513f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_430
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_425
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_427
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_425
	mov	esi, OFFSET FLAT:label_426
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_429
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_429:
	mov	rbx, r14
.label_425:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_431:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4051c5
	.globl sub_4051c5
	.type sub_4051c5, @function
sub_4051c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051cf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_431
	call	rpl_calloc
	test	rax, rax
	je	.label_431
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_432
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_432
	test	byte ptr [rbx + 1], 1
	je	.label_432
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_432:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x405223
	.globl sub_405223
	.type sub_405223, @function
sub_405223:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405230

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_257
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_433
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405255
	.globl sub_405255
	.type sub_405255, @function
sub_405255:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405260
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
	je	.label_434
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
.label_434:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4052cc
	.globl sub_4052cc
	.type sub_4052cc, @function
sub_4052cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4052d0

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
	je	.label_435
	cmp	r15, -2
	jb	.label_435
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_435
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_435:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405326
	.globl sub_405326
	.type sub_405326, @function
sub_405326:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405330

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_436
	test	rax, rax
	je	.label_437
.label_436:
	pop	rbx
	ret	
.label_437:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40534a
	.globl sub_40534a
	.type sub_40534a, @function
sub_40534a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053b5
	.globl sub_4053b5
	.type sub_4053b5, @function
sub_4053b5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053c2
	.globl sub_4053c2
	.type sub_4053c2, @function
sub_4053c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053e6
	.globl sub_4053e6
	.type sub_4053e6, @function
sub_4053e6:

	nop	word ptr cs:[rax + rax]
