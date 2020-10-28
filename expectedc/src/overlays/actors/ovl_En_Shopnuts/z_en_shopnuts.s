
build/src/overlays/actors/ovl_En_Shopnuts/z_en_shopnuts.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnShopnuts_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afa5003c 	sw	a1,60(sp)
   8:	afbf002c 	sw	ra,44(sp)
   c:	afb00028 	sw	s0,40(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	0c000000 	jal	0 <EnShopnuts_Init>
  1c:	24a50000 	addiu	a1,a1,0
  20:	3c060000 	lui	a2,0x0
  24:	24c60000 	addiu	a2,a2,0
  28:	260400b4 	addiu	a0,s0,180
  2c:	24050000 	li	a1,0
  30:	0c000000 	jal	0 <EnShopnuts_Init>
  34:	3c07420c 	lui	a3,0x420c
  38:	3c060600 	lui	a2,0x600
  3c:	3c070600 	lui	a3,0x600
  40:	260e0196 	addiu	t6,s0,406
  44:	260f0202 	addiu	t7,s0,514
  48:	24180012 	li	t8,18
  4c:	afb80018 	sw	t8,24(sp)
  50:	afaf0014 	sw	t7,20(sp)
  54:	afae0010 	sw	t6,16(sp)
  58:	24e74574 	addiu	a3,a3,17780
  5c:	24c641a8 	addiu	a2,a2,16808
  60:	8fa4003c 	lw	a0,60(sp)
  64:	0c000000 	jal	0 <EnShopnuts_Init>
  68:	2605014c 	addiu	a1,s0,332
  6c:	26050270 	addiu	a1,s0,624
  70:	afa50030 	sw	a1,48(sp)
  74:	0c000000 	jal	0 <EnShopnuts_Init>
  78:	8fa4003c 	lw	a0,60(sp)
  7c:	3c070000 	lui	a3,0x0
  80:	24e70000 	addiu	a3,a3,0
  84:	8fa4003c 	lw	a0,60(sp)
  88:	8fa50030 	lw	a1,48(sp)
  8c:	0c000000 	jal	0 <EnShopnuts_Init>
  90:	02003025 	move	a2,s0
  94:	3c060000 	lui	a2,0x0
  98:	24c60000 	addiu	a2,a2,0
  9c:	26040098 	addiu	a0,s0,152
  a0:	0c000000 	jal	0 <EnShopnuts_Init>
  a4:	00002825 	move	a1,zero
  a8:	02002025 	move	a0,s0
  ac:	0c000000 	jal	0 <EnShopnuts_Init>
  b0:	8fa50030 	lw	a1,48(sp)
  b4:	8602001c 	lh	v0,28(s0)
  b8:	24010002 	li	at,2
  bc:	3c030000 	lui	v1,0x0
  c0:	14410004 	bne	v0,at,d4 <EnShopnuts_Init+0xd4>
  c4:	24630000 	addiu	v1,v1,0
  c8:	94790ef0 	lhu	t9,3824(v1)
  cc:	33280800 	andi	t0,t9,0x800
  d0:	1500000e 	bnez	t0,10c <EnShopnuts_Init+0x10c>
  d4:	3c030000 	lui	v1,0x0
  d8:	24010009 	li	at,9
  dc:	14410004 	bne	v0,at,f0 <EnShopnuts_Init+0xf0>
  e0:	24630000 	addiu	v1,v1,0
  e4:	94690f2a 	lhu	t1,3882(v1)
  e8:	312a0004 	andi	t2,t1,0x4
  ec:	15400007 	bnez	t2,10c <EnShopnuts_Init+0x10c>
  f0:	2401000a 	li	at,10
  f4:	14410009 	bne	v0,at,11c <EnShopnuts_Init+0x11c>
  f8:	00000000 	nop
  fc:	946b0f2a 	lhu	t3,3882(v1)
 100:	316c0008 	andi	t4,t3,0x8
 104:	11800005 	beqz	t4,11c <EnShopnuts_Init+0x11c>
 108:	00000000 	nop
 10c:	0c000000 	jal	0 <EnShopnuts_Init>
 110:	02002025 	move	a0,s0
 114:	10000004 	b	128 <EnShopnuts_Init+0x128>
 118:	8fbf002c 	lw	ra,44(sp)
 11c:	0c000000 	jal	0 <EnShopnuts_Init>
 120:	02002025 	move	a0,s0
 124:	8fbf002c 	lw	ra,44(sp)
 128:	8fb00028 	lw	s0,40(sp)
 12c:	27bd0038 	addiu	sp,sp,56
 130:	03e00008 	jr	ra
 134:	00000000 	nop

00000138 <EnShopnuts_Destroy>:
 138:	27bdffe8 	addiu	sp,sp,-24
 13c:	00803025 	move	a2,a0
 140:	afbf0014 	sw	ra,20(sp)
 144:	00a02025 	move	a0,a1
 148:	0c000000 	jal	0 <EnShopnuts_Init>
 14c:	24c50270 	addiu	a1,a2,624
 150:	8fbf0014 	lw	ra,20(sp)
 154:	27bd0018 	addiu	sp,sp,24
 158:	03e00008 	jr	ra
 15c:	00000000 	nop

00000160 <func_80AFA880>:
 160:	27bdffe8 	addiu	sp,sp,-24
 164:	afbf0014 	sw	ra,20(sp)
 168:	00803825 	move	a3,a0
 16c:	3c050600 	lui	a1,0x600
 170:	24a5139c 	addiu	a1,a1,5020
 174:	afa70018 	sw	a3,24(sp)
 178:	2484014c 	addiu	a0,a0,332
 17c:	0c000000 	jal	0 <EnShopnuts_Init>
 180:	24060000 	li	a2,0
 184:	24040064 	li	a0,100
 188:	0c000000 	jal	0 <EnShopnuts_Init>
 18c:	24050032 	li	a1,50
 190:	8fa70018 	lw	a3,24(sp)
 194:	3c190000 	lui	t9,0x0
 198:	240e0005 	li	t6,5
 19c:	90ef0281 	lbu	t7,641(a3)
 1a0:	27390000 	addiu	t9,t9,0
 1a4:	a4e20194 	sh	v0,404(a3)
 1a8:	31f8fffe 	andi	t8,t7,0xfffe
 1ac:	a4ee02b2 	sh	t6,690(a3)
 1b0:	a0f80281 	sb	t8,641(a3)
 1b4:	acf90190 	sw	t9,400(a3)
 1b8:	8fbf0014 	lw	ra,20(sp)
 1bc:	27bd0018 	addiu	sp,sp,24
 1c0:	03e00008 	jr	ra
 1c4:	00000000 	nop

000001c8 <func_80AFA8E8>:
 1c8:	27bdffe8 	addiu	sp,sp,-24
 1cc:	afbf0014 	sw	ra,20(sp)
 1d0:	00803025 	move	a2,a0
 1d4:	3c050600 	lui	a1,0x600
 1d8:	24a50ba0 	addiu	a1,a1,2976
 1dc:	afa60018 	sw	a2,24(sp)
 1e0:	0c000000 	jal	0 <EnShopnuts_Init>
 1e4:	2484014c 	addiu	a0,a0,332
 1e8:	8fa60018 	lw	a2,24(sp)
 1ec:	3c0f0000 	lui	t7,0x0
 1f0:	240e0002 	li	t6,2
 1f4:	25ef0000 	addiu	t7,t7,0
 1f8:	a4ce0194 	sh	t6,404(a2)
 1fc:	accf0190 	sw	t7,400(a2)
 200:	8fbf0014 	lw	ra,20(sp)
 204:	27bd0018 	addiu	sp,sp,24
 208:	03e00008 	jr	ra
 20c:	00000000 	nop

00000210 <func_80AFA930>:
 210:	27bdffe8 	addiu	sp,sp,-24
 214:	afbf0014 	sw	ra,20(sp)
 218:	afa40018 	sw	a0,24(sp)
 21c:	3c050600 	lui	a1,0x600
 220:	24a501ec 	addiu	a1,a1,492
 224:	0c000000 	jal	0 <EnShopnuts_Init>
 228:	2484014c 	addiu	a0,a0,332
 22c:	8faf0018 	lw	t7,24(sp)
 230:	3c0e0000 	lui	t6,0x0
 234:	25ce0000 	addiu	t6,t6,0
 238:	adee0190 	sw	t6,400(t7)
 23c:	8fbf0014 	lw	ra,20(sp)
 240:	27bd0018 	addiu	sp,sp,24
 244:	03e00008 	jr	ra
 248:	00000000 	nop

0000024c <func_80AFA96C>:
 24c:	27bdffe8 	addiu	sp,sp,-24
 250:	afbf0014 	sw	ra,20(sp)
 254:	00803825 	move	a3,a0
 258:	3c050600 	lui	a1,0x600
 25c:	24a54574 	addiu	a1,a1,17780
 260:	afa70018 	sw	a3,24(sp)
 264:	2484014c 	addiu	a0,a0,332
 268:	0c000000 	jal	0 <EnShopnuts_Init>
 26c:	3c06c040 	lui	a2,0xc040
 270:	8fa70018 	lw	a3,24(sp)
 274:	3c0e0000 	lui	t6,0x0
 278:	25ce0000 	addiu	t6,t6,0
 27c:	8cef0190 	lw	t7,400(a3)
 280:	3c080000 	lui	t0,0x0
 284:	24190001 	li	t9,1
 288:	15cf0004 	bne	t6,t7,29c <func_80AFA96C+0x50>
 28c:	25080000 	addiu	t0,t0,0
 290:	24181002 	li	t8,4098
 294:	10000002 	b	2a0 <func_80AFA96C+0x54>
 298:	a4f80194 	sh	t8,404(a3)
 29c:	a4f90194 	sh	t9,404(a3)
 2a0:	ace80190 	sw	t0,400(a3)
 2a4:	8fbf0014 	lw	ra,20(sp)
 2a8:	27bd0018 	addiu	sp,sp,24
 2ac:	03e00008 	jr	ra
 2b0:	00000000 	nop

000002b4 <func_80AFA9D4>:
 2b4:	27bdffe8 	addiu	sp,sp,-24
 2b8:	afbf0014 	sw	ra,20(sp)
 2bc:	afa40018 	sw	a0,24(sp)
 2c0:	3c050600 	lui	a1,0x600
 2c4:	24a5039c 	addiu	a1,a1,924
 2c8:	2484014c 	addiu	a0,a0,332
 2cc:	0c000000 	jal	0 <EnShopnuts_Init>
 2d0:	3c06c0a0 	lui	a2,0xc0a0
 2d4:	8fa40018 	lw	a0,24(sp)
 2d8:	0c000000 	jal	0 <EnShopnuts_Init>
 2dc:	2405387d 	li	a1,14461
 2e0:	8faf0018 	lw	t7,24(sp)
 2e4:	3c0e0000 	lui	t6,0x0
 2e8:	25ce0000 	addiu	t6,t6,0
 2ec:	adee0190 	sw	t6,400(t7)
 2f0:	8fbf0014 	lw	ra,20(sp)
 2f4:	27bd0018 	addiu	sp,sp,24
 2f8:	03e00008 	jr	ra
 2fc:	00000000 	nop

00000300 <func_80AFAA20>:
 300:	27bdffe8 	addiu	sp,sp,-24
 304:	afbf0014 	sw	ra,20(sp)
 308:	00803825 	move	a3,a0
 30c:	3c050600 	lui	a1,0x600
 310:	24a50764 	addiu	a1,a1,1892
 314:	afa70018 	sw	a3,24(sp)
 318:	2484014c 	addiu	a0,a0,332
 31c:	0c000000 	jal	0 <EnShopnuts_Init>
 320:	3c06c040 	lui	a2,0xc040
 324:	8fa40018 	lw	a0,24(sp)
 328:	0c000000 	jal	0 <EnShopnuts_Init>
 32c:	24053880 	li	a1,14464
 330:	8fa70018 	lw	a3,24(sp)
 334:	3c180000 	lui	t8,0x0
 338:	27180000 	addiu	t8,t8,0
 33c:	90ee0281 	lbu	t6,641(a3)
 340:	acf80190 	sw	t8,400(a3)
 344:	31cffffe 	andi	t7,t6,0xfffe
 348:	a0ef0281 	sb	t7,641(a3)
 34c:	8fbf0014 	lw	ra,20(sp)
 350:	27bd0018 	addiu	sp,sp,24
 354:	03e00008 	jr	ra
 358:	00000000 	nop

0000035c <func_80AFAA7C>:
 35c:	27bdffd0 	addiu	sp,sp,-48
 360:	afbf001c 	sw	ra,28(sp)
 364:	afb00018 	sw	s0,24(sp)
 368:	afa50034 	sw	a1,52(sp)
 36c:	3c013f00 	lui	at,0x3f00
 370:	44813000 	mtc1	at,$f6
 374:	c4840168 	lwc1	$f4,360(a0)
 378:	00808025 	move	s0,a0
 37c:	00001825 	move	v1,zero
 380:	4606203c 	c.lt.s	$f4,$f6
 384:	2604014c 	addiu	a0,s0,332
 388:	3c054110 	lui	a1,0x4110
 38c:	45000002 	bc1f	398 <func_80AFAA7C+0x3c>
 390:	00000000 	nop
 394:	24030001 	li	v1,1
 398:	50600006 	beqzl	v1,3b4 <func_80AFAA7C+0x58>
 39c:	afa3002c 	sw	v1,44(sp)
 3a0:	86020194 	lh	v0,404(s0)
 3a4:	10400002 	beqz	v0,3b0 <func_80AFAA7C+0x54>
 3a8:	244effff 	addiu	t6,v0,-1
 3ac:	a60e0194 	sh	t6,404(s0)
 3b0:	afa3002c 	sw	v1,44(sp)
 3b4:	0c000000 	jal	0 <EnShopnuts_Init>
 3b8:	afa40020 	sw	a0,32(sp)
 3bc:	3c014110 	lui	at,0x4110
 3c0:	44816000 	mtc1	at,$f12
 3c4:	10400005 	beqz	v0,3dc <func_80AFAA7C+0x80>
 3c8:	8fa40020 	lw	a0,32(sp)
 3cc:	920f0281 	lbu	t7,641(s0)
 3d0:	35f80001 	ori	t8,t7,0x1
 3d4:	1000000c 	b	408 <func_80AFAA7C+0xac>
 3d8:	a2180281 	sb	t8,641(s0)
 3dc:	0c000000 	jal	0 <EnShopnuts_Init>
 3e0:	3c054100 	lui	a1,0x4100
 3e4:	3c014110 	lui	at,0x4110
 3e8:	44816000 	mtc1	at,$f12
 3ec:	10400006 	beqz	v0,408 <func_80AFAA7C+0xac>
 3f0:	02002025 	move	a0,s0
 3f4:	0c000000 	jal	0 <EnShopnuts_Init>
 3f8:	2405387c 	li	a1,14460
 3fc:	3c014110 	lui	at,0x4110
 400:	44816000 	mtc1	at,$f12
 404:	00000000 	nop
 408:	c6000164 	lwc1	$f0,356(s0)
 40c:	3c014150 	lui	at,0x4150
 410:	460c003c 	c.lt.s	$f0,$f12
 414:	00000000 	nop
 418:	45020004 	bc1fl	42c <func_80AFAA7C+0xd0>
 41c:	44817000 	mtc1	at,$f14
 420:	1000000b 	b	450 <func_80AFAA7C+0xf4>
 424:	46006006 	mov.s	$f0,$f12
 428:	44817000 	mtc1	at,$f14
 42c:	00000000 	nop
 430:	4600703c 	c.lt.s	$f14,$f0
 434:	00000000 	nop
 438:	45020004 	bc1fl	44c <func_80AFAA7C+0xf0>
 43c:	46000086 	mov.s	$f2,$f0
 440:	10000002 	b	44c <func_80AFAA7C+0xf0>
 444:	46007086 	mov.s	$f2,$f14
 448:	46000086 	mov.s	$f2,$f0
 44c:	46001006 	mov.s	$f0,$f2
 450:	460c0201 	sub.s	$f8,$f0,$f12
 454:	3c0140a0 	lui	at,0x40a0
 458:	44818000 	mtc1	at,$f16
 45c:	3c0142f0 	lui	at,0x42f0
 460:	460c4282 	mul.s	$f10,$f8,$f12
 464:	46105480 	add.s	$f18,$f10,$f16
 468:	4600910d 	trunc.w.s	$f4,$f18
 46c:	44082000 	mfc1	t0,$f4
 470:	00000000 	nop
 474:	a60802b2 	sh	t0,690(s0)
 478:	8fa9002c 	lw	t1,44(sp)
 47c:	1520000c 	bnez	t1,4b0 <func_80AFAA7C+0x154>
 480:	00000000 	nop
 484:	c6060090 	lwc1	$f6,144(s0)
 488:	44814000 	mtc1	at,$f8
 48c:	00000000 	nop
 490:	4608303c 	c.lt.s	$f6,$f8
 494:	00000000 	nop
 498:	45000005 	bc1f	4b0 <func_80AFAA7C+0x154>
 49c:	00000000 	nop
 4a0:	0c000000 	jal	0 <EnShopnuts_Init>
 4a4:	02002025 	move	a0,s0
 4a8:	10000021 	b	530 <func_80AFAA7C+0x1d4>
 4ac:	8fab002c 	lw	t3,44(sp)
 4b0:	0c000000 	jal	0 <EnShopnuts_Init>
 4b4:	8fa40020 	lw	a0,32(sp)
 4b8:	1040001c 	beqz	v0,52c <func_80AFAA7C+0x1d0>
 4bc:	3c0142f0 	lui	at,0x42f0
 4c0:	c6020090 	lwc1	$f2,144(s0)
 4c4:	44815000 	mtc1	at,$f10
 4c8:	00000000 	nop
 4cc:	460a103c 	c.lt.s	$f2,$f10
 4d0:	00000000 	nop
 4d4:	45020006 	bc1fl	4f0 <func_80AFAA7C+0x194>
 4d8:	860a0194 	lh	t2,404(s0)
 4dc:	0c000000 	jal	0 <EnShopnuts_Init>
 4e0:	02002025 	move	a0,s0
 4e4:	10000012 	b	530 <func_80AFAA7C+0x1d4>
 4e8:	8fab002c 	lw	t3,44(sp)
 4ec:	860a0194 	lh	t2,404(s0)
 4f0:	3c0143a0 	lui	at,0x43a0
 4f4:	1540000b 	bnez	t2,524 <func_80AFAA7C+0x1c8>
 4f8:	00000000 	nop
 4fc:	44818000 	mtc1	at,$f16
 500:	00000000 	nop
 504:	4602803c 	c.lt.s	$f16,$f2
 508:	00000000 	nop
 50c:	45000005 	bc1f	524 <func_80AFAA7C+0x1c8>
 510:	00000000 	nop
 514:	0c000000 	jal	0 <EnShopnuts_Init>
 518:	02002025 	move	a0,s0
 51c:	10000004 	b	530 <func_80AFAA7C+0x1d4>
 520:	8fab002c 	lw	t3,44(sp)
 524:	0c000000 	jal	0 <EnShopnuts_Init>
 528:	02002025 	move	a0,s0
 52c:	8fab002c 	lw	t3,44(sp)
 530:	3c014320 	lui	at,0x4320
 534:	5160001e 	beqzl	t3,5b0 <func_80AFAA7C+0x254>
 538:	8fbf001c 	lw	ra,28(sp)
 53c:	c6020090 	lwc1	$f2,144(s0)
 540:	44819000 	mtc1	at,$f18
 544:	00000000 	nop
 548:	4602903c 	c.lt.s	$f18,$f2
 54c:	00000000 	nop
 550:	45020017 	bc1fl	5b0 <func_80AFAA7C+0x254>
 554:	8fbf001c 	lw	ra,28(sp)
 558:	c6000094 	lwc1	$f0,148(s0)
 55c:	3c0142f0 	lui	at,0x42f0
 560:	44812000 	mtc1	at,$f4
 564:	46000005 	abs.s	$f0,$f0
 568:	4604003c 	c.lt.s	$f0,$f4
 56c:	00000000 	nop
 570:	4502000f 	bc1fl	5b0 <func_80AFAA7C+0x254>
 574:	8fbf001c 	lw	ra,28(sp)
 578:	860c0194 	lh	t4,404(s0)
 57c:	3c0143f0 	lui	at,0x43f0
 580:	51800007 	beqzl	t4,5a0 <func_80AFAA7C+0x244>
 584:	3c013f80 	lui	at,0x3f80
 588:	44813000 	mtc1	at,$f6
 58c:	00000000 	nop
 590:	4606103c 	c.lt.s	$f2,$f6
 594:	00000000 	nop
 598:	45000004 	bc1f	5ac <func_80AFAA7C+0x250>
 59c:	3c013f80 	lui	at,0x3f80
 5a0:	44814000 	mtc1	at,$f8
 5a4:	00000000 	nop
 5a8:	e6080168 	swc1	$f8,360(s0)
 5ac:	8fbf001c 	lw	ra,28(sp)
 5b0:	8fb00018 	lw	s0,24(sp)
 5b4:	27bd0030 	addiu	sp,sp,48
 5b8:	03e00008 	jr	ra
 5bc:	00000000 	nop

000005c0 <func_80AFACE0>:
 5c0:	27bdffe0 	addiu	sp,sp,-32
 5c4:	00803025 	move	a2,a0
 5c8:	afbf0014 	sw	ra,20(sp)
 5cc:	2484014c 	addiu	a0,a0,332
 5d0:	afa50024 	sw	a1,36(sp)
 5d4:	afa4001c 	sw	a0,28(sp)
 5d8:	0c000000 	jal	0 <EnShopnuts_Init>
 5dc:	afa60020 	sw	a2,32(sp)
 5e0:	8fa4001c 	lw	a0,28(sp)
 5e4:	0c000000 	jal	0 <EnShopnuts_Init>
 5e8:	24050000 	li	a1,0
 5ec:	10400005 	beqz	v0,604 <func_80AFACE0+0x44>
 5f0:	8fa60020 	lw	a2,32(sp)
 5f4:	84c20194 	lh	v0,404(a2)
 5f8:	10400002 	beqz	v0,604 <func_80AFACE0+0x44>
 5fc:	244effff 	addiu	t6,v0,-1
 600:	a4ce0194 	sh	t6,404(a2)
 604:	3c0142f0 	lui	at,0x42f0
 608:	44813000 	mtc1	at,$f6
 60c:	c4c40090 	lwc1	$f4,144(a2)
 610:	4606203c 	c.lt.s	$f4,$f6
 614:	00000000 	nop
 618:	45010004 	bc1t	62c <func_80AFACE0+0x6c>
 61c:	00000000 	nop
 620:	84cf0194 	lh	t7,404(a2)
 624:	55e00004 	bnezl	t7,638 <func_80AFACE0+0x78>
 628:	8fbf0014 	lw	ra,20(sp)
 62c:	0c000000 	jal	0 <EnShopnuts_Init>
 630:	00c02025 	move	a0,a2
 634:	8fbf0014 	lw	ra,20(sp)
 638:	27bd0020 	addiu	sp,sp,32
 63c:	03e00008 	jr	ra
 640:	00000000 	nop

00000644 <func_80AFAD64>:
 644:	27bdffd8 	addiu	sp,sp,-40
 648:	afb00018 	sw	s0,24(sp)
 64c:	00808025 	move	s0,a0
 650:	afbf001c 	sw	ra,28(sp)
 654:	2484014c 	addiu	a0,a0,332
 658:	afa5002c 	sw	a1,44(sp)
 65c:	0c000000 	jal	0 <EnShopnuts_Init>
 660:	afa40024 	sw	a0,36(sp)
 664:	8fa40024 	lw	a0,36(sp)
 668:	0c000000 	jal	0 <EnShopnuts_Init>
 66c:	24050000 	li	a1,0
 670:	10400005 	beqz	v0,688 <func_80AFAD64+0x44>
 674:	260400b6 	addiu	a0,s0,182
 678:	86020194 	lh	v0,404(s0)
 67c:	10400002 	beqz	v0,688 <func_80AFAD64+0x44>
 680:	244effff 	addiu	t6,v0,-1
 684:	a60e0194 	sh	t6,404(s0)
 688:	860f0194 	lh	t7,404(s0)
 68c:	24060002 	li	a2,2
 690:	24070e38 	li	a3,3640
 694:	31f81000 	andi	t8,t7,0x1000
 698:	57000004 	bnezl	t8,6ac <func_80AFAD64+0x68>
 69c:	3c0142f0 	lui	at,0x42f0
 6a0:	0c000000 	jal	0 <EnShopnuts_Init>
 6a4:	8605008a 	lh	a1,138(s0)
 6a8:	3c0142f0 	lui	at,0x42f0
 6ac:	44813000 	mtc1	at,$f6
 6b0:	c6040090 	lwc1	$f4,144(s0)
 6b4:	4606203c 	c.lt.s	$f4,$f6
 6b8:	00000000 	nop
 6bc:	45010005 	bc1t	6d4 <func_80AFAD64+0x90>
 6c0:	00000000 	nop
 6c4:	86020194 	lh	v0,404(s0)
 6c8:	24011000 	li	at,4096
 6cc:	14410005 	bne	v0,at,6e4 <func_80AFAD64+0xa0>
 6d0:	00000000 	nop
 6d4:	0c000000 	jal	0 <EnShopnuts_Init>
 6d8:	02002025 	move	a0,s0
 6dc:	10000006 	b	6f8 <func_80AFAD64+0xb4>
 6e0:	8fbf001c 	lw	ra,28(sp)
 6e4:	54400004 	bnezl	v0,6f8 <func_80AFAD64+0xb4>
 6e8:	8fbf001c 	lw	ra,28(sp)
 6ec:	0c000000 	jal	0 <EnShopnuts_Init>
 6f0:	02002025 	move	a0,s0
 6f4:	8fbf001c 	lw	ra,28(sp)
 6f8:	8fb00018 	lw	s0,24(sp)
 6fc:	27bd0028 	addiu	sp,sp,40
 700:	03e00008 	jr	ra
 704:	00000000 	nop

00000708 <func_80AFAE28>:
 708:	27bdffb8 	addiu	sp,sp,-72
 70c:	afb00030 	sw	s0,48(sp)
 710:	00808025 	move	s0,a0
 714:	afbf0034 	sw	ra,52(sp)
 718:	afa5004c 	sw	a1,76(sp)
 71c:	8605008a 	lh	a1,138(s0)
 720:	248400b6 	addiu	a0,a0,182
 724:	24060002 	li	a2,2
 728:	0c000000 	jal	0 <EnShopnuts_Init>
 72c:	24070e38 	li	a3,3640
 730:	3c0142f0 	lui	at,0x42f0
 734:	44813000 	mtc1	at,$f6
 738:	c6040090 	lwc1	$f4,144(s0)
 73c:	2604014c 	addiu	a0,s0,332
 740:	4606203c 	c.lt.s	$f4,$f6
 744:	00000000 	nop
 748:	45000005 	bc1f	760 <func_80AFAE28+0x58>
 74c:	00000000 	nop
 750:	0c000000 	jal	0 <EnShopnuts_Init>
 754:	02002025 	move	a0,s0
 758:	10000036 	b	834 <func_80AFAE28+0x12c>
 75c:	8fbf0034 	lw	ra,52(sp)
 760:	0c000000 	jal	0 <EnShopnuts_Init>
 764:	afa40038 	sw	a0,56(sp)
 768:	10400005 	beqz	v0,780 <func_80AFAE28+0x78>
 76c:	8fa40038 	lw	a0,56(sp)
 770:	0c000000 	jal	0 <EnShopnuts_Init>
 774:	02002025 	move	a0,s0
 778:	1000002e 	b	834 <func_80AFAE28+0x12c>
 77c:	8fbf0034 	lw	ra,52(sp)
 780:	0c000000 	jal	0 <EnShopnuts_Init>
 784:	3c0540c0 	lui	a1,0x40c0
 788:	5040002a 	beqzl	v0,834 <func_80AFAE28+0x12c>
 78c:	8fbf0034 	lw	ra,52(sp)
 790:	0c000000 	jal	0 <EnShopnuts_Init>
 794:	860400b6 	lh	a0,182(s0)
 798:	3c0141b8 	lui	at,0x41b8
 79c:	44814000 	mtc1	at,$f8
 7a0:	c6100024 	lwc1	$f16,36(s0)
 7a4:	3c014140 	lui	at,0x4140
 7a8:	46080282 	mul.s	$f10,$f0,$f8
 7ac:	44813000 	mtc1	at,$f6
 7b0:	46105480 	add.s	$f18,$f10,$f16
 7b4:	e7b2003c 	swc1	$f18,60(sp)
 7b8:	c6040028 	lwc1	$f4,40(s0)
 7bc:	46062200 	add.s	$f8,$f4,$f6
 7c0:	e7a80040 	swc1	$f8,64(sp)
 7c4:	0c000000 	jal	0 <EnShopnuts_Init>
 7c8:	860400b6 	lh	a0,182(s0)
 7cc:	3c0141b8 	lui	at,0x41b8
 7d0:	44815000 	mtc1	at,$f10
 7d4:	c612002c 	lwc1	$f18,44(s0)
 7d8:	c7a40040 	lwc1	$f4,64(sp)
 7dc:	460a0402 	mul.s	$f16,$f0,$f10
 7e0:	8fa5004c 	lw	a1,76(sp)
 7e4:	e7a40010 	swc1	$f4,16(sp)
 7e8:	24190002 	li	t9,2
 7ec:	24060193 	li	a2,403
 7f0:	8fa7003c 	lw	a3,60(sp)
 7f4:	24a41c24 	addiu	a0,a1,7204
 7f8:	46128080 	add.s	$f2,$f16,$f18
 7fc:	e7a20014 	swc1	$f2,20(sp)
 800:	860e00b4 	lh	t6,180(s0)
 804:	afae0018 	sw	t6,24(sp)
 808:	860f00b6 	lh	t7,182(s0)
 80c:	afaf001c 	sw	t7,28(sp)
 810:	861800b8 	lh	t8,184(s0)
 814:	afb90024 	sw	t9,36(sp)
 818:	0c000000 	jal	0 <EnShopnuts_Init>
 81c:	afb80020 	sw	t8,32(sp)
 820:	10400003 	beqz	v0,830 <func_80AFAE28+0x128>
 824:	02002025 	move	a0,s0
 828:	0c000000 	jal	0 <EnShopnuts_Init>
 82c:	2405387e 	li	a1,14462
 830:	8fbf0034 	lw	ra,52(sp)
 834:	8fb00030 	lw	s0,48(sp)
 838:	27bd0048 	addiu	sp,sp,72
 83c:	03e00008 	jr	ra
 840:	00000000 	nop

00000844 <func_80AFAF64>:
 844:	27bdffd8 	addiu	sp,sp,-40
 848:	afb00018 	sw	s0,24(sp)
 84c:	00808025 	move	s0,a0
 850:	afbf001c 	sw	ra,28(sp)
 854:	2484014c 	addiu	a0,a0,332
 858:	afa5002c 	sw	a1,44(sp)
 85c:	0c000000 	jal	0 <EnShopnuts_Init>
 860:	afa40020 	sw	a0,32(sp)
 864:	10400007 	beqz	v0,884 <func_80AFAF64+0x40>
 868:	3c014080 	lui	at,0x4080
 86c:	0c000000 	jal	0 <EnShopnuts_Init>
 870:	02002025 	move	a0,s0
 874:	3c014080 	lui	at,0x4080
 878:	44816000 	mtc1	at,$f12
 87c:	10000016 	b	8d8 <func_80AFAF64+0x94>
 880:	44056000 	mfc1	a1,$f12
 884:	44816000 	mtc1	at,$f12
 888:	c6000164 	lwc1	$f0,356(s0)
 88c:	3c014120 	lui	at,0x4120
 890:	4600603c 	c.lt.s	$f12,$f0
 894:	00000000 	nop
 898:	45020004 	bc1fl	8ac <func_80AFAF64+0x68>
 89c:	46000086 	mov.s	$f2,$f0
 8a0:	10000002 	b	8ac <func_80AFAF64+0x68>
 8a4:	46006086 	mov.s	$f2,$f12
 8a8:	46000086 	mov.s	$f2,$f0
 8ac:	46026101 	sub.s	$f4,$f12,$f2
 8b0:	44813000 	mtc1	at,$f6
 8b4:	3c0140a0 	lui	at,0x40a0
 8b8:	44815000 	mtc1	at,$f10
 8bc:	46062202 	mul.s	$f8,$f4,$f6
 8c0:	460a4400 	add.s	$f16,$f8,$f10
 8c4:	4600848d 	trunc.w.s	$f18,$f16
 8c8:	440f9000 	mfc1	t7,$f18
 8cc:	00000000 	nop
 8d0:	a60f02b2 	sh	t7,690(s0)
 8d4:	44056000 	mfc1	a1,$f12
 8d8:	0c000000 	jal	0 <EnShopnuts_Init>
 8dc:	8fa40020 	lw	a0,32(sp)
 8e0:	50400005 	beqzl	v0,8f8 <func_80AFAF64+0xb4>
 8e4:	8fbf001c 	lw	ra,28(sp)
 8e8:	92180281 	lbu	t8,641(s0)
 8ec:	3319fffe 	andi	t9,t8,0xfffe
 8f0:	a2190281 	sb	t9,641(s0)
 8f4:	8fbf001c 	lw	ra,28(sp)
 8f8:	8fb00018 	lw	s0,24(sp)
 8fc:	27bd0028 	addiu	sp,sp,40
 900:	03e00008 	jr	ra
 904:	00000000 	nop

00000908 <func_80AFB028>:
 908:	27bdffc8 	addiu	sp,sp,-56
 90c:	afb00030 	sw	s0,48(sp)
 910:	00808025 	move	s0,a0
 914:	afbf0034 	sw	ra,52(sp)
 918:	afa5003c 	sw	a1,60(sp)
 91c:	0c000000 	jal	0 <EnShopnuts_Init>
 920:	2484014c 	addiu	a0,a0,332
 924:	10400015 	beqz	v0,97c <func_80AFB028+0x74>
 928:	8fa5003c 	lw	a1,60(sp)
 92c:	c6040028 	lwc1	$f4,40(s0)
 930:	8e070024 	lw	a3,36(s0)
 934:	24a41c24 	addiu	a0,a1,7204
 938:	e7a40010 	swc1	$f4,16(sp)
 93c:	c606002c 	lwc1	$f6,44(s0)
 940:	2406011a 	li	a2,282
 944:	e7a60014 	swc1	$f6,20(sp)
 948:	860e00b4 	lh	t6,180(s0)
 94c:	afae0018 	sw	t6,24(sp)
 950:	860f00b6 	lh	t7,182(s0)
 954:	afaf001c 	sw	t7,28(sp)
 958:	861800b8 	lh	t8,184(s0)
 95c:	afb80020 	sw	t8,32(sp)
 960:	8619001c 	lh	t9,28(s0)
 964:	0c000000 	jal	0 <EnShopnuts_Init>
 968:	afb90024 	sw	t9,36(sp)
 96c:	0c000000 	jal	0 <EnShopnuts_Init>
 970:	02002025 	move	a0,s0
 974:	10000007 	b	994 <func_80AFB028+0x8c>
 978:	8fbf0034 	lw	ra,52(sp)
 97c:	260400b6 	addiu	a0,s0,182
 980:	8605008a 	lh	a1,138(s0)
 984:	24060002 	li	a2,2
 988:	0c000000 	jal	0 <EnShopnuts_Init>
 98c:	24070e38 	li	a3,3640
 990:	8fbf0034 	lw	ra,52(sp)
 994:	8fb00030 	lw	s0,48(sp)
 998:	27bd0038 	addiu	sp,sp,56
 99c:	03e00008 	jr	ra
 9a0:	00000000 	nop

000009a4 <func_80AFB0C4>:
 9a4:	27bdffe8 	addiu	sp,sp,-24
 9a8:	afbf0014 	sw	ra,20(sp)
 9ac:	90820281 	lbu	v0,641(a0)
 9b0:	24060001 	li	a2,1
 9b4:	304e0002 	andi	t6,v0,0x2
 9b8:	11c00009 	beqz	t6,9e0 <func_80AFB0C4+0x3c>
 9bc:	304ffffd 	andi	t7,v0,0xfffd
 9c0:	a08f0281 	sb	t7,641(a0)
 9c4:	afa40018 	sw	a0,24(sp)
 9c8:	0c000000 	jal	0 <EnShopnuts_Init>
 9cc:	24850288 	addiu	a1,a0,648
 9d0:	0c000000 	jal	0 <EnShopnuts_Init>
 9d4:	8fa40018 	lw	a0,24(sp)
 9d8:	10000007 	b	9f8 <func_80AFB0C4+0x54>
 9dc:	8fbf0014 	lw	ra,20(sp)
 9e0:	90b81c26 	lbu	t8,7206(a1)
 9e4:	53000004 	beqzl	t8,9f8 <func_80AFB0C4+0x54>
 9e8:	8fbf0014 	lw	ra,20(sp)
 9ec:	0c000000 	jal	0 <EnShopnuts_Init>
 9f0:	00000000 	nop
 9f4:	8fbf0014 	lw	ra,20(sp)
 9f8:	27bd0018 	addiu	sp,sp,24
 9fc:	03e00008 	jr	ra
 a00:	00000000 	nop

00000a04 <EnShopnuts_Update>:
 a04:	27bdffd8 	addiu	sp,sp,-40
 a08:	afbf0024 	sw	ra,36(sp)
 a0c:	afb10020 	sw	s1,32(sp)
 a10:	afb0001c 	sw	s0,28(sp)
 a14:	00808025 	move	s0,a0
 a18:	0c000000 	jal	0 <EnShopnuts_Init>
 a1c:	00a08825 	move	s1,a1
 a20:	8e190190 	lw	t9,400(s0)
 a24:	02002025 	move	a0,s0
 a28:	02202825 	move	a1,s1
 a2c:	0320f809 	jalr	t9
 a30:	00000000 	nop
 a34:	860e02b0 	lh	t6,688(s0)
 a38:	860f02b2 	lh	t7,690(s0)
 a3c:	24180004 	li	t8,4
 a40:	448e2000 	mtc1	t6,$f4
 a44:	448f3000 	mtc1	t7,$f6
 a48:	afb80014 	sw	t8,20(sp)
 a4c:	46802120 	cvt.s.w	$f4,$f4
 a50:	02202025 	move	a0,s1
 a54:	02002825 	move	a1,s0
 a58:	3c0641a0 	lui	a2,0x41a0
 a5c:	46803220 	cvt.s.w	$f8,$f6
 a60:	44072000 	mfc1	a3,$f4
 a64:	0c000000 	jal	0 <EnShopnuts_Init>
 a68:	e7a80010 	swc1	$f8,16(sp)
 a6c:	92080281 	lbu	t0,641(s0)
 a70:	3c010001 	lui	at,0x1
 a74:	34211e60 	ori	at,at,0x1e60
 a78:	31090001 	andi	t1,t0,0x1
 a7c:	11200004 	beqz	t1,a90 <EnShopnuts_Update+0x8c>
 a80:	02202025 	move	a0,s1
 a84:	02212821 	addu	a1,s1,at
 a88:	0c000000 	jal	0 <EnShopnuts_Init>
 a8c:	26060270 	addiu	a2,s0,624
 a90:	3c010001 	lui	at,0x1
 a94:	34211e60 	ori	at,at,0x1e60
 a98:	02212821 	addu	a1,s1,at
 a9c:	02202025 	move	a0,s1
 aa0:	0c000000 	jal	0 <EnShopnuts_Init>
 aa4:	26060270 	addiu	a2,s0,624
 aa8:	8e030190 	lw	v1,400(s0)
 aac:	3c0a0000 	lui	t2,0x0
 ab0:	254a0000 	addiu	t2,t2,0
 ab4:	15430006 	bne	t2,v1,ad0 <EnShopnuts_Update+0xcc>
 ab8:	3c0b0000 	lui	t3,0x0
 abc:	02002025 	move	a0,s0
 ac0:	0c000000 	jal	0 <EnShopnuts_Init>
 ac4:	8e050164 	lw	a1,356(s0)
 ac8:	10000018 	b	b2c <EnShopnuts_Update+0x128>
 acc:	8fbf0024 	lw	ra,36(sp)
 ad0:	256b0000 	addiu	t3,t3,0
 ad4:	15630012 	bne	t3,v1,b20 <EnShopnuts_Update+0x11c>
 ad8:	02002025 	move	a0,s0
 adc:	3c040600 	lui	a0,0x600
 ae0:	0c000000 	jal	0 <EnShopnuts_Init>
 ae4:	2484039c 	addiu	a0,a0,924
 ae8:	3c0141a0 	lui	at,0x41a0
 aec:	44810000 	mtc1	at,$f0
 af0:	c60a0164 	lwc1	$f10,356(s0)
 af4:	44829000 	mtc1	v0,$f18
 af8:	02002025 	move	a0,s0
 afc:	46005402 	mul.s	$f16,$f10,$f0
 b00:	46809120 	cvt.s.w	$f4,$f18
 b04:	46048183 	div.s	$f6,$f16,$f4
 b08:	46060201 	sub.s	$f8,$f0,$f6
 b0c:	44054000 	mfc1	a1,$f8
 b10:	0c000000 	jal	0 <EnShopnuts_Init>
 b14:	00000000 	nop
 b18:	10000004 	b	b2c <EnShopnuts_Update+0x128>
 b1c:	8fbf0024 	lw	ra,36(sp)
 b20:	0c000000 	jal	0 <EnShopnuts_Init>
 b24:	3c0541a0 	lui	a1,0x41a0
 b28:	8fbf0024 	lw	ra,36(sp)
 b2c:	8fb0001c 	lw	s0,28(sp)
 b30:	8fb10020 	lw	s1,32(sp)
 b34:	03e00008 	jr	ra
 b38:	27bd0028 	addiu	sp,sp,40

00000b3c <func_80AFB25C>:
 b3c:	24010009 	li	at,9
 b40:	afa40000 	sw	a0,0(sp)
 b44:	14a10008 	bne	a1,at,b68 <func_80AFB25C+0x2c>
 b48:	afa7000c 	sw	a3,12(sp)
 b4c:	8faf0014 	lw	t7,20(sp)
 b50:	3c0e0000 	lui	t6,0x0
 b54:	25ce0000 	addiu	t6,t6,0
 b58:	8df80190 	lw	t8,400(t7)
 b5c:	15d80002 	bne	t6,t8,b68 <func_80AFB25C+0x2c>
 b60:	00000000 	nop
 b64:	acc00000 	sw	zero,0(a2)
 b68:	03e00008 	jr	ra
 b6c:	00001025 	move	v0,zero

00000b70 <func_80AFB290>:
 b70:	27bdffb0 	addiu	sp,sp,-80
 b74:	24010009 	li	at,9
 b78:	afbf0014 	sw	ra,20(sp)
 b7c:	afa40050 	sw	a0,80(sp)
 b80:	afa60058 	sw	a2,88(sp)
 b84:	14a1006d 	bne	a1,at,d3c <func_80AFB290+0x1cc>
 b88:	afa7005c 	sw	a3,92(sp)
 b8c:	8faf0060 	lw	t7,96(sp)
 b90:	3c0e0000 	lui	t6,0x0
 b94:	25ce0000 	addiu	t6,t6,0
 b98:	8df80190 	lw	t8,400(t7)
 b9c:	3c060000 	lui	a2,0x0
 ba0:	24c60000 	addiu	a2,a2,0
 ba4:	15d80065 	bne	t6,t8,d3c <func_80AFB290+0x1cc>
 ba8:	240702aa 	li	a3,682
 bac:	8c850000 	lw	a1,0(a0)
 bb0:	27a40028 	addiu	a0,sp,40
 bb4:	0c000000 	jal	0 <EnShopnuts_Init>
 bb8:	afa50038 	sw	a1,56(sp)
 bbc:	8fa80060 	lw	t0,96(sp)
 bc0:	3c0140c0 	lui	at,0x40c0
 bc4:	44819000 	mtc1	at,$f18
 bc8:	c5000164 	lwc1	$f0,356(t0)
 bcc:	3c0140e0 	lui	at,0x40e0
 bd0:	4612003e 	c.le.s	$f0,$f18
 bd4:	00000000 	nop
 bd8:	4502000f 	bc1fl	c18 <func_80AFB290+0xa8>
 bdc:	44811000 	mtc1	at,$f2
 be0:	3c013f80 	lui	at,0x3f80
 be4:	44819000 	mtc1	at,$f18
 be8:	3c010000 	lui	at,0x0
 bec:	c4240000 	lwc1	$f4,0(at)
 bf0:	3c010000 	lui	at,0x0
 bf4:	c4280000 	lwc1	$f8,0(at)
 bf8:	46040182 	mul.s	$f6,$f0,$f4
 bfc:	00000000 	nop
 c00:	46080282 	mul.s	$f10,$f0,$f8
 c04:	46069381 	sub.s	$f14,$f18,$f6
 c08:	46125300 	add.s	$f12,$f10,$f18
 c0c:	10000028 	b	cb0 <func_80AFB290+0x140>
 c10:	46006406 	mov.s	$f16,$f12
 c14:	44811000 	mtc1	at,$f2
 c18:	3c014120 	lui	at,0x4120
 c1c:	4602003e 	c.le.s	$f0,$f2
 c20:	00000000 	nop
 c24:	4502000e 	bc1fl	c60 <func_80AFB290+0xf0>
 c28:	44812000 	mtc1	at,$f4
 c2c:	3c013f00 	lui	at,0x3f00
 c30:	44812000 	mtc1	at,$f4
 c34:	3c010000 	lui	at,0x0
 c38:	c4260000 	lwc1	$f6,0(at)
 c3c:	46120001 	sub.s	$f0,$f0,$f18
 c40:	3c010000 	lui	at,0x0
 c44:	c4280000 	lwc1	$f8,0(at)
 c48:	46002380 	add.s	$f14,$f4,$f0
 c4c:	46080282 	mul.s	$f10,$f0,$f8
 c50:	460a3301 	sub.s	$f12,$f6,$f10
 c54:	10000016 	b	cb0 <func_80AFB290+0x140>
 c58:	46006406 	mov.s	$f16,$f12
 c5c:	44812000 	mtc1	at,$f4
 c60:	3c013f80 	lui	at,0x3f80
 c64:	4604003e 	c.le.s	$f0,$f4
 c68:	00000000 	nop
 c6c:	4502000d 	bc1fl	ca4 <func_80AFB290+0x134>
 c70:	44816000 	mtc1	at,$f12
 c74:	3c013f80 	lui	at,0x3f80
 c78:	44816000 	mtc1	at,$f12
 c7c:	46020201 	sub.s	$f8,$f0,$f2
 c80:	3c010000 	lui	at,0x0
 c84:	c4260000 	lwc1	$f6,0(at)
 c88:	3c013fc0 	lui	at,0x3fc0
 c8c:	44812000 	mtc1	at,$f4
 c90:	46064282 	mul.s	$f10,$f8,$f6
 c94:	46006406 	mov.s	$f16,$f12
 c98:	10000005 	b	cb0 <func_80AFB290+0x140>
 c9c:	460a2381 	sub.s	$f14,$f4,$f10
 ca0:	44816000 	mtc1	at,$f12
 ca4:	00000000 	nop
 ca8:	46006406 	mov.s	$f16,$f12
 cac:	46006386 	mov.s	$f14,$f12
 cb0:	44068000 	mfc1	a2,$f16
 cb4:	0c000000 	jal	0 <EnShopnuts_Init>
 cb8:	24070001 	li	a3,1
 cbc:	8fa70038 	lw	a3,56(sp)
 cc0:	3c0ada38 	lui	t2,0xda38
 cc4:	354a0003 	ori	t2,t2,0x3
 cc8:	8ce202c0 	lw	v0,704(a3)
 ccc:	3c050000 	lui	a1,0x0
 cd0:	24a50000 	addiu	a1,a1,0
 cd4:	24490008 	addiu	t1,v0,8
 cd8:	ace902c0 	sw	t1,704(a3)
 cdc:	ac4a0000 	sw	t2,0(v0)
 ce0:	8fab0050 	lw	t3,80(sp)
 ce4:	240602ca 	li	a2,714
 ce8:	8d640000 	lw	a0,0(t3)
 cec:	0c000000 	jal	0 <EnShopnuts_Init>
 cf0:	afa20024 	sw	v0,36(sp)
 cf4:	8fa30024 	lw	v1,36(sp)
 cf8:	3c0e0600 	lui	t6,0x600
 cfc:	25ce3b68 	addiu	t6,t6,15208
 d00:	ac620004 	sw	v0,4(v1)
 d04:	8fac0038 	lw	t4,56(sp)
 d08:	3c0fde00 	lui	t7,0xde00
 d0c:	3c060000 	lui	a2,0x0
 d10:	8d8202c0 	lw	v0,704(t4)
 d14:	24c60000 	addiu	a2,a2,0
 d18:	27a40028 	addiu	a0,sp,40
 d1c:	244d0008 	addiu	t5,v0,8
 d20:	ad8d02c0 	sw	t5,704(t4)
 d24:	ac4e0004 	sw	t6,4(v0)
 d28:	ac4f0000 	sw	t7,0(v0)
 d2c:	8fb80050 	lw	t8,80(sp)
 d30:	240702cd 	li	a3,717
 d34:	0c000000 	jal	0 <EnShopnuts_Init>
 d38:	8f050000 	lw	a1,0(t8)
 d3c:	8fbf0014 	lw	ra,20(sp)
 d40:	27bd0050 	addiu	sp,sp,80
 d44:	03e00008 	jr	ra
 d48:	00000000 	nop

00000d4c <EnShopnuts_Draw>:
 d4c:	27bdffd8 	addiu	sp,sp,-40
 d50:	afa40028 	sw	a0,40(sp)
 d54:	8fae0028 	lw	t6,40(sp)
 d58:	afbf0024 	sw	ra,36(sp)
 d5c:	afa5002c 	sw	a1,44(sp)
 d60:	00a02025 	move	a0,a1
 d64:	3c0f0000 	lui	t7,0x0
 d68:	3c180000 	lui	t8,0x0
 d6c:	8dc50150 	lw	a1,336(t6)
 d70:	91c7014e 	lbu	a3,334(t6)
 d74:	8dc6016c 	lw	a2,364(t6)
 d78:	27180000 	addiu	t8,t8,0
 d7c:	25ef0000 	addiu	t7,t7,0
 d80:	afaf0010 	sw	t7,16(sp)
 d84:	afb80014 	sw	t8,20(sp)
 d88:	0c000000 	jal	0 <EnShopnuts_Init>
 d8c:	afae0018 	sw	t6,24(sp)
 d90:	8fbf0024 	lw	ra,36(sp)
 d94:	27bd0028 	addiu	sp,sp,40
 d98:	03e00008 	jr	ra
 d9c:	00000000 	nop
