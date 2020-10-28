
build/src/overlays/actors/ovl_Magic_Fire/z_magic_fire.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <MagicFire_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afa5002c 	sw	a1,44(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	0c000000 	jal	0 <MagicFire_Init>
  1c:	24a50000 	addiu	a1,a1,0
  20:	3c01c040 	lui	at,0xc040
  24:	44812000 	mtc1	at,$f4
  28:	a60001a4 	sh	zero,420(s0)
  2c:	a60001a6 	sh	zero,422(s0)
  30:	a60001a8 	sh	zero,424(s0)
  34:	02002025 	move	a0,s0
  38:	24050000 	li	a1,0
  3c:	0c000000 	jal	0 <MagicFire_Init>
  40:	e6040198 	swc1	$f4,408(s0)
  44:	2605014c 	addiu	a1,s0,332
  48:	afa50020 	sw	a1,32(sp)
  4c:	0c000000 	jal	0 <MagicFire_Init>
  50:	8fa4002c 	lw	a0,44(sp)
  54:	3c070000 	lui	a3,0x0
  58:	24e70000 	addiu	a3,a3,0
  5c:	8fa4002c 	lw	a0,44(sp)
  60:	8fa50020 	lw	a1,32(sp)
  64:	0c000000 	jal	0 <MagicFire_Init>
  68:	02003025 	move	a2,s0
  6c:	02002025 	move	a0,s0
  70:	0c000000 	jal	0 <MagicFire_Init>
  74:	8fa50020 	lw	a1,32(sp)
  78:	3c0e0000 	lui	t6,0x0
  7c:	25ce0000 	addiu	t6,t6,0
  80:	240f0014 	li	t7,20
  84:	2418ffff 	li	t8,-1
  88:	ae0e0130 	sw	t6,304(s0)
  8c:	a60f01a8 	sh	t7,424(s0)
  90:	a2180003 	sb	t8,3(s0)
  94:	8fbf001c 	lw	ra,28(sp)
  98:	8fb00018 	lw	s0,24(sp)
  9c:	27bd0028 	addiu	sp,sp,40
  a0:	03e00008 	jr	ra
  a4:	00000000 	nop

000000a8 <MagicFire_Destroy>:
  a8:	27bdffe8 	addiu	sp,sp,-24
  ac:	afbf0014 	sw	ra,20(sp)
  b0:	afa40018 	sw	a0,24(sp)
  b4:	0c000000 	jal	0 <MagicFire_Init>
  b8:	00a02025 	move	a0,a1
  bc:	8fbf0014 	lw	ra,20(sp)
  c0:	27bd0018 	addiu	sp,sp,24
  c4:	03e00008 	jr	ra
  c8:	00000000 	nop

000000cc <func_80B88E3C>:
  cc:	27bdffe0 	addiu	sp,sp,-32
  d0:	3c020001 	lui	v0,0x1
  d4:	afbf0014 	sw	ra,20(sp)
  d8:	00451021 	addu	v0,v0,a1
  dc:	904203dc 	lbu	v0,988(v0)
  e0:	2401000d 	li	at,13
  e4:	00803025 	move	a2,a0
  e8:	10410004 	beq	v0,at,fc <func_80B88E3C+0x30>
  ec:	8ca71c44 	lw	a3,7236(a1)
  f0:	24010011 	li	at,17
  f4:	54410006 	bnel	v0,at,110 <func_80B88E3C+0x44>
  f8:	84c201a8 	lh	v0,424(a2)
  fc:	0c000000 	jal	0 <MagicFire_Init>
 100:	00c02025 	move	a0,a2
 104:	10000017 	b	164 <func_80B88E3C+0x98>
 108:	8fbf0014 	lw	ra,20(sp)
 10c:	84c201a8 	lh	v0,424(a2)
 110:	3c0f0000 	lui	t7,0x0
 114:	25ef0000 	addiu	t7,t7,0
 118:	18400004 	blez	v0,12c <func_80B88E3C+0x60>
 11c:	00e02025 	move	a0,a3
 120:	244effff 	addiu	t6,v0,-1
 124:	10000008 	b	148 <func_80B88E3C+0x7c>
 128:	a4ce01a8 	sh	t6,424(a2)
 12c:	accf0130 	sw	t7,304(a2)
 130:	afa70018 	sw	a3,24(sp)
 134:	afa60020 	sw	a2,32(sp)
 138:	0c000000 	jal	0 <MagicFire_Init>
 13c:	24050879 	li	a1,2169
 140:	8fa60020 	lw	a2,32(sp)
 144:	8fa70018 	lw	a3,24(sp)
 148:	8cf90024 	lw	t9,36(a3)
 14c:	acd90024 	sw	t9,36(a2)
 150:	8cf80028 	lw	t8,40(a3)
 154:	acd80028 	sw	t8,40(a2)
 158:	8cf9002c 	lw	t9,44(a3)
 15c:	acd9002c 	sw	t9,44(a2)
 160:	8fbf0014 	lw	ra,20(sp)
 164:	27bd0020 	addiu	sp,sp,32
 168:	03e00008 	jr	ra
 16c:	00000000 	nop

00000170 <MagicFire_Update>:
 170:	27bdffb8 	addiu	sp,sp,-72
 174:	afbf0024 	sw	ra,36(sp)
 178:	afb00020 	sw	s0,32(sp)
 17c:	8ca31c44 	lw	v1,7236(a1)
 180:	3c020001 	lui	v0,0x1
 184:	00451021 	addu	v0,v0,a1
 188:	8c6f0024 	lw	t7,36(v1)
 18c:	2401000d 	li	at,13
 190:	00808025 	move	s0,a0
 194:	ac8f0024 	sw	t7,36(a0)
 198:	8c6e0028 	lw	t6,40(v1)
 19c:	00a03825 	move	a3,a1
 1a0:	ac8e0028 	sw	t6,40(a0)
 1a4:	8c6f002c 	lw	t7,44(v1)
 1a8:	ac8f002c 	sw	t7,44(a0)
 1ac:	904203dc 	lbu	v0,988(v0)
 1b0:	10410003 	beq	v0,at,1c0 <MagicFire_Update+0x50>
 1b4:	24010011 	li	at,17
 1b8:	14410005 	bne	v0,at,1d0 <MagicFire_Update+0x60>
 1bc:	02002025 	move	a0,s0
 1c0:	0c000000 	jal	0 <MagicFire_Init>
 1c4:	02002025 	move	a0,s0
 1c8:	100000ca 	b	4f4 <MagicFire_Update+0x384>
 1cc:	8fbf0024 	lw	ra,36(sp)
 1d0:	860301a4 	lh	v1,420(s0)
 1d4:	24010001 	li	at,1
 1d8:	2606014c 	addiu	a2,s0,332
 1dc:	14610005 	bne	v1,at,1f4 <MagicFire_Update+0x84>
 1e0:	00c02825 	move	a1,a2
 1e4:	861801a8 	lh	t8,424(s0)
 1e8:	27190019 	addiu	t9,t8,25
 1ec:	10000006 	b	208 <MagicFire_Update+0x98>
 1f0:	a2190169 	sb	t9,361(s0)
 1f4:	24010002 	li	at,2
 1f8:	54610004 	bnel	v1,at,20c <MagicFire_Update+0x9c>
 1fc:	afa6002c 	sw	a2,44(sp)
 200:	860801a8 	lh	t0,424(s0)
 204:	a2080169 	sb	t0,361(s0)
 208:	afa6002c 	sw	a2,44(sp)
 20c:	0c000000 	jal	0 <MagicFire_Init>
 210:	afa7004c 	sw	a3,76(sp)
 214:	3c010000 	lui	at,0x0
 218:	c4260000 	lwc1	$f6,0(at)
 21c:	c6040050 	lwc1	$f4,80(s0)
 220:	3c0143e1 	lui	at,0x43e1
 224:	44818000 	mtc1	at,$f16
 228:	46062202 	mul.s	$f8,$f4,$f6
 22c:	c6000054 	lwc1	$f0,84(s0)
 230:	3c01c361 	lui	at,0xc361
 234:	44813000 	mtc1	at,$f6
 238:	46100482 	mul.s	$f18,$f0,$f16
 23c:	8fa4004c 	lw	a0,76(sp)
 240:	8fa6002c 	lw	a2,44(sp)
 244:	3c010001 	lui	at,0x1
 248:	34211e60 	ori	at,at,0x1e60
 24c:	00812821 	addu	a1,a0,at
 250:	4600428d 	trunc.w.s	$f10,$f8
 254:	46060202 	mul.s	$f8,$f0,$f6
 258:	440a5000 	mfc1	t2,$f10
 25c:	4600910d 	trunc.w.s	$f4,$f18
 260:	a60a018c 	sh	t2,396(s0)
 264:	4600428d 	trunc.w.s	$f10,$f8
 268:	440c2000 	mfc1	t4,$f4
 26c:	440e5000 	mfc1	t6,$f10
 270:	a60c018e 	sh	t4,398(s0)
 274:	0c000000 	jal	0 <MagicFire_Init>
 278:	a60e0190 	sh	t6,400(s0)
 27c:	860301a4 	lh	v1,420(s0)
 280:	240f001e 	li	t7,30
 284:	3c010000 	lui	at,0x0
 288:	1060000b 	beqz	v1,2b8 <MagicFire_Update+0x148>
 28c:	00601025 	move	v0,v1
 290:	24010001 	li	at,1
 294:	1041001b 	beq	v0,at,304 <MagicFire_Update+0x194>
 298:	26040198 	addiu	a0,s0,408
 29c:	24010002 	li	at,2
 2a0:	10410032 	beq	v0,at,36c <MagicFire_Update+0x1fc>
 2a4:	24010003 	li	at,3
 2a8:	1041003a 	beq	v0,at,394 <MagicFire_Update+0x224>
 2ac:	00000000 	nop
 2b0:	1000004f 	b	3f0 <MagicFire_Update+0x280>
 2b4:	860201a6 	lh	v0,422(s0)
 2b8:	a6000034 	sh	zero,52(s0)
 2bc:	86020034 	lh	v0,52(s0)
 2c0:	44801000 	mtc1	zero,$f2
 2c4:	a60000b8 	sh	zero,184(s0)
 2c8:	a6020032 	sh	v0,50(s0)
 2cc:	a6020030 	sh	v0,48(s0)
 2d0:	860200b8 	lh	v0,184(s0)
 2d4:	a60f01a8 	sh	t7,424(s0)
 2d8:	e6020058 	swc1	$f2,88(s0)
 2dc:	e6020054 	swc1	$f2,84(s0)
 2e0:	e6020050 	swc1	$f2,80(s0)
 2e4:	e6020198 	swc1	$f2,408(s0)
 2e8:	a60200b6 	sh	v0,182(s0)
 2ec:	a60200b4 	sh	v0,180(s0)
 2f0:	c4300000 	lwc1	$f16,0(at)
 2f4:	24780001 	addiu	t8,v1,1
 2f8:	a61801a4 	sh	t8,420(s0)
 2fc:	1000003b 	b	3ec <MagicFire_Update+0x27c>
 300:	e61001a0 	swc1	$f16,416(s0)
 304:	3c063d08 	lui	a2,0x3d08
 308:	34c68889 	ori	a2,a2,0x8889
 30c:	0c000000 	jal	0 <MagicFire_Init>
 310:	3c053f80 	lui	a1,0x3f80
 314:	861901a8 	lh	t9,424(s0)
 318:	3c053ecc 	lui	a1,0x3ecc
 31c:	34a5cccd 	ori	a1,a1,0xcccd
 320:	1b20000c 	blez	t9,354 <MagicFire_Update+0x1e4>
 324:	26040050 	addiu	a0,s0,80
 328:	3c010000 	lui	at,0x0
 32c:	c4320000 	lwc1	$f18,0(at)
 330:	8e0601a0 	lw	a2,416(s0)
 334:	3c073dcc 	lui	a3,0x3dcc
 338:	34e7cccd 	ori	a3,a3,0xcccd
 33c:	0c000000 	jal	0 <MagicFire_Init>
 340:	e7b20010 	swc1	$f18,16(sp)
 344:	c6000050 	lwc1	$f0,80(s0)
 348:	e6000058 	swc1	$f0,88(s0)
 34c:	10000027 	b	3ec <MagicFire_Update+0x27c>
 350:	e6000054 	swc1	$f0,84(s0)
 354:	860901a4 	lh	t1,420(s0)
 358:	24080019 	li	t0,25
 35c:	a60801a8 	sh	t0,424(s0)
 360:	252a0001 	addiu	t2,t1,1
 364:	10000021 	b	3ec <MagicFire_Update+0x27c>
 368:	a60a01a4 	sh	t2,420(s0)
 36c:	860b01a8 	lh	t3,424(s0)
 370:	240c000f 	li	t4,15
 374:	246d0001 	addiu	t5,v1,1
 378:	1d60001c 	bgtz	t3,3ec <MagicFire_Update+0x27c>
 37c:	3c010000 	lui	at,0x0
 380:	a60c01a8 	sh	t4,424(s0)
 384:	a60d01a4 	sh	t5,420(s0)
 388:	c4240000 	lwc1	$f4,0(at)
 38c:	10000017 	b	3ec <MagicFire_Update+0x27c>
 390:	e60401a0 	swc1	$f4,416(s0)
 394:	3c010000 	lui	at,0x0
 398:	c4280000 	lwc1	$f8,0(at)
 39c:	c6060198 	lwc1	$f6,408(s0)
 3a0:	c60001a0 	lwc1	$f0,416(s0)
 3a4:	c6100050 	lwc1	$f16,80(s0)
 3a8:	46083281 	sub.s	$f10,$f6,$f8
 3ac:	44801000 	mtc1	zero,$f2
 3b0:	c6040054 	lwc1	$f4,84(s0)
 3b4:	46008480 	add.s	$f18,$f16,$f0
 3b8:	e60a0198 	swc1	$f10,408(s0)
 3bc:	c6100198 	lwc1	$f16,408(s0)
 3c0:	c6080058 	lwc1	$f8,88(s0)
 3c4:	46002180 	add.s	$f6,$f4,$f0
 3c8:	e6120050 	swc1	$f18,80(s0)
 3cc:	02002025 	move	a0,s0
 3d0:	4602803e 	c.le.s	$f16,$f2
 3d4:	e6060054 	swc1	$f6,84(s0)
 3d8:	46004280 	add.s	$f10,$f8,$f0
 3dc:	45000003 	bc1f	3ec <MagicFire_Update+0x27c>
 3e0:	e60a0058 	swc1	$f10,88(s0)
 3e4:	0c000000 	jal	0 <MagicFire_Init>
 3e8:	a60001a4 	sh	zero,420(s0)
 3ec:	860201a6 	lh	v0,422(s0)
 3f0:	24010001 	li	at,1
 3f4:	5040000a 	beqzl	v0,420 <MagicFire_Update+0x2b0>
 3f8:	860e01aa 	lh	t6,426(s0)
 3fc:	10410010 	beq	v0,at,440 <MagicFire_Update+0x2d0>
 400:	24010002 	li	at,2
 404:	1041001f 	beq	v0,at,484 <MagicFire_Update+0x314>
 408:	24010003 	li	at,3
 40c:	50410027 	beql	v0,at,4ac <MagicFire_Update+0x33c>
 410:	860201aa 	lh	v0,426(s0)
 414:	1000002f 	b	4d4 <MagicFire_Update+0x364>
 418:	860201a8 	lh	v0,424(s0)
 41c:	860e01aa 	lh	t6,426(s0)
 420:	240f0014 	li	t7,20
 424:	24180001 	li	t8,1
 428:	1dc00003 	bgtz	t6,438 <MagicFire_Update+0x2c8>
 42c:	00000000 	nop
 430:	a60f01aa 	sh	t7,426(s0)
 434:	a61801a6 	sh	t8,422(s0)
 438:	10000026 	b	4d4 <MagicFire_Update+0x364>
 43c:	860201a8 	lh	v0,424(s0)
 440:	860201aa 	lh	v0,426(s0)
 444:	3c0141a0 	lui	at,0x41a0
 448:	44813000 	mtc1	at,$f6
 44c:	44829000 	mtc1	v0,$f18
 450:	3c013f80 	lui	at,0x3f80
 454:	44815000 	mtc1	at,$f10
 458:	46809120 	cvt.s.w	$f4,$f18
 45c:	2419002d 	li	t9,45
 460:	24080002 	li	t0,2
 464:	46062203 	div.s	$f8,$f4,$f6
 468:	46085401 	sub.s	$f16,$f10,$f8
 46c:	1c400003 	bgtz	v0,47c <MagicFire_Update+0x30c>
 470:	e610019c 	swc1	$f16,412(s0)
 474:	a61901aa 	sh	t9,426(s0)
 478:	a60801a6 	sh	t0,422(s0)
 47c:	10000015 	b	4d4 <MagicFire_Update+0x364>
 480:	860201a8 	lh	v0,424(s0)
 484:	860901aa 	lh	t1,426(s0)
 488:	240a0005 	li	t2,5
 48c:	240b0003 	li	t3,3
 490:	1d200003 	bgtz	t1,4a0 <MagicFire_Update+0x330>
 494:	00000000 	nop
 498:	a60a01aa 	sh	t2,426(s0)
 49c:	a60b01a6 	sh	t3,422(s0)
 4a0:	1000000c 	b	4d4 <MagicFire_Update+0x364>
 4a4:	860201a8 	lh	v0,424(s0)
 4a8:	860201aa 	lh	v0,426(s0)
 4ac:	3c0140a0 	lui	at,0x40a0
 4b0:	44813000 	mtc1	at,$f6
 4b4:	44829000 	mtc1	v0,$f18
 4b8:	240c0004 	li	t4,4
 4bc:	46809120 	cvt.s.w	$f4,$f18
 4c0:	46062283 	div.s	$f10,$f4,$f6
 4c4:	1c400002 	bgtz	v0,4d0 <MagicFire_Update+0x360>
 4c8:	e60a019c 	swc1	$f10,412(s0)
 4cc:	a60c01a6 	sh	t4,422(s0)
 4d0:	860201a8 	lh	v0,424(s0)
 4d4:	18400002 	blez	v0,4e0 <MagicFire_Update+0x370>
 4d8:	244dffff 	addiu	t5,v0,-1
 4dc:	a60d01a8 	sh	t5,424(s0)
 4e0:	860201aa 	lh	v0,426(s0)
 4e4:	18400002 	blez	v0,4f0 <MagicFire_Update+0x380>
 4e8:	244effff 	addiu	t6,v0,-1
 4ec:	a60e01aa 	sh	t6,426(s0)
 4f0:	8fbf0024 	lw	ra,36(sp)
 4f4:	8fb00020 	lw	s0,32(sp)
 4f8:	27bd0048 	addiu	sp,sp,72
 4fc:	03e00008 	jr	ra
 500:	00000000 	nop

00000504 <MagicFire_Draw>:
 504:	27bdff40 	addiu	sp,sp,-192
 508:	3c0f0001 	lui	t7,0x1
 50c:	afbf0034 	sw	ra,52(sp)
 510:	afa400c0 	sw	a0,192(sp)
 514:	afa500c4 	sw	a1,196(sp)
 518:	01e57821 	addu	t7,t7,a1
 51c:	8def1de4 	lw	t7,7652(t7)
 520:	3c060000 	lui	a2,0x0
 524:	24c60000 	addiu	a2,a2,0
 528:	afaf00b4 	sw	t7,180(sp)
 52c:	849901a4 	lh	t9,420(a0)
 530:	27a40094 	addiu	a0,sp,148
 534:	5b20018a 	blezl	t9,b60 <MagicFire_Draw+0x65c>
 538:	8fbf0034 	lw	ra,52(sp)
 53c:	8ca50000 	lw	a1,0(a1)
 540:	240702aa 	li	a3,682
 544:	0c000000 	jal	0 <MagicFire_Init>
 548:	afa500a4 	sw	a1,164(sp)
 54c:	8fa300a4 	lw	v1,164(sp)
 550:	0c000000 	jal	0 <MagicFire_Init>
 554:	8c6402d0 	lw	a0,720(v1)
 558:	8fa300a4 	lw	v1,164(sp)
 55c:	244c0008 	addiu	t4,v0,8
 560:	3c0dfa00 	lui	t5,0xfa00
 564:	ac6202d0 	sw	v0,720(v1)
 568:	ac6c02d0 	sw	t4,720(v1)
 56c:	ac4d0000 	sw	t5,0(v0)
 570:	8faf00c0 	lw	t7,192(sp)
 574:	3c014270 	lui	at,0x4270
 578:	44812000 	mtc1	at,$f4
 57c:	c5e0019c 	lwc1	$f0,412(t7)
 580:	3c0141a0 	lui	at,0x41a0
 584:	44815000 	mtc1	at,$f10
 588:	46040182 	mul.s	$f6,$f0,$f4
 58c:	3c0142f0 	lui	at,0x42f0
 590:	44802000 	mtc1	zero,$f4
 594:	46005402 	mul.s	$f16,$f10,$f0
 598:	4600320d 	trunc.w.s	$f8,$f6
 59c:	4600848d 	trunc.w.s	$f18,$f16
 5a0:	440c4000 	mfc1	t4,$f8
 5a4:	44814000 	mtc1	at,$f8
 5a8:	4600218d 	trunc.w.s	$f6,$f4
 5ac:	44199000 	mfc1	t9,$f18
 5b0:	46004282 	mul.s	$f10,$f8,$f0
 5b4:	000c6e00 	sll	t5,t4,0x18
 5b8:	332e00ff 	andi	t6,t9,0xff
 5bc:	000e6400 	sll	t4,t6,0x10
 5c0:	440e3000 	mfc1	t6,$f6
 5c4:	01ac7825 	or	t7,t5,t4
 5c8:	4600540d 	trunc.w.s	$f16,$f10
 5cc:	31cd00ff 	andi	t5,t6,0xff
 5d0:	000d6200 	sll	t4,t5,0x8
 5d4:	01ecc025 	or	t8,t7,t4
 5d8:	440d8000 	mfc1	t5,$f16
 5dc:	3c0ee300 	lui	t6,0xe300
 5e0:	35ce1a01 	ori	t6,t6,0x1a01
 5e4:	31af00ff 	andi	t7,t5,0xff
 5e8:	030f6025 	or	t4,t8,t7
 5ec:	ac4c0004 	sw	t4,4(v0)
 5f0:	8c6202d0 	lw	v0,720(v1)
 5f4:	240d0030 	li	t5,48
 5f8:	3c0fe300 	lui	t7,0xe300
 5fc:	24590008 	addiu	t9,v0,8
 600:	ac7902d0 	sw	t9,720(v1)
 604:	ac4d0004 	sw	t5,4(v0)
 608:	ac4e0000 	sw	t6,0(v0)
 60c:	8c6202d0 	lw	v0,720(v1)
 610:	35ef1801 	ori	t7,t7,0x1801
 614:	240c00c0 	li	t4,192
 618:	24580008 	addiu	t8,v0,8
 61c:	ac7802d0 	sw	t8,720(v1)
 620:	ac4c0004 	sw	t4,4(v0)
 624:	ac4f0000 	sw	t7,0(v0)
 628:	8c6202d0 	lw	v0,720(v1)
 62c:	3c0ef64f 	lui	t6,0xf64f
 630:	35cec3bc 	ori	t6,t6,0xc3bc
 634:	24590008 	addiu	t9,v0,8
 638:	ac7902d0 	sw	t9,720(v1)
 63c:	ac400004 	sw	zero,4(v0)
 640:	ac4e0000 	sw	t6,0(v0)
 644:	8fad00c4 	lw	t5,196(sp)
 648:	8da40000 	lw	a0,0(t5)
 64c:	0c000000 	jal	0 <MagicFire_Init>
 650:	afa300a4 	sw	v1,164(sp)
 654:	8fa300a4 	lw	v1,164(sp)
 658:	8fa500c0 	lw	a1,192(sp)
 65c:	3c0ffa00 	lui	t7,0xfa00
 660:	8c6402d0 	lw	a0,720(v1)
 664:	35ef0080 	ori	t7,t7,0x80
 668:	3c01437f 	lui	at,0x437f
 66c:	24980008 	addiu	t8,a0,8
 670:	ac7802d0 	sw	t8,720(v1)
 674:	ac8f0000 	sw	t7,0(a0)
 678:	44810000 	mtc1	at,$f0
 67c:	c4b20198 	lwc1	$f18,408(a1)
 680:	24190001 	li	t9,1
 684:	3c014f00 	lui	at,0x4f00
 688:	46009102 	mul.s	$f4,$f18,$f0
 68c:	24070001 	li	a3,1
 690:	444cf800 	cfc1	t4,$31
 694:	44d9f800 	ctc1	t9,$31
 698:	00000000 	nop
 69c:	460021a4 	cvt.w.s	$f6,$f4
 6a0:	4459f800 	cfc1	t9,$31
 6a4:	00000000 	nop
 6a8:	33390078 	andi	t9,t9,0x78
 6ac:	53200013 	beqzl	t9,6fc <MagicFire_Draw+0x1f8>
 6b0:	44193000 	mfc1	t9,$f6
 6b4:	44813000 	mtc1	at,$f6
 6b8:	24190001 	li	t9,1
 6bc:	46062181 	sub.s	$f6,$f4,$f6
 6c0:	44d9f800 	ctc1	t9,$31
 6c4:	00000000 	nop
 6c8:	460031a4 	cvt.w.s	$f6,$f6
 6cc:	4459f800 	cfc1	t9,$31
 6d0:	00000000 	nop
 6d4:	33390078 	andi	t9,t9,0x78
 6d8:	17200005 	bnez	t9,6f0 <MagicFire_Draw+0x1ec>
 6dc:	00000000 	nop
 6e0:	44193000 	mfc1	t9,$f6
 6e4:	3c018000 	lui	at,0x8000
 6e8:	10000007 	b	708 <MagicFire_Draw+0x204>
 6ec:	0321c825 	or	t9,t9,at
 6f0:	10000005 	b	708 <MagicFire_Draw+0x204>
 6f4:	2419ffff 	li	t9,-1
 6f8:	44193000 	mfc1	t9,$f6
 6fc:	00000000 	nop
 700:	0720fffb 	bltz	t9,6f0 <MagicFire_Draw+0x1ec>
 704:	00000000 	nop
 708:	03207025 	move	t6,t9
 70c:	31cd00ff 	andi	t5,t6,0xff
 710:	3c01ffc8 	lui	at,0xffc8
 714:	01a1c025 	or	t8,t5,at
 718:	ac980004 	sw	t8,4(a0)
 71c:	8c6402d0 	lw	a0,720(v1)
 720:	44ccf800 	ctc1	t4,$31
 724:	3c0cfb00 	lui	t4,0xfb00
 728:	248f0008 	addiu	t7,a0,8
 72c:	ac6f02d0 	sw	t7,720(v1)
 730:	ac8c0000 	sw	t4,0(a0)
 734:	c4a80198 	lwc1	$f8,408(a1)
 738:	240e0001 	li	t6,1
 73c:	3c014f00 	lui	at,0x4f00
 740:	46004282 	mul.s	$f10,$f8,$f0
 744:	4459f800 	cfc1	t9,$31
 748:	44cef800 	ctc1	t6,$31
 74c:	00000000 	nop
 750:	46005424 	cvt.w.s	$f16,$f10
 754:	444ef800 	cfc1	t6,$31
 758:	00000000 	nop
 75c:	31ce0078 	andi	t6,t6,0x78
 760:	51c00013 	beqzl	t6,7b0 <MagicFire_Draw+0x2ac>
 764:	440e8000 	mfc1	t6,$f16
 768:	44818000 	mtc1	at,$f16
 76c:	240e0001 	li	t6,1
 770:	46105401 	sub.s	$f16,$f10,$f16
 774:	44cef800 	ctc1	t6,$31
 778:	00000000 	nop
 77c:	46008424 	cvt.w.s	$f16,$f16
 780:	444ef800 	cfc1	t6,$31
 784:	00000000 	nop
 788:	31ce0078 	andi	t6,t6,0x78
 78c:	15c00005 	bnez	t6,7a4 <MagicFire_Draw+0x2a0>
 790:	00000000 	nop
 794:	440e8000 	mfc1	t6,$f16
 798:	3c018000 	lui	at,0x8000
 79c:	10000007 	b	7bc <MagicFire_Draw+0x2b8>
 7a0:	01c17025 	or	t6,t6,at
 7a4:	10000005 	b	7bc <MagicFire_Draw+0x2b8>
 7a8:	240effff 	li	t6,-1
 7ac:	440e8000 	mfc1	t6,$f16
 7b0:	00000000 	nop
 7b4:	05c0fffb 	bltz	t6,7a4 <MagicFire_Draw+0x2a0>
 7b8:	00000000 	nop
 7bc:	31d800ff 	andi	t8,t6,0xff
 7c0:	3c01ff00 	lui	at,0xff00
 7c4:	03017825 	or	t7,t8,at
 7c8:	ac8f0004 	sw	t7,4(a0)
 7cc:	3c010000 	lui	at,0x0
 7d0:	c42c0000 	lwc1	$f12,0(at)
 7d4:	44d9f800 	ctc1	t9,$31
 7d8:	afa300a4 	sw	v1,164(sp)
 7dc:	44066000 	mfc1	a2,$f12
 7e0:	0c000000 	jal	0 <MagicFire_Init>
 7e4:	46006386 	mov.s	$f14,$f12
 7e8:	8fa300a4 	lw	v1,164(sp)
 7ec:	3c19da38 	lui	t9,0xda38
 7f0:	37390003 	ori	t9,t9,0x3
 7f4:	8c6202d0 	lw	v0,720(v1)
 7f8:	3c050000 	lui	a1,0x0
 7fc:	24a50000 	addiu	a1,a1,0
 800:	244c0008 	addiu	t4,v0,8
 804:	ac6c02d0 	sw	t4,720(v1)
 808:	ac590000 	sw	t9,0(v0)
 80c:	8fae00c4 	lw	t6,196(sp)
 810:	240602cb 	li	a2,715
 814:	8dc40000 	lw	a0,0(t6)
 818:	afa300a4 	sw	v1,164(sp)
 81c:	0c000000 	jal	0 <MagicFire_Init>
 820:	afa20078 	sw	v0,120(sp)
 824:	8fa70078 	lw	a3,120(sp)
 828:	8fa300a4 	lw	v1,164(sp)
 82c:	3c05e700 	lui	a1,0xe700
 830:	ace20004 	sw	v0,4(a3)
 834:	8c6202d0 	lw	v0,720(v1)
 838:	3c0fd700 	lui	t7,0xd700
 83c:	35ef0002 	ori	t7,t7,0x2
 840:	244d0008 	addiu	t5,v0,8
 844:	ac6d02d0 	sw	t5,720(v1)
 848:	ac450000 	sw	a1,0(v0)
 84c:	ac400004 	sw	zero,4(v0)
 850:	8c6202d0 	lw	v0,720(v1)
 854:	240cffff 	li	t4,-1
 858:	3c0ee300 	lui	t6,0xe300
 85c:	24580008 	addiu	t8,v0,8
 860:	ac7802d0 	sw	t8,720(v1)
 864:	ac4f0000 	sw	t7,0(v0)
 868:	ac4c0004 	sw	t4,4(v0)
 86c:	8c6202d0 	lw	v0,720(v1)
 870:	35ce1001 	ori	t6,t6,0x1001
 874:	3c0f0000 	lui	t7,0x0
 878:	24590008 	addiu	t9,v0,8
 87c:	ac7902d0 	sw	t9,720(v1)
 880:	ac4e0000 	sw	t6,0(v0)
 884:	ac400004 	sw	zero,4(v0)
 888:	8c6202d0 	lw	v0,720(v1)
 88c:	25ef0000 	addiu	t7,t7,0
 890:	3c18fd90 	lui	t8,0xfd90
 894:	244d0008 	addiu	t5,v0,8
 898:	ac6d02d0 	sw	t5,720(v1)
 89c:	ac580000 	sw	t8,0(v0)
 8a0:	ac4f0004 	sw	t7,4(v0)
 8a4:	8c6202d0 	lw	v0,720(v1)
 8a8:	3c0e0701 	lui	t6,0x701
 8ac:	35ce806f 	ori	t6,t6,0x806f
 8b0:	244c0008 	addiu	t4,v0,8
 8b4:	ac6c02d0 	sw	t4,720(v1)
 8b8:	3c19f590 	lui	t9,0xf590
 8bc:	ac590000 	sw	t9,0(v0)
 8c0:	ac4e0004 	sw	t6,4(v0)
 8c4:	8c6202d0 	lw	v0,720(v1)
 8c8:	3c18e600 	lui	t8,0xe600
 8cc:	3c19077f 	lui	t9,0x77f
 8d0:	244d0008 	addiu	t5,v0,8
 8d4:	ac6d02d0 	sw	t5,720(v1)
 8d8:	ac580000 	sw	t8,0(v0)
 8dc:	ac400004 	sw	zero,4(v0)
 8e0:	8c6202d0 	lw	v0,720(v1)
 8e4:	3739f100 	ori	t9,t9,0xf100
 8e8:	3c0cf300 	lui	t4,0xf300
 8ec:	244f0008 	addiu	t7,v0,8
 8f0:	ac6f02d0 	sw	t7,720(v1)
 8f4:	ac4c0000 	sw	t4,0(v0)
 8f8:	ac590004 	sw	t9,4(v0)
 8fc:	8c6202d0 	lw	v0,720(v1)
 900:	3c180001 	lui	t8,0x1
 904:	3718806f 	ori	t8,t8,0x806f
 908:	244e0008 	addiu	t6,v0,8
 90c:	ac6e02d0 	sw	t6,720(v1)
 910:	ac450000 	sw	a1,0(v0)
 914:	ac400004 	sw	zero,4(v0)
 918:	8c6202d0 	lw	v0,720(v1)
 91c:	3c05f588 	lui	a1,0xf588
 920:	34a51000 	ori	a1,a1,0x1000
 924:	244d0008 	addiu	t5,v0,8
 928:	ac6d02d0 	sw	t5,720(v1)
 92c:	ac450000 	sw	a1,0(v0)
 930:	ac580004 	sw	t8,4(v0)
 934:	8c6202d0 	lw	v0,720(v1)
 938:	3c0c000f 	lui	t4,0xf
 93c:	358cc0fc 	ori	t4,t4,0xc0fc
 940:	244f0008 	addiu	t7,v0,8
 944:	ac6f02d0 	sw	t7,720(v1)
 948:	3c06f200 	lui	a2,0xf200
 94c:	ac460000 	sw	a2,0(v0)
 950:	ac4c0004 	sw	t4,4(v0)
 954:	8c6202d0 	lw	v0,720(v1)
 958:	3c0e0101 	lui	t6,0x101
 95c:	35ceb86e 	ori	t6,t6,0xb86e
 960:	24590008 	addiu	t9,v0,8
 964:	ac7902d0 	sw	t9,720(v1)
 968:	ac450000 	sw	a1,0(v0)
 96c:	ac4e0004 	sw	t6,4(v0)
 970:	8c6202d0 	lw	v0,720(v1)
 974:	3c18010f 	lui	t8,0x10f
 978:	3718c0fc 	ori	t8,t8,0xc0fc
 97c:	244d0008 	addiu	t5,v0,8
 980:	ac6d02d0 	sw	t5,720(v1)
 984:	ac460000 	sw	a2,0(v0)
 988:	ac580004 	sw	t8,4(v0)
 98c:	8c6202d0 	lw	v0,720(v1)
 990:	3c0c0000 	lui	t4,0x0
 994:	258c0000 	addiu	t4,t4,0
 998:	244f0008 	addiu	t7,v0,8
 99c:	ac6f02d0 	sw	t7,720(v1)
 9a0:	3c0ade00 	lui	t2,0xde00
 9a4:	ac4a0000 	sw	t2,0(v0)
 9a8:	ac4c0004 	sw	t4,4(v0)
 9ac:	8c6202d0 	lw	v0,720(v1)
 9b0:	8fab00b4 	lw	t3,180(sp)
 9b4:	240f01ff 	li	t7,511
 9b8:	24590008 	addiu	t9,v0,8
 9bc:	ac7902d0 	sw	t9,720(v1)
 9c0:	ac4a0000 	sw	t2,0(v0)
 9c4:	8fae00c4 	lw	t6,196(sp)
 9c8:	000b6880 	sll	t5,t3,0x2
 9cc:	01ab6821 	addu	t5,t5,t3
 9d0:	8dc40000 	lw	a0,0(t6)
 9d4:	31b801ff 	andi	t8,t5,0x1ff
 9d8:	01f83823 	subu	a3,t7,t8
 9dc:	000b7880 	sll	t7,t3,0x2
 9e0:	240c0040 	li	t4,64
 9e4:	01eb7821 	addu	t7,t7,t3
 9e8:	000b4040 	sll	t0,t3,0x1
 9ec:	310d00ff 	andi	t5,t0,0xff
 9f0:	000f7880 	sll	t7,t7,0x2
 9f4:	afac0010 	sw	t4,16(sp)
 9f8:	240e0001 	li	t6,1
 9fc:	24190040 	li	t9,64
 a00:	afb90014 	sw	t9,20(sp)
 a04:	afae0018 	sw	t6,24(sp)
 a08:	240c00ff 	li	t4,255
 a0c:	31f800ff 	andi	t8,t7,0xff
 a10:	afad001c 	sw	t5,28(sp)
 a14:	240d0020 	li	t5,32
 a18:	0198c823 	subu	t9,t4,t8
 a1c:	240e0020 	li	t6,32
 a20:	afae0024 	sw	t6,36(sp)
 a24:	afb90020 	sw	t9,32(sp)
 a28:	afad0028 	sw	t5,40(sp)
 a2c:	310601ff 	andi	a2,t0,0x1ff
 a30:	00002825 	move	a1,zero
 a34:	afa300a4 	sw	v1,164(sp)
 a38:	0c000000 	jal	0 <MagicFire_Init>
 a3c:	afa20040 	sw	v0,64(sp)
 a40:	8fa90040 	lw	t1,64(sp)
 a44:	8fa300a4 	lw	v1,164(sp)
 a48:	3c180000 	lui	t8,0x0
 a4c:	ad220004 	sw	v0,4(t1)
 a50:	8c6202d0 	lw	v0,720(v1)
 a54:	27180000 	addiu	t8,t8,0
 a58:	3c0cde00 	lui	t4,0xde00
 a5c:	244f0008 	addiu	t7,v0,8
 a60:	ac6f02d0 	sw	t7,720(v1)
 a64:	ac580004 	sw	t8,4(v0)
 a68:	ac4c0000 	sw	t4,0(v0)
 a6c:	8fb900c4 	lw	t9,196(sp)
 a70:	3c060000 	lui	a2,0x0
 a74:	24c60000 	addiu	a2,a2,0
 a78:	27a40094 	addiu	a0,sp,148
 a7c:	240702ee 	li	a3,750
 a80:	0c000000 	jal	0 <MagicFire_Init>
 a84:	8f250000 	lw	a1,0(t9)
 a88:	8fae00c0 	lw	t6,192(sp)
 a8c:	3c01437f 	lui	at,0x437f
 a90:	44812000 	mtc1	at,$f4
 a94:	c5d20198 	lwc1	$f18,408(t6)
 a98:	3c020000 	lui	v0,0x0
 a9c:	3c050000 	lui	a1,0x0
 aa0:	46049182 	mul.s	$f6,$f18,$f4
 aa4:	3c040000 	lui	a0,0x0
 aa8:	24840000 	addiu	a0,a0,0
 aac:	24a50000 	addiu	a1,a1,0
 ab0:	24420000 	addiu	v0,v0,0
 ab4:	4600320d 	trunc.w.s	$f8,$f6
 ab8:	44034000 	mfc1	v1,$f8
 abc:	00000000 	nop
 ac0:	306300ff 	andi	v1,v1,0xff
 ac4:	904f0000 	lbu	t7,0(v0)
 ac8:	24420001 	addiu	v0,v0,1
 acc:	0045082b 	sltu	at,v0,a1
 ad0:	000f6100 	sll	t4,t7,0x4
 ad4:	008cc021 	addu	t8,a0,t4
 ad8:	1420fffa 	bnez	at,ac4 <MagicFire_Draw+0x5c0>
 adc:	a303000f 	sb	v1,15(t8)
 ae0:	8fb900c0 	lw	t9,192(sp)
 ae4:	3c014298 	lui	at,0x4298
 ae8:	44818000 	mtc1	at,$f16
 aec:	c72a0198 	lwc1	$f10,408(t9)
 af0:	3c020000 	lui	v0,0x0
 af4:	3c050000 	lui	a1,0x0
 af8:	46105482 	mul.s	$f18,$f10,$f16
 afc:	24a50000 	addiu	a1,a1,0
 b00:	24420000 	addiu	v0,v0,0
 b04:	4600910d 	trunc.w.s	$f4,$f18
 b08:	44032000 	mfc1	v1,$f4
 b0c:	00000000 	nop
 b10:	306300ff 	andi	v1,v1,0xff
 b14:	904d0000 	lbu	t5,0(v0)
 b18:	24420004 	addiu	v0,v0,4
 b1c:	000d7900 	sll	t7,t5,0x4
 b20:	008f6021 	addu	t4,a0,t7
 b24:	a183000f 	sb	v1,15(t4)
 b28:	9058fffd 	lbu	t8,-3(v0)
 b2c:	0018c900 	sll	t9,t8,0x4
 b30:	00997021 	addu	t6,a0,t9
 b34:	a1c3000f 	sb	v1,15(t6)
 b38:	904dfffe 	lbu	t5,-2(v0)
 b3c:	000d7900 	sll	t7,t5,0x4
 b40:	008f6021 	addu	t4,a0,t7
 b44:	a183000f 	sb	v1,15(t4)
 b48:	9058ffff 	lbu	t8,-1(v0)
 b4c:	0018c900 	sll	t9,t8,0x4
 b50:	00997021 	addu	t6,a0,t9
 b54:	1445ffef 	bne	v0,a1,b14 <MagicFire_Draw+0x610>
 b58:	a1c3000f 	sb	v1,15(t6)
 b5c:	8fbf0034 	lw	ra,52(sp)
 b60:	27bd00c0 	addiu	sp,sp,192
 b64:	03e00008 	jr	ra
 b68:	00000000 	nop
 b6c:	00000000 	nop
