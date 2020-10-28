
build/src/overlays/actors/ovl_Bg_Jya_Megami/z_bg_jya_megami.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgJyaMegami_InitDynaPoly>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa50024 	sw	a1,36(sp)
   c:	afa40020 	sw	a0,32(sp)
  10:	afa60028 	sw	a2,40(sp)
  14:	afa00018 	sw	zero,24(sp)
  18:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
  1c:	00e02825 	move	a1,a3
  20:	8fa40028 	lw	a0,40(sp)
  24:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
  28:	27a50018 	addiu	a1,sp,24
  2c:	8fa40024 	lw	a0,36(sp)
  30:	8fa60020 	lw	a2,32(sp)
  34:	8fa70018 	lw	a3,24(sp)
  38:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
  3c:	24850810 	addiu	a1,a0,2064
  40:	8fae0020 	lw	t6,32(sp)
  44:	adc2014c 	sw	v0,332(t6)
  48:	8fbf0014 	lw	ra,20(sp)
  4c:	27bd0020 	addiu	sp,sp,32
  50:	03e00008 	jr	ra
  54:	00000000 	nop

00000058 <BgJyaMegami_InitCollider>:
  58:	27bdffd8 	addiu	sp,sp,-40
  5c:	00803025 	move	a2,a0
  60:	afa5002c 	sw	a1,44(sp)
  64:	00a02025 	move	a0,a1
  68:	afbf001c 	sw	ra,28(sp)
  6c:	24c50168 	addiu	a1,a2,360
  70:	afa50020 	sw	a1,32(sp)
  74:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
  78:	afa60028 	sw	a2,40(sp)
  7c:	8fa60028 	lw	a2,40(sp)
  80:	3c070000 	lui	a3,0x0
  84:	8fa50020 	lw	a1,32(sp)
  88:	24ce0188 	addiu	t6,a2,392
  8c:	afae0010 	sw	t6,16(sp)
  90:	24e70044 	addiu	a3,a3,68
  94:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
  98:	8fa4002c 	lw	a0,44(sp)
  9c:	8fbf001c 	lw	ra,28(sp)
  a0:	27bd0028 	addiu	sp,sp,40
  a4:	03e00008 	jr	ra
  a8:	00000000 	nop

000000ac <func_8089A1DC>:
  ac:	27bdff40 	addiu	sp,sp,-192
  b0:	afb50084 	sw	s5,132(sp)
  b4:	afb3007c 	sw	s3,124(sp)
  b8:	afb20078 	sw	s2,120(sp)
  bc:	00a09825 	move	s3,a1
  c0:	0080a825 	move	s5,a0
  c4:	afbf0094 	sw	ra,148(sp)
  c8:	afbe0090 	sw	s8,144(sp)
  cc:	afb7008c 	sw	s7,140(sp)
  d0:	afb60088 	sw	s6,136(sp)
  d4:	afb40080 	sw	s4,128(sp)
  d8:	afb10074 	sw	s1,116(sp)
  dc:	afb00070 	sw	s0,112(sp)
  e0:	f7bc0068 	sdc1	$f28,104(sp)
  e4:	f7ba0060 	sdc1	$f26,96(sp)
  e8:	f7b80058 	sdc1	$f24,88(sp)
  ec:	f7b60050 	sdc1	$f22,80(sp)
  f0:	f7b40048 	sdc1	$f20,72(sp)
  f4:	afa600c8 	sw	a2,200(sp)
  f8:	afa700cc 	sw	a3,204(sp)
  fc:	18e0006a 	blez	a3,2a8 <func_8089A1DC+0x1fc>
 100:	00009025 	move	s2,zero
 104:	3c014270 	lui	at,0x4270
 108:	4481e000 	mtc1	at,$f28
 10c:	3c0141c8 	lui	at,0x41c8
 110:	4481d000 	mtc1	at,$f26
 114:	3c010000 	lui	at,0x0
 118:	8faf00d0 	lw	t7,208(sp)
 11c:	c4380090 	lwc1	$f24,144(at)
 120:	3c010000 	lui	at,0x0
 124:	c4360094 	lwc1	$f22,148(at)
 128:	3c190000 	lui	t9,0x0
 12c:	27390000 	addiu	t9,t9,0
 130:	3c014100 	lui	at,0x4100
 134:	000fc040 	sll	t8,t7,0x1
 138:	03194021 	addu	t0,t8,t9
 13c:	3c1e0000 	lui	s8,0x0
 140:	3c170000 	lui	s7,0x0
 144:	3c160000 	lui	s6,0x0
 148:	4481a000 	mtc1	at,$f20
 14c:	26d60000 	addiu	s6,s6,0
 150:	26f70000 	addiu	s7,s7,0
 154:	27de0000 	addiu	s8,s8,0
 158:	afa800a0 	sw	t0,160(sp)
 15c:	27b400b4 	addiu	s4,sp,180
 160:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 164:	00000000 	nop
 168:	46140102 	mul.s	$f4,$f0,$f20
 16c:	8fa900a0 	lw	t1,160(sp)
 170:	852a0000 	lh	t2,0(t1)
 174:	4600218d 	trunc.w.s	$f6,$f4
 178:	440c3000 	mfc1	t4,$f6
 17c:	00000000 	nop
 180:	000c6c00 	sll	t5,t4,0x10
 184:	000d7403 	sra	t6,t5,0x10
 188:	014e8824 	and	s1,t2,t6
 18c:	2a210005 	slti	at,s1,5
 190:	5020000a 	beqzl	at,1bc <func_8089A1DC+0x110>
 194:	24030020 	li	v1,32
 198:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 19c:	00000000 	nop
 1a0:	4616003c 	c.lt.s	$f0,$f22
 1a4:	00000000 	nop
 1a8:	45020004 	bc1fl	1bc <func_8089A1DC+0x110>
 1ac:	24030020 	li	v1,32
 1b0:	10000002 	b	1bc <func_8089A1DC+0x110>
 1b4:	24030040 	li	v1,64
 1b8:	24030020 	li	v1,32
 1bc:	00111040 	sll	v0,s1,0x1
 1c0:	02c2c021 	addu	t8,s6,v0
 1c4:	87190000 	lh	t9,0(t8)
 1c8:	03c26021 	addu	t4,s8,v0
 1cc:	240fffa6 	li	t7,-90
 1d0:	858d0000 	lh	t5,0(t4)
 1d4:	afaf0010 	sw	t7,16(sp)
 1d8:	02e28021 	addu	s0,s7,v0
 1dc:	86090000 	lh	t1,0(s0)
 1e0:	3c0f0000 	lui	t7,0x0
 1e4:	25ef0000 	addiu	t7,t7,0
 1e8:	24080004 	li	t0,4
 1ec:	240b0005 	li	t3,5
 1f0:	240affff 	li	t2,-1
 1f4:	240e00f1 	li	t6,241
 1f8:	afae0038 	sw	t6,56(sp)
 1fc:	afaa0034 	sw	t2,52(sp)
 200:	afab002c 	sw	t3,44(sp)
 204:	afa8001c 	sw	t0,28(sp)
 208:	afaf003c 	sw	t7,60(sp)
 20c:	afa00028 	sw	zero,40(sp)
 210:	afa00020 	sw	zero,32(sp)
 214:	02a02025 	move	a0,s5
 218:	02602825 	move	a1,s3
 21c:	8fa600c8 	lw	a2,200(sp)
 220:	02603825 	move	a3,s3
 224:	afa30014 	sw	v1,20(sp)
 228:	afb90018 	sw	t9,24(sp)
 22c:	afad0030 	sw	t5,48(sp)
 230:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 234:	afa90024 	sw	t1,36(sp)
 238:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 23c:	00000000 	nop
 240:	4618003c 	c.lt.s	$f0,$f24
 244:	02802025 	move	a0,s4
 248:	45020014 	bc1fl	29c <func_8089A1DC+0x1f0>
 24c:	8fa900cc 	lw	t1,204(sp)
 250:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 254:	02602825 	move	a1,s3
 258:	c7a800bc 	lwc1	$f8,188(sp)
 25c:	86020000 	lh	v0,0(s0)
 260:	4406e000 	mfc1	a2,$f28
 264:	461a4280 	add.s	$f10,$f8,$f26
 268:	00021080 	sll	v0,v0,0x2
 26c:	24580032 	addiu	t8,v0,50
 270:	24590046 	addiu	t9,v0,70
 274:	24080001 	li	t0,1
 278:	e7aa00bc 	swc1	$f10,188(sp)
 27c:	afa80018 	sw	t0,24(sp)
 280:	afb90014 	sw	t9,20(sp)
 284:	afb80010 	sw	t8,16(sp)
 288:	02a02025 	move	a0,s5
 28c:	02802825 	move	a1,s4
 290:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 294:	00003825 	move	a3,zero
 298:	8fa900cc 	lw	t1,204(sp)
 29c:	26520001 	addiu	s2,s2,1
 2a0:	1649ffaf 	bne	s2,t1,160 <func_8089A1DC+0xb4>
 2a4:	00000000 	nop
 2a8:	8fbf0094 	lw	ra,148(sp)
 2ac:	d7b40048 	ldc1	$f20,72(sp)
 2b0:	d7b60050 	ldc1	$f22,80(sp)
 2b4:	d7b80058 	ldc1	$f24,88(sp)
 2b8:	d7ba0060 	ldc1	$f26,96(sp)
 2bc:	d7bc0068 	ldc1	$f28,104(sp)
 2c0:	8fb00070 	lw	s0,112(sp)
 2c4:	8fb10074 	lw	s1,116(sp)
 2c8:	8fb20078 	lw	s2,120(sp)
 2cc:	8fb3007c 	lw	s3,124(sp)
 2d0:	8fb40080 	lw	s4,128(sp)
 2d4:	8fb50084 	lw	s5,132(sp)
 2d8:	8fb60088 	lw	s6,136(sp)
 2dc:	8fb7008c 	lw	s7,140(sp)
 2e0:	8fbe0090 	lw	s8,144(sp)
 2e4:	03e00008 	jr	ra
 2e8:	27bd00c0 	addiu	sp,sp,192

000002ec <func_8089A41C>:
 2ec:	27bdffa0 	addiu	sp,sp,-96
 2f0:	afb60044 	sw	s6,68(sp)
 2f4:	afb4003c 	sw	s4,60(sp)
 2f8:	f7b60020 	sdc1	$f22,32(sp)
 2fc:	f7b40018 	sdc1	$f20,24(sp)
 300:	3c014170 	lui	at,0x4170
 304:	afb70048 	sw	s7,72(sp)
 308:	afb50040 	sw	s5,64(sp)
 30c:	afb30038 	sw	s3,56(sp)
 310:	afb20034 	sw	s2,52(sp)
 314:	afb10030 	sw	s1,48(sp)
 318:	afb0002c 	sw	s0,44(sp)
 31c:	3c140000 	lui	s4,0x0
 320:	3c160000 	lui	s6,0x0
 324:	4486a000 	mtc1	a2,$f20
 328:	4481b000 	mtc1	at,$f22
 32c:	00809025 	move	s2,a0
 330:	00a09825 	move	s3,a1
 334:	afbf004c 	sw	ra,76(sp)
 338:	26d601c4 	addiu	s6,s6,452
 33c:	26940054 	addiu	s4,s4,84
 340:	00008025 	move	s0,zero
 344:	27b10050 	addiu	s1,sp,80
 348:	24150018 	li	s5,24
 34c:	2417000d 	li	s7,13
 350:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 354:	00000000 	nop
 358:	4614003c 	c.lt.s	$f0,$f20
 35c:	00000000 	nop
 360:	45020012 	bc1fl	3ac <func_8089A41C+0xc0>
 364:	26100001 	addiu	s0,s0,1
 368:	02150019 	multu	s0,s5
 36c:	26440024 	addiu	a0,s2,36
 370:	02203025 	move	a2,s1
 374:	00007012 	mflo	t6
 378:	028e2821 	addu	a1,s4,t6
 37c:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 380:	00000000 	nop
 384:	c7a40058 	lwc1	$f4,88(sp)
 388:	02602025 	move	a0,s3
 38c:	02202825 	move	a1,s1
 390:	46162180 	add.s	$f6,$f4,$f22
 394:	02c03025 	move	a2,s6
 398:	24070001 	li	a3,1
 39c:	afa00010 	sw	zero,16(sp)
 3a0:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 3a4:	e7a60058 	swc1	$f6,88(sp)
 3a8:	26100001 	addiu	s0,s0,1
 3ac:	1617ffe8 	bne	s0,s7,350 <func_8089A41C+0x64>
 3b0:	00000000 	nop
 3b4:	8fbf004c 	lw	ra,76(sp)
 3b8:	d7b40018 	ldc1	$f20,24(sp)
 3bc:	d7b60020 	ldc1	$f22,32(sp)
 3c0:	8fb0002c 	lw	s0,44(sp)
 3c4:	8fb10030 	lw	s1,48(sp)
 3c8:	8fb20034 	lw	s2,52(sp)
 3cc:	8fb30038 	lw	s3,56(sp)
 3d0:	8fb4003c 	lw	s4,60(sp)
 3d4:	8fb50040 	lw	s5,64(sp)
 3d8:	8fb60044 	lw	s6,68(sp)
 3dc:	8fb70048 	lw	s7,72(sp)
 3e0:	03e00008 	jr	ra
 3e4:	27bd0060 	addiu	sp,sp,96

000003e8 <BgJyaMegami_Init>:
 3e8:	27bdffe0 	addiu	sp,sp,-32
 3ec:	afbf001c 	sw	ra,28(sp)
 3f0:	afb00018 	sw	s0,24(sp)
 3f4:	3c060000 	lui	a2,0x0
 3f8:	00808025 	move	s0,a0
 3fc:	afa50024 	sw	a1,36(sp)
 400:	24c60000 	addiu	a2,a2,0
 404:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 408:	00003825 	move	a3,zero
 40c:	02002025 	move	a0,s0
 410:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 414:	8fa50024 	lw	a1,36(sp)
 418:	8605001c 	lh	a1,28(s0)
 41c:	8fa40024 	lw	a0,36(sp)
 420:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 424:	30a5003f 	andi	a1,a1,0x3f
 428:	10400005 	beqz	v0,440 <BgJyaMegami_Init+0x58>
 42c:	02002025 	move	a0,s0
 430:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 434:	02002025 	move	a0,s0
 438:	1000000a 	b	464 <BgJyaMegami_Init+0x7c>
 43c:	8fbf001c 	lw	ra,28(sp)
 440:	3c050000 	lui	a1,0x0
 444:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 448:	24a501d0 	addiu	a1,a1,464
 44c:	02002025 	move	a0,s0
 450:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 454:	3c05c248 	lui	a1,0xc248
 458:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 45c:	02002025 	move	a0,s0
 460:	8fbf001c 	lw	ra,28(sp)
 464:	8fb00018 	lw	s0,24(sp)
 468:	27bd0020 	addiu	sp,sp,32
 46c:	03e00008 	jr	ra
 470:	00000000 	nop

00000474 <BgJyaMegami_Destroy>:
 474:	27bdffe8 	addiu	sp,sp,-24
 478:	afa40018 	sw	a0,24(sp)
 47c:	8fae0018 	lw	t6,24(sp)
 480:	afbf0014 	sw	ra,20(sp)
 484:	00a03825 	move	a3,a1
 488:	00a02025 	move	a0,a1
 48c:	8dc6014c 	lw	a2,332(t6)
 490:	afa7001c 	sw	a3,28(sp)
 494:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 498:	24a50810 	addiu	a1,a1,2064
 49c:	8fa50018 	lw	a1,24(sp)
 4a0:	8fa4001c 	lw	a0,28(sp)
 4a4:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 4a8:	24a50168 	addiu	a1,a1,360
 4ac:	8fbf0014 	lw	ra,20(sp)
 4b0:	27bd0018 	addiu	sp,sp,24
 4b4:	03e00008 	jr	ra
 4b8:	00000000 	nop

000004bc <BgJyaMegami_SetupDetectLight>:
 4bc:	3c0e0000 	lui	t6,0x0
 4c0:	25ce0000 	addiu	t6,t6,0
 4c4:	ac8e0164 	sw	t6,356(a0)
 4c8:	a48001c8 	sh	zero,456(a0)
 4cc:	03e00008 	jr	ra
 4d0:	a48001cc 	sh	zero,460(a0)

000004d4 <BgJyaMegami_DetectLight>:
 4d4:	27bdffd8 	addiu	sp,sp,-40
 4d8:	afbf0024 	sw	ra,36(sp)
 4dc:	afb00020 	sw	s0,32(sp)
 4e0:	afa5002c 	sw	a1,44(sp)
 4e4:	90820179 	lbu	v0,377(a0)
 4e8:	00808025 	move	s0,a0
 4ec:	304e0002 	andi	t6,v0,0x2
 4f0:	51c00020 	beqzl	t6,574 <BgJyaMegami_DetectLight+0xa0>
 4f4:	860201c8 	lh	v0,456(s0)
 4f8:	848f01c8 	lh	t7,456(a0)
 4fc:	3059fffd 	andi	t9,v0,0xfffd
 500:	a0990179 	sb	t9,377(a0)
 504:	25f80001 	addiu	t8,t7,1
 508:	a49801c8 	sh	t8,456(a0)
 50c:	8fa8002c 	lw	t0,44(sp)
 510:	3c090001 	lui	t1,0x1
 514:	01284821 	addu	t1,t1,t0
 518:	8d291de4 	lw	t1,7652(t1)
 51c:	312a0003 	andi	t2,t1,0x3
 520:	5540000f 	bnezl	t2,560 <BgJyaMegami_DetectLight+0x8c>
 524:	02002025 	move	a0,s0
 528:	860b01cc 	lh	t3,460(s0)
 52c:	3c010000 	lui	at,0x0
 530:	c4280098 	lwc1	$f8,152(at)
 534:	448b2000 	mtc1	t3,$f4
 538:	3c010000 	lui	at,0x0
 53c:	c430009c 	lwc1	$f16,156(at)
 540:	468021a0 	cvt.s.w	$f6,$f4
 544:	01002825 	move	a1,t0
 548:	46083282 	mul.s	$f10,$f6,$f8
 54c:	46105480 	add.s	$f18,$f10,$f16
 550:	44069000 	mfc1	a2,$f18
 554:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 558:	00000000 	nop
 55c:	02002025 	move	a0,s0
 560:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 564:	240520d1 	li	a1,8401
 568:	10000006 	b	584 <BgJyaMegami_DetectLight+0xb0>
 56c:	860201c8 	lh	v0,456(s0)
 570:	860201c8 	lh	v0,456(s0)
 574:	18400003 	blez	v0,584 <BgJyaMegami_DetectLight+0xb0>
 578:	244cffff 	addiu	t4,v0,-1
 57c:	a60c01c8 	sh	t4,456(s0)
 580:	860201c8 	lh	v0,456(s0)
 584:	28410029 	slti	at,v0,41
 588:	14200014 	bnez	at,5dc <BgJyaMegami_DetectLight+0x108>
 58c:	26060168 	addiu	a2,s0,360
 590:	8605001c 	lh	a1,28(s0)
 594:	8fa4002c 	lw	a0,44(sp)
 598:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 59c:	30a5003f 	andi	a1,a1,0x3f
 5a0:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 5a4:	02002025 	move	a0,s0
 5a8:	8fa4002c 	lw	a0,44(sp)
 5ac:	26050024 	addiu	a1,s0,36
 5b0:	24060064 	li	a2,100
 5b4:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 5b8:	240728d0 	li	a3,10448
 5bc:	8fa4002c 	lw	a0,44(sp)
 5c0:	24050d70 	li	a1,3440
 5c4:	2406ff9d 	li	a2,-99
 5c8:	02003825 	move	a3,s0
 5cc:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 5d0:	afa00010 	sw	zero,16(sp)
 5d4:	1000001d 	b	64c <BgJyaMegami_DetectLight+0x178>
 5d8:	8fbf0024 	lw	ra,36(sp)
 5dc:	28410008 	slti	at,v0,8
 5e0:	50200004 	beqzl	at,5f4 <BgJyaMegami_DetectLight+0x120>
 5e4:	28410010 	slti	at,v0,16
 5e8:	10000012 	b	634 <BgJyaMegami_DetectLight+0x160>
 5ec:	a60001cc 	sh	zero,460(s0)
 5f0:	28410010 	slti	at,v0,16
 5f4:	10200003 	beqz	at,604 <BgJyaMegami_DetectLight+0x130>
 5f8:	240d0001 	li	t5,1
 5fc:	1000000d 	b	634 <BgJyaMegami_DetectLight+0x160>
 600:	a60d01cc 	sh	t5,460(s0)
 604:	28410018 	slti	at,v0,24
 608:	10200003 	beqz	at,618 <BgJyaMegami_DetectLight+0x144>
 60c:	240e0002 	li	t6,2
 610:	10000008 	b	634 <BgJyaMegami_DetectLight+0x160>
 614:	a60e01cc 	sh	t6,460(s0)
 618:	28410020 	slti	at,v0,32
 61c:	10200004 	beqz	at,630 <BgJyaMegami_DetectLight+0x15c>
 620:	24180004 	li	t8,4
 624:	240f0003 	li	t7,3
 628:	10000002 	b	634 <BgJyaMegami_DetectLight+0x160>
 62c:	a60f01cc 	sh	t7,460(s0)
 630:	a61801cc 	sh	t8,460(s0)
 634:	8fa4002c 	lw	a0,44(sp)
 638:	3c010001 	lui	at,0x1
 63c:	34211e60 	ori	at,at,0x1e60
 640:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 644:	00812821 	addu	a1,a0,at
 648:	8fbf0024 	lw	ra,36(sp)
 64c:	8fb00020 	lw	s0,32(sp)
 650:	27bd0028 	addiu	sp,sp,40
 654:	03e00008 	jr	ra
 658:	00000000 	nop

0000065c <BgJyaMegami_SetupExplode>:
 65c:	27bdffd0 	addiu	sp,sp,-48
 660:	afb40028 	sw	s4,40(sp)
 664:	afb00018 	sw	s0,24(sp)
 668:	3c0e0000 	lui	t6,0x0
 66c:	afbf002c 	sw	ra,44(sp)
 670:	afb30024 	sw	s3,36(sp)
 674:	afb20020 	sw	s2,32(sp)
 678:	afb1001c 	sw	s1,28(sp)
 67c:	25ce0000 	addiu	t6,t6,0
 680:	ac8e0164 	sw	t6,356(a0)
 684:	3c100000 	lui	s0,0x0
 688:	3c140000 	lui	s4,0x0
 68c:	2694018c 	addiu	s4,s4,396
 690:	26100054 	addiu	s0,s0,84
 694:	afa40030 	sw	a0,48(sp)
 698:	00808825 	move	s1,a0
 69c:	249201d0 	addiu	s2,a0,464
 6a0:	24930024 	addiu	s3,a0,36
 6a4:	02402025 	move	a0,s2
 6a8:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 6ac:	02602825 	move	a1,s3
 6b0:	c604000c 	lwc1	$f4,12(s0)
 6b4:	26100018 	addiu	s0,s0,24
 6b8:	2631001c 	addiu	s1,s1,28
 6bc:	2652001c 	addiu	s2,s2,28
 6c0:	1614fff8 	bne	s0,s4,6a4 <BgJyaMegami_SetupExplode+0x48>
 6c4:	e62401c0 	swc1	$f4,448(s1)
 6c8:	8faf0030 	lw	t7,48(sp)
 6cc:	a5e001ca 	sh	zero,458(t7)
 6d0:	8fbf002c 	lw	ra,44(sp)
 6d4:	8fb40028 	lw	s4,40(sp)
 6d8:	8fb30024 	lw	s3,36(sp)
 6dc:	8fb20020 	lw	s2,32(sp)
 6e0:	8fb1001c 	lw	s1,28(sp)
 6e4:	8fb00018 	lw	s0,24(sp)
 6e8:	03e00008 	jr	ra
 6ec:	27bd0030 	addiu	sp,sp,48

000006f0 <BgJyaMegami_Explode>:
 6f0:	27bdff60 	addiu	sp,sp,-160
 6f4:	afbf0074 	sw	ra,116(sp)
 6f8:	afbe0070 	sw	s8,112(sp)
 6fc:	afb7006c 	sw	s7,108(sp)
 700:	afb60068 	sw	s6,104(sp)
 704:	afb50064 	sw	s5,100(sp)
 708:	afb40060 	sw	s4,96(sp)
 70c:	afb3005c 	sw	s3,92(sp)
 710:	afb20058 	sw	s2,88(sp)
 714:	afb10054 	sw	s1,84(sp)
 718:	afb00050 	sw	s0,80(sp)
 71c:	f7bc0048 	sdc1	$f28,72(sp)
 720:	f7ba0040 	sdc1	$f26,64(sp)
 724:	f7b80038 	sdc1	$f24,56(sp)
 728:	f7b60030 	sdc1	$f22,48(sp)
 72c:	f7b40028 	sdc1	$f20,40(sp)
 730:	848e01ca 	lh	t6,458(a0)
 734:	0080a025 	move	s4,a0
 738:	00a0b825 	move	s7,a1
 73c:	25cf0001 	addiu	t7,t6,1
 740:	a48f01ca 	sh	t7,458(a0)
 744:	848301ca 	lh	v1,458(a0)
 748:	2401001e 	li	at,30
 74c:	00a02025 	move	a0,a1
 750:	14610005 	bne	v1,at,768 <BgJyaMegami_Explode+0x78>
 754:	26850024 	addiu	a1,s4,36
 758:	24060064 	li	a2,100
 75c:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 760:	240728cf 	li	a3,10447
 764:	868301ca 	lh	v1,458(s4)
 768:	3c010000 	lui	at,0x0
 76c:	c43c00a0 	lwc1	$f28,160(at)
 770:	3c010000 	lui	at,0x0
 774:	c43a00a4 	lwc1	$f26,164(at)
 778:	3c010000 	lui	at,0x0
 77c:	c43800a8 	lwc1	$f24,168(at)
 780:	3c014120 	lui	at,0x4120
 784:	4481b000 	mtc1	at,$f22
 788:	3c01c190 	lui	at,0xc190
 78c:	3c120000 	lui	s2,0x0
 790:	4481a000 	mtc1	at,$f20
 794:	26520054 	addiu	s2,s2,84
 798:	00009825 	move	s3,zero
 79c:	241e000d 	li	s8,13
 7a0:	2416001c 	li	s6,28
 7a4:	27b5008c 	addiu	s5,sp,140
 7a8:	86420014 	lh	v0,20(s2)
 7ac:	0043082a 	slt	at,v0,v1
 7b0:	10200036 	beqz	at,88c <BgJyaMegami_Explode+0x19c>
 7b4:	00000000 	nop
 7b8:	02760019 	multu	s3,s6
 7bc:	0000c012 	mflo	t8
 7c0:	02988021 	addu	s0,s4,t8
 7c4:	c60401e0 	lwc1	$f4,480(s0)
 7c8:	261001d0 	addiu	s0,s0,464
 7cc:	46182181 	sub.s	$f6,$f4,$f24
 7d0:	e6060010 	swc1	$f6,16(s0)
 7d4:	c6000010 	lwc1	$f0,16(s0)
 7d8:	4614003c 	c.lt.s	$f0,$f20
 7dc:	00000000 	nop
 7e0:	45020004 	bc1fl	7f4 <BgJyaMegami_Explode+0x104>
 7e4:	c608000c 	lwc1	$f8,12(s0)
 7e8:	e6140010 	swc1	$f20,16(s0)
 7ec:	c6000010 	lwc1	$f0,16(s0)
 7f0:	c608000c 	lwc1	$f8,12(s0)
 7f4:	c6100000 	lwc1	$f16,0(s0)
 7f8:	c6060004 	lwc1	$f6,4(s0)
 7fc:	461a4282 	mul.s	$f10,$f8,$f26
 800:	86190018 	lh	t9,24(s0)
 804:	46003200 	add.s	$f8,$f6,$f0
 808:	860a001a 	lh	t2,26(s0)
 80c:	e6080004 	swc1	$f8,4(s0)
 810:	e60a000c 	swc1	$f10,12(s0)
 814:	c612000c 	lwc1	$f18,12(s0)
 818:	46128100 	add.s	$f4,$f16,$f18
 81c:	e6040000 	swc1	$f4,0(s0)
 820:	86480010 	lh	t0,16(s2)
 824:	03284821 	addu	t1,t9,t0
 828:	a6090018 	sh	t1,24(s0)
 82c:	864b0012 	lh	t3,18(s2)
 830:	014b6021 	addu	t4,t2,t3
 834:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 838:	a60c001a 	sh	t4,26(s0)
 83c:	461c003c 	c.lt.s	$f0,$f28
 840:	02002025 	move	a0,s0
 844:	02402825 	move	a1,s2
 848:	02a03025 	move	a2,s5
 84c:	4500000d 	bc1f	884 <BgJyaMegami_Explode+0x194>
 850:	00000000 	nop
 854:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 858:	2611000c 	addiu	s1,s0,12
 85c:	c7aa0094 	lwc1	$f10,148(sp)
 860:	240d0002 	li	t5,2
 864:	afad0010 	sw	t5,16(sp)
 868:	46165400 	add.s	$f16,$f10,$f22
 86c:	02e02025 	move	a0,s7
 870:	02a02825 	move	a1,s5
 874:	02203025 	move	a2,s1
 878:	e7b00094 	swc1	$f16,148(sp)
 87c:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 880:	24070003 	li	a3,3
 884:	10000017 	b	8e4 <BgJyaMegami_Explode+0x1f4>
 888:	868301ca 	lh	v1,458(s4)
 88c:	54430016 	bnel	v0,v1,8e8 <BgJyaMegami_Explode+0x1f8>
 890:	26730001 	addiu	s3,s3,1
 894:	02760019 	multu	s3,s6
 898:	02402825 	move	a1,s2
 89c:	02a03025 	move	a2,s5
 8a0:	00007012 	mflo	t6
 8a4:	028e8021 	addu	s0,s4,t6
 8a8:	261001d0 	addiu	s0,s0,464
 8ac:	02002025 	move	a0,s0
 8b0:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 8b4:	2611000c 	addiu	s1,s0,12
 8b8:	c7b20094 	lwc1	$f18,148(sp)
 8bc:	240f0002 	li	t7,2
 8c0:	afaf0010 	sw	t7,16(sp)
 8c4:	46169100 	add.s	$f4,$f18,$f22
 8c8:	02e02025 	move	a0,s7
 8cc:	02a02825 	move	a1,s5
 8d0:	02203025 	move	a2,s1
 8d4:	e7a40094 	swc1	$f4,148(sp)
 8d8:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 8dc:	24070004 	li	a3,4
 8e0:	868301ca 	lh	v1,458(s4)
 8e4:	26730001 	addiu	s3,s3,1
 8e8:	167effaf 	bne	s3,s8,7a8 <BgJyaMegami_Explode+0xb8>
 8ec:	26520018 	addiu	s2,s2,24
 8f0:	30780003 	andi	t8,v1,0x3
 8f4:	1700002c 	bnez	t8,9a8 <BgJyaMegami_Explode+0x2b8>
 8f8:	2861001f 	slti	at,v1,31
 8fc:	1420002a 	bnez	at,9a8 <BgJyaMegami_Explode+0x2b8>
 900:	28610050 	slti	at,v1,80
 904:	10200028 	beqz	at,9a8 <BgJyaMegami_Explode+0x2b8>
 908:	28610029 	slti	at,v1,41
 90c:	54200027 	bnezl	at,9ac <BgJyaMegami_Explode+0x2bc>
 910:	2861000d 	slti	at,v1,13
 914:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 918:	00000000 	nop
 91c:	3c013f00 	lui	at,0x3f00
 920:	4481a000 	mtc1	at,$f20
 924:	3c0142b4 	lui	at,0x42b4
 928:	44814000 	mtc1	at,$f8
 92c:	46140181 	sub.s	$f6,$f0,$f20
 930:	c6900024 	lwc1	$f16,36(s4)
 934:	46083282 	mul.s	$f10,$f6,$f8
 938:	46105480 	add.s	$f18,$f10,$f16
 93c:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 940:	e7b2008c 	swc1	$f18,140(sp)
 944:	3c0142a0 	lui	at,0x42a0
 948:	44813000 	mtc1	at,$f6
 94c:	c6840028 	lwc1	$f4,40(s4)
 950:	3c0141a0 	lui	at,0x41a0
 954:	46060202 	mul.s	$f8,$f0,$f6
 958:	44818000 	mtc1	at,$f16
 95c:	46082281 	sub.s	$f10,$f4,$f8
 960:	46105481 	sub.s	$f18,$f10,$f16
 964:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 968:	e7b20090 	swc1	$f18,144(sp)
 96c:	46140181 	sub.s	$f6,$f0,$f20
 970:	3c014248 	lui	at,0x4248
 974:	44812000 	mtc1	at,$f4
 978:	c68a002c 	lwc1	$f10,44(s4)
 97c:	3c060000 	lui	a2,0x0
 980:	46043202 	mul.s	$f8,$f6,$f4
 984:	24c601e0 	addiu	a2,a2,480
 988:	afa00010 	sw	zero,16(sp)
 98c:	02e02025 	move	a0,s7
 990:	02a02825 	move	a1,s5
 994:	24070001 	li	a3,1
 998:	46085401 	sub.s	$f16,$f10,$f8
 99c:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 9a0:	e7b00094 	swc1	$f16,148(sp)
 9a4:	868301ca 	lh	v1,458(s4)
 9a8:	2861000d 	slti	at,v1,13
 9ac:	10200015 	beqz	at,a04 <BgJyaMegami_Explode+0x314>
 9b0:	02e02025 	move	a0,s7
 9b4:	c6920024 	lwc1	$f18,36(s4)
 9b8:	3c014270 	lui	at,0x4270
 9bc:	44812000 	mtc1	at,$f4
 9c0:	e7b2008c 	swc1	$f18,140(sp)
 9c4:	c6860028 	lwc1	$f6,40(s4)
 9c8:	24190096 	li	t9,150
 9cc:	24080064 	li	t0,100
 9d0:	46043281 	sub.s	$f10,$f6,$f4
 9d4:	24090001 	li	t1,1
 9d8:	02a02825 	move	a1,s5
 9dc:	3c0642c8 	lui	a2,0x42c8
 9e0:	e7aa0090 	swc1	$f10,144(sp)
 9e4:	c688002c 	lwc1	$f8,44(s4)
 9e8:	afa90018 	sw	t1,24(sp)
 9ec:	afa80014 	sw	t0,20(sp)
 9f0:	afb90010 	sw	t9,16(sp)
 9f4:	24070001 	li	a3,1
 9f8:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 9fc:	e7a80094 	swc1	$f8,148(sp)
 a00:	868301ca 	lh	v1,458(s4)
 a04:	2401003c 	li	at,60
 a08:	54610005 	bnel	v1,at,a20 <BgJyaMegami_Explode+0x330>
 a0c:	28610064 	slti	at,v1,100
 a10:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 a14:	24044802 	li	a0,18434
 a18:	868301ca 	lh	v1,458(s4)
 a1c:	28610064 	slti	at,v1,100
 a20:	54200004 	bnezl	at,a34 <BgJyaMegami_Explode+0x344>
 a24:	8fbf0074 	lw	ra,116(sp)
 a28:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 a2c:	02802025 	move	a0,s4
 a30:	8fbf0074 	lw	ra,116(sp)
 a34:	d7b40028 	ldc1	$f20,40(sp)
 a38:	d7b60030 	ldc1	$f22,48(sp)
 a3c:	d7b80038 	ldc1	$f24,56(sp)
 a40:	d7ba0040 	ldc1	$f26,64(sp)
 a44:	d7bc0048 	ldc1	$f28,72(sp)
 a48:	8fb00050 	lw	s0,80(sp)
 a4c:	8fb10054 	lw	s1,84(sp)
 a50:	8fb20058 	lw	s2,88(sp)
 a54:	8fb3005c 	lw	s3,92(sp)
 a58:	8fb40060 	lw	s4,96(sp)
 a5c:	8fb50064 	lw	s5,100(sp)
 a60:	8fb60068 	lw	s6,104(sp)
 a64:	8fb7006c 	lw	s7,108(sp)
 a68:	8fbe0070 	lw	s8,112(sp)
 a6c:	03e00008 	jr	ra
 a70:	27bd00a0 	addiu	sp,sp,160

00000a74 <BgJyaMegami_Update>:
 a74:	27bdffe8 	addiu	sp,sp,-24
 a78:	afbf0014 	sw	ra,20(sp)
 a7c:	8c990164 	lw	t9,356(a0)
 a80:	0320f809 	jalr	t9
 a84:	00000000 	nop
 a88:	8fbf0014 	lw	ra,20(sp)
 a8c:	27bd0018 	addiu	sp,sp,24
 a90:	03e00008 	jr	ra
 a94:	00000000 	nop

00000a98 <BgJyaMegami_DrawFace>:
 a98:	27bdffb8 	addiu	sp,sp,-72
 a9c:	afbf001c 	sw	ra,28(sp)
 aa0:	afb00018 	sw	s0,24(sp)
 aa4:	afa40048 	sw	a0,72(sp)
 aa8:	afa5004c 	sw	a1,76(sp)
 aac:	8ca50000 	lw	a1,0(a1)
 ab0:	3c060000 	lui	a2,0x0
 ab4:	24c60000 	addiu	a2,a2,0
 ab8:	27a40034 	addiu	a0,sp,52
 abc:	240702c2 	li	a3,706
 ac0:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 ac4:	00a08025 	move	s0,a1
 ac8:	8faf004c 	lw	t7,76(sp)
 acc:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 ad0:	8de40000 	lw	a0,0(t7)
 ad4:	8e0202c0 	lw	v0,704(s0)
 ad8:	8fa80048 	lw	t0,72(sp)
 adc:	3c19db06 	lui	t9,0xdb06
 ae0:	24580008 	addiu	t8,v0,8
 ae4:	ae1802c0 	sw	t8,704(s0)
 ae8:	37390020 	ori	t9,t9,0x20
 aec:	ac590000 	sw	t9,0(v0)
 af0:	850901cc 	lh	t1,460(t0)
 af4:	3c040000 	lui	a0,0x0
 af8:	3c060000 	lui	a2,0x0
 afc:	00095080 	sll	t2,t1,0x2
 b00:	008a2021 	addu	a0,a0,t2
 b04:	8c8401ec 	lw	a0,492(a0)
 b08:	24c60000 	addiu	a2,a2,0
 b0c:	3c0500ff 	lui	a1,0xff
 b10:	00046100 	sll	t4,a0,0x4
 b14:	000c6f02 	srl	t5,t4,0x1c
 b18:	000d7080 	sll	t6,t5,0x2
 b1c:	00ce7821 	addu	t7,a2,t6
 b20:	8df80000 	lw	t8,0(t7)
 b24:	34a5ffff 	ori	a1,a1,0xffff
 b28:	00855824 	and	t3,a0,a1
 b2c:	3c078000 	lui	a3,0x8000
 b30:	0178c821 	addu	t9,t3,t8
 b34:	03274821 	addu	t1,t9,a3
 b38:	ac490004 	sw	t1,4(v0)
 b3c:	8e0202c0 	lw	v0,704(s0)
 b40:	3c0cdb06 	lui	t4,0xdb06
 b44:	358c0024 	ori	t4,t4,0x24
 b48:	244a0008 	addiu	t2,v0,8
 b4c:	ae0a02c0 	sw	t2,704(s0)
 b50:	ac4c0000 	sw	t4,0(v0)
 b54:	850d01cc 	lh	t5,460(t0)
 b58:	3c040000 	lui	a0,0x0
 b5c:	000d7080 	sll	t6,t5,0x2
 b60:	008e2021 	addu	a0,a0,t6
 b64:	8c840200 	lw	a0,512(a0)
 b68:	00045900 	sll	t3,a0,0x4
 b6c:	000bc702 	srl	t8,t3,0x1c
 b70:	0018c880 	sll	t9,t8,0x2
 b74:	00d94821 	addu	t1,a2,t9
 b78:	8d2a0000 	lw	t2,0(t1)
 b7c:	00857824 	and	t7,a0,a1
 b80:	3c0bda38 	lui	t3,0xda38
 b84:	01ea6021 	addu	t4,t7,t2
 b88:	01876821 	addu	t5,t4,a3
 b8c:	ac4d0004 	sw	t5,4(v0)
 b90:	8e0202c0 	lw	v0,704(s0)
 b94:	356b0003 	ori	t3,t3,0x3
 b98:	3c050000 	lui	a1,0x0
 b9c:	244e0008 	addiu	t6,v0,8
 ba0:	ae0e02c0 	sw	t6,704(s0)
 ba4:	ac4b0000 	sw	t3,0(v0)
 ba8:	8fb8004c 	lw	t8,76(sp)
 bac:	24a50018 	addiu	a1,a1,24
 bb0:	240602cc 	li	a2,716
 bb4:	8f040000 	lw	a0,0(t8)
 bb8:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 bbc:	afa20028 	sw	v0,40(sp)
 bc0:	8fa30028 	lw	v1,40(sp)
 bc4:	3c0f0000 	lui	t7,0x0
 bc8:	25ef0000 	addiu	t7,t7,0
 bcc:	ac620004 	sw	v0,4(v1)
 bd0:	8e0202c0 	lw	v0,704(s0)
 bd4:	3c09de00 	lui	t1,0xde00
 bd8:	3c060000 	lui	a2,0x0
 bdc:	24590008 	addiu	t9,v0,8
 be0:	ae1902c0 	sw	t9,704(s0)
 be4:	ac4f0004 	sw	t7,4(v0)
 be8:	ac490000 	sw	t1,0(v0)
 bec:	8faa004c 	lw	t2,76(sp)
 bf0:	24c60030 	addiu	a2,a2,48
 bf4:	27a40034 	addiu	a0,sp,52
 bf8:	240702d0 	li	a3,720
 bfc:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 c00:	8d450000 	lw	a1,0(t2)
 c04:	8fbf001c 	lw	ra,28(sp)
 c08:	8fb00018 	lw	s0,24(sp)
 c0c:	27bd0048 	addiu	sp,sp,72
 c10:	03e00008 	jr	ra
 c14:	00000000 	nop

00000c18 <BgJyaMegami_DrawExplode>:
 c18:	27bdff68 	addiu	sp,sp,-152
 c1c:	afb60048 	sw	s6,72(sp)
 c20:	00a0b025 	move	s6,a1
 c24:	afbf0054 	sw	ra,84(sp)
 c28:	afbe0050 	sw	s8,80(sp)
 c2c:	afb7004c 	sw	s7,76(sp)
 c30:	afb50044 	sw	s5,68(sp)
 c34:	afb40040 	sw	s4,64(sp)
 c38:	afb3003c 	sw	s3,60(sp)
 c3c:	afb20038 	sw	s2,56(sp)
 c40:	afb10034 	sw	s1,52(sp)
 c44:	afb00030 	sw	s0,48(sp)
 c48:	f7b80028 	sdc1	$f24,40(sp)
 c4c:	f7b60020 	sdc1	$f22,32(sp)
 c50:	f7b40018 	sdc1	$f20,24(sp)
 c54:	8ca50000 	lw	a1,0(a1)
 c58:	00808825 	move	s1,a0
 c5c:	3c060000 	lui	a2,0x0
 c60:	24c60048 	addiu	a2,a2,72
 c64:	27a40078 	addiu	a0,sp,120
 c68:	240702ea 	li	a3,746
 c6c:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 c70:	00a0a825 	move	s5,a1
 c74:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 c78:	8ec40000 	lw	a0,0(s6)
 c7c:	3c010000 	lui	at,0x0
 c80:	c43800ac 	lwc1	$f24,172(at)
 c84:	3c01c120 	lui	at,0xc120
 c88:	4481b000 	mtc1	at,$f22
 c8c:	3c010000 	lui	at,0x0
 c90:	3c100000 	lui	s0,0x0
 c94:	3c140000 	lui	s4,0x0
 c98:	3c1e0000 	lui	s8,0x0
 c9c:	3c17da38 	lui	s7,0xda38
 ca0:	36f70003 	ori	s7,s7,0x3
 ca4:	27de0060 	addiu	s8,s8,96
 ca8:	26940214 	addiu	s4,s4,532
 cac:	26100054 	addiu	s0,s0,84
 cb0:	c43400b0 	lwc1	$f20,176(at)
 cb4:	02209025 	move	s2,s1
 cb8:	263301d0 	addiu	s3,s1,464
 cbc:	c6040000 	lwc1	$f4,0(s0)
 cc0:	c64601d0 	lwc1	$f6,464(s2)
 cc4:	c6100008 	lwc1	$f16,8(s0)
 cc8:	c65201d8 	lwc1	$f18,472(s2)
 ccc:	46062300 	add.s	$f12,$f4,$f6
 cd0:	c6080004 	lwc1	$f8,4(s0)
 cd4:	c64a01d4 	lwc1	$f10,468(s2)
 cd8:	46128100 	add.s	$f4,$f16,$f18
 cdc:	00003825 	move	a3,zero
 ce0:	460a4380 	add.s	$f14,$f8,$f10
 ce4:	44062000 	mfc1	a2,$f4
 ce8:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 cec:	00000000 	nop
 cf0:	866e001a 	lh	t6,26(s3)
 cf4:	24050001 	li	a1,1
 cf8:	448e3000 	mtc1	t6,$f6
 cfc:	00000000 	nop
 d00:	46803220 	cvt.s.w	$f8,$f6
 d04:	46184302 	mul.s	$f12,$f8,$f24
 d08:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 d0c:	00000000 	nop
 d10:	866f0018 	lh	t7,24(s3)
 d14:	24050001 	li	a1,1
 d18:	448f5000 	mtc1	t7,$f10
 d1c:	00000000 	nop
 d20:	46805420 	cvt.s.w	$f16,$f10
 d24:	46188302 	mul.s	$f12,$f16,$f24
 d28:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 d2c:	00000000 	nop
 d30:	4406a000 	mfc1	a2,$f20
 d34:	4600a306 	mov.s	$f12,$f20
 d38:	4600a386 	mov.s	$f14,$f20
 d3c:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 d40:	24070001 	li	a3,1
 d44:	c6120000 	lwc1	$f18,0(s0)
 d48:	c6040004 	lwc1	$f4,4(s0)
 d4c:	c6060008 	lwc1	$f6,8(s0)
 d50:	46169302 	mul.s	$f12,$f18,$f22
 d54:	24070001 	li	a3,1
 d58:	46162382 	mul.s	$f14,$f4,$f22
 d5c:	00000000 	nop
 d60:	46163202 	mul.s	$f8,$f6,$f22
 d64:	44064000 	mfc1	a2,$f8
 d68:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 d6c:	00000000 	nop
 d70:	8ea202c0 	lw	v0,704(s5)
 d74:	03c02825 	move	a1,s8
 d78:	2406030a 	li	a2,778
 d7c:	24580008 	addiu	t8,v0,8
 d80:	aeb802c0 	sw	t8,704(s5)
 d84:	ac570000 	sw	s7,0(v0)
 d88:	8ec40000 	lw	a0,0(s6)
 d8c:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 d90:	00408825 	move	s1,v0
 d94:	ae220004 	sw	v0,4(s1)
 d98:	8ea202c0 	lw	v0,704(s5)
 d9c:	3c08de00 	lui	t0,0xde00
 da0:	3c0a0000 	lui	t2,0x0
 da4:	24590008 	addiu	t9,v0,8
 da8:	aeb902c0 	sw	t9,704(s5)
 dac:	ac480000 	sw	t0,0(v0)
 db0:	8e890000 	lw	t1,0(s4)
 db4:	254a0248 	addiu	t2,t2,584
 db8:	26940004 	addiu	s4,s4,4
 dbc:	2652001c 	addiu	s2,s2,28
 dc0:	2673001c 	addiu	s3,s3,28
 dc4:	26100018 	addiu	s0,s0,24
 dc8:	168affbc 	bne	s4,t2,cbc <BgJyaMegami_DrawExplode+0xa4>
 dcc:	ac490004 	sw	t1,4(v0)
 dd0:	3c060000 	lui	a2,0x0
 dd4:	24c60078 	addiu	a2,a2,120
 dd8:	27a40078 	addiu	a0,sp,120
 ddc:	8ec50000 	lw	a1,0(s6)
 de0:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 de4:	2407030f 	li	a3,783
 de8:	8fbf0054 	lw	ra,84(sp)
 dec:	d7b40018 	ldc1	$f20,24(sp)
 df0:	d7b60020 	ldc1	$f22,32(sp)
 df4:	d7b80028 	ldc1	$f24,40(sp)
 df8:	8fb00030 	lw	s0,48(sp)
 dfc:	8fb10034 	lw	s1,52(sp)
 e00:	8fb20038 	lw	s2,56(sp)
 e04:	8fb3003c 	lw	s3,60(sp)
 e08:	8fb40040 	lw	s4,64(sp)
 e0c:	8fb50044 	lw	s5,68(sp)
 e10:	8fb60048 	lw	s6,72(sp)
 e14:	8fb7004c 	lw	s7,76(sp)
 e18:	8fbe0050 	lw	s8,80(sp)
 e1c:	03e00008 	jr	ra
 e20:	27bd0098 	addiu	sp,sp,152

00000e24 <BgJyaMegami_Draw>:
 e24:	27bdffe8 	addiu	sp,sp,-24
 e28:	00803025 	move	a2,a0
 e2c:	afbf0014 	sw	ra,20(sp)
 e30:	afa5001c 	sw	a1,28(sp)
 e34:	24c50168 	addiu	a1,a2,360
 e38:	afa60018 	sw	a2,24(sp)
 e3c:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 e40:	00002025 	move	a0,zero
 e44:	8fa60018 	lw	a2,24(sp)
 e48:	3c0e0000 	lui	t6,0x0
 e4c:	25ce0000 	addiu	t6,t6,0
 e50:	8ccf0164 	lw	t7,356(a2)
 e54:	8fa5001c 	lw	a1,28(sp)
 e58:	15cf0005 	bne	t6,t7,e70 <BgJyaMegami_Draw+0x4c>
 e5c:	00000000 	nop
 e60:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 e64:	00c02025 	move	a0,a2
 e68:	10000004 	b	e7c <BgJyaMegami_Draw+0x58>
 e6c:	8fbf0014 	lw	ra,20(sp)
 e70:	0c000000 	jal	0 <BgJyaMegami_InitDynaPoly>
 e74:	00c02025 	move	a0,a2
 e78:	8fbf0014 	lw	ra,20(sp)
 e7c:	27bd0018 	addiu	sp,sp,24
 e80:	03e00008 	jr	ra
 e84:	00000000 	nop
	...
