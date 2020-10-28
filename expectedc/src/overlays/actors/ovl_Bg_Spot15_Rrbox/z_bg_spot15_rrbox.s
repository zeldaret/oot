
build/src/overlays/actors/ovl_Bg_Spot15_Rrbox/z_bg_spot15_rrbox.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808B3960>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0024 	sw	ra,36(sp)
   8:	afb00020 	sw	s0,32(sp)
   c:	afa5003c 	sw	a1,60(sp)
  10:	00808025 	move	s0,a0
  14:	afa60040 	sw	a2,64(sp)
  18:	afa00030 	sw	zero,48(sp)
  1c:	0c000000 	jal	0 <func_808B3960>
  20:	00e02825 	move	a1,a3
  24:	8fa40040 	lw	a0,64(sp)
  28:	0c000000 	jal	0 <func_808B3960>
  2c:	27a50030 	addiu	a1,sp,48
  30:	8fa4003c 	lw	a0,60(sp)
  34:	02003025 	move	a2,s0
  38:	8fa70030 	lw	a3,48(sp)
  3c:	0c000000 	jal	0 <func_808B3960>
  40:	24850810 	addiu	a1,a0,2064
  44:	24010032 	li	at,50
  48:	1441000a 	bne	v0,at,74 <func_808B3960+0x74>
  4c:	ae02014c 	sw	v0,332(s0)
  50:	860e001c 	lh	t6,28(s0)
  54:	3c040000 	lui	a0,0x0
  58:	3c050000 	lui	a1,0x0
  5c:	86070000 	lh	a3,0(s0)
  60:	24a50040 	addiu	a1,a1,64
  64:	24840000 	addiu	a0,a0,0
  68:	240600ab 	li	a2,171
  6c:	0c000000 	jal	0 <func_808B3960>
  70:	afae0010 	sw	t6,16(sp)
  74:	8fbf0024 	lw	ra,36(sp)
  78:	8fb00020 	lw	s0,32(sp)
  7c:	27bd0038 	addiu	sp,sp,56
  80:	03e00008 	jr	ra
  84:	00000000 	nop

00000088 <func_808B39E8>:
  88:	44866000 	mtc1	a2,$f12
  8c:	c4a40008 	lwc1	$f4,8(a1)
  90:	44877000 	mtc1	a3,$f14
  94:	c4a80000 	lwc1	$f8,0(a1)
  98:	460c2182 	mul.s	$f6,$f4,$f12
  9c:	00000000 	nop
  a0:	460e4282 	mul.s	$f10,$f8,$f14
  a4:	460a3400 	add.s	$f16,$f6,$f10
  a8:	e4900000 	swc1	$f16,0(a0)
  ac:	c4b20004 	lwc1	$f18,4(a1)
  b0:	e4920004 	swc1	$f18,4(a0)
  b4:	c4a40008 	lwc1	$f4,8(a1)
  b8:	c4a60000 	lwc1	$f6,0(a1)
  bc:	460e2202 	mul.s	$f8,$f4,$f14
  c0:	00000000 	nop
  c4:	460c3282 	mul.s	$f10,$f6,$f12
  c8:	460a4401 	sub.s	$f16,$f8,$f10
  cc:	03e00008 	jr	ra
  d0:	e4900008 	swc1	$f16,8(a0)

000000d4 <func_808B3A34>:
  d4:	240e0032 	li	t6,50
  d8:	03e00008 	jr	ra
  dc:	ac8e0180 	sw	t6,384(a0)

000000e0 <func_808B3A40>:
  e0:	27bdffe8 	addiu	sp,sp,-24
  e4:	afa40018 	sw	a0,24(sp)
  e8:	8fae0018 	lw	t6,24(sp)
  ec:	afbf0014 	sw	ra,20(sp)
  f0:	24a407c0 	addiu	a0,a1,1984
  f4:	0c000000 	jal	0 <func_808B3960>
  f8:	8dc50180 	lw	a1,384(t6)
  fc:	1040000e 	beqz	v0,138 <func_808B3A40+0x58>
 100:	8fa40018 	lw	a0,24(sp)
 104:	c44c0024 	lwc1	$f12,36(v0)
 108:	c44e002c 	lwc1	$f14,44(v0)
 10c:	8c860024 	lw	a2,36(a0)
 110:	0c000000 	jal	0 <func_808B3960>
 114:	8c87002c 	lw	a3,44(a0)
 118:	3c010000 	lui	at,0x0
 11c:	c42400d4 	lwc1	$f4,212(at)
 120:	4604003c 	c.lt.s	$f0,$f4
 124:	00000000 	nop
 128:	45020004 	bc1fl	13c <func_808B3A40+0x5c>
 12c:	00001025 	move	v0,zero
 130:	10000002 	b	13c <func_808B3A40+0x5c>
 134:	24020001 	li	v0,1
 138:	00001025 	move	v0,zero
 13c:	8fbf0014 	lw	ra,20(sp)
 140:	27bd0018 	addiu	sp,sp,24
 144:	03e00008 	jr	ra
 148:	00000000 	nop

0000014c <func_808B3AAC>:
 14c:	27bdffe8 	addiu	sp,sp,-24
 150:	afbf0014 	sw	ra,20(sp)
 154:	84ae00a4 	lh	t6,164(a1)
 158:	2401004c 	li	at,76
 15c:	15c10003 	bne	t6,at,16c <func_808B3AAC+0x20>
 160:	00000000 	nop
 164:	1000002f 	b	224 <func_808B3AAC+0xd8>
 168:	24020001 	li	v0,1
 16c:	0c000000 	jal	0 <func_808B3960>
 170:	afa40018 	sw	a0,24(sp)
 174:	10400003 	beqz	v0,184 <func_808B3AAC+0x38>
 178:	8fa40018 	lw	a0,24(sp)
 17c:	10000029 	b	224 <func_808B3AAC+0xd8>
 180:	00001025 	move	v0,zero
 184:	3c010000 	lui	at,0x0
 188:	c42400d8 	lwc1	$f4,216(at)
 18c:	c4860024 	lwc1	$f6,36(a0)
 190:	3c01c3b4 	lui	at,0xc3b4
 194:	24020001 	li	v0,1
 198:	4604303e 	c.le.s	$f6,$f4
 19c:	00000000 	nop
 1a0:	45000020 	bc1f	224 <func_808B3AAC+0xd8>
 1a4:	00000000 	nop
 1a8:	c488002c 	lwc1	$f8,44(a0)
 1ac:	44815000 	mtc1	at,$f10
 1b0:	00000000 	nop
 1b4:	4608503e 	c.le.s	$f10,$f8
 1b8:	00000000 	nop
 1bc:	45000019 	bc1f	224 <func_808B3AAC+0xd8>
 1c0:	00000000 	nop
 1c4:	c4900150 	lwc1	$f16,336(a0)
 1c8:	44809000 	mtc1	zero,$f18
 1cc:	00000000 	nop
 1d0:	4610903e 	c.le.s	$f18,$f16
 1d4:	00000000 	nop
 1d8:	45020004 	bc1fl	1ec <func_808B3AAC+0xa0>
 1dc:	84820032 	lh	v0,50(a0)
 1e0:	10000006 	b	1fc <func_808B3AAC+0xb0>
 1e4:	84820032 	lh	v0,50(a0)
 1e8:	84820032 	lh	v0,50(a0)
 1ec:	34018000 	li	at,0x8000
 1f0:	00411021 	addu	v0,v0,at
 1f4:	00021400 	sll	v0,v0,0x10
 1f8:	00021403 	sra	v0,v0,0x10
 1fc:	28412000 	slti	at,v0,8192
 200:	10200006 	beqz	at,21c <func_808B3AAC+0xd0>
 204:	2841a001 	slti	at,v0,-24575
 208:	14200004 	bnez	at,21c <func_808B3AAC+0xd0>
 20c:	3c020000 	lui	v0,0x0
 210:	94420ed6 	lhu	v0,3798(v0)
 214:	10000003 	b	224 <func_808B3AAC+0xd8>
 218:	30420010 	andi	v0,v0,0x10
 21c:	10000001 	b	224 <func_808B3AAC+0xd8>
 220:	24020001 	li	v0,1
 224:	8fbf0014 	lw	ra,20(sp)
 228:	27bd0018 	addiu	sp,sp,24
 22c:	03e00008 	jr	ra
 230:	00000000 	nop

00000234 <BgSpot15Rrbox_Init>:
 234:	27bdffe0 	addiu	sp,sp,-32
 238:	afbf001c 	sw	ra,28(sp)
 23c:	afb00018 	sw	s0,24(sp)
 240:	3c060000 	lui	a2,0x0
 244:	00808025 	move	s0,a0
 248:	afa50024 	sw	a1,36(sp)
 24c:	24c60000 	addiu	a2,a2,0
 250:	0c000000 	jal	0 <func_808B3960>
 254:	00003825 	move	a3,zero
 258:	3c050000 	lui	a1,0x0
 25c:	24a50024 	addiu	a1,a1,36
 260:	0c000000 	jal	0 <func_808B3960>
 264:	02002025 	move	a0,s0
 268:	0c000000 	jal	0 <func_808B3960>
 26c:	02002025 	move	a0,s0
 270:	8605001c 	lh	a1,28(s0)
 274:	8fa40024 	lw	a0,36(sp)
 278:	0c000000 	jal	0 <func_808B3960>
 27c:	30a5003f 	andi	a1,a1,0x3f
 280:	10400016 	beqz	v0,2dc <BgSpot15Rrbox_Init+0xa8>
 284:	02002025 	move	a0,s0
 288:	0c000000 	jal	0 <func_808B3960>
 28c:	8fa50024 	lw	a1,36(sp)
 290:	3c020000 	lui	v0,0x0
 294:	24420000 	addiu	v0,v0,0
 298:	844e0000 	lh	t6,0(v0)
 29c:	3c180000 	lui	t8,0x0
 2a0:	27180000 	addiu	t8,t8,0
 2a4:	000e7880 	sll	t7,t6,0x2
 2a8:	01ee7823 	subu	t7,t7,t6
 2ac:	000f7880 	sll	t7,t7,0x2
 2b0:	01f8c821 	addu	t9,t7,t8
 2b4:	8f290000 	lw	t1,0(t9)
 2b8:	ae090024 	sw	t1,36(s0)
 2bc:	8f280004 	lw	t0,4(t9)
 2c0:	ae080028 	sw	t0,40(s0)
 2c4:	8f290008 	lw	t1,8(t9)
 2c8:	ae09002c 	sw	t1,44(s0)
 2cc:	844a0000 	lh	t2,0(v0)
 2d0:	254b0001 	addiu	t3,t2,1
 2d4:	10000004 	b	2e8 <BgSpot15Rrbox_Init+0xb4>
 2d8:	a44b0000 	sh	t3,0(v0)
 2dc:	02002025 	move	a0,s0
 2e0:	0c000000 	jal	0 <func_808B3960>
 2e4:	8fa50024 	lw	a1,36(sp)
 2e8:	3c040000 	lui	a0,0x0
 2ec:	24840058 	addiu	a0,a0,88
 2f0:	0c000000 	jal	0 <func_808B3960>
 2f4:	8605001c 	lh	a1,28(s0)
 2f8:	8fbf001c 	lw	ra,28(sp)
 2fc:	8fb00018 	lw	s0,24(sp)
 300:	27bd0020 	addiu	sp,sp,32
 304:	03e00008 	jr	ra
 308:	00000000 	nop

0000030c <BgSpot15Rrbox_Destroy>:
 30c:	27bdffe8 	addiu	sp,sp,-24
 310:	afa40018 	sw	a0,24(sp)
 314:	8fae0018 	lw	t6,24(sp)
 318:	afbf0014 	sw	ra,20(sp)
 31c:	00a02025 	move	a0,a1
 320:	24a50810 	addiu	a1,a1,2064
 324:	0c000000 	jal	0 <func_808B3960>
 328:	8dc6014c 	lw	a2,332(t6)
 32c:	8fbf0014 	lw	ra,20(sp)
 330:	3c010000 	lui	at,0x0
 334:	a4200000 	sh	zero,0(at)
 338:	03e00008 	jr	ra
 33c:	27bd0018 	addiu	sp,sp,24

00000340 <func_808B3CA0>:
 340:	27bdffb8 	addiu	sp,sp,-72
 344:	afbf0024 	sw	ra,36(sp)
 348:	afb00020 	sw	s0,32(sp)
 34c:	00808025 	move	s0,a0
 350:	afa5004c 	sw	a1,76(sp)
 354:	0c000000 	jal	0 <func_808B3960>
 358:	afa60050 	sw	a2,80(sp)
 35c:	3c014120 	lui	at,0x4120
 360:	44810000 	mtc1	at,$f0
 364:	8fae0050 	lw	t6,80(sp)
 368:	c6060050 	lwc1	$f6,80(s0)
 36c:	3c180000 	lui	t8,0x0
 370:	000e7880 	sll	t7,t6,0x2
 374:	46003202 	mul.s	$f8,$f6,$f0
 378:	01ee7823 	subu	t7,t7,t6
 37c:	000f7880 	sll	t7,t7,0x2
 380:	27180000 	addiu	t8,t8,0
 384:	01f81021 	addu	v0,t7,t8
 388:	c4440000 	lwc1	$f4,0(v0)
 38c:	c4500004 	lwc1	$f16,4(v0)
 390:	27a40038 	addiu	a0,sp,56
 394:	46082282 	mul.s	$f10,$f4,$f8
 398:	c4480008 	lwc1	$f8,8(v0)
 39c:	27a5002c 	addiu	a1,sp,44
 3a0:	e7aa002c 	swc1	$f10,44(sp)
 3a4:	c6120054 	lwc1	$f18,84(s0)
 3a8:	46009182 	mul.s	$f6,$f18,$f0
 3ac:	00000000 	nop
 3b0:	46068102 	mul.s	$f4,$f16,$f6
 3b4:	e7a40030 	swc1	$f4,48(sp)
 3b8:	c60a0058 	lwc1	$f10,88(s0)
 3bc:	46005482 	mul.s	$f18,$f10,$f0
 3c0:	00000000 	nop
 3c4:	46124402 	mul.s	$f16,$f8,$f18
 3c8:	e7b00034 	swc1	$f16,52(sp)
 3cc:	8e070170 	lw	a3,368(s0)
 3d0:	0c000000 	jal	0 <func_808B3960>
 3d4:	8e06016c 	lw	a2,364(s0)
 3d8:	c7a60038 	lwc1	$f6,56(sp)
 3dc:	c6040024 	lwc1	$f4,36(s0)
 3e0:	c7a8003c 	lwc1	$f8,60(sp)
 3e4:	8fa4004c 	lw	a0,76(sp)
 3e8:	46043280 	add.s	$f10,$f6,$f4
 3ec:	c7a60040 	lwc1	$f6,64(sp)
 3f0:	27b90038 	addiu	t9,sp,56
 3f4:	26050078 	addiu	a1,s0,120
 3f8:	e7aa0038 	swc1	$f10,56(sp)
 3fc:	c6120104 	lwc1	$f18,260(s0)
 400:	26060180 	addiu	a2,s0,384
 404:	02003825 	move	a3,s0
 408:	46124400 	add.s	$f16,$f8,$f18
 40c:	44804000 	mtc1	zero,$f8
 410:	248407c0 	addiu	a0,a0,1984
 414:	e7b0003c 	swc1	$f16,60(sp)
 418:	c604002c 	lwc1	$f4,44(s0)
 41c:	afb90010 	sw	t9,16(sp)
 420:	e7a80014 	swc1	$f8,20(sp)
 424:	46043280 	add.s	$f10,$f6,$f4
 428:	0c000000 	jal	0 <func_808B3960>
 42c:	e7aa0040 	swc1	$f10,64(sp)
 430:	c6120028 	lwc1	$f18,40(s0)
 434:	e6000080 	swc1	$f0,128(s0)
 438:	3c010000 	lui	at,0x0
 43c:	46120401 	sub.s	$f16,$f0,$f18
 440:	c42600dc 	lwc1	$f6,220(at)
 444:	00001025 	move	v0,zero
 448:	4610303e 	c.le.s	$f6,$f16
 44c:	00000000 	nop
 450:	45000005 	bc1f	468 <func_808B3CA0+0x128>
 454:	00000000 	nop
 458:	c6040080 	lwc1	$f4,128(s0)
 45c:	24020001 	li	v0,1
 460:	10000001 	b	468 <func_808B3CA0+0x128>
 464:	e6040028 	swc1	$f4,40(s0)
 468:	8fbf0024 	lw	ra,36(sp)
 46c:	8fb00020 	lw	s0,32(sp)
 470:	27bd0048 	addiu	sp,sp,72
 474:	03e00008 	jr	ra
 478:	00000000 	nop

0000047c <func_808B3DDC>:
 47c:	27bdff70 	addiu	sp,sp,-144
 480:	f7b60020 	sdc1	$f22,32(sp)
 484:	3c01c6fa 	lui	at,0xc6fa
 488:	afbf0054 	sw	ra,84(sp)
 48c:	afb2003c 	sw	s2,60(sp)
 490:	afb00034 	sw	s0,52(sp)
 494:	4481b000 	mtc1	at,$f22
 498:	00808025 	move	s0,a0
 49c:	00a09025 	move	s2,a1
 4a0:	afb70050 	sw	s7,80(sp)
 4a4:	afb6004c 	sw	s6,76(sp)
 4a8:	afb50048 	sw	s5,72(sp)
 4ac:	afb40044 	sw	s4,68(sp)
 4b0:	afb30040 	sw	s3,64(sp)
 4b4:	afb10038 	sw	s1,56(sp)
 4b8:	f7b80028 	sdc1	$f24,40(sp)
 4bc:	0c000000 	jal	0 <func_808B3960>
 4c0:	f7b40018 	sdc1	$f20,24(sp)
 4c4:	3c014120 	lui	at,0x4120
 4c8:	3c110000 	lui	s1,0x0
 4cc:	265607c0 	addiu	s6,s2,1984
 4d0:	3c150000 	lui	s5,0x0
 4d4:	4481a000 	mtc1	at,$f20
 4d8:	4480c000 	mtc1	zero,$f24
 4dc:	26b5003c 	addiu	s5,s5,60
 4e0:	27b20080 	addiu	s2,sp,128
 4e4:	26310000 	addiu	s1,s1,0
 4e8:	26170078 	addiu	s7,s0,120
 4ec:	27b40064 	addiu	s4,sp,100
 4f0:	27b30074 	addiu	s3,sp,116
 4f4:	c6060050 	lwc1	$f6,80(s0)
 4f8:	c6240000 	lwc1	$f4,0(s1)
 4fc:	c6300004 	lwc1	$f16,4(s1)
 500:	46143202 	mul.s	$f8,$f6,$f20
 504:	02402025 	move	a0,s2
 508:	02602825 	move	a1,s3
 50c:	46082282 	mul.s	$f10,$f4,$f8
 510:	c6280008 	lwc1	$f8,8(s1)
 514:	e7aa0074 	swc1	$f10,116(sp)
 518:	c6120054 	lwc1	$f18,84(s0)
 51c:	46149182 	mul.s	$f6,$f18,$f20
 520:	00000000 	nop
 524:	46068102 	mul.s	$f4,$f16,$f6
 528:	e7a40078 	swc1	$f4,120(sp)
 52c:	c60a0058 	lwc1	$f10,88(s0)
 530:	46145482 	mul.s	$f18,$f10,$f20
 534:	00000000 	nop
 538:	46124402 	mul.s	$f16,$f8,$f18
 53c:	e7b0007c 	swc1	$f16,124(sp)
 540:	8e070170 	lw	a3,368(s0)
 544:	0c000000 	jal	0 <func_808B3960>
 548:	8e06016c 	lw	a2,364(s0)
 54c:	c7a60080 	lwc1	$f6,128(sp)
 550:	c6040024 	lwc1	$f4,36(s0)
 554:	c7a80084 	lwc1	$f8,132(sp)
 558:	02c02025 	move	a0,s6
 55c:	46043280 	add.s	$f10,$f6,$f4
 560:	c7a60088 	lwc1	$f6,136(sp)
 564:	02e02825 	move	a1,s7
 568:	02803025 	move	a2,s4
 56c:	e7aa0080 	swc1	$f10,128(sp)
 570:	c6120104 	lwc1	$f18,260(s0)
 574:	02003825 	move	a3,s0
 578:	46124400 	add.s	$f16,$f8,$f18
 57c:	e7b00084 	swc1	$f16,132(sp)
 580:	c604002c 	lwc1	$f4,44(s0)
 584:	e7b80014 	swc1	$f24,20(sp)
 588:	afb20010 	sw	s2,16(sp)
 58c:	46043280 	add.s	$f10,$f6,$f4
 590:	0c000000 	jal	0 <func_808B3960>
 594:	e7aa0088 	swc1	$f10,136(sp)
 598:	4600b03c 	c.lt.s	$f22,$f0
 59c:	2631000c 	addiu	s1,s1,12
 5a0:	8fae0064 	lw	t6,100(sp)
 5a4:	45000003 	bc1f	5b4 <func_808B3DDC+0x138>
 5a8:	00000000 	nop
 5ac:	46000586 	mov.s	$f22,$f0
 5b0:	ae0e0180 	sw	t6,384(s0)
 5b4:	5635ffd0 	bnel	s1,s5,4f8 <func_808B3DDC+0x7c>
 5b8:	c6060050 	lwc1	$f6,80(s0)
 5bc:	8fbf0054 	lw	ra,84(sp)
 5c0:	4600b006 	mov.s	$f0,$f22
 5c4:	d7b60020 	ldc1	$f22,32(sp)
 5c8:	d7b40018 	ldc1	$f20,24(sp)
 5cc:	d7b80028 	ldc1	$f24,40(sp)
 5d0:	8fb00034 	lw	s0,52(sp)
 5d4:	8fb10038 	lw	s1,56(sp)
 5d8:	8fb2003c 	lw	s2,60(sp)
 5dc:	8fb30040 	lw	s3,64(sp)
 5e0:	8fb40044 	lw	s4,68(sp)
 5e4:	8fb50048 	lw	s5,72(sp)
 5e8:	8fb6004c 	lw	s6,76(sp)
 5ec:	8fb70050 	lw	s7,80(sp)
 5f0:	03e00008 	jr	ra
 5f4:	27bd0090 	addiu	sp,sp,144

000005f8 <func_808B3F58>:
 5f8:	27bdffe0 	addiu	sp,sp,-32
 5fc:	afbf001c 	sw	ra,28(sp)
 600:	afb10018 	sw	s1,24(sp)
 604:	afb00014 	sw	s0,20(sp)
 608:	00808025 	move	s0,a0
 60c:	00a08825 	move	s1,a1
 610:	0c000000 	jal	0 <func_808B3960>
 614:	00003025 	move	a2,zero
 618:	10400003 	beqz	v0,628 <func_808B3F58+0x30>
 61c:	02002025 	move	a0,s0
 620:	1000001e 	b	69c <func_808B3F58+0xa4>
 624:	24020001 	li	v0,1
 628:	02202825 	move	a1,s1
 62c:	0c000000 	jal	0 <func_808B3960>
 630:	24060001 	li	a2,1
 634:	10400003 	beqz	v0,644 <func_808B3F58+0x4c>
 638:	02002025 	move	a0,s0
 63c:	10000017 	b	69c <func_808B3F58+0xa4>
 640:	24020001 	li	v0,1
 644:	02202825 	move	a1,s1
 648:	0c000000 	jal	0 <func_808B3960>
 64c:	24060002 	li	a2,2
 650:	10400003 	beqz	v0,660 <func_808B3F58+0x68>
 654:	02002025 	move	a0,s0
 658:	10000010 	b	69c <func_808B3F58+0xa4>
 65c:	24020001 	li	v0,1
 660:	02202825 	move	a1,s1
 664:	0c000000 	jal	0 <func_808B3960>
 668:	24060003 	li	a2,3
 66c:	10400003 	beqz	v0,67c <func_808B3F58+0x84>
 670:	02002025 	move	a0,s0
 674:	10000009 	b	69c <func_808B3F58+0xa4>
 678:	24020001 	li	v0,1
 67c:	02202825 	move	a1,s1
 680:	0c000000 	jal	0 <func_808B3960>
 684:	24060004 	li	a2,4
 688:	50400004 	beqzl	v0,69c <func_808B3F58+0xa4>
 68c:	00001025 	move	v0,zero
 690:	10000002 	b	69c <func_808B3F58+0xa4>
 694:	24020001 	li	v0,1
 698:	00001025 	move	v0,zero
 69c:	8fbf001c 	lw	ra,28(sp)
 6a0:	8fb00014 	lw	s0,20(sp)
 6a4:	8fb10018 	lw	s1,24(sp)
 6a8:	03e00008 	jr	ra
 6ac:	27bd0020 	addiu	sp,sp,32

000006b0 <func_808B4010>:
 6b0:	27bdffe0 	addiu	sp,sp,-32
 6b4:	afa50024 	sw	a1,36(sp)
 6b8:	00802825 	move	a1,a0
 6bc:	afbf001c 	sw	ra,28(sp)
 6c0:	afa40020 	sw	a0,32(sp)
 6c4:	3c014391 	lui	at,0x4391
 6c8:	44813000 	mtc1	at,$f6
 6cc:	c4a40050 	lwc1	$f4,80(a1)
 6d0:	3c0141a0 	lui	at,0x41a0
 6d4:	44815000 	mtc1	at,$f10
 6d8:	46062002 	mul.s	$f0,$f4,$f6
 6dc:	24180001 	li	t8,1
 6e0:	afb80010 	sw	t8,16(sp)
 6e4:	8fa40024 	lw	a0,36(sp)
 6e8:	460a0400 	add.s	$f16,$f0,$f10
 6ec:	4600020d 	trunc.w.s	$f8,$f0
 6f0:	4600848d 	trunc.w.s	$f18,$f16
 6f4:	44064000 	mfc1	a2,$f8
 6f8:	44079000 	mfc1	a3,$f18
 6fc:	00063400 	sll	a2,a2,0x10
 700:	00063403 	sra	a2,a2,0x10
 704:	00073c00 	sll	a3,a3,0x10
 708:	0c000000 	jal	0 <func_808B3960>
 70c:	00073c03 	sra	a3,a3,0x10
 710:	8fbf001c 	lw	ra,28(sp)
 714:	27bd0020 	addiu	sp,sp,32
 718:	2c420001 	sltiu	v0,v0,1
 71c:	03e00008 	jr	ra
 720:	00000000 	nop

00000724 <func_808B4084>:
 724:	44800000 	mtc1	zero,$f0
 728:	afa50004 	sw	a1,4(sp)
 72c:	3c0e0000 	lui	t6,0x0
 730:	25ce0000 	addiu	t6,t6,0
 734:	ac8e0164 	sw	t6,356(a0)
 738:	e480006c 	swc1	$f0,108(a0)
 73c:	e480005c 	swc1	$f0,92(a0)
 740:	e4800060 	swc1	$f0,96(a0)
 744:	03e00008 	jr	ra
 748:	e4800064 	swc1	$f0,100(a0)

0000074c <func_808B40AC>:
 74c:	27bdffe0 	addiu	sp,sp,-32
 750:	afbf0014 	sw	ra,20(sp)
 754:	848e0168 	lh	t6,360(a0)
 758:	8ca31c44 	lw	v1,7236(a1)
 75c:	5dc00025 	bgtzl	t6,7f4 <func_808B40AC+0xa8>
 760:	8c790680 	lw	t9,1664(v1)
 764:	c4800150 	lwc1	$f0,336(a0)
 768:	3c010000 	lui	at,0x0
 76c:	c42400e0 	lwc1	$f4,224(at)
 770:	46000005 	abs.s	$f0,$f0
 774:	4600203c 	c.lt.s	$f4,$f0
 778:	00000000 	nop
 77c:	4502001d 	bc1fl	7f4 <func_808B40AC+0xa8>
 780:	8c790680 	lw	t9,1664(v1)
 784:	afa3001c 	sw	v1,28(sp)
 788:	afa40020 	sw	a0,32(sp)
 78c:	0c000000 	jal	0 <func_808B3960>
 790:	afa50024 	sw	a1,36(sp)
 794:	8fa3001c 	lw	v1,28(sp)
 798:	1040000e 	beqz	v0,7d4 <func_808B40AC+0x88>
 79c:	8fa40020 	lw	a0,32(sp)
 7a0:	8fa50024 	lw	a1,36(sp)
 7a4:	afa3001c 	sw	v1,28(sp)
 7a8:	0c000000 	jal	0 <func_808B3960>
 7ac:	afa40020 	sw	a0,32(sp)
 7b0:	8fa3001c 	lw	v1,28(sp)
 7b4:	14400007 	bnez	v0,7d4 <func_808B40AC+0x88>
 7b8:	8fa40020 	lw	a0,32(sp)
 7bc:	c4860150 	lwc1	$f6,336(a0)
 7c0:	e486017c 	swc1	$f6,380(a0)
 7c4:	0c000000 	jal	0 <func_808B3960>
 7c8:	8fa50024 	lw	a1,36(sp)
 7cc:	1000000f 	b	80c <func_808B40AC+0xc0>
 7d0:	8fbf0014 	lw	ra,20(sp)
 7d4:	8c6f0680 	lw	t7,1664(v1)
 7d8:	2401ffef 	li	at,-17
 7dc:	44804000 	mtc1	zero,$f8
 7e0:	01e1c024 	and	t8,t7,at
 7e4:	ac780680 	sw	t8,1664(v1)
 7e8:	10000007 	b	808 <func_808B40AC+0xbc>
 7ec:	e4880150 	swc1	$f8,336(a0)
 7f0:	8c790680 	lw	t9,1664(v1)
 7f4:	44805000 	mtc1	zero,$f10
 7f8:	2401ffef 	li	at,-17
 7fc:	03214024 	and	t0,t9,at
 800:	ac680680 	sw	t0,1664(v1)
 804:	e48a0150 	swc1	$f10,336(a0)
 808:	8fbf0014 	lw	ra,20(sp)
 80c:	27bd0020 	addiu	sp,sp,32
 810:	03e00008 	jr	ra
 814:	00000000 	nop

00000818 <func_808B4178>:
 818:	44802000 	mtc1	zero,$f4
 81c:	3c0e0000 	lui	t6,0x0
 820:	afa50004 	sw	a1,4(sp)
 824:	25ce0000 	addiu	t6,t6,0
 828:	ac8e0164 	sw	t6,356(a0)
 82c:	03e00008 	jr	ra
 830:	e484006c 	swc1	$f4,108(a0)

00000834 <func_808B4194>:
 834:	27bdffd0 	addiu	sp,sp,-48
 838:	afbf001c 	sw	ra,28(sp)
 83c:	afb10018 	sw	s1,24(sp)
 840:	afb00014 	sw	s0,20(sp)
 844:	8cae1c44 	lw	t6,7236(a1)
 848:	3c014000 	lui	at,0x4000
 84c:	44811000 	mtc1	at,$f2
 850:	3c013f00 	lui	at,0x3f00
 854:	afae0028 	sw	t6,40(sp)
 858:	c4840174 	lwc1	$f4,372(a0)
 85c:	44813000 	mtc1	at,$f6
 860:	00a08825 	move	s1,a1
 864:	00808025 	move	s0,a0
 868:	46062200 	add.s	$f8,$f4,$f6
 86c:	3c0541a0 	lui	a1,0x41a0
 870:	e4880174 	swc1	$f8,372(a0)
 874:	c4800174 	lwc1	$f0,372(a0)
 878:	4600103c 	c.lt.s	$f2,$f0
 87c:	00000000 	nop
 880:	45020004 	bc1fl	894 <func_808B4194+0x60>
 884:	e6000174 	swc1	$f0,372(s0)
 888:	10000002 	b	894 <func_808B4194+0x60>
 88c:	e4820174 	swc1	$f2,372(a0)
 890:	e6000174 	swc1	$f0,372(s0)
 894:	26040178 	addiu	a0,s0,376
 898:	0c000000 	jal	0 <func_808B3960>
 89c:	8e060174 	lw	a2,372(s0)
 8a0:	44806000 	mtc1	zero,$f12
 8a4:	c60a017c 	lwc1	$f10,380(s0)
 8a8:	00401825 	move	v1,v0
 8ac:	3c01bf80 	lui	at,0xbf80
 8b0:	460a603e 	c.le.s	$f12,$f10
 8b4:	00000000 	nop
 8b8:	45020006 	bc1fl	8d4 <func_808B4194+0xa0>
 8bc:	44811000 	mtc1	at,$f2
 8c0:	3c013f80 	lui	at,0x3f80
 8c4:	44811000 	mtc1	at,$f2
 8c8:	10000004 	b	8dc <func_808B4194+0xa8>
 8cc:	c6100178 	lwc1	$f16,376(s0)
 8d0:	44811000 	mtc1	at,$f2
 8d4:	00000000 	nop
 8d8:	c6100178 	lwc1	$f16,376(s0)
 8dc:	c604016c 	lwc1	$f4,364(s0)
 8e0:	c6120008 	lwc1	$f18,8(s0)
 8e4:	46101002 	mul.s	$f0,$f2,$f16
 8e8:	c6100170 	lwc1	$f16,368(s0)
 8ec:	c60a0010 	lwc1	$f10,16(s0)
 8f0:	02002025 	move	a0,s0
 8f4:	02202825 	move	a1,s1
 8f8:	46040182 	mul.s	$f6,$f0,$f4
 8fc:	00000000 	nop
 900:	46100102 	mul.s	$f4,$f0,$f16
 904:	46069200 	add.s	$f8,$f18,$f6
 908:	46045480 	add.s	$f18,$f10,$f4
 90c:	e6080024 	swc1	$f8,36(s0)
 910:	e612002c 	swc1	$f18,44(s0)
 914:	0c000000 	jal	0 <func_808B3960>
 918:	afa30020 	sw	v1,32(sp)
 91c:	44806000 	mtc1	zero,$f12
 920:	14400012 	bnez	v0,96c <func_808B4194+0x138>
 924:	8fa30020 	lw	v1,32(sp)
 928:	8fa20028 	lw	v0,40(sp)
 92c:	c6060024 	lwc1	$f6,36(s0)
 930:	c608002c 	lwc1	$f8,44(s0)
 934:	2401ffef 	li	at,-17
 938:	e6060008 	swc1	$f6,8(s0)
 93c:	e6080010 	swc1	$f8,16(s0)
 940:	8c4f0680 	lw	t7,1664(v0)
 944:	02002025 	move	a0,s0
 948:	02202825 	move	a1,s1
 94c:	01e1c024 	and	t8,t7,at
 950:	ac580680 	sw	t8,1664(v0)
 954:	e60c0150 	swc1	$f12,336(s0)
 958:	e60c0178 	swc1	$f12,376(s0)
 95c:	0c000000 	jal	0 <func_808B3960>
 960:	e60c0174 	swc1	$f12,372(s0)
 964:	10000027 	b	a04 <func_808B4194+0x1d0>
 968:	02002025 	move	a0,s0
 96c:	10600024 	beqz	v1,a00 <func_808B4194+0x1cc>
 970:	02002025 	move	a0,s0
 974:	8e391c44 	lw	t9,7236(s1)
 978:	02202825 	move	a1,s1
 97c:	0c000000 	jal	0 <func_808B3960>
 980:	afb90028 	sw	t9,40(sp)
 984:	10400003 	beqz	v0,994 <func_808B4194+0x160>
 988:	02002025 	move	a0,s0
 98c:	0c000000 	jal	0 <func_808B3960>
 990:	240528c9 	li	a1,10441
 994:	02002025 	move	a0,s0
 998:	0c000000 	jal	0 <func_808B3960>
 99c:	02202825 	move	a1,s1
 9a0:	44806000 	mtc1	zero,$f12
 9a4:	50400006 	beqzl	v0,9c0 <func_808B4194+0x18c>
 9a8:	c6100024 	lwc1	$f16,36(s0)
 9ac:	0c000000 	jal	0 <func_808B3960>
 9b0:	24044802 	li	a0,18434
 9b4:	44806000 	mtc1	zero,$f12
 9b8:	00000000 	nop
 9bc:	c6100024 	lwc1	$f16,36(s0)
 9c0:	c60a002c 	lwc1	$f10,44(s0)
 9c4:	2401ffef 	li	at,-17
 9c8:	e6100008 	swc1	$f16,8(s0)
 9cc:	e60a0010 	swc1	$f10,16(s0)
 9d0:	8fa80028 	lw	t0,40(sp)
 9d4:	240b000a 	li	t3,10
 9d8:	02002025 	move	a0,s0
 9dc:	8d090680 	lw	t1,1664(t0)
 9e0:	02202825 	move	a1,s1
 9e4:	01215024 	and	t2,t1,at
 9e8:	ad0a0680 	sw	t2,1664(t0)
 9ec:	e60c0150 	swc1	$f12,336(s0)
 9f0:	e60c0178 	swc1	$f12,376(s0)
 9f4:	e60c0174 	swc1	$f12,372(s0)
 9f8:	0c000000 	jal	0 <func_808B3960>
 9fc:	a60b0168 	sh	t3,360(s0)
 a00:	02002025 	move	a0,s0
 a04:	0c000000 	jal	0 <func_808B3960>
 a08:	2405200a 	li	a1,8202
 a0c:	8fbf001c 	lw	ra,28(sp)
 a10:	8fb00014 	lw	s0,20(sp)
 a14:	8fb10018 	lw	s1,24(sp)
 a18:	03e00008 	jr	ra
 a1c:	27bd0030 	addiu	sp,sp,48

00000a20 <func_808B4380>:
 a20:	44800000 	mtc1	zero,$f0
 a24:	27bdffe8 	addiu	sp,sp,-24
 a28:	afbf0014 	sw	ra,20(sp)
 a2c:	3c01bf80 	lui	at,0xbf80
 a30:	44812000 	mtc1	at,$f4
 a34:	e480005c 	swc1	$f0,92(a0)
 a38:	e4800060 	swc1	$f0,96(a0)
 a3c:	e4800064 	swc1	$f0,100(a0)
 a40:	e484006c 	swc1	$f4,108(a0)
 a44:	0c000000 	jal	0 <func_808B3960>
 a48:	afa40018 	sw	a0,24(sp)
 a4c:	8fa40018 	lw	a0,24(sp)
 a50:	3c0e0000 	lui	t6,0x0
 a54:	25ce0000 	addiu	t6,t6,0
 a58:	e4800080 	swc1	$f0,128(a0)
 a5c:	ac8e0164 	sw	t6,356(a0)
 a60:	8fbf0014 	lw	ra,20(sp)
 a64:	27bd0018 	addiu	sp,sp,24
 a68:	03e00008 	jr	ra
 a6c:	00000000 	nop

00000a70 <func_808B43D0>:
 a70:	27bdffe0 	addiu	sp,sp,-32
 a74:	afbf001c 	sw	ra,28(sp)
 a78:	afb00018 	sw	s0,24(sp)
 a7c:	c4800150 	lwc1	$f0,336(a0)
 a80:	3c010000 	lui	at,0x0
 a84:	c42400e4 	lwc1	$f4,228(at)
 a88:	46000005 	abs.s	$f0,$f0
 a8c:	00808025 	move	s0,a0
 a90:	4600203c 	c.lt.s	$f4,$f0
 a94:	8ca21c44 	lw	v0,7236(a1)
 a98:	45020008 	bc1fl	abc <func_808B43D0+0x4c>
 a9c:	02002025 	move	a0,s0
 aa0:	44803000 	mtc1	zero,$f6
 aa4:	2401ffef 	li	at,-17
 aa8:	e4860150 	swc1	$f6,336(a0)
 aac:	8c4e0680 	lw	t6,1664(v0)
 ab0:	01c17824 	and	t7,t6,at
 ab4:	ac4f0680 	sw	t7,1664(v0)
 ab8:	02002025 	move	a0,s0
 abc:	0c000000 	jal	0 <func_808B3960>
 ac0:	afa50024 	sw	a1,36(sp)
 ac4:	3c010000 	lui	at,0x0
 ac8:	c42800e8 	lwc1	$f8,232(at)
 acc:	c6020028 	lwc1	$f2,40(s0)
 ad0:	3c040000 	lui	a0,0x0
 ad4:	8fa50024 	lw	a1,36(sp)
 ad8:	4608103e 	c.le.s	$f2,$f8
 adc:	24840080 	addiu	a0,a0,128
 ae0:	24060257 	li	a2,599
 ae4:	4502000a 	bc1fl	b10 <func_808B43D0+0xa0>
 ae8:	c6000080 	lwc1	$f0,128(s0)
 aec:	3c050000 	lui	a1,0x0
 af0:	24a500bc 	addiu	a1,a1,188
 af4:	0c000000 	jal	0 <func_808B3960>
 af8:	8607001c 	lh	a3,28(s0)
 afc:	0c000000 	jal	0 <func_808B3960>
 b00:	02002025 	move	a0,s0
 b04:	10000010 	b	b48 <func_808B43D0+0xd8>
 b08:	8fbf001c 	lw	ra,28(sp)
 b0c:	c6000080 	lwc1	$f0,128(s0)
 b10:	3c010000 	lui	at,0x0
 b14:	c43000ec 	lwc1	$f16,236(at)
 b18:	46020281 	sub.s	$f10,$f0,$f2
 b1c:	02002025 	move	a0,s0
 b20:	460a803e 	c.le.s	$f16,$f10
 b24:	00000000 	nop
 b28:	45020007 	bc1fl	b48 <func_808B43D0+0xd8>
 b2c:	8fbf001c 	lw	ra,28(sp)
 b30:	0c000000 	jal	0 <func_808B3960>
 b34:	e6000028 	swc1	$f0,40(s0)
 b38:	02002025 	move	a0,s0
 b3c:	0c000000 	jal	0 <func_808B3960>
 b40:	240528c9 	li	a1,10441
 b44:	8fbf001c 	lw	ra,28(sp)
 b48:	8fb00018 	lw	s0,24(sp)
 b4c:	27bd0020 	addiu	sp,sp,32
 b50:	03e00008 	jr	ra
 b54:	00000000 	nop

00000b58 <func_808B44B8>:
 b58:	3c0e0000 	lui	t6,0x0
 b5c:	afa50004 	sw	a1,4(sp)
 b60:	25ce0000 	addiu	t6,t6,0
 b64:	03e00008 	jr	ra
 b68:	ac8e0164 	sw	t6,356(a0)

00000b6c <func_808B44CC>:
 b6c:	8ca21c44 	lw	v0,7236(a1)
 b70:	2401ffef 	li	at,-17
 b74:	44802000 	mtc1	zero,$f4
 b78:	8c4e0680 	lw	t6,1664(v0)
 b7c:	01c17824 	and	t7,t6,at
 b80:	ac4f0680 	sw	t7,1664(v0)
 b84:	03e00008 	jr	ra
 b88:	e4840150 	swc1	$f4,336(a0)

00000b8c <BgSpot15Rrbox_Update>:
 b8c:	27bdffe8 	addiu	sp,sp,-24
 b90:	afbf0014 	sw	ra,20(sp)
 b94:	afa5001c 	sw	a1,28(sp)
 b98:	84820168 	lh	v0,360(a0)
 b9c:	00803025 	move	a2,a0
 ba0:	18400002 	blez	v0,bac <BgSpot15Rrbox_Update+0x20>
 ba4:	244effff 	addiu	t6,v0,-1
 ba8:	a48e0168 	sh	t6,360(a0)
 bac:	84cf0158 	lh	t7,344(a2)
 bb0:	a4cf0032 	sh	t7,50(a2)
 bb4:	84c40032 	lh	a0,50(a2)
 bb8:	0c000000 	jal	0 <func_808B3960>
 bbc:	afa60018 	sw	a2,24(sp)
 bc0:	8fa60018 	lw	a2,24(sp)
 bc4:	e4c0016c 	swc1	$f0,364(a2)
 bc8:	0c000000 	jal	0 <func_808B3960>
 bcc:	84c40032 	lh	a0,50(a2)
 bd0:	8fa40018 	lw	a0,24(sp)
 bd4:	8c990164 	lw	t9,356(a0)
 bd8:	e4800170 	swc1	$f0,368(a0)
 bdc:	8fa5001c 	lw	a1,28(sp)
 be0:	0320f809 	jalr	t9
 be4:	00000000 	nop
 be8:	8fbf0014 	lw	ra,20(sp)
 bec:	27bd0018 	addiu	sp,sp,24
 bf0:	03e00008 	jr	ra
 bf4:	00000000 	nop

00000bf8 <BgSpot15Rrbox_Draw>:
 bf8:	27bdffe8 	addiu	sp,sp,-24
 bfc:	afa40018 	sw	a0,24(sp)
 c00:	00a02025 	move	a0,a1
 c04:	afbf0014 	sw	ra,20(sp)
 c08:	3c050000 	lui	a1,0x0
 c0c:	0c000000 	jal	0 <func_808B3960>
 c10:	24a50000 	addiu	a1,a1,0
 c14:	8fbf0014 	lw	ra,20(sp)
 c18:	27bd0018 	addiu	sp,sp,24
 c1c:	03e00008 	jr	ra
 c20:	00000000 	nop
	...
