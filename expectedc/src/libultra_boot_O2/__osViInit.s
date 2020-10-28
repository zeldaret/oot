
build/src/libultra_boot_O2/__osViInit.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osViInit>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	3c040000 	lui	a0,0x0
   c:	24840000 	addiu	a0,a0,0
  10:	0c000000 	jal	0 <__osViInit>
  14:	24050060 	li	a1,96
  18:	3c020000 	lui	v0,0x0
  1c:	3c040000 	lui	a0,0x0
  20:	3c0e0000 	lui	t6,0x0
  24:	3c0f0000 	lui	t7,0x0
  28:	24840000 	addiu	a0,a0,0
  2c:	24420000 	addiu	v0,v0,0
  30:	25ce0000 	addiu	t6,t6,0
  34:	25ef0030 	addiu	t7,t7,48
  38:	24050001 	li	a1,1
  3c:	ac4e0000 	sw	t6,0(v0)
  40:	ac8f0000 	sw	t7,0(a0)
  44:	a5e50002 	sh	a1,2(t7)
  48:	8c590000 	lw	t9,0(v0)
  4c:	3c068000 	lui	a2,0x8000
  50:	3c030000 	lui	v1,0x0
  54:	a7250002 	sh	a1,2(t9)
  58:	8c880000 	lw	t0,0(a0)
  5c:	3c0a0000 	lui	t2,0x0
  60:	24010002 	li	at,2
  64:	ad060004 	sw	a2,4(t0)
  68:	8c490000 	lw	t1,0(v0)
  6c:	ad260004 	sw	a2,4(t1)
  70:	8c630000 	lw	v1,0(v1)
  74:	14600005 	bnez	v1,8c <__osViInit+0x8c>
  78:	00000000 	nop
  7c:	8c8b0000 	lw	t3,0(a0)
  80:	254a0000 	addiu	t2,t2,0
  84:	1000000b 	b	b4 <__osViInit+0xb4>
  88:	ad6a0008 	sw	t2,8(t3)
  8c:	14610005 	bne	v1,at,a4 <__osViInit+0xa4>
  90:	3c0c0000 	lui	t4,0x0
  94:	8c8d0000 	lw	t5,0(a0)
  98:	258c0000 	addiu	t4,t4,0
  9c:	10000005 	b	b4 <__osViInit+0xb4>
  a0:	adac0008 	sw	t4,8(t5)
  a4:	8c8f0000 	lw	t7,0(a0)
  a8:	3c0e0000 	lui	t6,0x0
  ac:	25ce0000 	addiu	t6,t6,0
  b0:	adee0008 	sw	t6,8(t7)
  b4:	8c990000 	lw	t9,0(a0)
  b8:	24180020 	li	t8,32
  bc:	3c02a440 	lui	v0,0xa440
  c0:	a7380000 	sh	t8,0(t9)
  c4:	8c830000 	lw	v1,0(a0)
  c8:	34420010 	ori	v0,v0,0x10
  cc:	3c0ca440 	lui	t4,0xa440
  d0:	8c680008 	lw	t0,8(v1)
  d4:	8d090004 	lw	t1,4(t0)
  d8:	ac69000c 	sw	t1,12(v1)
  dc:	8c4a0000 	lw	t2,0(v0)
  e0:	2d41000b 	sltiu	at,t2,11
  e4:	14200005 	bnez	at,fc <__osViInit+0xfc>
  e8:	00000000 	nop
  ec:	8c4b0000 	lw	t3,0(v0)
  f0:	2d61000b 	sltiu	at,t3,11
  f4:	5020fffe 	beqzl	at,f0 <__osViInit+0xf0>
  f8:	8c4b0000 	lw	t3,0(v0)
  fc:	0c000000 	jal	0 <__osViInit>
 100:	ad800000 	sw	zero,0(t4)
 104:	8fbf0014 	lw	ra,20(sp)
 108:	27bd0018 	addiu	sp,sp,24
 10c:	03e00008 	jr	ra
 110:	00000000 	nop
	...
