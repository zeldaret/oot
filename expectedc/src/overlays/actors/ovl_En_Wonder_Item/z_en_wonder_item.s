
build/src/overlays/actors/ovl_En_Wonder_Item/z_en_wonder_item.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnWonderItem_Destroy>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	848e01c0 	lh	t6,448(a0)
   c:	00803025 	move	a2,a0
  10:	00a03825 	move	a3,a1
  14:	15c00004 	bnez	t6,28 <EnWonderItem_Destroy+0x28>
  18:	24c50180 	addiu	a1,a2,384
  1c:	848f01c2 	lh	t7,450(a0)
  20:	51e00004 	beqzl	t7,34 <EnWonderItem_Destroy+0x34>
  24:	8fbf0014 	lw	ra,20(sp)
  28:	0c000000 	jal	0 <EnWonderItem_Destroy>
  2c:	00e02025 	move	a0,a3
  30:	8fbf0014 	lw	ra,20(sp)
  34:	27bd0018 	addiu	sp,sp,24
  38:	03e00008 	jr	ra
  3c:	00000000 	nop

00000040 <func_80B380A0>:
  40:	27bdffc8 	addiu	sp,sp,-56
  44:	afb5002c 	sw	s5,44(sp)
  48:	0080a825 	move	s5,a0
  4c:	afbf0034 	sw	ra,52(sp)
  50:	afb40028 	sw	s4,40(sp)
  54:	afb20020 	sw	s2,32(sp)
  58:	00a09025 	move	s2,a1
  5c:	00c0a025 	move	s4,a2
  60:	afb60030 	sw	s6,48(sp)
  64:	afb30024 	sw	s3,36(sp)
  68:	afb1001c 	sw	s1,28(sp)
  6c:	afb00018 	sw	s0,24(sp)
  70:	0c000000 	jal	0 <EnWonderItem_Destroy>
  74:	24044824 	li	a0,18468
  78:	86a2015a 	lh	v0,346(s5)
  7c:	26b00024 	addiu	s0,s5,36
  80:	2416000b 	li	s6,11
  84:	14400003 	bnez	v0,94 <func_80B380A0+0x54>
  88:	244e0001 	addiu	t6,v0,1
  8c:	a6ae015a 	sh	t6,346(s5)
  90:	86a2015a 	lh	v0,346(s5)
  94:	18400030 	blez	v0,158 <func_80B380A0+0x118>
  98:	00408825 	move	s1,v0
  9c:	3c130000 	lui	s3,0x0
  a0:	26730000 	addiu	s3,s3,0
  a4:	86a20156 	lh	v0,342(s5)
  a8:	2841000c 	slti	at,v0,12
  ac:	10200016 	beqz	at,108 <func_80B380A0+0xc8>
  b0:	00000000 	nop
  b4:	12c20003 	beq	s6,v0,c4 <func_80B380A0+0x84>
  b8:	02402025 	move	a0,s2
  bc:	16800008 	bnez	s4,e0 <func_80B380A0+0xa0>
  c0:	0002c840 	sll	t9,v0,0x1
  c4:	00027840 	sll	t7,v0,0x1
  c8:	026fc021 	addu	t8,s3,t7
  cc:	87060000 	lh	a2,0(t8)
  d0:	0c000000 	jal	0 <EnWonderItem_Destroy>
  d4:	02002825 	move	a1,s0
  d8:	1000001d 	b	150 <func_80B380A0+0x110>
  dc:	2631ffff 	addiu	s1,s1,-1
  e0:	02794021 	addu	t0,s3,t9
  e4:	85060000 	lh	a2,0(t0)
  e8:	02402025 	move	a0,s2
  ec:	02002825 	move	a1,s0
  f0:	34c68000 	ori	a2,a2,0x8000
  f4:	00063400 	sll	a2,a2,0x10
  f8:	0c000000 	jal	0 <EnWonderItem_Destroy>
  fc:	00063403 	sra	a2,a2,0x10
 100:	10000013 	b	150 <func_80B380A0+0x110>
 104:	2631ffff 	addiu	s1,s1,-1
 108:	16800009 	bnez	s4,130 <func_80B380A0+0xf0>
 10c:	2443fff4 	addiu	v1,v0,-12
 110:	00033c00 	sll	a3,v1,0x10
 114:	00073c03 	sra	a3,a3,0x10
 118:	02402025 	move	a0,s2
 11c:	00002825 	move	a1,zero
 120:	0c000000 	jal	0 <EnWonderItem_Destroy>
 124:	02003025 	move	a2,s0
 128:	10000009 	b	150 <func_80B380A0+0x110>
 12c:	2631ffff 	addiu	s1,s1,-1
 130:	34678000 	ori	a3,v1,0x8000
 134:	00073c00 	sll	a3,a3,0x10
 138:	00073c03 	sra	a3,a3,0x10
 13c:	02402025 	move	a0,s2
 140:	00002825 	move	a1,zero
 144:	0c000000 	jal	0 <EnWonderItem_Destroy>
 148:	02003025 	move	a2,s0
 14c:	2631ffff 	addiu	s1,s1,-1
 150:	5e20ffd5 	bgtzl	s1,a8 <func_80B380A0+0x68>
 154:	86a20156 	lh	v0,342(s5)
 158:	86a50162 	lh	a1,354(s5)
 15c:	04a00003 	bltz	a1,16c <func_80B380A0+0x12c>
 160:	00000000 	nop
 164:	0c000000 	jal	0 <EnWonderItem_Destroy>
 168:	02402025 	move	a0,s2
 16c:	0c000000 	jal	0 <EnWonderItem_Destroy>
 170:	02a02025 	move	a0,s5
 174:	8fbf0034 	lw	ra,52(sp)
 178:	8fb00018 	lw	s0,24(sp)
 17c:	8fb1001c 	lw	s1,28(sp)
 180:	8fb20020 	lw	s2,32(sp)
 184:	8fb30024 	lw	s3,36(sp)
 188:	8fb40028 	lw	s4,40(sp)
 18c:	8fb5002c 	lw	s5,44(sp)
 190:	8fb60030 	lw	s6,48(sp)
 194:	03e00008 	jr	ra
 198:	27bd0038 	addiu	sp,sp,56

0000019c <EnWonderItem_Init>:
 19c:	27bdffc8 	addiu	sp,sp,-56
 1a0:	afb00018 	sw	s0,24(sp)
 1a4:	00808025 	move	s0,a0
 1a8:	afbf001c 	sw	ra,28(sp)
 1ac:	3c040000 	lui	a0,0x0
 1b0:	afa5003c 	sw	a1,60(sp)
 1b4:	0c000000 	jal	0 <EnWonderItem_Destroy>
 1b8:	24840000 	addiu	a0,a0,0
 1bc:	3c040000 	lui	a0,0x0
 1c0:	24840000 	addiu	a0,a0,0
 1c4:	0c000000 	jal	0 <EnWonderItem_Destroy>
 1c8:	8605001c 	lh	a1,28(s0)
 1cc:	8602001c 	lh	v0,28(s0)
 1d0:	8e0e0004 	lw	t6,4(s0)
 1d4:	2401fffe 	li	at,-2
 1d8:	304a003f 	andi	t2,v0,0x3f
 1dc:	a60a0162 	sh	t2,354(s0)
 1e0:	86050162 	lh	a1,354(s0)
 1e4:	0002c2c3 	sra	t8,v0,0xb
 1e8:	00024183 	sra	t0,v0,0x6
 1ec:	01c17824 	and	t7,t6,at
 1f0:	3319001f 	andi	t9,t8,0x1f
 1f4:	3109001f 	andi	t1,t0,0x1f
 1f8:	2401003f 	li	at,63
 1fc:	ae0f0004 	sw	t7,4(s0)
 200:	a6190154 	sh	t9,340(s0)
 204:	14a10004 	bne	a1,at,218 <EnWonderItem_Init+0x7c>
 208:	a6090156 	sh	t1,342(s0)
 20c:	240bffff 	li	t3,-1
 210:	a60b0162 	sh	t3,354(s0)
 214:	86050162 	lh	a1,354(s0)
 218:	240c0001 	li	t4,1
 21c:	04a0000d 	bltz	a1,254 <EnWonderItem_Init+0xb8>
 220:	a20c001f 	sb	t4,31(s0)
 224:	0c000000 	jal	0 <EnWonderItem_Destroy>
 228:	8fa4003c 	lw	a0,60(sp)
 22c:	5040000a 	beqzl	v0,258 <EnWonderItem_Init+0xbc>
 230:	960d0154 	lhu	t5,340(s0)
 234:	3c040000 	lui	a0,0x0
 238:	24840000 	addiu	a0,a0,0
 23c:	0c000000 	jal	0 <EnWonderItem_Destroy>
 240:	86050162 	lh	a1,354(s0)
 244:	0c000000 	jal	0 <EnWonderItem_Destroy>
 248:	02002025 	move	a0,s0
 24c:	100000ac 	b	500 <L80B3855C+0x4>
 250:	8fbf001c 	lw	ra,28(sp)
 254:	960d0154 	lhu	t5,340(s0)
 258:	2da1000a 	sltiu	at,t5,10
 25c:	102000a5 	beqz	at,4f4 <L80B38538+0x1c>
 260:	000d6880 	sll	t5,t5,0x2
 264:	3c010000 	lui	at,0x0
 268:	002d0821 	addu	at,at,t5
 26c:	8c2d0000 	lw	t5,0(at)
 270:	01a00008 	jr	t5
 274:	00000000 	nop

00000278 <L80B382D8>:
 278:	86020034 	lh	v0,52(s0)
 27c:	00001825 	move	v1,zero
 280:	3c080000 	lui	t0,0x0
 284:	304e000f 	andi	t6,v0,0xf
 288:	2841000a 	slti	at,v0,10
 28c:	1420000a 	bnez	at,2b8 <L80B382D8+0x40>
 290:	a60e0158 	sh	t6,344(s0)
 294:	2401000a 	li	at,10
 298:	0041001a 	div	zero,v0,at
 29c:	00001812 	mflo	v1
 2a0:	00031c00 	sll	v1,v1,0x10
 2a4:	00031c03 	sra	v1,v1,0x10
 2a8:	00037880 	sll	t7,v1,0x2
 2ac:	01e37821 	addu	t7,t7,v1
 2b0:	000f7880 	sll	t7,t7,0x2
 2b4:	a60f016a 	sh	t7,362(s0)
 2b8:	0003c080 	sll	t8,v1,0x2
 2bc:	0303c021 	addu	t8,t8,v1
 2c0:	0018c040 	sll	t8,t8,0x1
 2c4:	0058c823 	subu	t9,v0,t8
 2c8:	25080000 	addiu	t0,t0,0
 2cc:	a6190158 	sh	t9,344(s0)
 2d0:	1000008a 	b	4fc <L80B3855C>
 2d4:	ae08014c 	sw	t0,332(s0)

000002d8 <L80B38338>:
 2d8:	86020034 	lh	v0,52(s0)
 2dc:	8e0d0024 	lw	t5,36(s0)
 2e0:	3c0a0000 	lui	t2,0x0
 2e4:	304200ff 	andi	v0,v0,0xff
 2e8:	00021400 	sll	v0,v0,0x10
 2ec:	00021403 	sra	v0,v0,0x10
 2f0:	00024880 	sll	t1,v0,0x2
 2f4:	01224823 	subu	t1,t1,v0
 2f8:	00094880 	sll	t1,t1,0x2
 2fc:	254a0000 	addiu	t2,t2,0
 300:	012a5821 	addu	t3,t1,t2
 304:	ad6d0000 	sw	t5,0(t3)
 308:	8e0c0028 	lw	t4,40(s0)
 30c:	02002025 	move	a0,s0
 310:	ad6c0004 	sw	t4,4(t3)
 314:	8e0d002c 	lw	t5,44(s0)
 318:	0c000000 	jal	0 <EnWonderItem_Destroy>
 31c:	ad6d0008 	sw	t5,8(t3)
 320:	10000077 	b	500 <L80B3855C+0x4>
 324:	8fbf001c 	lw	ra,28(sp)

00000328 <L80B38388>:
 328:	860e0034 	lh	t6,52(s0)
 32c:	3c180000 	lui	t8,0x0
 330:	27180000 	addiu	t8,t8,0
 334:	31cf00ff 	andi	t7,t6,0xff
 338:	a60f015a 	sh	t7,346(s0)
 33c:	1000006f 	b	4fc <L80B3855C>
 340:	ae18014c 	sw	t8,332(s0)

00000344 <L80B383A4>:
 344:	86190034 	lh	t9,52(s0)
 348:	26050180 	addiu	a1,s0,384
 34c:	afa50024 	sw	a1,36(sp)
 350:	332800ff 	andi	t0,t9,0xff
 354:	a7a80032 	sh	t0,50(sp)
 358:	0c000000 	jal	0 <EnWonderItem_Destroy>
 35c:	8fa4003c 	lw	a0,60(sp)
 360:	3c070000 	lui	a3,0x0
 364:	8fa50024 	lw	a1,36(sp)
 368:	24e70000 	addiu	a3,a3,0
 36c:	8fa4003c 	lw	a0,60(sp)
 370:	0c000000 	jal	0 <EnWonderItem_Destroy>
 374:	02003025 	move	a2,s0
 378:	87a90032 	lh	t1,50(sp)
 37c:	3c0b0000 	lui	t3,0x0
 380:	3c0e0000 	lui	t6,0x0
 384:	00095080 	sll	t2,t1,0x2
 388:	016a5821 	addu	t3,t3,t2
 38c:	8d6b0000 	lw	t3,0(t3)
 390:	240c0014 	li	t4,20
 394:	240d001e 	li	t5,30
 398:	25ce0000 	addiu	t6,t6,0
 39c:	a60c01c0 	sh	t4,448(s0)
 3a0:	a60d01c2 	sh	t5,450(s0)
 3a4:	ae0e014c 	sw	t6,332(s0)
 3a8:	10000054 	b	4fc <L80B3855C>
 3ac:	ae0b01a0 	sw	t3,416(s0)

000003b0 <L80B38410>:
 3b0:	86020034 	lh	v0,52(s0)
 3b4:	00001825 	move	v1,zero
 3b8:	3c090000 	lui	t1,0x0
 3bc:	304f000f 	andi	t7,v0,0xf
 3c0:	2841000a 	slti	at,v0,10
 3c4:	1420000a 	bnez	at,3f0 <L80B38410+0x40>
 3c8:	a60f0158 	sh	t7,344(s0)
 3cc:	2401000a 	li	at,10
 3d0:	0041001a 	div	zero,v0,at
 3d4:	00001812 	mflo	v1
 3d8:	00031c00 	sll	v1,v1,0x10
 3dc:	00031c03 	sra	v1,v1,0x10
 3e0:	0003c080 	sll	t8,v1,0x2
 3e4:	0303c021 	addu	t8,t8,v1
 3e8:	0018c080 	sll	t8,t8,0x2
 3ec:	a618016a 	sh	t8,362(s0)
 3f0:	0003c880 	sll	t9,v1,0x2
 3f4:	0323c821 	addu	t9,t9,v1
 3f8:	0019c840 	sll	t9,t9,0x1
 3fc:	00594023 	subu	t0,v0,t9
 400:	25290000 	addiu	t1,t1,0
 404:	a6080158 	sh	t0,344(s0)
 408:	1000003c 	b	4fc <L80B3855C>
 40c:	ae09014c 	sw	t1,332(s0)

00000410 <L80B38470>:
 410:	86020034 	lh	v0,52(s0)
 414:	8e0e0024 	lw	t6,36(s0)
 418:	3c0b0000 	lui	t3,0x0
 41c:	304200ff 	andi	v0,v0,0xff
 420:	00021400 	sll	v0,v0,0x10
 424:	00021403 	sra	v0,v0,0x10
 428:	00025080 	sll	t2,v0,0x2
 42c:	01425023 	subu	t2,t2,v0
 430:	000a5080 	sll	t2,t2,0x2
 434:	256b0000 	addiu	t3,t3,0
 438:	014b6021 	addu	t4,t2,t3
 43c:	ad8e0000 	sw	t6,0(t4)
 440:	8e0d0028 	lw	t5,40(s0)
 444:	02002025 	move	a0,s0
 448:	ad8d0004 	sw	t5,4(t4)
 44c:	8e0e002c 	lw	t6,44(s0)
 450:	0c000000 	jal	0 <EnWonderItem_Destroy>
 454:	ad8e0008 	sw	t6,8(t4)
 458:	10000029 	b	500 <L80B3855C+0x4>
 45c:	8fbf001c 	lw	ra,28(sp)

00000460 <L80B384C0>:
 460:	3c0f0000 	lui	t7,0x0
 464:	25ef0000 	addiu	t7,t7,0
 468:	10000024 	b	4fc <L80B3855C>
 46c:	ae0f014c 	sw	t7,332(s0)

00000470 <L80B384D0>:
 470:	26050180 	addiu	a1,s0,384
 474:	afa50024 	sw	a1,36(sp)
 478:	0c000000 	jal	0 <EnWonderItem_Destroy>
 47c:	8fa4003c 	lw	a0,60(sp)
 480:	3c070000 	lui	a3,0x0
 484:	8fa50024 	lw	a1,36(sp)
 488:	24e70000 	addiu	a3,a3,0
 48c:	8fa4003c 	lw	a0,60(sp)
 490:	0c000000 	jal	0 <EnWonderItem_Destroy>
 494:	02003025 	move	a2,s0
 498:	8e080024 	lw	t0,36(s0)
 49c:	8e190028 	lw	t9,40(s0)
 4a0:	3c0b0000 	lui	t3,0x0
 4a4:	ae08016c 	sw	t0,364(s0)
 4a8:	8e08002c 	lw	t0,44(s0)
 4ac:	24180004 	li	t8,4
 4b0:	24090023 	li	t1,35
 4b4:	240a004b 	li	t2,75
 4b8:	256b0000 	addiu	t3,t3,0
 4bc:	ae1801a0 	sw	t8,416(s0)
 4c0:	a60901c0 	sh	t1,448(s0)
 4c4:	a60a01c2 	sh	t2,450(s0)
 4c8:	ae0b014c 	sw	t3,332(s0)
 4cc:	ae190170 	sw	t9,368(s0)
 4d0:	1000000a 	b	4fc <L80B3855C>
 4d4:	ae080174 	sw	t0,372(s0)

000004d8 <L80B38538>:
 4d8:	860c0034 	lh	t4,52(s0)
 4dc:	3c0e0000 	lui	t6,0x0
 4e0:	25ce0000 	addiu	t6,t6,0
 4e4:	318d00ff 	andi	t5,t4,0xff
 4e8:	a60d015a 	sh	t5,346(s0)
 4ec:	10000003 	b	4fc <L80B3855C>
 4f0:	ae0e014c 	sw	t6,332(s0)
 4f4:	0c000000 	jal	0 <EnWonderItem_Destroy>
 4f8:	02002025 	move	a0,s0

000004fc <L80B3855C>:
 4fc:	8fbf001c 	lw	ra,28(sp)
 500:	8fb00018 	lw	s0,24(sp)
 504:	27bd0038 	addiu	sp,sp,56
 508:	03e00008 	jr	ra
 50c:	00000000 	nop

00000510 <func_80B38570>:
 510:	27bdff70 	addiu	sp,sp,-144
 514:	afbf008c 	sw	ra,140(sp)
 518:	afbe0088 	sw	s8,136(sp)
 51c:	afb70084 	sw	s7,132(sp)
 520:	afb60080 	sw	s6,128(sp)
 524:	afb5007c 	sw	s5,124(sp)
 528:	afb40078 	sw	s4,120(sp)
 52c:	afb30074 	sw	s3,116(sp)
 530:	afb20070 	sw	s2,112(sp)
 534:	afb1006c 	sw	s1,108(sp)
 538:	afb00068 	sw	s0,104(sp)
 53c:	f7ba0060 	sdc1	$f26,96(sp)
 540:	f7b80058 	sdc1	$f24,88(sp)
 544:	f7b60050 	sdc1	$f22,80(sp)
 548:	f7b40048 	sdc1	$f20,72(sp)
 54c:	84830158 	lh	v1,344(a0)
 550:	00809025 	move	s2,a0
 554:	00a0f025 	move	s8,a1
 558:	8cb31c44 	lw	s3,7236(a1)
 55c:	8494015e 	lh	s4,350(a0)
 560:	00008025 	move	s0,zero
 564:	1860004c 	blez	v1,698 <func_80B38570+0x188>
 568:	24110001 	li	s1,1
 56c:	3c014248 	lui	at,0x4248
 570:	4481d000 	mtc1	at,$f26
 574:	3c013f80 	lui	at,0x3f80
 578:	3c170000 	lui	s7,0x0
 57c:	3c150000 	lui	s5,0x0
 580:	4481c000 	mtc1	at,$f24
 584:	26b50000 	addiu	s5,s5,0
 588:	26f70000 	addiu	s7,s7,0
 58c:	2416000c 	li	s6,12
 590:	02917024 	and	t6,s4,s1
 594:	55c0003d 	bnezl	t6,68c <func_80B38570+0x17c>
 598:	26100001 	addiu	s0,s0,1
 59c:	02160019 	multu	s0,s6
 5a0:	c6640024 	lwc1	$f4,36(s3)
 5a4:	c6660028 	lwc1	$f6,40(s3)
 5a8:	c668002c 	lwc1	$f8,44(s3)
 5ac:	241800ff 	li	t8,255
 5b0:	241900ff 	li	t9,255
 5b4:	24080004 	li	t0,4
 5b8:	00007812 	mflo	t7
 5bc:	02af1021 	addu	v0,s5,t7
 5c0:	c4540000 	lwc1	$f20,0(v0)
 5c4:	c4560004 	lwc1	$f22,4(v0)
 5c8:	c4500008 	lwc1	$f16,8(v0)
 5cc:	46142081 	sub.s	$f2,$f4,$f20
 5d0:	46163301 	sub.s	$f12,$f6,$f22
 5d4:	46021282 	mul.s	$f10,$f2,$f2
 5d8:	46104381 	sub.s	$f14,$f8,$f16
 5dc:	460c6482 	mul.s	$f18,$f12,$f12
 5e0:	46125100 	add.s	$f4,$f10,$f18
 5e4:	460e7182 	mul.s	$f6,$f14,$f14
 5e8:	46062000 	add.s	$f0,$f4,$f6
 5ec:	46000004 	sqrt.s	$f0,$f0
 5f0:	461a003c 	c.lt.s	$f0,$f26
 5f4:	00000000 	nop
 5f8:	4502000c 	bc1fl	62c <func_80B38570+0x11c>
 5fc:	8eec0000 	lw	t4,0(s7)
 600:	8658015e 	lh	t8,350(s2)
 604:	86480160 	lh	t0,352(s2)
 608:	864a016a 	lh	t2,362(s2)
 60c:	0311c825 	or	t9,t8,s1
 610:	25090001 	addiu	t1,t0,1
 614:	254b0051 	addiu	t3,t2,81
 618:	a659015e 	sh	t9,350(s2)
 61c:	a6490160 	sh	t1,352(s2)
 620:	10000031 	b	6e8 <func_80B38570+0x1d8>
 624:	a64b015c 	sh	t3,348(s2)
 628:	8eec0000 	lw	t4,0(s7)
 62c:	858d12d4 	lh	t5,4820(t4)
 630:	51a00016 	beqzl	t5,68c <func_80B38570+0x17c>
 634:	26100001 	addiu	s0,s0,1
 638:	864e0032 	lh	t6,50(s2)
 63c:	86470030 	lh	a3,48(s2)
 640:	44068000 	mfc1	a2,$f16
 644:	afae0010 	sw	t6,16(sp)
 648:	864f0034 	lh	t7,52(s2)
 64c:	afa80034 	sw	t0,52(sp)
 650:	afb90030 	sw	t9,48(sp)
 654:	afa0002c 	sw	zero,44(sp)
 658:	afb80028 	sw	t8,40(sp)
 65c:	afa00024 	sw	zero,36(sp)
 660:	e7b80020 	swc1	$f24,32(sp)
 664:	e7b8001c 	swc1	$f24,28(sp)
 668:	e7b80018 	swc1	$f24,24(sp)
 66c:	afaf0014 	sw	t7,20(sp)
 670:	8fc90000 	lw	t1,0(s8)
 674:	4600a306 	mov.s	$f12,$f20
 678:	4600b386 	mov.s	$f14,$f22
 67c:	0c000000 	jal	0 <EnWonderItem_Destroy>
 680:	afa90038 	sw	t1,56(sp)
 684:	86430158 	lh	v1,344(s2)
 688:	26100001 	addiu	s0,s0,1
 68c:	0203082a 	slt	at,s0,v1
 690:	1420ffbf 	bnez	at,590 <func_80B38570+0x80>
 694:	00118840 	sll	s1,s1,0x1
 698:	864a015c 	lh	t2,348(s2)
 69c:	24010001 	li	at,1
 6a0:	55410006 	bnel	t2,at,6bc <func_80B38570+0x1ac>
 6a4:	864b0160 	lh	t3,352(s2)
 6a8:	0c000000 	jal	0 <EnWonderItem_Destroy>
 6ac:	02402025 	move	a0,s2
 6b0:	1000000e 	b	6ec <func_80B38570+0x1dc>
 6b4:	8fbf008c 	lw	ra,140(sp)
 6b8:	864b0160 	lh	t3,352(s2)
 6bc:	546b000b 	bnel	v1,t3,6ec <func_80B38570+0x1dc>
 6c0:	8fbf008c 	lw	ra,140(sp)
 6c4:	86450162 	lh	a1,354(s2)
 6c8:	04a20004 	bltzl	a1,6dc <func_80B38570+0x1cc>
 6cc:	02402025 	move	a0,s2
 6d0:	0c000000 	jal	0 <EnWonderItem_Destroy>
 6d4:	03c02025 	move	a0,s8
 6d8:	02402025 	move	a0,s2
 6dc:	03c02825 	move	a1,s8
 6e0:	0c000000 	jal	0 <EnWonderItem_Destroy>
 6e4:	24060001 	li	a2,1
 6e8:	8fbf008c 	lw	ra,140(sp)
 6ec:	d7b40048 	ldc1	$f20,72(sp)
 6f0:	d7b60050 	ldc1	$f22,80(sp)
 6f4:	d7b80058 	ldc1	$f24,88(sp)
 6f8:	d7ba0060 	ldc1	$f26,96(sp)
 6fc:	8fb00068 	lw	s0,104(sp)
 700:	8fb1006c 	lw	s1,108(sp)
 704:	8fb20070 	lw	s2,112(sp)
 708:	8fb30074 	lw	s3,116(sp)
 70c:	8fb40078 	lw	s4,120(sp)
 710:	8fb5007c 	lw	s5,124(sp)
 714:	8fb60080 	lw	s6,128(sp)
 718:	8fb70084 	lw	s7,132(sp)
 71c:	8fbe0088 	lw	s8,136(sp)
 720:	03e00008 	jr	ra
 724:	27bd0090 	addiu	sp,sp,144

00000728 <func_80B38788>:
 728:	27bdffe8 	addiu	sp,sp,-24
 72c:	afbf0014 	sw	ra,20(sp)
 730:	3c014248 	lui	at,0x4248
 734:	44813000 	mtc1	at,$f6
 738:	c4840090 	lwc1	$f4,144(a0)
 73c:	8ca21c44 	lw	v0,7236(a1)
 740:	4606203c 	c.lt.s	$f4,$f6
 744:	00000000 	nop
 748:	4502000e 	bc1fl	784 <func_80B38788+0x5c>
 74c:	8fbf0014 	lw	ra,20(sp)
 750:	c4880028 	lwc1	$f8,40(a0)
 754:	c44a0028 	lwc1	$f10,40(v0)
 758:	3c0141f0 	lui	at,0x41f0
 75c:	44818000 	mtc1	at,$f16
 760:	460a4001 	sub.s	$f0,$f8,$f10
 764:	46000005 	abs.s	$f0,$f0
 768:	4610003c 	c.lt.s	$f0,$f16
 76c:	00000000 	nop
 770:	45020004 	bc1fl	784 <func_80B38788+0x5c>
 774:	8fbf0014 	lw	ra,20(sp)
 778:	0c000000 	jal	0 <EnWonderItem_Destroy>
 77c:	24060001 	li	a2,1
 780:	8fbf0014 	lw	ra,20(sp)
 784:	27bd0018 	addiu	sp,sp,24
 788:	03e00008 	jr	ra
 78c:	00000000 	nop

00000790 <func_80B387F0>:
 790:	27bdffe8 	addiu	sp,sp,-24
 794:	afbf0014 	sw	ra,20(sp)
 798:	90820191 	lbu	v0,401(a0)
 79c:	00003025 	move	a2,zero
 7a0:	304e0002 	andi	t6,v0,0x2
 7a4:	11c00003 	beqz	t6,7b4 <func_80B387F0+0x24>
 7a8:	304ffffd 	andi	t7,v0,0xfffd
 7ac:	0c000000 	jal	0 <EnWonderItem_Destroy>
 7b0:	a08f0191 	sb	t7,401(a0)
 7b4:	8fbf0014 	lw	ra,20(sp)
 7b8:	27bd0018 	addiu	sp,sp,24
 7bc:	03e00008 	jr	ra
 7c0:	00000000 	nop

000007c4 <func_80B38824>:
 7c4:	27bdffe8 	addiu	sp,sp,-24
 7c8:	afbf0014 	sw	ra,20(sp)
 7cc:	3c014248 	lui	at,0x4248
 7d0:	44813000 	mtc1	at,$f6
 7d4:	c4840090 	lwc1	$f4,144(a0)
 7d8:	00803025 	move	a2,a0
 7dc:	00a03825 	move	a3,a1
 7e0:	4606203c 	c.lt.s	$f4,$f6
 7e4:	8ca21c44 	lw	v0,7236(a1)
 7e8:	45020015 	bc1fl	840 <func_80B38824+0x7c>
 7ec:	8fbf0014 	lw	ra,20(sp)
 7f0:	c4880028 	lwc1	$f8,40(a0)
 7f4:	c44a0028 	lwc1	$f10,40(v0)
 7f8:	3c0141f0 	lui	at,0x41f0
 7fc:	44818000 	mtc1	at,$f16
 800:	460a4001 	sub.s	$f0,$f8,$f10
 804:	46000005 	abs.s	$f0,$f0
 808:	4610003c 	c.lt.s	$f0,$f16
 80c:	00000000 	nop
 810:	4502000b 	bc1fl	840 <func_80B38824+0x7c>
 814:	8fbf0014 	lw	ra,20(sp)
 818:	84850162 	lh	a1,354(a0)
 81c:	00e02025 	move	a0,a3
 820:	04a00004 	bltz	a1,834 <func_80B38824+0x70>
 824:	00000000 	nop
 828:	0c000000 	jal	0 <EnWonderItem_Destroy>
 82c:	afa60018 	sw	a2,24(sp)
 830:	8fa60018 	lw	a2,24(sp)
 834:	0c000000 	jal	0 <EnWonderItem_Destroy>
 838:	00c02025 	move	a0,a2
 83c:	8fbf0014 	lw	ra,20(sp)
 840:	27bd0018 	addiu	sp,sp,24
 844:	03e00008 	jr	ra
 848:	00000000 	nop

0000084c <func_80B388AC>:
 84c:	27bdff70 	addiu	sp,sp,-144
 850:	afbf008c 	sw	ra,140(sp)
 854:	afbe0088 	sw	s8,136(sp)
 858:	afb70084 	sw	s7,132(sp)
 85c:	afb60080 	sw	s6,128(sp)
 860:	afb5007c 	sw	s5,124(sp)
 864:	afb40078 	sw	s4,120(sp)
 868:	afb30074 	sw	s3,116(sp)
 86c:	afb20070 	sw	s2,112(sp)
 870:	afb1006c 	sw	s1,108(sp)
 874:	afb00068 	sw	s0,104(sp)
 878:	f7ba0060 	sdc1	$f26,96(sp)
 87c:	f7b80058 	sdc1	$f24,88(sp)
 880:	f7b60050 	sdc1	$f22,80(sp)
 884:	f7b40048 	sdc1	$f20,72(sp)
 888:	84860158 	lh	a2,344(a0)
 88c:	00808025 	move	s0,a0
 890:	00a0f025 	move	s8,a1
 894:	8cb21c44 	lw	s2,7236(a1)
 898:	8494015e 	lh	s4,350(a0)
 89c:	00008825 	move	s1,zero
 8a0:	18c00056 	blez	a2,9fc <func_80B388AC+0x1b0>
 8a4:	24130001 	li	s3,1
 8a8:	3c014248 	lui	at,0x4248
 8ac:	4481d000 	mtc1	at,$f26
 8b0:	3c013f80 	lui	at,0x3f80
 8b4:	3c170000 	lui	s7,0x0
 8b8:	3c150000 	lui	s5,0x0
 8bc:	4481c000 	mtc1	at,$f24
 8c0:	26b50000 	addiu	s5,s5,0
 8c4:	26f70000 	addiu	s7,s7,0
 8c8:	2416000c 	li	s6,12
 8cc:	02931824 	and	v1,s4,s3
 8d0:	54600047 	bnezl	v1,9f0 <func_80B388AC+0x1a4>
 8d4:	26310001 	addiu	s1,s1,1
 8d8:	02360019 	multu	s1,s6
 8dc:	c6440024 	lwc1	$f4,36(s2)
 8e0:	c6460028 	lwc1	$f6,40(s2)
 8e4:	c648002c 	lwc1	$f8,44(s2)
 8e8:	241800ff 	li	t8,255
 8ec:	241900ff 	li	t9,255
 8f0:	24080004 	li	t0,4
 8f4:	00007012 	mflo	t6
 8f8:	02ae1021 	addu	v0,s5,t6
 8fc:	c4540000 	lwc1	$f20,0(v0)
 900:	c4560004 	lwc1	$f22,4(v0)
 904:	c4500008 	lwc1	$f16,8(v0)
 908:	46142081 	sub.s	$f2,$f4,$f20
 90c:	46163301 	sub.s	$f12,$f6,$f22
 910:	46021282 	mul.s	$f10,$f2,$f2
 914:	46104381 	sub.s	$f14,$f8,$f16
 918:	460c6482 	mul.s	$f18,$f12,$f12
 91c:	46125100 	add.s	$f4,$f10,$f18
 920:	460e7182 	mul.s	$f6,$f14,$f14
 924:	46062000 	add.s	$f0,$f4,$f6
 928:	46000004 	sqrt.s	$f0,$f0
 92c:	461a003c 	c.lt.s	$f0,$f26
 930:	00000000 	nop
 934:	45020016 	bc1fl	990 <func_80B388AC+0x144>
 938:	8eec0000 	lw	t4,0(s7)
 93c:	5460003f 	bnezl	v1,a3c <func_80B388AC+0x1f0>
 940:	8fbf008c 	lw	ra,140(sp)
 944:	86020168 	lh	v0,360(s0)
 948:	1622000c 	bne	s1,v0,97c <func_80B388AC+0x130>
 94c:	24490001 	addiu	t1,v0,1
 950:	860f015e 	lh	t7,350(s0)
 954:	86190160 	lh	t9,352(s0)
 958:	860a016a 	lh	t2,362(s0)
 95c:	01f3c025 	or	t8,t7,s3
 960:	27280001 	addiu	t0,t9,1
 964:	254b0051 	addiu	t3,t2,81
 968:	a618015e 	sh	t8,350(s0)
 96c:	a6080160 	sh	t0,352(s0)
 970:	a6090168 	sh	t1,360(s0)
 974:	10000030 	b	a38 <func_80B388AC+0x1ec>
 978:	a60b015c 	sh	t3,348(s0)
 97c:	0c000000 	jal	0 <EnWonderItem_Destroy>
 980:	02002025 	move	a0,s0
 984:	1000002d 	b	a3c <func_80B388AC+0x1f0>
 988:	8fbf008c 	lw	ra,140(sp)
 98c:	8eec0000 	lw	t4,0(s7)
 990:	858d12d4 	lh	t5,4820(t4)
 994:	51a00016 	beqzl	t5,9f0 <func_80B388AC+0x1a4>
 998:	26310001 	addiu	s1,s1,1
 99c:	860e0032 	lh	t6,50(s0)
 9a0:	86070030 	lh	a3,48(s0)
 9a4:	44068000 	mfc1	a2,$f16
 9a8:	afae0010 	sw	t6,16(sp)
 9ac:	860f0034 	lh	t7,52(s0)
 9b0:	afa80034 	sw	t0,52(sp)
 9b4:	afb90030 	sw	t9,48(sp)
 9b8:	afb8002c 	sw	t8,44(sp)
 9bc:	afa00028 	sw	zero,40(sp)
 9c0:	afa00024 	sw	zero,36(sp)
 9c4:	e7b80020 	swc1	$f24,32(sp)
 9c8:	e7b8001c 	swc1	$f24,28(sp)
 9cc:	e7b80018 	swc1	$f24,24(sp)
 9d0:	afaf0014 	sw	t7,20(sp)
 9d4:	8fc90000 	lw	t1,0(s8)
 9d8:	4600a306 	mov.s	$f12,$f20
 9dc:	4600b386 	mov.s	$f14,$f22
 9e0:	0c000000 	jal	0 <EnWonderItem_Destroy>
 9e4:	afa90038 	sw	t1,56(sp)
 9e8:	86060158 	lh	a2,344(s0)
 9ec:	26310001 	addiu	s1,s1,1
 9f0:	0226082a 	slt	at,s1,a2
 9f4:	1420ffb5 	bnez	at,8cc <func_80B388AC+0x80>
 9f8:	00139840 	sll	s3,s3,0x1
 9fc:	860a015c 	lh	t2,348(s0)
 a00:	24010001 	li	at,1
 a04:	55410006 	bnel	t2,at,a20 <func_80B388AC+0x1d4>
 a08:	860b0160 	lh	t3,352(s0)
 a0c:	0c000000 	jal	0 <EnWonderItem_Destroy>
 a10:	02002025 	move	a0,s0
 a14:	10000009 	b	a3c <func_80B388AC+0x1f0>
 a18:	8fbf008c 	lw	ra,140(sp)
 a1c:	860b0160 	lh	t3,352(s0)
 a20:	02002025 	move	a0,s0
 a24:	03c02825 	move	a1,s8
 a28:	54cb0004 	bnel	a2,t3,a3c <func_80B388AC+0x1f0>
 a2c:	8fbf008c 	lw	ra,140(sp)
 a30:	0c000000 	jal	0 <EnWonderItem_Destroy>
 a34:	24060001 	li	a2,1
 a38:	8fbf008c 	lw	ra,140(sp)
 a3c:	d7b40048 	ldc1	$f20,72(sp)
 a40:	d7b60050 	ldc1	$f22,80(sp)
 a44:	d7b80058 	ldc1	$f24,88(sp)
 a48:	d7ba0060 	ldc1	$f26,96(sp)
 a4c:	8fb00068 	lw	s0,104(sp)
 a50:	8fb1006c 	lw	s1,108(sp)
 a54:	8fb20070 	lw	s2,112(sp)
 a58:	8fb30074 	lw	s3,116(sp)
 a5c:	8fb40078 	lw	s4,120(sp)
 a60:	8fb5007c 	lw	s5,124(sp)
 a64:	8fb60080 	lw	s6,128(sp)
 a68:	8fb70084 	lw	s7,132(sp)
 a6c:	8fbe0088 	lw	s8,136(sp)
 a70:	03e00008 	jr	ra
 a74:	27bd0090 	addiu	sp,sp,144

00000a78 <func_80B38AD8>:
 a78:	27bdffc8 	addiu	sp,sp,-56
 a7c:	afbf0034 	sw	ra,52(sp)
 a80:	afb00030 	sw	s0,48(sp)
 a84:	90820191 	lbu	v0,401(a0)
 a88:	00808025 	move	s0,a0
 a8c:	240600b3 	li	a2,179
 a90:	304e0002 	andi	t6,v0,0x2
 a94:	11c0001b 	beqz	t6,b04 <func_80B38AD8+0x8c>
 a98:	304ffffd 	andi	t7,v0,0xfffd
 a9c:	a08f0191 	sb	t7,401(a0)
 aa0:	c6040028 	lwc1	$f4,40(s0)
 aa4:	8e070024 	lw	a3,36(s0)
 aa8:	24190009 	li	t9,9
 aac:	e7a40010 	swc1	$f4,16(sp)
 ab0:	c606002c 	lwc1	$f6,44(s0)
 ab4:	afa00018 	sw	zero,24(sp)
 ab8:	24a41c24 	addiu	a0,a1,7204
 abc:	e7a60014 	swc1	$f6,20(sp)
 ac0:	8618008a 	lh	t8,138(s0)
 ac4:	afa5003c 	sw	a1,60(sp)
 ac8:	afb90024 	sw	t9,36(sp)
 acc:	afa00020 	sw	zero,32(sp)
 ad0:	0c000000 	jal	0 <EnWonderItem_Destroy>
 ad4:	afb8001c 	sw	t8,28(sp)
 ad8:	10400003 	beqz	v0,ae8 <func_80B38AD8+0x70>
 adc:	3c040000 	lui	a0,0x0
 ae0:	0c000000 	jal	0 <EnWonderItem_Destroy>
 ae4:	24840000 	addiu	a0,a0,0
 ae8:	86050162 	lh	a1,354(s0)
 aec:	04a00003 	bltz	a1,afc <func_80B38AD8+0x84>
 af0:	00000000 	nop
 af4:	0c000000 	jal	0 <EnWonderItem_Destroy>
 af8:	8fa4003c 	lw	a0,60(sp)
 afc:	0c000000 	jal	0 <EnWonderItem_Destroy>
 b00:	02002025 	move	a0,s0
 b04:	8fbf0034 	lw	ra,52(sp)
 b08:	8fb00030 	lw	s0,48(sp)
 b0c:	27bd0038 	addiu	sp,sp,56
 b10:	03e00008 	jr	ra
 b14:	00000000 	nop

00000b18 <func_80B38B78>:
 b18:	27bdffe8 	addiu	sp,sp,-24
 b1c:	afbf0014 	sw	ra,20(sp)
 b20:	3c014248 	lui	at,0x4248
 b24:	44813000 	mtc1	at,$f6
 b28:	c4840090 	lwc1	$f4,144(a0)
 b2c:	8ca21c44 	lw	v0,7236(a1)
 b30:	4606203c 	c.lt.s	$f4,$f6
 b34:	00000000 	nop
 b38:	45020011 	bc1fl	b80 <func_80B38B78+0x68>
 b3c:	8fbf0014 	lw	ra,20(sp)
 b40:	804e0a78 	lb	t6,2680(v0)
 b44:	05c3000e 	bgezl	t6,b80 <func_80B38B78+0x68>
 b48:	8fbf0014 	lw	ra,20(sp)
 b4c:	c4880028 	lwc1	$f8,40(a0)
 b50:	c44a0028 	lwc1	$f10,40(v0)
 b54:	3c0141f0 	lui	at,0x41f0
 b58:	44818000 	mtc1	at,$f16
 b5c:	460a4001 	sub.s	$f0,$f8,$f10
 b60:	46000005 	abs.s	$f0,$f0
 b64:	4610003c 	c.lt.s	$f0,$f16
 b68:	00000000 	nop
 b6c:	45020004 	bc1fl	b80 <func_80B38B78+0x68>
 b70:	8fbf0014 	lw	ra,20(sp)
 b74:	0c000000 	jal	0 <EnWonderItem_Destroy>
 b78:	24060001 	li	a2,1
 b7c:	8fbf0014 	lw	ra,20(sp)
 b80:	27bd0018 	addiu	sp,sp,24
 b84:	03e00008 	jr	ra
 b88:	00000000 	nop

00000b8c <EnWonderItem_Update>:
 b8c:	27bdffa0 	addiu	sp,sp,-96
 b90:	afbf004c 	sw	ra,76(sp)
 b94:	afb00048 	sw	s0,72(sp)
 b98:	afa50064 	sw	a1,100(sp)
 b9c:	8482015c 	lh	v0,348(a0)
 ba0:	00808025 	move	s0,a0
 ba4:	10400002 	beqz	v0,bb0 <EnWonderItem_Update+0x24>
 ba8:	244effff 	addiu	t6,v0,-1
 bac:	a48e015c 	sh	t6,348(a0)
 bb0:	8e19014c 	lw	t9,332(s0)
 bb4:	02002025 	move	a0,s0
 bb8:	8fa50064 	lw	a1,100(sp)
 bbc:	0320f809 	jalr	t9
 bc0:	00000000 	nop
 bc4:	86020154 	lh	v0,340(s0)
 bc8:	24010004 	li	at,4
 bcc:	02002025 	move	a0,s0
 bd0:	54410005 	bnel	v0,at,be8 <EnWonderItem_Update+0x5c>
 bd4:	24010003 	li	at,3
 bd8:	0c000000 	jal	0 <EnWonderItem_Destroy>
 bdc:	8e050150 	lw	a1,336(s0)
 be0:	86020154 	lh	v0,340(s0)
 be4:	24010003 	li	at,3
 be8:	10410003 	beq	v0,at,bf8 <EnWonderItem_Update+0x6c>
 bec:	02002025 	move	a0,s0
 bf0:	24010008 	li	at,8
 bf4:	1441000b 	bne	v0,at,c24 <EnWonderItem_Update+0x98>
 bf8:	26060180 	addiu	a2,s0,384
 bfc:	00c02825 	move	a1,a2
 c00:	0c000000 	jal	0 <EnWonderItem_Destroy>
 c04:	afa60050 	sw	a2,80(sp)
 c08:	8fa40064 	lw	a0,100(sp)
 c0c:	3c010001 	lui	at,0x1
 c10:	34211e60 	ori	at,at,0x1e60
 c14:	8fa60050 	lw	a2,80(sp)
 c18:	0c000000 	jal	0 <EnWonderItem_Destroy>
 c1c:	00812821 	addu	a1,a0,at
 c20:	86020154 	lh	v0,340(s0)
 c24:	2841000d 	slti	at,v0,13
 c28:	14200002 	bnez	at,c34 <EnWonderItem_Update+0xa8>
 c2c:	00401825 	move	v1,v0
 c30:	00001825 	move	v1,zero
 c34:	3c0f0000 	lui	t7,0x0
 c38:	8def0000 	lw	t7,0(t7)
 c3c:	3c0b0000 	lui	t3,0x0
 c40:	256b0000 	addiu	t3,t3,0
 c44:	85f812d4 	lh	t8,4820(t7)
 c48:	00035040 	sll	t2,v1,0x1
 c4c:	3c013f80 	lui	at,0x3f80
 c50:	1300001b 	beqz	t8,cc0 <EnWonderItem_Update+0x134>
 c54:	014b1021 	addu	v0,t2,t3
 c58:	86080032 	lh	t0,50(s0)
 c5c:	c60c0024 	lwc1	$f12,36(s0)
 c60:	c60e0028 	lwc1	$f14,40(s0)
 c64:	8e06002c 	lw	a2,44(s0)
 c68:	86070030 	lh	a3,48(s0)
 c6c:	afa80010 	sw	t0,16(sp)
 c70:	86090034 	lh	t1,52(s0)
 c74:	44810000 	mtc1	at,$f0
 c78:	844c0000 	lh	t4,0(v0)
 c7c:	844d0002 	lh	t5,2(v0)
 c80:	844e0004 	lh	t6,4(v0)
 c84:	8fb80064 	lw	t8,100(sp)
 c88:	241900ff 	li	t9,255
 c8c:	240f0004 	li	t7,4
 c90:	afaf0034 	sw	t7,52(sp)
 c94:	afb90030 	sw	t9,48(sp)
 c98:	afa90014 	sw	t1,20(sp)
 c9c:	afac0024 	sw	t4,36(sp)
 ca0:	e7a00018 	swc1	$f0,24(sp)
 ca4:	e7a0001c 	swc1	$f0,28(sp)
 ca8:	e7a00020 	swc1	$f0,32(sp)
 cac:	afad0028 	sw	t5,40(sp)
 cb0:	afae002c 	sw	t6,44(sp)
 cb4:	8f080000 	lw	t0,0(t8)
 cb8:	0c000000 	jal	0 <EnWonderItem_Destroy>
 cbc:	afa80038 	sw	t0,56(sp)
 cc0:	8fbf004c 	lw	ra,76(sp)
 cc4:	8fb00048 	lw	s0,72(sp)
 cc8:	27bd0060 	addiu	sp,sp,96
 ccc:	03e00008 	jr	ra
 cd0:	00000000 	nop
	...
