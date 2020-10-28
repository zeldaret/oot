
build/src/overlays/actors/ovl_Obj_Mure3/z_obj_mure3.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B9A9D0>:
   0:	27bdffb0 	addiu	sp,sp,-80
   4:	afb50030 	sw	s5,48(sp)
   8:	afb4002c 	sw	s4,44(sp)
   c:	afb20024 	sw	s2,36(sp)
  10:	00809025 	move	s2,a0
  14:	00a0a025 	move	s4,a1
  18:	27b50040 	addiu	s5,sp,64
  1c:	afbf0034 	sw	ra,52(sp)
  20:	afb30028 	sw	s3,40(sp)
  24:	afb10020 	sw	s1,32(sp)
  28:	afb0001c 	sw	s0,28(sp)
  2c:	f7b40010 	sdc1	$f20,16(sp)
  30:	02a02025 	move	a0,s5
  34:	0c000000 	jal	0 <func_80B9A9D0>
  38:	26450024 	addiu	a1,s2,36
  3c:	3c0141a0 	lui	at,0x41a0
  40:	4481a000 	mtc1	at,$f20
  44:	00008025 	move	s0,zero
  48:	24130005 	li	s3,5
  4c:	964e016c 	lhu	t6,364(s2)
  50:	02802025 	move	a0,s4
  54:	02a02825 	move	a1,s5
  58:	020e7807 	srav	t7,t6,s0
  5c:	31f80001 	andi	t8,t7,0x1
  60:	17000008 	bnez	t8,84 <func_80B9A9D0+0x84>
  64:	24064001 	li	a2,16385
  68:	0010c880 	sll	t9,s0,0x2
  6c:	0c000000 	jal	0 <func_80B9A9D0>
  70:	02598821 	addu	s1,s2,t9
  74:	10400003 	beqz	v0,84 <func_80B9A9D0+0x84>
  78:	ae220150 	sw	v0,336(s1)
  7c:	82480003 	lb	t0,3(s2)
  80:	a0480003 	sb	t0,3(v0)
  84:	c7a40044 	lwc1	$f4,68(sp)
  88:	26100001 	addiu	s0,s0,1
  8c:	46142180 	add.s	$f6,$f4,$f20
  90:	1613ffee 	bne	s0,s3,4c <func_80B9A9D0+0x4c>
  94:	e7a60044 	swc1	$f6,68(sp)
  98:	8fbf0034 	lw	ra,52(sp)
  9c:	d7b40010 	ldc1	$f20,16(sp)
  a0:	8fb0001c 	lw	s0,28(sp)
  a4:	8fb10020 	lw	s1,32(sp)
  a8:	8fb20024 	lw	s2,36(sp)
  ac:	8fb30028 	lw	s3,40(sp)
  b0:	8fb4002c 	lw	s4,44(sp)
  b4:	8fb50030 	lw	s5,48(sp)
  b8:	03e00008 	jr	ra
  bc:	27bd0050 	addiu	sp,sp,80

000000c0 <func_80B9AA90>:
  c0:	27bdff90 	addiu	sp,sp,-112
  c4:	afb00034 	sw	s0,52(sp)
  c8:	00808025 	move	s0,a0
  cc:	afbf004c 	sw	ra,76(sp)
  d0:	afb50048 	sw	s5,72(sp)
  d4:	afb40044 	sw	s4,68(sp)
  d8:	afb30040 	sw	s3,64(sp)
  dc:	afb2003c 	sw	s2,60(sp)
  e0:	afb10038 	sw	s1,56(sp)
  e4:	f7ba0028 	sdc1	$f26,40(sp)
  e8:	f7b80020 	sdc1	$f24,32(sp)
  ec:	f7b60018 	sdc1	$f22,24(sp)
  f0:	f7b40010 	sdc1	$f20,16(sp)
  f4:	00a0a825 	move	s5,a1
  f8:	0c000000 	jal	0 <func_80B9A9D0>
  fc:	84840032 	lh	a0,50(a0)
 100:	46000606 	mov.s	$f24,$f0
 104:	0c000000 	jal	0 <func_80B9A9D0>
 108:	86040032 	lh	a0,50(s0)
 10c:	3c01c220 	lui	at,0xc220
 110:	c6040028 	lwc1	$f4,40(s0)
 114:	4481a000 	mtc1	at,$f20
 118:	3c0141a0 	lui	at,0x41a0
 11c:	4481b000 	mtc1	at,$f22
 120:	46000686 	mov.s	$f26,$f0
 124:	00008825 	move	s1,zero
 128:	24140005 	li	s4,5
 12c:	27b30060 	addiu	s3,sp,96
 130:	e7a40064 	swc1	$f4,100(sp)
 134:	960e016c 	lhu	t6,364(s0)
 138:	022e7807 	srav	t7,t6,s1
 13c:	31f80001 	andi	t8,t7,0x1
 140:	57000014 	bnezl	t8,194 <func_80B9AA90+0xd4>
 144:	26310001 	addiu	s1,s1,1
 148:	4614c202 	mul.s	$f8,$f24,$f20
 14c:	c6060024 	lwc1	$f6,36(s0)
 150:	0011c880 	sll	t9,s1,0x2
 154:	4614d482 	mul.s	$f18,$f26,$f20
 158:	02199021 	addu	s2,s0,t9
 15c:	02a02025 	move	a0,s5
 160:	02602825 	move	a1,s3
 164:	24064000 	li	a2,16384
 168:	46083280 	add.s	$f10,$f6,$f8
 16c:	e7aa0060 	swc1	$f10,96(sp)
 170:	c610002c 	lwc1	$f16,44(s0)
 174:	46128100 	add.s	$f4,$f16,$f18
 178:	0c000000 	jal	0 <func_80B9A9D0>
 17c:	e7a40068 	swc1	$f4,104(sp)
 180:	10400003 	beqz	v0,190 <func_80B9AA90+0xd0>
 184:	ae420150 	sw	v0,336(s2)
 188:	82080003 	lb	t0,3(s0)
 18c:	a0480003 	sb	t0,3(v0)
 190:	26310001 	addiu	s1,s1,1
 194:	1634ffe7 	bne	s1,s4,134 <func_80B9AA90+0x74>
 198:	4616a500 	add.s	$f20,$f20,$f22
 19c:	8fbf004c 	lw	ra,76(sp)
 1a0:	d7b40010 	ldc1	$f20,16(sp)
 1a4:	d7b60018 	ldc1	$f22,24(sp)
 1a8:	d7b80020 	ldc1	$f24,32(sp)
 1ac:	d7ba0028 	ldc1	$f26,40(sp)
 1b0:	8fb00034 	lw	s0,52(sp)
 1b4:	8fb10038 	lw	s1,56(sp)
 1b8:	8fb2003c 	lw	s2,60(sp)
 1bc:	8fb30040 	lw	s3,64(sp)
 1c0:	8fb40044 	lw	s4,68(sp)
 1c4:	8fb50048 	lw	s5,72(sp)
 1c8:	03e00008 	jr	ra
 1cc:	27bd0070 	addiu	sp,sp,112

000001d0 <func_80B9ABA0>:
 1d0:	27bdffa8 	addiu	sp,sp,-88
 1d4:	afbf003c 	sw	ra,60(sp)
 1d8:	afb60038 	sw	s6,56(sp)
 1dc:	afb50034 	sw	s5,52(sp)
 1e0:	afb40030 	sw	s4,48(sp)
 1e4:	afb3002c 	sw	s3,44(sp)
 1e8:	afb20028 	sw	s2,40(sp)
 1ec:	afb10024 	sw	s1,36(sp)
 1f0:	afb00020 	sw	s0,32(sp)
 1f4:	f7b40018 	sdc1	$f20,24(sp)
 1f8:	c4840028 	lwc1	$f4,40(a0)
 1fc:	3c014220 	lui	at,0x4220
 200:	4481a000 	mtc1	at,$f20
 204:	e7a4004c 	swc1	$f4,76(sp)
 208:	00809025 	move	s2,a0
 20c:	00a0a825 	move	s5,a1
 210:	84930032 	lh	s3,50(a0)
 214:	9482016c 	lhu	v0,364(a0)
 218:	00008025 	move	s0,zero
 21c:	24140006 	li	s4,6
 220:	27b60048 	addiu	s6,sp,72
 224:	02027007 	srav	t6,v0,s0
 228:	31cf0001 	andi	t7,t6,0x1
 22c:	15e00018 	bnez	t7,290 <func_80B9ABA0+0xc0>
 230:	00132400 	sll	a0,s3,0x10
 234:	0010c080 	sll	t8,s0,0x2
 238:	02588821 	addu	s1,s2,t8
 23c:	0c000000 	jal	0 <func_80B9A9D0>
 240:	00042403 	sra	a0,a0,0x10
 244:	46140182 	mul.s	$f6,$f0,$f20
 248:	c6480024 	lwc1	$f8,36(s2)
 24c:	00132400 	sll	a0,s3,0x10
 250:	00042403 	sra	a0,a0,0x10
 254:	46083280 	add.s	$f10,$f6,$f8
 258:	0c000000 	jal	0 <func_80B9A9D0>
 25c:	e7aa0048 	swc1	$f10,72(sp)
 260:	46140402 	mul.s	$f16,$f0,$f20
 264:	c652002c 	lwc1	$f18,44(s2)
 268:	02a02025 	move	a0,s5
 26c:	02c02825 	move	a1,s6
 270:	24064000 	li	a2,16384
 274:	46128100 	add.s	$f4,$f16,$f18
 278:	0c000000 	jal	0 <func_80B9A9D0>
 27c:	e7a40050 	swc1	$f4,80(sp)
 280:	10400003 	beqz	v0,290 <func_80B9ABA0+0xc0>
 284:	ae220150 	sw	v0,336(s1)
 288:	82590003 	lb	t9,3(s2)
 28c:	a0590003 	sb	t9,3(v0)
 290:	26732aaa 	addiu	s3,s3,10922
 294:	26100001 	addiu	s0,s0,1
 298:	00139c00 	sll	s3,s3,0x10
 29c:	9642016c 	lhu	v0,364(s2)
 2a0:	1614ffe0 	bne	s0,s4,224 <func_80B9ABA0+0x54>
 2a4:	00139c03 	sra	s3,s3,0x10
 2a8:	00024983 	sra	t1,v0,0x6
 2ac:	312a0001 	andi	t2,t1,0x1
 2b0:	5540000e 	bnezl	t2,2ec <func_80B9ABA0+0x11c>
 2b4:	8fbf003c 	lw	ra,60(sp)
 2b8:	c6460024 	lwc1	$f6,36(s2)
 2bc:	02a02025 	move	a0,s5
 2c0:	02c02825 	move	a1,s6
 2c4:	e7a60048 	swc1	$f6,72(sp)
 2c8:	c648002c 	lwc1	$f8,44(s2)
 2cc:	24064002 	li	a2,16386
 2d0:	0c000000 	jal	0 <func_80B9A9D0>
 2d4:	e7a80050 	swc1	$f8,80(sp)
 2d8:	10400003 	beqz	v0,2e8 <func_80B9ABA0+0x118>
 2dc:	ae420168 	sw	v0,360(s2)
 2e0:	824b0003 	lb	t3,3(s2)
 2e4:	a04b0003 	sb	t3,3(v0)
 2e8:	8fbf003c 	lw	ra,60(sp)
 2ec:	d7b40018 	ldc1	$f20,24(sp)
 2f0:	8fb00020 	lw	s0,32(sp)
 2f4:	8fb10024 	lw	s1,36(sp)
 2f8:	8fb20028 	lw	s2,40(sp)
 2fc:	8fb3002c 	lw	s3,44(sp)
 300:	8fb40030 	lw	s4,48(sp)
 304:	8fb50034 	lw	s5,52(sp)
 308:	8fb60038 	lw	s6,56(sp)
 30c:	03e00008 	jr	ra
 310:	27bd0058 	addiu	sp,sp,88

00000314 <func_80B9ACE4>:
 314:	27bdffd0 	addiu	sp,sp,-48
 318:	afbf002c 	sw	ra,44(sp)
 31c:	afb50028 	sw	s5,40(sp)
 320:	afb40024 	sw	s4,36(sp)
 324:	afb30020 	sw	s3,32(sp)
 328:	afb2001c 	sw	s2,28(sp)
 32c:	afb10018 	sw	s1,24(sp)
 330:	afb00014 	sw	s0,20(sp)
 334:	848e001c 	lh	t6,28(a0)
 338:	3c140000 	lui	s4,0x0
 33c:	00809025 	move	s2,a0
 340:	000e7b43 	sra	t7,t6,0xd
 344:	31f80007 	andi	t8,t7,0x7
 348:	0018c840 	sll	t9,t8,0x1
 34c:	0299a021 	addu	s4,s4,t9
 350:	86940000 	lh	s4,0(s4)
 354:	00a0a825 	move	s5,a1
 358:	00008025 	move	s0,zero
 35c:	1a80001e 	blez	s4,3d8 <func_80B9ACE4+0xc4>
 360:	24910150 	addiu	s1,a0,336
 364:	9648016c 	lhu	t0,364(s2)
 368:	02209825 	move	s3,s1
 36c:	02084807 	srav	t1,t0,s0
 370:	312a0001 	andi	t2,t1,0x1
 374:	55400015 	bnezl	t2,3cc <func_80B9ACE4+0xb8>
 378:	26100001 	addiu	s0,s0,1
 37c:	8e240000 	lw	a0,0(s1)
 380:	50800012 	beqzl	a0,3cc <func_80B9ACE4+0xb8>
 384:	26100001 	addiu	s0,s0,1
 388:	0c000000 	jal	0 <func_80B9A9D0>
 38c:	02a02825 	move	a1,s5
 390:	54400006 	bnezl	v0,3ac <func_80B9ACE4+0x98>
 394:	964c016c 	lhu	t4,364(s2)
 398:	8e240000 	lw	a0,0(s1)
 39c:	8c8b0130 	lw	t3,304(a0)
 3a0:	15600007 	bnez	t3,3c0 <func_80B9ACE4+0xac>
 3a4:	00000000 	nop
 3a8:	964c016c 	lhu	t4,364(s2)
 3ac:	240d0001 	li	t5,1
 3b0:	020d7004 	sllv	t6,t5,s0
 3b4:	018e7825 	or	t7,t4,t6
 3b8:	10000003 	b	3c8 <func_80B9ACE4+0xb4>
 3bc:	a64f016c 	sh	t7,364(s2)
 3c0:	0c000000 	jal	0 <func_80B9A9D0>
 3c4:	00000000 	nop
 3c8:	26100001 	addiu	s0,s0,1
 3cc:	26310004 	addiu	s1,s1,4
 3d0:	1614ffe4 	bne	s0,s4,364 <func_80B9ACE4+0x50>
 3d4:	ae600000 	sw	zero,0(s3)
 3d8:	8fbf002c 	lw	ra,44(sp)
 3dc:	8fb00014 	lw	s0,20(sp)
 3e0:	8fb10018 	lw	s1,24(sp)
 3e4:	8fb2001c 	lw	s2,28(sp)
 3e8:	8fb30020 	lw	s3,32(sp)
 3ec:	8fb40024 	lw	s4,36(sp)
 3f0:	8fb50028 	lw	s5,40(sp)
 3f4:	03e00008 	jr	ra
 3f8:	27bd0030 	addiu	sp,sp,48

000003fc <func_80B9ADCC>:
 3fc:	27bdffd0 	addiu	sp,sp,-48
 400:	afbf002c 	sw	ra,44(sp)
 404:	afb50028 	sw	s5,40(sp)
 408:	afb40024 	sw	s4,36(sp)
 40c:	afb30020 	sw	s3,32(sp)
 410:	afb2001c 	sw	s2,28(sp)
 414:	afb10018 	sw	s1,24(sp)
 418:	afb00014 	sw	s0,20(sp)
 41c:	848e001c 	lh	t6,28(a0)
 420:	3c150000 	lui	s5,0x0
 424:	00809825 	move	s3,a0
 428:	000e7b43 	sra	t7,t6,0xd
 42c:	31f80007 	andi	t8,t7,0x7
 430:	0018c840 	sll	t9,t8,0x1
 434:	02b9a821 	addu	s5,s5,t9
 438:	86b50000 	lh	s5,0(s5)
 43c:	00a0a025 	move	s4,a1
 440:	00008825 	move	s1,zero
 444:	1aa00020 	blez	s5,4c8 <func_80B9ADCC+0xcc>
 448:	00809025 	move	s2,a0
 44c:	8e480150 	lw	t0,336(s2)
 450:	5100001b 	beqzl	t0,4c0 <func_80B9ADCC+0xc4>
 454:	26310001 	addiu	s1,s1,1
 458:	9669016c 	lhu	t1,364(s3)
 45c:	26500150 	addiu	s0,s2,336
 460:	02802825 	move	a1,s4
 464:	02295007 	srav	t2,t1,s1
 468:	314b0001 	andi	t3,t2,0x1
 46c:	55600014 	bnezl	t3,4c0 <func_80B9ADCC+0xc4>
 470:	26310001 	addiu	s1,s1,1
 474:	0c000000 	jal	0 <func_80B9A9D0>
 478:	8e040000 	lw	a0,0(s0)
 47c:	50400006 	beqzl	v0,498 <func_80B9ADCC+0x9c>
 480:	8e0c0000 	lw	t4,0(s0)
 484:	8665001c 	lh	a1,28(s3)
 488:	02802025 	move	a0,s4
 48c:	0c000000 	jal	0 <func_80B9A9D0>
 490:	30a5003f 	andi	a1,a1,0x3f
 494:	8e0c0000 	lw	t4,0(s0)
 498:	8d8d0130 	lw	t5,304(t4)
 49c:	55a00008 	bnezl	t5,4c0 <func_80B9ADCC+0xc4>
 4a0:	26310001 	addiu	s1,s1,1
 4a4:	966e016c 	lhu	t6,364(s3)
 4a8:	240f0001 	li	t7,1
 4ac:	022fc004 	sllv	t8,t7,s1
 4b0:	01d8c825 	or	t9,t6,t8
 4b4:	a679016c 	sh	t9,364(s3)
 4b8:	ae400150 	sw	zero,336(s2)
 4bc:	26310001 	addiu	s1,s1,1
 4c0:	1635ffe2 	bne	s1,s5,44c <func_80B9ADCC+0x50>
 4c4:	26520004 	addiu	s2,s2,4
 4c8:	8fbf002c 	lw	ra,44(sp)
 4cc:	8fb00014 	lw	s0,20(sp)
 4d0:	8fb10018 	lw	s1,24(sp)
 4d4:	8fb2001c 	lw	s2,28(sp)
 4d8:	8fb30020 	lw	s3,32(sp)
 4dc:	8fb40024 	lw	s4,36(sp)
 4e0:	8fb50028 	lw	s5,40(sp)
 4e4:	03e00008 	jr	ra
 4e8:	27bd0030 	addiu	sp,sp,48

000004ec <ObjMure3_Init>:
 4ec:	27bdffe8 	addiu	sp,sp,-24
 4f0:	afa40018 	sw	a0,24(sp)
 4f4:	8fae0018 	lw	t6,24(sp)
 4f8:	afbf0014 	sw	ra,20(sp)
 4fc:	00a02025 	move	a0,a1
 500:	85c5001c 	lh	a1,28(t6)
 504:	0c000000 	jal	0 <func_80B9A9D0>
 508:	30a5003f 	andi	a1,a1,0x3f
 50c:	10400005 	beqz	v0,524 <ObjMure3_Init+0x38>
 510:	8fa40018 	lw	a0,24(sp)
 514:	0c000000 	jal	0 <func_80B9A9D0>
 518:	8fa40018 	lw	a0,24(sp)
 51c:	10000007 	b	53c <ObjMure3_Init+0x50>
 520:	8fbf0014 	lw	ra,20(sp)
 524:	3c050000 	lui	a1,0x0
 528:	0c000000 	jal	0 <func_80B9A9D0>
 52c:	24a50000 	addiu	a1,a1,0
 530:	0c000000 	jal	0 <func_80B9A9D0>
 534:	8fa40018 	lw	a0,24(sp)
 538:	8fbf0014 	lw	ra,20(sp)
 53c:	27bd0018 	addiu	sp,sp,24
 540:	03e00008 	jr	ra
 544:	00000000 	nop

00000548 <ObjMure3_Destroy>:
 548:	afa40000 	sw	a0,0(sp)
 54c:	03e00008 	jr	ra
 550:	afa50004 	sw	a1,4(sp)

00000554 <func_80B9AF24>:
 554:	3c0e0000 	lui	t6,0x0
 558:	25ce0000 	addiu	t6,t6,0
 55c:	03e00008 	jr	ra
 560:	ac8e014c 	sw	t6,332(a0)

00000564 <func_80B9AF34>:
 564:	27bdffe8 	addiu	sp,sp,-24
 568:	afbf0014 	sw	ra,20(sp)
 56c:	0c000000 	jal	0 <func_80B9A9D0>
 570:	afa5001c 	sw	a1,28(sp)
 574:	8fbf0014 	lw	ra,20(sp)
 578:	27bd0018 	addiu	sp,sp,24
 57c:	03e00008 	jr	ra
 580:	00000000 	nop

00000584 <func_80B9AF54>:
 584:	3c0e0000 	lui	t6,0x0
 588:	25ce0000 	addiu	t6,t6,0
 58c:	03e00008 	jr	ra
 590:	ac8e014c 	sw	t6,332(a0)

00000594 <func_80B9AF64>:
 594:	27bdffe8 	addiu	sp,sp,-24
 598:	afbf0014 	sw	ra,20(sp)
 59c:	afa5001c 	sw	a1,28(sp)
 5a0:	c48e00ec 	lwc1	$f14,236(a0)
 5a4:	c48c00e4 	lwc1	$f12,228(a0)
 5a8:	0c000000 	jal	0 <func_80B9A9D0>
 5ac:	afa40018 	sw	a0,24(sp)
 5b0:	3c010000 	lui	at,0x0
 5b4:	c4240000 	lwc1	$f4,0(at)
 5b8:	8fa40018 	lw	a0,24(sp)
 5bc:	4604003c 	c.lt.s	$f0,$f4
 5c0:	00000000 	nop
 5c4:	45020012 	bc1fl	610 <func_80B9AF64+0x7c>
 5c8:	8fbf0014 	lw	ra,20(sp)
 5cc:	8c8e0004 	lw	t6,4(a0)
 5d0:	35cf0010 	ori	t7,t6,0x10
 5d4:	ac8f0004 	sw	t7,4(a0)
 5d8:	afa40018 	sw	a0,24(sp)
 5dc:	8498001c 	lh	t8,28(a0)
 5e0:	8fa5001c 	lw	a1,28(sp)
 5e4:	0018cb43 	sra	t9,t8,0xd
 5e8:	33280007 	andi	t0,t9,0x7
 5ec:	00084880 	sll	t1,t0,0x2
 5f0:	3c190000 	lui	t9,0x0
 5f4:	0329c821 	addu	t9,t9,t1
 5f8:	8f390000 	lw	t9,0(t9)
 5fc:	0320f809 	jalr	t9
 600:	00000000 	nop
 604:	0c000000 	jal	0 <func_80B9A9D0>
 608:	8fa40018 	lw	a0,24(sp)
 60c:	8fbf0014 	lw	ra,20(sp)
 610:	27bd0018 	addiu	sp,sp,24
 614:	03e00008 	jr	ra
 618:	00000000 	nop

0000061c <func_80B9AFEC>:
 61c:	3c0e0000 	lui	t6,0x0
 620:	25ce0000 	addiu	t6,t6,0
 624:	03e00008 	jr	ra
 628:	ac8e014c 	sw	t6,332(a0)

0000062c <func_80B9AFFC>:
 62c:	27bdffe0 	addiu	sp,sp,-32
 630:	afbf001c 	sw	ra,28(sp)
 634:	afb00018 	sw	s0,24(sp)
 638:	00808025 	move	s0,a0
 63c:	0c000000 	jal	0 <func_80B9A9D0>
 640:	afa50024 	sw	a1,36(sp)
 644:	c60c00e4 	lwc1	$f12,228(s0)
 648:	0c000000 	jal	0 <func_80B9A9D0>
 64c:	c60e00ec 	lwc1	$f14,236(s0)
 650:	3c010000 	lui	at,0x0
 654:	c4240000 	lwc1	$f4,0(at)
 658:	4600203e 	c.le.s	$f4,$f0
 65c:	00000000 	nop
 660:	4502000b 	bc1fl	690 <func_80B9AFFC+0x64>
 664:	8fbf001c 	lw	ra,28(sp)
 668:	8e0e0004 	lw	t6,4(s0)
 66c:	2401ffef 	li	at,-17
 670:	02002025 	move	a0,s0
 674:	01c17824 	and	t7,t6,at
 678:	ae0f0004 	sw	t7,4(s0)
 67c:	0c000000 	jal	0 <func_80B9A9D0>
 680:	8fa50024 	lw	a1,36(sp)
 684:	0c000000 	jal	0 <func_80B9A9D0>
 688:	02002025 	move	a0,s0
 68c:	8fbf001c 	lw	ra,28(sp)
 690:	8fb00018 	lw	s0,24(sp)
 694:	27bd0020 	addiu	sp,sp,32
 698:	03e00008 	jr	ra
 69c:	00000000 	nop

000006a0 <ObjMure3_Update>:
 6a0:	27bdffe8 	addiu	sp,sp,-24
 6a4:	afbf0014 	sw	ra,20(sp)
 6a8:	8c99014c 	lw	t9,332(a0)
 6ac:	0320f809 	jalr	t9
 6b0:	00000000 	nop
 6b4:	8fbf0014 	lw	ra,20(sp)
 6b8:	27bd0018 	addiu	sp,sp,24
 6bc:	03e00008 	jr	ra
 6c0:	00000000 	nop
	...
