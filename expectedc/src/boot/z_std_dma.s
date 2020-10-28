
build/src/boot/z_std_dma.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <DmaMgr_CompareName>:
   0:	90820000 	lbu	v0,0(a0)
   4:	50400012 	beqzl	v0,50 <DmaMgr_CompareName+0x50>
   8:	90ae0000 	lbu	t6,0(a1)
   c:	90a30000 	lbu	v1,0(a1)
  10:	0062082a 	slt	at,v1,v0
  14:	50200004 	beqzl	at,28 <DmaMgr_CompareName+0x28>
  18:	0043082a 	slt	at,v0,v1
  1c:	03e00008 	jr	ra
  20:	24020001 	li	v0,1
  24:	0043082a 	slt	at,v0,v1
  28:	50200004 	beqzl	at,3c <DmaMgr_CompareName+0x3c>
  2c:	90820001 	lbu	v0,1(a0)
  30:	03e00008 	jr	ra
  34:	2402ffff 	li	v0,-1
  38:	90820001 	lbu	v0,1(a0)
  3c:	24840001 	addiu	a0,a0,1
  40:	24a50001 	addiu	a1,a1,1
  44:	5440fff2 	bnezl	v0,10 <DmaMgr_CompareName+0x10>
  48:	90a30000 	lbu	v1,0(a1)
  4c:	90ae0000 	lbu	t6,0(a1)
  50:	00001025 	move	v0,zero
  54:	19c00003 	blez	t6,64 <DmaMgr_CompareName+0x64>
  58:	00000000 	nop
  5c:	03e00008 	jr	ra
  60:	2402ffff 	li	v0,-1
  64:	03e00008 	jr	ra
  68:	00000000 	nop

0000006c <DmaMgr_DMARomToRam>:
  6c:	27bdff50 	addiu	sp,sp,-176
  70:	afb00024 	sw	s0,36(sp)
  74:	3c100000 	lui	s0,0x0
  78:	8e100000 	lw	s0,0(s0)
  7c:	afb50038 	sw	s5,56(sp)
  80:	afb40034 	sw	s4,52(sp)
  84:	afb10028 	sw	s1,40(sp)
  88:	00808825 	move	s1,a0
  8c:	00c0a025 	move	s4,a2
  90:	00a0a825 	move	s5,a1
  94:	afbf0044 	sw	ra,68(sp)
  98:	afb70040 	sw	s7,64(sp)
  9c:	afb6003c 	sw	s6,60(sp)
  a0:	afb30030 	sw	s3,48(sp)
  a4:	16000002 	bnez	s0,b0 <DmaMgr_DMARomToRam+0x44>
  a8:	afb2002c 	sw	s2,44(sp)
  ac:	24102000 	li	s0,8192
  b0:	02a02025 	move	a0,s5
  b4:	0c000000 	jal	0 <DmaMgr_CompareName>
  b8:	02802825 	move	a1,s4
  bc:	02a02025 	move	a0,s5
  c0:	0c000000 	jal	0 <DmaMgr_CompareName>
  c4:	02802825 	move	a1,s4
  c8:	27b60080 	addiu	s6,sp,128
  cc:	02c02025 	move	a0,s6
  d0:	27a5007c 	addiu	a1,sp,124
  d4:	0c000000 	jal	0 <DmaMgr_CompareName>
  d8:	24060001 	li	a2,1
  dc:	0214082b 	sltu	at,s0,s4
  e0:	10200061 	beqz	at,268 <DmaMgr_DMARomToRam+0x1fc>
  e4:	3c170000 	lui	s7,0x0
  e8:	3c130000 	lui	s3,0x0
  ec:	26730000 	addiu	s3,s3,0
  f0:	26f70000 	addiu	s7,s7,0
  f4:	2412000a 	li	s2,10
  f8:	8ee20000 	lw	v0,0(s7)
  fc:	a3a0009a 	sb	zero,154(sp)
 100:	afb6009c 	sw	s6,156(sp)
 104:	afb100a4 	sw	s1,164(sp)
 108:	afb500a0 	sw	s5,160(sp)
 10c:	1642001a 	bne	s2,v0,178 <DmaMgr_DMARomToRam+0x10c>
 110:	afb000a8 	sw	s0,168(sp)
 114:	0c000000 	jal	0 <DmaMgr_CompareName>
 118:	00000000 	nop
 11c:	00402025 	move	a0,v0
 120:	00602825 	move	a1,v1
 124:	24060000 	li	a2,0
 128:	0c000000 	jal	0 <DmaMgr_CompareName>
 12c:	24070040 	li	a3,64
 130:	00402025 	move	a0,v0
 134:	00602825 	move	a1,v1
 138:	24060000 	li	a2,0
 13c:	0c000000 	jal	0 <DmaMgr_CompareName>
 140:	24070bb8 	li	a3,3000
 144:	8fae00a0 	lw	t6,160(sp)
 148:	8faf00a4 	lw	t7,164(sp)
 14c:	8fb800a8 	lw	t8,168(sp)
 150:	8e790008 	lw	t9,8(s3)
 154:	3c040000 	lui	a0,0x0
 158:	24846494 	addiu	a0,a0,25748
 15c:	00403025 	move	a2,v0
 160:	00603825 	move	a3,v1
 164:	afae0010 	sw	t6,16(sp)
 168:	afaf0014 	sw	t7,20(sp)
 16c:	afb80018 	sw	t8,24(sp)
 170:	0c000000 	jal	0 <DmaMgr_CompareName>
 174:	afb9001c 	sw	t9,28(sp)
 178:	3c040000 	lui	a0,0x0
 17c:	8c840000 	lw	a0,0(a0)
 180:	27a50098 	addiu	a1,sp,152
 184:	0c000000 	jal	0 <DmaMgr_CompareName>
 188:	00003025 	move	a2,zero
 18c:	1440007f 	bnez	v0,38c <DmaMgr_DMARomToRam+0x320>
 190:	00404025 	move	t0,v0
 194:	8ee90000 	lw	t1,0(s7)
 198:	56490015 	bnel	s2,t1,1f0 <DmaMgr_DMARomToRam+0x184>
 19c:	02c02025 	move	a0,s6
 1a0:	0c000000 	jal	0 <DmaMgr_CompareName>
 1a4:	00000000 	nop
 1a8:	00402025 	move	a0,v0
 1ac:	00602825 	move	a1,v1
 1b0:	24060000 	li	a2,0
 1b4:	0c000000 	jal	0 <DmaMgr_CompareName>
 1b8:	24070040 	li	a3,64
 1bc:	00402025 	move	a0,v0
 1c0:	00602825 	move	a1,v1
 1c4:	24060000 	li	a2,0
 1c8:	0c000000 	jal	0 <DmaMgr_CompareName>
 1cc:	24070bb8 	li	a3,3000
 1d0:	8e6a0008 	lw	t2,8(s3)
 1d4:	3c040000 	lui	a0,0x0
 1d8:	248464c0 	addiu	a0,a0,25792
 1dc:	00403025 	move	a2,v0
 1e0:	00603825 	move	a3,v1
 1e4:	0c000000 	jal	0 <DmaMgr_CompareName>
 1e8:	afaa0010 	sw	t2,16(sp)
 1ec:	02c02025 	move	a0,s6
 1f0:	00002825 	move	a1,zero
 1f4:	0c000000 	jal	0 <DmaMgr_CompareName>
 1f8:	24060001 	li	a2,1
 1fc:	8eeb0000 	lw	t3,0(s7)
 200:	564b0015 	bnel	s2,t3,258 <DmaMgr_DMARomToRam+0x1ec>
 204:	0290a023 	subu	s4,s4,s0
 208:	0c000000 	jal	0 <DmaMgr_CompareName>
 20c:	00000000 	nop
 210:	00402025 	move	a0,v0
 214:	00602825 	move	a1,v1
 218:	24060000 	li	a2,0
 21c:	0c000000 	jal	0 <DmaMgr_CompareName>
 220:	24070040 	li	a3,64
 224:	00402025 	move	a0,v0
 228:	00602825 	move	a1,v1
 22c:	24060000 	li	a2,0
 230:	0c000000 	jal	0 <DmaMgr_CompareName>
 234:	24070bb8 	li	a3,3000
 238:	8e6c0008 	lw	t4,8(s3)
 23c:	3c040000 	lui	a0,0x0
 240:	248464e4 	addiu	a0,a0,25828
 244:	00403025 	move	a2,v0
 248:	00603825 	move	a3,v1
 24c:	0c000000 	jal	0 <DmaMgr_CompareName>
 250:	afac0010 	sw	t4,16(sp)
 254:	0290a023 	subu	s4,s4,s0
 258:	0214082b 	sltu	at,s0,s4
 25c:	02308821 	addu	s1,s1,s0
 260:	1420ffa5 	bnez	at,f8 <DmaMgr_DMARomToRam+0x8c>
 264:	02b0a821 	addu	s5,s5,s0
 268:	3c170000 	lui	s7,0x0
 26c:	26f70000 	addiu	s7,s7,0
 270:	8ee20000 	lw	v0,0(s7)
 274:	2412000a 	li	s2,10
 278:	3c130000 	lui	s3,0x0
 27c:	26730000 	addiu	s3,s3,0
 280:	a3a0009a 	sb	zero,154(sp)
 284:	afb6009c 	sw	s6,156(sp)
 288:	afb100a4 	sw	s1,164(sp)
 28c:	afb500a0 	sw	s5,160(sp)
 290:	1642001a 	bne	s2,v0,2fc <DmaMgr_DMARomToRam+0x290>
 294:	afb400a8 	sw	s4,168(sp)
 298:	0c000000 	jal	0 <DmaMgr_CompareName>
 29c:	00000000 	nop
 2a0:	00402025 	move	a0,v0
 2a4:	00602825 	move	a1,v1
 2a8:	24060000 	li	a2,0
 2ac:	0c000000 	jal	0 <DmaMgr_CompareName>
 2b0:	24070040 	li	a3,64
 2b4:	00402025 	move	a0,v0
 2b8:	00602825 	move	a1,v1
 2bc:	24060000 	li	a2,0
 2c0:	0c000000 	jal	0 <DmaMgr_CompareName>
 2c4:	24070bb8 	li	a3,3000
 2c8:	8fad00a0 	lw	t5,160(sp)
 2cc:	8fae00a4 	lw	t6,164(sp)
 2d0:	8faf00a8 	lw	t7,168(sp)
 2d4:	8e780008 	lw	t8,8(s3)
 2d8:	3c040000 	lui	a0,0x0
 2dc:	24846504 	addiu	a0,a0,25860
 2e0:	00403025 	move	a2,v0
 2e4:	00603825 	move	a3,v1
 2e8:	afad0010 	sw	t5,16(sp)
 2ec:	afae0014 	sw	t6,20(sp)
 2f0:	afaf0018 	sw	t7,24(sp)
 2f4:	0c000000 	jal	0 <DmaMgr_CompareName>
 2f8:	afb8001c 	sw	t8,28(sp)
 2fc:	3c040000 	lui	a0,0x0
 300:	8c840000 	lw	a0,0(a0)
 304:	27a50098 	addiu	a1,sp,152
 308:	0c000000 	jal	0 <DmaMgr_CompareName>
 30c:	00003025 	move	a2,zero
 310:	1440001e 	bnez	v0,38c <DmaMgr_DMARomToRam+0x320>
 314:	00404025 	move	t0,v0
 318:	02c02025 	move	a0,s6
 31c:	00002825 	move	a1,zero
 320:	24060001 	li	a2,1
 324:	0c000000 	jal	0 <DmaMgr_CompareName>
 328:	afa20078 	sw	v0,120(sp)
 32c:	8ef90000 	lw	t9,0(s7)
 330:	8fa80078 	lw	t0,120(sp)
 334:	56590016 	bnel	s2,t9,390 <DmaMgr_DMARomToRam+0x324>
 338:	02a02025 	move	a0,s5
 33c:	0c000000 	jal	0 <DmaMgr_CompareName>
 340:	afa80078 	sw	t0,120(sp)
 344:	00402025 	move	a0,v0
 348:	00602825 	move	a1,v1
 34c:	24060000 	li	a2,0
 350:	0c000000 	jal	0 <DmaMgr_CompareName>
 354:	24070040 	li	a3,64
 358:	00402025 	move	a0,v0
 35c:	00602825 	move	a1,v1
 360:	24060000 	li	a2,0
 364:	0c000000 	jal	0 <DmaMgr_CompareName>
 368:	24070bb8 	li	a3,3000
 36c:	8e690008 	lw	t1,8(s3)
 370:	3c040000 	lui	a0,0x0
 374:	24846530 	addiu	a0,a0,25904
 378:	00403025 	move	a2,v0
 37c:	00603825 	move	a3,v1
 380:	0c000000 	jal	0 <DmaMgr_CompareName>
 384:	afa90010 	sw	t1,16(sp)
 388:	8fa80078 	lw	t0,120(sp)
 38c:	02a02025 	move	a0,s5
 390:	02802825 	move	a1,s4
 394:	0c000000 	jal	0 <DmaMgr_CompareName>
 398:	afa80078 	sw	t0,120(sp)
 39c:	02a02025 	move	a0,s5
 3a0:	0c000000 	jal	0 <DmaMgr_CompareName>
 3a4:	02802825 	move	a1,s4
 3a8:	8fbf0044 	lw	ra,68(sp)
 3ac:	8fa20078 	lw	v0,120(sp)
 3b0:	8fb00024 	lw	s0,36(sp)
 3b4:	8fb10028 	lw	s1,40(sp)
 3b8:	8fb2002c 	lw	s2,44(sp)
 3bc:	8fb30030 	lw	s3,48(sp)
 3c0:	8fb40034 	lw	s4,52(sp)
 3c4:	8fb50038 	lw	s5,56(sp)
 3c8:	8fb6003c 	lw	s6,60(sp)
 3cc:	8fb70040 	lw	s7,64(sp)
 3d0:	03e00008 	jr	ra
 3d4:	27bd00b0 	addiu	sp,sp,176

000003d8 <DmaMgr_DmaCallback0>:
 3d8:	3c0f0000 	lui	t7,0x0
 3dc:	8def0000 	lw	t7,0(t7)
 3e0:	27bdffd0 	addiu	sp,sp,-48
 3e4:	afbf0024 	sw	ra,36(sp)
 3e8:	afa40030 	sw	a0,48(sp)
 3ec:	afa50034 	sw	a1,52(sp)
 3f0:	108f0007 	beq	a0,t7,410 <DmaMgr_DmaCallback0+0x38>
 3f4:	afa60038 	sw	a2,56(sp)
 3f8:	3c040000 	lui	a0,0x0
 3fc:	3c050000 	lui	a1,0x0
 400:	24a56568 	addiu	a1,a1,25960
 404:	24846550 	addiu	a0,a0,25936
 408:	0c000000 	jal	0 <DmaMgr_CompareName>
 40c:	24060212 	li	a2,530
 410:	8fb80038 	lw	t8,56(sp)
 414:	3c040000 	lui	a0,0x0
 418:	24846578 	addiu	a0,a0,25976
 41c:	13000004 	beqz	t8,430 <DmaMgr_DmaCallback0+0x58>
 420:	3c050000 	lui	a1,0x0
 424:	24a56590 	addiu	a1,a1,26000
 428:	0c000000 	jal	0 <DmaMgr_CompareName>
 42c:	24060213 	li	a2,531
 430:	8fb90034 	lw	t9,52(sp)
 434:	3c040000 	lui	a0,0x0
 438:	248465a0 	addiu	a0,a0,26016
 43c:	17200004 	bnez	t9,450 <DmaMgr_DmaCallback0+0x78>
 440:	3c050000 	lui	a1,0x0
 444:	24a565ac 	addiu	a1,a1,26028
 448:	0c000000 	jal	0 <DmaMgr_CompareName>
 44c:	24060214 	li	a2,532
 450:	3c080000 	lui	t0,0x0
 454:	8d080000 	lw	t0,0(t0)
 458:	2401000a 	li	at,10
 45c:	5501001d 	bnel	t0,at,4d4 <DmaMgr_DmaCallback0+0xfc>
 460:	8fa40030 	lw	a0,48(sp)
 464:	0c000000 	jal	0 <DmaMgr_CompareName>
 468:	00000000 	nop
 46c:	00402025 	move	a0,v0
 470:	00602825 	move	a1,v1
 474:	24060000 	li	a2,0
 478:	0c000000 	jal	0 <DmaMgr_CompareName>
 47c:	24070040 	li	a3,64
 480:	00402025 	move	a0,v0
 484:	00602825 	move	a1,v1
 488:	24060000 	li	a2,0
 48c:	0c000000 	jal	0 <DmaMgr_CompareName>
 490:	24070bb8 	li	a3,3000
 494:	8fa90034 	lw	t1,52(sp)
 498:	3c0d0000 	lui	t5,0x0
 49c:	8dad0008 	lw	t5,8(t5)
 4a0:	8d2a0008 	lw	t2,8(t1)
 4a4:	3c040000 	lui	a0,0x0
 4a8:	248465bc 	addiu	a0,a0,26044
 4ac:	afaa0010 	sw	t2,16(sp)
 4b0:	8d2b000c 	lw	t3,12(t1)
 4b4:	00403025 	move	a2,v0
 4b8:	00603825 	move	a3,v1
 4bc:	afab0014 	sw	t3,20(sp)
 4c0:	8d2c0010 	lw	t4,16(t1)
 4c4:	afad001c 	sw	t5,28(sp)
 4c8:	0c000000 	jal	0 <DmaMgr_CompareName>
 4cc:	afac0018 	sw	t4,24(sp)
 4d0:	8fa40030 	lw	a0,48(sp)
 4d4:	8fa50034 	lw	a1,52(sp)
 4d8:	0c000000 	jal	0 <DmaMgr_CompareName>
 4dc:	8fa60038 	lw	a2,56(sp)
 4e0:	10400006 	beqz	v0,4fc <DmaMgr_DmaCallback0+0x124>
 4e4:	00402825 	move	a1,v0
 4e8:	3c040000 	lui	a0,0x0
 4ec:	248465e8 	addiu	a0,a0,26088
 4f0:	0c000000 	jal	0 <DmaMgr_CompareName>
 4f4:	afa2002c 	sw	v0,44(sp)
 4f8:	8fa5002c 	lw	a1,44(sp)
 4fc:	8fbf0024 	lw	ra,36(sp)
 500:	27bd0030 	addiu	sp,sp,48
 504:	00a01025 	move	v0,a1
 508:	03e00008 	jr	ra
 50c:	00000000 	nop

00000510 <DmaMgr_DmaCallback1>:
 510:	27bdffb0 	addiu	sp,sp,-80
 514:	afbf0014 	sw	ra,20(sp)
 518:	afa40050 	sw	a0,80(sp)
 51c:	afa50054 	sw	a1,84(sp)
 520:	0c000000 	jal	0 <DmaMgr_CompareName>
 524:	afa60058 	sw	a2,88(sp)
 528:	afa2004c 	sw	v0,76(sp)
 52c:	8fa40050 	lw	a0,80(sp)
 530:	0c000000 	jal	0 <DmaMgr_CompareName>
 534:	8fa50058 	lw	a1,88(sp)
 538:	8fa40050 	lw	a0,80(sp)
 53c:	0c000000 	jal	0 <DmaMgr_CompareName>
 540:	8fa50058 	lw	a1,88(sp)
 544:	27a40034 	addiu	a0,sp,52
 548:	27a50030 	addiu	a1,sp,48
 54c:	0c000000 	jal	0 <DmaMgr_CompareName>
 550:	24060001 	li	a2,1
 554:	8faf0054 	lw	t7,84(sp)
 558:	8fb80050 	lw	t8,80(sp)
 55c:	8fb90058 	lw	t9,88(sp)
 560:	8fa4004c 	lw	a0,76(sp)
 564:	27ae0034 	addiu	t6,sp,52
 568:	afae001c 	sw	t6,28(sp)
 56c:	a3a0001a 	sb	zero,26(sp)
 570:	24080002 	li	t0,2
 574:	afaf0024 	sw	t7,36(sp)
 578:	afb80020 	sw	t8,32(sp)
 57c:	afb90028 	sw	t9,40(sp)
 580:	27a50018 	addiu	a1,sp,24
 584:	00003025 	move	a2,zero
 588:	0c000000 	jal	0 <DmaMgr_CompareName>
 58c:	ac880014 	sw	t0,20(a0)
 590:	27a40034 	addiu	a0,sp,52
 594:	00002825 	move	a1,zero
 598:	0c000000 	jal	0 <DmaMgr_CompareName>
 59c:	24060001 	li	a2,1
 5a0:	8fbf0014 	lw	ra,20(sp)
 5a4:	27bd0050 	addiu	sp,sp,80
 5a8:	03e00008 	jr	ra
 5ac:	00000000 	nop

000005b0 <DmaMgr_Error>:
 5b0:	27bdff20 	addiu	sp,sp,-224
 5b4:	afbf001c 	sw	ra,28(sp)
 5b8:	afa400e0 	sw	a0,224(sp)
 5bc:	afa500e4 	sw	a1,228(sp)
 5c0:	afa600e8 	sw	a2,232(sp)
 5c4:	afa700ec 	sw	a3,236(sp)
 5c8:	8c8f0000 	lw	t7,0(a0)
 5cc:	24050007 	li	a1,7
 5d0:	afaf00dc 	sw	t7,220(sp)
 5d4:	8c980004 	lw	t8,4(a0)
 5d8:	afb800d8 	sw	t8,216(sp)
 5dc:	8c990008 	lw	t9,8(a0)
 5e0:	3c040000 	lui	a0,0x0
 5e4:	248465f0 	addiu	a0,a0,26096
 5e8:	0c000000 	jal	0 <DmaMgr_CompareName>
 5ec:	afb900d4 	sw	t9,212(sp)
 5f0:	3c040000 	lui	a0,0x0
 5f4:	0c000000 	jal	0 <DmaMgr_CompareName>
 5f8:	248465f4 	addiu	a0,a0,26100
 5fc:	8fa200ec 	lw	v0,236(sp)
 600:	3c040000 	lui	a0,0x0
 604:	248465fc 	addiu	a0,a0,26108
 608:	10400003 	beqz	v0,618 <DmaMgr_Error+0x68>
 60c:	8fa800e8 	lw	t0,232(sp)
 610:	10000007 	b	630 <DmaMgr_Error+0x80>
 614:	00402825 	move	a1,v0
 618:	11000003 	beqz	t0,628 <DmaMgr_Error+0x78>
 61c:	3c020000 	lui	v0,0x0
 620:	10000002 	b	62c <DmaMgr_Error+0x7c>
 624:	01001025 	move	v0,t0
 628:	2442662c 	addiu	v0,v0,26156
 62c:	00402825 	move	a1,v0
 630:	8fa200e4 	lw	v0,228(sp)
 634:	3c060000 	lui	a2,0x0
 638:	24c66630 	addiu	a2,a2,26160
 63c:	50400004 	beqzl	v0,650 <DmaMgr_Error+0xa0>
 640:	afa60030 	sw	a2,48(sp)
 644:	10000002 	b	650 <DmaMgr_Error+0xa0>
 648:	afa20030 	sw	v0,48(sp)
 64c:	afa60030 	sw	a2,48(sp)
 650:	8fa900d4 	lw	t1,212(sp)
 654:	8faa0030 	lw	t2,48(sp)
 658:	8fa600dc 	lw	a2,220(sp)
 65c:	8fa700d8 	lw	a3,216(sp)
 660:	afa90010 	sw	t1,16(sp)
 664:	0c000000 	jal	0 <DmaMgr_CompareName>
 668:	afaa0014 	sw	t2,20(sp)
 66c:	8fab00e0 	lw	t3,224(sp)
 670:	3c040000 	lui	a0,0x0
 674:	24846634 	addiu	a0,a0,26164
 678:	8d65000c 	lw	a1,12(t3)
 67c:	10a00005 	beqz	a1,694 <DmaMgr_Error+0xe4>
 680:	00000000 	nop
 684:	0c000000 	jal	0 <DmaMgr_CompareName>
 688:	8d660010 	lw	a2,16(t3)
 68c:	10000009 	b	6b4 <DmaMgr_Error+0x104>
 690:	00000000 	nop
 694:	3c050000 	lui	a1,0x0
 698:	8ca50000 	lw	a1,0(a1)
 69c:	3c040000 	lui	a0,0x0
 6a0:	24846648 	addiu	a0,a0,26184
 6a4:	10a00003 	beqz	a1,6b4 <DmaMgr_Error+0x104>
 6a8:	3c060000 	lui	a2,0x0
 6ac:	0c000000 	jal	0 <DmaMgr_CompareName>
 6b0:	8cc60000 	lw	a2,0(a2)
 6b4:	3c040000 	lui	a0,0x0
 6b8:	0c000000 	jal	0 <DmaMgr_CompareName>
 6bc:	2484665c 	addiu	a0,a0,26204
 6c0:	8fac00e0 	lw	t4,224(sp)
 6c4:	3c050000 	lui	a1,0x0
 6c8:	24a56660 	addiu	a1,a1,26208
 6cc:	8d86000c 	lw	a2,12(t4)
 6d0:	27a40084 	addiu	a0,sp,132
 6d4:	10c00005 	beqz	a2,6ec <DmaMgr_Error+0x13c>
 6d8:	00000000 	nop
 6dc:	0c000000 	jal	0 <DmaMgr_CompareName>
 6e0:	8d870010 	lw	a3,16(t4)
 6e4:	10000017 	b	744 <DmaMgr_Error+0x194>
 6e8:	8fad00e4 	lw	t5,228(sp)
 6ec:	3c060000 	lui	a2,0x0
 6f0:	8cc60000 	lw	a2,0(a2)
 6f4:	8fa200e8 	lw	v0,232(sp)
 6f8:	27a40084 	addiu	a0,sp,132
 6fc:	10c00009 	beqz	a2,724 <DmaMgr_Error+0x174>
 700:	3c050000 	lui	a1,0x0
 704:	3c050000 	lui	a1,0x0
 708:	3c070000 	lui	a3,0x0
 70c:	8ce70000 	lw	a3,0(a3)
 710:	24a56674 	addiu	a1,a1,26228
 714:	0c000000 	jal	0 <DmaMgr_CompareName>
 718:	27a40084 	addiu	a0,sp,132
 71c:	10000009 	b	744 <DmaMgr_Error+0x194>
 720:	8fad00e4 	lw	t5,228(sp)
 724:	10400003 	beqz	v0,734 <DmaMgr_Error+0x184>
 728:	3c060000 	lui	a2,0x0
 72c:	10000002 	b	738 <DmaMgr_Error+0x188>
 730:	00403025 	move	a2,v0
 734:	24c66698 	addiu	a2,a2,26264
 738:	0c000000 	jal	0 <DmaMgr_CompareName>
 73c:	24a56688 	addiu	a1,a1,26248
 740:	8fad00e4 	lw	t5,228(sp)
 744:	3c050000 	lui	a1,0x0
 748:	24a5669c 	addiu	a1,a1,26268
 74c:	11a00003 	beqz	t5,75c <DmaMgr_Error+0x1ac>
 750:	27a40034 	addiu	a0,sp,52
 754:	10000004 	b	768 <DmaMgr_Error+0x1b8>
 758:	afad0030 	sw	t5,48(sp)
 75c:	3c060000 	lui	a2,0x0
 760:	24c666ac 	addiu	a2,a2,26284
 764:	afa60030 	sw	a2,48(sp)
 768:	8faf00d4 	lw	t7,212(sp)
 76c:	8fb80030 	lw	t8,48(sp)
 770:	8fa600dc 	lw	a2,220(sp)
 774:	8fa700d8 	lw	a3,216(sp)
 778:	afaf0010 	sw	t7,16(sp)
 77c:	0c000000 	jal	0 <DmaMgr_CompareName>
 780:	afb80014 	sw	t8,20(sp)
 784:	27a40084 	addiu	a0,sp,132
 788:	0c000000 	jal	0 <DmaMgr_CompareName>
 78c:	27a50034 	addiu	a1,sp,52
 790:	8fbf001c 	lw	ra,28(sp)
 794:	27bd00e0 	addiu	sp,sp,224
 798:	03e00008 	jr	ra
 79c:	00000000 	nop

000007a0 <DmaMgr_GetFileNameImpl>:
 7a0:	3c050000 	lui	a1,0x0
 7a4:	24a20000 	addiu	v0,a1,0
 7a8:	8c4e0004 	lw	t6,4(v0)
 7ac:	3c030000 	lui	v1,0x0
 7b0:	24630000 	addiu	v1,v1,0
 7b4:	11c00010 	beqz	t6,7f8 <DmaMgr_GetFileNameImpl+0x58>
 7b8:	00000000 	nop
 7bc:	8c4f0000 	lw	t7,0(v0)
 7c0:	008f082b 	sltu	at,a0,t7
 7c4:	54200008 	bnezl	at,7e8 <DmaMgr_GetFileNameImpl+0x48>
 7c8:	8c590014 	lw	t9,20(v0)
 7cc:	8c580004 	lw	t8,4(v0)
 7d0:	0098082b 	sltu	at,a0,t8
 7d4:	50200004 	beqzl	at,7e8 <DmaMgr_GetFileNameImpl+0x48>
 7d8:	8c590014 	lw	t9,20(v0)
 7dc:	03e00008 	jr	ra
 7e0:	8c620000 	lw	v0,0(v1)
 7e4:	8c590014 	lw	t9,20(v0)
 7e8:	24420010 	addiu	v0,v0,16
 7ec:	24630004 	addiu	v1,v1,4
 7f0:	5720fff3 	bnezl	t9,7c0 <DmaMgr_GetFileNameImpl+0x20>
 7f4:	8c4f0000 	lw	t7,0(v0)
 7f8:	03e00008 	jr	ra
 7fc:	00000000 	nop

00000800 <DmaMgr_GetFileName>:
 800:	27bdffe0 	addiu	sp,sp,-32
 804:	afbf0014 	sw	ra,20(sp)
 808:	0c000000 	jal	0 <DmaMgr_CompareName>
 80c:	00000000 	nop
 810:	14400004 	bnez	v0,824 <DmaMgr_GetFileName+0x24>
 814:	00402025 	move	a0,v0
 818:	3c020000 	lui	v0,0x0
 81c:	1000000f 	b	85c <DmaMgr_GetFileName+0x5c>
 820:	244266b0 	addiu	v0,v0,26288
 824:	3c050000 	lui	a1,0x0
 828:	24a566bc 	addiu	a1,a1,26300
 82c:	0c000000 	jal	0 <DmaMgr_CompareName>
 830:	afa4001c 	sw	a0,28(sp)
 834:	10400006 	beqz	v0,850 <DmaMgr_GetFileName+0x50>
 838:	8fa4001c 	lw	a0,28(sp)
 83c:	3c050000 	lui	a1,0x0
 840:	0c000000 	jal	0 <DmaMgr_CompareName>
 844:	24a566c4 	addiu	a1,a1,26308
 848:	54400004 	bnezl	v0,85c <DmaMgr_GetFileName+0x5c>
 84c:	8fa2001c 	lw	v0,28(sp)
 850:	10000002 	b	85c <DmaMgr_GetFileName+0x5c>
 854:	00001025 	move	v0,zero
 858:	8fa2001c 	lw	v0,28(sp)
 85c:	8fbf0014 	lw	ra,20(sp)
 860:	27bd0020 	addiu	sp,sp,32
 864:	03e00008 	jr	ra
 868:	00000000 	nop

0000086c <DmaMgr_ProcessMsg>:
 86c:	27bdffc0 	addiu	sp,sp,-64
 870:	afbf001c 	sw	ra,28(sp)
 874:	afb00018 	sw	s0,24(sp)
 878:	8c8e0004 	lw	t6,4(a0)
 87c:	8c900000 	lw	s0,0(a0)
 880:	00803025 	move	a2,a0
 884:	afae0038 	sw	t6,56(sp)
 888:	8c8f0008 	lw	t7,8(a0)
 88c:	afa60040 	sw	a2,64(sp)
 890:	a3a0002b 	sb	zero,43(sp)
 894:	02002025 	move	a0,s0
 898:	0c000000 	jal	0 <DmaMgr_CompareName>
 89c:	afaf0034 	sw	t7,52(sp)
 8a0:	3c040000 	lui	a0,0x0
 8a4:	24830000 	addiu	v1,a0,0
 8a8:	afa20020 	sw	v0,32(sp)
 8ac:	8c780004 	lw	t8,4(v1)
 8b0:	93a5002b 	lbu	a1,43(sp)
 8b4:	1300004b 	beqz	t8,9e4 <DmaMgr_ProcessMsg+0x178>
 8b8:	00000000 	nop
 8bc:	8c670000 	lw	a3,0(v1)
 8c0:	0207082b 	sltu	at,s0,a3
 8c4:	54200044 	bnezl	at,9d8 <DmaMgr_ProcessMsg+0x16c>
 8c8:	8c6e0014 	lw	t6,20(v1)
 8cc:	8c620004 	lw	v0,4(v1)
 8d0:	0202082b 	sltu	at,s0,v0
 8d4:	50200040 	beqzl	at,9d8 <DmaMgr_ProcessMsg+0x16c>
 8d8:	8c6e0014 	lw	t6,20(v1)
 8dc:	8c65000c 	lw	a1,12(v1)
 8e0:	8fb90034 	lw	t9,52(sp)
 8e4:	14a00015 	bnez	a1,93c <DmaMgr_ProcessMsg+0xd0>
 8e8:	02194021 	addu	t0,s0,t9
 8ec:	0048082b 	sltu	at,v0,t0
 8f0:	1020000a 	beqz	at,91c <DmaMgr_ProcessMsg+0xb0>
 8f4:	8fa40040 	lw	a0,64(sp)
 8f8:	3c060000 	lui	a2,0x0
 8fc:	3c070000 	lui	a3,0x0
 900:	24e76710 	addiu	a3,a3,26384
 904:	24c666f8 	addiu	a2,a2,26360
 908:	8fa50020 	lw	a1,32(sp)
 90c:	0c000000 	jal	0 <DmaMgr_CompareName>
 910:	afa30024 	sw	v1,36(sp)
 914:	8fa30024 	lw	v1,36(sp)
 918:	8c670000 	lw	a3,0(v1)
 91c:	8c690008 	lw	t1,8(v1)
 920:	8fa50038 	lw	a1,56(sp)
 924:	8fa60034 	lw	a2,52(sp)
 928:	01305021 	addu	t2,t1,s0
 92c:	0c000000 	jal	0 <DmaMgr_CompareName>
 930:	01472023 	subu	a0,t2,a3
 934:	1000002b 	b	9e4 <DmaMgr_ProcessMsg+0x178>
 938:	24050001 	li	a1,1
 93c:	8c640008 	lw	a0,8(v1)
 940:	3c060000 	lui	a2,0x0
 944:	24c66774 	addiu	a2,a2,26484
 948:	00a45823 	subu	t3,a1,a0
 94c:	afab002c 	sw	t3,44(sp)
 950:	1207000a 	beq	s0,a3,97c <DmaMgr_ProcessMsg+0x110>
 954:	afa40030 	sw	a0,48(sp)
 958:	3c070000 	lui	a3,0x0
 95c:	24e7678c 	addiu	a3,a3,26508
 960:	8fa40040 	lw	a0,64(sp)
 964:	8fa50020 	lw	a1,32(sp)
 968:	0c000000 	jal	0 <DmaMgr_CompareName>
 96c:	afa30024 	sw	v1,36(sp)
 970:	8fa30024 	lw	v1,36(sp)
 974:	8c670000 	lw	a3,0(v1)
 978:	8c620004 	lw	v0,4(v1)
 97c:	8fac0034 	lw	t4,52(sp)
 980:	00476823 	subu	t5,v0,a3
 984:	8fa40040 	lw	a0,64(sp)
 988:	118d0006 	beq	t4,t5,9a4 <DmaMgr_ProcessMsg+0x138>
 98c:	8fa50020 	lw	a1,32(sp)
 990:	3c060000 	lui	a2,0x0
 994:	3c070000 	lui	a3,0x0
 998:	24e767e4 	addiu	a3,a3,26596
 99c:	0c000000 	jal	0 <DmaMgr_CompareName>
 9a0:	24c667cc 	addiu	a2,a2,26572
 9a4:	00002025 	move	a0,zero
 9a8:	0c000000 	jal	0 <DmaMgr_CompareName>
 9ac:	2405000a 	li	a1,10
 9b0:	8fa40030 	lw	a0,48(sp)
 9b4:	8fa50038 	lw	a1,56(sp)
 9b8:	0c000000 	jal	0 <DmaMgr_CompareName>
 9bc:	8fa6002c 	lw	a2,44(sp)
 9c0:	00002025 	move	a0,zero
 9c4:	0c000000 	jal	0 <DmaMgr_CompareName>
 9c8:	24050010 	li	a1,16
 9cc:	10000005 	b	9e4 <DmaMgr_ProcessMsg+0x178>
 9d0:	24050001 	li	a1,1
 9d4:	8c6e0014 	lw	t6,20(v1)
 9d8:	24630010 	addiu	v1,v1,16
 9dc:	55c0ffb8 	bnezl	t6,8c0 <DmaMgr_ProcessMsg+0x54>
 9e0:	8c670000 	lw	a3,0(v1)
 9e4:	14a00010 	bnez	a1,a28 <DmaMgr_ProcessMsg+0x1bc>
 9e8:	3c0f0000 	lui	t7,0x0
 9ec:	8def0000 	lw	t7,0(t7)
 9f0:	3c060000 	lui	a2,0x0
 9f4:	02002025 	move	a0,s0
 9f8:	11e00009 	beqz	t7,a20 <DmaMgr_ProcessMsg+0x1b4>
 9fc:	8fa50038 	lw	a1,56(sp)
 a00:	3c070000 	lui	a3,0x0
 a04:	24e76858 	addiu	a3,a3,26712
 a08:	8fa40040 	lw	a0,64(sp)
 a0c:	00002825 	move	a1,zero
 a10:	0c000000 	jal	0 <DmaMgr_CompareName>
 a14:	24c66844 	addiu	a2,a2,26692
 a18:	10000004 	b	a2c <DmaMgr_ProcessMsg+0x1c0>
 a1c:	8fbf001c 	lw	ra,28(sp)
 a20:	0c000000 	jal	0 <DmaMgr_CompareName>
 a24:	8fa60034 	lw	a2,52(sp)
 a28:	8fbf001c 	lw	ra,28(sp)
 a2c:	8fb00018 	lw	s0,24(sp)
 a30:	27bd0040 	addiu	sp,sp,64
 a34:	03e00008 	jr	ra
 a38:	00000000 	nop

00000a3c <DmaMgr_ThreadEntry>:
 a3c:	27bdffc8 	addiu	sp,sp,-56
 a40:	afa40038 	sw	a0,56(sp)
 a44:	afbf0024 	sw	ra,36(sp)
 a48:	3c040000 	lui	a0,0x0
 a4c:	afb20020 	sw	s2,32(sp)
 a50:	afb1001c 	sw	s1,28(sp)
 a54:	afb00018 	sw	s0,24(sp)
 a58:	0c000000 	jal	0 <DmaMgr_CompareName>
 a5c:	248468a8 	addiu	a0,a0,26792
 a60:	3c110000 	lui	s1,0x0
 a64:	26310000 	addiu	s1,s1,0
 a68:	27b20034 	addiu	s2,sp,52
 a6c:	02202025 	move	a0,s1
 a70:	02402825 	move	a1,s2
 a74:	0c000000 	jal	0 <DmaMgr_CompareName>
 a78:	24060001 	li	a2,1
 a7c:	8fa20034 	lw	v0,52(sp)
 a80:	1040000b 	beqz	v0,ab0 <DmaMgr_ThreadEntry+0x74>
 a84:	00408025 	move	s0,v0
 a88:	0c000000 	jal	0 <DmaMgr_CompareName>
 a8c:	00402025 	move	a0,v0
 a90:	8e040018 	lw	a0,24(s0)
 a94:	5080fff6 	beqzl	a0,a70 <DmaMgr_ThreadEntry+0x34>
 a98:	02202025 	move	a0,s1
 a9c:	8e05001c 	lw	a1,28(s0)
 aa0:	0c000000 	jal	0 <DmaMgr_CompareName>
 aa4:	00003025 	move	a2,zero
 aa8:	1000fff1 	b	a70 <DmaMgr_ThreadEntry+0x34>
 aac:	02202025 	move	a0,s1
 ab0:	3c040000 	lui	a0,0x0
 ab4:	0c000000 	jal	0 <DmaMgr_CompareName>
 ab8:	24846914 	addiu	a0,a0,26900
 abc:	8fbf0024 	lw	ra,36(sp)
 ac0:	8fb00018 	lw	s0,24(sp)
 ac4:	8fb1001c 	lw	s1,28(sp)
 ac8:	8fb20020 	lw	s2,32(sp)
 acc:	03e00008 	jr	ra
 ad0:	27bd0038 	addiu	sp,sp,56

00000ad4 <DmaMgr_SendRequestImpl>:
 ad4:	27bdffe0 	addiu	sp,sp,-32
 ad8:	afb00018 	sw	s0,24(sp)
 adc:	00808025 	move	s0,a0
 ae0:	afbf001c 	sw	ra,28(sp)
 ae4:	afa50024 	sw	a1,36(sp)
 ae8:	afa60028 	sw	a2,40(sp)
 aec:	10a00012 	beqz	a1,b38 <DmaMgr_SendRequestImpl+0x64>
 af0:	afa7002c 	sw	a3,44(sp)
 af4:	3c0f0000 	lui	t7,0x0
 af8:	8def0000 	lw	t7,0(t7)
 afc:	00a74021 	addu	t0,a1,a3
 b00:	3c018000 	lui	at,0x8000
 b04:	01014821 	addu	t1,t0,at
 b08:	01e9082b 	sltu	at,t7,t1
 b0c:	1420000a 	bnez	at,b38 <DmaMgr_SendRequestImpl+0x64>
 b10:	30cb0001 	andi	t3,a2,0x1
 b14:	15600008 	bnez	t3,b38 <DmaMgr_SendRequestImpl+0x64>
 b18:	3c010400 	lui	at,0x400
 b1c:	34210001 	ori	at,at,0x1
 b20:	00c1082b 	sltu	at,a2,at
 b24:	10200004 	beqz	at,b38 <DmaMgr_SendRequestImpl+0x64>
 b28:	00000000 	nop
 b2c:	10e00002 	beqz	a3,b38 <DmaMgr_SendRequestImpl+0x64>
 b30:	30ec0001 	andi	t4,a3,0x1
 b34:	11800007 	beqz	t4,b54 <DmaMgr_SendRequestImpl+0x80>
 b38:	3c060000 	lui	a2,0x0
 b3c:	3c070000 	lui	a3,0x0
 b40:	24e76954 	addiu	a3,a3,26964
 b44:	24c66938 	addiu	a2,a2,26936
 b48:	02002025 	move	a0,s0
 b4c:	0c000000 	jal	0 <DmaMgr_CompareName>
 b50:	00002825 	move	a1,zero
 b54:	8fad0028 	lw	t5,40(sp)
 b58:	3c020000 	lui	v0,0x0
 b5c:	3c070000 	lui	a3,0x0
 b60:	ae0d0000 	sw	t5,0(s0)
 b64:	8fae0024 	lw	t6,36(sp)
 b68:	24e70000 	addiu	a3,a3,0
 b6c:	ae0e0004 	sw	t6,4(s0)
 b70:	8fb8002c 	lw	t8,44(sp)
 b74:	ae000014 	sw	zero,20(s0)
 b78:	ae180008 	sw	t8,8(s0)
 b7c:	8fa80034 	lw	t0,52(sp)
 b80:	ae080018 	sw	t0,24(s0)
 b84:	8faf0038 	lw	t7,56(sp)
 b88:	ae0f001c 	sw	t7,28(s0)
 b8c:	8c4217fc 	lw	v0,6140(v0)
 b90:	1440001d 	bnez	v0,c08 <DmaMgr_SendRequestImpl+0x134>
 b94:	00000000 	nop
 b98:	8ce90008 	lw	t1,8(a3)
 b9c:	8ceb0010 	lw	t3,16(a3)
 ba0:	3c040000 	lui	a0,0x0
 ba4:	24420001 	addiu	v0,v0,1
 ba8:	012b082a 	slt	at,t1,t3
 bac:	14200016 	bnez	at,c08 <DmaMgr_SendRequestImpl+0x134>
 bb0:	24846968 	addiu	a0,a0,26984
 bb4:	3c010000 	lui	at,0x0
 bb8:	ac2217fc 	sw	v0,6140(at)
 bbc:	0c000000 	jal	0 <DmaMgr_CompareName>
 bc0:	24050007 	li	a1,7
 bc4:	3c040000 	lui	a0,0x0
 bc8:	0c000000 	jal	0 <DmaMgr_CompareName>
 bcc:	2484696c 	addiu	a0,a0,26988
 bd0:	3c040000 	lui	a0,0x0
 bd4:	0c000000 	jal	0 <DmaMgr_CompareName>
 bd8:	24846974 	addiu	a0,a0,26996
 bdc:	3c040000 	lui	a0,0x0
 be0:	248469b4 	addiu	a0,a0,27060
 be4:	0c000000 	jal	0 <DmaMgr_CompareName>
 be8:	240503b8 	li	a1,952
 bec:	3c040000 	lui	a0,0x0
 bf0:	248469c4 	addiu	a0,a0,27076
 bf4:	0c000000 	jal	0 <DmaMgr_CompareName>
 bf8:	24050020 	li	a1,32
 bfc:	3c040000 	lui	a0,0x0
 c00:	0c000000 	jal	0 <DmaMgr_CompareName>
 c04:	24846a04 	addiu	a0,a0,27140
 c08:	3c070000 	lui	a3,0x0
 c0c:	24e40000 	addiu	a0,a3,0
 c10:	02002825 	move	a1,s0
 c14:	0c000000 	jal	0 <DmaMgr_CompareName>
 c18:	24060001 	li	a2,1
 c1c:	8fbf001c 	lw	ra,28(sp)
 c20:	8fb00018 	lw	s0,24(sp)
 c24:	27bd0020 	addiu	sp,sp,32
 c28:	03e00008 	jr	ra
 c2c:	00001025 	move	v0,zero

00000c30 <DmaMgr_SendRequest0>:
 c30:	27bdff98 	addiu	sp,sp,-104
 c34:	afbf0024 	sw	ra,36(sp)
 c38:	afa40068 	sw	a0,104(sp)
 c3c:	afa5006c 	sw	a1,108(sp)
 c40:	afa60070 	sw	a2,112(sp)
 c44:	24060001 	li	a2,1
 c48:	27a5002c 	addiu	a1,sp,44
 c4c:	0c000000 	jal	0 <DmaMgr_CompareName>
 c50:	27a40030 	addiu	a0,sp,48
 c54:	27ae0030 	addiu	t6,sp,48
 c58:	afae0014 	sw	t6,20(sp)
 c5c:	27a40048 	addiu	a0,sp,72
 c60:	8fa50068 	lw	a1,104(sp)
 c64:	8fa6006c 	lw	a2,108(sp)
 c68:	8fa70070 	lw	a3,112(sp)
 c6c:	afa00010 	sw	zero,16(sp)
 c70:	0c000000 	jal	0 <DmaMgr_CompareName>
 c74:	afa00018 	sw	zero,24(sp)
 c78:	2401ffff 	li	at,-1
 c7c:	14410003 	bne	v0,at,c8c <DmaMgr_SendRequest0+0x5c>
 c80:	27a40030 	addiu	a0,sp,48
 c84:	10000006 	b	ca0 <DmaMgr_SendRequest0+0x70>
 c88:	8fbf0024 	lw	ra,36(sp)
 c8c:	00002825 	move	a1,zero
 c90:	0c000000 	jal	0 <DmaMgr_CompareName>
 c94:	24060001 	li	a2,1
 c98:	00001025 	move	v0,zero
 c9c:	8fbf0024 	lw	ra,36(sp)
 ca0:	27bd0068 	addiu	sp,sp,104
 ca4:	03e00008 	jr	ra
 ca8:	00000000 	nop

00000cac <DmaMgr_Init>:
 cac:	27bdffb0 	addiu	sp,sp,-80
 cb0:	3c020000 	lui	v0,0x0
 cb4:	3c0e0000 	lui	t6,0x0
 cb8:	24440000 	addiu	a0,v0,0
 cbc:	afbf004c 	sw	ra,76(sp)
 cc0:	25ce0000 	addiu	t6,t6,0
 cc4:	3c050000 	lui	a1,0x0
 cc8:	afb70048 	sw	s7,72(sp)
 ccc:	afb60044 	sw	s6,68(sp)
 cd0:	afb50040 	sw	s5,64(sp)
 cd4:	afb4003c 	sw	s4,60(sp)
 cd8:	afb30038 	sw	s3,56(sp)
 cdc:	afb20034 	sw	s2,52(sp)
 ce0:	afb10030 	sw	s1,48(sp)
 ce4:	afb0002c 	sw	s0,44(sp)
 ce8:	24a50000 	addiu	a1,a1,0
 cec:	0c000000 	jal	0 <DmaMgr_CompareName>
 cf0:	01c43023 	subu	a2,t6,a0
 cf4:	3c040000 	lui	a0,0x0
 cf8:	0c000000 	jal	0 <DmaMgr_CompareName>
 cfc:	24846a08 	addiu	a0,a0,27144
 d00:	3c130000 	lui	s3,0x0
 d04:	26730000 	addiu	s3,s3,0
 d08:	3c020000 	lui	v0,0x0
 d0c:	24500000 	addiu	s0,v0,0
 d10:	ae600000 	sw	zero,0(s3)
 d14:	8e060004 	lw	a2,4(s0)
 d18:	3c110000 	lui	s1,0x0
 d1c:	26310000 	addiu	s1,s1,0
 d20:	10c00034 	beqz	a2,df4 <DmaMgr_Init+0x148>
 d24:	00009025 	move	s2,zero
 d28:	3c170000 	lui	s7,0x0
 d2c:	3c160000 	lui	s6,0x0
 d30:	3c150001 	lui	s5,0x1
 d34:	36b50001 	ori	s5,s5,0x1
 d38:	26d66a18 	addiu	s6,s6,27160
 d3c:	26f76a3c 	addiu	s7,s7,27196
 d40:	24140001 	li	s4,1
 d44:	8e02000c 	lw	v0,12(s0)
 d48:	02c02025 	move	a0,s6
 d4c:	02402825 	move	a1,s2
 d50:	10400003 	beqz	v0,d60 <DmaMgr_Init+0xb4>
 d54:	00001825 	move	v1,zero
 d58:	ae740000 	sw	s4,0(s3)
 d5c:	8e02000c 	lw	v0,12(s0)
 d60:	10400005 	beqz	v0,d78 <DmaMgr_Init+0xcc>
 d64:	8e070004 	lw	a3,4(s0)
 d68:	8e080008 	lw	t0,8(s0)
 d6c:	8e060000 	lw	a2,0(s0)
 d70:	10000004 	b	d84 <DmaMgr_Init+0xd8>
 d74:	00485023 	subu	t2,v0,t0
 d78:	8e060000 	lw	a2,0(s0)
 d7c:	8e080008 	lw	t0,8(s0)
 d80:	00e65023 	subu	t2,a3,a2
 d84:	10400003 	beqz	v0,d94 <DmaMgr_Init+0xe8>
 d88:	24090020 	li	t1,32
 d8c:	10000001 	b	d94 <DmaMgr_Init+0xe8>
 d90:	00481823 	subu	v1,v0,t0
 d94:	0075082b 	sltu	at,v1,s5
 d98:	14200003 	bnez	at,da8 <DmaMgr_Init+0xfc>
 d9c:	02e01825 	move	v1,s7
 da0:	10000001 	b	da8 <DmaMgr_Init+0xfc>
 da4:	2409002a 	li	t1,42
 da8:	12200003 	beqz	s1,db8 <DmaMgr_Init+0x10c>
 dac:	00000000 	nop
 db0:	10000001 	b	db8 <DmaMgr_Init+0x10c>
 db4:	8e230000 	lw	v1,0(s1)
 db8:	afa80010 	sw	t0,16(sp)
 dbc:	afa20014 	sw	v0,20(sp)
 dc0:	afaa0018 	sw	t2,24(sp)
 dc4:	afa9001c 	sw	t1,28(sp)
 dc8:	0c000000 	jal	0 <DmaMgr_CompareName>
 dcc:	afa30020 	sw	v1,32(sp)
 dd0:	26520001 	addiu	s2,s2,1
 dd4:	12200002 	beqz	s1,de0 <DmaMgr_Init+0x134>
 dd8:	26100010 	addiu	s0,s0,16
 ddc:	26310004 	addiu	s1,s1,4
 de0:	8e0f0004 	lw	t7,4(s0)
 de4:	55e0ffd8 	bnezl	t7,d48 <DmaMgr_Init+0x9c>
 de8:	8e02000c 	lw	v0,12(s0)
 dec:	3c060000 	lui	a2,0x0
 df0:	8cc60004 	lw	a2,4(a2)
 df4:	3c050000 	lui	a1,0x0
 df8:	24a50000 	addiu	a1,a1,0
 dfc:	10a60007 	beq	a1,a2,e1c <DmaMgr_Init+0x170>
 e00:	3c040000 	lui	a0,0x0
 e04:	0c000000 	jal	0 <DmaMgr_CompareName>
 e08:	24846a40 	addiu	a0,a0,27200
 e0c:	3c040000 	lui	a0,0x0
 e10:	24846a7c 	addiu	a0,a0,27260
 e14:	0c000000 	jal	0 <DmaMgr_CompareName>
 e18:	2405041f 	li	a1,1055
 e1c:	3c040000 	lui	a0,0x0
 e20:	3c050000 	lui	a1,0x0
 e24:	24a50000 	addiu	a1,a1,0
 e28:	24840000 	addiu	a0,a0,0
 e2c:	0c000000 	jal	0 <DmaMgr_CompareName>
 e30:	24060020 	li	a2,32
 e34:	3c100000 	lui	s0,0x0
 e38:	3c190000 	lui	t9,0x0
 e3c:	26100500 	addiu	s0,s0,1280
 e40:	27396a8c 	addiu	t9,t9,27276
 e44:	3c040000 	lui	a0,0x0
 e48:	3c050000 	lui	a1,0x0
 e4c:	24180100 	li	t8,256
 e50:	afb80010 	sw	t8,16(sp)
 e54:	24a50000 	addiu	a1,a1,0
 e58:	24840000 	addiu	a0,a0,0
 e5c:	afb90014 	sw	t9,20(sp)
 e60:	02003025 	move	a2,s0
 e64:	0c000000 	jal	0 <DmaMgr_CompareName>
 e68:	00003825 	move	a3,zero
 e6c:	3c110000 	lui	s1,0x0
 e70:	26310000 	addiu	s1,s1,0
 e74:	3c060000 	lui	a2,0x0
 e78:	240b0010 	li	t3,16
 e7c:	afab0014 	sw	t3,20(sp)
 e80:	24c60000 	addiu	a2,a2,0
 e84:	02202025 	move	a0,s1
 e88:	24050012 	li	a1,18
 e8c:	00003825 	move	a3,zero
 e90:	0c000000 	jal	0 <DmaMgr_CompareName>
 e94:	afb00010 	sw	s0,16(sp)
 e98:	0c000000 	jal	0 <DmaMgr_CompareName>
 e9c:	02202025 	move	a0,s1
 ea0:	8fbf004c 	lw	ra,76(sp)
 ea4:	8fb0002c 	lw	s0,44(sp)
 ea8:	8fb10030 	lw	s1,48(sp)
 eac:	8fb20034 	lw	s2,52(sp)
 eb0:	8fb30038 	lw	s3,56(sp)
 eb4:	8fb4003c 	lw	s4,60(sp)
 eb8:	8fb50040 	lw	s5,64(sp)
 ebc:	8fb60044 	lw	s6,68(sp)
 ec0:	8fb70048 	lw	s7,72(sp)
 ec4:	03e00008 	jr	ra
 ec8:	27bd0050 	addiu	sp,sp,80

00000ecc <DmaMgr_SendRequest2>:
 ecc:	27bdffd8 	addiu	sp,sp,-40
 ed0:	8fae0044 	lw	t6,68(sp)
 ed4:	afbf0024 	sw	ra,36(sp)
 ed8:	ac8e000c 	sw	t6,12(a0)
 edc:	8faf0048 	lw	t7,72(sp)
 ee0:	ac8f0010 	sw	t7,16(a0)
 ee4:	8fa80040 	lw	t0,64(sp)
 ee8:	8fb9003c 	lw	t9,60(sp)
 eec:	8fb80038 	lw	t8,56(sp)
 ef0:	afa80018 	sw	t0,24(sp)
 ef4:	afb90014 	sw	t9,20(sp)
 ef8:	0c000000 	jal	0 <DmaMgr_CompareName>
 efc:	afb80010 	sw	t8,16(sp)
 f00:	8fbf0024 	lw	ra,36(sp)
 f04:	27bd0028 	addiu	sp,sp,40
 f08:	03e00008 	jr	ra
 f0c:	00000000 	nop

00000f10 <DmaMgr_SendRequest1>:
 f10:	27bdff90 	addiu	sp,sp,-112
 f14:	8fae0080 	lw	t6,128(sp)
 f18:	afbf0024 	sw	ra,36(sp)
 f1c:	afa40070 	sw	a0,112(sp)
 f20:	afa50074 	sw	a1,116(sp)
 f24:	afa60078 	sw	a2,120(sp)
 f28:	afa7005c 	sw	a3,92(sp)
 f2c:	24060001 	li	a2,1
 f30:	27a50030 	addiu	a1,sp,48
 f34:	27a40034 	addiu	a0,sp,52
 f38:	0c000000 	jal	0 <DmaMgr_CompareName>
 f3c:	afae0060 	sw	t6,96(sp)
 f40:	27af0034 	addiu	t7,sp,52
 f44:	afaf0014 	sw	t7,20(sp)
 f48:	27a40050 	addiu	a0,sp,80
 f4c:	8fa50070 	lw	a1,112(sp)
 f50:	8fa60074 	lw	a2,116(sp)
 f54:	8fa70078 	lw	a3,120(sp)
 f58:	afa00010 	sw	zero,16(sp)
 f5c:	0c000000 	jal	0 <DmaMgr_CompareName>
 f60:	afa00018 	sw	zero,24(sp)
 f64:	2401ffff 	li	at,-1
 f68:	14410003 	bne	v0,at,f78 <DmaMgr_SendRequest1+0x68>
 f6c:	27a40034 	addiu	a0,sp,52
 f70:	10000006 	b	f8c <DmaMgr_SendRequest1+0x7c>
 f74:	8fbf0024 	lw	ra,36(sp)
 f78:	00002825 	move	a1,zero
 f7c:	0c000000 	jal	0 <DmaMgr_CompareName>
 f80:	24060001 	li	a2,1
 f84:	00001025 	move	v0,zero
 f88:	8fbf0024 	lw	ra,36(sp)
 f8c:	27bd0070 	addiu	sp,sp,112
 f90:	03e00008 	jr	ra
 f94:	00000000 	nop
	...
