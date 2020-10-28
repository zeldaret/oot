
build/src/overlays/actors/ovl_Bg_Haka/z_bg_haka.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHaka_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa50034 	sw	a1,52(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00024 	sw	zero,36(sp)
  1c:	0c000000 	jal	0 <BgHaka_Init>
  20:	24a50020 	addiu	a1,a1,32
  24:	02002025 	move	a0,s0
  28:	0c000000 	jal	0 <BgHaka_Init>
  2c:	00002825 	move	a1,zero
  30:	3c040000 	lui	a0,0x0
  34:	24840000 	addiu	a0,a0,0
  38:	0c000000 	jal	0 <BgHaka_Init>
  3c:	27a50024 	addiu	a1,sp,36
  40:	8fa40034 	lw	a0,52(sp)
  44:	02003025 	move	a2,s0
  48:	8fa70024 	lw	a3,36(sp)
  4c:	0c000000 	jal	0 <BgHaka_Init>
  50:	24850810 	addiu	a1,a0,2064
  54:	3c0e0000 	lui	t6,0x0
  58:	25ce0000 	addiu	t6,t6,0
  5c:	ae02014c 	sw	v0,332(s0)
  60:	ae0e0164 	sw	t6,356(s0)
  64:	8fbf001c 	lw	ra,28(sp)
  68:	8fb00018 	lw	s0,24(sp)
  6c:	27bd0030 	addiu	sp,sp,48
  70:	03e00008 	jr	ra
  74:	00000000 	nop

00000078 <BgHaka_Destroy>:
  78:	27bdffe8 	addiu	sp,sp,-24
  7c:	afa40018 	sw	a0,24(sp)
  80:	8fae0018 	lw	t6,24(sp)
  84:	afbf0014 	sw	ra,20(sp)
  88:	00a02025 	move	a0,a1
  8c:	24a50810 	addiu	a1,a1,2064
  90:	0c000000 	jal	0 <BgHaka_Init>
  94:	8dc6014c 	lw	a2,332(t6)
  98:	8fbf0014 	lw	ra,20(sp)
  9c:	27bd0018 	addiu	sp,sp,24
  a0:	03e00008 	jr	ra
  a4:	00000000 	nop

000000a8 <func_8087B758>:
  a8:	27bdffd8 	addiu	sp,sp,-40
  ac:	00a03825 	move	a3,a1
  b0:	afbf0014 	sw	ra,20(sp)
  b4:	24e60024 	addiu	a2,a3,36
  b8:	afa7002c 	sw	a3,44(sp)
  bc:	0c000000 	jal	0 <BgHaka_Init>
  c0:	27a5001c 	addiu	a1,sp,28
  c4:	c7a0001c 	lwc1	$f0,28(sp)
  c8:	3c010000 	lui	at,0x0
  cc:	c4240040 	lwc1	$f4,64(at)
  d0:	46000005 	abs.s	$f0,$f0
  d4:	8fa7002c 	lw	a3,44(sp)
  d8:	4604003c 	c.lt.s	$f0,$f4
  dc:	c7a00024 	lwc1	$f0,36(sp)
  e0:	3c010000 	lui	at,0x0
  e4:	45020011 	bc1fl	12c <func_8087B758+0x84>
  e8:	8fbf0014 	lw	ra,20(sp)
  ec:	c4260044 	lwc1	$f6,68(at)
  f0:	3c01c210 	lui	at,0xc210
  f4:	4600303c 	c.lt.s	$f6,$f0
  f8:	00000000 	nop
  fc:	4502000b 	bc1fl	12c <func_8087B758+0x84>
 100:	8fbf0014 	lw	ra,20(sp)
 104:	44814000 	mtc1	at,$f8
 108:	00000000 	nop
 10c:	4608003c 	c.lt.s	$f0,$f8
 110:	00000000 	nop
 114:	45020005 	bc1fl	12c <func_8087B758+0x84>
 118:	8fbf0014 	lw	ra,20(sp)
 11c:	8cee0680 	lw	t6,1664(a3)
 120:	35cf0200 	ori	t7,t6,0x200
 124:	acef0680 	sw	t7,1664(a3)
 128:	8fbf0014 	lw	ra,20(sp)
 12c:	27bd0028 	addiu	sp,sp,40
 130:	03e00008 	jr	ra
 134:	00000000 	nop

00000138 <func_8087B7E8>:
 138:	27bdffe0 	addiu	sp,sp,-32
 13c:	afbf001c 	sw	ra,28(sp)
 140:	afb00018 	sw	s0,24(sp)
 144:	44801000 	mtc1	zero,$f2
 148:	c4800150 	lwc1	$f0,336(a0)
 14c:	00803825 	move	a3,a0
 150:	00a03025 	move	a2,a1
 154:	46001032 	c.eq.s	$f2,$f0
 158:	8cb01c44 	lw	s0,7236(a1)
 15c:	45030043 	bc1tl	26c <func_8087B7E8+0x134>
 160:	00e02025 	move	a0,a3
 164:	84a200a4 	lh	v0,164(a1)
 168:	24010053 	li	at,83
 16c:	3c030000 	lui	v1,0x0
 170:	1441001e 	bne	v0,at,1ec <func_8087B7E8+0xb4>
 174:	24630000 	addiu	v1,v1,0
 178:	8c6e0004 	lw	t6,4(v1)
 17c:	51c0001c 	beqzl	t6,1f0 <func_8087B7E8+0xb8>
 180:	4600103c 	c.lt.s	$f2,$f0
 184:	8c6f0010 	lw	t7,16(v1)
 188:	55e00019 	bnezl	t7,1f0 <func_8087B7E8+0xb8>
 18c:	4600103c 	c.lt.s	$f2,$f0
 190:	e4820150 	swc1	$f2,336(a0)
 194:	8e180680 	lw	t8,1664(s0)
 198:	2401ffef 	li	at,-17
 19c:	00a02025 	move	a0,a1
 1a0:	0301c824 	and	t9,t8,at
 1a4:	ae190680 	sw	t9,1664(s0)
 1a8:	afa70020 	sw	a3,32(sp)
 1ac:	0c000000 	jal	0 <BgHaka_Init>
 1b0:	afa50024 	sw	a1,36(sp)
 1b4:	1440002c 	bnez	v0,268 <func_8087B7E8+0x130>
 1b8:	8fa70020 	lw	a3,32(sp)
 1bc:	8fa40024 	lw	a0,36(sp)
 1c0:	24055073 	li	a1,20595
 1c4:	00003025 	move	a2,zero
 1c8:	0c000000 	jal	0 <BgHaka_Init>
 1cc:	afa70020 	sw	a3,32(sp)
 1d0:	8fa70020 	lw	a3,32(sp)
 1d4:	3c090000 	lui	t1,0x0
 1d8:	24080064 	li	t0,100
 1dc:	25290000 	addiu	t1,t1,0
 1e0:	a4e8001c 	sh	t0,28(a3)
 1e4:	10000020 	b	268 <func_8087B7E8+0x130>
 1e8:	ace90164 	sw	t1,356(a3)
 1ec:	4600103c 	c.lt.s	$f2,$f0
 1f0:	3c030000 	lui	v1,0x0
 1f4:	24630000 	addiu	v1,v1,0
 1f8:	24010057 	li	at,87
 1fc:	4503000e 	bc1tl	238 <func_8087B7E8+0x100>
 200:	e4e20150 	swc1	$f2,336(a3)
 204:	54410012 	bnel	v0,at,250 <func_8087B7E8+0x118>
 208:	84ed00b6 	lh	t5,182(a3)
 20c:	8c6a0004 	lw	t2,4(v1)
 210:	00c02025 	move	a0,a2
 214:	24050023 	li	a1,35
 218:	5140000d 	beqzl	t2,250 <func_8087B7E8+0x118>
 21c:	84ed00b6 	lh	t5,182(a3)
 220:	0c000000 	jal	0 <BgHaka_Init>
 224:	afa70020 	sw	a3,32(sp)
 228:	44801000 	mtc1	zero,$f2
 22c:	14400007 	bnez	v0,24c <func_8087B7E8+0x114>
 230:	8fa70020 	lw	a3,32(sp)
 234:	e4e20150 	swc1	$f2,336(a3)
 238:	8e0b0680 	lw	t3,1664(s0)
 23c:	2401ffef 	li	at,-17
 240:	01616024 	and	t4,t3,at
 244:	10000008 	b	268 <func_8087B7E8+0x130>
 248:	ae0c0680 	sw	t4,1664(s0)
 24c:	84ed00b6 	lh	t5,182(a3)
 250:	34018000 	li	at,0x8000
 254:	3c0f0000 	lui	t7,0x0
 258:	25ef0000 	addiu	t7,t7,0
 25c:	01a17021 	addu	t6,t5,at
 260:	a4ee0032 	sh	t6,50(a3)
 264:	acef0164 	sw	t7,356(a3)
 268:	00e02025 	move	a0,a3
 26c:	0c000000 	jal	0 <BgHaka_Init>
 270:	02002825 	move	a1,s0
 274:	8fbf001c 	lw	ra,28(sp)
 278:	8fb00018 	lw	s0,24(sp)
 27c:	27bd0020 	addiu	sp,sp,32
 280:	03e00008 	jr	ra
 284:	00000000 	nop

00000288 <func_8087B938>:
 288:	27bdffc0 	addiu	sp,sp,-64
 28c:	afbf0034 	sw	ra,52(sp)
 290:	afb00030 	sw	s0,48(sp)
 294:	afa50044 	sw	a1,68(sp)
 298:	8caf1c44 	lw	t7,7236(a1)
 29c:	3c013fc0 	lui	at,0x3fc0
 2a0:	44811000 	mtc1	at,$f2
 2a4:	3c010000 	lui	at,0x0
 2a8:	afaf003c 	sw	t7,60(sp)
 2ac:	c4840068 	lwc1	$f4,104(a0)
 2b0:	c4260048 	lwc1	$f6,72(at)
 2b4:	00808025 	move	s0,a0
 2b8:	3c054270 	lui	a1,0x4270
 2bc:	46062200 	add.s	$f8,$f4,$f6
 2c0:	e4880068 	swc1	$f8,104(a0)
 2c4:	c4800068 	lwc1	$f0,104(a0)
 2c8:	4600103c 	c.lt.s	$f2,$f0
 2cc:	00000000 	nop
 2d0:	45020004 	bc1fl	2e4 <func_8087B938+0x5c>
 2d4:	e6000068 	swc1	$f0,104(s0)
 2d8:	10000002 	b	2e4 <func_8087B938+0x5c>
 2dc:	e4820068 	swc1	$f2,104(a0)
 2e0:	e6000068 	swc1	$f0,104(s0)
 2e4:	26040070 	addiu	a0,s0,112
 2e8:	0c000000 	jal	0 <BgHaka_Init>
 2ec:	8e060068 	lw	a2,104(s0)
 2f0:	afa20038 	sw	v0,56(sp)
 2f4:	0c000000 	jal	0 <BgHaka_Init>
 2f8:	86040032 	lh	a0,50(s0)
 2fc:	c60a0070 	lwc1	$f10,112(s0)
 300:	c6120008 	lwc1	$f18,8(s0)
 304:	86040032 	lh	a0,50(s0)
 308:	460a0402 	mul.s	$f16,$f0,$f10
 30c:	46128100 	add.s	$f4,$f16,$f18
 310:	0c000000 	jal	0 <BgHaka_Init>
 314:	e6040024 	swc1	$f4,36(s0)
 318:	c6060070 	lwc1	$f6,112(s0)
 31c:	c60a0010 	lwc1	$f10,16(s0)
 320:	46060202 	mul.s	$f8,$f0,$f6
 324:	460a4400 	add.s	$f16,$f8,$f10
 328:	e610002c 	swc1	$f16,44(s0)
 32c:	8fb80038 	lw	t8,56(sp)
 330:	5300002b 	beqzl	t8,3e0 <func_8087B938+0x158>
 334:	02002025 	move	a0,s0
 338:	44809000 	mtc1	zero,$f18
 33c:	8fa2003c 	lw	v0,60(sp)
 340:	2401ffef 	li	at,-17
 344:	e6120150 	swc1	$f18,336(s0)
 348:	8c590680 	lw	t9,1664(v0)
 34c:	3c0a0000 	lui	t2,0x0
 350:	03214024 	and	t0,t9,at
 354:	ac480680 	sw	t0,1664(v0)
 358:	8609001c 	lh	t1,28(s0)
 35c:	24010001 	li	at,1
 360:	15210005 	bne	t1,at,378 <func_8087B938+0xf0>
 364:	00000000 	nop
 368:	0c000000 	jal	0 <BgHaka_Init>
 36c:	24044802 	li	a0,18434
 370:	10000017 	b	3d0 <func_8087B938+0x148>
 374:	00000000 	nop
 378:	8d4a0010 	lw	t2,16(t2)
 37c:	8fa50044 	lw	a1,68(sp)
 380:	11400013 	beqz	t2,3d0 <func_8087B938+0x148>
 384:	00000000 	nop
 388:	84ab00a4 	lh	t3,164(a1)
 38c:	24010053 	li	at,83
 390:	24a41c24 	addiu	a0,a1,7204
 394:	1561000e 	bne	t3,at,3d0 <func_8087B938+0x148>
 398:	00000000 	nop
 39c:	c604000c 	lwc1	$f4,12(s0)
 3a0:	8e070008 	lw	a3,8(s0)
 3a4:	240d0001 	li	t5,1
 3a8:	e7a40010 	swc1	$f4,16(sp)
 3ac:	c6060010 	lwc1	$f6,16(s0)
 3b0:	afa00018 	sw	zero,24(sp)
 3b4:	2406000d 	li	a2,13
 3b8:	e7a60014 	swc1	$f6,20(sp)
 3bc:	860c00b6 	lh	t4,182(s0)
 3c0:	afad0024 	sw	t5,36(sp)
 3c4:	afa00020 	sw	zero,32(sp)
 3c8:	0c000000 	jal	0 <BgHaka_Init>
 3cc:	afac001c 	sw	t4,28(sp)
 3d0:	3c0e0000 	lui	t6,0x0
 3d4:	25ce0000 	addiu	t6,t6,0
 3d8:	ae0e0164 	sw	t6,356(s0)
 3dc:	02002025 	move	a0,s0
 3e0:	0c000000 	jal	0 <BgHaka_Init>
 3e4:	2405200a 	li	a1,8202
 3e8:	8fbf0034 	lw	ra,52(sp)
 3ec:	8fb00030 	lw	s0,48(sp)
 3f0:	27bd0040 	addiu	sp,sp,64
 3f4:	03e00008 	jr	ra
 3f8:	00000000 	nop

000003fc <func_8087BAAC>:
 3fc:	44800000 	mtc1	zero,$f0
 400:	c4840150 	lwc1	$f4,336(a0)
 404:	8ca21c44 	lw	v0,7236(a1)
 408:	46040032 	c.eq.s	$f0,$f4
 40c:	00000000 	nop
 410:	45010006 	bc1t	42c <func_8087BAAC+0x30>
 414:	00000000 	nop
 418:	e4800150 	swc1	$f0,336(a0)
 41c:	8c4e0680 	lw	t6,1664(v0)
 420:	2401ffef 	li	at,-17
 424:	01c17824 	and	t7,t6,at
 428:	ac4f0680 	sw	t7,1664(v0)
 42c:	03e00008 	jr	ra
 430:	00000000 	nop

00000434 <func_8087BAE4>:
 434:	27bdffe8 	addiu	sp,sp,-24
 438:	afbf0014 	sw	ra,20(sp)
 43c:	8482001c 	lh	v0,28(a0)
 440:	44800000 	mtc1	zero,$f0
 444:	8ca61c44 	lw	a2,7236(a1)
 448:	10400002 	beqz	v0,454 <func_8087BAE4+0x20>
 44c:	244effff 	addiu	t6,v0,-1
 450:	a48e001c 	sh	t6,28(a0)
 454:	c4840150 	lwc1	$f4,336(a0)
 458:	3c080000 	lui	t0,0x0
 45c:	25080000 	addiu	t0,t0,0
 460:	46040032 	c.eq.s	$f0,$f4
 464:	00000000 	nop
 468:	45030007 	bc1tl	488 <func_8087BAE4+0x54>
 46c:	8499001c 	lh	t9,28(a0)
 470:	e4800150 	swc1	$f0,336(a0)
 474:	8ccf0680 	lw	t7,1664(a2)
 478:	2401ffef 	li	at,-17
 47c:	01e1c024 	and	t8,t7,at
 480:	acd80680 	sw	t8,1664(a2)
 484:	8499001c 	lh	t9,28(a0)
 488:	17200002 	bnez	t9,494 <func_8087BAE4+0x60>
 48c:	00000000 	nop
 490:	ac880164 	sw	t0,356(a0)
 494:	0c000000 	jal	0 <BgHaka_Init>
 498:	00c02825 	move	a1,a2
 49c:	8fbf0014 	lw	ra,20(sp)
 4a0:	27bd0018 	addiu	sp,sp,24
 4a4:	03e00008 	jr	ra
 4a8:	00000000 	nop

000004ac <BgHaka_Update>:
 4ac:	27bdffe8 	addiu	sp,sp,-24
 4b0:	afbf0014 	sw	ra,20(sp)
 4b4:	8c990164 	lw	t9,356(a0)
 4b8:	0320f809 	jalr	t9
 4bc:	00000000 	nop
 4c0:	8fbf0014 	lw	ra,20(sp)
 4c4:	27bd0018 	addiu	sp,sp,24
 4c8:	03e00008 	jr	ra
 4cc:	00000000 	nop

000004d0 <BgHaka_Draw>:
 4d0:	27bdffb8 	addiu	sp,sp,-72
 4d4:	afb10018 	sw	s1,24(sp)
 4d8:	00a08825 	move	s1,a1
 4dc:	afbf001c 	sw	ra,28(sp)
 4e0:	afb00014 	sw	s0,20(sp)
 4e4:	afa40048 	sw	a0,72(sp)
 4e8:	8ca50000 	lw	a1,0(a1)
 4ec:	3c060000 	lui	a2,0x0
 4f0:	24c60000 	addiu	a2,a2,0
 4f4:	27a40034 	addiu	a0,sp,52
 4f8:	24070191 	li	a3,401
 4fc:	0c000000 	jal	0 <BgHaka_Init>
 500:	00a08025 	move	s0,a1
 504:	0c000000 	jal	0 <BgHaka_Init>
 508:	8e240000 	lw	a0,0(s1)
 50c:	0c000000 	jal	0 <BgHaka_Init>
 510:	8e240000 	lw	a0,0(s1)
 514:	8e0202c0 	lw	v0,704(s0)
 518:	3c0fda38 	lui	t7,0xda38
 51c:	35ef0003 	ori	t7,t7,0x3
 520:	244e0008 	addiu	t6,v0,8
 524:	ae0e02c0 	sw	t6,704(s0)
 528:	ac4f0000 	sw	t7,0(v0)
 52c:	8e240000 	lw	a0,0(s1)
 530:	3c050000 	lui	a1,0x0
 534:	24a50010 	addiu	a1,a1,16
 538:	24060196 	li	a2,406
 53c:	0c000000 	jal	0 <BgHaka_Init>
 540:	afa20030 	sw	v0,48(sp)
 544:	8fa30030 	lw	v1,48(sp)
 548:	3c080000 	lui	t0,0x0
 54c:	25080000 	addiu	t0,t0,0
 550:	ac620004 	sw	v0,4(v1)
 554:	8e0202c0 	lw	v0,704(s0)
 558:	3c19de00 	lui	t9,0xde00
 55c:	3c014120 	lui	at,0x4120
 560:	24580008 	addiu	t8,v0,8
 564:	ae1802c0 	sw	t8,704(s0)
 568:	ac480004 	sw	t0,4(v0)
 56c:	ac590000 	sw	t9,0(v0)
 570:	8fa90048 	lw	t1,72(sp)
 574:	44813000 	mtc1	at,$f6
 578:	44806000 	mtc1	zero,$f12
 57c:	c5240070 	lwc1	$f4,112(t1)
 580:	24070001 	li	a3,1
 584:	46006386 	mov.s	$f14,$f12
 588:	46062202 	mul.s	$f8,$f4,$f6
 58c:	44064000 	mfc1	a2,$f8
 590:	0c000000 	jal	0 <BgHaka_Init>
 594:	00000000 	nop
 598:	8e0202d0 	lw	v0,720(s0)
 59c:	3c0bda38 	lui	t3,0xda38
 5a0:	356b0003 	ori	t3,t3,0x3
 5a4:	244a0008 	addiu	t2,v0,8
 5a8:	ae0a02d0 	sw	t2,720(s0)
 5ac:	ac4b0000 	sw	t3,0(v0)
 5b0:	8e240000 	lw	a0,0(s1)
 5b4:	3c050000 	lui	a1,0x0
 5b8:	24a50020 	addiu	a1,a1,32
 5bc:	240601a0 	li	a2,416
 5c0:	0c000000 	jal	0 <BgHaka_Init>
 5c4:	afa20028 	sw	v0,40(sp)
 5c8:	8fa30028 	lw	v1,40(sp)
 5cc:	3c0e0000 	lui	t6,0x0
 5d0:	25ce0000 	addiu	t6,t6,0
 5d4:	ac620004 	sw	v0,4(v1)
 5d8:	8e0202d0 	lw	v0,720(s0)
 5dc:	3c0dde00 	lui	t5,0xde00
 5e0:	3c060000 	lui	a2,0x0
 5e4:	244c0008 	addiu	t4,v0,8
 5e8:	ae0c02d0 	sw	t4,720(s0)
 5ec:	ac4e0004 	sw	t6,4(v0)
 5f0:	ac4d0000 	sw	t5,0(v0)
 5f4:	8e250000 	lw	a1,0(s1)
 5f8:	24c60030 	addiu	a2,a2,48
 5fc:	27a40034 	addiu	a0,sp,52
 600:	0c000000 	jal	0 <BgHaka_Init>
 604:	240701a5 	li	a3,421
 608:	8fbf001c 	lw	ra,28(sp)
 60c:	8fb00014 	lw	s0,20(sp)
 610:	8fb10018 	lw	s1,24(sp)
 614:	03e00008 	jr	ra
 618:	27bd0048 	addiu	sp,sp,72
 61c:	00000000 	nop
