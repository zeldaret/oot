
build/src/libultra_boot_O2/__osSiRawReadIo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osSiRawReadIo>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa40018 	sw	a0,24(sp)
   c:	0c000000 	jal	0 <__osSiRawReadIo>
  10:	afa5001c 	sw	a1,28(sp)
  14:	10400003 	beqz	v0,24 <__osSiRawReadIo+0x24>
  18:	8fae0018 	lw	t6,24(sp)
  1c:	10000007 	b	3c <__osSiRawReadIo+0x3c>
  20:	2402ffff 	li	v0,-1
  24:	3c01a000 	lui	at,0xa000
  28:	01c17825 	or	t7,t6,at
  2c:	8df80000 	lw	t8,0(t7)
  30:	8fb9001c 	lw	t9,28(sp)
  34:	00001025 	move	v0,zero
  38:	af380000 	sw	t8,0(t9)
  3c:	8fbf0014 	lw	ra,20(sp)
  40:	27bd0018 	addiu	sp,sp,24
  44:	03e00008 	jr	ra
  48:	00000000 	nop
  4c:	00000000 	nop
