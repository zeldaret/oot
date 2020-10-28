
build/src/code/z_map_mark.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <MapMark_Init>:
   0:	3c020000 	lui	v0,0x0
   4:	244200a8 	addiu	v0,v0,168
   8:	8c4e0010 	lw	t6,16(v0)
   c:	8c4f000c 	lw	t7,12(v0)
  10:	27bdffe0 	addiu	sp,sp,-32
  14:	afbf001c 	sw	ra,28(sp)
  18:	3c060000 	lui	a2,0x0
  1c:	24c60000 	addiu	a2,a2,0
  20:	240700eb 	li	a3,235
  24:	0c000000 	jal	0 <MapMark_Init>
  28:	01cf2823 	subu	a1,t6,t7
  2c:	3c010000 	lui	at,0x0
  30:	3c040000 	lui	a0,0x0
  34:	3c060000 	lui	a2,0x0
  38:	ac2200a8 	sw	v0,168(at)
  3c:	24c60020 	addiu	a2,a2,32
  40:	24840010 	addiu	a0,a0,16
  44:	00402825 	move	a1,v0
  48:	0c000000 	jal	0 <MapMark_Init>
  4c:	240700ec 	li	a3,236
  50:	3c180000 	lui	t8,0x0
  54:	8f1800a8 	lw	t8,168(t8)
  58:	3c040000 	lui	a0,0x0
  5c:	3c050000 	lui	a1,0x0
  60:	3c060000 	lui	a2,0x0
  64:	3c070000 	lui	a3,0x0
  68:	8ce700b8 	lw	a3,184(a3)
  6c:	8cc600b4 	lw	a2,180(a2)
  70:	8ca500b0 	lw	a1,176(a1)
  74:	8c8400ac 	lw	a0,172(a0)
  78:	0c000000 	jal	0 <MapMark_Init>
  7c:	afb80010 	sw	t8,16(sp)
  80:	3c030000 	lui	v1,0x0
  84:	8c6300bc 	lw	v1,188(v1)
  88:	3c040000 	lui	a0,0x0
  8c:	3c190000 	lui	t9,0x0
  90:	24840000 	addiu	a0,a0,0
  94:	27390000 	addiu	t9,t9,0
  98:	10600008 	beqz	v1,bc <MapMark_Init+0xbc>
  9c:	ac990000 	sw	t9,0(a0)
  a0:	3c080000 	lui	t0,0x0
  a4:	3c090000 	lui	t1,0x0
  a8:	8d2900a8 	lw	t1,168(t1)
  ac:	8d0800b4 	lw	t0,180(t0)
  b0:	01095023 	subu	t2,t0,t1
  b4:	10000002 	b	c0 <MapMark_Init+0xc0>
  b8:	006a1023 	subu	v0,v1,t2
  bc:	00001025 	move	v0,zero
  c0:	8fbf001c 	lw	ra,28(sp)
  c4:	ac820000 	sw	v0,0(a0)
  c8:	27bd0020 	addiu	sp,sp,32
  cc:	03e00008 	jr	ra
  d0:	00000000 	nop

000000d4 <MapMark_ClearPointers>:
  d4:	3c010000 	lui	at,0x0
  d8:	ac2000a8 	sw	zero,168(at)
  dc:	3c010000 	lui	at,0x0
  e0:	afa40000 	sw	a0,0(sp)
  e4:	03e00008 	jr	ra
  e8:	ac200000 	sw	zero,0(at)

000000ec <MapMark_Draw>:
  ec:	27bdff30 	addiu	sp,sp,-208
  f0:	3c030000 	lui	v1,0x0
  f4:	8c630000 	lw	v1,0(v1)
  f8:	afb1001c 	sw	s1,28(sp)
  fc:	3c020000 	lui	v0,0x0
 100:	00808825 	move	s1,a0
 104:	afbf003c 	sw	ra,60(sp)
 108:	afbe0038 	sw	s8,56(sp)
 10c:	afb70034 	sw	s7,52(sp)
 110:	afb60030 	sw	s6,48(sp)
 114:	afb5002c 	sw	s5,44(sp)
 118:	afb40028 	sw	s4,40(sp)
 11c:	afb30024 	sw	s3,36(sp)
 120:	afb20020 	sw	s2,32(sp)
 124:	afb00018 	sw	s0,24(sp)
 128:	10600010 	beqz	v1,16c <MapMark_Draw+0x80>
 12c:	94421402 	lhu	v0,5122(v0)
 130:	8c6e001c 	lw	t6,28(v1)
 134:	3c060001 	lui	a2,0x1
 138:	00c43021 	addu	a2,a2,a0
 13c:	01c27821 	addu	t7,t6,v0
 140:	91e70000 	lbu	a3,0(t7)
 144:	84c6074c 	lh	a2,1868(a2)
 148:	3c040000 	lui	a0,0x0
 14c:	24840030 	addiu	a0,a0,48
 150:	00c7082a 	slt	at,a2,a3
 154:	14200005 	bnez	at,16c <MapMark_Draw+0x80>
 158:	3c050000 	lui	a1,0x0
 15c:	0c000000 	jal	0 <MapMark_Init>
 160:	24a50084 	addiu	a1,a1,132
 164:	1000012a 	b	610 <MapMark_Draw+0x524>
 168:	8fbf003c 	lw	ra,60(sp)
 16c:	3c010001 	lui	at,0x1
 170:	342104f0 	ori	at,at,0x4f0
 174:	02211821 	addu	v1,s1,at
 178:	846b025c 	lh	t3,604(v1)
 17c:	3c180000 	lui	t8,0x0
 180:	8f180000 	lw	t8,0(t8)
 184:	000b60c0 	sll	t4,t3,0x3
 188:	0002c880 	sll	t9,v0,0x2
 18c:	018b6023 	subu	t4,t4,t3
 190:	000c60c0 	sll	t4,t4,0x3
 194:	03194821 	addu	t1,t8,t9
 198:	8d2a0000 	lw	t2,0(t1)
 19c:	8e250000 	lw	a1,0(s1)
 1a0:	018b6021 	addu	t4,t4,t3
 1a4:	000c6040 	sll	t4,t4,0x1
 1a8:	3c060000 	lui	a2,0x0
 1ac:	24c60088 	addiu	a2,a2,136
 1b0:	afb100d0 	sw	s1,208(sp)
 1b4:	afa30050 	sw	v1,80(sp)
 1b8:	27a4009c 	addiu	a0,sp,156
 1bc:	2407012f 	li	a3,303
 1c0:	014c9021 	addu	s2,t2,t4
 1c4:	0c000000 	jal	0 <MapMark_Init>
 1c8:	00a08025 	move	s0,a1
 1cc:	3c1e0000 	lui	s8,0x0
 1d0:	3c150000 	lui	s5,0x0
 1d4:	26b50010 	addiu	s5,s5,16
 1d8:	27de0060 	addiu	s8,s8,96
 1dc:	3c170700 	lui	s7,0x700
 1e0:	3c16f500 	lui	s6,0xf500
 1e4:	3c14e700 	lui	s4,0xe700
 1e8:	824d0000 	lb	t5,0(s2)
 1ec:	2401ffff 	li	at,-1
 1f0:	51a10100 	beql	t5,at,5f4 <MapMark_Draw+0x508>
 1f4:	8faa00d0 	lw	t2,208(sp)
 1f8:	8e0202b0 	lw	v0,688(s0)
 1fc:	3c18e300 	lui	t8,0xe300
 200:	37181001 	ori	t8,t8,0x1001
 204:	244e0008 	addiu	t6,v0,8
 208:	ae0e02b0 	sw	t6,688(s0)
 20c:	ac400004 	sw	zero,4(v0)
 210:	ac540000 	sw	s4,0(v0)
 214:	8e0202b0 	lw	v0,688(s0)
 218:	3c09fa00 	lui	t1,0xfa00
 21c:	2401ff00 	li	at,-256
 220:	244f0008 	addiu	t7,v0,8
 224:	ae0f02b0 	sw	t7,688(s0)
 228:	ac400004 	sw	zero,4(v0)
 22c:	ac580000 	sw	t8,0(v0)
 230:	8e0202b0 	lw	v0,688(s0)
 234:	3c0ffb00 	lui	t7,0xfb00
 238:	00009825 	move	s3,zero
 23c:	24590008 	addiu	t9,v0,8
 240:	ae1902b0 	sw	t9,688(s0)
 244:	ac490000 	sw	t1,0(v0)
 248:	8fab0050 	lw	t3,80(sp)
 24c:	26510002 	addiu	s1,s2,2
 250:	956a0254 	lhu	t2,596(t3)
 254:	314c00ff 	andi	t4,t2,0xff
 258:	01816825 	or	t5,t4,at
 25c:	ac4d0004 	sw	t5,4(v0)
 260:	8e0202b0 	lw	v0,688(s0)
 264:	244e0008 	addiu	t6,v0,8
 268:	ae0e02b0 	sw	t6,688(s0)
 26c:	ac4f0000 	sw	t7,0(v0)
 270:	8fb80050 	lw	t8,80(sp)
 274:	97190254 	lhu	t9,596(t8)
 278:	332900ff 	andi	t1,t9,0xff
 27c:	ac490004 	sw	t1,4(v0)
 280:	924b0001 	lbu	t3,1(s2)
 284:	196000d8 	blez	t3,5e8 <MapMark_Draw+0x4fc>
 288:	00000000 	nop
 28c:	82420000 	lb	v0,0(s2)
 290:	8fa400d0 	lw	a0,208(sp)
 294:	54400007 	bnezl	v0,2b4 <MapMark_Draw+0x1c8>
 298:	000250c0 	sll	t2,v0,0x3
 29c:	0c000000 	jal	0 <MapMark_Init>
 2a0:	82250000 	lb	a1,0(s1)
 2a4:	544000cb 	bnezl	v0,5d4 <MapMark_Draw+0x4e8>
 2a8:	92580001 	lbu	t8,1(s2)
 2ac:	82420000 	lb	v0,0(s2)
 2b0:	000250c0 	sll	t2,v0,0x3
 2b4:	01425021 	addu	t2,t2,v0
 2b8:	8e0202b0 	lw	v0,688(s0)
 2bc:	000a5080 	sll	t2,t2,0x2
 2c0:	03ca2821 	addu	a1,s8,t2
 2c4:	244c0008 	addiu	t4,v0,8
 2c8:	ae0c02b0 	sw	t4,688(s0)
 2cc:	ac400004 	sw	zero,4(v0)
 2d0:	ac540000 	sw	s4,0(v0)
 2d4:	8e0202b0 	lw	v0,688(s0)
 2d8:	3c01fd00 	lui	at,0xfd00
 2dc:	240707ff 	li	a3,2047
 2e0:	244d0008 	addiu	t5,v0,8
 2e4:	ae0d02b0 	sw	t5,688(s0)
 2e8:	8cae0008 	lw	t6,8(a1)
 2ec:	8cac0004 	lw	t4,4(a1)
 2f0:	000e7880 	sll	t7,t6,0x2
 2f4:	02afc021 	addu	t8,s5,t7
 2f8:	8f190000 	lw	t9,0(t8)
 2fc:	318d0007 	andi	t5,t4,0x7
 300:	000d7540 	sll	t6,t5,0x15
 304:	33290003 	andi	t1,t9,0x3
 308:	00095cc0 	sll	t3,t1,0x13
 30c:	01615025 	or	t2,t3,at
 310:	014e7825 	or	t7,t2,t6
 314:	ac4f0000 	sw	t7,0(v0)
 318:	8cb80000 	lw	t8,0(a1)
 31c:	ac580004 	sw	t8,4(v0)
 320:	8e0202b0 	lw	v0,688(s0)
 324:	24590008 	addiu	t9,v0,8
 328:	ae1902b0 	sw	t9,688(s0)
 32c:	8ca90008 	lw	t1,8(a1)
 330:	8cb80004 	lw	t8,4(a1)
 334:	00095880 	sll	t3,t1,0x2
 338:	02ab6021 	addu	t4,s5,t3
 33c:	8d8d0000 	lw	t5,0(t4)
 340:	33190007 	andi	t9,t8,0x7
 344:	00194d40 	sll	t1,t9,0x15
 348:	31aa0003 	andi	t2,t5,0x3
 34c:	000a74c0 	sll	t6,t2,0x13
 350:	01d67825 	or	t7,t6,s6
 354:	01e95825 	or	t3,t7,t1
 358:	ac4b0000 	sw	t3,0(v0)
 35c:	ac570004 	sw	s7,4(v0)
 360:	8e0202b0 	lw	v0,688(s0)
 364:	3c0de600 	lui	t5,0xe600
 368:	3c0ef300 	lui	t6,0xf300
 36c:	244c0008 	addiu	t4,v0,8
 370:	ae0c02b0 	sw	t4,688(s0)
 374:	ac400004 	sw	zero,4(v0)
 378:	ac4d0000 	sw	t5,0(v0)
 37c:	8e0802b0 	lw	t0,688(s0)
 380:	3c0f0000 	lui	t7,0x0
 384:	3c0b0000 	lui	t3,0x0
 388:	250a0008 	addiu	t2,t0,8
 38c:	ae0a02b0 	sw	t2,688(s0)
 390:	ad0e0000 	sw	t6,0(t0)
 394:	8cb80010 	lw	t8,16(a1)
 398:	8ca4000c 	lw	a0,12(a1)
 39c:	8ca30008 	lw	v1,8(a1)
 3a0:	3c0c0000 	lui	t4,0x0
 3a4:	00980019 	multu	a0,t8
 3a8:	00031880 	sll	v1,v1,0x2
 3ac:	01e37821 	addu	t7,t7,v1
 3b0:	8def0020 	lw	t7,32(t7)
 3b4:	01635821 	addu	t3,t3,v1
 3b8:	8d6b0030 	lw	t3,48(t3)
 3bc:	01836021 	addu	t4,t4,v1
 3c0:	0000c812 	mflo	t9
 3c4:	032f4821 	addu	t1,t9,t7
 3c8:	01693006 	srlv	a2,t1,t3
 3cc:	24c6ffff 	addiu	a2,a2,-1
 3d0:	2cc107ff 	sltiu	at,a2,2047
 3d4:	10200003 	beqz	at,3e4 <MapMark_Draw+0x2f8>
 3d8:	00000000 	nop
 3dc:	10000001 	b	3e4 <MapMark_Draw+0x2f8>
 3e0:	00c03825 	move	a3,a2
 3e4:	8d8c0040 	lw	t4,64(t4)
 3e8:	30f90fff 	andi	t9,a3,0xfff
 3ec:	00197b00 	sll	t7,t9,0xc
 3f0:	01840019 	multu	t4,a0
 3f4:	00001012 	mflo	v0
 3f8:	000210c2 	srl	v0,v0,0x3
 3fc:	14400003 	bnez	v0,40c <MapMark_Draw+0x320>
 400:	00402025 	move	a0,v0
 404:	10000001 	b	40c <MapMark_Draw+0x320>
 408:	24040001 	li	a0,1
 40c:	14400003 	bnez	v0,41c <MapMark_Draw+0x330>
 410:	248d07ff 	addiu	t5,a0,2047
 414:	10000002 	b	420 <MapMark_Draw+0x334>
 418:	24030001 	li	v1,1
 41c:	00401825 	move	v1,v0
 420:	01a3001b 	divu	zero,t5,v1
 424:	00005012 	mflo	t2
 428:	314e0fff 	andi	t6,t2,0xfff
 42c:	01d7c025 	or	t8,t6,s7
 430:	030f4825 	or	t1,t8,t7
 434:	ad090004 	sw	t1,4(t0)
 438:	8e0202b0 	lw	v0,688(s0)
 43c:	14600002 	bnez	v1,448 <MapMark_Draw+0x35c>
 440:	00000000 	nop
 444:	0007000d 	break	0x7
 448:	244b0008 	addiu	t3,v0,8
 44c:	ae0b02b0 	sw	t3,688(s0)
 450:	ac400004 	sw	zero,4(v0)
 454:	ac540000 	sw	s4,0(v0)
 458:	8e0202b0 	lw	v0,688(s0)
 45c:	3c0d0000 	lui	t5,0x0
 460:	3c01e400 	lui	at,0xe400
 464:	244c0008 	addiu	t4,v0,8
 468:	ae0c02b0 	sw	t4,688(s0)
 46c:	8ca30008 	lw	v1,8(a1)
 470:	8caa000c 	lw	t2,12(a1)
 474:	8cac0004 	lw	t4,4(a1)
 478:	00031880 	sll	v1,v1,0x2
 47c:	01a36821 	addu	t5,t5,v1
 480:	8dad0050 	lw	t5,80(t5)
 484:	01aa0019 	multu	t5,t2
 488:	318d0007 	andi	t5,t4,0x7
 48c:	000d5540 	sll	t2,t5,0x15
 490:	3c0df200 	lui	t5,0xf200
 494:	00007012 	mflo	t6
 498:	25d90007 	addiu	t9,t6,7
 49c:	0019c0c2 	srl	t8,t9,0x3
 4a0:	3c190000 	lui	t9,0x0
 4a4:	0323c821 	addu	t9,t9,v1
 4a8:	8f390000 	lw	t9,0(t9)
 4ac:	330f01ff 	andi	t7,t8,0x1ff
 4b0:	000f4a40 	sll	t1,t7,0x9
 4b4:	01365825 	or	t3,t1,s6
 4b8:	33380003 	andi	t8,t9,0x3
 4bc:	00187cc0 	sll	t7,t8,0x13
 4c0:	016a7025 	or	t6,t3,t2
 4c4:	01cf4825 	or	t1,t6,t7
 4c8:	ac490000 	sw	t1,0(v0)
 4cc:	ac400004 	sw	zero,4(v0)
 4d0:	8e0202b0 	lw	v0,688(s0)
 4d4:	244c0008 	addiu	t4,v0,8
 4d8:	ae0c02b0 	sw	t4,688(s0)
 4dc:	ac4d0000 	sw	t5,0(v0)
 4e0:	8cab000c 	lw	t3,12(a1)
 4e4:	8caf0010 	lw	t7,16(a1)
 4e8:	256affff 	addiu	t2,t3,-1
 4ec:	000ac880 	sll	t9,t2,0x2
 4f0:	25e9ffff 	addiu	t1,t7,-1
 4f4:	00096080 	sll	t4,t1,0x2
 4f8:	33380fff 	andi	t8,t9,0xfff
 4fc:	00187300 	sll	t6,t8,0xc
 500:	318d0fff 	andi	t5,t4,0xfff
 504:	01cd5825 	or	t3,t6,t5
 508:	ac4b0004 	sw	t3,4(v0)
 50c:	3c020000 	lui	v0,0x0
 510:	8c420000 	lw	v0,0(v0)
 514:	92390001 	lbu	t9,1(s1)
 518:	922f0002 	lbu	t7,2(s1)
 51c:	844a1150 	lh	t2,4432(v0)
 520:	84581152 	lh	t8,4434(v0)
 524:	8e0202b0 	lw	v0,688(s0)
 528:	01592021 	addu	a0,t2,t9
 52c:	248400cc 	addiu	a0,a0,204
 530:	24490008 	addiu	t1,v0,8
 534:	ae0902b0 	sw	t1,688(s0)
 538:	8cac0014 	lw	t4,20(a1)
 53c:	00042080 	sll	a0,a0,0x2
 540:	8cb90018 	lw	t9,24(a1)
 544:	030f3021 	addu	a2,t8,t7
 548:	01847021 	addu	t6,t4,a0
 54c:	24c6008c 	addiu	a2,a2,140
 550:	31cd0fff 	andi	t5,t6,0xfff
 554:	00063080 	sll	a2,a2,0x2
 558:	000d5b00 	sll	t3,t5,0xc
 55c:	01615025 	or	t2,t3,at
 560:	308c0fff 	andi	t4,a0,0xfff
 564:	00d9c021 	addu	t8,a2,t9
 568:	330f0fff 	andi	t7,t8,0xfff
 56c:	000c7300 	sll	t6,t4,0xc
 570:	30cd0fff 	andi	t5,a2,0xfff
 574:	01cd5825 	or	t3,t6,t5
 578:	014f4825 	or	t1,t2,t7
 57c:	ac490000 	sw	t1,0(v0)
 580:	ac4b0004 	sw	t3,4(v0)
 584:	8e0202b0 	lw	v0,688(s0)
 588:	3c18e100 	lui	t8,0xe100
 58c:	3c0ff100 	lui	t7,0xf100
 590:	24590008 	addiu	t9,v0,8
 594:	ae1902b0 	sw	t9,688(s0)
 598:	ac400004 	sw	zero,4(v0)
 59c:	ac580000 	sw	t8,0(v0)
 5a0:	8e0202b0 	lw	v0,688(s0)
 5a4:	244a0008 	addiu	t2,v0,8
 5a8:	ae0a02b0 	sw	t2,688(s0)
 5ac:	ac4f0000 	sw	t7,0(v0)
 5b0:	8ca9001c 	lw	t1,28(a1)
 5b4:	8cad0020 	lw	t5,32(a1)
 5b8:	00401825 	move	v1,v0
 5bc:	312cffff 	andi	t4,t1,0xffff
 5c0:	000c7400 	sll	t6,t4,0x10
 5c4:	31abffff 	andi	t3,t5,0xffff
 5c8:	01cbc825 	or	t9,t6,t3
 5cc:	ac590004 	sw	t9,4(v0)
 5d0:	92580001 	lbu	t8,1(s2)
 5d4:	26730001 	addiu	s3,s3,1
 5d8:	26310003 	addiu	s1,s1,3
 5dc:	0278082a 	slt	at,s3,t8
 5e0:	5420ff2b 	bnezl	at,290 <MapMark_Draw+0x1a4>
 5e4:	82420000 	lb	v0,0(s2)
 5e8:	1000feff 	b	1e8 <MapMark_Draw+0xfc>
 5ec:	26520026 	addiu	s2,s2,38
 5f0:	8faa00d0 	lw	t2,208(sp)
 5f4:	3c060000 	lui	a2,0x0
 5f8:	24c60098 	addiu	a2,a2,152
 5fc:	27a4009c 	addiu	a0,sp,156
 600:	24070153 	li	a3,339
 604:	0c000000 	jal	0 <MapMark_Init>
 608:	8d450000 	lw	a1,0(t2)
 60c:	8fbf003c 	lw	ra,60(sp)
 610:	8fb00018 	lw	s0,24(sp)
 614:	8fb1001c 	lw	s1,28(sp)
 618:	8fb20020 	lw	s2,32(sp)
 61c:	8fb30024 	lw	s3,36(sp)
 620:	8fb40028 	lw	s4,40(sp)
 624:	8fb5002c 	lw	s5,44(sp)
 628:	8fb60030 	lw	s6,48(sp)
 62c:	8fb70034 	lw	s7,52(sp)
 630:	8fbe0038 	lw	s8,56(sp)
 634:	03e00008 	jr	ra
 638:	27bd00d0 	addiu	sp,sp,208

0000063c <MapMark_DrawConditionally>:
 63c:	27bdffe8 	addiu	sp,sp,-24
 640:	afbf0014 	sw	ra,20(sp)
 644:	948e00a4 	lhu	t6,164(a0)
 648:	2dc10016 	sltiu	at,t6,22
 64c:	10200008 	beqz	at,670 <MapMark_DrawConditionally+0x34>
 650:	000e7080 	sll	t6,t6,0x2
 654:	3c010000 	lui	at,0x0
 658:	002e0821 	addu	at,at,t6
 65c:	8c2e00a8 	lw	t6,168(at)
 660:	01c00008 	jr	t6
 664:	00000000 	nop
 668:	0c000000 	jal	0 <MapMark_Init>
 66c:	00000000 	nop
 670:	8fbf0014 	lw	ra,20(sp)
 674:	27bd0018 	addiu	sp,sp,24
 678:	03e00008 	jr	ra
 67c:	00000000 	nop
