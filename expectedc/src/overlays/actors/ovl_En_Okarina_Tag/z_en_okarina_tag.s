
build/src/overlays/actors/ovl_En_Okarina_Tag/z_en_okarina_tag.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnOkarinaTag_Destroy>:
   0:	afa40000 	sw	a0,0(sp)
   4:	03e00008 	jr	ra
   8:	afa50004 	sw	a1,4(sp)

0000000c <EnOkarinaTag_Init>:
   c:	27bdffe0 	addiu	sp,sp,-32
  10:	afb00018 	sw	s0,24(sp)
  14:	00808025 	move	s0,a0
  18:	afbf001c 	sw	ra,28(sp)
  1c:	3c040000 	lui	a0,0x0
  20:	afa50024 	sw	a1,36(sp)
  24:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
  28:	24840000 	addiu	a0,a0,0
  2c:	3c040000 	lui	a0,0x0
  30:	24840004 	addiu	a0,a0,4
  34:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
  38:	8605001c 	lh	a1,28(s0)
  3c:	8602001c 	lh	v0,28(s0)
  40:	8e0e0004 	lw	t6,4(s0)
  44:	2401fffe 	li	at,-2
  48:	304a003f 	andi	t2,v0,0x3f
  4c:	a60a0154 	sh	t2,340(s0)
  50:	860b0154 	lh	t3,340(s0)
  54:	0002c283 	sra	t8,v0,0xa
  58:	00024183 	sra	t0,v0,0x6
  5c:	01c17824 	and	t7,t6,at
  60:	3319003f 	andi	t9,t8,0x3f
  64:	3109000f 	andi	t1,t0,0xf
  68:	2401003f 	li	at,63
  6c:	ae0f0004 	sw	t7,4(s0)
  70:	a6190150 	sh	t9,336(s0)
  74:	15610003 	bne	t3,at,84 <EnOkarinaTag_Init+0x78>
  78:	a6090152 	sh	t1,338(s0)
  7c:	240cffff 	li	t4,-1
  80:	a60c0154 	sh	t4,340(s0)
  84:	860d0152 	lh	t5,338(s0)
  88:	2401000f 	li	at,15
  8c:	3c040000 	lui	a0,0x0
  90:	15a10004 	bne	t5,at,a4 <EnOkarinaTag_Init+0x98>
  94:	24840038 	addiu	a0,a0,56
  98:	240e0001 	li	t6,1
  9c:	a6000152 	sh	zero,338(s0)
  a0:	a60e0158 	sh	t6,344(s0)
  a4:	86020034 	lh	v0,52(s0)
  a8:	240f0001 	li	t7,1
  ac:	a20f001f 	sb	t7,31(s0)
  b0:	18400007 	blez	v0,d0 <EnOkarinaTag_Init+0xc4>
  b4:	00000000 	nop
  b8:	44822000 	mtc1	v0,$f4
  bc:	3c014220 	lui	at,0x4220
  c0:	44814000 	mtc1	at,$f8
  c4:	468021a0 	cvt.s.w	$f6,$f4
  c8:	46083282 	mul.s	$f10,$f6,$f8
  cc:	e60a015c 	swc1	$f10,348(s0)
  d0:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
  d4:	86050154 	lh	a1,340(s0)
  d8:	3c040000 	lui	a0,0x0
  dc:	24840068 	addiu	a0,a0,104
  e0:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
  e4:	86050150 	lh	a1,336(s0)
  e8:	3c040000 	lui	a0,0x0
  ec:	2484009c 	addiu	a0,a0,156
  f0:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
  f4:	86050152 	lh	a1,338(s0)
  f8:	3c040000 	lui	a0,0x0
  fc:	248400c8 	addiu	a0,a0,200
 100:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 104:	86050034 	lh	a1,52(s0)
 108:	c610015c 	lwc1	$f16,348(s0)
 10c:	3c040000 	lui	a0,0x0
 110:	248400f4 	addiu	a0,a0,244
 114:	460084a1 	cvt.d.s	$f18,$f16
 118:	44079000 	mfc1	a3,$f18
 11c:	44069800 	mfc1	a2,$f19
 120:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 124:	00000000 	nop
 128:	3c040000 	lui	a0,0x0
 12c:	24840124 	addiu	a0,a0,292
 130:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 134:	86050158 	lh	a1,344(s0)
 138:	3c040000 	lui	a0,0x0
 13c:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 140:	24840150 	addiu	a0,a0,336
 144:	86050154 	lh	a1,340(s0)
 148:	04a2000a 	bltzl	a1,174 <EnOkarinaTag_Init+0x168>
 14c:	86180150 	lh	t8,336(s0)
 150:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 154:	8fa40024 	lw	a0,36(sp)
 158:	50400006 	beqzl	v0,174 <EnOkarinaTag_Init+0x168>
 15c:	86180150 	lh	t8,336(s0)
 160:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 164:	02002025 	move	a0,s0
 168:	10000024 	b	1fc <EnOkarinaTag_Init+0x1f0>
 16c:	8fbf001c 	lw	ra,28(sp)
 170:	86180150 	lh	t8,336(s0)
 174:	2719ffff 	addiu	t9,t8,-1
 178:	2f210007 	sltiu	at,t9,7
 17c:	1020001c 	beqz	at,1f0 <EnOkarinaTag_Init+0x1e4>
 180:	0019c880 	sll	t9,t9,0x2
 184:	3c010000 	lui	at,0x0
 188:	00390821 	addu	at,at,t9
 18c:	8c390208 	lw	t9,520(at)
 190:	03200008 	jr	t9
 194:	00000000 	nop
 198:	3c080000 	lui	t0,0x0
 19c:	25080000 	addiu	t0,t0,0
 1a0:	10000015 	b	1f8 <EnOkarinaTag_Init+0x1ec>
 1a4:	ae08014c 	sw	t0,332(s0)
 1a8:	3c090000 	lui	t1,0x0
 1ac:	8d290004 	lw	t1,4(t1)
 1b0:	15200005 	bnez	t1,1c8 <EnOkarinaTag_Init+0x1bc>
 1b4:	00000000 	nop
 1b8:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 1bc:	02002025 	move	a0,s0
 1c0:	1000000e 	b	1fc <EnOkarinaTag_Init+0x1f0>
 1c4:	8fbf001c 	lw	ra,28(sp)
 1c8:	3c0a0000 	lui	t2,0x0
 1cc:	254a0000 	addiu	t2,t2,0
 1d0:	10000009 	b	1f8 <EnOkarinaTag_Init+0x1ec>
 1d4:	ae0a014c 	sw	t2,332(s0)
 1d8:	3c0c0000 	lui	t4,0x0
 1dc:	240b5021 	li	t3,20513
 1e0:	258c0000 	addiu	t4,t4,0
 1e4:	a60b010e 	sh	t3,270(s0)
 1e8:	10000003 	b	1f8 <EnOkarinaTag_Init+0x1ec>
 1ec:	ae0c014c 	sw	t4,332(s0)
 1f0:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 1f4:	02002025 	move	a0,s0
 1f8:	8fbf001c 	lw	ra,28(sp)
 1fc:	8fb00018 	lw	s0,24(sp)
 200:	27bd0020 	addiu	sp,sp,32
 204:	03e00008 	jr	ra
 208:	00000000 	nop

0000020c <func_80ABEF2C>:
 20c:	27bdffd8 	addiu	sp,sp,-40
 210:	afbf001c 	sw	ra,28(sp)
 214:	afb00018 	sw	s0,24(sp)
 218:	afa5002c 	sw	a1,44(sp)
 21c:	848f015a 	lh	t7,346(a0)
 220:	84860154 	lh	a2,340(a0)
 224:	8ca81c44 	lw	t0,7236(a1)
 228:	25f80001 	addiu	t8,t7,1
 22c:	00808025 	move	s0,a0
 230:	04c0000c 	bltz	a2,264 <func_80ABEF2C+0x58>
 234:	a498015a 	sh	t8,346(a0)
 238:	8fa4002c 	lw	a0,44(sp)
 23c:	00c02825 	move	a1,a2
 240:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 244:	afa80024 	sw	t0,36(sp)
 248:	10400006 	beqz	v0,264 <func_80ABEF2C+0x58>
 24c:	8fa80024 	lw	t0,36(sp)
 250:	8e190004 	lw	t9,4(s0)
 254:	2401fffe 	li	at,-2
 258:	03214824 	and	t1,t9,at
 25c:	1000004e 	b	398 <func_80ABEF2C+0x18c>
 260:	ae090004 	sw	t1,4(s0)
 264:	860a0152 	lh	t2,338(s0)
 268:	24010006 	li	at,6
 26c:	3c0b0000 	lui	t3,0x0
 270:	55410005 	bnel	t2,at,288 <func_80ABEF2C+0x7c>
 274:	8d0c0680 	lw	t4,1664(t0)
 278:	916b12c5 	lbu	t3,4805(t3)
 27c:	51600047 	beqzl	t3,39c <func_80ABEF2C+0x190>
 280:	8fbf001c 	lw	ra,28(sp)
 284:	8d0c0680 	lw	t4,1664(t0)
 288:	000c69c0 	sll	t5,t4,0x7
 28c:	05a3000c 	bgezl	t5,2c0 <func_80ABEF2C+0xb4>
 290:	3c0142b4 	lui	at,0x42b4
 294:	c6040090 	lwc1	$f4,144(s0)
 298:	3c040000 	lui	a0,0x0
 29c:	24840154 	addiu	a0,a0,340
 2a0:	460021a1 	cvt.d.s	$f6,$f4
 2a4:	afa80024 	sw	t0,36(sp)
 2a8:	44073000 	mfc1	a3,$f6
 2ac:	44063800 	mfc1	a2,$f7
 2b0:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 2b4:	00000000 	nop
 2b8:	8fa80024 	lw	t0,36(sp)
 2bc:	3c0142b4 	lui	at,0x42b4
 2c0:	44814000 	mtc1	at,$f8
 2c4:	c60c015c 	lwc1	$f12,348(s0)
 2c8:	c6020090 	lwc1	$f2,144(s0)
 2cc:	460c4280 	add.s	$f10,$f8,$f12
 2d0:	460a103c 	c.lt.s	$f2,$f10
 2d4:	00000000 	nop
 2d8:	45020030 	bc1fl	39c <func_80ABEF2C+0x190>
 2dc:	8fbf001c 	lw	ra,28(sp)
 2e0:	c5100028 	lwc1	$f16,40(t0)
 2e4:	c6120028 	lwc1	$f18,40(s0)
 2e8:	3c0142a0 	lui	at,0x42a0
 2ec:	44812000 	mtc1	at,$f4
 2f0:	46128381 	sub.s	$f14,$f16,$f18
 2f4:	46007385 	abs.s	$f14,$f14
 2f8:	4604703c 	c.lt.s	$f14,$f4
 2fc:	00000000 	nop
 300:	45020026 	bc1fl	39c <func_80ABEF2C+0x190>
 304:	8fbf001c 	lw	ra,28(sp)
 308:	8d030680 	lw	v1,1664(t0)
 30c:	3c014248 	lui	at,0x4248
 310:	00037180 	sll	t6,v1,0x6
 314:	05c30012 	bgezl	t6,360 <func_80ABEF2C+0x154>
 318:	44813000 	mtc1	at,$f6
 31c:	96020152 	lhu	v0,338(s0)
 320:	24010006 	li	at,6
 324:	54410003 	bnel	v0,at,334 <func_80ABEF2C+0x128>
 328:	3c010080 	lui	at,0x80
 32c:	2402000a 	li	v0,10
 330:	3c010080 	lui	at,0x80
 334:	00617825 	or	t7,v1,at
 338:	ad0f0680 	sw	t7,1664(t0)
 33c:	24450022 	addiu	a1,v0,34
 340:	30a5ffff 	andi	a1,a1,0xffff
 344:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 348:	8fa4002c 	lw	a0,44(sp)
 34c:	3c180000 	lui	t8,0x0
 350:	27180000 	addiu	t8,t8,0
 354:	10000010 	b	398 <func_80ABEF2C+0x18c>
 358:	ae18014c 	sw	t8,332(s0)
 35c:	44813000 	mtc1	at,$f6
 360:	3c014220 	lui	at,0x4220
 364:	460c3200 	add.s	$f8,$f6,$f12
 368:	4608103c 	c.lt.s	$f2,$f8
 36c:	00000000 	nop
 370:	4502000a 	bc1fl	39c <func_80ABEF2C+0x190>
 374:	8fbf001c 	lw	ra,28(sp)
 378:	44815000 	mtc1	at,$f10
 37c:	00000000 	nop
 380:	460a703c 	c.lt.s	$f14,$f10
 384:	00000000 	nop
 388:	45020004 	bc1fl	39c <func_80ABEF2C+0x190>
 38c:	8fbf001c 	lw	ra,28(sp)
 390:	a600015a 	sh	zero,346(s0)
 394:	ad1006a8 	sw	s0,1704(t0)
 398:	8fbf001c 	lw	ra,28(sp)
 39c:	8fb00018 	lw	s0,24(sp)
 3a0:	27bd0028 	addiu	sp,sp,40
 3a4:	03e00008 	jr	ra
 3a8:	00000000 	nop

000003ac <func_80ABF0CC>:
 3ac:	27bdffe8 	addiu	sp,sp,-24
 3b0:	3c020001 	lui	v0,0x1
 3b4:	afbf0014 	sw	ra,20(sp)
 3b8:	00451021 	addu	v0,v0,a1
 3bc:	944204c6 	lhu	v0,1222(v0)
 3c0:	24010004 	li	at,4
 3c4:	00803825 	move	a3,a0
 3c8:	00a03025 	move	a2,a1
 3cc:	14410005 	bne	v0,at,3e4 <func_80ABF0CC+0x38>
 3d0:	8ca31c44 	lw	v1,7236(a1)
 3d4:	3c0e0000 	lui	t6,0x0
 3d8:	25ce0000 	addiu	t6,t6,0
 3dc:	1000005f 	b	55c <func_80ABF0CC+0x1b0>
 3e0:	ac8e014c 	sw	t6,332(a0)
 3e4:	24010003 	li	at,3
 3e8:	54410023 	bnel	v0,at,478 <func_80ABF0CC+0xcc>
 3ec:	84e80158 	lh	t0,344(a3)
 3f0:	84e50154 	lh	a1,340(a3)
 3f4:	00c02025 	move	a0,a2
 3f8:	04a20007 	bltzl	a1,418 <func_80ABF0CC+0x6c>
 3fc:	84c200a4 	lh	v0,164(a2)
 400:	afa6001c 	sw	a2,28(sp)
 404:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 408:	afa70018 	sw	a3,24(sp)
 40c:	8fa6001c 	lw	a2,28(sp)
 410:	8fa70018 	lw	a3,24(sp)
 414:	84c200a4 	lh	v0,164(a2)
 418:	24010005 	li	at,5
 41c:	240f0037 	li	t7,55
 420:	14410005 	bne	v0,at,438 <func_80ABF0CC+0x8c>
 424:	24044802 	li	a0,18434
 428:	3c010001 	lui	at,0x1
 42c:	00260821 	addu	at,at,a2
 430:	a02f03dc 	sb	t7,988(at)
 434:	84c200a4 	lh	v0,164(a2)
 438:	2401003b 	li	at,59
 43c:	10410006 	beq	v0,at,458 <func_80ABF0CC+0xac>
 440:	2401003d 	li	at,61
 444:	10410004 	beq	v0,at,458 <func_80ABF0CC+0xac>
 448:	24180004 	li	t8,4
 44c:	3c010001 	lui	at,0x1
 450:	00260821 	addu	at,at,a2
 454:	a43804c6 	sh	t8,1222(at)
 458:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 45c:	afa70018 	sw	a3,24(sp)
 460:	8fa70018 	lw	a3,24(sp)
 464:	3c190000 	lui	t9,0x0
 468:	27390000 	addiu	t9,t9,0
 46c:	1000003b 	b	55c <func_80ABF0CC+0x1b0>
 470:	acf9014c 	sw	t9,332(a3)
 474:	84e80158 	lh	t0,344(a3)
 478:	24010005 	li	at,5
 47c:	51000025 	beqzl	t0,514 <func_80ABF0CC+0x168>
 480:	28410005 	slti	at,v0,5
 484:	1041000d 	beq	v0,at,4bc <func_80ABF0CC+0x110>
 488:	24010006 	li	at,6
 48c:	1041000b 	beq	v0,at,4bc <func_80ABF0CC+0x110>
 490:	24010007 	li	at,7
 494:	10410009 	beq	v0,at,4bc <func_80ABF0CC+0x110>
 498:	24010008 	li	at,8
 49c:	10410007 	beq	v0,at,4bc <func_80ABF0CC+0x110>
 4a0:	24010009 	li	at,9
 4a4:	10410005 	beq	v0,at,4bc <func_80ABF0CC+0x110>
 4a8:	2401000a 	li	at,10
 4ac:	10410003 	beq	v0,at,4bc <func_80ABF0CC+0x110>
 4b0:	2401000d 	li	at,13
 4b4:	54410017 	bnel	v0,at,514 <func_80ABF0CC+0x168>
 4b8:	28410005 	slti	at,v0,5
 4bc:	84e50154 	lh	a1,340(a3)
 4c0:	00c02025 	move	a0,a2
 4c4:	04a20007 	bltzl	a1,4e4 <func_80ABF0CC+0x138>
 4c8:	3c010001 	lui	at,0x1
 4cc:	afa6001c 	sw	a2,28(sp)
 4d0:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 4d4:	afa70018 	sw	a3,24(sp)
 4d8:	8fa6001c 	lw	a2,28(sp)
 4dc:	8fa70018 	lw	a3,24(sp)
 4e0:	3c010001 	lui	at,0x1
 4e4:	00260821 	addu	at,at,a2
 4e8:	24090004 	li	t1,4
 4ec:	a42904c6 	sh	t1,1222(at)
 4f0:	afa70018 	sw	a3,24(sp)
 4f4:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 4f8:	24044802 	li	a0,18434
 4fc:	8fa70018 	lw	a3,24(sp)
 500:	3c0a0000 	lui	t2,0x0
 504:	254a0000 	addiu	t2,t2,0
 508:	10000014 	b	55c <func_80ABF0CC+0x1b0>
 50c:	acea014c 	sw	t2,332(a3)
 510:	28410005 	slti	at,v0,5
 514:	1420000a 	bnez	at,540 <func_80ABF0CC+0x194>
 518:	2841000e 	slti	at,v0,14
 51c:	10200008 	beqz	at,540 <func_80ABF0CC+0x194>
 520:	240b0004 	li	t3,4
 524:	3c010001 	lui	at,0x1
 528:	00260821 	addu	at,at,a2
 52c:	3c0c0000 	lui	t4,0x0
 530:	a42b04c6 	sh	t3,1222(at)
 534:	258c0000 	addiu	t4,t4,0
 538:	10000008 	b	55c <func_80ABF0CC+0x1b0>
 53c:	acec014c 	sw	t4,332(a3)
 540:	24010001 	li	at,1
 544:	54410006 	bnel	v0,at,560 <func_80ABF0CC+0x1b4>
 548:	8fbf0014 	lw	ra,20(sp)
 54c:	8c6d0680 	lw	t5,1664(v1)
 550:	3c010080 	lui	at,0x80
 554:	01a17025 	or	t6,t5,at
 558:	ac6e0680 	sw	t6,1664(v1)
 55c:	8fbf0014 	lw	ra,20(sp)
 560:	27bd0018 	addiu	sp,sp,24
 564:	03e00008 	jr	ra
 568:	00000000 	nop

0000056c <func_80ABF28C>:
 56c:	27bdffe0 	addiu	sp,sp,-32
 570:	afbf0014 	sw	ra,20(sp)
 574:	8cae1c44 	lw	t6,7236(a1)
 578:	24030006 	li	v1,6
 57c:	00803025 	move	a2,a0
 580:	afae001c 	sw	t6,28(sp)
 584:	848f015a 	lh	t7,346(a0)
 588:	84990152 	lh	t9,338(a0)
 58c:	00a03825 	move	a3,a1
 590:	25f80001 	addiu	t8,t7,1
 594:	14790005 	bne	v1,t9,5ac <func_80ABF28C+0x40>
 598:	a498015a 	sh	t8,346(a0)
 59c:	3c080000 	lui	t0,0x0
 5a0:	910812c5 	lbu	t0,4805(t0)
 5a4:	5100007d 	beqzl	t0,79c <func_80ABF28C+0x230>
 5a8:	8fbf0014 	lw	ra,20(sp)
 5ac:	84c50154 	lh	a1,340(a2)
 5b0:	00e02025 	move	a0,a3
 5b4:	04a2000e 	bltzl	a1,5f0 <func_80ABF28C+0x84>
 5b8:	84c50150 	lh	a1,336(a2)
 5bc:	afa60020 	sw	a2,32(sp)
 5c0:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 5c4:	afa70024 	sw	a3,36(sp)
 5c8:	24030006 	li	v1,6
 5cc:	8fa60020 	lw	a2,32(sp)
 5d0:	10400006 	beqz	v0,5ec <func_80ABF28C+0x80>
 5d4:	8fa70024 	lw	a3,36(sp)
 5d8:	8cc90004 	lw	t1,4(a2)
 5dc:	2401fffe 	li	at,-2
 5e0:	01215024 	and	t2,t1,at
 5e4:	1000006c 	b	798 <func_80ABF28C+0x22c>
 5e8:	acca0004 	sw	t2,4(a2)
 5ec:	84c50150 	lh	a1,336(a2)
 5f0:	24040004 	li	a0,4
 5f4:	3c0b0000 	lui	t3,0x0
 5f8:	14850005 	bne	a0,a1,610 <func_80ABF28C+0xa4>
 5fc:	00000000 	nop
 600:	956b0edc 	lhu	t3,3804(t3)
 604:	316c0800 	andi	t4,t3,0x800
 608:	55800064 	bnezl	t4,79c <func_80ABF28C+0x230>
 60c:	8fbf0014 	lw	ra,20(sp)
 610:	14650004 	bne	v1,a1,624 <func_80ABF28C+0xb8>
 614:	3c0d0000 	lui	t5,0x0
 618:	95ad0ed6 	lhu	t5,3798(t5)
 61c:	31ae2000 	andi	t6,t5,0x2000
 620:	15c0005d 	bnez	t6,798 <func_80ABF28C+0x22c>
 624:	3c0142b4 	lui	at,0x42b4
 628:	44812000 	mtc1	at,$f4
 62c:	c4cc015c 	lwc1	$f12,348(a2)
 630:	c4c20090 	lwc1	$f2,144(a2)
 634:	8faf001c 	lw	t7,28(sp)
 638:	460c2180 	add.s	$f6,$f4,$f12
 63c:	4606103c 	c.lt.s	$f2,$f6
 640:	00000000 	nop
 644:	45020055 	bc1fl	79c <func_80ABF28C+0x230>
 648:	8fbf0014 	lw	ra,20(sp)
 64c:	c5e80028 	lwc1	$f8,40(t7)
 650:	c4ca0028 	lwc1	$f10,40(a2)
 654:	3c0142a0 	lui	at,0x42a0
 658:	44818000 	mtc1	at,$f16
 65c:	460a4381 	sub.s	$f14,$f8,$f10
 660:	46007385 	abs.s	$f14,$f14
 664:	4610703c 	c.lt.s	$f14,$f16
 668:	00000000 	nop
 66c:	4502004b 	bc1fl	79c <func_80ABF28C+0x230>
 670:	8fbf0014 	lw	ra,20(sp)
 674:	8df80680 	lw	t8,1664(t7)
 678:	3c014248 	lui	at,0x4248
 67c:	0018c9c0 	sll	t9,t8,0x7
 680:	07230033 	bgezl	t9,750 <func_80ABF28C+0x1e4>
 684:	44819000 	mtc1	at,$f18
 688:	24010001 	li	at,1
 68c:	10a10009 	beq	a1,at,6b4 <func_80ABF28C+0x148>
 690:	24010002 	li	at,2
 694:	50a1000e 	beql	a1,at,6d0 <func_80ABF28C+0x164>
 698:	00e02025 	move	a0,a3
 69c:	50a40012 	beql	a1,a0,6e8 <func_80ABF28C+0x17c>
 6a0:	00e02025 	move	a0,a3
 6a4:	10a30015 	beq	a1,v1,6fc <func_80ABF28C+0x190>
 6a8:	00e02025 	move	a0,a3
 6ac:	10000018 	b	710 <func_80ABF28C+0x1a4>
 6b0:	3c040000 	lui	a0,0x0
 6b4:	00e02025 	move	a0,a3
 6b8:	24050024 	li	a1,36
 6bc:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 6c0:	afa60020 	sw	a2,32(sp)
 6c4:	10000018 	b	728 <func_80ABF28C+0x1bc>
 6c8:	8fa60020 	lw	a2,32(sp)
 6cc:	00e02025 	move	a0,a3
 6d0:	24050027 	li	a1,39
 6d4:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 6d8:	afa60020 	sw	a2,32(sp)
 6dc:	10000012 	b	728 <func_80ABF28C+0x1bc>
 6e0:	8fa60020 	lw	a2,32(sp)
 6e4:	00e02025 	move	a0,a3
 6e8:	24050026 	li	a1,38
 6ec:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 6f0:	afa60020 	sw	a2,32(sp)
 6f4:	1000000c 	b	728 <func_80ABF28C+0x1bc>
 6f8:	8fa60020 	lw	a2,32(sp)
 6fc:	24050024 	li	a1,36
 700:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 704:	afa60020 	sw	a2,32(sp)
 708:	10000007 	b	728 <func_80ABF28C+0x1bc>
 70c:	8fa60020 	lw	a2,32(sp)
 710:	24840184 	addiu	a0,a0,388
 714:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 718:	afa60020 	sw	a2,32(sp)
 71c:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 720:	8fa40020 	lw	a0,32(sp)
 724:	8fa60020 	lw	a2,32(sp)
 728:	8fa8001c 	lw	t0,28(sp)
 72c:	3c010080 	lui	at,0x80
 730:	3c0b0000 	lui	t3,0x0
 734:	8d090680 	lw	t1,1664(t0)
 738:	256b0000 	addiu	t3,t3,0
 73c:	01215025 	or	t2,t1,at
 740:	ad0a0680 	sw	t2,1664(t0)
 744:	10000014 	b	798 <func_80ABF28C+0x22c>
 748:	accb014c 	sw	t3,332(a2)
 74c:	44819000 	mtc1	at,$f18
 750:	3c014220 	lui	at,0x4220
 754:	460c9100 	add.s	$f4,$f18,$f12
 758:	4604103c 	c.lt.s	$f2,$f4
 75c:	00000000 	nop
 760:	4502000e 	bc1fl	79c <func_80ABF28C+0x230>
 764:	8fbf0014 	lw	ra,20(sp)
 768:	44813000 	mtc1	at,$f6
 76c:	00000000 	nop
 770:	4606703c 	c.lt.s	$f14,$f6
 774:	00000000 	nop
 778:	45020008 	bc1fl	79c <func_80ABF28C+0x230>
 77c:	8fbf0014 	lw	ra,20(sp)
 780:	a4c0015a 	sh	zero,346(a2)
 784:	8fac001c 	lw	t4,28(sp)
 788:	3c010080 	lui	at,0x80
 78c:	8d8d0680 	lw	t5,1664(t4)
 790:	01a17025 	or	t6,t5,at
 794:	ad8e0680 	sw	t6,1664(t4)
 798:	8fbf0014 	lw	ra,20(sp)
 79c:	27bd0020 	addiu	sp,sp,32
 7a0:	03e00008 	jr	ra
 7a4:	00000000 	nop

000007a8 <func_80ABF4C8>:
 7a8:	27bdffe0 	addiu	sp,sp,-32
 7ac:	3c020001 	lui	v0,0x1
 7b0:	afbf001c 	sw	ra,28(sp)
 7b4:	afb00018 	sw	s0,24(sp)
 7b8:	00451021 	addu	v0,v0,a1
 7bc:	944204c6 	lhu	v0,1222(v0)
 7c0:	24010004 	li	at,4
 7c4:	00a08025 	move	s0,a1
 7c8:	00803025 	move	a2,a0
 7cc:	14410005 	bne	v0,at,7e4 <func_80ABF4C8+0x3c>
 7d0:	8ca31c44 	lw	v1,7236(a1)
 7d4:	3c0e0000 	lui	t6,0x0
 7d8:	25ce0000 	addiu	t6,t6,0
 7dc:	1000007d 	b	9d4 <func_80ABF4C8+0x22c>
 7e0:	ac8e014c 	sw	t6,332(a0)
 7e4:	24010003 	li	at,3
 7e8:	14410067 	bne	v0,at,988 <func_80ABF4C8+0x1e0>
 7ec:	24044802 	li	a0,18434
 7f0:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 7f4:	afa60020 	sw	a2,32(sp)
 7f8:	8fa60020 	lw	a2,32(sp)
 7fc:	84c50154 	lh	a1,340(a2)
 800:	04a20005 	bltzl	a1,818 <func_80ABF4C8+0x70>
 804:	84c20150 	lh	v0,336(a2)
 808:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 80c:	02002025 	move	a0,s0
 810:	8fa60020 	lw	a2,32(sp)
 814:	84c20150 	lh	v0,336(a2)
 818:	24010001 	li	at,1
 81c:	02002025 	move	a0,s0
 820:	1041000b 	beq	v0,at,850 <func_80ABF4C8+0xa8>
 824:	24010002 	li	at,2
 828:	10410012 	beq	v0,at,874 <func_80ABF4C8+0xcc>
 82c:	3c030000 	lui	v1,0x0
 830:	24010004 	li	at,4
 834:	1041001b 	beq	v0,at,8a4 <func_80ABF4C8+0xfc>
 838:	3c030000 	lui	v1,0x0
 83c:	24010006 	li	at,6
 840:	1041001f 	beq	v0,at,8c0 <func_80ABF4C8+0x118>
 844:	3c030000 	lui	v1,0x0
 848:	10000048 	b	96c <func_80ABF4C8+0x1c4>
 84c:	3c010001 	lui	at,0x1
 850:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 854:	84c50154 	lh	a1,340(a2)
 858:	3c030000 	lui	v1,0x0
 85c:	24630000 	addiu	v1,v1,0
 860:	946f0eda 	lhu	t7,3802(v1)
 864:	8fa60020 	lw	a2,32(sp)
 868:	35f80200 	ori	t8,t7,0x200
 86c:	1000003e 	b	968 <func_80ABF4C8+0x1c0>
 870:	a4780eda 	sh	t8,3802(v1)
 874:	3c190000 	lui	t9,0x0
 878:	27390000 	addiu	t9,t9,0
 87c:	24630000 	addiu	v1,v1,0
 880:	ae191d68 	sw	t9,7528(s0)
 884:	24080001 	li	t0,1
 888:	a0681414 	sb	t0,5140(v1)
 88c:	3c010000 	lui	at,0x0
 890:	c42c0224 	lwc1	$f12,548(at)
 894:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 898:	2405005a 	li	a1,90
 89c:	10000032 	b	968 <func_80ABF4C8+0x1c0>
 8a0:	8fa60020 	lw	a2,32(sp)
 8a4:	3c090000 	lui	t1,0x0
 8a8:	25290000 	addiu	t1,t1,0
 8ac:	24630000 	addiu	v1,v1,0
 8b0:	ae091d68 	sw	t1,7528(s0)
 8b4:	240a0001 	li	t2,1
 8b8:	1000002b 	b	968 <func_80ABF4C8+0x1c0>
 8bc:	a06a1414 	sb	t2,5140(v1)
 8c0:	24630000 	addiu	v1,v1,0
 8c4:	8c6b0004 	lw	t3,4(v1)
 8c8:	3c020000 	lui	v0,0x0
 8cc:	24420000 	addiu	v0,v0,0
 8d0:	15600011 	bnez	t3,918 <func_80ABF4C8+0x170>
 8d4:	24044802 	li	a0,18434
 8d8:	3c020000 	lui	v0,0x0
 8dc:	24420000 	addiu	v0,v0,0
 8e0:	00026100 	sll	t4,v0,0x4
 8e4:	000c6f02 	srl	t5,t4,0x1c
 8e8:	000d7080 	sll	t6,t5,0x2
 8ec:	3c0f0000 	lui	t7,0x0
 8f0:	01ee7821 	addu	t7,t7,t6
 8f4:	3c0100ff 	lui	at,0xff
 8f8:	8def0000 	lw	t7,0(t7)
 8fc:	3421ffff 	ori	at,at,0xffff
 900:	0041c024 	and	t8,v0,at
 904:	3c018000 	lui	at,0x8000
 908:	01f8c821 	addu	t9,t7,t8
 90c:	03214021 	addu	t0,t9,at
 910:	1000000e 	b	94c <func_80ABF4C8+0x1a4>
 914:	ae081d68 	sw	t0,7528(s0)
 918:	00024900 	sll	t1,v0,0x4
 91c:	00095702 	srl	t2,t1,0x1c
 920:	000a5880 	sll	t3,t2,0x2
 924:	3c0c0000 	lui	t4,0x0
 928:	018b6021 	addu	t4,t4,t3
 92c:	3c0100ff 	lui	at,0xff
 930:	8d8c0000 	lw	t4,0(t4)
 934:	3421ffff 	ori	at,at,0xffff
 938:	00416824 	and	t5,v0,at
 93c:	3c018000 	lui	at,0x8000
 940:	018d7021 	addu	t6,t4,t5
 944:	01c17821 	addu	t7,t6,at
 948:	ae0f1d68 	sw	t7,7528(s0)
 94c:	94790ed6 	lhu	t9,3798(v1)
 950:	24180001 	li	t8,1
 954:	a0781414 	sb	t8,5140(v1)
 958:	37282000 	ori	t0,t9,0x2000
 95c:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 960:	a4680ed6 	sh	t0,3798(v1)
 964:	8fa60020 	lw	a2,32(sp)
 968:	3c010001 	lui	at,0x1
 96c:	00300821 	addu	at,at,s0
 970:	24090004 	li	t1,4
 974:	3c0a0000 	lui	t2,0x0
 978:	a42904c6 	sh	t1,1222(at)
 97c:	254a0000 	addiu	t2,t2,0
 980:	10000014 	b	9d4 <func_80ABF4C8+0x22c>
 984:	acca014c 	sw	t2,332(a2)
 988:	28410005 	slti	at,v0,5
 98c:	1420000a 	bnez	at,9b8 <func_80ABF4C8+0x210>
 990:	2841000e 	slti	at,v0,14
 994:	10200008 	beqz	at,9b8 <func_80ABF4C8+0x210>
 998:	240b0004 	li	t3,4
 99c:	3c010001 	lui	at,0x1
 9a0:	00300821 	addu	at,at,s0
 9a4:	3c0c0000 	lui	t4,0x0
 9a8:	a42b04c6 	sh	t3,1222(at)
 9ac:	258c0000 	addiu	t4,t4,0
 9b0:	10000008 	b	9d4 <func_80ABF4C8+0x22c>
 9b4:	accc014c 	sw	t4,332(a2)
 9b8:	24010001 	li	at,1
 9bc:	54410006 	bnel	v0,at,9d8 <func_80ABF4C8+0x230>
 9c0:	8fbf001c 	lw	ra,28(sp)
 9c4:	8c6d0680 	lw	t5,1664(v1)
 9c8:	3c010080 	lui	at,0x80
 9cc:	01a17025 	or	t6,t5,at
 9d0:	ac6e0680 	sw	t6,1664(v1)
 9d4:	8fbf001c 	lw	ra,28(sp)
 9d8:	8fb00018 	lw	s0,24(sp)
 9dc:	27bd0020 	addiu	sp,sp,32
 9e0:	03e00008 	jr	ra
 9e4:	00000000 	nop

000009e8 <func_80ABF708>:
 9e8:	27bdffe8 	addiu	sp,sp,-24
 9ec:	afbf0014 	sw	ra,20(sp)
 9f0:	afa5001c 	sw	a1,28(sp)
 9f4:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 9f8:	afa40018 	sw	a0,24(sp)
 9fc:	10400005 	beqz	v0,a14 <func_80ABF708+0x2c>
 a00:	8fa40018 	lw	a0,24(sp)
 a04:	3c0e0000 	lui	t6,0x0
 a08:	25ce0000 	addiu	t6,t6,0
 a0c:	10000023 	b	a9c <func_80ABF708+0xb4>
 a10:	ac8e014c 	sw	t6,332(a0)
 a14:	3c0142f0 	lui	at,0x42f0
 a18:	44812000 	mtc1	at,$f4
 a1c:	c4860090 	lwc1	$f6,144(a0)
 a20:	848f008a 	lh	t7,138(a0)
 a24:	84980032 	lh	t8,50(a0)
 a28:	4606203c 	c.lt.s	$f4,$f6
 a2c:	8499015a 	lh	t9,346(a0)
 a30:	01f81823 	subu	v1,t7,t8
 a34:	00031c00 	sll	v1,v1,0x10
 a38:	27280001 	addiu	t0,t9,1
 a3c:	00031c03 	sra	v1,v1,0x10
 a40:	45010016 	bc1t	a9c <func_80ABF708+0xb4>
 a44:	a488015a 	sh	t0,346(a0)
 a48:	3c090000 	lui	t1,0x0
 a4c:	3c0a0000 	lui	t2,0x0
 a50:	8d4a00a4 	lw	t2,164(t2)
 a54:	8d29003c 	lw	t1,60(t1)
 a58:	00031023 	negu	v0,v1
 a5c:	240c5021 	li	t4,20513
 a60:	012a5824 	and	t3,t1,t2
 a64:	11600002 	beqz	t3,a70 <func_80ABF708+0x88>
 a68:	00021400 	sll	v0,v0,0x10
 a6c:	a48c010e 	sh	t4,270(a0)
 a70:	04600004 	bltz	v1,a84 <func_80ABF708+0x9c>
 a74:	00021403 	sra	v0,v0,0x10
 a78:	00031400 	sll	v0,v1,0x10
 a7c:	10000001 	b	a84 <func_80ABF708+0x9c>
 a80:	00021403 	sra	v0,v0,0x10
 a84:	28414300 	slti	at,v0,17152
 a88:	10200004 	beqz	at,a9c <func_80ABF708+0xb4>
 a8c:	3c06428c 	lui	a2,0x428c
 a90:	a480015a 	sh	zero,346(a0)
 a94:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 a98:	8fa5001c 	lw	a1,28(sp)
 a9c:	8fbf0014 	lw	ra,20(sp)
 aa0:	27bd0018 	addiu	sp,sp,24
 aa4:	03e00008 	jr	ra
 aa8:	00000000 	nop

00000aac <func_80ABF7CC>:
 aac:	27bdffe0 	addiu	sp,sp,-32
 ab0:	afa40020 	sw	a0,32(sp)
 ab4:	afbf0014 	sw	ra,20(sp)
 ab8:	24a420d8 	addiu	a0,a1,8408
 abc:	afa50024 	sw	a1,36(sp)
 ac0:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 ac4:	afa40018 	sw	a0,24(sp)
 ac8:	3c040000 	lui	a0,0x0
 acc:	248401d0 	addiu	a0,a0,464
 ad0:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 ad4:	00402825 	move	a1,v0
 ad8:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 adc:	8fa40018 	lw	a0,24(sp)
 ae0:	24010005 	li	at,5
 ae4:	54410025 	bnel	v0,at,b7c <func_80ABF7CC+0xd0>
 ae8:	8fbf0014 	lw	ra,20(sp)
 aec:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 af0:	8fa40024 	lw	a0,36(sp)
 af4:	50400021 	beqzl	v0,b7c <func_80ABF7CC+0xd0>
 af8:	8fbf0014 	lw	ra,20(sp)
 afc:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 b00:	8fa40024 	lw	a0,36(sp)
 b04:	3c030000 	lui	v1,0x0
 b08:	24630000 	addiu	v1,v1,0
 b0c:	3c0e0000 	lui	t6,0x0
 b10:	8dce003c 	lw	t6,60(t6)
 b14:	8c6f00a4 	lw	t7,164(v1)
 b18:	3c020000 	lui	v0,0x0
 b1c:	24420000 	addiu	v0,v0,0
 b20:	01cfc024 	and	t8,t6,t7
 b24:	17000010 	bnez	t8,b68 <func_80ABF7CC+0xbc>
 b28:	0002c900 	sll	t9,v0,0x4
 b2c:	00194702 	srl	t0,t9,0x1c
 b30:	00084880 	sll	t1,t0,0x2
 b34:	3c0a0000 	lui	t2,0x0
 b38:	01495021 	addu	t2,t2,t1
 b3c:	3c0100ff 	lui	at,0xff
 b40:	8d4a0000 	lw	t2,0(t2)
 b44:	3421ffff 	ori	at,at,0xffff
 b48:	00415824 	and	t3,v0,at
 b4c:	8fae0024 	lw	t6,36(sp)
 b50:	3c018000 	lui	at,0x8000
 b54:	014b6021 	addu	t4,t2,t3
 b58:	01816821 	addu	t5,t4,at
 b5c:	240f0001 	li	t7,1
 b60:	adcd1d68 	sw	t5,7528(t6)
 b64:	a06f1414 	sb	t7,5140(v1)
 b68:	8fb90020 	lw	t9,32(sp)
 b6c:	3c180000 	lui	t8,0x0
 b70:	27180000 	addiu	t8,t8,0
 b74:	af38014c 	sw	t8,332(t9)
 b78:	8fbf0014 	lw	ra,20(sp)
 b7c:	27bd0020 	addiu	sp,sp,32
 b80:	03e00008 	jr	ra
 b84:	00000000 	nop

00000b88 <EnOkarinaTag_Update>:
 b88:	27bdffb8 	addiu	sp,sp,-72
 b8c:	afbf0044 	sw	ra,68(sp)
 b90:	afa40048 	sw	a0,72(sp)
 b94:	afa5004c 	sw	a1,76(sp)
 b98:	8c99014c 	lw	t9,332(a0)
 b9c:	0320f809 	jalr	t9
 ba0:	00000000 	nop
 ba4:	3c0e0000 	lui	t6,0x0
 ba8:	8dce0000 	lw	t6,0(t6)
 bac:	8fa40048 	lw	a0,72(sp)
 bb0:	8fa5004c 	lw	a1,76(sp)
 bb4:	85cf12d4 	lh	t7,4820(t6)
 bb8:	51e0003a 	beqzl	t7,ca4 <EnOkarinaTag_Update+0x11c>
 bbc:	8fbf0044 	lw	ra,68(sp)
 bc0:	8482015a 	lh	v0,346(a0)
 bc4:	3c013f80 	lui	at,0x3f80
 bc8:	240800ff 	li	t0,255
 bcc:	1040001f 	beqz	v0,c4c <EnOkarinaTag_Update+0xc4>
 bd0:	240900ff 	li	t1,255
 bd4:	30580001 	andi	t8,v0,0x1
 bd8:	17000031 	bnez	t8,ca0 <EnOkarinaTag_Update+0x118>
 bdc:	3c013f80 	lui	at,0x3f80
 be0:	84880032 	lh	t0,50(a0)
 be4:	c48c0024 	lwc1	$f12,36(a0)
 be8:	c48e0028 	lwc1	$f14,40(a0)
 bec:	8c86002c 	lw	a2,44(a0)
 bf0:	84870030 	lh	a3,48(a0)
 bf4:	afa80010 	sw	t0,16(sp)
 bf8:	84890034 	lh	t1,52(a0)
 bfc:	44810000 	mtc1	at,$f0
 c00:	240a0078 	li	t2,120
 c04:	240b0078 	li	t3,120
 c08:	240c0078 	li	t4,120
 c0c:	240d00ff 	li	t5,255
 c10:	24190004 	li	t9,4
 c14:	afb90034 	sw	t9,52(sp)
 c18:	afad0030 	sw	t5,48(sp)
 c1c:	afac002c 	sw	t4,44(sp)
 c20:	afab0028 	sw	t3,40(sp)
 c24:	afaa0024 	sw	t2,36(sp)
 c28:	afa90014 	sw	t1,20(sp)
 c2c:	e7a00018 	swc1	$f0,24(sp)
 c30:	e7a0001c 	swc1	$f0,28(sp)
 c34:	e7a00020 	swc1	$f0,32(sp)
 c38:	8cae0000 	lw	t6,0(a1)
 c3c:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 c40:	afae0038 	sw	t6,56(sp)
 c44:	10000017 	b	ca4 <EnOkarinaTag_Update+0x11c>
 c48:	8fbf0044 	lw	ra,68(sp)
 c4c:	848f0032 	lh	t7,50(a0)
 c50:	c48c0024 	lwc1	$f12,36(a0)
 c54:	c48e0028 	lwc1	$f14,40(a0)
 c58:	8c86002c 	lw	a2,44(a0)
 c5c:	84870030 	lh	a3,48(a0)
 c60:	afaf0010 	sw	t7,16(sp)
 c64:	84980034 	lh	t8,52(a0)
 c68:	44810000 	mtc1	at,$f0
 c6c:	240a0004 	li	t2,4
 c70:	afaa0034 	sw	t2,52(sp)
 c74:	afa90030 	sw	t1,48(sp)
 c78:	afa0002c 	sw	zero,44(sp)
 c7c:	afa00028 	sw	zero,40(sp)
 c80:	afa80024 	sw	t0,36(sp)
 c84:	afb80014 	sw	t8,20(sp)
 c88:	e7a00018 	swc1	$f0,24(sp)
 c8c:	e7a0001c 	swc1	$f0,28(sp)
 c90:	e7a00020 	swc1	$f0,32(sp)
 c94:	8cab0000 	lw	t3,0(a1)
 c98:	0c000000 	jal	0 <EnOkarinaTag_Destroy>
 c9c:	afab0038 	sw	t3,56(sp)
 ca0:	8fbf0044 	lw	ra,68(sp)
 ca4:	27bd0048 	addiu	sp,sp,72
 ca8:	03e00008 	jr	ra
 cac:	00000000 	nop
