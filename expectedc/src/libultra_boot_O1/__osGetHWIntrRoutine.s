
build/src/libultra_boot_O1/__osGetHWIntrRoutine.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osGetHWIntrRoutine>:
   0:	000470c0 	sll	t6,a0,0x3
   4:	3c0f0000 	lui	t7,0x0
   8:	01ee7821 	addu	t7,t7,t6
   c:	8def0000 	lw	t7,0(t7)
  10:	0004c0c0 	sll	t8,a0,0x3
  14:	3c190000 	lui	t9,0x0
  18:	0338c821 	addu	t9,t9,t8
  1c:	acaf0000 	sw	t7,0(a1)
  20:	8f390004 	lw	t9,4(t9)
  24:	03e00008 	jr	ra
  28:	acd90000 	sw	t9,0(a2)
  2c:	00000000 	nop
