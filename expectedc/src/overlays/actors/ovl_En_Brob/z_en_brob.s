
build/src/overlays/actors/ovl_En_Brob/z_en_brob.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnBrob_Init>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afb00024 	sw	s0,36(sp)
   8:	00808025 	move	s0,a0
   c:	afb10028 	sw	s1,40(sp)
  10:	00a08825 	move	s1,a1
  14:	afbf002c 	sw	ra,44(sp)
  18:	260e01b0 	addiu	t6,s0,432
  1c:	260f01ec 	addiu	t7,s0,492
  20:	00a02025 	move	a0,a1
  24:	3c060600 	lui	a2,0x600
  28:	3c070600 	lui	a3,0x600
  2c:	2418000a 	li	t8,10
  30:	afa00034 	sw	zero,52(sp)
  34:	afb80018 	sw	t8,24(sp)
  38:	24e71750 	addiu	a3,a3,5968
  3c:	24c615d8 	addiu	a2,a2,5592
  40:	26050164 	addiu	a1,s0,356
  44:	afaf0014 	sw	t7,20(sp)
  48:	0c000000 	jal	0 <EnBrob_Init>
  4c:	afae0010 	sw	t6,16(sp)
  50:	02002025 	move	a0,s0
  54:	0c000000 	jal	0 <EnBrob_Init>
  58:	00002825 	move	a1,zero
  5c:	3c040600 	lui	a0,0x600
  60:	24841a70 	addiu	a0,a0,6768
  64:	0c000000 	jal	0 <EnBrob_Init>
  68:	27a50034 	addiu	a1,sp,52
  6c:	02202025 	move	a0,s1
  70:	26250810 	addiu	a1,s1,2064
  74:	02003025 	move	a2,s0
  78:	0c000000 	jal	0 <EnBrob_Init>
  7c:	8fa70034 	lw	a3,52(sp)
  80:	ae02014c 	sw	v0,332(s0)
  84:	26050228 	addiu	a1,s0,552
  88:	afa50030 	sw	a1,48(sp)
  8c:	0c000000 	jal	0 <EnBrob_Init>
  90:	02202025 	move	a0,s1
  94:	3c070000 	lui	a3,0x0
  98:	8fa50030 	lw	a1,48(sp)
  9c:	24e70000 	addiu	a3,a3,0
  a0:	02202025 	move	a0,s1
  a4:	0c000000 	jal	0 <EnBrob_Init>
  a8:	02003025 	move	a2,s0
  ac:	26050274 	addiu	a1,s0,628
  b0:	afa50030 	sw	a1,48(sp)
  b4:	0c000000 	jal	0 <EnBrob_Init>
  b8:	02202025 	move	a0,s1
  bc:	3c070000 	lui	a3,0x0
  c0:	8fa50030 	lw	a1,48(sp)
  c4:	24e70000 	addiu	a3,a3,0
  c8:	02202025 	move	a0,s1
  cc:	0c000000 	jal	0 <EnBrob_Init>
  d0:	02003025 	move	a2,s0
  d4:	3c060000 	lui	a2,0x0
  d8:	24c60000 	addiu	a2,a2,0
  dc:	26040098 	addiu	a0,s0,152
  e0:	0c000000 	jal	0 <EnBrob_Init>
  e4:	00002825 	move	a1,zero
  e8:	8619001c 	lh	t9,28(s0)
  ec:	02002025 	move	a0,s0
  f0:	3c053ba3 	lui	a1,0x3ba3
  f4:	00194203 	sra	t0,t9,0x8
  f8:	310900ff 	andi	t1,t0,0xff
  fc:	15200016 	bnez	t1,158 <EnBrob_Init+0x158>
 100:	00000000 	nop
 104:	3c053c23 	lui	a1,0x3c23
 108:	34a5d70a 	ori	a1,a1,0xd70a
 10c:	0c000000 	jal	0 <EnBrob_Init>
 110:	02002025 	move	a0,s0
 114:	860a001c 	lh	t2,28(s0)
 118:	240100ff 	li	at,255
 11c:	314b00ff 	andi	t3,t2,0xff
 120:	a60b001c 	sh	t3,28(s0)
 124:	8602001c 	lh	v0,28(s0)
 128:	1041001d 	beq	v0,at,1a0 <EnBrob_Init+0x1a0>
 12c:	304c00ff 	andi	t4,v0,0xff
 130:	448c2000 	mtc1	t4,$f4
 134:	3c010000 	lui	at,0x0
 138:	c4280000 	lwc1	$f8,0(at)
 13c:	468021a0 	cvt.s.w	$f6,$f4
 140:	c6100054 	lwc1	$f16,84(s0)
 144:	46083282 	mul.s	$f10,$f6,$f8
 148:	00000000 	nop
 14c:	460a8482 	mul.s	$f18,$f16,$f10
 150:	10000013 	b	1a0 <EnBrob_Init+0x1a0>
 154:	e6120054 	swc1	$f18,84(s0)
 158:	0c000000 	jal	0 <EnBrob_Init>
 15c:	34a5d70a 	ori	a1,a1,0xd70a
 160:	860d001c 	lh	t5,28(s0)
 164:	240100ff 	li	at,255
 168:	31ae00ff 	andi	t6,t5,0xff
 16c:	a60e001c 	sh	t6,28(s0)
 170:	8602001c 	lh	v0,28(s0)
 174:	1041000a 	beq	v0,at,1a0 <EnBrob_Init+0x1a0>
 178:	304f00ff 	andi	t7,v0,0xff
 17c:	448f2000 	mtc1	t7,$f4
 180:	3c010000 	lui	at,0x0
 184:	c4280000 	lwc1	$f8,0(at)
 188:	468021a0 	cvt.s.w	$f6,$f4
 18c:	c60a0054 	lwc1	$f10,84(s0)
 190:	46083402 	mul.s	$f16,$f6,$f8
 194:	00000000 	nop
 198:	46105482 	mul.s	$f18,$f10,$f16
 19c:	e6120054 	swc1	$f18,84(s0)
 1a0:	86180268 	lh	t8,616(s0)
 1a4:	c6080050 	lwc1	$f8,80(s0)
 1a8:	860b02b4 	lh	t3,692(s0)
 1ac:	44982000 	mtc1	t8,$f4
 1b0:	3c010000 	lui	at,0x0
 1b4:	c6120054 	lwc1	$f18,84(s0)
 1b8:	468021a0 	cvt.s.w	$f6,$f4
 1bc:	860e02b6 	lh	t6,694(s0)
 1c0:	861902b8 	lh	t9,696(s0)
 1c4:	02002025 	move	a0,s0
 1c8:	02202825 	move	a1,s1
 1cc:	46083282 	mul.s	$f10,$f6,$f8
 1d0:	4600540d 	trunc.w.s	$f16,$f10
 1d4:	448b5000 	mtc1	t3,$f10
 1d8:	44088000 	mfc1	t0,$f16
 1dc:	46805420 	cvt.s.w	$f16,$f10
 1e0:	a6080268 	sh	t0,616(s0)
 1e4:	c4240000 	lwc1	$f4,0(at)
 1e8:	2401fffe 	li	at,-2
 1ec:	a600026c 	sh	zero,620(s0)
 1f0:	46049182 	mul.s	$f6,$f18,$f4
 1f4:	c6120050 	lwc1	$f18,80(s0)
 1f8:	ae0001a8 	sw	zero,424(s0)
 1fc:	46128102 	mul.s	$f4,$f16,$f18
 200:	c6100054 	lwc1	$f16,84(s0)
 204:	4600320d 	trunc.w.s	$f8,$f6
 208:	4600218d 	trunc.w.s	$f6,$f4
 20c:	440a4000 	mfc1	t2,$f8
 210:	448e4000 	mtc1	t6,$f8
 214:	440d3000 	mfc1	t5,$f6
 218:	468042a0 	cvt.s.w	$f10,$f8
 21c:	44993000 	mtc1	t9,$f6
 220:	a60a026a 	sh	t2,618(s0)
 224:	8e0a0004 	lw	t2,4(s0)
 228:	a60d02b4 	sh	t5,692(s0)
 22c:	46803220 	cvt.s.w	$f8,$f6
 230:	46105482 	mul.s	$f18,$f10,$f16
 234:	c60a0054 	lwc1	$f10,84(s0)
 238:	01415824 	and	t3,t2,at
 23c:	ae0b0004 	sw	t3,4(s0)
 240:	460a4402 	mul.s	$f16,$f8,$f10
 244:	4600910d 	trunc.w.s	$f4,$f18
 248:	4600848d 	trunc.w.s	$f18,$f16
 24c:	44182000 	mfc1	t8,$f4
 250:	44099000 	mfc1	t1,$f18
 254:	a61802b6 	sh	t8,694(s0)
 258:	0c000000 	jal	0 <EnBrob_Init>
 25c:	a60902b8 	sh	t1,696(s0)
 260:	8fbf002c 	lw	ra,44(sp)
 264:	8fb00024 	lw	s0,36(sp)
 268:	8fb10028 	lw	s1,40(sp)
 26c:	03e00008 	jr	ra
 270:	27bd0040 	addiu	sp,sp,64

00000274 <EnBrob_Destroy>:
 274:	27bdffe8 	addiu	sp,sp,-24
 278:	afa40018 	sw	a0,24(sp)
 27c:	8fae0018 	lw	t6,24(sp)
 280:	afbf0014 	sw	ra,20(sp)
 284:	00a03825 	move	a3,a1
 288:	00a02025 	move	a0,a1
 28c:	8dc6014c 	lw	a2,332(t6)
 290:	afa7001c 	sw	a3,28(sp)
 294:	0c000000 	jal	0 <EnBrob_Init>
 298:	24a50810 	addiu	a1,a1,2064
 29c:	8fa50018 	lw	a1,24(sp)
 2a0:	8fa4001c 	lw	a0,28(sp)
 2a4:	0c000000 	jal	0 <EnBrob_Init>
 2a8:	24a50228 	addiu	a1,a1,552
 2ac:	8fa50018 	lw	a1,24(sp)
 2b0:	8fa4001c 	lw	a0,28(sp)
 2b4:	0c000000 	jal	0 <EnBrob_Init>
 2b8:	24a50274 	addiu	a1,a1,628
 2bc:	8fbf0014 	lw	ra,20(sp)
 2c0:	27bd0018 	addiu	sp,sp,24
 2c4:	03e00008 	jr	ra
 2c8:	00000000 	nop

000002cc <func_809CADDC>:
 2cc:	27bdffe8 	addiu	sp,sp,-24
 2d0:	00803825 	move	a3,a0
 2d4:	afbf0014 	sw	ra,20(sp)
 2d8:	afa5001c 	sw	a1,28(sp)
 2dc:	8ce6014c 	lw	a2,332(a3)
 2e0:	00a02025 	move	a0,a1
 2e4:	24a50810 	addiu	a1,a1,2064
 2e8:	0c000000 	jal	0 <EnBrob_Init>
 2ec:	afa70018 	sw	a3,24(sp)
 2f0:	8fa70018 	lw	a3,24(sp)
 2f4:	3c0f0000 	lui	t7,0x0
 2f8:	25ef0000 	addiu	t7,t7,0
 2fc:	8cf801a8 	lw	t8,424(a3)
 300:	3c080000 	lui	t0,0x0
 304:	241900c8 	li	t9,200
 308:	15f80003 	bne	t7,t8,318 <func_809CADDC+0x4c>
 30c:	25080000 	addiu	t0,t0,0
 310:	10000002 	b	31c <func_809CADDC+0x50>
 314:	a4f901ac 	sh	t9,428(a3)
 318:	a4e001ac 	sh	zero,428(a3)
 31c:	a4e001ae 	sh	zero,430(a3)
 320:	ace801a8 	sw	t0,424(a3)
 324:	8fbf0014 	lw	ra,20(sp)
 328:	27bd0018 	addiu	sp,sp,24
 32c:	03e00008 	jr	ra
 330:	00000000 	nop

00000334 <func_809CAE44>:
 334:	27bdffe8 	addiu	sp,sp,-24
 338:	afa5001c 	sw	a1,28(sp)
 33c:	afbf0014 	sw	ra,20(sp)
 340:	afa40018 	sw	a0,24(sp)
 344:	3c050600 	lui	a1,0x600
 348:	24a51750 	addiu	a1,a1,5968
 34c:	0c000000 	jal	0 <EnBrob_Init>
 350:	24840164 	addiu	a0,a0,356
 354:	8fa4001c 	lw	a0,28(sp)
 358:	8fae0018 	lw	t6,24(sp)
 35c:	24850810 	addiu	a1,a0,2064
 360:	0c000000 	jal	0 <EnBrob_Init>
 364:	8dc6014c 	lw	a2,332(t6)
 368:	8fa20018 	lw	v0,24(sp)
 36c:	3c180000 	lui	t8,0x0
 370:	240f03e8 	li	t7,1000
 374:	27180000 	addiu	t8,t8,0
 378:	a44f01ae 	sh	t7,430(v0)
 37c:	ac5801a8 	sw	t8,424(v0)
 380:	8fbf0014 	lw	ra,20(sp)
 384:	27bd0018 	addiu	sp,sp,24
 388:	03e00008 	jr	ra
 38c:	00000000 	nop

00000390 <func_809CAEA0>:
 390:	27bdffe8 	addiu	sp,sp,-24
 394:	afbf0014 	sw	ra,20(sp)
 398:	00803825 	move	a3,a0
 39c:	3c050600 	lui	a1,0x600
 3a0:	24a51958 	addiu	a1,a1,6488
 3a4:	afa70018 	sw	a3,24(sp)
 3a8:	24840164 	addiu	a0,a0,356
 3ac:	0c000000 	jal	0 <EnBrob_Init>
 3b0:	3c06c0a0 	lui	a2,0xc0a0
 3b4:	8fa70018 	lw	a3,24(sp)
 3b8:	3c180000 	lui	t8,0x0
 3bc:	240e1f40 	li	t6,8000
 3c0:	240f04b0 	li	t7,1200
 3c4:	27180000 	addiu	t8,t8,0
 3c8:	a4ee01ae 	sh	t6,430(a3)
 3cc:	a4ef01ac 	sh	t7,428(a3)
 3d0:	acf801a8 	sw	t8,424(a3)
 3d4:	8fbf0014 	lw	ra,20(sp)
 3d8:	27bd0018 	addiu	sp,sp,24
 3dc:	03e00008 	jr	ra
 3e0:	00000000 	nop

000003e4 <func_809CAEF4>:
 3e4:	27bdffd8 	addiu	sp,sp,-40
 3e8:	afb00020 	sw	s0,32(sp)
 3ec:	00808025 	move	s0,a0
 3f0:	afbf0024 	sw	ra,36(sp)
 3f4:	3c050600 	lui	a1,0x600
 3f8:	24a50290 	addiu	a1,a1,656
 3fc:	24840164 	addiu	a0,a0,356
 400:	0c000000 	jal	0 <EnBrob_Init>
 404:	3c06c0a0 	lui	a2,0xc0a0
 408:	860e01ae 	lh	t6,430(s0)
 40c:	3c0142fa 	lui	at,0x42fa
 410:	44814000 	mtc1	at,$f8
 414:	448e2000 	mtc1	t6,$f4
 418:	24190050 	li	t9,80
 41c:	02002025 	move	a0,s0
 420:	468021a0 	cvt.s.w	$f6,$f4
 424:	00002825 	move	a1,zero
 428:	240600ff 	li	a2,255
 42c:	00003825 	move	a3,zero
 430:	46083281 	sub.s	$f10,$f6,$f8
 434:	4600540d 	trunc.w.s	$f16,$f10
 438:	44188000 	mfc1	t8,$f16
 43c:	00000000 	nop
 440:	a61801ae 	sh	t8,430(s0)
 444:	0c000000 	jal	0 <EnBrob_Init>
 448:	afb90010 	sw	t9,16(sp)
 44c:	02002025 	move	a0,s0
 450:	0c000000 	jal	0 <EnBrob_Init>
 454:	2405389e 	li	a1,14494
 458:	3c080000 	lui	t0,0x0
 45c:	25080000 	addiu	t0,t0,0
 460:	ae0801a8 	sw	t0,424(s0)
 464:	8fbf0024 	lw	ra,36(sp)
 468:	8fb00020 	lw	s0,32(sp)
 46c:	27bd0028 	addiu	sp,sp,40
 470:	03e00008 	jr	ra
 474:	00000000 	nop

00000478 <func_809CAF88>:
 478:	27bdffd8 	addiu	sp,sp,-40
 47c:	afa40028 	sw	a0,40(sp)
 480:	afbf0024 	sw	ra,36(sp)
 484:	3c040600 	lui	a0,0x600
 488:	0c000000 	jal	0 <EnBrob_Init>
 48c:	24841750 	addiu	a0,a0,5968
 490:	44822000 	mtc1	v0,$f4
 494:	3c01c0a0 	lui	at,0xc0a0
 498:	44814000 	mtc1	at,$f8
 49c:	46802120 	cvt.s.w	$f4,$f4
 4a0:	8fa40028 	lw	a0,40(sp)
 4a4:	44803000 	mtc1	zero,$f6
 4a8:	3c050600 	lui	a1,0x600
 4ac:	240e0002 	li	t6,2
 4b0:	afae0014 	sw	t6,20(sp)
 4b4:	44072000 	mfc1	a3,$f4
 4b8:	24a51750 	addiu	a1,a1,5968
 4bc:	3c06bf80 	lui	a2,0xbf80
 4c0:	e7a80018 	swc1	$f8,24(sp)
 4c4:	24840164 	addiu	a0,a0,356
 4c8:	0c000000 	jal	0 <EnBrob_Init>
 4cc:	e7a60010 	swc1	$f6,16(sp)
 4d0:	8fa20028 	lw	v0,40(sp)
 4d4:	3c180000 	lui	t8,0x0
 4d8:	240f203a 	li	t7,8250
 4dc:	27180000 	addiu	t8,t8,0
 4e0:	a44f01ae 	sh	t7,430(v0)
 4e4:	ac5801a8 	sw	t8,424(v0)
 4e8:	8fbf0024 	lw	ra,36(sp)
 4ec:	27bd0028 	addiu	sp,sp,40
 4f0:	03e00008 	jr	ra
 4f4:	00000000 	nop

000004f8 <func_809CB008>:
 4f8:	27bdffe8 	addiu	sp,sp,-24
 4fc:	afbf0014 	sw	ra,20(sp)
 500:	00803825 	move	a3,a0
 504:	3c050600 	lui	a1,0x600
 508:	24a51678 	addiu	a1,a1,5752
 50c:	afa70018 	sw	a3,24(sp)
 510:	24840164 	addiu	a0,a0,356
 514:	0c000000 	jal	0 <EnBrob_Init>
 518:	3c06c0a0 	lui	a2,0xc0a0
 51c:	8fa70018 	lw	a3,24(sp)
 520:	3c0f0000 	lui	t7,0x0
 524:	240e000a 	li	t6,10
 528:	25ef0000 	addiu	t7,t7,0
 52c:	a4ee01ac 	sh	t6,428(a3)
 530:	acef01a8 	sw	t7,424(a3)
 534:	8fbf0014 	lw	ra,20(sp)
 538:	27bd0018 	addiu	sp,sp,24
 53c:	03e00008 	jr	ra
 540:	00000000 	nop

00000544 <func_809CB054>:
 544:	27bdffd8 	addiu	sp,sp,-40
 548:	afbf0024 	sw	ra,36(sp)
 54c:	afb00020 	sw	s0,32(sp)
 550:	afa5002c 	sw	a1,44(sp)
 554:	848201ac 	lh	v0,428(a0)
 558:	00808025 	move	s0,a0
 55c:	10400003 	beqz	v0,56c <func_809CB054+0x28>
 560:	244effff 	addiu	t6,v0,-1
 564:	a48e01ac 	sh	t6,428(a0)
 568:	848201ac 	lh	v0,428(a0)
 56c:	1440001d 	bnez	v0,5e4 <func_809CB054+0xa0>
 570:	28410051 	slti	at,v0,81
 574:	0c000000 	jal	0 <EnBrob_Init>
 578:	02002025 	move	a0,s0
 57c:	1040000e 	beqz	v0,5b8 <func_809CB054+0x74>
 580:	3c014396 	lui	at,0x4396
 584:	3c013f80 	lui	at,0x3f80
 588:	44812000 	mtc1	at,$f4
 58c:	8607008a 	lh	a3,138(s0)
 590:	8fa4002c 	lw	a0,44(sp)
 594:	02002825 	move	a1,s0
 598:	3c0640a0 	lui	a2,0x40a0
 59c:	0c000000 	jal	0 <EnBrob_Init>
 5a0:	e7a40010 	swc1	$f4,16(sp)
 5a4:	02002025 	move	a0,s0
 5a8:	0c000000 	jal	0 <EnBrob_Init>
 5ac:	8fa5002c 	lw	a1,44(sp)
 5b0:	10000010 	b	5f4 <func_809CB054+0xb0>
 5b4:	8fbf0024 	lw	ra,36(sp)
 5b8:	c6060090 	lwc1	$f6,144(s0)
 5bc:	44814000 	mtc1	at,$f8
 5c0:	02002025 	move	a0,s0
 5c4:	4608303c 	c.lt.s	$f6,$f8
 5c8:	00000000 	nop
 5cc:	45020009 	bc1fl	5f4 <func_809CB054+0xb0>
 5d0:	8fbf0024 	lw	ra,36(sp)
 5d4:	0c000000 	jal	0 <EnBrob_Init>
 5d8:	8fa5002c 	lw	a1,44(sp)
 5dc:	10000005 	b	5f4 <func_809CB054+0xb0>
 5e0:	8fbf0024 	lw	ra,36(sp)
 5e4:	14200002 	bnez	at,5f0 <func_809CB054+0xac>
 5e8:	240f0050 	li	t7,80
 5ec:	a20f0114 	sb	t7,276(s0)
 5f0:	8fbf0024 	lw	ra,36(sp)
 5f4:	8fb00020 	lw	s0,32(sp)
 5f8:	27bd0028 	addiu	sp,sp,40
 5fc:	03e00008 	jr	ra
 600:	00000000 	nop

00000604 <func_809CB114>:
 604:	27bdffe8 	addiu	sp,sp,-24
 608:	afa5001c 	sw	a1,28(sp)
 60c:	00802825 	move	a1,a0
 610:	afbf0014 	sw	ra,20(sp)
 614:	afa40018 	sw	a0,24(sp)
 618:	afa50018 	sw	a1,24(sp)
 61c:	0c000000 	jal	0 <EnBrob_Init>
 620:	24840164 	addiu	a0,a0,356
 624:	10400005 	beqz	v0,63c <func_809CB114+0x38>
 628:	8fa50018 	lw	a1,24(sp)
 62c:	0c000000 	jal	0 <EnBrob_Init>
 630:	00a02025 	move	a0,a1
 634:	10000031 	b	6fc <func_809CB114+0xf8>
 638:	8fbf0014 	lw	ra,20(sp)
 63c:	3c014100 	lui	at,0x4100
 640:	c4a0017c 	lwc1	$f0,380(a1)
 644:	44812000 	mtc1	at,$f4
 648:	3c014140 	lui	at,0x4140
 64c:	4604003c 	c.lt.s	$f0,$f4
 650:	00000000 	nop
 654:	4502000d 	bc1fl	68c <func_809CB114+0x88>
 658:	44812000 	mtc1	at,$f4
 65c:	84ae01ae 	lh	t6,430(a1)
 660:	3c01447a 	lui	at,0x447a
 664:	44815000 	mtc1	at,$f10
 668:	448e3000 	mtc1	t6,$f6
 66c:	00000000 	nop
 670:	46803220 	cvt.s.w	$f8,$f6
 674:	460a4400 	add.s	$f16,$f8,$f10
 678:	4600848d 	trunc.w.s	$f18,$f16
 67c:	44189000 	mfc1	t8,$f18
 680:	1000001d 	b	6f8 <func_809CB114+0xf4>
 684:	a4b801ae 	sh	t8,430(a1)
 688:	44812000 	mtc1	at,$f4
 68c:	00000000 	nop
 690:	4604003c 	c.lt.s	$f0,$f4
 694:	00000000 	nop
 698:	4502000d 	bc1fl	6d0 <func_809CB114+0xcc>
 69c:	84aa01ae 	lh	t2,430(a1)
 6a0:	84b901ae 	lh	t9,430(a1)
 6a4:	3c01437a 	lui	at,0x437a
 6a8:	44815000 	mtc1	at,$f10
 6ac:	44993000 	mtc1	t9,$f6
 6b0:	00000000 	nop
 6b4:	46803220 	cvt.s.w	$f8,$f6
 6b8:	460a4400 	add.s	$f16,$f8,$f10
 6bc:	4600848d 	trunc.w.s	$f18,$f16
 6c0:	44099000 	mfc1	t1,$f18
 6c4:	1000000c 	b	6f8 <func_809CB114+0xf4>
 6c8:	a4a901ae 	sh	t1,430(a1)
 6cc:	84aa01ae 	lh	t2,430(a1)
 6d0:	3c01437a 	lui	at,0x437a
 6d4:	44814000 	mtc1	at,$f8
 6d8:	448a2000 	mtc1	t2,$f4
 6dc:	00000000 	nop
 6e0:	468021a0 	cvt.s.w	$f6,$f4
 6e4:	46083281 	sub.s	$f10,$f6,$f8
 6e8:	4600540d 	trunc.w.s	$f16,$f10
 6ec:	440c8000 	mfc1	t4,$f16
 6f0:	00000000 	nop
 6f4:	a4ac01ae 	sh	t4,430(a1)
 6f8:	8fbf0014 	lw	ra,20(sp)
 6fc:	27bd0018 	addiu	sp,sp,24
 700:	03e00008 	jr	ra
 704:	00000000 	nop

00000708 <func_809CB218>:
 708:	27bdffd8 	addiu	sp,sp,-40
 70c:	afb00018 	sw	s0,24(sp)
 710:	00808025 	move	s0,a0
 714:	afbf001c 	sw	ra,28(sp)
 718:	24840164 	addiu	a0,a0,356
 71c:	afa5002c 	sw	a1,44(sp)
 720:	0c000000 	jal	0 <EnBrob_Init>
 724:	afa40024 	sw	a0,36(sp)
 728:	8fa40024 	lw	a0,36(sp)
 72c:	0c000000 	jal	0 <EnBrob_Init>
 730:	3c0540c0 	lui	a1,0x40c0
 734:	14400004 	bnez	v0,748 <func_809CB218+0x40>
 738:	8fa40024 	lw	a0,36(sp)
 73c:	0c000000 	jal	0 <EnBrob_Init>
 740:	3c054170 	lui	a1,0x4170
 744:	10400003 	beqz	v0,754 <func_809CB218+0x4c>
 748:	02002025 	move	a0,s0
 74c:	0c000000 	jal	0 <EnBrob_Init>
 750:	2405394a 	li	a1,14666
 754:	860201ac 	lh	v0,428(s0)
 758:	3c0143fa 	lui	at,0x43fa
 75c:	10400003 	beqz	v0,76c <func_809CB218+0x64>
 760:	244effff 	addiu	t6,v0,-1
 764:	a60e01ac 	sh	t6,428(s0)
 768:	860201ac 	lh	v0,428(s0)
 76c:	5440000a 	bnezl	v0,798 <func_809CB218+0x90>
 770:	8fbf001c 	lw	ra,28(sp)
 774:	44812000 	mtc1	at,$f4
 778:	c6060090 	lwc1	$f6,144(s0)
 77c:	4606203c 	c.lt.s	$f4,$f6
 780:	00000000 	nop
 784:	45020004 	bc1fl	798 <func_809CB218+0x90>
 788:	8fbf001c 	lw	ra,28(sp)
 78c:	0c000000 	jal	0 <EnBrob_Init>
 790:	02002025 	move	a0,s0
 794:	8fbf001c 	lw	ra,28(sp)
 798:	8fb00018 	lw	s0,24(sp)
 79c:	27bd0028 	addiu	sp,sp,40
 7a0:	03e00008 	jr	ra
 7a4:	00000000 	nop

000007a8 <func_809CB2B8>:
 7a8:	27bdffe8 	addiu	sp,sp,-24
 7ac:	afbf0014 	sw	ra,20(sp)
 7b0:	00803025 	move	a2,a0
 7b4:	afa5001c 	sw	a1,28(sp)
 7b8:	afa60018 	sw	a2,24(sp)
 7bc:	0c000000 	jal	0 <EnBrob_Init>
 7c0:	24840164 	addiu	a0,a0,356
 7c4:	10400007 	beqz	v0,7e4 <func_809CB2B8+0x3c>
 7c8:	8fa60018 	lw	a2,24(sp)
 7cc:	00c02025 	move	a0,a2
 7d0:	8fa5001c 	lw	a1,28(sp)
 7d4:	0c000000 	jal	0 <EnBrob_Init>
 7d8:	afa60018 	sw	a2,24(sp)
 7dc:	10000013 	b	82c <func_809CB2B8+0x84>
 7e0:	8fa60018 	lw	a2,24(sp)
 7e4:	3c014100 	lui	at,0x4100
 7e8:	44813000 	mtc1	at,$f6
 7ec:	c4c4017c 	lwc1	$f4,380(a2)
 7f0:	4606203c 	c.lt.s	$f4,$f6
 7f4:	00000000 	nop
 7f8:	4502000d 	bc1fl	830 <func_809CB2B8+0x88>
 7fc:	24190050 	li	t9,80
 800:	84ce01ae 	lh	t6,430(a2)
 804:	3c010000 	lui	at,0x0
 808:	c4300000 	lwc1	$f16,0(at)
 80c:	448e4000 	mtc1	t6,$f8
 810:	00000000 	nop
 814:	468042a0 	cvt.s.w	$f10,$f8
 818:	46105481 	sub.s	$f18,$f10,$f16
 81c:	4600910d 	trunc.w.s	$f4,$f18
 820:	44182000 	mfc1	t8,$f4
 824:	00000000 	nop
 828:	a4d801ae 	sh	t8,430(a2)
 82c:	24190050 	li	t9,80
 830:	a0d90114 	sb	t9,276(a2)
 834:	8fbf0014 	lw	ra,20(sp)
 838:	27bd0018 	addiu	sp,sp,24
 83c:	03e00008 	jr	ra
 840:	00000000 	nop

00000844 <func_809CB354>:
 844:	27bdffe8 	addiu	sp,sp,-24
 848:	afbf0014 	sw	ra,20(sp)
 84c:	00803025 	move	a2,a0
 850:	afa5001c 	sw	a1,28(sp)
 854:	afa60018 	sw	a2,24(sp)
 858:	0c000000 	jal	0 <EnBrob_Init>
 85c:	24840164 	addiu	a0,a0,356
 860:	10400006 	beqz	v0,87c <func_809CB354+0x38>
 864:	8fa60018 	lw	a2,24(sp)
 868:	00c02025 	move	a0,a2
 86c:	0c000000 	jal	0 <EnBrob_Init>
 870:	8fa5001c 	lw	a1,28(sp)
 874:	10000031 	b	93c <func_809CB354+0xf8>
 878:	8fbf0014 	lw	ra,20(sp)
 87c:	3c014100 	lui	at,0x4100
 880:	c4c0017c 	lwc1	$f0,380(a2)
 884:	44812000 	mtc1	at,$f4
 888:	3c014140 	lui	at,0x4140
 88c:	4604003c 	c.lt.s	$f0,$f4
 890:	00000000 	nop
 894:	4502000d 	bc1fl	8cc <func_809CB354+0x88>
 898:	44812000 	mtc1	at,$f4
 89c:	84ce01ae 	lh	t6,430(a2)
 8a0:	3c01447a 	lui	at,0x447a
 8a4:	44815000 	mtc1	at,$f10
 8a8:	448e3000 	mtc1	t6,$f6
 8ac:	00000000 	nop
 8b0:	46803220 	cvt.s.w	$f8,$f6
 8b4:	460a4401 	sub.s	$f16,$f8,$f10
 8b8:	4600848d 	trunc.w.s	$f18,$f16
 8bc:	44189000 	mfc1	t8,$f18
 8c0:	1000001d 	b	938 <func_809CB354+0xf4>
 8c4:	a4d801ae 	sh	t8,430(a2)
 8c8:	44812000 	mtc1	at,$f4
 8cc:	00000000 	nop
 8d0:	4604003c 	c.lt.s	$f0,$f4
 8d4:	00000000 	nop
 8d8:	4502000d 	bc1fl	910 <func_809CB354+0xcc>
 8dc:	84ca01ae 	lh	t2,430(a2)
 8e0:	84d901ae 	lh	t9,430(a2)
 8e4:	3c01437a 	lui	at,0x437a
 8e8:	44815000 	mtc1	at,$f10
 8ec:	44993000 	mtc1	t9,$f6
 8f0:	00000000 	nop
 8f4:	46803220 	cvt.s.w	$f8,$f6
 8f8:	460a4401 	sub.s	$f16,$f8,$f10
 8fc:	4600848d 	trunc.w.s	$f18,$f16
 900:	44099000 	mfc1	t1,$f18
 904:	1000000c 	b	938 <func_809CB354+0xf4>
 908:	a4c901ae 	sh	t1,430(a2)
 90c:	84ca01ae 	lh	t2,430(a2)
 910:	3c01437a 	lui	at,0x437a
 914:	44814000 	mtc1	at,$f8
 918:	448a2000 	mtc1	t2,$f4
 91c:	00000000 	nop
 920:	468021a0 	cvt.s.w	$f6,$f4
 924:	46083280 	add.s	$f10,$f6,$f8
 928:	4600540d 	trunc.w.s	$f16,$f10
 92c:	440c8000 	mfc1	t4,$f16
 930:	00000000 	nop
 934:	a4cc01ae 	sh	t4,430(a2)
 938:	8fbf0014 	lw	ra,20(sp)
 93c:	27bd0018 	addiu	sp,sp,24
 940:	03e00008 	jr	ra
 944:	00000000 	nop

00000948 <func_809CB458>:
 948:	27bdff68 	addiu	sp,sp,-152
 94c:	afb1005c 	sw	s1,92(sp)
 950:	afb00058 	sw	s0,88(sp)
 954:	00808825 	move	s1,a0
 958:	afbf0074 	sw	ra,116(sp)
 95c:	afb60070 	sw	s6,112(sp)
 960:	24900164 	addiu	s0,a0,356
 964:	00a0b025 	move	s6,a1
 968:	afb5006c 	sw	s5,108(sp)
 96c:	afb40068 	sw	s4,104(sp)
 970:	afb30064 	sw	s3,100(sp)
 974:	afb20060 	sw	s2,96(sp)
 978:	f7be0050 	sdc1	$f30,80(sp)
 97c:	f7bc0048 	sdc1	$f28,72(sp)
 980:	f7ba0040 	sdc1	$f26,64(sp)
 984:	f7b80038 	sdc1	$f24,56(sp)
 988:	f7b60030 	sdc1	$f22,48(sp)
 98c:	f7b40028 	sdc1	$f20,40(sp)
 990:	0c000000 	jal	0 <EnBrob_Init>
 994:	02002025 	move	a0,s0
 998:	02002025 	move	a0,s0
 99c:	0c000000 	jal	0 <EnBrob_Init>
 9a0:	24050000 	li	a1,0
 9a4:	10400005 	beqz	v0,9bc <func_809CB458+0x74>
 9a8:	3c0f0001 	lui	t7,0x1
 9ac:	862201ac 	lh	v0,428(s1)
 9b0:	10400002 	beqz	v0,9bc <func_809CB458+0x74>
 9b4:	244effff 	addiu	t6,v0,-1
 9b8:	a62e01ac 	sh	t6,428(s1)
 9bc:	01f67821 	addu	t7,t7,s6
 9c0:	8def1de4 	lw	t7,7652(t7)
 9c4:	00008025 	move	s0,zero
 9c8:	24150004 	li	s5,4
 9cc:	31f80001 	andi	t8,t7,0x1
 9d0:	13000008 	beqz	t8,9f4 <func_809CB458+0xac>
 9d4:	3c140000 	lui	s4,0x0
 9d8:	3c010000 	lui	at,0x0
 9dc:	c4260000 	lwc1	$f6,0(at)
 9e0:	c6240050 	lwc1	$f4,80(s1)
 9e4:	4480b000 	mtc1	zero,$f22
 9e8:	46062002 	mul.s	$f0,$f4,$f6
 9ec:	10000007 	b	a0c <func_809CB458+0xc4>
 9f0:	3c014780 	lui	at,0x4780
 9f4:	3c010000 	lui	at,0x0
 9f8:	c42a0000 	lwc1	$f10,0(at)
 9fc:	c6280050 	lwc1	$f8,80(s1)
 a00:	460a4002 	mul.s	$f0,$f8,$f10
 a04:	46000586 	mov.s	$f22,$f0
 a08:	3c014780 	lui	at,0x4780
 a0c:	4481f000 	mtc1	at,$f30
 a10:	3c0145fa 	lui	at,0x45fa
 a14:	4481e000 	mtc1	at,$f28
 a18:	3c01447a 	lui	at,0x447a
 a1c:	4481d000 	mtc1	at,$f26
 a20:	3c010000 	lui	at,0x0
 a24:	3c130000 	lui	s3,0x0
 a28:	46000506 	mov.s	$f20,$f0
 a2c:	26730000 	addiu	s3,s3,0
 a30:	c4380000 	lwc1	$f24,0(at)
 a34:	26940000 	addiu	s4,s4,0
 a38:	27b2008c 	addiu	s2,sp,140
 a3c:	06010004 	bgez	s0,a50 <func_809CB458+0x108>
 a40:	32190001 	andi	t9,s0,0x1
 a44:	13200002 	beqz	t9,a50 <func_809CB458+0x108>
 a48:	00000000 	nop
 a4c:	2739fffe 	addiu	t9,t9,-2
 a50:	53200009 	beqzl	t9,a78 <func_809CB458+0x130>
 a54:	c6280024 	lwc1	$f8,36(s1)
 a58:	c6300024 	lwc1	$f16,36(s1)
 a5c:	46168480 	add.s	$f18,$f16,$f22
 a60:	e7b2008c 	swc1	$f18,140(sp)
 a64:	c624002c 	lwc1	$f4,44(s1)
 a68:	46142180 	add.s	$f6,$f4,$f20
 a6c:	10000009 	b	a94 <func_809CB458+0x14c>
 a70:	e7a60094 	swc1	$f6,148(sp)
 a74:	c6280024 	lwc1	$f8,36(s1)
 a78:	46144280 	add.s	$f10,$f8,$f20
 a7c:	4600a507 	neg.s	$f20,$f20
 a80:	e7aa008c 	swc1	$f10,140(sp)
 a84:	c630002c 	lwc1	$f16,44(s1)
 a88:	46168480 	add.s	$f18,$f16,$f22
 a8c:	4600b587 	neg.s	$f22,$f22
 a90:	e7b20094 	swc1	$f18,148(sp)
 a94:	0c000000 	jal	0 <EnBrob_Init>
 a98:	00000000 	nop
 a9c:	46180102 	mul.s	$f4,$f0,$f24
 aa0:	c6280054 	lwc1	$f8,84(s1)
 aa4:	c6300028 	lwc1	$f16,40(s1)
 aa8:	461a2180 	add.s	$f6,$f4,$f26
 aac:	46083282 	mul.s	$f10,$f6,$f8
 ab0:	46105480 	add.s	$f18,$f10,$f16
 ab4:	0c000000 	jal	0 <EnBrob_Init>
 ab8:	e7b20090 	swc1	$f18,144(sp)
 abc:	c6240054 	lwc1	$f4,84(s1)
 ac0:	240c0001 	li	t4,1
 ac4:	afac001c 	sw	t4,28(sp)
 ac8:	461c2182 	mul.s	$f6,$f4,$f28
 acc:	afb50018 	sw	s5,24(sp)
 ad0:	02c02025 	move	a0,s6
 ad4:	461e0282 	mul.s	$f10,$f0,$f30
 ad8:	02402825 	move	a1,s2
 adc:	02603025 	move	a2,s3
 ae0:	02803825 	move	a3,s4
 ae4:	4600320d 	trunc.w.s	$f8,$f6
 ae8:	4600540d 	trunc.w.s	$f16,$f10
 aec:	44094000 	mfc1	t1,$f8
 af0:	440b8000 	mfc1	t3,$f16
 af4:	afa90010 	sw	t1,16(sp)
 af8:	0c000000 	jal	0 <EnBrob_Init>
 afc:	afab0014 	sw	t3,20(sp)
 b00:	26100001 	addiu	s0,s0,1
 b04:	1615ffcd 	bne	s0,s5,a3c <func_809CB458+0xf4>
 b08:	00000000 	nop
 b0c:	862d01ac 	lh	t5,428(s1)
 b10:	55a00004 	bnezl	t5,b24 <func_809CB458+0x1dc>
 b14:	8fbf0074 	lw	ra,116(sp)
 b18:	0c000000 	jal	0 <EnBrob_Init>
 b1c:	02202025 	move	a0,s1
 b20:	8fbf0074 	lw	ra,116(sp)
 b24:	d7b40028 	ldc1	$f20,40(sp)
 b28:	d7b60030 	ldc1	$f22,48(sp)
 b2c:	d7b80038 	ldc1	$f24,56(sp)
 b30:	d7ba0040 	ldc1	$f26,64(sp)
 b34:	d7bc0048 	ldc1	$f28,72(sp)
 b38:	d7be0050 	ldc1	$f30,80(sp)
 b3c:	8fb00058 	lw	s0,88(sp)
 b40:	8fb1005c 	lw	s1,92(sp)
 b44:	8fb20060 	lw	s2,96(sp)
 b48:	8fb30064 	lw	s3,100(sp)
 b4c:	8fb40068 	lw	s4,104(sp)
 b50:	8fb5006c 	lw	s5,108(sp)
 b54:	8fb60070 	lw	s6,112(sp)
 b58:	03e00008 	jr	ra
 b5c:	27bd0098 	addiu	sp,sp,152

00000b60 <EnBrob_Update>:
 b60:	27bdffb0 	addiu	sp,sp,-80
 b64:	afbf0024 	sw	ra,36(sp)
 b68:	afb10020 	sw	s1,32(sp)
 b6c:	afb0001c 	sw	s0,28(sp)
 b70:	908e0239 	lbu	t6,569(a0)
 b74:	00808025 	move	s0,a0
 b78:	00a08825 	move	s1,a1
 b7c:	31cf0002 	andi	t7,t6,0x2
 b80:	000fc02b 	sltu	t8,zero,t7
 b84:	afb8003c 	sw	t8,60(sp)
 b88:	90990285 	lbu	t9,645(a0)
 b8c:	33280002 	andi	t0,t9,0x2
 b90:	0008482b 	sltu	t1,zero,t0
 b94:	13000006 	beqz	t8,bb0 <EnBrob_Update+0x50>
 b98:	afa90040 	sw	t1,64(sp)
 b9c:	8c8a0264 	lw	t2,612(a0)
 ba0:	8d4b0000 	lw	t3,0(t2)
 ba4:	316c0010 	andi	t4,t3,0x10
 ba8:	55800009 	bnezl	t4,bd0 <EnBrob_Update+0x70>
 bac:	00001825 	move	v1,zero
 bb0:	8fad0040 	lw	t5,64(sp)
 bb4:	51a00018 	beqzl	t5,c18 <EnBrob_Update+0xb8>
 bb8:	92040238 	lbu	a0,568(s0)
 bbc:	8e0e02b0 	lw	t6,688(s0)
 bc0:	8dcf0000 	lw	t7,0(t6)
 bc4:	31f90010 	andi	t9,t7,0x10
 bc8:	13200012 	beqz	t9,c14 <EnBrob_Update+0xb4>
 bcc:	00001825 	move	v1,zero
 bd0:	02001025 	move	v0,s0
 bd4:	24060002 	li	a2,2
 bd8:	2405fffd 	li	a1,-3
 bdc:	2404fff9 	li	a0,-7
 be0:	90480238 	lbu	t0,568(v0)
 be4:	90580239 	lbu	t8,569(v0)
 be8:	24630001 	addiu	v1,v1,1
 bec:	01044824 	and	t1,t0,a0
 bf0:	03055024 	and	t2,t8,a1
 bf4:	2442004c 	addiu	v0,v0,76
 bf8:	a04901ec 	sb	t1,492(v0)
 bfc:	1466fff8 	bne	v1,a2,be0 <EnBrob_Update+0x80>
 c00:	a04a01ed 	sb	t2,493(v0)
 c04:	0c000000 	jal	0 <EnBrob_Init>
 c08:	02002025 	move	a0,s0
 c0c:	1000003f 	b	d0c <EnBrob_Update+0x1ac>
 c10:	8e1901a8 	lw	t9,424(s0)
 c14:	92040238 	lbu	a0,568(s0)
 c18:	308b0002 	andi	t3,a0,0x2
 c1c:	55600015 	bnezl	t3,c74 <EnBrob_Update+0x114>
 c20:	8e0201a8 	lw	v0,424(s0)
 c24:	920c0284 	lbu	t4,644(s0)
 c28:	8fae003c 	lw	t6,60(sp)
 c2c:	318d0002 	andi	t5,t4,0x2
 c30:	55a00010 	bnezl	t5,c74 <EnBrob_Update+0x114>
 c34:	8e0201a8 	lw	v0,424(s0)
 c38:	11c00006 	beqz	t6,c54 <EnBrob_Update+0xf4>
 c3c:	8fa90040 	lw	t1,64(sp)
 c40:	8e0f0264 	lw	t7,612(s0)
 c44:	8df90000 	lw	t9,0(t7)
 c48:	33280100 	andi	t0,t9,0x100
 c4c:	55000009 	bnezl	t0,c74 <EnBrob_Update+0x114>
 c50:	8e0201a8 	lw	v0,424(s0)
 c54:	5120002d 	beqzl	t1,d0c <EnBrob_Update+0x1ac>
 c58:	8e1901a8 	lw	t9,424(s0)
 c5c:	8e1802b0 	lw	t8,688(s0)
 c60:	8f0a0000 	lw	t2,0(t8)
 c64:	314b0100 	andi	t3,t2,0x100
 c68:	51600028 	beqzl	t3,d0c <EnBrob_Update+0x1ac>
 c6c:	8e1901a8 	lw	t9,424(s0)
 c70:	8e0201a8 	lw	v0,424(s0)
 c74:	3c030000 	lui	v1,0x0
 c78:	24630000 	addiu	v1,v1,0
 c7c:	14620010 	bne	v1,v0,cc0 <EnBrob_Update+0x160>
 c80:	308c0004 	andi	t4,a0,0x4
 c84:	1580000e 	bnez	t4,cc0 <EnBrob_Update+0x160>
 c88:	00000000 	nop
 c8c:	920d0284 	lbu	t5,644(s0)
 c90:	02202025 	move	a0,s1
 c94:	02002825 	move	a1,s0
 c98:	31ae0004 	andi	t6,t5,0x4
 c9c:	15c00008 	bnez	t6,cc0 <EnBrob_Update+0x160>
 ca0:	3c0640a0 	lui	a2,0x40a0
 ca4:	3c013f80 	lui	at,0x3f80
 ca8:	44812000 	mtc1	at,$f4
 cac:	8607008a 	lh	a3,138(s0)
 cb0:	0c000000 	jal	0 <EnBrob_Init>
 cb4:	e7a40010 	swc1	$f4,16(sp)
 cb8:	10000006 	b	cd4 <EnBrob_Update+0x174>
 cbc:	00001825 	move	v1,zero
 cc0:	50620004 	beql	v1,v0,cd4 <EnBrob_Update+0x174>
 cc4:	00001825 	move	v1,zero
 cc8:	0c000000 	jal	0 <EnBrob_Init>
 ccc:	02002025 	move	a0,s0
 cd0:	00001825 	move	v1,zero
 cd4:	02001025 	move	v0,s0
 cd8:	24060002 	li	a2,2
 cdc:	2405fffd 	li	a1,-3
 ce0:	2404fff9 	li	a0,-7
 ce4:	904f0238 	lbu	t7,568(v0)
 ce8:	90480239 	lbu	t0,569(v0)
 cec:	24630001 	addiu	v1,v1,1
 cf0:	01e4c824 	and	t9,t7,a0
 cf4:	01054824 	and	t1,t0,a1
 cf8:	2442004c 	addiu	v0,v0,76
 cfc:	a05901ec 	sb	t9,492(v0)
 d00:	1466fff8 	bne	v1,a2,ce4 <EnBrob_Update+0x184>
 d04:	a04901ed 	sb	t1,493(v0)
 d08:	8e1901a8 	lw	t9,424(s0)
 d0c:	02002025 	move	a0,s0
 d10:	02202825 	move	a1,s1
 d14:	0320f809 	jalr	t9
 d18:	00000000 	nop
 d1c:	8e0201a8 	lw	v0,424(s0)
 d20:	3c180000 	lui	t8,0x0
 d24:	27180000 	addiu	t8,t8,0
 d28:	1302002f 	beq	t8,v0,de8 <EnBrob_Update+0x288>
 d2c:	3c0a0000 	lui	t2,0x0
 d30:	254a0000 	addiu	t2,t2,0
 d34:	1142002c 	beq	t2,v0,de8 <EnBrob_Update+0x288>
 d38:	3c0b0000 	lui	t3,0x0
 d3c:	256b0000 	addiu	t3,t3,0
 d40:	1162001c 	beq	t3,v0,db4 <EnBrob_Update+0x254>
 d44:	02202025 	move	a0,s1
 d48:	3c010001 	lui	at,0x1
 d4c:	34211e60 	ori	at,at,0x1e60
 d50:	3c030000 	lui	v1,0x0
 d54:	24630000 	addiu	v1,v1,0
 d58:	02212821 	addu	a1,s1,at
 d5c:	26060228 	addiu	a2,s0,552
 d60:	afa6002c 	sw	a2,44(sp)
 d64:	afa50034 	sw	a1,52(sp)
 d68:	0c000000 	jal	0 <EnBrob_Init>
 d6c:	afa30038 	sw	v1,56(sp)
 d70:	26060274 	addiu	a2,s0,628
 d74:	afa60030 	sw	a2,48(sp)
 d78:	02202025 	move	a0,s1
 d7c:	0c000000 	jal	0 <EnBrob_Init>
 d80:	8fa50034 	lw	a1,52(sp)
 d84:	8fa30038 	lw	v1,56(sp)
 d88:	8e0c01a8 	lw	t4,424(s0)
 d8c:	02202025 	move	a0,s1
 d90:	8fa50034 	lw	a1,52(sp)
 d94:	506c0008 	beql	v1,t4,db8 <EnBrob_Update+0x258>
 d98:	3c010001 	lui	at,0x1
 d9c:	0c000000 	jal	0 <EnBrob_Init>
 da0:	8fa6002c 	lw	a2,44(sp)
 da4:	02202025 	move	a0,s1
 da8:	8fa50034 	lw	a1,52(sp)
 dac:	0c000000 	jal	0 <EnBrob_Init>
 db0:	8fa60030 	lw	a2,48(sp)
 db4:	3c010001 	lui	at,0x1
 db8:	34211e60 	ori	at,at,0x1e60
 dbc:	02212821 	addu	a1,s1,at
 dc0:	260d0274 	addiu	t5,s0,628
 dc4:	afad0030 	sw	t5,48(sp)
 dc8:	afa50034 	sw	a1,52(sp)
 dcc:	02202025 	move	a0,s1
 dd0:	0c000000 	jal	0 <EnBrob_Init>
 dd4:	26060228 	addiu	a2,s0,552
 dd8:	02202025 	move	a0,s1
 ddc:	8fa50034 	lw	a1,52(sp)
 de0:	0c000000 	jal	0 <EnBrob_Init>
 de4:	8fa60030 	lw	a2,48(sp)
 de8:	8fbf0024 	lw	ra,36(sp)
 dec:	8fb0001c 	lw	s0,28(sp)
 df0:	8fb10020 	lw	s1,32(sp)
 df4:	03e00008 	jr	ra
 df8:	27bd0050 	addiu	sp,sp,80

00000dfc <func_809CB90C>:
 dfc:	27bdffa0 	addiu	sp,sp,-96
 e00:	afbf0014 	sw	ra,20(sp)
 e04:	afa40060 	sw	a0,96(sp)
 e08:	afa50064 	sw	a1,100(sp)
 e0c:	afa60068 	sw	a2,104(sp)
 e10:	afa7006c 	sw	a3,108(sp)
 e14:	0c000000 	jal	0 <EnBrob_Init>
 e18:	27a4001c 	addiu	a0,sp,28
 e1c:	8fa20064 	lw	v0,100(sp)
 e20:	24010003 	li	at,3
 e24:	c7a4004c 	lwc1	$f4,76(sp)
 e28:	54410011 	bnel	v0,at,e70 <func_809CB90C+0x74>
 e2c:	24010008 	li	at,8
 e30:	4600218d 	trunc.w.s	$f6,$f4
 e34:	8fa20070 	lw	v0,112(sp)
 e38:	440f3000 	mfc1	t7,$f6
 e3c:	00000000 	nop
 e40:	a44f026e 	sh	t7,622(v0)
 e44:	c7a80050 	lwc1	$f8,80(sp)
 e48:	4600428d 	trunc.w.s	$f10,$f8
 e4c:	44195000 	mfc1	t9,$f10
 e50:	00000000 	nop
 e54:	a4590270 	sh	t9,624(v0)
 e58:	c7b00054 	lwc1	$f16,84(sp)
 e5c:	4600848d 	trunc.w.s	$f18,$f16
 e60:	44099000 	mfc1	t1,$f18
 e64:	10000016 	b	ec0 <func_809CB90C+0xc4>
 e68:	a4490272 	sh	t1,626(v0)
 e6c:	24010008 	li	at,8
 e70:	14410013 	bne	v0,at,ec0 <func_809CB90C+0xc4>
 e74:	c7a4004c 	lwc1	$f4,76(sp)
 e78:	4600218d 	trunc.w.s	$f6,$f4
 e7c:	8fa20070 	lw	v0,112(sp)
 e80:	3c0140e0 	lui	at,0x40e0
 e84:	44815000 	mtc1	at,$f10
 e88:	440b3000 	mfc1	t3,$f6
 e8c:	00000000 	nop
 e90:	a44b02ba 	sh	t3,698(v0)
 e94:	c7a80050 	lwc1	$f8,80(sp)
 e98:	460a4400 	add.s	$f16,$f8,$f10
 e9c:	4600848d 	trunc.w.s	$f18,$f16
 ea0:	440d9000 	mfc1	t5,$f18
 ea4:	00000000 	nop
 ea8:	a44d02bc 	sh	t5,700(v0)
 eac:	c7a40054 	lwc1	$f4,84(sp)
 eb0:	4600218d 	trunc.w.s	$f6,$f4
 eb4:	440f3000 	mfc1	t7,$f6
 eb8:	00000000 	nop
 ebc:	a44f02be 	sh	t7,702(v0)
 ec0:	8fbf0014 	lw	ra,20(sp)
 ec4:	27bd0060 	addiu	sp,sp,96
 ec8:	03e00008 	jr	ra
 ecc:	00000000 	nop

00000ed0 <EnBrob_Draw>:
 ed0:	27bdffd0 	addiu	sp,sp,-48
 ed4:	afb00028 	sw	s0,40(sp)
 ed8:	00808025 	move	s0,a0
 edc:	afbf002c 	sw	ra,44(sp)
 ee0:	afa50034 	sw	a1,52(sp)
 ee4:	0c000000 	jal	0 <EnBrob_Init>
 ee8:	8ca40000 	lw	a0,0(a1)
 eec:	860f01ae 	lh	t7,430(s0)
 ef0:	44806000 	mtc1	zero,$f12
 ef4:	24070001 	li	a3,1
 ef8:	448f2000 	mtc1	t7,$f4
 efc:	44066000 	mfc1	a2,$f12
 f00:	0c000000 	jal	0 <EnBrob_Init>
 f04:	468023a0 	cvt.s.w	$f14,$f4
 f08:	8e050168 	lw	a1,360(s0)
 f0c:	8e060184 	lw	a2,388(s0)
 f10:	92070166 	lbu	a3,358(s0)
 f14:	3c180000 	lui	t8,0x0
 f18:	27180000 	addiu	t8,t8,0
 f1c:	afb80014 	sw	t8,20(sp)
 f20:	afb00018 	sw	s0,24(sp)
 f24:	afa00010 	sw	zero,16(sp)
 f28:	0c000000 	jal	0 <EnBrob_Init>
 f2c:	8fa40034 	lw	a0,52(sp)
 f30:	8fbf002c 	lw	ra,44(sp)
 f34:	8fb00028 	lw	s0,40(sp)
 f38:	27bd0030 	addiu	sp,sp,48
 f3c:	03e00008 	jr	ra
 f40:	00000000 	nop
	...
