
build/src/overlays/actors/ovl_En_Light/z_en_light.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnLight_Init>:
   0:	3c0e0000 	lui	t6,0x0
   4:	8dce135c 	lw	t6,4956(t6)
   8:	27bdffd0 	addiu	sp,sp,-48
   c:	afb00024 	sw	s0,36(sp)
  10:	24010003 	li	at,3
  14:	00808025 	move	s0,a0
  18:	afbf002c 	sw	ra,44(sp)
  1c:	afb10028 	sw	s1,40(sp)
  20:	15c10023 	bne	t6,at,b0 <EnLight_Init+0xb0>
  24:	afa50034 	sw	a1,52(sp)
  28:	848f001c 	lh	t7,28(a0)
  2c:	26110154 	addiu	s1,s0,340
  30:	02202025 	move	a0,s1
  34:	05e10003 	bgez	t7,44 <EnLight_Init+0x44>
  38:	240c00ff 	li	t4,255
  3c:	10000002 	b	48 <EnLight_Init+0x48>
  40:	24020001 	li	v0,1
  44:	24020028 	li	v0,40
  48:	c6080028 	lwc1	$f8,40(s0)
  4c:	c6040024 	lwc1	$f4,36(s0)
  50:	c610002c 	lwc1	$f16,44(s0)
  54:	4600428d 	trunc.w.s	$f10,$f8
  58:	240d00ff 	li	t5,255
  5c:	240e00b4 	li	t6,180
  60:	4600218d 	trunc.w.s	$f6,$f4
  64:	440a5000 	mfc1	t2,$f10
  68:	240fffff 	li	t7,-1
  6c:	4600848d 	trunc.w.s	$f18,$f16
  70:	44053000 	mfc1	a1,$f6
  74:	004a3021 	addu	a2,v0,t2
  78:	00063400 	sll	a2,a2,0x10
  7c:	44079000 	mfc1	a3,$f18
  80:	00052c00 	sll	a1,a1,0x10
  84:	00052c03 	sra	a1,a1,0x10
  88:	00073c00 	sll	a3,a3,0x10
  8c:	00073c03 	sra	a3,a3,0x10
  90:	00063403 	sra	a2,a2,0x10
  94:	afaf001c 	sw	t7,28(sp)
  98:	afae0018 	sw	t6,24(sp)
  9c:	afad0014 	sw	t5,20(sp)
  a0:	0c000000 	jal	0 <EnLight_Init>
  a4:	afac0010 	sw	t4,16(sp)
  a8:	10000022 	b	134 <EnLight_Init+0x134>
  ac:	8fa40034 	lw	a0,52(sp)
  b0:	8618001c 	lh	t8,28(s0)
  b4:	26110154 	addiu	s1,s0,340
  b8:	02202025 	move	a0,s1
  bc:	07010003 	bgez	t8,cc <EnLight_Init+0xcc>
  c0:	240d00ff 	li	t5,255
  c4:	10000002 	b	d0 <EnLight_Init+0xd0>
  c8:	24020001 	li	v0,1
  cc:	24020028 	li	v0,40
  d0:	c6080028 	lwc1	$f8,40(s0)
  d4:	c6040024 	lwc1	$f4,36(s0)
  d8:	c610002c 	lwc1	$f16,44(s0)
  dc:	4600428d 	trunc.w.s	$f10,$f8
  e0:	240e00ff 	li	t6,255
  e4:	240f00b4 	li	t7,180
  e8:	4600218d 	trunc.w.s	$f6,$f4
  ec:	440b5000 	mfc1	t3,$f10
  f0:	2418ffff 	li	t8,-1
  f4:	4600848d 	trunc.w.s	$f18,$f16
  f8:	44053000 	mfc1	a1,$f6
  fc:	004b3021 	addu	a2,v0,t3
 100:	00063400 	sll	a2,a2,0x10
 104:	44079000 	mfc1	a3,$f18
 108:	00052c00 	sll	a1,a1,0x10
 10c:	00052c03 	sra	a1,a1,0x10
 110:	00073c00 	sll	a3,a3,0x10
 114:	00073c03 	sra	a3,a3,0x10
 118:	00063403 	sra	a2,a2,0x10
 11c:	afb8001c 	sw	t8,28(sp)
 120:	afaf0018 	sw	t7,24(sp)
 124:	afae0014 	sw	t6,20(sp)
 128:	0c000000 	jal	0 <EnLight_Init>
 12c:	afad0010 	sw	t5,16(sp)
 130:	8fa40034 	lw	a0,52(sp)
 134:	02203025 	move	a2,s1
 138:	0c000000 	jal	0 <EnLight_Init>
 13c:	248507a8 	addiu	a1,a0,1960
 140:	8608001c 	lh	t0,28(s0)
 144:	3c0b0000 	lui	t3,0x0
 148:	ae020150 	sw	v0,336(s0)
 14c:	3109000f 	andi	t1,t0,0xf
 150:	000950c0 	sll	t2,t1,0x3
 154:	016a5821 	addu	t3,t3,t2
 158:	916b0007 	lbu	t3,7(t3)
 15c:	02002025 	move	a0,s0
 160:	3c014f80 	lui	at,0x4f80
 164:	448b2000 	mtc1	t3,$f4
 168:	05610004 	bgez	t3,17c <EnLight_Init+0x17c>
 16c:	468021a0 	cvt.s.w	$f6,$f4
 170:	44814000 	mtc1	at,$f8
 174:	00000000 	nop
 178:	46083180 	add.s	$f6,$f6,$f8
 17c:	3c010000 	lui	at,0x0
 180:	c42a0030 	lwc1	$f10,48(at)
 184:	460a3402 	mul.s	$f16,$f6,$f10
 188:	44058000 	mfc1	a1,$f16
 18c:	0c000000 	jal	0 <EnLight_Init>
 190:	00000000 	nop
 194:	0c000000 	jal	0 <EnLight_Init>
 198:	00000000 	nop
 19c:	3c01437f 	lui	at,0x437f
 1a0:	44819000 	mtc1	at,$f18
 1a4:	860e001c 	lh	t6,28(s0)
 1a8:	3c180000 	lui	t8,0x0
 1ac:	46120102 	mul.s	$f4,$f0,$f18
 1b0:	31cf0400 	andi	t7,t6,0x400
 1b4:	27180000 	addiu	t8,t8,0
 1b8:	4600220d 	trunc.w.s	$f8,$f4
 1bc:	440d4000 	mfc1	t5,$f8
 1c0:	11e00002 	beqz	t7,1cc <EnLight_Init+0x1cc>
 1c4:	a20d014c 	sb	t5,332(s0)
 1c8:	ae180130 	sw	t8,304(s0)
 1cc:	8fbf002c 	lw	ra,44(sp)
 1d0:	8fb00024 	lw	s0,36(sp)
 1d4:	8fb10028 	lw	s1,40(sp)
 1d8:	03e00008 	jr	ra
 1dc:	27bd0030 	addiu	sp,sp,48

000001e0 <EnLight_Destroy>:
 1e0:	27bdffe8 	addiu	sp,sp,-24
 1e4:	afa40018 	sw	a0,24(sp)
 1e8:	8fae0018 	lw	t6,24(sp)
 1ec:	afbf0014 	sw	ra,20(sp)
 1f0:	00a02025 	move	a0,a1
 1f4:	24a507a8 	addiu	a1,a1,1960
 1f8:	0c000000 	jal	0 <EnLight_Init>
 1fc:	8dc60150 	lw	a2,336(t6)
 200:	8fbf0014 	lw	ra,20(sp)
 204:	27bd0018 	addiu	sp,sp,24
 208:	03e00008 	jr	ra
 20c:	00000000 	nop

00000210 <EnLight_UpdatePosRot>:
 210:	27bdffe8 	addiu	sp,sp,-24
 214:	afbf0014 	sw	ra,20(sp)
 218:	84ae07a0 	lh	t6,1952(a1)
 21c:	00803025 	move	a2,a0
 220:	000e7880 	sll	t7,t6,0x2
 224:	00afc021 	addu	t8,a1,t7
 228:	8f040790 	lw	a0,1936(t8)
 22c:	0c000000 	jal	0 <EnLight_Init>
 230:	afa60018 	sw	a2,24(sp)
 234:	8fa60018 	lw	a2,24(sp)
 238:	34018000 	li	at,0x8000
 23c:	0041c821 	addu	t9,v0,at
 240:	8cc30118 	lw	v1,280(a2)
 244:	a4d900b6 	sh	t9,182(a2)
 248:	24c40024 	addiu	a0,a2,36
 24c:	10600009 	beqz	v1,274 <EnLight_UpdatePosRot+0x64>
 250:	24650024 	addiu	a1,v1,36
 254:	0c000000 	jal	0 <EnLight_Init>
 258:	afa60018 	sw	a2,24(sp)
 25c:	8fa60018 	lw	a2,24(sp)
 260:	3c014188 	lui	at,0x4188
 264:	44813000 	mtc1	at,$f6
 268:	c4c40028 	lwc1	$f4,40(a2)
 26c:	46062200 	add.s	$f8,$f4,$f6
 270:	e4c80028 	swc1	$f8,40(a2)
 274:	90c8014c 	lbu	t0,332(a2)
 278:	25090001 	addiu	t1,t0,1
 27c:	a0c9014c 	sb	t1,332(a2)
 280:	8fbf0014 	lw	ra,20(sp)
 284:	27bd0018 	addiu	sp,sp,24
 288:	03e00008 	jr	ra
 28c:	00000000 	nop

00000290 <EnLight_Update>:
 290:	27bdffd0 	addiu	sp,sp,-48
 294:	afbf0024 	sw	ra,36(sp)
 298:	afb00020 	sw	s0,32(sp)
 29c:	afa50034 	sw	a1,52(sp)
 2a0:	848e001c 	lh	t6,28(a0)
 2a4:	3c190000 	lui	t9,0x0
 2a8:	27390000 	addiu	t9,t9,0
 2ac:	31cf000f 	andi	t7,t6,0xf
 2b0:	000fc0c0 	sll	t8,t7,0x3
 2b4:	03191021 	addu	v0,t8,t9
 2b8:	00808025 	move	s0,a0
 2bc:	0c000000 	jal	0 <EnLight_Init>
 2c0:	afa20028 	sw	v0,40(sp)
 2c4:	3c013f00 	lui	at,0x3f00
 2c8:	44816000 	mtc1	at,$f12
 2cc:	8608001c 	lh	t0,28(s0)
 2d0:	8fa20028 	lw	v0,40(sp)
 2d4:	460c0102 	mul.s	$f4,$f0,$f12
 2d8:	2403012c 	li	v1,300
 2dc:	05010003 	bgez	t0,2ec <EnLight_Update+0x5c>
 2e0:	460c2080 	add.s	$f2,$f4,$f12
 2e4:	10000001 	b	2ec <EnLight_Update+0x5c>
 2e8:	24030064 	li	v1,100
 2ec:	90490000 	lbu	t1,0(v0)
 2f0:	26040154 	addiu	a0,s0,340
 2f4:	3c014f80 	lui	at,0x4f80
 2f8:	44893000 	mtc1	t1,$f6
 2fc:	05210004 	bgez	t1,310 <EnLight_Update+0x80>
 300:	46803220 	cvt.s.w	$f8,$f6
 304:	44815000 	mtc1	at,$f10
 308:	00000000 	nop
 30c:	460a4200 	add.s	$f8,$f8,$f10
 310:	46024402 	mul.s	$f16,$f8,$f2
 314:	24050001 	li	a1,1
 318:	3c014f00 	lui	at,0x4f00
 31c:	444af800 	cfc1	t2,$31
 320:	44c5f800 	ctc1	a1,$31
 324:	00000000 	nop
 328:	460084a4 	cvt.w.s	$f18,$f16
 32c:	4445f800 	cfc1	a1,$31
 330:	00000000 	nop
 334:	30a50078 	andi	a1,a1,0x78
 338:	50a00013 	beqzl	a1,388 <EnLight_Update+0xf8>
 33c:	44059000 	mfc1	a1,$f18
 340:	44819000 	mtc1	at,$f18
 344:	24050001 	li	a1,1
 348:	46128481 	sub.s	$f18,$f16,$f18
 34c:	44c5f800 	ctc1	a1,$31
 350:	00000000 	nop
 354:	460094a4 	cvt.w.s	$f18,$f18
 358:	4445f800 	cfc1	a1,$31
 35c:	00000000 	nop
 360:	30a50078 	andi	a1,a1,0x78
 364:	14a00005 	bnez	a1,37c <EnLight_Update+0xec>
 368:	00000000 	nop
 36c:	44059000 	mfc1	a1,$f18
 370:	3c018000 	lui	at,0x8000
 374:	10000007 	b	394 <EnLight_Update+0x104>
 378:	00a12825 	or	a1,a1,at
 37c:	10000005 	b	394 <EnLight_Update+0x104>
 380:	2405ffff 	li	a1,-1
 384:	44059000 	mfc1	a1,$f18
 388:	00000000 	nop
 38c:	04a0fffb 	bltz	a1,37c <EnLight_Update+0xec>
 390:	00000000 	nop
 394:	904b0001 	lbu	t3,1(v0)
 398:	44caf800 	ctc1	t2,$31
 39c:	30a500ff 	andi	a1,a1,0xff
 3a0:	448b2000 	mtc1	t3,$f4
 3a4:	3c014f80 	lui	at,0x4f80
 3a8:	05610004 	bgez	t3,3bc <EnLight_Update+0x12c>
 3ac:	468021a0 	cvt.s.w	$f6,$f4
 3b0:	44815000 	mtc1	at,$f10
 3b4:	00000000 	nop
 3b8:	460a3180 	add.s	$f6,$f6,$f10
 3bc:	46023202 	mul.s	$f8,$f6,$f2
 3c0:	24060001 	li	a2,1
 3c4:	3c014f00 	lui	at,0x4f00
 3c8:	444cf800 	cfc1	t4,$31
 3cc:	44c6f800 	ctc1	a2,$31
 3d0:	00000000 	nop
 3d4:	46004424 	cvt.w.s	$f16,$f8
 3d8:	4446f800 	cfc1	a2,$31
 3dc:	00000000 	nop
 3e0:	30c60078 	andi	a2,a2,0x78
 3e4:	50c00013 	beqzl	a2,434 <EnLight_Update+0x1a4>
 3e8:	44068000 	mfc1	a2,$f16
 3ec:	44818000 	mtc1	at,$f16
 3f0:	24060001 	li	a2,1
 3f4:	46104401 	sub.s	$f16,$f8,$f16
 3f8:	44c6f800 	ctc1	a2,$31
 3fc:	00000000 	nop
 400:	46008424 	cvt.w.s	$f16,$f16
 404:	4446f800 	cfc1	a2,$31
 408:	00000000 	nop
 40c:	30c60078 	andi	a2,a2,0x78
 410:	14c00005 	bnez	a2,428 <EnLight_Update+0x198>
 414:	00000000 	nop
 418:	44068000 	mfc1	a2,$f16
 41c:	3c018000 	lui	at,0x8000
 420:	10000007 	b	440 <EnLight_Update+0x1b0>
 424:	00c13025 	or	a2,a2,at
 428:	10000005 	b	440 <EnLight_Update+0x1b0>
 42c:	2406ffff 	li	a2,-1
 430:	44068000 	mfc1	a2,$f16
 434:	00000000 	nop
 438:	04c0fffb 	bltz	a2,428 <EnLight_Update+0x198>
 43c:	00000000 	nop
 440:	904d0002 	lbu	t5,2(v0)
 444:	44ccf800 	ctc1	t4,$31
 448:	30c600ff 	andi	a2,a2,0xff
 44c:	448d9000 	mtc1	t5,$f18
 450:	3c014f80 	lui	at,0x4f80
 454:	05a10004 	bgez	t5,468 <EnLight_Update+0x1d8>
 458:	46809120 	cvt.s.w	$f4,$f18
 45c:	44815000 	mtc1	at,$f10
 460:	00000000 	nop
 464:	460a2100 	add.s	$f4,$f4,$f10
 468:	46022182 	mul.s	$f6,$f4,$f2
 46c:	24070001 	li	a3,1
 470:	3c014f00 	lui	at,0x4f00
 474:	444ef800 	cfc1	t6,$31
 478:	44c7f800 	ctc1	a3,$31
 47c:	00000000 	nop
 480:	46003224 	cvt.w.s	$f8,$f6
 484:	4447f800 	cfc1	a3,$31
 488:	00000000 	nop
 48c:	30e70078 	andi	a3,a3,0x78
 490:	50e00013 	beqzl	a3,4e0 <EnLight_Update+0x250>
 494:	44074000 	mfc1	a3,$f8
 498:	44814000 	mtc1	at,$f8
 49c:	24070001 	li	a3,1
 4a0:	46083201 	sub.s	$f8,$f6,$f8
 4a4:	44c7f800 	ctc1	a3,$31
 4a8:	00000000 	nop
 4ac:	46004224 	cvt.w.s	$f8,$f8
 4b0:	4447f800 	cfc1	a3,$31
 4b4:	00000000 	nop
 4b8:	30e70078 	andi	a3,a3,0x78
 4bc:	14e00005 	bnez	a3,4d4 <EnLight_Update+0x244>
 4c0:	00000000 	nop
 4c4:	44074000 	mfc1	a3,$f8
 4c8:	3c018000 	lui	at,0x8000
 4cc:	10000007 	b	4ec <EnLight_Update+0x25c>
 4d0:	00e13825 	or	a3,a3,at
 4d4:	10000005 	b	4ec <EnLight_Update+0x25c>
 4d8:	2407ffff 	li	a3,-1
 4dc:	44074000 	mfc1	a3,$f8
 4e0:	00000000 	nop
 4e4:	04e0fffb 	bltz	a3,4d4 <EnLight_Update+0x244>
 4e8:	00000000 	nop
 4ec:	44cef800 	ctc1	t6,$31
 4f0:	30e700ff 	andi	a3,a3,0xff
 4f4:	0c000000 	jal	0 <EnLight_Init>
 4f8:	afa30010 	sw	v1,16(sp)
 4fc:	02002025 	move	a0,s0
 500:	0c000000 	jal	0 <EnLight_Init>
 504:	8fa50034 	lw	a1,52(sp)
 508:	860f001c 	lh	t7,28(s0)
 50c:	02002025 	move	a0,s0
 510:	05e20004 	bltzl	t7,524 <EnLight_Update+0x294>
 514:	8fbf0024 	lw	ra,36(sp)
 518:	0c000000 	jal	0 <EnLight_Init>
 51c:	24052031 	li	a1,8241
 520:	8fbf0024 	lw	ra,36(sp)
 524:	8fb00020 	lw	s0,32(sp)
 528:	27bd0030 	addiu	sp,sp,48
 52c:	03e00008 	jr	ra
 530:	00000000 	nop

00000534 <EnLight_UpdateSwitch>:
 534:	27bdffc0 	addiu	sp,sp,-64
 538:	afbf0024 	sw	ra,36(sp)
 53c:	afb00020 	sw	s0,32(sp)
 540:	afa50044 	sw	a1,68(sp)
 544:	848e001c 	lh	t6,28(a0)
 548:	3c190000 	lui	t9,0x0
 54c:	27390000 	addiu	t9,t9,0
 550:	31cf000f 	andi	t7,t6,0xf
 554:	000fc0c0 	sll	t8,t7,0x3
 558:	03194021 	addu	t0,t8,t9
 55c:	afa80038 	sw	t0,56(sp)
 560:	91090007 	lbu	t1,7(t0)
 564:	00808025 	move	s0,a0
 568:	3c014f80 	lui	at,0x4f80
 56c:	44892000 	mtc1	t1,$f4
 570:	05210004 	bgez	t1,584 <EnLight_UpdateSwitch+0x50>
 574:	468021a0 	cvt.s.w	$f6,$f4
 578:	44814000 	mtc1	at,$f8
 57c:	00000000 	nop
 580:	46083180 	add.s	$f6,$f6,$f8
 584:	3c010000 	lui	at,0x0
 588:	d4300038 	ldc1	$f16,56(at)
 58c:	460032a1 	cvt.d.s	$f10,$f6
 590:	c6040050 	lwc1	$f4,80(s0)
 594:	46305482 	mul.d	$f18,$f10,$f16
 598:	8fa40044 	lw	a0,68(sp)
 59c:	46002221 	cvt.d.s	$f8,$f4
 5a0:	46324183 	div.d	$f6,$f8,$f18
 5a4:	462032a0 	cvt.s.d	$f10,$f6
 5a8:	e7aa0030 	swc1	$f10,48(sp)
 5ac:	8602001c 	lh	v0,28(s0)
 5b0:	304a0800 	andi	t2,v0,0x800
 5b4:	1140001f 	beqz	t2,634 <EnLight_UpdateSwitch+0x100>
 5b8:	304503f0 	andi	a1,v0,0x3f0
 5bc:	304503f0 	andi	a1,v0,0x3f0
 5c0:	00052903 	sra	a1,a1,0x4
 5c4:	0c000000 	jal	0 <EnLight_Init>
 5c8:	8fa40044 	lw	a0,68(sp)
 5cc:	10400008 	beqz	v0,5f0 <EnLight_UpdateSwitch+0xbc>
 5d0:	c7b00030 	lwc1	$f16,48(sp)
 5d4:	3c063d4c 	lui	a2,0x3d4c
 5d8:	34c6cccd 	ori	a2,a2,0xcccd
 5dc:	27a40030 	addiu	a0,sp,48
 5e0:	0c000000 	jal	0 <EnLight_Init>
 5e4:	3c053f80 	lui	a1,0x3f80
 5e8:	1000002d 	b	6a0 <EnLight_UpdateSwitch+0x16c>
 5ec:	8fab0038 	lw	t3,56(sp)
 5f0:	3c010000 	lui	at,0x0
 5f4:	c4240040 	lwc1	$f4,64(at)
 5f8:	27a40030 	addiu	a0,sp,48
 5fc:	24050000 	li	a1,0
 600:	4604803c 	c.lt.s	$f16,$f4
 604:	3c063d4c 	lui	a2,0x3d4c
 608:	45000006 	bc1f	624 <EnLight_UpdateSwitch+0xf0>
 60c:	00000000 	nop
 610:	02002025 	move	a0,s0
 614:	0c000000 	jal	0 <EnLight_Init>
 618:	24050000 	li	a1,0
 61c:	100000cf 	b	95c <EnLight_UpdateSwitch+0x428>
 620:	8fbf0024 	lw	ra,36(sp)
 624:	0c000000 	jal	0 <EnLight_Init>
 628:	34c6cccd 	ori	a2,a2,0xcccd
 62c:	1000001c 	b	6a0 <EnLight_UpdateSwitch+0x16c>
 630:	8fab0038 	lw	t3,56(sp)
 634:	0c000000 	jal	0 <EnLight_Init>
 638:	00052903 	sra	a1,a1,0x4
 63c:	10400013 	beqz	v0,68c <EnLight_UpdateSwitch+0x158>
 640:	27a40030 	addiu	a0,sp,48
 644:	3c010000 	lui	at,0x0
 648:	c4320044 	lwc1	$f18,68(at)
 64c:	c7a80030 	lwc1	$f8,48(sp)
 650:	27a40030 	addiu	a0,sp,48
 654:	24050000 	li	a1,0
 658:	4612403c 	c.lt.s	$f8,$f18
 65c:	3c063d4c 	lui	a2,0x3d4c
 660:	45000006 	bc1f	67c <EnLight_UpdateSwitch+0x148>
 664:	00000000 	nop
 668:	02002025 	move	a0,s0
 66c:	0c000000 	jal	0 <EnLight_Init>
 670:	24050000 	li	a1,0
 674:	100000b9 	b	95c <EnLight_UpdateSwitch+0x428>
 678:	8fbf0024 	lw	ra,36(sp)
 67c:	0c000000 	jal	0 <EnLight_Init>
 680:	34c6cccd 	ori	a2,a2,0xcccd
 684:	10000006 	b	6a0 <EnLight_UpdateSwitch+0x16c>
 688:	8fab0038 	lw	t3,56(sp)
 68c:	3c063d4c 	lui	a2,0x3d4c
 690:	34c6cccd 	ori	a2,a2,0xcccd
 694:	0c000000 	jal	0 <EnLight_Init>
 698:	3c053f80 	lui	a1,0x3f80
 69c:	8fab0038 	lw	t3,56(sp)
 6a0:	02002025 	move	a0,s0
 6a4:	916c0007 	lbu	t4,7(t3)
 6a8:	448c3000 	mtc1	t4,$f6
 6ac:	05810005 	bgez	t4,6c4 <EnLight_UpdateSwitch+0x190>
 6b0:	468032a0 	cvt.s.w	$f10,$f6
 6b4:	3c014f80 	lui	at,0x4f80
 6b8:	44818000 	mtc1	at,$f16
 6bc:	00000000 	nop
 6c0:	46105280 	add.s	$f10,$f10,$f16
 6c4:	3c010000 	lui	at,0x0
 6c8:	d4280048 	ldc1	$f8,72(at)
 6cc:	46005121 	cvt.d.s	$f4,$f10
 6d0:	c7a60030 	lwc1	$f6,48(sp)
 6d4:	46282482 	mul.d	$f18,$f4,$f8
 6d8:	46003421 	cvt.d.s	$f16,$f6
 6dc:	46309282 	mul.d	$f10,$f18,$f16
 6e0:	46205120 	cvt.s.d	$f4,$f10
 6e4:	44052000 	mfc1	a1,$f4
 6e8:	0c000000 	jal	0 <EnLight_Init>
 6ec:	00000000 	nop
 6f0:	0c000000 	jal	0 <EnLight_Init>
 6f4:	00000000 	nop
 6f8:	3c013f00 	lui	at,0x3f00
 6fc:	44816000 	mtc1	at,$f12
 700:	8fad0038 	lw	t5,56(sp)
 704:	3c014f80 	lui	at,0x4f80
 708:	460c0202 	mul.s	$f8,$f0,$f12
 70c:	91ae0000 	lbu	t6,0(t5)
 710:	26040154 	addiu	a0,s0,340
 714:	448e3000 	mtc1	t6,$f6
 718:	460c4080 	add.s	$f2,$f8,$f12
 71c:	05c10004 	bgez	t6,730 <EnLight_UpdateSwitch+0x1fc>
 720:	468034a0 	cvt.s.w	$f18,$f6
 724:	44818000 	mtc1	at,$f16
 728:	00000000 	nop
 72c:	46109480 	add.s	$f18,$f18,$f16
 730:	46029282 	mul.s	$f10,$f18,$f2
 734:	24050001 	li	a1,1
 738:	3c014f00 	lui	at,0x4f00
 73c:	444ff800 	cfc1	t7,$31
 740:	44c5f800 	ctc1	a1,$31
 744:	00000000 	nop
 748:	46005124 	cvt.w.s	$f4,$f10
 74c:	4445f800 	cfc1	a1,$31
 750:	00000000 	nop
 754:	30a50078 	andi	a1,a1,0x78
 758:	50a00013 	beqzl	a1,7a8 <EnLight_UpdateSwitch+0x274>
 75c:	44052000 	mfc1	a1,$f4
 760:	44812000 	mtc1	at,$f4
 764:	24050001 	li	a1,1
 768:	46045101 	sub.s	$f4,$f10,$f4
 76c:	44c5f800 	ctc1	a1,$31
 770:	00000000 	nop
 774:	46002124 	cvt.w.s	$f4,$f4
 778:	4445f800 	cfc1	a1,$31
 77c:	00000000 	nop
 780:	30a50078 	andi	a1,a1,0x78
 784:	14a00005 	bnez	a1,79c <EnLight_UpdateSwitch+0x268>
 788:	00000000 	nop
 78c:	44052000 	mfc1	a1,$f4
 790:	3c018000 	lui	at,0x8000
 794:	10000007 	b	7b4 <EnLight_UpdateSwitch+0x280>
 798:	00a12825 	or	a1,a1,at
 79c:	10000005 	b	7b4 <EnLight_UpdateSwitch+0x280>
 7a0:	2405ffff 	li	a1,-1
 7a4:	44052000 	mfc1	a1,$f4
 7a8:	00000000 	nop
 7ac:	04a0fffb 	bltz	a1,79c <EnLight_UpdateSwitch+0x268>
 7b0:	00000000 	nop
 7b4:	91b80001 	lbu	t8,1(t5)
 7b8:	44cff800 	ctc1	t7,$31
 7bc:	30a500ff 	andi	a1,a1,0xff
 7c0:	44984000 	mtc1	t8,$f8
 7c4:	3c014f80 	lui	at,0x4f80
 7c8:	07010004 	bgez	t8,7dc <EnLight_UpdateSwitch+0x2a8>
 7cc:	468041a0 	cvt.s.w	$f6,$f8
 7d0:	44818000 	mtc1	at,$f16
 7d4:	00000000 	nop
 7d8:	46103180 	add.s	$f6,$f6,$f16
 7dc:	46023482 	mul.s	$f18,$f6,$f2
 7e0:	24060001 	li	a2,1
 7e4:	3c014f00 	lui	at,0x4f00
 7e8:	4459f800 	cfc1	t9,$31
 7ec:	44c6f800 	ctc1	a2,$31
 7f0:	00000000 	nop
 7f4:	460092a4 	cvt.w.s	$f10,$f18
 7f8:	4446f800 	cfc1	a2,$31
 7fc:	00000000 	nop
 800:	30c60078 	andi	a2,a2,0x78
 804:	50c00013 	beqzl	a2,854 <EnLight_UpdateSwitch+0x320>
 808:	44065000 	mfc1	a2,$f10
 80c:	44815000 	mtc1	at,$f10
 810:	24060001 	li	a2,1
 814:	460a9281 	sub.s	$f10,$f18,$f10
 818:	44c6f800 	ctc1	a2,$31
 81c:	00000000 	nop
 820:	460052a4 	cvt.w.s	$f10,$f10
 824:	4446f800 	cfc1	a2,$31
 828:	00000000 	nop
 82c:	30c60078 	andi	a2,a2,0x78
 830:	14c00005 	bnez	a2,848 <EnLight_UpdateSwitch+0x314>
 834:	00000000 	nop
 838:	44065000 	mfc1	a2,$f10
 83c:	3c018000 	lui	at,0x8000
 840:	10000007 	b	860 <EnLight_UpdateSwitch+0x32c>
 844:	00c13025 	or	a2,a2,at
 848:	10000005 	b	860 <EnLight_UpdateSwitch+0x32c>
 84c:	2406ffff 	li	a2,-1
 850:	44065000 	mfc1	a2,$f10
 854:	00000000 	nop
 858:	04c0fffb 	bltz	a2,848 <EnLight_UpdateSwitch+0x314>
 85c:	00000000 	nop
 860:	91a80002 	lbu	t0,2(t5)
 864:	44d9f800 	ctc1	t9,$31
 868:	30c600ff 	andi	a2,a2,0xff
 86c:	44882000 	mtc1	t0,$f4
 870:	3c014f80 	lui	at,0x4f80
 874:	05010004 	bgez	t0,888 <EnLight_UpdateSwitch+0x354>
 878:	46802220 	cvt.s.w	$f8,$f4
 87c:	44818000 	mtc1	at,$f16
 880:	00000000 	nop
 884:	46104200 	add.s	$f8,$f8,$f16
 888:	46024182 	mul.s	$f6,$f8,$f2
 88c:	24070001 	li	a3,1
 890:	3c014f00 	lui	at,0x4f00
 894:	4449f800 	cfc1	t1,$31
 898:	44c7f800 	ctc1	a3,$31
 89c:	00000000 	nop
 8a0:	460034a4 	cvt.w.s	$f18,$f6
 8a4:	4447f800 	cfc1	a3,$31
 8a8:	00000000 	nop
 8ac:	30e70078 	andi	a3,a3,0x78
 8b0:	50e00013 	beqzl	a3,900 <EnLight_UpdateSwitch+0x3cc>
 8b4:	44079000 	mfc1	a3,$f18
 8b8:	44819000 	mtc1	at,$f18
 8bc:	24070001 	li	a3,1
 8c0:	46123481 	sub.s	$f18,$f6,$f18
 8c4:	44c7f800 	ctc1	a3,$31
 8c8:	00000000 	nop
 8cc:	460094a4 	cvt.w.s	$f18,$f18
 8d0:	4447f800 	cfc1	a3,$31
 8d4:	00000000 	nop
 8d8:	30e70078 	andi	a3,a3,0x78
 8dc:	14e00005 	bnez	a3,8f4 <EnLight_UpdateSwitch+0x3c0>
 8e0:	00000000 	nop
 8e4:	44079000 	mfc1	a3,$f18
 8e8:	3c018000 	lui	at,0x8000
 8ec:	10000007 	b	90c <EnLight_UpdateSwitch+0x3d8>
 8f0:	00e13825 	or	a3,a3,at
 8f4:	10000005 	b	90c <EnLight_UpdateSwitch+0x3d8>
 8f8:	2407ffff 	li	a3,-1
 8fc:	44079000 	mfc1	a3,$f18
 900:	00000000 	nop
 904:	04e0fffb 	bltz	a3,8f4 <EnLight_UpdateSwitch+0x3c0>
 908:	00000000 	nop
 90c:	3c014396 	lui	at,0x4396
 910:	44815000 	mtc1	at,$f10
 914:	44c9f800 	ctc1	t1,$31
 918:	c7a40030 	lwc1	$f4,48(sp)
 91c:	30e700ff 	andi	a3,a3,0xff
 920:	46045402 	mul.s	$f16,$f10,$f4
 924:	4600820d 	trunc.w.s	$f8,$f16
 928:	440b4000 	mfc1	t3,$f8
 92c:	0c000000 	jal	0 <EnLight_Init>
 930:	afab0010 	sw	t3,16(sp)
 934:	02002025 	move	a0,s0
 938:	0c000000 	jal	0 <EnLight_Init>
 93c:	8fa50044 	lw	a1,68(sp)
 940:	860c001c 	lh	t4,28(s0)
 944:	02002025 	move	a0,s0
 948:	05820004 	bltzl	t4,95c <EnLight_UpdateSwitch+0x428>
 94c:	8fbf0024 	lw	ra,36(sp)
 950:	0c000000 	jal	0 <EnLight_Init>
 954:	24052031 	li	a1,8241
 958:	8fbf0024 	lw	ra,36(sp)
 95c:	8fb00020 	lw	s0,32(sp)
 960:	27bd0040 	addiu	sp,sp,64
 964:	03e00008 	jr	ra
 968:	00000000 	nop

0000096c <EnLight_Draw>:
 96c:	27bdff70 	addiu	sp,sp,-144
 970:	afbf003c 	sw	ra,60(sp)
 974:	afb00038 	sw	s0,56(sp)
 978:	afa40090 	sw	a0,144(sp)
 97c:	afa50094 	sw	a1,148(sp)
 980:	848f001c 	lh	t7,28(a0)
 984:	3c0a0000 	lui	t2,0x0
 988:	8ca50000 	lw	a1,0(a1)
 98c:	31f8000f 	andi	t8,t7,0xf
 990:	0018c8c0 	sll	t9,t8,0x3
 994:	254a0000 	addiu	t2,t2,0
 998:	032a4021 	addu	t0,t9,t2
 99c:	3c060000 	lui	a2,0x0
 9a0:	24c60000 	addiu	a2,a2,0
 9a4:	afa80084 	sw	t0,132(sp)
 9a8:	27a4006c 	addiu	a0,sp,108
 9ac:	240701b9 	li	a3,441
 9b0:	0c000000 	jal	0 <EnLight_Init>
 9b4:	00a08025 	move	s0,a1
 9b8:	8fac0094 	lw	t4,148(sp)
 9bc:	0c000000 	jal	0 <EnLight_Init>
 9c0:	8d840000 	lw	a0,0(t4)
 9c4:	8fa90090 	lw	t1,144(sp)
 9c8:	3c18db06 	lui	t8,0xdb06
 9cc:	8fa80084 	lw	t0,132(sp)
 9d0:	852d001c 	lh	t5,28(t1)
 9d4:	37180020 	ori	t8,t8,0x20
 9d8:	00002825 	move	a1,zero
 9dc:	05a00047 	bltz	t5,afc <EnLight_Draw+0x190>
 9e0:	00003025 	move	a2,zero
 9e4:	8e0202d0 	lw	v0,720(s0)
 9e8:	3c0fdb06 	lui	t7,0xdb06
 9ec:	35ef0020 	ori	t7,t7,0x20
 9f0:	244e0008 	addiu	t6,v0,8
 9f4:	ae0e02d0 	sw	t6,720(s0)
 9f8:	ac4f0000 	sw	t7,0(v0)
 9fc:	8fb80094 	lw	t8,148(sp)
 a00:	24190020 	li	t9,32
 a04:	240a0040 	li	t2,64
 a08:	8f040000 	lw	a0,0(t8)
 a0c:	240b0001 	li	t3,1
 a10:	afab0018 	sw	t3,24(sp)
 a14:	afa0001c 	sw	zero,28(sp)
 a18:	afaa0014 	sw	t2,20(sp)
 a1c:	afb90010 	sw	t9,16(sp)
 a20:	912c014c 	lbu	t4,332(t1)
 a24:	24180080 	li	t8,128
 a28:	240f0020 	li	t7,32
 a2c:	000c0823 	negu	at,t4
 a30:	00016880 	sll	t5,at,0x2
 a34:	01a16821 	addu	t5,t5,at
 a38:	000d6880 	sll	t5,t5,0x2
 a3c:	31ae01ff 	andi	t6,t5,0x1ff
 a40:	afae0020 	sw	t6,32(sp)
 a44:	afaf0024 	sw	t7,36(sp)
 a48:	afb80028 	sw	t8,40(sp)
 a4c:	afa80084 	sw	t0,132(sp)
 a50:	00002825 	move	a1,zero
 a54:	00003025 	move	a2,zero
 a58:	00003825 	move	a3,zero
 a5c:	0c000000 	jal	0 <EnLight_Init>
 a60:	afa20068 	sw	v0,104(sp)
 a64:	8fa30068 	lw	v1,104(sp)
 a68:	8fa80084 	lw	t0,132(sp)
 a6c:	3c190000 	lui	t9,0x0
 a70:	27390000 	addiu	t9,t9,0
 a74:	ac620004 	sw	v0,4(v1)
 a78:	afb90080 	sw	t9,128(sp)
 a7c:	8e0202d0 	lw	v0,720(s0)
 a80:	3c0bfa00 	lui	t3,0xfa00
 a84:	356b8080 	ori	t3,t3,0x8080
 a88:	244a0008 	addiu	t2,v0,8
 a8c:	ae0a02d0 	sw	t2,720(s0)
 a90:	ac4b0000 	sw	t3,0(v0)
 a94:	91180001 	lbu	t8,1(t0)
 a98:	910d0000 	lbu	t5,0(t0)
 a9c:	910c0002 	lbu	t4,2(t0)
 aa0:	0018cc00 	sll	t9,t8,0x10
 aa4:	000d7600 	sll	t6,t5,0x18
 aa8:	01d95025 	or	t2,t6,t9
 aac:	910e0003 	lbu	t6,3(t0)
 ab0:	000c6a00 	sll	t5,t4,0x8
 ab4:	014d7825 	or	t7,t2,t5
 ab8:	01eec825 	or	t9,t7,t6
 abc:	ac590004 	sw	t9,4(v0)
 ac0:	8e0202d0 	lw	v0,720(s0)
 ac4:	3c0cfb00 	lui	t4,0xfb00
 ac8:	244b0008 	addiu	t3,v0,8
 acc:	ae0b02d0 	sw	t3,720(s0)
 ad0:	ac4c0000 	sw	t4,0(v0)
 ad4:	910d0004 	lbu	t5,4(t0)
 ad8:	910e0005 	lbu	t6,5(t0)
 adc:	910a0006 	lbu	t2,6(t0)
 ae0:	000dc600 	sll	t8,t5,0x18
 ae4:	000ecc00 	sll	t9,t6,0x10
 ae8:	03195825 	or	t3,t8,t9
 aec:	000a6a00 	sll	t5,t2,0x8
 af0:	016d7825 	or	t7,t3,t5
 af4:	10000032 	b	bc0 <EnLight_Draw+0x254>
 af8:	ac4f0004 	sw	t7,4(v0)
 afc:	8e0202d0 	lw	v0,720(s0)
 b00:	240c0010 	li	t4,16
 b04:	240a0020 	li	t2,32
 b08:	244e0008 	addiu	t6,v0,8
 b0c:	ae0e02d0 	sw	t6,720(s0)
 b10:	ac580000 	sw	t8,0(v0)
 b14:	8fb90094 	lw	t9,148(sp)
 b18:	240b0001 	li	t3,1
 b1c:	00003825 	move	a3,zero
 b20:	8f240000 	lw	a0,0(t9)
 b24:	afab0018 	sw	t3,24(sp)
 b28:	afaa0014 	sw	t2,20(sp)
 b2c:	afac0010 	sw	t4,16(sp)
 b30:	9123014c 	lbu	v1,332(t1)
 b34:	240c0020 	li	t4,32
 b38:	24190010 	li	t9,16
 b3c:	00030823 	negu	at,v1
 b40:	00017080 	sll	t6,at,0x2
 b44:	01c17023 	subu	t6,t6,at
 b48:	000e7040 	sll	t6,t6,0x1
 b4c:	00036840 	sll	t5,v1,0x1
 b50:	31af003f 	andi	t7,t5,0x3f
 b54:	31d8007f 	andi	t8,t6,0x7f
 b58:	afb80020 	sw	t8,32(sp)
 b5c:	afaf001c 	sw	t7,28(sp)
 b60:	afb90024 	sw	t9,36(sp)
 b64:	afac0028 	sw	t4,40(sp)
 b68:	0c000000 	jal	0 <EnLight_Init>
 b6c:	afa2005c 	sw	v0,92(sp)
 b70:	8fa8005c 	lw	t0,92(sp)
 b74:	3c0a0000 	lui	t2,0x0
 b78:	254a0000 	addiu	t2,t2,0
 b7c:	ad020004 	sw	v0,4(t0)
 b80:	afaa0080 	sw	t2,128(sp)
 b84:	8e0202d0 	lw	v0,720(s0)
 b88:	3c0dfa00 	lui	t5,0xfa00
 b8c:	35adc0c0 	ori	t5,t5,0xc0c0
 b90:	244b0008 	addiu	t3,v0,8
 b94:	ae0b02d0 	sw	t3,720(s0)
 b98:	3c0fffc8 	lui	t7,0xffc8
 b9c:	ac4f0004 	sw	t7,4(v0)
 ba0:	ac4d0000 	sw	t5,0(v0)
 ba4:	8e0202d0 	lw	v0,720(s0)
 ba8:	3c18fb00 	lui	t8,0xfb00
 bac:	3c19ff00 	lui	t9,0xff00
 bb0:	244e0008 	addiu	t6,v0,8
 bb4:	ae0e02d0 	sw	t6,720(s0)
 bb8:	ac590004 	sw	t9,4(v0)
 bbc:	ac580000 	sw	t8,0(v0)
 bc0:	8fa20094 	lw	v0,148(sp)
 bc4:	844c07a0 	lh	t4,1952(v0)
 bc8:	000c5080 	sll	t2,t4,0x2
 bcc:	004a5821 	addu	t3,v0,t2
 bd0:	0c000000 	jal	0 <EnLight_Init>
 bd4:	8d640790 	lw	a0,1936(t3)
 bd8:	8fad0090 	lw	t5,144(sp)
 bdc:	34018000 	li	at,0x8000
 be0:	24050001 	li	a1,1
 be4:	85af00b6 	lh	t7,182(t5)
 be8:	004f7023 	subu	t6,v0,t7
 bec:	01c1c021 	addu	t8,t6,at
 bf0:	0018cc00 	sll	t9,t8,0x10
 bf4:	00196403 	sra	t4,t9,0x10
 bf8:	448c2000 	mtc1	t4,$f4
 bfc:	3c010000 	lui	at,0x0
 c00:	c4280050 	lwc1	$f8,80(at)
 c04:	468021a0 	cvt.s.w	$f6,$f4
 c08:	46083302 	mul.s	$f12,$f6,$f8
 c0c:	0c000000 	jal	0 <EnLight_Init>
 c10:	00000000 	nop
 c14:	8faa0090 	lw	t2,144(sp)
 c18:	3c010000 	lui	at,0x0
 c1c:	24050001 	li	a1,1
 c20:	854b001c 	lh	t3,28(t2)
 c24:	316d0001 	andi	t5,t3,0x1
 c28:	51a00004 	beqzl	t5,c3c <EnLight_Draw+0x2d0>
 c2c:	3c013f80 	lui	at,0x3f80
 c30:	0c000000 	jal	0 <EnLight_Init>
 c34:	c42c0054 	lwc1	$f12,84(at)
 c38:	3c013f80 	lui	at,0x3f80
 c3c:	44816000 	mtc1	at,$f12
 c40:	24070001 	li	a3,1
 c44:	44066000 	mfc1	a2,$f12
 c48:	0c000000 	jal	0 <EnLight_Init>
 c4c:	46006386 	mov.s	$f14,$f12
 c50:	8e0202d0 	lw	v0,720(s0)
 c54:	3c0eda38 	lui	t6,0xda38
 c58:	35ce0003 	ori	t6,t6,0x3
 c5c:	244f0008 	addiu	t7,v0,8
 c60:	ae0f02d0 	sw	t7,720(s0)
 c64:	ac4e0000 	sw	t6,0(v0)
 c68:	8fb80094 	lw	t8,148(sp)
 c6c:	3c050000 	lui	a1,0x0
 c70:	24a50010 	addiu	a1,a1,16
 c74:	8f040000 	lw	a0,0(t8)
 c78:	240601e8 	li	a2,488
 c7c:	0c000000 	jal	0 <EnLight_Init>
 c80:	afa20050 	sw	v0,80(sp)
 c84:	8fa30050 	lw	v1,80(sp)
 c88:	3c0cde00 	lui	t4,0xde00
 c8c:	3c060000 	lui	a2,0x0
 c90:	ac620004 	sw	v0,4(v1)
 c94:	8e0202d0 	lw	v0,720(s0)
 c98:	24c60020 	addiu	a2,a2,32
 c9c:	27a4006c 	addiu	a0,sp,108
 ca0:	24590008 	addiu	t9,v0,8
 ca4:	ae1902d0 	sw	t9,720(s0)
 ca8:	ac4c0000 	sw	t4,0(v0)
 cac:	8faa0080 	lw	t2,128(sp)
 cb0:	240701eb 	li	a3,491
 cb4:	ac4a0004 	sw	t2,4(v0)
 cb8:	8fab0094 	lw	t3,148(sp)
 cbc:	0c000000 	jal	0 <EnLight_Init>
 cc0:	8d650000 	lw	a1,0(t3)
 cc4:	8fbf003c 	lw	ra,60(sp)
 cc8:	8fb00038 	lw	s0,56(sp)
 ccc:	27bd0090 	addiu	sp,sp,144
 cd0:	03e00008 	jr	ra
 cd4:	00000000 	nop
	...
