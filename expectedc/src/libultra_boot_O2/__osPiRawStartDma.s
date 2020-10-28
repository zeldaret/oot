
build/src/libultra_boot_O2/__osPiRawStartDma.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osPiRawStartDma>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	3c03a460 	lui	v1,0xa460
   8:	34630010 	ori	v1,v1,0x10
   c:	afbf0014 	sw	ra,20(sp)
  10:	afa40018 	sw	a0,24(sp)
  14:	afa5001c 	sw	a1,28(sp)
  18:	8c620000 	lw	v0,0(v1)
  1c:	00c02025 	move	a0,a2
  20:	304e0003 	andi	t6,v0,0x3
  24:	11c00005 	beqz	t6,3c <__osPiRawStartDma+0x3c>
  28:	00000000 	nop
  2c:	8c620000 	lw	v0,0(v1)
  30:	304f0003 	andi	t7,v0,0x3
  34:	55e0fffe 	bnezl	t7,30 <__osPiRawStartDma+0x30>
  38:	8c620000 	lw	v0,0(v1)
  3c:	0c000000 	jal	0 <__osPiRawStartDma>
  40:	afa70024 	sw	a3,36(sp)
  44:	8fa30018 	lw	v1,24(sp)
  48:	8fa70024 	lw	a3,36(sp)
  4c:	3c18a460 	lui	t8,0xa460
  50:	af020000 	sw	v0,0(t8)
  54:	3c190000 	lui	t9,0x0
  58:	8f390000 	lw	t9,0(t9)
  5c:	8fa8001c 	lw	t0,28(sp)
  60:	3c011fff 	lui	at,0x1fff
  64:	3421ffff 	ori	at,at,0xffff
  68:	03284825 	or	t1,t9,t0
  6c:	01215024 	and	t2,t1,at
  70:	3c0ba460 	lui	t3,0xa460
  74:	10600006 	beqz	v1,90 <__osPiRawStartDma+0x90>
  78:	ad6a0004 	sw	t2,4(t3)
  7c:	24010001 	li	at,1
  80:	10610007 	beq	v1,at,a0 <__osPiRawStartDma+0xa0>
  84:	24eeffff 	addiu	t6,a3,-1
  88:	1000000b 	b	b8 <__osPiRawStartDma+0xb8>
  8c:	2402ffff 	li	v0,-1
  90:	24ecffff 	addiu	t4,a3,-1
  94:	3c0da460 	lui	t5,0xa460
  98:	10000006 	b	b4 <__osPiRawStartDma+0xb4>
  9c:	adac000c 	sw	t4,12(t5)
  a0:	3c0fa460 	lui	t7,0xa460
  a4:	10000003 	b	b4 <__osPiRawStartDma+0xb4>
  a8:	adee0008 	sw	t6,8(t7)
  ac:	10000002 	b	b8 <__osPiRawStartDma+0xb8>
  b0:	2402ffff 	li	v0,-1
  b4:	00001025 	move	v0,zero
  b8:	8fbf0014 	lw	ra,20(sp)
  bc:	27bd0018 	addiu	sp,sp,24
  c0:	03e00008 	jr	ra
  c4:	00000000 	nop
	...
