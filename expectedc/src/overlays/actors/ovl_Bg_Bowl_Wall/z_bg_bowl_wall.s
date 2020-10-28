
build/src/overlays/actors/ovl_Bg_Bowl_Wall/z_bg_bowl_wall.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgBowlWall_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa5003c 	sw	a1,60(sp)
  10:	00808025 	move	s0,a0
  14:	afa00028 	sw	zero,40(sp)
  18:	0c000000 	jal	0 <BgBowlWall_Init>
  1c:	00002825 	move	a1,zero
  20:	860e001c 	lh	t6,28(s0)
  24:	3c040600 	lui	a0,0x600
  28:	27a50028 	addiu	a1,sp,40
  2c:	15c00006 	bnez	t6,48 <BgBowlWall_Init+0x48>
  30:	24841b00 	addiu	a0,a0,6912
  34:	3c040600 	lui	a0,0x600
  38:	0c000000 	jal	0 <BgBowlWall_Init>
  3c:	24840cb8 	addiu	a0,a0,3256
  40:	10000004 	b	54 <BgBowlWall_Init+0x54>
  44:	8fa4003c 	lw	a0,60(sp)
  48:	0c000000 	jal	0 <BgBowlWall_Init>
  4c:	27a50028 	addiu	a1,sp,40
  50:	8fa4003c 	lw	a0,60(sp)
  54:	02003025 	move	a2,s0
  58:	8fa70028 	lw	a3,40(sp)
  5c:	0c000000 	jal	0 <BgBowlWall_Init>
  60:	24850810 	addiu	a1,a0,2064
  64:	8e180024 	lw	t8,36(s0)
  68:	8e0f0028 	lw	t7,40(s0)
  6c:	3c040000 	lui	a0,0x0
  70:	ae180168 	sw	t8,360(s0)
  74:	8e18002c 	lw	t8,44(s0)
  78:	ae02014c 	sw	v0,332(s0)
  7c:	24840000 	addiu	a0,a0,0
  80:	ae0f016c 	sw	t7,364(s0)
  84:	0c000000 	jal	0 <BgBowlWall_Init>
  88:	ae180170 	sw	t8,368(s0)
  8c:	3c040000 	lui	a0,0x0
  90:	24840000 	addiu	a0,a0,0
  94:	0c000000 	jal	0 <BgBowlWall_Init>
  98:	8605001c 	lh	a1,28(s0)
  9c:	3c013f80 	lui	at,0x3f80
  a0:	44810000 	mtc1	at,$f0
  a4:	3c190000 	lui	t9,0x0
  a8:	27390000 	addiu	t9,t9,0
  ac:	ae190164 	sw	t9,356(s0)
  b0:	e6000058 	swc1	$f0,88(s0)
  b4:	e6000054 	swc1	$f0,84(s0)
  b8:	e6000050 	swc1	$f0,80(s0)
  bc:	8fbf001c 	lw	ra,28(sp)
  c0:	8fb00018 	lw	s0,24(sp)
  c4:	27bd0038 	addiu	sp,sp,56
  c8:	03e00008 	jr	ra
  cc:	00000000 	nop

000000d0 <BgBowlWall_Destroy>:
  d0:	27bdffe8 	addiu	sp,sp,-24
  d4:	afa40018 	sw	a0,24(sp)
  d8:	8fae0018 	lw	t6,24(sp)
  dc:	afbf0014 	sw	ra,20(sp)
  e0:	00a02025 	move	a0,a1
  e4:	24a50810 	addiu	a1,a1,2064
  e8:	0c000000 	jal	0 <BgBowlWall_Init>
  ec:	8dc6014c 	lw	a2,332(t6)
  f0:	8fbf0014 	lw	ra,20(sp)
  f4:	27bd0018 	addiu	sp,sp,24
  f8:	03e00008 	jr	ra
  fc:	00000000 	nop

00000100 <func_8086F260>:
 100:	27bdff90 	addiu	sp,sp,-112
 104:	afbf003c 	sw	ra,60(sp)
 108:	afb00038 	sw	s0,56(sp)
 10c:	afa50074 	sw	a1,116(sp)
 110:	8482001c 	lh	v0,28(a0)
 114:	00808025 	move	s0,a0
 118:	3c010000 	lui	at,0x0
 11c:	50400016 	beqzl	v0,178 <func_8086F260+0x78>
 120:	00024880 	sll	t1,v0,0x2
 124:	c42c0000 	lwc1	$f12,0(at)
 128:	0c000000 	jal	0 <BgBowlWall_Init>
 12c:	a7a20062 	sh	v0,98(sp)
 130:	4600010d 	trunc.w.s	$f4,$f0
 134:	87a20062 	lh	v0,98(sp)
 138:	3c030000 	lui	v1,0x0
 13c:	3c040000 	lui	a0,0x0
 140:	44192000 	mfc1	t9,$f4
 144:	24840000 	addiu	a0,a0,0
 148:	00591021 	addu	v0,v0,t9
 14c:	00021400 	sll	v0,v0,0x10
 150:	00021403 	sra	v0,v0,0x10
 154:	00024040 	sll	t0,v0,0x1
 158:	00681821 	addu	v1,v1,t0
 15c:	84630000 	lh	v1,0(v1)
 160:	a6030034 	sh	v1,52(s0)
 164:	a60300b8 	sh	v1,184(s0)
 168:	0c000000 	jal	0 <BgBowlWall_Init>
 16c:	a7a20062 	sh	v0,98(sp)
 170:	87a20062 	lh	v0,98(sp)
 174:	00024880 	sll	t1,v0,0x2
 178:	01224823 	subu	t1,t1,v0
 17c:	3c0a0000 	lui	t2,0x0
 180:	254a0000 	addiu	t2,t2,0
 184:	00094880 	sll	t1,t1,0x2
 188:	012a1821 	addu	v1,t1,t2
 18c:	c4660000 	lwc1	$f6,0(v1)
 190:	c6080024 	lwc1	$f8,36(s0)
 194:	c6120028 	lwc1	$f18,40(s0)
 198:	02002825 	move	a1,s0
 19c:	46083280 	add.s	$f10,$f6,$f8
 1a0:	c608002c 	lwc1	$f8,44(s0)
 1a4:	240701be 	li	a3,446
 1a8:	e60a0174 	swc1	$f10,372(s0)
 1ac:	c4700004 	lwc1	$f16,4(v1)
 1b0:	46128100 	add.s	$f4,$f16,$f18
 1b4:	c6100174 	lwc1	$f16,372(s0)
 1b8:	e6040178 	swc1	$f4,376(s0)
 1bc:	c4660008 	lwc1	$f6,8(v1)
 1c0:	46083280 	add.s	$f10,$f6,$f8
 1c4:	e60a017c 	swc1	$f10,380(s0)
 1c8:	e7b00010 	swc1	$f16,16(sp)
 1cc:	c6120178 	lwc1	$f18,376(s0)
 1d0:	8fa60074 	lw	a2,116(sp)
 1d4:	e7b20014 	swc1	$f18,20(sp)
 1d8:	c604017c 	lwc1	$f4,380(s0)
 1dc:	afa00024 	sw	zero,36(sp)
 1e0:	afa00020 	sw	zero,32(sp)
 1e4:	afa0001c 	sw	zero,28(sp)
 1e8:	e7a40018 	swc1	$f4,24(sp)
 1ec:	860c001c 	lh	t4,28(s0)
 1f0:	afa30048 	sw	v1,72(sp)
 1f4:	24c41c24 	addiu	a0,a2,7204
 1f8:	0c000000 	jal	0 <BgBowlWall_Init>
 1fc:	afac0028 	sw	t4,40(sp)
 200:	10400032 	beqz	v0,2cc <func_8086F260+0x1cc>
 204:	8fa30048 	lw	v1,72(sp)
 208:	26040174 	addiu	a0,s0,372
 20c:	8c8e0000 	lw	t6,0(a0)
 210:	24450154 	addiu	a1,v0,340
 214:	3c0f0000 	lui	t7,0x0
 218:	acae0000 	sw	t6,0(a1)
 21c:	8c8d0004 	lw	t5,4(a0)
 220:	25ef0000 	addiu	t7,t7,0
 224:	acad0004 	sw	t5,4(a1)
 228:	8c8e0008 	lw	t6,8(a0)
 22c:	106f0014 	beq	v1,t7,280 <func_8086F260+0x180>
 230:	acae0008 	sw	t6,8(a1)
 234:	8e190024 	lw	t9,36(s0)
 238:	27a3004c 	addiu	v1,sp,76
 23c:	ac790000 	sw	t9,0(v1)
 240:	8e180028 	lw	t8,40(s0)
 244:	8c690000 	lw	t1,0(v1)
 248:	ac780004 	sw	t8,4(v1)
 24c:	8e19002c 	lw	t9,44(s0)
 250:	ac790008 	sw	t9,8(v1)
 254:	ac890000 	sw	t1,0(a0)
 258:	8c680004 	lw	t0,4(v1)
 25c:	ac880004 	sw	t0,4(a0)
 260:	8c690008 	lw	t1,8(v1)
 264:	ac890008 	sw	t1,8(a0)
 268:	8c6b0000 	lw	t3,0(v1)
 26c:	acab0000 	sw	t3,0(a1)
 270:	8c6a0004 	lw	t2,4(v1)
 274:	acaa0004 	sw	t2,4(a1)
 278:	8c6b0008 	lw	t3,8(v1)
 27c:	acab0008 	sw	t3,8(a1)
 280:	8e0c0184 	lw	t4,388(s0)
 284:	3c0f0000 	lui	t7,0x0
 288:	8fad0074 	lw	t5,116(sp)
 28c:	1580000e 	bnez	t4,2c8 <func_8086F260+0x1c8>
 290:	25ef0000 	addiu	t7,t7,0
 294:	8da21c54 	lw	v0,7252(t5)
 298:	2403014b 	li	v1,331
 29c:	5040000b 	beqzl	v0,2cc <func_8086F260+0x1cc>
 2a0:	ae0f0164 	sw	t7,356(s0)
 2a4:	844e0000 	lh	t6,0(v0)
 2a8:	106e0003 	beq	v1,t6,2b8 <func_8086F260+0x1b8>
 2ac:	00000000 	nop
 2b0:	10000003 	b	2c0 <func_8086F260+0x1c0>
 2b4:	8c420124 	lw	v0,292(v0)
 2b8:	10000003 	b	2c8 <func_8086F260+0x1c8>
 2bc:	ae020184 	sw	v0,388(s0)
 2c0:	5440fff9 	bnezl	v0,2a8 <func_8086F260+0x1a8>
 2c4:	844e0000 	lh	t6,0(v0)
 2c8:	ae0f0164 	sw	t7,356(s0)
 2cc:	8fbf003c 	lw	ra,60(sp)
 2d0:	8fb00038 	lw	s0,56(sp)
 2d4:	27bd0070 	addiu	sp,sp,112
 2d8:	03e00008 	jr	ra
 2dc:	00000000 	nop

000002e0 <func_8086F440>:
 2e0:	afa50004 	sw	a1,4(sp)
 2e4:	848e0180 	lh	t6,384(a0)
 2e8:	3c0f0000 	lui	t7,0x0
 2ec:	25ef0000 	addiu	t7,t7,0
 2f0:	11c00002 	beqz	t6,2fc <func_8086F440+0x1c>
 2f4:	00000000 	nop
 2f8:	ac8f0164 	sw	t7,356(a0)
 2fc:	03e00008 	jr	ra
 300:	00000000 	nop

00000304 <func_8086F464>:
 304:	27bdff50 	addiu	sp,sp,-176
 308:	3c0e0000 	lui	t6,0x0
 30c:	afbf0074 	sw	ra,116(sp)
 310:	afb60070 	sw	s6,112(sp)
 314:	afb5006c 	sw	s5,108(sp)
 318:	afb40068 	sw	s4,104(sp)
 31c:	afb30064 	sw	s3,100(sp)
 320:	afb20060 	sw	s2,96(sp)
 324:	afb1005c 	sw	s1,92(sp)
 328:	afb00058 	sw	s0,88(sp)
 32c:	f7bc0050 	sdc1	$f28,80(sp)
 330:	f7ba0048 	sdc1	$f26,72(sp)
 334:	f7b80040 	sdc1	$f24,64(sp)
 338:	f7b60038 	sdc1	$f22,56(sp)
 33c:	f7b40030 	sdc1	$f20,48(sp)
 340:	25ce0000 	addiu	t6,t6,0
 344:	8dd80000 	lw	t8,0(t6)
 348:	27b500a0 	addiu	s5,sp,160
 34c:	3c190000 	lui	t9,0x0
 350:	aeb80000 	sw	t8,0(s5)
 354:	8dcf0004 	lw	t7,4(t6)
 358:	27390000 	addiu	t9,t9,0
 35c:	27b60094 	addiu	s6,sp,148
 360:	aeaf0004 	sw	t7,4(s5)
 364:	8dd80008 	lw	t8,8(t6)
 368:	00809025 	move	s2,a0
 36c:	00a09825 	move	s3,a1
 370:	aeb80008 	sw	t8,8(s5)
 374:	8f290000 	lw	t1,0(t9)
 378:	00008025 	move	s0,zero
 37c:	2405c180 	li	a1,-16000
 380:	aec90000 	sw	t1,0(s6)
 384:	8f280004 	lw	t0,4(t9)
 388:	248400b4 	addiu	a0,a0,180
 38c:	24060003 	li	a2,3
 390:	aec80004 	sw	t0,4(s6)
 394:	8f290008 	lw	t1,8(t9)
 398:	240701f4 	li	a3,500
 39c:	3c014120 	lui	at,0x4120
 3a0:	aec90008 	sw	t1,8(s6)
 3a4:	848aff68 	lh	t2,-152(a0)
 3a8:	5540000f 	bnezl	t2,3e8 <func_8086F464+0xe4>
 3ac:	4481e000 	mtc1	at,$f28
 3b0:	0c000000 	jal	0 <BgBowlWall_Init>
 3b4:	afa00010 	sw	zero,16(sp)
 3b8:	864300b4 	lh	v1,180(s2)
 3bc:	2861c3e2 	slti	at,v1,-15390
 3c0:	10200002 	beqz	at,3cc <func_8086F464+0xc8>
 3c4:	a6430030 	sh	v1,48(s2)
 3c8:	24100001 	li	s0,1
 3cc:	3c014120 	lui	at,0x4120
 3d0:	4481e000 	mtc1	at,$f28
 3d4:	3c0143c8 	lui	at,0x43c8
 3d8:	4481d000 	mtc1	at,$f26
 3dc:	10000017 	b	43c <func_8086F464+0x138>
 3e0:	00000000 	nop
 3e4:	4481e000 	mtc1	at,$f28
 3e8:	3c0143e1 	lui	at,0x43e1
 3ec:	44813000 	mtc1	at,$f6
 3f0:	c644016c 	lwc1	$f4,364(s2)
 3f4:	3c063e99 	lui	a2,0x3e99
 3f8:	4407e000 	mfc1	a3,$f28
 3fc:	46062201 	sub.s	$f8,$f4,$f6
 400:	34c6999a 	ori	a2,a2,0x999a
 404:	26440028 	addiu	a0,s2,40
 408:	44054000 	mfc1	a1,$f8
 40c:	0c000000 	jal	0 <BgBowlWall_Init>
 410:	00000000 	nop
 414:	3c0143c8 	lui	at,0x43c8
 418:	4481d000 	mtc1	at,$f26
 41c:	c650016c 	lwc1	$f16,364(s2)
 420:	c64a0028 	lwc1	$f10,40(s2)
 424:	461a8481 	sub.s	$f18,$f16,$f26
 428:	4612503c 	c.lt.s	$f10,$f18
 42c:	00000000 	nop
 430:	45000002 	bc1f	43c <func_8086F464+0x138>
 434:	00000000 	nop
 438:	24100001 	li	s0,1
 43c:	1200004f 	beqz	s0,57c <func_8086F464+0x278>
 440:	3c01c248 	lui	at,0xc248
 444:	4481c000 	mtc1	at,$f24
 448:	3c01c2c8 	lui	at,0xc2c8
 44c:	4481b000 	mtc1	at,$f22
 450:	3c014396 	lui	at,0x4396
 454:	4481a000 	mtc1	at,$f20
 458:	00008025 	move	s0,zero
 45c:	2414000f 	li	s4,15
 460:	27b10088 	addiu	s1,sp,136
 464:	0c000000 	jal	0 <BgBowlWall_Init>
 468:	4600a306 	mov.s	$f12,$f20
 46c:	c6440174 	lwc1	$f4,372(s2)
 470:	e7b6008c 	swc1	$f22,140(sp)
 474:	4600d306 	mov.s	$f12,$f26
 478:	46040180 	add.s	$f6,$f0,$f4
 47c:	0c000000 	jal	0 <BgBowlWall_Init>
 480:	e7a60088 	swc1	$f6,136(sp)
 484:	c648017c 	lwc1	$f8,380(s2)
 488:	240b0064 	li	t3,100
 48c:	240c001e 	li	t4,30
 490:	46080400 	add.s	$f16,$f0,$f8
 494:	afac0014 	sw	t4,20(sp)
 498:	afab0010 	sw	t3,16(sp)
 49c:	02602025 	move	a0,s3
 4a0:	e7b00090 	swc1	$f16,144(sp)
 4a4:	02202825 	move	a1,s1
 4a8:	02c03025 	move	a2,s6
 4ac:	0c000000 	jal	0 <BgBowlWall_Init>
 4b0:	02a03825 	move	a3,s5
 4b4:	4406e000 	mfc1	a2,$f28
 4b8:	240d0032 	li	t5,50
 4bc:	240e0003 	li	t6,3
 4c0:	240fffff 	li	t7,-1
 4c4:	2418000a 	li	t8,10
 4c8:	e7b8008c 	swc1	$f24,140(sp)
 4cc:	afb80020 	sw	t8,32(sp)
 4d0:	afaf001c 	sw	t7,28(sp)
 4d4:	afae0018 	sw	t6,24(sp)
 4d8:	afad0010 	sw	t5,16(sp)
 4dc:	02602025 	move	a0,s3
 4e0:	02202825 	move	a1,s1
 4e4:	00003825 	move	a3,zero
 4e8:	afb40014 	sw	s4,20(sp)
 4ec:	0c000000 	jal	0 <BgBowlWall_Init>
 4f0:	afa00024 	sw	zero,36(sp)
 4f4:	02402025 	move	a0,s2
 4f8:	0c000000 	jal	0 <BgBowlWall_Init>
 4fc:	2405180e 	li	a1,6158
 500:	26100001 	addiu	s0,s0,1
 504:	1614ffd7 	bne	s0,s4,464 <func_8086F464+0x160>
 508:	00000000 	nop
 50c:	867907a0 	lh	t9,1952(s3)
 510:	24050001 	li	a1,1
 514:	00194080 	sll	t0,t9,0x2
 518:	02684821 	addu	t1,s3,t0
 51c:	0c000000 	jal	0 <BgBowlWall_Init>
 520:	8d240790 	lw	a0,1936(t1)
 524:	00028400 	sll	s0,v0,0x10
 528:	00022400 	sll	a0,v0,0x10
 52c:	00108403 	sra	s0,s0,0x10
 530:	00042403 	sra	a0,a0,0x10
 534:	0c000000 	jal	0 <BgBowlWall_Init>
 538:	24057fff 	li	a1,32767
 53c:	00102400 	sll	a0,s0,0x10
 540:	00042403 	sra	a0,a0,0x10
 544:	2405012c 	li	a1,300
 548:	00003025 	move	a2,zero
 54c:	00003825 	move	a3,zero
 550:	0c000000 	jal	0 <BgBowlWall_Init>
 554:	afa00010 	sw	zero,16(sp)
 558:	00102400 	sll	a0,s0,0x10
 55c:	00042403 	sra	a0,a0,0x10
 560:	0c000000 	jal	0 <BgBowlWall_Init>
 564:	2405001e 	li	a1,30
 568:	3c0b0000 	lui	t3,0x0
 56c:	240a0014 	li	t2,20
 570:	256b0000 	addiu	t3,t3,0
 574:	a64a0182 	sh	t2,386(s2)
 578:	ae4b0164 	sw	t3,356(s2)
 57c:	8fbf0074 	lw	ra,116(sp)
 580:	d7b40030 	ldc1	$f20,48(sp)
 584:	d7b60038 	ldc1	$f22,56(sp)
 588:	d7b80040 	ldc1	$f24,64(sp)
 58c:	d7ba0048 	ldc1	$f26,72(sp)
 590:	d7bc0050 	ldc1	$f28,80(sp)
 594:	8fb00058 	lw	s0,88(sp)
 598:	8fb1005c 	lw	s1,92(sp)
 59c:	8fb20060 	lw	s2,96(sp)
 5a0:	8fb30064 	lw	s3,100(sp)
 5a4:	8fb40068 	lw	s4,104(sp)
 5a8:	8fb5006c 	lw	s5,108(sp)
 5ac:	8fb60070 	lw	s6,112(sp)
 5b0:	03e00008 	jr	ra
 5b4:	27bd00b0 	addiu	sp,sp,176

000005b8 <func_8086F718>:
 5b8:	27bdffd8 	addiu	sp,sp,-40
 5bc:	afbf0024 	sw	ra,36(sp)
 5c0:	afb00020 	sw	s0,32(sp)
 5c4:	afa5002c 	sw	a1,44(sp)
 5c8:	84820182 	lh	v0,386(a0)
 5cc:	00808025 	move	s0,a0
 5d0:	28410002 	slti	at,v0,2
 5d4:	54200019 	bnezl	at,63c <func_8086F718+0x84>
 5d8:	24010001 	li	at,1
 5dc:	848e001c 	lh	t6,28(a0)
 5e0:	248400b4 	addiu	a0,a0,180
 5e4:	2405c180 	li	a1,-16000
 5e8:	15c00007 	bnez	t6,608 <func_8086F718+0x50>
 5ec:	3c0143e1 	lui	at,0x43e1
 5f0:	24060001 	li	a2,1
 5f4:	240700c8 	li	a3,200
 5f8:	0c000000 	jal	0 <BgBowlWall_Init>
 5fc:	afa00010 	sw	zero,16(sp)
 600:	10000021 	b	688 <func_8086F718+0xd0>
 604:	8fbf0024 	lw	ra,36(sp)
 608:	c604016c 	lwc1	$f4,364(s0)
 60c:	44813000 	mtc1	at,$f6
 610:	3c063e99 	lui	a2,0x3e99
 614:	34c6999a 	ori	a2,a2,0x999a
 618:	46062201 	sub.s	$f8,$f4,$f6
 61c:	26040028 	addiu	a0,s0,40
 620:	3c074120 	lui	a3,0x4120
 624:	44054000 	mfc1	a1,$f8
 628:	0c000000 	jal	0 <BgBowlWall_Init>
 62c:	00000000 	nop
 630:	10000015 	b	688 <func_8086F718+0xd0>
 634:	8fbf0024 	lw	ra,36(sp)
 638:	24010001 	li	at,1
 63c:	14410011 	bne	v0,at,684 <func_8086F718+0xcc>
 640:	24180002 	li	t8,2
 644:	3c0143e1 	lui	at,0x43e1
 648:	44818000 	mtc1	at,$f16
 64c:	c60a016c 	lwc1	$f10,364(s0)
 650:	8608001c 	lh	t0,28(s0)
 654:	a60000b4 	sh	zero,180(s0)
 658:	46105481 	sub.s	$f18,$f10,$f16
 65c:	860f00b4 	lh	t7,180(s0)
 660:	8e190184 	lw	t9,388(s0)
 664:	00084840 	sll	t1,t0,0x1
 668:	e6120028 	swc1	$f18,40(s0)
 66c:	3c0b0000 	lui	t3,0x0
 670:	a60f0030 	sh	t7,48(s0)
 674:	03295021 	addu	t2,t9,t1
 678:	a558023e 	sh	t8,574(t2)
 67c:	256b0000 	addiu	t3,t3,0
 680:	ae0b0164 	sw	t3,356(s0)
 684:	8fbf0024 	lw	ra,36(sp)
 688:	8fb00020 	lw	s0,32(sp)
 68c:	27bd0028 	addiu	sp,sp,40
 690:	03e00008 	jr	ra
 694:	00000000 	nop

00000698 <func_8086F7F8>:
 698:	27bdffe0 	addiu	sp,sp,-32
 69c:	afbf001c 	sw	ra,28(sp)
 6a0:	afb00018 	sw	s0,24(sp)
 6a4:	afa50024 	sw	a1,36(sp)
 6a8:	848f001c 	lh	t7,28(a0)
 6ac:	8c8e0184 	lw	t6,388(a0)
 6b0:	00808025 	move	s0,a0
 6b4:	000fc040 	sll	t8,t7,0x1
 6b8:	01d8c821 	addu	t9,t6,t8
 6bc:	8728023e 	lh	t0,574(t9)
 6c0:	24010002 	li	at,2
 6c4:	24840028 	addiu	a0,a0,40
 6c8:	11010014 	beq	t0,at,71c <func_8086F7F8+0x84>
 6cc:	3c063e99 	lui	a2,0x3e99
 6d0:	8e05016c 	lw	a1,364(s0)
 6d4:	34c6999a 	ori	a2,a2,0x999a
 6d8:	0c000000 	jal	0 <BgBowlWall_Init>
 6dc:	3c074248 	lui	a3,0x4248
 6e0:	c602016c 	lwc1	$f2,364(s0)
 6e4:	c6040028 	lwc1	$f4,40(s0)
 6e8:	3c014120 	lui	at,0x4120
 6ec:	44813000 	mtc1	at,$f6
 6f0:	46022001 	sub.s	$f0,$f4,$f2
 6f4:	3c090000 	lui	t1,0x0
 6f8:	25290000 	addiu	t1,t1,0
 6fc:	46000005 	abs.s	$f0,$f0
 700:	4606003e 	c.le.s	$f0,$f6
 704:	00000000 	nop
 708:	45020005 	bc1fl	720 <func_8086F7F8+0x88>
 70c:	8fbf001c 	lw	ra,28(sp)
 710:	e6020028 	swc1	$f2,40(s0)
 714:	a6000180 	sh	zero,384(s0)
 718:	ae090164 	sw	t1,356(s0)
 71c:	8fbf001c 	lw	ra,28(sp)
 720:	8fb00018 	lw	s0,24(sp)
 724:	27bd0020 	addiu	sp,sp,32
 728:	03e00008 	jr	ra
 72c:	00000000 	nop

00000730 <BgBowlWall_Update>:
 730:	27bdffe8 	addiu	sp,sp,-24
 734:	afbf0014 	sw	ra,20(sp)
 738:	84820182 	lh	v0,386(a0)
 73c:	10400002 	beqz	v0,748 <BgBowlWall_Update+0x18>
 740:	244effff 	addiu	t6,v0,-1
 744:	a48e0182 	sh	t6,386(a0)
 748:	8c990164 	lw	t9,356(a0)
 74c:	0320f809 	jalr	t9
 750:	00000000 	nop
 754:	8fbf0014 	lw	ra,20(sp)
 758:	27bd0018 	addiu	sp,sp,24
 75c:	03e00008 	jr	ra
 760:	00000000 	nop

00000764 <BgBowlWall_Draw>:
 764:	27bdffa0 	addiu	sp,sp,-96
 768:	afb10020 	sw	s1,32(sp)
 76c:	00a08825 	move	s1,a1
 770:	afbf0024 	sw	ra,36(sp)
 774:	afb0001c 	sw	s0,28(sp)
 778:	afa40060 	sw	a0,96(sp)
 77c:	8ca50000 	lw	a1,0(a1)
 780:	3c060000 	lui	a2,0x0
 784:	24c60000 	addiu	a2,a2,0
 788:	27a40040 	addiu	a0,sp,64
 78c:	240701b9 	li	a3,441
 790:	0c000000 	jal	0 <BgBowlWall_Init>
 794:	00a08025 	move	s0,a1
 798:	0c000000 	jal	0 <BgBowlWall_Init>
 79c:	8e240000 	lw	a0,0(s1)
 7a0:	8e0202c0 	lw	v0,704(s0)
 7a4:	3c0fdb06 	lui	t7,0xdb06
 7a8:	35ef0020 	ori	t7,t7,0x20
 7ac:	244e0008 	addiu	t6,v0,8
 7b0:	ae0e02c0 	sw	t6,704(s0)
 7b4:	ac4f0000 	sw	t7,0(v0)
 7b8:	8e23009c 	lw	v1,156(s1)
 7bc:	8e240000 	lw	a0,0(s1)
 7c0:	24180010 	li	t8,16
 7c4:	00030823 	negu	at,v1
 7c8:	00013040 	sll	a2,at,0x1
 7cc:	afb80010 	sw	t8,16(sp)
 7d0:	00002825 	move	a1,zero
 7d4:	24070010 	li	a3,16
 7d8:	0c000000 	jal	0 <BgBowlWall_Init>
 7dc:	afa2003c 	sw	v0,60(sp)
 7e0:	8fa8003c 	lw	t0,60(sp)
 7e4:	3c09e700 	lui	t1,0xe700
 7e8:	3c0bda38 	lui	t3,0xda38
 7ec:	ad020004 	sw	v0,4(t0)
 7f0:	8e0202c0 	lw	v0,704(s0)
 7f4:	356b0003 	ori	t3,t3,0x3
 7f8:	3c050000 	lui	a1,0x0
 7fc:	24590008 	addiu	t9,v0,8
 800:	ae1902c0 	sw	t9,704(s0)
 804:	ac490000 	sw	t1,0(v0)
 808:	ac400004 	sw	zero,4(v0)
 80c:	8e0202c0 	lw	v0,704(s0)
 810:	24a50000 	addiu	a1,a1,0
 814:	240601c5 	li	a2,453
 818:	244a0008 	addiu	t2,v0,8
 81c:	ae0a02c0 	sw	t2,704(s0)
 820:	ac4b0000 	sw	t3,0(v0)
 824:	8e240000 	lw	a0,0(s1)
 828:	0c000000 	jal	0 <BgBowlWall_Init>
 82c:	afa20034 	sw	v0,52(sp)
 830:	8fa30034 	lw	v1,52(sp)
 834:	3c060000 	lui	a2,0x0
 838:	3c0fde00 	lui	t7,0xde00
 83c:	ac620004 	sw	v0,4(v1)
 840:	8fac0060 	lw	t4,96(sp)
 844:	3c09de00 	lui	t1,0xde00
 848:	24c60000 	addiu	a2,a2,0
 84c:	858d001c 	lh	t5,28(t4)
 850:	27a40040 	addiu	a0,sp,64
 854:	240701d0 	li	a3,464
 858:	55a0000a 	bnezl	t5,884 <BgBowlWall_Draw+0x120>
 85c:	8e0202c0 	lw	v0,704(s0)
 860:	8e0202c0 	lw	v0,704(s0)
 864:	3c180600 	lui	t8,0x600
 868:	27180610 	addiu	t8,t8,1552
 86c:	244e0008 	addiu	t6,v0,8
 870:	ae0e02c0 	sw	t6,704(s0)
 874:	ac580004 	sw	t8,4(v0)
 878:	10000008 	b	89c <BgBowlWall_Draw+0x138>
 87c:	ac4f0000 	sw	t7,0(v0)
 880:	8e0202c0 	lw	v0,704(s0)
 884:	3c0a0600 	lui	t2,0x600
 888:	254a1390 	addiu	t2,t2,5008
 88c:	24590008 	addiu	t9,v0,8
 890:	ae1902c0 	sw	t9,704(s0)
 894:	ac4a0004 	sw	t2,4(v0)
 898:	ac490000 	sw	t1,0(v0)
 89c:	0c000000 	jal	0 <BgBowlWall_Init>
 8a0:	8e250000 	lw	a1,0(s1)
 8a4:	8fbf0024 	lw	ra,36(sp)
 8a8:	8fb0001c 	lw	s0,28(sp)
 8ac:	8fb10020 	lw	s1,32(sp)
 8b0:	03e00008 	jr	ra
 8b4:	27bd0060 	addiu	sp,sp,96
	...
