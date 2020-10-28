
build/src/overlays/actors/ovl_Bg_Jya_Goroiwa/z_bg_jya_goroiwa.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80897970>:
   0:	c4840024 	lwc1	$f4,36(a0)
   4:	8c82016c 	lw	v0,364(a0)
   8:	3c01426e 	lui	at,0x426e
   c:	4600218d 	trunc.w.s	$f6,$f4
  10:	44815000 	mtc1	at,$f10
  14:	24420030 	addiu	v0,v0,48
  18:	440f3000 	mfc1	t7,$f6
  1c:	00000000 	nop
  20:	a44f0000 	sh	t7,0(v0)
  24:	c4880028 	lwc1	$f8,40(a0)
  28:	460a4400 	add.s	$f16,$f8,$f10
  2c:	4600848d 	trunc.w.s	$f18,$f16
  30:	44199000 	mfc1	t9,$f18
  34:	00000000 	nop
  38:	a4590002 	sh	t9,2(v0)
  3c:	c484002c 	lwc1	$f4,44(a0)
  40:	4600218d 	trunc.w.s	$f6,$f4
  44:	44093000 	mfc1	t1,$f6
  48:	03e00008 	jr	ra
  4c:	a4490004 	sh	t1,4(v0)

00000050 <func_808979C0>:
  50:	27bdffd0 	addiu	sp,sp,-48
  54:	afb00020 	sw	s0,32(sp)
  58:	00808025 	move	s0,a0
  5c:	afa50034 	sw	a1,52(sp)
  60:	00a02025 	move	a0,a1
  64:	afbf0024 	sw	ra,36(sp)
  68:	26050150 	addiu	a1,s0,336
  6c:	0c000000 	jal	0 <func_80897970>
  70:	afa50028 	sw	a1,40(sp)
  74:	3c070000 	lui	a3,0x0
  78:	260e0170 	addiu	t6,s0,368
  7c:	8fa50028 	lw	a1,40(sp)
  80:	afae0010 	sw	t6,16(sp)
  84:	24e70044 	addiu	a3,a3,68
  88:	8fa40034 	lw	a0,52(sp)
  8c:	0c000000 	jal	0 <func_80897970>
  90:	02003025 	move	a2,s0
  94:	0c000000 	jal	0 <func_80897970>
  98:	02002025 	move	a0,s0
  9c:	8e18016c 	lw	t8,364(s0)
  a0:	240f003a 	li	t7,58
  a4:	a70f0036 	sh	t7,54(t8)
  a8:	8fbf0024 	lw	ra,36(sp)
  ac:	8fb00020 	lw	s0,32(sp)
  b0:	27bd0030 	addiu	sp,sp,48
  b4:	03e00008 	jr	ra
  b8:	00000000 	nop

000000bc <func_80897A2C>:
  bc:	c4840024 	lwc1	$f4,36(a0)
  c0:	c4860100 	lwc1	$f6,256(a0)
  c4:	848e00b8 	lh	t6,184(a0)
  c8:	3c010000 	lui	at,0x0
  cc:	46062001 	sub.s	$f0,$f4,$f6
  d0:	c4300000 	lwc1	$f16,0(at)
  d4:	448e4000 	mtc1	t6,$f8
  d8:	46008482 	mul.s	$f18,$f16,$f0
  dc:	468042a0 	cvt.s.w	$f10,$f8
  e0:	46125101 	sub.s	$f4,$f10,$f18
  e4:	4600218d 	trunc.w.s	$f6,$f4
  e8:	44183000 	mfc1	t8,$f6
  ec:	03e00008 	jr	ra
  f0:	a49800b8 	sh	t8,184(a0)

000000f4 <BgJyaGoroiwa_Init>:
  f4:	27bdffe0 	addiu	sp,sp,-32
  f8:	afa50024 	sw	a1,36(sp)
  fc:	afbf001c 	sw	ra,28(sp)
 100:	afb00018 	sw	s0,24(sp)
 104:	3c050000 	lui	a1,0x0
 108:	00808025 	move	s0,a0
 10c:	0c000000 	jal	0 <func_80897970>
 110:	24a5005c 	addiu	a1,a1,92
 114:	02002025 	move	a0,s0
 118:	0c000000 	jal	0 <func_80897970>
 11c:	8fa50024 	lw	a1,36(sp)
 120:	a60000b8 	sh	zero,184(s0)
 124:	860200b8 	lh	v0,184(s0)
 128:	3c060000 	lui	a2,0x0
 12c:	24c60054 	addiu	a2,a2,84
 130:	26040098 	addiu	a0,s0,152
 134:	00002825 	move	a1,zero
 138:	a60200b6 	sh	v0,182(s0)
 13c:	0c000000 	jal	0 <func_80897970>
 140:	a60200b4 	sh	v0,180(s0)
 144:	3c054414 	lui	a1,0x4414
 148:	3c060000 	lui	a2,0x0
 14c:	24c60000 	addiu	a2,a2,0
 150:	34a5c000 	ori	a1,a1,0xc000
 154:	260400b4 	addiu	a0,s0,180
 158:	0c000000 	jal	0 <func_80897970>
 15c:	3c074110 	lui	a3,0x4110
 160:	240e0080 	li	t6,128
 164:	a20e00c8 	sb	t6,200(s0)
 168:	0c000000 	jal	0 <func_80897970>
 16c:	02002025 	move	a0,s0
 170:	8fbf001c 	lw	ra,28(sp)
 174:	8fb00018 	lw	s0,24(sp)
 178:	27bd0020 	addiu	sp,sp,32
 17c:	03e00008 	jr	ra
 180:	00000000 	nop

00000184 <BgJyaGoroiwa_Destroy>:
 184:	27bdffe8 	addiu	sp,sp,-24
 188:	00803025 	move	a2,a0
 18c:	afbf0014 	sw	ra,20(sp)
 190:	00a02025 	move	a0,a1
 194:	0c000000 	jal	0 <func_80897970>
 198:	24c50150 	addiu	a1,a2,336
 19c:	8fbf0014 	lw	ra,20(sp)
 1a0:	27bd0018 	addiu	sp,sp,24
 1a4:	03e00008 	jr	ra
 1a8:	00000000 	nop

000001ac <func_80897B1C>:
 1ac:	908f0160 	lbu	t7,352(a0)
 1b0:	3c013f80 	lui	at,0x3f80
 1b4:	44812000 	mtc1	at,$f4
 1b8:	3c0e0000 	lui	t6,0x0
 1bc:	25ce0000 	addiu	t6,t6,0
 1c0:	35f80001 	ori	t8,t7,0x1
 1c4:	ac8e014c 	sw	t6,332(a0)
 1c8:	a0980160 	sb	t8,352(a0)
 1cc:	a48001b4 	sh	zero,436(a0)
 1d0:	03e00008 	jr	ra
 1d4:	e48401b0 	swc1	$f4,432(a0)

000001d8 <func_80897B48>:
 1d8:	27bdffd8 	addiu	sp,sp,-40
 1dc:	3c010000 	lui	at,0x0
 1e0:	c4200004 	lwc1	$f0,4(at)
 1e4:	afbf0024 	sw	ra,36(sp)
 1e8:	afb00020 	sw	s0,32(sp)
 1ec:	afa5002c 	sw	a1,44(sp)
 1f0:	3c01c2c8 	lui	at,0xc2c8
 1f4:	44812000 	mtc1	at,$f4
 1f8:	c4860028 	lwc1	$f6,40(a0)
 1fc:	3c014020 	lui	at,0x4020
 200:	44815000 	mtc1	at,$f10
 204:	46062201 	sub.s	$f8,$f4,$f6
 208:	00808025 	move	s0,a0
 20c:	460a4082 	mul.s	$f2,$f8,$f10
 210:	4600103c 	c.lt.s	$f2,$f0
 214:	00000000 	nop
 218:	45020003 	bc1fl	228 <func_80897B48+0x50>
 21c:	46001004 	sqrt.s	$f0,$f2
 220:	46000086 	mov.s	$f2,$f0
 224:	46001004 	sqrt.s	$f0,$f2
 228:	c61001b0 	lwc1	$f16,432(s0)
 22c:	86040032 	lh	a0,50(s0)
 230:	46100482 	mul.s	$f18,$f0,$f16
 234:	0c000000 	jal	0 <func_80897970>
 238:	e6120068 	swc1	$f18,104(s0)
 23c:	c6040068 	lwc1	$f4,104(s0)
 240:	86040032 	lh	a0,50(s0)
 244:	46040182 	mul.s	$f6,$f0,$f4
 248:	0c000000 	jal	0 <func_80897970>
 24c:	e606005c 	swc1	$f6,92(s0)
 250:	c6080068 	lwc1	$f8,104(s0)
 254:	c60a0024 	lwc1	$f10,36(s0)
 258:	c610005c 	lwc1	$f16,92(s0)
 25c:	46080302 	mul.s	$f12,$f0,$f8
 260:	c604002c 	lwc1	$f4,44(s0)
 264:	46105480 	add.s	$f18,$f10,$f16
 268:	3c010000 	lui	at,0x0
 26c:	02002825 	move	a1,s0
 270:	3c064000 	lui	a2,0x4000
 274:	e6120024 	swc1	$f18,36(s0)
 278:	460c2180 	add.s	$f6,$f4,$f12
 27c:	e60c0064 	swc1	$f12,100(s0)
 280:	c6020024 	lwc1	$f2,36(s0)
 284:	e606002c 	swc1	$f6,44(s0)
 288:	c4280008 	lwc1	$f8,8(at)
 28c:	3c010000 	lui	at,0x0
 290:	4602403c 	c.lt.s	$f8,$f2
 294:	00000000 	nop
 298:	4500000a 	bc1f	2c4 <func_80897B48+0xec>
 29c:	00000000 	nop
 2a0:	c42a000c 	lwc1	$f10,12(at)
 2a4:	3c010000 	lui	at,0x0
 2a8:	460a103c 	c.lt.s	$f2,$f10
 2ac:	00000000 	nop
 2b0:	45000004 	bc1f	2c4 <func_80897B48+0xec>
 2b4:	00000000 	nop
 2b8:	c4300010 	lwc1	$f16,16(at)
 2bc:	1000000f 	b	2fc <func_80897B48+0x124>
 2c0:	e6100028 	swc1	$f16,40(s0)
 2c4:	3c010000 	lui	at,0x0
 2c8:	c4320014 	lwc1	$f18,20(at)
 2cc:	3c010000 	lui	at,0x0
 2d0:	c4240018 	lwc1	$f4,24(at)
 2d4:	46029301 	sub.s	$f12,$f18,$f2
 2d8:	3c0142ce 	lui	at,0x42ce
 2dc:	44813000 	mtc1	at,$f6
 2e0:	3c010000 	lui	at,0x0
 2e4:	46006005 	abs.s	$f0,$f12
 2e8:	c430001c 	lwc1	$f16,28(at)
 2ec:	46060201 	sub.s	$f8,$f0,$f6
 2f0:	46082282 	mul.s	$f10,$f4,$f8
 2f4:	46105481 	sub.s	$f18,$f10,$f16
 2f8:	e6120028 	swc1	$f18,40(s0)
 2fc:	92020160 	lbu	v0,352(s0)
 300:	304e0002 	andi	t6,v0,0x2
 304:	51c00022 	beqzl	t6,390 <func_80897B48+0x1b8>
 308:	860901b4 	lh	t1,436(s0)
 30c:	8607008a 	lh	a3,138(s0)
 310:	86040032 	lh	a0,50(s0)
 314:	304ffffc 	andi	t7,v0,0xfffc
 318:	44803000 	mtc1	zero,$f6
 31c:	00e41823 	subu	v1,a3,a0
 320:	00031c00 	sll	v1,v1,0x10
 324:	00031c03 	sra	v1,v1,0x10
 328:	2861c001 	slti	at,v1,-16383
 32c:	14200007 	bnez	at,34c <func_80897B48+0x174>
 330:	a20f0160 	sb	t7,352(s0)
 334:	28614000 	slti	at,v1,16384
 338:	10200004 	beqz	at,34c <func_80897B48+0x174>
 33c:	34018000 	li	at,0x8000
 340:	0081c021 	addu	t8,a0,at
 344:	a6180032 	sh	t8,50(s0)
 348:	8607008a 	lh	a3,138(s0)
 34c:	8fa4002c 	lw	a0,44(sp)
 350:	e7a60010 	swc1	$f6,16(sp)
 354:	0c000000 	jal	0 <func_80897970>
 358:	afa00014 	sw	zero,20(sp)
 35c:	8fb9002c 	lw	t9,44(sp)
 360:	2405083e 	li	a1,2110
 364:	0c000000 	jal	0 <func_80897970>
 368:	8f241c44 	lw	a0,7236(t9)
 36c:	3c014120 	lui	at,0x4120
 370:	44812000 	mtc1	at,$f4
 374:	3c013f00 	lui	at,0x3f00
 378:	44814000 	mtc1	at,$f8
 37c:	24080001 	li	t0,1
 380:	a60801b4 	sh	t0,436(s0)
 384:	e60401b8 	swc1	$f4,440(s0)
 388:	e60801b0 	swc1	$f8,432(s0)
 38c:	860901b4 	lh	t1,436(s0)
 390:	260401b0 	addiu	a0,s0,432
 394:	3c053f80 	lui	a1,0x3f80
 398:	11200019 	beqz	t1,400 <func_80897B48+0x228>
 39c:	3c063d23 	lui	a2,0x3d23
 3a0:	3c010000 	lui	at,0x0
 3a4:	c4200020 	lwc1	$f0,32(at)
 3a8:	3c013fc0 	lui	at,0x3fc0
 3ac:	44818000 	mtc1	at,$f16
 3b0:	c60a01b8 	lwc1	$f10,440(s0)
 3b4:	3c014120 	lui	at,0x4120
 3b8:	44812000 	mtc1	at,$f4
 3bc:	46105481 	sub.s	$f18,$f10,$f16
 3c0:	c60a00bc 	lwc1	$f10,188(s0)
 3c4:	02002025 	move	a0,s0
 3c8:	e61201b8 	swc1	$f18,440(s0)
 3cc:	c60601b8 	lwc1	$f6,440(s0)
 3d0:	46043202 	mul.s	$f8,$f6,$f4
 3d4:	46085400 	add.s	$f16,$f10,$f8
 3d8:	e61000bc 	swc1	$f16,188(s0)
 3dc:	c61200bc 	lwc1	$f18,188(s0)
 3e0:	4600903c 	c.lt.s	$f18,$f0
 3e4:	00000000 	nop
 3e8:	45000007 	bc1f	408 <func_80897B48+0x230>
 3ec:	00000000 	nop
 3f0:	0c000000 	jal	0 <func_80897970>
 3f4:	e60000bc 	swc1	$f0,188(s0)
 3f8:	10000003 	b	408 <func_80897B48+0x230>
 3fc:	00000000 	nop
 400:	0c000000 	jal	0 <func_80897970>
 404:	34c6d70a 	ori	a2,a2,0xd70a
 408:	3c010000 	lui	at,0x0
 40c:	c4260024 	lwc1	$f6,36(at)
 410:	c6020024 	lwc1	$f2,36(s0)
 414:	240ac000 	li	t2,-16384
 418:	3c010000 	lui	at,0x0
 41c:	4602303c 	c.lt.s	$f6,$f2
 420:	02002025 	move	a0,s0
 424:	45000003 	bc1f	434 <func_80897B48+0x25c>
 428:	00000000 	nop
 42c:	10000008 	b	450 <func_80897B48+0x278>
 430:	a60a0032 	sh	t2,50(s0)
 434:	c4240028 	lwc1	$f4,40(at)
 438:	240b4000 	li	t3,16384
 43c:	4604103c 	c.lt.s	$f2,$f4
 440:	00000000 	nop
 444:	45000002 	bc1f	450 <func_80897B48+0x278>
 448:	00000000 	nop
 44c:	a60b0032 	sh	t3,50(s0)
 450:	0c000000 	jal	0 <func_80897970>
 454:	240520b8 	li	a1,8376
 458:	8fbf0024 	lw	ra,36(sp)
 45c:	8fb00020 	lw	s0,32(sp)
 460:	27bd0028 	addiu	sp,sp,40
 464:	03e00008 	jr	ra
 468:	00000000 	nop

0000046c <func_80897DDC>:
 46c:	3c0e0000 	lui	t6,0x0
 470:	25ce0000 	addiu	t6,t6,0
 474:	ac8e014c 	sw	t6,332(a0)
 478:	03e00008 	jr	ra
 47c:	a48001b6 	sh	zero,438(a0)

00000480 <func_80897DF0>:
 480:	27bdffe8 	addiu	sp,sp,-24
 484:	afbf0014 	sw	ra,20(sp)
 488:	afa5001c 	sw	a1,28(sp)
 48c:	848e01b6 	lh	t6,438(a0)
 490:	25cf0001 	addiu	t7,t6,1
 494:	a48f01b6 	sh	t7,438(a0)
 498:	849801b6 	lh	t8,438(a0)
 49c:	2b01003d 	slti	at,t8,61
 4a0:	54200008 	bnezl	at,4c4 <func_80897DF0+0x44>
 4a4:	8fbf0014 	lw	ra,20(sp)
 4a8:	0c000000 	jal	0 <func_80897970>
 4ac:	afa40018 	sw	a0,24(sp)
 4b0:	3c010000 	lui	at,0x0
 4b4:	8fa40018 	lw	a0,24(sp)
 4b8:	c424002c 	lwc1	$f4,44(at)
 4bc:	e48401b0 	swc1	$f4,432(a0)
 4c0:	8fbf0014 	lw	ra,20(sp)
 4c4:	27bd0018 	addiu	sp,sp,24
 4c8:	03e00008 	jr	ra
 4cc:	00000000 	nop

000004d0 <BgJyaGoroiwa_Update>:
 4d0:	27bdffb8 	addiu	sp,sp,-72
 4d4:	afbf0024 	sw	ra,36(sp)
 4d8:	afb10020 	sw	s1,32(sp)
 4dc:	afb0001c 	sw	s0,28(sp)
 4e0:	8ca21c44 	lw	v0,7236(a1)
 4e4:	3c013000 	lui	at,0x3000
 4e8:	342100c0 	ori	at,at,0xc0
 4ec:	8c4e067c 	lw	t6,1660(v0)
 4f0:	00808025 	move	s0,a0
 4f4:	00a08825 	move	s1,a1
 4f8:	01c17824 	and	t7,t6,at
 4fc:	55e00029 	bnezl	t7,5a4 <BgJyaGoroiwa_Update+0xd4>
 500:	8fbf0024 	lw	ra,36(sp)
 504:	8e19014c 	lw	t9,332(s0)
 508:	0320f809 	jalr	t9
 50c:	00000000 	nop
 510:	0c000000 	jal	0 <func_80897970>
 514:	02002025 	move	a0,s0
 518:	c6040024 	lwc1	$f4,36(s0)
 51c:	3c01426e 	lui	at,0x426e
 520:	44814000 	mtc1	at,$f8
 524:	e7a4002c 	swc1	$f4,44(sp)
 528:	c6060028 	lwc1	$f6,40(s0)
 52c:	27b8002c 	addiu	t8,sp,44
 530:	262407c0 	addiu	a0,s1,1984
 534:	46083280 	add.s	$f10,$f6,$f8
 538:	26050078 	addiu	a1,s0,120
 53c:	27a60038 	addiu	a2,sp,56
 540:	02003825 	move	a3,s0
 544:	e7aa0030 	swc1	$f10,48(sp)
 548:	c610002c 	lwc1	$f16,44(s0)
 54c:	afb80010 	sw	t8,16(sp)
 550:	0c000000 	jal	0 <func_80897970>
 554:	e7b00034 	swc1	$f16,52(sp)
 558:	e6000080 	swc1	$f0,128(s0)
 55c:	0c000000 	jal	0 <func_80897970>
 560:	02002025 	move	a0,s0
 564:	92080160 	lbu	t0,352(s0)
 568:	3c010001 	lui	at,0x1
 56c:	34211e60 	ori	at,at,0x1e60
 570:	31090001 	andi	t1,t0,0x1
 574:	11200004 	beqz	t1,588 <BgJyaGoroiwa_Update+0xb8>
 578:	02202025 	move	a0,s1
 57c:	02212821 	addu	a1,s1,at
 580:	0c000000 	jal	0 <func_80897970>
 584:	26060150 	addiu	a2,s0,336
 588:	3c010001 	lui	at,0x1
 58c:	34211e60 	ori	at,at,0x1e60
 590:	02212821 	addu	a1,s1,at
 594:	02202025 	move	a0,s1
 598:	0c000000 	jal	0 <func_80897970>
 59c:	26060150 	addiu	a2,s0,336
 5a0:	8fbf0024 	lw	ra,36(sp)
 5a4:	8fb0001c 	lw	s0,28(sp)
 5a8:	8fb10020 	lw	s1,32(sp)
 5ac:	03e00008 	jr	ra
 5b0:	27bd0048 	addiu	sp,sp,72

000005b4 <BgJyaGoroiwa_Draw>:
 5b4:	27bdffe8 	addiu	sp,sp,-24
 5b8:	afa40018 	sw	a0,24(sp)
 5bc:	00a02025 	move	a0,a1
 5c0:	afbf0014 	sw	ra,20(sp)
 5c4:	3c050000 	lui	a1,0x0
 5c8:	0c000000 	jal	0 <func_80897970>
 5cc:	24a50000 	addiu	a1,a1,0
 5d0:	8fbf0014 	lw	ra,20(sp)
 5d4:	27bd0018 	addiu	sp,sp,24
 5d8:	03e00008 	jr	ra
 5dc:	00000000 	nop
