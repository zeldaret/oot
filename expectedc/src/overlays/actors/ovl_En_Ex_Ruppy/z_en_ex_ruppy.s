
build/src/overlays/actors/ovl_En_Ex_Ruppy/z_en_ex_ruppy.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnExRuppy_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa50024 	sw	a1,36(sp)
  10:	848e001c 	lh	t6,28(a0)
  14:	00808025 	move	s0,a0
  18:	a48e0152 	sh	t6,338(a0)
  1c:	3c040000 	lui	a0,0x0
  20:	24840000 	addiu	a0,a0,0
  24:	0c000000 	jal	0 <EnExRuppy_Init>
  28:	86050152 	lh	a1,338(s0)
  2c:	3c060000 	lui	a2,0x0
  30:	24c60000 	addiu	a2,a2,0
  34:	260400b4 	addiu	a0,s0,180
  38:	24050000 	li	a1,0
  3c:	0c000000 	jal	0 <EnExRuppy_Init>
  40:	3c0741c8 	lui	a3,0x41c8
  44:	86020152 	lh	v0,338(s0)
  48:	2c410005 	sltiu	at,v0,5
  4c:	102000e8 	beqz	at,3f0 <EnExRuppy_Init+0x3f0>
  50:	00027880 	sll	t7,v0,0x2
  54:	3c010000 	lui	at,0x0
  58:	002f0821 	addu	at,at,t7
  5c:	8c2f013c 	lw	t7,316(at)
  60:	01e00008 	jr	t7
  64:	00000000 	nop
  68:	3c010000 	lui	at,0x0
  6c:	c4200150 	lwc1	$f0,336(at)
  70:	02002025 	move	a0,s0
  74:	44050000 	mfc1	a1,$f0
  78:	0c000000 	jal	0 <EnExRuppy_Init>
  7c:	e6000160 	swc1	$f0,352(s0)
  80:	44802000 	mtc1	zero,$f4
  84:	2418ffff 	li	t8,-1
  88:	a2180003 	sb	t8,3(s0)
  8c:	3c190000 	lui	t9,0x0
  90:	e604006c 	swc1	$f4,108(s0)
  94:	97390eda 	lhu	t9,3802(t9)
  98:	24090005 	li	t1,5
  9c:	3c010000 	lui	at,0x0
  a0:	33280100 	andi	t0,t9,0x100
  a4:	15000004 	bnez	t0,b8 <EnExRuppy_Init+0xb8>
  a8:	240a0001 	li	t2,1
  ac:	a6090158 	sh	t1,344(s0)
  b0:	10000049 	b	1d8 <EnExRuppy_Init+0x1d8>
  b4:	a60a0150 	sh	t2,336(s0)
  b8:	8e030118 	lw	v1,280(s0)
  bc:	c4220154 	lwc1	$f2,340(at)
  c0:	1060000c 	beqz	v1,f4 <EnExRuppy_Init+0xf4>
  c4:	46001306 	mov.s	$f12,$f2
  c8:	8c6b0130 	lw	t3,304(v1)
  cc:	11600009 	beqz	t3,f4 <EnExRuppy_Init+0xf4>
  d0:	00000000 	nop
  d4:	846c02aa 	lh	t4,682(v1)
  d8:	3c014120 	lui	at,0x4120
  dc:	44815000 	mtc1	at,$f10
  e0:	448c3000 	mtc1	t4,$f6
  e4:	00000000 	nop
  e8:	46803220 	cvt.s.w	$f8,$f6
  ec:	460a4002 	mul.s	$f0,$f8,$f10
  f0:	46001300 	add.s	$f12,$f2,$f0
  f4:	0c000000 	jal	0 <EnExRuppy_Init>
  f8:	00000000 	nop
  fc:	4600040d 	trunc.w.s	$f16,$f0
 100:	44028000 	mfc1	v0,$f16
 104:	00000000 	nop
 108:	00021400 	sll	v0,v0,0x10
 10c:	00021403 	sra	v0,v0,0x10
 110:	04400006 	bltz	v0,12c <EnExRuppy_Init+0x12c>
 114:	28410028 	slti	at,v0,40
 118:	10200004 	beqz	at,12c <EnExRuppy_Init+0x12c>
 11c:	240e0001 	li	t6,1
 120:	a60e0158 	sh	t6,344(s0)
 124:	1000002c 	b	1d8 <EnExRuppy_Init+0x1d8>
 128:	a6000150 	sh	zero,336(s0)
 12c:	28410028 	slti	at,v0,40
 130:	14200007 	bnez	at,150 <EnExRuppy_Init+0x150>
 134:	284100aa 	slti	at,v0,170
 138:	10200005 	beqz	at,150 <EnExRuppy_Init+0x150>
 13c:	240f0005 	li	t7,5
 140:	24180001 	li	t8,1
 144:	a60f0158 	sh	t7,344(s0)
 148:	10000023 	b	1d8 <EnExRuppy_Init+0x1d8>
 14c:	a6180150 	sh	t8,336(s0)
 150:	284100aa 	slti	at,v0,170
 154:	14200007 	bnez	at,174 <EnExRuppy_Init+0x174>
 158:	284100be 	slti	at,v0,190
 15c:	10200005 	beqz	at,174 <EnExRuppy_Init+0x174>
 160:	24190014 	li	t9,20
 164:	24080002 	li	t0,2
 168:	a6190158 	sh	t9,344(s0)
 16c:	1000001a 	b	1d8 <EnExRuppy_Init+0x1d8>
 170:	a6080150 	sh	t0,336(s0)
 174:	284100be 	slti	at,v0,190
 178:	14200007 	bnez	at,198 <EnExRuppy_Init+0x198>
 17c:	284100c8 	slti	at,v0,200
 180:	10200005 	beqz	at,198 <EnExRuppy_Init+0x198>
 184:	24090032 	li	t1,50
 188:	240a0004 	li	t2,4
 18c:	a6090158 	sh	t1,344(s0)
 190:	10000011 	b	1d8 <EnExRuppy_Init+0x1d8>
 194:	a60a0150 	sh	t2,336(s0)
 198:	3c010000 	lui	at,0x0
 19c:	c4200158 	lwc1	$f0,344(at)
 1a0:	02002025 	move	a0,s0
 1a4:	44050000 	mfc1	a1,$f0
 1a8:	0c000000 	jal	0 <EnExRuppy_Init>
 1ac:	e6000160 	swc1	$f0,352(s0)
 1b0:	8e030118 	lw	v1,280(s0)
 1b4:	240b01f4 	li	t3,500
 1b8:	240c0003 	li	t4,3
 1bc:	a60b0158 	sh	t3,344(s0)
 1c0:	10600005 	beqz	v1,1d8 <EnExRuppy_Init+0x1d8>
 1c4:	a60c0150 	sh	t4,336(s0)
 1c8:	8c6d0130 	lw	t5,304(v1)
 1cc:	51a00003 	beqzl	t5,1dc <EnExRuppy_Init+0x1dc>
 1d0:	3c0140e0 	lui	at,0x40e0
 1d4:	a46002aa 	sh	zero,682(v1)
 1d8:	3c0140e0 	lui	at,0x40e0
 1dc:	44819000 	mtc1	at,$f18
 1e0:	8e180004 	lw	t8,4(s0)
 1e4:	3c01442f 	lui	at,0x442f
 1e8:	44812000 	mtc1	at,$f4
 1ec:	860e0034 	lh	t6,52(s0)
 1f0:	2401fffe 	li	at,-2
 1f4:	3c080000 	lui	t0,0x0
 1f8:	240f001e 	li	t7,30
 1fc:	25080000 	addiu	t0,t0,0
 200:	0301c824 	and	t9,t8,at
 204:	a6000034 	sh	zero,52(s0)
 208:	a60f0156 	sh	t7,342(s0)
 20c:	ae190004 	sw	t9,4(s0)
 210:	ae08014c 	sw	t0,332(s0)
 214:	e61200c4 	swc1	$f18,196(s0)
 218:	e60400bc 	swc1	$f4,188(s0)
 21c:	10000074 	b	3f0 <EnExRuppy_Init+0x3f0>
 220:	a60e015a 	sh	t6,346(s0)
 224:	24010001 	li	at,1
 228:	14410007 	bne	v0,at,248 <EnExRuppy_Init+0x248>
 22c:	02002025 	move	a0,s0
 230:	3c053dcc 	lui	a1,0x3dcc
 234:	0c000000 	jal	0 <EnExRuppy_Init>
 238:	34a5cccd 	ori	a1,a1,0xcccd
 23c:	24090004 	li	t1,4
 240:	1000000f 	b	280 <EnExRuppy_Init+0x280>
 244:	a6090150 	sh	t1,336(s0)
 248:	3c010000 	lui	at,0x0
 24c:	c420015c 	lwc1	$f0,348(at)
 250:	02002025 	move	a0,s0
 254:	44050000 	mfc1	a1,$f0
 258:	0c000000 	jal	0 <EnExRuppy_Init>
 25c:	00000000 	nop
 260:	3c010000 	lui	at,0x0
 264:	0c000000 	jal	0 <EnExRuppy_Init>
 268:	c42c0160 	lwc1	$f12,352(at)
 26c:	4600018d 	trunc.w.s	$f6,$f0
 270:	440d3000 	mfc1	t5,$f6
 274:	00000000 	nop
 278:	25ae0001 	addiu	t6,t5,1
 27c:	a60e0150 	sh	t6,336(s0)
 280:	3c01c040 	lui	at,0xc040
 284:	44814000 	mtc1	at,$f8
 288:	3c040000 	lui	a0,0x0
 28c:	24840030 	addiu	a0,a0,48
 290:	0c000000 	jal	0 <EnExRuppy_Init>
 294:	e608006c 	swc1	$f8,108(s0)
 298:	3c0140c0 	lui	at,0x40c0
 29c:	44815000 	mtc1	at,$f10
 2a0:	8e0f0004 	lw	t7,4(s0)
 2a4:	3c01442f 	lui	at,0x442f
 2a8:	44818000 	mtc1	at,$f16
 2ac:	2401fffe 	li	at,-2
 2b0:	3c190000 	lui	t9,0x0
 2b4:	27390000 	addiu	t9,t9,0
 2b8:	01e1c024 	and	t8,t7,at
 2bc:	ae180004 	sw	t8,4(s0)
 2c0:	ae19014c 	sw	t9,332(s0)
 2c4:	e60a00c4 	swc1	$f10,196(s0)
 2c8:	10000049 	b	3f0 <EnExRuppy_Init+0x3f0>
 2cc:	e61000bc 	swc1	$f16,188(s0)
 2d0:	3c010000 	lui	at,0x0
 2d4:	c4200164 	lwc1	$f0,356(at)
 2d8:	02002025 	move	a0,s0
 2dc:	44050000 	mfc1	a1,$f0
 2e0:	0c000000 	jal	0 <EnExRuppy_Init>
 2e4:	00000000 	nop
 2e8:	a6000150 	sh	zero,336(s0)
 2ec:	3c010000 	lui	at,0x0
 2f0:	0c000000 	jal	0 <EnExRuppy_Init>
 2f4:	c42c0168 	lwc1	$f12,360(at)
 2f8:	4600048d 	trunc.w.s	$f18,$f0
 2fc:	2401000a 	li	at,10
 300:	24090002 	li	t1,2
 304:	3c040000 	lui	a0,0x0
 308:	44029000 	mfc1	v0,$f18
 30c:	00000000 	nop
 310:	00021400 	sll	v0,v0,0x10
 314:	00021403 	sra	v0,v0,0x10
 318:	1040000a 	beqz	v0,344 <EnExRuppy_Init+0x344>
 31c:	00000000 	nop
 320:	1041000a 	beq	v0,at,34c <EnExRuppy_Init+0x34c>
 324:	240a0001 	li	t2,1
 328:	24010014 	li	at,20
 32c:	10410007 	beq	v0,at,34c <EnExRuppy_Init+0x34c>
 330:	2401001e 	li	at,30
 334:	50410006 	beql	v0,at,350 <EnExRuppy_Init+0x350>
 338:	a60a0150 	sh	t2,336(s0)
 33c:	10000005 	b	354 <EnExRuppy_Init+0x354>
 340:	3c01c040 	lui	at,0xc040
 344:	10000002 	b	350 <EnExRuppy_Init+0x350>
 348:	a6090150 	sh	t1,336(s0)
 34c:	a60a0150 	sh	t2,336(s0)
 350:	3c01c040 	lui	at,0xc040
 354:	44812000 	mtc1	at,$f4
 358:	24840060 	addiu	a0,a0,96
 35c:	0c000000 	jal	0 <EnExRuppy_Init>
 360:	e604006c 	swc1	$f4,108(s0)
 364:	3c0140c0 	lui	at,0x40c0
 368:	44813000 	mtc1	at,$f6
 36c:	8e0b0004 	lw	t3,4(s0)
 370:	3c01442f 	lui	at,0x442f
 374:	44814000 	mtc1	at,$f8
 378:	2401fffe 	li	at,-2
 37c:	3c0d0000 	lui	t5,0x0
 380:	25ad0000 	addiu	t5,t5,0
 384:	01616024 	and	t4,t3,at
 388:	ae0c0004 	sw	t4,4(s0)
 38c:	ae0d014c 	sw	t5,332(s0)
 390:	e60600c4 	swc1	$f6,196(s0)
 394:	10000016 	b	3f0 <EnExRuppy_Init+0x3f0>
 398:	e60800bc 	swc1	$f8,188(s0)
 39c:	3c010000 	lui	at,0x0
 3a0:	c420016c 	lwc1	$f0,364(at)
 3a4:	8e0e0004 	lw	t6,4(s0)
 3a8:	3c01c040 	lui	at,0xc040
 3ac:	44815000 	mtc1	at,$f10
 3b0:	2401fffe 	li	at,-2
 3b4:	44050000 	mfc1	a1,$f0
 3b8:	01c17824 	and	t7,t6,at
 3bc:	ae0f0004 	sw	t7,4(s0)
 3c0:	02002025 	move	a0,s0
 3c4:	0c000000 	jal	0 <EnExRuppy_Init>
 3c8:	e60a006c 	swc1	$f10,108(s0)
 3cc:	3c0140c0 	lui	at,0x40c0
 3d0:	44818000 	mtc1	at,$f16
 3d4:	3c01c42f 	lui	at,0xc42f
 3d8:	44819000 	mtc1	at,$f18
 3dc:	3c180000 	lui	t8,0x0
 3e0:	27180000 	addiu	t8,t8,0
 3e4:	ae18014c 	sw	t8,332(s0)
 3e8:	e61000c4 	swc1	$f16,196(s0)
 3ec:	e61200bc 	swc1	$f18,188(s0)
 3f0:	8fbf001c 	lw	ra,28(sp)
 3f4:	8fb00018 	lw	s0,24(sp)
 3f8:	27bd0020 	addiu	sp,sp,32
 3fc:	03e00008 	jr	ra
 400:	00000000 	nop

00000404 <EnExRuppy_Destroy>:
 404:	afa40000 	sw	a0,0(sp)
 408:	03e00008 	jr	ra
 40c:	afa50004 	sw	a1,4(sp)

00000410 <EnExRuppy_SpawnSparkles>:
 410:	27bdff50 	addiu	sp,sp,-176
 414:	afbe0068 	sw	s8,104(sp)
 418:	0006f400 	sll	s8,a2,0x10
 41c:	001ef403 	sra	s8,s8,0x10
 420:	afb00048 	sw	s0,72(sp)
 424:	00808025 	move	s0,a0
 428:	afbf006c 	sw	ra,108(sp)
 42c:	afb70064 	sw	s7,100(sp)
 430:	afb60060 	sw	s6,96(sp)
 434:	afb5005c 	sw	s5,92(sp)
 438:	afb40058 	sw	s4,88(sp)
 43c:	afb30054 	sw	s3,84(sp)
 440:	afb20050 	sw	s2,80(sp)
 444:	afb1004c 	sw	s1,76(sp)
 448:	f7ba0040 	sdc1	$f26,64(sp)
 44c:	f7b80038 	sdc1	$f24,56(sp)
 450:	f7b60030 	sdc1	$f22,48(sp)
 454:	f7b40028 	sdc1	$f20,40(sp)
 458:	afa500b4 	sw	a1,180(sp)
 45c:	1fc00002 	bgtz	s8,468 <EnExRuppy_SpawnSparkles+0x58>
 460:	afa600b8 	sw	a2,184(sp)
 464:	241e0001 	li	s8,1
 468:	00071080 	sll	v0,a3,0x2
 46c:	00471023 	subu	v0,v0,a3
 470:	3c0a0000 	lui	t2,0x0
 474:	240e00ff 	li	t6,255
 478:	240f00ff 	li	t7,255
 47c:	241800ff 	li	t8,255
 480:	241900ff 	li	t9,255
 484:	240800ff 	li	t0,255
 488:	254a0038 	addiu	t2,t2,56
 48c:	00021080 	sll	v0,v0,0x2
 490:	a3ae0088 	sb	t6,136(sp)
 494:	a3af0089 	sb	t7,137(sp)
 498:	a3a0008a 	sb	zero,138(sp)
 49c:	a3b80084 	sb	t8,132(sp)
 4a0:	a3b90085 	sb	t9,133(sp)
 4a4:	a3a80086 	sb	t0,134(sp)
 4a8:	004a5821 	addu	t3,v0,t2
 4ac:	8d6d0000 	lw	t5,0(t3)
 4b0:	27a90098 	addiu	t1,sp,152
 4b4:	3c0e0000 	lui	t6,0x0
 4b8:	ad2d0000 	sw	t5,0(t1)
 4bc:	8d6c0004 	lw	t4,4(t3)
 4c0:	25ce0050 	addiu	t6,t6,80
 4c4:	004e7821 	addu	t7,v0,t6
 4c8:	ad2c0004 	sw	t4,4(t1)
 4cc:	8d6d0008 	lw	t5,8(t3)
 4d0:	27b8008c 	addiu	t8,sp,140
 4d4:	24120bb8 	li	s2,3000
 4d8:	ad2d0008 	sw	t5,8(t1)
 4dc:	afaf0078 	sw	t7,120(sp)
 4e0:	8dea0000 	lw	t2,0(t7)
 4e4:	24130010 	li	s3,16
 4e8:	00008825 	move	s1,zero
 4ec:	af0a0000 	sw	t2,0(t8)
 4f0:	8de80004 	lw	t0,4(t7)
 4f4:	3c014416 	lui	at,0x4416
 4f8:	27b70084 	addiu	s7,sp,132
 4fc:	af080004 	sw	t0,4(t8)
 500:	8dea0008 	lw	t2,8(t7)
 504:	27b60088 	addiu	s6,sp,136
 508:	1bc00038 	blez	s8,5ec <EnExRuppy_SpawnSparkles+0x1dc>
 50c:	af0a0008 	sw	t2,8(t8)
 510:	4481d000 	mtc1	at,$f26
 514:	3c0141a0 	lui	at,0x41a0
 518:	4481c000 	mtc1	at,$f24
 51c:	3c014120 	lui	at,0x4120
 520:	4481b000 	mtc1	at,$f22
 524:	3c013f00 	lui	at,0x3f00
 528:	3c140000 	lui	s4,0x0
 52c:	4481a000 	mtc1	at,$f20
 530:	2694005c 	addiu	s4,s4,92
 534:	27b500a4 	addiu	s5,sp,164
 538:	8fa90078 	lw	t1,120(sp)
 53c:	15340009 	bne	t1,s4,564 <EnExRuppy_SpawnSparkles+0x154>
 540:	00000000 	nop
 544:	4600c306 	mov.s	$f12,$f24
 548:	24121388 	li	s2,5000
 54c:	0c000000 	jal	0 <EnExRuppy_Init>
 550:	24130014 	li	s3,20
 554:	e7a0008c 	swc1	$f0,140(sp)
 558:	0c000000 	jal	0 <EnExRuppy_Init>
 55c:	4600c306 	mov.s	$f12,$f24
 560:	e7a00094 	swc1	$f0,148(sp)
 564:	0c000000 	jal	0 <EnExRuppy_Init>
 568:	00000000 	nop
 56c:	46140101 	sub.s	$f4,$f0,$f20
 570:	c6080024 	lwc1	$f8,36(s0)
 574:	46162182 	mul.s	$f6,$f4,$f22
 578:	46083280 	add.s	$f10,$f6,$f8
 57c:	0c000000 	jal	0 <EnExRuppy_Init>
 580:	e7aa00a4 	swc1	$f10,164(sp)
 584:	c6120160 	lwc1	$f18,352(s0)
 588:	46140201 	sub.s	$f8,$f0,$f20
 58c:	c6100028 	lwc1	$f16,40(s0)
 590:	461a9102 	mul.s	$f4,$f18,$f26
 594:	46048180 	add.s	$f6,$f16,$f4
 598:	46164282 	mul.s	$f10,$f8,$f22
 59c:	46065480 	add.s	$f18,$f10,$f6
 5a0:	0c000000 	jal	0 <EnExRuppy_Init>
 5a4:	e7b200a8 	swc1	$f18,168(sp)
 5a8:	46140401 	sub.s	$f16,$f0,$f20
 5ac:	c608002c 	lwc1	$f8,44(s0)
 5b0:	afb3001c 	sw	s3,28(sp)
 5b4:	afb20018 	sw	s2,24(sp)
 5b8:	46168102 	mul.s	$f4,$f16,$f22
 5bc:	afb70014 	sw	s7,20(sp)
 5c0:	afb60010 	sw	s6,16(sp)
 5c4:	8fa400b4 	lw	a0,180(sp)
 5c8:	02a02825 	move	a1,s5
 5cc:	27a60098 	addiu	a2,sp,152
 5d0:	27a7008c 	addiu	a3,sp,140
 5d4:	46082280 	add.s	$f10,$f4,$f8
 5d8:	0c000000 	jal	0 <EnExRuppy_Init>
 5dc:	e7aa00ac 	swc1	$f10,172(sp)
 5e0:	26310001 	addiu	s1,s1,1
 5e4:	563effd5 	bnel	s1,s8,53c <EnExRuppy_SpawnSparkles+0x12c>
 5e8:	8fa90078 	lw	t1,120(sp)
 5ec:	8fbf006c 	lw	ra,108(sp)
 5f0:	d7b40028 	ldc1	$f20,40(sp)
 5f4:	d7b60030 	ldc1	$f22,48(sp)
 5f8:	d7b80038 	ldc1	$f24,56(sp)
 5fc:	d7ba0040 	ldc1	$f26,64(sp)
 600:	8fb00048 	lw	s0,72(sp)
 604:	8fb1004c 	lw	s1,76(sp)
 608:	8fb20050 	lw	s2,80(sp)
 60c:	8fb30054 	lw	s3,84(sp)
 610:	8fb40058 	lw	s4,88(sp)
 614:	8fb5005c 	lw	s5,92(sp)
 618:	8fb60060 	lw	s6,96(sp)
 61c:	8fb70064 	lw	s7,100(sp)
 620:	8fbe0068 	lw	s8,104(sp)
 624:	03e00008 	jr	ra
 628:	27bd00b0 	addiu	sp,sp,176

0000062c <EnExRuppy_DropIntoWater>:
 62c:	27bdffe0 	addiu	sp,sp,-32
 630:	afbf001c 	sw	ra,28(sp)
 634:	afb00018 	sw	s0,24(sp)
 638:	afa50024 	sw	a1,36(sp)
 63c:	848e00b6 	lh	t6,182(a0)
 640:	00808025 	move	s0,a0
 644:	3c063e99 	lui	a2,0x3e99
 648:	25cf07a8 	addiu	t7,t6,1960
 64c:	a48f00b6 	sh	t7,182(a0)
 650:	34c6999a 	ori	a2,a2,0x999a
 654:	2484006c 	addiu	a0,a0,108
 658:	3c05c000 	lui	a1,0xc000
 65c:	0c000000 	jal	0 <EnExRuppy_Init>
 660:	3c073f80 	lui	a3,0x3f80
 664:	02002025 	move	a0,s0
 668:	8fa50024 	lw	a1,36(sp)
 66c:	24060002 	li	a2,2
 670:	0c000000 	jal	0 <EnExRuppy_Init>
 674:	00003825 	move	a3,zero
 678:	0c000000 	jal	0 <EnExRuppy_Init>
 67c:	240420bc 	li	a0,8380
 680:	8e020118 	lw	v0,280(s0)
 684:	5040001d 	beqzl	v0,6fc <EnExRuppy_DropIntoWater+0xd0>
 688:	8fbf001c 	lw	ra,28(sp)
 68c:	8c580130 	lw	t8,304(v0)
 690:	5300001a 	beqzl	t8,6fc <EnExRuppy_DropIntoWater+0xd0>
 694:	8fbf001c 	lw	ra,28(sp)
 698:	84590296 	lh	t9,662(v0)
 69c:	240b0001 	li	t3,1
 6a0:	260400e4 	addiu	a0,s0,228
 6a4:	53200009 	beqzl	t9,6cc <EnExRuppy_DropIntoWater+0xa0>
 6a8:	44800000 	mtc1	zero,$f0
 6ac:	96080088 	lhu	t0,136(s0)
 6b0:	31090020 	andi	t1,t0,0x20
 6b4:	55200005 	bnezl	t1,6cc <EnExRuppy_DropIntoWater+0xa0>
 6b8:	44800000 	mtc1	zero,$f0
 6bc:	860a0156 	lh	t2,342(s0)
 6c0:	5540000e 	bnezl	t2,6fc <EnExRuppy_DropIntoWater+0xd0>
 6c4:	8fbf001c 	lw	ra,28(sp)
 6c8:	44800000 	mtc1	zero,$f0
 6cc:	a60b0154 	sh	t3,340(s0)
 6d0:	24052817 	li	a1,10263
 6d4:	e6000068 	swc1	$f0,104(s0)
 6d8:	e6000064 	swc1	$f0,100(s0)
 6dc:	e6000060 	swc1	$f0,96(s0)
 6e0:	e600005c 	swc1	$f0,92(s0)
 6e4:	0c000000 	jal	0 <EnExRuppy_Init>
 6e8:	e600006c 	swc1	$f0,108(s0)
 6ec:	3c0c0000 	lui	t4,0x0
 6f0:	258c0000 	addiu	t4,t4,0
 6f4:	ae0c014c 	sw	t4,332(s0)
 6f8:	8fbf001c 	lw	ra,28(sp)
 6fc:	8fb00018 	lw	s0,24(sp)
 700:	27bd0020 	addiu	sp,sp,32
 704:	03e00008 	jr	ra
 708:	00000000 	nop

0000070c <EnExRuppy_EnterWater>:
 70c:	27bdffd8 	addiu	sp,sp,-40
 710:	afbf001c 	sw	ra,28(sp)
 714:	afb00018 	sw	s0,24(sp)
 718:	afa5002c 	sw	a1,44(sp)
 71c:	8c820118 	lw	v0,280(a0)
 720:	00808025 	move	s0,a0
 724:	50400050 	beqzl	v0,868 <EnExRuppy_EnterWater+0x15c>
 728:	8fbf001c 	lw	ra,28(sp)
 72c:	8c4e0130 	lw	t6,304(v0)
 730:	51c0004d 	beqzl	t6,868 <EnExRuppy_EnterWater+0x15c>
 734:	8fbf001c 	lw	ra,28(sp)
 738:	844f02a2 	lh	t7,674(v0)
 73c:	24010002 	li	at,2
 740:	55e10049 	bnel	t7,at,868 <EnExRuppy_EnterWater+0x15c>
 744:	8fbf001c 	lw	ra,28(sp)
 748:	0c000000 	jal	0 <EnExRuppy_Init>
 74c:	a4800154 	sh	zero,340(a0)
 750:	3c013f00 	lui	at,0x3f00
 754:	44812000 	mtc1	at,$f4
 758:	3c014396 	lui	at,0x4396
 75c:	44814000 	mtc1	at,$f8
 760:	46040181 	sub.s	$f6,$f0,$f4
 764:	3c01c382 	lui	at,0xc382
 768:	44818000 	mtc1	at,$f16
 76c:	46083282 	mul.s	$f10,$f6,$f8
 770:	46105480 	add.s	$f18,$f10,$f16
 774:	0c000000 	jal	0 <EnExRuppy_Init>
 778:	e6120024 	swc1	$f18,36(s0)
 77c:	3c013f00 	lui	at,0x3f00
 780:	44812000 	mtc1	at,$f4
 784:	3c014348 	lui	at,0x4348
 788:	44814000 	mtc1	at,$f8
 78c:	46040181 	sub.s	$f6,$f0,$f4
 790:	8618015a 	lh	t8,346(s0)
 794:	3c0143b9 	lui	at,0x43b9
 798:	44818000 	mtc1	at,$f16
 79c:	46083282 	mul.s	$f10,$f6,$f8
 7a0:	44982000 	mtc1	t8,$f4
 7a4:	3c01c248 	lui	at,0xc248
 7a8:	3c190000 	lui	t9,0x0
 7ac:	44814000 	mtc1	at,$f8
 7b0:	3c01c396 	lui	at,0xc396
 7b4:	468021a0 	cvt.s.w	$f6,$f4
 7b8:	46105480 	add.s	$f18,$f10,$f16
 7bc:	46083082 	mul.s	$f2,$f6,$f8
 7c0:	e6120028 	swc1	$f18,40(s0)
 7c4:	97390eda 	lhu	t9,3802(t9)
 7c8:	33280100 	andi	t0,t9,0x100
 7cc:	55000012 	bnezl	t0,818 <EnExRuppy_EnterWater+0x10c>
 7d0:	44815000 	mtc1	at,$f10
 7d4:	3c01c3fa 	lui	at,0xc3fa
 7d8:	44815000 	mtc1	at,$f10
 7dc:	00000000 	nop
 7e0:	460a1080 	add.s	$f2,$f2,$f10
 7e4:	0c000000 	jal	0 <EnExRuppy_Init>
 7e8:	e7a20020 	swc1	$f2,32(sp)
 7ec:	3c013f00 	lui	at,0x3f00
 7f0:	44818000 	mtc1	at,$f16
 7f4:	3c0142a0 	lui	at,0x42a0
 7f8:	44812000 	mtc1	at,$f4
 7fc:	46100481 	sub.s	$f18,$f0,$f16
 800:	c7a20020 	lwc1	$f2,32(sp)
 804:	46049182 	mul.s	$f6,$f18,$f4
 808:	46023200 	add.s	$f8,$f6,$f2
 80c:	1000000f 	b	84c <EnExRuppy_EnterWater+0x140>
 810:	e608002c 	swc1	$f8,44(s0)
 814:	44815000 	mtc1	at,$f10
 818:	00000000 	nop
 81c:	460a1080 	add.s	$f2,$f2,$f10
 820:	0c000000 	jal	0 <EnExRuppy_Init>
 824:	e7a20020 	swc1	$f2,32(sp)
 828:	3c013f00 	lui	at,0x3f00
 82c:	44818000 	mtc1	at,$f16
 830:	3c014270 	lui	at,0x4270
 834:	44812000 	mtc1	at,$f4
 838:	46100481 	sub.s	$f18,$f0,$f16
 83c:	c7a20020 	lwc1	$f2,32(sp)
 840:	46049182 	mul.s	$f6,$f18,$f4
 844:	46023200 	add.s	$f8,$f6,$f2
 848:	e608002c 	swc1	$f8,44(s0)
 84c:	3c01bf80 	lui	at,0xbf80
 850:	44815000 	mtc1	at,$f10
 854:	3c090000 	lui	t1,0x0
 858:	25290000 	addiu	t1,t1,0
 85c:	ae09014c 	sw	t1,332(s0)
 860:	e60a006c 	swc1	$f10,108(s0)
 864:	8fbf001c 	lw	ra,28(sp)
 868:	8fb00018 	lw	s0,24(sp)
 86c:	27bd0028 	addiu	sp,sp,40
 870:	03e00008 	jr	ra
 874:	00000000 	nop

00000878 <EnExRuppy_Sink>:
 878:	27bdffc0 	addiu	sp,sp,-64
 87c:	afbf0024 	sw	ra,36(sp)
 880:	afb00020 	sw	s0,32(sp)
 884:	afa50044 	sw	a1,68(sp)
 888:	948e0088 	lhu	t6,136(a0)
 88c:	00808025 	move	s0,a0
 890:	3c014170 	lui	at,0x4170
 894:	31cf0020 	andi	t7,t6,0x20
 898:	51e00026 	beqzl	t7,934 <EnExRuppy_Sink+0xbc>
 89c:	8e020118 	lw	v0,280(s0)
 8a0:	44812000 	mtc1	at,$f4
 8a4:	c4860084 	lwc1	$f6,132(a0)
 8a8:	4606203c 	c.lt.s	$f4,$f6
 8ac:	00000000 	nop
 8b0:	45020020 	bc1fl	934 <EnExRuppy_Sink+0xbc>
 8b4:	8e020118 	lw	v0,280(s0)
 8b8:	8c990024 	lw	t9,36(a0)
 8bc:	27a50030 	addiu	a1,sp,48
 8c0:	3c01bf80 	lui	at,0xbf80
 8c4:	acb90000 	sw	t9,0(a1)
 8c8:	8c980028 	lw	t8,40(a0)
 8cc:	44819000 	mtc1	at,$f18
 8d0:	3c010000 	lui	at,0x0
 8d4:	acb80004 	sw	t8,4(a1)
 8d8:	8c99002c 	lw	t9,44(a0)
 8dc:	24080320 	li	t0,800
 8e0:	00003025 	move	a2,zero
 8e4:	acb90008 	sw	t9,8(a1)
 8e8:	c7a80034 	lwc1	$f8,52(sp)
 8ec:	c48a0084 	lwc1	$f10,132(a0)
 8f0:	00003825 	move	a3,zero
 8f4:	460a4400 	add.s	$f16,$f8,$f10
 8f8:	e7b00034 	swc1	$f16,52(sp)
 8fc:	e4920060 	swc1	$f18,96(a0)
 900:	c4240170 	lwc1	$f4,368(at)
 904:	e484006c 	swc1	$f4,108(a0)
 908:	afa80014 	sw	t0,20(sp)
 90c:	afa00010 	sw	zero,16(sp)
 910:	0c000000 	jal	0 <EnExRuppy_Init>
 914:	8fa40044 	lw	a0,68(sp)
 918:	260400e4 	addiu	a0,s0,228
 91c:	0c000000 	jal	0 <EnExRuppy_Init>
 920:	24052817 	li	a1,10263
 924:	3c090000 	lui	t1,0x0
 928:	25290000 	addiu	t1,t1,0
 92c:	ae09014c 	sw	t1,332(s0)
 930:	8e020118 	lw	v0,280(s0)
 934:	5040000c 	beqzl	v0,968 <EnExRuppy_Sink+0xf0>
 938:	8fbf0024 	lw	ra,36(sp)
 93c:	8c4a0130 	lw	t2,304(v0)
 940:	51400009 	beqzl	t2,968 <EnExRuppy_Sink+0xf0>
 944:	8fbf0024 	lw	ra,36(sp)
 948:	844b029c 	lh	t3,668(v0)
 94c:	3c0d0000 	lui	t5,0x0
 950:	240c0014 	li	t4,20
 954:	15600003 	bnez	t3,964 <EnExRuppy_Sink+0xec>
 958:	25ad0000 	addiu	t5,t5,0
 95c:	a60c0156 	sh	t4,342(s0)
 960:	ae0d014c 	sw	t5,332(s0)
 964:	8fbf0024 	lw	ra,36(sp)
 968:	8fb00020 	lw	s0,32(sp)
 96c:	27bd0040 	addiu	sp,sp,64
 970:	03e00008 	jr	ra
 974:	00000000 	nop

00000978 <func_80A0AD88>:
 978:	27bdffb0 	addiu	sp,sp,-80
 97c:	3c0f0000 	lui	t7,0x0
 980:	afbf0024 	sw	ra,36(sp)
 984:	afb00020 	sw	s0,32(sp)
 988:	afa50054 	sw	a1,84(sp)
 98c:	25ef0068 	addiu	t7,t7,104
 990:	8df90000 	lw	t9,0(t7)
 994:	27ae0040 	addiu	t6,sp,64
 998:	8df80004 	lw	t8,4(t7)
 99c:	add90000 	sw	t9,0(t6)
 9a0:	8df90008 	lw	t9,8(t7)
 9a4:	3c090000 	lui	t1,0x0
 9a8:	25290074 	addiu	t1,t1,116
 9ac:	add80004 	sw	t8,4(t6)
 9b0:	add90008 	sw	t9,8(t6)
 9b4:	8d2b0000 	lw	t3,0(t1)
 9b8:	27a80034 	addiu	t0,sp,52
 9bc:	8d2a0004 	lw	t2,4(t1)
 9c0:	ad0b0000 	sw	t3,0(t0)
 9c4:	8d2b0008 	lw	t3,8(t1)
 9c8:	ad0a0004 	sw	t2,4(t0)
 9cc:	00808025 	move	s0,a0
 9d0:	ad0b0008 	sw	t3,8(t0)
 9d4:	848c0156 	lh	t4,342(a0)
 9d8:	240d000a 	li	t5,10
 9dc:	3c010000 	lui	at,0x0
 9e0:	55800011 	bnezl	t4,a28 <func_80A0AD88+0xb0>
 9e4:	8e030118 	lw	v1,280(s0)
 9e8:	a48d0156 	sh	t5,342(a0)
 9ec:	0c000000 	jal	0 <EnExRuppy_Init>
 9f0:	c42c0174 	lwc1	$f12,372(at)
 9f4:	3c0140a0 	lui	at,0x40a0
 9f8:	44811000 	mtc1	at,$f2
 9fc:	3c010000 	lui	at,0x0
 a00:	c4240178 	lwc1	$f4,376(at)
 a04:	44071000 	mfc1	a3,$f2
 a08:	8fa40054 	lw	a0,84(sp)
 a0c:	46040180 	add.s	$f6,$f0,$f4
 a10:	26050024 	addiu	a1,s0,36
 a14:	24060000 	li	a2,0
 a18:	e7a20010 	swc1	$f2,16(sp)
 a1c:	0c000000 	jal	0 <EnExRuppy_Init>
 a20:	e7a60014 	swc1	$f6,20(sp)
 a24:	8e030118 	lw	v1,280(s0)
 a28:	50600025 	beqzl	v1,ac0 <func_80A0AD88+0x148>
 a2c:	8fbf0024 	lw	ra,36(sp)
 a30:	8c6e0130 	lw	t6,304(v1)
 a34:	00601025 	move	v0,v1
 a38:	11c0001e 	beqz	t6,ab4 <func_80A0AD88+0x13c>
 a3c:	00000000 	nop
 a40:	846f029c 	lh	t7,668(v1)
 a44:	24180014 	li	t8,20
 a48:	3c190000 	lui	t9,0x0
 a4c:	15e00005 	bnez	t7,a64 <func_80A0AD88+0xec>
 a50:	3c0141f0 	lui	at,0x41f0
 a54:	27390000 	addiu	t9,t9,0
 a58:	a6180156 	sh	t8,342(s0)
 a5c:	10000017 	b	abc <func_80A0AD88+0x144>
 a60:	ae19014c 	sw	t9,332(s0)
 a64:	44810000 	mtc1	at,$f0
 a68:	c608008c 	lwc1	$f8,140(s0)
 a6c:	46000282 	mul.s	$f10,$f0,$f0
 a70:	460a403c 	c.lt.s	$f8,$f10
 a74:	00000000 	nop
 a78:	45020011 	bc1fl	ac0 <func_80A0AD88+0x148>
 a7c:	8fbf0024 	lw	ra,36(sp)
 a80:	86040158 	lh	a0,344(s0)
 a84:	0c000000 	jal	0 <EnExRuppy_Init>
 a88:	afa2004c 	sw	v0,76(sp)
 a8c:	0c000000 	jal	0 <EnExRuppy_Init>
 a90:	24044803 	li	a0,18435
 a94:	8fa2004c 	lw	v0,76(sp)
 a98:	02002025 	move	a0,s0
 a9c:	844802a4 	lh	t0,676(v0)
 aa0:	25090001 	addiu	t1,t0,1
 aa4:	0c000000 	jal	0 <EnExRuppy_Init>
 aa8:	a44902a4 	sh	t1,676(v0)
 aac:	10000004 	b	ac0 <func_80A0AD88+0x148>
 ab0:	8fbf0024 	lw	ra,36(sp)
 ab4:	0c000000 	jal	0 <EnExRuppy_Init>
 ab8:	02002025 	move	a0,s0
 abc:	8fbf0024 	lw	ra,36(sp)
 ac0:	8fb00020 	lw	s0,32(sp)
 ac4:	27bd0050 	addiu	sp,sp,80
 ac8:	03e00008 	jr	ra
 acc:	00000000 	nop

00000ad0 <func_80A0AEE0>:
 ad0:	27bdffe8 	addiu	sp,sp,-24
 ad4:	afbf0014 	sw	ra,20(sp)
 ad8:	afa5001c 	sw	a1,28(sp)
 adc:	848e0154 	lh	t6,340(a0)
 ae0:	84880156 	lh	t0,342(a0)
 ae4:	25cf0001 	addiu	t7,t6,1
 ae8:	a48f0154 	sh	t7,340(a0)
 aec:	84980154 	lh	t8,340(a0)
 af0:	33190001 	andi	t9,t8,0x1
 af4:	15000003 	bnez	t0,b04 <func_80A0AEE0+0x34>
 af8:	a4990154 	sh	t9,340(a0)
 afc:	0c000000 	jal	0 <EnExRuppy_Init>
 b00:	00000000 	nop
 b04:	8fbf0014 	lw	ra,20(sp)
 b08:	27bd0018 	addiu	sp,sp,24
 b0c:	03e00008 	jr	ra
 b10:	00000000 	nop

00000b14 <EnExRuppy_WaitToBlowUp>:
 b14:	27bdffb0 	addiu	sp,sp,-80
 b18:	3c0f0000 	lui	t7,0x0
 b1c:	afbf0024 	sw	ra,36(sp)
 b20:	afb00020 	sw	s0,32(sp)
 b24:	afa50054 	sw	a1,84(sp)
 b28:	25ef0080 	addiu	t7,t7,128
 b2c:	8df90000 	lw	t9,0(t7)
 b30:	27ae0040 	addiu	t6,sp,64
 b34:	8df80004 	lw	t8,4(t7)
 b38:	add90000 	sw	t9,0(t6)
 b3c:	8df90008 	lw	t9,8(t7)
 b40:	3c090000 	lui	t1,0x0
 b44:	2529008c 	addiu	t1,t1,140
 b48:	add80004 	sw	t8,4(t6)
 b4c:	add90008 	sw	t9,8(t6)
 b50:	8d2b0000 	lw	t3,0(t1)
 b54:	27a80034 	addiu	t0,sp,52
 b58:	8d2a0004 	lw	t2,4(t1)
 b5c:	ad0b0000 	sw	t3,0(t0)
 b60:	8d2b0008 	lw	t3,8(t1)
 b64:	ad0a0004 	sw	t2,4(t0)
 b68:	3c014248 	lui	at,0x4248
 b6c:	ad0b0008 	sw	t3,8(t0)
 b70:	848c0152 	lh	t4,338(a0)
 b74:	44810000 	mtc1	at,$f0
 b78:	24010002 	li	at,2
 b7c:	15810004 	bne	t4,at,b90 <EnExRuppy_WaitToBlowUp+0x7c>
 b80:	00808025 	move	s0,a0
 b84:	3c0141f0 	lui	at,0x41f0
 b88:	44810000 	mtc1	at,$f0
 b8c:	00000000 	nop
 b90:	46000182 	mul.s	$f6,$f0,$f0
 b94:	c604008c 	lwc1	$f4,140(s0)
 b98:	4606203c 	c.lt.s	$f4,$f6
 b9c:	00000000 	nop
 ba0:	4502002b 	bc1fl	c50 <EnExRuppy_WaitToBlowUp+0x13c>
 ba4:	8fbf0024 	lw	ra,36(sp)
 ba8:	8e020118 	lw	v0,280(s0)
 bac:	3c040000 	lui	a0,0x0
 bb0:	10400007 	beqz	v0,bd0 <EnExRuppy_WaitToBlowUp+0xbc>
 bb4:	00000000 	nop
 bb8:	8c4d0130 	lw	t5,304(v0)
 bbc:	240e0001 	li	t6,1
 bc0:	11a00005 	beqz	t5,bd8 <EnExRuppy_WaitToBlowUp+0xc4>
 bc4:	00000000 	nop
 bc8:	10000003 	b	bd8 <EnExRuppy_WaitToBlowUp+0xc4>
 bcc:	a44e0266 	sh	t6,614(v0)
 bd0:	0c000000 	jal	0 <EnExRuppy_Init>
 bd4:	24840090 	addiu	a0,a0,144
 bd8:	3c040000 	lui	a0,0x0
 bdc:	0c000000 	jal	0 <EnExRuppy_Init>
 be0:	248400d4 	addiu	a0,a0,212
 be4:	860f0152 	lh	t7,338(s0)
 be8:	24010002 	li	at,2
 bec:	24020064 	li	v0,100
 bf0:	15e10003 	bne	t7,at,c00 <EnExRuppy_WaitToBlowUp+0xec>
 bf4:	2403001e 	li	v1,30
 bf8:	24020014 	li	v0,20
 bfc:	24030006 	li	v1,6
 c00:	8fa40054 	lw	a0,84(sp)
 c04:	26050024 	addiu	a1,s0,36
 c08:	27a60034 	addiu	a2,sp,52
 c0c:	27a70040 	addiu	a3,sp,64
 c10:	afa20010 	sw	v0,16(sp)
 c14:	0c000000 	jal	0 <EnExRuppy_Init>
 c18:	afa30014 	sw	v1,20(sp)
 c1c:	44804000 	mtc1	zero,$f8
 c20:	8607008a 	lh	a3,138(s0)
 c24:	8fa40054 	lw	a0,84(sp)
 c28:	02002825 	move	a1,s0
 c2c:	3c064000 	lui	a2,0x4000
 c30:	0c000000 	jal	0 <EnExRuppy_Init>
 c34:	e7a80010 	swc1	$f8,16(sp)
 c38:	02002025 	move	a0,s0
 c3c:	0c000000 	jal	0 <EnExRuppy_Init>
 c40:	2405180e 	li	a1,6158
 c44:	0c000000 	jal	0 <EnExRuppy_Init>
 c48:	02002025 	move	a0,s0
 c4c:	8fbf0024 	lw	ra,36(sp)
 c50:	8fb00020 	lw	s0,32(sp)
 c54:	27bd0050 	addiu	sp,sp,80
 c58:	03e00008 	jr	ra
 c5c:	00000000 	nop

00000c60 <EnExRuppy_WaitAsCollectible>:
 c60:	3c0141f0 	lui	at,0x41f0
 c64:	44810000 	mtc1	at,$f0
 c68:	27bdffe8 	addiu	sp,sp,-24
 c6c:	afbf0014 	sw	ra,20(sp)
 c70:	46000182 	mul.s	$f6,$f0,$f0
 c74:	afa5001c 	sw	a1,28(sp)
 c78:	c484008c 	lwc1	$f4,140(a0)
 c7c:	00803825 	move	a3,a0
 c80:	24044803 	li	a0,18435
 c84:	4606203c 	c.lt.s	$f4,$f6
 c88:	00000000 	nop
 c8c:	45020012 	bc1fl	cd8 <EnExRuppy_WaitAsCollectible+0x78>
 c90:	8fbf0014 	lw	ra,20(sp)
 c94:	0c000000 	jal	0 <EnExRuppy_Init>
 c98:	afa70018 	sw	a3,24(sp)
 c9c:	8fa70018 	lw	a3,24(sp)
 ca0:	3c060000 	lui	a2,0x0
 ca4:	8fa4001c 	lw	a0,28(sp)
 ca8:	84ee0150 	lh	t6,336(a3)
 cac:	24e50024 	addiu	a1,a3,36
 cb0:	000e7840 	sll	t7,t6,0x1
 cb4:	00cf3021 	addu	a2,a2,t7
 cb8:	84c60000 	lh	a2,0(a2)
 cbc:	34c68000 	ori	a2,a2,0x8000
 cc0:	00063400 	sll	a2,a2,0x10
 cc4:	0c000000 	jal	0 <EnExRuppy_Init>
 cc8:	00063403 	sra	a2,a2,0x10
 ccc:	0c000000 	jal	0 <EnExRuppy_Init>
 cd0:	8fa40018 	lw	a0,24(sp)
 cd4:	8fbf0014 	lw	ra,20(sp)
 cd8:	27bd0018 	addiu	sp,sp,24
 cdc:	03e00008 	jr	ra
 ce0:	00000000 	nop

00000ce4 <func_80A0B0F4>:
 ce4:	27bdffe8 	addiu	sp,sp,-24
 ce8:	afbf0014 	sw	ra,20(sp)
 cec:	afa40018 	sw	a0,24(sp)
 cf0:	afa5001c 	sw	a1,28(sp)
 cf4:	848f015c 	lh	t7,348(a0)
 cf8:	248400bc 	addiu	a0,a0,188
 cfc:	3c05c42f 	lui	a1,0xc42f
 d00:	11e00007 	beqz	t7,d20 <func_80A0B0F4+0x3c>
 d04:	3c063f00 	lui	a2,0x3f00
 d08:	3c05442f 	lui	a1,0x442f
 d0c:	3c063f00 	lui	a2,0x3f00
 d10:	0c000000 	jal	0 <EnExRuppy_Init>
 d14:	3c074348 	lui	a3,0x4348
 d18:	10000006 	b	d34 <func_80A0B0F4+0x50>
 d1c:	8fbf0014 	lw	ra,20(sp)
 d20:	8fa40018 	lw	a0,24(sp)
 d24:	3c074348 	lui	a3,0x4348
 d28:	0c000000 	jal	0 <EnExRuppy_Init>
 d2c:	248400bc 	addiu	a0,a0,188
 d30:	8fbf0014 	lw	ra,20(sp)
 d34:	27bd0018 	addiu	sp,sp,24
 d38:	03e00008 	jr	ra
 d3c:	00000000 	nop

00000d40 <EnExRuppy_Update>:
 d40:	27bdffd8 	addiu	sp,sp,-40
 d44:	afbf0024 	sw	ra,36(sp)
 d48:	afb00020 	sw	s0,32(sp)
 d4c:	afa5002c 	sw	a1,44(sp)
 d50:	848e00b6 	lh	t6,182(a0)
 d54:	00808025 	move	s0,a0
 d58:	25cf07a8 	addiu	t7,t6,1960
 d5c:	a48f00b6 	sh	t7,182(a0)
 d60:	8e19014c 	lw	t9,332(s0)
 d64:	8fa5002c 	lw	a1,44(sp)
 d68:	0320f809 	jalr	t9
 d6c:	00000000 	nop
 d70:	86020156 	lh	v0,342(s0)
 d74:	10400002 	beqz	v0,d80 <EnExRuppy_Update+0x40>
 d78:	2458ffff 	addiu	t8,v0,-1
 d7c:	a6180156 	sh	t8,342(s0)
 d80:	0c000000 	jal	0 <EnExRuppy_Init>
 d84:	02002025 	move	a0,s0
 d88:	3c0141a0 	lui	at,0x41a0
 d8c:	44810000 	mtc1	at,$f0
 d90:	3c014248 	lui	at,0x4248
 d94:	44812000 	mtc1	at,$f4
 d98:	2408001c 	li	t0,28
 d9c:	44060000 	mfc1	a2,$f0
 da0:	44070000 	mfc1	a3,$f0
 da4:	afa80014 	sw	t0,20(sp)
 da8:	8fa4002c 	lw	a0,44(sp)
 dac:	02002825 	move	a1,s0
 db0:	0c000000 	jal	0 <EnExRuppy_Init>
 db4:	e7a40010 	swc1	$f4,16(sp)
 db8:	8fbf0024 	lw	ra,36(sp)
 dbc:	8fb00020 	lw	s0,32(sp)
 dc0:	27bd0028 	addiu	sp,sp,40
 dc4:	03e00008 	jr	ra
 dc8:	00000000 	nop

00000dcc <EnExRuppy_Draw>:
 dcc:	27bdffb0 	addiu	sp,sp,-80
 dd0:	afbf001c 	sw	ra,28(sp)
 dd4:	afb10018 	sw	s1,24(sp)
 dd8:	afb00014 	sw	s0,20(sp)
 ddc:	afa40050 	sw	a0,80(sp)
 de0:	848f0154 	lh	t7,340(a0)
 de4:	00a08825 	move	s1,a1
 de8:	27a40034 	addiu	a0,sp,52
 dec:	15e00041 	bnez	t7,ef4 <EnExRuppy_Draw+0x128>
 df0:	3c060000 	lui	a2,0x0
 df4:	8ca50000 	lw	a1,0(a1)
 df8:	24c60100 	addiu	a2,a2,256
 dfc:	24070306 	li	a3,774
 e00:	0c000000 	jal	0 <EnExRuppy_Init>
 e04:	00a08025 	move	s0,a1
 e08:	0c000000 	jal	0 <EnExRuppy_Init>
 e0c:	8e240000 	lw	a0,0(s1)
 e10:	8fa40050 	lw	a0,80(sp)
 e14:	02202825 	move	a1,s1
 e18:	0c000000 	jal	0 <EnExRuppy_Init>
 e1c:	00003025 	move	a2,zero
 e20:	8e0202c0 	lw	v0,704(s0)
 e24:	3c19da38 	lui	t9,0xda38
 e28:	37390003 	ori	t9,t9,0x3
 e2c:	24580008 	addiu	t8,v0,8
 e30:	ae1802c0 	sw	t8,704(s0)
 e34:	ac590000 	sw	t9,0(v0)
 e38:	8e240000 	lw	a0,0(s1)
 e3c:	3c050000 	lui	a1,0x0
 e40:	24a50114 	addiu	a1,a1,276
 e44:	2406030c 	li	a2,780
 e48:	0c000000 	jal	0 <EnExRuppy_Init>
 e4c:	afa20030 	sw	v0,48(sp)
 e50:	8fa30030 	lw	v1,48(sp)
 e54:	3c09db06 	lui	t1,0xdb06
 e58:	35290020 	ori	t1,t1,0x20
 e5c:	ac620004 	sw	v0,4(v1)
 e60:	8e0202c0 	lw	v0,704(s0)
 e64:	3c040000 	lui	a0,0x0
 e68:	3c190000 	lui	t9,0x0
 e6c:	24480008 	addiu	t0,v0,8
 e70:	ae0802c0 	sw	t0,704(s0)
 e74:	ac490000 	sw	t1,0(v0)
 e78:	8faa0050 	lw	t2,80(sp)
 e7c:	3c0100ff 	lui	at,0xff
 e80:	3421ffff 	ori	at,at,0xffff
 e84:	854b0150 	lh	t3,336(t2)
 e88:	3c060000 	lui	a2,0x0
 e8c:	24c60128 	addiu	a2,a2,296
 e90:	000b6080 	sll	t4,t3,0x2
 e94:	008c2021 	addu	a0,a0,t4
 e98:	8c840000 	lw	a0,0(a0)
 e9c:	3c0c0000 	lui	t4,0x0
 ea0:	258c0000 	addiu	t4,t4,0
 ea4:	00047100 	sll	t6,a0,0x4
 ea8:	000e7f02 	srl	t7,t6,0x1c
 eac:	000fc080 	sll	t8,t7,0x2
 eb0:	0338c821 	addu	t9,t9,t8
 eb4:	8f390000 	lw	t9,0(t9)
 eb8:	00816824 	and	t5,a0,at
 ebc:	3c018000 	lui	at,0x8000
 ec0:	01b94021 	addu	t0,t5,t9
 ec4:	01014821 	addu	t1,t0,at
 ec8:	ac490004 	sw	t1,4(v0)
 ecc:	8e0202c0 	lw	v0,704(s0)
 ed0:	3c0bde00 	lui	t3,0xde00
 ed4:	27a40034 	addiu	a0,sp,52
 ed8:	244a0008 	addiu	t2,v0,8
 edc:	ae0a02c0 	sw	t2,704(s0)
 ee0:	ac4c0004 	sw	t4,4(v0)
 ee4:	ac4b0000 	sw	t3,0(v0)
 ee8:	8e250000 	lw	a1,0(s1)
 eec:	0c000000 	jal	0 <EnExRuppy_Init>
 ef0:	24070310 	li	a3,784
 ef4:	8fbf001c 	lw	ra,28(sp)
 ef8:	8fb00014 	lw	s0,20(sp)
 efc:	8fb10018 	lw	s1,24(sp)
 f00:	03e00008 	jr	ra
 f04:	27bd0050 	addiu	sp,sp,80
	...
