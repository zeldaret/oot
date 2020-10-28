
build/src/overlays/actors/ovl_Bg_Ddan_Jd/z_bg_ddan_jd.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgDdanJd_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa50034 	sw	a1,52(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00024 	sw	zero,36(sp)
  1c:	0c000000 	jal	0 <BgDdanJd_Init>
  20:	24a50020 	addiu	a1,a1,32
  24:	02002025 	move	a0,s0
  28:	0c000000 	jal	0 <BgDdanJd_Init>
  2c:	24050001 	li	a1,1
  30:	3c040000 	lui	a0,0x0
  34:	24840000 	addiu	a0,a0,0
  38:	0c000000 	jal	0 <BgDdanJd_Init>
  3c:	27a50024 	addiu	a1,sp,36
  40:	8fa40034 	lw	a0,52(sp)
  44:	02003025 	move	a2,s0
  48:	8fa70024 	lw	a3,36(sp)
  4c:	0c000000 	jal	0 <BgDdanJd_Init>
  50:	24850810 	addiu	a1,a0,2064
  54:	240e0064 	li	t6,100
  58:	ae02014c 	sw	v0,332(s0)
  5c:	a60e016a 	sh	t6,362(s0)
  60:	a2000168 	sb	zero,360(s0)
  64:	8fa40034 	lw	a0,52(sp)
  68:	0c000000 	jal	0 <BgDdanJd_Init>
  6c:	8605001c 	lh	a1,28(s0)
  70:	10400004 	beqz	v0,84 <BgDdanJd_Init+0x84>
  74:	3c190000 	lui	t9,0x0
  78:	240f0005 	li	t7,5
  7c:	10000003 	b	8c <BgDdanJd_Init+0x8c>
  80:	a20f0169 	sb	t7,361(s0)
  84:	24180001 	li	t8,1
  88:	a2180169 	sb	t8,361(s0)
  8c:	27390000 	addiu	t9,t9,0
  90:	ae190164 	sw	t9,356(s0)
  94:	8fbf001c 	lw	ra,28(sp)
  98:	8fb00018 	lw	s0,24(sp)
  9c:	27bd0030 	addiu	sp,sp,48
  a0:	03e00008 	jr	ra
  a4:	00000000 	nop

000000a8 <BgDdanJd_Destroy>:
  a8:	27bdffe8 	addiu	sp,sp,-24
  ac:	afa40018 	sw	a0,24(sp)
  b0:	8fae0018 	lw	t6,24(sp)
  b4:	afbf0014 	sw	ra,20(sp)
  b8:	00a02025 	move	a0,a1
  bc:	24a50810 	addiu	a1,a1,2064
  c0:	0c000000 	jal	0 <BgDdanJd_Init>
  c4:	8dc6014c 	lw	a2,332(t6)
  c8:	8fbf0014 	lw	ra,20(sp)
  cc:	27bd0018 	addiu	sp,sp,24
  d0:	03e00008 	jr	ra
  d4:	00000000 	nop

000000d8 <BgDdanJd_Idle>:
  d8:	27bdffe0 	addiu	sp,sp,-32
  dc:	afbf001c 	sw	ra,28(sp)
  e0:	afa50024 	sw	a1,36(sp)
  e4:	8482016a 	lh	v0,362(a0)
  e8:	00803825 	move	a3,a0
  ec:	10400002 	beqz	v0,f8 <BgDdanJd_Idle+0x20>
  f0:	244effff 	addiu	t6,v0,-1
  f4:	a48e016a 	sh	t6,362(a0)
  f8:	90ef0169 	lbu	t7,361(a3)
  fc:	24030001 	li	v1,1
 100:	546f001e 	bnel	v1,t7,17c <BgDdanJd_Idle+0xa4>
 104:	84e8016a 	lh	t0,362(a3)
 108:	84e5001c 	lh	a1,28(a3)
 10c:	8fa40024 	lw	a0,36(sp)
 110:	28a10040 	slti	at,a1,64
 114:	50200019 	beqzl	at,17c <BgDdanJd_Idle+0xa4>
 118:	84e8016a 	lh	t0,362(a3)
 11c:	0c000000 	jal	0 <BgDdanJd_Init>
 120:	afa70020 	sw	a3,32(sp)
 124:	24030001 	li	v1,1
 128:	10400013 	beqz	v0,178 <BgDdanJd_Idle+0xa0>
 12c:	8fa70020 	lw	a3,32(sp)
 130:	3c01430c 	lui	at,0x430c
 134:	44813000 	mtc1	at,$f6
 138:	c4e4000c 	lwc1	$f4,12(a3)
 13c:	24180005 	li	t8,5
 140:	24190001 	li	t9,1
 144:	46062200 	add.s	$f8,$f4,$f6
 148:	a0f80169 	sb	t8,361(a3)
 14c:	a0f90168 	sb	t9,360(a3)
 150:	a4e0016a 	sh	zero,362(a3)
 154:	e4e80028 	swc1	$f8,40(a3)
 158:	afa70020 	sw	a3,32(sp)
 15c:	afa00010 	sw	zero,16(sp)
 160:	8fa40024 	lw	a0,36(sp)
 164:	24050bf4 	li	a1,3060
 168:	0c000000 	jal	0 <BgDdanJd_Init>
 16c:	2406ff9d 	li	a2,-99
 170:	24030001 	li	v1,1
 174:	8fa70020 	lw	a3,32(sp)
 178:	84e8016a 	lh	t0,362(a3)
 17c:	3c180000 	lui	t8,0x0
 180:	27180000 	addiu	t8,t8,0
 184:	5500003a 	bnezl	t0,270 <BgDdanJd_Idle+0x198>
 188:	8fbf001c 	lw	ra,28(sp)
 18c:	90e20168 	lbu	v0,360(a3)
 190:	24090064 	li	t1,100
 194:	a4e9016a 	sh	t1,362(a3)
 198:	14400008 	bnez	v0,1bc <BgDdanJd_Idle+0xe4>
 19c:	3c01430c 	lui	at,0x430c
 1a0:	c4ea000c 	lwc1	$f10,12(a3)
 1a4:	44818000 	mtc1	at,$f16
 1a8:	240a0001 	li	t2,1
 1ac:	a0ea0168 	sb	t2,360(a3)
 1b0:	46105480 	add.s	$f18,$f10,$f16
 1b4:	1000002c 	b	268 <BgDdanJd_Idle+0x190>
 1b8:	e4f2016c 	swc1	$f18,364(a3)
 1bc:	14620010 	bne	v1,v0,200 <BgDdanJd_Idle+0x128>
 1c0:	24010002 	li	at,2
 1c4:	90eb0169 	lbu	t3,361(a3)
 1c8:	3c01442f 	lui	at,0x442f
 1cc:	506b0009 	beql	v1,t3,1f4 <BgDdanJd_Idle+0x11c>
 1d0:	c4ea000c 	lwc1	$f10,12(a3)
 1d4:	c4e4000c 	lwc1	$f4,12(a3)
 1d8:	44813000 	mtc1	at,$f6
 1dc:	240c0003 	li	t4,3
 1e0:	a0ec0168 	sb	t4,360(a3)
 1e4:	46062200 	add.s	$f8,$f4,$f6
 1e8:	1000001f 	b	268 <BgDdanJd_Idle+0x190>
 1ec:	e4e8016c 	swc1	$f8,364(a3)
 1f0:	c4ea000c 	lwc1	$f10,12(a3)
 1f4:	a0e00168 	sb	zero,360(a3)
 1f8:	1000001b 	b	268 <BgDdanJd_Idle+0x190>
 1fc:	e4ea016c 	swc1	$f10,364(a3)
 200:	54410011 	bnel	v0,at,248 <BgDdanJd_Idle+0x170>
 204:	24010003 	li	at,3
 208:	90ed0169 	lbu	t5,361(a3)
 20c:	3c01442f 	lui	at,0x442f
 210:	506d0009 	beql	v1,t5,238 <BgDdanJd_Idle+0x160>
 214:	c4e6000c 	lwc1	$f6,12(a3)
 218:	c4f0000c 	lwc1	$f16,12(a3)
 21c:	44819000 	mtc1	at,$f18
 220:	240e0003 	li	t6,3
 224:	a0ee0168 	sb	t6,360(a3)
 228:	46128100 	add.s	$f4,$f16,$f18
 22c:	1000000e 	b	268 <BgDdanJd_Idle+0x190>
 230:	e4e4016c 	swc1	$f4,364(a3)
 234:	c4e6000c 	lwc1	$f6,12(a3)
 238:	a0e00168 	sb	zero,360(a3)
 23c:	1000000a 	b	268 <BgDdanJd_Idle+0x190>
 240:	e4e6016c 	swc1	$f6,364(a3)
 244:	24010003 	li	at,3
 248:	14410007 	bne	v0,at,268 <BgDdanJd_Idle+0x190>
 24c:	3c01430c 	lui	at,0x430c
 250:	44815000 	mtc1	at,$f10
 254:	c4e8000c 	lwc1	$f8,12(a3)
 258:	240f0002 	li	t7,2
 25c:	a0ef0168 	sb	t7,360(a3)
 260:	460a4400 	add.s	$f16,$f8,$f10
 264:	e4f0016c 	swc1	$f16,364(a3)
 268:	acf80164 	sw	t8,356(a3)
 26c:	8fbf001c 	lw	ra,28(sp)
 270:	27bd0020 	addiu	sp,sp,32
 274:	03e00008 	jr	ra
 278:	00000000 	nop

0000027c <BgDdanJd_MoveEffects>:
 27c:	27bdffc0 	addiu	sp,sp,-64
 280:	afbf002c 	sw	ra,44(sp)
 284:	afb10028 	sw	s1,40(sp)
 288:	afb00024 	sw	s0,36(sp)
 28c:	c484000c 	lwc1	$f4,12(a0)
 290:	3c0e0001 	lui	t6,0x1
 294:	01c57021 	addu	t6,t6,a1
 298:	e7a40038 	swc1	$f4,56(sp)
 29c:	8dce1de4 	lw	t6,7652(t6)
 2a0:	00808025 	move	s0,a0
 2a4:	00a08825 	move	s1,a1
 2a8:	31cf0001 	andi	t7,t6,0x1
 2ac:	11e0002f 	beqz	t7,36c <BgDdanJd_MoveEffects+0xf0>
 2b0:	3c0142dc 	lui	at,0x42dc
 2b4:	3c014282 	lui	at,0x4282
 2b8:	44814000 	mtc1	at,$f8
 2bc:	c4860024 	lwc1	$f6,36(a0)
 2c0:	3c0142dc 	lui	at,0x42dc
 2c4:	44816000 	mtc1	at,$f12
 2c8:	46083280 	add.s	$f10,$f6,$f8
 2cc:	0c000000 	jal	0 <BgDdanJd_Init>
 2d0:	e7aa0034 	swc1	$f10,52(sp)
 2d4:	c610002c 	lwc1	$f16,44(s0)
 2d8:	24180014 	li	t8,20
 2dc:	2419003c 	li	t9,60
 2e0:	46100480 	add.s	$f18,$f0,$f16
 2e4:	24080001 	li	t0,1
 2e8:	afa80018 	sw	t0,24(sp)
 2ec:	afb90014 	sw	t9,20(sp)
 2f0:	e7b2003c 	swc1	$f18,60(sp)
 2f4:	afb80010 	sw	t8,16(sp)
 2f8:	02202025 	move	a0,s1
 2fc:	27a50034 	addiu	a1,sp,52
 300:	3c0640a0 	lui	a2,0x40a0
 304:	0c000000 	jal	0 <BgDdanJd_Init>
 308:	24070001 	li	a3,1
 30c:	3c014282 	lui	at,0x4282
 310:	44813000 	mtc1	at,$f6
 314:	c6040024 	lwc1	$f4,36(s0)
 318:	3c0142dc 	lui	at,0x42dc
 31c:	44816000 	mtc1	at,$f12
 320:	46062201 	sub.s	$f8,$f4,$f6
 324:	0c000000 	jal	0 <BgDdanJd_Init>
 328:	e7a80034 	swc1	$f8,52(sp)
 32c:	c60a002c 	lwc1	$f10,44(s0)
 330:	24090014 	li	t1,20
 334:	240a003c 	li	t2,60
 338:	460a0400 	add.s	$f16,$f0,$f10
 33c:	240b0001 	li	t3,1
 340:	afab0018 	sw	t3,24(sp)
 344:	afaa0014 	sw	t2,20(sp)
 348:	e7b0003c 	swc1	$f16,60(sp)
 34c:	afa90010 	sw	t1,16(sp)
 350:	02202025 	move	a0,s1
 354:	27a50034 	addiu	a1,sp,52
 358:	3c0640a0 	lui	a2,0x40a0
 35c:	0c000000 	jal	0 <BgDdanJd_Init>
 360:	24070001 	li	a3,1
 364:	1000002f 	b	424 <BgDdanJd_MoveEffects+0x1a8>
 368:	92080169 	lbu	t0,361(s0)
 36c:	44816000 	mtc1	at,$f12
 370:	0c000000 	jal	0 <BgDdanJd_Init>
 374:	00000000 	nop
 378:	c6120024 	lwc1	$f18,36(s0)
 37c:	3c014282 	lui	at,0x4282
 380:	44814000 	mtc1	at,$f8
 384:	46120100 	add.s	$f4,$f0,$f18
 388:	240c0014 	li	t4,20
 38c:	240d003c 	li	t5,60
 390:	240e0001 	li	t6,1
 394:	e7a40034 	swc1	$f4,52(sp)
 398:	c606002c 	lwc1	$f6,44(s0)
 39c:	afae0018 	sw	t6,24(sp)
 3a0:	afad0014 	sw	t5,20(sp)
 3a4:	46083280 	add.s	$f10,$f6,$f8
 3a8:	afac0010 	sw	t4,16(sp)
 3ac:	02202025 	move	a0,s1
 3b0:	27a50034 	addiu	a1,sp,52
 3b4:	e7aa003c 	swc1	$f10,60(sp)
 3b8:	3c0640a0 	lui	a2,0x40a0
 3bc:	0c000000 	jal	0 <BgDdanJd_Init>
 3c0:	24070001 	li	a3,1
 3c4:	3c0142dc 	lui	at,0x42dc
 3c8:	44816000 	mtc1	at,$f12
 3cc:	0c000000 	jal	0 <BgDdanJd_Init>
 3d0:	00000000 	nop
 3d4:	c6100024 	lwc1	$f16,36(s0)
 3d8:	3c014282 	lui	at,0x4282
 3dc:	44813000 	mtc1	at,$f6
 3e0:	46100480 	add.s	$f18,$f0,$f16
 3e4:	240f0014 	li	t7,20
 3e8:	2418003c 	li	t8,60
 3ec:	24190001 	li	t9,1
 3f0:	e7b20034 	swc1	$f18,52(sp)
 3f4:	c604002c 	lwc1	$f4,44(s0)
 3f8:	afb90018 	sw	t9,24(sp)
 3fc:	afb80014 	sw	t8,20(sp)
 400:	46062201 	sub.s	$f8,$f4,$f6
 404:	afaf0010 	sw	t7,16(sp)
 408:	02202025 	move	a0,s1
 40c:	27a50034 	addiu	a1,sp,52
 410:	e7a8003c 	swc1	$f8,60(sp)
 414:	3c0640a0 	lui	a2,0x40a0
 418:	0c000000 	jal	0 <BgDdanJd_Init>
 41c:	24070001 	li	a3,1
 420:	92080169 	lbu	t0,361(s0)
 424:	24010005 	li	at,5
 428:	02002025 	move	a0,s0
 42c:	55010004 	bnel	t0,at,440 <BgDdanJd_MoveEffects+0x1c4>
 430:	8fbf002c 	lw	ra,44(sp)
 434:	0c000000 	jal	0 <BgDdanJd_Init>
 438:	24052024 	li	a1,8228
 43c:	8fbf002c 	lw	ra,44(sp)
 440:	8fb00024 	lw	s0,36(sp)
 444:	8fb10028 	lw	s1,40(sp)
 448:	03e00008 	jr	ra
 44c:	27bd0040 	addiu	sp,sp,64

00000450 <BgDdanJd_Move>:
 450:	27bdffd8 	addiu	sp,sp,-40
 454:	afbf0024 	sw	ra,36(sp)
 458:	afb00020 	sw	s0,32(sp)
 45c:	afa5002c 	sw	a1,44(sp)
 460:	908e0169 	lbu	t6,361(a0)
 464:	24010001 	li	at,1
 468:	00808025 	move	s0,a0
 46c:	55c1001e 	bnel	t6,at,4e8 <BgDdanJd_Move+0x98>
 470:	92080169 	lbu	t0,361(s0)
 474:	8485001c 	lh	a1,28(a0)
 478:	28a10040 	slti	at,a1,64
 47c:	5020001a 	beqzl	at,4e8 <BgDdanJd_Move+0x98>
 480:	92080169 	lbu	t0,361(s0)
 484:	0c000000 	jal	0 <BgDdanJd_Init>
 488:	8fa4002c 	lw	a0,44(sp)
 48c:	10400015 	beqz	v0,4e4 <BgDdanJd_Move+0x94>
 490:	240f0005 	li	t7,5
 494:	3c01430c 	lui	at,0x430c
 498:	44813000 	mtc1	at,$f6
 49c:	c604000c 	lwc1	$f4,12(s0)
 4a0:	3c190000 	lui	t9,0x0
 4a4:	24180001 	li	t8,1
 4a8:	46062200 	add.s	$f8,$f4,$f6
 4ac:	27390000 	addiu	t9,t9,0
 4b0:	a20f0169 	sb	t7,361(s0)
 4b4:	a2180168 	sb	t8,360(s0)
 4b8:	e6080028 	swc1	$f8,40(s0)
 4bc:	a600016a 	sh	zero,362(s0)
 4c0:	ae190164 	sw	t9,356(s0)
 4c4:	afa00010 	sw	zero,16(sp)
 4c8:	8fa4002c 	lw	a0,44(sp)
 4cc:	24050bf4 	li	a1,3060
 4d0:	2406ff9d 	li	a2,-99
 4d4:	0c000000 	jal	0 <BgDdanJd_Init>
 4d8:	02003825 	move	a3,s0
 4dc:	10000016 	b	538 <BgDdanJd_Move+0xe8>
 4e0:	02002025 	move	a0,s0
 4e4:	92080169 	lbu	t0,361(s0)
 4e8:	26040028 	addiu	a0,s0,40
 4ec:	8e05016c 	lw	a1,364(s0)
 4f0:	44885000 	mtc1	t0,$f10
 4f4:	3c014f80 	lui	at,0x4f80
 4f8:	05010004 	bgez	t0,50c <BgDdanJd_Move+0xbc>
 4fc:	468052a0 	cvt.s.w	$f10,$f10
 500:	44818000 	mtc1	at,$f16
 504:	00000000 	nop
 508:	46105280 	add.s	$f10,$f10,$f16
 50c:	44065000 	mfc1	a2,$f10
 510:	0c000000 	jal	0 <BgDdanJd_Init>
 514:	00000000 	nop
 518:	10400006 	beqz	v0,534 <BgDdanJd_Move+0xe4>
 51c:	02002025 	move	a0,s0
 520:	0c000000 	jal	0 <BgDdanJd_Init>
 524:	240528f1 	li	a1,10481
 528:	3c090000 	lui	t1,0x0
 52c:	25290000 	addiu	t1,t1,0
 530:	ae090164 	sw	t1,356(s0)
 534:	02002025 	move	a0,s0
 538:	0c000000 	jal	0 <BgDdanJd_Init>
 53c:	8fa5002c 	lw	a1,44(sp)
 540:	8fbf0024 	lw	ra,36(sp)
 544:	8fb00020 	lw	s0,32(sp)
 548:	27bd0028 	addiu	sp,sp,40
 54c:	03e00008 	jr	ra
 550:	00000000 	nop

00000554 <BgDdanJd_Update>:
 554:	27bdffe8 	addiu	sp,sp,-24
 558:	afbf0014 	sw	ra,20(sp)
 55c:	8c990164 	lw	t9,356(a0)
 560:	0320f809 	jalr	t9
 564:	00000000 	nop
 568:	8fbf0014 	lw	ra,20(sp)
 56c:	27bd0018 	addiu	sp,sp,24
 570:	03e00008 	jr	ra
 574:	00000000 	nop

00000578 <BgDdanJd_Draw>:
 578:	27bdffe8 	addiu	sp,sp,-24
 57c:	afa40018 	sw	a0,24(sp)
 580:	00a02025 	move	a0,a1
 584:	afbf0014 	sw	ra,20(sp)
 588:	3c050000 	lui	a1,0x0
 58c:	0c000000 	jal	0 <BgDdanJd_Init>
 590:	24a50000 	addiu	a1,a1,0
 594:	8fbf0014 	lw	ra,20(sp)
 598:	27bd0018 	addiu	sp,sp,24
 59c:	03e00008 	jr	ra
 5a0:	00000000 	nop
	...
