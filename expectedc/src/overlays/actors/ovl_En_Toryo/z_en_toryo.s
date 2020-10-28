
build/src/overlays/actors/ovl_En_Toryo/z_en_toryo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnToryo_Init>:
   0:	27bdffb0 	addiu	sp,sp,-80
   4:	afbf002c 	sw	ra,44(sp)
   8:	afb00028 	sw	s0,40(sp)
   c:	afa50054 	sw	a1,84(sp)
  10:	84a200a4 	lh	v0,164(a1)
  14:	2401002a 	li	at,42
  18:	00808025 	move	s0,a0
  1c:	10410026 	beq	v0,at,b8 <EnToryo_Init+0xb8>
  20:	3c030000 	lui	v1,0x0
  24:	24010052 	li	at,82
  28:	10410012 	beq	v0,at,74 <EnToryo_Init+0x74>
  2c:	3c030000 	lui	v1,0x0
  30:	2401005a 	li	at,90
  34:	14410031 	bne	v0,at,fc <EnToryo_Init+0xfc>
  38:	3c030000 	lui	v1,0x0
  3c:	24630000 	addiu	v1,v1,0
  40:	8c6f0004 	lw	t7,4(v1)
  44:	24010011 	li	at,17
  48:	24020011 	li	v0,17
  4c:	11e00003 	beqz	t7,5c <EnToryo_Init+0x5c>
  50:	00000000 	nop
  54:	10000001 	b	5c <EnToryo_Init+0x5c>
  58:	24020005 	li	v0,5
  5c:	54410028 	bnel	v0,at,100 <EnToryo_Init+0x100>
  60:	961801e8 	lhu	t8,488(s0)
  64:	961801e8 	lhu	t8,488(s0)
  68:	37190001 	ori	t9,t8,0x1
  6c:	10000023 	b	fc <EnToryo_Init+0xfc>
  70:	a61901e8 	sh	t9,488(s0)
  74:	24630000 	addiu	v1,v1,0
  78:	8c680004 	lw	t0,4(v1)
  7c:	24010005 	li	at,5
  80:	24020011 	li	v0,17
  84:	11000003 	beqz	t0,94 <EnToryo_Init+0x94>
  88:	00000000 	nop
  8c:	10000001 	b	94 <EnToryo_Init+0x94>
  90:	24020005 	li	v0,5
  94:	5441001a 	bnel	v0,at,100 <EnToryo_Init+0x100>
  98:	961801e8 	lhu	t8,488(s0)
  9c:	8c690010 	lw	t1,16(v1)
  a0:	55200017 	bnezl	t1,100 <EnToryo_Init+0x100>
  a4:	961801e8 	lhu	t8,488(s0)
  a8:	960a01e8 	lhu	t2,488(s0)
  ac:	354b0002 	ori	t3,t2,0x2
  b0:	10000012 	b	fc <EnToryo_Init+0xfc>
  b4:	a60b01e8 	sh	t3,488(s0)
  b8:	24630000 	addiu	v1,v1,0
  bc:	8c6c0004 	lw	t4,4(v1)
  c0:	24010005 	li	at,5
  c4:	24020011 	li	v0,17
  c8:	11800003 	beqz	t4,d8 <EnToryo_Init+0xd8>
  cc:	00000000 	nop
  d0:	10000001 	b	d8 <EnToryo_Init+0xd8>
  d4:	24020005 	li	v0,5
  d8:	54410009 	bnel	v0,at,100 <EnToryo_Init+0x100>
  dc:	961801e8 	lhu	t8,488(s0)
  e0:	8c6d0010 	lw	t5,16(v1)
  e4:	24010001 	li	at,1
  e8:	55a10005 	bnel	t5,at,100 <EnToryo_Init+0x100>
  ec:	961801e8 	lhu	t8,488(s0)
  f0:	960e01e8 	lhu	t6,488(s0)
  f4:	35cf0004 	ori	t7,t6,0x4
  f8:	a60f01e8 	sh	t7,488(s0)
  fc:	961801e8 	lhu	t8,488(s0)
 100:	33190007 	andi	t9,t8,0x7
 104:	17200003 	bnez	t9,114 <EnToryo_Init+0x114>
 108:	00000000 	nop
 10c:	0c000000 	jal	0 <EnToryo_Init>
 110:	02002025 	move	a0,s0
 114:	3c060000 	lui	a2,0x0
 118:	24c60000 	addiu	a2,a2,0
 11c:	260400b4 	addiu	a0,s0,180
 120:	24050000 	li	a1,0
 124:	0c000000 	jal	0 <EnToryo_Init>
 128:	3c074228 	lui	a3,0x4228
 12c:	2605014c 	addiu	a1,s0,332
 130:	3c060600 	lui	a2,0x600
 134:	26080214 	addiu	t0,s0,532
 138:	2609027a 	addiu	t1,s0,634
 13c:	240a0011 	li	t2,17
 140:	afaa0018 	sw	t2,24(sp)
 144:	afa90014 	sw	t1,20(sp)
 148:	afa80010 	sw	t0,16(sp)
 14c:	24c67150 	addiu	a2,a2,29008
 150:	afa50038 	sw	a1,56(sp)
 154:	8fa40054 	lw	a0,84(sp)
 158:	0c000000 	jal	0 <EnToryo_Init>
 15c:	00003825 	move	a3,zero
 160:	26050194 	addiu	a1,s0,404
 164:	afa50034 	sw	a1,52(sp)
 168:	0c000000 	jal	0 <EnToryo_Init>
 16c:	8fa40054 	lw	a0,84(sp)
 170:	3c070000 	lui	a3,0x0
 174:	8fa50034 	lw	a1,52(sp)
 178:	24e70000 	addiu	a3,a3,0
 17c:	8fa40054 	lw	a0,84(sp)
 180:	0c000000 	jal	0 <EnToryo_Init>
 184:	02003025 	move	a2,s0
 188:	3c050000 	lui	a1,0x0
 18c:	3c060000 	lui	a2,0x0
 190:	24c60000 	addiu	a2,a2,0
 194:	24a50000 	addiu	a1,a1,0
 198:	0c000000 	jal	0 <EnToryo_Init>
 19c:	26040098 	addiu	a0,s0,152
 1a0:	44800000 	mtc1	zero,$f0
 1a4:	240b0004 	li	t3,4
 1a8:	afab0014 	sw	t3,20(sp)
 1ac:	44060000 	mfc1	a2,$f0
 1b0:	44070000 	mfc1	a3,$f0
 1b4:	8fa40054 	lw	a0,84(sp)
 1b8:	02002825 	move	a1,s0
 1bc:	0c000000 	jal	0 <EnToryo_Init>
 1c0:	e7a00010 	swc1	$f0,16(sp)
 1c4:	3c030000 	lui	v1,0x0
 1c8:	24630000 	addiu	v1,v1,0
 1cc:	0c000000 	jal	0 <EnToryo_Init>
 1d0:	8c640000 	lw	a0,0(v1)
 1d4:	44822000 	mtc1	v0,$f4
 1d8:	3c030000 	lui	v1,0x0
 1dc:	24630000 	addiu	v1,v1,0
 1e0:	468021a0 	cvt.s.w	$f6,$f4
 1e4:	906c0008 	lbu	t4,8(v1)
 1e8:	c468000c 	lwc1	$f8,12(v1)
 1ec:	8c650000 	lw	a1,0(v1)
 1f0:	8fa40038 	lw	a0,56(sp)
 1f4:	3c063f80 	lui	a2,0x3f80
 1f8:	e7a60010 	swc1	$f6,16(sp)
 1fc:	24070000 	li	a3,0
 200:	afac0014 	sw	t4,20(sp)
 204:	0c000000 	jal	0 <EnToryo_Init>
 208:	e7a80018 	swc1	$f8,24(sp)
 20c:	960d01e8 	lhu	t5,488(s0)
 210:	3c180000 	lui	t8,0x0
 214:	240f0006 	li	t7,6
 218:	27180000 	addiu	t8,t8,0
 21c:	35ae0008 	ori	t6,t5,0x8
 220:	a60e01e8 	sh	t6,488(s0)
 224:	a20f001f 	sb	t7,31(s0)
 228:	ae180190 	sw	t8,400(s0)
 22c:	8fbf002c 	lw	ra,44(sp)
 230:	8fb00028 	lw	s0,40(sp)
 234:	27bd0050 	addiu	sp,sp,80
 238:	03e00008 	jr	ra
 23c:	00000000 	nop

00000240 <EnToryo_Destroy>:
 240:	27bdffe8 	addiu	sp,sp,-24
 244:	00803025 	move	a2,a0
 248:	afbf0014 	sw	ra,20(sp)
 24c:	00a02025 	move	a0,a1
 250:	0c000000 	jal	0 <EnToryo_Init>
 254:	24c50194 	addiu	a1,a2,404
 258:	8fbf0014 	lw	ra,20(sp)
 25c:	27bd0018 	addiu	sp,sp,24
 260:	03e00008 	jr	ra
 264:	00000000 	nop

00000268 <func_80B203D8>:
 268:	27bdffd8 	addiu	sp,sp,-40
 26c:	afbf0014 	sw	ra,20(sp)
 270:	afa40028 	sw	a0,40(sp)
 274:	8cae1c44 	lw	t6,7236(a1)
 278:	24060001 	li	a2,1
 27c:	afa6001c 	sw	a2,28(sp)
 280:	afa5002c 	sw	a1,44(sp)
 284:	24a420d8 	addiu	a0,a1,8408
 288:	0c000000 	jal	0 <EnToryo_Init>
 28c:	afae0020 	sw	t6,32(sp)
 290:	2c410007 	sltiu	at,v0,7
 294:	8fa30028 	lw	v1,40(sp)
 298:	8fa5002c 	lw	a1,44(sp)
 29c:	1020006a 	beqz	at,448 <L80B205B8>
 2a0:	8fa6001c 	lw	a2,28(sp)
 2a4:	00027880 	sll	t7,v0,0x2
 2a8:	3c010000 	lui	at,0x0
 2ac:	002f0821 	addu	at,at,t7
 2b0:	8c2f0000 	lw	t7,0(at)
 2b4:	01e00008 	jr	t7
 2b8:	00000000 	nop

000002bc <L80B2042C>:
 2bc:	00a02025 	move	a0,a1
 2c0:	afa5002c 	sw	a1,44(sp)
 2c4:	0c000000 	jal	0 <EnToryo_Init>
 2c8:	afa6001c 	sw	a2,28(sp)
 2cc:	8fa30028 	lw	v1,40(sp)
 2d0:	8fa5002c 	lw	a1,44(sp)
 2d4:	1040005c 	beqz	v0,448 <L80B205B8>
 2d8:	8fa6001c 	lw	a2,28(sp)
 2dc:	3c180001 	lui	t8,0x1
 2e0:	0305c021 	addu	t8,t8,a1
 2e4:	931804bd 	lbu	t8,1213(t8)
 2e8:	00a02025 	move	a0,a1
 2ec:	240a606f 	li	t2,24687
 2f0:	17000010 	bnez	t8,334 <L80B2042C+0x78>
 2f4:	24060002 	li	a2,2
 2f8:	0c000000 	jal	0 <EnToryo_Init>
 2fc:	afa5002c 	sw	a1,44(sp)
 300:	8fa30028 	lw	v1,40(sp)
 304:	8fa5002c 	lw	a1,44(sp)
 308:	3c010001 	lui	at,0x1
 30c:	ac600118 	sw	zero,280(v1)
 310:	8fb90020 	lw	t9,32(sp)
 314:	24080037 	li	t0,55
 318:	00250821 	addu	at,at,a1
 31c:	a3200693 	sb	zero,1683(t9)
 320:	a02803dc 	sb	t0,988(at)
 324:	2409601b 	li	t1,24603
 328:	24060003 	li	a2,3
 32c:	10000046 	b	448 <L80B205B8>
 330:	a469010e 	sh	t1,270(v1)
 334:	10000044 	b	448 <L80B205B8>
 338:	a46a010e 	sh	t2,270(v1)

0000033c <L80B204AC>:
 33c:	9462010e 	lhu	v0,270(v1)
 340:	2841601c 	slti	at,v0,24604
 344:	14200009 	bnez	at,36c <L80B204AC+0x30>
 348:	244b9f96 	addiu	t3,v0,-24682
 34c:	2d610006 	sltiu	at,t3,6
 350:	10200037 	beqz	at,430 <L80B205A0>
 354:	000b5880 	sll	t3,t3,0x2
 358:	3c010000 	lui	at,0x0
 35c:	002b0821 	addu	at,at,t3
 360:	8c2b0000 	lw	t3,0(at)
 364:	01600008 	jr	t3
 368:	00000000 	nop
 36c:	24015028 	li	at,20520
 370:	10410006 	beq	v0,at,38c <L80B204AC+0x50>
 374:	00a02025 	move	a0,a1
 378:	2401601b 	li	at,24603
 37c:	1041000e 	beq	v0,at,3b8 <L80B204AC+0x7c>
 380:	00a02025 	move	a0,a1
 384:	1000002b 	b	434 <L80B205A0+0x4>
 388:	00a02025 	move	a0,a1
 38c:	0c000000 	jal	0 <EnToryo_Init>
 390:	afa6001c 	sw	a2,28(sp)
 394:	1040002c 	beqz	v0,448 <L80B205B8>
 398:	8fa6001c 	lw	a2,28(sp)
 39c:	3c020000 	lui	v0,0x0
 3a0:	24420000 	addiu	v0,v0,0
 3a4:	944c0f26 	lhu	t4,3878(v0)
 3a8:	00003025 	move	a2,zero
 3ac:	358d0004 	ori	t5,t4,0x4
 3b0:	10000025 	b	448 <L80B205B8>
 3b4:	a44d0f26 	sh	t5,3878(v0)
 3b8:	0c000000 	jal	0 <EnToryo_Init>
 3bc:	afa6001c 	sw	a2,28(sp)
 3c0:	10400021 	beqz	v0,448 <L80B205B8>
 3c4:	8fa6001c 	lw	a2,28(sp)
 3c8:	1000001f 	b	448 <L80B205B8>
 3cc:	24060004 	li	a2,4

000003d0 <L80B20540>:
 3d0:	00a02025 	move	a0,a1
 3d4:	0c000000 	jal	0 <EnToryo_Init>
 3d8:	afa6001c 	sw	a2,28(sp)
 3dc:	1040001a 	beqz	v0,448 <L80B205B8>
 3e0:	8fa6001c 	lw	a2,28(sp)
 3e4:	3c020000 	lui	v0,0x0
 3e8:	24420000 	addiu	v0,v0,0
 3ec:	944e0f26 	lhu	t6,3878(v0)
 3f0:	00003025 	move	a2,zero
 3f4:	35cf0002 	ori	t7,t6,0x2
 3f8:	10000013 	b	448 <L80B205B8>
 3fc:	a44f0f26 	sh	t7,3878(v0)

00000400 <L80B20570>:
 400:	00a02025 	move	a0,a1
 404:	0c000000 	jal	0 <EnToryo_Init>
 408:	afa6001c 	sw	a2,28(sp)
 40c:	1040000e 	beqz	v0,448 <L80B205B8>
 410:	8fa6001c 	lw	a2,28(sp)
 414:	3c020000 	lui	v0,0x0
 418:	24420000 	addiu	v0,v0,0
 41c:	94580f26 	lhu	t8,3878(v0)
 420:	00003025 	move	a2,zero
 424:	37190001 	ori	t9,t8,0x1
 428:	10000007 	b	448 <L80B205B8>
 42c:	a4590f26 	sh	t9,3878(v0)

00000430 <L80B205A0>:
 430:	00a02025 	move	a0,a1
 434:	0c000000 	jal	0 <EnToryo_Init>
 438:	afa6001c 	sw	a2,28(sp)
 43c:	10400002 	beqz	v0,448 <L80B205B8>
 440:	8fa6001c 	lw	a2,28(sp)
 444:	00003025 	move	a2,zero

00000448 <L80B205B8>:
 448:	8fbf0014 	lw	ra,20(sp)
 44c:	27bd0028 	addiu	sp,sp,40
 450:	00c01025 	move	v0,a2
 454:	03e00008 	jr	ra
 458:	00000000 	nop

0000045c <func_80B205CC>:
 45c:	27bdffd8 	addiu	sp,sp,-40
 460:	afbf0014 	sw	ra,20(sp)
 464:	afa40028 	sw	a0,40(sp)
 468:	240e0005 	li	t6,5
 46c:	afa5002c 	sw	a1,44(sp)
 470:	afae001c 	sw	t6,28(sp)
 474:	0c000000 	jal	0 <EnToryo_Init>
 478:	24a420d8 	addiu	a0,a1,8408
 47c:	2c410007 	sltiu	at,v0,7
 480:	1020000b 	beqz	at,4b0 <L80B20620>
 484:	00027880 	sll	t7,v0,0x2
 488:	3c010000 	lui	at,0x0
 48c:	002f0821 	addu	at,at,t7
 490:	8c2f0000 	lw	t7,0(at)
 494:	01e00008 	jr	t7
 498:	00000000 	nop

0000049c <L80B2060C>:
 49c:	0c000000 	jal	0 <EnToryo_Init>
 4a0:	8fa4002c 	lw	a0,44(sp)
 4a4:	50400003 	beqzl	v0,4b4 <L80B20620+0x4>
 4a8:	8fbf0014 	lw	ra,20(sp)
 4ac:	afa0001c 	sw	zero,28(sp)

000004b0 <L80B20620>:
 4b0:	8fbf0014 	lw	ra,20(sp)
 4b4:	8fa2001c 	lw	v0,28(sp)
 4b8:	27bd0028 	addiu	sp,sp,40
 4bc:	03e00008 	jr	ra
 4c0:	00000000 	nop

000004c4 <func_80B20634>:
 4c4:	27bdffe0 	addiu	sp,sp,-32
 4c8:	afbf0014 	sw	ra,20(sp)
 4cc:	afa50024 	sw	a1,36(sp)
 4d0:	8c8201e0 	lw	v0,480(a0)
 4d4:	2401000a 	li	at,10
 4d8:	50400011 	beqzl	v0,520 <func_80B20634+0x5c>
 4dc:	8fbf0014 	lw	ra,20(sp)
 4e0:	1441000d 	bne	v0,at,518 <func_80B20634+0x54>
 4e4:	2403200f 	li	v1,8207
 4e8:	0c000000 	jal	0 <EnToryo_Init>
 4ec:	24044807 	li	a0,18439
 4f0:	3c0e0000 	lui	t6,0x0
 4f4:	95ce0f26 	lhu	t6,3878(t6)
 4f8:	2403606d 	li	v1,24685
 4fc:	31cf0002 	andi	t7,t6,0x2
 500:	11e00003 	beqz	t7,510 <func_80B20634+0x4c>
 504:	00000000 	nop
 508:	10000001 	b	510 <func_80B20634+0x4c>
 50c:	2403606e 	li	v1,24686
 510:	10000002 	b	51c <func_80B20634+0x58>
 514:	afa3001c 	sw	v1,28(sp)
 518:	afa3001c 	sw	v1,28(sp)
 51c:	8fbf0014 	lw	ra,20(sp)
 520:	8fa2001c 	lw	v0,28(sp)
 524:	27bd0020 	addiu	sp,sp,32
 528:	03e00008 	jr	ra
 52c:	00000000 	nop

00000530 <func_80B206A0>:
 530:	27bdffe8 	addiu	sp,sp,-24
 534:	afa40018 	sw	a0,24(sp)
 538:	afbf0014 	sw	ra,20(sp)
 53c:	00a02025 	move	a0,a1
 540:	0c000000 	jal	0 <EnToryo_Init>
 544:	00002825 	move	a1,zero
 548:	14400026 	bnez	v0,5e4 <func_80B206A0+0xb4>
 54c:	00402025 	move	a0,v0
 550:	8fae0018 	lw	t6,24(sp)
 554:	95c201e8 	lhu	v0,488(t6)
 558:	304f0001 	andi	t7,v0,0x1
 55c:	11e00012 	beqz	t7,5a8 <func_80B206A0+0x78>
 560:	304a0002 	andi	t2,v0,0x2
 564:	3c020000 	lui	v0,0x0
 568:	24420000 	addiu	v0,v0,0
 56c:	94580ee6 	lhu	t8,3814(v0)
 570:	2401000f 	li	at,15
 574:	3319000f 	andi	t9,t8,0xf
 578:	57210004 	bnel	t9,at,58c <func_80B206A0+0x5c>
 57c:	94480f26 	lhu	t0,3878(v0)
 580:	10000018 	b	5e4 <func_80B206A0+0xb4>
 584:	2404606c 	li	a0,24684
 588:	94480f26 	lhu	t0,3878(v0)
 58c:	31090001 	andi	t1,t0,0x1
 590:	11200003 	beqz	t1,5a0 <func_80B206A0+0x70>
 594:	00000000 	nop
 598:	10000012 	b	5e4 <func_80B206A0+0xb4>
 59c:	2404606b 	li	a0,24683
 5a0:	10000010 	b	5e4 <func_80B206A0+0xb4>
 5a4:	2404606a 	li	a0,24682
 5a8:	1140000b 	beqz	t2,5d8 <func_80B206A0+0xa8>
 5ac:	304d0004 	andi	t5,v0,0x4
 5b0:	3c020000 	lui	v0,0x0
 5b4:	24420000 	addiu	v0,v0,0
 5b8:	944b0f26 	lhu	t3,3878(v0)
 5bc:	316c0004 	andi	t4,t3,0x4
 5c0:	11800003 	beqz	t4,5d0 <func_80B206A0+0xa0>
 5c4:	00000000 	nop
 5c8:	10000006 	b	5e4 <func_80B206A0+0xb4>
 5cc:	24045029 	li	a0,20521
 5d0:	10000004 	b	5e4 <func_80B206A0+0xb4>
 5d4:	24045028 	li	a0,20520
 5d8:	51a00003 	beqzl	t5,5e8 <func_80B206A0+0xb8>
 5dc:	8fbf0014 	lw	ra,20(sp)
 5e0:	2404506c 	li	a0,20588
 5e4:	8fbf0014 	lw	ra,20(sp)
 5e8:	27bd0018 	addiu	sp,sp,24
 5ec:	00801025 	move	v0,a0
 5f0:	03e00008 	jr	ra
 5f4:	00000000 	nop

000005f8 <func_80B20768>:
 5f8:	27bdffc8 	addiu	sp,sp,-56
 5fc:	afbf0024 	sw	ra,36(sp)
 600:	afb10020 	sw	s1,32(sp)
 604:	afb0001c 	sw	s0,28(sp)
 608:	8cae1c44 	lw	t6,7236(a1)
 60c:	24010003 	li	at,3
 610:	00808025 	move	s0,a0
 614:	afae0034 	sw	t6,52(sp)
 618:	8c8301e4 	lw	v1,484(a0)
 61c:	00a08825 	move	s1,a1
 620:	54610009 	bnel	v1,at,648 <func_80B20768+0x50>
 624:	24010001 	li	at,1
 628:	0c000000 	jal	0 <EnToryo_Init>
 62c:	00000000 	nop
 630:	02202025 	move	a0,s1
 634:	0c000000 	jal	0 <EnToryo_Init>
 638:	9605010e 	lhu	a1,270(s0)
 63c:	24030001 	li	v1,1
 640:	ae0301e4 	sw	v1,484(s0)
 644:	24010001 	li	at,1
 648:	14610005 	bne	v1,at,660 <func_80B20768+0x68>
 64c:	02002025 	move	a0,s0
 650:	0c000000 	jal	0 <EnToryo_Init>
 654:	02202825 	move	a1,s1
 658:	ae0201e4 	sw	v0,484(s0)
 65c:	00401825 	move	v1,v0
 660:	24010005 	li	at,5
 664:	14610005 	bne	v1,at,67c <func_80B20768+0x84>
 668:	02002025 	move	a0,s0
 66c:	0c000000 	jal	0 <EnToryo_Init>
 670:	02202825 	move	a1,s1
 674:	10000046 	b	790 <func_80B20768+0x198>
 678:	ae0201e4 	sw	v0,484(s0)
 67c:	24010002 	li	at,2
 680:	14610005 	bne	v1,at,698 <func_80B20768+0xa0>
 684:	02202025 	move	a0,s1
 688:	0c000000 	jal	0 <EnToryo_Init>
 68c:	9605010e 	lhu	a1,270(s0)
 690:	24030001 	li	v1,1
 694:	ae0301e4 	sw	v1,484(s0)
 698:	24010004 	li	at,4
 69c:	14610012 	bne	v1,at,6e8 <func_80B20768+0xf0>
 6a0:	02002025 	move	a0,s0
 6a4:	0c000000 	jal	0 <EnToryo_Init>
 6a8:	02202825 	move	a1,s1
 6ac:	10400005 	beqz	v0,6c4 <func_80B20768+0xcc>
 6b0:	02002025 	move	a0,s0
 6b4:	24190005 	li	t9,5
 6b8:	ae000118 	sw	zero,280(s0)
 6bc:	10000034 	b	790 <func_80B20768+0x198>
 6c0:	ae1901e4 	sw	t9,484(s0)
 6c4:	3c014120 	lui	at,0x4120
 6c8:	44812000 	mtc1	at,$f4
 6cc:	02202825 	move	a1,s1
 6d0:	24060022 	li	a2,34
 6d4:	3c0742c8 	lui	a3,0x42c8
 6d8:	0c000000 	jal	0 <EnToryo_Init>
 6dc:	e7a40010 	swc1	$f4,16(sp)
 6e0:	1000002c 	b	794 <func_80B20768+0x19c>
 6e4:	8fbf0024 	lw	ra,36(sp)
 6e8:	14600029 	bnez	v1,790 <func_80B20768+0x198>
 6ec:	02002025 	move	a0,s0
 6f0:	0c000000 	jal	0 <EnToryo_Init>
 6f4:	02202825 	move	a1,s1
 6f8:	10400010 	beqz	v0,73c <func_80B20768+0x144>
 6fc:	02202025 	move	a0,s1
 700:	0c000000 	jal	0 <EnToryo_Init>
 704:	02202025 	move	a0,s1
 708:	10400009 	beqz	v0,730 <func_80B20768+0x138>
 70c:	ae0201e0 	sw	v0,480(s0)
 710:	02002025 	move	a0,s0
 714:	0c000000 	jal	0 <EnToryo_Init>
 718:	02202825 	move	a1,s1
 71c:	8fa80034 	lw	t0,52(sp)
 720:	a502010e 	sh	v0,270(t0)
 724:	8fa90034 	lw	t1,52(sp)
 728:	952a010e 	lhu	t2,270(t1)
 72c:	a60a010e 	sh	t2,270(s0)
 730:	240b0001 	li	t3,1
 734:	10000016 	b	790 <func_80B20768+0x198>
 738:	ae0b01e4 	sw	t3,484(s0)
 73c:	02002825 	move	a1,s0
 740:	27a60032 	addiu	a2,sp,50
 744:	0c000000 	jal	0 <EnToryo_Init>
 748:	27a70030 	addiu	a3,sp,48
 74c:	87a20032 	lh	v0,50(sp)
 750:	0440000f 	bltz	v0,790 <func_80B20768+0x198>
 754:	28410141 	slti	at,v0,321
 758:	1020000d 	beqz	at,790 <func_80B20768+0x198>
 75c:	87a20030 	lh	v0,48(sp)
 760:	0440000b 	bltz	v0,790 <func_80B20768+0x198>
 764:	284100f1 	slti	at,v0,241
 768:	10200009 	beqz	at,790 <func_80B20768+0x198>
 76c:	02002025 	move	a0,s0
 770:	0c000000 	jal	0 <EnToryo_Init>
 774:	02202825 	move	a1,s1
 778:	a602010e 	sh	v0,270(s0)
 77c:	02002025 	move	a0,s0
 780:	02202825 	move	a1,s1
 784:	3c0642c8 	lui	a2,0x42c8
 788:	0c000000 	jal	0 <EnToryo_Init>
 78c:	2407000a 	li	a3,10
 790:	8fbf0024 	lw	ra,36(sp)
 794:	8fb0001c 	lw	s0,28(sp)
 798:	8fb10020 	lw	s1,32(sp)
 79c:	03e00008 	jr	ra
 7a0:	27bd0038 	addiu	sp,sp,56

000007a4 <func_80B20914>:
 7a4:	27bdffe8 	addiu	sp,sp,-24
 7a8:	afbf0014 	sw	ra,20(sp)
 7ac:	00803025 	move	a2,a0
 7b0:	afa5001c 	sw	a1,28(sp)
 7b4:	afa60018 	sw	a2,24(sp)
 7b8:	0c000000 	jal	0 <EnToryo_Init>
 7bc:	2484014c 	addiu	a0,a0,332
 7c0:	8fa40018 	lw	a0,24(sp)
 7c4:	0c000000 	jal	0 <EnToryo_Init>
 7c8:	8fa5001c 	lw	a1,28(sp)
 7cc:	8fa60018 	lw	a2,24(sp)
 7d0:	8cce01e4 	lw	t6,484(a2)
 7d4:	51c00006 	beqzl	t6,7f0 <func_80B20914+0x4c>
 7d8:	94d901e8 	lhu	t9,488(a2)
 7dc:	94cf01e8 	lhu	t7,488(a2)
 7e0:	35f80010 	ori	t8,t7,0x10
 7e4:	10000004 	b	7f8 <func_80B20914+0x54>
 7e8:	a4d801e8 	sh	t8,488(a2)
 7ec:	94d901e8 	lhu	t9,488(a2)
 7f0:	3328ffef 	andi	t0,t9,0xffef
 7f4:	a4c801e8 	sh	t0,488(a2)
 7f8:	8fbf0014 	lw	ra,20(sp)
 7fc:	27bd0018 	addiu	sp,sp,24
 800:	03e00008 	jr	ra
 804:	00000000 	nop

00000808 <EnToryo_Update>:
 808:	27bdffc8 	addiu	sp,sp,-56
 80c:	afb00018 	sw	s0,24(sp)
 810:	afbf001c 	sw	ra,28(sp)
 814:	afa5003c 	sw	a1,60(sp)
 818:	8caf1c44 	lw	t7,7236(a1)
 81c:	00808025 	move	s0,a0
 820:	26060194 	addiu	a2,s0,404
 824:	00c02825 	move	a1,a2
 828:	afa60024 	sw	a2,36(sp)
 82c:	0c000000 	jal	0 <EnToryo_Init>
 830:	afaf002c 	sw	t7,44(sp)
 834:	8fa4003c 	lw	a0,60(sp)
 838:	3c010001 	lui	at,0x1
 83c:	34211e60 	ori	at,at,0x1e60
 840:	8fa60024 	lw	a2,36(sp)
 844:	0c000000 	jal	0 <EnToryo_Init>
 848:	00812821 	addu	a1,a0,at
 84c:	8e190190 	lw	t9,400(s0)
 850:	02002025 	move	a0,s0
 854:	8fa5003c 	lw	a1,60(sp)
 858:	0320f809 	jalr	t9
 85c:	00000000 	nop
 860:	960201e8 	lhu	v0,488(s0)
 864:	8fa3002c 	lw	v1,44(sp)
 868:	30580008 	andi	t8,v0,0x8
 86c:	5300002e 	beqzl	t8,928 <EnToryo_Update+0x120>
 870:	8fbf001c 	lw	ra,28(sp)
 874:	c4640038 	lwc1	$f4,56(v1)
 878:	30480010 	andi	t0,v0,0x10
 87c:	02002025 	move	a0,s0
 880:	e6040204 	swc1	$f4,516(s0)
 884:	c466003c 	lwc1	$f6,60(v1)
 888:	260501ec 	addiu	a1,s0,492
 88c:	00003025 	move	a2,zero
 890:	e6060208 	swc1	$f6,520(s0)
 894:	c4680040 	lwc1	$f8,64(v1)
 898:	11000005 	beqz	t0,8b0 <EnToryo_Update+0xa8>
 89c:	e608020c 	swc1	$f8,524(s0)
 8a0:	0c000000 	jal	0 <EnToryo_Init>
 8a4:	24070004 	li	a3,4
 8a8:	1000001f 	b	928 <EnToryo_Update+0x120>
 8ac:	8fbf001c 	lw	ra,28(sp)
 8b0:	8609008a 	lh	t1,138(s0)
 8b4:	860a00b6 	lh	t2,182(s0)
 8b8:	3c010000 	lui	at,0x0
 8bc:	c4300000 	lwc1	$f16,0(at)
 8c0:	012a5823 	subu	t3,t1,t2
 8c4:	448b5000 	mtc1	t3,$f10
 8c8:	3c010000 	lui	at,0x0
 8cc:	02002025 	move	a0,s0
 8d0:	46805020 	cvt.s.w	$f0,$f10
 8d4:	260501ec 	addiu	a1,s0,492
 8d8:	00003025 	move	a2,zero
 8dc:	4610003c 	c.lt.s	$f0,$f16
 8e0:	00000000 	nop
 8e4:	4500000d 	bc1f	91c <EnToryo_Update+0x114>
 8e8:	00000000 	nop
 8ec:	c4320000 	lwc1	$f18,0(at)
 8f0:	24070002 	li	a3,2
 8f4:	4600903c 	c.lt.s	$f18,$f0
 8f8:	00000000 	nop
 8fc:	45000007 	bc1f	91c <EnToryo_Update+0x114>
 900:	00000000 	nop
 904:	02002025 	move	a0,s0
 908:	260501ec 	addiu	a1,s0,492
 90c:	0c000000 	jal	0 <EnToryo_Init>
 910:	00003025 	move	a2,zero
 914:	10000004 	b	928 <EnToryo_Update+0x120>
 918:	8fbf001c 	lw	ra,28(sp)
 91c:	0c000000 	jal	0 <EnToryo_Init>
 920:	24070001 	li	a3,1
 924:	8fbf001c 	lw	ra,28(sp)
 928:	8fb00018 	lw	s0,24(sp)
 92c:	27bd0038 	addiu	sp,sp,56
 930:	03e00008 	jr	ra
 934:	00000000 	nop

00000938 <EnToryo_Draw>:
 938:	27bdffd8 	addiu	sp,sp,-40
 93c:	afbf0024 	sw	ra,36(sp)
 940:	afa40028 	sw	a0,40(sp)
 944:	afa5002c 	sw	a1,44(sp)
 948:	0c000000 	jal	0 <EnToryo_Init>
 94c:	8ca40000 	lw	a0,0(a1)
 950:	8fa20028 	lw	v0,40(sp)
 954:	3c0f0000 	lui	t7,0x0
 958:	3c180000 	lui	t8,0x0
 95c:	8c450150 	lw	a1,336(v0)
 960:	8c46016c 	lw	a2,364(v0)
 964:	9047014e 	lbu	a3,334(v0)
 968:	27180000 	addiu	t8,t8,0
 96c:	25ef0000 	addiu	t7,t7,0
 970:	afaf0010 	sw	t7,16(sp)
 974:	afb80014 	sw	t8,20(sp)
 978:	8fa4002c 	lw	a0,44(sp)
 97c:	0c000000 	jal	0 <EnToryo_Init>
 980:	afa20018 	sw	v0,24(sp)
 984:	8fbf0024 	lw	ra,36(sp)
 988:	27bd0028 	addiu	sp,sp,40
 98c:	03e00008 	jr	ra
 990:	00000000 	nop

00000994 <func_80B20B04>:
 994:	afa40000 	sw	a0,0(sp)
 998:	8fa40014 	lw	a0,20(sp)
 99c:	afa60008 	sw	a2,8(sp)
 9a0:	afa7000c 	sw	a3,12(sp)
 9a4:	948e01e8 	lhu	t6,488(a0)
 9a8:	24010008 	li	at,8
 9ac:	31cf0008 	andi	t7,t6,0x8
 9b0:	11e0001a 	beqz	t7,a1c <func_80B20B04+0x88>
 9b4:	00000000 	nop
 9b8:	10a10006 	beq	a1,at,9d4 <func_80B20B04+0x40>
 9bc:	8fa20010 	lw	v0,16(sp)
 9c0:	2401000f 	li	at,15
 9c4:	10a1000d 	beq	a1,at,9fc <func_80B20B04+0x68>
 9c8:	8fa20010 	lw	v0,16(sp)
 9cc:	03e00008 	jr	ra
 9d0:	00001025 	move	v0,zero
 9d4:	84580000 	lh	t8,0(v0)
 9d8:	849901fc 	lh	t9,508(a0)
 9dc:	84490002 	lh	t1,2(v0)
 9e0:	03194021 	addu	t0,t8,t9
 9e4:	a4480000 	sh	t0,0(v0)
 9e8:	848a01fa 	lh	t2,506(a0)
 9ec:	012a5823 	subu	t3,t1,t2
 9f0:	a44b0002 	sh	t3,2(v0)
 9f4:	03e00008 	jr	ra
 9f8:	00001025 	move	v0,zero
 9fc:	844c0000 	lh	t4,0(v0)
 a00:	848d01f6 	lh	t5,502(a0)
 a04:	844f0004 	lh	t7,4(v0)
 a08:	018d7021 	addu	t6,t4,t5
 a0c:	a44e0000 	sh	t6,0(v0)
 a10:	849801f4 	lh	t8,500(a0)
 a14:	01f8c821 	addu	t9,t7,t8
 a18:	a4590004 	sh	t9,4(v0)
 a1c:	03e00008 	jr	ra
 a20:	00001025 	move	v0,zero

00000a24 <func_80B20B94>:
 a24:	27bdffe8 	addiu	sp,sp,-24
 a28:	2401000f 	li	at,15
 a2c:	afbf0014 	sw	ra,20(sp)
 a30:	afa40018 	sw	a0,24(sp)
 a34:	afa60020 	sw	a2,32(sp)
 a38:	14a10006 	bne	a1,at,a54 <func_80B20B94+0x30>
 a3c:	afa70024 	sw	a3,36(sp)
 a40:	8fa50028 	lw	a1,40(sp)
 a44:	3c040000 	lui	a0,0x0
 a48:	24840000 	addiu	a0,a0,0
 a4c:	0c000000 	jal	0 <EnToryo_Init>
 a50:	24a50038 	addiu	a1,a1,56
 a54:	8fbf0014 	lw	ra,20(sp)
 a58:	27bd0018 	addiu	sp,sp,24
 a5c:	03e00008 	jr	ra
 a60:	00000000 	nop
	...
