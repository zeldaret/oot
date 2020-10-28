
build/src/libultra_boot_O2/_Ldtob.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <_Ldtob>:
   0:	27bdff40 	addiu	sp,sp,-192
   4:	afbf0044 	sw	ra,68(sp)
   8:	afb50040 	sw	s5,64(sp)
   c:	afb4003c 	sw	s4,60(sp)
  10:	afb30038 	sw	s3,56(sp)
  14:	afb20034 	sw	s2,52(sp)
  18:	afb10030 	sw	s1,48(sp)
  1c:	afb0002c 	sw	s0,44(sp)
  20:	f7b60020 	sdc1	$f22,32(sp)
  24:	f7b40018 	sdc1	$f20,24(sp)
  28:	afa500c4 	sw	a1,196(sp)
  2c:	8c820024 	lw	v0,36(a0)
  30:	00803025 	move	a2,a0
  34:	27b200a0 	addiu	s2,sp,160
  38:	04410004 	bgez	v0,4c <_Ldtob+0x4c>
  3c:	d4940000 	ldc1	$f20,0(a0)
  40:	240e0006 	li	t6,6
  44:	1000000a 	b	70 <_Ldtob+0x70>
  48:	ac8e0024 	sw	t6,36(a0)
  4c:	14400008 	bnez	v0,70 <_Ldtob+0x70>
  50:	93af00c7 	lbu	t7,199(sp)
  54:	24010067 	li	at,103
  58:	11e10003 	beq	t7,at,68 <_Ldtob+0x68>
  5c:	afaf0050 	sw	t7,80(sp)
  60:	24010047 	li	at,71
  64:	15e10002 	bne	t7,at,70 <_Ldtob+0x70>
  68:	24180001 	li	t8,1
  6c:	acd80024 	sw	t8,36(a2)
  70:	27a4008a 	addiu	a0,sp,138
  74:	00c02825 	move	a1,a2
  78:	0c000000 	jal	0 <_Ldtob>
  7c:	afa600c0 	sw	a2,192(sp)
  80:	1840000f 	blez	v0,c0 <_Ldtob+0xc0>
  84:	24010002 	li	at,2
  88:	14410004 	bne	v0,at,9c <_Ldtob+0x9c>
  8c:	3c050000 	lui	a1,0x0
  90:	3c050000 	lui	a1,0x0
  94:	10000002 	b	a0 <_Ldtob+0xa0>
  98:	24a50048 	addiu	a1,a1,72
  9c:	24a5004c 	addiu	a1,a1,76
  a0:	8fa200c0 	lw	v0,192(sp)
  a4:	24190003 	li	t9,3
  a8:	24060003 	li	a2,3
  ac:	ac590014 	sw	t9,20(v0)
  b0:	0c000000 	jal	0 <_Ldtob>
  b4:	8c440008 	lw	a0,8(v0)
  b8:	100000eb 	b	468 <_Ldtob+0x468>
  bc:	8fbf0044 	lw	ra,68(sp)
  c0:	14400003 	bnez	v0,d0 <_Ldtob+0xd0>
  c4:	00003825 	move	a3,zero
  c8:	100000e0 	b	44c <_Ldtob+0x44c>
  cc:	a7a0008a 	sh	zero,138(sp)
  d0:	4480b800 	mtc1	zero,$f23
  d4:	4480b000 	mtc1	zero,$f22
  d8:	93a800c7 	lbu	t0,199(sp)
  dc:	87a9008a 	lh	t1,138(sp)
  e0:	4636a03c 	c.lt.d	$f20,$f22
  e4:	24017597 	li	at,30103
  e8:	240f0003 	li	t7,3
  ec:	27b200a1 	addiu	s2,sp,161
  f0:	45000002 	bc1f	fc <_Ldtob+0xfc>
  f4:	afa80050 	sw	t0,80(sp)
  f8:	4620a507 	neg.d	$f20,$f20
  fc:	01210019 	multu	t1,at
 100:	3c010001 	lui	at,0x1
 104:	342186a0 	ori	at,at,0x86a0
 108:	00001825 	move	v1,zero
 10c:	24050006 	li	a1,6
 110:	00005012 	mflo	t2
	...
 11c:	0141001a 	div	zero,t2,at
 120:	00005812 	mflo	t3
 124:	256cfffc 	addiu	t4,t3,-4
 128:	000c6c00 	sll	t5,t4,0x10
 12c:	000d7403 	sra	t6,t5,0x10
 130:	05c10018 	bgez	t6,194 <_Ldtob+0x194>
 134:	a7ac008a 	sh	t4,138(sp)
 138:	000cc400 	sll	t8,t4,0x10
 13c:	0018cc03 	sra	t9,t8,0x10
 140:	01f92023 	subu	a0,t7,t9
 144:	2401fffc 	li	at,-4
 148:	00811024 	and	v0,a0,at
 14c:	00024823 	negu	t1,v0
 150:	1840002c 	blez	v0,204 <_Ldtob+0x204>
 154:	a7a9008a 	sh	t1,138(sp)
 158:	3c040000 	lui	a0,0x0
 15c:	24840000 	addiu	a0,a0,0
 160:	304a0001 	andi	t2,v0,0x1
 164:	11400006 	beqz	t2,180 <_Ldtob+0x180>
 168:	00027043 	sra	t6,v0,0x1
 16c:	000358c0 	sll	t3,v1,0x3
 170:	008b6821 	addu	t5,a0,t3
 174:	d5a40000 	ldc1	$f4,0(t5)
 178:	4624a502 	mul.d	$f20,$f20,$f4
 17c:	00000000 	nop
 180:	01c01025 	move	v0,t6
 184:	1dc0fff6 	bgtz	t6,160 <_Ldtob+0x160>
 188:	24630001 	addiu	v1,v1,1
 18c:	1000001e 	b	208 <_Ldtob+0x208>
 190:	8fae0050 	lw	t6,80(sp)
 194:	87ac008a 	lh	t4,138(sp)
 198:	3c013ff0 	lui	at,0x3ff0
 19c:	00001825 	move	v1,zero
 1a0:	19800018 	blez	t4,204 <_Ldtob+0x204>
 1a4:	3198fffc 	andi	t8,t4,0xfffc
 1a8:	00181400 	sll	v0,t8,0x10
 1ac:	0018cc00 	sll	t9,t8,0x10
 1b0:	44810800 	mtc1	at,$f1
 1b4:	44800000 	mtc1	zero,$f0
 1b8:	00194403 	sra	t0,t9,0x10
 1bc:	00027c03 	sra	t7,v0,0x10
 1c0:	a7b8008a 	sh	t8,138(sp)
 1c4:	1900000e 	blez	t0,200 <_Ldtob+0x200>
 1c8:	01e01025 	move	v0,t7
 1cc:	3c040000 	lui	a0,0x0
 1d0:	24840000 	addiu	a0,a0,0
 1d4:	30490001 	andi	t1,v0,0x1
 1d8:	11200006 	beqz	t1,1f4 <_Ldtob+0x1f4>
 1dc:	00026843 	sra	t5,v0,0x1
 1e0:	000350c0 	sll	t2,v1,0x3
 1e4:	008a5821 	addu	t3,a0,t2
 1e8:	d5660000 	ldc1	$f6,0(t3)
 1ec:	46260002 	mul.d	$f0,$f0,$f6
 1f0:	00000000 	nop
 1f4:	01a01025 	move	v0,t5
 1f8:	1da0fff6 	bgtz	t5,1d4 <_Ldtob+0x1d4>
 1fc:	24630001 	addiu	v1,v1,1
 200:	4620a503 	div.d	$f20,$f20,$f0
 204:	8fae0050 	lw	t6,80(sp)
 208:	24010066 	li	at,102
 20c:	8fac00c0 	lw	t4,192(sp)
 210:	15c10004 	bne	t6,at,224 <_Ldtob+0x224>
 214:	24180030 	li	t8,48
 218:	87a5008a 	lh	a1,138(sp)
 21c:	10000001 	b	224 <_Ldtob+0x224>
 220:	24a5000a 	addiu	a1,a1,10
 224:	8d8f0024 	lw	t7,36(t4)
 228:	00afa821 	addu	s5,a1,t7
 22c:	2aa10014 	slti	at,s5,20
 230:	14200002 	bnez	at,23c <_Ldtob+0x23c>
 234:	00000000 	nop
 238:	24150013 	li	s5,19
 23c:	1aa00031 	blez	s5,304 <_Ldtob+0x304>
 240:	a3b800a0 	sb	t8,160(sp)
 244:	4634b03c 	c.lt.d	$f22,$f20
 248:	24140030 	li	s4,48
 24c:	27b30064 	addiu	s3,sp,100
 250:	4502002d 	bc1fl	308 <_Ldtob+0x308>
 254:	87ad008a 	lh	t5,138(sp)
 258:	4620a20d 	trunc.w.d	$f8,$f20
 25c:	26b5fff8 	addiu	s5,s5,-8
 260:	26520008 	addiu	s2,s2,8
 264:	44114000 	mfc1	s1,$f8
 268:	1aa00008 	blez	s5,28c <_Ldtob+0x28c>
 26c:	00000000 	nop
 270:	44915000 	mtc1	s1,$f10
 274:	3c010000 	lui	at,0x0
 278:	d4240058 	ldc1	$f4,88(at)
 27c:	46805421 	cvt.d.w	$f16,$f10
 280:	4630a481 	sub.d	$f18,$f20,$f16
 284:	46249502 	mul.d	$f20,$f18,$f4
 288:	00000000 	nop
 28c:	1a200011 	blez	s1,2d4 <_Ldtob+0x2d4>
 290:	24100008 	li	s0,8
 294:	24100007 	li	s0,7
 298:	0600000e 	bltz	s0,2d4 <_Ldtob+0x2d4>
 29c:	02602025 	move	a0,s3
 2a0:	02202825 	move	a1,s1
 2a4:	0c000000 	jal	0 <_Ldtob>
 2a8:	2406000a 	li	a2,10
 2ac:	8fa80068 	lw	t0,104(sp)
 2b0:	2652ffff 	addiu	s2,s2,-1
 2b4:	25090030 	addiu	t1,t0,48
 2b8:	a2490000 	sb	t1,0(s2)
 2bc:	8fb10064 	lw	s1,100(sp)
 2c0:	5a200005 	blezl	s1,2d8 <_Ldtob+0x2d8>
 2c4:	2610ffff 	addiu	s0,s0,-1
 2c8:	2610ffff 	addiu	s0,s0,-1
 2cc:	0603fff4 	bgezl	s0,2a0 <_Ldtob+0x2a0>
 2d0:	02602025 	move	a0,s3
 2d4:	2610ffff 	addiu	s0,s0,-1
 2d8:	06000004 	bltz	s0,2ec <_Ldtob+0x2ec>
 2dc:	2610ffff 	addiu	s0,s0,-1
 2e0:	2652ffff 	addiu	s2,s2,-1
 2e4:	0601fffd 	bgez	s0,2dc <_Ldtob+0x2dc>
 2e8:	a2540000 	sb	s4,0(s2)
 2ec:	1aa00005 	blez	s5,304 <_Ldtob+0x304>
 2f0:	26520008 	addiu	s2,s2,8
 2f4:	4634b03c 	c.lt.d	$f22,$f20
 2f8:	00000000 	nop
 2fc:	4503ffd7 	bc1tl	25c <_Ldtob+0x25c>
 300:	4620a20d 	trunc.w.d	$f8,$f20
 304:	87ad008a 	lh	t5,138(sp)
 308:	93ac00a1 	lbu	t4,161(sp)
 30c:	27ab00a0 	addiu	t3,sp,160
 310:	24020030 	li	v0,48
 314:	024ba823 	subu	s5,s2,t3
 318:	25ae0007 	addiu	t6,t5,7
 31c:	26b5ffff 	addiu	s5,s5,-1
 320:	a7ae008a 	sh	t6,138(sp)
 324:	144c0009 	bne	v0,t4,34c <_Ldtob+0x34c>
 328:	27b200a1 	addiu	s2,sp,161
 32c:	87af008a 	lh	t7,138(sp)
 330:	26520001 	addiu	s2,s2,1
 334:	26b5ffff 	addiu	s5,s5,-1
 338:	25f8ffff 	addiu	t8,t7,-1
 33c:	a7b8008a 	sh	t8,138(sp)
 340:	92590000 	lbu	t9,0(s2)
 344:	5059fffa 	beql	v0,t9,330 <_Ldtob+0x330>
 348:	87af008a 	lh	t7,138(sp)
 34c:	8fa80050 	lw	t0,80(sp)
 350:	24010066 	li	at,102
 354:	8faa00c0 	lw	t2,192(sp)
 358:	15010004 	bne	t0,at,36c <_Ldtob+0x36c>
 35c:	8fa90050 	lw	t1,80(sp)
 360:	87a5008a 	lh	a1,138(sp)
 364:	10000009 	b	38c <_Ldtob+0x38c>
 368:	24a50001 	addiu	a1,a1,1
 36c:	24010065 	li	at,101
 370:	11210003 	beq	t1,at,380 <_Ldtob+0x380>
 374:	24010045 	li	at,69
 378:	15210003 	bne	t1,at,388 <_Ldtob+0x388>
 37c:	00001025 	move	v0,zero
 380:	10000001 	b	388 <_Ldtob+0x388>
 384:	24020001 	li	v0,1
 388:	00402825 	move	a1,v0
 38c:	8d4b0024 	lw	t3,36(t2)
 390:	00ab3821 	addu	a3,a1,t3
 394:	00076c00 	sll	t5,a3,0x10
 398:	000d3c03 	sra	a3,t5,0x10
 39c:	02a7082a 	slt	at,s5,a3
 3a0:	10200004 	beqz	at,3b4 <_Ldtob+0x3b4>
 3a4:	00000000 	nop
 3a8:	00153c00 	sll	a3,s5,0x10
 3ac:	00076403 	sra	t4,a3,0x10
 3b0:	01803825 	move	a3,t4
 3b4:	18e00025 	blez	a3,44c <_Ldtob+0x44c>
 3b8:	00f5082a 	slt	at,a3,s5
 3bc:	10200007 	beqz	at,3dc <_Ldtob+0x3dc>
 3c0:	00f21021 	addu	v0,a3,s2
 3c4:	904f0000 	lbu	t7,0(v0)
 3c8:	29e10035 	slti	at,t7,53
 3cc:	54200004 	bnezl	at,3e0 <_Ldtob+0x3e0>
 3d0:	24050030 	li	a1,48
 3d4:	10000003 	b	3e4 <_Ldtob+0x3e4>
 3d8:	24050039 	li	a1,57
 3dc:	24050030 	li	a1,48
 3e0:	00f21021 	addu	v0,a3,s2
 3e4:	9058ffff 	lbu	t8,-1(v0)
 3e8:	24e3ffff 	addiu	v1,a3,-1
 3ec:	00a02025 	move	a0,a1
 3f0:	14b80009 	bne	a1,t8,418 <_Ldtob+0x418>
 3f4:	24010039 	li	at,57
 3f8:	00721021 	addu	v0,v1,s2
 3fc:	9049ffff 	lbu	t1,-1(v0)
 400:	24e7ffff 	addiu	a3,a3,-1
 404:	0007cc00 	sll	t9,a3,0x10
 408:	2463ffff 	addiu	v1,v1,-1
 40c:	2442ffff 	addiu	v0,v0,-1
 410:	1089fffa 	beq	a0,t1,3fc <_Ldtob+0x3fc>
 414:	00193c03 	sra	a3,t9,0x10
 418:	14810004 	bne	a0,at,42c <_Ldtob+0x42c>
 41c:	02431021 	addu	v0,s2,v1
 420:	904a0000 	lbu	t2,0(v0)
 424:	254b0001 	addiu	t3,t2,1
 428:	a04b0000 	sb	t3,0(v0)
 42c:	04610007 	bgez	v1,44c <_Ldtob+0x44c>
 430:	87ac008a 	lh	t4,138(sp)
 434:	24e70001 	addiu	a3,a3,1
 438:	00076c00 	sll	t5,a3,0x10
 43c:	258f0001 	addiu	t7,t4,1
 440:	a7af008a 	sh	t7,138(sp)
 444:	000d3c03 	sra	a3,t5,0x10
 448:	2652ffff 	addiu	s2,s2,-1
 44c:	87b8008a 	lh	t8,138(sp)
 450:	8fa400c0 	lw	a0,192(sp)
 454:	93a500c7 	lbu	a1,199(sp)
 458:	02403025 	move	a2,s2
 45c:	0c000000 	jal	0 <_Ldtob>
 460:	afb80010 	sw	t8,16(sp)
 464:	8fbf0044 	lw	ra,68(sp)
 468:	d7b40018 	ldc1	$f20,24(sp)
 46c:	d7b60020 	ldc1	$f22,32(sp)
 470:	8fb0002c 	lw	s0,44(sp)
 474:	8fb10030 	lw	s1,48(sp)
 478:	8fb20034 	lw	s2,52(sp)
 47c:	8fb30038 	lw	s3,56(sp)
 480:	8fb4003c 	lw	s4,60(sp)
 484:	8fb50040 	lw	s5,64(sp)
 488:	03e00008 	jr	ra
 48c:	27bd00c0 	addiu	sp,sp,192

00000490 <_Ldunscale>:
 490:	94a60000 	lhu	a2,0(a1)
 494:	240107ff 	li	at,2047
 498:	30c37ff0 	andi	v1,a2,0x7ff0
 49c:	00037103 	sra	t6,v1,0x4
 4a0:	000e7c00 	sll	t7,t6,0x10
 4a4:	000f1c03 	sra	v1,t7,0x10
 4a8:	14610018 	bne	v1,at,50c <_Ldunscale+0x7c>
 4ac:	00000000 	nop
 4b0:	a4800000 	sh	zero,0(a0)
 4b4:	94b90000 	lhu	t9,0(a1)
 4b8:	24030002 	li	v1,2
 4bc:	00031400 	sll	v0,v1,0x10
 4c0:	3328000f 	andi	t0,t9,0xf
 4c4:	1500000a 	bnez	t0,4f0 <_Ldunscale+0x60>
 4c8:	00026403 	sra	t4,v0,0x10
 4cc:	94a90002 	lhu	t1,2(a1)
 4d0:	15200007 	bnez	t1,4f0 <_Ldunscale+0x60>
 4d4:	00000000 	nop
 4d8:	94aa0004 	lhu	t2,4(a1)
 4dc:	15400004 	bnez	t2,4f0 <_Ldunscale+0x60>
 4e0:	00000000 	nop
 4e4:	94ab0006 	lhu	t3,6(a1)
 4e8:	51600004 	beqzl	t3,4fc <_Ldunscale+0x6c>
 4ec:	24030001 	li	v1,1
 4f0:	03e00008 	jr	ra
 4f4:	01801025 	move	v0,t4
 4f8:	24030001 	li	v1,1
 4fc:	00031400 	sll	v0,v1,0x10
 500:	00026403 	sra	t4,v0,0x10
 504:	03e00008 	jr	ra
 508:	01801025 	move	v0,t4
 50c:	18600007 	blez	v1,52c <_Ldunscale+0x9c>
 510:	30cd800f 	andi	t5,a2,0x800f
 514:	35ae3ff0 	ori	t6,t5,0x3ff0
 518:	a4ae0000 	sh	t6,0(a1)
 51c:	246ffc02 	addiu	t7,v1,-1022
 520:	a48f0000 	sh	t7,0(a0)
 524:	03e00008 	jr	ra
 528:	2402ffff 	li	v0,-1
 52c:	04610003 	bgez	v1,53c <_Ldunscale+0xac>
 530:	00001025 	move	v0,zero
 534:	03e00008 	jr	ra
 538:	24020002 	li	v0,2
 53c:	a4800000 	sh	zero,0(a0)
 540:	03e00008 	jr	ra
 544:	00000000 	nop

00000548 <_Genld>:
 548:	27bdffe0 	addiu	sp,sp,-32
 54c:	afa7002c 	sw	a3,44(sp)
 550:	00077400 	sll	t6,a3,0x10
 554:	000e3c03 	sra	a3,t6,0x10
 558:	afb10018 	sw	s1,24(sp)
 55c:	afb00014 	sw	s0,20(sp)
 560:	00808025 	move	s0,a0
 564:	00c08825 	move	s1,a2
 568:	afbf001c 	sw	ra,28(sp)
 56c:	1ce00004 	bgtz	a3,580 <_Genld+0x38>
 570:	afa50024 	sw	a1,36(sp)
 574:	3c110000 	lui	s1,0x0
 578:	26310050 	addiu	s1,s1,80
 57c:	24070001 	li	a3,1
 580:	93a30027 	lbu	v1,39(sp)
 584:	24020066 	li	v0,102
 588:	24040067 	li	a0,103
 58c:	5043000e 	beql	v0,v1,5c8 <_Genld+0x80>
 590:	87a80032 	lh	t0,50(sp)
 594:	10830003 	beq	a0,v1,5a4 <_Genld+0x5c>
 598:	24010047 	li	at,71
 59c:	146100a5 	bne	v1,at,834 <_Genld+0x2ec>
 5a0:	00000000 	nop
 5a4:	87a80032 	lh	t0,50(sp)
 5a8:	2901fffc 	slti	at,t0,-4
 5ac:	142000a1 	bnez	at,834 <_Genld+0x2ec>
 5b0:	00000000 	nop
 5b4:	8e180024 	lw	t8,36(s0)
 5b8:	0118082a 	slt	at,t0,t8
 5bc:	1020009d 	beqz	at,834 <_Genld+0x2ec>
 5c0:	00000000 	nop
 5c4:	87a80032 	lh	t0,50(sp)
 5c8:	02202825 	move	a1,s1
 5cc:	25080001 	addiu	t0,t0,1
 5d0:	0008cc00 	sll	t9,t0,0x10
 5d4:	1043000e 	beq	v0,v1,610 <_Genld+0xc8>
 5d8:	00194403 	sra	t0,t9,0x10
 5dc:	8e0a0030 	lw	t2,48(s0)
 5e0:	8e020024 	lw	v0,36(s0)
 5e4:	314b0008 	andi	t3,t2,0x8
 5e8:	15600005 	bnez	t3,600 <_Genld+0xb8>
 5ec:	00e2082a 	slt	at,a3,v0
 5f0:	50200004 	beqzl	at,604 <_Genld+0xbc>
 5f4:	00486023 	subu	t4,v0,t0
 5f8:	ae070024 	sw	a3,36(s0)
 5fc:	00e01025 	move	v0,a3
 600:	00486023 	subu	t4,v0,t0
 604:	05810002 	bgez	t4,610 <_Genld+0xc8>
 608:	ae0c0024 	sw	t4,36(s0)
 60c:	ae000024 	sw	zero,36(s0)
 610:	1d000034 	bgtz	t0,6e4 <_Genld+0x19c>
 614:	00e8082a 	slt	at,a3,t0
 618:	8e0f0008 	lw	t7,8(s0)
 61c:	8e180014 	lw	t8,20(s0)
 620:	240e0030 	li	t6,48
 624:	00081823 	negu	v1,t0
 628:	01f8c821 	addu	t9,t7,t8
 62c:	a32e0000 	sb	t6,0(t9)
 630:	8e090014 	lw	t1,20(s0)
 634:	8e020024 	lw	v0,36(s0)
 638:	252a0001 	addiu	t2,t1,1
 63c:	1c400005 	bgtz	v0,654 <_Genld+0x10c>
 640:	ae0a0014 	sw	t2,20(s0)
 644:	8e0b0030 	lw	t3,48(s0)
 648:	316c0008 	andi	t4,t3,0x8
 64c:	5180000b 	beqzl	t4,67c <_Genld+0x134>
 650:	0043082a 	slt	at,v0,v1
 654:	8e0f0008 	lw	t7,8(s0)
 658:	8e180014 	lw	t8,20(s0)
 65c:	240d002e 	li	t5,46
 660:	01f87021 	addu	t6,t7,t8
 664:	a1cd0000 	sb	t5,0(t6)
 668:	8e190014 	lw	t9,20(s0)
 66c:	8e020024 	lw	v0,36(s0)
 670:	27290001 	addiu	t1,t9,1
 674:	ae090014 	sw	t1,20(s0)
 678:	0043082a 	slt	at,v0,v1
 67c:	50200006 	beqzl	at,698 <_Genld+0x150>
 680:	00486021 	addu	t4,v0,t0
 684:	00024023 	negu	t0,v0
 688:	00085400 	sll	t2,t0,0x10
 68c:	000a4403 	sra	t0,t2,0x10
 690:	00081823 	negu	v1,t0
 694:	00486021 	addu	t4,v0,t0
 698:	0187082a 	slt	at,t4,a3
 69c:	ae030018 	sw	v1,24(s0)
 6a0:	10200004 	beqz	at,6b4 <_Genld+0x16c>
 6a4:	ae0c0024 	sw	t4,36(s0)
 6a8:	000c3c00 	sll	a3,t4,0x10
 6ac:	00077c03 	sra	t7,a3,0x10
 6b0:	01e03825 	move	a3,t7
 6b4:	8e180008 	lw	t8,8(s0)
 6b8:	8e0d0014 	lw	t5,20(s0)
 6bc:	ae07001c 	sw	a3,28(s0)
 6c0:	a7a7002e 	sh	a3,46(sp)
 6c4:	00e03025 	move	a2,a3
 6c8:	0c000000 	jal	0 <_Ldtob>
 6cc:	030d2021 	addu	a0,t8,t5
 6d0:	87a7002e 	lh	a3,46(sp)
 6d4:	8e0e0024 	lw	t6,36(s0)
 6d8:	01c7c823 	subu	t9,t6,a3
 6dc:	100000f4 	b	ab0 <_Genld+0x568>
 6e0:	ae190020 	sw	t9,32(s0)
 6e4:	10200021 	beqz	at,76c <_Genld+0x224>
 6e8:	02202825 	move	a1,s1
 6ec:	8e090008 	lw	t1,8(s0)
 6f0:	8e0a0014 	lw	t2,20(s0)
 6f4:	a7a80032 	sh	t0,50(sp)
 6f8:	a7a7002e 	sh	a3,46(sp)
 6fc:	02202825 	move	a1,s1
 700:	00e03025 	move	a2,a3
 704:	0c000000 	jal	0 <_Ldtob>
 708:	012a2021 	addu	a0,t1,t2
 70c:	87a7002e 	lh	a3,46(sp)
 710:	87a80032 	lh	t0,50(sp)
 714:	8e0b0014 	lw	t3,20(s0)
 718:	8e020024 	lw	v0,36(s0)
 71c:	01077823 	subu	t7,t0,a3
 720:	01676021 	addu	t4,t3,a3
 724:	ae0c0014 	sw	t4,20(s0)
 728:	1c400005 	bgtz	v0,740 <_Genld+0x1f8>
 72c:	ae0f0018 	sw	t7,24(s0)
 730:	8e180030 	lw	t8,48(s0)
 734:	330d0008 	andi	t5,t8,0x8
 738:	11a0000a 	beqz	t5,764 <_Genld+0x21c>
 73c:	00000000 	nop
 740:	8e190008 	lw	t9,8(s0)
 744:	8e090014 	lw	t1,20(s0)
 748:	240e002e 	li	t6,46
 74c:	03295021 	addu	t2,t9,t1
 750:	a14e0000 	sb	t6,0(t2)
 754:	8e0b001c 	lw	t3,28(s0)
 758:	8e020024 	lw	v0,36(s0)
 75c:	256c0001 	addiu	t4,t3,1
 760:	ae0c001c 	sw	t4,28(s0)
 764:	100000d2 	b	ab0 <_Genld+0x568>
 768:	ae020020 	sw	v0,32(s0)
 76c:	8e0f0008 	lw	t7,8(s0)
 770:	8e180014 	lw	t8,20(s0)
 774:	a7a80032 	sh	t0,50(sp)
 778:	a7a7002e 	sh	a3,46(sp)
 77c:	01003025 	move	a2,t0
 780:	0c000000 	jal	0 <_Ldtob>
 784:	01f82021 	addu	a0,t7,t8
 788:	87a7002e 	lh	a3,46(sp)
 78c:	87a80032 	lh	t0,50(sp)
 790:	8e0d0014 	lw	t5,20(s0)
 794:	8e020024 	lw	v0,36(s0)
 798:	00e83823 	subu	a3,a3,t0
 79c:	00074c00 	sll	t1,a3,0x10
 7a0:	01a8c821 	addu	t9,t5,t0
 7a4:	ae190014 	sw	t9,20(s0)
 7a8:	1c400005 	bgtz	v0,7c0 <_Genld+0x278>
 7ac:	00093c03 	sra	a3,t1,0x10
 7b0:	8e0a0030 	lw	t2,48(s0)
 7b4:	314b0008 	andi	t3,t2,0x8
 7b8:	5160000b 	beqzl	t3,7e8 <_Genld+0x2a0>
 7bc:	0047082a 	slt	at,v0,a3
 7c0:	8e0f0008 	lw	t7,8(s0)
 7c4:	8e180014 	lw	t8,20(s0)
 7c8:	240c002e 	li	t4,46
 7cc:	01f86821 	addu	t5,t7,t8
 7d0:	a1ac0000 	sb	t4,0(t5)
 7d4:	8e190014 	lw	t9,20(s0)
 7d8:	8e020024 	lw	v0,36(s0)
 7dc:	27290001 	addiu	t1,t9,1
 7e0:	ae090014 	sw	t1,20(s0)
 7e4:	0047082a 	slt	at,v0,a3
 7e8:	10200004 	beqz	at,7fc <_Genld+0x2b4>
 7ec:	01112821 	addu	a1,t0,s1
 7f0:	00023c00 	sll	a3,v0,0x10
 7f4:	00077403 	sra	t6,a3,0x10
 7f8:	01c03825 	move	a3,t6
 7fc:	8e0a0008 	lw	t2,8(s0)
 800:	8e0b0014 	lw	t3,20(s0)
 804:	a7a7002e 	sh	a3,46(sp)
 808:	00e03025 	move	a2,a3
 80c:	0c000000 	jal	0 <_Ldtob>
 810:	014b2021 	addu	a0,t2,t3
 814:	87a7002e 	lh	a3,46(sp)
 818:	8e0f0014 	lw	t7,20(s0)
 81c:	8e0c0024 	lw	t4,36(s0)
 820:	01e7c021 	addu	t8,t7,a3
 824:	01876823 	subu	t5,t4,a3
 828:	ae180014 	sw	t8,20(s0)
 82c:	100000a0 	b	ab0 <_Genld+0x568>
 830:	ae0d0018 	sw	t5,24(s0)
 834:	10830004 	beq	a0,v1,848 <_Genld+0x300>
 838:	87a80032 	lh	t0,50(sp)
 83c:	24010047 	li	at,71
 840:	54610013 	bnel	v1,at,890 <_Genld+0x348>
 844:	8e0f0008 	lw	t7,8(s0)
 848:	8e020024 	lw	v0,36(s0)
 84c:	240e0065 	li	t6,101
 850:	00e2082a 	slt	at,a3,v0
 854:	50200004 	beqzl	at,868 <_Genld+0x320>
 858:	2459ffff 	addiu	t9,v0,-1
 85c:	ae070024 	sw	a3,36(s0)
 860:	00e01025 	move	v0,a3
 864:	2459ffff 	addiu	t9,v0,-1
 868:	07210002 	bgez	t9,874 <_Genld+0x32c>
 86c:	ae190024 	sw	t9,36(s0)
 870:	ae000024 	sw	zero,36(s0)
 874:	54830004 	bnel	a0,v1,888 <_Genld+0x340>
 878:	240a0045 	li	t2,69
 87c:	10000003 	b	88c <_Genld+0x344>
 880:	a3ae0027 	sb	t6,39(sp)
 884:	240a0045 	li	t2,69
 888:	a3aa0027 	sb	t2,39(sp)
 88c:	8e0f0008 	lw	t7,8(s0)
 890:	8e180014 	lw	t8,20(s0)
 894:	922b0000 	lbu	t3,0(s1)
 898:	26310001 	addiu	s1,s1,1
 89c:	01f86021 	addu	t4,t7,t8
 8a0:	a18b0000 	sb	t3,0(t4)
 8a4:	8e0d0014 	lw	t5,20(s0)
 8a8:	8e020024 	lw	v0,36(s0)
 8ac:	25b90001 	addiu	t9,t5,1
 8b0:	1c400005 	bgtz	v0,8c8 <_Genld+0x380>
 8b4:	ae190014 	sw	t9,20(s0)
 8b8:	8e090030 	lw	t1,48(s0)
 8bc:	312e0008 	andi	t6,t1,0x8
 8c0:	11c0000a 	beqz	t6,8ec <_Genld+0x3a4>
 8c4:	00000000 	nop
 8c8:	8e0f0008 	lw	t7,8(s0)
 8cc:	8e180014 	lw	t8,20(s0)
 8d0:	240a002e 	li	t2,46
 8d4:	01f85821 	addu	t3,t7,t8
 8d8:	a16a0000 	sb	t2,0(t3)
 8dc:	8e0c0014 	lw	t4,20(s0)
 8e0:	8e020024 	lw	v0,36(s0)
 8e4:	258d0001 	addiu	t5,t4,1
 8e8:	ae0d0014 	sw	t5,20(s0)
 8ec:	5840001a 	blezl	v0,958 <_Genld+0x410>
 8f0:	8e190008 	lw	t9,8(s0)
 8f4:	24e7ffff 	addiu	a3,a3,-1
 8f8:	0007cc00 	sll	t9,a3,0x10
 8fc:	00193c03 	sra	a3,t9,0x10
 900:	0047082a 	slt	at,v0,a3
 904:	10200004 	beqz	at,918 <_Genld+0x3d0>
 908:	02202825 	move	a1,s1
 90c:	00023c00 	sll	a3,v0,0x10
 910:	00077403 	sra	t6,a3,0x10
 914:	01c03825 	move	a3,t6
 918:	8e0f0008 	lw	t7,8(s0)
 91c:	8e180014 	lw	t8,20(s0)
 920:	a7a80032 	sh	t0,50(sp)
 924:	a7a7002e 	sh	a3,46(sp)
 928:	00e03025 	move	a2,a3
 92c:	0c000000 	jal	0 <_Ldtob>
 930:	01f82021 	addu	a0,t7,t8
 934:	87a7002e 	lh	a3,46(sp)
 938:	8e0a0014 	lw	t2,20(s0)
 93c:	8e0c0024 	lw	t4,36(s0)
 940:	87a80032 	lh	t0,50(sp)
 944:	01475821 	addu	t3,t2,a3
 948:	01876823 	subu	t5,t4,a3
 94c:	ae0b0014 	sw	t3,20(s0)
 950:	ae0d0018 	sw	t5,24(s0)
 954:	8e190008 	lw	t9,8(s0)
 958:	8e090014 	lw	t1,20(s0)
 95c:	93ae0027 	lbu	t6,39(sp)
 960:	03298821 	addu	s1,t9,t1
 964:	26310001 	addiu	s1,s1,1
 968:	05000005 	bltz	t0,980 <_Genld+0x438>
 96c:	a22effff 	sb	t6,-1(s1)
 970:	240f002b 	li	t7,43
 974:	a22f0000 	sb	t7,0(s1)
 978:	10000008 	b	99c <_Genld+0x454>
 97c:	26310001 	addiu	s1,s1,1
 980:	00084023 	negu	t0,t0
 984:	00085400 	sll	t2,t0,0x10
 988:	2418002d 	li	t8,45
 98c:	000a5c03 	sra	t3,t2,0x10
 990:	a2380000 	sb	t8,0(s1)
 994:	26310001 	addiu	s1,s1,1
 998:	01604025 	move	t0,t3
 99c:	29010064 	slti	at,t0,100
 9a0:	5420002a 	bnezl	at,a4c <_Genld+0x504>
 9a4:	2402000a 	li	v0,10
 9a8:	290103e8 	slti	at,t0,1000
 9ac:	14200013 	bnez	at,9fc <_Genld+0x4b4>
 9b0:	240203e8 	li	v0,1000
 9b4:	0102001a 	div	zero,t0,v0
 9b8:	14400002 	bnez	v0,9c4 <_Genld+0x47c>
 9bc:	00000000 	nop
 9c0:	0007000d 	break	0x7
 9c4:	2401ffff 	li	at,-1
 9c8:	14410004 	bne	v0,at,9dc <_Genld+0x494>
 9cc:	3c018000 	lui	at,0x8000
 9d0:	15010002 	bne	t0,at,9dc <_Genld+0x494>
 9d4:	00000000 	nop
 9d8:	0006000d 	break	0x6
 9dc:	00004010 	mfhi	t0
 9e0:	0008cc00 	sll	t9,t0,0x10
 9e4:	00006012 	mflo	t4
 9e8:	258d0030 	addiu	t5,t4,48
 9ec:	00194c03 	sra	t1,t9,0x10
 9f0:	01204025 	move	t0,t1
 9f4:	a22d0000 	sb	t5,0(s1)
 9f8:	26310001 	addiu	s1,s1,1
 9fc:	24020064 	li	v0,100
 a00:	0102001a 	div	zero,t0,v0
 a04:	14400002 	bnez	v0,a10 <_Genld+0x4c8>
 a08:	00000000 	nop
 a0c:	0007000d 	break	0x7
 a10:	2401ffff 	li	at,-1
 a14:	14410004 	bne	v0,at,a28 <_Genld+0x4e0>
 a18:	3c018000 	lui	at,0x8000
 a1c:	15010002 	bne	t0,at,a28 <_Genld+0x4e0>
 a20:	00000000 	nop
 a24:	0006000d 	break	0x6
 a28:	00004010 	mfhi	t0
 a2c:	0008c400 	sll	t8,t0,0x10
 a30:	00007012 	mflo	t6
 a34:	25cf0030 	addiu	t7,t6,48
 a38:	00185403 	sra	t2,t8,0x10
 a3c:	01404025 	move	t0,t2
 a40:	a22f0000 	sb	t7,0(s1)
 a44:	26310001 	addiu	s1,s1,1
 a48:	2402000a 	li	v0,10
 a4c:	0102001a 	div	zero,t0,v0
 a50:	14400002 	bnez	v0,a5c <_Genld+0x514>
 a54:	00000000 	nop
 a58:	0007000d 	break	0x7
 a5c:	2401ffff 	li	at,-1
 a60:	14410004 	bne	v0,at,a74 <_Genld+0x52c>
 a64:	3c018000 	lui	at,0x8000
 a68:	15010002 	bne	t0,at,a74 <_Genld+0x52c>
 a6c:	00000000 	nop
 a70:	0006000d 	break	0x6
 a74:	00004010 	mfhi	t0
 a78:	00086c00 	sll	t5,t0,0x10
 a7c:	000dcc03 	sra	t9,t5,0x10
 a80:	00005812 	mflo	t3
 a84:	256c0030 	addiu	t4,t3,48
 a88:	27290030 	addiu	t1,t9,48
 a8c:	a22c0000 	sb	t4,0(s1)
 a90:	a2290001 	sb	t1,1(s1)
 a94:	8e0e0008 	lw	t6,8(s0)
 a98:	8e180014 	lw	t8,20(s0)
 a9c:	26310002 	addiu	s1,s1,2
 aa0:	022e7823 	subu	t7,s1,t6
 aa4:	01f85023 	subu	t2,t7,t8
 aa8:	03204025 	move	t0,t9
 aac:	ae0a001c 	sw	t2,28(s0)
 ab0:	8e0b0030 	lw	t3,48(s0)
 ab4:	24010010 	li	at,16
 ab8:	316c0014 	andi	t4,t3,0x14
 abc:	55810010 	bnel	t4,at,b00 <_Genld+0x5b8>
 ac0:	8fbf001c 	lw	ra,28(sp)
 ac4:	8e0d000c 	lw	t5,12(s0)
 ac8:	8e190014 	lw	t9,20(s0)
 acc:	8e0e0018 	lw	t6,24(s0)
 ad0:	8e18001c 	lw	t8,28(s0)
 ad4:	8e0b0020 	lw	t3,32(s0)
 ad8:	01b94821 	addu	t1,t5,t9
 adc:	8e030028 	lw	v1,40(s0)
 ae0:	012e7821 	addu	t7,t1,t6
 ae4:	01f85021 	addu	t2,t7,t8
 ae8:	014b1021 	addu	v0,t2,t3
 aec:	0043082a 	slt	at,v0,v1
 af0:	10200002 	beqz	at,afc <_Genld+0x5b4>
 af4:	00626023 	subu	t4,v1,v0
 af8:	ae0c0010 	sw	t4,16(s0)
 afc:	8fbf001c 	lw	ra,28(sp)
 b00:	8fb00014 	lw	s0,20(sp)
 b04:	8fb10018 	lw	s1,24(sp)
 b08:	03e00008 	jr	ra
 b0c:	27bd0020 	addiu	sp,sp,32
