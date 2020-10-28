
build/src/overlays/actors/ovl_Bg_Mizu_Movebg/z_bg_mizu_movebg.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8089DC30>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa40018 	sw	a0,24(sp)
   c:	0c000000 	jal	0 <func_8089DC30>
  10:	2405001c 	li	a1,28
  14:	10400003 	beqz	v0,24 <func_8089DC30+0x24>
  18:	8fa40018 	lw	a0,24(sp)
  1c:	1000000d 	b	54 <func_8089DC30+0x54>
  20:	24030001 	li	v1,1
  24:	0c000000 	jal	0 <func_8089DC30>
  28:	2405001d 	li	a1,29
  2c:	10400003 	beqz	v0,3c <func_8089DC30+0x3c>
  30:	8fa40018 	lw	a0,24(sp)
  34:	10000007 	b	54 <func_8089DC30+0x54>
  38:	24030002 	li	v1,2
  3c:	0c000000 	jal	0 <func_8089DC30>
  40:	2405001e 	li	a1,30
  44:	10400003 	beqz	v0,54 <func_8089DC30+0x54>
  48:	24030001 	li	v1,1
  4c:	10000001 	b	54 <func_8089DC30+0x54>
  50:	24030003 	li	v1,3
  54:	8fbf0014 	lw	ra,20(sp)
  58:	27bd0018 	addiu	sp,sp,24
  5c:	00601025 	move	v0,v1
  60:	03e00008 	jr	ra
  64:	00000000 	nop

00000068 <BgMizuMovebg_Init>:
  68:	27bdff98 	addiu	sp,sp,-104
  6c:	afbf003c 	sw	ra,60(sp)
  70:	afb00038 	sw	s0,56(sp)
  74:	afa5006c 	sw	a1,108(sp)
  78:	8caf07c0 	lw	t7,1984(a1)
  7c:	3c050000 	lui	a1,0x0
  80:	00808025 	move	s0,a0
  84:	8df80028 	lw	t8,40(t7)
  88:	afa00054 	sw	zero,84(sp)
  8c:	24a50000 	addiu	a1,a1,0
  90:	0c000000 	jal	0 <func_8089DC30>
  94:	afb8005c 	sw	t8,92(sp)
  98:	9619001c 	lhu	t9,28(s0)
  9c:	c6040028 	lwc1	$f4,40(s0)
  a0:	3c0c0000 	lui	t4,0x0
  a4:	00194b03 	sra	t1,t9,0xc
  a8:	312a000f 	andi	t2,t1,0xf
  ac:	000a5880 	sll	t3,t2,0x2
  b0:	018b6021 	addu	t4,t4,t3
  b4:	e6040168 	swc1	$f4,360(s0)
  b8:	8d8c0000 	lw	t4,0(t4)
  bc:	02002025 	move	a0,s0
  c0:	24050001 	li	a1,1
  c4:	0c000000 	jal	0 <func_8089DC30>
  c8:	ae0c0180 	sw	t4,384(s0)
  cc:	960d001c 	lhu	t5,28(s0)
  d0:	3c040000 	lui	a0,0x0
  d4:	27a50054 	addiu	a1,sp,84
  d8:	000d7303 	sra	t6,t5,0xc
  dc:	31cf000f 	andi	t7,t6,0xf
  e0:	000fc080 	sll	t8,t7,0x2
  e4:	00982021 	addu	a0,a0,t8
  e8:	0c000000 	jal	0 <func_8089DC30>
  ec:	8c840000 	lw	a0,0(a0)
  f0:	8fa4006c 	lw	a0,108(sp)
  f4:	02003025 	move	a2,s0
  f8:	8fa70054 	lw	a3,84(sp)
  fc:	0c000000 	jal	0 <func_8089DC30>
 100:	24850810 	addiu	a1,a0,2064
 104:	9608001c 	lhu	t0,28(s0)
 108:	ae02014c 	sw	v0,332(s0)
 10c:	00081b03 	sra	v1,t0,0xc
 110:	3063000f 	andi	v1,v1,0xf
 114:	2c610008 	sltiu	at,v1,8
 118:	1020008b 	beqz	at,348 <L8089DF24+0x54>
 11c:	0003c880 	sll	t9,v1,0x2
 120:	3c010000 	lui	at,0x0
 124:	00390821 	addu	at,at,t9
 128:	8c390000 	lw	t9,0(at)
 12c:	03200008 	jr	t9
 130:	00000000 	nop

00000134 <L8089DD64>:
 134:	8fa9005c 	lw	t1,92(sp)
 138:	3c014170 	lui	at,0x4170
 13c:	44815000 	mtc1	at,$f10
 140:	852a0022 	lh	t2,34(t1)
 144:	3c01442f 	lui	at,0x442f
 148:	44819000 	mtc1	at,$f18
 14c:	448a3000 	mtc1	t2,$f6
 150:	c6100168 	lwc1	$f16,360(s0)
 154:	3c0b0000 	lui	t3,0x0
 158:	46803220 	cvt.s.w	$f8,$f6
 15c:	46128081 	sub.s	$f2,$f16,$f18
 160:	460a4000 	add.s	$f0,$f8,$f10
 164:	4602003c 	c.lt.s	$f0,$f2
 168:	00000000 	nop
 16c:	45020004 	bc1fl	180 <L8089DD64+0x4c>
 170:	e6000028 	swc1	$f0,40(s0)
 174:	10000002 	b	180 <L8089DD64+0x4c>
 178:	e6020028 	swc1	$f2,40(s0)
 17c:	e6000028 	swc1	$f0,40(s0)
 180:	9603001c 	lhu	v1,28(s0)
 184:	256b0000 	addiu	t3,t3,0
 188:	ae0b0164 	sw	t3,356(s0)
 18c:	00031b03 	sra	v1,v1,0xc
 190:	1000006d 	b	348 <L8089DF24+0x54>
 194:	3063000f 	andi	v1,v1,0xf

00000198 <L8089DDC8>:
 198:	8fac005c 	lw	t4,92(sp)
 19c:	3c014170 	lui	at,0x4170
 1a0:	44814000 	mtc1	at,$f8
 1a4:	858d0022 	lh	t5,34(t4)
 1a8:	3c010000 	lui	at,0x0
 1ac:	c4300000 	lwc1	$f16,0(at)
 1b0:	448d2000 	mtc1	t5,$f4
 1b4:	c60a0168 	lwc1	$f10,360(s0)
 1b8:	3c0e0000 	lui	t6,0x0
 1bc:	468021a0 	cvt.s.w	$f6,$f4
 1c0:	46105081 	sub.s	$f2,$f10,$f16
 1c4:	46083000 	add.s	$f0,$f6,$f8
 1c8:	4602003c 	c.lt.s	$f0,$f2
 1cc:	00000000 	nop
 1d0:	45020004 	bc1fl	1e4 <L8089DDC8+0x4c>
 1d4:	e6000028 	swc1	$f0,40(s0)
 1d8:	10000002 	b	1e4 <L8089DDC8+0x4c>
 1dc:	e6020028 	swc1	$f2,40(s0)
 1e0:	e6000028 	swc1	$f0,40(s0)
 1e4:	9603001c 	lhu	v1,28(s0)
 1e8:	25ce0000 	addiu	t6,t6,0
 1ec:	ae0e0164 	sw	t6,356(s0)
 1f0:	00031b03 	sra	v1,v1,0xc
 1f4:	10000054 	b	348 <L8089DF24+0x54>
 1f8:	3063000f 	andi	v1,v1,0xf

000001fc <L8089DE2C>:
 1fc:	8faf005c 	lw	t7,92(sp)
 200:	3c014170 	lui	at,0x4170
 204:	44813000 	mtc1	at,$f6
 208:	85f80022 	lh	t8,34(t7)
 20c:	3c01442f 	lui	at,0x442f
 210:	44815000 	mtc1	at,$f10
 214:	44989000 	mtc1	t8,$f18
 218:	c6080168 	lwc1	$f8,360(s0)
 21c:	3c190000 	lui	t9,0x0
 220:	46809120 	cvt.s.w	$f4,$f18
 224:	460a4081 	sub.s	$f2,$f8,$f10
 228:	46062000 	add.s	$f0,$f4,$f6
 22c:	4602003c 	c.lt.s	$f0,$f2
 230:	00000000 	nop
 234:	45020004 	bc1fl	248 <L8089DE2C+0x4c>
 238:	e6000028 	swc1	$f0,40(s0)
 23c:	10000002 	b	248 <L8089DE2C+0x4c>
 240:	e6020028 	swc1	$f2,40(s0)
 244:	e6000028 	swc1	$f0,40(s0)
 248:	9603001c 	lhu	v1,28(s0)
 24c:	27390000 	addiu	t9,t9,0
 250:	ae190164 	sw	t9,356(s0)
 254:	00031b03 	sra	v1,v1,0xc
 258:	1000003b 	b	348 <L8089DF24+0x54>
 25c:	3063000f 	andi	v1,v1,0xf

00000260 <L8089DE90>:
 260:	0c000000 	jal	0 <func_8089DC30>
 264:	8fa4006c 	lw	a0,108(sp)
 268:	00024880 	sll	t1,v0,0x2
 26c:	3c010000 	lui	at,0x0
 270:	00290821 	addu	at,at,t1
 274:	c4300000 	lwc1	$f16,0(at)
 278:	c6120168 	lwc1	$f18,360(s0)
 27c:	9603001c 	lhu	v1,28(s0)
 280:	3c0a0000 	lui	t2,0x0
 284:	46128100 	add.s	$f4,$f16,$f18
 288:	254a0000 	addiu	t2,t2,0
 28c:	00031b03 	sra	v1,v1,0xc
 290:	ae0a0164 	sw	t2,356(s0)
 294:	e6040028 	swc1	$f4,40(s0)
 298:	1000002b 	b	348 <L8089DF24+0x54>
 29c:	3063000f 	andi	v1,v1,0xf

000002a0 <L8089DED0>:
 2a0:	8fa4006c 	lw	a0,108(sp)
 2a4:	0c000000 	jal	0 <func_8089DC30>
 2a8:	3105003f 	andi	a1,t0,0x3f
 2ac:	10400009 	beqz	v0,2d4 <L8089DED0+0x34>
 2b0:	3c0b0000 	lui	t3,0x0
 2b4:	c6060168 	lwc1	$f6,360(s0)
 2b8:	3c010000 	lui	at,0x0
 2bc:	d42a0000 	ldc1	$f10,0(at)
 2c0:	46003221 	cvt.d.s	$f8,$f6
 2c4:	462a4400 	add.d	$f16,$f8,$f10
 2c8:	462084a0 	cvt.s.d	$f18,$f16
 2cc:	10000003 	b	2dc <L8089DED0+0x3c>
 2d0:	e6120028 	swc1	$f18,40(s0)
 2d4:	c6040168 	lwc1	$f4,360(s0)
 2d8:	e6040028 	swc1	$f4,40(s0)
 2dc:	9603001c 	lhu	v1,28(s0)
 2e0:	256b0000 	addiu	t3,t3,0
 2e4:	ae0b0164 	sw	t3,356(s0)
 2e8:	00031b03 	sra	v1,v1,0xc
 2ec:	10000016 	b	348 <L8089DF24+0x54>
 2f0:	3063000f 	andi	v1,v1,0xf

000002f4 <L8089DF24>:
 2f4:	240200a0 	li	v0,160
 2f8:	3107000f 	andi	a3,t0,0xf
 2fc:	ae02016c 	sw	v0,364(s0)
 300:	ae020170 	sw	v0,368(s0)
 304:	ae020174 	sw	v0,372(s0)
 308:	ae020178 	sw	v0,376(s0)
 30c:	ae070184 	sw	a3,388(s0)
 310:	8fac006c 	lw	t4,108(sp)
 314:	3c040001 	lui	a0,0x1
 318:	00083203 	sra	a2,t0,0x8
 31c:	008c2021 	addu	a0,a0,t4
 320:	8c841e08 	lw	a0,7688(a0)
 324:	30c6000f 	andi	a2,a2,0xf
 328:	0c000000 	jal	0 <func_8089DC30>
 32c:	26050024 	addiu	a1,s0,36
 330:	9603001c 	lhu	v1,28(s0)
 334:	3c0d0000 	lui	t5,0x0
 338:	25ad0000 	addiu	t5,t5,0
 33c:	00031b03 	sra	v1,v1,0xc
 340:	ae0d0164 	sw	t5,356(s0)
 344:	3063000f 	andi	v1,v1,0xf
 348:	24010003 	li	at,3
 34c:	10610007 	beq	v1,at,36c <L8089DF24+0x78>
 350:	24010004 	li	at,4
 354:	10610005 	beq	v1,at,36c <L8089DF24+0x78>
 358:	24010005 	li	at,5
 35c:	10610003 	beq	v1,at,36c <L8089DF24+0x78>
 360:	24010006 	li	at,6
 364:	5461002c 	bnel	v1,at,418 <L8089DF24+0x124>
 368:	8fbf003c 	lw	ra,60(sp)
 36c:	860e0032 	lh	t6,50(s0)
 370:	3c010000 	lui	at,0x0
 374:	c42a0000 	lwc1	$f10,0(at)
 378:	448e3000 	mtc1	t6,$f6
 37c:	00002825 	move	a1,zero
 380:	46803220 	cvt.s.w	$f8,$f6
 384:	460a4302 	mul.s	$f12,$f8,$f10
 388:	0c000000 	jal	0 <func_8089DC30>
 38c:	00000000 	nop
 390:	3c040000 	lui	a0,0x0
 394:	24840000 	addiu	a0,a0,0
 398:	0c000000 	jal	0 <func_8089DC30>
 39c:	27a50048 	addiu	a1,sp,72
 3a0:	c6100024 	lwc1	$f16,36(s0)
 3a4:	c7b20048 	lwc1	$f18,72(sp)
 3a8:	c7a8004c 	lwc1	$f8,76(sp)
 3ac:	8fa6006c 	lw	a2,108(sp)
 3b0:	46128100 	add.s	$f4,$f16,$f18
 3b4:	c7b20050 	lwc1	$f18,80(sp)
 3b8:	24090002 	li	t1,2
 3bc:	02002825 	move	a1,s0
 3c0:	e7a40010 	swc1	$f4,16(sp)
 3c4:	c6060028 	lwc1	$f6,40(s0)
 3c8:	2407012d 	li	a3,301
 3cc:	24c41c24 	addiu	a0,a2,7204
 3d0:	46083280 	add.s	$f10,$f6,$f8
 3d4:	e7aa0014 	swc1	$f10,20(sp)
 3d8:	c610002c 	lwc1	$f16,44(s0)
 3dc:	46128100 	add.s	$f4,$f16,$f18
 3e0:	e7a40018 	swc1	$f4,24(sp)
 3e4:	860f0030 	lh	t7,48(s0)
 3e8:	afaf001c 	sw	t7,28(sp)
 3ec:	86180032 	lh	t8,50(s0)
 3f0:	afb80020 	sw	t8,32(sp)
 3f4:	86190034 	lh	t9,52(s0)
 3f8:	afa90028 	sw	t1,40(sp)
 3fc:	0c000000 	jal	0 <func_8089DC30>
 400:	afb90024 	sw	t9,36(sp)
 404:	54400004 	bnezl	v0,418 <L8089DF24+0x124>
 408:	8fbf003c 	lw	ra,60(sp)
 40c:	0c000000 	jal	0 <func_8089DC30>
 410:	02002025 	move	a0,s0
 414:	8fbf003c 	lw	ra,60(sp)
 418:	8fb00038 	lw	s0,56(sp)
 41c:	27bd0068 	addiu	sp,sp,104
 420:	03e00008 	jr	ra
 424:	00000000 	nop

00000428 <BgMizuMovebg_Destroy>:
 428:	27bdffe8 	addiu	sp,sp,-24
 42c:	afa40018 	sw	a0,24(sp)
 430:	8fae0018 	lw	t6,24(sp)
 434:	afbf0014 	sw	ra,20(sp)
 438:	00a02025 	move	a0,a1
 43c:	24a50810 	addiu	a1,a1,2064
 440:	0c000000 	jal	0 <func_8089DC30>
 444:	8dc6014c 	lw	a2,332(t6)
 448:	8fa20018 	lw	v0,24(sp)
 44c:	944f001c 	lhu	t7,28(v0)
 450:	000fc303 	sra	t8,t7,0xc
 454:	3319000f 	andi	t9,t8,0xf
 458:	2728fffd 	addiu	t0,t9,-3
 45c:	2d010005 	sltiu	at,t0,5
 460:	10200019 	beqz	at,4c8 <L8089E0D4+0x24>
 464:	00084080 	sll	t0,t0,0x2
 468:	3c010000 	lui	at,0x0
 46c:	00280821 	addu	at,at,t0
 470:	8c280000 	lw	t0,0(at)
 474:	01000008 	jr	t0
 478:	00000000 	nop

0000047c <L8089E0AC>:
 47c:	9049017c 	lbu	t1,380(v0)
 480:	3c020000 	lui	v0,0x0
 484:	24420000 	addiu	v0,v0,0
 488:	312a0002 	andi	t2,t1,0x2
 48c:	5140000f 	beqzl	t2,4cc <L8089E0D4+0x28>
 490:	8fbf0014 	lw	ra,20(sp)
 494:	904b0000 	lbu	t3,0(v0)
 498:	316cfffd 	andi	t4,t3,0xfffd
 49c:	1000000a 	b	4c8 <L8089E0D4+0x24>
 4a0:	a04c0000 	sb	t4,0(v0)

000004a4 <L8089E0D4>:
 4a4:	904d017c 	lbu	t5,380(v0)
 4a8:	3c020000 	lui	v0,0x0
 4ac:	24420000 	addiu	v0,v0,0
 4b0:	31ae0001 	andi	t6,t5,0x1
 4b4:	51c00005 	beqzl	t6,4cc <L8089E0D4+0x28>
 4b8:	8fbf0014 	lw	ra,20(sp)
 4bc:	904f0000 	lbu	t7,0(v0)
 4c0:	31f8fffe 	andi	t8,t7,0xfffe
 4c4:	a0580000 	sb	t8,0(v0)
 4c8:	8fbf0014 	lw	ra,20(sp)
 4cc:	27bd0018 	addiu	sp,sp,24
 4d0:	03e00008 	jr	ra
 4d4:	00000000 	nop

000004d8 <func_8089E108>:
 4d8:	000670c0 	sll	t6,a2,0x3
 4dc:	008e7821 	addu	t7,a0,t6
 4e0:	8de80004 	lw	t0,4(t7)
 4e4:	3c0a0000 	lui	t2,0x0
 4e8:	3c0100ff 	lui	at,0xff
 4ec:	0008c100 	sll	t8,t0,0x4
 4f0:	0018cf02 	srl	t9,t8,0x1c
 4f4:	00194880 	sll	t1,t9,0x2
 4f8:	01495021 	addu	t2,t2,t1
 4fc:	8d4a0000 	lw	t2,0(t2)
 500:	3421ffff 	ori	at,at,0xffff
 504:	00076880 	sll	t5,a3,0x2
 508:	01a76823 	subu	t5,t5,a3
 50c:	01015824 	and	t3,t0,at
 510:	000d6840 	sll	t5,t5,0x1
 514:	014b6021 	addu	t4,t2,t3
 518:	018d1821 	addu	v1,t4,t5
 51c:	3c018000 	lui	at,0x8000
 520:	00611821 	addu	v1,v1,at
 524:	846e0000 	lh	t6,0(v1)
 528:	00001025 	move	v0,zero
 52c:	448e2000 	mtc1	t6,$f4
 530:	00000000 	nop
 534:	468021a0 	cvt.s.w	$f6,$f4
 538:	e4a60000 	swc1	$f6,0(a1)
 53c:	846f0002 	lh	t7,2(v1)
 540:	448f4000 	mtc1	t7,$f8
 544:	00000000 	nop
 548:	468042a0 	cvt.s.w	$f10,$f8
 54c:	e4aa0004 	swc1	$f10,4(a1)
 550:	84780004 	lh	t8,4(v1)
 554:	44988000 	mtc1	t8,$f16
 558:	00000000 	nop
 55c:	468084a0 	cvt.s.w	$f18,$f16
 560:	03e00008 	jr	ra
 564:	e4b20008 	swc1	$f18,8(a1)

00000568 <func_8089E198>:
 568:	8cae07c0 	lw	t6,1984(a1)
 56c:	3c01c170 	lui	at,0xc170
 570:	44811000 	mtc1	at,$f2
 574:	8dcf0028 	lw	t7,40(t6)
 578:	240200ff 	li	v0,255
 57c:	3c010000 	lui	at,0x0
 580:	85f80022 	lh	t8,34(t7)
 584:	240300a0 	li	v1,160
 588:	44982000 	mtc1	t8,$f4
 58c:	00000000 	nop
 590:	46802020 	cvt.s.w	$f0,$f4
 594:	4602003c 	c.lt.s	$f0,$f2
 598:	00000000 	nop
 59c:	45000007 	bc1f	5bc <func_8089E198+0x54>
 5a0:	00000000 	nop
 5a4:	3c0142be 	lui	at,0x42be
 5a8:	44817000 	mtc1	at,$f14
 5ac:	3c010000 	lui	at,0x0
 5b0:	ac82016c 	sw	v0,364(a0)
 5b4:	10000019 	b	61c <func_8089E198+0xb4>
 5b8:	c42c0000 	lwc1	$f12,0(at)
 5bc:	c42c0000 	lwc1	$f12,0(at)
 5c0:	240300a0 	li	v1,160
 5c4:	3c0142be 	lui	at,0x42be
 5c8:	460c003c 	c.lt.s	$f0,$f12
 5cc:	240200ff 	li	v0,255
 5d0:	45020011 	bc1fl	618 <func_8089E198+0xb0>
 5d4:	44817000 	mtc1	at,$f14
 5d8:	3c0142be 	lui	at,0x42be
 5dc:	44817000 	mtc1	at,$f14
 5e0:	46020181 	sub.s	$f6,$f0,$f2
 5e4:	3c0143e6 	lui	at,0x43e6
 5e8:	44814000 	mtc1	at,$f8
 5ec:	240200ff 	li	v0,255
 5f0:	240300a0 	li	v1,160
 5f4:	46083283 	div.s	$f10,$f6,$f8
 5f8:	460e5402 	mul.s	$f16,$f10,$f14
 5fc:	4600848d 	trunc.w.s	$f18,$f16
 600:	44089000 	mfc1	t0,$f18
 604:	00000000 	nop
 608:	00484823 	subu	t1,v0,t0
 60c:	10000003 	b	61c <func_8089E198+0xb4>
 610:	ac89016c 	sw	t1,364(a0)
 614:	44817000 	mtc1	at,$f14
 618:	ac83016c 	sw	v1,364(a0)
 61c:	460c003c 	c.lt.s	$f0,$f12
 620:	3c010000 	lui	at,0x0
 624:	45000003 	bc1f	634 <func_8089E198+0xcc>
 628:	00000000 	nop
 62c:	10000013 	b	67c <func_8089E198+0x114>
 630:	ac820170 	sw	v0,368(a0)
 634:	c4240000 	lwc1	$f4,0(at)
 638:	3c0143a0 	lui	at,0x43a0
 63c:	4604003c 	c.lt.s	$f0,$f4
 640:	00000000 	nop
 644:	4502000d 	bc1fl	67c <func_8089E198+0x114>
 648:	ac830170 	sw	v1,368(a0)
 64c:	460c0181 	sub.s	$f6,$f0,$f12
 650:	44814000 	mtc1	at,$f8
 654:	00000000 	nop
 658:	46083283 	div.s	$f10,$f6,$f8
 65c:	460e5402 	mul.s	$f16,$f10,$f14
 660:	4600848d 	trunc.w.s	$f18,$f16
 664:	440b9000 	mfc1	t3,$f18
 668:	00000000 	nop
 66c:	004b6023 	subu	t4,v0,t3
 670:	10000002 	b	67c <func_8089E198+0x114>
 674:	ac8c0170 	sw	t4,368(a0)
 678:	ac830170 	sw	v1,368(a0)
 67c:	3c010000 	lui	at,0x0
 680:	c42c0000 	lwc1	$f12,0(at)
 684:	460c003c 	c.lt.s	$f0,$f12
 688:	00000000 	nop
 68c:	45020004 	bc1fl	6a0 <func_8089E198+0x138>
 690:	4602003c 	c.lt.s	$f0,$f2
 694:	10000011 	b	6dc <func_8089E198+0x174>
 698:	ac820174 	sw	v0,372(a0)
 69c:	4602003c 	c.lt.s	$f0,$f2
 6a0:	3c01444d 	lui	at,0x444d
 6a4:	4502000d 	bc1fl	6dc <func_8089E198+0x174>
 6a8:	ac830174 	sw	v1,372(a0)
 6ac:	460c0101 	sub.s	$f4,$f0,$f12
 6b0:	44813000 	mtc1	at,$f6
 6b4:	00000000 	nop
 6b8:	46062203 	div.s	$f8,$f4,$f6
 6bc:	460e4282 	mul.s	$f10,$f8,$f14
 6c0:	4600540d 	trunc.w.s	$f16,$f10
 6c4:	440e8000 	mfc1	t6,$f16
 6c8:	00000000 	nop
 6cc:	004e7823 	subu	t7,v0,t6
 6d0:	10000002 	b	6dc <func_8089E198+0x174>
 6d4:	ac8f0174 	sw	t7,372(a0)
 6d8:	ac830174 	sw	v1,372(a0)
 6dc:	8c980174 	lw	t8,372(a0)
 6e0:	03e00008 	jr	ra
 6e4:	ac980178 	sw	t8,376(a0)

000006e8 <func_8089E318>:
 6e8:	27bdffc0 	addiu	sp,sp,-64
 6ec:	afbf001c 	sw	ra,28(sp)
 6f0:	afb00018 	sw	s0,24(sp)
 6f4:	8cae07c0 	lw	t6,1984(a1)
 6f8:	00808025 	move	s0,a0
 6fc:	8dc30028 	lw	v1,40(t6)
 700:	afa50044 	sw	a1,68(sp)
 704:	0c000000 	jal	0 <func_8089DC30>
 708:	afa3003c 	sw	v1,60(sp)
 70c:	9606001c 	lhu	a2,28(s0)
 710:	8fa3003c 	lw	v1,60(sp)
 714:	00061303 	sra	v0,a2,0xc
 718:	3042000f 	andi	v0,v0,0xf
 71c:	2c410007 	sltiu	at,v0,7
 720:	1020008a 	beqz	at,94c <L8089E4D8+0xa4>
 724:	00027880 	sll	t7,v0,0x2
 728:	3c010000 	lui	at,0x0
 72c:	002f0821 	addu	at,at,t7
 730:	8c2f0000 	lw	t7,0(at)
 734:	01e00008 	jr	t7
 738:	00000000 	nop

0000073c <L8089E36C>:
 73c:	84780022 	lh	t8,34(v1)
 740:	3c014170 	lui	at,0x4170
 744:	44814000 	mtc1	at,$f8
 748:	44982000 	mtc1	t8,$f4
 74c:	3c01442f 	lui	at,0x442f
 750:	44818000 	mtc1	at,$f16
 754:	468021a0 	cvt.s.w	$f6,$f4
 758:	c60a0168 	lwc1	$f10,360(s0)
 75c:	46105081 	sub.s	$f2,$f10,$f16
 760:	46083000 	add.s	$f0,$f6,$f8
 764:	4602003c 	c.lt.s	$f0,$f2
 768:	00000000 	nop
 76c:	45020004 	bc1fl	780 <L8089E36C+0x44>
 770:	e6000028 	swc1	$f0,40(s0)
 774:	10000002 	b	780 <L8089E36C+0x44>
 778:	e6020028 	swc1	$f2,40(s0)
 77c:	e6000028 	swc1	$f0,40(s0)
 780:	9602001c 	lhu	v0,28(s0)
 784:	00021303 	sra	v0,v0,0xc
 788:	10000070 	b	94c <L8089E4D8+0xa4>
 78c:	3042000f 	andi	v0,v0,0xf

00000790 <L8089E3C0>:
 790:	84790022 	lh	t9,34(v1)
 794:	3c014170 	lui	at,0x4170
 798:	44813000 	mtc1	at,$f6
 79c:	44999000 	mtc1	t9,$f18
 7a0:	3c010000 	lui	at,0x0
 7a4:	c42a0000 	lwc1	$f10,0(at)
 7a8:	46809120 	cvt.s.w	$f4,$f18
 7ac:	c6080168 	lwc1	$f8,360(s0)
 7b0:	460a4081 	sub.s	$f2,$f8,$f10
 7b4:	46062000 	add.s	$f0,$f4,$f6
 7b8:	4602003c 	c.lt.s	$f0,$f2
 7bc:	00000000 	nop
 7c0:	45020004 	bc1fl	7d4 <L8089E3C0+0x44>
 7c4:	e6000028 	swc1	$f0,40(s0)
 7c8:	10000002 	b	7d4 <L8089E3C0+0x44>
 7cc:	e6020028 	swc1	$f2,40(s0)
 7d0:	e6000028 	swc1	$f0,40(s0)
 7d4:	9602001c 	lhu	v0,28(s0)
 7d8:	00021303 	sra	v0,v0,0xc
 7dc:	1000005b 	b	94c <L8089E4D8+0xa4>
 7e0:	3042000f 	andi	v0,v0,0xf

000007e4 <L8089E414>:
 7e4:	0c000000 	jal	0 <func_8089DC30>
 7e8:	8fa40044 	lw	a0,68(sp)
 7ec:	00024080 	sll	t0,v0,0x2
 7f0:	3c010000 	lui	at,0x0
 7f4:	00280821 	addu	at,at,t0
 7f8:	c4300000 	lwc1	$f16,0(at)
 7fc:	c6120168 	lwc1	$f18,360(s0)
 800:	26040028 	addiu	a0,s0,40
 804:	3c063f80 	lui	a2,0x3f80
 808:	46128000 	add.s	$f0,$f16,$f18
 80c:	44050000 	mfc1	a1,$f0
 810:	0c000000 	jal	0 <func_8089DC30>
 814:	00000000 	nop
 818:	1440001f 	bnez	v0,898 <L8089E414+0xb4>
 81c:	3c030000 	lui	v1,0x0
 820:	24630000 	addiu	v1,v1,0
 824:	90620000 	lbu	v0,0(v1)
 828:	30490002 	andi	t1,v0,0x2
 82c:	5520000c 	bnezl	t1,860 <L8089E414+0x7c>
 830:	9218017c 	lbu	t8,380(s0)
 834:	960a001c 	lhu	t2,28(s0)
 838:	344d0002 	ori	t5,v0,0x2
 83c:	000a5903 	sra	t3,t2,0x4
 840:	316c000f 	andi	t4,t3,0xf
 844:	51800006 	beqzl	t4,860 <L8089E414+0x7c>
 848:	9218017c 	lbu	t8,380(s0)
 84c:	a06d0000 	sb	t5,0(v1)
 850:	920e017c 	lbu	t6,380(s0)
 854:	35cf0002 	ori	t7,t6,0x2
 858:	a20f017c 	sb	t7,380(s0)
 85c:	9218017c 	lbu	t8,380(s0)
 860:	33190002 	andi	t9,t8,0x2
 864:	5320000d 	beqzl	t9,89c <L8089E414+0xb8>
 868:	9602001c 	lhu	v0,28(s0)
 86c:	82080003 	lb	t0,3(s0)
 870:	24052024 	li	a1,8228
 874:	02002025 	move	a0,s0
 878:	15000005 	bnez	t0,890 <L8089E414+0xac>
 87c:	00000000 	nop
 880:	0c000000 	jal	0 <func_8089DC30>
 884:	02002025 	move	a0,s0
 888:	10000004 	b	89c <L8089E414+0xb8>
 88c:	9602001c 	lhu	v0,28(s0)
 890:	0c000000 	jal	0 <func_8089DC30>
 894:	24052024 	li	a1,8228
 898:	9602001c 	lhu	v0,28(s0)
 89c:	00021303 	sra	v0,v0,0xc
 8a0:	1000002a 	b	94c <L8089E4D8+0xa4>
 8a4:	3042000f 	andi	v0,v0,0xf

000008a8 <L8089E4D8>:
 8a8:	8fa40044 	lw	a0,68(sp)
 8ac:	0c000000 	jal	0 <func_8089DC30>
 8b0:	30c5003f 	andi	a1,a2,0x3f
 8b4:	10400006 	beqz	v0,8d0 <L8089E4D8+0x28>
 8b8:	26040028 	addiu	a0,s0,40
 8bc:	3c010000 	lui	at,0x0
 8c0:	c4260000 	lwc1	$f6,0(at)
 8c4:	c6040168 	lwc1	$f4,360(s0)
 8c8:	10000002 	b	8d4 <L8089E4D8+0x2c>
 8cc:	46062000 	add.s	$f0,$f4,$f6
 8d0:	c6000168 	lwc1	$f0,360(s0)
 8d4:	44050000 	mfc1	a1,$f0
 8d8:	0c000000 	jal	0 <func_8089DC30>
 8dc:	3c063f80 	lui	a2,0x3f80
 8e0:	14400017 	bnez	v0,940 <L8089E4D8+0x98>
 8e4:	3c030000 	lui	v1,0x0
 8e8:	24630000 	addiu	v1,v1,0
 8ec:	90620000 	lbu	v0,0(v1)
 8f0:	02002025 	move	a0,s0
 8f4:	30490002 	andi	t1,v0,0x2
 8f8:	5520000c 	bnezl	t1,92c <L8089E4D8+0x84>
 8fc:	9218017c 	lbu	t8,380(s0)
 900:	960a001c 	lhu	t2,28(s0)
 904:	344d0002 	ori	t5,v0,0x2
 908:	000a5903 	sra	t3,t2,0x4
 90c:	316c000f 	andi	t4,t3,0xf
 910:	51800006 	beqzl	t4,92c <L8089E4D8+0x84>
 914:	9218017c 	lbu	t8,380(s0)
 918:	a06d0000 	sb	t5,0(v1)
 91c:	920e017c 	lbu	t6,380(s0)
 920:	35cf0002 	ori	t7,t6,0x2
 924:	a20f017c 	sb	t7,380(s0)
 928:	9218017c 	lbu	t8,380(s0)
 92c:	33190002 	andi	t9,t8,0x2
 930:	53200004 	beqzl	t9,944 <L8089E4D8+0x9c>
 934:	9602001c 	lhu	v0,28(s0)
 938:	0c000000 	jal	0 <func_8089DC30>
 93c:	24052024 	li	a1,8228
 940:	9602001c 	lhu	v0,28(s0)
 944:	00021303 	sra	v0,v0,0xc
 948:	3042000f 	andi	v0,v0,0xf
 94c:	24010003 	li	at,3
 950:	10410007 	beq	v0,at,970 <L8089E4D8+0xc8>
 954:	8fa90044 	lw	t1,68(sp)
 958:	24010004 	li	at,4
 95c:	10410004 	beq	v0,at,970 <L8089E4D8+0xc8>
 960:	24010005 	li	at,5
 964:	10410002 	beq	v0,at,970 <L8089E4D8+0xc8>
 968:	24010006 	li	at,6
 96c:	14410027 	bne	v0,at,a0c <L8089E4D8+0x164>
 970:	3c0a0001 	lui	t2,0x1
 974:	01495021 	addu	t2,t2,t1
 978:	814a1cbc 	lb	t2,7356(t2)
 97c:	82080003 	lb	t0,3(s0)
 980:	550a0023 	bnel	t0,t2,a10 <L8089E4D8+0x168>
 984:	8fbf001c 	lw	ra,28(sp)
 988:	860b0032 	lh	t3,50(s0)
 98c:	3c010000 	lui	at,0x0
 990:	c4300000 	lwc1	$f16,0(at)
 994:	448b4000 	mtc1	t3,$f8
 998:	00002825 	move	a1,zero
 99c:	468042a0 	cvt.s.w	$f10,$f8
 9a0:	46105302 	mul.s	$f12,$f10,$f16
 9a4:	0c000000 	jal	0 <func_8089DC30>
 9a8:	00000000 	nop
 9ac:	3c040000 	lui	a0,0x0
 9b0:	24840000 	addiu	a0,a0,0
 9b4:	0c000000 	jal	0 <func_8089DC30>
 9b8:	27a50028 	addiu	a1,sp,40
 9bc:	c6120024 	lwc1	$f18,36(s0)
 9c0:	c7a40028 	lwc1	$f4,40(sp)
 9c4:	8e0c011c 	lw	t4,284(s0)
 9c8:	2401fffe 	li	at,-2
 9cc:	46049180 	add.s	$f6,$f18,$f4
 9d0:	e5860024 	swc1	$f6,36(t4)
 9d4:	c7aa002c 	lwc1	$f10,44(sp)
 9d8:	c6080028 	lwc1	$f8,40(s0)
 9dc:	8e0d011c 	lw	t5,284(s0)
 9e0:	460a4400 	add.s	$f16,$f8,$f10
 9e4:	e5b00028 	swc1	$f16,40(t5)
 9e8:	c7a40030 	lwc1	$f4,48(sp)
 9ec:	c612002c 	lwc1	$f18,44(s0)
 9f0:	8e0e011c 	lw	t6,284(s0)
 9f4:	46049180 	add.s	$f6,$f18,$f4
 9f8:	e5c6002c 	swc1	$f6,44(t6)
 9fc:	8e02011c 	lw	v0,284(s0)
 a00:	8c4f0004 	lw	t7,4(v0)
 a04:	01e1c024 	and	t8,t7,at
 a08:	ac580004 	sw	t8,4(v0)
 a0c:	8fbf001c 	lw	ra,28(sp)
 a10:	8fb00018 	lw	s0,24(sp)
 a14:	27bd0040 	addiu	sp,sp,64
 a18:	03e00008 	jr	ra
 a1c:	00000000 	nop

00000a20 <func_8089E650>:
 a20:	27bdffb8 	addiu	sp,sp,-72
 a24:	afbf001c 	sw	ra,28(sp)
 a28:	afb00018 	sw	s0,24(sp)
 a2c:	afa5004c 	sw	a1,76(sp)
 a30:	9482001c 	lhu	v0,28(a0)
 a34:	3c010000 	lui	at,0x0
 a38:	c4280000 	lwc1	$f8,0(at)
 a3c:	00027103 	sra	t6,v0,0x4
 a40:	31cf000f 	andi	t7,t6,0xf
 a44:	448f2000 	mtc1	t7,$f4
 a48:	00808025 	move	s0,a0
 a4c:	3c010001 	lui	at,0x1
 a50:	468021a0 	cvt.s.w	$f6,$f4
 a54:	00023203 	sra	a2,v0,0x8
 a58:	30c6000f 	andi	a2,a2,0xf
 a5c:	27a5003c 	addiu	a1,sp,60
 a60:	46083282 	mul.s	$f10,$f6,$f8
 a64:	e48a0068 	swc1	$f10,104(a0)
 a68:	8fa3004c 	lw	v1,76(sp)
 a6c:	8e070184 	lw	a3,388(s0)
 a70:	00611821 	addu	v1,v1,at
 a74:	8c641e08 	lw	a0,7688(v1)
 a78:	0c000000 	jal	0 <func_8089DC30>
 a7c:	afa30028 	sw	v1,40(sp)
 a80:	02002025 	move	a0,s0
 a84:	0c000000 	jal	0 <func_8089DC30>
 a88:	27a5003c 	addiu	a1,sp,60
 a8c:	c6120068 	lwc1	$f18,104(s0)
 a90:	26040024 	addiu	a0,s0,36
 a94:	27a5003c 	addiu	a1,sp,60
 a98:	4612003c 	c.lt.s	$f0,$f18
 a9c:	26060030 	addiu	a2,s0,48
 aa0:	24070001 	li	a3,1
 aa4:	45000002 	bc1f	ab0 <func_8089E650+0x90>
 aa8:	00000000 	nop
 aac:	e6000068 	swc1	$f0,104(s0)
 ab0:	0c000000 	jal	0 <func_8089DC30>
 ab4:	afa40020 	sw	a0,32(sp)
 ab8:	0c000000 	jal	0 <func_8089DC30>
 abc:	02002025 	move	a0,s0
 ac0:	c7a4003c 	lwc1	$f4,60(sp)
 ac4:	c6060024 	lwc1	$f6,36(s0)
 ac8:	3c014000 	lui	at,0x4000
 acc:	44818000 	mtc1	at,$f16
 ad0:	46062081 	sub.s	$f2,$f4,$f6
 ad4:	c7a80040 	lwc1	$f8,64(sp)
 ad8:	c60a0028 	lwc1	$f10,40(s0)
 adc:	c604002c 	lwc1	$f4,44(s0)
 ae0:	46001005 	abs.s	$f0,$f2
 ae4:	c7b20044 	lwc1	$f18,68(sp)
 ae8:	4610003c 	c.lt.s	$f0,$f16
 aec:	460a4301 	sub.s	$f12,$f8,$f10
 af0:	4500001e 	bc1f	b6c <func_8089E650+0x14c>
 af4:	46049381 	sub.s	$f14,$f18,$f4
 af8:	46006005 	abs.s	$f0,$f12
 afc:	4610003c 	c.lt.s	$f0,$f16
 b00:	00000000 	nop
 b04:	45000019 	bc1f	b6c <func_8089E650+0x14c>
 b08:	00000000 	nop
 b0c:	46007005 	abs.s	$f0,$f14
 b10:	4610003c 	c.lt.s	$f0,$f16
 b14:	00000000 	nop
 b18:	45000014 	bc1f	b6c <func_8089E650+0x14c>
 b1c:	00000000 	nop
 b20:	8e180184 	lw	t8,388(s0)
 b24:	8fa20028 	lw	v0,40(sp)
 b28:	9606001c 	lhu	a2,28(s0)
 b2c:	27190001 	addiu	t9,t8,1
 b30:	ae190184 	sw	t9,388(s0)
 b34:	8c491e08 	lw	t1,7688(v0)
 b38:	00063203 	sra	a2,a2,0x8
 b3c:	30c6000f 	andi	a2,a2,0xf
 b40:	000650c0 	sll	t2,a2,0x3
 b44:	012a5821 	addu	t3,t1,t2
 b48:	916c0000 	lbu	t4,0(t3)
 b4c:	00003825 	move	a3,zero
 b50:	032c082a 	slt	at,t9,t4
 b54:	14200005 	bnez	at,b6c <func_8089E650+0x14c>
 b58:	00000000 	nop
 b5c:	ae000184 	sw	zero,388(s0)
 b60:	8fa50020 	lw	a1,32(sp)
 b64:	0c000000 	jal	0 <func_8089DC30>
 b68:	8c441e08 	lw	a0,7688(v0)
 b6c:	3c030000 	lui	v1,0x0
 b70:	24630000 	addiu	v1,v1,0
 b74:	90620000 	lbu	v0,0(v1)
 b78:	02002025 	move	a0,s0
 b7c:	304d0001 	andi	t5,v0,0x1
 b80:	55a0000c 	bnezl	t5,bb4 <func_8089E650+0x194>
 b84:	920b017c 	lbu	t3,380(s0)
 b88:	960e001c 	lhu	t6,28(s0)
 b8c:	34590001 	ori	t9,v0,0x1
 b90:	000e7903 	sra	t7,t6,0x4
 b94:	31f8000f 	andi	t8,t7,0xf
 b98:	53000006 	beqzl	t8,bb4 <func_8089E650+0x194>
 b9c:	920b017c 	lbu	t3,380(s0)
 ba0:	a0790000 	sb	t9,0(v1)
 ba4:	9209017c 	lbu	t1,380(s0)
 ba8:	352a0001 	ori	t2,t1,0x1
 bac:	a20a017c 	sb	t2,380(s0)
 bb0:	920b017c 	lbu	t3,380(s0)
 bb4:	31680001 	andi	t0,t3,0x1
 bb8:	51000004 	beqzl	t0,bcc <func_8089E650+0x1ac>
 bbc:	8fbf001c 	lw	ra,28(sp)
 bc0:	0c000000 	jal	0 <func_8089DC30>
 bc4:	24052082 	li	a1,8322
 bc8:	8fbf001c 	lw	ra,28(sp)
 bcc:	8fb00018 	lw	s0,24(sp)
 bd0:	27bd0048 	addiu	sp,sp,72
 bd4:	03e00008 	jr	ra
 bd8:	00000000 	nop

00000bdc <BgMizuMovebg_Update>:
 bdc:	27bdffe8 	addiu	sp,sp,-24
 be0:	afbf0014 	sw	ra,20(sp)
 be4:	8c990164 	lw	t9,356(a0)
 be8:	0320f809 	jalr	t9
 bec:	00000000 	nop
 bf0:	8fbf0014 	lw	ra,20(sp)
 bf4:	27bd0018 	addiu	sp,sp,24
 bf8:	03e00008 	jr	ra
 bfc:	00000000 	nop

00000c00 <BgMizuMovebg_Draw>:
 c00:	27bdff70 	addiu	sp,sp,-144
 c04:	afb10048 	sw	s1,72(sp)
 c08:	00a08825 	move	s1,a1
 c0c:	afbf004c 	sw	ra,76(sp)
 c10:	afb00044 	sw	s0,68(sp)
 c14:	afa40090 	sw	a0,144(sp)
 c18:	8ca50000 	lw	a1,0(a1)
 c1c:	3c060000 	lui	a2,0x0
 c20:	24c60000 	addiu	a2,a2,0
 c24:	27a40070 	addiu	a0,sp,112
 c28:	240702f2 	li	a3,754
 c2c:	0c000000 	jal	0 <func_8089DC30>
 c30:	00a08025 	move	s0,a1
 c34:	3c0e0001 	lui	t6,0x1
 c38:	01d17021 	addu	t6,t6,s1
 c3c:	8dce1de4 	lw	t6,7652(t6)
 c40:	afae0084 	sw	t6,132(sp)
 c44:	0c000000 	jal	0 <func_8089DC30>
 c48:	8e240000 	lw	a0,0(s1)
 c4c:	8e0202c0 	lw	v0,704(s0)
 c50:	3c18db06 	lui	t8,0xdb06
 c54:	37180020 	ori	t8,t8,0x20
 c58:	244f0008 	addiu	t7,v0,8
 c5c:	ae0f02c0 	sw	t7,704(s0)
 c60:	ac580000 	sw	t8,0(v0)
 c64:	8e240000 	lw	a0,0(s1)
 c68:	8fac0090 	lw	t4,144(sp)
 c6c:	24190020 	li	t9,32
 c70:	24080020 	li	t0,32
 c74:	24090001 	li	t1,1
 c78:	240a0020 	li	t2,32
 c7c:	240b0020 	li	t3,32
 c80:	afab0028 	sw	t3,40(sp)
 c84:	afaa0024 	sw	t2,36(sp)
 c88:	afa90018 	sw	t1,24(sp)
 c8c:	afa80014 	sw	t0,20(sp)
 c90:	afb90010 	sw	t9,16(sp)
 c94:	afa00034 	sw	zero,52(sp)
 c98:	afa00030 	sw	zero,48(sp)
 c9c:	afa0002c 	sw	zero,44(sp)
 ca0:	afa00020 	sw	zero,32(sp)
 ca4:	afa0001c 	sw	zero,28(sp)
 ca8:	8fa60084 	lw	a2,132(sp)
 cac:	8d8d016c 	lw	t5,364(t4)
 cb0:	00002825 	move	a1,zero
 cb4:	00003825 	move	a3,zero
 cb8:	afa2006c 	sw	v0,108(sp)
 cbc:	afa60054 	sw	a2,84(sp)
 cc0:	0c000000 	jal	0 <func_8089DC30>
 cc4:	afad0038 	sw	t5,56(sp)
 cc8:	8fa3006c 	lw	v1,108(sp)
 ccc:	3c0fdb06 	lui	t7,0xdb06
 cd0:	35ef0024 	ori	t7,t7,0x24
 cd4:	ac620004 	sw	v0,4(v1)
 cd8:	8e0202c0 	lw	v0,704(s0)
 cdc:	24180020 	li	t8,32
 ce0:	24190020 	li	t9,32
 ce4:	244e0008 	addiu	t6,v0,8
 ce8:	ae0e02c0 	sw	t6,704(s0)
 cec:	ac4f0000 	sw	t7,0(v0)
 cf0:	8e240000 	lw	a0,0(s1)
 cf4:	8fab0090 	lw	t3,144(sp)
 cf8:	24080001 	li	t0,1
 cfc:	24090020 	li	t1,32
 d00:	240a0020 	li	t2,32
 d04:	afaa0028 	sw	t2,40(sp)
 d08:	afa90024 	sw	t1,36(sp)
 d0c:	afa80018 	sw	t0,24(sp)
 d10:	afa00034 	sw	zero,52(sp)
 d14:	afa00030 	sw	zero,48(sp)
 d18:	afa0002c 	sw	zero,44(sp)
 d1c:	afa00020 	sw	zero,32(sp)
 d20:	afa0001c 	sw	zero,28(sp)
 d24:	afb90014 	sw	t9,20(sp)
 d28:	afb80010 	sw	t8,16(sp)
 d2c:	8d6c0170 	lw	t4,368(t3)
 d30:	8fa60054 	lw	a2,84(sp)
 d34:	00002825 	move	a1,zero
 d38:	00003825 	move	a3,zero
 d3c:	afa20068 	sw	v0,104(sp)
 d40:	0c000000 	jal	0 <func_8089DC30>
 d44:	afac0038 	sw	t4,56(sp)
 d48:	8fa30068 	lw	v1,104(sp)
 d4c:	3c0edb06 	lui	t6,0xdb06
 d50:	35ce0028 	ori	t6,t6,0x28
 d54:	ac620004 	sw	v0,4(v1)
 d58:	8e0202c0 	lw	v0,704(s0)
 d5c:	240f0020 	li	t7,32
 d60:	24180020 	li	t8,32
 d64:	244d0008 	addiu	t5,v0,8
 d68:	ae0d02c0 	sw	t5,704(s0)
 d6c:	ac4e0000 	sw	t6,0(v0)
 d70:	8e240000 	lw	a0,0(s1)
 d74:	8faa0090 	lw	t2,144(sp)
 d78:	24190001 	li	t9,1
 d7c:	24080020 	li	t0,32
 d80:	24090020 	li	t1,32
 d84:	afa90028 	sw	t1,40(sp)
 d88:	afa80024 	sw	t0,36(sp)
 d8c:	afb90018 	sw	t9,24(sp)
 d90:	afa00034 	sw	zero,52(sp)
 d94:	afa00030 	sw	zero,48(sp)
 d98:	afa0002c 	sw	zero,44(sp)
 d9c:	afa00020 	sw	zero,32(sp)
 da0:	afa0001c 	sw	zero,28(sp)
 da4:	afb80014 	sw	t8,20(sp)
 da8:	afaf0010 	sw	t7,16(sp)
 dac:	8d4b0174 	lw	t3,372(t2)
 db0:	8fa60054 	lw	a2,84(sp)
 db4:	00002825 	move	a1,zero
 db8:	00003825 	move	a3,zero
 dbc:	afa20064 	sw	v0,100(sp)
 dc0:	0c000000 	jal	0 <func_8089DC30>
 dc4:	afab0038 	sw	t3,56(sp)
 dc8:	8fa30064 	lw	v1,100(sp)
 dcc:	3c0ddb06 	lui	t5,0xdb06
 dd0:	35ad002c 	ori	t5,t5,0x2c
 dd4:	ac620004 	sw	v0,4(v1)
 dd8:	8e0202c0 	lw	v0,704(s0)
 ddc:	240e0020 	li	t6,32
 de0:	240f0020 	li	t7,32
 de4:	244c0008 	addiu	t4,v0,8
 de8:	ae0c02c0 	sw	t4,704(s0)
 dec:	ac4d0000 	sw	t5,0(v0)
 df0:	8e240000 	lw	a0,0(s1)
 df4:	8fa90090 	lw	t1,144(sp)
 df8:	8fa60084 	lw	a2,132(sp)
 dfc:	24180001 	li	t8,1
 e00:	24190020 	li	t9,32
 e04:	24080020 	li	t0,32
 e08:	afa80028 	sw	t0,40(sp)
 e0c:	afb90024 	sw	t9,36(sp)
 e10:	afb80018 	sw	t8,24(sp)
 e14:	afa00034 	sw	zero,52(sp)
 e18:	afa00030 	sw	zero,48(sp)
 e1c:	afa0002c 	sw	zero,44(sp)
 e20:	afa00020 	sw	zero,32(sp)
 e24:	afa0001c 	sw	zero,28(sp)
 e28:	afaf0014 	sw	t7,20(sp)
 e2c:	afae0010 	sw	t6,16(sp)
 e30:	8d2a0178 	lw	t2,376(t1)
 e34:	00c00821 	move	at,a2
 e38:	00063080 	sll	a2,a2,0x2
 e3c:	00c13023 	subu	a2,a2,at
 e40:	00002825 	move	a1,zero
 e44:	00003825 	move	a3,zero
 e48:	afa20060 	sw	v0,96(sp)
 e4c:	0c000000 	jal	0 <func_8089DC30>
 e50:	afaa0038 	sw	t2,56(sp)
 e54:	8fa30060 	lw	v1,96(sp)
 e58:	3c0cda38 	lui	t4,0xda38
 e5c:	358c0003 	ori	t4,t4,0x3
 e60:	ac620004 	sw	v0,4(v1)
 e64:	8e0202c0 	lw	v0,704(s0)
 e68:	3c050000 	lui	a1,0x0
 e6c:	24a50000 	addiu	a1,a1,0
 e70:	244b0008 	addiu	t3,v0,8
 e74:	ae0b02c0 	sw	t3,704(s0)
 e78:	ac4c0000 	sw	t4,0(v0)
 e7c:	8e240000 	lw	a0,0(s1)
 e80:	24060314 	li	a2,788
 e84:	0c000000 	jal	0 <func_8089DC30>
 e88:	afa2005c 	sw	v0,92(sp)
 e8c:	8fa3005c 	lw	v1,92(sp)
 e90:	3c060000 	lui	a2,0x0
 e94:	24c60000 	addiu	a2,a2,0
 e98:	ac620004 	sw	v0,4(v1)
 e9c:	8fad0090 	lw	t5,144(sp)
 ea0:	27a40070 	addiu	a0,sp,112
 ea4:	2407031b 	li	a3,795
 ea8:	8dae0180 	lw	t6,384(t5)
 eac:	11c00009 	beqz	t6,ed4 <BgMizuMovebg_Draw+0x2d4>
 eb0:	00000000 	nop
 eb4:	8e0202c0 	lw	v0,704(s0)
 eb8:	3c18de00 	lui	t8,0xde00
 ebc:	244f0008 	addiu	t7,v0,8
 ec0:	ae0f02c0 	sw	t7,704(s0)
 ec4:	ac580000 	sw	t8,0(v0)
 ec8:	8fb90090 	lw	t9,144(sp)
 ecc:	8f280180 	lw	t0,384(t9)
 ed0:	ac480004 	sw	t0,4(v0)
 ed4:	0c000000 	jal	0 <func_8089DC30>
 ed8:	8e250000 	lw	a1,0(s1)
 edc:	8fbf004c 	lw	ra,76(sp)
 ee0:	8fb00044 	lw	s0,68(sp)
 ee4:	8fb10048 	lw	s1,72(sp)
 ee8:	03e00008 	jr	ra
 eec:	27bd0090 	addiu	sp,sp,144
