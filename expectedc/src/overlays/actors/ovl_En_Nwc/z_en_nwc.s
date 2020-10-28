
build/src/overlays/actors/ovl_En_Nwc/z_en_nwc.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80ABC0E0>:
   0:	03e00008 	jr	ra
   4:	ac850730 	sw	a1,1840(a0)

00000008 <func_80ABC0E8>:
   8:	afa40000 	sw	a0,0(sp)
   c:	afa50004 	sw	a1,4(sp)
  10:	03e00008 	jr	ra
  14:	afa60008 	sw	a2,8(sp)

00000018 <func_80ABC0F8>:
  18:	27bdffb0 	addiu	sp,sp,-80
  1c:	afbf002c 	sw	ra,44(sp)
  20:	afb00028 	sw	s0,40(sp)
  24:	afa50054 	sw	a1,84(sp)
  28:	908e0001 	lbu	t6,1(a0)
  2c:	c4840008 	lwc1	$f4,8(a0)
  30:	00808025 	move	s0,a0
  34:	31cffffc 	andi	t7,t6,0xfffc
  38:	a08f0001 	sb	t7,1(a0)
  3c:	e7a4003c 	swc1	$f4,60(sp)
  40:	c486000c 	lwc1	$f6,12(a0)
  44:	3c014120 	lui	at,0x4120
  48:	44815000 	mtc1	at,$f10
  4c:	e7a60040 	swc1	$f6,64(sp)
  50:	c4880010 	lwc1	$f8,16(a0)
  54:	8fa40054 	lw	a0,84(sp)
  58:	3c0141a0 	lui	at,0x41a0
  5c:	44818000 	mtc1	at,$f16
  60:	26180038 	addiu	t8,s0,56
  64:	248407c0 	addiu	a0,a0,1984
  68:	afa40034 	sw	a0,52(sp)
  6c:	afb80014 	sw	t8,20(sp)
  70:	26060008 	addiu	a2,s0,8
  74:	2607001c 	addiu	a3,s0,28
  78:	27a5003c 	addiu	a1,sp,60
  7c:	e7aa0010 	swc1	$f10,16(sp)
  80:	e7a80044 	swc1	$f8,68(sp)
  84:	0c000000 	jal	0 <func_80ABC0E0>
  88:	e7b00018 	swc1	$f16,24(sp)
  8c:	10400004 	beqz	v0,a0 <func_80ABC0F8+0x88>
  90:	8fa40034 	lw	a0,52(sp)
  94:	92190001 	lbu	t9,1(s0)
  98:	37280002 	ori	t0,t9,0x2
  9c:	a2080001 	sb	t0,1(s0)
  a0:	27a5004c 	addiu	a1,sp,76
  a4:	27a60048 	addiu	a2,sp,72
  a8:	0c000000 	jal	0 <func_80ABC0E0>
  ac:	27a7003c 	addiu	a3,sp,60
  b0:	c612000c 	lwc1	$f18,12(s0)
  b4:	44802000 	mtc1	zero,$f4
  b8:	e6000004 	swc1	$f0,4(s0)
  bc:	46120081 	sub.s	$f2,$f0,$f18
  c0:	3c014220 	lui	at,0x4220
  c4:	4602203e 	c.le.s	$f4,$f2
  c8:	00000000 	nop
  cc:	4502000d 	bc1fl	104 <func_80ABC0F8+0xec>
  d0:	8fbf002c 	lw	ra,44(sp)
  d4:	44813000 	mtc1	at,$f6
  d8:	00000000 	nop
  dc:	4606103c 	c.lt.s	$f2,$f6
  e0:	00000000 	nop
  e4:	45020007 	bc1fl	104 <func_80ABC0F8+0xec>
  e8:	8fbf002c 	lw	ra,44(sp)
  ec:	92090001 	lbu	t1,1(s0)
  f0:	c6080004 	lwc1	$f8,4(s0)
  f4:	352a0001 	ori	t2,t1,0x1
  f8:	a20a0001 	sb	t2,1(s0)
  fc:	e608000c 	swc1	$f8,12(s0)
 100:	8fbf002c 	lw	ra,44(sp)
 104:	8fb00028 	lw	s0,40(sp)
 108:	27bd0050 	addiu	sp,sp,80
 10c:	03e00008 	jr	ra
 110:	00000000 	nop

00000114 <func_80ABC1F4>:
 114:	27bdffe8 	addiu	sp,sp,-24
 118:	3c01c120 	lui	at,0xc120
 11c:	44811000 	mtc1	at,$f2
 120:	afbf0014 	sw	ra,20(sp)
 124:	afa5001c 	sw	a1,28(sp)
 128:	3c010000 	lui	at,0x0
 12c:	c4260000 	lwc1	$f6,0(at)
 130:	c484002c 	lwc1	$f4,44(a0)
 134:	00c02825 	move	a1,a2
 138:	46062201 	sub.s	$f8,$f4,$f6
 13c:	e488002c 	swc1	$f8,44(a0)
 140:	c480002c 	lwc1	$f0,44(a0)
 144:	4602003c 	c.lt.s	$f0,$f2
 148:	00000000 	nop
 14c:	45020004 	bc1fl	160 <func_80ABC1F4+0x4c>
 150:	c48a000c 	lwc1	$f10,12(a0)
 154:	e482002c 	swc1	$f2,44(a0)
 158:	c480002c 	lwc1	$f0,44(a0)
 15c:	c48a000c 	lwc1	$f10,12(a0)
 160:	46005400 	add.s	$f16,$f10,$f0
 164:	e490000c 	swc1	$f16,12(a0)
 168:	0c000000 	jal	0 <func_80ABC0E0>
 16c:	afa40018 	sw	a0,24(sp)
 170:	8fbf0014 	lw	ra,20(sp)
 174:	27bd0018 	addiu	sp,sp,24
 178:	03e00008 	jr	ra
 17c:	00000000 	nop

00000180 <func_80ABC260>:
 180:	27bdff70 	addiu	sp,sp,-144
 184:	3c010000 	lui	at,0x0
 188:	c4240000 	lwc1	$f4,0(at)
 18c:	afbf0054 	sw	ra,84(sp)
 190:	afb70050 	sw	s7,80(sp)
 194:	afb6004c 	sw	s6,76(sp)
 198:	afb50048 	sw	s5,72(sp)
 19c:	afb40044 	sw	s4,68(sp)
 1a0:	afb30040 	sw	s3,64(sp)
 1a4:	afb2003c 	sw	s2,60(sp)
 1a8:	afb10038 	sw	s1,56(sp)
 1ac:	afb00034 	sw	s0,52(sp)
 1b0:	f7ba0028 	sdc1	$f26,40(sp)
 1b4:	f7b80020 	sdc1	$f24,32(sp)
 1b8:	f7b60018 	sdc1	$f22,24(sp)
 1bc:	f7b40010 	sdc1	$f20,16(sp)
 1c0:	8c910168 	lw	s1,360(a0)
 1c4:	e7a40080 	swc1	$f4,128(sp)
 1c8:	908e016c 	lbu	t6,364(a0)
 1cc:	0080a025 	move	s4,a0
 1d0:	00a0b825 	move	s7,a1
 1d4:	24900170 	addiu	s0,a0,368
 1d8:	19c0005a 	blez	t6,344 <func_80ABC260+0x1c4>
 1dc:	00009825 	move	s3,zero
 1e0:	3c0142c8 	lui	at,0x42c8
 1e4:	4481c000 	mtc1	at,$f24
 1e8:	3c014120 	lui	at,0x4120
 1ec:	4481b000 	mtc1	at,$f22
 1f0:	3c013f80 	lui	at,0x3f80
 1f4:	3c150000 	lui	s5,0x0
 1f8:	4481a000 	mtc1	at,$f20
 1fc:	4480d000 	mtc1	zero,$f26
 200:	26b50000 	addiu	s5,s5,0
 204:	27b6007c 	addiu	s6,sp,124
 208:	26120008 	addiu	s2,s0,8
 20c:	02402825 	move	a1,s2
 210:	0c000000 	jal	0 <func_80ABC0E0>
 214:	2604001c 	addiu	a0,s0,28
 218:	820f0000 	lb	t7,0(s0)
 21c:	02002025 	move	a0,s0
 220:	02802825 	move	a1,s4
 224:	000fc080 	sll	t8,t7,0x2
 228:	02b8c821 	addu	t9,s5,t8
 22c:	8f390000 	lw	t9,0(t9)
 230:	02e03025 	move	a2,s7
 234:	0320f809 	jalr	t9
 238:	00000000 	nop
 23c:	c6060008 	lwc1	$f6,8(s0)
 240:	4600320d 	trunc.w.s	$f8,$f6
 244:	44094000 	mfc1	t1,$f8
 248:	00000000 	nop
 24c:	a6290030 	sh	t1,48(s1)
 250:	c60a000c 	lwc1	$f10,12(s0)
 254:	4600510d 	trunc.w.s	$f4,$f10
 258:	440b2000 	mfc1	t3,$f4
 25c:	00000000 	nop
 260:	a62b0032 	sh	t3,50(s1)
 264:	c6060010 	lwc1	$f6,16(s0)
 268:	4600320d 	trunc.w.s	$f8,$f6
 26c:	440d4000 	mfc1	t5,$f8
 270:	00000000 	nop
 274:	a62d0034 	sh	t5,52(s1)
 278:	c7a40080 	lwc1	$f4,128(sp)
 27c:	c60a000c 	lwc1	$f10,12(s0)
 280:	c7a6007c 	lwc1	$f6,124(sp)
 284:	46045081 	sub.s	$f2,$f10,$f4
 288:	46001005 	abs.s	$f0,$f2
 28c:	4616003c 	c.lt.s	$f0,$f22
 290:	00000000 	nop
 294:	4502001f 	bc1fl	314 <func_80ABC260+0x194>
 298:	8e4f0000 	lw	t7,0(s2)
 29c:	c6020008 	lwc1	$f2,8(s0)
 2a0:	c60c0010 	lwc1	$f12,16(s0)
 2a4:	c7a80084 	lwc1	$f8,132(sp)
 2a8:	46061381 	sub.s	$f14,$f2,$f6
 2ac:	46086401 	sub.s	$f16,$f12,$f8
 2b0:	460e7282 	mul.s	$f10,$f14,$f14
 2b4:	00000000 	nop
 2b8:	46108102 	mul.s	$f4,$f16,$f16
 2bc:	46045480 	add.s	$f18,$f10,$f4
 2c0:	4618903c 	c.lt.s	$f18,$f24
 2c4:	00000000 	nop
 2c8:	45000011 	bc1f	310 <func_80ABC260+0x190>
 2cc:	00000000 	nop
 2d0:	461a9032 	c.eq.s	$f18,$f26
 2d4:	00000000 	nop
 2d8:	4503000a 	bc1tl	304 <func_80ABC260+0x184>
 2dc:	46141180 	add.s	$f6,$f2,$f20
 2e0:	46009004 	sqrt.s	$f0,$f18
 2e4:	46007183 	div.s	$f6,$f14,$f0
 2e8:	46008283 	div.s	$f10,$f16,$f0
 2ec:	46061200 	add.s	$f8,$f2,$f6
 2f0:	e6080008 	swc1	$f8,8(s0)
 2f4:	460a6100 	add.s	$f4,$f12,$f10
 2f8:	10000005 	b	310 <func_80ABC260+0x190>
 2fc:	e6040010 	swc1	$f4,16(s0)
 300:	46141180 	add.s	$f6,$f2,$f20
 304:	46146200 	add.s	$f8,$f12,$f20
 308:	e6060008 	swc1	$f6,8(s0)
 30c:	e6080010 	swc1	$f8,16(s0)
 310:	8e4f0000 	lw	t7,0(s2)
 314:	26730001 	addiu	s3,s3,1
 318:	2610005c 	addiu	s0,s0,92
 31c:	aecf0000 	sw	t7,0(s6)
 320:	8e4e0004 	lw	t6,4(s2)
 324:	26310040 	addiu	s1,s1,64
 328:	aece0004 	sw	t6,4(s6)
 32c:	8e4f0008 	lw	t7,8(s2)
 330:	aecf0008 	sw	t7,8(s6)
 334:	9298016c 	lbu	t8,364(s4)
 338:	0278082a 	slt	at,s3,t8
 33c:	5420ffb3 	bnezl	at,20c <func_80ABC260+0x8c>
 340:	26120008 	addiu	s2,s0,8
 344:	8fbf0054 	lw	ra,84(sp)
 348:	d7b40010 	ldc1	$f20,16(sp)
 34c:	d7b60018 	ldc1	$f22,24(sp)
 350:	d7b80020 	ldc1	$f24,32(sp)
 354:	d7ba0028 	ldc1	$f26,40(sp)
 358:	8fb00034 	lw	s0,52(sp)
 35c:	8fb10038 	lw	s1,56(sp)
 360:	8fb2003c 	lw	s2,60(sp)
 364:	8fb30040 	lw	s3,64(sp)
 368:	8fb40044 	lw	s4,68(sp)
 36c:	8fb50048 	lw	s5,72(sp)
 370:	8fb6004c 	lw	s6,76(sp)
 374:	8fb70050 	lw	s7,80(sp)
 378:	03e00008 	jr	ra
 37c:	27bd0090 	addiu	sp,sp,144

00000380 <func_80ABC460>:
 380:	27bdff00 	addiu	sp,sp,-256
 384:	afbf004c 	sw	ra,76(sp)
 388:	afbe0048 	sw	s8,72(sp)
 38c:	afb70044 	sw	s7,68(sp)
 390:	afb60040 	sw	s6,64(sp)
 394:	afb5003c 	sw	s5,60(sp)
 398:	afb40038 	sw	s4,56(sp)
 39c:	afb30034 	sw	s3,52(sp)
 3a0:	afb20030 	sw	s2,48(sp)
 3a4:	afb1002c 	sw	s1,44(sp)
 3a8:	afb00028 	sw	s0,40(sp)
 3ac:	f7b40020 	sdc1	$f20,32(sp)
 3b0:	afa40100 	sw	a0,256(sp)
 3b4:	afa50104 	sw	a1,260(sp)
 3b8:	8ca50000 	lw	a1,0(a1)
 3bc:	3c060000 	lui	a2,0x0
 3c0:	24c60000 	addiu	a2,a2,0
 3c4:	27a40098 	addiu	a0,sp,152
 3c8:	2407013c 	li	a3,316
 3cc:	0c000000 	jal	0 <func_80ABC0E0>
 3d0:	afa500a8 	sw	a1,168(sp)
 3d4:	0c000000 	jal	0 <func_80ABC0E0>
 3d8:	8fa40104 	lw	a0,260(sp)
 3dc:	8fb80100 	lw	t8,256(sp)
 3e0:	8faf00a8 	lw	t7,168(sp)
 3e4:	3c0a0600 	lui	t2,0x600
 3e8:	9305016c 	lbu	a1,364(t8)
 3ec:	8df002d0 	lw	s0,720(t7)
 3f0:	254a0840 	addiu	t2,t2,2112
 3f4:	0005c880 	sll	t9,a1,0x2
 3f8:	0325c823 	subu	t9,t9,a1
 3fc:	0019c8c0 	sll	t9,t9,0x3
 400:	02001025 	move	v0,s0
 404:	3c09de00 	lui	t1,0xde00
 408:	03309021 	addu	s2,t9,s0
 40c:	26520008 	addiu	s2,s2,8
 410:	ac490000 	sw	t1,0(v0)
 414:	ac4a0004 	sw	t2,4(v0)
 418:	02401025 	move	v0,s2
 41c:	3c0c0600 	lui	t4,0x600
 420:	00054100 	sll	t0,a1,0x4
 424:	01129821 	addu	s3,t0,s2
 428:	258c0bf0 	addiu	t4,t4,3056
 42c:	3c0bde00 	lui	t3,0xde00
 430:	26730008 	addiu	s3,s3,8
 434:	ac4b0000 	sw	t3,0(v0)
 438:	ac4c0004 	sw	t4,4(v0)
 43c:	02601025 	move	v0,s3
 440:	3c0e0600 	lui	t6,0x600
 444:	25ce0c88 	addiu	t6,t6,3208
 448:	3c0dde00 	lui	t5,0xde00
 44c:	ac4d0000 	sw	t5,0(v0)
 450:	ac4e0004 	sw	t6,4(v0)
 454:	8faf0100 	lw	t7,256(sp)
 458:	26520008 	addiu	s2,s2,8
 45c:	26730008 	addiu	s3,s3,8
 460:	25f10170 	addiu	s1,t7,368
 464:	afb10058 	sw	s1,88(sp)
 468:	91e5016c 	lbu	a1,364(t7)
 46c:	0000a825 	move	s5,zero
 470:	3c010000 	lui	at,0x0
 474:	18a0004e 	blez	a1,5b0 <func_80ABC460+0x230>
 478:	26100008 	addiu	s0,s0,8
 47c:	3c1eda38 	lui	s8,0xda38
 480:	37de0003 	ori	s8,s8,0x3
 484:	c4340000 	lwc1	$f20,0(at)
 488:	82390000 	lb	t9,0(s1)
 48c:	3c140600 	lui	s4,0x600
 490:	269408b0 	addiu	s4,s4,2224
 494:	13200040 	beqz	t9,598 <func_80ABC460+0x218>
 498:	26270030 	addiu	a3,s1,48
 49c:	96280036 	lhu	t0,54(s1)
 4a0:	c62c0008 	lwc1	$f12,8(s1)
 4a4:	c624000c 	lwc1	$f4,12(s1)
 4a8:	44883000 	mtc1	t0,$f6
 4ac:	3c160600 	lui	s6,0x600
 4b0:	05010005 	bgez	t0,4c8 <func_80ABC460+0x148>
 4b4:	46803220 	cvt.s.w	$f8,$f6
 4b8:	3c014f80 	lui	at,0x4f80
 4bc:	44815000 	mtc1	at,$f10
 4c0:	00000000 	nop
 4c4:	460a4200 	add.s	$f8,$f8,$f10
 4c8:	3c170600 	lui	s7,0x600
 4cc:	26f70ce0 	addiu	s7,s7,3296
 4d0:	46082380 	add.s	$f14,$f4,$f8
 4d4:	8e260010 	lw	a2,16(s1)
 4d8:	0c000000 	jal	0 <func_80ABC0E0>
 4dc:	26d60c68 	addiu	s6,s6,3176
 4e0:	4406a000 	mfc1	a2,$f20
 4e4:	4600a306 	mov.s	$f12,$f20
 4e8:	4600a386 	mov.s	$f14,$f20
 4ec:	0c000000 	jal	0 <func_80ABC0E0>
 4f0:	24070001 	li	a3,1
 4f4:	8fa90104 	lw	t1,260(sp)
 4f8:	3c050000 	lui	a1,0x0
 4fc:	24a50000 	addiu	a1,a1,0
 500:	2406015a 	li	a2,346
 504:	0c000000 	jal	0 <func_80ABC0E0>
 508:	8d240000 	lw	a0,0(t1)
 50c:	02001825 	move	v1,s0
 510:	3c0b0064 	lui	t3,0x64
 514:	356bffff 	ori	t3,t3,0xffff
 518:	3c0afb00 	lui	t2,0xfb00
 51c:	ac6a0000 	sw	t2,0(v1)
 520:	ac6b0004 	sw	t3,4(v1)
 524:	26100008 	addiu	s0,s0,8
 528:	02001825 	move	v1,s0
 52c:	ac7e0000 	sw	s8,0(v1)
 530:	ac620004 	sw	v0,4(v1)
 534:	26100008 	addiu	s0,s0,8
 538:	02001825 	move	v1,s0
 53c:	3c04de00 	lui	a0,0xde00
 540:	ac640000 	sw	a0,0(v1)
 544:	ac740004 	sw	s4,4(v1)
 548:	02401825 	move	v1,s2
 54c:	ac7e0000 	sw	s8,0(v1)
 550:	ac620004 	sw	v0,4(v1)
 554:	26520008 	addiu	s2,s2,8
 558:	02401825 	move	v1,s2
 55c:	ac640000 	sw	a0,0(v1)
 560:	ac760004 	sw	s6,4(v1)
 564:	02601825 	move	v1,s3
 568:	ac620004 	sw	v0,4(v1)
 56c:	26730008 	addiu	s3,s3,8
 570:	ac7e0000 	sw	s8,0(v1)
 574:	02601025 	move	v0,s3
 578:	3c0cde00 	lui	t4,0xde00
 57c:	ac4c0000 	sw	t4,0(v0)
 580:	ac570004 	sw	s7,4(v0)
 584:	8fad0100 	lw	t5,256(sp)
 588:	26100008 	addiu	s0,s0,8
 58c:	26520008 	addiu	s2,s2,8
 590:	26730008 	addiu	s3,s3,8
 594:	91a5016c 	lbu	a1,364(t5)
 598:	26b50001 	addiu	s5,s5,1
 59c:	02a5082a 	slt	at,s5,a1
 5a0:	1420ffb9 	bnez	at,488 <func_80ABC460+0x108>
 5a4:	2631005c 	addiu	s1,s1,92
 5a8:	8fb10058 	lw	s1,88(sp)
 5ac:	0000a825 	move	s5,zero
 5b0:	8fae00a8 	lw	t6,168(sp)
 5b4:	3c1eda38 	lui	s8,0xda38
 5b8:	37de0003 	ori	s8,s8,0x3
 5bc:	add302d0 	sw	s3,720(t6)
 5c0:	8fb80104 	lw	t8,260(sp)
 5c4:	0c000000 	jal	0 <func_80ABC0E0>
 5c8:	8f040000 	lw	a0,0(t8)
 5cc:	8faf00a8 	lw	t7,168(sp)
 5d0:	3c090600 	lui	t1,0x600
 5d4:	25290d10 	addiu	t1,t1,3344
 5d8:	8de202d0 	lw	v0,720(t7)
 5dc:	3c08de00 	lui	t0,0xde00
 5e0:	3c140000 	lui	s4,0x0
 5e4:	24590008 	addiu	t9,v0,8
 5e8:	adf902d0 	sw	t9,720(t7)
 5ec:	ac490004 	sw	t1,4(v0)
 5f0:	ac480000 	sw	t0,0(v0)
 5f4:	8faa0100 	lw	t2,256(sp)
 5f8:	26940000 	addiu	s4,s4,0
 5fc:	3c013f80 	lui	at,0x3f80
 600:	9145016c 	lbu	a1,364(t2)
 604:	58a0003a 	blezl	a1,6f0 <func_80ABC460+0x370>
 608:	8fa90104 	lw	t1,260(sp)
 60c:	4481a000 	mtc1	at,$f20
 610:	27b300b0 	addiu	s3,sp,176
 614:	822b0000 	lb	t3,0(s1)
 618:	51600031 	beqzl	t3,6e0 <func_80ABC460+0x360>
 61c:	26b50001 	addiu	s5,s5,1
 620:	8e240038 	lw	a0,56(s1)
 624:	3c120600 	lui	s2,0x600
 628:	26520d50 	addiu	s2,s2,3408
 62c:	5080002c 	beqzl	a0,6e0 <func_80ABC460+0x360>
 630:	26b50001 	addiu	s5,s5,1
 634:	8e250008 	lw	a1,8(s1)
 638:	8e260004 	lw	a2,4(s1)
 63c:	8e270010 	lw	a3,16(s1)
 640:	0c000000 	jal	0 <func_80ABC0E0>
 644:	afb30010 	sw	s3,16(sp)
 648:	0c000000 	jal	0 <func_80ABC0E0>
 64c:	02602025 	move	a0,s3
 650:	862c0032 	lh	t4,50(s1)
 654:	3c010000 	lui	at,0x0
 658:	c4260000 	lwc1	$f6,0(at)
 65c:	448c8000 	mtc1	t4,$f16
 660:	24050001 	li	a1,1
 664:	468084a0 	cvt.s.w	$f18,$f16
 668:	46069302 	mul.s	$f12,$f18,$f6
 66c:	0c000000 	jal	0 <func_80ABC0E0>
 670:	00000000 	nop
 674:	4406a000 	mfc1	a2,$f20
 678:	4600a306 	mov.s	$f12,$f20
 67c:	4600a386 	mov.s	$f14,$f20
 680:	0c000000 	jal	0 <func_80ABC0E0>
 684:	24070001 	li	a3,1
 688:	8fa300a8 	lw	v1,168(sp)
 68c:	02802825 	move	a1,s4
 690:	24060184 	li	a2,388
 694:	8c6202d0 	lw	v0,720(v1)
 698:	244d0008 	addiu	t5,v0,8
 69c:	ac6d02d0 	sw	t5,720(v1)
 6a0:	ac5e0000 	sw	s8,0(v0)
 6a4:	8fae0104 	lw	t6,260(sp)
 6a8:	00408025 	move	s0,v0
 6ac:	0c000000 	jal	0 <func_80ABC0E0>
 6b0:	8dc40000 	lw	a0,0(t6)
 6b4:	ae020004 	sw	v0,4(s0)
 6b8:	8fb800a8 	lw	t8,168(sp)
 6bc:	3c0fde00 	lui	t7,0xde00
 6c0:	8f0202d0 	lw	v0,720(t8)
 6c4:	24590008 	addiu	t9,v0,8
 6c8:	af1902d0 	sw	t9,720(t8)
 6cc:	ac520004 	sw	s2,4(v0)
 6d0:	ac4f0000 	sw	t7,0(v0)
 6d4:	8fa80100 	lw	t0,256(sp)
 6d8:	9105016c 	lbu	a1,364(t0)
 6dc:	26b50001 	addiu	s5,s5,1
 6e0:	02a5082a 	slt	at,s5,a1
 6e4:	1420ffcb 	bnez	at,614 <func_80ABC460+0x294>
 6e8:	2631005c 	addiu	s1,s1,92
 6ec:	8fa90104 	lw	t1,260(sp)
 6f0:	3c060000 	lui	a2,0x0
 6f4:	24c60000 	addiu	a2,a2,0
 6f8:	27a40098 	addiu	a0,sp,152
 6fc:	2407018b 	li	a3,395
 700:	0c000000 	jal	0 <func_80ABC0E0>
 704:	8d250000 	lw	a1,0(t1)
 708:	8fbf004c 	lw	ra,76(sp)
 70c:	d7b40020 	ldc1	$f20,32(sp)
 710:	8fb00028 	lw	s0,40(sp)
 714:	8fb1002c 	lw	s1,44(sp)
 718:	8fb20030 	lw	s2,48(sp)
 71c:	8fb30034 	lw	s3,52(sp)
 720:	8fb40038 	lw	s4,56(sp)
 724:	8fb5003c 	lw	s5,60(sp)
 728:	8fb60040 	lw	s6,64(sp)
 72c:	8fb70044 	lw	s7,68(sp)
 730:	8fbe0048 	lw	s8,72(sp)
 734:	03e00008 	jr	ra
 738:	27bd0100 	addiu	sp,sp,256

0000073c <EnNwc_Init>:
 73c:	27bdfd60 	addiu	sp,sp,-672
 740:	afb4003c 	sw	s4,60(sp)
 744:	3c140000 	lui	s4,0x0
 748:	26940000 	addiu	s4,s4,0
 74c:	afb50040 	sw	s5,64(sp)
 750:	afb30038 	sw	s3,56(sp)
 754:	afb20034 	sw	s2,52(sp)
 758:	afb10030 	sw	s1,48(sp)
 75c:	27a20058 	addiu	v0,sp,88
 760:	3c030000 	lui	v1,0x0
 764:	00809025 	move	s2,a0
 768:	00a09825 	move	s3,a1
 76c:	afbf0044 	sw	ra,68(sp)
 770:	afb0002c 	sw	s0,44(sp)
 774:	f7b80020 	sdc1	$f24,32(sp)
 778:	f7b60018 	sdc1	$f22,24(sp)
 77c:	f7b40010 	sdc1	$f20,16(sp)
 780:	0080a825 	move	s5,a0
 784:	ae82000c 	sw	v0,12(s4)
 788:	24630000 	addiu	v1,v1,0
 78c:	00008825 	move	s1,zero
 790:	0060c825 	move	t9,v1
 794:	00404025 	move	t0,v0
 798:	24690024 	addiu	t1,v1,36
 79c:	8f380000 	lw	t8,0(t9)
 7a0:	2739000c 	addiu	t9,t9,12
 7a4:	2508000c 	addiu	t0,t0,12
 7a8:	ad18fff4 	sw	t8,-12(t0)
 7ac:	8f2ffff8 	lw	t7,-8(t9)
 7b0:	ad0ffff8 	sw	t7,-8(t0)
 7b4:	8f38fffc 	lw	t8,-4(t9)
 7b8:	1729fff8 	bne	t9,t1,79c <EnNwc_Init+0x60>
 7bc:	ad18fffc 	sw	t8,-4(t0)
 7c0:	26310001 	addiu	s1,s1,1
 7c4:	2a210010 	slti	at,s1,16
 7c8:	1420fff1 	bnez	at,790 <EnNwc_Init+0x54>
 7cc:	24420024 	addiu	v0,v0,36
 7d0:	2650014c 	addiu	s0,s2,332
 7d4:	02002825 	move	a1,s0
 7d8:	0c000000 	jal	0 <func_80ABC0E0>
 7dc:	02602025 	move	a0,s3
 7e0:	02602025 	move	a0,s3
 7e4:	02002825 	move	a1,s0
 7e8:	02403025 	move	a2,s2
 7ec:	0c000000 	jal	0 <func_80ABC0E0>
 7f0:	02803825 	move	a3,s4
 7f4:	240a0010 	li	t2,16
 7f8:	314b00ff 	andi	t3,t2,0xff
 7fc:	a24a016c 	sb	t2,364(s2)
 800:	26500170 	addiu	s0,s2,368
 804:	19600020 	blez	t3,888 <EnNwc_Init+0x14c>
 808:	00008825 	move	s1,zero
 80c:	3c0141a0 	lui	at,0x41a0
 810:	4481c000 	mtc1	at,$f24
 814:	3c014248 	lui	at,0x4248
 818:	4481b000 	mtc1	at,$f22
 81c:	3c0142c8 	lui	at,0x42c8
 820:	4481a000 	mtc1	at,$f20
 824:	24140005 	li	s4,5
 828:	24130001 	li	s3,1
 82c:	0c000000 	jal	0 <func_80ABC0E0>
 830:	a2130000 	sb	s3,0(s0)
 834:	46140102 	mul.s	$f4,$f0,$f20
 838:	c6480024 	lwc1	$f8,36(s2)
 83c:	46162181 	sub.s	$f6,$f4,$f22
 840:	46083280 	add.s	$f10,$f6,$f8
 844:	e60a0008 	swc1	$f10,8(s0)
 848:	c6500028 	lwc1	$f16,40(s2)
 84c:	46188480 	add.s	$f18,$f16,$f24
 850:	0c000000 	jal	0 <func_80ABC0E0>
 854:	e612000c 	swc1	$f18,12(s0)
 858:	46140102 	mul.s	$f4,$f0,$f20
 85c:	c648002c 	lwc1	$f8,44(s2)
 860:	a6140036 	sh	s4,54(s0)
 864:	26310001 	addiu	s1,s1,1
 868:	2610005c 	addiu	s0,s0,92
 86c:	46162181 	sub.s	$f6,$f4,$f22
 870:	46083280 	add.s	$f10,$f6,$f8
 874:	e60affb4 	swc1	$f10,-76(s0)
 878:	92ac016c 	lbu	t4,364(s5)
 87c:	022c082a 	slt	at,s1,t4
 880:	1420ffea 	bnez	at,82c <EnNwc_Init+0xf0>
 884:	00000000 	nop
 888:	3c050000 	lui	a1,0x0
 88c:	24a50000 	addiu	a1,a1,0
 890:	0c000000 	jal	0 <func_80ABC0E0>
 894:	02402025 	move	a0,s2
 898:	8fbf0044 	lw	ra,68(sp)
 89c:	d7b40010 	ldc1	$f20,16(sp)
 8a0:	d7b60018 	ldc1	$f22,24(sp)
 8a4:	d7b80020 	ldc1	$f24,32(sp)
 8a8:	8fb0002c 	lw	s0,44(sp)
 8ac:	8fb10030 	lw	s1,48(sp)
 8b0:	8fb20034 	lw	s2,52(sp)
 8b4:	8fb30038 	lw	s3,56(sp)
 8b8:	8fb4003c 	lw	s4,60(sp)
 8bc:	8fb50040 	lw	s5,64(sp)
 8c0:	03e00008 	jr	ra
 8c4:	27bd02a0 	addiu	sp,sp,672

000008c8 <EnNwc_Destroy>:
 8c8:	27bdffe8 	addiu	sp,sp,-24
 8cc:	00803025 	move	a2,a0
 8d0:	afbf0014 	sw	ra,20(sp)
 8d4:	00a02025 	move	a0,a1
 8d8:	0c000000 	jal	0 <func_80ABC0E0>
 8dc:	24c5014c 	addiu	a1,a2,332
 8e0:	8fbf0014 	lw	ra,20(sp)
 8e4:	27bd0018 	addiu	sp,sp,24
 8e8:	03e00008 	jr	ra
 8ec:	00000000 	nop

000008f0 <func_80ABC9D0>:
 8f0:	27bdffe8 	addiu	sp,sp,-24
 8f4:	afbf0014 	sw	ra,20(sp)
 8f8:	0c000000 	jal	0 <func_80ABC0E0>
 8fc:	00000000 	nop
 900:	8fbf0014 	lw	ra,20(sp)
 904:	27bd0018 	addiu	sp,sp,24
 908:	03e00008 	jr	ra
 90c:	00000000 	nop

00000910 <EnNwc_Update>:
 910:	27bdffe8 	addiu	sp,sp,-24
 914:	afbf0014 	sw	ra,20(sp)
 918:	afa5001c 	sw	a1,28(sp)
 91c:	afa40018 	sw	a0,24(sp)
 920:	8c990730 	lw	t9,1840(a0)
 924:	0320f809 	jalr	t9
 928:	00000000 	nop
 92c:	8fa4001c 	lw	a0,28(sp)
 930:	8fa70018 	lw	a3,24(sp)
 934:	3c010001 	lui	at,0x1
 938:	34211e60 	ori	at,at,0x1e60
 93c:	00812821 	addu	a1,a0,at
 940:	0c000000 	jal	0 <func_80ABC0E0>
 944:	24e6014c 	addiu	a2,a3,332
 948:	8fbf0014 	lw	ra,20(sp)
 94c:	27bd0018 	addiu	sp,sp,24
 950:	03e00008 	jr	ra
 954:	00000000 	nop

00000958 <EnNwc_Draw>:
 958:	27bdffe8 	addiu	sp,sp,-24
 95c:	afbf0014 	sw	ra,20(sp)
 960:	0c000000 	jal	0 <func_80ABC0E0>
 964:	00000000 	nop
 968:	8fbf0014 	lw	ra,20(sp)
 96c:	27bd0018 	addiu	sp,sp,24
 970:	03e00008 	jr	ra
 974:	00000000 	nop
	...
