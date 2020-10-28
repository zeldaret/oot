
build/src/overlays/actors/ovl_Bg_Ice_Objects/z_bg_ice_objects.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgIceObjects_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa50034 	sw	a1,52(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00024 	sw	zero,36(sp)
  1c:	0c000000 	jal	0 <BgIceObjects_Init>
  20:	24a50000 	addiu	a1,a1,0
  24:	02002025 	move	a0,s0
  28:	0c000000 	jal	0 <BgIceObjects_Init>
  2c:	00002825 	move	a1,zero
  30:	3c040600 	lui	a0,0x600
  34:	248403f0 	addiu	a0,a0,1008
  38:	0c000000 	jal	0 <BgIceObjects_Init>
  3c:	27a50024 	addiu	a1,sp,36
  40:	26040168 	addiu	a0,s0,360
  44:	0c000000 	jal	0 <BgIceObjects_Init>
  48:	26050008 	addiu	a1,s0,8
  4c:	8fa40034 	lw	a0,52(sp)
  50:	3c0e0000 	lui	t6,0x0
  54:	25ce0000 	addiu	t6,t6,0
  58:	ae0e0164 	sw	t6,356(s0)
  5c:	8fa70024 	lw	a3,36(sp)
  60:	02003025 	move	a2,s0
  64:	0c000000 	jal	0 <BgIceObjects_Init>
  68:	24850810 	addiu	a1,a0,2064
  6c:	ae02014c 	sw	v0,332(s0)
  70:	a600001c 	sh	zero,28(s0)
  74:	8fbf001c 	lw	ra,28(sp)
  78:	8fb00018 	lw	s0,24(sp)
  7c:	27bd0030 	addiu	sp,sp,48
  80:	03e00008 	jr	ra
  84:	00000000 	nop

00000088 <BgIceObjects_Destroy>:
  88:	27bdffe8 	addiu	sp,sp,-24
  8c:	afa40018 	sw	a0,24(sp)
  90:	8fae0018 	lw	t6,24(sp)
  94:	afbf0014 	sw	ra,20(sp)
  98:	00a02025 	move	a0,a1
  9c:	24a50810 	addiu	a1,a1,2064
  a0:	0c000000 	jal	0 <BgIceObjects_Init>
  a4:	8dc6014c 	lw	a2,332(t6)
  a8:	8fbf0014 	lw	ra,20(sp)
  ac:	27bd0018 	addiu	sp,sp,24
  b0:	03e00008 	jr	ra
  b4:	00000000 	nop

000000b8 <func_8088F8C8>:
  b8:	afa50004 	sw	a1,4(sp)
  bc:	84830158 	lh	v1,344(a0)
  c0:	24018000 	li	at,-32768
  c4:	50600004 	beqzl	v1,d8 <func_8088F8C8+0x20>
  c8:	c4840024 	lwc1	$f4,36(a0)
  cc:	5461008a 	bnel	v1,at,2f8 <func_8088F8C8+0x240>
  d0:	c484002c 	lwc1	$f4,44(a0)
  d4:	c4840024 	lwc1	$f4,36(a0)
  d8:	3c0f0000 	lui	t7,0x0
  dc:	85ef0000 	lh	t7,0(t7)
  e0:	4600218d 	trunc.w.s	$f6,$f4
  e4:	3c180000 	lui	t8,0x0
  e8:	44023000 	mfc1	v0,$f6
  ec:	00000000 	nop
  f0:	00021400 	sll	v0,v0,0x10
  f4:	00021403 	sra	v0,v0,0x10
  f8:	144f000c 	bne	v0,t7,12c <func_8088F8C8+0x74>
  fc:	00000000 	nop
 100:	14600004 	bnez	v1,114 <func_8088F8C8+0x5c>
 104:	3c020000 	lui	v0,0x0
 108:	3c020000 	lui	v0,0x0
 10c:	10000002 	b	118 <func_8088F8C8+0x60>
 110:	84420000 	lh	v0,0(v0)
 114:	84420000 	lh	v0,0(v0)
 118:	44824000 	mtc1	v0,$f8
 11c:	00000000 	nop
 120:	468042a0 	cvt.s.w	$f10,$f8
 124:	03e00008 	jr	ra
 128:	e48a0170 	swc1	$f10,368(a0)
 12c:	87180000 	lh	t8,0(t8)
 130:	3c190000 	lui	t9,0x0
 134:	1458000c 	bne	v0,t8,168 <func_8088F8C8+0xb0>
 138:	00000000 	nop
 13c:	14600004 	bnez	v1,150 <func_8088F8C8+0x98>
 140:	3c020000 	lui	v0,0x0
 144:	3c020000 	lui	v0,0x0
 148:	10000002 	b	154 <func_8088F8C8+0x9c>
 14c:	84420000 	lh	v0,0(v0)
 150:	84420000 	lh	v0,0(v0)
 154:	44828000 	mtc1	v0,$f16
 158:	00000000 	nop
 15c:	468084a0 	cvt.s.w	$f18,$f16
 160:	03e00008 	jr	ra
 164:	e4920170 	swc1	$f18,368(a0)
 168:	87390000 	lh	t9,0(t9)
 16c:	24050003 	li	a1,3
 170:	00054040 	sll	t0,a1,0x1
 174:	1459000c 	bne	v0,t9,1a8 <func_8088F8C8+0xf0>
 178:	3c090000 	lui	t1,0x0
 17c:	14600004 	bnez	v1,190 <func_8088F8C8+0xd8>
 180:	3c020000 	lui	v0,0x0
 184:	3c020000 	lui	v0,0x0
 188:	10000002 	b	194 <func_8088F8C8+0xdc>
 18c:	84420000 	lh	v0,0(v0)
 190:	84420000 	lh	v0,0(v0)
 194:	44822000 	mtc1	v0,$f4
 198:	00000000 	nop
 19c:	468021a0 	cvt.s.w	$f6,$f4
 1a0:	03e00008 	jr	ra
 1a4:	e4860170 	swc1	$f6,368(a0)
 1a8:	25290000 	addiu	t1,t1,0
 1ac:	01093021 	addu	a2,t0,t1
 1b0:	84ca0000 	lh	t2,0(a2)
 1b4:	544a0011 	bnel	v0,t2,1fc <func_8088F8C8+0x144>
 1b8:	84cd0002 	lh	t5,2(a2)
 1bc:	14600006 	bnez	v1,1d8 <func_8088F8C8+0x120>
 1c0:	00056080 	sll	t4,a1,0x2
 1c4:	00055880 	sll	t3,a1,0x2
 1c8:	3c020000 	lui	v0,0x0
 1cc:	004b1021 	addu	v0,v0,t3
 1d0:	10000004 	b	1e4 <func_8088F8C8+0x12c>
 1d4:	84420000 	lh	v0,0(v0)
 1d8:	3c020000 	lui	v0,0x0
 1dc:	004c1021 	addu	v0,v0,t4
 1e0:	84420000 	lh	v0,0(v0)
 1e4:	44824000 	mtc1	v0,$f8
 1e8:	00000000 	nop
 1ec:	468042a0 	cvt.s.w	$f10,$f8
 1f0:	03e00008 	jr	ra
 1f4:	e48a0170 	swc1	$f10,368(a0)
 1f8:	84cd0002 	lh	t5,2(a2)
 1fc:	544d0011 	bnel	v0,t5,244 <func_8088F8C8+0x18c>
 200:	84d80004 	lh	t8,4(a2)
 204:	14600006 	bnez	v1,220 <func_8088F8C8+0x168>
 208:	00057880 	sll	t7,a1,0x2
 20c:	00057080 	sll	t6,a1,0x2
 210:	3c020000 	lui	v0,0x0
 214:	004e1021 	addu	v0,v0,t6
 218:	10000004 	b	22c <func_8088F8C8+0x174>
 21c:	84420000 	lh	v0,0(v0)
 220:	3c020000 	lui	v0,0x0
 224:	004f1021 	addu	v0,v0,t7
 228:	84420000 	lh	v0,0(v0)
 22c:	44828000 	mtc1	v0,$f16
 230:	00000000 	nop
 234:	468084a0 	cvt.s.w	$f18,$f16
 238:	03e00008 	jr	ra
 23c:	e4920170 	swc1	$f18,368(a0)
 240:	84d80004 	lh	t8,4(a2)
 244:	54580011 	bnel	v0,t8,28c <func_8088F8C8+0x1d4>
 248:	84c90006 	lh	t1,6(a2)
 24c:	14600006 	bnez	v1,268 <func_8088F8C8+0x1b0>
 250:	00054080 	sll	t0,a1,0x2
 254:	0005c880 	sll	t9,a1,0x2
 258:	3c020000 	lui	v0,0x0
 25c:	00591021 	addu	v0,v0,t9
 260:	10000004 	b	274 <func_8088F8C8+0x1bc>
 264:	84420000 	lh	v0,0(v0)
 268:	3c020000 	lui	v0,0x0
 26c:	00481021 	addu	v0,v0,t0
 270:	84420000 	lh	v0,0(v0)
 274:	44822000 	mtc1	v0,$f4
 278:	00000000 	nop
 27c:	468021a0 	cvt.s.w	$f6,$f4
 280:	03e00008 	jr	ra
 284:	e4860170 	swc1	$f6,368(a0)
 288:	84c90006 	lh	t1,6(a2)
 28c:	14490010 	bne	v0,t1,2d0 <func_8088F8C8+0x218>
 290:	00000000 	nop
 294:	14600006 	bnez	v1,2b0 <func_8088F8C8+0x1f8>
 298:	00055880 	sll	t3,a1,0x2
 29c:	00055080 	sll	t2,a1,0x2
 2a0:	3c020000 	lui	v0,0x0
 2a4:	004a1021 	addu	v0,v0,t2
 2a8:	10000004 	b	2bc <func_8088F8C8+0x204>
 2ac:	84420000 	lh	v0,0(v0)
 2b0:	3c020000 	lui	v0,0x0
 2b4:	004b1021 	addu	v0,v0,t3
 2b8:	84420000 	lh	v0,0(v0)
 2bc:	44824000 	mtc1	v0,$f8
 2c0:	00000000 	nop
 2c4:	468042a0 	cvt.s.w	$f10,$f8
 2c8:	03e00008 	jr	ra
 2cc:	e48a0170 	swc1	$f10,368(a0)
 2d0:	14600005 	bnez	v1,2e8 <func_8088F8C8+0x230>
 2d4:	3c010000 	lui	at,0x0
 2d8:	3c01c3aa 	lui	at,0xc3aa
 2dc:	44818000 	mtc1	at,$f16
 2e0:	03e00008 	jr	ra
 2e4:	e4900170 	swc1	$f16,368(a0)
 2e8:	c4320000 	lwc1	$f18,0(at)
 2ec:	03e00008 	jr	ra
 2f0:	e4920170 	swc1	$f18,368(a0)
 2f4:	c484002c 	lwc1	$f4,44(a0)
 2f8:	3c0d0000 	lui	t5,0x0
 2fc:	85ad0000 	lh	t5,0(t5)
 300:	4600218d 	trunc.w.s	$f6,$f4
 304:	3c0e0000 	lui	t6,0x0
 308:	24014000 	li	at,16384
 30c:	44023000 	mfc1	v0,$f6
 310:	00000000 	nop
 314:	00021400 	sll	v0,v0,0x10
 318:	00021403 	sra	v0,v0,0x10
 31c:	144d000c 	bne	v0,t5,350 <func_8088F8C8+0x298>
 320:	00000000 	nop
 324:	14610004 	bne	v1,at,338 <func_8088F8C8+0x280>
 328:	3c020000 	lui	v0,0x0
 32c:	3c020000 	lui	v0,0x0
 330:	10000002 	b	33c <func_8088F8C8+0x284>
 334:	84420000 	lh	v0,0(v0)
 338:	84420000 	lh	v0,0(v0)
 33c:	44824000 	mtc1	v0,$f8
 340:	00000000 	nop
 344:	468042a0 	cvt.s.w	$f10,$f8
 348:	03e00008 	jr	ra
 34c:	e48a0168 	swc1	$f10,360(a0)
 350:	85ce0000 	lh	t6,0(t6)
 354:	3c0f0000 	lui	t7,0x0
 358:	24014000 	li	at,16384
 35c:	144e000c 	bne	v0,t6,390 <func_8088F8C8+0x2d8>
 360:	00000000 	nop
 364:	14610004 	bne	v1,at,378 <func_8088F8C8+0x2c0>
 368:	3c020000 	lui	v0,0x0
 36c:	3c020000 	lui	v0,0x0
 370:	10000002 	b	37c <func_8088F8C8+0x2c4>
 374:	84420000 	lh	v0,0(v0)
 378:	84420000 	lh	v0,0(v0)
 37c:	44828000 	mtc1	v0,$f16
 380:	00000000 	nop
 384:	468084a0 	cvt.s.w	$f18,$f16
 388:	03e00008 	jr	ra
 38c:	e4920168 	swc1	$f18,360(a0)
 390:	85ef0000 	lh	t7,0(t7)
 394:	24050003 	li	a1,3
 398:	0005c040 	sll	t8,a1,0x1
 39c:	144f000d 	bne	v0,t7,3d4 <func_8088F8C8+0x31c>
 3a0:	3c190000 	lui	t9,0x0
 3a4:	24014000 	li	at,16384
 3a8:	14610004 	bne	v1,at,3bc <func_8088F8C8+0x304>
 3ac:	3c020000 	lui	v0,0x0
 3b0:	3c020000 	lui	v0,0x0
 3b4:	10000002 	b	3c0 <func_8088F8C8+0x308>
 3b8:	84420000 	lh	v0,0(v0)
 3bc:	84420000 	lh	v0,0(v0)
 3c0:	44822000 	mtc1	v0,$f4
 3c4:	00000000 	nop
 3c8:	468021a0 	cvt.s.w	$f6,$f4
 3cc:	03e00008 	jr	ra
 3d0:	e4860168 	swc1	$f6,360(a0)
 3d4:	27390000 	addiu	t9,t9,0
 3d8:	03193021 	addu	a2,t8,t9
 3dc:	84c80000 	lh	t0,0(a2)
 3e0:	24014000 	li	at,16384
 3e4:	54480011 	bnel	v0,t0,42c <func_8088F8C8+0x374>
 3e8:	84cb0002 	lh	t3,2(a2)
 3ec:	14610006 	bne	v1,at,408 <func_8088F8C8+0x350>
 3f0:	00055080 	sll	t2,a1,0x2
 3f4:	00054880 	sll	t1,a1,0x2
 3f8:	3c020000 	lui	v0,0x0
 3fc:	00491021 	addu	v0,v0,t1
 400:	10000004 	b	414 <func_8088F8C8+0x35c>
 404:	84420000 	lh	v0,0(v0)
 408:	3c020000 	lui	v0,0x0
 40c:	004a1021 	addu	v0,v0,t2
 410:	84420000 	lh	v0,0(v0)
 414:	44824000 	mtc1	v0,$f8
 418:	00000000 	nop
 41c:	468042a0 	cvt.s.w	$f10,$f8
 420:	03e00008 	jr	ra
 424:	e48a0168 	swc1	$f10,360(a0)
 428:	84cb0002 	lh	t3,2(a2)
 42c:	24014000 	li	at,16384
 430:	544b0011 	bnel	v0,t3,478 <func_8088F8C8+0x3c0>
 434:	84ce0004 	lh	t6,4(a2)
 438:	14610006 	bne	v1,at,454 <func_8088F8C8+0x39c>
 43c:	00056880 	sll	t5,a1,0x2
 440:	00056080 	sll	t4,a1,0x2
 444:	3c020000 	lui	v0,0x0
 448:	004c1021 	addu	v0,v0,t4
 44c:	10000004 	b	460 <func_8088F8C8+0x3a8>
 450:	84420000 	lh	v0,0(v0)
 454:	3c020000 	lui	v0,0x0
 458:	004d1021 	addu	v0,v0,t5
 45c:	84420000 	lh	v0,0(v0)
 460:	44828000 	mtc1	v0,$f16
 464:	00000000 	nop
 468:	468084a0 	cvt.s.w	$f18,$f16
 46c:	03e00008 	jr	ra
 470:	e4920168 	swc1	$f18,360(a0)
 474:	84ce0004 	lh	t6,4(a2)
 478:	24014000 	li	at,16384
 47c:	544e0011 	bnel	v0,t6,4c4 <func_8088F8C8+0x40c>
 480:	84d90006 	lh	t9,6(a2)
 484:	14610006 	bne	v1,at,4a0 <func_8088F8C8+0x3e8>
 488:	0005c080 	sll	t8,a1,0x2
 48c:	00057880 	sll	t7,a1,0x2
 490:	3c020000 	lui	v0,0x0
 494:	004f1021 	addu	v0,v0,t7
 498:	10000004 	b	4ac <func_8088F8C8+0x3f4>
 49c:	84420000 	lh	v0,0(v0)
 4a0:	3c020000 	lui	v0,0x0
 4a4:	00581021 	addu	v0,v0,t8
 4a8:	84420000 	lh	v0,0(v0)
 4ac:	44822000 	mtc1	v0,$f4
 4b0:	00000000 	nop
 4b4:	468021a0 	cvt.s.w	$f6,$f4
 4b8:	03e00008 	jr	ra
 4bc:	e4860168 	swc1	$f6,360(a0)
 4c0:	84d90006 	lh	t9,6(a2)
 4c4:	24014000 	li	at,16384
 4c8:	14590011 	bne	v0,t9,510 <func_8088F8C8+0x458>
 4cc:	00000000 	nop
 4d0:	24014000 	li	at,16384
 4d4:	14610006 	bne	v1,at,4f0 <func_8088F8C8+0x438>
 4d8:	00054880 	sll	t1,a1,0x2
 4dc:	00054080 	sll	t0,a1,0x2
 4e0:	3c020000 	lui	v0,0x0
 4e4:	00481021 	addu	v0,v0,t0
 4e8:	10000004 	b	4fc <func_8088F8C8+0x444>
 4ec:	84420000 	lh	v0,0(v0)
 4f0:	3c020000 	lui	v0,0x0
 4f4:	00491021 	addu	v0,v0,t1
 4f8:	84420000 	lh	v0,0(v0)
 4fc:	44824000 	mtc1	v0,$f8
 500:	00000000 	nop
 504:	468042a0 	cvt.s.w	$f10,$f8
 508:	03e00008 	jr	ra
 50c:	e48a0168 	swc1	$f10,360(a0)
 510:	14610004 	bne	v1,at,524 <func_8088F8C8+0x46c>
 514:	3c01c457 	lui	at,0xc457
 518:	44818000 	mtc1	at,$f16
 51c:	03e00008 	jr	ra
 520:	e4900168 	swc1	$f16,360(a0)
 524:	3c010000 	lui	at,0x0
 528:	c4320000 	lwc1	$f18,0(at)
 52c:	e4920168 	swc1	$f18,360(a0)
 530:	03e00008 	jr	ra
 534:	00000000 	nop

00000538 <func_8088FD48>:
 538:	27bdffe8 	addiu	sp,sp,-24
 53c:	afbf0014 	sw	ra,20(sp)
 540:	afa5001c 	sw	a1,28(sp)
 544:	c4820060 	lwc1	$f2,96(a0)
 548:	44802000 	mtc1	zero,$f4
 54c:	00803825 	move	a3,a0
 550:	3c010000 	lui	at,0x0
 554:	4602203c 	c.lt.s	$f4,$f2
 558:	00000000 	nop
 55c:	45030034 	bc1tl	630 <func_8088FD48+0xf8>
 560:	3c013f80 	lui	at,0x3f80
 564:	c4800024 	lwc1	$f0,36(a0)
 568:	c4260000 	lwc1	$f6,0(at)
 56c:	3c010000 	lui	at,0x0
 570:	4606003e 	c.le.s	$f0,$f6
 574:	00000000 	nop
 578:	45000006 	bc1f	594 <func_8088FD48+0x5c>
 57c:	00000000 	nop
 580:	c4280000 	lwc1	$f8,0(at)
 584:	c48a002c 	lwc1	$f10,44(a0)
 588:	4608503e 	c.le.s	$f10,$f8
 58c:	00000000 	nop
 590:	45010026 	bc1t	62c <func_8088FD48+0xf4>
 594:	3c010000 	lui	at,0x0
 598:	c4300000 	lwc1	$f16,0(at)
 59c:	3c01c3d2 	lui	at,0xc3d2
 5a0:	4610003e 	c.le.s	$f0,$f16
 5a4:	00000000 	nop
 5a8:	45020008 	bc1fl	5cc <func_8088FD48+0x94>
 5ac:	3c01c475 	lui	at,0xc475
 5b0:	c4f2002c 	lwc1	$f18,44(a3)
 5b4:	44812000 	mtc1	at,$f4
 5b8:	00000000 	nop
 5bc:	4612203e 	c.le.s	$f4,$f18
 5c0:	00000000 	nop
 5c4:	45010019 	bc1t	62c <func_8088FD48+0xf4>
 5c8:	3c01c475 	lui	at,0xc475
 5cc:	44813000 	mtc1	at,$f6
 5d0:	3c010000 	lui	at,0x0
 5d4:	4600303e 	c.le.s	$f6,$f0
 5d8:	00000000 	nop
 5dc:	45020007 	bc1fl	5fc <func_8088FD48+0xc4>
 5e0:	3c01c457 	lui	at,0xc457
 5e4:	c4280000 	lwc1	$f8,0(at)
 5e8:	c4ea002c 	lwc1	$f10,44(a3)
 5ec:	4608503e 	c.le.s	$f10,$f8
 5f0:	00000000 	nop
 5f4:	4501000d 	bc1t	62c <func_8088FD48+0xf4>
 5f8:	3c01c457 	lui	at,0xc457
 5fc:	44818000 	mtc1	at,$f16
 600:	3c01c42f 	lui	at,0xc42f
 604:	4600803e 	c.le.s	$f16,$f0
 608:	00000000 	nop
 60c:	45020029 	bc1fl	6b4 <func_8088FD48+0x17c>
 610:	8fbf0014 	lw	ra,20(sp)
 614:	c4f2002c 	lwc1	$f18,44(a3)
 618:	44812000 	mtc1	at,$f4
 61c:	00000000 	nop
 620:	4612203e 	c.le.s	$f4,$f18
 624:	00000000 	nop
 628:	45000021 	bc1f	6b0 <func_8088FD48+0x178>
 62c:	3c013f80 	lui	at,0x3f80
 630:	44813000 	mtc1	at,$f6
 634:	24e40028 	addiu	a0,a3,40
 638:	3c05c396 	lui	a1,0xc396
 63c:	46061200 	add.s	$f8,$f2,$f6
 640:	e4e80060 	swc1	$f8,96(a3)
 644:	8ce60060 	lw	a2,96(a3)
 648:	0c000000 	jal	0 <BgIceObjects_Init>
 64c:	afa70018 	sw	a3,24(sp)
 650:	10400017 	beqz	v0,6b0 <func_8088FD48+0x178>
 654:	8fa70018 	lw	a3,24(sp)
 658:	3c014270 	lui	at,0x4270
 65c:	44812000 	mtc1	at,$f4
 660:	c4f2000c 	lwc1	$f18,12(a3)
 664:	84ee001c 	lh	t6,28(a3)
 668:	44805000 	mtc1	zero,$f10
 66c:	46049181 	sub.s	$f6,$f18,$f4
 670:	c4f00008 	lwc1	$f16,8(a3)
 674:	c4e80010 	lwc1	$f8,16(a3)
 678:	e4ea0060 	swc1	$f10,96(a3)
 67c:	e4e60028 	swc1	$f6,40(a3)
 680:	e4f00024 	swc1	$f16,36(a3)
 684:	11c00007 	beqz	t6,6a4 <func_8088FD48+0x16c>
 688:	e4e8002c 	swc1	$f8,44(a3)
 68c:	8fa4001c 	lw	a0,28(sp)
 690:	00e02825 	move	a1,a3
 694:	24060007 	li	a2,7
 698:	0c000000 	jal	0 <BgIceObjects_Init>
 69c:	afa70018 	sw	a3,24(sp)
 6a0:	8fa70018 	lw	a3,24(sp)
 6a4:	3c0f0000 	lui	t7,0x0
 6a8:	25ef0000 	addiu	t7,t7,0
 6ac:	acef0164 	sw	t7,356(a3)
 6b0:	8fbf0014 	lw	ra,20(sp)
 6b4:	27bd0018 	addiu	sp,sp,24
 6b8:	03e00008 	jr	ra
 6bc:	00000000 	nop

000006c0 <func_8088FED0>:
 6c0:	27bdffe0 	addiu	sp,sp,-32
 6c4:	afbf001c 	sw	ra,28(sp)
 6c8:	afb10018 	sw	s1,24(sp)
 6cc:	afb00014 	sw	s0,20(sp)
 6d0:	44800000 	mtc1	zero,$f0
 6d4:	c4840150 	lwc1	$f4,336(a0)
 6d8:	00808025 	move	s0,a0
 6dc:	00a08825 	move	s1,a1
 6e0:	46040032 	c.eq.s	$f0,$f4
 6e4:	8ca21c44 	lw	v0,7236(a1)
 6e8:	45030029 	bc1tl	790 <func_8088FED0+0xd0>
 6ec:	c60a0060 	lwc1	$f10,96(s0)
 6f0:	8c4e0680 	lw	t6,1664(v0)
 6f4:	2401ffef 	li	at,-17
 6f8:	01c17824 	and	t7,t6,at
 6fc:	ac4f0680 	sw	t7,1664(v0)
 700:	c4860150 	lwc1	$f6,336(a0)
 704:	4606003c 	c.lt.s	$f0,$f6
 708:	00000000 	nop
 70c:	4502001d 	bc1fl	784 <func_8088FED0+0xc4>
 710:	44800000 	mtc1	zero,$f0
 714:	0c000000 	jal	0 <BgIceObjects_Init>
 718:	00a02025 	move	a0,a1
 71c:	14400018 	bnez	v0,780 <func_8088FED0+0xc0>
 720:	02002025 	move	a0,s0
 724:	0c000000 	jal	0 <BgIceObjects_Init>
 728:	02202825 	move	a1,s1
 72c:	02002025 	move	a0,s0
 730:	0c000000 	jal	0 <BgIceObjects_Init>
 734:	26050168 	addiu	a1,s0,360
 738:	3c013f80 	lui	at,0x3f80
 73c:	44814000 	mtc1	at,$f8
 740:	02202025 	move	a0,s1
 744:	4600403c 	c.lt.s	$f8,$f0
 748:	00000000 	nop
 74c:	4502000d 	bc1fl	784 <func_8088FED0+0xc4>
 750:	44800000 	mtc1	zero,$f0
 754:	8e180004 	lw	t8,4(s0)
 758:	02002825 	move	a1,s0
 75c:	24060008 	li	a2,8
 760:	37190010 	ori	t9,t8,0x10
 764:	0c000000 	jal	0 <BgIceObjects_Init>
 768:	ae190004 	sw	t9,4(s0)
 76c:	3c090000 	lui	t1,0x0
 770:	24080001 	li	t0,1
 774:	25290000 	addiu	t1,t1,0
 778:	a608001c 	sh	t0,28(s0)
 77c:	ae090164 	sw	t1,356(s0)
 780:	44800000 	mtc1	zero,$f0
 784:	00000000 	nop
 788:	e6000150 	swc1	$f0,336(s0)
 78c:	c60a0060 	lwc1	$f10,96(s0)
 790:	02002025 	move	a0,s0
 794:	460a003c 	c.lt.s	$f0,$f10
 798:	00000000 	nop
 79c:	45020004 	bc1fl	7b0 <func_8088FED0+0xf0>
 7a0:	8fbf001c 	lw	ra,28(sp)
 7a4:	0c000000 	jal	0 <BgIceObjects_Init>
 7a8:	02202825 	move	a1,s1
 7ac:	8fbf001c 	lw	ra,28(sp)
 7b0:	8fb00014 	lw	s0,20(sp)
 7b4:	8fb10018 	lw	s1,24(sp)
 7b8:	03e00008 	jr	ra
 7bc:	27bd0020 	addiu	sp,sp,32

000007c0 <func_8088FFD0>:
 7c0:	27bdff98 	addiu	sp,sp,-104
 7c4:	afb00030 	sw	s0,48(sp)
 7c8:	00808025 	move	s0,a0
 7cc:	afbf0034 	sw	ra,52(sp)
 7d0:	afa5006c 	sw	a1,108(sp)
 7d4:	f7b40028 	sdc1	$f20,40(sp)
 7d8:	3c054120 	lui	a1,0x4120
 7dc:	24840068 	addiu	a0,a0,104
 7e0:	0c000000 	jal	0 <BgIceObjects_Init>
 7e4:	3c063f00 	lui	a2,0x3f00
 7e8:	26040024 	addiu	a0,s0,36
 7ec:	8e050168 	lw	a1,360(s0)
 7f0:	0c000000 	jal	0 <BgIceObjects_Init>
 7f4:	8e060068 	lw	a2,104(s0)
 7f8:	8e050170 	lw	a1,368(s0)
 7fc:	8e060068 	lw	a2,104(s0)
 800:	afa20064 	sw	v0,100(sp)
 804:	0c000000 	jal	0 <BgIceObjects_Init>
 808:	2604002c 	addiu	a0,s0,44
 80c:	8fa30064 	lw	v1,100(sp)
 810:	02002825 	move	a1,s0
 814:	24060007 	li	a2,7
 818:	00621824 	and	v1,v1,v0
 81c:	10600031 	beqz	v1,8e4 <func_8088FFD0+0x124>
 820:	3c0140c0 	lui	at,0x40c0
 824:	44800000 	mtc1	zero,$f0
 828:	c6080060 	lwc1	$f8,96(s0)
 82c:	c6040024 	lwc1	$f4,36(s0)
 830:	c606002c 	lwc1	$f6,44(s0)
 834:	4600403e 	c.le.s	$f8,$f0
 838:	e6000068 	swc1	$f0,104(s0)
 83c:	e6040168 	swc1	$f4,360(s0)
 840:	e6060170 	swc1	$f6,368(s0)
 844:	45020006 	bc1fl	860 <func_8088FFD0+0xa0>
 848:	a600001c 	sh	zero,28(s0)
 84c:	8e0e0004 	lw	t6,4(s0)
 850:	2401ffef 	li	at,-17
 854:	01c17824 	and	t7,t6,at
 858:	ae0f0004 	sw	t7,4(s0)
 85c:	a600001c 	sh	zero,28(s0)
 860:	0c000000 	jal	0 <BgIceObjects_Init>
 864:	8fa4006c 	lw	a0,108(sp)
 868:	02002025 	move	a0,s0
 86c:	0c000000 	jal	0 <BgIceObjects_Init>
 870:	24052835 	li	a1,10293
 874:	3c013f80 	lui	at,0x3f80
 878:	44811000 	mtc1	at,$f2
 87c:	3c010000 	lui	at,0x0
 880:	c4300000 	lwc1	$f16,0(at)
 884:	c60a0024 	lwc1	$f10,36(s0)
 888:	3c190000 	lui	t9,0x0
 88c:	3c014382 	lui	at,0x4382
 890:	46105000 	add.s	$f0,$f10,$f16
 894:	27390000 	addiu	t9,t9,0
 898:	46000005 	abs.s	$f0,$f0
 89c:	4602003c 	c.lt.s	$f0,$f2
 8a0:	00000000 	nop
 8a4:	4500000d 	bc1f	8dc <func_8088FFD0+0x11c>
 8a8:	00000000 	nop
 8ac:	c612002c 	lwc1	$f18,44(s0)
 8b0:	44812000 	mtc1	at,$f4
 8b4:	3c180000 	lui	t8,0x0
 8b8:	27180000 	addiu	t8,t8,0
 8bc:	46049000 	add.s	$f0,$f18,$f4
 8c0:	46000005 	abs.s	$f0,$f0
 8c4:	4602003c 	c.lt.s	$f0,$f2
 8c8:	00000000 	nop
 8cc:	45000003 	bc1f	8dc <func_8088FFD0+0x11c>
 8d0:	00000000 	nop
 8d4:	10000096 	b	b30 <func_8088FFD0+0x370>
 8d8:	ae180164 	sw	t8,356(s0)
 8dc:	10000094 	b	b30 <func_8088FFD0+0x370>
 8e0:	ae190164 	sw	t9,356(s0)
 8e4:	44813000 	mtc1	at,$f6
 8e8:	c6080068 	lwc1	$f8,104(s0)
 8ec:	4608303c 	c.lt.s	$f6,$f8
 8f0:	00000000 	nop
 8f4:	4502008f 	bc1fl	b34 <func_8088FFD0+0x374>
 8f8:	02002025 	move	a0,s0
 8fc:	44800000 	mtc1	zero,$f0
 900:	c60a0028 	lwc1	$f10,40(s0)
 904:	3c0142f0 	lui	at,0x42f0
 908:	460a003e 	c.le.s	$f0,$f10
 90c:	00000000 	nop
 910:	45020088 	bc1fl	b34 <func_8088FFD0+0x374>
 914:	02002025 	move	a0,s0
 918:	44816000 	mtc1	at,$f12
 91c:	0c000000 	jal	0 <BgIceObjects_Init>
 920:	00000000 	nop
 924:	0c000000 	jal	0 <BgIceObjects_Init>
 928:	e7a00048 	swc1	$f0,72(sp)
 92c:	46000506 	mov.s	$f20,$f0
 930:	0c000000 	jal	0 <BgIceObjects_Init>
 934:	86040158 	lh	a0,344(s0)
 938:	3c013fc0 	lui	at,0x3fc0
 93c:	44818000 	mtc1	at,$f16
 940:	00000000 	nop
 944:	46148480 	add.s	$f18,$f16,$f20
 948:	46009107 	neg.s	$f4,$f18
 94c:	46040182 	mul.s	$f6,$f0,$f4
 950:	0c000000 	jal	0 <BgIceObjects_Init>
 954:	e7a6004c 	swc1	$f6,76(sp)
 958:	3c013f80 	lui	at,0x3f80
 95c:	44811000 	mtc1	at,$f2
 960:	00000000 	nop
 964:	46020200 	add.s	$f8,$f0,$f2
 968:	0c000000 	jal	0 <BgIceObjects_Init>
 96c:	e7a80050 	swc1	$f8,80(sp)
 970:	46000506 	mov.s	$f20,$f0
 974:	0c000000 	jal	0 <BgIceObjects_Init>
 978:	86040158 	lh	a0,344(s0)
 97c:	3c013fc0 	lui	at,0x3fc0
 980:	44815000 	mtc1	at,$f10
 984:	00000000 	nop
 988:	46145400 	add.s	$f16,$f10,$f20
 98c:	46008487 	neg.s	$f18,$f16
 990:	46120102 	mul.s	$f4,$f0,$f18
 994:	e7a40054 	swc1	$f4,84(sp)
 998:	0c000000 	jal	0 <BgIceObjects_Init>
 99c:	86040158 	lh	a0,344(s0)
 9a0:	46000506 	mov.s	$f20,$f0
 9a4:	0c000000 	jal	0 <BgIceObjects_Init>
 9a8:	86040158 	lh	a0,344(s0)
 9ac:	3c014270 	lui	at,0x4270
 9b0:	44814000 	mtc1	at,$f8
 9b4:	c7b20048 	lwc1	$f18,72(sp)
 9b8:	c6060024 	lwc1	$f6,36(s0)
 9bc:	46144282 	mul.s	$f10,$f8,$f20
 9c0:	460a3401 	sub.s	$f16,$f6,$f10
 9c4:	46120102 	mul.s	$f4,$f0,$f18
 9c8:	46048201 	sub.s	$f8,$f16,$f4
 9cc:	e7a80058 	swc1	$f8,88(sp)
 9d0:	0c000000 	jal	0 <BgIceObjects_Init>
 9d4:	86040158 	lh	a0,344(s0)
 9d8:	46000506 	mov.s	$f20,$f0
 9dc:	0c000000 	jal	0 <BgIceObjects_Init>
 9e0:	86040158 	lh	a0,344(s0)
 9e4:	3c014270 	lui	at,0x4270
 9e8:	44815000 	mtc1	at,$f10
 9ec:	c7a40048 	lwc1	$f4,72(sp)
 9f0:	c606002c 	lwc1	$f6,44(s0)
 9f4:	46145482 	mul.s	$f18,$f10,$f20
 9f8:	24040028 	li	a0,40
 9fc:	2405000f 	li	a1,15
 a00:	46040202 	mul.s	$f8,$f0,$f4
 a04:	46123401 	sub.s	$f16,$f6,$f18
 a08:	46104280 	add.s	$f10,$f8,$f16
 a0c:	e7aa0060 	swc1	$f10,96(sp)
 a10:	c6060028 	lwc1	$f6,40(s0)
 a14:	0c000000 	jal	0 <BgIceObjects_Init>
 a18:	e7a6005c 	swc1	$f6,92(sp)
 a1c:	3c080000 	lui	t0,0x0
 a20:	3c090000 	lui	t1,0x0
 a24:	25290000 	addiu	t1,t1,0
 a28:	25080000 	addiu	t0,t0,0
 a2c:	3c070000 	lui	a3,0x0
 a30:	240a00fa 	li	t2,250
 a34:	afaa0018 	sw	t2,24(sp)
 a38:	24e70000 	addiu	a3,a3,0
 a3c:	afa80010 	sw	t0,16(sp)
 a40:	afa90014 	sw	t1,20(sp)
 a44:	8fa4006c 	lw	a0,108(sp)
 a48:	27a50058 	addiu	a1,sp,88
 a4c:	27a6004c 	addiu	a2,sp,76
 a50:	0c000000 	jal	0 <BgIceObjects_Init>
 a54:	afa2001c 	sw	v0,28(sp)
 a58:	3c0142f0 	lui	at,0x42f0
 a5c:	44816000 	mtc1	at,$f12
 a60:	0c000000 	jal	0 <BgIceObjects_Init>
 a64:	00000000 	nop
 a68:	e7a00048 	swc1	$f0,72(sp)
 a6c:	0c000000 	jal	0 <BgIceObjects_Init>
 a70:	86040158 	lh	a0,344(s0)
 a74:	46000506 	mov.s	$f20,$f0
 a78:	0c000000 	jal	0 <BgIceObjects_Init>
 a7c:	86040158 	lh	a0,344(s0)
 a80:	3c014270 	lui	at,0x4270
 a84:	44812000 	mtc1	at,$f4
 a88:	c7aa0048 	lwc1	$f10,72(sp)
 a8c:	c6120024 	lwc1	$f18,36(s0)
 a90:	46142202 	mul.s	$f8,$f4,$f20
 a94:	46089401 	sub.s	$f16,$f18,$f8
 a98:	460a0182 	mul.s	$f6,$f0,$f10
 a9c:	46103100 	add.s	$f4,$f6,$f16
 aa0:	e7a40058 	swc1	$f4,88(sp)
 aa4:	0c000000 	jal	0 <BgIceObjects_Init>
 aa8:	86040158 	lh	a0,344(s0)
 aac:	46000506 	mov.s	$f20,$f0
 ab0:	0c000000 	jal	0 <BgIceObjects_Init>
 ab4:	86040158 	lh	a0,344(s0)
 ab8:	3c014270 	lui	at,0x4270
 abc:	44814000 	mtc1	at,$f8
 ac0:	c7b00048 	lwc1	$f16,72(sp)
 ac4:	c612002c 	lwc1	$f18,44(s0)
 ac8:	46144282 	mul.s	$f10,$f8,$f20
 acc:	24040028 	li	a0,40
 ad0:	2405000f 	li	a1,15
 ad4:	46100102 	mul.s	$f4,$f0,$f16
 ad8:	460a9181 	sub.s	$f6,$f18,$f10
 adc:	46043201 	sub.s	$f8,$f6,$f4
 ae0:	0c000000 	jal	0 <BgIceObjects_Init>
 ae4:	e7a80060 	swc1	$f8,96(sp)
 ae8:	3c0b0000 	lui	t3,0x0
 aec:	3c0c0000 	lui	t4,0x0
 af0:	258c0000 	addiu	t4,t4,0
 af4:	256b0000 	addiu	t3,t3,0
 af8:	3c070000 	lui	a3,0x0
 afc:	240d00fa 	li	t5,250
 b00:	afad0018 	sw	t5,24(sp)
 b04:	24e70000 	addiu	a3,a3,0
 b08:	afab0010 	sw	t3,16(sp)
 b0c:	afac0014 	sw	t4,20(sp)
 b10:	8fa4006c 	lw	a0,108(sp)
 b14:	27a50058 	addiu	a1,sp,88
 b18:	27a6004c 	addiu	a2,sp,76
 b1c:	0c000000 	jal	0 <BgIceObjects_Init>
 b20:	afa2001c 	sw	v0,28(sp)
 b24:	02002025 	move	a0,s0
 b28:	0c000000 	jal	0 <BgIceObjects_Init>
 b2c:	240500df 	li	a1,223
 b30:	02002025 	move	a0,s0
 b34:	0c000000 	jal	0 <BgIceObjects_Init>
 b38:	8fa5006c 	lw	a1,108(sp)
 b3c:	8fbf0034 	lw	ra,52(sp)
 b40:	d7b40028 	ldc1	$f20,40(sp)
 b44:	8fb00030 	lw	s0,48(sp)
 b48:	03e00008 	jr	ra
 b4c:	27bd0068 	addiu	sp,sp,104

00000b50 <func_80890360>:
 b50:	27bdffe8 	addiu	sp,sp,-24
 b54:	afbf0014 	sw	ra,20(sp)
 b58:	44800000 	mtc1	zero,$f0
 b5c:	c4840150 	lwc1	$f4,336(a0)
 b60:	00803825 	move	a3,a0
 b64:	8ca21c44 	lw	v0,7236(a1)
 b68:	46040032 	c.eq.s	$f0,$f4
 b6c:	3c063f80 	lui	a2,0x3f80
 b70:	45030007 	bc1tl	b90 <func_80890360+0x40>
 b74:	8ce5000c 	lw	a1,12(a3)
 b78:	8c4e0680 	lw	t6,1664(v0)
 b7c:	2401ffef 	li	at,-17
 b80:	01c17824 	and	t7,t6,at
 b84:	ac4f0680 	sw	t7,1664(v0)
 b88:	e4800150 	swc1	$f0,336(a0)
 b8c:	8ce5000c 	lw	a1,12(a3)
 b90:	afa70018 	sw	a3,24(sp)
 b94:	0c000000 	jal	0 <BgIceObjects_Init>
 b98:	24e40028 	addiu	a0,a3,40
 b9c:	1040000f 	beqz	v0,bdc <func_80890360+0x8c>
 ba0:	8fa70018 	lw	a3,24(sp)
 ba4:	8cf80004 	lw	t8,4(a3)
 ba8:	2401ffef 	li	at,-17
 bac:	24e40168 	addiu	a0,a3,360
 bb0:	0301c824 	and	t9,t8,at
 bb4:	acf90004 	sw	t9,4(a3)
 bb8:	afa70018 	sw	a3,24(sp)
 bbc:	0c000000 	jal	0 <BgIceObjects_Init>
 bc0:	24e50008 	addiu	a1,a3,8
 bc4:	8fa70018 	lw	a3,24(sp)
 bc8:	44803000 	mtc1	zero,$f6
 bcc:	3c080000 	lui	t0,0x0
 bd0:	25080000 	addiu	t0,t0,0
 bd4:	ace80164 	sw	t0,356(a3)
 bd8:	e4e60068 	swc1	$f6,104(a3)
 bdc:	8fbf0014 	lw	ra,20(sp)
 be0:	27bd0018 	addiu	sp,sp,24
 be4:	03e00008 	jr	ra
 be8:	00000000 	nop

00000bec <func_808903FC>:
 bec:	44800000 	mtc1	zero,$f0
 bf0:	c4840150 	lwc1	$f4,336(a0)
 bf4:	8ca21c44 	lw	v0,7236(a1)
 bf8:	46040032 	c.eq.s	$f0,$f4
 bfc:	00000000 	nop
 c00:	45010006 	bc1t	c1c <func_808903FC+0x30>
 c04:	00000000 	nop
 c08:	8c4e0680 	lw	t6,1664(v0)
 c0c:	2401ffef 	li	at,-17
 c10:	01c17824 	and	t7,t6,at
 c14:	ac4f0680 	sw	t7,1664(v0)
 c18:	e4800150 	swc1	$f0,336(a0)
 c1c:	03e00008 	jr	ra
 c20:	00000000 	nop

00000c24 <BgIceObjects_Update>:
 c24:	27bdffe8 	addiu	sp,sp,-24
 c28:	afbf0014 	sw	ra,20(sp)
 c2c:	8c990164 	lw	t9,356(a0)
 c30:	0320f809 	jalr	t9
 c34:	00000000 	nop
 c38:	8fbf0014 	lw	ra,20(sp)
 c3c:	27bd0018 	addiu	sp,sp,24
 c40:	03e00008 	jr	ra
 c44:	00000000 	nop

00000c48 <BgIceObjects_Draw>:
 c48:	27bdffe8 	addiu	sp,sp,-24
 c4c:	afa40018 	sw	a0,24(sp)
 c50:	00a02025 	move	a0,a1
 c54:	afbf0014 	sw	ra,20(sp)
 c58:	3c050600 	lui	a1,0x600
 c5c:	0c000000 	jal	0 <BgIceObjects_Init>
 c60:	24a50190 	addiu	a1,a1,400
 c64:	8fbf0014 	lw	ra,20(sp)
 c68:	27bd0018 	addiu	sp,sp,24
 c6c:	03e00008 	jr	ra
 c70:	00000000 	nop
	...
