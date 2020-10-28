
build/src/overlays/actors/ovl_Bg_Spot18_Basket/z_bg_spot18_basket.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808B7710>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	00803025 	move	a2,a0
   8:	afa5002c 	sw	a1,44(sp)
   c:	00a02025 	move	a0,a1
  10:	afbf001c 	sw	ra,28(sp)
  14:	24c50164 	addiu	a1,a2,356
  18:	afa50020 	sw	a1,32(sp)
  1c:	0c000000 	jal	0 <func_808B7710>
  20:	afa60028 	sw	a2,40(sp)
  24:	8fa60028 	lw	a2,40(sp)
  28:	3c070000 	lui	a3,0x0
  2c:	8fa50020 	lw	a1,32(sp)
  30:	24ce0184 	addiu	t6,a2,388
  34:	afae0010 	sw	t6,16(sp)
  38:	24e70000 	addiu	a3,a3,0
  3c:	0c000000 	jal	0 <func_808B7710>
  40:	8fa4002c 	lw	a0,44(sp)
  44:	8fa60028 	lw	a2,40(sp)
  48:	240f00ff 	li	t7,255
  4c:	a0cf00ae 	sb	t7,174(a2)
  50:	8fbf001c 	lw	ra,28(sp)
  54:	27bd0028 	addiu	sp,sp,40
  58:	03e00008 	jr	ra
  5c:	00000000 	nop

00000060 <func_808B7770>:
  60:	27bdff50 	addiu	sp,sp,-176
  64:	f7bc0040 	sdc1	$f28,64(sp)
  68:	3c0142a0 	lui	at,0x42a0
  6c:	4481e000 	mtc1	at,$f28
  70:	f7be0048 	sdc1	$f30,72(sp)
  74:	f7ba0038 	sdc1	$f26,56(sp)
  78:	f7b80030 	sdc1	$f24,48(sp)
  7c:	3c01420c 	lui	at,0x420c
  80:	afb60068 	sw	s6,104(sp)
  84:	afb50064 	sw	s5,100(sp)
  88:	afb40060 	sw	s4,96(sp)
  8c:	afb3005c 	sw	s3,92(sp)
  90:	afb20058 	sw	s2,88(sp)
  94:	afb10054 	sw	s1,84(sp)
  98:	afb00050 	sw	s0,80(sp)
  9c:	4486f000 	mtc1	a2,$f30
  a0:	4481d000 	mtc1	at,$f26
  a4:	4480c000 	mtc1	zero,$f24
  a8:	00808825 	move	s1,a0
  ac:	00a09025 	move	s2,a1
  b0:	afbf006c 	sw	ra,108(sp)
  b4:	f7b60028 	sdc1	$f22,40(sp)
  b8:	f7b40020 	sdc1	$f20,32(sp)
  bc:	00008025 	move	s0,zero
  c0:	24130002 	li	s3,2
  c4:	27b4008c 	addiu	s4,sp,140
  c8:	27b50098 	addiu	s5,sp,152
  cc:	27b600a4 	addiu	s6,sp,164
  d0:	0c000000 	jal	0 <func_808B7710>
  d4:	00000000 	nop
  d8:	4600f03c 	c.lt.s	$f30,$f0
  dc:	3c040000 	lui	a0,0x0
  e0:	4503003c 	bc1tl	1d4 <func_808B7770+0x174>
  e4:	26100001 	addiu	s0,s0,1
  e8:	84840000 	lh	a0,0(a0)
  ec:	3c010000 	lui	at,0x0
  f0:	24847530 	addiu	a0,a0,30000
  f4:	00042400 	sll	a0,a0,0x10
  f8:	00042403 	sra	a0,a0,0x10
  fc:	0c000000 	jal	0 <func_808B7710>
 100:	a4240000 	sh	a0,0(at)
 104:	3c040000 	lui	a0,0x0
 108:	84840000 	lh	a0,0(a0)
 10c:	0c000000 	jal	0 <func_808B7710>
 110:	46000506 	mov.s	$f20,$f0
 114:	0c000000 	jal	0 <func_808B7710>
 118:	46000586 	mov.s	$f22,$f0
 11c:	461a0102 	mul.s	$f4,$f0,$f26
 120:	c6280024 	lwc1	$f8,36(s1)
 124:	3c014120 	lui	at,0x4120
 128:	44819000 	mtc1	at,$f18
 12c:	3c013f00 	lui	at,0x3f00
 130:	461a2080 	add.s	$f2,$f4,$f26
 134:	46141182 	mul.s	$f6,$f2,$f20
 138:	46083280 	add.s	$f10,$f6,$f8
 13c:	46161182 	mul.s	$f6,$f2,$f22
 140:	e7aa008c 	swc1	$f10,140(sp)
 144:	c6300028 	lwc1	$f16,40(s1)
 148:	46128100 	add.s	$f4,$f16,$f18
 14c:	44818000 	mtc1	at,$f16
 150:	e7a40090 	swc1	$f4,144(sp)
 154:	c628002c 	lwc1	$f8,44(s1)
 158:	e7b40098 	swc1	$f20,152(sp)
 15c:	e7b8009c 	swc1	$f24,156(sp)
 160:	46083280 	add.s	$f10,$f6,$f8
 164:	e7b600a0 	swc1	$f22,160(sp)
 168:	e7b800a4 	swc1	$f24,164(sp)
 16c:	e7b800ac 	swc1	$f24,172(sp)
 170:	e7aa0094 	swc1	$f10,148(sp)
 174:	0c000000 	jal	0 <func_808B7710>
 178:	e7b000a8 	swc1	$f16,168(sp)
 17c:	0c000000 	jal	0 <func_808B7710>
 180:	46000506 	mov.s	$f20,$f0
 184:	3c014180 	lui	at,0x4180
 188:	44819000 	mtc1	at,$f18
 18c:	3c0141f0 	lui	at,0x41f0
 190:	44815000 	mtc1	at,$f10
 194:	4612a102 	mul.s	$f4,$f20,$f18
 198:	02402025 	move	a0,s2
 19c:	02802825 	move	a1,s4
 1a0:	460a0402 	mul.s	$f16,$f0,$f10
 1a4:	02a03025 	move	a2,s5
 1a8:	02c03825 	move	a3,s6
 1ac:	461c2180 	add.s	$f6,$f4,$f28
 1b0:	461c8480 	add.s	$f18,$f16,$f28
 1b4:	4600320d 	trunc.w.s	$f8,$f6
 1b8:	4600910d 	trunc.w.s	$f4,$f18
 1bc:	440f4000 	mfc1	t7,$f8
 1c0:	44192000 	mfc1	t9,$f4
 1c4:	afaf0010 	sw	t7,16(sp)
 1c8:	0c000000 	jal	0 <func_808B7710>
 1cc:	afb90014 	sw	t9,20(sp)
 1d0:	26100001 	addiu	s0,s0,1
 1d4:	1613ffbe 	bne	s0,s3,d0 <func_808B7770+0x70>
 1d8:	00000000 	nop
 1dc:	8fbf006c 	lw	ra,108(sp)
 1e0:	d7b40020 	ldc1	$f20,32(sp)
 1e4:	d7b60028 	ldc1	$f22,40(sp)
 1e8:	d7b80030 	ldc1	$f24,48(sp)
 1ec:	d7ba0038 	ldc1	$f26,56(sp)
 1f0:	d7bc0040 	ldc1	$f28,64(sp)
 1f4:	d7be0048 	ldc1	$f30,72(sp)
 1f8:	8fb00050 	lw	s0,80(sp)
 1fc:	8fb10054 	lw	s1,84(sp)
 200:	8fb20058 	lw	s2,88(sp)
 204:	8fb3005c 	lw	s3,92(sp)
 208:	8fb40060 	lw	s4,96(sp)
 20c:	8fb50064 	lw	s5,100(sp)
 210:	8fb60068 	lw	s6,104(sp)
 214:	03e00008 	jr	ra
 218:	27bd00b0 	addiu	sp,sp,176

0000021c <BgSpot18Basket_Init>:
 21c:	27bdffb0 	addiu	sp,sp,-80
 220:	afb10038 	sw	s1,56(sp)
 224:	00a08825 	move	s1,a1
 228:	afbf003c 	sw	ra,60(sp)
 22c:	afb00034 	sw	s0,52(sp)
 230:	00808025 	move	s0,a0
 234:	afa00044 	sw	zero,68(sp)
 238:	0c000000 	jal	0 <func_808B7710>
 23c:	24050003 	li	a1,3
 240:	02002025 	move	a0,s0
 244:	0c000000 	jal	0 <func_808B7710>
 248:	02202825 	move	a1,s1
 24c:	3c040600 	lui	a0,0x600
 250:	24842154 	addiu	a0,a0,8532
 254:	0c000000 	jal	0 <func_808B7710>
 258:	27a50044 	addiu	a1,sp,68
 25c:	02202025 	move	a0,s1
 260:	26250810 	addiu	a1,s1,2064
 264:	02003025 	move	a2,s0
 268:	0c000000 	jal	0 <func_808B7710>
 26c:	8fa70044 	lw	a3,68(sp)
 270:	3c050000 	lui	a1,0x0
 274:	ae02014c 	sw	v0,332(s0)
 278:	24a50000 	addiu	a1,a1,0
 27c:	0c000000 	jal	0 <func_808B7710>
 280:	02002025 	move	a0,s0
 284:	3c060000 	lui	a2,0x0
 288:	24c60000 	addiu	a2,a2,0
 28c:	260400b4 	addiu	a0,s0,180
 290:	24050000 	li	a1,0
 294:	0c000000 	jal	0 <func_808B7710>
 298:	3c074170 	lui	a3,0x4170
 29c:	3c010000 	lui	at,0x0
 2a0:	c4260000 	lwc1	$f6,0(at)
 2a4:	c604000c 	lwc1	$f4,12(s0)
 2a8:	8605001c 	lh	a1,28(s0)
 2ac:	02202025 	move	a0,s1
 2b0:	46062200 	add.s	$f8,$f4,$f6
 2b4:	00052a03 	sra	a1,a1,0x8
 2b8:	30a5003f 	andi	a1,a1,0x3f
 2bc:	e608000c 	swc1	$f8,12(s0)
 2c0:	c60a000c 	lwc1	$f10,12(s0)
 2c4:	0c000000 	jal	0 <func_808B7710>
 2c8:	e60a0028 	swc1	$f10,40(s0)
 2cc:	10400005 	beqz	v0,2e4 <BgSpot18Basket_Init+0xc8>
 2d0:	00000000 	nop
 2d4:	0c000000 	jal	0 <func_808B7710>
 2d8:	02002025 	move	a0,s0
 2dc:	10000029 	b	384 <BgSpot18Basket_Init+0x168>
 2e0:	8fbf003c 	lw	ra,60(sp)
 2e4:	0c000000 	jal	0 <func_808B7710>
 2e8:	02002025 	move	a0,s0
 2ec:	c6100024 	lwc1	$f16,36(s0)
 2f0:	2408ffff 	li	t0,-1
 2f4:	26241c24 	addiu	a0,s1,7204
 2f8:	e7b00010 	swc1	$f16,16(sp)
 2fc:	c6120028 	lwc1	$f18,40(s0)
 300:	02002825 	move	a1,s0
 304:	02203025 	move	a2,s1
 308:	e7b20014 	swc1	$f18,20(sp)
 30c:	c604002c 	lwc1	$f4,44(s0)
 310:	240701c3 	li	a3,451
 314:	e7a40018 	swc1	$f4,24(sp)
 318:	860e00b4 	lh	t6,180(s0)
 31c:	afae001c 	sw	t6,28(sp)
 320:	860f00b6 	lh	t7,182(s0)
 324:	25f81555 	addiu	t8,t7,5461
 328:	afb80020 	sw	t8,32(sp)
 32c:	861900b8 	lh	t9,184(s0)
 330:	afa80028 	sw	t0,40(sp)
 334:	0c000000 	jal	0 <func_808B7710>
 338:	afb90024 	sw	t9,36(sp)
 33c:	8e09011c 	lw	t1,284(s0)
 340:	3c040000 	lui	a0,0x0
 344:	5520000f 	bnezl	t1,384 <BgSpot18Basket_Init+0x168>
 348:	8fbf003c 	lw	ra,60(sp)
 34c:	0c000000 	jal	0 <func_808B7710>
 350:	24840000 	addiu	a0,a0,0
 354:	3c040000 	lui	a0,0x0
 358:	3c050000 	lui	a1,0x0
 35c:	24a50000 	addiu	a1,a1,0
 360:	24840000 	addiu	a0,a0,0
 364:	0c000000 	jal	0 <func_808B7710>
 368:	2406015f 	li	a2,351
 36c:	3c040000 	lui	a0,0x0
 370:	0c000000 	jal	0 <func_808B7710>
 374:	24840000 	addiu	a0,a0,0
 378:	0c000000 	jal	0 <func_808B7710>
 37c:	02002025 	move	a0,s0
 380:	8fbf003c 	lw	ra,60(sp)
 384:	8fb00034 	lw	s0,52(sp)
 388:	8fb10038 	lw	s1,56(sp)
 38c:	03e00008 	jr	ra
 390:	27bd0050 	addiu	sp,sp,80

00000394 <BgSpot18Basket_Destroy>:
 394:	27bdffe8 	addiu	sp,sp,-24
 398:	afa40018 	sw	a0,24(sp)
 39c:	8fae0018 	lw	t6,24(sp)
 3a0:	afbf0014 	sw	ra,20(sp)
 3a4:	00a03825 	move	a3,a1
 3a8:	00a02025 	move	a0,a1
 3ac:	8dc6014c 	lw	a2,332(t6)
 3b0:	afa7001c 	sw	a3,28(sp)
 3b4:	0c000000 	jal	0 <func_808B7710>
 3b8:	24a50810 	addiu	a1,a1,2064
 3bc:	8fa50018 	lw	a1,24(sp)
 3c0:	8fa4001c 	lw	a0,28(sp)
 3c4:	0c000000 	jal	0 <func_808B7710>
 3c8:	24a50164 	addiu	a1,a1,356
 3cc:	8fbf0014 	lw	ra,20(sp)
 3d0:	27bd0018 	addiu	sp,sp,24
 3d4:	03e00008 	jr	ra
 3d8:	00000000 	nop

000003dc <func_808B7AEC>:
 3dc:	3c0e0000 	lui	t6,0x0
 3e0:	25ce0000 	addiu	t6,t6,0
 3e4:	03e00008 	jr	ra
 3e8:	ac8e0204 	sw	t6,516(a0)

000003ec <func_808B7AFC>:
 3ec:	27bdffe0 	addiu	sp,sp,-32
 3f0:	afa40020 	sw	a0,32(sp)
 3f4:	8fae0020 	lw	t6,32(sp)
 3f8:	afbf001c 	sw	ra,28(sp)
 3fc:	afa50024 	sw	a1,36(sp)
 400:	00a02025 	move	a0,a1
 404:	85c5001c 	lh	a1,28(t6)
 408:	00052a03 	sra	a1,a1,0x8
 40c:	0c000000 	jal	0 <func_808B7710>
 410:	30a5003f 	andi	a1,a1,0x3f
 414:	10400008 	beqz	v0,438 <func_808B7AFC+0x4c>
 418:	8fa40024 	lw	a0,36(sp)
 41c:	2405107c 	li	a1,4220
 420:	24060050 	li	a2,80
 424:	8fa70020 	lw	a3,32(sp)
 428:	0c000000 	jal	0 <func_808B7710>
 42c:	afa00010 	sw	zero,16(sp)
 430:	0c000000 	jal	0 <func_808B7710>
 434:	8fa40020 	lw	a0,32(sp)
 438:	8fbf001c 	lw	ra,28(sp)
 43c:	27bd0020 	addiu	sp,sp,32
 440:	03e00008 	jr	ra
 444:	00000000 	nop

00000448 <func_808B7B58>:
 448:	3c0e0000 	lui	t6,0x0
 44c:	25ce0000 	addiu	t6,t6,0
 450:	ac8e0204 	sw	t6,516(a0)
 454:	03e00008 	jr	ra
 458:	a4800216 	sh	zero,534(a0)

0000045c <func_808B7B6C>:
 45c:	27bdffe8 	addiu	sp,sp,-24
 460:	afbf0014 	sw	ra,20(sp)
 464:	afa5001c 	sw	a1,28(sp)
 468:	848e0216 	lh	t6,534(a0)
 46c:	29c10015 	slti	at,t6,21
 470:	54200008 	bnezl	at,494 <func_808B7B6C+0x38>
 474:	8fbf0014 	lw	ra,20(sp)
 478:	0c000000 	jal	0 <func_808B7710>
 47c:	afa40018 	sw	a0,24(sp)
 480:	8fa40018 	lw	a0,24(sp)
 484:	8c8f011c 	lw	t7,284(a0)
 488:	ade00118 	sw	zero,280(t7)
 48c:	ac80011c 	sw	zero,284(a0)
 490:	8fbf0014 	lw	ra,20(sp)
 494:	27bd0018 	addiu	sp,sp,24
 498:	03e00008 	jr	ra
 49c:	00000000 	nop

000004a0 <func_808B7BB0>:
 4a0:	a480020c 	sh	zero,524(a0)
 4a4:	848f020c 	lh	t7,524(a0)
 4a8:	3c0e0000 	lui	t6,0x0
 4ac:	25ce0000 	addiu	t6,t6,0
 4b0:	ac8e0204 	sw	t6,516(a0)
 4b4:	03e00008 	jr	ra
 4b8:	a48f0210 	sh	t7,528(a0)

000004bc <func_808B7BCC>:
 4bc:	27bdffd8 	addiu	sp,sp,-40
 4c0:	afb00020 	sw	s0,32(sp)
 4c4:	00808025 	move	s0,a0
 4c8:	afbf0024 	sw	ra,36(sp)
 4cc:	afa5002c 	sw	a1,44(sp)
 4d0:	240501f4 	li	a1,500
 4d4:	24840210 	addiu	a0,a0,528
 4d8:	0c000000 	jal	0 <func_808B7710>
 4dc:	2406001e 	li	a2,30
 4e0:	860e00b6 	lh	t6,182(s0)
 4e4:	860f0210 	lh	t7,528(s0)
 4e8:	26040208 	addiu	a0,s0,520
 4ec:	3c054248 	lui	a1,0x4248
 4f0:	01cfc021 	addu	t8,t6,t7
 4f4:	a61800b6 	sh	t8,182(s0)
 4f8:	0c000000 	jal	0 <func_808B7710>
 4fc:	3c063fc0 	lui	a2,0x3fc0
 500:	2604020c 	addiu	a0,s0,524
 504:	24050190 	li	a1,400
 508:	0c000000 	jal	0 <func_808B7710>
 50c:	2406000f 	li	a2,15
 510:	8619020e 	lh	t9,526(s0)
 514:	8608020c 	lh	t0,524(s0)
 518:	03284821 	addu	t1,t9,t0
 51c:	a609020e 	sh	t1,526(s0)
 520:	0c000000 	jal	0 <func_808B7710>
 524:	8604020e 	lh	a0,526(s0)
 528:	c6040208 	lwc1	$f4,520(s0)
 52c:	c6080008 	lwc1	$f8,8(s0)
 530:	8604020e 	lh	a0,526(s0)
 534:	46040182 	mul.s	$f6,$f0,$f4
 538:	46083280 	add.s	$f10,$f6,$f8
 53c:	0c000000 	jal	0 <func_808B7710>
 540:	e60a0024 	swc1	$f10,36(s0)
 544:	c6100208 	lwc1	$f16,520(s0)
 548:	c6040010 	lwc1	$f4,16(s0)
 54c:	920a0175 	lbu	t2,373(s0)
 550:	46100482 	mul.s	$f18,$f0,$f16
 554:	314b0002 	andi	t3,t2,0x2
 558:	46049180 	add.s	$f6,$f18,$f4
 55c:	1160002a 	beqz	t3,608 <func_808B7BCC+0x14c>
 560:	e606002c 	swc1	$f6,44(s0)
 564:	8e03016c 	lw	v1,364(s0)
 568:	50600028 	beqzl	v1,60c <func_808B7BCC+0x150>
 56c:	02002025 	move	a0,s0
 570:	c4680028 	lwc1	$f8,40(v1)
 574:	c60a0028 	lwc1	$f10,40(s0)
 578:	3c0142f0 	lui	at,0x42f0
 57c:	44818000 	mtc1	at,$f16
 580:	460a4001 	sub.s	$f0,$f8,$f10
 584:	3c014348 	lui	at,0x4348
 588:	4600803c 	c.lt.s	$f16,$f0
 58c:	00000000 	nop
 590:	4502001e 	bc1fl	60c <func_808B7BCC+0x150>
 594:	02002025 	move	a0,s0
 598:	44819000 	mtc1	at,$f18
 59c:	00000000 	nop
 5a0:	4612003c 	c.lt.s	$f0,$f18
 5a4:	00000000 	nop
 5a8:	45020018 	bc1fl	60c <func_808B7BCC+0x150>
 5ac:	02002025 	move	a0,s0
 5b0:	c46c002c 	lwc1	$f12,44(v1)
 5b4:	c46e0024 	lwc1	$f14,36(v1)
 5b8:	8e06002c 	lw	a2,44(s0)
 5bc:	0c000000 	jal	0 <func_808B7710>
 5c0:	8e070024 	lw	a3,36(s0)
 5c4:	3c014480 	lui	at,0x4480
 5c8:	44812000 	mtc1	at,$f4
 5cc:	8fa4002c 	lw	a0,44(sp)
 5d0:	24051072 	li	a1,4210
 5d4:	4604003c 	c.lt.s	$f0,$f4
 5d8:	240600f0 	li	a2,240
 5dc:	02003825 	move	a3,s0
 5e0:	4502000a 	bc1fl	60c <func_808B7BCC+0x150>
 5e4:	02002025 	move	a0,s0
 5e8:	0c000000 	jal	0 <func_808B7710>
 5ec:	afa00010 	sw	zero,16(sp)
 5f0:	0c000000 	jal	0 <func_808B7710>
 5f4:	02002025 	move	a0,s0
 5f8:	8fa4002c 	lw	a0,44(sp)
 5fc:	8e06014c 	lw	a2,332(s0)
 600:	0c000000 	jal	0 <func_808B7710>
 604:	24850810 	addiu	a1,a0,2064
 608:	02002025 	move	a0,s0
 60c:	0c000000 	jal	0 <func_808B7710>
 610:	24052024 	li	a1,8228
 614:	8fbf0024 	lw	ra,36(sp)
 618:	8fb00020 	lw	s0,32(sp)
 61c:	27bd0028 	addiu	sp,sp,40
 620:	03e00008 	jr	ra
 624:	00000000 	nop

00000628 <func_808B7D38>:
 628:	3c0e0000 	lui	t6,0x0
 62c:	25ce0000 	addiu	t6,t6,0
 630:	ac8e0204 	sw	t6,516(a0)
 634:	a4800216 	sh	zero,534(a0)
 638:	03e00008 	jr	ra
 63c:	a4800214 	sh	zero,532(a0)

00000640 <func_808B7D50>:
 640:	27bdffe0 	addiu	sp,sp,-32
 644:	afbf001c 	sw	ra,28(sp)
 648:	afb00018 	sw	s0,24(sp)
 64c:	afa50024 	sw	a1,36(sp)
 650:	848e0216 	lh	t6,534(a0)
 654:	00808025 	move	s0,a0
 658:	29c10079 	slti	at,t6,121
 65c:	14200006 	bnez	at,678 <func_808B7D50+0x38>
 660:	24840210 	addiu	a0,a0,528
 664:	240503e8 	li	a1,1000
 668:	0c000000 	jal	0 <func_808B7710>
 66c:	24060032 	li	a2,50
 670:	10000006 	b	68c <func_808B7D50+0x4c>
 674:	860f00b6 	lh	t7,182(s0)
 678:	26040210 	addiu	a0,s0,528
 67c:	24050bb8 	li	a1,3000
 680:	0c000000 	jal	0 <func_808B7710>
 684:	24060064 	li	a2,100
 688:	860f00b6 	lh	t7,182(s0)
 68c:	86180210 	lh	t8,528(s0)
 690:	86080216 	lh	t0,534(s0)
 694:	01f8c821 	addu	t9,t7,t8
 698:	29010046 	slti	at,t0,70
 69c:	10200007 	beqz	at,6bc <func_808B7D50+0x7c>
 6a0:	a61900b6 	sh	t9,182(s0)
 6a4:	26040208 	addiu	a0,s0,520
 6a8:	3c0542c8 	lui	a1,0x42c8
 6ac:	0c000000 	jal	0 <func_808B7710>
 6b0:	3c064000 	lui	a2,0x4000
 6b4:	10000006 	b	6d0 <func_808B7D50+0x90>
 6b8:	2604020c 	addiu	a0,s0,524
 6bc:	26040208 	addiu	a0,s0,520
 6c0:	24050000 	li	a1,0
 6c4:	0c000000 	jal	0 <func_808B7710>
 6c8:	3c064000 	lui	a2,0x4000
 6cc:	2604020c 	addiu	a0,s0,524
 6d0:	240503e8 	li	a1,1000
 6d4:	0c000000 	jal	0 <func_808B7710>
 6d8:	24060014 	li	a2,20
 6dc:	8609020e 	lh	t1,526(s0)
 6e0:	860a020c 	lh	t2,524(s0)
 6e4:	012a5821 	addu	t3,t1,t2
 6e8:	a60b020e 	sh	t3,526(s0)
 6ec:	0c000000 	jal	0 <func_808B7710>
 6f0:	8604020e 	lh	a0,526(s0)
 6f4:	c6040208 	lwc1	$f4,520(s0)
 6f8:	c6080008 	lwc1	$f8,8(s0)
 6fc:	8604020e 	lh	a0,526(s0)
 700:	46040182 	mul.s	$f6,$f0,$f4
 704:	46083280 	add.s	$f10,$f6,$f8
 708:	0c000000 	jal	0 <func_808B7710>
 70c:	e60a0024 	swc1	$f10,36(s0)
 710:	c6100208 	lwc1	$f16,520(s0)
 714:	c6040010 	lwc1	$f4,16(s0)
 718:	860c0212 	lh	t4,530(s0)
 71c:	46100482 	mul.s	$f18,$f0,$f16
 720:	26040214 	addiu	a0,s0,532
 724:	258d0bb8 	addiu	t5,t4,3000
 728:	a60d0212 	sh	t5,530(s0)
 72c:	240505dc 	li	a1,1500
 730:	2406001e 	li	a2,30
 734:	46049180 	add.s	$f6,$f18,$f4
 738:	0c000000 	jal	0 <func_808B7710>
 73c:	e606002c 	swc1	$f6,44(s0)
 740:	0c000000 	jal	0 <func_808B7710>
 744:	86040212 	lh	a0,530(s0)
 748:	860e0214 	lh	t6,532(s0)
 74c:	86040212 	lh	a0,530(s0)
 750:	448e4000 	mtc1	t6,$f8
 754:	00000000 	nop
 758:	468042a0 	cvt.s.w	$f10,$f8
 75c:	460a0402 	mul.s	$f16,$f0,$f10
 760:	4600848d 	trunc.w.s	$f18,$f16
 764:	44189000 	mfc1	t8,$f18
 768:	0c000000 	jal	0 <func_808B7710>
 76c:	a61800b4 	sh	t8,180(s0)
 770:	86190214 	lh	t9,532(s0)
 774:	46000107 	neg.s	$f4,$f0
 778:	86020216 	lh	v0,534(s0)
 77c:	44993000 	mtc1	t9,$f6
 780:	2841008d 	slti	at,v0,141
 784:	46803220 	cvt.s.w	$f8,$f6
 788:	46082282 	mul.s	$f10,$f4,$f8
 78c:	4600540d 	trunc.w.s	$f16,$f10
 790:	44098000 	mfc1	t1,$f16
 794:	14200004 	bnez	at,7a8 <func_808B7D50+0x168>
 798:	a60900b8 	sh	t1,184(s0)
 79c:	0c000000 	jal	0 <func_808B7710>
 7a0:	02002025 	move	a0,s0
 7a4:	86020216 	lh	v0,534(s0)
 7a8:	28410050 	slti	at,v0,80
 7ac:	10200007 	beqz	at,7cc <func_808B7D50+0x18c>
 7b0:	02002025 	move	a0,s0
 7b4:	02002025 	move	a0,s0
 7b8:	8fa50024 	lw	a1,36(sp)
 7bc:	0c000000 	jal	0 <func_808B7710>
 7c0:	3c063f80 	lui	a2,0x3f80
 7c4:	10000006 	b	7e0 <func_808B7D50+0x1a0>
 7c8:	860a0210 	lh	t2,528(s0)
 7cc:	3c063f4c 	lui	a2,0x3f4c
 7d0:	34c6cccd 	ori	a2,a2,0xcccd
 7d4:	0c000000 	jal	0 <func_808B7710>
 7d8:	8fa50024 	lw	a1,36(sp)
 7dc:	860a0210 	lh	t2,528(s0)
 7e0:	3c010000 	lui	at,0x0
 7e4:	c4240000 	lwc1	$f4,0(at)
 7e8:	254bfe0c 	addiu	t3,t2,-500
 7ec:	448b9000 	mtc1	t3,$f18
 7f0:	44801000 	mtc1	zero,$f2
 7f4:	3c013fc0 	lui	at,0x3fc0
 7f8:	468091a0 	cvt.s.w	$f6,$f18
 7fc:	260400e4 	addiu	a0,s0,228
 800:	46043002 	mul.s	$f0,$f6,$f4
 804:	4602003c 	c.lt.s	$f0,$f2
 808:	00000000 	nop
 80c:	45020004 	bc1fl	820 <func_808B7D50+0x1e0>
 810:	44816000 	mtc1	at,$f12
 814:	1000000b 	b	844 <func_808B7D50+0x204>
 818:	46001006 	mov.s	$f0,$f2
 81c:	44816000 	mtc1	at,$f12
 820:	00000000 	nop
 824:	4600603c 	c.lt.s	$f12,$f0
 828:	00000000 	nop
 82c:	45020004 	bc1fl	840 <func_808B7D50+0x200>
 830:	46000086 	mov.s	$f2,$f0
 834:	10000002 	b	840 <func_808B7D50+0x200>
 838:	46006086 	mov.s	$f2,$f12
 83c:	46000086 	mov.s	$f2,$f0
 840:	46001006 	mov.s	$f0,$f2
 844:	44060000 	mfc1	a2,$f0
 848:	0c000000 	jal	0 <func_808B7710>
 84c:	240500cb 	li	a1,203
 850:	8fbf001c 	lw	ra,28(sp)
 854:	8fb00018 	lw	s0,24(sp)
 858:	27bd0020 	addiu	sp,sp,32
 85c:	03e00008 	jr	ra
 860:	00000000 	nop

00000864 <func_808B7F74>:
 864:	848200b6 	lh	v0,182(a0)
 868:	3c0e0000 	lui	t6,0x0
 86c:	25ce0000 	addiu	t6,t6,0
 870:	2841d16d 	slti	at,v0,-11923
 874:	14200003 	bnez	at,884 <func_808B7F74+0x20>
 878:	ac8e0204 	sw	t6,516(a0)
 87c:	28417c19 	slti	at,v0,31769
 880:	14200003 	bnez	at,890 <func_808B7F74+0x2c>
 884:	240f0002 	li	t7,2
 888:	10000007 	b	8a8 <func_808B7F74+0x44>
 88c:	a48f0218 	sh	t7,536(a0)
 890:	284126c2 	slti	at,v0,9922
 894:	10200003 	beqz	at,8a4 <func_808B7F74+0x40>
 898:	24180001 	li	t8,1
 89c:	10000002 	b	8a8 <func_808B7F74+0x44>
 8a0:	a4980218 	sh	t8,536(a0)
 8a4:	a4800218 	sh	zero,536(a0)
 8a8:	03e00008 	jr	ra
 8ac:	a4800216 	sh	zero,534(a0)

000008b0 <func_808B7FC0>:
 8b0:	27bdffd8 	addiu	sp,sp,-40
 8b4:	afbf001c 	sw	ra,28(sp)
 8b8:	afb00018 	sw	s0,24(sp)
 8bc:	afa5002c 	sw	a1,44(sp)
 8c0:	848e0212 	lh	t6,530(a0)
 8c4:	84980216 	lh	t8,534(a0)
 8c8:	00808025 	move	s0,a0
 8cc:	25cf0bb8 	addiu	t7,t6,3000
 8d0:	2b01000d 	slti	at,t8,13
 8d4:	14200007 	bnez	at,8f4 <func_808B7FC0+0x44>
 8d8:	a48f0212 	sh	t7,530(a0)
 8dc:	24840214 	addiu	a0,a0,532
 8e0:	00002825 	move	a1,zero
 8e4:	0c000000 	jal	0 <func_808B7710>
 8e8:	24060037 	li	a2,55
 8ec:	10000002 	b	8f8 <func_808B7FC0+0x48>
 8f0:	afa20020 	sw	v0,32(sp)
 8f4:	afa00020 	sw	zero,32(sp)
 8f8:	0c000000 	jal	0 <func_808B7710>
 8fc:	86040212 	lh	a0,530(s0)
 900:	86190214 	lh	t9,532(s0)
 904:	86040212 	lh	a0,530(s0)
 908:	44992000 	mtc1	t9,$f4
 90c:	00000000 	nop
 910:	468021a0 	cvt.s.w	$f6,$f4
 914:	46060202 	mul.s	$f8,$f0,$f6
 918:	4600428d 	trunc.w.s	$f10,$f8
 91c:	44095000 	mfc1	t1,$f10
 920:	0c000000 	jal	0 <func_808B7710>
 924:	a60900b4 	sh	t1,180(s0)
 928:	860a0214 	lh	t2,532(s0)
 92c:	46000407 	neg.s	$f16,$f0
 930:	26040210 	addiu	a0,s0,528
 934:	448a9000 	mtc1	t2,$f18
 938:	240501f4 	li	a1,500
 93c:	2406000a 	li	a2,10
 940:	46809120 	cvt.s.w	$f4,$f18
 944:	46048182 	mul.s	$f6,$f16,$f4
 948:	4600320d 	trunc.w.s	$f8,$f6
 94c:	440c4000 	mfc1	t4,$f8
 950:	0c000000 	jal	0 <func_808B7710>
 954:	a60c00b8 	sh	t4,184(s0)
 958:	860d00b6 	lh	t5,182(s0)
 95c:	860e0210 	lh	t6,528(s0)
 960:	01ae7821 	addu	t7,t5,t6
 964:	a60f00b6 	sh	t7,182(s0)
 968:	8fb80020 	lw	t8,32(sp)
 96c:	53000014 	beqzl	t8,9c0 <func_808B7FC0+0x110>
 970:	860d0216 	lh	t5,534(s0)
 974:	86190218 	lh	t9,536(s0)
 978:	3c020000 	lui	v0,0x0
 97c:	860900b6 	lh	t1,182(s0)
 980:	00194040 	sll	t0,t9,0x1
 984:	00481021 	addu	v0,v0,t0
 988:	84420000 	lh	v0,0(v0)
 98c:	02002025 	move	a0,s0
 990:	01225023 	subu	t2,t1,v0
 994:	000a5c00 	sll	t3,t2,0x10
 998:	000b6403 	sra	t4,t3,0x10
 99c:	05820008 	bltzl	t4,9c0 <func_808B7FC0+0x110>
 9a0:	860d0216 	lh	t5,534(s0)
 9a4:	0c000000 	jal	0 <func_808B7710>
 9a8:	a60200b6 	sh	v0,182(s0)
 9ac:	8fa4002c 	lw	a0,44(sp)
 9b0:	8e06014c 	lw	a2,332(s0)
 9b4:	0c000000 	jal	0 <func_808B7710>
 9b8:	24850810 	addiu	a1,a0,2064
 9bc:	860d0216 	lh	t5,534(s0)
 9c0:	02002025 	move	a0,s0
 9c4:	8fa5002c 	lw	a1,44(sp)
 9c8:	29a1001e 	slti	at,t5,30
 9cc:	10200007 	beqz	at,9ec <func_808B7FC0+0x13c>
 9d0:	3c063e99 	lui	a2,0x3e99
 9d4:	02002025 	move	a0,s0
 9d8:	8fa5002c 	lw	a1,44(sp)
 9dc:	0c000000 	jal	0 <func_808B7710>
 9e0:	3c063f00 	lui	a2,0x3f00
 9e4:	10000004 	b	9f8 <func_808B7FC0+0x148>
 9e8:	860e0210 	lh	t6,528(s0)
 9ec:	0c000000 	jal	0 <func_808B7710>
 9f0:	34c6999a 	ori	a2,a2,0x999a
 9f4:	860e0210 	lh	t6,528(s0)
 9f8:	3c010000 	lui	at,0x0
 9fc:	c4300000 	lwc1	$f16,0(at)
 a00:	25cffe0c 	addiu	t7,t6,-500
 a04:	448f5000 	mtc1	t7,$f10
 a08:	44801000 	mtc1	zero,$f2
 a0c:	3c013fc0 	lui	at,0x3fc0
 a10:	468054a0 	cvt.s.w	$f18,$f10
 a14:	260400e4 	addiu	a0,s0,228
 a18:	46109002 	mul.s	$f0,$f18,$f16
 a1c:	4602003c 	c.lt.s	$f0,$f2
 a20:	00000000 	nop
 a24:	45020004 	bc1fl	a38 <func_808B7FC0+0x188>
 a28:	44816000 	mtc1	at,$f12
 a2c:	1000000b 	b	a5c <func_808B7FC0+0x1ac>
 a30:	46001006 	mov.s	$f0,$f2
 a34:	44816000 	mtc1	at,$f12
 a38:	00000000 	nop
 a3c:	4600603c 	c.lt.s	$f12,$f0
 a40:	00000000 	nop
 a44:	45020004 	bc1fl	a58 <func_808B7FC0+0x1a8>
 a48:	46000086 	mov.s	$f2,$f0
 a4c:	10000002 	b	a58 <func_808B7FC0+0x1a8>
 a50:	46006086 	mov.s	$f2,$f12
 a54:	46000086 	mov.s	$f2,$f0
 a58:	46001006 	mov.s	$f0,$f2
 a5c:	44060000 	mfc1	a2,$f0
 a60:	0c000000 	jal	0 <func_808B7710>
 a64:	240500cb 	li	a1,203
 a68:	8fbf001c 	lw	ra,28(sp)
 a6c:	8fb00018 	lw	s0,24(sp)
 a70:	27bd0028 	addiu	sp,sp,40
 a74:	03e00008 	jr	ra
 a78:	00000000 	nop

00000a7c <func_808B818C>:
 a7c:	3c0e0000 	lui	t6,0x0
 a80:	25ce0000 	addiu	t6,t6,0
 a84:	ac8e0204 	sw	t6,516(a0)
 a88:	03e00008 	jr	ra
 a8c:	a4800216 	sh	zero,534(a0)

00000a90 <func_808B81A0>:
 a90:	27bdffa8 	addiu	sp,sp,-88
 a94:	afbf0034 	sw	ra,52(sp)
 a98:	afb40030 	sw	s4,48(sp)
 a9c:	afb3002c 	sw	s3,44(sp)
 aa0:	afb20028 	sw	s2,40(sp)
 aa4:	afb10024 	sw	s1,36(sp)
 aa8:	afb00020 	sw	s0,32(sp)
 aac:	f7b40018 	sdc1	$f20,24(sp)
 ab0:	84820216 	lh	v0,534(a0)
 ab4:	24030001 	li	v1,1
 ab8:	00808025 	move	s0,a0
 abc:	1462007e 	bne	v1,v0,cb8 <func_808B81A0+0x228>
 ac0:	00a0a025 	move	s4,a1
 ac4:	c4840024 	lwc1	$f4,36(a0)
 ac8:	3c01432a 	lui	at,0x432a
 acc:	44814000 	mtc1	at,$f8
 ad0:	e7a40044 	swc1	$f4,68(sp)
 ad4:	c4860028 	lwc1	$f6,40(a0)
 ad8:	3c120000 	lui	s2,0x0
 adc:	26520000 	addiu	s2,s2,0
 ae0:	46083280 	add.s	$f10,$f6,$f8
 ae4:	3c014130 	lui	at,0x4130
 ae8:	27b30044 	addiu	s3,sp,68
 aec:	24110003 	li	s1,3
 af0:	e7aa0048 	swc1	$f10,72(sp)
 af4:	c490002c 	lwc1	$f16,44(a0)
 af8:	e7b0004c 	swc1	$f16,76(sp)
 afc:	84820218 	lh	v0,536(a0)
 b00:	14400012 	bnez	v0,b4c <func_808B81A0+0xbc>
 b04:	00000000 	nop
 b08:	4481a000 	mtc1	at,$f20
 b0c:	00008025 	move	s0,zero
 b10:	02802025 	move	a0,s4
 b14:	02602825 	move	a1,s3
 b18:	0c000000 	jal	0 <func_808B7710>
 b1c:	24060004 	li	a2,4
 b20:	10400005 	beqz	v0,b38 <func_808B81A0+0xa8>
 b24:	00107040 	sll	t6,s0,0x1
 b28:	e4540060 	swc1	$f20,96(v0)
 b2c:	024e7821 	addu	t7,s2,t6
 b30:	85f80000 	lh	t8,0(t7)
 b34:	a4580032 	sh	t8,50(v0)
 b38:	26100001 	addiu	s0,s0,1
 b3c:	5611fff5 	bnel	s0,s1,b14 <func_808B81A0+0x84>
 b40:	02802025 	move	a0,s4
 b44:	1000006f 	b	d04 <func_808B81A0+0x274>
 b48:	8fbf0034 	lw	ra,52(sp)
 b4c:	14620016 	bne	v1,v0,ba8 <func_808B81A0+0x118>
 b50:	3c014130 	lui	at,0x4130
 b54:	3c120000 	lui	s2,0x0
 b58:	4481a000 	mtc1	at,$f20
 b5c:	26520000 	addiu	s2,s2,0
 b60:	00008025 	move	s0,zero
 b64:	27b30044 	addiu	s3,sp,68
 b68:	24110003 	li	s1,3
 b6c:	02802025 	move	a0,s4
 b70:	02602825 	move	a1,s3
 b74:	0c000000 	jal	0 <func_808B7710>
 b78:	00003025 	move	a2,zero
 b7c:	10400005 	beqz	v0,b94 <func_808B81A0+0x104>
 b80:	0010c840 	sll	t9,s0,0x1
 b84:	e4540060 	swc1	$f20,96(v0)
 b88:	02594021 	addu	t0,s2,t9
 b8c:	85090000 	lh	t1,0(t0)
 b90:	a4490032 	sh	t1,50(v0)
 b94:	26100001 	addiu	s0,s0,1
 b98:	5611fff5 	bnel	s0,s1,b70 <func_808B81A0+0xe0>
 b9c:	02802025 	move	a0,s4
 ba0:	10000058 	b	d04 <func_808B81A0+0x274>
 ba4:	8fbf0034 	lw	ra,52(sp)
 ba8:	24030002 	li	v1,2
 bac:	54620055 	bnel	v1,v0,d04 <func_808B81A0+0x274>
 bb0:	8fbf0034 	lw	ra,52(sp)
 bb4:	920a021a 	lbu	t2,538(s0)
 bb8:	55400007 	bnezl	t2,bd8 <func_808B81A0+0x148>
 bbc:	27b30044 	addiu	s3,sp,68
 bc0:	8605001c 	lh	a1,28(s0)
 bc4:	02802025 	move	a0,s4
 bc8:	0c000000 	jal	0 <func_808B7710>
 bcc:	30a5003f 	andi	a1,a1,0x3f
 bd0:	1040000f 	beqz	v0,c10 <func_808B81A0+0x180>
 bd4:	27b30044 	addiu	s3,sp,68
 bd8:	02602825 	move	a1,s3
 bdc:	02802025 	move	a0,s4
 be0:	0c000000 	jal	0 <func_808B7710>
 be4:	24060014 	li	a2,20
 be8:	10400007 	beqz	v0,c08 <func_808B81A0+0x178>
 bec:	3c014130 	lui	at,0x4130
 bf0:	4481a000 	mtc1	at,$f20
 bf4:	3c120000 	lui	s2,0x0
 bf8:	26520000 	addiu	s2,s2,0
 bfc:	e4540060 	swc1	$f20,96(v0)
 c00:	864b0002 	lh	t3,2(s2)
 c04:	a44b0032 	sh	t3,50(v0)
 c08:	10000016 	b	c64 <func_808B81A0+0x1d4>
 c0c:	3c014130 	lui	at,0x4130
 c10:	8606001c 	lh	a2,28(s0)
 c14:	27b30044 	addiu	s3,sp,68
 c18:	02602825 	move	a1,s3
 c1c:	30c6003f 	andi	a2,a2,0x3f
 c20:	00063200 	sll	a2,a2,0x8
 c24:	34c60006 	ori	a2,a2,0x6
 c28:	00063400 	sll	a2,a2,0x10
 c2c:	00063403 	sra	a2,a2,0x10
 c30:	0c000000 	jal	0 <func_808B7710>
 c34:	02802025 	move	a0,s4
 c38:	10400009 	beqz	v0,c60 <func_808B81A0+0x1d0>
 c3c:	3c014130 	lui	at,0x4130
 c40:	4481a000 	mtc1	at,$f20
 c44:	3c120000 	lui	s2,0x0
 c48:	26520000 	addiu	s2,s2,0
 c4c:	e4540060 	swc1	$f20,96(v0)
 c50:	864c0002 	lh	t4,2(s2)
 c54:	240d0001 	li	t5,1
 c58:	a44c0032 	sh	t4,50(v0)
 c5c:	a20d021a 	sb	t5,538(s0)
 c60:	3c014130 	lui	at,0x4130
 c64:	4481a000 	mtc1	at,$f20
 c68:	3c120000 	lui	s2,0x0
 c6c:	26520000 	addiu	s2,s2,0
 c70:	02802025 	move	a0,s4
 c74:	02602825 	move	a1,s3
 c78:	0c000000 	jal	0 <func_808B7710>
 c7c:	24060002 	li	a2,2
 c80:	10400004 	beqz	v0,c94 <func_808B81A0+0x204>
 c84:	02802025 	move	a0,s4
 c88:	e4540060 	swc1	$f20,96(v0)
 c8c:	864e0000 	lh	t6,0(s2)
 c90:	a44e0032 	sh	t6,50(v0)
 c94:	02602825 	move	a1,s3
 c98:	0c000000 	jal	0 <func_808B7710>
 c9c:	24060001 	li	a2,1
 ca0:	50400018 	beqzl	v0,d04 <func_808B81A0+0x274>
 ca4:	8fbf0034 	lw	ra,52(sp)
 ca8:	e4540060 	swc1	$f20,96(v0)
 cac:	864f0004 	lh	t7,4(s2)
 cb0:	10000013 	b	d00 <func_808B81A0+0x270>
 cb4:	a44f0032 	sh	t7,50(v0)
 cb8:	24030002 	li	v1,2
 cbc:	1462000c 	bne	v1,v0,cf0 <func_808B81A0+0x260>
 cc0:	240100c8 	li	at,200
 cc4:	86180218 	lh	t8,536(s0)
 cc8:	14780005 	bne	v1,t8,ce0 <func_808B81A0+0x250>
 ccc:	00000000 	nop
 cd0:	0c000000 	jal	0 <func_808B7710>
 cd4:	24044802 	li	a0,18434
 cd8:	1000000a 	b	d04 <func_808B81A0+0x274>
 cdc:	8fbf0034 	lw	ra,52(sp)
 ce0:	0c000000 	jal	0 <func_808B7710>
 ce4:	24044807 	li	a0,18439
 ce8:	10000006 	b	d04 <func_808B81A0+0x274>
 cec:	8fbf0034 	lw	ra,52(sp)
 cf0:	54410004 	bnel	v0,at,d04 <func_808B81A0+0x274>
 cf4:	8fbf0034 	lw	ra,52(sp)
 cf8:	0c000000 	jal	0 <func_808B7710>
 cfc:	02002025 	move	a0,s0
 d00:	8fbf0034 	lw	ra,52(sp)
 d04:	d7b40018 	ldc1	$f20,24(sp)
 d08:	8fb00020 	lw	s0,32(sp)
 d0c:	8fb10024 	lw	s1,36(sp)
 d10:	8fb20028 	lw	s2,40(sp)
 d14:	8fb3002c 	lw	s3,44(sp)
 d18:	8fb40030 	lw	s4,48(sp)
 d1c:	03e00008 	jr	ra
 d20:	27bd0058 	addiu	sp,sp,88

00000d24 <BgSpot18Basket_Update>:
 d24:	27bdffc0 	addiu	sp,sp,-64
 d28:	afbf0024 	sw	ra,36(sp)
 d2c:	afb10020 	sw	s1,32(sp)
 d30:	afb0001c 	sw	s0,28(sp)
 d34:	848e0216 	lh	t6,534(a0)
 d38:	00808025 	move	s0,a0
 d3c:	00a08825 	move	s1,a1
 d40:	25cf0001 	addiu	t7,t6,1
 d44:	a48f0216 	sh	t7,534(a0)
 d48:	8e190204 	lw	t9,516(s0)
 d4c:	0320f809 	jalr	t9
 d50:	00000000 	nop
 d54:	26180024 	addiu	t8,s0,36
 d58:	afb80010 	sw	t8,16(sp)
 d5c:	262407c0 	addiu	a0,s1,1984
 d60:	26050078 	addiu	a1,s0,120
 d64:	27a60034 	addiu	a2,sp,52
 d68:	0c000000 	jal	0 <func_808B7710>
 d6c:	02003825 	move	a3,s0
 d70:	8e090204 	lw	t1,516(s0)
 d74:	3c080000 	lui	t0,0x0
 d78:	25080000 	addiu	t0,t0,0
 d7c:	11090014 	beq	t0,t1,dd0 <BgSpot18Basket_Update+0xac>
 d80:	e6000080 	swc1	$f0,128(s0)
 d84:	3c010001 	lui	at,0x1
 d88:	34211e60 	ori	at,at,0x1e60
 d8c:	02212821 	addu	a1,s1,at
 d90:	26060164 	addiu	a2,s0,356
 d94:	afa6002c 	sw	a2,44(sp)
 d98:	afa50030 	sw	a1,48(sp)
 d9c:	0c000000 	jal	0 <func_808B7710>
 da0:	02202025 	move	a0,s1
 da4:	8e0b0204 	lw	t3,516(s0)
 da8:	3c0a0000 	lui	t2,0x0
 dac:	254a0000 	addiu	t2,t2,0
 db0:	8fa50030 	lw	a1,48(sp)
 db4:	114b0006 	beq	t2,t3,dd0 <BgSpot18Basket_Update+0xac>
 db8:	8fa6002c 	lw	a2,44(sp)
 dbc:	920c0175 	lbu	t4,373(s0)
 dc0:	02202025 	move	a0,s1
 dc4:	318dfffd 	andi	t5,t4,0xfffd
 dc8:	0c000000 	jal	0 <func_808B7710>
 dcc:	a20d0175 	sb	t5,373(s0)
 dd0:	8fbf0024 	lw	ra,36(sp)
 dd4:	8fb0001c 	lw	s0,28(sp)
 dd8:	8fb10020 	lw	s1,32(sp)
 ddc:	03e00008 	jr	ra
 de0:	27bd0040 	addiu	sp,sp,64

00000de4 <BgSpot18Basket_Draw>:
 de4:	27bdffe0 	addiu	sp,sp,-32
 de8:	afa40020 	sw	a0,32(sp)
 dec:	afa50024 	sw	a1,36(sp)
 df0:	8fa50020 	lw	a1,32(sp)
 df4:	afbf0014 	sw	ra,20(sp)
 df8:	00002025 	move	a0,zero
 dfc:	24a50164 	addiu	a1,a1,356
 e00:	0c000000 	jal	0 <func_808B7710>
 e04:	afa50018 	sw	a1,24(sp)
 e08:	8fa50018 	lw	a1,24(sp)
 e0c:	0c000000 	jal	0 <func_808B7710>
 e10:	24040001 	li	a0,1
 e14:	3c050600 	lui	a1,0x600
 e18:	24a518b0 	addiu	a1,a1,6320
 e1c:	0c000000 	jal	0 <func_808B7710>
 e20:	8fa40024 	lw	a0,36(sp)
 e24:	8fbf0014 	lw	ra,20(sp)
 e28:	27bd0020 	addiu	sp,sp,32
 e2c:	03e00008 	jr	ra
 e30:	00000000 	nop
	...
