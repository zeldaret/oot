
build/src/overlays/actors/ovl_Bg_Ddan_Kd/z_bg_ddan_kd.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgDdanKd_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac8501c4 	sw	a1,452(a0)

00000008 <BgDdanKd_Init>:
   8:	27bdffd0 	addiu	sp,sp,-48
   c:	afb10018 	sw	s1,24(sp)
  10:	00a08825 	move	s1,a1
  14:	afbf001c 	sw	ra,28(sp)
  18:	afb00014 	sw	s0,20(sp)
  1c:	afa00024 	sw	zero,36(sp)
  20:	3c050000 	lui	a1,0x0
  24:	00808025 	move	s0,a0
  28:	ac800164 	sw	zero,356(a0)
  2c:	0c000000 	jal	0 <BgDdanKd_SetupAction>
  30:	24a5004c 	addiu	a1,a1,76
  34:	02002025 	move	a0,s0
  38:	0c000000 	jal	0 <BgDdanKd_SetupAction>
  3c:	24050001 	li	a1,1
  40:	26050178 	addiu	a1,s0,376
  44:	afa50020 	sw	a1,32(sp)
  48:	0c000000 	jal	0 <BgDdanKd_SetupAction>
  4c:	02202025 	move	a0,s1
  50:	3c070000 	lui	a3,0x0
  54:	8fa50020 	lw	a1,32(sp)
  58:	24e70020 	addiu	a3,a3,32
  5c:	02202025 	move	a0,s1
  60:	0c000000 	jal	0 <BgDdanKd_SetupAction>
  64:	02003025 	move	a2,s0
  68:	3c040000 	lui	a0,0x0
  6c:	24840000 	addiu	a0,a0,0
  70:	0c000000 	jal	0 <BgDdanKd_SetupAction>
  74:	27a50024 	addiu	a1,sp,36
  78:	02202025 	move	a0,s1
  7c:	26250810 	addiu	a1,s1,2064
  80:	02003025 	move	a2,s0
  84:	0c000000 	jal	0 <BgDdanKd_SetupAction>
  88:	8fa70024 	lw	a3,36(sp)
  8c:	ae02014c 	sw	v0,332(s0)
  90:	02202025 	move	a0,s1
  94:	0c000000 	jal	0 <BgDdanKd_SetupAction>
  98:	8605001c 	lh	a1,28(s0)
  9c:	14400007 	bnez	v0,bc <BgDdanKd_Init+0xb4>
  a0:	3c014348 	lui	at,0x4348
  a4:	3c050000 	lui	a1,0x0
  a8:	24a50000 	addiu	a1,a1,0
  ac:	0c000000 	jal	0 <BgDdanKd_SetupAction>
  b0:	02002025 	move	a0,s0
  b4:	1000000d 	b	ec <BgDdanKd_Init+0xe4>
  b8:	8fbf001c 	lw	ra,28(sp)
  bc:	c604000c 	lwc1	$f4,12(s0)
  c0:	44813000 	mtc1	at,$f6
  c4:	3c0141a0 	lui	at,0x41a0
  c8:	44815000 	mtc1	at,$f10
  cc:	46062201 	sub.s	$f8,$f4,$f6
  d0:	3c050000 	lui	a1,0x0
  d4:	24a50000 	addiu	a1,a1,0
  d8:	02002025 	move	a0,s0
  dc:	460a4401 	sub.s	$f16,$f8,$f10
  e0:	0c000000 	jal	0 <BgDdanKd_SetupAction>
  e4:	e6100028 	swc1	$f16,40(s0)
  e8:	8fbf001c 	lw	ra,28(sp)
  ec:	8fb00014 	lw	s0,20(sp)
  f0:	8fb10018 	lw	s1,24(sp)
  f4:	03e00008 	jr	ra
  f8:	27bd0030 	addiu	sp,sp,48

000000fc <BgDdanKd_Destroy>:
  fc:	27bdffe8 	addiu	sp,sp,-24
 100:	afa40018 	sw	a0,24(sp)
 104:	8fae0018 	lw	t6,24(sp)
 108:	afbf0014 	sw	ra,20(sp)
 10c:	00a03825 	move	a3,a1
 110:	00a02025 	move	a0,a1
 114:	8dc6014c 	lw	a2,332(t6)
 118:	afa7001c 	sw	a3,28(sp)
 11c:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 120:	24a50810 	addiu	a1,a1,2064
 124:	8fa50018 	lw	a1,24(sp)
 128:	8fa4001c 	lw	a0,28(sp)
 12c:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 130:	24a50178 	addiu	a1,a1,376
 134:	8fbf0014 	lw	ra,20(sp)
 138:	27bd0018 	addiu	sp,sp,24
 13c:	03e00008 	jr	ra
 140:	00000000 	nop

00000144 <BgDdanKd_CheckForExplosions>:
 144:	27bdffd0 	addiu	sp,sp,-48
 148:	afb00020 	sw	s0,32(sp)
 14c:	00808025 	move	s0,a0
 150:	afa50034 	sw	a1,52(sp)
 154:	00a02025 	move	a0,a1
 158:	afbf0024 	sw	ra,36(sp)
 15c:	26050178 	addiu	a1,s0,376
 160:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 164:	afa50028 	sw	a1,40(sp)
 168:	10400009 	beqz	v0,190 <BgDdanKd_CheckForExplosions+0x4c>
 16c:	00401825 	move	v1,v0
 170:	3c040000 	lui	a0,0x0
 174:	920500b0 	lbu	a1,176(s0)
 178:	afa2002c 	sw	v0,44(sp)
 17c:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 180:	24840000 	addiu	a0,a0,0
 184:	8fa3002c 	lw	v1,44(sp)
 188:	240e0002 	li	t6,2
 18c:	a46e001c 	sh	t6,28(v1)
 190:	5060001c 	beqzl	v1,204 <BgDdanKd_CheckForExplosions+0xc0>
 194:	86020168 	lh	v0,360(s0)
 198:	8e020164 	lw	v0,356(s0)
 19c:	50400019 	beqzl	v0,204 <BgDdanKd_CheckForExplosions+0xc0>
 1a0:	86020168 	lh	v0,360(s0)
 1a4:	10620016 	beq	v1,v0,200 <BgDdanKd_CheckForExplosions+0xbc>
 1a8:	2604016c 	addiu	a0,s0,364
 1ac:	24650024 	addiu	a1,v1,36
 1b0:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 1b4:	afa3002c 	sw	v1,44(sp)
 1b8:	3c0142a0 	lui	at,0x42a0
 1bc:	44812000 	mtc1	at,$f4
 1c0:	8fa3002c 	lw	v1,44(sp)
 1c4:	02002025 	move	a0,s0
 1c8:	4600203c 	c.lt.s	$f4,$f0
 1cc:	3c050000 	lui	a1,0x0
 1d0:	4502000c 	bc1fl	204 <BgDdanKd_CheckForExplosions+0xc0>
 1d4:	86020168 	lh	v0,360(s0)
 1d8:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 1dc:	24a50000 	addiu	a1,a1,0
 1e0:	8fa40034 	lw	a0,52(sp)
 1e4:	24050bea 	li	a1,3050
 1e8:	240603e7 	li	a2,999
 1ec:	02003825 	move	a3,s0
 1f0:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 1f4:	afa00010 	sw	zero,16(sp)
 1f8:	1000001a 	b	264 <BgDdanKd_CheckForExplosions+0x120>
 1fc:	8fbf0024 	lw	ra,36(sp)
 200:	86020168 	lh	v0,360(s0)
 204:	02002025 	move	a0,s0
 208:	10400003 	beqz	v0,218 <BgDdanKd_CheckForExplosions+0xd4>
 20c:	244fffff 	addiu	t7,v0,-1
 210:	1000000b 	b	240 <BgDdanKd_CheckForExplosions+0xfc>
 214:	a60f0168 	sh	t7,360(s0)
 218:	10600009 	beqz	v1,240 <BgDdanKd_CheckForExplosions+0xfc>
 21c:	ae030164 	sw	v1,356(s0)
 220:	2418000d 	li	t8,13
 224:	a6180168 	sh	t8,360(s0)
 228:	8c680024 	lw	t0,36(v1)
 22c:	ae08016c 	sw	t0,364(s0)
 230:	8c790028 	lw	t9,40(v1)
 234:	ae190170 	sw	t9,368(s0)
 238:	8c68002c 	lw	t0,44(v1)
 23c:	ae080174 	sw	t0,372(s0)
 240:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 244:	8fa50028 	lw	a1,40(sp)
 248:	8fa40034 	lw	a0,52(sp)
 24c:	3c010001 	lui	at,0x1
 250:	34211e60 	ori	at,at,0x1e60
 254:	8fa60028 	lw	a2,40(sp)
 258:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 25c:	00812821 	addu	a1,a0,at
 260:	8fbf0024 	lw	ra,36(sp)
 264:	8fb00020 	lw	s0,32(sp)
 268:	27bd0030 	addiu	sp,sp,48
 26c:	03e00008 	jr	ra
 270:	00000000 	nop

00000274 <BgDdanKd_LowerStairs>:
 274:	27bdff98 	addiu	sp,sp,-104
 278:	44802000 	mtc1	zero,$f4
 27c:	afb10028 	sw	s1,40(sp)
 280:	afb00024 	sw	s0,36(sp)
 284:	00808025 	move	s0,a0
 288:	00a08825 	move	s1,a1
 28c:	afbf002c 	sw	ra,44(sp)
 290:	3c073ccc 	lui	a3,0x3ccc
 294:	34e7cccd 	ori	a3,a3,0xcccd
 298:	3c054080 	lui	a1,0x4080
 29c:	24840068 	addiu	a0,a0,104
 2a0:	3c063f00 	lui	a2,0x3f00
 2a4:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 2a8:	e7a40010 	swc1	$f4,16(sp)
 2ac:	3c0143fa 	lui	at,0x43fa
 2b0:	44816000 	mtc1	at,$f12
 2b4:	24050078 	li	a1,120
 2b8:	24060014 	li	a2,20
 2bc:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 2c0:	2407000a 	li	a3,10
 2c4:	3c014348 	lui	at,0x4348
 2c8:	44814000 	mtc1	at,$f8
 2cc:	c606000c 	lwc1	$f6,12(s0)
 2d0:	3c0141a0 	lui	at,0x41a0
 2d4:	44818000 	mtc1	at,$f16
 2d8:	46083281 	sub.s	$f10,$f6,$f8
 2dc:	3c010000 	lui	at,0x0
 2e0:	c424000c 	lwc1	$f4,12(at)
 2e4:	3c063d99 	lui	a2,0x3d99
 2e8:	46105481 	sub.s	$f18,$f10,$f16
 2ec:	8e070068 	lw	a3,104(s0)
 2f0:	34c6999a 	ori	a2,a2,0x999a
 2f4:	26040028 	addiu	a0,s0,40
 2f8:	44059000 	mfc1	a1,$f18
 2fc:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 300:	e7a40010 	swc1	$f4,16(sp)
 304:	44803000 	mtc1	zero,$f6
 308:	02202025 	move	a0,s1
 30c:	3c013e80 	lui	at,0x3e80
 310:	46060032 	c.eq.s	$f0,$f6
 314:	00000000 	nop
 318:	4502000a 	bc1fl	344 <BgDdanKd_LowerStairs+0xd0>
 31c:	c6120068 	lwc1	$f18,104(s0)
 320:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 324:	8605001c 	lh	a1,28(s0)
 328:	3c050000 	lui	a1,0x0
 32c:	24a50000 	addiu	a1,a1,0
 330:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 334:	02002025 	move	a0,s0
 338:	100000ff 	b	738 <BgDdanKd_LowerStairs+0x4c4>
 33c:	8fbf002c 	lw	ra,44(sp)
 340:	c6120068 	lwc1	$f18,104(s0)
 344:	44812000 	mtc1	at,$f4
 348:	c6080104 	lwc1	$f8,260(s0)
 34c:	c60a0028 	lwc1	$f10,40(s0)
 350:	46049182 	mul.s	$f6,$f18,$f4
 354:	26180024 	addiu	t8,s0,36
 358:	460a4401 	sub.s	$f16,$f8,$f10
 35c:	46068200 	add.s	$f8,$f16,$f6
 360:	e7a8004c 	swc1	$f8,76(sp)
 364:	8e2e009c 	lw	t6,156(s1)
 368:	31cf0001 	andi	t7,t6,0x1
 36c:	11e000da 	beqz	t7,6d8 <BgDdanKd_LowerStairs+0x464>
 370:	00000000 	nop
 374:	afb80038 	sw	t8,56(sp)
 378:	8f090000 	lw	t1,0(t8)
 37c:	27a20040 	addiu	v0,sp,64
 380:	27aa0050 	addiu	t2,sp,80
 384:	ac490000 	sw	t1,0(v0)
 388:	8f080004 	lw	t0,4(t8)
 38c:	8c4c0000 	lw	t4,0(v0)
 390:	27ad005c 	addiu	t5,sp,92
 394:	ac480004 	sw	t0,4(v0)
 398:	8f090008 	lw	t1,8(t8)
 39c:	ac490008 	sw	t1,8(v0)
 3a0:	ad4c0000 	sw	t4,0(t2)
 3a4:	8c4b0004 	lw	t3,4(v0)
 3a8:	ad4b0004 	sw	t3,4(t2)
 3ac:	8c4c0008 	lw	t4,8(v0)
 3b0:	ad4c0008 	sw	t4,8(t2)
 3b4:	8c4f0000 	lw	t7,0(v0)
 3b8:	adaf0000 	sw	t7,0(t5)
 3bc:	8c4e0004 	lw	t6,4(v0)
 3c0:	adae0004 	sw	t6,4(t5)
 3c4:	8c4f0008 	lw	t7,8(v0)
 3c8:	adaf0008 	sw	t7,8(t5)
 3cc:	8e38009c 	lw	t8,156(s1)
 3d0:	33190002 	andi	t9,t8,0x2
 3d4:	13200017 	beqz	t9,434 <BgDdanKd_LowerStairs+0x1c0>
 3d8:	00000000 	nop
 3dc:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 3e0:	00000000 	nop
 3e4:	3c014352 	lui	at,0x4352
 3e8:	44815000 	mtc1	at,$f10
 3ec:	3c014366 	lui	at,0x4366
 3f0:	44819000 	mtc1	at,$f18
 3f4:	c7a60064 	lwc1	$f6,100(sp)
 3f8:	46120102 	mul.s	$f4,$f0,$f18
 3fc:	46045400 	add.s	$f16,$f10,$f4
 400:	46103200 	add.s	$f8,$f6,$f16
 404:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 408:	e7a80064 	swc1	$f8,100(sp)
 40c:	3c014352 	lui	at,0x4352
 410:	44819000 	mtc1	at,$f18
 414:	3c014366 	lui	at,0x4366
 418:	44815000 	mtc1	at,$f10
 41c:	c7b00058 	lwc1	$f16,88(sp)
 420:	460a0102 	mul.s	$f4,$f0,$f10
 424:	46049180 	add.s	$f6,$f18,$f4
 428:	46068200 	add.s	$f8,$f16,$f6
 42c:	10000016 	b	488 <BgDdanKd_LowerStairs+0x214>
 430:	e7a80058 	swc1	$f8,88(sp)
 434:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 438:	00000000 	nop
 43c:	3c0143a5 	lui	at,0x43a5
 440:	44815000 	mtc1	at,$f10
 444:	3c014370 	lui	at,0x4370
 448:	44819000 	mtc1	at,$f18
 44c:	c7a60064 	lwc1	$f6,100(sp)
 450:	46120102 	mul.s	$f4,$f0,$f18
 454:	46045400 	add.s	$f16,$f10,$f4
 458:	46103200 	add.s	$f8,$f6,$f16
 45c:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 460:	e7a80064 	swc1	$f8,100(sp)
 464:	3c0143a5 	lui	at,0x43a5
 468:	44819000 	mtc1	at,$f18
 46c:	3c014370 	lui	at,0x4370
 470:	44815000 	mtc1	at,$f10
 474:	c7b00058 	lwc1	$f16,88(sp)
 478:	460a0102 	mul.s	$f4,$f0,$f10
 47c:	46049180 	add.s	$f6,$f18,$f4
 480:	46068200 	add.s	$f8,$f16,$f6
 484:	e7a80058 	swc1	$f8,88(sp)
 488:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 48c:	00000000 	nop
 490:	3c0142a0 	lui	at,0x42a0
 494:	44815000 	mtc1	at,$f10
 498:	3c014120 	lui	at,0x4120
 49c:	44819000 	mtc1	at,$f18
 4a0:	c7a6005c 	lwc1	$f6,92(sp)
 4a4:	46120102 	mul.s	$f4,$f0,$f18
 4a8:	46045400 	add.s	$f16,$f10,$f4
 4ac:	46103200 	add.s	$f8,$f6,$f16
 4b0:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 4b4:	e7a8005c 	swc1	$f8,92(sp)
 4b8:	3c0142a0 	lui	at,0x42a0
 4bc:	44819000 	mtc1	at,$f18
 4c0:	3c014120 	lui	at,0x4120
 4c4:	44815000 	mtc1	at,$f10
 4c8:	c7b00050 	lwc1	$f16,80(sp)
 4cc:	460a0102 	mul.s	$f4,$f0,$f10
 4d0:	46049180 	add.s	$f6,$f18,$f4
 4d4:	46068201 	sub.s	$f8,$f16,$f6
 4d8:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 4dc:	e7a80050 	swc1	$f8,80(sp)
 4e0:	3c0141a0 	lui	at,0x41a0
 4e4:	44819000 	mtc1	at,$f18
 4e8:	c60a0080 	lwc1	$f10,128(s0)
 4ec:	46125100 	add.s	$f4,$f10,$f18
 4f0:	46040400 	add.s	$f16,$f0,$f4
 4f4:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 4f8:	e7b00060 	swc1	$f16,96(sp)
 4fc:	3c0141a0 	lui	at,0x41a0
 500:	44811000 	mtc1	at,$f2
 504:	3c014307 	lui	at,0x4307
 508:	44812000 	mtc1	at,$f4
 50c:	c7b2004c 	lwc1	$f18,76(sp)
 510:	c6060080 	lwc1	$f6,128(s0)
 514:	2409003c 	li	t1,60
 518:	46049402 	mul.s	$f16,$f18,$f4
 51c:	46023200 	add.s	$f8,$f6,$f2
 520:	240a0001 	li	t2,1
 524:	44061000 	mfc1	a2,$f2
 528:	afaa0018 	sw	t2,24(sp)
 52c:	46080280 	add.s	$f10,$f0,$f8
 530:	afa90014 	sw	t1,20(sp)
 534:	02202025 	move	a0,s1
 538:	4600818d 	trunc.w.s	$f6,$f16
 53c:	e7aa0054 	swc1	$f10,84(sp)
 540:	27a5005c 	addiu	a1,sp,92
 544:	24070001 	li	a3,1
 548:	44023000 	mfc1	v0,$f6
 54c:	00000000 	nop
 550:	00021400 	sll	v0,v0,0x10
 554:	00021403 	sra	v0,v0,0x10
 558:	afa20010 	sw	v0,16(sp)
 55c:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 560:	afa20034 	sw	v0,52(sp)
 564:	8fab0034 	lw	t3,52(sp)
 568:	240c003c 	li	t4,60
 56c:	240d0001 	li	t5,1
 570:	afad0018 	sw	t5,24(sp)
 574:	afac0014 	sw	t4,20(sp)
 578:	02202025 	move	a0,s1
 57c:	27a50050 	addiu	a1,sp,80
 580:	3c0641a0 	lui	a2,0x41a0
 584:	24070001 	li	a3,1
 588:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 58c:	afab0010 	sw	t3,16(sp)
 590:	3c014040 	lui	at,0x4040
 594:	44816000 	mtc1	at,$f12
 598:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 59c:	00000000 	nop
 5a0:	3c010000 	lui	at,0x0
 5a4:	e420005c 	swc1	$f0,92(at)
 5a8:	3c014040 	lui	at,0x4040
 5ac:	44816000 	mtc1	at,$f12
 5b0:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 5b4:	00000000 	nop
 5b8:	3c010000 	lui	at,0x0
 5bc:	3c060000 	lui	a2,0x0
 5c0:	3c070000 	lui	a3,0x0
 5c4:	e4200064 	swc1	$f0,100(at)
 5c8:	24e70068 	addiu	a3,a3,104
 5cc:	24c6005c 	addiu	a2,a2,92
 5d0:	02202025 	move	a0,s1
 5d4:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 5d8:	27a5005c 	addiu	a1,sp,92
 5dc:	3c060000 	lui	a2,0x0
 5e0:	3c070000 	lui	a3,0x0
 5e4:	24e70068 	addiu	a3,a3,104
 5e8:	24c6005c 	addiu	a2,a2,92
 5ec:	02202025 	move	a0,s1
 5f0:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 5f4:	27a50050 	addiu	a1,sp,80
 5f8:	8faf0038 	lw	t7,56(sp)
 5fc:	27ae005c 	addiu	t6,sp,92
 600:	8df90000 	lw	t9,0(t7)
 604:	add90000 	sw	t9,0(t6)
 608:	8df80004 	lw	t8,4(t7)
 60c:	add80004 	sw	t8,4(t6)
 610:	8df90008 	lw	t9,8(t7)
 614:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 618:	add90008 	sw	t9,8(t6)
 61c:	3c01440c 	lui	at,0x440c
 620:	44814000 	mtc1	at,$f8
 624:	3c0140a0 	lui	at,0x40a0
 628:	44815000 	mtc1	at,$f10
 62c:	c7b00064 	lwc1	$f16,100(sp)
 630:	460a0482 	mul.s	$f18,$f0,$f10
 634:	46124100 	add.s	$f4,$f8,$f18
 638:	46048180 	add.s	$f6,$f16,$f4
 63c:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 640:	e7a60064 	swc1	$f6,100(sp)
 644:	3c013f00 	lui	at,0x3f00
 648:	44815000 	mtc1	at,$f10
 64c:	3c014320 	lui	at,0x4320
 650:	44819000 	mtc1	at,$f18
 654:	460a0201 	sub.s	$f8,$f0,$f10
 658:	c7a4005c 	lwc1	$f4,92(sp)
 65c:	46124402 	mul.s	$f16,$f8,$f18
 660:	46102180 	add.s	$f6,$f4,$f16
 664:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 668:	e7a6005c 	swc1	$f6,92(sp)
 66c:	3c0141a0 	lui	at,0x41a0
 670:	44814000 	mtc1	at,$f8
 674:	3c014040 	lui	at,0x4040
 678:	44812000 	mtc1	at,$f4
 67c:	c60a0080 	lwc1	$f10,128(s0)
 680:	8fa80034 	lw	t0,52(sp)
 684:	46040402 	mul.s	$f16,$f0,$f4
 688:	46085480 	add.s	$f18,$f10,$f8
 68c:	2409003c 	li	t1,60
 690:	240a0001 	li	t2,1
 694:	afaa0018 	sw	t2,24(sp)
 698:	afa90014 	sw	t1,20(sp)
 69c:	02202025 	move	a0,s1
 6a0:	46128180 	add.s	$f6,$f16,$f18
 6a4:	27a5005c 	addiu	a1,sp,92
 6a8:	3c0641a0 	lui	a2,0x41a0
 6ac:	24070001 	li	a3,1
 6b0:	e7a60060 	swc1	$f6,96(sp)
 6b4:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 6b8:	afa80010 	sw	t0,16(sp)
 6bc:	3c060000 	lui	a2,0x0
 6c0:	3c070000 	lui	a3,0x0
 6c4:	24e70068 	addiu	a3,a3,104
 6c8:	24c6005c 	addiu	a2,a2,92
 6cc:	02202025 	move	a0,s1
 6d0:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 6d4:	27a5005c 	addiu	a1,sp,92
 6d8:	3c010000 	lui	at,0x0
 6dc:	c4280010 	lwc1	$f8,16(at)
 6e0:	c7aa004c 	lwc1	$f10,76(sp)
 6e4:	262401e0 	addiu	a0,s1,480
 6e8:	00002825 	move	a1,zero
 6ec:	46085102 	mul.s	$f4,$f10,$f8
 6f0:	24070003 	li	a3,3
 6f4:	4600240d 	trunc.w.s	$f16,$f4
 6f8:	44068000 	mfc1	a2,$f16
 6fc:	00000000 	nop
 700:	00063400 	sll	a2,a2,0x10
 704:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 708:	00063403 	sra	a2,a2,0x10
 70c:	3c070000 	lui	a3,0x0
 710:	3c0c0000 	lui	t4,0x0
 714:	24e70000 	addiu	a3,a3,0
 718:	258c0000 	addiu	t4,t4,0
 71c:	afac0014 	sw	t4,20(sp)
 720:	afa70010 	sw	a3,16(sp)
 724:	24042027 	li	a0,8231
 728:	260500e4 	addiu	a1,s0,228
 72c:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 730:	24060004 	li	a2,4
 734:	8fbf002c 	lw	ra,44(sp)
 738:	8fb00024 	lw	s0,36(sp)
 73c:	8fb10028 	lw	s1,40(sp)
 740:	03e00008 	jr	ra
 744:	27bd0068 	addiu	sp,sp,104

00000748 <func_80871838>:
 748:	afa40000 	sw	a0,0(sp)
 74c:	03e00008 	jr	ra
 750:	afa50004 	sw	a1,4(sp)

00000754 <BgDdanKd_Update>:
 754:	27bdffe8 	addiu	sp,sp,-24
 758:	afbf0014 	sw	ra,20(sp)
 75c:	8c9901c4 	lw	t9,452(a0)
 760:	0320f809 	jalr	t9
 764:	00000000 	nop
 768:	8fbf0014 	lw	ra,20(sp)
 76c:	27bd0018 	addiu	sp,sp,24
 770:	03e00008 	jr	ra
 774:	00000000 	nop

00000778 <BgDdanKd_Draw>:
 778:	27bdffe8 	addiu	sp,sp,-24
 77c:	afa40018 	sw	a0,24(sp)
 780:	00a02025 	move	a0,a1
 784:	afbf0014 	sw	ra,20(sp)
 788:	3c050000 	lui	a1,0x0
 78c:	0c000000 	jal	0 <BgDdanKd_SetupAction>
 790:	24a50000 	addiu	a1,a1,0
 794:	8fbf0014 	lw	ra,20(sp)
 798:	27bd0018 	addiu	sp,sp,24
 79c:	03e00008 	jr	ra
 7a0:	00000000 	nop
	...
