	.section	.text
	.align	16
	#Procedure 0x4015d9
	.globl sub_4015d9
	.type sub_4015d9, @function
sub_4015d9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4015da
	.globl sub_4015da
	.type sub_4015da, @function
sub_4015da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401612
	.globl sub_401612
	.type sub_401612, @function
sub_401612:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40165a
	.globl sub_40165a
	.type sub_40165a, @function
sub_40165a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40167c
	.globl sub_40167c
	.type sub_40167c, @function
sub_40167c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40168d
	.globl sub_40168d
	.type sub_40168d, @function
sub_40168d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016a6
	.globl sub_4016a6
	.type sub_4016a6, @function
sub_4016a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016b0
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
	.align	16
	#Procedure 0x4016c8
	.globl sub_4016c8
	.type sub_4016c8, @function
sub_4016c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_9
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_12:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_12
.label_9:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_13
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_10], OFFSET FLAT:slot0
.label_13:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_11
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_11:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401761
	.globl sub_401761
	.type sub_401761, @function
sub_401761:

	nop	word ptr cs:[rax + rax]
.label_14:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_17:
	xor	eax, eax
.label_15:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40178f
	.globl sub_40178f
	.type sub_40178f, @function
sub_40178f:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401799

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_15
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_18
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_14
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_16
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_15
.label_16:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_17
.label_18:
	mov	rax, rbx
	jmp	.label_15
	.section	.text
	.align	16
	#Procedure 0x401800
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
	.align	16
	#Procedure 0x401836
	.globl sub_401836
	.type sub_401836, @function
sub_401836:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401840
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40184a
	.globl sub_40184a
	.type sub_40184a, @function
sub_40184a:

	nop	word ptr [rax + rax]
.label_22:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401855
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_22
	test	rsi, rsi
	je	.label_22
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
	.align	16
	#Procedure 0x4018c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
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
	.align	16
	#Procedure 0x401914
	.globl sub_401914
	.type sub_401914, @function
sub_401914:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401920

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
	je	.label_35
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_32
.label_35:
	mov	edx, OFFSET FLAT:label_33
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
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
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_38
	jmp	qword ptr [(r12 * 8) + label_39]
.label_458:
	add	rsp, 8
	jmp	.label_25
.label_38:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	jmp	.label_25
.label_459:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
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
.label_460:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
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
.label_461:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
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
.label_462:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
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
	jmp	.label_25
.label_463:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
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
	jmp	.label_25
.label_464:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
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
	jmp	.label_25
.label_465:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
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
	jmp	.label_25
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
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
	jmp	.label_25
.label_466:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
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
.label_25:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c78
	.globl sub_401c78
	.type sub_401c78, @function
sub_401c78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c80
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x401c85
	.globl sub_401c85
	.type sub_401c85, @function
sub_401c85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c90
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
	.align	16
	#Procedure 0x401ca3
	.globl sub_401ca3
	.type sub_401ca3, @function
sub_401ca3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cb0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_43
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_46
	mov	ecx, OFFSET FLAT:label_47
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x401d24
	.globl sub_401d24
	.type sub_401d24, @function
sub_401d24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d30

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_58
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_60
.label_58:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_60:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_48
	cmp	r10d, 0x29
	jae	.label_57
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_59
.label_57:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_59:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_48
	cmp	r10d, 0x29
	jae	.label_55
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_56
.label_55:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_56:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_48
	cmp	r10d, 0x29
	jae	.label_53
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_54
.label_53:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_54:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_48
	cmp	r10d, 0x29
	jae	.label_51
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_52
.label_51:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_52:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_48
	cmp	r10d, 0x29
	jae	.label_49
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_50
.label_49:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_50:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_48
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_48
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_48
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_48
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_48:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f12
	.globl sub_401f12
	.type sub_401f12, @function
sub_401f12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f20

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
	jmp	.label_71
	.section	.text
	.align	16
	#Procedure 0x401fcf
	.globl sub_401fcf
	.type sub_401fcf, @function
sub_401fcf:

	nop	
.label_68:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_66
	or	al, dl
	jne	.label_66
	test	dil, 1
	jne	.label_63
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_66
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_71
	jmp	.label_66
.label_427:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_79
	test	rbp, rbp
	je	.label_165
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_165:
	mov	r14d, 1
	jmp	.label_88
.label_428:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_90
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_91
.label_79:
	xor	r14d, r14d
.label_88:
	mov	eax, OFFSET FLAT:label_90
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_140
	.section	.text
	.align	16
	#Procedure 0x40209f
	.globl sub_40209f
	.type sub_40209f, @function
sub_40209f:

	nop	
.label_71:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_110
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_73]
.label_429:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_124
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_105
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_430:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_139
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_139
	xor	r14d, r14d
	nop	
.label_150:
	cmp	r14, rbp
	jae	.label_147
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_147:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_150
.label_139:
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
	jmp	.label_91
.label_422:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_91
.label_425:
	mov	al, 1
.label_423:
	mov	r12b, 1
.label_426:
	test	r12b, 1
	mov	cl, 1
	je	.label_158
	mov	ecx, eax
.label_158:
	mov	al, cl
.label_424:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_167
	test	rbp, rbp
	je	.label_174
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_174:
	mov	r14d, 1
	jmp	.label_112
.label_167:
	xor	r14d, r14d
.label_112:
	mov	ecx, OFFSET FLAT:label_105
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_140:
	mov	sil, r12b
.label_91:
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
	jmp	.label_181
	.section	.text
	.align	16
	#Procedure 0x402261
	.globl sub_402261
	.type sub_402261, @function
sub_402261:

	nop	word ptr cs:[rax + rax]
.label_83:
	inc	r12
.label_181:
	cmp	r11, -1
	je	.label_98
	cmp	r12, r11
	jne	.label_100
	jmp	.label_102
	.section	.text
	.align	16
	#Procedure 0x402283
	.globl sub_402283
	.type sub_402283, @function
sub_402283:

	nop	word ptr cs:[rax + rax]
.label_98:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_186
.label_100:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_111
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_115
	cmp	r11, -1
	jne	.label_115
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_115:
	cmp	rbx, r11
	jbe	.label_129
.label_111:
	xor	esi, esi
.label_152:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_131
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_136]
.label_441:
	test	r12, r12
	jne	.label_82
	jmp	.label_62
	.section	.text
	.align	16
	#Procedure 0x402316
	.globl sub_402316
	.type sub_402316, @function
sub_402316:

	nop	word ptr cs:[rax + rax]
.label_129:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_149
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_152
	jmp	.label_77
.label_149:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_152
.label_445:
	xor	eax, eax
	cmp	r11, -1
	je	.label_160
	test	r12, r12
	jne	.label_163
	cmp	r11, 1
	je	.label_62
	xor	r13d, r13d
	jmp	.label_65
.label_434:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_169
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_77
	cmp	r8d, 2
	jne	.label_175
	mov	eax, r9d
	and	al, 1
	jne	.label_175
	cmp	r14, rbp
	jae	.label_177
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_177:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_179
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_179:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_70
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_70:
	add	r14, 3
	mov	r9b, 1
.label_175:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_187
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_187:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_74
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_74
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_74
	cmp	r14, rbp
	jae	.label_122
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_122:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_183
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_183:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_65
.label_435:
	mov	bl, 0x62
	jmp	.label_99
.label_436:
	mov	cl, 0x74
	jmp	.label_92
.label_437:
	mov	bl, 0x76
	jmp	.label_99
.label_438:
	mov	bl, 0x66
	jmp	.label_99
.label_439:
	mov	cl, 0x72
	jmp	.label_92
.label_442:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_108
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_97
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
	jae	.label_117
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_117:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_133
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_133:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_138
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_138:
	add	r14, 3
	xor	r9d, r9d
.label_108:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_65
.label_443:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_143
	cmp	r8d, 2
	jne	.label_82
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_82
	jmp	.label_97
.label_444:
	cmp	r8d, 2
	jne	.label_154
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_97
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_78
.label_131:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_157
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_166
.label_160:
	test	r12, r12
	jne	.label_176
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_176
.label_62:
	mov	dl, 1
.label_440:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_97
	xor	eax, eax
	mov	r13b, dl
.label_65:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_182
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_184
	jmp	.label_61
	.section	.text
	.align	16
	#Procedure 0x4025f4
	.globl sub_4025f4
	.type sub_4025f4, @function
sub_4025f4:

	nop	word ptr cs:[rax + rax]
.label_182:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_61
.label_184:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_64
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_72
	.section	.text
	.align	16
	#Procedure 0x40262d
	.globl sub_40262d
	.type sub_40262d, @function
sub_40262d:

	nop	dword ptr [rax]
.label_61:
	test	sil, sil
.label_72:
	mov	ebx, r15d
	je	.label_95
	jmp	.label_81
.label_64:
	mov	ebx, r15d
	jmp	.label_81
.label_169:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_83
	xor	r15d, r15d
	jmp	.label_82
.label_154:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_92
	xor	eax, eax
	mov	r15b, 0x5c
.label_78:
	xor	r13d, r13d
	jmp	.label_95
.label_92:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_97
.label_99:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_65
	nop	
.label_81:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_77
	cmp	r8d, 2
	jne	.label_109
	mov	eax, r9d
	and	al, 1
	jne	.label_109
	cmp	r14, rbp
	jae	.label_114
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_114:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_118
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_118:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_123
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_123:
	add	r14, 3
	mov	r9b, 1
.label_109:
	cmp	r14, rbp
	jae	.label_130
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_130:
	inc	r14
	jmp	.label_171
.label_157:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_137
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_137:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_142
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_164:
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
	je	.label_155
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_161
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_94
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_172
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_84:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_170
	bt	rsi, rdx
	jb	.label_97
.label_170:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_84
.label_172:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_67
	xor	r13d, r13d
.label_67:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_164
	jmp	.label_75
.label_74:
	xor	r13d, r13d
	jmp	.label_65
.label_176:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_65
.label_143:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_82
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_82
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_82
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_96
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_127
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_104
	cmp	r14, rbp
	jae	.label_106
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_106:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_113
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_113:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_85
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_85:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_87
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_87:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_127:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_65
.label_82:
	xor	eax, eax
.label_163:
	xor	r13d, r13d
	jmp	.label_65
.label_142:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_159:
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
	je	.label_132
	cmp	rbp, -1
	je	.label_153
	cmp	rbp, -2
	je	.label_155
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_156
	xor	r13d, r13d
.label_156:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_159
	jmp	.label_75
.label_155:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_145
	lea	rax, [r10 + r12]
.label_119:
	cmp	byte ptr [rax + rsi], 0
	je	.label_145
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_119
.label_145:
	mov	qword ptr [rsp + 0x40], rsi
.label_161:
	xor	r13d, r13d
	jmp	.label_94
.label_153:
	xor	r13d, r13d
.label_132:
	mov	r10, qword ptr [rsp + 0x28]
.label_94:
	mov	r12, qword ptr [rsp + 0x40]
.label_75:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_166:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_76
	test	al, al
	je	.label_76
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_65
.label_76:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_69
	.section	.text
	.align	16
	#Procedure 0x402a27
	.globl sub_402a27
	.type sub_402a27, @function
sub_402a27:

	nop	word ptr [rax + rax]
.label_162:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_69:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_80
	test	sil, 1
	je	.label_93
	cmp	r14, rbp
	jae	.label_86
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_86:
	inc	r14
	xor	esi, esi
	jmp	.label_93
	.section	.text
	.align	16
	#Procedure 0x402a65
	.globl sub_402a65
	.type sub_402a65, @function
sub_402a65:

	nop	word ptr cs:[rax + rax]
.label_80:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_77
	cmp	r8d, 2
	jne	.label_101
	mov	eax, r9d
	and	al, 1
	jne	.label_101
	cmp	r14, rbp
	jae	.label_103
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_103:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_107
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_107:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_135
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_135:
	add	r14, 3
	mov	r9b, 1
.label_101:
	cmp	r14, rbp
	jae	.label_121
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_121:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_126
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_126:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_134
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_134:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_93:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_95
	test	r9b, 1
	je	.label_144
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_141
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_148
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_148:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_178
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_178:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_144
	.section	.text
	.align	16
	#Procedure 0x402b76
	.globl sub_402b76
	.type sub_402b76, @function
sub_402b76:

	nop	word ptr cs:[rax + rax]
.label_141:
	mov	rbx, rcx
.label_144:
	cmp	r14, rbp
	jae	.label_162
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_162
	.section	.text
	.align	16
	#Procedure 0x402b9e
	.globl sub_402b9e
	.type sub_402b9e, @function
sub_402b9e:

	nop	
.label_95:
	test	r9b, 1
	je	.label_168
	and	al, 1
	jne	.label_168
	cmp	r14, rbp
	jae	.label_173
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_173:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_89
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_89:
	add	r14, 2
	xor	r9d, r9d
.label_168:
	mov	ebx, r15d
.label_171:
	cmp	r14, rbp
	jae	.label_180
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_180:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_83
.label_96:
	xor	r13d, r13d
	jmp	.label_65
	.section	.text
	.align	16
	#Procedure 0x402c01
	.globl sub_402c01
	.type sub_402c01, @function
sub_402c01:

	nop	word ptr cs:[rax + rax]
.label_102:
	mov	rcx, r12
.label_186:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_68
	or	al, dl
	jne	.label_68
	mov	r11, rcx
	jmp	.label_77
.label_97:
	mov	eax, 2
.label_151:
	mov	qword ptr [rsp + 0x38], rax
.label_77:
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
.label_120:
	mov	r14, rax
.label_146:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_66:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_185
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_116
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_116
	inc	rdx
	nop	dword ptr [rax + rax]
.label_128:
	cmp	r14, rbp
	jae	.label_125
	mov	byte ptr [rcx + r14], al
.label_125:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_128
	jmp	.label_116
.label_63:
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
	jmp	.label_120
.label_185:
	mov	rcx, qword ptr [rsp + 0x10]
.label_116:
	cmp	r14, rbp
	jae	.label_146
	mov	byte ptr [rcx + r14], 0
	jmp	.label_146
.label_104:
	mov	eax, 5
	jmp	.label_151
.label_110:
	call	abort
.label_190:
	call	xalloc_die
.label_188:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_189
	test	rax, rax
	je	.label_190
.label_189:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d69

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_188
	test	rbx, rbx
	jne	.label_188
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d80

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_194
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_195
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_191
	jmp	.label_192
.label_195:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
.label_192:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_194:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e43
	.globl sub_402e43
	.type sub_402e43, @function
sub_402e43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e50

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2048
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_215
	call	setlocale
	mov	edi, OFFSET FLAT:label_224
	mov	esi, OFFSET FLAT:label_225
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_224
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + append],  0
	mov	byte ptr [rip + ignore_interrupts],  0
	jmp	.label_203
.label_241:
	mov	byte ptr [rip + ignore_interrupts],  1
	nop	word ptr [rax + rax]
.label_203:
	mov	edx, OFFSET FLAT:label_233
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x60
	jle	.label_238
	cmp	eax, 0x70
	je	.label_239
	cmp	eax, 0x69
	je	.label_241
	cmp	eax, 0x61
	jne	.label_214
	mov	byte ptr [rip + append],  1
	jmp	.label_203
.label_239:
	mov	rsi, qword ptr [rip + optarg]
	test	rsi, rsi
	je	.label_242
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_196
	mov	edx, OFFSET FLAT:output_error_args
	mov	ecx, OFFSET FLAT:output_error_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + output_error_types]
	mov	dword ptr [rip + output_error],  eax
	jmp	.label_203
.label_242:
	mov	dword ptr [rip + output_error],  2
	jmp	.label_203
.label_238:
	cmp	eax, -1
	jne	.label_207
	cmp	byte ptr [rip + ignore_interrupts],  1
	jne	.label_208
	mov	edi, 2
	mov	esi, 1
	call	signal
.label_208:
	cmp	dword ptr [rip + output_error],  0
	je	.label_213
	mov	edi, 0xd
	mov	esi, 1
	call	signal
.label_213:
	movsxd	rbp, dword ptr [rip + optind]
	sub	ebx, ebp
	mov	al, byte ptr [rip + append]
	mov	ecx, OFFSET FLAT:label_222
	mov	r15d, OFFSET FLAT:label_223
	test	al, al
	cmovne	r15, rcx
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	call	fadvise
	cmp	ebx, -2
	jle	.label_230
	lea	rax, [r14 + rbp*8]
	mov	qword ptr [rsp + 8], rax
	lea	eax, [rbx + 1]
	mov	dword ptr [rsp + 0x3c], eax
	movsxd	rdi, eax
	shl	rdi, 3
	call	xmalloc
	mov	rcx, qword ptr [rip + stdout]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rax], rcx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [r14 + rbp*8 - 8], rax
	mov	rdi, qword ptr [rip + stdout]
	xor	esi, esi
	mov	edx, 2
	xor	ecx, ecx
	call	setvbuf
	mov	al, 1
	mov	qword ptr [rsp], rax
	mov	r12d, 1
	mov	qword ptr [rsp + 0x28], rbx
	test	ebx, ebx
	jle	.label_200
	mov	rax, qword ptr [rsp + 0x10]
	lea	rbx, [rax + 8]
	mov	al, 1
	mov	qword ptr [rsp], rax
	mov	r12d, 1
	mov	rbp, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x28]
	mov	r13d, eax
	nop	
.label_237:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r15
	call	fopen_safer
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	.label_211
	xor	esi, esi
	mov	edx, 2
	xor	ecx, ecx
	mov	rdi, rax
	call	setvbuf
	inc	r12
	jmp	.label_221
	.section	.text
	.align	16
	#Procedure 0x40307a
	.globl sub_40307a
	.type sub_40307a, @function
sub_40307a:

	nop	word ptr [rax + rax]
.label_211:
	mov	eax, dword ptr [rip + output_error]
	add	eax, -3
	cmp	eax, 2
	mov	qword ptr [rsp + 0x18], r12
	sbb	r12d, r12d
	and	r12d, 1
	call	__errno_location
	mov	r14, r15
	mov	r15d, dword ptr [rax]
	mov	rdx, qword ptr [rbp]
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edx, OFFSET FLAT:label_198
	xor	eax, eax
	mov	edi, r12d
	mov	r12, qword ptr [rsp + 0x18]
	mov	esi, r15d
	mov	r15, r14
	call	error
.label_221:
	add	rbx, 8
	add	rbp, 8
	dec	r13d
	jne	.label_237
.label_200:
	mov	r15, qword ptr [rsp + 0x28]
	test	r15d, r15d
	js	.label_228
	mov	qword ptr [rsp + 0x18], r12
	test	r12, r12
	mov	rbx, qword ptr [rsp + 8]
	mov	r12, qword ptr [rsp]
	je	.label_197
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rax + rcx*8 - 8]
	mov	qword ptr [rsp + 0x20], rax
	lea	rbp, [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_204:
	xor	edi, edi
	mov	edx, 0x2000
	mov	rsi, rbp
	call	read
	mov	r14, rax
	test	r14, r14
	jns	.label_206
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_204
	jmp	.label_209
.label_206:
	je	.label_197
	mov	qword ptr [rsp], r12
	mov	r15, qword ptr [rsp + 0x10]
	mov	r13d, dword ptr [rsp + 0x3c]
	mov	r12, qword ptr [rsp + 0x20]
	nop	
.label_202:
	mov	rbp, qword ptr [r15]
	test	rbp, rbp
	je	.label_216
	mov	edx, 1
	lea	rdi, [rsp + 0x40]
	mov	rsi, r14
	mov	rcx, rbp
	call	fwrite_unlocked
	cmp	rax, 1
	je	.label_216
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	al, 1
	cmp	ebx, 0x20
	jne	.label_210
	mov	eax, dword ptr [rip + output_error]
	or	eax, 2
	cmp	eax, 3
	sete	al
.label_210:
	cmp	rbp, qword ptr [rip + stdout]
	jne	.label_231
	mov	rdi, rbp
	mov	ebp, eax
	call	clearerr_unlocked
	mov	eax, ebp
.label_231:
	test	al, al
	je	.label_235
	mov	byte ptr [rsp + 0x30], al
	mov	eax, dword ptr [rip + output_error]
	add	eax, -3
	cmp	eax, 2
	sbb	ebp, ebp
	and	ebp, 1
	mov	rdx, qword ptr [r12]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edx, OFFSET FLAT:label_198
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	call	error
	movzx	eax, byte ptr [rsp + 0x30]
.label_235:
	mov	qword ptr [r15], 0
	test	al, al
	je	.label_199
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_199:
	dec	qword ptr [rsp + 0x18]
.label_216:
	add	r12, 8
	add	r15, 8
	dec	r13d
	jne	.label_202
	cmp	qword ptr [rsp + 0x18], 0
	mov	r15, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 8]
	mov	r12, qword ptr [rsp]
	lea	rbp, [rsp + 0x40]
	jne	.label_204
	jmp	.label_209
.label_228:
	test	r12, r12
	mov	rbx, qword ptr [rsp + 8]
	mov	r12, qword ptr [rsp]
	je	.label_197
	lea	rbp, [rsp + 0x40]
	nop	dword ptr [rax]
.label_227:
	xor	edi, edi
	mov	edx, 0x2000
	mov	rsi, rbp
	call	read
	mov	r14, rax
	test	r14, r14
	js	.label_226
	jne	.label_227
	jmp	.label_197
	.section	.text
	.align	16
	#Procedure 0x40328b
	.globl sub_40328b
	.type sub_40328b, @function
sub_40328b:

	nop	dword ptr [rax + rax]
.label_226:
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_227
.label_209:
	cmp	r14, -1
	jne	.label_197
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_197:
	test	r15d, r15d
	jle	.label_234
	mov	rbp, qword ptr [rsp + 0x10]
	add	rbp, 8
	nop	word ptr [rax + rax]
.label_201:
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_240
	call	rpl_fclose
	test	eax, eax
	je	.label_240
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdx, qword ptr [rbx]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_198
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_240:
	add	rbx, 8
	add	rbp, 8
	dec	r15d
	jne	.label_201
.label_234:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_205
	and	r12b, 1
	movzx	eax, r12b
	xor	eax, 1
	add	rsp, 0x2048
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_207:
	cmp	eax, 0xffffff7d
	je	.label_212
	cmp	eax, 0xffffff7e
	jne	.label_214
	xor	edi, edi
	call	usage
.label_212:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_217
	mov	edx, OFFSET FLAT:label_46
	mov	r8d, OFFSET FLAT:label_218
	mov	r9d, OFFSET FLAT:label_219
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_220
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_230:
	call	xalloc_die
.label_205:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_198
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_214:
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4033f1
	.globl sub_4033f1
	.type sub_4033f1, @function
sub_4033f1:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_243:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403405
	.globl sub_403405
	.type sub_403405, @function
sub_403405:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40340d
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
	je	.label_243
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
	.section	.text
	.align	16
	#Procedure 0x403470
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40347f
	.globl sub_40347f
	.type sub_40347f, @function
sub_40347f:

	nop	
.label_244:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403485
	.globl sub_403485
	.type sub_403485, @function
sub_403485:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403493
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
	je	.label_245
	test	r15, r15
	je	.label_244
.label_245:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034d0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034df
	.globl sub_4034df
	.type sub_4034df, @function
sub_4034df:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4034e0

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
	.align	16
	#Procedure 0x4034f9
	.globl sub_4034f9
	.type sub_4034f9, @function
sub_4034f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403500

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_246
	test	rax, rax
	je	.label_247
.label_246:
	pop	rbx
	ret	
.label_247:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40351a
	.globl sub_40351a
	.type sub_40351a, @function
sub_40351a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403520
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
	je	.label_248
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
.label_248:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403588
	.globl sub_403588
	.type sub_403588, @function
sub_403588:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403590

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
	je	.label_249
	cmp	r15, -2
	jb	.label_249
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_249
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_249:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035e6
	.globl sub_4035e6
	.type sub_4035e6, @function
sub_4035e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_250
	test	rsi, rsi
	mov	ecx, 1
	je	.label_251
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_251
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_250:
	mov	ecx, 1
.label_251:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40363b
	.globl sub_40363b
	.type sub_40363b, @function
sub_40363b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403640
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_252
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_256
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_253
.label_256:
	call	xalloc_die
.label_257:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403677
	.globl sub_403677
	.type sub_403677, @function
sub_403677:

	nop	word ptr [rax + rax]
.label_254:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_255
	test	rax, rax
	je	.label_256
.label_255:
	pop	rbx
	ret	
.label_252:
	test	rcx, rcx
	jne	.label_258
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_258:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_257
.label_253:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_254
	test	rbx, rbx
	jne	.label_254
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036e0
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
	.align	16
	#Procedure 0x4037a1
	.globl sub_4037a1
	.type sub_4037a1, @function
sub_4037a1:

	nop	word ptr cs:[rax + rax]
.label_260:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_259
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_259:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037e4
	.globl sub_4037e4
	.type sub_4037e4, @function
sub_4037e4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4037e6

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
	jne	.label_261
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_261
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_260
.label_261:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x403820

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40382e
	.globl sub_40382e
	.type sub_40382e, @function
sub_40382e:

	nop	
.label_272:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
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
	.align	16
	#Procedure 0x403868
	.globl sub_403868
	.type sub_403868, @function
sub_403868:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40386d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_272
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_275
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_263
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_268
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_46
	mov	ecx, OFFSET FLAT:label_47
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_267
	mov	esi, OFFSET FLAT:label_276
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_267
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_267:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_266
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_47
	mov	ecx, OFFSET FLAT:label_217
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_217
	mov	ecx, OFFSET FLAT:label_273
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x403a10

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x403a1a
	.globl sub_403a1a
	.type sub_403a1a, @function
sub_403a1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a20
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
	.align	16
	#Procedure 0x403a39
	.globl sub_403a39
	.type sub_403a39, @function
sub_403a39:

	nop	dword ptr [rax]
.label_277:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403a46
	.globl sub_403a46
	.type sub_403a46, @function
sub_403a46:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a4b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_277
	test	rdx, rdx
	je	.label_277
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a70

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
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
	.align	16
	#Procedure 0x403ac5
	.globl sub_403ac5
	.type sub_403ac5, @function
sub_403ac5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ad0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	16
	#Procedure 0x403ae7
	.globl sub_403ae7
	.type sub_403ae7, @function
sub_403ae7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403af0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403afe
	.globl sub_403afe
	.type sub_403afe, @function
sub_403afe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403b00

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
	js	.label_278
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_281
	cmp	r12d, 0x7fffffff
	je	.label_283
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
	jne	.label_279
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_279:
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
.label_281:
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
	jbe	.label_284
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_280
.label_284:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_282
	mov	rdi, r14
	call	free
.label_282:
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
.label_280:
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
.label_278:
	call	abort
.label_283:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403cbd
	.globl sub_403cbd
	.type sub_403cbd, @function
sub_403cbd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403cc0

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
	mov	esi, OFFSET FLAT:label_285
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_291
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_292:
	test	r15, r15
	je	.label_289
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_290
.label_289:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_286
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_288
	.section	.text
	.align	16
	#Procedure 0x403d52
	.globl sub_403d52
	.type sub_403d52, @function
sub_403d52:

	nop	word ptr cs:[rax + rax]
.label_293:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	.section	.text
	.align	16
	#Procedure 0x403d78
	.globl sub_403d78
	.type sub_403d78, @function
sub_403d78:

	nop	word ptr cs:[rax + rax]
.label_290:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_287
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_288:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_292
.label_291:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_293
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
	.section	.text
	.align	16
	#Procedure 0x403df0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_294
	test	rdx, rdx
	je	.label_294
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_294:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403e5e
	.globl sub_403e5e
	.type sub_403e5e, @function
sub_403e5e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403e60
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
	.align	16
	#Procedure 0x403e93
	.globl sub_403e93
	.type sub_403e93, @function
sub_403e93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ea0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ea8
	.globl sub_403ea8
	.type sub_403ea8, @function
sub_403ea8:

	nop	dword ptr [rax + rax]
.label_296:
	mov	esi, OFFSET FLAT:label_193
.label_295:
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
	.align	16
	#Procedure 0x403f03
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
	je	.label_296
	mov	esi, OFFSET FLAT:label_191
	jmp	.label_295
.label_297:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f25
	.globl sub_403f25
	.type sub_403f25, @function
sub_403f25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f2f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_297
	call	rpl_calloc
	test	rax, rax
	je	.label_297
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f50
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f58
	.globl sub_403f58
	.type sub_403f58, @function
sub_403f58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f60

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_298
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_298
	test	byte ptr [rbx + 1], 1
	je	.label_298
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_298:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403f93
	.globl sub_403f93
	.type sub_403f93, @function
sub_403f93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fa0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_299
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_300
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_299
.label_300:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_299
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_301
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_301:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_299:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x404014
	.globl sub_404014
	.type sub_404014, @function
sub_404014:

	nop	word ptr cs:[rax + rax]
.label_303:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_302
	call	__errno_location
	mov	dword ptr [rax], 0
.label_302:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40403b

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
	jne	.label_303
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_302
	test	cl, cl
	jne	.label_302
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_302
	.section	.text
	.align	16
	#Procedure 0x404080
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
	je	.label_304
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
.label_304:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4040e1
	.globl sub_4040e1
	.type sub_4040e1, @function
sub_4040e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_198
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_306:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404125
	.globl sub_404125
	.type sub_404125, @function
sub_404125:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40412b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_306
	test	rdx, rdx
	je	.label_306
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_311:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_309
	mov	qword ptr [rsi], rbx
.label_310:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_308
	test	rax, rax
	je	.label_309
.label_308:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041b8
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_311
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_307
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_310
	call	free
	xor	eax, eax
	jmp	.label_308
.label_307:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4041ef
	.globl sub_4041ef
	.type sub_4041ef, @function
sub_4041ef:

	nop	word ptr cs:[rax + rax]
.label_309:
	call	xalloc_die
.label_312:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404205
	.globl sub_404205
	.type sub_404205, @function
sub_404205:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404209

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
	je	.label_313
	test	r15, r15
	je	.label_312
.label_313:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404240
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
	je	.label_315
	test	r14, r14
	je	.label_314
.label_315:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_314:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404276
	.globl sub_404276
	.type sub_404276, @function
sub_404276:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404280

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_317
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_316
	cmp	dword ptr [rbp], 0x20
	jne	.label_316
.label_317:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_320
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_320:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_318:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_319
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_316:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_318
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_198
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x404340

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_322
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_322:
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
	.align	16
	#Procedure 0x4043c3
	.globl sub_4043c3
	.type sub_4043c3, @function
sub_4043c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043d0
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
	je	.label_323
	mov	qword ptr [rax], rbx
.label_323:
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
	.align	16
	#Procedure 0x4044bc
	.globl sub_4044bc
	.type sub_4044bc, @function
sub_4044bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0
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
	.align	16
	#Procedure 0x404535
	.globl sub_404535
	.type sub_404535, @function
sub_404535:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404540
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
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
	.align	16
	#Procedure 0x4045ae
	.globl sub_4045ae
	.type sub_4045ae, @function
sub_4045ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4045b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_325
	cmp	byte ptr [rax], 0x43
	jne	.label_327
	cmp	byte ptr [rax + 1], 0
	je	.label_324
.label_327:
	mov	esi, OFFSET FLAT:label_326
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_325
.label_324:
	xor	ebx, ebx
.label_325:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045e1
	.globl sub_4045e1
	.type sub_4045e1, @function
sub_4045e1:

	nop	word ptr cs:[rax + rax]
.label_328:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4045f5
	.globl sub_4045f5
	.type sub_4045f5, @function
sub_4045f5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045f9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_328
	test	rsi, rsi
	je	.label_328
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
	.align	16
	#Procedure 0x404660

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
	mov	rbx, rsi
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_337
	test	r14, r14
	je	.label_332
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_329:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_331
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_333
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_334
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_331
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_331
.label_334:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_331:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_329
	jmp	.label_336
.label_337:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_336
.label_332:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_330:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_335
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_333
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_335
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_335:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_330
.label_336:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_333:
	mov	rax, rbx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047d8
	.globl sub_4047d8
	.type sub_4047d8, @function
sub_4047d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_338:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_338
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x404801
	.globl sub_404801
	.type sub_404801, @function
sub_404801:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404810
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_339
	test	rax, rax
	je	.label_340
.label_339:
	pop	rbx
	ret	
.label_340:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40482a
	.globl sub_40482a
	.type sub_40482a, @function
sub_40482a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404830
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_341
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_342
	test	rbx, rbx
	jne	.label_342
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_341:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404864
	.globl sub_404864
	.type sub_404864, @function
sub_404864:

	nop	dword ptr [rax + rax]
.label_342:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_343
	test	rax, rax
	je	.label_341
.label_343:
	pop	rbx
	ret	
.label_344:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404885
	.globl sub_404885
	.type sub_404885, @function
sub_404885:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404890
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_344
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_345
	test	rax, rax
	je	.label_344
.label_345:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048c0
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
	.align	16
	#Procedure 0x4048d8
	.globl sub_4048d8
	.type sub_4048d8, @function
sub_4048d8:

	nop	dword ptr [rax + rax]
.label_346:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048e2
	.globl sub_4048e2
	.type sub_4048e2, @function
sub_4048e2:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4048e5

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_346
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x404900

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404911
	.globl sub_404911
	.type sub_404911, @function
sub_404911:

	nop	word ptr cs:[rax + rax]
.label_351:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_347
	mov	eax, OFFSET FLAT:label_348
	jmp	.label_349
	.section	.text
	.align	16
	#Procedure 0x40492f
	.globl sub_40492f
	.type sub_40492f, @function
sub_40492f:

	nop	word ptr cs:[rax + rax]
.label_354:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_350
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_350
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_350
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_350
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_350
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_350
	cmp	byte ptr [rax + 7], 0
	je	.label_351
.label_350:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_90
	mov	eax, OFFSET FLAT:label_105
.label_349:
	cmove	rax, rcx
.label_355:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404982

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
	jne	.label_355
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_354
	cmp	ecx, 0x55
	jne	.label_350
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_350
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_350
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_350
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_350
	cmp	byte ptr [rax + 5], 0
	jne	.label_350
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_352
	mov	eax, OFFSET FLAT:label_353
	jmp	.label_349
	.section	.text
	.align	16
	#Procedure 0x4049f0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_215
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_356
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a15
	.globl sub_404a15
	.type sub_404a15, @function
sub_404a15:

	nop	word ptr cs:[rax + rax]
.label_357:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404a25
	.globl sub_404a25
	.type sub_404a25, @function
sub_404a25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a30

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
	je	.label_357
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
	.align	16
	#Procedure 0x404ac0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_358
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_360
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_360
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_363
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_363:
	mov	rbx, r14
.label_360:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_358:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_359
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404b61
	.globl sub_404b61
	.type sub_404b61, @function
sub_404b61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b70

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
	je	.label_364
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
.label_364:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404bdc
	.globl sub_404bdc
	.type sub_404bdc, @function
sub_404bdc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404be0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404bea
	.globl sub_404bea
	.type sub_404bea, @function
sub_404bea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bf0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
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
	.align	16
	#Procedure 0x404c5f
	.globl sub_404c5f
	.type sub_404c5f, @function
sub_404c5f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404c60

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_382
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_382:
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
	ja	.label_372
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_383
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_371
	test	esi, esi
	jne	.label_372
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_385
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_365
.label_372:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_366
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_371
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_374
.label_383:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_378
.label_371:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_379
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_380
.label_379:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_380:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_381:
	call	fcntl
.label_378:
	mov	ebp, eax
.label_367:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_374:
	cmp	eax, 6
	jne	.label_366
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_369
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_377
.label_366:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_373
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_376
.label_385:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_365:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_381
.label_369:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_377:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_384
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_368
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_368
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_367
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_375
.label_368:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_367
.label_373:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_376:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_378
.label_384:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_375:
	test	al, al
	je	.label_367
	test	ebp, ebp
	js	.label_367
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_370
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_367
.label_370:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_367
	.section	.text
	.align	16
	#Procedure 0x404ef1
	.globl sub_404ef1
	.type sub_404ef1, @function
sub_404ef1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f00
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
	je	.label_386
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_387:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_386
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_387
.label_386:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f63
	.globl sub_404f63
	.type sub_404f63, @function
sub_404f63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fd5
	.globl sub_404fd5
	.type sub_404fd5, @function
sub_404fd5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fe2
	.globl sub_404fe2
	.type sub_404fe2, @function
sub_404fe2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405006
	.globl sub_405006
	.type sub_405006, @function
sub_405006:

	nop	word ptr cs:[rax + rax]
