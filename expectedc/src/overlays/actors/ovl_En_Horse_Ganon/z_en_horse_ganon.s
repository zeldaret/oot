
build/src/overlays/actors/ovl_En_Horse_Ganon/z_en_horse_ganon.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A68660>:
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

00000048 <func_80A686A8>:
  48:	27bdffc8 	addiu	sp,sp,-56
  4c:	afb00018 	sw	s0,24(sp)
  50:	00808025 	move	s0,a0
  54:	afbf001c 	sw	ra,28(sp)
  58:	afa5003c 	sw	a1,60(sp)
  5c:	3c040000 	lui	a0,0x0
  60:	248400b8 	addiu	a0,a0,184
  64:	8e0501ec 	lw	a1,492(s0)
  68:	0c000000 	jal	0 <func_80A68660>
  6c:	27a60028 	addiu	a2,sp,40
  70:	26050024 	addiu	a1,s0,36
  74:	afa50020 	sw	a1,32(sp)
  78:	0c000000 	jal	0 <func_80A68660>
  7c:	27a40028 	addiu	a0,sp,40
  80:	3c0143c8 	lui	at,0x43c8
  84:	44812000 	mtc1	at,$f4
  88:	00000000 	nop
  8c:	4604003e 	c.le.s	$f0,$f4
  90:	00000000 	nop
  94:	4502000d 	bc1fl	cc <func_80A686A8+0x84>
  98:	8fa40020 	lw	a0,32(sp)
  9c:	8e0e01ec 	lw	t6,492(s0)
  a0:	3c040000 	lui	a0,0x0
  a4:	248400b8 	addiu	a0,a0,184
  a8:	25cf0001 	addiu	t7,t6,1
  ac:	29e1000e 	slti	at,t7,14
  b0:	14200005 	bnez	at,c8 <func_80A686A8+0x80>
  b4:	ae0f01ec 	sw	t7,492(s0)
  b8:	ae0001ec 	sw	zero,492(s0)
  bc:	00002825 	move	a1,zero
  c0:	0c000000 	jal	0 <func_80A68660>
  c4:	27a60028 	addiu	a2,sp,40
  c8:	8fa40020 	lw	a0,32(sp)
  cc:	0c000000 	jal	0 <func_80A68660>
  d0:	27a50028 	addiu	a1,sp,40
  d4:	86030032 	lh	v1,50(s0)
  d8:	00432023 	subu	a0,v0,v1
  dc:	00042400 	sll	a0,a0,0x10
  e0:	00042403 	sra	a0,a0,0x10
  e4:	2881012d 	slti	at,a0,301
  e8:	14200003 	bnez	at,f8 <func_80A686A8+0xb0>
  ec:	2479012c 	addiu	t9,v1,300
  f0:	10000008 	b	114 <func_80A686A8+0xcc>
  f4:	a6190032 	sh	t9,50(s0)
  f8:	2881fed4 	slti	at,a0,-300
  fc:	10200004 	beqz	at,110 <func_80A686A8+0xc8>
 100:	00644821 	addu	t1,v1,a0
 104:	2468fed4 	addiu	t0,v1,-300
 108:	10000002 	b	114 <func_80A686A8+0xcc>
 10c:	a6080032 	sh	t0,50(s0)
 110:	a6090032 	sh	t1,50(s0)
 114:	860a0032 	lh	t2,50(s0)
 118:	02002025 	move	a0,s0
 11c:	a60a00b6 	sh	t2,182(s0)
 120:	8fab003c 	lw	t3,60(sp)
 124:	0c000000 	jal	0 <func_80A68660>
 128:	8d651c44 	lw	a1,7236(t3)
 12c:	3c014396 	lui	at,0x4396
 130:	44813000 	mtc1	at,$f6
 134:	3c014140 	lui	at,0x4140
 138:	4606003e 	c.le.s	$f0,$f6
 13c:	00000000 	nop
 140:	45020014 	bc1fl	194 <func_80A686A8+0x14c>
 144:	8e0c01ec 	lw	t4,492(s0)
 148:	c6000068 	lwc1	$f0,104(s0)
 14c:	44814000 	mtc1	at,$f8
 150:	3c013f80 	lui	at,0x3f80
 154:	4608003c 	c.lt.s	$f0,$f8
 158:	00000000 	nop
 15c:	45020008 	bc1fl	180 <func_80A686A8+0x138>
 160:	44819000 	mtc1	at,$f18
 164:	3c013f80 	lui	at,0x3f80
 168:	44815000 	mtc1	at,$f10
 16c:	00000000 	nop
 170:	460a0400 	add.s	$f16,$f0,$f10
 174:	10000021 	b	1fc <func_80A686A8+0x1b4>
 178:	e6100068 	swc1	$f16,104(s0)
 17c:	44819000 	mtc1	at,$f18
 180:	00000000 	nop
 184:	46120101 	sub.s	$f4,$f0,$f18
 188:	1000001c 	b	1fc <func_80A686A8+0x1b4>
 18c:	e6040068 	swc1	$f4,104(s0)
 190:	8e0c01ec 	lw	t4,492(s0)
 194:	3c0e0000 	lui	t6,0x0
 198:	c6000068 	lwc1	$f0,104(s0)
 19c:	000c68c0 	sll	t5,t4,0x3
 1a0:	01cd7021 	addu	t6,t6,t5
 1a4:	91ce00be 	lbu	t6,190(t6)
 1a8:	3c014f80 	lui	at,0x4f80
 1ac:	448e3000 	mtc1	t6,$f6
 1b0:	05c10004 	bgez	t6,1c4 <func_80A686A8+0x17c>
 1b4:	46803220 	cvt.s.w	$f8,$f6
 1b8:	44815000 	mtc1	at,$f10
 1bc:	00000000 	nop
 1c0:	460a4200 	add.s	$f8,$f8,$f10
 1c4:	4608003c 	c.lt.s	$f0,$f8
 1c8:	3c013f00 	lui	at,0x3f00
 1cc:	45020008 	bc1fl	1f0 <func_80A686A8+0x1a8>
 1d0:	44812000 	mtc1	at,$f4
 1d4:	3c013f00 	lui	at,0x3f00
 1d8:	44818000 	mtc1	at,$f16
 1dc:	00000000 	nop
 1e0:	46100480 	add.s	$f18,$f0,$f16
 1e4:	10000005 	b	1fc <func_80A686A8+0x1b4>
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

00000210 <func_80A68870>:
 210:	27bdffd8 	addiu	sp,sp,-40
 214:	afbf0024 	sw	ra,36(sp)
 218:	afb00020 	sw	s0,32(sp)
 21c:	8c8201e8 	lw	v0,488(a0)
 220:	3c030000 	lui	v1,0x0
 224:	24630128 	addiu	v1,v1,296
 228:	00027080 	sll	t6,v0,0x2
 22c:	006e7821 	addu	t7,v1,t6
 230:	8df80000 	lw	t8,0(t7)
 234:	c48001b8 	lwc1	$f0,440(a0)
 238:	00808025 	move	s0,a0
 23c:	44982000 	mtc1	t8,$f4
 240:	00000000 	nop
 244:	468021a0 	cvt.s.w	$f6,$f4
 248:	4600303c 	c.lt.s	$f6,$f0
 24c:	00000000 	nop
 250:	4502001a 	bc1fl	2bc <func_80A68870+0xac>
 254:	8fbf0024 	lw	ra,36(sp)
 258:	14400008 	bnez	v0,27c <func_80A68870+0x6c>
 25c:	3c070000 	lui	a3,0x0
 260:	8c790004 	lw	t9,4(v1)
 264:	44994000 	mtc1	t9,$f8
 268:	00000000 	nop
 26c:	468042a0 	cvt.s.w	$f10,$f8
 270:	4600503c 	c.lt.s	$f10,$f0
 274:	00000000 	nop
 278:	4501000f 	bc1t	2b8 <func_80A68870+0xa8>
 27c:	3c080000 	lui	t0,0x0
 280:	24e70000 	addiu	a3,a3,0
 284:	25080000 	addiu	t0,t0,0
 288:	afa80014 	sw	t0,20(sp)
 28c:	afa70010 	sw	a3,16(sp)
 290:	24042803 	li	a0,10243
 294:	260500e4 	addiu	a1,s0,228
 298:	0c000000 	jal	0 <func_80A68660>
 29c:	24060004 	li	a2,4
 2a0:	8e0901e8 	lw	t1,488(s0)
 2a4:	252a0001 	addiu	t2,t1,1
 2a8:	29410002 	slti	at,t2,2
 2ac:	14200002 	bnez	at,2b8 <func_80A68870+0xa8>
 2b0:	ae0a01e8 	sw	t2,488(s0)
 2b4:	ae0001e8 	sw	zero,488(s0)
 2b8:	8fbf0024 	lw	ra,36(sp)
 2bc:	8fb00020 	lw	s0,32(sp)
 2c0:	27bd0028 	addiu	sp,sp,40
 2c4:	03e00008 	jr	ra
 2c8:	00000000 	nop

000002cc <EnHorseGanon_Init>:
 2cc:	27bdffd0 	addiu	sp,sp,-48
 2d0:	afb10020 	sw	s1,32(sp)
 2d4:	00a08825 	move	s1,a1
 2d8:	afbf0024 	sw	ra,36(sp)
 2dc:	afb0001c 	sw	s0,28(sp)
 2e0:	3c050000 	lui	a1,0x0
 2e4:	00808025 	move	s0,a0
 2e8:	0c000000 	jal	0 <func_80A68660>
 2ec:	24a50130 	addiu	a1,a1,304
 2f0:	3c053c3c 	lui	a1,0x3c3c
 2f4:	34a56a7f 	ori	a1,a1,0x6a7f
 2f8:	0c000000 	jal	0 <func_80A68660>
 2fc:	02002025 	move	a0,s0
 300:	3c01c060 	lui	at,0xc060
 304:	44812000 	mtc1	at,$f4
 308:	3c060000 	lui	a2,0x0
 30c:	24c60000 	addiu	a2,a2,0
 310:	260400b4 	addiu	a0,s0,180
 314:	24050000 	li	a1,0
 318:	3c0741a0 	lui	a3,0x41a0
 31c:	0c000000 	jal	0 <func_80A68660>
 320:	e604006c 	swc1	$f4,108(s0)
 324:	8e0e0028 	lw	t6,40(s0)
 328:	3c01428c 	lui	at,0x428c
 32c:	8e0f0024 	lw	t7,36(s0)
 330:	ae0e003c 	sw	t6,60(s0)
 334:	c608003c 	lwc1	$f8,60(s0)
 338:	44815000 	mtc1	at,$f10
 33c:	ae0f0038 	sw	t7,56(s0)
 340:	44803000 	mtc1	zero,$f6
 344:	460a4400 	add.s	$f16,$f8,$f10
 348:	8e0f002c 	lw	t7,44(s0)
 34c:	3c060000 	lui	a2,0x0
 350:	3c070000 	lui	a3,0x0
 354:	ae00014c 	sw	zero,332(s0)
 358:	e610003c 	swc1	$f16,60(s0)
 35c:	24e70000 	addiu	a3,a3,0
 360:	24c60000 	addiu	a2,a2,0
 364:	02202025 	move	a0,s1
 368:	26050154 	addiu	a1,s0,340
 36c:	e6060068 	swc1	$f6,104(s0)
 370:	0c000000 	jal	0 <func_80A68660>
 374:	ae0f0040 	sw	t7,64(s0)
 378:	ae000150 	sw	zero,336(s0)
 37c:	3c050000 	lui	a1,0x0
 380:	8ca50020 	lw	a1,32(a1)
 384:	0c000000 	jal	0 <func_80A68660>
 388:	260401a0 	addiu	a0,s0,416
 38c:	260501fc 	addiu	a1,s0,508
 390:	afa50028 	sw	a1,40(sp)
 394:	0c000000 	jal	0 <func_80A68660>
 398:	02202025 	move	a0,s1
 39c:	3c070000 	lui	a3,0x0
 3a0:	8fa50028 	lw	a1,40(sp)
 3a4:	24e70050 	addiu	a3,a3,80
 3a8:	02202025 	move	a0,s1
 3ac:	0c000000 	jal	0 <func_80A68660>
 3b0:	02003025 	move	a2,s0
 3b4:	26050248 	addiu	a1,s0,584
 3b8:	afa50028 	sw	a1,40(sp)
 3bc:	0c000000 	jal	0 <func_80A68660>
 3c0:	02202025 	move	a0,s1
 3c4:	3c070000 	lui	a3,0x0
 3c8:	26180268 	addiu	t8,s0,616
 3cc:	8fa50028 	lw	a1,40(sp)
 3d0:	afb80010 	sw	t8,16(sp)
 3d4:	24e700a0 	addiu	a3,a3,160
 3d8:	02202025 	move	a0,s1
 3dc:	0c000000 	jal	0 <func_80A68660>
 3e0:	02003025 	move	a2,s0
 3e4:	3c060000 	lui	a2,0x0
 3e8:	24c600b0 	addiu	a2,a2,176
 3ec:	26040098 	addiu	a0,s0,152
 3f0:	0c000000 	jal	0 <func_80A68660>
 3f4:	00002825 	move	a1,zero
 3f8:	0c000000 	jal	0 <func_80A68660>
 3fc:	02002025 	move	a0,s0
 400:	8fbf0024 	lw	ra,36(sp)
 404:	8fb0001c 	lw	s0,28(sp)
 408:	8fb10020 	lw	s1,32(sp)
 40c:	03e00008 	jr	ra
 410:	27bd0030 	addiu	sp,sp,48

00000414 <EnHorseGanon_Destroy>:
 414:	27bdffe8 	addiu	sp,sp,-24
 418:	afa40018 	sw	a0,24(sp)
 41c:	afa5001c 	sw	a1,28(sp)
 420:	00a02025 	move	a0,a1
 424:	8fa50018 	lw	a1,24(sp)
 428:	afbf0014 	sw	ra,20(sp)
 42c:	0c000000 	jal	0 <func_80A68660>
 430:	24a50154 	addiu	a1,a1,340
 434:	8fa50018 	lw	a1,24(sp)
 438:	8fa4001c 	lw	a0,28(sp)
 43c:	0c000000 	jal	0 <func_80A68660>
 440:	24a501fc 	addiu	a1,a1,508
 444:	8fa50018 	lw	a1,24(sp)
 448:	8fa4001c 	lw	a0,28(sp)
 44c:	0c000000 	jal	0 <func_80A68660>
 450:	24a50248 	addiu	a1,a1,584
 454:	8fbf0014 	lw	ra,20(sp)
 458:	27bd0018 	addiu	sp,sp,24
 45c:	03e00008 	jr	ra
 460:	00000000 	nop

00000464 <func_80A68AC4>:
 464:	27bdffe8 	addiu	sp,sp,-24
 468:	afbf0014 	sw	ra,20(sp)
 46c:	ac80014c 	sw	zero,332(a0)
 470:	3c050000 	lui	a1,0x0
 474:	8ca50030 	lw	a1,48(a1)
 478:	0c000000 	jal	0 <func_80A68660>
 47c:	248401a0 	addiu	a0,a0,416
 480:	8fbf0014 	lw	ra,20(sp)
 484:	27bd0018 	addiu	sp,sp,24
 488:	03e00008 	jr	ra
 48c:	00000000 	nop

00000490 <func_80A68AF0>:
 490:	27bdffe8 	addiu	sp,sp,-24
 494:	44802000 	mtc1	zero,$f4
 498:	afbf0014 	sw	ra,20(sp)
 49c:	afa40018 	sw	a0,24(sp)
 4a0:	afa5001c 	sw	a1,28(sp)
 4a4:	248401a0 	addiu	a0,a0,416
 4a8:	0c000000 	jal	0 <func_80A68660>
 4ac:	e484fec8 	swc1	$f4,-312(a0)
 4b0:	8fbf0014 	lw	ra,20(sp)
 4b4:	27bd0018 	addiu	sp,sp,24
 4b8:	03e00008 	jr	ra
 4bc:	00000000 	nop

000004c0 <func_80A68B20>:
 4c0:	27bdffc8 	addiu	sp,sp,-56
 4c4:	afbf002c 	sw	ra,44(sp)
 4c8:	afb00028 	sw	s0,40(sp)
 4cc:	3c014040 	lui	at,0x4040
 4d0:	44811000 	mtc1	at,$f2
 4d4:	c4800068 	lwc1	$f0,104(a0)
 4d8:	240e0001 	li	t6,1
 4dc:	00808025 	move	s0,a0
 4e0:	4602003e 	c.le.s	$f0,$f2
 4e4:	00001825 	move	v1,zero
 4e8:	ac8e014c 	sw	t6,332(a0)
 4ec:	24060004 	li	a2,4
 4f0:	45000009 	bc1f	518 <func_80A68B20+0x58>
 4f4:	3c0140c0 	lui	at,0x40c0
 4f8:	8e0f0150 	lw	t7,336(s0)
 4fc:	24040002 	li	a0,2
 500:	24050003 	li	a1,3
 504:	108f0002 	beq	a0,t7,510 <func_80A68B20+0x50>
 508:	00000000 	nop
 50c:	24030001 	li	v1,1
 510:	10000016 	b	56c <func_80A68B20+0xac>
 514:	ae040150 	sw	a0,336(s0)
 518:	44812000 	mtc1	at,$f4
 51c:	24060004 	li	a2,4
 520:	24050003 	li	a1,3
 524:	4604003e 	c.le.s	$f0,$f4
 528:	24040002 	li	a0,2
 52c:	4502000a 	bc1fl	558 <func_80A68B20+0x98>
 530:	8e190150 	lw	t9,336(s0)
 534:	8e180150 	lw	t8,336(s0)
 538:	24050003 	li	a1,3
 53c:	24040002 	li	a0,2
 540:	10b80002 	beq	a1,t8,54c <func_80A68B20+0x8c>
 544:	00000000 	nop
 548:	24030001 	li	v1,1
 54c:	10000007 	b	56c <func_80A68B20+0xac>
 550:	ae050150 	sw	a1,336(s0)
 554:	8e190150 	lw	t9,336(s0)
 558:	24060004 	li	a2,4
 55c:	50d90003 	beql	a2,t9,56c <func_80A68B20+0xac>
 560:	ae060150 	sw	a2,336(s0)
 564:	24030001 	li	v1,1
 568:	ae060150 	sw	a2,336(s0)
 56c:	8e020150 	lw	v0,336(s0)
 570:	14820005 	bne	a0,v0,588 <func_80A68B20+0xc8>
 574:	00000000 	nop
 578:	c6060068 	lwc1	$f6,104(s0)
 57c:	46023203 	div.s	$f8,$f6,$f2
 580:	1000002d 	b	638 <func_80A68B20+0x178>
 584:	e7a80030 	swc1	$f8,48(sp)
 588:	14a20013 	bne	a1,v0,5d8 <func_80A68B20+0x118>
 58c:	3c0140a0 	lui	at,0x40a0
 590:	c60a0068 	lwc1	$f10,104(s0)
 594:	44818000 	mtc1	at,$f16
 598:	3c070000 	lui	a3,0x0
 59c:	3c080000 	lui	t0,0x0
 5a0:	46105483 	div.s	$f18,$f10,$f16
 5a4:	24e70000 	addiu	a3,a3,0
 5a8:	25080000 	addiu	t0,t0,0
 5ac:	afa80014 	sw	t0,20(sp)
 5b0:	afa70010 	sw	a3,16(sp)
 5b4:	afa30034 	sw	v1,52(sp)
 5b8:	24042804 	li	a0,10244
 5bc:	260500e4 	addiu	a1,s0,228
 5c0:	24060004 	li	a2,4
 5c4:	0c000000 	jal	0 <func_80A68660>
 5c8:	e7b20030 	swc1	$f18,48(sp)
 5cc:	8fa30034 	lw	v1,52(sp)
 5d0:	10000019 	b	638 <func_80A68B20+0x178>
 5d4:	8e020150 	lw	v0,336(s0)
 5d8:	14c20014 	bne	a2,v0,62c <func_80A68B20+0x16c>
 5dc:	3c013f80 	lui	at,0x3f80
 5e0:	3c0140e0 	lui	at,0x40e0
 5e4:	44813000 	mtc1	at,$f6
 5e8:	c6040068 	lwc1	$f4,104(s0)
 5ec:	3c070000 	lui	a3,0x0
 5f0:	3c090000 	lui	t1,0x0
 5f4:	46062203 	div.s	$f8,$f4,$f6
 5f8:	24e70000 	addiu	a3,a3,0
 5fc:	25290000 	addiu	t1,t1,0
 600:	afa90014 	sw	t1,20(sp)
 604:	afa70010 	sw	a3,16(sp)
 608:	afa30034 	sw	v1,52(sp)
 60c:	24042804 	li	a0,10244
 610:	260500e4 	addiu	a1,s0,228
 614:	24060004 	li	a2,4
 618:	0c000000 	jal	0 <func_80A68660>
 61c:	e7a80030 	swc1	$f8,48(sp)
 620:	8fa30034 	lw	v1,52(sp)
 624:	10000004 	b	638 <func_80A68B20+0x178>
 628:	8e020150 	lw	v0,336(s0)
 62c:	44815000 	mtc1	at,$f10
 630:	00000000 	nop
 634:	e7aa0030 	swc1	$f10,48(sp)
 638:	24010001 	li	at,1
 63c:	14610022 	bne	v1,at,6c8 <func_80A68B20+0x208>
 640:	00026080 	sll	t4,v0,0x2
 644:	00025080 	sll	t2,v0,0x2
 648:	3c040000 	lui	a0,0x0
 64c:	008a2021 	addu	a0,a0,t2
 650:	0c000000 	jal	0 <func_80A68660>
 654:	8c840020 	lw	a0,32(a0)
 658:	8e030150 	lw	v1,336(s0)
 65c:	3c010000 	lui	at,0x0
 660:	c7b20030 	lwc1	$f18,48(sp)
 664:	00031880 	sll	v1,v1,0x2
 668:	00230821 	addu	at,at,v1
 66c:	c4300038 	lwc1	$f16,56(at)
 670:	3c013fc0 	lui	at,0x3fc0
 674:	44813000 	mtc1	at,$f6
 678:	46128102 	mul.s	$f4,$f16,$f18
 67c:	44825000 	mtc1	v0,$f10
 680:	44800000 	mtc1	zero,$f0
 684:	3c01c040 	lui	at,0xc040
 688:	44819000 	mtc1	at,$f18
 68c:	3c050000 	lui	a1,0x0
 690:	46805420 	cvt.s.w	$f16,$f10
 694:	46062202 	mul.s	$f8,$f4,$f6
 698:	00a32821 	addu	a1,a1,v1
 69c:	240b0002 	li	t3,2
 6a0:	44070000 	mfc1	a3,$f0
 6a4:	afab0014 	sw	t3,20(sp)
 6a8:	8ca50020 	lw	a1,32(a1)
 6ac:	e7b00010 	swc1	$f16,16(sp)
 6b0:	44064000 	mfc1	a2,$f8
 6b4:	260401a0 	addiu	a0,s0,416
 6b8:	0c000000 	jal	0 <func_80A68660>
 6bc:	e7b20018 	swc1	$f18,24(sp)
 6c0:	1000001f 	b	740 <func_80A68B20+0x280>
 6c4:	8fbf002c 	lw	ra,44(sp)
 6c8:	3c040000 	lui	a0,0x0
 6cc:	008c2021 	addu	a0,a0,t4
 6d0:	0c000000 	jal	0 <func_80A68660>
 6d4:	8c840020 	lw	a0,32(a0)
 6d8:	8e030150 	lw	v1,336(s0)
 6dc:	3c010000 	lui	at,0x0
 6e0:	c7a60030 	lwc1	$f6,48(sp)
 6e4:	00031880 	sll	v1,v1,0x2
 6e8:	00230821 	addu	at,at,v1
 6ec:	c4240038 	lwc1	$f4,56(at)
 6f0:	3c013fc0 	lui	at,0x3fc0
 6f4:	44815000 	mtc1	at,$f10
 6f8:	46062202 	mul.s	$f8,$f4,$f6
 6fc:	44829000 	mtc1	v0,$f18
 700:	44800000 	mtc1	zero,$f0
 704:	3c050000 	lui	a1,0x0
 708:	00a32821 	addu	a1,a1,v1
 70c:	240d0002 	li	t5,2
 710:	46809120 	cvt.s.w	$f4,$f18
 714:	460a4402 	mul.s	$f16,$f8,$f10
 718:	44070000 	mfc1	a3,$f0
 71c:	afad0014 	sw	t5,20(sp)
 720:	8ca50020 	lw	a1,32(a1)
 724:	260401a0 	addiu	a0,s0,416
 728:	e7a40010 	swc1	$f4,16(sp)
 72c:	e7a00018 	swc1	$f0,24(sp)
 730:	44068000 	mfc1	a2,$f16
 734:	0c000000 	jal	0 <func_80A68660>
 738:	00000000 	nop
 73c:	8fbf002c 	lw	ra,44(sp)
 740:	8fb00028 	lw	s0,40(sp)
 744:	27bd0038 	addiu	sp,sp,56
 748:	03e00008 	jr	ra
 74c:	00000000 	nop

00000750 <func_80A68DB0>:
 750:	27bdffe0 	addiu	sp,sp,-32
 754:	afbf001c 	sw	ra,28(sp)
 758:	afb00018 	sw	s0,24(sp)
 75c:	afa50024 	sw	a1,36(sp)
 760:	8c8e0150 	lw	t6,336(a0)
 764:	24010002 	li	at,2
 768:	00808025 	move	s0,a0
 76c:	55c10004 	bnel	t6,at,780 <func_80A68DB0+0x30>
 770:	02002025 	move	a0,s0
 774:	0c000000 	jal	0 <func_80A68660>
 778:	00000000 	nop
 77c:	02002025 	move	a0,s0
 780:	0c000000 	jal	0 <func_80A68660>
 784:	8fa50024 	lw	a1,36(sp)
 788:	0c000000 	jal	0 <func_80A68660>
 78c:	260401a0 	addiu	a0,s0,416
 790:	50400004 	beqzl	v0,7a4 <func_80A68DB0+0x54>
 794:	8fbf001c 	lw	ra,28(sp)
 798:	0c000000 	jal	0 <func_80A68660>
 79c:	02002025 	move	a0,s0
 7a0:	8fbf001c 	lw	ra,28(sp)
 7a4:	8fb00018 	lw	s0,24(sp)
 7a8:	27bd0020 	addiu	sp,sp,32
 7ac:	03e00008 	jr	ra
 7b0:	00000000 	nop

000007b4 <func_80A68E14>:
 7b4:	27bdffc0 	addiu	sp,sp,-64
 7b8:	afb00018 	sw	s0,24(sp)
 7bc:	00808025 	move	s0,a0
 7c0:	afbf001c 	sw	ra,28(sp)
 7c4:	afa50044 	sw	a1,68(sp)
 7c8:	0c000000 	jal	0 <func_80A68660>
 7cc:	848400b6 	lh	a0,182(a0)
 7d0:	3c0141f0 	lui	at,0x41f0
 7d4:	44812000 	mtc1	at,$f4
 7d8:	c6080024 	lwc1	$f8,36(s0)
 7dc:	3c014270 	lui	at,0x4270
 7e0:	46040182 	mul.s	$f6,$f0,$f4
 7e4:	44819000 	mtc1	at,$f18
 7e8:	46083280 	add.s	$f10,$f6,$f8
 7ec:	e7aa0028 	swc1	$f10,40(sp)
 7f0:	c6100028 	lwc1	$f16,40(s0)
 7f4:	46128100 	add.s	$f4,$f16,$f18
 7f8:	e7a4002c 	swc1	$f4,44(sp)
 7fc:	0c000000 	jal	0 <func_80A68660>
 800:	860400b6 	lh	a0,182(s0)
 804:	3c0141f0 	lui	at,0x41f0
 808:	44813000 	mtc1	at,$f6
 80c:	c60a002c 	lwc1	$f10,44(s0)
 810:	8fa40044 	lw	a0,68(sp)
 814:	46060202 	mul.s	$f8,$f0,$f6
 818:	27a50038 	addiu	a1,sp,56
 81c:	27a60024 	addiu	a2,sp,36
 820:	27a70028 	addiu	a3,sp,40
 824:	248407c0 	addiu	a0,a0,1984
 828:	460a4400 	add.s	$f16,$f8,$f10
 82c:	0c000000 	jal	0 <func_80A68660>
 830:	e7b00030 	swc1	$f16,48(sp)
 834:	c6120028 	lwc1	$f18,40(s0)
 838:	3c0141f0 	lui	at,0x41f0
 83c:	44817000 	mtc1	at,$f14
 840:	e60001f4 	swc1	$f0,500(s0)
 844:	0c000000 	jal	0 <func_80A68660>
 848:	46009301 	sub.s	$f12,$f18,$f0
 84c:	3c010000 	lui	at,0x0
 850:	c4240000 	lwc1	$f4,0(at)
 854:	46040182 	mul.s	$f6,$f0,$f4
 858:	4600320d 	trunc.w.s	$f8,$f6
 85c:	440f4000 	mfc1	t7,$f8
 860:	00000000 	nop
 864:	a60f00b4 	sh	t7,180(s0)
 868:	8fbf001c 	lw	ra,28(sp)
 86c:	8fb00018 	lw	s0,24(sp)
 870:	27bd0040 	addiu	sp,sp,64
 874:	03e00008 	jr	ra
 878:	00000000 	nop

0000087c <EnHorseGanon_Update>:
 87c:	27bdffc8 	addiu	sp,sp,-56
 880:	afb00020 	sw	s0,32(sp)
 884:	00808025 	move	s0,a0
 888:	afbf0024 	sw	ra,36(sp)
 88c:	afa5003c 	sw	a1,60(sp)
 890:	8e0e014c 	lw	t6,332(s0)
 894:	3c190000 	lui	t9,0x0
 898:	000e7880 	sll	t7,t6,0x2
 89c:	032fc821 	addu	t9,t9,t7
 8a0:	8f390134 	lw	t9,308(t9)
 8a4:	0320f809 	jalr	t9
 8a8:	00000000 	nop
 8ac:	0c000000 	jal	0 <func_80A68660>
 8b0:	02002025 	move	a0,s0
 8b4:	3c0142c8 	lui	at,0x42c8
 8b8:	44812000 	mtc1	at,$f4
 8bc:	2418001d 	li	t8,29
 8c0:	afb80014 	sw	t8,20(sp)
 8c4:	8fa4003c 	lw	a0,60(sp)
 8c8:	02002825 	move	a1,s0
 8cc:	3c0641a0 	lui	a2,0x41a0
 8d0:	3c07425c 	lui	a3,0x425c
 8d4:	0c000000 	jal	0 <func_80A68660>
 8d8:	e7a40010 	swc1	$f4,16(sp)
 8dc:	8e080028 	lw	t0,40(s0)
 8e0:	3c01428c 	lui	at,0x428c
 8e4:	8e090024 	lw	t1,36(s0)
 8e8:	ae08003c 	sw	t0,60(s0)
 8ec:	c606003c 	lwc1	$f6,60(s0)
 8f0:	44814000 	mtc1	at,$f8
 8f4:	ae090038 	sw	t1,56(s0)
 8f8:	8e09002c 	lw	t1,44(s0)
 8fc:	46083280 	add.s	$f10,$f6,$f8
 900:	260601fc 	addiu	a2,s0,508
 904:	ae090040 	sw	t1,64(s0)
 908:	00c02825 	move	a1,a2
 90c:	e60a003c 	swc1	$f10,60(s0)
 910:	afa6002c 	sw	a2,44(sp)
 914:	0c000000 	jal	0 <func_80A68660>
 918:	02002025 	move	a0,s0
 91c:	8fa4003c 	lw	a0,60(sp)
 920:	3c010001 	lui	at,0x1
 924:	34211e60 	ori	at,at,0x1e60
 928:	8fa6002c 	lw	a2,44(sp)
 92c:	0c000000 	jal	0 <func_80A68660>
 930:	00812821 	addu	a1,a0,at
 934:	8fbf0024 	lw	ra,36(sp)
 938:	8fb00020 	lw	s0,32(sp)
 93c:	27bd0038 	addiu	sp,sp,56
 940:	03e00008 	jr	ra
 944:	00000000 	nop

00000948 <func_80A68FA8>:
 948:	27bdffa8 	addiu	sp,sp,-88
 94c:	afbf002c 	sw	ra,44(sp)
 950:	afb50028 	sw	s5,40(sp)
 954:	afb40024 	sw	s4,36(sp)
 958:	afb30020 	sw	s3,32(sp)
 95c:	afb2001c 	sw	s2,28(sp)
 960:	afb10018 	sw	s1,24(sp)
 964:	afb00014 	sw	s0,20(sp)
 968:	afa5005c 	sw	a1,92(sp)
 96c:	8c8e0260 	lw	t6,608(a0)
 970:	00808825 	move	s1,a0
 974:	00c09825 	move	s3,a2
 978:	19c00047 	blez	t6,a98 <func_80A68FA8+0x150>
 97c:	00009025 	move	s2,zero
 980:	00008025 	move	s0,zero
 984:	27b50040 	addiu	s5,sp,64
 988:	27b4004c 	addiu	s4,sp,76
 98c:	8e2f0264 	lw	t7,612(s1)
 990:	02602025 	move	a0,s3
 994:	02803025 	move	a2,s4
 998:	01f0c021 	addu	t8,t7,s0
 99c:	87190028 	lh	t9,40(t8)
 9a0:	02a03825 	move	a3,s5
 9a4:	44992000 	mtc1	t9,$f4
 9a8:	00000000 	nop
 9ac:	468021a0 	cvt.s.w	$f6,$f4
 9b0:	e7a6004c 	swc1	$f6,76(sp)
 9b4:	8e280264 	lw	t0,612(s1)
 9b8:	01104821 	addu	t1,t0,s0
 9bc:	852a002a 	lh	t2,42(t1)
 9c0:	448a4000 	mtc1	t2,$f8
 9c4:	00000000 	nop
 9c8:	468042a0 	cvt.s.w	$f10,$f8
 9cc:	e7aa0050 	swc1	$f10,80(sp)
 9d0:	8e2b0264 	lw	t3,612(s1)
 9d4:	01706021 	addu	t4,t3,s0
 9d8:	858d002c 	lh	t5,44(t4)
 9dc:	448d8000 	mtc1	t5,$f16
 9e0:	00000000 	nop
 9e4:	468084a0 	cvt.s.w	$f18,$f16
 9e8:	e7b20054 	swc1	$f18,84(sp)
 9ec:	8e2e0264 	lw	t6,612(s1)
 9f0:	01d07821 	addu	t7,t6,s0
 9f4:	0c000000 	jal	0 <func_80A68660>
 9f8:	91e5003c 	lbu	a1,60(t7)
 9fc:	c7a40040 	lwc1	$f4,64(sp)
 a00:	8e280264 	lw	t0,612(s1)
 a04:	26520001 	addiu	s2,s2,1
 a08:	4600218d 	trunc.w.s	$f6,$f4
 a0c:	01104821 	addu	t1,t0,s0
 a10:	44193000 	mfc1	t9,$f6
 a14:	00000000 	nop
 a18:	a5390030 	sh	t9,48(t1)
 a1c:	c7a80044 	lwc1	$f8,68(sp)
 a20:	8e2c0264 	lw	t4,612(s1)
 a24:	4600428d 	trunc.w.s	$f10,$f8
 a28:	01906821 	addu	t5,t4,s0
 a2c:	440b5000 	mfc1	t3,$f10
 a30:	00000000 	nop
 a34:	a5ab0032 	sh	t3,50(t5)
 a38:	c7b00048 	lwc1	$f16,72(sp)
 a3c:	8e380264 	lw	t8,612(s1)
 a40:	4600848d 	trunc.w.s	$f18,$f16
 a44:	03104021 	addu	t0,t8,s0
 a48:	440f9000 	mfc1	t7,$f18
 a4c:	00000000 	nop
 a50:	a50f0034 	sh	t7,52(t0)
 a54:	8e390264 	lw	t9,612(s1)
 a58:	03301021 	addu	v0,t9,s0
 a5c:	8449002e 	lh	t1,46(v0)
 a60:	c4440038 	lwc1	$f4,56(v0)
 a64:	26100040 	addiu	s0,s0,64
 a68:	44893000 	mtc1	t1,$f6
 a6c:	00000000 	nop
 a70:	46803220 	cvt.s.w	$f8,$f6
 a74:	46082282 	mul.s	$f10,$f4,$f8
 a78:	4600540d 	trunc.w.s	$f16,$f10
 a7c:	440c8000 	mfc1	t4,$f16
 a80:	00000000 	nop
 a84:	a44c0036 	sh	t4,54(v0)
 a88:	8e2b0260 	lw	t3,608(s1)
 a8c:	024b082a 	slt	at,s2,t3
 a90:	5420ffbf 	bnezl	at,990 <func_80A68FA8+0x48>
 a94:	8e2f0264 	lw	t7,612(s1)
 a98:	8fa4005c 	lw	a0,92(sp)
 a9c:	3c010001 	lui	at,0x1
 aa0:	34211e60 	ori	at,at,0x1e60
 aa4:	26260248 	addiu	a2,s1,584
 aa8:	0c000000 	jal	0 <func_80A68660>
 aac:	00812821 	addu	a1,a0,at
 ab0:	8fbf002c 	lw	ra,44(sp)
 ab4:	8fb00014 	lw	s0,20(sp)
 ab8:	8fb10018 	lw	s1,24(sp)
 abc:	8fb2001c 	lw	s2,28(sp)
 ac0:	8fb30020 	lw	s3,32(sp)
 ac4:	8fb40024 	lw	s4,36(sp)
 ac8:	8fb50028 	lw	s5,40(sp)
 acc:	03e00008 	jr	ra
 ad0:	27bd0058 	addiu	sp,sp,88

00000ad4 <EnHorseGanon_Draw>:
 ad4:	27bdffe0 	addiu	sp,sp,-32
 ad8:	afbf001c 	sw	ra,28(sp)
 adc:	afa40020 	sw	a0,32(sp)
 ae0:	0c000000 	jal	0 <func_80A68660>
 ae4:	afa50024 	sw	a1,36(sp)
 ae8:	8fae0024 	lw	t6,36(sp)
 aec:	0c000000 	jal	0 <func_80A68660>
 af0:	8dc40000 	lw	a0,0(t6)
 af4:	8fa40020 	lw	a0,32(sp)
 af8:	3c070000 	lui	a3,0x0
 afc:	240f0001 	li	t7,1
 b00:	afaf0010 	sw	t7,16(sp)
 b04:	24e70000 	addiu	a3,a3,0
 b08:	8fa50024 	lw	a1,36(sp)
 b0c:	0c000000 	jal	0 <func_80A68660>
 b10:	24860154 	addiu	a2,a0,340
 b14:	8fbf001c 	lw	ra,28(sp)
 b18:	27bd0020 	addiu	sp,sp,32
 b1c:	03e00008 	jr	ra
 b20:	00000000 	nop
	...
