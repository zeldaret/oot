
build/src/overlays/effects/ovl_Effect_Ss_En_Ice/z_eff_ss_en_ice.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsEnIce_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa40030 	sw	a0,48(sp)
   c:	afa50034 	sw	a1,52(sp)
  10:	84e20038 	lh	v0,56(a3)
  14:	3c0e0000 	lui	t6,0x0
  18:	25ce0008 	addiu	t6,t6,8
  1c:	14400054 	bnez	v0,170 <EffectSsEnIce_Init+0x170>
  20:	24010001 	li	at,1
  24:	8dd80000 	lw	t8,0(t6)
  28:	27a20020 	addiu	v0,sp,32
  2c:	3c0142c8 	lui	at,0x42c8
  30:	ac580000 	sw	t8,0(v0)
  34:	8dcf0004 	lw	t7,4(t6)
  38:	ac4f0004 	sw	t7,4(v0)
  3c:	8dd80008 	lw	t8,8(t6)
  40:	ac580008 	sw	t8,8(v0)
  44:	8ce80004 	lw	t0,4(a3)
  48:	2418000a 	li	t8,10
  4c:	acc80000 	sw	t0,0(a2)
  50:	8cf90008 	lw	t9,8(a3)
  54:	c4c40000 	lwc1	$f4,0(a2)
  58:	acd90004 	sw	t9,4(a2)
  5c:	8ce8000c 	lw	t0,12(a3)
  60:	c4ca0004 	lwc1	$f10,4(a2)
  64:	acc80008 	sw	t0,8(a2)
  68:	8ce90000 	lw	t1,0(a3)
  6c:	3c080000 	lui	t0,0x0
  70:	25080000 	addiu	t0,t0,0
  74:	c5260024 	lwc1	$f6,36(t1)
  78:	3c090000 	lui	t1,0x0
  7c:	25290000 	addiu	t1,t1,0
  80:	46062201 	sub.s	$f8,$f4,$f6
  84:	c4c40008 	lwc1	$f4,8(a2)
  88:	e4c8002c 	swc1	$f8,44(a2)
  8c:	8cea0000 	lw	t2,0(a3)
  90:	c5500028 	lwc1	$f16,40(t2)
  94:	46105481 	sub.s	$f18,$f10,$f16
  98:	44818000 	mtc1	at,$f16
  9c:	3c014780 	lui	at,0x4780
  a0:	44816000 	mtc1	at,$f12
  a4:	e4d20030 	swc1	$f18,48(a2)
  a8:	8ceb0000 	lw	t3,0(a3)
  ac:	c566002c 	lwc1	$f6,44(t3)
  b0:	46062201 	sub.s	$f8,$f4,$f6
  b4:	e4c80034 	swc1	$f8,52(a2)
  b8:	8c4d0000 	lw	t5,0(v0)
  bc:	accd000c 	sw	t5,12(a2)
  c0:	8c4c0004 	lw	t4,4(v0)
  c4:	accc0010 	sw	t4,16(a2)
  c8:	8c4d0008 	lw	t5,8(v0)
  cc:	accd0014 	sw	t5,20(a2)
  d0:	8c4f0000 	lw	t7,0(v0)
  d4:	accf0018 	sw	t7,24(a2)
  d8:	8c4e0004 	lw	t6,4(v0)
  dc:	acce001c 	sw	t6,28(a2)
  e0:	8c4f0008 	lw	t7,8(v0)
  e4:	a4d8005c 	sh	t8,92(a2)
  e8:	accf0020 	sw	t7,32(a2)
  ec:	8cf90000 	lw	t9,0(a3)
  f0:	acc80028 	sw	t0,40(a2)
  f4:	acc90024 	sw	t1,36(a2)
  f8:	acd9003c 	sw	t9,60(a2)
  fc:	c4ea0010 	lwc1	$f10,16(a3)
 100:	24090001 	li	t1,1
 104:	46105482 	mul.s	$f18,$f10,$f16
 108:	4600910d 	trunc.w.s	$f4,$f18
 10c:	440b2000 	mfc1	t3,$f4
 110:	00000000 	nop
 114:	a4cb0058 	sh	t3,88(a2)
 118:	90ec002c 	lbu	t4,44(a3)
 11c:	a4cc0048 	sh	t4,72(a2)
 120:	90ed002d 	lbu	t5,45(a3)
 124:	a4cd004a 	sh	t5,74(a2)
 128:	90ee002e 	lbu	t6,46(a3)
 12c:	a4ce004c 	sh	t6,76(a2)
 130:	90ef002f 	lbu	t7,47(a3)
 134:	a4cf004e 	sh	t7,78(a2)
 138:	90f80030 	lbu	t8,48(a3)
 13c:	a4d80050 	sh	t8,80(a2)
 140:	90f90031 	lbu	t9,49(a3)
 144:	a4d90052 	sh	t9,82(a2)
 148:	90e80032 	lbu	t0,50(a3)
 14c:	a4c90056 	sh	t1,86(a2)
 150:	a4c80054 	sh	t0,84(a2)
 154:	0c000000 	jal	0 <EffectSsEnIce_Init>
 158:	afa60038 	sw	a2,56(sp)
 15c:	4600018d 	trunc.w.s	$f6,$f0
 160:	8fa60038 	lw	a2,56(sp)
 164:	440b3000 	mfc1	t3,$f6
 168:	1000004b 	b	298 <EffectSsEnIce_Init+0x298>
 16c:	a4cb0044 	sh	t3,68(a2)
 170:	14410045 	bne	v0,at,288 <EffectSsEnIce_Init+0x288>
 174:	3c040000 	lui	a0,0x0
 178:	24e20004 	addiu	v0,a3,4
 17c:	8c4d0000 	lw	t5,0(v0)
 180:	3c0b0000 	lui	t3,0x0
 184:	256b0000 	addiu	t3,t3,0
 188:	accd0000 	sw	t5,0(a2)
 18c:	8c4c0004 	lw	t4,4(v0)
 190:	3c0142c8 	lui	at,0x42c8
 194:	44815000 	mtc1	at,$f10
 198:	accc0004 	sw	t4,4(a2)
 19c:	8c4d0008 	lw	t5,8(v0)
 1a0:	3c0c0000 	lui	t4,0x0
 1a4:	258c0000 	addiu	t4,t4,0
 1a8:	accd0008 	sw	t5,8(a2)
 1ac:	8c4f0000 	lw	t7,0(v0)
 1b0:	accf002c 	sw	t7,44(a2)
 1b4:	8c4e0004 	lw	t6,4(v0)
 1b8:	acce0030 	sw	t6,48(a2)
 1bc:	8c4f0008 	lw	t7,8(v0)
 1c0:	accf0034 	sw	t7,52(a2)
 1c4:	8cf90014 	lw	t9,20(a3)
 1c8:	acd9000c 	sw	t9,12(a2)
 1cc:	8cf80018 	lw	t8,24(a3)
 1d0:	acd80010 	sw	t8,16(a2)
 1d4:	8cf9001c 	lw	t9,28(a3)
 1d8:	acd90014 	sw	t9,20(a2)
 1dc:	8ce90020 	lw	t1,32(a3)
 1e0:	acc90018 	sw	t1,24(a2)
 1e4:	8ce80024 	lw	t0,36(a3)
 1e8:	acc8001c 	sw	t0,28(a2)
 1ec:	8ce90028 	lw	t1,40(a3)
 1f0:	acc90020 	sw	t1,32(a2)
 1f4:	8cea0034 	lw	t2,52(a3)
 1f8:	accb0028 	sw	t3,40(a2)
 1fc:	accc0024 	sw	t4,36(a2)
 200:	a4ca005c 	sh	t2,92(a2)
 204:	8ced0034 	lw	t5,52(a3)
 208:	a4cd0040 	sh	t5,64(a2)
 20c:	c4e80010 	lwc1	$f8,16(a3)
 210:	460a4402 	mul.s	$f16,$f8,$f10
 214:	4600848d 	trunc.w.s	$f18,$f16
 218:	440f9000 	mfc1	t7,$f18
 21c:	00000000 	nop
 220:	a4cf0058 	sh	t7,88(a2)
 224:	c4ee0014 	lwc1	$f14,20(a3)
 228:	c4ec001c 	lwc1	$f12,28(a3)
 22c:	afa7003c 	sw	a3,60(sp)
 230:	0c000000 	jal	0 <EffectSsEnIce_Init>
 234:	afa60038 	sw	a2,56(sp)
 238:	8fa60038 	lw	a2,56(sp)
 23c:	8fa7003c 	lw	a3,60(sp)
 240:	a4c20042 	sh	v0,66(a2)
 244:	a4c00044 	sh	zero,68(a2)
 248:	90f8002c 	lbu	t8,44(a3)
 24c:	a4d80048 	sh	t8,72(a2)
 250:	90f9002d 	lbu	t9,45(a3)
 254:	a4d9004a 	sh	t9,74(a2)
 258:	90e8002e 	lbu	t0,46(a3)
 25c:	a4c8004c 	sh	t0,76(a2)
 260:	90e9002f 	lbu	t1,47(a3)
 264:	a4c9004e 	sh	t1,78(a2)
 268:	90ea0030 	lbu	t2,48(a3)
 26c:	a4ca0050 	sh	t2,80(a2)
 270:	90eb0031 	lbu	t3,49(a3)
 274:	a4cb0052 	sh	t3,82(a2)
 278:	90ec0032 	lbu	t4,50(a3)
 27c:	a4c00056 	sh	zero,86(a2)
 280:	10000005 	b	298 <EffectSsEnIce_Init+0x298>
 284:	a4cc0054 	sh	t4,84(a2)
 288:	0c000000 	jal	0 <EffectSsEnIce_Init>
 28c:	24840000 	addiu	a0,a0,0
 290:	10000002 	b	29c <EffectSsEnIce_Init+0x29c>
 294:	00001025 	move	v0,zero
 298:	24020001 	li	v0,1
 29c:	8fbf0014 	lw	ra,20(sp)
 2a0:	27bd0030 	addiu	sp,sp,48
 2a4:	03e00008 	jr	ra
 2a8:	00000000 	nop

000002ac <EffectSsEnIce_Draw>:
 2ac:	27bdff68 	addiu	sp,sp,-152
 2b0:	afbf003c 	sw	ra,60(sp)
 2b4:	afb10038 	sw	s1,56(sp)
 2b8:	afb00034 	sw	s0,52(sp)
 2bc:	afa40098 	sw	a0,152(sp)
 2c0:	afa5009c 	sw	a1,156(sp)
 2c4:	84cf0058 	lh	t7,88(a2)
 2c8:	3c010000 	lui	at,0x0
 2cc:	c4280070 	lwc1	$f8,112(at)
 2d0:	448f2000 	mtc1	t7,$f4
 2d4:	8c910000 	lw	s1,0(a0)
 2d8:	3c180001 	lui	t8,0x1
 2dc:	468021a0 	cvt.s.w	$f6,$f4
 2e0:	0304c021 	addu	t8,t8,a0
 2e4:	00c08025 	move	s0,a2
 2e8:	3c060000 	lui	a2,0x0
 2ec:	24c60034 	addiu	a2,a2,52
 2f0:	27a40064 	addiu	a0,sp,100
 2f4:	46083282 	mul.s	$f10,$f6,$f8
 2f8:	240700eb 	li	a3,235
 2fc:	02202825 	move	a1,s1
 300:	e7aa008c 	swc1	$f10,140(sp)
 304:	8f181de4 	lw	t8,7652(t8)
 308:	0c000000 	jal	0 <EffectSsEnIce_Init>
 30c:	afb8007c 	sw	t8,124(sp)
 310:	86190056 	lh	t9,86(s0)
 314:	00003825 	move	a3,zero
 318:	5320000b 	beqzl	t9,348 <EffectSsEnIce_Draw+0x9c>
 31c:	86020040 	lh	v0,64(s0)
 320:	8609005c 	lh	t1,92(s0)
 324:	00095080 	sll	t2,t1,0x2
 328:	01495023 	subu	t2,t2,t1
 32c:	000a5080 	sll	t2,t2,0x2
 330:	448a8000 	mtc1	t2,$f16
 334:	00000000 	nop
 338:	468084a0 	cvt.s.w	$f18,$f16
 33c:	10000018 	b	3a0 <EffectSsEnIce_Draw+0xf4>
 340:	e7b20078 	swc1	$f18,120(sp)
 344:	86020040 	lh	v0,64(s0)
 348:	58400012 	blezl	v0,394 <EffectSsEnIce_Draw+0xe8>
 34c:	3c01437f 	lui	at,0x437f
 350:	8603005c 	lh	v1,92(s0)
 354:	00025843 	sra	t3,v0,0x1
 358:	006b082a 	slt	at,v1,t3
 35c:	5020000d 	beqzl	at,394 <EffectSsEnIce_Draw+0xe8>
 360:	3c01437f 	lui	at,0x437f
 364:	44832000 	mtc1	v1,$f4
 368:	44824000 	mtc1	v0,$f8
 36c:	3c01437f 	lui	at,0x437f
 370:	46802020 	cvt.s.w	$f0,$f4
 374:	44818000 	mtc1	at,$f16
 378:	468042a0 	cvt.s.w	$f10,$f8
 37c:	46000180 	add.s	$f6,$f0,$f0
 380:	460a3083 	div.s	$f2,$f6,$f10
 384:	46101082 	mul.s	$f2,$f2,$f16
 388:	10000005 	b	3a0 <EffectSsEnIce_Draw+0xf4>
 38c:	e7a20078 	swc1	$f2,120(sp)
 390:	3c01437f 	lui	at,0x437f
 394:	44819000 	mtc1	at,$f18
 398:	00000000 	nop
 39c:	e7b20078 	swc1	$f18,120(sp)
 3a0:	c60c0000 	lwc1	$f12,0(s0)
 3a4:	c60e0004 	lwc1	$f14,4(s0)
 3a8:	0c000000 	jal	0 <EffectSsEnIce_Init>
 3ac:	8e060008 	lw	a2,8(s0)
 3b0:	c7ac008c 	lwc1	$f12,140(sp)
 3b4:	24070001 	li	a3,1
 3b8:	44066000 	mfc1	a2,$f12
 3bc:	0c000000 	jal	0 <EffectSsEnIce_Init>
 3c0:	46006386 	mov.s	$f14,$f12
 3c4:	860c0042 	lh	t4,66(s0)
 3c8:	3c010000 	lui	at,0x0
 3cc:	c4260074 	lwc1	$f6,116(at)
 3d0:	448c2000 	mtc1	t4,$f4
 3d4:	24050001 	li	a1,1
 3d8:	46802220 	cvt.s.w	$f8,$f4
 3dc:	46064302 	mul.s	$f12,$f8,$f6
 3e0:	0c000000 	jal	0 <EffectSsEnIce_Init>
 3e4:	00000000 	nop
 3e8:	860d0044 	lh	t5,68(s0)
 3ec:	3c010000 	lui	at,0x0
 3f0:	c4320078 	lwc1	$f18,120(at)
 3f4:	448d5000 	mtc1	t5,$f10
 3f8:	24050001 	li	a1,1
 3fc:	46805420 	cvt.s.w	$f16,$f10
 400:	46128302 	mul.s	$f12,$f16,$f18
 404:	0c000000 	jal	0 <EffectSsEnIce_Init>
 408:	00000000 	nop
 40c:	8e2202d0 	lw	v0,720(s1)
 410:	3c0eda38 	lui	t6,0xda38
 414:	35ce0003 	ori	t6,t6,0x3
 418:	244f0008 	addiu	t7,v0,8
 41c:	ae2f02d0 	sw	t7,720(s1)
 420:	3c050000 	lui	a1,0x0
 424:	ac4e0000 	sw	t6,0(v0)
 428:	24a50048 	addiu	a1,a1,72
 42c:	02202025 	move	a0,s1
 430:	24060105 	li	a2,261
 434:	0c000000 	jal	0 <EffectSsEnIce_Init>
 438:	afa20060 	sw	v0,96(sp)
 43c:	8fa30060 	lw	v1,96(sp)
 440:	3c010000 	lui	at,0x0
 444:	44802000 	mtc1	zero,$f4
 448:	ac620004 	sw	v0,4(v1)
 44c:	c420007c 	lwc1	$f0,124(at)
 450:	8fb80098 	lw	t8,152(sp)
 454:	e7a40084 	swc1	$f4,132(sp)
 458:	e7a00080 	swc1	$f0,128(sp)
 45c:	e7a00088 	swc1	$f0,136(sp)
 460:	0c000000 	jal	0 <EffectSsEnIce_Init>
 464:	8f040000 	lw	a0,0(t8)
 468:	8fa20098 	lw	v0,152(sp)
 46c:	02002025 	move	a0,s0
 470:	27a60080 	addiu	a2,sp,128
 474:	244500e0 	addiu	a1,v0,224
 478:	0c000000 	jal	0 <EffectSsEnIce_Init>
 47c:	8c470000 	lw	a3,0(v0)
 480:	8e2202d0 	lw	v0,720(s1)
 484:	8fa8007c 	lw	t0,124(sp)
 488:	3c09db06 	lui	t1,0xdb06
 48c:	24590008 	addiu	t9,v0,8
 490:	ae3902d0 	sw	t9,720(s1)
 494:	35290020 	ori	t1,t1,0x20
 498:	ac490000 	sw	t1,0(v0)
 49c:	8faa0098 	lw	t2,152(sp)
 4a0:	00087840 	sll	t7,t0,0x1
 4a4:	31ee00ff 	andi	t6,t7,0xff
 4a8:	8d440000 	lw	a0,0(t2)
 4ac:	24190020 	li	t9,32
 4b0:	240b0020 	li	t3,32
 4b4:	240c0010 	li	t4,16
 4b8:	240d0001 	li	t5,1
 4bc:	24180040 	li	t8,64
 4c0:	afb80024 	sw	t8,36(sp)
 4c4:	afad0018 	sw	t5,24(sp)
 4c8:	afac0014 	sw	t4,20(sp)
 4cc:	afab0010 	sw	t3,16(sp)
 4d0:	afb90028 	sw	t9,40(sp)
 4d4:	afae0020 	sw	t6,32(sp)
 4d8:	afa0001c 	sw	zero,28(sp)
 4dc:	00002825 	move	a1,zero
 4e0:	00003025 	move	a2,zero
 4e4:	afa2005c 	sw	v0,92(sp)
 4e8:	0c000000 	jal	0 <EffectSsEnIce_Init>
 4ec:	310700ff 	andi	a3,t0,0xff
 4f0:	8fa3005c 	lw	v1,92(sp)
 4f4:	3c0afa00 	lui	t2,0xfa00
 4f8:	354a0080 	ori	t2,t2,0x80
 4fc:	ac620004 	sw	v0,4(v1)
 500:	8e2202d0 	lw	v0,720(s1)
 504:	27a40064 	addiu	a0,sp,100
 508:	02202825 	move	a1,s1
 50c:	24490008 	addiu	t1,v0,8
 510:	ae2902d0 	sw	t1,720(s1)
 514:	ac4a0000 	sw	t2,0(v0)
 518:	860f0048 	lh	t7,72(s0)
 51c:	860b004e 	lh	t3,78(s0)
 520:	8619004a 	lh	t9,74(s0)
 524:	860d004c 	lh	t5,76(s0)
 528:	000f7600 	sll	t6,t7,0x18
 52c:	316c00ff 	andi	t4,t3,0xff
 530:	018ec025 	or	t8,t4,t6
 534:	332900ff 	andi	t1,t9,0xff
 538:	00095400 	sll	t2,t1,0x10
 53c:	31af00ff 	andi	t7,t5,0xff
 540:	000f6200 	sll	t4,t7,0x8
 544:	030a5825 	or	t3,t8,t2
 548:	016c7025 	or	t6,t3,t4
 54c:	ac4e0004 	sw	t6,4(v0)
 550:	8e2302d0 	lw	v1,720(s1)
 554:	3c09fb00 	lui	t1,0xfb00
 558:	444ff800 	cfc1	t7,$31
 55c:	24790008 	addiu	t9,v1,8
 560:	ae3902d0 	sw	t9,720(s1)
 564:	ac690000 	sw	t1,0(v1)
 568:	860b0050 	lh	t3,80(s0)
 56c:	c7a80078 	lwc1	$f8,120(sp)
 570:	86180054 	lh	t8,84(s0)
 574:	000b6600 	sll	t4,t3,0x18
 578:	240b0001 	li	t3,1
 57c:	44cbf800 	ctc1	t3,$31
 580:	86190052 	lh	t9,82(s0)
 584:	330a00ff 	andi	t2,t8,0xff
 588:	460041a4 	cvt.w.s	$f6,$f8
 58c:	000a6a00 	sll	t5,t2,0x8
 590:	332900ff 	andi	t1,t9,0xff
 594:	0009c400 	sll	t8,t1,0x10
 598:	444bf800 	cfc1	t3,$31
 59c:	01ac7025 	or	t6,t5,t4
 5a0:	01d85025 	or	t2,t6,t8
 5a4:	316b0078 	andi	t3,t3,0x78
 5a8:	11600013 	beqz	t3,5f8 <EffectSsEnIce_Draw+0x34c>
 5ac:	3c09de00 	lui	t1,0xde00
 5b0:	3c014f00 	lui	at,0x4f00
 5b4:	44813000 	mtc1	at,$f6
 5b8:	240b0001 	li	t3,1
 5bc:	46064181 	sub.s	$f6,$f8,$f6
 5c0:	44cbf800 	ctc1	t3,$31
 5c4:	00000000 	nop
 5c8:	460031a4 	cvt.w.s	$f6,$f6
 5cc:	444bf800 	cfc1	t3,$31
 5d0:	00000000 	nop
 5d4:	316b0078 	andi	t3,t3,0x78
 5d8:	15600005 	bnez	t3,5f0 <EffectSsEnIce_Draw+0x344>
 5dc:	00000000 	nop
 5e0:	440b3000 	mfc1	t3,$f6
 5e4:	3c018000 	lui	at,0x8000
 5e8:	10000007 	b	608 <EffectSsEnIce_Draw+0x35c>
 5ec:	01615825 	or	t3,t3,at
 5f0:	10000005 	b	608 <EffectSsEnIce_Draw+0x35c>
 5f4:	240bffff 	li	t3,-1
 5f8:	440b3000 	mfc1	t3,$f6
 5fc:	00000000 	nop
 600:	0560fffb 	bltz	t3,5f0 <EffectSsEnIce_Draw+0x344>
 604:	00000000 	nop
 608:	316d00ff 	andi	t5,t3,0xff
 60c:	014d6025 	or	t4,t2,t5
 610:	ac6c0004 	sw	t4,4(v1)
 614:	8e2202d0 	lw	v0,720(s1)
 618:	3c0e0000 	lui	t6,0x0
 61c:	44cff800 	ctc1	t7,$31
 620:	24590008 	addiu	t9,v0,8
 624:	ae3902d0 	sw	t9,720(s1)
 628:	25ce0000 	addiu	t6,t6,0
 62c:	3c060000 	lui	a2,0x0
 630:	24c6005c 	addiu	a2,a2,92
 634:	24070126 	li	a3,294
 638:	ac4e0004 	sw	t6,4(v0)
 63c:	0c000000 	jal	0 <EffectSsEnIce_Init>
 640:	ac490000 	sw	t1,0(v0)
 644:	8fbf003c 	lw	ra,60(sp)
 648:	8fb00034 	lw	s0,52(sp)
 64c:	8fb10038 	lw	s1,56(sp)
 650:	03e00008 	jr	ra
 654:	27bd0098 	addiu	sp,sp,152

00000658 <EffectSsEnIce_UpdateFlying>:
 658:	27bdffd0 	addiu	sp,sp,-48
 65c:	afbf0024 	sw	ra,36(sp)
 660:	afb00020 	sw	s0,32(sp)
 664:	f7b40018 	sdc1	$f20,24(sp)
 668:	afa40030 	sw	a0,48(sp)
 66c:	afa50034 	sw	a1,52(sp)
 670:	8cc2003c 	lw	v0,60(a2)
 674:	00c08025 	move	s0,a2
 678:	50400043 	beqzl	v0,788 <EffectSsEnIce_UpdateFlying+0x130>
 67c:	8609005c 	lh	t1,92(s0)
 680:	8c4e0130 	lw	t6,304(v0)
 684:	51c00040 	beqzl	t6,788 <EffectSsEnIce_UpdateFlying+0x130>
 688:	8609005c 	lh	t1,92(s0)
 68c:	84c3005c 	lh	v1,92(a2)
 690:	28610009 	slti	at,v1,9
 694:	54200018 	bnezl	at,6f8 <EffectSsEnIce_UpdateFlying+0xa0>
 698:	24010009 	li	at,9
 69c:	904f0114 	lbu	t7,276(v0)
 6a0:	51e00015 	beqzl	t7,6f8 <EffectSsEnIce_UpdateFlying+0xa0>
 6a4:	24010009 	li	at,9
 6a8:	94580112 	lhu	t8,274(v0)
 6ac:	3319c000 	andi	t9,t8,0xc000
 6b0:	57200011 	bnezl	t9,6f8 <EffectSsEnIce_UpdateFlying+0xa0>
 6b4:	24010009 	li	at,9
 6b8:	c4440024 	lwc1	$f4,36(v0)
 6bc:	c4c6002c 	lwc1	$f6,44(a2)
 6c0:	c4d00030 	lwc1	$f16,48(a2)
 6c4:	24680001 	addiu	t0,v1,1
 6c8:	46062200 	add.s	$f8,$f4,$f6
 6cc:	c4c60034 	lwc1	$f6,52(a2)
 6d0:	e4c80000 	swc1	$f8,0(a2)
 6d4:	c44a0028 	lwc1	$f10,40(v0)
 6d8:	46105480 	add.s	$f18,$f10,$f16
 6dc:	e4d20004 	swc1	$f18,4(a2)
 6e0:	c444002c 	lwc1	$f4,44(v0)
 6e4:	a4c8005c 	sh	t0,92(a2)
 6e8:	46062200 	add.s	$f8,$f4,$f6
 6ec:	1000004b 	b	81c <EffectSsEnIce_UpdateFlying+0x1c4>
 6f0:	e4c80008 	swc1	$f8,8(a2)
 6f4:	24010009 	li	at,9
 6f8:	14610048 	bne	v1,at,81c <EffectSsEnIce_UpdateFlying+0x1c4>
 6fc:	24440024 	addiu	a0,v0,36
 700:	0c000000 	jal	0 <EffectSsEnIce_Init>
 704:	02002825 	move	a1,s0
 708:	00022400 	sll	a0,v0,0x10
 70c:	0c000000 	jal	0 <EffectSsEnIce_Init>
 710:	00042403 	sra	a0,a0,0x10
 714:	0c000000 	jal	0 <EffectSsEnIce_Init>
 718:	46000506 	mov.s	$f20,$f0
 71c:	3c013f80 	lui	at,0x3f80
 720:	44815000 	mtc1	at,$f10
 724:	8e04003c 	lw	a0,60(s0)
 728:	02002825 	move	a1,s0
 72c:	460a0400 	add.s	$f16,$f0,$f10
 730:	24840024 	addiu	a0,a0,36
 734:	46148482 	mul.s	$f18,$f16,$f20
 738:	0c000000 	jal	0 <EffectSsEnIce_Init>
 73c:	e6120018 	swc1	$f18,24(s0)
 740:	00022400 	sll	a0,v0,0x10
 744:	0c000000 	jal	0 <EffectSsEnIce_Init>
 748:	00042403 	sra	a0,a0,0x10
 74c:	0c000000 	jal	0 <EffectSsEnIce_Init>
 750:	46000506 	mov.s	$f20,$f0
 754:	3c013f80 	lui	at,0x3f80
 758:	44812000 	mtc1	at,$f4
 75c:	3c01bfc0 	lui	at,0xbfc0
 760:	44815000 	mtc1	at,$f10
 764:	46040180 	add.s	$f6,$f0,$f4
 768:	3c0140a0 	lui	at,0x40a0
 76c:	44818000 	mtc1	at,$f16
 770:	e60a001c 	swc1	$f10,28(s0)
 774:	46143202 	mul.s	$f8,$f6,$f20
 778:	e6100010 	swc1	$f16,16(s0)
 77c:	10000027 	b	81c <EffectSsEnIce_UpdateFlying+0x1c4>
 780:	e6080020 	swc1	$f8,32(s0)
 784:	8609005c 	lh	t1,92(s0)
 788:	29210009 	slti	at,t1,9
 78c:	14200023 	bnez	at,81c <EffectSsEnIce_UpdateFlying+0x1c4>
 790:	3c010000 	lui	at,0x0
 794:	0c000000 	jal	0 <EffectSsEnIce_Init>
 798:	c42c0080 	lwc1	$f12,128(at)
 79c:	4600048d 	trunc.w.s	$f18,$f0
 7a0:	44029000 	mfc1	v0,$f18
 7a4:	00000000 	nop
 7a8:	00022400 	sll	a0,v0,0x10
 7ac:	00042403 	sra	a0,a0,0x10
 7b0:	0c000000 	jal	0 <EffectSsEnIce_Init>
 7b4:	a7a2002e 	sh	v0,46(sp)
 7b8:	0c000000 	jal	0 <EffectSsEnIce_Init>
 7bc:	46000506 	mov.s	$f20,$f0
 7c0:	3c013f80 	lui	at,0x3f80
 7c4:	44812000 	mtc1	at,$f4
 7c8:	00000000 	nop
 7cc:	46040180 	add.s	$f6,$f0,$f4
 7d0:	46143202 	mul.s	$f8,$f6,$f20
 7d4:	e6080018 	swc1	$f8,24(s0)
 7d8:	0c000000 	jal	0 <EffectSsEnIce_Init>
 7dc:	87a4002e 	lh	a0,46(sp)
 7e0:	0c000000 	jal	0 <EffectSsEnIce_Init>
 7e4:	46000506 	mov.s	$f20,$f0
 7e8:	3c013f80 	lui	at,0x3f80
 7ec:	44815000 	mtc1	at,$f10
 7f0:	3c01bfc0 	lui	at,0xbfc0
 7f4:	44812000 	mtc1	at,$f4
 7f8:	460a0400 	add.s	$f16,$f0,$f10
 7fc:	3c0140a0 	lui	at,0x40a0
 800:	44813000 	mtc1	at,$f6
 804:	240b0008 	li	t3,8
 808:	46148482 	mul.s	$f18,$f16,$f20
 80c:	a60b005c 	sh	t3,92(s0)
 810:	e604001c 	swc1	$f4,28(s0)
 814:	e6060010 	swc1	$f6,16(s0)
 818:	e6120020 	swc1	$f18,32(s0)
 81c:	8fbf0024 	lw	ra,36(sp)
 820:	d7b40018 	ldc1	$f20,24(sp)
 824:	8fb00020 	lw	s0,32(sp)
 828:	03e00008 	jr	ra
 82c:	27bd0030 	addiu	sp,sp,48

00000830 <EffectSsEnIce_Update>:
 830:	afa40000 	sw	a0,0(sp)
 834:	afa50004 	sw	a1,4(sp)
 838:	84ce0044 	lh	t6,68(a2)
 83c:	84cf0046 	lh	t7,70(a2)
 840:	01cfc021 	addu	t8,t6,t7
 844:	03e00008 	jr	ra
 848:	a4d80044 	sh	t8,68(a2)
 84c:	00000000 	nop
