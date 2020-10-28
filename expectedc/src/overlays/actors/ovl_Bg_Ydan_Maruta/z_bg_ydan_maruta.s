
build/src/overlays/actors/ovl_Bg_Ydan_Maruta/z_bg_ydan_maruta.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgYdanMaruta_Init>:
   0:	27bdff88 	addiu	sp,sp,-120
   4:	afa5007c 	sw	a1,124(sp)
   8:	afbf0024 	sw	ra,36(sp)
   c:	afb0001c 	sw	s0,28(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afb10020 	sw	s1,32(sp)
  1c:	afa0003c 	sw	zero,60(sp)
  20:	0c000000 	jal	0 <BgYdanMaruta_Init>
  24:	24a50000 	addiu	a1,a1,0
  28:	2605016c 	addiu	a1,s0,364
  2c:	afa5002c 	sw	a1,44(sp)
  30:	0c000000 	jal	0 <BgYdanMaruta_Init>
  34:	8fa4007c 	lw	a0,124(sp)
  38:	3c070000 	lui	a3,0x0
  3c:	260e018c 	addiu	t6,s0,396
  40:	afae0010 	sw	t6,16(sp)
  44:	24e70000 	addiu	a3,a3,0
  48:	8fa4007c 	lw	a0,124(sp)
  4c:	8fa5002c 	lw	a1,44(sp)
  50:	0c000000 	jal	0 <BgYdanMaruta_Init>
  54:	02003025 	move	a2,s0
  58:	8619001c 	lh	t9,28(s0)
  5c:	8618001c 	lh	t8,28(s0)
  60:	3c110000 	lui	s1,0x0
  64:	00194203 	sra	t0,t9,0x8
  68:	310900ff 	andi	t1,t0,0xff
  6c:	a609001c 	sh	t1,28(s0)
  70:	860a001c 	lh	t2,28(s0)
  74:	2631003c 	addiu	s1,s1,60
  78:	02002025 	move	a0,s0
  7c:	15400007 	bnez	t2,9c <BgYdanMaruta_Init+0x9c>
  80:	a2180168 	sb	t8,360(s0)
  84:	3c0b0000 	lui	t3,0x0
  88:	3c110000 	lui	s1,0x0
  8c:	256b0000 	addiu	t3,t3,0
  90:	26310000 	addiu	s1,s1,0
  94:	1000001f 	b	114 <BgYdanMaruta_Init+0x114>
  98:	ae0b0164 	sw	t3,356(s0)
  9c:	0c000000 	jal	0 <BgYdanMaruta_Init>
  a0:	00002825 	move	a1,zero
  a4:	3c040000 	lui	a0,0x0
  a8:	24840000 	addiu	a0,a0,0
  ac:	0c000000 	jal	0 <BgYdanMaruta_Init>
  b0:	27a5003c 	addiu	a1,sp,60
  b4:	8fa4007c 	lw	a0,124(sp)
  b8:	02003025 	move	a2,s0
  bc:	8fa7003c 	lw	a3,60(sp)
  c0:	0c000000 	jal	0 <BgYdanMaruta_Init>
  c4:	24850810 	addiu	a1,a0,2064
  c8:	3c01c38c 	lui	at,0xc38c
  cc:	44813000 	mtc1	at,$f6
  d0:	c604000c 	lwc1	$f4,12(s0)
  d4:	ae02014c 	sw	v0,332(s0)
  d8:	92050168 	lbu	a1,360(s0)
  dc:	46062200 	add.s	$f8,$f4,$f6
  e0:	e608000c 	swc1	$f8,12(s0)
  e4:	0c000000 	jal	0 <BgYdanMaruta_Init>
  e8:	8fa4007c 	lw	a0,124(sp)
  ec:	10400007 	beqz	v0,10c <BgYdanMaruta_Init+0x10c>
  f0:	3c0d0000 	lui	t5,0x0
  f4:	c60a000c 	lwc1	$f10,12(s0)
  f8:	3c0c0000 	lui	t4,0x0
  fc:	258c0000 	addiu	t4,t4,0
 100:	ae0c0164 	sw	t4,356(s0)
 104:	10000003 	b	114 <BgYdanMaruta_Init+0x114>
 108:	e60a0028 	swc1	$f10,40(s0)
 10c:	25ad0000 	addiu	t5,t5,0
 110:	ae0d0164 	sw	t5,356(s0)
 114:	0c000000 	jal	0 <BgYdanMaruta_Init>
 118:	860400b6 	lh	a0,182(s0)
 11c:	860400b6 	lh	a0,182(s0)
 120:	0c000000 	jal	0 <BgYdanMaruta_Init>
 124:	e7a00044 	swc1	$f0,68(sp)
 128:	c7a20044 	lwc1	$f2,68(sp)
 12c:	46000306 	mov.s	$f12,$f0
 130:	27a2004c 	addiu	v0,sp,76
 134:	02201825 	move	v1,s1
 138:	27a40070 	addiu	a0,sp,112
 13c:	c46a0018 	lwc1	$f10,24(v1)
 140:	2442000c 	addiu	v0,v0,12
 144:	c6120024 	lwc1	$f18,36(s0)
 148:	46005402 	mul.s	$f16,$f10,$f0
 14c:	50440014 	beql	v0,a0,1a0 <BgYdanMaruta_Init+0x1a0>
 150:	46128380 	add.s	$f14,$f16,$f18
 154:	46128380 	add.s	$f14,$f16,$f18
 158:	2442000c 	addiu	v0,v0,12
 15c:	2463000c 	addiu	v1,v1,12
 160:	e44effe8 	swc1	$f14,-24(v0)
 164:	c46e0010 	lwc1	$f14,16(v1)
 168:	c60a0028 	lwc1	$f10,40(s0)
 16c:	460a7280 	add.s	$f10,$f14,$f10
 170:	e44affec 	swc1	$f10,-20(v0)
 174:	c46a000c 	lwc1	$f10,12(v1)
 178:	c60e002c 	lwc1	$f14,44(s0)
 17c:	46025282 	mul.s	$f10,$f10,$f2
 180:	460a7281 	sub.s	$f10,$f14,$f10
 184:	e44afff0 	swc1	$f10,-16(v0)
 188:	c46a0018 	lwc1	$f10,24(v1)
 18c:	c6120024 	lwc1	$f18,36(s0)
 190:	46005402 	mul.s	$f16,$f10,$f0
 194:	5444fff0 	bnel	v0,a0,158 <BgYdanMaruta_Init+0x158>
 198:	46128380 	add.s	$f14,$f16,$f18
 19c:	46128380 	add.s	$f14,$f16,$f18
 1a0:	2463000c 	addiu	v1,v1,12
 1a4:	e44efff4 	swc1	$f14,-12(v0)
 1a8:	c60a0028 	lwc1	$f10,40(s0)
 1ac:	c46e0010 	lwc1	$f14,16(v1)
 1b0:	460a7280 	add.s	$f10,$f14,$f10
 1b4:	e44afff8 	swc1	$f10,-8(v0)
 1b8:	c46a000c 	lwc1	$f10,12(v1)
 1bc:	c60e002c 	lwc1	$f14,44(s0)
 1c0:	46025282 	mul.s	$f10,$f10,$f2
 1c4:	460a7281 	sub.s	$f10,$f14,$f10
 1c8:	e44afffc 	swc1	$f10,-4(v0)
 1cc:	27ae0064 	addiu	t6,sp,100
 1d0:	afae0010 	sw	t6,16(sp)
 1d4:	8fa4002c 	lw	a0,44(sp)
 1d8:	00002825 	move	a1,zero
 1dc:	27a6004c 	addiu	a2,sp,76
 1e0:	27a70058 	addiu	a3,sp,88
 1e4:	e7a20044 	swc1	$f2,68(sp)
 1e8:	0c000000 	jal	0 <BgYdanMaruta_Init>
 1ec:	e7ac0040 	swc1	$f12,64(sp)
 1f0:	c7ac0040 	lwc1	$f12,64(sp)
 1f4:	c62a0030 	lwc1	$f10,48(s1)
 1f8:	c6040024 	lwc1	$f4,36(s0)
 1fc:	c7a20044 	lwc1	$f2,68(sp)
 200:	460c5402 	mul.s	$f16,$f10,$f12
 204:	27af0058 	addiu	t7,sp,88
 208:	8fa4002c 	lw	a0,44(sp)
 20c:	24050001 	li	a1,1
 210:	27a6004c 	addiu	a2,sp,76
 214:	27a70064 	addiu	a3,sp,100
 218:	46048480 	add.s	$f18,$f16,$f4
 21c:	e7b20058 	swc1	$f18,88(sp)
 220:	c6080028 	lwc1	$f8,40(s0)
 224:	c626001c 	lwc1	$f6,28(s1)
 228:	46083280 	add.s	$f10,$f6,$f8
 22c:	e7aa005c 	swc1	$f10,92(sp)
 230:	c6240030 	lwc1	$f4,48(s1)
 234:	c610002c 	lwc1	$f16,44(s0)
 238:	afaf0010 	sw	t7,16(sp)
 23c:	46022482 	mul.s	$f18,$f4,$f2
 240:	46128181 	sub.s	$f6,$f16,$f18
 244:	0c000000 	jal	0 <BgYdanMaruta_Init>
 248:	e7a60060 	swc1	$f6,96(sp)
 24c:	8fbf0024 	lw	ra,36(sp)
 250:	8fb0001c 	lw	s0,28(sp)
 254:	8fb10020 	lw	s1,32(sp)
 258:	03e00008 	jr	ra
 25c:	27bd0078 	addiu	sp,sp,120

00000260 <BgYdanMaruta_Destroy>:
 260:	27bdffe8 	addiu	sp,sp,-24
 264:	00803825 	move	a3,a0
 268:	afbf0014 	sw	ra,20(sp)
 26c:	afa5001c 	sw	a1,28(sp)
 270:	00a02025 	move	a0,a1
 274:	24e5016c 	addiu	a1,a3,364
 278:	0c000000 	jal	0 <BgYdanMaruta_Init>
 27c:	afa70018 	sw	a3,24(sp)
 280:	8fa70018 	lw	a3,24(sp)
 284:	8fa4001c 	lw	a0,28(sp)
 288:	24010001 	li	at,1
 28c:	84ee001c 	lh	t6,28(a3)
 290:	24850810 	addiu	a1,a0,2064
 294:	55c10004 	bnel	t6,at,2a8 <BgYdanMaruta_Destroy+0x48>
 298:	8fbf0014 	lw	ra,20(sp)
 29c:	0c000000 	jal	0 <BgYdanMaruta_Init>
 2a0:	8ce6014c 	lw	a2,332(a3)
 2a4:	8fbf0014 	lw	ra,20(sp)
 2a8:	27bd0018 	addiu	sp,sp,24
 2ac:	03e00008 	jr	ra
 2b0:	00000000 	nop

000002b4 <func_808BEFF4>:
 2b4:	27bdffd8 	addiu	sp,sp,-40
 2b8:	afbf0024 	sw	ra,36(sp)
 2bc:	afb00020 	sw	s0,32(sp)
 2c0:	afa5002c 	sw	a1,44(sp)
 2c4:	908e017c 	lbu	t6,380(a0)
 2c8:	00808025 	move	s0,a0
 2cc:	00a02025 	move	a0,a1
 2d0:	31cf0002 	andi	t7,t6,0x2
 2d4:	11e00007 	beqz	t7,2f4 <func_808BEFF4+0x40>
 2d8:	02002825 	move	a1,s0
 2dc:	3c0140c0 	lui	at,0x40c0
 2e0:	44812000 	mtc1	at,$f4
 2e4:	860700b6 	lh	a3,182(s0)
 2e8:	3c0640e0 	lui	a2,0x40e0
 2ec:	0c000000 	jal	0 <BgYdanMaruta_Init>
 2f0:	e7a40010 	swc1	$f4,16(sp)
 2f4:	861800b4 	lh	t8,180(s0)
 2f8:	3c010001 	lui	at,0x1
 2fc:	34211e60 	ori	at,at,0x1e60
 300:	27190360 	addiu	t9,t8,864
 304:	a61900b4 	sh	t9,180(s0)
 308:	8fa4002c 	lw	a0,44(sp)
 30c:	2606016c 	addiu	a2,s0,364
 310:	0c000000 	jal	0 <BgYdanMaruta_Init>
 314:	00812821 	addu	a1,a0,at
 318:	02002025 	move	a0,s0
 31c:	0c000000 	jal	0 <BgYdanMaruta_Init>
 320:	240520ec 	li	a1,8428
 324:	8fbf0024 	lw	ra,36(sp)
 328:	8fb00020 	lw	s0,32(sp)
 32c:	27bd0028 	addiu	sp,sp,40
 330:	03e00008 	jr	ra
 334:	00000000 	nop

00000338 <func_808BF078>:
 338:	27bdffe0 	addiu	sp,sp,-32
 33c:	afbf001c 	sw	ra,28(sp)
 340:	afa50024 	sw	a1,36(sp)
 344:	908e017d 	lbu	t6,381(a0)
 348:	3c010001 	lui	at,0x1
 34c:	00803825 	move	a3,a0
 350:	31cf0002 	andi	t7,t6,0x2
 354:	11e00014 	beqz	t7,3a8 <func_808BF078+0x70>
 358:	34211e60 	ori	at,at,0x1e60
 35c:	24180014 	li	t8,20
 360:	a498016a 	sh	t8,362(a0)
 364:	90e50168 	lbu	a1,360(a3)
 368:	afa70020 	sw	a3,32(sp)
 36c:	0c000000 	jal	0 <BgYdanMaruta_Init>
 370:	8fa40024 	lw	a0,36(sp)
 374:	0c000000 	jal	0 <BgYdanMaruta_Init>
 378:	24044802 	li	a0,18434
 37c:	8fa70020 	lw	a3,32(sp)
 380:	3c190000 	lui	t9,0x0
 384:	27390000 	addiu	t9,t9,0
 388:	acf90164 	sw	t9,356(a3)
 38c:	afa00010 	sw	zero,16(sp)
 390:	8fa40024 	lw	a0,36(sp)
 394:	24050bc2 	li	a1,3010
 398:	0c000000 	jal	0 <BgYdanMaruta_Init>
 39c:	24060032 	li	a2,50
 3a0:	10000006 	b	3bc <func_808BF078+0x84>
 3a4:	8fbf001c 	lw	ra,28(sp)
 3a8:	8fa40024 	lw	a0,36(sp)
 3ac:	24e6016c 	addiu	a2,a3,364
 3b0:	0c000000 	jal	0 <BgYdanMaruta_Init>
 3b4:	00812821 	addu	a1,a0,at
 3b8:	8fbf001c 	lw	ra,28(sp)
 3bc:	27bd0020 	addiu	sp,sp,32
 3c0:	03e00008 	jr	ra
 3c4:	00000000 	nop

000003c8 <func_808BF108>:
 3c8:	27bdffe0 	addiu	sp,sp,-32
 3cc:	afbf0014 	sw	ra,20(sp)
 3d0:	afa50024 	sw	a1,36(sp)
 3d4:	8483016a 	lh	v1,362(a0)
 3d8:	00803025 	move	a2,a0
 3dc:	2401fffe 	li	at,-2
 3e0:	10600003 	beqz	v1,3f0 <func_808BF108+0x28>
 3e4:	246effff 	addiu	t6,v1,-1
 3e8:	a48e016a 	sh	t6,362(a0)
 3ec:	8483016a 	lh	v1,362(a0)
 3f0:	14600004 	bnez	v1,404 <func_808BF108+0x3c>
 3f4:	3c0f0000 	lui	t7,0x0
 3f8:	25ef0000 	addiu	t7,t7,0
 3fc:	accf0164 	sw	t7,356(a2)
 400:	84c3016a 	lh	v1,362(a2)
 404:	04610004 	bgez	v1,418 <func_808BF108+0x50>
 408:	30620003 	andi	v0,v1,0x3
 40c:	10400002 	beqz	v0,418 <func_808BF108+0x50>
 410:	00000000 	nop
 414:	2442fffc 	addiu	v0,v0,-4
 418:	2442fffe 	addiu	v0,v0,-2
 41c:	00021400 	sll	v0,v0,0x10
 420:	00021403 	sra	v0,v0,0x10
 424:	54410004 	bnel	v0,at,438 <func_808BF108+0x70>
 428:	00021040 	sll	v0,v0,0x1
 42c:	10000004 	b	440 <func_808BF108+0x78>
 430:	00001025 	move	v0,zero
 434:	00021040 	sll	v0,v0,0x1
 438:	00021400 	sll	v0,v0,0x10
 43c:	00021403 	sra	v0,v0,0x10
 440:	84c400b6 	lh	a0,182(a2)
 444:	afa60020 	sw	a2,32(sp)
 448:	0c000000 	jal	0 <BgYdanMaruta_Init>
 44c:	a7a2001e 	sh	v0,30(sp)
 450:	87a2001e 	lh	v0,30(sp)
 454:	8fa60020 	lw	a2,32(sp)
 458:	44822000 	mtc1	v0,$f4
 45c:	c4c80008 	lwc1	$f8,8(a2)
 460:	84c400b6 	lh	a0,182(a2)
 464:	468020a0 	cvt.s.w	$f2,$f4
 468:	46020182 	mul.s	$f6,$f0,$f2
 46c:	46083280 	add.s	$f10,$f6,$f8
 470:	e4ca0024 	swc1	$f10,36(a2)
 474:	0c000000 	jal	0 <BgYdanMaruta_Init>
 478:	e7a20018 	swc1	$f2,24(sp)
 47c:	c7a20018 	lwc1	$f2,24(sp)
 480:	8fa40020 	lw	a0,32(sp)
 484:	24052058 	li	a1,8280
 488:	46020402 	mul.s	$f16,$f0,$f2
 48c:	c4920010 	lwc1	$f18,16(a0)
 490:	46128100 	add.s	$f4,$f16,$f18
 494:	0c000000 	jal	0 <BgYdanMaruta_Init>
 498:	e484002c 	swc1	$f4,44(a0)
 49c:	8fbf0014 	lw	ra,20(sp)
 4a0:	27bd0020 	addiu	sp,sp,32
 4a4:	03e00008 	jr	ra
 4a8:	00000000 	nop

000004ac <func_808BF1EC>:
 4ac:	27bdffe8 	addiu	sp,sp,-24
 4b0:	afbf0014 	sw	ra,20(sp)
 4b4:	afa5001c 	sw	a1,28(sp)
 4b8:	3c013f80 	lui	at,0x3f80
 4bc:	44813000 	mtc1	at,$f6
 4c0:	c4840060 	lwc1	$f4,96(a0)
 4c4:	00803825 	move	a3,a0
 4c8:	24840028 	addiu	a0,a0,40
 4cc:	46062200 	add.s	$f8,$f4,$f6
 4d0:	e4880038 	swc1	$f8,56(a0)
 4d4:	8ce60060 	lw	a2,96(a3)
 4d8:	8ce5000c 	lw	a1,12(a3)
 4dc:	0c000000 	jal	0 <BgYdanMaruta_Init>
 4e0:	afa70018 	sw	a3,24(sp)
 4e4:	10400009 	beqz	v0,50c <func_808BF1EC+0x60>
 4e8:	8fa70018 	lw	a3,24(sp)
 4ec:	00e02025 	move	a0,a3
 4f0:	24052860 	li	a1,10336
 4f4:	0c000000 	jal	0 <BgYdanMaruta_Init>
 4f8:	afa70018 	sw	a3,24(sp)
 4fc:	8fa70018 	lw	a3,24(sp)
 500:	3c0e0000 	lui	t6,0x0
 504:	25ce0000 	addiu	t6,t6,0
 508:	acee0164 	sw	t6,356(a3)
 50c:	8fbf0014 	lw	ra,20(sp)
 510:	27bd0018 	addiu	sp,sp,24
 514:	03e00008 	jr	ra
 518:	00000000 	nop

0000051c <BgYdanMaruta_DoNothing>:
 51c:	afa40000 	sw	a0,0(sp)
 520:	03e00008 	jr	ra
 524:	afa50004 	sw	a1,4(sp)

00000528 <BgYdanMaruta_Update>:
 528:	27bdffe8 	addiu	sp,sp,-24
 52c:	afbf0014 	sw	ra,20(sp)
 530:	8c990164 	lw	t9,356(a0)
 534:	0320f809 	jalr	t9
 538:	00000000 	nop
 53c:	8fbf0014 	lw	ra,20(sp)
 540:	27bd0018 	addiu	sp,sp,24
 544:	03e00008 	jr	ra
 548:	00000000 	nop

0000054c <BgYdanMaruta_Draw>:
 54c:	27bdffe8 	addiu	sp,sp,-24
 550:	afbf0014 	sw	ra,20(sp)
 554:	848e001c 	lh	t6,28(a0)
 558:	00a03025 	move	a2,a1
 55c:	00c02025 	move	a0,a2
 560:	15c00007 	bnez	t6,580 <BgYdanMaruta_Draw+0x34>
 564:	00000000 	nop
 568:	00a02025 	move	a0,a1
 56c:	3c050000 	lui	a1,0x0
 570:	0c000000 	jal	0 <BgYdanMaruta_Init>
 574:	24a50000 	addiu	a1,a1,0
 578:	10000005 	b	590 <BgYdanMaruta_Draw+0x44>
 57c:	8fbf0014 	lw	ra,20(sp)
 580:	3c050000 	lui	a1,0x0
 584:	0c000000 	jal	0 <BgYdanMaruta_Init>
 588:	24a50000 	addiu	a1,a1,0
 58c:	8fbf0014 	lw	ra,20(sp)
 590:	27bd0018 	addiu	sp,sp,24
 594:	03e00008 	jr	ra
 598:	00000000 	nop
 59c:	00000000 	nop
