
build/src/libultra_boot_O2/__osEPiRawWriteIo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osEPiRawWriteIo>:
   0:	3c03a460 	lui	v1,0xa460
   4:	34630010 	ori	v1,v1,0x10
   8:	8c620000 	lw	v0,0(v1)
   c:	00a03825 	move	a3,a1
  10:	304e0003 	andi	t6,v0,0x3
  14:	51c00006 	beqzl	t6,30 <__osEPiRawWriteIo+0x30>
  18:	90820009 	lbu	v0,9(a0)
  1c:	8c620000 	lw	v0,0(v1)
  20:	304f0003 	andi	t7,v0,0x3
  24:	55e0fffe 	bnezl	t7,20 <__osEPiRawWriteIo+0x20>
  28:	8c620000 	lw	v0,0(v1)
  2c:	90820009 	lbu	v0,9(a0)
  30:	3c030000 	lui	v1,0x0
  34:	90990004 	lbu	t9,4(a0)
  38:	0002c080 	sll	t8,v0,0x2
  3c:	00781821 	addu	v1,v1,t8
  40:	8c630000 	lw	v1,0(v1)
  44:	90680004 	lbu	t0,4(v1)
  48:	5328003d 	beql	t9,t0,140 <__osEPiRawWriteIo+0x140>
  4c:	8c8a000c 	lw	t2,12(a0)
  50:	14400019 	bnez	v0,b8 <__osEPiRawWriteIo+0xb8>
  54:	00602825 	move	a1,v1
  58:	90820005 	lbu	v0,5(a0)
  5c:	90690005 	lbu	t1,5(v1)
  60:	3c0aa460 	lui	t2,0xa460
  64:	3c0ca460 	lui	t4,0xa460
  68:	10490002 	beq	v0,t1,74 <__osEPiRawWriteIo+0x74>
  6c:	3c0ea460 	lui	t6,0xa460
  70:	ad420014 	sw	v0,20(t2)
  74:	90820006 	lbu	v0,6(a0)
  78:	90ab0006 	lbu	t3,6(a1)
  7c:	3c18a460 	lui	t8,0xa460
  80:	504b0003 	beql	v0,t3,90 <__osEPiRawWriteIo+0x90>
  84:	90820007 	lbu	v0,7(a0)
  88:	ad82001c 	sw	v0,28(t4)
  8c:	90820007 	lbu	v0,7(a0)
  90:	90ad0007 	lbu	t5,7(a1)
  94:	504d0003 	beql	v0,t5,a4 <__osEPiRawWriteIo+0xa4>
  98:	90820008 	lbu	v0,8(a0)
  9c:	adc20020 	sw	v0,32(t6)
  a0:	90820008 	lbu	v0,8(a0)
  a4:	90af0008 	lbu	t7,8(a1)
  a8:	504f001b 	beql	v0,t7,118 <__osEPiRawWriteIo+0x118>
  ac:	908f0004 	lbu	t7,4(a0)
  b0:	10000018 	b	114 <__osEPiRawWriteIo+0x114>
  b4:	af020018 	sw	v0,24(t8)
  b8:	90820005 	lbu	v0,5(a0)
  bc:	90b90005 	lbu	t9,5(a1)
  c0:	3c08a460 	lui	t0,0xa460
  c4:	3c0aa460 	lui	t2,0xa460
  c8:	10590002 	beq	v0,t9,d4 <__osEPiRawWriteIo+0xd4>
  cc:	3c0ca460 	lui	t4,0xa460
  d0:	ad020024 	sw	v0,36(t0)
  d4:	90820006 	lbu	v0,6(a0)
  d8:	90a90006 	lbu	t1,6(a1)
  dc:	3c0ea460 	lui	t6,0xa460
  e0:	50490003 	beql	v0,t1,f0 <__osEPiRawWriteIo+0xf0>
  e4:	90820007 	lbu	v0,7(a0)
  e8:	ad42002c 	sw	v0,44(t2)
  ec:	90820007 	lbu	v0,7(a0)
  f0:	90ab0007 	lbu	t3,7(a1)
  f4:	504b0003 	beql	v0,t3,104 <__osEPiRawWriteIo+0x104>
  f8:	90820008 	lbu	v0,8(a0)
  fc:	ad820030 	sw	v0,48(t4)
 100:	90820008 	lbu	v0,8(a0)
 104:	90ad0008 	lbu	t5,8(a1)
 108:	504d0003 	beql	v0,t5,118 <__osEPiRawWriteIo+0x118>
 10c:	908f0004 	lbu	t7,4(a0)
 110:	adc20028 	sw	v0,40(t6)
 114:	908f0004 	lbu	t7,4(a0)
 118:	a0af0004 	sb	t7,4(a1)
 11c:	90980005 	lbu	t8,5(a0)
 120:	a0b80005 	sb	t8,5(a1)
 124:	90990006 	lbu	t9,6(a0)
 128:	a0b90006 	sb	t9,6(a1)
 12c:	90880007 	lbu	t0,7(a0)
 130:	a0a80007 	sb	t0,7(a1)
 134:	90890008 	lbu	t1,8(a0)
 138:	a0a90008 	sb	t1,8(a1)
 13c:	8c8a000c 	lw	t2,12(a0)
 140:	3c01a000 	lui	at,0xa000
 144:	00001025 	move	v0,zero
 148:	01475825 	or	t3,t2,a3
 14c:	01616025 	or	t4,t3,at
 150:	03e00008 	jr	ra
 154:	ad860000 	sw	a2,0(t4)
	...
