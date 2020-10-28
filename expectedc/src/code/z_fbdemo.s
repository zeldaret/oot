
build/src/code/z_fbdemo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <TransitionUnk_InitGraphics>:
   0:	27bdff90 	addiu	sp,sp,-112
   4:	afb00028 	sw	s0,40(sp)
   8:	00808025 	move	s0,a0
   c:	afbf004c 	sw	ra,76(sp)
  10:	afbe0048 	sw	s8,72(sp)
  14:	afb70044 	sw	s7,68(sp)
  18:	afb60040 	sw	s6,64(sp)
  1c:	afb5003c 	sw	s5,60(sp)
  20:	afb40038 	sw	s4,56(sp)
  24:	afb30034 	sw	s3,52(sp)
  28:	afb20030 	sw	s2,48(sp)
  2c:	afb1002c 	sw	s1,44(sp)
  30:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
  34:	24840058 	addiu	a0,a0,88
  38:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
  3c:	26040098 	addiu	a0,s0,152
  40:	3c01c47a 	lui	at,0xc47a
  44:	44812000 	mtc1	at,$f4
  48:	3c01447a 	lui	at,0x447a
  4c:	44800000 	mtc1	zero,$f0
  50:	44813000 	mtc1	at,$f6
  54:	3c013f80 	lui	at,0x3f80
  58:	44814000 	mtc1	at,$f8
  5c:	44050000 	mfc1	a1,$f0
  60:	26040018 	addiu	a0,s0,24
  64:	3c0643a0 	lui	a2,0x43a0
  68:	3c074370 	lui	a3,0x4370
  6c:	e7a40014 	swc1	$f4,20(sp)
  70:	e7a00010 	swc1	$f0,16(sp)
  74:	e7a60018 	swc1	$f6,24(sp)
  78:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
  7c:	e7a8001c 	swc1	$f8,28(sp)
  80:	0000f825 	move	ra,zero
  84:	00009825 	move	s3,zero
  88:	00006825 	move	t5,zero
  8c:	240c00ff 	li	t4,255
  90:	240b0078 	li	t3,120
  94:	240afffb 	li	t2,-5
  98:	17e00003 	bnez	ra,a8 <TransitionUnk_InitGraphics+0xa8>
  9c:	ae1f0008 	sw	ra,8(s0)
  a0:	10000002 	b	ac <TransitionUnk_InitGraphics+0xac>
  a4:	8e050010 	lw	a1,16(s0)
  a8:	8e050014 	lw	a1,20(s0)
  ac:	8e030004 	lw	v1,4(s0)
  b0:	27ff0001 	addiu	ra,ra,1
  b4:	24620001 	addiu	v0,v1,1
  b8:	58400026 	blezl	v0,154 <TransitionUnk_InitGraphics+0x154>
  bc:	2be10002 	slti	at,ra,2
  c0:	8e040000 	lw	a0,0(s0)
  c4:	24840001 	addiu	a0,a0,1
  c8:	00003025 	move	a2,zero
  cc:	1880001a 	blez	a0,138 <TransitionUnk_InitGraphics+0x138>
  d0:	00004825 	move	t1,zero
  d4:	00001825 	move	v1,zero
  d8:	000d3940 	sll	a3,t5,0x5
  dc:	00134180 	sll	t0,s3,0x6
  e0:	00a01025 	move	v0,a1
  e4:	00067180 	sll	t6,a2,0x6
  e8:	a44e0008 	sh	t6,8(v0)
  ec:	a4430000 	sh	v1,0(v0)
  f0:	a4470002 	sh	a3,2(v0)
  f4:	a44a0004 	sh	t2,4(v0)
  f8:	a4400006 	sh	zero,6(v0)
  fc:	a448000a 	sh	t0,10(v0)
 100:	a040000c 	sb	zero,12(v0)
 104:	a040000d 	sb	zero,13(v0)
 108:	a04b000e 	sb	t3,14(v0)
 10c:	a04c000f 	sb	t4,15(v0)
 110:	8e040000 	lw	a0,0(s0)
 114:	25290001 	addiu	t1,t1,1
 118:	24630020 	addiu	v1,v1,32
 11c:	24840001 	addiu	a0,a0,1
 120:	0124082a 	slt	at,t1,a0
 124:	24a50010 	addiu	a1,a1,16
 128:	1420ffed 	bnez	at,e0 <TransitionUnk_InitGraphics+0xe0>
 12c:	24c60020 	addiu	a2,a2,32
 130:	8e030004 	lw	v1,4(s0)
 134:	24620001 	addiu	v0,v1,1
 138:	25ad0001 	addiu	t5,t5,1
 13c:	01a2082a 	slt	at,t5,v0
 140:	1420ffe1 	bnez	at,c8 <TransitionUnk_InitGraphics+0xc8>
 144:	26730020 	addiu	s3,s3,32
 148:	00009825 	move	s3,zero
 14c:	00006825 	move	t5,zero
 150:	2be10002 	slti	at,ra,2
 154:	1420ffd0 	bnez	at,98 <TransitionUnk_InitGraphics+0x98>
 158:	00000000 	nop
 15c:	18600087 	blez	v1,37c <TransitionUnk_InitGraphics+0x37c>
 160:	8e0700d8 	lw	a3,216(s0)
 164:	3c16fd10 	lui	s6,0xfd10
 168:	36d6013f 	ori	s6,s6,0x13f
 16c:	8e020000 	lw	v0,0(s0)
 170:	3c1ef510 	lui	s8,0xf510
 174:	3c170b00 	lui	s7,0xb00
 178:	3c14e700 	lui	s4,0xe700
 17c:	3c1f0700 	lui	ra,0x700
 180:	00022040 	sll	a0,v0,0x1
 184:	24840002 	addiu	a0,a0,2
 188:	308f00ff 	andi	t7,a0,0xff
 18c:	000fc300 	sll	t8,t7,0xc
 190:	308e007f 	andi	t6,a0,0x7f
 194:	3c010100 	lui	at,0x100
 198:	0301c825 	or	t9,t8,at
 19c:	000e7840 	sll	t7,t6,0x1
 1a0:	032fc025 	or	t8,t9,t7
 1a4:	00e01825 	move	v1,a3
 1a8:	ac780000 	sw	t8,0(v1)
 1ac:	8e0e0000 	lw	t6,0(s0)
 1b0:	3c010a00 	lui	at,0xa00
 1b4:	26720020 	addiu	s2,s3,32
 1b8:	25d90001 	addiu	t9,t6,1
 1bc:	01b90019 	multu	t5,t9
 1c0:	00129080 	sll	s2,s2,0x2
 1c4:	00138880 	sll	s1,s3,0x2
 1c8:	24e70008 	addiu	a3,a3,8
 1cc:	00003025 	move	a2,zero
 1d0:	00004825 	move	t1,zero
 1d4:	00005025 	move	t2,zero
 1d8:	32310fff 	andi	s1,s1,0xfff
 1dc:	32520fff 	andi	s2,s2,0xfff
 1e0:	24150049 	li	s5,73
 1e4:	00007812 	mflo	t7
 1e8:	000fc100 	sll	t8,t7,0x4
 1ec:	03017021 	addu	t6,t8,at
 1f0:	ac6e0004 	sw	t6,4(v1)
 1f4:	8e020000 	lw	v0,0(s0)
 1f8:	00005825 	move	t3,zero
 1fc:	240c0002 	li	t4,2
 200:	58400059 	blezl	v0,368 <TransitionUnk_InitGraphics+0x368>
 204:	8e0e0004 	lw	t6,4(s0)
 208:	00e01025 	move	v0,a3
 20c:	ac540000 	sw	s4,0(v0)
 210:	ac400004 	sw	zero,4(v0)
 214:	24e70008 	addiu	a3,a3,8
 218:	00e01025 	move	v0,a3
 21c:	ac560000 	sw	s6,0(v0)
 220:	ac570004 	sw	s7,4(v0)
 224:	24e70008 	addiu	a3,a3,8
 228:	0015c8c3 	sra	t9,s5,0x3
 22c:	332f01ff 	andi	t7,t9,0x1ff
 230:	00e01025 	move	v0,a3
 234:	000fc240 	sll	t8,t7,0x9
 238:	031e1825 	or	v1,t8,s8
 23c:	ac430000 	sw	v1,0(v0)
 240:	ac5f0004 	sw	ra,4(v0)
 244:	24e70008 	addiu	a3,a3,8
 248:	00e01025 	move	v0,a3
 24c:	24c80020 	addiu	t0,a2,32
 250:	00082880 	sll	a1,t0,0x2
 254:	3c0ee600 	lui	t6,0xe600
 258:	00062080 	sll	a0,a2,0x2
 25c:	30840fff 	andi	a0,a0,0xfff
 260:	ac4e0000 	sw	t6,0(v0)
 264:	30a50fff 	andi	a1,a1,0xfff
 268:	ac400004 	sw	zero,4(v0)
 26c:	24e70008 	addiu	a3,a3,8
 270:	00e01025 	move	v0,a3
 274:	00052b00 	sll	a1,a1,0xc
 278:	00042300 	sll	a0,a0,0xc
 27c:	3c01f400 	lui	at,0xf400
 280:	0081c825 	or	t9,a0,at
 284:	00bfc025 	or	t8,a1,ra
 288:	03127025 	or	t6,t8,s2
 28c:	03317825 	or	t7,t9,s1
 290:	ac4f0000 	sw	t7,0(v0)
 294:	ac4e0004 	sw	t6,4(v0)
 298:	24e70008 	addiu	a3,a3,8
 29c:	00e01025 	move	v0,a3
 2a0:	ac540000 	sw	s4,0(v0)
 2a4:	ac400004 	sw	zero,4(v0)
 2a8:	24e70008 	addiu	a3,a3,8
 2ac:	00e01025 	move	v0,a3
 2b0:	ac430000 	sw	v1,0(v0)
 2b4:	ac400004 	sw	zero,4(v0)
 2b8:	24e70008 	addiu	a3,a3,8
 2bc:	3c01f200 	lui	at,0xf200
 2c0:	0081c825 	or	t9,a0,at
 2c4:	00e01025 	move	v0,a3
 2c8:	03317825 	or	t7,t9,s1
 2cc:	00b2c025 	or	t8,a1,s2
 2d0:	ac580004 	sw	t8,4(v0)
 2d4:	ac4f0000 	sw	t7,0(v0)
 2d8:	8e180000 	lw	t8,0(s0)
 2dc:	318e00ff 	andi	t6,t4,0xff
 2e0:	000eca00 	sll	t9,t6,0x8
 2e4:	316300ff 	andi	v1,t3,0xff
 2e8:	00031c00 	sll	v1,v1,0x10
 2ec:	00797825 	or	t7,v1,t9
 2f0:	01587021 	addu	t6,t2,t8
 2f4:	000ec840 	sll	t9,t6,0x1
 2f8:	27380004 	addiu	t8,t9,4
 2fc:	330e00ff 	andi	t6,t8,0xff
 300:	24e70008 	addiu	a3,a3,8
 304:	01eec825 	or	t9,t7,t6
 308:	033fc025 	or	t8,t9,ra
 30c:	00e01025 	move	v0,a3
 310:	ac580000 	sw	t8,0(v0)
 314:	8e0f0000 	lw	t7,0(s0)
 318:	25290001 	addiu	t1,t1,1
 31c:	24e70008 	addiu	a3,a3,8
 320:	014f2021 	addu	a0,t2,t7
 324:	00042040 	sll	a0,a0,0x1
 328:	248e0004 	addiu	t6,a0,4
 32c:	31d900ff 	andi	t9,t6,0xff
 330:	0019c200 	sll	t8,t9,0x8
 334:	248e0002 	addiu	t6,a0,2
 338:	31d900ff 	andi	t9,t6,0xff
 33c:	00787825 	or	t7,v1,t8
 340:	01f9c025 	or	t8,t7,t9
 344:	ac580004 	sw	t8,4(v0)
 348:	8e020000 	lw	v0,0(s0)
 34c:	01003025 	move	a2,t0
 350:	254a0001 	addiu	t2,t2,1
 354:	0122082a 	slt	at,t1,v0
 358:	256b0002 	addiu	t3,t3,2
 35c:	1420ffaa 	bnez	at,208 <TransitionUnk_InitGraphics+0x208>
 360:	258c0002 	addiu	t4,t4,2
 364:	8e0e0004 	lw	t6,4(s0)
 368:	25ad0001 	addiu	t5,t5,1
 36c:	26730020 	addiu	s3,s3,32
 370:	01ae082a 	slt	at,t5,t6
 374:	5420ff83 	bnezl	at,184 <TransitionUnk_InitGraphics+0x184>
 378:	00022040 	sll	a0,v0,0x1
 37c:	00e01025 	move	v0,a3
 380:	3c14e700 	lui	s4,0xe700
 384:	ac540000 	sw	s4,0(v0)
 388:	ac400004 	sw	zero,4(v0)
 38c:	24e70008 	addiu	a3,a3,8
 390:	00e01025 	move	v0,a3
 394:	3c0fdf00 	lui	t7,0xdf00
 398:	ac4f0000 	sw	t7,0(v0)
 39c:	ac400004 	sw	zero,4(v0)
 3a0:	24e70008 	addiu	a3,a3,8
 3a4:	3c040000 	lui	a0,0x0
 3a8:	24840000 	addiu	a0,a0,0
 3ac:	afa70050 	sw	a3,80(sp)
 3b0:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 3b4:	24050090 	li	a1,144
 3b8:	8e180000 	lw	t8,0(s0)
 3bc:	8e190004 	lw	t9,4(s0)
 3c0:	3c040000 	lui	a0,0x0
 3c4:	001870c0 	sll	t6,t8,0x3
 3c8:	01d87021 	addu	t6,t6,t8
 3cc:	25cf0001 	addiu	t7,t6,1
 3d0:	032f0019 	multu	t9,t7
 3d4:	24840000 	addiu	a0,a0,0
 3d8:	00002812 	mflo	a1
 3dc:	24a50002 	addiu	a1,a1,2
 3e0:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 3e4:	00000000 	nop
 3e8:	8fa70050 	lw	a3,80(sp)
 3ec:	3c040000 	lui	a0,0x0
 3f0:	24840000 	addiu	a0,a0,0
 3f4:	24050091 	li	a1,145
 3f8:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 3fc:	afa70050 	sw	a3,80(sp)
 400:	8fa70050 	lw	a3,80(sp)
 404:	8e1800d8 	lw	t8,216(s0)
 408:	3c040000 	lui	a0,0x0
 40c:	24840000 	addiu	a0,a0,0
 410:	00f82823 	subu	a1,a3,t8
 414:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 418:	000528c3 	sra	a1,a1,0x3
 41c:	8fbf004c 	lw	ra,76(sp)
 420:	8fb00028 	lw	s0,40(sp)
 424:	8fb1002c 	lw	s1,44(sp)
 428:	8fb20030 	lw	s2,48(sp)
 42c:	8fb30034 	lw	s3,52(sp)
 430:	8fb40038 	lw	s4,56(sp)
 434:	8fb5003c 	lw	s5,60(sp)
 438:	8fb60040 	lw	s6,64(sp)
 43c:	8fb70044 	lw	s7,68(sp)
 440:	8fbe0048 	lw	s8,72(sp)
 444:	03e00008 	jr	ra
 448:	27bd0070 	addiu	sp,sp,112

0000044c <TransitionUnk_InitData>:
 44c:	8c830004 	lw	v1,4(a0)
 450:	00001025 	move	v0,zero
 454:	24630001 	addiu	v1,v1,1
 458:	1860002a 	blez	v1,504 <TransitionUnk_InitData+0xb8>
 45c:	00000000 	nop
 460:	8c860000 	lw	a2,0(a0)
 464:	24c60001 	addiu	a2,a2,1
 468:	18c00022 	blez	a2,4f4 <TransitionUnk_InitData+0xa8>
 46c:	00002825 	move	a1,zero
 470:	00027140 	sll	t6,v0,0x5
 474:	448e2000 	mtc1	t6,$f4
 478:	00001825 	move	v1,zero
 47c:	00003825 	move	a3,zero
 480:	46802020 	cvt.s.w	$f0,$f4
 484:	00460019 	multu	v0,a2
 488:	44873000 	mtc1	a3,$f6
 48c:	8c8f000c 	lw	t7,12(a0)
 490:	24a50001 	addiu	a1,a1,1
 494:	46803220 	cvt.s.w	$f8,$f6
 498:	01e3c021 	addu	t8,t7,v1
 49c:	24e70020 	addiu	a3,a3,32
 4a0:	0000c812 	mflo	t9
 4a4:	001940c0 	sll	t0,t9,0x3
 4a8:	03084821 	addu	t1,t8,t0
 4ac:	e5280000 	swc1	$f8,0(t1)
 4b0:	8c8c0000 	lw	t4,0(a0)
 4b4:	8c8a000c 	lw	t2,12(a0)
 4b8:	258d0001 	addiu	t5,t4,1
 4bc:	004d0019 	multu	v0,t5
 4c0:	01435821 	addu	t3,t2,v1
 4c4:	24630008 	addiu	v1,v1,8
 4c8:	00007012 	mflo	t6
 4cc:	000e78c0 	sll	t7,t6,0x3
 4d0:	016fc821 	addu	t9,t3,t7
 4d4:	e7200004 	swc1	$f0,4(t9)
 4d8:	8c860000 	lw	a2,0(a0)
 4dc:	24c60001 	addiu	a2,a2,1
 4e0:	00a6082a 	slt	at,a1,a2
 4e4:	1420ffe7 	bnez	at,484 <TransitionUnk_InitData+0x38>
 4e8:	00000000 	nop
 4ec:	8c830004 	lw	v1,4(a0)
 4f0:	24630001 	addiu	v1,v1,1
 4f4:	24420001 	addiu	v0,v0,1
 4f8:	0043082a 	slt	at,v0,v1
 4fc:	1420ffda 	bnez	at,468 <TransitionUnk_InitData+0x1c>
 500:	00000000 	nop
 504:	03e00008 	jr	ra
 508:	00000000 	nop

0000050c <TransitionUnk_Destroy>:
 50c:	27bdffe0 	addiu	sp,sp,-32
 510:	afb00018 	sw	s0,24(sp)
 514:	00808025 	move	s0,a0
 518:	afbf001c 	sw	ra,28(sp)
 51c:	3c040000 	lui	a0,0x0
 520:	24840070 	addiu	a0,a0,112
 524:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 528:	02002825 	move	a1,s0
 52c:	3c040000 	lui	a0,0x0
 530:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 534:	24840088 	addiu	a0,a0,136
 538:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 53c:	24040064 	li	a0,100
 540:	8e04000c 	lw	a0,12(s0)
 544:	3c050000 	lui	a1,0x0
 548:	24a50098 	addiu	a1,a1,152
 54c:	50800005 	beqzl	a0,564 <TransitionUnk_Destroy+0x58>
 550:	8e040010 	lw	a0,16(s0)
 554:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 558:	240600b4 	li	a2,180
 55c:	ae00000c 	sw	zero,12(s0)
 560:	8e040010 	lw	a0,16(s0)
 564:	3c050000 	lui	a1,0x0
 568:	24a500a8 	addiu	a1,a1,168
 56c:	50800005 	beqzl	a0,584 <TransitionUnk_Destroy+0x78>
 570:	8e040014 	lw	a0,20(s0)
 574:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 578:	240600b5 	li	a2,181
 57c:	ae000010 	sw	zero,16(s0)
 580:	8e040014 	lw	a0,20(s0)
 584:	3c050000 	lui	a1,0x0
 588:	24a500b8 	addiu	a1,a1,184
 58c:	50800005 	beqzl	a0,5a4 <TransitionUnk_Destroy+0x98>
 590:	8e0400d8 	lw	a0,216(s0)
 594:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 598:	240600b6 	li	a2,182
 59c:	ae000014 	sw	zero,20(s0)
 5a0:	8e0400d8 	lw	a0,216(s0)
 5a4:	3c050000 	lui	a1,0x0
 5a8:	24a500c8 	addiu	a1,a1,200
 5ac:	50800005 	beqzl	a0,5c4 <TransitionUnk_Destroy+0xb8>
 5b0:	8fbf001c 	lw	ra,28(sp)
 5b4:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 5b8:	240600b7 	li	a2,183
 5bc:	ae0000d8 	sw	zero,216(s0)
 5c0:	8fbf001c 	lw	ra,28(sp)
 5c4:	8fb00018 	lw	s0,24(sp)
 5c8:	27bd0020 	addiu	sp,sp,32
 5cc:	03e00008 	jr	ra
 5d0:	00000000 	nop

000005d4 <TransitionUnk_Init>:
 5d4:	27bdffd8 	addiu	sp,sp,-40
 5d8:	afb00018 	sw	s0,24(sp)
 5dc:	00808025 	move	s0,a0
 5e0:	afbf001c 	sw	ra,28(sp)
 5e4:	afa5002c 	sw	a1,44(sp)
 5e8:	afa60030 	sw	a2,48(sp)
 5ec:	3c040000 	lui	a0,0x0
 5f0:	248400d8 	addiu	a0,a0,216
 5f4:	8fa70030 	lw	a3,48(sp)
 5f8:	8fa6002c 	lw	a2,44(sp)
 5fc:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 600:	02002825 	move	a1,s0
 604:	02002025 	move	a0,s0
 608:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 60c:	240500e0 	li	a1,224
 610:	8fa2002c 	lw	v0,44(sp)
 614:	8fa70030 	lw	a3,48(sp)
 618:	ae000008 	sw	zero,8(s0)
 61c:	000270c0 	sll	t6,v0,0x3
 620:	25cf0008 	addiu	t7,t6,8
 624:	24e30001 	addiu	v1,a3,1
 628:	01e30019 	multu	t7,v1
 62c:	3c050000 	lui	a1,0x0
 630:	ae020000 	sw	v0,0(s0)
 634:	ae070004 	sw	a3,4(s0)
 638:	afa30024 	sw	v1,36(sp)
 63c:	24a500f4 	addiu	a1,a1,244
 640:	240600c3 	li	a2,195
 644:	00002012 	mflo	a0
 648:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 64c:	00000000 	nop
 650:	8fa30024 	lw	v1,36(sp)
 654:	ae02000c 	sw	v0,12(s0)
 658:	8fb8002c 	lw	t8,44(sp)
 65c:	3c050000 	lui	a1,0x0
 660:	24a50104 	addiu	a1,a1,260
 664:	0018c900 	sll	t9,t8,0x4
 668:	27280010 	addiu	t0,t9,16
 66c:	01030019 	multu	t0,v1
 670:	240600c4 	li	a2,196
 674:	00002012 	mflo	a0
 678:	afa40020 	sw	a0,32(sp)
 67c:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 680:	00000000 	nop
 684:	8fa40020 	lw	a0,32(sp)
 688:	3c050000 	lui	a1,0x0
 68c:	ae020010 	sw	v0,16(s0)
 690:	24a50114 	addiu	a1,a1,276
 694:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 698:	240600c5 	li	a2,197
 69c:	8e0a0000 	lw	t2,0(s0)
 6a0:	8e090004 	lw	t1,4(s0)
 6a4:	3c050000 	lui	a1,0x0
 6a8:	000a58c0 	sll	t3,t2,0x3
 6ac:	016a5821 	addu	t3,t3,t2
 6b0:	256c0001 	addiu	t4,t3,1
 6b4:	012c0019 	multu	t1,t4
 6b8:	ae020014 	sw	v0,20(s0)
 6bc:	24a50124 	addiu	a1,a1,292
 6c0:	240600c6 	li	a2,198
 6c4:	00002012 	mflo	a0
 6c8:	000420c0 	sll	a0,a0,0x3
 6cc:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 6d0:	24840010 	addiu	a0,a0,16
 6d4:	8e0d000c 	lw	t5,12(s0)
 6d8:	ae0200d8 	sw	v0,216(s0)
 6dc:	3c040000 	lui	a0,0x0
 6e0:	11a00009 	beqz	t5,708 <TransitionUnk_Init+0x134>
 6e4:	00000000 	nop
 6e8:	8e0e0010 	lw	t6,16(s0)
 6ec:	11c00006 	beqz	t6,708 <TransitionUnk_Init+0x134>
 6f0:	00000000 	nop
 6f4:	8e0f0014 	lw	t7,20(s0)
 6f8:	11e00003 	beqz	t7,708 <TransitionUnk_Init+0x134>
 6fc:	00000000 	nop
 700:	14400025 	bnez	v0,798 <TransitionUnk_Init+0x1c4>
 704:	00000000 	nop
 708:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 70c:	24840134 	addiu	a0,a0,308
 710:	8e04000c 	lw	a0,12(s0)
 714:	3c050000 	lui	a1,0x0
 718:	24a50154 	addiu	a1,a1,340
 71c:	50800005 	beqzl	a0,734 <TransitionUnk_Init+0x160>
 720:	8e040010 	lw	a0,16(s0)
 724:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 728:	240600ca 	li	a2,202
 72c:	ae00000c 	sw	zero,12(s0)
 730:	8e040010 	lw	a0,16(s0)
 734:	3c050000 	lui	a1,0x0
 738:	24a50164 	addiu	a1,a1,356
 73c:	50800005 	beqzl	a0,754 <TransitionUnk_Init+0x180>
 740:	8e040014 	lw	a0,20(s0)
 744:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 748:	240600cb 	li	a2,203
 74c:	ae000010 	sw	zero,16(s0)
 750:	8e040014 	lw	a0,20(s0)
 754:	3c050000 	lui	a1,0x0
 758:	24a50174 	addiu	a1,a1,372
 75c:	50800005 	beqzl	a0,774 <TransitionUnk_Init+0x1a0>
 760:	8e0400d8 	lw	a0,216(s0)
 764:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 768:	240600cc 	li	a2,204
 76c:	ae000014 	sw	zero,20(s0)
 770:	8e0400d8 	lw	a0,216(s0)
 774:	3c050000 	lui	a1,0x0
 778:	24a50184 	addiu	a1,a1,388
 77c:	10800004 	beqz	a0,790 <TransitionUnk_Init+0x1bc>
 780:	00000000 	nop
 784:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 788:	240600cd 	li	a2,205
 78c:	ae0000d8 	sw	zero,216(s0)
 790:	10000007 	b	7b0 <TransitionUnk_Init+0x1dc>
 794:	00001025 	move	v0,zero
 798:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 79c:	02002025 	move	a0,s0
 7a0:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 7a4:	02002025 	move	a0,s0
 7a8:	ae000008 	sw	zero,8(s0)
 7ac:	02001025 	move	v0,s0
 7b0:	8fbf001c 	lw	ra,28(sp)
 7b4:	8fb00018 	lw	s0,24(sp)
 7b8:	27bd0028 	addiu	sp,sp,40
 7bc:	03e00008 	jr	ra
 7c0:	00000000 	nop

000007c4 <TransitionUnk_SetData>:
 7c4:	8c830004 	lw	v1,4(a0)
 7c8:	00001025 	move	v0,zero
 7cc:	24630001 	addiu	v1,v1,1
 7d0:	1860003f 	blez	v1,8d0 <TransitionUnk_SetData+0x10c>
 7d4:	00000000 	nop
 7d8:	8c860000 	lw	a2,0(a0)
 7dc:	24c60001 	addiu	a2,a2,1
 7e0:	18c00037 	blez	a2,8c0 <TransitionUnk_SetData+0xfc>
 7e4:	00002825 	move	a1,zero
 7e8:	00003825 	move	a3,zero
 7ec:	00004825 	move	t1,zero
 7f0:	8c8e0008 	lw	t6,8(a0)
 7f4:	55c00004 	bnezl	t6,808 <TransitionUnk_SetData+0x44>
 7f8:	8c830014 	lw	v1,20(a0)
 7fc:	10000002 	b	808 <TransitionUnk_SetData+0x44>
 800:	8c830010 	lw	v1,16(a0)
 804:	8c830014 	lw	v1,20(a0)
 808:	00460019 	multu	v0,a2
 80c:	8c8f000c 	lw	t7,12(a0)
 810:	00676821 	addu	t5,v1,a3
 814:	01e9c021 	addu	t8,t7,t1
 818:	00004012 	mflo	t0
 81c:	0008c8c0 	sll	t9,t0,0x3
 820:	03195021 	addu	t2,t8,t9
 824:	c5440000 	lwc1	$f4,0(t2)
 828:	00087100 	sll	t6,t0,0x4
 82c:	01ae7821 	addu	t7,t5,t6
 830:	4600218d 	trunc.w.s	$f6,$f4
 834:	440c3000 	mfc1	t4,$f6
 838:	00000000 	nop
 83c:	a5ec0000 	sh	t4,0(t7)
 840:	8c980008 	lw	t8,8(a0)
 844:	57000004 	bnezl	t8,858 <TransitionUnk_SetData+0x94>
 848:	8c830014 	lw	v1,20(a0)
 84c:	10000002 	b	858 <TransitionUnk_SetData+0x94>
 850:	8c830010 	lw	v1,16(a0)
 854:	8c830014 	lw	v1,20(a0)
 858:	8c990000 	lw	t9,0(a0)
 85c:	8c8b000c 	lw	t3,12(a0)
 860:	24a50001 	addiu	a1,a1,1
 864:	272a0001 	addiu	t2,t9,1
 868:	004a0019 	multu	v0,t2
 86c:	01696821 	addu	t5,t3,t1
 870:	0067c821 	addu	t9,v1,a3
 874:	24e70010 	addiu	a3,a3,16
 878:	25290008 	addiu	t1,t1,8
 87c:	00004012 	mflo	t0
 880:	000870c0 	sll	t6,t0,0x3
 884:	01ae6021 	addu	t4,t5,t6
 888:	c5880004 	lwc1	$f8,4(t4)
 88c:	00085100 	sll	t2,t0,0x4
 890:	032a5821 	addu	t3,t9,t2
 894:	4600428d 	trunc.w.s	$f10,$f8
 898:	44185000 	mfc1	t8,$f10
 89c:	00000000 	nop
 8a0:	a5780002 	sh	t8,2(t3)
 8a4:	8c860000 	lw	a2,0(a0)
 8a8:	24c60001 	addiu	a2,a2,1
 8ac:	00a6082a 	slt	at,a1,a2
 8b0:	5420ffd0 	bnezl	at,7f4 <TransitionUnk_SetData+0x30>
 8b4:	8c8e0008 	lw	t6,8(a0)
 8b8:	8c830004 	lw	v1,4(a0)
 8bc:	24630001 	addiu	v1,v1,1
 8c0:	24420001 	addiu	v0,v0,1
 8c4:	0043082a 	slt	at,v0,v1
 8c8:	1420ffc5 	bnez	at,7e0 <TransitionUnk_SetData+0x1c>
 8cc:	00000000 	nop
 8d0:	03e00008 	jr	ra
 8d4:	00000000 	nop

000008d8 <TransitionUnk_Draw>:
 8d8:	27bdffc0 	addiu	sp,sp,-64
 8dc:	afbf0014 	sw	ra,20(sp)
 8e0:	8ca30000 	lw	v1,0(a1)
 8e4:	00a03825 	move	a3,a1
 8e8:	3c050000 	lui	a1,0x0
 8ec:	24a50000 	addiu	a1,a1,0
 8f0:	3c06de00 	lui	a2,0xde00
 8f4:	ac660000 	sw	a2,0(v1)
 8f8:	ac650004 	sw	a1,4(v1)
 8fc:	24620008 	addiu	v0,v1,8
 900:	afa2003c 	sw	v0,60(sp)
 904:	afa70044 	sw	a3,68(sp)
 908:	afa50018 	sw	a1,24(sp)
 90c:	0c000000 	jal	0 <TransitionUnk_InitGraphics>
 910:	afa40040 	sw	a0,64(sp)
 914:	8fa2003c 	lw	v0,60(sp)
 918:	8fa40040 	lw	a0,64(sp)
 91c:	8fa50018 	lw	a1,24(sp)
 920:	00401825 	move	v1,v0
 924:	8fa70044 	lw	a3,68(sp)
 928:	3c0eda38 	lui	t6,0xda38
 92c:	35ce0007 	ori	t6,t6,0x7
 930:	248f0018 	addiu	t7,a0,24
 934:	ac6f0004 	sw	t7,4(v1)
 938:	ac6e0000 	sw	t6,0(v1)
 93c:	24420008 	addiu	v0,v0,8
 940:	00401825 	move	v1,v0
 944:	3c18da38 	lui	t8,0xda38
 948:	37180003 	ori	t8,t8,0x3
 94c:	24990058 	addiu	t9,a0,88
 950:	ac790004 	sw	t9,4(v1)
 954:	ac780000 	sw	t8,0(v1)
 958:	24420008 	addiu	v0,v0,8
 95c:	3c08db06 	lui	t0,0xdb06
 960:	35080028 	ori	t0,t0,0x28
 964:	00401825 	move	v1,v0
 968:	ac680000 	sw	t0,0(v1)
 96c:	8c890008 	lw	t1,8(a0)
 970:	3c06de00 	lui	a2,0xde00
 974:	24420008 	addiu	v0,v0,8
 978:	15200004 	bnez	t1,98c <TransitionUnk_Draw+0xb4>
 97c:	3c0cdb06 	lui	t4,0xdb06
 980:	8c8a0010 	lw	t2,16(a0)
 984:	10000003 	b	994 <TransitionUnk_Draw+0xbc>
 988:	ac6a0004 	sw	t2,4(v1)
 98c:	8c8b0014 	lw	t3,20(a0)
 990:	ac6b0004 	sw	t3,4(v1)
 994:	00401825 	move	v1,v0
 998:	358c002c 	ori	t4,t4,0x2c
 99c:	ac6c0000 	sw	t4,0(v1)
 9a0:	8c8d00dc 	lw	t5,220(a0)
 9a4:	24420008 	addiu	v0,v0,8
 9a8:	3c0fe700 	lui	t7,0xe700
 9ac:	ac6d0004 	sw	t5,4(v1)
 9b0:	00401825 	move	v1,v0
 9b4:	ac660000 	sw	a2,0(v1)
 9b8:	ac650004 	sw	a1,4(v1)
 9bc:	24420008 	addiu	v0,v0,8
 9c0:	00401825 	move	v1,v0
 9c4:	ac660000 	sw	a2,0(v1)
 9c8:	8c8e00d8 	lw	t6,216(a0)
 9cc:	24420008 	addiu	v0,v0,8
 9d0:	ac6e0004 	sw	t6,4(v1)
 9d4:	00401825 	move	v1,v0
 9d8:	ac6f0000 	sw	t7,0(v1)
 9dc:	ac600004 	sw	zero,4(v1)
 9e0:	8c980008 	lw	t8,8(a0)
 9e4:	24420008 	addiu	v0,v0,8
 9e8:	3b190001 	xori	t9,t8,0x1
 9ec:	ac990008 	sw	t9,8(a0)
 9f0:	ace20000 	sw	v0,0(a3)
 9f4:	8fbf0014 	lw	ra,20(sp)
 9f8:	27bd0040 	addiu	sp,sp,64
 9fc:	03e00008 	jr	ra
 a00:	00000000 	nop

00000a04 <TransitionUnk_Update>:
 a04:	27bdffe8 	addiu	sp,sp,-24
 a08:	f7b60010 	sdc1	$f22,16(sp)
 a0c:	f7b40008 	sdc1	$f20,8(sp)
 a10:	8c830004 	lw	v1,4(a0)
 a14:	00001025 	move	v0,zero
 a18:	3c013f80 	lui	at,0x3f80
 a1c:	24630001 	addiu	v1,v1,1
 a20:	58600042 	blezl	v1,b2c <TransitionUnk_Update+0x128>
 a24:	d7b40008 	ldc1	$f20,8(sp)
 a28:	8c860000 	lw	a2,0(a0)
 a2c:	4481b000 	mtc1	at,$f22
 a30:	3c0142c8 	lui	at,0x42c8
 a34:	44819000 	mtc1	at,$f18
 a38:	4480a000 	mtc1	zero,$f20
 a3c:	24c70001 	addiu	a3,a2,1
 a40:	18e00035 	blez	a3,b18 <TransitionUnk_Update+0x114>
 a44:	00002825 	move	a1,zero
 a48:	00004025 	move	t0,zero
 a4c:	00470019 	multu	v0,a3
 a50:	8c83000c 	lw	v1,12(a0)
 a54:	0006c940 	sll	t9,a2,0x5
 a58:	24a50001 	addiu	a1,a1,1
 a5c:	00687021 	addu	t6,v1,t0
 a60:	00795021 	addu	t2,v1,t9
 a64:	c5440048 	lwc1	$f4,72(t2)
 a68:	c548004c 	lwc1	$f8,76(t2)
 a6c:	00007812 	mflo	t7
 a70:	000fc0c0 	sll	t8,t7,0x3
 a74:	01d84821 	addu	t1,t6,t8
 a78:	c5220000 	lwc1	$f2,0(t1)
 a7c:	c5260004 	lwc1	$f6,4(t1)
 a80:	46041001 	sub.s	$f0,$f2,$f4
 a84:	46083301 	sub.s	$f12,$f6,$f8
 a88:	46000282 	mul.s	$f10,$f0,$f0
 a8c:	00000000 	nop
 a90:	460c6102 	mul.s	$f4,$f12,$f12
 a94:	46045180 	add.s	$f6,$f10,$f4
 a98:	46123403 	div.s	$f16,$f6,$f18
 a9c:	4610a032 	c.eq.s	$f20,$f16
 aa0:	46008386 	mov.s	$f14,$f16
 aa4:	45010017 	bc1t	b04 <TransitionUnk_Update+0x100>
 aa8:	00000000 	nop
 aac:	4616803c 	c.lt.s	$f16,$f22
 ab0:	00000000 	nop
 ab4:	45020003 	bc1fl	ac4 <TransitionUnk_Update+0xc0>
 ab8:	460e0203 	div.s	$f8,$f0,$f14
 abc:	4600b386 	mov.s	$f14,$f22
 ac0:	460e0203 	div.s	$f8,$f0,$f14
 ac4:	460e6183 	div.s	$f6,$f12,$f14
 ac8:	46081281 	sub.s	$f10,$f2,$f8
 acc:	e52a0000 	swc1	$f10,0(t1)
 ad0:	8c8d0000 	lw	t5,0(a0)
 ad4:	8c8b000c 	lw	t3,12(a0)
 ad8:	25af0001 	addiu	t7,t5,1
 adc:	004f0019 	multu	v0,t7
 ae0:	01686021 	addu	t4,t3,t0
 ae4:	00007012 	mflo	t6
 ae8:	000ec0c0 	sll	t8,t6,0x3
 aec:	01984821 	addu	t1,t4,t8
 af0:	c5240004 	lwc1	$f4,4(t1)
 af4:	46062201 	sub.s	$f8,$f4,$f6
 af8:	e5280004 	swc1	$f8,4(t1)
 afc:	8c860000 	lw	a2,0(a0)
 b00:	24c70001 	addiu	a3,a2,1
 b04:	00a7082a 	slt	at,a1,a3
 b08:	1420ffd0 	bnez	at,a4c <TransitionUnk_Update+0x48>
 b0c:	25080008 	addiu	t0,t0,8
 b10:	8c830004 	lw	v1,4(a0)
 b14:	24630001 	addiu	v1,v1,1
 b18:	24420001 	addiu	v0,v0,1
 b1c:	0043082a 	slt	at,v0,v1
 b20:	1420ffc7 	bnez	at,a40 <TransitionUnk_Update+0x3c>
 b24:	00000000 	nop
 b28:	d7b40008 	ldc1	$f20,8(sp)
 b2c:	d7b60010 	ldc1	$f22,16(sp)
 b30:	03e00008 	jr	ra
 b34:	27bd0018 	addiu	sp,sp,24

00000b38 <func_800B23E8>:
 b38:	03e00008 	jr	ra
 b3c:	afa40000 	sw	a0,0(sp)

00000b40 <func_800B23F0>:
 b40:	afa40000 	sw	a0,0(sp)
 b44:	03e00008 	jr	ra
 b48:	00001025 	move	v0,zero
 b4c:	00000000 	nop
