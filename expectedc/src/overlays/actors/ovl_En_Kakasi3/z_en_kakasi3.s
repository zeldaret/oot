
build/src/overlays/actors/ovl_En_Kakasi3/z_en_kakasi3.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnKakasi3_Destroy>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	00803025 	move	a2,a0
   8:	afbf0014 	sw	ra,20(sp)
   c:	00a02025 	move	a0,a1
  10:	0c000000 	jal	0 <EnKakasi3_Destroy>
  14:	24c501bc 	addiu	a1,a2,444
  18:	8fbf0014 	lw	ra,20(sp)
  1c:	27bd0018 	addiu	sp,sp,24
  20:	03e00008 	jr	ra
  24:	00000000 	nop

00000028 <EnKakasi3_Init>:
  28:	27bdffc8 	addiu	sp,sp,-56
  2c:	afb00028 	sw	s0,40(sp)
  30:	00808025 	move	s0,a0
  34:	afbf002c 	sw	ra,44(sp)
  38:	3c040000 	lui	a0,0x0
  3c:	afa5003c 	sw	a1,60(sp)
  40:	0c000000 	jal	0 <EnKakasi3_Destroy>
  44:	24840000 	addiu	a0,a0,0
  48:	3c040000 	lui	a0,0x0
  4c:	0c000000 	jal	0 <EnKakasi3_Destroy>
  50:	24840004 	addiu	a0,a0,4
  54:	240e0006 	li	t6,6
  58:	a20e001f 	sb	t6,31(s0)
  5c:	260501bc 	addiu	a1,s0,444
  60:	afa50030 	sw	a1,48(sp)
  64:	0c000000 	jal	0 <EnKakasi3_Destroy>
  68:	8fa4003c 	lw	a0,60(sp)
  6c:	3c070000 	lui	a3,0x0
  70:	8fa50030 	lw	a1,48(sp)
  74:	24e70000 	addiu	a3,a3,0
  78:	8fa4003c 	lw	a0,60(sp)
  7c:	0c000000 	jal	0 <EnKakasi3_Destroy>
  80:	02003025 	move	a2,s0
  84:	3c060000 	lui	a2,0x0
  88:	3c070000 	lui	a3,0x0
  8c:	24e70000 	addiu	a3,a3,0
  90:	24c60000 	addiu	a2,a2,0
  94:	8fa4003c 	lw	a0,60(sp)
  98:	26050150 	addiu	a1,s0,336
  9c:	afa00010 	sw	zero,16(sp)
  a0:	afa00014 	sw	zero,20(sp)
  a4:	0c000000 	jal	0 <EnKakasi3_Destroy>
  a8:	afa00018 	sw	zero,24(sp)
  ac:	8a080030 	lwl	t0,48(s0)
  b0:	9a080033 	lwr	t0,51(s0)
  b4:	8e0f0004 	lw	t7,4(s0)
  b8:	240900ff 	li	t1,255
  bc:	aa0801b0 	swl	t0,432(s0)
  c0:	ba0801b3 	swr	t0,435(s0)
  c4:	96080034 	lhu	t0,52(s0)
  c8:	3c053c23 	lui	a1,0x3c23
  cc:	35f80400 	ori	t8,t7,0x400
  d0:	ae180004 	sw	t8,4(s0)
  d4:	a20900ae 	sb	t1,174(s0)
  d8:	34a5d70a 	ori	a1,a1,0xd70a
  dc:	02002025 	move	a0,s0
  e0:	0c000000 	jal	0 <EnKakasi3_Destroy>
  e4:	a60801b4 	sh	t0,436(s0)
  e8:	3c0a0000 	lui	t2,0x0
  ec:	254a0000 	addiu	t2,t2,0
  f0:	ae0a014c 	sw	t2,332(s0)
  f4:	8fbf002c 	lw	ra,44(sp)
  f8:	8fb00028 	lw	s0,40(sp)
  fc:	27bd0038 	addiu	sp,sp,56
 100:	03e00008 	jr	ra
 104:	00000000 	nop

00000108 <func_80A90E28>:
 108:	27bdffd8 	addiu	sp,sp,-40
 10c:	afbf0024 	sw	ra,36(sp)
 110:	afb00020 	sw	s0,32(sp)
 114:	a48001ae 	sh	zero,430(a0)
 118:	44802000 	mtc1	zero,$f4
 11c:	848e01ae 	lh	t6,430(a0)
 120:	00808025 	move	s0,a0
 124:	a48001a4 	sh	zero,420(a0)
 128:	24840168 	addiu	a0,a0,360
 12c:	3c053f00 	lui	a1,0x3f00
 130:	3c063f80 	lui	a2,0x3f80
 134:	e4840004 	swc1	$f4,4(a0)
 138:	0c000000 	jal	0 <EnKakasi3_Destroy>
 13c:	a48e0042 	sh	t6,66(a0)
 140:	860501b0 	lh	a1,432(s0)
 144:	afa00010 	sw	zero,16(sp)
 148:	260400b4 	addiu	a0,s0,180
 14c:	24060005 	li	a2,5
 150:	0c000000 	jal	0 <EnKakasi3_Destroy>
 154:	24072710 	li	a3,10000
 158:	860501b2 	lh	a1,434(s0)
 15c:	afa00010 	sw	zero,16(sp)
 160:	260400b6 	addiu	a0,s0,182
 164:	24060005 	li	a2,5
 168:	0c000000 	jal	0 <EnKakasi3_Destroy>
 16c:	24072710 	li	a3,10000
 170:	860501b4 	lh	a1,436(s0)
 174:	afa00010 	sw	zero,16(sp)
 178:	260400b8 	addiu	a0,s0,184
 17c:	24060005 	li	a2,5
 180:	0c000000 	jal	0 <EnKakasi3_Destroy>
 184:	24072710 	li	a3,10000
 188:	8fbf0024 	lw	ra,36(sp)
 18c:	8fb00020 	lw	s0,32(sp)
 190:	27bd0028 	addiu	sp,sp,40
 194:	03e00008 	jr	ra
 198:	00000000 	nop

0000019c <func_80A90EBC>:
 19c:	27bdffd8 	addiu	sp,sp,-40
 1a0:	3c020001 	lui	v0,0x1
 1a4:	afbf0024 	sw	ra,36(sp)
 1a8:	afb00020 	sw	s0,32(sp)
 1ac:	00451021 	addu	v0,v0,a1
 1b0:	00808025 	move	s0,a0
 1b4:	10c0001c 	beqz	a2,228 <func_80A90EBC+0x8c>
 1b8:	904204e8 	lbu	v0,1256(v0)
 1bc:	848e01a2 	lh	t6,418(a0)
 1c0:	3c010000 	lui	at,0x0
 1c4:	15c0000f 	bnez	t6,204 <func_80A90EBC+0x68>
 1c8:	00000000 	nop
 1cc:	0c000000 	jal	0 <EnKakasi3_Destroy>
 1d0:	c42c00d4 	lwc1	$f12,212(at)
 1d4:	4600010d 	trunc.w.s	$f4,$f0
 1d8:	3c010000 	lui	at,0x0
 1dc:	44082000 	mfc1	t0,$f4
 1e0:	00000000 	nop
 1e4:	2509001e 	addiu	t1,t0,30
 1e8:	a60901a2 	sh	t1,418(s0)
 1ec:	0c000000 	jal	0 <EnKakasi3_Destroy>
 1f0:	c42c00d8 	lwc1	$f12,216(at)
 1f4:	4600018d 	trunc.w.s	$f6,$f0
 1f8:	440b3000 	mfc1	t3,$f6
 1fc:	00000000 	nop
 200:	a60b01a6 	sh	t3,422(s0)
 204:	3c010000 	lui	at,0x0
 208:	0c000000 	jal	0 <EnKakasi3_Destroy>
 20c:	c42c00dc 	lwc1	$f12,220(at)
 210:	4600020d 	trunc.w.s	$f8,$f0
 214:	860201a6 	lh	v0,422(s0)
 218:	440f4000 	mfc1	t7,$f8
 21c:	00000000 	nop
 220:	25f80005 	addiu	t8,t7,5
 224:	a618019a 	sh	t8,410(s0)
 228:	2c410005 	sltiu	at,v0,5
 22c:	1020002f 	beqz	at,2ec <func_80A90EBC+0x150>
 230:	0002c880 	sll	t9,v0,0x2
 234:	3c010000 	lui	at,0x0
 238:	00390821 	addu	at,at,t9
 23c:	8c3900e0 	lw	t9,224(at)
 240:	03200008 	jr	t9
 244:	00000000 	nop
 248:	8608019a 	lh	t0,410(s0)
 24c:	860a01a4 	lh	t2,420(s0)
 250:	240b0001 	li	t3,1
 254:	25090001 	addiu	t1,t0,1
 258:	15400024 	bnez	t2,2ec <func_80A90EBC+0x150>
 25c:	a609019a 	sh	t1,410(s0)
 260:	a60b01a4 	sh	t3,420(s0)
 264:	02002025 	move	a0,s0
 268:	0c000000 	jal	0 <EnKakasi3_Destroy>
 26c:	2405286b 	li	a1,10347
 270:	1000001f 	b	2f0 <func_80A90EBC+0x154>
 274:	8602019a 	lh	v0,410(s0)
 278:	860c019a 	lh	t4,410(s0)
 27c:	3c013f80 	lui	at,0x3f80
 280:	44815000 	mtc1	at,$f10
 284:	258d0001 	addiu	t5,t4,1
 288:	a60d019a 	sh	t5,410(s0)
 28c:	10000017 	b	2ec <func_80A90EBC+0x150>
 290:	e60a01b8 	swc1	$f10,440(s0)
 294:	860e019a 	lh	t6,410(s0)
 298:	861801ae 	lh	t8,430(s0)
 29c:	24191388 	li	t9,5000
 2a0:	25cf0001 	addiu	t7,t6,1
 2a4:	17000011 	bnez	t8,2ec <func_80A90EBC+0x150>
 2a8:	a60f019a 	sh	t7,410(s0)
 2ac:	1000000f 	b	2ec <func_80A90EBC+0x150>
 2b0:	a61901ae 	sh	t9,430(s0)
 2b4:	8608019a 	lh	t0,410(s0)
 2b8:	860a01aa 	lh	t2,426(s0)
 2bc:	240b1388 	li	t3,5000
 2c0:	25090001 	addiu	t1,t0,1
 2c4:	15400009 	bnez	t2,2ec <func_80A90EBC+0x150>
 2c8:	a609019a 	sh	t1,410(s0)
 2cc:	10000007 	b	2ec <func_80A90EBC+0x150>
 2d0:	a60b01aa 	sh	t3,426(s0)
 2d4:	860c019a 	lh	t4,410(s0)
 2d8:	3c014000 	lui	at,0x4000
 2dc:	44818000 	mtc1	at,$f16
 2e0:	258d0001 	addiu	t5,t4,1
 2e4:	a60d019a 	sh	t5,410(s0)
 2e8:	e61001b8 	swc1	$f16,440(s0)
 2ec:	8602019a 	lh	v0,410(s0)
 2f0:	240e0008 	li	t6,8
 2f4:	28410009 	slti	at,v0,9
 2f8:	14200003 	bnez	at,308 <func_80A90EBC+0x16c>
 2fc:	00000000 	nop
 300:	a60e019a 	sh	t6,410(s0)
 304:	8602019a 	lh	v0,410(s0)
 308:	1040006c 	beqz	v0,4bc <func_80A90EBC+0x320>
 30c:	3c01bf80 	lui	at,0xbf80
 310:	44819000 	mtc1	at,$f18
 314:	24010008 	li	at,8
 318:	1441000b 	bne	v0,at,348 <func_80A90EBC+0x1ac>
 31c:	e612006c 	swc1	$f18,108(s0)
 320:	960f0088 	lhu	t7,136(s0)
 324:	3c014040 	lui	at,0x4040
 328:	02002025 	move	a0,s0
 32c:	31f80001 	andi	t8,t7,0x1
 330:	53000006 	beqzl	t8,34c <func_80A90EBC+0x1b0>
 334:	3c063dcc 	lui	a2,0x3dcc
 338:	44812000 	mtc1	at,$f4
 33c:	24051847 	li	a1,6215
 340:	0c000000 	jal	0 <EnKakasi3_Destroy>
 344:	e6040060 	swc1	$f4,96(s0)
 348:	3c063dcc 	lui	a2,0x3dcc
 34c:	3c073e4c 	lui	a3,0x3e4c
 350:	34e7cccd 	ori	a3,a3,0xcccd
 354:	34c6cccd 	ori	a2,a2,0xcccd
 358:	2604016c 	addiu	a0,s0,364
 35c:	0c000000 	jal	0 <EnKakasi3_Destroy>
 360:	8e0501b8 	lw	a1,440(s0)
 364:	860501aa 	lh	a1,426(s0)
 368:	afa00010 	sw	zero,16(sp)
 36c:	260400b4 	addiu	a0,s0,180
 370:	24060005 	li	a2,5
 374:	0c000000 	jal	0 <EnKakasi3_Destroy>
 378:	240703e8 	li	a3,1000
 37c:	860501ae 	lh	a1,430(s0)
 380:	afa00010 	sw	zero,16(sp)
 384:	260400b8 	addiu	a0,s0,184
 388:	24060005 	li	a2,5
 38c:	0c000000 	jal	0 <EnKakasi3_Destroy>
 390:	240703e8 	li	a3,1000
 394:	860201aa 	lh	v0,426(s0)
 398:	02002025 	move	a0,s0
 39c:	50400017 	beqzl	v0,3fc <func_80A90EBC+0x260>
 3a0:	860201ae 	lh	v0,430(s0)
 3a4:	861900b4 	lh	t9,180(s0)
 3a8:	3c014248 	lui	at,0x4248
 3ac:	44814000 	mtc1	at,$f8
 3b0:	03224023 	subu	t0,t9,v0
 3b4:	44883000 	mtc1	t0,$f6
 3b8:	00000000 	nop
 3bc:	46803020 	cvt.s.w	$f0,$f6
 3c0:	46000005 	abs.s	$f0,$f0
 3c4:	4608003c 	c.lt.s	$f0,$f8
 3c8:	00000000 	nop
 3cc:	4502000b 	bc1fl	3fc <func_80A90EBC+0x260>
 3d0:	860201ae 	lh	v0,430(s0)
 3d4:	44825000 	mtc1	v0,$f10
 3d8:	3c01bf80 	lui	at,0xbf80
 3dc:	44819000 	mtc1	at,$f18
 3e0:	46805420 	cvt.s.w	$f16,$f10
 3e4:	46128102 	mul.s	$f4,$f16,$f18
 3e8:	4600218d 	trunc.w.s	$f6,$f4
 3ec:	440a3000 	mfc1	t2,$f6
 3f0:	00000000 	nop
 3f4:	a60a01aa 	sh	t2,426(s0)
 3f8:	860201ae 	lh	v0,430(s0)
 3fc:	50400017 	beqzl	v0,45c <func_80A90EBC+0x2c0>
 400:	860f01a4 	lh	t7,420(s0)
 404:	860b00b8 	lh	t3,184(s0)
 408:	3c014248 	lui	at,0x4248
 40c:	44815000 	mtc1	at,$f10
 410:	01626023 	subu	t4,t3,v0
 414:	448c4000 	mtc1	t4,$f8
 418:	00000000 	nop
 41c:	46804020 	cvt.s.w	$f0,$f8
 420:	46000005 	abs.s	$f0,$f0
 424:	460a003c 	c.lt.s	$f0,$f10
 428:	00000000 	nop
 42c:	4502000b 	bc1fl	45c <func_80A90EBC+0x2c0>
 430:	860f01a4 	lh	t7,420(s0)
 434:	44828000 	mtc1	v0,$f16
 438:	3c01bf80 	lui	at,0xbf80
 43c:	44812000 	mtc1	at,$f4
 440:	468084a0 	cvt.s.w	$f18,$f16
 444:	46049182 	mul.s	$f6,$f18,$f4
 448:	4600320d 	trunc.w.s	$f8,$f6
 44c:	440e4000 	mfc1	t6,$f8
 450:	00000000 	nop
 454:	a60e01ae 	sh	t6,430(s0)
 458:	860f01a4 	lh	t7,420(s0)
 45c:	51e00009 	beqzl	t7,484 <func_80A90EBC+0x2e8>
 460:	c60a0168 	lwc1	$f10,360(s0)
 464:	861800b6 	lh	t8,182(s0)
 468:	27191000 	addiu	t9,t8,4096
 46c:	a61900b6 	sh	t9,182(s0)
 470:	860800b6 	lh	t0,182(s0)
 474:	55000003 	bnezl	t0,484 <func_80A90EBC+0x2e8>
 478:	c60a0168 	lwc1	$f10,360(s0)
 47c:	a60001a4 	sh	zero,420(s0)
 480:	c60a0168 	lwc1	$f10,360(s0)
 484:	2401000b 	li	at,11
 488:	4600540d 	trunc.w.s	$f16,$f10
 48c:	44028000 	mfc1	v0,$f16
 490:	00000000 	nop
 494:	00021400 	sll	v0,v0,0x10
 498:	00021403 	sra	v0,v0,0x10
 49c:	10410003 	beq	v0,at,4ac <func_80A90EBC+0x310>
 4a0:	24010011 	li	at,17
 4a4:	14410003 	bne	v0,at,4b4 <func_80A90EBC+0x318>
 4a8:	00000000 	nop
 4ac:	0c000000 	jal	0 <EnKakasi3_Destroy>
 4b0:	2405286a 	li	a1,10346
 4b4:	0c000000 	jal	0 <EnKakasi3_Destroy>
 4b8:	26040150 	addiu	a0,s0,336
 4bc:	8fbf0024 	lw	ra,36(sp)
 4c0:	8fb00020 	lw	s0,32(sp)
 4c4:	27bd0028 	addiu	sp,sp,40
 4c8:	03e00008 	jr	ra
 4cc:	00000000 	nop

000004d0 <func_80A911F0>:
 4d0:	27bdffd8 	addiu	sp,sp,-40
 4d4:	afa40028 	sw	a0,40(sp)
 4d8:	afbf0024 	sw	ra,36(sp)
 4dc:	3c040000 	lui	a0,0x0
 4e0:	afa5002c 	sw	a1,44(sp)
 4e4:	0c000000 	jal	0 <EnKakasi3_Destroy>
 4e8:	24840000 	addiu	a0,a0,0
 4ec:	44822000 	mtc1	v0,$f4
 4f0:	3c01c120 	lui	at,0xc120
 4f4:	44819000 	mtc1	at,$f18
 4f8:	468021a0 	cvt.s.w	$f6,$f4
 4fc:	8fa40028 	lw	a0,40(sp)
 500:	3c050000 	lui	a1,0x0
 504:	24a50000 	addiu	a1,a1,0
 508:	3c063f80 	lui	a2,0x3f80
 50c:	24070000 	li	a3,0
 510:	4600320d 	trunc.w.s	$f8,$f6
 514:	afa00014 	sw	zero,20(sp)
 518:	e7b20018 	swc1	$f18,24(sp)
 51c:	24840150 	addiu	a0,a0,336
 520:	440f4000 	mfc1	t7,$f8
 524:	00000000 	nop
 528:	000fc400 	sll	t8,t7,0x10
 52c:	0018cc03 	sra	t9,t8,0x10
 530:	44995000 	mtc1	t9,$f10
 534:	00000000 	nop
 538:	46805420 	cvt.s.w	$f16,$f10
 53c:	0c000000 	jal	0 <EnKakasi3_Destroy>
 540:	e7b00010 	swc1	$f16,16(sp)
 544:	8fa90028 	lw	t1,40(sp)
 548:	3c080000 	lui	t0,0x0
 54c:	25080000 	addiu	t0,t0,0
 550:	ad28014c 	sw	t0,332(t1)
 554:	8fbf0024 	lw	ra,36(sp)
 558:	27bd0028 	addiu	sp,sp,40
 55c:	03e00008 	jr	ra
 560:	00000000 	nop

00000564 <func_80A91284>:
 564:	27bdffe8 	addiu	sp,sp,-24
 568:	afa5001c 	sw	a1,28(sp)
 56c:	00802825 	move	a1,a0
 570:	afbf0014 	sw	ra,20(sp)
 574:	afa40018 	sw	a0,24(sp)
 578:	afa50018 	sw	a1,24(sp)
 57c:	0c000000 	jal	0 <EnKakasi3_Destroy>
 580:	24840150 	addiu	a0,a0,336
 584:	8fa50018 	lw	a1,24(sp)
 588:	3c020000 	lui	v0,0x0
 58c:	240e40a1 	li	t6,16545
 590:	240f0006 	li	t7,6
 594:	24420000 	addiu	v0,v0,0
 598:	a4ae010e 	sh	t6,270(a1)
 59c:	a4af0196 	sh	t7,406(a1)
 5a0:	a4a0019a 	sh	zero,410(a1)
 5a4:	8c580004 	lw	t8,4(v0)
 5a8:	240b0001 	li	t3,1
 5ac:	5300000c 	beqzl	t8,5e0 <func_80A91284+0x7c>
 5b0:	a0ab0194 	sb	t3,404(a1)
 5b4:	a0a00194 	sb	zero,404(a1)
 5b8:	905912c5 	lbu	t9,4805(v0)
 5bc:	240840a0 	li	t0,16544
 5c0:	24090005 	li	t1,5
 5c4:	13200011 	beqz	t9,60c <func_80A91284+0xa8>
 5c8:	240a0001 	li	t2,1
 5cc:	a4a8010e 	sh	t0,270(a1)
 5d0:	a4a90196 	sh	t1,406(a1)
 5d4:	1000000d 	b	60c <func_80A91284+0xa8>
 5d8:	a4aa01a8 	sh	t2,424(a1)
 5dc:	a0ab0194 	sb	t3,404(a1)
 5e0:	904c12c5 	lbu	t4,4805(v0)
 5e4:	11800009 	beqz	t4,60c <func_80A91284+0xa8>
 5e8:	00000000 	nop
 5ec:	90ad0195 	lbu	t5,405(a1)
 5f0:	240e40a2 	li	t6,16546
 5f4:	240f40a3 	li	t7,16547
 5f8:	51a00004 	beqzl	t5,60c <func_80A91284+0xa8>
 5fc:	a4af010e 	sh	t7,270(a1)
 600:	10000002 	b	60c <func_80A91284+0xa8>
 604:	a4ae010e 	sh	t6,270(a1)
 608:	a4af010e 	sh	t7,270(a1)
 60c:	3c180000 	lui	t8,0x0
 610:	27180000 	addiu	t8,t8,0
 614:	acb8014c 	sw	t8,332(a1)
 618:	8fbf0014 	lw	ra,20(sp)
 61c:	27bd0018 	addiu	sp,sp,24
 620:	03e00008 	jr	ra
 624:	00000000 	nop

00000628 <func_80A91348>:
 628:	27bdffd0 	addiu	sp,sp,-48
 62c:	afbf0024 	sw	ra,36(sp)
 630:	afb00020 	sw	s0,32(sp)
 634:	afa50034 	sw	a1,52(sp)
 638:	8ca81c44 	lw	t0,7236(a1)
 63c:	00808025 	move	s0,a0
 640:	0c000000 	jal	0 <EnKakasi3_Destroy>
 644:	afa8002c 	sw	t0,44(sp)
 648:	0c000000 	jal	0 <EnKakasi3_Destroy>
 64c:	26040150 	addiu	a0,s0,336
 650:	240fffff 	li	t7,-1
 654:	a60f0208 	sh	t7,520(s0)
 658:	8fa50034 	lw	a1,52(sp)
 65c:	0c000000 	jal	0 <EnKakasi3_Destroy>
 660:	02002025 	move	a0,s0
 664:	10400012 	beqz	v0,6b0 <func_80A91348+0x88>
 668:	8fa8002c 	lw	t0,44(sp)
 66c:	92180194 	lbu	t8,404(s0)
 670:	3c0b0000 	lui	t3,0x0
 674:	256b0000 	addiu	t3,t3,0
 678:	1700000b 	bnez	t8,6a8 <func_80A91348+0x80>
 67c:	00000000 	nop
 680:	861901a8 	lh	t9,424(s0)
 684:	3c0a0000 	lui	t2,0x0
 688:	3c090000 	lui	t1,0x0
 68c:	17200004 	bnez	t9,6a0 <func_80A91348+0x78>
 690:	254a0000 	addiu	t2,t2,0
 694:	25290000 	addiu	t1,t1,0
 698:	1000007a 	b	884 <func_80A91348+0x25c>
 69c:	ae09014c 	sw	t1,332(s0)
 6a0:	10000078 	b	884 <func_80A91348+0x25c>
 6a4:	ae0a014c 	sw	t2,332(s0)
 6a8:	10000076 	b	884 <func_80A91348+0x25c>
 6ac:	ae0b014c 	sw	t3,332(s0)
 6b0:	3c0142f0 	lui	at,0x42f0
 6b4:	44812000 	mtc1	at,$f4
 6b8:	c6000090 	lwc1	$f0,144(s0)
 6bc:	860c008a 	lh	t4,138(s0)
 6c0:	860d00b6 	lh	t5,182(s0)
 6c4:	4600203c 	c.lt.s	$f4,$f0
 6c8:	018d1023 	subu	v0,t4,t5
 6cc:	00021400 	sll	v0,v0,0x10
 6d0:	4501006c 	bc1t	884 <func_80A91348+0x25c>
 6d4:	00021403 	sra	v0,v0,0x10
 6d8:	04400004 	bltz	v0,6ec <func_80A91348+0xc4>
 6dc:	00021823 	negu	v1,v0
 6e0:	00021c00 	sll	v1,v0,0x10
 6e4:	10000003 	b	6f4 <func_80A91348+0xcc>
 6e8:	00031c03 	sra	v1,v1,0x10
 6ec:	00031c00 	sll	v1,v1,0x10
 6f0:	00031c03 	sra	v1,v1,0x10
 6f4:	28614300 	slti	at,v1,17152
 6f8:	50200063 	beqzl	at,888 <func_80A91348+0x260>
 6fc:	8fbf0024 	lw	ra,36(sp)
 700:	920e0194 	lbu	t6,404(s0)
 704:	3c0d0000 	lui	t5,0x0
 708:	02002025 	move	a0,s0
 70c:	15c0002b 	bnez	t6,7bc <func_80A91348+0x194>
 710:	3c0642c8 	lui	a2,0x42c8
 714:	8d020680 	lw	v0,1664(t0)
 718:	240508d4 	li	a1,2260
 71c:	02003825 	move	a3,s0
 720:	000279c0 	sll	t7,v0,0x7
 724:	05e1001c 	bgez	t7,798 <func_80A91348+0x170>
 728:	3c0142a0 	lui	at,0x42a0
 72c:	8fa40034 	lw	a0,52(sp)
 730:	2406ff9d 	li	a2,-99
 734:	afa00010 	sw	zero,16(sp)
 738:	0c000000 	jal	0 <EnKakasi3_Destroy>
 73c:	afa8002c 	sw	t0,44(sp)
 740:	8fa40034 	lw	a0,52(sp)
 744:	3c010001 	lui	at,0x1
 748:	44803000 	mtc1	zero,$f6
 74c:	a6020208 	sh	v0,520(s0)
 750:	24180037 	li	t8,55
 754:	00240821 	addu	at,at,a0
 758:	a03803dc 	sb	t8,988(at)
 75c:	24190005 	li	t9,5
 760:	a6190196 	sh	t9,406(s0)
 764:	240540a4 	li	a1,16548
 768:	00003025 	move	a2,zero
 76c:	0c000000 	jal	0 <EnKakasi3_Destroy>
 770:	e60601b8 	swc1	$f6,440(s0)
 774:	8fa8002c 	lw	t0,44(sp)
 778:	3c010080 	lui	at,0x80
 77c:	3c0b0000 	lui	t3,0x0
 780:	8d090680 	lw	t1,1664(t0)
 784:	256b0000 	addiu	t3,t3,0
 788:	01215025 	or	t2,t1,at
 78c:	ad0a0680 	sw	t2,1664(t0)
 790:	1000003c 	b	884 <func_80A91348+0x25c>
 794:	ae0b014c 	sw	t3,332(s0)
 798:	44814000 	mtc1	at,$f8
 79c:	3c010080 	lui	at,0x80
 7a0:	00416025 	or	t4,v0,at
 7a4:	4608003c 	c.lt.s	$f0,$f8
 7a8:	00000000 	nop
 7ac:	45000033 	bc1f	87c <func_80A91348+0x254>
 7b0:	00000000 	nop
 7b4:	10000031 	b	87c <func_80A91348+0x254>
 7b8:	ad0c0680 	sw	t4,1664(t0)
 7bc:	91ad12c5 	lbu	t5,4805(t5)
 7c0:	11a0002e 	beqz	t5,87c <func_80A91348+0x254>
 7c4:	00000000 	nop
 7c8:	920e0195 	lbu	t6,405(s0)
 7cc:	15c0002b 	bnez	t6,87c <func_80A91348+0x254>
 7d0:	00000000 	nop
 7d4:	8d020680 	lw	v0,1664(t0)
 7d8:	240508d4 	li	a1,2260
 7dc:	02003825 	move	a3,s0
 7e0:	000279c0 	sll	t7,v0,0x7
 7e4:	05e1001d 	bgez	t7,85c <func_80A91348+0x234>
 7e8:	3c0142a0 	lui	at,0x42a0
 7ec:	8fa40034 	lw	a0,52(sp)
 7f0:	2406ff9d 	li	a2,-99
 7f4:	afa00010 	sw	zero,16(sp)
 7f8:	0c000000 	jal	0 <EnKakasi3_Destroy>
 7fc:	afa8002c 	sw	t0,44(sp)
 800:	a6020208 	sh	v0,520(s0)
 804:	8fb90034 	lw	t9,52(sp)
 808:	3c010001 	lui	at,0x1
 80c:	44805000 	mtc1	zero,$f10
 810:	24180037 	li	t8,55
 814:	00390821 	addu	at,at,t9
 818:	a03803dc 	sb	t8,988(at)
 81c:	24090005 	li	t1,5
 820:	a6090196 	sh	t1,406(s0)
 824:	e60a01b8 	swc1	$f10,440(s0)
 828:	8fa40034 	lw	a0,52(sp)
 82c:	240540a8 	li	a1,16552
 830:	0c000000 	jal	0 <EnKakasi3_Destroy>
 834:	00003025 	move	a2,zero
 838:	8fa8002c 	lw	t0,44(sp)
 83c:	3c010080 	lui	at,0x80
 840:	3c0c0000 	lui	t4,0x0
 844:	8d0a0680 	lw	t2,1664(t0)
 848:	258c0000 	addiu	t4,t4,0
 84c:	01415825 	or	t3,t2,at
 850:	ad0b0680 	sw	t3,1664(t0)
 854:	1000000b 	b	884 <func_80A91348+0x25c>
 858:	ae0c014c 	sw	t4,332(s0)
 85c:	44818000 	mtc1	at,$f16
 860:	3c010080 	lui	at,0x80
 864:	00416825 	or	t5,v0,at
 868:	4610003c 	c.lt.s	$f0,$f16
 86c:	00000000 	nop
 870:	45000002 	bc1f	87c <func_80A91348+0x254>
 874:	00000000 	nop
 878:	ad0d0680 	sw	t5,1664(t0)
 87c:	0c000000 	jal	0 <EnKakasi3_Destroy>
 880:	8fa50034 	lw	a1,52(sp)
 884:	8fbf0024 	lw	ra,36(sp)
 888:	8fb00020 	lw	s0,32(sp)
 88c:	27bd0030 	addiu	sp,sp,48
 890:	03e00008 	jr	ra
 894:	00000000 	nop

00000898 <func_80A915B8>:
 898:	27bdffe8 	addiu	sp,sp,-24
 89c:	afbf0014 	sw	ra,20(sp)
 8a0:	afa40018 	sw	a0,24(sp)
 8a4:	afa5001c 	sw	a1,28(sp)
 8a8:	0c000000 	jal	0 <EnKakasi3_Destroy>
 8ac:	24a420d8 	addiu	a0,a1,8408
 8b0:	24010005 	li	at,5
 8b4:	5441000f 	bnel	v0,at,8f4 <func_80A915B8+0x5c>
 8b8:	8fbf0014 	lw	ra,20(sp)
 8bc:	0c000000 	jal	0 <EnKakasi3_Destroy>
 8c0:	8fa4001c 	lw	a0,28(sp)
 8c4:	5040000b 	beqzl	v0,8f4 <func_80A915B8+0x5c>
 8c8:	8fbf0014 	lw	ra,20(sp)
 8cc:	0c000000 	jal	0 <EnKakasi3_Destroy>
 8d0:	8fa4001c 	lw	a0,28(sp)
 8d4:	8fa4001c 	lw	a0,28(sp)
 8d8:	0c000000 	jal	0 <EnKakasi3_Destroy>
 8dc:	2405002c 	li	a1,44
 8e0:	8faf0018 	lw	t7,24(sp)
 8e4:	3c0e0000 	lui	t6,0x0
 8e8:	25ce0000 	addiu	t6,t6,0
 8ec:	adee014c 	sw	t6,332(t7)
 8f0:	8fbf0014 	lw	ra,20(sp)
 8f4:	27bd0018 	addiu	sp,sp,24
 8f8:	03e00008 	jr	ra
 8fc:	00000000 	nop

00000900 <func_80A91620>:
 900:	27bdffd8 	addiu	sp,sp,-40
 904:	3c010001 	lui	at,0x1
 908:	afbf001c 	sw	ra,28(sp)
 90c:	afb00018 	sw	s0,24(sp)
 910:	00a11821 	addu	v1,a1,at
 914:	946204c6 	lhu	v0,1222(v1)
 918:	24010004 	li	at,4
 91c:	00808025 	move	s0,a0
 920:	00a03825 	move	a3,a1
 924:	10410006 	beq	v0,at,940 <func_80A91620+0x40>
 928:	8ca81c44 	lw	t0,7236(a1)
 92c:	28410005 	slti	at,v0,5
 930:	1420001e 	bnez	at,9ac <func_80A91620+0xac>
 934:	2841000b 	slti	at,v0,11
 938:	5020001d 	beqzl	at,9b0 <func_80A91620+0xb0>
 93c:	24010003 	li	at,3
 940:	906e03dc 	lbu	t6,988(v1)
 944:	00e02025 	move	a0,a3
 948:	55c00019 	bnezl	t6,9b0 <func_80A91620+0xb0>
 94c:	24010003 	li	at,3
 950:	86050208 	lh	a1,520(s0)
 954:	0c000000 	jal	0 <EnKakasi3_Destroy>
 958:	afa7002c 	sw	a3,44(sp)
 95c:	86020208 	lh	v0,520(s0)
 960:	8fa7002c 	lw	a3,44(sp)
 964:	2409ffff 	li	t1,-1
 968:	00027880 	sll	t7,v0,0x2
 96c:	00efc021 	addu	t8,a3,t7
 970:	8f190790 	lw	t9,1936(t8)
 974:	2401ffff 	li	at,-1
 978:	17200003 	bnez	t9,988 <func_80A91620+0x88>
 97c:	00000000 	nop
 980:	a6090208 	sh	t1,520(s0)
 984:	86020208 	lh	v0,520(s0)
 988:	10410004 	beq	v0,at,99c <func_80A91620+0x9c>
 98c:	00025080 	sll	t2,v0,0x2
 990:	00ea5821 	addu	t3,a3,t2
 994:	0c000000 	jal	0 <EnKakasi3_Destroy>
 998:	8d640790 	lw	a0,1936(t3)
 99c:	3c0c0000 	lui	t4,0x0
 9a0:	258c0000 	addiu	t4,t4,0
 9a4:	10000021 	b	a2c <func_80A91620+0x12c>
 9a8:	ae0c014c 	sw	t4,332(s0)
 9ac:	24010003 	li	at,3
 9b0:	54410013 	bnel	v0,at,a00 <func_80A91620+0x100>
 9b4:	24010001 	li	at,1
 9b8:	906d03dc 	lbu	t5,988(v1)
 9bc:	240e0005 	li	t6,5
 9c0:	00e02025 	move	a0,a3
 9c4:	15a0000d 	bnez	t5,9fc <func_80A91620+0xfc>
 9c8:	240540a5 	li	a1,16549
 9cc:	a60e0196 	sh	t6,406(s0)
 9d0:	afa7002c 	sw	a3,44(sp)
 9d4:	0c000000 	jal	0 <EnKakasi3_Destroy>
 9d8:	00003025 	move	a2,zero
 9dc:	8fa4002c 	lw	a0,44(sp)
 9e0:	00002825 	move	a1,zero
 9e4:	0c000000 	jal	0 <EnKakasi3_Destroy>
 9e8:	24060008 	li	a2,8
 9ec:	3c0f0000 	lui	t7,0x0
 9f0:	25ef0000 	addiu	t7,t7,0
 9f4:	1000000d 	b	a2c <func_80A91620+0x12c>
 9f8:	ae0f014c 	sw	t7,332(s0)
 9fc:	24010001 	li	at,1
 a00:	1441000a 	bne	v0,at,a2c <func_80A91620+0x12c>
 a04:	02002025 	move	a0,s0
 a08:	00e02825 	move	a1,a3
 a0c:	00003025 	move	a2,zero
 a10:	0c000000 	jal	0 <EnKakasi3_Destroy>
 a14:	afa80024 	sw	t0,36(sp)
 a18:	8fa80024 	lw	t0,36(sp)
 a1c:	3c010080 	lui	at,0x80
 a20:	8d180680 	lw	t8,1664(t0)
 a24:	0301c825 	or	t9,t8,at
 a28:	ad190680 	sw	t9,1664(t0)
 a2c:	8fbf001c 	lw	ra,28(sp)
 a30:	8fb00018 	lw	s0,24(sp)
 a34:	27bd0028 	addiu	sp,sp,40
 a38:	03e00008 	jr	ra
 a3c:	00000000 	nop

00000a40 <func_80A91760>:
 a40:	27bdffd8 	addiu	sp,sp,-40
 a44:	afbf0024 	sw	ra,36(sp)
 a48:	afb10020 	sw	s1,32(sp)
 a4c:	afb0001c 	sw	s0,28(sp)
 a50:	00808025 	move	s0,a0
 a54:	0c000000 	jal	0 <EnKakasi3_Destroy>
 a58:	00a08825 	move	s1,a1
 a5c:	0c000000 	jal	0 <EnKakasi3_Destroy>
 a60:	26040150 	addiu	a0,s0,336
 a64:	0c000000 	jal	0 <EnKakasi3_Destroy>
 a68:	262420d8 	addiu	a0,s1,8408
 a6c:	860e0196 	lh	t6,406(s0)
 a70:	55c20016 	bnel	t6,v0,acc <func_80A91760+0x8c>
 a74:	8fbf0024 	lw	ra,36(sp)
 a78:	0c000000 	jal	0 <EnKakasi3_Destroy>
 a7c:	02202025 	move	a0,s1
 a80:	10400011 	beqz	v0,ac8 <func_80A91760+0x88>
 a84:	240f0037 	li	t7,55
 a88:	3c010001 	lui	at,0x1
 a8c:	00310821 	addu	at,at,s1
 a90:	a02f03dc 	sb	t7,988(at)
 a94:	02202025 	move	a0,s1
 a98:	0c000000 	jal	0 <EnKakasi3_Destroy>
 a9c:	2405002d 	li	a1,45
 aa0:	3c180000 	lui	t8,0x0
 aa4:	27180000 	addiu	t8,t8,0
 aa8:	ae18014c 	sw	t8,332(s0)
 aac:	afa00010 	sw	zero,16(sp)
 ab0:	02202025 	move	a0,s1
 ab4:	240508e8 	li	a1,2280
 ab8:	2406ff9d 	li	a2,-99
 abc:	0c000000 	jal	0 <EnKakasi3_Destroy>
 ac0:	02003825 	move	a3,s0
 ac4:	a6020208 	sh	v0,520(s0)
 ac8:	8fbf0024 	lw	ra,36(sp)
 acc:	8fb0001c 	lw	s0,28(sp)
 ad0:	8fb10020 	lw	s1,32(sp)
 ad4:	03e00008 	jr	ra
 ad8:	27bd0028 	addiu	sp,sp,40

00000adc <func_80A917FC>:
 adc:	27bdffe8 	addiu	sp,sp,-24
 ae0:	3c0e0001 	lui	t6,0x1
 ae4:	afbf0014 	sw	ra,20(sp)
 ae8:	afa40018 	sw	a0,24(sp)
 aec:	01c57021 	addu	t6,t6,a1
 af0:	95ce04c6 	lhu	t6,1222(t6)
 af4:	2401000f 	li	at,15
 af8:	00a03825 	move	a3,a1
 afc:	11c10005 	beq	t6,at,b14 <func_80A917FC+0x38>
 b00:	240f0004 	li	t7,4
 b04:	0c000000 	jal	0 <EnKakasi3_Destroy>
 b08:	24060001 	li	a2,1
 b0c:	10000010 	b	b50 <func_80A917FC+0x74>
 b10:	8fbf0014 	lw	ra,20(sp)
 b14:	3c010001 	lui	at,0x1
 b18:	00270821 	addu	at,at,a3
 b1c:	a42f04c6 	sh	t7,1222(at)
 b20:	afa7001c 	sw	a3,28(sp)
 b24:	0c000000 	jal	0 <EnKakasi3_Destroy>
 b28:	00e02025 	move	a0,a3
 b2c:	8fb80018 	lw	t8,24(sp)
 b30:	8fa4001c 	lw	a0,28(sp)
 b34:	0c000000 	jal	0 <EnKakasi3_Destroy>
 b38:	87050208 	lh	a1,520(t8)
 b3c:	8fa80018 	lw	t0,24(sp)
 b40:	3c190000 	lui	t9,0x0
 b44:	27390000 	addiu	t9,t9,0
 b48:	ad19014c 	sw	t9,332(t0)
 b4c:	8fbf0014 	lw	ra,20(sp)
 b50:	27bd0018 	addiu	sp,sp,24
 b54:	03e00008 	jr	ra
 b58:	00000000 	nop

00000b5c <func_80A9187C>:
 b5c:	27bdffe8 	addiu	sp,sp,-24
 b60:	afbf0014 	sw	ra,20(sp)
 b64:	afa40018 	sw	a0,24(sp)
 b68:	afa5001c 	sw	a1,28(sp)
 b6c:	0c000000 	jal	0 <EnKakasi3_Destroy>
 b70:	24a420d8 	addiu	a0,a1,8408
 b74:	24010005 	li	at,5
 b78:	5441000f 	bnel	v0,at,bb8 <func_80A9187C+0x5c>
 b7c:	8fbf0014 	lw	ra,20(sp)
 b80:	0c000000 	jal	0 <EnKakasi3_Destroy>
 b84:	8fa4001c 	lw	a0,28(sp)
 b88:	5040000b 	beqzl	v0,bb8 <func_80A9187C+0x5c>
 b8c:	8fbf0014 	lw	ra,20(sp)
 b90:	0c000000 	jal	0 <EnKakasi3_Destroy>
 b94:	8fa4001c 	lw	a0,28(sp)
 b98:	8fa4001c 	lw	a0,28(sp)
 b9c:	0c000000 	jal	0 <EnKakasi3_Destroy>
 ba0:	24050028 	li	a1,40
 ba4:	8faf0018 	lw	t7,24(sp)
 ba8:	3c0e0000 	lui	t6,0x0
 bac:	25ce0000 	addiu	t6,t6,0
 bb0:	adee014c 	sw	t6,332(t7)
 bb4:	8fbf0014 	lw	ra,20(sp)
 bb8:	27bd0018 	addiu	sp,sp,24
 bbc:	03e00008 	jr	ra
 bc0:	00000000 	nop

00000bc4 <func_80A918E4>:
 bc4:	27bdffd8 	addiu	sp,sp,-40
 bc8:	3c0e0000 	lui	t6,0x0
 bcc:	8dce0000 	lw	t6,0(t6)
 bd0:	afbf001c 	sw	ra,28(sp)
 bd4:	afb10018 	sw	s1,24(sp)
 bd8:	afb00014 	sw	s0,20(sp)
 bdc:	85cf12da 	lh	t7,4826(t6)
 be0:	00a08025 	move	s0,a1
 be4:	00808825 	move	s1,a0
 be8:	11e00009 	beqz	t7,c10 <func_80A918E4+0x4c>
 bec:	8ca71c44 	lw	a3,7236(a1)
 bf0:	3c050001 	lui	a1,0x1
 bf4:	00b02821 	addu	a1,a1,s0
 bf8:	94a504c6 	lhu	a1,1222(a1)
 bfc:	3c040000 	lui	a0,0x0
 c00:	24840034 	addiu	a0,a0,52
 c04:	0c000000 	jal	0 <EnKakasi3_Destroy>
 c08:	afa70024 	sw	a3,36(sp)
 c0c:	8fa70024 	lw	a3,36(sp)
 c10:	3c010001 	lui	at,0x1
 c14:	02011821 	addu	v1,s0,at
 c18:	946204c6 	lhu	v0,1222(v1)
 c1c:	24010004 	li	at,4
 c20:	10410005 	beq	v0,at,c38 <func_80A918E4+0x74>
 c24:	28410005 	slti	at,v0,5
 c28:	14200019 	bnez	at,c90 <func_80A918E4+0xcc>
 c2c:	2841000b 	slti	at,v0,11
 c30:	50200018 	beqzl	at,c94 <func_80A918E4+0xd0>
 c34:	24010003 	li	at,3
 c38:	907803dc 	lbu	t8,988(v1)
 c3c:	02002025 	move	a0,s0
 c40:	240540a6 	li	a1,16550
 c44:	57000013 	bnezl	t8,c94 <func_80A918E4+0xd0>
 c48:	24010003 	li	at,3
 c4c:	0c000000 	jal	0 <EnKakasi3_Destroy>
 c50:	00003025 	move	a2,zero
 c54:	24190005 	li	t9,5
 c58:	a6390196 	sh	t9,406(s1)
 c5c:	02002025 	move	a0,s0
 c60:	0c000000 	jal	0 <EnKakasi3_Destroy>
 c64:	86250208 	lh	a1,520(s1)
 c68:	2408ffff 	li	t0,-1
 c6c:	a6280208 	sh	t0,520(s1)
 c70:	02002025 	move	a0,s0
 c74:	00002825 	move	a1,zero
 c78:	0c000000 	jal	0 <EnKakasi3_Destroy>
 c7c:	24060008 	li	a2,8
 c80:	3c090000 	lui	t1,0x0
 c84:	25290000 	addiu	t1,t1,0
 c88:	10000034 	b	d5c <func_80A918E4+0x198>
 c8c:	ae29014c 	sw	t1,332(s1)
 c90:	24010003 	li	at,3
 c94:	54410026 	bnel	v0,at,d30 <func_80A918E4+0x16c>
 c98:	24010001 	li	at,1
 c9c:	906a03dc 	lbu	t2,988(v1)
 ca0:	3c010001 	lui	at,0x1
 ca4:	00300821 	addu	at,at,s0
 ca8:	15400020 	bnez	t2,d2c <func_80A918E4+0x168>
 cac:	240b0004 	li	t3,4
 cb0:	a42b04c6 	sh	t3,1222(at)
 cb4:	3c0c0000 	lui	t4,0x0
 cb8:	8d8c0000 	lw	t4,0(t4)
 cbc:	3c040000 	lui	a0,0x0
 cc0:	24840060 	addiu	a0,a0,96
 cc4:	858d12da 	lh	t5,4826(t4)
 cc8:	51a00009 	beqzl	t5,cf0 <func_80A918E4+0x12c>
 ccc:	240e0001 	li	t6,1
 cd0:	0c000000 	jal	0 <EnKakasi3_Destroy>
 cd4:	afa30020 	sw	v1,32(sp)
 cd8:	8fa30020 	lw	v1,32(sp)
 cdc:	3c040000 	lui	a0,0x0
 ce0:	24840064 	addiu	a0,a0,100
 ce4:	0c000000 	jal	0 <EnKakasi3_Destroy>
 ce8:	946504c6 	lhu	a1,1222(v1)
 cec:	240e0001 	li	t6,1
 cf0:	a22e0195 	sb	t6,405(s1)
 cf4:	02002025 	move	a0,s0
 cf8:	240540a7 	li	a1,16551
 cfc:	0c000000 	jal	0 <EnKakasi3_Destroy>
 d00:	00003025 	move	a2,zero
 d04:	240f0005 	li	t7,5
 d08:	a62f0196 	sh	t7,406(s1)
 d0c:	02002025 	move	a0,s0
 d10:	00002825 	move	a1,zero
 d14:	0c000000 	jal	0 <EnKakasi3_Destroy>
 d18:	24060008 	li	a2,8
 d1c:	3c180000 	lui	t8,0x0
 d20:	27180000 	addiu	t8,t8,0
 d24:	1000000d 	b	d5c <func_80A918E4+0x198>
 d28:	ae38014c 	sw	t8,332(s1)
 d2c:	24010001 	li	at,1
 d30:	1441000a 	bne	v0,at,d5c <func_80A918E4+0x198>
 d34:	02202025 	move	a0,s1
 d38:	02002825 	move	a1,s0
 d3c:	00003025 	move	a2,zero
 d40:	0c000000 	jal	0 <EnKakasi3_Destroy>
 d44:	afa70024 	sw	a3,36(sp)
 d48:	8fa70024 	lw	a3,36(sp)
 d4c:	3c010080 	lui	at,0x80
 d50:	8cf90680 	lw	t9,1664(a3)
 d54:	03214025 	or	t0,t9,at
 d58:	ace80680 	sw	t0,1664(a3)
 d5c:	8fbf001c 	lw	ra,28(sp)
 d60:	8fb00014 	lw	s0,20(sp)
 d64:	8fb10018 	lw	s1,24(sp)
 d68:	03e00008 	jr	ra
 d6c:	27bd0028 	addiu	sp,sp,40

00000d70 <func_80A91A90>:
 d70:	27bdffe0 	addiu	sp,sp,-32
 d74:	afbf001c 	sw	ra,28(sp)
 d78:	afb10018 	sw	s1,24(sp)
 d7c:	afb00014 	sw	s0,20(sp)
 d80:	00a08025 	move	s0,a1
 d84:	0c000000 	jal	0 <EnKakasi3_Destroy>
 d88:	00808825 	move	s1,a0
 d8c:	0c000000 	jal	0 <EnKakasi3_Destroy>
 d90:	26240150 	addiu	a0,s1,336
 d94:	02002025 	move	a0,s0
 d98:	00002825 	move	a1,zero
 d9c:	0c000000 	jal	0 <EnKakasi3_Destroy>
 da0:	24060008 	li	a2,8
 da4:	0c000000 	jal	0 <EnKakasi3_Destroy>
 da8:	260420d8 	addiu	a0,s0,8408
 dac:	862e0196 	lh	t6,406(s1)
 db0:	55c2002a 	bnel	t6,v0,e5c <func_80A91A90+0xec>
 db4:	8fbf001c 	lw	ra,28(sp)
 db8:	0c000000 	jal	0 <EnKakasi3_Destroy>
 dbc:	02002025 	move	a0,s0
 dc0:	10400025 	beqz	v0,e58 <func_80A91A90+0xe8>
 dc4:	2401ffff 	li	at,-1
 dc8:	922f0195 	lbu	t7,405(s1)
 dcc:	3c030000 	lui	v1,0x0
 dd0:	24630000 	addiu	v1,v1,0
 dd4:	11e00006 	beqz	t7,df0 <func_80A91A90+0x80>
 dd8:	240bffff 	li	t3,-1
 ddc:	94620ee6 	lhu	v0,3814(v1)
 de0:	30581000 	andi	t8,v0,0x1000
 de4:	17000002 	bnez	t8,df0 <func_80A91A90+0x80>
 de8:	34591000 	ori	t9,v0,0x1000
 dec:	a4790ee6 	sh	t9,3814(v1)
 df0:	86220208 	lh	v0,520(s1)
 df4:	00024080 	sll	t0,v0,0x2
 df8:	02084821 	addu	t1,s0,t0
 dfc:	8d2a0790 	lw	t2,1936(t1)
 e00:	15400003 	bnez	t2,e10 <func_80A91A90+0xa0>
 e04:	00000000 	nop
 e08:	a62b0208 	sh	t3,520(s1)
 e0c:	86220208 	lh	v0,520(s1)
 e10:	10410004 	beq	v0,at,e24 <func_80A91A90+0xb4>
 e14:	00026080 	sll	t4,v0,0x2
 e18:	020c6821 	addu	t5,s0,t4
 e1c:	0c000000 	jal	0 <EnKakasi3_Destroy>
 e20:	8da40790 	lw	a0,1936(t5)
 e24:	0c000000 	jal	0 <EnKakasi3_Destroy>
 e28:	02002025 	move	a0,s0
 e2c:	3c010001 	lui	at,0x1
 e30:	00300821 	addu	at,at,s0
 e34:	240e0004 	li	t6,4
 e38:	a42e04c6 	sh	t6,1222(at)
 e3c:	02002025 	move	a0,s0
 e40:	00002825 	move	a1,zero
 e44:	0c000000 	jal	0 <EnKakasi3_Destroy>
 e48:	24060007 	li	a2,7
 e4c:	3c0f0000 	lui	t7,0x0
 e50:	25ef0000 	addiu	t7,t7,0
 e54:	ae2f014c 	sw	t7,332(s1)
 e58:	8fbf001c 	lw	ra,28(sp)
 e5c:	8fb00014 	lw	s0,20(sp)
 e60:	8fb10018 	lw	s1,24(sp)
 e64:	03e00008 	jr	ra
 e68:	27bd0020 	addiu	sp,sp,32

00000e6c <EnKakasi3_Update>:
 e6c:	27bdffc8 	addiu	sp,sp,-56
 e70:	3c0e0000 	lui	t6,0x0
 e74:	8dce0000 	lw	t6,0(t6)
 e78:	afbf0024 	sw	ra,36(sp)
 e7c:	afb00020 	sw	s0,32(sp)
 e80:	afa5003c 	sw	a1,60(sp)
 e84:	85cf12d8 	lh	t7,4824(t6)
 e88:	00808025 	move	s0,a0
 e8c:	3c040000 	lui	a0,0x0
 e90:	51e00009 	beqzl	t7,eb8 <EnKakasi3_Update+0x4c>
 e94:	8a0900b4 	lwl	t1,180(s0)
 e98:	0c000000 	jal	0 <EnKakasi3_Destroy>
 e9c:	248400a4 	addiu	a0,a0,164
 ea0:	3c040000 	lui	a0,0x0
 ea4:	3c050000 	lui	a1,0x0
 ea8:	90a512c5 	lbu	a1,4805(a1)
 eac:	0c000000 	jal	0 <EnKakasi3_Destroy>
 eb0:	248400a8 	addiu	a0,a0,168
 eb4:	8a0900b4 	lwl	t1,180(s0)
 eb8:	9a0900b7 	lwr	t1,183(s0)
 ebc:	86180198 	lh	t8,408(s0)
 ec0:	00001825 	move	v1,zero
 ec4:	aa090030 	swl	t1,48(s0)
 ec8:	ba090033 	swr	t1,51(s0)
 ecc:	960900b8 	lhu	t1,184(s0)
 ed0:	27190001 	addiu	t9,t8,1
 ed4:	a6190198 	sh	t9,408(s0)
 ed8:	02001025 	move	v0,s0
 edc:	24050008 	li	a1,8
 ee0:	a6090034 	sh	t1,52(s0)
 ee4:	8444019c 	lh	a0,412(v0)
 ee8:	24630002 	addiu	v1,v1,2
 eec:	10800002 	beqz	a0,ef8 <EnKakasi3_Update+0x8c>
 ef0:	248affff 	addiu	t2,a0,-1
 ef4:	a44a019c 	sh	t2,412(v0)
 ef8:	1465fffa 	bne	v1,a1,ee4 <EnKakasi3_Update+0x78>
 efc:	24420002 	addiu	v0,v0,2
 f00:	02002025 	move	a0,s0
 f04:	0c000000 	jal	0 <EnKakasi3_Destroy>
 f08:	3c054270 	lui	a1,0x4270
 f0c:	8e19014c 	lw	t9,332(s0)
 f10:	02002025 	move	a0,s0
 f14:	8fa5003c 	lw	a1,60(sp)
 f18:	0320f809 	jalr	t9
 f1c:	00000000 	nop
 f20:	0c000000 	jal	0 <EnKakasi3_Destroy>
 f24:	02002025 	move	a0,s0
 f28:	3c014248 	lui	at,0x4248
 f2c:	44810000 	mtc1	at,$f0
 f30:	3c0142c8 	lui	at,0x42c8
 f34:	44812000 	mtc1	at,$f4
 f38:	240b001c 	li	t3,28
 f3c:	44060000 	mfc1	a2,$f0
 f40:	44070000 	mfc1	a3,$f0
 f44:	afab0014 	sw	t3,20(sp)
 f48:	8fa4003c 	lw	a0,60(sp)
 f4c:	02002825 	move	a1,s0
 f50:	0c000000 	jal	0 <EnKakasi3_Destroy>
 f54:	e7a40010 	swc1	$f4,16(sp)
 f58:	260601bc 	addiu	a2,s0,444
 f5c:	00c02825 	move	a1,a2
 f60:	afa60028 	sw	a2,40(sp)
 f64:	0c000000 	jal	0 <EnKakasi3_Destroy>
 f68:	02002025 	move	a0,s0
 f6c:	8fa4003c 	lw	a0,60(sp)
 f70:	3c010001 	lui	at,0x1
 f74:	34211e60 	ori	at,at,0x1e60
 f78:	8fa60028 	lw	a2,40(sp)
 f7c:	0c000000 	jal	0 <EnKakasi3_Destroy>
 f80:	00812821 	addu	a1,a0,at
 f84:	8fbf0024 	lw	ra,36(sp)
 f88:	8fb00020 	lw	s0,32(sp)
 f8c:	27bd0038 	addiu	sp,sp,56
 f90:	03e00008 	jr	ra
 f94:	00000000 	nop

00000f98 <EnKakasi3_Draw>:
 f98:	27bdffd8 	addiu	sp,sp,-40
 f9c:	afbf0024 	sw	ra,36(sp)
 fa0:	afa40028 	sw	a0,40(sp)
 fa4:	afa5002c 	sw	a1,44(sp)
 fa8:	0c000000 	jal	0 <EnKakasi3_Destroy>
 fac:	8ca40000 	lw	a0,0(a1)
 fb0:	8fa20028 	lw	v0,40(sp)
 fb4:	8fa4002c 	lw	a0,44(sp)
 fb8:	8c450154 	lw	a1,340(v0)
 fbc:	8c460170 	lw	a2,368(v0)
 fc0:	90470152 	lbu	a3,338(v0)
 fc4:	afa00014 	sw	zero,20(sp)
 fc8:	afa00010 	sw	zero,16(sp)
 fcc:	0c000000 	jal	0 <EnKakasi3_Destroy>
 fd0:	afa20018 	sw	v0,24(sp)
 fd4:	8fbf0024 	lw	ra,36(sp)
 fd8:	27bd0028 	addiu	sp,sp,40
 fdc:	03e00008 	jr	ra
 fe0:	00000000 	nop
	...
