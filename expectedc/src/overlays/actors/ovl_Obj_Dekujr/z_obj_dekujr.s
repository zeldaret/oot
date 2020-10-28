
build/src/overlays/actors/ovl_Obj_Dekujr/z_obj_dekujr.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ObjDekujr_Init>:
   0:	3c020000 	lui	v0,0x0
   4:	24420000 	addiu	v0,v0,0
   8:	8c4e0008 	lw	t6,8(v0)
   c:	27bdffd0 	addiu	sp,sp,-48
  10:	3401fff0 	li	at,0xfff0
  14:	afb00018 	sw	s0,24(sp)
  18:	01c1082a 	slt	at,t6,at
  1c:	00808025 	move	s0,a0
  20:	afbf001c 	sw	ra,28(sp)
  24:	1020000c 	beqz	at,58 <ObjDekujr_Init+0x58>
  28:	afa50034 	sw	a1,52(sp)
  2c:	8c4f0004 	lw	t7,4(v0)
  30:	24180002 	li	t8,2
  34:	51e00006 	beqzl	t7,50 <ObjDekujr_Init+0x50>
  38:	a218019c 	sb	t8,412(s0)
  3c:	0c000000 	jal	0 <ObjDekujr_Init>
  40:	00000000 	nop
  44:	1000002d 	b	fc <ObjDekujr_Init+0xfc>
  48:	8fbf001c 	lw	ra,28(sp)
  4c:	a218019c 	sb	t8,412(s0)
  50:	10000004 	b	64 <ObjDekujr_Init+0x64>
  54:	a200019b 	sb	zero,411(s0)
  58:	24190001 	li	t9,1
  5c:	a200019c 	sb	zero,412(s0)
  60:	a219019b 	sb	t9,411(s0)
  64:	3c080000 	lui	t0,0x0
  68:	8d080000 	lw	t0,0(t0)
  6c:	8c4900a4 	lw	t1,164(v0)
  70:	01095024 	and	t2,t0,t1
  74:	55400006 	bnezl	t2,90 <ObjDekujr_Init+0x90>
  78:	44800000 	mtc1	zero,$f0
  7c:	0c000000 	jal	0 <ObjDekujr_Init>
  80:	02002025 	move	a0,s0
  84:	1000001d 	b	fc <ObjDekujr_Init+0xfc>
  88:	8fbf001c 	lw	ra,28(sp)
  8c:	44800000 	mtc1	zero,$f0
  90:	260400b4 	addiu	a0,s0,180
  94:	00003025 	move	a2,zero
  98:	44050000 	mfc1	a1,$f0
  9c:	44070000 	mfc1	a3,$f0
  a0:	0c000000 	jal	0 <ObjDekujr_Init>
  a4:	00000000 	nop
  a8:	2605014c 	addiu	a1,s0,332
  ac:	afa50024 	sw	a1,36(sp)
  b0:	0c000000 	jal	0 <ObjDekujr_Init>
  b4:	8fa40034 	lw	a0,52(sp)
  b8:	3c060000 	lui	a2,0x0
  bc:	24c60020 	addiu	a2,a2,32
  c0:	8fa50024 	lw	a1,36(sp)
  c4:	acd00000 	sw	s0,0(a2)
  c8:	0c000000 	jal	0 <ObjDekujr_Init>
  cc:	8fa40034 	lw	a0,52(sp)
  d0:	240b00ff 	li	t3,255
  d4:	a20b00ae 	sb	t3,174(s0)
  d8:	8fa40034 	lw	a0,52(sp)
  dc:	0c000000 	jal	0 <ObjDekujr_Init>
  e0:	2405000f 	li	a1,15
  e4:	3c053ecc 	lui	a1,0x3ecc
  e8:	a602010e 	sh	v0,270(s0)
  ec:	34a5cccd 	ori	a1,a1,0xcccd
  f0:	0c000000 	jal	0 <ObjDekujr_Init>
  f4:	02002025 	move	a0,s0
  f8:	8fbf001c 	lw	ra,28(sp)
  fc:	8fb00018 	lw	s0,24(sp)
 100:	27bd0030 	addiu	sp,sp,48
 104:	03e00008 	jr	ra
 108:	00000000 	nop

0000010c <ObjDekujr_Destroy>:
 10c:	afa40000 	sw	a0,0(sp)
 110:	03e00008 	jr	ra
 114:	afa50004 	sw	a1,4(sp)

00000118 <ObjDekujr_SetInitialPos>:
 118:	8c8e000c 	lw	t6,12(a0)
 11c:	448e2000 	mtc1	t6,$f4
 120:	00000000 	nop
 124:	468021a0 	cvt.s.w	$f6,$f4
 128:	e4a60000 	swc1	$f6,0(a1)
 12c:	8c8f0010 	lw	t7,16(a0)
 130:	448f4000 	mtc1	t7,$f8
 134:	00000000 	nop
 138:	468042a0 	cvt.s.w	$f10,$f8
 13c:	e4aa0004 	swc1	$f10,4(a1)
 140:	8c980014 	lw	t8,20(a0)
 144:	44988000 	mtc1	t8,$f16
 148:	00000000 	nop
 14c:	468084a0 	cvt.s.w	$f18,$f16
 150:	03e00008 	jr	ra
 154:	e4b20008 	swc1	$f18,8(a1)

00000158 <ObjDekujr_SetFinalPos>:
 158:	8c8e0018 	lw	t6,24(a0)
 15c:	448e2000 	mtc1	t6,$f4
 160:	00000000 	nop
 164:	468021a0 	cvt.s.w	$f6,$f4
 168:	e4a60000 	swc1	$f6,0(a1)
 16c:	8c8f001c 	lw	t7,28(a0)
 170:	448f4000 	mtc1	t7,$f8
 174:	00000000 	nop
 178:	468042a0 	cvt.s.w	$f10,$f8
 17c:	e4aa0004 	swc1	$f10,4(a1)
 180:	8c980020 	lw	t8,32(a0)
 184:	44988000 	mtc1	t8,$f16
 188:	00000000 	nop
 18c:	468084a0 	cvt.s.w	$f18,$f16
 190:	03e00008 	jr	ra
 194:	e4b20008 	swc1	$f18,8(a1)

00000198 <ObjDekujr_ComeUp>:
 198:	27bdffb0 	addiu	sp,sp,-80
 19c:	3c0f0000 	lui	t7,0x0
 1a0:	afbf0014 	sw	ra,20(sp)
 1a4:	25ef004c 	addiu	t7,t7,76
 1a8:	8df90000 	lw	t9,0(t7)
 1ac:	27ae0028 	addiu	t6,sp,40
 1b0:	8df80004 	lw	t8,4(t7)
 1b4:	add90000 	sw	t9,0(t6)
 1b8:	8df90008 	lw	t9,8(t7)
 1bc:	add80004 	sw	t8,4(t6)
 1c0:	00803025 	move	a2,a0
 1c4:	add90008 	sw	t9,8(t6)
 1c8:	90a81d6c 	lbu	t0,7532(a1)
 1cc:	00a03825 	move	a3,a1
 1d0:	24090002 	li	t1,2
 1d4:	55000005 	bnezl	t0,1ec <ObjDekujr_ComeUp+0x54>
 1d8:	94ea1d74 	lhu	t2,7540(a3)
 1dc:	a089019c 	sb	t1,412(a0)
 1e0:	10000055 	b	338 <ObjDekujr_ComeUp+0x1a0>
 1e4:	a080019b 	sb	zero,411(a0)
 1e8:	94ea1d74 	lhu	t2,7540(a3)
 1ec:	2401015f 	li	at,351
 1f0:	00c02025 	move	a0,a2
 1f4:	15410006 	bne	t2,at,210 <ObjDekujr_ComeUp+0x78>
 1f8:	240528bf 	li	a1,10431
 1fc:	afa60050 	sw	a2,80(sp)
 200:	0c000000 	jal	0 <ObjDekujr_Init>
 204:	afa70054 	sw	a3,84(sp)
 208:	8fa60050 	lw	a2,80(sp)
 20c:	8fa70054 	lw	a3,84(sp)
 210:	8ce41d90 	lw	a0,7568(a3)
 214:	27a50040 	addiu	a1,sp,64
 218:	50800048 	beqzl	a0,33c <ObjDekujr_ComeUp+0x1a4>
 21c:	8fbf0014 	lw	ra,20(sp)
 220:	afa4004c 	sw	a0,76(sp)
 224:	afa60050 	sw	a2,80(sp)
 228:	0c000000 	jal	0 <ObjDekujr_Init>
 22c:	afa70054 	sw	a3,84(sp)
 230:	8fa4004c 	lw	a0,76(sp)
 234:	0c000000 	jal	0 <ObjDekujr_Init>
 238:	27a50034 	addiu	a1,sp,52
 23c:	8fa60050 	lw	a2,80(sp)
 240:	8fa4004c 	lw	a0,76(sp)
 244:	8fa70054 	lw	a3,84(sp)
 248:	90cb019c 	lbu	t3,412(a2)
 24c:	27ac0040 	addiu	t4,sp,64
 250:	5560000a 	bnezl	t3,27c <ObjDekujr_ComeUp+0xe4>
 254:	94980006 	lhu	t8,6(a0)
 258:	8d8e0000 	lw	t6,0(t4)
 25c:	240f0001 	li	t7,1
 260:	acce0024 	sw	t6,36(a2)
 264:	8d8d0004 	lw	t5,4(t4)
 268:	accd0028 	sw	t5,40(a2)
 26c:	8d8e0008 	lw	t6,8(t4)
 270:	a0cf019c 	sb	t7,412(a2)
 274:	acce002c 	sw	t6,44(a2)
 278:	94980006 	lhu	t8,6(a0)
 27c:	27a90028 	addiu	t1,sp,40
 280:	a4d800b4 	sh	t8,180(a2)
 284:	94990008 	lhu	t9,8(a0)
 288:	a4d900b6 	sh	t9,182(a2)
 28c:	9488000a 	lhu	t0,10(a0)
 290:	a4c800b8 	sh	t0,184(a2)
 294:	8d2b0000 	lw	t3,0(t1)
 298:	accb005c 	sw	t3,92(a2)
 29c:	8d2a0004 	lw	t2,4(t1)
 2a0:	acca0060 	sw	t2,96(a2)
 2a4:	8d2b0008 	lw	t3,8(t1)
 2a8:	accb0064 	sw	t3,100(a2)
 2ac:	94ec1d74 	lhu	t4,7540(a3)
 2b0:	94820004 	lhu	v0,4(a0)
 2b4:	004c082a 	slt	at,v0,t4
 2b8:	54200020 	bnezl	at,33c <ObjDekujr_ComeUp+0x1a4>
 2bc:	8fbf0014 	lw	ra,20(sp)
 2c0:	948d0002 	lhu	t5,2(a0)
 2c4:	c7a60034 	lwc1	$f6,52(sp)
 2c8:	c7a80040 	lwc1	$f8,64(sp)
 2cc:	004d7023 	subu	t6,v0,t5
 2d0:	448e2000 	mtc1	t6,$f4
 2d4:	46083281 	sub.s	$f10,$f6,$f8
 2d8:	c4c2006c 	lwc1	$f2,108(a2)
 2dc:	c4cc0070 	lwc1	$f12,112(a2)
 2e0:	46802020 	cvt.s.w	$f0,$f4
 2e4:	46005403 	div.s	$f16,$f10,$f0
 2e8:	e4d0005c 	swc1	$f16,92(a2)
 2ec:	c7a40044 	lwc1	$f4,68(sp)
 2f0:	c7b20038 	lwc1	$f18,56(sp)
 2f4:	46049181 	sub.s	$f6,$f18,$f4
 2f8:	46003203 	div.s	$f8,$f6,$f0
 2fc:	e4c80060 	swc1	$f8,96(a2)
 300:	c4ca0060 	lwc1	$f10,96(a2)
 304:	46025400 	add.s	$f16,$f10,$f2
 308:	e4d00060 	swc1	$f16,96(a2)
 30c:	c4d20060 	lwc1	$f18,96(a2)
 310:	460c903c 	c.lt.s	$f18,$f12
 314:	00000000 	nop
 318:	45020003 	bc1fl	328 <ObjDekujr_ComeUp+0x190>
 31c:	c7a4003c 	lwc1	$f4,60(sp)
 320:	e4cc0060 	swc1	$f12,96(a2)
 324:	c7a4003c 	lwc1	$f4,60(sp)
 328:	c7a60048 	lwc1	$f6,72(sp)
 32c:	46062201 	sub.s	$f8,$f4,$f6
 330:	46004283 	div.s	$f10,$f8,$f0
 334:	e4ca0064 	swc1	$f10,100(a2)
 338:	8fbf0014 	lw	ra,20(sp)
 33c:	27bd0050 	addiu	sp,sp,80
 340:	03e00008 	jr	ra
 344:	00000000 	nop

00000348 <ObjDekujr_Update>:
 348:	27bdffd0 	addiu	sp,sp,-48
 34c:	afb00018 	sw	s0,24(sp)
 350:	00808025 	move	s0,a0
 354:	afbf001c 	sw	ra,28(sp)
 358:	afa50034 	sw	a1,52(sp)
 35c:	2606014c 	addiu	a2,s0,332
 360:	00c02825 	move	a1,a2
 364:	0c000000 	jal	0 <ObjDekujr_Init>
 368:	afa60024 	sw	a2,36(sp)
 36c:	8fa40034 	lw	a0,52(sp)
 370:	3c010001 	lui	at,0x1
 374:	34211e60 	ori	at,at,0x1e60
 378:	8fa60024 	lw	a2,36(sp)
 37c:	0c000000 	jal	0 <ObjDekujr_Init>
 380:	00812821 	addu	a1,a0,at
 384:	3c0e0000 	lui	t6,0x0
 388:	8dce0008 	lw	t6,8(t6)
 38c:	3401fff0 	li	at,0xfff0
 390:	02002825 	move	a1,s0
 394:	01c1082a 	slt	at,t6,at
 398:	14200007 	bnez	at,3b8 <ObjDekujr_Update+0x70>
 39c:	2406000f 	li	a2,15
 3a0:	920f019b 	lbu	t7,411(s0)
 3a4:	24180001 	li	t8,1
 3a8:	55e00004 	bnezl	t7,3bc <ObjDekujr_Update+0x74>
 3ac:	9219019b 	lbu	t9,411(s0)
 3b0:	a200019c 	sb	zero,412(s0)
 3b4:	a218019b 	sb	t8,411(s0)
 3b8:	9219019b 	lbu	t9,411(s0)
 3bc:	24010001 	li	at,1
 3c0:	8fa40034 	lw	a0,52(sp)
 3c4:	17210011 	bne	t9,at,40c <ObjDekujr_Update+0xc4>
 3c8:	00000000 	nop
 3cc:	02002025 	move	a0,s0
 3d0:	0c000000 	jal	0 <ObjDekujr_Init>
 3d4:	8fa50034 	lw	a1,52(sp)
 3d8:	c6040024 	lwc1	$f4,36(s0)
 3dc:	c606005c 	lwc1	$f6,92(s0)
 3e0:	c60a0028 	lwc1	$f10,40(s0)
 3e4:	c6100060 	lwc1	$f16,96(s0)
 3e8:	46062200 	add.s	$f8,$f4,$f6
 3ec:	c6060064 	lwc1	$f6,100(s0)
 3f0:	c604002c 	lwc1	$f4,44(s0)
 3f4:	46105480 	add.s	$f18,$f10,$f16
 3f8:	e6080024 	swc1	$f8,36(s0)
 3fc:	46062200 	add.s	$f8,$f4,$f6
 400:	e6120028 	swc1	$f18,40(s0)
 404:	10000006 	b	420 <ObjDekujr_Update+0xd8>
 408:	e608002c 	swc1	$f8,44(s0)
 40c:	0c000000 	jal	0 <ObjDekujr_Init>
 410:	260701a0 	addiu	a3,s0,416
 414:	02002025 	move	a0,s0
 418:	0c000000 	jal	0 <ObjDekujr_Init>
 41c:	3c054220 	lui	a1,0x4220
 420:	8fbf001c 	lw	ra,28(sp)
 424:	8fb00018 	lw	s0,24(sp)
 428:	27bd0030 	addiu	sp,sp,48
 42c:	03e00008 	jr	ra
 430:	00000000 	nop

00000434 <ObjDekujr_Draw>:
 434:	27bdff90 	addiu	sp,sp,-112
 438:	afb10038 	sw	s1,56(sp)
 43c:	00a08825 	move	s1,a1
 440:	afbf003c 	sw	ra,60(sp)
 444:	afb00034 	sw	s0,52(sp)
 448:	afa40070 	sw	a0,112(sp)
 44c:	8ca50000 	lw	a1,0(a1)
 450:	3c060000 	lui	a2,0x0
 454:	24c60000 	addiu	a2,a2,0
 458:	27a40058 	addiu	a0,sp,88
 45c:	24070172 	li	a3,370
 460:	0c000000 	jal	0 <ObjDekujr_Init>
 464:	00a08025 	move	s0,a1
 468:	0c000000 	jal	0 <ObjDekujr_Init>
 46c:	8e240000 	lw	a0,0(s1)
 470:	0c000000 	jal	0 <ObjDekujr_Init>
 474:	8e240000 	lw	a0,0(s1)
 478:	8e0202c0 	lw	v0,704(s0)
 47c:	3c0fda38 	lui	t7,0xda38
 480:	35ef0003 	ori	t7,t7,0x3
 484:	244e0008 	addiu	t6,v0,8
 488:	ae0e02c0 	sw	t6,704(s0)
 48c:	ac4f0000 	sw	t7,0(v0)
 490:	8e240000 	lw	a0,0(s1)
 494:	3c050000 	lui	a1,0x0
 498:	24a50014 	addiu	a1,a1,20
 49c:	2406017b 	li	a2,379
 4a0:	0c000000 	jal	0 <ObjDekujr_Init>
 4a4:	afa20054 	sw	v0,84(sp)
 4a8:	8fa30054 	lw	v1,84(sp)
 4ac:	3c090000 	lui	t1,0x0
 4b0:	25290000 	addiu	t1,t1,0
 4b4:	ac620004 	sw	v0,4(v1)
 4b8:	8e0202c0 	lw	v0,704(s0)
 4bc:	3c19de00 	lui	t9,0xde00
 4c0:	3c0bdb06 	lui	t3,0xdb06
 4c4:	24580008 	addiu	t8,v0,8
 4c8:	ae1802c0 	sw	t8,704(s0)
 4cc:	ac590000 	sw	t9,0(v0)
 4d0:	ac490004 	sw	t1,4(v0)
 4d4:	8e0202d0 	lw	v0,720(s0)
 4d8:	8e28009c 	lw	t0,156(s1)
 4dc:	356b0020 	ori	t3,t3,0x20
 4e0:	244a0008 	addiu	t2,v0,8
 4e4:	ae0a02d0 	sw	t2,720(s0)
 4e8:	ac4b0000 	sw	t3,0(v0)
 4ec:	8e240000 	lw	a0,0(s1)
 4f0:	24180020 	li	t8,32
 4f4:	240c0020 	li	t4,32
 4f8:	240d0020 	li	t5,32
 4fc:	240e0001 	li	t6,1
 500:	240f0020 	li	t7,32
 504:	3106007f 	andi	a2,t0,0x7f
 508:	afa6001c 	sw	a2,28(sp)
 50c:	afaf0024 	sw	t7,36(sp)
 510:	afae0018 	sw	t6,24(sp)
 514:	afad0014 	sw	t5,20(sp)
 518:	afac0010 	sw	t4,16(sp)
 51c:	afb80028 	sw	t8,40(sp)
 520:	afa00020 	sw	zero,32(sp)
 524:	00002825 	move	a1,zero
 528:	00003825 	move	a3,zero
 52c:	0c000000 	jal	0 <ObjDekujr_Init>
 530:	afa2004c 	sw	v0,76(sp)
 534:	8fa3004c 	lw	v1,76(sp)
 538:	3c09da38 	lui	t1,0xda38
 53c:	35290003 	ori	t1,t1,0x3
 540:	ac620004 	sw	v0,4(v1)
 544:	8e0202d0 	lw	v0,720(s0)
 548:	3c050000 	lui	a1,0x0
 54c:	24a50028 	addiu	a1,a1,40
 550:	24590008 	addiu	t9,v0,8
 554:	ae1902d0 	sw	t9,720(s0)
 558:	ac490000 	sw	t1,0(v0)
 55c:	8e240000 	lw	a0,0(s1)
 560:	2406018f 	li	a2,399
 564:	0c000000 	jal	0 <ObjDekujr_Init>
 568:	afa20048 	sw	v0,72(sp)
 56c:	8fa30048 	lw	v1,72(sp)
 570:	3c0c0000 	lui	t4,0x0
 574:	258c0000 	addiu	t4,t4,0
 578:	ac620004 	sw	v0,4(v1)
 57c:	8e0202d0 	lw	v0,720(s0)
 580:	3c0bde00 	lui	t3,0xde00
 584:	3c060000 	lui	a2,0x0
 588:	244a0008 	addiu	t2,v0,8
 58c:	ae0a02d0 	sw	t2,720(s0)
 590:	ac4c0004 	sw	t4,4(v0)
 594:	ac4b0000 	sw	t3,0(v0)
 598:	8e250000 	lw	a1,0(s1)
 59c:	24c6003c 	addiu	a2,a2,60
 5a0:	27a40058 	addiu	a0,sp,88
 5a4:	0c000000 	jal	0 <ObjDekujr_Init>
 5a8:	24070199 	li	a3,409
 5ac:	8fbf003c 	lw	ra,60(sp)
 5b0:	8fb00034 	lw	s0,52(sp)
 5b4:	8fb10038 	lw	s1,56(sp)
 5b8:	03e00008 	jr	ra
 5bc:	27bd0070 	addiu	sp,sp,112
