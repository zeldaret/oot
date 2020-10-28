
build/src/overlays/effects/ovl_Effect_Ss_En_Fire/z_eff_ss_en_fire.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsEnFire_Init>:
   0:	27bdffb8 	addiu	sp,sp,-72
   4:	3c0e0000 	lui	t6,0x0
   8:	afbf0024 	sw	ra,36(sp)
   c:	afb20020 	sw	s2,32(sp)
  10:	afb1001c 	sw	s1,28(sp)
  14:	afb00018 	sw	s0,24(sp)
  18:	afa40048 	sw	a0,72(sp)
  1c:	afa5004c 	sw	a1,76(sp)
  20:	25ce0008 	addiu	t6,t6,8
  24:	8dd80000 	lw	t8,0(t6)
  28:	27a30038 	addiu	v1,sp,56
  2c:	24f20004 	addiu	s2,a3,4
  30:	ac780000 	sw	t8,0(v1)
  34:	8dcf0004 	lw	t7,4(t6)
  38:	27a2002c 	addiu	v0,sp,44
  3c:	00c08025 	move	s0,a2
  40:	ac6f0004 	sw	t7,4(v1)
  44:	8dd80008 	lw	t8,8(t6)
  48:	240f0014 	li	t7,20
  4c:	00e08825 	move	s1,a3
  50:	ac780008 	sw	t8,8(v1)
  54:	8e480000 	lw	t0,0(s2)
  58:	acc80000 	sw	t0,0(a2)
  5c:	8e590004 	lw	t9,4(s2)
  60:	acd90004 	sw	t9,4(a2)
  64:	8e480008 	lw	t0,8(s2)
  68:	acc80008 	sw	t0,8(a2)
  6c:	8c6a0000 	lw	t2,0(v1)
  70:	8c690004 	lw	t1,4(v1)
  74:	ac4a0000 	sw	t2,0(v0)
  78:	8c6a0008 	lw	t2,8(v1)
  7c:	8c4c0000 	lw	t4,0(v0)
  80:	ac490004 	sw	t1,4(v0)
  84:	ac4a0008 	sw	t2,8(v0)
  88:	accc0018 	sw	t4,24(a2)
  8c:	8c4b0004 	lw	t3,4(v0)
  90:	accb001c 	sw	t3,28(a2)
  94:	8c4c0008 	lw	t4,8(v0)
  98:	accc0020 	sw	t4,32(a2)
  9c:	8c4e0000 	lw	t6,0(v0)
  a0:	acce000c 	sw	t6,12(a2)
  a4:	8c4d0004 	lw	t5,4(v0)
  a8:	accd0010 	sw	t5,16(a2)
  ac:	8c4e0008 	lw	t6,8(v0)
  b0:	a4cf005c 	sh	t7,92(a2)
  b4:	84d8005c 	lh	t8,92(a2)
  b8:	acce0014 	sw	t6,20(a2)
  bc:	a4d80044 	sh	t8,68(a2)
  c0:	8cf90000 	lw	t9,0(a3)
  c4:	0c000000 	jal	0 <EffectSsEnFire_Init>
  c8:	acd9003c 	sw	t9,60(a2)
  cc:	3c0141a0 	lui	at,0x41a0
  d0:	44812000 	mtc1	at,$f4
  d4:	3c0a0000 	lui	t2,0x0
  d8:	3c0b0000 	lui	t3,0x0
  dc:	46040182 	mul.s	$f6,$f0,$f4
  e0:	254a0000 	addiu	t2,t2,0
  e4:	256b0000 	addiu	t3,t3,0
  e8:	240cfff1 	li	t4,-15
  ec:	ae0a0028 	sw	t2,40(s0)
  f0:	ae0b0024 	sw	t3,36(s0)
  f4:	a60c0046 	sh	t4,70(s0)
  f8:	4600320d 	trunc.w.s	$f8,$f6
  fc:	44094000 	mfc1	t1,$f8
 100:	00000000 	nop
 104:	a6090052 	sh	t1,82(s0)
 108:	862d0016 	lh	t5,22(s1)
 10c:	05a30017 	bgezl	t5,16c <EffectSsEnFire_Init+0x16c>
 110:	862a0010 	lh	t2,16(s1)
 114:	8e240000 	lw	a0,0(s1)
 118:	02402825 	move	a1,s2
 11c:	0c000000 	jal	0 <EffectSsEnFire_Init>
 120:	24840024 	addiu	a0,a0,36
 124:	8e2e0000 	lw	t6,0(s1)
 128:	02402825 	move	a1,s2
 12c:	85cf00b6 	lh	t7,182(t6)
 130:	004fc023 	subu	t8,v0,t7
 134:	a618004a 	sh	t8,74(s0)
 138:	8e240000 	lw	a0,0(s1)
 13c:	0c000000 	jal	0 <EffectSsEnFire_Init>
 140:	24840024 	addiu	a0,a0,36
 144:	8e390000 	lw	t9,0(s1)
 148:	02402025 	move	a0,s2
 14c:	872800b4 	lh	t0,180(t9)
 150:	00484823 	subu	t1,v0,t0
 154:	a6090048 	sh	t1,72(s0)
 158:	8e250000 	lw	a1,0(s1)
 15c:	0c000000 	jal	0 <EffectSsEnFire_Init>
 160:	24a50024 	addiu	a1,a1,36
 164:	e6000034 	swc1	$f0,52(s0)
 168:	862a0010 	lh	t2,16(s1)
 16c:	a60a0040 	sh	t2,64(s0)
 170:	862b0012 	lh	t3,18(s1)
 174:	316c8000 	andi	t4,t3,0x8000
 178:	51800005 	beqzl	t4,190 <EffectSsEnFire_Init+0x190>
 17c:	a6000042 	sh	zero,66(s0)
 180:	862d0010 	lh	t5,16(s1)
 184:	10000002 	b	190 <EffectSsEnFire_Init+0x190>
 188:	a60d0042 	sh	t5,66(s0)
 18c:	a6000042 	sh	zero,66(s0)
 190:	862e0012 	lh	t6,18(s1)
 194:	24020001 	li	v0,1
 198:	31cf7fff 	andi	t7,t6,0x7fff
 19c:	a60f004c 	sh	t7,76(s0)
 1a0:	86380016 	lh	t8,22(s1)
 1a4:	a618004e 	sh	t8,78(s0)
 1a8:	86390014 	lh	t9,20(s1)
 1ac:	a6190050 	sh	t9,80(s0)
 1b0:	8fbf0024 	lw	ra,36(sp)
 1b4:	8fb20020 	lw	s2,32(sp)
 1b8:	8fb1001c 	lw	s1,28(sp)
 1bc:	8fb00018 	lw	s0,24(sp)
 1c0:	03e00008 	jr	ra
 1c4:	27bd0048 	addiu	sp,sp,72

000001c8 <EffectSsEnFire_Draw>:
 1c8:	27bdff68 	addiu	sp,sp,-152
 1cc:	afb10038 	sw	s1,56(sp)
 1d0:	afbf003c 	sw	ra,60(sp)
 1d4:	afb00034 	sw	s0,52(sp)
 1d8:	afa40098 	sw	a0,152(sp)
 1dc:	afa5009c 	sw	a1,156(sp)
 1e0:	8c900000 	lw	s0,0(a0)
 1e4:	00c08825 	move	s1,a2
 1e8:	3c060000 	lui	a2,0x0
 1ec:	24c60000 	addiu	a2,a2,0
 1f0:	27a40068 	addiu	a0,sp,104
 1f4:	240700a9 	li	a3,169
 1f8:	0c000000 	jal	0 <EffectSsEnFire_Init>
 1fc:	02002825 	move	a1,s0
 200:	c62c0000 	lwc1	$f12,0(s1)
 204:	c62e0004 	lwc1	$f14,4(s1)
 208:	8e260008 	lw	a2,8(s1)
 20c:	0c000000 	jal	0 <EffectSsEnFire_Init>
 210:	00003825 	move	a3,zero
 214:	8fa20098 	lw	v0,152(sp)
 218:	844f07a0 	lh	t7,1952(v0)
 21c:	000fc080 	sll	t8,t7,0x2
 220:	0058c821 	addu	t9,v0,t8
 224:	0c000000 	jal	0 <EffectSsEnFire_Init>
 228:	8f240790 	lw	a0,1936(t9)
 22c:	34018000 	li	at,0x8000
 230:	00414021 	addu	t0,v0,at
 234:	00084c00 	sll	t1,t0,0x10
 238:	00095403 	sra	t2,t1,0x10
 23c:	448a2000 	mtc1	t2,$f4
 240:	3c010000 	lui	at,0x0
 244:	c428003c 	lwc1	$f8,60(at)
 248:	468021a0 	cvt.s.w	$f6,$f4
 24c:	24050001 	li	a1,1
 250:	46083302 	mul.s	$f12,$f6,$f8
 254:	0c000000 	jal	0 <EffectSsEnFire_Init>
 258:	00000000 	nop
 25c:	8624005c 	lh	a0,92(s1)
 260:	24010333 	li	at,819
 264:	00810019 	multu	a0,at
 268:	00002012 	mflo	a0
 26c:	00042400 	sll	a0,a0,0x10
 270:	0c000000 	jal	0 <EffectSsEnFire_Init>
 274:	00042403 	sra	a0,a0,0x10
 278:	862b0042 	lh	t3,66(s1)
 27c:	3c010000 	lui	at,0x0
 280:	c4320040 	lwc1	$f18,64(at)
 284:	448b5000 	mtc1	t3,$f10
 288:	24070001 	li	a3,1
 28c:	46805420 	cvt.s.w	$f16,$f10
 290:	46128102 	mul.s	$f4,$f16,$f18
 294:	00000000 	nop
 298:	46002302 	mul.s	$f12,$f4,$f0
 29c:	44066000 	mfc1	a2,$f12
 2a0:	0c000000 	jal	0 <EffectSsEnFire_Init>
 2a4:	46006386 	mov.s	$f14,$f12
 2a8:	8e0202d0 	lw	v0,720(s0)
 2ac:	3c0dda38 	lui	t5,0xda38
 2b0:	35ad0003 	ori	t5,t5,0x3
 2b4:	244c0008 	addiu	t4,v0,8
 2b8:	ae0c02d0 	sw	t4,720(s0)
 2bc:	ac4d0000 	sw	t5,0(v0)
 2c0:	8fae0098 	lw	t6,152(sp)
 2c4:	3c050000 	lui	a1,0x0
 2c8:	24a50014 	addiu	a1,a1,20
 2cc:	8dc40000 	lw	a0,0(t6)
 2d0:	240600b4 	li	a2,180
 2d4:	0c000000 	jal	0 <EffectSsEnFire_Init>
 2d8:	afa20064 	sw	v0,100(sp)
 2dc:	8fa30064 	lw	v1,100(sp)
 2e0:	ac620004 	sw	v0,4(v1)
 2e4:	8625005c 	lh	a1,92(s1)
 2e8:	8faf0098 	lw	t7,152(sp)
 2ec:	24a5fffb 	addiu	a1,a1,-5
 2f0:	00052c00 	sll	a1,a1,0x10
 2f4:	00052c03 	sra	a1,a1,0x10
 2f8:	04a30003 	bgezl	a1,308 <EffectSsEnFire_Draw+0x140>
 2fc:	8de40000 	lw	a0,0(t7)
 300:	00002825 	move	a1,zero
 304:	8de40000 	lw	a0,0(t7)
 308:	0c000000 	jal	0 <EffectSsEnFire_Init>
 30c:	a7a5007e 	sh	a1,126(sp)
 310:	87a5007e 	lh	a1,126(sp)
 314:	8e0302d0 	lw	v1,720(s0)
 318:	3c19fb00 	lui	t9,0xfb00
 31c:	44853000 	mtc1	a1,$f6
 320:	24780008 	addiu	t8,v1,8
 324:	ae1802d0 	sw	t8,720(s0)
 328:	46803220 	cvt.s.w	$f8,$f6
 32c:	3c010000 	lui	at,0x0
 330:	ac790000 	sw	t9,0(v1)
 334:	c42a0044 	lwc1	$f10,68(at)
 338:	24040001 	li	a0,1
 33c:	3c0afa00 	lui	t2,0xfa00
 340:	460a4402 	mul.s	$f16,$f8,$f10
 344:	3c0fdb06 	lui	t7,0xdb06
 348:	3c014f00 	lui	at,0x4f00
 34c:	354a0080 	ori	t2,t2,0x80
 350:	35ef0020 	ori	t7,t7,0x20
 354:	24190020 	li	t9,32
 358:	00002825 	move	a1,zero
 35c:	4448f800 	cfc1	t0,$31
 360:	44c4f800 	ctc1	a0,$31
 364:	00003825 	move	a3,zero
 368:	460084a4 	cvt.w.s	$f18,$f16
 36c:	4444f800 	cfc1	a0,$31
 370:	00000000 	nop
 374:	30840078 	andi	a0,a0,0x78
 378:	50800013 	beqzl	a0,3c8 <EffectSsEnFire_Draw+0x200>
 37c:	44049000 	mfc1	a0,$f18
 380:	44819000 	mtc1	at,$f18
 384:	24040001 	li	a0,1
 388:	46128481 	sub.s	$f18,$f16,$f18
 38c:	44c4f800 	ctc1	a0,$31
 390:	00000000 	nop
 394:	460094a4 	cvt.w.s	$f18,$f18
 398:	4444f800 	cfc1	a0,$31
 39c:	00000000 	nop
 3a0:	30840078 	andi	a0,a0,0x78
 3a4:	14800005 	bnez	a0,3bc <EffectSsEnFire_Draw+0x1f4>
 3a8:	00000000 	nop
 3ac:	44049000 	mfc1	a0,$f18
 3b0:	3c018000 	lui	at,0x8000
 3b4:	10000007 	b	3d4 <EffectSsEnFire_Draw+0x20c>
 3b8:	00812025 	or	a0,a0,at
 3bc:	10000005 	b	3d4 <EffectSsEnFire_Draw+0x20c>
 3c0:	2404ffff 	li	a0,-1
 3c4:	44049000 	mfc1	a0,$f18
 3c8:	00000000 	nop
 3cc:	0480fffb 	bltz	a0,3bc <EffectSsEnFire_Draw+0x1f4>
 3d0:	00000000 	nop
 3d4:	308400ff 	andi	a0,a0,0xff
 3d8:	00043600 	sll	a2,a0,0x18
 3dc:	ac660004 	sw	a2,4(v1)
 3e0:	8e0202d0 	lw	v0,720(s0)
 3e4:	00045c00 	sll	t3,a0,0x10
 3e8:	00cb6025 	or	t4,a2,t3
 3ec:	24490008 	addiu	t1,v0,8
 3f0:	ae0902d0 	sw	t1,720(s0)
 3f4:	358d00ff 	ori	t5,t4,0xff
 3f8:	ac4d0004 	sw	t5,4(v0)
 3fc:	ac4a0000 	sw	t2,0(v0)
 400:	8e0202d0 	lw	v0,720(s0)
 404:	44c8f800 	ctc1	t0,$31
 408:	24080040 	li	t0,64
 40c:	244e0008 	addiu	t6,v0,8
 410:	ae0e02d0 	sw	t6,720(s0)
 414:	ac4f0000 	sw	t7,0(v0)
 418:	8fb80098 	lw	t8,152(sp)
 41c:	24090001 	li	t1,1
 420:	240e0080 	li	t6,128
 424:	8f040000 	lw	a0,0(t8)
 428:	afa0001c 	sw	zero,28(sp)
 42c:	afa90018 	sw	t1,24(sp)
 430:	afa80014 	sw	t0,20(sp)
 434:	afb90010 	sw	t9,16(sp)
 438:	862a0052 	lh	t2,82(s1)
 43c:	240d0020 	li	t5,32
 440:	afad0024 	sw	t5,36(sp)
 444:	000a0823 	negu	at,t2
 448:	00015880 	sll	t3,at,0x2
 44c:	01615821 	addu	t3,t3,at
 450:	000b5880 	sll	t3,t3,0x2
 454:	316c01ff 	andi	t4,t3,0x1ff
 458:	afac0020 	sw	t4,32(sp)
 45c:	afae0028 	sw	t6,40(sp)
 460:	00003025 	move	a2,zero
 464:	0c000000 	jal	0 <EffectSsEnFire_Init>
 468:	afa20058 	sw	v0,88(sp)
 46c:	8fa30058 	lw	v1,88(sp)
 470:	3c060000 	lui	a2,0x0
 474:	3c09de00 	lui	t1,0xde00
 478:	ac620004 	sw	v0,4(v1)
 47c:	862f0050 	lh	t7,80(s1)
 480:	24c60028 	addiu	a2,a2,40
 484:	27a40068 	addiu	a0,sp,104
 488:	31f87fff 	andi	t8,t7,0x7fff
 48c:	17000006 	bnez	t8,4a8 <EffectSsEnFire_Draw+0x2e0>
 490:	02002825 	move	a1,s0
 494:	8639005c 	lh	t9,92(s1)
 498:	3c0cde00 	lui	t4,0xde00
 49c:	2b210012 	slti	at,t9,18
 4a0:	5020000a 	beqzl	at,4cc <EffectSsEnFire_Draw+0x304>
 4a4:	8e0202d0 	lw	v0,720(s0)
 4a8:	8e0202d0 	lw	v0,720(s0)
 4ac:	3c0a0000 	lui	t2,0x0
 4b0:	254a0000 	addiu	t2,t2,0
 4b4:	24480008 	addiu	t0,v0,8
 4b8:	ae0802d0 	sw	t0,720(s0)
 4bc:	ac4a0004 	sw	t2,4(v0)
 4c0:	10000008 	b	4e4 <EffectSsEnFire_Draw+0x31c>
 4c4:	ac490000 	sw	t1,0(v0)
 4c8:	8e0202d0 	lw	v0,720(s0)
 4cc:	3c0d0000 	lui	t5,0x0
 4d0:	25ad0000 	addiu	t5,t5,0
 4d4:	244b0008 	addiu	t3,v0,8
 4d8:	ae0b02d0 	sw	t3,720(s0)
 4dc:	ac4d0004 	sw	t5,4(v0)
 4e0:	ac4c0000 	sw	t4,0(v0)
 4e4:	0c000000 	jal	0 <EffectSsEnFire_Init>
 4e8:	240700d5 	li	a3,213
 4ec:	8fbf003c 	lw	ra,60(sp)
 4f0:	8fb00034 	lw	s0,52(sp)
 4f4:	8fb10038 	lw	s1,56(sp)
 4f8:	03e00008 	jr	ra
 4fc:	27bd0098 	addiu	sp,sp,152

00000500 <EffectSsEnFire_Update>:
 500:	27bdffd8 	addiu	sp,sp,-40
 504:	afbf0024 	sw	ra,36(sp)
 508:	afb00020 	sw	s0,32(sp)
 50c:	afa40028 	sw	a0,40(sp)
 510:	afa5002c 	sw	a1,44(sp)
 514:	84ce0052 	lh	t6,82(a2)
 518:	8cc2003c 	lw	v0,60(a2)
 51c:	00c08025 	move	s0,a2
 520:	25cf0001 	addiu	t7,t6,1
 524:	10400067 	beqz	v0,6c4 <EffectSsEnFire_Update+0x1c4>
 528:	a4cf0052 	sh	t7,82(a2)
 52c:	90580114 	lbu	t8,276(v0)
 530:	26040042 	addiu	a0,s0,66
 534:	2b010016 	slti	at,t8,22
 538:	54200006 	bnezl	at,554 <EffectSsEnFire_Update+0x54>
 53c:	8c490130 	lw	t1,304(v0)
 540:	84d9005c 	lh	t9,92(a2)
 544:	8cc2003c 	lw	v0,60(a2)
 548:	27280001 	addiu	t0,t9,1
 54c:	a4c8005c 	sh	t0,92(a2)
 550:	8c490130 	lw	t1,304(v0)
 554:	51200056 	beqzl	t1,6b0 <EffectSsEnFire_Update+0x1b0>
 558:	8619004c 	lh	t9,76(s0)
 55c:	86050040 	lh	a1,64(s0)
 560:	afa00010 	sw	zero,16(sp)
 564:	24060001 	li	a2,1
 568:	000538c3 	sra	a3,a1,0x3
 56c:	00073c00 	sll	a3,a3,0x10
 570:	0c000000 	jal	0 <EffectSsEnFire_Init>
 574:	00073c03 	sra	a3,a3,0x10
 578:	8603004e 	lh	v1,78(s0)
 57c:	04630027 	bgezl	v1,61c <EffectSsEnFire_Update+0x11c>
 580:	86080050 	lh	t0,80(s0)
 584:	8e02003c 	lw	v0,60(s0)
 588:	00003825 	move	a3,zero
 58c:	c44c0024 	lwc1	$f12,36(v0)
 590:	c44e0028 	lwc1	$f14,40(v0)
 594:	0c000000 	jal	0 <EffectSsEnFire_Init>
 598:	8c46002c 	lw	a2,44(v0)
 59c:	8e0b003c 	lw	t3,60(s0)
 5a0:	860a004a 	lh	t2,74(s0)
 5a4:	3c010000 	lui	at,0x0
 5a8:	856c00b6 	lh	t4,182(t3)
 5ac:	c4280048 	lwc1	$f8,72(at)
 5b0:	24050001 	li	a1,1
 5b4:	014c6821 	addu	t5,t2,t4
 5b8:	448d2000 	mtc1	t5,$f4
 5bc:	00000000 	nop
 5c0:	468021a0 	cvt.s.w	$f6,$f4
 5c4:	46083302 	mul.s	$f12,$f6,$f8
 5c8:	0c000000 	jal	0 <EffectSsEnFire_Init>
 5cc:	00000000 	nop
 5d0:	8e0f003c 	lw	t7,60(s0)
 5d4:	860e0048 	lh	t6,72(s0)
 5d8:	3c010000 	lui	at,0x0
 5dc:	85f800b4 	lh	t8,180(t7)
 5e0:	c432004c 	lwc1	$f18,76(at)
 5e4:	24050001 	li	a1,1
 5e8:	01d8c821 	addu	t9,t6,t8
 5ec:	44995000 	mtc1	t9,$f10
 5f0:	00000000 	nop
 5f4:	46805420 	cvt.s.w	$f16,$f10
 5f8:	46128302 	mul.s	$f12,$f16,$f18
 5fc:	0c000000 	jal	0 <EffectSsEnFire_Init>
 600:	00000000 	nop
 604:	2604002c 	addiu	a0,s0,44
 608:	0c000000 	jal	0 <EffectSsEnFire_Init>
 60c:	02002825 	move	a1,s0
 610:	1000002d 	b	6c8 <EffectSsEnFire_Update+0x1c8>
 614:	8fbf0024 	lw	ra,36(sp)
 618:	86080050 	lh	t0,80(s0)
 61c:	00035080 	sll	t2,v1,0x2
 620:	0003c080 	sll	t8,v1,0x2
 624:	31098000 	andi	t1,t0,0x8000
 628:	51200016 	beqzl	t1,684 <EffectSsEnFire_Update+0x184>
 62c:	8e0e003c 	lw	t6,60(s0)
 630:	8e0b003c 	lw	t3,60(s0)
 634:	01435023 	subu	t2,t2,v1
 638:	000a5040 	sll	t2,t2,0x1
 63c:	016a1021 	addu	v0,t3,t2
 640:	844c014c 	lh	t4,332(v0)
 644:	448c2000 	mtc1	t4,$f4
 648:	00000000 	nop
 64c:	468021a0 	cvt.s.w	$f6,$f4
 650:	e6060000 	swc1	$f6,0(s0)
 654:	844d014e 	lh	t5,334(v0)
 658:	448d4000 	mtc1	t5,$f8
 65c:	00000000 	nop
 660:	468042a0 	cvt.s.w	$f10,$f8
 664:	e60a0004 	swc1	$f10,4(s0)
 668:	844f0150 	lh	t7,336(v0)
 66c:	448f8000 	mtc1	t7,$f16
 670:	00000000 	nop
 674:	468084a0 	cvt.s.w	$f18,$f16
 678:	10000012 	b	6c4 <EffectSsEnFire_Update+0x1c4>
 67c:	e6120008 	swc1	$f18,8(s0)
 680:	8e0e003c 	lw	t6,60(s0)
 684:	0303c023 	subu	t8,t8,v1
 688:	0018c080 	sll	t8,t8,0x2
 68c:	01d81021 	addu	v0,t6,t8
 690:	c444014c 	lwc1	$f4,332(v0)
 694:	e6040000 	swc1	$f4,0(s0)
 698:	c4460150 	lwc1	$f6,336(v0)
 69c:	e6060004 	swc1	$f6,4(s0)
 6a0:	c4480154 	lwc1	$f8,340(v0)
 6a4:	10000007 	b	6c4 <EffectSsEnFire_Update+0x1c4>
 6a8:	e6080008 	swc1	$f8,8(s0)
 6ac:	8619004c 	lh	t9,76(s0)
 6b0:	53200004 	beqzl	t9,6c4 <EffectSsEnFire_Update+0x1c4>
 6b4:	ae00003c 	sw	zero,60(s0)
 6b8:	10000002 	b	6c4 <EffectSsEnFire_Update+0x1c4>
 6bc:	a600005c 	sh	zero,92(s0)
 6c0:	ae00003c 	sw	zero,60(s0)
 6c4:	8fbf0024 	lw	ra,36(sp)
 6c8:	8fb00020 	lw	s0,32(sp)
 6cc:	27bd0028 	addiu	sp,sp,40
 6d0:	03e00008 	jr	ra
 6d4:	00000000 	nop
	...
