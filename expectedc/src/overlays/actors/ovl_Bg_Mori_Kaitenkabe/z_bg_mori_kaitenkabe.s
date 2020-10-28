
build/src/overlays/actors/ovl_Bg_Mori_Kaitenkabe/z_bg_mori_kaitenkabe.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgMoriKaitenkabe_CrossProduct>:
   0:	c4a40004 	lwc1	$f4,4(a1)
   4:	c4c60008 	lwc1	$f6,8(a2)
   8:	c4aa0008 	lwc1	$f10,8(a1)
   c:	c4d00004 	lwc1	$f16,4(a2)
  10:	46062202 	mul.s	$f8,$f4,$f6
  14:	00000000 	nop
  18:	46105482 	mul.s	$f18,$f10,$f16
  1c:	46124101 	sub.s	$f4,$f8,$f18
  20:	e4840000 	swc1	$f4,0(a0)
  24:	c4ca0000 	lwc1	$f10,0(a2)
  28:	c4a60008 	lwc1	$f6,8(a1)
  2c:	c4a80000 	lwc1	$f8,0(a1)
  30:	c4d20008 	lwc1	$f18,8(a2)
  34:	460a3402 	mul.s	$f16,$f6,$f10
  38:	00000000 	nop
  3c:	46124102 	mul.s	$f4,$f8,$f18
  40:	46048181 	sub.s	$f6,$f16,$f4
  44:	e4860004 	swc1	$f6,4(a0)
  48:	c4c80004 	lwc1	$f8,4(a2)
  4c:	c4aa0000 	lwc1	$f10,0(a1)
  50:	c4c40000 	lwc1	$f4,0(a2)
  54:	c4b00004 	lwc1	$f16,4(a1)
  58:	46085482 	mul.s	$f18,$f10,$f8
  5c:	00000000 	nop
  60:	46048182 	mul.s	$f6,$f16,$f4
  64:	46069281 	sub.s	$f10,$f18,$f6
  68:	03e00008 	jr	ra
  6c:	e48a0008 	swc1	$f10,8(a0)

00000070 <BgMoriKaitenkabe_Init>:
  70:	27bdffd0 	addiu	sp,sp,-48
  74:	afb00018 	sw	s0,24(sp)
  78:	00808025 	move	s0,a0
  7c:	afbf001c 	sw	ra,28(sp)
  80:	afa50034 	sw	a1,52(sp)
  84:	afa00024 	sw	zero,36(sp)
  88:	3c040000 	lui	a0,0x0
  8c:	24840000 	addiu	a0,a0,0
  90:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
  94:	8605001c 	lh	a1,28(s0)
  98:	3c050000 	lui	a1,0x0
  9c:	24a50020 	addiu	a1,a1,32
  a0:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
  a4:	02002025 	move	a0,s0
  a8:	02002025 	move	a0,s0
  ac:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
  b0:	00002825 	move	a1,zero
  b4:	3c040000 	lui	a0,0x0
  b8:	24840000 	addiu	a0,a0,0
  bc:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
  c0:	27a50024 	addiu	a1,sp,36
  c4:	8fa40034 	lw	a0,52(sp)
  c8:	02003025 	move	a2,s0
  cc:	8fa70024 	lw	a3,36(sp)
  d0:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
  d4:	24850810 	addiu	a1,a0,2064
  d8:	ae02014c 	sw	v0,332(s0)
  dc:	8fa40034 	lw	a0,52(sp)
  e0:	3c010001 	lui	at,0x1
  e4:	342117a4 	ori	at,at,0x17a4
  e8:	24050073 	li	a1,115
  ec:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
  f0:	00812021 	addu	a0,a0,at
  f4:	a2020184 	sb	v0,388(s0)
  f8:	820e0184 	lb	t6,388(s0)
  fc:	3c0f0000 	lui	t7,0x0
 100:	25ef0000 	addiu	t7,t7,0
 104:	05c3000c 	bgezl	t6,138 <BgMoriKaitenkabe_Init+0xc8>
 108:	ae0f0164 	sw	t7,356(s0)
 10c:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 110:	02002025 	move	a0,s0
 114:	3c040000 	lui	a0,0x0
 118:	3c050000 	lui	a1,0x0
 11c:	24a50060 	addiu	a1,a1,96
 120:	24840040 	addiu	a0,a0,64
 124:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 128:	240600b0 	li	a2,176
 12c:	10000003 	b	13c <BgMoriKaitenkabe_Init+0xcc>
 130:	8fbf001c 	lw	ra,28(sp)
 134:	ae0f0164 	sw	t7,356(s0)
 138:	8fbf001c 	lw	ra,28(sp)
 13c:	8fb00018 	lw	s0,24(sp)
 140:	27bd0030 	addiu	sp,sp,48
 144:	03e00008 	jr	ra
 148:	00000000 	nop

0000014c <BgMoriKaitenkabe_Destroy>:
 14c:	27bdffe8 	addiu	sp,sp,-24
 150:	afa40018 	sw	a0,24(sp)
 154:	8fae0018 	lw	t6,24(sp)
 158:	afbf0014 	sw	ra,20(sp)
 15c:	00a02025 	move	a0,a1
 160:	24a50810 	addiu	a1,a1,2064
 164:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 168:	8dc6014c 	lw	a2,332(t6)
 16c:	8fbf0014 	lw	ra,20(sp)
 170:	27bd0018 	addiu	sp,sp,24
 174:	03e00008 	jr	ra
 178:	00000000 	nop

0000017c <BgMoriKaitenkabe_WaitForMoriTex>:
 17c:	27bdffe8 	addiu	sp,sp,-24
 180:	afa40018 	sw	a0,24(sp)
 184:	3c010001 	lui	at,0x1
 188:	8fae0018 	lw	t6,24(sp)
 18c:	342117a4 	ori	at,at,0x17a4
 190:	afbf0014 	sw	ra,20(sp)
 194:	00a12021 	addu	a0,a1,at
 198:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 19c:	81c50184 	lb	a1,388(t6)
 1a0:	50400008 	beqzl	v0,1c4 <BgMoriKaitenkabe_WaitForMoriTex+0x48>
 1a4:	8fbf0014 	lw	ra,20(sp)
 1a8:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 1ac:	8fa40018 	lw	a0,24(sp)
 1b0:	8fb80018 	lw	t8,24(sp)
 1b4:	3c0f0000 	lui	t7,0x0
 1b8:	25ef0000 	addiu	t7,t7,0
 1bc:	af0f0134 	sw	t7,308(t8)
 1c0:	8fbf0014 	lw	ra,20(sp)
 1c4:	27bd0018 	addiu	sp,sp,24
 1c8:	03e00008 	jr	ra
 1cc:	00000000 	nop

000001d0 <BgMoriKaitenkabe_SetupWait>:
 1d0:	3c0e0000 	lui	t6,0x0
 1d4:	25ce0000 	addiu	t6,t6,0
 1d8:	ac8e0164 	sw	t6,356(a0)
 1dc:	03e00008 	jr	ra
 1e0:	ac800168 	sw	zero,360(a0)

000001e4 <BgMoriKaitenkabe_Wait>:
 1e4:	27bdffb8 	addiu	sp,sp,-72
 1e8:	afbf001c 	sw	ra,28(sp)
 1ec:	afb10018 	sw	s1,24(sp)
 1f0:	afb00014 	sw	s0,20(sp)
 1f4:	3c010000 	lui	at,0x0
 1f8:	c42400d0 	lwc1	$f4,208(at)
 1fc:	c4860150 	lwc1	$f6,336(a0)
 200:	00808025 	move	s0,a0
 204:	8cb11c44 	lw	s1,7236(a1)
 208:	4606203c 	c.lt.s	$f4,$f6
 20c:	00000000 	nop
 210:	45020039 	bc1fl	2f8 <BgMoriKaitenkabe_Wait+0x114>
 214:	ae000168 	sw	zero,360(s0)
 218:	8c8e0168 	lw	t6,360(a0)
 21c:	25cf0001 	addiu	t7,t6,1
 220:	29e1001d 	slti	at,t7,29
 224:	14200034 	bnez	at,2f8 <BgMoriKaitenkabe_Wait+0x114>
 228:	ac8f0168 	sw	t7,360(a0)
 22c:	00a02025 	move	a0,a1
 230:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 234:	afa5004c 	sw	a1,76(sp)
 238:	54400030 	bnezl	v0,2fc <BgMoriKaitenkabe_Wait+0x118>
 23c:	c6000150 	lwc1	$f0,336(s0)
 240:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 244:	02002025 	move	a0,s0
 248:	8fa4004c 	lw	a0,76(sp)
 24c:	02002825 	move	a1,s0
 250:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 254:	24060008 	li	a2,8
 258:	26040178 	addiu	a0,s0,376
 25c:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 260:	26250024 	addiu	a1,s1,36
 264:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 268:	86040158 	lh	a0,344(s0)
 26c:	44804000 	mtc1	zero,$f8
 270:	e7a0003c 	swc1	$f0,60(sp)
 274:	e7a80040 	swc1	$f8,64(sp)
 278:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 27c:	86040158 	lh	a0,344(s0)
 280:	e7a00044 	swc1	$f0,68(sp)
 284:	c6300024 	lwc1	$f16,36(s1)
 288:	c60a0024 	lwc1	$f10,36(s0)
 28c:	44802000 	mtc1	zero,$f4
 290:	27a40024 	addiu	a0,sp,36
 294:	46105481 	sub.s	$f18,$f10,$f16
 298:	e7a40034 	swc1	$f4,52(sp)
 29c:	27a5003c 	addiu	a1,sp,60
 2a0:	27a60030 	addiu	a2,sp,48
 2a4:	e7b20030 	swc1	$f18,48(sp)
 2a8:	c628002c 	lwc1	$f8,44(s1)
 2ac:	c606002c 	lwc1	$f6,44(s0)
 2b0:	46083281 	sub.s	$f10,$f6,$f8
 2b4:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 2b8:	e7aa0038 	swc1	$f10,56(sp)
 2bc:	44808000 	mtc1	zero,$f16
 2c0:	c7b20028 	lwc1	$f18,40(sp)
 2c4:	3c01bf80 	lui	at,0xbf80
 2c8:	4612803c 	c.lt.s	$f16,$f18
 2cc:	00000000 	nop
 2d0:	45020006 	bc1fl	2ec <BgMoriKaitenkabe_Wait+0x108>
 2d4:	44813000 	mtc1	at,$f6
 2d8:	3c013f80 	lui	at,0x3f80
 2dc:	44812000 	mtc1	at,$f4
 2e0:	10000005 	b	2f8 <BgMoriKaitenkabe_Wait+0x114>
 2e4:	e604016c 	swc1	$f4,364(s0)
 2e8:	44813000 	mtc1	at,$f6
 2ec:	10000002 	b	2f8 <BgMoriKaitenkabe_Wait+0x114>
 2f0:	e606016c 	swc1	$f6,364(s0)
 2f4:	ae000168 	sw	zero,360(s0)
 2f8:	c6000150 	lwc1	$f0,336(s0)
 2fc:	3c010000 	lui	at,0x0
 300:	c42800d4 	lwc1	$f8,212(at)
 304:	46000005 	abs.s	$f0,$f0
 308:	4600403c 	c.lt.s	$f8,$f0
 30c:	00000000 	nop
 310:	45020008 	bc1fl	334 <BgMoriKaitenkabe_Wait+0x150>
 314:	8fbf001c 	lw	ra,28(sp)
 318:	44805000 	mtc1	zero,$f10
 31c:	2401ffef 	li	at,-17
 320:	e60a0150 	swc1	$f10,336(s0)
 324:	8e390680 	lw	t9,1664(s1)
 328:	03214024 	and	t0,t9,at
 32c:	ae280680 	sw	t0,1664(s1)
 330:	8fbf001c 	lw	ra,28(sp)
 334:	8fb00014 	lw	s0,20(sp)
 338:	8fb10018 	lw	s1,24(sp)
 33c:	03e00008 	jr	ra
 340:	27bd0048 	addiu	sp,sp,72

00000344 <BgMoriKaitenkabe_SetupRotate>:
 344:	44800000 	mtc1	zero,$f0
 348:	3c0e0000 	lui	t6,0x0
 34c:	25ce0000 	addiu	t6,t6,0
 350:	ac8e0164 	sw	t6,356(a0)
 354:	e4800170 	swc1	$f0,368(a0)
 358:	03e00008 	jr	ra
 35c:	e4800174 	swc1	$f0,372(a0)

00000360 <BgMoriKaitenkabe_Rotate>:
 360:	27bdffd8 	addiu	sp,sp,-40
 364:	afbf001c 	sw	ra,28(sp)
 368:	afb00018 	sw	s0,24(sp)
 36c:	afa5002c 	sw	a1,44(sp)
 370:	8caf1c44 	lw	t7,7236(a1)
 374:	00808025 	move	s0,a0
 378:	3c053f19 	lui	a1,0x3f19
 37c:	3c063ca3 	lui	a2,0x3ca3
 380:	34c6d70a 	ori	a2,a2,0xd70a
 384:	34a5999a 	ori	a1,a1,0x999a
 388:	24840170 	addiu	a0,a0,368
 38c:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 390:	afaf0024 	sw	t7,36(sp)
 394:	3c014234 	lui	at,0x4234
 398:	44813000 	mtc1	at,$f6
 39c:	c604016c 	lwc1	$f4,364(s0)
 3a0:	26040174 	addiu	a0,s0,372
 3a4:	8e060170 	lw	a2,368(s0)
 3a8:	46062202 	mul.s	$f8,$f4,$f6
 3ac:	44054000 	mfc1	a1,$f8
 3b0:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 3b4:	00000000 	nop
 3b8:	1040001b 	beqz	v0,428 <BgMoriKaitenkabe_Rotate+0xc8>
 3bc:	3c010000 	lui	at,0x0
 3c0:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 3c4:	02002025 	move	a0,s0
 3c8:	8fa4002c 	lw	a0,44(sp)
 3cc:	02002825 	move	a1,s0
 3d0:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 3d4:	24060007 	li	a2,7
 3d8:	44805000 	mtc1	zero,$f10
 3dc:	c610016c 	lwc1	$f16,364(s0)
 3e0:	4610503c 	c.lt.s	$f10,$f16
 3e4:	00000000 	nop
 3e8:	45020006 	bc1fl	404 <BgMoriKaitenkabe_Rotate+0xa4>
 3ec:	86080016 	lh	t0,22(s0)
 3f0:	86180016 	lh	t8,22(s0)
 3f4:	27192000 	addiu	t9,t8,8192
 3f8:	10000004 	b	40c <BgMoriKaitenkabe_Rotate+0xac>
 3fc:	a6190016 	sh	t9,22(s0)
 400:	86080016 	lh	t0,22(s0)
 404:	2509e000 	addiu	t1,t0,-8192
 408:	a6090016 	sh	t1,22(s0)
 40c:	86020016 	lh	v0,22(s0)
 410:	24042893 	li	a0,10387
 414:	a60200b6 	sh	v0,182(s0)
 418:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 41c:	a6020032 	sh	v0,50(s0)
 420:	10000012 	b	46c <BgMoriKaitenkabe_Rotate+0x10c>
 424:	c6000150 	lwc1	$f0,336(s0)
 428:	c6120174 	lwc1	$f18,372(s0)
 42c:	c42400d8 	lwc1	$f4,216(at)
 430:	860b0016 	lh	t3,22(s0)
 434:	24042083 	li	a0,8323
 438:	46049182 	mul.s	$f6,$f18,$f4
 43c:	4600320d 	trunc.w.s	$f8,$f6
 440:	44034000 	mfc1	v1,$f8
 444:	00000000 	nop
 448:	00031c00 	sll	v1,v1,0x10
 44c:	00031c03 	sra	v1,v1,0x10
 450:	01631021 	addu	v0,t3,v1
 454:	00021400 	sll	v0,v0,0x10
 458:	00021403 	sra	v0,v0,0x10
 45c:	a60200b6 	sh	v0,182(s0)
 460:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 464:	a6020032 	sh	v0,50(s0)
 468:	c6000150 	lwc1	$f0,336(s0)
 46c:	3c010000 	lui	at,0x0
 470:	c42a00dc 	lwc1	$f10,220(at)
 474:	46000005 	abs.s	$f0,$f0
 478:	4600503c 	c.lt.s	$f10,$f0
 47c:	00000000 	nop
 480:	45020009 	bc1fl	4a8 <BgMoriKaitenkabe_Rotate+0x148>
 484:	8fa20024 	lw	v0,36(sp)
 488:	44808000 	mtc1	zero,$f16
 48c:	8fa20024 	lw	v0,36(sp)
 490:	2401ffef 	li	at,-17
 494:	e6100150 	swc1	$f16,336(s0)
 498:	8c4c0680 	lw	t4,1664(v0)
 49c:	01816824 	and	t5,t4,at
 4a0:	ac4d0680 	sw	t5,1664(v0)
 4a4:	8fa20024 	lw	v0,36(sp)
 4a8:	26050178 	addiu	a1,s0,376
 4ac:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 4b0:	24440024 	addiu	a0,v0,36
 4b4:	8fbf001c 	lw	ra,28(sp)
 4b8:	8fb00018 	lw	s0,24(sp)
 4bc:	27bd0028 	addiu	sp,sp,40
 4c0:	03e00008 	jr	ra
 4c4:	00000000 	nop

000004c8 <BgMoriKaitenkabe_Update>:
 4c8:	27bdffe8 	addiu	sp,sp,-24
 4cc:	afbf0014 	sw	ra,20(sp)
 4d0:	8c990164 	lw	t9,356(a0)
 4d4:	0320f809 	jalr	t9
 4d8:	00000000 	nop
 4dc:	8fbf0014 	lw	ra,20(sp)
 4e0:	27bd0018 	addiu	sp,sp,24
 4e4:	03e00008 	jr	ra
 4e8:	00000000 	nop

000004ec <BgMoriKaitenkabe_Draw>:
 4ec:	27bdffb0 	addiu	sp,sp,-80
 4f0:	afb10018 	sw	s1,24(sp)
 4f4:	00a08825 	move	s1,a1
 4f8:	afbf001c 	sw	ra,28(sp)
 4fc:	afb00014 	sw	s0,20(sp)
 500:	afa40050 	sw	a0,80(sp)
 504:	8ca50000 	lw	a1,0(a1)
 508:	3c060000 	lui	a2,0x0
 50c:	24c6007c 	addiu	a2,a2,124
 510:	27a40034 	addiu	a0,sp,52
 514:	2407015b 	li	a3,347
 518:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 51c:	00a08025 	move	s0,a1
 520:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 524:	8e240000 	lw	a0,0(s1)
 528:	8e0202c0 	lw	v0,704(s0)
 52c:	3c0fdb06 	lui	t7,0xdb06
 530:	35ef0020 	ori	t7,t7,0x20
 534:	244e0008 	addiu	t6,v0,8
 538:	ae0e02c0 	sw	t6,704(s0)
 53c:	ac4f0000 	sw	t7,0(v0)
 540:	8fb80050 	lw	t8,80(sp)
 544:	3c0a0001 	lui	t2,0x1
 548:	3c0cda38 	lui	t4,0xda38
 54c:	83190184 	lb	t9,388(t8)
 550:	358c0003 	ori	t4,t4,0x3
 554:	3c050000 	lui	a1,0x0
 558:	00194100 	sll	t0,t9,0x4
 55c:	01194021 	addu	t0,t0,t9
 560:	00084080 	sll	t0,t0,0x2
 564:	02284821 	addu	t1,s1,t0
 568:	01495021 	addu	t2,t2,t1
 56c:	8d4a17b4 	lw	t2,6068(t2)
 570:	24a50098 	addiu	a1,a1,152
 574:	24060160 	li	a2,352
 578:	ac4a0004 	sw	t2,4(v0)
 57c:	8e0202c0 	lw	v0,704(s0)
 580:	244b0008 	addiu	t3,v0,8
 584:	ae0b02c0 	sw	t3,704(s0)
 588:	ac4c0000 	sw	t4,0(v0)
 58c:	8e240000 	lw	a0,0(s1)
 590:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 594:	afa2002c 	sw	v0,44(sp)
 598:	8fa3002c 	lw	v1,44(sp)
 59c:	3c0f0000 	lui	t7,0x0
 5a0:	25ef0000 	addiu	t7,t7,0
 5a4:	ac620004 	sw	v0,4(v1)
 5a8:	8e0202c0 	lw	v0,704(s0)
 5ac:	3c0ede00 	lui	t6,0xde00
 5b0:	3c060000 	lui	a2,0x0
 5b4:	244d0008 	addiu	t5,v0,8
 5b8:	ae0d02c0 	sw	t5,704(s0)
 5bc:	ac4f0004 	sw	t7,4(v0)
 5c0:	ac4e0000 	sw	t6,0(v0)
 5c4:	8e250000 	lw	a1,0(s1)
 5c8:	24c600b4 	addiu	a2,a2,180
 5cc:	27a40034 	addiu	a0,sp,52
 5d0:	0c000000 	jal	0 <BgMoriKaitenkabe_CrossProduct>
 5d4:	24070164 	li	a3,356
 5d8:	8fbf001c 	lw	ra,28(sp)
 5dc:	8fb00014 	lw	s0,20(sp)
 5e0:	8fb10018 	lw	s1,24(sp)
 5e4:	03e00008 	jr	ra
 5e8:	27bd0050 	addiu	sp,sp,80
 5ec:	00000000 	nop
