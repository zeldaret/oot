
build/src/overlays/actors/ovl_En_Bdfire/z_en_bdfire.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809BC030>:
   0:	03e00008 	jr	ra
   4:	ac85014c 	sw	a1,332(a0)

00000008 <func_809BC038>:
   8:	03e00008 	jr	ra
   c:	ac850150 	sw	a1,336(a0)

00000010 <EnBdfire_Init>:
  10:	27bdffc0 	addiu	sp,sp,-64
  14:	afa50044 	sw	a1,68(sp)
  18:	afbf002c 	sw	ra,44(sp)
  1c:	afb00028 	sw	s0,40(sp)
  20:	3c053f19 	lui	a1,0x3f19
  24:	00808025 	move	s0,a0
  28:	0c000000 	jal	0 <func_809BC030>
  2c:	34a5999a 	ori	a1,a1,0x999a
  30:	3c050000 	lui	a1,0x0
  34:	24a50000 	addiu	a1,a1,0
  38:	0c000000 	jal	0 <func_809BC030>
  3c:	02002025 	move	a0,s0
  40:	860e001c 	lh	t6,28(s0)
  44:	02002025 	move	a0,s0
  48:	3c050000 	lui	a1,0x0
  4c:	05c1002a 	bgez	t6,f8 <EnBdfire_Init+0xe8>
  50:	00000000 	nop
  54:	3c050000 	lui	a1,0x0
  58:	24a50000 	addiu	a1,a1,0
  5c:	0c000000 	jal	0 <func_809BC030>
  60:	02002025 	move	a0,s0
  64:	3c010000 	lui	at,0x0
  68:	c4240000 	lwc1	$f4,0(at)
  6c:	c6060024 	lwc1	$f6,36(s0)
  70:	c60a0028 	lwc1	$f10,40(s0)
  74:	c612002c 	lwc1	$f18,44(s0)
  78:	e6040050 	swc1	$f4,80(s0)
  7c:	4600320d 	trunc.w.s	$f8,$f6
  80:	240f005a 	li	t7,90
  84:	a60f0154 	sh	t7,340(s0)
  88:	4600540d 	trunc.w.s	$f16,$f10
  8c:	44054000 	mfc1	a1,$f8
  90:	260401d4 	addiu	a0,s0,468
  94:	4600910d 	trunc.w.s	$f4,$f18
  98:	44068000 	mfc1	a2,$f16
  9c:	240900ff 	li	t1,255
  a0:	240a00ff 	li	t2,255
  a4:	44072000 	mfc1	a3,$f4
  a8:	240b00ff 	li	t3,255
  ac:	240c012c 	li	t4,300
  b0:	00052c00 	sll	a1,a1,0x10
  b4:	00063400 	sll	a2,a2,0x10
  b8:	00073c00 	sll	a3,a3,0x10
  bc:	00073c03 	sra	a3,a3,0x10
  c0:	00063403 	sra	a2,a2,0x10
  c4:	00052c03 	sra	a1,a1,0x10
  c8:	afac001c 	sw	t4,28(sp)
  cc:	afab0018 	sw	t3,24(sp)
  d0:	afaa0014 	sw	t2,20(sp)
  d4:	afa90010 	sw	t1,16(sp)
  d8:	0c000000 	jal	0 <func_809BC030>
  dc:	afa40034 	sw	a0,52(sp)
  e0:	8fa40044 	lw	a0,68(sp)
  e4:	8fa60034 	lw	a2,52(sp)
  e8:	0c000000 	jal	0 <func_809BC030>
  ec:	248507a8 	addiu	a1,a0,1960
  f0:	1000004d 	b	228 <EnBdfire_Init+0x218>
  f4:	ae0201d0 	sw	v0,464(s0)
  f8:	0c000000 	jal	0 <func_809BC030>
  fc:	24a50000 	addiu	a1,a1,0
 100:	44800000 	mtc1	zero,$f0
 104:	3c060000 	lui	a2,0x0
 108:	24c60000 	addiu	a2,a2,0
 10c:	44050000 	mfc1	a1,$f0
 110:	44070000 	mfc1	a3,$f0
 114:	0c000000 	jal	0 <func_809BC030>
 118:	260400b4 	addiu	a0,s0,180
 11c:	860d001c 	lh	t5,28(s0)
 120:	3c0141f0 	lui	at,0x41f0
 124:	44813000 	mtc1	at,$f6
 128:	448d4000 	mtc1	t5,$f8
 12c:	3c010000 	lui	at,0x0
 130:	e6060068 	swc1	$f6,104(s0)
 134:	46804020 	cvt.s.w	$f0,$f8
 138:	c42a0000 	lwc1	$f10,0(at)
 13c:	24180019 	li	t8,25
 140:	3c010000 	lui	at,0x0
 144:	460a0402 	mul.s	$f16,$f0,$f10
 148:	4600848d 	trunc.w.s	$f18,$f16
 14c:	440f9000 	mfc1	t7,$f18
 150:	00000000 	nop
 154:	030fc823 	subu	t9,t8,t7
 158:	a6190154 	sh	t9,340(s0)
 15c:	86080154 	lh	t0,340(s0)
 160:	05010006 	bgez	t0,17c <EnBdfire_Init+0x16c>
 164:	00000000 	nop
 168:	8609001c 	lh	t1,28(s0)
 16c:	a6000154 	sh	zero,340(s0)
 170:	44892000 	mtc1	t1,$f4
 174:	00000000 	nop
 178:	46802020 	cvt.s.w	$f0,$f4
 17c:	c42c0000 	lwc1	$f12,0(at)
 180:	3c013e80 	lui	at,0x3e80
 184:	44813000 	mtc1	at,$f6
 188:	3c010000 	lui	at,0x0
 18c:	c42a0000 	lwc1	$f10,0(at)
 190:	46060202 	mul.s	$f8,$f0,$f6
 194:	3c010000 	lui	at,0x0
 198:	c4320000 	lwc1	$f18,0(at)
 19c:	3c0141a0 	lui	at,0x41a0
 1a0:	460a4402 	mul.s	$f16,$f8,$f10
 1a4:	46109081 	sub.s	$f2,$f18,$f16
 1a8:	460c103c 	c.lt.s	$f2,$f12
 1ac:	e6020188 	swc1	$f2,392(s0)
 1b0:	45020007 	bc1fl	1d0 <EnBdfire_Init+0x1c0>
 1b4:	44816000 	mtc1	at,$f12
 1b8:	860a001c 	lh	t2,28(s0)
 1bc:	e60c0188 	swc1	$f12,392(s0)
 1c0:	448a2000 	mtc1	t2,$f4
 1c4:	00000000 	nop
 1c8:	46802020 	cvt.s.w	$f0,$f4
 1cc:	44816000 	mtc1	at,$f12
 1d0:	3c01437f 	lui	at,0x437f
 1d4:	44813000 	mtc1	at,$f6
 1d8:	3c014120 	lui	at,0x4120
 1dc:	44814000 	mtc1	at,$f8
 1e0:	00000000 	nop
 1e4:	46080282 	mul.s	$f10,$f0,$f8
 1e8:	460a3081 	sub.s	$f2,$f6,$f10
 1ec:	460c103c 	c.lt.s	$f2,$f12
 1f0:	e602018c 	swc1	$f2,396(s0)
 1f4:	45000002 	bc1f	200 <EnBdfire_Init+0x1f0>
 1f8:	00000000 	nop
 1fc:	e60c018c 	swc1	$f12,396(s0)
 200:	0c000000 	jal	0 <func_809BC030>
 204:	00000000 	nop
 208:	3c014100 	lui	at,0x4100
 20c:	44819000 	mtc1	at,$f18
 210:	00000000 	nop
 214:	46120402 	mul.s	$f16,$f0,$f18
 218:	4600810d 	trunc.w.s	$f4,$f16
 21c:	440c2000 	mfc1	t4,$f4
 220:	00000000 	nop
 224:	a60c0156 	sh	t4,342(s0)
 228:	8fbf002c 	lw	ra,44(sp)
 22c:	8fb00028 	lw	s0,40(sp)
 230:	27bd0040 	addiu	sp,sp,64
 234:	03e00008 	jr	ra
 238:	00000000 	nop

0000023c <EnBdfire_Destroy>:
 23c:	27bdffe8 	addiu	sp,sp,-24
 240:	afbf0014 	sw	ra,20(sp)
 244:	afa5001c 	sw	a1,28(sp)
 248:	848e001c 	lh	t6,28(a0)
 24c:	00803825 	move	a3,a0
 250:	00a02025 	move	a0,a1
 254:	05c10003 	bgez	t6,264 <EnBdfire_Destroy+0x28>
 258:	24a507a8 	addiu	a1,a1,1960
 25c:	0c000000 	jal	0 <func_809BC030>
 260:	8ce601d0 	lw	a2,464(a3)
 264:	8fbf0014 	lw	ra,20(sp)
 268:	27bd0018 	addiu	sp,sp,24
 26c:	03e00008 	jr	ra
 270:	00000000 	nop

00000274 <func_809BC2A4>:
 274:	27bdffb8 	addiu	sp,sp,-72
 278:	afbf002c 	sw	ra,44(sp)
 27c:	afb00028 	sw	s0,40(sp)
 280:	f7b40020 	sdc1	$f20,32(sp)
 284:	afa5004c 	sw	a1,76(sp)
 288:	8c820118 	lw	v0,280(a0)
 28c:	00808025 	move	s0,a0
 290:	24840050 	addiu	a0,a0,80
 294:	c44403f8 	lwc1	$f4,1016(v0)
 298:	3c063f80 	lui	a2,0x3f80
 29c:	e484ffd4 	swc1	$f4,-44(a0)
 2a0:	c44603fc 	lwc1	$f6,1020(v0)
 2a4:	e486ffd8 	swc1	$f6,-40(a0)
 2a8:	c4480400 	lwc1	$f8,1024(v0)
 2ac:	e488ffdc 	swc1	$f8,-36(a0)
 2b0:	904e01e2 	lbu	t6,482(v0)
 2b4:	55c00016 	bnezl	t6,310 <func_809BC2A4+0x9c>
 2b8:	86020154 	lh	v0,340(s0)
 2bc:	4480a000 	mtc1	zero,$f20
 2c0:	3c073f19 	lui	a3,0x3f19
 2c4:	34e7999a 	ori	a3,a3,0x999a
 2c8:	4405a000 	mfc1	a1,$f20
 2cc:	0c000000 	jal	0 <func_809BC030>
 2d0:	e7b40010 	swc1	$f20,16(sp)
 2d4:	4405a000 	mfc1	a1,$f20
 2d8:	2604018c 	addiu	a0,s0,396
 2dc:	3c063f80 	lui	a2,0x3f80
 2e0:	3c0741a0 	lui	a3,0x41a0
 2e4:	0c000000 	jal	0 <func_809BC030>
 2e8:	e7b40010 	swc1	$f20,16(sp)
 2ec:	46140032 	c.eq.s	$f0,$f20
 2f0:	00000000 	nop
 2f4:	45020098 	bc1fl	558 <func_809BC2A4+0x2e4>
 2f8:	8fbf002c 	lw	ra,44(sp)
 2fc:	0c000000 	jal	0 <func_809BC030>
 300:	02002025 	move	a0,s0
 304:	10000094 	b	558 <func_809BC2A4+0x2e4>
 308:	8fbf002c 	lw	ra,44(sp)
 30c:	86020154 	lh	v0,340(s0)
 310:	2604018c 	addiu	a0,s0,396
 314:	3c054300 	lui	a1,0x4300
 318:	28410046 	slti	at,v0,70
 31c:	10200014 	beqz	at,370 <func_809BC2A4+0xfc>
 320:	3c063dcc 	lui	a2,0x3dcc
 324:	4480a000 	mtc1	zero,$f20
 328:	34c6cccd 	ori	a2,a2,0xcccd
 32c:	3c073fc0 	lui	a3,0x3fc0
 330:	0c000000 	jal	0 <func_809BC030>
 334:	e7b40010 	swc1	$f20,16(sp)
 338:	3c074074 	lui	a3,0x4074
 33c:	34e7cccc 	ori	a3,a3,0xcccc
 340:	26040190 	addiu	a0,s0,400
 344:	3c05437f 	lui	a1,0x437f
 348:	3c063f80 	lui	a2,0x3f80
 34c:	0c000000 	jal	0 <func_809BC030>
 350:	e7b40010 	swc1	$f20,16(sp)
 354:	26040194 	addiu	a0,s0,404
 358:	3c0542c8 	lui	a1,0x42c8
 35c:	3c063f80 	lui	a2,0x3f80
 360:	3c073fc0 	lui	a3,0x3fc0
 364:	0c000000 	jal	0 <func_809BC030>
 368:	e7b40010 	swc1	$f20,16(sp)
 36c:	86020154 	lh	v0,340(s0)
 370:	4480a000 	mtc1	zero,$f20
 374:	14400003 	bnez	v0,384 <func_809BC2A4+0x110>
 378:	244fffff 	addiu	t7,v0,-1
 37c:	10000003 	b	38c <func_809BC2A4+0x118>
 380:	00001825 	move	v1,zero
 384:	a60f0154 	sh	t7,340(s0)
 388:	86030154 	lh	v1,340(s0)
 38c:	14600025 	bnez	v1,424 <func_809BC2A4+0x1b0>
 390:	26040050 	addiu	a0,s0,80
 394:	4405a000 	mfc1	a1,$f20
 398:	3c073e99 	lui	a3,0x3e99
 39c:	2618018c 	addiu	t8,s0,396
 3a0:	26190190 	addiu	t9,s0,400
 3a4:	26080194 	addiu	t0,s0,404
 3a8:	afa80034 	sw	t0,52(sp)
 3ac:	afb90038 	sw	t9,56(sp)
 3b0:	afb8003c 	sw	t8,60(sp)
 3b4:	34e7999a 	ori	a3,a3,0x999a
 3b8:	3c063f80 	lui	a2,0x3f80
 3bc:	0c000000 	jal	0 <func_809BC030>
 3c0:	e7b40010 	swc1	$f20,16(sp)
 3c4:	4405a000 	mfc1	a1,$f20
 3c8:	8fa40038 	lw	a0,56(sp)
 3cc:	3c063f80 	lui	a2,0x3f80
 3d0:	3c0741cc 	lui	a3,0x41cc
 3d4:	0c000000 	jal	0 <func_809BC030>
 3d8:	e7b40010 	swc1	$f20,16(sp)
 3dc:	4405a000 	mfc1	a1,$f20
 3e0:	8fa40034 	lw	a0,52(sp)
 3e4:	3c063f80 	lui	a2,0x3f80
 3e8:	3c074120 	lui	a3,0x4120
 3ec:	0c000000 	jal	0 <func_809BC030>
 3f0:	e7b40010 	swc1	$f20,16(sp)
 3f4:	4405a000 	mfc1	a1,$f20
 3f8:	8fa4003c 	lw	a0,60(sp)
 3fc:	3c063f80 	lui	a2,0x3f80
 400:	3c074120 	lui	a3,0x4120
 404:	0c000000 	jal	0 <func_809BC030>
 408:	e7b40010 	swc1	$f20,16(sp)
 40c:	46140032 	c.eq.s	$f0,$f20
 410:	00000000 	nop
 414:	45020004 	bc1fl	428 <func_809BC2A4+0x1b4>
 418:	02002025 	move	a0,s0
 41c:	0c000000 	jal	0 <func_809BC030>
 420:	02002025 	move	a0,s0
 424:	02002025 	move	a0,s0
 428:	0c000000 	jal	0 <func_809BC030>
 42c:	8e050050 	lw	a1,80(s0)
 430:	4449f800 	cfc1	t1,$31
 434:	24050001 	li	a1,1
 438:	44c5f800 	ctc1	a1,$31
 43c:	c60a0190 	lwc1	$f10,400(s0)
 440:	260401d4 	addiu	a0,s0,468
 444:	00003825 	move	a3,zero
 448:	46005424 	cvt.w.s	$f16,$f10
 44c:	240b012c 	li	t3,300
 450:	3c014f00 	lui	at,0x4f00
 454:	4445f800 	cfc1	a1,$31
 458:	00000000 	nop
 45c:	30a50078 	andi	a1,a1,0x78
 460:	50a00013 	beqzl	a1,4b0 <func_809BC2A4+0x23c>
 464:	44058000 	mfc1	a1,$f16
 468:	44818000 	mtc1	at,$f16
 46c:	24050001 	li	a1,1
 470:	46105401 	sub.s	$f16,$f10,$f16
 474:	44c5f800 	ctc1	a1,$31
 478:	00000000 	nop
 47c:	46008424 	cvt.w.s	$f16,$f16
 480:	4445f800 	cfc1	a1,$31
 484:	00000000 	nop
 488:	30a50078 	andi	a1,a1,0x78
 48c:	14a00005 	bnez	a1,4a4 <func_809BC2A4+0x230>
 490:	00000000 	nop
 494:	44058000 	mfc1	a1,$f16
 498:	3c018000 	lui	at,0x8000
 49c:	10000007 	b	4bc <func_809BC2A4+0x248>
 4a0:	00a12825 	or	a1,a1,at
 4a4:	10000005 	b	4bc <func_809BC2A4+0x248>
 4a8:	2405ffff 	li	a1,-1
 4ac:	44058000 	mfc1	a1,$f16
 4b0:	00000000 	nop
 4b4:	04a0fffb 	bltz	a1,4a4 <func_809BC2A4+0x230>
 4b8:	00000000 	nop
 4bc:	44c9f800 	ctc1	t1,$31
 4c0:	24060001 	li	a2,1
 4c4:	c6120194 	lwc1	$f18,404(s0)
 4c8:	30a500ff 	andi	a1,a1,0xff
 4cc:	444af800 	cfc1	t2,$31
 4d0:	44c6f800 	ctc1	a2,$31
 4d4:	3c014f00 	lui	at,0x4f00
 4d8:	46009124 	cvt.w.s	$f4,$f18
 4dc:	4446f800 	cfc1	a2,$31
 4e0:	00000000 	nop
 4e4:	30c60078 	andi	a2,a2,0x78
 4e8:	50c00013 	beqzl	a2,538 <func_809BC2A4+0x2c4>
 4ec:	44062000 	mfc1	a2,$f4
 4f0:	44812000 	mtc1	at,$f4
 4f4:	24060001 	li	a2,1
 4f8:	46049101 	sub.s	$f4,$f18,$f4
 4fc:	44c6f800 	ctc1	a2,$31
 500:	00000000 	nop
 504:	46002124 	cvt.w.s	$f4,$f4
 508:	4446f800 	cfc1	a2,$31
 50c:	00000000 	nop
 510:	30c60078 	andi	a2,a2,0x78
 514:	14c00005 	bnez	a2,52c <func_809BC2A4+0x2b8>
 518:	00000000 	nop
 51c:	44062000 	mfc1	a2,$f4
 520:	3c018000 	lui	at,0x8000
 524:	10000007 	b	544 <func_809BC2A4+0x2d0>
 528:	00c13025 	or	a2,a2,at
 52c:	10000005 	b	544 <func_809BC2A4+0x2d0>
 530:	2406ffff 	li	a2,-1
 534:	44062000 	mfc1	a2,$f4
 538:	00000000 	nop
 53c:	04c0fffb 	bltz	a2,52c <func_809BC2A4+0x2b8>
 540:	00000000 	nop
 544:	44caf800 	ctc1	t2,$31
 548:	30c600ff 	andi	a2,a2,0xff
 54c:	0c000000 	jal	0 <func_809BC030>
 550:	afab0010 	sw	t3,16(sp)
 554:	8fbf002c 	lw	ra,44(sp)
 558:	d7b40020 	ldc1	$f20,32(sp)
 55c:	8fb00028 	lw	s0,40(sp)
 560:	03e00008 	jr	ra
 564:	27bd0048 	addiu	sp,sp,72

00000568 <func_809BC598>:
 568:	27bdffc0 	addiu	sp,sp,-64
 56c:	afbf0024 	sw	ra,36(sp)
 570:	afb10020 	sw	s1,32(sp)
 574:	afb0001c 	sw	s0,28(sp)
 578:	afa50044 	sw	a1,68(sp)
 57c:	8c820118 	lw	v0,280(a0)
 580:	8498001c 	lh	t8,28(a0)
 584:	8cb11c44 	lw	s1,7236(a1)
 588:	844f01a2 	lh	t7,418(v0)
 58c:	00808025 	move	s0,a0
 590:	00001825 	move	v1,zero
 594:	1700000d 	bnez	t8,5cc <func_809BC598+0x64>
 598:	a48f0158 	sh	t7,344(a0)
 59c:	3c070000 	lui	a3,0x0
 5a0:	3c190000 	lui	t9,0x0
 5a4:	24e70000 	addiu	a3,a3,0
 5a8:	27390000 	addiu	t9,t9,0
 5ac:	afb90014 	sw	t9,20(sp)
 5b0:	afa70010 	sw	a3,16(sp)
 5b4:	24043009 	li	a0,12297
 5b8:	260500e4 	addiu	a1,s0,228
 5bc:	24060004 	li	a2,4
 5c0:	0c000000 	jal	0 <func_809BC030>
 5c4:	a7a0003e 	sh	zero,62(sp)
 5c8:	87a3003e 	lh	v1,62(sp)
 5cc:	44802000 	mtc1	zero,$f4
 5d0:	8e050188 	lw	a1,392(s0)
 5d4:	3c063e99 	lui	a2,0x3e99
 5d8:	34c6999a 	ori	a2,a2,0x999a
 5dc:	a7a3003e 	sh	v1,62(sp)
 5e0:	26040050 	addiu	a0,s0,80
 5e4:	3c073f00 	lui	a3,0x3f00
 5e8:	0c000000 	jal	0 <func_809BC030>
 5ec:	e7a40010 	swc1	$f4,16(sp)
 5f0:	02002025 	move	a0,s0
 5f4:	0c000000 	jal	0 <func_809BC030>
 5f8:	8e050050 	lw	a1,80(s0)
 5fc:	3c010000 	lui	at,0x0
 600:	c4220000 	lwc1	$f2,0(at)
 604:	c6000024 	lwc1	$f0,36(s0)
 608:	87a3003e 	lh	v1,62(sp)
 60c:	3c01c120 	lui	at,0xc120
 610:	4602003c 	c.lt.s	$f0,$f2
 614:	00000000 	nop
 618:	4502000c 	bc1fl	64c <func_809BC598+0xe4>
 61c:	3c01c3c3 	lui	at,0xc3c3
 620:	c606005c 	lwc1	$f6,92(s0)
 624:	44814000 	mtc1	at,$f8
 628:	00000000 	nop
 62c:	4608303c 	c.lt.s	$f6,$f8
 630:	00000000 	nop
 634:	45020005 	bc1fl	64c <func_809BC598+0xe4>
 638:	3c01c3c3 	lui	at,0xc3c3
 63c:	e6020024 	swc1	$f2,36(s0)
 640:	c6000024 	lwc1	$f0,36(s0)
 644:	24030001 	li	v1,1
 648:	3c01c3c3 	lui	at,0xc3c3
 64c:	44811000 	mtc1	at,$f2
 650:	3c014120 	lui	at,0x4120
 654:	4600103c 	c.lt.s	$f2,$f0
 658:	00000000 	nop
 65c:	45000009 	bc1f	684 <func_809BC598+0x11c>
 660:	00000000 	nop
 664:	44816000 	mtc1	at,$f12
 668:	c60a005c 	lwc1	$f10,92(s0)
 66c:	460a603c 	c.lt.s	$f12,$f10
 670:	00000000 	nop
 674:	45000003 	bc1f	684 <func_809BC598+0x11c>
 678:	00000000 	nop
 67c:	e6020024 	swc1	$f2,36(s0)
 680:	24030001 	li	v1,1
 684:	3c010000 	lui	at,0x0
 688:	c4220000 	lwc1	$f2,0(at)
 68c:	c600002c 	lwc1	$f0,44(s0)
 690:	3c014120 	lui	at,0x4120
 694:	44816000 	mtc1	at,$f12
 698:	4600103c 	c.lt.s	$f2,$f0
 69c:	3c010000 	lui	at,0x0
 6a0:	45000009 	bc1f	6c8 <func_809BC598+0x160>
 6a4:	00000000 	nop
 6a8:	c6100064 	lwc1	$f16,100(s0)
 6ac:	4610603c 	c.lt.s	$f12,$f16
 6b0:	00000000 	nop
 6b4:	45000004 	bc1f	6c8 <func_809BC598+0x160>
 6b8:	00000000 	nop
 6bc:	e602002c 	swc1	$f2,44(s0)
 6c0:	c600002c 	lwc1	$f0,44(s0)
 6c4:	24030001 	li	v1,1
 6c8:	c4220000 	lwc1	$f2,0(at)
 6cc:	3c01c120 	lui	at,0xc120
 6d0:	2604018c 	addiu	a0,s0,396
 6d4:	4602003c 	c.lt.s	$f0,$f2
 6d8:	00000000 	nop
 6dc:	4500000a 	bc1f	708 <func_809BC598+0x1a0>
 6e0:	00000000 	nop
 6e4:	c6120064 	lwc1	$f18,100(s0)
 6e8:	44812000 	mtc1	at,$f4
 6ec:	00000000 	nop
 6f0:	4604903c 	c.lt.s	$f18,$f4
 6f4:	00000000 	nop
 6f8:	45000003 	bc1f	708 <func_809BC598+0x1a0>
 6fc:	00000000 	nop
 700:	e602002c 	swc1	$f2,44(s0)
 704:	24030001 	li	v1,1
 708:	5060000c 	beqzl	v1,73c <func_809BC598+0x1d4>
 70c:	86020154 	lh	v0,340(s0)
 710:	86080158 	lh	t0,344(s0)
 714:	55000006 	bnezl	t0,730 <func_809BC598+0x1c8>
 718:	860b0032 	lh	t3,50(s0)
 71c:	86090032 	lh	t1,50(s0)
 720:	252a4000 	addiu	t2,t1,16384
 724:	10000004 	b	738 <func_809BC598+0x1d0>
 728:	a60a0032 	sh	t2,50(s0)
 72c:	860b0032 	lh	t3,50(s0)
 730:	256cc000 	addiu	t4,t3,-16384
 734:	a60c0032 	sh	t4,50(s0)
 738:	86020154 	lh	v0,340(s0)
 73c:	14400003 	bnez	v0,74c <func_809BC598+0x1e4>
 740:	244dffff 	addiu	t5,v0,-1
 744:	10000003 	b	754 <func_809BC598+0x1ec>
 748:	00001825 	move	v1,zero
 74c:	a60d0154 	sh	t5,340(s0)
 750:	86030154 	lh	v1,340(s0)
 754:	54600013 	bnezl	v1,7a4 <func_809BC598+0x23c>
 758:	922e0a60 	lbu	t6,2656(s1)
 75c:	44800000 	mtc1	zero,$f0
 760:	44076000 	mfc1	a3,$f12
 764:	3c063f80 	lui	a2,0x3f80
 768:	44050000 	mfc1	a1,$f0
 76c:	0c000000 	jal	0 <func_809BC030>
 770:	e7a00010 	swc1	$f0,16(sp)
 774:	3c014120 	lui	at,0x4120
 778:	44814000 	mtc1	at,$f8
 77c:	c606018c 	lwc1	$f6,396(s0)
 780:	4608303c 	c.lt.s	$f6,$f8
 784:	00000000 	nop
 788:	45020030 	bc1fl	84c <func_809BC598+0x2e4>
 78c:	8fbf0024 	lw	ra,36(sp)
 790:	0c000000 	jal	0 <func_809BC030>
 794:	02002025 	move	a0,s0
 798:	1000002c 	b	84c <func_809BC598+0x2e4>
 79c:	8fbf0024 	lw	ra,36(sp)
 7a0:	922e0a60 	lbu	t6,2656(s1)
 7a4:	3c014302 	lui	at,0x4302
 7a8:	55c00028 	bnezl	t6,84c <func_809BC598+0x2e4>
 7ac:	8fbf0024 	lw	ra,36(sp)
 7b0:	c60a0050 	lwc1	$f10,80(s0)
 7b4:	44818000 	mtc1	at,$f16
 7b8:	3c010000 	lui	at,0x0
 7bc:	c4240000 	lwc1	$f4,0(at)
 7c0:	46105482 	mul.s	$f18,$f10,$f16
 7c4:	c606008c 	lwc1	$f6,140(s0)
 7c8:	00001825 	move	v1,zero
 7cc:	46049003 	div.s	$f0,$f18,$f4
 7d0:	46000202 	mul.s	$f8,$f0,$f0
 7d4:	4608303c 	c.lt.s	$f6,$f8
 7d8:	00000000 	nop
 7dc:	4500001a 	bc1f	848 <func_809BC598+0x2e0>
 7e0:	00002025 	move	a0,zero
 7e4:	240500c8 	li	a1,200
 7e8:	0c000000 	jal	0 <func_809BC030>
 7ec:	a7a3002e 	sh	v1,46(sp)
 7f0:	87a3002e 	lh	v1,46(sp)
 7f4:	02237821 	addu	t7,s1,v1
 7f8:	24630001 	addiu	v1,v1,1
 7fc:	00031c00 	sll	v1,v1,0x10
 800:	00031c03 	sra	v1,v1,0x10
 804:	28610012 	slti	at,v1,18
 808:	1420fff5 	bnez	at,7e0 <func_809BC598+0x278>
 80c:	a1e20a61 	sb	v0,2657(t7)
 810:	24180001 	li	t8,1
 814:	a2380a60 	sb	t8,2656(s1)
 818:	44805000 	mtc1	zero,$f10
 81c:	86070032 	lh	a3,50(s0)
 820:	24190008 	li	t9,8
 824:	afb90014 	sw	t9,20(sp)
 828:	8fa40044 	lw	a0,68(sp)
 82c:	02002825 	move	a1,s0
 830:	3c0641a0 	lui	a2,0x41a0
 834:	0c000000 	jal	0 <func_809BC030>
 838:	e7aa0010 	swc1	$f10,16(sp)
 83c:	3c040000 	lui	a0,0x0
 840:	0c000000 	jal	0 <func_809BC030>
 844:	24840000 	addiu	a0,a0,0
 848:	8fbf0024 	lw	ra,36(sp)
 84c:	8fb0001c 	lw	s0,28(sp)
 850:	8fb10020 	lw	s1,32(sp)
 854:	03e00008 	jr	ra
 858:	27bd0040 	addiu	sp,sp,64

0000085c <EnBdfire_Update>:
 85c:	27bdffe8 	addiu	sp,sp,-24
 860:	afbf0014 	sw	ra,20(sp)
 864:	848e0156 	lh	t6,342(a0)
 868:	25cf0001 	addiu	t7,t6,1
 86c:	a48f0156 	sh	t7,342(a0)
 870:	afa40018 	sw	a0,24(sp)
 874:	8c99014c 	lw	t9,332(a0)
 878:	0320f809 	jalr	t9
 87c:	00000000 	nop
 880:	0c000000 	jal	0 <func_809BC030>
 884:	8fa40018 	lw	a0,24(sp)
 888:	8fbf0014 	lw	ra,20(sp)
 88c:	27bd0018 	addiu	sp,sp,24
 890:	03e00008 	jr	ra
 894:	00000000 	nop

00000898 <func_809BC8C8>:
 898:	27bdffa0 	addiu	sp,sp,-96
 89c:	afbf001c 	sw	ra,28(sp)
 8a0:	afb00018 	sw	s0,24(sp)
 8a4:	afa40060 	sw	a0,96(sp)
 8a8:	afa50064 	sw	a1,100(sp)
 8ac:	8ca50000 	lw	a1,0(a1)
 8b0:	3c060000 	lui	a2,0x0
 8b4:	24c60000 	addiu	a2,a2,0
 8b8:	27a40044 	addiu	a0,sp,68
 8bc:	24070264 	li	a3,612
 8c0:	0c000000 	jal	0 <func_809BC030>
 8c4:	00a08025 	move	s0,a1
 8c8:	8faf0060 	lw	t7,96(sp)
 8cc:	8fa40064 	lw	a0,100(sp)
 8d0:	3c010001 	lui	at,0x1
 8d4:	85f80156 	lh	t8,342(t7)
 8d8:	34211da0 	ori	at,at,0x1da0
 8dc:	00812021 	addu	a0,a0,at
 8e0:	33190007 	andi	t9,t8,0x7
 8e4:	0c000000 	jal	0 <func_809BC030>
 8e8:	a7b9005e 	sh	t9,94(sp)
 8ec:	8fa80064 	lw	t0,100(sp)
 8f0:	0c000000 	jal	0 <func_809BC030>
 8f4:	8d040000 	lw	a0,0(t0)
 8f8:	0c000000 	jal	0 <func_809BC030>
 8fc:	8e0402d0 	lw	a0,720(s0)
 900:	ae0202d0 	sw	v0,720(s0)
 904:	24490008 	addiu	t1,v0,8
 908:	ae0902d0 	sw	t1,720(s0)
 90c:	3c0afc30 	lui	t2,0xfc30
 910:	3c0b5566 	lui	t3,0x5566
 914:	356bdb6d 	ori	t3,t3,0xdb6d
 918:	354ab261 	ori	t2,t2,0xb261
 91c:	ac4a0000 	sw	t2,0(v0)
 920:	ac4b0004 	sw	t3,4(v0)
 924:	8e0202d0 	lw	v0,720(s0)
 928:	3c0de700 	lui	t5,0xe700
 92c:	3c0ffa00 	lui	t7,0xfa00
 930:	244c0008 	addiu	t4,v0,8
 934:	ae0c02d0 	sw	t4,720(s0)
 938:	ac400004 	sw	zero,4(v0)
 93c:	ac4d0000 	sw	t5,0(v0)
 940:	8e0202d0 	lw	v0,720(s0)
 944:	3c01ffff 	lui	at,0xffff
 948:	34216400 	ori	at,at,0x6400
 94c:	244e0008 	addiu	t6,v0,8
 950:	ae0e02d0 	sw	t6,720(s0)
 954:	ac4f0000 	sw	t7,0(v0)
 958:	8fb80060 	lw	t8,96(sp)
 95c:	3c0fc800 	lui	t7,0xc800
 960:	3c0efb00 	lui	t6,0xfb00
 964:	c704018c 	lwc1	$f4,396(t8)
 968:	3c19db06 	lui	t9,0xdb06
 96c:	37390020 	ori	t9,t9,0x20
 970:	4600218d 	trunc.w.s	$f6,$f4
 974:	3c040000 	lui	a0,0x0
 978:	44806000 	mtc1	zero,$f12
 97c:	24070001 	li	a3,1
 980:	440a3000 	mfc1	t2,$f6
 984:	44066000 	mfc1	a2,$f12
 988:	314b00ff 	andi	t3,t2,0xff
 98c:	01616025 	or	t4,t3,at
 990:	ac4c0004 	sw	t4,4(v0)
 994:	8e0202d0 	lw	v0,720(s0)
 998:	3c0100ff 	lui	at,0xff
 99c:	3421ffff 	ori	at,at,0xffff
 9a0:	244d0008 	addiu	t5,v0,8
 9a4:	ae0d02d0 	sw	t5,720(s0)
 9a8:	ac4f0004 	sw	t7,4(v0)
 9ac:	ac4e0000 	sw	t6,0(v0)
 9b0:	8e0202d0 	lw	v0,720(s0)
 9b4:	3c0e0000 	lui	t6,0x0
 9b8:	24580008 	addiu	t8,v0,8
 9bc:	ae1802d0 	sw	t8,720(s0)
 9c0:	ac590000 	sw	t9,0(v0)
 9c4:	87a8005e 	lh	t0,94(sp)
 9c8:	00084880 	sll	t1,t0,0x2
 9cc:	00892021 	addu	a0,a0,t1
 9d0:	8c840000 	lw	a0,0(a0)
 9d4:	00045900 	sll	t3,a0,0x4
 9d8:	000b6702 	srl	t4,t3,0x1c
 9dc:	000c6880 	sll	t5,t4,0x2
 9e0:	01cd7021 	addu	t6,t6,t5
 9e4:	8dce0000 	lw	t6,0(t6)
 9e8:	00815024 	and	t2,a0,at
 9ec:	3c018000 	lui	at,0x8000
 9f0:	014e7821 	addu	t7,t2,t6
 9f4:	01e1c021 	addu	t8,t7,at
 9f8:	3c014130 	lui	at,0x4130
 9fc:	44817000 	mtc1	at,$f14
 a00:	0c000000 	jal	0 <func_809BC030>
 a04:	ac580004 	sw	t8,4(v0)
 a08:	8e0202d0 	lw	v0,720(s0)
 a0c:	3c08da38 	lui	t0,0xda38
 a10:	35080003 	ori	t0,t0,0x3
 a14:	24590008 	addiu	t9,v0,8
 a18:	ae1902d0 	sw	t9,720(s0)
 a1c:	ac480000 	sw	t0,0(v0)
 a20:	8fa90064 	lw	t1,100(sp)
 a24:	3c050000 	lui	a1,0x0
 a28:	24a50000 	addiu	a1,a1,0
 a2c:	8d240000 	lw	a0,0(t1)
 a30:	24060287 	li	a2,647
 a34:	0c000000 	jal	0 <func_809BC030>
 a38:	afa2002c 	sw	v0,44(sp)
 a3c:	8fa3002c 	lw	v1,44(sp)
 a40:	3c0d0602 	lui	t5,0x602
 a44:	25add950 	addiu	t5,t5,-9904
 a48:	ac620004 	sw	v0,4(v1)
 a4c:	8e0202d0 	lw	v0,720(s0)
 a50:	3c0cde00 	lui	t4,0xde00
 a54:	3c060000 	lui	a2,0x0
 a58:	244b0008 	addiu	t3,v0,8
 a5c:	ae0b02d0 	sw	t3,720(s0)
 a60:	ac4d0004 	sw	t5,4(v0)
 a64:	ac4c0000 	sw	t4,0(v0)
 a68:	8faa0064 	lw	t2,100(sp)
 a6c:	24c60000 	addiu	a2,a2,0
 a70:	27a40044 	addiu	a0,sp,68
 a74:	2407028b 	li	a3,651
 a78:	0c000000 	jal	0 <func_809BC030>
 a7c:	8d450000 	lw	a1,0(t2)
 a80:	8fbf001c 	lw	ra,28(sp)
 a84:	8fb00018 	lw	s0,24(sp)
 a88:	27bd0060 	addiu	sp,sp,96
 a8c:	03e00008 	jr	ra
 a90:	00000000 	nop

00000a94 <EnBdfire_Draw>:
 a94:	27bdffe8 	addiu	sp,sp,-24
 a98:	afbf0014 	sw	ra,20(sp)
 a9c:	8c990150 	lw	t9,336(a0)
 aa0:	0320f809 	jalr	t9
 aa4:	00000000 	nop
 aa8:	8fbf0014 	lw	ra,20(sp)
 aac:	27bd0018 	addiu	sp,sp,24
 ab0:	03e00008 	jr	ra
 ab4:	00000000 	nop
	...
