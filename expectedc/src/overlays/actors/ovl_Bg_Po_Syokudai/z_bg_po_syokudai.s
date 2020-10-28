
build/src/overlays/actors/ovl_Bg_Po_Syokudai/z_bg_po_syokudai.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgPoSyokudai_Init>:
   0:	27bdffb8 	addiu	sp,sp,-72
   4:	afb10030 	sw	s1,48(sp)
   8:	00a08825 	move	s1,a1
   c:	afbf0034 	sw	ra,52(sp)
  10:	afb0002c 	sw	s0,44(sp)
  14:	3c050000 	lui	a1,0x0
  18:	00808025 	move	s0,a0
  1c:	0c000000 	jal	0 <BgPoSyokudai_Init>
  20:	24a5006c 	addiu	a1,a1,108
  24:	860e001c 	lh	t6,28(s0)
  28:	8619001c 	lh	t9,28(s0)
  2c:	240900ff 	li	t1,255
  30:	000ec203 	sra	t8,t6,0x8
  34:	3328003f 	andi	t0,t9,0x3f
  38:	a218014c 	sb	t8,332(s0)
  3c:	a608001c 	sh	t0,28(s0)
  40:	a20900ae 	sb	t1,174(s0)
  44:	26060154 	addiu	a2,s0,340
  48:	afa6003c 	sw	a2,60(sp)
  4c:	02202025 	move	a0,s1
  50:	0c000000 	jal	0 <BgPoSyokudai_Init>
  54:	262507a8 	addiu	a1,s1,1960
  58:	c6080028 	lwc1	$f8,40(s0)
  5c:	c6040024 	lwc1	$f4,36(s0)
  60:	c610002c 	lwc1	$f16,44(s0)
  64:	4600428d 	trunc.w.s	$f10,$f8
  68:	ae020150 	sw	v0,336(s0)
  6c:	afa0001c 	sw	zero,28(sp)
  70:	4600218d 	trunc.w.s	$f6,$f4
  74:	44065000 	mfc1	a2,$f10
  78:	afa00018 	sw	zero,24(sp)
  7c:	4600848d 	trunc.w.s	$f18,$f16
  80:	44053000 	mfc1	a1,$f6
  84:	00063400 	sll	a2,a2,0x10
  88:	00063403 	sra	a2,a2,0x10
  8c:	44079000 	mfc1	a3,$f18
  90:	24c60041 	addiu	a2,a2,65
  94:	00063400 	sll	a2,a2,0x10
  98:	00052c00 	sll	a1,a1,0x10
  9c:	00073c00 	sll	a3,a3,0x10
  a0:	00073c03 	sra	a3,a3,0x10
  a4:	00052c03 	sra	a1,a1,0x10
  a8:	00063403 	sra	a2,a2,0x10
  ac:	afa00014 	sw	zero,20(sp)
  b0:	afa00010 	sw	zero,16(sp)
  b4:	0c000000 	jal	0 <BgPoSyokudai_Init>
  b8:	8fa4003c 	lw	a0,60(sp)
  bc:	26050164 	addiu	a1,s0,356
  c0:	afa5003c 	sw	a1,60(sp)
  c4:	0c000000 	jal	0 <BgPoSyokudai_Init>
  c8:	02202025 	move	a0,s1
  cc:	3c070000 	lui	a3,0x0
  d0:	8fa5003c 	lw	a1,60(sp)
  d4:	24e70000 	addiu	a3,a3,0
  d8:	02202025 	move	a0,s1
  dc:	0c000000 	jal	0 <BgPoSyokudai_Init>
  e0:	02003025 	move	a2,s0
  e4:	c6040024 	lwc1	$f4,36(s0)
  e8:	c6080028 	lwc1	$f8,40(s0)
  ec:	c610002c 	lwc1	$f16,44(s0)
  f0:	4600218d 	trunc.w.s	$f6,$f4
  f4:	9209014c 	lbu	t1,332(s0)
  f8:	02202025 	move	a0,s1
  fc:	4600428d 	trunc.w.s	$f10,$f8
 100:	440e3000 	mfc1	t6,$f6
 104:	4600848d 	trunc.w.s	$f18,$f16
 108:	44185000 	mfc1	t8,$f10
 10c:	a60e01aa 	sh	t6,426(s0)
 110:	44089000 	mfc1	t0,$f18
 114:	a61801ac 	sh	t8,428(s0)
 118:	15200025 	bnez	t1,1b0 <BgPoSyokudai_Init+0x1b0>
 11c:	a60801ae 	sh	t0,430(s0)
 120:	0c000000 	jal	0 <BgPoSyokudai_Init>
 124:	2405001f 	li	a1,31
 128:	10400021 	beqz	v0,1b0 <BgPoSyokudai_Init+0x1b0>
 12c:	02202025 	move	a0,s1
 130:	0c000000 	jal	0 <BgPoSyokudai_Init>
 134:	2405001e 	li	a1,30
 138:	1040001d 	beqz	v0,1b0 <BgPoSyokudai_Init+0x1b0>
 13c:	02202025 	move	a0,s1
 140:	0c000000 	jal	0 <BgPoSyokudai_Init>
 144:	2405001d 	li	a1,29
 148:	10400019 	beqz	v0,1b0 <BgPoSyokudai_Init+0x1b0>
 14c:	02202025 	move	a0,s1
 150:	0c000000 	jal	0 <BgPoSyokudai_Init>
 154:	8605001c 	lh	a1,28(s0)
 158:	14400015 	bnez	v0,1b0 <BgPoSyokudai_Init+0x1b0>
 15c:	26241c24 	addiu	a0,s1,7204
 160:	3c014361 	lui	at,0x4361
 164:	44812000 	mtc1	at,$f4
 168:	3c010000 	lui	at,0x0
 16c:	c4260060 	lwc1	$f6,96(at)
 170:	afa00018 	sw	zero,24(sp)
 174:	afa0001c 	sw	zero,28(sp)
 178:	afa00020 	sw	zero,32(sp)
 17c:	e7a40010 	swc1	$f4,16(sp)
 180:	e7a60014 	swc1	$f6,20(sp)
 184:	860a001c 	lh	t2,28(s0)
 188:	02202825 	move	a1,s1
 18c:	24060091 	li	a2,145
 190:	3c0742ee 	lui	a3,0x42ee
 194:	0c000000 	jal	0 <BgPoSyokudai_Init>
 198:	afaa0024 	sw	t2,36(sp)
 19c:	3c010001 	lui	at,0x1
 1a0:	00310821 	addu	at,at,s1
 1a4:	240b0004 	li	t3,4
 1a8:	1000002d 	b	260 <BgPoSyokudai_Init+0x260>
 1ac:	a02b0ae3 	sb	t3,2787(at)
 1b0:	02202025 	move	a0,s1
 1b4:	0c000000 	jal	0 <BgPoSyokudai_Init>
 1b8:	2405001c 	li	a1,28
 1bc:	1440001b 	bnez	v0,22c <BgPoSyokudai_Init+0x22c>
 1c0:	02202025 	move	a0,s1
 1c4:	0c000000 	jal	0 <BgPoSyokudai_Init>
 1c8:	2405001b 	li	a1,27
 1cc:	14400017 	bnez	v0,22c <BgPoSyokudai_Init+0x22c>
 1d0:	3c014250 	lui	at,0x4250
 1d4:	c6080028 	lwc1	$f8,40(s0)
 1d8:	44815000 	mtc1	at,$f10
 1dc:	8e070024 	lw	a3,36(s0)
 1e0:	26241c24 	addiu	a0,s1,7204
 1e4:	460a4400 	add.s	$f16,$f8,$f10
 1e8:	02202825 	move	a1,s1
 1ec:	24060091 	li	a2,145
 1f0:	e7b00010 	swc1	$f16,16(sp)
 1f4:	c612002c 	lwc1	$f18,44(s0)
 1f8:	afa00020 	sw	zero,32(sp)
 1fc:	afa0001c 	sw	zero,28(sp)
 200:	afa00018 	sw	zero,24(sp)
 204:	e7b20014 	swc1	$f18,20(sp)
 208:	920c014c 	lbu	t4,332(s0)
 20c:	860e001c 	lh	t6,28(s0)
 210:	000c6a00 	sll	t5,t4,0x8
 214:	01ae7821 	addu	t7,t5,t6
 218:	25f81000 	addiu	t8,t7,4096
 21c:	0c000000 	jal	0 <BgPoSyokudai_Init>
 220:	afb80024 	sw	t8,36(sp)
 224:	1000000e 	b	260 <BgPoSyokudai_Init+0x260>
 228:	00000000 	nop
 22c:	02202025 	move	a0,s1
 230:	0c000000 	jal	0 <BgPoSyokudai_Init>
 234:	8605001c 	lh	a1,28(s0)
 238:	14400009 	bnez	v0,260 <BgPoSyokudai_Init+0x260>
 23c:	3c190001 	lui	t9,0x1
 240:	0331c821 	addu	t9,t9,s1
 244:	93390ae3 	lbu	t9,2787(t9)
 248:	240100ff 	li	at,255
 24c:	24080004 	li	t0,4
 250:	17210003 	bne	t9,at,260 <BgPoSyokudai_Init+0x260>
 254:	3c010001 	lui	at,0x1
 258:	00310821 	addu	at,at,s1
 25c:	a0280ae3 	sb	t0,2787(at)
 260:	0c000000 	jal	0 <BgPoSyokudai_Init>
 264:	00000000 	nop
 268:	3c0141a0 	lui	at,0x41a0
 26c:	44812000 	mtc1	at,$f4
 270:	00000000 	nop
 274:	46040182 	mul.s	$f6,$f0,$f4
 278:	4600320d 	trunc.w.s	$f8,$f6
 27c:	440a4000 	mfc1	t2,$f8
 280:	00000000 	nop
 284:	a60a014e 	sh	t2,334(s0)
 288:	8fbf0034 	lw	ra,52(sp)
 28c:	8fb10030 	lw	s1,48(sp)
 290:	8fb0002c 	lw	s0,44(sp)
 294:	03e00008 	jr	ra
 298:	27bd0048 	addiu	sp,sp,72

0000029c <BgPoSyokudai_Destroy>:
 29c:	27bdffe8 	addiu	sp,sp,-24
 2a0:	afa40018 	sw	a0,24(sp)
 2a4:	8fae0018 	lw	t6,24(sp)
 2a8:	afbf0014 	sw	ra,20(sp)
 2ac:	00a03825 	move	a3,a1
 2b0:	00a02025 	move	a0,a1
 2b4:	8dc60150 	lw	a2,336(t6)
 2b8:	afa7001c 	sw	a3,28(sp)
 2bc:	0c000000 	jal	0 <BgPoSyokudai_Init>
 2c0:	24a507a8 	addiu	a1,a1,1960
 2c4:	8fa50018 	lw	a1,24(sp)
 2c8:	8fa4001c 	lw	a0,28(sp)
 2cc:	0c000000 	jal	0 <BgPoSyokudai_Init>
 2d0:	24a50164 	addiu	a1,a1,356
 2d4:	8fa7001c 	lw	a3,28(sp)
 2d8:	3c0f0001 	lui	t7,0x1
 2dc:	240100ff 	li	at,255
 2e0:	01e77821 	addu	t7,t7,a3
 2e4:	91ef0ae3 	lbu	t7,2787(t7)
 2e8:	241800ff 	li	t8,255
 2ec:	11e10003 	beq	t7,at,2fc <BgPoSyokudai_Destroy+0x60>
 2f0:	3c010001 	lui	at,0x1
 2f4:	00270821 	addu	at,at,a3
 2f8:	a0380ae3 	sb	t8,2787(at)
 2fc:	8fbf0014 	lw	ra,20(sp)
 300:	27bd0018 	addiu	sp,sp,24
 304:	03e00008 	jr	ra
 308:	00000000 	nop

0000030c <BgPoSyokudai_Update>:
 30c:	27bdffd0 	addiu	sp,sp,-48
 310:	afb00018 	sw	s0,24(sp)
 314:	00808025 	move	s0,a0
 318:	3c010001 	lui	at,0x1
 31c:	00a03825 	move	a3,a1
 320:	34211e60 	ori	at,at,0x1e60
 324:	00a02025 	move	a0,a1
 328:	afbf001c 	sw	ra,28(sp)
 32c:	00a12821 	addu	a1,a1,at
 330:	26060164 	addiu	a2,s0,356
 334:	afa60020 	sw	a2,32(sp)
 338:	afa50024 	sw	a1,36(sp)
 33c:	0c000000 	jal	0 <BgPoSyokudai_Init>
 340:	afa70034 	sw	a3,52(sp)
 344:	8fa50024 	lw	a1,36(sp)
 348:	8fa60020 	lw	a2,32(sp)
 34c:	0c000000 	jal	0 <BgPoSyokudai_Init>
 350:	8fa40034 	lw	a0,52(sp)
 354:	8fa40034 	lw	a0,52(sp)
 358:	0c000000 	jal	0 <BgPoSyokudai_Init>
 35c:	8605001c 	lh	a1,28(s0)
 360:	10400003 	beqz	v0,370 <BgPoSyokudai_Update+0x64>
 364:	02002025 	move	a0,s0
 368:	0c000000 	jal	0 <BgPoSyokudai_Init>
 36c:	24052031 	li	a1,8241
 370:	860e014e 	lh	t6,334(s0)
 374:	25cf0001 	addiu	t7,t6,1
 378:	a60f014e 	sh	t7,334(s0)
 37c:	8fbf001c 	lw	ra,28(sp)
 380:	8fb00018 	lw	s0,24(sp)
 384:	27bd0030 	addiu	sp,sp,48
 388:	03e00008 	jr	ra
 38c:	00000000 	nop

00000390 <BgPoSyokudai_Draw>:
 390:	27bdff70 	addiu	sp,sp,-144
 394:	afb10038 	sw	s1,56(sp)
 398:	00a08825 	move	s1,a1
 39c:	afbf003c 	sw	ra,60(sp)
 3a0:	afb00034 	sw	s0,52(sp)
 3a4:	afa40090 	sw	a0,144(sp)
 3a8:	8ca50000 	lw	a1,0(a1)
 3ac:	3c060000 	lui	a2,0x0
 3b0:	24c60000 	addiu	a2,a2,0
 3b4:	27a40070 	addiu	a0,sp,112
 3b8:	2407013b 	li	a3,315
 3bc:	0c000000 	jal	0 <BgPoSyokudai_Init>
 3c0:	00a08025 	move	s0,a1
 3c4:	0c000000 	jal	0 <BgPoSyokudai_Init>
 3c8:	8e240000 	lw	a0,0(s1)
 3cc:	8e0202c0 	lw	v0,704(s0)
 3d0:	3c0fda38 	lui	t7,0xda38
 3d4:	35ef0003 	ori	t7,t7,0x3
 3d8:	244e0008 	addiu	t6,v0,8
 3dc:	ae0e02c0 	sw	t6,704(s0)
 3e0:	ac4f0000 	sw	t7,0(v0)
 3e4:	8e240000 	lw	a0,0(s1)
 3e8:	3c050000 	lui	a1,0x0
 3ec:	24a50018 	addiu	a1,a1,24
 3f0:	2406013f 	li	a2,319
 3f4:	0c000000 	jal	0 <BgPoSyokudai_Init>
 3f8:	afa2006c 	sw	v0,108(sp)
 3fc:	8fa3006c 	lw	v1,108(sp)
 400:	3c090000 	lui	t1,0x0
 404:	25290000 	addiu	t1,t1,0
 408:	ac620004 	sw	v0,4(v1)
 40c:	8e0202c0 	lw	v0,704(s0)
 410:	3c19de00 	lui	t9,0xde00
 414:	02202025 	move	a0,s1
 418:	24580008 	addiu	t8,v0,8
 41c:	ae1802c0 	sw	t8,704(s0)
 420:	ac490004 	sw	t1,4(v0)
 424:	ac590000 	sw	t9,0(v0)
 428:	8faa0090 	lw	t2,144(sp)
 42c:	0c000000 	jal	0 <BgPoSyokudai_Init>
 430:	8545001c 	lh	a1,28(t2)
 434:	10400113 	beqz	v0,884 <BgPoSyokudai_Draw+0x4f4>
 438:	8fab0090 	lw	t3,144(sp)
 43c:	9162014c 	lbu	v0,332(t3)
 440:	3c0c0000 	lui	t4,0x0
 444:	3c0d0000 	lui	t5,0x0
 448:	00021080 	sll	v0,v0,0x2
 44c:	258c002c 	addiu	t4,t4,44
 450:	25ad003c 	addiu	t5,t5,60
 454:	004c4021 	addu	t0,v0,t4
 458:	004d7021 	addu	t6,v0,t5
 45c:	afae0060 	sw	t6,96(sp)
 460:	0c000000 	jal	0 <BgPoSyokudai_Init>
 464:	afa80064 	sw	t0,100(sp)
 468:	3c010000 	lui	at,0x0
 46c:	c4240064 	lwc1	$f4,100(at)
 470:	8fa80064 	lw	t0,100(sp)
 474:	3c010000 	lui	at,0x0
 478:	46040182 	mul.s	$f6,$f0,$f4
 47c:	910f0000 	lbu	t7,0(t0)
 480:	c4280068 	lwc1	$f8,104(at)
 484:	8fa40090 	lw	a0,144(sp)
 488:	448f5000 	mtc1	t7,$f10
 48c:	240c00c8 	li	t4,200
 490:	24840154 	addiu	a0,a0,340
 494:	46083080 	add.s	$f2,$f6,$f8
 498:	05e10005 	bgez	t7,4b0 <BgPoSyokudai_Draw+0x120>
 49c:	46805420 	cvt.s.w	$f16,$f10
 4a0:	3c014f80 	lui	at,0x4f80
 4a4:	44819000 	mtc1	at,$f18
 4a8:	00000000 	nop
 4ac:	46128400 	add.s	$f16,$f16,$f18
 4b0:	46028102 	mul.s	$f4,$f16,$f2
 4b4:	24050001 	li	a1,1
 4b8:	4458f800 	cfc1	t8,$31
 4bc:	44c5f800 	ctc1	a1,$31
 4c0:	00000000 	nop
 4c4:	460021a4 	cvt.w.s	$f6,$f4
 4c8:	4445f800 	cfc1	a1,$31
 4cc:	00000000 	nop
 4d0:	30a50078 	andi	a1,a1,0x78
 4d4:	10a00012 	beqz	a1,520 <BgPoSyokudai_Draw+0x190>
 4d8:	3c014f00 	lui	at,0x4f00
 4dc:	44813000 	mtc1	at,$f6
 4e0:	24050001 	li	a1,1
 4e4:	46062181 	sub.s	$f6,$f4,$f6
 4e8:	44c5f800 	ctc1	a1,$31
 4ec:	00000000 	nop
 4f0:	460031a4 	cvt.w.s	$f6,$f6
 4f4:	4445f800 	cfc1	a1,$31
 4f8:	00000000 	nop
 4fc:	30a50078 	andi	a1,a1,0x78
 500:	14a00005 	bnez	a1,518 <BgPoSyokudai_Draw+0x188>
 504:	00000000 	nop
 508:	44053000 	mfc1	a1,$f6
 50c:	3c018000 	lui	at,0x8000
 510:	10000007 	b	530 <BgPoSyokudai_Draw+0x1a0>
 514:	00a12825 	or	a1,a1,at
 518:	10000005 	b	530 <BgPoSyokudai_Draw+0x1a0>
 51c:	2405ffff 	li	a1,-1
 520:	44053000 	mfc1	a1,$f6
 524:	00000000 	nop
 528:	04a0fffb 	bltz	a1,518 <BgPoSyokudai_Draw+0x188>
 52c:	00000000 	nop
 530:	91190001 	lbu	t9,1(t0)
 534:	44d8f800 	ctc1	t8,$31
 538:	30a500ff 	andi	a1,a1,0xff
 53c:	44994000 	mtc1	t9,$f8
 540:	07210005 	bgez	t9,558 <BgPoSyokudai_Draw+0x1c8>
 544:	468042a0 	cvt.s.w	$f10,$f8
 548:	3c014f80 	lui	at,0x4f80
 54c:	44819000 	mtc1	at,$f18
 550:	00000000 	nop
 554:	46125280 	add.s	$f10,$f10,$f18
 558:	46025402 	mul.s	$f16,$f10,$f2
 55c:	24060001 	li	a2,1
 560:	4449f800 	cfc1	t1,$31
 564:	44c6f800 	ctc1	a2,$31
 568:	00000000 	nop
 56c:	46008124 	cvt.w.s	$f4,$f16
 570:	4446f800 	cfc1	a2,$31
 574:	00000000 	nop
 578:	30c60078 	andi	a2,a2,0x78
 57c:	10c00012 	beqz	a2,5c8 <BgPoSyokudai_Draw+0x238>
 580:	3c014f00 	lui	at,0x4f00
 584:	44812000 	mtc1	at,$f4
 588:	24060001 	li	a2,1
 58c:	46048101 	sub.s	$f4,$f16,$f4
 590:	44c6f800 	ctc1	a2,$31
 594:	00000000 	nop
 598:	46002124 	cvt.w.s	$f4,$f4
 59c:	4446f800 	cfc1	a2,$31
 5a0:	00000000 	nop
 5a4:	30c60078 	andi	a2,a2,0x78
 5a8:	14c00005 	bnez	a2,5c0 <BgPoSyokudai_Draw+0x230>
 5ac:	00000000 	nop
 5b0:	44062000 	mfc1	a2,$f4
 5b4:	3c018000 	lui	at,0x8000
 5b8:	10000007 	b	5d8 <BgPoSyokudai_Draw+0x248>
 5bc:	00c13025 	or	a2,a2,at
 5c0:	10000005 	b	5d8 <BgPoSyokudai_Draw+0x248>
 5c4:	2406ffff 	li	a2,-1
 5c8:	44062000 	mfc1	a2,$f4
 5cc:	00000000 	nop
 5d0:	04c0fffb 	bltz	a2,5c0 <BgPoSyokudai_Draw+0x230>
 5d4:	00000000 	nop
 5d8:	910a0002 	lbu	t2,2(t0)
 5dc:	44c9f800 	ctc1	t1,$31
 5e0:	30c600ff 	andi	a2,a2,0xff
 5e4:	448a3000 	mtc1	t2,$f6
 5e8:	3c014f80 	lui	at,0x4f80
 5ec:	05410004 	bgez	t2,600 <BgPoSyokudai_Draw+0x270>
 5f0:	46803220 	cvt.s.w	$f8,$f6
 5f4:	44819000 	mtc1	at,$f18
 5f8:	00000000 	nop
 5fc:	46124200 	add.s	$f8,$f8,$f18
 600:	46024282 	mul.s	$f10,$f8,$f2
 604:	24070001 	li	a3,1
 608:	3c014f00 	lui	at,0x4f00
 60c:	444bf800 	cfc1	t3,$31
 610:	44c7f800 	ctc1	a3,$31
 614:	00000000 	nop
 618:	46005424 	cvt.w.s	$f16,$f10
 61c:	4447f800 	cfc1	a3,$31
 620:	00000000 	nop
 624:	30e70078 	andi	a3,a3,0x78
 628:	50e00013 	beqzl	a3,678 <BgPoSyokudai_Draw+0x2e8>
 62c:	44078000 	mfc1	a3,$f16
 630:	44818000 	mtc1	at,$f16
 634:	24070001 	li	a3,1
 638:	46105401 	sub.s	$f16,$f10,$f16
 63c:	44c7f800 	ctc1	a3,$31
 640:	00000000 	nop
 644:	46008424 	cvt.w.s	$f16,$f16
 648:	4447f800 	cfc1	a3,$31
 64c:	00000000 	nop
 650:	30e70078 	andi	a3,a3,0x78
 654:	14e00005 	bnez	a3,66c <BgPoSyokudai_Draw+0x2dc>
 658:	00000000 	nop
 65c:	44078000 	mfc1	a3,$f16
 660:	3c018000 	lui	at,0x8000
 664:	10000007 	b	684 <BgPoSyokudai_Draw+0x2f4>
 668:	00e13825 	or	a3,a3,at
 66c:	10000005 	b	684 <BgPoSyokudai_Draw+0x2f4>
 670:	2407ffff 	li	a3,-1
 674:	44078000 	mfc1	a3,$f16
 678:	00000000 	nop
 67c:	04e0fffb 	bltz	a3,66c <BgPoSyokudai_Draw+0x2dc>
 680:	00000000 	nop
 684:	44cbf800 	ctc1	t3,$31
 688:	30e700ff 	andi	a3,a3,0xff
 68c:	0c000000 	jal	0 <BgPoSyokudai_Init>
 690:	afac0010 	sw	t4,16(sp)
 694:	0c000000 	jal	0 <BgPoSyokudai_Init>
 698:	8e240000 	lw	a0,0(s1)
 69c:	8e0202d0 	lw	v0,720(s0)
 6a0:	8fa80064 	lw	t0,100(sp)
 6a4:	3c0edb06 	lui	t6,0xdb06
 6a8:	244d0008 	addiu	t5,v0,8
 6ac:	ae0d02d0 	sw	t5,720(s0)
 6b0:	35ce0020 	ori	t6,t6,0x20
 6b4:	ac4e0000 	sw	t6,0(v0)
 6b8:	8e240000 	lw	a0,0(s1)
 6bc:	8fa90090 	lw	t1,144(sp)
 6c0:	240f0020 	li	t7,32
 6c4:	24180040 	li	t8,64
 6c8:	24190001 	li	t9,1
 6cc:	afb90018 	sw	t9,24(sp)
 6d0:	afb80014 	sw	t8,20(sp)
 6d4:	afaf0010 	sw	t7,16(sp)
 6d8:	afa0001c 	sw	zero,28(sp)
 6dc:	852a014e 	lh	t2,334(t1)
 6e0:	240e0080 	li	t6,128
 6e4:	240d0020 	li	t5,32
 6e8:	000a0823 	negu	at,t2
 6ec:	00015880 	sll	t3,at,0x2
 6f0:	01615821 	addu	t3,t3,at
 6f4:	000b5880 	sll	t3,t3,0x2
 6f8:	316c01ff 	andi	t4,t3,0x1ff
 6fc:	afac0020 	sw	t4,32(sp)
 700:	afad0024 	sw	t5,36(sp)
 704:	afae0028 	sw	t6,40(sp)
 708:	00002825 	move	a1,zero
 70c:	00003025 	move	a2,zero
 710:	00003825 	move	a3,zero
 714:	afa2005c 	sw	v0,92(sp)
 718:	0c000000 	jal	0 <BgPoSyokudai_Init>
 71c:	afa80064 	sw	t0,100(sp)
 720:	8fa3005c 	lw	v1,92(sp)
 724:	8fa80064 	lw	t0,100(sp)
 728:	3c18fa00 	lui	t8,0xfa00
 72c:	ac620004 	sw	v0,4(v1)
 730:	8e0202d0 	lw	v0,720(s0)
 734:	37188080 	ori	t8,t8,0x8080
 738:	44806000 	mtc1	zero,$f12
 73c:	244f0008 	addiu	t7,v0,8
 740:	ae0f02d0 	sw	t7,720(s0)
 744:	ac580000 	sw	t8,0(v0)
 748:	910c0001 	lbu	t4,1(t0)
 74c:	91090000 	lbu	t1,0(t0)
 750:	91180002 	lbu	t8,2(t0)
 754:	000c6c00 	sll	t5,t4,0x10
 758:	00095600 	sll	t2,t1,0x18
 75c:	014d7025 	or	t6,t2,t5
 760:	0018ca00 	sll	t9,t8,0x8
 764:	01d94825 	or	t1,t6,t9
 768:	352b00ff 	ori	t3,t1,0xff
 76c:	ac4b0004 	sw	t3,4(v0)
 770:	8e0202d0 	lw	v0,720(s0)
 774:	8fa40060 	lw	a0,96(sp)
 778:	3c0afb00 	lui	t2,0xfb00
 77c:	244c0008 	addiu	t4,v0,8
 780:	ae0c02d0 	sw	t4,720(s0)
 784:	ac4a0000 	sw	t2,0(v0)
 788:	90990001 	lbu	t9,1(a0)
 78c:	908f0000 	lbu	t7,0(a0)
 790:	908a0002 	lbu	t2,2(a0)
 794:	00194c00 	sll	t1,t9,0x10
 798:	000fc600 	sll	t8,t7,0x18
 79c:	03095825 	or	t3,t8,t1
 7a0:	000a6a00 	sll	t5,t2,0x8
 7a4:	016d7825 	or	t7,t3,t5
 7a8:	3c014250 	lui	at,0x4250
 7ac:	35ee00ff 	ori	t6,t7,0xff
 7b0:	44817000 	mtc1	at,$f14
 7b4:	44066000 	mfc1	a2,$f12
 7b8:	24070001 	li	a3,1
 7bc:	0c000000 	jal	0 <BgPoSyokudai_Init>
 7c0:	ac4e0004 	sw	t6,4(v0)
 7c4:	863907a0 	lh	t9,1952(s1)
 7c8:	0019c080 	sll	t8,t9,0x2
 7cc:	02384821 	addu	t1,s1,t8
 7d0:	0c000000 	jal	0 <BgPoSyokudai_Init>
 7d4:	8d240790 	lw	a0,1936(t1)
 7d8:	8fac0090 	lw	t4,144(sp)
 7dc:	34018000 	li	at,0x8000
 7e0:	24050001 	li	a1,1
 7e4:	858a00b6 	lh	t2,182(t4)
 7e8:	004a5823 	subu	t3,v0,t2
 7ec:	01616821 	addu	t5,t3,at
 7f0:	000d7c00 	sll	t7,t5,0x10
 7f4:	000f7403 	sra	t6,t7,0x10
 7f8:	448e2000 	mtc1	t6,$f4
 7fc:	3c010000 	lui	at,0x0
 800:	c432006c 	lwc1	$f18,108(at)
 804:	468021a0 	cvt.s.w	$f6,$f4
 808:	46123302 	mul.s	$f12,$f6,$f18
 80c:	0c000000 	jal	0 <BgPoSyokudai_Init>
 810:	00000000 	nop
 814:	3c010000 	lui	at,0x0
 818:	c42c0070 	lwc1	$f12,112(at)
 81c:	24070001 	li	a3,1
 820:	44066000 	mfc1	a2,$f12
 824:	0c000000 	jal	0 <BgPoSyokudai_Init>
 828:	46006386 	mov.s	$f14,$f12
 82c:	8e0202d0 	lw	v0,720(s0)
 830:	3c18da38 	lui	t8,0xda38
 834:	37180003 	ori	t8,t8,0x3
 838:	24590008 	addiu	t9,v0,8
 83c:	ae1902d0 	sw	t9,720(s0)
 840:	ac580000 	sw	t8,0(v0)
 844:	8e240000 	lw	a0,0(s1)
 848:	3c050000 	lui	a1,0x0
 84c:	24a50030 	addiu	a1,a1,48
 850:	24060170 	li	a2,368
 854:	0c000000 	jal	0 <BgPoSyokudai_Init>
 858:	afa20050 	sw	v0,80(sp)
 85c:	8fa30050 	lw	v1,80(sp)
 860:	3c0a0000 	lui	t2,0x0
 864:	254a0000 	addiu	t2,t2,0
 868:	ac620004 	sw	v0,4(v1)
 86c:	8e0202d0 	lw	v0,720(s0)
 870:	3c0cde00 	lui	t4,0xde00
 874:	24490008 	addiu	t1,v0,8
 878:	ae0902d0 	sw	t1,720(s0)
 87c:	ac4a0004 	sw	t2,4(v0)
 880:	ac4c0000 	sw	t4,0(v0)
 884:	3c060000 	lui	a2,0x0
 888:	24c60048 	addiu	a2,a2,72
 88c:	27a40070 	addiu	a0,sp,112
 890:	8e250000 	lw	a1,0(s1)
 894:	0c000000 	jal	0 <BgPoSyokudai_Init>
 898:	24070175 	li	a3,373
 89c:	8fbf003c 	lw	ra,60(sp)
 8a0:	8fb00034 	lw	s0,52(sp)
 8a4:	8fb10038 	lw	s1,56(sp)
 8a8:	03e00008 	jr	ra
 8ac:	27bd0090 	addiu	sp,sp,144
