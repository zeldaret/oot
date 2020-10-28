
build/src/libultra_boot_O1/__osDequeueThread.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osDequeueThread>:
   0:	00803025 	move	a2,a0
   4:	8cc70000 	lw	a3,0(a2)
   8:	27bdfff8 	addiu	sp,sp,-8
   c:	10e0000a 	beqz	a3,38 <__osDequeueThread+0x38>
  10:	00000000 	nop
  14:	14e50004 	bne	a3,a1,28 <__osDequeueThread+0x28>
  18:	00000000 	nop
  1c:	8cae0000 	lw	t6,0(a1)
  20:	10000005 	b	38 <__osDequeueThread+0x38>
  24:	acce0000 	sw	t6,0(a2)
  28:	00e03025 	move	a2,a3
  2c:	8cc70000 	lw	a3,0(a2)
  30:	14e0fff8 	bnez	a3,14 <__osDequeueThread+0x14>
  34:	00000000 	nop
  38:	03e00008 	jr	ra
  3c:	27bd0008 	addiu	sp,sp,8
