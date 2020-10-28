
build/src/overlays/effects/ovl_Effect_Ss_G_Spk/z_eff_ss_g_spk.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsGSpk_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb10018 	sw	s1,24(sp)
   c:	afb00014 	sw	s0,20(sp)
  10:	afa40020 	sw	a0,32(sp)
  14:	afa50024 	sw	a1,36(sp)
  18:	00c08025 	move	s0,a2
  1c:	00e08825 	move	s1,a3
  20:	24e50004 	addiu	a1,a3,4
  24:	0c000000 	jal	0 <EffectSsGSpk_Init>
  28:	00c02025 	move	a0,a2
  2c:	2604000c 	addiu	a0,s0,12
  30:	0c000000 	jal	0 <EffectSsGSpk_Init>
  34:	26250010 	addiu	a1,s1,16
  38:	26040018 	addiu	a0,s0,24
  3c:	0c000000 	jal	0 <EffectSsGSpk_Init>
  40:	2625001c 	addiu	a1,s1,28
  44:	3c020000 	lui	v0,0x0
  48:	24420000 	addiu	v0,v0,0
  4c:	00027100 	sll	t6,v0,0x4
  50:	000e7f02 	srl	t7,t6,0x1c
  54:	000fc080 	sll	t8,t7,0x2
  58:	3c190000 	lui	t9,0x0
  5c:	0338c821 	addu	t9,t9,t8
  60:	3c0100ff 	lui	at,0xff
  64:	8f390000 	lw	t9,0(t9)
  68:	3421ffff 	ori	at,at,0xffff
  6c:	00414024 	and	t0,v0,at
  70:	3c018000 	lui	at,0x8000
  74:	03284821 	addu	t1,t9,t0
  78:	01215021 	addu	t2,t1,at
  7c:	ae0a0038 	sw	t2,56(s0)
  80:	922b0034 	lbu	t3,52(s1)
  84:	3c090000 	lui	t1,0x0
  88:	24190005 	li	t9,5
  8c:	15600016 	bnez	t3,e8 <EffectSsGSpk_Init+0xe8>
  90:	25290000 	addiu	t1,t1,0
  94:	240c000a 	li	t4,10
  98:	a60c005c 	sh	t4,92(s0)
  9c:	8e2d0000 	lw	t5,0(s1)
  a0:	c6240004 	lwc1	$f4,4(s1)
  a4:	3c180000 	lui	t8,0x0
  a8:	c5a60024 	lwc1	$f6,36(t5)
  ac:	27180000 	addiu	t8,t8,0
  b0:	46062201 	sub.s	$f8,$f4,$f6
  b4:	e608002c 	swc1	$f8,44(s0)
  b8:	8e2e0000 	lw	t6,0(s1)
  bc:	c62a0008 	lwc1	$f10,8(s1)
  c0:	c5d00028 	lwc1	$f16,40(t6)
  c4:	46105481 	sub.s	$f18,$f10,$f16
  c8:	e6120030 	swc1	$f18,48(s0)
  cc:	8e2f0000 	lw	t7,0(s1)
  d0:	c624000c 	lwc1	$f4,12(s1)
  d4:	c5e6002c 	lwc1	$f6,44(t7)
  d8:	ae180024 	sw	t8,36(s0)
  dc:	46062201 	sub.s	$f8,$f4,$f6
  e0:	10000005 	b	f8 <EffectSsGSpk_Init+0xf8>
  e4:	e6080034 	swc1	$f8,52(s0)
  e8:	3c080000 	lui	t0,0x0
  ec:	25080000 	addiu	t0,t0,0
  f0:	a619005c 	sh	t9,92(s0)
  f4:	ae080024 	sw	t0,36(s0)
  f8:	ae090028 	sw	t1,40(s0)
  fc:	922a0028 	lbu	t2,40(s1)
 100:	24020001 	li	v0,1
 104:	a60a0040 	sh	t2,64(s0)
 108:	922b0029 	lbu	t3,41(s1)
 10c:	a60b0042 	sh	t3,66(s0)
 110:	922c002a 	lbu	t4,42(s1)
 114:	a60c0044 	sh	t4,68(s0)
 118:	922d002b 	lbu	t5,43(s1)
 11c:	a60d0046 	sh	t5,70(s0)
 120:	922e002c 	lbu	t6,44(s1)
 124:	a60e0048 	sh	t6,72(s0)
 128:	922f002d 	lbu	t7,45(s1)
 12c:	a60f004a 	sh	t7,74(s0)
 130:	9238002e 	lbu	t8,46(s1)
 134:	a618004c 	sh	t8,76(s0)
 138:	9239002f 	lbu	t9,47(s1)
 13c:	a6000050 	sh	zero,80(s0)
 140:	a619004e 	sh	t9,78(s0)
 144:	86280030 	lh	t0,48(s1)
 148:	a6080052 	sh	t0,82(s0)
 14c:	86290032 	lh	t1,50(s1)
 150:	a6090054 	sh	t1,84(s0)
 154:	8e2a0000 	lw	t2,0(s1)
 158:	ae0a003c 	sw	t2,60(s0)
 15c:	8fbf001c 	lw	ra,28(sp)
 160:	8fb10018 	lw	s1,24(sp)
 164:	8fb00014 	lw	s0,20(sp)
 168:	03e00008 	jr	ra
 16c:	27bd0020 	addiu	sp,sp,32

00000170 <EffectSsGSpk_Draw>:
 170:	27bdfea0 	addiu	sp,sp,-352
 174:	afb00014 	sw	s0,20(sp)
 178:	afbf001c 	sw	ra,28(sp)
 17c:	afb10018 	sw	s1,24(sp)
 180:	afa40160 	sw	a0,352(sp)
 184:	afa50164 	sw	a1,356(sp)
 188:	8c910000 	lw	s1,0(a0)
 18c:	00c08025 	move	s0,a2
 190:	3c060000 	lui	a2,0x0
 194:	24c60000 	addiu	a2,a2,0
 198:	27a4003c 	addiu	a0,sp,60
 19c:	240700d0 	li	a3,208
 1a0:	0c000000 	jal	0 <EffectSsGSpk_Init>
 1a4:	02202825 	move	a1,s1
 1a8:	860f0052 	lh	t7,82(s0)
 1ac:	3c010000 	lui	at,0x0
 1b0:	c4280028 	lwc1	$f8,40(at)
 1b4:	448f2000 	mtc1	t7,$f4
 1b8:	8e050000 	lw	a1,0(s0)
 1bc:	8e060004 	lw	a2,4(s0)
 1c0:	468021a0 	cvt.s.w	$f6,$f4
 1c4:	8e070008 	lw	a3,8(s0)
 1c8:	27a4011c 	addiu	a0,sp,284
 1cc:	46083002 	mul.s	$f0,$f6,$f8
 1d0:	0c000000 	jal	0 <EffectSsGSpk_Init>
 1d4:	e7a00054 	swc1	$f0,84(sp)
 1d8:	c7a00054 	lwc1	$f0,84(sp)
 1dc:	27a400dc 	addiu	a0,sp,220
 1e0:	3c073f80 	lui	a3,0x3f80
 1e4:	44050000 	mfc1	a1,$f0
 1e8:	44060000 	mfc1	a2,$f0
 1ec:	0c000000 	jal	0 <EffectSsGSpk_Init>
 1f0:	00000000 	nop
 1f4:	8fa50160 	lw	a1,352(sp)
 1f8:	3c010001 	lui	at,0x1
 1fc:	34211da0 	ori	at,at,0x1da0
 200:	27a4011c 	addiu	a0,sp,284
 204:	27a6005c 	addiu	a2,sp,92
 208:	0c000000 	jal	0 <EffectSsGSpk_Init>
 20c:	00a12821 	addu	a1,a1,at
 210:	27a4005c 	addiu	a0,sp,92
 214:	27a500dc 	addiu	a1,sp,220
 218:	0c000000 	jal	0 <EffectSsGSpk_Init>
 21c:	27a6009c 	addiu	a2,sp,156
 220:	02202025 	move	a0,s1
 224:	0c000000 	jal	0 <EffectSsGSpk_Init>
 228:	27a5009c 	addiu	a1,sp,156
 22c:	1040004d 	beqz	v0,364 <EffectSsGSpk_Draw+0x1f4>
 230:	00000000 	nop
 234:	8e2302d0 	lw	v1,720(s1)
 238:	3c19da38 	lui	t9,0xda38
 23c:	37390003 	ori	t9,t9,0x3
 240:	24780008 	addiu	t8,v1,8
 244:	ae3802d0 	sw	t8,720(s1)
 248:	ac620004 	sw	v0,4(v1)
 24c:	ac790000 	sw	t9,0(v1)
 250:	8e2302d0 	lw	v1,720(s1)
 254:	3c09db06 	lui	t1,0xdb06
 258:	35290020 	ori	t1,t1,0x20
 25c:	24680008 	addiu	t0,v1,8
 260:	ae2802d0 	sw	t0,720(s1)
 264:	ac690000 	sw	t1,0(v1)
 268:	860a0050 	lh	t2,80(s0)
 26c:	3c040000 	lui	a0,0x0
 270:	3c180000 	lui	t8,0x0
 274:	000a5880 	sll	t3,t2,0x2
 278:	008b2021 	addu	a0,a0,t3
 27c:	8c840008 	lw	a0,8(a0)
 280:	3c0100ff 	lui	at,0xff
 284:	3421ffff 	ori	at,at,0xffff
 288:	00046900 	sll	t5,a0,0x4
 28c:	000d7702 	srl	t6,t5,0x1c
 290:	000e7880 	sll	t7,t6,0x2
 294:	030fc021 	addu	t8,t8,t7
 298:	8f180000 	lw	t8,0(t8)
 29c:	00816024 	and	t4,a0,at
 2a0:	3c018000 	lui	at,0x8000
 2a4:	0198c821 	addu	t9,t4,t8
 2a8:	03214021 	addu	t0,t9,at
 2ac:	02202025 	move	a0,s1
 2b0:	0c000000 	jal	0 <EffectSsGSpk_Init>
 2b4:	ac680004 	sw	t0,4(v1)
 2b8:	8e2302d0 	lw	v1,720(s1)
 2bc:	3c0afa00 	lui	t2,0xfa00
 2c0:	24690008 	addiu	t1,v1,8
 2c4:	ae2902d0 	sw	t1,720(s1)
 2c8:	ac6a0000 	sw	t2,0(v1)
 2cc:	860b0044 	lh	t3,68(s0)
 2d0:	86080042 	lh	t0,66(s0)
 2d4:	860c0040 	lh	t4,64(s0)
 2d8:	316d00ff 	andi	t5,t3,0xff
 2dc:	000d7200 	sll	t6,t5,0x8
 2e0:	310900ff 	andi	t1,t0,0xff
 2e4:	000cc600 	sll	t8,t4,0x18
 2e8:	01d8c825 	or	t9,t6,t8
 2ec:	00095400 	sll	t2,t1,0x10
 2f0:	032a5825 	or	t3,t9,t2
 2f4:	356d00ff 	ori	t5,t3,0xff
 2f8:	ac6d0004 	sw	t5,4(v1)
 2fc:	8e2302d0 	lw	v1,720(s1)
 300:	3c0cfb00 	lui	t4,0xfb00
 304:	246f0008 	addiu	t7,v1,8
 308:	ae2f02d0 	sw	t7,720(s1)
 30c:	ac6c0000 	sw	t4,0(v1)
 310:	860e004e 	lh	t6,78(s0)
 314:	860b004a 	lh	t3,74(s0)
 318:	86090048 	lh	t1,72(s0)
 31c:	31d800ff 	andi	t8,t6,0xff
 320:	860e004c 	lh	t6,76(s0)
 324:	316d00ff 	andi	t5,t3,0xff
 328:	0009ce00 	sll	t9,t1,0x18
 32c:	03195025 	or	t2,t8,t9
 330:	000d7c00 	sll	t7,t5,0x10
 334:	31c800ff 	andi	t0,t6,0xff
 338:	00084a00 	sll	t1,t0,0x8
 33c:	014f6025 	or	t4,t2,t7
 340:	0189c025 	or	t8,t4,t1
 344:	ac780004 	sw	t8,4(v1)
 348:	8e2302d0 	lw	v1,720(s1)
 34c:	3c0bde00 	lui	t3,0xde00
 350:	24790008 	addiu	t9,v1,8
 354:	ae3902d0 	sw	t9,720(s1)
 358:	ac6b0000 	sw	t3,0(v1)
 35c:	8e0d0038 	lw	t5,56(s0)
 360:	ac6d0004 	sw	t5,4(v1)
 364:	3c060000 	lui	a2,0x0
 368:	24c60014 	addiu	a2,a2,20
 36c:	27a4003c 	addiu	a0,sp,60
 370:	02202825 	move	a1,s1
 374:	0c000000 	jal	0 <EffectSsGSpk_Init>
 378:	240700ff 	li	a3,255
 37c:	8fbf001c 	lw	ra,28(sp)
 380:	8fb00014 	lw	s0,20(sp)
 384:	8fb10018 	lw	s1,24(sp)
 388:	03e00008 	jr	ra
 38c:	27bd0160 	addiu	sp,sp,352

00000390 <EffectSsGSpk_Update>:
 390:	27bdffe8 	addiu	sp,sp,-24
 394:	afbf0014 	sw	ra,20(sp)
 398:	afa40018 	sw	a0,24(sp)
 39c:	afa5001c 	sw	a1,28(sp)
 3a0:	0c000000 	jal	0 <EffectSsGSpk_Init>
 3a4:	afa60020 	sw	a2,32(sp)
 3a8:	3c013f00 	lui	at,0x3f00
 3ac:	44812000 	mtc1	at,$f4
 3b0:	3c014040 	lui	at,0x4040
 3b4:	44814000 	mtc1	at,$f8
 3b8:	46040181 	sub.s	$f6,$f0,$f4
 3bc:	8fa60020 	lw	a2,32(sp)
 3c0:	46083282 	mul.s	$f10,$f6,$f8
 3c4:	0c000000 	jal	0 <EffectSsGSpk_Init>
 3c8:	e4ca0018 	swc1	$f10,24(a2)
 3cc:	3c013f00 	lui	at,0x3f00
 3d0:	44818000 	mtc1	at,$f16
 3d4:	3c014040 	lui	at,0x4040
 3d8:	44812000 	mtc1	at,$f4
 3dc:	46100481 	sub.s	$f18,$f0,$f16
 3e0:	8fa60020 	lw	a2,32(sp)
 3e4:	46049182 	mul.s	$f6,$f18,$f4
 3e8:	8cc2003c 	lw	v0,60(a2)
 3ec:	10400014 	beqz	v0,440 <EffectSsGSpk_Update+0xb0>
 3f0:	e4c60020 	swc1	$f6,32(a2)
 3f4:	904e0002 	lbu	t6,2(v0)
 3f8:	24010003 	li	at,3
 3fc:	55c10011 	bnel	t6,at,444 <EffectSsGSpk_Update+0xb4>
 400:	84d80050 	lh	t8,80(a2)
 404:	8c4f0130 	lw	t7,304(v0)
 408:	51e0000e 	beqzl	t7,444 <EffectSsGSpk_Update+0xb4>
 40c:	84d80050 	lh	t8,80(a2)
 410:	c4480024 	lwc1	$f8,36(v0)
 414:	c4ca002c 	lwc1	$f10,44(a2)
 418:	c4c40030 	lwc1	$f4,48(a2)
 41c:	460a4400 	add.s	$f16,$f8,$f10
 420:	c4ca0034 	lwc1	$f10,52(a2)
 424:	e4d00000 	swc1	$f16,0(a2)
 428:	c4520028 	lwc1	$f18,40(v0)
 42c:	46049180 	add.s	$f6,$f18,$f4
 430:	e4c60004 	swc1	$f6,4(a2)
 434:	c448002c 	lwc1	$f8,44(v0)
 438:	460a4400 	add.s	$f16,$f8,$f10
 43c:	e4d00008 	swc1	$f16,8(a2)
 440:	84d80050 	lh	t8,80(a2)
 444:	c4d2002c 	lwc1	$f18,44(a2)
 448:	c4c40018 	lwc1	$f4,24(a2)
 44c:	c4c80034 	lwc1	$f8,52(a2)
 450:	c4ca0020 	lwc1	$f10,32(a2)
 454:	27190001 	addiu	t9,t8,1
 458:	a4d90050 	sh	t9,80(a2)
 45c:	46049180 	add.s	$f6,$f18,$f4
 460:	84c80050 	lh	t0,80(a2)
 464:	84ca0052 	lh	t2,82(a2)
 468:	460a4400 	add.s	$f16,$f8,$f10
 46c:	84cb0054 	lh	t3,84(a2)
 470:	31090003 	andi	t1,t0,0x3
 474:	e4c6002c 	swc1	$f6,44(a2)
 478:	014b6021 	addu	t4,t2,t3
 47c:	e4d00034 	swc1	$f16,52(a2)
 480:	a4c90050 	sh	t1,80(a2)
 484:	a4cc0052 	sh	t4,82(a2)
 488:	8fbf0014 	lw	ra,20(sp)
 48c:	27bd0018 	addiu	sp,sp,24
 490:	03e00008 	jr	ra
 494:	00000000 	nop

00000498 <EffectSsGSpk_UpdateNoAccel>:
 498:	27bdffe8 	addiu	sp,sp,-24
 49c:	afbf0014 	sw	ra,20(sp)
 4a0:	afa40018 	sw	a0,24(sp)
 4a4:	afa5001c 	sw	a1,28(sp)
 4a8:	8cc2003c 	lw	v0,60(a2)
 4ac:	5040001c 	beqzl	v0,520 <EffectSsGSpk_UpdateNoAccel+0x88>
 4b0:	84d90050 	lh	t9,80(a2)
 4b4:	904e0002 	lbu	t6,2(v0)
 4b8:	24010003 	li	at,3
 4bc:	55c10018 	bnel	t6,at,520 <EffectSsGSpk_UpdateNoAccel+0x88>
 4c0:	84d90050 	lh	t9,80(a2)
 4c4:	8c4f0130 	lw	t7,304(v0)
 4c8:	51e00015 	beqzl	t7,520 <EffectSsGSpk_UpdateNoAccel+0x88>
 4cc:	84d90050 	lh	t9,80(a2)
 4d0:	84440032 	lh	a0,50(v0)
 4d4:	0c000000 	jal	0 <EffectSsGSpk_Init>
 4d8:	afa60020 	sw	a2,32(sp)
 4dc:	8fa60020 	lw	a2,32(sp)
 4e0:	8cc2003c 	lw	v0,60(a2)
 4e4:	c4c40000 	lwc1	$f4,0(a2)
 4e8:	c4460068 	lwc1	$f6,104(v0)
 4ec:	46060202 	mul.s	$f8,$f0,$f6
 4f0:	46082280 	add.s	$f10,$f4,$f8
 4f4:	e4ca0000 	swc1	$f10,0(a2)
 4f8:	0c000000 	jal	0 <EffectSsGSpk_Init>
 4fc:	84440032 	lh	a0,50(v0)
 500:	8fa60020 	lw	a2,32(sp)
 504:	8cd8003c 	lw	t8,60(a2)
 508:	c4d00008 	lwc1	$f16,8(a2)
 50c:	c7120068 	lwc1	$f18,104(t8)
 510:	46120182 	mul.s	$f6,$f0,$f18
 514:	46068100 	add.s	$f4,$f16,$f6
 518:	e4c40008 	swc1	$f4,8(a2)
 51c:	84d90050 	lh	t9,80(a2)
 520:	84cb0052 	lh	t3,82(a2)
 524:	84cc0054 	lh	t4,84(a2)
 528:	27280001 	addiu	t0,t9,1
 52c:	a4c80050 	sh	t0,80(a2)
 530:	84c90050 	lh	t1,80(a2)
 534:	016c6821 	addu	t5,t3,t4
 538:	a4cd0052 	sh	t5,82(a2)
 53c:	312a0003 	andi	t2,t1,0x3
 540:	a4ca0050 	sh	t2,80(a2)
 544:	8fbf0014 	lw	ra,20(sp)
 548:	27bd0018 	addiu	sp,sp,24
 54c:	03e00008 	jr	ra
 550:	00000000 	nop
	...
