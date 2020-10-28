
build/src/overlays/actors/ovl_En_Horse_Zelda/z_en_horse_zelda.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A6D8D0>:
   0:	000570c0 	sll	t6,a1,0x3
   4:	008e1021 	addu	v0,a0,t6
   8:	844f0000 	lh	t7,0(v0)
   c:	448f2000 	mtc1	t7,$f4
  10:	00000000 	nop
  14:	468021a0 	cvt.s.w	$f6,$f4
  18:	e4c60000 	swc1	$f6,0(a2)
  1c:	84580002 	lh	t8,2(v0)
  20:	44984000 	mtc1	t8,$f8
  24:	00000000 	nop
  28:	468042a0 	cvt.s.w	$f10,$f8
  2c:	e4ca0004 	swc1	$f10,4(a2)
  30:	84590004 	lh	t9,4(v0)
  34:	44998000 	mtc1	t9,$f16
  38:	00000000 	nop
  3c:	468084a0 	cvt.s.w	$f18,$f16
  40:	03e00008 	jr	ra
  44:	e4d20008 	swc1	$f18,8(a2)

00000048 <func_80A6D918>:
  48:	27bdffc8 	addiu	sp,sp,-56
  4c:	afb00018 	sw	s0,24(sp)
  50:	00808025 	move	s0,a0
  54:	afbf001c 	sw	ra,28(sp)
  58:	afa5003c 	sw	a1,60(sp)
  5c:	3c040000 	lui	a0,0x0
  60:	24840000 	addiu	a0,a0,0
  64:	8e0501ec 	lw	a1,492(s0)
  68:	0c000000 	jal	0 <func_80A6D8D0>
  6c:	27a60028 	addiu	a2,sp,40
  70:	26050024 	addiu	a1,s0,36
  74:	afa50020 	sw	a1,32(sp)
  78:	0c000000 	jal	0 <func_80A6D8D0>
  7c:	27a40028 	addiu	a0,sp,40
  80:	3c0143c8 	lui	at,0x43c8
  84:	44812000 	mtc1	at,$f4
  88:	00000000 	nop
  8c:	4604003e 	c.le.s	$f0,$f4
  90:	00000000 	nop
  94:	4502000d 	bc1fl	cc <func_80A6D918+0x84>
  98:	8fa40020 	lw	a0,32(sp)
  9c:	8e0e01ec 	lw	t6,492(s0)
  a0:	3c040000 	lui	a0,0x0
  a4:	24840000 	addiu	a0,a0,0
  a8:	25cf0001 	addiu	t7,t6,1
  ac:	29e1000e 	slti	at,t7,14
  b0:	14200005 	bnez	at,c8 <func_80A6D918+0x80>
  b4:	ae0f01ec 	sw	t7,492(s0)
  b8:	ae0001ec 	sw	zero,492(s0)
  bc:	00002825 	move	a1,zero
  c0:	0c000000 	jal	0 <func_80A6D8D0>
  c4:	27a60028 	addiu	a2,sp,40
  c8:	8fa40020 	lw	a0,32(sp)
  cc:	0c000000 	jal	0 <func_80A6D8D0>
  d0:	27a50028 	addiu	a1,sp,40
  d4:	86030032 	lh	v1,50(s0)
  d8:	00432023 	subu	a0,v0,v1
  dc:	00042400 	sll	a0,a0,0x10
  e0:	00042403 	sra	a0,a0,0x10
  e4:	2881012d 	slti	at,a0,301
  e8:	14200003 	bnez	at,f8 <func_80A6D918+0xb0>
  ec:	2479012c 	addiu	t9,v1,300
  f0:	10000008 	b	114 <func_80A6D918+0xcc>
  f4:	a6190032 	sh	t9,50(s0)
  f8:	2881fed4 	slti	at,a0,-300
  fc:	10200004 	beqz	at,110 <func_80A6D918+0xc8>
 100:	00644821 	addu	t1,v1,a0
 104:	2468fed4 	addiu	t0,v1,-300
 108:	10000002 	b	114 <func_80A6D918+0xcc>
 10c:	a6080032 	sh	t0,50(s0)
 110:	a6090032 	sh	t1,50(s0)
 114:	860a0032 	lh	t2,50(s0)
 118:	02002025 	move	a0,s0
 11c:	a60a00b6 	sh	t2,182(s0)
 120:	8fab003c 	lw	t3,60(sp)
 124:	0c000000 	jal	0 <func_80A6D8D0>
 128:	8d651c44 	lw	a1,7236(t3)
 12c:	3c014396 	lui	at,0x4396
 130:	44813000 	mtc1	at,$f6
 134:	3c014140 	lui	at,0x4140
 138:	4606003e 	c.le.s	$f0,$f6
 13c:	00000000 	nop
 140:	45020014 	bc1fl	194 <func_80A6D918+0x14c>
 144:	8e0c01ec 	lw	t4,492(s0)
 148:	c6000068 	lwc1	$f0,104(s0)
 14c:	44814000 	mtc1	at,$f8
 150:	3c013f80 	lui	at,0x3f80
 154:	4608003c 	c.lt.s	$f0,$f8
 158:	00000000 	nop
 15c:	45020008 	bc1fl	180 <func_80A6D918+0x138>
 160:	44819000 	mtc1	at,$f18
 164:	3c013f80 	lui	at,0x3f80
 168:	44815000 	mtc1	at,$f10
 16c:	00000000 	nop
 170:	460a0400 	add.s	$f16,$f0,$f10
 174:	10000021 	b	1fc <func_80A6D918+0x1b4>
 178:	e6100068 	swc1	$f16,104(s0)
 17c:	44819000 	mtc1	at,$f18
 180:	00000000 	nop
 184:	46120101 	sub.s	$f4,$f0,$f18
 188:	1000001c 	b	1fc <func_80A6D918+0x1b4>
 18c:	e6040068 	swc1	$f4,104(s0)
 190:	8e0c01ec 	lw	t4,492(s0)
 194:	3c0e0000 	lui	t6,0x0
 198:	c6000068 	lwc1	$f0,104(s0)
 19c:	000c68c0 	sll	t5,t4,0x3
 1a0:	01cd7021 	addu	t6,t6,t5
 1a4:	91ce0000 	lbu	t6,0(t6)
 1a8:	3c014f80 	lui	at,0x4f80
 1ac:	448e3000 	mtc1	t6,$f6
 1b0:	05c10004 	bgez	t6,1c4 <func_80A6D918+0x17c>
 1b4:	46803220 	cvt.s.w	$f8,$f6
 1b8:	44815000 	mtc1	at,$f10
 1bc:	00000000 	nop
 1c0:	460a4200 	add.s	$f8,$f8,$f10
 1c4:	4608003c 	c.lt.s	$f0,$f8
 1c8:	3c013f00 	lui	at,0x3f00
 1cc:	45020008 	bc1fl	1f0 <func_80A6D918+0x1a8>
 1d0:	44812000 	mtc1	at,$f4
 1d4:	3c013f00 	lui	at,0x3f00
 1d8:	44818000 	mtc1	at,$f16
 1dc:	00000000 	nop
 1e0:	46100480 	add.s	$f18,$f0,$f16
 1e4:	10000005 	b	1fc <func_80A6D918+0x1b4>
 1e8:	e6120068 	swc1	$f18,104(s0)
 1ec:	44812000 	mtc1	at,$f4
 1f0:	00000000 	nop
 1f4:	46040181 	sub.s	$f6,$f0,$f4
 1f8:	e6060068 	swc1	$f6,104(s0)
 1fc:	8fbf001c 	lw	ra,28(sp)
 200:	8fb00018 	lw	s0,24(sp)
 204:	27bd0038 	addiu	sp,sp,56
 208:	03e00008 	jr	ra
 20c:	00000000 	nop

00000210 <EnHorseZelda_Init>:
 210:	27bdffd0 	addiu	sp,sp,-48
 214:	afb10020 	sw	s1,32(sp)
 218:	00a08825 	move	s1,a1
 21c:	afbf0024 	sw	ra,36(sp)
 220:	afb0001c 	sw	s0,28(sp)
 224:	3c050000 	lui	a1,0x0
 228:	00808025 	move	s0,a0
 22c:	0c000000 	jal	0 <func_80A6D8D0>
 230:	24a50000 	addiu	a1,a1,0
 234:	3c053c3c 	lui	a1,0x3c3c
 238:	34a56a7f 	ori	a1,a1,0x6a7f
 23c:	0c000000 	jal	0 <func_80A6D8D0>
 240:	02002025 	move	a0,s0
 244:	3c01c060 	lui	at,0xc060
 248:	44812000 	mtc1	at,$f4
 24c:	3c060000 	lui	a2,0x0
 250:	24c60000 	addiu	a2,a2,0
 254:	260400b4 	addiu	a0,s0,180
 258:	24050000 	li	a1,0
 25c:	3c0741a0 	lui	a3,0x41a0
 260:	0c000000 	jal	0 <func_80A6D8D0>
 264:	e604006c 	swc1	$f4,108(s0)
 268:	8e0e0028 	lw	t6,40(s0)
 26c:	3c01428c 	lui	at,0x428c
 270:	8e0f0024 	lw	t7,36(s0)
 274:	ae0e003c 	sw	t6,60(s0)
 278:	c608003c 	lwc1	$f8,60(s0)
 27c:	44815000 	mtc1	at,$f10
 280:	ae0f0038 	sw	t7,56(s0)
 284:	44803000 	mtc1	zero,$f6
 288:	460a4400 	add.s	$f16,$f8,$f10
 28c:	8e0f002c 	lw	t7,44(s0)
 290:	3c060600 	lui	a2,0x600
 294:	3c070600 	lui	a3,0x600
 298:	ae00014c 	sw	zero,332(s0)
 29c:	e610003c 	swc1	$f16,60(s0)
 2a0:	24e77148 	addiu	a3,a3,29000
 2a4:	24c66b2c 	addiu	a2,a2,27436
 2a8:	02202025 	move	a0,s1
 2ac:	26050154 	addiu	a1,s0,340
 2b0:	e6060068 	swc1	$f6,104(s0)
 2b4:	0c000000 	jal	0 <func_80A6D8D0>
 2b8:	ae0f0040 	sw	t7,64(s0)
 2bc:	ae000150 	sw	zero,336(s0)
 2c0:	3c050000 	lui	a1,0x0
 2c4:	8ca50000 	lw	a1,0(a1)
 2c8:	0c000000 	jal	0 <func_80A6D8D0>
 2cc:	260401a0 	addiu	a0,s0,416
 2d0:	260501fc 	addiu	a1,s0,508
 2d4:	afa50028 	sw	a1,40(sp)
 2d8:	0c000000 	jal	0 <func_80A6D8D0>
 2dc:	02202025 	move	a0,s1
 2e0:	3c070000 	lui	a3,0x0
 2e4:	8fa50028 	lw	a1,40(sp)
 2e8:	24e70000 	addiu	a3,a3,0
 2ec:	02202025 	move	a0,s1
 2f0:	0c000000 	jal	0 <func_80A6D8D0>
 2f4:	02003025 	move	a2,s0
 2f8:	26050248 	addiu	a1,s0,584
 2fc:	afa50028 	sw	a1,40(sp)
 300:	0c000000 	jal	0 <func_80A6D8D0>
 304:	02202025 	move	a0,s1
 308:	3c070000 	lui	a3,0x0
 30c:	26180268 	addiu	t8,s0,616
 310:	8fa50028 	lw	a1,40(sp)
 314:	afb80010 	sw	t8,16(sp)
 318:	24e70000 	addiu	a3,a3,0
 31c:	02202025 	move	a0,s1
 320:	0c000000 	jal	0 <func_80A6D8D0>
 324:	02003025 	move	a2,s0
 328:	3c060000 	lui	a2,0x0
 32c:	24c60000 	addiu	a2,a2,0
 330:	26040098 	addiu	a0,s0,152
 334:	0c000000 	jal	0 <func_80A6D8D0>
 338:	00002825 	move	a1,zero
 33c:	ae000150 	sw	zero,336(s0)
 340:	0c000000 	jal	0 <func_80A6D8D0>
 344:	02002025 	move	a0,s0
 348:	8fbf0024 	lw	ra,36(sp)
 34c:	8fb0001c 	lw	s0,28(sp)
 350:	8fb10020 	lw	s1,32(sp)
 354:	03e00008 	jr	ra
 358:	27bd0030 	addiu	sp,sp,48

0000035c <EnHorseZelda_Destroy>:
 35c:	27bdffe8 	addiu	sp,sp,-24
 360:	afa40018 	sw	a0,24(sp)
 364:	afa5001c 	sw	a1,28(sp)
 368:	00a02025 	move	a0,a1
 36c:	8fa50018 	lw	a1,24(sp)
 370:	afbf0014 	sw	ra,20(sp)
 374:	0c000000 	jal	0 <func_80A6D8D0>
 378:	24a501fc 	addiu	a1,a1,508
 37c:	8fa50018 	lw	a1,24(sp)
 380:	8fa4001c 	lw	a0,28(sp)
 384:	0c000000 	jal	0 <func_80A6D8D0>
 388:	24a50248 	addiu	a1,a1,584
 38c:	8fa50018 	lw	a1,24(sp)
 390:	8fa4001c 	lw	a0,28(sp)
 394:	0c000000 	jal	0 <func_80A6D8D0>
 398:	24a50154 	addiu	a1,a1,340
 39c:	8fbf0014 	lw	ra,20(sp)
 3a0:	27bd0018 	addiu	sp,sp,24
 3a4:	03e00008 	jr	ra
 3a8:	00000000 	nop

000003ac <func_80A6DC7C>:
 3ac:	27bdffe8 	addiu	sp,sp,-24
 3b0:	afbf0014 	sw	ra,20(sp)
 3b4:	8c8e0150 	lw	t6,336(a0)
 3b8:	00803025 	move	a2,a0
 3bc:	ac80014c 	sw	zero,332(a0)
 3c0:	25c20001 	addiu	v0,t6,1
 3c4:	18400003 	blez	v0,3d4 <func_80A6DC7C+0x28>
 3c8:	ac820150 	sw	v0,336(a0)
 3cc:	ac800150 	sw	zero,336(a0)
 3d0:	00001025 	move	v0,zero
 3d4:	0002c080 	sll	t8,v0,0x2
 3d8:	3c050000 	lui	a1,0x0
 3dc:	00b82821 	addu	a1,a1,t8
 3e0:	8ca50000 	lw	a1,0(a1)
 3e4:	0c000000 	jal	0 <func_80A6D8D0>
 3e8:	24c401a0 	addiu	a0,a2,416
 3ec:	8fbf0014 	lw	ra,20(sp)
 3f0:	27bd0018 	addiu	sp,sp,24
 3f4:	03e00008 	jr	ra
 3f8:	00000000 	nop

000003fc <func_80A6DCCC>:
 3fc:	27bdffe8 	addiu	sp,sp,-24
 400:	44802000 	mtc1	zero,$f4
 404:	afa5001c 	sw	a1,28(sp)
 408:	afbf0014 	sw	ra,20(sp)
 40c:	afa40018 	sw	a0,24(sp)
 410:	00802825 	move	a1,a0
 414:	e4840068 	swc1	$f4,104(a0)
 418:	afa50018 	sw	a1,24(sp)
 41c:	0c000000 	jal	0 <func_80A6D8D0>
 420:	248401a0 	addiu	a0,a0,416
 424:	10400003 	beqz	v0,434 <func_80A6DCCC+0x38>
 428:	8fa50018 	lw	a1,24(sp)
 42c:	0c000000 	jal	0 <func_80A6D8D0>
 430:	00a02025 	move	a0,a1
 434:	8fbf0014 	lw	ra,20(sp)
 438:	27bd0018 	addiu	sp,sp,24
 43c:	03e00008 	jr	ra
 440:	00000000 	nop

00000444 <func_80A6DD14>:
 444:	27bdffc8 	addiu	sp,sp,-56
 448:	afbf002c 	sw	ra,44(sp)
 44c:	afb00028 	sw	s0,40(sp)
 450:	3c0140c0 	lui	at,0x40c0
 454:	44813000 	mtc1	at,$f6
 458:	c4840068 	lwc1	$f4,104(a0)
 45c:	240e0001 	li	t6,1
 460:	ac8e014c 	sw	t6,332(a0)
 464:	46062203 	div.s	$f8,$f4,$f6
 468:	ac800150 	sw	zero,336(a0)
 46c:	3c070000 	lui	a3,0x0
 470:	3c0f0000 	lui	t7,0x0
 474:	24e70000 	addiu	a3,a3,0
 478:	00808025 	move	s0,a0
 47c:	25ef0000 	addiu	t7,t7,0
 480:	afaf0014 	sw	t7,20(sp)
 484:	260500e4 	addiu	a1,s0,228
 488:	24042804 	li	a0,10244
 48c:	afa70010 	sw	a3,16(sp)
 490:	24060004 	li	a2,4
 494:	0c000000 	jal	0 <func_80A6D8D0>
 498:	e7a80034 	swc1	$f8,52(sp)
 49c:	8e180150 	lw	t8,336(s0)
 4a0:	3c040000 	lui	a0,0x0
 4a4:	0018c880 	sll	t9,t8,0x2
 4a8:	00992021 	addu	a0,a0,t9
 4ac:	0c000000 	jal	0 <func_80A6D8D0>
 4b0:	8c840000 	lw	a0,0(a0)
 4b4:	8e030150 	lw	v1,336(s0)
 4b8:	3c010000 	lui	at,0x0
 4bc:	c7b00034 	lwc1	$f16,52(sp)
 4c0:	00031880 	sll	v1,v1,0x2
 4c4:	00230821 	addu	at,at,v1
 4c8:	c42a0000 	lwc1	$f10,0(at)
 4cc:	3c013fc0 	lui	at,0x3fc0
 4d0:	44812000 	mtc1	at,$f4
 4d4:	46105482 	mul.s	$f18,$f10,$f16
 4d8:	44824000 	mtc1	v0,$f8
 4dc:	44800000 	mtc1	zero,$f0
 4e0:	3c050000 	lui	a1,0x0
 4e4:	00a32821 	addu	a1,a1,v1
 4e8:	24080002 	li	t0,2
 4ec:	468042a0 	cvt.s.w	$f10,$f8
 4f0:	46049182 	mul.s	$f6,$f18,$f4
 4f4:	44070000 	mfc1	a3,$f0
 4f8:	afa80014 	sw	t0,20(sp)
 4fc:	8ca50000 	lw	a1,0(a1)
 500:	260401a0 	addiu	a0,s0,416
 504:	e7aa0010 	swc1	$f10,16(sp)
 508:	e7a00018 	swc1	$f0,24(sp)
 50c:	44063000 	mfc1	a2,$f6
 510:	0c000000 	jal	0 <func_80A6D8D0>
 514:	00000000 	nop
 518:	8fbf002c 	lw	ra,44(sp)
 51c:	8fb00028 	lw	s0,40(sp)
 520:	27bd0038 	addiu	sp,sp,56
 524:	03e00008 	jr	ra
 528:	00000000 	nop

0000052c <func_80A6DDFC>:
 52c:	27bdffe8 	addiu	sp,sp,-24
 530:	afbf0014 	sw	ra,20(sp)
 534:	0c000000 	jal	0 <func_80A6D8D0>
 538:	afa40018 	sw	a0,24(sp)
 53c:	8fa40018 	lw	a0,24(sp)
 540:	0c000000 	jal	0 <func_80A6D8D0>
 544:	248401a0 	addiu	a0,a0,416
 548:	50400004 	beqzl	v0,55c <func_80A6DDFC+0x30>
 54c:	8fbf0014 	lw	ra,20(sp)
 550:	0c000000 	jal	0 <func_80A6D8D0>
 554:	8fa40018 	lw	a0,24(sp)
 558:	8fbf0014 	lw	ra,20(sp)
 55c:	27bd0018 	addiu	sp,sp,24
 560:	03e00008 	jr	ra
 564:	00000000 	nop

00000568 <func_80A6DE38>:
 568:	27bdffc0 	addiu	sp,sp,-64
 56c:	afb00018 	sw	s0,24(sp)
 570:	00808025 	move	s0,a0
 574:	afbf001c 	sw	ra,28(sp)
 578:	afa50044 	sw	a1,68(sp)
 57c:	0c000000 	jal	0 <func_80A6D8D0>
 580:	848400b6 	lh	a0,182(a0)
 584:	3c0141f0 	lui	at,0x41f0
 588:	44812000 	mtc1	at,$f4
 58c:	c6080024 	lwc1	$f8,36(s0)
 590:	3c014270 	lui	at,0x4270
 594:	46040182 	mul.s	$f6,$f0,$f4
 598:	44819000 	mtc1	at,$f18
 59c:	46083280 	add.s	$f10,$f6,$f8
 5a0:	e7aa0028 	swc1	$f10,40(sp)
 5a4:	c6100028 	lwc1	$f16,40(s0)
 5a8:	46128100 	add.s	$f4,$f16,$f18
 5ac:	e7a4002c 	swc1	$f4,44(sp)
 5b0:	0c000000 	jal	0 <func_80A6D8D0>
 5b4:	860400b6 	lh	a0,182(s0)
 5b8:	3c0141f0 	lui	at,0x41f0
 5bc:	44813000 	mtc1	at,$f6
 5c0:	c60a002c 	lwc1	$f10,44(s0)
 5c4:	8fa40044 	lw	a0,68(sp)
 5c8:	46060202 	mul.s	$f8,$f0,$f6
 5cc:	27a50038 	addiu	a1,sp,56
 5d0:	27a60024 	addiu	a2,sp,36
 5d4:	27a70028 	addiu	a3,sp,40
 5d8:	248407c0 	addiu	a0,a0,1984
 5dc:	460a4400 	add.s	$f16,$f8,$f10
 5e0:	0c000000 	jal	0 <func_80A6D8D0>
 5e4:	e7b00030 	swc1	$f16,48(sp)
 5e8:	c6120028 	lwc1	$f18,40(s0)
 5ec:	3c0141f0 	lui	at,0x41f0
 5f0:	44817000 	mtc1	at,$f14
 5f4:	e60001f4 	swc1	$f0,500(s0)
 5f8:	0c000000 	jal	0 <func_80A6D8D0>
 5fc:	46009301 	sub.s	$f12,$f18,$f0
 600:	3c010000 	lui	at,0x0
 604:	c4240000 	lwc1	$f4,0(at)
 608:	46040182 	mul.s	$f6,$f0,$f4
 60c:	4600320d 	trunc.w.s	$f8,$f6
 610:	440f4000 	mfc1	t7,$f8
 614:	00000000 	nop
 618:	a60f00b4 	sh	t7,180(s0)
 61c:	8fbf001c 	lw	ra,28(sp)
 620:	8fb00018 	lw	s0,24(sp)
 624:	27bd0040 	addiu	sp,sp,64
 628:	03e00008 	jr	ra
 62c:	00000000 	nop

00000630 <EnHorseZelda_Update>:
 630:	27bdffc8 	addiu	sp,sp,-56
 634:	afb00020 	sw	s0,32(sp)
 638:	00808025 	move	s0,a0
 63c:	afbf0024 	sw	ra,36(sp)
 640:	afa5003c 	sw	a1,60(sp)
 644:	8e0e014c 	lw	t6,332(s0)
 648:	3c190000 	lui	t9,0x0
 64c:	000e7880 	sll	t7,t6,0x2
 650:	032fc821 	addu	t9,t9,t7
 654:	8f390000 	lw	t9,0(t9)
 658:	0320f809 	jalr	t9
 65c:	00000000 	nop
 660:	44802000 	mtc1	zero,$f4
 664:	02002025 	move	a0,s0
 668:	0c000000 	jal	0 <func_80A6D8D0>
 66c:	e6040068 	swc1	$f4,104(s0)
 670:	3c0142c8 	lui	at,0x42c8
 674:	44813000 	mtc1	at,$f6
 678:	2418001d 	li	t8,29
 67c:	afb80014 	sw	t8,20(sp)
 680:	8fa4003c 	lw	a0,60(sp)
 684:	02002825 	move	a1,s0
 688:	3c0641a0 	lui	a2,0x41a0
 68c:	3c07425c 	lui	a3,0x425c
 690:	0c000000 	jal	0 <func_80A6D8D0>
 694:	e7a60010 	swc1	$f6,16(sp)
 698:	8e080028 	lw	t0,40(s0)
 69c:	3c01428c 	lui	at,0x428c
 6a0:	8e090024 	lw	t1,36(s0)
 6a4:	ae08003c 	sw	t0,60(s0)
 6a8:	c608003c 	lwc1	$f8,60(s0)
 6ac:	44815000 	mtc1	at,$f10
 6b0:	ae090038 	sw	t1,56(s0)
 6b4:	8e09002c 	lw	t1,44(s0)
 6b8:	460a4400 	add.s	$f16,$f8,$f10
 6bc:	260601fc 	addiu	a2,s0,508
 6c0:	ae090040 	sw	t1,64(s0)
 6c4:	00c02825 	move	a1,a2
 6c8:	e610003c 	swc1	$f16,60(s0)
 6cc:	afa6002c 	sw	a2,44(sp)
 6d0:	0c000000 	jal	0 <func_80A6D8D0>
 6d4:	02002025 	move	a0,s0
 6d8:	8fa4003c 	lw	a0,60(sp)
 6dc:	3c010001 	lui	at,0x1
 6e0:	34211e60 	ori	at,at,0x1e60
 6e4:	8fa6002c 	lw	a2,44(sp)
 6e8:	0c000000 	jal	0 <func_80A6D8D0>
 6ec:	00812821 	addu	a1,a0,at
 6f0:	8fbf0024 	lw	ra,36(sp)
 6f4:	8fb00020 	lw	s0,32(sp)
 6f8:	27bd0038 	addiu	sp,sp,56
 6fc:	03e00008 	jr	ra
 700:	00000000 	nop

00000704 <func_80A6DFD4>:
 704:	27bdffa8 	addiu	sp,sp,-88
 708:	afbf002c 	sw	ra,44(sp)
 70c:	afb50028 	sw	s5,40(sp)
 710:	afb40024 	sw	s4,36(sp)
 714:	afb30020 	sw	s3,32(sp)
 718:	afb2001c 	sw	s2,28(sp)
 71c:	afb10018 	sw	s1,24(sp)
 720:	afb00014 	sw	s0,20(sp)
 724:	afa5005c 	sw	a1,92(sp)
 728:	8c8e0260 	lw	t6,608(a0)
 72c:	00808825 	move	s1,a0
 730:	00c09825 	move	s3,a2
 734:	19c00047 	blez	t6,854 <func_80A6DFD4+0x150>
 738:	00009025 	move	s2,zero
 73c:	00008025 	move	s0,zero
 740:	27b50040 	addiu	s5,sp,64
 744:	27b4004c 	addiu	s4,sp,76
 748:	8e2f0264 	lw	t7,612(s1)
 74c:	02602025 	move	a0,s3
 750:	02803025 	move	a2,s4
 754:	01f0c021 	addu	t8,t7,s0
 758:	87190028 	lh	t9,40(t8)
 75c:	02a03825 	move	a3,s5
 760:	44992000 	mtc1	t9,$f4
 764:	00000000 	nop
 768:	468021a0 	cvt.s.w	$f6,$f4
 76c:	e7a6004c 	swc1	$f6,76(sp)
 770:	8e280264 	lw	t0,612(s1)
 774:	01104821 	addu	t1,t0,s0
 778:	852a002a 	lh	t2,42(t1)
 77c:	448a4000 	mtc1	t2,$f8
 780:	00000000 	nop
 784:	468042a0 	cvt.s.w	$f10,$f8
 788:	e7aa0050 	swc1	$f10,80(sp)
 78c:	8e2b0264 	lw	t3,612(s1)
 790:	01706021 	addu	t4,t3,s0
 794:	858d002c 	lh	t5,44(t4)
 798:	448d8000 	mtc1	t5,$f16
 79c:	00000000 	nop
 7a0:	468084a0 	cvt.s.w	$f18,$f16
 7a4:	e7b20054 	swc1	$f18,84(sp)
 7a8:	8e2e0264 	lw	t6,612(s1)
 7ac:	01d07821 	addu	t7,t6,s0
 7b0:	0c000000 	jal	0 <func_80A6D8D0>
 7b4:	91e5003c 	lbu	a1,60(t7)
 7b8:	c7a40040 	lwc1	$f4,64(sp)
 7bc:	8e280264 	lw	t0,612(s1)
 7c0:	26520001 	addiu	s2,s2,1
 7c4:	4600218d 	trunc.w.s	$f6,$f4
 7c8:	01104821 	addu	t1,t0,s0
 7cc:	44193000 	mfc1	t9,$f6
 7d0:	00000000 	nop
 7d4:	a5390030 	sh	t9,48(t1)
 7d8:	c7a80044 	lwc1	$f8,68(sp)
 7dc:	8e2c0264 	lw	t4,612(s1)
 7e0:	4600428d 	trunc.w.s	$f10,$f8
 7e4:	01906821 	addu	t5,t4,s0
 7e8:	440b5000 	mfc1	t3,$f10
 7ec:	00000000 	nop
 7f0:	a5ab0032 	sh	t3,50(t5)
 7f4:	c7b00048 	lwc1	$f16,72(sp)
 7f8:	8e380264 	lw	t8,612(s1)
 7fc:	4600848d 	trunc.w.s	$f18,$f16
 800:	03104021 	addu	t0,t8,s0
 804:	440f9000 	mfc1	t7,$f18
 808:	00000000 	nop
 80c:	a50f0034 	sh	t7,52(t0)
 810:	8e390264 	lw	t9,612(s1)
 814:	03301021 	addu	v0,t9,s0
 818:	8449002e 	lh	t1,46(v0)
 81c:	c4440038 	lwc1	$f4,56(v0)
 820:	26100040 	addiu	s0,s0,64
 824:	44893000 	mtc1	t1,$f6
 828:	00000000 	nop
 82c:	46803220 	cvt.s.w	$f8,$f6
 830:	46082282 	mul.s	$f10,$f4,$f8
 834:	4600540d 	trunc.w.s	$f16,$f10
 838:	440c8000 	mfc1	t4,$f16
 83c:	00000000 	nop
 840:	a44c0036 	sh	t4,54(v0)
 844:	8e2b0260 	lw	t3,608(s1)
 848:	024b082a 	slt	at,s2,t3
 84c:	5420ffbf 	bnezl	at,74c <func_80A6DFD4+0x48>
 850:	8e2f0264 	lw	t7,612(s1)
 854:	8fa4005c 	lw	a0,92(sp)
 858:	3c010001 	lui	at,0x1
 85c:	34211e60 	ori	at,at,0x1e60
 860:	26260248 	addiu	a2,s1,584
 864:	0c000000 	jal	0 <func_80A6D8D0>
 868:	00812821 	addu	a1,a0,at
 86c:	8fbf002c 	lw	ra,44(sp)
 870:	8fb00014 	lw	s0,20(sp)
 874:	8fb10018 	lw	s1,24(sp)
 878:	8fb2001c 	lw	s2,28(sp)
 87c:	8fb30020 	lw	s3,32(sp)
 880:	8fb40024 	lw	s4,36(sp)
 884:	8fb50028 	lw	s5,40(sp)
 888:	03e00008 	jr	ra
 88c:	27bd0058 	addiu	sp,sp,88

00000890 <EnHorseZelda_Draw>:
 890:	27bdffe0 	addiu	sp,sp,-32
 894:	afbf001c 	sw	ra,28(sp)
 898:	afa40020 	sw	a0,32(sp)
 89c:	0c000000 	jal	0 <func_80A6D8D0>
 8a0:	afa50024 	sw	a1,36(sp)
 8a4:	8fae0024 	lw	t6,36(sp)
 8a8:	0c000000 	jal	0 <func_80A6D8D0>
 8ac:	8dc40000 	lw	a0,0(t6)
 8b0:	8fa40020 	lw	a0,32(sp)
 8b4:	3c070000 	lui	a3,0x0
 8b8:	240f0001 	li	t7,1
 8bc:	afaf0010 	sw	t7,16(sp)
 8c0:	24e70000 	addiu	a3,a3,0
 8c4:	8fa50024 	lw	a1,36(sp)
 8c8:	0c000000 	jal	0 <func_80A6D8D0>
 8cc:	24860154 	addiu	a2,a0,340
 8d0:	8fbf001c 	lw	ra,28(sp)
 8d4:	27bd0020 	addiu	sp,sp,32
 8d8:	03e00008 	jr	ra
 8dc:	00000000 	nop
