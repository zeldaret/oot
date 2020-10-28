
build/src/overlays/actors/ovl_En_Wood02/z_en_wood02.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B3AF70>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afb00018 	sw	s0,24(sp)
   8:	3c010001 	lui	at,0x1
   c:	00808025 	move	s0,a0
  10:	34211d60 	ori	at,at,0x1d60
  14:	afa50024 	sw	a1,36(sp)
  18:	00a12021 	addu	a0,a1,at
  1c:	afbf001c 	sw	ra,28(sp)
  20:	afa60028 	sw	a2,40(sp)
  24:	00c02825 	move	a1,a2
  28:	260600e4 	addiu	a2,s0,228
  2c:	0c000000 	jal	0 <func_80B3AF70>
  30:	260700f0 	addiu	a3,s0,240
  34:	c60200f0 	lwc1	$f2,240(s0)
  38:	44802000 	mtc1	zero,$f4
  3c:	3c013f80 	lui	at,0x3f80
  40:	8fbf001c 	lw	ra,28(sp)
  44:	46022032 	c.eq.s	$f4,$f2
  48:	00001025 	move	v0,zero
  4c:	45020008 	bc1fl	70 <func_80B3AF70+0x70>
  50:	44817000 	mtc1	at,$f14
  54:	3c01447a 	lui	at,0x447a
  58:	44816000 	mtc1	at,$f12
  5c:	3c013f80 	lui	at,0x3f80
  60:	44817000 	mtc1	at,$f14
  64:	10000006 	b	80 <func_80B3AF70+0x80>
  68:	c60200f8 	lwc1	$f2,248(s0)
  6c:	44817000 	mtc1	at,$f14
  70:	00000000 	nop
  74:	46027003 	div.s	$f0,$f14,$f2
  78:	46000305 	abs.s	$f12,$f0
  7c:	c60200f8 	lwc1	$f2,248(s0)
  80:	c60000ec 	lwc1	$f0,236(s0)
  84:	46001187 	neg.s	$f6,$f2
  88:	4600303c 	c.lt.s	$f6,$f0
  8c:	00000000 	nop
  90:	45000021 	bc1f	118 <func_80B3AF70+0x118>
  94:	00000000 	nop
  98:	c60800f4 	lwc1	$f8,244(s0)
  9c:	46024280 	add.s	$f10,$f8,$f2
  a0:	460a003c 	c.lt.s	$f0,$f10
  a4:	00000000 	nop
  a8:	4500001b 	bc1f	118 <func_80B3AF70+0x118>
  ac:	00000000 	nop
  b0:	c60000e4 	lwc1	$f0,228(s0)
  b4:	46000005 	abs.s	$f0,$f0
  b8:	46020401 	sub.s	$f16,$f0,$f2
  bc:	460c8482 	mul.s	$f18,$f16,$f12
  c0:	460e903c 	c.lt.s	$f18,$f14
  c4:	00000000 	nop
  c8:	45000013 	bc1f	118 <func_80B3AF70+0x118>
  cc:	00000000 	nop
  d0:	c60000e8 	lwc1	$f0,232(s0)
  d4:	c60600fc 	lwc1	$f6,252(s0)
  d8:	3c01bf80 	lui	at,0xbf80
  dc:	44812000 	mtc1	at,$f4
  e0:	46060200 	add.s	$f8,$f0,$f6
  e4:	460c4282 	mul.s	$f10,$f8,$f12
  e8:	460a203c 	c.lt.s	$f4,$f10
  ec:	00000000 	nop
  f0:	45000009 	bc1f	118 <func_80B3AF70+0x118>
  f4:	00000000 	nop
  f8:	46020401 	sub.s	$f16,$f0,$f2
  fc:	460c8482 	mul.s	$f18,$f16,$f12
 100:	460e903c 	c.lt.s	$f18,$f14
 104:	00000000 	nop
 108:	45000003 	bc1f	118 <func_80B3AF70+0x118>
 10c:	00000000 	nop
 110:	10000001 	b	118 <func_80B3AF70+0x118>
 114:	24020001 	li	v0,1
 118:	8fb00018 	lw	s0,24(sp)
 11c:	03e00008 	jr	ra
 120:	27bd0020 	addiu	sp,sp,32

00000124 <func_80B3B094>:
 124:	27bdff70 	addiu	sp,sp,-144
 128:	afbe0058 	sw	s8,88(sp)
 12c:	afb70054 	sw	s7,84(sp)
 130:	afb60050 	sw	s6,80(sp)
 134:	afb30044 	sw	s3,68(sp)
 138:	afb20040 	sw	s2,64(sp)
 13c:	afb00038 	sw	s0,56(sp)
 140:	3c170000 	lui	s7,0x0
 144:	3c1e0000 	lui	s8,0x0
 148:	00808025 	move	s0,a0
 14c:	00a0b025 	move	s6,a1
 150:	afbf005c 	sw	ra,92(sp)
 154:	afb5004c 	sw	s5,76(sp)
 158:	afb40048 	sw	s4,72(sp)
 15c:	afb1003c 	sw	s1,60(sp)
 160:	27de0000 	addiu	s8,s8,0
 164:	26f70000 	addiu	s7,s7,0
 168:	24920004 	addiu	s2,a0,4
 16c:	24130004 	li	s3,4
 170:	924e014e 	lbu	t6,334(s2)
 174:	00008825 	move	s1,zero
 178:	0013c040 	sll	t8,s3,0x1
 17c:	31cf007f 	andi	t7,t6,0x7f
 180:	15e0005f 	bnez	t7,300 <func_80B3B094+0x1dc>
 184:	3c190000 	lui	t9,0x0
 188:	860a001c 	lh	t2,28(s0)
 18c:	3c090000 	lui	t1,0x0
 190:	25290000 	addiu	t1,t1,0
 194:	27390000 	addiu	t9,t9,0
 198:	00134080 	sll	t0,s3,0x2
 19c:	2401000f 	li	at,15
 1a0:	0109a821 	addu	s5,t0,t1
 1a4:	15410002 	bne	t2,at,1b0 <func_80B3B094+0x8c>
 1a8:	0319a021 	addu	s4,t8,t9
 1ac:	24114000 	li	s1,16384
 1b0:	868b0000 	lh	t3,0(s4)
 1b4:	860c0032 	lh	t4,50(s0)
 1b8:	016c6821 	addu	t5,t3,t4
 1bc:	01b12021 	addu	a0,t5,s1
 1c0:	00042400 	sll	a0,a0,0x10
 1c4:	0c000000 	jal	0 <func_80B3AF70>
 1c8:	00042403 	sra	a0,a0,0x10
 1cc:	e6e00000 	swc1	$f0,0(s7)
 1d0:	860f0032 	lh	t7,50(s0)
 1d4:	868e0000 	lh	t6,0(s4)
 1d8:	01cfc021 	addu	t8,t6,t7
 1dc:	03112021 	addu	a0,t8,s1
 1e0:	00042400 	sll	a0,a0,0x10
 1e4:	0c000000 	jal	0 <func_80B3AF70>
 1e8:	00042403 	sra	a0,a0,0x10
 1ec:	e7c00000 	swc1	$f0,0(s8)
 1f0:	c7c40000 	lwc1	$f4,0(s8)
 1f4:	c6a20000 	lwc1	$f2,0(s5)
 1f8:	c6080008 	lwc1	$f8,8(s0)
 1fc:	c6f20000 	lwc1	$f18,0(s7)
 200:	46041182 	mul.s	$f6,$f2,$f4
 204:	02002025 	move	a0,s0
 208:	02c02825 	move	a1,s6
 20c:	46121102 	mul.s	$f4,$f2,$f18
 210:	27a6007c 	addiu	a2,sp,124
 214:	46083280 	add.s	$f10,$f6,$f8
 218:	e7aa007c 	swc1	$f10,124(sp)
 21c:	c610000c 	lwc1	$f16,12(s0)
 220:	e7b00080 	swc1	$f16,128(sp)
 224:	c6060010 	lwc1	$f6,16(s0)
 228:	46062200 	add.s	$f8,$f4,$f6
 22c:	0c000000 	jal	0 <func_80B3AF70>
 230:	e7a80084 	swc1	$f8,132(sp)
 234:	10400032 	beqz	v0,300 <func_80B3B094+0x1dc>
 238:	02002825 	move	a1,s0
 23c:	9259014e 	lbu	t9,334(s2)
 240:	26c41c24 	addiu	a0,s6,7204
 244:	02c03025 	move	a2,s6
 248:	33280080 	andi	t0,t9,0x80
 24c:	11000007 	beqz	t0,26c <func_80B3B094+0x148>
 250:	24070077 	li	a3,119
 254:	8602001c 	lh	v0,28(s0)
 258:	24420001 	addiu	v0,v0,1
 25c:	3442ff00 	ori	v0,v0,0xff00
 260:	00021400 	sll	v0,v0,0x10
 264:	10000009 	b	28c <func_80B3B094+0x168>
 268:	00021403 	sra	v0,v0,0x10
 26c:	92090154 	lbu	t1,340(s0)
 270:	860c001c 	lh	t4,28(s0)
 274:	312a00f0 	andi	t2,t1,0xf0
 278:	000a5900 	sll	t3,t2,0x4
 27c:	258d0001 	addiu	t5,t4,1
 280:	016d1025 	or	v0,t3,t5
 284:	00021400 	sll	v0,v0,0x10
 288:	00021403 	sra	v0,v0,0x10
 28c:	c7aa007c 	lwc1	$f10,124(sp)
 290:	c7b00080 	lwc1	$f16,128(sp)
 294:	c7b20084 	lwc1	$f18,132(sp)
 298:	e7aa0010 	swc1	$f10,16(sp)
 29c:	e7b00014 	swc1	$f16,20(sp)
 2a0:	e7b20018 	swc1	$f18,24(sp)
 2a4:	860e0030 	lh	t6,48(s0)
 2a8:	868f0000 	lh	t7,0(s4)
 2ac:	afa20028 	sw	v0,40(sp)
 2b0:	afa00024 	sw	zero,36(sp)
 2b4:	afae001c 	sw	t6,28(sp)
 2b8:	0c000000 	jal	0 <func_80B3AF70>
 2bc:	afaf0020 	sw	t7,32(sp)
 2c0:	5040000d 	beqzl	v0,2f8 <func_80B3B094+0x1d4>
 2c4:	924a014e 	lbu	t2,334(s2)
 2c8:	a053014e 	sb	s3,334(v0)
 2cc:	9258014e 	lbu	t8,334(s2)
 2d0:	37190001 	ori	t9,t8,0x1
 2d4:	a259014e 	sb	t9,334(s2)
 2d8:	8e0900e4 	lw	t1,228(s0)
 2dc:	ac4900e4 	sw	t1,228(v0)
 2e0:	8e0800e8 	lw	t0,232(s0)
 2e4:	ac4800e8 	sw	t0,232(v0)
 2e8:	8e0900ec 	lw	t1,236(s0)
 2ec:	10000004 	b	300 <func_80B3B094+0x1dc>
 2f0:	ac4900ec 	sw	t1,236(v0)
 2f4:	924a014e 	lbu	t2,334(s2)
 2f8:	314c0080 	andi	t4,t2,0x80
 2fc:	a24c014e 	sb	t4,334(s2)
 300:	2673ffff 	addiu	s3,s3,-1
 304:	0661ff9a 	bgez	s3,170 <func_80B3B094+0x4c>
 308:	2652ffff 	addiu	s2,s2,-1
 30c:	8fbf005c 	lw	ra,92(sp)
 310:	8fb00038 	lw	s0,56(sp)
 314:	8fb1003c 	lw	s1,60(sp)
 318:	8fb20040 	lw	s2,64(sp)
 31c:	8fb30044 	lw	s3,68(sp)
 320:	8fb40048 	lw	s4,72(sp)
 324:	8fb5004c 	lw	s5,76(sp)
 328:	8fb60050 	lw	s6,80(sp)
 32c:	8fb70054 	lw	s7,84(sp)
 330:	8fbe0058 	lw	s8,88(sp)
 334:	03e00008 	jr	ra
 338:	27bd0090 	addiu	sp,sp,144

0000033c <EnWood02_Init>:
 33c:	27bdffb0 	addiu	sp,sp,-80
 340:	3c013f80 	lui	at,0x3f80
 344:	44812000 	mtc1	at,$f4
 348:	afbf0024 	sw	ra,36(sp)
 34c:	afb00020 	sw	s0,32(sp)
 350:	afa50054 	sw	a1,84(sp)
 354:	e7a40048 	swc1	$f4,72(sp)
 358:	8482001c 	lh	v0,28(a0)
 35c:	84830018 	lh	v1,24(a0)
 360:	00808025 	move	s0,a0
 364:	00027203 	sra	t6,v0,0x8
 368:	31cf00ff 	andi	t7,t6,0xff
 36c:	00004025 	move	t0,zero
 370:	1060000c 	beqz	v1,3a4 <EnWood02_Init+0x68>
 374:	a48f014c 	sh	t7,332(a0)
 378:	8499014c 	lh	t9,332(a0)
 37c:	a48000b8 	sh	zero,184(a0)
 380:	848b00b8 	lh	t3,184(a0)
 384:	0003c200 	sll	t8,v1,0x8
 388:	240affff 	li	t2,-1
 38c:	03194825 	or	t1,t8,t9
 390:	a4890018 	sh	t1,24(a0)
 394:	a48a014c 	sh	t2,332(a0)
 398:	8482001c 	lh	v0,28(a0)
 39c:	10000008 	b	3c0 <EnWood02_Init+0x84>
 3a0:	a48b0034 	sh	t3,52(a0)
 3a4:	860c014c 	lh	t4,332(s0)
 3a8:	240effff 	li	t6,-1
 3ac:	318d0080 	andi	t5,t4,0x80
 3b0:	51a00004 	beqzl	t5,3c4 <EnWood02_Init+0x88>
 3b4:	304f00ff 	andi	t7,v0,0xff
 3b8:	a60e014c 	sh	t6,332(s0)
 3bc:	8602001c 	lh	v0,28(s0)
 3c0:	304f00ff 	andi	t7,v0,0xff
 3c4:	a60f001c 	sh	t7,28(s0)
 3c8:	3c050000 	lui	a1,0x0
 3cc:	24a50000 	addiu	a1,a1,0
 3d0:	a7a8004e 	sh	t0,78(sp)
 3d4:	0c000000 	jal	0 <func_80B3AF70>
 3d8:	02002025 	move	a0,s0
 3dc:	8602001c 	lh	v0,28(s0)
 3e0:	87a8004e 	lh	t0,78(sp)
 3e4:	2841000b 	slti	at,v0,11
 3e8:	5020000f 	beqzl	at,428 <EnWood02_Init+0xec>
 3ec:	2c410019 	sltiu	at,v0,25
 3f0:	26050158 	addiu	a1,s0,344
 3f4:	afa5002c 	sw	a1,44(sp)
 3f8:	8fa40054 	lw	a0,84(sp)
 3fc:	0c000000 	jal	0 <func_80B3AF70>
 400:	a7a8004e 	sh	t0,78(sp)
 404:	3c070000 	lui	a3,0x0
 408:	8fa5002c 	lw	a1,44(sp)
 40c:	24e70000 	addiu	a3,a3,0
 410:	8fa40054 	lw	a0,84(sp)
 414:	0c000000 	jal	0 <func_80B3AF70>
 418:	02003025 	move	a2,s0
 41c:	87a8004e 	lh	t0,78(sp)
 420:	8602001c 	lh	v0,28(s0)
 424:	2c410019 	sltiu	at,v0,25
 428:	1020004d 	beqz	at,560 <L80B3B470+0x60>
 42c:	0002c080 	sll	t8,v0,0x2
 430:	3c010000 	lui	at,0x0
 434:	00380821 	addu	at,at,t8
 438:	8c380000 	lw	t8,0(at)
 43c:	03000008 	jr	t8
 440:	00000000 	nop

00000444 <L80B3B3B4>:
 444:	24080001 	li	t0,1

00000448 <L80B3B3B8>:
 448:	25080001 	addiu	t0,t0,1
 44c:	00084400 	sll	t0,t0,0x10
 450:	00084403 	sra	t0,t0,0x10

00000454 <L80B3B3C4>:
 454:	3c013fc0 	lui	at,0x3fc0
 458:	44813000 	mtc1	at,$f6
 45c:	3c01457a 	lui	at,0x457a
 460:	44814000 	mtc1	at,$f8
 464:	3c0144fa 	lui	at,0x44fa
 468:	44815000 	mtc1	at,$f10
 46c:	3c014516 	lui	at,0x4516
 470:	e7a60048 	swc1	$f6,72(sp)
 474:	44818000 	mtc1	at,$f16
 478:	8602001c 	lh	v0,28(s0)
 47c:	e60800f4 	swc1	$f8,244(s0)
 480:	e60a00f8 	swc1	$f10,248(s0)
 484:	10000036 	b	560 <L80B3B470+0x60>
 488:	e61000fc 	swc1	$f16,252(s0)

0000048c <L80B3B3FC>:
 48c:	24080001 	li	t0,1

00000490 <L80B3B400>:
 490:	25080001 	addiu	t0,t0,1
 494:	00084400 	sll	t0,t0,0x10
 498:	00084403 	sra	t0,t0,0x10

0000049c <L80B3B40C>:
 49c:	3c01457a 	lui	at,0x457a
 4a0:	44819000 	mtc1	at,$f18
 4a4:	3c014448 	lui	at,0x4448
 4a8:	44812000 	mtc1	at,$f4
 4ac:	3c0144e1 	lui	at,0x44e1
 4b0:	44813000 	mtc1	at,$f6
 4b4:	8602001c 	lh	v0,28(s0)
 4b8:	e61200f4 	swc1	$f18,244(s0)
 4bc:	e60400f8 	swc1	$f4,248(s0)
 4c0:	10000027 	b	560 <L80B3B470+0x60>
 4c4:	e60600fc 	swc1	$f6,252(s0)

000004c8 <L80B3B438>:
 4c8:	3c010000 	lui	at,0x0
 4cc:	c4280000 	lwc1	$f8,0(at)
 4d0:	3c01457a 	lui	at,0x457a
 4d4:	44815000 	mtc1	at,$f10
 4d8:	3c0143c8 	lui	at,0x43c8
 4dc:	44818000 	mtc1	at,$f16
 4e0:	3c01447a 	lui	at,0x447a
 4e4:	e7a80048 	swc1	$f8,72(sp)
 4e8:	44819000 	mtc1	at,$f18
 4ec:	8602001c 	lh	v0,28(s0)
 4f0:	e60a00f4 	swc1	$f10,244(s0)
 4f4:	e61000f8 	swc1	$f16,248(s0)
 4f8:	10000019 	b	560 <L80B3B470+0x60>
 4fc:	e61200fc 	swc1	$f18,252(s0)

00000500 <L80B3B470>:
 500:	2419004b 	li	t9,75
 504:	a219014e 	sb	t9,334(s0)
 508:	3c010000 	lui	at,0x0
 50c:	c4240000 	lwc1	$f4,0(at)
 510:	3c0140c0 	lui	at,0x40c0
 514:	44816000 	mtc1	at,$f12
 518:	a7a8004e 	sh	t0,78(sp)
 51c:	0c000000 	jal	0 <func_80B3AF70>
 520:	e7a40048 	swc1	$f4,72(sp)
 524:	3c0140c0 	lui	at,0x40c0
 528:	44816000 	mtc1	at,$f12
 52c:	0c000000 	jal	0 <func_80B3AF70>
 530:	e600005c 	swc1	$f0,92(s0)
 534:	0c000000 	jal	0 <func_80B3AF70>
 538:	e6000064 	swc1	$f0,100(s0)
 53c:	3c013fa0 	lui	at,0x3fa0
 540:	44813000 	mtc1	at,$f6
 544:	3c010000 	lui	at,0x0
 548:	c42a0000 	lwc1	$f10,0(at)
 54c:	46060202 	mul.s	$f8,$f0,$f6
 550:	87a8004e 	lh	t0,78(sp)
 554:	8602001c 	lh	v0,28(s0)
 558:	460a4400 	add.s	$f16,$f8,$f10
 55c:	e6100060 	swc1	$f16,96(s0)
 560:	28410005 	slti	at,v0,5
 564:	10200003 	beqz	at,574 <L80B3B470+0x74>
 568:	02002025 	move	a0,s0
 56c:	10000017 	b	5cc <L80B3B470+0xcc>
 570:	a2000154 	sb	zero,340(s0)
 574:	2841000a 	slti	at,v0,10
 578:	10200003 	beqz	at,588 <L80B3B470+0x88>
 57c:	24090001 	li	t1,1
 580:	10000012 	b	5cc <L80B3B470+0xcc>
 584:	a2090154 	sb	t1,340(s0)
 588:	2841000b 	slti	at,v0,11
 58c:	10200003 	beqz	at,59c <L80B3B470+0x9c>
 590:	240a0002 	li	t2,2
 594:	1000000d 	b	5cc <L80B3B470+0xcc>
 598:	a20a0154 	sb	t2,340(s0)
 59c:	28410011 	slti	at,v0,17
 5a0:	10200003 	beqz	at,5b0 <L80B3B470+0xb0>
 5a4:	240b0003 	li	t3,3
 5a8:	10000008 	b	5cc <L80B3B470+0xcc>
 5ac:	a20b0154 	sb	t3,340(s0)
 5b0:	28410018 	slti	at,v0,24
 5b4:	10200004 	beqz	at,5c8 <L80B3B470+0xc8>
 5b8:	240d0005 	li	t5,5
 5bc:	240c0004 	li	t4,4
 5c0:	10000002 	b	5cc <L80B3B470+0xcc>
 5c4:	a20c0154 	sb	t4,340(s0)
 5c8:	a20d0154 	sb	t5,340(s0)
 5cc:	8fa50048 	lw	a1,72(sp)
 5d0:	0c000000 	jal	0 <func_80B3AF70>
 5d4:	a7a8004e 	sh	t0,78(sp)
 5d8:	87a8004e 	lh	t0,78(sp)
 5dc:	11000057 	beqz	t0,73c <L80B3B470+0x23c>
 5e0:	a2080153 	sb	t0,339(s0)
 5e4:	860e001c 	lh	t6,28(s0)
 5e8:	2401000f 	li	at,15
 5ec:	00001025 	move	v0,zero
 5f0:	55c10003 	bnel	t6,at,600 <L80B3B470+0x100>
 5f4:	24010002 	li	at,2
 5f8:	24024000 	li	v0,16384
 5fc:	24010002 	li	at,2
 600:	55010032 	bnel	t0,at,6cc <L80B3B470+0x1cc>
 604:	8e0f0004 	lw	t7,4(s0)
 608:	8618014c 	lh	t8,332(s0)
 60c:	920f0154 	lbu	t7,340(s0)
 610:	02002025 	move	a0,s0
 614:	0018c900 	sll	t9,t8,0x4
 618:	01f94825 	or	t1,t7,t9
 61c:	a2090154 	sb	t1,340(s0)
 620:	a7a20032 	sh	v0,50(sp)
 624:	0c000000 	jal	0 <func_80B3AF70>
 628:	8fa50054 	lw	a1,84(sp)
 62c:	3c0a0000 	lui	t2,0x0
 630:	854a0000 	lh	t2,0(t2)
 634:	860b0032 	lh	t3,50(s0)
 638:	87a20032 	lh	v0,50(sp)
 63c:	014b6021 	addu	t4,t2,t3
 640:	01822021 	addu	a0,t4,v0
 644:	00042400 	sll	a0,a0,0x10
 648:	0c000000 	jal	0 <func_80B3AF70>
 64c:	00042403 	sra	a0,a0,0x10
 650:	3c010000 	lui	at,0x0
 654:	e4200000 	swc1	$f0,0(at)
 658:	3c0d0000 	lui	t5,0x0
 65c:	85ad0000 	lh	t5,0(t5)
 660:	860e0032 	lh	t6,50(s0)
 664:	87a20032 	lh	v0,50(sp)
 668:	01aec021 	addu	t8,t5,t6
 66c:	03022021 	addu	a0,t8,v0
 670:	00042400 	sll	a0,a0,0x10
 674:	0c000000 	jal	0 <func_80B3AF70>
 678:	00042403 	sra	a0,a0,0x10
 67c:	3c020000 	lui	v0,0x0
 680:	24420000 	addiu	v0,v0,0
 684:	3c030000 	lui	v1,0x0
 688:	24630000 	addiu	v1,v1,0
 68c:	e4400000 	swc1	$f0,0(v0)
 690:	c4520000 	lwc1	$f18,0(v0)
 694:	c4640014 	lwc1	$f4,20(v1)
 698:	c6080024 	lwc1	$f8,36(s0)
 69c:	3c010000 	lui	at,0x0
 6a0:	46049182 	mul.s	$f6,$f18,$f4
 6a4:	46064280 	add.s	$f10,$f8,$f6
 6a8:	c608002c 	lwc1	$f8,44(s0)
 6ac:	e60a0024 	swc1	$f10,36(s0)
 6b0:	c4720014 	lwc1	$f18,20(v1)
 6b4:	c4300000 	lwc1	$f16,0(at)
 6b8:	46128102 	mul.s	$f4,$f16,$f18
 6bc:	46044180 	add.s	$f6,$f8,$f4
 6c0:	10000004 	b	6d4 <L80B3B470+0x1d4>
 6c4:	e606002c 	swc1	$f6,44(s0)
 6c8:	8e0f0004 	lw	t7,4(s0)
 6cc:	35f90010 	ori	t9,t7,0x10
 6d0:	ae190004 	sw	t9,4(s0)
 6d4:	3c014348 	lui	at,0x4348
 6d8:	44818000 	mtc1	at,$f16
 6dc:	c60a0028 	lwc1	$f10,40(s0)
 6e0:	26090024 	addiu	t1,s0,36
 6e4:	27a5003c 	addiu	a1,sp,60
 6e8:	46105480 	add.s	$f18,$f10,$f16
 6ec:	27a60038 	addiu	a2,sp,56
 6f0:	02003825 	move	a3,s0
 6f4:	e6120028 	swc1	$f18,40(s0)
 6f8:	8fa40054 	lw	a0,84(sp)
 6fc:	afa90010 	sw	t1,16(sp)
 700:	0c000000 	jal	0 <func_80B3AF70>
 704:	248407c0 	addiu	a0,a0,1984
 708:	3c01c6fa 	lui	at,0xc6fa
 70c:	44814000 	mtc1	at,$f8
 710:	00000000 	nop
 714:	4600403c 	c.lt.s	$f8,$f0
 718:	00000000 	nop
 71c:	45000003 	bc1f	72c <L80B3B470+0x22c>
 720:	00000000 	nop
 724:	10000005 	b	73c <L80B3B470+0x23c>
 728:	e6000028 	swc1	$f0,40(s0)
 72c:	0c000000 	jal	0 <func_80B3AF70>
 730:	02002025 	move	a0,s0
 734:	1000000c 	b	768 <L80B3B470+0x268>
 738:	8fbf0024 	lw	ra,36(sp)
 73c:	44800000 	mtc1	zero,$f0
 740:	260400b4 	addiu	a0,s0,180
 744:	00003025 	move	a2,zero
 748:	44050000 	mfc1	a1,$f0
 74c:	44070000 	mfc1	a3,$f0
 750:	0c000000 	jal	0 <func_80B3AF70>
 754:	00000000 	nop
 758:	240a00ff 	li	t2,255
 75c:	a6000016 	sh	zero,22(s0)
 760:	a20a00ae 	sb	t2,174(s0)
 764:	8fbf0024 	lw	ra,36(sp)
 768:	8fb00020 	lw	s0,32(sp)
 76c:	27bd0050 	addiu	sp,sp,80
 770:	03e00008 	jr	ra
 774:	00000000 	nop

00000778 <EnWood02_Destroy>:
 778:	27bdffe8 	addiu	sp,sp,-24
 77c:	afbf0014 	sw	ra,20(sp)
 780:	848e001c 	lh	t6,28(a0)
 784:	00803025 	move	a2,a0
 788:	00a02025 	move	a0,a1
 78c:	29c1000b 	slti	at,t6,11
 790:	50200004 	beqzl	at,7a4 <EnWood02_Destroy+0x2c>
 794:	8fbf0014 	lw	ra,20(sp)
 798:	0c000000 	jal	0 <func_80B3AF70>
 79c:	24c50158 	addiu	a1,a2,344
 7a0:	8fbf0014 	lw	ra,20(sp)
 7a4:	27bd0018 	addiu	sp,sp,24
 7a8:	03e00008 	jr	ra
 7ac:	00000000 	nop

000007b0 <EnWood02_Update>:
 7b0:	27bdff88 	addiu	sp,sp,-120
 7b4:	afbf003c 	sw	ra,60(sp)
 7b8:	afb20038 	sw	s2,56(sp)
 7bc:	afb10034 	sw	s1,52(sp)
 7c0:	afb00030 	sw	s0,48(sp)
 7c4:	90820153 	lbu	v0,339(a0)
 7c8:	24010001 	li	at,1
 7cc:	00808825 	move	s1,a0
 7d0:	14410013 	bne	v0,at,820 <EnWood02_Update+0x70>
 7d4:	00a09025 	move	s2,a1
 7d8:	8c830118 	lw	v1,280(a0)
 7dc:	50600011 	beqzl	v1,824 <EnWood02_Update+0x74>
 7e0:	24010002 	li	at,2
 7e4:	8c8e0004 	lw	t6,4(a0)
 7e8:	31cf0040 	andi	t7,t6,0x40
 7ec:	55e00012 	bnezl	t7,838 <EnWood02_Update+0x88>
 7f0:	8622001c 	lh	v0,28(s1)
 7f4:	8498014c 	lh	t8,332(a0)
 7f8:	9085014e 	lbu	a1,334(a0)
 7fc:	00001025 	move	v0,zero
 800:	07010002 	bgez	t8,80c <EnWood02_Update+0x5c>
 804:	0065c821 	addu	t9,v1,a1
 808:	24020080 	li	v0,128
 80c:	a322014e 	sb	v0,334(t9)
 810:	0c000000 	jal	0 <func_80B3AF70>
 814:	02202025 	move	a0,s1
 818:	1000011d 	b	c90 <EnWood02_Update+0x4e0>
 81c:	8fbf003c 	lw	ra,60(sp)
 820:	24010002 	li	at,2
 824:	14410003 	bne	v0,at,834 <EnWood02_Update+0x84>
 828:	02202025 	move	a0,s1
 82c:	0c000000 	jal	0 <func_80B3AF70>
 830:	02402825 	move	a1,s2
 834:	8622001c 	lh	v0,28(s1)
 838:	2841000b 	slti	at,v0,11
 83c:	50200083 	beqzl	at,a4c <EnWood02_Update+0x29c>
 840:	28410017 	slti	at,v0,23
 844:	92220169 	lbu	v0,361(s1)
 848:	02202025 	move	a0,s1
 84c:	24051837 	li	a1,6199
 850:	30480002 	andi	t0,v0,0x2
 854:	11000003 	beqz	t0,864 <EnWood02_Update+0xb4>
 858:	3049fffd 	andi	t1,v0,0xfffd
 85c:	0c000000 	jal	0 <func_80B3AF70>
 860:	a2290169 	sb	t1,361(s1)
 864:	862a0016 	lh	t2,22(s1)
 868:	51400060 	beqzl	t2,9ec <EnWood02_Update+0x23c>
 86c:	3c014416 	lui	at,0x4416
 870:	8e2c0024 	lw	t4,36(s1)
 874:	27a60058 	addiu	a2,sp,88
 878:	3c014348 	lui	at,0x4348
 87c:	accc0000 	sw	t4,0(a2)
 880:	8e2b0028 	lw	t3,40(s1)
 884:	44813000 	mtc1	at,$f6
 888:	accb0004 	sw	t3,4(a2)
 88c:	8e2c002c 	lw	t4,44(s1)
 890:	accc0008 	sw	t4,8(a2)
 894:	c7a4005c 	lwc1	$f4,92(sp)
 898:	46062200 	add.s	$f8,$f4,$f6
 89c:	e7a8005c 	swc1	$f8,92(sp)
 8a0:	8630014c 	lh	s0,332(s1)
 8a4:	0600000a 	bltz	s0,8d0 <EnWood02_Update+0x120>
 8a8:	2a010064 	slti	at,s0,100
 8ac:	10200008 	beqz	at,8d0 <EnWood02_Update+0x120>
 8b0:	02402025 	move	a0,s2
 8b4:	02003825 	move	a3,s0
 8b8:	00073d00 	sll	a3,a3,0x14
 8bc:	00073c03 	sra	a3,a3,0x10
 8c0:	0c000000 	jal	0 <func_80B3AF70>
 8c4:	02202825 	move	a1,s1
 8c8:	10000019 	b	930 <EnWood02_Update+0x180>
 8cc:	8630014c 	lh	s0,332(s1)
 8d0:	86220018 	lh	v0,24(s1)
 8d4:	10400016 	beqz	v0,930 <EnWood02_Update+0x180>
 8d8:	304d1fff 	andi	t5,v0,0x1fff
 8dc:	a62d0018 	sh	t5,24(s1)
 8e0:	862e0018 	lh	t6,24(s1)
 8e4:	26441c24 	addiu	a0,s2,7204
 8e8:	02402825 	move	a1,s2
 8ec:	35cfe000 	ori	t7,t6,0xe000
 8f0:	a62f0018 	sh	t7,24(s1)
 8f4:	c7b00060 	lwc1	$f16,96(sp)
 8f8:	c7aa005c 	lwc1	$f10,92(sp)
 8fc:	afa00018 	sw	zero,24(sp)
 900:	e7b00014 	swc1	$f16,20(sp)
 904:	e7aa0010 	swc1	$f10,16(sp)
 908:	86380032 	lh	t8,50(s1)
 90c:	afa00020 	sw	zero,32(sp)
 910:	8fa70058 	lw	a3,88(sp)
 914:	afb8001c 	sw	t8,28(sp)
 918:	86390018 	lh	t9,24(s1)
 91c:	24060095 	li	a2,149
 920:	0c000000 	jal	0 <func_80B3AF70>
 924:	afb90024 	sw	t9,36(sp)
 928:	a6200018 	sh	zero,24(s1)
 92c:	8630014c 	lh	s0,332(s1)
 930:	2a01ffff 	slti	at,s0,-1
 934:	14200029 	bnez	at,9dc <EnWood02_Update+0x22c>
 938:	24030017 	li	v1,23
 93c:	8622001c 	lh	v0,28(s1)
 940:	26481c24 	addiu	t0,s2,7204
 944:	24010006 	li	at,6
 948:	10410004 	beq	v0,at,95c <EnWood02_Update+0x1ac>
 94c:	afa80040 	sw	t0,64(sp)
 950:	24010007 	li	at,7
 954:	54410003 	bnel	v0,at,964 <EnWood02_Update+0x1b4>
 958:	02202025 	move	a0,s1
 95c:	24030018 	li	v1,24
 960:	02202025 	move	a0,s1
 964:	24052877 	li	a1,10359
 968:	0c000000 	jal	0 <func_80B3AF70>
 96c:	afa30050 	sw	v1,80(sp)
 970:	8fa30050 	lw	v1,80(sp)
 974:	24100003 	li	s0,3
 978:	00034c00 	sll	t1,v1,0x10
 97c:	00095403 	sra	t2,t1,0x10
 980:	afaa0044 	sw	t2,68(sp)
 984:	3c010000 	lui	at,0x0
 988:	0c000000 	jal	0 <func_80B3AF70>
 98c:	c42c0000 	lwc1	$f12,0(at)
 990:	4600018d 	trunc.w.s	$f6,$f0
 994:	c7b2005c 	lwc1	$f18,92(sp)
 998:	c7a40060 	lwc1	$f4,96(sp)
 99c:	8fad0044 	lw	t5,68(sp)
 9a0:	440c3000 	mfc1	t4,$f6
 9a4:	8fa40040 	lw	a0,64(sp)
 9a8:	02402825 	move	a1,s2
 9ac:	24060077 	li	a2,119
 9b0:	8fa70058 	lw	a3,88(sp)
 9b4:	afa00018 	sw	zero,24(sp)
 9b8:	afa00020 	sw	zero,32(sp)
 9bc:	e7b20010 	swc1	$f18,16(sp)
 9c0:	e7a40014 	swc1	$f4,20(sp)
 9c4:	afad0024 	sw	t5,36(sp)
 9c8:	0c000000 	jal	0 <func_80B3AF70>
 9cc:	afac001c 	sw	t4,28(sp)
 9d0:	2610ffff 	addiu	s0,s0,-1
 9d4:	0601ffeb 	bgez	s0,984 <EnWood02_Update+0x1d4>
 9d8:	00000000 	nop
 9dc:	240effeb 	li	t6,-21
 9e0:	a62e014c 	sh	t6,332(s1)
 9e4:	a6200016 	sh	zero,22(s1)
 9e8:	3c014416 	lui	at,0x4416
 9ec:	44815000 	mtc1	at,$f10
 9f0:	c6280090 	lwc1	$f8,144(s1)
 9f4:	02202025 	move	a0,s1
 9f8:	26300158 	addiu	s0,s1,344
 9fc:	460a403c 	c.lt.s	$f8,$f10
 a00:	00000000 	nop
 a04:	45020079 	bc1fl	bec <EnWood02_Update+0x43c>
 a08:	8630014c 	lh	s0,332(s1)
 a0c:	0c000000 	jal	0 <func_80B3AF70>
 a10:	02002825 	move	a1,s0
 a14:	3c010001 	lui	at,0x1
 a18:	34211e60 	ori	at,at,0x1e60
 a1c:	02412821 	addu	a1,s2,at
 a20:	afa50044 	sw	a1,68(sp)
 a24:	02402025 	move	a0,s2
 a28:	0c000000 	jal	0 <func_80B3AF70>
 a2c:	02003025 	move	a2,s0
 a30:	8fa50044 	lw	a1,68(sp)
 a34:	02402025 	move	a0,s2
 a38:	0c000000 	jal	0 <func_80B3AF70>
 a3c:	02003025 	move	a2,s0
 a40:	1000006a 	b	bec <EnWood02_Update+0x43c>
 a44:	8630014c 	lh	s0,332(s1)
 a48:	28410017 	slti	at,v0,23
 a4c:	1020003d 	beqz	at,b44 <EnWood02_Update+0x394>
 a50:	2624005c 	addiu	a0,s1,92
 a54:	8630014c 	lh	s0,332(s1)
 a58:	8e421c44 	lw	v0,7236(s2)
 a5c:	2a01ffff 	slti	at,s0,-1
 a60:	54200062 	bnezl	at,bec <EnWood02_Update+0x43c>
 a64:	8630014c 	lh	s0,332(s1)
 a68:	8c430440 	lw	v1,1088(v0)
 a6c:	14600011 	bnez	v1,ab4 <EnWood02_Update+0x304>
 a70:	00000000 	nop
 a74:	c630008c 	lwc1	$f16,140(s1)
 a78:	3c014034 	lui	at,0x4034
 a7c:	44819800 	mtc1	at,$f19
 a80:	46008021 	cvt.d.s	$f0,$f16
 a84:	44809000 	mtc1	zero,$f18
 a88:	46200004 	sqrt.d	$f0,$f0
 a8c:	4632003c 	c.lt.d	$f0,$f18
 a90:	00000000 	nop
 a94:	45000007 	bc1f	ab4 <EnWood02_Update+0x304>
 a98:	00000000 	nop
 a9c:	44802000 	mtc1	zero,$f4
 aa0:	c4460838 	lwc1	$f6,2104(v0)
 aa4:	46062032 	c.eq.s	$f4,$f6
 aa8:	00000000 	nop
 aac:	45000013 	bc1f	afc <EnWood02_Update+0x34c>
 ab0:	00000000 	nop
 ab4:	5060004d 	beqzl	v1,bec <EnWood02_Update+0x43c>
 ab8:	8630014c 	lh	s0,332(s1)
 abc:	c628008c 	lwc1	$f8,140(s1)
 ac0:	3c01404e 	lui	at,0x404e
 ac4:	44815800 	mtc1	at,$f11
 ac8:	46004021 	cvt.d.s	$f0,$f8
 acc:	44805000 	mtc1	zero,$f10
 ad0:	46200004 	sqrt.d	$f0,$f0
 ad4:	462a003c 	c.lt.d	$f0,$f10
 ad8:	00000000 	nop
 adc:	45020043 	bc1fl	bec <EnWood02_Update+0x43c>
 ae0:	8630014c 	lh	s0,332(s1)
 ae4:	44808000 	mtc1	zero,$f16
 ae8:	c4720068 	lwc1	$f18,104(v1)
 aec:	46128032 	c.eq.s	$f16,$f18
 af0:	00000000 	nop
 af4:	4503003d 	bc1tl	bec <EnWood02_Update+0x43c>
 af8:	8630014c 	lh	s0,332(s1)
 afc:	0600000a 	bltz	s0,b28 <EnWood02_Update+0x378>
 b00:	2a010064 	slti	at,s0,100
 b04:	10200008 	beqz	at,b28 <EnWood02_Update+0x378>
 b08:	02402025 	move	a0,s2
 b0c:	00103900 	sll	a3,s0,0x4
 b10:	34e78000 	ori	a3,a3,0x8000
 b14:	00073c00 	sll	a3,a3,0x10
 b18:	00073c03 	sra	a3,a3,0x10
 b1c:	02202825 	move	a1,s1
 b20:	0c000000 	jal	0 <func_80B3AF70>
 b24:	26260024 	addiu	a2,s1,36
 b28:	240fffeb 	li	t7,-21
 b2c:	a62f014c 	sh	t7,332(s1)
 b30:	02202025 	move	a0,s1
 b34:	0c000000 	jal	0 <func_80B3AF70>
 b38:	24052877 	li	a1,10359
 b3c:	1000002b 	b	bec <EnWood02_Update+0x43c>
 b40:	8630014c 	lh	s0,332(s1)
 b44:	8638014c 	lh	t8,332(s1)
 b48:	3c073d4c 	lui	a3,0x3d4c
 b4c:	34e7cccc 	ori	a3,a3,0xcccc
 b50:	27190001 	addiu	t9,t8,1
 b54:	a639014c 	sh	t9,332(s1)
 b58:	24050000 	li	a1,0
 b5c:	0c000000 	jal	0 <func_80B3AF70>
 b60:	3c063f80 	lui	a2,0x3f80
 b64:	3c073d4c 	lui	a3,0x3d4c
 b68:	34e7cccc 	ori	a3,a3,0xcccc
 b6c:	26240064 	addiu	a0,s1,100
 b70:	24050000 	li	a1,0
 b74:	0c000000 	jal	0 <func_80B3AF70>
 b78:	3c063f80 	lui	a2,0x3f80
 b7c:	0c000000 	jal	0 <func_80B3AF70>
 b80:	02202025 	move	a0,s1
 b84:	8624014c 	lh	a0,332(s1)
 b88:	00800821 	move	at,a0
 b8c:	00042080 	sll	a0,a0,0x2
 b90:	00812023 	subu	a0,a0,at
 b94:	00042100 	sll	a0,a0,0x4
 b98:	00812023 	subu	a0,a0,at
 b9c:	000420c0 	sll	a0,a0,0x3
 ba0:	00812023 	subu	a0,a0,at
 ba4:	000420c0 	sll	a0,a0,0x3
 ba8:	00042400 	sll	a0,a0,0x10
 bac:	0c000000 	jal	0 <func_80B3AF70>
 bb0:	00042403 	sra	a0,a0,0x10
 bb4:	3c014680 	lui	at,0x4680
 bb8:	44812000 	mtc1	at,$f4
 bbc:	922a014e 	lbu	t2,334(s1)
 bc0:	46040182 	mul.s	$f6,$f0,$f4
 bc4:	254bffff 	addiu	t3,t2,-1
 bc8:	316c00ff 	andi	t4,t3,0xff
 bcc:	a22b014e 	sb	t3,334(s1)
 bd0:	4600320d 	trunc.w.s	$f8,$f6
 bd4:	44094000 	mfc1	t1,$f8
 bd8:	15800003 	bnez	t4,be8 <EnWood02_Update+0x438>
 bdc:	a62900b8 	sh	t1,184(s1)
 be0:	0c000000 	jal	0 <func_80B3AF70>
 be4:	02202025 	move	a0,s1
 be8:	8630014c 	lh	s0,332(s1)
 bec:	2a01ffff 	slti	at,s0,-1
 bf0:	10200026 	beqz	at,c8c <EnWood02_Update+0x4dc>
 bf4:	260d0001 	addiu	t5,s0,1
 bf8:	a62d014c 	sh	t5,332(s1)
 bfc:	8624014c 	lh	a0,332(s1)
 c00:	24013332 	li	at,13106
 c04:	3884ffff 	xori	a0,a0,0xffff
 c08:	00810019 	multu	a0,at
 c0c:	00002012 	mflo	a0
 c10:	00042400 	sll	a0,a0,0x10
 c14:	0c000000 	jal	0 <func_80B3AF70>
 c18:	00042403 	sra	a0,a0,0x10
 c1c:	3c01437a 	lui	at,0x437a
 c20:	44815000 	mtc1	at,$f10
 c24:	00000000 	nop
 c28:	460a0402 	mul.s	$f16,$f0,$f10
 c2c:	e7b0006c 	swc1	$f16,108(sp)
 c30:	862f00b6 	lh	t7,182(s1)
 c34:	862e008a 	lh	t6,138(s1)
 c38:	01cf2023 	subu	a0,t6,t7
 c3c:	00042400 	sll	a0,a0,0x10
 c40:	0c000000 	jal	0 <func_80B3AF70>
 c44:	00042403 	sra	a0,a0,0x10
 c48:	c7b2006c 	lwc1	$f18,108(sp)
 c4c:	8628008a 	lh	t0,138(s1)
 c50:	862900b6 	lh	t1,182(s1)
 c54:	46120102 	mul.s	$f4,$f0,$f18
 c58:	01092023 	subu	a0,t0,t1
 c5c:	00042400 	sll	a0,a0,0x10
 c60:	00042403 	sra	a0,a0,0x10
 c64:	4600218d 	trunc.w.s	$f6,$f4
 c68:	44193000 	mfc1	t9,$f6
 c6c:	0c000000 	jal	0 <func_80B3AF70>
 c70:	a63900b4 	sh	t9,180(s1)
 c74:	c7a8006c 	lwc1	$f8,108(sp)
 c78:	46080282 	mul.s	$f10,$f0,$f8
 c7c:	4600540d 	trunc.w.s	$f16,$f10
 c80:	440b8000 	mfc1	t3,$f16
 c84:	00000000 	nop
 c88:	a62b00b8 	sh	t3,184(s1)
 c8c:	8fbf003c 	lw	ra,60(sp)
 c90:	8fb00030 	lw	s0,48(sp)
 c94:	8fb10034 	lw	s1,52(sp)
 c98:	8fb20038 	lw	s2,56(sp)
 c9c:	03e00008 	jr	ra
 ca0:	27bd0078 	addiu	sp,sp,120

00000ca4 <EnWood02_Draw>:
 ca4:	27bdffa0 	addiu	sp,sp,-96
 ca8:	afbf001c 	sw	ra,28(sp)
 cac:	afb00018 	sw	s0,24(sp)
 cb0:	afa40060 	sw	a0,96(sp)
 cb4:	afa50064 	sw	a1,100(sp)
 cb8:	8cb00000 	lw	s0,0(a1)
 cbc:	3c060000 	lui	a2,0x0
 cc0:	24c60000 	addiu	a2,a2,0
 cc4:	27a4003c 	addiu	a0,sp,60
 cc8:	24070307 	li	a3,775
 ccc:	0c000000 	jal	0 <func_80B3AF70>
 cd0:	02002825 	move	a1,s0
 cd4:	8faf0060 	lw	t7,96(sp)
 cd8:	24010008 	li	at,8
 cdc:	24060032 	li	a2,50
 ce0:	85e2001c 	lh	v0,28(t7)
 ce4:	240700aa 	li	a3,170
 ce8:	02002025 	move	a0,s0
 cec:	10410007 	beq	v0,at,d0c <EnWood02_Draw+0x68>
 cf0:	24010009 	li	at,9
 cf4:	10410005 	beq	v0,at,d0c <EnWood02_Draw+0x68>
 cf8:	24010005 	li	at,5
 cfc:	10410003 	beq	v0,at,d0c <EnWood02_Draw+0x68>
 d00:	24010017 	li	at,23
 d04:	54410004 	bnel	v0,at,d18 <EnWood02_Draw+0x74>
 d08:	24010006 	li	at,6
 d0c:	1000000e 	b	d48 <EnWood02_Draw+0xa4>
 d10:	24080046 	li	t0,70
 d14:	24010006 	li	at,6
 d18:	10410006 	beq	v0,at,d34 <EnWood02_Draw+0x90>
 d1c:	240600b4 	li	a2,180
 d20:	24010007 	li	at,7
 d24:	10410003 	beq	v0,at,d34 <EnWood02_Draw+0x90>
 d28:	24010018 	li	at,24
 d2c:	14410004 	bne	v0,at,d40 <EnWood02_Draw+0x9c>
 d30:	240800ff 	li	t0,255
 d34:	2407009b 	li	a3,155
 d38:	10000003 	b	d48 <EnWood02_Draw+0xa4>
 d3c:	00004025 	move	t0,zero
 d40:	240700ff 	li	a3,255
 d44:	240600ff 	li	a2,255
 d48:	a3a60053 	sb	a2,83(sp)
 d4c:	a3a70052 	sb	a3,82(sp)
 d50:	0c000000 	jal	0 <func_80B3AF70>
 d54:	a3a80051 	sb	t0,81(sp)
 d58:	8fa30060 	lw	v1,96(sp)
 d5c:	24010017 	li	at,23
 d60:	93a60053 	lbu	a2,83(sp)
 d64:	8462001c 	lh	v0,28(v1)
 d68:	93a70052 	lbu	a3,82(sp)
 d6c:	93a80051 	lbu	t0,81(sp)
 d70:	10410004 	beq	v0,at,d84 <EnWood02_Draw+0xe0>
 d74:	02002025 	move	a0,s0
 d78:	24010018 	li	at,24
 d7c:	5441001b 	bnel	v0,at,dec <EnWood02_Draw+0x148>
 d80:	90620154 	lbu	v0,340(v1)
 d84:	a3a60053 	sb	a2,83(sp)
 d88:	a3a70052 	sb	a3,82(sp)
 d8c:	0c000000 	jal	0 <func_80B3AF70>
 d90:	a3a80051 	sb	t0,81(sp)
 d94:	8e0302c0 	lw	v1,704(s0)
 d98:	93a90053 	lbu	t1,83(sp)
 d9c:	93ab0052 	lbu	t3,82(sp)
 da0:	93ae0051 	lbu	t6,81(sp)
 da4:	24780008 	addiu	t8,v1,8
 da8:	ae1802c0 	sw	t8,704(s0)
 dac:	00095600 	sll	t2,t1,0x18
 db0:	000b6400 	sll	t4,t3,0x10
 db4:	014c6825 	or	t5,t2,t4
 db8:	3c19fa00 	lui	t9,0xfa00
 dbc:	000e7a00 	sll	t7,t6,0x8
 dc0:	01afc025 	or	t8,t5,t7
 dc4:	ac790000 	sw	t9,0(v1)
 dc8:	3719007f 	ori	t9,t8,0x7f
 dcc:	3c050600 	lui	a1,0x600
 dd0:	ac790004 	sw	t9,4(v1)
 dd4:	8fa40064 	lw	a0,100(sp)
 dd8:	0c000000 	jal	0 <func_80B3AF70>
 ddc:	24a50700 	addiu	a1,a1,1792
 de0:	10000058 	b	f44 <EnWood02_Draw+0x2a0>
 de4:	00000000 	nop
 de8:	90620154 	lbu	v0,340(v1)
 dec:	3c090000 	lui	t1,0x0
 df0:	3c050000 	lui	a1,0x0
 df4:	3042000f 	andi	v0,v0,0xf
 df8:	00021080 	sll	v0,v0,0x2
 dfc:	01224821 	addu	t1,t1,v0
 e00:	8d290000 	lw	t1,0(t1)
 e04:	00a22821 	addu	a1,a1,v0
 e08:	8fa40064 	lw	a0,100(sp)
 e0c:	11200030 	beqz	t1,ed0 <EnWood02_Draw+0x22c>
 e10:	00000000 	nop
 e14:	8ca50000 	lw	a1,0(a1)
 e18:	a3a60053 	sb	a2,83(sp)
 e1c:	a3a70052 	sb	a3,82(sp)
 e20:	0c000000 	jal	0 <func_80B3AF70>
 e24:	a3a80051 	sb	t0,81(sp)
 e28:	8e0202d0 	lw	v0,720(s0)
 e2c:	93ac0053 	lbu	t4,83(sp)
 e30:	93ad0052 	lbu	t5,82(sp)
 e34:	93b90051 	lbu	t9,81(sp)
 e38:	244b0008 	addiu	t3,v0,8
 e3c:	ae0b02d0 	sw	t3,720(s0)
 e40:	000c7600 	sll	t6,t4,0x18
 e44:	000d7c00 	sll	t7,t5,0x10
 e48:	01cfc025 	or	t8,t6,t7
 e4c:	00194a00 	sll	t1,t9,0x8
 e50:	03095825 	or	t3,t8,t1
 e54:	3c0afb00 	lui	t2,0xfb00
 e58:	ac4a0000 	sw	t2,0(v0)
 e5c:	ac4b0004 	sw	t3,4(v0)
 e60:	8e0202d0 	lw	v0,720(s0)
 e64:	3c0cda38 	lui	t4,0xda38
 e68:	358c0003 	ori	t4,t4,0x3
 e6c:	244a0008 	addiu	t2,v0,8
 e70:	ae0a02d0 	sw	t2,720(s0)
 e74:	3c050000 	lui	a1,0x0
 e78:	ac4c0000 	sw	t4,0(v0)
 e7c:	24a50000 	addiu	a1,a1,0
 e80:	02002025 	move	a0,s0
 e84:	24060328 	li	a2,808
 e88:	0c000000 	jal	0 <func_80B3AF70>
 e8c:	afa20030 	sw	v0,48(sp)
 e90:	8fa30030 	lw	v1,48(sp)
 e94:	3c0ede00 	lui	t6,0xde00
 e98:	3c0b0000 	lui	t3,0x0
 e9c:	ac620004 	sw	v0,4(v1)
 ea0:	8e0202d0 	lw	v0,720(s0)
 ea4:	244d0008 	addiu	t5,v0,8
 ea8:	ae0d02d0 	sw	t5,720(s0)
 eac:	ac4e0000 	sw	t6,0(v0)
 eb0:	8faf0060 	lw	t7,96(sp)
 eb4:	91f90154 	lbu	t9,340(t7)
 eb8:	3338000f 	andi	t8,t9,0xf
 ebc:	00184880 	sll	t1,t8,0x2
 ec0:	01695821 	addu	t3,t3,t1
 ec4:	8d6b0000 	lw	t3,0(t3)
 ec8:	1000001e 	b	f44 <EnWood02_Draw+0x2a0>
 ecc:	ac4b0004 	sw	t3,4(v0)
 ed0:	0c000000 	jal	0 <func_80B3AF70>
 ed4:	02002025 	move	a0,s0
 ed8:	8e0202d0 	lw	v0,720(s0)
 edc:	3c0cda38 	lui	t4,0xda38
 ee0:	358c0003 	ori	t4,t4,0x3
 ee4:	244a0008 	addiu	t2,v0,8
 ee8:	ae0a02d0 	sw	t2,720(s0)
 eec:	3c050000 	lui	a1,0x0
 ef0:	ac4c0000 	sw	t4,0(v0)
 ef4:	24a50000 	addiu	a1,a1,0
 ef8:	02002025 	move	a0,s0
 efc:	2406032e 	li	a2,814
 f00:	0c000000 	jal	0 <func_80B3AF70>
 f04:	afa20028 	sw	v0,40(sp)
 f08:	8fa30028 	lw	v1,40(sp)
 f0c:	3c0ede00 	lui	t6,0xde00
 f10:	3c0b0000 	lui	t3,0x0
 f14:	ac620004 	sw	v0,4(v1)
 f18:	8e0202d0 	lw	v0,720(s0)
 f1c:	244d0008 	addiu	t5,v0,8
 f20:	ae0d02d0 	sw	t5,720(s0)
 f24:	ac4e0000 	sw	t6,0(v0)
 f28:	8faf0060 	lw	t7,96(sp)
 f2c:	91f90154 	lbu	t9,340(t7)
 f30:	3338000f 	andi	t8,t9,0xf
 f34:	00184880 	sll	t1,t8,0x2
 f38:	01695821 	addu	t3,t3,t1
 f3c:	8d6b0000 	lw	t3,0(t3)
 f40:	ac4b0004 	sw	t3,4(v0)
 f44:	3c060000 	lui	a2,0x0
 f48:	24c60000 	addiu	a2,a2,0
 f4c:	27a4003c 	addiu	a0,sp,60
 f50:	02002825 	move	a1,s0
 f54:	0c000000 	jal	0 <func_80B3AF70>
 f58:	24070348 	li	a3,840
 f5c:	8fbf001c 	lw	ra,28(sp)
 f60:	8fb00018 	lw	s0,24(sp)
 f64:	27bd0060 	addiu	sp,sp,96
 f68:	03e00008 	jr	ra
 f6c:	00000000 	nop
