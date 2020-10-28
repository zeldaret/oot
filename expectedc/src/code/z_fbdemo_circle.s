
build/src/code/z_fbdemo_circle.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <TransitionCircle_Start>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0034 	sw	ra,52(sp)
   8:	afb00030 	sw	s0,48(sp)
   c:	90820017 	lbu	v0,23(a0)
  10:	24030001 	li	v1,1
  14:	00808025 	move	s0,a0
  18:	1043000b 	beq	v0,v1,48 <TransitionCircle_Start+0x48>
  1c:	a0800018 	sb	zero,24(a0)
  20:	24040002 	li	a0,2
  24:	1044000d 	beq	v0,a0,5c <TransitionCircle_Start+0x5c>
  28:	3c180000 	lui	t8,0x0
  2c:	24010003 	li	at,3
  30:	1041000d 	beq	v0,at,68 <TransitionCircle_Start+0x68>
  34:	3c190000 	lui	t9,0x0
  38:	3c0e0000 	lui	t6,0x0
  3c:	25ce0000 	addiu	t6,t6,0
  40:	1000000b 	b	70 <TransitionCircle_Start+0x70>
  44:	ae0e00a0 	sw	t6,160(s0)
  48:	3c0f0000 	lui	t7,0x0
  4c:	25ef0000 	addiu	t7,t7,0
  50:	ae0f00a0 	sw	t7,160(s0)
  54:	10000006 	b	70 <TransitionCircle_Start+0x70>
  58:	24040002 	li	a0,2
  5c:	27180000 	addiu	t8,t8,0
  60:	10000003 	b	70 <TransitionCircle_Start+0x70>
  64:	ae1800a0 	sw	t8,160(s0)
  68:	27390000 	addiu	t9,t9,0
  6c:	ae1900a0 	sw	t9,160(s0)
  70:	92080016 	lbu	t0,22(s0)
  74:	24090014 	li	t1,20
  78:	240a000a 	li	t2,10
  7c:	15000003 	bnez	t0,8c <TransitionCircle_Start+0x8c>
  80:	240b00ff 	li	t3,255
  84:	10000002 	b	90 <TransitionCircle_Start+0x90>
  88:	ae090010 	sw	t1,16(s0)
  8c:	ae0a0010 	sw	t2,16(s0)
  90:	92020015 	lbu	v0,21(s0)
  94:	14400003 	bnez	v0,a4 <TransitionCircle_Start+0xa4>
  98:	00000000 	nop
  9c:	10000018 	b	100 <TransitionCircle_Start+0x100>
  a0:	ae0b0000 	sw	t3,0(s0)
  a4:	14620004 	bne	v1,v0,b8 <TransitionCircle_Start+0xb8>
  a8:	3c0ca0a0 	lui	t4,0xa0a0
  ac:	358ca0ff 	ori	t4,t4,0xa0ff
  b0:	10000013 	b	100 <TransitionCircle_Start+0x100>
  b4:	ae0c0000 	sw	t4,0(s0)
  b8:	14820007 	bne	a0,v0,d8 <TransitionCircle_Start+0xd8>
  bc:	240d00ff 	li	t5,255
  c0:	24020064 	li	v0,100
  c4:	a2020000 	sb	v0,0(s0)
  c8:	a2020001 	sb	v0,1(s0)
  cc:	a2020002 	sb	v0,2(s0)
  d0:	1000000b 	b	100 <TransitionCircle_Start+0x100>
  d4:	a20d0003 	sb	t5,3(s0)
  d8:	920f0017 	lbu	t7,23(s0)
  dc:	240e0028 	li	t6,40
  e0:	ae0e0010 	sw	t6,16(s0)
  e4:	146f0004 	bne	v1,t7,f8 <TransitionCircle_Start+0xf8>
  e8:	3c19a0a0 	lui	t9,0xa0a0
  ec:	241800ff 	li	t8,255
  f0:	10000003 	b	100 <TransitionCircle_Start+0x100>
  f4:	ae180000 	sw	t8,0(s0)
  f8:	3739a0ff 	ori	t9,t9,0xa0ff
  fc:	ae190000 	sw	t9,0(s0)
 100:	92080014 	lbu	t0,20(s0)
 104:	51000009 	beqzl	t0,12c <TransitionCircle_Start+0x12c>
 108:	920c0017 	lbu	t4,23(s0)
 10c:	92090015 	lbu	t1,21(s0)
 110:	24010003 	li	at,3
 114:	ae00000c 	sw	zero,12(s0)
 118:	15210012 	bne	t1,at,164 <TransitionCircle_Start+0x164>
 11c:	240a00fa 	li	t2,250
 120:	10000010 	b	164 <TransitionCircle_Start+0x164>
 124:	ae0a000c 	sw	t2,12(s0)
 128:	920c0017 	lbu	t4,23(s0)
 12c:	240b01f4 	li	t3,500
 130:	ae0b000c 	sw	t3,12(s0)
 134:	148c000b 	bne	a0,t4,164 <TransitionCircle_Start+0x164>
 138:	3c070000 	lui	a3,0x0
 13c:	3c0d0000 	lui	t5,0x0
 140:	24e70000 	addiu	a3,a3,0
 144:	25ad0000 	addiu	t5,t5,0
 148:	3c050000 	lui	a1,0x0
 14c:	24a50000 	addiu	a1,a1,0
 150:	afad0014 	sw	t5,20(sp)
 154:	afa70010 	sw	a3,16(sp)
 158:	24045804 	li	a0,22532
 15c:	0c000000 	jal	0 <TransitionCircle_Start>
 160:	24060004 	li	a2,4
 164:	3c014120 	lui	at,0x4120
 168:	44812000 	mtc1	at,$f4
 16c:	3c014648 	lui	at,0x4648
 170:	44813000 	mtc1	at,$f6
 174:	3c013f80 	lui	at,0x3f80
 178:	44814000 	mtc1	at,$f8
 17c:	3c073faa 	lui	a3,0x3faa
 180:	34e7aaab 	ori	a3,a3,0xaaab
 184:	26040020 	addiu	a0,s0,32
 188:	2605001a 	addiu	a1,s0,26
 18c:	3c064270 	lui	a2,0x4270
 190:	e7a40010 	swc1	$f4,16(sp)
 194:	e7a60014 	swc1	$f6,20(sp)
 198:	0c000000 	jal	0 <TransitionCircle_Start>
 19c:	e7a80018 	swc1	$f8,24(sp)
 1a0:	44800000 	mtc1	zero,$f0
 1a4:	3c013f80 	lui	at,0x3f80
 1a8:	44815000 	mtc1	at,$f10
 1ac:	44050000 	mfc1	a1,$f0
 1b0:	44060000 	mfc1	a2,$f0
 1b4:	26040060 	addiu	a0,s0,96
 1b8:	3c0743c8 	lui	a3,0x43c8
 1bc:	e7a00010 	swc1	$f0,16(sp)
 1c0:	e7a00014 	swc1	$f0,20(sp)
 1c4:	e7a00018 	swc1	$f0,24(sp)
 1c8:	e7a0001c 	swc1	$f0,28(sp)
 1cc:	e7a00024 	swc1	$f0,36(sp)
 1d0:	0c000000 	jal	0 <TransitionCircle_Start>
 1d4:	e7aa0020 	swc1	$f10,32(sp)
 1d8:	8fbf0034 	lw	ra,52(sp)
 1dc:	8fb00030 	lw	s0,48(sp)
 1e0:	27bd0038 	addiu	sp,sp,56
 1e4:	03e00008 	jr	ra
 1e8:	00000000 	nop

000001ec <TransitionCircle_Init>:
 1ec:	27bdffe8 	addiu	sp,sp,-24
 1f0:	afbf0014 	sw	ra,20(sp)
 1f4:	afa40018 	sw	a0,24(sp)
 1f8:	0c000000 	jal	0 <TransitionCircle_Start>
 1fc:	24050228 	li	a1,552
 200:	8fbf0014 	lw	ra,20(sp)
 204:	8fa20018 	lw	v0,24(sp)
 208:	27bd0018 	addiu	sp,sp,24
 20c:	03e00008 	jr	ra
 210:	00000000 	nop

00000214 <TransitionCircle_Destroy>:
 214:	03e00008 	jr	ra
 218:	afa40000 	sw	a0,0(sp)

0000021c <TransitionCircle_Update>:
 21c:	27bdffd8 	addiu	sp,sp,-40
 220:	afbf0024 	sw	ra,36(sp)
 224:	afb00020 	sw	s0,32(sp)
 228:	afa5002c 	sw	a1,44(sp)
 22c:	908e0014 	lbu	t6,20(a0)
 230:	00808025 	move	s0,a0
 234:	51c00031 	beqzl	t6,2fc <TransitionCircle_Update+0xe0>
 238:	8e0f0010 	lw	t7,16(s0)
 23c:	8e02000c 	lw	v0,12(s0)
 240:	54400012 	bnezl	v0,28c <TransitionCircle_Update+0x70>
 244:	8e190010 	lw	t9,16(s0)
 248:	920f0017 	lbu	t7,23(s0)
 24c:	24010002 	li	at,2
 250:	55e1000e 	bnel	t7,at,28c <TransitionCircle_Update+0x70>
 254:	8e190010 	lw	t9,16(s0)
 258:	3c070000 	lui	a3,0x0
 25c:	3c180000 	lui	t8,0x0
 260:	24e70000 	addiu	a3,a3,0
 264:	27180000 	addiu	t8,t8,0
 268:	3c050000 	lui	a1,0x0
 26c:	24a50000 	addiu	a1,a1,0
 270:	afb80014 	sw	t8,20(sp)
 274:	afa70010 	sw	a3,16(sp)
 278:	24045803 	li	a0,22531
 27c:	0c000000 	jal	0 <TransitionCircle_Start>
 280:	24060004 	li	a2,4
 284:	8e02000c 	lw	v0,12(s0)
 288:	8e190010 	lw	t9,16(s0)
 28c:	24030003 	li	v1,3
 290:	8fa9002c 	lw	t1,44(sp)
 294:	03230019 	multu	t9,v1
 298:	240d01f4 	li	t5,500
 29c:	240e0001 	li	t6,1
 2a0:	00004012 	mflo	t0
	...
 2ac:	0109001a 	div	zero,t0,t1
 2b0:	15200002 	bnez	t1,2bc <TransitionCircle_Update+0xa0>
 2b4:	00000000 	nop
 2b8:	0007000d 	break	0x7
 2bc:	2401ffff 	li	at,-1
 2c0:	15210004 	bne	t1,at,2d4 <TransitionCircle_Update+0xb8>
 2c4:	3c018000 	lui	at,0x8000
 2c8:	15010002 	bne	t0,at,2d4 <TransitionCircle_Update+0xb8>
 2cc:	00000000 	nop
 2d0:	0006000d 	break	0x6
 2d4:	00005012 	mflo	t2
 2d8:	004a5821 	addu	t3,v0,t2
 2dc:	296101f4 	slti	at,t3,500
 2e0:	ae0b000c 	sw	t3,12(s0)
 2e4:	14200029 	bnez	at,38c <TransitionCircle_Update+0x170>
 2e8:	01606025 	move	t4,t3
 2ec:	ae0d000c 	sw	t5,12(s0)
 2f0:	10000026 	b	38c <TransitionCircle_Update+0x170>
 2f4:	a20e0018 	sb	t6,24(s0)
 2f8:	8e0f0010 	lw	t7,16(s0)
 2fc:	24030003 	li	v1,3
 300:	8fb9002c 	lw	t9,44(sp)
 304:	01e30019 	multu	t7,v1
 308:	8e09000c 	lw	t1,12(s0)
 30c:	920b0015 	lbu	t3,21(s0)
 310:	0000c012 	mflo	t8
	...
 31c:	0319001a 	div	zero,t8,t9
 320:	00004012 	mflo	t0
 324:	01285023 	subu	t2,t1,t0
 328:	17200002 	bnez	t9,334 <TransitionCircle_Update+0x118>
 32c:	00000000 	nop
 330:	0007000d 	break	0x7
 334:	2401ffff 	li	at,-1
 338:	17210004 	bne	t9,at,34c <TransitionCircle_Update+0x130>
 33c:	3c018000 	lui	at,0x8000
 340:	17010002 	bne	t8,at,34c <TransitionCircle_Update+0x130>
 344:	00000000 	nop
 348:	0006000d 	break	0x6
 34c:	ae0a000c 	sw	t2,12(s0)
 350:	506b0007 	beql	v1,t3,370 <TransitionCircle_Update+0x154>
 354:	8e0e000c 	lw	t6,12(s0)
 358:	1d40000c 	bgtz	t2,38c <TransitionCircle_Update+0x170>
 35c:	240d0001 	li	t5,1
 360:	ae00000c 	sw	zero,12(s0)
 364:	10000009 	b	38c <TransitionCircle_Update+0x170>
 368:	a20d0018 	sb	t5,24(s0)
 36c:	8e0e000c 	lw	t6,12(s0)
 370:	240f00fa 	li	t7,250
 374:	24180001 	li	t8,1
 378:	29c100fb 	slti	at,t6,251
 37c:	50200004 	beqzl	at,390 <TransitionCircle_Update+0x174>
 380:	8fbf0024 	lw	ra,36(sp)
 384:	ae0f000c 	sw	t7,12(s0)
 388:	a2180018 	sb	t8,24(s0)
 38c:	8fbf0024 	lw	ra,36(sp)
 390:	8fb00020 	lw	s0,32(sp)
 394:	27bd0028 	addiu	sp,sp,40
 398:	03e00008 	jr	ra
 39c:	00000000 	nop

000003a0 <TransitionCircle_Draw>:
 3a0:	27bdff80 	addiu	sp,sp,-128
 3a4:	afbf0024 	sw	ra,36(sp)
 3a8:	afb00020 	sw	s0,32(sp)
 3ac:	afa50084 	sw	a1,132(sp)
 3b0:	8caf0000 	lw	t7,0(a1)
 3b4:	3c0ce700 	lui	t4,0xe700
 3b8:	00808025 	move	s0,a0
 3bc:	afaf007c 	sw	t7,124(sp)
 3c0:	90820019 	lbu	v0,25(a0)
 3c4:	240d0040 	li	t5,64
 3c8:	24070010 	li	a3,16
 3cc:	0002c080 	sll	t8,v0,0x2
 3d0:	0302c023 	subu	t8,t8,v0
 3d4:	0018c180 	sll	t8,t8,0x6
 3d8:	0098c821 	addu	t9,a0,t8
 3dc:	272800a8 	addiu	t0,t9,168
 3e0:	afa80078 	sw	t0,120(sp)
 3e4:	38490001 	xori	t1,v0,0x1
 3e8:	a0890019 	sb	t1,25(a0)
 3ec:	8faa007c 	lw	t2,124(sp)
 3f0:	27a4007c 	addiu	a0,sp,124
 3f4:	254b0008 	addiu	t3,t2,8
 3f8:	afab007c 	sw	t3,124(sp)
 3fc:	ad400004 	sw	zero,4(t2)
 400:	ad4c0000 	sw	t4,0(t2)
 404:	8e06000c 	lw	a2,12(s0)
 408:	8e050008 	lw	a1,8(s0)
 40c:	0c000000 	jal	0 <TransitionCircle_Start>
 410:	afad0010 	sw	t5,16(sp)
 414:	8fae007c 	lw	t6,124(sp)
 418:	3c18db06 	lui	t8,0xdb06
 41c:	37180024 	ori	t8,t8,0x24
 420:	25cf0008 	addiu	t7,t6,8
 424:	afaf007c 	sw	t7,124(sp)
 428:	adc20004 	sw	v0,4(t6)
 42c:	add80000 	sw	t8,0(t6)
 430:	8fb9007c 	lw	t9,124(sp)
 434:	3c09db06 	lui	t1,0xdb06
 438:	35290020 	ori	t1,t1,0x20
 43c:	27280008 	addiu	t0,t9,8
 440:	afa8007c 	sw	t0,124(sp)
 444:	af290000 	sw	t1,0(t9)
 448:	8e0a00a0 	lw	t2,160(s0)
 44c:	3c0dfa00 	lui	t5,0xfa00
 450:	3c010000 	lui	at,0x0
 454:	af2a0004 	sw	t2,4(t9)
 458:	8fab007c 	lw	t3,124(sp)
 45c:	3c19fb00 	lui	t9,0xfb00
 460:	256c0008 	addiu	t4,t3,8
 464:	afac007c 	sw	t4,124(sp)
 468:	ad6d0000 	sw	t5,0(t3)
 46c:	8e0e0000 	lw	t6,0(s0)
 470:	260c0020 	addiu	t4,s0,32
 474:	ad6e0004 	sw	t6,4(t3)
 478:	8faf007c 	lw	t7,124(sp)
 47c:	3c0bda38 	lui	t3,0xda38
 480:	356b0007 	ori	t3,t3,0x7
 484:	25f80008 	addiu	t8,t7,8
 488:	afb8007c 	sw	t8,124(sp)
 48c:	adf90000 	sw	t9,0(t7)
 490:	8e080000 	lw	t0,0(s0)
 494:	ade80004 	sw	t0,4(t7)
 498:	8fa9007c 	lw	t1,124(sp)
 49c:	3c0fdb0e 	lui	t7,0xdb0e
 4a0:	252a0008 	addiu	t2,t1,8
 4a4:	afaa007c 	sw	t2,124(sp)
 4a8:	ad2c0004 	sw	t4,4(t1)
 4ac:	ad2b0000 	sw	t3,0(t1)
 4b0:	8fad007c 	lw	t5,124(sp)
 4b4:	3c09da38 	lui	t1,0xda38
 4b8:	35290005 	ori	t1,t1,0x5
 4bc:	25ae0008 	addiu	t6,t5,8
 4c0:	afae007c 	sw	t6,124(sp)
 4c4:	adaf0000 	sw	t7,0(t5)
 4c8:	9618001a 	lhu	t8,26(s0)
 4cc:	260a0060 	addiu	t2,s0,96
 4d0:	adb80004 	sw	t8,4(t5)
 4d4:	8fb9007c 	lw	t9,124(sp)
 4d8:	27280008 	addiu	t0,t9,8
 4dc:	afa8007c 	sw	t0,124(sp)
 4e0:	af2a0004 	sw	t2,4(t9)
 4e4:	af290000 	sw	t1,0(t9)
 4e8:	c4200000 	lwc1	$f0,0(at)
 4ec:	3c013f80 	lui	at,0x3f80
 4f0:	44811000 	mtc1	at,$f2
 4f4:	00000000 	nop
 4f8:	46020032 	c.eq.s	$f0,$f2
 4fc:	00000000 	nop
 500:	45030011 	bc1tl	548 <TransitionCircle_Draw+0x1a8>
 504:	44800000 	mtc1	zero,$f0
 508:	44050000 	mfc1	a1,$f0
 50c:	44060000 	mfc1	a2,$f0
 510:	44071000 	mfc1	a3,$f2
 514:	0c000000 	jal	0 <TransitionCircle_Start>
 518:	8fa40078 	lw	a0,120(sp)
 51c:	8fab007c 	lw	t3,124(sp)
 520:	3c0dda38 	lui	t5,0xda38
 524:	35ad0003 	ori	t5,t5,0x3
 528:	256c0008 	addiu	t4,t3,8
 52c:	afac007c 	sw	t4,124(sp)
 530:	ad6d0000 	sw	t5,0(t3)
 534:	8fae0078 	lw	t6,120(sp)
 538:	3c013f80 	lui	at,0x3f80
 53c:	44811000 	mtc1	at,$f2
 540:	ad6e0004 	sw	t6,4(t3)
 544:	44800000 	mtc1	zero,$f0
 548:	8fb00078 	lw	s0,120(sp)
 54c:	46000032 	c.eq.s	$f0,$f0
 550:	26100040 	addiu	s0,s0,64
 554:	02002025 	move	a0,s0
 558:	4503000f 	bc1tl	598 <TransitionCircle_Draw+0x1f8>
 55c:	46000032 	c.eq.s	$f0,$f0
 560:	44050000 	mfc1	a1,$f0
 564:	44060000 	mfc1	a2,$f0
 568:	44070000 	mfc1	a3,$f0
 56c:	0c000000 	jal	0 <TransitionCircle_Start>
 570:	e7a20010 	swc1	$f2,16(sp)
 574:	8faf007c 	lw	t7,124(sp)
 578:	3c19da38 	lui	t9,0xda38
 57c:	37390001 	ori	t9,t9,0x1
 580:	25f80008 	addiu	t8,t7,8
 584:	afb8007c 	sw	t8,124(sp)
 588:	44800000 	mtc1	zero,$f0
 58c:	adf00004 	sw	s0,4(t7)
 590:	adf90000 	sw	t9,0(t7)
 594:	46000032 	c.eq.s	$f0,$f0
 598:	8fb00078 	lw	s0,120(sp)
 59c:	45000005 	bc1f	5b4 <TransitionCircle_Draw+0x214>
 5a0:	26100080 	addiu	s0,s0,128
 5a4:	46000032 	c.eq.s	$f0,$f0
 5a8:	00000000 	nop
 5ac:	4503000e 	bc1tl	5e8 <TransitionCircle_Draw+0x248>
 5b0:	8fab007c 	lw	t3,124(sp)
 5b4:	44050000 	mfc1	a1,$f0
 5b8:	44060000 	mfc1	a2,$f0
 5bc:	44070000 	mfc1	a3,$f0
 5c0:	0c000000 	jal	0 <TransitionCircle_Start>
 5c4:	02002025 	move	a0,s0
 5c8:	8fa8007c 	lw	t0,124(sp)
 5cc:	3c0ada38 	lui	t2,0xda38
 5d0:	354a0001 	ori	t2,t2,0x1
 5d4:	25090008 	addiu	t1,t0,8
 5d8:	afa9007c 	sw	t1,124(sp)
 5dc:	ad100004 	sw	s0,4(t0)
 5e0:	ad0a0000 	sw	t2,0(t0)
 5e4:	8fab007c 	lw	t3,124(sp)
 5e8:	3c0e0000 	lui	t6,0x0
 5ec:	25ce0000 	addiu	t6,t6,0
 5f0:	256c0008 	addiu	t4,t3,8
 5f4:	afac007c 	sw	t4,124(sp)
 5f8:	3c0dde00 	lui	t5,0xde00
 5fc:	ad6d0000 	sw	t5,0(t3)
 600:	ad6e0004 	sw	t6,4(t3)
 604:	8faf007c 	lw	t7,124(sp)
 608:	3c19e700 	lui	t9,0xe700
 60c:	25f80008 	addiu	t8,t7,8
 610:	afb8007c 	sw	t8,124(sp)
 614:	ade00004 	sw	zero,4(t7)
 618:	adf90000 	sw	t9,0(t7)
 61c:	8fa90084 	lw	t1,132(sp)
 620:	8fa8007c 	lw	t0,124(sp)
 624:	ad280000 	sw	t0,0(t1)
 628:	8fbf0024 	lw	ra,36(sp)
 62c:	8fb00020 	lw	s0,32(sp)
 630:	27bd0080 	addiu	sp,sp,128
 634:	03e00008 	jr	ra
 638:	00000000 	nop

0000063c <TransitionCircle_IsDone>:
 63c:	03e00008 	jr	ra
 640:	90820018 	lbu	v0,24(a0)

00000644 <TransitionCircle_SetType>:
 644:	30ae0080 	andi	t6,a1,0x80
 648:	11c0000d 	beqz	t6,680 <TransitionCircle_SetType+0x3c>
 64c:	24010001 	li	at,1
 650:	00057943 	sra	t7,a1,0x5
 654:	0005c8c3 	sra	t9,a1,0x3
 658:	00055043 	sra	t2,a1,0x1
 65c:	31f80001 	andi	t8,t7,0x1
 660:	33280003 	andi	t0,t9,0x3
 664:	30a90001 	andi	t1,a1,0x1
 668:	314b0003 	andi	t3,t2,0x3
 66c:	a0980014 	sb	t8,20(a0)
 670:	a0880015 	sb	t0,21(a0)
 674:	a0890016 	sb	t1,22(a0)
 678:	03e00008 	jr	ra
 67c:	a08b0017 	sb	t3,23(a0)
 680:	14a10003 	bne	a1,at,690 <TransitionCircle_SetType+0x4c>
 684:	240c0001 	li	t4,1
 688:	03e00008 	jr	ra
 68c:	a08c0014 	sb	t4,20(a0)
 690:	a0800014 	sb	zero,20(a0)
 694:	03e00008 	jr	ra
 698:	00000000 	nop

0000069c <TransitionCircle_SetColor>:
 69c:	03e00008 	jr	ra
 6a0:	ac850000 	sw	a1,0(a0)

000006a4 <TransitionCircle_SetEnvColor>:
 6a4:	03e00008 	jr	ra
 6a8:	ac850004 	sw	a1,4(a0)
 6ac:	00000000 	nop
