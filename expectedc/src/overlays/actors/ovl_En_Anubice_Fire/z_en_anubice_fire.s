
build/src/overlays/actors/ovl_En_Anubice_Fire/z_en_anubice_fire.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnAnubiceFire_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	00803025 	move	a2,a0
   8:	afa5002c 	sw	a1,44(sp)
   c:	00a02025 	move	a0,a1
  10:	afbf0014 	sw	ra,20(sp)
  14:	24c501a8 	addiu	a1,a2,424
  18:	afa5001c 	sw	a1,28(sp)
  1c:	0c000000 	jal	0 <EnAnubiceFire_Init>
  20:	afa60028 	sw	a2,40(sp)
  24:	3c070000 	lui	a3,0x0
  28:	8fa5001c 	lw	a1,28(sp)
  2c:	8fa60028 	lw	a2,40(sp)
  30:	24e70000 	addiu	a3,a3,0
  34:	0c000000 	jal	0 <EnAnubiceFire_Init>
  38:	8fa4002c 	lw	a0,44(sp)
  3c:	8fa60028 	lw	a2,40(sp)
  40:	3c014000 	lui	at,0x4000
  44:	44812000 	mtc1	at,$f4
  48:	44803000 	mtc1	zero,$f6
  4c:	240e001e 	li	t6,30
  50:	a4ce015a 	sh	t6,346(a2)
  54:	24c30024 	addiu	v1,a2,36
  58:	e4c40154 	swc1	$f4,340(a2)
  5c:	e4c60150 	swc1	$f6,336(a2)
  60:	8c780000 	lw	t8,0(v1)
  64:	24040002 	li	a0,2
  68:	00044880 	sll	t1,a0,0x2
  6c:	acd80160 	sw	t8,352(a2)
  70:	8c6f0004 	lw	t7,4(v1)
  74:	01244823 	subu	t1,t1,a0
  78:	00094880 	sll	t1,t1,0x2
  7c:	accf0164 	sw	t7,356(a2)
  80:	8c780008 	lw	t8,8(v1)
  84:	00c91021 	addu	v0,a2,t1
  88:	acd80168 	sw	t8,360(a2)
  8c:	8c680000 	lw	t0,0(v1)
  90:	acc8016c 	sw	t0,364(a2)
  94:	8c790004 	lw	t9,4(v1)
  98:	acd90170 	sw	t9,368(a2)
  9c:	8c680008 	lw	t0,8(v1)
  a0:	acc80174 	sw	t0,372(a2)
  a4:	8c6b0000 	lw	t3,0(v1)
  a8:	3c080000 	lui	t0,0x0
  ac:	25080000 	addiu	t0,t0,0
  b0:	ac4b0160 	sw	t3,352(v0)
  b4:	8c6a0004 	lw	t2,4(v1)
  b8:	ac4a0164 	sw	t2,356(v0)
  bc:	8c6b0008 	lw	t3,8(v1)
  c0:	ac4b0168 	sw	t3,360(v0)
  c4:	8c6d0000 	lw	t5,0(v1)
  c8:	ac4d016c 	sw	t5,364(v0)
  cc:	8c6c0004 	lw	t4,4(v1)
  d0:	ac4c0170 	sw	t4,368(v0)
  d4:	8c6d0008 	lw	t5,8(v1)
  d8:	ac4d0174 	sw	t5,372(v0)
  dc:	8c6f0000 	lw	t7,0(v1)
  e0:	ac4f0178 	sw	t7,376(v0)
  e4:	8c6e0004 	lw	t6,4(v1)
  e8:	ac4e017c 	sw	t6,380(v0)
  ec:	8c6f0008 	lw	t7,8(v1)
  f0:	ac4f0180 	sw	t7,384(v0)
  f4:	8c790000 	lw	t9,0(v1)
  f8:	ac590184 	sw	t9,388(v0)
  fc:	8c780004 	lw	t8,4(v1)
 100:	ac580188 	sw	t8,392(v0)
 104:	8c790008 	lw	t9,8(v1)
 108:	ac59018c 	sw	t9,396(v0)
 10c:	a4c0015e 	sh	zero,350(a2)
 110:	acc8014c 	sw	t0,332(a2)
 114:	8fbf0014 	lw	ra,20(sp)
 118:	27bd0028 	addiu	sp,sp,40
 11c:	03e00008 	jr	ra
 120:	00000000 	nop

00000124 <EnAnubiceFire_Destroy>:
 124:	27bdffe8 	addiu	sp,sp,-24
 128:	00803025 	move	a2,a0
 12c:	afbf0014 	sw	ra,20(sp)
 130:	00a02025 	move	a0,a1
 134:	0c000000 	jal	0 <EnAnubiceFire_Init>
 138:	24c501a8 	addiu	a1,a2,424
 13c:	8fbf0014 	lw	ra,20(sp)
 140:	27bd0018 	addiu	sp,sp,24
 144:	03e00008 	jr	ra
 148:	00000000 	nop

0000014c <func_809B26EC>:
 14c:	27bdffd0 	addiu	sp,sp,-48
 150:	3c0f0000 	lui	t7,0x0
 154:	afbf001c 	sw	ra,28(sp)
 158:	afb00018 	sw	s0,24(sp)
 15c:	afa50034 	sw	a1,52(sp)
 160:	25ef0000 	addiu	t7,t7,0
 164:	8df90000 	lw	t9,0(t7)
 168:	27ae0024 	addiu	t6,sp,36
 16c:	8df80004 	lw	t8,4(t7)
 170:	add90000 	sw	t9,0(t6)
 174:	8df90008 	lw	t9,8(t7)
 178:	00808025 	move	s0,a0
 17c:	add80004 	sw	t8,4(t6)
 180:	0c000000 	jal	0 <EnAnubiceFire_Init>
 184:	add90008 	sw	t9,8(t6)
 188:	86080032 	lh	t0,50(s0)
 18c:	3c014700 	lui	at,0x4700
 190:	44814000 	mtc1	at,$f8
 194:	44882000 	mtc1	t0,$f4
 198:	3c010000 	lui	at,0x0
 19c:	c4300000 	lwc1	$f16,0(at)
 1a0:	468021a0 	cvt.s.w	$f6,$f4
 1a4:	00002825 	move	a1,zero
 1a8:	46083283 	div.s	$f10,$f6,$f8
 1ac:	46105302 	mul.s	$f12,$f10,$f16
 1b0:	0c000000 	jal	0 <EnAnubiceFire_Init>
 1b4:	00000000 	nop
 1b8:	86090030 	lh	t1,48(s0)
 1bc:	3c014700 	lui	at,0x4700
 1c0:	44813000 	mtc1	at,$f6
 1c4:	44899000 	mtc1	t1,$f18
 1c8:	3c010000 	lui	at,0x0
 1cc:	c42a0000 	lwc1	$f10,0(at)
 1d0:	46809120 	cvt.s.w	$f4,$f18
 1d4:	24050001 	li	a1,1
 1d8:	46062203 	div.s	$f8,$f4,$f6
 1dc:	460a4302 	mul.s	$f12,$f8,$f10
 1e0:	0c000000 	jal	0 <EnAnubiceFire_Init>
 1e4:	00000000 	nop
 1e8:	3c014170 	lui	at,0x4170
 1ec:	44818000 	mtc1	at,$f16
 1f0:	27a40024 	addiu	a0,sp,36
 1f4:	2605005c 	addiu	a1,s0,92
 1f8:	0c000000 	jal	0 <EnAnubiceFire_Init>
 1fc:	e7b0002c 	swc1	$f16,44(sp)
 200:	0c000000 	jal	0 <EnAnubiceFire_Init>
 204:	00000000 	nop
 208:	a6000034 	sh	zero,52(s0)
 20c:	86020034 	lh	v0,52(s0)
 210:	3c0a0000 	lui	t2,0x0
 214:	254a0000 	addiu	t2,t2,0
 218:	ae0a014c 	sw	t2,332(s0)
 21c:	a6020032 	sh	v0,50(s0)
 220:	a6020030 	sh	v0,48(s0)
 224:	8fbf001c 	lw	ra,28(sp)
 228:	8fb00018 	lw	s0,24(sp)
 22c:	27bd0030 	addiu	sp,sp,48
 230:	03e00008 	jr	ra
 234:	00000000 	nop

00000238 <func_809B27D8>:
 238:	27bdff40 	addiu	sp,sp,-192
 23c:	3c0e0000 	lui	t6,0x0
 240:	afbf005c 	sw	ra,92(sp)
 244:	afbe0058 	sw	s8,88(sp)
 248:	afb70054 	sw	s7,84(sp)
 24c:	afb60050 	sw	s6,80(sp)
 250:	afb5004c 	sw	s5,76(sp)
 254:	afb40048 	sw	s4,72(sp)
 258:	afb30044 	sw	s3,68(sp)
 25c:	afb20040 	sw	s2,64(sp)
 260:	afb1003c 	sw	s1,60(sp)
 264:	afb00038 	sw	s0,56(sp)
 268:	f7b60030 	sdc1	$f22,48(sp)
 26c:	f7b40028 	sdc1	$f20,40(sp)
 270:	afa500c4 	sw	a1,196(sp)
 274:	25ce0000 	addiu	t6,t6,0
 278:	8dd80000 	lw	t8,0(t6)
 27c:	27b600b0 	addiu	s6,sp,176
 280:	3c190000 	lui	t9,0x0
 284:	aed80000 	sw	t8,0(s6)
 288:	8dcf0004 	lw	t7,4(t6)
 28c:	27390000 	addiu	t9,t9,0
 290:	27b700a4 	addiu	s7,sp,164
 294:	aecf0004 	sw	t7,4(s6)
 298:	8dd80008 	lw	t8,8(t6)
 29c:	3c0a0000 	lui	t2,0x0
 2a0:	254a0000 	addiu	t2,t2,0
 2a4:	aed80008 	sw	t8,8(s6)
 2a8:	8f290000 	lw	t1,0(t9)
 2ac:	27be0094 	addiu	s8,sp,148
 2b0:	3c0d0000 	lui	t5,0x0
 2b4:	aee90000 	sw	t1,0(s7)
 2b8:	8f280004 	lw	t0,4(t9)
 2bc:	3c0e0000 	lui	t6,0x0
 2c0:	25ce0000 	addiu	t6,t6,0
 2c4:	aee80004 	sw	t0,4(s7)
 2c8:	8f290008 	lw	t1,8(t9)
 2cc:	27b00084 	addiu	s0,sp,132
 2d0:	3c190000 	lui	t9,0x0
 2d4:	aee90008 	sw	t1,8(s7)
 2d8:	8d4c0000 	lw	t4,0(t2)
 2dc:	27390000 	addiu	t9,t9,0
 2e0:	27b20078 	addiu	s2,sp,120
 2e4:	afcc0000 	sw	t4,0(s8)
 2e8:	8dad0000 	lw	t5,0(t5)
 2ec:	3c063e4c 	lui	a2,0x3e4c
 2f0:	3c073ecc 	lui	a3,0x3ecc
 2f4:	afad0090 	sw	t5,144(sp)
 2f8:	8dd80000 	lw	t8,0(t6)
 2fc:	00808825 	move	s1,a0
 300:	34e7cccd 	ori	a3,a3,0xcccd
 304:	ae180000 	sw	t8,0(s0)
 308:	8dcf0004 	lw	t7,4(t6)
 30c:	34c6cccd 	ori	a2,a2,0xcccd
 310:	ae0f0004 	sw	t7,4(s0)
 314:	8dd80008 	lw	t8,8(t6)
 318:	ae180008 	sw	t8,8(s0)
 31c:	8f290000 	lw	t1,0(t9)
 320:	ae490000 	sw	t1,0(s2)
 324:	8f280004 	lw	t0,4(t9)
 328:	ae480004 	sw	t0,4(s2)
 32c:	8f290008 	lw	t1,8(t9)
 330:	ae490008 	sw	t1,8(s2)
 334:	848a0034 	lh	t2,52(a0)
 338:	848c015a 	lh	t4,346(a0)
 33c:	254b1388 	addiu	t3,t2,5000
 340:	15800004 	bnez	t4,354 <func_809B27D8+0x11c>
 344:	a48b0034 	sh	t3,52(a0)
 348:	4480a000 	mtc1	zero,$f20
 34c:	00000000 	nop
 350:	e4940154 	swc1	$f20,340(a0)
 354:	4480a000 	mtc1	zero,$f20
 358:	26240150 	addiu	a0,s1,336
 35c:	0c000000 	jal	0 <EnAnubiceFire_Init>
 360:	8e250154 	lw	a1,340(s1)
 364:	862d015a 	lh	t5,346(s1)
 368:	3c010000 	lui	at,0x0
 36c:	55a0000c 	bnezl	t5,3a0 <func_809B27D8+0x168>
 370:	862e001c 	lh	t6,28(s1)
 374:	c6240150 	lwc1	$f4,336(s1)
 378:	c4260000 	lwc1	$f6,0(at)
 37c:	4606203c 	c.lt.s	$f4,$f6
 380:	00000000 	nop
 384:	45020006 	bc1fl	3a0 <func_809B27D8+0x168>
 388:	862e001c 	lh	t6,28(s1)
 38c:	0c000000 	jal	0 <EnAnubiceFire_Init>
 390:	02202025 	move	a0,s1
 394:	10000077 	b	574 <func_809B27D8+0x33c>
 398:	8fbf005c 	lw	ra,92(sp)
 39c:	862e001c 	lh	t6,28(s1)
 3a0:	3c010000 	lui	at,0x0
 3a4:	55c00039 	bnezl	t6,48c <func_809B27D8+0x254>
 3a8:	c62a0150 	lwc1	$f10,336(s1)
 3ac:	922f01b8 	lbu	t7,440(s1)
 3b0:	31f80004 	andi	t8,t7,0x4
 3b4:	53000035 	beqzl	t8,48c <func_809B27D8+0x254>
 3b8:	c62a0150 	lwc1	$f10,336(s1)
 3bc:	0c000000 	jal	0 <EnAnubiceFire_Init>
 3c0:	8fa400c4 	lw	a0,196(sp)
 3c4:	1040001d 	beqz	v0,43c <func_809B27D8+0x204>
 3c8:	26250024 	addiu	a1,s1,36
 3cc:	02202025 	move	a0,s1
 3d0:	0c000000 	jal	0 <EnAnubiceFire_Init>
 3d4:	24051808 	li	a1,6152
 3d8:	3c01bf80 	lui	at,0xbf80
 3dc:	44810000 	mtc1	at,$f0
 3e0:	c628005c 	lwc1	$f8,92(s1)
 3e4:	3c01bf00 	lui	at,0xbf00
 3e8:	44819000 	mtc1	at,$f18
 3ec:	46004282 	mul.s	$f10,$f8,$f0
 3f0:	c6300060 	lwc1	$f16,96(s1)
 3f4:	c6260064 	lwc1	$f6,100(s1)
 3f8:	923901b8 	lbu	t9,440(s1)
 3fc:	46128102 	mul.s	$f4,$f16,$f18
 400:	240b0002 	li	t3,2
 404:	3329ffe9 	andi	t1,t9,0xffe9
 408:	46003202 	mul.s	$f8,$f6,$f0
 40c:	a22901b8 	sb	t1,440(s1)
 410:	352a0008 	ori	t2,t1,0x8
 414:	240c001e 	li	t4,30
 418:	240d0001 	li	t5,1
 41c:	a22a01b8 	sb	t2,440(s1)
 420:	ae2b01c0 	sw	t3,448(s1)
 424:	a62c015a 	sh	t4,346(s1)
 428:	a62d001c 	sh	t5,28(s1)
 42c:	e62a005c 	swc1	$f10,92(s1)
 430:	e6240060 	swc1	$f4,96(s1)
 434:	1000004e 	b	570 <func_809B27D8+0x338>
 438:	e6280064 	swc1	$f8,100(s1)
 43c:	a620015a 	sh	zero,346(s1)
 440:	240e000a 	li	t6,10
 444:	240f0005 	li	t7,5
 448:	afaf0014 	sw	t7,20(sp)
 44c:	afae0010 	sw	t6,16(sp)
 450:	8fa400c4 	lw	a0,196(sp)
 454:	02403025 	move	a2,s2
 458:	0c000000 	jal	0 <EnAnubiceFire_Init>
 45c:	02003825 	move	a3,s0
 460:	e6340064 	swc1	$f20,100(s1)
 464:	e6340060 	swc1	$f20,96(s1)
 468:	e634005c 	swc1	$f20,92(s1)
 46c:	02202025 	move	a0,s1
 470:	0c000000 	jal	0 <EnAnubiceFire_Init>
 474:	2405399d 	li	a1,14749
 478:	3c180000 	lui	t8,0x0
 47c:	27180000 	addiu	t8,t8,0
 480:	1000003b 	b	570 <func_809B27D8+0x338>
 484:	ae38014c 	sw	t8,332(s1)
 488:	c62a0150 	lwc1	$f10,336(s1)
 48c:	c4300000 	lwc1	$f16,0(at)
 490:	3c01447a 	lui	at,0x447a
 494:	00008025 	move	s0,zero
 498:	4610503c 	c.lt.s	$f10,$f16
 49c:	2415000a 	li	s5,10
 4a0:	27b40098 	addiu	s4,sp,152
 4a4:	45030033 	bc1tl	574 <func_809B27D8+0x33c>
 4a8:	8fbf005c 	lw	ra,92(sp)
 4ac:	44819000 	mtc1	at,$f18
 4b0:	3c014120 	lui	at,0x4120
 4b4:	44813000 	mtc1	at,$f6
 4b8:	4600910d 	trunc.w.s	$f4,$f18
 4bc:	3c0141a0 	lui	at,0x41a0
 4c0:	4481b000 	mtc1	at,$f22
 4c4:	4600320d 	trunc.w.s	$f8,$f6
 4c8:	44122000 	mfc1	s2,$f4
 4cc:	3c013f00 	lui	at,0x3f00
 4d0:	4481a000 	mtc1	at,$f20
 4d4:	00129400 	sll	s2,s2,0x10
 4d8:	44134000 	mfc1	s3,$f8
 4dc:	00129403 	sra	s2,s2,0x10
 4e0:	0c000000 	jal	0 <EnAnubiceFire_Init>
 4e4:	00000000 	nop
 4e8:	c6300150 	lwc1	$f16,336(s1)
 4ec:	46140281 	sub.s	$f10,$f0,$f20
 4f0:	c6260024 	lwc1	$f6,36(s1)
 4f4:	46168482 	mul.s	$f18,$f16,$f22
 4f8:	00000000 	nop
 4fc:	46125102 	mul.s	$f4,$f10,$f18
 500:	46062200 	add.s	$f8,$f4,$f6
 504:	0c000000 	jal	0 <EnAnubiceFire_Init>
 508:	e7a80098 	swc1	$f8,152(sp)
 50c:	c62a0150 	lwc1	$f10,336(s1)
 510:	46140401 	sub.s	$f16,$f0,$f20
 514:	c6260028 	lwc1	$f6,40(s1)
 518:	46165482 	mul.s	$f18,$f10,$f22
 51c:	27a90090 	addiu	t1,sp,144
 520:	8fa400c4 	lw	a0,196(sp)
 524:	02802825 	move	a1,s4
 528:	02c03025 	move	a2,s6
 52c:	02e03825 	move	a3,s7
 530:	46128102 	mul.s	$f4,$f16,$f18
 534:	46062200 	add.s	$f8,$f4,$f6
 538:	e7a8009c 	swc1	$f8,156(sp)
 53c:	c62a002c 	lwc1	$f10,44(s1)
 540:	afb3001c 	sw	s3,28(sp)
 544:	afb20018 	sw	s2,24(sp)
 548:	afa90014 	sw	t1,20(sp)
 54c:	afbe0010 	sw	s8,16(sp)
 550:	0c000000 	jal	0 <EnAnubiceFire_Init>
 554:	e7aa00a0 	swc1	$f10,160(sp)
 558:	26100001 	addiu	s0,s0,1
 55c:	1615ffe0 	bne	s0,s5,4e0 <func_809B27D8+0x2a8>
 560:	00000000 	nop
 564:	02202025 	move	a0,s1
 568:	0c000000 	jal	0 <EnAnubiceFire_Init>
 56c:	2405319c 	li	a1,12700
 570:	8fbf005c 	lw	ra,92(sp)
 574:	d7b40028 	ldc1	$f20,40(sp)
 578:	d7b60030 	ldc1	$f22,48(sp)
 57c:	8fb00038 	lw	s0,56(sp)
 580:	8fb1003c 	lw	s1,60(sp)
 584:	8fb20040 	lw	s2,64(sp)
 588:	8fb30044 	lw	s3,68(sp)
 58c:	8fb40048 	lw	s4,72(sp)
 590:	8fb5004c 	lw	s5,76(sp)
 594:	8fb60050 	lw	s6,80(sp)
 598:	8fb70054 	lw	s7,84(sp)
 59c:	8fbe0058 	lw	s8,88(sp)
 5a0:	03e00008 	jr	ra
 5a4:	27bd00c0 	addiu	sp,sp,192

000005a8 <func_809B2B48>:
 5a8:	27bdff68 	addiu	sp,sp,-152
 5ac:	3c0e0000 	lui	t6,0x0
 5b0:	afbf005c 	sw	ra,92(sp)
 5b4:	afbe0058 	sw	s8,88(sp)
 5b8:	afb70054 	sw	s7,84(sp)
 5bc:	afb60050 	sw	s6,80(sp)
 5c0:	afb5004c 	sw	s5,76(sp)
 5c4:	afb40048 	sw	s4,72(sp)
 5c8:	afb30044 	sw	s3,68(sp)
 5cc:	afb20040 	sw	s2,64(sp)
 5d0:	afb1003c 	sw	s1,60(sp)
 5d4:	afb00038 	sw	s0,56(sp)
 5d8:	f7b60030 	sdc1	$f22,48(sp)
 5dc:	f7b40028 	sdc1	$f20,40(sp)
 5e0:	25ce0000 	addiu	t6,t6,0
 5e4:	8dd80000 	lw	t8,0(t6)
 5e8:	27b5008c 	addiu	s5,sp,140
 5ec:	3c190000 	lui	t9,0x0
 5f0:	aeb80000 	sw	t8,0(s5)
 5f4:	8dcf0004 	lw	t7,4(t6)
 5f8:	27390000 	addiu	t9,t9,0
 5fc:	27b60080 	addiu	s6,sp,128
 600:	aeaf0004 	sw	t7,4(s5)
 604:	8dd80008 	lw	t8,8(t6)
 608:	3c0a0000 	lui	t2,0x0
 60c:	254a0000 	addiu	t2,t2,0
 610:	aeb80008 	sw	t8,8(s5)
 614:	8f290000 	lw	t1,0(t9)
 618:	27b70070 	addiu	s7,sp,112
 61c:	3c0d0000 	lui	t5,0x0
 620:	aec90000 	sw	t1,0(s6)
 624:	8f280004 	lw	t0,4(t9)
 628:	25ad0000 	addiu	t5,t5,0
 62c:	27be006c 	addiu	s8,sp,108
 630:	aec80004 	sw	t0,4(s6)
 634:	8f290008 	lw	t1,8(t9)
 638:	00808825 	move	s1,a0
 63c:	00a0a025 	move	s4,a1
 640:	aec90008 	sw	t1,8(s6)
 644:	8d4c0000 	lw	t4,0(t2)
 648:	00008025 	move	s0,zero
 64c:	24130014 	li	s3,20
 650:	aeec0000 	sw	t4,0(s7)
 654:	8daf0000 	lw	t7,0(t5)
 658:	3c014000 	lui	at,0x4000
 65c:	afcf0000 	sw	t7,0(s8)
 660:	8498015c 	lh	t8,348(a0)
 664:	5700002e 	bnezl	t8,720 <func_809B2B48+0x178>
 668:	8fbf005c 	lw	ra,92(sp)
 66c:	4481b000 	mtc1	at,$f22
 670:	3c014100 	lui	at,0x4100
 674:	4481a000 	mtc1	at,$f20
 678:	27b20074 	addiu	s2,sp,116
 67c:	c6240024 	lwc1	$f4,36(s1)
 680:	4600a306 	mov.s	$f12,$f20
 684:	e7a40074 	swc1	$f4,116(sp)
 688:	c6260028 	lwc1	$f6,40(s1)
 68c:	e7a60078 	swc1	$f6,120(sp)
 690:	c628002c 	lwc1	$f8,44(s1)
 694:	0c000000 	jal	0 <EnAnubiceFire_Init>
 698:	e7a8007c 	swc1	$f8,124(sp)
 69c:	e7a00080 	swc1	$f0,128(sp)
 6a0:	0c000000 	jal	0 <EnAnubiceFire_Init>
 6a4:	4600b306 	mov.s	$f12,$f22
 6a8:	e7a00084 	swc1	$f0,132(sp)
 6ac:	0c000000 	jal	0 <EnAnubiceFire_Init>
 6b0:	4600a306 	mov.s	$f12,$f20
 6b4:	241907d0 	li	t9,2000
 6b8:	2408000a 	li	t0,10
 6bc:	e7a00088 	swc1	$f0,136(sp)
 6c0:	afa8001c 	sw	t0,28(sp)
 6c4:	afb90018 	sw	t9,24(sp)
 6c8:	02802025 	move	a0,s4
 6cc:	02402825 	move	a1,s2
 6d0:	02a03025 	move	a2,s5
 6d4:	02c03825 	move	a3,s6
 6d8:	afb70010 	sw	s7,16(sp)
 6dc:	0c000000 	jal	0 <EnAnubiceFire_Init>
 6e0:	afbe0014 	sw	s8,20(sp)
 6e4:	26100001 	addiu	s0,s0,1
 6e8:	5613ffe5 	bnel	s0,s3,680 <func_809B2B48+0xd8>
 6ec:	c6240024 	lwc1	$f4,36(s1)
 6f0:	862a015e 	lh	t2,350(s1)
 6f4:	24090002 	li	t1,2
 6f8:	a629015c 	sh	t1,348(s1)
 6fc:	254b0001 	addiu	t3,t2,1
 700:	a62b015e 	sh	t3,350(s1)
 704:	862c015e 	lh	t4,350(s1)
 708:	29810006 	slti	at,t4,6
 70c:	54200004 	bnezl	at,720 <func_809B2B48+0x178>
 710:	8fbf005c 	lw	ra,92(sp)
 714:	0c000000 	jal	0 <EnAnubiceFire_Init>
 718:	02202025 	move	a0,s1
 71c:	8fbf005c 	lw	ra,92(sp)
 720:	d7b40028 	ldc1	$f20,40(sp)
 724:	d7b60030 	ldc1	$f22,48(sp)
 728:	8fb00038 	lw	s0,56(sp)
 72c:	8fb1003c 	lw	s1,60(sp)
 730:	8fb20040 	lw	s2,64(sp)
 734:	8fb30044 	lw	s3,68(sp)
 738:	8fb40048 	lw	s4,72(sp)
 73c:	8fb5004c 	lw	s5,76(sp)
 740:	8fb60050 	lw	s6,80(sp)
 744:	8fb70054 	lw	s7,84(sp)
 748:	8fbe0058 	lw	s8,88(sp)
 74c:	03e00008 	jr	ra
 750:	27bd0098 	addiu	sp,sp,152

00000754 <EnAnubiceFire_Update>:
 754:	27bdffb8 	addiu	sp,sp,-72
 758:	afb00020 	sw	s0,32(sp)
 75c:	00808025 	move	s0,a0
 760:	afbf0024 	sw	ra,36(sp)
 764:	afa5004c 	sw	a1,76(sp)
 768:	0c000000 	jal	0 <EnAnubiceFire_Init>
 76c:	8e050150 	lw	a1,336(s0)
 770:	8e19014c 	lw	t9,332(s0)
 774:	02002025 	move	a0,s0
 778:	8fa5004c 	lw	a1,76(sp)
 77c:	0320f809 	jalr	t9
 780:	00000000 	nop
 784:	0c000000 	jal	0 <EnAnubiceFire_Init>
 788:	02002025 	move	a0,s0
 78c:	26080024 	addiu	t0,s0,36
 790:	8d0f0000 	lw	t7,0(t0)
 794:	26050030 	addiu	a1,s0,48
 798:	3c0140a0 	lui	at,0x40a0
 79c:	ae0f0160 	sw	t7,352(s0)
 7a0:	8d0e0004 	lw	t6,4(t0)
 7a4:	44810000 	mtc1	at,$f0
 7a8:	24a3016c 	addiu	v1,a1,364
 7ac:	ae0e0164 	sw	t6,356(s0)
 7b0:	8d0f0008 	lw	t7,8(t0)
 7b4:	24a40160 	addiu	a0,a1,352
 7b8:	24020004 	li	v0,4
 7bc:	ae0f0168 	sw	t7,360(s0)
 7c0:	8c890000 	lw	t1,0(a0)
 7c4:	2442ffff 	addiu	v0,v0,-1
 7c8:	2463fff4 	addiu	v1,v1,-12
 7cc:	ac69000c 	sw	t1,12(v1)
 7d0:	8c980004 	lw	t8,4(a0)
 7d4:	2484fff4 	addiu	a0,a0,-12
 7d8:	ac780010 	sw	t8,16(v1)
 7dc:	8c890014 	lw	t1,20(a0)
 7e0:	0441fff7 	bgez	v0,7c0 <EnAnubiceFire_Update+0x6c>
 7e4:	ac690014 	sw	t1,20(v1)
 7e8:	8602015a 	lh	v0,346(s0)
 7ec:	44060000 	mfc1	a2,$f0
 7f0:	44070000 	mfc1	a3,$f0
 7f4:	10400003 	beqz	v0,804 <EnAnubiceFire_Update+0xb0>
 7f8:	02002825 	move	a1,s0
 7fc:	244affff 	addiu	t2,v0,-1
 800:	a60a015a 	sh	t2,346(s0)
 804:	8602015c 	lh	v0,348(s0)
 808:	3c014120 	lui	at,0x4120
 80c:	44812000 	mtc1	at,$f4
 810:	10400003 	beqz	v0,820 <EnAnubiceFire_Update+0xcc>
 814:	240c001d 	li	t4,29
 818:	244bffff 	addiu	t3,v0,-1
 81c:	a60b015c 	sh	t3,348(s0)
 820:	8fa4004c 	lw	a0,76(sp)
 824:	e7a40010 	swc1	$f4,16(sp)
 828:	afac0014 	sw	t4,20(sp)
 82c:	0c000000 	jal	0 <EnAnubiceFire_Init>
 830:	afa8002c 	sw	t0,44(sp)
 834:	3c010000 	lui	at,0x0
 838:	c4260000 	lwc1	$f6,0(at)
 83c:	c6000150 	lwc1	$f0,336(s0)
 840:	3c0d0000 	lui	t5,0x0
 844:	25ad0000 	addiu	t5,t5,0
 848:	4606003c 	c.lt.s	$f0,$f6
 84c:	00000000 	nop
 850:	4503003a 	bc1tl	93c <EnAnubiceFire_Update+0x1e8>
 854:	8fbf0024 	lw	ra,36(sp)
 858:	afad0030 	sw	t5,48(sp)
 85c:	8e19014c 	lw	t9,332(s0)
 860:	3c014170 	lui	at,0x4170
 864:	51b90035 	beql	t5,t9,93c <EnAnubiceFire_Update+0x1e8>
 868:	8fbf0024 	lw	ra,36(sp)
 86c:	44814000 	mtc1	at,$f8
 870:	3c0140a0 	lui	at,0x40a0
 874:	44818000 	mtc1	at,$f16
 878:	46080282 	mul.s	$f10,$f0,$f8
 87c:	3c01bf40 	lui	at,0xbf40
 880:	44813000 	mtc1	at,$f6
 884:	3c01c170 	lui	at,0xc170
 888:	8609015a 	lh	t1,346(s0)
 88c:	46060202 	mul.s	$f8,$f0,$f6
 890:	02002025 	move	a0,s0
 894:	46105480 	add.s	$f18,$f10,$f16
 898:	44815000 	mtc1	at,$f10
 89c:	260501a8 	addiu	a1,s0,424
 8a0:	4600910d 	trunc.w.s	$f4,$f18
 8a4:	460a4400 	add.s	$f16,$f8,$f10
 8a8:	44022000 	mfc1	v0,$f4
 8ac:	4600848d 	trunc.w.s	$f18,$f16
 8b0:	a60201e8 	sh	v0,488(s0)
 8b4:	a60201ea 	sh	v0,490(s0)
 8b8:	44189000 	mfc1	t8,$f18
 8bc:	1120000e 	beqz	t1,8f8 <EnAnubiceFire_Update+0x1a4>
 8c0:	a61801ec 	sh	t8,492(s0)
 8c4:	0c000000 	jal	0 <EnAnubiceFire_Init>
 8c8:	afa50028 	sw	a1,40(sp)
 8cc:	8fa4004c 	lw	a0,76(sp)
 8d0:	3c010001 	lui	at,0x1
 8d4:	34211e60 	ori	at,at,0x1e60
 8d8:	00812821 	addu	a1,a0,at
 8dc:	afa50034 	sw	a1,52(sp)
 8e0:	0c000000 	jal	0 <EnAnubiceFire_Init>
 8e4:	8fa60028 	lw	a2,40(sp)
 8e8:	8fa50034 	lw	a1,52(sp)
 8ec:	8fa4004c 	lw	a0,76(sp)
 8f0:	0c000000 	jal	0 <EnAnubiceFire_Init>
 8f4:	8fa60028 	lw	a2,40(sp)
 8f8:	8fa4004c 	lw	a0,76(sp)
 8fc:	8fa5002c 	lw	a1,44(sp)
 900:	3c0641f0 	lui	a2,0x41f0
 904:	0c000000 	jal	0 <EnAnubiceFire_Init>
 908:	248407c0 	addiu	a0,a0,1984
 90c:	5040000b 	beqzl	v0,93c <EnAnubiceFire_Update+0x1e8>
 910:	8fbf0024 	lw	ra,36(sp)
 914:	44800000 	mtc1	zero,$f0
 918:	02002025 	move	a0,s0
 91c:	2405399d 	li	a1,14749
 920:	e6000064 	swc1	$f0,100(s0)
 924:	e6000060 	swc1	$f0,96(s0)
 928:	0c000000 	jal	0 <EnAnubiceFire_Init>
 92c:	e600005c 	swc1	$f0,92(s0)
 930:	8faa0030 	lw	t2,48(sp)
 934:	ae0a014c 	sw	t2,332(s0)
 938:	8fbf0024 	lw	ra,36(sp)
 93c:	8fb00020 	lw	s0,32(sp)
 940:	27bd0048 	addiu	sp,sp,72
 944:	03e00008 	jr	ra
 948:	00000000 	nop

0000094c <EnAnubiceFire_Draw>:
 94c:	27bdff40 	addiu	sp,sp,-192
 950:	afb5005c 	sw	s5,92(sp)
 954:	00a0a825 	move	s5,a1
 958:	afbf006c 	sw	ra,108(sp)
 95c:	afbe0068 	sw	s8,104(sp)
 960:	afb70064 	sw	s7,100(sp)
 964:	afb60060 	sw	s6,96(sp)
 968:	afb40058 	sw	s4,88(sp)
 96c:	afb30054 	sw	s3,84(sp)
 970:	afb20050 	sw	s2,80(sp)
 974:	afb1004c 	sw	s1,76(sp)
 978:	afb00048 	sw	s0,72(sp)
 97c:	f7be0040 	sdc1	$f30,64(sp)
 980:	f7bc0038 	sdc1	$f28,56(sp)
 984:	f7ba0030 	sdc1	$f26,48(sp)
 988:	f7b80028 	sdc1	$f24,40(sp)
 98c:	f7b60020 	sdc1	$f22,32(sp)
 990:	f7b40018 	sdc1	$f20,24(sp)
 994:	8ca50000 	lw	a1,0(a1)
 998:	0080a025 	move	s4,a0
 99c:	3c060000 	lui	a2,0x0
 9a0:	24c60000 	addiu	a2,a2,0
 9a4:	27a4009c 	addiu	a0,sp,156
 9a8:	240701f7 	li	a3,503
 9ac:	0c000000 	jal	0 <EnAnubiceFire_Init>
 9b0:	00a09825 	move	s3,a1
 9b4:	0c000000 	jal	0 <EnAnubiceFire_Init>
 9b8:	8ea40000 	lw	a0,0(s5)
 9bc:	8e6302d0 	lw	v1,720(s3)
 9c0:	3c18ffff 	lui	t8,0xffff
 9c4:	371800ff 	ori	t8,t8,0xff
 9c8:	246e0008 	addiu	t6,v1,8
 9cc:	ae6e02d0 	sw	t6,720(s3)
 9d0:	3c0ffa00 	lui	t7,0xfa00
 9d4:	ac6f0000 	sw	t7,0(v1)
 9d8:	ac780004 	sw	t8,4(v1)
 9dc:	8e6302d0 	lw	v1,720(s3)
 9e0:	3c08fb00 	lui	t0,0xfb00
 9e4:	3c09ff00 	lui	t1,0xff00
 9e8:	24790008 	addiu	t9,v1,8
 9ec:	ae7902d0 	sw	t9,720(s3)
 9f0:	ac690004 	sw	t1,4(v1)
 9f4:	ac680000 	sw	t0,0(v1)
 9f8:	8e6302d0 	lw	v1,720(s3)
 9fc:	3c0be700 	lui	t3,0xe700
 a00:	3c0ddb06 	lui	t5,0xdb06
 a04:	246a0008 	addiu	t2,v1,8
 a08:	ae6a02d0 	sw	t2,720(s3)
 a0c:	ac600004 	sw	zero,4(v1)
 a10:	ac6b0000 	sw	t3,0(v1)
 a14:	8e6302d0 	lw	v1,720(s3)
 a18:	35ad0020 	ori	t5,t5,0x20
 a1c:	3c040000 	lui	a0,0x0
 a20:	246c0008 	addiu	t4,v1,8
 a24:	ae6c02d0 	sw	t4,720(s3)
 a28:	ac6d0000 	sw	t5,0(v1)
 a2c:	8c840000 	lw	a0,0(a0)
 a30:	3c080000 	lui	t0,0x0
 a34:	3c0100ff 	lui	at,0xff
 a38:	00047900 	sll	t7,a0,0x4
 a3c:	000fc702 	srl	t8,t7,0x1c
 a40:	0018c880 	sll	t9,t8,0x2
 a44:	01194021 	addu	t0,t0,t9
 a48:	8d080000 	lw	t0,0(t0)
 a4c:	3421ffff 	ori	at,at,0xffff
 a50:	00817024 	and	t6,a0,at
 a54:	3c018000 	lui	at,0x8000
 a58:	01c84821 	addu	t1,t6,t0
 a5c:	01215021 	addu	t2,t1,at
 a60:	0c000000 	jal	0 <EnAnubiceFire_Init>
 a64:	ac6a0004 	sw	t2,4(v1)
 a68:	8691015e 	lh	s1,350(s4)
 a6c:	3c17da38 	lui	s7,0xda38
 a70:	36f70003 	ori	s7,s7,0x3
 a74:	2a210006 	slti	at,s1,6
 a78:	1020004c 	beqz	at,bac <EnAnubiceFire_Draw+0x260>
 a7c:	2416000c 	li	s6,12
 a80:	3c01447a 	lui	at,0x447a
 a84:	4481f000 	mtc1	at,$f30
 a88:	3c010000 	lui	at,0x0
 a8c:	c43c0000 	lwc1	$f28,0(at)
 a90:	3c010000 	lui	at,0x0
 a94:	3c1e0000 	lui	s8,0x0
 a98:	4480c000 	mtc1	zero,$f24
 a9c:	27de0000 	addiu	s8,s8,0
 aa0:	c43a0000 	lwc1	$f26,0(at)
 aa4:	44912000 	mtc1	s1,$f4
 aa8:	c6860050 	lwc1	$f6,80(s4)
 aac:	468025a0 	cvt.s.w	$f22,$f4
 ab0:	461cb202 	mul.s	$f8,$f22,$f28
 ab4:	46083501 	sub.s	$f20,$f6,$f8
 ab8:	4618a03c 	c.lt.s	$f20,$f24
 abc:	00000000 	nop
 ac0:	45020003 	bc1fl	ad0 <EnAnubiceFire_Draw+0x184>
 ac4:	4614d03e 	c.le.s	$f26,$f20
 ac8:	4600c506 	mov.s	$f20,$f24
 acc:	4614d03e 	c.le.s	$f26,$f20
 ad0:	00000000 	nop
 ad4:	4502002d 	bc1fl	b8c <EnAnubiceFire_Draw+0x240>
 ad8:	c6840150 	lwc1	$f4,336(s4)
 adc:	02360019 	multu	s1,s6
 ae0:	3c010001 	lui	at,0x1
 ae4:	34211da0 	ori	at,at,0x1da0
 ae8:	3c120600 	lui	s2,0x600
 aec:	26523510 	addiu	s2,s2,13584
 af0:	02a18021 	addu	s0,s5,at
 af4:	00003825 	move	a3,zero
 af8:	00005812 	mflo	t3
 afc:	028b1021 	addu	v0,s4,t3
 b00:	c44c0160 	lwc1	$f12,352(v0)
 b04:	c44e0164 	lwc1	$f14,356(v0)
 b08:	0c000000 	jal	0 <EnAnubiceFire_Init>
 b0c:	8c460168 	lw	a2,360(v0)
 b10:	4406a000 	mfc1	a2,$f20
 b14:	4600a306 	mov.s	$f12,$f20
 b18:	4600a386 	mov.s	$f14,$f20
 b1c:	0c000000 	jal	0 <EnAnubiceFire_Init>
 b20:	24070001 	li	a3,1
 b24:	0c000000 	jal	0 <EnAnubiceFire_Init>
 b28:	02002025 	move	a0,s0
 b2c:	868c0034 	lh	t4,52(s4)
 b30:	461eb482 	mul.s	$f18,$f22,$f30
 b34:	24050001 	li	a1,1
 b38:	448c5000 	mtc1	t4,$f10
 b3c:	00000000 	nop
 b40:	46805420 	cvt.s.w	$f16,$f10
 b44:	0c000000 	jal	0 <EnAnubiceFire_Init>
 b48:	46128300 	add.s	$f12,$f16,$f18
 b4c:	8e7002d0 	lw	s0,720(s3)
 b50:	03c02825 	move	a1,s8
 b54:	24060222 	li	a2,546
 b58:	260d0008 	addiu	t5,s0,8
 b5c:	ae6d02d0 	sw	t5,720(s3)
 b60:	ae170000 	sw	s7,0(s0)
 b64:	0c000000 	jal	0 <EnAnubiceFire_Init>
 b68:	8ea40000 	lw	a0,0(s5)
 b6c:	ae020004 	sw	v0,4(s0)
 b70:	8e6302d0 	lw	v1,720(s3)
 b74:	3c18de00 	lui	t8,0xde00
 b78:	246f0008 	addiu	t7,v1,8
 b7c:	ae6f02d0 	sw	t7,720(s3)
 b80:	ac720004 	sw	s2,4(v1)
 b84:	ac780000 	sw	t8,0(v1)
 b88:	c6840150 	lwc1	$f4,336(s4)
 b8c:	26310001 	addiu	s1,s1,1
 b90:	2a210006 	slti	at,s1,6
 b94:	461a203c 	c.lt.s	$f4,$f26
 b98:	00000000 	nop
 b9c:	45010003 	bc1t	bac <EnAnubiceFire_Draw+0x260>
 ba0:	00000000 	nop
 ba4:	5420ffc0 	bnezl	at,aa8 <EnAnubiceFire_Draw+0x15c>
 ba8:	44912000 	mtc1	s1,$f4
 bac:	0c000000 	jal	0 <EnAnubiceFire_Init>
 bb0:	00000000 	nop
 bb4:	3c060000 	lui	a2,0x0
 bb8:	24c60000 	addiu	a2,a2,0
 bbc:	27a4009c 	addiu	a0,sp,156
 bc0:	8ea50000 	lw	a1,0(s5)
 bc4:	0c000000 	jal	0 <EnAnubiceFire_Init>
 bc8:	2407022c 	li	a3,556
 bcc:	8fbf006c 	lw	ra,108(sp)
 bd0:	d7b40018 	ldc1	$f20,24(sp)
 bd4:	d7b60020 	ldc1	$f22,32(sp)
 bd8:	d7b80028 	ldc1	$f24,40(sp)
 bdc:	d7ba0030 	ldc1	$f26,48(sp)
 be0:	d7bc0038 	ldc1	$f28,56(sp)
 be4:	d7be0040 	ldc1	$f30,64(sp)
 be8:	8fb00048 	lw	s0,72(sp)
 bec:	8fb1004c 	lw	s1,76(sp)
 bf0:	8fb20050 	lw	s2,80(sp)
 bf4:	8fb30054 	lw	s3,84(sp)
 bf8:	8fb40058 	lw	s4,88(sp)
 bfc:	8fb5005c 	lw	s5,92(sp)
 c00:	8fb60060 	lw	s6,96(sp)
 c04:	8fb70064 	lw	s7,100(sp)
 c08:	8fbe0068 	lw	s8,104(sp)
 c0c:	03e00008 	jr	ra
 c10:	27bd00c0 	addiu	sp,sp,192
	...
