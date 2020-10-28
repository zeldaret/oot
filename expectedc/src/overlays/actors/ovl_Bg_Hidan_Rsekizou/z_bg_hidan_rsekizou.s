
build/src/overlays/actors/ovl_Bg_Hidan_Rsekizou/z_bg_hidan_rsekizou.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHidanRsekizou_Init>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afa50044 	sw	a1,68(sp)
   8:	afbf0024 	sw	ra,36(sp)
   c:	afb00020 	sw	s0,32(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00030 	sw	zero,48(sp)
  1c:	0c000000 	jal	0 <BgHidanRsekizou_Init>
  20:	24a50108 	addiu	a1,a1,264
  24:	02002025 	move	a0,s0
  28:	0c000000 	jal	0 <BgHidanRsekizou_Init>
  2c:	00002825 	move	a1,zero
  30:	3c040000 	lui	a0,0x0
  34:	24840000 	addiu	a0,a0,0
  38:	0c000000 	jal	0 <BgHidanRsekizou_Init>
  3c:	27a50030 	addiu	a1,sp,48
  40:	8fa40044 	lw	a0,68(sp)
  44:	02003025 	move	a2,s0
  48:	8fa70030 	lw	a3,48(sp)
  4c:	0c000000 	jal	0 <BgHidanRsekizou_Init>
  50:	24850810 	addiu	a1,a0,2064
  54:	ae02014c 	sw	v0,332(s0)
  58:	26050168 	addiu	a1,s0,360
  5c:	afa5002c 	sw	a1,44(sp)
  60:	0c000000 	jal	0 <BgHidanRsekizou_Init>
  64:	8fa40044 	lw	a0,68(sp)
  68:	3c070000 	lui	a3,0x0
  6c:	260e0188 	addiu	t6,s0,392
  70:	8fa5002c 	lw	a1,44(sp)
  74:	afae0010 	sw	t6,16(sp)
  78:	24e700f8 	addiu	a3,a3,248
  7c:	8fa40044 	lw	a0,68(sp)
  80:	0c000000 	jal	0 <BgHidanRsekizou_Init>
  84:	02003025 	move	a2,s0
  88:	8e020184 	lw	v0,388(s0)
  8c:	24040002 	li	a0,2
  90:	00041980 	sll	v1,a0,0x6
  94:	844f002e 	lh	t7,46(v0)
  98:	a44f0036 	sh	t7,54(v0)
  9c:	8e020184 	lw	v0,388(s0)
  a0:	8458006e 	lh	t8,110(v0)
  a4:	a4580076 	sh	t8,118(v0)
  a8:	8e190184 	lw	t9,388(s0)
  ac:	03231021 	addu	v0,t9,v1
  b0:	8448002e 	lh	t0,46(v0)
  b4:	a4480036 	sh	t0,54(v0)
  b8:	8e090184 	lw	t1,388(s0)
  bc:	01231021 	addu	v0,t1,v1
  c0:	844a006e 	lh	t2,110(v0)
  c4:	a44a0076 	sh	t2,118(v0)
  c8:	8e0b0184 	lw	t3,388(s0)
  cc:	01631021 	addu	v0,t3,v1
  d0:	844c00ae 	lh	t4,174(v0)
  d4:	a44c00b6 	sh	t4,182(v0)
  d8:	8e0d0184 	lw	t5,388(s0)
  dc:	01a31021 	addu	v0,t5,v1
  e0:	844e00ee 	lh	t6,238(v0)
  e4:	a44e00f6 	sh	t6,246(v0)
  e8:	a6000166 	sh	zero,358(s0)
  ec:	a6000164 	sh	zero,356(s0)
  f0:	8fbf0024 	lw	ra,36(sp)
  f4:	8fb00020 	lw	s0,32(sp)
  f8:	27bd0040 	addiu	sp,sp,64
  fc:	03e00008 	jr	ra
 100:	00000000 	nop

00000104 <BgHidanRsekizou_Destroy>:
 104:	27bdffe8 	addiu	sp,sp,-24
 108:	afa40018 	sw	a0,24(sp)
 10c:	8fae0018 	lw	t6,24(sp)
 110:	afbf0014 	sw	ra,20(sp)
 114:	00a03825 	move	a3,a1
 118:	00a02025 	move	a0,a1
 11c:	8dc6014c 	lw	a2,332(t6)
 120:	afa7001c 	sw	a3,28(sp)
 124:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 128:	24a50810 	addiu	a1,a1,2064
 12c:	8fa50018 	lw	a1,24(sp)
 130:	8fa4001c 	lw	a0,28(sp)
 134:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 138:	24a50168 	addiu	a1,a1,360
 13c:	8fbf0014 	lw	ra,20(sp)
 140:	27bd0018 	addiu	sp,sp,24
 144:	03e00008 	jr	ra
 148:	00000000 	nop

0000014c <BgHidanRsekizou_Update>:
 14c:	27bdffc8 	addiu	sp,sp,-56
 150:	afbf001c 	sw	ra,28(sp)
 154:	afb00018 	sw	s0,24(sp)
 158:	afa5003c 	sw	a1,60(sp)
 15c:	848e0166 	lh	t6,358(a0)
 160:	00808025 	move	s0,a0
 164:	86020164 	lh	v0,356(s0)
 168:	25cf0001 	addiu	t7,t6,1
 16c:	05e10004 	bgez	t7,180 <BgHidanRsekizou_Update+0x34>
 170:	31f80007 	andi	t8,t7,0x7
 174:	13000002 	beqz	t8,180 <BgHidanRsekizou_Update+0x34>
 178:	00000000 	nop
 17c:	2718fff8 	addiu	t8,t8,-8
 180:	10400004 	beqz	v0,194 <BgHidanRsekizou_Update+0x48>
 184:	a6180166 	sh	t8,358(s0)
 188:	2459ffff 	addiu	t9,v0,-1
 18c:	a6190164 	sh	t9,356(s0)
 190:	86020164 	lh	v0,356(s0)
 194:	14400002 	bnez	v0,1a0 <BgHidanRsekizou_Update+0x54>
 198:	24080003 	li	t0,3
 19c:	a6080164 	sh	t0,356(s0)
 1a0:	860900b6 	lh	t1,182(s0)
 1a4:	252a0180 	addiu	t2,t1,384
 1a8:	a60a00b6 	sh	t2,182(s0)
 1ac:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 1b0:	860400b6 	lh	a0,182(s0)
 1b4:	860400b6 	lh	a0,182(s0)
 1b8:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 1bc:	e7a00024 	swc1	$f0,36(sp)
 1c0:	8e020184 	lw	v0,388(s0)
 1c4:	c7ae0024 	lwc1	$f14,36(sp)
 1c8:	c6080008 	lwc1	$f8,8(s0)
 1cc:	844b0028 	lh	t3,40(v0)
 1d0:	844c002c 	lh	t4,44(v0)
 1d4:	8449002a 	lh	t1,42(v0)
 1d8:	448b2000 	mtc1	t3,$f4
 1dc:	448c3000 	mtc1	t4,$f6
 1e0:	24040002 	li	a0,2
 1e4:	468020a0 	cvt.s.w	$f2,$f4
 1e8:	00041980 	sll	v1,a0,0x6
 1ec:	3c010001 	lui	at,0x1
 1f0:	34211e60 	ori	at,at,0x1e60
 1f4:	26060168 	addiu	a2,s0,360
 1f8:	46803320 	cvt.s.w	$f12,$f6
 1fc:	46020282 	mul.s	$f10,$f0,$f2
 200:	460a4400 	add.s	$f16,$f8,$f10
 204:	460c7482 	mul.s	$f18,$f14,$f12
 208:	46128100 	add.s	$f4,$f16,$f18
 20c:	46027482 	mul.s	$f18,$f14,$f2
 210:	4600218d 	trunc.w.s	$f6,$f4
 214:	440e3000 	mfc1	t6,$f6
 218:	460c0182 	mul.s	$f6,$f0,$f12
 21c:	a44e0030 	sh	t6,48(v0)
 220:	c608000c 	lwc1	$f8,12(s0)
 224:	4600428d 	trunc.w.s	$f10,$f8
 228:	44085000 	mfc1	t0,$f10
 22c:	00000000 	nop
 230:	01095021 	addu	t2,t0,t1
 234:	a44a0032 	sh	t2,50(v0)
 238:	c6100010 	lwc1	$f16,16(s0)
 23c:	46128101 	sub.s	$f4,$f16,$f18
 240:	46062200 	add.s	$f8,$f4,$f6
 244:	4600428d 	trunc.w.s	$f10,$f8
 248:	440c5000 	mfc1	t4,$f10
 24c:	00000000 	nop
 250:	a44c0034 	sh	t4,52(v0)
 254:	8e020184 	lw	v0,388(s0)
 258:	c6040008 	lwc1	$f4,8(s0)
 25c:	844d0068 	lh	t5,104(v0)
 260:	844e006c 	lh	t6,108(v0)
 264:	844b006a 	lh	t3,106(v0)
 268:	448d8000 	mtc1	t5,$f16
 26c:	448e9000 	mtc1	t6,$f18
 270:	24420040 	addiu	v0,v0,64
 274:	468080a0 	cvt.s.w	$f2,$f16
 278:	46809320 	cvt.s.w	$f12,$f18
 27c:	46020182 	mul.s	$f6,$f0,$f2
 280:	46062200 	add.s	$f8,$f4,$f6
 284:	460c7282 	mul.s	$f10,$f14,$f12
 288:	460a4400 	add.s	$f16,$f8,$f10
 28c:	46027282 	mul.s	$f10,$f14,$f2
 290:	4600848d 	trunc.w.s	$f18,$f16
 294:	44189000 	mfc1	t8,$f18
 298:	460c0482 	mul.s	$f18,$f0,$f12
 29c:	a4580030 	sh	t8,48(v0)
 2a0:	c604000c 	lwc1	$f4,12(s0)
 2a4:	4600218d 	trunc.w.s	$f6,$f4
 2a8:	440a3000 	mfc1	t2,$f6
 2ac:	00000000 	nop
 2b0:	014b6021 	addu	t4,t2,t3
 2b4:	a44c0032 	sh	t4,50(v0)
 2b8:	c6080010 	lwc1	$f8,16(s0)
 2bc:	460a4401 	sub.s	$f16,$f8,$f10
 2c0:	46128100 	add.s	$f4,$f16,$f18
 2c4:	4600218d 	trunc.w.s	$f6,$f4
 2c8:	440e3000 	mfc1	t6,$f6
 2cc:	00000000 	nop
 2d0:	a44e0034 	sh	t6,52(v0)
 2d4:	8e0f0184 	lw	t7,388(s0)
 2d8:	c6100008 	lwc1	$f16,8(s0)
 2dc:	01e31021 	addu	v0,t7,v1
 2e0:	84580028 	lh	t8,40(v0)
 2e4:	8459002c 	lh	t9,44(v0)
 2e8:	844e002a 	lh	t6,42(v0)
 2ec:	44984000 	mtc1	t8,$f8
 2f0:	44995000 	mtc1	t9,$f10
 2f4:	468040a0 	cvt.s.w	$f2,$f8
 2f8:	46805320 	cvt.s.w	$f12,$f10
 2fc:	46020482 	mul.s	$f18,$f0,$f2
 300:	46128100 	add.s	$f4,$f16,$f18
 304:	460c7182 	mul.s	$f6,$f14,$f12
 308:	46062200 	add.s	$f8,$f4,$f6
 30c:	46027182 	mul.s	$f6,$f14,$f2
 310:	4600428d 	trunc.w.s	$f10,$f8
 314:	44095000 	mfc1	t1,$f10
 318:	460c0282 	mul.s	$f10,$f0,$f12
 31c:	a4490030 	sh	t1,48(v0)
 320:	c610000c 	lwc1	$f16,12(s0)
 324:	4600848d 	trunc.w.s	$f18,$f16
 328:	440d9000 	mfc1	t5,$f18
 32c:	00000000 	nop
 330:	01ae7821 	addu	t7,t5,t6
 334:	a44f0032 	sh	t7,50(v0)
 338:	c6040010 	lwc1	$f4,16(s0)
 33c:	46062201 	sub.s	$f8,$f4,$f6
 340:	460a4400 	add.s	$f16,$f8,$f10
 344:	4600848d 	trunc.w.s	$f18,$f16
 348:	44199000 	mfc1	t9,$f18
 34c:	00000000 	nop
 350:	a4590034 	sh	t9,52(v0)
 354:	8e080184 	lw	t0,388(s0)
 358:	c6080008 	lwc1	$f8,8(s0)
 35c:	01031021 	addu	v0,t0,v1
 360:	84490068 	lh	t1,104(v0)
 364:	844a006c 	lh	t2,108(v0)
 368:	8459006a 	lh	t9,106(v0)
 36c:	44892000 	mtc1	t1,$f4
 370:	448a3000 	mtc1	t2,$f6
 374:	24420040 	addiu	v0,v0,64
 378:	468020a0 	cvt.s.w	$f2,$f4
 37c:	46803320 	cvt.s.w	$f12,$f6
 380:	46020282 	mul.s	$f10,$f0,$f2
 384:	460a4400 	add.s	$f16,$f8,$f10
 388:	460c7482 	mul.s	$f18,$f14,$f12
 38c:	46128100 	add.s	$f4,$f16,$f18
 390:	46027482 	mul.s	$f18,$f14,$f2
 394:	4600218d 	trunc.w.s	$f6,$f4
 398:	440c3000 	mfc1	t4,$f6
 39c:	460c0182 	mul.s	$f6,$f0,$f12
 3a0:	a44c0030 	sh	t4,48(v0)
 3a4:	c608000c 	lwc1	$f8,12(s0)
 3a8:	4600428d 	trunc.w.s	$f10,$f8
 3ac:	44185000 	mfc1	t8,$f10
 3b0:	00000000 	nop
 3b4:	03194021 	addu	t0,t8,t9
 3b8:	a4480032 	sh	t0,50(v0)
 3bc:	c6100010 	lwc1	$f16,16(s0)
 3c0:	46128101 	sub.s	$f4,$f16,$f18
 3c4:	46062200 	add.s	$f8,$f4,$f6
 3c8:	4600428d 	trunc.w.s	$f10,$f8
 3cc:	440a5000 	mfc1	t2,$f10
 3d0:	00000000 	nop
 3d4:	a44a0034 	sh	t2,52(v0)
 3d8:	8e0b0184 	lw	t3,388(s0)
 3dc:	c6040008 	lwc1	$f4,8(s0)
 3e0:	01631021 	addu	v0,t3,v1
 3e4:	844c00a8 	lh	t4,168(v0)
 3e8:	844d00ac 	lh	t5,172(v0)
 3ec:	844a00aa 	lh	t2,170(v0)
 3f0:	448c8000 	mtc1	t4,$f16
 3f4:	448d9000 	mtc1	t5,$f18
 3f8:	24420080 	addiu	v0,v0,128
 3fc:	468080a0 	cvt.s.w	$f2,$f16
 400:	46809320 	cvt.s.w	$f12,$f18
 404:	46020182 	mul.s	$f6,$f0,$f2
 408:	46062200 	add.s	$f8,$f4,$f6
 40c:	460c7282 	mul.s	$f10,$f14,$f12
 410:	460a4400 	add.s	$f16,$f8,$f10
 414:	46027282 	mul.s	$f10,$f14,$f2
 418:	4600848d 	trunc.w.s	$f18,$f16
 41c:	440f9000 	mfc1	t7,$f18
 420:	460c0482 	mul.s	$f18,$f0,$f12
 424:	a44f0030 	sh	t7,48(v0)
 428:	c604000c 	lwc1	$f4,12(s0)
 42c:	4600218d 	trunc.w.s	$f6,$f4
 430:	44093000 	mfc1	t1,$f6
 434:	00000000 	nop
 438:	012a5821 	addu	t3,t1,t2
 43c:	a44b0032 	sh	t3,50(v0)
 440:	c6080010 	lwc1	$f8,16(s0)
 444:	460a4401 	sub.s	$f16,$f8,$f10
 448:	46128100 	add.s	$f4,$f16,$f18
 44c:	4600218d 	trunc.w.s	$f6,$f4
 450:	440d3000 	mfc1	t5,$f6
 454:	00000000 	nop
 458:	a44d0034 	sh	t5,52(v0)
 45c:	8e0e0184 	lw	t6,388(s0)
 460:	c6100008 	lwc1	$f16,8(s0)
 464:	01c31021 	addu	v0,t6,v1
 468:	844f00e8 	lh	t7,232(v0)
 46c:	845800ec 	lh	t8,236(v0)
 470:	844d00ea 	lh	t5,234(v0)
 474:	448f4000 	mtc1	t7,$f8
 478:	44985000 	mtc1	t8,$f10
 47c:	244200c0 	addiu	v0,v0,192
 480:	468040a0 	cvt.s.w	$f2,$f8
 484:	46805320 	cvt.s.w	$f12,$f10
 488:	46020482 	mul.s	$f18,$f0,$f2
 48c:	46128100 	add.s	$f4,$f16,$f18
 490:	460c7182 	mul.s	$f6,$f14,$f12
 494:	46062200 	add.s	$f8,$f4,$f6
 498:	46027182 	mul.s	$f6,$f14,$f2
 49c:	4600428d 	trunc.w.s	$f10,$f8
 4a0:	44085000 	mfc1	t0,$f10
 4a4:	460c0282 	mul.s	$f10,$f0,$f12
 4a8:	a4480030 	sh	t0,48(v0)
 4ac:	c610000c 	lwc1	$f16,12(s0)
 4b0:	4600848d 	trunc.w.s	$f18,$f16
 4b4:	440c9000 	mfc1	t4,$f18
 4b8:	00000000 	nop
 4bc:	018d7021 	addu	t6,t4,t5
 4c0:	a44e0032 	sh	t6,50(v0)
 4c4:	c6040010 	lwc1	$f4,16(s0)
 4c8:	46062201 	sub.s	$f8,$f4,$f6
 4cc:	460a4400 	add.s	$f16,$f8,$f10
 4d0:	4600848d 	trunc.w.s	$f18,$f16
 4d4:	44189000 	mfc1	t8,$f18
 4d8:	00000000 	nop
 4dc:	a4580034 	sh	t8,52(v0)
 4e0:	8fa4003c 	lw	a0,60(sp)
 4e4:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 4e8:	00812821 	addu	a1,a0,at
 4ec:	02002025 	move	a0,s0
 4f0:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 4f4:	24052033 	li	a1,8243
 4f8:	8fbf001c 	lw	ra,28(sp)
 4fc:	8fb00018 	lw	s0,24(sp)
 500:	27bd0038 	addiu	sp,sp,56
 504:	03e00008 	jr	ra
 508:	00000000 	nop

0000050c <BgHidanRsekizou_DrawFireball>:
 50c:	27bdffa0 	addiu	sp,sp,-96
 510:	afbf001c 	sw	ra,28(sp)
 514:	afb10018 	sw	s1,24(sp)
 518:	afb00014 	sw	s0,20(sp)
 51c:	afa40060 	sw	a0,96(sp)
 520:	afa60068 	sw	a2,104(sp)
 524:	84ae0166 	lh	t6,358(a1)
 528:	00063400 	sll	a2,a2,0x10
 52c:	00063403 	sra	a2,a2,0x10
 530:	01c67821 	addu	t7,t6,a2
 534:	3c010000 	lui	at,0x0
 538:	c4280070 	lwc1	$f8,112(at)
 53c:	8fb00074 	lw	s0,116(sp)
 540:	3c0adb06 	lui	t2,0xdb06
 544:	354a0024 	ori	t2,t2,0x24
 548:	3c030000 	lui	v1,0x0
 54c:	02001025 	move	v0,s0
 550:	ac4a0000 	sw	t2,0(v0)
 554:	3c0100ff 	lui	at,0xff
 558:	3421ffff 	ori	at,at,0xffff
 55c:	24c60001 	addiu	a2,a2,1
 560:	00063400 	sll	a2,a2,0x10
 564:	00063403 	sra	a2,a2,0x10
 568:	00a08825 	move	s1,a1
 56c:	05e10004 	bgez	t7,580 <BgHidanRsekizou_DrawFireball+0x74>
 570:	31f80007 	andi	t8,t7,0x7
 574:	13000002 	beqz	t8,580 <BgHidanRsekizou_DrawFireball+0x74>
 578:	00000000 	nop
 57c:	2718fff8 	addiu	t8,t8,-8
 580:	0018c8c0 	sll	t9,t8,0x3
 584:	0338c823 	subu	t9,t9,t8
 588:	44992000 	mtc1	t9,$f4
 58c:	3c180000 	lui	t8,0x0
 590:	26100008 	addiu	s0,s0,8
 594:	468021a0 	cvt.s.w	$f6,$f4
 598:	46083282 	mul.s	$f10,$f6,$f8
 59c:	4600540d 	trunc.w.s	$f16,$f10
 5a0:	44088000 	mfc1	t0,$f16
 5a4:	00000000 	nop
 5a8:	00085880 	sll	t3,t0,0x2
 5ac:	006b1821 	addu	v1,v1,t3
 5b0:	8c630114 	lw	v1,276(v1)
 5b4:	00036900 	sll	t5,v1,0x4
 5b8:	000d7702 	srl	t6,t5,0x1c
 5bc:	000e7880 	sll	t7,t6,0x2
 5c0:	030fc021 	addu	t8,t8,t7
 5c4:	8f180000 	lw	t8,0(t8)
 5c8:	00616024 	and	t4,v1,at
 5cc:	3c018000 	lui	at,0x8000
 5d0:	0198c821 	addu	t9,t4,t8
 5d4:	03214821 	addu	t1,t9,at
 5d8:	24010004 	li	at,4
 5dc:	10c1000d 	beq	a2,at,614 <BgHidanRsekizou_DrawFireball+0x108>
 5e0:	ac490004 	sw	t1,4(v0)
 5e4:	862a0164 	lh	t2,356(s1)
 5e8:	240b0003 	li	t3,3
 5ec:	3c010000 	lui	at,0x0
 5f0:	016a6823 	subu	t5,t3,t2
 5f4:	448d9000 	mtc1	t5,$f18
 5f8:	c4260074 	lwc1	$f6,116(at)
 5fc:	44865000 	mtc1	a2,$f10
 600:	46809120 	cvt.s.w	$f4,$f18
 604:	46805420 	cvt.s.w	$f16,$f10
 608:	46062202 	mul.s	$f8,$f4,$f6
 60c:	10000004 	b	620 <BgHidanRsekizou_DrawFireball+0x114>
 610:	46088380 	add.s	$f14,$f16,$f8
 614:	44869000 	mtc1	a2,$f18
 618:	00000000 	nop
 61c:	468093a0 	cvt.s.w	$f14,$f18
 620:	02001025 	move	v0,s0
 624:	3c0efa00 	lui	t6,0xfa00
 628:	3c0fffff 	lui	t7,0xffff
 62c:	35ef0096 	ori	t7,t7,0x96
 630:	35ce0001 	ori	t6,t6,0x1
 634:	ac4e0000 	sw	t6,0(v0)
 638:	ac4f0004 	sw	t7,4(v0)
 63c:	26100008 	addiu	s0,s0,8
 640:	02001025 	move	v0,s0
 644:	3c18ff00 	lui	t8,0xff00
 648:	371800ff 	ori	t8,t8,0xff
 64c:	3c0cfb00 	lui	t4,0xfb00
 650:	ac4c0000 	sw	t4,0(v0)
 654:	ac580004 	sw	t8,4(v0)
 658:	8fb90070 	lw	t9,112(sp)
 65c:	00061080 	sll	v0,a2,0x2
 660:	26100008 	addiu	s0,s0,8
 664:	1720001c 	bnez	t9,6d8 <BgHidanRsekizou_DrawFireball+0x1cc>
 668:	00461023 	subu	v0,v0,a2
 66c:	00061080 	sll	v0,a2,0x2
 670:	00461023 	subu	v0,v0,a2
 674:	00021100 	sll	v0,v0,0x4
 678:	00461023 	subu	v0,v0,a2
 67c:	862900b6 	lh	t1,182(s1)
 680:	000210c0 	sll	v0,v0,0x3
 684:	00461023 	subu	v0,v0,a2
 688:	00021080 	sll	v0,v0,0x2
 68c:	01222023 	subu	a0,t1,v0
 690:	00042400 	sll	a0,a0,0x10
 694:	00042403 	sra	a0,a0,0x10
 698:	afa20024 	sw	v0,36(sp)
 69c:	e7ae0050 	swc1	$f14,80(sp)
 6a0:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 6a4:	afa7006c 	sw	a3,108(sp)
 6a8:	46000107 	neg.s	$f4,$f0
 6ac:	8fa20024 	lw	v0,36(sp)
 6b0:	e7a40058 	swc1	$f4,88(sp)
 6b4:	862b00b6 	lh	t3,182(s1)
 6b8:	01622023 	subu	a0,t3,v0
 6bc:	00042400 	sll	a0,a0,0x10
 6c0:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 6c4:	00042403 	sra	a0,a0,0x10
 6c8:	8fa7006c 	lw	a3,108(sp)
 6cc:	c7ae0050 	lwc1	$f14,80(sp)
 6d0:	10000018 	b	734 <BgHidanRsekizou_DrawFireball+0x228>
 6d4:	46000307 	neg.s	$f12,$f0
 6d8:	00021100 	sll	v0,v0,0x4
 6dc:	00461023 	subu	v0,v0,a2
 6e0:	862a00b6 	lh	t2,182(s1)
 6e4:	000210c0 	sll	v0,v0,0x3
 6e8:	00461023 	subu	v0,v0,a2
 6ec:	00021080 	sll	v0,v0,0x2
 6f0:	01422023 	subu	a0,t2,v0
 6f4:	00042400 	sll	a0,a0,0x10
 6f8:	00042403 	sra	a0,a0,0x10
 6fc:	afa20024 	sw	v0,36(sp)
 700:	e7ae0050 	swc1	$f14,80(sp)
 704:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 708:	afa7006c 	sw	a3,108(sp)
 70c:	e7a00058 	swc1	$f0,88(sp)
 710:	8fa20024 	lw	v0,36(sp)
 714:	862d00b6 	lh	t5,182(s1)
 718:	01a22023 	subu	a0,t5,v0
 71c:	00042400 	sll	a0,a0,0x10
 720:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 724:	00042403 	sra	a0,a0,0x10
 728:	8fa7006c 	lw	a3,108(sp)
 72c:	c7ae0050 	lwc1	$f14,80(sp)
 730:	46000306 	mov.s	$f12,$f0
 734:	3c010000 	lui	at,0x0
 738:	c4260078 	lwc1	$f6,120(at)
 73c:	3c013f00 	lui	at,0x3f00
 740:	44818000 	mtc1	at,$f16
 744:	460e3282 	mul.s	$f10,$f6,$f14
 748:	3c014120 	lui	at,0x4120
 74c:	44814000 	mtc1	at,$f8
 750:	3c0141a0 	lui	at,0x41a0
 754:	44813000 	mtc1	at,$f6
 758:	3c0141f0 	lui	at,0x41f0
 75c:	3c0eda38 	lui	t6,0xda38
 760:	46105000 	add.s	$f0,$f10,$f16
 764:	35ce0003 	ori	t6,t6,0x3
 768:	3c050000 	lui	a1,0x0
 76c:	24a50000 	addiu	a1,a1,0
 770:	46080482 	mul.s	$f18,$f0,$f8
 774:	e4e00028 	swc1	$f0,40(a3)
 778:	e4e00014 	swc1	$f0,20(a3)
 77c:	e4e00000 	swc1	$f0,0(a3)
 780:	c7aa0058 	lwc1	$f10,88(sp)
 784:	c6280024 	lwc1	$f8,36(s1)
 788:	00e02025 	move	a0,a3
 78c:	460e9102 	mul.s	$f4,$f18,$f14
 790:	2406021f 	li	a2,543
 794:	46062080 	add.s	$f2,$f4,$f6
 798:	44813000 	mtc1	at,$f6
 79c:	3c010000 	lui	at,0x0
 7a0:	460a1402 	mul.s	$f16,$f2,$f10
 7a4:	46088480 	add.s	$f18,$f16,$f8
 7a8:	e4f20030 	swc1	$f18,48(a3)
 7ac:	c430007c 	lwc1	$f16,124(at)
 7b0:	c6240028 	lwc1	$f4,40(s1)
 7b4:	460e8202 	mul.s	$f8,$f16,$f14
 7b8:	46062280 	add.s	$f10,$f4,$f6
 7bc:	460c1102 	mul.s	$f4,$f2,$f12
 7c0:	46085480 	add.s	$f18,$f10,$f8
 7c4:	e4f20034 	swc1	$f18,52(a3)
 7c8:	c626002c 	lwc1	$f6,44(s1)
 7cc:	02008825 	move	s1,s0
 7d0:	26100008 	addiu	s0,s0,8
 7d4:	46062400 	add.s	$f16,$f4,$f6
 7d8:	e4f00038 	swc1	$f16,56(a3)
 7dc:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 7e0:	ae2e0000 	sw	t6,0(s1)
 7e4:	8faf0060 	lw	t7,96(sp)
 7e8:	afa20028 	sw	v0,40(sp)
 7ec:	24050040 	li	a1,64
 7f0:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 7f4:	8de40000 	lw	a0,0(t7)
 7f8:	8fa40028 	lw	a0,40(sp)
 7fc:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 800:	00402825 	move	a1,v0
 804:	ae220004 	sw	v0,4(s1)
 808:	02001025 	move	v0,s0
 80c:	3c180000 	lui	t8,0x0
 810:	27180000 	addiu	t8,t8,0
 814:	3c0cde00 	lui	t4,0xde00
 818:	ac4c0000 	sw	t4,0(v0)
 81c:	ac580004 	sw	t8,4(v0)
 820:	8fbf001c 	lw	ra,28(sp)
 824:	26100008 	addiu	s0,s0,8
 828:	02001025 	move	v0,s0
 82c:	8fb00014 	lw	s0,20(sp)
 830:	8fb10018 	lw	s1,24(sp)
 834:	03e00008 	jr	ra
 838:	27bd0060 	addiu	sp,sp,96

0000083c <BgHidanRsekizou_Draw>:
 83c:	27bdff58 	addiu	sp,sp,-168
 840:	afb50030 	sw	s5,48(sp)
 844:	00a0a825 	move	s5,a1
 848:	afbf0034 	sw	ra,52(sp)
 84c:	afb4002c 	sw	s4,44(sp)
 850:	afb30028 	sw	s3,40(sp)
 854:	afb20024 	sw	s2,36(sp)
 858:	afb10020 	sw	s1,32(sp)
 85c:	afb0001c 	sw	s0,28(sp)
 860:	8ca50000 	lw	a1,0(a1)
 864:	0080a025 	move	s4,a0
 868:	3c060000 	lui	a2,0x0
 86c:	24c6001c 	addiu	a2,a2,28
 870:	27a40048 	addiu	a0,sp,72
 874:	24070234 	li	a3,564
 878:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 87c:	00a08825 	move	s1,a1
 880:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 884:	8ea40000 	lw	a0,0(s5)
 888:	8e2202c0 	lw	v0,704(s1)
 88c:	3c0fda38 	lui	t7,0xda38
 890:	35ef0003 	ori	t7,t7,0x3
 894:	244e0008 	addiu	t6,v0,8
 898:	ae2e02c0 	sw	t6,704(s1)
 89c:	3c050000 	lui	a1,0x0
 8a0:	ac4f0000 	sw	t7,0(v0)
 8a4:	8ea40000 	lw	a0,0(s5)
 8a8:	24a50038 	addiu	a1,a1,56
 8ac:	24060238 	li	a2,568
 8b0:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 8b4:	00408025 	move	s0,v0
 8b8:	ae020004 	sw	v0,4(s0)
 8bc:	8e2202c0 	lw	v0,704(s1)
 8c0:	3c080000 	lui	t0,0x0
 8c4:	25080000 	addiu	t0,t0,0
 8c8:	24580008 	addiu	t8,v0,8
 8cc:	ae3802c0 	sw	t8,704(s1)
 8d0:	3c19de00 	lui	t9,0xde00
 8d4:	27b3005c 	addiu	s3,sp,92
 8d8:	3c050000 	lui	a1,0x0
 8dc:	24a50000 	addiu	a1,a1,0
 8e0:	02602025 	move	a0,s3
 8e4:	ac590000 	sw	t9,0(v0)
 8e8:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 8ec:	ac480004 	sw	t0,4(v0)
 8f0:	8e2402d0 	lw	a0,720(s1)
 8f4:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 8f8:	24050014 	li	a1,20
 8fc:	ae2202d0 	sw	v0,720(s1)
 900:	86a907a0 	lh	t1,1952(s5)
 904:	00095080 	sll	t2,t1,0x2
 908:	02aa5821 	addu	t3,s5,t2
 90c:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 910:	8d640790 	lw	a0,1936(t3)
 914:	868c00b6 	lh	t4,182(s4)
 918:	24100003 	li	s0,3
 91c:	004c6823 	subu	t5,v0,t4
 920:	25aed194 	addiu	t6,t5,-11884
 924:	000e7c00 	sll	t7,t6,0x10
 928:	000fc403 	sra	t8,t7,0x10
 92c:	0700001f 	bltz	t8,9ac <BgHidanRsekizou_Draw+0x170>
 930:	00000000 	nop
 934:	24100003 	li	s0,3
 938:	afa00010 	sw	zero,16(sp)
 93c:	8e3902d0 	lw	t9,720(s1)
 940:	00103400 	sll	a2,s0,0x10
 944:	00063403 	sra	a2,a2,0x10
 948:	02a02025 	move	a0,s5
 94c:	02802825 	move	a1,s4
 950:	02603825 	move	a3,s3
 954:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 958:	afb90014 	sw	t9,20(sp)
 95c:	2610ffff 	addiu	s0,s0,-1
 960:	0601fff5 	bgez	s0,938 <BgHidanRsekizou_Draw+0xfc>
 964:	ae2202d0 	sw	v0,720(s1)
 968:	00008025 	move	s0,zero
 96c:	24120004 	li	s2,4
 970:	24080001 	li	t0,1
 974:	afa80010 	sw	t0,16(sp)
 978:	8e2902d0 	lw	t1,720(s1)
 97c:	00103400 	sll	a2,s0,0x10
 980:	00063403 	sra	a2,a2,0x10
 984:	02a02025 	move	a0,s5
 988:	02802825 	move	a1,s4
 98c:	02603825 	move	a3,s3
 990:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 994:	afa90014 	sw	t1,20(sp)
 998:	26100001 	addiu	s0,s0,1
 99c:	1612fff4 	bne	s0,s2,970 <BgHidanRsekizou_Draw+0x134>
 9a0:	ae2202d0 	sw	v0,720(s1)
 9a4:	1000001c 	b	a18 <BgHidanRsekizou_Draw+0x1dc>
 9a8:	00000000 	nop
 9ac:	240a0001 	li	t2,1
 9b0:	afaa0010 	sw	t2,16(sp)
 9b4:	8e2b02d0 	lw	t3,720(s1)
 9b8:	00103400 	sll	a2,s0,0x10
 9bc:	00063403 	sra	a2,a2,0x10
 9c0:	02a02025 	move	a0,s5
 9c4:	02802825 	move	a1,s4
 9c8:	02603825 	move	a3,s3
 9cc:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 9d0:	afab0014 	sw	t3,20(sp)
 9d4:	2610ffff 	addiu	s0,s0,-1
 9d8:	0601fff4 	bgez	s0,9ac <BgHidanRsekizou_Draw+0x170>
 9dc:	ae2202d0 	sw	v0,720(s1)
 9e0:	00008025 	move	s0,zero
 9e4:	24120004 	li	s2,4
 9e8:	afa00010 	sw	zero,16(sp)
 9ec:	8e2c02d0 	lw	t4,720(s1)
 9f0:	00103400 	sll	a2,s0,0x10
 9f4:	00063403 	sra	a2,a2,0x10
 9f8:	02a02025 	move	a0,s5
 9fc:	02802825 	move	a1,s4
 a00:	02603825 	move	a3,s3
 a04:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 a08:	afac0014 	sw	t4,20(sp)
 a0c:	26100001 	addiu	s0,s0,1
 a10:	1612fff5 	bne	s0,s2,9e8 <BgHidanRsekizou_Draw+0x1ac>
 a14:	ae2202d0 	sw	v0,720(s1)
 a18:	3c060000 	lui	a2,0x0
 a1c:	24c60054 	addiu	a2,a2,84
 a20:	27a40048 	addiu	a0,sp,72
 a24:	8ea50000 	lw	a1,0(s5)
 a28:	0c000000 	jal	0 <BgHidanRsekizou_Init>
 a2c:	24070258 	li	a3,600
 a30:	8fbf0034 	lw	ra,52(sp)
 a34:	8fb0001c 	lw	s0,28(sp)
 a38:	8fb10020 	lw	s1,32(sp)
 a3c:	8fb20024 	lw	s2,36(sp)
 a40:	8fb30028 	lw	s3,40(sp)
 a44:	8fb4002c 	lw	s4,44(sp)
 a48:	8fb50030 	lw	s5,48(sp)
 a4c:	03e00008 	jr	ra
 a50:	27bd00a8 	addiu	sp,sp,168
	...
