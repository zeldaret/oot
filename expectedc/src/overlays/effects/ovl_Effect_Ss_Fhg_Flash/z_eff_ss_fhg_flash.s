
build/src/overlays/effects/ovl_Effect_Ss_Fhg_Flash/z_eff_ss_fhg_flash.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsFhgFlash_Init>:
   0:	27bdffa8 	addiu	sp,sp,-88
   4:	3c0e0000 	lui	t6,0x0
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb10018 	sw	s1,24(sp)
  10:	afb00014 	sw	s0,20(sp)
  14:	afa40058 	sw	a0,88(sp)
  18:	afa5005c 	sw	a1,92(sp)
  1c:	25ce0008 	addiu	t6,t6,8
  20:	8dd80000 	lw	t8,0(t6)
  24:	27a30040 	addiu	v1,sp,64
  28:	3c080000 	lui	t0,0x0
  2c:	ac780000 	sw	t8,0(v1)
  30:	8dcf0004 	lw	t7,4(t6)
  34:	25080014 	addiu	t0,t0,20
  38:	27b90034 	addiu	t9,sp,52
  3c:	ac6f0004 	sw	t7,4(v1)
  40:	8dd80008 	lw	t8,8(t6)
  44:	3c010001 	lui	at,0x1
  48:	342117a4 	ori	at,at,0x17a4
  4c:	ac780008 	sw	t8,8(v1)
  50:	8d0a0000 	lw	t2,0(t0)
  54:	8d090004 	lw	t1,4(t0)
  58:	00c08025 	move	s0,a2
  5c:	af2a0000 	sw	t2,0(t9)
  60:	8d0a0008 	lw	t2,8(t0)
  64:	af290004 	sw	t1,4(t9)
  68:	00e08825 	move	s1,a3
  6c:	af2a0008 	sw	t2,8(t9)
  70:	90eb002c 	lbu	t3,44(a3)
  74:	8fa40058 	lw	a0,88(sp)
  78:	2405005a 	li	a1,90
  7c:	1560004e 	bnez	t3,1b8 <EffectSsFhgFlash_Init+0x1b8>
  80:	00812021 	addu	a0,a0,at
  84:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
  88:	afa40020 	sw	a0,32(sp)
  8c:	8fa40020 	lw	a0,32(sp)
  90:	04400044 	bltz	v0,1a4 <EffectSsFhgFlash_Init+0x1a4>
  94:	00402825 	move	a1,v0
  98:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
  9c:	afa2004c 	sw	v0,76(sp)
  a0:	10400040 	beqz	v0,1a4 <EffectSsFhgFlash_Init+0x1a4>
  a4:	8fa5004c 	lw	a1,76(sp)
  a8:	8fac0058 	lw	t4,88(sp)
  ac:	00056900 	sll	t5,a1,0x4
  b0:	01a56821 	addu	t5,t5,a1
  b4:	000d6880 	sll	t5,t5,0x2
  b8:	3c0f0001 	lui	t7,0x1
  bc:	018d7021 	addu	t6,t4,t5
  c0:	01ee7821 	addu	t7,t7,t6
  c4:	8def17b4 	lw	t7,6068(t7)
  c8:	3c040000 	lui	a0,0x0
  cc:	24840000 	addiu	a0,a0,0
  d0:	3c018000 	lui	at,0x8000
  d4:	8c830018 	lw	v1,24(a0)
  d8:	01e1c021 	addu	t8,t7,at
  dc:	ac980018 	sw	t8,24(a0)
  e0:	a6050044 	sh	a1,68(s0)
  e4:	8e280000 	lw	t0,0(s1)
  e8:	240e0064 	li	t6,100
  ec:	3c020000 	lui	v0,0x0
  f0:	ae080000 	sw	t0,0(s0)
  f4:	8e390004 	lw	t9,4(s1)
  f8:	24420000 	addiu	v0,v0,0
  fc:	241800ff 	li	t8,255
 100:	ae190004 	sw	t9,4(s0)
 104:	8e280008 	lw	t0,8(s1)
 108:	3c190000 	lui	t9,0x0
 10c:	27390000 	addiu	t9,t9,0
 110:	ae080008 	sw	t0,8(s0)
 114:	8e2a000c 	lw	t2,12(s1)
 118:	3c080000 	lui	t0,0x0
 11c:	25080000 	addiu	t0,t0,0
 120:	ae0a000c 	sw	t2,12(s0)
 124:	8e290010 	lw	t1,16(s1)
 128:	3c0100ff 	lui	at,0xff
 12c:	3421ffff 	ori	at,at,0xffff
 130:	ae090010 	sw	t1,16(s0)
 134:	8e2a0014 	lw	t2,20(s1)
 138:	00024900 	sll	t1,v0,0x4
 13c:	ae0a0014 	sw	t2,20(s0)
 140:	8e2c0018 	lw	t4,24(s1)
 144:	00095702 	srl	t2,t1,0x1c
 148:	ae0c0018 	sw	t4,24(s0)
 14c:	8e2b001c 	lw	t3,28(s1)
 150:	ae0b001c 	sw	t3,28(s0)
 154:	8e2c0020 	lw	t4,32(s1)
 158:	000a5880 	sll	t3,t2,0x2
 15c:	ae0c0020 	sw	t4,32(s0)
 160:	922d0026 	lbu	t5,38(s1)
 164:	a60e005c 	sh	t6,92(s0)
 168:	008b6021 	addu	t4,a0,t3
 16c:	a60d0048 	sh	t5,72(s0)
 170:	862f0024 	lh	t7,36(s1)
 174:	a6180040 	sh	t8,64(s0)
 178:	ae190028 	sw	t9,40(s0)
 17c:	ae080024 	sw	t0,36(s0)
 180:	a60f0050 	sh	t7,80(s0)
 184:	8d8d0000 	lw	t5,0(t4)
 188:	00417024 	and	t6,v0,at
 18c:	3c018000 	lui	at,0x8000
 190:	01ae7821 	addu	t7,t5,t6
 194:	01e1c021 	addu	t8,t7,at
 198:	ae180038 	sw	t8,56(s0)
 19c:	10000068 	b	340 <EffectSsFhgFlash_Init+0x340>
 1a0:	ac830018 	sw	v1,24(a0)
 1a4:	3c040000 	lui	a0,0x0
 1a8:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 1ac:	24840000 	addiu	a0,a0,0
 1b0:	10000064 	b	344 <EffectSsFhgFlash_Init+0x344>
 1b4:	00001025 	move	v0,zero
 1b8:	8e390028 	lw	t9,40(s1)
 1bc:	27a20024 	addiu	v0,sp,36
 1c0:	ae19003c 	sw	t9,60(s0)
 1c4:	8c690000 	lw	t1,0(v1)
 1c8:	8c680004 	lw	t0,4(v1)
 1cc:	ac490000 	sw	t1,0(v0)
 1d0:	8c690008 	lw	t1,8(v1)
 1d4:	8c4b0000 	lw	t3,0(v0)
 1d8:	ac480004 	sw	t0,4(v0)
 1dc:	ac490008 	sw	t1,8(v0)
 1e0:	ae0b0018 	sw	t3,24(s0)
 1e4:	8c4a0004 	lw	t2,4(v0)
 1e8:	ae0a001c 	sw	t2,28(s0)
 1ec:	8c4b0008 	lw	t3,8(v0)
 1f0:	ae0b0020 	sw	t3,32(s0)
 1f4:	8c4d0000 	lw	t5,0(v0)
 1f8:	ae0d000c 	sw	t5,12(s0)
 1fc:	8c4c0004 	lw	t4,4(v0)
 200:	ae0c0010 	sw	t4,16(s0)
 204:	8c4d0008 	lw	t5,8(v0)
 208:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 20c:	ae0d0014 	sw	t5,20(s0)
 210:	3c014120 	lui	at,0x4120
 214:	44812000 	mtc1	at,$f4
 218:	00000000 	nop
 21c:	46040182 	mul.s	$f6,$f0,$f4
 220:	4600320d 	trunc.w.s	$f8,$f6
 224:	44194000 	mfc1	t9,$f8
 228:	00000000 	nop
 22c:	2728006f 	addiu	t0,t9,111
 230:	a608005c 	sh	t0,92(s0)
 234:	86290024 	lh	t1,36(s1)
 238:	44895000 	mtc1	t1,$f10
 23c:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 240:	46805320 	cvt.s.w	$f12,$f10
 244:	4600040d 	trunc.w.s	$f16,$f0
 248:	862e0024 	lh	t6,36(s1)
 24c:	3c190000 	lui	t9,0x0
 250:	3c080000 	lui	t0,0x0
 254:	440d8000 	mfc1	t5,$f16
 258:	241800ff 	li	t8,255
 25c:	27390000 	addiu	t9,t9,0
 260:	25080000 	addiu	t0,t0,0
 264:	01ae7821 	addu	t7,t5,t6
 268:	a60f0050 	sh	t7,80(s0)
 26c:	a6180040 	sh	t8,64(s0)
 270:	ae190028 	sw	t9,40(s0)
 274:	ae080024 	sw	t0,36(s0)
 278:	92290026 	lbu	t1,38(s1)
 27c:	3c040000 	lui	a0,0x0
 280:	3c020000 	lui	v0,0x0
 284:	a6090048 	sh	t1,72(s0)
 288:	922a0026 	lbu	t2,38(s1)
 28c:	27ab0034 	addiu	t3,sp,52
 290:	24840000 	addiu	a0,a0,0
 294:	11400018 	beqz	t2,2f8 <EffectSsFhgFlash_Init+0x2f8>
 298:	24420000 	addiu	v0,v0,0
 29c:	8d6d0000 	lw	t5,0(t3)
 2a0:	3c020000 	lui	v0,0x0
 2a4:	24420000 	addiu	v0,v0,0
 2a8:	ae0d0000 	sw	t5,0(s0)
 2ac:	8d6c0004 	lw	t4,4(t3)
 2b0:	00027100 	sll	t6,v0,0x4
 2b4:	3c040000 	lui	a0,0x0
 2b8:	ae0c0004 	sw	t4,4(s0)
 2bc:	8d6d0008 	lw	t5,8(t3)
 2c0:	000e7f02 	srl	t7,t6,0x1c
 2c4:	24840000 	addiu	a0,a0,0
 2c8:	000fc080 	sll	t8,t7,0x2
 2cc:	0098c821 	addu	t9,a0,t8
 2d0:	3c0100ff 	lui	at,0xff
 2d4:	ae0d0008 	sw	t5,8(s0)
 2d8:	8f280000 	lw	t0,0(t9)
 2dc:	3421ffff 	ori	at,at,0xffff
 2e0:	00414824 	and	t1,v0,at
 2e4:	3c018000 	lui	at,0x8000
 2e8:	01095021 	addu	t2,t0,t1
 2ec:	01415821 	addu	t3,t2,at
 2f0:	10000013 	b	340 <EffectSsFhgFlash_Init+0x340>
 2f4:	ae0b0038 	sw	t3,56(s0)
 2f8:	8e2d0000 	lw	t5,0(s1)
 2fc:	00027100 	sll	t6,v0,0x4
 300:	000e7f02 	srl	t7,t6,0x1c
 304:	ae0d0000 	sw	t5,0(s0)
 308:	8e2c0004 	lw	t4,4(s1)
 30c:	000fc080 	sll	t8,t7,0x2
 310:	0098c821 	addu	t9,a0,t8
 314:	ae0c0004 	sw	t4,4(s0)
 318:	8e2d0008 	lw	t5,8(s1)
 31c:	3c0100ff 	lui	at,0xff
 320:	3421ffff 	ori	at,at,0xffff
 324:	ae0d0008 	sw	t5,8(s0)
 328:	8f280000 	lw	t0,0(t9)
 32c:	00414824 	and	t1,v0,at
 330:	3c018000 	lui	at,0x8000
 334:	01095021 	addu	t2,t0,t1
 338:	01415821 	addu	t3,t2,at
 33c:	ae0b0038 	sw	t3,56(s0)
 340:	24020001 	li	v0,1
 344:	8fbf001c 	lw	ra,28(sp)
 348:	8fb00014 	lw	s0,20(sp)
 34c:	8fb10018 	lw	s1,24(sp)
 350:	03e00008 	jr	ra
 354:	27bd0058 	addiu	sp,sp,88

00000358 <EffectSsFhgFlash_DrawLightBall>:
 358:	27bdffa0 	addiu	sp,sp,-96
 35c:	afbf001c 	sw	ra,28(sp)
 360:	afb10018 	sw	s1,24(sp)
 364:	afb00014 	sw	s0,20(sp)
 368:	afa40060 	sw	a0,96(sp)
 36c:	afa50064 	sw	a1,100(sp)
 370:	84cf0050 	lh	t7,80(a2)
 374:	3c0142c8 	lui	at,0x42c8
 378:	44814000 	mtc1	at,$f8
 37c:	448f2000 	mtc1	t7,$f4
 380:	8c900000 	lw	s0,0(a0)
 384:	3c090001 	lui	t1,0x1
 388:	468021a0 	cvt.s.w	$f6,$f4
 38c:	00c08825 	move	s1,a2
 390:	2407010c 	li	a3,268
 394:	02002825 	move	a1,s0
 398:	46083283 	div.s	$f10,$f6,$f8
 39c:	e7aa0054 	swc1	$f10,84(sp)
 3a0:	84d80044 	lh	t8,68(a2)
 3a4:	3c060000 	lui	a2,0x0
 3a8:	24c6002c 	addiu	a2,a2,44
 3ac:	0018c900 	sll	t9,t8,0x4
 3b0:	0338c821 	addu	t9,t9,t8
 3b4:	0019c880 	sll	t9,t9,0x2
 3b8:	00994021 	addu	t0,a0,t9
 3bc:	01284821 	addu	t1,t1,t0
 3c0:	8d2917b4 	lw	t1,6068(t1)
 3c4:	27a4003c 	addiu	a0,sp,60
 3c8:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 3cc:	afa90050 	sw	t1,80(sp)
 3d0:	c62c0000 	lwc1	$f12,0(s1)
 3d4:	c62e0004 	lwc1	$f14,4(s1)
 3d8:	8e260008 	lw	a2,8(s1)
 3dc:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 3e0:	00003825 	move	a3,zero
 3e4:	c7ac0054 	lwc1	$f12,84(sp)
 3e8:	24070001 	li	a3,1
 3ec:	44066000 	mfc1	a2,$f12
 3f0:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 3f4:	46006386 	mov.s	$f14,$f12
 3f8:	8fa40050 	lw	a0,80(sp)
 3fc:	3c018000 	lui	at,0x8000
 400:	3c0cdb06 	lui	t4,0xdb06
 404:	00815021 	addu	t2,a0,at
 408:	3c010000 	lui	at,0x0
 40c:	ac2a0018 	sw	t2,24(at)
 410:	8e0202d0 	lw	v0,720(s0)
 414:	358c0018 	ori	t4,t4,0x18
 418:	244b0008 	addiu	t3,v0,8
 41c:	ae0b02d0 	sw	t3,720(s0)
 420:	ac440004 	sw	a0,4(v0)
 424:	ac4c0000 	sw	t4,0(v0)
 428:	8fad0060 	lw	t5,96(sp)
 42c:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 430:	8da40000 	lw	a0,0(t5)
 434:	8e0202d0 	lw	v0,720(s0)
 438:	3c18fa00 	lui	t8,0xfa00
 43c:	2401ff00 	li	at,-256
 440:	244f0008 	addiu	t7,v0,8
 444:	ae0f02d0 	sw	t7,720(s0)
 448:	ac580000 	sw	t8,0(v0)
 44c:	862e0040 	lh	t6,64(s1)
 450:	3c0afb00 	lui	t2,0xfb00
 454:	3c0d0000 	lui	t5,0x0
 458:	31d900ff 	andi	t9,t6,0xff
 45c:	03214025 	or	t0,t9,at
 460:	ac480004 	sw	t0,4(v0)
 464:	8e0202d0 	lw	v0,720(s0)
 468:	25ad0020 	addiu	t5,t5,32
 46c:	3c19e700 	lui	t9,0xe700
 470:	24490008 	addiu	t1,v0,8
 474:	ae0902d0 	sw	t1,720(s0)
 478:	ac4a0000 	sw	t2,0(v0)
 47c:	862b0048 	lh	t3,72(s1)
 480:	3c010001 	lui	at,0x1
 484:	34211da0 	ori	at,at,0x1da0
 488:	000b6080 	sll	t4,t3,0x2
 48c:	018b6023 	subu	t4,t4,t3
 490:	018d1821 	addu	v1,t4,t5
 494:	90780002 	lbu	t8,2(v1)
 498:	90680000 	lbu	t0,0(v1)
 49c:	906c0001 	lbu	t4,1(v1)
 4a0:	00187200 	sll	t6,t8,0x8
 4a4:	00084e00 	sll	t1,t0,0x18
 4a8:	01c95025 	or	t2,t6,t1
 4ac:	000c6c00 	sll	t5,t4,0x10
 4b0:	014d7825 	or	t7,t2,t5
 4b4:	ac4f0004 	sw	t7,4(v0)
 4b8:	8e0202d0 	lw	v0,720(s0)
 4bc:	24580008 	addiu	t8,v0,8
 4c0:	ae1802d0 	sw	t8,720(s0)
 4c4:	ac400004 	sw	zero,4(v0)
 4c8:	ac590000 	sw	t9,0(v0)
 4cc:	8fa40060 	lw	a0,96(sp)
 4d0:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 4d4:	00812021 	addu	a0,a0,at
 4d8:	86280046 	lh	t0,70(s1)
 4dc:	3c014700 	lui	at,0x4700
 4e0:	44812000 	mtc1	at,$f4
 4e4:	44888000 	mtc1	t0,$f16
 4e8:	3c010000 	lui	at,0x0
 4ec:	c42800bc 	lwc1	$f8,188(at)
 4f0:	468084a0 	cvt.s.w	$f18,$f16
 4f4:	24050001 	li	a1,1
 4f8:	46049183 	div.s	$f6,$f18,$f4
 4fc:	46083302 	mul.s	$f12,$f6,$f8
 500:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 504:	00000000 	nop
 508:	8e0202d0 	lw	v0,720(s0)
 50c:	3c09da38 	lui	t1,0xda38
 510:	35290003 	ori	t1,t1,0x3
 514:	244e0008 	addiu	t6,v0,8
 518:	ae0e02d0 	sw	t6,720(s0)
 51c:	3c050000 	lui	a1,0x0
 520:	ac490000 	sw	t1,0(v0)
 524:	24a50044 	addiu	a1,a1,68
 528:	02002025 	move	a0,s0
 52c:	24060146 	li	a2,326
 530:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 534:	afa20028 	sw	v0,40(sp)
 538:	8fa30028 	lw	v1,40(sp)
 53c:	3c0cde00 	lui	t4,0xde00
 540:	3c060000 	lui	a2,0x0
 544:	ac620004 	sw	v0,4(v1)
 548:	8e0202d0 	lw	v0,720(s0)
 54c:	24c6005c 	addiu	a2,a2,92
 550:	27a4003c 	addiu	a0,sp,60
 554:	244b0008 	addiu	t3,v0,8
 558:	ae0b02d0 	sw	t3,720(s0)
 55c:	ac4c0000 	sw	t4,0(v0)
 560:	8e2a0038 	lw	t2,56(s1)
 564:	02002825 	move	a1,s0
 568:	2407014a 	li	a3,330
 56c:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 570:	ac4a0004 	sw	t2,4(v0)
 574:	8fbf001c 	lw	ra,28(sp)
 578:	8fb00014 	lw	s0,20(sp)
 57c:	8fb10018 	lw	s1,24(sp)
 580:	03e00008 	jr	ra
 584:	27bd0060 	addiu	sp,sp,96

00000588 <EffectSsFhgFlash_DrawShock>:
 588:	27bdffa0 	addiu	sp,sp,-96
 58c:	afbf001c 	sw	ra,28(sp)
 590:	afb10018 	sw	s1,24(sp)
 594:	afb00014 	sw	s0,20(sp)
 598:	afa40060 	sw	a0,96(sp)
 59c:	afa50064 	sw	a1,100(sp)
 5a0:	84cf0050 	lh	t7,80(a2)
 5a4:	3c0142c8 	lui	at,0x42c8
 5a8:	44814000 	mtc1	at,$f8
 5ac:	448f2000 	mtc1	t7,$f4
 5b0:	8c900000 	lw	s0,0(a0)
 5b4:	00c08825 	move	s1,a2
 5b8:	468021a0 	cvt.s.w	$f6,$f4
 5bc:	3c060000 	lui	a2,0x0
 5c0:	24c60074 	addiu	a2,a2,116
 5c4:	27a40040 	addiu	a0,sp,64
 5c8:	2407015a 	li	a3,346
 5cc:	02002825 	move	a1,s0
 5d0:	46083283 	div.s	$f10,$f6,$f8
 5d4:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 5d8:	e7aa0054 	swc1	$f10,84(sp)
 5dc:	c62c0000 	lwc1	$f12,0(s1)
 5e0:	c62e0004 	lwc1	$f14,4(s1)
 5e4:	8e260008 	lw	a2,8(s1)
 5e8:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 5ec:	00003825 	move	a3,zero
 5f0:	c7ac0054 	lwc1	$f12,84(sp)
 5f4:	24070001 	li	a3,1
 5f8:	44066000 	mfc1	a2,$f12
 5fc:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 600:	46006386 	mov.s	$f14,$f12
 604:	86380048 	lh	t8,72(s1)
 608:	8fb90060 	lw	t9,96(sp)
 60c:	8fac0060 	lw	t4,96(sp)
 610:	13000019 	beqz	t8,678 <EffectSsFhgFlash_DrawShock+0xf0>
 614:	00000000 	nop
 618:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 61c:	8f240000 	lw	a0,0(t9)
 620:	86280046 	lh	t0,70(s1)
 624:	3c014700 	lui	at,0x4700
 628:	44812000 	mtc1	at,$f4
 62c:	44888000 	mtc1	t0,$f16
 630:	3c010000 	lui	at,0x0
 634:	c42800c0 	lwc1	$f8,192(at)
 638:	468084a0 	cvt.s.w	$f18,$f16
 63c:	24050001 	li	a1,1
 640:	46049183 	div.s	$f6,$f18,$f4
 644:	46083302 	mul.s	$f12,$f6,$f8
 648:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 64c:	00000000 	nop
 650:	8e0202d0 	lw	v0,720(s0)
 654:	3c0ae200 	lui	t2,0xe200
 658:	3c0b0c18 	lui	t3,0xc18
 65c:	24490008 	addiu	t1,v0,8
 660:	ae0902d0 	sw	t1,720(s0)
 664:	356b4dd8 	ori	t3,t3,0x4dd8
 668:	354a001c 	ori	t2,t2,0x1c
 66c:	ac4a0000 	sw	t2,0(v0)
 670:	10000011 	b	6b8 <EffectSsFhgFlash_DrawShock+0x130>
 674:	ac4b0004 	sw	t3,4(v0)
 678:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 67c:	8d840000 	lw	a0,0(t4)
 680:	8fa40060 	lw	a0,96(sp)
 684:	3c010001 	lui	at,0x1
 688:	34211da0 	ori	at,at,0x1da0
 68c:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 690:	00812021 	addu	a0,a0,at
 694:	8e0202d0 	lw	v0,720(s0)
 698:	3c0ee200 	lui	t6,0xe200
 69c:	3c0f0c18 	lui	t7,0xc18
 6a0:	244d0008 	addiu	t5,v0,8
 6a4:	ae0d02d0 	sw	t5,720(s0)
 6a8:	35ef49d8 	ori	t7,t7,0x49d8
 6ac:	35ce001c 	ori	t6,t6,0x1c
 6b0:	ac4e0000 	sw	t6,0(v0)
 6b4:	ac4f0004 	sw	t7,4(v0)
 6b8:	8e0202d0 	lw	v0,720(s0)
 6bc:	3c19e700 	lui	t9,0xe700
 6c0:	3c09fa00 	lui	t1,0xfa00
 6c4:	24580008 	addiu	t8,v0,8
 6c8:	ae1802d0 	sw	t8,720(s0)
 6cc:	ac400004 	sw	zero,4(v0)
 6d0:	ac590000 	sw	t9,0(v0)
 6d4:	8e0202d0 	lw	v0,720(s0)
 6d8:	2401ff00 	li	at,-256
 6dc:	3c0f00ff 	lui	t7,0xff
 6e0:	24480008 	addiu	t0,v0,8
 6e4:	ae0802d0 	sw	t0,720(s0)
 6e8:	ac490000 	sw	t1,0(v0)
 6ec:	862a0040 	lh	t2,64(s1)
 6f0:	35ef9b00 	ori	t7,t7,0x9b00
 6f4:	3c0efb00 	lui	t6,0xfb00
 6f8:	314b00ff 	andi	t3,t2,0xff
 6fc:	01616025 	or	t4,t3,at
 700:	ac4c0004 	sw	t4,4(v0)
 704:	8e0202d0 	lw	v0,720(s0)
 708:	3c014700 	lui	at,0x4700
 70c:	44819000 	mtc1	at,$f18
 710:	244d0008 	addiu	t5,v0,8
 714:	ae0d02d0 	sw	t5,720(s0)
 718:	ac4f0004 	sw	t7,4(v0)
 71c:	ac4e0000 	sw	t6,0(v0)
 720:	86380046 	lh	t8,70(s1)
 724:	3c010000 	lui	at,0x0
 728:	c42600c4 	lwc1	$f6,196(at)
 72c:	44985000 	mtc1	t8,$f10
 730:	24050001 	li	a1,1
 734:	46805420 	cvt.s.w	$f16,$f10
 738:	46128103 	div.s	$f4,$f16,$f18
 73c:	46062302 	mul.s	$f12,$f4,$f6
 740:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 744:	00000000 	nop
 748:	8e0202d0 	lw	v0,720(s0)
 74c:	3c08da38 	lui	t0,0xda38
 750:	35080003 	ori	t0,t0,0x3
 754:	24590008 	addiu	t9,v0,8
 758:	ae1902d0 	sw	t9,720(s0)
 75c:	3c050000 	lui	a1,0x0
 760:	ac480000 	sw	t0,0(v0)
 764:	24a5008c 	addiu	a1,a1,140
 768:	02002025 	move	a0,s0
 76c:	2406018b 	li	a2,395
 770:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 774:	afa20028 	sw	v0,40(sp)
 778:	8fa30028 	lw	v1,40(sp)
 77c:	3c0ade00 	lui	t2,0xde00
 780:	3c060000 	lui	a2,0x0
 784:	ac620004 	sw	v0,4(v1)
 788:	8e0202d0 	lw	v0,720(s0)
 78c:	24c600a4 	addiu	a2,a2,164
 790:	27a40040 	addiu	a0,sp,64
 794:	24490008 	addiu	t1,v0,8
 798:	ae0902d0 	sw	t1,720(s0)
 79c:	ac4a0000 	sw	t2,0(v0)
 7a0:	8e2b0038 	lw	t3,56(s1)
 7a4:	02002825 	move	a1,s0
 7a8:	2407018f 	li	a3,399
 7ac:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 7b0:	ac4b0004 	sw	t3,4(v0)
 7b4:	8fbf001c 	lw	ra,28(sp)
 7b8:	8fb00014 	lw	s0,20(sp)
 7bc:	8fb10018 	lw	s1,24(sp)
 7c0:	03e00008 	jr	ra
 7c4:	27bd0060 	addiu	sp,sp,96

000007c8 <EffectSsFhgFlash_UpdateLightBall>:
 7c8:	27bdffe8 	addiu	sp,sp,-24
 7cc:	afbf0014 	sw	ra,20(sp)
 7d0:	afa40018 	sw	a0,24(sp)
 7d4:	afa5001c 	sw	a1,28(sp)
 7d8:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 7dc:	afa60020 	sw	a2,32(sp)
 7e0:	3c010000 	lui	at,0x0
 7e4:	c42400c8 	lwc1	$f4,200(at)
 7e8:	8fa60020 	lw	a2,32(sp)
 7ec:	46040182 	mul.s	$f6,$f0,$f4
 7f0:	84ce0046 	lh	t6,70(a2)
 7f4:	84c20050 	lh	v0,80(a2)
 7f8:	244bfff6 	addiu	t3,v0,-10
 7fc:	4600320d 	trunc.w.s	$f8,$f6
 800:	44084000 	mfc1	t0,$f8
 804:	00000000 	nop
 808:	01c84821 	addu	t1,t6,t0
 80c:	252a4000 	addiu	t2,t1,16384
 810:	18400007 	blez	v0,830 <EffectSsFhgFlash_UpdateLightBall+0x68>
 814:	a4ca0046 	sh	t2,70(a2)
 818:	a4cb0050 	sh	t3,80(a2)
 81c:	84cc0050 	lh	t4,80(a2)
 820:	5d800004 	bgtzl	t4,834 <EffectSsFhgFlash_UpdateLightBall+0x6c>
 824:	84c20040 	lh	v0,64(a2)
 828:	a4c00050 	sh	zero,80(a2)
 82c:	a4c0005c 	sh	zero,92(a2)
 830:	84c20040 	lh	v0,64(a2)
 834:	18400006 	blez	v0,850 <EffectSsFhgFlash_UpdateLightBall+0x88>
 838:	244dfff6 	addiu	t5,v0,-10
 83c:	a4cd0040 	sh	t5,64(a2)
 840:	84cf0040 	lh	t7,64(a2)
 844:	5de00003 	bgtzl	t7,854 <EffectSsFhgFlash_UpdateLightBall+0x8c>
 848:	8fbf0014 	lw	ra,20(sp)
 84c:	a4c00040 	sh	zero,64(a2)
 850:	8fbf0014 	lw	ra,20(sp)
 854:	27bd0018 	addiu	sp,sp,24
 858:	03e00008 	jr	ra
 85c:	00000000 	nop

00000860 <EffectSsFhgFlash_UpdateShock>:
 860:	27bdffc8 	addiu	sp,sp,-56
 864:	afbf001c 	sw	ra,28(sp)
 868:	afb00018 	sw	s0,24(sp)
 86c:	00c08025 	move	s0,a2
 870:	afa40038 	sw	a0,56(sp)
 874:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 878:	afa5003c 	sw	a1,60(sp)
 87c:	3c010000 	lui	at,0x0
 880:	c42400cc 	lwc1	$f4,204(at)
 884:	860e0046 	lh	t6,70(s0)
 888:	86020048 	lh	v0,72(s0)
 88c:	46040182 	mul.s	$f6,$f0,$f4
 890:	24010001 	li	at,1
 894:	4600320d 	trunc.w.s	$f8,$f6
 898:	44084000 	mfc1	t0,$f8
 89c:	00000000 	nop
 8a0:	01c84821 	addu	t1,t6,t0
 8a4:	252a4000 	addiu	t2,t1,16384
 8a8:	14410026 	bne	v0,at,944 <EffectSsFhgFlash_UpdateShock+0xe4>
 8ac:	a60a0046 	sh	t2,70(s0)
 8b0:	8fab0038 	lw	t3,56(sp)
 8b4:	3c010000 	lui	at,0x0
 8b8:	c42c00d0 	lwc1	$f12,208(at)
 8bc:	8d6c1c44 	lw	t4,7236(t3)
 8c0:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 8c4:	afac0030 	sw	t4,48(sp)
 8c8:	4600028d 	trunc.w.s	$f10,$f0
 8cc:	3c014120 	lui	at,0x4120
 8d0:	44816000 	mtc1	at,$f12
 8d4:	440f5000 	mfc1	t7,$f10
 8d8:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 8dc:	a7af0036 	sh	t7,54(sp)
 8e0:	87b90036 	lh	t9,54(sp)
 8e4:	8fb80030 	lw	t8,48(sp)
 8e8:	3c014170 	lui	at,0x4170
 8ec:	00197080 	sll	t6,t9,0x2
 8f0:	01d97023 	subu	t6,t6,t9
 8f4:	000e7080 	sll	t6,t6,0x2
 8f8:	030e1021 	addu	v0,t8,t6
 8fc:	c4500908 	lwc1	$f16,2312(v0)
 900:	44816000 	mtc1	at,$f12
 904:	46100480 	add.s	$f18,$f0,$f16
 908:	e6120000 	swc1	$f18,0(s0)
 90c:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 910:	afa20024 	sw	v0,36(sp)
 914:	8fa80024 	lw	t0,36(sp)
 918:	3c014120 	lui	at,0x4120
 91c:	44816000 	mtc1	at,$f12
 920:	c504090c 	lwc1	$f4,2316(t0)
 924:	46040180 	add.s	$f6,$f0,$f4
 928:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 92c:	e6060004 	swc1	$f6,4(s0)
 930:	8fa90024 	lw	t1,36(sp)
 934:	c5280910 	lwc1	$f8,2320(t1)
 938:	46080280 	add.s	$f10,$f0,$f8
 93c:	10000027 	b	9dc <EffectSsFhgFlash_UpdateShock+0x17c>
 940:	e60a0008 	swc1	$f10,8(s0)
 944:	24010002 	li	at,2
 948:	54410025 	bnel	v0,at,9e0 <EffectSsFhgFlash_UpdateShock+0x180>
 94c:	8608005c 	lh	t0,92(s0)
 950:	8e0a003c 	lw	t2,60(s0)
 954:	3c010000 	lui	at,0x0
 958:	c42c00d4 	lwc1	$f12,212(at)
 95c:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 960:	afaa002c 	sw	t2,44(sp)
 964:	4600040d 	trunc.w.s	$f16,$f0
 968:	3c014170 	lui	at,0x4170
 96c:	44816000 	mtc1	at,$f12
 970:	440c8000 	mfc1	t4,$f16
 974:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 978:	a7ac0036 	sh	t4,54(sp)
 97c:	87af0036 	lh	t7,54(sp)
 980:	8fad002c 	lw	t5,44(sp)
 984:	3c0141a0 	lui	at,0x41a0
 988:	000fc880 	sll	t9,t7,0x2
 98c:	032fc823 	subu	t9,t9,t7
 990:	0019c880 	sll	t9,t9,0x2
 994:	01b91021 	addu	v0,t5,t9
 998:	c4520218 	lwc1	$f18,536(v0)
 99c:	44816000 	mtc1	at,$f12
 9a0:	46120100 	add.s	$f4,$f0,$f18
 9a4:	e6040000 	swc1	$f4,0(s0)
 9a8:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 9ac:	afa20024 	sw	v0,36(sp)
 9b0:	8fb80024 	lw	t8,36(sp)
 9b4:	3c014170 	lui	at,0x4170
 9b8:	44816000 	mtc1	at,$f12
 9bc:	c706021c 	lwc1	$f6,540(t8)
 9c0:	46060200 	add.s	$f8,$f0,$f6
 9c4:	0c000000 	jal	0 <EffectSsFhgFlash_Init>
 9c8:	e6080004 	swc1	$f8,4(s0)
 9cc:	8fae0024 	lw	t6,36(sp)
 9d0:	c5ca0220 	lwc1	$f10,544(t6)
 9d4:	460a0400 	add.s	$f16,$f0,$f10
 9d8:	e6100008 	swc1	$f16,8(s0)
 9dc:	8608005c 	lh	t0,92(s0)
 9e0:	29010064 	slti	at,t0,100
 9e4:	5020000a 	beqzl	at,a10 <EffectSsFhgFlash_UpdateShock+0x1b0>
 9e8:	8fbf001c 	lw	ra,28(sp)
 9ec:	86090040 	lh	t1,64(s0)
 9f0:	252affce 	addiu	t2,t1,-50
 9f4:	a60a0040 	sh	t2,64(s0)
 9f8:	860b0040 	lh	t3,64(s0)
 9fc:	05630004 	bgezl	t3,a10 <EffectSsFhgFlash_UpdateShock+0x1b0>
 a00:	8fbf001c 	lw	ra,28(sp)
 a04:	a6000040 	sh	zero,64(s0)
 a08:	a600005c 	sh	zero,92(s0)
 a0c:	8fbf001c 	lw	ra,28(sp)
 a10:	8fb00018 	lw	s0,24(sp)
 a14:	27bd0038 	addiu	sp,sp,56
 a18:	03e00008 	jr	ra
 a1c:	00000000 	nop
