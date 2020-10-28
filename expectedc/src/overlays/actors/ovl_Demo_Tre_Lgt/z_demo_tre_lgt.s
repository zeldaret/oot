
build/src/overlays/actors/ovl_Demo_Tre_Lgt/z_demo_tre_lgt.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <DemoTreLgt_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afb00018 	sw	s0,24(sp)
   8:	00808025 	move	s0,a0
   c:	afbf001c 	sw	ra,28(sp)
  10:	afa50024 	sw	a1,36(sp)
  14:	00a02025 	move	a0,a1
  18:	3c060600 	lui	a2,0x600
  1c:	3c070000 	lui	a3,0x0
  20:	8ce70000 	lw	a3,0(a3)
  24:	24c65eb8 	addiu	a2,a2,24248
  28:	0c000000 	jal	0 <DemoTreLgt_Init>
  2c:	2605014c 	addiu	a1,s0,332
  30:	14400003 	bnez	v0,40 <DemoTreLgt_Init+0x40>
  34:	3c040000 	lui	a0,0x0
  38:	0c000000 	jal	0 <DemoTreLgt_Init>
  3c:	24840000 	addiu	a0,a0,0
  40:	240200ff 	li	v0,255
  44:	ae020170 	sw	v0,368(s0)
  48:	ae020174 	sw	v0,372(s0)
  4c:	a2000178 	sb	zero,376(s0)
  50:	0c000000 	jal	0 <DemoTreLgt_Init>
  54:	02002025 	move	a0,s0
  58:	8fbf001c 	lw	ra,28(sp)
  5c:	8fb00018 	lw	s0,24(sp)
  60:	27bd0020 	addiu	sp,sp,32
  64:	03e00008 	jr	ra
  68:	00000000 	nop

0000006c <DemoTreLgt_Destroy>:
  6c:	27bdffe8 	addiu	sp,sp,-24
  70:	00803025 	move	a2,a0
  74:	afbf0014 	sw	ra,20(sp)
  78:	00a02025 	move	a0,a1
  7c:	0c000000 	jal	0 <DemoTreLgt_Init>
  80:	24c5014c 	addiu	a1,a2,332
  84:	8fbf0014 	lw	ra,20(sp)
  88:	27bd0018 	addiu	sp,sp,24
  8c:	03e00008 	jr	ra
  90:	00000000 	nop

00000094 <func_80993754>:
  94:	03e00008 	jr	ra
  98:	ac80016c 	sw	zero,364(a0)

0000009c <func_8099375C>:
  9c:	27bdffe0 	addiu	sp,sp,-32
  a0:	afbf0014 	sw	ra,20(sp)
  a4:	afa50024 	sw	a1,36(sp)
  a8:	8c830118 	lw	v1,280(a0)
  ac:	00803825 	move	a3,a0
  b0:	3c054120 	lui	a1,0x4120
  b4:	1060000b 	beqz	v1,e4 <func_8099375C+0x48>
  b8:	24640164 	addiu	a0,v1,356
  bc:	afa3001c 	sw	v1,28(sp)
  c0:	0c000000 	jal	0 <DemoTreLgt_Init>
  c4:	afa70020 	sw	a3,32(sp)
  c8:	8fa3001c 	lw	v1,28(sp)
  cc:	10400005 	beqz	v0,e4 <func_8099375C+0x48>
  d0:	8fa70020 	lw	a3,32(sp)
  d4:	00e02025 	move	a0,a3
  d8:	8fa50024 	lw	a1,36(sp)
  dc:	0c000000 	jal	0 <DemoTreLgt_Init>
  e0:	8c66017c 	lw	a2,380(v1)
  e4:	8fbf0014 	lw	ra,20(sp)
  e8:	27bd0020 	addiu	sp,sp,32
  ec:	03e00008 	jr	ra
  f0:	00000000 	nop

000000f4 <func_809937B4>:
  f4:	27bdffd0 	addiu	sp,sp,-48
  f8:	afbf001c 	sw	ra,28(sp)
  fc:	afa40030 	sw	a0,48(sp)
 100:	afa50034 	sw	a1,52(sp)
 104:	240e0001 	li	t6,1
 108:	ac8e016c 	sw	t6,364(a0)
 10c:	3c020000 	lui	v0,0x0
 110:	8c420004 	lw	v0,4(v0)
 114:	3c080000 	lui	t0,0x0
 118:	25080000 	addiu	t0,t0,0
 11c:	0002c900 	sll	t9,v0,0x4
 120:	03281821 	addu	v1,t9,t0
 124:	c4640008 	lwc1	$f4,8(v1)
 128:	c4660004 	lwc1	$f6,4(v1)
 12c:	3c013f80 	lui	at,0x3f80
 130:	44810000 	mtc1	at,$f0
 134:	46062200 	add.s	$f8,$f4,$f6
 138:	8fa40030 	lw	a0,48(sp)
 13c:	44866000 	mtc1	a2,$f12
 140:	3c050000 	lui	a1,0x0
 144:	0002c080 	sll	t8,v0,0x2
 148:	00b82821 	addu	a1,a1,t8
 14c:	44074000 	mfc1	a3,$f8
 150:	44060000 	mfc1	a2,$f0
 154:	2484014c 	addiu	a0,a0,332
 158:	afa40020 	sw	a0,32(sp)
 15c:	8ca50000 	lw	a1,0(a1)
 160:	e7a00014 	swc1	$f0,20(sp)
 164:	0c000000 	jal	0 <DemoTreLgt_Init>
 168:	e7ac0010 	swc1	$f12,16(sp)
 16c:	8fa40034 	lw	a0,52(sp)
 170:	0c000000 	jal	0 <DemoTreLgt_Init>
 174:	8fa50020 	lw	a1,32(sp)
 178:	8fbf001c 	lw	ra,28(sp)
 17c:	27bd0030 	addiu	sp,sp,48
 180:	03e00008 	jr	ra
 184:	00000000 	nop

00000188 <func_80993848>:
 188:	3c070000 	lui	a3,0x0
 18c:	24e70000 	addiu	a3,a3,0
 190:	8ce30004 	lw	v1,4(a3)
 194:	27bdffd8 	addiu	sp,sp,-40
 198:	3c060000 	lui	a2,0x0
 19c:	24c60000 	addiu	a2,a2,0
 1a0:	00037100 	sll	t6,v1,0x4
 1a4:	afbf0024 	sw	ra,36(sp)
 1a8:	afb00020 	sw	s0,32(sp)
 1ac:	afa5002c 	sw	a1,44(sp)
 1b0:	00ce7821 	addu	t7,a2,t6
 1b4:	c4800164 	lwc1	$f0,356(a0)
 1b8:	c5e40004 	lwc1	$f4,4(t7)
 1bc:	0003c900 	sll	t9,v1,0x4
 1c0:	00808025 	move	s0,a0
 1c4:	4604003c 	c.lt.s	$f0,$f4
 1c8:	241800ff 	li	t8,255
 1cc:	3c01437f 	lui	at,0x437f
 1d0:	00d91021 	addu	v0,a2,t9
 1d4:	45000004 	bc1f	1e8 <func_80993848+0x60>
 1d8:	240c00ff 	li	t4,255
 1dc:	44817000 	mtc1	at,$f14
 1e0:	10000034 	b	2b4 <func_80993848+0x12c>
 1e4:	ac980170 	sw	t8,368(a0)
 1e8:	c4420008 	lwc1	$f2,8(v0)
 1ec:	c44c0004 	lwc1	$f12,4(v0)
 1f0:	3c01437f 	lui	at,0x437f
 1f4:	460c1180 	add.s	$f6,$f2,$f12
 1f8:	4606003e 	c.le.s	$f0,$f6
 1fc:	00000000 	nop
 200:	4502002b 	bc1fl	2b0 <func_80993848+0x128>
 204:	44817000 	mtc1	at,$f14
 208:	46006201 	sub.s	$f8,$f12,$f0
 20c:	3c01437f 	lui	at,0x437f
 210:	44817000 	mtc1	at,$f14
 214:	24090001 	li	t1,1
 218:	46024283 	div.s	$f10,$f8,$f2
 21c:	3c014f00 	lui	at,0x4f00
 220:	460e5402 	mul.s	$f16,$f10,$f14
 224:	460e8480 	add.s	$f18,$f16,$f14
 228:	4448f800 	cfc1	t0,$31
 22c:	44c9f800 	ctc1	t1,$31
 230:	00000000 	nop
 234:	46009124 	cvt.w.s	$f4,$f18
 238:	4449f800 	cfc1	t1,$31
 23c:	00000000 	nop
 240:	31290078 	andi	t1,t1,0x78
 244:	51200013 	beqzl	t1,294 <func_80993848+0x10c>
 248:	44092000 	mfc1	t1,$f4
 24c:	44812000 	mtc1	at,$f4
 250:	24090001 	li	t1,1
 254:	46049101 	sub.s	$f4,$f18,$f4
 258:	44c9f800 	ctc1	t1,$31
 25c:	00000000 	nop
 260:	46002124 	cvt.w.s	$f4,$f4
 264:	4449f800 	cfc1	t1,$31
 268:	00000000 	nop
 26c:	31290078 	andi	t1,t1,0x78
 270:	15200005 	bnez	t1,288 <func_80993848+0x100>
 274:	00000000 	nop
 278:	44092000 	mfc1	t1,$f4
 27c:	3c018000 	lui	at,0x8000
 280:	10000007 	b	2a0 <func_80993848+0x118>
 284:	01214825 	or	t1,t1,at
 288:	10000005 	b	2a0 <func_80993848+0x118>
 28c:	2409ffff 	li	t1,-1
 290:	44092000 	mfc1	t1,$f4
 294:	00000000 	nop
 298:	0520fffb 	bltz	t1,288 <func_80993848+0x100>
 29c:	00000000 	nop
 2a0:	44c8f800 	ctc1	t0,$31
 2a4:	10000003 	b	2b4 <func_80993848+0x12c>
 2a8:	ae090170 	sw	t1,368(s0)
 2ac:	44817000 	mtc1	at,$f14
 2b0:	ae000170 	sw	zero,368(s0)
 2b4:	8ce20004 	lw	v0,4(a3)
 2b8:	3c014120 	lui	at,0x4120
 2bc:	00025100 	sll	t2,v0,0x4
 2c0:	00ca5821 	addu	t3,a2,t2
 2c4:	c566000c 	lwc1	$f6,12(t3)
 2c8:	00026900 	sll	t5,v0,0x4
 2cc:	00cd7021 	addu	t6,a2,t5
 2d0:	4606003c 	c.lt.s	$f0,$f6
 2d4:	00000000 	nop
 2d8:	45020004 	bc1fl	2ec <func_80993848+0x164>
 2dc:	44811000 	mtc1	at,$f2
 2e0:	10000033 	b	3b0 <func_80993848+0x228>
 2e4:	ae0c0174 	sw	t4,372(s0)
 2e8:	44811000 	mtc1	at,$f2
 2ec:	c5c8000c 	lwc1	$f8,12(t6)
 2f0:	00027900 	sll	t7,v0,0x4
 2f4:	00cfc021 	addu	t8,a2,t7
 2f8:	46024280 	add.s	$f10,$f8,$f2
 2fc:	460a003c 	c.lt.s	$f0,$f10
 300:	00000000 	nop
 304:	4502002a 	bc1fl	3b0 <func_80993848+0x228>
 308:	ae000174 	sw	zero,372(s0)
 30c:	c710000c 	lwc1	$f16,12(t8)
 310:	24080001 	li	t0,1
 314:	3c014f00 	lui	at,0x4f00
 318:	46008481 	sub.s	$f18,$f16,$f0
 31c:	46029103 	div.s	$f4,$f18,$f2
 320:	460e2182 	mul.s	$f6,$f4,$f14
 324:	460e3200 	add.s	$f8,$f6,$f14
 328:	4459f800 	cfc1	t9,$31
 32c:	44c8f800 	ctc1	t0,$31
 330:	00000000 	nop
 334:	460042a4 	cvt.w.s	$f10,$f8
 338:	4448f800 	cfc1	t0,$31
 33c:	00000000 	nop
 340:	31080078 	andi	t0,t0,0x78
 344:	51000013 	beqzl	t0,394 <func_80993848+0x20c>
 348:	44085000 	mfc1	t0,$f10
 34c:	44815000 	mtc1	at,$f10
 350:	24080001 	li	t0,1
 354:	460a4281 	sub.s	$f10,$f8,$f10
 358:	44c8f800 	ctc1	t0,$31
 35c:	00000000 	nop
 360:	460052a4 	cvt.w.s	$f10,$f10
 364:	4448f800 	cfc1	t0,$31
 368:	00000000 	nop
 36c:	31080078 	andi	t0,t0,0x78
 370:	15000005 	bnez	t0,388 <func_80993848+0x200>
 374:	00000000 	nop
 378:	44085000 	mfc1	t0,$f10
 37c:	3c018000 	lui	at,0x8000
 380:	10000007 	b	3a0 <func_80993848+0x218>
 384:	01014025 	or	t0,t0,at
 388:	10000005 	b	3a0 <func_80993848+0x218>
 38c:	2408ffff 	li	t0,-1
 390:	44085000 	mfc1	t0,$f10
 394:	00000000 	nop
 398:	0500fffb 	bltz	t0,388 <func_80993848+0x200>
 39c:	00000000 	nop
 3a0:	44d9f800 	ctc1	t9,$31
 3a4:	10000002 	b	3b0 <func_80993848+0x228>
 3a8:	ae080174 	sw	t0,372(s0)
 3ac:	ae000174 	sw	zero,372(s0)
 3b0:	3c0141f0 	lui	at,0x41f0
 3b4:	44818000 	mtc1	at,$f16
 3b8:	00000000 	nop
 3bc:	4600803c 	c.lt.s	$f16,$f0
 3c0:	00000000 	nop
 3c4:	45020011 	bc1fl	40c <func_80993848+0x284>
 3c8:	8fa4002c 	lw	a0,44(sp)
 3cc:	92020178 	lbu	v0,376(s0)
 3d0:	3c070000 	lui	a3,0x0
 3d4:	24e70000 	addiu	a3,a3,0
 3d8:	30490001 	andi	t1,v0,0x1
 3dc:	1520000a 	bnez	t1,408 <func_80993848+0x280>
 3e0:	344a0001 	ori	t2,v0,0x1
 3e4:	3c0b0000 	lui	t3,0x0
 3e8:	a20a0178 	sb	t2,376(s0)
 3ec:	256b0000 	addiu	t3,t3,0
 3f0:	afab0014 	sw	t3,20(sp)
 3f4:	afa70010 	sw	a3,16(sp)
 3f8:	24042884 	li	a0,10372
 3fc:	260500e4 	addiu	a1,s0,228
 400:	0c000000 	jal	0 <DemoTreLgt_Init>
 404:	24060004 	li	a2,4
 408:	8fa4002c 	lw	a0,44(sp)
 40c:	0c000000 	jal	0 <DemoTreLgt_Init>
 410:	2605014c 	addiu	a1,s0,332
 414:	50400004 	beqzl	v0,428 <func_80993848+0x2a0>
 418:	8fbf0024 	lw	ra,36(sp)
 41c:	0c000000 	jal	0 <DemoTreLgt_Init>
 420:	02002025 	move	a0,s0
 424:	8fbf0024 	lw	ra,36(sp)
 428:	8fb00020 	lw	s0,32(sp)
 42c:	27bd0028 	addiu	sp,sp,40
 430:	03e00008 	jr	ra
 434:	00000000 	nop

00000438 <DemoTreLgt_Update>:
 438:	27bdffe8 	addiu	sp,sp,-24
 43c:	afbf0014 	sw	ra,20(sp)
 440:	8c8e016c 	lw	t6,364(a0)
 444:	3c190000 	lui	t9,0x0
 448:	000e7880 	sll	t7,t6,0x2
 44c:	032fc821 	addu	t9,t9,t7
 450:	8f390000 	lw	t9,0(t9)
 454:	0320f809 	jalr	t9
 458:	00000000 	nop
 45c:	8fbf0014 	lw	ra,20(sp)
 460:	27bd0018 	addiu	sp,sp,24
 464:	03e00008 	jr	ra
 468:	00000000 	nop

0000046c <func_80993B2C>:
 46c:	27bdff90 	addiu	sp,sp,-112
 470:	afb00038 	sw	s0,56(sp)
 474:	afbf003c 	sw	ra,60(sp)
 478:	afa40070 	sw	a0,112(sp)
 47c:	afa50074 	sw	a1,116(sp)
 480:	afa7007c 	sw	a3,124(sp)
 484:	8c850000 	lw	a1,0(a0)
 488:	00c08025 	move	s0,a2
 48c:	3c060000 	lui	a2,0x0
 490:	24c60000 	addiu	a2,a2,0
 494:	27a40054 	addiu	a0,sp,84
 498:	240701a7 	li	a3,423
 49c:	0c000000 	jal	0 <DemoTreLgt_Init>
 4a0:	afa50064 	sw	a1,100(sp)
 4a4:	8fa90064 	lw	t1,100(sp)
 4a8:	8faa0070 	lw	t2,112(sp)
 4ac:	3c18db06 	lui	t8,0xdb06
 4b0:	8d2202d0 	lw	v0,720(t1)
 4b4:	37180020 	ori	t8,t8,0x20
 4b8:	24190040 	li	t9,64
 4bc:	244f0008 	addiu	t7,v0,8
 4c0:	ad2f02d0 	sw	t7,720(t1)
 4c4:	ac580000 	sw	t8,0(v0)
 4c8:	8d43009c 	lw	v1,156(t2)
 4cc:	8d440000 	lw	a0,0(t2)
 4d0:	24180020 	li	t8,32
 4d4:	00030823 	negu	at,v1
 4d8:	00016840 	sll	t5,at,0x1
 4dc:	31ae00ff 	andi	t6,t5,0xff
 4e0:	240f0040 	li	t7,64
 4e4:	240b0020 	li	t3,32
 4e8:	240c0001 	li	t4,1
 4ec:	00033040 	sll	a2,v1,0x1
 4f0:	30c600ff 	andi	a2,a2,0xff
 4f4:	afac0018 	sw	t4,24(sp)
 4f8:	afab0014 	sw	t3,20(sp)
 4fc:	afaf0024 	sw	t7,36(sp)
 500:	afae001c 	sw	t6,28(sp)
 504:	afb80028 	sw	t8,40(sp)
 508:	afa00020 	sw	zero,32(sp)
 50c:	afb90010 	sw	t9,16(sp)
 510:	00002825 	move	a1,zero
 514:	00003825 	move	a3,zero
 518:	afa90064 	sw	t1,100(sp)
 51c:	0c000000 	jal	0 <DemoTreLgt_Init>
 520:	afa20050 	sw	v0,80(sp)
 524:	8fa80050 	lw	t0,80(sp)
 528:	8fa90064 	lw	t1,100(sp)
 52c:	24010001 	li	at,1
 530:	1601000e 	bne	s0,at,56c <func_80993B2C+0x100>
 534:	ad020004 	sw	v0,4(t0)
 538:	8d2202d0 	lw	v0,720(t1)
 53c:	3c0bfa00 	lui	t3,0xfa00
 540:	356b0080 	ori	t3,t3,0x80
 544:	24590008 	addiu	t9,v0,8
 548:	ad3902d0 	sw	t9,720(t1)
 54c:	ac4b0000 	sw	t3,0(v0)
 550:	8fac007c 	lw	t4,124(sp)
 554:	2401b400 	li	at,-19456
 558:	8d8d0170 	lw	t5,368(t4)
 55c:	31ae00ff 	andi	t6,t5,0xff
 560:	01c17825 	or	t7,t6,at
 564:	10000016 	b	5c0 <func_80993B2C+0x154>
 568:	ac4f0004 	sw	t7,4(v0)
 56c:	2401000d 	li	at,13
 570:	12010007 	beq	s0,at,590 <func_80993B2C+0x124>
 574:	24010007 	li	at,7
 578:	12010005 	beq	s0,at,590 <func_80993B2C+0x124>
 57c:	24010004 	li	at,4
 580:	12010003 	beq	s0,at,590 <func_80993B2C+0x124>
 584:	2401000a 	li	at,10
 588:	5601000e 	bnel	s0,at,5c4 <func_80993B2C+0x158>
 58c:	8faf0070 	lw	t7,112(sp)
 590:	8d2202d0 	lw	v0,720(t1)
 594:	3c19fa00 	lui	t9,0xfa00
 598:	37390080 	ori	t9,t9,0x80
 59c:	24580008 	addiu	t8,v0,8
 5a0:	ad3802d0 	sw	t8,720(t1)
 5a4:	ac590000 	sw	t9,0(v0)
 5a8:	8fab007c 	lw	t3,124(sp)
 5ac:	2401b400 	li	at,-19456
 5b0:	8d6c0174 	lw	t4,372(t3)
 5b4:	318d00ff 	andi	t5,t4,0xff
 5b8:	01a17025 	or	t6,t5,at
 5bc:	ac4e0004 	sw	t6,4(v0)
 5c0:	8faf0070 	lw	t7,112(sp)
 5c4:	3c060000 	lui	a2,0x0
 5c8:	24c60000 	addiu	a2,a2,0
 5cc:	27a40054 	addiu	a0,sp,84
 5d0:	240701c0 	li	a3,448
 5d4:	0c000000 	jal	0 <DemoTreLgt_Init>
 5d8:	8de50000 	lw	a1,0(t7)
 5dc:	8fbf003c 	lw	ra,60(sp)
 5e0:	8fb00038 	lw	s0,56(sp)
 5e4:	27bd0070 	addiu	sp,sp,112
 5e8:	03e00008 	jr	ra
 5ec:	00000000 	nop

000005f0 <DemoTreLgt_Draw>:
 5f0:	27bdffa8 	addiu	sp,sp,-88
 5f4:	afbf002c 	sw	ra,44(sp)
 5f8:	afb00028 	sw	s0,40(sp)
 5fc:	afa40058 	sw	a0,88(sp)
 600:	afa5005c 	sw	a1,92(sp)
 604:	8cb00000 	lw	s0,0(a1)
 608:	3c060000 	lui	a2,0x0
 60c:	24c60000 	addiu	a2,a2,0
 610:	27a4003c 	addiu	a0,sp,60
 614:	240701cd 	li	a3,461
 618:	0c000000 	jal	0 <DemoTreLgt_Init>
 61c:	02002825 	move	a1,s0
 620:	8faf0058 	lw	t7,88(sp)
 624:	24010001 	li	at,1
 628:	8df8016c 	lw	t8,364(t7)
 62c:	5701001b 	bnel	t8,at,69c <DemoTreLgt_Draw+0xac>
 630:	8fbf002c 	lw	ra,44(sp)
 634:	0c000000 	jal	0 <DemoTreLgt_Init>
 638:	02002025 	move	a0,s0
 63c:	8e0302d0 	lw	v1,720(s0)
 640:	8fa40058 	lw	a0,88(sp)
 644:	3c08fb00 	lui	t0,0xfb00
 648:	24790008 	addiu	t9,v1,8
 64c:	ae1902d0 	sw	t9,720(s0)
 650:	3c09c8ff 	lui	t1,0xc8ff
 654:	ac690004 	sw	t1,4(v1)
 658:	ac680000 	sw	t0,0(v1)
 65c:	3c070000 	lui	a3,0x0
 660:	240a0001 	li	t2,1
 664:	afaa0014 	sw	t2,20(sp)
 668:	24e70000 	addiu	a3,a3,0
 66c:	afa00010 	sw	zero,16(sp)
 670:	8fa5005c 	lw	a1,92(sp)
 674:	afa40018 	sw	a0,24(sp)
 678:	0c000000 	jal	0 <DemoTreLgt_Init>
 67c:	2486014c 	addiu	a2,a0,332
 680:	3c060000 	lui	a2,0x0
 684:	24c60000 	addiu	a2,a2,0
 688:	27a4003c 	addiu	a0,sp,60
 68c:	02002825 	move	a1,s0
 690:	0c000000 	jal	0 <DemoTreLgt_Init>
 694:	240701dc 	li	a3,476
 698:	8fbf002c 	lw	ra,44(sp)
 69c:	8fb00028 	lw	s0,40(sp)
 6a0:	27bd0058 	addiu	sp,sp,88
 6a4:	03e00008 	jr	ra
 6a8:	00000000 	nop
 6ac:	00000000 	nop
