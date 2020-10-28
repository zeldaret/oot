
build/src/overlays/actors/ovl_Demo_Go/z_demo_go.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8097C870>:
   0:	8482001c 	lh	v0,28(a0)
   4:	24010001 	li	at,1
   8:	10400005 	beqz	v0,20 <func_8097C870+0x20>
   c:	00000000 	nop
  10:	10410005 	beq	v0,at,28 <func_8097C870+0x28>
  14:	24030005 	li	v1,5
  18:	10000005 	b	30 <func_8097C870+0x30>
  1c:	00000000 	nop
  20:	03e00008 	jr	ra
  24:	24020003 	li	v0,3
  28:	03e00008 	jr	ra
  2c:	24020004 	li	v0,4
  30:	03e00008 	jr	ra
  34:	00601025 	move	v0,v1

00000038 <func_8097C8A8>:
  38:	27bdffd0 	addiu	sp,sp,-48
  3c:	afbf0014 	sw	ra,20(sp)
  40:	afa40030 	sw	a0,48(sp)
  44:	afa50034 	sw	a1,52(sp)
  48:	8482001c 	lh	v0,28(a0)
  4c:	24010001 	li	at,1
  50:	8fa40034 	lw	a0,52(sp)
  54:	10400002 	beqz	v0,60 <func_8097C8A8+0x28>
  58:	8fa50030 	lw	a1,48(sp)
  5c:	1441000c 	bne	v0,at,90 <func_8097C8A8+0x58>
  60:	3c010001 	lui	at,0x1
  64:	34211d60 	ori	at,at,0x1d60
  68:	00812021 	addu	a0,a0,at
  6c:	24a50024 	addiu	a1,a1,36
  70:	27a60020 	addiu	a2,sp,32
  74:	0c000000 	jal	0 <func_8097C870>
  78:	27a7001c 	addiu	a3,sp,28
  7c:	8fa40034 	lw	a0,52(sp)
  80:	27a50020 	addiu	a1,sp,32
  84:	24060014 	li	a2,20
  88:	0c000000 	jal	0 <func_8097C870>
  8c:	240728a0 	li	a3,10400
  90:	8fbf0014 	lw	ra,20(sp)
  94:	27bd0030 	addiu	sp,sp,48
  98:	03e00008 	jr	ra
  9c:	00000000 	nop

000000a0 <DemoGo_Destroy>:
  a0:	27bdffe8 	addiu	sp,sp,-24
  a4:	afbf0014 	sw	ra,20(sp)
  a8:	0c000000 	jal	0 <func_8097C870>
  ac:	2484014c 	addiu	a0,a0,332
  b0:	8fbf0014 	lw	ra,20(sp)
  b4:	27bd0018 	addiu	sp,sp,24
  b8:	03e00008 	jr	ra
  bc:	00000000 	nop

000000c0 <func_8097C930>:
  c0:	27bdffc8 	addiu	sp,sp,-56
  c4:	afbf0014 	sw	ra,20(sp)
  c8:	848e0192 	lh	t6,402(a0)
  cc:	00803025 	move	a2,a0
  d0:	24c30192 	addiu	v1,a2,402
  d4:	15c00003 	bnez	t6,e4 <func_8097C930+0x24>
  d8:	00001025 	move	v0,zero
  dc:	10000005 	b	f4 <func_8097C930+0x34>
  e0:	24830192 	addiu	v1,a0,402
  e4:	846f0000 	lh	t7,0(v1)
  e8:	25f8ffff 	addiu	t8,t7,-1
  ec:	a4780000 	sh	t8,0(v1)
  f0:	84620000 	lh	v0,0(v1)
  f4:	14400008 	bnez	v0,118 <func_8097C930+0x58>
  f8:	2404003c 	li	a0,60
  fc:	2405003c 	li	a1,60
 100:	afa3001c 	sw	v1,28(sp)
 104:	0c000000 	jal	0 <func_8097C870>
 108:	afa60038 	sw	a2,56(sp)
 10c:	8fa3001c 	lw	v1,28(sp)
 110:	8fa60038 	lw	a2,56(sp)
 114:	a4620000 	sh	v0,0(v1)
 118:	84790000 	lh	t9,0(v1)
 11c:	24c20190 	addiu	v0,a2,400
 120:	a4590000 	sh	t9,0(v0)
 124:	84480000 	lh	t0,0(v0)
 128:	29010003 	slti	at,t0,3
 12c:	54200003 	bnezl	at,13c <func_8097C930+0x7c>
 130:	8fbf0014 	lw	ra,20(sp)
 134:	a4400000 	sh	zero,0(v0)
 138:	8fbf0014 	lw	ra,20(sp)
 13c:	27bd0038 	addiu	sp,sp,56
 140:	03e00008 	jr	ra
 144:	00000000 	nop

00000148 <func_8097C9B8>:
 148:	27bdffe8 	addiu	sp,sp,-24
 14c:	afbf0014 	sw	ra,20(sp)
 150:	248400e4 	addiu	a0,a0,228
 154:	0c000000 	jal	0 <func_8097C870>
 158:	2405387b 	li	a1,14459
 15c:	8fbf0014 	lw	ra,20(sp)
 160:	27bd0018 	addiu	sp,sp,24
 164:	03e00008 	jr	ra
 168:	00000000 	nop

0000016c <func_8097C9DC>:
 16c:	27bdffd8 	addiu	sp,sp,-40
 170:	afa40028 	sw	a0,40(sp)
 174:	afbf0014 	sw	ra,20(sp)
 178:	2484014c 	addiu	a0,a0,332
 17c:	afa4001c 	sw	a0,28(sp)
 180:	0c000000 	jal	0 <func_8097C870>
 184:	3c054140 	lui	a1,0x4140
 188:	14400005 	bnez	v0,1a0 <func_8097C9DC+0x34>
 18c:	8fa4001c 	lw	a0,28(sp)
 190:	0c000000 	jal	0 <func_8097C870>
 194:	3c0541c8 	lui	a1,0x41c8
 198:	50400006 	beqzl	v0,1b4 <func_8097C9DC+0x48>
 19c:	8fbf0014 	lw	ra,20(sp)
 1a0:	8fa40028 	lw	a0,40(sp)
 1a4:	240538b8 	li	a1,14520
 1a8:	0c000000 	jal	0 <func_8097C870>
 1ac:	248400e4 	addiu	a0,a0,228
 1b0:	8fbf0014 	lw	ra,20(sp)
 1b4:	27bd0028 	addiu	sp,sp,40
 1b8:	03e00008 	jr	ra
 1bc:	00000000 	nop

000001c0 <func_8097CA30>:
 1c0:	27bdffe0 	addiu	sp,sp,-32
 1c4:	3c0141f0 	lui	at,0x41f0
 1c8:	44810000 	mtc1	at,$f0
 1cc:	afa50024 	sw	a1,36(sp)
 1d0:	00802825 	move	a1,a0
 1d4:	afbf001c 	sw	ra,28(sp)
 1d8:	afa40020 	sw	a0,32(sp)
 1dc:	240e0005 	li	t6,5
 1e0:	44070000 	mfc1	a3,$f0
 1e4:	afae0014 	sw	t6,20(sp)
 1e8:	8fa40024 	lw	a0,36(sp)
 1ec:	3c064296 	lui	a2,0x4296
 1f0:	0c000000 	jal	0 <func_8097C870>
 1f4:	e7a00010 	swc1	$f0,16(sp)
 1f8:	8fbf001c 	lw	ra,28(sp)
 1fc:	27bd0020 	addiu	sp,sp,32
 200:	03e00008 	jr	ra
 204:	00000000 	nop

00000208 <func_8097CA78>:
 208:	27bdffc8 	addiu	sp,sp,-56
 20c:	afbf0024 	sw	ra,36(sp)
 210:	afa40038 	sw	a0,56(sp)
 214:	afa5003c 	sw	a1,60(sp)
 218:	8c980024 	lw	t8,36(a0)
 21c:	27a50028 	addiu	a1,sp,40
 220:	3c020000 	lui	v0,0x0
 224:	acb80000 	sw	t8,0(a1)
 228:	8c8f0028 	lw	t7,40(a0)
 22c:	3c0142c8 	lui	at,0x42c8
 230:	44814000 	mtc1	at,$f8
 234:	acaf0004 	sw	t7,4(a1)
 238:	8c98002c 	lw	t8,44(a0)
 23c:	acb80008 	sw	t8,8(a1)
 240:	8c420000 	lw	v0,0(v0)
 244:	8fa4003c 	lw	a0,60(sp)
 248:	8459146a 	lh	t9,5226(v0)
 24c:	8448146e 	lh	t0,5230(v0)
 250:	8447146c 	lh	a3,5228(v0)
 254:	44992000 	mtc1	t9,$f4
 258:	2509012c 	addiu	t1,t0,300
 25c:	afa90010 	sw	t1,16(sp)
 260:	468021a0 	cvt.s.w	$f6,$f4
 264:	844a1470 	lh	t2,5232(v0)
 268:	afa00018 	sw	zero,24(sp)
 26c:	24e7000a 	addiu	a3,a3,10
 270:	afaa0014 	sw	t2,20(sp)
 274:	46083280 	add.s	$f10,$f6,$f8
 278:	44065000 	mfc1	a2,$f10
 27c:	0c000000 	jal	0 <func_8097C870>
 280:	00000000 	nop
 284:	0c000000 	jal	0 <func_8097C870>
 288:	8fa40038 	lw	a0,56(sp)
 28c:	8fbf0024 	lw	ra,36(sp)
 290:	27bd0038 	addiu	sp,sp,56
 294:	03e00008 	jr	ra
 298:	00000000 	nop

0000029c <func_8097CB0C>:
 29c:	27bdffc0 	addiu	sp,sp,-64
 2a0:	afbf0014 	sw	ra,20(sp)
 2a4:	afa40040 	sw	a0,64(sp)
 2a8:	90ae1d6c 	lbu	t6,7532(a1)
 2ac:	51c00037 	beqzl	t6,38c <func_8097CB0C+0xf0>
 2b0:	8fbf0014 	lw	ra,20(sp)
 2b4:	0c000000 	jal	0 <func_8097C870>
 2b8:	afa50044 	sw	a1,68(sp)
 2bc:	8fa50044 	lw	a1,68(sp)
 2c0:	00027880 	sll	t7,v0,0x2
 2c4:	24a71d64 	addiu	a3,a1,7524
 2c8:	00efc021 	addu	t8,a3,t7
 2cc:	8f030028 	lw	v1,40(t8)
 2d0:	5060002e 	beqzl	v1,38c <func_8097CB0C+0xf0>
 2d4:	8fbf0014 	lw	ra,20(sp)
 2d8:	94640004 	lhu	a0,4(v1)
 2dc:	94650002 	lhu	a1,2(v1)
 2e0:	94e60010 	lhu	a2,16(a3)
 2e4:	0c000000 	jal	0 <func_8097C870>
 2e8:	afa30030 	sw	v1,48(sp)
 2ec:	8fa30030 	lw	v1,48(sp)
 2f0:	8fa50040 	lw	a1,64(sp)
 2f4:	8c680010 	lw	t0,16(v1)
 2f8:	8c79000c 	lw	t9,12(v1)
 2fc:	8c6a0018 	lw	t2,24(v1)
 300:	8c690014 	lw	t1,20(v1)
 304:	44883000 	mtc1	t0,$f6
 308:	8c6c0020 	lw	t4,32(v1)
 30c:	44992000 	mtc1	t9,$f4
 310:	8c6b001c 	lw	t3,28(v1)
 314:	448a5000 	mtc1	t2,$f10
 318:	46803320 	cvt.s.w	$f12,$f6
 31c:	44894000 	mtc1	t1,$f8
 320:	448c3000 	mtc1	t4,$f6
 324:	24a20024 	addiu	v0,a1,36
 328:	468020a0 	cvt.s.w	$f2,$f4
 32c:	448b2000 	mtc1	t3,$f4
 330:	46805420 	cvt.s.w	$f16,$f10
 334:	468043a0 	cvt.s.w	$f14,$f8
 338:	46803220 	cvt.s.w	$f8,$f6
 33c:	468024a0 	cvt.s.w	$f18,$f4
 340:	e7a80018 	swc1	$f8,24(sp)
 344:	46028281 	sub.s	$f10,$f16,$f2
 348:	460c9201 	sub.s	$f8,$f18,$f12
 34c:	46005102 	mul.s	$f4,$f10,$f0
 350:	00000000 	nop
 354:	46004282 	mul.s	$f10,$f8,$f0
 358:	46022180 	add.s	$f6,$f4,$f2
 35c:	460c5100 	add.s	$f4,$f10,$f12
 360:	e4460000 	swc1	$f6,0(v0)
 364:	e4440004 	swc1	$f4,4(v0)
 368:	c7a60018 	lwc1	$f6,24(sp)
 36c:	460e3201 	sub.s	$f8,$f6,$f14
 370:	46004282 	mul.s	$f10,$f8,$f0
 374:	460e5100 	add.s	$f4,$f10,$f14
 378:	e4440008 	swc1	$f4,8(v0)
 37c:	84640008 	lh	a0,8(v1)
 380:	a4a400b6 	sh	a0,182(a1)
 384:	a444000e 	sh	a0,14(v0)
 388:	8fbf0014 	lw	ra,20(sp)
 38c:	27bd0040 	addiu	sp,sp,64
 390:	03e00008 	jr	ra
 394:	00000000 	nop

00000398 <func_8097CC08>:
 398:	27bdffe8 	addiu	sp,sp,-24
 39c:	afbf0014 	sw	ra,20(sp)
 3a0:	3c014100 	lui	at,0x4100
 3a4:	c480019c 	lwc1	$f0,412(a0)
 3a8:	44812000 	mtc1	at,$f4
 3ac:	3c0e0000 	lui	t6,0x0
 3b0:	3c180000 	lui	t8,0x0
 3b4:	4604003c 	c.lt.s	$f0,$f4
 3b8:	00000000 	nop
 3bc:	45000012 	bc1f	408 <func_8097CC08+0x70>
 3c0:	00000000 	nop
 3c4:	8dce0000 	lw	t6,0(t6)
 3c8:	3c010000 	lui	at,0x0
 3cc:	c42a0094 	lwc1	$f10,148(at)
 3d0:	85cf1472 	lh	t7,5234(t6)
 3d4:	3c010000 	lui	at,0x0
 3d8:	c4320098 	lwc1	$f18,152(at)
 3dc:	448f3000 	mtc1	t7,$f6
 3e0:	3c013e00 	lui	at,0x3e00
 3e4:	46803220 	cvt.s.w	$f8,$f6
 3e8:	44813000 	mtc1	at,$f6
 3ec:	460a4402 	mul.s	$f16,$f8,$f10
 3f0:	46128100 	add.s	$f4,$f16,$f18
 3f4:	46062202 	mul.s	$f8,$f4,$f6
 3f8:	00000000 	nop
 3fc:	46004282 	mul.s	$f10,$f8,$f0
 400:	1000000d 	b	438 <func_8097CC08+0xa0>
 404:	e48a0068 	swc1	$f10,104(a0)
 408:	8f180000 	lw	t8,0(t8)
 40c:	3c010000 	lui	at,0x0
 410:	c424009c 	lwc1	$f4,156(at)
 414:	87191472 	lh	t9,5234(t8)
 418:	3c010000 	lui	at,0x0
 41c:	c42800a0 	lwc1	$f8,160(at)
 420:	44998000 	mtc1	t9,$f16
 424:	00000000 	nop
 428:	468084a0 	cvt.s.w	$f18,$f16
 42c:	46049182 	mul.s	$f6,$f18,$f4
 430:	46083280 	add.s	$f10,$f6,$f8
 434:	e48a0068 	swc1	$f10,104(a0)
 438:	0c000000 	jal	0 <func_8097C870>
 43c:	00000000 	nop
 440:	8fbf0014 	lw	ra,20(sp)
 444:	27bd0018 	addiu	sp,sp,24
 448:	03e00008 	jr	ra
 44c:	00000000 	nop

00000450 <func_8097CCC0>:
 450:	27bdffe8 	addiu	sp,sp,-24
 454:	afbf0014 	sw	ra,20(sp)
 458:	0c000000 	jal	0 <func_8097C870>
 45c:	00000000 	nop
 460:	8fbf0014 	lw	ra,20(sp)
 464:	27bd0018 	addiu	sp,sp,24
 468:	03e00008 	jr	ra
 46c:	00000000 	nop

00000470 <func_8097CCE0>:
 470:	27bdffe8 	addiu	sp,sp,-24
 474:	afbf0014 	sw	ra,20(sp)
 478:	90ae1d6c 	lbu	t6,7532(a1)
 47c:	00803825 	move	a3,a0
 480:	51c00024 	beqzl	t6,514 <func_8097CCE0+0xa4>
 484:	8fbf0014 	lw	ra,20(sp)
 488:	afa5001c 	sw	a1,28(sp)
 48c:	0c000000 	jal	0 <func_8097C870>
 490:	afa70018 	sw	a3,24(sp)
 494:	8fa6001c 	lw	a2,28(sp)
 498:	00027880 	sll	t7,v0,0x2
 49c:	8fa70018 	lw	a3,24(sp)
 4a0:	00cfc021 	addu	t8,a2,t7
 4a4:	8f051d8c 	lw	a1,7564(t8)
 4a8:	3c190000 	lui	t9,0x0
 4ac:	50a00019 	beqzl	a1,514 <func_8097CCE0+0xa4>
 4b0:	8fbf0014 	lw	ra,20(sp)
 4b4:	8f390000 	lw	t9,0(t9)
 4b8:	84e40032 	lh	a0,50(a3)
 4bc:	84a60008 	lh	a2,8(a1)
 4c0:	87221474 	lh	v0,5236(t9)
 4c4:	2408ff6a 	li	t0,-150
 4c8:	00c41823 	subu	v1,a2,a0
 4cc:	01024823 	subu	t1,t0,v0
 4d0:	0123082a 	slt	at,t1,v1
 4d4:	10200006 	beqz	at,4f0 <func_8097CCE0+0x80>
 4d8:	244a0096 	addiu	t2,v0,150
 4dc:	006a082a 	slt	at,v1,t2
 4e0:	10200003 	beqz	at,4f0 <func_8097CCE0+0x80>
 4e4:	00000000 	nop
 4e8:	10000007 	b	508 <func_8097CCE0+0x98>
 4ec:	00c01825 	move	v1,a2
 4f0:	18600003 	blez	v1,500 <func_8097CCE0+0x90>
 4f4:	00441821 	addu	v1,v0,a0
 4f8:	10000003 	b	508 <func_8097CCE0+0x98>
 4fc:	24630096 	addiu	v1,v1,150
 500:	00821823 	subu	v1,a0,v0
 504:	2463ff6a 	addiu	v1,v1,-150
 508:	a4e300b6 	sh	v1,182(a3)
 50c:	a4e30032 	sh	v1,50(a3)
 510:	8fbf0014 	lw	ra,20(sp)
 514:	27bd0018 	addiu	sp,sp,24
 518:	03e00008 	jr	ra
 51c:	00000000 	nop

00000520 <DemoGo_FrameUpdateMatrix>:
 520:	27bdffe8 	addiu	sp,sp,-24
 524:	afbf0014 	sw	ra,20(sp)
 528:	0c000000 	jal	0 <func_8097C870>
 52c:	2484014c 	addiu	a0,a0,332
 530:	8fbf0014 	lw	ra,20(sp)
 534:	27bd0018 	addiu	sp,sp,24
 538:	03e00008 	jr	ra
 53c:	00000000 	nop

00000540 <func_8097CDB0>:
 540:	27bdffe8 	addiu	sp,sp,-24
 544:	afbf0014 	sw	ra,20(sp)
 548:	afa5001c 	sw	a1,28(sp)
 54c:	0c000000 	jal	0 <func_8097C870>
 550:	afa60020 	sw	a2,32(sp)
 554:	8fa3001c 	lw	v1,28(sp)
 558:	00027880 	sll	t7,v0,0x2
 55c:	00001025 	move	v0,zero
 560:	906e1d6c 	lbu	t6,7532(v1)
 564:	24631d64 	addiu	v1,v1,7524
 568:	006fc021 	addu	t8,v1,t7
 56c:	11c0000a 	beqz	t6,598 <func_8097CDB0+0x58>
 570:	8fbf0014 	lw	ra,20(sp)
 574:	8f040028 	lw	a0,40(t8)
 578:	97b90022 	lhu	t9,34(sp)
 57c:	10800006 	beqz	a0,598 <func_8097CDB0+0x58>
 580:	00000000 	nop
 584:	94880000 	lhu	t0,0(a0)
 588:	17280003 	bne	t9,t0,598 <func_8097CDB0+0x58>
 58c:	00000000 	nop
 590:	10000001 	b	598 <func_8097CDB0+0x58>
 594:	24020001 	li	v0,1
 598:	03e00008 	jr	ra
 59c:	27bd0018 	addiu	sp,sp,24

000005a0 <func_8097CE10>:
 5a0:	afa50004 	sw	a1,4(sp)
 5a4:	240e0001 	li	t6,1
 5a8:	03e00008 	jr	ra
 5ac:	ac8e0194 	sw	t6,404(a0)

000005b0 <func_8097CE20>:
 5b0:	27bdffe8 	addiu	sp,sp,-24
 5b4:	afbf0014 	sw	ra,20(sp)
 5b8:	afa5001c 	sw	a1,28(sp)
 5bc:	afa40018 	sw	a0,24(sp)
 5c0:	0c000000 	jal	0 <func_8097C870>
 5c4:	24060002 	li	a2,2
 5c8:	1040000b 	beqz	v0,5f8 <func_8097CE20+0x48>
 5cc:	8fa40018 	lw	a0,24(sp)
 5d0:	240e0002 	li	t6,2
 5d4:	240f0001 	li	t7,1
 5d8:	ac8e0194 	sw	t6,404(a0)
 5dc:	ac8f0198 	sw	t7,408(a0)
 5e0:	afa40018 	sw	a0,24(sp)
 5e4:	0c000000 	jal	0 <func_8097C870>
 5e8:	8fa5001c 	lw	a1,28(sp)
 5ec:	8fa40018 	lw	a0,24(sp)
 5f0:	0c000000 	jal	0 <func_8097C870>
 5f4:	8fa5001c 	lw	a1,28(sp)
 5f8:	8fbf0014 	lw	ra,20(sp)
 5fc:	27bd0018 	addiu	sp,sp,24
 600:	03e00008 	jr	ra
 604:	00000000 	nop

00000608 <func_8097CE78>:
 608:	27bdffe8 	addiu	sp,sp,-24
 60c:	afbf0014 	sw	ra,20(sp)
 610:	afa40018 	sw	a0,24(sp)
 614:	90ae1d6c 	lbu	t6,7532(a1)
 618:	51c00015 	beqzl	t6,670 <func_8097CE78+0x68>
 61c:	8fbf0014 	lw	ra,20(sp)
 620:	0c000000 	jal	0 <func_8097C870>
 624:	afa5001c 	sw	a1,28(sp)
 628:	8fa5001c 	lw	a1,28(sp)
 62c:	00027880 	sll	t7,v0,0x2
 630:	24a31d64 	addiu	v1,a1,7524
 634:	006fc021 	addu	t8,v1,t7
 638:	8f040028 	lw	a0,40(t8)
 63c:	5080000c 	beqzl	a0,670 <func_8097CE78+0x68>
 640:	8fbf0014 	lw	ra,20(sp)
 644:	94790010 	lhu	t9,16(v1)
 648:	94880004 	lhu	t0,4(a0)
 64c:	0328082a 	slt	at,t9,t0
 650:	54200007 	bnezl	at,670 <func_8097CE78+0x68>
 654:	8fbf0014 	lw	ra,20(sp)
 658:	0c000000 	jal	0 <func_8097C870>
 65c:	8fa40018 	lw	a0,24(sp)
 660:	8faa0018 	lw	t2,24(sp)
 664:	24090003 	li	t1,3
 668:	ad490194 	sw	t1,404(t2)
 66c:	8fbf0014 	lw	ra,20(sp)
 670:	27bd0018 	addiu	sp,sp,24
 674:	03e00008 	jr	ra
 678:	00000000 	nop

0000067c <func_8097CEEC>:
 67c:	27bdffe8 	addiu	sp,sp,-24
 680:	afbf0014 	sw	ra,20(sp)
 684:	afa40018 	sw	a0,24(sp)
 688:	0c000000 	jal	0 <func_8097C870>
 68c:	24060003 	li	a2,3
 690:	10400003 	beqz	v0,6a0 <func_8097CEEC+0x24>
 694:	8faf0018 	lw	t7,24(sp)
 698:	240e0004 	li	t6,4
 69c:	adee0194 	sw	t6,404(t7)
 6a0:	8fbf0014 	lw	ra,20(sp)
 6a4:	27bd0018 	addiu	sp,sp,24
 6a8:	03e00008 	jr	ra
 6ac:	00000000 	nop

000006b0 <func_8097CF20>:
 6b0:	27bdffd8 	addiu	sp,sp,-40
 6b4:	afbf0024 	sw	ra,36(sp)
 6b8:	afa40028 	sw	a0,40(sp)
 6bc:	10c00017 	beqz	a2,71c <func_8097CF20+0x6c>
 6c0:	afa5002c 	sw	a1,44(sp)
 6c4:	3c040000 	lui	a0,0x0
 6c8:	0c000000 	jal	0 <func_8097C870>
 6cc:	24840000 	addiu	a0,a0,0
 6d0:	44822000 	mtc1	v0,$f4
 6d4:	3c01c100 	lui	at,0xc100
 6d8:	44814000 	mtc1	at,$f8
 6dc:	468021a0 	cvt.s.w	$f6,$f4
 6e0:	8fa40028 	lw	a0,40(sp)
 6e4:	3c050000 	lui	a1,0x0
 6e8:	24a50000 	addiu	a1,a1,0
 6ec:	3c063f80 	lui	a2,0x3f80
 6f0:	24070000 	li	a3,0
 6f4:	e7a60010 	swc1	$f6,16(sp)
 6f8:	afa00014 	sw	zero,20(sp)
 6fc:	e7a80018 	swc1	$f8,24(sp)
 700:	0c000000 	jal	0 <func_8097C870>
 704:	2484014c 	addiu	a0,a0,332
 708:	8fa20028 	lw	v0,40(sp)
 70c:	44805000 	mtc1	zero,$f10
 710:	240e0005 	li	t6,5
 714:	ac4e0194 	sw	t6,404(v0)
 718:	e44a019c 	swc1	$f10,412(v0)
 71c:	8fbf0024 	lw	ra,36(sp)
 720:	27bd0028 	addiu	sp,sp,40
 724:	03e00008 	jr	ra
 728:	00000000 	nop

0000072c <func_8097CF9C>:
 72c:	3c013f80 	lui	at,0x3f80
 730:	44813000 	mtc1	at,$f6
 734:	c484019c 	lwc1	$f4,412(a0)
 738:	3c014100 	lui	at,0x4100
 73c:	44818000 	mtc1	at,$f16
 740:	46062200 	add.s	$f8,$f4,$f6
 744:	240e0006 	li	t6,6
 748:	e488019c 	swc1	$f8,412(a0)
 74c:	c48a019c 	lwc1	$f10,412(a0)
 750:	460a803e 	c.le.s	$f16,$f10
 754:	00000000 	nop
 758:	45000002 	bc1f	764 <func_8097CF9C+0x38>
 75c:	00000000 	nop
 760:	ac8e0194 	sw	t6,404(a0)
 764:	03e00008 	jr	ra
 768:	00000000 	nop

0000076c <func_8097CFDC>:
 76c:	27bdffe8 	addiu	sp,sp,-24
 770:	afbf0014 	sw	ra,20(sp)
 774:	0c000000 	jal	0 <func_8097C870>
 778:	00000000 	nop
 77c:	8fbf0014 	lw	ra,20(sp)
 780:	27bd0018 	addiu	sp,sp,24
 784:	03e00008 	jr	ra
 788:	00000000 	nop

0000078c <func_8097CFFC>:
 78c:	27bdffe8 	addiu	sp,sp,-24
 790:	afbf0014 	sw	ra,20(sp)
 794:	0c000000 	jal	0 <func_8097C870>
 798:	00000000 	nop
 79c:	8fbf0014 	lw	ra,20(sp)
 7a0:	27bd0018 	addiu	sp,sp,24
 7a4:	03e00008 	jr	ra
 7a8:	00000000 	nop

000007ac <func_8097D01C>:
 7ac:	27bdffe8 	addiu	sp,sp,-24
 7b0:	afbf0014 	sw	ra,20(sp)
 7b4:	afa40018 	sw	a0,24(sp)
 7b8:	0c000000 	jal	0 <func_8097C870>
 7bc:	afa5001c 	sw	a1,28(sp)
 7c0:	8fa40018 	lw	a0,24(sp)
 7c4:	0c000000 	jal	0 <func_8097C870>
 7c8:	8fa5001c 	lw	a1,28(sp)
 7cc:	8fa40018 	lw	a0,24(sp)
 7d0:	0c000000 	jal	0 <func_8097C870>
 7d4:	8fa5001c 	lw	a1,28(sp)
 7d8:	8fbf0014 	lw	ra,20(sp)
 7dc:	27bd0018 	addiu	sp,sp,24
 7e0:	03e00008 	jr	ra
 7e4:	00000000 	nop

000007e8 <func_8097D058>:
 7e8:	27bdffe8 	addiu	sp,sp,-24
 7ec:	afbf0014 	sw	ra,20(sp)
 7f0:	afa40018 	sw	a0,24(sp)
 7f4:	0c000000 	jal	0 <func_8097C870>
 7f8:	afa5001c 	sw	a1,28(sp)
 7fc:	8fa40018 	lw	a0,24(sp)
 800:	0c000000 	jal	0 <func_8097C870>
 804:	8fa5001c 	lw	a1,28(sp)
 808:	8fbf0014 	lw	ra,20(sp)
 80c:	27bd0018 	addiu	sp,sp,24
 810:	03e00008 	jr	ra
 814:	00000000 	nop

00000818 <func_8097D088>:
 818:	27bdffe0 	addiu	sp,sp,-32
 81c:	afbf0014 	sw	ra,20(sp)
 820:	afa40020 	sw	a0,32(sp)
 824:	0c000000 	jal	0 <func_8097C870>
 828:	afa50024 	sw	a1,36(sp)
 82c:	0c000000 	jal	0 <func_8097C870>
 830:	8fa40020 	lw	a0,32(sp)
 834:	afa2001c 	sw	v0,28(sp)
 838:	0c000000 	jal	0 <func_8097C870>
 83c:	8fa40020 	lw	a0,32(sp)
 840:	8fa40020 	lw	a0,32(sp)
 844:	8fa50024 	lw	a1,36(sp)
 848:	0c000000 	jal	0 <func_8097C870>
 84c:	8fa6001c 	lw	a2,28(sp)
 850:	8fbf0014 	lw	ra,20(sp)
 854:	27bd0020 	addiu	sp,sp,32
 858:	03e00008 	jr	ra
 85c:	00000000 	nop

00000860 <func_8097D0D0>:
 860:	27bdffe0 	addiu	sp,sp,-32
 864:	afbf001c 	sw	ra,28(sp)
 868:	afb00018 	sw	s0,24(sp)
 86c:	00808025 	move	s0,a0
 870:	0c000000 	jal	0 <func_8097C870>
 874:	afa50024 	sw	a1,36(sp)
 878:	0c000000 	jal	0 <func_8097C870>
 87c:	02002025 	move	a0,s0
 880:	02002025 	move	a0,s0
 884:	0c000000 	jal	0 <func_8097C870>
 888:	8fa50024 	lw	a1,36(sp)
 88c:	0c000000 	jal	0 <func_8097C870>
 890:	02002025 	move	a0,s0
 894:	0c000000 	jal	0 <func_8097C870>
 898:	02002025 	move	a0,s0
 89c:	0c000000 	jal	0 <func_8097C870>
 8a0:	02002025 	move	a0,s0
 8a4:	0c000000 	jal	0 <func_8097C870>
 8a8:	02002025 	move	a0,s0
 8ac:	8fbf001c 	lw	ra,28(sp)
 8b0:	8fb00018 	lw	s0,24(sp)
 8b4:	27bd0020 	addiu	sp,sp,32
 8b8:	03e00008 	jr	ra
 8bc:	00000000 	nop

000008c0 <func_8097D130>:
 8c0:	27bdffe0 	addiu	sp,sp,-32
 8c4:	afbf001c 	sw	ra,28(sp)
 8c8:	afb00018 	sw	s0,24(sp)
 8cc:	00808025 	move	s0,a0
 8d0:	0c000000 	jal	0 <func_8097C870>
 8d4:	afa50024 	sw	a1,36(sp)
 8d8:	0c000000 	jal	0 <func_8097C870>
 8dc:	02002025 	move	a0,s0
 8e0:	02002025 	move	a0,s0
 8e4:	0c000000 	jal	0 <func_8097C870>
 8e8:	8fa50024 	lw	a1,36(sp)
 8ec:	0c000000 	jal	0 <func_8097C870>
 8f0:	02002025 	move	a0,s0
 8f4:	0c000000 	jal	0 <func_8097C870>
 8f8:	02002025 	move	a0,s0
 8fc:	0c000000 	jal	0 <func_8097C870>
 900:	02002025 	move	a0,s0
 904:	8fbf001c 	lw	ra,28(sp)
 908:	8fb00018 	lw	s0,24(sp)
 90c:	27bd0020 	addiu	sp,sp,32
 910:	03e00008 	jr	ra
 914:	00000000 	nop

00000918 <DemoGo_Update>:
 918:	27bdffe8 	addiu	sp,sp,-24
 91c:	afbf0014 	sw	ra,20(sp)
 920:	8c820194 	lw	v0,404(a0)
 924:	04400008 	bltz	v0,948 <DemoGo_Update+0x30>
 928:	28410007 	slti	at,v0,7
 92c:	10200006 	beqz	at,948 <DemoGo_Update+0x30>
 930:	00027080 	sll	t6,v0,0x2
 934:	3c030000 	lui	v1,0x0
 938:	006e1821 	addu	v1,v1,t6
 93c:	8c630000 	lw	v1,0(v1)
 940:	14600006 	bnez	v1,95c <DemoGo_Update+0x44>
 944:	00000000 	nop
 948:	3c040000 	lui	a0,0x0
 94c:	0c000000 	jal	0 <func_8097C870>
 950:	24840000 	addiu	a0,a0,0
 954:	10000004 	b	968 <DemoGo_Update+0x50>
 958:	8fbf0014 	lw	ra,20(sp)
 95c:	0060f809 	jalr	v1
 960:	00000000 	nop
 964:	8fbf0014 	lw	ra,20(sp)
 968:	27bd0018 	addiu	sp,sp,24
 96c:	03e00008 	jr	ra
 970:	00000000 	nop

00000974 <DemoGo_Init>:
 974:	27bdffc8 	addiu	sp,sp,-56
 978:	afbf0024 	sw	ra,36(sp)
 97c:	afa40038 	sw	a0,56(sp)
 980:	afa5003c 	sw	a1,60(sp)
 984:	3c060000 	lui	a2,0x0
 988:	24c60000 	addiu	a2,a2,0
 98c:	24050000 	li	a1,0
 990:	248400b4 	addiu	a0,a0,180
 994:	0c000000 	jal	0 <func_8097C870>
 998:	3c0741f0 	lui	a3,0x41f0
 99c:	8fa50038 	lw	a1,56(sp)
 9a0:	3c060000 	lui	a2,0x0
 9a4:	24c60000 	addiu	a2,a2,0
 9a8:	24a5014c 	addiu	a1,a1,332
 9ac:	afa50028 	sw	a1,40(sp)
 9b0:	8fa4003c 	lw	a0,60(sp)
 9b4:	00003825 	move	a3,zero
 9b8:	afa00010 	sw	zero,16(sp)
 9bc:	afa00014 	sw	zero,20(sp)
 9c0:	0c000000 	jal	0 <func_8097C870>
 9c4:	afa00018 	sw	zero,24(sp)
 9c8:	3c040000 	lui	a0,0x0
 9cc:	0c000000 	jal	0 <func_8097C870>
 9d0:	24840000 	addiu	a0,a0,0
 9d4:	44822000 	mtc1	v0,$f4
 9d8:	44800000 	mtc1	zero,$f0
 9dc:	3c050000 	lui	a1,0x0
 9e0:	468021a0 	cvt.s.w	$f6,$f4
 9e4:	240e0002 	li	t6,2
 9e8:	44070000 	mfc1	a3,$f0
 9ec:	afae0014 	sw	t6,20(sp)
 9f0:	24a50000 	addiu	a1,a1,0
 9f4:	8fa40028 	lw	a0,40(sp)
 9f8:	e7a60010 	swc1	$f6,16(sp)
 9fc:	3c063f80 	lui	a2,0x3f80
 a00:	0c000000 	jal	0 <func_8097C870>
 a04:	e7a00018 	swc1	$f0,24(sp)
 a08:	8faf0038 	lw	t7,56(sp)
 a0c:	ade00194 	sw	zero,404(t7)
 a10:	8fbf0024 	lw	ra,36(sp)
 a14:	27bd0038 	addiu	sp,sp,56
 a18:	03e00008 	jr	ra
 a1c:	00000000 	nop

00000a20 <func_8097D290>:
 a20:	afa40000 	sw	a0,0(sp)
 a24:	03e00008 	jr	ra
 a28:	afa50004 	sw	a1,4(sp)

00000a2c <func_8097D29C>:
 a2c:	27bdffa0 	addiu	sp,sp,-96
 a30:	afbf0024 	sw	ra,36(sp)
 a34:	afa40060 	sw	a0,96(sp)
 a38:	afa50064 	sw	a1,100(sp)
 a3c:	84820190 	lh	v0,400(a0)
 a40:	3c180000 	lui	t8,0x0
 a44:	3c060000 	lui	a2,0x0
 a48:	00027880 	sll	t7,v0,0x2
 a4c:	030fc021 	addu	t8,t8,t7
 a50:	8f180000 	lw	t8,0(t8)
 a54:	24c6003c 	addiu	a2,a2,60
 a58:	27a40038 	addiu	a0,sp,56
 a5c:	afb80050 	sw	t8,80(sp)
 a60:	8ca50000 	lw	a1,0(a1)
 a64:	240702dc 	li	a3,732
 a68:	0c000000 	jal	0 <func_8097C870>
 a6c:	afa50048 	sw	a1,72(sp)
 a70:	8fa90064 	lw	t1,100(sp)
 a74:	0c000000 	jal	0 <func_8097C870>
 a78:	8d240000 	lw	a0,0(t1)
 a7c:	8fa80048 	lw	t0,72(sp)
 a80:	8fa40050 	lw	a0,80(sp)
 a84:	3c050000 	lui	a1,0x0
 a88:	8d0302c0 	lw	v1,704(t0)
 a8c:	00046100 	sll	t4,a0,0x4
 a90:	000c6f02 	srl	t5,t4,0x1c
 a94:	3c0bdb06 	lui	t3,0xdb06
 a98:	246a0008 	addiu	t2,v1,8
 a9c:	356b0020 	ori	t3,t3,0x20
 aa0:	000d7080 	sll	t6,t5,0x2
 aa4:	24a50000 	addiu	a1,a1,0
 aa8:	ad0a02c0 	sw	t2,704(t0)
 aac:	00ae7821 	addu	t7,a1,t6
 ab0:	ac6b0000 	sw	t3,0(v1)
 ab4:	8df80000 	lw	t8,0(t7)
 ab8:	3c0600ff 	lui	a2,0xff
 abc:	34c6ffff 	ori	a2,a2,0xffff
 ac0:	0086c824 	and	t9,a0,a2
 ac4:	3c078000 	lui	a3,0x8000
 ac8:	03194821 	addu	t1,t8,t9
 acc:	01275021 	addu	t2,t1,a3
 ad0:	ac6a0004 	sw	t2,4(v1)
 ad4:	8d0302c0 	lw	v1,704(t0)
 ad8:	3c040000 	lui	a0,0x0
 adc:	24840000 	addiu	a0,a0,0
 ae0:	00046900 	sll	t5,a0,0x4
 ae4:	000d7702 	srl	t6,t5,0x1c
 ae8:	3c0cdb06 	lui	t4,0xdb06
 aec:	246b0008 	addiu	t3,v1,8
 af0:	358c0024 	ori	t4,t4,0x24
 af4:	000e7880 	sll	t7,t6,0x2
 af8:	ad0b02c0 	sw	t3,704(t0)
 afc:	00afc021 	addu	t8,a1,t7
 b00:	ac6c0000 	sw	t4,0(v1)
 b04:	8f190000 	lw	t9,0(t8)
 b08:	00864824 	and	t1,a0,a2
 b0c:	03295021 	addu	t2,t9,t1
 b10:	01475821 	addu	t3,t2,a3
 b14:	ac6b0004 	sw	t3,4(v1)
 b18:	8fa30060 	lw	v1,96(sp)
 b1c:	8fa40064 	lw	a0,100(sp)
 b20:	2462014c 	addiu	v0,v1,332
 b24:	8c450004 	lw	a1,4(v0)
 b28:	8c460020 	lw	a2,32(v0)
 b2c:	90470002 	lbu	a3,2(v0)
 b30:	afa00014 	sw	zero,20(sp)
 b34:	afa00010 	sw	zero,16(sp)
 b38:	0c000000 	jal	0 <func_8097C870>
 b3c:	afa30018 	sw	v1,24(sp)
 b40:	8fac0064 	lw	t4,100(sp)
 b44:	3c060000 	lui	a2,0x0
 b48:	24c6004c 	addiu	a2,a2,76
 b4c:	27a40038 	addiu	a0,sp,56
 b50:	240702ea 	li	a3,746
 b54:	0c000000 	jal	0 <func_8097C870>
 b58:	8d850000 	lw	a1,0(t4)
 b5c:	8fbf0024 	lw	ra,36(sp)
 b60:	27bd0060 	addiu	sp,sp,96
 b64:	03e00008 	jr	ra
 b68:	00000000 	nop

00000b6c <DemoGo_Draw>:
 b6c:	27bdffe8 	addiu	sp,sp,-24
 b70:	afbf0014 	sw	ra,20(sp)
 b74:	8c820198 	lw	v0,408(a0)
 b78:	04400008 	bltz	v0,b9c <DemoGo_Draw+0x30>
 b7c:	28410002 	slti	at,v0,2
 b80:	10200006 	beqz	at,b9c <DemoGo_Draw+0x30>
 b84:	00027080 	sll	t6,v0,0x2
 b88:	3c030000 	lui	v1,0x0
 b8c:	006e1821 	addu	v1,v1,t6
 b90:	8c630000 	lw	v1,0(v1)
 b94:	14600006 	bnez	v1,bb0 <DemoGo_Draw+0x44>
 b98:	00000000 	nop
 b9c:	3c040000 	lui	a0,0x0
 ba0:	0c000000 	jal	0 <func_8097C870>
 ba4:	2484005c 	addiu	a0,a0,92
 ba8:	10000004 	b	bbc <DemoGo_Draw+0x50>
 bac:	8fbf0014 	lw	ra,20(sp)
 bb0:	0060f809 	jalr	v1
 bb4:	00000000 	nop
 bb8:	8fbf0014 	lw	ra,20(sp)
 bbc:	27bd0018 	addiu	sp,sp,24
 bc0:	03e00008 	jr	ra
 bc4:	00000000 	nop
	...
