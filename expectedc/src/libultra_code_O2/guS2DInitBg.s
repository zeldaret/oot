
build/src/libultra_code_O2/guS2DInitBg.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <guS2DInitBg>:
   0:	908e0016 	lbu	t6,22(a0)
   4:	24010002 	li	at,2
   8:	24020200 	li	v0,512
   c:	15c10003 	bne	t6,at,1c <guS2DInitBg+0x1c>
  10:	24180006 	li	t8,6
  14:	10000001 	b	1c <guS2DInitBg+0x1c>
  18:	24020100 	li	v0,256
  1c:	908f0017 	lbu	t7,23(a0)
  20:	94880014 	lhu	t0,20(a0)
  24:	24010033 	li	at,51
  28:	030f1823 	subu	v1,t8,t7
  2c:	3079ffff 	andi	t9,v1,0xffff
  30:	1501002d 	bne	t0,at,e8 <guS2DInitBg+0xe8>
  34:	03201825 	move	v1,t9
  38:	94890002 	lhu	t1,2(a0)
  3c:	00695007 	srav	t2,t1,v1
  40:	3145ffff 	andi	a1,t2,0xffff
  44:	0045001a 	div	zero,v0,a1
  48:	00005812 	mflo	t3
  4c:	000b6080 	sll	t4,t3,0x2
  50:	00056840 	sll	t5,a1,0x1
  54:	31b8ffff 	andi	t8,t5,0xffff
  58:	318effff 	andi	t6,t4,0xffff
  5c:	01d80019 	multu	t6,t8
  60:	a48a001c 	sh	t2,28(a0)
  64:	240a07ff 	li	t2,2047
  68:	14a00002 	bnez	a1,74 <guS2DInitBg+0x74>
  6c:	00000000 	nop
  70:	0007000d 	break	0x7
  74:	2401ffff 	li	at,-1
  78:	14a10004 	bne	a1,at,8c <guS2DInitBg+0x8c>
  7c:	3c018000 	lui	at,0x8000
  80:	14410002 	bne	v0,at,8c <guS2DInitBg+0x8c>
  84:	00000000 	nop
  88:	0006000d 	break	0x6
  8c:	00007812 	mflo	t7
  90:	31f9ffff 	andi	t9,t7,0xffff
  94:	a48c001e 	sh	t4,30(a0)
  98:	0145001a 	div	zero,t2,a1
  9c:	00194043 	sra	t0,t9,0x1
  a0:	00005812 	mflo	t3
  a4:	2509ffff 	addiu	t1,t0,-1
  a8:	256c0001 	addiu	t4,t3,1
  ac:	a48d0024 	sh	t5,36(a0)
  b0:	a48f0026 	sh	t7,38(a0)
  b4:	a4890020 	sh	t1,32(a0)
  b8:	14a00002 	bnez	a1,c4 <guS2DInitBg+0xc4>
  bc:	00000000 	nop
  c0:	0007000d 	break	0x7
  c4:	2401ffff 	li	at,-1
  c8:	14a10004 	bne	a1,at,dc <guS2DInitBg+0xdc>
  cc:	3c018000 	lui	at,0x8000
  d0:	15410002 	bne	t2,at,dc <guS2DInitBg+0xdc>
  d4:	00000000 	nop
  d8:	0006000d 	break	0x6
  dc:	a48c0022 	sh	t4,34(a0)
  e0:	03e00008 	jr	ra
  e4:	00000000 	nop
  e8:	948d0006 	lhu	t5,6(a0)
  ec:	94890002 	lhu	t1,2(a0)
  f0:	00602825 	move	a1,v1
  f4:	006d7007 	srav	t6,t5,v1
  f8:	25d80003 	addiu	t8,t6,3
  fc:	330fffff 	andi	t7,t8,0xffff
 100:	004f001a 	div	zero,v0,t7
 104:	0000c812 	mflo	t9
 108:	00a95007 	srav	t2,t1,a1
 10c:	00194080 	sll	t0,t9,0x2
 110:	000a5840 	sll	t3,t2,0x1
 114:	316cffff 	andi	t4,t3,0xffff
 118:	3106ffff 	andi	a2,t0,0xffff
 11c:	00cc0019 	multu	a2,t4
 120:	a498001c 	sh	t8,28(a0)
 124:	24d8ffff 	addiu	t8,a2,-1
 128:	15e00002 	bnez	t7,134 <guS2DInitBg+0x134>
 12c:	00000000 	nop
 130:	0007000d 	break	0x7
 134:	2401ffff 	li	at,-1
 138:	15e10004 	bne	t7,at,14c <guS2DInitBg+0x14c>
 13c:	3c018000 	lui	at,0x8000
 140:	14410002 	bne	v0,at,14c <guS2DInitBg+0x14c>
 144:	00000000 	nop
 148:	0006000d 	break	0x6
 14c:	00003812 	mflo	a3
 150:	00076c02 	srl	t5,a3,0x10
 154:	30eeffff 	andi	t6,a3,0xffff
 158:	a488001e 	sh	t0,30(a0)
 15c:	a48b0024 	sh	t3,36(a0)
 160:	a48d0026 	sh	t5,38(a0)
 164:	a48e0020 	sh	t6,32(a0)
 168:	a4980022 	sh	t8,34(a0)
 16c:	03e00008 	jr	ra
 170:	00000000 	nop
	...
