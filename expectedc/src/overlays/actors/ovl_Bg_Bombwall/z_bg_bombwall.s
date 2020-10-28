
build/src/overlays/actors/ovl_Bg_Bombwall/z_bg_bombwall.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8086E7D0>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa5002c 	sw	a1,44(sp)
   c:	afa40028 	sw	a0,40(sp)
  10:	afa0001c 	sw	zero,28(sp)
  14:	0c000000 	jal	0 <func_8086E7D0>
  18:	00002825 	move	a1,zero
  1c:	3c040500 	lui	a0,0x500
  20:	248441b0 	addiu	a0,a0,16816
  24:	0c000000 	jal	0 <func_8086E7D0>
  28:	27a5001c 	addiu	a1,sp,28
  2c:	8fa4002c 	lw	a0,44(sp)
  30:	8fa60028 	lw	a2,40(sp)
  34:	8fa7001c 	lw	a3,28(sp)
  38:	0c000000 	jal	0 <func_8086E7D0>
  3c:	24850810 	addiu	a1,a0,2064
  40:	8fae0028 	lw	t6,40(sp)
  44:	24010032 	li	at,50
  48:	14410009 	bne	v0,at,70 <func_8086E7D0+0x70>
  4c:	adc2014c 	sw	v0,332(t6)
  50:	8faf0028 	lw	t7,40(sp)
  54:	3c040000 	lui	a0,0x0
  58:	3c050000 	lui	a1,0x0
  5c:	24a50000 	addiu	a1,a1,0
  60:	24840000 	addiu	a0,a0,0
  64:	240600f3 	li	a2,243
  68:	0c000000 	jal	0 <func_8086E7D0>
  6c:	85e7001c 	lh	a3,28(t7)
  70:	8fbf0014 	lw	ra,20(sp)
  74:	27bd0028 	addiu	sp,sp,40
  78:	03e00008 	jr	ra
  7c:	00000000 	nop

00000080 <func_8086E850>:
  80:	44866000 	mtc1	a2,$f12
  84:	c4a40008 	lwc1	$f4,8(a1)
  88:	44877000 	mtc1	a3,$f14
  8c:	c4a80000 	lwc1	$f8,0(a1)
  90:	460c2182 	mul.s	$f6,$f4,$f12
  94:	00000000 	nop
  98:	460e4282 	mul.s	$f10,$f8,$f14
  9c:	460a3400 	add.s	$f16,$f6,$f10
  a0:	e4900000 	swc1	$f16,0(a0)
  a4:	c4b20004 	lwc1	$f18,4(a1)
  a8:	e4920004 	swc1	$f18,4(a0)
  ac:	c4a40008 	lwc1	$f4,8(a1)
  b0:	c4a60000 	lwc1	$f6,0(a1)
  b4:	460e2202 	mul.s	$f8,$f4,$f14
  b8:	00000000 	nop
  bc:	460c3282 	mul.s	$f10,$f6,$f12
  c0:	460a4401 	sub.s	$f16,$f8,$f10
  c4:	03e00008 	jr	ra
  c8:	e4900008 	swc1	$f16,8(a0)

000000cc <BgBombwall_Init>:
  cc:	27bdff48 	addiu	sp,sp,-184
  d0:	afb30044 	sw	s3,68(sp)
  d4:	00809825 	move	s3,a0
  d8:	afbf005c 	sw	ra,92(sp)
  dc:	afbe0058 	sw	s8,88(sp)
  e0:	afb70054 	sw	s7,84(sp)
  e4:	afb60050 	sw	s6,80(sp)
  e8:	afb5004c 	sw	s5,76(sp)
  ec:	afb40048 	sw	s4,72(sp)
  f0:	afb20040 	sw	s2,64(sp)
  f4:	afb1003c 	sw	s1,60(sp)
  f8:	afb00038 	sw	s0,56(sp)
  fc:	f7b80030 	sdc1	$f24,48(sp)
 100:	f7b60028 	sdc1	$f22,40(sp)
 104:	f7b40020 	sdc1	$f20,32(sp)
 108:	afa500bc 	sw	a1,188(sp)
 10c:	0c000000 	jal	0 <func_8086E7D0>
 110:	848400b6 	lh	a0,182(a0)
 114:	46000586 	mov.s	$f22,$f0
 118:	0c000000 	jal	0 <func_8086E7D0>
 11c:	866400b6 	lh	a0,182(s3)
 120:	3c050000 	lui	a1,0x0
 124:	46000606 	mov.s	$f24,$f0
 128:	24a50000 	addiu	a1,a1,0
 12c:	0c000000 	jal	0 <func_8086E7D0>
 130:	02602025 	move	a0,s3
 134:	3c053dcc 	lui	a1,0x3dcc
 138:	34a5cccd 	ori	a1,a1,0xcccd
 13c:	0c000000 	jal	0 <func_8086E7D0>
 140:	02602025 	move	a0,s3
 144:	8665001c 	lh	a1,28(s3)
 148:	8fa400bc 	lw	a0,188(sp)
 14c:	0c000000 	jal	0 <func_8086E7D0>
 150:	30a5003f 	andi	a1,a1,0x3f
 154:	10400006 	beqz	v0,170 <BgBombwall_Init+0xa4>
 158:	02602025 	move	a0,s3
 15c:	02602025 	move	a0,s3
 160:	0c000000 	jal	0 <func_8086E7D0>
 164:	8fa500bc 	lw	a1,188(sp)
 168:	1000004d 	b	2a0 <BgBombwall_Init+0x1d4>
 16c:	00000000 	nop
 170:	0c000000 	jal	0 <func_8086E7D0>
 174:	8fa500bc 	lw	a1,188(sp)
 178:	926e02a2 	lbu	t6,674(s3)
 17c:	26770164 	addiu	s7,s3,356
 180:	02e02825 	move	a1,s7
 184:	35cf0002 	ori	t7,t6,0x2
 188:	a26f02a2 	sb	t7,674(s3)
 18c:	0c000000 	jal	0 <func_8086E7D0>
 190:	8fa400bc 	lw	a0,188(sp)
 194:	3c140000 	lui	s4,0x0
 198:	26940000 	addiu	s4,s4,0
 19c:	26780184 	addiu	t8,s3,388
 1a0:	afb80010 	sw	t8,16(sp)
 1a4:	02803825 	move	a3,s4
 1a8:	8fa400bc 	lw	a0,188(sp)
 1ac:	02e02825 	move	a1,s7
 1b0:	0c000000 	jal	0 <func_8086E7D0>
 1b4:	02603025 	move	a2,s3
 1b8:	3c014000 	lui	at,0x4000
 1bc:	4481a000 	mtc1	at,$f20
 1c0:	00009025 	move	s2,zero
 1c4:	27be008c 	addiu	s8,sp,140
 1c8:	27b600b0 	addiu	s6,sp,176
 1cc:	27b50080 	addiu	s5,sp,128
 1d0:	00008825 	move	s1,zero
 1d4:	27b0008c 	addiu	s0,sp,140
 1d8:	8e99000c 	lw	t9,12(s4)
 1dc:	00124100 	sll	t0,s2,0x4
 1e0:	01124023 	subu	t0,t0,s2
 1e4:	00084080 	sll	t0,t0,0x2
 1e8:	03284821 	addu	t1,t9,t0
 1ec:	01311021 	addu	v0,t1,s1
 1f0:	c4440018 	lwc1	$f4,24(v0)
 1f4:	4406b000 	mfc1	a2,$f22
 1f8:	4407c000 	mfc1	a3,$f24
 1fc:	e7a40080 	swc1	$f4,128(sp)
 200:	c446001c 	lwc1	$f6,28(v0)
 204:	02002025 	move	a0,s0
 208:	02a02825 	move	a1,s5
 20c:	e7a60084 	swc1	$f6,132(sp)
 210:	c4480020 	lwc1	$f8,32(v0)
 214:	46144280 	add.s	$f10,$f8,$f20
 218:	0c000000 	jal	0 <func_8086E7D0>
 21c:	e7aa0088 	swc1	$f10,136(sp)
 220:	c6100000 	lwc1	$f16,0(s0)
 224:	c6720024 	lwc1	$f18,36(s3)
 228:	c6060004 	lwc1	$f6,4(s0)
 22c:	2610000c 	addiu	s0,s0,12
 230:	46128100 	add.s	$f4,$f16,$f18
 234:	c610fffc 	lwc1	$f16,-4(s0)
 238:	2631000c 	addiu	s1,s1,12
 23c:	e604fff4 	swc1	$f4,-12(s0)
 240:	c6680028 	lwc1	$f8,40(s3)
 244:	46083280 	add.s	$f10,$f6,$f8
 248:	e60afff8 	swc1	$f10,-8(s0)
 24c:	c672002c 	lwc1	$f18,44(s3)
 250:	46128100 	add.s	$f4,$f16,$f18
 254:	1616ffe0 	bne	s0,s6,1d8 <BgBombwall_Init+0x10c>
 258:	e604fffc 	swc1	$f4,-4(s0)
 25c:	27aa00a4 	addiu	t2,sp,164
 260:	afaa0010 	sw	t2,16(sp)
 264:	02e02025 	move	a0,s7
 268:	02402825 	move	a1,s2
 26c:	03c03025 	move	a2,s8
 270:	0c000000 	jal	0 <func_8086E7D0>
 274:	27a70098 	addiu	a3,sp,152
 278:	26520001 	addiu	s2,s2,1
 27c:	24010003 	li	at,3
 280:	5641ffd4 	bnel	s2,at,1d4 <BgBombwall_Init+0x108>
 284:	00008825 	move	s1,zero
 288:	926b02a2 	lbu	t3,674(s3)
 28c:	02602025 	move	a0,s3
 290:	356c0001 	ori	t4,t3,0x1
 294:	a26c02a2 	sb	t4,674(s3)
 298:	0c000000 	jal	0 <func_8086E7D0>
 29c:	8fa500bc 	lw	a1,188(sp)
 2a0:	3c040000 	lui	a0,0x0
 2a4:	24840000 	addiu	a0,a0,0
 2a8:	8665001c 	lh	a1,28(s3)
 2ac:	0c000000 	jal	0 <func_8086E7D0>
 2b0:	866600b6 	lh	a2,182(s3)
 2b4:	8fbf005c 	lw	ra,92(sp)
 2b8:	d7b40020 	ldc1	$f20,32(sp)
 2bc:	d7b60028 	ldc1	$f22,40(sp)
 2c0:	d7b80030 	ldc1	$f24,48(sp)
 2c4:	8fb00038 	lw	s0,56(sp)
 2c8:	8fb1003c 	lw	s1,60(sp)
 2cc:	8fb20040 	lw	s2,64(sp)
 2d0:	8fb30044 	lw	s3,68(sp)
 2d4:	8fb40048 	lw	s4,72(sp)
 2d8:	8fb5004c 	lw	s5,76(sp)
 2dc:	8fb60050 	lw	s6,80(sp)
 2e0:	8fb70054 	lw	s7,84(sp)
 2e4:	8fbe0058 	lw	s8,88(sp)
 2e8:	03e00008 	jr	ra
 2ec:	27bd00b8 	addiu	sp,sp,184

000002f0 <func_8086EAC0>:
 2f0:	27bdffe8 	addiu	sp,sp,-24
 2f4:	afbf0014 	sw	ra,20(sp)
 2f8:	afa5001c 	sw	a1,28(sp)
 2fc:	908202a2 	lbu	v0,674(a0)
 300:	00803825 	move	a3,a0
 304:	00a02025 	move	a0,a1
 308:	304e0002 	andi	t6,v0,0x2
 30c:	11c00009 	beqz	t6,334 <func_8086EAC0+0x44>
 310:	24a50810 	addiu	a1,a1,2064
 314:	8ce6014c 	lw	a2,332(a3)
 318:	0c000000 	jal	0 <func_8086E7D0>
 31c:	afa70018 	sw	a3,24(sp)
 320:	8fa70018 	lw	a3,24(sp)
 324:	90f802a2 	lbu	t8,674(a3)
 328:	3319fffd 	andi	t9,t8,0xfffd
 32c:	332200ff 	andi	v0,t9,0xff
 330:	a0f902a2 	sb	t9,674(a3)
 334:	30480001 	andi	t0,v0,0x1
 338:	11000008 	beqz	t0,35c <func_8086EAC0+0x6c>
 33c:	8fa4001c 	lw	a0,28(sp)
 340:	24e50164 	addiu	a1,a3,356
 344:	0c000000 	jal	0 <func_8086E7D0>
 348:	afa70018 	sw	a3,24(sp)
 34c:	8fa70018 	lw	a3,24(sp)
 350:	90e902a2 	lbu	t1,674(a3)
 354:	312afffe 	andi	t2,t1,0xfffe
 358:	a0ea02a2 	sb	t2,674(a3)
 35c:	8fbf0014 	lw	ra,20(sp)
 360:	27bd0018 	addiu	sp,sp,24
 364:	03e00008 	jr	ra
 368:	00000000 	nop

0000036c <BgBombwall_Destroy>:
 36c:	27bdffe8 	addiu	sp,sp,-24
 370:	afbf0014 	sw	ra,20(sp)
 374:	0c000000 	jal	0 <func_8086E7D0>
 378:	00000000 	nop
 37c:	8fbf0014 	lw	ra,20(sp)
 380:	27bd0018 	addiu	sp,sp,24
 384:	03e00008 	jr	ra
 388:	00000000 	nop

0000038c <func_8086EB5C>:
 38c:	27bdff68 	addiu	sp,sp,-152
 390:	afb20054 	sw	s2,84(sp)
 394:	00809025 	move	s2,a0
 398:	afbf0064 	sw	ra,100(sp)
 39c:	afb50060 	sw	s5,96(sp)
 3a0:	afb4005c 	sw	s4,92(sp)
 3a4:	afb30058 	sw	s3,88(sp)
 3a8:	afb10050 	sw	s1,80(sp)
 3ac:	afb0004c 	sw	s0,76(sp)
 3b0:	f7bc0040 	sdc1	$f28,64(sp)
 3b4:	f7ba0038 	sdc1	$f26,56(sp)
 3b8:	f7b80030 	sdc1	$f24,48(sp)
 3bc:	f7b60028 	sdc1	$f22,40(sp)
 3c0:	f7b40020 	sdc1	$f20,32(sp)
 3c4:	00a0a025 	move	s4,a1
 3c8:	0c000000 	jal	0 <func_8086E7D0>
 3cc:	848400b6 	lh	a0,182(a0)
 3d0:	46000586 	mov.s	$f22,$f0
 3d4:	0c000000 	jal	0 <func_8086E7D0>
 3d8:	864400b6 	lh	a0,182(s2)
 3dc:	3c014370 	lui	at,0x4370
 3e0:	4481e000 	mtc1	at,$f28
 3e4:	3c014248 	lui	at,0x4248
 3e8:	4481d000 	mtc1	at,$f26
 3ec:	3c0142f0 	lui	at,0x42f0
 3f0:	3c100000 	lui	s0,0x0
 3f4:	3c130000 	lui	s3,0x0
 3f8:	4481c000 	mtc1	at,$f24
 3fc:	46000506 	mov.s	$f20,$f0
 400:	26730000 	addiu	s3,s3,0
 404:	26100000 	addiu	s0,s0,0
 408:	26510024 	addiu	s1,s2,36
 40c:	27b50088 	addiu	s5,sp,136
 410:	860f0004 	lh	t7,4(s0)
 414:	860e0000 	lh	t6,0(s0)
 418:	c6320000 	lwc1	$f18,0(s1)
 41c:	448f3000 	mtc1	t7,$f6
 420:	448e2000 	mtc1	t6,$f4
 424:	86180002 	lh	t8,2(s0)
 428:	468030a0 	cvt.s.w	$f2,$f6
 42c:	44983000 	mtc1	t8,$f6
 430:	46802020 	cvt.s.w	$f0,$f4
 434:	46161202 	mul.s	$f8,$f2,$f22
 438:	00000000 	nop
 43c:	46140282 	mul.s	$f10,$f0,$f20
 440:	460a4400 	add.s	$f16,$f8,$f10
 444:	46803220 	cvt.s.w	$f8,$f6
 448:	46128100 	add.s	$f4,$f16,$f18
 44c:	46141482 	mul.s	$f18,$f2,$f20
 450:	e7a40088 	swc1	$f4,136(sp)
 454:	46160102 	mul.s	$f4,$f0,$f22
 458:	c62a0004 	lwc1	$f10,4(s1)
 45c:	460a4400 	add.s	$f16,$f8,$f10
 460:	46049181 	sub.s	$f6,$f18,$f4
 464:	e7b0008c 	swc1	$f16,140(sp)
 468:	c6280008 	lwc1	$f8,8(s1)
 46c:	46083280 	add.s	$f10,$f6,$f8
 470:	0c000000 	jal	0 <func_8086E7D0>
 474:	e7aa0090 	swc1	$f10,144(sp)
 478:	46180402 	mul.s	$f16,$f0,$f24
 47c:	4600848d 	trunc.w.s	$f18,$f16
 480:	44129000 	mfc1	s2,$f18
 484:	00000000 	nop
 488:	00129400 	sll	s2,s2,0x10
 48c:	00129403 	sra	s2,s2,0x10
 490:	26520014 	addiu	s2,s2,20
 494:	00129400 	sll	s2,s2,0x10
 498:	0c000000 	jal	0 <func_8086E7D0>
 49c:	00129403 	sra	s2,s2,0x10
 4a0:	461c0102 	mul.s	$f4,$f0,$f28
 4a4:	4406d000 	mfc1	a2,$f26
 4a8:	240d0001 	li	t5,1
 4ac:	afad0018 	sw	t5,24(sp)
 4b0:	02802025 	move	a0,s4
 4b4:	02a02825 	move	a1,s5
 4b8:	24070002 	li	a3,2
 4bc:	4600218d 	trunc.w.s	$f6,$f4
 4c0:	afb20010 	sw	s2,16(sp)
 4c4:	44093000 	mfc1	t1,$f6
 4c8:	00000000 	nop
 4cc:	00095400 	sll	t2,t1,0x10
 4d0:	000a5c03 	sra	t3,t2,0x10
 4d4:	256c0014 	addiu	t4,t3,20
 4d8:	0c000000 	jal	0 <func_8086E7D0>
 4dc:	afac0014 	sw	t4,20(sp)
 4e0:	26100006 	addiu	s0,s0,6
 4e4:	5613ffcb 	bnel	s0,s3,414 <func_8086EB5C+0x88>
 4e8:	860f0004 	lh	t7,4(s0)
 4ec:	c6280000 	lwc1	$f8,0(s1)
 4f0:	3c0142b4 	lui	at,0x42b4
 4f4:	44818000 	mtc1	at,$f16
 4f8:	e7a80088 	swc1	$f8,136(sp)
 4fc:	c62a0004 	lwc1	$f10,4(s1)
 500:	3c014170 	lui	at,0x4170
 504:	44813000 	mtc1	at,$f6
 508:	46105480 	add.s	$f18,$f10,$f16
 50c:	240e000a 	li	t6,10
 510:	240f0032 	li	t7,50
 514:	24180001 	li	t8,1
 518:	e7b2008c 	swc1	$f18,140(sp)
 51c:	c6240008 	lwc1	$f4,8(s1)
 520:	afb80018 	sw	t8,24(sp)
 524:	afaf0014 	sw	t7,20(sp)
 528:	46062200 	add.s	$f8,$f4,$f6
 52c:	afae0010 	sw	t6,16(sp)
 530:	02802025 	move	a0,s4
 534:	02a02825 	move	a1,s5
 538:	e7a80090 	swc1	$f8,144(sp)
 53c:	3c064220 	lui	a2,0x4220
 540:	0c000000 	jal	0 <func_8086E7D0>
 544:	24070004 	li	a3,4
 548:	8fbf0064 	lw	ra,100(sp)
 54c:	d7b40020 	ldc1	$f20,32(sp)
 550:	d7b60028 	ldc1	$f22,40(sp)
 554:	d7b80030 	ldc1	$f24,48(sp)
 558:	d7ba0038 	ldc1	$f26,56(sp)
 55c:	d7bc0040 	ldc1	$f28,64(sp)
 560:	8fb0004c 	lw	s0,76(sp)
 564:	8fb10050 	lw	s1,80(sp)
 568:	8fb20054 	lw	s2,84(sp)
 56c:	8fb30058 	lw	s3,88(sp)
 570:	8fb4005c 	lw	s4,92(sp)
 574:	8fb50060 	lw	s5,96(sp)
 578:	03e00008 	jr	ra
 57c:	27bd0098 	addiu	sp,sp,152

00000580 <func_8086ED50>:
 580:	3c0e0500 	lui	t6,0x500
 584:	3c0f0000 	lui	t7,0x0
 588:	afa50004 	sw	a1,4(sp)
 58c:	25ce3fc0 	addiu	t6,t6,16320
 590:	25ef0000 	addiu	t7,t7,0
 594:	ac8e029c 	sw	t6,668(a0)
 598:	03e00008 	jr	ra
 59c:	ac8f0298 	sw	t7,664(a0)

000005a0 <func_8086ED70>:
 5a0:	27bdffe8 	addiu	sp,sp,-24
 5a4:	afbf0014 	sw	ra,20(sp)
 5a8:	afa5001c 	sw	a1,28(sp)
 5ac:	90820175 	lbu	v0,373(a0)
 5b0:	00803825 	move	a3,a0
 5b4:	3c014416 	lui	at,0x4416
 5b8:	304e0002 	andi	t6,v0,0x2
 5bc:	11c0000c 	beqz	t6,5f0 <func_8086ED70+0x50>
 5c0:	304ffffd 	andi	t7,v0,0xfffd
 5c4:	a08f0175 	sb	t7,373(a0)
 5c8:	afa70018 	sw	a3,24(sp)
 5cc:	0c000000 	jal	0 <func_8086E7D0>
 5d0:	8fa5001c 	lw	a1,28(sp)
 5d4:	8fa70018 	lw	a3,24(sp)
 5d8:	8fa4001c 	lw	a0,28(sp)
 5dc:	84e5001c 	lh	a1,28(a3)
 5e0:	0c000000 	jal	0 <func_8086E7D0>
 5e4:	30a5003f 	andi	a1,a1,0x3f
 5e8:	1000000d 	b	620 <func_8086ED70+0x80>
 5ec:	8fbf0014 	lw	ra,20(sp)
 5f0:	c4e40090 	lwc1	$f4,144(a3)
 5f4:	44813000 	mtc1	at,$f6
 5f8:	8fa4001c 	lw	a0,28(sp)
 5fc:	3c010001 	lui	at,0x1
 600:	4606203c 	c.lt.s	$f4,$f6
 604:	34211e60 	ori	at,at,0x1e60
 608:	00812821 	addu	a1,a0,at
 60c:	45020004 	bc1fl	620 <func_8086ED70+0x80>
 610:	8fbf0014 	lw	ra,20(sp)
 614:	0c000000 	jal	0 <func_8086E7D0>
 618:	24e60164 	addiu	a2,a3,356
 61c:	8fbf0014 	lw	ra,20(sp)
 620:	27bd0018 	addiu	sp,sp,24
 624:	03e00008 	jr	ra
 628:	00000000 	nop

0000062c <func_8086EDFC>:
 62c:	27bdffe8 	addiu	sp,sp,-24
 630:	afbf0014 	sw	ra,20(sp)
 634:	3c0e0500 	lui	t6,0x500
 638:	25ce3fc0 	addiu	t6,t6,16320
 63c:	240f0001 	li	t7,1
 640:	ac8e029c 	sw	t6,668(a0)
 644:	a48f02a0 	sh	t7,672(a0)
 648:	0c000000 	jal	0 <func_8086E7D0>
 64c:	afa40018 	sw	a0,24(sp)
 650:	8fa40018 	lw	a0,24(sp)
 654:	3c180000 	lui	t8,0x0
 658:	27180000 	addiu	t8,t8,0
 65c:	ac980298 	sw	t8,664(a0)
 660:	8fbf0014 	lw	ra,20(sp)
 664:	27bd0018 	addiu	sp,sp,24
 668:	03e00008 	jr	ra
 66c:	00000000 	nop

00000670 <func_8086EE40>:
 670:	27bdffe8 	addiu	sp,sp,-24
 674:	afbf0014 	sw	ra,20(sp)
 678:	848202a0 	lh	v0,672(a0)
 67c:	18400003 	blez	v0,68c <func_8086EE40+0x1c>
 680:	244effff 	addiu	t6,v0,-1
 684:	1000000b 	b	6b4 <func_8086EE40+0x44>
 688:	a48e02a0 	sh	t6,672(a0)
 68c:	0c000000 	jal	0 <func_8086E7D0>
 690:	afa40018 	sw	a0,24(sp)
 694:	8fa40018 	lw	a0,24(sp)
 698:	848f001c 	lh	t7,28(a0)
 69c:	000fc3c3 	sra	t8,t7,0xf
 6a0:	33190001 	andi	t9,t8,0x1
 6a4:	53200004 	beqzl	t9,6b8 <func_8086EE40+0x48>
 6a8:	8fbf0014 	lw	ra,20(sp)
 6ac:	0c000000 	jal	0 <func_8086E7D0>
 6b0:	24044802 	li	a0,18434
 6b4:	8fbf0014 	lw	ra,20(sp)
 6b8:	27bd0018 	addiu	sp,sp,24
 6bc:	03e00008 	jr	ra
 6c0:	00000000 	nop

000006c4 <func_8086EE94>:
 6c4:	27bdffe8 	addiu	sp,sp,-24
 6c8:	3c0e0500 	lui	t6,0x500
 6cc:	afbf0014 	sw	ra,20(sp)
 6d0:	25ce4088 	addiu	t6,t6,16520
 6d4:	ac8e029c 	sw	t6,668(a0)
 6d8:	0c000000 	jal	0 <func_8086E7D0>
 6dc:	afa40018 	sw	a0,24(sp)
 6e0:	8fa40018 	lw	a0,24(sp)
 6e4:	ac800298 	sw	zero,664(a0)
 6e8:	8fbf0014 	lw	ra,20(sp)
 6ec:	27bd0018 	addiu	sp,sp,24
 6f0:	03e00008 	jr	ra
 6f4:	00000000 	nop

000006f8 <BgBombwall_Update>:
 6f8:	27bdffe8 	addiu	sp,sp,-24
 6fc:	afbf0014 	sw	ra,20(sp)
 700:	8c820298 	lw	v0,664(a0)
 704:	50400004 	beqzl	v0,718 <BgBombwall_Update+0x20>
 708:	8fbf0014 	lw	ra,20(sp)
 70c:	0040f809 	jalr	v0
 710:	00000000 	nop
 714:	8fbf0014 	lw	ra,20(sp)
 718:	27bd0018 	addiu	sp,sp,24
 71c:	03e00008 	jr	ra
 720:	00000000 	nop

00000724 <BgBombwall_Draw>:
 724:	27bdffe8 	addiu	sp,sp,-24
 728:	00803025 	move	a2,a0
 72c:	afbf0014 	sw	ra,20(sp)
 730:	00a02025 	move	a0,a1
 734:	0c000000 	jal	0 <func_8086E7D0>
 738:	8cc5029c 	lw	a1,668(a2)
 73c:	8fbf0014 	lw	ra,20(sp)
 740:	27bd0018 	addiu	sp,sp,24
 744:	03e00008 	jr	ra
 748:	00000000 	nop
 74c:	00000000 	nop
