
build/src/libultra_code_O2/pfschecker.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osPfsChecker>:
   0:	27bdfb38 	addiu	sp,sp,-1224
   4:	afbf0044 	sw	ra,68(sp)
   8:	afbe0040 	sw	s8,64(sp)
   c:	afb3002c 	sw	s3,44(sp)
  10:	00809825 	move	s3,a0
  14:	afb7003c 	sw	s7,60(sp)
  18:	afb60038 	sw	s6,56(sp)
  1c:	afb50034 	sw	s5,52(sp)
  20:	afb40030 	sw	s4,48(sp)
  24:	afb20028 	sw	s2,40(sp)
  28:	afb10024 	sw	s1,36(sp)
  2c:	afb00020 	sw	s0,32(sp)
  30:	afa00074 	sw	zero,116(sp)
  34:	0c000000 	jal	0 <osPfsChecker>
  38:	241e00fe 	li	s8,254
  3c:	24010002 	li	at,2
  40:	14410004 	bne	v0,at,54 <osPfsChecker+0x54>
  44:	0040b825 	move	s7,v0
  48:	0c000000 	jal	0 <osPfsChecker>
  4c:	02602025 	move	a0,s3
  50:	0040b825 	move	s7,v0
  54:	10400003 	beqz	v0,64 <osPfsChecker+0x64>
  58:	02602025 	move	a0,s3
  5c:	1000012a 	b	508 <osPfsChecker+0x508>
  60:	02e01025 	move	v0,s7
  64:	0c000000 	jal	0 <osPfsChecker>
  68:	27a50078 	addiu	a1,sp,120
  6c:	50400004 	beqzl	v0,80 <osPfsChecker+0x80>
  70:	8e620050 	lw	v0,80(s3)
  74:	10000125 	b	50c <osPfsChecker+0x50c>
  78:	8fbf0044 	lw	ra,68(sp)
  7c:	8e620050 	lw	v0,80(s3)
  80:	0000a025 	move	s4,zero
  84:	27b502bc 	addiu	s5,sp,700
  88:	18400082 	blez	v0,294 <osPfsChecker+0x294>
  8c:	27b204bc 	addiu	s2,sp,1212
  90:	8e6e005c 	lw	t6,92(s3)
  94:	8e640004 	lw	a0,4(s3)
  98:	8e650008 	lw	a1,8(s3)
  9c:	01d43021 	addu	a2,t6,s4
  a0:	30cfffff 	andi	t7,a2,0xffff
  a4:	01e03025 	move	a2,t7
  a8:	0c000000 	jal	0 <osPfsChecker>
  ac:	27a7029c 	addiu	a3,sp,668
  b0:	10400003 	beqz	v0,c0 <osPfsChecker+0xc0>
  b4:	0040b825 	move	s7,v0
  b8:	10000114 	b	50c <osPfsChecker+0x50c>
  bc:	8fbf0044 	lw	ra,68(sp)
  c0:	97a202a0 	lhu	v0,672(sp)
  c4:	8fb8029c 	lw	t8,668(sp)
  c8:	14400003 	bnez	v0,d8 <osPfsChecker+0xd8>
  cc:	00000000 	nop
  d0:	5300006b 	beqzl	t8,280 <osPfsChecker+0x280>
  d4:	8e620050 	lw	v0,80(s3)
  d8:	10400003 	beqz	v0,e8 <osPfsChecker+0xe8>
  dc:	8fb9029c 	lw	t9,668(sp)
  e0:	17200003 	bnez	t9,f0 <osPfsChecker+0xf0>
  e4:	27a902a2 	addiu	t1,sp,674
  e8:	10000044 	b	1fc <osPfsChecker+0x1fc>
  ec:	2404ffff 	li	a0,-1
  f0:	95210000 	lhu	at,0(t1)
  f4:	00002025 	move	a0,zero
  f8:	00008025 	move	s0,zero
  fc:	a6410000 	sh	at,0(s2)
 100:	8e6d0060 	lw	t5,96(s3)
 104:	97ac04bc 	lhu	t4,1212(sp)
 108:	241600ff 	li	s6,255
 10c:	93ae04bc 	lbu	t6,1212(sp)
 110:	018d082a 	slt	at,t4,t5
 114:	14200039 	bnez	at,1fc <osPfsChecker+0x1fc>
 118:	00000000 	nop
 11c:	926f0064 	lbu	t7,100(s3)
 120:	93b804bd 	lbu	t8,1213(sp)
 124:	01cf082a 	slt	at,t6,t7
 128:	10200034 	beqz	at,1fc <osPfsChecker+0x1fc>
 12c:	00000000 	nop
 130:	1b000032 	blez	t8,1fc <osPfsChecker+0x1fc>
 134:	2b010080 	slti	at,t8,128
 138:	10200030 	beqz	at,1fc <osPfsChecker+0x1fc>
 13c:	02c08825 	move	s1,s6
 140:	93b904bc 	lbu	t9,1212(sp)
 144:	13310010 	beq	t9,s1,188 <osPfsChecker+0x188>
 148:	0320b025 	move	s6,t9
 14c:	133e0008 	beq	t9,s8,170 <osPfsChecker+0x170>
 150:	03208825 	move	s1,t9
 154:	02602025 	move	a0,s3
 158:	02a02825 	move	a1,s5
 15c:	00003025 	move	a2,zero
 160:	0c000000 	jal	0 <osPfsChecker>
 164:	332700ff 	andi	a3,t9,0xff
 168:	0040b825 	move	s7,v0
 16c:	32de00ff 	andi	s8,s6,0xff
 170:	12e00005 	beqz	s7,188 <osPfsChecker+0x188>
 174:	24010003 	li	at,3
 178:	52e10004 	beql	s7,at,18c <osPfsChecker+0x18c>
 17c:	96410000 	lhu	at,0(s2)
 180:	100000e1 	b	508 <osPfsChecker+0x508>
 184:	02e01025 	move	v0,s7
 188:	96410000 	lhu	at,0(s2)
 18c:	02602025 	move	a0,s3
 190:	27a60078 	addiu	a2,sp,120
 194:	a7a10004 	sh	at,4(sp)
 198:	0c000000 	jal	0 <osPfsChecker>
 19c:	8fa50004 	lw	a1,4(sp)
 1a0:	00502023 	subu	a0,v0,s0
 1a4:	14800015 	bnez	a0,1fc <osPfsChecker+0x1fc>
 1a8:	93ab04bd 	lbu	t3,1213(sp)
 1ac:	000b6040 	sll	t4,t3,0x1
 1b0:	02ac6821 	addu	t5,s5,t4
 1b4:	95a10000 	lhu	at,0(t5)
 1b8:	24100001 	li	s0,1
 1bc:	a6410000 	sh	at,0(s2)
 1c0:	8e790060 	lw	t9,96(s3)
 1c4:	97b804bc 	lhu	t8,1212(sp)
 1c8:	93ab04bd 	lbu	t3,1213(sp)
 1cc:	93aa04bc 	lbu	t2,1212(sp)
 1d0:	0319082a 	slt	at,t8,t9
 1d4:	14200009 	bnez	at,1fc <osPfsChecker+0x1fc>
 1d8:	00000000 	nop
 1dc:	92690064 	lbu	t1,100(s3)
 1e0:	0149082a 	slt	at,t2,t1
 1e4:	10200005 	beqz	at,1fc <osPfsChecker+0x1fc>
 1e8:	00000000 	nop
 1ec:	19600003 	blez	t3,1fc <osPfsChecker+0x1fc>
 1f0:	29610080 	slti	at,t3,128
 1f4:	5420ffd3 	bnezl	at,144 <osPfsChecker+0x144>
 1f8:	93b904bc 	lbu	t9,1212(sp)
 1fc:	14800003 	bnez	a0,20c <osPfsChecker+0x20c>
 200:	97ac04bc 	lhu	t4,1212(sp)
 204:	24010001 	li	at,1
 208:	1181001c 	beq	t4,at,27c <osPfsChecker+0x27c>
 20c:	27a4029c 	addiu	a0,sp,668
 210:	0c000000 	jal	0 <osPfsChecker>
 214:	24050020 	li	a1,32
 218:	926e0065 	lbu	t6,101(s3)
 21c:	02602025 	move	a0,s3
 220:	51c00008 	beqzl	t6,244 <osPfsChecker+0x244>
 224:	8e6d005c 	lw	t5,92(s3)
 228:	0c000000 	jal	0 <osPfsChecker>
 22c:	00002825 	move	a1,zero
 230:	50400004 	beqzl	v0,244 <osPfsChecker+0x244>
 234:	8e6d005c 	lw	t5,92(s3)
 238:	100000b4 	b	50c <osPfsChecker+0x50c>
 23c:	8fbf0044 	lw	ra,68(sp)
 240:	8e6d005c 	lw	t5,92(s3)
 244:	8e640004 	lw	a0,4(s3)
 248:	8e650008 	lw	a1,8(s3)
 24c:	01b43021 	addu	a2,t5,s4
 250:	30cfffff 	andi	t7,a2,0xffff
 254:	01e03025 	move	a2,t7
 258:	afa00010 	sw	zero,16(sp)
 25c:	0c000000 	jal	0 <osPfsChecker>
 260:	27a7029c 	addiu	a3,sp,668
 264:	10400003 	beqz	v0,274 <osPfsChecker+0x274>
 268:	8fb80074 	lw	t8,116(sp)
 26c:	100000a7 	b	50c <osPfsChecker+0x50c>
 270:	8fbf0044 	lw	ra,68(sp)
 274:	27190001 	addiu	t9,t8,1
 278:	afb90074 	sw	t9,116(sp)
 27c:	8e620050 	lw	v0,80(s3)
 280:	26940001 	addiu	s4,s4,1
 284:	0282082a 	slt	at,s4,v0
 288:	5420ff82 	bnezl	at,94 <osPfsChecker+0x94>
 28c:	8e6e005c 	lw	t6,92(s3)
 290:	0000a025 	move	s4,zero
 294:	18400021 	blez	v0,31c <osPfsChecker+0x31c>
 298:	27b502bc 	addiu	s5,sp,700
 29c:	8e6a005c 	lw	t2,92(s3)
 2a0:	8e640004 	lw	a0,4(s3)
 2a4:	8e650008 	lw	a1,8(s3)
 2a8:	01543021 	addu	a2,t2,s4
 2ac:	30c9ffff 	andi	t1,a2,0xffff
 2b0:	01203025 	move	a2,t1
 2b4:	0c000000 	jal	0 <osPfsChecker>
 2b8:	27a7029c 	addiu	a3,sp,668
 2bc:	10400003 	beqz	v0,2cc <osPfsChecker+0x2cc>
 2c0:	97ae02a0 	lhu	t6,672(sp)
 2c4:	10000091 	b	50c <osPfsChecker+0x50c>
 2c8:	8fbf0044 	lw	ra,68(sp)
 2cc:	00145840 	sll	t3,s4,0x1
 2d0:	27ac027c 	addiu	t4,sp,636
 2d4:	11c0000b 	beqz	t6,304 <osPfsChecker+0x304>
 2d8:	016c2021 	addu	a0,t3,t4
 2dc:	8fad029c 	lw	t5,668(sp)
 2e0:	97af02a2 	lhu	t7,674(sp)
 2e4:	51a00008 	beqzl	t5,308 <osPfsChecker+0x308>
 2e8:	a4800000 	sh	zero,0(a0)
 2ec:	96780062 	lhu	t8,98(s3)
 2f0:	01f8082a 	slt	at,t7,t8
 2f4:	54200004 	bnezl	at,308 <osPfsChecker+0x308>
 2f8:	a4800000 	sh	zero,0(a0)
 2fc:	10000002 	b	308 <osPfsChecker+0x308>
 300:	a48f0000 	sh	t7,0(a0)
 304:	a4800000 	sh	zero,0(a0)
 308:	8e790050 	lw	t9,80(s3)
 30c:	26940001 	addiu	s4,s4,1
 310:	0299082a 	slt	at,s4,t9
 314:	5420ffe2 	bnezl	at,2a0 <osPfsChecker+0x2a0>
 318:	8e6a005c 	lw	t2,92(s3)
 31c:	926a0064 	lbu	t2,100(s3)
 320:	0000b025 	move	s6,zero
 324:	241e0003 	li	s8,3
 328:	1940006b 	blez	t2,4d8 <osPfsChecker+0x4d8>
 32c:	27b203bc 	addiu	s2,sp,956
 330:	27b00060 	addiu	s0,sp,96
 334:	02602025 	move	a0,s3
 338:	02a02825 	move	a1,s5
 33c:	00003025 	move	a2,zero
 340:	0c000000 	jal	0 <osPfsChecker>
 344:	32c700ff 	andi	a3,s6,0xff
 348:	10400006 	beqz	v0,364 <osPfsChecker+0x364>
 34c:	27a804bc 	addiu	t0,sp,1212
 350:	24010003 	li	at,3
 354:	50410004 	beql	v0,at,368 <osPfsChecker+0x368>
 358:	02c08825 	move	s1,s6
 35c:	1000006b 	b	50c <osPfsChecker+0x50c>
 360:	8fbf0044 	lw	ra,68(sp)
 364:	02c08825 	move	s1,s6
 368:	1ac00003 	blez	s6,378 <osPfsChecker+0x378>
 36c:	0000a025 	move	s4,zero
 370:	10000002 	b	37c <osPfsChecker+0x37c>
 374:	24050001 	li	a1,1
 378:	8e650060 	lw	a1,96(s3)
 37c:	18a0001c 	blez	a1,3f0 <osPfsChecker+0x3f0>
 380:	30a70003 	andi	a3,a1,0x3
 384:	10e0000b 	beqz	a3,3b4 <osPfsChecker+0x3b4>
 388:	00e02025 	move	a0,a3
 38c:	00143040 	sll	a2,s4,0x1
 390:	02461821 	addu	v1,s2,a2
 394:	02a61021 	addu	v0,s5,a2
 398:	94490000 	lhu	t1,0(v0)
 39c:	26940001 	addiu	s4,s4,1
 3a0:	24630002 	addiu	v1,v1,2
 3a4:	24420002 	addiu	v0,v0,2
 3a8:	1494fffb 	bne	a0,s4,398 <osPfsChecker+0x398>
 3ac:	a469fffe 	sh	t1,-2(v1)
 3b0:	1285000f 	beq	s4,a1,3f0 <osPfsChecker+0x3f0>
 3b4:	00143040 	sll	a2,s4,0x1
 3b8:	02461821 	addu	v1,s2,a2
 3bc:	02a61021 	addu	v0,s5,a2
 3c0:	944c0002 	lhu	t4,2(v0)
 3c4:	944e0004 	lhu	t6,4(v0)
 3c8:	944d0006 	lhu	t5,6(v0)
 3cc:	944b0000 	lhu	t3,0(v0)
 3d0:	26940004 	addiu	s4,s4,4
 3d4:	24630008 	addiu	v1,v1,8
 3d8:	24420008 	addiu	v0,v0,8
 3dc:	a46cfffa 	sh	t4,-6(v1)
 3e0:	a46efffc 	sh	t6,-4(v1)
 3e4:	a46dfffe 	sh	t5,-2(v1)
 3e8:	1685fff5 	bne	s4,a1,3c0 <osPfsChecker+0x3c0>
 3ec:	a46bfff8 	sh	t3,-8(v1)
 3f0:	2a810080 	slti	at,s4,128
 3f4:	10200007 	beqz	at,414 <osPfsChecker+0x414>
 3f8:	02402825 	move	a1,s2
 3fc:	0014c040 	sll	t8,s4,0x1
 400:	02581821 	addu	v1,s2,t8
 404:	24630002 	addiu	v1,v1,2
 408:	0068082b 	sltu	at,v1,t0
 40c:	1420fffd 	bnez	at,404 <osPfsChecker+0x404>
 410:	a47efffe 	sh	s8,-2(v1)
 414:	8e6f0050 	lw	t7,80(s3)
 418:	0000a025 	move	s4,zero
 41c:	24060001 	li	a2,1
 420:	19e00021 	blez	t7,4a8 <osPfsChecker+0x4a8>
 424:	32c700ff 	andi	a3,s6,0xff
 428:	27a4027c 	addiu	a0,sp,636
 42c:	90990000 	lbu	t9,0(a0)
 430:	56390018 	bnel	s1,t9,494 <osPfsChecker+0x494>
 434:	8e6e0050 	lw	t6,80(s3)
 438:	948a0000 	lhu	t2,0(a0)
 43c:	96690062 	lhu	t1,98(s3)
 440:	0149082a 	slt	at,t2,t1
 444:	54200013 	bnezl	at,494 <osPfsChecker+0x494>
 448:	8e6e0050 	lw	t6,80(s3)
 44c:	90830001 	lbu	v1,1(a0)
 450:	00031040 	sll	v0,v1,0x1
 454:	02a25821 	addu	t3,s5,v0
 458:	95610000 	lhu	at,0(t3)
 45c:	02426821 	addu	t5,s2,v0
 460:	a6010000 	sh	at,0(s0)
 464:	a5a10000 	sh	at,0(t5)
 468:	96010000 	lhu	at,0(s0)
 46c:	a4810000 	sh	at,0(a0)
 470:	90890000 	lbu	t1,0(a0)
 474:	56290007 	bnel	s1,t1,494 <osPfsChecker+0x494>
 478:	8e6e0050 	lw	t6,80(s3)
 47c:	966b0062 	lhu	t3,98(s3)
 480:	302cffff 	andi	t4,at,0xffff
 484:	018b082a 	slt	at,t4,t3
 488:	5020fff1 	beqzl	at,450 <osPfsChecker+0x450>
 48c:	90830001 	lbu	v1,1(a0)
 490:	8e6e0050 	lw	t6,80(s3)
 494:	26940001 	addiu	s4,s4,1
 498:	24840002 	addiu	a0,a0,2
 49c:	028e082a 	slt	at,s4,t6
 4a0:	5420ffe3 	bnezl	at,430 <osPfsChecker+0x430>
 4a4:	90990000 	lbu	t9,0(a0)
 4a8:	0c000000 	jal	0 <osPfsChecker>
 4ac:	02602025 	move	a0,s3
 4b0:	50400004 	beqzl	v0,4c4 <osPfsChecker+0x4c4>
 4b4:	926d0064 	lbu	t5,100(s3)
 4b8:	10000014 	b	50c <osPfsChecker+0x50c>
 4bc:	8fbf0044 	lw	ra,68(sp)
 4c0:	926d0064 	lbu	t5,100(s3)
 4c4:	26d60001 	addiu	s6,s6,1
 4c8:	32d800ff 	andi	t8,s6,0xff
 4cc:	030d082a 	slt	at,t8,t5
 4d0:	1420ff98 	bnez	at,334 <osPfsChecker+0x334>
 4d4:	0300b025 	move	s6,t8
 4d8:	8faf0074 	lw	t7,116(sp)
 4dc:	00001025 	move	v0,zero
 4e0:	51e00006 	beqzl	t7,4fc <osPfsChecker+0x4fc>
 4e4:	8e690000 	lw	t1,0(s3)
 4e8:	8e790000 	lw	t9,0(s3)
 4ec:	372a0002 	ori	t2,t9,0x2
 4f0:	10000005 	b	508 <osPfsChecker+0x508>
 4f4:	ae6a0000 	sw	t2,0(s3)
 4f8:	8e690000 	lw	t1,0(s3)
 4fc:	2401fffd 	li	at,-3
 500:	01216024 	and	t4,t1,at
 504:	ae6c0000 	sw	t4,0(s3)
 508:	8fbf0044 	lw	ra,68(sp)
 50c:	8fb00020 	lw	s0,32(sp)
 510:	8fb10024 	lw	s1,36(sp)
 514:	8fb20028 	lw	s2,40(sp)
 518:	8fb3002c 	lw	s3,44(sp)
 51c:	8fb40030 	lw	s4,48(sp)
 520:	8fb50034 	lw	s5,52(sp)
 524:	8fb60038 	lw	s6,56(sp)
 528:	8fb7003c 	lw	s7,60(sp)
 52c:	8fbe0040 	lw	s8,64(sp)
 530:	03e00008 	jr	ra
 534:	27bd04c8 	addiu	sp,sp,1224

00000538 <func_80105788>:
 538:	27bdfe98 	addiu	sp,sp,-360
 53c:	afb30024 	sw	s3,36(sp)
 540:	00809825 	move	s3,a0
 544:	afb40028 	sw	s4,40(sp)
 548:	00a0a025 	move	s4,a1
 54c:	afbf003c 	sw	ra,60(sp)
 550:	afbe0038 	sw	s8,56(sp)
 554:	afb70034 	sw	s7,52(sp)
 558:	afb60030 	sw	s6,48(sp)
 55c:	afb5002c 	sw	s5,44(sp)
 560:	afb20020 	sw	s2,32(sp)
 564:	afb1001c 	sw	s1,28(sp)
 568:	afb00018 	sw	s0,24(sp)
 56c:	24040100 	li	a0,256
 570:	00001025 	move	v0,zero
 574:	00a01825 	move	v1,a1
 578:	24420004 	addiu	v0,v0,4
 57c:	a0600102 	sb	zero,258(v1)
 580:	a0600103 	sb	zero,259(v1)
 584:	a0600104 	sb	zero,260(v1)
 588:	24630004 	addiu	v1,v1,4
 58c:	1444fffa 	bne	v0,a0,578 <func_80105788+0x40>
 590:	a06000fd 	sb	zero,253(v1)
 594:	240e00ff 	li	t6,255
 598:	a28e0100 	sb	t6,256(s4)
 59c:	926f0064 	lbu	t7,100(s3)
 5a0:	0000b825 	move	s7,zero
 5a4:	00008025 	move	s0,zero
 5a8:	19e0008c 	blez	t7,7dc <func_80105788+0x2a4>
 5ac:	241e0080 	li	s8,128
 5b0:	27b6015a 	addiu	s6,sp,346
 5b4:	27b50058 	addiu	s5,sp,88
 5b8:	27b20158 	addiu	s2,sp,344
 5bc:	1a000003 	blez	s0,5cc <func_80105788+0x94>
 5c0:	02602025 	move	a0,s3
 5c4:	10000002 	b	5d0 <func_80105788+0x98>
 5c8:	24110001 	li	s1,1
 5cc:	8e710060 	lw	s1,96(s3)
 5d0:	02a02825 	move	a1,s5
 5d4:	00003025 	move	a2,zero
 5d8:	0c000000 	jal	0 <osPfsChecker>
 5dc:	32e700ff 	andi	a3,s7,0xff
 5e0:	10400005 	beqz	v0,5f8 <func_80105788+0xc0>
 5e4:	24010003 	li	at,3
 5e8:	50410004 	beql	v0,at,5fc <func_80105788+0xc4>
 5ec:	2a210080 	slti	at,s1,128
 5f0:	1000007c 	b	7e4 <func_80105788+0x2ac>
 5f4:	8fbf003c 	lw	ra,60(sp)
 5f8:	2a210080 	slti	at,s1,128
 5fc:	10200071 	beqz	at,7c4 <func_80105788+0x28c>
 600:	02201025 	move	v0,s1
 604:	03d11823 	subu	v1,s8,s1
 608:	30780001 	andi	t8,v1,0x1
 60c:	13000025 	beqz	t8,6a4 <func_80105788+0x16c>
 610:	0011c840 	sll	t9,s1,0x1
 614:	02b94021 	addu	t0,s5,t9
 618:	95010000 	lhu	at,0(t0)
 61c:	a6410000 	sh	at,0(s2)
 620:	8e6c0060 	lw	t4,96(s3)
 624:	97ab0158 	lhu	t3,344(sp)
 628:	93ad0158 	lbu	t5,344(sp)
 62c:	016c082a 	slt	at,t3,t4
 630:	5420001b 	bnezl	at,6a0 <func_80105788+0x168>
 634:	26220001 	addiu	v0,s1,1
 638:	120d0018 	beq	s0,t5,69c <func_80105788+0x164>
 63c:	93ae0159 	lbu	t6,345(sp)
 640:	31cf007f 	andi	t7,t6,0x7f
 644:	05e10003 	bgez	t7,654 <func_80105788+0x11c>
 648:	000fc083 	sra	t8,t7,0x2
 64c:	25e10003 	addiu	at,t7,3
 650:	0001c083 	sra	t8,at,0x2
 654:	05a10004 	bgez	t5,668 <func_80105788+0x130>
 658:	31b90007 	andi	t9,t5,0x7
 65c:	13200002 	beqz	t9,668 <func_80105788+0x130>
 660:	00000000 	nop
 664:	2739fff8 	addiu	t9,t9,-8
 668:	00194940 	sll	t1,t9,0x5
 66c:	03091821 	addu	v1,t8,t1
 670:	02831021 	addu	v0,s4,v1
 674:	90480101 	lbu	t0,257(v0)
 678:	06010004 	bgez	s0,68c <func_80105788+0x154>
 67c:	320a0007 	andi	t2,s0,0x7
 680:	11400002 	beqz	t2,68c <func_80105788+0x154>
 684:	00000000 	nop
 688:	254afff8 	addiu	t2,t2,-8
 68c:	240b0001 	li	t3,1
 690:	014b6004 	sllv	t4,t3,t2
 694:	010c7025 	or	t6,t0,t4
 698:	a04e0101 	sb	t6,257(v0)
 69c:	26220001 	addiu	v0,s1,1
 6a0:	105e0048 	beq	v0,s8,7c4 <func_80105788+0x28c>
 6a4:	00027840 	sll	t7,v0,0x1
 6a8:	02af2821 	addu	a1,s5,t7
 6ac:	24a40002 	addiu	a0,a1,2
 6b0:	94a10000 	lhu	at,0(a1)
 6b4:	a6410000 	sh	at,0(s2)
 6b8:	8e690060 	lw	t1,96(s3)
 6bc:	97b80158 	lhu	t8,344(sp)
 6c0:	93ab0158 	lbu	t3,344(sp)
 6c4:	0309082a 	slt	at,t8,t1
 6c8:	5420001b 	bnezl	at,738 <func_80105788+0x200>
 6cc:	94810000 	lhu	at,0(a0)
 6d0:	120b0018 	beq	s0,t3,734 <func_80105788+0x1fc>
 6d4:	93aa0159 	lbu	t2,345(sp)
 6d8:	3148007f 	andi	t0,t2,0x7f
 6dc:	05010003 	bgez	t0,6ec <func_80105788+0x1b4>
 6e0:	00086083 	sra	t4,t0,0x2
 6e4:	25010003 	addiu	at,t0,3
 6e8:	00016083 	sra	t4,at,0x2
 6ec:	05610004 	bgez	t3,700 <func_80105788+0x1c8>
 6f0:	316e0007 	andi	t6,t3,0x7
 6f4:	11c00002 	beqz	t6,700 <func_80105788+0x1c8>
 6f8:	00000000 	nop
 6fc:	25cefff8 	addiu	t6,t6,-8
 700:	000e7940 	sll	t7,t6,0x5
 704:	018f1821 	addu	v1,t4,t7
 708:	02831021 	addu	v0,s4,v1
 70c:	904d0101 	lbu	t5,257(v0)
 710:	06010004 	bgez	s0,724 <func_80105788+0x1ec>
 714:	32190007 	andi	t9,s0,0x7
 718:	13200002 	beqz	t9,724 <func_80105788+0x1ec>
 71c:	00000000 	nop
 720:	2739fff8 	addiu	t9,t9,-8
 724:	24180001 	li	t8,1
 728:	03384804 	sllv	t1,t8,t9
 72c:	01a95025 	or	t2,t5,t1
 730:	a04a0101 	sb	t2,257(v0)
 734:	94810000 	lhu	at,0(a0)
 738:	24840004 	addiu	a0,a0,4
 73c:	a6410000 	sh	at,0(s2)
 740:	8e6c0060 	lw	t4,96(s3)
 744:	97ae0158 	lhu	t6,344(sp)
 748:	93af0158 	lbu	t7,344(sp)
 74c:	01cc082a 	slt	at,t6,t4
 750:	1420001a 	bnez	at,7bc <func_80105788+0x284>
 754:	00000000 	nop
 758:	120f0018 	beq	s0,t7,7bc <func_80105788+0x284>
 75c:	93b80159 	lbu	t8,345(sp)
 760:	3319007f 	andi	t9,t8,0x7f
 764:	07210003 	bgez	t9,774 <func_80105788+0x23c>
 768:	00196883 	sra	t5,t9,0x2
 76c:	27210003 	addiu	at,t9,3
 770:	00016883 	sra	t5,at,0x2
 774:	05e10004 	bgez	t7,788 <func_80105788+0x250>
 778:	31e90007 	andi	t1,t7,0x7
 77c:	11200002 	beqz	t1,788 <func_80105788+0x250>
 780:	00000000 	nop
 784:	2529fff8 	addiu	t1,t1,-8
 788:	00095140 	sll	t2,t1,0x5
 78c:	01aa1821 	addu	v1,t5,t2
 790:	02831021 	addu	v0,s4,v1
 794:	90480101 	lbu	t0,257(v0)
 798:	06010004 	bgez	s0,7ac <func_80105788+0x274>
 79c:	320b0007 	andi	t3,s0,0x7
 7a0:	11600002 	beqz	t3,7ac <func_80105788+0x274>
 7a4:	00000000 	nop
 7a8:	256bfff8 	addiu	t3,t3,-8
 7ac:	240e0001 	li	t6,1
 7b0:	016e6004 	sllv	t4,t6,t3
 7b4:	010cc025 	or	t8,t0,t4
 7b8:	a0580101 	sb	t8,257(v0)
 7bc:	1496ffbc 	bne	a0,s6,6b0 <func_80105788+0x178>
 7c0:	24a50004 	addiu	a1,a1,4
 7c4:	926f0064 	lbu	t7,100(s3)
 7c8:	26f70001 	addiu	s7,s7,1
 7cc:	32f000ff 	andi	s0,s7,0xff
 7d0:	020f082a 	slt	at,s0,t7
 7d4:	1420ff79 	bnez	at,5bc <func_80105788+0x84>
 7d8:	0200b825 	move	s7,s0
 7dc:	00001025 	move	v0,zero
 7e0:	8fbf003c 	lw	ra,60(sp)
 7e4:	8fb00018 	lw	s0,24(sp)
 7e8:	8fb1001c 	lw	s1,28(sp)
 7ec:	8fb20020 	lw	s2,32(sp)
 7f0:	8fb30024 	lw	s3,36(sp)
 7f4:	8fb40028 	lw	s4,40(sp)
 7f8:	8fb5002c 	lw	s5,44(sp)
 7fc:	8fb60030 	lw	s6,48(sp)
 800:	8fb70034 	lw	s7,52(sp)
 804:	8fbe0038 	lw	s8,56(sp)
 808:	03e00008 	jr	ra
 80c:	27bd0168 	addiu	sp,sp,360

00000810 <func_80105A60>:
 810:	27bdffc8 	addiu	sp,sp,-56
 814:	afa5003c 	sw	a1,60(sp)
 818:	93b8003c 	lbu	t8,60(sp)
 81c:	afb40028 	sw	s4,40(sp)
 820:	93ae003d 	lbu	t6,61(sp)
 824:	0080a025 	move	s4,a0
 828:	afbf0034 	sw	ra,52(sp)
 82c:	afb60030 	sw	s6,48(sp)
 830:	afb5002c 	sw	s5,44(sp)
 834:	afb30024 	sw	s3,36(sp)
 838:	afb20020 	sw	s2,32(sp)
 83c:	afb1001c 	sw	s1,28(sp)
 840:	afb00018 	sw	s0,24(sp)
 844:	92890064 	lbu	t1,100(s4)
 848:	00c09825 	move	s3,a2
 84c:	00008025 	move	s0,zero
 850:	05c10003 	bgez	t6,860 <func_80105A60+0x50>
 854:	000e7883 	sra	t7,t6,0x2
 858:	25c10003 	addiu	at,t6,3
 85c:	00017883 	sra	t7,at,0x2
 860:	07010004 	bgez	t8,874 <func_80105A60+0x64>
 864:	33190007 	andi	t9,t8,0x7
 868:	13200002 	beqz	t9,874 <func_80105A60+0x64>
 86c:	00000000 	nop
 870:	2739fff8 	addiu	t9,t9,-8
 874:	00194140 	sll	t0,t9,0x5
 878:	01e8b021 	addu	s6,t7,t0
 87c:	19200040 	blez	t1,980 <func_80105A60+0x170>
 880:	00009025 	move	s2,zero
 884:	00001025 	move	v0,zero
 888:	24150003 	li	s5,3
 88c:	18400003 	blez	v0,89c <func_80105A60+0x8c>
 890:	93aa003c 	lbu	t2,60(sp)
 894:	10000002 	b	8a0 <func_80105A60+0x90>
 898:	24110001 	li	s1,1
 89c:	8e910060 	lw	s1,96(s4)
 8a0:	1142000c 	beq	t2,v0,8d4 <func_80105A60+0xc4>
 8a4:	02765821 	addu	t3,s3,s6
 8a8:	916c0101 	lbu	t4,257(t3)
 8ac:	04410004 	bgez	v0,8c0 <func_80105A60+0xb0>
 8b0:	304d0007 	andi	t5,v0,0x7
 8b4:	11a00002 	beqz	t5,8c0 <func_80105A60+0xb0>
 8b8:	00000000 	nop
 8bc:	25adfff8 	addiu	t5,t5,-8
 8c0:	240e0001 	li	t6,1
 8c4:	01aec004 	sllv	t8,t6,t5
 8c8:	0198c824 	and	t9,t4,t8
 8cc:	53200027 	beqzl	t9,96c <func_80105A60+0x15c>
 8d0:	928b0064 	lbu	t3,100(s4)
 8d4:	926f0100 	lbu	t7,256(s3)
 8d8:	02802025 	move	a0,s4
 8dc:	02602825 	move	a1,s3
 8e0:	11e2000a 	beq	t7,v0,90c <func_80105A60+0xfc>
 8e4:	00003025 	move	a2,zero
 8e8:	0c000000 	jal	0 <osPfsChecker>
 8ec:	324700ff 	andi	a3,s2,0xff
 8f0:	50400006 	beqzl	v0,90c <func_80105A60+0xfc>
 8f4:	a2720100 	sb	s2,256(s3)
 8f8:	50550004 	beql	v0,s5,90c <func_80105A60+0xfc>
 8fc:	a2720100 	sb	s2,256(s3)
 900:	10000021 	b	988 <func_80105A60+0x178>
 904:	8fbf0034 	lw	ra,52(sp)
 908:	a2720100 	sb	s2,256(s3)
 90c:	2a010002 	slti	at,s0,2
 910:	10200010 	beqz	at,954 <func_80105A60+0x144>
 914:	2a210080 	slti	at,s1,128
 918:	1020000e 	beqz	at,954 <func_80105A60+0x144>
 91c:	00111040 	sll	v0,s1,0x1
 920:	02621821 	addu	v1,s3,v0
 924:	97a8003c 	lhu	t0,60(sp)
 928:	94690000 	lhu	t1,0(v1)
 92c:	24420002 	addiu	v0,v0,2
 930:	55090003 	bnel	t0,t1,940 <func_80105A60+0x130>
 934:	2a010002 	slti	at,s0,2
 938:	26100001 	addiu	s0,s0,1
 93c:	2a010002 	slti	at,s0,2
 940:	10200004 	beqz	at,954 <func_80105A60+0x144>
 944:	24630002 	addiu	v1,v1,2
 948:	28410100 	slti	at,v0,256
 94c:	5420fff6 	bnezl	at,928 <func_80105A60+0x118>
 950:	97a8003c 	lhu	t0,60(sp)
 954:	2a010002 	slti	at,s0,2
 958:	54200004 	bnezl	at,96c <func_80105A60+0x15c>
 95c:	928b0064 	lbu	t3,100(s4)
 960:	10000008 	b	984 <func_80105A60+0x174>
 964:	24020002 	li	v0,2
 968:	928b0064 	lbu	t3,100(s4)
 96c:	26520001 	addiu	s2,s2,1
 970:	324200ff 	andi	v0,s2,0xff
 974:	004b082a 	slt	at,v0,t3
 978:	1420ffc4 	bnez	at,88c <func_80105A60+0x7c>
 97c:	00409025 	move	s2,v0
 980:	02001025 	move	v0,s0
 984:	8fbf0034 	lw	ra,52(sp)
 988:	8fb00018 	lw	s0,24(sp)
 98c:	8fb1001c 	lw	s1,28(sp)
 990:	8fb20020 	lw	s2,32(sp)
 994:	8fb30024 	lw	s3,36(sp)
 998:	8fb40028 	lw	s4,40(sp)
 99c:	8fb5002c 	lw	s5,44(sp)
 9a0:	8fb60030 	lw	s6,48(sp)
 9a4:	03e00008 	jr	ra
 9a8:	27bd0038 	addiu	sp,sp,56
 9ac:	00000000 	nop
