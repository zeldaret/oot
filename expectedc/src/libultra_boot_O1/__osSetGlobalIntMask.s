
build/src/libultra_boot_O1/__osSetGlobalIntMask.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osSetGlobalIntMask>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afbf001c 	sw	ra,28(sp)
   8:	afa40028 	sw	a0,40(sp)
   c:	0c000000 	jal	0 <__osSetGlobalIntMask>
  10:	afb00018 	sw	s0,24(sp)
  14:	3c0e0000 	lui	t6,0x0
  18:	8dce0000 	lw	t6,0(t6)
  1c:	8faf0028 	lw	t7,40(sp)
  20:	00408025 	move	s0,v0
  24:	3c010000 	lui	at,0x0
  28:	01cfc025 	or	t8,t6,t7
  2c:	ac380000 	sw	t8,0(at)
  30:	0c000000 	jal	0 <__osSetGlobalIntMask>
  34:	02002025 	move	a0,s0
  38:	8fbf001c 	lw	ra,28(sp)
  3c:	8fb00018 	lw	s0,24(sp)
  40:	27bd0028 	addiu	sp,sp,40
  44:	03e00008 	jr	ra
  48:	00000000 	nop
  4c:	00000000 	nop
