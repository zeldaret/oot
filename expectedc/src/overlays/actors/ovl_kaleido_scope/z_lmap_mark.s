
build/src/overlays/actors/ovl_kaleido_scope/z_lmap_mark.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80829960>:
   0:	3c010000 	lui	at,0x0
   4:	a0200000 	sb	zero,0(at)
   8:	3c013f80 	lui	at,0x3f80
   c:	44812000 	mtc1	at,$f4
  10:	3c010000 	lui	at,0x0
  14:	3c0e0000 	lui	t6,0x0
  18:	e4240000 	swc1	$f4,0(at)
  1c:	3c010000 	lui	at,0x0
  20:	25ce0000 	addiu	t6,t6,0
  24:	afa40000 	sw	a0,0(sp)
  28:	03e00008 	jr	ra
  2c:	ac2e0000 	sw	t6,0(at)

00000030 <func_80829990>:
  30:	3c010000 	lui	at,0x0
  34:	afa40000 	sw	a0,0(sp)
  38:	03e00008 	jr	ra
  3c:	ac200000 	sw	zero,0(at)

00000040 <func_808299A0>:
  40:	27bdff28 	addiu	sp,sp,-216
  44:	3c0f0000 	lui	t7,0x0
  48:	8def0000 	lw	t7,0(t7)
  4c:	afbf0054 	sw	ra,84(sp)
  50:	afbe0050 	sw	s8,80(sp)
  54:	afb7004c 	sw	s7,76(sp)
  58:	afb60048 	sw	s6,72(sp)
  5c:	afb50044 	sw	s5,68(sp)
  60:	afb40040 	sw	s4,64(sp)
  64:	afb3003c 	sw	s3,60(sp)
  68:	afb20038 	sw	s2,56(sp)
  6c:	afb10034 	sw	s1,52(sp)
  70:	afb00030 	sw	s0,48(sp)
  74:	f7b80028 	sdc1	$f24,40(sp)
  78:	f7b60020 	sdc1	$f22,32(sp)
  7c:	f7b40018 	sdc1	$f20,24(sp)
  80:	85f80f2e 	lh	t8,3886(t7)
  84:	3c0e0000 	lui	t6,0x0
  88:	8dce0000 	lw	t6,0(t6)
  8c:	0018c843 	sra	t9,t8,0x1
  90:	00194940 	sll	t1,t9,0x5
  94:	01394823 	subu	t1,t1,t9
  98:	00094880 	sll	t1,t1,0x2
  9c:	8c850000 	lw	a1,0(a0)
  a0:	01394823 	subu	t1,t1,t9
  a4:	0080a825 	move	s5,a0
  a8:	00094880 	sll	t1,t1,0x2
  ac:	3c060000 	lui	a2,0x0
  b0:	24c60000 	addiu	a2,a2,0
  b4:	27a400b0 	addiu	a0,sp,176
  b8:	240700b6 	li	a3,182
  bc:	01c99821 	addu	s3,t6,t1
  c0:	0c000000 	jal	0 <func_80829960>
  c4:	00a08825 	move	s1,a1
  c8:	3c013f80 	lui	at,0x3f80
  cc:	3c170000 	lui	s7,0x0
  d0:	4481c000 	mtc1	at,$f24
  d4:	4480b000 	mtc1	zero,$f22
  d8:	26f70000 	addiu	s7,s7,0
  dc:	3c1ef500 	lui	s8,0xf500
  e0:	3c16e700 	lui	s6,0xe700
  e4:	86620000 	lh	v0,0(s3)
  e8:	2401ffff 	li	at,-1
  ec:	1041015a 	beq	v0,at,658 <L80829C28+0x390>
  f0:	3c010001 	lui	at,0x1
  f4:	02a18021 	addu	s0,s5,at
  f8:	24010001 	li	at,1
  fc:	1441002e 	bne	v0,at,1b8 <func_808299A0+0x178>
 100:	0000a025 	move	s4,zero
 104:	86a200a4 	lh	v0,164(s5)
 108:	28410011 	slti	at,v0,17
 10c:	1420002a 	bnez	at,1b8 <func_808299A0+0x178>
 110:	2841001b 	slti	at,v0,27
 114:	10200028 	beqz	at,1b8 <func_808299A0+0x178>
 118:	3c0a0000 	lui	t2,0x0
 11c:	914a0000 	lbu	t2,0(t2)
 120:	3c040000 	lui	a0,0x0
 124:	24840000 	addiu	a0,a0,0
 128:	15400015 	bnez	t2,180 <func_808299A0+0x140>
 12c:	3c073d27 	lui	a3,0x3d27
 130:	3c040000 	lui	a0,0x0
 134:	4406c000 	mfc1	a2,$f24
 138:	3c073d27 	lui	a3,0x3d27
 13c:	34e7ef9e 	ori	a3,a3,0xef9e
 140:	24840000 	addiu	a0,a0,0
 144:	0c000000 	jal	0 <func_80829960>
 148:	3c053fc0 	lui	a1,0x3fc0
 14c:	3c010000 	lui	at,0x0
 150:	c4200000 	lwc1	$f0,0(at)
 154:	3c013fc0 	lui	at,0x3fc0
 158:	44812000 	mtc1	at,$f4
 15c:	3c010000 	lui	at,0x0
 160:	240b0001 	li	t3,1
 164:	46002032 	c.eq.s	$f4,$f0
 168:	00000000 	nop
 16c:	45000010 	bc1f	1b0 <func_808299A0+0x170>
 170:	00000000 	nop
 174:	a02b0000 	sb	t3,0(at)
 178:	10000010 	b	1bc <func_808299A0+0x17c>
 17c:	46000506 	mov.s	$f20,$f0
 180:	4405c000 	mfc1	a1,$f24
 184:	4406c000 	mfc1	a2,$f24
 188:	0c000000 	jal	0 <func_80829960>
 18c:	34e7ef9e 	ori	a3,a3,0xef9e
 190:	3c010000 	lui	at,0x0
 194:	c4200000 	lwc1	$f0,0(at)
 198:	3c010000 	lui	at,0x0
 19c:	4600c032 	c.eq.s	$f24,$f0
 1a0:	00000000 	nop
 1a4:	45000002 	bc1f	1b0 <func_808299A0+0x170>
 1a8:	00000000 	nop
 1ac:	a0200000 	sb	zero,0(at)
 1b0:	10000002 	b	1bc <func_808299A0+0x17c>
 1b4:	46000506 	mov.s	$f20,$f0
 1b8:	4600c506 	mov.s	$f20,$f24
 1bc:	0c000000 	jal	0 <func_80829960>
 1c0:	00000000 	nop
 1c4:	96020934 	lhu	v0,2356(s0)
 1c8:	24010004 	li	at,4
 1cc:	10410002 	beq	v0,at,1d8 <func_808299A0+0x198>
 1d0:	28410012 	slti	at,v0,18
 1d4:	14200009 	bnez	at,1fc <func_808299A0+0x1bc>
 1d8:	3c01c210 	lui	at,0xc210
 1dc:	44816000 	mtc1	at,$f12
 1e0:	3c0142ca 	lui	at,0x42ca
 1e4:	44817000 	mtc1	at,$f14
 1e8:	4406b000 	mfc1	a2,$f22
 1ec:	0c000000 	jal	0 <func_80829960>
 1f0:	24070001 	li	a3,1
 1f4:	10000009 	b	21c <func_808299A0+0x1dc>
 1f8:	8e2202c0 	lw	v0,704(s1)
 1fc:	3c01c210 	lui	at,0xc210
 200:	44816000 	mtc1	at,$f12
 204:	3c0141a8 	lui	at,0x41a8
 208:	44817000 	mtc1	at,$f14
 20c:	4406b000 	mfc1	a2,$f22
 210:	0c000000 	jal	0 <func_80829960>
 214:	24070001 	li	a3,1
 218:	8e2202c0 	lw	v0,704(s1)
 21c:	3c0ffa00 	lui	t7,0xfa00
 220:	2418ffff 	li	t8,-1
 224:	244c0008 	addiu	t4,v0,8
 228:	ae2c02c0 	sw	t4,704(s1)
 22c:	ac400004 	sw	zero,4(v0)
 230:	ac560000 	sw	s6,0(v0)
 234:	8e2202c0 	lw	v0,704(s1)
 238:	3c0efb00 	lui	t6,0xfb00
 23c:	240900ff 	li	t1,255
 240:	244d0008 	addiu	t5,v0,8
 244:	ae2d02c0 	sw	t5,704(s1)
 248:	ac580004 	sw	t8,4(v0)
 24c:	ac4f0000 	sw	t7,0(v0)
 250:	8e2202c0 	lw	v0,704(s1)
 254:	26720014 	addiu	s2,s3,20
 258:	24590008 	addiu	t9,v0,8
 25c:	ae3902c0 	sw	t9,704(s1)
 260:	ac490004 	sw	t1,4(v0)
 264:	ac4e0000 	sw	t6,0(v0)
 268:	8e6a0010 	lw	t2,16(s3)
 26c:	194000f6 	blez	t2,648 <L80829C28+0x380>
 270:	00000000 	nop
 274:	866b0000 	lh	t3,0(s3)
 278:	02a02025 	move	a0,s5
 27c:	24020001 	li	v0,1
 280:	15600015 	bnez	t3,2d8 <L80829C28+0x10>
 284:	00000000 	nop
 288:	0c000000 	jal	0 <func_80829960>
 28c:	86450000 	lh	a1,0(s2)
 290:	50400004 	beqzl	v0,2a4 <func_808299A0+0x264>
 294:	86ac00a4 	lh	t4,164(s5)
 298:	1000000f 	b	2d8 <L80829C28+0x10>
 29c:	00001025 	move	v0,zero
 2a0:	86ac00a4 	lh	t4,164(s5)
 2a4:	258dffef 	addiu	t5,t4,-17
 2a8:	2da10008 	sltiu	at,t5,8
 2ac:	10200008 	beqz	at,2d0 <L80829C28+0x8>
 2b0:	000d6880 	sll	t5,t5,0x2
 2b4:	3c010000 	lui	at,0x0
 2b8:	002d0821 	addu	at,at,t5
 2bc:	8c2d0000 	lw	t5,0(at)
 2c0:	01a00008 	jr	t5
 2c4:	00000000 	nop

000002c8 <L80829C28>:
 2c8:	10000003 	b	2d8 <L80829C28+0x10>
 2cc:	00001025 	move	v0,zero
 2d0:	10000001 	b	2d8 <L80829C28+0x10>
 2d4:	24020001 	li	v0,1
 2d8:	104000d5 	beqz	v0,630 <L80829C28+0x368>
 2dc:	3c190000 	lui	t9,0x0
 2e0:	8e2202c0 	lw	v0,704(s1)
 2e4:	866f0000 	lh	t7,0(s3)
 2e8:	27390000 	addiu	t9,t9,0
 2ec:	244e0008 	addiu	t6,v0,8
 2f0:	ae2e02c0 	sw	t6,704(s1)
 2f4:	ac400004 	sw	zero,4(v0)
 2f8:	ac560000 	sw	s6,0(v0)
 2fc:	8e2202c0 	lw	v0,704(s1)
 300:	000fc0c0 	sll	t8,t7,0x3
 304:	030fc021 	addu	t8,t8,t7
 308:	0018c080 	sll	t8,t8,0x2
 30c:	24490008 	addiu	t1,v0,8
 310:	03192821 	addu	a1,t8,t9
 314:	ae2902c0 	sw	t1,704(s1)
 318:	8caa0008 	lw	t2,8(a1)
 31c:	8cae0004 	lw	t6,4(a1)
 320:	3c01fd00 	lui	at,0xfd00
 324:	000a5880 	sll	t3,t2,0x2
 328:	02eb6021 	addu	t4,s7,t3
 32c:	8d8d0000 	lw	t5,0(t4)
 330:	31c90007 	andi	t1,t6,0x7
 334:	00095540 	sll	t2,t1,0x15
 338:	31af0003 	andi	t7,t5,0x3
 33c:	000fc4c0 	sll	t8,t7,0x13
 340:	0301c825 	or	t9,t8,at
 344:	032a5825 	or	t3,t9,t2
 348:	ac4b0000 	sw	t3,0(v0)
 34c:	8cac0000 	lw	t4,0(a1)
 350:	240707ff 	li	a3,2047
 354:	ac4c0004 	sw	t4,4(v0)
 358:	8e2202c0 	lw	v0,704(s1)
 35c:	244d0008 	addiu	t5,v0,8
 360:	ae2d02c0 	sw	t5,704(s1)
 364:	8caf0008 	lw	t7,8(a1)
 368:	8cac0004 	lw	t4,4(a1)
 36c:	000fc080 	sll	t8,t7,0x2
 370:	02f87021 	addu	t6,s7,t8
 374:	8dc90000 	lw	t1,0(t6)
 378:	318d0007 	andi	t5,t4,0x7
 37c:	000d7d40 	sll	t7,t5,0x15
 380:	31390003 	andi	t9,t1,0x3
 384:	001954c0 	sll	t2,t9,0x13
 388:	015e5825 	or	t3,t2,s8
 38c:	016fc025 	or	t8,t3,t7
 390:	3c0e0700 	lui	t6,0x700
 394:	ac4e0004 	sw	t6,4(v0)
 398:	ac580000 	sw	t8,0(v0)
 39c:	8e2202c0 	lw	v0,704(s1)
 3a0:	3c19e600 	lui	t9,0xe600
 3a4:	3c0cf300 	lui	t4,0xf300
 3a8:	24490008 	addiu	t1,v0,8
 3ac:	ae2902c0 	sw	t1,704(s1)
 3b0:	ac400004 	sw	zero,4(v0)
 3b4:	ac590000 	sw	t9,0(v0)
 3b8:	8e2802c0 	lw	t0,704(s1)
 3bc:	3c0f0000 	lui	t7,0x0
 3c0:	3c0e0000 	lui	t6,0x0
 3c4:	250a0008 	addiu	t2,t0,8
 3c8:	ae2a02c0 	sw	t2,704(s1)
 3cc:	ad0c0000 	sw	t4,0(t0)
 3d0:	8cad0010 	lw	t5,16(a1)
 3d4:	8ca4000c 	lw	a0,12(a1)
 3d8:	8ca30008 	lw	v1,8(a1)
 3dc:	3c090000 	lui	t1,0x0
 3e0:	008d0019 	multu	a0,t5
 3e4:	00031880 	sll	v1,v1,0x2
 3e8:	01e37821 	addu	t7,t7,v1
 3ec:	8def0000 	lw	t7,0(t7)
 3f0:	01c37021 	addu	t6,t6,v1
 3f4:	8dce0000 	lw	t6,0(t6)
 3f8:	01234821 	addu	t1,t1,v1
 3fc:	00005812 	mflo	t3
 400:	016fc021 	addu	t8,t3,t7
 404:	01d83006 	srlv	a2,t8,t6
 408:	24c6ffff 	addiu	a2,a2,-1
 40c:	2cc107ff 	sltiu	at,a2,2047
 410:	10200003 	beqz	at,420 <L80829C28+0x158>
 414:	00000000 	nop
 418:	10000001 	b	420 <L80829C28+0x158>
 41c:	00c03825 	move	a3,a2
 420:	8d290000 	lw	t1,0(t1)
 424:	30eb0fff 	andi	t3,a3,0xfff
 428:	000b7b00 	sll	t7,t3,0xc
 42c:	01240019 	multu	t1,a0
 430:	3c010700 	lui	at,0x700
 434:	00001012 	mflo	v0
 438:	000210c2 	srl	v0,v0,0x3
 43c:	14400003 	bnez	v0,44c <L80829C28+0x184>
 440:	00402025 	move	a0,v0
 444:	10000001 	b	44c <L80829C28+0x184>
 448:	24040001 	li	a0,1
 44c:	14400003 	bnez	v0,45c <L80829C28+0x194>
 450:	249907ff 	addiu	t9,a0,2047
 454:	10000002 	b	460 <L80829C28+0x198>
 458:	24030001 	li	v1,1
 45c:	00401825 	move	v1,v0
 460:	0323001b 	divu	zero,t9,v1
 464:	00005012 	mflo	t2
 468:	314c0fff 	andi	t4,t2,0xfff
 46c:	01816825 	or	t5,t4,at
 470:	01afc025 	or	t8,t5,t7
 474:	ad180004 	sw	t8,4(t0)
 478:	8e2202c0 	lw	v0,704(s1)
 47c:	14600002 	bnez	v1,488 <L80829C28+0x1c0>
 480:	00000000 	nop
 484:	0007000d 	break	0x7
 488:	244e0008 	addiu	t6,v0,8
 48c:	ae2e02c0 	sw	t6,704(s1)
 490:	ac400004 	sw	zero,4(v0)
 494:	ac560000 	sw	s6,0(v0)
 498:	8e2202c0 	lw	v0,704(s1)
 49c:	3c190000 	lui	t9,0x0
 4a0:	24490008 	addiu	t1,v0,8
 4a4:	ae2902c0 	sw	t1,704(s1)
 4a8:	8ca30008 	lw	v1,8(a1)
 4ac:	8caa000c 	lw	t2,12(a1)
 4b0:	8ca90004 	lw	t1,4(a1)
 4b4:	00031880 	sll	v1,v1,0x2
 4b8:	0323c821 	addu	t9,t9,v1
 4bc:	8f390000 	lw	t9,0(t9)
 4c0:	032a0019 	multu	t9,t2
 4c4:	31390007 	andi	t9,t1,0x7
 4c8:	00195540 	sll	t2,t9,0x15
 4cc:	3c19f200 	lui	t9,0xf200
 4d0:	00006012 	mflo	t4
 4d4:	258b0007 	addiu	t3,t4,7
 4d8:	000b68c2 	srl	t5,t3,0x3
 4dc:	3c0b0000 	lui	t3,0x0
 4e0:	01635821 	addu	t3,t3,v1
 4e4:	8d6b0000 	lw	t3,0(t3)
 4e8:	31af01ff 	andi	t7,t5,0x1ff
 4ec:	000fc240 	sll	t8,t7,0x9
 4f0:	031e7025 	or	t6,t8,s8
 4f4:	316d0003 	andi	t5,t3,0x3
 4f8:	000d7cc0 	sll	t7,t5,0x13
 4fc:	01ca6025 	or	t4,t6,t2
 500:	018fc025 	or	t8,t4,t7
 504:	ac580000 	sw	t8,0(v0)
 508:	ac400004 	sw	zero,4(v0)
 50c:	8e2202c0 	lw	v0,704(s1)
 510:	24490008 	addiu	t1,v0,8
 514:	ae2902c0 	sw	t1,704(s1)
 518:	ac590000 	sw	t9,0(v0)
 51c:	8cae000c 	lw	t6,12(a1)
 520:	8caf0010 	lw	t7,16(a1)
 524:	25caffff 	addiu	t2,t6,-1
 528:	000a5880 	sll	t3,t2,0x2
 52c:	25f8ffff 	addiu	t8,t7,-1
 530:	00184880 	sll	t1,t8,0x2
 534:	316d0fff 	andi	t5,t3,0xfff
 538:	000d6300 	sll	t4,t5,0xc
 53c:	31390fff 	andi	t9,t1,0xfff
 540:	01997025 	or	t6,t4,t9
 544:	0c000000 	jal	0 <func_80829960>
 548:	ac4e0004 	sw	t6,4(v0)
 54c:	3c020000 	lui	v0,0x0
 550:	8c420000 	lw	v0,0(v0)
 554:	c64a0004 	lwc1	$f10,4(s2)
 558:	c6440008 	lwc1	$f4,8(s2)
 55c:	844a114c 	lh	t2,4428(v0)
 560:	844b114e 	lh	t3,4430(v0)
 564:	4406b000 	mfc1	a2,$f22
 568:	448a3000 	mtc1	t2,$f6
 56c:	448b8000 	mtc1	t3,$f16
 570:	24070001 	li	a3,1
 574:	46803220 	cvt.s.w	$f8,$f6
 578:	468084a0 	cvt.s.w	$f18,$f16
 57c:	460a4300 	add.s	$f12,$f8,$f10
 580:	0c000000 	jal	0 <func_80829960>
 584:	46049380 	add.s	$f14,$f18,$f4
 588:	4406a000 	mfc1	a2,$f20
 58c:	4600a306 	mov.s	$f12,$f20
 590:	4600a386 	mov.s	$f14,$f20
 594:	0c000000 	jal	0 <func_80829960>
 598:	24070001 	li	a3,1
 59c:	8e2202c0 	lw	v0,704(s1)
 5a0:	3c0fda38 	lui	t7,0xda38
 5a4:	35ef0003 	ori	t7,t7,0x3
 5a8:	244d0008 	addiu	t5,v0,8
 5ac:	ae2d02c0 	sw	t5,704(s1)
 5b0:	3c050000 	lui	a1,0x0
 5b4:	ac4f0000 	sw	t7,0(v0)
 5b8:	8ea40000 	lw	a0,0(s5)
 5bc:	24a50000 	addiu	a1,a1,0
 5c0:	24060110 	li	a2,272
 5c4:	0c000000 	jal	0 <func_80829960>
 5c8:	00408025 	move	s0,v0
 5cc:	0c000000 	jal	0 <func_80829960>
 5d0:	ae020004 	sw	v0,4(s0)
 5d4:	8e2202c0 	lw	v0,704(s1)
 5d8:	3c010100 	lui	at,0x100
 5dc:	24580008 	addiu	t8,v0,8
 5e0:	ae3802c0 	sw	t8,704(s1)
 5e4:	8e64000c 	lw	a0,12(s3)
 5e8:	3c180702 	lui	t8,0x702
 5ec:	37180604 	ori	t8,t8,0x604
 5f0:	308900ff 	andi	t1,a0,0xff
 5f4:	00096300 	sll	t4,t1,0xc
 5f8:	308e007f 	andi	t6,a0,0x7f
 5fc:	000e5040 	sll	t2,t6,0x1
 600:	0181c825 	or	t9,t4,at
 604:	032a5825 	or	t3,t9,t2
 608:	ac4b0000 	sw	t3,0(v0)
 60c:	8e6d0008 	lw	t5,8(s3)
 610:	3c090002 	lui	t1,0x2
 614:	35290400 	ori	t1,t1,0x400
 618:	ac4d0004 	sw	t5,4(v0)
 61c:	8e2202c0 	lw	v0,704(s1)
 620:	244f0008 	addiu	t7,v0,8
 624:	ae2f02c0 	sw	t7,704(s1)
 628:	ac490004 	sw	t1,4(v0)
 62c:	ac580000 	sw	t8,0(v0)
 630:	8e6c0010 	lw	t4,16(s3)
 634:	26940001 	addiu	s4,s4,1
 638:	2652000c 	addiu	s2,s2,12
 63c:	028c082a 	slt	at,s4,t4
 640:	5420ff0d 	bnezl	at,278 <func_808299A0+0x238>
 644:	866b0000 	lh	t3,0(s3)
 648:	0c000000 	jal	0 <func_80829960>
 64c:	267300a4 	addiu	s3,s3,164
 650:	1000fea5 	b	e8 <func_808299A0+0xa8>
 654:	86620000 	lh	v0,0(s3)
 658:	3c060000 	lui	a2,0x0
 65c:	24c60000 	addiu	a2,a2,0
 660:	27a400b0 	addiu	a0,sp,176
 664:	8ea50000 	lw	a1,0(s5)
 668:	0c000000 	jal	0 <func_80829960>
 66c:	2407011e 	li	a3,286
 670:	8fbf0054 	lw	ra,84(sp)
 674:	d7b40018 	ldc1	$f20,24(sp)
 678:	d7b60020 	ldc1	$f22,32(sp)
 67c:	d7b80028 	ldc1	$f24,40(sp)
 680:	8fb00030 	lw	s0,48(sp)
 684:	8fb10034 	lw	s1,52(sp)
 688:	8fb20038 	lw	s2,56(sp)
 68c:	8fb3003c 	lw	s3,60(sp)
 690:	8fb40040 	lw	s4,64(sp)
 694:	8fb50044 	lw	s5,68(sp)
 698:	8fb60048 	lw	s6,72(sp)
 69c:	8fb7004c 	lw	s7,76(sp)
 6a0:	8fbe0050 	lw	s8,80(sp)
 6a4:	03e00008 	jr	ra
 6a8:	27bd00d8 	addiu	sp,sp,216

000006ac <func_8082A00C>:
 6ac:	27bdffe8 	addiu	sp,sp,-24
 6b0:	afbf0014 	sw	ra,20(sp)
 6b4:	0c000000 	jal	0 <func_80829960>
 6b8:	afa40018 	sw	a0,24(sp)
 6bc:	8fa40018 	lw	a0,24(sp)
 6c0:	948e00a4 	lhu	t6,164(a0)
 6c4:	2dc1000a 	sltiu	at,t6,10
 6c8:	10200009 	beqz	at,6f0 <L8082A044+0xc>
 6cc:	000e7080 	sll	t6,t6,0x2
 6d0:	3c010000 	lui	at,0x0
 6d4:	002e0821 	addu	at,at,t6
 6d8:	8c2e0000 	lw	t6,0(at)
 6dc:	01c00008 	jr	t6
 6e0:	00000000 	nop

000006e4 <L8082A044>:
 6e4:	0c000000 	jal	0 <func_80829960>
 6e8:	00000000 	nop
 6ec:	8fa40018 	lw	a0,24(sp)
 6f0:	0c000000 	jal	0 <func_80829960>
 6f4:	00000000 	nop
 6f8:	8fbf0014 	lw	ra,20(sp)
 6fc:	27bd0018 	addiu	sp,sp,24
 700:	03e00008 	jr	ra
 704:	00000000 	nop
	...
