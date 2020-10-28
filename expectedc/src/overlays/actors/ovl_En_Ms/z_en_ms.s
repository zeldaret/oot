
build/src/overlays/actors/ovl_En_Ms/z_en_ms.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnMs_SetOfferText>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	00803025 	move	a2,a0
   8:	afbf0014 	sw	ra,20(sp)
   c:	00a02025 	move	a0,a1
  10:	2405001b 	li	a1,27
  14:	0c000000 	jal	0 <EnMs_SetOfferText>
  18:	afa60018 	sw	a2,24(sp)
  1c:	8fa60018 	lw	a2,24(sp)
  20:	304effff 	andi	t6,v0,0xffff
  24:	15c00010 	bnez	t6,68 <EnMs_SetOfferText+0x68>
  28:	a4c2010e 	sh	v0,270(a2)
  2c:	3c0f0000 	lui	t7,0x0
  30:	91ef0011 	lbu	t7,17(t7)
  34:	3c020000 	lui	v0,0x0
  38:	2418406b 	li	t8,16491
  3c:	004f1021 	addu	v0,v0,t7
  40:	8042008c 	lb	v0,140(v0)
  44:	3c080000 	lui	t0,0x0
  48:	2841000a 	slti	at,v0,10
  4c:	14200003 	bnez	at,5c <EnMs_SetOfferText+0x5c>
  50:	0002c840 	sll	t9,v0,0x1
  54:	10000004 	b	68 <EnMs_SetOfferText+0x68>
  58:	a4d8010e 	sh	t8,270(a2)
  5c:	01194021 	addu	t0,t0,t9
  60:	95080060 	lhu	t0,96(t0)
  64:	a4c8010e 	sh	t0,270(a2)
  68:	8fbf0014 	lw	ra,20(sp)
  6c:	27bd0018 	addiu	sp,sp,24
  70:	03e00008 	jr	ra
  74:	00000000 	nop

00000078 <EnMs_Init>:
  78:	3c0e0000 	lui	t6,0x0
  7c:	8dce0004 	lw	t6,4(t6)
  80:	27bdffc0 	addiu	sp,sp,-64
  84:	afb00028 	sw	s0,40(sp)
  88:	00808025 	move	s0,a0
  8c:	afbf002c 	sw	ra,44(sp)
  90:	11c00003 	beqz	t6,a0 <EnMs_Init+0x28>
  94:	afa50044 	sw	a1,68(sp)
  98:	10000002 	b	a4 <EnMs_Init+0x2c>
  9c:	24020005 	li	v0,5
  a0:	24020011 	li	v0,17
  a4:	24010005 	li	at,5
  a8:	10410005 	beq	v0,at,c0 <EnMs_Init+0x48>
  ac:	02002025 	move	a0,s0
  b0:	0c000000 	jal	0 <EnMs_SetOfferText>
  b4:	02002025 	move	a0,s0
  b8:	10000034 	b	18c <EnMs_Init+0x114>
  bc:	8fbf002c 	lw	ra,44(sp)
  c0:	3c050000 	lui	a1,0x0
  c4:	0c000000 	jal	0 <EnMs_SetOfferText>
  c8:	24a50074 	addiu	a1,a1,116
  cc:	3c060000 	lui	a2,0x0
  d0:	3c070000 	lui	a3,0x0
  d4:	260f0190 	addiu	t7,s0,400
  d8:	261801c6 	addiu	t8,s0,454
  dc:	24190009 	li	t9,9
  e0:	afb90018 	sw	t9,24(sp)
  e4:	afb80014 	sw	t8,20(sp)
  e8:	afaf0010 	sw	t7,16(sp)
  ec:	24e70000 	addiu	a3,a3,0
  f0:	24c60000 	addiu	a2,a2,0
  f4:	8fa40044 	lw	a0,68(sp)
  f8:	0c000000 	jal	0 <EnMs_SetOfferText>
  fc:	2605014c 	addiu	a1,s0,332
 100:	26050200 	addiu	a1,s0,512
 104:	afa50030 	sw	a1,48(sp)
 108:	0c000000 	jal	0 <EnMs_SetOfferText>
 10c:	8fa40044 	lw	a0,68(sp)
 110:	3c070000 	lui	a3,0x0
 114:	8fa50030 	lw	a1,48(sp)
 118:	24e70020 	addiu	a3,a3,32
 11c:	8fa40044 	lw	a0,68(sp)
 120:	0c000000 	jal	0 <EnMs_SetOfferText>
 124:	02003025 	move	a2,s0
 128:	3c060000 	lui	a2,0x0
 12c:	24c60000 	addiu	a2,a2,0
 130:	260400b4 	addiu	a0,s0,180
 134:	24050000 	li	a1,0
 138:	0c000000 	jal	0 <EnMs_SetOfferText>
 13c:	3c07420c 	lui	a3,0x420c
 140:	3c053c75 	lui	a1,0x3c75
 144:	34a5c28f 	ori	a1,a1,0xc28f
 148:	0c000000 	jal	0 <EnMs_SetOfferText>
 14c:	02002025 	move	a0,s0
 150:	44800000 	mtc1	zero,$f0
 154:	3c01bf80 	lui	at,0xbf80
 158:	44812000 	mtc1	at,$f4
 15c:	240800ff 	li	t0,255
 160:	a20800ae 	sb	t0,174(s0)
 164:	e6000068 	swc1	$f0,104(s0)
 168:	e6000060 	swc1	$f0,96(s0)
 16c:	e604006c 	swc1	$f4,108(s0)
 170:	8fa50044 	lw	a1,68(sp)
 174:	0c000000 	jal	0 <EnMs_SetOfferText>
 178:	02002025 	move	a0,s0
 17c:	3c090000 	lui	t1,0x0
 180:	25290000 	addiu	t1,t1,0
 184:	ae0901fc 	sw	t1,508(s0)
 188:	8fbf002c 	lw	ra,44(sp)
 18c:	8fb00028 	lw	s0,40(sp)
 190:	27bd0040 	addiu	sp,sp,64
 194:	03e00008 	jr	ra
 198:	00000000 	nop

0000019c <EnMs_Destroy>:
 19c:	27bdffe8 	addiu	sp,sp,-24
 1a0:	00803025 	move	a2,a0
 1a4:	afbf0014 	sw	ra,20(sp)
 1a8:	00a02025 	move	a0,a1
 1ac:	0c000000 	jal	0 <EnMs_SetOfferText>
 1b0:	24c50200 	addiu	a1,a2,512
 1b4:	8fbf0014 	lw	ra,20(sp)
 1b8:	27bd0018 	addiu	sp,sp,24
 1bc:	03e00008 	jr	ra
 1c0:	00000000 	nop

000001c4 <EnMs_Wait>:
 1c4:	27bdffe0 	addiu	sp,sp,-32
 1c8:	afbf0014 	sw	ra,20(sp)
 1cc:	afa50024 	sw	a1,36(sp)
 1d0:	848f00b6 	lh	t7,182(a0)
 1d4:	848e008a 	lh	t6,138(a0)
 1d8:	afa40020 	sw	a0,32(sp)
 1dc:	01cf1823 	subu	v1,t6,t7
 1e0:	00031c00 	sll	v1,v1,0x10
 1e4:	00031c03 	sra	v1,v1,0x10
 1e8:	0c000000 	jal	0 <EnMs_SetOfferText>
 1ec:	a7a3001e 	sh	v1,30(sp)
 1f0:	8fa40020 	lw	a0,32(sp)
 1f4:	0c000000 	jal	0 <EnMs_SetOfferText>
 1f8:	8fa50024 	lw	a1,36(sp)
 1fc:	87a3001e 	lh	v1,30(sp)
 200:	10400005 	beqz	v0,218 <EnMs_Wait+0x54>
 204:	8fa40020 	lw	a0,32(sp)
 208:	3c180000 	lui	t8,0x0
 20c:	27180000 	addiu	t8,t8,0
 210:	10000012 	b	25c <EnMs_Wait+0x98>
 214:	ac9801fc 	sw	t8,508(a0)
 218:	3c0142b4 	lui	at,0x42b4
 21c:	44810000 	mtc1	at,$f0
 220:	c4840090 	lwc1	$f4,144(a0)
 224:	4600203c 	c.lt.s	$f4,$f0
 228:	00000000 	nop
 22c:	4502000c 	bc1fl	260 <EnMs_Wait+0x9c>
 230:	8fbf0014 	lw	ra,20(sp)
 234:	04600003 	bltz	v1,244 <EnMs_Wait+0x80>
 238:	00031023 	negu	v0,v1
 23c:	10000001 	b	244 <EnMs_Wait+0x80>
 240:	00601025 	move	v0,v1
 244:	28412000 	slti	at,v0,8192
 248:	50200005 	beqzl	at,260 <EnMs_Wait+0x9c>
 24c:	8fbf0014 	lw	ra,20(sp)
 250:	44060000 	mfc1	a2,$f0
 254:	0c000000 	jal	0 <EnMs_SetOfferText>
 258:	8fa50024 	lw	a1,36(sp)
 25c:	8fbf0014 	lw	ra,20(sp)
 260:	27bd0020 	addiu	sp,sp,32
 264:	03e00008 	jr	ra
 268:	00000000 	nop

0000026c <EnMs_Talk>:
 26c:	27bdffd8 	addiu	sp,sp,-40
 270:	afbf0024 	sw	ra,36(sp)
 274:	afb00020 	sw	s0,32(sp)
 278:	afa40028 	sw	a0,40(sp)
 27c:	00a08025 	move	s0,a1
 280:	0c000000 	jal	0 <EnMs_SetOfferText>
 284:	24a420d8 	addiu	a0,a1,8408
 288:	24010004 	li	at,4
 28c:	1041000b 	beq	v0,at,2bc <EnMs_Talk+0x50>
 290:	24010006 	li	at,6
 294:	54410038 	bnel	v0,at,378 <EnMs_Talk+0x10c>
 298:	8fbf0024 	lw	ra,36(sp)
 29c:	0c000000 	jal	0 <EnMs_SetOfferText>
 2a0:	02002025 	move	a0,s0
 2a4:	10400033 	beqz	v0,374 <EnMs_Talk+0x108>
 2a8:	3c0e0000 	lui	t6,0x0
 2ac:	8faf0028 	lw	t7,40(sp)
 2b0:	25ce0000 	addiu	t6,t6,0
 2b4:	1000002f 	b	374 <EnMs_Talk+0x108>
 2b8:	adee01fc 	sw	t6,508(t7)
 2bc:	0c000000 	jal	0 <EnMs_SetOfferText>
 2c0:	02002025 	move	a0,s0
 2c4:	1040002b 	beqz	v0,374 <EnMs_Talk+0x108>
 2c8:	3c020001 	lui	v0,0x1
 2cc:	00501021 	addu	v0,v0,s0
 2d0:	904204bd 	lbu	v0,1213(v0)
 2d4:	24010001 	li	at,1
 2d8:	3c190000 	lui	t9,0x0
 2dc:	10400005 	beqz	v0,2f4 <EnMs_Talk+0x88>
 2e0:	00000000 	nop
 2e4:	10410021 	beq	v0,at,36c <EnMs_Talk+0x100>
 2e8:	02002025 	move	a0,s0
 2ec:	10000022 	b	378 <EnMs_Talk+0x10c>
 2f0:	8fbf0024 	lw	ra,36(sp)
 2f4:	93390011 	lbu	t9,17(t9)
 2f8:	3c020000 	lui	v0,0x0
 2fc:	24420000 	addiu	v0,v0,0
 300:	00594021 	addu	t0,v0,t9
 304:	8109008c 	lb	t1,140(t0)
 308:	3c0b0000 	lui	t3,0x0
 30c:	84580034 	lh	t8,52(v0)
 310:	00095040 	sll	t2,t1,0x1
 314:	016a5821 	addu	t3,t3,t2
 318:	856b004c 	lh	t3,76(t3)
 31c:	8fa40028 	lw	a0,40(sp)
 320:	02002825 	move	a1,s0
 324:	030b082a 	slt	at,t8,t3
 328:	10200006 	beqz	at,344 <EnMs_Talk+0xd8>
 32c:	24060016 	li	a2,22
 330:	02002025 	move	a0,s0
 334:	0c000000 	jal	0 <EnMs_SetOfferText>
 338:	24054069 	li	a1,16489
 33c:	1000000e 	b	378 <EnMs_Talk+0x10c>
 340:	8fbf0024 	lw	ra,36(sp)
 344:	3c014120 	lui	at,0x4120
 348:	44812000 	mtc1	at,$f4
 34c:	3c0742b4 	lui	a3,0x42b4
 350:	0c000000 	jal	0 <EnMs_SetOfferText>
 354:	e7a40010 	swc1	$f4,16(sp)
 358:	8fad0028 	lw	t5,40(sp)
 35c:	3c0c0000 	lui	t4,0x0
 360:	258c0000 	addiu	t4,t4,0
 364:	10000003 	b	374 <EnMs_Talk+0x108>
 368:	adac01fc 	sw	t4,508(t5)
 36c:	0c000000 	jal	0 <EnMs_SetOfferText>
 370:	24054068 	li	a1,16488
 374:	8fbf0024 	lw	ra,36(sp)
 378:	8fb00020 	lw	s0,32(sp)
 37c:	27bd0028 	addiu	sp,sp,40
 380:	03e00008 	jr	ra
 384:	00000000 	nop

00000388 <EnMs_Sell>:
 388:	27bdffe0 	addiu	sp,sp,-32
 38c:	afbf001c 	sw	ra,28(sp)
 390:	afa40020 	sw	a0,32(sp)
 394:	0c000000 	jal	0 <EnMs_SetOfferText>
 398:	afa50024 	sw	a1,36(sp)
 39c:	10400014 	beqz	v0,3f0 <EnMs_Sell+0x68>
 3a0:	8fa40020 	lw	a0,32(sp)
 3a4:	3c0e0000 	lui	t6,0x0
 3a8:	91ce0011 	lbu	t6,17(t6)
 3ac:	3c0f0000 	lui	t7,0x0
 3b0:	3c040000 	lui	a0,0x0
 3b4:	01ee7821 	addu	t7,t7,t6
 3b8:	81ef008c 	lb	t7,140(t7)
 3bc:	000fc040 	sll	t8,t7,0x1
 3c0:	00982021 	addu	a0,a0,t8
 3c4:	8484004c 	lh	a0,76(a0)
 3c8:	00042023 	negu	a0,a0
 3cc:	00042400 	sll	a0,a0,0x10
 3d0:	0c000000 	jal	0 <EnMs_SetOfferText>
 3d4:	00042403 	sra	a0,a0,0x10
 3d8:	8fa20020 	lw	v0,32(sp)
 3dc:	3c190000 	lui	t9,0x0
 3e0:	27390000 	addiu	t9,t9,0
 3e4:	ac400118 	sw	zero,280(v0)
 3e8:	10000008 	b	40c <EnMs_Sell+0x84>
 3ec:	ac5901fc 	sw	t9,508(v0)
 3f0:	3c014120 	lui	at,0x4120
 3f4:	44812000 	mtc1	at,$f4
 3f8:	8fa50024 	lw	a1,36(sp)
 3fc:	24060016 	li	a2,22
 400:	3c0742b4 	lui	a3,0x42b4
 404:	0c000000 	jal	0 <EnMs_SetOfferText>
 408:	e7a40010 	swc1	$f4,16(sp)
 40c:	8fbf001c 	lw	ra,28(sp)
 410:	27bd0020 	addiu	sp,sp,32
 414:	03e00008 	jr	ra
 418:	00000000 	nop

0000041c <EnMs_TalkAfterPurchase>:
 41c:	27bdffe8 	addiu	sp,sp,-24
 420:	afbf0014 	sw	ra,20(sp)
 424:	afa40018 	sw	a0,24(sp)
 428:	afa5001c 	sw	a1,28(sp)
 42c:	0c000000 	jal	0 <EnMs_SetOfferText>
 430:	24a420d8 	addiu	a0,a1,8408
 434:	24010006 	li	at,6
 438:	5441000c 	bnel	v0,at,46c <EnMs_TalkAfterPurchase+0x50>
 43c:	8fbf0014 	lw	ra,20(sp)
 440:	0c000000 	jal	0 <EnMs_SetOfferText>
 444:	8fa4001c 	lw	a0,28(sp)
 448:	10400007 	beqz	v0,468 <EnMs_TalkAfterPurchase+0x4c>
 44c:	8fa4001c 	lw	a0,28(sp)
 450:	0c000000 	jal	0 <EnMs_SetOfferText>
 454:	2405406c 	li	a1,16492
 458:	8faf0018 	lw	t7,24(sp)
 45c:	3c0e0000 	lui	t6,0x0
 460:	25ce0000 	addiu	t6,t6,0
 464:	adee01fc 	sw	t6,508(t7)
 468:	8fbf0014 	lw	ra,20(sp)
 46c:	27bd0018 	addiu	sp,sp,24
 470:	03e00008 	jr	ra
 474:	00000000 	nop

00000478 <EnMs_Update>:
 478:	27bdffc8 	addiu	sp,sp,-56
 47c:	afbf0024 	sw	ra,36(sp)
 480:	afb00020 	sw	s0,32(sp)
 484:	afa5003c 	sw	a1,60(sp)
 488:	848e024c 	lh	t6,588(a0)
 48c:	00808025 	move	s0,a0
 490:	3c0541a0 	lui	a1,0x41a0
 494:	25cf0001 	addiu	t7,t6,1
 498:	0c000000 	jal	0 <EnMs_SetOfferText>
 49c:	a48f024c 	sh	t7,588(a0)
 4a0:	3c0143fa 	lui	at,0x43fa
 4a4:	44812000 	mtc1	at,$f4
 4a8:	3c053c75 	lui	a1,0x3c75
 4ac:	34a5c28f 	ori	a1,a1,0xc28f
 4b0:	02002025 	move	a0,s0
 4b4:	0c000000 	jal	0 <EnMs_SetOfferText>
 4b8:	e604004c 	swc1	$f4,76(s0)
 4bc:	0c000000 	jal	0 <EnMs_SetOfferText>
 4c0:	2604014c 	addiu	a0,s0,332
 4c4:	8e1901fc 	lw	t9,508(s0)
 4c8:	02002025 	move	a0,s0
 4cc:	8fa5003c 	lw	a1,60(sp)
 4d0:	0320f809 	jalr	t9
 4d4:	00000000 	nop
 4d8:	3c020000 	lui	v0,0x0
 4dc:	24420000 	addiu	v0,v0,0
 4e0:	8c580000 	lw	t8,0(v0)
 4e4:	24010157 	li	at,343
 4e8:	57010019 	bnel	t8,at,550 <EnMs_Update+0xd8>
 4ec:	26060200 	addiu	a2,s0,512
 4f0:	8c481360 	lw	t0,4960(v0)
 4f4:	24010008 	li	at,8
 4f8:	55010015 	bnel	t0,at,550 <EnMs_Update+0xd8>
 4fc:	26060200 	addiu	a2,s0,512
 500:	0c000000 	jal	0 <EnMs_SetOfferText>
 504:	02002025 	move	a0,s0
 508:	c6060060 	lwc1	$f6,96(s0)
 50c:	3c040000 	lui	a0,0x0
 510:	24840000 	addiu	a0,a0,0
 514:	46003221 	cvt.d.s	$f8,$f6
 518:	44074000 	mfc1	a3,$f8
 51c:	44064800 	mfc1	a2,$f9
 520:	0c000000 	jal	0 <EnMs_SetOfferText>
 524:	00000000 	nop
 528:	44800000 	mtc1	zero,$f0
 52c:	24090004 	li	t1,4
 530:	afa90014 	sw	t1,20(sp)
 534:	44060000 	mfc1	a2,$f0
 538:	44070000 	mfc1	a3,$f0
 53c:	8fa4003c 	lw	a0,60(sp)
 540:	02002825 	move	a1,s0
 544:	0c000000 	jal	0 <EnMs_SetOfferText>
 548:	e7a00010 	swc1	$f0,16(sp)
 54c:	26060200 	addiu	a2,s0,512
 550:	00c02825 	move	a1,a2
 554:	afa6002c 	sw	a2,44(sp)
 558:	0c000000 	jal	0 <EnMs_SetOfferText>
 55c:	02002025 	move	a0,s0
 560:	8fa4003c 	lw	a0,60(sp)
 564:	3c010001 	lui	at,0x1
 568:	34211e60 	ori	at,at,0x1e60
 56c:	8fa6002c 	lw	a2,44(sp)
 570:	0c000000 	jal	0 <EnMs_SetOfferText>
 574:	00812821 	addu	a1,a0,at
 578:	8fbf0024 	lw	ra,36(sp)
 57c:	8fb00020 	lw	s0,32(sp)
 580:	27bd0038 	addiu	sp,sp,56
 584:	03e00008 	jr	ra
 588:	00000000 	nop

0000058c <EnMs_Draw>:
 58c:	27bdffd8 	addiu	sp,sp,-40
 590:	afbf0024 	sw	ra,36(sp)
 594:	afa40028 	sw	a0,40(sp)
 598:	afa5002c 	sw	a1,44(sp)
 59c:	0c000000 	jal	0 <EnMs_SetOfferText>
 5a0:	8ca40000 	lw	a0,0(a1)
 5a4:	8fa20028 	lw	v0,40(sp)
 5a8:	8fa4002c 	lw	a0,44(sp)
 5ac:	8c450150 	lw	a1,336(v0)
 5b0:	8c46016c 	lw	a2,364(v0)
 5b4:	9047014e 	lbu	a3,334(v0)
 5b8:	afa00014 	sw	zero,20(sp)
 5bc:	afa00010 	sw	zero,16(sp)
 5c0:	0c000000 	jal	0 <EnMs_SetOfferText>
 5c4:	afa20018 	sw	v0,24(sp)
 5c8:	8fbf0024 	lw	ra,36(sp)
 5cc:	27bd0028 	addiu	sp,sp,40
 5d0:	03e00008 	jr	ra
 5d4:	00000000 	nop
	...
