
build/src/libultra_boot_O1/__osSetHWIntrRoutine.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osSetHWIntrRoutine>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afbf001c 	sw	ra,28(sp)
   8:	afa40028 	sw	a0,40(sp)
   c:	afa5002c 	sw	a1,44(sp)
  10:	afa60030 	sw	a2,48(sp)
  14:	0c000000 	jal	0 <__osSetHWIntrRoutine>
  18:	afb00018 	sw	s0,24(sp)
  1c:	8faf0028 	lw	t7,40(sp)
  20:	8fae002c 	lw	t6,44(sp)
  24:	8fa80028 	lw	t0,40(sp)
  28:	3c010000 	lui	at,0x0
  2c:	000fc0c0 	sll	t8,t7,0x3
  30:	00380821 	addu	at,at,t8
  34:	ac2e0000 	sw	t6,0(at)
  38:	8fb90030 	lw	t9,48(sp)
  3c:	3c010000 	lui	at,0x0
  40:	000848c0 	sll	t1,t0,0x3
  44:	00408025 	move	s0,v0
  48:	00290821 	addu	at,at,t1
  4c:	02002025 	move	a0,s0
  50:	0c000000 	jal	0 <__osSetHWIntrRoutine>
  54:	ac390004 	sw	t9,4(at)
  58:	8fbf001c 	lw	ra,28(sp)
  5c:	8fb00018 	lw	s0,24(sp)
  60:	27bd0028 	addiu	sp,sp,40
  64:	03e00008 	jr	ra
  68:	00000000 	nop
  6c:	00000000 	nop
