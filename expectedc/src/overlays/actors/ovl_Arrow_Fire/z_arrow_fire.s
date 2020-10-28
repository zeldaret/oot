
build/src/overlays/actors/ovl_Arrow_Fire/z_arrow_fire.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ArrowFire_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850160 	sw	a1,352(a0)

00000008 <ArrowFire_Init>:
   8:	27bdffe0 	addiu	sp,sp,-32
   c:	afa50024 	sw	a1,36(sp)
  10:	afbf001c 	sw	ra,28(sp)
  14:	afb00018 	sw	s0,24(sp)
  18:	3c050000 	lui	a1,0x0
  1c:	00808025 	move	s0,a0
  20:	0c000000 	jal	0 <ArrowFire_SetupAction>
  24:	24a51440 	addiu	a1,a1,5184
  28:	3c013f80 	lui	at,0x3f80
  2c:	44812000 	mtc1	at,$f4
  30:	3c050000 	lui	a1,0x0
  34:	a6000164 	sh	zero,356(s0)
  38:	24a50000 	addiu	a1,a1,0
  3c:	02002025 	move	a0,s0
  40:	0c000000 	jal	0 <ArrowFire_SetupAction>
  44:	e6040158 	swc1	$f4,344(s0)
  48:	3c053c23 	lui	a1,0x3c23
  4c:	34a5d70a 	ori	a1,a1,0xd70a
  50:	0c000000 	jal	0 <ArrowFire_SetupAction>
  54:	02002025 	move	a0,s0
  58:	44803000 	mtc1	zero,$f6
  5c:	240e00a0 	li	t6,160
  60:	a20e0168 	sb	t6,360(s0)
  64:	a6000166 	sh	zero,358(s0)
  68:	e606015c 	swc1	$f6,348(s0)
  6c:	8fbf001c 	lw	ra,28(sp)
  70:	8fb00018 	lw	s0,24(sp)
  74:	27bd0020 	addiu	sp,sp,32
  78:	03e00008 	jr	ra
  7c:	00000000 	nop

00000080 <ArrowFire_Destroy>:
  80:	27bdffe8 	addiu	sp,sp,-24
  84:	afbf0014 	sw	ra,20(sp)
  88:	afa40018 	sw	a0,24(sp)
  8c:	0c000000 	jal	0 <ArrowFire_SetupAction>
  90:	00a02025 	move	a0,a1
  94:	3c040000 	lui	a0,0x0
  98:	24840000 	addiu	a0,a0,0
  9c:	0c000000 	jal	0 <ArrowFire_SetupAction>
  a0:	240501a5 	li	a1,421
  a4:	3c040000 	lui	a0,0x0
  a8:	3c050000 	lui	a1,0x0
  ac:	24a50024 	addiu	a1,a1,36
  b0:	0c000000 	jal	0 <ArrowFire_SetupAction>
  b4:	24840014 	addiu	a0,a0,20
  b8:	8fbf0014 	lw	ra,20(sp)
  bc:	27bd0018 	addiu	sp,sp,24
  c0:	03e00008 	jr	ra
  c4:	00000000 	nop

000000c8 <ArrowFire_Charge>:
  c8:	27bdffe0 	addiu	sp,sp,-32
  cc:	afbf0014 	sw	ra,20(sp)
  d0:	afa50024 	sw	a1,36(sp)
  d4:	8c820118 	lw	v0,280(a0)
  d8:	10400004 	beqz	v0,ec <ArrowFire_Charge+0x24>
  dc:	00000000 	nop
  e0:	8c4e0130 	lw	t6,304(v0)
  e4:	55c00006 	bnezl	t6,100 <ArrowFire_Charge+0x38>
  e8:	84830164 	lh	v1,356(a0)
  ec:	0c000000 	jal	0 <ArrowFire_SetupAction>
  f0:	00000000 	nop
  f4:	1000002e 	b	1b0 <ArrowFire_Charge+0xe8>
  f8:	8fbf0014 	lw	ra,20(sp)
  fc:	84830164 	lh	v1,356(a0)
 100:	2861000a 	slti	at,v1,10
 104:	10200002 	beqz	at,110 <ArrowFire_Charge+0x48>
 108:	246f0001 	addiu	t7,v1,1
 10c:	a48f0164 	sh	t7,356(a0)
 110:	8c590024 	lw	t9,36(v0)
 114:	24830024 	addiu	v1,a0,36
 118:	2405007d 	li	a1,125
 11c:	ac790000 	sw	t9,0(v1)
 120:	8c580028 	lw	t8,40(v0)
 124:	ac780004 	sw	t8,4(v1)
 128:	8c59002c 	lw	t9,44(v0)
 12c:	ac790008 	sw	t9,8(v1)
 130:	884900b4 	lwl	t1,180(v0)
 134:	984900b7 	lwr	t1,183(v0)
 138:	a88900b4 	swl	t1,180(a0)
 13c:	b88900b7 	swr	t1,183(a0)
 140:	944900b8 	lhu	t1,184(v0)
 144:	a48900b8 	sh	t1,184(a0)
 148:	afa40020 	sw	a0,32(sp)
 14c:	afa30018 	sw	v1,24(sp)
 150:	0c000000 	jal	0 <ArrowFire_SetupAction>
 154:	afa2001c 	sw	v0,28(sp)
 158:	8fa2001c 	lw	v0,28(sp)
 15c:	8fa30018 	lw	v1,24(sp)
 160:	8fa40020 	lw	a0,32(sp)
 164:	8c4a0118 	lw	t2,280(v0)
 168:	55400011 	bnezl	t2,1b0 <ArrowFire_Charge+0xe8>
 16c:	8fbf0014 	lw	ra,20(sp)
 170:	8c6c0000 	lw	t4,0(v1)
 174:	240d000a 	li	t5,10
 178:	3c050000 	lui	a1,0x0
 17c:	ac8c014c 	sw	t4,332(a0)
 180:	8c6b0004 	lw	t3,4(v1)
 184:	24a50000 	addiu	a1,a1,0
 188:	ac8b0150 	sw	t3,336(a0)
 18c:	8c6c0008 	lw	t4,8(v1)
 190:	a48d0164 	sh	t5,356(a0)
 194:	ac8c0154 	sw	t4,340(a0)
 198:	0c000000 	jal	0 <ArrowFire_SetupAction>
 19c:	afa40020 	sw	a0,32(sp)
 1a0:	8fa40020 	lw	a0,32(sp)
 1a4:	240e00ff 	li	t6,255
 1a8:	a08e0168 	sb	t6,360(a0)
 1ac:	8fbf0014 	lw	ra,20(sp)
 1b0:	27bd0020 	addiu	sp,sp,32
 1b4:	03e00008 	jr	ra
 1b8:	00000000 	nop

000001bc <func_80865ECC>:
 1bc:	c4800000 	lwc1	$f0,0(a0)
 1c0:	c4a40000 	lwc1	$f4,0(a1)
 1c4:	44866000 	mtc1	a2,$f12
 1c8:	c4820004 	lwc1	$f2,4(a0)
 1cc:	46002181 	sub.s	$f6,$f4,$f0
 1d0:	c48e0008 	lwc1	$f14,8(a0)
 1d4:	460c3202 	mul.s	$f8,$f6,$f12
 1d8:	46080280 	add.s	$f10,$f0,$f8
 1dc:	e48a0000 	swc1	$f10,0(a0)
 1e0:	c4b00004 	lwc1	$f16,4(a1)
 1e4:	46028481 	sub.s	$f18,$f16,$f2
 1e8:	460c9102 	mul.s	$f4,$f18,$f12
 1ec:	46041180 	add.s	$f6,$f2,$f4
 1f0:	e4860004 	swc1	$f6,4(a0)
 1f4:	c4a80008 	lwc1	$f8,8(a1)
 1f8:	460e4281 	sub.s	$f10,$f8,$f14
 1fc:	460c5402 	mul.s	$f16,$f10,$f12
 200:	46107480 	add.s	$f18,$f14,$f16
 204:	03e00008 	jr	ra
 208:	e4920008 	swc1	$f18,8(a0)

0000020c <ArrowFire_Hit>:
 20c:	27bdffe8 	addiu	sp,sp,-24
 210:	afbf0014 	sw	ra,20(sp)
 214:	afa5001c 	sw	a1,28(sp)
 218:	3c014248 	lui	at,0x4248
 21c:	44811000 	mtc1	at,$f2
 220:	c48000f0 	lwc1	$f0,240(a0)
 224:	3c010000 	lui	at,0x0
 228:	4602003c 	c.lt.s	$f0,$f2
 22c:	00000000 	nop
 230:	45000005 	bc1f	248 <ArrowFire_Hit+0x3c>
 234:	00000000 	nop
 238:	3c014120 	lui	at,0x4120
 23c:	44816000 	mtc1	at,$f12
 240:	10000012 	b	28c <ArrowFire_Hit+0x80>
 244:	94830166 	lhu	v1,358(a0)
 248:	c4240068 	lwc1	$f4,104(at)
 24c:	3c010000 	lui	at,0x0
 250:	4600203c 	c.lt.s	$f4,$f0
 254:	00000000 	nop
 258:	45020006 	bc1fl	274 <ArrowFire_Hit+0x68>
 25c:	46020181 	sub.s	$f6,$f0,$f2
 260:	3c01439b 	lui	at,0x439b
 264:	44816000 	mtc1	at,$f12
 268:	10000008 	b	28c <ArrowFire_Hit+0x80>
 26c:	94830166 	lhu	v1,358(a0)
 270:	46020181 	sub.s	$f6,$f0,$f2
 274:	c428006c 	lwc1	$f8,108(at)
 278:	3c014120 	lui	at,0x4120
 27c:	44818000 	mtc1	at,$f16
 280:	46083282 	mul.s	$f10,$f6,$f8
 284:	46105300 	add.s	$f12,$f10,$f16
 288:	94830166 	lhu	v1,358(a0)
 28c:	240a00ff 	li	t2,255
 290:	10600029 	beqz	v1,338 <ArrowFire_Hit+0x12c>
 294:	246effff 	addiu	t6,v1,-1
 298:	31c3ffff 	andi	v1,t6,0xffff
 29c:	28610008 	slti	at,v1,8
 2a0:	a48e0166 	sh	t6,358(a0)
 2a4:	14200024 	bnez	at,338 <ArrowFire_Hit+0x12c>
 2a8:	00601025 	move	v0,v1
 2ac:	244ffff8 	addiu	t7,v0,-8
 2b0:	448f9000 	mtc1	t7,$f18
 2b4:	3c010000 	lui	at,0x0
 2b8:	c4260070 	lwc1	$f6,112(at)
 2bc:	46809120 	cvt.s.w	$f4,$f18
 2c0:	3c013f80 	lui	at,0x3f80
 2c4:	44814000 	mtc1	at,$f8
 2c8:	3c014120 	lui	at,0x4120
 2cc:	44819000 	mtc1	at,$f18
 2d0:	3c014000 	lui	at,0x4000
 2d4:	46062002 	mul.s	$f0,$f4,$f6
 2d8:	c4820158 	lwc1	$f2,344(a0)
 2dc:	000240c0 	sll	t0,v0,0x3
 2e0:	01024021 	addu	t0,t0,v0
 2e4:	00084080 	sll	t0,t0,0x2
 2e8:	01024023 	subu	t0,t0,v0
 2ec:	2509fee8 	addiu	t1,t0,-280
 2f0:	46000002 	mul.s	$f0,$f0,$f0
 2f4:	46004281 	sub.s	$f10,$f8,$f0
 2f8:	44814000 	mtc1	at,$f8
 2fc:	3c010000 	lui	at,0x0
 300:	460c5402 	mul.s	$f16,$f10,$f12
 304:	46024281 	sub.s	$f10,$f8,$f2
 308:	46128100 	add.s	$f4,$f16,$f18
 30c:	4600218d 	trunc.w.s	$f6,$f4
 310:	44193000 	mfc1	t9,$f6
 314:	00000000 	nop
 318:	a4990164 	sh	t9,356(a0)
 31c:	c4300074 	lwc1	$f16,116(at)
 320:	28410010 	slti	at,v0,16
 324:	46105482 	mul.s	$f18,$f10,$f16
 328:	46121100 	add.s	$f4,$f2,$f18
 32c:	10200002 	beqz	at,338 <ArrowFire_Hit+0x12c>
 330:	e4840158 	swc1	$f4,344(a0)
 334:	a0890168 	sb	t1,360(a0)
 338:	28610009 	slti	at,v1,9
 33c:	1420000e 	bnez	at,378 <ArrowFire_Hit+0x16c>
 340:	00601025 	move	v0,v1
 344:	3c013f80 	lui	at,0x3f80
 348:	44813000 	mtc1	at,$f6
 34c:	c480015c 	lwc1	$f0,348(a0)
 350:	3c013e80 	lui	at,0x3e80
 354:	4606003c 	c.lt.s	$f0,$f6
 358:	00000000 	nop
 35c:	45020012 	bc1fl	3a8 <ArrowFire_Hit+0x19c>
 360:	28410008 	slti	at,v0,8
 364:	44814000 	mtc1	at,$f8
 368:	94820166 	lhu	v0,358(a0)
 36c:	46080280 	add.s	$f10,$f0,$f8
 370:	1000000c 	b	3a4 <ArrowFire_Hit+0x198>
 374:	e48a015c 	swc1	$f10,348(a0)
 378:	c480015c 	lwc1	$f0,348(a0)
 37c:	44808000 	mtc1	zero,$f16
 380:	3c013e00 	lui	at,0x3e00
 384:	4600803c 	c.lt.s	$f16,$f0
 388:	00000000 	nop
 38c:	45020006 	bc1fl	3a8 <ArrowFire_Hit+0x19c>
 390:	28410008 	slti	at,v0,8
 394:	44819000 	mtc1	at,$f18
 398:	94820166 	lhu	v0,358(a0)
 39c:	46120101 	sub.s	$f4,$f0,$f18
 3a0:	e484015c 	swc1	$f4,348(a0)
 3a4:	28410008 	slti	at,v0,8
 3a8:	10200003 	beqz	at,3b8 <ArrowFire_Hit+0x1ac>
 3ac:	00000000 	nop
 3b0:	a0800168 	sb	zero,360(a0)
 3b4:	94820166 	lhu	v0,358(a0)
 3b8:	54400004 	bnezl	v0,3cc <ArrowFire_Hit+0x1c0>
 3bc:	8fbf0014 	lw	ra,20(sp)
 3c0:	0c000000 	jal	0 <ArrowFire_SetupAction>
 3c4:	a48a0166 	sh	t2,358(a0)
 3c8:	8fbf0014 	lw	ra,20(sp)
 3cc:	27bd0018 	addiu	sp,sp,24
 3d0:	03e00008 	jr	ra
 3d4:	00000000 	nop

000003d8 <ArrowFire_Fly>:
 3d8:	27bdffc8 	addiu	sp,sp,-56
 3dc:	afbf001c 	sw	ra,28(sp)
 3e0:	afb00018 	sw	s0,24(sp)
 3e4:	afa5003c 	sw	a1,60(sp)
 3e8:	8c820118 	lw	v0,280(a0)
 3ec:	00808025 	move	s0,a0
 3f0:	10400004 	beqz	v0,404 <ArrowFire_Fly+0x2c>
 3f4:	00000000 	nop
 3f8:	8c4e0130 	lw	t6,304(v0)
 3fc:	55c00006 	bnezl	t6,418 <ArrowFire_Fly+0x40>
 400:	8c580024 	lw	t8,36(v0)
 404:	0c000000 	jal	0 <ArrowFire_SetupAction>
 408:	02002025 	move	a0,s0
 40c:	10000043 	b	51c <ArrowFire_Fly+0x144>
 410:	8fbf001c 	lw	ra,28(sp)
 414:	8c580024 	lw	t8,36(v0)
 418:	26050024 	addiu	a1,s0,36
 41c:	2604014c 	addiu	a0,s0,332
 420:	acb80000 	sw	t8,0(a1)
 424:	8c4f0028 	lw	t7,40(v0)
 428:	acaf0004 	sw	t7,4(a1)
 42c:	8c58002c 	lw	t8,44(v0)
 430:	acb80008 	sw	t8,8(a1)
 434:	884800b4 	lwl	t0,180(v0)
 438:	984800b7 	lwr	t0,183(v0)
 43c:	aa0800b4 	swl	t0,180(s0)
 440:	ba0800b7 	swr	t0,183(s0)
 444:	944800b8 	lhu	t0,184(v0)
 448:	a60800b8 	sh	t0,184(s0)
 44c:	afa50028 	sw	a1,40(sp)
 450:	afa40024 	sw	a0,36(sp)
 454:	0c000000 	jal	0 <ArrowFire_SetupAction>
 458:	afa20034 	sw	v0,52(sp)
 45c:	3c013f80 	lui	at,0x3f80
 460:	44816000 	mtc1	at,$f12
 464:	3c010000 	lui	at,0x0
 468:	c4240078 	lwc1	$f4,120(at)
 46c:	8fa20034 	lw	v0,52(sp)
 470:	8fa40024 	lw	a0,36(sp)
 474:	46040082 	mul.s	$f2,$f0,$f4
 478:	8fa50028 	lw	a1,40(sp)
 47c:	3c063d4c 	lui	a2,0x3d4c
 480:	34c6cccd 	ori	a2,a2,0xcccd
 484:	460c103c 	c.lt.s	$f2,$f12
 488:	e6020158 	swc1	$f2,344(s0)
 48c:	45000002 	bc1f	498 <ArrowFire_Fly+0xc0>
 490:	00000000 	nop
 494:	e60c0158 	swc1	$f12,344(s0)
 498:	0c000000 	jal	0 <ArrowFire_SetupAction>
 49c:	afa20034 	sw	v0,52(sp)
 4a0:	8fa20034 	lw	v0,52(sp)
 4a4:	02002025 	move	a0,s0
 4a8:	90490249 	lbu	t1,585(v0)
 4ac:	312a0001 	andi	t2,t1,0x1
 4b0:	5140000d 	beqzl	t2,4e8 <ArrowFire_Fly+0x110>
 4b4:	904d0248 	lbu	t5,584(v0)
 4b8:	0c000000 	jal	0 <ArrowFire_SetupAction>
 4bc:	2405183a 	li	a1,6202
 4c0:	3c050000 	lui	a1,0x0
 4c4:	24a50000 	addiu	a1,a1,0
 4c8:	0c000000 	jal	0 <ArrowFire_SetupAction>
 4cc:	02002025 	move	a0,s0
 4d0:	240b0020 	li	t3,32
 4d4:	240c00ff 	li	t4,255
 4d8:	a60b0166 	sh	t3,358(s0)
 4dc:	1000000e 	b	518 <ArrowFire_Fly+0x140>
 4e0:	a20c0168 	sb	t4,360(s0)
 4e4:	904d0248 	lbu	t5,584(v0)
 4e8:	29a10022 	slti	at,t5,34
 4ec:	5020000b 	beqzl	at,51c <ArrowFire_Fly+0x144>
 4f0:	8fbf001c 	lw	ra,28(sp)
 4f4:	92020168 	lbu	v0,360(s0)
 4f8:	28410023 	slti	at,v0,35
 4fc:	10200005 	beqz	at,514 <ArrowFire_Fly+0x13c>
 500:	244effe7 	addiu	t6,v0,-25
 504:	0c000000 	jal	0 <ArrowFire_SetupAction>
 508:	02002025 	move	a0,s0
 50c:	10000003 	b	51c <ArrowFire_Fly+0x144>
 510:	8fbf001c 	lw	ra,28(sp)
 514:	a20e0168 	sb	t6,360(s0)
 518:	8fbf001c 	lw	ra,28(sp)
 51c:	8fb00018 	lw	s0,24(sp)
 520:	27bd0038 	addiu	sp,sp,56
 524:	03e00008 	jr	ra
 528:	00000000 	nop

0000052c <ArrowFire_Update>:
 52c:	27bdffe8 	addiu	sp,sp,-24
 530:	3c020001 	lui	v0,0x1
 534:	afbf0014 	sw	ra,20(sp)
 538:	00451021 	addu	v0,v0,a1
 53c:	904203dc 	lbu	v0,988(v0)
 540:	2401000d 	li	at,13
 544:	10410003 	beq	v0,at,554 <ArrowFire_Update+0x28>
 548:	24010011 	li	at,17
 54c:	54410006 	bnel	v0,at,568 <ArrowFire_Update+0x3c>
 550:	8c990160 	lw	t9,352(a0)
 554:	0c000000 	jal	0 <ArrowFire_SetupAction>
 558:	00000000 	nop
 55c:	10000005 	b	574 <ArrowFire_Update+0x48>
 560:	8fbf0014 	lw	ra,20(sp)
 564:	8c990160 	lw	t9,352(a0)
 568:	0320f809 	jalr	t9
 56c:	00000000 	nop
 570:	8fbf0014 	lw	ra,20(sp)
 574:	27bd0018 	addiu	sp,sp,24
 578:	03e00008 	jr	ra
 57c:	00000000 	nop

00000580 <ArrowFire_Draw>:
 580:	27bdff68 	addiu	sp,sp,-152
 584:	afbf003c 	sw	ra,60(sp)
 588:	afb00038 	sw	s0,56(sp)
 58c:	afa40098 	sw	a0,152(sp)
 590:	afa5009c 	sw	a1,156(sp)
 594:	8caf009c 	lw	t7,156(a1)
 598:	afaf008c 	sw	t7,140(sp)
 59c:	8c830118 	lw	v1,280(a0)
 5a0:	50600106 	beqzl	v1,9bc <ArrowFire_Draw+0x43c>
 5a4:	8fbf003c 	lw	ra,60(sp)
 5a8:	8c790130 	lw	t9,304(v1)
 5ac:	53200103 	beqzl	t9,9bc <ArrowFire_Draw+0x43c>
 5b0:	8fbf003c 	lw	ra,60(sp)
 5b4:	948c0166 	lhu	t4,358(a0)
 5b8:	3c060000 	lui	a2,0x0
 5bc:	24c6002c 	addiu	a2,a2,44
 5c0:	298100ff 	slti	at,t4,255
 5c4:	102000fc 	beqz	at,9b8 <ArrowFire_Draw+0x438>
 5c8:	8faf009c 	lw	t7,156(sp)
 5cc:	906d0249 	lbu	t5,585(v1)
 5d0:	2407026a 	li	a3,618
 5d4:	31ae0002 	andi	t6,t5,0x2
 5d8:	51c00004 	beqzl	t6,5ec <ArrowFire_Draw+0x6c>
 5dc:	00601025 	move	v0,v1
 5e0:	10000002 	b	5ec <ArrowFire_Draw+0x6c>
 5e4:	00801025 	move	v0,a0
 5e8:	00601025 	move	v0,v1
 5ec:	8de50000 	lw	a1,0(t7)
 5f0:	afa20084 	sw	v0,132(sp)
 5f4:	27a40070 	addiu	a0,sp,112
 5f8:	0c000000 	jal	0 <ArrowFire_SetupAction>
 5fc:	00a08025 	move	s0,a1
 600:	8fa20084 	lw	v0,132(sp)
 604:	00003825 	move	a3,zero
 608:	c44c0024 	lwc1	$f12,36(v0)
 60c:	c44e0028 	lwc1	$f14,40(v0)
 610:	0c000000 	jal	0 <ArrowFire_SetupAction>
 614:	8c46002c 	lw	a2,44(v0)
 618:	8fa20084 	lw	v0,132(sp)
 61c:	3c010000 	lui	at,0x0
 620:	c428007c 	lwc1	$f8,124(at)
 624:	845800b6 	lh	t8,182(v0)
 628:	24050001 	li	a1,1
 62c:	44982000 	mtc1	t8,$f4
 630:	00000000 	nop
 634:	468021a0 	cvt.s.w	$f6,$f4
 638:	46083302 	mul.s	$f12,$f6,$f8
 63c:	0c000000 	jal	0 <ArrowFire_SetupAction>
 640:	00000000 	nop
 644:	8fa20084 	lw	v0,132(sp)
 648:	3c010000 	lui	at,0x0
 64c:	c4320080 	lwc1	$f18,128(at)
 650:	845900b4 	lh	t9,180(v0)
 654:	24050001 	li	a1,1
 658:	44995000 	mtc1	t9,$f10
 65c:	00000000 	nop
 660:	46805420 	cvt.s.w	$f16,$f10
 664:	46128302 	mul.s	$f12,$f16,$f18
 668:	0c000000 	jal	0 <ArrowFire_SetupAction>
 66c:	00000000 	nop
 670:	8fa20084 	lw	v0,132(sp)
 674:	3c010000 	lui	at,0x0
 678:	c4280084 	lwc1	$f8,132(at)
 67c:	844b00b8 	lh	t3,184(v0)
 680:	24050001 	li	a1,1
 684:	448b2000 	mtc1	t3,$f4
 688:	00000000 	nop
 68c:	468021a0 	cvt.s.w	$f6,$f4
 690:	46083302 	mul.s	$f12,$f6,$f8
 694:	0c000000 	jal	0 <ArrowFire_SetupAction>
 698:	00000000 	nop
 69c:	3c010000 	lui	at,0x0
 6a0:	c42c0088 	lwc1	$f12,136(at)
 6a4:	24070001 	li	a3,1
 6a8:	44066000 	mfc1	a2,$f12
 6ac:	0c000000 	jal	0 <ArrowFire_SetupAction>
 6b0:	46006386 	mov.s	$f14,$f12
 6b4:	8fac0098 	lw	t4,152(sp)
 6b8:	44805000 	mtc1	zero,$f10
 6bc:	c590015c 	lwc1	$f16,348(t4)
 6c0:	4610503c 	c.lt.s	$f10,$f16
 6c4:	00000000 	nop
 6c8:	45020030 	bc1fl	78c <ArrowFire_Draw+0x20c>
 6cc:	8fae009c 	lw	t6,156(sp)
 6d0:	0c000000 	jal	0 <ArrowFire_SetupAction>
 6d4:	8e0402d0 	lw	a0,720(s0)
 6d8:	ae0202d0 	sw	v0,720(s0)
 6dc:	244d0008 	addiu	t5,v0,8
 6e0:	ae0d02d0 	sw	t5,720(s0)
 6e4:	3c0efa00 	lui	t6,0xfa00
 6e8:	ac4e0000 	sw	t6,0(v0)
 6ec:	8faf0098 	lw	t7,152(sp)
 6f0:	3c014220 	lui	at,0x4220
 6f4:	44819000 	mtc1	at,$f18
 6f8:	c5e0015c 	lwc1	$f0,348(t7)
 6fc:	3c014316 	lui	at,0x4316
 700:	44814000 	mtc1	at,$f8
 704:	46120102 	mul.s	$f4,$f0,$f18
 708:	3c0ee300 	lui	t6,0xe300
 70c:	35ce1a01 	ori	t6,t6,0x1a01
 710:	46004282 	mul.s	$f10,$f8,$f0
 714:	240f0030 	li	t7,48
 718:	4600218d 	trunc.w.s	$f6,$f4
 71c:	4600540d 	trunc.w.s	$f16,$f10
 720:	440c3000 	mfc1	t4,$f6
 724:	44188000 	mfc1	t8,$f16
 728:	000c6e00 	sll	t5,t4,0x18
 72c:	331900ff 	andi	t9,t8,0xff
 730:	01b95825 	or	t3,t5,t9
 734:	ac4b0004 	sw	t3,4(v0)
 738:	8e0202d0 	lw	v0,720(s0)
 73c:	3c0de300 	lui	t5,0xe300
 740:	35ad1801 	ori	t5,t5,0x1801
 744:	244c0008 	addiu	t4,v0,8
 748:	ae0c02d0 	sw	t4,720(s0)
 74c:	ac4f0004 	sw	t7,4(v0)
 750:	ac4e0000 	sw	t6,0(v0)
 754:	8e0202d0 	lw	v0,720(s0)
 758:	241900c0 	li	t9,192
 75c:	3c0cf64f 	lui	t4,0xf64f
 760:	24580008 	addiu	t8,v0,8
 764:	ae1802d0 	sw	t8,720(s0)
 768:	ac590004 	sw	t9,4(v0)
 76c:	ac4d0000 	sw	t5,0(v0)
 770:	8e0202d0 	lw	v0,720(s0)
 774:	358cc3bc 	ori	t4,t4,0xc3bc
 778:	244b0008 	addiu	t3,v0,8
 77c:	ae0b02d0 	sw	t3,720(s0)
 780:	ac400004 	sw	zero,4(v0)
 784:	ac4c0000 	sw	t4,0(v0)
 788:	8fae009c 	lw	t6,156(sp)
 78c:	0c000000 	jal	0 <ArrowFire_SetupAction>
 790:	8dc40000 	lw	a0,0(t6)
 794:	8e0202d0 	lw	v0,720(s0)
 798:	3c18fa00 	lui	t8,0xfa00
 79c:	37188080 	ori	t8,t8,0x8080
 7a0:	244f0008 	addiu	t7,v0,8
 7a4:	ae0f02d0 	sw	t7,720(s0)
 7a8:	ac580000 	sw	t8,0(v0)
 7ac:	8fad0098 	lw	t5,152(sp)
 7b0:	3c01ffc8 	lui	at,0xffc8
 7b4:	3c18ff00 	lui	t8,0xff00
 7b8:	91ab0168 	lbu	t3,360(t5)
 7bc:	37180080 	ori	t8,t8,0x80
 7c0:	3c0ffb00 	lui	t7,0xfb00
 7c4:	01616025 	or	t4,t3,at
 7c8:	ac4c0004 	sw	t4,4(v0)
 7cc:	8e0202d0 	lw	v0,720(s0)
 7d0:	24044000 	li	a0,16384
 7d4:	00002825 	move	a1,zero
 7d8:	244e0008 	addiu	t6,v0,8
 7dc:	ae0e02d0 	sw	t6,720(s0)
 7e0:	00003025 	move	a2,zero
 7e4:	24070001 	li	a3,1
 7e8:	ac580004 	sw	t8,4(v0)
 7ec:	0c000000 	jal	0 <ArrowFire_SetupAction>
 7f0:	ac4f0000 	sw	t7,0(v0)
 7f4:	8fad0098 	lw	t5,152(sp)
 7f8:	3c010000 	lui	at,0x0
 7fc:	24060000 	li	a2,0
 800:	95b90166 	lhu	t9,358(t5)
 804:	24070001 	li	a3,1
 808:	53200009 	beqzl	t9,830 <ArrowFire_Draw+0x2b0>
 80c:	44806000 	mtc1	zero,$f12
 810:	44806000 	mtc1	zero,$f12
 814:	24070001 	li	a3,1
 818:	44066000 	mfc1	a2,$f12
 81c:	0c000000 	jal	0 <ArrowFire_SetupAction>
 820:	46006386 	mov.s	$f14,$f12
 824:	10000005 	b	83c <ArrowFire_Draw+0x2bc>
 828:	8fab0098 	lw	t3,152(sp)
 82c:	44806000 	mtc1	zero,$f12
 830:	0c000000 	jal	0 <ArrowFire_SetupAction>
 834:	c42e008c 	lwc1	$f14,140(at)
 838:	8fab0098 	lw	t3,152(sp)
 83c:	3c010000 	lui	at,0x0
 840:	c4260090 	lwc1	$f6,144(at)
 844:	856c0164 	lh	t4,356(t3)
 848:	3c014080 	lui	at,0x4080
 84c:	44815000 	mtc1	at,$f10
 850:	448c9000 	mtc1	t4,$f18
 854:	c5680158 	lwc1	$f8,344(t3)
 858:	24070001 	li	a3,1
 85c:	46809120 	cvt.s.w	$f4,$f18
 860:	46062302 	mul.s	$f12,$f4,$f6
 864:	44066000 	mfc1	a2,$f12
 868:	460a4382 	mul.s	$f14,$f8,$f10
 86c:	0c000000 	jal	0 <ArrowFire_SetupAction>
 870:	00000000 	nop
 874:	44806000 	mtc1	zero,$f12
 878:	3c01c42f 	lui	at,0xc42f
 87c:	44817000 	mtc1	at,$f14
 880:	44066000 	mfc1	a2,$f12
 884:	0c000000 	jal	0 <ArrowFire_SetupAction>
 888:	24070001 	li	a3,1
 88c:	8e0202d0 	lw	v0,720(s0)
 890:	3c0fda38 	lui	t7,0xda38
 894:	35ef0003 	ori	t7,t7,0x3
 898:	244e0008 	addiu	t6,v0,8
 89c:	ae0e02d0 	sw	t6,720(s0)
 8a0:	ac4f0000 	sw	t7,0(v0)
 8a4:	8fb8009c 	lw	t8,156(sp)
 8a8:	3c050000 	lui	a1,0x0
 8ac:	24a50040 	addiu	a1,a1,64
 8b0:	8f040000 	lw	a0,0(t8)
 8b4:	2406029a 	li	a2,666
 8b8:	0c000000 	jal	0 <ArrowFire_SetupAction>
 8bc:	afa20054 	sw	v0,84(sp)
 8c0:	8fa30054 	lw	v1,84(sp)
 8c4:	3c190000 	lui	t9,0x0
 8c8:	273912b0 	addiu	t9,t9,4784
 8cc:	ac620004 	sw	v0,4(v1)
 8d0:	8e0202d0 	lw	v0,720(s0)
 8d4:	3c09de00 	lui	t1,0xde00
 8d8:	240800ff 	li	t0,255
 8dc:	244d0008 	addiu	t5,v0,8
 8e0:	ae0d02d0 	sw	t5,720(s0)
 8e4:	ac490000 	sw	t1,0(v0)
 8e8:	ac590004 	sw	t9,4(v0)
 8ec:	8e0202d0 	lw	v0,720(s0)
 8f0:	8faa008c 	lw	t2,140(sp)
 8f4:	24180040 	li	t8,64
 8f8:	244c0008 	addiu	t4,v0,8
 8fc:	ae0c02d0 	sw	t4,720(s0)
 900:	ac490000 	sw	t1,0(v0)
 904:	8fab009c 	lw	t3,156(sp)
 908:	000a7040 	sll	t6,t2,0x1
 90c:	31cf00ff 	andi	t7,t6,0xff
 910:	8d640000 	lw	a0,0(t3)
 914:	000a7080 	sll	t6,t2,0x2
 918:	01ca7021 	addu	t6,t6,t2
 91c:	000e7040 	sll	t6,t6,0x1
 920:	afb80010 	sw	t8,16(sp)
 924:	010f3023 	subu	a2,t0,t7
 928:	24190001 	li	t9,1
 92c:	240d0020 	li	t5,32
 930:	314c00ff 	andi	t4,t2,0xff
 934:	010c5823 	subu	t3,t0,t4
 938:	afad0014 	sw	t5,20(sp)
 93c:	afb90018 	sw	t9,24(sp)
 940:	31cf01ff 	andi	t7,t6,0x1ff
 944:	241801ff 	li	t8,511
 948:	030f6823 	subu	t5,t8,t7
 94c:	24190040 	li	t9,64
 950:	240c0040 	li	t4,64
 954:	afac0028 	sw	t4,40(sp)
 958:	afb90024 	sw	t9,36(sp)
 95c:	afad0020 	sw	t5,32(sp)
 960:	afab001c 	sw	t3,28(sp)
 964:	00002825 	move	a1,zero
 968:	00003825 	move	a3,zero
 96c:	0c000000 	jal	0 <ArrowFire_SetupAction>
 970:	afa2004c 	sw	v0,76(sp)
 974:	8fa3004c 	lw	v1,76(sp)
 978:	3c180000 	lui	t8,0x0
 97c:	27181360 	addiu	t8,t8,4960
 980:	ac620004 	sw	v0,4(v1)
 984:	8e0202d0 	lw	v0,720(s0)
 988:	3c0ede00 	lui	t6,0xde00
 98c:	3c060000 	lui	a2,0x0
 990:	244b0008 	addiu	t3,v0,8
 994:	ae0b02d0 	sw	t3,720(s0)
 998:	ac580004 	sw	t8,4(v0)
 99c:	ac4e0000 	sw	t6,0(v0)
 9a0:	8faf009c 	lw	t7,156(sp)
 9a4:	24c60054 	addiu	a2,a2,84
 9a8:	27a40070 	addiu	a0,sp,112
 9ac:	240702aa 	li	a3,682
 9b0:	0c000000 	jal	0 <ArrowFire_SetupAction>
 9b4:	8de50000 	lw	a1,0(t7)
 9b8:	8fbf003c 	lw	ra,60(sp)
 9bc:	8fb00038 	lw	s0,56(sp)
 9c0:	27bd0098 	addiu	sp,sp,152
 9c4:	03e00008 	jr	ra
 9c8:	00000000 	nop
 9cc:	00000000 	nop
