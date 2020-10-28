
build/src/overlays/actors/ovl_Bg_Spot03_Taki/z_bg_spot03_taki.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot03Taki_ApplyOpeningAlpha>:
   0:	14a00010 	bnez	a1,44 <BgSpot03Taki_ApplyOpeningAlpha+0x44>
   4:	00803025 	move	a2,a0
   8:	3c030000 	lui	v1,0x0
   c:	24630000 	addiu	v1,v1,0
  10:	00037100 	sll	t6,v1,0x4
  14:	000e7f02 	srl	t7,t6,0x1c
  18:	000fc080 	sll	t8,t7,0x2
  1c:	3c190000 	lui	t9,0x0
  20:	0338c821 	addu	t9,t9,t8
  24:	3c0100ff 	lui	at,0xff
  28:	8f390000 	lw	t9,0(t9)
  2c:	3421ffff 	ori	at,at,0xffff
  30:	00614024 	and	t0,v1,at
  34:	3c018000 	lui	at,0x8000
  38:	03281021 	addu	v0,t9,t0
  3c:	1000000f 	b	7c <BgSpot03Taki_ApplyOpeningAlpha+0x7c>
  40:	00411021 	addu	v0,v0,at
  44:	3c030000 	lui	v1,0x0
  48:	24630000 	addiu	v1,v1,0
  4c:	00034900 	sll	t1,v1,0x4
  50:	00095702 	srl	t2,t1,0x1c
  54:	000a5880 	sll	t3,t2,0x2
  58:	3c0c0000 	lui	t4,0x0
  5c:	018b6021 	addu	t4,t4,t3
  60:	3c0100ff 	lui	at,0xff
  64:	8d8c0000 	lw	t4,0(t4)
  68:	3421ffff 	ori	at,at,0xffff
  6c:	00616824 	and	t5,v1,at
  70:	3c018000 	lui	at,0x8000
  74:	018d1021 	addu	v0,t4,t5
  78:	00411021 	addu	v0,v0,at
  7c:	444ef800 	cfc1	t6,$31
  80:	240f0001 	li	t7,1
  84:	44cff800 	ctc1	t7,$31
  88:	c4c40170 	lwc1	$f4,368(a2)
  8c:	3c014f00 	lui	at,0x4f00
  90:	460021a4 	cvt.w.s	$f6,$f4
  94:	444ff800 	cfc1	t7,$31
  98:	00000000 	nop
  9c:	31ef0078 	andi	t7,t7,0x78
  a0:	51e00013 	beqzl	t7,f0 <BgSpot03Taki_ApplyOpeningAlpha+0xf0>
  a4:	440f3000 	mfc1	t7,$f6
  a8:	44813000 	mtc1	at,$f6
  ac:	240f0001 	li	t7,1
  b0:	46062181 	sub.s	$f6,$f4,$f6
  b4:	44cff800 	ctc1	t7,$31
  b8:	00000000 	nop
  bc:	460031a4 	cvt.w.s	$f6,$f6
  c0:	444ff800 	cfc1	t7,$31
  c4:	00000000 	nop
  c8:	31ef0078 	andi	t7,t7,0x78
  cc:	15e00005 	bnez	t7,e4 <BgSpot03Taki_ApplyOpeningAlpha+0xe4>
  d0:	00000000 	nop
  d4:	440f3000 	mfc1	t7,$f6
  d8:	3c018000 	lui	at,0x8000
  dc:	10000007 	b	fc <BgSpot03Taki_ApplyOpeningAlpha+0xfc>
  e0:	01e17825 	or	t7,t7,at
  e4:	10000005 	b	fc <BgSpot03Taki_ApplyOpeningAlpha+0xfc>
  e8:	240fffff 	li	t7,-1
  ec:	440f3000 	mfc1	t7,$f6
  f0:	00000000 	nop
  f4:	05e0fffb 	bltz	t7,e4 <BgSpot03Taki_ApplyOpeningAlpha+0xe4>
  f8:	00000000 	nop
  fc:	44cef800 	ctc1	t6,$31
 100:	a04f00af 	sb	t7,175(v0)
 104:	24080001 	li	t0,1
 108:	c4c80170 	lwc1	$f8,368(a2)
 10c:	4459f800 	cfc1	t9,$31
 110:	44c8f800 	ctc1	t0,$31
 114:	24030001 	li	v1,1
 118:	0003c100 	sll	t8,v1,0x4
 11c:	460042a4 	cvt.w.s	$f10,$f8
 120:	00582021 	addu	a0,v0,t8
 124:	3c014f00 	lui	at,0x4f00
 128:	4448f800 	cfc1	t0,$31
 12c:	00000000 	nop
 130:	31080078 	andi	t0,t0,0x78
 134:	51000013 	beqzl	t0,184 <BgSpot03Taki_ApplyOpeningAlpha+0x184>
 138:	44085000 	mfc1	t0,$f10
 13c:	44815000 	mtc1	at,$f10
 140:	24080001 	li	t0,1
 144:	460a4281 	sub.s	$f10,$f8,$f10
 148:	44c8f800 	ctc1	t0,$31
 14c:	00000000 	nop
 150:	460052a4 	cvt.w.s	$f10,$f10
 154:	4448f800 	cfc1	t0,$31
 158:	00000000 	nop
 15c:	31080078 	andi	t0,t0,0x78
 160:	15000005 	bnez	t0,178 <BgSpot03Taki_ApplyOpeningAlpha+0x178>
 164:	00000000 	nop
 168:	44085000 	mfc1	t0,$f10
 16c:	3c018000 	lui	at,0x8000
 170:	10000007 	b	190 <BgSpot03Taki_ApplyOpeningAlpha+0x190>
 174:	01014025 	or	t0,t0,at
 178:	10000005 	b	190 <BgSpot03Taki_ApplyOpeningAlpha+0x190>
 17c:	2408ffff 	li	t0,-1
 180:	44085000 	mfc1	t0,$f10
 184:	00000000 	nop
 188:	0500fffb 	bltz	t0,178 <BgSpot03Taki_ApplyOpeningAlpha+0x178>
 18c:	00000000 	nop
 190:	44d9f800 	ctc1	t9,$31
 194:	240a0001 	li	t2,1
 198:	a08800af 	sb	t0,175(a0)
 19c:	c4d00170 	lwc1	$f16,368(a2)
 1a0:	4449f800 	cfc1	t1,$31
 1a4:	44caf800 	ctc1	t2,$31
 1a8:	3c014f00 	lui	at,0x4f00
 1ac:	460084a4 	cvt.w.s	$f18,$f16
 1b0:	444af800 	cfc1	t2,$31
 1b4:	00000000 	nop
 1b8:	314a0078 	andi	t2,t2,0x78
 1bc:	51400013 	beqzl	t2,20c <BgSpot03Taki_ApplyOpeningAlpha+0x20c>
 1c0:	440a9000 	mfc1	t2,$f18
 1c4:	44819000 	mtc1	at,$f18
 1c8:	240a0001 	li	t2,1
 1cc:	46128481 	sub.s	$f18,$f16,$f18
 1d0:	44caf800 	ctc1	t2,$31
 1d4:	00000000 	nop
 1d8:	460094a4 	cvt.w.s	$f18,$f18
 1dc:	444af800 	cfc1	t2,$31
 1e0:	00000000 	nop
 1e4:	314a0078 	andi	t2,t2,0x78
 1e8:	15400005 	bnez	t2,200 <BgSpot03Taki_ApplyOpeningAlpha+0x200>
 1ec:	00000000 	nop
 1f0:	440a9000 	mfc1	t2,$f18
 1f4:	3c018000 	lui	at,0x8000
 1f8:	10000007 	b	218 <BgSpot03Taki_ApplyOpeningAlpha+0x218>
 1fc:	01415025 	or	t2,t2,at
 200:	10000005 	b	218 <BgSpot03Taki_ApplyOpeningAlpha+0x218>
 204:	240affff 	li	t2,-1
 208:	440a9000 	mfc1	t2,$f18
 20c:	00000000 	nop
 210:	0540fffb 	bltz	t2,200 <BgSpot03Taki_ApplyOpeningAlpha+0x200>
 214:	00000000 	nop
 218:	44c9f800 	ctc1	t1,$31
 21c:	a08a00bf 	sb	t2,191(a0)
 220:	240c0001 	li	t4,1
 224:	c4c40170 	lwc1	$f4,368(a2)
 228:	444bf800 	cfc1	t3,$31
 22c:	44ccf800 	ctc1	t4,$31
 230:	3c014f00 	lui	at,0x4f00
 234:	460021a4 	cvt.w.s	$f6,$f4
 238:	444cf800 	cfc1	t4,$31
 23c:	00000000 	nop
 240:	318c0078 	andi	t4,t4,0x78
 244:	51800013 	beqzl	t4,294 <BgSpot03Taki_ApplyOpeningAlpha+0x294>
 248:	440c3000 	mfc1	t4,$f6
 24c:	44813000 	mtc1	at,$f6
 250:	240c0001 	li	t4,1
 254:	46062181 	sub.s	$f6,$f4,$f6
 258:	44ccf800 	ctc1	t4,$31
 25c:	00000000 	nop
 260:	460031a4 	cvt.w.s	$f6,$f6
 264:	444cf800 	cfc1	t4,$31
 268:	00000000 	nop
 26c:	318c0078 	andi	t4,t4,0x78
 270:	15800005 	bnez	t4,288 <BgSpot03Taki_ApplyOpeningAlpha+0x288>
 274:	00000000 	nop
 278:	440c3000 	mfc1	t4,$f6
 27c:	3c018000 	lui	at,0x8000
 280:	10000007 	b	2a0 <BgSpot03Taki_ApplyOpeningAlpha+0x2a0>
 284:	01816025 	or	t4,t4,at
 288:	10000005 	b	2a0 <BgSpot03Taki_ApplyOpeningAlpha+0x2a0>
 28c:	240cffff 	li	t4,-1
 290:	440c3000 	mfc1	t4,$f6
 294:	00000000 	nop
 298:	0580fffb 	bltz	t4,288 <BgSpot03Taki_ApplyOpeningAlpha+0x288>
 29c:	00000000 	nop
 2a0:	44cbf800 	ctc1	t3,$31
 2a4:	a08c00cf 	sb	t4,207(a0)
 2a8:	240e0001 	li	t6,1
 2ac:	c4c80170 	lwc1	$f8,368(a2)
 2b0:	444df800 	cfc1	t5,$31
 2b4:	44cef800 	ctc1	t6,$31
 2b8:	3c014f00 	lui	at,0x4f00
 2bc:	460042a4 	cvt.w.s	$f10,$f8
 2c0:	444ef800 	cfc1	t6,$31
 2c4:	00000000 	nop
 2c8:	31ce0078 	andi	t6,t6,0x78
 2cc:	51c00013 	beqzl	t6,31c <BgSpot03Taki_ApplyOpeningAlpha+0x31c>
 2d0:	440e5000 	mfc1	t6,$f10
 2d4:	44815000 	mtc1	at,$f10
 2d8:	240e0001 	li	t6,1
 2dc:	460a4281 	sub.s	$f10,$f8,$f10
 2e0:	44cef800 	ctc1	t6,$31
 2e4:	00000000 	nop
 2e8:	460052a4 	cvt.w.s	$f10,$f10
 2ec:	444ef800 	cfc1	t6,$31
 2f0:	00000000 	nop
 2f4:	31ce0078 	andi	t6,t6,0x78
 2f8:	15c00005 	bnez	t6,310 <BgSpot03Taki_ApplyOpeningAlpha+0x310>
 2fc:	00000000 	nop
 300:	440e5000 	mfc1	t6,$f10
 304:	3c018000 	lui	at,0x8000
 308:	10000007 	b	328 <BgSpot03Taki_ApplyOpeningAlpha+0x328>
 30c:	01c17025 	or	t6,t6,at
 310:	10000005 	b	328 <BgSpot03Taki_ApplyOpeningAlpha+0x328>
 314:	240effff 	li	t6,-1
 318:	440e5000 	mfc1	t6,$f10
 31c:	00000000 	nop
 320:	05c0fffb 	bltz	t6,310 <BgSpot03Taki_ApplyOpeningAlpha+0x310>
 324:	00000000 	nop
 328:	44cdf800 	ctc1	t5,$31
 32c:	03e00008 	jr	ra
 330:	a08e00df 	sb	t6,223(a0)

00000334 <BgSpot03Taki_Init>:
 334:	27bdffd0 	addiu	sp,sp,-48
 338:	afbf001c 	sw	ra,28(sp)
 33c:	afb00018 	sw	s0,24(sp)
 340:	afa50034 	sw	a1,52(sp)
 344:	afa00024 	sw	zero,36(sp)
 348:	848e001c 	lh	t6,28(a0)
 34c:	00808025 	move	s0,a0
 350:	00002825 	move	a1,zero
 354:	31cf003f 	andi	t7,t6,0x3f
 358:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 35c:	a48f016c 	sh	t7,364(a0)
 360:	3c040000 	lui	a0,0x0
 364:	24840000 	addiu	a0,a0,0
 368:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 36c:	27a50024 	addiu	a1,sp,36
 370:	8fa40034 	lw	a0,52(sp)
 374:	02003025 	move	a2,s0
 378:	8fa70024 	lw	a3,36(sp)
 37c:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 380:	24850810 	addiu	a1,a0,2064
 384:	3c050000 	lui	a1,0x0
 388:	ae02014c 	sw	v0,332(s0)
 38c:	24a50020 	addiu	a1,a1,32
 390:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 394:	02002025 	move	a0,s0
 398:	3c01437f 	lui	at,0x437f
 39c:	44812000 	mtc1	at,$f4
 3a0:	a2000174 	sb	zero,372(s0)
 3a4:	02002025 	move	a0,s0
 3a8:	00002825 	move	a1,zero
 3ac:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 3b0:	e6040170 	swc1	$f4,368(s0)
 3b4:	02002025 	move	a0,s0
 3b8:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 3bc:	24050001 	li	a1,1
 3c0:	3c180000 	lui	t8,0x0
 3c4:	27180000 	addiu	t8,t8,0
 3c8:	ae180164 	sw	t8,356(s0)
 3cc:	8fbf001c 	lw	ra,28(sp)
 3d0:	8fb00018 	lw	s0,24(sp)
 3d4:	27bd0030 	addiu	sp,sp,48
 3d8:	03e00008 	jr	ra
 3dc:	00000000 	nop

000003e0 <BgSpot03Taki_Destroy>:
 3e0:	27bdffe8 	addiu	sp,sp,-24
 3e4:	afa40018 	sw	a0,24(sp)
 3e8:	8fae0018 	lw	t6,24(sp)
 3ec:	afbf0014 	sw	ra,20(sp)
 3f0:	00a02025 	move	a0,a1
 3f4:	24a50810 	addiu	a1,a1,2064
 3f8:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 3fc:	8dc6014c 	lw	a2,332(t6)
 400:	8fbf0014 	lw	ra,20(sp)
 404:	27bd0018 	addiu	sp,sp,24
 408:	03e00008 	jr	ra
 40c:	00000000 	nop

00000410 <func_808ADEF0>:
 410:	27bdffd8 	addiu	sp,sp,-40
 414:	afbf0024 	sw	ra,36(sp)
 418:	afb00020 	sw	s0,32(sp)
 41c:	9082016a 	lbu	v0,362(a0)
 420:	00808025 	move	s0,a0
 424:	00a03825 	move	a3,a1
 428:	14400012 	bnez	v0,474 <func_808ADEF0+0x64>
 42c:	24010001 	li	at,1
 430:	00a02025 	move	a0,a1
 434:	9605016c 	lhu	a1,364(s0)
 438:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 43c:	afa7002c 	sw	a3,44(sp)
 440:	1040005f 	beqz	v0,5c0 <func_808ADEF0+0x1b0>
 444:	240e0002 	li	t6,2
 448:	240f0028 	li	t7,40
 44c:	a20e016a 	sb	t6,362(s0)
 450:	a60f0168 	sh	t7,360(s0)
 454:	afa00010 	sw	zero,16(sp)
 458:	8fa4002c 	lw	a0,44(sp)
 45c:	24051004 	li	a1,4100
 460:	2406ff9d 	li	a2,-99
 464:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 468:	00003825 	move	a3,zero
 46c:	10000055 	b	5c4 <func_808ADEF0+0x1b4>
 470:	02002025 	move	a0,s0
 474:	5441000b 	bnel	v0,at,4a4 <func_808ADEF0+0x94>
 478:	24010002 	li	at,2
 47c:	86180168 	lh	t8,360(s0)
 480:	24090002 	li	t1,2
 484:	2719ffff 	addiu	t9,t8,-1
 488:	a6190168 	sh	t9,360(s0)
 48c:	86080168 	lh	t0,360(s0)
 490:	0503004c 	bgezl	t0,5c4 <func_808ADEF0+0x1b4>
 494:	02002025 	move	a0,s0
 498:	10000049 	b	5c0 <func_808ADEF0+0x1b0>
 49c:	a209016a 	sb	t1,362(s0)
 4a0:	24010002 	li	at,2
 4a4:	5441001d 	bnel	v0,at,51c <func_808ADEF0+0x10c>
 4a8:	24010003 	li	at,3
 4ac:	c6000170 	lwc1	$f0,368(s0)
 4b0:	44802000 	mtc1	zero,$f4
 4b4:	3c0140a0 	lui	at,0x40a0
 4b8:	4600203c 	c.lt.s	$f4,$f0
 4bc:	00000000 	nop
 4c0:	45020040 	bc1fl	5c4 <func_808ADEF0+0x1b4>
 4c4:	02002025 	move	a0,s0
 4c8:	44813000 	mtc1	at,$f6
 4cc:	44805000 	mtc1	zero,$f10
 4d0:	00e02025 	move	a0,a3
 4d4:	46060201 	sub.s	$f8,$f0,$f6
 4d8:	24e50810 	addiu	a1,a3,2064
 4dc:	e6080170 	swc1	$f8,368(s0)
 4e0:	c6100170 	lwc1	$f16,368(s0)
 4e4:	460a803e 	c.le.s	$f16,$f10
 4e8:	00000000 	nop
 4ec:	45020035 	bc1fl	5c4 <func_808ADEF0+0x1b4>
 4f0:	02002025 	move	a0,s0
 4f4:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 4f8:	8e06014c 	lw	a2,332(s0)
 4fc:	44809000 	mtc1	zero,$f18
 500:	240a0190 	li	t2,400
 504:	240b0003 	li	t3,3
 508:	a60a0168 	sh	t2,360(s0)
 50c:	a20b016a 	sb	t3,362(s0)
 510:	1000002b 	b	5c0 <func_808ADEF0+0x1b0>
 514:	e6120170 	swc1	$f18,368(s0)
 518:	24010003 	li	at,3
 51c:	5441000b 	bnel	v0,at,54c <func_808ADEF0+0x13c>
 520:	24010004 	li	at,4
 524:	860c0168 	lh	t4,360(s0)
 528:	240f0004 	li	t7,4
 52c:	258dffff 	addiu	t5,t4,-1
 530:	a60d0168 	sh	t5,360(s0)
 534:	860e0168 	lh	t6,360(s0)
 538:	05c30022 	bgezl	t6,5c4 <func_808ADEF0+0x1b4>
 53c:	02002025 	move	a0,s0
 540:	1000001f 	b	5c0 <func_808ADEF0+0x1b0>
 544:	a20f016a 	sb	t7,362(s0)
 548:	24010004 	li	at,4
 54c:	1441001c 	bne	v0,at,5c0 <func_808ADEF0+0x1b0>
 550:	3c01437f 	lui	at,0x437f
 554:	44811000 	mtc1	at,$f2
 558:	c6000170 	lwc1	$f0,368(s0)
 55c:	3c0140a0 	lui	at,0x40a0
 560:	4602003c 	c.lt.s	$f0,$f2
 564:	00000000 	nop
 568:	45020016 	bc1fl	5c4 <func_808ADEF0+0x1b4>
 56c:	02002025 	move	a0,s0
 570:	44812000 	mtc1	at,$f4
 574:	00e02025 	move	a0,a3
 578:	24e50810 	addiu	a1,a3,2064
 57c:	46040180 	add.s	$f6,$f0,$f4
 580:	e6060170 	swc1	$f6,368(s0)
 584:	c6080170 	lwc1	$f8,368(s0)
 588:	4608103e 	c.le.s	$f2,$f8
 58c:	00000000 	nop
 590:	4502000c 	bc1fl	5c4 <func_808ADEF0+0x1b4>
 594:	02002025 	move	a0,s0
 598:	8e06014c 	lw	a2,332(s0)
 59c:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 5a0:	afa7002c 	sw	a3,44(sp)
 5a4:	3c01437f 	lui	at,0x437f
 5a8:	44811000 	mtc1	at,$f2
 5ac:	a200016a 	sb	zero,362(s0)
 5b0:	9605016c 	lhu	a1,364(s0)
 5b4:	e6020170 	swc1	$f2,368(s0)
 5b8:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 5bc:	8fa4002c 	lw	a0,44(sp)
 5c0:	02002025 	move	a0,s0
 5c4:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 5c8:	92050174 	lbu	a1,372(s0)
 5cc:	8fbf0024 	lw	ra,36(sp)
 5d0:	8fb00020 	lw	s0,32(sp)
 5d4:	27bd0028 	addiu	sp,sp,40
 5d8:	03e00008 	jr	ra
 5dc:	00000000 	nop

000005e0 <BgSpot03Taki_Update>:
 5e0:	27bdffe8 	addiu	sp,sp,-24
 5e4:	afbf0014 	sw	ra,20(sp)
 5e8:	8c990164 	lw	t9,356(a0)
 5ec:	0320f809 	jalr	t9
 5f0:	00000000 	nop
 5f4:	8fbf0014 	lw	ra,20(sp)
 5f8:	27bd0018 	addiu	sp,sp,24
 5fc:	03e00008 	jr	ra
 600:	00000000 	nop

00000604 <BgSpot03Taki_Draw>:
 604:	27bdff78 	addiu	sp,sp,-136
 608:	afbf003c 	sw	ra,60(sp)
 60c:	afb00038 	sw	s0,56(sp)
 610:	afa40088 	sw	a0,136(sp)
 614:	afa5008c 	sw	a1,140(sp)
 618:	8ca50000 	lw	a1,0(a1)
 61c:	3c060000 	lui	a2,0x0
 620:	24c60000 	addiu	a2,a2,0
 624:	27a40068 	addiu	a0,sp,104
 628:	24070141 	li	a3,321
 62c:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 630:	00a08025 	move	s0,a1
 634:	8fa7008c 	lw	a3,140(sp)
 638:	8e0202d0 	lw	v0,720(s0)
 63c:	3c080001 	lui	t0,0x1
 640:	01074021 	addu	t0,t0,a3
 644:	8d081de4 	lw	t0,7652(t0)
 648:	3c18da38 	lui	t8,0xda38
 64c:	244f0008 	addiu	t7,v0,8
 650:	ae0f02d0 	sw	t7,720(s0)
 654:	37180003 	ori	t8,t8,0x3
 658:	ac580000 	sw	t8,0(v0)
 65c:	3c050000 	lui	a1,0x0
 660:	8ce40000 	lw	a0,0(a3)
 664:	24a50018 	addiu	a1,a1,24
 668:	24060145 	li	a2,325
 66c:	afa20064 	sw	v0,100(sp)
 670:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 674:	afa8007c 	sw	t0,124(sp)
 678:	8fa30064 	lw	v1,100(sp)
 67c:	8fa8007c 	lw	t0,124(sp)
 680:	ac620004 	sw	v0,4(v1)
 684:	8fb9008c 	lw	t9,140(sp)
 688:	8f240000 	lw	a0,0(t9)
 68c:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 690:	afa8007c 	sw	t0,124(sp)
 694:	8e0202d0 	lw	v0,720(s0)
 698:	8fa8007c 	lw	t0,124(sp)
 69c:	3c0cdb06 	lui	t4,0xdb06
 6a0:	244b0008 	addiu	t3,v0,8
 6a4:	ae0b02d0 	sw	t3,720(s0)
 6a8:	358c0020 	ori	t4,t4,0x20
 6ac:	ac4c0000 	sw	t4,0(v0)
 6b0:	8fad008c 	lw	t5,140(sp)
 6b4:	00083880 	sll	a3,t0,0x2
 6b8:	240b0040 	li	t3,64
 6bc:	8da40000 	lw	a0,0(t5)
 6c0:	240e0040 	li	t6,64
 6c4:	240f0040 	li	t7,64
 6c8:	24180001 	li	t8,1
 6cc:	24190040 	li	t9,64
 6d0:	00e83821 	addu	a3,a3,t0
 6d4:	afa70020 	sw	a3,32(sp)
 6d8:	afb90024 	sw	t9,36(sp)
 6dc:	afb80018 	sw	t8,24(sp)
 6e0:	afaf0014 	sw	t7,20(sp)
 6e4:	afae0010 	sw	t6,16(sp)
 6e8:	afab0028 	sw	t3,40(sp)
 6ec:	afa0001c 	sw	zero,28(sp)
 6f0:	00002825 	move	a1,zero
 6f4:	00003025 	move	a2,zero
 6f8:	afa20060 	sw	v0,96(sp)
 6fc:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 700:	afa8007c 	sw	t0,124(sp)
 704:	8fa30060 	lw	v1,96(sp)
 708:	8fa8007c 	lw	t0,124(sp)
 70c:	8fa90088 	lw	t1,136(sp)
 710:	ac620004 	sw	v0,4(v1)
 714:	8e0202d0 	lw	v0,720(s0)
 718:	3c0d0000 	lui	t5,0x0
 71c:	25ad0000 	addiu	t5,t5,0
 720:	244c0008 	addiu	t4,v0,8
 724:	ae0c02d0 	sw	t4,720(s0)
 728:	3c0ade00 	lui	t2,0xde00
 72c:	ac4a0000 	sw	t2,0(v0)
 730:	ac4d0004 	sw	t5,4(v0)
 734:	912e0174 	lbu	t6,372(t1)
 738:	00002825 	move	a1,zero
 73c:	01003025 	move	a2,t0
 740:	15c0000b 	bnez	t6,770 <BgSpot03Taki_Draw+0x16c>
 744:	00083880 	sll	a3,t0,0x2
 748:	8e0202d0 	lw	v0,720(s0)
 74c:	3c180101 	lui	t8,0x101
 750:	3c190000 	lui	t9,0x0
 754:	244f0008 	addiu	t7,v0,8
 758:	ae0f02d0 	sw	t7,720(s0)
 75c:	27390000 	addiu	t9,t9,0
 760:	37189032 	ori	t8,t8,0x9032
 764:	ac580000 	sw	t8,0(v0)
 768:	1000000a 	b	794 <BgSpot03Taki_Draw+0x190>
 76c:	ac590004 	sw	t9,4(v0)
 770:	8e0202d0 	lw	v0,720(s0)
 774:	3c0c0101 	lui	t4,0x101
 778:	3c0d0000 	lui	t5,0x0
 77c:	244b0008 	addiu	t3,v0,8
 780:	ae0b02d0 	sw	t3,720(s0)
 784:	25ad0000 	addiu	t5,t5,0
 788:	358c9032 	ori	t4,t4,0x9032
 78c:	ac4c0000 	sw	t4,0(v0)
 790:	ac4d0004 	sw	t5,4(v0)
 794:	8e0202d0 	lw	v0,720(s0)
 798:	3c0f0000 	lui	t7,0x0
 79c:	25ef0000 	addiu	t7,t7,0
 7a0:	244e0008 	addiu	t6,v0,8
 7a4:	ae0e02d0 	sw	t6,720(s0)
 7a8:	ac4a0000 	sw	t2,0(v0)
 7ac:	ac4f0004 	sw	t7,4(v0)
 7b0:	8e0202d0 	lw	v0,720(s0)
 7b4:	3c19db06 	lui	t9,0xdb06
 7b8:	37390020 	ori	t9,t9,0x20
 7bc:	24580008 	addiu	t8,v0,8
 7c0:	ae1802d0 	sw	t8,720(s0)
 7c4:	ac590000 	sw	t9,0(v0)
 7c8:	8fab008c 	lw	t3,140(sp)
 7cc:	24190040 	li	t9,64
 7d0:	24180040 	li	t8,64
 7d4:	8d640000 	lw	a0,0(t3)
 7d8:	00087823 	negu	t7,t0
 7dc:	240e0001 	li	t6,1
 7e0:	00e83823 	subu	a3,a3,t0
 7e4:	240c0040 	li	t4,64
 7e8:	240d0040 	li	t5,64
 7ec:	afad0014 	sw	t5,20(sp)
 7f0:	afac0010 	sw	t4,16(sp)
 7f4:	afa70020 	sw	a3,32(sp)
 7f8:	afae0018 	sw	t6,24(sp)
 7fc:	afaf001c 	sw	t7,28(sp)
 800:	afb90028 	sw	t9,40(sp)
 804:	afb80024 	sw	t8,36(sp)
 808:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 80c:	afa2004c 	sw	v0,76(sp)
 810:	8fa3004c 	lw	v1,76(sp)
 814:	3c0c0000 	lui	t4,0x0
 818:	3c0ade00 	lui	t2,0xde00
 81c:	ac620004 	sw	v0,4(v1)
 820:	8e0202d0 	lw	v0,720(s0)
 824:	258c0000 	addiu	t4,t4,0
 828:	3c060000 	lui	a2,0x0
 82c:	244b0008 	addiu	t3,v0,8
 830:	ae0b02d0 	sw	t3,720(s0)
 834:	ac4c0004 	sw	t4,4(v0)
 838:	ac4a0000 	sw	t2,0(v0)
 83c:	8fad008c 	lw	t5,140(sp)
 840:	24c60030 	addiu	a2,a2,48
 844:	27a40068 	addiu	a0,sp,104
 848:	24070166 	li	a3,358
 84c:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 850:	8da50000 	lw	a1,0(t5)
 854:	8fa90088 	lw	t1,136(sp)
 858:	912e0174 	lbu	t6,372(t1)
 85c:	9122016a 	lbu	v0,362(t1)
 860:	252400e4 	addiu	a0,t1,228
 864:	2dcf0001 	sltiu	t7,t6,1
 868:	18400008 	blez	v0,88c <BgSpot03Taki_Draw+0x288>
 86c:	a12f0174 	sb	t7,372(t1)
 870:	28410004 	slti	at,v0,4
 874:	10200005 	beqz	at,88c <BgSpot03Taki_Draw+0x288>
 878:	3c053f00 	lui	a1,0x3f00
 87c:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 880:	252400e4 	addiu	a0,t1,228
 884:	10000004 	b	898 <BgSpot03Taki_Draw+0x294>
 888:	8fbf003c 	lw	ra,60(sp)
 88c:	0c000000 	jal	0 <BgSpot03Taki_ApplyOpeningAlpha>
 890:	3c053f80 	lui	a1,0x3f80
 894:	8fbf003c 	lw	ra,60(sp)
 898:	8fb00038 	lw	s0,56(sp)
 89c:	27bd0088 	addiu	sp,sp,136
 8a0:	03e00008 	jr	ra
 8a4:	00000000 	nop
	...
