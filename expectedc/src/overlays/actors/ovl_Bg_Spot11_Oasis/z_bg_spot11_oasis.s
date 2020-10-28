
build/src/overlays/actors/ovl_Bg_Spot11_Oasis/z_bg_spot11_oasis.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808B27F0>:
   0:	afa50004 	sw	a1,4(sp)
   4:	8c8e07c0 	lw	t6,1984(a0)
   8:	00052c00 	sll	a1,a1,0x10
   c:	00052c03 	sra	a1,a1,0x10
  10:	8dc20028 	lw	v0,40(t6)
  14:	03e00008 	jr	ra
  18:	a4450002 	sh	a1,2(v0)

0000001c <func_808B280C>:
  1c:	27bdff98 	addiu	sp,sp,-104
  20:	3c030000 	lui	v1,0x0
  24:	24630000 	addiu	v1,v1,0
  28:	846e0000 	lh	t6,0(v1)
  2c:	846f0002 	lh	t7,2(v1)
  30:	afbf0034 	sw	ra,52(sp)
  34:	448e2000 	mtc1	t6,$f4
  38:	448f4000 	mtc1	t7,$f8
  3c:	afb50030 	sw	s5,48(sp)
  40:	468021a0 	cvt.s.w	$f6,$f4
  44:	afb4002c 	sw	s4,44(sp)
  48:	afb30028 	sw	s3,40(sp)
  4c:	afb20024 	sw	s2,36(sp)
  50:	afb10020 	sw	s1,32(sp)
  54:	468042a0 	cvt.s.w	$f10,$f8
  58:	afb0001c 	sw	s0,28(sp)
  5c:	44800000 	mtc1	zero,$f0
  60:	8c911c44 	lw	s1,7236(a0)
  64:	3c100000 	lui	s0,0x0
  68:	3c150000 	lui	s5,0x0
  6c:	e7a60058 	swc1	$f6,88(sp)
  70:	e7aa0060 	swc1	$f10,96(sp)
  74:	26b50000 	addiu	s5,s5,0
  78:	26100000 	addiu	s0,s0,0
  7c:	27b20058 	addiu	s2,sp,88
  80:	27b3004c 	addiu	s3,sp,76
  84:	27b40040 	addiu	s4,sp,64
  88:	e7a0005c 	swc1	$f0,92(sp)
  8c:	e7a00050 	swc1	$f0,80(sp)
  90:	e7a00044 	swc1	$f0,68(sp)
  94:	86180000 	lh	t8,0(s0)
  98:	86190002 	lh	t9,2(s0)
  9c:	86080004 	lh	t0,4(s0)
  a0:	44988000 	mtc1	t8,$f16
  a4:	86090006 	lh	t1,6(s0)
  a8:	44992000 	mtc1	t9,$f4
  ac:	468084a0 	cvt.s.w	$f18,$f16
  b0:	44884000 	mtc1	t0,$f8
  b4:	44898000 	mtc1	t1,$f16
  b8:	02402025 	move	a0,s2
  bc:	02602825 	move	a1,s3
  c0:	468021a0 	cvt.s.w	$f6,$f4
  c4:	e7b2004c 	swc1	$f18,76(sp)
  c8:	02803025 	move	a2,s4
  cc:	468042a0 	cvt.s.w	$f10,$f8
  d0:	e7a60054 	swc1	$f6,84(sp)
  d4:	468084a0 	cvt.s.w	$f18,$f16
  d8:	e7aa0040 	swc1	$f10,64(sp)
  dc:	e7b20048 	swc1	$f18,72(sp)
  e0:	c6240024 	lwc1	$f4,36(s1)
  e4:	8e27002c 	lw	a3,44(s1)
  e8:	0c000000 	jal	0 <func_808B27F0>
  ec:	e7a40010 	swc1	$f4,16(sp)
  f0:	10400003 	beqz	v0,100 <func_808B280C+0xe4>
  f4:	26100004 	addiu	s0,s0,4
  f8:	10000004 	b	10c <func_808B280C+0xf0>
  fc:	24020001 	li	v0,1
 100:	5615ffe5 	bnel	s0,s5,98 <func_808B280C+0x7c>
 104:	86180000 	lh	t8,0(s0)
 108:	00001025 	move	v0,zero
 10c:	8fbf0034 	lw	ra,52(sp)
 110:	8fb0001c 	lw	s0,28(sp)
 114:	8fb10020 	lw	s1,32(sp)
 118:	8fb20024 	lw	s2,36(sp)
 11c:	8fb30028 	lw	s3,40(sp)
 120:	8fb4002c 	lw	s4,44(sp)
 124:	8fb50030 	lw	s5,48(sp)
 128:	03e00008 	jr	ra
 12c:	27bd0068 	addiu	sp,sp,104

00000130 <BgSpot11Oasis_Init>:
 130:	27bdffe8 	addiu	sp,sp,-24
 134:	afa5001c 	sw	a1,28(sp)
 138:	afbf0014 	sw	ra,20(sp)
 13c:	3c050000 	lui	a1,0x0
 140:	afa40018 	sw	a0,24(sp)
 144:	0c000000 	jal	0 <func_808B27F0>
 148:	24a50000 	addiu	a1,a1,0
 14c:	0c000000 	jal	0 <func_808B27F0>
 150:	8fa40018 	lw	a0,24(sp)
 154:	3c01c2c8 	lui	at,0xc2c8
 158:	44812000 	mtc1	at,$f4
 15c:	8fae0018 	lw	t6,24(sp)
 160:	2405ff9c 	li	a1,-100
 164:	e5c40028 	swc1	$f4,40(t6)
 168:	0c000000 	jal	0 <func_808B27F0>
 16c:	8fa4001c 	lw	a0,28(sp)
 170:	8fbf0014 	lw	ra,20(sp)
 174:	27bd0018 	addiu	sp,sp,24
 178:	03e00008 	jr	ra
 17c:	00000000 	nop

00000180 <func_808B2970>:
 180:	3c0e0000 	lui	t6,0x0
 184:	25ce0000 	addiu	t6,t6,0
 188:	03e00008 	jr	ra
 18c:	ac8e014c 	sw	t6,332(a0)

00000190 <func_808B2980>:
 190:	27bdffe0 	addiu	sp,sp,-32
 194:	afa40020 	sw	a0,32(sp)
 198:	afbf001c 	sw	ra,28(sp)
 19c:	afa50024 	sw	a1,36(sp)
 1a0:	00a02025 	move	a0,a1
 1a4:	0c000000 	jal	0 <func_808B27F0>
 1a8:	24050005 	li	a1,5
 1ac:	5040000d 	beqzl	v0,1e4 <func_808B2980+0x54>
 1b0:	8fbf001c 	lw	ra,28(sp)
 1b4:	0c000000 	jal	0 <func_808B27F0>
 1b8:	8fa40024 	lw	a0,36(sp)
 1bc:	10400008 	beqz	v0,1e0 <func_808B2980+0x50>
 1c0:	8fa40024 	lw	a0,36(sp)
 1c4:	24051036 	li	a1,4150
 1c8:	2406ff9d 	li	a2,-99
 1cc:	8fa70020 	lw	a3,32(sp)
 1d0:	0c000000 	jal	0 <func_808B27F0>
 1d4:	afa00010 	sw	zero,16(sp)
 1d8:	0c000000 	jal	0 <func_808B27F0>
 1dc:	8fa40020 	lw	a0,32(sp)
 1e0:	8fbf001c 	lw	ra,28(sp)
 1e4:	27bd0020 	addiu	sp,sp,32
 1e8:	03e00008 	jr	ra
 1ec:	00000000 	nop

000001f0 <func_808B29E0>:
 1f0:	3c0e0000 	lui	t6,0x0
 1f4:	25ce0000 	addiu	t6,t6,0
 1f8:	03e00008 	jr	ra
 1fc:	ac8e014c 	sw	t6,332(a0)

00000200 <func_808B29F0>:
 200:	27bdffc8 	addiu	sp,sp,-56
 204:	afb00030 	sw	s0,48(sp)
 208:	00808025 	move	s0,a0
 20c:	afbf0034 	sw	ra,52(sp)
 210:	afa5003c 	sw	a1,60(sp)
 214:	3c063f33 	lui	a2,0x3f33
 218:	34c63333 	ori	a2,a2,0x3333
 21c:	24050000 	li	a1,0
 220:	0c000000 	jal	0 <func_808B27F0>
 224:	24840028 	addiu	a0,a0,40
 228:	50400017 	beqzl	v0,288 <func_808B29F0+0x88>
 22c:	c6100028 	lwc1	$f16,40(s0)
 230:	0c000000 	jal	0 <func_808B27F0>
 234:	02002025 	move	a0,s0
 238:	3c014220 	lui	at,0x4220
 23c:	44813000 	mtc1	at,$f6
 240:	c6040028 	lwc1	$f4,40(s0)
 244:	8e070024 	lw	a3,36(s0)
 248:	8fa5003c 	lw	a1,60(sp)
 24c:	46062200 	add.s	$f8,$f4,$f6
 250:	240e0004 	li	t6,4
 254:	24060018 	li	a2,24
 258:	24a41c24 	addiu	a0,a1,7204
 25c:	e7a80010 	swc1	$f8,16(sp)
 260:	c60a002c 	lwc1	$f10,44(s0)
 264:	afae0024 	sw	t6,36(sp)
 268:	afa00020 	sw	zero,32(sp)
 26c:	afa0001c 	sw	zero,28(sp)
 270:	afa00018 	sw	zero,24(sp)
 274:	0c000000 	jal	0 <func_808B27F0>
 278:	e7aa0014 	swc1	$f10,20(sp)
 27c:	0c000000 	jal	0 <func_808B27F0>
 280:	24044802 	li	a0,18434
 284:	c6100028 	lwc1	$f16,40(s0)
 288:	8fa4003c 	lw	a0,60(sp)
 28c:	4600848d 	trunc.w.s	$f18,$f16
 290:	44059000 	mfc1	a1,$f18
 294:	00000000 	nop
 298:	00052c00 	sll	a1,a1,0x10
 29c:	0c000000 	jal	0 <func_808B27F0>
 2a0:	00052c03 	sra	a1,a1,0x10
 2a4:	8fbf0034 	lw	ra,52(sp)
 2a8:	8fb00030 	lw	s0,48(sp)
 2ac:	27bd0038 	addiu	sp,sp,56
 2b0:	03e00008 	jr	ra
 2b4:	00000000 	nop

000002b8 <func_808B2AA8>:
 2b8:	3c0e0000 	lui	t6,0x0
 2bc:	25ce0000 	addiu	t6,t6,0
 2c0:	03e00008 	jr	ra
 2c4:	ac8e014c 	sw	t6,332(a0)

000002c8 <func_808B2AB8>:
 2c8:	afa40000 	sw	a0,0(sp)
 2cc:	03e00008 	jr	ra
 2d0:	afa50004 	sw	a1,4(sp)

000002d4 <BgSpot11Oasis_Update>:
 2d4:	27bdffb8 	addiu	sp,sp,-72
 2d8:	afb00020 	sw	s0,32(sp)
 2dc:	00808025 	move	s0,a0
 2e0:	afbf0024 	sw	ra,36(sp)
 2e4:	afa5004c 	sw	a1,76(sp)
 2e8:	8e19014c 	lw	t9,332(s0)
 2ec:	0320f809 	jalr	t9
 2f0:	00000000 	nop
 2f4:	8e0f014c 	lw	t7,332(s0)
 2f8:	3c0e0000 	lui	t6,0x0
 2fc:	25ce0000 	addiu	t6,t6,0
 300:	55cf0004 	bnel	t6,t7,314 <BgSpot11Oasis_Update+0x40>
 304:	92080150 	lbu	t0,336(s0)
 308:	10000066 	b	4a4 <BgSpot11Oasis_Update+0x1d0>
 30c:	ae000134 	sw	zero,308(s0)
 310:	92080150 	lbu	t0,336(s0)
 314:	3c180000 	lui	t8,0x0
 318:	27180000 	addiu	t8,t8,0
 31c:	1100005f 	beqz	t0,49c <BgSpot11Oasis_Update+0x1c8>
 320:	ae180134 	sw	t8,308(s0)
 324:	3c0143c8 	lui	at,0x43c8
 328:	44812000 	mtc1	at,$f4
 32c:	c60000ec 	lwc1	$f0,236(s0)
 330:	3c01c220 	lui	at,0xc220
 334:	4604003c 	c.lt.s	$f0,$f4
 338:	00000000 	nop
 33c:	45020058 	bc1fl	4a0 <BgSpot11Oasis_Update+0x1cc>
 340:	240f0001 	li	t7,1
 344:	44813000 	mtc1	at,$f6
 348:	8fa9004c 	lw	t1,76(sp)
 34c:	3c020001 	lui	v0,0x1
 350:	4600303c 	c.lt.s	$f6,$f0
 354:	00491021 	addu	v0,v0,t1
 358:	45020051 	bc1fl	4a0 <BgSpot11Oasis_Update+0x1cc>
 35c:	240f0001 	li	t7,1
 360:	8c421de4 	lw	v0,7652(v0)
 364:	26040024 	addiu	a0,s0,36
 368:	3c0d0000 	lui	t5,0x0
 36c:	304a0004 	andi	t2,v0,0x4
 370:	5140004d 	beqzl	t2,4a8 <BgSpot11Oasis_Update+0x1d4>
 374:	8fbf0024 	lw	ra,36(sp)
 378:	920b0151 	lbu	t3,337(s0)
 37c:	25ad0000 	addiu	t5,t5,0
 380:	27a60030 	addiu	a2,sp,48
 384:	000b6080 	sll	t4,t3,0x2
 388:	018b6023 	subu	t4,t4,t3
 38c:	000c6080 	sll	t4,t4,0x2
 390:	0c000000 	jal	0 <func_808B27F0>
 394:	018d2821 	addu	a1,t4,t5
 398:	0c000000 	jal	0 <func_808B27F0>
 39c:	00000000 	nop
 3a0:	3c014248 	lui	at,0x4248
 3a4:	44814000 	mtc1	at,$f8
 3a8:	3c010000 	lui	at,0x0
 3ac:	c42a0000 	lwc1	$f10,0(at)
 3b0:	3c010000 	lui	at,0x0
 3b4:	c4320000 	lwc1	$f18,0(at)
 3b8:	460a0402 	mul.s	$f16,$f0,$f10
 3bc:	8fa4004c 	lw	a0,76(sp)
 3c0:	27a50030 	addiu	a1,sp,48
 3c4:	24060000 	li	a2,0
 3c8:	3c074170 	lui	a3,0x4170
 3cc:	e7a80010 	swc1	$f8,16(sp)
 3d0:	46128100 	add.s	$f4,$f16,$f18
 3d4:	0c000000 	jal	0 <func_808B27F0>
 3d8:	e7a40014 	swc1	$f4,20(sp)
 3dc:	0c000000 	jal	0 <func_808B27F0>
 3e0:	00000000 	nop
 3e4:	3c010000 	lui	at,0x0
 3e8:	c4260000 	lwc1	$f6,0(at)
 3ec:	4606003c 	c.lt.s	$f0,$f6
 3f0:	00000000 	nop
 3f4:	4502002c 	bc1fl	4a8 <BgSpot11Oasis_Update+0x1d4>
 3f8:	8fbf0024 	lw	ra,36(sp)
 3fc:	0c000000 	jal	0 <func_808B27F0>
 400:	00000000 	nop
 404:	3c010000 	lui	at,0x0
 408:	c4280000 	lwc1	$f8,0(at)
 40c:	240e0001 	li	t6,1
 410:	3c014f00 	lui	at,0x4f00
 414:	46080282 	mul.s	$f10,$f0,$f8
 418:	4459f800 	cfc1	t9,$31
 41c:	44cef800 	ctc1	t6,$31
 420:	00000000 	nop
 424:	46005424 	cvt.w.s	$f16,$f10
 428:	444ef800 	cfc1	t6,$31
 42c:	00000000 	nop
 430:	31ce0078 	andi	t6,t6,0x78
 434:	51c00013 	beqzl	t6,484 <BgSpot11Oasis_Update+0x1b0>
 438:	440e8000 	mfc1	t6,$f16
 43c:	44818000 	mtc1	at,$f16
 440:	240e0001 	li	t6,1
 444:	46105401 	sub.s	$f16,$f10,$f16
 448:	44cef800 	ctc1	t6,$31
 44c:	00000000 	nop
 450:	46008424 	cvt.w.s	$f16,$f16
 454:	444ef800 	cfc1	t6,$31
 458:	00000000 	nop
 45c:	31ce0078 	andi	t6,t6,0x78
 460:	15c00005 	bnez	t6,478 <BgSpot11Oasis_Update+0x1a4>
 464:	00000000 	nop
 468:	440e8000 	mfc1	t6,$f16
 46c:	3c018000 	lui	at,0x8000
 470:	10000007 	b	490 <BgSpot11Oasis_Update+0x1bc>
 474:	01c17025 	or	t6,t6,at
 478:	10000005 	b	490 <BgSpot11Oasis_Update+0x1bc>
 47c:	240effff 	li	t6,-1
 480:	440e8000 	mfc1	t6,$f16
 484:	00000000 	nop
 488:	05c0fffb 	bltz	t6,478 <BgSpot11Oasis_Update+0x1a4>
 48c:	00000000 	nop
 490:	44d9f800 	ctc1	t9,$31
 494:	10000003 	b	4a4 <BgSpot11Oasis_Update+0x1d0>
 498:	a20e0151 	sb	t6,337(s0)
 49c:	240f0001 	li	t7,1
 4a0:	a20f0150 	sb	t7,336(s0)
 4a4:	8fbf0024 	lw	ra,36(sp)
 4a8:	8fb00020 	lw	s0,32(sp)
 4ac:	27bd0048 	addiu	sp,sp,72
 4b0:	03e00008 	jr	ra
 4b4:	00000000 	nop

000004b8 <func_808B2CA8>:
 4b8:	27bdff90 	addiu	sp,sp,-112
 4bc:	3c0e0001 	lui	t6,0x1
 4c0:	afbf003c 	sw	ra,60(sp)
 4c4:	afb10038 	sw	s1,56(sp)
 4c8:	afb00034 	sw	s0,52(sp)
 4cc:	afa40070 	sw	a0,112(sp)
 4d0:	01c57021 	addu	t6,t6,a1
 4d4:	8dce1de4 	lw	t6,7652(t6)
 4d8:	00a08825 	move	s1,a1
 4dc:	3c060000 	lui	a2,0x0
 4e0:	afae006c 	sw	t6,108(sp)
 4e4:	8ca50000 	lw	a1,0(a1)
 4e8:	24c60000 	addiu	a2,a2,0
 4ec:	27a40058 	addiu	a0,sp,88
 4f0:	24070147 	li	a3,327
 4f4:	0c000000 	jal	0 <func_808B27F0>
 4f8:	00a08025 	move	s0,a1
 4fc:	0c000000 	jal	0 <func_808B27F0>
 500:	8e240000 	lw	a0,0(s1)
 504:	8e0202d0 	lw	v0,720(s0)
 508:	3c18da38 	lui	t8,0xda38
 50c:	37180003 	ori	t8,t8,0x3
 510:	244f0008 	addiu	t7,v0,8
 514:	ae0f02d0 	sw	t7,720(s0)
 518:	ac580000 	sw	t8,0(v0)
 51c:	8e240000 	lw	a0,0(s1)
 520:	3c050000 	lui	a1,0x0
 524:	24a50000 	addiu	a1,a1,0
 528:	2406014b 	li	a2,331
 52c:	0c000000 	jal	0 <func_808B27F0>
 530:	afa20054 	sw	v0,84(sp)
 534:	8fa30054 	lw	v1,84(sp)
 538:	3c0adb06 	lui	t2,0xdb06
 53c:	354a0020 	ori	t2,t2,0x20
 540:	ac620004 	sw	v0,4(v1)
 544:	8e0202d0 	lw	v0,720(s0)
 548:	8fa9006c 	lw	t1,108(sp)
 54c:	240b007f 	li	t3,127
 550:	24590008 	addiu	t9,v0,8
 554:	ae1902d0 	sw	t9,720(s0)
 558:	ac4a0000 	sw	t2,0(v0)
 55c:	8e240000 	lw	a0,0(s1)
 560:	240c0020 	li	t4,32
 564:	240d0020 	li	t5,32
 568:	240e0001 	li	t6,1
 56c:	240f0020 	li	t7,32
 570:	24180020 	li	t8,32
 574:	3123007f 	andi	v1,t1,0x7f
 578:	3127007f 	andi	a3,t1,0x7f
 57c:	afa70020 	sw	a3,32(sp)
 580:	01633023 	subu	a2,t3,v1
 584:	afa3001c 	sw	v1,28(sp)
 588:	afb80028 	sw	t8,40(sp)
 58c:	afaf0024 	sw	t7,36(sp)
 590:	afae0018 	sw	t6,24(sp)
 594:	afad0014 	sw	t5,20(sp)
 598:	afac0010 	sw	t4,16(sp)
 59c:	00002825 	move	a1,zero
 5a0:	0c000000 	jal	0 <func_808B27F0>
 5a4:	afa20050 	sw	v0,80(sp)
 5a8:	8fa80050 	lw	t0,80(sp)
 5ac:	3c0b0600 	lui	t3,0x600
 5b0:	256b0870 	addiu	t3,t3,2160
 5b4:	ad020004 	sw	v0,4(t0)
 5b8:	8e0202d0 	lw	v0,720(s0)
 5bc:	3c0ade00 	lui	t2,0xde00
 5c0:	3c060000 	lui	a2,0x0
 5c4:	24590008 	addiu	t9,v0,8
 5c8:	ae1902d0 	sw	t9,720(s0)
 5cc:	ac4b0004 	sw	t3,4(v0)
 5d0:	ac4a0000 	sw	t2,0(v0)
 5d4:	8e250000 	lw	a1,0(s1)
 5d8:	24c60000 	addiu	a2,a2,0
 5dc:	27a40058 	addiu	a0,sp,88
 5e0:	0c000000 	jal	0 <func_808B27F0>
 5e4:	2407015a 	li	a3,346
 5e8:	8fbf003c 	lw	ra,60(sp)
 5ec:	8fb00034 	lw	s0,52(sp)
 5f0:	8fb10038 	lw	s1,56(sp)
 5f4:	03e00008 	jr	ra
 5f8:	27bd0070 	addiu	sp,sp,112
 5fc:	00000000 	nop
