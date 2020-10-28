
build/src/overlays/effects/ovl_Effect_Ss_Fire_Tail/z_eff_ss_fire_tail.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsFireTail_Init>:
   0:	afa40000 	sw	a0,0(sp)
   4:	afa50004 	sw	a1,4(sp)
   8:	8cef0004 	lw	t7,4(a3)
   c:	44800000 	mtc1	zero,$f0
  10:	3c0a0000 	lui	t2,0x0
  14:	accf0000 	sw	t7,0(a2)
  18:	8cee0008 	lw	t6,8(a3)
  1c:	3c0b0000 	lui	t3,0x0
  20:	254a0000 	addiu	t2,t2,0
  24:	acce0004 	sw	t6,4(a2)
  28:	8cef000c 	lw	t7,12(a3)
  2c:	256b0000 	addiu	t3,t3,0
  30:	3c01447a 	lui	at,0x447a
  34:	accf0008 	sw	t7,8(a2)
  38:	8cf90014 	lw	t9,20(a3)
  3c:	44813000 	mtc1	at,$f6
  40:	240ffff6 	li	t7,-10
  44:	acd9002c 	sw	t9,44(a2)
  48:	8cf80018 	lw	t8,24(a3)
  4c:	acd80030 	sw	t8,48(a2)
  50:	8cf9001c 	lw	t9,28(a3)
  54:	e4c0000c 	swc1	$f0,12(a2)
  58:	e4c00010 	swc1	$f0,16(a2)
  5c:	e4c00014 	swc1	$f0,20(a2)
  60:	e4c00018 	swc1	$f0,24(a2)
  64:	e4c0001c 	swc1	$f0,28(a2)
  68:	e4c00020 	swc1	$f0,32(a2)
  6c:	acd90034 	sw	t9,52(a2)
  70:	8ce80030 	lw	t0,48(a3)
  74:	2418fff1 	li	t8,-15
  78:	24190001 	li	t9,1
  7c:	a4c8005c 	sh	t0,92(a2)
  80:	8ce90000 	lw	t1,0(a3)
  84:	acca0028 	sw	t2,40(a2)
  88:	accb0024 	sw	t3,36(a2)
  8c:	acc9003c 	sw	t1,60(a2)
  90:	c4e40010 	lwc1	$f4,16(a3)
  94:	46062202 	mul.s	$f8,$f4,$f6
  98:	4600428d 	trunc.w.s	$f10,$f8
  9c:	440d5000 	mfc1	t5,$f10
  a0:	00000000 	nop
  a4:	a4cd0040 	sh	t5,64(a2)
  a8:	8cee0030 	lw	t6,48(a3)
  ac:	a4cf0044 	sh	t7,68(a2)
  b0:	a4d80046 	sh	t8,70(a2)
  b4:	a4ce0042 	sh	t6,66(a2)
  b8:	84e30020 	lh	v1,32(a3)
  bc:	54600004 	bnezl	v1,d0 <EffectSsFireTail_Init+0xd0>
  c0:	a4c30054 	sh	v1,84(a2)
  c4:	a4f90020 	sh	t9,32(a3)
  c8:	84e30020 	lh	v1,32(a3)
  cc:	a4c30054 	sh	v1,84(a2)
  d0:	90e80022 	lbu	t0,34(a3)
  d4:	24020001 	li	v0,1
  d8:	a4c80048 	sh	t0,72(a2)
  dc:	90e90023 	lbu	t1,35(a3)
  e0:	a4c9004a 	sh	t1,74(a2)
  e4:	90ea0024 	lbu	t2,36(a3)
  e8:	a4ca004c 	sh	t2,76(a2)
  ec:	90eb0026 	lbu	t3,38(a3)
  f0:	a4cb004e 	sh	t3,78(a2)
  f4:	90ec0027 	lbu	t4,39(a3)
  f8:	a4cc0050 	sh	t4,80(a2)
  fc:	90ed0028 	lbu	t5,40(a3)
 100:	a4cd0052 	sh	t5,82(a2)
 104:	84ee002c 	lh	t6,44(a3)
 108:	a4ce0056 	sh	t6,86(a2)
 10c:	84ef002a 	lh	t7,42(a3)
 110:	03e00008 	jr	ra
 114:	a4cf0058 	sh	t7,88(a2)

00000118 <EffectSsFireTail_Draw>:
 118:	27bdff48 	addiu	sp,sp,-184
 11c:	afb00038 	sw	s0,56(sp)
 120:	afbf0044 	sw	ra,68(sp)
 124:	afb20040 	sw	s2,64(sp)
 128:	afb1003c 	sw	s1,60(sp)
 12c:	afa500bc 	sw	a1,188(sp)
 130:	8c920000 	lw	s2,0(a0)
 134:	00c08025 	move	s0,a2
 138:	00808825 	move	s1,a0
 13c:	3c060000 	lui	a2,0x0
 140:	24c60000 	addiu	a2,a2,0
 144:	27a40080 	addiu	a0,sp,128
 148:	240700b6 	li	a3,182
 14c:	0c000000 	jal	0 <EffectSsFireTail_Init>
 150:	02402825 	move	a1,s2
 154:	44800000 	mtc1	zero,$f0
 158:	00000000 	nop
 15c:	e7a000a8 	swc1	$f0,168(sp)
 160:	e7a000a4 	swc1	$f0,164(sp)
 164:	e7a000a0 	swc1	$f0,160(sp)
 168:	8e02003c 	lw	v0,60(s0)
 16c:	1040004a 	beqz	v0,298 <EffectSsFireTail_Draw+0x180>
 170:	260e002c 	addiu	t6,s0,44
 174:	afae0050 	sw	t6,80(sp)
 178:	8c59005c 	lw	t9,92(v0)
 17c:	add90000 	sw	t9,0(t6)
 180:	8c580060 	lw	t8,96(v0)
 184:	add80004 	sw	t8,4(t6)
 188:	8c590064 	lw	t9,100(v0)
 18c:	add90008 	sw	t9,8(t6)
 190:	86030056 	lh	v1,86(s0)
 194:	04630011 	bgezl	v1,1dc <EffectSsFireTail_Draw+0xc4>
 198:	8e281c44 	lw	t0,7236(s1)
 19c:	8e02003c 	lw	v0,60(s0)
 1a0:	c6120008 	lwc1	$f18,8(s0)
 1a4:	c6100000 	lwc1	$f16,0(s0)
 1a8:	c44a002c 	lwc1	$f10,44(v0)
 1ac:	c4480024 	lwc1	$f8,36(v0)
 1b0:	c6060004 	lwc1	$f6,4(s0)
 1b4:	460a9280 	add.s	$f10,$f18,$f10
 1b8:	c4520028 	lwc1	$f18,40(v0)
 1bc:	00003825 	move	a3,zero
 1c0:	46088300 	add.s	$f12,$f16,$f8
 1c4:	44065000 	mfc1	a2,$f10
 1c8:	0c000000 	jal	0 <EffectSsFireTail_Init>
 1cc:	46123380 	add.s	$f14,$f6,$f18
 1d0:	10000039 	b	2b8 <EffectSsFireTail_Draw+0x1a0>
 1d4:	27a400a0 	addiu	a0,sp,160
 1d8:	8e281c44 	lw	t0,7236(s1)
 1dc:	a7a3007a 	sh	v1,122(sp)
 1e0:	afa8007c 	sw	t0,124(sp)
 1e4:	862907a0 	lh	t1,1952(s1)
 1e8:	00095080 	sll	t2,t1,0x2
 1ec:	022a5821 	addu	t3,s1,t2
 1f0:	0c000000 	jal	0 <EffectSsFireTail_Init>
 1f4:	8d640790 	lw	a0,1936(t3)
 1f8:	00022400 	sll	a0,v0,0x10
 1fc:	0c000000 	jal	0 <EffectSsFireTail_Init>
 200:	00042403 	sra	a0,a0,0x10
 204:	3c0140a0 	lui	at,0x40a0
 208:	44814000 	mtc1	at,$f8
 20c:	87ad007a 	lh	t5,122(sp)
 210:	8fac007c 	lw	t4,124(sp)
 214:	46080282 	mul.s	$f10,$f0,$f8
 218:	000d7080 	sll	t6,t5,0x2
 21c:	01cd7023 	subu	t6,t6,t5
 220:	000e7080 	sll	t6,t6,0x2
 224:	018e1821 	addu	v1,t4,t6
 228:	c4660908 	lwc1	$f6,2312(v1)
 22c:	460a3401 	sub.s	$f16,$f6,$f10
 230:	e6100000 	swc1	$f16,0(s0)
 234:	c472090c 	lwc1	$f18,2316(v1)
 238:	e6120004 	swc1	$f18,4(s0)
 23c:	862f07a0 	lh	t7,1952(s1)
 240:	000fc080 	sll	t8,t7,0x2
 244:	0238c821 	addu	t9,s1,t8
 248:	8f240790 	lw	a0,1936(t9)
 24c:	0c000000 	jal	0 <EffectSsFireTail_Init>
 250:	afa30054 	sw	v1,84(sp)
 254:	00022400 	sll	a0,v0,0x10
 258:	0c000000 	jal	0 <EffectSsFireTail_Init>
 25c:	00042403 	sra	a0,a0,0x10
 260:	3c0140a0 	lui	at,0x40a0
 264:	44814000 	mtc1	at,$f8
 268:	8fa30054 	lw	v1,84(sp)
 26c:	c60c0000 	lwc1	$f12,0(s0)
 270:	46080182 	mul.s	$f6,$f0,$f8
 274:	c4640910 	lwc1	$f4,2320(v1)
 278:	c60e0004 	lwc1	$f14,4(s0)
 27c:	00003825 	move	a3,zero
 280:	46062281 	sub.s	$f10,$f4,$f6
 284:	e60a0008 	swc1	$f10,8(s0)
 288:	0c000000 	jal	0 <EffectSsFireTail_Init>
 28c:	8e060008 	lw	a2,8(s0)
 290:	10000009 	b	2b8 <EffectSsFireTail_Draw+0x1a0>
 294:	27a400a0 	addiu	a0,sp,160
 298:	c60c0000 	lwc1	$f12,0(s0)
 29c:	c60e0004 	lwc1	$f14,4(s0)
 2a0:	8e060008 	lw	a2,8(s0)
 2a4:	0c000000 	jal	0 <EffectSsFireTail_Init>
 2a8:	00003825 	move	a3,zero
 2ac:	2608002c 	addiu	t0,s0,44
 2b0:	afa80050 	sw	t0,80(sp)
 2b4:	27a400a0 	addiu	a0,sp,160
 2b8:	0c000000 	jal	0 <EffectSsFireTail_Init>
 2bc:	8fa50050 	lw	a1,80(sp)
 2c0:	a7a2005e 	sh	v0,94(sp)
 2c4:	862907a0 	lh	t1,1952(s1)
 2c8:	00095080 	sll	t2,t1,0x2
 2cc:	022a5821 	addu	t3,s1,t2
 2d0:	0c000000 	jal	0 <EffectSsFireTail_Init>
 2d4:	8d640790 	lw	a0,1936(t3)
 2d8:	87ad005e 	lh	t5,94(sp)
 2dc:	01a21823 	subu	v1,t5,v0
 2e0:	00032400 	sll	a0,v1,0x10
 2e4:	a7a300ae 	sh	v1,174(sp)
 2e8:	0c000000 	jal	0 <EffectSsFireTail_Init>
 2ec:	00042403 	sra	a0,a0,0x10
 2f0:	46000005 	abs.s	$f0,$f0
 2f4:	87a400ae 	lh	a0,174(sp)
 2f8:	0c000000 	jal	0 <EffectSsFireTail_Init>
 2fc:	e7a0009c 	swc1	$f0,156(sp)
 300:	27a400a0 	addiu	a0,sp,160
 304:	8fa50050 	lw	a1,80(sp)
 308:	0c000000 	jal	0 <EffectSsFireTail_Init>
 30c:	e7a00098 	swc1	$f0,152(sp)
 310:	860c0054 	lh	t4,84(s0)
 314:	3c010000 	lui	at,0x0
 318:	c4280048 	lwc1	$f8,72(at)
 31c:	448c8000 	mtc1	t4,$f16
 320:	00000000 	nop
 324:	468084a0 	cvt.s.w	$f18,$f16
 328:	46089102 	mul.s	$f4,$f18,$f8
 32c:	46040183 	div.s	$f6,$f0,$f4
 330:	e7a60094 	swc1	$f6,148(sp)
 334:	862e07a0 	lh	t6,1952(s1)
 338:	000e7880 	sll	t7,t6,0x2
 33c:	022fc021 	addu	t8,s1,t7
 340:	0c000000 	jal	0 <EffectSsFireTail_Init>
 344:	8f040790 	lw	a0,1936(t8)
 348:	34018000 	li	at,0x8000
 34c:	0041c821 	addu	t9,v0,at
 350:	00194400 	sll	t0,t9,0x10
 354:	00084c03 	sra	t1,t0,0x10
 358:	44895000 	mtc1	t1,$f10
 35c:	3c010000 	lui	at,0x0
 360:	c432004c 	lwc1	$f18,76(at)
 364:	46805420 	cvt.s.w	$f16,$f10
 368:	24050001 	li	a1,1
 36c:	46128302 	mul.s	$f12,$f16,$f18
 370:	0c000000 	jal	0 <EffectSsFireTail_Init>
 374:	00000000 	nop
 378:	860a0044 	lh	t2,68(s0)
 37c:	c7a20098 	lwc1	$f2,152(sp)
 380:	c7aa0094 	lwc1	$f10,148(sp)
 384:	448a4000 	mtc1	t2,$f8
 388:	3c010000 	lui	at,0x0
 38c:	c4320050 	lwc1	$f18,80(at)
 390:	46804120 	cvt.s.w	$f4,$f8
 394:	24050001 	li	a1,1
 398:	46022182 	mul.s	$f6,$f4,$f2
 39c:	00000000 	nop
 3a0:	460a3402 	mul.s	$f16,$f6,$f10
 3a4:	00000000 	nop
 3a8:	46128302 	mul.s	$f12,$f16,$f18
 3ac:	0c000000 	jal	0 <EffectSsFireTail_Init>
 3b0:	00000000 	nop
 3b4:	860b005c 	lh	t3,92(s0)
 3b8:	860c0042 	lh	t4,66(s0)
 3bc:	860e0040 	lh	t6,64(s0)
 3c0:	256d0001 	addiu	t5,t3,1
 3c4:	448d4000 	mtc1	t5,$f8
 3c8:	448c3000 	mtc1	t4,$f6
 3cc:	3c013f80 	lui	at,0x3f80
 3d0:	46804120 	cvt.s.w	$f4,$f8
 3d4:	44810000 	mtc1	at,$f0
 3d8:	448e4000 	mtc1	t6,$f8
 3dc:	3c010000 	lui	at,0x0
 3e0:	24070001 	li	a3,1
 3e4:	468032a0 	cvt.s.w	$f10,$f6
 3e8:	468041a0 	cvt.s.w	$f6,$f8
 3ec:	460a2403 	div.s	$f16,$f4,$f10
 3f0:	c4240054 	lwc1	$f4,84(at)
 3f4:	46100081 	sub.s	$f2,$f0,$f16
 3f8:	46021482 	mul.s	$f18,$f2,$f2
 3fc:	46120081 	sub.s	$f2,$f0,$f18
 400:	46043282 	mul.s	$f10,$f6,$f4
 404:	00000000 	nop
 408:	46025382 	mul.s	$f14,$f10,$f2
 40c:	44067000 	mfc1	a2,$f14
 410:	e7ae00a8 	swc1	$f14,168(sp)
 414:	e7ae00a4 	swc1	$f14,164(sp)
 418:	e7ae00a0 	swc1	$f14,160(sp)
 41c:	0c000000 	jal	0 <EffectSsFireTail_Init>
 420:	46007306 	mov.s	$f12,$f14
 424:	860f0046 	lh	t7,70(s0)
 428:	3c010000 	lui	at,0x0
 42c:	c4200058 	lwc1	$f0,88(at)
 430:	448f9000 	mtc1	t7,$f18
 434:	3c013f80 	lui	at,0x3f80
 438:	44816000 	mtc1	at,$f12
 43c:	46809220 	cvt.s.w	$f8,$f18
 440:	3c010000 	lui	at,0x0
 444:	c426005c 	lwc1	$f6,92(at)
 448:	c7a2009c 	lwc1	$f2,156(sp)
 44c:	c7b00094 	lwc1	$f16,148(sp)
 450:	46064102 	mul.s	$f4,$f8,$f6
 454:	00000000 	nop
 458:	46022282 	mul.s	$f10,$f4,$f2
 45c:	00000000 	nop
 460:	46105482 	mul.s	$f18,$f10,$f16
 464:	460c9080 	add.s	$f2,$f18,$f12
 468:	4600103c 	c.lt.s	$f2,$f0
 46c:	e7a2009c 	swc1	$f2,156(sp)
 470:	45000002 	bc1f	47c <EffectSsFireTail_Draw+0x364>
 474:	00000000 	nop
 478:	e7a0009c 	swc1	$f0,156(sp)
 47c:	c7ae009c 	lwc1	$f14,156(sp)
 480:	24070001 	li	a3,1
 484:	460e6203 	div.s	$f8,$f12,$f14
 488:	44064000 	mfc1	a2,$f8
 48c:	0c000000 	jal	0 <EffectSsFireTail_Init>
 490:	00000000 	nop
 494:	8e4202d0 	lw	v0,720(s2)
 498:	3c19da38 	lui	t9,0xda38
 49c:	37390003 	ori	t9,t9,0x3
 4a0:	24580008 	addiu	t8,v0,8
 4a4:	ae5802d0 	sw	t8,720(s2)
 4a8:	ac590000 	sw	t9,0(v0)
 4ac:	8e240000 	lw	a0,0(s1)
 4b0:	3c050000 	lui	a1,0x0
 4b4:	24a50018 	addiu	a1,a1,24
 4b8:	240600ee 	li	a2,238
 4bc:	0c000000 	jal	0 <EffectSsFireTail_Init>
 4c0:	afa20074 	sw	v0,116(sp)
 4c4:	8fa30074 	lw	v1,116(sp)
 4c8:	ac620004 	sw	v0,4(v1)
 4cc:	0c000000 	jal	0 <EffectSsFireTail_Init>
 4d0:	8e240000 	lw	a0,0(s1)
 4d4:	8e4202d0 	lw	v0,720(s2)
 4d8:	3c09fa00 	lui	t1,0xfa00
 4dc:	35290080 	ori	t1,t1,0x80
 4e0:	24480008 	addiu	t0,v0,8
 4e4:	ae4802d0 	sw	t0,720(s2)
 4e8:	ac490000 	sw	t1,0(v0)
 4ec:	860a004c 	lh	t2,76(s0)
 4f0:	8619004a 	lh	t9,74(s0)
 4f4:	860e0048 	lh	t6,72(s0)
 4f8:	314b00ff 	andi	t3,t2,0xff
 4fc:	000b6a00 	sll	t5,t3,0x8
 500:	332800ff 	andi	t0,t9,0xff
 504:	000e7e00 	sll	t7,t6,0x18
 508:	01afc025 	or	t8,t5,t7
 50c:	00084c00 	sll	t1,t0,0x10
 510:	03095025 	or	t2,t8,t1
 514:	354b00ff 	ori	t3,t2,0xff
 518:	ac4b0004 	sw	t3,4(v0)
 51c:	8e4202d0 	lw	v0,720(s2)
 520:	3c0efb00 	lui	t6,0xfb00
 524:	3c08db06 	lui	t0,0xdb06
 528:	244c0008 	addiu	t4,v0,8
 52c:	ae4c02d0 	sw	t4,720(s2)
 530:	ac4e0000 	sw	t6,0(v0)
 534:	860d0052 	lh	t5,82(s0)
 538:	860b0050 	lh	t3,80(s0)
 53c:	8618004e 	lh	t8,78(s0)
 540:	31af00ff 	andi	t7,t5,0xff
 544:	000fca00 	sll	t9,t7,0x8
 548:	316c00ff 	andi	t4,t3,0xff
 54c:	00184e00 	sll	t1,t8,0x18
 550:	03295025 	or	t2,t9,t1
 554:	000c7400 	sll	t6,t4,0x10
 558:	014e6825 	or	t5,t2,t6
 55c:	ac4d0004 	sw	t5,4(v0)
 560:	8e4202d0 	lw	v0,720(s2)
 564:	35080020 	ori	t0,t0,0x20
 568:	24090001 	li	t1,1
 56c:	244f0008 	addiu	t7,v0,8
 570:	ae4f02d0 	sw	t7,720(s2)
 574:	ac480000 	sw	t0,0(v0)
 578:	8e240000 	lw	a0,0(s1)
 57c:	24190040 	li	t9,64
 580:	24180020 	li	t8,32
 584:	afb80010 	sw	t8,16(sp)
 588:	afb90014 	sw	t9,20(sp)
 58c:	afa0001c 	sw	zero,28(sp)
 590:	afa90018 	sw	t1,24(sp)
 594:	8e2b009c 	lw	t3,156(s1)
 598:	240d0080 	li	t5,128
 59c:	240e0020 	li	t6,32
 5a0:	000b0823 	negu	at,t3
 5a4:	00016080 	sll	t4,at,0x2
 5a8:	01816021 	addu	t4,t4,at
 5ac:	000c6080 	sll	t4,t4,0x2
 5b0:	318a01ff 	andi	t2,t4,0x1ff
 5b4:	afaa0020 	sw	t2,32(sp)
 5b8:	afae0024 	sw	t6,36(sp)
 5bc:	afad0028 	sw	t5,40(sp)
 5c0:	00002825 	move	a1,zero
 5c4:	00003025 	move	a2,zero
 5c8:	00003825 	move	a3,zero
 5cc:	0c000000 	jal	0 <EffectSsFireTail_Init>
 5d0:	afa20068 	sw	v0,104(sp)
 5d4:	8fa30068 	lw	v1,104(sp)
 5d8:	3c060000 	lui	a2,0x0
 5dc:	3c0bde00 	lui	t3,0xde00
 5e0:	ac620004 	sw	v0,4(v1)
 5e4:	860f0058 	lh	t7,88(s0)
 5e8:	24c60030 	addiu	a2,a2,48
 5ec:	27a40080 	addiu	a0,sp,128
 5f0:	11e0000a 	beqz	t7,61c <EffectSsFireTail_Draw+0x504>
 5f4:	02402825 	move	a1,s2
 5f8:	8e4202d0 	lw	v0,720(s2)
 5fc:	3c190000 	lui	t9,0x0
 600:	27390000 	addiu	t9,t9,0
 604:	24480008 	addiu	t0,v0,8
 608:	ae4802d0 	sw	t0,720(s2)
 60c:	3c18de00 	lui	t8,0xde00
 610:	ac580000 	sw	t8,0(v0)
 614:	10000008 	b	638 <EffectSsFireTail_Draw+0x520>
 618:	ac590004 	sw	t9,4(v0)
 61c:	8e4202d0 	lw	v0,720(s2)
 620:	3c0c0000 	lui	t4,0x0
 624:	258c0000 	addiu	t4,t4,0
 628:	24490008 	addiu	t1,v0,8
 62c:	ae4902d0 	sw	t1,720(s2)
 630:	ac4c0004 	sw	t4,4(v0)
 634:	ac4b0000 	sw	t3,0(v0)
 638:	0c000000 	jal	0 <EffectSsFireTail_Init>
 63c:	24070111 	li	a3,273
 640:	8fbf0044 	lw	ra,68(sp)
 644:	8fb00038 	lw	s0,56(sp)
 648:	8fb1003c 	lw	s1,60(sp)
 64c:	8fb20040 	lw	s2,64(sp)
 650:	03e00008 	jr	ra
 654:	27bd00b8 	addiu	sp,sp,184

00000658 <EffectSsFireTail_Update>:
 658:	afa40000 	sw	a0,0(sp)
 65c:	afa50004 	sw	a1,4(sp)
 660:	84ce0040 	lh	t6,64(a2)
 664:	3c010000 	lui	at,0x0
 668:	c4280060 	lwc1	$f8,96(at)
 66c:	448e2000 	mtc1	t6,$f4
 670:	00000000 	nop
 674:	468021a0 	cvt.s.w	$f6,$f4
 678:	46083282 	mul.s	$f10,$f6,$f8
 67c:	4600540d 	trunc.w.s	$f16,$f10
 680:	44188000 	mfc1	t8,$f16
 684:	03e00008 	jr	ra
 688:	a4d80040 	sh	t8,64(a2)
 68c:	00000000 	nop
