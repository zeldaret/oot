
build/src/overlays/actors/ovl_En_Hata/z_en_hata.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnHata_Init>:
   0:	27bdffb8 	addiu	sp,sp,-72
   4:	afb00028 	sw	s0,40(sp)
   8:	00808025 	move	s0,a0
   c:	afbf002c 	sw	ra,44(sp)
  10:	3c040000 	lui	a0,0x0
  14:	afa5004c 	sw	a1,76(sp)
  18:	afa0003c 	sw	zero,60(sp)
  1c:	0c000000 	jal	0 <EnHata_Init>
  20:	24840000 	addiu	a0,a0,0
  24:	44822000 	mtc1	v0,$f4
  28:	3c053c5a 	lui	a1,0x3c5a
  2c:	34a5740e 	ori	a1,a1,0x740e
  30:	468021a0 	cvt.s.w	$f6,$f4
  34:	02002025 	move	a0,s0
  38:	0c000000 	jal	0 <EnHata_Init>
  3c:	e7a60038 	swc1	$f6,56(sp)
  40:	26050164 	addiu	a1,s0,356
  44:	3c060000 	lui	a2,0x0
  48:	3c070000 	lui	a3,0x0
  4c:	24e70000 	addiu	a3,a3,0
  50:	24c60000 	addiu	a2,a2,0
  54:	afa50034 	sw	a1,52(sp)
  58:	8fa4004c 	lw	a0,76(sp)
  5c:	afa00010 	sw	zero,16(sp)
  60:	afa00014 	sw	zero,20(sp)
  64:	0c000000 	jal	0 <EnHata_Init>
  68:	afa00018 	sw	zero,24(sp)
  6c:	44800000 	mtc1	zero,$f0
  70:	c7a80038 	lwc1	$f8,56(sp)
  74:	3c050000 	lui	a1,0x0
  78:	44070000 	mfc1	a3,$f0
  7c:	24a50000 	addiu	a1,a1,0
  80:	8fa40034 	lw	a0,52(sp)
  84:	3c063f80 	lui	a2,0x3f80
  88:	afa00014 	sw	zero,20(sp)
  8c:	e7a80010 	swc1	$f8,16(sp)
  90:	0c000000 	jal	0 <EnHata_Init>
  94:	e7a00018 	swc1	$f0,24(sp)
  98:	02002025 	move	a0,s0
  9c:	0c000000 	jal	0 <EnHata_Init>
  a0:	00002825 	move	a1,zero
  a4:	3c040000 	lui	a0,0x0
  a8:	24840000 	addiu	a0,a0,0
  ac:	0c000000 	jal	0 <EnHata_Init>
  b0:	27a5003c 	addiu	a1,sp,60
  b4:	8fa4004c 	lw	a0,76(sp)
  b8:	02003025 	move	a2,s0
  bc:	8fa7003c 	lw	a3,60(sp)
  c0:	0c000000 	jal	0 <EnHata_Init>
  c4:	24850810 	addiu	a1,a0,2064
  c8:	3c0143fa 	lui	at,0x43fa
  cc:	44815000 	mtc1	at,$f10
  d0:	ae02014c 	sw	v0,332(s0)
  d4:	3c010000 	lui	at,0x0
  d8:	e60a00f8 	swc1	$f10,248(s0)
  dc:	c4300000 	lwc1	$f16,0(at)
  e0:	3c010000 	lui	at,0x0
  e4:	240f0006 	li	t7,6
  e8:	e61000fc 	swc1	$f16,252(s0)
  ec:	c4320004 	lwc1	$f18,4(at)
  f0:	241803e8 	li	t8,1000
  f4:	24190001 	li	t9,1
  f8:	a60f0272 	sh	t7,626(s0)
  fc:	a6180274 	sh	t8,628(s0)
 100:	a6190276 	sh	t9,630(s0)
 104:	0c000000 	jal	0 <EnHata_Init>
 108:	e61200f4 	swc1	$f18,244(s0)
 10c:	3c010000 	lui	at,0x0
 110:	c4240008 	lwc1	$f4,8(at)
 114:	46040182 	mul.s	$f6,$f0,$f4
 118:	4600320d 	trunc.w.s	$f8,$f6
 11c:	44094000 	mfc1	t1,$f8
 120:	00000000 	nop
 124:	a6090278 	sh	t1,632(s0)
 128:	8fbf002c 	lw	ra,44(sp)
 12c:	8fb00028 	lw	s0,40(sp)
 130:	27bd0048 	addiu	sp,sp,72
 134:	03e00008 	jr	ra
 138:	00000000 	nop

0000013c <EnHata_Destroy>:
 13c:	27bdffe8 	addiu	sp,sp,-24
 140:	afbf0014 	sw	ra,20(sp)
 144:	afa40018 	sw	a0,24(sp)
 148:	24840164 	addiu	a0,a0,356
 14c:	0c000000 	jal	0 <EnHata_Init>
 150:	afa5001c 	sw	a1,28(sp)
 154:	8fa4001c 	lw	a0,28(sp)
 158:	8fae0018 	lw	t6,24(sp)
 15c:	24850810 	addiu	a1,a0,2064
 160:	0c000000 	jal	0 <EnHata_Init>
 164:	8dc6014c 	lw	a2,332(t6)
 168:	8fbf0014 	lw	ra,20(sp)
 16c:	27bd0018 	addiu	sp,sp,24
 170:	03e00008 	jr	ra
 174:	00000000 	nop

00000178 <EnHata_Update>:
 178:	27bdffa0 	addiu	sp,sp,-96
 17c:	3c0f0000 	lui	t7,0x0
 180:	afbf002c 	sw	ra,44(sp)
 184:	afb20028 	sw	s2,40(sp)
 188:	afb10024 	sw	s1,36(sp)
 18c:	afb00020 	sw	s0,32(sp)
 190:	25ef0058 	addiu	t7,t7,88
 194:	8df90000 	lw	t9,0(t7)
 198:	27ae0048 	addiu	t6,sp,72
 19c:	8df80004 	lw	t8,4(t7)
 1a0:	add90000 	sw	t9,0(t6)
 1a4:	8df90008 	lw	t9,8(t7)
 1a8:	00808025 	move	s0,a0
 1ac:	00a09025 	move	s2,a1
 1b0:	24840164 	addiu	a0,a0,356
 1b4:	add80004 	sw	t8,4(t6)
 1b8:	0c000000 	jal	0 <EnHata_Init>
 1bc:	add90008 	sw	t9,8(t6)
 1c0:	2409c000 	li	t1,-16384
 1c4:	a609023e 	sh	t1,574(s0)
 1c8:	860a023e 	lh	t2,574(s0)
 1cc:	3c01437f 	lui	at,0x437f
 1d0:	44811000 	mtc1	at,$f2
 1d4:	3c010001 	lui	at,0x1
 1d8:	02418821 	addu	s1,s2,at
 1dc:	a60a0208 	sh	t2,520(s0)
 1e0:	862b0acc 	lh	t3,2764(s1)
 1e4:	3c010001 	lui	at,0x1
 1e8:	44806000 	mtc1	zero,$f12
 1ec:	448b2000 	mtc1	t3,$f4
 1f0:	00320821 	addu	at,at,s2
 1f4:	468021a0 	cvt.s.w	$f6,$f4
 1f8:	e7a6003c 	swc1	$f6,60(sp)
 1fc:	862c0ace 	lh	t4,2766(s1)
 200:	448c4000 	mtc1	t4,$f8
 204:	00000000 	nop
 208:	468042a0 	cvt.s.w	$f10,$f8
 20c:	e7aa0040 	swc1	$f10,64(sp)
 210:	862d0ad0 	lh	t5,2768(s1)
 214:	448d8000 	mtc1	t5,$f16
 218:	00000000 	nop
 21c:	468084a0 	cvt.s.w	$f18,$f16
 220:	e7b20044 	swc1	$f18,68(sp)
 224:	c6200ad4 	lwc1	$f0,2772(s1)
 228:	4600103c 	c.lt.s	$f2,$f0
 22c:	00000000 	nop
 230:	45020004 	bc1fl	244 <EnHata_Update+0xcc>
 234:	460c003c 	c.lt.s	$f0,$f12
 238:	e4220ad4 	swc1	$f2,2772(at)
 23c:	c6200ad4 	lwc1	$f0,2772(s1)
 240:	460c003c 	c.lt.s	$f0,$f12
 244:	3c010001 	lui	at,0x1
 248:	00320821 	addu	at,at,s2
 24c:	45000002 	bc1f	258 <EnHata_Update+0xe0>
 250:	00000000 	nop
 254:	e42c0ad4 	swc1	$f12,2772(at)
 258:	0c000000 	jal	0 <EnHata_Init>
 25c:	00000000 	nop
 260:	3c013f00 	lui	at,0x3f00
 264:	44812000 	mtc1	at,$f4
 268:	00000000 	nop
 26c:	4600203c 	c.lt.s	$f4,$f0
 270:	00000000 	nop
 274:	45020006 	bc1fl	290 <EnHata_Update+0x118>
 278:	86180278 	lh	t8,632(s0)
 27c:	860e0278 	lh	t6,632(s0)
 280:	25cf1770 	addiu	t7,t6,6000
 284:	10000004 	b	298 <EnHata_Update+0x120>
 288:	a60f0278 	sh	t7,632(s0)
 28c:	86180278 	lh	t8,632(s0)
 290:	27190bb8 	addiu	t9,t8,3000
 294:	a6190278 	sh	t9,632(s0)
 298:	0c000000 	jal	0 <EnHata_Init>
 29c:	86040278 	lh	a0,632(s0)
 2a0:	3c0142a0 	lui	at,0x42a0
 2a4:	44813000 	mtc1	at,$f6
 2a8:	27a40048 	addiu	a0,sp,72
 2ac:	27a5003c 	addiu	a1,sp,60
 2b0:	46060202 	mul.s	$f8,$f0,$f6
 2b4:	0c000000 	jal	0 <EnHata_Init>
 2b8:	e7a80038 	swc1	$f8,56(sp)
 2bc:	3c01437f 	lui	at,0x437f
 2c0:	44815000 	mtc1	at,$f10
 2c4:	c7b00038 	lwc1	$f16,56(sp)
 2c8:	c6240ad4 	lwc1	$f4,2772(s1)
 2cc:	00021823 	negu	v1,v0
 2d0:	46105481 	sub.s	$f18,$f10,$f16
 2d4:	24093a98 	li	t1,15000
 2d8:	01235023 	subu	t2,t1,v1
 2dc:	448a8000 	mtc1	t2,$f16
 2e0:	46122183 	div.s	$f6,$f4,$f18
 2e4:	3c013f80 	lui	at,0x3f80
 2e8:	44814000 	mtc1	at,$f8
 2ec:	860d0276 	lh	t5,630(s0)
 2f0:	46808120 	cvt.s.w	$f4,$f16
 2f4:	86060272 	lh	a2,626(s0)
 2f8:	86070274 	lh	a3,628(s0)
 2fc:	2604020e 	addiu	a0,s0,526
 300:	afad0010 	sw	t5,16(sp)
 304:	46064281 	sub.s	$f10,$f8,$f6
 308:	460a2482 	mul.s	$f18,$f4,$f10
 30c:	4600920d 	trunc.w.s	$f8,$f18
 310:	440c4000 	mfc1	t4,$f8
 314:	00000000 	nop
 318:	01834021 	addu	t0,t4,v1
 31c:	00082c00 	sll	a1,t0,0x10
 320:	0c000000 	jal	0 <EnHata_Init>
 324:	00052c03 	sra	a1,a1,0x10
 328:	860e020e 	lh	t6,526(s0)
 32c:	27a40048 	addiu	a0,sp,72
 330:	27a5003c 	addiu	a1,sp,60
 334:	0c000000 	jal	0 <EnHata_Init>
 338:	a60e0244 	sh	t6,580(s0)
 33c:	00027823 	negu	t7,v0
 340:	a60f0210 	sh	t7,528(s0)
 344:	86180210 	lh	t8,528(s0)
 348:	3c013fa0 	lui	at,0x3fa0
 34c:	44816000 	mtc1	at,$f12
 350:	0c000000 	jal	0 <EnHata_Init>
 354:	a6180246 	sh	t8,582(s0)
 358:	3c01437f 	lui	at,0x437f
 35c:	44818000 	mtc1	at,$f16
 360:	c6260ad4 	lwc1	$f6,2772(s1)
 364:	3c014030 	lui	at,0x4030
 368:	44815000 	mtc1	at,$f10
 36c:	46103103 	div.s	$f4,$f6,$f16
 370:	460a0480 	add.s	$f18,$f0,$f10
 374:	46049202 	mul.s	$f8,$f18,$f4
 378:	e6080180 	swc1	$f8,384(s0)
 37c:	8fbf002c 	lw	ra,44(sp)
 380:	8fb20028 	lw	s2,40(sp)
 384:	8fb10024 	lw	s1,36(sp)
 388:	8fb00020 	lw	s0,32(sp)
 38c:	03e00008 	jr	ra
 390:	27bd0060 	addiu	sp,sp,96

00000394 <EnHata_OverrideLimbDraw>:
 394:	2401000c 	li	at,12
 398:	afa40000 	sw	a0,0(sp)
 39c:	afa60008 	sw	a2,8(sp)
 3a0:	10a10008 	beq	a1,at,3c4 <EnHata_OverrideLimbDraw+0x30>
 3a4:	afa7000c 	sw	a3,12(sp)
 3a8:	24010003 	li	at,3
 3ac:	10a10005 	beq	a1,at,3c4 <EnHata_OverrideLimbDraw+0x30>
 3b0:	2401000d 	li	at,13
 3b4:	10a10003 	beq	a1,at,3c4 <EnHata_OverrideLimbDraw+0x30>
 3b8:	24010004 	li	at,4
 3bc:	14a10013 	bne	a1,at,40c <EnHata_OverrideLimbDraw+0x78>
 3c0:	00000000 	nop
 3c4:	8fae0014 	lw	t6,20(sp)
 3c8:	00057880 	sll	t7,a1,0x2
 3cc:	8fa20010 	lw	v0,16(sp)
 3d0:	01e57823 	subu	t7,t7,a1
 3d4:	000f7840 	sll	t7,t7,0x1
 3d8:	01cf1821 	addu	v1,t6,t7
 3dc:	847901f4 	lh	t9,500(v1)
 3e0:	84580000 	lh	t8,0(v0)
 3e4:	84490002 	lh	t1,2(v0)
 3e8:	844c0004 	lh	t4,4(v0)
 3ec:	03194021 	addu	t0,t8,t9
 3f0:	a4480000 	sh	t0,0(v0)
 3f4:	846a01f6 	lh	t2,502(v1)
 3f8:	012a5821 	addu	t3,t1,t2
 3fc:	a44b0002 	sh	t3,2(v0)
 400:	846d01f8 	lh	t5,504(v1)
 404:	018d7021 	addu	t6,t4,t5
 408:	a44e0004 	sh	t6,4(v0)
 40c:	03e00008 	jr	ra
 410:	00001025 	move	v0,zero

00000414 <EnHata_PostLimbDraw>:
 414:	afa40000 	sw	a0,0(sp)
 418:	afa50004 	sw	a1,4(sp)
 41c:	afa60008 	sw	a2,8(sp)
 420:	03e00008 	jr	ra
 424:	afa7000c 	sw	a3,12(sp)

00000428 <EnHata_Draw>:
 428:	27bdffe0 	addiu	sp,sp,-32
 42c:	afbf001c 	sw	ra,28(sp)
 430:	afa40020 	sw	a0,32(sp)
 434:	afa50024 	sw	a1,36(sp)
 438:	0c000000 	jal	0 <EnHata_Init>
 43c:	8ca40000 	lw	a0,0(a1)
 440:	3c013f80 	lui	at,0x3f80
 444:	44816000 	mtc1	at,$f12
 448:	3c010000 	lui	at,0x0
 44c:	c42e000c 	lwc1	$f14,12(at)
 450:	44066000 	mfc1	a2,$f12
 454:	0c000000 	jal	0 <EnHata_Init>
 458:	24070001 	li	a3,1
 45c:	8fa20020 	lw	v0,32(sp)
 460:	3c0f0000 	lui	t7,0x0
 464:	25ef0000 	addiu	t7,t7,0
 468:	3c070000 	lui	a3,0x0
 46c:	8c450168 	lw	a1,360(v0)
 470:	8c460184 	lw	a2,388(v0)
 474:	afaf0010 	sw	t7,16(sp)
 478:	24e70000 	addiu	a3,a3,0
 47c:	8fa40024 	lw	a0,36(sp)
 480:	0c000000 	jal	0 <EnHata_Init>
 484:	afa20014 	sw	v0,20(sp)
 488:	8fbf001c 	lw	ra,28(sp)
 48c:	27bd0020 	addiu	sp,sp,32
 490:	03e00008 	jr	ra
 494:	00000000 	nop
	...
