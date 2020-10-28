
build/src/overlays/actors/ovl_Bg_Dodoago/z_bg_dodoago.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgDodoago_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac85024c 	sw	a1,588(a0)

00000008 <BgDodoago_SpawnSparkles>:
   8:	27bdff98 	addiu	sp,sp,-104
   c:	3c0e0000 	lui	t6,0x0
  10:	afbf004c 	sw	ra,76(sp)
  14:	afb70048 	sw	s7,72(sp)
  18:	afb60044 	sw	s6,68(sp)
  1c:	afb50040 	sw	s5,64(sp)
  20:	afb4003c 	sw	s4,60(sp)
  24:	afb30038 	sw	s3,56(sp)
  28:	afb20034 	sw	s2,52(sp)
  2c:	afb10030 	sw	s1,48(sp)
  30:	afb0002c 	sw	s0,44(sp)
  34:	f7b60020 	sdc1	$f22,32(sp)
  38:	f7b40018 	sdc1	$f20,24(sp)
  3c:	25ce007c 	addiu	t6,t6,124
  40:	8dd80000 	lw	t8,0(t6)
  44:	27b60058 	addiu	s6,sp,88
  48:	3c190000 	lui	t9,0x0
  4c:	27390080 	addiu	t9,t9,128
  50:	3c014120 	lui	at,0x4120
  54:	aed80000 	sw	t8,0(s6)
  58:	8f290000 	lw	t1,0(t9)
  5c:	4481b000 	mtc1	at,$f22
  60:	3c0141a0 	lui	at,0x41a0
  64:	27b70054 	addiu	s7,sp,84
  68:	3c130000 	lui	s3,0x0
  6c:	3c140000 	lui	s4,0x0
  70:	4481a000 	mtc1	at,$f20
  74:	00808825 	move	s1,a0
  78:	00a0a825 	move	s5,a1
  7c:	26940090 	addiu	s4,s4,144
  80:	26730084 	addiu	s3,s3,132
  84:	24100004 	li	s0,4
  88:	27b2005c 	addiu	s2,sp,92
  8c:	aee90000 	sw	t1,0(s7)
  90:	0c000000 	jal	0 <BgDodoago_SetupAction>
  94:	4600a306 	mov.s	$f12,$f20
  98:	c6240000 	lwc1	$f4,0(s1)
  9c:	4600b306 	mov.s	$f12,$f22
  a0:	46040180 	add.s	$f6,$f0,$f4
  a4:	0c000000 	jal	0 <BgDodoago_SetupAction>
  a8:	e7a6005c 	swc1	$f6,92(sp)
  ac:	c6280004 	lwc1	$f8,4(s1)
  b0:	4600a306 	mov.s	$f12,$f20
  b4:	46080280 	add.s	$f10,$f0,$f8
  b8:	0c000000 	jal	0 <BgDodoago_SetupAction>
  bc:	e7aa0060 	swc1	$f10,96(sp)
  c0:	c6300008 	lwc1	$f16,8(s1)
  c4:	afb70014 	sw	s7,20(sp)
  c8:	afb60010 	sw	s6,16(sp)
  cc:	46100480 	add.s	$f18,$f0,$f16
  d0:	02a02025 	move	a0,s5
  d4:	02402825 	move	a1,s2
  d8:	02603025 	move	a2,s3
  dc:	e7b20064 	swc1	$f18,100(sp)
  e0:	0c000000 	jal	0 <BgDodoago_SetupAction>
  e4:	02803825 	move	a3,s4
  e8:	2610ffff 	addiu	s0,s0,-1
  ec:	1600ffe8 	bnez	s0,90 <BgDodoago_SpawnSparkles+0x88>
  f0:	00000000 	nop
  f4:	8fbf004c 	lw	ra,76(sp)
  f8:	d7b40018 	ldc1	$f20,24(sp)
  fc:	d7b60020 	ldc1	$f22,32(sp)
 100:	8fb0002c 	lw	s0,44(sp)
 104:	8fb10030 	lw	s1,48(sp)
 108:	8fb20034 	lw	s2,52(sp)
 10c:	8fb30038 	lw	s3,56(sp)
 110:	8fb4003c 	lw	s4,60(sp)
 114:	8fb50040 	lw	s5,64(sp)
 118:	8fb60044 	lw	s6,68(sp)
 11c:	8fb70048 	lw	s7,72(sp)
 120:	03e00008 	jr	ra
 124:	27bd0068 	addiu	sp,sp,104

00000128 <BgDodoago_Init>:
 128:	27bdffc8 	addiu	sp,sp,-56
 12c:	afb10018 	sw	s1,24(sp)
 130:	00a08825 	move	s1,a1
 134:	afbf001c 	sw	ra,28(sp)
 138:	afb00014 	sw	s0,20(sp)
 13c:	3c050000 	lui	a1,0x0
 140:	00808025 	move	s0,a0
 144:	afa0002c 	sw	zero,44(sp)
 148:	0c000000 	jal	0 <BgDodoago_SetupAction>
 14c:	24a5009c 	addiu	a1,a1,156
 150:	02002025 	move	a0,s0
 154:	0c000000 	jal	0 <BgDodoago_SetupAction>
 158:	00002825 	move	a1,zero
 15c:	3c040000 	lui	a0,0x0
 160:	24840000 	addiu	a0,a0,0
 164:	0c000000 	jal	0 <BgDodoago_SetupAction>
 168:	27a5002c 	addiu	a1,sp,44
 16c:	02202025 	move	a0,s1
 170:	26250810 	addiu	a1,s1,2064
 174:	02003025 	move	a2,s0
 178:	0c000000 	jal	0 <BgDodoago_SetupAction>
 17c:	8fa7002c 	lw	a3,44(sp)
 180:	44800000 	mtc1	zero,$f0
 184:	ae02014c 	sw	v0,332(s0)
 188:	260400b4 	addiu	a0,s0,180
 18c:	44050000 	mfc1	a1,$f0
 190:	44070000 	mfc1	a3,$f0
 194:	0c000000 	jal	0 <BgDodoago_SetupAction>
 198:	00003025 	move	a2,zero
 19c:	8605001c 	lh	a1,28(s0)
 1a0:	02202025 	move	a0,s1
 1a4:	0c000000 	jal	0 <BgDodoago_SetupAction>
 1a8:	30a5003f 	andi	a1,a1,0x3f
 1ac:	1040000e 	beqz	v0,1e8 <BgDodoago_Init+0xc0>
 1b0:	02202025 	move	a0,s1
 1b4:	3c050000 	lui	a1,0x0
 1b8:	24a50000 	addiu	a1,a1,0
 1bc:	0c000000 	jal	0 <BgDodoago_SetupAction>
 1c0:	02002025 	move	a0,s0
 1c4:	240e1333 	li	t6,4915
 1c8:	3c010001 	lui	at,0x1
 1cc:	a60e00b4 	sh	t6,180(s0)
 1d0:	02211021 	addu	v0,s1,at
 1d4:	240f00ff 	li	t7,255
 1d8:	a44f1d32 	sh	t7,7474(v0)
 1dc:	84581d32 	lh	t8,7474(v0)
 1e0:	10000024 	b	274 <BgDodoago_Init+0x14c>
 1e4:	a4581d30 	sh	t8,7472(v0)
 1e8:	26050168 	addiu	a1,s0,360
 1ec:	0c000000 	jal	0 <BgDodoago_SetupAction>
 1f0:	afa50020 	sw	a1,32(sp)
 1f4:	260501b4 	addiu	a1,s0,436
 1f8:	afa50024 	sw	a1,36(sp)
 1fc:	0c000000 	jal	0 <BgDodoago_SetupAction>
 200:	02202025 	move	a0,s1
 204:	26050200 	addiu	a1,s0,512
 208:	afa50028 	sw	a1,40(sp)
 20c:	0c000000 	jal	0 <BgDodoago_SetupAction>
 210:	02202025 	move	a0,s1
 214:	3c070000 	lui	a3,0x0
 218:	24e70020 	addiu	a3,a3,32
 21c:	02202025 	move	a0,s1
 220:	8fa50020 	lw	a1,32(sp)
 224:	0c000000 	jal	0 <BgDodoago_SetupAction>
 228:	02003025 	move	a2,s0
 22c:	3c070000 	lui	a3,0x0
 230:	24e7004c 	addiu	a3,a3,76
 234:	02202025 	move	a0,s1
 238:	8fa50024 	lw	a1,36(sp)
 23c:	0c000000 	jal	0 <BgDodoago_SetupAction>
 240:	02003025 	move	a2,s0
 244:	3c070000 	lui	a3,0x0
 248:	24e7004c 	addiu	a3,a3,76
 24c:	02202025 	move	a0,s1
 250:	8fa50028 	lw	a1,40(sp)
 254:	0c000000 	jal	0 <BgDodoago_SetupAction>
 258:	02003025 	move	a2,s0
 25c:	3c050000 	lui	a1,0x0
 260:	24a50000 	addiu	a1,a1,0
 264:	0c000000 	jal	0 <BgDodoago_SetupAction>
 268:	02002025 	move	a0,s0
 26c:	3c010000 	lui	at,0x0
 270:	a0200000 	sb	zero,0(at)
 274:	8fbf001c 	lw	ra,28(sp)
 278:	8fb00014 	lw	s0,20(sp)
 27c:	8fb10018 	lw	s1,24(sp)
 280:	03e00008 	jr	ra
 284:	27bd0038 	addiu	sp,sp,56

00000288 <BgDodoago_Destroy>:
 288:	27bdffe0 	addiu	sp,sp,-32
 28c:	afa40020 	sw	a0,32(sp)
 290:	8fae0020 	lw	t6,32(sp)
 294:	afb00018 	sw	s0,24(sp)
 298:	00a08025 	move	s0,a1
 29c:	afbf001c 	sw	ra,28(sp)
 2a0:	00a02025 	move	a0,a1
 2a4:	24a50810 	addiu	a1,a1,2064
 2a8:	0c000000 	jal	0 <BgDodoago_SetupAction>
 2ac:	8dc6014c 	lw	a2,332(t6)
 2b0:	8fa50020 	lw	a1,32(sp)
 2b4:	02002025 	move	a0,s0
 2b8:	0c000000 	jal	0 <BgDodoago_SetupAction>
 2bc:	24a50168 	addiu	a1,a1,360
 2c0:	8fa50020 	lw	a1,32(sp)
 2c4:	02002025 	move	a0,s0
 2c8:	0c000000 	jal	0 <BgDodoago_SetupAction>
 2cc:	24a501b4 	addiu	a1,a1,436
 2d0:	8fa50020 	lw	a1,32(sp)
 2d4:	02002025 	move	a0,s0
 2d8:	0c000000 	jal	0 <BgDodoago_SetupAction>
 2dc:	24a50200 	addiu	a1,a1,512
 2e0:	8fbf001c 	lw	ra,28(sp)
 2e4:	8fb00018 	lw	s0,24(sp)
 2e8:	27bd0020 	addiu	sp,sp,32
 2ec:	03e00008 	jr	ra
 2f0:	00000000 	nop

000002f4 <func_80871CF4>:
 2f4:	27bdffc0 	addiu	sp,sp,-64
 2f8:	afb0001c 	sw	s0,28(sp)
 2fc:	00808025 	move	s0,a0
 300:	afb10020 	sw	s1,32(sp)
 304:	00a08825 	move	s1,a1
 308:	00a02025 	move	a0,a1
 30c:	afbf0024 	sw	ra,36(sp)
 310:	26050168 	addiu	a1,s0,360
 314:	0c000000 	jal	0 <BgDodoago_SetupAction>
 318:	afa50038 	sw	a1,56(sp)
 31c:	10400074 	beqz	v0,4f0 <func_80871CF4+0x1fc>
 320:	26040024 	addiu	a0,s0,36
 324:	24450024 	addiu	a1,v0,36
 328:	0c000000 	jal	0 <BgDodoago_SetupAction>
 32c:	afa2003c 	sw	v0,60(sp)
 330:	860e00b6 	lh	t6,182(s0)
 334:	3c050001 	lui	a1,0x1
 338:	240f0001 	li	t7,1
 33c:	004e082a 	slt	at,v0,t6
 340:	14200003 	bnez	at,350 <func_80871CF4+0x5c>
 344:	02251021 	addu	v0,s1,a1
 348:	10000002 	b	354 <func_80871CF4+0x60>
 34c:	a60f0164 	sh	t7,356(s0)
 350:	a6000164 	sh	zero,356(s0)
 354:	84581d30 	lh	t8,7472(v0)
 358:	240400ff 	li	a0,255
 35c:	54980006 	bnel	a0,t8,378 <func_80871CF4+0x84>
 360:	84481d32 	lh	t0,7474(v0)
 364:	86190164 	lh	t9,356(s0)
 368:	24010001 	li	at,1
 36c:	53210008 	beql	t9,at,390 <func_80871CF4+0x9c>
 370:	8605001c 	lh	a1,28(s0)
 374:	84481d32 	lh	t0,7474(v0)
 378:	86030164 	lh	v1,356(s0)
 37c:	1488002a 	bne	a0,t0,428 <func_80871CF4+0x134>
 380:	00037040 	sll	t6,v1,0x1
 384:	54600029 	bnezl	v1,42c <func_80871CF4+0x138>
 388:	022e7821 	addu	t7,s1,t6
 38c:	8605001c 	lh	a1,28(s0)
 390:	02202025 	move	a0,s1
 394:	0c000000 	jal	0 <BgDodoago_SetupAction>
 398:	30a5003f 	andi	a1,a1,0x3f
 39c:	3c070000 	lui	a3,0x0
 3a0:	3c090000 	lui	t1,0x0
 3a4:	24e70000 	addiu	a3,a3,0
 3a8:	a6000164 	sh	zero,356(s0)
 3ac:	25290000 	addiu	t1,t1,0
 3b0:	3c050000 	lui	a1,0x0
 3b4:	24a50000 	addiu	a1,a1,0
 3b8:	afa90014 	sw	t1,20(sp)
 3bc:	afa70010 	sw	a3,16(sp)
 3c0:	24044802 	li	a0,18434
 3c4:	0c000000 	jal	0 <BgDodoago_SetupAction>
 3c8:	24060004 	li	a2,4
 3cc:	3c050000 	lui	a1,0x0
 3d0:	24a50000 	addiu	a1,a1,0
 3d4:	0c000000 	jal	0 <BgDodoago_SetupAction>
 3d8:	02002025 	move	a0,s0
 3dc:	02202025 	move	a0,s1
 3e0:	24050d34 	li	a1,3380
 3e4:	240600a0 	li	a2,160
 3e8:	02003825 	move	a3,s0
 3ec:	0c000000 	jal	0 <BgDodoago_SetupAction>
 3f0:	afa00010 	sw	zero,16(sp)
 3f4:	3c020000 	lui	v0,0x0
 3f8:	24420000 	addiu	v0,v0,0
 3fc:	844a0000 	lh	t2,0(v0)
 400:	3c030000 	lui	v1,0x0
 404:	24630000 	addiu	v1,v1,0
 408:	15400066 	bnez	t2,5a4 <func_80871CF4+0x2b0>
 40c:	8fab003c 	lw	t3,60(sp)
 410:	ae0b0118 	sw	t3,280(s0)
 414:	240c0001 	li	t4,1
 418:	240d0032 	li	t5,50
 41c:	a44c0000 	sh	t4,0(v0)
 420:	10000060 	b	5a4 <func_80871CF4+0x2b0>
 424:	ac6d0000 	sw	t5,0(v1)
 428:	022e7821 	addu	t7,s1,t6
 42c:	01e5c021 	addu	t8,t7,a1
 430:	87191d30 	lh	t9,7472(t8)
 434:	24050bf9 	li	a1,3065
 438:	02202025 	move	a0,s1
 43c:	17200018 	bnez	t9,4a0 <func_80871CF4+0x1ac>
 440:	24060014 	li	a2,20
 444:	02202025 	move	a0,s1
 448:	24050bf9 	li	a1,3065
 44c:	24060028 	li	a2,40
 450:	02003825 	move	a3,s0
 454:	0c000000 	jal	0 <BgDodoago_SetupAction>
 458:	afa00010 	sw	zero,16(sp)
 45c:	3c050000 	lui	a1,0x0
 460:	24a50000 	addiu	a1,a1,0
 464:	0c000000 	jal	0 <BgDodoago_SetupAction>
 468:	02002025 	move	a0,s0
 46c:	3c070000 	lui	a3,0x0
 470:	3c080000 	lui	t0,0x0
 474:	24e70000 	addiu	a3,a3,0
 478:	25080000 	addiu	t0,t0,0
 47c:	3c050000 	lui	a1,0x0
 480:	24a50000 	addiu	a1,a1,0
 484:	afa80014 	sw	t0,20(sp)
 488:	afa70010 	sw	a3,16(sp)
 48c:	24044802 	li	a0,18434
 490:	0c000000 	jal	0 <BgDodoago_SetupAction>
 494:	24060004 	li	a2,4
 498:	1000ffd6 	b	3f4 <func_80871CF4+0x100>
 49c:	00000000 	nop
 4a0:	02003825 	move	a3,s0
 4a4:	0c000000 	jal	0 <BgDodoago_SetupAction>
 4a8:	afa00010 	sw	zero,16(sp)
 4ac:	3c070000 	lui	a3,0x0
 4b0:	3c090000 	lui	t1,0x0
 4b4:	24e70000 	addiu	a3,a3,0
 4b8:	25290000 	addiu	t1,t1,0
 4bc:	3c050000 	lui	a1,0x0
 4c0:	24a50000 	addiu	a1,a1,0
 4c4:	afa90014 	sw	t1,20(sp)
 4c8:	afa70010 	sw	a3,16(sp)
 4cc:	24044806 	li	a0,18438
 4d0:	0c000000 	jal	0 <BgDodoago_SetupAction>
 4d4:	24060004 	li	a2,4
 4d8:	3c030000 	lui	v1,0x0
 4dc:	24630000 	addiu	v1,v1,0
 4e0:	8c6a0000 	lw	t2,0(v1)
 4e4:	254b001e 	addiu	t3,t2,30
 4e8:	1000002e 	b	5a4 <func_80871CF4+0x2b0>
 4ec:	ac6b0000 	sw	t3,0(v1)
 4f0:	0c000000 	jal	0 <BgDodoago_SetupAction>
 4f4:	240400b0 	li	a0,176
 4f8:	1040002a 	beqz	v0,5a4 <func_80871CF4+0x2b0>
 4fc:	02002025 	move	a0,s0
 500:	0c000000 	jal	0 <BgDodoago_SetupAction>
 504:	8fa50038 	lw	a1,56(sp)
 508:	260501b4 	addiu	a1,s0,436
 50c:	afa50034 	sw	a1,52(sp)
 510:	0c000000 	jal	0 <BgDodoago_SetupAction>
 514:	02002025 	move	a0,s0
 518:	26050200 	addiu	a1,s0,512
 51c:	afa50030 	sw	a1,48(sp)
 520:	0c000000 	jal	0 <BgDodoago_SetupAction>
 524:	02002025 	move	a0,s0
 528:	860c01b2 	lh	t4,434(s0)
 52c:	860e01fe 	lh	t6,510(s0)
 530:	861801fa 	lh	t8,506(s0)
 534:	8608024a 	lh	t0,586(s0)
 538:	860a0246 	lh	t2,582(s0)
 53c:	3c010001 	lui	at,0x1
 540:	34211e60 	ori	at,at,0x1e60
 544:	258d00c8 	addiu	t5,t4,200
 548:	25cf00d7 	addiu	t7,t6,215
 54c:	2719005a 	addiu	t9,t8,90
 550:	250900d7 	addiu	t1,t0,215
 554:	254bffa6 	addiu	t3,t2,-90
 558:	a60d01b2 	sh	t5,434(s0)
 55c:	a60f01fe 	sh	t7,510(s0)
 560:	a61901fa 	sh	t9,506(s0)
 564:	a609024a 	sh	t1,586(s0)
 568:	a60b0246 	sh	t3,582(s0)
 56c:	02212821 	addu	a1,s1,at
 570:	afa5002c 	sw	a1,44(sp)
 574:	8fa60038 	lw	a2,56(sp)
 578:	0c000000 	jal	0 <BgDodoago_SetupAction>
 57c:	02202025 	move	a0,s1
 580:	8fb0002c 	lw	s0,44(sp)
 584:	02202025 	move	a0,s1
 588:	8fa60034 	lw	a2,52(sp)
 58c:	0c000000 	jal	0 <BgDodoago_SetupAction>
 590:	02002825 	move	a1,s0
 594:	02202025 	move	a0,s1
 598:	02002825 	move	a1,s0
 59c:	0c000000 	jal	0 <BgDodoago_SetupAction>
 5a0:	8fa60030 	lw	a2,48(sp)
 5a4:	8fbf0024 	lw	ra,36(sp)
 5a8:	8fb0001c 	lw	s0,28(sp)
 5ac:	8fb10020 	lw	s1,32(sp)
 5b0:	03e00008 	jr	ra
 5b4:	27bd0040 	addiu	sp,sp,64

000005b8 <func_80871FB8>:
 5b8:	27bdff18 	addiu	sp,sp,-232
 5bc:	3c0f0000 	lui	t7,0x0
 5c0:	afb40040 	sw	s4,64(sp)
 5c4:	afb10034 	sw	s1,52(sp)
 5c8:	25ef00ac 	addiu	t7,t7,172
 5cc:	00808825 	move	s1,a0
 5d0:	00a0a025 	move	s4,a1
 5d4:	afbf0044 	sw	ra,68(sp)
 5d8:	afb3003c 	sw	s3,60(sp)
 5dc:	afb20038 	sw	s2,56(sp)
 5e0:	afb00030 	sw	s0,48(sp)
 5e4:	f7b40028 	sdc1	$f20,40(sp)
 5e8:	25e80084 	addiu	t0,t7,132
 5ec:	27ae0058 	addiu	t6,sp,88
 5f0:	8df90000 	lw	t9,0(t7)
 5f4:	25ef000c 	addiu	t7,t7,12
 5f8:	25ce000c 	addiu	t6,t6,12
 5fc:	add9fff4 	sw	t9,-12(t6)
 600:	8df8fff8 	lw	t8,-8(t7)
 604:	add8fff8 	sw	t8,-8(t6)
 608:	8df9fffc 	lw	t9,-4(t7)
 60c:	15e8fff8 	bne	t7,t0,5f0 <func_80871FB8+0x38>
 610:	add9fffc 	sw	t9,-4(t6)
 614:	3c010001 	lui	at,0x1
 618:	02811021 	addu	v0,s4,at
 61c:	84431d30 	lh	v1,7472(v0)
 620:	286100ff 	slti	at,v1,255
 624:	10200002 	beqz	at,630 <func_80871FB8+0x78>
 628:	24690005 	addiu	t1,v1,5
 62c:	a4491d30 	sh	t1,7472(v0)
 630:	84431d32 	lh	v1,7474(v0)
 634:	286100ff 	slti	at,v1,255
 638:	10200002 	beqz	at,644 <func_80871FB8+0x8c>
 63c:	246a0005 	addiu	t2,v1,5
 640:	a44a1d32 	sh	t2,7474(v0)
 644:	844b1d30 	lh	t3,7472(v0)
 648:	240300ff 	li	v1,255
 64c:	146b0006 	bne	v1,t3,668 <func_80871FB8+0xb0>
 650:	00000000 	nop
 654:	844c1d32 	lh	t4,7474(v0)
 658:	3c020000 	lui	v0,0x0
 65c:	24420000 	addiu	v0,v0,0
 660:	506c0008 	beql	v1,t4,684 <func_80871FB8+0xcc>
 664:	8c4f0000 	lw	t7,0(v0)
 668:	3c020000 	lui	v0,0x0
 66c:	24420000 	addiu	v0,v0,0
 670:	8c4d0000 	lw	t5,0(v0)
 674:	25a8ffff 	addiu	t0,t5,-1
 678:	10000077 	b	858 <func_80871FB8+0x2a0>
 67c:	ac480000 	sw	t0,0(v0)
 680:	8c4f0000 	lw	t7,0(v0)
 684:	2401006c 	li	at,108
 688:	27b000d0 	addiu	s0,sp,208
 68c:	15e1001f 	bne	t7,at,70c <func_80871FB8+0x154>
 690:	27b30058 	addiu	s3,sp,88
 694:	3c014000 	lui	at,0x4000
 698:	4481a000 	mtc1	at,$f20
 69c:	27b200dc 	addiu	s2,sp,220
 6a0:	c6040000 	lwc1	$f4,0(s0)
 6a4:	c6260024 	lwc1	$f6,36(s1)
 6a8:	4406a000 	mfc1	a2,$f20
 6ac:	240e00c8 	li	t6,200
 6b0:	46062200 	add.s	$f8,$f4,$f6
 6b4:	2418004b 	li	t8,75
 6b8:	24190001 	li	t9,1
 6bc:	02802025 	move	a0,s4
 6c0:	e7a800dc 	swc1	$f8,220(sp)
 6c4:	c6300028 	lwc1	$f16,40(s1)
 6c8:	c60a0004 	lwc1	$f10,4(s0)
 6cc:	02402825 	move	a1,s2
 6d0:	24070003 	li	a3,3
 6d4:	46105480 	add.s	$f18,$f10,$f16
 6d8:	e7b200e0 	swc1	$f18,224(sp)
 6dc:	c626002c 	lwc1	$f6,44(s1)
 6e0:	c6040008 	lwc1	$f4,8(s0)
 6e4:	afb90018 	sw	t9,24(sp)
 6e8:	afb80014 	sw	t8,20(sp)
 6ec:	46062200 	add.s	$f8,$f4,$f6
 6f0:	afae0010 	sw	t6,16(sp)
 6f4:	0c000000 	jal	0 <BgDodoago_SetupAction>
 6f8:	e7a800e4 	swc1	$f8,228(sp)
 6fc:	2610fff4 	addiu	s0,s0,-12
 700:	0213082b 	sltu	at,s0,s3
 704:	5020ffe7 	beqzl	at,6a4 <func_80871FB8+0xec>
 708:	c6040000 	lwc1	$f4,0(s0)
 70c:	3c014348 	lui	at,0x4348
 710:	4481a000 	mtc1	at,$f20
 714:	c62a0024 	lwc1	$f10,36(s1)
 718:	3c0141a0 	lui	at,0x41a0
 71c:	44812000 	mtc1	at,$f4
 720:	46145400 	add.s	$f16,$f10,$f20
 724:	3c0142c8 	lui	at,0x42c8
 728:	44815000 	mtc1	at,$f10
 72c:	27b200dc 	addiu	s2,sp,220
 730:	e7b000dc 	swc1	$f16,220(sp)
 734:	c6320028 	lwc1	$f18,40(s1)
 738:	02402025 	move	a0,s2
 73c:	02802825 	move	a1,s4
 740:	46049181 	sub.s	$f6,$f18,$f4
 744:	e7a600e0 	swc1	$f6,224(sp)
 748:	c628002c 	lwc1	$f8,44(s1)
 74c:	460a4400 	add.s	$f16,$f8,$f10
 750:	0c000000 	jal	0 <BgDodoago_SetupAction>
 754:	e7b000e4 	swc1	$f16,228(sp)
 758:	c6320024 	lwc1	$f18,36(s1)
 75c:	3c0141a0 	lui	at,0x41a0
 760:	44814000 	mtc1	at,$f8
 764:	46149101 	sub.s	$f4,$f18,$f20
 768:	3c0142c8 	lui	at,0x42c8
 76c:	44819000 	mtc1	at,$f18
 770:	02402025 	move	a0,s2
 774:	e7a400dc 	swc1	$f4,220(sp)
 778:	c6260028 	lwc1	$f6,40(s1)
 77c:	02802825 	move	a1,s4
 780:	46083281 	sub.s	$f10,$f6,$f8
 784:	e7aa00e0 	swc1	$f10,224(sp)
 788:	c630002c 	lwc1	$f16,44(s1)
 78c:	46128100 	add.s	$f4,$f16,$f18
 790:	0c000000 	jal	0 <BgDodoago_SetupAction>
 794:	e7a400e4 	swc1	$f4,228(sp)
 798:	26240164 	addiu	a0,s1,356
 79c:	24050064 	li	a1,100
 7a0:	0c000000 	jal	0 <BgDodoago_SetupAction>
 7a4:	24060003 	li	a2,3
 7a8:	3c0143fa 	lui	at,0x43fa
 7ac:	44816000 	mtc1	at,$f12
 7b0:	24050078 	li	a1,120
 7b4:	24060014 	li	a2,20
 7b8:	0c000000 	jal	0 <BgDodoago_SetupAction>
 7bc:	2407000a 	li	a3,10
 7c0:	86290164 	lh	t1,356(s1)
 7c4:	240a006e 	li	t2,110
 7c8:	240b0032 	li	t3,50
 7cc:	01493023 	subu	a2,t2,t1
 7d0:	00063400 	sll	a2,a2,0x10
 7d4:	00063403 	sra	a2,a2,0x10
 7d8:	afab0010 	sw	t3,16(sp)
 7dc:	262400b4 	addiu	a0,s1,180
 7e0:	24051333 	li	a1,4915
 7e4:	0c000000 	jal	0 <BgDodoago_SetupAction>
 7e8:	240703e8 	li	a3,1000
 7ec:	14400011 	bnez	v0,834 <func_80871FB8+0x27c>
 7f0:	3c070000 	lui	a3,0x0
 7f4:	3c050000 	lui	a1,0x0
 7f8:	24a50000 	addiu	a1,a1,0
 7fc:	0c000000 	jal	0 <BgDodoago_SetupAction>
 800:	02202025 	move	a0,s1
 804:	3c070000 	lui	a3,0x0
 808:	3c0c0000 	lui	t4,0x0
 80c:	24e70000 	addiu	a3,a3,0
 810:	258c0000 	addiu	t4,t4,0
 814:	afac0014 	sw	t4,20(sp)
 818:	afa70010 	sw	a3,16(sp)
 81c:	2404281d 	li	a0,10269
 820:	262500e4 	addiu	a1,s1,228
 824:	0c000000 	jal	0 <BgDodoago_SetupAction>
 828:	24060004 	li	a2,4
 82c:	1000000b 	b	85c <func_80871FB8+0x2a4>
 830:	8fbf0044 	lw	ra,68(sp)
 834:	3c0d0000 	lui	t5,0x0
 838:	24e70000 	addiu	a3,a3,0
 83c:	25ad0000 	addiu	t5,t5,0
 840:	afad0014 	sw	t5,20(sp)
 844:	afa70010 	sw	a3,16(sp)
 848:	2404201e 	li	a0,8222
 84c:	262500e4 	addiu	a1,s1,228
 850:	0c000000 	jal	0 <BgDodoago_SetupAction>
 854:	24060004 	li	a2,4
 858:	8fbf0044 	lw	ra,68(sp)
 85c:	d7b40028 	ldc1	$f20,40(sp)
 860:	8fb00030 	lw	s0,48(sp)
 864:	8fb10034 	lw	s1,52(sp)
 868:	8fb20038 	lw	s2,56(sp)
 86c:	8fb3003c 	lw	s3,60(sp)
 870:	8fb40040 	lw	s4,64(sp)
 874:	03e00008 	jr	ra
 878:	27bd00e8 	addiu	sp,sp,232

0000087c <func_8087227C>:
 87c:	afa40000 	sw	a0,0(sp)
 880:	03e00008 	jr	ra
 884:	afa50004 	sw	a1,4(sp)

00000888 <func_80872288>:
 888:	27bdffe8 	addiu	sp,sp,-24
 88c:	afbf0014 	sw	ra,20(sp)
 890:	848e0164 	lh	t6,356(a0)
 894:	3c030001 	lui	v1,0x1
 898:	240100ff 	li	at,255
 89c:	000e7840 	sll	t7,t6,0x1
 8a0:	00afc021 	addu	t8,a1,t7
 8a4:	03031021 	addu	v0,t8,v1
 8a8:	84591d30 	lh	t9,7472(v0)
 8ac:	27280005 	addiu	t0,t9,5
 8b0:	a4481d30 	sh	t0,7472(v0)
 8b4:	84890164 	lh	t1,356(a0)
 8b8:	00095040 	sll	t2,t1,0x1
 8bc:	00aa5821 	addu	t3,a1,t2
 8c0:	01636021 	addu	t4,t3,v1
 8c4:	858d1d30 	lh	t5,7472(t4)
 8c8:	3c050000 	lui	a1,0x0
 8cc:	55a10004 	bnel	t5,at,8e0 <func_80872288+0x58>
 8d0:	8fbf0014 	lw	ra,20(sp)
 8d4:	0c000000 	jal	0 <BgDodoago_SetupAction>
 8d8:	24a50000 	addiu	a1,a1,0
 8dc:	8fbf0014 	lw	ra,20(sp)
 8e0:	27bd0018 	addiu	sp,sp,24
 8e4:	03e00008 	jr	ra
 8e8:	00000000 	nop

000008ec <BgDodoago_Update>:
 8ec:	27bdffe8 	addiu	sp,sp,-24
 8f0:	afbf0014 	sw	ra,20(sp)
 8f4:	afa5001c 	sw	a1,28(sp)
 8f8:	8c8e0118 	lw	t6,280(a0)
 8fc:	3c020000 	lui	v0,0x0
 900:	00803025 	move	a2,a0
 904:	15c00024 	bnez	t6,998 <BgDodoago_Update+0xac>
 908:	24420000 	addiu	v0,v0,0
 90c:	908301c6 	lbu	v1,454(a0)
 910:	30620002 	andi	v0,v1,0x2
 914:	14400005 	bnez	v0,92c <BgDodoago_Update+0x40>
 918:	3079fffd 	andi	t9,v1,0xfffd
 91c:	908f0212 	lbu	t7,530(a0)
 920:	31f80002 	andi	t8,t7,0x2
 924:	5300003e 	beqzl	t8,a20 <BgDodoago_Update+0x134>
 928:	8cd9024c 	lw	t9,588(a2)
 92c:	10400003 	beqz	v0,93c <BgDodoago_Update+0x50>
 930:	90c40212 	lbu	a0,530(a2)
 934:	10000002 	b	940 <BgDodoago_Update+0x54>
 938:	8cc201c0 	lw	v0,448(a2)
 93c:	8cc2020c 	lw	v0,524(a2)
 940:	3088fffd 	andi	t0,a0,0xfffd
 944:	a0d901c6 	sb	t9,454(a2)
 948:	a0c80212 	sb	t0,530(a2)
 94c:	90490002 	lbu	t1,2(v0)
 950:	24010003 	li	at,3
 954:	55210032 	bnel	t1,at,a20 <BgDodoago_Update+0x134>
 958:	8cd9024c 	lw	t9,588(a2)
 95c:	844a0000 	lh	t2,0(v0)
 960:	24010010 	li	at,16
 964:	5541002e 	bnel	t2,at,a20 <BgDodoago_Update+0x134>
 968:	8cd9024c 	lw	t9,588(a2)
 96c:	844b001c 	lh	t3,28(v0)
 970:	240c0032 	li	t4,50
 974:	3c010000 	lui	at,0x0
 978:	55600029 	bnezl	t3,a20 <BgDodoago_Update+0x134>
 97c:	8cd9024c 	lw	t9,588(a2)
 980:	44802000 	mtc1	zero,$f4
 984:	acc20118 	sw	v0,280(a2)
 988:	a44c01f8 	sh	t4,504(v0)
 98c:	e4440068 	swc1	$f4,104(v0)
 990:	10000022 	b	a1c <BgDodoago_Update+0x130>
 994:	ac200000 	sw	zero,0(at)
 998:	8c4d0000 	lw	t5,0(v0)
 99c:	8fa4001c 	lw	a0,28(sp)
 9a0:	25ae0001 	addiu	t6,t5,1
 9a4:	ac4e0000 	sw	t6,0(v0)
 9a8:	84c5001c 	lh	a1,28(a2)
 9ac:	afa60018 	sw	a2,24(sp)
 9b0:	0c000000 	jal	0 <BgDodoago_SetupAction>
 9b4:	30a5003f 	andi	a1,a1,0x3f
 9b8:	3c030000 	lui	v1,0x0
 9bc:	24630000 	addiu	v1,v1,0
 9c0:	906f0000 	lbu	t7,0(v1)
 9c4:	8fa60018 	lw	a2,24(sp)
 9c8:	3c180000 	lui	t8,0x0
 9cc:	55e00014 	bnezl	t7,a20 <BgDodoago_Update+0x134>
 9d0:	8cd9024c 	lw	t9,588(a2)
 9d4:	8f180000 	lw	t8,0(t8)
 9d8:	8fa4001c 	lw	a0,28(sp)
 9dc:	2b01008d 	slti	at,t8,141
 9e0:	5420000f 	bnezl	at,a20 <BgDodoago_Update+0x134>
 9e4:	8cd9024c 	lw	t9,588(a2)
 9e8:	84c5001c 	lh	a1,28(a2)
 9ec:	afa60018 	sw	a2,24(sp)
 9f0:	0c000000 	jal	0 <BgDodoago_SetupAction>
 9f4:	30a5003f 	andi	a1,a1,0x3f
 9f8:	3c030000 	lui	v1,0x0
 9fc:	24630000 	addiu	v1,v1,0
 a00:	10400005 	beqz	v0,a18 <BgDodoago_Update+0x12c>
 a04:	8fa60018 	lw	a2,24(sp)
 a08:	90790000 	lbu	t9,0(v1)
 a0c:	27280001 	addiu	t0,t9,1
 a10:	10000002 	b	a1c <BgDodoago_Update+0x130>
 a14:	a0680000 	sb	t0,0(v1)
 a18:	acc00118 	sw	zero,280(a2)
 a1c:	8cd9024c 	lw	t9,588(a2)
 a20:	00c02025 	move	a0,a2
 a24:	8fa5001c 	lw	a1,28(sp)
 a28:	0320f809 	jalr	t9
 a2c:	00000000 	nop
 a30:	8fbf0014 	lw	ra,20(sp)
 a34:	27bd0018 	addiu	sp,sp,24
 a38:	03e00008 	jr	ra
 a3c:	00000000 	nop

00000a40 <BgDodoago_Draw>:
 a40:	27bdffc0 	addiu	sp,sp,-64
 a44:	afbf001c 	sw	ra,28(sp)
 a48:	afb00018 	sw	s0,24(sp)
 a4c:	afa40040 	sw	a0,64(sp)
 a50:	afa50044 	sw	a1,68(sp)
 a54:	8ca50000 	lw	a1,0(a1)
 a58:	3c060000 	lui	a2,0x0
 a5c:	24c60000 	addiu	a2,a2,0
 a60:	27a4002c 	addiu	a0,sp,44
 a64:	240702a0 	li	a3,672
 a68:	0c000000 	jal	0 <BgDodoago_SetupAction>
 a6c:	00a08025 	move	s0,a1
 a70:	0c000000 	jal	0 <BgDodoago_SetupAction>
 a74:	240400b0 	li	a0,176
 a78:	1040001a 	beqz	v0,ae4 <BgDodoago_Draw+0xa4>
 a7c:	8faf0044 	lw	t7,68(sp)
 a80:	0c000000 	jal	0 <BgDodoago_SetupAction>
 a84:	8de40000 	lw	a0,0(t7)
 a88:	8e0202c0 	lw	v0,704(s0)
 a8c:	3c19da38 	lui	t9,0xda38
 a90:	37390003 	ori	t9,t9,0x3
 a94:	24580008 	addiu	t8,v0,8
 a98:	ae1802c0 	sw	t8,704(s0)
 a9c:	ac590000 	sw	t9,0(v0)
 aa0:	8fa80044 	lw	t0,68(sp)
 aa4:	3c050000 	lui	a1,0x0
 aa8:	24a50014 	addiu	a1,a1,20
 aac:	8d040000 	lw	a0,0(t0)
 ab0:	240602a5 	li	a2,677
 ab4:	0c000000 	jal	0 <BgDodoago_SetupAction>
 ab8:	afa20028 	sw	v0,40(sp)
 abc:	8fa30028 	lw	v1,40(sp)
 ac0:	3c0b0000 	lui	t3,0x0
 ac4:	256b0000 	addiu	t3,t3,0
 ac8:	ac620004 	sw	v0,4(v1)
 acc:	8e0202c0 	lw	v0,704(s0)
 ad0:	3c0ade00 	lui	t2,0xde00
 ad4:	24490008 	addiu	t1,v0,8
 ad8:	ae0902c0 	sw	t1,704(s0)
 adc:	ac4b0004 	sw	t3,4(v0)
 ae0:	ac4a0000 	sw	t2,0(v0)
 ae4:	8fac0044 	lw	t4,68(sp)
 ae8:	3c060000 	lui	a2,0x0
 aec:	24c60028 	addiu	a2,a2,40
 af0:	27a4002c 	addiu	a0,sp,44
 af4:	240702a9 	li	a3,681
 af8:	0c000000 	jal	0 <BgDodoago_SetupAction>
 afc:	8d850000 	lw	a1,0(t4)
 b00:	8fbf001c 	lw	ra,28(sp)
 b04:	8fb00018 	lw	s0,24(sp)
 b08:	27bd0040 	addiu	sp,sp,64
 b0c:	03e00008 	jr	ra
 b10:	00000000 	nop
	...
