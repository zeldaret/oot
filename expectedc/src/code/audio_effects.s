
build/src/code/audio_effects.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Audio_SequenceChannelProcessSound>:
   0:	8c820000 	lw	v0,0(a0)
   4:	00803825 	move	a3,a0
   8:	24090010 	li	t1,16
   c:	00027a40 	sll	t7,v0,0x9
  10:	05e00003 	bltz	t7,20 <Audio_SequenceChannelProcessSound+0x20>
  14:	24080080 	li	t0,128
  18:	50a00016 	beqzl	a1,74 <Audio_SequenceChannelProcessSound+0x74>
  1c:	00027280 	sll	t6,v0,0xa
  20:	c484002c 	lwc1	$f4,44(a0)
  24:	c4860028 	lwc1	$f6,40(a0)
  28:	8c82004c 	lw	v0,76(a0)
  2c:	46062202 	mul.s	$f8,$f4,$f6
  30:	c44a0030 	lwc1	$f10,48(v0)
  34:	8c580000 	lw	t8,0(v0)
  38:	00185080 	sll	t2,t8,0x2
  3c:	460a4002 	mul.s	$f0,$f8,$f10
  40:	05410008 	bgez	t2,64 <Audio_SequenceChannelProcessSound+0x64>
  44:	00000000 	nop
  48:	908b0003 	lbu	t3,3(a0)
  4c:	316c0020 	andi	t4,t3,0x20
  50:	11800004 	beqz	t4,64 <Audio_SequenceChannelProcessSound+0x64>
  54:	00000000 	nop
  58:	c4500028 	lwc1	$f16,40(v0)
  5c:	46008002 	mul.s	$f0,$f16,$f0
  60:	00000000 	nop
  64:	46000482 	mul.s	$f18,$f0,$f0
  68:	8c820000 	lw	v0,0(a0)
  6c:	e4920034 	swc1	$f18,52(a0)
  70:	00027280 	sll	t6,v0,0xa
  74:	05c10007 	bgez	t6,94 <Audio_SequenceChannelProcessSound+0x94>
  78:	00000000 	nop
  7c:	908f000a 	lbu	t7,10(a0)
  80:	9098000b 	lbu	t8,11(a0)
  84:	01f80019 	multu	t7,t8
  88:	0000c812 	mflo	t9
  8c:	ac990030 	sw	t9,48(a0)
  90:	00000000 	nop
  94:	10c00008 	beqz	a2,b8 <Audio_SequenceChannelProcessSound+0xb8>
  98:	c4800038 	lwc1	$f0,56(a0)
  9c:	8c8a004c 	lw	t2,76(a0)
  a0:	908c0001 	lbu	t4,1(a0)
  a4:	c5440034 	lwc1	$f4,52(t2)
  a8:	358d0080 	ori	t5,t4,0x80
  ac:	a08d0001 	sb	t5,1(a0)
  b0:	46040002 	mul.s	$f0,$f0,$f4
  b4:	00000000 	nop
  b8:	00003025 	move	a2,zero
  bc:	8ce30050 	lw	v1,80(a3)
  c0:	24c60004 	addiu	a2,a2,4
  c4:	1060003c 	beqz	v1,1b8 <Audio_SequenceChannelProcessSound+0x1b8>
  c8:	00000000 	nop
  cc:	8c6e0000 	lw	t6,0(v1)
  d0:	000e7fc2 	srl	t7,t6,0x1f
  d4:	11e00038 	beqz	t7,1b8 <Audio_SequenceChannelProcessSound+0x1b8>
  d8:	00000000 	nop
  dc:	8c78002c 	lw	t8,44(v1)
  e0:	13000035 	beqz	t8,1b8 <Audio_SequenceChannelProcessSound+0x1b8>
  e4:	00000000 	nop
  e8:	90620000 	lbu	v0,0(v1)
  ec:	30590001 	andi	t9,v0,0x1
  f0:	53200015 	beqzl	t9,148 <Audio_SequenceChannelProcessSound+0x148>
  f4:	808a0001 	lb	t2,1(a0)
  f8:	c4660030 	lwc1	$f6,48(v1)
  fc:	c46a0038 	lwc1	$f10,56(v1)
 100:	906a0006 	lbu	t2,6(v1)
 104:	46003202 	mul.s	$f8,$f6,$f0
 108:	3059fffe 	andi	t9,v0,0xfffe
 10c:	e4680044 	swc1	$f8,68(v1)
 110:	c4900034 	lwc1	$f16,52(a0)
 114:	46105482 	mul.s	$f18,$f10,$f16
 118:	e4720040 	swc1	$f18,64(v1)
 11c:	908b000b 	lbu	t3,11(a0)
 120:	8c8e0030 	lw	t6,48(a0)
 124:	a0790000 	sb	t9,0(v1)
 128:	010b6023 	subu	t4,t0,t3
 12c:	014c0019 	multu	t2,t4
 130:	00006812 	mflo	t5
 134:	01cd7821 	addu	t7,t6,t5
 138:	000fc1c3 	sra	t8,t7,0x7
 13c:	1000001e 	b	1b8 <Audio_SequenceChannelProcessSound+0x1b8>
 140:	a0780007 	sb	t8,7(v1)
 144:	808a0001 	lb	t2,1(a0)
 148:	05430005 	bgezl	t2,160 <Audio_SequenceChannelProcessSound+0x160>
 14c:	8c820000 	lw	v0,0(a0)
 150:	c4640030 	lwc1	$f4,48(v1)
 154:	46002182 	mul.s	$f6,$f4,$f0
 158:	e4660044 	swc1	$f6,68(v1)
 15c:	8c820000 	lw	v0,0(a0)
 160:	00027240 	sll	t6,v0,0x9
 164:	05c20004 	bltzl	t6,178 <Audio_SequenceChannelProcessSound+0x178>
 168:	c4680038 	lwc1	$f8,56(v1)
 16c:	50a00007 	beqzl	a1,18c <Audio_SequenceChannelProcessSound+0x18c>
 170:	00027a80 	sll	t7,v0,0xa
 174:	c4680038 	lwc1	$f8,56(v1)
 178:	c48a0034 	lwc1	$f10,52(a0)
 17c:	460a4402 	mul.s	$f16,$f8,$f10
 180:	e4700040 	swc1	$f16,64(v1)
 184:	8c820000 	lw	v0,0(a0)
 188:	00027a80 	sll	t7,v0,0xa
 18c:	05e1000a 	bgez	t7,1b8 <Audio_SequenceChannelProcessSound+0x1b8>
 190:	00000000 	nop
 194:	9099000b 	lbu	t9,11(a0)
 198:	90780006 	lbu	t8,6(v1)
 19c:	8c8c0030 	lw	t4,48(a0)
 1a0:	01195823 	subu	t3,t0,t9
 1a4:	030b0019 	multu	t8,t3
 1a8:	00005012 	mflo	t2
 1ac:	018a7021 	addu	t6,t4,t2
 1b0:	000e69c3 	sra	t5,t6,0x7
 1b4:	a06d0007 	sb	t5,7(v1)
 1b8:	14c9ffc0 	bne	a2,t1,bc <Audio_SequenceChannelProcessSound+0xbc>
 1bc:	24e70004 	addiu	a3,a3,4
 1c0:	03e00008 	jr	ra
 1c4:	a0800001 	sb	zero,1(a0)

000001c8 <Audio_SequencePlayerProcessSound>:
 1c8:	27bdffd0 	addiu	sp,sp,-48
 1cc:	afbf002c 	sw	ra,44(sp)
 1d0:	afb40028 	sw	s4,40(sp)
 1d4:	afb30024 	sw	s3,36(sp)
 1d8:	afb20020 	sw	s2,32(sp)
 1dc:	afb1001c 	sw	s1,28(sp)
 1e0:	afb00018 	sw	s0,24(sp)
 1e4:	948e0012 	lhu	t6,18(a0)
 1e8:	00809025 	move	s2,a0
 1ec:	02408825 	move	s1,s2
 1f0:	11c00025 	beqz	t6,288 <Audio_SequencePlayerProcessSound+0xc0>
 1f4:	00008025 	move	s0,zero
 1f8:	c484001c 	lwc1	$f4,28(a0)
 1fc:	c4860020 	lwc1	$f6,32(a0)
 200:	3c013f80 	lui	at,0x3f80
 204:	44811000 	mtc1	at,$f2
 208:	46062200 	add.s	$f8,$f4,$f6
 20c:	90980000 	lbu	t8,0(a0)
 210:	e488001c 	swc1	$f8,28(a0)
 214:	c480001c 	lwc1	$f0,28(a0)
 218:	37190004 	ori	t9,t8,0x4
 21c:	a0990000 	sb	t9,0(a0)
 220:	4600103c 	c.lt.s	$f2,$f0
 224:	00000000 	nop
 228:	45020004 	bc1fl	23c <Audio_SequencePlayerProcessSound+0x74>
 22c:	44801000 	mtc1	zero,$f2
 230:	e482001c 	swc1	$f2,28(a0)
 234:	c480001c 	lwc1	$f0,28(a0)
 238:	44801000 	mtc1	zero,$f2
 23c:	00000000 	nop
 240:	4602003c 	c.lt.s	$f0,$f2
 244:	00000000 	nop
 248:	45020003 	bc1fl	258 <Audio_SequencePlayerProcessSound+0x90>
 24c:	96480012 	lhu	t0,18(s2)
 250:	e642001c 	swc1	$f2,28(s2)
 254:	96480012 	lhu	t0,18(s2)
 258:	2509ffff 	addiu	t1,t0,-1
 25c:	312affff 	andi	t2,t1,0xffff
 260:	15400009 	bnez	t2,288 <Audio_SequencePlayerProcessSound+0xc0>
 264:	a6490012 	sh	t1,18(s2)
 268:	924b0001 	lbu	t3,1(s2)
 26c:	24010002 	li	at,2
 270:	55610006 	bnel	t3,at,28c <Audio_SequencePlayerProcessSound+0xc4>
 274:	8e4c0000 	lw	t4,0(s2)
 278:	0c000000 	jal	0 <Audio_SequenceChannelProcessSound>
 27c:	02402025 	move	a0,s2
 280:	1000001d 	b	2f8 <Audio_SequencePlayerProcessSound+0x130>
 284:	8fbf002c 	lw	ra,44(sp)
 288:	8e4c0000 	lw	t4,0(s2)
 28c:	24140040 	li	s4,64
 290:	24130001 	li	s3,1
 294:	000c7140 	sll	t6,t4,0x5
 298:	05c10005 	bgez	t6,2b0 <Audio_SequencePlayerProcessSound+0xe8>
 29c:	00000000 	nop
 2a0:	c64a001c 	lwc1	$f10,28(s2)
 2a4:	c650002c 	lwc1	$f16,44(s2)
 2a8:	46105482 	mul.s	$f18,$f10,$f16
 2ac:	e6520030 	swc1	$f18,48(s2)
 2b0:	8e240038 	lw	a0,56(s1)
 2b4:	8c8f0000 	lw	t7,0(a0)
 2b8:	000fc7c2 	srl	t8,t7,0x1f
 2bc:	56780008 	bnel	s3,t8,2e0 <Audio_SequencePlayerProcessSound+0x118>
 2c0:	26100004 	addiu	s0,s0,4
 2c4:	8e450000 	lw	a1,0(s2)
 2c8:	92460000 	lbu	a2,0(s2)
 2cc:	00052940 	sll	a1,a1,0x5
 2d0:	00052fc2 	srl	a1,a1,0x1f
 2d4:	0c000000 	jal	0 <Audio_SequenceChannelProcessSound>
 2d8:	30c60001 	andi	a2,a2,0x1
 2dc:	26100004 	addiu	s0,s0,4
 2e0:	1614fff3 	bne	s0,s4,2b0 <Audio_SequencePlayerProcessSound+0xe8>
 2e4:	26310004 	addiu	s1,s1,4
 2e8:	92590000 	lbu	t9,0(s2)
 2ec:	3328fffb 	andi	t0,t9,0xfffb
 2f0:	a2480000 	sb	t0,0(s2)
 2f4:	8fbf002c 	lw	ra,44(sp)
 2f8:	8fb00018 	lw	s0,24(sp)
 2fc:	8fb1001c 	lw	s1,28(sp)
 300:	8fb20020 	lw	s2,32(sp)
 304:	8fb30024 	lw	s3,36(sp)
 308:	8fb40028 	lw	s4,40(sp)
 30c:	03e00008 	jr	ra
 310:	27bd0030 	addiu	sp,sp,48

00000314 <Audio_GetPortamentoFreqScale>:
 314:	948e0002 	lhu	t6,2(a0)
 318:	948f0004 	lhu	t7,4(a0)
 31c:	01cf1021 	addu	v0,t6,t7
 320:	a4820002 	sh	v0,2(a0)
 324:	00021203 	sra	v0,v0,0x8
 328:	304200ff 	andi	v0,v0,0xff
 32c:	2c41007f 	sltiu	at,v0,127
 330:	54200004 	bnezl	at,344 <Audio_GetPortamentoFreqScale+0x30>
 334:	3c013f80 	lui	at,0x3f80
 338:	2402007f 	li	v0,127
 33c:	a0800000 	sb	zero,0(a0)
 340:	3c013f80 	lui	at,0x3f80
 344:	44816000 	mtc1	at,$f12
 348:	3c010000 	lui	at,0x0
 34c:	0002c880 	sll	t9,v0,0x2
 350:	00390821 	addu	at,at,t9
 354:	c4240200 	lwc1	$f4,512(at)
 358:	c4880008 	lwc1	$f8,8(a0)
 35c:	460c2181 	sub.s	$f6,$f4,$f12
 360:	46083282 	mul.s	$f10,$f6,$f8
 364:	460c5080 	add.s	$f2,$f10,$f12
 368:	03e00008 	jr	ra
 36c:	46001006 	mov.s	$f0,$f2

00000370 <Audio_GetVibratoPitchChange>:
 370:	c4840010 	lwc1	$f4,16(a0)
 374:	8c8e0004 	lw	t6,4(a0)
 378:	8c880008 	lw	t0,8(a0)
 37c:	4600218d 	trunc.w.s	$f6,$f4
 380:	44183000 	mfc1	t8,$f6
 384:	00000000 	nop
 388:	01d8c821 	addu	t9,t6,t8
 38c:	00191a82 	srl	v1,t9,0xa
 390:	3063003f 	andi	v1,v1,0x3f
 394:	00034840 	sll	t1,v1,0x1
 398:	ac990004 	sw	t9,4(a0)
 39c:	01095021 	addu	t2,t0,t1
 3a0:	03e00008 	jr	ra
 3a4:	85420000 	lh	v0,0(t2)

000003a8 <Audio_GetVibratoFreqScale>:
 3a8:	27bdffe8 	addiu	sp,sp,-24
 3ac:	afbf0014 	sw	ra,20(sp)
 3b0:	9482001a 	lhu	v0,26(a0)
 3b4:	8c830000 	lw	v1,0(a0)
 3b8:	2401ffff 	li	at,-1
 3bc:	10400005 	beqz	v0,3d4 <Audio_GetVibratoFreqScale+0x2c>
 3c0:	244effff 	addiu	t6,v0,-1
 3c4:	3c013f80 	lui	at,0x3f80
 3c8:	44810000 	mtc1	at,$f0
 3cc:	10000081 	b	5d4 <Audio_GetVibratoFreqScale+0x22c>
 3d0:	a48e001a 	sh	t6,26(a0)
 3d4:	50610056 	beql	v1,at,530 <Audio_GetVibratoFreqScale+0x188>
 3d8:	44802000 	mtc1	zero,$f4
 3dc:	94820018 	lhu	v0,24(a0)
 3e0:	24010001 	li	at,1
 3e4:	50400019 	beqzl	v0,44c <Audio_GetVibratoFreqScale+0xa4>
 3e8:	c484000c 	lwc1	$f4,12(a0)
 3ec:	14410008 	bne	v0,at,410 <Audio_GetVibratoFreqScale+0x68>
 3f0:	00402825 	move	a1,v0
 3f4:	946f0016 	lhu	t7,22(v1)
 3f8:	94820018 	lhu	v0,24(a0)
 3fc:	448f2000 	mtc1	t7,$f4
 400:	00000000 	nop
 404:	468021a0 	cvt.s.w	$f6,$f4
 408:	1000000c 	b	43c <Audio_GetVibratoFreqScale+0x94>
 40c:	e486000c 	swc1	$f6,12(a0)
 410:	94780016 	lhu	t8,22(v1)
 414:	44853000 	mtc1	a1,$f6
 418:	c480000c 	lwc1	$f0,12(a0)
 41c:	44984000 	mtc1	t8,$f8
 420:	00000000 	nop
 424:	468042a0 	cvt.s.w	$f10,$f8
 428:	46803220 	cvt.s.w	$f8,$f6
 42c:	46005101 	sub.s	$f4,$f10,$f0
 430:	46082283 	div.s	$f10,$f4,$f8
 434:	460a0180 	add.s	$f6,$f0,$f10
 438:	e486000c 	swc1	$f6,12(a0)
 43c:	2459ffff 	addiu	t9,v0,-1
 440:	10000010 	b	484 <Audio_GetVibratoFreqScale+0xdc>
 444:	a4990018 	sh	t9,24(a0)
 448:	c484000c 	lwc1	$f4,12(a0)
 44c:	946a0016 	lhu	t2,22(v1)
 450:	4600220d 	trunc.w.s	$f8,$f4
 454:	44094000 	mfc1	t1,$f8
 458:	00000000 	nop
 45c:	512a000a 	beql	t1,t2,488 <Audio_GetVibratoFreqScale+0xe0>
 460:	94820016 	lhu	v0,22(a0)
 464:	9462001a 	lhu	v0,26(v1)
 468:	14400006 	bnez	v0,484 <Audio_GetVibratoFreqScale+0xdc>
 46c:	a4820018 	sh	v0,24(a0)
 470:	946b0016 	lhu	t3,22(v1)
 474:	448b5000 	mtc1	t3,$f10
 478:	00000000 	nop
 47c:	468051a0 	cvt.s.w	$f6,$f10
 480:	e486000c 	swc1	$f6,12(a0)
 484:	94820016 	lhu	v0,22(a0)
 488:	24010001 	li	at,1
 48c:	50400019 	beqzl	v0,4f4 <Audio_GetVibratoFreqScale+0x14c>
 490:	c4840010 	lwc1	$f4,16(a0)
 494:	14410008 	bne	v0,at,4b8 <Audio_GetVibratoFreqScale+0x110>
 498:	00402825 	move	a1,v0
 49c:	946c0014 	lhu	t4,20(v1)
 4a0:	94820016 	lhu	v0,22(a0)
 4a4:	448c2000 	mtc1	t4,$f4
 4a8:	00000000 	nop
 4ac:	46802220 	cvt.s.w	$f8,$f4
 4b0:	1000000c 	b	4e4 <Audio_GetVibratoFreqScale+0x13c>
 4b4:	e4880010 	swc1	$f8,16(a0)
 4b8:	946d0014 	lhu	t5,20(v1)
 4bc:	44854000 	mtc1	a1,$f8
 4c0:	c4800010 	lwc1	$f0,16(a0)
 4c4:	448d5000 	mtc1	t5,$f10
 4c8:	00000000 	nop
 4cc:	468051a0 	cvt.s.w	$f6,$f10
 4d0:	468042a0 	cvt.s.w	$f10,$f8
 4d4:	46003101 	sub.s	$f4,$f6,$f0
 4d8:	460a2183 	div.s	$f6,$f4,$f10
 4dc:	46060200 	add.s	$f8,$f0,$f6
 4e0:	e4880010 	swc1	$f8,16(a0)
 4e4:	244effff 	addiu	t6,v0,-1
 4e8:	10000010 	b	52c <Audio_GetVibratoFreqScale+0x184>
 4ec:	a48e0016 	sh	t6,22(a0)
 4f0:	c4840010 	lwc1	$f4,16(a0)
 4f4:	94790014 	lhu	t9,20(v1)
 4f8:	4600228d 	trunc.w.s	$f10,$f4
 4fc:	44185000 	mfc1	t8,$f10
 500:	00000000 	nop
 504:	5319000a 	beql	t8,t9,530 <Audio_GetVibratoFreqScale+0x188>
 508:	44802000 	mtc1	zero,$f4
 50c:	94620018 	lhu	v0,24(v1)
 510:	14400006 	bnez	v0,52c <Audio_GetVibratoFreqScale+0x184>
 514:	a4820016 	sh	v0,22(a0)
 518:	94680014 	lhu	t0,20(v1)
 51c:	44883000 	mtc1	t0,$f6
 520:	00000000 	nop
 524:	46803220 	cvt.s.w	$f8,$f6
 528:	e4880010 	swc1	$f8,16(a0)
 52c:	44802000 	mtc1	zero,$f4
 530:	c48a000c 	lwc1	$f10,12(a0)
 534:	3c013f80 	lui	at,0x3f80
 538:	460a2032 	c.eq.s	$f4,$f10
 53c:	00000000 	nop
 540:	45000004 	bc1f	554 <Audio_GetVibratoFreqScale+0x1ac>
 544:	00000000 	nop
 548:	44810000 	mtc1	at,$f0
 54c:	10000022 	b	5d8 <Audio_GetVibratoFreqScale+0x230>
 550:	8fbf0014 	lw	ra,20(sp)
 554:	0c000000 	jal	0 <Audio_SequenceChannelProcessSound>
 558:	afa40018 	sw	a0,24(sp)
 55c:	8fa40018 	lw	a0,24(sp)
 560:	3c013f80 	lui	at,0x3f80
 564:	44819000 	mtc1	at,$f18
 568:	3c013980 	lui	at,0x3980
 56c:	44814000 	mtc1	at,$f8
 570:	c486000c 	lwc1	$f6,12(a0)
 574:	44822000 	mtc1	v0,$f4
 578:	3c014700 	lui	at,0x4700
 57c:	46083402 	mul.s	$f16,$f6,$f8
 580:	44813000 	mtc1	at,$f6
 584:	3c014780 	lui	at,0x4780
 588:	3c090000 	lui	t1,0x0
 58c:	8d290000 	lw	t1,0(t1)
 590:	468022a0 	cvt.s.w	$f10,$f4
 594:	252a0001 	addiu	t2,t1,1
 598:	46128080 	add.s	$f2,$f16,$f18
 59c:	46065200 	add.s	$f8,$f10,$f6
 5a0:	44813000 	mtc1	at,$f6
 5a4:	3c010000 	lui	at,0x0
 5a8:	46029303 	div.s	$f12,$f18,$f2
 5ac:	460c1101 	sub.s	$f4,$f2,$f12
 5b0:	46082282 	mul.s	$f10,$f4,$f8
 5b4:	46065103 	div.s	$f4,$f10,$f6
 5b8:	c42a0000 	lwc1	$f10,0(at)
 5bc:	460c2200 	add.s	$f8,$f4,$f12
 5c0:	46089003 	div.s	$f0,$f18,$f8
 5c4:	46005180 	add.s	$f6,$f10,$f0
 5c8:	e4260000 	swc1	$f6,0(at)
 5cc:	3c010000 	lui	at,0x0
 5d0:	ac2a0000 	sw	t2,0(at)
 5d4:	8fbf0014 	lw	ra,20(sp)
 5d8:	27bd0018 	addiu	sp,sp,24
 5dc:	03e00008 	jr	ra
 5e0:	00000000 	nop

000005e4 <Audio_NoteVibratoUpdate>:
 5e4:	27bdffe8 	addiu	sp,sp,-24
 5e8:	afbf0014 	sw	ra,20(sp)
 5ec:	908e0090 	lbu	t6,144(a0)
 5f0:	00802825 	move	a1,a0
 5f4:	24840090 	addiu	a0,a0,144
 5f8:	51c00006 	beqzl	t6,614 <Audio_NoteVibratoUpdate+0x30>
 5fc:	90af00b0 	lbu	t7,176(a1)
 600:	0c000000 	jal	0 <Audio_SequenceChannelProcessSound>
 604:	afa50018 	sw	a1,24(sp)
 608:	8fa50018 	lw	a1,24(sp)
 60c:	e4a00038 	swc1	$f0,56(a1)
 610:	90af00b0 	lbu	t7,176(a1)
 614:	24a4009c 	addiu	a0,a1,156
 618:	51e00006 	beqzl	t7,634 <Audio_NoteVibratoUpdate+0x50>
 61c:	8fbf0014 	lw	ra,20(sp)
 620:	0c000000 	jal	0 <Audio_SequenceChannelProcessSound>
 624:	afa50018 	sw	a1,24(sp)
 628:	8fa50018 	lw	a1,24(sp)
 62c:	e4a0003c 	swc1	$f0,60(a1)
 630:	8fbf0014 	lw	ra,20(sp)
 634:	27bd0018 	addiu	sp,sp,24
 638:	03e00008 	jr	ra
 63c:	00000000 	nop

00000640 <Audio_NoteVibratoInit>:
 640:	3c013f80 	lui	at,0x3f80
 644:	44812000 	mtc1	at,$f4
 648:	240e0001 	li	t6,1
 64c:	a08e00b0 	sb	t6,176(a0)
 650:	ac8000a0 	sw	zero,160(a0)
 654:	3c0f0000 	lui	t7,0x0
 658:	e484003c 	swc1	$f4,60(a0)
 65c:	8def0008 	lw	t7,8(t7)
 660:	8c980044 	lw	t8,68(a0)
 664:	ac8f00a4 	sw	t7,164(a0)
 668:	8f190050 	lw	t9,80(t8)
 66c:	ac99009c 	sw	t9,156(a0)
 670:	9725001a 	lhu	a1,26(t9)
 674:	03201825 	move	v1,t9
 678:	14a00008 	bnez	a1,69c <Audio_NoteVibratoInit+0x5c>
 67c:	a48500b4 	sh	a1,180(a0)
 680:	97280016 	lhu	t0,22(t9)
 684:	2482009c 	addiu	v0,a0,156
 688:	44883000 	mtc1	t0,$f6
 68c:	00000000 	nop
 690:	46803220 	cvt.s.w	$f8,$f6
 694:	10000007 	b	6b4 <Audio_NoteVibratoInit+0x74>
 698:	e448000c 	swc1	$f8,12(v0)
 69c:	94690012 	lhu	t1,18(v1)
 6a0:	2482009c 	addiu	v0,a0,156
 6a4:	44895000 	mtc1	t1,$f10
 6a8:	00000000 	nop
 6ac:	46805420 	cvt.s.w	$f16,$f10
 6b0:	e450000c 	swc1	$f16,12(v0)
 6b4:	94650018 	lhu	a1,24(v1)
 6b8:	14a00007 	bnez	a1,6d8 <Audio_NoteVibratoInit+0x98>
 6bc:	a4450016 	sh	a1,22(v0)
 6c0:	946a0014 	lhu	t2,20(v1)
 6c4:	448a9000 	mtc1	t2,$f18
 6c8:	00000000 	nop
 6cc:	46809120 	cvt.s.w	$f4,$f18
 6d0:	10000006 	b	6ec <Audio_NoteVibratoInit+0xac>
 6d4:	e4440010 	swc1	$f4,16(v0)
 6d8:	946b0010 	lhu	t3,16(v1)
 6dc:	448b3000 	mtc1	t3,$f6
 6e0:	00000000 	nop
 6e4:	46803220 	cvt.s.w	$f8,$f6
 6e8:	e4480010 	swc1	$f8,16(v0)
 6ec:	946c001c 	lhu	t4,28(v1)
 6f0:	03e00008 	jr	ra
 6f4:	a44c001a 	sh	t4,26(v0)

000006f8 <Audio_NotePortamentoInit>:
 6f8:	3c013f80 	lui	at,0x3f80
 6fc:	44812000 	mtc1	at,$f4
 700:	8c8e0044 	lw	t6,68(a0)
 704:	e4840038 	swc1	$f4,56(a0)
 708:	8dd80020 	lw	t8,32(t6)
 70c:	ac980090 	sw	t8,144(a0)
 710:	8dcf0024 	lw	t7,36(t6)
 714:	ac8f0094 	sw	t7,148(a0)
 718:	8dd80028 	lw	t8,40(t6)
 71c:	03e00008 	jr	ra
 720:	ac980098 	sw	t8,152(a0)

00000724 <Audio_AdsrInit>:
 724:	afa60008 	sw	a2,8(sp)
 728:	44800000 	mtc1	zero,$f0
 72c:	a0800000 	sb	zero,0(a0)
 730:	a4800002 	sh	zero,2(a0)
 734:	ac85001c 	sw	a1,28(a0)
 738:	e4800004 	swc1	$f0,4(a0)
 73c:	03e00008 	jr	ra
 740:	e4800010 	swc1	$f0,16(a0)

00000744 <Audio_AdsrUpdate>:
 744:	90830000 	lbu	v1,0(a0)
 748:	00601025 	move	v0,v1
 74c:	3042000f 	andi	v0,v0,0xf
 750:	2c410009 	sltiu	at,v0,9
 754:	102000a2 	beqz	at,9e0 <Audio_AdsrUpdate+0x29c>
 758:	00402825 	move	a1,v0
 75c:	00027080 	sll	t6,v0,0x2
 760:	3c010000 	lui	at,0x0
 764:	002e0821 	addu	at,at,t6
 768:	8c2e0000 	lw	t6,0(at)
 76c:	01c00008 	jr	t6
 770:	00000000 	nop
 774:	44800000 	mtc1	zero,$f0
 778:	03e00008 	jr	ra
 77c:	00000000 	nop
 780:	8c8f0000 	lw	t7,0(a0)
 784:	3068fff0 	andi	t0,v1,0xfff0
 788:	35090005 	ori	t1,t0,0x5
 78c:	000fc840 	sll	t9,t7,0x1
 790:	07230004 	bgezl	t9,7a4 <Audio_AdsrUpdate+0x60>
 794:	306afff0 	andi	t2,v1,0xfff0
 798:	10000091 	b	9e0 <Audio_AdsrUpdate+0x29c>
 79c:	a0890000 	sb	t1,0(a0)
 7a0:	306afff0 	andi	t2,v1,0xfff0
 7a4:	354b0003 	ori	t3,t2,0x3
 7a8:	a0800001 	sb	zero,1(a0)
 7ac:	a08b0000 	sb	t3,0(a0)
 7b0:	908d0001 	lbu	t5,1(a0)
 7b4:	8c8c001c 	lw	t4,28(a0)
 7b8:	2401fffd 	li	at,-3
 7bc:	000d7080 	sll	t6,t5,0x2
 7c0:	018e1021 	addu	v0,t4,t6
 7c4:	844f0000 	lh	t7,0(v0)
 7c8:	a48f0002 	sh	t7,2(a0)
 7cc:	84850002 	lh	a1,2(a0)
 7d0:	10a10013 	beq	a1,at,820 <Audio_AdsrUpdate+0xdc>
 7d4:	2401fffe 	li	at,-2
 7d8:	10a1000e 	beq	a1,at,814 <Audio_AdsrUpdate+0xd0>
 7dc:	2401ffff 	li	at,-1
 7e0:	50a10008 	beql	a1,at,804 <Audio_AdsrUpdate+0xc0>
 7e4:	90880000 	lbu	t0,0(a0)
 7e8:	54a00013 	bnezl	a1,838 <Audio_AdsrUpdate+0xf4>
 7ec:	44852000 	mtc1	a1,$f4
 7f0:	90980000 	lbu	t8,0(a0)
 7f4:	3319fff0 	andi	t9,t8,0xfff0
 7f8:	10000038 	b	8dc <Audio_AdsrUpdate+0x198>
 7fc:	a0990000 	sb	t9,0(a0)
 800:	90880000 	lbu	t0,0(a0)
 804:	3109fff0 	andi	t1,t0,0xfff0
 808:	352a0005 	ori	t2,t1,0x5
 80c:	10000033 	b	8dc <Audio_AdsrUpdate+0x198>
 810:	a08a0000 	sb	t2,0(a0)
 814:	844b0002 	lh	t3,2(v0)
 818:	1000ffe5 	b	7b0 <Audio_AdsrUpdate+0x6c>
 81c:	a08b0001 	sb	t3,1(a0)
 820:	908d0000 	lbu	t5,0(a0)
 824:	31acfff0 	andi	t4,t5,0xfff0
 828:	358e0001 	ori	t6,t4,0x1
 82c:	1000002b 	b	8dc <Audio_AdsrUpdate+0x198>
 830:	a08e0000 	sb	t6,0(a0)
 834:	44852000 	mtc1	a1,$f4
 838:	3c010000 	lui	at,0x0
 83c:	c428286c 	lwc1	$f8,10348(at)
 840:	468021a0 	cvt.s.w	$f6,$f4
 844:	24190001 	li	t9,1
 848:	46083282 	mul.s	$f10,$f6,$f8
 84c:	4600540d 	trunc.w.s	$f16,$f10
 850:	44188000 	mfc1	t8,$f16
 854:	00000000 	nop
 858:	a4980002 	sh	t8,2(a0)
 85c:	84850002 	lh	a1,2(a0)
 860:	54a00004 	bnezl	a1,874 <Audio_AdsrUpdate+0x130>
 864:	90820001 	lbu	v0,1(a0)
 868:	a4990002 	sh	t9,2(a0)
 86c:	84850002 	lh	a1,2(a0)
 870:	90820001 	lbu	v0,1(a0)
 874:	8c88001c 	lw	t0,28(a0)
 878:	3c010000 	lui	at,0x0
 87c:	00024880 	sll	t1,v0,0x2
 880:	01095021 	addu	t2,t0,t1
 884:	854b0002 	lh	t3,2(t2)
 888:	c4260024 	lwc1	$f6,36(at)
 88c:	908d0000 	lbu	t5,0(a0)
 890:	448b9000 	mtc1	t3,$f18
 894:	244f0001 	addiu	t7,v0,1
 898:	31acfff0 	andi	t4,t5,0xfff0
 89c:	46809120 	cvt.s.w	$f4,$f18
 8a0:	c4920010 	lwc1	$f18,16(a0)
 8a4:	358e0004 	ori	t6,t4,0x4
 8a8:	a08e0000 	sb	t6,0(a0)
 8ac:	a08f0001 	sb	t7,1(a0)
 8b0:	46062203 	div.s	$f8,$f4,$f6
 8b4:	44853000 	mtc1	a1,$f6
 8b8:	e4880014 	swc1	$f8,20(a0)
 8bc:	c4800014 	lwc1	$f0,20(a0)
 8c0:	46803220 	cvt.s.w	$f8,$f6
 8c4:	46000282 	mul.s	$f10,$f0,$f0
 8c8:	e48a0014 	swc1	$f10,20(a0)
 8cc:	c4900014 	lwc1	$f16,20(a0)
 8d0:	46128101 	sub.s	$f4,$f16,$f18
 8d4:	46082283 	div.s	$f10,$f4,$f8
 8d8:	e48a0008 	swc1	$f10,8(a0)
 8dc:	90980000 	lbu	t8,0(a0)
 8e0:	24010004 	li	at,4
 8e4:	3319000f 	andi	t9,t8,0xf
 8e8:	5721003e 	bnel	t9,at,9e4 <Audio_AdsrUpdate+0x2a0>
 8ec:	8c820000 	lw	v0,0(a0)
 8f0:	84880002 	lh	t0,2(a0)
 8f4:	c4900010 	lwc1	$f16,16(a0)
 8f8:	c4920008 	lwc1	$f18,8(a0)
 8fc:	2509ffff 	addiu	t1,t0,-1
 900:	a4890002 	sh	t1,2(a0)
 904:	46128180 	add.s	$f6,$f16,$f18
 908:	848a0002 	lh	t2,2(a0)
 90c:	1d400034 	bgtz	t2,9e0 <Audio_AdsrUpdate+0x29c>
 910:	e4860010 	swc1	$f6,16(a0)
 914:	908b0000 	lbu	t3,0(a0)
 918:	316dfff0 	andi	t5,t3,0xfff0
 91c:	35ac0003 	ori	t4,t5,0x3
 920:	1000002f 	b	9e0 <Audio_AdsrUpdate+0x29c>
 924:	a08c0000 	sb	t4,0(a0)
 928:	44806000 	mtc1	zero,$f12
 92c:	c4800004 	lwc1	$f0,4(a0)
 930:	c4840010 	lwc1	$f4,16(a0)
 934:	c488000c 	lwc1	$f8,12(a0)
 938:	46006032 	c.eq.s	$f12,$f0
 93c:	24010006 	li	at,6
 940:	46082281 	sub.s	$f10,$f4,$f8
 944:	45010010 	bc1t	988 <Audio_AdsrUpdate+0x244>
 948:	e48a0010 	swc1	$f10,16(a0)
 94c:	14a1000e 	bne	a1,at,988 <Audio_AdsrUpdate+0x244>
 950:	00000000 	nop
 954:	c4900010 	lwc1	$f16,16(a0)
 958:	240e0080 	li	t6,128
 95c:	4600803c 	c.lt.s	$f16,$f0
 960:	00000000 	nop
 964:	4502001f 	bc1fl	9e4 <Audio_AdsrUpdate+0x2a0>
 968:	8c820000 	lw	v0,0(a0)
 96c:	908f0000 	lbu	t7,0(a0)
 970:	e4800010 	swc1	$f0,16(a0)
 974:	a48e0002 	sh	t6,2(a0)
 978:	31f8fff0 	andi	t8,t7,0xfff0
 97c:	37190008 	ori	t9,t8,0x8
 980:	10000017 	b	9e0 <Audio_AdsrUpdate+0x29c>
 984:	a0990000 	sb	t9,0(a0)
 988:	3c010000 	lui	at,0x0
 98c:	c4260028 	lwc1	$f6,40(at)
 990:	c4920010 	lwc1	$f18,16(a0)
 994:	4606903c 	c.lt.s	$f18,$f6
 998:	00000000 	nop
 99c:	45020011 	bc1fl	9e4 <Audio_AdsrUpdate+0x2a0>
 9a0:	8c820000 	lw	v0,0(a0)
 9a4:	90880000 	lbu	t0,0(a0)
 9a8:	e48c0010 	swc1	$f12,16(a0)
 9ac:	3109fff0 	andi	t1,t0,0xfff0
 9b0:	1000000b 	b	9e0 <Audio_AdsrUpdate+0x29c>
 9b4:	a0890000 	sb	t1,0(a0)
 9b8:	848a0002 	lh	t2,2(a0)
 9bc:	254bffff 	addiu	t3,t2,-1
 9c0:	a48b0002 	sh	t3,2(a0)
 9c4:	848d0002 	lh	t5,2(a0)
 9c8:	55a00006 	bnezl	t5,9e4 <Audio_AdsrUpdate+0x2a0>
 9cc:	8c820000 	lw	v0,0(a0)
 9d0:	908c0000 	lbu	t4,0(a0)
 9d4:	318efff0 	andi	t6,t4,0xfff0
 9d8:	35cf0007 	ori	t7,t6,0x7
 9dc:	a08f0000 	sb	t7,0(a0)
 9e0:	8c820000 	lw	v0,0(a0)
 9e4:	44806000 	mtc1	zero,$f12
 9e8:	3c013f80 	lui	at,0x3f80
 9ec:	0002c880 	sll	t9,v0,0x2
 9f0:	07230009 	bgezl	t9,a18 <Audio_AdsrUpdate+0x2d4>
 9f4:	000270c0 	sll	t6,v0,0x3
 9f8:	90880000 	lbu	t0,0(a0)
 9fc:	3109fff0 	andi	t1,t0,0xfff0
 a00:	352b0006 	ori	t3,t1,0x6
 a04:	a08b0000 	sb	t3,0(a0)
 a08:	316d00df 	andi	t5,t3,0xdf
 a0c:	a08d0000 	sb	t5,0(a0)
 a10:	8c820000 	lw	v0,0(a0)
 a14:	000270c0 	sll	t6,v0,0x3
 a18:	05c30008 	bgezl	t6,a3c <Audio_AdsrUpdate+0x2f8>
 a1c:	c4820010 	lwc1	$f2,16(a0)
 a20:	908f0000 	lbu	t7,0(a0)
 a24:	31f8fff0 	andi	t8,t7,0xfff0
 a28:	37080007 	ori	t0,t8,0x7
 a2c:	a0880000 	sb	t0,0(a0)
 a30:	310900ef 	andi	t1,t0,0xef
 a34:	a0890000 	sb	t1,0(a0)
 a38:	c4820010 	lwc1	$f2,16(a0)
 a3c:	460c103c 	c.lt.s	$f2,$f12
 a40:	00000000 	nop
 a44:	45020004 	bc1fl	a58 <Audio_AdsrUpdate+0x314>
 a48:	44816000 	mtc1	at,$f12
 a4c:	03e00008 	jr	ra
 a50:	46006006 	mov.s	$f0,$f12
 a54:	44816000 	mtc1	at,$f12
 a58:	00000000 	nop
 a5c:	4602603c 	c.lt.s	$f12,$f2
 a60:	00000000 	nop
 a64:	45020004 	bc1fl	a78 <Audio_AdsrUpdate+0x334>
 a68:	46001006 	mov.s	$f0,$f2
 a6c:	03e00008 	jr	ra
 a70:	46006006 	mov.s	$f0,$f12
 a74:	46001006 	mov.s	$f0,$f2
 a78:	03e00008 	jr	ra
 a7c:	00000000 	nop
