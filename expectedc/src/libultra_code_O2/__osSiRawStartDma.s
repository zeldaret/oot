
build/src/libultra_code_O2/__osSiRawStartDma.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osSiRawStartDma>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa5001c 	sw	a1,28(sp)
   c:	3c0ea480 	lui	t6,0xa480
  10:	8dcf0018 	lw	t7,24(t6)
  14:	00803025 	move	a2,a0
  18:	24010001 	li	at,1
  1c:	31f80003 	andi	t8,t7,0x3
  20:	13000003 	beqz	t8,30 <__osSiRawStartDma+0x30>
  24:	00000000 	nop
  28:	1000001c 	b	9c <__osSiRawStartDma+0x9c>
  2c:	2402ffff 	li	v0,-1
  30:	14c10005 	bne	a2,at,48 <__osSiRawStartDma+0x48>
  34:	8fa4001c 	lw	a0,28(sp)
  38:	24050040 	li	a1,64
  3c:	0c000000 	jal	0 <__osSiRawStartDma>
  40:	afa60018 	sw	a2,24(sp)
  44:	8fa60018 	lw	a2,24(sp)
  48:	8fa4001c 	lw	a0,28(sp)
  4c:	0c000000 	jal	0 <__osSiRawStartDma>
  50:	afa60018 	sw	a2,24(sp)
  54:	8fa60018 	lw	a2,24(sp)
  58:	3c19a480 	lui	t9,0xa480
  5c:	af220000 	sw	v0,0(t9)
  60:	14c00006 	bnez	a2,7c <__osSiRawStartDma+0x7c>
  64:	3c0a1fc0 	lui	t2,0x1fc0
  68:	3c081fc0 	lui	t0,0x1fc0
  6c:	350807c0 	ori	t0,t0,0x7c0
  70:	3c09a480 	lui	t1,0xa480
  74:	10000004 	b	88 <__osSiRawStartDma+0x88>
  78:	ad280004 	sw	t0,4(t1)
  7c:	354a07c0 	ori	t2,t2,0x7c0
  80:	3c0ba480 	lui	t3,0xa480
  84:	ad6a0010 	sw	t2,16(t3)
  88:	14c00003 	bnez	a2,98 <__osSiRawStartDma+0x98>
  8c:	8fa4001c 	lw	a0,28(sp)
  90:	0c000000 	jal	0 <__osSiRawStartDma>
  94:	24050040 	li	a1,64
  98:	00001025 	move	v0,zero
  9c:	8fbf0014 	lw	ra,20(sp)
  a0:	27bd0018 	addiu	sp,sp,24
  a4:	03e00008 	jr	ra
  a8:	00000000 	nop
  ac:	00000000 	nop
