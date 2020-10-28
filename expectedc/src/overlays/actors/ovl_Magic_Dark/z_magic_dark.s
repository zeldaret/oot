
build/src/overlays/actors/ovl_Magic_Dark/z_magic_dark.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <MagicDark_Init>:
   0:	3c030000 	lui	v1,0x0
   4:	24630000 	addiu	v1,v1,0
   8:	8c6e0004 	lw	t6,4(v1)
   c:	27bdffe8 	addiu	sp,sp,-24
  10:	afbf0014 	sw	ra,20(sp)
  14:	11c00005 	beqz	t6,2c <MagicDark_Init+0x2c>
  18:	8ca21c44 	lw	v0,7236(a1)
  1c:	3c010000 	lui	at,0x0
  20:	c424008c 	lwc1	$f4,140(at)
  24:	10000004 	b	38 <MagicDark_Init+0x38>
  28:	e484015c 	swc1	$f4,348(a0)
  2c:	3c010000 	lui	at,0x0
  30:	c4260090 	lwc1	$f6,144(at)
  34:	e486015c 	swc1	$f6,348(a0)
  38:	8c580024 	lw	t8,36(v0)
  3c:	24050000 	li	a1,0
  40:	ac980024 	sw	t8,36(a0)
  44:	8c4f0028 	lw	t7,40(v0)
  48:	ac8f0028 	sw	t7,40(a0)
  4c:	8c58002c 	lw	t8,44(v0)
  50:	ac98002c 	sw	t8,44(a0)
  54:	0c000000 	jal	0 <MagicDark_Init>
  58:	afa40018 	sw	a0,24(sp)
  5c:	8fa40018 	lw	a0,24(sp)
  60:	3c030000 	lui	v1,0x0
  64:	2419ffff 	li	t9,-1
  68:	24630000 	addiu	v1,v1,0
  6c:	a0990003 	sb	t9,3(a0)
  70:	846813c8 	lh	t0,5064(v1)
  74:	3c090000 	lui	t1,0x0
  78:	25290000 	addiu	t1,t1,0
  7c:	11000012 	beqz	t0,c8 <MagicDark_Init+0xc8>
  80:	3c0a0000 	lui	t2,0x0
  84:	254a0000 	addiu	t2,t2,0
  88:	ac890130 	sw	t1,304(a0)
  8c:	ac8a0134 	sw	t2,308(a0)
  90:	3c010000 	lui	at,0x0
  94:	c42a0094 	lwc1	$f10,148(at)
  98:	c488015c 	lwc1	$f8,348(a0)
  9c:	3c010000 	lui	at,0x0
  a0:	c490015c 	lwc1	$f16,348(a0)
  a4:	460a4002 	mul.s	$f0,$f8,$f10
  a8:	e4800058 	swc1	$f0,88(a0)
  ac:	e4800050 	swc1	$f0,80(a0)
  b0:	c4320098 	lwc1	$f18,152(at)
  b4:	a480014c 	sh	zero,332(a0)
  b8:	a080014e 	sb	zero,334(a0)
  bc:	46128102 	mul.s	$f4,$f16,$f18
  c0:	10000003 	b	d0 <MagicDark_Init+0xd0>
  c4:	e4840054 	swc1	$f4,84(a0)
  c8:	a480014c 	sh	zero,332(a0)
  cc:	a46013c8 	sh	zero,5064(v1)
  d0:	8fbf0014 	lw	ra,20(sp)
  d4:	27bd0018 	addiu	sp,sp,24
  d8:	03e00008 	jr	ra
  dc:	00000000 	nop

000000e0 <MagicDark_Destroy>:
  e0:	3c0e0000 	lui	t6,0x0
  e4:	85ce13c8 	lh	t6,5064(t6)
  e8:	27bdffe8 	addiu	sp,sp,-24
  ec:	afa40018 	sw	a0,24(sp)
  f0:	00a02025 	move	a0,a1
  f4:	15c00003 	bnez	t6,104 <MagicDark_Destroy+0x24>
  f8:	afbf0014 	sw	ra,20(sp)
  fc:	0c000000 	jal	0 <MagicDark_Init>
 100:	00000000 	nop
 104:	8fbf0014 	lw	ra,20(sp)
 108:	27bd0018 	addiu	sp,sp,24
 10c:	03e00008 	jr	ra
 110:	00000000 	nop

00000114 <func_80B874E4>:
 114:	27bdffd8 	addiu	sp,sp,-40
 118:	3c020001 	lui	v0,0x1
 11c:	afbf0014 	sw	ra,20(sp)
 120:	00451021 	addu	v0,v0,a1
 124:	904203dc 	lbu	v0,988(v0)
 128:	3c080000 	lui	t0,0x0
 12c:	25080000 	addiu	t0,t0,0
 130:	2409000d 	li	t1,13
 134:	00803025 	move	a2,a0
 138:	8ca71c44 	lw	a3,7236(a1)
 13c:	10490004 	beq	v0,t1,150 <func_80B874E4+0x3c>
 140:	850313c8 	lh	v1,5064(t0)
 144:	24010011 	li	at,17
 148:	54410006 	bnel	v0,at,164 <func_80B874E4+0x50>
 14c:	286104b0 	slti	at,v1,1200
 150:	0c000000 	jal	0 <MagicDark_Init>
 154:	00c02025 	move	a0,a2
 158:	1000007d 	b	350 <func_80B874E4+0x23c>
 15c:	8fbf0014 	lw	ra,20(sp)
 160:	286104b0 	slti	at,v1,1200
 164:	14200007 	bnez	at,184 <func_80B874E4+0x70>
 168:	240eff9c 	li	t6,-100
 16c:	a0e00a78 	sb	zero,2680(a3)
 170:	a50013c8 	sh	zero,5064(t0)
 174:	0c000000 	jal	0 <MagicDark_Init>
 178:	00c02025 	move	a0,a2
 17c:	10000074 	b	350 <func_80B874E4+0x23c>
 180:	8fbf0014 	lw	ra,20(sp)
 184:	a0ee0a78 	sb	t6,2680(a3)
 188:	84c2014c 	lh	v0,332(a2)
 18c:	c4c0015c 	lwc1	$f0,348(a2)
 190:	240400ff 	li	a0,255
 194:	28410014 	slti	at,v0,20
 198:	e4c00058 	swc1	$f0,88(a2)
 19c:	1020001b 	beqz	at,20c <func_80B874E4+0xf8>
 1a0:	e4c00050 	swc1	$f0,80(a2)
 1a4:	44822000 	mtc1	v0,$f4
 1a8:	3c010000 	lui	at,0x0
 1ac:	c4280000 	lwc1	$f8,0(at)
 1b0:	468021a0 	cvt.s.w	$f6,$f4
 1b4:	3c010000 	lui	at,0x0
 1b8:	c4300000 	lwc1	$f16,0(at)
 1bc:	c4c4015c 	lwc1	$f4,348(a2)
 1c0:	84cf014c 	lh	t7,332(a2)
 1c4:	3c010000 	lui	at,0x0
 1c8:	46083282 	mul.s	$f10,$f6,$f8
 1cc:	448f3000 	mtc1	t7,$f6
 1d0:	00000000 	nop
 1d4:	46803220 	cvt.s.w	$f8,$f6
 1d8:	c4c6015c 	lwc1	$f6,348(a2)
 1dc:	460a8481 	sub.s	$f18,$f16,$f10
 1e0:	46049002 	mul.s	$f0,$f18,$f4
 1e4:	e4c00058 	swc1	$f0,88(a2)
 1e8:	e4c00050 	swc1	$f0,80(a2)
 1ec:	c4300000 	lwc1	$f16,0(at)
 1f0:	3c010000 	lui	at,0x0
 1f4:	c4320000 	lwc1	$f18,0(at)
 1f8:	46104282 	mul.s	$f10,$f8,$f16
 1fc:	46125100 	add.s	$f4,$f10,$f18
 200:	46062202 	mul.s	$f8,$f4,$f6
 204:	10000006 	b	220 <func_80B874E4+0x10c>
 208:	e4c80054 	swc1	$f8,84(a2)
 20c:	c4c0015c 	lwc1	$f0,348(a2)
 210:	c4d0015c 	lwc1	$f16,348(a2)
 214:	e4c00058 	swc1	$f0,88(a2)
 218:	e4c00050 	swc1	$f0,80(a2)
 21c:	e4d00054 	swc1	$f16,84(a2)
 220:	3c010000 	lui	at,0x0
 224:	c4200000 	lwc1	$f0,0(at)
 228:	c4ca0050 	lwc1	$f10,80(a2)
 22c:	c4c40058 	lwc1	$f4,88(a2)
 230:	84c2014c 	lh	v0,332(a2)
 234:	46005482 	mul.s	$f18,$f10,$f0
 238:	28410014 	slti	at,v0,20
 23c:	46002182 	mul.s	$f6,$f4,$f0
 240:	e4d20050 	swc1	$f18,80(a2)
 244:	10200006 	beqz	at,260 <func_80B874E4+0x14c>
 248:	e4c60058 	swc1	$f6,88(a2)
 24c:	00022080 	sll	a0,v0,0x2
 250:	00822023 	subu	a0,a0,v0
 254:	00042080 	sll	a0,a0,0x2
 258:	10000001 	b	260 <func_80B874E4+0x14c>
 25c:	308400ff 	andi	a0,a0,0xff
 260:	2861049c 	slti	at,v1,1180
 264:	5420000d 	bnezl	at,29c <func_80B874E4+0x188>
 268:	2861044c 	slti	at,v1,1100
 26c:	00690019 	multu	v1,t1
 270:	24193ceb 	li	t9,15595
 274:	306b0001 	andi	t3,v1,0x1
 278:	0000c012 	mflo	t8
 27c:	03385023 	subu	t2,t9,t8
 280:	1160000d 	beqz	t3,2b8 <func_80B874E4+0x1a4>
 284:	a0ca014e 	sb	t2,334(a2)
 288:	314c00ff 	andi	t4,t2,0xff
 28c:	000c6843 	sra	t5,t4,0x1
 290:	10000009 	b	2b8 <func_80B874E4+0x1a4>
 294:	a0cd014e 	sb	t5,334(a2)
 298:	2861044c 	slti	at,v1,1100
 29c:	14200005 	bnez	at,2b4 <func_80B874E4+0x1a0>
 2a0:	241800ff 	li	t8,255
 2a4:	000379c0 	sll	t7,v1,0x7
 2a8:	25f9007f 	addiu	t9,t7,127
 2ac:	10000002 	b	2b8 <func_80B874E4+0x1a4>
 2b0:	a0d9014e 	sb	t9,334(a2)
 2b4:	a0d8014e 	sb	t8,334(a2)
 2b8:	90ca014e 	lbu	t2,334(a2)
 2bc:	008a082a 	slt	at,a0,t2
 2c0:	50200003 	beqzl	at,2d0 <func_80B874E4+0x1bc>
 2c4:	84cb0032 	lh	t3,50(a2)
 2c8:	a0c4014e 	sb	a0,334(a2)
 2cc:	84cb0032 	lh	t3,50(a2)
 2d0:	256c03e8 	addiu	t4,t3,1000
 2d4:	a4cc0032 	sh	t4,50(a2)
 2d8:	84ad07a0 	lh	t5,1952(a1)
 2dc:	000d7080 	sll	t6,t5,0x2
 2e0:	00ae7821 	addu	t7,a1,t6
 2e4:	8de40790 	lw	a0,1936(t7)
 2e8:	afa60028 	sw	a2,40(sp)
 2ec:	0c000000 	jal	0 <MagicDark_Init>
 2f0:	a7a30018 	sh	v1,24(sp)
 2f4:	8fa60028 	lw	a2,40(sp)
 2f8:	87a30018 	lh	v1,24(sp)
 2fc:	3c080000 	lui	t0,0x0
 300:	84d90032 	lh	t9,50(a2)
 304:	84ca014c 	lh	t2,332(a2)
 308:	25080000 	addiu	t0,t0,0
 30c:	0059c021 	addu	t8,v0,t9
 310:	254b0001 	addiu	t3,t2,1
 314:	a4d800b6 	sh	t8,182(a2)
 318:	a4cb014c 	sh	t3,332(a2)
 31c:	246c0001 	addiu	t4,v1,1
 320:	2861044c 	slti	at,v1,1100
 324:	10200006 	beqz	at,340 <func_80B874E4+0x22c>
 328:	a50c13c8 	sh	t4,5064(t0)
 32c:	00c02025 	move	a0,a2
 330:	0c000000 	jal	0 <MagicDark_Init>
 334:	2405007c 	li	a1,124
 338:	10000005 	b	350 <func_80B874E4+0x23c>
 33c:	8fbf0014 	lw	ra,20(sp)
 340:	00c02025 	move	a0,a2
 344:	0c000000 	jal	0 <MagicDark_Init>
 348:	240500c0 	li	a1,192
 34c:	8fbf0014 	lw	ra,20(sp)
 350:	27bd0028 	addiu	sp,sp,40
 354:	03e00008 	jr	ra
 358:	00000000 	nop

0000035c <func_80B8772C>:
 35c:	3c010001 	lui	at,0x1
 360:	00811021 	addu	v0,a0,at
 364:	904e1cbf 	lbu	t6,7359(v0)
 368:	44856000 	mtc1	a1,$f12
 36c:	24010005 	li	at,5
 370:	11c1004b 	beq	t6,at,4a0 <func_80B8772C+0x144>
 374:	00000000 	nop
 378:	44801000 	mtc1	zero,$f2
 37c:	3c013f80 	lui	at,0x3f80
 380:	44817000 	mtc1	at,$f14
 384:	4602603c 	c.lt.s	$f12,$f2
 388:	3c010000 	lui	at,0x0
 38c:	45020003 	bc1fl	39c <func_80B8772C+0x40>
 390:	460c703c 	c.lt.s	$f14,$f12
 394:	46001306 	mov.s	$f12,$f2
 398:	460c703c 	c.lt.s	$f14,$f12
 39c:	00000000 	nop
 3a0:	45000002 	bc1f	3ac <func_80B8772C+0x50>
 3a4:	00000000 	nop
 3a8:	46007306 	mov.s	$f12,$f14
 3ac:	c4300000 	lwc1	$f16,0(at)
 3b0:	4610603c 	c.lt.s	$f12,$f16
 3b4:	46106001 	sub.s	$f0,$f12,$f16
 3b8:	45020003 	bc1fl	3c8 <func_80B8772C+0x6c>
 3bc:	844f0af6 	lh	t7,2806(v0)
 3c0:	46001006 	mov.s	$f0,$f2
 3c4:	844f0af6 	lh	t7,2806(v0)
 3c8:	3c010000 	lui	at,0x0
 3cc:	c4240000 	lwc1	$f4,0(at)
 3d0:	448f3000 	mtc1	t7,$f6
 3d4:	46026032 	c.eq.s	$f12,$f2
 3d8:	3c010001 	lui	at,0x1
 3dc:	46803220 	cvt.s.w	$f8,$f6
 3e0:	00240821 	addu	at,at,a0
 3e4:	00001025 	move	v0,zero
 3e8:	46082281 	sub.s	$f10,$f4,$f8
 3ec:	46005482 	mul.s	$f18,$f10,$f0
 3f0:	4600918d 	trunc.w.s	$f6,$f18
 3f4:	44193000 	mfc1	t9,$f6
 3f8:	4500000b 	bc1f	428 <func_80B8772C+0xcc>
 3fc:	a4390ac2 	sh	t9,2754(at)
 400:	3c010001 	lui	at,0x1
 404:	00811821 	addu	v1,a0,at
 408:	24040003 	li	a0,3
 40c:	00001025 	move	v0,zero
 410:	24420001 	addiu	v0,v0,1
 414:	24630002 	addiu	v1,v1,2
 418:	1444fffd 	bne	v0,a0,410 <func_80B8772C+0xb4>
 41c:	a4600aba 	sh	zero,2746(v1)
 420:	03e00008 	jr	ra
 424:	00000000 	nop
 428:	3c0140a0 	lui	at,0x40a0
 42c:	44812000 	mtc1	at,$f4
 430:	3c010001 	lui	at,0x1
 434:	00811821 	addu	v1,a0,at
 438:	46046002 	mul.s	$f0,$f12,$f4
 43c:	00812821 	addu	a1,a0,at
 440:	24040003 	li	a0,3
 444:	4600703c 	c.lt.s	$f14,$f0
 448:	00000000 	nop
 44c:	45000002 	bc1f	458 <func_80B8772C+0xfc>
 450:	00000000 	nop
 454:	46007006 	mov.s	$f0,$f14
 458:	90a80af3 	lbu	t0,2803(a1)
 45c:	3c014f80 	lui	at,0x4f80
 460:	44884000 	mtc1	t0,$f8
 464:	05010004 	bgez	t0,478 <func_80B8772C+0x11c>
 468:	468042a0 	cvt.s.w	$f10,$f8
 46c:	44819000 	mtc1	at,$f18
 470:	00000000 	nop
 474:	46125280 	add.s	$f10,$f10,$f18
 478:	46005182 	mul.s	$f6,$f10,$f0
 47c:	24420001 	addiu	v0,v0,1
 480:	24630002 	addiu	v1,v1,2
 484:	24a50001 	addiu	a1,a1,1
 488:	4600310d 	trunc.w.s	$f4,$f6
 48c:	440c2000 	mfc1	t4,$f4
 490:	00000000 	nop
 494:	000c6823 	negu	t5,t4
 498:	1444ffef 	bne	v0,a0,458 <func_80B8772C+0xfc>
 49c:	a46d0aba 	sh	t5,2746(v1)
 4a0:	03e00008 	jr	ra
 4a4:	00000000 	nop

000004a8 <MagicDark_Update>:
 4a8:	27bdffc8 	addiu	sp,sp,-56
 4ac:	afbf0024 	sw	ra,36(sp)
 4b0:	afb00020 	sw	s0,32(sp)
 4b4:	afa5003c 	sw	a1,60(sp)
 4b8:	8caf1c44 	lw	t7,7236(a1)
 4bc:	00808025 	move	s0,a0
 4c0:	240500c3 	li	a1,195
 4c4:	0c000000 	jal	0 <MagicDark_Init>
 4c8:	afaf002c 	sw	t7,44(sp)
 4cc:	8602014c 	lh	v0,332(s0)
 4d0:	28410023 	slti	at,v0,35
 4d4:	5020001f 	beqzl	at,554 <MagicDark_Update+0xac>
 4d8:	28410037 	slti	at,v0,55
 4dc:	44822000 	mtc1	v0,$f4
 4e0:	3c010000 	lui	at,0x0
 4e4:	c42800b8 	lwc1	$f8,184(at)
 4e8:	468021a0 	cvt.s.w	$f6,$f4
 4ec:	8fa4003c 	lw	a0,60(sp)
 4f0:	46083282 	mul.s	$f10,$f6,$f8
 4f4:	44055000 	mfc1	a1,$f10
 4f8:	0c000000 	jal	0 <MagicDark_Init>
 4fc:	00000000 	nop
 500:	3c010000 	lui	at,0x0
 504:	c43200bc 	lwc1	$f18,188(at)
 508:	c610015c 	lwc1	$f16,348(s0)
 50c:	3c010000 	lui	at,0x0
 510:	c42600c0 	lwc1	$f6,192(at)
 514:	46128102 	mul.s	$f4,$f16,$f18
 518:	3c063d4c 	lui	a2,0x3d4c
 51c:	3c073c23 	lui	a3,0x3c23
 520:	34e7d70a 	ori	a3,a3,0xd70a
 524:	34c6cccd 	ori	a2,a2,0xcccd
 528:	26040050 	addiu	a0,s0,80
 52c:	e7a60010 	swc1	$f6,16(sp)
 530:	44052000 	mfc1	a1,$f4
 534:	0c000000 	jal	0 <MagicDark_Init>
 538:	00000000 	nop
 53c:	02002025 	move	a0,s0
 540:	0c000000 	jal	0 <MagicDark_Init>
 544:	8e050050 	lw	a1,80(s0)
 548:	10000038 	b	62c <MagicDark_Update+0x184>
 54c:	8602014c 	lh	v0,332(s0)
 550:	28410037 	slti	at,v0,55
 554:	10200022 	beqz	at,5e0 <MagicDark_Update+0x138>
 558:	3c090000 	lui	t1,0x0
 55c:	3c010000 	lui	at,0x0
 560:	c42a00c4 	lwc1	$f10,196(at)
 564:	c6080050 	lwc1	$f8,80(s0)
 568:	02002025 	move	a0,s0
 56c:	460a4402 	mul.s	$f16,$f8,$f10
 570:	44058000 	mfc1	a1,$f16
 574:	0c000000 	jal	0 <MagicDark_Init>
 578:	00000000 	nop
 57c:	8fb8002c 	lw	t8,44(sp)
 580:	3c013f80 	lui	at,0x3f80
 584:	44819000 	mtc1	at,$f18
 588:	8f05090c 	lw	a1,2316(t8)
 58c:	26040154 	addiu	a0,s0,340
 590:	3c063f00 	lui	a2,0x3f00
 594:	3c074040 	lui	a3,0x4040
 598:	0c000000 	jal	0 <MagicDark_Init>
 59c:	e7b20010 	swc1	$f18,16(sp)
 5a0:	8602014c 	lh	v0,332(s0)
 5a4:	24190036 	li	t9,54
 5a8:	28410031 	slti	at,v0,49
 5ac:	1420001f 	bnez	at,62c <MagicDark_Update+0x184>
 5b0:	03224023 	subu	t0,t9,v0
 5b4:	44882000 	mtc1	t0,$f4
 5b8:	3c010000 	lui	at,0x0
 5bc:	c42800c8 	lwc1	$f8,200(at)
 5c0:	468021a0 	cvt.s.w	$f6,$f4
 5c4:	8fa4003c 	lw	a0,60(sp)
 5c8:	46083282 	mul.s	$f10,$f6,$f8
 5cc:	44055000 	mfc1	a1,$f10
 5d0:	0c000000 	jal	0 <MagicDark_Init>
 5d4:	00000000 	nop
 5d8:	10000014 	b	62c <MagicDark_Update+0x184>
 5dc:	8602014c 	lh	v0,332(s0)
 5e0:	3c0a0000 	lui	t2,0x0
 5e4:	25290000 	addiu	t1,t1,0
 5e8:	254a0000 	addiu	t2,t2,0
 5ec:	ae090130 	sw	t1,304(s0)
 5f0:	ae0a0134 	sw	t2,308(s0)
 5f4:	3c010000 	lui	at,0x0
 5f8:	c43200cc 	lwc1	$f18,204(at)
 5fc:	c610015c 	lwc1	$f16,348(s0)
 600:	3c010000 	lui	at,0x0
 604:	c604015c 	lwc1	$f4,348(s0)
 608:	46128002 	mul.s	$f0,$f16,$f18
 60c:	e6000058 	swc1	$f0,88(s0)
 610:	e6000050 	swc1	$f0,80(s0)
 614:	c42600d0 	lwc1	$f6,208(at)
 618:	a600014c 	sh	zero,332(s0)
 61c:	8602014c 	lh	v0,332(s0)
 620:	46062202 	mul.s	$f8,$f4,$f6
 624:	a200014e 	sb	zero,334(s0)
 628:	e6080054 	swc1	$f8,84(s0)
 62c:	244b0001 	addiu	t3,v0,1
 630:	a60b014c 	sh	t3,332(s0)
 634:	8fbf0024 	lw	ra,36(sp)
 638:	8fb00020 	lw	s0,32(sp)
 63c:	27bd0038 	addiu	sp,sp,56
 640:	03e00008 	jr	ra
 644:	00000000 	nop

00000648 <func_80B87A18>:
 648:	27bdff70 	addiu	sp,sp,-144
 64c:	3c0e0001 	lui	t6,0x1
 650:	afbf0044 	sw	ra,68(sp)
 654:	afb20040 	sw	s2,64(sp)
 658:	afb1003c 	sw	s1,60(sp)
 65c:	afb00038 	sw	s0,56(sp)
 660:	01c57021 	addu	t6,t6,a1
 664:	8dce1de4 	lw	t6,7652(t6)
 668:	00a09025 	move	s2,a1
 66c:	00808025 	move	s0,a0
 670:	a7ae0086 	sh	t6,134(sp)
 674:	8ca50000 	lw	a1,0(a1)
 678:	3c060000 	lui	a2,0x0
 67c:	24c60000 	addiu	a2,a2,0
 680:	27a40070 	addiu	a0,sp,112
 684:	2407020d 	li	a3,525
 688:	0c000000 	jal	0 <MagicDark_Init>
 68c:	00a08825 	move	s1,a1
 690:	0c000000 	jal	0 <MagicDark_Init>
 694:	8e440000 	lw	a0,0(s2)
 698:	8e421c44 	lw	v0,7236(s2)
 69c:	c60e0028 	lwc1	$f14,40(s0)
 6a0:	3c01c000 	lui	at,0xc000
 6a4:	c4440908 	lwc1	$f4,2312(v0)
 6a8:	44814000 	mtc1	at,$f8
 6ac:	3c014000 	lui	at,0x4000
 6b0:	e6040024 	swc1	$f4,36(s0)
 6b4:	c4460910 	lwc1	$f6,2320(v0)
 6b8:	00003825 	move	a3,zero
 6bc:	e606002c 	swc1	$f6,44(s0)
 6c0:	c440090c 	lwc1	$f0,2316(v0)
 6c4:	460e0081 	sub.s	$f2,$f0,$f14
 6c8:	4608103c 	c.lt.s	$f2,$f8
 6cc:	00000000 	nop
 6d0:	45020009 	bc1fl	6f8 <func_80B87A18+0xb0>
 6d4:	44816000 	mtc1	at,$f12
 6d8:	3c014000 	lui	at,0x4000
 6dc:	44816000 	mtc1	at,$f12
 6e0:	00000000 	nop
 6e4:	460c0280 	add.s	$f10,$f0,$f12
 6e8:	e60a0028 	swc1	$f10,40(s0)
 6ec:	1000000a 	b	718 <func_80B87A18+0xd0>
 6f0:	c60e0028 	lwc1	$f14,40(s0)
 6f4:	44816000 	mtc1	at,$f12
 6f8:	00000000 	nop
 6fc:	4602603c 	c.lt.s	$f12,$f2
 700:	00000000 	nop
 704:	45020005 	bc1fl	71c <func_80B87A18+0xd4>
 708:	c60c0024 	lwc1	$f12,36(s0)
 70c:	460c0401 	sub.s	$f16,$f0,$f12
 710:	e6100028 	swc1	$f16,40(s0)
 714:	c60e0028 	lwc1	$f14,40(s0)
 718:	c60c0024 	lwc1	$f12,36(s0)
 71c:	0c000000 	jal	0 <MagicDark_Init>
 720:	8e06002c 	lw	a2,44(s0)
 724:	c60c0050 	lwc1	$f12,80(s0)
 728:	c60e0054 	lwc1	$f14,84(s0)
 72c:	8e060058 	lw	a2,88(s0)
 730:	0c000000 	jal	0 <MagicDark_Init>
 734:	24070001 	li	a3,1
 738:	860f00b6 	lh	t7,182(s0)
 73c:	3c010000 	lui	at,0x0
 740:	c4260000 	lwc1	$f6,0(at)
 744:	448f9000 	mtc1	t7,$f18
 748:	24050001 	li	a1,1
 74c:	46809120 	cvt.s.w	$f4,$f18
 750:	46062302 	mul.s	$f12,$f4,$f6
 754:	0c000000 	jal	0 <MagicDark_Init>
 758:	00000000 	nop
 75c:	8e2202d0 	lw	v0,720(s1)
 760:	3c19da38 	lui	t9,0xda38
 764:	37390003 	ori	t9,t9,0x3
 768:	24580008 	addiu	t8,v0,8
 76c:	ae3802d0 	sw	t8,720(s1)
 770:	ac590000 	sw	t9,0(v0)
 774:	8e440000 	lw	a0,0(s2)
 778:	3c050000 	lui	a1,0x0
 77c:	24a50000 	addiu	a1,a1,0
 780:	24060229 	li	a2,553
 784:	0c000000 	jal	0 <MagicDark_Init>
 788:	afa20064 	sw	v0,100(sp)
 78c:	8fa30064 	lw	v1,100(sp)
 790:	3c0afa00 	lui	t2,0xfa00
 794:	3c014f80 	lui	at,0x4f80
 798:	ac620004 	sw	v0,4(v1)
 79c:	8e2302d0 	lw	v1,720(s1)
 7a0:	24690008 	addiu	t1,v1,8
 7a4:	ae2902d0 	sw	t1,720(s1)
 7a8:	ac6a0000 	sw	t2,0(v1)
 7ac:	920b014e 	lbu	t3,334(s0)
 7b0:	448b4000 	mtc1	t3,$f8
 7b4:	05610004 	bgez	t3,7c8 <func_80B87A18+0x180>
 7b8:	468042a0 	cvt.s.w	$f10,$f8
 7bc:	44818000 	mtc1	at,$f16
 7c0:	00000000 	nop
 7c4:	46105280 	add.s	$f10,$f10,$f16
 7c8:	3c010000 	lui	at,0x0
 7cc:	c4320000 	lwc1	$f18,0(at)
 7d0:	3c01aaff 	lui	at,0xaaff
 7d4:	3421ff00 	ori	at,at,0xff00
 7d8:	46125102 	mul.s	$f4,$f10,$f18
 7dc:	3c0a0064 	lui	t2,0x64
 7e0:	354aff80 	ori	t2,t2,0xff80
 7e4:	3c09fb00 	lui	t1,0xfb00
 7e8:	3c0c0000 	lui	t4,0x0
 7ec:	258c0000 	addiu	t4,t4,0
 7f0:	3c08de00 	lui	t0,0xde00
 7f4:	4600218d 	trunc.w.s	$f6,$f4
 7f8:	00002825 	move	a1,zero
 7fc:	440e3000 	mfc1	t6,$f6
 800:	00000000 	nop
 804:	31cf00ff 	andi	t7,t6,0xff
 808:	01e1c025 	or	t8,t7,at
 80c:	ac780004 	sw	t8,4(v1)
 810:	8e2202d0 	lw	v0,720(s1)
 814:	24180001 	li	t8,1
 818:	240f0020 	li	t7,32
 81c:	24590008 	addiu	t9,v0,8
 820:	ae3902d0 	sw	t9,720(s1)
 824:	ac490000 	sw	t1,0(v0)
 828:	ac4a0004 	sw	t2,4(v0)
 82c:	8e2202d0 	lw	v0,720(s1)
 830:	240a0020 	li	t2,32
 834:	24090040 	li	t1,64
 838:	244b0008 	addiu	t3,v0,8
 83c:	ae2b02d0 	sw	t3,720(s1)
 840:	ac480000 	sw	t0,0(v0)
 844:	ac4c0004 	sw	t4,4(v0)
 848:	8e2202d0 	lw	v0,720(s1)
 84c:	240e0020 	li	t6,32
 850:	244d0008 	addiu	t5,v0,8
 854:	ae2d02d0 	sw	t5,720(s1)
 858:	ac480000 	sw	t0,0(v0)
 85c:	8e440000 	lw	a0,0(s2)
 860:	97a30086 	lhu	v1,134(sp)
 864:	afaa0028 	sw	t2,40(sp)
 868:	afa90024 	sw	t1,36(sp)
 86c:	00030823 	negu	at,v1
 870:	0001c900 	sll	t9,at,0x4
 874:	afb90020 	sw	t9,32(sp)
 878:	00013880 	sll	a3,at,0x2
 87c:	afa0001c 	sw	zero,28(sp)
 880:	afb80018 	sw	t8,24(sp)
 884:	afaf0014 	sw	t7,20(sp)
 888:	afae0010 	sw	t6,16(sp)
 88c:	00408025 	move	s0,v0
 890:	0c000000 	jal	0 <MagicDark_Init>
 894:	00033040 	sll	a2,v1,0x1
 898:	ae020004 	sw	v0,4(s0)
 89c:	8e2202d0 	lw	v0,720(s1)
 8a0:	3c0d0000 	lui	t5,0x0
 8a4:	25ad0000 	addiu	t5,t5,0
 8a8:	244b0008 	addiu	t3,v0,8
 8ac:	ae2b02d0 	sw	t3,720(s1)
 8b0:	3c0cde00 	lui	t4,0xde00
 8b4:	3c060000 	lui	a2,0x0
 8b8:	ac4c0000 	sw	t4,0(v0)
 8bc:	ac4d0004 	sw	t5,4(v0)
 8c0:	8e450000 	lw	a1,0(s2)
 8c4:	24c60000 	addiu	a2,a2,0
 8c8:	27a40070 	addiu	a0,sp,112
 8cc:	0c000000 	jal	0 <MagicDark_Init>
 8d0:	2407023a 	li	a3,570
 8d4:	8fbf0044 	lw	ra,68(sp)
 8d8:	8fb00038 	lw	s0,56(sp)
 8dc:	8fb1003c 	lw	s1,60(sp)
 8e0:	8fb20040 	lw	s2,64(sp)
 8e4:	03e00008 	jr	ra
 8e8:	27bd0090 	addiu	sp,sp,144

000008ec <MagicDark_Draw>:
 8ec:	27bdff78 	addiu	sp,sp,-136
 8f0:	afbf0024 	sw	ra,36(sp)
 8f4:	afb20020 	sw	s2,32(sp)
 8f8:	afb1001c 	sw	s1,28(sp)
 8fc:	afb00018 	sw	s0,24(sp)
 900:	8cae009c 	lw	t6,156(a1)
 904:	00808825 	move	s1,a0
 908:	00a09025 	move	s2,a1
 90c:	31cf001f 	andi	t7,t6,0x1f
 910:	448f2000 	mtc1	t7,$f4
 914:	8ca21c44 	lw	v0,7236(a1)
 918:	05e10005 	bgez	t7,930 <MagicDark_Draw+0x44>
 91c:	468021a0 	cvt.s.w	$f6,$f4
 920:	3c014f80 	lui	at,0x4f80
 924:	44814000 	mtc1	at,$f8
 928:	00000000 	nop
 92c:	46083180 	add.s	$f6,$f6,$f8
 930:	e7a6006c 	swc1	$f6,108(sp)
 934:	8623014c 	lh	v1,332(s1)
 938:	28610020 	slti	at,v1,32
 93c:	50200026 	beqzl	at,9d8 <MagicDark_Draw+0xec>
 940:	28610082 	slti	at,v1,130
 944:	c44a09bc 	lwc1	$f10,2492(v0)
 948:	c4500998 	lwc1	$f16,2456(v0)
 94c:	3c013f00 	lui	at,0x3f00
 950:	44810000 	mtc1	at,$f0
 954:	46105480 	add.s	$f18,$f10,$f16
 958:	27b90078 	addiu	t9,sp,120
 95c:	46009102 	mul.s	$f4,$f18,$f0
 960:	e7a40078 	swc1	$f4,120(sp)
 964:	c446099c 	lwc1	$f6,2460(v0)
 968:	c44809c0 	lwc1	$f8,2496(v0)
 96c:	46064280 	add.s	$f10,$f8,$f6
 970:	46005402 	mul.s	$f16,$f10,$f0
 974:	e7b0007c 	swc1	$f16,124(sp)
 978:	c44409a0 	lwc1	$f4,2464(v0)
 97c:	c45209c4 	lwc1	$f18,2500(v0)
 980:	46049200 	add.s	$f8,$f18,$f4
 984:	46004182 	mul.s	$f6,$f8,$f0
 988:	e7a60080 	swc1	$f6,128(sp)
 98c:	8623014c 	lh	v1,332(s1)
 990:	28610015 	slti	at,v1,21
 994:	14200008 	bnez	at,9b8 <MagicDark_Draw+0xcc>
 998:	2478ffec 	addiu	t8,v1,-20
 99c:	44985000 	mtc1	t8,$f10
 9a0:	3c010000 	lui	at,0x0
 9a4:	c4240000 	lwc1	$f4,0(at)
 9a8:	468054a0 	cvt.s.w	$f18,$f10
 9ac:	46049202 	mul.s	$f8,$f18,$f4
 9b0:	46088180 	add.s	$f6,$f16,$f8
 9b4:	e7a6007c 	swc1	$f6,124(sp)
 9b8:	8f290000 	lw	t1,0(t9)
 9bc:	ae290150 	sw	t1,336(s1)
 9c0:	8f280004 	lw	t0,4(t9)
 9c4:	ae280154 	sw	t0,340(s1)
 9c8:	8f290008 	lw	t1,8(t9)
 9cc:	1000000b 	b	9fc <MagicDark_Draw+0x110>
 9d0:	ae290158 	sw	t1,344(s1)
 9d4:	28610082 	slti	at,v1,130
 9d8:	502000bd 	beqzl	at,cd0 <MagicDark_Draw+0x3e4>
 9dc:	8fbf0024 	lw	ra,36(sp)
 9e0:	8e2c0150 	lw	t4,336(s1)
 9e4:	27aa0078 	addiu	t2,sp,120
 9e8:	ad4c0000 	sw	t4,0(t2)
 9ec:	8e2b0154 	lw	t3,340(s1)
 9f0:	ad4b0004 	sw	t3,4(t2)
 9f4:	8e2c0158 	lw	t4,344(s1)
 9f8:	ad4c0008 	sw	t4,8(t2)
 9fc:	864d07a0 	lh	t5,1952(s2)
 a00:	000d7080 	sll	t6,t5,0x2
 a04:	024e7821 	addu	t7,s2,t6
 a08:	0c000000 	jal	0 <MagicDark_Init>
 a0c:	8de40790 	lw	a0,1936(t7)
 a10:	00022400 	sll	a0,v0,0x10
 a14:	0c000000 	jal	0 <MagicDark_Init>
 a18:	00042403 	sra	a0,a0,0x10
 a1c:	e7a00034 	swc1	$f0,52(sp)
 a20:	865807a0 	lh	t8,1952(s2)
 a24:	0018c880 	sll	t9,t8,0x2
 a28:	02594021 	addu	t0,s2,t9
 a2c:	0c000000 	jal	0 <MagicDark_Init>
 a30:	8d040790 	lw	a0,1936(t0)
 a34:	00022400 	sll	a0,v0,0x10
 a38:	0c000000 	jal	0 <MagicDark_Init>
 a3c:	00042403 	sra	a0,a0,0x10
 a40:	3c014396 	lui	at,0x4396
 a44:	44819000 	mtc1	at,$f18
 a48:	c62a0050 	lwc1	$f10,80(s1)
 a4c:	c7a80034 	lwc1	$f8,52(sp)
 a50:	46125102 	mul.s	$f4,$f10,$f18
 a54:	c7aa0078 	lwc1	$f10,120(sp)
 a58:	46002402 	mul.s	$f16,$f4,$f0
 a5c:	00000000 	nop
 a60:	46088182 	mul.s	$f6,$f16,$f8
 a64:	46065481 	sub.s	$f18,$f10,$f6
 a68:	e7b20078 	swc1	$f18,120(sp)
 a6c:	864907a0 	lh	t1,1952(s2)
 a70:	00095080 	sll	t2,t1,0x2
 a74:	024a5821 	addu	t3,s2,t2
 a78:	0c000000 	jal	0 <MagicDark_Init>
 a7c:	8d640790 	lw	a0,1936(t3)
 a80:	00022400 	sll	a0,v0,0x10
 a84:	0c000000 	jal	0 <MagicDark_Init>
 a88:	00042403 	sra	a0,a0,0x10
 a8c:	3c014396 	lui	at,0x4396
 a90:	44818000 	mtc1	at,$f16
 a94:	c6240050 	lwc1	$f4,80(s1)
 a98:	c7a6007c 	lwc1	$f6,124(sp)
 a9c:	46102202 	mul.s	$f8,$f4,$f16
 aa0:	00000000 	nop
 aa4:	46004282 	mul.s	$f10,$f8,$f0
 aa8:	460a3481 	sub.s	$f18,$f6,$f10
 aac:	e7b2007c 	swc1	$f18,124(sp)
 ab0:	864c07a0 	lh	t4,1952(s2)
 ab4:	000c6880 	sll	t5,t4,0x2
 ab8:	024d7021 	addu	t6,s2,t5
 abc:	0c000000 	jal	0 <MagicDark_Init>
 ac0:	8dc40790 	lw	a0,1936(t6)
 ac4:	00022400 	sll	a0,v0,0x10
 ac8:	0c000000 	jal	0 <MagicDark_Init>
 acc:	00042403 	sra	a0,a0,0x10
 ad0:	e7a00034 	swc1	$f0,52(sp)
 ad4:	864f07a0 	lh	t7,1952(s2)
 ad8:	000fc080 	sll	t8,t7,0x2
 adc:	0258c821 	addu	t9,s2,t8
 ae0:	0c000000 	jal	0 <MagicDark_Init>
 ae4:	8f240790 	lw	a0,1936(t9)
 ae8:	00022400 	sll	a0,v0,0x10
 aec:	0c000000 	jal	0 <MagicDark_Init>
 af0:	00042403 	sra	a0,a0,0x10
 af4:	3c014396 	lui	at,0x4396
 af8:	44818000 	mtc1	at,$f16
 afc:	c6240050 	lwc1	$f4,80(s1)
 b00:	c7aa0034 	lwc1	$f10,52(sp)
 b04:	3c060000 	lui	a2,0x0
 b08:	46102202 	mul.s	$f8,$f4,$f16
 b0c:	c7a40080 	lwc1	$f4,128(sp)
 b10:	24c60000 	addiu	a2,a2,0
 b14:	27a40058 	addiu	a0,sp,88
 b18:	2407026b 	li	a3,619
 b1c:	46004182 	mul.s	$f6,$f8,$f0
 b20:	00000000 	nop
 b24:	460a3482 	mul.s	$f18,$f6,$f10
 b28:	46122401 	sub.s	$f16,$f4,$f18
 b2c:	e7b00080 	swc1	$f16,128(sp)
 b30:	8e450000 	lw	a1,0(s2)
 b34:	0c000000 	jal	0 <MagicDark_Init>
 b38:	00a08025 	move	s0,a1
 b3c:	0c000000 	jal	0 <MagicDark_Init>
 b40:	8e440000 	lw	a0,0(s2)
 b44:	8e0202d0 	lw	v0,720(s0)
 b48:	3c09fa00 	lui	t1,0xfa00
 b4c:	3c0aaaff 	lui	t2,0xaaff
 b50:	24480008 	addiu	t0,v0,8
 b54:	ae0802d0 	sw	t0,720(s0)
 b58:	354affff 	ori	t2,t2,0xffff
 b5c:	35290080 	ori	t1,t1,0x80
 b60:	ac490000 	sw	t1,0(v0)
 b64:	ac4a0004 	sw	t2,4(v0)
 b68:	8e0202d0 	lw	v0,720(s0)
 b6c:	3c0d0096 	lui	t5,0x96
 b70:	35adffff 	ori	t5,t5,0xffff
 b74:	244b0008 	addiu	t3,v0,8
 b78:	ae0b02d0 	sw	t3,720(s0)
 b7c:	3c0cfb00 	lui	t4,0xfb00
 b80:	ac4c0000 	sw	t4,0(v0)
 b84:	ac4d0004 	sw	t5,4(v0)
 b88:	8fa60080 	lw	a2,128(sp)
 b8c:	c7ae007c 	lwc1	$f14,124(sp)
 b90:	c7ac0078 	lwc1	$f12,120(sp)
 b94:	0c000000 	jal	0 <MagicDark_Init>
 b98:	00003825 	move	a3,zero
 b9c:	c62c0050 	lwc1	$f12,80(s1)
 ba0:	c62e0054 	lwc1	$f14,84(s1)
 ba4:	8e260058 	lw	a2,88(s1)
 ba8:	0c000000 	jal	0 <MagicDark_Init>
 bac:	24070001 	li	a3,1
 bb0:	3c010001 	lui	at,0x1
 bb4:	34211da0 	ori	at,at,0x1da0
 bb8:	02412021 	addu	a0,s2,at
 bbc:	0c000000 	jal	0 <MagicDark_Init>
 bc0:	24050001 	li	a1,1
 bc4:	0c000000 	jal	0 <MagicDark_Init>
 bc8:	00000000 	nop
 bcc:	8e0202d0 	lw	v0,720(s0)
 bd0:	3c0fda38 	lui	t7,0xda38
 bd4:	35ef0003 	ori	t7,t7,0x3
 bd8:	244e0008 	addiu	t6,v0,8
 bdc:	ae0e02d0 	sw	t6,720(s0)
 be0:	3c050000 	lui	a1,0x0
 be4:	ac4f0000 	sw	t7,0(v0)
 be8:	8e440000 	lw	a0,0(s2)
 bec:	24a50000 	addiu	a1,a1,0
 bf0:	24060278 	li	a2,632
 bf4:	0c000000 	jal	0 <MagicDark_Init>
 bf8:	00408825 	move	s1,v0
 bfc:	ae220004 	sw	v0,4(s1)
 c00:	3c010000 	lui	at,0x0
 c04:	c4260000 	lwc1	$f6,0(at)
 c08:	c7a8006c 	lwc1	$f8,108(sp)
 c0c:	24050001 	li	a1,1
 c10:	46064302 	mul.s	$f12,$f8,$f6
 c14:	0c000000 	jal	0 <MagicDark_Init>
 c18:	00000000 	nop
 c1c:	8e0202d0 	lw	v0,720(s0)
 c20:	3c040401 	lui	a0,0x401
 c24:	24840130 	addiu	a0,a0,304
 c28:	24580008 	addiu	t8,v0,8
 c2c:	ae1802d0 	sw	t8,720(s0)
 c30:	3c19de00 	lui	t9,0xde00
 c34:	ac590000 	sw	t9,0(v0)
 c38:	ac440004 	sw	a0,4(v0)
 c3c:	0c000000 	jal	0 <MagicDark_Init>
 c40:	afa4002c 	sw	a0,44(sp)
 c44:	c7aa006c 	lwc1	$f10,108(sp)
 c48:	3c010000 	lui	at,0x0
 c4c:	c4320000 	lwc1	$f18,0(at)
 c50:	46005107 	neg.s	$f4,$f10
 c54:	24050001 	li	a1,1
 c58:	46122302 	mul.s	$f12,$f4,$f18
 c5c:	0c000000 	jal	0 <MagicDark_Init>
 c60:	00000000 	nop
 c64:	8e0202d0 	lw	v0,720(s0)
 c68:	3c09da38 	lui	t1,0xda38
 c6c:	35290003 	ori	t1,t1,0x3
 c70:	24480008 	addiu	t0,v0,8
 c74:	ae0802d0 	sw	t0,720(s0)
 c78:	3c050000 	lui	a1,0x0
 c7c:	ac490000 	sw	t1,0(v0)
 c80:	8e440000 	lw	a0,0(s2)
 c84:	24a50000 	addiu	a1,a1,0
 c88:	2406027f 	li	a2,639
 c8c:	0c000000 	jal	0 <MagicDark_Init>
 c90:	00408825 	move	s1,v0
 c94:	ae220004 	sw	v0,4(s1)
 c98:	8e0202d0 	lw	v0,720(s0)
 c9c:	3c0bde00 	lui	t3,0xde00
 ca0:	3c060000 	lui	a2,0x0
 ca4:	244a0008 	addiu	t2,v0,8
 ca8:	ae0a02d0 	sw	t2,720(s0)
 cac:	ac4b0000 	sw	t3,0(v0)
 cb0:	8fac002c 	lw	t4,44(sp)
 cb4:	24c60000 	addiu	a2,a2,0
 cb8:	27a40058 	addiu	a0,sp,88
 cbc:	ac4c0004 	sw	t4,4(v0)
 cc0:	8e450000 	lw	a1,0(s2)
 cc4:	0c000000 	jal	0 <MagicDark_Init>
 cc8:	24070283 	li	a3,643
 ccc:	8fbf0024 	lw	ra,36(sp)
 cd0:	8fb00018 	lw	s0,24(sp)
 cd4:	8fb1001c 	lw	s1,28(sp)
 cd8:	8fb20020 	lw	s2,32(sp)
 cdc:	03e00008 	jr	ra
 ce0:	27bd0088 	addiu	sp,sp,136
	...
