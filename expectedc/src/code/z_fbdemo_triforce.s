
build/src/code/z_fbdemo_triforce.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <TransitionTriforce_Start>:
   0:	8c82000c 	lw	v0,12(a0)
   4:	24010001 	li	at,1
   8:	10410002 	beq	v0,at,14 <TransitionTriforce_Start+0x14>
   c:	24010002 	li	at,2
  10:	14410004 	bne	v0,at,24 <TransitionTriforce_Start+0x24>
  14:	3c013f80 	lui	at,0x3f80
  18:	44812000 	mtc1	at,$f4
  1c:	03e00008 	jr	ra
  20:	e4840004 	swc1	$f4,4(a0)
  24:	3c010000 	lui	at,0x0
  28:	c4260020 	lwc1	$f6,32(at)
  2c:	e4860004 	swc1	$f6,4(a0)
  30:	03e00008 	jr	ra
  34:	00000000 	nop

00000038 <TransitionTriforce_Init>:
  38:	27bdffd0 	addiu	sp,sp,-48
  3c:	afbf002c 	sw	ra,44(sp)
  40:	afb00028 	sw	s0,40(sp)
  44:	00808025 	move	s0,a0
  48:	0c000000 	jal	0 <TransitionTriforce_Start>
  4c:	240501e0 	li	a1,480
  50:	3c0142f0 	lui	at,0x42f0
  54:	44812000 	mtc1	at,$f4
  58:	3c01c47a 	lui	at,0xc47a
  5c:	44813000 	mtc1	at,$f6
  60:	3c01447a 	lui	at,0x447a
  64:	44814000 	mtc1	at,$f8
  68:	3c013f80 	lui	at,0x3f80
  6c:	44815000 	mtc1	at,$f10
  70:	26040018 	addiu	a0,s0,24
  74:	3c05c320 	lui	a1,0xc320
  78:	3c064320 	lui	a2,0x4320
  7c:	3c07c2f0 	lui	a3,0xc2f0
  80:	e7a40010 	swc1	$f4,16(sp)
  84:	e7a60014 	swc1	$f6,20(sp)
  88:	e7a80018 	swc1	$f8,24(sp)
  8c:	0c000000 	jal	0 <TransitionTriforce_Start>
  90:	e7aa001c 	swc1	$f10,28(sp)
  94:	3c013f80 	lui	at,0x3f80
  98:	44818000 	mtc1	at,$f16
  9c:	240e0002 	li	t6,2
  a0:	ae0e000c 	sw	t6,12(s0)
  a4:	3c010000 	lui	at,0x0
  a8:	e6100004 	swc1	$f16,4(s0)
  ac:	c4320024 	lwc1	$f18,36(at)
  b0:	240f0001 	li	t7,1
  b4:	ae0f0010 	sw	t7,16(s0)
  b8:	e6120008 	swc1	$f18,8(s0)
  bc:	8fbf002c 	lw	ra,44(sp)
  c0:	02001025 	move	v0,s0
  c4:	8fb00028 	lw	s0,40(sp)
  c8:	03e00008 	jr	ra
  cc:	27bd0030 	addiu	sp,sp,48

000000d0 <TransitionTriforce_Destroy>:
  d0:	03e00008 	jr	ra
  d4:	afa40000 	sw	a0,0(sp)

000000d8 <TransitionTriforce_Update>:
  d8:	18a00042 	blez	a1,1e4 <TransitionTriforce_Update+0x10c>
  dc:	00a01025 	move	v0,a1
  e0:	3c010000 	lui	at,0x0
  e4:	c42c0028 	lwc1	$f12,40(at)
  e8:	3c013f80 	lui	at,0x3f80
  ec:	44811000 	mtc1	at,$f2
  f0:	24080004 	li	t0,4
  f4:	24070003 	li	a3,3
  f8:	24060002 	li	a2,2
  fc:	24050001 	li	a1,1
 100:	8c83000c 	lw	v1,12(a0)
 104:	2442ffff 	addiu	v0,v0,-1
 108:	14a3000d 	bne	a1,v1,140 <TransitionTriforce_Update+0x68>
 10c:	00000000 	nop
 110:	c4860008 	lwc1	$f6,8(a0)
 114:	c4840004 	lwc1	$f4,4(a0)
 118:	46061201 	sub.s	$f8,$f2,$f6
 11c:	46082002 	mul.s	$f0,$f4,$f8
 120:	460c003c 	c.lt.s	$f0,$f12
 124:	00000000 	nop
 128:	45000003 	bc1f	138 <TransitionTriforce_Update+0x60>
 12c:	00000000 	nop
 130:	1000002a 	b	1dc <TransitionTriforce_Update+0x104>
 134:	e48c0004 	swc1	$f12,4(a0)
 138:	10000028 	b	1dc <TransitionTriforce_Update+0x104>
 13c:	e4800004 	swc1	$f0,4(a0)
 140:	14c3000c 	bne	a2,v1,174 <TransitionTriforce_Update+0x9c>
 144:	00000000 	nop
 148:	c48a0004 	lwc1	$f10,4(a0)
 14c:	c4900008 	lwc1	$f16,8(a0)
 150:	46105001 	sub.s	$f0,$f10,$f16
 154:	460c003c 	c.lt.s	$f0,$f12
 158:	00000000 	nop
 15c:	45000003 	bc1f	16c <TransitionTriforce_Update+0x94>
 160:	00000000 	nop
 164:	1000001d 	b	1dc <TransitionTriforce_Update+0x104>
 168:	e48c0004 	swc1	$f12,4(a0)
 16c:	1000001b 	b	1dc <TransitionTriforce_Update+0x104>
 170:	e4800004 	swc1	$f0,4(a0)
 174:	14e3000d 	bne	a3,v1,1ac <TransitionTriforce_Update+0xd4>
 178:	00000000 	nop
 17c:	c4860008 	lwc1	$f6,8(a0)
 180:	c4920004 	lwc1	$f18,4(a0)
 184:	46061101 	sub.s	$f4,$f2,$f6
 188:	46049003 	div.s	$f0,$f18,$f4
 18c:	4600103c 	c.lt.s	$f2,$f0
 190:	00000000 	nop
 194:	45000003 	bc1f	1a4 <TransitionTriforce_Update+0xcc>
 198:	00000000 	nop
 19c:	1000000f 	b	1dc <TransitionTriforce_Update+0x104>
 1a0:	e4820004 	swc1	$f2,4(a0)
 1a4:	1000000d 	b	1dc <TransitionTriforce_Update+0x104>
 1a8:	e4800004 	swc1	$f0,4(a0)
 1ac:	1503000b 	bne	t0,v1,1dc <TransitionTriforce_Update+0x104>
 1b0:	00000000 	nop
 1b4:	c4880004 	lwc1	$f8,4(a0)
 1b8:	c48a0008 	lwc1	$f10,8(a0)
 1bc:	460a4000 	add.s	$f0,$f8,$f10
 1c0:	4600103c 	c.lt.s	$f2,$f0
 1c4:	00000000 	nop
 1c8:	45020004 	bc1fl	1dc <TransitionTriforce_Update+0x104>
 1cc:	e4800004 	swc1	$f0,4(a0)
 1d0:	10000002 	b	1dc <TransitionTriforce_Update+0x104>
 1d4:	e4820004 	swc1	$f2,4(a0)
 1d8:	e4800004 	swc1	$f0,4(a0)
 1dc:	5440ffc9 	bnezl	v0,104 <TransitionTriforce_Update+0x2c>
 1e0:	8c83000c 	lw	v1,12(a0)
 1e4:	03e00008 	jr	ra
 1e8:	00000000 	nop

000001ec <TransitionTriforce_SetColor>:
 1ec:	03e00008 	jr	ra
 1f0:	ac850000 	sw	a1,0(a0)

000001f4 <TransitionTriforce_SetType>:
 1f4:	03e00008 	jr	ra
 1f8:	ac850010 	sw	a1,16(a0)

000001fc <TransitionTriforce_SetState>:
 1fc:	03e00008 	jr	ra
 200:	ac85000c 	sw	a1,12(a0)

00000204 <TransitionTriforce_Draw>:
 204:	27bdff68 	addiu	sp,sp,-152
 208:	afbf002c 	sw	ra,44(sp)
 20c:	afa40098 	sw	a0,152(sp)
 210:	afa5009c 	sw	a1,156(sp)
 214:	8c820058 	lw	v0,88(a0)
 218:	3c0143b4 	lui	at,0x43b4
 21c:	44812000 	mtc1	at,$f4
 220:	c4820004 	lwc1	$f2,4(a0)
 224:	0002c080 	sll	t8,v0,0x2
 228:	0302c023 	subu	t8,t8,v0
 22c:	0018c180 	sll	t8,t8,0x6
 230:	3c013f20 	lui	at,0x3f20
 234:	46041382 	mul.s	$f14,$f2,$f4
 238:	44813000 	mtc1	at,$f6
 23c:	0098c821 	addu	t9,a0,t8
 240:	8ca30000 	lw	v1,0(a1)
 244:	27280060 	addiu	t0,t9,96
 248:	afa80090 	sw	t0,144(sp)
 24c:	38490001 	xori	t1,v0,0x1
 250:	46061302 	mul.s	$f12,$f2,$f6
 254:	ac890058 	sw	t1,88(a0)
 258:	44805000 	mtc1	zero,$f10
 25c:	46001221 	cvt.d.s	$f8,$f2
 260:	46007421 	cvt.d.s	$f16,$f14
 264:	44074000 	mfc1	a3,$f8
 268:	46005021 	cvt.d.s	$f0,$f10
 26c:	44064800 	mfc1	a2,$f9
 270:	3c040000 	lui	a0,0x0
 274:	24840000 	addiu	a0,a0,0
 278:	f7a00010 	sdc1	$f0,16(sp)
 27c:	f7a00018 	sdc1	$f0,24(sp)
 280:	f7b00020 	sdc1	$f16,32(sp)
 284:	e7ae0080 	swc1	$f14,128(sp)
 288:	e7ac008c 	swc1	$f12,140(sp)
 28c:	0c000000 	jal	0 <TransitionTriforce_Start>
 290:	afa30094 	sw	v1,148(sp)
 294:	c7ac008c 	lwc1	$f12,140(sp)
 298:	8fa40090 	lw	a0,144(sp)
 29c:	3c073f80 	lui	a3,0x3f80
 2a0:	44056000 	mfc1	a1,$f12
 2a4:	44066000 	mfc1	a2,$f12
 2a8:	0c000000 	jal	0 <TransitionTriforce_Start>
 2ac:	00000000 	nop
 2b0:	44800000 	mtc1	zero,$f0
 2b4:	8fa40090 	lw	a0,144(sp)
 2b8:	3c013f80 	lui	at,0x3f80
 2bc:	44819000 	mtc1	at,$f18
 2c0:	24840040 	addiu	a0,a0,64
 2c4:	44060000 	mfc1	a2,$f0
 2c8:	44070000 	mfc1	a3,$f0
 2cc:	afa40034 	sw	a0,52(sp)
 2d0:	8fa50080 	lw	a1,128(sp)
 2d4:	0c000000 	jal	0 <TransitionTriforce_Start>
 2d8:	e7b20010 	swc1	$f18,16(sp)
 2dc:	44800000 	mtc1	zero,$f0
 2e0:	8fa40090 	lw	a0,144(sp)
 2e4:	44050000 	mfc1	a1,$f0
 2e8:	24840080 	addiu	a0,a0,128
 2ec:	44060000 	mfc1	a2,$f0
 2f0:	44070000 	mfc1	a3,$f0
 2f4:	0c000000 	jal	0 <TransitionTriforce_Start>
 2f8:	afa40030 	sw	a0,48(sp)
 2fc:	8fa20094 	lw	v0,148(sp)
 300:	8fa40030 	lw	a0,48(sp)
 304:	3c0ae700 	lui	t2,0xe700
 308:	ac4a0000 	sw	t2,0(v0)
 30c:	ac400004 	sw	zero,4(v0)
 310:	24430008 	addiu	v1,v0,8
 314:	00601025 	move	v0,v1
 318:	3c0c0000 	lui	t4,0x0
 31c:	258c0000 	addiu	t4,t4,0
 320:	3c0bde00 	lui	t3,0xde00
 324:	ac4b0000 	sw	t3,0(v0)
 328:	ac4c0004 	sw	t4,4(v0)
 32c:	8fa60098 	lw	a2,152(sp)
 330:	24630008 	addiu	v1,v1,8
 334:	00601025 	move	v0,v1
 338:	3c0dfa00 	lui	t5,0xfa00
 33c:	ac4d0000 	sw	t5,0(v0)
 340:	8cce0000 	lw	t6,0(a2)
 344:	24630008 	addiu	v1,v1,8
 348:	3c18fcff 	lui	t8,0xfcff
 34c:	ac4e0004 	sw	t6,4(v0)
 350:	00601025 	move	v0,v1
 354:	3c19fffd 	lui	t9,0xfffd
 358:	3739f6fb 	ori	t9,t9,0xf6fb
 35c:	3718ffff 	ori	t8,t8,0xffff
 360:	ac580000 	sw	t8,0(v0)
 364:	ac590004 	sw	t9,4(v0)
 368:	24630008 	addiu	v1,v1,8
 36c:	00601025 	move	v0,v1
 370:	3c08da38 	lui	t0,0xda38
 374:	35080007 	ori	t0,t0,0x7
 378:	24c90018 	addiu	t1,a2,24
 37c:	ac490004 	sw	t1,4(v0)
 380:	ac480000 	sw	t0,0(v0)
 384:	24630008 	addiu	v1,v1,8
 388:	3c0fda38 	lui	t7,0xda38
 38c:	35ef0003 	ori	t7,t7,0x3
 390:	00601025 	move	v0,v1
 394:	ac4f0000 	sw	t7,0(v0)
 398:	8faa0090 	lw	t2,144(sp)
 39c:	24630008 	addiu	v1,v1,8
 3a0:	3c05da38 	lui	a1,0xda38
 3a4:	ac4a0004 	sw	t2,4(v0)
 3a8:	00601025 	move	v0,v1
 3ac:	34a50001 	ori	a1,a1,0x1
 3b0:	ac450000 	sw	a1,0(v0)
 3b4:	8fab0034 	lw	t3,52(sp)
 3b8:	24630008 	addiu	v1,v1,8
 3bc:	3c0d0000 	lui	t5,0x0
 3c0:	ac4b0004 	sw	t3,4(v0)
 3c4:	00601025 	move	v0,v1
 3c8:	ac450000 	sw	a1,0(v0)
 3cc:	24630008 	addiu	v1,v1,8
 3d0:	ac440004 	sw	a0,4(v0)
 3d4:	00601025 	move	v0,v1
 3d8:	3c0c0100 	lui	t4,0x100
 3dc:	358ca014 	ori	t4,t4,0xa014
 3e0:	25ad0000 	addiu	t5,t5,0
 3e4:	ac4d0004 	sw	t5,4(v0)
 3e8:	ac4c0000 	sw	t4,0(v0)
 3ec:	24630008 	addiu	v1,v1,8
 3f0:	afa30094 	sw	v1,148(sp)
 3f4:	0c000000 	jal	0 <TransitionTriforce_Start>
 3f8:	00c02025 	move	a0,a2
 3fc:	14400038 	bnez	v0,4e0 <TransitionTriforce_Draw+0x2dc>
 400:	8fa30094 	lw	v1,148(sp)
 404:	8fae0098 	lw	t6,152(sp)
 408:	24010001 	li	at,1
 40c:	3c180600 	lui	t8,0x600
 410:	8dc20010 	lw	v0,16(t6)
 414:	3c190008 	lui	t9,0x8
 418:	37390206 	ori	t9,t9,0x206
 41c:	10410006 	beq	v0,at,438 <TransitionTriforce_Draw+0x234>
 420:	3718080a 	ori	t8,t8,0x80a
 424:	24010002 	li	at,2
 428:	1041000e 	beq	v0,at,464 <TransitionTriforce_Draw+0x260>
 42c:	3c090606 	lui	t1,0x606
 430:	1000003a 	b	51c <TransitionTriforce_Draw+0x318>
 434:	00601025 	move	v0,v1
 438:	00601025 	move	v0,v1
 43c:	ac580000 	sw	t8,0(v0)
 440:	ac590004 	sw	t9,4(v0)
 444:	24630008 	addiu	v1,v1,8
 448:	00601025 	move	v0,v1
 44c:	3c08050a 	lui	t0,0x50a
 450:	35080604 	ori	t0,t0,0x604
 454:	ac480000 	sw	t0,0(v0)
 458:	ac400004 	sw	zero,4(v0)
 45c:	1000002e 	b	518 <TransitionTriforce_Draw+0x314>
 460:	24630008 	addiu	v1,v1,8
 464:	00601025 	move	v0,v1
 468:	3529080a 	ori	t1,t1,0x80a
 46c:	240f040c 	li	t7,1036
 470:	ac4f0004 	sw	t7,4(v0)
 474:	ac490000 	sw	t1,0(v0)
 478:	24630008 	addiu	v1,v1,8
 47c:	00601025 	move	v0,v1
 480:	3c0a0600 	lui	t2,0x600
 484:	3c0b0002 	lui	t3,0x2
 488:	356b000e 	ori	t3,t3,0xe
 48c:	354a0c0e 	ori	t2,t2,0xc0e
 490:	ac4a0000 	sw	t2,0(v0)
 494:	ac4b0004 	sw	t3,4(v0)
 498:	24630008 	addiu	v1,v1,8
 49c:	00601025 	move	v0,v1
 4a0:	3c0c0602 	lui	t4,0x602
 4a4:	3c0d0002 	lui	t5,0x2
 4a8:	35ad1012 	ori	t5,t5,0x1012
 4ac:	358c0e10 	ori	t4,t4,0xe10
 4b0:	ac4c0000 	sw	t4,0(v0)
 4b4:	ac4d0004 	sw	t5,4(v0)
 4b8:	24630008 	addiu	v1,v1,8
 4bc:	00601025 	move	v0,v1
 4c0:	3c0e0602 	lui	t6,0x602
 4c4:	3c180004 	lui	t8,0x4
 4c8:	3718120c 	ori	t8,t8,0x120c
 4cc:	35ce1204 	ori	t6,t6,0x1204
 4d0:	ac4e0000 	sw	t6,0(v0)
 4d4:	ac580004 	sw	t8,4(v0)
 4d8:	1000000f 	b	518 <TransitionTriforce_Draw+0x314>
 4dc:	24630008 	addiu	v1,v1,8
 4e0:	8fb90098 	lw	t9,152(sp)
 4e4:	24010001 	li	at,1
 4e8:	8f220010 	lw	v0,16(t9)
 4ec:	1041000a 	beq	v0,at,518 <TransitionTriforce_Draw+0x314>
 4f0:	24010002 	li	at,2
 4f4:	14410008 	bne	v0,at,518 <TransitionTriforce_Draw+0x314>
 4f8:	3c08070c 	lui	t0,0x70c
 4fc:	00601025 	move	v0,v1
 500:	3c09000c 	lui	t1,0xc
 504:	35291012 	ori	t1,t1,0x1012
 508:	35080e10 	ori	t0,t0,0xe10
 50c:	ac480000 	sw	t0,0(v0)
 510:	ac490004 	sw	t1,4(v0)
 514:	24630008 	addiu	v1,v1,8
 518:	00601025 	move	v0,v1
 51c:	3c0fe700 	lui	t7,0xe700
 520:	ac4f0000 	sw	t7,0(v0)
 524:	ac400004 	sw	zero,4(v0)
 528:	8faa009c 	lw	t2,156(sp)
 52c:	24630008 	addiu	v1,v1,8
 530:	ad430000 	sw	v1,0(t2)
 534:	8fbf002c 	lw	ra,44(sp)
 538:	27bd0098 	addiu	sp,sp,152
 53c:	03e00008 	jr	ra
 540:	00000000 	nop

00000544 <TransitionTriforce_IsDone>:
 544:	8c82000c 	lw	v0,12(a0)
 548:	24010001 	li	at,1
 54c:	10410002 	beq	v0,at,558 <TransitionTriforce_IsDone+0x14>
 550:	24010002 	li	at,2
 554:	1441000b 	bne	v0,at,584 <TransitionTriforce_IsDone+0x40>
 558:	3c010000 	lui	at,0x0
 55c:	c424002c 	lwc1	$f4,44(at)
 560:	c4860004 	lwc1	$f6,4(a0)
 564:	00001025 	move	v0,zero
 568:	4604303e 	c.le.s	$f6,$f4
 56c:	00000000 	nop
 570:	45000002 	bc1f	57c <TransitionTriforce_IsDone+0x38>
 574:	00000000 	nop
 578:	24020001 	li	v0,1
 57c:	03e00008 	jr	ra
 580:	00000000 	nop
 584:	24010003 	li	at,3
 588:	10410002 	beq	v0,at,594 <TransitionTriforce_IsDone+0x50>
 58c:	24010004 	li	at,4
 590:	1441000b 	bne	v0,at,5c0 <TransitionTriforce_IsDone+0x7c>
 594:	3c013f80 	lui	at,0x3f80
 598:	44815000 	mtc1	at,$f10
 59c:	c4880004 	lwc1	$f8,4(a0)
 5a0:	00001025 	move	v0,zero
 5a4:	4608503e 	c.le.s	$f10,$f8
 5a8:	00000000 	nop
 5ac:	45000002 	bc1f	5b8 <TransitionTriforce_IsDone+0x74>
 5b0:	00000000 	nop
 5b4:	24020001 	li	v0,1
 5b8:	03e00008 	jr	ra
 5bc:	00000000 	nop
 5c0:	00001025 	move	v0,zero
 5c4:	03e00008 	jr	ra
 5c8:	00000000 	nop
 5cc:	00000000 	nop
