
build/src/overlays/actors/ovl_En_Tg/z_en_tg.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B18360>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa5001c 	sw	a1,28(sp)
   c:	afa40018 	sw	a0,24(sp)
  10:	0c000000 	jal	0 <func_80B18360>
  14:	24050024 	li	a1,36
  18:	8fa4001c 	lw	a0,28(sp)
  1c:	10400003 	beqz	v0,2c <func_80B18360+0x2c>
  20:	3043ffff 	andi	v1,v0,0xffff
  24:	10000018 	b	88 <func_80B18360+0x88>
  28:	00601025 	move	v0,v1
  2c:	8fae0018 	lw	t6,24(sp)
  30:	24010052 	li	at,82
  34:	85cf00a4 	lh	t7,164(t6)
  38:	55e1000c 	bnel	t7,at,6c <func_80B18360+0x6c>
  3c:	90880208 	lbu	t0,520(a0)
  40:	90980208 	lbu	t8,520(a0)
  44:	2403508a 	li	v1,20618
  48:	33190001 	andi	t9,t8,0x1
  4c:	13200004 	beqz	t9,60 <func_80B18360+0x60>
  50:	00000000 	nop
  54:	24035089 	li	v1,20617
  58:	1000000b 	b	88 <func_80B18360+0x88>
  5c:	3062ffff 	andi	v0,v1,0xffff
  60:	10000009 	b	88 <func_80B18360+0x88>
  64:	3062ffff 	andi	v0,v1,0xffff
  68:	90880208 	lbu	t0,520(a0)
  6c:	24037026 	li	v1,28710
  70:	31090001 	andi	t1,t0,0x1
  74:	11200003 	beqz	t1,84 <func_80B18360+0x84>
  78:	00000000 	nop
  7c:	10000001 	b	84 <func_80B18360+0x84>
  80:	24037025 	li	v1,28709
  84:	3062ffff 	andi	v0,v1,0xffff
  88:	8fbf0014 	lw	ra,20(sp)
  8c:	27bd0018 	addiu	sp,sp,24
  90:	03e00008 	jr	ra
  94:	00000000 	nop

00000098 <func_80B183F8>:
  98:	27bdffe8 	addiu	sp,sp,-24
  9c:	afbf0014 	sw	ra,20(sp)
  a0:	afa5001c 	sw	a1,28(sp)
  a4:	0c000000 	jal	0 <func_80B18360>
  a8:	248420d8 	addiu	a0,a0,8408
  ac:	2c41000a 	sltiu	at,v0,10
  b0:	10200022 	beqz	at,13c <L80B18438+0x64>
  b4:	8fa5001c 	lw	a1,28(sp)
  b8:	00027080 	sll	t6,v0,0x2
  bc:	3c010000 	lui	at,0x0
  c0:	002e0821 	addu	at,at,t6
  c4:	8c2e0000 	lw	t6,0(at)
  c8:	01c00008 	jr	t6
  cc:	00000000 	nop

000000d0 <L80B18430>:
  d0:	1000001b 	b	140 <L80B18438+0x68>
  d4:	24020001 	li	v0,1

000000d8 <L80B18438>:
  d8:	94a2010e 	lhu	v0,270(a1)
  dc:	24015089 	li	at,20617
  e0:	10410009 	beq	v0,at,108 <L80B18438+0x30>
  e4:	2401508a 	li	at,20618
  e8:	10410007 	beq	v0,at,108 <L80B18438+0x30>
  ec:	24017025 	li	at,28709
  f0:	1041000a 	beq	v0,at,11c <L80B18438+0x44>
  f4:	24017026 	li	at,28710
  f8:	50410009 	beql	v0,at,120 <L80B18438+0x48>
  fc:	84b9001c 	lh	t9,28(a1)
 100:	1000000f 	b	140 <L80B18438+0x68>
 104:	00001025 	move	v0,zero
 108:	90af0208 	lbu	t7,520(a1)
 10c:	00001025 	move	v0,zero
 110:	25f80001 	addiu	t8,t7,1
 114:	1000000a 	b	140 <L80B18438+0x68>
 118:	a0b80208 	sb	t8,520(a1)
 11c:	84b9001c 	lh	t9,28(a1)
 120:	90a90208 	lbu	t1,520(a1)
 124:	3b280001 	xori	t0,t9,0x1
 128:	252a0001 	addiu	t2,t1,1
 12c:	a4a8001c 	sh	t0,28(a1)
 130:	a0aa0208 	sb	t2,520(a1)
 134:	10000002 	b	140 <L80B18438+0x68>
 138:	00001025 	move	v0,zero
 13c:	24020001 	li	v0,1
 140:	8fbf0014 	lw	ra,20(sp)
 144:	27bd0018 	addiu	sp,sp,24
 148:	03e00008 	jr	ra
 14c:	00000000 	nop

00000150 <EnTg_Init>:
 150:	27bdffc8 	addiu	sp,sp,-56
 154:	afb00028 	sw	s0,40(sp)
 158:	00808025 	move	s0,a0
 15c:	afbf002c 	sw	ra,44(sp)
 160:	afa5003c 	sw	a1,60(sp)
 164:	3c060000 	lui	a2,0x0
 168:	24c60000 	addiu	a2,a2,0
 16c:	24050000 	li	a1,0
 170:	248400b4 	addiu	a0,a0,180
 174:	0c000000 	jal	0 <func_80B18360>
 178:	3c0741e0 	lui	a3,0x41e0
 17c:	3c060601 	lui	a2,0x601
 180:	3c070600 	lui	a3,0x600
 184:	24e75040 	addiu	a3,a3,20544
 188:	24c6ae40 	addiu	a2,a2,-20928
 18c:	8fa4003c 	lw	a0,60(sp)
 190:	2605014c 	addiu	a1,s0,332
 194:	afa00010 	sw	zero,16(sp)
 198:	afa00014 	sw	zero,20(sp)
 19c:	0c000000 	jal	0 <func_80B18360>
 1a0:	afa00018 	sw	zero,24(sp)
 1a4:	26050194 	addiu	a1,s0,404
 1a8:	afa50030 	sw	a1,48(sp)
 1ac:	0c000000 	jal	0 <func_80B18360>
 1b0:	8fa4003c 	lw	a0,60(sp)
 1b4:	3c070000 	lui	a3,0x0
 1b8:	8fa50030 	lw	a1,48(sp)
 1bc:	24e70000 	addiu	a3,a3,0
 1c0:	8fa4003c 	lw	a0,60(sp)
 1c4:	0c000000 	jal	0 <func_80B18360>
 1c8:	02003025 	move	a2,s0
 1cc:	3c060000 	lui	a2,0x0
 1d0:	24c60000 	addiu	a2,a2,0
 1d4:	26040098 	addiu	a0,s0,152
 1d8:	0c000000 	jal	0 <func_80B18360>
 1dc:	00002825 	move	a1,zero
 1e0:	240e0006 	li	t6,6
 1e4:	3c053c23 	lui	a1,0x3c23
 1e8:	a20e001f 	sb	t6,31(s0)
 1ec:	34a5d70a 	ori	a1,a1,0xd70a
 1f0:	0c000000 	jal	0 <func_80B18360>
 1f4:	02002025 	move	a0,s0
 1f8:	8faf003c 	lw	t7,60(sp)
 1fc:	3c080000 	lui	t0,0x0
 200:	25080000 	addiu	t0,t0,0
 204:	8df8009c 	lw	t8,156(t7)
 208:	ae080190 	sw	t0,400(s0)
 20c:	33190001 	andi	t9,t8,0x1
 210:	a2190208 	sb	t9,520(s0)
 214:	8fbf002c 	lw	ra,44(sp)
 218:	8fb00028 	lw	s0,40(sp)
 21c:	27bd0038 	addiu	sp,sp,56
 220:	03e00008 	jr	ra
 224:	00000000 	nop

00000228 <EnTg_Destroy>:
 228:	27bdffe8 	addiu	sp,sp,-24
 22c:	afbf0014 	sw	ra,20(sp)
 230:	afa40018 	sw	a0,24(sp)
 234:	afa5001c 	sw	a1,28(sp)
 238:	0c000000 	jal	0 <func_80B18360>
 23c:	2484014c 	addiu	a0,a0,332
 240:	8fa50018 	lw	a1,24(sp)
 244:	8fa4001c 	lw	a0,28(sp)
 248:	0c000000 	jal	0 <func_80B18360>
 24c:	24a50194 	addiu	a1,a1,404
 250:	8fbf0014 	lw	ra,20(sp)
 254:	27bd0018 	addiu	sp,sp,24
 258:	03e00008 	jr	ra
 25c:	00000000 	nop

00000260 <func_80B185C0>:
 260:	afa50004 	sw	a1,4(sp)
 264:	848e01e0 	lh	t6,480(a0)
 268:	15c00004 	bnez	t6,27c <func_80B185C0+0x1c>
 26c:	00000000 	nop
 270:	848f00b6 	lh	t7,182(a0)
 274:	25f80800 	addiu	t8,t7,2048
 278:	a49800b6 	sh	t8,182(a0)
 27c:	03e00008 	jr	ra
 280:	00000000 	nop

00000284 <EnTg_Update>:
 284:	27bdffc0 	addiu	sp,sp,-64
 288:	afbf0024 	sw	ra,36(sp)
 28c:	afb10020 	sw	s1,32(sp)
 290:	afb0001c 	sw	s0,28(sp)
 294:	c4840024 	lwc1	$f4,36(a0)
 298:	27ad002c 	addiu	t5,sp,44
 29c:	00808025 	move	s0,a0
 2a0:	4600218d 	trunc.w.s	$f6,$f4
 2a4:	3c010001 	lui	at,0x1
 2a8:	00a08825 	move	s1,a1
 2ac:	34211e60 	ori	at,at,0x1e60
 2b0:	440f3000 	mfc1	t7,$f6
 2b4:	26060194 	addiu	a2,s0,404
 2b8:	a7af002c 	sh	t7,44(sp)
 2bc:	c4880028 	lwc1	$f8,40(a0)
 2c0:	4600428d 	trunc.w.s	$f10,$f8
 2c4:	44195000 	mfc1	t9,$f10
 2c8:	00000000 	nop
 2cc:	a7b9002e 	sh	t9,46(sp)
 2d0:	c490002c 	lwc1	$f16,44(a0)
 2d4:	4600848d 	trunc.w.s	$f18,$f16
 2d8:	440b9000 	mfc1	t3,$f18
 2dc:	00000000 	nop
 2e0:	256c0003 	addiu	t4,t3,3
 2e4:	a7ac0030 	sh	t4,48(sp)
 2e8:	8daf0000 	lw	t7,0(t5)
 2ec:	a88f01da 	swl	t7,474(a0)
 2f0:	b88f01dd 	swr	t7,477(a0)
 2f4:	95af0004 	lhu	t7,4(t5)
 2f8:	a48f01de 	sh	t7,478(a0)
 2fc:	00a02025 	move	a0,a1
 300:	0c000000 	jal	0 <func_80B18360>
 304:	00a12821 	addu	a1,a1,at
 308:	0c000000 	jal	0 <func_80B18360>
 30c:	2604014c 	addiu	a0,s0,332
 310:	44800000 	mtc1	zero,$f0
 314:	24180004 	li	t8,4
 318:	afb80014 	sw	t8,20(sp)
 31c:	44060000 	mfc1	a2,$f0
 320:	44070000 	mfc1	a3,$f0
 324:	02202025 	move	a0,s1
 328:	02002825 	move	a1,s0
 32c:	0c000000 	jal	0 <func_80B18360>
 330:	e7a00010 	swc1	$f0,16(sp)
 334:	8e190190 	lw	t9,400(s0)
 338:	02002025 	move	a0,s0
 33c:	02202825 	move	a1,s1
 340:	0320f809 	jalr	t9
 344:	00000000 	nop
 348:	860801d4 	lh	t0,468(s0)
 34c:	3c0141f0 	lui	at,0x41f0
 350:	44814000 	mtc1	at,$f8
 354:	44882000 	mtc1	t0,$f4
 358:	3c090000 	lui	t1,0x0
 35c:	3c0a0000 	lui	t2,0x0
 360:	468021a0 	cvt.s.w	$f6,$f4
 364:	254a0000 	addiu	t2,t2,0
 368:	25290000 	addiu	t1,t1,0
 36c:	afa90010 	sw	t1,16(sp)
 370:	afaa0014 	sw	t2,20(sp)
 374:	02202025 	move	a0,s1
 378:	46083000 	add.s	$f0,$f6,$f8
 37c:	02002825 	move	a1,s0
 380:	260601e0 	addiu	a2,s0,480
 384:	44070000 	mfc1	a3,$f0
 388:	0c000000 	jal	0 <func_80B18360>
 38c:	00000000 	nop
 390:	8fbf0024 	lw	ra,36(sp)
 394:	8fb0001c 	lw	s0,28(sp)
 398:	8fb10020 	lw	s1,32(sp)
 39c:	03e00008 	jr	ra
 3a0:	27bd0040 	addiu	sp,sp,64

000003a4 <func_80B18704>:
 3a4:	afa40000 	sw	a0,0(sp)
 3a8:	afa50004 	sw	a1,4(sp)
 3ac:	afa60008 	sw	a2,8(sp)
 3b0:	afa7000c 	sw	a3,12(sp)
 3b4:	03e00008 	jr	ra
 3b8:	00001025 	move	v0,zero

000003bc <func_80B1871C>:
 3bc:	27bdffd8 	addiu	sp,sp,-40
 3c0:	3c0e0000 	lui	t6,0x0
 3c4:	afbf0014 	sw	ra,20(sp)
 3c8:	afa40028 	sw	a0,40(sp)
 3cc:	afa60030 	sw	a2,48(sp)
 3d0:	afa70034 	sw	a3,52(sp)
 3d4:	25ce0000 	addiu	t6,t6,0
 3d8:	8dd80000 	lw	t8,0(t6)
 3dc:	27a40018 	addiu	a0,sp,24
 3e0:	24010009 	li	at,9
 3e4:	ac980000 	sw	t8,0(a0)
 3e8:	8dcf0004 	lw	t7,4(t6)
 3ec:	ac8f0004 	sw	t7,4(a0)
 3f0:	8dd80008 	lw	t8,8(t6)
 3f4:	14a10004 	bne	a1,at,408 <func_80B1871C+0x4c>
 3f8:	ac980008 	sw	t8,8(a0)
 3fc:	8fa50038 	lw	a1,56(sp)
 400:	0c000000 	jal	0 <func_80B18360>
 404:	24a50038 	addiu	a1,a1,56
 408:	8fbf0014 	lw	ra,20(sp)
 40c:	27bd0028 	addiu	sp,sp,40
 410:	03e00008 	jr	ra
 414:	00000000 	nop

00000418 <func_80B18778>:
 418:	27bdffe8 	addiu	sp,sp,-24
 41c:	afbf0014 	sw	ra,20(sp)
 420:	afa5001c 	sw	a1,28(sp)
 424:	afa60020 	sw	a2,32(sp)
 428:	afa70024 	sw	a3,36(sp)
 42c:	0c000000 	jal	0 <func_80B18360>
 430:	24050010 	li	a1,16
 434:	3c0efb00 	lui	t6,0xfb00
 438:	ac4e0000 	sw	t6,0(v0)
 43c:	93a90023 	lbu	t1,35(sp)
 440:	93b8001f 	lbu	t8,31(sp)
 444:	93ad0027 	lbu	t5,39(sp)
 448:	93a8002b 	lbu	t0,43(sp)
 44c:	00095400 	sll	t2,t1,0x10
 450:	0018ce00 	sll	t9,t8,0x18
 454:	032a5825 	or	t3,t9,t2
 458:	000d7200 	sll	t6,t5,0x8
 45c:	016e7825 	or	t7,t3,t6
 460:	3c19df00 	lui	t9,0xdf00
 464:	01e84825 	or	t1,t7,t0
 468:	ac490004 	sw	t1,4(v0)
 46c:	ac590008 	sw	t9,8(v0)
 470:	ac40000c 	sw	zero,12(v0)
 474:	8fbf0014 	lw	ra,20(sp)
 478:	27bd0018 	addiu	sp,sp,24
 47c:	03e00008 	jr	ra
 480:	00000000 	nop

00000484 <EnTg_Draw>:
 484:	27bdffa8 	addiu	sp,sp,-88
 488:	afb10028 	sw	s1,40(sp)
 48c:	00a08825 	move	s1,a1
 490:	afbf002c 	sw	ra,44(sp)
 494:	afb00024 	sw	s0,36(sp)
 498:	afa40058 	sw	a0,88(sp)
 49c:	8ca50000 	lw	a1,0(a1)
 4a0:	3c060000 	lui	a2,0x0
 4a4:	24c60000 	addiu	a2,a2,0
 4a8:	27a40040 	addiu	a0,sp,64
 4ac:	240701ce 	li	a3,462
 4b0:	0c000000 	jal	0 <func_80B18360>
 4b4:	00a08025 	move	s0,a1
 4b8:	44806000 	mtc1	zero,$f12
 4bc:	3c06c40c 	lui	a2,0xc40c
 4c0:	24070001 	li	a3,1
 4c4:	0c000000 	jal	0 <func_80B18360>
 4c8:	46006386 	mov.s	$f14,$f12
 4cc:	8e0202c0 	lw	v0,704(s0)
 4d0:	3c0fdb06 	lui	t7,0xdb06
 4d4:	35ef0020 	ori	t7,t7,0x20
 4d8:	244e0008 	addiu	t6,v0,8
 4dc:	ae0e02c0 	sw	t6,704(s0)
 4e0:	ac4f0000 	sw	t7,0(v0)
 4e4:	8e240000 	lw	a0,0(s1)
 4e8:	afa00010 	sw	zero,16(sp)
 4ec:	00002825 	move	a1,zero
 4f0:	24060032 	li	a2,50
 4f4:	240700a0 	li	a3,160
 4f8:	0c000000 	jal	0 <func_80B18360>
 4fc:	afa2003c 	sw	v0,60(sp)
 500:	8fa3003c 	lw	v1,60(sp)
 504:	3c19db06 	lui	t9,0xdb06
 508:	37390024 	ori	t9,t9,0x24
 50c:	ac620004 	sw	v0,4(v1)
 510:	8e0202c0 	lw	v0,704(s0)
 514:	240500ff 	li	a1,255
 518:	240600ff 	li	a2,255
 51c:	24580008 	addiu	t8,v0,8
 520:	ae1802c0 	sw	t8,704(s0)
 524:	ac590000 	sw	t9,0(v0)
 528:	8e240000 	lw	a0,0(s1)
 52c:	afa00010 	sw	zero,16(sp)
 530:	240700ff 	li	a3,255
 534:	0c000000 	jal	0 <func_80B18360>
 538:	afa20038 	sw	v0,56(sp)
 53c:	8fa30038 	lw	v1,56(sp)
 540:	3c080000 	lui	t0,0x0
 544:	3c090000 	lui	t1,0x0
 548:	ac620004 	sw	v0,4(v1)
 54c:	8fa20058 	lw	v0,88(sp)
 550:	25290000 	addiu	t1,t1,0
 554:	25080000 	addiu	t0,t0,0
 558:	8c450150 	lw	a1,336(v0)
 55c:	8c46016c 	lw	a2,364(v0)
 560:	9047014e 	lbu	a3,334(v0)
 564:	afa90014 	sw	t1,20(sp)
 568:	afa80010 	sw	t0,16(sp)
 56c:	02202025 	move	a0,s1
 570:	0c000000 	jal	0 <func_80B18360>
 574:	afa20018 	sw	v0,24(sp)
 578:	3c060000 	lui	a2,0x0
 57c:	24c60000 	addiu	a2,a2,0
 580:	27a40040 	addiu	a0,sp,64
 584:	8e250000 	lw	a1,0(s1)
 588:	0c000000 	jal	0 <func_80B18360>
 58c:	240701e0 	li	a3,480
 590:	8fbf002c 	lw	ra,44(sp)
 594:	8fb00024 	lw	s0,36(sp)
 598:	8fb10028 	lw	s1,40(sp)
 59c:	03e00008 	jr	ra
 5a0:	27bd0058 	addiu	sp,sp,88
	...
