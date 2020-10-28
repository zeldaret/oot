
build/src/overlays/actors/ovl_En_Ds/z_en_ds.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnDs_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afb00028 	sw	s0,40(sp)
   8:	00808025 	move	s0,a0
   c:	afbf002c 	sw	ra,44(sp)
  10:	afa5003c 	sw	a1,60(sp)
  14:	3c060000 	lui	a2,0x0
  18:	24c60000 	addiu	a2,a2,0
  1c:	24050000 	li	a1,0
  20:	248400b4 	addiu	a0,a0,180
  24:	0c000000 	jal	0 <EnDs_Init>
  28:	3c074210 	lui	a3,0x4210
  2c:	2605014c 	addiu	a1,s0,332
  30:	3c060000 	lui	a2,0x0
  34:	3c070000 	lui	a3,0x0
  38:	260e0190 	addiu	t6,s0,400
  3c:	260f01b4 	addiu	t7,s0,436
  40:	24180006 	li	t8,6
  44:	afb80018 	sw	t8,24(sp)
  48:	afaf0014 	sw	t7,20(sp)
  4c:	afae0010 	sw	t6,16(sp)
  50:	24e70000 	addiu	a3,a3,0
  54:	24c60000 	addiu	a2,a2,0
  58:	afa50030 	sw	a1,48(sp)
  5c:	0c000000 	jal	0 <EnDs_Init>
  60:	8fa4003c 	lw	a0,60(sp)
  64:	3c050000 	lui	a1,0x0
  68:	24a50000 	addiu	a1,a1,0
  6c:	0c000000 	jal	0 <EnDs_Init>
  70:	8fa40030 	lw	a0,48(sp)
  74:	241900ff 	li	t9,255
  78:	3c053c54 	lui	a1,0x3c54
  7c:	a21900ae 	sb	t9,174(s0)
  80:	34a5fdf4 	ori	a1,a1,0xfdf4
  84:	0c000000 	jal	0 <EnDs_Init>
  88:	02002025 	move	a0,s0
  8c:	8e0a0004 	lw	t2,4(s0)
  90:	44802000 	mtc1	zero,$f4
  94:	3c080000 	lui	t0,0x0
  98:	2401fffe 	li	at,-2
  9c:	25080000 	addiu	t0,t0,0
  a0:	24090001 	li	t1,1
  a4:	01415824 	and	t3,t2,at
  a8:	ae0801ec 	sw	t0,492(s0)
  ac:	a209001f 	sb	t1,31(s0)
  b0:	a60001e8 	sh	zero,488(s0)
  b4:	ae0b0004 	sw	t3,4(s0)
  b8:	e60401e4 	swc1	$f4,484(s0)
  bc:	8fbf002c 	lw	ra,44(sp)
  c0:	8fb00028 	lw	s0,40(sp)
  c4:	27bd0038 	addiu	sp,sp,56
  c8:	03e00008 	jr	ra
  cc:	00000000 	nop

000000d0 <EnDs_Destroy>:
  d0:	afa40000 	sw	a0,0(sp)
  d4:	03e00008 	jr	ra
  d8:	afa50004 	sw	a1,4(sp)

000000dc <EnDs_Talk>:
  dc:	27bdffe8 	addiu	sp,sp,-24
  e0:	afbf0014 	sw	ra,20(sp)
  e4:	0c000000 	jal	0 <EnDs_Init>
  e8:	afa40018 	sw	a0,24(sp)
  ec:	10400009 	beqz	v0,114 <EnDs_Talk+0x38>
  f0:	8fa40018 	lw	a0,24(sp)
  f4:	8c8f0004 	lw	t7,4(a0)
  f8:	3c01fffe 	lui	at,0xfffe
  fc:	3c0e0000 	lui	t6,0x0
 100:	3421ffff 	ori	at,at,0xffff
 104:	25ce0000 	addiu	t6,t6,0
 108:	01e1c024 	and	t8,t7,at
 10c:	ac8e01ec 	sw	t6,492(a0)
 110:	ac980004 	sw	t8,4(a0)
 114:	949901e8 	lhu	t9,488(a0)
 118:	37280001 	ori	t0,t9,0x1
 11c:	a48801e8 	sh	t0,488(a0)
 120:	8fbf0014 	lw	ra,20(sp)
 124:	27bd0018 	addiu	sp,sp,24
 128:	03e00008 	jr	ra
 12c:	00000000 	nop

00000130 <EnDs_TalkNoEmptyBottle>:
 130:	27bdffe8 	addiu	sp,sp,-24
 134:	afbf0014 	sw	ra,20(sp)
 138:	afa40018 	sw	a0,24(sp)
 13c:	afa5001c 	sw	a1,28(sp)
 140:	0c000000 	jal	0 <EnDs_Init>
 144:	24a420d8 	addiu	a0,a1,8408
 148:	24010005 	li	at,5
 14c:	5441000c 	bnel	v0,at,180 <EnDs_TalkNoEmptyBottle+0x50>
 150:	8fa20018 	lw	v0,24(sp)
 154:	0c000000 	jal	0 <EnDs_Init>
 158:	8fa4001c 	lw	a0,28(sp)
 15c:	50400008 	beqzl	v0,180 <EnDs_TalkNoEmptyBottle+0x50>
 160:	8fa20018 	lw	v0,24(sp)
 164:	0c000000 	jal	0 <EnDs_Init>
 168:	8fa4001c 	lw	a0,28(sp)
 16c:	8fa20018 	lw	v0,24(sp)
 170:	3c0e0000 	lui	t6,0x0
 174:	25ce0000 	addiu	t6,t6,0
 178:	ac4e01ec 	sw	t6,492(v0)
 17c:	8fa20018 	lw	v0,24(sp)
 180:	944f01e8 	lhu	t7,488(v0)
 184:	35f80001 	ori	t8,t7,0x1
 188:	a45801e8 	sh	t8,488(v0)
 18c:	8fbf0014 	lw	ra,20(sp)
 190:	27bd0018 	addiu	sp,sp,24
 194:	03e00008 	jr	ra
 198:	00000000 	nop

0000019c <EnDs_TalkAfterGiveOddPotion>:
 19c:	27bdffe8 	addiu	sp,sp,-24
 1a0:	afbf0014 	sw	ra,20(sp)
 1a4:	afa5001c 	sw	a1,28(sp)
 1a8:	0c000000 	jal	0 <EnDs_Init>
 1ac:	afa40018 	sw	a0,24(sp)
 1b0:	10400005 	beqz	v0,1c8 <EnDs_TalkAfterGiveOddPotion+0x2c>
 1b4:	8fa40018 	lw	a0,24(sp)
 1b8:	3c0e0000 	lui	t6,0x0
 1bc:	25ce0000 	addiu	t6,t6,0
 1c0:	10000008 	b	1e4 <EnDs_TalkAfterGiveOddPotion+0x48>
 1c4:	ac8e01ec 	sw	t6,492(a0)
 1c8:	8c8f0004 	lw	t7,4(a0)
 1cc:	3c010001 	lui	at,0x1
 1d0:	3c06447a 	lui	a2,0x447a
 1d4:	01e1c025 	or	t8,t7,at
 1d8:	ac980004 	sw	t8,4(a0)
 1dc:	0c000000 	jal	0 <EnDs_Init>
 1e0:	8fa5001c 	lw	a1,28(sp)
 1e4:	8fbf0014 	lw	ra,20(sp)
 1e8:	27bd0018 	addiu	sp,sp,24
 1ec:	03e00008 	jr	ra
 1f0:	00000000 	nop

000001f4 <EnDs_DisplayOddPotionText>:
 1f4:	27bdffe8 	addiu	sp,sp,-24
 1f8:	afbf0014 	sw	ra,20(sp)
 1fc:	0c000000 	jal	0 <EnDs_Init>
 200:	afa40018 	sw	a0,24(sp)
 204:	1040000f 	beqz	v0,244 <EnDs_DisplayOddPotionText+0x50>
 208:	8fa40018 	lw	a0,24(sp)
 20c:	8c980004 	lw	t8,4(a0)
 210:	3c0f0000 	lui	t7,0x0
 214:	2401feff 	li	at,-257
 218:	3c020000 	lui	v0,0x0
 21c:	240e504f 	li	t6,20559
 220:	25ef0000 	addiu	t7,t7,0
 224:	0301c824 	and	t9,t8,at
 228:	24420000 	addiu	v0,v0,0
 22c:	a48e010e 	sh	t6,270(a0)
 230:	ac8f01ec 	sw	t7,492(a0)
 234:	ac990004 	sw	t9,4(a0)
 238:	94480ef6 	lhu	t0,3830(v0)
 23c:	35090001 	ori	t1,t0,0x1
 240:	a4490ef6 	sh	t1,3830(v0)
 244:	8fbf0014 	lw	ra,20(sp)
 248:	27bd0018 	addiu	sp,sp,24
 24c:	03e00008 	jr	ra
 250:	00000000 	nop

00000254 <EnDs_GiveOddPotion>:
 254:	27bdffe0 	addiu	sp,sp,-32
 258:	afbf001c 	sw	ra,28(sp)
 25c:	afa50024 	sw	a1,36(sp)
 260:	0c000000 	jal	0 <EnDs_Init>
 264:	afa40020 	sw	a0,32(sp)
 268:	10400008 	beqz	v0,28c <EnDs_GiveOddPotion+0x38>
 26c:	8fa40020 	lw	a0,32(sp)
 270:	3c0e0000 	lui	t6,0x0
 274:	25ce0000 	addiu	t6,t6,0
 278:	ac800118 	sw	zero,280(a0)
 27c:	ac8e01ec 	sw	t6,492(a0)
 280:	3c010000 	lui	at,0x0
 284:	10000009 	b	2ac <EnDs_GiveOddPotion+0x58>
 288:	a42013d2 	sh	zero,5074(at)
 28c:	3c014248 	lui	at,0x4248
 290:	44812000 	mtc1	at,$f4
 294:	3c07461c 	lui	a3,0x461c
 298:	34e74000 	ori	a3,a3,0x4000
 29c:	8fa50024 	lw	a1,36(sp)
 2a0:	24060020 	li	a2,32
 2a4:	0c000000 	jal	0 <EnDs_Init>
 2a8:	e7a40010 	swc1	$f4,16(sp)
 2ac:	8fbf001c 	lw	ra,28(sp)
 2b0:	27bd0020 	addiu	sp,sp,32
 2b4:	03e00008 	jr	ra
 2b8:	00000000 	nop

000002bc <EnDs_TalkAfterBrewOddPotion>:
 2bc:	27bdffe0 	addiu	sp,sp,-32
 2c0:	afbf001c 	sw	ra,28(sp)
 2c4:	afa40020 	sw	a0,32(sp)
 2c8:	afa50024 	sw	a1,36(sp)
 2cc:	0c000000 	jal	0 <EnDs_Init>
 2d0:	24a420d8 	addiu	a0,a1,8408
 2d4:	24010005 	li	at,5
 2d8:	54410014 	bnel	v0,at,32c <EnDs_TalkAfterBrewOddPotion+0x70>
 2dc:	8fbf001c 	lw	ra,28(sp)
 2e0:	0c000000 	jal	0 <EnDs_Init>
 2e4:	8fa40024 	lw	a0,36(sp)
 2e8:	50400010 	beqzl	v0,32c <EnDs_TalkAfterBrewOddPotion+0x70>
 2ec:	8fbf001c 	lw	ra,28(sp)
 2f0:	0c000000 	jal	0 <EnDs_Init>
 2f4:	8fa40024 	lw	a0,36(sp)
 2f8:	8fa40020 	lw	a0,32(sp)
 2fc:	3c0e0000 	lui	t6,0x0
 300:	3c014248 	lui	at,0x4248
 304:	44812000 	mtc1	at,$f4
 308:	25ce0000 	addiu	t6,t6,0
 30c:	3c07461c 	lui	a3,0x461c
 310:	ac8e01ec 	sw	t6,492(a0)
 314:	8fa50024 	lw	a1,36(sp)
 318:	34e74000 	ori	a3,a3,0x4000
 31c:	24060020 	li	a2,32
 320:	0c000000 	jal	0 <EnDs_Init>
 324:	e7a40010 	swc1	$f4,16(sp)
 328:	8fbf001c 	lw	ra,28(sp)
 32c:	27bd0020 	addiu	sp,sp,32
 330:	03e00008 	jr	ra
 334:	00000000 	nop

00000338 <EnDs_BrewOddPotion3>:
 338:	27bdffd8 	addiu	sp,sp,-40
 33c:	afbf0024 	sw	ra,36(sp)
 340:	afb00020 	sw	s0,32(sp)
 344:	afa5002c 	sw	a1,44(sp)
 348:	948201ea 	lhu	v0,490(a0)
 34c:	3c0f0000 	lui	t7,0x0
 350:	00808025 	move	s0,a0
 354:	18400004 	blez	v0,368 <EnDs_BrewOddPotion3+0x30>
 358:	25ef0000 	addiu	t7,t7,0
 35c:	244effff 	addiu	t6,v0,-1
 360:	10000005 	b	378 <EnDs_BrewOddPotion3+0x40>
 364:	a48e01ea 	sh	t6,490(a0)
 368:	ae0f01ec 	sw	t7,492(s0)
 36c:	8fa4002c 	lw	a0,44(sp)
 370:	0c000000 	jal	0 <EnDs_Init>
 374:	2405504d 	li	a1,20557
 378:	3c063cf5 	lui	a2,0x3cf5
 37c:	34c6c28f 	ori	a2,a2,0xc28f
 380:	260401e4 	addiu	a0,s0,484
 384:	0c000000 	jal	0 <EnDs_Init>
 388:	24050000 	li	a1,0
 38c:	3c014000 	lui	at,0x4000
 390:	44812000 	mtc1	at,$f4
 394:	c60001e4 	lwc1	$f0,484(s0)
 398:	3c013f80 	lui	at,0x3f80
 39c:	44815000 	mtc1	at,$f10
 3a0:	46002181 	sub.s	$f6,$f4,$f0
 3a4:	3c073dcc 	lui	a3,0x3dcc
 3a8:	34e7cccd 	ori	a3,a3,0xcccd
 3ac:	8fa4002c 	lw	a0,44(sp)
 3b0:	46060202 	mul.s	$f8,$f0,$f6
 3b4:	24060000 	li	a2,0
 3b8:	e7aa0010 	swc1	$f10,16(sp)
 3bc:	44054000 	mfc1	a1,$f8
 3c0:	0c000000 	jal	0 <EnDs_Init>
 3c4:	00000000 	nop
 3c8:	8fbf0024 	lw	ra,36(sp)
 3cc:	8fb00020 	lw	s0,32(sp)
 3d0:	27bd0028 	addiu	sp,sp,40
 3d4:	03e00008 	jr	ra
 3d8:	00000000 	nop

000003dc <EnDs_BrewOddPotion2>:
 3dc:	27bdffe8 	addiu	sp,sp,-24
 3e0:	afbf0014 	sw	ra,20(sp)
 3e4:	948201ea 	lhu	v0,490(a0)
 3e8:	00803025 	move	a2,a0
 3ec:	00a03825 	move	a3,a1
 3f0:	18400004 	blez	v0,404 <EnDs_BrewOddPotion2+0x28>
 3f4:	3c0f0000 	lui	t7,0x0
 3f8:	244effff 	addiu	t6,v0,-1
 3fc:	10000008 	b	420 <EnDs_BrewOddPotion2+0x44>
 400:	a48e01ea 	sh	t6,490(a0)
 404:	25ef0000 	addiu	t7,t7,0
 408:	2418003c 	li	t8,60
 40c:	accf01ec 	sw	t7,492(a2)
 410:	a4d801ea 	sh	t8,490(a2)
 414:	00e02025 	move	a0,a3
 418:	0c000000 	jal	0 <EnDs_Init>
 41c:	2405003f 	li	a1,63
 420:	8fbf0014 	lw	ra,20(sp)
 424:	27bd0018 	addiu	sp,sp,24
 428:	03e00008 	jr	ra
 42c:	00000000 	nop

00000430 <EnDs_BrewOddPotion1>:
 430:	27bdffd8 	addiu	sp,sp,-40
 434:	afbf0024 	sw	ra,36(sp)
 438:	afb00020 	sw	s0,32(sp)
 43c:	afa5002c 	sw	a1,44(sp)
 440:	948201ea 	lhu	v0,490(a0)
 444:	00808025 	move	s0,a0
 448:	3c053f80 	lui	a1,0x3f80
 44c:	18400004 	blez	v0,460 <EnDs_BrewOddPotion1+0x30>
 450:	3c063c23 	lui	a2,0x3c23
 454:	244effff 	addiu	t6,v0,-1
 458:	10000006 	b	474 <EnDs_BrewOddPotion1+0x44>
 45c:	a48e01ea 	sh	t6,490(a0)
 460:	3c0f0000 	lui	t7,0x0
 464:	25ef0000 	addiu	t7,t7,0
 468:	24180014 	li	t8,20
 46c:	ae0f01ec 	sw	t7,492(s0)
 470:	a61801ea 	sh	t8,490(s0)
 474:	260401e4 	addiu	a0,s0,484
 478:	0c000000 	jal	0 <EnDs_Init>
 47c:	34c6d70a 	ori	a2,a2,0xd70a
 480:	3c014000 	lui	at,0x4000
 484:	44812000 	mtc1	at,$f4
 488:	c60001e4 	lwc1	$f0,484(s0)
 48c:	3c013f80 	lui	at,0x3f80
 490:	44815000 	mtc1	at,$f10
 494:	46002181 	sub.s	$f6,$f4,$f0
 498:	3c073dcc 	lui	a3,0x3dcc
 49c:	34e7cccd 	ori	a3,a3,0xcccd
 4a0:	8fa4002c 	lw	a0,44(sp)
 4a4:	46060202 	mul.s	$f8,$f0,$f6
 4a8:	24060000 	li	a2,0
 4ac:	e7aa0010 	swc1	$f10,16(sp)
 4b0:	44054000 	mfc1	a1,$f8
 4b4:	0c000000 	jal	0 <EnDs_Init>
 4b8:	00000000 	nop
 4bc:	8fbf0024 	lw	ra,36(sp)
 4c0:	8fb00020 	lw	s0,32(sp)
 4c4:	27bd0028 	addiu	sp,sp,40
 4c8:	03e00008 	jr	ra
 4cc:	00000000 	nop

000004d0 <EnDs_OfferOddPotion>:
 4d0:	27bdffd8 	addiu	sp,sp,-40
 4d4:	afbf001c 	sw	ra,28(sp)
 4d8:	afb00018 	sw	s0,24(sp)
 4dc:	afa40028 	sw	a0,40(sp)
 4e0:	8cae1c44 	lw	t6,7236(a1)
 4e4:	00a08025 	move	s0,a1
 4e8:	24a420d8 	addiu	a0,a1,8408
 4ec:	0c000000 	jal	0 <EnDs_Init>
 4f0:	afae0024 	sw	t6,36(sp)
 4f4:	24010004 	li	at,4
 4f8:	54410024 	bnel	v0,at,58c <EnDs_OfferOddPotion+0xbc>
 4fc:	8fbf001c 	lw	ra,28(sp)
 500:	0c000000 	jal	0 <EnDs_Init>
 504:	02002025 	move	a0,s0
 508:	1040001f 	beqz	v0,588 <EnDs_OfferOddPotion+0xb8>
 50c:	3c020001 	lui	v0,0x1
 510:	00501021 	addu	v0,v0,s0
 514:	904204bd 	lbu	v0,1213(v0)
 518:	3c0f0000 	lui	t7,0x0
 51c:	25ef0000 	addiu	t7,t7,0
 520:	10400006 	beqz	v0,53c <EnDs_OfferOddPotion+0x6c>
 524:	2418003c 	li	t8,60
 528:	24010001 	li	at,1
 52c:	10410010 	beq	v0,at,570 <EnDs_OfferOddPotion+0xa0>
 530:	02002025 	move	a0,s0
 534:	10000015 	b	58c <EnDs_OfferOddPotion+0xbc>
 538:	8fbf001c 	lw	ra,28(sp)
 53c:	8fa20028 	lw	v0,40(sp)
 540:	02002025 	move	a0,s0
 544:	2405003f 	li	a1,63
 548:	ac4f01ec 	sw	t7,492(v0)
 54c:	0c000000 	jal	0 <EnDs_Init>
 550:	a45801ea 	sh	t8,490(v0)
 554:	3c010001 	lui	at,0x1
 558:	00300821 	addu	at,at,s0
 55c:	24190037 	li	t9,55
 560:	a03903dc 	sb	t9,988(at)
 564:	8fa80024 	lw	t0,36(sp)
 568:	10000007 	b	588 <EnDs_OfferOddPotion+0xb8>
 56c:	a1000693 	sb	zero,1683(t0)
 570:	0c000000 	jal	0 <EnDs_Init>
 574:	2405504c 	li	a1,20556
 578:	8faa0028 	lw	t2,40(sp)
 57c:	3c090000 	lui	t1,0x0
 580:	25290000 	addiu	t1,t1,0
 584:	ad4901ec 	sw	t1,492(t2)
 588:	8fbf001c 	lw	ra,28(sp)
 58c:	8fb00018 	lw	s0,24(sp)
 590:	27bd0028 	addiu	sp,sp,40
 594:	03e00008 	jr	ra
 598:	00000000 	nop

0000059c <EnDs_CheckRupeesAndBottle>:
 59c:	3c0e0000 	lui	t6,0x0
 5a0:	85ce0034 	lh	t6,52(t6)
 5a4:	27bdffe8 	addiu	sp,sp,-24
 5a8:	afbf0014 	sw	ra,20(sp)
 5ac:	29c10064 	slti	at,t6,100
 5b0:	10200003 	beqz	at,5c0 <EnDs_CheckRupeesAndBottle+0x24>
 5b4:	00000000 	nop
 5b8:	10000008 	b	5dc <EnDs_CheckRupeesAndBottle+0x40>
 5bc:	00001025 	move	v0,zero
 5c0:	0c000000 	jal	0 <EnDs_Init>
 5c4:	00000000 	nop
 5c8:	54400004 	bnezl	v0,5dc <EnDs_CheckRupeesAndBottle+0x40>
 5cc:	24020002 	li	v0,2
 5d0:	10000002 	b	5dc <EnDs_CheckRupeesAndBottle+0x40>
 5d4:	24020001 	li	v0,1
 5d8:	24020002 	li	v0,2
 5dc:	8fbf0014 	lw	ra,20(sp)
 5e0:	27bd0018 	addiu	sp,sp,24
 5e4:	03e00008 	jr	ra
 5e8:	00000000 	nop

000005ec <EnDs_GiveBluePotion>:
 5ec:	27bdffe0 	addiu	sp,sp,-32
 5f0:	afbf001c 	sw	ra,28(sp)
 5f4:	afa50024 	sw	a1,36(sp)
 5f8:	0c000000 	jal	0 <EnDs_Init>
 5fc:	afa40020 	sw	a0,32(sp)
 600:	10400006 	beqz	v0,61c <EnDs_GiveBluePotion+0x30>
 604:	8fa40020 	lw	a0,32(sp)
 608:	3c0e0000 	lui	t6,0x0
 60c:	25ce0000 	addiu	t6,t6,0
 610:	ac800118 	sw	zero,280(a0)
 614:	10000009 	b	63c <EnDs_GiveBluePotion+0x50>
 618:	ac8e01ec 	sw	t6,492(a0)
 61c:	3c014248 	lui	at,0x4248
 620:	44812000 	mtc1	at,$f4
 624:	3c07461c 	lui	a3,0x461c
 628:	34e74000 	ori	a3,a3,0x4000
 62c:	8fa50024 	lw	a1,36(sp)
 630:	24060012 	li	a2,18
 634:	0c000000 	jal	0 <EnDs_Init>
 638:	e7a40010 	swc1	$f4,16(sp)
 63c:	8fbf001c 	lw	ra,28(sp)
 640:	27bd0020 	addiu	sp,sp,32
 644:	03e00008 	jr	ra
 648:	00000000 	nop

0000064c <EnDs_OfferBluePotion>:
 64c:	27bdffd8 	addiu	sp,sp,-40
 650:	afbf0024 	sw	ra,36(sp)
 654:	afb00020 	sw	s0,32(sp)
 658:	afa40028 	sw	a0,40(sp)
 65c:	00a08025 	move	s0,a1
 660:	0c000000 	jal	0 <EnDs_Init>
 664:	24a420d8 	addiu	a0,a1,8408
 668:	24010004 	li	at,4
 66c:	54410041 	bnel	v0,at,774 <EnDs_OfferBluePotion+0x128>
 670:	8fbf0024 	lw	ra,36(sp)
 674:	0c000000 	jal	0 <EnDs_Init>
 678:	02002025 	move	a0,s0
 67c:	1040003c 	beqz	v0,770 <EnDs_OfferBluePotion+0x124>
 680:	3c020001 	lui	v0,0x1
 684:	00501021 	addu	v0,v0,s0
 688:	904204bd 	lbu	v0,1213(v0)
 68c:	24010001 	li	at,1
 690:	10400005 	beqz	v0,6a8 <EnDs_OfferBluePotion+0x5c>
 694:	00000000 	nop
 698:	1041002f 	beq	v0,at,758 <EnDs_OfferBluePotion+0x10c>
 69c:	02002025 	move	a0,s0
 6a0:	10000030 	b	764 <EnDs_OfferBluePotion+0x118>
 6a4:	8fab0028 	lw	t3,40(sp)
 6a8:	0c000000 	jal	0 <EnDs_Init>
 6ac:	00000000 	nop
 6b0:	10400009 	beqz	v0,6d8 <EnDs_OfferBluePotion+0x8c>
 6b4:	02002025 	move	a0,s0
 6b8:	24010001 	li	at,1
 6bc:	1041000a 	beq	v0,at,6e8 <EnDs_OfferBluePotion+0x9c>
 6c0:	02002025 	move	a0,s0
 6c4:	24010002 	li	at,2
 6c8:	1041000e 	beq	v0,at,704 <EnDs_OfferBluePotion+0xb8>
 6cc:	00000000 	nop
 6d0:	10000024 	b	764 <EnDs_OfferBluePotion+0x118>
 6d4:	8fab0028 	lw	t3,40(sp)
 6d8:	0c000000 	jal	0 <EnDs_Init>
 6dc:	2405500e 	li	a1,20494
 6e0:	10000020 	b	764 <EnDs_OfferBluePotion+0x118>
 6e4:	8fab0028 	lw	t3,40(sp)
 6e8:	0c000000 	jal	0 <EnDs_Init>
 6ec:	24050096 	li	a1,150
 6f0:	8faf0028 	lw	t7,40(sp)
 6f4:	3c0e0000 	lui	t6,0x0
 6f8:	25ce0000 	addiu	t6,t6,0
 6fc:	1000001c 	b	770 <EnDs_OfferBluePotion+0x124>
 700:	adee01ec 	sw	t6,492(t7)
 704:	0c000000 	jal	0 <EnDs_Init>
 708:	2404ff9c 	li	a0,-100
 70c:	8fa40028 	lw	a0,40(sp)
 710:	3c01fffe 	lui	at,0xfffe
 714:	3421ffff 	ori	at,at,0xffff
 718:	8c980004 	lw	t8,4(a0)
 71c:	3c07461c 	lui	a3,0x461c
 720:	34e74000 	ori	a3,a3,0x4000
 724:	0301c824 	and	t9,t8,at
 728:	3c014248 	lui	at,0x4248
 72c:	44812000 	mtc1	at,$f4
 730:	ac990004 	sw	t9,4(a0)
 734:	02002825 	move	a1,s0
 738:	24060012 	li	a2,18
 73c:	0c000000 	jal	0 <EnDs_Init>
 740:	e7a40010 	swc1	$f4,16(sp)
 744:	8fa90028 	lw	t1,40(sp)
 748:	3c080000 	lui	t0,0x0
 74c:	25080000 	addiu	t0,t0,0
 750:	10000007 	b	770 <EnDs_OfferBluePotion+0x124>
 754:	ad2801ec 	sw	t0,492(t1)
 758:	0c000000 	jal	0 <EnDs_Init>
 75c:	2405500d 	li	a1,20493
 760:	8fab0028 	lw	t3,40(sp)
 764:	3c0a0000 	lui	t2,0x0
 768:	254a0000 	addiu	t2,t2,0
 76c:	ad6a01ec 	sw	t2,492(t3)
 770:	8fbf0024 	lw	ra,36(sp)
 774:	8fb00020 	lw	s0,32(sp)
 778:	27bd0028 	addiu	sp,sp,40
 77c:	03e00008 	jr	ra
 780:	00000000 	nop

00000784 <EnDs_Wait>:
 784:	27bdffd0 	addiu	sp,sp,-48
 788:	afbf0024 	sw	ra,36(sp)
 78c:	afb00020 	sw	s0,32(sp)
 790:	8ca31c44 	lw	v1,7236(a1)
 794:	00808025 	move	s0,a0
 798:	afa50034 	sw	a1,52(sp)
 79c:	0c000000 	jal	0 <EnDs_Init>
 7a0:	afa3002c 	sw	v1,44(sp)
 7a4:	8fa3002c 	lw	v1,44(sp)
 7a8:	10400035 	beqz	v0,880 <EnDs_Wait+0xfc>
 7ac:	8fa50034 	lw	a1,52(sp)
 7b0:	00a02025 	move	a0,a1
 7b4:	0c000000 	jal	0 <EnDs_Init>
 7b8:	afa3002c 	sw	v1,44(sp)
 7bc:	24010008 	li	at,8
 7c0:	14410014 	bne	v0,at,814 <EnDs_Wait+0x90>
 7c4:	8fa3002c 	lw	v1,44(sp)
 7c8:	3c070000 	lui	a3,0x0
 7cc:	3c0e0000 	lui	t6,0x0
 7d0:	24e70000 	addiu	a3,a3,0
 7d4:	25ce0000 	addiu	t6,t6,0
 7d8:	3c050000 	lui	a1,0x0
 7dc:	24a50000 	addiu	a1,a1,0
 7e0:	afae0014 	sw	t6,20(sp)
 7e4:	afa70010 	sw	a3,16(sp)
 7e8:	24044807 	li	a0,18439
 7ec:	24060004 	li	a2,4
 7f0:	0c000000 	jal	0 <EnDs_Init>
 7f4:	afa3002c 	sw	v1,44(sp)
 7f8:	8fa3002c 	lw	v1,44(sp)
 7fc:	240f504a 	li	t7,20554
 800:	3c180000 	lui	t8,0x0
 804:	27180000 	addiu	t8,t8,0
 808:	a46f010e 	sh	t7,270(v1)
 80c:	10000037 	b	8ec <EnDs_Wait+0x168>
 810:	ae1801ec 	sw	t8,492(s0)
 814:	3c020000 	lui	v0,0x0
 818:	24420000 	addiu	v0,v0,0
 81c:	94590ef6 	lhu	t9,3830(v0)
 820:	3c180000 	lui	t8,0x0
 824:	3c0b0000 	lui	t3,0x0
 828:	33280001 	andi	t0,t9,0x1
 82c:	11000007 	beqz	t0,84c <EnDs_Wait+0xc8>
 830:	27180000 	addiu	t8,t8,0
 834:	2409500c 	li	t1,20492
 838:	3c0a0000 	lui	t2,0x0
 83c:	a469010e 	sh	t1,270(v1)
 840:	254a0000 	addiu	t2,t2,0
 844:	10000029 	b	8ec <EnDs_Wait+0x168>
 848:	ae0a01ec 	sw	t2,492(s0)
 84c:	916b0030 	lbu	t3,48(t3)
 850:	24010030 	li	at,48
 854:	240e5049 	li	t6,20553
 858:	004b6021 	addu	t4,v0,t3
 85c:	918d0074 	lbu	t5,116(t4)
 860:	240f5048 	li	t7,20552
 864:	55a10004 	bnel	t5,at,878 <EnDs_Wait+0xf4>
 868:	a46f010e 	sh	t7,270(v1)
 86c:	10000002 	b	878 <EnDs_Wait+0xf4>
 870:	a46e010e 	sh	t6,270(v1)
 874:	a46f010e 	sh	t7,270(v1)
 878:	1000001c 	b	8ec <EnDs_Wait+0x168>
 87c:	ae1801ec 	sw	t8,492(s0)
 880:	8619008a 	lh	t9,138(s0)
 884:	860800b6 	lh	t0,182(s0)
 888:	24095048 	li	t1,20552
 88c:	a609010e 	sh	t1,270(s0)
 890:	03281023 	subu	v0,t9,t0
 894:	00021400 	sll	v0,v0,0x10
 898:	00021403 	sra	v0,v0,0x10
 89c:	04400003 	bltz	v0,8ac <EnDs_Wait+0x128>
 8a0:	00021823 	negu	v1,v0
 8a4:	10000001 	b	8ac <EnDs_Wait+0x128>
 8a8:	00401825 	move	v1,v0
 8ac:	28612151 	slti	at,v1,8529
 8b0:	1020000e 	beqz	at,8ec <EnDs_Wait+0x168>
 8b4:	3c014348 	lui	at,0x4348
 8b8:	44813000 	mtc1	at,$f6
 8bc:	c6040090 	lwc1	$f4,144(s0)
 8c0:	02002025 	move	a0,s0
 8c4:	3c0642c8 	lui	a2,0x42c8
 8c8:	4606203c 	c.lt.s	$f4,$f6
 8cc:	00000000 	nop
 8d0:	45020007 	bc1fl	8f0 <EnDs_Wait+0x16c>
 8d4:	8fbf0024 	lw	ra,36(sp)
 8d8:	0c000000 	jal	0 <EnDs_Init>
 8dc:	24070008 	li	a3,8
 8e0:	960a01e8 	lhu	t2,488(s0)
 8e4:	354b0001 	ori	t3,t2,0x1
 8e8:	a60b01e8 	sh	t3,488(s0)
 8ec:	8fbf0024 	lw	ra,36(sp)
 8f0:	8fb00020 	lw	s0,32(sp)
 8f4:	27bd0030 	addiu	sp,sp,48
 8f8:	03e00008 	jr	ra
 8fc:	00000000 	nop

00000900 <EnDs_Update>:
 900:	27bdffd0 	addiu	sp,sp,-48
 904:	afb00028 	sw	s0,40(sp)
 908:	00808025 	move	s0,a0
 90c:	afbf002c 	sw	ra,44(sp)
 910:	afa50034 	sw	a1,52(sp)
 914:	0c000000 	jal	0 <EnDs_Init>
 918:	2484014c 	addiu	a0,a0,332
 91c:	50400005 	beqzl	v0,934 <EnDs_Update+0x34>
 920:	8e1901ec 	lw	t9,492(s0)
 924:	44802000 	mtc1	zero,$f4
 928:	00000000 	nop
 92c:	e6040164 	swc1	$f4,356(s0)
 930:	8e1901ec 	lw	t9,492(s0)
 934:	02002025 	move	a0,s0
 938:	8fa50034 	lw	a1,52(sp)
 93c:	0320f809 	jalr	t9
 940:	00000000 	nop
 944:	960e01e8 	lhu	t6,488(s0)
 948:	260401d8 	addiu	a0,s0,472
 94c:	00002825 	move	a1,zero
 950:	31cf0001 	andi	t7,t6,0x1
 954:	11e0000e 	beqz	t7,990 <EnDs_Update+0x90>
 958:	24060006 	li	a2,6
 95c:	8e080038 	lw	t0,56(s0)
 960:	8fa40034 	lw	a0,52(sp)
 964:	02002825 	move	a1,s0
 968:	afa80010 	sw	t0,16(sp)
 96c:	8e18003c 	lw	t8,60(s0)
 970:	260601d8 	addiu	a2,s0,472
 974:	260701de 	addiu	a3,s0,478
 978:	afb80014 	sw	t8,20(sp)
 97c:	8e080040 	lw	t0,64(s0)
 980:	0c000000 	jal	0 <EnDs_Init>
 984:	afa80018 	sw	t0,24(sp)
 988:	1000001b 	b	9f8 <EnDs_Update+0xf8>
 98c:	8fbf002c 	lw	ra,44(sp)
 990:	24090064 	li	t1,100
 994:	afa90010 	sw	t1,16(sp)
 998:	0c000000 	jal	0 <EnDs_Init>
 99c:	24071838 	li	a3,6200
 9a0:	240a0064 	li	t2,100
 9a4:	afaa0010 	sw	t2,16(sp)
 9a8:	260401da 	addiu	a0,s0,474
 9ac:	00002825 	move	a1,zero
 9b0:	24060006 	li	a2,6
 9b4:	0c000000 	jal	0 <EnDs_Init>
 9b8:	24071838 	li	a3,6200
 9bc:	240b0064 	li	t3,100
 9c0:	afab0010 	sw	t3,16(sp)
 9c4:	260401de 	addiu	a0,s0,478
 9c8:	00002825 	move	a1,zero
 9cc:	24060006 	li	a2,6
 9d0:	0c000000 	jal	0 <EnDs_Init>
 9d4:	24071838 	li	a3,6200
 9d8:	240c0064 	li	t4,100
 9dc:	afac0010 	sw	t4,16(sp)
 9e0:	260401e0 	addiu	a0,s0,480
 9e4:	00002825 	move	a1,zero
 9e8:	24060006 	li	a2,6
 9ec:	0c000000 	jal	0 <EnDs_Init>
 9f0:	24071838 	li	a3,6200
 9f4:	8fbf002c 	lw	ra,44(sp)
 9f8:	8fb00028 	lw	s0,40(sp)
 9fc:	27bd0030 	addiu	sp,sp,48
 a00:	03e00008 	jr	ra
 a04:	00000000 	nop

00000a08 <EnDs_OverrideLimbDraw>:
 a08:	24010005 	li	at,5
 a0c:	afa40000 	sw	a0,0(sp)
 a10:	afa60008 	sw	a2,8(sp)
 a14:	14a1000b 	bne	a1,at,a44 <EnDs_OverrideLimbDraw+0x3c>
 a18:	afa7000c 	sw	a3,12(sp)
 a1c:	8fa20014 	lw	v0,20(sp)
 a20:	8fa30010 	lw	v1,16(sp)
 a24:	844f01da 	lh	t7,474(v0)
 a28:	846e0000 	lh	t6,0(v1)
 a2c:	84790004 	lh	t9,4(v1)
 a30:	01cfc021 	addu	t8,t6,t7
 a34:	a4780000 	sh	t8,0(v1)
 a38:	844801d8 	lh	t0,472(v0)
 a3c:	03284821 	addu	t1,t9,t0
 a40:	a4690004 	sh	t1,4(v1)
 a44:	03e00008 	jr	ra
 a48:	00001025 	move	v0,zero

00000a4c <EnDs_PostLimbDraw>:
 a4c:	27bdffe8 	addiu	sp,sp,-24
 a50:	24010005 	li	at,5
 a54:	afbf0014 	sw	ra,20(sp)
 a58:	afa40018 	sw	a0,24(sp)
 a5c:	afa60020 	sw	a2,32(sp)
 a60:	14a10006 	bne	a1,at,a7c <EnDs_PostLimbDraw+0x30>
 a64:	afa70024 	sw	a3,36(sp)
 a68:	8fa50028 	lw	a1,40(sp)
 a6c:	3c040000 	lui	a0,0x0
 a70:	24840020 	addiu	a0,a0,32
 a74:	0c000000 	jal	0 <EnDs_Init>
 a78:	24a50038 	addiu	a1,a1,56
 a7c:	8fbf0014 	lw	ra,20(sp)
 a80:	27bd0018 	addiu	sp,sp,24
 a84:	03e00008 	jr	ra
 a88:	00000000 	nop

00000a8c <EnDs_Draw>:
 a8c:	27bdffd8 	addiu	sp,sp,-40
 a90:	afbf0024 	sw	ra,36(sp)
 a94:	afa40028 	sw	a0,40(sp)
 a98:	afa5002c 	sw	a1,44(sp)
 a9c:	0c000000 	jal	0 <EnDs_Init>
 aa0:	8ca40000 	lw	a0,0(a1)
 aa4:	8fa20028 	lw	v0,40(sp)
 aa8:	3c0f0000 	lui	t7,0x0
 aac:	3c180000 	lui	t8,0x0
 ab0:	8c450150 	lw	a1,336(v0)
 ab4:	8c46016c 	lw	a2,364(v0)
 ab8:	9047014e 	lbu	a3,334(v0)
 abc:	27180000 	addiu	t8,t8,0
 ac0:	25ef0000 	addiu	t7,t7,0
 ac4:	afaf0010 	sw	t7,16(sp)
 ac8:	afb80014 	sw	t8,20(sp)
 acc:	8fa4002c 	lw	a0,44(sp)
 ad0:	0c000000 	jal	0 <EnDs_Init>
 ad4:	afa20018 	sw	v0,24(sp)
 ad8:	8fbf0024 	lw	ra,36(sp)
 adc:	27bd0028 	addiu	sp,sp,40
 ae0:	03e00008 	jr	ra
 ae4:	00000000 	nop
	...
