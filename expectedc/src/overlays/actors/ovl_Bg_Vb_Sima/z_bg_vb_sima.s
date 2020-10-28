
build/src/overlays/actors/ovl_Bg_Vb_Sima/z_bg_vb_sima.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgVbSima_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afa5002c 	sw	a1,44(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c050000 	lui	a1,0x0
  10:	afa40028 	sw	a0,40(sp)
  14:	afa0001c 	sw	zero,28(sp)
  18:	0c000000 	jal	0 <BgVbSima_Init>
  1c:	24a50000 	addiu	a1,a1,0
  20:	8fa40028 	lw	a0,40(sp)
  24:	0c000000 	jal	0 <BgVbSima_Init>
  28:	24050001 	li	a1,1
  2c:	3c040600 	lui	a0,0x600
  30:	24840d68 	addiu	a0,a0,3432
  34:	0c000000 	jal	0 <BgVbSima_Init>
  38:	27a5001c 	addiu	a1,sp,28
  3c:	8fa4002c 	lw	a0,44(sp)
  40:	8fa60028 	lw	a2,40(sp)
  44:	8fa7001c 	lw	a3,28(sp)
  48:	0c000000 	jal	0 <BgVbSima_Init>
  4c:	24850810 	addiu	a1,a0,2064
  50:	8fae0028 	lw	t6,40(sp)
  54:	adc2014c 	sw	v0,332(t6)
  58:	8fbf0014 	lw	ra,20(sp)
  5c:	27bd0028 	addiu	sp,sp,40
  60:	03e00008 	jr	ra
  64:	00000000 	nop

00000068 <BgVbSima_Destroy>:
  68:	27bdffe8 	addiu	sp,sp,-24
  6c:	afa40018 	sw	a0,24(sp)
  70:	8fae0018 	lw	t6,24(sp)
  74:	afbf0014 	sw	ra,20(sp)
  78:	00a02025 	move	a0,a1
  7c:	24a50810 	addiu	a1,a1,2064
  80:	0c000000 	jal	0 <BgVbSima_Init>
  84:	8dc6014c 	lw	a2,332(t6)
  88:	8fbf0014 	lw	ra,20(sp)
  8c:	27bd0018 	addiu	sp,sp,24
  90:	03e00008 	jr	ra
  94:	00000000 	nop

00000098 <func_808BDDF8>:
  98:	27bdffe8 	addiu	sp,sp,-24
  9c:	afbf0014 	sw	ra,20(sp)
  a0:	00001025 	move	v0,zero
  a4:	908e0024 	lbu	t6,36(a0)
  a8:	24420001 	addiu	v0,v0,1
  ac:	00021400 	sll	v0,v0,0x10
  b0:	15c00025 	bnez	t6,148 <func_808BDDF8+0xb0>
  b4:	00021403 	sra	v0,v0,0x10
  b8:	240f0001 	li	t7,1
  bc:	a08f0024 	sb	t7,36(a0)
  c0:	8cb90000 	lw	t9,0(a1)
  c4:	3c01447a 	lui	at,0x447a
  c8:	44813000 	mtc1	at,$f6
  cc:	ac990000 	sw	t9,0(a0)
  d0:	8cb80004 	lw	t8,4(a1)
  d4:	240c00ff 	li	t4,255
  d8:	3c014120 	lui	at,0x4120
  dc:	ac980004 	sw	t8,4(a0)
  e0:	8cb90008 	lw	t9,8(a1)
  e4:	44816000 	mtc1	at,$f12
  e8:	ac990008 	sw	t9,8(a0)
  ec:	8cc90000 	lw	t1,0(a2)
  f0:	ac89000c 	sw	t1,12(a0)
  f4:	8cc80004 	lw	t0,4(a2)
  f8:	ac880010 	sw	t0,16(a0)
  fc:	8cc90008 	lw	t1,8(a2)
 100:	ac890014 	sw	t1,20(a0)
 104:	8ceb0000 	lw	t3,0(a3)
 108:	ac8b0018 	sw	t3,24(a0)
 10c:	8cea0004 	lw	t2,4(a3)
 110:	ac8a001c 	sw	t2,28(a0)
 114:	8ceb0008 	lw	t3,8(a3)
 118:	ac8b0020 	sw	t3,32(a0)
 11c:	c7a40028 	lwc1	$f4,40(sp)
 120:	a48c002a 	sh	t4,42(a0)
 124:	46062203 	div.s	$f8,$f4,$f6
 128:	e4880030 	swc1	$f8,48(a0)
 12c:	0c000000 	jal	0 <BgVbSima_Init>
 130:	afa40018 	sw	a0,24(sp)
 134:	4600028d 	trunc.w.s	$f10,$f0
 138:	8fa40018 	lw	a0,24(sp)
 13c:	44185000 	mfc1	t8,$f10
 140:	10000004 	b	154 <func_808BDDF8+0xbc>
 144:	a0980025 	sb	t8,37(a0)
 148:	284100b4 	slti	at,v0,180
 14c:	1420ffd5 	bnez	at,a4 <func_808BDDF8+0xc>
 150:	2484003c 	addiu	a0,a0,60
 154:	8fbf0014 	lw	ra,20(sp)
 158:	27bd0018 	addiu	sp,sp,24
 15c:	03e00008 	jr	ra
 160:	00000000 	nop

00000164 <BgVbSima_Update>:
 164:	27bdff10 	addiu	sp,sp,-240
 168:	afbf007c 	sw	ra,124(sp)
 16c:	afb70078 	sw	s7,120(sp)
 170:	afb60074 	sw	s6,116(sp)
 174:	afb50070 	sw	s5,112(sp)
 178:	afb4006c 	sw	s4,108(sp)
 17c:	afb30068 	sw	s3,104(sp)
 180:	afb20064 	sw	s2,100(sp)
 184:	afb10060 	sw	s1,96(sp)
 188:	afb0005c 	sw	s0,92(sp)
 18c:	f7be0050 	sdc1	$f30,80(sp)
 190:	f7bc0048 	sdc1	$f28,72(sp)
 194:	f7ba0040 	sdc1	$f26,64(sp)
 198:	f7b80038 	sdc1	$f24,56(sp)
 19c:	f7b60030 	sdc1	$f22,48(sp)
 1a0:	f7b40028 	sdc1	$f20,40(sp)
 1a4:	848e0174 	lh	t6,372(a0)
 1a8:	0080b025 	move	s6,a0
 1ac:	8c900118 	lw	s0,280(a0)
 1b0:	25cf0001 	addiu	t7,t6,1
 1b4:	a48f0174 	sh	t7,372(a0)
 1b8:	00a0b825 	move	s7,a1
 1bc:	00a02025 	move	a0,a1
 1c0:	3c050001 	lui	a1,0x1
 1c4:	00b72821 	addu	a1,a1,s7
 1c8:	0c000000 	jal	0 <BgVbSima_Init>
 1cc:	80a51cbc 	lb	a1,7356(a1)
 1d0:	544000ec 	bnezl	v0,584 <BgVbSima_Update+0x420>
 1d4:	8fbf007c 	lw	ra,124(sp)
 1d8:	920202d6 	lbu	v0,726(s0)
 1dc:	24010001 	li	at,1
 1e0:	26c40028 	addiu	a0,s6,40
 1e4:	1441003c 	bne	v0,at,2d8 <BgVbSima_Update+0x174>
 1e8:	00401825 	move	v1,v0
 1ec:	44802000 	mtc1	zero,$f4
 1f0:	3c05c47a 	lui	a1,0xc47a
 1f4:	3c063f80 	lui	a2,0x3f80
 1f8:	3c073fc0 	lui	a3,0x3fc0
 1fc:	0c000000 	jal	0 <BgVbSima_Init>
 200:	e7a40010 	swc1	$f4,16(sp)
 204:	86c40174 	lh	a0,372(s6)
 208:	000423c0 	sll	a0,a0,0xf
 20c:	00042400 	sll	a0,a0,0x10
 210:	0c000000 	jal	0 <BgVbSima_Init>
 214:	00042403 	sra	a0,a0,0x10
 218:	86c40174 	lh	a0,372(s6)
 21c:	46000200 	add.s	$f8,$f0,$f0
 220:	c6c6002c 	lwc1	$f6,44(s6)
 224:	00800821 	move	at,a0
 228:	000420c0 	sll	a0,a0,0x3
 22c:	46083280 	add.s	$f10,$f6,$f8
 230:	00812023 	subu	a0,a0,at
 234:	00042300 	sll	a0,a0,0xc
 238:	00042400 	sll	a0,a0,0x10
 23c:	e6ca002c 	swc1	$f10,44(s6)
 240:	0c000000 	jal	0 <BgVbSima_Init>
 244:	00042403 	sra	a0,a0,0x10
 248:	4600040d 	trunc.w.s	$f16,$f0
 24c:	24110037 	li	s1,55
 250:	86c40174 	lh	a0,372(s6)
 254:	44198000 	mfc1	t9,$f16
 258:	00800821 	move	at,a0
 25c:	00042080 	sll	a0,a0,0x2
 260:	00194400 	sll	t0,t9,0x10
 264:	00084c03 	sra	t1,t0,0x10
 268:	01310019 	multu	t1,s1
 26c:	00812021 	addu	a0,a0,at
 270:	00042300 	sll	a0,a0,0xc
 274:	00042400 	sll	a0,a0,0x10
 278:	00042403 	sra	a0,a0,0x10
 27c:	00005012 	mflo	t2
 280:	a6ca00b4 	sh	t2,180(s6)
 284:	0c000000 	jal	0 <BgVbSima_Init>
 288:	00000000 	nop
 28c:	4600048d 	trunc.w.s	$f18,$f0
 290:	3c070000 	lui	a3,0x0
 294:	3c180000 	lui	t8,0x0
 298:	24e70000 	addiu	a3,a3,0
 29c:	440c9000 	mfc1	t4,$f18
 2a0:	27180000 	addiu	t8,t8,0
 2a4:	2404205c 	li	a0,8284
 2a8:	000c6c00 	sll	t5,t4,0x10
 2ac:	000d7403 	sra	t6,t5,0x10
 2b0:	01d10019 	multu	t6,s1
 2b4:	26c500e4 	addiu	a1,s6,228
 2b8:	24060004 	li	a2,4
 2bc:	00007812 	mflo	t7
 2c0:	a6cf00b8 	sh	t7,184(s6)
 2c4:	afb80014 	sw	t8,20(sp)
 2c8:	0c000000 	jal	0 <BgVbSima_Init>
 2cc:	afa70010 	sw	a3,16(sp)
 2d0:	10000007 	b	2f0 <BgVbSima_Update+0x18c>
 2d4:	920202d6 	lbu	v0,726(s0)
 2d8:	24010002 	li	at,2
 2dc:	14610004 	bne	v1,at,2f0 <BgVbSima_Update+0x18c>
 2e0:	00000000 	nop
 2e4:	0c000000 	jal	0 <BgVbSima_Init>
 2e8:	02c02025 	move	a0,s6
 2ec:	920202d6 	lbu	v0,726(s0)
 2f0:	104000a3 	beqz	v0,580 <BgVbSima_Update+0x41c>
 2f4:	0000a825 	move	s5,zero
 2f8:	3c010000 	lui	at,0x0
 2fc:	c43e0000 	lwc1	$f30,0(at)
 300:	3c0140a0 	lui	at,0x40a0
 304:	4481e000 	mtc1	at,$f28
 308:	3c014270 	lui	at,0x4270
 30c:	4481b000 	mtc1	at,$f22
 310:	3c013f00 	lui	at,0x3f00
 314:	4481a000 	mtc1	at,$f20
 318:	26111970 	addiu	s1,s0,6512
 31c:	27b40090 	addiu	s4,sp,144
 320:	27b3009c 	addiu	s3,sp,156
 324:	27b200a8 	addiu	s2,sp,168
 328:	0c000000 	jal	0 <BgVbSima_Init>
 32c:	00000000 	nop
 330:	3c010000 	lui	at,0x0
 334:	c4240000 	lwc1	$f4,0(at)
 338:	3c0142a0 	lui	at,0x42a0
 33c:	4604003c 	c.lt.s	$f0,$f4
 340:	00000000 	nop
 344:	4502000a 	bc1fl	370 <BgVbSima_Update+0x20c>
 348:	4481d000 	mtc1	at,$f26
 34c:	3c01c2a0 	lui	at,0xc2a0
 350:	4481c000 	mtc1	at,$f24
 354:	3c014320 	lui	at,0x4320
 358:	44816000 	mtc1	at,$f12
 35c:	0c000000 	jal	0 <BgVbSima_Init>
 360:	00000000 	nop
 364:	10000013 	b	3b4 <BgVbSima_Update+0x250>
 368:	46000686 	mov.s	$f26,$f0
 36c:	4481d000 	mtc1	at,$f26
 370:	0c000000 	jal	0 <BgVbSima_Init>
 374:	00000000 	nop
 378:	4614003c 	c.lt.s	$f0,$f20
 37c:	3c0142a0 	lui	at,0x42a0
 380:	45020008 	bc1fl	3a4 <BgVbSima_Update+0x240>
 384:	3c014320 	lui	at,0x4320
 388:	44813000 	mtc1	at,$f6
 38c:	3c01bf80 	lui	at,0xbf80
 390:	44814000 	mtc1	at,$f8
 394:	00000000 	nop
 398:	46083682 	mul.s	$f26,$f6,$f8
 39c:	00000000 	nop
 3a0:	3c014320 	lui	at,0x4320
 3a4:	44816000 	mtc1	at,$f12
 3a8:	0c000000 	jal	0 <BgVbSima_Init>
 3ac:	00000000 	nop
 3b0:	46000606 	mov.s	$f24,$f0
 3b4:	3c010000 	lui	at,0x0
 3b8:	c42a0000 	lwc1	$f10,0(at)
 3bc:	3c014040 	lui	at,0x4040
 3c0:	44816000 	mtc1	at,$f12
 3c4:	460ac402 	mul.s	$f16,$f24,$f10
 3c8:	0c000000 	jal	0 <BgVbSima_Init>
 3cc:	e7b000cc 	swc1	$f16,204(sp)
 3d0:	3c014040 	lui	at,0x4040
 3d4:	44819000 	mtc1	at,$f18
 3d8:	3c010000 	lui	at,0x0
 3dc:	c4260000 	lwc1	$f6,0(at)
 3e0:	46120100 	add.s	$f4,$f0,$f18
 3e4:	3c010000 	lui	at,0x0
 3e8:	4606d202 	mul.s	$f8,$f26,$f6
 3ec:	c42a0000 	lwc1	$f10,0(at)
 3f0:	c7b000cc 	lwc1	$f16,204(sp)
 3f4:	e7a400d0 	swc1	$f4,208(sp)
 3f8:	e7aa00c4 	swc1	$f10,196(sp)
 3fc:	e7b000c0 	swc1	$f16,192(sp)
 400:	3c01c2a0 	lui	at,0xc2a0
 404:	e7a800d4 	swc1	$f8,212(sp)
 408:	c7b200d4 	lwc1	$f18,212(sp)
 40c:	44814000 	mtc1	at,$f8
 410:	3c0142c8 	lui	at,0x42c8
 414:	e7b200c8 	swc1	$f18,200(sp)
 418:	c6c40024 	lwc1	$f4,36(s6)
 41c:	e7a800b8 	swc1	$f8,184(sp)
 420:	44816000 	mtc1	at,$f12
 424:	46182180 	add.s	$f6,$f4,$f24
 428:	e7a600b4 	swc1	$f6,180(sp)
 42c:	c6ca002c 	lwc1	$f10,44(s6)
 430:	461a5400 	add.s	$f16,$f10,$f26
 434:	0c000000 	jal	0 <BgVbSima_Init>
 438:	e7b000bc 	swc1	$f16,188(sp)
 43c:	4600048d 	trunc.w.s	$f18,$f0
 440:	3c190000 	lui	t9,0x0
 444:	3c080000 	lui	t0,0x0
 448:	25080000 	addiu	t0,t0,0
 44c:	440a9000 	mfc1	t2,$f18
 450:	27390000 	addiu	t9,t9,0
 454:	240e000a 	li	t6,10
 458:	000a5c00 	sll	t3,t2,0x10
 45c:	000b6403 	sra	t4,t3,0x10
 460:	258d01f4 	addiu	t5,t4,500
 464:	240f0014 	li	t7,20
 468:	afaf0020 	sw	t7,32(sp)
 46c:	afad0018 	sw	t5,24(sp)
 470:	afae001c 	sw	t6,28(sp)
 474:	afb90010 	sw	t9,16(sp)
 478:	afa80014 	sw	t0,20(sp)
 47c:	02e02025 	move	a0,s7
 480:	27a500b4 	addiu	a1,sp,180
 484:	27a600cc 	addiu	a2,sp,204
 488:	0c000000 	jal	0 <BgVbSima_Init>
 48c:	27a700c0 	addiu	a3,sp,192
 490:	00008025 	move	s0,zero
 494:	c7a400cc 	lwc1	$f4,204(sp)
 498:	4600e306 	mov.s	$f12,$f28
 49c:	0c000000 	jal	0 <BgVbSima_Init>
 4a0:	e7a4009c 	swc1	$f4,156(sp)
 4a4:	c7a600d4 	lwc1	$f6,212(sp)
 4a8:	e7a000a0 	swc1	$f0,160(sp)
 4ac:	e7be0094 	swc1	$f30,148(sp)
 4b0:	4600a306 	mov.s	$f12,$f20
 4b4:	0c000000 	jal	0 <BgVbSima_Init>
 4b8:	e7a600a4 	swc1	$f6,164(sp)
 4bc:	e7a00090 	swc1	$f0,144(sp)
 4c0:	0c000000 	jal	0 <BgVbSima_Init>
 4c4:	4600a306 	mov.s	$f12,$f20
 4c8:	e7a00098 	swc1	$f0,152(sp)
 4cc:	0c000000 	jal	0 <BgVbSima_Init>
 4d0:	4600b306 	mov.s	$f12,$f22
 4d4:	c7a800b4 	lwc1	$f8,180(sp)
 4d8:	3c014220 	lui	at,0x4220
 4dc:	44816000 	mtc1	at,$f12
 4e0:	46080280 	add.s	$f10,$f0,$f8
 4e4:	0c000000 	jal	0 <BgVbSima_Init>
 4e8:	e7aa00a8 	swc1	$f10,168(sp)
 4ec:	c7b000b8 	lwc1	$f16,184(sp)
 4f0:	4600b306 	mov.s	$f12,$f22
 4f4:	46100480 	add.s	$f18,$f0,$f16
 4f8:	0c000000 	jal	0 <BgVbSima_Init>
 4fc:	e7b200ac 	swc1	$f18,172(sp)
 500:	c7a400bc 	lwc1	$f4,188(sp)
 504:	3c014000 	lui	at,0x4000
 508:	44816000 	mtc1	at,$f12
 50c:	46040180 	add.s	$f6,$f0,$f4
 510:	0c000000 	jal	0 <BgVbSima_Init>
 514:	e7a600b0 	swc1	$f6,176(sp)
 518:	4600020d 	trunc.w.s	$f8,$f0
 51c:	02202025 	move	a0,s1
 520:	02402825 	move	a1,s2
 524:	02603025 	move	a2,s3
 528:	44194000 	mfc1	t9,$f8
 52c:	02803825 	move	a3,s4
 530:	00194400 	sll	t0,t9,0x10
 534:	00084c03 	sra	t1,t0,0x10
 538:	252a0008 	addiu	t2,t1,8
 53c:	448a5000 	mtc1	t2,$f10
 540:	00000000 	nop
 544:	46805420 	cvt.s.w	$f16,$f10
 548:	0c000000 	jal	0 <BgVbSima_Init>
 54c:	e7b00010 	swc1	$f16,16(sp)
 550:	26100001 	addiu	s0,s0,1
 554:	00108400 	sll	s0,s0,0x10
 558:	00108403 	sra	s0,s0,0x10
 55c:	2a010003 	slti	at,s0,3
 560:	5420ffcd 	bnezl	at,498 <BgVbSima_Update+0x334>
 564:	c7a400cc 	lwc1	$f4,204(sp)
 568:	26b50001 	addiu	s5,s5,1
 56c:	0015ac00 	sll	s5,s5,0x10
 570:	0015ac03 	sra	s5,s5,0x10
 574:	2aa1000a 	slti	at,s5,10
 578:	1420ff6b 	bnez	at,328 <BgVbSima_Update+0x1c4>
 57c:	00000000 	nop
 580:	8fbf007c 	lw	ra,124(sp)
 584:	d7b40028 	ldc1	$f20,40(sp)
 588:	d7b60030 	ldc1	$f22,48(sp)
 58c:	d7b80038 	ldc1	$f24,56(sp)
 590:	d7ba0040 	ldc1	$f26,64(sp)
 594:	d7bc0048 	ldc1	$f28,72(sp)
 598:	d7be0050 	ldc1	$f30,80(sp)
 59c:	8fb0005c 	lw	s0,92(sp)
 5a0:	8fb10060 	lw	s1,96(sp)
 5a4:	8fb20064 	lw	s2,100(sp)
 5a8:	8fb30068 	lw	s3,104(sp)
 5ac:	8fb4006c 	lw	s4,108(sp)
 5b0:	8fb50070 	lw	s5,112(sp)
 5b4:	8fb60074 	lw	s6,116(sp)
 5b8:	8fb70078 	lw	s7,120(sp)
 5bc:	03e00008 	jr	ra
 5c0:	27bd00f0 	addiu	sp,sp,240

000005c4 <BgVbSima_Draw>:
 5c4:	27bdffc0 	addiu	sp,sp,-64
 5c8:	afbf001c 	sw	ra,28(sp)
 5cc:	afb00018 	sw	s0,24(sp)
 5d0:	afa40040 	sw	a0,64(sp)
 5d4:	afa50044 	sw	a1,68(sp)
 5d8:	8ca50000 	lw	a1,0(a1)
 5dc:	3c060000 	lui	a2,0x0
 5e0:	24c60000 	addiu	a2,a2,0
 5e4:	27a4002c 	addiu	a0,sp,44
 5e8:	2407011d 	li	a3,285
 5ec:	0c000000 	jal	0 <BgVbSima_Init>
 5f0:	00a08025 	move	s0,a1
 5f4:	8faf0044 	lw	t7,68(sp)
 5f8:	0c000000 	jal	0 <BgVbSima_Init>
 5fc:	8de40000 	lw	a0,0(t7)
 600:	8e0202c0 	lw	v0,704(s0)
 604:	3c19da38 	lui	t9,0xda38
 608:	37390003 	ori	t9,t9,0x3
 60c:	24580008 	addiu	t8,v0,8
 610:	ae1802c0 	sw	t8,704(s0)
 614:	ac590000 	sw	t9,0(v0)
 618:	8fa80044 	lw	t0,68(sp)
 61c:	3c050000 	lui	a1,0x0
 620:	24a50000 	addiu	a1,a1,0
 624:	8d040000 	lw	a0,0(t0)
 628:	24060123 	li	a2,291
 62c:	0c000000 	jal	0 <BgVbSima_Init>
 630:	afa20028 	sw	v0,40(sp)
 634:	8fa30028 	lw	v1,40(sp)
 638:	3c0b0600 	lui	t3,0x600
 63c:	256b0240 	addiu	t3,t3,576
 640:	ac620004 	sw	v0,4(v1)
 644:	8e0202c0 	lw	v0,704(s0)
 648:	3c0ade00 	lui	t2,0xde00
 64c:	3c060000 	lui	a2,0x0
 650:	24490008 	addiu	t1,v0,8
 654:	ae0902c0 	sw	t1,704(s0)
 658:	ac4b0004 	sw	t3,4(v0)
 65c:	ac4a0000 	sw	t2,0(v0)
 660:	8fac0044 	lw	t4,68(sp)
 664:	24c60000 	addiu	a2,a2,0
 668:	27a4002c 	addiu	a0,sp,44
 66c:	24070128 	li	a3,296
 670:	0c000000 	jal	0 <BgVbSima_Init>
 674:	8d850000 	lw	a1,0(t4)
 678:	8fbf001c 	lw	ra,28(sp)
 67c:	8fb00018 	lw	s0,24(sp)
 680:	27bd0040 	addiu	sp,sp,64
 684:	03e00008 	jr	ra
 688:	00000000 	nop
 68c:	00000000 	nop
