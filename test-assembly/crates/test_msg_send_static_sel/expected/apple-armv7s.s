	.section	__TEXT,__text,regular,pure_instructions
	.syntax unified
	.globl	_handle_with_sel
	.p2align	2
	.code	32
_handle_with_sel:
	push	{r7, lr}
	mov	r7, sp
	movw	r1, :lower16:(L_OBJC_SELECTOR_REFERENCES_044375a4329d08dc-(LPC0_0+8))
	movt	r1, :upper16:(L_OBJC_SELECTOR_REFERENCES_044375a4329d08dc-(LPC0_0+8))
LPC0_0:
	ldr	r1, [pc, r1]
	bl	_objc_msgSend
	pop	{r7, pc}

	.globl	_handle_alloc_init
	.p2align	2
	.code	32
_handle_alloc_init:
	push	{r4, r7, lr}
	add	r7, sp, #4
	movw	r1, :lower16:(LL_OBJC_SELECTOR_REFERENCES_0ea0a15a3d108c32$non_lazy_ptr-(LPC1_0+8))
	movt	r1, :upper16:(LL_OBJC_SELECTOR_REFERENCES_0ea0a15a3d108c32$non_lazy_ptr-(LPC1_0+8))
	movw	r2, :lower16:(LL_OBJC_SELECTOR_REFERENCES_1678d2f7468155d2$non_lazy_ptr-(LPC1_1+8))
	movt	r2, :upper16:(LL_OBJC_SELECTOR_REFERENCES_1678d2f7468155d2$non_lazy_ptr-(LPC1_1+8))
LPC1_0:
	ldr	r1, [pc, r1]
LPC1_1:
	ldr	r2, [pc, r2]
	ldr	r4, [r1]
	ldr	r1, [r2]
	bl	_objc_msgSend
	mov	r1, r4
	bl	_objc_msgSend
	pop	{r4, r7, pc}

	.globl	_use_generic
	.p2align	2
	.code	32
_use_generic:
	push	{r4, r7, lr}
	add	r7, sp, #4
	movw	r2, :lower16:(L_OBJC_SELECTOR_REFERENCES_457d234345d46cbe-(LPC2_0+8))
	mov	r4, r0
	movt	r2, :upper16:(L_OBJC_SELECTOR_REFERENCES_457d234345d46cbe-(LPC2_0+8))
LPC2_0:
	ldr	r2, [pc, r2]
	movw	r1, :lower16:(L_OBJC_SELECTOR_REFERENCES_f16064a6f68ca673-(LPC2_1+8))
	movt	r1, :upper16:(L_OBJC_SELECTOR_REFERENCES_f16064a6f68ca673-(LPC2_1+8))
LPC2_1:
	ldr	r1, [pc, r1]
	bl	_objc_msgSend
	movw	r2, :lower16:(L_OBJC_SELECTOR_REFERENCES_457d234345d46cbe-(LPC2_2+8))
	mov	r0, r4
	movt	r2, :upper16:(L_OBJC_SELECTOR_REFERENCES_457d234345d46cbe-(LPC2_2+8))
LPC2_2:
	ldr	r2, [pc, r2]
	movw	r1, :lower16:(L_OBJC_SELECTOR_REFERENCES_9f134b97cb598446-(LPC2_3+8))
	movt	r1, :upper16:(L_OBJC_SELECTOR_REFERENCES_9f134b97cb598446-(LPC2_3+8))
LPC2_3:
	ldr	r1, [pc, r1]
	bl	_objc_msgSend
	movw	r2, :lower16:(L_OBJC_SELECTOR_REFERENCES_457d234345d46cbe-(LPC2_4+8))
	mov	r0, r4
	movt	r2, :upper16:(L_OBJC_SELECTOR_REFERENCES_457d234345d46cbe-(LPC2_4+8))
LPC2_4:
	ldr	r2, [pc, r2]
	movw	r1, :lower16:(L_OBJC_SELECTOR_REFERENCES_e76e01e8b2327e5d-(LPC2_5+8))
	movt	r1, :upper16:(L_OBJC_SELECTOR_REFERENCES_e76e01e8b2327e5d-(LPC2_5+8))
LPC2_5:
	ldr	r1, [pc, r1]
	bl	_objc_msgSend
	pop	{r4, r7, pc}

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
	.globl	L_OBJC_IMAGE_INFO_044375a4329d08dc
	.p2align	2
L_OBJC_IMAGE_INFO_044375a4329d08dc:
	.asciz	"\000\000\000\000@\000\000"

	.section	__TEXT,__objc_methname,cstring_literals
	.globl	L_OBJC_METH_VAR_NAME_044375a4329d08dc
L_OBJC_METH_VAR_NAME_044375a4329d08dc:
	.asciz	"someSelector"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.globl	L_OBJC_SELECTOR_REFERENCES_044375a4329d08dc
	.p2align	2
L_OBJC_SELECTOR_REFERENCES_044375a4329d08dc:
	.long	L_OBJC_METH_VAR_NAME_044375a4329d08dc

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
	.globl	L_OBJC_IMAGE_INFO_457d234345d46cbe
	.p2align	2
L_OBJC_IMAGE_INFO_457d234345d46cbe:
	.asciz	"\000\000\000\000@\000\000"

	.section	__TEXT,__objc_methname,cstring_literals
	.globl	L_OBJC_METH_VAR_NAME_457d234345d46cbe
L_OBJC_METH_VAR_NAME_457d234345d46cbe:
	.asciz	"generic:selector:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.globl	L_OBJC_SELECTOR_REFERENCES_457d234345d46cbe
	.p2align	2
L_OBJC_SELECTOR_REFERENCES_457d234345d46cbe:
	.long	L_OBJC_METH_VAR_NAME_457d234345d46cbe

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
	.globl	L_OBJC_IMAGE_INFO_f16064a6f68ca673
	.p2align	2
L_OBJC_IMAGE_INFO_f16064a6f68ca673:
	.asciz	"\000\000\000\000@\000\000"

	.section	__TEXT,__objc_methname,cstring_literals
	.globl	L_OBJC_METH_VAR_NAME_f16064a6f68ca673
L_OBJC_METH_VAR_NAME_f16064a6f68ca673:
	.asciz	"performSelector:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.globl	L_OBJC_SELECTOR_REFERENCES_f16064a6f68ca673
	.p2align	2
L_OBJC_SELECTOR_REFERENCES_f16064a6f68ca673:
	.long	L_OBJC_METH_VAR_NAME_f16064a6f68ca673

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
	.globl	L_OBJC_IMAGE_INFO_9f134b97cb598446
	.p2align	2
L_OBJC_IMAGE_INFO_9f134b97cb598446:
	.asciz	"\000\000\000\000@\000\000"

	.section	__TEXT,__objc_methname,cstring_literals
	.globl	L_OBJC_METH_VAR_NAME_9f134b97cb598446
L_OBJC_METH_VAR_NAME_9f134b97cb598446:
	.asciz	"performSelector:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.globl	L_OBJC_SELECTOR_REFERENCES_9f134b97cb598446
	.p2align	2
L_OBJC_SELECTOR_REFERENCES_9f134b97cb598446:
	.long	L_OBJC_METH_VAR_NAME_9f134b97cb598446

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
	.globl	L_OBJC_IMAGE_INFO_e76e01e8b2327e5d
	.p2align	2
L_OBJC_IMAGE_INFO_e76e01e8b2327e5d:
	.asciz	"\000\000\000\000@\000\000"

	.section	__TEXT,__objc_methname,cstring_literals
	.globl	L_OBJC_METH_VAR_NAME_e76e01e8b2327e5d
L_OBJC_METH_VAR_NAME_e76e01e8b2327e5d:
	.asciz	"performSelector:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.globl	L_OBJC_SELECTOR_REFERENCES_e76e01e8b2327e5d
	.p2align	2
L_OBJC_SELECTOR_REFERENCES_e76e01e8b2327e5d:
	.long	L_OBJC_METH_VAR_NAME_e76e01e8b2327e5d

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
LL_OBJC_SELECTOR_REFERENCES_0ea0a15a3d108c32$non_lazy_ptr:
	.indirect_symbol	L_OBJC_SELECTOR_REFERENCES_0ea0a15a3d108c32
	.long	0
LL_OBJC_SELECTOR_REFERENCES_1678d2f7468155d2$non_lazy_ptr:
	.indirect_symbol	L_OBJC_SELECTOR_REFERENCES_1678d2f7468155d2
	.long	0

.subsections_via_symbols