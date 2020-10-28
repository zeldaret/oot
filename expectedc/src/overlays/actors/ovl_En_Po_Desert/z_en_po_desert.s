
build/src/overlays/actors/ovl_En_Po_Desert/z_en_po_desert.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnPoDesert_Init>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afb10028 	sw	s1,40(sp)
   8:	00a08825 	move	s1,a1
   c:	afbf002c 	sw	ra,44(sp)
  10:	afb00024 	sw	s0,36(sp)
  14:	3c050000 	lui	a1,0x0
  18:	00808025 	move	s0,a0
  1c:	0c000000 	jal	0 <EnPoDesert_Init>
  20:	24a50000 	addiu	a1,a1,0
  24:	3c060600 	lui	a2,0x600
  28:	3c070600 	lui	a3,0x600
  2c:	260e01a8 	addiu	t6,s0,424
  30:	260f01e4 	addiu	t7,s0,484
  34:	2418000a 	li	t8,10
  38:	afb80018 	sw	t8,24(sp)
  3c:	afaf0014 	sw	t7,20(sp)
  40:	afae0010 	sw	t6,16(sp)
  44:	24e70924 	addiu	a3,a3,2340
  48:	24c66a30 	addiu	a2,a2,27184
  4c:	02202025 	move	a0,s1
  50:	0c000000 	jal	0 <EnPoDesert_Init>
  54:	2605014c 	addiu	a1,s0,332
  58:	26050238 	addiu	a1,s0,568
  5c:	afa50034 	sw	a1,52(sp)
  60:	0c000000 	jal	0 <EnPoDesert_Init>
  64:	02202025 	move	a0,s1
  68:	3c070000 	lui	a3,0x0
  6c:	8fa50034 	lw	a1,52(sp)
  70:	24e70000 	addiu	a3,a3,0
  74:	02202025 	move	a0,s1
  78:	0c000000 	jal	0 <EnPoDesert_Init>
  7c:	02003025 	move	a2,s0
  80:	240300ff 	li	v1,255
  84:	241900d2 	li	t9,210
  88:	a2030220 	sb	v1,544(s0)
  8c:	a2030221 	sb	v1,545(s0)
  90:	a2190222 	sb	t9,546(s0)
  94:	a2030223 	sb	v1,547(s0)
  98:	26060228 	addiu	a2,s0,552
  9c:	afa60034 	sw	a2,52(sp)
  a0:	02202025 	move	a0,s1
  a4:	0c000000 	jal	0 <EnPoDesert_Init>
  a8:	262507a8 	addiu	a1,s1,1960
  ac:	c6040008 	lwc1	$f4,8(s0)
  b0:	c608000c 	lwc1	$f8,12(s0)
  b4:	c6100010 	lwc1	$f16,16(s0)
  b8:	4600218d 	trunc.w.s	$f6,$f4
  bc:	ae020224 	sw	v0,548(s0)
  c0:	240b00ff 	li	t3,255
  c4:	4600428d 	trunc.w.s	$f10,$f8
  c8:	44053000 	mfc1	a1,$f6
  cc:	240c00ff 	li	t4,255
  d0:	4600848d 	trunc.w.s	$f18,$f16
  d4:	44065000 	mfc1	a2,$f10
  d8:	240d00ff 	li	t5,255
  dc:	240e00c8 	li	t6,200
  e0:	44079000 	mfc1	a3,$f18
  e4:	00052c00 	sll	a1,a1,0x10
  e8:	00063400 	sll	a2,a2,0x10
  ec:	00073c00 	sll	a3,a3,0x10
  f0:	00073c03 	sra	a3,a3,0x10
  f4:	00063403 	sra	a2,a2,0x10
  f8:	00052c03 	sra	a1,a1,0x10
  fc:	afae001c 	sw	t6,28(sp)
 100:	afad0018 	sw	t5,24(sp)
 104:	afac0014 	sw	t4,20(sp)
 108:	afab0010 	sw	t3,16(sp)
 10c:	0c000000 	jal	0 <EnPoDesert_Init>
 110:	8fa40034 	lw	a0,52(sp)
 114:	3c060000 	lui	a2,0x0
 118:	24c60000 	addiu	a2,a2,0
 11c:	260400b4 	addiu	a0,s0,180
 120:	24050000 	li	a1,0
 124:	0c000000 	jal	0 <EnPoDesert_Init>
 128:	3c074214 	lui	a3,0x4214
 12c:	8618001c 	lh	t8,28(s0)
 130:	c6040028 	lwc1	$f4,40(s0)
 134:	240f0001 	li	t7,1
 138:	0018ca03 	sra	t9,t8,0x8
 13c:	332800ff 	andi	t0,t9,0xff
 140:	ae0f0198 	sw	t7,408(s0)
 144:	a608001c 	sh	t0,28(s0)
 148:	02002025 	move	a0,s0
 14c:	02202825 	move	a1,s1
 150:	0c000000 	jal	0 <EnPoDesert_Init>
 154:	e60401a4 	swc1	$f4,420(s0)
 158:	8fbf002c 	lw	ra,44(sp)
 15c:	8fb00024 	lw	s0,36(sp)
 160:	8fb10028 	lw	s1,40(sp)
 164:	03e00008 	jr	ra
 168:	27bd0040 	addiu	sp,sp,64

0000016c <EnPoDesert_Destroy>:
 16c:	27bdffe8 	addiu	sp,sp,-24
 170:	afa40018 	sw	a0,24(sp)
 174:	8fae0018 	lw	t6,24(sp)
 178:	afbf0014 	sw	ra,20(sp)
 17c:	00a03825 	move	a3,a1
 180:	00a02025 	move	a0,a1
 184:	8dc60224 	lw	a2,548(t6)
 188:	afa7001c 	sw	a3,28(sp)
 18c:	0c000000 	jal	0 <EnPoDesert_Init>
 190:	24a507a8 	addiu	a1,a1,1960
 194:	8fa50018 	lw	a1,24(sp)
 198:	8fa4001c 	lw	a0,28(sp)
 19c:	0c000000 	jal	0 <EnPoDesert_Init>
 1a0:	24a50238 	addiu	a1,a1,568
 1a4:	8fbf0014 	lw	ra,20(sp)
 1a8:	27bd0018 	addiu	sp,sp,24
 1ac:	03e00008 	jr	ra
 1b0:	00000000 	nop

000001b4 <func_80AD2E64>:
 1b4:	27bdffe0 	addiu	sp,sp,-32
 1b8:	afbf0014 	sw	ra,20(sp)
 1bc:	afa50024 	sw	a1,36(sp)
 1c0:	3c0f0001 	lui	t7,0x1
 1c4:	8498001c 	lh	t8,28(a0)
 1c8:	01e57821 	addu	t7,t7,a1
 1cc:	8def1e08 	lw	t7,7688(t7)
 1d0:	0018c8c0 	sll	t9,t8,0x3
 1d4:	00803825 	move	a3,a0
 1d8:	3c050600 	lui	a1,0x600
 1dc:	01f94021 	addu	t0,t7,t9
 1e0:	afa8001c 	sw	t0,28(sp)
 1e4:	24a51360 	addiu	a1,a1,4960
 1e8:	afa70020 	sw	a3,32(sp)
 1ec:	2484014c 	addiu	a0,a0,332
 1f0:	0c000000 	jal	0 <EnPoDesert_Init>
 1f4:	3c06c0c0 	lui	a2,0xc0c0
 1f8:	8fa9001c 	lw	t1,28(sp)
 1fc:	8fa40020 	lw	a0,32(sp)
 200:	3c0d0000 	lui	t5,0x0
 204:	8d230004 	lw	v1,4(t1)
 208:	8c8f0198 	lw	t7,408(a0)
 20c:	3c0100ff 	lui	at,0xff
 210:	00035100 	sll	t2,v1,0x4
 214:	000a5f02 	srl	t3,t2,0x1c
 218:	000b6080 	sll	t4,t3,0x2
 21c:	01ac6821 	addu	t5,t5,t4
 220:	8dad0000 	lw	t5,0(t5)
 224:	3421ffff 	ori	at,at,0xffff
 228:	000fc880 	sll	t9,t7,0x2
 22c:	00617024 	and	t6,v1,at
 230:	032fc823 	subu	t9,t9,t7
 234:	0019c840 	sll	t9,t9,0x1
 238:	01aec021 	addu	t8,t5,t6
 23c:	03191021 	addu	v0,t8,t9
 240:	3c018000 	lui	at,0x8000
 244:	00411021 	addu	v0,v0,at
 248:	84480000 	lh	t0,0(v0)
 24c:	24850008 	addiu	a1,a0,8
 250:	44882000 	mtc1	t0,$f4
 254:	00000000 	nop
 258:	468021a0 	cvt.s.w	$f6,$f4
 25c:	e4860008 	swc1	$f6,8(a0)
 260:	84490002 	lh	t1,2(v0)
 264:	44894000 	mtc1	t1,$f8
 268:	00000000 	nop
 26c:	468042a0 	cvt.s.w	$f10,$f8
 270:	e48a000c 	swc1	$f10,12(a0)
 274:	844a0004 	lh	t2,4(v0)
 278:	448a8000 	mtc1	t2,$f16
 27c:	00000000 	nop
 280:	468084a0 	cvt.s.w	$f18,$f16
 284:	0c000000 	jal	0 <EnPoDesert_Init>
 288:	e4920010 	swc1	$f18,16(a0)
 28c:	3c013f80 	lui	at,0x3f80
 290:	44811000 	mtc1	at,$f2
 294:	8fa70020 	lw	a3,32(sp)
 298:	3c180000 	lui	t8,0x0
 29c:	4602003c 	c.lt.s	$f0,$f2
 2a0:	27180000 	addiu	t8,t8,0
 2a4:	e4e0019c 	swc1	$f0,412(a3)
 2a8:	45020004 	bc1fl	2bc <func_80AD2E64+0x108>
 2ac:	c4e4019c 	lwc1	$f4,412(a3)
 2b0:	10000003 	b	2c0 <func_80AD2E64+0x10c>
 2b4:	e4e2019c 	swc1	$f2,412(a3)
 2b8:	c4e4019c 	lwc1	$f4,412(a3)
 2bc:	e4e4019c 	swc1	$f4,412(a3)
 2c0:	c4e6000c 	lwc1	$f6,12(a3)
 2c4:	c4e80028 	lwc1	$f8,40(a3)
 2c8:	8ceb0198 	lw	t3,408(a3)
 2cc:	44808000 	mtc1	zero,$f16
 2d0:	46083281 	sub.s	$f10,$f6,$f8
 2d4:	256c0001 	addiu	t4,t3,1
 2d8:	acec0198 	sw	t4,408(a3)
 2dc:	e4f00068 	swc1	$f16,104(a3)
 2e0:	e4ea01a0 	swc1	$f10,416(a3)
 2e4:	8fae001c 	lw	t6,28(sp)
 2e8:	91cf0000 	lbu	t7,0(t6)
 2ec:	558f0003 	bnel	t4,t7,2fc <func_80AD2E64+0x148>
 2f0:	acf80190 	sw	t8,400(a3)
 2f4:	ace00198 	sw	zero,408(a3)
 2f8:	acf80190 	sw	t8,400(a3)
 2fc:	8fbf0014 	lw	ra,20(sp)
 300:	27bd0020 	addiu	sp,sp,32
 304:	03e00008 	jr	ra
 308:	00000000 	nop

0000030c <func_80AD2FBC>:
 30c:	27bdffe8 	addiu	sp,sp,-24
 310:	afbf0014 	sw	ra,20(sp)
 314:	afa40018 	sw	a0,24(sp)
 318:	3c050600 	lui	a1,0x600
 31c:	24a50924 	addiu	a1,a1,2340
 320:	2484014c 	addiu	a0,a0,332
 324:	0c000000 	jal	0 <EnPoDesert_Init>
 328:	3c06c0a0 	lui	a2,0xc0a0
 32c:	8faf0018 	lw	t7,24(sp)
 330:	3c0e0000 	lui	t6,0x0
 334:	25ce0000 	addiu	t6,t6,0
 338:	adee0190 	sw	t6,400(t7)
 33c:	8fbf0014 	lw	ra,20(sp)
 340:	27bd0018 	addiu	sp,sp,24
 344:	03e00008 	jr	ra
 348:	00000000 	nop

0000034c <func_80AD2FFC>:
 34c:	27bdffe8 	addiu	sp,sp,-24
 350:	afbf0014 	sw	ra,20(sp)
 354:	00803825 	move	a3,a0
 358:	3c050600 	lui	a1,0x600
 35c:	24a51360 	addiu	a1,a1,4960
 360:	afa70018 	sw	a3,24(sp)
 364:	2484014c 	addiu	a0,a0,332
 368:	0c000000 	jal	0 <EnPoDesert_Init>
 36c:	3c06c0c0 	lui	a2,0xc0c0
 370:	8fa40018 	lw	a0,24(sp)
 374:	44802000 	mtc1	zero,$f4
 378:	240e0010 	li	t6,16
 37c:	24053874 	li	a1,14452
 380:	a48e0194 	sh	t6,404(a0)
 384:	0c000000 	jal	0 <EnPoDesert_Init>
 388:	e4840068 	swc1	$f4,104(a0)
 38c:	8fa70018 	lw	a3,24(sp)
 390:	3c0f0000 	lui	t7,0x0
 394:	25ef0000 	addiu	t7,t7,0
 398:	acef0190 	sw	t7,400(a3)
 39c:	8fbf0014 	lw	ra,20(sp)
 3a0:	27bd0018 	addiu	sp,sp,24
 3a4:	03e00008 	jr	ra
 3a8:	00000000 	nop

000003ac <func_80AD305C>:
 3ac:	27bdffe8 	addiu	sp,sp,-24
 3b0:	afbf0014 	sw	ra,20(sp)
 3b4:	84820196 	lh	v0,406(a0)
 3b8:	00802825 	move	a1,a0
 3bc:	240e0020 	li	t6,32
 3c0:	14400003 	bnez	v0,3d0 <func_80AD305C+0x24>
 3c4:	00000000 	nop
 3c8:	a48e0196 	sh	t6,406(a0)
 3cc:	84820196 	lh	v0,406(a0)
 3d0:	10400003 	beqz	v0,3e0 <func_80AD305C+0x34>
 3d4:	244fffff 	addiu	t7,v0,-1
 3d8:	a4af0196 	sh	t7,406(a1)
 3dc:	84a20196 	lh	v0,406(a1)
 3e0:	00402025 	move	a0,v0
 3e4:	000426c0 	sll	a0,a0,0x1b
 3e8:	00042403 	sra	a0,a0,0x10
 3ec:	0c000000 	jal	0 <EnPoDesert_Init>
 3f0:	afa50018 	sw	a1,24(sp)
 3f4:	3c014150 	lui	at,0x4150
 3f8:	44812000 	mtc1	at,$f4
 3fc:	8fa50018 	lw	a1,24(sp)
 400:	46040182 	mul.s	$f6,$f0,$f4
 404:	c4a801a4 	lwc1	$f8,420(a1)
 408:	46083280 	add.s	$f10,$f6,$f8
 40c:	e4aa0028 	swc1	$f10,40(a1)
 410:	8fbf0014 	lw	ra,20(sp)
 414:	27bd0018 	addiu	sp,sp,24
 418:	03e00008 	jr	ra
 41c:	00000000 	nop

00000420 <func_80AD30D0>:
 420:	27bdffe8 	addiu	sp,sp,-24
 424:	afbf0014 	sw	ra,20(sp)
 428:	afa5001c 	sw	a1,28(sp)
 42c:	24053071 	li	a1,12401
 430:	0c000000 	jal	0 <EnPoDesert_Init>
 434:	afa40018 	sw	a0,24(sp)
 438:	8fa70018 	lw	a3,24(sp)
 43c:	3c014348 	lui	at,0x4348
 440:	44813000 	mtc1	at,$f6
 444:	c4e40090 	lwc1	$f4,144(a3)
 448:	4606203c 	c.lt.s	$f4,$f6
 44c:	00000000 	nop
 450:	4502001e 	bc1fl	4cc <func_80AD30D0+0xac>
 454:	84e800b6 	lh	t0,182(a3)
 458:	8ce20198 	lw	v0,408(a3)
 45c:	24030002 	li	v1,2
 460:	8fae001c 	lw	t6,28(sp)
 464:	14620004 	bne	v1,v0,478 <func_80AD30D0+0x58>
 468:	00000000 	nop
 46c:	91cf1c27 	lbu	t7,7207(t6)
 470:	51e00016 	beqzl	t7,4cc <func_80AD30D0+0xac>
 474:	84e800b6 	lh	t0,182(a3)
 478:	1462000f 	bne	v1,v0,4b8 <func_80AD30D0+0x98>
 47c:	8fa4001c 	lw	a0,28(sp)
 480:	0c000000 	jal	0 <EnPoDesert_Init>
 484:	afa70018 	sw	a3,24(sp)
 488:	10400005 	beqz	v0,4a0 <func_80AD30D0+0x80>
 48c:	8fa70018 	lw	a3,24(sp)
 490:	84f800b6 	lh	t8,182(a3)
 494:	27190800 	addiu	t9,t8,2048
 498:	1000000e 	b	4d4 <func_80AD30D0+0xb4>
 49c:	a4f900b6 	sh	t9,182(a3)
 4a0:	8fa4001c 	lw	a0,28(sp)
 4a4:	2405600b 	li	a1,24587
 4a8:	00003025 	move	a2,zero
 4ac:	0c000000 	jal	0 <EnPoDesert_Init>
 4b0:	afa70018 	sw	a3,24(sp)
 4b4:	8fa70018 	lw	a3,24(sp)
 4b8:	0c000000 	jal	0 <EnPoDesert_Init>
 4bc:	00e02025 	move	a0,a3
 4c0:	10000005 	b	4d8 <func_80AD30D0+0xb8>
 4c4:	8fbf0014 	lw	ra,20(sp)
 4c8:	84e800b6 	lh	t0,182(a3)
 4cc:	25090800 	addiu	t1,t0,2048
 4d0:	a4e900b6 	sh	t1,182(a3)
 4d4:	8fbf0014 	lw	ra,20(sp)
 4d8:	27bd0018 	addiu	sp,sp,24
 4dc:	03e00008 	jr	ra
 4e0:	00000000 	nop

000004e4 <func_80AD3194>:
 4e4:	27bdffc8 	addiu	sp,sp,-56
 4e8:	afbf0024 	sw	ra,36(sp)
 4ec:	afb00020 	sw	s0,32(sp)
 4f0:	f7b40018 	sdc1	$f20,24(sp)
 4f4:	afa5003c 	sw	a1,60(sp)
 4f8:	84820194 	lh	v0,404(a0)
 4fc:	00808025 	move	s0,a0
 500:	10400003 	beqz	v0,510 <func_80AD3194+0x2c>
 504:	244effff 	addiu	t6,v0,-1
 508:	a48e0194 	sh	t6,404(a0)
 50c:	84820194 	lh	v0,404(a0)
 510:	44822000 	mtc1	v0,$f4
 514:	3c010000 	lui	at,0x0
 518:	c4280000 	lwc1	$f8,0(at)
 51c:	468021a0 	cvt.s.w	$f6,$f4
 520:	46083302 	mul.s	$f12,$f6,$f8
 524:	0c000000 	jal	0 <EnPoDesert_Init>
 528:	00000000 	nop
 52c:	3c0140a0 	lui	at,0x40a0
 530:	44815000 	mtc1	at,$f10
 534:	860400b6 	lh	a0,182(s0)
 538:	460a0502 	mul.s	$f20,$f0,$f10
 53c:	0c000000 	jal	0 <EnPoDesert_Init>
 540:	00000000 	nop
 544:	4600a482 	mul.s	$f18,$f20,$f0
 548:	c6100024 	lwc1	$f16,36(s0)
 54c:	860400b6 	lh	a0,182(s0)
 550:	46128100 	add.s	$f4,$f16,$f18
 554:	0c000000 	jal	0 <EnPoDesert_Init>
 558:	e6040024 	swc1	$f4,36(s0)
 55c:	4600a202 	mul.s	$f8,$f20,$f0
 560:	c606002c 	lwc1	$f6,44(s0)
 564:	860f0194 	lh	t7,404(s0)
 568:	24180028 	li	t8,40
 56c:	02002025 	move	a0,s0
 570:	26050008 	addiu	a1,s0,8
 574:	46083280 	add.s	$f10,$f6,$f8
 578:	15e00002 	bnez	t7,584 <func_80AD3194+0xa0>
 57c:	e60a002c 	swc1	$f10,44(s0)
 580:	a6180194 	sh	t8,404(s0)
 584:	0c000000 	jal	0 <EnPoDesert_Init>
 588:	afa5002c 	sw	a1,44(sp)
 58c:	8fa5002c 	lw	a1,44(sp)
 590:	46000506 	mov.s	$f20,$f0
 594:	0c000000 	jal	0 <EnPoDesert_Init>
 598:	02002025 	move	a0,s0
 59c:	a6020032 	sh	v0,50(s0)
 5a0:	86050032 	lh	a1,50(s0)
 5a4:	34018000 	li	at,0x8000
 5a8:	260400b6 	addiu	a0,s0,182
 5ac:	00a12821 	addu	a1,a1,at
 5b0:	00052c00 	sll	a1,a1,0x10
 5b4:	00052c03 	sra	a1,a1,0x10
 5b8:	24060005 	li	a2,5
 5bc:	0c000000 	jal	0 <EnPoDesert_Init>
 5c0:	24070400 	li	a3,1024
 5c4:	86190196 	lh	t9,406(s0)
 5c8:	3c010000 	lui	at,0x0
 5cc:	c4240000 	lwc1	$f4,0(at)
 5d0:	44998000 	mtc1	t9,$f16
 5d4:	00000000 	nop
 5d8:	468084a0 	cvt.s.w	$f18,$f16
 5dc:	46049302 	mul.s	$f12,$f18,$f4
 5e0:	0c000000 	jal	0 <EnPoDesert_Init>
 5e4:	00000000 	nop
 5e8:	3c014020 	lui	at,0x4020
 5ec:	44813000 	mtc1	at,$f6
 5f0:	3c0140b0 	lui	at,0x40b0
 5f4:	44815000 	mtc1	at,$f10
 5f8:	46060202 	mul.s	$f8,$f0,$f6
 5fc:	02002025 	move	a0,s0
 600:	24053071 	li	a1,12401
 604:	460a4400 	add.s	$f16,$f8,$f10
 608:	0c000000 	jal	0 <EnPoDesert_Init>
 60c:	e6100068 	swc1	$f16,104(s0)
 610:	c61201a0 	lwc1	$f18,416(s0)
 614:	c606019c 	lwc1	$f6,412(s0)
 618:	3c014220 	lui	at,0x4220
 61c:	4612a102 	mul.s	$f4,$f20,$f18
 620:	44819000 	mtc1	at,$f18
 624:	c60a000c 	lwc1	$f10,12(s0)
 628:	4612a03c 	c.lt.s	$f20,$f18
 62c:	46062203 	div.s	$f8,$f4,$f6
 630:	46085401 	sub.s	$f16,$f10,$f8
 634:	4500000b 	bc1f	664 <func_80AD3194+0x180>
 638:	e61001a4 	swc1	$f16,420(s0)
 63c:	8e080198 	lw	t0,408(s0)
 640:	02002025 	move	a0,s0
 644:	11000005 	beqz	t0,65c <func_80AD3194+0x178>
 648:	00000000 	nop
 64c:	0c000000 	jal	0 <EnPoDesert_Init>
 650:	8fa5003c 	lw	a1,60(sp)
 654:	10000004 	b	668 <func_80AD3194+0x184>
 658:	8fbf0024 	lw	ra,36(sp)
 65c:	0c000000 	jal	0 <EnPoDesert_Init>
 660:	02002025 	move	a0,s0
 664:	8fbf0024 	lw	ra,36(sp)
 668:	d7b40018 	ldc1	$f20,24(sp)
 66c:	8fb00020 	lw	s0,32(sp)
 670:	03e00008 	jr	ra
 674:	27bd0038 	addiu	sp,sp,56

00000678 <func_80AD3328>:
 678:	27bdffe8 	addiu	sp,sp,-24
 67c:	afbf0014 	sw	ra,20(sp)
 680:	afa5001c 	sw	a1,28(sp)
 684:	84820194 	lh	v0,404(a0)
 688:	10400003 	beqz	v0,698 <func_80AD3328+0x20>
 68c:	244effff 	addiu	t6,v0,-1
 690:	a48e0194 	sh	t6,404(a0)
 694:	84820194 	lh	v0,404(a0)
 698:	44822000 	mtc1	v0,$f4
 69c:	3c01417f 	lui	at,0x417f
 6a0:	44814000 	mtc1	at,$f8
 6a4:	468021a0 	cvt.s.w	$f6,$f4
 6a8:	24080001 	li	t0,1
 6ac:	848f00b6 	lh	t7,182(a0)
 6b0:	3c014f00 	lui	at,0x4f00
 6b4:	25f82000 	addiu	t8,t7,8192
 6b8:	46083282 	mul.s	$f10,$f6,$f8
 6bc:	a49800b6 	sh	t8,182(a0)
 6c0:	4459f800 	cfc1	t9,$31
 6c4:	44c8f800 	ctc1	t0,$31
 6c8:	00000000 	nop
 6cc:	46005424 	cvt.w.s	$f16,$f10
 6d0:	4448f800 	cfc1	t0,$31
 6d4:	00000000 	nop
 6d8:	31080078 	andi	t0,t0,0x78
 6dc:	51000013 	beqzl	t0,72c <func_80AD3328+0xb4>
 6e0:	44088000 	mfc1	t0,$f16
 6e4:	44818000 	mtc1	at,$f16
 6e8:	24080001 	li	t0,1
 6ec:	46105401 	sub.s	$f16,$f10,$f16
 6f0:	44c8f800 	ctc1	t0,$31
 6f4:	00000000 	nop
 6f8:	46008424 	cvt.w.s	$f16,$f16
 6fc:	4448f800 	cfc1	t0,$31
 700:	00000000 	nop
 704:	31080078 	andi	t0,t0,0x78
 708:	15000005 	bnez	t0,720 <func_80AD3328+0xa8>
 70c:	00000000 	nop
 710:	44088000 	mfc1	t0,$f16
 714:	3c018000 	lui	at,0x8000
 718:	10000007 	b	738 <func_80AD3328+0xc0>
 71c:	01014025 	or	t0,t0,at
 720:	10000005 	b	738 <func_80AD3328+0xc0>
 724:	2408ffff 	li	t0,-1
 728:	44088000 	mfc1	t0,$f16
 72c:	00000000 	nop
 730:	0500fffb 	bltz	t0,720 <func_80AD3328+0xa8>
 734:	00000000 	nop
 738:	44d9f800 	ctc1	t9,$31
 73c:	a0880223 	sb	t0,547(a0)
 740:	14400003 	bnez	v0,750 <func_80AD3328+0xd8>
 744:	a08800c8 	sb	t0,200(a0)
 748:	0c000000 	jal	0 <EnPoDesert_Init>
 74c:	00000000 	nop
 750:	8fbf0014 	lw	ra,20(sp)
 754:	27bd0018 	addiu	sp,sp,24
 758:	03e00008 	jr	ra
 75c:	00000000 	nop

00000760 <EnPoDesert_Update>:
 760:	27bdffc8 	addiu	sp,sp,-56
 764:	afb0001c 	sw	s0,28(sp)
 768:	00808025 	move	s0,a0
 76c:	afbf0024 	sw	ra,36(sp)
 770:	afb10020 	sw	s1,32(sp)
 774:	00a08825 	move	s1,a1
 778:	0c000000 	jal	0 <EnPoDesert_Init>
 77c:	2484014c 	addiu	a0,a0,332
 780:	8e190190 	lw	t9,400(s0)
 784:	02002025 	move	a0,s0
 788:	02202825 	move	a1,s1
 78c:	0320f809 	jalr	t9
 790:	00000000 	nop
 794:	0c000000 	jal	0 <EnPoDesert_Init>
 798:	02002025 	move	a0,s0
 79c:	0c000000 	jal	0 <EnPoDesert_Init>
 7a0:	02002025 	move	a0,s0
 7a4:	3c014270 	lui	at,0x4270
 7a8:	44812000 	mtc1	at,$f4
 7ac:	240e0004 	li	t6,4
 7b0:	afae0014 	sw	t6,20(sp)
 7b4:	02202025 	move	a0,s1
 7b8:	02002825 	move	a1,s0
 7bc:	24060000 	li	a2,0
 7c0:	3c0741d8 	lui	a3,0x41d8
 7c4:	0c000000 	jal	0 <EnPoDesert_Init>
 7c8:	e7a40010 	swc1	$f4,16(sp)
 7cc:	02002025 	move	a0,s0
 7d0:	0c000000 	jal	0 <EnPoDesert_Init>
 7d4:	3c054228 	lui	a1,0x4228
 7d8:	26060238 	addiu	a2,s0,568
 7dc:	00c02825 	move	a1,a2
 7e0:	afa6002c 	sw	a2,44(sp)
 7e4:	0c000000 	jal	0 <EnPoDesert_Init>
 7e8:	02002025 	move	a0,s0
 7ec:	3c010001 	lui	at,0x1
 7f0:	34211e60 	ori	at,at,0x1e60
 7f4:	8fa6002c 	lw	a2,44(sp)
 7f8:	02212821 	addu	a1,s1,at
 7fc:	0c000000 	jal	0 <EnPoDesert_Init>
 800:	02202025 	move	a0,s1
 804:	922f1c27 	lbu	t7,7207(s1)
 808:	3c090000 	lui	t1,0x0
 80c:	51e00008 	beqzl	t7,830 <EnPoDesert_Update+0xd0>
 810:	8e0a0004 	lw	t2,4(s0)
 814:	8e180004 	lw	t8,4(s0)
 818:	25290000 	addiu	t1,t1,0
 81c:	ae0900c0 	sw	t1,192(s0)
 820:	37080081 	ori	t0,t8,0x81
 824:	10000006 	b	840 <EnPoDesert_Update+0xe0>
 828:	ae080004 	sw	t0,4(s0)
 82c:	8e0a0004 	lw	t2,4(s0)
 830:	2401ff7e 	li	at,-130
 834:	ae0000c0 	sw	zero,192(s0)
 838:	01415824 	and	t3,t2,at
 83c:	ae0b0004 	sw	t3,4(s0)
 840:	8fbf0024 	lw	ra,36(sp)
 844:	8fb0001c 	lw	s0,28(sp)
 848:	8fb10020 	lw	s1,32(sp)
 84c:	03e00008 	jr	ra
 850:	27bd0038 	addiu	sp,sp,56

00000854 <func_80AD3504>:
 854:	27bdffe8 	addiu	sp,sp,-24
 858:	afa40018 	sw	a0,24(sp)
 85c:	8fa4002c 	lw	a0,44(sp)
 860:	afbf0014 	sw	ra,20(sp)
 864:	afa60020 	sw	a2,32(sp)
 868:	afa70024 	sw	a3,36(sp)
 86c:	8c8f0190 	lw	t7,400(a0)
 870:	3c0e0000 	lui	t6,0x0
 874:	25ce0000 	addiu	t6,t6,0
 878:	15cf000e 	bne	t6,t7,8b4 <func_80AD3504+0x60>
 87c:	24010007 	li	at,7
 880:	54a1000d 	bnel	a1,at,8b8 <func_80AD3504+0x64>
 884:	8c990004 	lw	t9,4(a0)
 888:	84980194 	lh	t8,404(a0)
 88c:	3c013d80 	lui	at,0x3d80
 890:	44814000 	mtc1	at,$f8
 894:	44982000 	mtc1	t8,$f4
 898:	24070001 	li	a3,1
 89c:	468021a0 	cvt.s.w	$f6,$f4
 8a0:	46083302 	mul.s	$f12,$f6,$f8
 8a4:	44066000 	mfc1	a2,$f12
 8a8:	0c000000 	jal	0 <EnPoDesert_Init>
 8ac:	46006386 	mov.s	$f14,$f12
 8b0:	8fa4002c 	lw	a0,44(sp)
 8b4:	8c990004 	lw	t9,4(a0)
 8b8:	24010080 	li	at,128
 8bc:	8fa90020 	lw	t1,32(sp)
 8c0:	33280080 	andi	t0,t9,0x80
 8c4:	51010003 	beql	t0,at,8d4 <func_80AD3504+0x80>
 8c8:	8fbf0014 	lw	ra,20(sp)
 8cc:	ad200000 	sw	zero,0(t1)
 8d0:	8fbf0014 	lw	ra,20(sp)
 8d4:	27bd0018 	addiu	sp,sp,24
 8d8:	00001025 	move	v0,zero
 8dc:	03e00008 	jr	ra
 8e0:	00000000 	nop

000008e4 <func_80AD3594>:
 8e4:	27bdff98 	addiu	sp,sp,-104
 8e8:	24010007 	li	at,7
 8ec:	afbf0024 	sw	ra,36(sp)
 8f0:	afa40068 	sw	a0,104(sp)
 8f4:	afa60070 	sw	a2,112(sp)
 8f8:	14a1008e 	bne	a1,at,b34 <func_80AD3594+0x250>
 8fc:	afa70074 	sw	a3,116(sp)
 900:	3c040000 	lui	a0,0x0
 904:	24840000 	addiu	a0,a0,0
 908:	0c000000 	jal	0 <EnPoDesert_Init>
 90c:	27a50050 	addiu	a1,sp,80
 910:	0c000000 	jal	0 <EnPoDesert_Init>
 914:	00000000 	nop
 918:	3c0141f0 	lui	at,0x41f0
 91c:	44812000 	mtc1	at,$f4
 920:	3c0142c8 	lui	at,0x42c8
 924:	44815000 	mtc1	at,$f10
 928:	46040182 	mul.s	$f6,$f0,$f4
 92c:	3c014320 	lui	at,0x4320
 930:	44812000 	mtc1	at,$f4
 934:	460a0402 	mul.s	$f16,$f0,$f10
 938:	8fa80078 	lw	t0,120(sp)
 93c:	24010080 	li	at,128
 940:	8fa7007c 	lw	a3,124(sp)
 944:	8d190004 	lw	t9,4(t0)
 948:	4600320d 	trunc.w.s	$f8,$f6
 94c:	46040182 	mul.s	$f6,$f0,$f4
 950:	332c0080 	andi	t4,t9,0x80
 954:	44044000 	mfc1	a0,$f8
 958:	4600848d 	trunc.w.s	$f18,$f16
 95c:	00042400 	sll	a0,a0,0x10
 960:	00042403 	sra	a0,a0,0x10
 964:	4600320d 	trunc.w.s	$f8,$f6
 968:	44059000 	mfc1	a1,$f18
 96c:	248400e1 	addiu	a0,a0,225
 970:	308900ff 	andi	t1,a0,0xff
 974:	44064000 	mfc1	a2,$f8
 978:	00052c00 	sll	a1,a1,0x10
 97c:	00052c03 	sra	a1,a1,0x10
 980:	00063400 	sll	a2,a2,0x10
 984:	00063403 	sra	a2,a2,0x10
 988:	24a5009b 	addiu	a1,a1,155
 98c:	24c6005f 	addiu	a2,a2,95
 990:	30aa00ff 	andi	t2,a1,0xff
 994:	15810051 	bne	t4,at,adc <func_80AD3594+0x1f8>
 998:	30cb00ff 	andi	t3,a2,0xff
 99c:	8ce20000 	lw	v0,0(a3)
 9a0:	3c0ee700 	lui	t6,0xe700
 9a4:	3c18fb00 	lui	t8,0xfb00
 9a8:	244d0008 	addiu	t5,v0,8
 9ac:	aced0000 	sw	t5,0(a3)
 9b0:	ac4e0000 	sw	t6,0(v0)
 9b4:	ac400004 	sw	zero,4(v0)
 9b8:	8ce20000 	lw	v0,0(a3)
 9bc:	30ce00ff 	andi	t6,a2,0xff
 9c0:	00046e00 	sll	t5,a0,0x18
 9c4:	244f0008 	addiu	t7,v0,8
 9c8:	acef0000 	sw	t7,0(a3)
 9cc:	30af00ff 	andi	t7,a1,0xff
 9d0:	ac580000 	sw	t8,0(v0)
 9d4:	000fc400 	sll	t8,t7,0x10
 9d8:	01b8c825 	or	t9,t5,t8
 9dc:	000e7a00 	sll	t7,t6,0x8
 9e0:	032f6825 	or	t5,t9,t7
 9e4:	35b800ff 	ori	t8,t5,0xff
 9e8:	ac580004 	sw	t8,4(v0)
 9ec:	8ce20000 	lw	v0,0(a3)
 9f0:	3c0eda38 	lui	t6,0xda38
 9f4:	35ce0003 	ori	t6,t6,0x3
 9f8:	244c0008 	addiu	t4,v0,8
 9fc:	acec0000 	sw	t4,0(a3)
 a00:	ac4e0000 	sw	t6,0(v0)
 a04:	8fb90068 	lw	t9,104(sp)
 a08:	3c050000 	lui	a1,0x0
 a0c:	24a50000 	addiu	a1,a1,0
 a10:	8f240000 	lw	a0,0(t9)
 a14:	a3ab005e 	sb	t3,94(sp)
 a18:	a3aa005d 	sb	t2,93(sp)
 a1c:	a3a9005c 	sb	t1,92(sp)
 a20:	2406020b 	li	a2,523
 a24:	0c000000 	jal	0 <EnPoDesert_Init>
 a28:	afa20044 	sw	v0,68(sp)
 a2c:	8fa30044 	lw	v1,68(sp)
 a30:	8fa7007c 	lw	a3,124(sp)
 a34:	8fa80078 	lw	t0,120(sp)
 a38:	93a9005c 	lbu	t1,92(sp)
 a3c:	93aa005d 	lbu	t2,93(sp)
 a40:	93ab005e 	lbu	t3,94(sp)
 a44:	ac620004 	sw	v0,4(v1)
 a48:	8ce20000 	lw	v0,0(a3)
 a4c:	3c0d0600 	lui	t5,0x600
 a50:	25ad4ba0 	addiu	t5,t5,19360
 a54:	244f0008 	addiu	t7,v0,8
 a58:	acef0000 	sw	t7,0(a3)
 a5c:	3c04de00 	lui	a0,0xde00
 a60:	ac440000 	sw	a0,0(v0)
 a64:	ac4d0004 	sw	t5,4(v0)
 a68:	8ce20000 	lw	v0,0(a3)
 a6c:	3c0c0600 	lui	t4,0x600
 a70:	258c4cc0 	addiu	t4,t4,19648
 a74:	24580008 	addiu	t8,v0,8
 a78:	acf80000 	sw	t8,0(a3)
 a7c:	ac4c0004 	sw	t4,4(v0)
 a80:	ac440000 	sw	a0,0(v0)
 a84:	8ce20000 	lw	v0,0(a3)
 a88:	3c19e700 	lui	t9,0xe700
 a8c:	3c0dfb00 	lui	t5,0xfb00
 a90:	244e0008 	addiu	t6,v0,8
 a94:	acee0000 	sw	t6,0(a3)
 a98:	ac400004 	sw	zero,4(v0)
 a9c:	ac590000 	sw	t9,0(v0)
 aa0:	8ce20000 	lw	v0,0(a3)
 aa4:	244f0008 	addiu	t7,v0,8
 aa8:	acef0000 	sw	t7,0(a3)
 aac:	ac4d0000 	sw	t5,0(v0)
 ab0:	910f0221 	lbu	t7,545(t0)
 ab4:	910c0220 	lbu	t4,544(t0)
 ab8:	91190222 	lbu	t9,546(t0)
 abc:	000f6c00 	sll	t5,t7,0x10
 ac0:	000c7600 	sll	t6,t4,0x18
 ac4:	910c0223 	lbu	t4,547(t0)
 ac8:	01cdc025 	or	t8,t6,t5
 acc:	00197a00 	sll	t7,t9,0x8
 ad0:	030f7025 	or	t6,t8,t7
 ad4:	01ccc825 	or	t9,t6,t4
 ad8:	ac590004 	sw	t9,4(v0)
 adc:	c7aa0050 	lwc1	$f10,80(sp)
 ae0:	c7b20054 	lwc1	$f18,84(sp)
 ae4:	c7a60058 	lwc1	$f6,88(sp)
 ae8:	4600540d 	trunc.w.s	$f16,$f10
 aec:	240e00c8 	li	t6,200
 af0:	afae001c 	sw	t6,28(sp)
 af4:	4600910d 	trunc.w.s	$f4,$f18
 af8:	44058000 	mfc1	a1,$f16
 afc:	25040228 	addiu	a0,t0,552
 b00:	4600320d 	trunc.w.s	$f8,$f6
 b04:	44062000 	mfc1	a2,$f4
 b08:	00052c00 	sll	a1,a1,0x10
 b0c:	00052c03 	sra	a1,a1,0x10
 b10:	44074000 	mfc1	a3,$f8
 b14:	00063400 	sll	a2,a2,0x10
 b18:	00063403 	sra	a2,a2,0x10
 b1c:	00073c00 	sll	a3,a3,0x10
 b20:	00073c03 	sra	a3,a3,0x10
 b24:	afa90010 	sw	t1,16(sp)
 b28:	afaa0014 	sw	t2,20(sp)
 b2c:	0c000000 	jal	0 <EnPoDesert_Init>
 b30:	afab0018 	sw	t3,24(sp)
 b34:	8fbf0024 	lw	ra,36(sp)
 b38:	27bd0068 	addiu	sp,sp,104
 b3c:	03e00008 	jr	ra
 b40:	00000000 	nop

00000b44 <EnPoDesert_Draw>:
 b44:	27bdff98 	addiu	sp,sp,-104
 b48:	afb20030 	sw	s2,48(sp)
 b4c:	00a09025 	move	s2,a1
 b50:	afbf0034 	sw	ra,52(sp)
 b54:	afb1002c 	sw	s1,44(sp)
 b58:	afb00028 	sw	s0,40(sp)
 b5c:	8ca50000 	lw	a1,0(a1)
 b60:	00808825 	move	s1,a0
 b64:	3c060000 	lui	a2,0x0
 b68:	24c60000 	addiu	a2,a2,0
 b6c:	27a40050 	addiu	a0,sp,80
 b70:	2407022f 	li	a3,559
 b74:	0c000000 	jal	0 <EnPoDesert_Init>
 b78:	00a08025 	move	s0,a1
 b7c:	0c000000 	jal	0 <EnPoDesert_Init>
 b80:	8e440000 	lw	a0,0(s2)
 b84:	8e0202d0 	lw	v0,720(s0)
 b88:	3c0fdb06 	lui	t7,0xdb06
 b8c:	35ef0028 	ori	t7,t7,0x28
 b90:	244e0008 	addiu	t6,v0,8
 b94:	ae0e02d0 	sw	t6,720(s0)
 b98:	ac4f0000 	sw	t7,0(v0)
 b9c:	8e440000 	lw	a0,0(s2)
 ba0:	241800ff 	li	t8,255
 ba4:	afb80010 	sw	t8,16(sp)
 ba8:	240500ff 	li	a1,255
 bac:	24060055 	li	a2,85
 bb0:	00003825 	move	a3,zero
 bb4:	0c000000 	jal	0 <EnPoDesert_Init>
 bb8:	afa2004c 	sw	v0,76(sp)
 bbc:	8fa3004c 	lw	v1,76(sp)
 bc0:	3c08db06 	lui	t0,0xdb06
 bc4:	35080020 	ori	t0,t0,0x20
 bc8:	ac620004 	sw	v0,4(v1)
 bcc:	8e0202d0 	lw	v0,720(s0)
 bd0:	24590008 	addiu	t9,v0,8
 bd4:	ae1902d0 	sw	t9,720(s0)
 bd8:	ac480000 	sw	t0,0(v0)
 bdc:	92290223 	lbu	t1,547(s1)
 be0:	92270222 	lbu	a3,546(s1)
 be4:	92260221 	lbu	a2,545(s1)
 be8:	92250220 	lbu	a1,544(s1)
 bec:	8e440000 	lw	a0,0(s2)
 bf0:	afa20048 	sw	v0,72(sp)
 bf4:	0c000000 	jal	0 <EnPoDesert_Init>
 bf8:	afa90010 	sw	t1,16(sp)
 bfc:	8fa30048 	lw	v1,72(sp)
 c00:	3c0a0000 	lui	t2,0x0
 c04:	254a0000 	addiu	t2,t2,0
 c08:	ac620004 	sw	v0,4(v1)
 c0c:	8e2b0190 	lw	t3,400(s1)
 c10:	02402025 	move	a0,s2
 c14:	3c070000 	lui	a3,0x0
 c18:	154b000b 	bne	t2,t3,c48 <EnPoDesert_Draw+0x104>
 c1c:	3c080000 	lui	t0,0x0
 c20:	8e0202d0 	lw	v0,720(s0)
 c24:	3c0ddb06 	lui	t5,0xdb06
 c28:	3c0e0000 	lui	t6,0x0
 c2c:	244c0008 	addiu	t4,v0,8
 c30:	ae0c02d0 	sw	t4,720(s0)
 c34:	25ce0000 	addiu	t6,t6,0
 c38:	35ad0030 	ori	t5,t5,0x30
 c3c:	ac4d0000 	sw	t5,0(v0)
 c40:	1000000a 	b	c6c <EnPoDesert_Draw+0x128>
 c44:	ac4e0004 	sw	t6,4(v0)
 c48:	8e0202d0 	lw	v0,720(s0)
 c4c:	3c18db06 	lui	t8,0xdb06
 c50:	3c190000 	lui	t9,0x0
 c54:	244f0008 	addiu	t7,v0,8
 c58:	ae0f02d0 	sw	t7,720(s0)
 c5c:	27390010 	addiu	t9,t9,16
 c60:	37180030 	ori	t8,t8,0x30
 c64:	ac580000 	sw	t8,0(v0)
 c68:	ac590004 	sw	t9,4(v0)
 c6c:	8e250150 	lw	a1,336(s1)
 c70:	8e26016c 	lw	a2,364(s1)
 c74:	25080000 	addiu	t0,t0,0
 c78:	afa80010 	sw	t0,16(sp)
 c7c:	afb10014 	sw	s1,20(sp)
 c80:	8e0902d0 	lw	t1,720(s0)
 c84:	24e70000 	addiu	a3,a3,0
 c88:	0c000000 	jal	0 <EnPoDesert_Init>
 c8c:	afa90018 	sw	t1,24(sp)
 c90:	ae0202d0 	sw	v0,720(s0)
 c94:	3c060000 	lui	a2,0x0
 c98:	24c60000 	addiu	a2,a2,0
 c9c:	8e450000 	lw	a1,0(s2)
 ca0:	27a40050 	addiu	a0,sp,80
 ca4:	0c000000 	jal	0 <EnPoDesert_Init>
 ca8:	24070255 	li	a3,597
 cac:	8fbf0034 	lw	ra,52(sp)
 cb0:	8fb00028 	lw	s0,40(sp)
 cb4:	8fb1002c 	lw	s1,44(sp)
 cb8:	8fb20030 	lw	s2,48(sp)
 cbc:	03e00008 	jr	ra
 cc0:	27bd0068 	addiu	sp,sp,104
	...
