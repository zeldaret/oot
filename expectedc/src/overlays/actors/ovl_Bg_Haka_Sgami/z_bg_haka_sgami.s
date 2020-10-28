
build/src/overlays/actors/ovl_Bg_Haka_Sgami/z_bg_haka_sgami.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHakaSgami_Init>:
   0:	27bdfe28 	addiu	sp,sp,-472
   4:	afb10020 	sw	s1,32(sp)
   8:	00a08825 	move	s1,a1
   c:	afbf0024 	sw	ra,36(sp)
  10:	afb0001c 	sw	s0,28(sp)
  14:	3c050000 	lui	a1,0x0
  18:	00808025 	move	s0,a0
  1c:	0c000000 	jal	0 <BgHakaSgami_Init>
  20:	24a50000 	addiu	a1,a1,0
  24:	860f001c 	lh	t7,28(s0)
  28:	8618001c 	lh	t8,28(s0)
  2c:	02202025 	move	a0,s1
  30:	a20f0151 	sb	t7,337(s0)
  34:	82090151 	lb	t1,337(s0)
  38:	0018ca03 	sra	t9,t8,0x8
  3c:	332800ff 	andi	t0,t9,0xff
  40:	11200004 	beqz	t1,54 <BgHakaSgami_Init+0x54>
  44:	a608001c 	sh	t0,28(s0)
  48:	8e0a0004 	lw	t2,4(s0)
  4c:	354b0080 	ori	t3,t2,0x80
  50:	ae0b0004 	sw	t3,4(s0)
  54:	260501a8 	addiu	a1,s0,424
  58:	0c000000 	jal	0 <BgHakaSgami_Init>
  5c:	afa50028 	sw	a1,40(sp)
  60:	3c070000 	lui	a3,0x0
  64:	260c01c8 	addiu	t4,s0,456
  68:	8fa50028 	lw	a1,40(sp)
  6c:	afac0010 	sw	t4,16(sp)
  70:	24e70000 	addiu	a3,a3,0
  74:	02202025 	move	a0,s1
  78:	0c000000 	jal	0 <BgHakaSgami_Init>
  7c:	02003025 	move	a2,s0
  80:	2605015c 	addiu	a1,s0,348
  84:	afa50028 	sw	a1,40(sp)
  88:	0c000000 	jal	0 <BgHakaSgami_Init>
  8c:	02202025 	move	a0,s1
  90:	3c070000 	lui	a3,0x0
  94:	8fa50028 	lw	a1,40(sp)
  98:	24e70000 	addiu	a3,a3,0
  9c:	02202025 	move	a0,s1
  a0:	0c000000 	jal	0 <BgHakaSgami_Init>
  a4:	02003025 	move	a2,s0
  a8:	c6040024 	lwc1	$f4,36(s0)
  ac:	c6080028 	lwc1	$f8,40(s0)
  b0:	c610002c 	lwc1	$f16,44(s0)
  b4:	4600218d 	trunc.w.s	$f6,$f4
  b8:	3c060000 	lui	a2,0x0
  bc:	24c60000 	addiu	a2,a2,0
  c0:	4600428d 	trunc.w.s	$f10,$f8
  c4:	440e3000 	mfc1	t6,$f6
  c8:	26040098 	addiu	a0,s0,152
  cc:	4600848d 	trunc.w.s	$f18,$f16
  d0:	44185000 	mfc1	t8,$f10
  d4:	00002825 	move	a1,zero
  d8:	a60e01a2 	sh	t6,418(s0)
  dc:	44089000 	mfc1	t0,$f18
  e0:	a61801a4 	sh	t8,420(s0)
  e4:	0c000000 	jal	0 <BgHakaSgami_Init>
  e8:	a60801a6 	sh	t0,422(s0)
  ec:	3c0d0000 	lui	t5,0x0
  f0:	3c0e0000 	lui	t6,0x0
  f4:	3c090000 	lui	t1,0x0
  f8:	3c0a0000 	lui	t2,0x0
  fc:	3c0b0000 	lui	t3,0x0
 100:	3c0c0000 	lui	t4,0x0
 104:	91ce0000 	lbu	t6,0(t6)
 108:	91ad0000 	lbu	t5,0(t5)
 10c:	91290000 	lbu	t1,0(t1)
 110:	914a0000 	lbu	t2,0(t2)
 114:	916b0000 	lbu	t3,0(t3)
 118:	918c0000 	lbu	t4,0(t4)
 11c:	3c0f0000 	lui	t7,0x0
 120:	3c180000 	lui	t8,0x0
 124:	3c190000 	lui	t9,0x0
 128:	93390000 	lbu	t9,0(t9)
 12c:	93180000 	lbu	t8,0(t8)
 130:	91ef0000 	lbu	t7,0(t7)
 134:	a3ae01bd 	sb	t6,445(sp)
 138:	a3ad01b9 	sb	t5,441(sp)
 13c:	a3a901b8 	sb	t1,440(sp)
 140:	a3aa01bc 	sb	t2,444(sp)
 144:	a3ab01c0 	sb	t3,448(sp)
 148:	a3ac01c4 	sb	t4,452(sp)
 14c:	3c0c0000 	lui	t4,0x0
 150:	3c0b0000 	lui	t3,0x0
 154:	3c0a0000 	lui	t2,0x0
 158:	3c090000 	lui	t1,0x0
 15c:	3c0d0000 	lui	t5,0x0
 160:	3c0e0000 	lui	t6,0x0
 164:	3c080000 	lui	t0,0x0
 168:	91080000 	lbu	t0,0(t0)
 16c:	91ce0000 	lbu	t6,0(t6)
 170:	91ad0000 	lbu	t5,0(t5)
 174:	91290000 	lbu	t1,0(t1)
 178:	914a0000 	lbu	t2,0(t2)
 17c:	916b0000 	lbu	t3,0(t3)
 180:	918c0000 	lbu	t4,0(t4)
 184:	a3b901ba 	sb	t9,442(sp)
 188:	a3b801c5 	sb	t8,453(sp)
 18c:	a3af01c1 	sb	t7,449(sp)
 190:	240f000a 	li	t7,10
 194:	24180002 	li	t8,2
 198:	27b90034 	addiu	t9,sp,52
 19c:	afaf01c8 	sw	t7,456(sp)
 1a0:	afa001cc 	sw	zero,460(sp)
 1a4:	afb801d0 	sw	t8,464(sp)
 1a8:	afb90014 	sw	t9,20(sp)
 1ac:	02202025 	move	a0,s1
 1b0:	26050154 	addiu	a1,s0,340
 1b4:	24060001 	li	a2,1
 1b8:	00003825 	move	a3,zero
 1bc:	afa00010 	sw	zero,16(sp)
 1c0:	a3a801be 	sb	t0,446(sp)
 1c4:	a3ae01c7 	sb	t6,455(sp)
 1c8:	a3ad01c3 	sb	t5,451(sp)
 1cc:	a3a901c2 	sb	t1,450(sp)
 1d0:	a3aa01c6 	sb	t2,454(sp)
 1d4:	a3ab01bb 	sb	t3,443(sp)
 1d8:	0c000000 	jal	0 <BgHakaSgami_Init>
 1dc:	a3ac01bf 	sb	t4,447(sp)
 1e0:	27a80034 	addiu	t0,sp,52
 1e4:	afa80014 	sw	t0,20(sp)
 1e8:	02202025 	move	a0,s1
 1ec:	26050158 	addiu	a1,s0,344
 1f0:	24060001 	li	a2,1
 1f4:	00003825 	move	a3,zero
 1f8:	0c000000 	jal	0 <BgHakaSgami_Init>
 1fc:	afa00010 	sw	zero,16(sp)
 200:	8609001c 	lh	t1,28(s0)
 204:	3c010001 	lui	at,0x1
 208:	342117a4 	ori	at,at,0x17a4
 20c:	1520000c 	bnez	t1,240 <BgHakaSgami_Init+0x240>
 210:	02212021 	addu	a0,s1,at
 214:	3c010001 	lui	at,0x1
 218:	342117a4 	ori	at,at,0x17a4
 21c:	02212021 	addu	a0,s1,at
 220:	0c000000 	jal	0 <BgHakaSgami_Init>
 224:	24050069 	li	a1,105
 228:	8e0a0004 	lw	t2,4(s0)
 22c:	2401fffe 	li	at,-2
 230:	a2020150 	sb	v0,336(s0)
 234:	01415824 	and	t3,t2,at
 238:	1000000b 	b	268 <BgHakaSgami_Init+0x268>
 23c:	ae0b0004 	sw	t3,4(s0)
 240:	0c000000 	jal	0 <BgHakaSgami_Init>
 244:	2405006b 	li	a1,107
 248:	240c001e 	li	t4,30
 24c:	240d0046 	li	t5,70
 250:	a2020150 	sb	v0,336(s0)
 254:	a60c019c 	sh	t4,412(s0)
 258:	a60d019e 	sh	t5,414(s0)
 25c:	02002025 	move	a0,s0
 260:	0c000000 	jal	0 <BgHakaSgami_Init>
 264:	3c054220 	lui	a1,0x4220
 268:	820e0150 	lb	t6,336(s0)
 26c:	3c0f0000 	lui	t7,0x0
 270:	25ef0000 	addiu	t7,t7,0
 274:	05c30006 	bgezl	t6,290 <BgHakaSgami_Init+0x290>
 278:	ae0f014c 	sw	t7,332(s0)
 27c:	0c000000 	jal	0 <BgHakaSgami_Init>
 280:	02002025 	move	a0,s0
 284:	10000003 	b	294 <BgHakaSgami_Init+0x294>
 288:	8fbf0024 	lw	ra,36(sp)
 28c:	ae0f014c 	sw	t7,332(s0)
 290:	8fbf0024 	lw	ra,36(sp)
 294:	8fb0001c 	lw	s0,28(sp)
 298:	8fb10020 	lw	s1,32(sp)
 29c:	03e00008 	jr	ra
 2a0:	27bd01d8 	addiu	sp,sp,472

000002a4 <BgHakaSgami_Destroy>:
 2a4:	27bdffe8 	addiu	sp,sp,-24
 2a8:	afa40018 	sw	a0,24(sp)
 2ac:	8fae0018 	lw	t6,24(sp)
 2b0:	afbf0014 	sw	ra,20(sp)
 2b4:	afa5001c 	sw	a1,28(sp)
 2b8:	00a02025 	move	a0,a1
 2bc:	0c000000 	jal	0 <BgHakaSgami_Init>
 2c0:	8dc50154 	lw	a1,340(t6)
 2c4:	8faf0018 	lw	t7,24(sp)
 2c8:	8fa4001c 	lw	a0,28(sp)
 2cc:	0c000000 	jal	0 <BgHakaSgami_Init>
 2d0:	8de50158 	lw	a1,344(t7)
 2d4:	8fa50018 	lw	a1,24(sp)
 2d8:	8fa4001c 	lw	a0,28(sp)
 2dc:	0c000000 	jal	0 <BgHakaSgami_Init>
 2e0:	24a501a8 	addiu	a1,a1,424
 2e4:	8fa50018 	lw	a1,24(sp)
 2e8:	8fa4001c 	lw	a0,28(sp)
 2ec:	0c000000 	jal	0 <BgHakaSgami_Init>
 2f0:	24a5015c 	addiu	a1,a1,348
 2f4:	8fbf0014 	lw	ra,20(sp)
 2f8:	27bd0018 	addiu	sp,sp,24
 2fc:	03e00008 	jr	ra
 300:	00000000 	nop

00000304 <func_8087E7E4>:
 304:	3c010001 	lui	at,0x1
 308:	27bdffe8 	addiu	sp,sp,-24
 30c:	00803025 	move	a2,a0
 310:	342117a4 	ori	at,at,0x17a4
 314:	afbf0014 	sw	ra,20(sp)
 318:	00a12021 	addu	a0,a1,at
 31c:	80c50150 	lb	a1,336(a2)
 320:	0c000000 	jal	0 <BgHakaSgami_Init>
 324:	afa60018 	sw	a2,24(sp)
 328:	1040000f 	beqz	v0,368 <func_8087E7E4+0x64>
 32c:	8fa60018 	lw	a2,24(sp)
 330:	8cd90004 	lw	t9,4(a2)
 334:	80ce0150 	lb	t6,336(a2)
 338:	3c0f0000 	lui	t7,0x0
 33c:	2401ffef 	li	at,-17
 340:	3c090000 	lui	t1,0x0
 344:	25ef0000 	addiu	t7,t7,0
 348:	24180020 	li	t8,32
 34c:	25290000 	addiu	t1,t1,0
 350:	03214024 	and	t0,t9,at
 354:	accf0134 	sw	t7,308(a2)
 358:	a4d80152 	sh	t8,338(a2)
 35c:	acc80004 	sw	t0,4(a2)
 360:	acc9014c 	sw	t1,332(a2)
 364:	a0ce001e 	sb	t6,30(a2)
 368:	8fbf0014 	lw	ra,20(sp)
 36c:	27bd0018 	addiu	sp,sp,24
 370:	03e00008 	jr	ra
 374:	00000000 	nop

00000378 <func_8087E858>:
 378:	27bdff48 	addiu	sp,sp,-184
 37c:	afbf005c 	sw	ra,92(sp)
 380:	afbe0058 	sw	s8,88(sp)
 384:	afb70054 	sw	s7,84(sp)
 388:	afb60050 	sw	s6,80(sp)
 38c:	afb5004c 	sw	s5,76(sp)
 390:	afb40048 	sw	s4,72(sp)
 394:	afb30044 	sw	s3,68(sp)
 398:	afb20040 	sw	s2,64(sp)
 39c:	afb1003c 	sw	s1,60(sp)
 3a0:	afb00038 	sw	s0,56(sp)
 3a4:	f7b80030 	sdc1	$f24,48(sp)
 3a8:	f7b60028 	sdc1	$f22,40(sp)
 3ac:	f7b40020 	sdc1	$f20,32(sp)
 3b0:	afa500bc 	sw	a1,188(sp)
 3b4:	84820152 	lh	v0,338(a0)
 3b8:	00808025 	move	s0,a0
 3bc:	10400003 	beqz	v0,3cc <func_8087E858+0x54>
 3c0:	244effff 	addiu	t6,v0,-1
 3c4:	a48e0152 	sh	t6,338(a0)
 3c8:	84820152 	lh	v0,338(a0)
 3cc:	44822000 	mtc1	v0,$f4
 3d0:	3c010000 	lui	at,0x0
 3d4:	c4280000 	lwc1	$f8,0(at)
 3d8:	468021a0 	cvt.s.w	$f6,$f4
 3dc:	46083302 	mul.s	$f12,$f6,$f8
 3e0:	0c000000 	jal	0 <BgHakaSgami_Init>
 3e4:	00000000 	nop
 3e8:	3c014400 	lui	at,0x4400
 3ec:	44815000 	mtc1	at,$f10
 3f0:	860f00b6 	lh	t7,182(s0)
 3f4:	860d0152 	lh	t5,338(s0)
 3f8:	46005402 	mul.s	$f16,$f10,$f0
 3fc:	240e0020 	li	t6,32
 400:	4600848d 	trunc.w.s	$f18,$f16
 404:	44199000 	mfc1	t9,$f18
 408:	00000000 	nop
 40c:	00194400 	sll	t0,t9,0x10
 410:	00084c03 	sra	t1,t0,0x10
 414:	252a0400 	addiu	t2,t1,1024
 418:	000a5843 	sra	t3,t2,0x1
 41c:	01eb6021 	addu	t4,t7,t3
 420:	15a00002 	bnez	t5,42c <func_8087E858+0xb4>
 424:	a60c00b6 	sh	t4,182(s0)
 428:	a60e0152 	sh	t6,338(s0)
 42c:	0c000000 	jal	0 <BgHakaSgami_Init>
 430:	860400b6 	lh	a0,182(s0)
 434:	46000586 	mov.s	$f22,$f0
 438:	0c000000 	jal	0 <BgHakaSgami_Init>
 43c:	860400b6 	lh	a0,182(s0)
 440:	8618001c 	lh	t8,28(s0)
 444:	46000606 	mov.s	$f24,$f0
 448:	24080002 	li	t0,2
 44c:	13000003 	beqz	t8,45c <func_8087E858+0xe4>
 450:	24190004 	li	t9,4
 454:	10000002 	b	460 <func_8087E858+0xe8>
 458:	afb90080 	sw	t9,128(sp)
 45c:	afa80080 	sw	t0,128(sp)
 460:	8fa90080 	lw	t1,128(sp)
 464:	261601a8 	addiu	s6,s0,424
 468:	27be0098 	addiu	s8,sp,152
 46c:	2522fffe 	addiu	v0,t1,-2
 470:	0049082a 	slt	at,v0,t1
 474:	10200070 	beqz	at,638 <func_8087E858+0x2c0>
 478:	00409825 	move	s3,v0
 47c:	0002a100 	sll	s4,v0,0x4
 480:	3c014000 	lui	at,0x4000
 484:	0282a023 	subu	s4,s4,v0
 488:	27b100b0 	addiu	s1,sp,176
 48c:	4481a000 	mtc1	at,$f20
 490:	02209025 	move	s2,s1
 494:	0014a080 	sll	s4,s4,0x2
 498:	27b7008c 	addiu	s7,sp,140
 49c:	27b500a4 	addiu	s5,sp,164
 4a0:	3c0f0000 	lui	t7,0x0
 4a4:	8def0000 	lw	t7,0(t7)
 4a8:	27a2008c 	addiu	v0,sp,140
 4ac:	028f1821 	addu	v1,s4,t7
 4b0:	c46a0020 	lwc1	$f10,32(v1)
 4b4:	2442000c 	addiu	v0,v0,12
 4b8:	0051082b 	sltu	at,v0,s1
 4bc:	46165402 	mul.s	$f16,$f10,$f22
 4c0:	c6120024 	lwc1	$f18,36(s0)
 4c4:	1020001a 	beqz	at,530 <func_8087E858+0x1b8>
 4c8:	c46e0018 	lwc1	$f14,24(v1)
 4cc:	46187302 	mul.s	$f12,$f14,$f24
 4d0:	46109280 	add.s	$f10,$f18,$f16
 4d4:	2442000c 	addiu	v0,v0,12
 4d8:	0051082b 	sltu	at,v0,s1
 4dc:	2463000c 	addiu	v1,v1,12
 4e0:	460a6280 	add.s	$f10,$f12,$f10
 4e4:	e44affe8 	swc1	$f10,-24(v0)
 4e8:	c46a0010 	lwc1	$f10,16(v1)
 4ec:	c60c0028 	lwc1	$f12,40(s0)
 4f0:	460c5300 	add.s	$f12,$f10,$f12
 4f4:	e44cffec 	swc1	$f12,-20(v0)
 4f8:	c46c0014 	lwc1	$f12,20(v1)
 4fc:	c46a000c 	lwc1	$f10,12(v1)
 500:	c608002c 	lwc1	$f8,44(s0)
 504:	46186302 	mul.s	$f12,$f12,$f24
 508:	460c4300 	add.s	$f12,$f8,$f12
 50c:	46165282 	mul.s	$f10,$f10,$f22
 510:	460a6281 	sub.s	$f10,$f12,$f10
 514:	e44afff0 	swc1	$f10,-16(v0)
 518:	c46a0020 	lwc1	$f10,32(v1)
 51c:	c6120024 	lwc1	$f18,36(s0)
 520:	c46e0018 	lwc1	$f14,24(v1)
 524:	46165402 	mul.s	$f16,$f10,$f22
 528:	1420ffe8 	bnez	at,4cc <func_8087E858+0x154>
 52c:	00000000 	nop
 530:	46187302 	mul.s	$f12,$f14,$f24
 534:	46109280 	add.s	$f10,$f18,$f16
 538:	2463000c 	addiu	v1,v1,12
 53c:	460a6280 	add.s	$f10,$f12,$f10
 540:	e44afff4 	swc1	$f10,-12(v0)
 544:	c60c0028 	lwc1	$f12,40(s0)
 548:	c46a0010 	lwc1	$f10,16(v1)
 54c:	460c5300 	add.s	$f12,$f10,$f12
 550:	e44cfff8 	swc1	$f12,-8(v0)
 554:	c46c0014 	lwc1	$f12,20(v1)
 558:	c46a000c 	lwc1	$f10,12(v1)
 55c:	c608002c 	lwc1	$f8,44(s0)
 560:	46186302 	mul.s	$f12,$f12,$f24
 564:	460c4300 	add.s	$f12,$f8,$f12
 568:	46165282 	mul.s	$f10,$f10,$f22
 56c:	460a6281 	sub.s	$f10,$f12,$f10
 570:	e44afffc 	swc1	$f10,-4(v0)
 574:	02c02025 	move	a0,s6
 578:	02602825 	move	a1,s3
 57c:	02e03025 	move	a2,s7
 580:	03c03825 	move	a3,s8
 584:	0c000000 	jal	0 <BgHakaSgami_Init>
 588:	afb50010 	sw	s5,16(sp)
 58c:	27a2008c 	addiu	v0,sp,140
 590:	c60c0024 	lwc1	$f12,36(s0)
 594:	2442000c 	addiu	v0,v0,12
 598:	c450fff4 	lwc1	$f16,-12(v0)
 59c:	460ca482 	mul.s	$f18,$f20,$f12
 5a0:	5052000f 	beql	v0,s2,5e0 <func_8087E858+0x268>
 5a4:	46109381 	sub.s	$f14,$f18,$f16
 5a8:	46109381 	sub.s	$f14,$f18,$f16
 5ac:	c44cfffc 	lwc1	$f12,-4(v0)
 5b0:	c4500000 	lwc1	$f16,0(v0)
 5b4:	2442000c 	addiu	v0,v0,12
 5b8:	e44effe8 	swc1	$f14,-24(v0)
 5bc:	c60e002c 	lwc1	$f14,44(s0)
 5c0:	460ea382 	mul.s	$f14,$f20,$f14
 5c4:	460c7301 	sub.s	$f12,$f14,$f12
 5c8:	e44cfff0 	swc1	$f12,-16(v0)
 5cc:	c60c0024 	lwc1	$f12,36(s0)
 5d0:	460ca482 	mul.s	$f18,$f20,$f12
 5d4:	5452fff5 	bnel	v0,s2,5ac <func_8087E858+0x234>
 5d8:	46109381 	sub.s	$f14,$f18,$f16
 5dc:	46109381 	sub.s	$f14,$f18,$f16
 5e0:	c44cfffc 	lwc1	$f12,-4(v0)
 5e4:	e44efff4 	swc1	$f14,-12(v0)
 5e8:	c60e002c 	lwc1	$f14,44(s0)
 5ec:	460ea382 	mul.s	$f14,$f20,$f14
 5f0:	460c7301 	sub.s	$f12,$f14,$f12
 5f4:	e44cfffc 	swc1	$f12,-4(v0)
 5f8:	26650002 	addiu	a1,s3,2
 5fc:	02c02025 	move	a0,s6
 600:	04a10004 	bgez	a1,614 <func_8087E858+0x29c>
 604:	30a50003 	andi	a1,a1,0x3
 608:	10a00002 	beqz	a1,614 <func_8087E858+0x29c>
 60c:	00000000 	nop
 610:	24a5fffc 	addiu	a1,a1,-4
 614:	02e03025 	move	a2,s7
 618:	03c03825 	move	a3,s8
 61c:	0c000000 	jal	0 <BgHakaSgami_Init>
 620:	afb50010 	sw	s5,16(sp)
 624:	8fab0080 	lw	t3,128(sp)
 628:	26730001 	addiu	s3,s3,1
 62c:	2694003c 	addiu	s4,s4,60
 630:	166bff9b 	bne	s3,t3,4a0 <func_8087E858+0x128>
 634:	00000000 	nop
 638:	820c0151 	lb	t4,337(s0)
 63c:	3c014000 	lui	at,0x4000
 640:	4481a000 	mtc1	at,$f20
 644:	27b7008c 	addiu	s7,sp,140
 648:	27be0098 	addiu	s8,sp,152
 64c:	11800005 	beqz	t4,664 <func_8087E858+0x2ec>
 650:	261601a8 	addiu	s6,s0,424
 654:	8fad00bc 	lw	t5,188(sp)
 658:	91ae1c27 	lbu	t6,7207(t5)
 65c:	51c0006f 	beqzl	t6,81c <func_8087E858+0x4a4>
 660:	8fa400bc 	lw	a0,188(sp)
 664:	8618001c 	lh	t8,28(s0)
 668:	2404000c 	li	a0,12
 66c:	3c050000 	lui	a1,0x0
 670:	03040019 	multu	t8,a0
 674:	24a50000 	addiu	a1,a1,0
 678:	c6080024 	lwc1	$f8,36(s0)
 67c:	3c060000 	lui	a2,0x0
 680:	24c60000 	addiu	a2,a2,0
 684:	0000c812 	mflo	t9
 688:	00b91021 	addu	v0,a1,t9
 68c:	c4440008 	lwc1	$f4,8(v0)
 690:	c4520000 	lwc1	$f18,0(v0)
 694:	46162402 	mul.s	$f16,$f4,$f22
 698:	46104280 	add.s	$f10,$f8,$f16
 69c:	46189182 	mul.s	$f6,$f18,$f24
 6a0:	460a3100 	add.s	$f4,$f6,$f10
 6a4:	e7a4008c 	swc1	$f4,140(sp)
 6a8:	8608001c 	lh	t0,28(s0)
 6ac:	c6100028 	lwc1	$f16,40(s0)
 6b0:	01040019 	multu	t0,a0
 6b4:	00004812 	mflo	t1
 6b8:	00a95021 	addu	t2,a1,t1
 6bc:	c5480004 	lwc1	$f8,4(t2)
 6c0:	46104480 	add.s	$f18,$f8,$f16
 6c4:	e7b20090 	swc1	$f18,144(sp)
 6c8:	860f001c 	lh	t7,28(s0)
 6cc:	c606002c 	lwc1	$f6,44(s0)
 6d0:	01e40019 	multu	t7,a0
 6d4:	00005812 	mflo	t3
 6d8:	00ab1021 	addu	v0,a1,t3
 6dc:	c44a0008 	lwc1	$f10,8(v0)
 6e0:	c4500000 	lwc1	$f16,0(v0)
 6e4:	46185102 	mul.s	$f4,$f10,$f24
 6e8:	46043200 	add.s	$f8,$f6,$f4
 6ec:	46168482 	mul.s	$f18,$f16,$f22
 6f0:	46124281 	sub.s	$f10,$f8,$f18
 6f4:	e7aa0094 	swc1	$f10,148(sp)
 6f8:	860c001c 	lh	t4,28(s0)
 6fc:	c6060024 	lwc1	$f6,36(s0)
 700:	01840019 	multu	t4,a0
 704:	00006812 	mflo	t5
 708:	00cd1821 	addu	v1,a2,t5
 70c:	c4640008 	lwc1	$f4,8(v1)
 710:	c4720000 	lwc1	$f18,0(v1)
 714:	46162402 	mul.s	$f16,$f4,$f22
 718:	46103200 	add.s	$f8,$f6,$f16
 71c:	46189282 	mul.s	$f10,$f18,$f24
 720:	46085100 	add.s	$f4,$f10,$f8
 724:	e7a40098 	swc1	$f4,152(sp)
 728:	860e001c 	lh	t6,28(s0)
 72c:	c6100028 	lwc1	$f16,40(s0)
 730:	01c40019 	multu	t6,a0
 734:	0000c012 	mflo	t8
 738:	00d8c821 	addu	t9,a2,t8
 73c:	c7260004 	lwc1	$f6,4(t9)
 740:	46103480 	add.s	$f18,$f6,$f16
 744:	e7b2009c 	swc1	$f18,156(sp)
 748:	8608001c 	lh	t0,28(s0)
 74c:	c60a002c 	lwc1	$f10,44(s0)
 750:	01040019 	multu	t0,a0
 754:	00004812 	mflo	t1
 758:	00c91821 	addu	v1,a2,t1
 75c:	c4680008 	lwc1	$f8,8(v1)
 760:	c4700000 	lwc1	$f16,0(v1)
 764:	46184102 	mul.s	$f4,$f8,$f24
 768:	46045180 	add.s	$f6,$f10,$f4
 76c:	46168482 	mul.s	$f18,$f16,$f22
 770:	46123201 	sub.s	$f8,$f6,$f18
 774:	e7a800a0 	swc1	$f8,160(sp)
 778:	0c000000 	jal	0 <BgHakaSgami_Init>
 77c:	8e040154 	lw	a0,340(s0)
 780:	00402025 	move	a0,v0
 784:	02e02825 	move	a1,s7
 788:	0c000000 	jal	0 <BgHakaSgami_Init>
 78c:	03c03025 	move	a2,s8
 790:	27a2008c 	addiu	v0,sp,140
 794:	27a300a4 	addiu	v1,sp,164
 798:	c6100024 	lwc1	$f16,36(s0)
 79c:	2442000c 	addiu	v0,v0,12
 7a0:	c456fff4 	lwc1	$f22,-12(v0)
 7a4:	4610a602 	mul.s	$f24,$f20,$f16
 7a8:	5043000f 	beql	v0,v1,7e8 <func_8087E858+0x470>
 7ac:	4616c481 	sub.s	$f18,$f24,$f22
 7b0:	4616c481 	sub.s	$f18,$f24,$f22
 7b4:	c450fffc 	lwc1	$f16,-4(v0)
 7b8:	c4560000 	lwc1	$f22,0(v0)
 7bc:	2442000c 	addiu	v0,v0,12
 7c0:	e452ffe8 	swc1	$f18,-24(v0)
 7c4:	c612002c 	lwc1	$f18,44(s0)
 7c8:	4612a482 	mul.s	$f18,$f20,$f18
 7cc:	46109401 	sub.s	$f16,$f18,$f16
 7d0:	e450fff0 	swc1	$f16,-16(v0)
 7d4:	c6100024 	lwc1	$f16,36(s0)
 7d8:	4610a602 	mul.s	$f24,$f20,$f16
 7dc:	5443fff5 	bnel	v0,v1,7b4 <func_8087E858+0x43c>
 7e0:	4616c481 	sub.s	$f18,$f24,$f22
 7e4:	4616c481 	sub.s	$f18,$f24,$f22
 7e8:	c450fffc 	lwc1	$f16,-4(v0)
 7ec:	e452fff4 	swc1	$f18,-12(v0)
 7f0:	c612002c 	lwc1	$f18,44(s0)
 7f4:	4612a482 	mul.s	$f18,$f20,$f18
 7f8:	46109401 	sub.s	$f16,$f18,$f16
 7fc:	e450fffc 	swc1	$f16,-4(v0)
 800:	0c000000 	jal	0 <BgHakaSgami_Init>
 804:	8e040158 	lw	a0,344(s0)
 808:	00402025 	move	a0,v0
 80c:	02e02825 	move	a1,s7
 810:	0c000000 	jal	0 <BgHakaSgami_Init>
 814:	03c03025 	move	a2,s8
 818:	8fa400bc 	lw	a0,188(sp)
 81c:	3c010001 	lui	at,0x1
 820:	34211e60 	ori	at,at,0x1e60
 824:	00818821 	addu	s1,a0,at
 828:	02202825 	move	a1,s1
 82c:	0c000000 	jal	0 <BgHakaSgami_Init>
 830:	02c03025 	move	a2,s6
 834:	8fa400bc 	lw	a0,188(sp)
 838:	02202825 	move	a1,s1
 83c:	0c000000 	jal	0 <BgHakaSgami_Init>
 840:	2606015c 	addiu	a2,s0,348
 844:	02002025 	move	a0,s0
 848:	0c000000 	jal	0 <BgHakaSgami_Init>
 84c:	2405204c 	li	a1,8268
 850:	8fbf005c 	lw	ra,92(sp)
 854:	d7b40020 	ldc1	$f20,32(sp)
 858:	d7b60028 	ldc1	$f22,40(sp)
 85c:	d7b80030 	ldc1	$f24,48(sp)
 860:	8fb00038 	lw	s0,56(sp)
 864:	8fb1003c 	lw	s1,60(sp)
 868:	8fb20040 	lw	s2,64(sp)
 86c:	8fb30044 	lw	s3,68(sp)
 870:	8fb40048 	lw	s4,72(sp)
 874:	8fb5004c 	lw	s5,76(sp)
 878:	8fb60050 	lw	s6,80(sp)
 87c:	8fb70054 	lw	s7,84(sp)
 880:	8fbe0058 	lw	s8,88(sp)
 884:	03e00008 	jr	ra
 888:	27bd00b8 	addiu	sp,sp,184

0000088c <BgHakaSgami_Update>:
 88c:	27bdffe8 	addiu	sp,sp,-24
 890:	afbf0014 	sw	ra,20(sp)
 894:	8ca21c44 	lw	v0,7236(a1)
 898:	3c013000 	lui	at,0x3000
 89c:	342100c0 	ori	at,at,0xc0
 8a0:	8c4e067c 	lw	t6,1660(v0)
 8a4:	01c17824 	and	t7,t6,at
 8a8:	51e00007 	beqzl	t7,8c8 <BgHakaSgami_Update+0x3c>
 8ac:	8c99014c 	lw	t9,332(a0)
 8b0:	8c99014c 	lw	t9,332(a0)
 8b4:	3c180000 	lui	t8,0x0
 8b8:	27180000 	addiu	t8,t8,0
 8bc:	57190005 	bnel	t8,t9,8d4 <BgHakaSgami_Update+0x48>
 8c0:	8fbf0014 	lw	ra,20(sp)
 8c4:	8c99014c 	lw	t9,332(a0)
 8c8:	0320f809 	jalr	t9
 8cc:	00000000 	nop
 8d0:	8fbf0014 	lw	ra,20(sp)
 8d4:	27bd0018 	addiu	sp,sp,24
 8d8:	03e00008 	jr	ra
 8dc:	00000000 	nop

000008e0 <func_8087EDC0>:
 8e0:	27bdffe8 	addiu	sp,sp,-24
 8e4:	afbf0014 	sw	ra,20(sp)
 8e8:	808e0151 	lb	t6,337(a0)
 8ec:	00a03025 	move	a2,a1
 8f0:	51c00008 	beqzl	t6,914 <func_8087EDC0+0x34>
 8f4:	848f001c 	lh	t7,28(a0)
 8f8:	00a02025 	move	a0,a1
 8fc:	3c050601 	lui	a1,0x601
 900:	0c000000 	jal	0 <BgHakaSgami_Init>
 904:	24a5bf20 	addiu	a1,a1,-16608
 908:	1000000f 	b	948 <func_8087EDC0+0x68>
 90c:	8fbf0014 	lw	ra,20(sp)
 910:	848f001c 	lh	t7,28(a0)
 914:	00c02025 	move	a0,a2
 918:	3c050600 	lui	a1,0x600
 91c:	15e00007 	bnez	t7,93c <func_8087EDC0+0x5c>
 920:	00000000 	nop
 924:	3c050601 	lui	a1,0x601
 928:	24a5bf20 	addiu	a1,a1,-16608
 92c:	0c000000 	jal	0 <BgHakaSgami_Init>
 930:	00c02025 	move	a0,a2
 934:	10000004 	b	948 <func_8087EDC0+0x68>
 938:	8fbf0014 	lw	ra,20(sp)
 93c:	0c000000 	jal	0 <BgHakaSgami_Init>
 940:	24a521f0 	addiu	a1,a1,8688
 944:	8fbf0014 	lw	ra,20(sp)
 948:	27bd0018 	addiu	sp,sp,24
 94c:	03e00008 	jr	ra
 950:	00000000 	nop
	...
