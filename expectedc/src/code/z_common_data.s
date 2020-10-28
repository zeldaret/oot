
build/src/code/z_common_data.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <SaveContext_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	3c040000 	lui	a0,0x0
   c:	24840000 	addiu	a0,a0,0
  10:	0c000000 	jal	0 <SaveContext_Init>
  14:	24051428 	li	a1,5160
  18:	3c010000 	lui	at,0x0
  1c:	ac200000 	sw	zero,0(at)
  20:	3c040000 	lui	a0,0x0
  24:	3c010000 	lui	at,0x0
  28:	24840000 	addiu	a0,a0,0
  2c:	ac200000 	sw	zero,0(at)
  30:	8fbf0014 	lw	ra,20(sp)
  34:	240200ff 	li	v0,255
  38:	340effef 	li	t6,0xffef
  3c:	340fffff 	li	t7,0xffff
  40:	24180001 	li	t8,1
  44:	24190032 	li	t9,50
  48:	a08213e0 	sb	v0,5088(a0)
  4c:	a08213e1 	sb	v0,5089(a0)
  50:	a480140e 	sh	zero,5134(a0)
  54:	a48e1412 	sh	t6,5138(a0)
  58:	a0801414 	sb	zero,5140(a0)
  5c:	a0801415 	sb	zero,5141(a0)
  60:	a48f1416 	sh	t7,5142(a0)
  64:	a480141a 	sh	zero,5146(a0)
  68:	a098141c 	sb	t8,5148(a0)
  6c:	a082141d 	sb	v0,5149(a0)
  70:	a49913ee 	sh	t9,5102(a0)
  74:	03e00008 	jr	ra
  78:	27bd0018 	addiu	sp,sp,24
  7c:	00000000 	nop
