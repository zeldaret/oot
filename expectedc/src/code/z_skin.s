
build/src/code/z_skin.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800A57C0>:
   0:	27bdff70 	addiu	sp,sp,-144
   4:	afbf005c 	sw	ra,92(sp)
   8:	afbe0058 	sw	s8,88(sp)
   c:	afb70054 	sw	s7,84(sp)
  10:	afb60050 	sw	s6,80(sp)
  14:	afb5004c 	sw	s5,76(sp)
  18:	afb40048 	sw	s4,72(sp)
  1c:	afb30044 	sw	s3,68(sp)
  20:	afb20040 	sw	s2,64(sp)
  24:	afb1003c 	sw	s1,60(sp)
  28:	afb00038 	sw	s0,56(sp)
  2c:	f7ba0030 	sdc1	$f26,48(sp)
  30:	f7b80028 	sdc1	$f24,40(sp)
  34:	f7b60020 	sdc1	$f22,32(sp)
  38:	f7b40018 	sdc1	$f20,24(sp)
  3c:	94ce0000 	lhu	t6,0(a2)
  40:	2417000a 	li	s7,10
  44:	00808025 	move	s0,a0
  48:	01d70019 	multu	t6,s7
  4c:	00a0a025 	move	s4,a1
  50:	00c0a825 	move	s5,a2
  54:	00e0b025 	move	s6,a3
  58:	00a08825 	move	s1,a1
  5c:	27be0064 	addiu	s8,sp,100
  60:	00007812 	mflo	t7
  64:	01e5c021 	addu	t8,t7,a1
  68:	00b8082b 	sltu	at,a1,t8
  6c:	50200048 	beqzl	at,190 <func_800A57C0+0x190>
  70:	8fbf005c 	lw	ra,92(sp)
  74:	4480a000 	mtc1	zero,$f20
  78:	8fb300a0 	lw	s3,160(sp)
  7c:	c6640000 	lwc1	$f4,0(s3)
  80:	96390000 	lhu	t9,0(s1)
  84:	02002025 	move	a0,s0
  88:	4600218d 	trunc.w.s	$f6,$f4
  8c:	00194100 	sll	t0,t9,0x4
  90:	01169021 	addu	s2,t0,s6
  94:	03c02825 	move	a1,s8
  98:	440a3000 	mfc1	t2,$f6
  9c:	27a60070 	addiu	a2,sp,112
  a0:	a64a0000 	sh	t2,0(s2)
  a4:	c6680004 	lwc1	$f8,4(s3)
  a8:	4600428d 	trunc.w.s	$f10,$f8
  ac:	440c5000 	mfc1	t4,$f10
  b0:	00000000 	nop
  b4:	a64c0002 	sh	t4,2(s2)
  b8:	c6700008 	lwc1	$f16,8(s3)
  bc:	4600848d 	trunc.w.s	$f18,$f16
  c0:	440e9000 	mfc1	t6,$f18
  c4:	00000000 	nop
  c8:	a64e0004 	sh	t6,4(s2)
  cc:	c6160030 	lwc1	$f22,48(s0)
  d0:	c6180034 	lwc1	$f24,52(s0)
  d4:	c61a0038 	lwc1	$f26,56(s0)
  d8:	e6140038 	swc1	$f20,56(s0)
  dc:	e6140034 	swc1	$f20,52(s0)
  e0:	e6140030 	swc1	$f20,48(s0)
  e4:	822f0006 	lb	t7,6(s1)
  e8:	448f2000 	mtc1	t7,$f4
  ec:	00000000 	nop
  f0:	468021a0 	cvt.s.w	$f6,$f4
  f4:	e7a60064 	swc1	$f6,100(sp)
  f8:	82380007 	lb	t8,7(s1)
  fc:	44984000 	mtc1	t8,$f8
 100:	00000000 	nop
 104:	468042a0 	cvt.s.w	$f10,$f8
 108:	e7aa0068 	swc1	$f10,104(sp)
 10c:	82390008 	lb	t9,8(s1)
 110:	44998000 	mtc1	t9,$f16
 114:	00000000 	nop
 118:	468084a0 	cvt.s.w	$f18,$f16
 11c:	0c000000 	jal	0 <func_800A57C0>
 120:	e7b2006c 	swc1	$f18,108(sp)
 124:	c7a40070 	lwc1	$f4,112(sp)
 128:	2631000a 	addiu	s1,s1,10
 12c:	4600218d 	trunc.w.s	$f6,$f4
 130:	44093000 	mfc1	t1,$f6
 134:	00000000 	nop
 138:	a249000c 	sb	t1,12(s2)
 13c:	c7a80074 	lwc1	$f8,116(sp)
 140:	4600428d 	trunc.w.s	$f10,$f8
 144:	440b5000 	mfc1	t3,$f10
 148:	00000000 	nop
 14c:	a24b000d 	sb	t3,13(s2)
 150:	c7b00078 	lwc1	$f16,120(sp)
 154:	4600848d 	trunc.w.s	$f18,$f16
 158:	440d9000 	mfc1	t5,$f18
 15c:	00000000 	nop
 160:	a24d000e 	sb	t5,14(s2)
 164:	e6160030 	swc1	$f22,48(s0)
 168:	e6180034 	swc1	$f24,52(s0)
 16c:	e61a0038 	swc1	$f26,56(s0)
 170:	96ae0000 	lhu	t6,0(s5)
 174:	01d70019 	multu	t6,s7
 178:	00007812 	mflo	t7
 17c:	01f4c021 	addu	t8,t7,s4
 180:	0238082b 	sltu	at,s1,t8
 184:	5420ffbe 	bnezl	at,80 <func_800A57C0+0x80>
 188:	c6640000 	lwc1	$f4,0(s3)
 18c:	8fbf005c 	lw	ra,92(sp)
 190:	d7b40018 	ldc1	$f20,24(sp)
 194:	d7b60020 	ldc1	$f22,32(sp)
 198:	d7b80028 	ldc1	$f24,40(sp)
 19c:	d7ba0030 	ldc1	$f26,48(sp)
 1a0:	8fb00038 	lw	s0,56(sp)
 1a4:	8fb1003c 	lw	s1,60(sp)
 1a8:	8fb20040 	lw	s2,64(sp)
 1ac:	8fb30044 	lw	s3,68(sp)
 1b0:	8fb40048 	lw	s4,72(sp)
 1b4:	8fb5004c 	lw	s5,76(sp)
 1b8:	8fb60050 	lw	s6,80(sp)
 1bc:	8fb70054 	lw	s7,84(sp)
 1c0:	8fbe0058 	lw	s8,88(sp)
 1c4:	03e00008 	jr	ra
 1c8:	27bd0090 	addiu	sp,sp,144

000001cc <func_800A598C>:
 1cc:	27bdfee8 	addiu	sp,sp,-280
 1d0:	afb10054 	sw	s1,84(sp)
 1d4:	00c08825 	move	s1,a2
 1d8:	afb00050 	sw	s0,80(sp)
 1dc:	00a08025 	move	s0,a1
 1e0:	afbf0074 	sw	ra,116(sp)
 1e4:	afa40118 	sw	a0,280(sp)
 1e8:	afa70124 	sw	a3,292(sp)
 1ec:	3c060000 	lui	a2,0x0
 1f0:	afbe0070 	sw	s8,112(sp)
 1f4:	afb7006c 	sw	s7,108(sp)
 1f8:	afb60068 	sw	s6,104(sp)
 1fc:	afb50064 	sw	s5,100(sp)
 200:	afb40060 	sw	s4,96(sp)
 204:	afb3005c 	sw	s3,92(sp)
 208:	afb20058 	sw	s2,88(sp)
 20c:	f7be0048 	sdc1	$f30,72(sp)
 210:	f7bc0040 	sdc1	$f28,64(sp)
 214:	f7ba0038 	sdc1	$f26,56(sp)
 218:	f7b80030 	sdc1	$f24,48(sp)
 21c:	f7b60028 	sdc1	$f22,40(sp)
 220:	f7b40020 	sdc1	$f20,32(sp)
 224:	24c60000 	addiu	a2,a2,0
 228:	240700fe 	li	a3,254
 22c:	8fa50118 	lw	a1,280(sp)
 230:	0c000000 	jal	0 <func_800A57C0>
 234:	27a400b8 	addiu	a0,sp,184
 238:	8e0e0000 	lw	t6,0(s0)
 23c:	3c0a0000 	lui	t2,0x0
 240:	254a0000 	addiu	t2,t2,0
 244:	8dc30000 	lw	v1,0(t6)
 248:	3c0b00ff 	lui	t3,0xff
 24c:	356bffff 	ori	t3,t3,0xffff
 250:	00037900 	sll	t7,v1,0x4
 254:	000fc702 	srl	t8,t7,0x1c
 258:	0018c880 	sll	t9,t8,0x2
 25c:	01597021 	addu	t6,t2,t9
 260:	8dcf0000 	lw	t7,0(t6)
 264:	006bc024 	and	t8,v1,t3
 268:	3c0c8000 	lui	t4,0x8000
 26c:	01f8c821 	addu	t9,t7,t8
 270:	032c4021 	addu	t0,t9,t4
 274:	00117080 	sll	t6,s1,0x2
 278:	010e7821 	addu	t7,t0,t6
 27c:	8de50000 	lw	a1,0(t7)
 280:	3c120000 	lui	s2,0x0
 284:	26520000 	addiu	s2,s2,0
 288:	0005c900 	sll	t9,a1,0x4
 28c:	00197702 	srl	t6,t9,0x1c
 290:	000e7880 	sll	t7,t6,0x2
 294:	014fc821 	addu	t9,t2,t7
 298:	8f2e0000 	lw	t6,0(t9)
 29c:	00abc024 	and	t8,a1,t3
 2a0:	27b700dc 	addiu	s7,sp,220
 2a4:	030e7821 	addu	t7,t8,t6
 2a8:	01ecc821 	addu	t9,t7,t4
 2ac:	8f26000c 	lw	a2,12(t9)
 2b0:	27b500d0 	addiu	s5,sp,208
 2b4:	27b40088 	addiu	s4,sp,136
 2b8:	00067100 	sll	t6,a2,0x4
 2bc:	000e7f02 	srl	t7,t6,0x1c
 2c0:	000fc880 	sll	t9,t7,0x2
 2c4:	01597021 	addu	t6,t2,t9
 2c8:	8dcf0000 	lw	t7,0(t6)
 2cc:	00cbc024 	and	t8,a2,t3
 2d0:	030fc821 	addu	t9,t8,t7
 2d4:	032c2021 	addu	a0,t9,t4
 2d8:	8c870004 	lw	a3,4(a0)
 2dc:	00077100 	sll	t6,a3,0x4
 2e0:	000ec702 	srl	t8,t6,0x1c
 2e4:	00187880 	sll	t7,t8,0x2
 2e8:	014fc821 	addu	t9,t2,t7
 2ec:	8f2e0000 	lw	t6,0(t9)
 2f0:	00ebc024 	and	t8,a3,t3
 2f4:	8e190048 	lw	t9,72(s0)
 2f8:	01d87821 	addu	t7,t6,t8
 2fc:	00117080 	sll	t6,s1,0x2
 300:	01d17023 	subu	t6,t6,s1
 304:	000e7080 	sll	t6,t6,0x2
 308:	032e6821 	addu	t5,t9,t6
 30c:	91b80000 	lbu	t8,0(t5)
 310:	01ecb021 	addu	s6,t7,t4
 314:	00187880 	sll	t7,t8,0x2
 318:	01afc821 	addu	t9,t5,t7
 31c:	8f2e0004 	lw	t6,4(t9)
 320:	afae00ec 	sw	t6,236(sp)
 324:	94890002 	lhu	t1,2(a0)
 328:	0009c100 	sll	t8,t1,0x4
 32c:	0316f821 	addu	ra,t8,s6
 330:	02df082b 	sltu	at,s6,ra
 334:	102000a2 	beqz	at,5c0 <func_800A598C+0x3f4>
 338:	3c010000 	lui	at,0x0
 33c:	4480f000 	mtc1	zero,$f30
 340:	c43c0000 	lwc1	$f28,0(at)
 344:	afad0100 	sw	t5,256(sp)
 348:	afbf0080 	sw	ra,128(sp)
 34c:	8ec20008 	lw	v0,8(s6)
 350:	3c060000 	lui	a2,0x0
 354:	24c60000 	addiu	a2,a2,0
 358:	00027900 	sll	t7,v0,0x4
 35c:	000fcf02 	srl	t9,t7,0x1c
 360:	00197080 	sll	t6,t9,0x2
 364:	00cec021 	addu	t8,a2,t6
 368:	8f0f0000 	lw	t7,0(t8)
 36c:	3c0700ff 	lui	a3,0xff
 370:	8ec3000c 	lw	v1,12(s6)
 374:	34e7ffff 	ori	a3,a3,0xffff
 378:	0047c824 	and	t9,v0,a3
 37c:	01f97021 	addu	t6,t7,t9
 380:	0003c100 	sll	t8,v1,0x4
 384:	3c088000 	lui	t0,0x8000
 388:	00187f02 	srl	t7,t8,0x1c
 38c:	01c8f021 	addu	s8,t6,t0
 390:	000fc880 	sll	t9,t7,0x2
 394:	00d97021 	addu	t6,a2,t9
 398:	8dd80000 	lw	t8,0(t6)
 39c:	96c40002 	lhu	a0,2(s6)
 3a0:	00677824 	and	t7,v1,a3
 3a4:	24050001 	li	a1,1
 3a8:	030fc821 	addu	t9,t8,t7
 3ac:	14850018 	bne	a0,a1,410 <func_800A598C+0x244>
 3b0:	03289821 	addu	s3,t9,t0
 3b4:	866e0002 	lh	t6,2(s3)
 3b8:	27a500ac 	addiu	a1,sp,172
 3bc:	02e03025 	move	a2,s7
 3c0:	448e2000 	mtc1	t6,$f4
 3c4:	00000000 	nop
 3c8:	468021a0 	cvt.s.w	$f6,$f4
 3cc:	e7a600ac 	swc1	$f6,172(sp)
 3d0:	86780004 	lh	t8,4(s3)
 3d4:	44984000 	mtc1	t8,$f8
 3d8:	00000000 	nop
 3dc:	468042a0 	cvt.s.w	$f10,$f8
 3e0:	e7aa00b0 	swc1	$f10,176(sp)
 3e4:	866f0006 	lh	t7,6(s3)
 3e8:	448f8000 	mtc1	t7,$f16
 3ec:	00000000 	nop
 3f0:	468084a0 	cvt.s.w	$f18,$f16
 3f4:	e7b200b4 	swc1	$f18,180(sp)
 3f8:	92790000 	lbu	t9,0(s3)
 3fc:	00197180 	sll	t6,t9,0x6
 400:	0c000000 	jal	0 <func_800A57C0>
 404:	024e2021 	addu	a0,s2,t6
 408:	1000005b 	b	578 <func_800A598C+0x3ac>
 40c:	96ce0004 	lhu	t6,4(s6)
 410:	8fb80124 	lw	t8,292(sp)
 414:	02608025 	move	s0,s3
 418:	5705001e 	bnel	t8,a1,494 <func_800A598C+0x2c8>
 41c:	0004c080 	sll	t8,a0,0x2
 420:	96cf0004 	lhu	t7,4(s6)
 424:	27a500a0 	addiu	a1,sp,160
 428:	02e03025 	move	a2,s7
 42c:	000fc880 	sll	t9,t7,0x2
 430:	032fc821 	addu	t9,t9,t7
 434:	0019c840 	sll	t9,t9,0x1
 438:	03338021 	addu	s0,t9,s3
 43c:	860e0002 	lh	t6,2(s0)
 440:	448e2000 	mtc1	t6,$f4
 444:	00000000 	nop
 448:	468021a0 	cvt.s.w	$f6,$f4
 44c:	e7a600a0 	swc1	$f6,160(sp)
 450:	86180004 	lh	t8,4(s0)
 454:	44984000 	mtc1	t8,$f8
 458:	00000000 	nop
 45c:	468042a0 	cvt.s.w	$f10,$f8
 460:	e7aa00a4 	swc1	$f10,164(sp)
 464:	860f0006 	lh	t7,6(s0)
 468:	448f8000 	mtc1	t7,$f16
 46c:	00000000 	nop
 470:	468084a0 	cvt.s.w	$f18,$f16
 474:	e7b200a8 	swc1	$f18,168(sp)
 478:	92190000 	lbu	t9,0(s0)
 47c:	00197180 	sll	t6,t9,0x6
 480:	0c000000 	jal	0 <func_800A57C0>
 484:	024e2021 	addu	a0,s2,t6
 488:	1000003b 	b	578 <func_800A598C+0x3ac>
 48c:	96ce0004 	lhu	t6,4(s6)
 490:	0004c080 	sll	t8,a0,0x2
 494:	0304c021 	addu	t8,t8,a0
 498:	0018c040 	sll	t8,t8,0x1
 49c:	03138821 	addu	s1,t8,s3
 4a0:	0271082b 	sltu	at,s3,s1
 4a4:	4600f586 	mov.s	$f22,$f30
 4a8:	4600f606 	mov.s	$f24,$f30
 4ac:	1020002e 	beqz	at,568 <func_800A598C+0x39c>
 4b0:	4600f686 	mov.s	$f26,$f30
 4b4:	920f0008 	lbu	t7,8(s0)
 4b8:	3c014f80 	lui	at,0x4f80
 4bc:	448f2000 	mtc1	t7,$f4
 4c0:	05e10004 	bgez	t7,4d4 <func_800A598C+0x308>
 4c4:	468021a0 	cvt.s.w	$f6,$f4
 4c8:	44814000 	mtc1	at,$f8
 4cc:	00000000 	nop
 4d0:	46083180 	add.s	$f6,$f6,$f8
 4d4:	86190002 	lh	t9,2(s0)
 4d8:	461c3502 	mul.s	$f20,$f6,$f28
 4dc:	02802825 	move	a1,s4
 4e0:	44995000 	mtc1	t9,$f10
 4e4:	02a03025 	move	a2,s5
 4e8:	46805420 	cvt.s.w	$f16,$f10
 4ec:	e7b00088 	swc1	$f16,136(sp)
 4f0:	860e0004 	lh	t6,4(s0)
 4f4:	448e9000 	mtc1	t6,$f18
 4f8:	00000000 	nop
 4fc:	46809120 	cvt.s.w	$f4,$f18
 500:	e7a4008c 	swc1	$f4,140(sp)
 504:	86180006 	lh	t8,6(s0)
 508:	44984000 	mtc1	t8,$f8
 50c:	00000000 	nop
 510:	468041a0 	cvt.s.w	$f6,$f8
 514:	e7a60090 	swc1	$f6,144(sp)
 518:	920f0000 	lbu	t7,0(s0)
 51c:	000fc980 	sll	t9,t7,0x6
 520:	0c000000 	jal	0 <func_800A57C0>
 524:	02592021 	addu	a0,s2,t9
 528:	c7a000d0 	lwc1	$f0,208(sp)
 52c:	c7a200d4 	lwc1	$f2,212(sp)
 530:	c7ac00d8 	lwc1	$f12,216(sp)
 534:	46140002 	mul.s	$f0,$f0,$f20
 538:	2610000a 	addiu	s0,s0,10
 53c:	0211082b 	sltu	at,s0,s1
 540:	46141082 	mul.s	$f2,$f2,$f20
 544:	00000000 	nop
 548:	46146302 	mul.s	$f12,$f12,$f20
 54c:	e7a000d0 	swc1	$f0,208(sp)
 550:	4600d680 	add.s	$f26,$f26,$f0
 554:	e7a200d4 	swc1	$f2,212(sp)
 558:	4602c600 	add.s	$f24,$f24,$f2
 55c:	e7ac00d8 	swc1	$f12,216(sp)
 560:	1420ffd4 	bnez	at,4b4 <func_800A598C+0x2e8>
 564:	460cb580 	add.s	$f22,$f22,$f12
 568:	e7ba00dc 	swc1	$f26,220(sp)
 56c:	e7b800e0 	swc1	$f24,224(sp)
 570:	e7b600e4 	swc1	$f22,228(sp)
 574:	96ce0004 	lhu	t6,4(s6)
 578:	03c02825 	move	a1,s8
 57c:	02c03025 	move	a2,s6
 580:	000ec080 	sll	t8,t6,0x2
 584:	030ec021 	addu	t8,t8,t6
 588:	0018c040 	sll	t8,t8,0x1
 58c:	02787821 	addu	t7,s3,t8
 590:	91f90000 	lbu	t9,0(t7)
 594:	afb70010 	sw	s7,16(sp)
 598:	8fa700ec 	lw	a3,236(sp)
 59c:	00197180 	sll	t6,t9,0x6
 5a0:	0c000000 	jal	0 <func_800A57C0>
 5a4:	024e2021 	addu	a0,s2,t6
 5a8:	8fb80080 	lw	t8,128(sp)
 5ac:	26d60010 	addiu	s6,s6,16
 5b0:	02d8082b 	sltu	at,s6,t8
 5b4:	5420ff66 	bnezl	at,350 <func_800A598C+0x184>
 5b8:	8ec20008 	lw	v0,8(s6)
 5bc:	8fad0100 	lw	t5,256(sp)
 5c0:	8fa50118 	lw	a1,280(sp)
 5c4:	3c19db06 	lui	t9,0xdb06
 5c8:	37390020 	ori	t9,t9,0x20
 5cc:	8ca302c0 	lw	v1,704(a1)
 5d0:	3c060000 	lui	a2,0x0
 5d4:	24c60000 	addiu	a2,a2,0
 5d8:	246f0008 	addiu	t7,v1,8
 5dc:	acaf02c0 	sw	t7,704(a1)
 5e0:	ac790000 	sw	t9,0(v1)
 5e4:	91ae0000 	lbu	t6,0(t5)
 5e8:	27a400b8 	addiu	a0,sp,184
 5ec:	000ec080 	sll	t8,t6,0x2
 5f0:	01b87821 	addu	t7,t5,t8
 5f4:	8df90004 	lw	t9,4(t7)
 5f8:	24180001 	li	t8,1
 5fc:	ac790004 	sw	t9,4(v1)
 600:	91ae0000 	lbu	t6,0(t5)
 604:	55c00004 	bnezl	t6,618 <func_800A598C+0x44c>
 608:	a1a00000 	sb	zero,0(t5)
 60c:	10000002 	b	618 <func_800A598C+0x44c>
 610:	a1b80000 	sb	t8,0(t5)
 614:	a1a00000 	sb	zero,0(t5)
 618:	0c000000 	jal	0 <func_800A57C0>
 61c:	24070158 	li	a3,344
 620:	8fbf0074 	lw	ra,116(sp)
 624:	d7b40020 	ldc1	$f20,32(sp)
 628:	d7b60028 	ldc1	$f22,40(sp)
 62c:	d7b80030 	ldc1	$f24,48(sp)
 630:	d7ba0038 	ldc1	$f26,56(sp)
 634:	d7bc0040 	ldc1	$f28,64(sp)
 638:	d7be0048 	ldc1	$f30,72(sp)
 63c:	8fb00050 	lw	s0,80(sp)
 640:	8fb10054 	lw	s1,84(sp)
 644:	8fb20058 	lw	s2,88(sp)
 648:	8fb3005c 	lw	s3,92(sp)
 64c:	8fb40060 	lw	s4,96(sp)
 650:	8fb50064 	lw	s5,100(sp)
 654:	8fb60068 	lw	s6,104(sp)
 658:	8fb7006c 	lw	s7,108(sp)
 65c:	8fbe0070 	lw	s8,112(sp)
 660:	03e00008 	jr	ra
 664:	27bd0118 	addiu	sp,sp,280

00000668 <func_800A5E28>:
 668:	27bdffb8 	addiu	sp,sp,-72
 66c:	afb00018 	sw	s0,24(sp)
 670:	afa60050 	sw	a2,80(sp)
 674:	00808025 	move	s0,a0
 678:	afbf001c 	sw	ra,28(sp)
 67c:	afa5004c 	sw	a1,76(sp)
 680:	afa70054 	sw	a3,84(sp)
 684:	3c060000 	lui	a2,0x0
 688:	24c60000 	addiu	a2,a2,0
 68c:	2407016c 	li	a3,364
 690:	02002825 	move	a1,s0
 694:	0c000000 	jal	0 <func_800A57C0>
 698:	27a4002c 	addiu	a0,sp,44
 69c:	8fae004c 	lw	t6,76(sp)
 6a0:	3c060000 	lui	a2,0x0
 6a4:	24c60000 	addiu	a2,a2,0
 6a8:	8dcf0000 	lw	t7,0(t6)
 6ac:	3c0700ff 	lui	a3,0xff
 6b0:	34e7ffff 	ori	a3,a3,0xffff
 6b4:	8de20000 	lw	v0,0(t7)
 6b8:	3c088000 	lui	t0,0x8000
 6bc:	0002c100 	sll	t8,v0,0x4
 6c0:	0018cf02 	srl	t9,t8,0x1c
 6c4:	00195080 	sll	t2,t9,0x2
 6c8:	00ca5821 	addu	t3,a2,t2
 6cc:	8d6c0000 	lw	t4,0(t3)
 6d0:	8fb80050 	lw	t8,80(sp)
 6d4:	00476824 	and	t5,v0,a3
 6d8:	018d7821 	addu	t7,t4,t5
 6dc:	01e82821 	addu	a1,t7,t0
 6e0:	0018c880 	sll	t9,t8,0x2
 6e4:	00b95021 	addu	t2,a1,t9
 6e8:	8d430000 	lw	v1,0(t2)
 6ec:	01c02825 	move	a1,t6
 6f0:	00036100 	sll	t4,v1,0x4
 6f4:	000c6f02 	srl	t5,t4,0x1c
 6f8:	000d7880 	sll	t7,t5,0x2
 6fc:	00cfc821 	addu	t9,a2,t7
 700:	8f2a0000 	lw	t2,0(t9)
 704:	00675824 	and	t3,v1,a3
 708:	016a6021 	addu	t4,t3,t2
 70c:	01886821 	addu	t5,t4,t0
 710:	8da4000c 	lw	a0,12(t5)
 714:	0004c900 	sll	t9,a0,0x4
 718:	00195f02 	srl	t3,t9,0x1c
 71c:	000b5080 	sll	t2,t3,0x2
 720:	00ca6021 	addu	t4,a2,t2
 724:	8d8d0000 	lw	t5,0(t4)
 728:	8fab0058 	lw	t3,88(sp)
 72c:	00877824 	and	t7,a0,a3
 730:	01edc821 	addu	t9,t7,t5
 734:	316a0001 	andi	t2,t3,0x1
 738:	15400007 	bnez	t2,758 <func_800A5E28+0xf0>
 73c:	03284821 	addu	t1,t9,t0
 740:	02002025 	move	a0,s0
 744:	03003025 	move	a2,t8
 748:	8fa70054 	lw	a3,84(sp)
 74c:	0c000000 	jal	0 <func_800A57C0>
 750:	afa90040 	sw	t1,64(sp)
 754:	8fa90040 	lw	t1,64(sp)
 758:	8e0302c0 	lw	v1,704(s0)
 75c:	3c0fde00 	lui	t7,0xde00
 760:	3c060000 	lui	a2,0x0
 764:	246c0008 	addiu	t4,v1,8
 768:	ae0c02c0 	sw	t4,704(s0)
 76c:	ac6f0000 	sw	t7,0(v1)
 770:	8d2d0008 	lw	t5,8(t1)
 774:	24c60000 	addiu	a2,a2,0
 778:	27a4002c 	addiu	a0,sp,44
 77c:	02002825 	move	a1,s0
 780:	24070179 	li	a3,377
 784:	0c000000 	jal	0 <func_800A57C0>
 788:	ac6d0004 	sw	t5,4(v1)
 78c:	8fbf001c 	lw	ra,28(sp)
 790:	8fb00018 	lw	s0,24(sp)
 794:	27bd0048 	addiu	sp,sp,72
 798:	03e00008 	jr	ra
 79c:	00000000 	nop

000007a0 <func_800A5F60>:
 7a0:	27bdffa8 	addiu	sp,sp,-88
 7a4:	afb00018 	sw	s0,24(sp)
 7a8:	afa60060 	sw	a2,96(sp)
 7ac:	00808025 	move	s0,a0
 7b0:	afbf001c 	sw	ra,28(sp)
 7b4:	afa5005c 	sw	a1,92(sp)
 7b8:	afa70064 	sw	a3,100(sp)
 7bc:	00e04025 	move	t0,a3
 7c0:	3c060000 	lui	a2,0x0
 7c4:	24c60000 	addiu	a2,a2,0
 7c8:	afa80054 	sw	t0,84(sp)
 7cc:	2407018b 	li	a3,395
 7d0:	02002825 	move	a1,s0
 7d4:	0c000000 	jal	0 <func_800A57C0>
 7d8:	27a40038 	addiu	a0,sp,56
 7dc:	8fae005c 	lw	t6,92(sp)
 7e0:	3c040000 	lui	a0,0x0
 7e4:	24840000 	addiu	a0,a0,0
 7e8:	8dcf0000 	lw	t7,0(t6)
 7ec:	3c0500ff 	lui	a1,0xff
 7f0:	8fae0064 	lw	t6,100(sp)
 7f4:	8de20000 	lw	v0,0(t7)
 7f8:	34a5ffff 	ori	a1,a1,0xffff
 7fc:	3c068000 	lui	a2,0x8000
 800:	0002c100 	sll	t8,v0,0x4
 804:	0018cf02 	srl	t9,t8,0x1c
 808:	00194880 	sll	t1,t9,0x2
 80c:	00895021 	addu	t2,a0,t1
 810:	8d4b0000 	lw	t3,0(t2)
 814:	00456024 	and	t4,v0,a1
 818:	8fa70060 	lw	a3,96(sp)
 81c:	016c6821 	addu	t5,t3,t4
 820:	8fa80054 	lw	t0,84(sp)
 824:	15c0000d 	bnez	t6,85c <func_800A5F60+0xbc>
 828:	01a61821 	addu	v1,t5,a2
 82c:	00077880 	sll	t7,a3,0x2
 830:	006fc021 	addu	t8,v1,t7
 834:	8f020000 	lw	v0,0(t8)
 838:	00024900 	sll	t1,v0,0x4
 83c:	00095702 	srl	t2,t1,0x1c
 840:	000a5880 	sll	t3,t2,0x2
 844:	008b6021 	addu	t4,a0,t3
 848:	8d8d0000 	lw	t5,0(t4)
 84c:	0045c824 	and	t9,v0,a1
 850:	032d7021 	addu	t6,t9,t5
 854:	01c67821 	addu	t7,t6,a2
 858:	8de8000c 	lw	t0,12(t7)
 85c:	11000023 	beqz	t0,8ec <func_800A5F60+0x14c>
 860:	02002025 	move	a0,s0
 864:	3c090000 	lui	t1,0x0
 868:	25290000 	addiu	t1,t1,0
 86c:	0007c180 	sll	t8,a3,0x6
 870:	03092821 	addu	a1,t8,t1
 874:	0c000000 	jal	0 <func_800A57C0>
 878:	afa80054 	sw	t0,84(sp)
 87c:	1040001b 	beqz	v0,8ec <func_800A5F60+0x14c>
 880:	8fa80054 	lw	t0,84(sp)
 884:	8e0302c0 	lw	v1,704(s0)
 888:	3c0bda38 	lui	t3,0xda38
 88c:	3c19de00 	lui	t9,0xde00
 890:	246a0008 	addiu	t2,v1,8
 894:	ae0a02c0 	sw	t2,704(s0)
 898:	ac620004 	sw	v0,4(v1)
 89c:	ac6b0000 	sw	t3,0(v1)
 8a0:	8e0302c0 	lw	v1,704(s0)
 8a4:	3c0ed838 	lui	t6,0xd838
 8a8:	35ce0002 	ori	t6,t6,0x2
 8ac:	246c0008 	addiu	t4,v1,8
 8b0:	ae0c02c0 	sw	t4,704(s0)
 8b4:	ac680004 	sw	t0,4(v1)
 8b8:	ac790000 	sw	t9,0(v1)
 8bc:	8e0302c0 	lw	v1,704(s0)
 8c0:	240f0040 	li	t7,64
 8c4:	3c09e700 	lui	t1,0xe700
 8c8:	246d0008 	addiu	t5,v1,8
 8cc:	ae0d02c0 	sw	t5,704(s0)
 8d0:	ac6f0004 	sw	t7,4(v1)
 8d4:	ac6e0000 	sw	t6,0(v1)
 8d8:	8e0302c0 	lw	v1,704(s0)
 8dc:	24780008 	addiu	t8,v1,8
 8e0:	ae1802c0 	sw	t8,704(s0)
 8e4:	ac600004 	sw	zero,4(v1)
 8e8:	ac690000 	sw	t1,0(v1)
 8ec:	3c060000 	lui	a2,0x0
 8f0:	24c60000 	addiu	a2,a2,0
 8f4:	27a40038 	addiu	a0,sp,56
 8f8:	02002825 	move	a1,s0
 8fc:	0c000000 	jal	0 <func_800A57C0>
 900:	240701b1 	li	a3,433
 904:	8fbf001c 	lw	ra,28(sp)
 908:	8fb00018 	lw	s0,24(sp)
 90c:	27bd0058 	addiu	sp,sp,88
 910:	03e00008 	jr	ra
 914:	00000000 	nop

00000918 <func_800A60D8>:
 918:	27bdff78 	addiu	sp,sp,-136
 91c:	afb20028 	sw	s2,40(sp)
 920:	afbf0044 	sw	ra,68(sp)
 924:	afbe0040 	sw	s8,64(sp)
 928:	afb7003c 	sw	s7,60(sp)
 92c:	afb60038 	sw	s6,56(sp)
 930:	afb50034 	sw	s5,52(sp)
 934:	afb40030 	sw	s4,48(sp)
 938:	afb3002c 	sw	s3,44(sp)
 93c:	afb10024 	sw	s1,36(sp)
 940:	afb00020 	sw	s0,32(sp)
 944:	afa40088 	sw	a0,136(sp)
 948:	afa5008c 	sw	a1,140(sp)
 94c:	afa70094 	sw	a3,148(sp)
 950:	8cb50000 	lw	s5,0(a1)
 954:	00c09025 	move	s2,a2
 958:	3c060000 	lui	a2,0x0
 95c:	24c60000 	addiu	a2,a2,0
 960:	240701d7 	li	a3,471
 964:	27a40060 	addiu	a0,sp,96
 968:	0c000000 	jal	0 <func_800A57C0>
 96c:	02a02825 	move	a1,s5
 970:	8fb600a4 	lw	s6,164(sp)
 974:	3c050000 	lui	a1,0x0
 978:	24a50000 	addiu	a1,a1,0
 97c:	32cf0001 	andi	t7,s6,0x1
 980:	15e00004 	bnez	t7,994 <func_800A60D8+0x7c>
 984:	02402025 	move	a0,s2
 988:	8fa60088 	lw	a2,136(sp)
 98c:	0c000000 	jal	0 <func_800A57C0>
 990:	8fa7009c 	lw	a3,156(sp)
 994:	8e450000 	lw	a1,0(s2)
 998:	3c090000 	lui	t1,0x0
 99c:	3c0100ff 	lui	at,0xff
 9a0:	8ca20000 	lw	v0,0(a1)
 9a4:	3421ffff 	ori	at,at,0xffff
 9a8:	32cb0002 	andi	t3,s6,0x2
 9ac:	0002c100 	sll	t8,v0,0x4
 9b0:	0018cf02 	srl	t9,t8,0x1c
 9b4:	00194080 	sll	t0,t9,0x2
 9b8:	01284821 	addu	t1,t1,t0
 9bc:	8d290000 	lw	t1,0(t1)
 9c0:	00415024 	and	t2,v0,at
 9c4:	3c018000 	lui	at,0x8000
 9c8:	012a9821 	addu	s3,t1,t2
 9cc:	15600015 	bnez	t3,a24 <func_800A60D8+0x10c>
 9d0:	02619821 	addu	s3,s3,at
 9d4:	8ea402c0 	lw	a0,704(s5)
 9d8:	3c10da38 	lui	s0,0xda38
 9dc:	3c0d0000 	lui	t5,0x0
 9e0:	248c0008 	addiu	t4,a0,8
 9e4:	aeac02c0 	sw	t4,704(s5)
 9e8:	25ad0000 	addiu	t5,t5,0
 9ec:	36100003 	ori	s0,s0,0x3
 9f0:	ac900000 	sw	s0,0(a0)
 9f4:	ac8d0004 	sw	t5,4(a0)
 9f8:	02a02025 	move	a0,s5
 9fc:	0c000000 	jal	0 <func_800A57C0>
 a00:	26450004 	addiu	a1,s2,4
 a04:	10400048 	beqz	v0,b28 <func_800A60D8+0x210>
 a08:	00000000 	nop
 a0c:	8ea402c0 	lw	a0,704(s5)
 a10:	248e0008 	addiu	t6,a0,8
 a14:	aeae02c0 	sw	t6,704(s5)
 a18:	ac820004 	sw	v0,4(a0)
 a1c:	ac900000 	sw	s0,0(a0)
 a20:	8e450000 	lw	a1,0(s2)
 a24:	90af0004 	lbu	t7,4(a1)
 a28:	00008025 	move	s0,zero
 a2c:	02608825 	move	s1,s3
 a30:	19e00036 	blez	t7,b0c <func_800A60D8+0x1f4>
 a34:	8fb700a0 	lw	s7,160(sp)
 a38:	241e0004 	li	s8,4
 a3c:	24140001 	li	s4,1
 a40:	8fb30098 	lw	s3,152(sp)
 a44:	12600007 	beqz	s3,a64 <func_800A60D8+0x14c>
 a48:	02802025 	move	a0,s4
 a4c:	8fa40088 	lw	a0,136(sp)
 a50:	8fa5008c 	lw	a1,140(sp)
 a54:	02003025 	move	a2,s0
 a58:	0260f809 	jalr	s3
 a5c:	02403825 	move	a3,s2
 a60:	00402025 	move	a0,v0
 a64:	8e220000 	lw	v0,0(s1)
 a68:	3c0a0000 	lui	t2,0x0
 a6c:	3c0100ff 	lui	at,0xff
 a70:	0002c900 	sll	t9,v0,0x4
 a74:	00194702 	srl	t0,t9,0x1c
 a78:	00084880 	sll	t1,t0,0x2
 a7c:	01495021 	addu	t2,t2,t1
 a80:	8d4a0000 	lw	t2,0(t2)
 a84:	3421ffff 	ori	at,at,0xffff
 a88:	0041c024 	and	t8,v0,at
 a8c:	3c038000 	lui	v1,0x8000
 a90:	030a5821 	addu	t3,t8,t2
 a94:	006b1821 	addu	v1,v1,t3
 a98:	8c630008 	lw	v1,8(v1)
 a9c:	2401000b 	li	at,11
 aa0:	147e000a 	bne	v1,s8,acc <func_800A60D8+0x1b4>
 aa4:	00000000 	nop
 aa8:	14940008 	bne	a0,s4,acc <func_800A60D8+0x1b4>
 aac:	02402825 	move	a1,s2
 ab0:	02a02025 	move	a0,s5
 ab4:	02003025 	move	a2,s0
 ab8:	02e03825 	move	a3,s7
 abc:	0c000000 	jal	0 <func_800A57C0>
 ac0:	afb60010 	sw	s6,16(sp)
 ac4:	1000000b 	b	af4 <func_800A60D8+0x1dc>
 ac8:	8e4c0000 	lw	t4,0(s2)
 acc:	54610009 	bnel	v1,at,af4 <func_800A60D8+0x1dc>
 ad0:	8e4c0000 	lw	t4,0(s2)
 ad4:	14940006 	bne	a0,s4,af0 <func_800A60D8+0x1d8>
 ad8:	02402825 	move	a1,s2
 adc:	02a02025 	move	a0,s5
 ae0:	02003025 	move	a2,s0
 ae4:	00003825 	move	a3,zero
 ae8:	0c000000 	jal	0 <func_800A57C0>
 aec:	afb60010 	sw	s6,16(sp)
 af0:	8e4c0000 	lw	t4,0(s2)
 af4:	26100001 	addiu	s0,s0,1
 af8:	26310004 	addiu	s1,s1,4
 afc:	918d0004 	lbu	t5,4(t4)
 b00:	020d082a 	slt	at,s0,t5
 b04:	1420ffcf 	bnez	at,a44 <func_800A60D8+0x12c>
 b08:	00000000 	nop
 b0c:	8fa20094 	lw	v0,148(sp)
 b10:	8fa40088 	lw	a0,136(sp)
 b14:	8fa5008c 	lw	a1,140(sp)
 b18:	10400003 	beqz	v0,b28 <func_800A60D8+0x210>
 b1c:	00000000 	nop
 b20:	0040f809 	jalr	v0
 b24:	02403025 	move	a2,s2
 b28:	3c060000 	lui	a2,0x0
 b2c:	24c60000 	addiu	a2,a2,0
 b30:	27a40060 	addiu	a0,sp,96
 b34:	02a02825 	move	a1,s5
 b38:	0c000000 	jal	0 <func_800A57C0>
 b3c:	24070216 	li	a3,534
 b40:	8fbf0044 	lw	ra,68(sp)
 b44:	8fb00020 	lw	s0,32(sp)
 b48:	8fb10024 	lw	s1,36(sp)
 b4c:	8fb20028 	lw	s2,40(sp)
 b50:	8fb3002c 	lw	s3,44(sp)
 b54:	8fb40030 	lw	s4,48(sp)
 b58:	8fb50034 	lw	s5,52(sp)
 b5c:	8fb60038 	lw	s6,56(sp)
 b60:	8fb7003c 	lw	s7,60(sp)
 b64:	8fbe0040 	lw	s8,64(sp)
 b68:	03e00008 	jr	ra
 b6c:	27bd0088 	addiu	sp,sp,136

00000b70 <func_800A6330>:
 b70:	27bdffd8 	addiu	sp,sp,-40
 b74:	8fae0038 	lw	t6,56(sp)
 b78:	afbf0024 	sw	ra,36(sp)
 b7c:	afa00010 	sw	zero,16(sp)
 b80:	afa00018 	sw	zero,24(sp)
 b84:	afa0001c 	sw	zero,28(sp)
 b88:	0c000000 	jal	0 <func_800A57C0>
 b8c:	afae0014 	sw	t6,20(sp)
 b90:	8fbf0024 	lw	ra,36(sp)
 b94:	27bd0028 	addiu	sp,sp,40
 b98:	03e00008 	jr	ra
 b9c:	00000000 	nop

00000ba0 <func_800A6360>:
 ba0:	27bdffd8 	addiu	sp,sp,-40
 ba4:	8fae0038 	lw	t6,56(sp)
 ba8:	8faf003c 	lw	t7,60(sp)
 bac:	afbf0024 	sw	ra,36(sp)
 bb0:	afa00018 	sw	zero,24(sp)
 bb4:	afa0001c 	sw	zero,28(sp)
 bb8:	afae0010 	sw	t6,16(sp)
 bbc:	0c000000 	jal	0 <func_800A57C0>
 bc0:	afaf0014 	sw	t7,20(sp)
 bc4:	8fbf0024 	lw	ra,36(sp)
 bc8:	27bd0028 	addiu	sp,sp,40
 bcc:	03e00008 	jr	ra
 bd0:	00000000 	nop

00000bd4 <func_800A6394>:
 bd4:	27bdffd8 	addiu	sp,sp,-40
 bd8:	8fae0038 	lw	t6,56(sp)
 bdc:	8faf003c 	lw	t7,60(sp)
 be0:	8fb80040 	lw	t8,64(sp)
 be4:	afbf0024 	sw	ra,36(sp)
 be8:	afa0001c 	sw	zero,28(sp)
 bec:	afae0010 	sw	t6,16(sp)
 bf0:	afaf0014 	sw	t7,20(sp)
 bf4:	0c000000 	jal	0 <func_800A57C0>
 bf8:	afb80018 	sw	t8,24(sp)
 bfc:	8fbf0024 	lw	ra,36(sp)
 c00:	27bd0028 	addiu	sp,sp,40
 c04:	03e00008 	jr	ra
 c08:	00000000 	nop

00000c0c <func_800A63CC>:
 c0c:	27bdffd8 	addiu	sp,sp,-40
 c10:	8fae0038 	lw	t6,56(sp)
 c14:	8faf003c 	lw	t7,60(sp)
 c18:	8fb80040 	lw	t8,64(sp)
 c1c:	8fb90044 	lw	t9,68(sp)
 c20:	afbf0024 	sw	ra,36(sp)
 c24:	afae0010 	sw	t6,16(sp)
 c28:	afaf0014 	sw	t7,20(sp)
 c2c:	afb80018 	sw	t8,24(sp)
 c30:	0c000000 	jal	0 <func_800A57C0>
 c34:	afb9001c 	sw	t9,28(sp)
 c38:	8fbf0024 	lw	ra,36(sp)
 c3c:	27bd0028 	addiu	sp,sp,40
 c40:	03e00008 	jr	ra
 c44:	00000000 	nop

00000c48 <func_800A6408>:
 c48:	27bdffa8 	addiu	sp,sp,-88
 c4c:	3c180000 	lui	t8,0x0
 c50:	afbf0014 	sw	ra,20(sp)
 c54:	afa40058 	sw	a0,88(sp)
 c58:	afa5005c 	sw	a1,92(sp)
 c5c:	afa60060 	sw	a2,96(sp)
 c60:	27180000 	addiu	t8,t8,0
 c64:	00057980 	sll	t7,a1,0x6
 c68:	afa70064 	sw	a3,100(sp)
 c6c:	01f82821 	addu	a1,t7,t8
 c70:	27a60018 	addiu	a2,sp,24
 c74:	0c000000 	jal	0 <func_800A57C0>
 c78:	24840004 	addiu	a0,a0,4
 c7c:	27a40018 	addiu	a0,sp,24
 c80:	8fa50060 	lw	a1,96(sp)
 c84:	0c000000 	jal	0 <func_800A57C0>
 c88:	8fa60064 	lw	a2,100(sp)
 c8c:	8fbf0014 	lw	ra,20(sp)
 c90:	27bd0058 	addiu	sp,sp,88
 c94:	03e00008 	jr	ra
 c98:	00000000 	nop
 c9c:	00000000 	nop
