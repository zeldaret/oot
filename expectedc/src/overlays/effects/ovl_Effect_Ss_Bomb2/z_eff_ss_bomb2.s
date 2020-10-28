
build/src/overlays/effects/ovl_Effect_Ss_Bomb2/z_eff_ss_bomb2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsBomb2_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb10018 	sw	s1,24(sp)
   c:	afb00014 	sw	s0,20(sp)
  10:	afa40020 	sw	a0,32(sp)
  14:	afa50024 	sw	a1,36(sp)
  18:	00c08025 	move	s0,a2
  1c:	00e08825 	move	s1,a3
  20:	00e02825 	move	a1,a3
  24:	0c000000 	jal	0 <EffectSsBomb2_Init>
  28:	00c02025 	move	a0,a2
  2c:	2604000c 	addiu	a0,s0,12
  30:	0c000000 	jal	0 <EffectSsBomb2_Init>
  34:	2625000c 	addiu	a1,s1,12
  38:	26040018 	addiu	a0,s0,24
  3c:	0c000000 	jal	0 <EffectSsBomb2_Init>
  40:	26250018 	addiu	a1,s1,24
  44:	3c030000 	lui	v1,0x0
  48:	24630000 	addiu	v1,v1,0
  4c:	00037100 	sll	t6,v1,0x4
  50:	000e7f02 	srl	t7,t6,0x1c
  54:	000fc080 	sll	t8,t7,0x2
  58:	3c190000 	lui	t9,0x0
  5c:	0338c821 	addu	t9,t9,t8
  60:	3c0100ff 	lui	at,0xff
  64:	8f390000 	lw	t9,0(t9)
  68:	3421ffff 	ori	at,at,0xffff
  6c:	00614024 	and	t0,v1,at
  70:	3c018000 	lui	at,0x8000
  74:	3c0c0000 	lui	t4,0x0
  78:	03284821 	addu	t1,t9,t0
  7c:	01215021 	addu	t2,t1,at
  80:	240b0018 	li	t3,24
  84:	258c0000 	addiu	t4,t4,0
  88:	ae0a0038 	sw	t2,56(s0)
  8c:	a60b005c 	sh	t3,92(s0)
  90:	ae0c0024 	sw	t4,36(s0)
  94:	922d0028 	lbu	t5,40(s1)
  98:	3c0f0000 	lui	t7,0x0
  9c:	240400ff 	li	a0,255
  a0:	000d7080 	sll	t6,t5,0x2
  a4:	01ee7821 	addu	t7,t7,t6
  a8:	8def0008 	lw	t7,8(t7)
  ac:	240800c8 	li	t0,200
  b0:	24020001 	li	v0,1
  b4:	ae0f0028 	sw	t7,40(s0)
  b8:	86380024 	lh	t8,36(s1)
  bc:	a6180040 	sh	t8,64(s0)
  c0:	86390026 	lh	t9,38(s1)
  c4:	a6040044 	sh	a0,68(s0)
  c8:	a6040046 	sh	a0,70(s0)
  cc:	a6040048 	sh	a0,72(s0)
  d0:	a604004a 	sh	a0,74(s0)
  d4:	a600004c 	sh	zero,76(s0)
  d8:	a600004e 	sh	zero,78(s0)
  dc:	a6080050 	sh	t0,80(s0)
  e0:	a6190052 	sh	t9,82(s0)
  e4:	8fbf001c 	lw	ra,28(sp)
  e8:	8fb10018 	lw	s1,24(sp)
  ec:	8fb00014 	lw	s0,20(sp)
  f0:	03e00008 	jr	ra
  f4:	27bd0020 	addiu	sp,sp,32

000000f8 <EffectSsBomb2_DrawFade>:
  f8:	27bdfea0 	addiu	sp,sp,-352
  fc:	afb00014 	sw	s0,20(sp)
 100:	afbf001c 	sw	ra,28(sp)
 104:	afb10018 	sw	s1,24(sp)
 108:	afa40160 	sw	a0,352(sp)
 10c:	afa50164 	sw	a1,356(sp)
 110:	8c910000 	lw	s1,0(a0)
 114:	00c08025 	move	s0,a2
 118:	3c060000 	lui	a2,0x0
 11c:	24c60000 	addiu	a2,a2,0
 120:	27a4003c 	addiu	a0,sp,60
 124:	2407012a 	li	a3,298
 128:	0c000000 	jal	0 <EffectSsBomb2_Init>
 12c:	02202825 	move	a1,s1
 130:	860f0040 	lh	t7,64(s0)
 134:	3c010000 	lui	at,0x0
 138:	c4280064 	lwc1	$f8,100(at)
 13c:	448f2000 	mtc1	t7,$f4
 140:	8e050000 	lw	a1,0(s0)
 144:	8e060004 	lw	a2,4(s0)
 148:	468021a0 	cvt.s.w	$f6,$f4
 14c:	8e070008 	lw	a3,8(s0)
 150:	27a4011c 	addiu	a0,sp,284
 154:	46083002 	mul.s	$f0,$f6,$f8
 158:	0c000000 	jal	0 <EffectSsBomb2_Init>
 15c:	e7a00050 	swc1	$f0,80(sp)
 160:	c7a00050 	lwc1	$f0,80(sp)
 164:	27a400dc 	addiu	a0,sp,220
 168:	3c073f80 	lui	a3,0x3f80
 16c:	44050000 	mfc1	a1,$f0
 170:	44060000 	mfc1	a2,$f0
 174:	0c000000 	jal	0 <EffectSsBomb2_Init>
 178:	00000000 	nop
 17c:	8fa50160 	lw	a1,352(sp)
 180:	3c010001 	lui	at,0x1
 184:	34211da0 	ori	at,at,0x1da0
 188:	27a4011c 	addiu	a0,sp,284
 18c:	27a6005c 	addiu	a2,sp,92
 190:	0c000000 	jal	0 <EffectSsBomb2_Init>
 194:	00a12821 	addu	a1,a1,at
 198:	27a4005c 	addiu	a0,sp,92
 19c:	27a500dc 	addiu	a1,sp,220
 1a0:	0c000000 	jal	0 <EffectSsBomb2_Init>
 1a4:	27a6009c 	addiu	a2,sp,156
 1a8:	02202025 	move	a0,s1
 1ac:	0c000000 	jal	0 <EffectSsBomb2_Init>
 1b0:	27a5009c 	addiu	a1,sp,156
 1b4:	1040004b 	beqz	v0,2e4 <EffectSsBomb2_DrawFade+0x1ec>
 1b8:	3c19da38 	lui	t9,0xda38
 1bc:	8e2302d0 	lw	v1,720(s1)
 1c0:	37390003 	ori	t9,t9,0x3
 1c4:	02202025 	move	a0,s1
 1c8:	24780008 	addiu	t8,v1,8
 1cc:	ae3802d0 	sw	t8,720(s1)
 1d0:	ac620004 	sw	v0,4(v1)
 1d4:	0c000000 	jal	0 <EffectSsBomb2_Init>
 1d8:	ac790000 	sw	t9,0(v1)
 1dc:	8e2302d0 	lw	v1,720(s1)
 1e0:	3c09fa00 	lui	t1,0xfa00
 1e4:	3c040000 	lui	a0,0x0
 1e8:	24680008 	addiu	t0,v1,8
 1ec:	ae2802d0 	sw	t0,720(s1)
 1f0:	ac690000 	sw	t1,0(v1)
 1f4:	860a004a 	lh	t2,74(s0)
 1f8:	86180046 	lh	t8,70(s0)
 1fc:	860d0044 	lh	t5,68(s0)
 200:	314b00ff 	andi	t3,t2,0xff
 204:	860a0048 	lh	t2,72(s0)
 208:	331900ff 	andi	t9,t8,0xff
 20c:	000d7600 	sll	t6,t5,0x18
 210:	016e7825 	or	t7,t3,t6
 214:	00194400 	sll	t0,t9,0x10
 218:	314c00ff 	andi	t4,t2,0xff
 21c:	000c6a00 	sll	t5,t4,0x8
 220:	01e84825 	or	t1,t7,t0
 224:	012d5825 	or	t3,t1,t5
 228:	ac6b0004 	sw	t3,4(v1)
 22c:	8e2302d0 	lw	v1,720(s1)
 230:	3c18fb00 	lui	t8,0xfb00
 234:	3c0adb06 	lui	t2,0xdb06
 238:	246e0008 	addiu	t6,v1,8
 23c:	ae2e02d0 	sw	t6,720(s1)
 240:	ac780000 	sw	t8,0(v1)
 244:	86190050 	lh	t9,80(s0)
 248:	860b004e 	lh	t3,78(s0)
 24c:	860c004c 	lh	t4,76(s0)
 250:	332f00ff 	andi	t7,t9,0xff
 254:	000f4200 	sll	t0,t7,0x8
 258:	316e00ff 	andi	t6,t3,0xff
 25c:	000c4e00 	sll	t1,t4,0x18
 260:	01096825 	or	t5,t0,t1
 264:	000ec400 	sll	t8,t6,0x10
 268:	01b8c825 	or	t9,t5,t8
 26c:	ac790004 	sw	t9,4(v1)
 270:	8e2302d0 	lw	v1,720(s1)
 274:	354a0020 	ori	t2,t2,0x20
 278:	3c180000 	lui	t8,0x0
 27c:	246f0008 	addiu	t7,v1,8
 280:	ae2f02d0 	sw	t7,720(s1)
 284:	ac6a0000 	sw	t2,0(v1)
 288:	860c0042 	lh	t4,66(s0)
 28c:	3c0100ff 	lui	at,0xff
 290:	3421ffff 	ori	at,at,0xffff
 294:	000c4080 	sll	t0,t4,0x2
 298:	00882021 	addu	a0,a0,t0
 29c:	8c840010 	lw	a0,16(a0)
 2a0:	3c0cde00 	lui	t4,0xde00
 2a4:	00045900 	sll	t3,a0,0x4
 2a8:	000b7702 	srl	t6,t3,0x1c
 2ac:	000e6880 	sll	t5,t6,0x2
 2b0:	030dc021 	addu	t8,t8,t5
 2b4:	8f180000 	lw	t8,0(t8)
 2b8:	00814824 	and	t1,a0,at
 2bc:	3c018000 	lui	at,0x8000
 2c0:	0138c821 	addu	t9,t1,t8
 2c4:	03217821 	addu	t7,t9,at
 2c8:	ac6f0004 	sw	t7,4(v1)
 2cc:	8e2302d0 	lw	v1,720(s1)
 2d0:	246a0008 	addiu	t2,v1,8
 2d4:	ae2a02d0 	sw	t2,720(s1)
 2d8:	ac6c0000 	sw	t4,0(v1)
 2dc:	8e080038 	lw	t0,56(s0)
 2e0:	ac680004 	sw	t0,4(v1)
 2e4:	3c060000 	lui	a2,0x0
 2e8:	24c60014 	addiu	a2,a2,20
 2ec:	27a4003c 	addiu	a0,sp,60
 2f0:	02202825 	move	a1,s1
 2f4:	0c000000 	jal	0 <EffectSsBomb2_Init>
 2f8:	24070159 	li	a3,345
 2fc:	8fbf001c 	lw	ra,28(sp)
 300:	8fb00014 	lw	s0,20(sp)
 304:	8fb10018 	lw	s1,24(sp)
 308:	03e00008 	jr	ra
 30c:	27bd0160 	addiu	sp,sp,352

00000310 <EffectSsBomb2_DrawLayered>:
 310:	27bdfe08 	addiu	sp,sp,-504
 314:	afb40040 	sw	s4,64(sp)
 318:	afbf004c 	sw	ra,76(sp)
 31c:	afb60048 	sw	s6,72(sp)
 320:	afb50044 	sw	s5,68(sp)
 324:	afb3003c 	sw	s3,60(sp)
 328:	afb20038 	sw	s2,56(sp)
 32c:	afb10034 	sw	s1,52(sp)
 330:	afb00030 	sw	s0,48(sp)
 334:	f7b80028 	sdc1	$f24,40(sp)
 338:	f7b60020 	sdc1	$f22,32(sp)
 33c:	f7b40018 	sdc1	$f20,24(sp)
 340:	afa501fc 	sw	a1,508(sp)
 344:	8c920000 	lw	s2,0(a0)
 348:	00c0a025 	move	s4,a2
 34c:	0080b025 	move	s6,a0
 350:	3c010000 	lui	at,0x0
 354:	3c060000 	lui	a2,0x0
 358:	c4360068 	lwc1	$f22,104(at)
 35c:	24c60028 	addiu	a2,a2,40
 360:	27a4007c 	addiu	a0,sp,124
 364:	24070182 	li	a3,386
 368:	0c000000 	jal	0 <EffectSsBomb2_Init>
 36c:	02402825 	move	a1,s2
 370:	868f0040 	lh	t7,64(s4)
 374:	868e0054 	lh	t6,84(s4)
 378:	3c010000 	lui	at,0x0
 37c:	448f9000 	mtc1	t7,$f18
 380:	c430006c 	lwc1	$f16,108(at)
 384:	448e7000 	mtc1	t6,$f14
 388:	468094a0 	cvt.s.w	$f18,$f18
 38c:	27b001b4 	addiu	s0,sp,436
 390:	02002025 	move	a0,s0
 394:	8e850000 	lw	a1,0(s4)
 398:	8e860004 	lw	a2,4(s4)
 39c:	46807620 	cvt.s.w	$f24,$f14
 3a0:	46109502 	mul.s	$f20,$f18,$f16
 3a4:	0c000000 	jal	0 <EffectSsBomb2_Init>
 3a8:	8e870008 	lw	a3,8(s4)
 3ac:	27b10174 	addiu	s1,sp,372
 3b0:	4405a000 	mfc1	a1,$f20
 3b4:	4406a000 	mfc1	a2,$f20
 3b8:	02202025 	move	a0,s1
 3bc:	0c000000 	jal	0 <EffectSsBomb2_Init>
 3c0:	3c073f80 	lui	a3,0x3f80
 3c4:	3c010001 	lui	at,0x1
 3c8:	27b300f4 	addiu	s3,sp,244
 3cc:	34211da0 	ori	at,at,0x1da0
 3d0:	02c12821 	addu	a1,s6,at
 3d4:	02603025 	move	a2,s3
 3d8:	0c000000 	jal	0 <EffectSsBomb2_Init>
 3dc:	02002025 	move	a0,s0
 3e0:	27b00134 	addiu	s0,sp,308
 3e4:	02003025 	move	a2,s0
 3e8:	02602025 	move	a0,s3
 3ec:	0c000000 	jal	0 <EffectSsBomb2_Init>
 3f0:	02202825 	move	a1,s1
 3f4:	02402025 	move	a0,s2
 3f8:	0c000000 	jal	0 <EffectSsBomb2_Init>
 3fc:	02002825 	move	a1,s0
 400:	1040008b 	beqz	v0,630 <EffectSsBomb2_DrawLayered+0x320>
 404:	3c19da38 	lui	t9,0xda38
 408:	8e4302d0 	lw	v1,720(s2)
 40c:	37390003 	ori	t9,t9,0x3
 410:	02402025 	move	a0,s2
 414:	24780008 	addiu	t8,v1,8
 418:	ae5802d0 	sw	t8,720(s2)
 41c:	02002825 	move	a1,s0
 420:	ac620004 	sw	v0,4(v1)
 424:	0c000000 	jal	0 <EffectSsBomb2_Init>
 428:	ac790000 	sw	t9,0(v1)
 42c:	10400080 	beqz	v0,630 <EffectSsBomb2_DrawLayered+0x320>
 430:	00408025 	move	s0,v0
 434:	0c000000 	jal	0 <EffectSsBomb2_Init>
 438:	02402025 	move	a0,s2
 43c:	8e4302d0 	lw	v1,720(s2)
 440:	3c09fa00 	lui	t1,0xfa00
 444:	3c040000 	lui	a0,0x0
 448:	24680008 	addiu	t0,v1,8
 44c:	ae4802d0 	sw	t0,720(s2)
 450:	ac690000 	sw	t1,0(v1)
 454:	868a004a 	lh	t2,74(s4)
 458:	86980046 	lh	t8,70(s4)
 45c:	868d0044 	lh	t5,68(s4)
 460:	314b00ff 	andi	t3,t2,0xff
 464:	868a0048 	lh	t2,72(s4)
 468:	331900ff 	andi	t9,t8,0xff
 46c:	000d7600 	sll	t6,t5,0x18
 470:	016e7825 	or	t7,t3,t6
 474:	00194400 	sll	t0,t9,0x10
 478:	314c00ff 	andi	t4,t2,0xff
 47c:	000c6a00 	sll	t5,t4,0x8
 480:	01e84825 	or	t1,t7,t0
 484:	012d5825 	or	t3,t1,t5
 488:	ac6b0004 	sw	t3,4(v1)
 48c:	8e4302d0 	lw	v1,720(s2)
 490:	3c18fb00 	lui	t8,0xfb00
 494:	3c0adb06 	lui	t2,0xdb06
 498:	246e0008 	addiu	t6,v1,8
 49c:	ae4e02d0 	sw	t6,720(s2)
 4a0:	ac780000 	sw	t8,0(v1)
 4a4:	86990050 	lh	t9,80(s4)
 4a8:	868b004e 	lh	t3,78(s4)
 4ac:	868c004c 	lh	t4,76(s4)
 4b0:	332f00ff 	andi	t7,t9,0xff
 4b4:	000f4200 	sll	t0,t7,0x8
 4b8:	316e00ff 	andi	t6,t3,0xff
 4bc:	000c4e00 	sll	t1,t4,0x18
 4c0:	01096825 	or	t5,t0,t1
 4c4:	000ec400 	sll	t8,t6,0x10
 4c8:	01b8c825 	or	t9,t5,t8
 4cc:	ac790004 	sw	t9,4(v1)
 4d0:	8e4302d0 	lw	v1,720(s2)
 4d4:	354a0020 	ori	t2,t2,0x20
 4d8:	3c180000 	lui	t8,0x0
 4dc:	246f0008 	addiu	t7,v1,8
 4e0:	ae4f02d0 	sw	t7,720(s2)
 4e4:	ac6a0000 	sw	t2,0(v1)
 4e8:	868c0042 	lh	t4,66(s4)
 4ec:	3c0100ff 	lui	at,0xff
 4f0:	3421ffff 	ori	at,at,0xffff
 4f4:	000c4080 	sll	t0,t4,0x2
 4f8:	00882021 	addu	a0,a0,t0
 4fc:	8c840030 	lw	a0,48(a0)
 500:	3c0c0000 	lui	t4,0x0
 504:	258c0000 	addiu	t4,t4,0
 508:	00045900 	sll	t3,a0,0x4
 50c:	000b7702 	srl	t6,t3,0x1c
 510:	000e6880 	sll	t5,t6,0x2
 514:	030dc021 	addu	t8,t8,t5
 518:	8f180000 	lw	t8,0(t8)
 51c:	00814824 	and	t1,a0,at
 520:	3c018000 	lui	at,0x8000
 524:	0138c821 	addu	t9,t1,t8
 528:	03217821 	addu	t7,t9,at
 52c:	ac6f0004 	sw	t7,4(v1)
 530:	8e4302d0 	lw	v1,720(s2)
 534:	3c15de00 	lui	s5,0xde00
 538:	3c130000 	lui	s3,0x0
 53c:	246a0008 	addiu	t2,v1,8
 540:	ae4a02d0 	sw	t2,720(s2)
 544:	ac6c0004 	sw	t4,4(v1)
 548:	ac750000 	sw	s5,0(v1)
 54c:	8e4302d0 	lw	v1,720(s2)
 550:	26730000 	addiu	s3,s3,0
 554:	27b100b4 	addiu	s1,sp,180
 558:	24680008 	addiu	t0,v1,8
 55c:	ae4802d0 	sw	t0,720(s2)
 560:	02202825 	move	a1,s1
 564:	02002025 	move	a0,s0
 568:	ac730004 	sw	s3,4(v1)
 56c:	0c000000 	jal	0 <EffectSsBomb2_Init>
 570:	ac750000 	sw	s5,0(v1)
 574:	0c000000 	jal	0 <EffectSsBomb2_Init>
 578:	02202025 	move	a0,s1
 57c:	4480a000 	mtc1	zero,$f20
 580:	24110001 	li	s1,1
 584:	4406c000 	mfc1	a2,$f24
 588:	4600a306 	mov.s	$f12,$f20
 58c:	4600a386 	mov.s	$f14,$f20
 590:	0c000000 	jal	0 <EffectSsBomb2_Init>
 594:	24070001 	li	a3,1
 598:	868b005c 	lh	t3,92(s4)
 59c:	3c010000 	lui	at,0x0
 5a0:	c4240070 	lwc1	$f4,112(at)
 5a4:	448b8000 	mtc1	t3,$f16
 5a8:	3c014334 	lui	at,0x4334
 5ac:	44814000 	mtc1	at,$f8
 5b0:	468084a0 	cvt.s.w	$f18,$f16
 5b4:	24050001 	li	a1,1
 5b8:	46049182 	mul.s	$f6,$f18,$f4
 5bc:	0c000000 	jal	0 <EffectSsBomb2_Init>
 5c0:	46083300 	add.s	$f12,$f6,$f8
 5c4:	4406b000 	mfc1	a2,$f22
 5c8:	4600b306 	mov.s	$f12,$f22
 5cc:	4600b386 	mov.s	$f14,$f22
 5d0:	0c000000 	jal	0 <EffectSsBomb2_Init>
 5d4:	24070001 	li	a3,1
 5d8:	8e5002d0 	lw	s0,720(s2)
 5dc:	3c0dda38 	lui	t5,0xda38
 5e0:	35ad0003 	ori	t5,t5,0x3
 5e4:	260e0008 	addiu	t6,s0,8
 5e8:	ae4e02d0 	sw	t6,720(s2)
 5ec:	3c050000 	lui	a1,0x0
 5f0:	ae0d0000 	sw	t5,0(s0)
 5f4:	8ec40000 	lw	a0,0(s6)
 5f8:	24a5003c 	addiu	a1,a1,60
 5fc:	0c000000 	jal	0 <EffectSsBomb2_Init>
 600:	240601c0 	li	a2,448
 604:	ae020004 	sw	v0,4(s0)
 608:	8e4302d0 	lw	v1,720(s2)
 60c:	3c010000 	lui	at,0x0
 610:	2631ffff 	addiu	s1,s1,-1
 614:	24690008 	addiu	t1,v1,8
 618:	ae4902d0 	sw	t1,720(s2)
 61c:	ac730004 	sw	s3,4(v1)
 620:	ac750000 	sw	s5,0(v1)
 624:	c42a0074 	lwc1	$f10,116(at)
 628:	0621ffd6 	bgez	s1,584 <EffectSsBomb2_DrawLayered+0x274>
 62c:	460ab581 	sub.s	$f22,$f22,$f10
 630:	3c060000 	lui	a2,0x0
 634:	24c60050 	addiu	a2,a2,80
 638:	27a4007c 	addiu	a0,sp,124
 63c:	02402825 	move	a1,s2
 640:	0c000000 	jal	0 <EffectSsBomb2_Init>
 644:	240701c8 	li	a3,456
 648:	8fbf004c 	lw	ra,76(sp)
 64c:	d7b40018 	ldc1	$f20,24(sp)
 650:	d7b60020 	ldc1	$f22,32(sp)
 654:	d7b80028 	ldc1	$f24,40(sp)
 658:	8fb00030 	lw	s0,48(sp)
 65c:	8fb10034 	lw	s1,52(sp)
 660:	8fb20038 	lw	s2,56(sp)
 664:	8fb3003c 	lw	s3,60(sp)
 668:	8fb40040 	lw	s4,64(sp)
 66c:	8fb50044 	lw	s5,68(sp)
 670:	8fb60048 	lw	s6,72(sp)
 674:	03e00008 	jr	ra
 678:	27bd01f8 	addiu	sp,sp,504

0000067c <EffectSsBomb2_Update>:
 67c:	27bdffe0 	addiu	sp,sp,-32
 680:	afbf001c 	sw	ra,28(sp)
 684:	afb10018 	sw	s1,24(sp)
 688:	afb00014 	sw	s0,20(sp)
 68c:	afa40020 	sw	a0,32(sp)
 690:	afa50024 	sw	a1,36(sp)
 694:	84ce005c 	lh	t6,92(a2)
 698:	240f0017 	li	t7,23
 69c:	24010003 	li	at,3
 6a0:	01eec023 	subu	t8,t7,t6
 6a4:	0301001a 	div	zero,t8,at
 6a8:	84c80040 	lh	t0,64(a2)
 6ac:	84c20052 	lh	v0,82(a2)
 6b0:	0000c812 	mflo	t9
 6b4:	2401001e 	li	at,30
 6b8:	01024821 	addu	t1,t0,v0
 6bc:	00c08025 	move	s0,a2
 6c0:	a4d90042 	sh	t9,66(a2)
 6c4:	1441000c 	bne	v0,at,6f8 <EffectSsBomb2_Update+0x7c>
 6c8:	a4c90040 	sh	t1,64(a2)
 6cc:	84ca0054 	lh	t2,84(a2)
 6d0:	3c014080 	lui	at,0x4080
 6d4:	44814000 	mtc1	at,$f8
 6d8:	448a2000 	mtc1	t2,$f4
 6dc:	00000000 	nop
 6e0:	468021a0 	cvt.s.w	$f6,$f4
 6e4:	46083280 	add.s	$f10,$f6,$f8
 6e8:	4600540d 	trunc.w.s	$f16,$f10
 6ec:	440c8000 	mfc1	t4,$f16
 6f0:	1000000c 	b	724 <EffectSsBomb2_Update+0xa8>
 6f4:	a4cc0054 	sh	t4,84(a2)
 6f8:	860d0054 	lh	t5,84(s0)
 6fc:	3c014000 	lui	at,0x4000
 700:	44813000 	mtc1	at,$f6
 704:	448d9000 	mtc1	t5,$f18
 708:	00000000 	nop
 70c:	46809120 	cvt.s.w	$f4,$f18
 710:	46062200 	add.s	$f8,$f4,$f6
 714:	4600428d 	trunc.w.s	$f10,$f8
 718:	440e5000 	mfc1	t6,$f10
 71c:	00000000 	nop
 720:	a60e0054 	sh	t6,84(s0)
 724:	8602005c 	lh	v0,92(s0)
 728:	28410017 	slti	at,v0,23
 72c:	10200027 	beqz	at,7cc <EffectSsBomb2_Update+0x150>
 730:	2841000e 	slti	at,v0,14
 734:	14200025 	bnez	at,7cc <EffectSsBomb2_Update+0x150>
 738:	2451fff3 	addiu	s1,v0,-13
 73c:	86040044 	lh	a0,68(s0)
 740:	240500ff 	li	a1,255
 744:	0c000000 	jal	0 <EffectSsBomb2_Init>
 748:	02203025 	move	a2,s1
 74c:	a6020044 	sh	v0,68(s0)
 750:	86040046 	lh	a0,70(s0)
 754:	240500ff 	li	a1,255
 758:	0c000000 	jal	0 <EffectSsBomb2_Init>
 75c:	02203025 	move	a2,s1
 760:	a6020046 	sh	v0,70(s0)
 764:	86040048 	lh	a0,72(s0)
 768:	24050096 	li	a1,150
 76c:	0c000000 	jal	0 <EffectSsBomb2_Init>
 770:	02203025 	move	a2,s1
 774:	a6020048 	sh	v0,72(s0)
 778:	8604004a 	lh	a0,74(s0)
 77c:	240500ff 	li	a1,255
 780:	0c000000 	jal	0 <EffectSsBomb2_Init>
 784:	02203025 	move	a2,s1
 788:	a602004a 	sh	v0,74(s0)
 78c:	8604004c 	lh	a0,76(s0)
 790:	24050096 	li	a1,150
 794:	0c000000 	jal	0 <EffectSsBomb2_Init>
 798:	02203025 	move	a2,s1
 79c:	a602004c 	sh	v0,76(s0)
 7a0:	8604004e 	lh	a0,78(s0)
 7a4:	00002825 	move	a1,zero
 7a8:	0c000000 	jal	0 <EffectSsBomb2_Init>
 7ac:	02203025 	move	a2,s1
 7b0:	a602004e 	sh	v0,78(s0)
 7b4:	86040050 	lh	a0,80(s0)
 7b8:	00002825 	move	a1,zero
 7bc:	0c000000 	jal	0 <EffectSsBomb2_Init>
 7c0:	02203025 	move	a2,s1
 7c4:	10000029 	b	86c <EffectSsBomb2_Update+0x1f0>
 7c8:	a6020050 	sh	v0,80(s0)
 7cc:	2841000e 	slti	at,v0,14
 7d0:	50200027 	beqzl	at,870 <EffectSsBomb2_Update+0x1f4>
 7d4:	8fbf001c 	lw	ra,28(sp)
 7d8:	04400024 	bltz	v0,86c <EffectSsBomb2_Update+0x1f0>
 7dc:	24510001 	addiu	s1,v0,1
 7e0:	86040044 	lh	a0,68(s0)
 7e4:	24050032 	li	a1,50
 7e8:	0c000000 	jal	0 <EffectSsBomb2_Init>
 7ec:	02203025 	move	a2,s1
 7f0:	a6020044 	sh	v0,68(s0)
 7f4:	86040046 	lh	a0,70(s0)
 7f8:	24050032 	li	a1,50
 7fc:	0c000000 	jal	0 <EffectSsBomb2_Init>
 800:	02203025 	move	a2,s1
 804:	a6020046 	sh	v0,70(s0)
 808:	86040048 	lh	a0,72(s0)
 80c:	24050032 	li	a1,50
 810:	0c000000 	jal	0 <EffectSsBomb2_Init>
 814:	02203025 	move	a2,s1
 818:	a6020048 	sh	v0,72(s0)
 81c:	8604004a 	lh	a0,74(s0)
 820:	24050096 	li	a1,150
 824:	0c000000 	jal	0 <EffectSsBomb2_Init>
 828:	02203025 	move	a2,s1
 82c:	a602004a 	sh	v0,74(s0)
 830:	8604004c 	lh	a0,76(s0)
 834:	2405000a 	li	a1,10
 838:	0c000000 	jal	0 <EffectSsBomb2_Init>
 83c:	02203025 	move	a2,s1
 840:	a602004c 	sh	v0,76(s0)
 844:	8604004e 	lh	a0,78(s0)
 848:	2405000a 	li	a1,10
 84c:	0c000000 	jal	0 <EffectSsBomb2_Init>
 850:	02203025 	move	a2,s1
 854:	a602004e 	sh	v0,78(s0)
 858:	86040050 	lh	a0,80(s0)
 85c:	2405000a 	li	a1,10
 860:	0c000000 	jal	0 <EffectSsBomb2_Init>
 864:	02203025 	move	a2,s1
 868:	a6020050 	sh	v0,80(s0)
 86c:	8fbf001c 	lw	ra,28(sp)
 870:	8fb00014 	lw	s0,20(sp)
 874:	8fb10018 	lw	s1,24(sp)
 878:	03e00008 	jr	ra
 87c:	27bd0020 	addiu	sp,sp,32
