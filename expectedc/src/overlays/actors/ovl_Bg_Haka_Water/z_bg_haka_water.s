
build/src/overlays/actors/ovl_Bg_Haka_Water/z_bg_haka_water.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHakaWater_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afa50024 	sw	a1,36(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	0c000000 	jal	0 <BgHakaWater_Init>
  1c:	24a50020 	addiu	a1,a1,32
  20:	8fa40024 	lw	a0,36(sp)
  24:	0c000000 	jal	0 <BgHakaWater_Init>
  28:	8605001c 	lh	a1,28(s0)
  2c:	1040000b 	beqz	v0,5c <BgHakaWater_Init+0x5c>
  30:	02002025 	move	a0,s0
  34:	3c014348 	lui	at,0x4348
  38:	44813000 	mtc1	at,$f6
  3c:	c604000c 	lwc1	$f4,12(s0)
  40:	240e0001 	li	t6,1
  44:	a20e0150 	sb	t6,336(s0)
  48:	46062201 	sub.s	$f8,$f4,$f6
  4c:	e608000c 	swc1	$f8,12(s0)
  50:	c60a000c 	lwc1	$f10,12(s0)
  54:	10000002 	b	60 <BgHakaWater_Init+0x60>
  58:	e60a0028 	swc1	$f10,40(s0)
  5c:	a2000150 	sb	zero,336(s0)
  60:	0c000000 	jal	0 <BgHakaWater_Init>
  64:	8fa50024 	lw	a1,36(sp)
  68:	3c0f0000 	lui	t7,0x0
  6c:	25ef0000 	addiu	t7,t7,0
  70:	ae0f014c 	sw	t7,332(s0)
  74:	8fbf001c 	lw	ra,28(sp)
  78:	8fb00018 	lw	s0,24(sp)
  7c:	27bd0020 	addiu	sp,sp,32
  80:	03e00008 	jr	ra
  84:	00000000 	nop

00000088 <BgHakaWater_Destroy>:
  88:	afa40000 	sw	a0,0(sp)
  8c:	03e00008 	jr	ra
  90:	afa50004 	sw	a1,4(sp)

00000094 <func_80881D94>:
  94:	c4840028 	lwc1	$f4,40(a0)
  98:	8ca907c0 	lw	t1,1984(a1)
  9c:	24030010 	li	v1,16
  a0:	4600218d 	trunc.w.s	$f6,$f4
  a4:	8d2a0028 	lw	t2,40(t1)
  a8:	24020090 	li	v0,144
  ac:	44193000 	mfc1	t9,$f6
  b0:	00000000 	nop
  b4:	2728fff8 	addiu	t0,t9,-8
  b8:	a5480002 	sh	t0,2(t2)
  bc:	c4920028 	lwc1	$f18,40(a0)
  c0:	8cb807c0 	lw	t8,1984(a1)
  c4:	2442ffc0 	addiu	v0,v0,-64
  c8:	4600948d 	trunc.w.s	$f18,$f18
  cc:	8f190028 	lw	t9,40(t8)
  d0:	440e9000 	mfc1	t6,$f18
  d4:	03234821 	addu	t1,t9,v1
  d8:	10620023 	beq	v1,v0,168 <func_80881D94+0xd4>
  dc:	25cffff8 	addiu	t7,t6,-8
  e0:	a52f0002 	sh	t7,2(t1)
  e4:	c4920028 	lwc1	$f18,40(a0)
  e8:	8cae07c0 	lw	t6,1984(a1)
  ec:	4600948d 	trunc.w.s	$f18,$f18
  f0:	8dd80028 	lw	t8,40(t6)
  f4:	440c9000 	mfc1	t4,$f18
  f8:	0303c821 	addu	t9,t8,v1
  fc:	258dfff8 	addiu	t5,t4,-8
 100:	a72d0012 	sh	t5,18(t9)
 104:	c4920028 	lwc1	$f18,40(a0)
 108:	8cac07c0 	lw	t4,1984(a1)
 10c:	4600948d 	trunc.w.s	$f18,$f18
 110:	8d8e0028 	lw	t6,40(t4)
 114:	440a9000 	mfc1	t2,$f18
 118:	01c3c021 	addu	t8,t6,v1
 11c:	254bfff8 	addiu	t3,t2,-8
 120:	a70b0022 	sh	t3,34(t8)
 124:	c4920028 	lwc1	$f18,40(a0)
 128:	8caa07c0 	lw	t2,1984(a1)
 12c:	4600948d 	trunc.w.s	$f18,$f18
 130:	8d4c0028 	lw	t4,40(t2)
 134:	44099000 	mfc1	t1,$f18
 138:	01837021 	addu	t6,t4,v1
 13c:	24630040 	addiu	v1,v1,64
 140:	2528fff8 	addiu	t0,t1,-8
 144:	a5c80032 	sh	t0,50(t6)
 148:	c4920028 	lwc1	$f18,40(a0)
 14c:	8cb807c0 	lw	t8,1984(a1)
 150:	4600948d 	trunc.w.s	$f18,$f18
 154:	8f190028 	lw	t9,40(t8)
 158:	440e9000 	mfc1	t6,$f18
 15c:	03234821 	addu	t1,t9,v1
 160:	1462ffdf 	bne	v1,v0,e0 <func_80881D94+0x4c>
 164:	25cffff8 	addiu	t7,t6,-8
 168:	a52f0002 	sh	t7,2(t1)
 16c:	c4920028 	lwc1	$f18,40(a0)
 170:	8cae07c0 	lw	t6,1984(a1)
 174:	24420040 	addiu	v0,v0,64
 178:	4600948d 	trunc.w.s	$f18,$f18
 17c:	8dd80028 	lw	t8,40(t6)
 180:	440c9000 	mfc1	t4,$f18
 184:	0303c821 	addu	t9,t8,v1
 188:	258dfff8 	addiu	t5,t4,-8
 18c:	a72d0012 	sh	t5,18(t9)
 190:	c4920028 	lwc1	$f18,40(a0)
 194:	8cac07c0 	lw	t4,1984(a1)
 198:	4600948d 	trunc.w.s	$f18,$f18
 19c:	8d8e0028 	lw	t6,40(t4)
 1a0:	440a9000 	mfc1	t2,$f18
 1a4:	01c3c021 	addu	t8,t6,v1
 1a8:	254bfff8 	addiu	t3,t2,-8
 1ac:	a70b0022 	sh	t3,34(t8)
 1b0:	c4920028 	lwc1	$f18,40(a0)
 1b4:	8caa07c0 	lw	t2,1984(a1)
 1b8:	4600948d 	trunc.w.s	$f18,$f18
 1bc:	8d4c0028 	lw	t4,40(t2)
 1c0:	44099000 	mfc1	t1,$f18
 1c4:	01837021 	addu	t6,t4,v1
 1c8:	24630040 	addiu	v1,v1,64
 1cc:	2528fff8 	addiu	t0,t1,-8
 1d0:	a5c80032 	sh	t0,50(t6)
 1d4:	03e00008 	jr	ra
 1d8:	00000000 	nop

000001dc <BgHakaWater_Wait>:
 1dc:	27bdffe8 	addiu	sp,sp,-24
 1e0:	afbf0014 	sw	ra,20(sp)
 1e4:	afa5001c 	sw	a1,28(sp)
 1e8:	90820150 	lbu	v0,336(a0)
 1ec:	00803025 	move	a2,a0
 1f0:	00a02025 	move	a0,a1
 1f4:	14400007 	bnez	v0,214 <BgHakaWater_Wait+0x38>
 1f8:	00000000 	nop
 1fc:	84c5001c 	lh	a1,28(a2)
 200:	0c000000 	jal	0 <BgHakaWater_Init>
 204:	afa60018 	sw	a2,24(sp)
 208:	14400009 	bnez	v0,230 <BgHakaWater_Wait+0x54>
 20c:	8fa60018 	lw	a2,24(sp)
 210:	90c20150 	lbu	v0,336(a2)
 214:	1040001c 	beqz	v0,288 <BgHakaWater_Wait+0xac>
 218:	8fa4001c 	lw	a0,28(sp)
 21c:	84c5001c 	lh	a1,28(a2)
 220:	0c000000 	jal	0 <BgHakaWater_Init>
 224:	afa60018 	sw	a2,24(sp)
 228:	14400017 	bnez	v0,288 <BgHakaWater_Wait+0xac>
 22c:	8fa60018 	lw	a2,24(sp)
 230:	90ce0150 	lbu	t6,336(a2)
 234:	3c190000 	lui	t9,0x0
 238:	3c014348 	lui	at,0x4348
 23c:	11c0000b 	beqz	t6,26c <BgHakaWater_Wait+0x90>
 240:	27390000 	addiu	t9,t9,0
 244:	3c014348 	lui	at,0x4348
 248:	44813000 	mtc1	at,$f6
 24c:	c4c4000c 	lwc1	$f4,12(a2)
 250:	3c0f0000 	lui	t7,0x0
 254:	25ef0000 	addiu	t7,t7,0
 258:	46062200 	add.s	$f8,$f4,$f6
 25c:	a0c00150 	sb	zero,336(a2)
 260:	accf0134 	sw	t7,308(a2)
 264:	10000007 	b	284 <BgHakaWater_Wait+0xa8>
 268:	e4c8000c 	swc1	$f8,12(a2)
 26c:	c4ca000c 	lwc1	$f10,12(a2)
 270:	44818000 	mtc1	at,$f16
 274:	24180001 	li	t8,1
 278:	a0d80150 	sb	t8,336(a2)
 27c:	46105481 	sub.s	$f18,$f10,$f16
 280:	e4d2000c 	swc1	$f18,12(a2)
 284:	acd9014c 	sw	t9,332(a2)
 288:	8fbf0014 	lw	ra,20(sp)
 28c:	27bd0018 	addiu	sp,sp,24
 290:	03e00008 	jr	ra
 294:	00000000 	nop

00000298 <BgHakaWater_ChangeWaterLevel>:
 298:	27bdffe0 	addiu	sp,sp,-32
 29c:	afbf001c 	sw	ra,28(sp)
 2a0:	afb00018 	sw	s0,24(sp)
 2a4:	afa50024 	sw	a1,36(sp)
 2a8:	908e0150 	lbu	t6,336(a0)
 2ac:	00808025 	move	s0,a0
 2b0:	00a02025 	move	a0,a1
 2b4:	55c0000d 	bnezl	t6,2ec <BgHakaWater_ChangeWaterLevel+0x54>
 2b8:	92180150 	lbu	t8,336(s0)
 2bc:	0c000000 	jal	0 <BgHakaWater_Init>
 2c0:	8605001c 	lh	a1,28(s0)
 2c4:	10400008 	beqz	v0,2e8 <BgHakaWater_ChangeWaterLevel+0x50>
 2c8:	3c014348 	lui	at,0x4348
 2cc:	c604000c 	lwc1	$f4,12(s0)
 2d0:	44813000 	mtc1	at,$f6
 2d4:	240f0001 	li	t7,1
 2d8:	a20f0150 	sb	t7,336(s0)
 2dc:	46062201 	sub.s	$f8,$f4,$f6
 2e0:	1000000e 	b	31c <BgHakaWater_ChangeWaterLevel+0x84>
 2e4:	e608000c 	swc1	$f8,12(s0)
 2e8:	92180150 	lbu	t8,336(s0)
 2ec:	8fa40024 	lw	a0,36(sp)
 2f0:	5300000b 	beqzl	t8,320 <BgHakaWater_ChangeWaterLevel+0x88>
 2f4:	c604000c 	lwc1	$f4,12(s0)
 2f8:	0c000000 	jal	0 <BgHakaWater_Init>
 2fc:	8605001c 	lh	a1,28(s0)
 300:	14400006 	bnez	v0,31c <BgHakaWater_ChangeWaterLevel+0x84>
 304:	3c014348 	lui	at,0x4348
 308:	c60a000c 	lwc1	$f10,12(s0)
 30c:	44818000 	mtc1	at,$f16
 310:	a2000150 	sb	zero,336(s0)
 314:	46105480 	add.s	$f18,$f10,$f16
 318:	e612000c 	swc1	$f18,12(s0)
 31c:	c604000c 	lwc1	$f4,12(s0)
 320:	c6060028 	lwc1	$f6,40(s0)
 324:	2405205e 	li	a1,8286
 328:	02002025 	move	a0,s0
 32c:	4606203c 	c.lt.s	$f4,$f6
 330:	00000000 	nop
 334:	45000005 	bc1f	34c <BgHakaWater_ChangeWaterLevel+0xb4>
 338:	00000000 	nop
 33c:	0c000000 	jal	0 <BgHakaWater_Init>
 340:	02002025 	move	a0,s0
 344:	10000004 	b	358 <BgHakaWater_ChangeWaterLevel+0xc0>
 348:	26040028 	addiu	a0,s0,40
 34c:	0c000000 	jal	0 <BgHakaWater_Init>
 350:	2405205e 	li	a1,8286
 354:	26040028 	addiu	a0,s0,40
 358:	8e05000c 	lw	a1,12(s0)
 35c:	0c000000 	jal	0 <BgHakaWater_Init>
 360:	3c063f00 	lui	a2,0x3f00
 364:	10400007 	beqz	v0,384 <BgHakaWater_ChangeWaterLevel+0xec>
 368:	02002025 	move	a0,s0
 36c:	92080150 	lbu	t0,336(s0)
 370:	3c190000 	lui	t9,0x0
 374:	27390000 	addiu	t9,t9,0
 378:	11000002 	beqz	t0,384 <BgHakaWater_ChangeWaterLevel+0xec>
 37c:	ae19014c 	sw	t9,332(s0)
 380:	ae000134 	sw	zero,308(s0)
 384:	0c000000 	jal	0 <BgHakaWater_Init>
 388:	8fa50024 	lw	a1,36(sp)
 38c:	8fbf001c 	lw	ra,28(sp)
 390:	8fb00018 	lw	s0,24(sp)
 394:	27bd0020 	addiu	sp,sp,32
 398:	03e00008 	jr	ra
 39c:	00000000 	nop

000003a0 <BgHakaWater_Update>:
 3a0:	27bdffe8 	addiu	sp,sp,-24
 3a4:	afbf0014 	sw	ra,20(sp)
 3a8:	8c99014c 	lw	t9,332(a0)
 3ac:	0320f809 	jalr	t9
 3b0:	00000000 	nop
 3b4:	8fbf0014 	lw	ra,20(sp)
 3b8:	27bd0018 	addiu	sp,sp,24
 3bc:	03e00008 	jr	ra
 3c0:	00000000 	nop

000003c4 <BgHakaWater_Draw>:
 3c4:	27bdff70 	addiu	sp,sp,-144
 3c8:	afbf003c 	sw	ra,60(sp)
 3cc:	afb00038 	sw	s0,56(sp)
 3d0:	afa40090 	sw	a0,144(sp)
 3d4:	afa50094 	sw	a1,148(sp)
 3d8:	8ca50000 	lw	a1,0(a1)
 3dc:	3c060000 	lui	a2,0x0
 3e0:	24c60000 	addiu	a2,a2,0
 3e4:	27a4006c 	addiu	a0,sp,108
 3e8:	2407011f 	li	a3,287
 3ec:	0c000000 	jal	0 <BgHakaWater_Init>
 3f0:	00a08025 	move	s0,a1
 3f4:	8faf0094 	lw	t7,148(sp)
 3f8:	0c000000 	jal	0 <BgHakaWater_Init>
 3fc:	8de40000 	lw	a0,0(t7)
 400:	8fa20090 	lw	v0,144(sp)
 404:	3c014348 	lui	at,0x4348
 408:	00002825 	move	a1,zero
 40c:	90580150 	lbu	t8,336(v0)
 410:	53000006 	beqzl	t8,42c <BgHakaWater_Draw+0x68>
 414:	c448000c 	lwc1	$f8,12(v0)
 418:	c4440028 	lwc1	$f4,40(v0)
 41c:	c446000c 	lwc1	$f6,12(v0)
 420:	10000006 	b	43c <BgHakaWater_Draw+0x78>
 424:	46062001 	sub.s	$f0,$f4,$f6
 428:	c448000c 	lwc1	$f8,12(v0)
 42c:	44815000 	mtc1	at,$f10
 430:	c4520028 	lwc1	$f18,40(v0)
 434:	460a4401 	sub.s	$f16,$f8,$f10
 438:	46109001 	sub.s	$f0,$f18,$f16
 43c:	8e0302d0 	lw	v1,720(s0)
 440:	3c0afa00 	lui	t2,0xfa00
 444:	3c010000 	lui	at,0x0
 448:	24790008 	addiu	t9,v1,8
 44c:	ae1902d0 	sw	t9,720(s0)
 450:	ac6a0000 	sw	t2,0(v1)
 454:	c4240060 	lwc1	$f4,96(at)
 458:	240c0001 	li	t4,1
 45c:	3c19db06 	lui	t9,0xdb06
 460:	46002182 	mul.s	$f6,$f4,$f0
 464:	3c014f00 	lui	at,0x4f00
 468:	37390020 	ori	t9,t9,0x20
 46c:	240a0020 	li	t2,32
 470:	444bf800 	cfc1	t3,$31
 474:	44ccf800 	ctc1	t4,$31
 478:	00000000 	nop
 47c:	46003224 	cvt.w.s	$f8,$f6
 480:	444cf800 	cfc1	t4,$31
 484:	00000000 	nop
 488:	318c0078 	andi	t4,t4,0x78
 48c:	51800013 	beqzl	t4,4dc <BgHakaWater_Draw+0x118>
 490:	440c4000 	mfc1	t4,$f8
 494:	44814000 	mtc1	at,$f8
 498:	240c0001 	li	t4,1
 49c:	46083201 	sub.s	$f8,$f6,$f8
 4a0:	44ccf800 	ctc1	t4,$31
 4a4:	00000000 	nop
 4a8:	46004224 	cvt.w.s	$f8,$f8
 4ac:	444cf800 	cfc1	t4,$31
 4b0:	00000000 	nop
 4b4:	318c0078 	andi	t4,t4,0x78
 4b8:	15800005 	bnez	t4,4d0 <BgHakaWater_Draw+0x10c>
 4bc:	00000000 	nop
 4c0:	440c4000 	mfc1	t4,$f8
 4c4:	3c018000 	lui	at,0x8000
 4c8:	10000007 	b	4e8 <BgHakaWater_Draw+0x124>
 4cc:	01816025 	or	t4,t4,at
 4d0:	10000005 	b	4e8 <BgHakaWater_Draw+0x124>
 4d4:	240cffff 	li	t4,-1
 4d8:	440c4000 	mfc1	t4,$f8
 4dc:	00000000 	nop
 4e0:	0580fffb 	bltz	t4,4d0 <BgHakaWater_Draw+0x10c>
 4e4:	00000000 	nop
 4e8:	01806825 	move	t5,t4
 4ec:	31ae00ff 	andi	t6,t5,0xff
 4f0:	2401ff00 	li	at,-256
 4f4:	01c17825 	or	t7,t6,at
 4f8:	ac6f0004 	sw	t7,4(v1)
 4fc:	8e0202d0 	lw	v0,720(s0)
 500:	8fa90094 	lw	t1,148(sp)
 504:	3c030001 	lui	v1,0x1
 508:	24580008 	addiu	t8,v0,8
 50c:	ae1802d0 	sw	t8,720(s0)
 510:	ac590000 	sw	t9,0(v0)
 514:	00691821 	addu	v1,v1,t1
 518:	8c631de4 	lw	v1,7652(v1)
 51c:	8d240000 	lw	a0,0(t1)
 520:	44cbf800 	ctc1	t3,$31
 524:	00036823 	negu	t5,v1
 528:	31ae007f 	andi	t6,t5,0x7f
 52c:	240b0020 	li	t3,32
 530:	24180020 	li	t8,32
 534:	240f0020 	li	t7,32
 538:	240c0001 	li	t4,1
 53c:	3066007f 	andi	a2,v1,0x7f
 540:	00c03825 	move	a3,a2
 544:	afac0018 	sw	t4,24(sp)
 548:	afaf0024 	sw	t7,36(sp)
 54c:	afb80028 	sw	t8,40(sp)
 550:	afab0014 	sw	t3,20(sp)
 554:	afae0020 	sw	t6,32(sp)
 558:	e7a00084 	swc1	$f0,132(sp)
 55c:	afa0001c 	sw	zero,28(sp)
 560:	afaa0010 	sw	t2,16(sp)
 564:	0c000000 	jal	0 <BgHakaWater_Init>
 568:	afa20064 	sw	v0,100(sp)
 56c:	8fa80064 	lw	t0,100(sp)
 570:	c7a00084 	lwc1	$f0,132(sp)
 574:	3c0ada38 	lui	t2,0xda38
 578:	ad020004 	sw	v0,4(t0)
 57c:	8e0202d0 	lw	v0,720(s0)
 580:	354a0003 	ori	t2,t2,0x3
 584:	3c050000 	lui	a1,0x0
 588:	24590008 	addiu	t9,v0,8
 58c:	ae1902d0 	sw	t9,720(s0)
 590:	ac4a0000 	sw	t2,0(v0)
 594:	8fab0094 	lw	t3,148(sp)
 598:	24a50018 	addiu	a1,a1,24
 59c:	24060138 	li	a2,312
 5a0:	8d640000 	lw	a0,0(t3)
 5a4:	e7a00084 	swc1	$f0,132(sp)
 5a8:	0c000000 	jal	0 <BgHakaWater_Init>
 5ac:	afa20060 	sw	v0,96(sp)
 5b0:	8fa30060 	lw	v1,96(sp)
 5b4:	c7a00084 	lwc1	$f0,132(sp)
 5b8:	3c0e0000 	lui	t6,0x0
 5bc:	ac620004 	sw	v0,4(v1)
 5c0:	8e0202d0 	lw	v0,720(s0)
 5c4:	25ce0000 	addiu	t6,t6,0
 5c8:	3c0dde00 	lui	t5,0xde00
 5cc:	244c0008 	addiu	t4,v0,8
 5d0:	ae0c02d0 	sw	t4,720(s0)
 5d4:	3c0142b8 	lui	at,0x42b8
 5d8:	44817000 	mtc1	at,$f14
 5dc:	44806000 	mtc1	zero,$f12
 5e0:	ac4e0004 	sw	t6,4(v0)
 5e4:	ac4d0000 	sw	t5,0(v0)
 5e8:	3c06c4d2 	lui	a2,0xc4d2
 5ec:	00003825 	move	a3,zero
 5f0:	0c000000 	jal	0 <BgHakaWater_Init>
 5f4:	e7a00084 	swc1	$f0,132(sp)
 5f8:	3c010000 	lui	at,0x0
 5fc:	c42c0064 	lwc1	$f12,100(at)
 600:	24070001 	li	a3,1
 604:	44066000 	mfc1	a2,$f12
 608:	0c000000 	jal	0 <BgHakaWater_Init>
 60c:	46006386 	mov.s	$f14,$f12
 610:	3c01432a 	lui	at,0x432a
 614:	c7a00084 	lwc1	$f0,132(sp)
 618:	44815000 	mtc1	at,$f10
 61c:	44801000 	mtc1	zero,$f2
 620:	3c050000 	lui	a1,0x0
 624:	460a0001 	sub.s	$f0,$f0,$f10
 628:	24a50030 	addiu	a1,a1,48
 62c:	4602003c 	c.lt.s	$f0,$f2
 630:	00000000 	nop
 634:	45020003 	bc1fl	644 <BgHakaWater_Draw+0x280>
 638:	8e0202d0 	lw	v0,720(s0)
 63c:	46001006 	mov.s	$f0,$f2
 640:	8e0202d0 	lw	v0,720(s0)
 644:	3c18e700 	lui	t8,0xe700
 648:	3c0afa00 	lui	t2,0xfa00
 64c:	244f0008 	addiu	t7,v0,8
 650:	ae0f02d0 	sw	t7,720(s0)
 654:	ac400004 	sw	zero,4(v0)
 658:	ac580000 	sw	t8,0(v0)
 65c:	8e0302d0 	lw	v1,720(s0)
 660:	3c010000 	lui	at,0x0
 664:	240c0001 	li	t4,1
 668:	24790008 	addiu	t9,v1,8
 66c:	ae1902d0 	sw	t9,720(s0)
 670:	ac6a0000 	sw	t2,0(v1)
 674:	c4320068 	lwc1	$f18,104(at)
 678:	3c014f00 	lui	at,0x4f00
 67c:	46009402 	mul.s	$f16,$f18,$f0
 680:	444bf800 	cfc1	t3,$31
 684:	44ccf800 	ctc1	t4,$31
 688:	00000000 	nop
 68c:	46008124 	cvt.w.s	$f4,$f16
 690:	444cf800 	cfc1	t4,$31
 694:	00000000 	nop
 698:	318c0078 	andi	t4,t4,0x78
 69c:	51800013 	beqzl	t4,6ec <BgHakaWater_Draw+0x328>
 6a0:	440c2000 	mfc1	t4,$f4
 6a4:	44812000 	mtc1	at,$f4
 6a8:	240c0001 	li	t4,1
 6ac:	46048101 	sub.s	$f4,$f16,$f4
 6b0:	44ccf800 	ctc1	t4,$31
 6b4:	00000000 	nop
 6b8:	46002124 	cvt.w.s	$f4,$f4
 6bc:	444cf800 	cfc1	t4,$31
 6c0:	00000000 	nop
 6c4:	318c0078 	andi	t4,t4,0x78
 6c8:	15800005 	bnez	t4,6e0 <BgHakaWater_Draw+0x31c>
 6cc:	00000000 	nop
 6d0:	440c2000 	mfc1	t4,$f4
 6d4:	3c018000 	lui	at,0x8000
 6d8:	10000007 	b	6f8 <BgHakaWater_Draw+0x334>
 6dc:	01816025 	or	t4,t4,at
 6e0:	10000005 	b	6f8 <BgHakaWater_Draw+0x334>
 6e4:	240cffff 	li	t4,-1
 6e8:	440c2000 	mfc1	t4,$f4
 6ec:	00000000 	nop
 6f0:	0580fffb 	bltz	t4,6e0 <BgHakaWater_Draw+0x31c>
 6f4:	00000000 	nop
 6f8:	318e00ff 	andi	t6,t4,0xff
 6fc:	2401ff00 	li	at,-256
 700:	01c17825 	or	t7,t6,at
 704:	ac6f0004 	sw	t7,4(v1)
 708:	8e0202d0 	lw	v0,720(s0)
 70c:	3c19da38 	lui	t9,0xda38
 710:	37390003 	ori	t9,t9,0x3
 714:	24580008 	addiu	t8,v0,8
 718:	ae1802d0 	sw	t8,720(s0)
 71c:	ac590000 	sw	t9,0(v0)
 720:	8faa0094 	lw	t2,148(sp)
 724:	44cbf800 	ctc1	t3,$31
 728:	24060148 	li	a2,328
 72c:	8d440000 	lw	a0,0(t2)
 730:	0c000000 	jal	0 <BgHakaWater_Init>
 734:	afa20050 	sw	v0,80(sp)
 738:	8fa30050 	lw	v1,80(sp)
 73c:	3c0d0000 	lui	t5,0x0
 740:	25ad0000 	addiu	t5,t5,0
 744:	ac620004 	sw	v0,4(v1)
 748:	8e0202d0 	lw	v0,720(s0)
 74c:	3c0cde00 	lui	t4,0xde00
 750:	3c060000 	lui	a2,0x0
 754:	244b0008 	addiu	t3,v0,8
 758:	ae0b02d0 	sw	t3,720(s0)
 75c:	ac4d0004 	sw	t5,4(v0)
 760:	ac4c0000 	sw	t4,0(v0)
 764:	8fae0094 	lw	t6,148(sp)
 768:	24c60048 	addiu	a2,a2,72
 76c:	27a4006c 	addiu	a0,sp,108
 770:	2407014c 	li	a3,332
 774:	0c000000 	jal	0 <BgHakaWater_Init>
 778:	8dc50000 	lw	a1,0(t6)
 77c:	8fbf003c 	lw	ra,60(sp)
 780:	8fb00038 	lw	s0,56(sp)
 784:	27bd0090 	addiu	sp,sp,144
 788:	03e00008 	jr	ra
 78c:	00000000 	nop
