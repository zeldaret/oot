
build/src/code/z_jpeg.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Jpeg_SendTask>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afbf0014 	sw	ra,20(sp)
   8:	8c8300b4 	lw	v1,180(a0)
   c:	3c018000 	lui	at,0x8000
  10:	342106c0 	ori	at,at,0x6c0
  14:	00617021 	addu	t6,v1,at
  18:	3c018000 	lui	at,0x8000
  1c:	34210220 	ori	at,at,0x220
  20:	0061c821 	addu	t9,v1,at
  24:	3c018000 	lui	at,0x8000
  28:	ac6e0000 	sw	t6,0(v1)
  2c:	8c8f0028 	lw	t7,40(a0)
  30:	342102a0 	ori	at,at,0x2a0
  34:	00614821 	addu	t1,v1,at
  38:	3c018000 	lui	at,0x8000
  3c:	34210320 	ori	at,at,0x320
  40:	24180004 	li	t8,4
  44:	00615021 	addu	t2,v1,at
  48:	ac780004 	sw	t8,4(v1)
  4c:	ac79000c 	sw	t9,12(v1)
  50:	ac690010 	sw	t1,16(v1)
  54:	ac6a0014 	sw	t2,20(v1)
  58:	ac6f0008 	sw	t7,8(v1)
  5c:	3c010000 	lui	at,0x0
  60:	ac200004 	sw	zero,4(at)
  64:	afa40028 	sw	a0,40(sp)
  68:	0c000000 	jal	0 <Jpeg_SendTask>
  6c:	afa30024 	sw	v1,36(sp)
  70:	3c010000 	lui	at,0x0
  74:	0c000000 	jal	0 <Jpeg_SendTask>
  78:	ac220008 	sw	v0,8(at)
  7c:	8fa30024 	lw	v1,36(sp)
  80:	8fa70028 	lw	a3,40(sp)
  84:	3c010000 	lui	at,0x0
  88:	ac22000c 	sw	v0,12(at)
  8c:	3c010000 	lui	at,0x0
  90:	246b0020 	addiu	t3,v1,32
  94:	ac2b0038 	sw	t3,56(at)
  98:	ac230030 	sw	v1,48(at)
  9c:	3c0d0000 	lui	t5,0x0
  a0:	240c0002 	li	t4,2
  a4:	25ad0000 	addiu	t5,t5,0
  a8:	24e80098 	addiu	t0,a3,152
  ac:	25b9003c 	addiu	t9,t5,60
  b0:	ace00030 	sw	zero,48(a3)
  b4:	acec0038 	sw	t4,56(a3)
  b8:	ace80080 	sw	t0,128(a3)
  bc:	ace00084 	sw	zero,132(a3)
  c0:	ace0003c 	sw	zero,60(a3)
  c4:	00e0c025 	move	t8,a3
  c8:	8daf0000 	lw	t7,0(t5)
  cc:	25ad000c 	addiu	t5,t5,12
  d0:	2718000c 	addiu	t8,t8,12
  d4:	af0f0034 	sw	t7,52(t8)
  d8:	8daefff8 	lw	t6,-8(t5)
  dc:	af0e0038 	sw	t6,56(t8)
  e0:	8daffffc 	lw	t7,-4(t5)
  e4:	15b9fff8 	bne	t5,t9,c8 <Jpeg_SendTask+0xc8>
  e8:	af0f003c 	sw	t7,60(t8)
  ec:	8daf0000 	lw	t7,0(t5)
  f0:	3c040000 	lui	a0,0x0
  f4:	24840038 	addiu	a0,a0,56
  f8:	af0f0040 	sw	t7,64(t8)
  fc:	afa80018 	sw	t0,24(sp)
 100:	24e50030 	addiu	a1,a3,48
 104:	0c000000 	jal	0 <Jpeg_SendTask>
 108:	24060001 	li	a2,1
 10c:	3c040000 	lui	a0,0x0
 110:	0c000000 	jal	0 <Jpeg_SendTask>
 114:	24840000 	addiu	a0,a0,0
 118:	8fa40018 	lw	a0,24(sp)
 11c:	00002825 	move	a1,zero
 120:	0c000000 	jal	0 <Jpeg_SendTask>
 124:	24060001 	li	a2,1
 128:	8fbf0014 	lw	ra,20(sp)
 12c:	27bd0028 	addiu	sp,sp,40
 130:	03e00008 	jr	ra
 134:	00000000 	nop

00000138 <Jpeg_CopyToZbuffer>:
 138:	00077080 	sll	t6,a3,0x2
 13c:	01c77021 	addu	t6,t6,a3
 140:	000e7180 	sll	t6,t6,0x6
 144:	01c67821 	addu	t7,t6,a2
 148:	000fc140 	sll	t8,t7,0x5
 14c:	03051021 	addu	v0,t8,a1
 150:	24050010 	li	a1,16
 154:	00001825 	move	v1,zero
 158:	94990000 	lhu	t9,0(a0)
 15c:	24630002 	addiu	v1,v1,2
 160:	24840040 	addiu	a0,a0,64
 164:	a4590000 	sh	t9,0(v0)
 168:	9488ffc2 	lhu	t0,-62(a0)
 16c:	24420500 	addiu	v0,v0,1280
 170:	a448fb02 	sh	t0,-1278(v0)
 174:	9489ffc4 	lhu	t1,-60(a0)
 178:	a449fb04 	sh	t1,-1276(v0)
 17c:	948affc6 	lhu	t2,-58(a0)
 180:	a44afb06 	sh	t2,-1274(v0)
 184:	948bffc8 	lhu	t3,-56(a0)
 188:	a44bfb08 	sh	t3,-1272(v0)
 18c:	948cffca 	lhu	t4,-54(a0)
 190:	a44cfb0a 	sh	t4,-1270(v0)
 194:	948dffcc 	lhu	t5,-52(a0)
 198:	a44dfb0c 	sh	t5,-1268(v0)
 19c:	948effce 	lhu	t6,-50(a0)
 1a0:	a44efb0e 	sh	t6,-1266(v0)
 1a4:	948fffd0 	lhu	t7,-48(a0)
 1a8:	a44ffb10 	sh	t7,-1264(v0)
 1ac:	9498ffd2 	lhu	t8,-46(a0)
 1b0:	a458fb12 	sh	t8,-1262(v0)
 1b4:	9499ffd4 	lhu	t9,-44(a0)
 1b8:	a459fb14 	sh	t9,-1260(v0)
 1bc:	9488ffd6 	lhu	t0,-42(a0)
 1c0:	a448fb16 	sh	t0,-1258(v0)
 1c4:	9489ffd8 	lhu	t1,-40(a0)
 1c8:	a449fb18 	sh	t1,-1256(v0)
 1cc:	948affda 	lhu	t2,-38(a0)
 1d0:	a44afb1a 	sh	t2,-1254(v0)
 1d4:	948bffdc 	lhu	t3,-36(a0)
 1d8:	a44bfb1c 	sh	t3,-1252(v0)
 1dc:	948cffde 	lhu	t4,-34(a0)
 1e0:	a44cfb1e 	sh	t4,-1250(v0)
 1e4:	948dffe0 	lhu	t5,-32(a0)
 1e8:	a44dfd80 	sh	t5,-640(v0)
 1ec:	948effe2 	lhu	t6,-30(a0)
 1f0:	a44efd82 	sh	t6,-638(v0)
 1f4:	948fffe4 	lhu	t7,-28(a0)
 1f8:	a44ffd84 	sh	t7,-636(v0)
 1fc:	9498ffe6 	lhu	t8,-26(a0)
 200:	a458fd86 	sh	t8,-634(v0)
 204:	9499ffe8 	lhu	t9,-24(a0)
 208:	a459fd88 	sh	t9,-632(v0)
 20c:	9488ffea 	lhu	t0,-22(a0)
 210:	a448fd8a 	sh	t0,-630(v0)
 214:	9489ffec 	lhu	t1,-20(a0)
 218:	a449fd8c 	sh	t1,-628(v0)
 21c:	948affee 	lhu	t2,-18(a0)
 220:	a44afd8e 	sh	t2,-626(v0)
 224:	948bfff0 	lhu	t3,-16(a0)
 228:	a44bfd90 	sh	t3,-624(v0)
 22c:	948cfff2 	lhu	t4,-14(a0)
 230:	a44cfd92 	sh	t4,-622(v0)
 234:	948dfff4 	lhu	t5,-12(a0)
 238:	a44dfd94 	sh	t5,-620(v0)
 23c:	948efff6 	lhu	t6,-10(a0)
 240:	a44efd96 	sh	t6,-618(v0)
 244:	948ffff8 	lhu	t7,-8(a0)
 248:	a44ffd98 	sh	t7,-616(v0)
 24c:	9498fffa 	lhu	t8,-6(a0)
 250:	a458fd9a 	sh	t8,-614(v0)
 254:	9499fffc 	lhu	t9,-4(a0)
 258:	a459fd9c 	sh	t9,-612(v0)
 25c:	9488fffe 	lhu	t0,-2(a0)
 260:	1465ffbd 	bne	v1,a1,158 <Jpeg_CopyToZbuffer+0x20>
 264:	a448fd9e 	sh	t0,-610(v0)
 268:	03e00008 	jr	ra
 26c:	00000000 	nop

00000270 <Jpeg_GetU16>:
 270:	308e0001 	andi	t6,a0,0x1
 274:	55c00004 	bnezl	t6,288 <Jpeg_GetU16+0x18>
 278:	90810001 	lbu	at,1(a0)
 27c:	03e00008 	jr	ra
 280:	94820000 	lhu	v0,0(a0)
 284:	90810001 	lbu	at,1(a0)
 288:	908f0002 	lbu	t7,2(a0)
 28c:	90990000 	lbu	t9,0(a0)
 290:	00010a00 	sll	at,at,0x8
 294:	01e17825 	or	t7,t7,at
 298:	9081ffff 	lbu	at,-1(a0)
 29c:	000fc203 	sra	t8,t7,0x8
 2a0:	00010a00 	sll	at,at,0x8
 2a4:	0321c825 	or	t9,t9,at
 2a8:	00194200 	sll	t0,t9,0x8
 2ac:	03081025 	or	v0,t8,t0
 2b0:	3042ffff 	andi	v0,v0,0xffff
 2b4:	03e00008 	jr	ra
 2b8:	00000000 	nop

000002bc <Jpeg_ParseMarkers>:
 2bc:	27bdffa0 	addiu	sp,sp,-96
 2c0:	afb40058 	sw	s4,88(sp)
 2c4:	afb30054 	sw	s3,84(sp)
 2c8:	afb00048 	sw	s0,72(sp)
 2cc:	afbf005c 	sw	ra,92(sp)
 2d0:	afb20050 	sw	s2,80(sp)
 2d4:	afb1004c 	sw	s1,76(sp)
 2d8:	00808025 	move	s0,a0
 2dc:	00a09825 	move	s3,a1
 2e0:	0000a025 	move	s4,zero
 2e4:	a0a00000 	sb	zero,0(a1)
 2e8:	a0a00010 	sb	zero,16(a1)
 2ec:	568000b7 	bnezl	s4,5cc <Jpeg_ParseMarkers+0x310>
 2f0:	8fbf005c 	lw	ra,92(sp)
 2f4:	92020000 	lbu	v0,0(s0)
 2f8:	26100001 	addiu	s0,s0,1
 2fc:	384200ff 	xori	v0,v0,0xff
 300:	2c420001 	sltiu	v0,v0,1
 304:	1040fff9 	beqz	v0,2ec <Jpeg_ParseMarkers+0x30>
 308:	00000000 	nop
 30c:	92020000 	lbu	v0,0(s0)
 310:	26100001 	addiu	s0,s0,1
 314:	18400009 	blez	v0,33c <Jpeg_ParseMarkers+0x80>
 318:	244eff40 	addiu	t6,v0,-192
 31c:	2dc10023 	sltiu	at,t6,35
 320:	102000a1 	beqz	at,5a8 <Jpeg_ParseMarkers+0x2ec>
 324:	000e7080 	sll	t6,t6,0x2
 328:	3c010000 	lui	at,0x0
 32c:	002e0821 	addu	at,at,t6
 330:	8c2e038c 	lw	t6,908(at)
 334:	01c00008 	jr	t6
 338:	00000000 	nop
 33c:	1040ffeb 	beqz	v0,2ec <Jpeg_ParseMarkers+0x30>
 340:	00000000 	nop
 344:	10000098 	b	5a8 <Jpeg_ParseMarkers+0x2ec>
 348:	00000000 	nop
 34c:	3c040000 	lui	a0,0x0
 350:	0c000000 	jal	0 <Jpeg_SendTask>
 354:	24840000 	addiu	a0,a0,0
 358:	1000ffe4 	b	2ec <Jpeg_ParseMarkers+0x30>
 35c:	00000000 	nop
 360:	0c000000 	jal	0 <Jpeg_SendTask>
 364:	02002025 	move	a0,s0
 368:	3c040000 	lui	a0,0x0
 36c:	2484000c 	addiu	a0,a0,12
 370:	0c000000 	jal	0 <Jpeg_SendTask>
 374:	00402825 	move	a1,v0
 378:	0c000000 	jal	0 <Jpeg_SendTask>
 37c:	02002025 	move	a0,s0
 380:	1000ffda 	b	2ec <Jpeg_ParseMarkers+0x30>
 384:	02028021 	addu	s0,s0,v0
 388:	0c000000 	jal	0 <Jpeg_SendTask>
 38c:	02002025 	move	a0,s0
 390:	3c040000 	lui	a0,0x0
 394:	2484001c 	addiu	a0,a0,28
 398:	0c000000 	jal	0 <Jpeg_SendTask>
 39c:	00402825 	move	a1,v0
 3a0:	0c000000 	jal	0 <Jpeg_SendTask>
 3a4:	02002025 	move	a0,s0
 3a8:	1000ffd0 	b	2ec <Jpeg_ParseMarkers+0x30>
 3ac:	02028021 	addu	s0,s0,v0
 3b0:	0c000000 	jal	0 <Jpeg_SendTask>
 3b4:	02002025 	move	a0,s0
 3b8:	3c040000 	lui	a0,0x0
 3bc:	2484002c 	addiu	a0,a0,44
 3c0:	0c000000 	jal	0 <Jpeg_SendTask>
 3c4:	00402825 	move	a1,v0
 3c8:	0c000000 	jal	0 <Jpeg_SendTask>
 3cc:	02002025 	move	a0,s0
 3d0:	1000ffc6 	b	2ec <Jpeg_ParseMarkers+0x30>
 3d4:	02028021 	addu	s0,s0,v0
 3d8:	0c000000 	jal	0 <Jpeg_SendTask>
 3dc:	02002025 	move	a0,s0
 3e0:	3c040000 	lui	a0,0x0
 3e4:	2484003c 	addiu	a0,a0,60
 3e8:	92650000 	lbu	a1,0(s3)
 3ec:	00403025 	move	a2,v0
 3f0:	0c000000 	jal	0 <Jpeg_SendTask>
 3f4:	92070002 	lbu	a3,2(s0)
 3f8:	92780000 	lbu	t8,0(s3)
 3fc:	260f0002 	addiu	t7,s0,2
 400:	02002025 	move	a0,s0
 404:	0018c880 	sll	t9,t8,0x2
 408:	02794021 	addu	t0,s3,t9
 40c:	ad0f0004 	sw	t7,4(t0)
 410:	92690000 	lbu	t1,0(s3)
 414:	252a0001 	addiu	t2,t1,1
 418:	0c000000 	jal	0 <Jpeg_SendTask>
 41c:	a26a0000 	sb	t2,0(s3)
 420:	1000ffb2 	b	2ec <Jpeg_ParseMarkers+0x30>
 424:	02028021 	addu	s0,s0,v0
 428:	0c000000 	jal	0 <Jpeg_SendTask>
 42c:	02002025 	move	a0,s0
 430:	3c040000 	lui	a0,0x0
 434:	24840054 	addiu	a0,a0,84
 438:	92650010 	lbu	a1,16(s3)
 43c:	00403025 	move	a2,v0
 440:	0c000000 	jal	0 <Jpeg_SendTask>
 444:	92070002 	lbu	a3,2(s0)
 448:	926c0010 	lbu	t4,16(s3)
 44c:	260b0002 	addiu	t3,s0,2
 450:	02002025 	move	a0,s0
 454:	000c6880 	sll	t5,t4,0x2
 458:	026d7021 	addu	t6,s3,t5
 45c:	adcb0014 	sw	t3,20(t6)
 460:	92780010 	lbu	t8,16(s3)
 464:	27190001 	addiu	t9,t8,1
 468:	0c000000 	jal	0 <Jpeg_SendTask>
 46c:	a2790010 	sb	t9,16(s3)
 470:	1000ff9e 	b	2ec <Jpeg_ParseMarkers+0x30>
 474:	02028021 	addu	s0,s0,v0
 478:	0c000000 	jal	0 <Jpeg_SendTask>
 47c:	02002025 	move	a0,s0
 480:	3c040000 	lui	a0,0x0
 484:	2484006c 	addiu	a0,a0,108
 488:	0c000000 	jal	0 <Jpeg_SendTask>
 48c:	00402825 	move	a1,v0
 490:	0c000000 	jal	0 <Jpeg_SendTask>
 494:	02002025 	move	a0,s0
 498:	1000ff94 	b	2ec <Jpeg_ParseMarkers+0x30>
 49c:	02028021 	addu	s0,s0,v0
 4a0:	0c000000 	jal	0 <Jpeg_SendTask>
 4a4:	02002025 	move	a0,s0
 4a8:	3051ffff 	andi	s1,v0,0xffff
 4ac:	0c000000 	jal	0 <Jpeg_SendTask>
 4b0:	26040003 	addiu	a0,s0,3
 4b4:	3052ffff 	andi	s2,v0,0xffff
 4b8:	0c000000 	jal	0 <Jpeg_SendTask>
 4bc:	26040005 	addiu	a0,s0,5
 4c0:	92060002 	lbu	a2,2(s0)
 4c4:	afa20010 	sw	v0,16(sp)
 4c8:	920f0007 	lbu	t7,7(s0)
 4cc:	3c040000 	lui	a0,0x0
 4d0:	2484007c 	addiu	a0,a0,124
 4d4:	afaf0014 	sw	t7,20(sp)
 4d8:	92080008 	lbu	t0,8(s0)
 4dc:	02202825 	move	a1,s1
 4e0:	02403825 	move	a3,s2
 4e4:	afa80018 	sw	t0,24(sp)
 4e8:	92090009 	lbu	t1,9(s0)
 4ec:	afa9001c 	sw	t1,28(sp)
 4f0:	920a000a 	lbu	t2,10(s0)
 4f4:	afaa0020 	sw	t2,32(sp)
 4f8:	920c000b 	lbu	t4,11(s0)
 4fc:	afac0024 	sw	t4,36(sp)
 500:	920d000c 	lbu	t5,12(s0)
 504:	afad0028 	sw	t5,40(sp)
 508:	920b000d 	lbu	t3,13(s0)
 50c:	afab002c 	sw	t3,44(sp)
 510:	920e000e 	lbu	t6,14(s0)
 514:	afae0030 	sw	t6,48(sp)
 518:	9218000f 	lbu	t8,15(s0)
 51c:	afb80034 	sw	t8,52(sp)
 520:	92190010 	lbu	t9,16(s0)
 524:	0c000000 	jal	0 <Jpeg_SendTask>
 528:	afb90038 	sw	t9,56(sp)
 52c:	92020009 	lbu	v0,9(s0)
 530:	24010021 	li	at,33
 534:	54410004 	bnel	v0,at,548 <Jpeg_ParseMarkers+0x28c>
 538:	24010022 	li	at,34
 53c:	10000005 	b	554 <Jpeg_ParseMarkers+0x298>
 540:	ae600028 	sw	zero,40(s3)
 544:	24010022 	li	at,34
 548:	14410002 	bne	v0,at,554 <Jpeg_ParseMarkers+0x298>
 54c:	240f0002 	li	t7,2
 550:	ae6f0028 	sw	t7,40(s3)
 554:	0c000000 	jal	0 <Jpeg_SendTask>
 558:	02002025 	move	a0,s0
 55c:	1000ff63 	b	2ec <Jpeg_ParseMarkers+0x30>
 560:	02028021 	addu	s0,s0,v0
 564:	0c000000 	jal	0 <Jpeg_SendTask>
 568:	02002025 	move	a0,s0
 56c:	3c040000 	lui	a0,0x0
 570:	24840148 	addiu	a0,a0,328
 574:	0c000000 	jal	0 <Jpeg_SendTask>
 578:	00402825 	move	a1,v0
 57c:	0c000000 	jal	0 <Jpeg_SendTask>
 580:	02002025 	move	a0,s0
 584:	02028021 	addu	s0,s0,v0
 588:	1000ff58 	b	2ec <Jpeg_ParseMarkers+0x30>
 58c:	ae700024 	sw	s0,36(s3)
 590:	3c040000 	lui	a0,0x0
 594:	24840158 	addiu	a0,a0,344
 598:	0c000000 	jal	0 <Jpeg_SendTask>
 59c:	24140001 	li	s4,1
 5a0:	1000ff52 	b	2ec <Jpeg_ParseMarkers+0x30>
 5a4:	00000000 	nop
 5a8:	3c040000 	lui	a0,0x0
 5ac:	24840164 	addiu	a0,a0,356
 5b0:	0c000000 	jal	0 <Jpeg_SendTask>
 5b4:	9205ffff 	lbu	a1,-1(s0)
 5b8:	0c000000 	jal	0 <Jpeg_SendTask>
 5bc:	02002025 	move	a0,s0
 5c0:	1280ff4c 	beqz	s4,2f4 <Jpeg_ParseMarkers+0x38>
 5c4:	02028021 	addu	s0,s0,v0
 5c8:	8fbf005c 	lw	ra,92(sp)
 5cc:	8fb00048 	lw	s0,72(sp)
 5d0:	8fb1004c 	lw	s1,76(sp)
 5d4:	8fb20050 	lw	s2,80(sp)
 5d8:	8fb30054 	lw	s3,84(sp)
 5dc:	8fb40058 	lw	s4,88(sp)
 5e0:	03e00008 	jr	ra
 5e4:	27bd0060 	addiu	sp,sp,96

000005e8 <Jpeg_Decode>:
 5e8:	27bdfd30 	addiu	sp,sp,-720
 5ec:	afbf003c 	sw	ra,60(sp)
 5f0:	afb70038 	sw	s7,56(sp)
 5f4:	afb60034 	sw	s6,52(sp)
 5f8:	afb10020 	sw	s1,32(sp)
 5fc:	afb0001c 	sw	s0,28(sp)
 600:	00e08025 	move	s0,a3
 604:	00808825 	move	s1,a0
 608:	00c0b025 	move	s6,a2
 60c:	00a0b825 	move	s7,a1
 610:	afb50030 	sw	s5,48(sp)
 614:	afb4002c 	sw	s4,44(sp)
 618:	afb30028 	sw	s3,40(sp)
 61c:	0c000000 	jal	0 <Jpeg_SendTask>
 620:	afb20024 	sw	s2,36(sp)
 624:	2e0112c0 	sltiu	at,s0,4800
 628:	afa20070 	sw	v0,112(sp)
 62c:	10200007 	beqz	at,64c <Jpeg_Decode+0x64>
 630:	afa30074 	sw	v1,116(sp)
 634:	3c040000 	lui	a0,0x0
 638:	3c050000 	lui	a1,0x0
 63c:	24a50000 	addiu	a1,a1,0
 640:	24840000 	addiu	a0,a0,0
 644:	0c000000 	jal	0 <Jpeg_SendTask>
 648:	2406020f 	li	a2,527
 64c:	27a402a0 	addiu	a0,sp,672
 650:	27a502b8 	addiu	a1,sp,696
 654:	0c000000 	jal	0 <Jpeg_SendTask>
 658:	24060001 	li	a2,1
 65c:	0c000000 	jal	0 <Jpeg_SendTask>
 660:	00000000 	nop
 664:	0c000000 	jal	0 <Jpeg_SendTask>
 668:	00000000 	nop
 66c:	8fae0070 	lw	t6,112(sp)
 670:	8faf0074 	lw	t7,116(sp)
 674:	afa30074 	sw	v1,116(sp)
 678:	004ec023 	subu	t8,v0,t6
 67c:	006f082b 	sltu	at,v1,t7
 680:	03012023 	subu	a0,t8,at
 684:	006f2823 	subu	a1,v1,t7
 688:	afa5007c 	sw	a1,124(sp)
 68c:	afa40078 	sw	a0,120(sp)
 690:	afa20070 	sw	v0,112(sp)
 694:	24060000 	li	a2,0
 698:	0c000000 	jal	0 <Jpeg_SendTask>
 69c:	24070040 	li	a3,64
 6a0:	00402025 	move	a0,v0
 6a4:	00602825 	move	a1,v1
 6a8:	24060000 	li	a2,0
 6ac:	0c000000 	jal	0 <Jpeg_SendTask>
 6b0:	24070bb8 	li	a3,3000
 6b4:	00402025 	move	a0,v0
 6b8:	0c000000 	jal	0 <Jpeg_SendTask>
 6bc:	00602825 	move	a1,v1
 6c0:	3c01447a 	lui	at,0x447a
 6c4:	44812000 	mtc1	at,$f4
 6c8:	3c040000 	lui	a0,0x0
 6cc:	24840000 	addiu	a0,a0,0
 6d0:	46040183 	div.s	$f6,$f0,$f4
 6d4:	46003221 	cvt.d.s	$f8,$f6
 6d8:	44074000 	mfc1	a3,$f8
 6dc:	44064800 	mfc1	a2,$f9
 6e0:	0c000000 	jal	0 <Jpeg_SendTask>
 6e4:	00000000 	nop
 6e8:	afb602bc 	sw	s6,700(sp)
 6ec:	02202025 	move	a0,s1
 6f0:	0c000000 	jal	0 <Jpeg_SendTask>
 6f4:	27a50208 	addiu	a1,sp,520
 6f8:	0c000000 	jal	0 <Jpeg_SendTask>
 6fc:	00000000 	nop
 700:	8fa80070 	lw	t0,112(sp)
 704:	8fa90074 	lw	t1,116(sp)
 708:	afa30074 	sw	v1,116(sp)
 70c:	00485023 	subu	t2,v0,t0
 710:	0069082b 	sltu	at,v1,t1
 714:	01412023 	subu	a0,t2,at
 718:	00692823 	subu	a1,v1,t1
 71c:	afa5007c 	sw	a1,124(sp)
 720:	afa40078 	sw	a0,120(sp)
 724:	afa20070 	sw	v0,112(sp)
 728:	24060000 	li	a2,0
 72c:	0c000000 	jal	0 <Jpeg_SendTask>
 730:	24070040 	li	a3,64
 734:	00402025 	move	a0,v0
 738:	00602825 	move	a1,v1
 73c:	24060000 	li	a2,0
 740:	0c000000 	jal	0 <Jpeg_SendTask>
 744:	24070bb8 	li	a3,3000
 748:	00402025 	move	a0,v0
 74c:	0c000000 	jal	0 <Jpeg_SendTask>
 750:	00602825 	move	a1,v1
 754:	3c01447a 	lui	at,0x447a
 758:	44815000 	mtc1	at,$f10
 75c:	3c040000 	lui	a0,0x0
 760:	24840000 	addiu	a0,a0,0
 764:	460a0403 	div.s	$f16,$f0,$f10
 768:	460084a1 	cvt.d.s	$f18,$f16
 76c:	44079000 	mfc1	a3,$f18
 770:	44069800 	mfc1	a2,$f19
 774:	0c000000 	jal	0 <Jpeg_SendTask>
 778:	00000000 	nop
 77c:	93a20208 	lbu	v0,520(sp)
 780:	24100001 	li	s0,1
 784:	12020008 	beq	s0,v0,7a8 <Jpeg_Decode+0x1c0>
 788:	24010002 	li	at,2
 78c:	1041000c 	beq	v0,at,7c0 <Jpeg_Decode+0x1d8>
 790:	8fa4020c 	lw	a0,524(sp)
 794:	24010003 	li	at,3
 798:	10410016 	beq	v0,at,7f4 <Jpeg_Decode+0x20c>
 79c:	8fa4020c 	lw	a0,524(sp)
 7a0:	1000010c 	b	bd4 <Jpeg_Decode+0x5ec>
 7a4:	2402ffff 	li	v0,-1
 7a8:	8fa4020c 	lw	a0,524(sp)
 7ac:	26c50220 	addiu	a1,s6,544
 7b0:	0c000000 	jal	0 <Jpeg_SendTask>
 7b4:	24060003 	li	a2,3
 7b8:	1000001d 	b	830 <Jpeg_Decode+0x248>
 7bc:	00000000 	nop
 7c0:	26c50220 	addiu	a1,s6,544
 7c4:	0c000000 	jal	0 <Jpeg_SendTask>
 7c8:	24060001 	li	a2,1
 7cc:	8fa40210 	lw	a0,528(sp)
 7d0:	26c502a0 	addiu	a1,s6,672
 7d4:	0c000000 	jal	0 <Jpeg_SendTask>
 7d8:	24060001 	li	a2,1
 7dc:	8fa40210 	lw	a0,528(sp)
 7e0:	26c50320 	addiu	a1,s6,800
 7e4:	0c000000 	jal	0 <Jpeg_SendTask>
 7e8:	24060001 	li	a2,1
 7ec:	10000010 	b	830 <Jpeg_Decode+0x248>
 7f0:	00000000 	nop
 7f4:	26c50220 	addiu	a1,s6,544
 7f8:	0c000000 	jal	0 <Jpeg_SendTask>
 7fc:	24060001 	li	a2,1
 800:	8fa40210 	lw	a0,528(sp)
 804:	26c502a0 	addiu	a1,s6,672
 808:	0c000000 	jal	0 <Jpeg_SendTask>
 80c:	24060001 	li	a2,1
 810:	8fa40214 	lw	a0,532(sp)
 814:	26c50320 	addiu	a1,s6,800
 818:	0c000000 	jal	0 <Jpeg_SendTask>
 81c:	24060001 	li	a2,1
 820:	10000003 	b	830 <Jpeg_Decode+0x248>
 824:	00000000 	nop
 828:	100000ea 	b	bd4 <Jpeg_Decode+0x5ec>
 82c:	2402ffff 	li	v0,-1
 830:	0c000000 	jal	0 <Jpeg_SendTask>
 834:	00000000 	nop
 838:	8fac0070 	lw	t4,112(sp)
 83c:	8fad0074 	lw	t5,116(sp)
 840:	afa30074 	sw	v1,116(sp)
 844:	004c7023 	subu	t6,v0,t4
 848:	006d082b 	sltu	at,v1,t5
 84c:	01c12023 	subu	a0,t6,at
 850:	006d2823 	subu	a1,v1,t5
 854:	afa5007c 	sw	a1,124(sp)
 858:	afa40078 	sw	a0,120(sp)
 85c:	afa20070 	sw	v0,112(sp)
 860:	24060000 	li	a2,0
 864:	0c000000 	jal	0 <Jpeg_SendTask>
 868:	24070040 	li	a3,64
 86c:	00402025 	move	a0,v0
 870:	00602825 	move	a1,v1
 874:	24060000 	li	a2,0
 878:	0c000000 	jal	0 <Jpeg_SendTask>
 87c:	24070bb8 	li	a3,3000
 880:	00402025 	move	a0,v0
 884:	0c000000 	jal	0 <Jpeg_SendTask>
 888:	00602825 	move	a1,v1
 88c:	3c01447a 	lui	at,0x447a
 890:	44812000 	mtc1	at,$f4
 894:	3c040000 	lui	a0,0x0
 898:	24840000 	addiu	a0,a0,0
 89c:	46040183 	div.s	$f6,$f0,$f4
 8a0:	46003221 	cvt.d.s	$f8,$f6
 8a4:	44074000 	mfc1	a3,$f8
 8a8:	44064800 	mfc1	a2,$f9
 8ac:	0c000000 	jal	0 <Jpeg_SendTask>
 8b0:	00000000 	nop
 8b4:	93a20218 	lbu	v0,536(sp)
 8b8:	12020005 	beq	s0,v0,8d0 <Jpeg_Decode+0x2e8>
 8bc:	24010004 	li	at,4
 8c0:	10410011 	beq	v0,at,908 <Jpeg_Decode+0x320>
 8c4:	27b400b8 	addiu	s4,sp,184
 8c8:	100000c2 	b	bd4 <Jpeg_Decode+0x5ec>
 8cc:	2402ffff 	li	v0,-1
 8d0:	27b400b8 	addiu	s4,sp,184
 8d4:	24180004 	li	t8,4
 8d8:	afb80010 	sw	t8,16(sp)
 8dc:	02802825 	move	a1,s4
 8e0:	8fa4021c 	lw	a0,540(sp)
 8e4:	26c603a0 	addiu	a2,s6,928
 8e8:	0c000000 	jal	0 <Jpeg_SendTask>
 8ec:	26c704b0 	addiu	a3,s6,1200
 8f0:	10400037 	beqz	v0,9d0 <Jpeg_Decode+0x3e8>
 8f4:	3c040000 	lui	a0,0x0
 8f8:	0c000000 	jal	0 <Jpeg_SendTask>
 8fc:	24840000 	addiu	a0,a0,0
 900:	10000033 	b	9d0 <Jpeg_Decode+0x3e8>
 904:	00000000 	nop
 908:	26d003a0 	addiu	s0,s6,928
 90c:	26d104b0 	addiu	s1,s6,1200
 910:	24190001 	li	t9,1
 914:	afb90010 	sw	t9,16(sp)
 918:	02203825 	move	a3,s1
 91c:	02003025 	move	a2,s0
 920:	8fa4021c 	lw	a0,540(sp)
 924:	0c000000 	jal	0 <Jpeg_SendTask>
 928:	02802825 	move	a1,s4
 92c:	10400003 	beqz	v0,93c <Jpeg_Decode+0x354>
 930:	3c040000 	lui	a0,0x0
 934:	0c000000 	jal	0 <Jpeg_SendTask>
 938:	24840000 	addiu	a0,a0,0
 93c:	24080001 	li	t0,1
 940:	afa80010 	sw	t0,16(sp)
 944:	8fa40220 	lw	a0,544(sp)
 948:	27a5010c 	addiu	a1,sp,268
 94c:	02003025 	move	a2,s0
 950:	0c000000 	jal	0 <Jpeg_SendTask>
 954:	02203825 	move	a3,s1
 958:	10400003 	beqz	v0,968 <Jpeg_Decode+0x380>
 95c:	3c040000 	lui	a0,0x0
 960:	0c000000 	jal	0 <Jpeg_SendTask>
 964:	24840000 	addiu	a0,a0,0
 968:	24090001 	li	t1,1
 96c:	afa90010 	sw	t1,16(sp)
 970:	8fa40224 	lw	a0,548(sp)
 974:	27a50160 	addiu	a1,sp,352
 978:	02003025 	move	a2,s0
 97c:	0c000000 	jal	0 <Jpeg_SendTask>
 980:	02203825 	move	a3,s1
 984:	10400003 	beqz	v0,994 <Jpeg_Decode+0x3ac>
 988:	3c040000 	lui	a0,0x0
 98c:	0c000000 	jal	0 <Jpeg_SendTask>
 990:	24840000 	addiu	a0,a0,0
 994:	240a0001 	li	t2,1
 998:	afaa0010 	sw	t2,16(sp)
 99c:	8fa40228 	lw	a0,552(sp)
 9a0:	27a501b4 	addiu	a1,sp,436
 9a4:	02003025 	move	a2,s0
 9a8:	0c000000 	jal	0 <Jpeg_SendTask>
 9ac:	02203825 	move	a3,s1
 9b0:	10400007 	beqz	v0,9d0 <Jpeg_Decode+0x3e8>
 9b4:	3c040000 	lui	a0,0x0
 9b8:	0c000000 	jal	0 <Jpeg_SendTask>
 9bc:	24840000 	addiu	a0,a0,0
 9c0:	10000003 	b	9d0 <Jpeg_Decode+0x3e8>
 9c4:	00000000 	nop
 9c8:	10000082 	b	bd4 <Jpeg_Decode+0x5ec>
 9cc:	2402ffff 	li	v0,-1
 9d0:	0c000000 	jal	0 <Jpeg_SendTask>
 9d4:	00000000 	nop
 9d8:	8fac0070 	lw	t4,112(sp)
 9dc:	8fad0074 	lw	t5,116(sp)
 9e0:	afa30074 	sw	v1,116(sp)
 9e4:	004c7023 	subu	t6,v0,t4
 9e8:	006d082b 	sltu	at,v1,t5
 9ec:	01c12023 	subu	a0,t6,at
 9f0:	006d2823 	subu	a1,v1,t5
 9f4:	afa5007c 	sw	a1,124(sp)
 9f8:	afa40078 	sw	a0,120(sp)
 9fc:	afa20070 	sw	v0,112(sp)
 a00:	24060000 	li	a2,0
 a04:	0c000000 	jal	0 <Jpeg_SendTask>
 a08:	24070040 	li	a3,64
 a0c:	00402025 	move	a0,v0
 a10:	00602825 	move	a1,v1
 a14:	24060000 	li	a2,0
 a18:	0c000000 	jal	0 <Jpeg_SendTask>
 a1c:	24070bb8 	li	a3,3000
 a20:	00402025 	move	a0,v0
 a24:	0c000000 	jal	0 <Jpeg_SendTask>
 a28:	00602825 	move	a1,v1
 a2c:	3c01447a 	lui	at,0x447a
 a30:	44815000 	mtc1	at,$f10
 a34:	3c040000 	lui	a0,0x0
 a38:	24840000 	addiu	a0,a0,0
 a3c:	460a0403 	div.s	$f16,$f0,$f10
 a40:	460084a1 	cvt.d.s	$f18,$f16
 a44:	44079000 	mfc1	a3,$f18
 a48:	44069800 	mfc1	a2,$f19
 a4c:	0c000000 	jal	0 <Jpeg_SendTask>
 a50:	00000000 	nop
 a54:	8fab022c 	lw	t3,556(sp)
 a58:	8fb80230 	lw	t8,560(sp)
 a5c:	24190002 	li	t9,2
 a60:	afb400a4 	sw	s4,164(sp)
 a64:	27a8010c 	addiu	t0,sp,268
 a68:	27a90160 	addiu	t1,sp,352
 a6c:	27aa01b4 	addiu	t2,sp,436
 a70:	26c506c0 	addiu	a1,s6,1728
 a74:	a3b900a1 	sb	t9,161(sp)
 a78:	afa800a8 	sw	t0,168(sp)
 a7c:	afa900ac 	sw	t1,172(sp)
 a80:	afaa00b0 	sw	t2,176(sp)
 a84:	a3a000b4 	sb	zero,180(sp)
 a88:	00009825 	move	s3,zero
 a8c:	00009025 	move	s2,zero
 a90:	afa50040 	sw	a1,64(sp)
 a94:	24140c00 	li	s4,3072
 a98:	0000a825 	move	s5,zero
 a9c:	afab009c 	sw	t3,156(sp)
 aa0:	a3b800a0 	sb	t8,160(sp)
 aa4:	0015382b 	sltu	a3,zero,s5
 aa8:	27ac0088 	addiu	t4,sp,136
 aac:	8fa50040 	lw	a1,64(sp)
 ab0:	afac0010 	sw	t4,16(sp)
 ab4:	30e700ff 	andi	a3,a3,0xff
 ab8:	27a4009c 	addiu	a0,sp,156
 abc:	0c000000 	jal	0 <Jpeg_SendTask>
 ac0:	24060004 	li	a2,4
 ac4:	1040000b 	beqz	v0,af4 <Jpeg_Decode+0x50c>
 ac8:	3c040000 	lui	a0,0x0
 acc:	0c000000 	jal	0 <Jpeg_SendTask>
 ad0:	24840000 	addiu	a0,a0,0
 ad4:	3c040000 	lui	a0,0x0
 ad8:	0c000000 	jal	0 <Jpeg_SendTask>
 adc:	24840000 	addiu	a0,a0,0
 ae0:	3c040000 	lui	a0,0x0
 ae4:	0c000000 	jal	0 <Jpeg_SendTask>
 ae8:	24840000 	addiu	a0,a0,0
 aec:	10000016 	b	b48 <Jpeg_Decode+0x560>
 af0:	26b50004 	addiu	s5,s5,4
 af4:	0c000000 	jal	0 <Jpeg_SendTask>
 af8:	27a40208 	addiu	a0,sp,520
 afc:	8fa40040 	lw	a0,64(sp)
 b00:	0c000000 	jal	0 <Jpeg_SendTask>
 b04:	24050300 	li	a1,768
 b08:	00008025 	move	s0,zero
 b0c:	26d106c0 	addiu	s1,s6,1728
 b10:	02202025 	move	a0,s1
 b14:	02e02825 	move	a1,s7
 b18:	02403025 	move	a2,s2
 b1c:	0c000000 	jal	0 <Jpeg_SendTask>
 b20:	02603825 	move	a3,s3
 b24:	26520001 	addiu	s2,s2,1
 b28:	2a410014 	slti	at,s2,20
 b2c:	14200003 	bnez	at,b3c <Jpeg_Decode+0x554>
 b30:	26100300 	addiu	s0,s0,768
 b34:	00009025 	move	s2,zero
 b38:	26730001 	addiu	s3,s3,1
 b3c:	1614fff4 	bne	s0,s4,b10 <Jpeg_Decode+0x528>
 b40:	26310300 	addiu	s1,s1,768
 b44:	26b50004 	addiu	s5,s5,4
 b48:	2401012c 	li	at,300
 b4c:	56a1ffd6 	bnel	s5,at,aa8 <Jpeg_Decode+0x4c0>
 b50:	0015382b 	sltu	a3,zero,s5
 b54:	0c000000 	jal	0 <Jpeg_SendTask>
 b58:	00000000 	nop
 b5c:	8fae0070 	lw	t6,112(sp)
 b60:	8faf0074 	lw	t7,116(sp)
 b64:	24060000 	li	a2,0
 b68:	004ec023 	subu	t8,v0,t6
 b6c:	006f082b 	sltu	at,v1,t7
 b70:	03012023 	subu	a0,t8,at
 b74:	006f2823 	subu	a1,v1,t7
 b78:	afa5007c 	sw	a1,124(sp)
 b7c:	afa40078 	sw	a0,120(sp)
 b80:	0c000000 	jal	0 <Jpeg_SendTask>
 b84:	24070040 	li	a3,64
 b88:	00402025 	move	a0,v0
 b8c:	00602825 	move	a1,v1
 b90:	24060000 	li	a2,0
 b94:	0c000000 	jal	0 <Jpeg_SendTask>
 b98:	24070bb8 	li	a3,3000
 b9c:	00402025 	move	a0,v0
 ba0:	0c000000 	jal	0 <Jpeg_SendTask>
 ba4:	00602825 	move	a1,v1
 ba8:	3c01447a 	lui	at,0x447a
 bac:	44812000 	mtc1	at,$f4
 bb0:	3c040000 	lui	a0,0x0
 bb4:	24840000 	addiu	a0,a0,0
 bb8:	46040183 	div.s	$f6,$f0,$f4
 bbc:	46003221 	cvt.d.s	$f8,$f6
 bc0:	44074000 	mfc1	a3,$f8
 bc4:	44064800 	mfc1	a2,$f9
 bc8:	0c000000 	jal	0 <Jpeg_SendTask>
 bcc:	00000000 	nop
 bd0:	00001025 	move	v0,zero
 bd4:	8fbf003c 	lw	ra,60(sp)
 bd8:	8fb0001c 	lw	s0,28(sp)
 bdc:	8fb10020 	lw	s1,32(sp)
 be0:	8fb20024 	lw	s2,36(sp)
 be4:	8fb30028 	lw	s3,40(sp)
 be8:	8fb4002c 	lw	s4,44(sp)
 bec:	8fb50030 	lw	s5,48(sp)
 bf0:	8fb60034 	lw	s6,52(sp)
 bf4:	8fb70038 	lw	s7,56(sp)
 bf8:	03e00008 	jr	ra
 bfc:	27bd02d0 	addiu	sp,sp,720
