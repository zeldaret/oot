
build/src/overlays/actors/ovl_Bg_Hidan_Fwbig/z_bg_hidan_fwbig.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHidanFwbig_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa50034 	sw	a1,52(sp)
  10:	8caf1c44 	lw	t7,7236(a1)
  14:	3c050000 	lui	a1,0x0
  18:	00808025 	move	s0,a0
  1c:	24a50000 	addiu	a1,a1,0
  20:	0c000000 	jal	0 <BgHidanFwbig_Init>
  24:	afaf0024 	sw	t7,36(sp)
  28:	26050154 	addiu	a1,s0,340
  2c:	afa50020 	sw	a1,32(sp)
  30:	0c000000 	jal	0 <BgHidanFwbig_Init>
  34:	8fa40034 	lw	a0,52(sp)
  38:	3c070000 	lui	a3,0x0
  3c:	8fa50020 	lw	a1,32(sp)
  40:	24e70000 	addiu	a3,a3,0
  44:	8fa40034 	lw	a0,52(sp)
  48:	0c000000 	jal	0 <BgHidanFwbig_Init>
  4c:	02003025 	move	a2,s0
  50:	8619001c 	lh	t9,28(s0)
  54:	860a001c 	lh	t2,28(s0)
  58:	241800ff 	li	t8,255
  5c:	00194a03 	sra	t1,t9,0x8
  60:	a2090150 	sb	t1,336(s0)
  64:	820c0150 	lb	t4,336(s0)
  68:	314b00ff 	andi	t3,t2,0xff
  6c:	a21800ae 	sb	t8,174(s0)
  70:	1180003d 	beqz	t4,168 <BgHidanFwbig_Init+0x168>
  74:	a60b001c 	sh	t3,28(s0)
  78:	3c0144c3 	lui	at,0x44c3
  7c:	44812000 	mtc1	at,$f4
  80:	44803000 	mtc1	zero,$f6
  84:	3c014396 	lui	at,0x4396
  88:	e6040008 	swc1	$f4,8(s0)
  8c:	e6060010 	swc1	$f6,16(s0)
  90:	8fad0024 	lw	t5,36(sp)
  94:	44814000 	mtc1	at,$f8
  98:	240effff 	li	t6,-1
  9c:	c5a0002c 	lwc1	$f0,44(t5)
  a0:	240fb1c8 	li	t7,-20024
  a4:	3c01c396 	lui	at,0xc396
  a8:	4600403c 	c.lt.s	$f8,$f0
  ac:	00000000 	nop
  b0:	45020007 	bc1fl	d0 <BgHidanFwbig_Init+0xd0>
  b4:	44815000 	mtc1	at,$f10
  b8:	a60f00b6 	sh	t7,182(s0)
  bc:	861800b6 	lh	t8,182(s0)
  c0:	a20e0150 	sb	t6,336(s0)
  c4:	10000011 	b	10c <BgHidanFwbig_Init+0x10c>
  c8:	a6180016 	sh	t8,22(s0)
  cc:	44815000 	mtc1	at,$f10
  d0:	24190001 	li	t9,1
  d4:	2408ce38 	li	t0,-12744
  d8:	460a003c 	c.lt.s	$f0,$f10
  dc:	00000000 	nop
  e0:	45000006 	bc1f	fc <BgHidanFwbig_Init+0xfc>
  e4:	00000000 	nop
  e8:	a60800b6 	sh	t0,182(s0)
  ec:	860900b6 	lh	t1,182(s0)
  f0:	a2190150 	sb	t9,336(s0)
  f4:	10000005 	b	10c <BgHidanFwbig_Init+0x10c>
  f8:	a6090016 	sh	t1,22(s0)
  fc:	0c000000 	jal	0 <BgHidanFwbig_Init>
 100:	02002025 	move	a0,s0
 104:	10000020 	b	188 <BgHidanFwbig_Init+0x188>
 108:	8fbf001c 	lw	ra,28(sp)
 10c:	0c000000 	jal	0 <BgHidanFwbig_Init>
 110:	02002025 	move	a0,s0
 114:	3c053e19 	lui	a1,0x3e19
 118:	34a5999a 	ori	a1,a1,0x999a
 11c:	0c000000 	jal	0 <BgHidanFwbig_Init>
 120:	02002025 	move	a0,s0
 124:	3c014516 	lui	at,0x4516
 128:	44818000 	mtc1	at,$f16
 12c:	c6120054 	lwc1	$f18,84(s0)
 130:	c606000c 	lwc1	$f6,12(s0)
 134:	8e0b0004 	lw	t3,4(s0)
 138:	46128102 	mul.s	$f4,$f16,$f18
 13c:	3c0d0000 	lui	t5,0x0
 140:	240a00e6 	li	t2,230
 144:	25ad0000 	addiu	t5,t5,0
 148:	356c0010 	ori	t4,t3,0x10
 14c:	a60a0196 	sh	t2,406(s0)
 150:	ae0c0004 	sw	t4,4(s0)
 154:	46043201 	sub.s	$f8,$f6,$f4
 158:	a2000151 	sb	zero,337(s0)
 15c:	ae0d014c 	sw	t5,332(s0)
 160:	10000008 	b	184 <BgHidanFwbig_Init+0x184>
 164:	e6080028 	swc1	$f8,40(s0)
 168:	3c053dcc 	lui	a1,0x3dcc
 16c:	34a5cccd 	ori	a1,a1,0xcccd
 170:	0c000000 	jal	0 <BgHidanFwbig_Init>
 174:	02002025 	move	a0,s0
 178:	3c0e0000 	lui	t6,0x0
 17c:	25ce0000 	addiu	t6,t6,0
 180:	ae0e014c 	sw	t6,332(s0)
 184:	8fbf001c 	lw	ra,28(sp)
 188:	8fb00018 	lw	s0,24(sp)
 18c:	27bd0030 	addiu	sp,sp,48
 190:	03e00008 	jr	ra
 194:	00000000 	nop

00000198 <BgHidanFwbig_Destroy>:
 198:	27bdffe8 	addiu	sp,sp,-24
 19c:	00803025 	move	a2,a0
 1a0:	afbf0014 	sw	ra,20(sp)
 1a4:	00a02025 	move	a0,a1
 1a8:	0c000000 	jal	0 <BgHidanFwbig_Init>
 1ac:	24c50154 	addiu	a1,a2,340
 1b0:	8fbf0014 	lw	ra,20(sp)
 1b4:	27bd0018 	addiu	sp,sp,24
 1b8:	03e00008 	jr	ra
 1bc:	00000000 	nop

000001c0 <func_808874B0>:
 1c0:	27bdffe0 	addiu	sp,sp,-32
 1c4:	afbf0014 	sw	ra,20(sp)
 1c8:	808f0150 	lb	t7,336(a0)
 1cc:	848e00b6 	lh	t6,182(a0)
 1d0:	00802825 	move	a1,a0
 1d4:	000f0823 	negu	at,t7
 1d8:	0001c380 	sll	t8,at,0xe
 1dc:	01d82021 	addu	a0,t6,t8
 1e0:	00042400 	sll	a0,a0,0x10
 1e4:	00042403 	sra	a0,a0,0x10
 1e8:	a7a4001e 	sh	a0,30(sp)
 1ec:	0c000000 	jal	0 <BgHidanFwbig_Init>
 1f0:	afa50020 	sw	a1,32(sp)
 1f4:	3c010000 	lui	at,0x0
 1f8:	c4240000 	lwc1	$f4,0(at)
 1fc:	8fa50020 	lw	a1,32(sp)
 200:	87a4001e 	lh	a0,30(sp)
 204:	46040182 	mul.s	$f6,$f0,$f4
 208:	c4a80008 	lwc1	$f8,8(a1)
 20c:	46083280 	add.s	$f10,$f6,$f8
 210:	0c000000 	jal	0 <BgHidanFwbig_Init>
 214:	e4aa0024 	swc1	$f10,36(a1)
 218:	3c010000 	lui	at,0x0
 21c:	c4300000 	lwc1	$f16,0(at)
 220:	8fa50020 	lw	a1,32(sp)
 224:	46100482 	mul.s	$f18,$f0,$f16
 228:	c4a40010 	lwc1	$f4,16(a1)
 22c:	46049180 	add.s	$f6,$f18,$f4
 230:	e4a6002c 	swc1	$f6,44(a1)
 234:	8fbf0014 	lw	ra,20(sp)
 238:	27bd0020 	addiu	sp,sp,32
 23c:	03e00008 	jr	ra
 240:	00000000 	nop

00000244 <func_80887534>:
 244:	27bdffe0 	addiu	sp,sp,-32
 248:	afa40020 	sw	a0,32(sp)
 24c:	8fae0020 	lw	t6,32(sp)
 250:	afbf001c 	sw	ra,28(sp)
 254:	afa50024 	sw	a1,36(sp)
 258:	00a02025 	move	a0,a1
 25c:	0c000000 	jal	0 <BgHidanFwbig_Init>
 260:	85c5001c 	lh	a1,28(t6)
 264:	1040000c 	beqz	v0,298 <func_80887534+0x54>
 268:	8fa70020 	lw	a3,32(sp)
 26c:	3c0f0000 	lui	t7,0x0
 270:	25ef0000 	addiu	t7,t7,0
 274:	acef014c 	sw	t7,332(a3)
 278:	afa00010 	sw	zero,16(sp)
 27c:	8fa40024 	lw	a0,36(sp)
 280:	24050d0c 	li	a1,3340
 284:	0c000000 	jal	0 <BgHidanFwbig_Init>
 288:	2406ff9d 	li	a2,-99
 28c:	8fb90020 	lw	t9,32(sp)
 290:	24180023 	li	t8,35
 294:	a7380152 	sh	t8,338(t9)
 298:	8fbf001c 	lw	ra,28(sp)
 29c:	27bd0020 	addiu	sp,sp,32
 2a0:	03e00008 	jr	ra
 2a4:	00000000 	nop

000002a8 <func_80887598>:
 2a8:	afa50004 	sw	a1,4(sp)
 2ac:	84830152 	lh	v1,338(a0)
 2b0:	3c0f0000 	lui	t7,0x0
 2b4:	25ef0000 	addiu	t7,t7,0
 2b8:	2c620001 	sltiu	v0,v1,1
 2bc:	246effff 	addiu	t6,v1,-1
 2c0:	10400002 	beqz	v0,2cc <func_80887598+0x24>
 2c4:	a48e0152 	sh	t6,338(a0)
 2c8:	ac8f014c 	sw	t7,332(a0)
 2cc:	03e00008 	jr	ra
 2d0:	00000000 	nop

000002d4 <func_808875C4>:
 2d4:	27bdffe8 	addiu	sp,sp,-24
 2d8:	afbf0014 	sw	ra,20(sp)
 2dc:	afa5001c 	sw	a1,28(sp)
 2e0:	00803825 	move	a3,a0
 2e4:	8ce5000c 	lw	a1,12(a3)
 2e8:	afa70018 	sw	a3,24(sp)
 2ec:	24840028 	addiu	a0,a0,40
 2f0:	0c000000 	jal	0 <BgHidanFwbig_Init>
 2f4:	3c064120 	lui	a2,0x4120
 2f8:	1040000f 	beqz	v0,338 <func_808875C4+0x64>
 2fc:	8fa70018 	lw	a3,24(sp)
 300:	80ee0150 	lb	t6,336(a3)
 304:	3c180000 	lui	t8,0x0
 308:	8fa4001c 	lw	a0,28(sp)
 30c:	15c00009 	bnez	t6,334 <func_808875C4+0x60>
 310:	27180000 	addiu	t8,t8,0
 314:	84e5001c 	lh	a1,28(a3)
 318:	0c000000 	jal	0 <BgHidanFwbig_Init>
 31c:	afa70018 	sw	a3,24(sp)
 320:	8fa70018 	lw	a3,24(sp)
 324:	3c0f0000 	lui	t7,0x0
 328:	25ef0000 	addiu	t7,t7,0
 32c:	10000002 	b	338 <func_808875C4+0x64>
 330:	acef014c 	sw	t7,332(a3)
 334:	acf8014c 	sw	t8,332(a3)
 338:	8fbf0014 	lw	ra,20(sp)
 33c:	27bd0018 	addiu	sp,sp,24
 340:	03e00008 	jr	ra
 344:	00000000 	nop

00000348 <func_80887638>:
 348:	27bdffe8 	addiu	sp,sp,-24
 34c:	afbf0014 	sw	ra,20(sp)
 350:	afa5001c 	sw	a1,28(sp)
 354:	00803825 	move	a3,a0
 358:	3c014516 	lui	at,0x4516
 35c:	44812000 	mtc1	at,$f4
 360:	c4e60054 	lwc1	$f6,84(a3)
 364:	c4ea000c 	lwc1	$f10,12(a3)
 368:	afa70018 	sw	a3,24(sp)
 36c:	46062202 	mul.s	$f8,$f4,$f6
 370:	24840028 	addiu	a0,a0,40
 374:	3c064120 	lui	a2,0x4120
 378:	46085401 	sub.s	$f16,$f10,$f8
 37c:	44058000 	mfc1	a1,$f16
 380:	0c000000 	jal	0 <BgHidanFwbig_Init>
 384:	00000000 	nop
 388:	10400023 	beqz	v0,418 <func_80887638+0xd0>
 38c:	8fa70018 	lw	a3,24(sp)
 390:	80e20150 	lb	v0,336(a3)
 394:	3c0e0000 	lui	t6,0x0
 398:	25ce0000 	addiu	t6,t6,0
 39c:	14400004 	bnez	v0,3b0 <func_80887638+0x68>
 3a0:	240f0096 	li	t7,150
 3a4:	acee014c 	sw	t6,332(a3)
 3a8:	1000001b 	b	418 <func_80887638+0xd0>
 3ac:	a4ef0152 	sh	t7,338(a3)
 3b0:	90e30151 	lbu	v1,337(a3)
 3b4:	24010002 	li	at,2
 3b8:	00e02025 	move	a0,a3
 3bc:	14610005 	bne	v1,at,3d4 <func_80887638+0x8c>
 3c0:	00000000 	nop
 3c4:	0c000000 	jal	0 <BgHidanFwbig_Init>
 3c8:	00e02025 	move	a0,a3
 3cc:	10000013 	b	41c <func_80887638+0xd4>
 3d0:	8fbf0014 	lw	ra,20(sp)
 3d4:	14600007 	bnez	v1,3f4 <func_80887638+0xac>
 3d8:	0002c880 	sll	t9,v0,0x2
 3dc:	84f800b6 	lh	t8,182(a3)
 3e0:	0322c823 	subu	t9,t9,v0
 3e4:	0019cac0 	sll	t9,t9,0xb
 3e8:	03194023 	subu	t0,t8,t9
 3ec:	10000004 	b	400 <func_80887638+0xb8>
 3f0:	a4e800b6 	sh	t0,182(a3)
 3f4:	84e90016 	lh	t1,22(a3)
 3f8:	a0e00151 	sb	zero,337(a3)
 3fc:	a4e900b6 	sh	t1,182(a3)
 400:	0c000000 	jal	0 <BgHidanFwbig_Init>
 404:	afa70018 	sw	a3,24(sp)
 408:	8fa70018 	lw	a3,24(sp)
 40c:	3c0a0000 	lui	t2,0x0
 410:	254a0000 	addiu	t2,t2,0
 414:	acea014c 	sw	t2,332(a3)
 418:	8fbf0014 	lw	ra,20(sp)
 41c:	27bd0018 	addiu	sp,sp,24
 420:	03e00008 	jr	ra
 424:	00000000 	nop

00000428 <func_80887718>:
 428:	27bdffe8 	addiu	sp,sp,-24
 42c:	afbf0014 	sw	ra,20(sp)
 430:	afa5001c 	sw	a1,28(sp)
 434:	84850152 	lh	a1,338(a0)
 438:	3c0f0000 	lui	t7,0x0
 43c:	25ef0000 	addiu	t7,t7,0
 440:	10a00003 	beqz	a1,450 <func_80887718+0x28>
 444:	24aeffff 	addiu	t6,a1,-1
 448:	a48e0152 	sh	t6,338(a0)
 44c:	84850152 	lh	a1,338(a0)
 450:	14a00003 	bnez	a1,460 <func_80887718+0x38>
 454:	00000000 	nop
 458:	ac8f014c 	sw	t7,332(a0)
 45c:	84850152 	lh	a1,338(a0)
 460:	0c000000 	jal	0 <BgHidanFwbig_Init>
 464:	00000000 	nop
 468:	8fbf0014 	lw	ra,20(sp)
 46c:	27bd0018 	addiu	sp,sp,24
 470:	03e00008 	jr	ra
 474:	00000000 	nop

00000478 <func_80887768>:
 478:	27bdffe0 	addiu	sp,sp,-32
 47c:	afbf001c 	sw	ra,28(sp)
 480:	afa50024 	sw	a1,36(sp)
 484:	8ca21c44 	lw	v0,7236(a1)
 488:	3c010000 	lui	at,0x0
 48c:	c4260000 	lwc1	$f6,0(at)
 490:	c4440024 	lwc1	$f4,36(v0)
 494:	3c0f0000 	lui	t7,0x0
 498:	00803825 	move	a3,a0
 49c:	4606203c 	c.lt.s	$f4,$f6
 4a0:	25ef0000 	addiu	t7,t7,0
 4a4:	24050cda 	li	a1,3290
 4a8:	2406ff9d 	li	a2,-99
 4ac:	45020006 	bc1fl	4c8 <func_80887768+0x50>
 4b0:	8fbf001c 	lw	ra,28(sp)
 4b4:	ac8f014c 	sw	t7,332(a0)
 4b8:	afa00010 	sw	zero,16(sp)
 4bc:	0c000000 	jal	0 <BgHidanFwbig_Init>
 4c0:	8fa40024 	lw	a0,36(sp)
 4c4:	8fbf001c 	lw	ra,28(sp)
 4c8:	27bd0020 	addiu	sp,sp,32
 4cc:	03e00008 	jr	ra
 4d0:	00000000 	nop

000004d4 <func_808877C4>:
 4d4:	27bdffe8 	addiu	sp,sp,-24
 4d8:	afbf0014 	sw	ra,20(sp)
 4dc:	00803825 	move	a3,a0
 4e0:	afa70018 	sw	a3,24(sp)
 4e4:	0c000000 	jal	0 <BgHidanFwbig_Init>
 4e8:	00a02025 	move	a0,a1
 4ec:	1440001d 	bnez	v0,564 <func_808877C4+0x90>
 4f0:	8fa70018 	lw	a3,24(sp)
 4f4:	80ef0150 	lb	t7,336(a3)
 4f8:	84ee0016 	lh	t6,22(a3)
 4fc:	afa70018 	sw	a3,24(sp)
 500:	000fc080 	sll	t8,t7,0x2
 504:	030fc023 	subu	t8,t8,t7
 508:	0018c0c0 	sll	t8,t8,0x3
 50c:	030fc021 	addu	t8,t8,t7
 510:	0018c0c0 	sll	t8,t8,0x3
 514:	030fc023 	subu	t8,t8,t7
 518:	0018c0c0 	sll	t8,t8,0x3
 51c:	030fc021 	addu	t8,t8,t7
 520:	0018c100 	sll	t8,t8,0x4
 524:	01d82821 	addu	a1,t6,t8
 528:	00052c00 	sll	a1,a1,0x10
 52c:	00052c03 	sra	a1,a1,0x10
 530:	24e400b6 	addiu	a0,a3,182
 534:	0c000000 	jal	0 <BgHidanFwbig_Init>
 538:	24060020 	li	a2,32
 53c:	10400007 	beqz	v0,55c <func_808877C4+0x88>
 540:	8fa70018 	lw	a3,24(sp)
 544:	3c080000 	lui	t0,0x0
 548:	24190001 	li	t9,1
 54c:	25080000 	addiu	t0,t0,0
 550:	a0f90151 	sb	t9,337(a3)
 554:	10000003 	b	564 <func_808877C4+0x90>
 558:	ace8014c 	sw	t0,332(a3)
 55c:	0c000000 	jal	0 <BgHidanFwbig_Init>
 560:	00e02025 	move	a0,a3
 564:	8fbf0014 	lw	ra,20(sp)
 568:	27bd0018 	addiu	sp,sp,24
 56c:	03e00008 	jr	ra
 570:	00000000 	nop

00000574 <func_80887864>:
 574:	27bdffc8 	addiu	sp,sp,-56
 578:	afbf0014 	sw	ra,20(sp)
 57c:	afa5003c 	sw	a1,60(sp)
 580:	8ca21c44 	lw	v0,7236(a1)
 584:	afa40038 	sw	a0,56(sp)
 588:	27a50028 	addiu	a1,sp,40
 58c:	0c000000 	jal	0 <BgHidanFwbig_Init>
 590:	24460024 	addiu	a2,v0,36
 594:	c7a40030 	lwc1	$f4,48(sp)
 598:	44803000 	mtc1	zero,$f6
 59c:	8fa70038 	lw	a3,56(sp)
 5a0:	3c01bf80 	lui	at,0xbf80
 5a4:	4604303e 	c.le.s	$f6,$f4
 5a8:	00000000 	nop
 5ac:	45020006 	bc1fl	5c8 <func_80887864+0x54>
 5b0:	44810000 	mtc1	at,$f0
 5b4:	3c013f80 	lui	at,0x3f80
 5b8:	44810000 	mtc1	at,$f0
 5bc:	10000004 	b	5d0 <func_80887864+0x5c>
 5c0:	3c0141c8 	lui	at,0x41c8
 5c4:	44810000 	mtc1	at,$f0
 5c8:	00000000 	nop
 5cc:	3c0141c8 	lui	at,0x41c8
 5d0:	44814000 	mtc1	at,$f8
 5d4:	3c01bf80 	lui	at,0xbf80
 5d8:	44818000 	mtc1	at,$f16
 5dc:	46080282 	mul.s	$f10,$f0,$f8
 5e0:	3c01c3fa 	lui	at,0xc3fa
 5e4:	c7a20028 	lwc1	$f2,40(sp)
 5e8:	46105482 	mul.s	$f18,$f10,$f16
 5ec:	e7b20030 	swc1	$f18,48(sp)
 5f0:	80ef0150 	lb	t7,336(a3)
 5f4:	55e00017 	bnezl	t7,654 <func_80887864+0xe0>
 5f8:	44810000 	mtc1	at,$f0
 5fc:	3c01c3b4 	lui	at,0xc3b4
 600:	44810000 	mtc1	at,$f0
 604:	c7a20028 	lwc1	$f2,40(sp)
 608:	3c0143b4 	lui	at,0x43b4
 60c:	4600103c 	c.lt.s	$f2,$f0
 610:	00000000 	nop
 614:	45020004 	bc1fl	628 <func_80887864+0xb4>
 618:	44816000 	mtc1	at,$f12
 61c:	1000001e 	b	698 <func_80887864+0x124>
 620:	e7a00028 	swc1	$f0,40(sp)
 624:	44816000 	mtc1	at,$f12
 628:	00000000 	nop
 62c:	4602603c 	c.lt.s	$f12,$f2
 630:	00000000 	nop
 634:	45020004 	bc1fl	648 <func_80887864+0xd4>
 638:	46001006 	mov.s	$f0,$f2
 63c:	10000002 	b	648 <func_80887864+0xd4>
 640:	46006006 	mov.s	$f0,$f12
 644:	46001006 	mov.s	$f0,$f2
 648:	10000013 	b	698 <func_80887864+0x124>
 64c:	e7a00028 	swc1	$f0,40(sp)
 650:	44810000 	mtc1	at,$f0
 654:	3c0143fa 	lui	at,0x43fa
 658:	4600103c 	c.lt.s	$f2,$f0
 65c:	00000000 	nop
 660:	45020004 	bc1fl	674 <func_80887864+0x100>
 664:	44816000 	mtc1	at,$f12
 668:	1000000b 	b	698 <func_80887864+0x124>
 66c:	e7a00028 	swc1	$f0,40(sp)
 670:	44816000 	mtc1	at,$f12
 674:	00000000 	nop
 678:	4602603c 	c.lt.s	$f12,$f2
 67c:	00000000 	nop
 680:	45020004 	bc1fl	694 <func_80887864+0x120>
 684:	46001006 	mov.s	$f0,$f2
 688:	10000002 	b	694 <func_80887864+0x120>
 68c:	46006006 	mov.s	$f0,$f12
 690:	46001006 	mov.s	$f0,$f2
 694:	e7a00028 	swc1	$f0,40(sp)
 698:	84e400b6 	lh	a0,182(a3)
 69c:	0c000000 	jal	0 <BgHidanFwbig_Init>
 6a0:	afa70038 	sw	a3,56(sp)
 6a4:	8fa70038 	lw	a3,56(sp)
 6a8:	84e400b6 	lh	a0,182(a3)
 6ac:	0c000000 	jal	0 <BgHidanFwbig_Init>
 6b0:	e7a00020 	swc1	$f0,32(sp)
 6b4:	c7a60028 	lwc1	$f6,40(sp)
 6b8:	8fa70038 	lw	a3,56(sp)
 6bc:	c7a20020 	lwc1	$f2,32(sp)
 6c0:	46003202 	mul.s	$f8,$f6,$f0
 6c4:	c7b00030 	lwc1	$f16,48(sp)
 6c8:	c4e40024 	lwc1	$f4,36(a3)
 6cc:	46028482 	mul.s	$f18,$f16,$f2
 6d0:	46082280 	add.s	$f10,$f4,$f8
 6d4:	c4e8002c 	lwc1	$f8,44(a3)
 6d8:	46125180 	add.s	$f6,$f10,$f18
 6dc:	4600310d 	trunc.w.s	$f4,$f6
 6e0:	44192000 	mfc1	t9,$f4
 6e4:	00000000 	nop
 6e8:	a4f9019a 	sh	t9,410(a3)
 6ec:	c7b00028 	lwc1	$f16,40(sp)
 6f0:	c7a60030 	lwc1	$f6,48(sp)
 6f4:	46028282 	mul.s	$f10,$f16,$f2
 6f8:	460a4481 	sub.s	$f18,$f8,$f10
 6fc:	46003102 	mul.s	$f4,$f6,$f0
 700:	c4ea0028 	lwc1	$f10,40(a3)
 704:	4600518d 	trunc.w.s	$f6,$f10
 708:	46049400 	add.s	$f16,$f18,$f4
 70c:	440b3000 	mfc1	t3,$f6
 710:	44802000 	mtc1	zero,$f4
 714:	4600820d 	trunc.w.s	$f8,$f16
 718:	a4eb019c 	sh	t3,412(a3)
 71c:	44094000 	mfc1	t1,$f8
 720:	00000000 	nop
 724:	a4e9019e 	sh	t1,414(a3)
 728:	c7b20030 	lwc1	$f18,48(sp)
 72c:	4604903c 	c.lt.s	$f18,$f4
 730:	00000000 	nop
 734:	45020005 	bc1fl	74c <func_80887864+0x1d8>
 738:	84ed00b6 	lh	t5,182(a3)
 73c:	84ec00b6 	lh	t4,182(a3)
 740:	10000005 	b	758 <func_80887864+0x1e4>
 744:	a4ec0032 	sh	t4,50(a3)
 748:	84ed00b6 	lh	t5,182(a3)
 74c:	34018000 	li	at,0x8000
 750:	01a17021 	addu	t6,t5,at
 754:	a4ee0032 	sh	t6,50(a3)
 758:	8fbf0014 	lw	ra,20(sp)
 75c:	27bd0038 	addiu	sp,sp,56
 760:	03e00008 	jr	ra
 764:	00000000 	nop

00000768 <BgHidanFwbig_Update>:
 768:	27bdffc8 	addiu	sp,sp,-56
 76c:	afbf0024 	sw	ra,36(sp)
 770:	afb10020 	sw	s1,32(sp)
 774:	afb0001c 	sw	s0,28(sp)
 778:	90820164 	lbu	v0,356(a0)
 77c:	00808025 	move	s0,a0
 780:	00a08825 	move	s1,a1
 784:	304e0002 	andi	t6,v0,0x2
 788:	11c00010 	beqz	t6,7cc <BgHidanFwbig_Update+0x64>
 78c:	304ffffd 	andi	t7,v0,0xfffd
 790:	a08f0164 	sb	t7,356(a0)
 794:	3c013f80 	lui	at,0x3f80
 798:	44812000 	mtc1	at,$f4
 79c:	86070032 	lh	a3,50(s0)
 7a0:	00a02025 	move	a0,a1
 7a4:	02002825 	move	a1,s0
 7a8:	3c0640a0 	lui	a2,0x40a0
 7ac:	0c000000 	jal	0 <BgHidanFwbig_Init>
 7b0:	e7a40010 	swc1	$f4,16(sp)
 7b4:	82180150 	lb	t8,336(s0)
 7b8:	3c190000 	lui	t9,0x0
 7bc:	27390000 	addiu	t9,t9,0
 7c0:	53000003 	beqzl	t8,7d0 <BgHidanFwbig_Update+0x68>
 7c4:	82080150 	lb	t0,336(s0)
 7c8:	ae19014c 	sw	t9,332(s0)
 7cc:	82080150 	lb	t0,336(s0)
 7d0:	3c0a0001 	lui	t2,0x1
 7d4:	01515021 	addu	t2,t2,s1
 7d8:	5100000a 	beqzl	t0,804 <BgHidanFwbig_Update+0x9c>
 7dc:	8e19014c 	lw	t9,332(s0)
 7e0:	82090003 	lb	t1,3(s0)
 7e4:	814a1cd0 	lb	t2,7376(t2)
 7e8:	3c0c0000 	lui	t4,0x0
 7ec:	240b0002 	li	t3,2
 7f0:	152a0003 	bne	t1,t2,800 <BgHidanFwbig_Update+0x98>
 7f4:	258c0000 	addiu	t4,t4,0
 7f8:	a20b0151 	sb	t3,337(s0)
 7fc:	ae0c014c 	sw	t4,332(s0)
 800:	8e19014c 	lw	t9,332(s0)
 804:	02002025 	move	a0,s0
 808:	02202825 	move	a1,s1
 80c:	0320f809 	jalr	t9
 810:	00000000 	nop
 814:	3c014348 	lui	at,0x4348
 818:	44814000 	mtc1	at,$f8
 81c:	c606000c 	lwc1	$f6,12(s0)
 820:	c6100028 	lwc1	$f16,40(s0)
 824:	3c0d0000 	lui	t5,0x0
 828:	46083281 	sub.s	$f10,$f6,$f8
 82c:	4610503c 	c.lt.s	$f10,$f16
 830:	00000000 	nop
 834:	45020026 	bc1fl	8d0 <BgHidanFwbig_Update+0x168>
 838:	8fbf0024 	lw	ra,36(sp)
 83c:	8dad1360 	lw	t5,4960(t5)
 840:	02002025 	move	a0,s0
 844:	29a10004 	slti	at,t5,4
 848:	50200006 	beqzl	at,864 <BgHidanFwbig_Update+0xfc>
 84c:	c6120024 	lwc1	$f18,36(s0)
 850:	0c000000 	jal	0 <BgHidanFwbig_Init>
 854:	240520b3 	li	a1,8371
 858:	1000000e 	b	894 <BgHidanFwbig_Update+0x12c>
 85c:	02002025 	move	a0,s0
 860:	c6120024 	lwc1	$f18,36(s0)
 864:	2401fdff 	li	at,-513
 868:	02002025 	move	a0,s0
 86c:	4600910d 	trunc.w.s	$f4,$f18
 870:	440f2000 	mfc1	t7,$f4
 874:	00000000 	nop
 878:	000fc400 	sll	t8,t7,0x10
 87c:	00184403 	sra	t0,t8,0x10
 880:	55010004 	bnel	t0,at,894 <BgHidanFwbig_Update+0x12c>
 884:	02002025 	move	a0,s0
 888:	0c000000 	jal	0 <BgHidanFwbig_Init>
 88c:	240520bb 	li	a1,8379
 890:	02002025 	move	a0,s0
 894:	0c000000 	jal	0 <BgHidanFwbig_Init>
 898:	02202825 	move	a1,s1
 89c:	3c010001 	lui	at,0x1
 8a0:	34211e60 	ori	at,at,0x1e60
 8a4:	02212821 	addu	a1,s1,at
 8a8:	26060154 	addiu	a2,s0,340
 8ac:	afa60028 	sw	a2,40(sp)
 8b0:	afa5002c 	sw	a1,44(sp)
 8b4:	0c000000 	jal	0 <BgHidanFwbig_Init>
 8b8:	02202025 	move	a0,s1
 8bc:	8fa5002c 	lw	a1,44(sp)
 8c0:	8fa60028 	lw	a2,40(sp)
 8c4:	0c000000 	jal	0 <BgHidanFwbig_Init>
 8c8:	02202025 	move	a0,s1
 8cc:	8fbf0024 	lw	ra,36(sp)
 8d0:	8fb0001c 	lw	s0,28(sp)
 8d4:	8fb10020 	lw	s1,32(sp)
 8d8:	03e00008 	jr	ra
 8dc:	27bd0038 	addiu	sp,sp,56

000008e0 <BgHidanFwbig_Draw>:
 8e0:	27bdff80 	addiu	sp,sp,-128
 8e4:	afb10038 	sw	s1,56(sp)
 8e8:	00a08825 	move	s1,a1
 8ec:	afbf003c 	sw	ra,60(sp)
 8f0:	afb00034 	sw	s0,52(sp)
 8f4:	afa40080 	sw	a0,128(sp)
 8f8:	8ca50000 	lw	a1,0(a1)
 8fc:	3c060000 	lui	a2,0x0
 900:	24c60000 	addiu	a2,a2,0
 904:	27a40064 	addiu	a0,sp,100
 908:	24070276 	li	a3,630
 90c:	0c000000 	jal	0 <BgHidanFwbig_Init>
 910:	00a08025 	move	s0,a1
 914:	0c000000 	jal	0 <BgHidanFwbig_Init>
 918:	8e240000 	lw	a0,0(s1)
 91c:	8e0202d0 	lw	v0,720(s0)
 920:	3c040401 	lui	a0,0x401
 924:	248473d0 	addiu	a0,a0,29648
 928:	0004c100 	sll	t8,a0,0x4
 92c:	0018cf02 	srl	t9,t8,0x1c
 930:	3c050000 	lui	a1,0x0
 934:	3c0fdb06 	lui	t7,0xdb06
 938:	244e0008 	addiu	t6,v0,8
 93c:	ae0e02d0 	sw	t6,720(s0)
 940:	35ef0024 	ori	t7,t7,0x24
 944:	24a50000 	addiu	a1,a1,0
 948:	00194880 	sll	t1,t9,0x2
 94c:	00a95021 	addu	t2,a1,t1
 950:	ac4f0000 	sw	t7,0(v0)
 954:	8d4b0000 	lw	t3,0(t2)
 958:	3c0600ff 	lui	a2,0xff
 95c:	34c6ffff 	ori	a2,a2,0xffff
 960:	00866024 	and	t4,a0,a2
 964:	3c078000 	lui	a3,0x8000
 968:	016c6821 	addu	t5,t3,t4
 96c:	01a77021 	addu	t6,t5,a3
 970:	ac4e0004 	sw	t6,4(v0)
 974:	8e0202d0 	lw	v0,720(s0)
 978:	3c040401 	lui	a0,0x401
 97c:	24847bd0 	addiu	a0,a0,31696
 980:	0004c900 	sll	t9,a0,0x4
 984:	00194f02 	srl	t1,t9,0x1c
 988:	3c18db06 	lui	t8,0xdb06
 98c:	244f0008 	addiu	t7,v0,8
 990:	ae0f02d0 	sw	t7,720(s0)
 994:	37180028 	ori	t8,t8,0x28
 998:	00095080 	sll	t2,t1,0x2
 99c:	00aa5821 	addu	t3,a1,t2
 9a0:	ac580000 	sw	t8,0(v0)
 9a4:	8d6c0000 	lw	t4,0(t3)
 9a8:	00866824 	and	t5,a0,a2
 9ac:	3c014516 	lui	at,0x4516
 9b0:	018d7021 	addu	t6,t4,t5
 9b4:	01c77821 	addu	t7,t6,a3
 9b8:	ac4f0004 	sw	t7,4(v0)
 9bc:	8fa40080 	lw	a0,128(sp)
 9c0:	8e0302d0 	lw	v1,720(s0)
 9c4:	3c19fa00 	lui	t9,0xfa00
 9c8:	c4840054 	lwc1	$f4,84(a0)
 9cc:	24780008 	addiu	t8,v1,8
 9d0:	44813000 	mtc1	at,$f6
 9d4:	ae1802d0 	sw	t8,720(s0)
 9d8:	37398080 	ori	t9,t9,0x8080
 9dc:	ac790000 	sw	t9,0(v1)
 9e0:	46062002 	mul.s	$f0,$f4,$f6
 9e4:	c48a0028 	lwc1	$f10,40(a0)
 9e8:	c488000c 	lwc1	$f8,12(a0)
 9ec:	3c01437f 	lui	at,0x437f
 9f0:	44812000 	mtc1	at,$f4
 9f4:	460a4401 	sub.s	$f16,$f8,$f10
 9f8:	240a0001 	li	t2,1
 9fc:	3c19db06 	lui	t9,0xdb06
 a00:	3c014f00 	lui	at,0x4f00
 a04:	46100481 	sub.s	$f18,$f0,$f16
 a08:	3c0fff00 	lui	t7,0xff00
 a0c:	3c0efb00 	lui	t6,0xfb00
 a10:	37390020 	ori	t9,t9,0x20
 a14:	46049182 	mul.s	$f6,$f18,$f4
 a18:	00003825 	move	a3,zero
 a1c:	00002825 	move	a1,zero
 a20:	46003203 	div.s	$f8,$f6,$f0
 a24:	4449f800 	cfc1	t1,$31
 a28:	44caf800 	ctc1	t2,$31
 a2c:	00000000 	nop
 a30:	460042a4 	cvt.w.s	$f10,$f8
 a34:	444af800 	cfc1	t2,$31
 a38:	00000000 	nop
 a3c:	314a0078 	andi	t2,t2,0x78
 a40:	51400013 	beqzl	t2,a90 <BgHidanFwbig_Draw+0x1b0>
 a44:	440a5000 	mfc1	t2,$f10
 a48:	44815000 	mtc1	at,$f10
 a4c:	240a0001 	li	t2,1
 a50:	460a4281 	sub.s	$f10,$f8,$f10
 a54:	44caf800 	ctc1	t2,$31
 a58:	00000000 	nop
 a5c:	460052a4 	cvt.w.s	$f10,$f10
 a60:	444af800 	cfc1	t2,$31
 a64:	00000000 	nop
 a68:	314a0078 	andi	t2,t2,0x78
 a6c:	15400005 	bnez	t2,a84 <BgHidanFwbig_Draw+0x1a4>
 a70:	00000000 	nop
 a74:	440a5000 	mfc1	t2,$f10
 a78:	3c018000 	lui	at,0x8000
 a7c:	10000007 	b	a9c <BgHidanFwbig_Draw+0x1bc>
 a80:	01415025 	or	t2,t2,at
 a84:	10000005 	b	a9c <BgHidanFwbig_Draw+0x1bc>
 a88:	240affff 	li	t2,-1
 a8c:	440a5000 	mfc1	t2,$f10
 a90:	00000000 	nop
 a94:	0540fffb 	bltz	t2,a84 <BgHidanFwbig_Draw+0x1a4>
 a98:	00000000 	nop
 a9c:	314b00ff 	andi	t3,t2,0xff
 aa0:	3c01ffdc 	lui	at,0xffdc
 aa4:	01616025 	or	t4,t3,at
 aa8:	ac6c0004 	sw	t4,4(v1)
 aac:	8e0202d0 	lw	v0,720(s0)
 ab0:	3c030001 	lui	v1,0x1
 ab4:	00711821 	addu	v1,v1,s1
 ab8:	244d0008 	addiu	t5,v0,8
 abc:	ae0d02d0 	sw	t5,720(s0)
 ac0:	ac4e0000 	sw	t6,0(v0)
 ac4:	ac4f0004 	sw	t7,4(v0)
 ac8:	8e0202d0 	lw	v0,720(s0)
 acc:	44c9f800 	ctc1	t1,$31
 ad0:	24090020 	li	t1,32
 ad4:	24580008 	addiu	t8,v0,8
 ad8:	ae1802d0 	sw	t8,720(s0)
 adc:	ac590000 	sw	t9,0(v0)
 ae0:	8c631de4 	lw	v1,7652(v1)
 ae4:	8e240000 	lw	a0,0(s1)
 ae8:	240f0040 	li	t7,64
 aec:	00030823 	negu	at,v1
 af0:	00016100 	sll	t4,at,0x4
 af4:	01816023 	subu	t4,t4,at
 af8:	318d00ff 	andi	t5,t4,0xff
 afc:	240e0020 	li	t6,32
 b00:	240b0001 	li	t3,1
 b04:	240a0040 	li	t2,64
 b08:	afaa0014 	sw	t2,20(sp)
 b0c:	afab0018 	sw	t3,24(sp)
 b10:	afae0024 	sw	t6,36(sp)
 b14:	afad0020 	sw	t5,32(sp)
 b18:	afaf0028 	sw	t7,40(sp)
 b1c:	afa0001c 	sw	zero,28(sp)
 b20:	afa90010 	sw	t1,16(sp)
 b24:	afa20050 	sw	v0,80(sp)
 b28:	0c000000 	jal	0 <BgHidanFwbig_Init>
 b2c:	3066007f 	andi	a2,v1,0x7f
 b30:	8fa80050 	lw	t0,80(sp)
 b34:	3c19da38 	lui	t9,0xda38
 b38:	37390003 	ori	t9,t9,0x3
 b3c:	ad020004 	sw	v0,4(t0)
 b40:	8e0202d0 	lw	v0,720(s0)
 b44:	3c050000 	lui	a1,0x0
 b48:	24a50000 	addiu	a1,a1,0
 b4c:	24580008 	addiu	t8,v0,8
 b50:	ae1802d0 	sw	t8,720(s0)
 b54:	ac590000 	sw	t9,0(v0)
 b58:	8e240000 	lw	a0,0(s1)
 b5c:	24060294 	li	a2,660
 b60:	0c000000 	jal	0 <BgHidanFwbig_Init>
 b64:	afa2004c 	sw	v0,76(sp)
 b68:	8fa3004c 	lw	v1,76(sp)
 b6c:	3c0b0601 	lui	t3,0x601
 b70:	256bdb20 	addiu	t3,t3,-9440
 b74:	ac620004 	sw	v0,4(v1)
 b78:	8e0202d0 	lw	v0,720(s0)
 b7c:	3c0ade00 	lui	t2,0xde00
 b80:	3c060000 	lui	a2,0x0
 b84:	24490008 	addiu	t1,v0,8
 b88:	ae0902d0 	sw	t1,720(s0)
 b8c:	ac4b0004 	sw	t3,4(v0)
 b90:	ac4a0000 	sw	t2,0(v0)
 b94:	8e250000 	lw	a1,0(s1)
 b98:	24c60000 	addiu	a2,a2,0
 b9c:	27a40064 	addiu	a0,sp,100
 ba0:	0c000000 	jal	0 <BgHidanFwbig_Init>
 ba4:	24070298 	li	a3,664
 ba8:	8fbf003c 	lw	ra,60(sp)
 bac:	8fb00034 	lw	s0,52(sp)
 bb0:	8fb10038 	lw	s1,56(sp)
 bb4:	03e00008 	jr	ra
 bb8:	27bd0080 	addiu	sp,sp,128
 bbc:	00000000 	nop
