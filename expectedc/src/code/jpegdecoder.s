
build/src/code/jpegdecoder.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <JpegDecoder_Decode>:
   0:	27bdff98 	addiu	sp,sp,-104
   4:	afbf003c 	sw	ra,60(sp)
   8:	afbe0038 	sw	s8,56(sp)
   c:	afb70034 	sw	s7,52(sp)
  10:	afb60030 	sw	s6,48(sp)
  14:	afb5002c 	sw	s5,44(sp)
  18:	afb40028 	sw	s4,40(sp)
  1c:	afb30024 	sw	s3,36(sp)
  20:	afb20020 	sw	s2,32(sp)
  24:	afb1001c 	sw	s1,28(sp)
  28:	afb00018 	sw	s0,24(sp)
  2c:	afa70074 	sw	a3,116(sp)
  30:	afa00058 	sw	zero,88(sp)
  34:	8c8f0000 	lw	t7,0(a0)
  38:	3c010000 	lui	at,0x0
  3c:	30ee00ff 	andi	t6,a3,0xff
  40:	ac2f0000 	sw	t7,0(at)
  44:	90980004 	lbu	t8,4(a0)
  48:	01c03825 	move	a3,t6
  4c:	00a08825 	move	s1,a1
  50:	17000003 	bnez	t8,60 <JpegDecoder_Decode+0x60>
  54:	00c0b025 	move	s6,a2
  58:	10000007 	b	78 <JpegDecoder_Decode+0x78>
  5c:	24020002 	li	v0,2
  60:	90990005 	lbu	t9,5(a0)
  64:	24010001 	li	at,1
  68:	24020004 	li	v0,4
  6c:	17210002 	bne	t9,at,78 <JpegDecoder_Decode+0x78>
  70:	24080080 	li	t0,128
  74:	afa80058 	sw	t0,88(sp)
  78:	8c940008 	lw	s4,8(a0)
  7c:	8c95000c 	lw	s5,12(a0)
  80:	8c970010 	lw	s7,16(a0)
  84:	14e0000e 	bnez	a3,c0 <JpegDecoder_Decode+0xc0>
  88:	8c9e0014 	lw	s8,20(a0)
  8c:	3c010000 	lui	at,0x0
  90:	ac200000 	sw	zero,0(at)
  94:	3c010000 	lui	at,0x0
  98:	24090020 	li	t1,32
  9c:	a0290000 	sb	t1,0(at)
  a0:	3c010000 	lui	at,0x0
  a4:	ac200000 	sw	zero,0(at)
  a8:	3c010000 	lui	at,0x0
  ac:	a0200000 	sb	zero,0(at)
  b0:	a7a00064 	sh	zero,100(sp)
  b4:	a7a00062 	sh	zero,98(sp)
  b8:	10000014 	b	10c <JpegDecoder_Decode+0x10c>
  bc:	a7a00060 	sh	zero,96(sp)
  c0:	8faa0078 	lw	t2,120(sp)
  c4:	3c010000 	lui	at,0x0
  c8:	8d4b0000 	lw	t3,0(t2)
  cc:	ac2b0000 	sw	t3,0(at)
  d0:	914c0004 	lbu	t4,4(t2)
  d4:	3c010000 	lui	at,0x0
  d8:	a02c0000 	sb	t4,0(at)
  dc:	8d4d0008 	lw	t5,8(t2)
  e0:	3c010000 	lui	at,0x0
  e4:	ac2d0000 	sw	t5,0(at)
  e8:	914e0005 	lbu	t6,5(t2)
  ec:	3c010000 	lui	at,0x0
  f0:	a02e0000 	sb	t6,0(at)
  f4:	854f000c 	lh	t7,12(t2)
  f8:	a7af0064 	sh	t7,100(sp)
  fc:	8558000e 	lh	t8,14(t2)
 100:	a7b80062 	sh	t8,98(sp)
 104:	85590010 	lh	t9,16(t2)
 108:	a7b90060 	sh	t9,96(sp)
 10c:	12c00026 	beqz	s6,1a8 <JpegDecoder_Decode+0x1a8>
 110:	00409025 	move	s2,v0
 114:	27b30064 	addiu	s3,sp,100
 118:	1240000c 	beqz	s2,14c <JpegDecoder_Decode+0x14c>
 11c:	00008025 	move	s0,zero
 120:	02802025 	move	a0,s4
 124:	02a02825 	move	a1,s5
 128:	02203025 	move	a2,s1
 12c:	0c000000 	jal	0 <JpegDecoder_Decode>
 130:	02603825 	move	a3,s3
 134:	10400003 	beqz	v0,144 <JpegDecoder_Decode+0x144>
 138:	26100001 	addiu	s0,s0,1
 13c:	1000002e 	b	1f8 <JpegDecoder_Decode+0x1f8>
 140:	24020002 	li	v0,2
 144:	1612fff6 	bne	s0,s2,120 <JpegDecoder_Decode+0x120>
 148:	26310080 	addiu	s1,s1,128
 14c:	02e02025 	move	a0,s7
 150:	03c02825 	move	a1,s8
 154:	02203025 	move	a2,s1
 158:	0c000000 	jal	0 <JpegDecoder_Decode>
 15c:	27a70062 	addiu	a3,sp,98
 160:	10400003 	beqz	v0,170 <JpegDecoder_Decode+0x170>
 164:	26310080 	addiu	s1,s1,128
 168:	10000023 	b	1f8 <JpegDecoder_Decode+0x1f8>
 16c:	24020002 	li	v0,2
 170:	02e02025 	move	a0,s7
 174:	03c02825 	move	a1,s8
 178:	02203025 	move	a2,s1
 17c:	0c000000 	jal	0 <JpegDecoder_Decode>
 180:	27a70060 	addiu	a3,sp,96
 184:	10400003 	beqz	v0,194 <JpegDecoder_Decode+0x194>
 188:	8fa80058 	lw	t0,88(sp)
 18c:	1000001a 	b	1f8 <JpegDecoder_Decode+0x1f8>
 190:	24020002 	li	v0,2
 194:	26d6ffff 	addiu	s6,s6,-1
 198:	26310080 	addiu	s1,s1,128
 19c:	00084840 	sll	t1,t0,0x1
 1a0:	16c0ffdd 	bnez	s6,118 <JpegDecoder_Decode+0x118>
 1a4:	02298821 	addu	s1,s1,t1
 1a8:	3c0b0000 	lui	t3,0x0
 1ac:	8fa30078 	lw	v1,120(sp)
 1b0:	8d6b0000 	lw	t3,0(t3)
 1b4:	3c0c0000 	lui	t4,0x0
 1b8:	3c0d0000 	lui	t5,0x0
 1bc:	ac6b0000 	sw	t3,0(v1)
 1c0:	918c0000 	lbu	t4,0(t4)
 1c4:	3c0e0000 	lui	t6,0x0
 1c8:	00001025 	move	v0,zero
 1cc:	a06c0004 	sb	t4,4(v1)
 1d0:	8dad0000 	lw	t5,0(t5)
 1d4:	ac6d0008 	sw	t5,8(v1)
 1d8:	91ce0000 	lbu	t6,0(t6)
 1dc:	a06e0005 	sb	t6,5(v1)
 1e0:	87af0064 	lh	t7,100(sp)
 1e4:	a46f000c 	sh	t7,12(v1)
 1e8:	87b80062 	lh	t8,98(sp)
 1ec:	a478000e 	sh	t8,14(v1)
 1f0:	87aa0060 	lh	t2,96(sp)
 1f4:	a46a0010 	sh	t2,16(v1)
 1f8:	8fbf003c 	lw	ra,60(sp)
 1fc:	8fb00018 	lw	s0,24(sp)
 200:	8fb1001c 	lw	s1,28(sp)
 204:	8fb20020 	lw	s2,32(sp)
 208:	8fb30024 	lw	s3,36(sp)
 20c:	8fb40028 	lw	s4,40(sp)
 210:	8fb5002c 	lw	s5,44(sp)
 214:	8fb60030 	lw	s6,48(sp)
 218:	8fb70034 	lw	s7,52(sp)
 21c:	8fbe0038 	lw	s8,56(sp)
 220:	03e00008 	jr	ra
 224:	27bd0068 	addiu	sp,sp,104

00000228 <JpegDecoder_ProcessMcu>:
 228:	27bdffc8 	addiu	sp,sp,-56
 22c:	afb50028 	sw	s5,40(sp)
 230:	afb40024 	sw	s4,36(sp)
 234:	afb30020 	sw	s3,32(sp)
 238:	afb10018 	sw	s1,24(sp)
 23c:	00c08825 	move	s1,a2
 240:	00a09825 	move	s3,a1
 244:	27b40034 	addiu	s4,sp,52
 248:	27b50036 	addiu	s5,sp,54
 24c:	afbf002c 	sw	ra,44(sp)
 250:	afb2001c 	sw	s2,28(sp)
 254:	00e09025 	move	s2,a3
 258:	afb00014 	sw	s0,20(sp)
 25c:	02a03025 	move	a2,s5
 260:	0c000000 	jal	0 <JpegDecoder_Decode>
 264:	02802825 	move	a1,s4
 268:	10400003 	beqz	v0,278 <JpegDecoder_ProcessMcu+0x50>
 26c:	87af0034 	lh	t7,52(sp)
 270:	1000004b 	b	3a0 <JpegDecoder_ProcessMcu+0x178>
 274:	24020001 	li	v0,1
 278:	864e0000 	lh	t6,0(s2)
 27c:	24100001 	li	s0,1
 280:	2a010040 	slti	at,s0,64
 284:	01cfc021 	addu	t8,t6,t7
 288:	a6580000 	sh	t8,0(s2)
 28c:	86590000 	lh	t9,0(s2)
 290:	2412000f 	li	s2,15
 294:	10200041 	beqz	at,39c <JpegDecoder_ProcessMcu+0x174>
 298:	a6390000 	sh	t9,0(s1)
 29c:	02602025 	move	a0,s3
 2a0:	02802825 	move	a1,s4
 2a4:	0c000000 	jal	0 <JpegDecoder_Decode>
 2a8:	02a03025 	move	a2,s5
 2ac:	10400003 	beqz	v0,2bc <JpegDecoder_ProcessMcu+0x94>
 2b0:	87a80034 	lh	t0,52(sp)
 2b4:	1000003a 	b	3a0 <JpegDecoder_ProcessMcu+0x178>
 2b8:	24020001 	li	v0,1
 2bc:	1500001e 	bnez	t0,338 <JpegDecoder_ProcessMcu+0x110>
 2c0:	83a30036 	lb	v1,54(sp)
 2c4:	83a30036 	lb	v1,54(sp)
 2c8:	1472000f 	bne	v1,s2,308 <JpegDecoder_ProcessMcu+0xe0>
 2cc:	246affff 	addiu	t2,v1,-1
 2d0:	0460002f 	bltz	v1,390 <JpegDecoder_ProcessMcu+0x168>
 2d4:	a3aa0036 	sb	t2,54(sp)
 2d8:	00105840 	sll	t3,s0,0x1
 2dc:	022b6021 	addu	t4,s1,t3
 2e0:	a5800000 	sh	zero,0(t4)
 2e4:	83af0036 	lb	t7,54(sp)
 2e8:	26100001 	addiu	s0,s0,1
 2ec:	00106e00 	sll	t5,s0,0x18
 2f0:	25f8ffff 	addiu	t8,t7,-1
 2f4:	a3b80036 	sb	t8,54(sp)
 2f8:	05e1fff7 	bgez	t7,2d8 <JpegDecoder_ProcessMcu+0xb0>
 2fc:	000d8603 	sra	s0,t5,0x18
 300:	10000024 	b	394 <JpegDecoder_ProcessMcu+0x16c>
 304:	2a010040 	slti	at,s0,64
 308:	2a010040 	slti	at,s0,64
 30c:	10200023 	beqz	at,39c <JpegDecoder_ProcessMcu+0x174>
 310:	0010c840 	sll	t9,s0,0x1
 314:	26100001 	addiu	s0,s0,1
 318:	00104e00 	sll	t1,s0,0x18
 31c:	00098603 	sra	s0,t1,0x18
 320:	2a010040 	slti	at,s0,64
 324:	02394021 	addu	t0,s1,t9
 328:	1420fff9 	bnez	at,310 <JpegDecoder_ProcessMcu+0xe8>
 32c:	a5000000 	sh	zero,0(t0)
 330:	1000001b 	b	3a0 <JpegDecoder_ProcessMcu+0x178>
 334:	00001025 	move	v0,zero
 338:	0003102a 	slt	v0,zero,v1
 33c:	246cffff 	addiu	t4,v1,-1
 340:	1040000c 	beqz	v0,374 <JpegDecoder_ProcessMcu+0x14c>
 344:	a3ac0036 	sb	t4,54(sp)
 348:	00106840 	sll	t5,s0,0x1
 34c:	022d7021 	addu	t6,s1,t5
 350:	a5c00000 	sh	zero,0(t6)
 354:	83b90036 	lb	t9,54(sp)
 358:	26100001 	addiu	s0,s0,1
 35c:	00107e00 	sll	t7,s0,0x18
 360:	0019102a 	slt	v0,zero,t9
 364:	2728ffff 	addiu	t0,t9,-1
 368:	a3a80036 	sb	t0,54(sp)
 36c:	1440fff6 	bnez	v0,348 <JpegDecoder_ProcessMcu+0x120>
 370:	000f8603 	sra	s0,t7,0x18
 374:	87a90034 	lh	t1,52(sp)
 378:	00105040 	sll	t2,s0,0x1
 37c:	26100001 	addiu	s0,s0,1
 380:	00106600 	sll	t4,s0,0x18
 384:	022a5821 	addu	t3,s1,t2
 388:	000c8603 	sra	s0,t4,0x18
 38c:	a5690000 	sh	t1,0(t3)
 390:	2a010040 	slti	at,s0,64
 394:	5420ffc2 	bnezl	at,2a0 <JpegDecoder_ProcessMcu+0x78>
 398:	02602025 	move	a0,s3
 39c:	00001025 	move	v0,zero
 3a0:	8fbf002c 	lw	ra,44(sp)
 3a4:	8fb00014 	lw	s0,20(sp)
 3a8:	8fb10018 	lw	s1,24(sp)
 3ac:	8fb2001c 	lw	s2,28(sp)
 3b0:	8fb30020 	lw	s3,32(sp)
 3b4:	8fb40024 	lw	s4,36(sp)
 3b8:	8fb50028 	lw	s5,40(sp)
 3bc:	03e00008 	jr	ra
 3c0:	27bd0038 	addiu	sp,sp,56

000003c4 <JpegDecoder_ParseNextSymbol>:
 3c4:	27bdffd8 	addiu	sp,sp,-40
 3c8:	afb00018 	sw	s0,24(sp)
 3cc:	00808025 	move	s0,a0
 3d0:	afbf001c 	sw	ra,28(sp)
 3d4:	afa5002c 	sw	a1,44(sp)
 3d8:	afa60030 	sw	a2,48(sp)
 3dc:	24040010 	li	a0,16
 3e0:	0c000000 	jal	0 <JpegDecoder_Decode>
 3e4:	a7a00024 	sh	zero,36(sp)
 3e8:	97a90024 	lhu	t1,36(sp)
 3ec:	8faa002c 	lw	t2,44(sp)
 3f0:	00003025 	move	a2,zero
 3f4:	2408000f 	li	t0,15
 3f8:	3407ffff 	li	a3,0xffff
 3fc:	00067040 	sll	t6,a2,0x1
 400:	020e7821 	addu	t7,s0,t6
 404:	95e40030 	lhu	a0,48(t7)
 408:	0106c023 	subu	t8,t0,a2
 40c:	03021807 	srav	v1,v0,t8
 410:	10e40005 	beq	a3,a0,428 <JpegDecoder_ParseNextSymbol+0x64>
 414:	00c02825 	move	a1,a2
 418:	3079ffff 	andi	t9,v1,0xffff
 41c:	0099082a 	slt	at,a0,t9
 420:	10200006 	beqz	at,43c <JpegDecoder_ParseNextSymbol+0x78>
 424:	3069ffff 	andi	t1,v1,0xffff
 428:	24c60001 	addiu	a2,a2,1
 42c:	30c500ff 	andi	a1,a2,0xff
 430:	28a10010 	slti	at,a1,16
 434:	1420fff1 	bnez	at,3fc <JpegDecoder_ParseNextSymbol+0x38>
 438:	00a03025 	move	a2,a1
 43c:	28a10010 	slti	at,a1,16
 440:	14200003 	bnez	at,450 <JpegDecoder_ParseNextSymbol+0x8c>
 444:	3c020000 	lui	v0,0x0
 448:	10000028 	b	4ec <JpegDecoder_ParseNextSymbol+0x128>
 44c:	24020001 	li	v0,1
 450:	02066021 	addu	t4,s0,a2
 454:	00067840 	sll	t7,a2,0x1
 458:	918d0000 	lbu	t5,0(t4)
 45c:	020fc021 	addu	t8,s0,t7
 460:	97190010 	lhu	t9,16(t8)
 464:	8e0c0050 	lw	t4,80(s0)
 468:	01a97021 	addu	t6,t5,t1
 46c:	01d95823 	subu	t3,t6,t9
 470:	016c6821 	addu	t5,t3,t4
 474:	91a40000 	lbu	a0,0(t5)
 478:	8fb80030 	lw	t8,48(sp)
 47c:	24420000 	addiu	v0,v0,0
 480:	00047903 	sra	t7,a0,0x4
 484:	a30f0000 	sb	t7,0(t8)
 488:	90590000 	lbu	t9,0(v0)
 48c:	308e000f 	andi	t6,a0,0xf
 490:	01c02025 	move	a0,t6
 494:	03255821 	addu	t3,t9,a1
 498:	256cfff1 	addiu	t4,t3,-15
 49c:	a04c0000 	sb	t4,0(v0)
 4a0:	11c00011 	beqz	t6,4e8 <JpegDecoder_ParseNextSymbol+0x124>
 4a4:	a5400000 	sh	zero,0(t2)
 4a8:	0c000000 	jal	0 <JpegDecoder_Decode>
 4ac:	a3ae0026 	sb	t6,38(sp)
 4b0:	8faa002c 	lw	t2,44(sp)
 4b4:	93a40026 	lbu	a0,38(sp)
 4b8:	240f0001 	li	t7,1
 4bc:	a5420000 	sh	v0,0(t2)
 4c0:	85450000 	lh	a1,0(t2)
 4c4:	248d001f 	addiu	t5,a0,31
 4c8:	01afc004 	sllv	t8,t7,t5
 4cc:	00b8082a 	slt	at,a1,t8
 4d0:	10200005 	beqz	at,4e8 <JpegDecoder_ParseNextSymbol+0x124>
 4d4:	240effff 	li	t6,-1
 4d8:	008ec804 	sllv	t9,t6,a0
 4dc:	00b95821 	addu	t3,a1,t9
 4e0:	256c0001 	addiu	t4,t3,1
 4e4:	a54c0000 	sh	t4,0(t2)
 4e8:	00001025 	move	v0,zero
 4ec:	8fbf001c 	lw	ra,28(sp)
 4f0:	8fb00018 	lw	s0,24(sp)
 4f4:	27bd0028 	addiu	sp,sp,40
 4f8:	03e00008 	jr	ra
 4fc:	00000000 	nop

00000500 <JpegDecoder_ReadBits>:
 500:	3c080000 	lui	t0,0x0
 504:	25080000 	addiu	t0,t0,0
 508:	91050000 	lbu	a1,0(t0)
 50c:	afa40000 	sw	a0,0(sp)
 510:	308700ff 	andi	a3,a0,0xff
 514:	000510c3 	sra	v0,a1,0x3
 518:	304e00ff 	andi	t6,v0,0xff
 51c:	19c00029 	blez	t6,5c4 <JpegDecoder_ReadBits+0xc4>
 520:	01c01025 	move	v0,t6
 524:	3c060000 	lui	a2,0x0
 528:	3c0d0000 	lui	t5,0x0
 52c:	3c0a0000 	lui	t2,0x0
 530:	3c090000 	lui	t1,0x0
 534:	25290000 	addiu	t1,t1,0
 538:	254a0000 	addiu	t2,t2,0
 53c:	25ad0000 	addiu	t5,t5,0
 540:	8cc60000 	lw	a2,0(a2)
 544:	240c0001 	li	t4,1
 548:	240b00ff 	li	t3,255
 54c:	8d240000 	lw	a0,0(t1)
 550:	91590000 	lbu	t9,0(t2)
 554:	91050000 	lbu	a1,0(t0)
 558:	00867821 	addu	t7,a0,a2
 55c:	91e30000 	lbu	v1,0(t7)
 560:	24980001 	addiu	t8,a0,1
 564:	13200006 	beqz	t9,580 <JpegDecoder_ReadBits+0x80>
 568:	ad380000 	sw	t8,0(t1)
 56c:	14600004 	bnez	v1,580 <JpegDecoder_ReadBits+0x80>
 570:	03067021 	addu	t6,t8,a2
 574:	91c30000 	lbu	v1,0(t6)
 578:	270f0001 	addiu	t7,t8,1
 57c:	ad2f0000 	sw	t7,0(t1)
 580:	15630003 	bne	t3,v1,590 <JpegDecoder_ReadBits+0x90>
 584:	00602025 	move	a0,v1
 588:	10000002 	b	594 <JpegDecoder_ReadBits+0x94>
 58c:	a14c0000 	sb	t4,0(t2)
 590:	a1400000 	sb	zero,0(t2)
 594:	8db80000 	lw	t8,0(t5)
 598:	2442ffff 	addiu	v0,v0,-1
 59c:	0018ca00 	sll	t9,t8,0x8
 5a0:	adb90000 	sw	t9,0(t5)
 5a4:	03247825 	or	t7,t9,a0
 5a8:	305900ff 	andi	t9,v0,0xff
 5ac:	24b8fff8 	addiu	t8,a1,-8
 5b0:	03201025 	move	v0,t9
 5b4:	adaf0000 	sw	t7,0(t5)
 5b8:	1f20ffe4 	bgtz	t9,54c <JpegDecoder_ReadBits+0x4c>
 5bc:	a1180000 	sb	t8,0(t0)
 5c0:	330500ff 	andi	a1,t8,0xff
 5c4:	3c0d0000 	lui	t5,0x0
 5c8:	25ad0000 	addiu	t5,t5,0
 5cc:	8dae0000 	lw	t6,0(t5)
 5d0:	00077823 	negu	t7,a3
 5d4:	00a7c021 	addu	t8,a1,a3
 5d8:	00ae1804 	sllv	v1,t6,a1
 5dc:	01e31806 	srlv	v1,v1,t7
 5e0:	a1180000 	sb	t8,0(t0)
 5e4:	03e00008 	jr	ra
 5e8:	3062ffff 	andi	v0,v1,0xffff
 5ec:	00000000 	nop
