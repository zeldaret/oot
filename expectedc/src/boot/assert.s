
build/src/boot/assert.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__assert>:
   0:	27bdfed8 	addiu	sp,sp,-296
   4:	afbf001c 	sw	ra,28(sp)
   8:	afa40128 	sw	a0,296(sp)
   c:	afa5012c 	sw	a1,300(sp)
  10:	afa60130 	sw	a2,304(sp)
  14:	0c000000 	jal	0 <__assert>
  18:	00002025 	move	a0,zero
  1c:	3c040000 	lui	a0,0x0
  20:	24840000 	addiu	a0,a0,0
  24:	8fa50128 	lw	a1,296(sp)
  28:	8fa6012c 	lw	a2,300(sp)
  2c:	8fa70130 	lw	a3,304(sp)
  30:	0c000000 	jal	0 <__assert>
  34:	afa20010 	sw	v0,16(sp)
  38:	0c000000 	jal	0 <__assert>
  3c:	00002025 	move	a0,zero
  40:	3c050000 	lui	a1,0x0
  44:	24a50034 	addiu	a1,a1,52
  48:	27a40028 	addiu	a0,sp,40
  4c:	8fa6012c 	lw	a2,300(sp)
  50:	8fa70130 	lw	a3,304(sp)
  54:	0c000000 	jal	0 <__assert>
  58:	afa20010 	sw	v0,16(sp)
  5c:	27a40028 	addiu	a0,sp,40
  60:	0c000000 	jal	0 <__assert>
  64:	8fa50128 	lw	a1,296(sp)
  68:	8fbf001c 	lw	ra,28(sp)
  6c:	27bd0128 	addiu	sp,sp,296
  70:	03e00008 	jr	ra
  74:	00000000 	nop
	...
