
build/src/code/z_skin_awb.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800A6460>:
   0:	27bdffb8 	addiu	sp,sp,-72
   4:	afb30014 	sw	s3,20(sp)
   8:	afb20010 	sw	s2,16(sp)
   c:	afb1000c 	sw	s1,12(sp)
  10:	afb00008 	sw	s0,8(sp)
  14:	afa40048 	sw	a0,72(sp)
  18:	8cae0000 	lw	t6,0(a1)
  1c:	3c040000 	lui	a0,0x0
  20:	24840000 	addiu	a0,a0,0
  24:	8dcb0000 	lw	t3,0(t6)
  28:	3c0700ff 	lui	a3,0xff
  2c:	34e7ffff 	ori	a3,a3,0xffff
  30:	000b7900 	sll	t7,t3,0x4
  34:	000fc702 	srl	t8,t7,0x1c
  38:	0018c880 	sll	t9,t8,0x2
  3c:	00997021 	addu	t6,a0,t9
  40:	8dcf0000 	lw	t7,0(t6)
  44:	0167c024 	and	t8,t3,a3
  48:	3c088000 	lui	t0,0x8000
  4c:	01f8c821 	addu	t9,t7,t8
  50:	03285021 	addu	t2,t9,t0
  54:	00067080 	sll	t6,a2,0x2
  58:	014e7821 	addu	t7,t2,t6
  5c:	8dec0000 	lw	t4,0(t7)
  60:	2412000a 	li	s2,10
  64:	24130008 	li	s3,8
  68:	000cc900 	sll	t9,t4,0x4
  6c:	00197702 	srl	t6,t9,0x1c
  70:	000e7880 	sll	t7,t6,0x2
  74:	008fc821 	addu	t9,a0,t7
  78:	8f2e0000 	lw	t6,0(t9)
  7c:	0187c024 	and	t8,t4,a3
  80:	00004825 	move	t1,zero
  84:	030e7821 	addu	t7,t8,t6
  88:	01e8c821 	addu	t9,t7,t0
  8c:	8f2d000c 	lw	t5,12(t9)
  90:	000d7100 	sll	t6,t5,0x4
  94:	000e7f02 	srl	t7,t6,0x1c
  98:	000fc880 	sll	t9,t7,0x2
  9c:	00997021 	addu	t6,a0,t9
  a0:	8dcf0000 	lw	t7,0(t6)
  a4:	01a7c024 	and	t8,t5,a3
  a8:	030fc821 	addu	t9,t8,t7
  ac:	03281821 	addu	v1,t9,t0
  b0:	8c780004 	lw	t8,4(v1)
  b4:	00187900 	sll	t7,t8,0x4
  b8:	000fcf02 	srl	t9,t7,0x1c
  bc:	00197080 	sll	t6,t9,0x2
  c0:	008e7821 	addu	t7,a0,t6
  c4:	8df90000 	lw	t9,0(t7)
  c8:	afa00044 	sw	zero,68(sp)
  cc:	03077024 	and	t6,t8,a3
  d0:	afb80018 	sw	t8,24(sp)
  d4:	94780002 	lhu	t8,2(v1)
  d8:	032e7821 	addu	t7,t9,t6
  dc:	01e81021 	addu	v0,t7,t0
  e0:	0018c900 	sll	t9,t8,0x4
  e4:	03228021 	addu	s0,t9,v0
  e8:	8cae0048 	lw	t6,72(a1)
  ec:	00067880 	sll	t7,a2,0x2
  f0:	01e67823 	subu	t7,t7,a2
  f4:	000f7880 	sll	t7,t7,0x2
  f8:	01cfc021 	addu	t8,t6,t7
  fc:	0309c821 	addu	t9,t8,t1
 100:	0050082b 	sltu	at,v0,s0
 104:	8f2a0004 	lw	t2,4(t9)
 108:	1020002b 	beqz	at,1b8 <func_800A6460+0x1b8>
 10c:	00405825 	move	t3,v0
 110:	8d6d0008 	lw	t5,8(t3)
 114:	000d7100 	sll	t6,t5,0x4
 118:	000e7f02 	srl	t7,t6,0x1c
 11c:	000fc080 	sll	t8,t7,0x2
 120:	0098c821 	addu	t9,a0,t8
 124:	8f2e0000 	lw	t6,0(t9)
 128:	95790000 	lhu	t9,0(t3)
 12c:	01a77824 	and	t7,t5,a3
 130:	01cfc021 	addu	t8,t6,t7
 134:	03320019 	multu	t9,s2
 138:	03086021 	addu	t4,t8,t0
 13c:	01808825 	move	s1,t4
 140:	00007012 	mflo	t6
 144:	01cc7821 	addu	t7,t6,t4
 148:	018f082b 	sltu	at,t4,t7
 14c:	50200017 	beqzl	at,1ac <func_800A6460+0x1ac>
 150:	256b0010 	addiu	t3,t3,16
 154:	96380000 	lhu	t8,0(s1)
 158:	2631000a 	addiu	s1,s1,10
 15c:	0018c900 	sll	t9,t8,0x4
 160:	032a6821 	addu	t5,t9,t2
 164:	a5a00006 	sh	zero,6(t5)
 168:	862efff8 	lh	t6,-8(s1)
 16c:	a5ae0008 	sh	t6,8(t5)
 170:	862ffffa 	lh	t7,-6(s1)
 174:	a5af000a 	sh	t7,10(t5)
 178:	9238ffff 	lbu	t8,-1(s1)
 17c:	a1b8000f 	sb	t8,15(t5)
 180:	95790000 	lhu	t9,0(t3)
 184:	03320019 	multu	t9,s2
 188:	00007012 	mflo	t6
 18c:	01cc7821 	addu	t7,t6,t4
 190:	022f082b 	sltu	at,s1,t7
 194:	5420fff0 	bnezl	at,158 <func_800A6460+0x158>
 198:	96380000 	lhu	t8,0(s1)
 19c:	94780002 	lhu	t8,2(v1)
 1a0:	0018c900 	sll	t9,t8,0x4
 1a4:	03228021 	addu	s0,t9,v0
 1a8:	256b0010 	addiu	t3,t3,16
 1ac:	0170082b 	sltu	at,t3,s0
 1b0:	5420ffd8 	bnezl	at,114 <func_800A6460+0x114>
 1b4:	8d6d0008 	lw	t5,8(t3)
 1b8:	25290004 	addiu	t1,t1,4
 1bc:	5533ffcb 	bnel	t1,s3,ec <func_800A6460+0xec>
 1c0:	8cae0048 	lw	t6,72(a1)
 1c4:	8fb00008 	lw	s0,8(sp)
 1c8:	8fb1000c 	lw	s1,12(sp)
 1cc:	8fb20010 	lw	s2,16(sp)
 1d0:	8fb30014 	lw	s3,20(sp)
 1d4:	03e00008 	jr	ra
 1d8:	27bd0048 	addiu	sp,sp,72

000001dc <func_800A663C>:
 1dc:	27bdffb8 	addiu	sp,sp,-72
 1e0:	afb60030 	sw	s6,48(sp)
 1e4:	00067100 	sll	t6,a2,0x4
 1e8:	3c160000 	lui	s6,0x0
 1ec:	000e7f02 	srl	t7,t6,0x1c
 1f0:	26d60000 	addiu	s6,s6,0
 1f4:	000fc080 	sll	t8,t7,0x2
 1f8:	afb70034 	sw	s7,52(sp)
 1fc:	02d8c821 	addu	t9,s6,t8
 200:	8f290000 	lw	t1,0(t9)
 204:	3c1700ff 	lui	s7,0xff
 208:	36f7ffff 	ori	s7,s7,0xffff
 20c:	afbe0038 	sw	s8,56(sp)
 210:	00d75024 	and	t2,a2,s7
 214:	3c1e8000 	lui	s8,0x8000
 218:	012a5821 	addu	t3,t1,t2
 21c:	afbf003c 	sw	ra,60(sp)
 220:	afb5002c 	sw	s5,44(sp)
 224:	afb40028 	sw	s4,40(sp)
 228:	afb30024 	sw	s3,36(sp)
 22c:	afb20020 	sw	s2,32(sp)
 230:	afb1001c 	sw	s1,28(sp)
 234:	afb00018 	sw	s0,24(sp)
 238:	afa40048 	sw	a0,72(sp)
 23c:	afa70054 	sw	a3,84(sp)
 240:	017e1021 	addu	v0,t3,s8
 244:	904c0004 	lbu	t4,4(v0)
 248:	aca20000 	sw	v0,0(a1)
 24c:	00a0a825 	move	s5,a1
 250:	acac0044 	sw	t4,68(a1)
 254:	8c430000 	lw	v1,0(v0)
 258:	90480004 	lbu	t0,4(v0)
 25c:	00c08825 	move	s1,a2
 260:	00036900 	sll	t5,v1,0x4
 264:	000d7702 	srl	t6,t5,0x1c
 268:	000e7880 	sll	t7,t6,0x2
 26c:	02cfc021 	addu	t8,s6,t7
 270:	8f190000 	lw	t9,0(t8)
 274:	00774824 	and	t1,v1,s7
 278:	00082080 	sll	a0,t0,0x2
 27c:	3c050000 	lui	a1,0x0
 280:	00882023 	subu	a0,a0,t0
 284:	03295021 	addu	t2,t9,t1
 288:	015e8021 	addu	s0,t2,s8
 28c:	00042080 	sll	a0,a0,0x2
 290:	24a50000 	addiu	a1,a1,0
 294:	afb10050 	sw	s1,80(sp)
 298:	240600d4 	li	a2,212
 29c:	0c000000 	jal	0 <func_800A6460>
 2a0:	afa80044 	sw	t0,68(sp)
 2a4:	14400007 	bnez	v0,2c4 <func_800A663C+0xe8>
 2a8:	aea20048 	sw	v0,72(s5)
 2ac:	3c040000 	lui	a0,0x0
 2b0:	3c050000 	lui	a1,0x0
 2b4:	24a50000 	addiu	a1,a1,0
 2b8:	24840000 	addiu	a0,a0,0
 2bc:	0c000000 	jal	0 <func_800A6460>
 2c0:	240600d6 	li	a2,214
 2c4:	8fab0044 	lw	t3,68(sp)
 2c8:	00009025 	move	s2,zero
 2cc:	00009825 	move	s3,zero
 2d0:	19600044 	blez	t3,3e4 <func_800A663C+0x208>
 2d4:	0200a025 	move	s4,s0
 2d8:	8e820000 	lw	v0,0(s4)
 2dc:	8eac0048 	lw	t4,72(s5)
 2e0:	24010004 	li	at,4
 2e4:	00027100 	sll	t6,v0,0x4
 2e8:	000e7f02 	srl	t7,t6,0x1c
 2ec:	000fc080 	sll	t8,t7,0x2
 2f0:	02d8c821 	addu	t9,s6,t8
 2f4:	8f290000 	lw	t1,0(t9)
 2f8:	00576824 	and	t5,v0,s7
 2fc:	01938021 	addu	s0,t4,s3
 300:	01a95021 	addu	t2,t5,t1
 304:	015e1821 	addu	v1,t2,s8
 308:	8c6b0008 	lw	t3,8(v1)
 30c:	55610006 	bnel	t3,at,328 <func_800A663C+0x14c>
 310:	a2000000 	sb	zero,0(s0)
 314:	8c67000c 	lw	a3,12(v1)
 318:	3c050000 	lui	a1,0x0
 31c:	14e00005 	bnez	a3,334 <func_800A663C+0x158>
 320:	00f76024 	and	t4,a3,s7
 324:	a2000000 	sb	zero,0(s0)
 328:	ae000004 	sw	zero,4(s0)
 32c:	10000028 	b	3d0 <func_800A663C+0x1f4>
 330:	ae000008 	sw	zero,8(s0)
 334:	00077100 	sll	t6,a3,0x4
 338:	000e7f02 	srl	t7,t6,0x1c
 33c:	000fc080 	sll	t8,t7,0x2
 340:	02d8c821 	addu	t9,s6,t8
 344:	8f2d0000 	lw	t5,0(t9)
 348:	a2000000 	sb	zero,0(s0)
 34c:	24a50000 	addiu	a1,a1,0
 350:	018d4821 	addu	t1,t4,t5
 354:	013e8821 	addu	s1,t1,s8
 358:	96240000 	lhu	a0,0(s1)
 35c:	240600eb 	li	a2,235
 360:	0c000000 	jal	0 <func_800A6460>
 364:	00042100 	sll	a0,a0,0x4
 368:	14400007 	bnez	v0,388 <func_800A663C+0x1ac>
 36c:	ae020004 	sw	v0,4(s0)
 370:	3c040000 	lui	a0,0x0
 374:	3c050000 	lui	a1,0x0
 378:	24a50000 	addiu	a1,a1,0
 37c:	24840000 	addiu	a0,a0,0
 380:	0c000000 	jal	0 <func_800A6460>
 384:	240600ed 	li	a2,237
 388:	96240000 	lhu	a0,0(s1)
 38c:	3c050000 	lui	a1,0x0
 390:	24a50000 	addiu	a1,a1,0
 394:	240600f0 	li	a2,240
 398:	0c000000 	jal	0 <func_800A6460>
 39c:	00042100 	sll	a0,a0,0x4
 3a0:	14400007 	bnez	v0,3c0 <func_800A663C+0x1e4>
 3a4:	ae020008 	sw	v0,8(s0)
 3a8:	3c040000 	lui	a0,0x0
 3ac:	3c050000 	lui	a1,0x0
 3b0:	24a50000 	addiu	a1,a1,0
 3b4:	24840000 	addiu	a0,a0,0
 3b8:	0c000000 	jal	0 <func_800A6460>
 3bc:	240600f2 	li	a2,242
 3c0:	8fa40048 	lw	a0,72(sp)
 3c4:	02a02825 	move	a1,s5
 3c8:	0c000000 	jal	0 <func_800A6460>
 3cc:	02403025 	move	a2,s2
 3d0:	8faa0044 	lw	t2,68(sp)
 3d4:	26520001 	addiu	s2,s2,1
 3d8:	2673000c 	addiu	s3,s3,12
 3dc:	164affbe 	bne	s2,t2,2d8 <func_800A663C+0xfc>
 3e0:	26940004 	addiu	s4,s4,4
 3e4:	8fa40048 	lw	a0,72(sp)
 3e8:	26a5004c 	addiu	a1,s5,76
 3ec:	8fa60050 	lw	a2,80(sp)
 3f0:	0c000000 	jal	0 <func_800A6460>
 3f4:	8fa70054 	lw	a3,84(sp)
 3f8:	8fbf003c 	lw	ra,60(sp)
 3fc:	8fb00018 	lw	s0,24(sp)
 400:	8fb1001c 	lw	s1,28(sp)
 404:	8fb20020 	lw	s2,32(sp)
 408:	8fb30024 	lw	s3,36(sp)
 40c:	8fb40028 	lw	s4,40(sp)
 410:	8fb5002c 	lw	s5,44(sp)
 414:	8fb60030 	lw	s6,48(sp)
 418:	8fb70034 	lw	s7,52(sp)
 41c:	8fbe0038 	lw	s8,56(sp)
 420:	03e00008 	jr	ra
 424:	27bd0048 	addiu	sp,sp,72

00000428 <func_800A6888>:
 428:	27bdffd0 	addiu	sp,sp,-48
 42c:	afbf002c 	sw	ra,44(sp)
 430:	afb40028 	sw	s4,40(sp)
 434:	afb30024 	sw	s3,36(sp)
 438:	afb20020 	sw	s2,32(sp)
 43c:	afb1001c 	sw	s1,28(sp)
 440:	afb00018 	sw	s0,24(sp)
 444:	afa40030 	sw	a0,48(sp)
 448:	8ca70048 	lw	a3,72(a1)
 44c:	00a08825 	move	s1,a1
 450:	50e0002f 	beqzl	a3,510 <func_800A6888+0xe8>
 454:	8fbf002c 	lw	ra,44(sp)
 458:	8cae0044 	lw	t6,68(a1)
 45c:	00009025 	move	s2,zero
 460:	00008025 	move	s0,zero
 464:	19c00020 	blez	t6,4e8 <func_800A6888+0xc0>
 468:	3c140000 	lui	s4,0x0
 46c:	3c130000 	lui	s3,0x0
 470:	26730000 	addiu	s3,s3,0
 474:	26940000 	addiu	s4,s4,0
 478:	00f01021 	addu	v0,a3,s0
 47c:	8c440004 	lw	a0,4(v0)
 480:	02602825 	move	a1,s3
 484:	50800009 	beqzl	a0,4ac <func_800A6888+0x84>
 488:	8c440008 	lw	a0,8(v0)
 48c:	0c000000 	jal	0 <func_800A6460>
 490:	24060114 	li	a2,276
 494:	8e2f0048 	lw	t7,72(s1)
 498:	01f0c021 	addu	t8,t7,s0
 49c:	af000004 	sw	zero,4(t8)
 4a0:	8e270048 	lw	a3,72(s1)
 4a4:	00f01021 	addu	v0,a3,s0
 4a8:	8c440008 	lw	a0,8(v0)
 4ac:	02802825 	move	a1,s4
 4b0:	50800008 	beqzl	a0,4d4 <func_800A6888+0xac>
 4b4:	8e290044 	lw	t1,68(s1)
 4b8:	0c000000 	jal	0 <func_800A6460>
 4bc:	24060118 	li	a2,280
 4c0:	8e390048 	lw	t9,72(s1)
 4c4:	03304021 	addu	t0,t9,s0
 4c8:	ad000008 	sw	zero,8(t0)
 4cc:	8e270048 	lw	a3,72(s1)
 4d0:	8e290044 	lw	t1,68(s1)
 4d4:	26520001 	addiu	s2,s2,1
 4d8:	2610000c 	addiu	s0,s0,12
 4dc:	0249082a 	slt	at,s2,t1
 4e0:	5420ffe6 	bnezl	at,47c <func_800A6888+0x54>
 4e4:	00f01021 	addu	v0,a3,s0
 4e8:	10e00005 	beqz	a3,500 <func_800A6888+0xd8>
 4ec:	00e02025 	move	a0,a3
 4f0:	3c050000 	lui	a1,0x0
 4f4:	24a50000 	addiu	a1,a1,0
 4f8:	0c000000 	jal	0 <func_800A6460>
 4fc:	2406011e 	li	a2,286
 500:	2624004c 	addiu	a0,s1,76
 504:	0c000000 	jal	0 <func_800A6460>
 508:	8fa50030 	lw	a1,48(sp)
 50c:	8fbf002c 	lw	ra,44(sp)
 510:	8fb00018 	lw	s0,24(sp)
 514:	8fb1001c 	lw	s1,28(sp)
 518:	8fb20020 	lw	s2,32(sp)
 51c:	8fb30024 	lw	s3,36(sp)
 520:	8fb40028 	lw	s4,40(sp)
 524:	03e00008 	jr	ra
 528:	27bd0030 	addiu	sp,sp,48

0000052c <func_800A698C>:
 52c:	27bdff88 	addiu	sp,sp,-120
 530:	93af008b 	lbu	t7,139(sp)
 534:	afbf001c 	sw	ra,28(sp)
 538:	afa40078 	sw	a0,120(sp)
 53c:	000fc080 	sll	t8,t7,0x2
 540:	afa5007c 	sw	a1,124(sp)
 544:	afa60080 	sw	a2,128(sp)
 548:	afa70084 	sw	a3,132(sp)
 54c:	00b8c821 	addu	t9,a1,t8
 550:	8f220000 	lw	v0,0(t9)
 554:	3c0c0000 	lui	t4,0x0
 558:	3c0100ff 	lui	at,0xff
 55c:	00024900 	sll	t1,v0,0x4
 560:	00095702 	srl	t2,t1,0x1c
 564:	000a5880 	sll	t3,t2,0x2
 568:	018b6021 	addu	t4,t4,t3
 56c:	8d8c0000 	lw	t4,0(t4)
 570:	3421ffff 	ori	at,at,0xffff
 574:	00414024 	and	t0,v0,at
 578:	93a30087 	lbu	v1,135(sp)
 57c:	3c018000 	lui	at,0x8000
 580:	010c6821 	addu	t5,t0,t4
 584:	01a17821 	addu	t7,t5,at
 588:	240100ff 	li	at,255
 58c:	14610005 	bne	v1,at,5a4 <func_800A698C+0x78>
 590:	afaf0070 	sw	t7,112(sp)
 594:	0c000000 	jal	0 <func_800A6460>
 598:	27a4006c 	addiu	a0,sp,108
 59c:	10000006 	b	5b8 <func_800A698C+0x8c>
 5a0:	93a9008b 	lbu	t1,139(sp)
 5a4:	8fb80080 	lw	t8,128(sp)
 5a8:	00037180 	sll	t6,v1,0x6
 5ac:	01d8c821 	addu	t9,t6,t8
 5b0:	afb9006c 	sw	t9,108(sp)
 5b4:	93a9008b 	lbu	t1,139(sp)
 5b8:	8fab0080 	lw	t3,128(sp)
 5bc:	8fa4006c 	lw	a0,108(sp)
 5c0:	00095180 	sll	t2,t1,0x6
 5c4:	014b2821 	addu	a1,t2,t3
 5c8:	afa50024 	sw	a1,36(sp)
 5cc:	0c000000 	jal	0 <func_800A6460>
 5d0:	27a60028 	addiu	a2,sp,40
 5d4:	8fa50024 	lw	a1,36(sp)
 5d8:	0c000000 	jal	0 <func_800A6460>
 5dc:	27a40028 	addiu	a0,sp,40
 5e0:	8fa80070 	lw	t0,112(sp)
 5e4:	240100ff 	li	at,255
 5e8:	8fa40078 	lw	a0,120(sp)
 5ec:	91020006 	lbu	v0,6(t0)
 5f0:	8fa5007c 	lw	a1,124(sp)
 5f4:	8fa60080 	lw	a2,128(sp)
 5f8:	10410007 	beq	v0,at,618 <func_800A698C+0xec>
 5fc:	93a7008b 	lbu	a3,139(sp)
 600:	0c000000 	jal	0 <func_800A6460>
 604:	afa20010 	sw	v0,16(sp)
 608:	50400004 	beqzl	v0,61c <func_800A698C+0xf0>
 60c:	8fac0070 	lw	t4,112(sp)
 610:	10000011 	b	658 <func_800A698C+0x12c>
 614:	8fbf001c 	lw	ra,28(sp)
 618:	8fac0070 	lw	t4,112(sp)
 61c:	240100ff 	li	at,255
 620:	8fa40078 	lw	a0,120(sp)
 624:	91820007 	lbu	v0,7(t4)
 628:	8fa5007c 	lw	a1,124(sp)
 62c:	8fa60080 	lw	a2,128(sp)
 630:	10410007 	beq	v0,at,650 <func_800A698C+0x124>
 634:	93a70087 	lbu	a3,135(sp)
 638:	0c000000 	jal	0 <func_800A6460>
 63c:	afa20010 	sw	v0,16(sp)
 640:	50400004 	beqzl	v0,654 <func_800A698C+0x128>
 644:	00001025 	move	v0,zero
 648:	10000003 	b	658 <func_800A698C+0x12c>
 64c:	8fbf001c 	lw	ra,28(sp)
 650:	00001025 	move	v0,zero
 654:	8fbf001c 	lw	ra,28(sp)
 658:	27bd0078 	addiu	sp,sp,120
 65c:	03e00008 	jr	ra
 660:	00000000 	nop

00000664 <func_800A6AC4>:
 664:	27bdff80 	addiu	sp,sp,-128
 668:	afbf0054 	sw	ra,84(sp)
 66c:	afbe0050 	sw	s8,80(sp)
 670:	afb7004c 	sw	s7,76(sp)
 674:	afb60048 	sw	s6,72(sp)
 678:	afb50044 	sw	s5,68(sp)
 67c:	afb40040 	sw	s4,64(sp)
 680:	afb3003c 	sw	s3,60(sp)
 684:	afb20038 	sw	s2,56(sp)
 688:	afb10034 	sw	s1,52(sp)
 68c:	afb00030 	sw	s0,48(sp)
 690:	afa50084 	sw	a1,132(sp)
 694:	8c8e0000 	lw	t6,0(a0)
 698:	3c160000 	lui	s6,0x0
 69c:	26d60000 	addiu	s6,s6,0
 6a0:	8dc20000 	lw	v0,0(t6)
 6a4:	3c1700ff 	lui	s7,0xff
 6a8:	36f7ffff 	ori	s7,s7,0xffff
 6ac:	00027900 	sll	t7,v0,0x4
 6b0:	000fc702 	srl	t8,t7,0x1c
 6b4:	0018c880 	sll	t9,t8,0x2
 6b8:	02d94021 	addu	t0,s6,t9
 6bc:	8d090000 	lw	t1,0(t0)
 6c0:	00575024 	and	t2,v0,s7
 6c4:	3c1e8000 	lui	s8,0x8000
 6c8:	012a5821 	addu	t3,t1,t2
 6cc:	017e6021 	addu	t4,t3,s8
 6d0:	afac0058 	sw	t4,88(sp)
 6d4:	8c90006c 	lw	s0,108(a0)
 6d8:	0080a025 	move	s4,a0
 6dc:	00c0a825 	move	s5,a2
 6e0:	860d0006 	lh	t5,6(s0)
 6e4:	860e0008 	lh	t6,8(s0)
 6e8:	860f000a 	lh	t7,10(s0)
 6ec:	448d2000 	mtc1	t5,$f4
 6f0:	448e3000 	mtc1	t6,$f6
 6f4:	448f4000 	mtc1	t7,$f8
 6f8:	26100006 	addiu	s0,s0,6
 6fc:	46802420 	cvt.s.w	$f16,$f4
 700:	468033a0 	cvt.s.w	$f14,$f6
 704:	10e00025 	beqz	a3,79c <func_800A6AC4+0x138>
 708:	468044a0 	cvt.s.w	$f18,$f8
 70c:	8618fffa 	lh	t8,-6(s0)
 710:	8619fffc 	lh	t9,-4(s0)
 714:	8608fffe 	lh	t0,-2(s0)
 718:	44985000 	mtc1	t8,$f10
 71c:	44992000 	mtc1	t9,$f4
 720:	44883000 	mtc1	t0,$f6
 724:	24010023 	li	at,35
 728:	26100000 	addiu	s0,s0,0
 72c:	46805020 	cvt.s.w	$f0,$f10
 730:	468020a0 	cvt.s.w	$f2,$f4
 734:	14e10006 	bne	a3,at,750 <func_800A6AC4+0xec>
 738:	46803320 	cvt.s.w	$f12,$f6
 73c:	84c901e0 	lh	t1,480(a2)
 740:	44894000 	mtc1	t1,$f8
 744:	00000000 	nop
 748:	468042a0 	cvt.s.w	$f10,$f8
 74c:	460a7380 	add.s	$f14,$f14,$f10
 750:	4600810d 	trunc.w.s	$f4,$f16
 754:	8fa40084 	lw	a0,132(sp)
 758:	e7a00010 	swc1	$f0,16(sp)
 75c:	4600718d 	trunc.w.s	$f6,$f14
 760:	44052000 	mfc1	a1,$f4
 764:	e7a20014 	swc1	$f2,20(sp)
 768:	4600920d 	trunc.w.s	$f8,$f18
 76c:	44063000 	mfc1	a2,$f6
 770:	00052c00 	sll	a1,a1,0x10
 774:	00052c03 	sra	a1,a1,0x10
 778:	44074000 	mfc1	a3,$f8
 77c:	00063400 	sll	a2,a2,0x10
 780:	00063403 	sra	a2,a2,0x10
 784:	00073c00 	sll	a3,a3,0x10
 788:	00073c03 	sra	a3,a3,0x10
 78c:	0c000000 	jal	0 <func_800A6460>
 790:	e7ac0018 	swc1	$f12,24(sp)
 794:	10000014 	b	7e8 <func_800A6AC4+0x184>
 798:	8e980000 	lw	t8,0(s4)
 79c:	4600828d 	trunc.w.s	$f10,$f16
 7a0:	44800000 	mtc1	zero,$f0
 7a4:	8fa40084 	lw	a0,132(sp)
 7a8:	4600710d 	trunc.w.s	$f4,$f14
 7ac:	44055000 	mfc1	a1,$f10
 7b0:	e7a00010 	swc1	$f0,16(sp)
 7b4:	4600918d 	trunc.w.s	$f6,$f18
 7b8:	44062000 	mfc1	a2,$f4
 7bc:	00052c00 	sll	a1,a1,0x10
 7c0:	00052c03 	sra	a1,a1,0x10
 7c4:	44073000 	mfc1	a3,$f6
 7c8:	00063400 	sll	a2,a2,0x10
 7cc:	00063403 	sra	a2,a2,0x10
 7d0:	00073c00 	sll	a3,a3,0x10
 7d4:	00073c03 	sra	a3,a3,0x10
 7d8:	e7a00014 	swc1	$f0,20(sp)
 7dc:	0c000000 	jal	0 <func_800A6460>
 7e0:	e7a00018 	swc1	$f0,24(sp)
 7e4:	8e980000 	lw	t8,0(s4)
 7e8:	8fb30084 	lw	s3,132(sp)
 7ec:	26100006 	addiu	s0,s0,6
 7f0:	93190004 	lbu	t9,4(t8)
 7f4:	24110001 	li	s1,1
 7f8:	8fb20058 	lw	s2,88(sp)
 7fc:	2b210002 	slti	at,t9,2
 800:	14200037 	bnez	at,8e0 <func_800A6AC4+0x27c>
 804:	26730040 	addiu	s3,s3,64
 808:	26520004 	addiu	s2,s2,4
 80c:	8e430000 	lw	v1,0(s2)
 810:	26100006 	addiu	s0,s0,6
 814:	02602025 	move	a0,s3
 818:	00034900 	sll	t1,v1,0x4
 81c:	00095702 	srl	t2,t1,0x1c
 820:	000a5880 	sll	t3,t2,0x2
 824:	02cb6021 	addu	t4,s6,t3
 828:	8d8d0000 	lw	t5,0(t4)
 82c:	00774024 	and	t0,v1,s7
 830:	8609fffa 	lh	t1,-6(s0)
 834:	010d7021 	addu	t6,t0,t5
 838:	01de1021 	addu	v0,t6,s8
 83c:	844f0000 	lh	t7,0(v0)
 840:	84580002 	lh	t8,2(v0)
 844:	860afffc 	lh	t2,-4(s0)
 848:	448f4000 	mtc1	t7,$f8
 84c:	44985000 	mtc1	t8,$f10
 850:	860bfffe 	lh	t3,-2(s0)
 854:	46804020 	cvt.s.w	$f0,$f8
 858:	44893000 	mtc1	t1,$f6
 85c:	448a4000 	mtc1	t2,$f8
 860:	84590004 	lh	t9,4(v0)
 864:	468050a0 	cvt.s.w	$f2,$f10
 868:	448b5000 	mtc1	t3,$f10
 86c:	44992000 	mtc1	t9,$f4
 870:	e7a00010 	swc1	$f0,16(sp)
 874:	46803420 	cvt.s.w	$f16,$f6
 878:	e7a20014 	swc1	$f2,20(sp)
 87c:	468043a0 	cvt.s.w	$f14,$f8
 880:	468054a0 	cvt.s.w	$f18,$f10
 884:	46802320 	cvt.s.w	$f12,$f4
 888:	4600810d 	trunc.w.s	$f4,$f16
 88c:	e7ac0018 	swc1	$f12,24(sp)
 890:	4600920d 	trunc.w.s	$f8,$f18
 894:	44052000 	mfc1	a1,$f4
 898:	4600718d 	trunc.w.s	$f6,$f14
 89c:	44074000 	mfc1	a3,$f8
 8a0:	00052c00 	sll	a1,a1,0x10
 8a4:	00052c03 	sra	a1,a1,0x10
 8a8:	44063000 	mfc1	a2,$f6
 8ac:	00073c00 	sll	a3,a3,0x10
 8b0:	00073c03 	sra	a3,a3,0x10
 8b4:	00063400 	sll	a2,a2,0x10
 8b8:	0c000000 	jal	0 <func_800A6460>
 8bc:	00063403 	sra	a2,a2,0x10
 8c0:	8e8e0000 	lw	t6,0(s4)
 8c4:	26310001 	addiu	s1,s1,1
 8c8:	26520004 	addiu	s2,s2,4
 8cc:	91cf0004 	lbu	t7,4(t6)
 8d0:	26730040 	addiu	s3,s3,64
 8d4:	022f082a 	slt	at,s1,t7
 8d8:	5420ffcd 	bnezl	at,810 <func_800A6AC4+0x1ac>
 8dc:	8e430000 	lw	v1,0(s2)
 8e0:	86b800b4 	lh	t8,180(s5)
 8e4:	c6a00054 	lwc1	$f0,84(s5)
 8e8:	8ea50050 	lw	a1,80(s5)
 8ec:	8ea70058 	lw	a3,88(s5)
 8f0:	afb80010 	sw	t8,16(sp)
 8f4:	86b900b6 	lh	t9,182(s5)
 8f8:	44060000 	mfc1	a2,$f0
 8fc:	26840004 	addiu	a0,s4,4
 900:	afb90014 	sw	t9,20(sp)
 904:	86a900b8 	lh	t1,184(s5)
 908:	afa90018 	sw	t1,24(sp)
 90c:	c6aa0024 	lwc1	$f10,36(s5)
 910:	e7aa001c 	swc1	$f10,28(sp)
 914:	c6a600bc 	lwc1	$f6,188(s5)
 918:	c6a40028 	lwc1	$f4,40(s5)
 91c:	46003202 	mul.s	$f8,$f6,$f0
 920:	46082280 	add.s	$f10,$f4,$f8
 924:	e7aa0020 	swc1	$f10,32(sp)
 928:	c6a6002c 	lwc1	$f6,44(s5)
 92c:	0c000000 	jal	0 <func_800A6460>
 930:	e7a60024 	swc1	$f6,36(sp)
 934:	8e8a0000 	lw	t2,0(s4)
 938:	02802025 	move	a0,s4
 93c:	8fa60084 	lw	a2,132(sp)
 940:	8d420000 	lw	v0,0(t2)
 944:	240700ff 	li	a3,255
 948:	00025900 	sll	t3,v0,0x4
 94c:	000b6702 	srl	t4,t3,0x1c
 950:	000c4080 	sll	t0,t4,0x2
 954:	02c86821 	addu	t5,s6,t0
 958:	8dae0000 	lw	t6,0(t5)
 95c:	00577824 	and	t7,v0,s7
 960:	afa00010 	sw	zero,16(sp)
 964:	01cfc021 	addu	t8,t6,t7
 968:	0c000000 	jal	0 <func_800A6460>
 96c:	031e2821 	addu	a1,t8,s8
 970:	14400003 	bnez	v0,980 <func_800A6AC4+0x31c>
 974:	8fb00030 	lw	s0,48(sp)
 978:	10000003 	b	988 <func_800A6AC4+0x324>
 97c:	8fbf0054 	lw	ra,84(sp)
 980:	00001025 	move	v0,zero
 984:	8fbf0054 	lw	ra,84(sp)
 988:	8fb10034 	lw	s1,52(sp)
 98c:	8fb20038 	lw	s2,56(sp)
 990:	8fb3003c 	lw	s3,60(sp)
 994:	8fb40040 	lw	s4,64(sp)
 998:	8fb50044 	lw	s5,68(sp)
 99c:	8fb60048 	lw	s6,72(sp)
 9a0:	8fb7004c 	lw	s7,76(sp)
 9a4:	8fbe0050 	lw	s8,80(sp)
 9a8:	03e00008 	jr	ra
 9ac:	27bd0080 	addiu	sp,sp,128
