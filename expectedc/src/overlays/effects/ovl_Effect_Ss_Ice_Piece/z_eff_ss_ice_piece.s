
build/src/overlays/effects/ovl_Effect_Ss_Ice_Piece/z_eff_ss_ice_piece.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsIcePiece_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa40028 	sw	a0,40(sp)
   c:	afa5002c 	sw	a1,44(sp)
  10:	8cef0000 	lw	t7,0(a3)
  14:	3c0d0000 	lui	t5,0x0
  18:	25ad0000 	addiu	t5,t5,0
  1c:	accf0000 	sw	t7,0(a2)
  20:	8cee0004 	lw	t6,4(a3)
  24:	3c0142c8 	lui	at,0x42c8
  28:	44813000 	mtc1	at,$f6
  2c:	acce0004 	sw	t6,4(a2)
  30:	8cef0008 	lw	t7,8(a3)
  34:	3c0e0000 	lui	t6,0x0
  38:	25ce0000 	addiu	t6,t6,0
  3c:	accf0008 	sw	t7,8(a2)
  40:	8cf90000 	lw	t9,0(a3)
  44:	acd9002c 	sw	t9,44(a2)
  48:	8cf80004 	lw	t8,4(a3)
  4c:	acd80030 	sw	t8,48(a2)
  50:	8cf90008 	lw	t9,8(a3)
  54:	acd90034 	sw	t9,52(a2)
  58:	8ce90010 	lw	t1,16(a3)
  5c:	acc9000c 	sw	t1,12(a2)
  60:	8ce80014 	lw	t0,20(a3)
  64:	acc80010 	sw	t0,16(a2)
  68:	8ce90018 	lw	t1,24(a3)
  6c:	acc90014 	sw	t1,20(a2)
  70:	8ceb001c 	lw	t3,28(a3)
  74:	accb0018 	sw	t3,24(a2)
  78:	8cea0020 	lw	t2,32(a3)
  7c:	acca001c 	sw	t2,28(a2)
  80:	8ceb0024 	lw	t3,36(a3)
  84:	accb0020 	sw	t3,32(a2)
  88:	8cec0028 	lw	t4,40(a3)
  8c:	accd0028 	sw	t5,40(a2)
  90:	acce0024 	sw	t6,36(a2)
  94:	a4cc005c 	sh	t4,92(a2)
  98:	8cef0028 	lw	t7,40(a3)
  9c:	a4cf0040 	sh	t7,64(a2)
  a0:	c4e4000c 	lwc1	$f4,12(a3)
  a4:	46062202 	mul.s	$f8,$f4,$f6
  a8:	4600428d 	trunc.w.s	$f10,$f8
  ac:	44195000 	mfc1	t9,$f10
  b0:	00000000 	nop
  b4:	a4d90048 	sh	t9,72(a2)
  b8:	c4ee0010 	lwc1	$f14,16(a3)
  bc:	c4ec0018 	lwc1	$f12,24(a3)
  c0:	afa70034 	sw	a3,52(sp)
  c4:	0c000000 	jal	0 <EffectSsIcePiece_Init>
  c8:	afa60030 	sw	a2,48(sp)
  cc:	8fa60030 	lw	a2,48(sp)
  d0:	8fa70034 	lw	a3,52(sp)
  d4:	3c013f80 	lui	at,0x3f80
  d8:	a4c20042 	sh	v0,66(a2)
  dc:	a4c00044 	sh	zero,68(a2)
  e0:	c4e00014 	lwc1	$f0,20(a3)
  e4:	44816000 	mtc1	at,$f12
  e8:	46000005 	abs.s	$f0,$f0
  ec:	e7a0001c 	swc1	$f0,28(sp)
  f0:	c4e00010 	lwc1	$f0,16(a3)
  f4:	46000005 	abs.s	$f0,$f0
  f8:	0c000000 	jal	0 <EffectSsIcePiece_Init>
  fc:	e7a00020 	swc1	$f0,32(sp)
 100:	c7b00020 	lwc1	$f16,32(sp)
 104:	c7b2001c 	lwc1	$f18,28(sp)
 108:	3c0142c8 	lui	at,0x42c8
 10c:	44813000 	mtc1	at,$f6
 110:	46128100 	add.s	$f4,$f16,$f18
 114:	3c013f00 	lui	at,0x3f00
 118:	44815000 	mtc1	at,$f10
 11c:	8fa60030 	lw	a2,48(sp)
 120:	46062202 	mul.s	$f8,$f4,$f6
 124:	460a0400 	add.s	$f16,$f0,$f10
 128:	24020001 	li	v0,1
 12c:	46088482 	mul.s	$f18,$f16,$f8
 130:	4600910d 	trunc.w.s	$f4,$f18
 134:	44092000 	mfc1	t1,$f4
 138:	00000000 	nop
 13c:	a4c90046 	sh	t1,70(a2)
 140:	8fbf0014 	lw	ra,20(sp)
 144:	27bd0028 	addiu	sp,sp,40
 148:	03e00008 	jr	ra
 14c:	00000000 	nop

00000150 <EffectSsIcePiece_Draw>:
 150:	27bdff78 	addiu	sp,sp,-136
 154:	afbf003c 	sw	ra,60(sp)
 158:	afb10038 	sw	s1,56(sp)
 15c:	afb00034 	sw	s0,52(sp)
 160:	afa40088 	sw	a0,136(sp)
 164:	afa5008c 	sw	a1,140(sp)
 168:	84cf0048 	lh	t7,72(a2)
 16c:	3c010000 	lui	at,0x0
 170:	c4280048 	lwc1	$f8,72(at)
 174:	448f2000 	mtc1	t7,$f4
 178:	8c910000 	lw	s1,0(a0)
 17c:	00c08025 	move	s0,a2
 180:	468021a0 	cvt.s.w	$f6,$f4
 184:	3c060000 	lui	a2,0x0
 188:	24c60000 	addiu	a2,a2,0
 18c:	240700a1 	li	a3,161
 190:	02202825 	move	a1,s1
 194:	46083282 	mul.s	$f10,$f6,$f8
 198:	e7aa007c 	swc1	$f10,124(sp)
 19c:	8c98009c 	lw	t8,156(a0)
 1a0:	27a40060 	addiu	a0,sp,96
 1a4:	0c000000 	jal	0 <EffectSsIcePiece_Init>
 1a8:	afb80078 	sw	t8,120(sp)
 1ac:	86020040 	lh	v0,64(s0)
 1b0:	00003825 	move	a3,zero
 1b4:	58400012 	blezl	v0,200 <EffectSsIcePiece_Draw+0xb0>
 1b8:	3c01437f 	lui	at,0x437f
 1bc:	8603005c 	lh	v1,92(s0)
 1c0:	0002c843 	sra	t9,v0,0x1
 1c4:	0079082a 	slt	at,v1,t9
 1c8:	5020000d 	beqzl	at,200 <EffectSsIcePiece_Draw+0xb0>
 1cc:	3c01437f 	lui	at,0x437f
 1d0:	44838000 	mtc1	v1,$f16
 1d4:	44822000 	mtc1	v0,$f4
 1d8:	3c01437f 	lui	at,0x437f
 1dc:	46808020 	cvt.s.w	$f0,$f16
 1e0:	44814000 	mtc1	at,$f8
 1e4:	468021a0 	cvt.s.w	$f6,$f4
 1e8:	46000480 	add.s	$f18,$f0,$f0
 1ec:	46069083 	div.s	$f2,$f18,$f6
 1f0:	46081082 	mul.s	$f2,$f2,$f8
 1f4:	10000005 	b	20c <EffectSsIcePiece_Draw+0xbc>
 1f8:	e7a20074 	swc1	$f2,116(sp)
 1fc:	3c01437f 	lui	at,0x437f
 200:	44815000 	mtc1	at,$f10
 204:	00000000 	nop
 208:	e7aa0074 	swc1	$f10,116(sp)
 20c:	c60c0000 	lwc1	$f12,0(s0)
 210:	c60e0004 	lwc1	$f14,4(s0)
 214:	0c000000 	jal	0 <EffectSsIcePiece_Init>
 218:	8e060008 	lw	a2,8(s0)
 21c:	c7ac007c 	lwc1	$f12,124(sp)
 220:	24070001 	li	a3,1
 224:	44066000 	mfc1	a2,$f12
 228:	0c000000 	jal	0 <EffectSsIcePiece_Init>
 22c:	46006386 	mov.s	$f14,$f12
 230:	86080042 	lh	t0,66(s0)
 234:	3c010000 	lui	at,0x0
 238:	c432004c 	lwc1	$f18,76(at)
 23c:	44888000 	mtc1	t0,$f16
 240:	24050001 	li	a1,1
 244:	46808120 	cvt.s.w	$f4,$f16
 248:	46122302 	mul.s	$f12,$f4,$f18
 24c:	0c000000 	jal	0 <EffectSsIcePiece_Init>
 250:	00000000 	nop
 254:	86090044 	lh	t1,68(s0)
 258:	3c010000 	lui	at,0x0
 25c:	c42a0050 	lwc1	$f10,80(at)
 260:	44893000 	mtc1	t1,$f6
 264:	24050001 	li	a1,1
 268:	46803220 	cvt.s.w	$f8,$f6
 26c:	460a4302 	mul.s	$f12,$f8,$f10
 270:	0c000000 	jal	0 <EffectSsIcePiece_Init>
 274:	00000000 	nop
 278:	8e2202d0 	lw	v0,720(s1)
 27c:	3c0bda38 	lui	t3,0xda38
 280:	356b0003 	ori	t3,t3,0x3
 284:	244a0008 	addiu	t2,v0,8
 288:	ae2a02d0 	sw	t2,720(s1)
 28c:	3c050000 	lui	a1,0x0
 290:	ac4b0000 	sw	t3,0(v0)
 294:	24a50018 	addiu	a1,a1,24
 298:	02202025 	move	a0,s1
 29c:	240600b9 	li	a2,185
 2a0:	0c000000 	jal	0 <EffectSsIcePiece_Init>
 2a4:	afa2005c 	sw	v0,92(sp)
 2a8:	8fa3005c 	lw	v1,92(sp)
 2ac:	ac620004 	sw	v0,4(v1)
 2b0:	8fac0088 	lw	t4,136(sp)
 2b4:	0c000000 	jal	0 <EffectSsIcePiece_Init>
 2b8:	8d840000 	lw	a0,0(t4)
 2bc:	8e2202d0 	lw	v0,720(s1)
 2c0:	3c0ffb00 	lui	t7,0xfb00
 2c4:	3c010032 	lui	at,0x32
 2c8:	244d0008 	addiu	t5,v0,8
 2cc:	ae2d02d0 	sw	t5,720(s1)
 2d0:	ac4f0000 	sw	t7,0(v0)
 2d4:	c7b00074 	lwc1	$f16,116(sp)
 2d8:	34216400 	ori	at,at,0x6400
 2dc:	02002025 	move	a0,s0
 2e0:	4600810d 	trunc.w.s	$f4,$f16
 2e4:	44192000 	mfc1	t9,$f4
 2e8:	00000000 	nop
 2ec:	332800ff 	andi	t0,t9,0xff
 2f0:	01014825 	or	t1,t0,at
 2f4:	ac490004 	sw	t1,4(v0)
 2f8:	0c000000 	jal	0 <EffectSsIcePiece_Init>
 2fc:	8fa50088 	lw	a1,136(sp)
 300:	8e2202d0 	lw	v0,720(s1)
 304:	8fa30078 	lw	v1,120(sp)
 308:	3c0bdb06 	lui	t3,0xdb06
 30c:	244a0008 	addiu	t2,v0,8
 310:	ae2a02d0 	sw	t2,720(s1)
 314:	356b0020 	ori	t3,t3,0x20
 318:	ac4b0000 	sw	t3,0(v0)
 31c:	8fac0088 	lw	t4,136(sp)
 320:	0003c040 	sll	t8,v1,0x1
 324:	331900ff 	andi	t9,t8,0xff
 328:	8d840000 	lw	a0,0(t4)
 32c:	240d0020 	li	t5,32
 330:	240f0010 	li	t7,16
 334:	240e0001 	li	t6,1
 338:	24080040 	li	t0,64
 33c:	24090020 	li	t1,32
 340:	afa90028 	sw	t1,40(sp)
 344:	afa80024 	sw	t0,36(sp)
 348:	afae0018 	sw	t6,24(sp)
 34c:	afaf0014 	sw	t7,20(sp)
 350:	afad0010 	sw	t5,16(sp)
 354:	afb90020 	sw	t9,32(sp)
 358:	afa0001c 	sw	zero,28(sp)
 35c:	00002825 	move	a1,zero
 360:	00003025 	move	a2,zero
 364:	00408025 	move	s0,v0
 368:	0c000000 	jal	0 <EffectSsIcePiece_Init>
 36c:	306700ff 	andi	a3,v1,0xff
 370:	ae020004 	sw	v0,4(s0)
 374:	8e2202d0 	lw	v0,720(s1)
 378:	3c0c0000 	lui	t4,0x0
 37c:	258c0000 	addiu	t4,t4,0
 380:	244a0008 	addiu	t2,v0,8
 384:	ae2a02d0 	sw	t2,720(s1)
 388:	3c0bde00 	lui	t3,0xde00
 38c:	3c060000 	lui	a2,0x0
 390:	24c60030 	addiu	a2,a2,48
 394:	27a40060 	addiu	a0,sp,96
 398:	02202825 	move	a1,s1
 39c:	240700d1 	li	a3,209
 3a0:	ac4b0000 	sw	t3,0(v0)
 3a4:	0c000000 	jal	0 <EffectSsIcePiece_Init>
 3a8:	ac4c0004 	sw	t4,4(v0)
 3ac:	8fbf003c 	lw	ra,60(sp)
 3b0:	8fb00034 	lw	s0,52(sp)
 3b4:	8fb10038 	lw	s1,56(sp)
 3b8:	03e00008 	jr	ra
 3bc:	27bd0088 	addiu	sp,sp,136

000003c0 <EffectSsIcePiece_Update>:
 3c0:	afa40000 	sw	a0,0(sp)
 3c4:	afa50004 	sw	a1,4(sp)
 3c8:	3c010000 	lui	at,0x0
 3cc:	c4200054 	lwc1	$f0,84(at)
 3d0:	c4c4000c 	lwc1	$f4,12(a2)
 3d4:	c4c80010 	lwc1	$f8,16(a2)
 3d8:	c4d00014 	lwc1	$f16,20(a2)
 3dc:	46002182 	mul.s	$f6,$f4,$f0
 3e0:	84ce0044 	lh	t6,68(a2)
 3e4:	84cf0046 	lh	t7,70(a2)
 3e8:	46004282 	mul.s	$f10,$f8,$f0
 3ec:	01cfc021 	addu	t8,t6,t7
 3f0:	46008482 	mul.s	$f18,$f16,$f0
 3f4:	a4d80044 	sh	t8,68(a2)
 3f8:	e4c6000c 	swc1	$f6,12(a2)
 3fc:	e4ca0010 	swc1	$f10,16(a2)
 400:	03e00008 	jr	ra
 404:	e4d20014 	swc1	$f18,20(a2)
	...
