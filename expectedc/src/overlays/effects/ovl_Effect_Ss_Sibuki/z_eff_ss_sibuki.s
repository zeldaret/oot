
build/src/overlays/effects/ovl_Effect_Ss_Sibuki/z_eff_ss_sibuki.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsSibuki_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa40018 	sw	a0,24(sp)
   c:	afa5001c 	sw	a1,28(sp)
  10:	8cef0000 	lw	t7,0(a3)
  14:	3c0a0000 	lui	t2,0x0
  18:	3c020000 	lui	v0,0x0
  1c:	accf0000 	sw	t7,0(a2)
  20:	8cee0004 	lw	t6,4(a3)
  24:	24420000 	addiu	v0,v0,0
  28:	3c0100ff 	lui	at,0xff
  2c:	acce0004 	sw	t6,4(a2)
  30:	8cef0008 	lw	t7,8(a3)
  34:	3421ffff 	ori	at,at,0xffff
  38:	3c0c0000 	lui	t4,0x0
  3c:	accf0008 	sw	t7,8(a2)
  40:	8cf9000c 	lw	t9,12(a3)
  44:	3c0f0000 	lui	t7,0x0
  48:	acd9000c 	sw	t9,12(a2)
  4c:	8cf80010 	lw	t8,16(a3)
  50:	acd80010 	sw	t8,16(a2)
  54:	8cf90014 	lw	t9,20(a3)
  58:	acd90014 	sw	t9,20(a2)
  5c:	8ce90018 	lw	t1,24(a3)
  60:	acc90018 	sw	t1,24(a2)
  64:	8ce8001c 	lw	t0,28(a3)
  68:	acc8001c 	sw	t0,28(a2)
  6c:	8ce90020 	lw	t1,32(a3)
  70:	acc90020 	sw	t1,32(a2)
  74:	8d4a0000 	lw	t2,0(t2)
  78:	00024900 	sll	t1,v0,0x4
  7c:	854b09d8 	lh	t3,2520(t2)
  80:	00095702 	srl	t2,t1,0x1c
  84:	51600011 	beqzl	t3,cc <EffectSsSibuki_Init+0xcc>
  88:	000a5880 	sll	t3,t2,0x2
  8c:	3c020000 	lui	v0,0x0
  90:	24420000 	addiu	v0,v0,0
  94:	00026100 	sll	t4,v0,0x4
  98:	000c6f02 	srl	t5,t4,0x1c
  9c:	000d7080 	sll	t6,t5,0x2
  a0:	01ee7821 	addu	t7,t7,t6
  a4:	3c0100ff 	lui	at,0xff
  a8:	8def0000 	lw	t7,0(t7)
  ac:	3421ffff 	ori	at,at,0xffff
  b0:	0041c024 	and	t8,v0,at
  b4:	3c018000 	lui	at,0x8000
  b8:	01f8c821 	addu	t9,t7,t8
  bc:	03214021 	addu	t0,t9,at
  c0:	10000009 	b	e8 <EffectSsSibuki_Init+0xe8>
  c4:	acc80038 	sw	t0,56(a2)
  c8:	000a5880 	sll	t3,t2,0x2
  cc:	018b6021 	addu	t4,t4,t3
  d0:	8d8c0000 	lw	t4,0(t4)
  d4:	00416824 	and	t5,v0,at
  d8:	3c018000 	lui	at,0x8000
  dc:	018d7021 	addu	t6,t4,t5
  e0:	01c17821 	addu	t7,t6,at
  e4:	accf0038 	sw	t7,56(a2)
  e8:	afa60020 	sw	a2,32(sp)
  ec:	0c000000 	jal	0 <EffectSsSibuki_Init>
  f0:	afa70024 	sw	a3,36(sp)
  f4:	3c030000 	lui	v1,0x0
  f8:	8c630000 	lw	v1,0(v1)
  fc:	3c0143fa 	lui	at,0x43fa
 100:	44812000 	mtc1	at,$f4
 104:	84780a54 	lh	t8,2644(v1)
 108:	3c010000 	lui	at,0x0
 10c:	c4320048 	lwc1	$f18,72(at)
 110:	44983000 	mtc1	t8,$f6
 114:	846b0a56 	lh	t3,2646(v1)
 118:	8fa60020 	lw	a2,32(sp)
 11c:	46803220 	cvt.s.w	$f8,$f6
 120:	8fa70024 	lw	a3,36(sp)
 124:	3c180000 	lui	t8,0x0
 128:	3c190000 	lui	t9,0x0
 12c:	27180000 	addiu	t8,t8,0
 130:	27390000 	addiu	t9,t9,0
 134:	46082280 	add.s	$f10,$f4,$f8
 138:	24040064 	li	a0,100
 13c:	240500ff 	li	a1,255
 140:	24020001 	li	v0,1
 144:	460a0402 	mul.s	$f16,$f0,$f10
 148:	00000000 	nop
 14c:	46128182 	mul.s	$f6,$f16,$f18
 150:	4600310d 	trunc.w.s	$f4,$f6
 154:	440a2000 	mfc1	t2,$f4
 158:	00000000 	nop
 15c:	016a6021 	addu	t4,t3,t2
 160:	258d000a 	addiu	t5,t4,10
 164:	a4cd005c 	sh	t5,92(a2)
 168:	84ee0024 	lh	t6,36(a3)
 16c:	acd80028 	sw	t8,40(a2)
 170:	acd90024 	sw	t9,36(a2)
 174:	25cf0001 	addiu	t7,t6,1
 178:	a4cf0050 	sh	t7,80(a2)
 17c:	84e80026 	lh	t0,38(a3)
 180:	a4c80052 	sh	t0,82(a2)
 184:	84e90028 	lh	t1,40(a3)
 188:	a4c40040 	sh	a0,64(a2)
 18c:	a4c40042 	sh	a0,66(a2)
 190:	a4c40044 	sh	a0,68(a2)
 194:	a4c40046 	sh	a0,70(a2)
 198:	a4c50048 	sh	a1,72(a2)
 19c:	a4c5004a 	sh	a1,74(a2)
 1a0:	a4c5004c 	sh	a1,76(a2)
 1a4:	a4c5004e 	sh	a1,78(a2)
 1a8:	a4c90054 	sh	t1,84(a2)
 1ac:	8fbf0014 	lw	ra,20(sp)
 1b0:	27bd0018 	addiu	sp,sp,24
 1b4:	03e00008 	jr	ra
 1b8:	00000000 	nop

000001bc <EffectSsSibuki_Draw>:
 1bc:	27bdffa8 	addiu	sp,sp,-88
 1c0:	afbf001c 	sw	ra,28(sp)
 1c4:	afb10018 	sw	s1,24(sp)
 1c8:	afb00014 	sw	s0,20(sp)
 1cc:	afa40058 	sw	a0,88(sp)
 1d0:	afa5005c 	sw	a1,92(sp)
 1d4:	84cf0054 	lh	t7,84(a2)
 1d8:	3c0142c8 	lui	at,0x42c8
 1dc:	44814000 	mtc1	at,$f8
 1e0:	448f2000 	mtc1	t7,$f4
 1e4:	8c910000 	lw	s1,0(a0)
 1e8:	00c08025 	move	s0,a2
 1ec:	468021a0 	cvt.s.w	$f6,$f4
 1f0:	3c060000 	lui	a2,0x0
 1f4:	24c60000 	addiu	a2,a2,0
 1f8:	27a4003c 	addiu	a0,sp,60
 1fc:	240700a3 	li	a3,163
 200:	02202825 	move	a1,s1
 204:	46083283 	div.s	$f10,$f6,$f8
 208:	0c000000 	jal	0 <EffectSsSibuki_Init>
 20c:	e7aa0050 	swc1	$f10,80(sp)
 210:	c60c0000 	lwc1	$f12,0(s0)
 214:	c60e0004 	lwc1	$f14,4(s0)
 218:	8e060008 	lw	a2,8(s0)
 21c:	0c000000 	jal	0 <EffectSsSibuki_Init>
 220:	00003825 	move	a3,zero
 224:	c7ac0050 	lwc1	$f12,80(sp)
 228:	24070001 	li	a3,1
 22c:	44066000 	mfc1	a2,$f12
 230:	0c000000 	jal	0 <EffectSsSibuki_Init>
 234:	46006386 	mov.s	$f14,$f12
 238:	8e2202c0 	lw	v0,704(s1)
 23c:	3c19da38 	lui	t9,0xda38
 240:	37390003 	ori	t9,t9,0x3
 244:	24580008 	addiu	t8,v0,8
 248:	ae3802c0 	sw	t8,704(s1)
 24c:	3c050000 	lui	a1,0x0
 250:	ac590000 	sw	t9,0(v0)
 254:	24a50018 	addiu	a1,a1,24
 258:	02202025 	move	a0,s1
 25c:	240600b0 	li	a2,176
 260:	0c000000 	jal	0 <EffectSsSibuki_Init>
 264:	afa20038 	sw	v0,56(sp)
 268:	8fa30038 	lw	v1,56(sp)
 26c:	02202025 	move	a0,s1
 270:	0c000000 	jal	0 <EffectSsSibuki_Init>
 274:	ac620004 	sw	v0,4(v1)
 278:	8e2202c0 	lw	v0,704(s1)
 27c:	3c09fa00 	lui	t1,0xfa00
 280:	3c040000 	lui	a0,0x0
 284:	24480008 	addiu	t0,v0,8
 288:	ae2802c0 	sw	t0,704(s1)
 28c:	ac490000 	sw	t1,0(v0)
 290:	860a0046 	lh	t2,70(s0)
 294:	86180042 	lh	t8,66(s0)
 298:	860d0040 	lh	t5,64(s0)
 29c:	314b00ff 	andi	t3,t2,0xff
 2a0:	860a0044 	lh	t2,68(s0)
 2a4:	331900ff 	andi	t9,t8,0xff
 2a8:	000d7600 	sll	t6,t5,0x18
 2ac:	016e7825 	or	t7,t3,t6
 2b0:	00194400 	sll	t0,t9,0x10
 2b4:	314c00ff 	andi	t4,t2,0xff
 2b8:	000c6a00 	sll	t5,t4,0x8
 2bc:	01e84825 	or	t1,t7,t0
 2c0:	012d5825 	or	t3,t1,t5
 2c4:	ac4b0004 	sw	t3,4(v0)
 2c8:	8e2202c0 	lw	v0,704(s1)
 2cc:	3c18fb00 	lui	t8,0xfb00
 2d0:	24840000 	addiu	a0,a0,0
 2d4:	244e0008 	addiu	t6,v0,8
 2d8:	ae2e02c0 	sw	t6,704(s1)
 2dc:	ac580000 	sw	t8,0(v0)
 2e0:	8619004e 	lh	t9,78(s0)
 2e4:	860d004a 	lh	t5,74(s0)
 2e8:	860a0048 	lh	t2,72(s0)
 2ec:	332f00ff 	andi	t7,t9,0xff
 2f0:	8619004c 	lh	t9,76(s0)
 2f4:	31ab00ff 	andi	t3,t5,0xff
 2f8:	000a6600 	sll	t4,t2,0x18
 2fc:	01ec4825 	or	t1,t7,t4
 300:	000b7400 	sll	t6,t3,0x10
 304:	332800ff 	andi	t0,t9,0xff
 308:	00085200 	sll	t2,t0,0x8
 30c:	012ec025 	or	t8,t1,t6
 310:	030a7825 	or	t7,t8,t2
 314:	ac4f0004 	sw	t7,4(v0)
 318:	8e2202c0 	lw	v0,704(s1)
 31c:	3c0ddb06 	lui	t5,0xdb06
 320:	35ad0020 	ori	t5,t5,0x20
 324:	244c0008 	addiu	t4,v0,8
 328:	ae2c02c0 	sw	t4,704(s1)
 32c:	ac4d0000 	sw	t5,0(v0)
 330:	8e0b0038 	lw	t3,56(s0)
 334:	0004c900 	sll	t9,a0,0x4
 338:	00194702 	srl	t0,t9,0x1c
 33c:	ac4b0004 	sw	t3,4(v0)
 340:	8e2202c0 	lw	v0,704(s1)
 344:	0008c080 	sll	t8,t0,0x2
 348:	3c0a0000 	lui	t2,0x0
 34c:	24490008 	addiu	t1,v0,8
 350:	ae2902c0 	sw	t1,704(s1)
 354:	3c0ede00 	lui	t6,0xde00
 358:	01585021 	addu	t2,t2,t8
 35c:	3c0100ff 	lui	at,0xff
 360:	ac4e0000 	sw	t6,0(v0)
 364:	8d4a0000 	lw	t2,0(t2)
 368:	3421ffff 	ori	at,at,0xffff
 36c:	00817824 	and	t7,a0,at
 370:	3c018000 	lui	at,0x8000
 374:	014f6021 	addu	t4,t2,t7
 378:	01816821 	addu	t5,t4,at
 37c:	3c060000 	lui	a2,0x0
 380:	24c60030 	addiu	a2,a2,48
 384:	27a4003c 	addiu	a0,sp,60
 388:	02202825 	move	a1,s1
 38c:	240700c6 	li	a3,198
 390:	0c000000 	jal	0 <EffectSsSibuki_Init>
 394:	ac4d0004 	sw	t5,4(v0)
 398:	8fbf001c 	lw	ra,28(sp)
 39c:	8fb00014 	lw	s0,20(sp)
 3a0:	8fb10018 	lw	s1,24(sp)
 3a4:	03e00008 	jr	ra
 3a8:	27bd0058 	addiu	sp,sp,88

000003ac <EffectSsSibuki_Update>:
 3ac:	27bdffc0 	addiu	sp,sp,-64
 3b0:	afbf0024 	sw	ra,36(sp)
 3b4:	afb10020 	sw	s1,32(sp)
 3b8:	afb0001c 	sw	s0,28(sp)
 3bc:	f7b40010 	sdc1	$f20,16(sp)
 3c0:	afa50044 	sw	a1,68(sp)
 3c4:	8c821c44 	lw	v0,7236(a0)
 3c8:	c4c60004 	lwc1	$f6,4(a2)
 3cc:	00c08025 	move	s0,a2
 3d0:	c4440080 	lwc1	$f4,128(v0)
 3d4:	4604303e 	c.le.s	$f6,$f4
 3d8:	00000000 	nop
 3dc:	45020003 	bc1fl	3ec <EffectSsSibuki_Update+0x40>
 3e0:	86020050 	lh	v0,80(s0)
 3e4:	a4c0005c 	sh	zero,92(a2)
 3e8:	86020050 	lh	v0,80(s0)
 3ec:	10400087 	beqz	v0,60c <EffectSsSibuki_Update+0x260>
 3f0:	244effff 	addiu	t6,v0,-1
 3f4:	a60e0050 	sh	t6,80(s0)
 3f8:	860f0050 	lh	t7,80(s0)
 3fc:	55e0008e 	bnezl	t7,638 <EffectSsSibuki_Update+0x28c>
 400:	8fbf0024 	lw	ra,36(sp)
 404:	0c000000 	jal	0 <EffectSsSibuki_Init>
 408:	00002825 	move	a1,zero
 40c:	0c000000 	jal	0 <EffectSsSibuki_Init>
 410:	00402025 	move	a0,v0
 414:	0c000000 	jal	0 <EffectSsSibuki_Init>
 418:	a7a2002e 	sh	v0,46(sp)
 41c:	3c110000 	lui	s1,0x0
 420:	26310000 	addiu	s1,s1,0
 424:	8e220000 	lw	v0,0(s1)
 428:	3c010000 	lui	at,0x0
 42c:	c434004c 	lwc1	$f20,76(at)
 430:	84580a02 	lh	t8,2562(v0)
 434:	3c0141a0 	lui	at,0x41a0
 438:	44818000 	mtc1	at,$f16
 43c:	44984000 	mtc1	t8,$f8
 440:	845909fc 	lh	t9,2556(v0)
 444:	3c010000 	lui	at,0x0
 448:	468042a0 	cvt.s.w	$f10,$f8
 44c:	c4240050 	lwc1	$f4,80(at)
 450:	3c014348 	lui	at,0x4348
 454:	86080052 	lh	t0,82(s0)
 458:	46002182 	mul.s	$f6,$f4,$f0
 45c:	87a4002e 	lh	a0,46(sp)
 460:	46105480 	add.s	$f18,$f10,$f16
 464:	44998000 	mtc1	t9,$f16
 468:	44815000 	mtc1	at,$f10
 46c:	3c01bf80 	lui	at,0xbf80
 470:	46808120 	cvt.s.w	$f4,$f16
 474:	46069202 	mul.s	$f8,$f18,$f6
 478:	46045480 	add.s	$f18,$f10,$f4
 47c:	46149182 	mul.s	$f6,$f18,$f20
 480:	11000005 	beqz	t0,498 <EffectSsSibuki_Update+0xec>
 484:	46064080 	add.s	$f2,$f8,$f6
 488:	44818000 	mtc1	at,$f16
 48c:	00000000 	nop
 490:	46101082 	mul.s	$f2,$f2,$f16
 494:	00000000 	nop
 498:	0c000000 	jal	0 <EffectSsSibuki_Init>
 49c:	e7a20030 	swc1	$f2,48(sp)
 4a0:	c7a20030 	lwc1	$f2,48(sp)
 4a4:	46020282 	mul.s	$f10,$f0,$f2
 4a8:	e60a000c 	swc1	$f10,12(s0)
 4ac:	0c000000 	jal	0 <EffectSsSibuki_Init>
 4b0:	87a4002e 	lh	a0,46(sp)
 4b4:	c7a20030 	lwc1	$f2,48(sp)
 4b8:	46000107 	neg.s	$f4,$f0
 4bc:	46022482 	mul.s	$f18,$f4,$f2
 4c0:	0c000000 	jal	0 <EffectSsSibuki_Init>
 4c4:	e6120014 	swc1	$f18,20(s0)
 4c8:	8e220000 	lw	v0,0(s1)
 4cc:	3c0141a0 	lui	at,0x41a0
 4d0:	44818000 	mtc1	at,$f16
 4d4:	84490a04 	lh	t1,2564(v0)
 4d8:	844a09fe 	lh	t2,2558(v0)
 4dc:	3c010000 	lui	at,0x0
 4e0:	44894000 	mtc1	t1,$f8
 4e4:	c4240054 	lwc1	$f4,84(at)
 4e8:	3c01442f 	lui	at,0x442f
 4ec:	468041a0 	cvt.s.w	$f6,$f8
 4f0:	46002482 	mul.s	$f18,$f4,$f0
 4f4:	46103280 	add.s	$f10,$f6,$f16
 4f8:	448a8000 	mtc1	t2,$f16
 4fc:	44813000 	mtc1	at,$f6
 500:	46808120 	cvt.s.w	$f4,$f16
 504:	46125202 	mul.s	$f8,$f10,$f18
 508:	46043280 	add.s	$f10,$f6,$f4
 50c:	46145482 	mul.s	$f18,$f10,$f20
 510:	46124400 	add.s	$f16,$f8,$f18
 514:	0c000000 	jal	0 <EffectSsSibuki_Init>
 518:	e6100010 	swc1	$f16,16(s0)
 51c:	8e220000 	lw	v0,0(s1)
 520:	3c010000 	lui	at,0x0
 524:	c42a0058 	lwc1	$f10,88(at)
 528:	844b0a06 	lh	t3,2566(v0)
 52c:	844c0a00 	lh	t4,2560(v0)
 530:	46005202 	mul.s	$f8,$f10,$f0
 534:	448b3000 	mtc1	t3,$f6
 538:	3c01c2c8 	lui	at,0xc2c8
 53c:	44818000 	mtc1	at,$f16
 540:	46803120 	cvt.s.w	$f4,$f6
 544:	448c3000 	mtc1	t4,$f6
 548:	00000000 	nop
 54c:	468032a0 	cvt.s.w	$f10,$f6
 550:	46082482 	mul.s	$f18,$f4,$f8
 554:	460a8100 	add.s	$f4,$f16,$f10
 558:	46142202 	mul.s	$f8,$f4,$f20
 55c:	46089180 	add.s	$f6,$f18,$f8
 560:	e606001c 	swc1	$f6,28(s0)
 564:	8e2d0000 	lw	t5,0(s1)
 568:	85a309da 	lh	v1,2522(t5)
 56c:	50600032 	beqzl	v1,638 <EffectSsSibuki_Update+0x28c>
 570:	8fbf0024 	lw	ra,36(sp)
 574:	44835000 	mtc1	v1,$f10
 578:	c610000c 	lwc1	$f16,12(s0)
 57c:	c6060010 	lwc1	$f6,16(s0)
 580:	46805120 	cvt.s.w	$f4,$f10
 584:	46142482 	mul.s	$f18,$f4,$f20
 588:	00000000 	nop
 58c:	46128202 	mul.s	$f8,$f16,$f18
 590:	e608000c 	swc1	$f8,12(s0)
 594:	8e2e0000 	lw	t6,0(s1)
 598:	c6080014 	lwc1	$f8,20(s0)
 59c:	85cf09da 	lh	t7,2522(t6)
 5a0:	448f5000 	mtc1	t7,$f10
 5a4:	00000000 	nop
 5a8:	46805120 	cvt.s.w	$f4,$f10
 5ac:	46142402 	mul.s	$f16,$f4,$f20
 5b0:	00000000 	nop
 5b4:	46103482 	mul.s	$f18,$f6,$f16
 5b8:	e6120010 	swc1	$f18,16(s0)
 5bc:	8e380000 	lw	t8,0(s1)
 5c0:	c612001c 	lwc1	$f18,28(s0)
 5c4:	871909da 	lh	t9,2522(t8)
 5c8:	44995000 	mtc1	t9,$f10
 5cc:	00000000 	nop
 5d0:	46805120 	cvt.s.w	$f4,$f10
 5d4:	46142182 	mul.s	$f6,$f4,$f20
 5d8:	00000000 	nop
 5dc:	46064402 	mul.s	$f16,$f8,$f6
 5e0:	e6100014 	swc1	$f16,20(s0)
 5e4:	8e280000 	lw	t0,0(s1)
 5e8:	850909dc 	lh	t1,2524(t0)
 5ec:	44895000 	mtc1	t1,$f10
 5f0:	00000000 	nop
 5f4:	46805120 	cvt.s.w	$f4,$f10
 5f8:	46142202 	mul.s	$f8,$f4,$f20
 5fc:	00000000 	nop
 600:	46089182 	mul.s	$f6,$f18,$f8
 604:	1000000b 	b	634 <EffectSsSibuki_Update+0x288>
 608:	e606001c 	swc1	$f6,28(s0)
 60c:	86020054 	lh	v0,84(s0)
 610:	3c110000 	lui	s1,0x0
 614:	26310000 	addiu	s1,s1,0
 618:	50400007 	beqzl	v0,638 <EffectSsSibuki_Update+0x28c>
 61c:	8fbf0024 	lw	ra,36(sp)
 620:	8e2a0000 	lw	t2,0(s1)
 624:	854b0a08 	lh	t3,2568(t2)
 628:	004b6023 	subu	t4,v0,t3
 62c:	258dfffd 	addiu	t5,t4,-3
 630:	a60d0054 	sh	t5,84(s0)
 634:	8fbf0024 	lw	ra,36(sp)
 638:	d7b40010 	ldc1	$f20,16(sp)
 63c:	8fb0001c 	lw	s0,28(sp)
 640:	8fb10020 	lw	s1,32(sp)
 644:	03e00008 	jr	ra
 648:	27bd0040 	addiu	sp,sp,64
 64c:	00000000 	nop
