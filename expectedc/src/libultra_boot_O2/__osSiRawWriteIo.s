
build/src/libultra_boot_O2/__osSiRawWriteIo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osSiRawWriteIo>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa40018 	sw	a0,24(sp)
   c:	0c000000 	jal	0 <__osSiRawWriteIo>
  10:	afa5001c 	sw	a1,28(sp)
  14:	10400003 	beqz	v0,24 <__osSiRawWriteIo+0x24>
  18:	8fae001c 	lw	t6,28(sp)
  1c:	10000006 	b	38 <__osSiRawWriteIo+0x38>
  20:	2402ffff 	li	v0,-1
  24:	8faf0018 	lw	t7,24(sp)
  28:	3c01a000 	lui	at,0xa000
  2c:	00001025 	move	v0,zero
  30:	01e1c025 	or	t8,t7,at
  34:	af0e0000 	sw	t6,0(t8)
  38:	8fbf0014 	lw	ra,20(sp)
  3c:	27bd0018 	addiu	sp,sp,24
  40:	03e00008 	jr	ra
  44:	00000000 	nop
	...
