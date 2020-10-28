
build/src/libultra_boot_O1/__osResetGlobalIntMask.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osResetGlobalIntMask>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afbf001c 	sw	ra,28(sp)
   8:	afa40028 	sw	a0,40(sp)
   c:	0c000000 	jal	0 <__osResetGlobalIntMask>
  10:	afb00018 	sw	s0,24(sp)
  14:	8faf0028 	lw	t7,40(sp)
  18:	3c0e0000 	lui	t6,0x0
  1c:	8dce0000 	lw	t6,0(t6)
  20:	2401fbfe 	li	at,-1026
  24:	01e1c024 	and	t8,t7,at
  28:	0300c827 	nor	t9,t8,zero
  2c:	00408025 	move	s0,v0
  30:	3c010000 	lui	at,0x0
  34:	01d94024 	and	t0,t6,t9
  38:	ac280000 	sw	t0,0(at)
  3c:	0c000000 	jal	0 <__osResetGlobalIntMask>
  40:	02002025 	move	a0,s0
  44:	8fbf001c 	lw	ra,28(sp)
  48:	8fb00018 	lw	s0,24(sp)
  4c:	27bd0028 	addiu	sp,sp,40
  50:	03e00008 	jr	ra
  54:	00000000 	nop
	...
