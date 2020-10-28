
build/src/code/gfxprint.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <GfxPrint_InitDlist>:
   0:	27bdfff0 	addiu	sp,sp,-16
   4:	afb1000c 	sw	s1,12(sp)
   8:	afb00008 	sw	s0,8(sp)
   c:	8c820004 	lw	v0,4(a0)
  10:	3c06e700 	lui	a2,0xe700
  14:	3c18ef00 	lui	t8,0xef00
  18:	244e0008 	addiu	t6,v0,8
  1c:	ac8e0004 	sw	t6,4(a0)
  20:	ac400004 	sw	zero,4(v0)
  24:	ac460000 	sw	a2,0(v0)
  28:	8c820004 	lw	v0,4(a0)
  2c:	3c190050 	lui	t9,0x50
  30:	37394244 	ori	t9,t9,0x4244
  34:	244f0008 	addiu	t7,v0,8
  38:	ac8f0004 	sw	t7,4(a0)
  3c:	3718ecf0 	ori	t8,t8,0xecf0
  40:	ac580000 	sw	t8,0(v0)
  44:	ac590004 	sw	t9,4(v0)
  48:	8c820004 	lw	v0,4(a0)
  4c:	3c18fffc 	lui	t8,0xfffc
  50:	3c0ffcff 	lui	t7,0xfcff
  54:	244e0008 	addiu	t6,v0,8
  58:	ac8e0004 	sw	t6,4(a0)
  5c:	35efffff 	ori	t7,t7,0xffff
  60:	3718f279 	ori	t8,t8,0xf279
  64:	ac580004 	sw	t8,4(v0)
  68:	ac4f0000 	sw	t7,0(v0)
  6c:	8c820004 	lw	v0,4(a0)
  70:	3c0f0000 	lui	t7,0x0
  74:	25ef0000 	addiu	t7,t7,0
  78:	24590008 	addiu	t9,v0,8
  7c:	ac990004 	sw	t9,4(a0)
  80:	3c0efd50 	lui	t6,0xfd50
  84:	ac4e0000 	sw	t6,0(v0)
  88:	ac4f0004 	sw	t7,4(v0)
  8c:	8c820004 	lw	v0,4(a0)
  90:	3c19f550 	lui	t9,0xf550
  94:	24050001 	li	a1,1
  98:	24580008 	addiu	t8,v0,8
  9c:	ac980004 	sw	t8,4(a0)
  a0:	ac590000 	sw	t9,0(v0)
  a4:	24b907ff 	addiu	t9,a1,2047
  a8:	24090001 	li	t1,1
  ac:	0329001a 	div	zero,t9,t1
  b0:	3c070700 	lui	a3,0x700
  b4:	ac470004 	sw	a3,4(v0)
  b8:	8c820004 	lw	v0,4(a0)
  bc:	3c08e600 	lui	t0,0xe600
  c0:	3c18f300 	lui	t8,0xf300
  c4:	244e0008 	addiu	t6,v0,8
  c8:	ac8e0004 	sw	t6,4(a0)
  cc:	ac400004 	sw	zero,4(v0)
  d0:	ac480000 	sw	t0,0(v0)
  d4:	8c820004 	lw	v0,4(a0)
  d8:	00007012 	mflo	t6
  dc:	3c05f540 	lui	a1,0xf540
  e0:	244f0008 	addiu	t7,v0,8
  e4:	ac8f0004 	sw	t7,4(a0)
  e8:	ac580000 	sw	t8,0(v0)
  ec:	00401825 	move	v1,v0
  f0:	240203ff 	li	v0,1023
  f4:	15200002 	bnez	t1,100 <GfxPrint_InitDlist+0x100>
  f8:	00000000 	nop
  fc:	0007000d 	break	0x7
 100:	2401ffff 	li	at,-1
 104:	15210004 	bne	t1,at,118 <GfxPrint_InitDlist+0x118>
 108:	3c018000 	lui	at,0x8000
 10c:	17210002 	bne	t9,at,118 <GfxPrint_InitDlist+0x118>
 110:	00000000 	nop
 114:	0006000d 	break	0x6
 118:	31cf0fff 	andi	t7,t6,0xfff
 11c:	30590fff 	andi	t9,v0,0xfff
 120:	00197300 	sll	t6,t9,0xc
 124:	01e7c025 	or	t8,t7,a3
 128:	030e7825 	or	t7,t8,t6
 12c:	ac6f0004 	sw	t7,4(v1)
 130:	8c820004 	lw	v0,4(a0)
 134:	34a50200 	ori	a1,a1,0x200
 138:	3c0f0003 	lui	t7,0x3
 13c:	24590008 	addiu	t9,v0,8
 140:	ac990004 	sw	t9,4(a0)
 144:	ac400004 	sw	zero,4(v0)
 148:	ac460000 	sw	a2,0(v0)
 14c:	8c820004 	lw	v0,4(a0)
 150:	35efc3fc 	ori	t7,t7,0xc3fc
 154:	3c03f200 	lui	v1,0xf200
 158:	24580008 	addiu	t8,v0,8
 15c:	ac980004 	sw	t8,4(a0)
 160:	ac400004 	sw	zero,4(v0)
 164:	ac450000 	sw	a1,0(v0)
 168:	8c820004 	lw	v0,4(a0)
 16c:	3c180000 	lui	t8,0x0
 170:	27180000 	addiu	t8,t8,0
 174:	244e0008 	addiu	t6,v0,8
 178:	ac8e0004 	sw	t6,4(a0)
 17c:	ac4f0004 	sw	t7,4(v0)
 180:	ac430000 	sw	v1,0(v0)
 184:	8c820004 	lw	v0,4(a0)
 188:	3c09fd10 	lui	t1,0xfd10
 18c:	3c0ae800 	lui	t2,0xe800
 190:	24590008 	addiu	t9,v0,8
 194:	ac990004 	sw	t9,4(a0)
 198:	ac580004 	sw	t8,4(v0)
 19c:	ac490000 	sw	t1,0(v0)
 1a0:	8c820004 	lw	v0,4(a0)
 1a4:	3c19f500 	lui	t9,0xf500
 1a8:	37390100 	ori	t9,t9,0x100
 1ac:	244e0008 	addiu	t6,v0,8
 1b0:	ac8e0004 	sw	t6,4(a0)
 1b4:	ac400004 	sw	zero,4(v0)
 1b8:	ac4a0000 	sw	t2,0(v0)
 1bc:	8c820004 	lw	v0,4(a0)
 1c0:	3c0bf000 	lui	t3,0xf000
 1c4:	24100002 	li	s0,2
 1c8:	244f0008 	addiu	t7,v0,8
 1cc:	ac8f0004 	sw	t7,4(a0)
 1d0:	ac470004 	sw	a3,4(v0)
 1d4:	ac590000 	sw	t9,0(v0)
 1d8:	8c820004 	lw	v0,4(a0)
 1dc:	3c0f070f 	lui	t7,0x70f
 1e0:	35efc000 	ori	t7,t7,0xc000
 1e4:	24580008 	addiu	t8,v0,8
 1e8:	ac980004 	sw	t8,4(a0)
 1ec:	ac400004 	sw	zero,4(v0)
 1f0:	ac480000 	sw	t0,0(v0)
 1f4:	8c820004 	lw	v0,4(a0)
 1f8:	240c0001 	li	t4,1
 1fc:	244e0008 	addiu	t6,v0,8
 200:	ac8e0004 	sw	t6,4(a0)
 204:	ac4f0004 	sw	t7,4(v0)
 208:	ac4b0000 	sw	t3,0(v0)
 20c:	8c820004 	lw	v0,4(a0)
 210:	24590008 	addiu	t9,v0,8
 214:	ac990004 	sw	t9,4(a0)
 218:	ac400004 	sw	zero,4(v0)
 21c:	ac460000 	sw	a2,0(v0)
 220:	8c820004 	lw	v0,4(a0)
 224:	32110007 	andi	s1,s0,0x7
 228:	318e000f 	andi	t6,t4,0xf
 22c:	24580008 	addiu	t8,v0,8
 230:	ac980004 	sw	t8,4(a0)
 234:	000e7d00 	sll	t7,t6,0x14
 238:	00118e00 	sll	s1,s1,0x18
 23c:	022fc825 	or	t9,s1,t7
 240:	ac590004 	sw	t9,4(v0)
 244:	ac450000 	sw	a1,0(v0)
 248:	8c820004 	lw	v0,4(a0)
 24c:	3c010003 	lui	at,0x3
 250:	3421c000 	ori	at,at,0xc000
 254:	02217025 	or	t6,s1,at
 258:	258c0001 	addiu	t4,t4,1
 25c:	24580008 	addiu	t8,v0,8
 260:	29810004 	slti	at,t4,4
 264:	ac980004 	sw	t8,4(a0)
 268:	35cf03fc 	ori	t7,t6,0x3fc
 26c:	26100002 	addiu	s0,s0,2
 270:	ac4f0004 	sw	t7,4(v0)
 274:	1420ffea 	bnez	at,220 <GfxPrint_InitDlist+0x220>
 278:	ac430000 	sw	v1,0(v0)
 27c:	8c820004 	lw	v0,4(a0)
 280:	3c18fa00 	lui	t8,0xfa00
 284:	24590008 	addiu	t9,v0,8
 288:	ac990004 	sw	t9,4(a0)
 28c:	ac580000 	sw	t8,0(v0)
 290:	8c8e0010 	lw	t6,16(a0)
 294:	3c180000 	lui	t8,0x0
 298:	27180000 	addiu	t8,t8,0
 29c:	ac4e0004 	sw	t6,4(v0)
 2a0:	8c820004 	lw	v0,4(a0)
 2a4:	3c19fd48 	lui	t9,0xfd48
 2a8:	244f0008 	addiu	t7,v0,8
 2ac:	ac8f0004 	sw	t7,4(a0)
 2b0:	ac580004 	sw	t8,4(v0)
 2b4:	ac590000 	sw	t9,0(v0)
 2b8:	8c820004 	lw	v0,4(a0)
 2bc:	3c190700 	lui	t9,0x700
 2c0:	3c0ff548 	lui	t7,0xf548
 2c4:	244e0008 	addiu	t6,v0,8
 2c8:	ac8e0004 	sw	t6,4(a0)
 2cc:	35ef0200 	ori	t7,t7,0x200
 2d0:	3739c010 	ori	t9,t9,0xc010
 2d4:	ac590004 	sw	t9,4(v0)
 2d8:	ac4f0000 	sw	t7,0(v0)
 2dc:	8c820004 	lw	v0,4(a0)
 2e0:	3c190700 	lui	t9,0x700
 2e4:	3739201c 	ori	t9,t9,0x201c
 2e8:	24580008 	addiu	t8,v0,8
 2ec:	ac980004 	sw	t8,4(a0)
 2f0:	ac400004 	sw	zero,4(v0)
 2f4:	ac480000 	sw	t0,0(v0)
 2f8:	8c820004 	lw	v0,4(a0)
 2fc:	3c0ff400 	lui	t7,0xf400
 300:	244e0008 	addiu	t6,v0,8
 304:	ac8e0004 	sw	t6,4(a0)
 308:	ac590004 	sw	t9,4(v0)
 30c:	ac4f0000 	sw	t7,0(v0)
 310:	8c820004 	lw	v0,4(a0)
 314:	3c0f0140 	lui	t7,0x140
 318:	35efc010 	ori	t7,t7,0xc010
 31c:	24580008 	addiu	t8,v0,8
 320:	ac980004 	sw	t8,4(a0)
 324:	ac400004 	sw	zero,4(v0)
 328:	ac460000 	sw	a2,0(v0)
 32c:	8c820004 	lw	v0,4(a0)
 330:	3c180100 	lui	t8,0x100
 334:	3718401c 	ori	t8,t8,0x401c
 338:	244e0008 	addiu	t6,v0,8
 33c:	ac8e0004 	sw	t6,4(a0)
 340:	ac4f0004 	sw	t7,4(v0)
 344:	ac450000 	sw	a1,0(v0)
 348:	8c820004 	lw	v0,4(a0)
 34c:	3c0f0000 	lui	t7,0x0
 350:	25ef0000 	addiu	t7,t7,0
 354:	24590008 	addiu	t9,v0,8
 358:	ac990004 	sw	t9,4(a0)
 35c:	ac580004 	sw	t8,4(v0)
 360:	ac430000 	sw	v1,0(v0)
 364:	8c820004 	lw	v0,4(a0)
 368:	244e0008 	addiu	t6,v0,8
 36c:	ac8e0004 	sw	t6,4(a0)
 370:	ac4f0004 	sw	t7,4(v0)
 374:	ac490000 	sw	t1,0(v0)
 378:	8c820004 	lw	v0,4(a0)
 37c:	3c0ef500 	lui	t6,0xf500
 380:	35ce0140 	ori	t6,t6,0x140
 384:	24590008 	addiu	t9,v0,8
 388:	ac990004 	sw	t9,4(a0)
 38c:	ac400004 	sw	zero,4(v0)
 390:	ac4a0000 	sw	t2,0(v0)
 394:	8c820004 	lw	v0,4(a0)
 398:	240a0009 	li	t2,9
 39c:	3c090040 	lui	t1,0x40
 3a0:	24580008 	addiu	t8,v0,8
 3a4:	ac980004 	sw	t8,4(a0)
 3a8:	ac470004 	sw	a3,4(v0)
 3ac:	ac4e0000 	sw	t6,0(v0)
 3b0:	8c820004 	lw	v0,4(a0)
 3b4:	3c180703 	lui	t8,0x703
 3b8:	3718c000 	ori	t8,t8,0xc000
 3bc:	244f0008 	addiu	t7,v0,8
 3c0:	ac8f0004 	sw	t7,4(a0)
 3c4:	ac400004 	sw	zero,4(v0)
 3c8:	ac480000 	sw	t0,0(v0)
 3cc:	8c820004 	lw	v0,4(a0)
 3d0:	24070003 	li	a3,3
 3d4:	24590008 	addiu	t9,v0,8
 3d8:	ac990004 	sw	t9,4(a0)
 3dc:	ac580004 	sw	t8,4(v0)
 3e0:	ac4b0000 	sw	t3,0(v0)
 3e4:	8c820004 	lw	v0,4(a0)
 3e8:	244e0008 	addiu	t6,v0,8
 3ec:	ac8e0004 	sw	t6,4(a0)
 3f0:	ac400004 	sw	zero,4(v0)
 3f4:	ac460000 	sw	a2,0(v0)
 3f8:	8c820004 	lw	v0,4(a0)
 3fc:	30e80007 	andi	t0,a3,0x7
 400:	00084600 	sll	t0,t0,0x18
 404:	244f0008 	addiu	t7,v0,8
 408:	ac8f0004 	sw	t7,4(a0)
 40c:	0109c825 	or	t9,t0,t1
 410:	372ec010 	ori	t6,t9,0xc010
 414:	ac4e0004 	sw	t6,4(v0)
 418:	ac450000 	sw	a1,0(v0)
 41c:	8c820004 	lw	v0,4(a0)
 420:	24e70002 	addiu	a3,a3,2
 424:	3518401c 	ori	t8,t0,0x401c
 428:	244f0008 	addiu	t7,v0,8
 42c:	ac8f0004 	sw	t7,4(a0)
 430:	ac580004 	sw	t8,4(v0)
 434:	14eafff0 	bne	a3,t2,3f8 <GfxPrint_InitDlist+0x3f8>
 438:	ac430000 	sw	v1,0(v0)
 43c:	8fb00008 	lw	s0,8(sp)
 440:	8fb1000c 	lw	s1,12(sp)
 444:	03e00008 	jr	ra
 448:	27bd0010 	addiu	sp,sp,16

0000044c <GfxPrint_SetColor>:
 44c:	8c830004 	lw	v1,4(a0)
 450:	a0850010 	sb	a1,16(a0)
 454:	a0860011 	sb	a2,17(a0)
 458:	a0870012 	sb	a3,18(a0)
 45c:	8fae0010 	lw	t6,16(sp)
 460:	246f0008 	addiu	t7,v1,8
 464:	ac8f0004 	sw	t7,4(a0)
 468:	a08e0013 	sb	t6,19(a0)
 46c:	3c18e700 	lui	t8,0xe700
 470:	ac780000 	sw	t8,0(v1)
 474:	ac600004 	sw	zero,4(v1)
 478:	8c830004 	lw	v1,4(a0)
 47c:	3c08fa00 	lui	t0,0xfa00
 480:	24790008 	addiu	t9,v1,8
 484:	ac990004 	sw	t9,4(a0)
 488:	ac680000 	sw	t0,0(v1)
 48c:	8c890010 	lw	t1,16(a0)
 490:	03e00008 	jr	ra
 494:	ac690004 	sw	t1,4(v1)

00000498 <GfxPrint_SetPosPx>:
 498:	948e000c 	lhu	t6,12(a0)
 49c:	9099000e 	lbu	t9,14(a0)
 4a0:	00057880 	sll	t7,a1,0x2
 4a4:	00064080 	sll	t0,a2,0x2
 4a8:	01cfc021 	addu	t8,t6,t7
 4ac:	03284821 	addu	t1,t9,t0
 4b0:	a4980008 	sh	t8,8(a0)
 4b4:	03e00008 	jr	ra
 4b8:	a489000a 	sh	t1,10(a0)

000004bc <GfxPrint_SetPos>:
 4bc:	27bdffe8 	addiu	sp,sp,-24
 4c0:	afbf0014 	sw	ra,20(sp)
 4c4:	afa60020 	sw	a2,32(sp)
 4c8:	000630c0 	sll	a2,a2,0x3
 4cc:	0c000000 	jal	0 <GfxPrint_InitDlist>
 4d0:	000528c0 	sll	a1,a1,0x3
 4d4:	8fbf0014 	lw	ra,20(sp)
 4d8:	27bd0018 	addiu	sp,sp,24
 4dc:	03e00008 	jr	ra
 4e0:	00000000 	nop

000004e4 <GfxPrint_SetBasePosPx>:
 4e4:	00057080 	sll	t6,a1,0x2
 4e8:	00067880 	sll	t7,a2,0x2
 4ec:	a48e000c 	sh	t6,12(a0)
 4f0:	03e00008 	jr	ra
 4f4:	a08f000e 	sb	t7,14(a0)

000004f8 <GfxPrint_PrintCharImpl>:
 4f8:	afa50004 	sw	a1,4(sp)
 4fc:	9083000f 	lbu	v1,15(a0)
 500:	30a500ff 	andi	a1,a1,0xff
 504:	306e0008 	andi	t6,v1,0x8
 508:	11c0004f 	beqz	t6,648 <GfxPrint_PrintCharImpl+0x150>
 50c:	306ffff7 	andi	t7,v1,0xfff7
 510:	8c820004 	lw	v0,4(a0)
 514:	a08f000f 	sb	t7,15(a0)
 518:	3c19e700 	lui	t9,0xe700
 51c:	24580008 	addiu	t8,v0,8
 520:	ac980004 	sw	t8,4(a0)
 524:	ac400004 	sw	zero,4(v0)
 528:	ac590000 	sw	t9,0(v0)
 52c:	908b000f 	lbu	t3,15(a0)
 530:	3c0fe300 	lui	t7,0xe300
 534:	340dc000 	li	t5,0xc000
 538:	316c0002 	andi	t4,t3,0x2
 53c:	11800024 	beqz	t4,5d0 <GfxPrint_PrintCharImpl+0xd8>
 540:	35ef0a01 	ori	t7,t7,0xa01
 544:	8c820004 	lw	v0,4(a0)
 548:	3c0ee300 	lui	t6,0xe300
 54c:	35ce1001 	ori	t6,t6,0x1001
 550:	244d0008 	addiu	t5,v0,8
 554:	ac8d0004 	sw	t5,4(a0)
 558:	340f8000 	li	t7,0x8000
 55c:	ac4f0004 	sw	t7,4(v0)
 560:	ac4e0000 	sw	t6,0(v0)
 564:	8c820004 	lw	v0,4(a0)
 568:	3c19e300 	lui	t9,0xe300
 56c:	37390a01 	ori	t9,t9,0xa01
 570:	24580008 	addiu	t8,v0,8
 574:	ac980004 	sw	t8,4(a0)
 578:	3c0b0010 	lui	t3,0x10
 57c:	ac4b0004 	sw	t3,4(v0)
 580:	ac590000 	sw	t9,0(v0)
 584:	8c820004 	lw	v0,4(a0)
 588:	3c0e0c18 	lui	t6,0xc18
 58c:	3c0de200 	lui	t5,0xe200
 590:	244c0008 	addiu	t4,v0,8
 594:	ac8c0004 	sw	t4,4(a0)
 598:	35ad001c 	ori	t5,t5,0x1c
 59c:	35ce4240 	ori	t6,t6,0x4240
 5a0:	ac4e0004 	sw	t6,4(v0)
 5a4:	ac4d0000 	sw	t5,0(v0)
 5a8:	8c820004 	lw	v0,4(a0)
 5ac:	3c18fc11 	lui	t8,0xfc11
 5b0:	371815ff 	ori	t8,t8,0x15ff
 5b4:	244f0008 	addiu	t7,v0,8
 5b8:	ac8f0004 	sw	t7,4(a0)
 5bc:	2419fe38 	li	t9,-456
 5c0:	ac590004 	sw	t9,4(v0)
 5c4:	ac580000 	sw	t8,0(v0)
 5c8:	1000001f 	b	648 <GfxPrint_PrintCharImpl+0x150>
 5cc:	9083000f 	lbu	v1,15(a0)
 5d0:	8c820004 	lw	v0,4(a0)
 5d4:	3c0ce300 	lui	t4,0xe300
 5d8:	358c1001 	ori	t4,t4,0x1001
 5dc:	244b0008 	addiu	t3,v0,8
 5e0:	ac8b0004 	sw	t3,4(a0)
 5e4:	ac4d0004 	sw	t5,4(v0)
 5e8:	ac4c0000 	sw	t4,0(v0)
 5ec:	8c820004 	lw	v0,4(a0)
 5f0:	3c0b0050 	lui	t3,0x50
 5f4:	3c19e200 	lui	t9,0xe200
 5f8:	244e0008 	addiu	t6,v0,8
 5fc:	ac8e0004 	sw	t6,4(a0)
 600:	ac400004 	sw	zero,4(v0)
 604:	ac4f0000 	sw	t7,0(v0)
 608:	8c820004 	lw	v0,4(a0)
 60c:	3739001c 	ori	t9,t9,0x1c
 610:	356b4240 	ori	t3,t3,0x4240
 614:	24580008 	addiu	t8,v0,8
 618:	ac980004 	sw	t8,4(a0)
 61c:	ac4b0004 	sw	t3,4(v0)
 620:	ac590000 	sw	t9,0(v0)
 624:	8c820004 	lw	v0,4(a0)
 628:	3c0dfc11 	lui	t5,0xfc11
 62c:	35adfe23 	ori	t5,t5,0xfe23
 630:	244c0008 	addiu	t4,v0,8
 634:	ac8c0004 	sw	t4,4(a0)
 638:	240ef3f9 	li	t6,-3079
 63c:	ac4e0004 	sw	t6,4(v0)
 640:	ac4d0000 	sw	t5,0(v0)
 644:	9083000f 	lbu	v1,15(a0)
 648:	306f0004 	andi	t7,v1,0x4
 64c:	51e00076 	beqzl	t7,828 <GfxPrint_PrintCharImpl+0x330>
 650:	000578c3 	sra	t7,a1,0x3
 654:	8c820004 	lw	v0,4(a0)
 658:	3c07fa00 	lui	a3,0xfa00
 65c:	3c08e400 	lui	t0,0xe400
 660:	24580008 	addiu	t8,v0,8
 664:	ac980004 	sw	t8,4(a0)
 668:	ac400004 	sw	zero,4(v0)
 66c:	ac470000 	sw	a3,0(v0)
 670:	9099000f 	lbu	t9,15(a0)
 674:	3c09e100 	lui	t1,0xe100
 678:	3c0af100 	lui	t2,0xf100
 67c:	332b0040 	andi	t3,t9,0x40
 680:	51600036 	beqzl	t3,75c <GfxPrint_PrintCharImpl+0x264>
 684:	8c820004 	lw	v0,4(a0)
 688:	8c820004 	lw	v0,4(a0)
 68c:	948d0008 	lhu	t5,8(a0)
 690:	3c08e400 	lui	t0,0xe400
 694:	244c0008 	addiu	t4,v0,8
 698:	ac8c0004 	sw	t4,4(a0)
 69c:	948c000a 	lhu	t4,10(a0)
 6a0:	25ae0024 	addiu	t6,t5,36
 6a4:	000e7840 	sll	t7,t6,0x1
 6a8:	31f80fff 	andi	t8,t7,0xfff
 6ac:	258d0024 	addiu	t5,t4,36
 6b0:	000d7040 	sll	t6,t5,0x1
 6b4:	0018cb00 	sll	t9,t8,0xc
 6b8:	03285825 	or	t3,t9,t0
 6bc:	31cf0fff 	andi	t7,t6,0xfff
 6c0:	016fc025 	or	t8,t3,t7
 6c4:	ac580000 	sw	t8,0(v0)
 6c8:	948b0008 	lhu	t3,8(a0)
 6cc:	00056040 	sll	t4,a1,0x1
 6d0:	318d0007 	andi	t5,t4,0x7
 6d4:	256f0004 	addiu	t7,t3,4
 6d8:	948b000a 	lhu	t3,10(a0)
 6dc:	000fc040 	sll	t8,t7,0x1
 6e0:	33190fff 	andi	t9,t8,0xfff
 6e4:	00196300 	sll	t4,t9,0xc
 6e8:	256f0004 	addiu	t7,t3,4
 6ec:	000fc040 	sll	t8,t7,0x1
 6f0:	000d7600 	sll	t6,t5,0x18
 6f4:	01cc6825 	or	t5,t6,t4
 6f8:	33190fff 	andi	t9,t8,0xfff
 6fc:	01b97025 	or	t6,t5,t9
 700:	ac4e0004 	sw	t6,4(v0)
 704:	8c820004 	lw	v0,4(a0)
 708:	30ad0004 	andi	t5,a1,0x4
 70c:	000dcd80 	sll	t9,t5,0x16
 710:	244c0008 	addiu	t4,v0,8
 714:	ac8c0004 	sw	t4,4(a0)
 718:	000560c3 	sra	t4,a1,0x3
 71c:	000c5a00 	sll	t3,t4,0x8
 720:	316fffff 	andi	t7,t3,0xffff
 724:	032fc025 	or	t8,t9,t7
 728:	3c09e100 	lui	t1,0xe100
 72c:	ac490000 	sw	t1,0(v0)
 730:	ac580004 	sw	t8,4(v0)
 734:	8c820004 	lw	v0,4(a0)
 738:	3c0e0200 	lui	t6,0x200
 73c:	35ce0200 	ori	t6,t6,0x200
 740:	244d0008 	addiu	t5,v0,8
 744:	ac8d0004 	sw	t5,4(a0)
 748:	3c0af100 	lui	t2,0xf100
 74c:	ac4a0000 	sw	t2,0(v0)
 750:	1000002d 	b	808 <GfxPrint_PrintCharImpl+0x310>
 754:	ac4e0004 	sw	t6,4(v0)
 758:	8c820004 	lw	v0,4(a0)
 75c:	948b0008 	lhu	t3,8(a0)
 760:	948e000a 	lhu	t6,10(a0)
 764:	244c0008 	addiu	t4,v0,8
 768:	25790024 	addiu	t9,t3,36
 76c:	332f0fff 	andi	t7,t9,0xfff
 770:	ac8c0004 	sw	t4,4(a0)
 774:	000fc300 	sll	t8,t7,0xc
 778:	25cc0024 	addiu	t4,t6,36
 77c:	318b0fff 	andi	t3,t4,0xfff
 780:	03086825 	or	t5,t8,t0
 784:	01abc825 	or	t9,t5,t3
 788:	0005c040 	sll	t8,a1,0x1
 78c:	ac590000 	sw	t9,0(v0)
 790:	948d0008 	lhu	t5,8(a0)
 794:	330e0007 	andi	t6,t8,0x7
 798:	000e6600 	sll	t4,t6,0x18
 79c:	948e000a 	lhu	t6,10(a0)
 7a0:	25ab0004 	addiu	t3,t5,4
 7a4:	31790fff 	andi	t9,t3,0xfff
 7a8:	00197b00 	sll	t7,t9,0xc
 7ac:	25cd0004 	addiu	t5,t6,4
 7b0:	31ab0fff 	andi	t3,t5,0xfff
 7b4:	018fc025 	or	t8,t4,t7
 7b8:	030bc825 	or	t9,t8,t3
 7bc:	ac590004 	sw	t9,4(v0)
 7c0:	8c820004 	lw	v0,4(a0)
 7c4:	30b80004 	andi	t8,a1,0x4
 7c8:	00185d80 	sll	t3,t8,0x16
 7cc:	244c0008 	addiu	t4,v0,8
 7d0:	ac8c0004 	sw	t4,4(a0)
 7d4:	000560c3 	sra	t4,a1,0x3
 7d8:	000c7a00 	sll	t7,t4,0x8
 7dc:	31eeffff 	andi	t6,t7,0xffff
 7e0:	016e6825 	or	t5,t3,t6
 7e4:	ac4d0004 	sw	t5,4(v0)
 7e8:	ac490000 	sw	t1,0(v0)
 7ec:	8c820004 	lw	v0,4(a0)
 7f0:	3c190400 	lui	t9,0x400
 7f4:	37390400 	ori	t9,t9,0x400
 7f8:	24580008 	addiu	t8,v0,8
 7fc:	ac980004 	sw	t8,4(a0)
 800:	ac590004 	sw	t9,4(v0)
 804:	ac4a0000 	sw	t2,0(v0)
 808:	8c820004 	lw	v0,4(a0)
 80c:	244c0008 	addiu	t4,v0,8
 810:	ac8c0004 	sw	t4,4(a0)
 814:	ac470000 	sw	a3,0(v0)
 818:	8c8f0010 	lw	t7,16(a0)
 81c:	ac4f0004 	sw	t7,4(v0)
 820:	9083000f 	lbu	v1,15(a0)
 824:	000578c3 	sra	t7,a1,0x3
 828:	00a03825 	move	a3,a1
 82c:	00073840 	sll	a3,a3,0x1
 830:	000f5a00 	sll	t3,t7,0x8
 834:	30b80004 	andi	t8,a1,0x4
 838:	0018cd80 	sll	t9,t8,0x16
 83c:	316effff 	andi	t6,t3,0xffff
 840:	30e70007 	andi	a3,a3,0x7
 844:	306d0040 	andi	t5,v1,0x40
 848:	3c08e400 	lui	t0,0xe400
 84c:	3c09e100 	lui	t1,0xe100
 850:	3c0af100 	lui	t2,0xf100
 854:	00073e00 	sll	a3,a3,0x18
 858:	11a00027 	beqz	t5,8f8 <GfxPrint_PrintCharImpl+0x400>
 85c:	032e3025 	or	a2,t9,t6
 860:	8c820004 	lw	v0,4(a0)
 864:	948c0008 	lhu	t4,8(a0)
 868:	24580008 	addiu	t8,v0,8
 86c:	ac980004 	sw	t8,4(a0)
 870:	9498000a 	lhu	t8,10(a0)
 874:	258f0020 	addiu	t7,t4,32
 878:	000f5840 	sll	t3,t7,0x1
 87c:	31790fff 	andi	t9,t3,0xfff
 880:	270c0020 	addiu	t4,t8,32
 884:	000c7840 	sll	t7,t4,0x1
 888:	00197300 	sll	t6,t9,0xc
 88c:	01c86825 	or	t5,t6,t0
 890:	31eb0fff 	andi	t3,t7,0xfff
 894:	01abc825 	or	t9,t5,t3
 898:	ac590000 	sw	t9,0(v0)
 89c:	948e0008 	lhu	t6,8(a0)
 8a0:	948b000a 	lhu	t3,10(a0)
 8a4:	000ec040 	sll	t8,t6,0x1
 8a8:	330c0fff 	andi	t4,t8,0xfff
 8ac:	000c7b00 	sll	t7,t4,0xc
 8b0:	000bc840 	sll	t9,t3,0x1
 8b4:	332e0fff 	andi	t6,t9,0xfff
 8b8:	00ef6825 	or	t5,a3,t7
 8bc:	01aec025 	or	t8,t5,t6
 8c0:	ac580004 	sw	t8,4(v0)
 8c4:	8c820004 	lw	v0,4(a0)
 8c8:	3c0b0200 	lui	t3,0x200
 8cc:	356b0200 	ori	t3,t3,0x200
 8d0:	244c0008 	addiu	t4,v0,8
 8d4:	ac8c0004 	sw	t4,4(a0)
 8d8:	ac460004 	sw	a2,4(v0)
 8dc:	ac490000 	sw	t1,0(v0)
 8e0:	8c820004 	lw	v0,4(a0)
 8e4:	244f0008 	addiu	t7,v0,8
 8e8:	ac8f0004 	sw	t7,4(a0)
 8ec:	ac4b0004 	sw	t3,4(v0)
 8f0:	10000022 	b	97c <GfxPrint_PrintCharImpl+0x484>
 8f4:	ac4a0000 	sw	t2,0(v0)
 8f8:	8c820004 	lw	v0,4(a0)
 8fc:	948d0008 	lhu	t5,8(a0)
 900:	948b000a 	lhu	t3,10(a0)
 904:	24590008 	addiu	t9,v0,8
 908:	25ae0020 	addiu	t6,t5,32
 90c:	31d80fff 	andi	t8,t6,0xfff
 910:	ac990004 	sw	t9,4(a0)
 914:	00186300 	sll	t4,t8,0xc
 918:	25790020 	addiu	t9,t3,32
 91c:	332d0fff 	andi	t5,t9,0xfff
 920:	01887825 	or	t7,t4,t0
 924:	01ed7025 	or	t6,t7,t5
 928:	ac4e0000 	sw	t6,0(v0)
 92c:	94980008 	lhu	t8,8(a0)
 930:	948f000a 	lhu	t7,10(a0)
 934:	330c0fff 	andi	t4,t8,0xfff
 938:	000c5b00 	sll	t3,t4,0xc
 93c:	00ebc825 	or	t9,a3,t3
 940:	31ed0fff 	andi	t5,t7,0xfff
 944:	032d7025 	or	t6,t9,t5
 948:	ac4e0004 	sw	t6,4(v0)
 94c:	8c820004 	lw	v0,4(a0)
 950:	3c0b0400 	lui	t3,0x400
 954:	356b0400 	ori	t3,t3,0x400
 958:	24580008 	addiu	t8,v0,8
 95c:	ac980004 	sw	t8,4(a0)
 960:	ac460004 	sw	a2,4(v0)
 964:	ac490000 	sw	t1,0(v0)
 968:	8c820004 	lw	v0,4(a0)
 96c:	244c0008 	addiu	t4,v0,8
 970:	ac8c0004 	sw	t4,4(a0)
 974:	ac4b0004 	sw	t3,4(v0)
 978:	ac4a0000 	sw	t2,0(v0)
 97c:	948f0008 	lhu	t7,8(a0)
 980:	25f90020 	addiu	t9,t7,32
 984:	03e00008 	jr	ra
 988:	a4990008 	sh	t9,8(a0)

0000098c <GfxPrint_PrintChar>:
 98c:	27bdffe0 	addiu	sp,sp,-32
 990:	afa50024 	sw	a1,36(sp)
 994:	30a500ff 	andi	a1,a1,0xff
 998:	afb00018 	sw	s0,24(sp)
 99c:	24010020 	li	at,32
 9a0:	00808025 	move	s0,a0
 9a4:	afbf001c 	sw	ra,28(sp)
 9a8:	30a600ff 	andi	a2,a1,0xff
 9ac:	14a10005 	bne	a1,at,9c4 <GfxPrint_PrintChar+0x38>
 9b0:	00a01025 	move	v0,a1
 9b4:	948e0008 	lhu	t6,8(a0)
 9b8:	25cf0020 	addiu	t7,t6,32
 9bc:	1000005e 	b	b38 <GfxPrint_PrintChar+0x1ac>
 9c0:	a48f0008 	sh	t7,8(a0)
 9c4:	28410021 	slti	at,v0,33
 9c8:	14200007 	bnez	at,9e8 <GfxPrint_PrintChar+0x5c>
 9cc:	2841007f 	slti	at,v0,127
 9d0:	50200006 	beqzl	at,9ec <GfxPrint_PrintChar+0x60>
 9d4:	284100a0 	slti	at,v0,160
 9d8:	0c000000 	jal	0 <GfxPrint_InitDlist>
 9dc:	02002025 	move	a0,s0
 9e0:	10000056 	b	b3c <GfxPrint_PrintChar+0x1b0>
 9e4:	8fbf001c 	lw	ra,28(sp)
 9e8:	284100a0 	slti	at,v0,160
 9ec:	14200012 	bnez	at,a38 <GfxPrint_PrintChar+0xac>
 9f0:	284100e0 	slti	at,v0,224
 9f4:	10200010 	beqz	at,a38 <GfxPrint_PrintChar+0xac>
 9f8:	02002025 	move	a0,s0
 9fc:	9218000f 	lbu	t8,15(s0)
 a00:	284100c0 	slti	at,v0,192
 a04:	33190001 	andi	t9,t8,0x1
 a08:	13200007 	beqz	t9,a28 <GfxPrint_PrintChar+0x9c>
 a0c:	00000000 	nop
 a10:	10200004 	beqz	at,a24 <GfxPrint_PrintChar+0x98>
 a14:	24460020 	addiu	a2,v0,32
 a18:	2446ffe0 	addiu	a2,v0,-32
 a1c:	10000002 	b	a28 <GfxPrint_PrintChar+0x9c>
 a20:	30c600ff 	andi	a2,a2,0xff
 a24:	30c600ff 	andi	a2,a2,0xff
 a28:	0c000000 	jal	0 <GfxPrint_InitDlist>
 a2c:	30c500ff 	andi	a1,a2,0xff
 a30:	10000042 	b	b3c <GfxPrint_PrintChar+0x1b0>
 a34:	8fbf001c 	lw	ra,28(sp)
 a38:	2841000b 	slti	at,v0,11
 a3c:	14200010 	bnez	at,a80 <GfxPrint_PrintChar+0xf4>
 a40:	2841000e 	slti	at,v0,14
 a44:	14200009 	bnez	at,a6c <GfxPrint_PrintChar+0xe0>
 a48:	2448ff76 	addiu	t0,v0,-138
 a4c:	2d010005 	sltiu	at,t0,5
 a50:	10200039 	beqz	at,b38 <GfxPrint_PrintChar+0x1ac>
 a54:	00084080 	sll	t0,t0,0x2
 a58:	3c010000 	lui	at,0x0
 a5c:	00280821 	addu	at,at,t0
 a60:	8c280020 	lw	t0,32(at)
 a64:	01000008 	jr	t0
 a68:	00000000 	nop
 a6c:	2401000d 	li	at,13
 a70:	5041000d 	beql	v0,at,aa8 <GfxPrint_PrintChar+0x11c>
 a74:	960b000c 	lhu	t3,12(s0)
 a78:	10000030 	b	b3c <GfxPrint_PrintChar+0x1b0>
 a7c:	8fbf001c 	lw	ra,28(sp)
 a80:	1040002d 	beqz	v0,b38 <GfxPrint_PrintChar+0x1ac>
 a84:	24010009 	li	at,9
 a88:	10410009 	beq	v0,at,ab0 <GfxPrint_PrintChar+0x124>
 a8c:	2401000a 	li	at,10
 a90:	5441002a 	bnel	v0,at,b3c <GfxPrint_PrintChar+0x1b0>
 a94:	8fbf001c 	lw	ra,28(sp)
 a98:	9609000a 	lhu	t1,10(s0)
 a9c:	252a0020 	addiu	t2,t1,32
 aa0:	a60a000a 	sh	t2,10(s0)
 aa4:	960b000c 	lhu	t3,12(s0)
 aa8:	10000023 	b	b38 <GfxPrint_PrintChar+0x1ac>
 aac:	a60b0008 	sh	t3,8(s0)
 ab0:	02002025 	move	a0,s0
 ab4:	0c000000 	jal	0 <GfxPrint_InitDlist>
 ab8:	24050020 	li	a1,32
 abc:	960c0008 	lhu	t4,8(s0)
 ac0:	960d000c 	lhu	t5,12(s0)
 ac4:	018d7023 	subu	t6,t4,t5
 ac8:	05c10004 	bgez	t6,adc <GfxPrint_PrintChar+0x150>
 acc:	31cf00ff 	andi	t7,t6,0xff
 ad0:	11e00002 	beqz	t7,adc <GfxPrint_PrintChar+0x150>
 ad4:	00000000 	nop
 ad8:	25efff00 	addiu	t7,t7,-256
 adc:	55e0fff5 	bnezl	t7,ab4 <GfxPrint_PrintChar+0x128>
 ae0:	02002025 	move	a0,s0
 ae4:	10000015 	b	b3c <GfxPrint_PrintChar+0x1b0>
 ae8:	8fbf001c 	lw	ra,28(sp)
 aec:	9218000f 	lbu	t8,15(s0)
 af0:	37190001 	ori	t9,t8,0x1
 af4:	10000010 	b	b38 <GfxPrint_PrintChar+0x1ac>
 af8:	a219000f 	sb	t9,15(s0)
 afc:	9208000f 	lbu	t0,15(s0)
 b00:	3109fffe 	andi	t1,t0,0xfffe
 b04:	1000000c 	b	b38 <GfxPrint_PrintChar+0x1ac>
 b08:	a209000f 	sb	t1,15(s0)
 b0c:	920a000f 	lbu	t2,15(s0)
 b10:	354c0002 	ori	t4,t2,0x2
 b14:	a20c000f 	sb	t4,15(s0)
 b18:	358d0008 	ori	t5,t4,0x8
 b1c:	10000006 	b	b38 <GfxPrint_PrintChar+0x1ac>
 b20:	a20d000f 	sb	t5,15(s0)
 b24:	920e000f 	lbu	t6,15(s0)
 b28:	31d8fffd 	andi	t8,t6,0xfffd
 b2c:	a218000f 	sb	t8,15(s0)
 b30:	37190008 	ori	t9,t8,0x8
 b34:	a219000f 	sb	t9,15(s0)
 b38:	8fbf001c 	lw	ra,28(sp)
 b3c:	8fb00018 	lw	s0,24(sp)
 b40:	27bd0020 	addiu	sp,sp,32
 b44:	03e00008 	jr	ra
 b48:	00000000 	nop

00000b4c <GfxPrint_PrintStringWithSize>:
 b4c:	00c70019 	multu	a2,a3
 b50:	27bdffd8 	addiu	sp,sp,-40
 b54:	afb1001c 	sw	s1,28(sp)
 b58:	afb20020 	sw	s2,32(sp)
 b5c:	afb00018 	sw	s0,24(sp)
 b60:	00809025 	move	s2,a0
 b64:	afbf0024 	sw	ra,36(sp)
 b68:	00a08025 	move	s0,a1
 b6c:	00008812 	mflo	s1
 b70:	12200007 	beqz	s1,b90 <GfxPrint_PrintStringWithSize+0x44>
 b74:	02402025 	move	a0,s2
 b78:	92050000 	lbu	a1,0(s0)
 b7c:	0c000000 	jal	0 <GfxPrint_InitDlist>
 b80:	26100001 	addiu	s0,s0,1
 b84:	2631ffff 	addiu	s1,s1,-1
 b88:	5620fffb 	bnezl	s1,b78 <GfxPrint_PrintStringWithSize+0x2c>
 b8c:	02402025 	move	a0,s2
 b90:	8fbf0024 	lw	ra,36(sp)
 b94:	8fb00018 	lw	s0,24(sp)
 b98:	8fb1001c 	lw	s1,28(sp)
 b9c:	8fb20020 	lw	s2,32(sp)
 ba0:	03e00008 	jr	ra
 ba4:	27bd0028 	addiu	sp,sp,40

00000ba8 <GfxPrint_PrintString>:
 ba8:	27bdffd8 	addiu	sp,sp,-40
 bac:	afbf0024 	sw	ra,36(sp)
 bb0:	afb20020 	sw	s2,32(sp)
 bb4:	afb1001c 	sw	s1,28(sp)
 bb8:	afb00018 	sw	s0,24(sp)
 bbc:	90b00000 	lbu	s0,0(a1)
 bc0:	00a08825 	move	s1,a1
 bc4:	00809025 	move	s2,a0
 bc8:	12000007 	beqz	s0,be8 <GfxPrint_PrintString+0x40>
 bcc:	02402025 	move	a0,s2
 bd0:	320500ff 	andi	a1,s0,0xff
 bd4:	0c000000 	jal	0 <GfxPrint_InitDlist>
 bd8:	26310001 	addiu	s1,s1,1
 bdc:	92300000 	lbu	s0,0(s1)
 be0:	5600fffb 	bnezl	s0,bd0 <GfxPrint_PrintString+0x28>
 be4:	02402025 	move	a0,s2
 be8:	8fbf0024 	lw	ra,36(sp)
 bec:	8fb00018 	lw	s0,24(sp)
 bf0:	8fb1001c 	lw	s1,28(sp)
 bf4:	8fb20020 	lw	s2,32(sp)
 bf8:	03e00008 	jr	ra
 bfc:	27bd0028 	addiu	sp,sp,40

00000c00 <GfxPrint_Callback>:
 c00:	27bdffe8 	addiu	sp,sp,-24
 c04:	afbf0014 	sw	ra,20(sp)
 c08:	00c03825 	move	a3,a2
 c0c:	afa40018 	sw	a0,24(sp)
 c10:	0c000000 	jal	0 <GfxPrint_InitDlist>
 c14:	24060001 	li	a2,1
 c18:	8fbf0014 	lw	ra,20(sp)
 c1c:	8fa20018 	lw	v0,24(sp)
 c20:	27bd0018 	addiu	sp,sp,24
 c24:	03e00008 	jr	ra
 c28:	00000000 	nop

00000c2c <GfxPrint_Init>:
 c2c:	908e000f 	lbu	t6,15(a0)
 c30:	3c180000 	lui	t8,0x0
 c34:	27180000 	addiu	t8,t8,0
 c38:	31d9ff7f 	andi	t9,t6,0xff7f
 c3c:	3329fffe 	andi	t1,t9,0xfffe
 c40:	a099000f 	sb	t9,15(a0)
 c44:	312bfffd 	andi	t3,t1,0xfffd
 c48:	a089000f 	sb	t1,15(a0)
 c4c:	356c0004 	ori	t4,t3,0x4
 c50:	a08b000f 	sb	t3,15(a0)
 c54:	318d00ff 	andi	t5,t4,0xff
 c58:	a08c000f 	sb	t4,15(a0)
 c5c:	35ae0008 	ori	t6,t5,0x8
 c60:	ac980000 	sw	t8,0(a0)
 c64:	ac800004 	sw	zero,4(a0)
 c68:	a4800008 	sh	zero,8(a0)
 c6c:	a480000a 	sh	zero,10(a0)
 c70:	a480000c 	sh	zero,12(a0)
 c74:	a080000e 	sb	zero,14(a0)
 c78:	ac800010 	sw	zero,16(a0)
 c7c:	a08e000f 	sb	t6,15(a0)
 c80:	3c0f0000 	lui	t7,0x0
 c84:	91ef0000 	lbu	t7,0(t7)
 c88:	35c80040 	ori	t0,t6,0x40
 c8c:	31f80040 	andi	t8,t7,0x40
 c90:	53000004 	beqzl	t8,ca4 <GfxPrint_Init+0x78>
 c94:	9089000f 	lbu	t1,15(a0)
 c98:	03e00008 	jr	ra
 c9c:	a088000f 	sb	t0,15(a0)
 ca0:	9089000f 	lbu	t1,15(a0)
 ca4:	312affbf 	andi	t2,t1,0xffbf
 ca8:	a08a000f 	sb	t2,15(a0)
 cac:	03e00008 	jr	ra
 cb0:	00000000 	nop

00000cb4 <GfxPrint_Destroy>:
 cb4:	03e00008 	jr	ra
 cb8:	afa40000 	sw	a0,0(sp)

00000cbc <GfxPrint_Open>:
 cbc:	27bdffe8 	addiu	sp,sp,-24
 cc0:	afbf0014 	sw	ra,20(sp)
 cc4:	9082000f 	lbu	v0,15(a0)
 cc8:	304e0080 	andi	t6,v0,0x80
 ccc:	15c00006 	bnez	t6,ce8 <GfxPrint_Open+0x2c>
 cd0:	344f0080 	ori	t7,v0,0x80
 cd4:	a08f000f 	sb	t7,15(a0)
 cd8:	0c000000 	jal	0 <GfxPrint_InitDlist>
 cdc:	ac850004 	sw	a1,4(a0)
 ce0:	10000005 	b	cf8 <GfxPrint_Open+0x3c>
 ce4:	8fbf0014 	lw	ra,20(sp)
 ce8:	3c040000 	lui	a0,0x0
 cec:	0c000000 	jal	0 <GfxPrint_InitDlist>
 cf0:	24840000 	addiu	a0,a0,0
 cf4:	8fbf0014 	lw	ra,20(sp)
 cf8:	27bd0018 	addiu	sp,sp,24
 cfc:	03e00008 	jr	ra
 d00:	00000000 	nop

00000d04 <GfxPrint_Close>:
 d04:	908e000f 	lbu	t6,15(a0)
 d08:	8c830004 	lw	v1,4(a0)
 d0c:	3c19e700 	lui	t9,0xe700
 d10:	31cfff7f 	andi	t7,t6,0xff7f
 d14:	24780008 	addiu	t8,v1,8
 d18:	a08f000f 	sb	t7,15(a0)
 d1c:	ac980004 	sw	t8,4(a0)
 d20:	ac600004 	sw	zero,4(v1)
 d24:	ac790000 	sw	t9,0(v1)
 d28:	8c820004 	lw	v0,4(a0)
 d2c:	03e00008 	jr	ra
 d30:	ac800004 	sw	zero,4(a0)

00000d34 <GfxPrint_VPrintf>:
 d34:	27bdffe8 	addiu	sp,sp,-24
 d38:	afbf0014 	sw	ra,20(sp)
 d3c:	0c000000 	jal	0 <GfxPrint_InitDlist>
 d40:	00000000 	nop
 d44:	8fbf0014 	lw	ra,20(sp)
 d48:	27bd0018 	addiu	sp,sp,24
 d4c:	03e00008 	jr	ra
 d50:	00000000 	nop

00000d54 <GfxPrint_Printf>:
 d54:	27bdffe0 	addiu	sp,sp,-32
 d58:	afbf0014 	sw	ra,20(sp)
 d5c:	afa60028 	sw	a2,40(sp)
 d60:	afa50024 	sw	a1,36(sp)
 d64:	afa7002c 	sw	a3,44(sp)
 d68:	0c000000 	jal	0 <GfxPrint_InitDlist>
 d6c:	27a60028 	addiu	a2,sp,40
 d70:	8fbf0014 	lw	ra,20(sp)
 d74:	27bd0020 	addiu	sp,sp,32
 d78:	03e00008 	jr	ra
 d7c:	00000000 	nop
