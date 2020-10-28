
build/src/overlays/actors/ovl_En_Mu/z_en_mu.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80AB0420>:
   0:	03e00008 	jr	ra
   4:	ac850190 	sw	a1,400(a0)

00000008 <func_80AB0428>:
   8:	27bdffc8 	addiu	sp,sp,-56
   c:	3c0f0000 	lui	t7,0x0
  10:	afbf0014 	sw	ra,20(sp)
  14:	afa40038 	sw	a0,56(sp)
  18:	afa5003c 	sw	a1,60(sp)
  1c:	25ef0000 	addiu	t7,t7,0
  20:	8df90000 	lw	t9,0(t7)
  24:	27ae0030 	addiu	t6,sp,48
  28:	3c0b0000 	lui	t3,0x0
  2c:	add90000 	sw	t9,0(t6)
  30:	91f90004 	lbu	t9,4(t7)
  34:	256b0000 	addiu	t3,t3,0
  38:	3c080000 	lui	t0,0x0
  3c:	a1d90004 	sb	t9,4(t6)
  40:	8d6d0000 	lw	t5,0(t3)
  44:	25080000 	addiu	t0,t0,0
  48:	27a70028 	addiu	a3,sp,40
  4c:	950213fe 	lhu	v0,5118(t0)
  50:	aced0000 	sw	t5,0(a3)
  54:	916d0004 	lbu	t5,4(t3)
  58:	3046001f 	andi	a2,v0,0x1f
  5c:	304effe0 	andi	t6,v0,0xffe0
  60:	a0ed0004 	sb	t5,4(a3)
  64:	a50e13fe 	sh	t6,5118(t0)
  68:	0c000000 	jal	0 <func_80AB0420>
  6c:	a3a60027 	sb	a2,39(sp)
  70:	3c0140a0 	lui	at,0x40a0
  74:	44812000 	mtc1	at,$f4
  78:	8fb9003c 	lw	t9,60(sp)
  7c:	24010005 	li	at,5
  80:	46040182 	mul.s	$f6,$f0,$f4
  84:	8f2b009c 	lw	t3,156(t9)
  88:	3c080000 	lui	t0,0x0
  8c:	25080000 	addiu	t0,t0,0
  90:	93a50027 	lbu	a1,39(sp)
  94:	27a70028 	addiu	a3,sp,40
  98:	8fa90038 	lw	t1,56(sp)
  9c:	4600320d 	trunc.w.s	$f8,$f6
  a0:	27aa0030 	addiu	t2,sp,48
  a4:	00001825 	move	v1,zero
  a8:	24040005 	li	a0,5
  ac:	44184000 	mfc1	t8,$f8
  b0:	00000000 	nop
  b4:	030b1021 	addu	v0,t8,t3
  b8:	0041001b 	divu	zero,v0,at
  bc:	00001010 	mfhi	v0
	...
  c8:	00e26021 	addu	t4,a3,v0
  cc:	918d0000 	lbu	t5,0(t4)
  d0:	01a57024 	and	t6,t5,a1
  d4:	11c00008 	beqz	t6,f8 <func_80AB0428+0xf0>
  d8:	00000000 	nop
  dc:	24420001 	addiu	v0,v0,1
  e0:	28410005 	slti	at,v0,5
  e4:	14200002 	bnez	at,f0 <func_80AB0428+0xe8>
  e8:	24630001 	addiu	v1,v1,1
  ec:	00001025 	move	v0,zero
  f0:	5464fff6 	bnel	v1,a0,cc <func_80AB0428+0xc4>
  f4:	00e26021 	addu	t4,a3,v0
  f8:	1464000c 	bne	v1,a0,12c <func_80AB0428+0x124>
  fc:	0142c821 	addu	t9,t2,v0
 100:	93380000 	lbu	t8,0(t9)
 104:	952f0208 	lhu	t7,520(t1)
 108:	00002825 	move	a1,zero
 10c:	370b7000 	ori	t3,t8,0x7000
 110:	15eb0006 	bne	t7,t3,12c <func_80AB0428+0x124>
 114:	00000000 	nop
 118:	24420001 	addiu	v0,v0,1
 11c:	28410005 	slti	at,v0,5
 120:	14200002 	bnez	at,12c <func_80AB0428+0x124>
 124:	00000000 	nop
 128:	00001025 	move	v0,zero
 12c:	01427021 	addu	t6,t2,v0
 130:	91d90000 	lbu	t9,0(t6)
 134:	00e26021 	addu	t4,a3,v0
 138:	918d0000 	lbu	t5,0(t4)
 13c:	37387000 	ori	t8,t9,0x7000
 140:	a5380208 	sh	t8,520(t1)
 144:	950f13fe 	lhu	t7,5118(t0)
 148:	8fbf0014 	lw	ra,20(sp)
 14c:	00ad3025 	or	a2,a1,t5
 150:	30c600ff 	andi	a2,a2,0xff
 154:	01e65825 	or	t3,t7,a2
 158:	a50b13fe 	sh	t3,5118(t0)
 15c:	03e00008 	jr	ra
 160:	27bd0038 	addiu	sp,sp,56

00000164 <func_80AB0584>:
 164:	27bdffe8 	addiu	sp,sp,-24
 168:	afbf0014 	sw	ra,20(sp)
 16c:	afa5001c 	sw	a1,28(sp)
 170:	84a5001c 	lh	a1,28(a1)
 174:	0c000000 	jal	0 <func_80AB0420>
 178:	24a5003a 	addiu	a1,a1,58
 17c:	10400003 	beqz	v0,18c <func_80AB0584+0x28>
 180:	3043ffff 	andi	v1,v0,0xffff
 184:	10000003 	b	194 <func_80AB0584+0x30>
 188:	00601025 	move	v0,v1
 18c:	8faf001c 	lw	t7,28(sp)
 190:	95e20208 	lhu	v0,520(t7)
 194:	8fbf0014 	lw	ra,20(sp)
 198:	27bd0018 	addiu	sp,sp,24
 19c:	03e00008 	jr	ra
 1a0:	00000000 	nop

000001a4 <func_80AB05C4>:
 1a4:	27bdffe8 	addiu	sp,sp,-24
 1a8:	afbf0014 	sw	ra,20(sp)
 1ac:	afa40018 	sw	a0,24(sp)
 1b0:	afa5001c 	sw	a1,28(sp)
 1b4:	0c000000 	jal	0 <func_80AB0420>
 1b8:	248420d8 	addiu	a0,a0,8408
 1bc:	2c41000a 	sltiu	at,v0,10
 1c0:	1020000d 	beqz	at,1f8 <L80AB0604+0x14>
 1c4:	00027080 	sll	t6,v0,0x2
 1c8:	3c010000 	lui	at,0x0
 1cc:	002e0821 	addu	at,at,t6
 1d0:	8c2e0000 	lw	t6,0(at)
 1d4:	01c00008 	jr	t6
 1d8:	00000000 	nop

000001dc <L80AB05FC>:
 1dc:	10000007 	b	1fc <L80AB0604+0x18>
 1e0:	24020001 	li	v0,1

000001e4 <L80AB0604>:
 1e4:	8fa4001c 	lw	a0,28(sp)
 1e8:	0c000000 	jal	0 <func_80AB0420>
 1ec:	8fa50018 	lw	a1,24(sp)
 1f0:	10000002 	b	1fc <L80AB0604+0x18>
 1f4:	00001025 	move	v0,zero
 1f8:	24020001 	li	v0,1
 1fc:	8fbf0014 	lw	ra,20(sp)
 200:	27bd0018 	addiu	sp,sp,24
 204:	03e00008 	jr	ra
 208:	00000000 	nop

0000020c <EnMu_Init>:
 20c:	27bdffc0 	addiu	sp,sp,-64
 210:	afb00028 	sw	s0,40(sp)
 214:	00808025 	move	s0,a0
 218:	afbf002c 	sw	ra,44(sp)
 21c:	afa50044 	sw	a1,68(sp)
 220:	3c060000 	lui	a2,0x0
 224:	24c60000 	addiu	a2,a2,0
 228:	24050000 	li	a1,0
 22c:	248400b4 	addiu	a0,a0,180
 230:	0c000000 	jal	0 <func_80AB0420>
 234:	3c074320 	lui	a3,0x4320
 238:	3c060600 	lui	a2,0x600
 23c:	3c070600 	lui	a3,0x600
 240:	24e703f4 	addiu	a3,a3,1012
 244:	24c64f70 	addiu	a2,a2,20336
 248:	8fa40044 	lw	a0,68(sp)
 24c:	2605014c 	addiu	a1,s0,332
 250:	afa00010 	sw	zero,16(sp)
 254:	afa00014 	sw	zero,20(sp)
 258:	0c000000 	jal	0 <func_80AB0420>
 25c:	afa00018 	sw	zero,24(sp)
 260:	26050194 	addiu	a1,s0,404
 264:	afa50034 	sw	a1,52(sp)
 268:	0c000000 	jal	0 <func_80AB0420>
 26c:	8fa40044 	lw	a0,68(sp)
 270:	3c070000 	lui	a3,0x0
 274:	8fa50034 	lw	a1,52(sp)
 278:	24e70000 	addiu	a3,a3,0
 27c:	8fa40044 	lw	a0,68(sp)
 280:	0c000000 	jal	0 <func_80AB0420>
 284:	02003025 	move	a2,s0
 288:	3c060000 	lui	a2,0x0
 28c:	24c60000 	addiu	a2,a2,0
 290:	26040098 	addiu	a0,s0,152
 294:	0c000000 	jal	0 <func_80AB0420>
 298:	00002825 	move	a1,zero
 29c:	240e0006 	li	t6,6
 2a0:	3c053c23 	lui	a1,0x3c23
 2a4:	a20e001f 	sb	t6,31(s0)
 2a8:	34a5d70a 	ori	a1,a1,0xd70a
 2ac:	0c000000 	jal	0 <func_80AB0420>
 2b0:	02002025 	move	a0,s0
 2b4:	02002025 	move	a0,s0
 2b8:	0c000000 	jal	0 <func_80AB0420>
 2bc:	8fa50044 	lw	a1,68(sp)
 2c0:	3c050000 	lui	a1,0x0
 2c4:	24a50000 	addiu	a1,a1,0
 2c8:	0c000000 	jal	0 <func_80AB0420>
 2cc:	02002025 	move	a0,s0
 2d0:	8fbf002c 	lw	ra,44(sp)
 2d4:	8fb00028 	lw	s0,40(sp)
 2d8:	27bd0040 	addiu	sp,sp,64
 2dc:	03e00008 	jr	ra
 2e0:	00000000 	nop

000002e4 <EnMu_Destroy>:
 2e4:	27bdffe8 	addiu	sp,sp,-24
 2e8:	afbf0014 	sw	ra,20(sp)
 2ec:	0c000000 	jal	0 <func_80AB0420>
 2f0:	2484014c 	addiu	a0,a0,332
 2f4:	8fbf0014 	lw	ra,20(sp)
 2f8:	27bd0018 	addiu	sp,sp,24
 2fc:	03e00008 	jr	ra
 300:	00000000 	nop

00000304 <func_80AB0724>:
 304:	27bdffe8 	addiu	sp,sp,-24
 308:	afa40018 	sw	a0,24(sp)
 30c:	8fae0018 	lw	t6,24(sp)
 310:	afbf0014 	sw	ra,20(sp)
 314:	afa5001c 	sw	a1,28(sp)
 318:	00a02025 	move	a0,a1
 31c:	24070010 	li	a3,16
 320:	25c5020a 	addiu	a1,t6,522
 324:	0c000000 	jal	0 <func_80AB0420>
 328:	25c6022a 	addiu	a2,t6,554
 32c:	8fbf0014 	lw	ra,20(sp)
 330:	27bd0018 	addiu	sp,sp,24
 334:	03e00008 	jr	ra
 338:	00000000 	nop

0000033c <EnMu_Update>:
 33c:	27bdffc0 	addiu	sp,sp,-64
 340:	afbf0024 	sw	ra,36(sp)
 344:	afb10020 	sw	s1,32(sp)
 348:	afb0001c 	sw	s0,28(sp)
 34c:	c4840024 	lwc1	$f4,36(a0)
 350:	27aa002c 	addiu	t2,sp,44
 354:	00808025 	move	s0,a0
 358:	4600218d 	trunc.w.s	$f6,$f4
 35c:	3c010001 	lui	at,0x1
 360:	00a08825 	move	s1,a1
 364:	34211e60 	ori	at,at,0x1e60
 368:	440f3000 	mfc1	t7,$f6
 36c:	26060194 	addiu	a2,s0,404
 370:	a7af002c 	sh	t7,44(sp)
 374:	c4880028 	lwc1	$f8,40(a0)
 378:	4600428d 	trunc.w.s	$f10,$f8
 37c:	44195000 	mfc1	t9,$f10
 380:	00000000 	nop
 384:	a7b9002e 	sh	t9,46(sp)
 388:	c490002c 	lwc1	$f16,44(a0)
 38c:	4600848d 	trunc.w.s	$f18,$f16
 390:	44099000 	mfc1	t1,$f18
 394:	00000000 	nop
 398:	a7a90030 	sh	t1,48(sp)
 39c:	8d4c0000 	lw	t4,0(t2)
 3a0:	a88c01da 	swl	t4,474(a0)
 3a4:	b88c01dd 	swr	t4,477(a0)
 3a8:	954c0004 	lhu	t4,4(t2)
 3ac:	a48c01de 	sh	t4,478(a0)
 3b0:	00a02025 	move	a0,a1
 3b4:	0c000000 	jal	0 <func_80AB0420>
 3b8:	00a12821 	addu	a1,a1,at
 3bc:	0c000000 	jal	0 <func_80AB0420>
 3c0:	2604014c 	addiu	a0,s0,332
 3c4:	44800000 	mtc1	zero,$f0
 3c8:	240d0004 	li	t5,4
 3cc:	afad0014 	sw	t5,20(sp)
 3d0:	44060000 	mfc1	a2,$f0
 3d4:	44070000 	mfc1	a3,$f0
 3d8:	02202025 	move	a0,s1
 3dc:	02002825 	move	a1,s0
 3e0:	0c000000 	jal	0 <func_80AB0420>
 3e4:	e7a00010 	swc1	$f0,16(sp)
 3e8:	8e190190 	lw	t9,400(s0)
 3ec:	02002025 	move	a0,s0
 3f0:	02202825 	move	a1,s1
 3f4:	0320f809 	jalr	t9
 3f8:	00000000 	nop
 3fc:	860e01d4 	lh	t6,468(s0)
 400:	3c0141f0 	lui	at,0x41f0
 404:	44814000 	mtc1	at,$f8
 408:	448e2000 	mtc1	t6,$f4
 40c:	3c0f0000 	lui	t7,0x0
 410:	3c180000 	lui	t8,0x0
 414:	468021a0 	cvt.s.w	$f6,$f4
 418:	27180000 	addiu	t8,t8,0
 41c:	25ef0000 	addiu	t7,t7,0
 420:	afaf0010 	sw	t7,16(sp)
 424:	afb80014 	sw	t8,20(sp)
 428:	02202025 	move	a0,s1
 42c:	46083000 	add.s	$f0,$f6,$f8
 430:	02002825 	move	a1,s0
 434:	260601e0 	addiu	a2,s0,480
 438:	44070000 	mfc1	a3,$f0
 43c:	0c000000 	jal	0 <func_80AB0420>
 440:	00000000 	nop
 444:	8e080028 	lw	t0,40(s0)
 448:	3c014270 	lui	at,0x4270
 44c:	8e090024 	lw	t1,36(s0)
 450:	ae08003c 	sw	t0,60(s0)
 454:	c60a003c 	lwc1	$f10,60(s0)
 458:	44818000 	mtc1	at,$f16
 45c:	ae090038 	sw	t1,56(s0)
 460:	8e09002c 	lw	t1,44(s0)
 464:	46105480 	add.s	$f18,$f10,$f16
 468:	ae090040 	sw	t1,64(s0)
 46c:	e612003c 	swc1	$f18,60(s0)
 470:	8fbf0024 	lw	ra,36(sp)
 474:	8fb10020 	lw	s1,32(sp)
 478:	8fb0001c 	lw	s0,28(sp)
 47c:	03e00008 	jr	ra
 480:	27bd0040 	addiu	sp,sp,64

00000484 <func_80AB08A4>:
 484:	27bdffd8 	addiu	sp,sp,-40
 488:	24010005 	li	at,5
 48c:	afbf0014 	sw	ra,20(sp)
 490:	afa40028 	sw	a0,40(sp)
 494:	afa60030 	sw	a2,48(sp)
 498:	10a1000e 	beq	a1,at,4d4 <func_80AB08A4+0x50>
 49c:	afa70034 	sw	a3,52(sp)
 4a0:	24010006 	li	at,6
 4a4:	10a1000b 	beq	a1,at,4d4 <func_80AB08A4+0x50>
 4a8:	24010007 	li	at,7
 4ac:	10a10009 	beq	a1,at,4d4 <func_80AB08A4+0x50>
 4b0:	2401000b 	li	at,11
 4b4:	10a10007 	beq	a1,at,4d4 <func_80AB08A4+0x50>
 4b8:	2401000c 	li	at,12
 4bc:	10a10005 	beq	a1,at,4d4 <func_80AB08A4+0x50>
 4c0:	2401000d 	li	at,13
 4c4:	10a10003 	beq	a1,at,4d4 <func_80AB08A4+0x50>
 4c8:	2401000e 	li	at,14
 4cc:	54a10025 	bnel	a1,at,564 <func_80AB08A4+0xe0>
 4d0:	8fbf0014 	lw	ra,20(sp)
 4d4:	8fae003c 	lw	t6,60(sp)
 4d8:	00057840 	sll	t7,a1,0x1
 4dc:	01cf1821 	addu	v1,t6,t7
 4e0:	8464020a 	lh	a0,522(v1)
 4e4:	0c000000 	jal	0 <func_80AB0420>
 4e8:	afa3001c 	sw	v1,28(sp)
 4ec:	8fa20038 	lw	v0,56(sp)
 4f0:	3c014348 	lui	at,0x4348
 4f4:	44814000 	mtc1	at,$f8
 4f8:	84580002 	lh	t8,2(v0)
 4fc:	8fa3001c 	lw	v1,28(sp)
 500:	46080282 	mul.s	$f10,$f0,$f8
 504:	44982000 	mtc1	t8,$f4
 508:	00000000 	nop
 50c:	468021a0 	cvt.s.w	$f6,$f4
 510:	460a3400 	add.s	$f16,$f6,$f10
 514:	4600848d 	trunc.w.s	$f18,$f16
 518:	44089000 	mfc1	t0,$f18
 51c:	00000000 	nop
 520:	a4480002 	sh	t0,2(v0)
 524:	0c000000 	jal	0 <func_80AB0420>
 528:	8464022a 	lh	a0,554(v1)
 52c:	8fa20038 	lw	v0,56(sp)
 530:	3c014348 	lui	at,0x4348
 534:	44813000 	mtc1	at,$f6
 538:	84490004 	lh	t1,4(v0)
 53c:	46060282 	mul.s	$f10,$f0,$f6
 540:	44892000 	mtc1	t1,$f4
 544:	00000000 	nop
 548:	46802220 	cvt.s.w	$f8,$f4
 54c:	460a4400 	add.s	$f16,$f8,$f10
 550:	4600848d 	trunc.w.s	$f18,$f16
 554:	440b9000 	mfc1	t3,$f18
 558:	00000000 	nop
 55c:	a44b0004 	sh	t3,4(v0)
 560:	8fbf0014 	lw	ra,20(sp)
 564:	27bd0028 	addiu	sp,sp,40
 568:	00001025 	move	v0,zero
 56c:	03e00008 	jr	ra
 570:	00000000 	nop

00000574 <func_80AB0994>:
 574:	afa40000 	sw	a0,0(sp)
 578:	afa50004 	sw	a1,4(sp)
 57c:	afa60008 	sw	a2,8(sp)
 580:	03e00008 	jr	ra
 584:	afa7000c 	sw	a3,12(sp)

00000588 <func_80AB09A8>:
 588:	27bdffe8 	addiu	sp,sp,-24
 58c:	afbf0014 	sw	ra,20(sp)
 590:	afa5001c 	sw	a1,28(sp)
 594:	afa60020 	sw	a2,32(sp)
 598:	afa70024 	sw	a3,36(sp)
 59c:	0c000000 	jal	0 <func_80AB0420>
 5a0:	24050010 	li	a1,16
 5a4:	3c0efb00 	lui	t6,0xfb00
 5a8:	ac4e0000 	sw	t6,0(v0)
 5ac:	93a90023 	lbu	t1,35(sp)
 5b0:	93b8001f 	lbu	t8,31(sp)
 5b4:	93ad0027 	lbu	t5,39(sp)
 5b8:	93a8002b 	lbu	t0,43(sp)
 5bc:	00095400 	sll	t2,t1,0x10
 5c0:	0018ce00 	sll	t9,t8,0x18
 5c4:	032a5825 	or	t3,t9,t2
 5c8:	000d7200 	sll	t6,t5,0x8
 5cc:	016e7825 	or	t7,t3,t6
 5d0:	3c19df00 	lui	t9,0xdf00
 5d4:	01e84825 	or	t1,t7,t0
 5d8:	ac490004 	sw	t1,4(v0)
 5dc:	ac590008 	sw	t9,8(v0)
 5e0:	ac40000c 	sw	zero,12(v0)
 5e4:	8fbf0014 	lw	ra,20(sp)
 5e8:	27bd0018 	addiu	sp,sp,24
 5ec:	03e00008 	jr	ra
 5f0:	00000000 	nop

000005f4 <EnMu_Draw>:
 5f4:	27bdff50 	addiu	sp,sp,-176
 5f8:	afb70044 	sw	s7,68(sp)
 5fc:	3c0e0000 	lui	t6,0x0
 600:	27b70084 	addiu	s7,sp,132
 604:	afbe0048 	sw	s8,72(sp)
 608:	afb60040 	sw	s6,64(sp)
 60c:	25ce0000 	addiu	t6,t6,0
 610:	0080b025 	move	s6,a0
 614:	00a0f025 	move	s8,a1
 618:	afbf004c 	sw	ra,76(sp)
 61c:	afb5003c 	sw	s5,60(sp)
 620:	afb40038 	sw	s4,56(sp)
 624:	afb30034 	sw	s3,52(sp)
 628:	afb20030 	sw	s2,48(sp)
 62c:	afb1002c 	sw	s1,44(sp)
 630:	afb00028 	sw	s0,40(sp)
 634:	25c80024 	addiu	t0,t6,36
 638:	02e0c825 	move	t9,s7
 63c:	8dd80000 	lw	t8,0(t6)
 640:	25ce000c 	addiu	t6,t6,12
 644:	2739000c 	addiu	t9,t9,12
 648:	af38fff4 	sw	t8,-12(t9)
 64c:	8dcffff8 	lw	t7,-8(t6)
 650:	af2ffff8 	sw	t7,-8(t9)
 654:	8dd8fffc 	lw	t8,-4(t6)
 658:	15c8fff8 	bne	t6,t0,63c <EnMu_Draw+0x48>
 65c:	af38fffc 	sw	t8,-4(t9)
 660:	8dd80000 	lw	t8,0(t6)
 664:	3c0a0000 	lui	t2,0x0
 668:	254a0000 	addiu	t2,t2,0
 66c:	af380000 	sw	t8,0(t9)
 670:	8d4c0000 	lw	t4,0(t2)
 674:	27a9007c 	addiu	t1,sp,124
 678:	3c060000 	lui	a2,0x0
 67c:	ad2c0000 	sw	t4,0(t1)
 680:	914c0004 	lbu	t4,4(t2)
 684:	24c60000 	addiu	a2,a2,0
 688:	27a40064 	addiu	a0,sp,100
 68c:	a12c0004 	sb	t4,4(t1)
 690:	8fc50000 	lw	a1,0(s8)
 694:	24070202 	li	a3,514
 698:	0c000000 	jal	0 <func_80AB0420>
 69c:	00a09825 	move	s3,a1
 6a0:	3c01c496 	lui	at,0xc496
 6a4:	44816000 	mtc1	at,$f12
 6a8:	44807000 	mtc1	zero,$f14
 6ac:	3c06c4af 	lui	a2,0xc4af
 6b0:	0c000000 	jal	0 <func_80AB0420>
 6b4:	24070001 	li	a3,1
 6b8:	27b1007c 	addiu	s1,sp,124
 6bc:	00008025 	move	s0,zero
 6c0:	24150014 	li	s5,20
 6c4:	3c14db06 	lui	s4,0xdb06
 6c8:	8e7202c0 	lw	s2,704(s3)
 6cc:	264d0008 	addiu	t5,s2,8
 6d0:	ae6d02c0 	sw	t5,704(s3)
 6d4:	92280000 	lbu	t0,0(s1)
 6d8:	00087080 	sll	t6,t0,0x2
 6dc:	31d9ffff 	andi	t9,t6,0xffff
 6e0:	03347825 	or	t7,t9,s4
 6e4:	ae4f0000 	sw	t7,0(s2)
 6e8:	86d8001c 	lh	t8,28(s6)
 6ec:	8fc40000 	lw	a0,0(s8)
 6f0:	00184880 	sll	t1,t8,0x2
 6f4:	01384821 	addu	t1,t1,t8
 6f8:	00094880 	sll	t1,t1,0x2
 6fc:	02e95021 	addu	t2,s7,t1
 700:	01501021 	addu	v0,t2,s0
 704:	904b0003 	lbu	t3,3(v0)
 708:	90450000 	lbu	a1,0(v0)
 70c:	90460001 	lbu	a2,1(v0)
 710:	90470002 	lbu	a3,2(v0)
 714:	0c000000 	jal	0 <func_80AB0420>
 718:	afab0010 	sw	t3,16(sp)
 71c:	26100004 	addiu	s0,s0,4
 720:	26310001 	addiu	s1,s1,1
 724:	1615ffe8 	bne	s0,s5,6c8 <EnMu_Draw+0xd4>
 728:	ae420004 	sw	v0,4(s2)
 72c:	8ec50150 	lw	a1,336(s6)
 730:	8ec6016c 	lw	a2,364(s6)
 734:	92c7014e 	lbu	a3,334(s6)
 738:	3c0c0000 	lui	t4,0x0
 73c:	3c0d0000 	lui	t5,0x0
 740:	25ad0000 	addiu	t5,t5,0
 744:	258c0000 	addiu	t4,t4,0
 748:	afac0010 	sw	t4,16(sp)
 74c:	afad0014 	sw	t5,20(sp)
 750:	afb60018 	sw	s6,24(sp)
 754:	0c000000 	jal	0 <func_80AB0420>
 758:	03c02025 	move	a0,s8
 75c:	3c060000 	lui	a2,0x0
 760:	24c60000 	addiu	a2,a2,0
 764:	27a40064 	addiu	a0,sp,100
 768:	8fc50000 	lw	a1,0(s8)
 76c:	0c000000 	jal	0 <func_80AB0420>
 770:	24070216 	li	a3,534
 774:	8fbf004c 	lw	ra,76(sp)
 778:	8fb00028 	lw	s0,40(sp)
 77c:	8fb1002c 	lw	s1,44(sp)
 780:	8fb20030 	lw	s2,48(sp)
 784:	8fb30034 	lw	s3,52(sp)
 788:	8fb40038 	lw	s4,56(sp)
 78c:	8fb5003c 	lw	s5,60(sp)
 790:	8fb60040 	lw	s6,64(sp)
 794:	8fb70044 	lw	s7,68(sp)
 798:	8fbe0048 	lw	s8,72(sp)
 79c:	03e00008 	jr	ra
 7a0:	27bd00b0 	addiu	sp,sp,176
	...
