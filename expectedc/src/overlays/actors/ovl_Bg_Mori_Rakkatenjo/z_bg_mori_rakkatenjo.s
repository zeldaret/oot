
build/src/overlays/actors/ovl_Bg_Mori_Rakkatenjo/z_bg_mori_rakkatenjo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgMoriRakkatenjo_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa50034 	sw	a1,52(sp)
  10:	00808025 	move	s0,a0
  14:	afa00024 	sw	zero,36(sp)
  18:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
  1c:	24050001 	li	a1,1
  20:	c604000c 	lwc1	$f4,12(s0)
  24:	3c040000 	lui	a0,0x0
  28:	24840000 	addiu	a0,a0,0
  2c:	460021a1 	cvt.d.s	$f6,$f4
  30:	44073000 	mfc1	a3,$f6
  34:	44063800 	mfc1	a2,$f7
  38:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
  3c:	00000000 	nop
  40:	3c010000 	lui	at,0x0
  44:	c42201ac 	lwc1	$f2,428(at)
  48:	3c010000 	lui	at,0x0
  4c:	c42801b0 	lwc1	$f8,432(at)
  50:	c60a0008 	lwc1	$f10,8(s0)
  54:	3c010000 	lui	at,0x0
  58:	3c040000 	lui	a0,0x0
  5c:	460a4001 	sub.s	$f0,$f8,$f10
  60:	46000005 	abs.s	$f0,$f0
  64:	4600103c 	c.lt.s	$f2,$f0
  68:	00000000 	nop
  6c:	45010012 	bc1t	b8 <BgMoriRakkatenjo_Init+0xb8>
  70:	00000000 	nop
  74:	c43001b4 	lwc1	$f16,436(at)
  78:	c612000c 	lwc1	$f18,12(s0)
  7c:	3c010000 	lui	at,0x0
  80:	46128001 	sub.s	$f0,$f16,$f18
  84:	46000005 	abs.s	$f0,$f0
  88:	4600103c 	c.lt.s	$f2,$f0
  8c:	00000000 	nop
  90:	45010009 	bc1t	b8 <BgMoriRakkatenjo_Init+0xb8>
  94:	00000000 	nop
  98:	c42401b8 	lwc1	$f4,440(at)
  9c:	c6060010 	lwc1	$f6,16(s0)
  a0:	46062001 	sub.s	$f0,$f4,$f6
  a4:	46000005 	abs.s	$f0,$f0
  a8:	4600103c 	c.lt.s	$f2,$f0
  ac:	00000000 	nop
  b0:	45020004 	bc1fl	c4 <BgMoriRakkatenjo_Init+0xc4>
  b4:	860e0016 	lh	t6,22(s0)
  b8:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
  bc:	24840028 	addiu	a0,a0,40
  c0:	860e0016 	lh	t6,22(s0)
  c4:	34018000 	li	at,0x8000
  c8:	3c040000 	lui	a0,0x0
  cc:	51c10004 	beql	t6,at,e0 <BgMoriRakkatenjo_Init+0xe0>
  d0:	8fa40034 	lw	a0,52(sp)
  d4:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
  d8:	24840070 	addiu	a0,a0,112
  dc:	8fa40034 	lw	a0,52(sp)
  e0:	3c010001 	lui	at,0x1
  e4:	342117a4 	ori	at,at,0x17a4
  e8:	24050073 	li	a1,115
  ec:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
  f0:	00812021 	addu	a0,a0,at
  f4:	a2020174 	sb	v0,372(s0)
  f8:	820f0174 	lb	t7,372(s0)
  fc:	240600cd 	li	a2,205
 100:	02002025 	move	a0,s0
 104:	05e1000a 	bgez	t7,130 <BgMoriRakkatenjo_Init+0x130>
 108:	3c050000 	lui	a1,0x0
 10c:	3c040000 	lui	a0,0x0
 110:	3c050000 	lui	a1,0x0
 114:	24a500f0 	addiu	a1,a1,240
 118:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 11c:	248400bc 	addiu	a0,a0,188
 120:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 124:	02002025 	move	a0,s0
 128:	10000012 	b	174 <BgMoriRakkatenjo_Init+0x174>
 12c:	8fbf001c 	lw	ra,28(sp)
 130:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 134:	24a50024 	addiu	a1,a1,36
 138:	3c040000 	lui	a0,0x0
 13c:	24840000 	addiu	a0,a0,0
 140:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 144:	27a50024 	addiu	a1,sp,36
 148:	8fa40034 	lw	a0,52(sp)
 14c:	02003025 	move	a2,s0
 150:	8fa70024 	lw	a3,36(sp)
 154:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 158:	24850810 	addiu	a1,a0,2064
 15c:	ae02014c 	sw	v0,332(s0)
 160:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 164:	02002025 	move	a0,s0
 168:	3c010000 	lui	at,0x0
 16c:	a4200000 	sh	zero,0(at)
 170:	8fbf001c 	lw	ra,28(sp)
 174:	8fb00018 	lw	s0,24(sp)
 178:	27bd0030 	addiu	sp,sp,48
 17c:	03e00008 	jr	ra
 180:	00000000 	nop

00000184 <BgMoriRakkatenjo_Destroy>:
 184:	27bdffe8 	addiu	sp,sp,-24
 188:	afa40018 	sw	a0,24(sp)
 18c:	8fae0018 	lw	t6,24(sp)
 190:	afbf0014 	sw	ra,20(sp)
 194:	00a02025 	move	a0,a1
 198:	24a50810 	addiu	a1,a1,2064
 19c:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 1a0:	8dc6014c 	lw	a2,332(t6)
 1a4:	8fbf0014 	lw	ra,20(sp)
 1a8:	27bd0018 	addiu	sp,sp,24
 1ac:	03e00008 	jr	ra
 1b0:	00000000 	nop

000001b4 <BgMoriRakkatenjo_IsLinkUnder>:
 1b4:	afa40000 	sw	a0,0(sp)
 1b8:	8ca31c44 	lw	v1,7236(a1)
 1bc:	3c010000 	lui	at,0x0
 1c0:	c42401bc 	lwc1	$f4,444(at)
 1c4:	c460002c 	lwc1	$f0,44(v1)
 1c8:	3c01c4e6 	lui	at,0xc4e6
 1cc:	00001025 	move	v0,zero
 1d0:	4600203c 	c.lt.s	$f4,$f0
 1d4:	24630024 	addiu	v1,v1,36
 1d8:	45000002 	bc1f	1e4 <BgMoriRakkatenjo_IsLinkUnder+0x30>
 1dc:	00000000 	nop
 1e0:	24020001 	li	v0,1
 1e4:	1040001d 	beqz	v0,25c <BgMoriRakkatenjo_IsLinkUnder+0xa8>
 1e8:	00000000 	nop
 1ec:	44813000 	mtc1	at,$f6
 1f0:	3c010000 	lui	at,0x0
 1f4:	00001025 	move	v0,zero
 1f8:	4606003c 	c.lt.s	$f0,$f6
 1fc:	00000000 	nop
 200:	45000002 	bc1f	20c <BgMoriRakkatenjo_IsLinkUnder+0x58>
 204:	00000000 	nop
 208:	24020001 	li	v0,1
 20c:	10400013 	beqz	v0,25c <BgMoriRakkatenjo_IsLinkUnder+0xa8>
 210:	00000000 	nop
 214:	c4600000 	lwc1	$f0,0(v1)
 218:	c42801c0 	lwc1	$f8,448(at)
 21c:	3c010000 	lui	at,0x0
 220:	00001025 	move	v0,zero
 224:	4600403c 	c.lt.s	$f8,$f0
 228:	00000000 	nop
 22c:	45000002 	bc1f	238 <BgMoriRakkatenjo_IsLinkUnder+0x84>
 230:	00000000 	nop
 234:	24020001 	li	v0,1
 238:	10400008 	beqz	v0,25c <BgMoriRakkatenjo_IsLinkUnder+0xa8>
 23c:	00000000 	nop
 240:	c42a01c4 	lwc1	$f10,452(at)
 244:	00001025 	move	v0,zero
 248:	460a003c 	c.lt.s	$f0,$f10
 24c:	00000000 	nop
 250:	45000002 	bc1f	25c <BgMoriRakkatenjo_IsLinkUnder+0xa8>
 254:	00000000 	nop
 258:	24020001 	li	v0,1
 25c:	03e00008 	jr	ra
 260:	00000000 	nop

00000264 <BgMoriRakkatenjo_IsLinkClose>:
 264:	afa40000 	sw	a0,0(sp)
 268:	8ca31c44 	lw	v1,7236(a1)
 26c:	3c01c552 	lui	at,0xc552
 270:	44812000 	mtc1	at,$f4
 274:	c460002c 	lwc1	$f0,44(v1)
 278:	3c01c4e6 	lui	at,0xc4e6
 27c:	00001025 	move	v0,zero
 280:	4600203c 	c.lt.s	$f4,$f0
 284:	24630024 	addiu	v1,v1,36
 288:	45000002 	bc1f	294 <BgMoriRakkatenjo_IsLinkClose+0x30>
 28c:	00000000 	nop
 290:	24020001 	li	v0,1
 294:	1040001d 	beqz	v0,30c <BgMoriRakkatenjo_IsLinkClose+0xa8>
 298:	00000000 	nop
 29c:	44813000 	mtc1	at,$f6
 2a0:	3c010000 	lui	at,0x0
 2a4:	00001025 	move	v0,zero
 2a8:	4606003c 	c.lt.s	$f0,$f6
 2ac:	00000000 	nop
 2b0:	45000002 	bc1f	2bc <BgMoriRakkatenjo_IsLinkClose+0x58>
 2b4:	00000000 	nop
 2b8:	24020001 	li	v0,1
 2bc:	10400013 	beqz	v0,30c <BgMoriRakkatenjo_IsLinkClose+0xa8>
 2c0:	00000000 	nop
 2c4:	c4600000 	lwc1	$f0,0(v1)
 2c8:	c42801c8 	lwc1	$f8,456(at)
 2cc:	3c010000 	lui	at,0x0
 2d0:	00001025 	move	v0,zero
 2d4:	4600403c 	c.lt.s	$f8,$f0
 2d8:	00000000 	nop
 2dc:	45000002 	bc1f	2e8 <BgMoriRakkatenjo_IsLinkClose+0x84>
 2e0:	00000000 	nop
 2e4:	24020001 	li	v0,1
 2e8:	10400008 	beqz	v0,30c <BgMoriRakkatenjo_IsLinkClose+0xa8>
 2ec:	00000000 	nop
 2f0:	c42a01cc 	lwc1	$f10,460(at)
 2f4:	00001025 	move	v0,zero
 2f8:	460a003c 	c.lt.s	$f0,$f10
 2fc:	00000000 	nop
 300:	45000002 	bc1f	30c <BgMoriRakkatenjo_IsLinkClose+0xa8>
 304:	00000000 	nop
 308:	24020001 	li	v0,1
 30c:	03e00008 	jr	ra
 310:	00000000 	nop

00000314 <BgMoriRakkatenjo_SetupWaitForMoriTex>:
 314:	3c0e0000 	lui	t6,0x0
 318:	25ce0000 	addiu	t6,t6,0
 31c:	03e00008 	jr	ra
 320:	ac8e0164 	sw	t6,356(a0)

00000324 <BgMoriRakkatenjo_WaitForMoriTex>:
 324:	27bdffe8 	addiu	sp,sp,-24
 328:	afa40018 	sw	a0,24(sp)
 32c:	3c010001 	lui	at,0x1
 330:	8fae0018 	lw	t6,24(sp)
 334:	342117a4 	ori	at,at,0x17a4
 338:	afbf0014 	sw	ra,20(sp)
 33c:	00a12021 	addu	a0,a1,at
 340:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 344:	81c50174 	lb	a1,372(t6)
 348:	50400008 	beqzl	v0,36c <BgMoriRakkatenjo_WaitForMoriTex+0x48>
 34c:	8fbf0014 	lw	ra,20(sp)
 350:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 354:	8fa40018 	lw	a0,24(sp)
 358:	8fb80018 	lw	t8,24(sp)
 35c:	3c0f0000 	lui	t7,0x0
 360:	25ef0000 	addiu	t7,t7,0
 364:	af0f0134 	sw	t7,308(t8)
 368:	8fbf0014 	lw	ra,20(sp)
 36c:	27bd0018 	addiu	sp,sp,24
 370:	03e00008 	jr	ra
 374:	00000000 	nop

00000378 <BgMoriRakkatenjo_SetupWait>:
 378:	8c8e0170 	lw	t6,368(a0)
 37c:	3c190000 	lui	t9,0x0
 380:	3c010000 	lui	at,0x0
 384:	19c00004 	blez	t6,398 <BgMoriRakkatenjo_SetupWait+0x20>
 388:	27390000 	addiu	t9,t9,0
 38c:	240f0064 	li	t7,100
 390:	10000003 	b	3a0 <BgMoriRakkatenjo_SetupWait+0x28>
 394:	ac8f0168 	sw	t7,360(a0)
 398:	24180015 	li	t8,21
 39c:	ac980168 	sw	t8,360(a0)
 3a0:	c42401d0 	lwc1	$f4,464(at)
 3a4:	ac990164 	sw	t9,356(a0)
 3a8:	03e00008 	jr	ra
 3ac:	e4840028 	swc1	$f4,40(a0)

000003b0 <BgMoriRakkatenjo_Wait>:
 3b0:	27bdffe0 	addiu	sp,sp,-32
 3b4:	afbf001c 	sw	ra,28(sp)
 3b8:	afb00018 	sw	s0,24(sp)
 3bc:	8c8e0170 	lw	t6,368(a0)
 3c0:	00808025 	move	s0,a0
 3c4:	15c00013 	bnez	t6,414 <BgMoriRakkatenjo_Wait+0x64>
 3c8:	00000000 	nop
 3cc:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 3d0:	00000000 	nop
 3d4:	54400007 	bnezl	v0,3f4 <BgMoriRakkatenjo_Wait+0x44>
 3d8:	8e020168 	lw	v0,360(s0)
 3dc:	8e0f0168 	lw	t7,360(s0)
 3e0:	24020015 	li	v0,21
 3e4:	29e10014 	slti	at,t7,20
 3e8:	10200008 	beqz	at,40c <BgMoriRakkatenjo_Wait+0x5c>
 3ec:	00000000 	nop
 3f0:	8e020168 	lw	v0,360(s0)
 3f4:	5c400019 	bgtzl	v0,45c <BgMoriRakkatenjo_Wait+0xac>
 3f8:	28410014 	slti	at,v0,20
 3fc:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 400:	02002025 	move	a0,s0
 404:	10000014 	b	458 <BgMoriRakkatenjo_Wait+0xa8>
 408:	8e020168 	lw	v0,360(s0)
 40c:	10000012 	b	458 <BgMoriRakkatenjo_Wait+0xa8>
 410:	ae020168 	sw	v0,360(s0)
 414:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 418:	02002025 	move	a0,s0
 41c:	54400007 	bnezl	v0,43c <BgMoriRakkatenjo_Wait+0x8c>
 420:	8e020168 	lw	v0,360(s0)
 424:	8e190168 	lw	t9,360(s0)
 428:	24020064 	li	v0,100
 42c:	2b210014 	slti	at,t9,20
 430:	50200009 	beqzl	at,458 <BgMoriRakkatenjo_Wait+0xa8>
 434:	ae020168 	sw	v0,360(s0)
 438:	8e020168 	lw	v0,360(s0)
 43c:	5c400007 	bgtzl	v0,45c <BgMoriRakkatenjo_Wait+0xac>
 440:	28410014 	slti	at,v0,20
 444:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 448:	02002025 	move	a0,s0
 44c:	10000002 	b	458 <BgMoriRakkatenjo_Wait+0xa8>
 450:	8e020168 	lw	v0,360(s0)
 454:	ae020168 	sw	v0,360(s0)
 458:	28410014 	slti	at,v0,20
 45c:	50200004 	beqzl	at,470 <BgMoriRakkatenjo_Wait+0xc0>
 460:	8fbf001c 	lw	ra,28(sp)
 464:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 468:	2404205c 	li	a0,8284
 46c:	8fbf001c 	lw	ra,28(sp)
 470:	8fb00018 	lw	s0,24(sp)
 474:	27bd0020 	addiu	sp,sp,32
 478:	03e00008 	jr	ra
 47c:	00000000 	nop

00000480 <BgMoriRakkatenjo_SetupFall>:
 480:	44802000 	mtc1	zero,$f4
 484:	3c0e0000 	lui	t6,0x0
 488:	25ce0000 	addiu	t6,t6,0
 48c:	ac8e0164 	sw	t6,356(a0)
 490:	ac80016c 	sw	zero,364(a0)
 494:	03e00008 	jr	ra
 498:	e4840060 	swc1	$f4,96(a0)

0000049c <BgMoriRakkatenjo_Fall>:
 49c:	27bdffc8 	addiu	sp,sp,-56
 4a0:	afbf0024 	sw	ra,36(sp)
 4a4:	afb00020 	sw	s0,32(sp)
 4a8:	00808025 	move	s0,a0
 4ac:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 4b0:	afa5003c 	sw	a1,60(sp)
 4b4:	c60c0060 	lwc1	$f12,96(s0)
 4b8:	44802000 	mtc1	zero,$f4
 4bc:	3c010000 	lui	at,0x0
 4c0:	4604603c 	c.lt.s	$f12,$f4
 4c4:	00000000 	nop
 4c8:	4502004d 	bc1fl	600 <BgMoriRakkatenjo_Fall+0x164>
 4cc:	8fbf0024 	lw	ra,36(sp)
 4d0:	c42e01d4 	lwc1	$f14,468(at)
 4d4:	c6020028 	lwc1	$f2,40(s0)
 4d8:	460e103e 	c.le.s	$f2,$f14
 4dc:	00000000 	nop
 4e0:	45020047 	bc1fl	600 <BgMoriRakkatenjo_Fall+0x164>
 4e4:	8fbf0024 	lw	ra,36(sp)
 4e8:	8e02016c 	lw	v0,364(s0)
 4ec:	28410004 	slti	at,v0,4
 4f0:	14200005 	bnez	at,508 <BgMoriRakkatenjo_Fall+0x6c>
 4f4:	00000000 	nop
 4f8:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 4fc:	02002025 	move	a0,s0
 500:	1000003f 	b	600 <BgMoriRakkatenjo_Fall+0x164>
 504:	8fbf0024 	lw	ra,36(sp)
 508:	14400011 	bnez	v0,550 <BgMoriRakkatenjo_Fall+0xb4>
 50c:	00000000 	nop
 510:	8e0e0170 	lw	t6,368(s0)
 514:	2404281d 	li	a0,10269
 518:	25cf0001 	addiu	t7,t6,1
 51c:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 520:	ae0f0170 	sw	t7,368(s0)
 524:	c6000094 	lwc1	$f0,148(s0)
 528:	240500ff 	li	a1,255
 52c:	24060014 	li	a2,20
 530:	46000302 	mul.s	$f12,$f0,$f0
 534:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 538:	24070096 	li	a3,150
 53c:	3c010000 	lui	at,0x0
 540:	c42e01d8 	lwc1	$f14,472(at)
 544:	8e02016c 	lw	v0,364(s0)
 548:	c60c0060 	lwc1	$f12,96(s0)
 54c:	c6020028 	lwc1	$f2,40(s0)
 550:	3c030000 	lui	v1,0x0
 554:	24630030 	addiu	v1,v1,48
 558:	0002c080 	sll	t8,v0,0x2
 55c:	460e1181 	sub.s	$f6,$f2,$f14
 560:	0078c821 	addu	t9,v1,t8
 564:	c7280000 	lwc1	$f8,0(t9)
 568:	46006005 	abs.s	$f0,$f12
 56c:	8e08016c 	lw	t0,364(s0)
 570:	46083282 	mul.s	$f10,$f6,$f8
 574:	8fa6003c 	lw	a2,60(sp)
 578:	00084880 	sll	t1,t0,0x2
 57c:	8e0b016c 	lw	t3,364(s0)
 580:	00695021 	addu	t2,v1,t1
 584:	24050003 	li	a1,3
 588:	256c0001 	addiu	t4,t3,1
 58c:	46005403 	div.s	$f16,$f10,$f0
 590:	46107481 	sub.s	$f18,$f14,$f16
 594:	e6120028 	swc1	$f18,40(s0)
 598:	c5440000 	lwc1	$f4,0(t2)
 59c:	ae0c016c 	sw	t4,364(s0)
 5a0:	e6040060 	swc1	$f4,96(s0)
 5a4:	84cd07a0 	lh	t5,1952(a2)
 5a8:	000d7080 	sll	t6,t5,0x2
 5ac:	00ce7821 	addu	t7,a2,t6
 5b0:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 5b4:	8de40790 	lw	a0,1936(t7)
 5b8:	00022400 	sll	a0,v0,0x10
 5bc:	afa2002c 	sw	v0,44(sp)
 5c0:	00042403 	sra	a0,a0,0x10
 5c4:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 5c8:	2405c350 	li	a1,-15536
 5cc:	87b0002e 	lh	s0,46(sp)
 5d0:	24050005 	li	a1,5
 5d4:	00003025 	move	a2,zero
 5d8:	00102400 	sll	a0,s0,0x10
 5dc:	00042403 	sra	a0,a0,0x10
 5e0:	00003825 	move	a3,zero
 5e4:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 5e8:	afa00010 	sw	zero,16(sp)
 5ec:	00102400 	sll	a0,s0,0x10
 5f0:	00042403 	sra	a0,a0,0x10
 5f4:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 5f8:	24050005 	li	a1,5
 5fc:	8fbf0024 	lw	ra,36(sp)
 600:	8fb00020 	lw	s0,32(sp)
 604:	27bd0038 	addiu	sp,sp,56
 608:	03e00008 	jr	ra
 60c:	00000000 	nop

00000610 <BgMoriRakkatenjo_SetupRest>:
 610:	3c0e0000 	lui	t6,0x0
 614:	25ce0000 	addiu	t6,t6,0
 618:	ac8e0164 	sw	t6,356(a0)
 61c:	3c010000 	lui	at,0x0
 620:	c42401dc 	lwc1	$f4,476(at)
 624:	240f0014 	li	t7,20
 628:	ac8f0168 	sw	t7,360(a0)
 62c:	03e00008 	jr	ra
 630:	e4840028 	swc1	$f4,40(a0)

00000634 <BgMoriRakkatenjo_Rest>:
 634:	27bdffe8 	addiu	sp,sp,-24
 638:	afbf0014 	sw	ra,20(sp)
 63c:	afa5001c 	sw	a1,28(sp)
 640:	8c8e0168 	lw	t6,360(a0)
 644:	5dc00004 	bgtzl	t6,658 <BgMoriRakkatenjo_Rest+0x24>
 648:	8fbf0014 	lw	ra,20(sp)
 64c:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 650:	00000000 	nop
 654:	8fbf0014 	lw	ra,20(sp)
 658:	27bd0018 	addiu	sp,sp,24
 65c:	03e00008 	jr	ra
 660:	00000000 	nop

00000664 <BgMoriRakkatenjo_SetupRise>:
 664:	3c0e0000 	lui	t6,0x0
 668:	25ce0000 	addiu	t6,t6,0
 66c:	ac8e0164 	sw	t6,356(a0)
 670:	3c010000 	lui	at,0x0
 674:	c42401e0 	lwc1	$f4,480(at)
 678:	03e00008 	jr	ra
 67c:	e4840060 	swc1	$f4,96(a0)

00000680 <BgMoriRakkatenjo_Rise>:
 680:	27bdffd8 	addiu	sp,sp,-40
 684:	44802000 	mtc1	zero,$f4
 688:	afb00020 	sw	s0,32(sp)
 68c:	00808025 	move	s0,a0
 690:	afbf0024 	sw	ra,36(sp)
 694:	afa5002c 	sw	a1,44(sp)
 698:	3c063d75 	lui	a2,0x3d75
 69c:	3c073dcc 	lui	a3,0x3dcc
 6a0:	34e7cccd 	ori	a3,a3,0xcccd
 6a4:	34c6c28f 	ori	a2,a2,0xc28f
 6a8:	3c0540a0 	lui	a1,0x40a0
 6ac:	24840060 	addiu	a0,a0,96
 6b0:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 6b4:	e7a40010 	swc1	$f4,16(sp)
 6b8:	c6060028 	lwc1	$f6,40(s0)
 6bc:	c6080060 	lwc1	$f8,96(s0)
 6c0:	3c010000 	lui	at,0x0
 6c4:	46083280 	add.s	$f10,$f6,$f8
 6c8:	e60a0028 	swc1	$f10,40(s0)
 6cc:	c43201e4 	lwc1	$f18,484(at)
 6d0:	c6100028 	lwc1	$f16,40(s0)
 6d4:	4610903e 	c.le.s	$f18,$f16
 6d8:	00000000 	nop
 6dc:	45020004 	bc1fl	6f0 <BgMoriRakkatenjo_Rise+0x70>
 6e0:	8fbf0024 	lw	ra,36(sp)
 6e4:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 6e8:	02002025 	move	a0,s0
 6ec:	8fbf0024 	lw	ra,36(sp)
 6f0:	8fb00020 	lw	s0,32(sp)
 6f4:	27bd0028 	addiu	sp,sp,40
 6f8:	03e00008 	jr	ra
 6fc:	00000000 	nop

00000700 <BgMoriRakkatenjo_Update>:
 700:	27bdffd0 	addiu	sp,sp,-48
 704:	afbf002c 	sw	ra,44(sp)
 708:	afb10028 	sw	s1,40(sp)
 70c:	afb00024 	sw	s0,36(sp)
 710:	8c820168 	lw	v0,360(a0)
 714:	00808025 	move	s0,a0
 718:	00a08825 	move	s1,a1
 71c:	18400002 	blez	v0,728 <BgMoriRakkatenjo_Update+0x28>
 720:	244effff 	addiu	t6,v0,-1
 724:	ac8e0168 	sw	t6,360(a0)
 728:	8e190164 	lw	t9,356(s0)
 72c:	02002025 	move	a0,s0
 730:	02202825 	move	a1,s1
 734:	0320f809 	jalr	t9
 738:	00000000 	nop
 73c:	02002025 	move	a0,s0
 740:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 744:	02202825 	move	a1,s1
 748:	10400018 	beqz	v0,7ac <BgMoriRakkatenjo_Update+0xac>
 74c:	3c0f0000 	lui	t7,0x0
 750:	85ef0000 	lh	t7,0(t7)
 754:	3c040000 	lui	a0,0x0
 758:	55e00021 	bnezl	t7,7e0 <BgMoriRakkatenjo_Update+0xe0>
 75c:	8fbf002c 	lw	ra,44(sp)
 760:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 764:	2484010c 	addiu	a0,a0,268
 768:	8e380790 	lw	t8,1936(s1)
 76c:	3c010000 	lui	at,0x0
 770:	24050001 	li	a1,1
 774:	87080142 	lh	t0,322(t8)
 778:	02003025 	move	a2,s0
 77c:	00003825 	move	a3,zero
 780:	a4280000 	sh	t0,0(at)
 784:	8e240790 	lw	a0,1936(s1)
 788:	afa00018 	sw	zero,24(sp)
 78c:	afa00014 	sw	zero,20(sp)
 790:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 794:	afa00010 	sw	zero,16(sp)
 798:	8e240790 	lw	a0,1936(s1)
 79c:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 7a0:	24050027 	li	a1,39
 7a4:	1000000e 	b	7e0 <BgMoriRakkatenjo_Update+0xe0>
 7a8:	8fbf002c 	lw	ra,44(sp)
 7ac:	3c100000 	lui	s0,0x0
 7b0:	26100000 	addiu	s0,s0,0
 7b4:	86090000 	lh	t1,0(s0)
 7b8:	3c040000 	lui	a0,0x0
 7bc:	51200008 	beqzl	t1,7e0 <BgMoriRakkatenjo_Update+0xe0>
 7c0:	8fbf002c 	lw	ra,44(sp)
 7c4:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 7c8:	24840138 	addiu	a0,a0,312
 7cc:	8e240790 	lw	a0,1936(s1)
 7d0:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 7d4:	24050004 	li	a1,4
 7d8:	a6000000 	sh	zero,0(s0)
 7dc:	8fbf002c 	lw	ra,44(sp)
 7e0:	8fb00024 	lw	s0,36(sp)
 7e4:	8fb10028 	lw	s1,40(sp)
 7e8:	03e00008 	jr	ra
 7ec:	27bd0030 	addiu	sp,sp,48

000007f0 <BgMoriRakkatenjo_Draw>:
 7f0:	27bdffb0 	addiu	sp,sp,-80
 7f4:	afb10018 	sw	s1,24(sp)
 7f8:	00a08825 	move	s1,a1
 7fc:	afbf001c 	sw	ra,28(sp)
 800:	afb00014 	sw	s0,20(sp)
 804:	afa40050 	sw	a0,80(sp)
 808:	8ca50000 	lw	a1,0(a1)
 80c:	3c060000 	lui	a2,0x0
 810:	24c60158 	addiu	a2,a2,344
 814:	27a40034 	addiu	a0,sp,52
 818:	240701f1 	li	a3,497
 81c:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 820:	00a08025 	move	s0,a1
 824:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 828:	8e240000 	lw	a0,0(s1)
 82c:	8e0202c0 	lw	v0,704(s0)
 830:	3c0fdb06 	lui	t7,0xdb06
 834:	35ef0020 	ori	t7,t7,0x20
 838:	244e0008 	addiu	t6,v0,8
 83c:	ae0e02c0 	sw	t6,704(s0)
 840:	ac4f0000 	sw	t7,0(v0)
 844:	8fb80050 	lw	t8,80(sp)
 848:	3c0a0001 	lui	t2,0x1
 84c:	3c0cda38 	lui	t4,0xda38
 850:	83190174 	lb	t9,372(t8)
 854:	358c0003 	ori	t4,t4,0x3
 858:	3c050000 	lui	a1,0x0
 85c:	00194100 	sll	t0,t9,0x4
 860:	01194021 	addu	t0,t0,t9
 864:	00084080 	sll	t0,t0,0x2
 868:	02284821 	addu	t1,s1,t0
 86c:	01495021 	addu	t2,t2,t1
 870:	8d4a17b4 	lw	t2,6068(t2)
 874:	24a50174 	addiu	a1,a1,372
 878:	240601f6 	li	a2,502
 87c:	ac4a0004 	sw	t2,4(v0)
 880:	8e0202c0 	lw	v0,704(s0)
 884:	244b0008 	addiu	t3,v0,8
 888:	ae0b02c0 	sw	t3,704(s0)
 88c:	ac4c0000 	sw	t4,0(v0)
 890:	8e240000 	lw	a0,0(s1)
 894:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 898:	afa2002c 	sw	v0,44(sp)
 89c:	8fa3002c 	lw	v1,44(sp)
 8a0:	3c0f0000 	lui	t7,0x0
 8a4:	25ef0000 	addiu	t7,t7,0
 8a8:	ac620004 	sw	v0,4(v1)
 8ac:	8e0202c0 	lw	v0,704(s0)
 8b0:	3c0ede00 	lui	t6,0xde00
 8b4:	3c060000 	lui	a2,0x0
 8b8:	244d0008 	addiu	t5,v0,8
 8bc:	ae0d02c0 	sw	t5,704(s0)
 8c0:	ac4f0004 	sw	t7,4(v0)
 8c4:	ac4e0000 	sw	t6,0(v0)
 8c8:	8e250000 	lw	a1,0(s1)
 8cc:	24c60190 	addiu	a2,a2,400
 8d0:	27a40034 	addiu	a0,sp,52
 8d4:	0c000000 	jal	0 <BgMoriRakkatenjo_Init>
 8d8:	240701fa 	li	a3,506
 8dc:	8fbf001c 	lw	ra,28(sp)
 8e0:	8fb00014 	lw	s0,20(sp)
 8e4:	8fb10018 	lw	s1,24(sp)
 8e8:	03e00008 	jr	ra
 8ec:	27bd0050 	addiu	sp,sp,80
