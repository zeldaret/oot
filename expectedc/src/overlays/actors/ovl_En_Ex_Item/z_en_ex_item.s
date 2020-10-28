
build/src/overlays/actors/ovl_En_Ex_Item/z_en_ex_item.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnExItem_Destroy>:
   0:	afa40000 	sw	a0,0(sp)
   4:	03e00008 	jr	ra
   8:	afa50004 	sw	a1,4(sp)

0000000c <EnExItem_Init>:
   c:	27bdffe0 	addiu	sp,sp,-32
  10:	afbf001c 	sw	ra,28(sp)
  14:	afb00018 	sw	s0,24(sp)
  18:	afa50024 	sw	a1,36(sp)
  1c:	8482001c 	lh	v0,28(a0)
  20:	8c8e0004 	lw	t6,4(a0)
  24:	2401fffe 	li	at,-2
  28:	0002ca03 	sra	t9,v0,0x8
  2c:	332800ff 	andi	t0,t9,0xff
  30:	305800ff 	andi	t8,v0,0xff
  34:	01c17824 	and	t7,t6,at
  38:	00808025 	move	s0,a0
  3c:	ac8f0004 	sw	t7,4(a0)
  40:	a4980152 	sh	t8,338(a0)
  44:	a4880154 	sh	t0,340(a0)
  48:	3c040000 	lui	a0,0x0
  4c:	0c000000 	jal	0 <EnExItem_Destroy>
  50:	24840000 	addiu	a0,a0,0
  54:	3c040000 	lui	a0,0x0
  58:	24840000 	addiu	a0,a0,0
  5c:	0c000000 	jal	0 <EnExItem_Destroy>
  60:	86050152 	lh	a1,338(s0)
  64:	3c040000 	lui	a0,0x0
  68:	24840000 	addiu	a0,a0,0
  6c:	0c000000 	jal	0 <EnExItem_Destroy>
  70:	86050154 	lh	a1,340(s0)
  74:	8e0a0024 	lw	t2,36(s0)
  78:	960c0152 	lhu	t4,338(s0)
  7c:	8e090028 	lw	t1,40(s0)
  80:	ae0a0170 	sw	t2,368(s0)
  84:	8e0a002c 	lw	t2,44(s0)
  88:	240bffff 	li	t3,-1
  8c:	2d810014 	sltiu	at,t4,20
  90:	a60b0150 	sh	t3,336(s0)
  94:	ae090174 	sw	t1,372(s0)
  98:	10200027 	beqz	at,138 <L80A08FD0+0x8>
  9c:	ae0a0178 	sw	t2,376(s0)
  a0:	000c6080 	sll	t4,t4,0x2
  a4:	3c010000 	lui	at,0x0
  a8:	002c0821 	addu	at,at,t4
  ac:	8c2c0000 	lw	t4,0(at)
  b0:	01800008 	jr	t4
  b4:	00000000 	nop

000000b8 <L80A08F58>:
  b8:	240d00bf 	li	t5,191
  bc:	1000001e 	b	138 <L80A08FD0+0x8>
  c0:	a60d0150 	sh	t5,336(s0)

000000c4 <L80A08F64>:
  c4:	240e00bd 	li	t6,189
  c8:	1000001b 	b	138 <L80A08FD0+0x8>
  cc:	a60e0150 	sh	t6,336(s0)

000000d0 <L80A08F70>:
  d0:	240f00d9 	li	t7,217
  d4:	10000018 	b	138 <L80A08FD0+0x8>
  d8:	a60f0150 	sh	t7,336(s0)

000000dc <L80A08F7C>:
  dc:	241800ce 	li	t8,206
  e0:	10000015 	b	138 <L80A08FD0+0x8>
  e4:	a6180150 	sh	t8,336(s0)

000000e8 <L80A08F88>:
  e8:	2419017f 	li	t9,383
  ec:	10000012 	b	138 <L80A08FD0+0x8>
  f0:	a6190150 	sh	t9,336(s0)

000000f4 <L80A08F94>:
  f4:	3c010000 	lui	at,0x0
  f8:	c4240000 	lwc1	$f4,0(at)
  fc:	3c014120 	lui	at,0x4120
 100:	44813000 	mtc1	at,$f6
 104:	3c090000 	lui	t1,0x0
 108:	24080007 	li	t0,7
 10c:	25290000 	addiu	t1,t1,0
 110:	a608015a 	sh	t0,346(s0)
 114:	ae09014c 	sw	t1,332(s0)
 118:	e6040164 	swc1	$f4,356(s0)
 11c:	10000006 	b	138 <L80A08FD0+0x8>
 120:	e6060060 	swc1	$f6,96(s0)

00000124 <L80A08FC4>:
 124:	240a015d 	li	t2,349
 128:	10000003 	b	138 <L80A08FD0+0x8>
 12c:	a60a0150 	sh	t2,336(s0)

00000130 <L80A08FD0>:
 130:	240b017b 	li	t3,379
 134:	a60b0150 	sh	t3,336(s0)
 138:	86050150 	lh	a1,336(s0)
 13c:	3c010001 	lui	at,0x1
 140:	342117a4 	ori	at,at,0x17a4
 144:	04a00016 	bltz	a1,1a0 <L80A08FD0+0x70>
 148:	8fa40024 	lw	a0,36(sp)
 14c:	0c000000 	jal	0 <EnExItem_Destroy>
 150:	00812021 	addu	a0,a0,at
 154:	a202016c 	sb	v0,364(s0)
 158:	820c016c 	lb	t4,364(s0)
 15c:	3c0d0000 	lui	t5,0x0
 160:	ae000134 	sw	zero,308(s0)
 164:	0581000d 	bgez	t4,19c <L80A08FD0+0x6c>
 168:	25ad0000 	addiu	t5,t5,0
 16c:	0c000000 	jal	0 <EnExItem_Destroy>
 170:	02002025 	move	a0,s0
 174:	3c040000 	lui	a0,0x0
 178:	24840000 	addiu	a0,a0,0
 17c:	0c000000 	jal	0 <EnExItem_Destroy>
 180:	8605001c 	lh	a1,28(s0)
 184:	3c040000 	lui	a0,0x0
 188:	24840000 	addiu	a0,a0,0
 18c:	0c000000 	jal	0 <EnExItem_Destroy>
 190:	8605001c 	lh	a1,28(s0)
 194:	10000003 	b	1a4 <L80A08FD0+0x74>
 198:	8fbf001c 	lw	ra,28(sp)
 19c:	ae0d014c 	sw	t5,332(s0)
 1a0:	8fbf001c 	lw	ra,28(sp)
 1a4:	8fb00018 	lw	s0,24(sp)
 1a8:	27bd0020 	addiu	sp,sp,32
 1ac:	03e00008 	jr	ra
 1b0:	00000000 	nop

000001b4 <func_80A09054>:
 1b4:	3c010001 	lui	at,0x1
 1b8:	27bdffe8 	addiu	sp,sp,-24
 1bc:	00803025 	move	a2,a0
 1c0:	342117a4 	ori	at,at,0x17a4
 1c4:	afbf0014 	sw	ra,20(sp)
 1c8:	00a12021 	addu	a0,a1,at
 1cc:	80c5016c 	lb	a1,364(a2)
 1d0:	0c000000 	jal	0 <EnExItem_Destroy>
 1d4:	afa60018 	sw	a2,24(sp)
 1d8:	104000ea 	beqz	v0,584 <L80A09424>
 1dc:	8fa60018 	lw	a2,24(sp)
 1e0:	3c040000 	lui	a0,0x0
 1e4:	84c5001c 	lh	a1,28(a2)
 1e8:	afa60018 	sw	a2,24(sp)
 1ec:	0c000000 	jal	0 <EnExItem_Destroy>
 1f0:	24840000 	addiu	a0,a0,0
 1f4:	8fa60018 	lw	a2,24(sp)
 1f8:	3c040000 	lui	a0,0x0
 1fc:	24840000 	addiu	a0,a0,0
 200:	0c000000 	jal	0 <EnExItem_Destroy>
 204:	84c5001c 	lh	a1,28(a2)
 208:	8fa60018 	lw	a2,24(sp)
 20c:	3c040000 	lui	a0,0x0
 210:	24840000 	addiu	a0,a0,0
 214:	0c000000 	jal	0 <EnExItem_Destroy>
 218:	84c5001c 	lh	a1,28(a2)
 21c:	8fa60018 	lw	a2,24(sp)
 220:	3c040000 	lui	a0,0x0
 224:	24840000 	addiu	a0,a0,0
 228:	0c000000 	jal	0 <EnExItem_Destroy>
 22c:	84c5001c 	lh	a1,28(a2)
 230:	8fa60018 	lw	a2,24(sp)
 234:	3c040000 	lui	a0,0x0
 238:	24840000 	addiu	a0,a0,0
 23c:	0c000000 	jal	0 <EnExItem_Destroy>
 240:	84c5001c 	lh	a1,28(a2)
 244:	8fa60018 	lw	a2,24(sp)
 248:	3c0f0000 	lui	t7,0x0
 24c:	25ef0000 	addiu	t7,t7,0
 250:	84c30152 	lh	v1,338(a2)
 254:	80ce016c 	lb	t6,364(a2)
 258:	00001025 	move	v0,zero
 25c:	2c610014 	sltiu	at,v1,20
 260:	accf0134 	sw	t7,308(a2)
 264:	a4c00158 	sh	zero,344(a2)
 268:	102000c6 	beqz	at,584 <L80A09424>
 26c:	a0ce001e 	sb	t6,30(a2)
 270:	0003c080 	sll	t8,v1,0x2
 274:	3c010000 	lui	at,0x0
 278:	00380821 	addu	at,at,t8
 27c:	8c380000 	lw	t8,0(at)
 280:	03000008 	jr	t8
 284:	00000000 	nop

00000288 <L80A09128>:
 288:	24020001 	li	v0,1

0000028c <L80A0912C>:
 28c:	3c013f00 	lui	at,0x3f00
 290:	44810000 	mtc1	at,$f0
 294:	3c190000 	lui	t9,0x0
 298:	27390000 	addiu	t9,t9,0
 29c:	24080018 	li	t0,24
 2a0:	24090041 	li	t1,65
 2a4:	240a0023 	li	t2,35
 2a8:	acd9017c 	sw	t9,380(a2)
 2ac:	a4c80156 	sh	t0,342(a2)
 2b0:	a4c9015a 	sh	t1,346(a2)
 2b4:	a4ca015e 	sh	t2,350(a2)
 2b8:	14400005 	bnez	v0,2d0 <L80A0912C+0x44>
 2bc:	e4c00164 	swc1	$f0,356(a2)
 2c0:	3c0b0000 	lui	t3,0x0
 2c4:	256b0000 	addiu	t3,t3,0
 2c8:	100000ae 	b	584 <L80A09424>
 2cc:	accb014c 	sw	t3,332(a2)
 2d0:	3c01c190 	lui	at,0xc190
 2d4:	44812000 	mtc1	at,$f4
 2d8:	3c0c0000 	lui	t4,0x0
 2dc:	258c0000 	addiu	t4,t4,0
 2e0:	accc014c 	sw	t4,332(a2)
 2e4:	100000a7 	b	584 <L80A09424>
 2e8:	e4c400bc 	swc1	$f4,188(a2)

000002ec <L80A0918C>:
 2ec:	24020001 	li	v0,1

000002f0 <L80A09190>:
 2f0:	3c013f00 	lui	at,0x3f00
 2f4:	44810000 	mtc1	at,$f0
 2f8:	3c0d0000 	lui	t5,0x0
 2fc:	25ad0000 	addiu	t5,t5,0
 300:	240e0041 	li	t6,65
 304:	240f0023 	li	t7,35
 308:	accd017c 	sw	t5,380(a2)
 30c:	a4ce015a 	sh	t6,346(a2)
 310:	a4cf015e 	sh	t7,350(a2)
 314:	14400009 	bnez	v0,33c <L80A09190+0x4c>
 318:	e4c00164 	swc1	$f0,356(a2)
 31c:	24044823 	li	a0,18467
 320:	0c000000 	jal	0 <EnExItem_Destroy>
 324:	afa60018 	sw	a2,24(sp)
 328:	8fa60018 	lw	a2,24(sp)
 32c:	3c180000 	lui	t8,0x0
 330:	27180000 	addiu	t8,t8,0
 334:	10000093 	b	584 <L80A09424>
 338:	acd8014c 	sw	t8,332(a2)
 33c:	3c01c120 	lui	at,0xc120
 340:	44813000 	mtc1	at,$f6
 344:	3c190000 	lui	t9,0x0
 348:	27390000 	addiu	t9,t9,0
 34c:	acd9014c 	sw	t9,332(a2)
 350:	1000008c 	b	584 <L80A09424>
 354:	e4c600bc 	swc1	$f6,188(a2)

00000358 <L80A091F8>:
 358:	24020001 	li	v0,1

0000035c <L80A091FC>:
 35c:	3c013f00 	lui	at,0x3f00
 360:	44810000 	mtc1	at,$f0
 364:	3c080000 	lui	t0,0x0
 368:	25080000 	addiu	t0,t0,0
 36c:	24090027 	li	t1,39
 370:	240a0041 	li	t2,65
 374:	240b0023 	li	t3,35
 378:	acc8017c 	sw	t0,380(a2)
 37c:	a4c90156 	sh	t1,342(a2)
 380:	a4ca015a 	sh	t2,346(a2)
 384:	a4cb015e 	sh	t3,350(a2)
 388:	14400005 	bnez	v0,3a0 <L80A091FC+0x44>
 38c:	e4c00164 	swc1	$f0,356(a2)
 390:	3c0c0000 	lui	t4,0x0
 394:	258c0000 	addiu	t4,t4,0
 398:	1000007a 	b	584 <L80A09424>
 39c:	accc014c 	sw	t4,332(a2)
 3a0:	3c0d0000 	lui	t5,0x0
 3a4:	25ad0000 	addiu	t5,t5,0
 3a8:	10000076 	b	584 <L80A09424>
 3ac:	accd014c 	sw	t5,332(a2)

000003b0 <L80A09250>:
 3b0:	3c013f00 	lui	at,0x3f00
 3b4:	44810000 	mtc1	at,$f0
 3b8:	3c0e0000 	lui	t6,0x0
 3bc:	25ce0000 	addiu	t6,t6,0
 3c0:	240f001f 	li	t7,31
 3c4:	24180041 	li	t8,65
 3c8:	24190023 	li	t9,35
 3cc:	24010003 	li	at,3
 3d0:	acce017c 	sw	t6,380(a2)
 3d4:	a4cf0156 	sh	t7,342(a2)
 3d8:	a4d8015a 	sh	t8,346(a2)
 3dc:	a4d9015e 	sh	t9,350(a2)
 3e0:	e4c00164 	swc1	$f0,356(a2)
 3e4:	14610005 	bne	v1,at,3fc <L80A09250+0x4c>
 3e8:	e4c00168 	swc1	$f0,360(a2)
 3ec:	3c080000 	lui	t0,0x0
 3f0:	25080000 	addiu	t0,t0,0
 3f4:	10000063 	b	584 <L80A09424>
 3f8:	acc8014c 	sw	t0,332(a2)
 3fc:	3c014120 	lui	at,0x4120
 400:	44814000 	mtc1	at,$f8
 404:	3c090000 	lui	t1,0x0
 408:	25290000 	addiu	t1,t1,0
 40c:	acc9014c 	sw	t1,332(a2)
 410:	1000005c 	b	584 <L80A09424>
 414:	e4c800bc 	swc1	$f8,188(a2)

00000418 <L80A092B8>:
 418:	3c013f00 	lui	at,0x3f00
 41c:	44810000 	mtc1	at,$f0
 420:	3c0a0000 	lui	t2,0x0
 424:	3c0b0000 	lui	t3,0x0
 428:	254a0000 	addiu	t2,t2,0
 42c:	256b0000 	addiu	t3,t3,0
 430:	240c0070 	li	t4,112
 434:	240d0041 	li	t5,65
 438:	240e0023 	li	t6,35
 43c:	24010004 	li	at,4
 440:	acca017c 	sw	t2,380(a2)
 444:	accb0180 	sw	t3,384(a2)
 448:	a4cc0156 	sh	t4,342(a2)
 44c:	a4cd015a 	sh	t5,346(a2)
 450:	a4ce015e 	sh	t6,350(a2)
 454:	e4c00164 	swc1	$f0,356(a2)
 458:	14610005 	bne	v1,at,470 <L80A092B8+0x58>
 45c:	e4c00168 	swc1	$f0,360(a2)
 460:	3c0f0000 	lui	t7,0x0
 464:	25ef0000 	addiu	t7,t7,0
 468:	10000046 	b	584 <L80A09424>
 46c:	accf014c 	sw	t7,332(a2)
 470:	3c014220 	lui	at,0x4220
 474:	44815000 	mtc1	at,$f10
 478:	3c180000 	lui	t8,0x0
 47c:	27180000 	addiu	t8,t8,0
 480:	acd8014c 	sw	t8,332(a2)
 484:	1000003f 	b	584 <L80A09424>
 488:	e4ca00bc 	swc1	$f10,188(a2)

0000048c <L80A0932C>:
 48c:	3c013f00 	lui	at,0x3f00
 490:	44810000 	mtc1	at,$f0
 494:	3c014120 	lui	at,0x4120
 498:	44818000 	mtc1	at,$f16
 49c:	3c190000 	lui	t9,0x0
 4a0:	3c080000 	lui	t0,0x0
 4a4:	27390000 	addiu	t9,t9,0
 4a8:	25080000 	addiu	t0,t0,0
 4ac:	24090007 	li	t1,7
 4b0:	2401000a 	li	at,10
 4b4:	acd9017c 	sw	t9,380(a2)
 4b8:	acc80180 	sw	t0,384(a2)
 4bc:	a4c9015a 	sh	t1,346(a2)
 4c0:	e4c00164 	swc1	$f0,356(a2)
 4c4:	e4c00168 	swc1	$f0,360(a2)
 4c8:	1061000c 	beq	v1,at,4fc <L80A0932C+0x70>
 4cc:	e4d00060 	swc1	$f16,96(a2)
 4d0:	2401000b 	li	at,11
 4d4:	1061000c 	beq	v1,at,508 <L80A0932C+0x7c>
 4d8:	240b006d 	li	t3,109
 4dc:	2401000c 	li	at,12
 4e0:	1061000b 	beq	v1,at,510 <L80A0932C+0x84>
 4e4:	240c006e 	li	t4,110
 4e8:	2401000e 	li	at,14
 4ec:	1061000a 	beq	v1,at,518 <L80A0932C+0x8c>
 4f0:	240d0070 	li	t5,112
 4f4:	10000009 	b	51c <L80A0932C+0x90>
 4f8:	00000000 	nop
 4fc:	240a006c 	li	t2,108
 500:	10000006 	b	51c <L80A0932C+0x90>
 504:	a4ca0156 	sh	t2,342(a2)
 508:	10000004 	b	51c <L80A0932C+0x90>
 50c:	a4cb0156 	sh	t3,342(a2)
 510:	10000002 	b	51c <L80A0932C+0x90>
 514:	a4cc0156 	sh	t4,342(a2)
 518:	a4cd0156 	sh	t5,342(a2)
 51c:	3c0e0000 	lui	t6,0x0
 520:	25ce0000 	addiu	t6,t6,0
 524:	10000017 	b	584 <L80A09424>
 528:	acce014c 	sw	t6,332(a2)

0000052c <L80A093CC>:
 52c:	3c010000 	lui	at,0x0
 530:	c4320000 	lwc1	$f18,0(at)
 534:	3c0f0000 	lui	t7,0x0
 538:	25ef0000 	addiu	t7,t7,0
 53c:	accf014c 	sw	t7,332(a2)
 540:	10000010 	b	584 <L80A09424>
 544:	e4d20164 	swc1	$f18,356(a2)

00000548 <L80A093E8>:
 548:	3c180000 	lui	t8,0x0
 54c:	27180000 	addiu	t8,t8,0
 550:	2419006b 	li	t9,107
 554:	acd8017c 	sw	t8,380(a2)
 558:	a4d90156 	sh	t9,342(a2)
 55c:	3c010000 	lui	at,0x0
 560:	c4240000 	lwc1	$f4,0(at)
 564:	3c0a0000 	lui	t2,0x0
 568:	24080050 	li	t0,80
 56c:	24090023 	li	t1,35
 570:	254a0000 	addiu	t2,t2,0
 574:	a4c8015a 	sh	t0,346(a2)
 578:	a4c9015e 	sh	t1,350(a2)
 57c:	acca014c 	sw	t2,332(a2)
 580:	e4c40164 	swc1	$f4,356(a2)

00000584 <L80A09424>:
 584:	8fbf0014 	lw	ra,20(sp)
 588:	27bd0018 	addiu	sp,sp,24
 58c:	03e00008 	jr	ra
 590:	00000000 	nop

00000594 <func_80A09434>:
 594:	27bdffa0 	addiu	sp,sp,-96
 598:	afbf0024 	sw	ra,36(sp)
 59c:	afb10020 	sw	s1,32(sp)
 5a0:	afb0001c 	sw	s0,28(sp)
 5a4:	84880158 	lh	t0,344(a0)
 5a8:	00a08825 	move	s1,a1
 5ac:	00808025 	move	s0,a0
 5b0:	1500000f 	bnez	t0,5f0 <func_80A09434+0x5c>
 5b4:	00002825 	move	a1,zero
 5b8:	848900b6 	lh	t1,182(a0)
 5bc:	848b015e 	lh	t3,350(a0)
 5c0:	252a1000 	addiu	t2,t1,4096
 5c4:	1560000f 	bnez	t3,604 <func_80A09434+0x70>
 5c8:	a48a00b6 	sh	t2,182(a0)
 5cc:	848c00b6 	lh	t4,182(a0)
 5d0:	34019000 	li	at,0x9000
 5d4:	318dffff 	andi	t5,t4,0xffff
 5d8:	55a1000b 	bnel	t5,at,608 <func_80A09434+0x74>
 5dc:	8618015a 	lh	t8,346(s0)
 5e0:	848e0158 	lh	t6,344(a0)
 5e4:	25cf0001 	addiu	t7,t6,1
 5e8:	10000006 	b	604 <func_80A09434+0x70>
 5ec:	a48f0158 	sh	t7,344(a0)
 5f0:	260400b6 	addiu	a0,s0,182
 5f4:	24060005 	li	a2,5
 5f8:	24071000 	li	a3,4096
 5fc:	0c000000 	jal	0 <EnExItem_Destroy>
 600:	afa00010 	sw	zero,16(sp)
 604:	8618015a 	lh	t8,346(s0)
 608:	3c040000 	lui	a0,0x0
 60c:	24840000 	addiu	a0,a0,0
 610:	1300004e 	beqz	t8,74c <func_80A09434+0x1b8>
 614:	00000000 	nop
 618:	8619015e 	lh	t9,350(s0)
 61c:	3c01437a 	lui	at,0x437a
 620:	5320005e 	beqzl	t9,79c <func_80A09434+0x208>
 624:	8fbf0024 	lw	ra,36(sp)
 628:	44815000 	mtc1	at,$f10
 62c:	24010002 	li	at,2
 630:	e7aa003c 	swc1	$f10,60(sp)
 634:	86080152 	lh	t0,338(s0)
 638:	15010004 	bne	t0,at,64c <func_80A09434+0xb8>
 63c:	3c01435c 	lui	at,0x435c
 640:	44812000 	mtc1	at,$f4
 644:	00000000 	nop
 648:	e7a4003c 	swc1	$f4,60(sp)
 64c:	c62c00e0 	lwc1	$f12,224(s1)
 650:	c62800ec 	lwc1	$f8,236(s1)
 654:	c62a00e8 	lwc1	$f10,232(s1)
 658:	c63000e4 	lwc1	$f16,228(s1)
 65c:	c62600f0 	lwc1	$f6,240(s1)
 660:	460c4081 	sub.s	$f2,$f8,$f12
 664:	e7aa0038 	swc1	$f10,56(sp)
 668:	c62400f4 	lwc1	$f4,244(s1)
 66c:	c7a8003c 	lwc1	$f8,60(sp)
 670:	46103381 	sub.s	$f14,$f6,$f16
 674:	c7aa0038 	lwc1	$f10,56(sp)
 678:	3c0140a0 	lui	at,0x40a0
 67c:	46082180 	add.s	$f6,$f4,$f8
 680:	46021102 	mul.s	$f4,$f2,$f2
 684:	00000000 	nop
 688:	460e7202 	mul.s	$f8,$f14,$f14
 68c:	460a3481 	sub.s	$f18,$f6,$f10
 690:	46082180 	add.s	$f6,$f4,$f8
 694:	46129102 	mul.s	$f4,$f18,$f18
 698:	46043000 	add.s	$f0,$f6,$f4
 69c:	44813000 	mtc1	at,$f6
 6a0:	46000004 	sqrt.s	$f0,$f0
 6a4:	46009203 	div.s	$f8,$f18,$f0
 6a8:	46064102 	mul.s	$f4,$f8,$f6
 6ac:	46001183 	div.s	$f6,$f2,$f0
 6b0:	e7a40040 	swc1	$f4,64(sp)
 6b4:	c6080024 	lwc1	$f8,36(s0)
 6b8:	e7a80034 	swc1	$f8,52(sp)
 6bc:	44814000 	mtc1	at,$f8
 6c0:	00000000 	nop
 6c4:	46083182 	mul.s	$f6,$f6,$f8
 6c8:	46066200 	add.s	$f8,$f12,$f6
 6cc:	c7a60034 	lwc1	$f6,52(sp)
 6d0:	46064081 	sub.s	$f2,$f8,$f6
 6d4:	c6080028 	lwc1	$f8,40(s0)
 6d8:	e7aa0028 	swc1	$f10,40(sp)
 6dc:	44815000 	mtc1	at,$f10
 6e0:	e7a80030 	swc1	$f8,48(sp)
 6e4:	46007203 	div.s	$f8,$f14,$f0
 6e8:	c60c002c 	lwc1	$f12,44(s0)
 6ec:	460a4202 	mul.s	$f8,$f8,$f10
 6f0:	46088280 	add.s	$f10,$f16,$f8
 6f4:	c7a80030 	lwc1	$f8,48(sp)
 6f8:	46085381 	sub.s	$f14,$f10,$f8
 6fc:	c7aa0028 	lwc1	$f10,40(sp)
 700:	46045200 	add.s	$f8,$f10,$f4
 704:	44812000 	mtc1	at,$f4
 708:	46001283 	div.s	$f10,$f2,$f0
 70c:	460c4481 	sub.s	$f18,$f8,$f12
 710:	46045202 	mul.s	$f8,$f10,$f4
 714:	46007103 	div.s	$f4,$f14,$f0
 718:	46083280 	add.s	$f10,$f6,$f8
 71c:	44813000 	mtc1	at,$f6
 720:	e60a0024 	swc1	$f10,36(s0)
 724:	c7aa0030 	lwc1	$f10,48(sp)
 728:	46062202 	mul.s	$f8,$f4,$f6
 72c:	46009183 	div.s	$f6,$f18,$f0
 730:	46085100 	add.s	$f4,$f10,$f8
 734:	44815000 	mtc1	at,$f10
 738:	e6040028 	swc1	$f4,40(s0)
 73c:	460a3202 	mul.s	$f8,$f6,$f10
 740:	46086100 	add.s	$f4,$f12,$f8
 744:	10000014 	b	798 <func_80A09434+0x204>
 748:	e604002c 	swc1	$f4,44(s0)
 74c:	0c000000 	jal	0 <EnExItem_Destroy>
 750:	8e050118 	lw	a1,280(s0)
 754:	8e090118 	lw	t1,280(s0)
 758:	3c040000 	lui	a0,0x0
 75c:	24840000 	addiu	a0,a0,0
 760:	0c000000 	jal	0 <EnExItem_Destroy>
 764:	8d250130 	lw	a1,304(t1)
 768:	8e020118 	lw	v0,280(s0)
 76c:	10400008 	beqz	v0,790 <func_80A09434+0x1fc>
 770:	00000000 	nop
 774:	8c4a0130 	lw	t2,304(v0)
 778:	3c040000 	lui	a0,0x0
 77c:	240b0001 	li	t3,1
 780:	11400003 	beqz	t2,790 <func_80A09434+0x1fc>
 784:	24840000 	addiu	a0,a0,0
 788:	0c000000 	jal	0 <EnExItem_Destroy>
 78c:	a44b0156 	sh	t3,342(v0)
 790:	0c000000 	jal	0 <EnExItem_Destroy>
 794:	02002025 	move	a0,s0
 798:	8fbf0024 	lw	ra,36(sp)
 79c:	8fb0001c 	lw	s0,28(sp)
 7a0:	8fb10020 	lw	s1,32(sp)
 7a4:	03e00008 	jr	ra
 7a8:	27bd0060 	addiu	sp,sp,96

000007ac <func_80A0964C>:
 7ac:	afa50004 	sw	a1,4(sp)
 7b0:	240e4268 	li	t6,17000
 7b4:	a48e00b6 	sh	t6,182(a0)
 7b8:	848f00b6 	lh	t7,182(a0)
 7bc:	3c180000 	lui	t8,0x0
 7c0:	27180000 	addiu	t8,t8,0
 7c4:	ac98014c 	sw	t8,332(a0)
 7c8:	03e00008 	jr	ra
 7cc:	a48f0032 	sh	t7,50(a0)

000007d0 <func_80A09670>:
 7d0:	27bdffe8 	addiu	sp,sp,-24
 7d4:	afbf0014 	sw	ra,20(sp)
 7d8:	afa5001c 	sw	a1,28(sp)
 7dc:	848e00b6 	lh	t6,182(a0)
 7e0:	84980160 	lh	t8,352(a0)
 7e4:	25cf0800 	addiu	t7,t6,2048
 7e8:	13000003 	beqz	t8,7f8 <func_80A09670+0x28>
 7ec:	a48f00b6 	sh	t7,182(a0)
 7f0:	0c000000 	jal	0 <EnExItem_Destroy>
 7f4:	00000000 	nop
 7f8:	8fbf0014 	lw	ra,20(sp)
 7fc:	27bd0018 	addiu	sp,sp,24
 800:	03e00008 	jr	ra
 804:	00000000 	nop

00000808 <func_80A096A8>:
 808:	27bdffe8 	addiu	sp,sp,-24
 80c:	afbf0014 	sw	ra,20(sp)
 810:	afa5001c 	sw	a1,28(sp)
 814:	848e00b6 	lh	t6,182(a0)
 818:	8482015a 	lh	v0,346(a0)
 81c:	24010001 	li	at,1
 820:	25cf1000 	addiu	t7,t6,4096
 824:	10400005 	beqz	v0,83c <func_80A096A8+0x34>
 828:	a48f00b6 	sh	t7,182(a0)
 82c:	1441000a 	bne	v0,at,858 <func_80A096A8+0x50>
 830:	24180014 	li	t8,20
 834:	10000008 	b	858 <func_80A096A8+0x50>
 838:	a498015c 	sh	t8,348(a0)
 83c:	8499015c 	lh	t9,348(a0)
 840:	44802000 	mtc1	zero,$f4
 844:	17200004 	bnez	t9,858 <func_80A096A8+0x50>
 848:	e4840060 	swc1	$f4,96(a0)
 84c:	0c000000 	jal	0 <EnExItem_Destroy>
 850:	afa40018 	sw	a0,24(sp)
 854:	8fa40018 	lw	a0,24(sp)
 858:	0c000000 	jal	0 <EnExItem_Destroy>
 85c:	00000000 	nop
 860:	8fbf0014 	lw	ra,20(sp)
 864:	27bd0018 	addiu	sp,sp,24
 868:	03e00008 	jr	ra
 86c:	00000000 	nop

00000870 <func_80A09710>:
 870:	afa50004 	sw	a1,4(sp)
 874:	848e00b6 	lh	t6,182(a0)
 878:	25cf0800 	addiu	t7,t6,2048
 87c:	03e00008 	jr	ra
 880:	a48f00b6 	sh	t7,182(a0)

00000884 <func_80A09724>:
 884:	27bdffa0 	addiu	sp,sp,-96
 888:	afb10020 	sw	s1,32(sp)
 88c:	00a08825 	move	s1,a1
 890:	afb0001c 	sw	s0,28(sp)
 894:	00808025 	move	s0,a0
 898:	afbf0024 	sw	ra,36(sp)
 89c:	3c053f4c 	lui	a1,0x3f4c
 8a0:	3c063dcc 	lui	a2,0x3dcc
 8a4:	3c073ca3 	lui	a3,0x3ca3
 8a8:	34e7d70a 	ori	a3,a3,0xd70a
 8ac:	34c6cccd 	ori	a2,a2,0xcccd
 8b0:	34a5cccd 	ori	a1,a1,0xcccd
 8b4:	0c000000 	jal	0 <EnExItem_Destroy>
 8b8:	24840164 	addiu	a0,a0,356
 8bc:	860a0158 	lh	t2,344(s0)
 8c0:	260400b6 	addiu	a0,s0,182
 8c4:	2405c000 	li	a1,-16384
 8c8:	1540000f 	bnez	t2,908 <func_80A09724+0x84>
 8cc:	24060005 	li	a2,5
 8d0:	860b00b6 	lh	t3,182(s0)
 8d4:	860d015e 	lh	t5,350(s0)
 8d8:	256c1000 	addiu	t4,t3,4096
 8dc:	15a0000d 	bnez	t5,914 <func_80A09724+0x90>
 8e0:	a60c00b6 	sh	t4,182(s0)
 8e4:	860e00b6 	lh	t6,182(s0)
 8e8:	34019000 	li	at,0x9000
 8ec:	31cfffff 	andi	t7,t6,0xffff
 8f0:	55e10009 	bnel	t7,at,918 <func_80A09724+0x94>
 8f4:	8608015a 	lh	t0,346(s0)
 8f8:	86180158 	lh	t8,344(s0)
 8fc:	27190001 	addiu	t9,t8,1
 900:	10000004 	b	914 <func_80A09724+0x90>
 904:	a6190158 	sh	t9,344(s0)
 908:	24071000 	li	a3,4096
 90c:	0c000000 	jal	0 <EnExItem_Destroy>
 910:	afa00010 	sw	zero,16(sp)
 914:	8608015a 	lh	t0,346(s0)
 918:	02202025 	move	a0,s1
 91c:	00002825 	move	a1,zero
 920:	1100004e 	beqz	t0,a5c <func_80A09724+0x1d8>
 924:	24060007 	li	a2,7
 928:	8609015e 	lh	t1,350(s0)
 92c:	3c014120 	lui	at,0x4120
 930:	51200065 	beqzl	t1,ac8 <func_80A09724+0x244>
 934:	8fbf0024 	lw	ra,36(sp)
 938:	c62c00e0 	lwc1	$f12,224(s1)
 93c:	c62400ec 	lwc1	$f4,236(s1)
 940:	c62800f0 	lwc1	$f8,240(s1)
 944:	44813000 	mtc1	at,$f6
 948:	460c2081 	sub.s	$f2,$f4,$f12
 94c:	c62400e8 	lwc1	$f4,232(s1)
 950:	c63000e4 	lwc1	$f16,228(s1)
 954:	46064281 	sub.s	$f10,$f8,$f6
 958:	e7a4003c 	swc1	$f4,60(sp)
 95c:	c62800f4 	lwc1	$f8,244(s1)
 960:	44813000 	mtc1	at,$f6
 964:	46105381 	sub.s	$f14,$f10,$f16
 968:	c7a4003c 	lwc1	$f4,60(sp)
 96c:	3c0140a0 	lui	at,0x40a0
 970:	46064280 	add.s	$f10,$f8,$f6
 974:	46021202 	mul.s	$f8,$f2,$f2
 978:	00000000 	nop
 97c:	460e7182 	mul.s	$f6,$f14,$f14
 980:	46045481 	sub.s	$f18,$f10,$f4
 984:	46064280 	add.s	$f10,$f8,$f6
 988:	46129202 	mul.s	$f8,$f18,$f18
 98c:	46085000 	add.s	$f0,$f10,$f8
 990:	44815000 	mtc1	at,$f10
 994:	46000004 	sqrt.s	$f0,$f0
 998:	46009183 	div.s	$f6,$f18,$f0
 99c:	460a3202 	mul.s	$f8,$f6,$f10
 9a0:	46001283 	div.s	$f10,$f2,$f0
 9a4:	e7a80044 	swc1	$f8,68(sp)
 9a8:	c6060024 	lwc1	$f6,36(s0)
 9ac:	e7a60038 	swc1	$f6,56(sp)
 9b0:	44813000 	mtc1	at,$f6
 9b4:	00000000 	nop
 9b8:	46065282 	mul.s	$f10,$f10,$f6
 9bc:	460a6180 	add.s	$f6,$f12,$f10
 9c0:	c7aa0038 	lwc1	$f10,56(sp)
 9c4:	460a3081 	sub.s	$f2,$f6,$f10
 9c8:	c6060028 	lwc1	$f6,40(s0)
 9cc:	e7a40028 	swc1	$f4,40(sp)
 9d0:	44812000 	mtc1	at,$f4
 9d4:	e7a60034 	swc1	$f6,52(sp)
 9d8:	46007183 	div.s	$f6,$f14,$f0
 9dc:	3c014120 	lui	at,0x4120
 9e0:	c60c002c 	lwc1	$f12,44(s0)
 9e4:	46043182 	mul.s	$f6,$f6,$f4
 9e8:	44812000 	mtc1	at,$f4
 9ec:	00000000 	nop
 9f0:	46048101 	sub.s	$f4,$f16,$f4
 9f4:	46062100 	add.s	$f4,$f4,$f6
 9f8:	c7a60034 	lwc1	$f6,52(sp)
 9fc:	46062381 	sub.s	$f14,$f4,$f6
 a00:	44813000 	mtc1	at,$f6
 a04:	c7a40028 	lwc1	$f4,40(sp)
 a08:	3c0140a0 	lui	at,0x40a0
 a0c:	46062100 	add.s	$f4,$f4,$f6
 a10:	46082180 	add.s	$f6,$f4,$f8
 a14:	44814000 	mtc1	at,$f8
 a18:	46001103 	div.s	$f4,$f2,$f0
 a1c:	460c3481 	sub.s	$f18,$f6,$f12
 a20:	46082182 	mul.s	$f6,$f4,$f8
 a24:	46007203 	div.s	$f8,$f14,$f0
 a28:	46065100 	add.s	$f4,$f10,$f6
 a2c:	44815000 	mtc1	at,$f10
 a30:	e6040024 	swc1	$f4,36(s0)
 a34:	c7a40034 	lwc1	$f4,52(sp)
 a38:	460a4182 	mul.s	$f6,$f8,$f10
 a3c:	46009283 	div.s	$f10,$f18,$f0
 a40:	46062200 	add.s	$f8,$f4,$f6
 a44:	44812000 	mtc1	at,$f4
 a48:	e6080028 	swc1	$f8,40(s0)
 a4c:	46045182 	mul.s	$f6,$f10,$f4
 a50:	46066200 	add.s	$f8,$f12,$f6
 a54:	1000001b 	b	ac4 <func_80A09724+0x240>
 a58:	e608002c 	swc1	$f8,44(s0)
 a5c:	0c000000 	jal	0 <EnExItem_Destroy>
 a60:	ae000134 	sw	zero,308(s0)
 a64:	ae000118 	sw	zero,280(s0)
 a68:	3c0a0000 	lui	t2,0x0
 a6c:	3c0b0000 	lui	t3,0x0
 a70:	8d6b0014 	lw	t3,20(t3)
 a74:	8d4a00a0 	lw	t2,160(t2)
 a78:	3c0d0000 	lui	t5,0x0
 a7c:	91ad0005 	lbu	t5,5(t5)
 a80:	014b6024 	and	t4,t2,t3
 a84:	24010001 	li	at,1
 a88:	01ac7007 	srav	t6,t4,t5
 a8c:	15c10003 	bne	t6,at,a9c <func_80A09724+0x218>
 a90:	02002025 	move	a0,s0
 a94:	10000002 	b	aa0 <func_80A09724+0x21c>
 a98:	24060060 	li	a2,96
 a9c:	2406007b 	li	a2,123
 aa0:	3c01447a 	lui	at,0x447a
 aa4:	44815000 	mtc1	at,$f10
 aa8:	02202825 	move	a1,s1
 aac:	3c0744fa 	lui	a3,0x44fa
 ab0:	0c000000 	jal	0 <EnExItem_Destroy>
 ab4:	e7aa0010 	swc1	$f10,16(sp)
 ab8:	3c0f0000 	lui	t7,0x0
 abc:	25ef0000 	addiu	t7,t7,0
 ac0:	ae0f014c 	sw	t7,332(s0)
 ac4:	8fbf0024 	lw	ra,36(sp)
 ac8:	8fb0001c 	lw	s0,28(sp)
 acc:	8fb10020 	lw	s1,32(sp)
 ad0:	03e00008 	jr	ra
 ad4:	27bd0060 	addiu	sp,sp,96

00000ad8 <func_80A09978>:
 ad8:	27bdffe0 	addiu	sp,sp,-32
 adc:	afbf001c 	sw	ra,28(sp)
 ae0:	afa50024 	sw	a1,36(sp)
 ae4:	0c000000 	jal	0 <EnExItem_Destroy>
 ae8:	afa40020 	sw	a0,32(sp)
 aec:	10400005 	beqz	v0,b04 <func_80A09978+0x2c>
 af0:	8fa40020 	lw	a0,32(sp)
 af4:	3c0e0000 	lui	t6,0x0
 af8:	25ce0000 	addiu	t6,t6,0
 afc:	10000014 	b	b50 <func_80A09978+0x78>
 b00:	ac8e014c 	sw	t6,332(a0)
 b04:	3c0f0000 	lui	t7,0x0
 b08:	3c180000 	lui	t8,0x0
 b0c:	8f180014 	lw	t8,20(t8)
 b10:	8def00a0 	lw	t7,160(t7)
 b14:	3c080000 	lui	t0,0x0
 b18:	91080005 	lbu	t0,5(t0)
 b1c:	01f8c824 	and	t9,t7,t8
 b20:	24010002 	li	at,2
 b24:	01194807 	srav	t1,t9,t0
 b28:	15210003 	bne	t1,at,b38 <func_80A09978+0x60>
 b2c:	8fa50024 	lw	a1,36(sp)
 b30:	10000002 	b	b3c <func_80A09978+0x64>
 b34:	2406007b 	li	a2,123
 b38:	24060060 	li	a2,96
 b3c:	3c01447a 	lui	at,0x447a
 b40:	44812000 	mtc1	at,$f4
 b44:	3c0744fa 	lui	a3,0x44fa
 b48:	0c000000 	jal	0 <EnExItem_Destroy>
 b4c:	e7a40010 	swc1	$f4,16(sp)
 b50:	8fbf001c 	lw	ra,28(sp)
 b54:	27bd0020 	addiu	sp,sp,32
 b58:	03e00008 	jr	ra
 b5c:	00000000 	nop

00000b60 <func_80A09A00>:
 b60:	27bdffe8 	addiu	sp,sp,-24
 b64:	afbf0014 	sw	ra,20(sp)
 b68:	afa40018 	sw	a0,24(sp)
 b6c:	afa5001c 	sw	a1,28(sp)
 b70:	0c000000 	jal	0 <EnExItem_Destroy>
 b74:	24a420d8 	addiu	a0,a1,8408
 b78:	24010006 	li	at,6
 b7c:	5441000f 	bnel	v0,at,bbc <func_80A09A00+0x5c>
 b80:	8fbf0014 	lw	ra,20(sp)
 b84:	0c000000 	jal	0 <EnExItem_Destroy>
 b88:	8fa4001c 	lw	a0,28(sp)
 b8c:	1040000a 	beqz	v0,bb8 <func_80A09A00+0x58>
 b90:	3c040000 	lui	a0,0x0
 b94:	0c000000 	jal	0 <EnExItem_Destroy>
 b98:	24840000 	addiu	a0,a0,0
 b9c:	3c020000 	lui	v0,0x0
 ba0:	24420000 	addiu	v0,v0,0
 ba4:	944e0ef2 	lhu	t6,3826(v0)
 ba8:	8fa40018 	lw	a0,24(sp)
 bac:	35cf2000 	ori	t7,t6,0x2000
 bb0:	0c000000 	jal	0 <EnExItem_Destroy>
 bb4:	a44f0ef2 	sh	t7,3826(v0)
 bb8:	8fbf0014 	lw	ra,20(sp)
 bbc:	27bd0018 	addiu	sp,sp,24
 bc0:	03e00008 	jr	ra
 bc4:	00000000 	nop

00000bc8 <EnExItem_Update>:
 bc8:	27bdffe8 	addiu	sp,sp,-24
 bcc:	afbf0014 	sw	ra,20(sp)
 bd0:	8482015a 	lh	v0,346(a0)
 bd4:	10400002 	beqz	v0,be0 <EnExItem_Update+0x18>
 bd8:	244effff 	addiu	t6,v0,-1
 bdc:	a48e015a 	sh	t6,346(a0)
 be0:	8482015c 	lh	v0,348(a0)
 be4:	10400002 	beqz	v0,bf0 <EnExItem_Update+0x28>
 be8:	244fffff 	addiu	t7,v0,-1
 bec:	a48f015c 	sh	t7,348(a0)
 bf0:	8482015e 	lh	v0,350(a0)
 bf4:	10400002 	beqz	v0,c00 <EnExItem_Update+0x38>
 bf8:	2458ffff 	addiu	t8,v0,-1
 bfc:	a498015e 	sh	t8,350(a0)
 c00:	8c99014c 	lw	t9,332(a0)
 c04:	0320f809 	jalr	t9
 c08:	00000000 	nop
 c0c:	8fbf0014 	lw	ra,20(sp)
 c10:	27bd0018 	addiu	sp,sp,24
 c14:	03e00008 	jr	ra
 c18:	00000000 	nop

00000c1c <EnExItem_Draw>:
 c1c:	27bdffe8 	addiu	sp,sp,-24
 c20:	afbf0014 	sw	ra,20(sp)
 c24:	00a03825 	move	a3,a1
 c28:	8c850164 	lw	a1,356(a0)
 c2c:	afa7001c 	sw	a3,28(sp)
 c30:	0c000000 	jal	0 <EnExItem_Destroy>
 c34:	afa40018 	sw	a0,24(sp)
 c38:	8fa40018 	lw	a0,24(sp)
 c3c:	8fa7001c 	lw	a3,28(sp)
 c40:	84830152 	lh	v1,338(a0)
 c44:	2c610014 	sltiu	at,v1,20
 c48:	1020001c 	beqz	at,cbc <L80A09B48+0x14>
 c4c:	00037080 	sll	t6,v1,0x2
 c50:	3c010000 	lui	at,0x0
 c54:	002e0821 	addu	at,at,t6
 c58:	8c2e0000 	lw	t6,0(at)
 c5c:	01c00008 	jr	t6
 c60:	00000000 	nop

00000c64 <L80A09B04>:
 c64:	0c000000 	jal	0 <EnExItem_Destroy>
 c68:	00e02825 	move	a1,a3
 c6c:	10000014 	b	cc0 <L80A09B48+0x18>
 c70:	8fbf0014 	lw	ra,20(sp)

00000c74 <L80A09B14>:
 c74:	0c000000 	jal	0 <EnExItem_Destroy>
 c78:	00e02825 	move	a1,a3
 c7c:	10000010 	b	cc0 <L80A09B48+0x18>
 c80:	8fbf0014 	lw	ra,20(sp)

00000c84 <L80A09B24>:
 c84:	0c000000 	jal	0 <EnExItem_Destroy>
 c88:	00e02825 	move	a1,a3
 c8c:	1000000c 	b	cc0 <L80A09B48+0x18>
 c90:	8fbf0014 	lw	ra,20(sp)

00000c94 <L80A09B34>:
 c94:	00e02825 	move	a1,a3
 c98:	0c000000 	jal	0 <EnExItem_Destroy>
 c9c:	00003025 	move	a2,zero
 ca0:	10000007 	b	cc0 <L80A09B48+0x18>
 ca4:	8fbf0014 	lw	ra,20(sp)

00000ca8 <L80A09B48>:
 ca8:	2462fff0 	addiu	v0,v1,-16
 cac:	00023400 	sll	a2,v0,0x10
 cb0:	00063403 	sra	a2,a2,0x10
 cb4:	0c000000 	jal	0 <EnExItem_Destroy>
 cb8:	00e02825 	move	a1,a3
 cbc:	8fbf0014 	lw	ra,20(sp)
 cc0:	27bd0018 	addiu	sp,sp,24
 cc4:	03e00008 	jr	ra
 cc8:	00000000 	nop

00000ccc <func_80A09B6C>:
 ccc:	27bdffe8 	addiu	sp,sp,-24
 cd0:	afbf0014 	sw	ra,20(sp)
 cd4:	afa5001c 	sw	a1,28(sp)
 cd8:	8c82017c 	lw	v0,380(a0)
 cdc:	00803825 	move	a3,a0
 ce0:	00003025 	move	a2,zero
 ce4:	50400005 	beqzl	v0,cfc <func_80A09B6C+0x30>
 ce8:	00e02025 	move	a0,a3
 cec:	0040f809 	jalr	v0
 cf0:	afa70018 	sw	a3,24(sp)
 cf4:	8fa70018 	lw	a3,24(sp)
 cf8:	00e02025 	move	a0,a3
 cfc:	8fa5001c 	lw	a1,28(sp)
 d00:	00003025 	move	a2,zero
 d04:	0c000000 	jal	0 <EnExItem_Destroy>
 d08:	afa70018 	sw	a3,24(sp)
 d0c:	8fa70018 	lw	a3,24(sp)
 d10:	8fa4001c 	lw	a0,28(sp)
 d14:	0c000000 	jal	0 <EnExItem_Destroy>
 d18:	84e50156 	lh	a1,342(a3)
 d1c:	8fbf0014 	lw	ra,20(sp)
 d20:	27bd0018 	addiu	sp,sp,24
 d24:	03e00008 	jr	ra
 d28:	00000000 	nop

00000d2c <func_80A09BCC>:
 d2c:	27bdffe8 	addiu	sp,sp,-24
 d30:	afbf0014 	sw	ra,20(sp)
 d34:	afa5001c 	sw	a1,28(sp)
 d38:	0c000000 	jal	0 <EnExItem_Destroy>
 d3c:	00003025 	move	a2,zero
 d40:	8fa4001c 	lw	a0,28(sp)
 d44:	0c000000 	jal	0 <EnExItem_Destroy>
 d48:	24050013 	li	a1,19
 d4c:	8fbf0014 	lw	ra,20(sp)
 d50:	27bd0018 	addiu	sp,sp,24
 d54:	03e00008 	jr	ra
 d58:	00000000 	nop

00000d5c <func_80A09BFC>:
 d5c:	27bdffe8 	addiu	sp,sp,-24
 d60:	afbf0014 	sw	ra,20(sp)
 d64:	afa60020 	sw	a2,32(sp)
 d68:	afa5001c 	sw	a1,28(sp)
 d6c:	0c000000 	jal	0 <EnExItem_Destroy>
 d70:	00003025 	move	a2,zero
 d74:	87ae0022 	lh	t6,34(sp)
 d78:	3c050000 	lui	a1,0x0
 d7c:	8fa4001c 	lw	a0,28(sp)
 d80:	000e7840 	sll	t7,t6,0x1
 d84:	00af2821 	addu	a1,a1,t7
 d88:	0c000000 	jal	0 <EnExItem_Destroy>
 d8c:	84a50000 	lh	a1,0(a1)
 d90:	8fbf0014 	lw	ra,20(sp)
 d94:	27bd0018 	addiu	sp,sp,24
 d98:	03e00008 	jr	ra
 d9c:	00000000 	nop

00000da0 <func_80A09C40>:
 da0:	27bdffb8 	addiu	sp,sp,-72
 da4:	afbf001c 	sw	ra,28(sp)
 da8:	afb00018 	sw	s0,24(sp)
 dac:	afa40048 	sw	a0,72(sp)
 db0:	afa5004c 	sw	a1,76(sp)
 db4:	afa60050 	sw	a2,80(sp)
 db8:	8ca50000 	lw	a1,0(a1)
 dbc:	3c060000 	lui	a2,0x0
 dc0:	24c60000 	addiu	a2,a2,0
 dc4:	27a40034 	addiu	a0,sp,52
 dc8:	24070370 	li	a3,880
 dcc:	0c000000 	jal	0 <EnExItem_Destroy>
 dd0:	00a08025 	move	s0,a1
 dd4:	8faf004c 	lw	t7,76(sp)
 dd8:	0c000000 	jal	0 <EnExItem_Destroy>
 ddc:	8de40000 	lw	a0,0(t7)
 de0:	8e0202c0 	lw	v0,704(s0)
 de4:	3c19da38 	lui	t9,0xda38
 de8:	37390003 	ori	t9,t9,0x3
 dec:	24580008 	addiu	t8,v0,8
 df0:	ae1802c0 	sw	t8,704(s0)
 df4:	ac590000 	sw	t9,0(v0)
 df8:	8fa8004c 	lw	t0,76(sp)
 dfc:	3c050000 	lui	a1,0x0
 e00:	24a50000 	addiu	a1,a1,0
 e04:	8d040000 	lw	a0,0(t0)
 e08:	24060377 	li	a2,887
 e0c:	0c000000 	jal	0 <EnExItem_Destroy>
 e10:	afa20030 	sw	v0,48(sp)
 e14:	8fa30030 	lw	v1,48(sp)
 e18:	3c0adb06 	lui	t2,0xdb06
 e1c:	354a0020 	ori	t2,t2,0x20
 e20:	ac620004 	sw	v0,4(v1)
 e24:	8e0202c0 	lw	v0,704(s0)
 e28:	3c040000 	lui	a0,0x0
 e2c:	3c190000 	lui	t9,0x0
 e30:	24490008 	addiu	t1,v0,8
 e34:	ae0902c0 	sw	t1,704(s0)
 e38:	ac4a0000 	sw	t2,0(v0)
 e3c:	8fab0050 	lw	t3,80(sp)
 e40:	3c0100ff 	lui	at,0xff
 e44:	3421ffff 	ori	at,at,0xffff
 e48:	000b6080 	sll	t4,t3,0x2
 e4c:	008c2021 	addu	a0,a0,t4
 e50:	8c840000 	lw	a0,0(a0)
 e54:	3c0c0404 	lui	t4,0x404
 e58:	258cf070 	addiu	t4,t4,-3984
 e5c:	00047100 	sll	t6,a0,0x4
 e60:	000e7f02 	srl	t7,t6,0x1c
 e64:	000fc080 	sll	t8,t7,0x2
 e68:	0338c821 	addu	t9,t9,t8
 e6c:	8f390000 	lw	t9,0(t9)
 e70:	00816824 	and	t5,a0,at
 e74:	3c018000 	lui	at,0x8000
 e78:	01b94021 	addu	t0,t5,t9
 e7c:	01014821 	addu	t1,t0,at
 e80:	ac490004 	sw	t1,4(v0)
 e84:	8e0202c0 	lw	v0,704(s0)
 e88:	3c0bde00 	lui	t3,0xde00
 e8c:	3c060000 	lui	a2,0x0
 e90:	244a0008 	addiu	t2,v0,8
 e94:	ae0a02c0 	sw	t2,704(s0)
 e98:	ac4c0004 	sw	t4,4(v0)
 e9c:	ac4b0000 	sw	t3,0(v0)
 ea0:	8fae004c 	lw	t6,76(sp)
 ea4:	24c60000 	addiu	a2,a2,0
 ea8:	27a40034 	addiu	a0,sp,52
 eac:	2407037d 	li	a3,893
 eb0:	0c000000 	jal	0 <EnExItem_Destroy>
 eb4:	8dc50000 	lw	a1,0(t6)
 eb8:	8fbf001c 	lw	ra,28(sp)
 ebc:	8fb00018 	lw	s0,24(sp)
 ec0:	27bd0048 	addiu	sp,sp,72
 ec4:	03e00008 	jr	ra
 ec8:	00000000 	nop

00000ecc <func_80A09D6C>:
 ecc:	27bdffe8 	addiu	sp,sp,-24
 ed0:	afbf0014 	sw	ra,20(sp)
 ed4:	afa5001c 	sw	a1,28(sp)
 ed8:	8c82017c 	lw	v0,380(a0)
 edc:	00803825 	move	a3,a0
 ee0:	00003025 	move	a2,zero
 ee4:	50400005 	beqzl	v0,efc <func_80A09D6C+0x30>
 ee8:	8ce20180 	lw	v0,384(a3)
 eec:	0040f809 	jalr	v0
 ef0:	afa70018 	sw	a3,24(sp)
 ef4:	8fa70018 	lw	a3,24(sp)
 ef8:	8ce20180 	lw	v0,384(a3)
 efc:	00e02025 	move	a0,a3
 f00:	8fa5001c 	lw	a1,28(sp)
 f04:	10400004 	beqz	v0,f18 <func_80A09D6C+0x4c>
 f08:	00003025 	move	a2,zero
 f0c:	0040f809 	jalr	v0
 f10:	afa70018 	sw	a3,24(sp)
 f14:	8fa70018 	lw	a3,24(sp)
 f18:	8fa4001c 	lw	a0,28(sp)
 f1c:	0c000000 	jal	0 <EnExItem_Destroy>
 f20:	84e50156 	lh	a1,342(a3)
 f24:	8fbf0014 	lw	ra,20(sp)
 f28:	27bd0018 	addiu	sp,sp,24
 f2c:	03e00008 	jr	ra
 f30:	00000000 	nop
	...
