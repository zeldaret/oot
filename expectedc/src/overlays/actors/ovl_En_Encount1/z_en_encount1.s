
build/src/overlays/actors/ovl_En_Encount1/z_en_encount1.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnEncount1_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa50024 	sw	a1,36(sp)
  10:	8482001c 	lh	v0,28(a0)
  14:	00808025 	move	s0,a0
  18:	3c040000 	lui	a0,0x0
  1c:	5c40001a 	bgtzl	v0,88 <EnEncount1_Init+0x88>
  20:	860a0034 	lh	t2,52(s0)
  24:	0c000000 	jal	0 <EnEncount1_Init>
  28:	24840000 	addiu	a0,a0,0
  2c:	3c040000 	lui	a0,0x0
  30:	0c000000 	jal	0 <EnEncount1_Init>
  34:	24840000 	addiu	a0,a0,0
  38:	3c040000 	lui	a0,0x0
  3c:	0c000000 	jal	0 <EnEncount1_Init>
  40:	24840000 	addiu	a0,a0,0
  44:	3c040000 	lui	a0,0x0
  48:	0c000000 	jal	0 <EnEncount1_Init>
  4c:	24840000 	addiu	a0,a0,0
  50:	3c040000 	lui	a0,0x0
  54:	0c000000 	jal	0 <EnEncount1_Init>
  58:	24840000 	addiu	a0,a0,0
  5c:	3c040000 	lui	a0,0x0
  60:	0c000000 	jal	0 <EnEncount1_Init>
  64:	24840000 	addiu	a0,a0,0
  68:	3c040000 	lui	a0,0x0
  6c:	0c000000 	jal	0 <EnEncount1_Init>
  70:	24840000 	addiu	a0,a0,0
  74:	0c000000 	jal	0 <EnEncount1_Init>
  78:	02002025 	move	a0,s0
  7c:	10000063 	b	20c <EnEncount1_Init+0x20c>
  80:	8fbf001c 	lw	ra,28(sp)
  84:	860a0034 	lh	t2,52(s0)
  88:	3c014220 	lui	at,0x4220
  8c:	44814000 	mtc1	at,$f8
  90:	448a2000 	mtc1	t2,$f4
  94:	3c0142f0 	lui	at,0x42f0
  98:	44818000 	mtc1	at,$f16
  9c:	468021a0 	cvt.s.w	$f6,$f4
  a0:	a6000158 	sh	zero,344(s0)
  a4:	86090158 	lh	t1,344(s0)
  a8:	000272c3 	sra	t6,v0,0xb
  ac:	0002c183 	sra	t8,v0,0x6
  b0:	31cf001f 	andi	t7,t6,0x1f
  b4:	46083282 	mul.s	$f10,$f6,$f8
  b8:	3319001f 	andi	t9,t8,0x1f
  bc:	3048003f 	andi	t0,v0,0x3f
  c0:	3c040000 	lui	a0,0x0
  c4:	a60f0154 	sh	t7,340(s0)
  c8:	a6190150 	sh	t9,336(s0)
  cc:	a6080156 	sh	t0,342(s0)
  d0:	46105000 	add.s	$f0,$f10,$f16
  d4:	24840000 	addiu	a0,a0,0
  d8:	a6090152 	sh	t1,338(s0)
  dc:	0c000000 	jal	0 <EnEncount1_Init>
  e0:	e6000168 	swc1	$f0,360(s0)
  e4:	3c040000 	lui	a0,0x0
  e8:	24840000 	addiu	a0,a0,0
  ec:	0c000000 	jal	0 <EnEncount1_Init>
  f0:	8605001c 	lh	a1,28(s0)
  f4:	3c040000 	lui	a0,0x0
  f8:	24840000 	addiu	a0,a0,0
  fc:	0c000000 	jal	0 <EnEncount1_Init>
 100:	86050154 	lh	a1,340(s0)
 104:	3c040000 	lui	a0,0x0
 108:	24840000 	addiu	a0,a0,0
 10c:	0c000000 	jal	0 <EnEncount1_Init>
 110:	86050150 	lh	a1,336(s0)
 114:	3c040000 	lui	a0,0x0
 118:	24840000 	addiu	a0,a0,0
 11c:	0c000000 	jal	0 <EnEncount1_Init>
 120:	86050156 	lh	a1,342(s0)
 124:	c6120168 	lwc1	$f18,360(s0)
 128:	3c040000 	lui	a0,0x0
 12c:	24840000 	addiu	a0,a0,0
 130:	46009121 	cvt.d.s	$f4,$f18
 134:	44072000 	mfc1	a3,$f4
 138:	44062800 	mfc1	a2,$f5
 13c:	0c000000 	jal	0 <EnEncount1_Init>
 140:	00000000 	nop
 144:	3c040000 	lui	a0,0x0
 148:	0c000000 	jal	0 <EnEncount1_Init>
 14c:	24840000 	addiu	a0,a0,0
 150:	8e0b0004 	lw	t3,4(s0)
 154:	86020154 	lh	v0,340(s0)
 158:	2401fffe 	li	at,-2
 15c:	01616024 	and	t4,t3,at
 160:	1040000c 	beqz	v0,194 <EnEncount1_Init+0x194>
 164:	ae0c0004 	sw	t4,4(s0)
 168:	24010001 	li	at,1
 16c:	10410019 	beq	v0,at,1d4 <EnEncount1_Init+0x1d4>
 170:	240a0002 	li	t2,2
 174:	24010002 	li	at,2
 178:	1041001b 	beq	v0,at,1e8 <EnEncount1_Init+0x1e8>
 17c:	8fac0024 	lw	t4,36(sp)
 180:	24010003 	li	at,3
 184:	50410019 	beql	v0,at,1ec <EnEncount1_Init+0x1ec>
 188:	858d00a4 	lh	t5,164(t4)
 18c:	1000001f 	b	20c <EnEncount1_Init+0x20c>
 190:	8fbf001c 	lw	ra,28(sp)
 194:	240d001e 	li	t5,30
 198:	240e0005 	li	t6,5
 19c:	a60d0164 	sh	t5,356(s0)
 1a0:	a60e0150 	sh	t6,336(s0)
 1a4:	8faf0024 	lw	t7,36(sp)
 1a8:	2401005e 	li	at,94
 1ac:	3c090000 	lui	t1,0x0
 1b0:	85f800a4 	lh	t8,164(t7)
 1b4:	24190001 	li	t9,1
 1b8:	24080003 	li	t0,3
 1bc:	17010003 	bne	t8,at,1cc <EnEncount1_Init+0x1cc>
 1c0:	25290000 	addiu	t1,t1,0
 1c4:	a2190166 	sb	t9,358(s0)
 1c8:	a6080150 	sh	t0,336(s0)
 1cc:	1000000e 	b	208 <EnEncount1_Init+0x208>
 1d0:	ae09014c 	sw	t1,332(s0)
 1d4:	3c0b0000 	lui	t3,0x0
 1d8:	256b0000 	addiu	t3,t3,0
 1dc:	a60a0150 	sh	t2,336(s0)
 1e0:	10000009 	b	208 <EnEncount1_Init+0x208>
 1e4:	ae0b014c 	sw	t3,332(s0)
 1e8:	858d00a4 	lh	t5,164(t4)
 1ec:	24010051 	li	at,81
 1f0:	3c0f0000 	lui	t7,0x0
 1f4:	15a10003 	bne	t5,at,204 <EnEncount1_Init+0x204>
 1f8:	25ef0000 	addiu	t7,t7,0
 1fc:	240e2710 	li	t6,10000
 200:	a60e0156 	sh	t6,342(s0)
 204:	ae0f014c 	sw	t7,332(s0)
 208:	8fbf001c 	lw	ra,28(sp)
 20c:	8fb00018 	lw	s0,24(sp)
 210:	27bd0020 	addiu	sp,sp,32
 214:	03e00008 	jr	ra
 218:	00000000 	nop

0000021c <func_80A0693C>:
 21c:	27bdff68 	addiu	sp,sp,-152
 220:	afbf005c 	sw	ra,92(sp)
 224:	afb60058 	sw	s6,88(sp)
 228:	afb50054 	sw	s5,84(sp)
 22c:	afb40050 	sw	s4,80(sp)
 230:	afb3004c 	sw	s3,76(sp)
 234:	afb20048 	sw	s2,72(sp)
 238:	afb10044 	sw	s1,68(sp)
 23c:	afb00040 	sw	s0,64(sp)
 240:	f7b40038 	sdc1	$f20,56(sp)
 244:	8c980024 	lw	t8,36(a0)
 248:	8cb31c44 	lw	s3,7236(a1)
 24c:	a480015a 	sh	zero,346(a0)
 250:	27ae0078 	addiu	t6,sp,120
 254:	add80000 	sw	t8,0(t6)
 258:	8c8f0028 	lw	t7,40(a0)
 25c:	00808025 	move	s0,a0
 260:	00a0b025 	move	s6,a1
 264:	adcf0004 	sw	t7,4(t6)
 268:	8c98002c 	lw	t8,44(a0)
 26c:	add80008 	sw	t8,8(t6)
 270:	84990164 	lh	t9,356(a0)
 274:	572000c4 	bnezl	t9,588 <func_80A0693C+0x36c>
 278:	8fbf005c 	lw	ra,92(sp)
 27c:	90a81d6c 	lbu	t0,7532(a1)
 280:	550000c1 	bnezl	t0,588 <func_80A0693C+0x36c>
 284:	8fbf005c 	lw	ra,92(sp)
 288:	84820152 	lh	v0,338(a0)
 28c:	84890150 	lh	t1,336(a0)
 290:	0122082a 	slt	at,t1,v0
 294:	142000bb 	bnez	at,584 <func_80A0693C+0x368>
 298:	28410005 	slti	at,v0,5
 29c:	102000b9 	beqz	at,584 <func_80A0693C+0x368>
 2a0:	24a407c0 	addiu	a0,a1,1984
 2a4:	8e650078 	lw	a1,120(s3)
 2a8:	9266007d 	lbu	a2,125(s3)
 2ac:	0c000000 	jal	0 <EnEncount1_Init>
 2b0:	afa40060 	sw	a0,96(sp)
 2b4:	24010004 	li	at,4
 2b8:	10410007 	beq	v0,at,2d8 <func_80A0693C+0xbc>
 2bc:	24010007 	li	at,7
 2c0:	10410005 	beq	v0,at,2d8 <func_80A0693C+0xbc>
 2c4:	2401000c 	li	at,12
 2c8:	50410004 	beql	v0,at,2dc <func_80A0693C+0xc0>
 2cc:	92020166 	lbu	v0,358(s0)
 2d0:	100000ac 	b	584 <func_80A0693C+0x368>
 2d4:	a6000160 	sh	zero,352(s0)
 2d8:	92020166 	lbu	v0,358(s0)
 2dc:	3c010000 	lui	at,0x0
 2e0:	240a0005 	li	t2,5
 2e4:	10400007 	beqz	v0,304 <func_80A0693C+0xe8>
 2e8:	00000000 	nop
 2ec:	c4240000 	lwc1	$f4,0(at)
 2f0:	c6060090 	lwc1	$f6,144(s0)
 2f4:	4606203c 	c.lt.s	$f4,$f6
 2f8:	00000000 	nop
 2fc:	450300a2 	bc1tl	588 <func_80A0693C+0x36c>
 300:	8fbf005c 	lw	ra,92(sp)
 304:	10400003 	beqz	v0,314 <func_80A0693C+0xf8>
 308:	a7aa0086 	sh	t2,134(sp)
 30c:	240b0003 	li	t3,3
 310:	a7ab0086 	sh	t3,134(sp)
 314:	86020152 	lh	v0,338(s0)
 318:	860c0150 	lh	t4,336(s0)
 31c:	87ad0086 	lh	t5,134(sp)
 320:	004c082a 	slt	at,v0,t4
 324:	10200097 	beqz	at,584 <func_80A0693C+0x368>
 328:	004d082a 	slt	at,v0,t5
 32c:	50200096 	beqzl	at,588 <func_80A0693C+0x36c>
 330:	8fbf005c 	lw	ra,92(sp)
 334:	860e0164 	lh	t6,356(s0)
 338:	3c150000 	lui	s5,0x0
 33c:	26b50000 	addiu	s5,s5,0
 340:	15c00090 	bnez	t6,584 <func_80A0693C+0x368>
 344:	3c140000 	lui	s4,0x0
 348:	26940000 	addiu	s4,s4,0
 34c:	86020162 	lh	v0,354(s0)
 350:	866a00b6 	lh	t2,182(s3)
 354:	860b015e 	lh	t3,350(s0)
 358:	0002c840 	sll	t9,v0,0x1
 35c:	02b94021 	addu	t0,s5,t9
 360:	85090000 	lh	t1,0(t0)
 364:	00027880 	sll	t7,v0,0x2
 368:	028fc021 	addu	t8,s4,t7
 36c:	012a8821 	addu	s1,t1,t2
 370:	00118c00 	sll	s1,s1,0x10
 374:	2961000a 	slti	at,t3,10
 378:	c7140000 	lwc1	$f20,0(t8)
 37c:	00118c03 	sra	s1,s1,0x10
 380:	1420000a 	bnez	at,3ac <func_80A0693C+0x190>
 384:	00009025 	move	s2,zero
 388:	8e0c016c 	lw	t4,364(s0)
 38c:	55800008 	bnezl	t4,3b0 <func_80A0693C+0x194>
 390:	00112400 	sll	a0,s1,0x10
 394:	a6000160 	sh	zero,352(s0)
 398:	860d0160 	lh	t5,352(s0)
 39c:	24120001 	li	s2,1
 3a0:	a60d015e 	sh	t5,350(s0)
 3a4:	86b10000 	lh	s1,0(s5)
 3a8:	c6940008 	lwc1	$f20,8(s4)
 3ac:	00112400 	sll	a0,s1,0x10
 3b0:	0c000000 	jal	0 <EnEncount1_Init>
 3b4:	00042403 	sra	a0,a0,0x10
 3b8:	46140202 	mul.s	$f8,$f0,$f20
 3bc:	c66a0024 	lwc1	$f10,36(s3)
 3c0:	3c0142f0 	lui	at,0x42f0
 3c4:	44812000 	mtc1	at,$f4
 3c8:	00112400 	sll	a0,s1,0x10
 3cc:	00042403 	sra	a0,a0,0x10
 3d0:	460a4400 	add.s	$f16,$f8,$f10
 3d4:	e7b00078 	swc1	$f16,120(sp)
 3d8:	c6720080 	lwc1	$f18,128(s3)
 3dc:	46049180 	add.s	$f6,$f18,$f4
 3e0:	0c000000 	jal	0 <EnEncount1_Init>
 3e4:	e7a6007c 	swc1	$f6,124(sp)
 3e8:	46140202 	mul.s	$f8,$f0,$f20
 3ec:	c66a002c 	lwc1	$f10,44(s3)
 3f0:	27ae0078 	addiu	t6,sp,120
 3f4:	afae0010 	sw	t6,16(sp)
 3f8:	8fa40060 	lw	a0,96(sp)
 3fc:	27a50074 	addiu	a1,sp,116
 400:	27a60070 	addiu	a2,sp,112
 404:	460a4400 	add.s	$f16,$f8,$f10
 408:	02003825 	move	a3,s0
 40c:	0c000000 	jal	0 <EnEncount1_Init>
 410:	e7b00080 	swc1	$f16,128(sp)
 414:	3c01c6fa 	lui	at,0xc6fa
 418:	44819000 	mtc1	at,$f18
 41c:	46000086 	mov.s	$f2,$f0
 420:	26c41c24 	addiu	a0,s6,7204
 424:	4612003e 	c.le.s	$f0,$f18
 428:	02002825 	move	a1,s0
 42c:	02c03025 	move	a2,s6
 430:	2407001c 	li	a3,28
 434:	45030054 	bc1tl	588 <func_80A0693C+0x36c>
 438:	8fbf005c 	lw	ra,92(sp)
 43c:	c7a40078 	lwc1	$f4,120(sp)
 440:	c7a60080 	lwc1	$f6,128(sp)
 444:	e7a2007c 	swc1	$f2,124(sp)
 448:	e7a20014 	swc1	$f2,20(sp)
 44c:	afa0001c 	sw	zero,28(sp)
 450:	afa00020 	sw	zero,32(sp)
 454:	afa00024 	sw	zero,36(sp)
 458:	afb20028 	sw	s2,40(sp)
 45c:	e7a40010 	swc1	$f4,16(sp)
 460:	0c000000 	jal	0 <EnEncount1_Init>
 464:	e7a60018 	swc1	$f6,24(sp)
 468:	10400030 	beqz	v0,52c <func_80A0693C+0x310>
 46c:	240e0096 	li	t6,150
 470:	860f0152 	lh	t7,338(s0)
 474:	86190162 	lh	t9,354(s0)
 478:	25f80001 	addiu	t8,t7,1
 47c:	a6180152 	sh	t8,338(s0)
 480:	a4590280 	sh	t9,640(v0)
 484:	86080162 	lh	t0,354(s0)
 488:	240f012c 	li	t7,300
 48c:	25090001 	addiu	t1,t0,1
 490:	a6090162 	sh	t1,354(s0)
 494:	860a0162 	lh	t2,354(s0)
 498:	29410005 	slti	at,t2,5
 49c:	54200003 	bnezl	at,4ac <func_80A0693C+0x290>
 4a0:	860b0160 	lh	t3,352(s0)
 4a4:	a6000162 	sh	zero,354(s0)
 4a8:	860b0160 	lh	t3,352(s0)
 4ac:	256c0001 	addiu	t4,t3,1
 4b0:	a60c0160 	sh	t4,352(s0)
 4b4:	860d0160 	lh	t5,352(s0)
 4b8:	29a1000c 	slti	at,t5,12
 4bc:	14200003 	bnez	at,4cc <func_80A0693C+0x2b0>
 4c0:	00000000 	nop
 4c4:	a60e0164 	sh	t6,356(s0)
 4c8:	a6000160 	sh	zero,352(s0)
 4cc:	12400003 	beqz	s2,4dc <func_80A0693C+0x2c0>
 4d0:	3c010000 	lui	at,0x0
 4d4:	a60f0164 	sh	t7,356(s0)
 4d8:	ae02016c 	sw	v0,364(s0)
 4dc:	92180166 	lbu	t8,358(s0)
 4e0:	1700000a 	bnez	t8,50c <func_80A0693C+0x2f0>
 4e4:	00000000 	nop
 4e8:	3c010000 	lui	at,0x0
 4ec:	0c000000 	jal	0 <EnEncount1_Init>
 4f0:	c42c0000 	lwc1	$f12,0(at)
 4f4:	4600020d 	trunc.w.s	$f8,$f0
 4f8:	440a4000 	mfc1	t2,$f8
 4fc:	00000000 	nop
 500:	254b0002 	addiu	t3,t2,2
 504:	10000014 	b	558 <func_80A0693C+0x33c>
 508:	a60b0150 	sh	t3,336(s0)
 50c:	0c000000 	jal	0 <EnEncount1_Init>
 510:	c42c0000 	lwc1	$f12,0(at)
 514:	4600028d 	trunc.w.s	$f10,$f0
 518:	440f5000 	mfc1	t7,$f10
 51c:	00000000 	nop
 520:	25f80001 	addiu	t8,t7,1
 524:	1000000c 	b	558 <func_80A0693C+0x33c>
 528:	a6180150 	sh	t8,336(s0)
 52c:	3c040000 	lui	a0,0x0
 530:	0c000000 	jal	0 <EnEncount1_Init>
 534:	24840000 	addiu	a0,a0,0
 538:	3c040000 	lui	a0,0x0
 53c:	0c000000 	jal	0 <EnEncount1_Init>
 540:	24840000 	addiu	a0,a0,0
 544:	3c040000 	lui	a0,0x0
 548:	0c000000 	jal	0 <EnEncount1_Init>
 54c:	24840000 	addiu	a0,a0,0
 550:	1000000d 	b	588 <func_80A0693C+0x36c>
 554:	8fbf005c 	lw	ra,92(sp)
 558:	86020152 	lh	v0,338(s0)
 55c:	86190150 	lh	t9,336(s0)
 560:	87a80086 	lh	t0,134(sp)
 564:	0059082a 	slt	at,v0,t9
 568:	10200006 	beqz	at,584 <func_80A0693C+0x368>
 56c:	0048082a 	slt	at,v0,t0
 570:	50200005 	beqzl	at,588 <func_80A0693C+0x36c>
 574:	8fbf005c 	lw	ra,92(sp)
 578:	86090164 	lh	t1,356(s0)
 57c:	5120ff74 	beqzl	t1,350 <func_80A0693C+0x134>
 580:	86020162 	lh	v0,354(s0)
 584:	8fbf005c 	lw	ra,92(sp)
 588:	d7b40038 	ldc1	$f20,56(sp)
 58c:	8fb00040 	lw	s0,64(sp)
 590:	8fb10044 	lw	s1,68(sp)
 594:	8fb20048 	lw	s2,72(sp)
 598:	8fb3004c 	lw	s3,76(sp)
 59c:	8fb40050 	lw	s4,80(sp)
 5a0:	8fb50054 	lw	s5,84(sp)
 5a4:	8fb60058 	lw	s6,88(sp)
 5a8:	03e00008 	jr	ra
 5ac:	27bd0098 	addiu	sp,sp,152

000005b0 <func_80A06CD0>:
 5b0:	27bdffa0 	addiu	sp,sp,-96
 5b4:	afbf003c 	sw	ra,60(sp)
 5b8:	afb00038 	sw	s0,56(sp)
 5bc:	afa50064 	sw	a1,100(sp)
 5c0:	848f0164 	lh	t7,356(a0)
 5c4:	00808025 	move	s0,a0
 5c8:	8ca21c44 	lw	v0,7236(a1)
 5cc:	15e00061 	bnez	t7,754 <func_80A06CD0+0x1a4>
 5d0:	2418000a 	li	t8,10
 5d4:	a4980164 	sh	t8,356(a0)
 5d8:	c4440028 	lwc1	$f4,40(v0)
 5dc:	c4860028 	lwc1	$f6,40(a0)
 5e0:	3c0142c8 	lui	at,0x42c8
 5e4:	44814000 	mtc1	at,$f8
 5e8:	46062001 	sub.s	$f0,$f4,$f6
 5ec:	46000005 	abs.s	$f0,$f0
 5f0:	4600403c 	c.lt.s	$f8,$f0
 5f4:	00000000 	nop
 5f8:	45030008 	bc1tl	61c <func_80A06CD0+0x6c>
 5fc:	8619015a 	lh	t9,346(s0)
 600:	c48a0168 	lwc1	$f10,360(a0)
 604:	c4900090 	lwc1	$f16,144(a0)
 608:	4610503c 	c.lt.s	$f10,$f16
 60c:	00000000 	nop
 610:	45020006 	bc1fl	62c <func_80A06CD0+0x7c>
 614:	86090152 	lh	t1,338(s0)
 618:	8619015a 	lh	t9,346(s0)
 61c:	27280001 	addiu	t0,t9,1
 620:	1000004c 	b	754 <func_80A06CD0+0x1a4>
 624:	a608015a 	sh	t0,346(s0)
 628:	86090152 	lh	t1,338(s0)
 62c:	860a0150 	lh	t2,336(s0)
 630:	a600015a 	sh	zero,346(s0)
 634:	012a082a 	slt	at,t1,t2
 638:	50200047 	beqzl	at,758 <func_80A06CD0+0x1a8>
 63c:	8fbf003c 	lw	ra,60(sp)
 640:	860b0158 	lh	t3,344(s0)
 644:	860c0156 	lh	t4,342(s0)
 648:	016c082a 	slt	at,t3,t4
 64c:	10200041 	beqz	at,754 <func_80A06CD0+0x1a4>
 650:	3c014248 	lui	at,0x4248
 654:	44816000 	mtc1	at,$f12
 658:	0c000000 	jal	0 <EnEncount1_Init>
 65c:	00000000 	nop
 660:	c6120024 	lwc1	$f18,36(s0)
 664:	3c0142f0 	lui	at,0x42f0
 668:	44814000 	mtc1	at,$f8
 66c:	46120100 	add.s	$f4,$f0,$f18
 670:	3c014248 	lui	at,0x4248
 674:	44816000 	mtc1	at,$f12
 678:	e7a40048 	swc1	$f4,72(sp)
 67c:	c6060028 	lwc1	$f6,40(s0)
 680:	46083280 	add.s	$f10,$f6,$f8
 684:	0c000000 	jal	0 <EnEncount1_Init>
 688:	e7aa004c 	swc1	$f10,76(sp)
 68c:	c610002c 	lwc1	$f16,44(s0)
 690:	8fa40064 	lw	a0,100(sp)
 694:	27ad0048 	addiu	t5,sp,72
 698:	46100480 	add.s	$f18,$f0,$f16
 69c:	afad0010 	sw	t5,16(sp)
 6a0:	27a50054 	addiu	a1,sp,84
 6a4:	27a60058 	addiu	a2,sp,88
 6a8:	e7b20050 	swc1	$f18,80(sp)
 6ac:	02003825 	move	a3,s0
 6b0:	0c000000 	jal	0 <EnEncount1_Init>
 6b4:	248407c0 	addiu	a0,a0,1984
 6b8:	3c01c6fa 	lui	at,0xc6fa
 6bc:	44812000 	mtc1	at,$f4
 6c0:	46000086 	mov.s	$f2,$f0
 6c4:	02002825 	move	a1,s0
 6c8:	4604003e 	c.le.s	$f0,$f4
 6cc:	2407001b 	li	a3,27
 6d0:	240fffff 	li	t7,-1
 6d4:	45030020 	bc1tl	758 <func_80A06CD0+0x1a8>
 6d8:	8fbf003c 	lw	ra,60(sp)
 6dc:	8fa60064 	lw	a2,100(sp)
 6e0:	c7a60048 	lwc1	$f6,72(sp)
 6e4:	c7a80050 	lwc1	$f8,80(sp)
 6e8:	e7a2004c 	swc1	$f2,76(sp)
 6ec:	e7a20014 	swc1	$f2,20(sp)
 6f0:	afa0001c 	sw	zero,28(sp)
 6f4:	afa00020 	sw	zero,32(sp)
 6f8:	afa00024 	sw	zero,36(sp)
 6fc:	afaf0028 	sw	t7,40(sp)
 700:	24c41c24 	addiu	a0,a2,7204
 704:	e7a60010 	swc1	$f6,16(sp)
 708:	0c000000 	jal	0 <EnEncount1_Init>
 70c:	e7a80018 	swc1	$f8,24(sp)
 710:	10400008 	beqz	v0,734 <func_80A06CD0+0x184>
 714:	3c040000 	lui	a0,0x0
 718:	86180152 	lh	t8,338(s0)
 71c:	86080158 	lh	t0,344(s0)
 720:	27190001 	addiu	t9,t8,1
 724:	25090001 	addiu	t1,t0,1
 728:	a6190152 	sh	t9,338(s0)
 72c:	10000009 	b	754 <func_80A06CD0+0x1a4>
 730:	a6090158 	sh	t1,344(s0)
 734:	0c000000 	jal	0 <EnEncount1_Init>
 738:	24840000 	addiu	a0,a0,0
 73c:	3c040000 	lui	a0,0x0
 740:	0c000000 	jal	0 <EnEncount1_Init>
 744:	24840000 	addiu	a0,a0,0
 748:	3c040000 	lui	a0,0x0
 74c:	0c000000 	jal	0 <EnEncount1_Init>
 750:	24840000 	addiu	a0,a0,0
 754:	8fbf003c 	lw	ra,60(sp)
 758:	8fb00038 	lw	s0,56(sp)
 75c:	27bd0060 	addiu	sp,sp,96
 760:	03e00008 	jr	ra
 764:	00000000 	nop

00000768 <func_80A06E88>:
 768:	27bdff48 	addiu	sp,sp,-184
 76c:	afbf0074 	sw	ra,116(sp)
 770:	afb60070 	sw	s6,112(sp)
 774:	afb5006c 	sw	s5,108(sp)
 778:	afb40068 	sw	s4,104(sp)
 77c:	afb30064 	sw	s3,100(sp)
 780:	afb20060 	sw	s2,96(sp)
 784:	afb1005c 	sw	s1,92(sp)
 788:	afb00058 	sw	s0,88(sp)
 78c:	f7ba0050 	sdc1	$f26,80(sp)
 790:	f7b80048 	sdc1	$f24,72(sp)
 794:	f7b60040 	sdc1	$f22,64(sp)
 798:	f7b40038 	sdc1	$f20,56(sp)
 79c:	84ae00a4 	lh	t6,164(a1)
 7a0:	24160051 	li	s6,81
 7a4:	00808825 	move	s1,a0
 7a8:	00a0a025 	move	s4,a1
 7ac:	12ce0015 	beq	s6,t6,804 <func_80A06E88+0x9c>
 7b0:	8cb21c44 	lw	s2,7236(a1)
 7b4:	c6440028 	lwc1	$f4,40(s2)
 7b8:	c4860028 	lwc1	$f6,40(a0)
 7bc:	3c0142c8 	lui	at,0x42c8
 7c0:	44814000 	mtc1	at,$f8
 7c4:	46062001 	sub.s	$f0,$f4,$f6
 7c8:	46000005 	abs.s	$f0,$f0
 7cc:	4600403c 	c.lt.s	$f8,$f0
 7d0:	00000000 	nop
 7d4:	45030008 	bc1tl	7f8 <func_80A06E88+0x90>
 7d8:	862f015a 	lh	t7,346(s1)
 7dc:	c48a0168 	lwc1	$f10,360(a0)
 7e0:	c4900090 	lwc1	$f16,144(a0)
 7e4:	4610503c 	c.lt.s	$f10,$f16
 7e8:	00000000 	nop
 7ec:	45020011 	bc1fl	834 <func_80A06E88+0xcc>
 7f0:	8e2b0024 	lw	t3,36(s1)
 7f4:	862f015a 	lh	t7,346(s1)
 7f8:	25f80001 	addiu	t8,t7,1
 7fc:	100000ec 	b	bb0 <func_80A06E88+0x448>
 800:	a638015a 	sh	t8,346(s1)
 804:	3c190000 	lui	t9,0x0
 808:	8f390010 	lw	t9,16(t9)
 80c:	13200006 	beqz	t9,828 <func_80A06E88+0xc0>
 810:	00000000 	nop
 814:	0c000000 	jal	0 <EnEncount1_Init>
 818:	02802025 	move	a0,s4
 81c:	24010004 	li	at,4
 820:	54410004 	bnel	v0,at,834 <func_80A06E88+0xcc>
 824:	8e2b0024 	lw	t3,36(s1)
 828:	100000e1 	b	bb0 <func_80A06E88+0x448>
 82c:	a620015e 	sh	zero,350(s1)
 830:	8e2b0024 	lw	t3,36(s1)
 834:	a620015a 	sh	zero,346(s1)
 838:	27a90098 	addiu	t1,sp,152
 83c:	ad2b0000 	sw	t3,0(t1)
 840:	8e2a0028 	lw	t2,40(s1)
 844:	ad2a0004 	sw	t2,4(t1)
 848:	8e2b002c 	lw	t3,44(s1)
 84c:	ad2b0008 	sw	t3,8(t1)
 850:	86230150 	lh	v1,336(s1)
 854:	86220152 	lh	v0,338(s1)
 858:	0043082a 	slt	at,v0,v1
 85c:	502000d5 	beqzl	at,bb4 <func_80A06E88+0x44c>
 860:	8fbf0074 	lw	ra,116(sp)
 864:	86240158 	lh	a0,344(s1)
 868:	86250156 	lh	a1,342(s1)
 86c:	0085082a 	slt	at,a0,a1
 870:	102000cf 	beqz	at,bb0 <func_80A06E88+0x448>
 874:	0043082a 	slt	at,v0,v1
 878:	102000cd 	beqz	at,bb0 <func_80A06E88+0x448>
 87c:	0085082a 	slt	at,a0,a1
 880:	102000cb 	beqz	at,bb0 <func_80A06E88+0x448>
 884:	3c01c6fa 	lui	at,0xc6fa
 888:	4481d000 	mtc1	at,$f26
 88c:	3c014220 	lui	at,0x4220
 890:	4481c000 	mtc1	at,$f24
 894:	2415000a 	li	s5,10
 898:	868c00a4 	lh	t4,164(s4)
 89c:	56cc0062 	bnel	s6,t4,a28 <func_80A06E88+0x2c0>
 8a0:	862f0154 	lh	t7,340(s1)
 8a4:	964d089e 	lhu	t5,2206(s2)
 8a8:	269307c0 	addiu	s3,s4,1984
 8ac:	51a0000e 	beqzl	t5,8e8 <func_80A06E88+0x180>
 8b0:	240a003c 	li	t2,60
 8b4:	924e007d 	lbu	t6,125(s2)
 8b8:	24010032 	li	at,50
 8bc:	55c1000a 	bnel	t6,at,8e8 <func_80A06E88+0x180>
 8c0:	240a003c 	li	t2,60
 8c4:	964f0088 	lhu	t7,136(s2)
 8c8:	240b0002 	li	t3,2
 8cc:	31f80001 	andi	t8,t7,0x1
 8d0:	53000005 	beqzl	t8,8e8 <func_80A06E88+0x180>
 8d4:	240a003c 	li	t2,60
 8d8:	8e59067c 	lw	t9,1660(s2)
 8dc:	00194900 	sll	t1,t9,0x4
 8e0:	05210003 	bgez	t1,8f0 <func_80A06E88+0x188>
 8e4:	240a003c 	li	t2,60
 8e8:	100000b1 	b	bb0 <func_80A06E88+0x448>
 8ec:	a62a015c 	sh	t2,348(s1)
 8f0:	8622015c 	lh	v0,348(s1)
 8f4:	2401003c 	li	at,60
 8f8:	14410003 	bne	v0,at,908 <func_80A06E88+0x1a0>
 8fc:	00000000 	nop
 900:	a62b0150 	sh	t3,336(s1)
 904:	8622015c 	lh	v0,348(s1)
 908:	10400003 	beqz	v0,918 <func_80A06E88+0x1b0>
 90c:	244cffff 	addiu	t4,v0,-1
 910:	100000a7 	b	bb0 <func_80A06E88+0x448>
 914:	a62c015c 	sh	t4,348(s1)
 918:	0c000000 	jal	0 <EnEncount1_Init>
 91c:	4600c306 	mov.s	$f12,$f24
 920:	862d0152 	lh	t5,338(s1)
 924:	3c014348 	lui	at,0x4348
 928:	44819000 	mtc1	at,$f18
 92c:	865000b6 	lh	s0,182(s2)
 930:	11a0000a 	beqz	t5,95c <func_80A06E88+0x1f4>
 934:	46120580 	add.s	$f22,$f0,$f18
 938:	00108023 	negu	s0,s0
 93c:	00108400 	sll	s0,s0,0x10
 940:	00108403 	sra	s0,s0,0x10
 944:	0c000000 	jal	0 <EnEncount1_Init>
 948:	4600c306 	mov.s	$f12,$f24
 94c:	3c0142c8 	lui	at,0x42c8
 950:	44812000 	mtc1	at,$f4
 954:	00000000 	nop
 958:	46040580 	add.s	$f22,$f0,$f4
 95c:	00102400 	sll	a0,s0,0x10
 960:	0c000000 	jal	0 <EnEncount1_Init>
 964:	00042403 	sra	a0,a0,0x10
 968:	46000506 	mov.s	$f20,$f0
 96c:	0c000000 	jal	0 <EnEncount1_Init>
 970:	4600c306 	mov.s	$f12,$f24
 974:	4616a202 	mul.s	$f8,$f20,$f22
 978:	c6460024 	lwc1	$f6,36(s2)
 97c:	3c0142f0 	lui	at,0x42f0
 980:	44812000 	mtc1	at,$f4
 984:	00102400 	sll	a0,s0,0x10
 988:	00042403 	sra	a0,a0,0x10
 98c:	46083280 	add.s	$f10,$f6,$f8
 990:	460a0400 	add.s	$f16,$f0,$f10
 994:	e7b00098 	swc1	$f16,152(sp)
 998:	c6520080 	lwc1	$f18,128(s2)
 99c:	46049180 	add.s	$f6,$f18,$f4
 9a0:	0c000000 	jal	0 <EnEncount1_Init>
 9a4:	e7a6009c 	swc1	$f6,156(sp)
 9a8:	46000506 	mov.s	$f20,$f0
 9ac:	0c000000 	jal	0 <EnEncount1_Init>
 9b0:	4600c306 	mov.s	$f12,$f24
 9b4:	4616a282 	mul.s	$f10,$f20,$f22
 9b8:	c648002c 	lwc1	$f8,44(s2)
 9bc:	27ae0098 	addiu	t6,sp,152
 9c0:	afae0010 	sw	t6,16(sp)
 9c4:	02602025 	move	a0,s3
 9c8:	27a50094 	addiu	a1,sp,148
 9cc:	27a60090 	addiu	a2,sp,144
 9d0:	460a4400 	add.s	$f16,$f8,$f10
 9d4:	02203825 	move	a3,s1
 9d8:	46100480 	add.s	$f18,$f0,$f16
 9dc:	0c000000 	jal	0 <EnEncount1_Init>
 9e0:	e7b200a0 	swc1	$f18,160(sp)
 9e4:	461a003e 	c.le.s	$f0,$f26
 9e8:	00000000 	nop
 9ec:	45030071 	bc1tl	bb4 <func_80A06E88+0x44c>
 9f0:	8fbf0074 	lw	ra,116(sp)
 9f4:	c6420084 	lwc1	$f2,132(s2)
 9f8:	4602d032 	c.eq.s	$f26,$f2
 9fc:	00000000 	nop
 a00:	45030008 	bc1tl	a24 <func_80A06E88+0x2bc>
 a04:	e7a0009c 	swc1	$f0,156(sp)
 a08:	c6440028 	lwc1	$f4,40(s2)
 a0c:	46022181 	sub.s	$f6,$f4,$f2
 a10:	4606003c 	c.lt.s	$f0,$f6
 a14:	00000000 	nop
 a18:	45030066 	bc1tl	bb4 <func_80A06E88+0x44c>
 a1c:	8fbf0074 	lw	ra,116(sp)
 a20:	e7a0009c 	swc1	$f0,156(sp)
 a24:	862f0154 	lh	t7,340(s1)
 a28:	24010003 	li	at,3
 a2c:	26901c24 	addiu	s0,s4,7204
 a30:	15e10004 	bne	t7,at,a44 <func_80A06E88+0x2dc>
 a34:	02202825 	move	a1,s1
 a38:	240701af 	li	a3,431
 a3c:	10000028 	b	ae0 <func_80A06E88+0x378>
 a40:	2408ff00 	li	t0,-256
 a44:	8622015e 	lh	v0,350(s1)
 a48:	240701b0 	li	a3,432
 a4c:	00004025 	move	t0,zero
 a50:	0055001a 	div	zero,v0,s5
 a54:	00002012 	mflo	a0
 a58:	00042400 	sll	a0,a0,0x10
 a5c:	00042403 	sra	a0,a0,0x10
 a60:	16a00002 	bnez	s5,a6c <func_80A06E88+0x304>
 a64:	00000000 	nop
 a68:	0007000d 	break	0x7
 a6c:	2401ffff 	li	at,-1
 a70:	16a10004 	bne	s5,at,a84 <func_80A06E88+0x31c>
 a74:	3c018000 	lui	at,0x8000
 a78:	14410002 	bne	v0,at,a84 <func_80A06E88+0x31c>
 a7c:	00000000 	nop
 a80:	0006000d 	break	0x6
 a84:	24580001 	addiu	t8,v0,1
 a88:	58800015 	blezl	a0,ae0 <func_80A06E88+0x378>
 a8c:	a638015e 	sh	t8,350(s1)
 a90:	0055001a 	div	zero,v0,s5
 a94:	00001810 	mfhi	v1
 a98:	00031c00 	sll	v1,v1,0x10
 a9c:	00031c03 	sra	v1,v1,0x10
 aa0:	16a00002 	bnez	s5,aac <func_80A06E88+0x344>
 aa4:	00000000 	nop
 aa8:	0007000d 	break	0x7
 aac:	2401ffff 	li	at,-1
 ab0:	16a10004 	bne	s5,at,ac4 <func_80A06E88+0x35c>
 ab4:	3c018000 	lui	at,0x8000
 ab8:	14410002 	bne	v0,at,ac4 <func_80A06E88+0x35c>
 abc:	00000000 	nop
 ac0:	0006000d 	break	0x6
 ac4:	54600006 	bnezl	v1,ae0 <func_80A06E88+0x378>
 ac8:	a638015e 	sh	t8,350(s1)
 acc:	00044080 	sll	t0,a0,0x2
 ad0:	01044021 	addu	t0,t0,a0
 ad4:	00084400 	sll	t0,t0,0x10
 ad8:	00084403 	sra	t0,t0,0x10
 adc:	a638015e 	sh	t8,350(s1)
 ae0:	c7a80098 	lwc1	$f8,152(sp)
 ae4:	c7aa009c 	lwc1	$f10,156(sp)
 ae8:	c7b000a0 	lwc1	$f16,160(sp)
 aec:	02002025 	move	a0,s0
 af0:	02803025 	move	a2,s4
 af4:	afa0001c 	sw	zero,28(sp)
 af8:	afa00020 	sw	zero,32(sp)
 afc:	afa00024 	sw	zero,36(sp)
 b00:	afa80028 	sw	t0,40(sp)
 b04:	e7a80010 	swc1	$f8,16(sp)
 b08:	e7aa0014 	swc1	$f10,20(sp)
 b0c:	0c000000 	jal	0 <EnEncount1_Init>
 b10:	e7b00018 	swc1	$f16,24(sp)
 b14:	10400013 	beqz	v0,b64 <func_80A06E88+0x3fc>
 b18:	240c0064 	li	t4,100
 b1c:	86390152 	lh	t9,338(s1)
 b20:	862b0150 	lh	t3,336(s1)
 b24:	27290001 	addiu	t1,t9,1
 b28:	a6290152 	sh	t1,338(s1)
 b2c:	862a0152 	lh	t2,338(s1)
 b30:	014b082a 	slt	at,t2,t3
 b34:	54200003 	bnezl	at,b44 <func_80A06E88+0x3dc>
 b38:	868d00a4 	lh	t5,164(s4)
 b3c:	a62c015c 	sh	t4,348(s1)
 b40:	868d00a4 	lh	t5,164(s4)
 b44:	52cd0005 	beql	s6,t5,b5c <func_80A06E88+0x3f4>
 b48:	86220152 	lh	v0,338(s1)
 b4c:	862e0158 	lh	t6,344(s1)
 b50:	25cf0001 	addiu	t7,t6,1
 b54:	a62f0158 	sh	t7,344(s1)
 b58:	86220152 	lh	v0,338(s1)
 b5c:	1000000c 	b	b90 <func_80A06E88+0x428>
 b60:	86230150 	lh	v1,336(s1)
 b64:	3c040000 	lui	a0,0x0
 b68:	0c000000 	jal	0 <EnEncount1_Init>
 b6c:	24840000 	addiu	a0,a0,0
 b70:	3c040000 	lui	a0,0x0
 b74:	0c000000 	jal	0 <EnEncount1_Init>
 b78:	24840000 	addiu	a0,a0,0
 b7c:	3c040000 	lui	a0,0x0
 b80:	0c000000 	jal	0 <EnEncount1_Init>
 b84:	24840000 	addiu	a0,a0,0
 b88:	1000000a 	b	bb4 <func_80A06E88+0x44c>
 b8c:	8fbf0074 	lw	ra,116(sp)
 b90:	0043082a 	slt	at,v0,v1
 b94:	50200007 	beqzl	at,bb4 <func_80A06E88+0x44c>
 b98:	8fbf0074 	lw	ra,116(sp)
 b9c:	86380158 	lh	t8,344(s1)
 ba0:	86390156 	lh	t9,342(s1)
 ba4:	0319082a 	slt	at,t8,t9
 ba8:	5420ff3c 	bnezl	at,89c <func_80A06E88+0x134>
 bac:	868c00a4 	lh	t4,164(s4)
 bb0:	8fbf0074 	lw	ra,116(sp)
 bb4:	d7b40038 	ldc1	$f20,56(sp)
 bb8:	d7b60040 	ldc1	$f22,64(sp)
 bbc:	d7b80048 	ldc1	$f24,72(sp)
 bc0:	d7ba0050 	ldc1	$f26,80(sp)
 bc4:	8fb00058 	lw	s0,88(sp)
 bc8:	8fb1005c 	lw	s1,92(sp)
 bcc:	8fb20060 	lw	s2,96(sp)
 bd0:	8fb30064 	lw	s3,100(sp)
 bd4:	8fb40068 	lw	s4,104(sp)
 bd8:	8fb5006c 	lw	s5,108(sp)
 bdc:	8fb60070 	lw	s6,112(sp)
 be0:	03e00008 	jr	ra
 be4:	27bd00b8 	addiu	sp,sp,184

00000be8 <EnEncount1_Update>:
 be8:	27bdffb8 	addiu	sp,sp,-72
 bec:	afbf0044 	sw	ra,68(sp)
 bf0:	84820164 	lh	v0,356(a0)
 bf4:	10400002 	beqz	v0,c00 <EnEncount1_Update+0x18>
 bf8:	244effff 	addiu	t6,v0,-1
 bfc:	a48e0164 	sh	t6,356(a0)
 c00:	afa40048 	sw	a0,72(sp)
 c04:	afa5004c 	sw	a1,76(sp)
 c08:	8c99014c 	lw	t9,332(a0)
 c0c:	0320f809 	jalr	t9
 c10:	00000000 	nop
 c14:	3c0f0000 	lui	t7,0x0
 c18:	8def0000 	lw	t7,0(t7)
 c1c:	8fa40048 	lw	a0,72(sp)
 c20:	8fa5004c 	lw	a1,76(sp)
 c24:	85f812d4 	lh	t8,4820(t7)
 c28:	5300003b 	beqzl	t8,d18 <EnEncount1_Update+0x130>
 c2c:	8fbf0044 	lw	ra,68(sp)
 c30:	8482015a 	lh	v0,346(a0)
 c34:	3c013f80 	lui	at,0x3f80
 c38:	240900ff 	li	t1,255
 c3c:	1040001f 	beqz	v0,cbc <EnEncount1_Update+0xd4>
 c40:	240a00ff 	li	t2,255
 c44:	30480001 	andi	t0,v0,0x1
 c48:	15000032 	bnez	t0,d14 <EnEncount1_Update+0x12c>
 c4c:	3c013f80 	lui	at,0x3f80
 c50:	84890032 	lh	t1,50(a0)
 c54:	c48c0024 	lwc1	$f12,36(a0)
 c58:	c48e0028 	lwc1	$f14,40(a0)
 c5c:	8c86002c 	lw	a2,44(a0)
 c60:	84870030 	lh	a3,48(a0)
 c64:	afa90010 	sw	t1,16(sp)
 c68:	848a0034 	lh	t2,52(a0)
 c6c:	44810000 	mtc1	at,$f0
 c70:	240b0078 	li	t3,120
 c74:	240c0078 	li	t4,120
 c78:	240d0078 	li	t5,120
 c7c:	240e00ff 	li	t6,255
 c80:	24190004 	li	t9,4
 c84:	afb90034 	sw	t9,52(sp)
 c88:	afae0030 	sw	t6,48(sp)
 c8c:	afad002c 	sw	t5,44(sp)
 c90:	afac0028 	sw	t4,40(sp)
 c94:	afab0024 	sw	t3,36(sp)
 c98:	afaa0014 	sw	t2,20(sp)
 c9c:	e7a00018 	swc1	$f0,24(sp)
 ca0:	e7a0001c 	swc1	$f0,28(sp)
 ca4:	e7a00020 	swc1	$f0,32(sp)
 ca8:	8caf0000 	lw	t7,0(a1)
 cac:	0c000000 	jal	0 <EnEncount1_Init>
 cb0:	afaf0038 	sw	t7,56(sp)
 cb4:	10000018 	b	d18 <EnEncount1_Update+0x130>
 cb8:	8fbf0044 	lw	ra,68(sp)
 cbc:	84980032 	lh	t8,50(a0)
 cc0:	c48c0024 	lwc1	$f12,36(a0)
 cc4:	c48e0028 	lwc1	$f14,40(a0)
 cc8:	8c86002c 	lw	a2,44(a0)
 ccc:	84870030 	lh	a3,48(a0)
 cd0:	afb80010 	sw	t8,16(sp)
 cd4:	84880034 	lh	t0,52(a0)
 cd8:	44810000 	mtc1	at,$f0
 cdc:	240b00ff 	li	t3,255
 ce0:	240c0004 	li	t4,4
 ce4:	afac0034 	sw	t4,52(sp)
 ce8:	afab0030 	sw	t3,48(sp)
 cec:	afaa002c 	sw	t2,44(sp)
 cf0:	afa00028 	sw	zero,40(sp)
 cf4:	afa90024 	sw	t1,36(sp)
 cf8:	afa80014 	sw	t0,20(sp)
 cfc:	e7a00018 	swc1	$f0,24(sp)
 d00:	e7a0001c 	swc1	$f0,28(sp)
 d04:	e7a00020 	swc1	$f0,32(sp)
 d08:	8cad0000 	lw	t5,0(a1)
 d0c:	0c000000 	jal	0 <EnEncount1_Init>
 d10:	afad0038 	sw	t5,56(sp)
 d14:	8fbf0044 	lw	ra,68(sp)
 d18:	27bd0048 	addiu	sp,sp,72
 d1c:	03e00008 	jr	ra
 d20:	00000000 	nop
	...
