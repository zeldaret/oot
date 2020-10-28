
build/src/overlays/effects/ovl_Effect_Ss_Dust/z_eff_ss_dust.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsDust_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb10018 	sw	s1,24(sp)
   c:	afb00014 	sw	s0,20(sp)
  10:	afa40020 	sw	a0,32(sp)
  14:	afa50024 	sw	a1,36(sp)
  18:	00c08025 	move	s0,a2
  1c:	00e08825 	move	s1,a3
  20:	00e02825 	move	a1,a3
  24:	0c000000 	jal	0 <EffectSsDust_Init>
  28:	00c02025 	move	a0,a2
  2c:	2604000c 	addiu	a0,s0,12
  30:	0c000000 	jal	0 <EffectSsDust_Init>
  34:	2625000c 	addiu	a1,s1,12
  38:	26040018 	addiu	a0,s0,24
  3c:	0c000000 	jal	0 <EffectSsDust_Init>
  40:	26250018 	addiu	a1,s1,24
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
  80:	862b0030 	lh	t3,48(s1)
  84:	3c0e0000 	lui	t6,0x0
  88:	3c0f0000 	lui	t7,0x0
  8c:	a60b005c 	sh	t3,92(s0)
  90:	922c0034 	lbu	t4,52(s1)
  94:	25ef0000 	addiu	t7,t7,0
  98:	000c6880 	sll	t5,t4,0x2
  9c:	01cd7021 	addu	t6,t6,t5
  a0:	8dce0008 	lw	t6,8(t6)
  a4:	ae0f0028 	sw	t7,40(s0)
  a8:	ae0e0024 	sw	t6,36(s0)
  ac:	96380032 	lhu	t8,50(s1)
  b0:	33190004 	andi	t9,t8,0x4
  b4:	53200020 	beqzl	t9,138 <EffectSsDust_Init+0x138>
  b8:	922b0024 	lbu	t3,36(s1)
  bc:	0c000000 	jal	0 <EffectSsDust_Init>
  c0:	00000000 	nop
  c4:	3c0141a0 	lui	at,0x41a0
  c8:	44812000 	mtc1	at,$f4
  cc:	3c014120 	lui	at,0x4120
  d0:	44814000 	mtc1	at,$f8
  d4:	46040182 	mul.s	$f6,$f0,$f4
  d8:	92290024 	lbu	t1,36(s1)
  dc:	46083281 	sub.s	$f10,$f6,$f8
  e0:	4600540d 	trunc.w.s	$f16,$f10
  e4:	44028000 	mfc1	v0,$f16
  e8:	00000000 	nop
  ec:	01225021 	addu	t2,t1,v0
  f0:	a60a0040 	sh	t2,64(s0)
  f4:	922b0025 	lbu	t3,37(s1)
  f8:	01626021 	addu	t4,t3,v0
  fc:	a60c0042 	sh	t4,66(s0)
 100:	922d0026 	lbu	t5,38(s1)
 104:	01a27021 	addu	t6,t5,v0
 108:	a60e0044 	sh	t6,68(s0)
 10c:	922f0028 	lbu	t7,40(s1)
 110:	01e2c021 	addu	t8,t7,v0
 114:	a6180048 	sh	t8,72(s0)
 118:	92390029 	lbu	t9,41(s1)
 11c:	03224021 	addu	t0,t9,v0
 120:	a608004a 	sh	t0,74(s0)
 124:	9229002a 	lbu	t1,42(s1)
 128:	01225021 	addu	t2,t1,v0
 12c:	1000000d 	b	164 <EffectSsDust_Init+0x164>
 130:	a60a004c 	sh	t2,76(s0)
 134:	922b0024 	lbu	t3,36(s1)
 138:	a60b0040 	sh	t3,64(s0)
 13c:	922c0025 	lbu	t4,37(s1)
 140:	a60c0042 	sh	t4,66(s0)
 144:	922d0026 	lbu	t5,38(s1)
 148:	a60d0044 	sh	t5,68(s0)
 14c:	922e0028 	lbu	t6,40(s1)
 150:	a60e0048 	sh	t6,72(s0)
 154:	922f0029 	lbu	t7,41(s1)
 158:	a60f004a 	sh	t7,74(s0)
 15c:	9238002a 	lbu	t8,42(s1)
 160:	a618004c 	sh	t8,76(s0)
 164:	92390027 	lbu	t9,39(s1)
 168:	24020001 	li	v0,1
 16c:	a6190046 	sh	t9,70(s0)
 170:	9228002b 	lbu	t0,43(s1)
 174:	a6000050 	sh	zero,80(s0)
 178:	a608004e 	sh	t0,78(s0)
 17c:	8629002c 	lh	t1,44(s1)
 180:	a6090052 	sh	t1,82(s0)
 184:	862a002e 	lh	t2,46(s1)
 188:	a60a0054 	sh	t2,84(s0)
 18c:	862b0030 	lh	t3,48(s1)
 190:	a60b0058 	sh	t3,88(s0)
 194:	962c0032 	lhu	t4,50(s1)
 198:	a60c0056 	sh	t4,86(s0)
 19c:	8fbf001c 	lw	ra,28(sp)
 1a0:	8fb10018 	lw	s1,24(sp)
 1a4:	8fb00014 	lw	s0,20(sp)
 1a8:	03e00008 	jr	ra
 1ac:	27bd0020 	addiu	sp,sp,32

000001b0 <EffectSsDust_Draw>:
 1b0:	27bdfe78 	addiu	sp,sp,-392
 1b4:	afb10018 	sw	s1,24(sp)
 1b8:	afbf001c 	sw	ra,28(sp)
 1bc:	afb00014 	sw	s0,20(sp)
 1c0:	afa40188 	sw	a0,392(sp)
 1c4:	afa5018c 	sw	a1,396(sp)
 1c8:	8c900000 	lw	s0,0(a0)
 1cc:	00c08825 	move	s1,a2
 1d0:	3c060000 	lui	a2,0x0
 1d4:	24c60000 	addiu	a2,a2,0
 1d8:	27a40064 	addiu	a0,sp,100
 1dc:	24070141 	li	a3,321
 1e0:	0c000000 	jal	0 <EffectSsDust_Init>
 1e4:	02002825 	move	a1,s0
 1e8:	862f0052 	lh	t7,82(s1)
 1ec:	3c010000 	lui	at,0x0
 1f0:	c4280028 	lwc1	$f8,40(at)
 1f4:	448f2000 	mtc1	t7,$f4
 1f8:	8e250000 	lw	a1,0(s1)
 1fc:	8e260004 	lw	a2,4(s1)
 200:	468021a0 	cvt.s.w	$f6,$f4
 204:	8e270008 	lw	a3,8(s1)
 208:	27a40144 	addiu	a0,sp,324
 20c:	46083002 	mul.s	$f0,$f6,$f8
 210:	0c000000 	jal	0 <EffectSsDust_Init>
 214:	e7a00078 	swc1	$f0,120(sp)
 218:	c7a00078 	lwc1	$f0,120(sp)
 21c:	27a40104 	addiu	a0,sp,260
 220:	3c073f80 	lui	a3,0x3f80
 224:	44050000 	mfc1	a1,$f0
 228:	44060000 	mfc1	a2,$f0
 22c:	0c000000 	jal	0 <EffectSsDust_Init>
 230:	00000000 	nop
 234:	8fa50188 	lw	a1,392(sp)
 238:	3c010001 	lui	at,0x1
 23c:	34211da0 	ori	at,at,0x1da0
 240:	27a40144 	addiu	a0,sp,324
 244:	27a60084 	addiu	a2,sp,132
 248:	0c000000 	jal	0 <EffectSsDust_Init>
 24c:	00a12821 	addu	a1,a1,at
 250:	27a40084 	addiu	a0,sp,132
 254:	27a50104 	addiu	a1,sp,260
 258:	0c000000 	jal	0 <EffectSsDust_Init>
 25c:	27a600c4 	addiu	a2,sp,196
 260:	8e0302d0 	lw	v1,720(s0)
 264:	3c19da38 	lui	t9,0xda38
 268:	3c080000 	lui	t0,0x0
 26c:	24780008 	addiu	t8,v1,8
 270:	ae1802d0 	sw	t8,720(s0)
 274:	25080000 	addiu	t0,t0,0
 278:	37390003 	ori	t9,t9,0x3
 27c:	02002025 	move	a0,s0
 280:	27a500c4 	addiu	a1,sp,196
 284:	ac790000 	sw	t9,0(v1)
 288:	0c000000 	jal	0 <EffectSsDust_Init>
 28c:	ac680004 	sw	t0,4(v1)
 290:	10400098 	beqz	v0,4f4 <EffectSsDust_Draw+0x344>
 294:	00000000 	nop
 298:	8e0302d0 	lw	v1,720(s0)
 29c:	3c0ada38 	lui	t2,0xda38
 2a0:	354a0003 	ori	t2,t2,0x3
 2a4:	24690008 	addiu	t1,v1,8
 2a8:	ae0902d0 	sw	t1,720(s0)
 2ac:	ac620004 	sw	v0,4(v1)
 2b0:	ac6a0000 	sw	t2,0(v1)
 2b4:	8e0302d0 	lw	v1,720(s0)
 2b8:	3c06e700 	lui	a2,0xe700
 2bc:	3c0ddb06 	lui	t5,0xdb06
 2c0:	246b0008 	addiu	t3,v1,8
 2c4:	ae0b02d0 	sw	t3,720(s0)
 2c8:	ac600004 	sw	zero,4(v1)
 2cc:	ac660000 	sw	a2,0(v1)
 2d0:	8e0302d0 	lw	v1,720(s0)
 2d4:	35ad0020 	ori	t5,t5,0x20
 2d8:	3c040000 	lui	a0,0x0
 2dc:	246c0008 	addiu	t4,v1,8
 2e0:	ae0c02d0 	sw	t4,720(s0)
 2e4:	ac6d0000 	sw	t5,0(v1)
 2e8:	862e0050 	lh	t6,80(s1)
 2ec:	3c0a0000 	lui	t2,0x0
 2f0:	3c0100ff 	lui	at,0xff
 2f4:	000e7880 	sll	t7,t6,0x2
 2f8:	008f2021 	addu	a0,a0,t7
 2fc:	8c840010 	lw	a0,16(a0)
 300:	3421ffff 	ori	at,at,0xffff
 304:	00002825 	move	a1,zero
 308:	0004c900 	sll	t9,a0,0x4
 30c:	00194702 	srl	t0,t9,0x1c
 310:	00084880 	sll	t1,t0,0x2
 314:	01495021 	addu	t2,t2,t1
 318:	8d4a0000 	lw	t2,0(t2)
 31c:	0081c024 	and	t8,a0,at
 320:	3c018000 	lui	at,0x8000
 324:	030a5821 	addu	t3,t8,t2
 328:	01616021 	addu	t4,t3,at
 32c:	ac6c0004 	sw	t4,4(v1)
 330:	0c000000 	jal	0 <EffectSsDust_Init>
 334:	8e0402d0 	lw	a0,720(s0)
 338:	00401825 	move	v1,v0
 33c:	ae0202d0 	sw	v0,720(s0)
 340:	246d0008 	addiu	t5,v1,8
 344:	ae0d02d0 	sw	t5,720(s0)
 348:	3c06e700 	lui	a2,0xe700
 34c:	ac460000 	sw	a2,0(v0)
 350:	ac400004 	sw	zero,4(v0)
 354:	86220056 	lh	v0,86(s1)
 358:	3c19fc30 	lui	t9,0xfc30
 35c:	3739b204 	ori	t9,t9,0xb204
 360:	304e0001 	andi	t6,v0,0x1
 364:	11c00019 	beqz	t6,3cc <EffectSsDust_Draw+0x21c>
 368:	3c085ffe 	lui	t0,0x5ffe
 36c:	8e0302d0 	lw	v1,720(s0)
 370:	3508fff8 	ori	t0,t0,0xfff8
 374:	3c18e200 	lui	t8,0xe200
 378:	246f0008 	addiu	t7,v1,8
 37c:	ae0f02d0 	sw	t7,720(s0)
 380:	ac680004 	sw	t0,4(v1)
 384:	ac790000 	sw	t9,0(v1)
 388:	8e0302d0 	lw	v1,720(s0)
 38c:	3c0ac810 	lui	t2,0xc810
 390:	354a4b50 	ori	t2,t2,0x4b50
 394:	24690008 	addiu	t1,v1,8
 398:	ae0902d0 	sw	t1,720(s0)
 39c:	3718001c 	ori	t8,t8,0x1c
 3a0:	ac780000 	sw	t8,0(v1)
 3a4:	ac6a0004 	sw	t2,4(v1)
 3a8:	8e0302d0 	lw	v1,720(s0)
 3ac:	3c0cd9ff 	lui	t4,0xd9ff
 3b0:	358cffff 	ori	t4,t4,0xffff
 3b4:	246b0008 	addiu	t3,v1,8
 3b8:	ae0b02d0 	sw	t3,720(s0)
 3bc:	3c0d0003 	lui	t5,0x3
 3c0:	ac6d0004 	sw	t5,4(v1)
 3c4:	1000001b 	b	434 <EffectSsDust_Draw+0x284>
 3c8:	ac6c0000 	sw	t4,0(v1)
 3cc:	304e0002 	andi	t6,v0,0x2
 3d0:	11c00011 	beqz	t6,418 <EffectSsDust_Draw+0x268>
 3d4:	3c19e200 	lui	t9,0xe200
 3d8:	8e0302d0 	lw	v1,720(s0)
 3dc:	3c080c18 	lui	t0,0xc18
 3e0:	35084b50 	ori	t0,t0,0x4b50
 3e4:	246f0008 	addiu	t7,v1,8
 3e8:	ae0f02d0 	sw	t7,720(s0)
 3ec:	3739001c 	ori	t9,t9,0x1c
 3f0:	ac790000 	sw	t9,0(v1)
 3f4:	ac680004 	sw	t0,4(v1)
 3f8:	8e0302d0 	lw	v1,720(s0)
 3fc:	3c18d9fc 	lui	t8,0xd9fc
 400:	3718ffff 	ori	t8,t8,0xffff
 404:	24690008 	addiu	t1,v1,8
 408:	ae0902d0 	sw	t1,720(s0)
 40c:	ac600004 	sw	zero,4(v1)
 410:	10000008 	b	434 <EffectSsDust_Draw+0x284>
 414:	ac780000 	sw	t8,0(v1)
 418:	8e0302d0 	lw	v1,720(s0)
 41c:	3c0bd9fd 	lui	t3,0xd9fd
 420:	356bffff 	ori	t3,t3,0xffff
 424:	246a0008 	addiu	t2,v1,8
 428:	ae0a02d0 	sw	t2,720(s0)
 42c:	ac600004 	sw	zero,4(v1)
 430:	ac6b0000 	sw	t3,0(v1)
 434:	8e0302d0 	lw	v1,720(s0)
 438:	3c0efa00 	lui	t6,0xfa00
 43c:	246c0008 	addiu	t4,v1,8
 440:	ae0c02d0 	sw	t4,720(s0)
 444:	ac600004 	sw	zero,4(v1)
 448:	ac660000 	sw	a2,0(v1)
 44c:	8e0302d0 	lw	v1,720(s0)
 450:	246d0008 	addiu	t5,v1,8
 454:	ae0d02d0 	sw	t5,720(s0)
 458:	ac6e0000 	sw	t6,0(v1)
 45c:	862f0044 	lh	t7,68(s1)
 460:	862c0042 	lh	t4,66(s1)
 464:	86380040 	lh	t8,64(s1)
 468:	31f900ff 	andi	t9,t7,0xff
 46c:	00194200 	sll	t0,t9,0x8
 470:	318d00ff 	andi	t5,t4,0xff
 474:	00185600 	sll	t2,t8,0x18
 478:	010a5825 	or	t3,t0,t2
 47c:	000d7400 	sll	t6,t5,0x10
 480:	016e7825 	or	t7,t3,t6
 484:	35f900ff 	ori	t9,t7,0xff
 488:	ac790004 	sw	t9,4(v1)
 48c:	8e0302d0 	lw	v1,720(s0)
 490:	3c18fb00 	lui	t8,0xfb00
 494:	24690008 	addiu	t1,v1,8
 498:	ae0902d0 	sw	t1,720(s0)
 49c:	ac780000 	sw	t8,0(v1)
 4a0:	8628004e 	lh	t0,78(s1)
 4a4:	862f004a 	lh	t7,74(s1)
 4a8:	862d0048 	lh	t5,72(s1)
 4ac:	310a00ff 	andi	t2,t0,0xff
 4b0:	8628004c 	lh	t0,76(s1)
 4b4:	31f900ff 	andi	t9,t7,0xff
 4b8:	000d5e00 	sll	t3,t5,0x18
 4bc:	014b7025 	or	t6,t2,t3
 4c0:	00194c00 	sll	t1,t9,0x10
 4c4:	310c00ff 	andi	t4,t0,0xff
 4c8:	000c6a00 	sll	t5,t4,0x8
 4cc:	01c9c025 	or	t8,t6,t1
 4d0:	030d5025 	or	t2,t8,t5
 4d4:	ac6a0004 	sw	t2,4(v1)
 4d8:	8e0302d0 	lw	v1,720(s0)
 4dc:	3c0fde00 	lui	t7,0xde00
 4e0:	246b0008 	addiu	t3,v1,8
 4e4:	ae0b02d0 	sw	t3,720(s0)
 4e8:	ac6f0000 	sw	t7,0(v1)
 4ec:	8e390038 	lw	t9,56(s1)
 4f0:	ac790004 	sw	t9,4(v1)
 4f4:	3c060000 	lui	a2,0x0
 4f8:	24c60014 	addiu	a2,a2,20
 4fc:	27a40064 	addiu	a0,sp,100
 500:	02002825 	move	a1,s0
 504:	0c000000 	jal	0 <EffectSsDust_Init>
 508:	24070185 	li	a3,389
 50c:	8fbf001c 	lw	ra,28(sp)
 510:	8fb00014 	lw	s0,20(sp)
 514:	8fb10018 	lw	s1,24(sp)
 518:	03e00008 	jr	ra
 51c:	27bd0188 	addiu	sp,sp,392

00000520 <EffectSsDust_Update>:
 520:	27bdffe8 	addiu	sp,sp,-24
 524:	afbf0014 	sw	ra,20(sp)
 528:	afa40018 	sw	a0,24(sp)
 52c:	afa5001c 	sw	a1,28(sp)
 530:	0c000000 	jal	0 <EffectSsDust_Init>
 534:	afa60020 	sw	a2,32(sp)
 538:	3c010000 	lui	at,0x0
 53c:	c424002c 	lwc1	$f4,44(at)
 540:	3c010000 	lui	at,0x0
 544:	c4280030 	lwc1	$f8,48(at)
 548:	46040182 	mul.s	$f6,$f0,$f4
 54c:	8fa60020 	lw	a2,32(sp)
 550:	46083281 	sub.s	$f10,$f6,$f8
 554:	0c000000 	jal	0 <EffectSsDust_Init>
 558:	e4ca0018 	swc1	$f10,24(a2)
 55c:	3c010000 	lui	at,0x0
 560:	c4300034 	lwc1	$f16,52(at)
 564:	8fa60020 	lw	a2,32(sp)
 568:	3c010000 	lui	at,0x0
 56c:	46100482 	mul.s	$f18,$f0,$f16
 570:	c4240038 	lwc1	$f4,56(at)
 574:	84c20058 	lh	v0,88(a2)
 578:	84c3005c 	lh	v1,92(a2)
 57c:	244efff9 	addiu	t6,v0,-7
 580:	0043082a 	slt	at,v0,v1
 584:	46049181 	sub.s	$f6,$f18,$f4
 588:	1420001a 	bnez	at,5f4 <EffectSsDust_Update+0xd4>
 58c:	e4c60020 	swc1	$f6,32(a2)
 590:	006e082a 	slt	at,v1,t6
 594:	14200017 	bnez	at,5f4 <EffectSsDust_Update+0xd4>
 598:	28410005 	slti	at,v0,5
 59c:	14200004 	bnez	at,5b0 <EffectSsDust_Update+0x90>
 5a0:	24180008 	li	t8,8
 5a4:	00437823 	subu	t7,v0,v1
 5a8:	10000014 	b	5fc <EffectSsDust_Update+0xdc>
 5ac:	a4cf0050 	sh	t7,80(a2)
 5b0:	0302001a 	div	zero,t8,v0
 5b4:	0000c812 	mflo	t9
 5b8:	00434023 	subu	t0,v0,v1
 5bc:	14400002 	bnez	v0,5c8 <EffectSsDust_Update+0xa8>
 5c0:	00000000 	nop
 5c4:	0007000d 	break	0x7
 5c8:	2401ffff 	li	at,-1
 5cc:	14410004 	bne	v0,at,5e0 <EffectSsDust_Update+0xc0>
 5d0:	3c018000 	lui	at,0x8000
 5d4:	17010002 	bne	t8,at,5e0 <EffectSsDust_Update+0xc0>
 5d8:	00000000 	nop
 5dc:	0006000d 	break	0x6
 5e0:	03280019 	multu	t9,t0
 5e4:	00004812 	mflo	t1
 5e8:	a4c90050 	sh	t1,80(a2)
 5ec:	10000004 	b	600 <EffectSsDust_Update+0xe0>
 5f0:	84cb0052 	lh	t3,82(a2)
 5f4:	240a0007 	li	t2,7
 5f8:	a4ca0050 	sh	t2,80(a2)
 5fc:	84cb0052 	lh	t3,82(a2)
 600:	84cc0054 	lh	t4,84(a2)
 604:	016c6821 	addu	t5,t3,t4
 608:	a4cd0052 	sh	t5,82(a2)
 60c:	8fbf0014 	lw	ra,20(sp)
 610:	27bd0018 	addiu	sp,sp,24
 614:	03e00008 	jr	ra
 618:	00000000 	nop

0000061c <EffectSsBlast_UpdateFire>:
 61c:	27bdffe8 	addiu	sp,sp,-24
 620:	afbf0014 	sw	ra,20(sp)
 624:	afa40018 	sw	a0,24(sp)
 628:	afa5001c 	sw	a1,28(sp)
 62c:	0c000000 	jal	0 <EffectSsDust_Init>
 630:	afa60020 	sw	a2,32(sp)
 634:	3c010000 	lui	at,0x0
 638:	c424003c 	lwc1	$f4,60(at)
 63c:	3c010000 	lui	at,0x0
 640:	c4280040 	lwc1	$f8,64(at)
 644:	46040182 	mul.s	$f6,$f0,$f4
 648:	8fa60020 	lw	a2,32(sp)
 64c:	46083281 	sub.s	$f10,$f6,$f8
 650:	0c000000 	jal	0 <EffectSsDust_Init>
 654:	e4ca0018 	swc1	$f10,24(a2)
 658:	3c010000 	lui	at,0x0
 65c:	c4300044 	lwc1	$f16,68(at)
 660:	3c010000 	lui	at,0x0
 664:	c4240048 	lwc1	$f4,72(at)
 668:	46100482 	mul.s	$f18,$f0,$f16
 66c:	8fa60020 	lw	a2,32(sp)
 670:	24010001 	li	at,1
 674:	24020096 	li	v0,150
 678:	84c30050 	lh	v1,80(a2)
 67c:	240e00ff 	li	t6,255
 680:	240f0032 	li	t7,50
 684:	46049181 	sub.s	$f6,$f18,$f4
 688:	1060000b 	beqz	v1,6b8 <EffectSsBlast_UpdateFire+0x9c>
 68c:	e4c60020 	swc1	$f6,32(a2)
 690:	10610011 	beq	v1,at,6d8 <EffectSsBlast_UpdateFire+0xbc>
 694:	241800c8 	li	t8,200
 698:	24010002 	li	at,2
 69c:	10610018 	beq	v1,at,700 <EffectSsBlast_UpdateFire+0xe4>
 6a0:	24090032 	li	t1,50
 6a4:	24010003 	li	at,3
 6a8:	1061001d 	beq	v1,at,720 <EffectSsBlast_UpdateFire+0x104>
 6ac:	240a0032 	li	t2,50
 6b0:	10000024 	b	744 <EffectSsBlast_UpdateFire+0x128>
 6b4:	28610007 	slti	at,v1,7
 6b8:	a4ce0040 	sh	t6,64(a2)
 6bc:	a4c20042 	sh	v0,66(a2)
 6c0:	a4c00044 	sh	zero,68(a2)
 6c4:	a4c20048 	sh	v0,72(a2)
 6c8:	a4cf004a 	sh	t7,74(a2)
 6cc:	a4c0004c 	sh	zero,76(a2)
 6d0:	1000001b 	b	740 <EffectSsBlast_UpdateFire+0x124>
 6d4:	84c30050 	lh	v1,80(a2)
 6d8:	24190032 	li	t9,50
 6dc:	24080064 	li	t0,100
 6e0:	a4d80040 	sh	t8,64(a2)
 6e4:	a4d90042 	sh	t9,66(a2)
 6e8:	a4c00044 	sh	zero,68(a2)
 6ec:	a4c80048 	sh	t0,72(a2)
 6f0:	a4c0004a 	sh	zero,74(a2)
 6f4:	a4c0004c 	sh	zero,76(a2)
 6f8:	10000011 	b	740 <EffectSsBlast_UpdateFire+0x124>
 6fc:	84c30050 	lh	v1,80(a2)
 700:	a4c90040 	sh	t1,64(a2)
 704:	a4c00042 	sh	zero,66(a2)
 708:	a4c00044 	sh	zero,68(a2)
 70c:	a4c00048 	sh	zero,72(a2)
 710:	a4c0004a 	sh	zero,74(a2)
 714:	a4c0004c 	sh	zero,76(a2)
 718:	10000009 	b	740 <EffectSsBlast_UpdateFire+0x124>
 71c:	84c30050 	lh	v1,80(a2)
 720:	a4c0004c 	sh	zero,76(a2)
 724:	84c2004c 	lh	v0,76(a2)
 728:	a4ca0040 	sh	t2,64(a2)
 72c:	84c30050 	lh	v1,80(a2)
 730:	a4c20044 	sh	v0,68(a2)
 734:	a4c2004a 	sh	v0,74(a2)
 738:	a4c20042 	sh	v0,66(a2)
 73c:	a4c20048 	sh	v0,72(a2)
 740:	28610007 	slti	at,v1,7
 744:	10200002 	beqz	at,750 <EffectSsBlast_UpdateFire+0x134>
 748:	246b0001 	addiu	t3,v1,1
 74c:	a4cb0050 	sh	t3,80(a2)
 750:	84cc0052 	lh	t4,82(a2)
 754:	84cd0054 	lh	t5,84(a2)
 758:	018d7021 	addu	t6,t4,t5
 75c:	a4ce0052 	sh	t6,82(a2)
 760:	8fbf0014 	lw	ra,20(sp)
 764:	27bd0018 	addiu	sp,sp,24
 768:	03e00008 	jr	ra
 76c:	00000000 	nop
