
build/src/code/jpegutils.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <JpegUtils_ProcessQuantizationTable>:
   0:	30c300ff 	andi	v1,a2,0xff
   4:	00a03825 	move	a3,a1
   8:	afa60008 	sw	a2,8(sp)
   c:	18600014 	blez	v1,60 <JpegUtils_ProcessQuantizationTable+0x60>
  10:	00001025 	move	v0,zero
  14:	000279c0 	sll	t7,v0,0x7
  18:	24840001 	addiu	a0,a0,1
  1c:	00ef3021 	addu	a2,a3,t7
  20:	00002825 	move	a1,zero
  24:	0005c840 	sll	t9,a1,0x1
  28:	24a50001 	addiu	a1,a1,1
  2c:	90980000 	lbu	t8,0(a0)
  30:	30a900ff 	andi	t1,a1,0xff
  34:	29210040 	slti	at,t1,64
  38:	00d94021 	addu	t0,a2,t9
  3c:	01202825 	move	a1,t1
  40:	24840001 	addiu	a0,a0,1
  44:	1420fff7 	bnez	at,24 <JpegUtils_ProcessQuantizationTable+0x24>
  48:	a5180000 	sh	t8,0(t0)
  4c:	24420001 	addiu	v0,v0,1
  50:	304a00ff 	andi	t2,v0,0xff
  54:	0143082a 	slt	at,t2,v1
  58:	1420ffee 	bnez	at,14 <JpegUtils_ProcessQuantizationTable+0x14>
  5c:	01401025 	move	v0,t2
  60:	03e00008 	jr	ra
  64:	00000000 	nop

00000068 <JpegUtils_ParseHuffmanCodesLengths>:
  68:	27bdfff8 	addiu	sp,sp,-8
  6c:	afb00004 	sw	s0,4(sp)
  70:	00a08025 	move	s0,a1
  74:	24020001 	li	v0,1
  78:	00001825 	move	v1,zero
  7c:	24060001 	li	a2,1
  80:	24070001 	li	a3,1
  84:	00e42821 	addu	a1,a3,a0
  88:	90aeffff 	lbu	t6,-1(a1)
  8c:	19c0000c 	blez	t6,c0 <JpegUtils_ParseHuffmanCodesLengths+0x58>
  90:	02037821 	addu	t7,s0,v1
  94:	a1e20000 	sb	v0,0(t7)
  98:	90aaffff 	lbu	t2,-1(a1)
  9c:	24c60001 	addiu	a2,a2,1
  a0:	00064400 	sll	t0,a2,0x10
  a4:	24630001 	addiu	v1,v1,1
  a8:	00083403 	sra	a2,t0,0x10
  ac:	0003c400 	sll	t8,v1,0x10
  b0:	0146082a 	slt	at,t2,a2
  b4:	1020fff6 	beqz	at,90 <JpegUtils_ParseHuffmanCodesLengths+0x28>
  b8:	00181c03 	sra	v1,t8,0x10
  bc:	24060001 	li	a2,1
  c0:	24420001 	addiu	v0,v0,1
  c4:	304700ff 	andi	a3,v0,0xff
  c8:	28e10011 	slti	at,a3,17
  cc:	1420ffed 	bnez	at,84 <JpegUtils_ParseHuffmanCodesLengths+0x1c>
  d0:	00e01025 	move	v0,a3
  d4:	02036021 	addu	t4,s0,v1
  d8:	a1800000 	sb	zero,0(t4)
  dc:	8fb00004 	lw	s0,4(sp)
  e0:	27bd0008 	addiu	sp,sp,8
  e4:	03e00008 	jr	ra
  e8:	00601025 	move	v0,v1

000000ec <JpegUtils_GetHuffmanCodes>:
  ec:	90860000 	lbu	a2,0(a0)
  f0:	00001825 	move	v1,zero
  f4:	00001025 	move	v0,zero
  f8:	00c03825 	move	a3,a2
  fc:	00037040 	sll	t6,v1,0x1
 100:	24630001 	addiu	v1,v1,1
 104:	0003c400 	sll	t8,v1,0x10
 108:	00181c03 	sra	v1,t8,0x10
 10c:	00ae7821 	addu	t7,a1,t6
 110:	a5e20000 	sh	v0,0(t7)
 114:	00645021 	addu	t2,v1,a0
 118:	91480000 	lbu	t0,0(t2)
 11c:	24420001 	addiu	v0,v0,1
 120:	3049ffff 	andi	t1,v0,0xffff
 124:	10e8fff5 	beq	a3,t0,fc <JpegUtils_GetHuffmanCodes+0x10>
 128:	01201025 	move	v0,t1
 12c:	11000008 	beqz	t0,150 <JpegUtils_GetHuffmanCodes+0x64>
 130:	24c60001 	addiu	a2,a2,1
 134:	30c700ff 	andi	a3,a2,0xff
 138:	00025840 	sll	t3,v0,0x1
 13c:	3162ffff 	andi	v0,t3,0xffff
 140:	1507fffb 	bne	t0,a3,130 <JpegUtils_GetHuffmanCodes+0x44>
 144:	00e03025 	move	a2,a3
 148:	1000ffed 	b	100 <JpegUtils_GetHuffmanCodes+0x14>
 14c:	00037040 	sll	t6,v1,0x1
 150:	03e00008 	jr	ra
 154:	00601025 	move	v0,v1

00000158 <JpegUtils_SetHuffmanTable>:
 158:	27bdfff8 	addiu	sp,sp,-8
 15c:	afb00004 	sw	s0,4(sp)
 160:	00c08025 	move	s0,a2
 164:	00a03825 	move	a3,a1
 168:	00001825 	move	v1,zero
 16c:	00001025 	move	v0,zero
 170:	3408ffff 	li	t0,0xffff
 174:	00442821 	addu	a1,v0,a0
 178:	90ae0000 	lbu	t6,0(a1)
 17c:	0002c840 	sll	t9,v0,0x1
 180:	00e27821 	addu	t7,a3,v0
 184:	11c00014 	beqz	t6,1d8 <JpegUtils_SetHuffmanTable+0x80>
 188:	00f94821 	addu	t1,a3,t9
 18c:	0003c840 	sll	t9,v1,0x1
 190:	a1e30000 	sb	v1,0(t7)
 194:	02194821 	addu	t1,s0,t9
 198:	952a0000 	lhu	t2,0(t1)
 19c:	0002c040 	sll	t8,v0,0x1
 1a0:	00f83021 	addu	a2,a3,t8
 1a4:	a4ca0010 	sh	t2,16(a2)
 1a8:	90ab0000 	lbu	t3,0(a1)
 1ac:	006b1821 	addu	v1,v1,t3
 1b0:	2463ffff 	addiu	v1,v1,-1
 1b4:	306cffff 	andi	t4,v1,0xffff
 1b8:	000c6840 	sll	t5,t4,0x1
 1bc:	020d7021 	addu	t6,s0,t5
 1c0:	95cf0000 	lhu	t7,0(t6)
 1c4:	25830001 	addiu	v1,t4,1
 1c8:	3078ffff 	andi	t8,v1,0xffff
 1cc:	03001825 	move	v1,t8
 1d0:	10000002 	b	1dc <JpegUtils_SetHuffmanTable+0x84>
 1d4:	a4cf0030 	sh	t7,48(a2)
 1d8:	a5280030 	sh	t0,48(t1)
 1dc:	24420001 	addiu	v0,v0,1
 1e0:	304a00ff 	andi	t2,v0,0xff
 1e4:	29410010 	slti	at,t2,16
 1e8:	1420ffe2 	bnez	at,174 <JpegUtils_SetHuffmanTable+0x1c>
 1ec:	01401025 	move	v0,t2
 1f0:	8fb00004 	lw	s0,4(sp)
 1f4:	27bd0008 	addiu	sp,sp,8
 1f8:	03e00008 	jr	ra
 1fc:	00601025 	move	v0,v1

00000200 <JpegUtils_ProcessHuffmanTableImpl>:
 200:	27bdffe0 	addiu	sp,sp,-32
 204:	afbf0014 	sw	ra,20(sp)
 208:	afa50024 	sw	a1,36(sp)
 20c:	afa40020 	sw	a0,32(sp)
 210:	afa60028 	sw	a2,40(sp)
 214:	afa7002c 	sw	a3,44(sp)
 218:	0c000000 	jal	0 <JpegUtils_ProcessQuantizationTable>
 21c:	00c02825 	move	a1,a2
 220:	00021c00 	sll	v1,v0,0x10
 224:	00037403 	sra	t6,v1,0x10
 228:	1040000b 	beqz	v0,258 <JpegUtils_ProcessHuffmanTableImpl+0x58>
 22c:	01c01825 	move	v1,t6
 230:	93a40033 	lbu	a0,51(sp)
 234:	28410101 	slti	at,v0,257
 238:	10800003 	beqz	a0,248 <JpegUtils_ProcessHuffmanTableImpl+0x48>
 23c:	00000000 	nop
 240:	10200005 	beqz	at,258 <JpegUtils_ProcessHuffmanTableImpl+0x58>
 244:	00000000 	nop
 248:	14800005 	bnez	a0,260 <JpegUtils_ProcessHuffmanTableImpl+0x60>
 24c:	28410011 	slti	at,v0,17
 250:	54200004 	bnezl	at,264 <JpegUtils_ProcessHuffmanTableImpl+0x64>
 254:	8fa40028 	lw	a0,40(sp)
 258:	10000014 	b	2ac <JpegUtils_ProcessHuffmanTableImpl+0xac>
 25c:	00001025 	move	v0,zero
 260:	8fa40028 	lw	a0,40(sp)
 264:	8fa5002c 	lw	a1,44(sp)
 268:	0c000000 	jal	0 <JpegUtils_ProcessQuantizationTable>
 26c:	a7a3001e 	sh	v1,30(sp)
 270:	87a3001e 	lh	v1,30(sp)
 274:	8fa40020 	lw	a0,32(sp)
 278:	8fa50024 	lw	a1,36(sp)
 27c:	10430003 	beq	v0,v1,28c <JpegUtils_ProcessHuffmanTableImpl+0x8c>
 280:	8fa6002c 	lw	a2,44(sp)
 284:	10000009 	b	2ac <JpegUtils_ProcessHuffmanTableImpl+0xac>
 288:	00001025 	move	v0,zero
 28c:	0c000000 	jal	0 <JpegUtils_ProcessQuantizationTable>
 290:	a7a3001e 	sh	v1,30(sp)
 294:	87a3001e 	lh	v1,30(sp)
 298:	50620004 	beql	v1,v0,2ac <JpegUtils_ProcessHuffmanTableImpl+0xac>
 29c:	00601025 	move	v0,v1
 2a0:	10000002 	b	2ac <JpegUtils_ProcessHuffmanTableImpl+0xac>
 2a4:	00001025 	move	v0,zero
 2a8:	00601025 	move	v0,v1
 2ac:	8fbf0014 	lw	ra,20(sp)
 2b0:	27bd0020 	addiu	sp,sp,32
 2b4:	03e00008 	jr	ra
 2b8:	00000000 	nop

000002bc <JpegUtils_ProcessHuffmanTable>:
 2bc:	27bdffc0 	addiu	sp,sp,-64
 2c0:	afb4002c 	sw	s4,44(sp)
 2c4:	93b40053 	lbu	s4,83(sp)
 2c8:	afb60034 	sw	s6,52(sp)
 2cc:	afb50030 	sw	s5,48(sp)
 2d0:	afb30028 	sw	s3,40(sp)
 2d4:	afb10020 	sw	s1,32(sp)
 2d8:	afb0001c 	sw	s0,28(sp)
 2dc:	00808025 	move	s0,a0
 2e0:	00a09825 	move	s3,a1
 2e4:	00c0a825 	move	s5,a2
 2e8:	00e0b025 	move	s6,a3
 2ec:	afbf003c 	sw	ra,60(sp)
 2f0:	afb70038 	sw	s7,56(sp)
 2f4:	afb20024 	sw	s2,36(sp)
 2f8:	1a80001a 	blez	s4,364 <JpegUtils_ProcessHuffmanTable+0xa8>
 2fc:	00008825 	move	s1,zero
 300:	24170054 	li	s7,84
 304:	02370019 	multu	s1,s7
 308:	92020000 	lbu	v0,0(s0)
 30c:	26100001 	addiu	s0,s0,1
 310:	02002025 	move	a0,s0
 314:	00027103 	sra	t6,v0,0x4
 318:	afae0010 	sw	t6,16(sp)
 31c:	02a03025 	move	a2,s5
 320:	02c03825 	move	a3,s6
 324:	00009012 	mflo	s2
 328:	02532821 	addu	a1,s2,s3
 32c:	0c000000 	jal	0 <JpegUtils_ProcessQuantizationTable>
 330:	00000000 	nop
 334:	14400003 	bnez	v0,344 <JpegUtils_ProcessHuffmanTable+0x88>
 338:	26100010 	addiu	s0,s0,16
 33c:	1000000a 	b	368 <JpegUtils_ProcessHuffmanTable+0xac>
 340:	24020001 	li	v0,1
 344:	26310001 	addiu	s1,s1,1
 348:	323800ff 	andi	t8,s1,0xff
 34c:	02727821 	addu	t7,s3,s2
 350:	0314082a 	slt	at,t8,s4
 354:	adf00050 	sw	s0,80(t7)
 358:	03008825 	move	s1,t8
 35c:	1420ffe9 	bnez	at,304 <JpegUtils_ProcessHuffmanTable+0x48>
 360:	02028021 	addu	s0,s0,v0
 364:	00001025 	move	v0,zero
 368:	8fbf003c 	lw	ra,60(sp)
 36c:	8fb0001c 	lw	s0,28(sp)
 370:	8fb10020 	lw	s1,32(sp)
 374:	8fb20024 	lw	s2,36(sp)
 378:	8fb30028 	lw	s3,40(sp)
 37c:	8fb4002c 	lw	s4,44(sp)
 380:	8fb50030 	lw	s5,48(sp)
 384:	8fb60034 	lw	s6,52(sp)
 388:	8fb70038 	lw	s7,56(sp)
 38c:	03e00008 	jr	ra
 390:	27bd0040 	addiu	sp,sp,64

00000394 <JpegUtils_SetHuffmanTableOld>:
 394:	27bdfff0 	addiu	sp,sp,-16
 398:	afb00008 	sw	s0,8(sp)
 39c:	87b00022 	lh	s0,34(sp)
 3a0:	afb1000c 	sw	s1,12(sp)
 3a4:	00a08825 	move	s1,a1
 3a8:	1a000020 	blez	s0,42c <JpegUtils_SetHuffmanTableOld+0x98>
 3ac:	00001025 	move	v0,zero
 3b0:	93a50027 	lbu	a1,39(sp)
 3b4:	00447021 	addu	t6,v0,a0
 3b8:	10a0000c 	beqz	a1,3ec <JpegUtils_SetHuffmanTableOld+0x58>
 3bc:	91c30000 	lbu	v1,0(t6)
 3c0:	00027840 	sll	t7,v0,0x1
 3c4:	00efc021 	addu	t8,a3,t7
 3c8:	97190000 	lhu	t9,0(t8)
 3cc:	00034040 	sll	t0,v1,0x1
 3d0:	02284821 	addu	t1,s1,t0
 3d4:	00465021 	addu	t2,v0,a2
 3d8:	a5390100 	sh	t9,256(t1)
 3dc:	914b0000 	lbu	t3,0(t2)
 3e0:	02236021 	addu	t4,s1,v1
 3e4:	1000000b 	b	414 <JpegUtils_SetHuffmanTableOld+0x80>
 3e8:	a18b0000 	sb	t3,0(t4)
 3ec:	00026840 	sll	t5,v0,0x1
 3f0:	00ed7021 	addu	t6,a3,t5
 3f4:	95cf0000 	lhu	t7,0(t6)
 3f8:	0003c040 	sll	t8,v1,0x1
 3fc:	02384021 	addu	t0,s1,t8
 400:	0046c821 	addu	t9,v0,a2
 404:	a50f0010 	sh	t7,16(t0)
 408:	93290000 	lbu	t1,0(t9)
 40c:	02235021 	addu	t2,s1,v1
 410:	a1490000 	sb	t1,0(t2)
 414:	24420001 	addiu	v0,v0,1
 418:	00025c00 	sll	t3,v0,0x10
 41c:	000b1403 	sra	v0,t3,0x10
 420:	0050082a 	slt	at,v0,s0
 424:	5420ffe4 	bnezl	at,3b8 <JpegUtils_SetHuffmanTableOld+0x24>
 428:	00447021 	addu	t6,v0,a0
 42c:	8fb00008 	lw	s0,8(sp)
 430:	8fb1000c 	lw	s1,12(sp)
 434:	03e00008 	jr	ra
 438:	27bd0010 	addiu	sp,sp,16

0000043c <JpegUtils_ProcessHuffmanTableImplOld>:
 43c:	27bdffd0 	addiu	sp,sp,-48
 440:	afbf0024 	sw	ra,36(sp)
 444:	afb00020 	sw	s0,32(sp)
 448:	afa50034 	sw	a1,52(sp)
 44c:	afa60038 	sw	a2,56(sp)
 450:	afa7003c 	sw	a3,60(sp)
 454:	90830000 	lbu	v1,0(a0)
 458:	24900001 	addiu	s0,a0,1
 45c:	02002025 	move	a0,s0
 460:	00037903 	sra	t7,v1,0x4
 464:	a3af002f 	sb	t7,47(sp)
 468:	0c000000 	jal	0 <JpegUtils_ProcessQuantizationTable>
 46c:	00c02825 	move	a1,a2
 470:	00024400 	sll	t0,v0,0x10
 474:	0008c403 	sra	t8,t0,0x10
 478:	03004025 	move	t0,t8
 47c:	10400009 	beqz	v0,4a4 <JpegUtils_ProcessHuffmanTableImplOld+0x68>
 480:	93a3002f 	lbu	v1,47(sp)
 484:	10600003 	beqz	v1,494 <JpegUtils_ProcessHuffmanTableImplOld+0x58>
 488:	28410101 	slti	at,v0,257
 48c:	10200005 	beqz	at,4a4 <JpegUtils_ProcessHuffmanTableImplOld+0x68>
 490:	00000000 	nop
 494:	14600005 	bnez	v1,4ac <JpegUtils_ProcessHuffmanTableImplOld+0x70>
 498:	28410011 	slti	at,v0,17
 49c:	54200004 	bnezl	at,4b0 <JpegUtils_ProcessHuffmanTableImplOld+0x74>
 4a0:	8fa40038 	lw	a0,56(sp)
 4a4:	10000013 	b	4f4 <JpegUtils_ProcessHuffmanTableImplOld+0xb8>
 4a8:	24020001 	li	v0,1
 4ac:	8fa40038 	lw	a0,56(sp)
 4b0:	8fa5003c 	lw	a1,60(sp)
 4b4:	a3a3002f 	sb	v1,47(sp)
 4b8:	0c000000 	jal	0 <JpegUtils_ProcessQuantizationTable>
 4bc:	a7a8002c 	sh	t0,44(sp)
 4c0:	87a8002c 	lh	t0,44(sp)
 4c4:	93a3002f 	lbu	v1,47(sp)
 4c8:	26040010 	addiu	a0,s0,16
 4cc:	10480003 	beq	v0,t0,4dc <JpegUtils_ProcessHuffmanTableImplOld+0xa0>
 4d0:	8fa50034 	lw	a1,52(sp)
 4d4:	10000007 	b	4f4 <JpegUtils_ProcessHuffmanTableImplOld+0xb8>
 4d8:	24020001 	li	v0,1
 4dc:	8fa60038 	lw	a2,56(sp)
 4e0:	8fa7003c 	lw	a3,60(sp)
 4e4:	afa80010 	sw	t0,16(sp)
 4e8:	0c000000 	jal	0 <JpegUtils_ProcessQuantizationTable>
 4ec:	afa30014 	sw	v1,20(sp)
 4f0:	00001025 	move	v0,zero
 4f4:	8fbf0024 	lw	ra,36(sp)
 4f8:	8fb00020 	lw	s0,32(sp)
 4fc:	27bd0030 	addiu	sp,sp,48
 500:	03e00008 	jr	ra
 504:	00000000 	nop
	...
