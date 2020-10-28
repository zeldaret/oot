
build/src/overlays/actors/ovl_Bg_Toki_Hikari/z_bg_toki_hikari.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgTokiHikari_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa5001c 	sw	a1,28(sp)
   c:	8482001c 	lh	v0,28(a0)
  10:	3c050000 	lui	a1,0x0
  14:	24010001 	li	at,1
  18:	10400005 	beqz	v0,30 <BgTokiHikari_Init+0x30>
  1c:	24a50000 	addiu	a1,a1,0
  20:	1041000a 	beq	v0,at,4c <BgTokiHikari_Init+0x4c>
  24:	3c0f0000 	lui	t7,0x0
  28:	10000015 	b	80 <BgTokiHikari_Init+0x80>
  2c:	8fbf0014 	lw	ra,20(sp)
  30:	0c000000 	jal	0 <BgTokiHikari_Init>
  34:	afa40018 	sw	a0,24(sp)
  38:	8fa40018 	lw	a0,24(sp)
  3c:	3c0e0000 	lui	t6,0x0
  40:	25ce0000 	addiu	t6,t6,0
  44:	1000000d 	b	7c <BgTokiHikari_Init+0x7c>
  48:	ac8e0150 	sw	t6,336(a0)
  4c:	95ef0edc 	lhu	t7,3804(t7)
  50:	3c190000 	lui	t9,0x0
  54:	27390000 	addiu	t9,t9,0
  58:	31f80800 	andi	t8,t7,0x800
  5c:	17000005 	bnez	t8,74 <BgTokiHikari_Init+0x74>
  60:	00000000 	nop
  64:	44802000 	mtc1	zero,$f4
  68:	ac990150 	sw	t9,336(a0)
  6c:	10000003 	b	7c <BgTokiHikari_Init+0x7c>
  70:	e484014c 	swc1	$f4,332(a0)
  74:	0c000000 	jal	0 <BgTokiHikari_Init>
  78:	00000000 	nop
  7c:	8fbf0014 	lw	ra,20(sp)
  80:	27bd0018 	addiu	sp,sp,24
  84:	03e00008 	jr	ra
  88:	00000000 	nop

0000008c <BgTokiHikari_Destroy>:
  8c:	afa40000 	sw	a0,0(sp)
  90:	03e00008 	jr	ra
  94:	afa50004 	sw	a1,4(sp)

00000098 <func_808B9F98>:
  98:	afa40000 	sw	a0,0(sp)
  9c:	03e00008 	jr	ra
  a0:	afa50004 	sw	a1,4(sp)

000000a4 <BgTokiHikari_Update>:
  a4:	27bdffe8 	addiu	sp,sp,-24
  a8:	afbf0014 	sw	ra,20(sp)
  ac:	8c990150 	lw	t9,336(a0)
  b0:	0320f809 	jalr	t9
  b4:	00000000 	nop
  b8:	8fbf0014 	lw	ra,20(sp)
  bc:	27bd0018 	addiu	sp,sp,24
  c0:	03e00008 	jr	ra
  c4:	00000000 	nop

000000c8 <BgTokiHikari_Draw>:
  c8:	27bdffe8 	addiu	sp,sp,-24
  cc:	afbf0014 	sw	ra,20(sp)
  d0:	8482001c 	lh	v0,28(a0)
  d4:	24010001 	li	at,1
  d8:	10400005 	beqz	v0,f0 <BgTokiHikari_Draw+0x28>
  dc:	00000000 	nop
  e0:	10410007 	beq	v0,at,100 <BgTokiHikari_Draw+0x38>
  e4:	00000000 	nop
  e8:	10000008 	b	10c <BgTokiHikari_Draw+0x44>
  ec:	8fbf0014 	lw	ra,20(sp)
  f0:	0c000000 	jal	0 <BgTokiHikari_Init>
  f4:	00000000 	nop
  f8:	10000004 	b	10c <BgTokiHikari_Draw+0x44>
  fc:	8fbf0014 	lw	ra,20(sp)
 100:	0c000000 	jal	0 <BgTokiHikari_Init>
 104:	00000000 	nop
 108:	8fbf0014 	lw	ra,20(sp)
 10c:	27bd0018 	addiu	sp,sp,24
 110:	03e00008 	jr	ra
 114:	00000000 	nop

00000118 <func_808BA018>:
 118:	27bdff98 	addiu	sp,sp,-104
 11c:	afb10020 	sw	s1,32(sp)
 120:	00a08825 	move	s1,a1
 124:	afbf0024 	sw	ra,36(sp)
 128:	afb0001c 	sw	s0,28(sp)
 12c:	afa40068 	sw	a0,104(sp)
 130:	8ca50000 	lw	a1,0(a1)
 134:	3c060000 	lui	a2,0x0
 138:	24c60000 	addiu	a2,a2,0
 13c:	27a40050 	addiu	a0,sp,80
 140:	240700f6 	li	a3,246
 144:	0c000000 	jal	0 <BgTokiHikari_Init>
 148:	00a08025 	move	s0,a1
 14c:	0c000000 	jal	0 <BgTokiHikari_Init>
 150:	8e240000 	lw	a0,0(s1)
 154:	8e0202c0 	lw	v0,704(s0)
 158:	3c0fda38 	lui	t7,0xda38
 15c:	35ef0003 	ori	t7,t7,0x3
 160:	244e0008 	addiu	t6,v0,8
 164:	ae0e02c0 	sw	t6,704(s0)
 168:	ac4f0000 	sw	t7,0(v0)
 16c:	8e240000 	lw	a0,0(s1)
 170:	3c050000 	lui	a1,0x0
 174:	24a50000 	addiu	a1,a1,0
 178:	240600fc 	li	a2,252
 17c:	0c000000 	jal	0 <BgTokiHikari_Init>
 180:	afa2004c 	sw	v0,76(sp)
 184:	8fa3004c 	lw	v1,76(sp)
 188:	3c180000 	lui	t8,0x0
 18c:	3c09de00 	lui	t1,0xde00
 190:	ac620004 	sw	v0,4(v1)
 194:	8f180004 	lw	t8,4(t8)
 198:	3c0cde00 	lui	t4,0xde00
 19c:	5700000a 	bnezl	t8,1c8 <func_808BA018+0xb0>
 1a0:	8e0202c0 	lw	v0,704(s0)
 1a4:	8e0202c0 	lw	v0,704(s0)
 1a8:	3c0a0601 	lui	t2,0x601
 1ac:	254a8190 	addiu	t2,t2,-32368
 1b0:	24590008 	addiu	t9,v0,8
 1b4:	ae1902c0 	sw	t9,704(s0)
 1b8:	ac4a0004 	sw	t2,4(v0)
 1bc:	10000046 	b	2d8 <func_808BA018+0x1c0>
 1c0:	ac490000 	sw	t1,0(v0)
 1c4:	8e0202c0 	lw	v0,704(s0)
 1c8:	3c0d0600 	lui	t5,0x600
 1cc:	25ad7e20 	addiu	t5,t5,32288
 1d0:	244b0008 	addiu	t3,v0,8
 1d4:	ae0b02c0 	sw	t3,704(s0)
 1d8:	ac4d0004 	sw	t5,4(v0)
 1dc:	ac4c0000 	sw	t4,0(v0)
 1e0:	0c000000 	jal	0 <BgTokiHikari_Init>
 1e4:	8e240000 	lw	a0,0(s1)
 1e8:	8e0202d0 	lw	v0,720(s0)
 1ec:	3c0fdb06 	lui	t7,0xdb06
 1f0:	35ef0020 	ori	t7,t7,0x20
 1f4:	244e0008 	addiu	t6,v0,8
 1f8:	ae0e02d0 	sw	t6,720(s0)
 1fc:	3c010001 	lui	at,0x1
 200:	02214021 	addu	t0,s1,at
 204:	ac4f0000 	sw	t7,0(v0)
 208:	8d061de4 	lw	a2,7652(t0)
 20c:	8e240000 	lw	a0,0(s1)
 210:	24180020 	li	t8,32
 214:	afb80010 	sw	t8,16(sp)
 218:	afa80030 	sw	t0,48(sp)
 21c:	00002825 	move	a1,zero
 220:	24070040 	li	a3,64
 224:	afa20040 	sw	v0,64(sp)
 228:	0c000000 	jal	0 <BgTokiHikari_Init>
 22c:	30c6007f 	andi	a2,a2,0x7f
 230:	8fa30040 	lw	v1,64(sp)
 234:	8fa80030 	lw	t0,48(sp)
 238:	3c09db06 	lui	t1,0xdb06
 23c:	ac620004 	sw	v0,4(v1)
 240:	8e0202d0 	lw	v0,720(s0)
 244:	35290024 	ori	t1,t1,0x24
 248:	240a0020 	li	t2,32
 24c:	24590008 	addiu	t9,v0,8
 250:	ae1902d0 	sw	t9,720(s0)
 254:	ac490000 	sw	t1,0(v0)
 258:	8d061de4 	lw	a2,7652(t0)
 25c:	8e240000 	lw	a0,0(s1)
 260:	afaa0010 	sw	t2,16(sp)
 264:	00002825 	move	a1,zero
 268:	24070040 	li	a3,64
 26c:	afa2003c 	sw	v0,60(sp)
 270:	0c000000 	jal	0 <BgTokiHikari_Init>
 274:	30c6007f 	andi	a2,a2,0x7f
 278:	8fa3003c 	lw	v1,60(sp)
 27c:	3c0cda38 	lui	t4,0xda38
 280:	358c0003 	ori	t4,t4,0x3
 284:	ac620004 	sw	v0,4(v1)
 288:	8e0202d0 	lw	v0,720(s0)
 28c:	3c050000 	lui	a1,0x0
 290:	24a50000 	addiu	a1,a1,0
 294:	244b0008 	addiu	t3,v0,8
 298:	ae0b02d0 	sw	t3,720(s0)
 29c:	ac4c0000 	sw	t4,0(v0)
 2a0:	8e240000 	lw	a0,0(s1)
 2a4:	24060116 	li	a2,278
 2a8:	0c000000 	jal	0 <BgTokiHikari_Init>
 2ac:	afa20038 	sw	v0,56(sp)
 2b0:	8fa30038 	lw	v1,56(sp)
 2b4:	3c0f0600 	lui	t7,0x600
 2b8:	25ef7ee0 	addiu	t7,t7,32480
 2bc:	ac620004 	sw	v0,4(v1)
 2c0:	8e0202d0 	lw	v0,720(s0)
 2c4:	3c0ede00 	lui	t6,0xde00
 2c8:	244d0008 	addiu	t5,v0,8
 2cc:	ae0d02d0 	sw	t5,720(s0)
 2d0:	ac4f0004 	sw	t7,4(v0)
 2d4:	ac4e0000 	sw	t6,0(v0)
 2d8:	3c060000 	lui	a2,0x0
 2dc:	24c60000 	addiu	a2,a2,0
 2e0:	27a40050 	addiu	a0,sp,80
 2e4:	8e250000 	lw	a1,0(s1)
 2e8:	0c000000 	jal	0 <BgTokiHikari_Init>
 2ec:	2407011c 	li	a3,284
 2f0:	8fbf0024 	lw	ra,36(sp)
 2f4:	8fb0001c 	lw	s0,28(sp)
 2f8:	8fb10020 	lw	s1,32(sp)
 2fc:	03e00008 	jr	ra
 300:	27bd0068 	addiu	sp,sp,104

00000304 <func_808BA204>:
 304:	3c0e0001 	lui	t6,0x1
 308:	01c57021 	addu	t6,t6,a1
 30c:	85ce1d32 	lh	t6,7474(t6)
 310:	3c0f0000 	lui	t7,0x0
 314:	25ef0000 	addiu	t7,t7,0
 318:	11c00002 	beqz	t6,324 <func_808BA204+0x20>
 31c:	00000000 	nop
 320:	ac8f0150 	sw	t7,336(a0)
 324:	03e00008 	jr	ra
 328:	00000000 	nop

0000032c <func_808BA22C>:
 32c:	afa50004 	sw	a1,4(sp)
 330:	3c013f80 	lui	at,0x3f80
 334:	44811000 	mtc1	at,$f2
 338:	c480014c 	lwc1	$f0,332(a0)
 33c:	3c0e0000 	lui	t6,0x0
 340:	3c010000 	lui	at,0x0
 344:	4602003c 	c.lt.s	$f0,$f2
 348:	25ce0000 	addiu	t6,t6,0
 34c:	45020006 	bc1fl	368 <func_808BA22C+0x3c>
 350:	e482014c 	swc1	$f2,332(a0)
 354:	c4240000 	lwc1	$f4,0(at)
 358:	46040180 	add.s	$f6,$f0,$f4
 35c:	03e00008 	jr	ra
 360:	e486014c 	swc1	$f6,332(a0)
 364:	e482014c 	swc1	$f2,332(a0)
 368:	ac8e0150 	sw	t6,336(a0)
 36c:	03e00008 	jr	ra
 370:	00000000 	nop

00000374 <func_808BA274>:
 374:	27bdffe8 	addiu	sp,sp,-24
 378:	afbf0014 	sw	ra,20(sp)
 37c:	afa5001c 	sw	a1,28(sp)
 380:	3c010000 	lui	at,0x0
 384:	c4240000 	lwc1	$f4,0(at)
 388:	c480014c 	lwc1	$f0,332(a0)
 38c:	3c010000 	lui	at,0x0
 390:	4600203c 	c.lt.s	$f4,$f0
 394:	00000000 	nop
 398:	45020006 	bc1fl	3b4 <func_808BA274+0x40>
 39c:	44805000 	mtc1	zero,$f10
 3a0:	c4260000 	lwc1	$f6,0(at)
 3a4:	46060201 	sub.s	$f8,$f0,$f6
 3a8:	10000004 	b	3bc <func_808BA274+0x48>
 3ac:	e488014c 	swc1	$f8,332(a0)
 3b0:	44805000 	mtc1	zero,$f10
 3b4:	0c000000 	jal	0 <BgTokiHikari_Init>
 3b8:	e48a014c 	swc1	$f10,332(a0)
 3bc:	8fbf0014 	lw	ra,20(sp)
 3c0:	27bd0018 	addiu	sp,sp,24
 3c4:	03e00008 	jr	ra
 3c8:	00000000 	nop

000003cc <func_808BA2CC>:
 3cc:	27bdff58 	addiu	sp,sp,-168
 3d0:	afbf003c 	sw	ra,60(sp)
 3d4:	afb00038 	sw	s0,56(sp)
 3d8:	afa400a8 	sw	a0,168(sp)
 3dc:	afa500ac 	sw	a1,172(sp)
 3e0:	8ca50000 	lw	a1,0(a1)
 3e4:	3c060000 	lui	a2,0x0
 3e8:	24c60000 	addiu	a2,a2,0
 3ec:	27a4008c 	addiu	a0,sp,140
 3f0:	2407015e 	li	a3,350
 3f4:	0c000000 	jal	0 <BgTokiHikari_Init>
 3f8:	00a08025 	move	s0,a1
 3fc:	3c01438a 	lui	at,0x438a
 400:	44817000 	mtc1	at,$f14
 404:	44806000 	mtc1	zero,$f12
 408:	3c06448c 	lui	a2,0x448c
 40c:	34c64000 	ori	a2,a2,0x4000
 410:	0c000000 	jal	0 <BgTokiHikari_Init>
 414:	00003825 	move	a3,zero
 418:	8faf00a8 	lw	t7,168(sp)
 41c:	3c010000 	lui	at,0x0
 420:	c42c0000 	lwc1	$f12,0(at)
 424:	3c0140e0 	lui	at,0x40e0
 428:	44813000 	mtc1	at,$f6
 42c:	c5e4014c 	lwc1	$f4,332(t7)
 430:	24070001 	li	a3,1
 434:	46006386 	mov.s	$f14,$f12
 438:	46062202 	mul.s	$f8,$f4,$f6
 43c:	44064000 	mfc1	a2,$f8
 440:	0c000000 	jal	0 <BgTokiHikari_Init>
 444:	00000000 	nop
 448:	3c010000 	lui	at,0x0
 44c:	c42c0000 	lwc1	$f12,0(at)
 450:	0c000000 	jal	0 <BgTokiHikari_Init>
 454:	24050001 	li	a1,1
 458:	8fb800ac 	lw	t8,172(sp)
 45c:	0c000000 	jal	0 <BgTokiHikari_Init>
 460:	8f040000 	lw	a0,0(t8)
 464:	0c000000 	jal	0 <BgTokiHikari_Init>
 468:	00000000 	nop
 46c:	8e0202d0 	lw	v0,720(s0)
 470:	3c0ae700 	lui	t2,0xe700
 474:	3c01431b 	lui	at,0x431b
 478:	24590008 	addiu	t9,v0,8
 47c:	ae1902d0 	sw	t9,720(s0)
 480:	ac400004 	sw	zero,4(v0)
 484:	ac4a0000 	sw	t2,0(v0)
 488:	8e0402d0 	lw	a0,720(s0)
 48c:	8fa700a8 	lw	a3,168(sp)
 490:	3c0cfa00 	lui	t4,0xfa00
 494:	248b0008 	addiu	t3,a0,8
 498:	ae0b02d0 	sw	t3,720(s0)
 49c:	358c0080 	ori	t4,t4,0x80
 4a0:	44811000 	mtc1	at,$f2
 4a4:	3c01437f 	lui	at,0x437f
 4a8:	ac8c0000 	sw	t4,0(a0)
 4ac:	44816000 	mtc1	at,$f12
 4b0:	c4e0014c 	lwc1	$f0,332(a3)
 4b4:	24030001 	li	v1,1
 4b8:	3c050000 	lui	a1,0x0
 4bc:	460c0282 	mul.s	$f10,$f0,$f12
 4c0:	444df800 	cfc1	t5,$31
 4c4:	44c3f800 	ctc1	v1,$31
 4c8:	00000000 	nop
 4cc:	46005424 	cvt.w.s	$f16,$f10
 4d0:	4443f800 	cfc1	v1,$31
 4d4:	00000000 	nop
 4d8:	30630078 	andi	v1,v1,0x78
 4dc:	10600012 	beqz	v1,528 <func_808BA2CC+0x15c>
 4e0:	3c014f00 	lui	at,0x4f00
 4e4:	44818000 	mtc1	at,$f16
 4e8:	24030001 	li	v1,1
 4ec:	46105401 	sub.s	$f16,$f10,$f16
 4f0:	44c3f800 	ctc1	v1,$31
 4f4:	00000000 	nop
 4f8:	46008424 	cvt.w.s	$f16,$f16
 4fc:	4443f800 	cfc1	v1,$31
 500:	00000000 	nop
 504:	30630078 	andi	v1,v1,0x78
 508:	14600005 	bnez	v1,520 <func_808BA2CC+0x154>
 50c:	00000000 	nop
 510:	44038000 	mfc1	v1,$f16
 514:	3c018000 	lui	at,0x8000
 518:	10000007 	b	538 <func_808BA2CC+0x16c>
 51c:	00611825 	or	v1,v1,at
 520:	10000005 	b	538 <func_808BA2CC+0x16c>
 524:	2403ffff 	li	v1,-1
 528:	44038000 	mfc1	v1,$f16
 52c:	00000000 	nop
 530:	0460fffb 	bltz	v1,520 <func_808BA2CC+0x154>
 534:	00000000 	nop
 538:	44cdf800 	ctc1	t5,$31
 53c:	24180001 	li	t8,1
 540:	306300ff 	andi	v1,v1,0xff
 544:	46001482 	mul.s	$f18,$f2,$f0
 548:	00037600 	sll	t6,v1,0x18
 54c:	444ff800 	cfc1	t7,$31
 550:	44d8f800 	ctc1	t8,$31
 554:	00000000 	nop
 558:	46009124 	cvt.w.s	$f4,$f18
 55c:	4458f800 	cfc1	t8,$31
 560:	00000000 	nop
 564:	33180078 	andi	t8,t8,0x78
 568:	13000012 	beqz	t8,5b4 <func_808BA2CC+0x1e8>
 56c:	3c014f00 	lui	at,0x4f00
 570:	44812000 	mtc1	at,$f4
 574:	24180001 	li	t8,1
 578:	46049101 	sub.s	$f4,$f18,$f4
 57c:	44d8f800 	ctc1	t8,$31
 580:	00000000 	nop
 584:	46002124 	cvt.w.s	$f4,$f4
 588:	4458f800 	cfc1	t8,$31
 58c:	00000000 	nop
 590:	33180078 	andi	t8,t8,0x78
 594:	17000005 	bnez	t8,5ac <func_808BA2CC+0x1e0>
 598:	00000000 	nop
 59c:	44182000 	mfc1	t8,$f4
 5a0:	3c018000 	lui	at,0x8000
 5a4:	10000007 	b	5c4 <func_808BA2CC+0x1f8>
 5a8:	0301c025 	or	t8,t8,at
 5ac:	10000005 	b	5c4 <func_808BA2CC+0x1f8>
 5b0:	2418ffff 	li	t8,-1
 5b4:	44182000 	mfc1	t8,$f4
 5b8:	00000000 	nop
 5bc:	0700fffb 	bltz	t8,5ac <func_808BA2CC+0x1e0>
 5c0:	00000000 	nop
 5c4:	0300c825 	move	t9,t8
 5c8:	272a0064 	addiu	t2,t9,100
 5cc:	314b00ff 	andi	t3,t2,0xff
 5d0:	44cff800 	ctc1	t7,$31
 5d4:	000b6400 	sll	t4,t3,0x10
 5d8:	01cc6825 	or	t5,t6,t4
 5dc:	00037a00 	sll	t7,v1,0x8
 5e0:	01afc025 	or	t8,t5,t7
 5e4:	0303c825 	or	t9,t8,v1
 5e8:	ac990004 	sw	t9,4(a0)
 5ec:	8e0302d0 	lw	v1,720(s0)
 5f0:	3c0bfb00 	lui	t3,0xfb00
 5f4:	240c0001 	li	t4,1
 5f8:	246a0008 	addiu	t2,v1,8
 5fc:	ae0a02d0 	sw	t2,720(s0)
 600:	ac6b0000 	sw	t3,0(v1)
 604:	c4e0014c 	lwc1	$f0,332(a3)
 608:	46020182 	mul.s	$f6,$f0,$f2
 60c:	444ef800 	cfc1	t6,$31
 610:	44ccf800 	ctc1	t4,$31
 614:	00000000 	nop
 618:	46003224 	cvt.w.s	$f8,$f6
 61c:	444cf800 	cfc1	t4,$31
 620:	00000000 	nop
 624:	318c0078 	andi	t4,t4,0x78
 628:	11800012 	beqz	t4,674 <func_808BA2CC+0x2a8>
 62c:	3c014f00 	lui	at,0x4f00
 630:	44814000 	mtc1	at,$f8
 634:	240c0001 	li	t4,1
 638:	46083201 	sub.s	$f8,$f6,$f8
 63c:	44ccf800 	ctc1	t4,$31
 640:	00000000 	nop
 644:	46004224 	cvt.w.s	$f8,$f8
 648:	444cf800 	cfc1	t4,$31
 64c:	00000000 	nop
 650:	318c0078 	andi	t4,t4,0x78
 654:	15800005 	bnez	t4,66c <func_808BA2CC+0x2a0>
 658:	00000000 	nop
 65c:	440c4000 	mfc1	t4,$f8
 660:	3c018000 	lui	at,0x8000
 664:	10000007 	b	684 <func_808BA2CC+0x2b8>
 668:	01816025 	or	t4,t4,at
 66c:	10000005 	b	684 <func_808BA2CC+0x2b8>
 670:	240cffff 	li	t4,-1
 674:	440c4000 	mfc1	t4,$f8
 678:	00000000 	nop
 67c:	0580fffb 	bltz	t4,66c <func_808BA2CC+0x2a0>
 680:	00000000 	nop
 684:	44cef800 	ctc1	t6,$31
 688:	240b0001 	li	t3,1
 68c:	25980064 	addiu	t8,t4,100
 690:	46006282 	mul.s	$f10,$f12,$f0
 694:	0018ce00 	sll	t9,t8,0x18
 698:	444af800 	cfc1	t2,$31
 69c:	44cbf800 	ctc1	t3,$31
 6a0:	00000000 	nop
 6a4:	46005424 	cvt.w.s	$f16,$f10
 6a8:	444bf800 	cfc1	t3,$31
 6ac:	00000000 	nop
 6b0:	316b0078 	andi	t3,t3,0x78
 6b4:	11600012 	beqz	t3,700 <func_808BA2CC+0x334>
 6b8:	3c014f00 	lui	at,0x4f00
 6bc:	44818000 	mtc1	at,$f16
 6c0:	240b0001 	li	t3,1
 6c4:	46105401 	sub.s	$f16,$f10,$f16
 6c8:	44cbf800 	ctc1	t3,$31
 6cc:	00000000 	nop
 6d0:	46008424 	cvt.w.s	$f16,$f16
 6d4:	444bf800 	cfc1	t3,$31
 6d8:	00000000 	nop
 6dc:	316b0078 	andi	t3,t3,0x78
 6e0:	15600005 	bnez	t3,6f8 <func_808BA2CC+0x32c>
 6e4:	00000000 	nop
 6e8:	440b8000 	mfc1	t3,$f16
 6ec:	3c018000 	lui	at,0x8000
 6f0:	10000007 	b	710 <func_808BA2CC+0x344>
 6f4:	01615825 	or	t3,t3,at
 6f8:	10000005 	b	710 <func_808BA2CC+0x344>
 6fc:	240bffff 	li	t3,-1
 700:	440b8000 	mfc1	t3,$f16
 704:	00000000 	nop
 708:	0560fffb 	bltz	t3,6f8 <func_808BA2CC+0x32c>
 70c:	00000000 	nop
 710:	01607025 	move	t6,t3
 714:	31cc00ff 	andi	t4,t6,0xff
 718:	000c6c00 	sll	t5,t4,0x10
 71c:	032d7825 	or	t7,t9,t5
 720:	35f80080 	ori	t8,t7,0x80
 724:	ac780004 	sw	t8,4(v1)
 728:	8e0202d0 	lw	v0,720(s0)
 72c:	44caf800 	ctc1	t2,$31
 730:	3c0bda38 	lui	t3,0xda38
 734:	244a0008 	addiu	t2,v0,8
 738:	ae0a02d0 	sw	t2,720(s0)
 73c:	356b0003 	ori	t3,t3,0x3
 740:	ac4b0000 	sw	t3,0(v0)
 744:	8fae00ac 	lw	t6,172(sp)
 748:	24a50000 	addiu	a1,a1,0
 74c:	2406017e 	li	a2,382
 750:	8dc40000 	lw	a0,0(t6)
 754:	0c000000 	jal	0 <BgTokiHikari_Init>
 758:	afa2007c 	sw	v0,124(sp)
 75c:	8fa3007c 	lw	v1,124(sp)
 760:	3c19db06 	lui	t9,0xdb06
 764:	37390020 	ori	t9,t9,0x20
 768:	ac620004 	sw	v0,4(v1)
 76c:	8e0202d0 	lw	v0,720(s0)
 770:	8fa900ac 	lw	t1,172(sp)
 774:	3c030001 	lui	v1,0x1
 778:	244c0008 	addiu	t4,v0,8
 77c:	ae0c02d0 	sw	t4,720(s0)
 780:	ac590000 	sw	t9,0(v0)
 784:	00691821 	addu	v1,v1,t1
 788:	8c631de4 	lw	v1,7652(v1)
 78c:	8d240000 	lw	a0,0(t1)
 790:	240d0020 	li	t5,32
 794:	3063007f 	andi	v1,v1,0x7f
 798:	00030823 	negu	at,v1
 79c:	00035080 	sll	t2,v1,0x2
 7a0:	240f0040 	li	t7,64
 7a4:	24180001 	li	t8,1
 7a8:	240b0020 	li	t3,32
 7ac:	240e0040 	li	t6,64
 7b0:	afae0028 	sw	t6,40(sp)
 7b4:	afab0024 	sw	t3,36(sp)
 7b8:	afb80018 	sw	t8,24(sp)
 7bc:	afaf0014 	sw	t7,20(sp)
 7c0:	afaa001c 	sw	t2,28(sp)
 7c4:	00013040 	sll	a2,at,0x1
 7c8:	afad0010 	sw	t5,16(sp)
 7cc:	afa00020 	sw	zero,32(sp)
 7d0:	00002825 	move	a1,zero
 7d4:	00003825 	move	a3,zero
 7d8:	0c000000 	jal	0 <BgTokiHikari_Init>
 7dc:	afa20078 	sw	v0,120(sp)
 7e0:	8fa80078 	lw	t0,120(sp)
 7e4:	3c0d0600 	lui	t5,0x600
 7e8:	25ad0880 	addiu	t5,t5,2176
 7ec:	ad020004 	sw	v0,4(t0)
 7f0:	8e0202d0 	lw	v0,720(s0)
 7f4:	3c19de00 	lui	t9,0xde00
 7f8:	244c0008 	addiu	t4,v0,8
 7fc:	ae0c02d0 	sw	t4,720(s0)
 800:	ac4d0004 	sw	t5,4(v0)
 804:	0c000000 	jal	0 <BgTokiHikari_Init>
 808:	ac590000 	sw	t9,0(v0)
 80c:	0c000000 	jal	0 <BgTokiHikari_Init>
 810:	00000000 	nop
 814:	8e0202d0 	lw	v0,720(s0)
 818:	3c18e700 	lui	t8,0xe700
 81c:	3c0bfa00 	lui	t3,0xfa00
 820:	244f0008 	addiu	t7,v0,8
 824:	ae0f02d0 	sw	t7,720(s0)
 828:	ac400004 	sw	zero,4(v0)
 82c:	ac580000 	sw	t8,0(v0)
 830:	8e0302d0 	lw	v1,720(s0)
 834:	8fa700a8 	lw	a3,168(sp)
 838:	3c014348 	lui	at,0x4348
 83c:	246a0008 	addiu	t2,v1,8
 840:	ae0a02d0 	sw	t2,720(s0)
 844:	ac6b0000 	sw	t3,0(v1)
 848:	44811000 	mtc1	at,$f2
 84c:	c4f2014c 	lwc1	$f18,332(a3)
 850:	240c0001 	li	t4,1
 854:	3c0afb00 	lui	t2,0xfb00
 858:	46029102 	mul.s	$f4,$f18,$f2
 85c:	3c050000 	lui	a1,0x0
 860:	444ef800 	cfc1	t6,$31
 864:	44ccf800 	ctc1	t4,$31
 868:	00000000 	nop
 86c:	460021a4 	cvt.w.s	$f6,$f4
 870:	444cf800 	cfc1	t4,$31
 874:	00000000 	nop
 878:	318c0078 	andi	t4,t4,0x78
 87c:	11800012 	beqz	t4,8c8 <func_808BA2CC+0x4fc>
 880:	3c014f00 	lui	at,0x4f00
 884:	44813000 	mtc1	at,$f6
 888:	240c0001 	li	t4,1
 88c:	46062181 	sub.s	$f6,$f4,$f6
 890:	44ccf800 	ctc1	t4,$31
 894:	00000000 	nop
 898:	460031a4 	cvt.w.s	$f6,$f6
 89c:	444cf800 	cfc1	t4,$31
 8a0:	00000000 	nop
 8a4:	318c0078 	andi	t4,t4,0x78
 8a8:	15800005 	bnez	t4,8c0 <func_808BA2CC+0x4f4>
 8ac:	00000000 	nop
 8b0:	440c3000 	mfc1	t4,$f6
 8b4:	3c018000 	lui	at,0x8000
 8b8:	10000007 	b	8d8 <func_808BA2CC+0x50c>
 8bc:	01816025 	or	t4,t4,at
 8c0:	10000005 	b	8d8 <func_808BA2CC+0x50c>
 8c4:	240cffff 	li	t4,-1
 8c8:	440c3000 	mfc1	t4,$f6
 8cc:	00000000 	nop
 8d0:	0580fffb 	bltz	t4,8c0 <func_808BA2CC+0x4f4>
 8d4:	00000000 	nop
 8d8:	318d00ff 	andi	t5,t4,0xff
 8dc:	2401ff00 	li	at,-256
 8e0:	01a17825 	or	t7,t5,at
 8e4:	ac6f0004 	sw	t7,4(v1)
 8e8:	8e0402d0 	lw	a0,720(s0)
 8ec:	3c01437f 	lui	at,0x437f
 8f0:	44cef800 	ctc1	t6,$31
 8f4:	24980008 	addiu	t8,a0,8
 8f8:	ae1802d0 	sw	t8,720(s0)
 8fc:	ac8a0000 	sw	t2,0(a0)
 900:	c4e0014c 	lwc1	$f0,332(a3)
 904:	44814000 	mtc1	at,$f8
 908:	24030001 	li	v1,1
 90c:	46080282 	mul.s	$f10,$f0,$f8
 910:	444bf800 	cfc1	t3,$31
 914:	44c3f800 	ctc1	v1,$31
 918:	00000000 	nop
 91c:	46005424 	cvt.w.s	$f16,$f10
 920:	4443f800 	cfc1	v1,$31
 924:	00000000 	nop
 928:	30630078 	andi	v1,v1,0x78
 92c:	10600012 	beqz	v1,978 <func_808BA2CC+0x5ac>
 930:	3c014f00 	lui	at,0x4f00
 934:	44818000 	mtc1	at,$f16
 938:	24030001 	li	v1,1
 93c:	46105401 	sub.s	$f16,$f10,$f16
 940:	44c3f800 	ctc1	v1,$31
 944:	00000000 	nop
 948:	46008424 	cvt.w.s	$f16,$f16
 94c:	4443f800 	cfc1	v1,$31
 950:	00000000 	nop
 954:	30630078 	andi	v1,v1,0x78
 958:	14600005 	bnez	v1,970 <func_808BA2CC+0x5a4>
 95c:	00000000 	nop
 960:	44038000 	mfc1	v1,$f16
 964:	3c018000 	lui	at,0x8000
 968:	10000007 	b	988 <func_808BA2CC+0x5bc>
 96c:	00611825 	or	v1,v1,at
 970:	10000005 	b	988 <func_808BA2CC+0x5bc>
 974:	2403ffff 	li	v1,-1
 978:	44038000 	mfc1	v1,$f16
 97c:	00000000 	nop
 980:	0460fffb 	bltz	v1,970 <func_808BA2CC+0x5a4>
 984:	00000000 	nop
 988:	44cbf800 	ctc1	t3,$31
 98c:	240a0001 	li	t2,1
 990:	306300ff 	andi	v1,v1,0xff
 994:	46001482 	mul.s	$f18,$f2,$f0
 998:	00037600 	sll	t6,v1,0x18
 99c:	00036400 	sll	t4,v1,0x10
 9a0:	01ccc825 	or	t9,t6,t4
 9a4:	00036a00 	sll	t5,v1,0x8
 9a8:	032d7825 	or	t7,t9,t5
 9ac:	3c0dda38 	lui	t5,0xda38
 9b0:	4458f800 	cfc1	t8,$31
 9b4:	44caf800 	ctc1	t2,$31
 9b8:	00000000 	nop
 9bc:	46009124 	cvt.w.s	$f4,$f18
 9c0:	444af800 	cfc1	t2,$31
 9c4:	00000000 	nop
 9c8:	314a0078 	andi	t2,t2,0x78
 9cc:	11400012 	beqz	t2,a18 <func_808BA2CC+0x64c>
 9d0:	3c014f00 	lui	at,0x4f00
 9d4:	44812000 	mtc1	at,$f4
 9d8:	240a0001 	li	t2,1
 9dc:	46049101 	sub.s	$f4,$f18,$f4
 9e0:	44caf800 	ctc1	t2,$31
 9e4:	00000000 	nop
 9e8:	46002124 	cvt.w.s	$f4,$f4
 9ec:	444af800 	cfc1	t2,$31
 9f0:	00000000 	nop
 9f4:	314a0078 	andi	t2,t2,0x78
 9f8:	15400005 	bnez	t2,a10 <func_808BA2CC+0x644>
 9fc:	00000000 	nop
 a00:	440a2000 	mfc1	t2,$f4
 a04:	3c018000 	lui	at,0x8000
 a08:	10000007 	b	a28 <func_808BA2CC+0x65c>
 a0c:	01415025 	or	t2,t2,at
 a10:	10000005 	b	a28 <func_808BA2CC+0x65c>
 a14:	240affff 	li	t2,-1
 a18:	440a2000 	mfc1	t2,$f4
 a1c:	00000000 	nop
 a20:	0540fffb 	bltz	t2,a10 <func_808BA2CC+0x644>
 a24:	00000000 	nop
 a28:	314e00ff 	andi	t6,t2,0xff
 a2c:	01ee6025 	or	t4,t7,t6
 a30:	ac8c0004 	sw	t4,4(a0)
 a34:	8e0202d0 	lw	v0,720(s0)
 a38:	35ad0003 	ori	t5,t5,0x3
 a3c:	44d8f800 	ctc1	t8,$31
 a40:	24590008 	addiu	t9,v0,8
 a44:	ae1902d0 	sw	t9,720(s0)
 a48:	ac4d0000 	sw	t5,0(v0)
 a4c:	8fb800ac 	lw	t8,172(sp)
 a50:	24a50000 	addiu	a1,a1,0
 a54:	2406019f 	li	a2,415
 a58:	8f040000 	lw	a0,0(t8)
 a5c:	0c000000 	jal	0 <BgTokiHikari_Init>
 a60:	afa20064 	sw	v0,100(sp)
 a64:	8fa30064 	lw	v1,100(sp)
 a68:	3c0f0600 	lui	t7,0x600
 a6c:	25ef09c0 	addiu	t7,t7,2496
 a70:	ac620004 	sw	v0,4(v1)
 a74:	8e0202d0 	lw	v0,720(s0)
 a78:	3c0bde00 	lui	t3,0xde00
 a7c:	244a0008 	addiu	t2,v0,8
 a80:	ae0a02d0 	sw	t2,720(s0)
 a84:	ac4f0004 	sw	t7,4(v0)
 a88:	0c000000 	jal	0 <BgTokiHikari_Init>
 a8c:	ac4b0000 	sw	t3,0(v0)
 a90:	0c000000 	jal	0 <BgTokiHikari_Init>
 a94:	00000000 	nop
 a98:	8e0202d0 	lw	v0,720(s0)
 a9c:	3c0ce700 	lui	t4,0xe700
 aa0:	3c0dfa00 	lui	t5,0xfa00
 aa4:	244e0008 	addiu	t6,v0,8
 aa8:	ae0e02d0 	sw	t6,720(s0)
 aac:	ac400004 	sw	zero,4(v0)
 ab0:	ac4c0000 	sw	t4,0(v0)
 ab4:	8e0302d0 	lw	v1,720(s0)
 ab8:	3c014348 	lui	at,0x4348
 abc:	44811000 	mtc1	at,$f2
 ac0:	24790008 	addiu	t9,v1,8
 ac4:	ae1902d0 	sw	t9,720(s0)
 ac8:	ac6d0000 	sw	t5,0(v1)
 acc:	8fb800a8 	lw	t8,168(sp)
 ad0:	240b0001 	li	t3,1
 ad4:	3c014f00 	lui	at,0x4f00
 ad8:	c706014c 	lwc1	$f6,332(t8)
 adc:	3c050000 	lui	a1,0x0
 ae0:	46023202 	mul.s	$f8,$f6,$f2
 ae4:	444af800 	cfc1	t2,$31
 ae8:	44cbf800 	ctc1	t3,$31
 aec:	00000000 	nop
 af0:	460042a4 	cvt.w.s	$f10,$f8
 af4:	444bf800 	cfc1	t3,$31
 af8:	00000000 	nop
 afc:	316b0078 	andi	t3,t3,0x78
 b00:	51600013 	beqzl	t3,b50 <func_808BA2CC+0x784>
 b04:	440b5000 	mfc1	t3,$f10
 b08:	44815000 	mtc1	at,$f10
 b0c:	240b0001 	li	t3,1
 b10:	460a4281 	sub.s	$f10,$f8,$f10
 b14:	44cbf800 	ctc1	t3,$31
 b18:	00000000 	nop
 b1c:	460052a4 	cvt.w.s	$f10,$f10
 b20:	444bf800 	cfc1	t3,$31
 b24:	00000000 	nop
 b28:	316b0078 	andi	t3,t3,0x78
 b2c:	15600005 	bnez	t3,b44 <func_808BA2CC+0x778>
 b30:	00000000 	nop
 b34:	440b5000 	mfc1	t3,$f10
 b38:	3c018000 	lui	at,0x8000
 b3c:	10000007 	b	b5c <func_808BA2CC+0x790>
 b40:	01615825 	or	t3,t3,at
 b44:	10000005 	b	b5c <func_808BA2CC+0x790>
 b48:	240bffff 	li	t3,-1
 b4c:	440b5000 	mfc1	t3,$f10
 b50:	00000000 	nop
 b54:	0560fffb 	bltz	t3,b44 <func_808BA2CC+0x778>
 b58:	00000000 	nop
 b5c:	316e00ff 	andi	t6,t3,0xff
 b60:	2401ff00 	li	at,-256
 b64:	01c16025 	or	t4,t6,at
 b68:	ac6c0004 	sw	t4,4(v1)
 b6c:	8e0402d0 	lw	a0,720(s0)
 b70:	3c0dfb00 	lui	t5,0xfb00
 b74:	3c01437f 	lui	at,0x437f
 b78:	24990008 	addiu	t9,a0,8
 b7c:	ae1902d0 	sw	t9,720(s0)
 b80:	ac8d0000 	sw	t5,0(a0)
 b84:	8fb800a8 	lw	t8,168(sp)
 b88:	44caf800 	ctc1	t2,$31
 b8c:	44818000 	mtc1	at,$f16
 b90:	c700014c 	lwc1	$f0,332(t8)
 b94:	24030001 	li	v1,1
 b98:	3c014f00 	lui	at,0x4f00
 b9c:	46100482 	mul.s	$f18,$f0,$f16
 ba0:	444af800 	cfc1	t2,$31
 ba4:	44c3f800 	ctc1	v1,$31
 ba8:	00000000 	nop
 bac:	46009124 	cvt.w.s	$f4,$f18
 bb0:	4443f800 	cfc1	v1,$31
 bb4:	00000000 	nop
 bb8:	30630078 	andi	v1,v1,0x78
 bbc:	50600013 	beqzl	v1,c0c <func_808BA2CC+0x840>
 bc0:	44032000 	mfc1	v1,$f4
 bc4:	44812000 	mtc1	at,$f4
 bc8:	24030001 	li	v1,1
 bcc:	46049101 	sub.s	$f4,$f18,$f4
 bd0:	44c3f800 	ctc1	v1,$31
 bd4:	00000000 	nop
 bd8:	46002124 	cvt.w.s	$f4,$f4
 bdc:	4443f800 	cfc1	v1,$31
 be0:	00000000 	nop
 be4:	30630078 	andi	v1,v1,0x78
 be8:	14600005 	bnez	v1,c00 <func_808BA2CC+0x834>
 bec:	00000000 	nop
 bf0:	44032000 	mfc1	v1,$f4
 bf4:	3c018000 	lui	at,0x8000
 bf8:	10000007 	b	c18 <func_808BA2CC+0x84c>
 bfc:	00611825 	or	v1,v1,at
 c00:	10000005 	b	c18 <func_808BA2CC+0x84c>
 c04:	2403ffff 	li	v1,-1
 c08:	44032000 	mfc1	v1,$f4
 c0c:	00000000 	nop
 c10:	0460fffb 	bltz	v1,c00 <func_808BA2CC+0x834>
 c14:	00000000 	nop
 c18:	44caf800 	ctc1	t2,$31
 c1c:	24180001 	li	t8,1
 c20:	306300ff 	andi	v1,v1,0xff
 c24:	46001182 	mul.s	$f6,$f2,$f0
 c28:	00035e00 	sll	t3,v1,0x18
 c2c:	00037c00 	sll	t7,v1,0x10
 c30:	016f7025 	or	t6,t3,t7
 c34:	00036200 	sll	t4,v1,0x8
 c38:	01ccc825 	or	t9,t6,t4
 c3c:	3c014f00 	lui	at,0x4f00
 c40:	444df800 	cfc1	t5,$31
 c44:	44d8f800 	ctc1	t8,$31
 c48:	3c0cda38 	lui	t4,0xda38
 c4c:	46003224 	cvt.w.s	$f8,$f6
 c50:	4458f800 	cfc1	t8,$31
 c54:	00000000 	nop
 c58:	33180078 	andi	t8,t8,0x78
 c5c:	53000013 	beqzl	t8,cac <func_808BA2CC+0x8e0>
 c60:	44184000 	mfc1	t8,$f8
 c64:	44814000 	mtc1	at,$f8
 c68:	24180001 	li	t8,1
 c6c:	46083201 	sub.s	$f8,$f6,$f8
 c70:	44d8f800 	ctc1	t8,$31
 c74:	00000000 	nop
 c78:	46004224 	cvt.w.s	$f8,$f8
 c7c:	4458f800 	cfc1	t8,$31
 c80:	00000000 	nop
 c84:	33180078 	andi	t8,t8,0x78
 c88:	17000005 	bnez	t8,ca0 <func_808BA2CC+0x8d4>
 c8c:	00000000 	nop
 c90:	44184000 	mfc1	t8,$f8
 c94:	3c018000 	lui	at,0x8000
 c98:	10000007 	b	cb8 <func_808BA2CC+0x8ec>
 c9c:	0301c025 	or	t8,t8,at
 ca0:	10000005 	b	cb8 <func_808BA2CC+0x8ec>
 ca4:	2418ffff 	li	t8,-1
 ca8:	44184000 	mfc1	t8,$f8
 cac:	00000000 	nop
 cb0:	0700fffb 	bltz	t8,ca0 <func_808BA2CC+0x8d4>
 cb4:	00000000 	nop
 cb8:	330b00ff 	andi	t3,t8,0xff
 cbc:	032b7825 	or	t7,t9,t3
 cc0:	ac8f0004 	sw	t7,4(a0)
 cc4:	8e0202d0 	lw	v0,720(s0)
 cc8:	358c0003 	ori	t4,t4,0x3
 ccc:	44cdf800 	ctc1	t5,$31
 cd0:	244e0008 	addiu	t6,v0,8
 cd4:	ae0e02d0 	sw	t6,720(s0)
 cd8:	ac4c0000 	sw	t4,0(v0)
 cdc:	8fad00ac 	lw	t5,172(sp)
 ce0:	24a50000 	addiu	a1,a1,0
 ce4:	240601b5 	li	a2,437
 ce8:	8da40000 	lw	a0,0(t5)
 cec:	0c000000 	jal	0 <BgTokiHikari_Init>
 cf0:	afa20050 	sw	v0,80(sp)
 cf4:	8fa30050 	lw	v1,80(sp)
 cf8:	3c190600 	lui	t9,0x600
 cfc:	27390a10 	addiu	t9,t9,2576
 d00:	ac620004 	sw	v0,4(v1)
 d04:	8e0202d0 	lw	v0,720(s0)
 d08:	3c0ade00 	lui	t2,0xde00
 d0c:	24580008 	addiu	t8,v0,8
 d10:	ae1802d0 	sw	t8,720(s0)
 d14:	ac590004 	sw	t9,4(v0)
 d18:	0c000000 	jal	0 <BgTokiHikari_Init>
 d1c:	ac4a0000 	sw	t2,0(v0)
 d20:	8fab00ac 	lw	t3,172(sp)
 d24:	3c060000 	lui	a2,0x0
 d28:	24c60000 	addiu	a2,a2,0
 d2c:	27a4008c 	addiu	a0,sp,140
 d30:	240701bb 	li	a3,443
 d34:	0c000000 	jal	0 <BgTokiHikari_Init>
 d38:	8d650000 	lw	a1,0(t3)
 d3c:	8fbf003c 	lw	ra,60(sp)
 d40:	8fb00038 	lw	s0,56(sp)
 d44:	27bd00a8 	addiu	sp,sp,168
 d48:	03e00008 	jr	ra
 d4c:	00000000 	nop
