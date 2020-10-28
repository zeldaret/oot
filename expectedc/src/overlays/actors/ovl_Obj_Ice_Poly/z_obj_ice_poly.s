
build/src/overlays/actors/ovl_Obj_Ice_Poly/z_obj_ice_poly.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ObjIcePoly_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa50034 	sw	a1,52(sp)
  10:	8482001c 	lh	v0,28(a0)
  14:	00808025 	move	s0,a0
  18:	305800ff 	andi	t8,v0,0xff
  1c:	a498001c 	sh	t8,28(a0)
  20:	00027a03 	sra	t7,v0,0x8
  24:	8482001c 	lh	v0,28(a0)
  28:	a08f0151 	sb	t7,337(a0)
  2c:	04400003 	bltz	v0,3c <ObjIcePoly_Init+0x3c>
  30:	28410003 	slti	at,v0,3
  34:	14200005 	bnez	at,4c <ObjIcePoly_Init+0x4c>
  38:	02002025 	move	a0,s0
  3c:	0c000000 	jal	0 <ObjIcePoly_Init>
  40:	02002025 	move	a0,s0
  44:	1000005a 	b	1b0 <ObjIcePoly_Init+0x1b0>
  48:	8fbf001c 	lw	ra,28(sp)
  4c:	0002c880 	sll	t9,v0,0x2
  50:	3c050000 	lui	a1,0x0
  54:	00b92821 	addu	a1,a1,t9
  58:	0c000000 	jal	0 <ObjIcePoly_Init>
  5c:	8ca50000 	lw	a1,0(a1)
  60:	8608001c 	lh	t0,28(s0)
  64:	3c0a0000 	lui	t2,0x0
  68:	c608000c 	lwc1	$f8,12(s0)
  6c:	00084840 	sll	t1,t0,0x1
  70:	01495021 	addu	t2,t2,t1
  74:	854a0000 	lh	t2,0(t2)
  78:	26050154 	addiu	a1,s0,340
  7c:	448a2000 	mtc1	t2,$f4
  80:	00000000 	nop
  84:	468021a0 	cvt.s.w	$f6,$f4
  88:	46083280 	add.s	$f10,$f6,$f8
  8c:	e60a0028 	swc1	$f10,40(s0)
  90:	afa50024 	sw	a1,36(sp)
  94:	0c000000 	jal	0 <ObjIcePoly_Init>
  98:	8fa40034 	lw	a0,52(sp)
  9c:	3c070000 	lui	a3,0x0
  a0:	24e70000 	addiu	a3,a3,0
  a4:	8fa40034 	lw	a0,52(sp)
  a8:	8fa50024 	lw	a1,36(sp)
  ac:	0c000000 	jal	0 <ObjIcePoly_Init>
  b0:	02003025 	move	a2,s0
  b4:	260501a0 	addiu	a1,s0,416
  b8:	afa50028 	sw	a1,40(sp)
  bc:	0c000000 	jal	0 <ObjIcePoly_Init>
  c0:	8fa40034 	lw	a0,52(sp)
  c4:	3c070000 	lui	a3,0x0
  c8:	24e70000 	addiu	a3,a3,0
  cc:	8fa40034 	lw	a0,52(sp)
  d0:	8fa50028 	lw	a1,40(sp)
  d4:	0c000000 	jal	0 <ObjIcePoly_Init>
  d8:	02003025 	move	a2,s0
  dc:	02002025 	move	a0,s0
  e0:	0c000000 	jal	0 <ObjIcePoly_Init>
  e4:	8fa50024 	lw	a1,36(sp)
  e8:	02002025 	move	a0,s0
  ec:	0c000000 	jal	0 <ObjIcePoly_Init>
  f0:	8fa50028 	lw	a1,40(sp)
  f4:	860b0194 	lh	t3,404(s0)
  f8:	c6040050 	lwc1	$f4,80(s0)
  fc:	860e0196 	lh	t6,406(s0)
 100:	448b8000 	mtc1	t3,$f16
 104:	861901e0 	lh	t9,480(s0)
 108:	448e5000 	mtc1	t6,$f10
 10c:	468084a0 	cvt.s.w	$f18,$f16
 110:	860a01e2 	lh	t2,482(s0)
 114:	3c0141f0 	lui	at,0x41f0
 118:	240200ff 	li	v0,255
 11c:	a20200ae 	sb	v0,174(s0)
 120:	46805420 	cvt.s.w	$f16,$f10
 124:	46049182 	mul.s	$f6,$f18,$f4
 128:	c6120054 	lwc1	$f18,84(s0)
 12c:	a2020150 	sb	v0,336(s0)
 130:	02002025 	move	a0,s0
 134:	46128102 	mul.s	$f4,$f16,$f18
 138:	c6100050 	lwc1	$f16,80(s0)
 13c:	4600320d 	trunc.w.s	$f8,$f6
 140:	4600218d 	trunc.w.s	$f6,$f4
 144:	440d4000 	mfc1	t5,$f8
 148:	44994000 	mtc1	t9,$f8
 14c:	44183000 	mfc1	t8,$f6
 150:	468042a0 	cvt.s.w	$f10,$f8
 154:	448a3000 	mtc1	t2,$f6
 158:	a60d0194 	sh	t5,404(s0)
 15c:	a6180196 	sh	t8,406(s0)
 160:	46803220 	cvt.s.w	$f8,$f6
 164:	46105482 	mul.s	$f18,$f10,$f16
 168:	c60a0054 	lwc1	$f10,84(s0)
 16c:	44813000 	mtc1	at,$f6
 170:	460a4402 	mul.s	$f16,$f8,$f10
 174:	4600910d 	trunc.w.s	$f4,$f18
 178:	4600848d 	trunc.w.s	$f18,$f16
 17c:	44092000 	mfc1	t1,$f4
 180:	c6040054 	lwc1	$f4,84(s0)
 184:	440c9000 	mfc1	t4,$f18
 188:	46062202 	mul.s	$f8,$f4,$f6
 18c:	a60901e0 	sh	t1,480(s0)
 190:	a60c01e2 	sh	t4,482(s0)
 194:	44054000 	mfc1	a1,$f8
 198:	0c000000 	jal	0 <ObjIcePoly_Init>
 19c:	00000000 	nop
 1a0:	3c0d0000 	lui	t5,0x0
 1a4:	25ad0000 	addiu	t5,t5,0
 1a8:	ae0d014c 	sw	t5,332(s0)
 1ac:	8fbf001c 	lw	ra,28(sp)
 1b0:	8fb00018 	lw	s0,24(sp)
 1b4:	27bd0030 	addiu	sp,sp,48
 1b8:	03e00008 	jr	ra
 1bc:	00000000 	nop

000001c0 <ObjIcePoly_Destroy>:
 1c0:	27bdffe8 	addiu	sp,sp,-24
 1c4:	afbf0014 	sw	ra,20(sp)
 1c8:	afa5001c 	sw	a1,28(sp)
 1cc:	8482001c 	lh	v0,28(a0)
 1d0:	00803025 	move	a2,a0
 1d4:	0440000a 	bltz	v0,200 <ObjIcePoly_Destroy+0x40>
 1d8:	28410003 	slti	at,v0,3
 1dc:	10200008 	beqz	at,200 <ObjIcePoly_Destroy+0x40>
 1e0:	00a02025 	move	a0,a1
 1e4:	24c50154 	addiu	a1,a2,340
 1e8:	0c000000 	jal	0 <ObjIcePoly_Init>
 1ec:	afa60018 	sw	a2,24(sp)
 1f0:	8fa60018 	lw	a2,24(sp)
 1f4:	8fa4001c 	lw	a0,28(sp)
 1f8:	0c000000 	jal	0 <ObjIcePoly_Init>
 1fc:	24c501a0 	addiu	a1,a2,416
 200:	8fbf0014 	lw	ra,20(sp)
 204:	27bd0018 	addiu	sp,sp,24
 208:	03e00008 	jr	ra
 20c:	00000000 	nop

00000210 <func_80B94470>:
 210:	27bdffa8 	addiu	sp,sp,-88
 214:	afbf002c 	sw	ra,44(sp)
 218:	afb10028 	sw	s1,40(sp)
 21c:	afb00024 	sw	s0,36(sp)
 220:	908e0165 	lbu	t6,357(a0)
 224:	00808025 	move	s0,a0
 228:	00a08825 	move	s1,a1
 22c:	31cf0002 	andi	t7,t6,0x2
 230:	51e00012 	beqzl	t7,27c <func_80B94470+0x6c>
 234:	8e020118 	lw	v0,280(s0)
 238:	8c980190 	lw	t8,400(a0)
 23c:	8489008a 	lh	t1,138(a0)
 240:	24060028 	li	a2,40
 244:	93190005 	lbu	t9,5(t8)
 248:	a4890046 	sh	t1,70(a0)
 24c:	02003825 	move	a3,s0
 250:	00194023 	negu	t0,t9
 254:	a4880152 	sh	t0,338(a0)
 258:	00a02025 	move	a0,a1
 25c:	24051400 	li	a1,5120
 260:	0c000000 	jal	0 <ObjIcePoly_Init>
 264:	afa00010 	sw	zero,16(sp)
 268:	3c0a0000 	lui	t2,0x0
 26c:	254a0000 	addiu	t2,t2,0
 270:	1000001d 	b	2e8 <func_80B94470+0xd8>
 274:	ae0a014c 	sw	t2,332(s0)
 278:	8e020118 	lw	v0,280(s0)
 27c:	240b0028 	li	t3,40
 280:	02202025 	move	a0,s1
 284:	10400016 	beqz	v0,2e0 <func_80B94470+0xd0>
 288:	3c010001 	lui	at,0x1
 28c:	34211e60 	ori	at,at,0x1e60
 290:	a44b0110 	sh	t3,272(v0)
 294:	02212821 	addu	a1,s1,at
 298:	26060154 	addiu	a2,s0,340
 29c:	afa60034 	sw	a2,52(sp)
 2a0:	0c000000 	jal	0 <ObjIcePoly_Init>
 2a4:	afa50038 	sw	a1,56(sp)
 2a8:	02202025 	move	a0,s1
 2ac:	8fa50038 	lw	a1,56(sp)
 2b0:	0c000000 	jal	0 <ObjIcePoly_Init>
 2b4:	8fa60034 	lw	a2,52(sp)
 2b8:	02202025 	move	a0,s1
 2bc:	8fa50038 	lw	a1,56(sp)
 2c0:	0c000000 	jal	0 <ObjIcePoly_Init>
 2c4:	8fa60034 	lw	a2,52(sp)
 2c8:	02202025 	move	a0,s1
 2cc:	8fa50038 	lw	a1,56(sp)
 2d0:	0c000000 	jal	0 <ObjIcePoly_Init>
 2d4:	260601a0 	addiu	a2,s0,416
 2d8:	10000004 	b	2ec <func_80B94470+0xdc>
 2dc:	2404000f 	li	a0,15
 2e0:	0c000000 	jal	0 <ObjIcePoly_Init>
 2e4:	02002025 	move	a0,s0
 2e8:	2404000f 	li	a0,15
 2ec:	0c000000 	jal	0 <ObjIcePoly_Init>
 2f0:	2405000f 	li	a1,15
 2f4:	0c000000 	jal	0 <ObjIcePoly_Init>
 2f8:	a7a20042 	sh	v0,66(sp)
 2fc:	3c013f00 	lui	at,0x3f00
 300:	44812000 	mtc1	at,$f4
 304:	87ac0042 	lh	t4,66(sp)
 308:	24020001 	li	v0,1
 30c:	4604003c 	c.lt.s	$f0,$f4
 310:	00000000 	nop
 314:	45000003 	bc1f	324 <func_80B94470+0x114>
 318:	00000000 	nop
 31c:	10000001 	b	324 <func_80B94470+0x114>
 320:	2402ffff 	li	v0,-1
 324:	004c0019 	multu	v0,t4
 328:	c60a0050 	lwc1	$f10,80(s0)
 32c:	c6120024 	lwc1	$f18,36(s0)
 330:	2404000a 	li	a0,10
 334:	2405005a 	li	a1,90
 338:	00006812 	mflo	t5
 33c:	448d3000 	mtc1	t5,$f6
 340:	00000000 	nop
 344:	46803220 	cvt.s.w	$f8,$f6
 348:	460a4402 	mul.s	$f16,$f8,$f10
 34c:	46128100 	add.s	$f4,$f16,$f18
 350:	0c000000 	jal	0 <ObjIcePoly_Init>
 354:	e7a40048 	swc1	$f4,72(sp)
 358:	44823000 	mtc1	v0,$f6
 35c:	c60a0054 	lwc1	$f10,84(s0)
 360:	c6120028 	lwc1	$f18,40(s0)
 364:	46803220 	cvt.s.w	$f8,$f6
 368:	2404000f 	li	a0,15
 36c:	2405000f 	li	a1,15
 370:	460a4402 	mul.s	$f16,$f8,$f10
 374:	46128100 	add.s	$f4,$f16,$f18
 378:	0c000000 	jal	0 <ObjIcePoly_Init>
 37c:	e7a4004c 	swc1	$f4,76(sp)
 380:	0c000000 	jal	0 <ObjIcePoly_Init>
 384:	a7a20042 	sh	v0,66(sp)
 388:	3c013f00 	lui	at,0x3f00
 38c:	44813000 	mtc1	at,$f6
 390:	3c060000 	lui	a2,0x0
 394:	87ae0042 	lh	t6,66(sp)
 398:	4606003c 	c.lt.s	$f0,$f6
 39c:	24020001 	li	v0,1
 3a0:	24c60000 	addiu	a2,a2,0
 3a4:	02202025 	move	a0,s1
 3a8:	45000003 	bc1f	3b8 <func_80B94470+0x1a8>
 3ac:	27a50048 	addiu	a1,sp,72
 3b0:	10000001 	b	3b8 <func_80B94470+0x1a8>
 3b4:	2402ffff 	li	v0,-1
 3b8:	004e0019 	multu	v0,t6
 3bc:	c6100058 	lwc1	$f16,88(s0)
 3c0:	c604002c 	lwc1	$f4,44(s0)
 3c4:	3c180001 	lui	t8,0x1
 3c8:	0311c021 	addu	t8,t8,s1
 3cc:	24010007 	li	at,7
 3d0:	3c080000 	lui	t0,0x0
 3d4:	3c090000 	lui	t1,0x0
 3d8:	25290000 	addiu	t1,t1,0
 3dc:	25080000 	addiu	t0,t0,0
 3e0:	00007812 	mflo	t7
 3e4:	448f4000 	mtc1	t7,$f8
 3e8:	00c03825 	move	a3,a2
 3ec:	240a07d0 	li	t2,2000
 3f0:	468042a0 	cvt.s.w	$f10,$f8
 3f4:	240b0005 	li	t3,5
 3f8:	46105482 	mul.s	$f18,$f10,$f16
 3fc:	46049180 	add.s	$f6,$f18,$f4
 400:	e7a60050 	swc1	$f6,80(sp)
 404:	8f181de4 	lw	t8,7652(t8)
 408:	0301001b 	divu	zero,t8,at
 40c:	0000c810 	mfhi	t9
 410:	57200007 	bnezl	t9,430 <func_80B94470+0x220>
 414:	8fbf002c 	lw	ra,44(sp)
 418:	afa80010 	sw	t0,16(sp)
 41c:	afa90014 	sw	t1,20(sp)
 420:	afaa0018 	sw	t2,24(sp)
 424:	0c000000 	jal	0 <ObjIcePoly_Init>
 428:	afab001c 	sw	t3,28(sp)
 42c:	8fbf002c 	lw	ra,44(sp)
 430:	8fb00024 	lw	s0,36(sp)
 434:	8fb10028 	lw	s1,40(sp)
 438:	03e00008 	jr	ra
 43c:	27bd0058 	addiu	sp,sp,88

00000440 <func_80B946A0>:
 440:	27bdff60 	addiu	sp,sp,-160
 444:	44800000 	mtc1	zero,$f0
 448:	afbf0064 	sw	ra,100(sp)
 44c:	afbe0060 	sw	s8,96(sp)
 450:	afb7005c 	sw	s7,92(sp)
 454:	afb60058 	sw	s6,88(sp)
 458:	afb50054 	sw	s5,84(sp)
 45c:	afb40050 	sw	s4,80(sp)
 460:	afb3004c 	sw	s3,76(sp)
 464:	afb20048 	sw	s2,72(sp)
 468:	afb10044 	sw	s1,68(sp)
 46c:	afb00040 	sw	s0,64(sp)
 470:	f7b80038 	sdc1	$f24,56(sp)
 474:	f7b60030 	sdc1	$f22,48(sp)
 478:	f7b40028 	sdc1	$f20,40(sp)
 47c:	e7a00094 	swc1	$f0,148(sp)
 480:	c4840054 	lwc1	$f4,84(a0)
 484:	3c0141a0 	lui	at,0x41a0
 488:	4481c000 	mtc1	at,$f24
 48c:	3c014248 	lui	at,0x4248
 490:	e7a0009c 	swc1	$f0,156(sp)
 494:	e7a00088 	swc1	$f0,136(sp)
 498:	e7a40098 	swc1	$f4,152(sp)
 49c:	c4860054 	lwc1	$f6,84(a0)
 4a0:	4481b000 	mtc1	at,$f22
 4a4:	3c013f00 	lui	at,0x3f00
 4a8:	3c170000 	lui	s7,0x0
 4ac:	3c1e0000 	lui	s8,0x0
 4b0:	4481a000 	mtc1	at,$f20
 4b4:	00808025 	move	s0,a0
 4b8:	00a09825 	move	s3,a1
 4bc:	27de0000 	addiu	s8,s8,0
 4c0:	26f70000 	addiu	s7,s7,0
 4c4:	00009025 	move	s2,zero
 4c8:	27b4007c 	addiu	s4,sp,124
 4cc:	27b50088 	addiu	s5,sp,136
 4d0:	27b60094 	addiu	s6,sp,148
 4d4:	e7a00090 	swc1	$f0,144(sp)
 4d8:	e7a6008c 	swc1	$f6,140(sp)
 4dc:	24040014 	li	a0,20
 4e0:	0c000000 	jal	0 <ObjIcePoly_Init>
 4e4:	24050014 	li	a1,20
 4e8:	00028c00 	sll	s1,v0,0x10
 4ec:	0c000000 	jal	0 <ObjIcePoly_Init>
 4f0:	00118c03 	sra	s1,s1,0x10
 4f4:	4614003c 	c.lt.s	$f0,$f20
 4f8:	24020001 	li	v0,1
 4fc:	45000003 	bc1f	50c <func_80B946A0+0xcc>
 500:	00000000 	nop
 504:	10000001 	b	50c <func_80B946A0+0xcc>
 508:	2402ffff 	li	v0,-1
 50c:	00510019 	multu	v0,s1
 510:	c6100050 	lwc1	$f16,80(s0)
 514:	c6040024 	lwc1	$f4,36(s0)
 518:	00007012 	mflo	t6
 51c:	448e4000 	mtc1	t6,$f8
 520:	00000000 	nop
 524:	468042a0 	cvt.s.w	$f10,$f8
 528:	46105482 	mul.s	$f18,$f10,$f16
 52c:	46049180 	add.s	$f6,$f18,$f4
 530:	0c000000 	jal	0 <ObjIcePoly_Init>
 534:	e7a6007c 	swc1	$f6,124(sp)
 538:	c6080054 	lwc1	$f8,84(s0)
 53c:	c6120028 	lwc1	$f18,40(s0)
 540:	24040014 	li	a0,20
 544:	46080282 	mul.s	$f10,$f0,$f8
 548:	24050014 	li	a1,20
 54c:	46165402 	mul.s	$f16,$f10,$f22
 550:	46128100 	add.s	$f4,$f16,$f18
 554:	0c000000 	jal	0 <ObjIcePoly_Init>
 558:	e7a40080 	swc1	$f4,128(sp)
 55c:	00028c00 	sll	s1,v0,0x10
 560:	0c000000 	jal	0 <ObjIcePoly_Init>
 564:	00118c03 	sra	s1,s1,0x10
 568:	4614003c 	c.lt.s	$f0,$f20
 56c:	24020001 	li	v0,1
 570:	45000003 	bc1f	580 <func_80B946A0+0x140>
 574:	00000000 	nop
 578:	10000001 	b	580 <func_80B946A0+0x140>
 57c:	2402ffff 	li	v0,-1
 580:	00510019 	multu	v0,s1
 584:	c60a0050 	lwc1	$f10,80(s0)
 588:	c612002c 	lwc1	$f18,44(s0)
 58c:	2404015e 	li	a0,350
 590:	24050064 	li	a1,100
 594:	00007812 	mflo	t7
 598:	448f3000 	mtc1	t7,$f6
 59c:	00000000 	nop
 5a0:	46803220 	cvt.s.w	$f8,$f6
 5a4:	460a4402 	mul.s	$f16,$f8,$f10
 5a8:	46128100 	add.s	$f4,$f16,$f18
 5ac:	0c000000 	jal	0 <ObjIcePoly_Init>
 5b0:	e7a40084 	swc1	$f4,132(sp)
 5b4:	44823000 	mtc1	v0,$f6
 5b8:	afb70010 	sw	s7,16(sp)
 5bc:	afbe0014 	sw	s8,20(sp)
 5c0:	46803220 	cvt.s.w	$f8,$f6
 5c4:	c6000050 	lwc1	$f0,80(s0)
 5c8:	02602025 	move	a0,s3
 5cc:	02802825 	move	a1,s4
 5d0:	02a03025 	move	a2,s5
 5d4:	02c03825 	move	a3,s6
 5d8:	46004282 	mul.s	$f10,$f8,$f0
 5dc:	00000000 	nop
 5e0:	46180482 	mul.s	$f18,$f0,$f24
 5e4:	4600540d 	trunc.w.s	$f16,$f10
 5e8:	4600910d 	trunc.w.s	$f4,$f18
 5ec:	44198000 	mfc1	t9,$f16
 5f0:	44092000 	mfc1	t1,$f4
 5f4:	afb90018 	sw	t9,24(sp)
 5f8:	0c000000 	jal	0 <ObjIcePoly_Init>
 5fc:	afa9001c 	sw	t1,28(sp)
 600:	26520001 	addiu	s2,s2,1
 604:	24010002 	li	at,2
 608:	5641ffb5 	bnel	s2,at,4e0 <func_80B946A0+0xa0>
 60c:	24040014 	li	a0,20
 610:	86020152 	lh	v0,338(s0)
 614:	04410012 	bgez	v0,660 <func_80B946A0+0x220>
 618:	00000000 	nop
 61c:	8e030118 	lw	v1,280(s0)
 620:	240a0028 	li	t2,40
 624:	240d0028 	li	t5,40
 628:	10600003 	beqz	v1,638 <func_80B946A0+0x1f8>
 62c:	02002025 	move	a0,s0
 630:	a46a0110 	sh	t2,272(v1)
 634:	86020152 	lh	v0,338(s0)
 638:	244b0001 	addiu	t3,v0,1
 63c:	a60b0152 	sh	t3,338(s0)
 640:	860c0152 	lh	t4,338(s0)
 644:	240528a2 	li	a1,10402
 648:	5580001d 	bnezl	t4,6c0 <func_80B946A0+0x280>
 64c:	8fbf0064 	lw	ra,100(sp)
 650:	0c000000 	jal	0 <ObjIcePoly_Init>
 654:	a60d0152 	sh	t5,338(s0)
 658:	10000019 	b	6c0 <func_80B946A0+0x280>
 65c:	8fbf0064 	lw	ra,100(sp)
 660:	10400003 	beqz	v0,670 <func_80B946A0+0x230>
 664:	244effff 	addiu	t6,v0,-1
 668:	a60e0152 	sh	t6,338(s0)
 66c:	86020152 	lh	v0,338(s0)
 670:	44823000 	mtc1	v0,$f6
 674:	3c010000 	lui	at,0x0
 678:	c42a0000 	lwc1	$f10,0(at)
 67c:	46803220 	cvt.s.w	$f8,$f6
 680:	860f001c 	lh	t7,28(s0)
 684:	3c010000 	lui	at,0x0
 688:	92190150 	lbu	t9,336(s0)
 68c:	000fc080 	sll	t8,t7,0x2
 690:	00380821 	addu	at,at,t8
 694:	460a4402 	mul.s	$f16,$f8,$f10
 698:	c4240000 	lwc1	$f4,0(at)
 69c:	2728fffa 	addiu	t0,t9,-6
 6a0:	a2080150 	sb	t0,336(s0)
 6a4:	4610a480 	add.s	$f18,$f20,$f16
 6a8:	46122182 	mul.s	$f6,$f4,$f18
 6ac:	14400003 	bnez	v0,6bc <func_80B946A0+0x27c>
 6b0:	e6060054 	swc1	$f6,84(s0)
 6b4:	0c000000 	jal	0 <ObjIcePoly_Init>
 6b8:	02002025 	move	a0,s0
 6bc:	8fbf0064 	lw	ra,100(sp)
 6c0:	d7b40028 	ldc1	$f20,40(sp)
 6c4:	d7b60030 	ldc1	$f22,48(sp)
 6c8:	d7b80038 	ldc1	$f24,56(sp)
 6cc:	8fb00040 	lw	s0,64(sp)
 6d0:	8fb10044 	lw	s1,68(sp)
 6d4:	8fb20048 	lw	s2,72(sp)
 6d8:	8fb3004c 	lw	s3,76(sp)
 6dc:	8fb40050 	lw	s4,80(sp)
 6e0:	8fb50054 	lw	s5,84(sp)
 6e4:	8fb60058 	lw	s6,88(sp)
 6e8:	8fb7005c 	lw	s7,92(sp)
 6ec:	8fbe0060 	lw	s8,96(sp)
 6f0:	03e00008 	jr	ra
 6f4:	27bd00a0 	addiu	sp,sp,160

000006f8 <ObjIcePoly_Update>:
 6f8:	27bdffe8 	addiu	sp,sp,-24
 6fc:	afbf0014 	sw	ra,20(sp)
 700:	8c99014c 	lw	t9,332(a0)
 704:	0320f809 	jalr	t9
 708:	00000000 	nop
 70c:	8fbf0014 	lw	ra,20(sp)
 710:	27bd0018 	addiu	sp,sp,24
 714:	03e00008 	jr	ra
 718:	00000000 	nop

0000071c <ObjIcePoly_Draw>:
 71c:	27bdff90 	addiu	sp,sp,-112
 720:	afb10038 	sw	s1,56(sp)
 724:	00a08825 	move	s1,a1
 728:	afbf003c 	sw	ra,60(sp)
 72c:	afb00034 	sw	s0,52(sp)
 730:	afa40070 	sw	a0,112(sp)
 734:	8ca50000 	lw	a1,0(a1)
 738:	3c060000 	lui	a2,0x0
 73c:	24c60000 	addiu	a2,a2,0
 740:	27a40054 	addiu	a0,sp,84
 744:	240701a5 	li	a3,421
 748:	0c000000 	jal	0 <ObjIcePoly_Init>
 74c:	00a08025 	move	s0,a1
 750:	0c000000 	jal	0 <ObjIcePoly_Init>
 754:	8e240000 	lw	a0,0(s1)
 758:	8fa40070 	lw	a0,112(sp)
 75c:	02202825 	move	a1,s1
 760:	0c000000 	jal	0 <ObjIcePoly_Init>
 764:	00003025 	move	a2,zero
 768:	24040500 	li	a0,1280
 76c:	00002825 	move	a1,zero
 770:	2406fb00 	li	a2,-1280
 774:	0c000000 	jal	0 <ObjIcePoly_Init>
 778:	24070001 	li	a3,1
 77c:	8e0202d0 	lw	v0,720(s0)
 780:	3c0fda38 	lui	t7,0xda38
 784:	35ef0003 	ori	t7,t7,0x3
 788:	244e0008 	addiu	t6,v0,8
 78c:	ae0e02d0 	sw	t6,720(s0)
 790:	ac4f0000 	sw	t7,0(v0)
 794:	8e240000 	lw	a0,0(s1)
 798:	3c050000 	lui	a1,0x0
 79c:	24a50000 	addiu	a1,a1,0
 7a0:	240601ac 	li	a2,428
 7a4:	0c000000 	jal	0 <ObjIcePoly_Init>
 7a8:	afa20050 	sw	v0,80(sp)
 7ac:	8fa30050 	lw	v1,80(sp)
 7b0:	3c19db06 	lui	t9,0xdb06
 7b4:	37390020 	ori	t9,t9,0x20
 7b8:	ac620004 	sw	v0,4(v1)
 7bc:	8e0202d0 	lw	v0,720(s0)
 7c0:	3c030001 	lui	v1,0x1
 7c4:	00711821 	addu	v1,v1,s1
 7c8:	24580008 	addiu	t8,v0,8
 7cc:	ae1802d0 	sw	t8,720(s0)
 7d0:	ac590000 	sw	t9,0(v0)
 7d4:	8c631de4 	lw	v1,7652(v1)
 7d8:	8e240000 	lw	a0,0(s1)
 7dc:	24090020 	li	t1,32
 7e0:	00036040 	sll	t4,v1,0x1
 7e4:	318d00ff 	andi	t5,t4,0xff
 7e8:	240a0010 	li	t2,16
 7ec:	240b0001 	li	t3,1
 7f0:	240e0040 	li	t6,64
 7f4:	240f0020 	li	t7,32
 7f8:	afaf0028 	sw	t7,40(sp)
 7fc:	afae0024 	sw	t6,36(sp)
 800:	afab0018 	sw	t3,24(sp)
 804:	afaa0014 	sw	t2,20(sp)
 808:	afad0020 	sw	t5,32(sp)
 80c:	afa90010 	sw	t1,16(sp)
 810:	afa0001c 	sw	zero,28(sp)
 814:	00002825 	move	a1,zero
 818:	00003025 	move	a2,zero
 81c:	afa2004c 	sw	v0,76(sp)
 820:	0c000000 	jal	0 <ObjIcePoly_Init>
 824:	306700ff 	andi	a3,v1,0xff
 828:	8fa8004c 	lw	t0,76(sp)
 82c:	3c19fb00 	lui	t9,0xfb00
 830:	3c010032 	lui	at,0x32
 834:	ad020004 	sw	v0,4(t0)
 838:	8e0202d0 	lw	v0,720(s0)
 83c:	34216400 	ori	at,at,0x6400
 840:	3c0f0403 	lui	t7,0x403
 844:	24580008 	addiu	t8,v0,8
 848:	ae1802d0 	sw	t8,720(s0)
 84c:	ac590000 	sw	t9,0(v0)
 850:	8fa90070 	lw	t1,112(sp)
 854:	25ef3ee0 	addiu	t7,t7,16096
 858:	3c0ede00 	lui	t6,0xde00
 85c:	912b0150 	lbu	t3,336(t1)
 860:	3c060000 	lui	a2,0x0
 864:	24c60000 	addiu	a2,a2,0
 868:	01616025 	or	t4,t3,at
 86c:	ac4c0004 	sw	t4,4(v0)
 870:	8e0202d0 	lw	v0,720(s0)
 874:	27a40054 	addiu	a0,sp,84
 878:	240701bc 	li	a3,444
 87c:	244d0008 	addiu	t5,v0,8
 880:	ae0d02d0 	sw	t5,720(s0)
 884:	ac4f0004 	sw	t7,4(v0)
 888:	ac4e0000 	sw	t6,0(v0)
 88c:	0c000000 	jal	0 <ObjIcePoly_Init>
 890:	8e250000 	lw	a1,0(s1)
 894:	8fbf003c 	lw	ra,60(sp)
 898:	8fb00034 	lw	s0,52(sp)
 89c:	8fb10038 	lw	s1,56(sp)
 8a0:	03e00008 	jr	ra
 8a4:	27bd0070 	addiu	sp,sp,112
	...
