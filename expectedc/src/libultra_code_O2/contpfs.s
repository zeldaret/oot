
build/src/libultra_code_O2/contpfs.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osSumcalc>:
   0:	00001825 	move	v1,zero
   4:	00801025 	move	v0,a0
   8:	18a00016 	blez	a1,64 <__osSumcalc+0x64>
   c:	00003025 	move	a2,zero
  10:	30a70003 	andi	a3,a1,0x3
  14:	10e00008 	beqz	a3,38 <__osSumcalc+0x38>
  18:	00e02025 	move	a0,a3
  1c:	904e0000 	lbu	t6,0(v0)
  20:	24c60001 	addiu	a2,a2,1
  24:	24420001 	addiu	v0,v0,1
  28:	1486fffc 	bne	a0,a2,1c <__osSumcalc+0x1c>
  2c:	006e1821 	addu	v1,v1,t6
  30:	50c5000d 	beql	a2,a1,68 <__osSumcalc+0x68>
  34:	00601025 	move	v0,v1
  38:	904f0000 	lbu	t7,0(v0)
  3c:	90580001 	lbu	t8,1(v0)
  40:	90590002 	lbu	t9,2(v0)
  44:	006f1821 	addu	v1,v1,t7
  48:	90480003 	lbu	t0,3(v0)
  4c:	00781821 	addu	v1,v1,t8
  50:	24c60004 	addiu	a2,a2,4
  54:	00791821 	addu	v1,v1,t9
  58:	24420004 	addiu	v0,v0,4
  5c:	14c5fff6 	bne	a2,a1,38 <__osSumcalc+0x38>
  60:	00681821 	addu	v1,v1,t0
  64:	00601025 	move	v0,v1
  68:	3049ffff 	andi	t1,v0,0xffff
  6c:	03e00008 	jr	ra
  70:	01201025 	move	v0,t1

00000074 <__osIdCheckSum>:
  74:	a4c00000 	sh	zero,0(a2)
  78:	a4a00000 	sh	zero,0(a1)
  7c:	94820000 	lhu	v0,0(a0)
  80:	24870004 	addiu	a3,a0,4
  84:	24e90002 	addiu	t1,a3,2
  88:	0002c021 	addu	t8,zero,v0
  8c:	a4b80000 	sh	t8,0(a1)
  90:	94d90000 	lhu	t9,0(a2)
  94:	00406827 	nor	t5,v0,zero
  98:	24ea0004 	addiu	t2,a3,4
  9c:	032d7021 	addu	t6,t9,t5
  a0:	a4ce0000 	sh	t6,0(a2)
  a4:	94af0000 	lhu	t7,0(a1)
  a8:	94820002 	lhu	v0,2(a0)
  ac:	2404001c 	li	a0,28
  b0:	24eb0006 	addiu	t3,a3,6
  b4:	01e2c021 	addu	t8,t7,v0
  b8:	a4b80000 	sh	t8,0(a1)
  bc:	94d90000 	lhu	t9,0(a2)
  c0:	00406827 	nor	t5,v0,zero
  c4:	24030004 	li	v1,4
  c8:	032d7021 	addu	t6,t9,t5
  cc:	a4ce0000 	sh	t6,0(a2)
  d0:	94e20000 	lhu	v0,0(a3)
  d4:	94af0000 	lhu	t7,0(a1)
  d8:	24630008 	addiu	v1,v1,8
  dc:	00406827 	nor	t5,v0,zero
  e0:	01e2c021 	addu	t8,t7,v0
  e4:	a4b80000 	sh	t8,0(a1)
  e8:	94d90000 	lhu	t9,0(a2)
  ec:	24e70008 	addiu	a3,a3,8
  f0:	25290008 	addiu	t1,t1,8
  f4:	032d7021 	addu	t6,t9,t5
  f8:	a4ce0000 	sh	t6,0(a2)
  fc:	94af0000 	lhu	t7,0(a1)
 100:	9522fff8 	lhu	v0,-8(t1)
 104:	254a0008 	addiu	t2,t2,8
 108:	256b0008 	addiu	t3,t3,8
 10c:	01e2c021 	addu	t8,t7,v0
 110:	a4b80000 	sh	t8,0(a1)
 114:	94d90000 	lhu	t9,0(a2)
 118:	00406827 	nor	t5,v0,zero
 11c:	032d7021 	addu	t6,t9,t5
 120:	a4ce0000 	sh	t6,0(a2)
 124:	94af0000 	lhu	t7,0(a1)
 128:	9542fff8 	lhu	v0,-8(t2)
 12c:	01e2c021 	addu	t8,t7,v0
 130:	a4b80000 	sh	t8,0(a1)
 134:	94d90000 	lhu	t9,0(a2)
 138:	00406827 	nor	t5,v0,zero
 13c:	032d7021 	addu	t6,t9,t5
 140:	a4ce0000 	sh	t6,0(a2)
 144:	94af0000 	lhu	t7,0(a1)
 148:	9562fff8 	lhu	v0,-8(t3)
 14c:	01e2c021 	addu	t8,t7,v0
 150:	a4b80000 	sh	t8,0(a1)
 154:	94d90000 	lhu	t9,0(a2)
 158:	00406827 	nor	t5,v0,zero
 15c:	032d7021 	addu	t6,t9,t5
 160:	1464ffdb 	bne	v1,a0,d0 <__osIdCheckSum+0x5c>
 164:	a4ce0000 	sh	t6,0(a2)
 168:	03e00008 	jr	ra
 16c:	00001025 	move	v0,zero

00000170 <__osRepairPackId>:
 170:	27bdff60 	addiu	sp,sp,-160
 174:	afbf003c 	sw	ra,60(sp)
 178:	afb60038 	sw	s6,56(sp)
 17c:	afb50034 	sw	s5,52(sp)
 180:	afb40030 	sw	s4,48(sp)
 184:	afb3002c 	sw	s3,44(sp)
 188:	afb20028 	sw	s2,40(sp)
 18c:	afb10024 	sw	s1,36(sp)
 190:	afb00020 	sw	s0,32(sp)
 194:	240effff 	li	t6,-1
 198:	00809025 	move	s2,a0
 19c:	00c0a025 	move	s4,a2
 1a0:	00a0b025 	move	s6,a1
 1a4:	00009825 	move	s3,zero
 1a8:	0c000000 	jal	0 <__osSumcalc>
 1ac:	acce0000 	sw	t6,0(a2)
 1b0:	ae820004 	sw	v0,4(s4)
 1b4:	8ed9000c 	lw	t9,12(s6)
 1b8:	8ed80008 	lw	t8,8(s6)
 1bc:	02402025 	move	a0,s2
 1c0:	ae99000c 	sw	t9,12(s4)
 1c4:	ae980008 	sw	t8,8(s4)
 1c8:	8ec90014 	lw	t1,20(s6)
 1cc:	8ec80010 	lw	t0,16(s6)
 1d0:	ae890014 	sw	t1,20(s4)
 1d4:	ae880010 	sw	t0,16(s4)
 1d8:	924f0065 	lbu	t7,101(s2)
 1dc:	51e00008 	beqzl	t7,200 <__osRepairPackId+0x90>
 1e0:	27b1007c 	addiu	s1,sp,124
 1e4:	0c000000 	jal	0 <__osSumcalc>
 1e8:	00002825 	move	a1,zero
 1ec:	50400004 	beqzl	v0,200 <__osRepairPackId+0x90>
 1f0:	27b1007c 	addiu	s1,sp,124
 1f4:	100000a9 	b	49c <__osRepairPackId+0x32c>
 1f8:	8fbf003c 	lw	ra,60(sp)
 1fc:	27b1007c 	addiu	s1,sp,124
 200:	0220a825 	move	s5,s1
 204:	27b0009c 	addiu	s0,sp,156
 208:	02402025 	move	a0,s2
 20c:	0c000000 	jal	0 <__osSumcalc>
 210:	326500ff 	andi	a1,s3,0xff
 214:	10400003 	beqz	v0,224 <__osRepairPackId+0xb4>
 218:	00003025 	move	a2,zero
 21c:	1000009f 	b	49c <__osRepairPackId+0x32c>
 220:	8fbf003c 	lw	ra,60(sp)
 224:	8e440004 	lw	a0,4(s2)
 228:	8e450008 	lw	a1,8(s2)
 22c:	0c000000 	jal	0 <__osSumcalc>
 230:	02a03825 	move	a3,s5
 234:	10400003 	beqz	v0,244 <__osRepairPackId+0xd4>
 238:	366b0080 	ori	t3,s3,0x80
 23c:	10000097 	b	49c <__osRepairPackId+0x32c>
 240:	8fbf003c 	lw	ra,60(sp)
 244:	a3ab007c 	sb	t3,124(sp)
 248:	27a2007d 	addiu	v0,sp,125
 24c:	904c0000 	lbu	t4,0(v0)
 250:	24420001 	addiu	v0,v0,1
 254:	0050082b 	sltu	at,v0,s0
 258:	01806827 	nor	t5,t4,zero
 25c:	1420fffb 	bnez	at,24c <__osRepairPackId+0xdc>
 260:	a04dffff 	sb	t5,-1(v0)
 264:	8e440004 	lw	a0,4(s2)
 268:	8e450008 	lw	a1,8(s2)
 26c:	afa00010 	sw	zero,16(sp)
 270:	00003025 	move	a2,zero
 274:	0c000000 	jal	0 <__osSumcalc>
 278:	02a03825 	move	a3,s5
 27c:	10400003 	beqz	v0,28c <__osRepairPackId+0x11c>
 280:	00003025 	move	a2,zero
 284:	10000085 	b	49c <__osRepairPackId+0x32c>
 288:	8fbf003c 	lw	ra,60(sp)
 28c:	8e440004 	lw	a0,4(s2)
 290:	8e450008 	lw	a1,8(s2)
 294:	0c000000 	jal	0 <__osSumcalc>
 298:	27a7005c 	addiu	a3,sp,92
 29c:	10400003 	beqz	v0,2ac <__osRepairPackId+0x13c>
 2a0:	27a3005c 	addiu	v1,sp,92
 2a4:	1000007d 	b	49c <__osRepairPackId+0x32c>
 2a8:	8fbf003c 	lw	ra,60(sp)
 2ac:	27a2007c 	addiu	v0,sp,124
 2b0:	906e0000 	lbu	t6,0(v1)
 2b4:	90580000 	lbu	t8,0(v0)
 2b8:	55d80006 	bnel	t6,t8,2d4 <__osRepairPackId+0x164>
 2bc:	27b9007c 	addiu	t9,sp,124
 2c0:	24630001 	addiu	v1,v1,1
 2c4:	0071082b 	sltu	at,v1,s1
 2c8:	1420fff9 	bnez	at,2b0 <__osRepairPackId+0x140>
 2cc:	24420001 	addiu	v0,v0,1
 2d0:	27b9007c 	addiu	t9,sp,124
 2d4:	14790018 	bne	v1,t9,338 <__osRepairPackId+0x1c8>
 2d8:	02402025 	move	a0,s2
 2dc:	5a600013 	blezl	s3,32c <__osRepairPackId+0x1bc>
 2e0:	26730001 	addiu	s3,s3,1
 2e4:	0c000000 	jal	0 <__osSumcalc>
 2e8:	00002825 	move	a1,zero
 2ec:	10400003 	beqz	v0,2fc <__osRepairPackId+0x18c>
 2f0:	00003025 	move	a2,zero
 2f4:	10000069 	b	49c <__osRepairPackId+0x32c>
 2f8:	8fbf003c 	lw	ra,60(sp)
 2fc:	8e440004 	lw	a0,4(s2)
 300:	8e450008 	lw	a1,8(s2)
 304:	0c000000 	jal	0 <__osSumcalc>
 308:	02a03825 	move	a3,s5
 30c:	10400003 	beqz	v0,31c <__osRepairPackId+0x1ac>
 310:	93a8007c 	lbu	t0,124(sp)
 314:	10000061 	b	49c <__osRepairPackId+0x32c>
 318:	8fbf003c 	lw	ra,60(sp)
 31c:	24010080 	li	at,128
 320:	55010006 	bnel	t0,at,33c <__osRepairPackId+0x1cc>
 324:	92490065 	lbu	t1,101(s2)
 328:	26730001 	addiu	s3,s3,1
 32c:	2a61003e 	slti	at,s3,62
 330:	5420ffb6 	bnezl	at,20c <__osRepairPackId+0x9c>
 334:	02402025 	move	a0,s2
 338:	92490065 	lbu	t1,101(s2)
 33c:	02402025 	move	a0,s2
 340:	11200007 	beqz	t1,360 <__osRepairPackId+0x1f0>
 344:	00000000 	nop
 348:	0c000000 	jal	0 <__osSumcalc>
 34c:	00002825 	move	a1,zero
 350:	10400003 	beqz	v0,360 <__osRepairPackId+0x1f0>
 354:	00000000 	nop
 358:	10000050 	b	49c <__osRepairPackId+0x32c>
 35c:	8fbf003c 	lw	ra,60(sp)
 360:	1a600003 	blez	s3,370 <__osRepairPackId+0x200>
 364:	02802025 	move	a0,s4
 368:	10000002 	b	374 <__osRepairPackId+0x204>
 36c:	24020001 	li	v0,1
 370:	00001025 	move	v0,zero
 374:	96cf0018 	lhu	t7,24(s6)
 378:	a293001a 	sb	s3,26(s4)
 37c:	2685001c 	addiu	a1,s4,28
 380:	31eafffe 	andi	t2,t7,0xfffe
 384:	01425825 	or	t3,t2,v0
 388:	a68b0018 	sh	t3,24(s4)
 38c:	92cc001b 	lbu	t4,27(s6)
 390:	2686001e 	addiu	a2,s4,30
 394:	0c000000 	jal	0 <__osSumcalc>
 398:	a28c001b 	sb	t4,27(s4)
 39c:	240d0001 	li	t5,1
 3a0:	240e0003 	li	t6,3
 3a4:	24180004 	li	t8,4
 3a8:	24190006 	li	t9,6
 3ac:	a7ad0048 	sh	t5,72(sp)
 3b0:	a7ae004a 	sh	t6,74(sp)
 3b4:	a7b8004c 	sh	t8,76(sp)
 3b8:	a7b9004e 	sh	t9,78(sp)
 3bc:	27b00048 	addiu	s0,sp,72
 3c0:	27b10050 	addiu	s1,sp,80
 3c4:	8e440004 	lw	a0,4(s2)
 3c8:	8e450008 	lw	a1,8(s2)
 3cc:	96060000 	lhu	a2,0(s0)
 3d0:	24080001 	li	t0,1
 3d4:	afa80010 	sw	t0,16(sp)
 3d8:	0c000000 	jal	0 <__osSumcalc>
 3dc:	02803825 	move	a3,s4
 3e0:	10400003 	beqz	v0,3f0 <__osRepairPackId+0x280>
 3e4:	26100002 	addiu	s0,s0,2
 3e8:	1000002c 	b	49c <__osRepairPackId+0x32c>
 3ec:	8fbf003c 	lw	ra,60(sp)
 3f0:	0211082b 	sltu	at,s0,s1
 3f4:	5420fff4 	bnezl	at,3c8 <__osRepairPackId+0x258>
 3f8:	8e440004 	lw	a0,4(s2)
 3fc:	8e440004 	lw	a0,4(s2)
 400:	8e450008 	lw	a1,8(s2)
 404:	24060001 	li	a2,1
 408:	0c000000 	jal	0 <__osSumcalc>
 40c:	02a03825 	move	a3,s5
 410:	10400003 	beqz	v0,420 <__osRepairPackId+0x2b0>
 414:	02801825 	move	v1,s4
 418:	10000020 	b	49c <__osRepairPackId+0x32c>
 41c:	8fbf003c 	lw	ra,60(sp)
 420:	27a2007c 	addiu	v0,sp,124
 424:	27a4009c 	addiu	a0,sp,156
 428:	90490000 	lbu	t1,0(v0)
 42c:	906f0000 	lbu	t7,0(v1)
 430:	512f0004 	beql	t1,t7,444 <__osRepairPackId+0x2d4>
 434:	904a0001 	lbu	t2,1(v0)
 438:	10000017 	b	498 <__osRepairPackId+0x328>
 43c:	2402000b 	li	v0,11
 440:	904a0001 	lbu	t2,1(v0)
 444:	906b0001 	lbu	t3,1(v1)
 448:	514b0004 	beql	t2,t3,45c <__osRepairPackId+0x2ec>
 44c:	904c0002 	lbu	t4,2(v0)
 450:	10000011 	b	498 <__osRepairPackId+0x328>
 454:	2402000b 	li	v0,11
 458:	904c0002 	lbu	t4,2(v0)
 45c:	906d0002 	lbu	t5,2(v1)
 460:	518d0004 	beql	t4,t5,474 <__osRepairPackId+0x304>
 464:	904e0003 	lbu	t6,3(v0)
 468:	1000000b 	b	498 <__osRepairPackId+0x328>
 46c:	2402000b 	li	v0,11
 470:	904e0003 	lbu	t6,3(v0)
 474:	90780003 	lbu	t8,3(v1)
 478:	24420004 	addiu	v0,v0,4
 47c:	11d80003 	beq	t6,t8,48c <__osRepairPackId+0x31c>
 480:	00000000 	nop
 484:	10000004 	b	498 <__osRepairPackId+0x328>
 488:	2402000b 	li	v0,11
 48c:	1444ffe6 	bne	v0,a0,428 <__osRepairPackId+0x2b8>
 490:	24630004 	addiu	v1,v1,4
 494:	00001025 	move	v0,zero
 498:	8fbf003c 	lw	ra,60(sp)
 49c:	8fb00020 	lw	s0,32(sp)
 4a0:	8fb10024 	lw	s1,36(sp)
 4a4:	8fb20028 	lw	s2,40(sp)
 4a8:	8fb3002c 	lw	s3,44(sp)
 4ac:	8fb40030 	lw	s4,48(sp)
 4b0:	8fb50034 	lw	s5,52(sp)
 4b4:	8fb60038 	lw	s6,56(sp)
 4b8:	03e00008 	jr	ra
 4bc:	27bd00a0 	addiu	sp,sp,160

000004c0 <__osCheckPackId>:
 4c0:	27bdffa0 	addiu	sp,sp,-96
 4c4:	afbf003c 	sw	ra,60(sp)
 4c8:	afb60038 	sw	s6,56(sp)
 4cc:	afb50034 	sw	s5,52(sp)
 4d0:	afb40030 	sw	s4,48(sp)
 4d4:	afb3002c 	sw	s3,44(sp)
 4d8:	afb20028 	sw	s2,40(sp)
 4dc:	afb10024 	sw	s1,36(sp)
 4e0:	afb00020 	sw	s0,32(sp)
 4e4:	908e0065 	lbu	t6,101(a0)
 4e8:	00a09025 	move	s2,a1
 4ec:	00809825 	move	s3,a0
 4f0:	51c00008 	beqzl	t6,514 <__osCheckPackId+0x54>
 4f4:	240f0001 	li	t7,1
 4f8:	0c000000 	jal	0 <__osSumcalc>
 4fc:	00002825 	move	a1,zero
 500:	50400004 	beqzl	v0,514 <__osCheckPackId+0x54>
 504:	240f0001 	li	t7,1
 508:	1000003d 	b	600 <__osCheckPackId+0x140>
 50c:	8fbf003c 	lw	ra,60(sp)
 510:	240f0001 	li	t7,1
 514:	24180003 	li	t8,3
 518:	24190004 	li	t9,4
 51c:	24080006 	li	t0,6
 520:	a7af0058 	sh	t7,88(sp)
 524:	a7b8005a 	sh	t8,90(sp)
 528:	a7b9005c 	sh	t9,92(sp)
 52c:	a7a8005e 	sh	t0,94(sp)
 530:	24110001 	li	s1,1
 534:	27b0005a 	addiu	s0,sp,90
 538:	27b60050 	addiu	s6,sp,80
 53c:	24150004 	li	s5,4
 540:	27b40052 	addiu	s4,sp,82
 544:	8e640004 	lw	a0,4(s3)
 548:	8e650008 	lw	a1,8(s3)
 54c:	96060000 	lhu	a2,0(s0)
 550:	0c000000 	jal	0 <__osSumcalc>
 554:	02403825 	move	a3,s2
 558:	10400003 	beqz	v0,568 <__osCheckPackId+0xa8>
 55c:	02402025 	move	a0,s2
 560:	10000027 	b	600 <__osCheckPackId+0x140>
 564:	8fbf003c 	lw	ra,60(sp)
 568:	02802825 	move	a1,s4
 56c:	0c000000 	jal	0 <__osSumcalc>
 570:	02c03025 	move	a2,s6
 574:	97a90052 	lhu	t1,82(sp)
 578:	964a001c 	lhu	t2,28(s2)
 57c:	97ab0050 	lhu	t3,80(sp)
 580:	552a0005 	bnel	t1,t2,598 <__osCheckPackId+0xd8>
 584:	26310001 	addiu	s1,s1,1
 588:	964c001e 	lhu	t4,30(s2)
 58c:	116c0004 	beq	t3,t4,5a0 <__osCheckPackId+0xe0>
 590:	00000000 	nop
 594:	26310001 	addiu	s1,s1,1
 598:	1635ffea 	bne	s1,s5,544 <__osCheckPackId+0x84>
 59c:	26100002 	addiu	s0,s0,2
 5a0:	16350003 	bne	s1,s5,5b0 <__osCheckPackId+0xf0>
 5a4:	00008025 	move	s0,zero
 5a8:	10000014 	b	5fc <__osCheckPackId+0x13c>
 5ac:	2402000a 	li	v0,10
 5b0:	27b40058 	addiu	s4,sp,88
 5b4:	1211000d 	beq	s0,s1,5ec <__osCheckPackId+0x12c>
 5b8:	00106840 	sll	t5,s0,0x1
 5bc:	028d7021 	addu	t6,s4,t5
 5c0:	95c60000 	lhu	a2,0(t6)
 5c4:	8e640004 	lw	a0,4(s3)
 5c8:	8e650008 	lw	a1,8(s3)
 5cc:	240f0001 	li	t7,1
 5d0:	afaf0010 	sw	t7,16(sp)
 5d4:	0c000000 	jal	0 <__osSumcalc>
 5d8:	02403825 	move	a3,s2
 5dc:	50400004 	beqzl	v0,5f0 <__osCheckPackId+0x130>
 5e0:	26100001 	addiu	s0,s0,1
 5e4:	10000006 	b	600 <__osCheckPackId+0x140>
 5e8:	8fbf003c 	lw	ra,60(sp)
 5ec:	26100001 	addiu	s0,s0,1
 5f0:	1615fff0 	bne	s0,s5,5b4 <__osCheckPackId+0xf4>
 5f4:	00000000 	nop
 5f8:	00001025 	move	v0,zero
 5fc:	8fbf003c 	lw	ra,60(sp)
 600:	8fb00020 	lw	s0,32(sp)
 604:	8fb10024 	lw	s1,36(sp)
 608:	8fb20028 	lw	s2,40(sp)
 60c:	8fb3002c 	lw	s3,44(sp)
 610:	8fb40030 	lw	s4,48(sp)
 614:	8fb50034 	lw	s5,52(sp)
 618:	8fb60038 	lw	s6,56(sp)
 61c:	03e00008 	jr	ra
 620:	27bd0060 	addiu	sp,sp,96

00000624 <__osGetId>:
 624:	27bdff90 	addiu	sp,sp,-112
 628:	afbf001c 	sw	ra,28(sp)
 62c:	afb10018 	sw	s1,24(sp)
 630:	afb00014 	sw	s0,20(sp)
 634:	908e0065 	lbu	t6,101(a0)
 638:	00808025 	move	s0,a0
 63c:	51c00008 	beqzl	t6,660 <__osGetId+0x3c>
 640:	8e040004 	lw	a0,4(s0)
 644:	0c000000 	jal	0 <__osSumcalc>
 648:	00002825 	move	a1,zero
 64c:	50400004 	beqzl	v0,660 <__osGetId+0x3c>
 650:	8e040004 	lw	a0,4(s0)
 654:	1000005a 	b	7c0 <__osGetId+0x19c>
 658:	8fbf001c 	lw	ra,28(sp)
 65c:	8e040004 	lw	a0,4(s0)
 660:	8e050008 	lw	a1,8(s0)
 664:	24060001 	li	a2,1
 668:	0c000000 	jal	0 <__osSumcalc>
 66c:	27a7004c 	addiu	a3,sp,76
 670:	10400003 	beqz	v0,680 <__osGetId+0x5c>
 674:	27a4004c 	addiu	a0,sp,76
 678:	10000051 	b	7c0 <__osGetId+0x19c>
 67c:	8fbf001c 	lw	ra,28(sp)
 680:	27a5006e 	addiu	a1,sp,110
 684:	0c000000 	jal	0 <__osSumcalc>
 688:	27a6006c 	addiu	a2,sp,108
 68c:	97af006e 	lhu	t7,110(sp)
 690:	97b80068 	lhu	t8,104(sp)
 694:	27a5004c 	addiu	a1,sp,76
 698:	00a08825 	move	s1,a1
 69c:	15f80004 	bne	t7,t8,6b0 <__osGetId+0x8c>
 6a0:	97b9006c 	lhu	t9,108(sp)
 6a4:	97a9006a 	lhu	t1,106(sp)
 6a8:	53290015 	beql	t9,t1,700 <__osGetId+0xdc>
 6ac:	962a0018 	lhu	t2,24(s1)
 6b0:	0c000000 	jal	0 <__osSumcalc>
 6b4:	02002025 	move	a0,s0
 6b8:	2401000a 	li	at,10
 6bc:	1441000b 	bne	v0,at,6ec <__osGetId+0xc8>
 6c0:	00401825 	move	v1,v0
 6c4:	02002025 	move	a0,s0
 6c8:	27a5004c 	addiu	a1,sp,76
 6cc:	0c000000 	jal	0 <__osSumcalc>
 6d0:	27a60028 	addiu	a2,sp,40
 6d4:	10400003 	beqz	v0,6e4 <__osGetId+0xc0>
 6d8:	00000000 	nop
 6dc:	10000038 	b	7c0 <__osGetId+0x19c>
 6e0:	8fbf001c 	lw	ra,28(sp)
 6e4:	10000005 	b	6fc <__osGetId+0xd8>
 6e8:	27b10028 	addiu	s1,sp,40
 6ec:	50400004 	beqzl	v0,700 <__osGetId+0xdc>
 6f0:	962a0018 	lhu	t2,24(s1)
 6f4:	10000031 	b	7bc <__osGetId+0x198>
 6f8:	00601025 	move	v0,v1
 6fc:	962a0018 	lhu	t2,24(s1)
 700:	02002025 	move	a0,s0
 704:	02202825 	move	a1,s1
 708:	314b0001 	andi	t3,t2,0x1
 70c:	5560000d 	bnezl	t3,744 <__osGetId+0x120>
 710:	02202025 	move	a0,s1
 714:	0c000000 	jal	0 <__osSumcalc>
 718:	27a60028 	addiu	a2,sp,40
 71c:	10400003 	beqz	v0,72c <__osGetId+0x108>
 720:	97ac0040 	lhu	t4,64(sp)
 724:	10000026 	b	7c0 <__osGetId+0x19c>
 728:	8fbf001c 	lw	ra,28(sp)
 72c:	318d0001 	andi	t5,t4,0x1
 730:	15a00003 	bnez	t5,740 <__osGetId+0x11c>
 734:	27b10028 	addiu	s1,sp,40
 738:	10000020 	b	7bc <__osGetId+0x198>
 73c:	2402000b 	li	v0,11
 740:	02202025 	move	a0,s1
 744:	2605000c 	addiu	a1,s0,12
 748:	0c000000 	jal	0 <__osSumcalc>
 74c:	24060020 	li	a2,32
 750:	922e001b 	lbu	t6,27(s1)
 754:	24090010 	li	t1,16
 758:	240a0008 	li	t2,8
 75c:	ae0e004c 	sw	t6,76(s0)
 760:	922f001a 	lbu	t7,26(s1)
 764:	ae090050 	sw	t1,80(s0)
 768:	ae0a0054 	sw	t2,84(s0)
 76c:	31e200ff 	andi	v0,t7,0xff
 770:	000218c0 	sll	v1,v0,0x3
 774:	0002c040 	sll	t8,v0,0x1
 778:	24680008 	addiu	t0,v1,8
 77c:	27190003 	addiu	t9,t8,3
 780:	01035821 	addu	t3,t0,v1
 784:	ae190060 	sw	t9,96(s0)
 788:	ae080058 	sw	t0,88(s0)
 78c:	ae0b005c 	sw	t3,92(s0)
 790:	8e040004 	lw	a0,4(s0)
 794:	8e050008 	lw	a1,8(s0)
 798:	24060007 	li	a2,7
 79c:	2607002c 	addiu	a3,s0,44
 7a0:	0c000000 	jal	0 <__osSumcalc>
 7a4:	a20f0064 	sb	t7,100(s0)
 7a8:	50400004 	beqzl	v0,7bc <__osGetId+0x198>
 7ac:	00001025 	move	v0,zero
 7b0:	10000003 	b	7c0 <__osGetId+0x19c>
 7b4:	8fbf001c 	lw	ra,28(sp)
 7b8:	00001025 	move	v0,zero
 7bc:	8fbf001c 	lw	ra,28(sp)
 7c0:	8fb00014 	lw	s0,20(sp)
 7c4:	8fb10018 	lw	s1,24(sp)
 7c8:	03e00008 	jr	ra
 7cc:	27bd0070 	addiu	sp,sp,112

000007d0 <__osCheckId>:
 7d0:	27bdffb8 	addiu	sp,sp,-72
 7d4:	afbf001c 	sw	ra,28(sp)
 7d8:	afb00018 	sw	s0,24(sp)
 7dc:	908e0065 	lbu	t6,101(a0)
 7e0:	00808025 	move	s0,a0
 7e4:	51c0000f 	beqzl	t6,824 <__osCheckId+0x54>
 7e8:	8e040004 	lw	a0,4(s0)
 7ec:	0c000000 	jal	0 <__osSumcalc>
 7f0:	00002825 	move	a1,zero
 7f4:	24010002 	li	at,2
 7f8:	14410005 	bne	v0,at,810 <__osCheckId+0x40>
 7fc:	00401825 	move	v1,v0
 800:	02002025 	move	a0,s0
 804:	0c000000 	jal	0 <__osSumcalc>
 808:	00002825 	move	a1,zero
 80c:	00401825 	move	v1,v0
 810:	50400004 	beqzl	v0,824 <__osCheckId+0x54>
 814:	8e040004 	lw	a0,4(s0)
 818:	1000001d 	b	890 <__osCheckId+0xc0>
 81c:	00601025 	move	v0,v1
 820:	8e040004 	lw	a0,4(s0)
 824:	8e050008 	lw	a1,8(s0)
 828:	24060001 	li	a2,1
 82c:	0c000000 	jal	0 <__osSumcalc>
 830:	27a70028 	addiu	a3,sp,40
 834:	1040000d 	beqz	v0,86c <__osCheckId+0x9c>
 838:	24010002 	li	at,2
 83c:	10410003 	beq	v0,at,84c <__osCheckId+0x7c>
 840:	24060001 	li	a2,1
 844:	10000013 	b	894 <__osCheckId+0xc4>
 848:	8fbf001c 	lw	ra,28(sp)
 84c:	8e040004 	lw	a0,4(s0)
 850:	8e050008 	lw	a1,8(s0)
 854:	0c000000 	jal	0 <__osSumcalc>
 858:	27a70028 	addiu	a3,sp,40
 85c:	50400004 	beqzl	v0,870 <__osCheckId+0xa0>
 860:	2604000c 	addiu	a0,s0,12
 864:	1000000b 	b	894 <__osCheckId+0xc4>
 868:	8fbf001c 	lw	ra,28(sp)
 86c:	2604000c 	addiu	a0,s0,12
 870:	27a50028 	addiu	a1,sp,40
 874:	0c000000 	jal	0 <__osSumcalc>
 878:	24060020 	li	a2,32
 87c:	50400004 	beqzl	v0,890 <__osCheckId+0xc0>
 880:	00001025 	move	v0,zero
 884:	10000002 	b	890 <__osCheckId+0xc0>
 888:	24020002 	li	v0,2
 88c:	00001025 	move	v0,zero
 890:	8fbf001c 	lw	ra,28(sp)
 894:	8fb00018 	lw	s0,24(sp)
 898:	27bd0048 	addiu	sp,sp,72
 89c:	03e00008 	jr	ra
 8a0:	00000000 	nop

000008a4 <__osPfsRWInode>:
 8a4:	27bdffa8 	addiu	sp,sp,-88
 8a8:	afb40030 	sw	s4,48(sp)
 8ac:	30d400ff 	andi	s4,a2,0xff
 8b0:	afb20028 	sw	s2,40(sp)
 8b4:	00809025 	move	s2,a0
 8b8:	afbf0034 	sw	ra,52(sp)
 8bc:	afb3002c 	sw	s3,44(sp)
 8c0:	afb10024 	sw	s1,36(sp)
 8c4:	afb00020 	sw	s0,32(sp)
 8c8:	afa5005c 	sw	a1,92(sp)
 8cc:	afa60060 	sw	a2,96(sp)
 8d0:	16800011 	bnez	s4,918 <__osPfsRWInode+0x74>
 8d4:	afa70064 	sw	a3,100(sp)
 8d8:	3c0f0000 	lui	t7,0x0
 8dc:	91ef0000 	lbu	t7,0(t7)
 8e0:	93b80067 	lbu	t8,103(sp)
 8e4:	3c190000 	lui	t9,0x0
 8e8:	55f8000c 	bnel	t7,t8,91c <__osPfsRWInode+0x78>
 8ec:	92490065 	lbu	t1,101(s2)
 8f0:	8f390000 	lw	t9,0(t9)
 8f4:	8c880008 	lw	t0,8(a0)
 8f8:	3c040000 	lui	a0,0x0
 8fc:	24840000 	addiu	a0,a0,0
 900:	57280006 	bnel	t9,t0,91c <__osPfsRWInode+0x78>
 904:	92490065 	lbu	t1,101(s2)
 908:	0c000000 	jal	0 <__osSumcalc>
 90c:	24060100 	li	a2,256
 910:	10000091 	b	b58 <__osPfsRWInode+0x2b4>
 914:	00001025 	move	v0,zero
 918:	92490065 	lbu	t1,101(s2)
 91c:	02402025 	move	a0,s2
 920:	51200008 	beqzl	t1,944 <__osPfsRWInode+0xa0>
 924:	93a30067 	lbu	v1,103(sp)
 928:	0c000000 	jal	0 <__osSumcalc>
 92c:	00002825 	move	a1,zero
 930:	50400004 	beqzl	v0,944 <__osPfsRWInode+0xa0>
 934:	93a30067 	lbu	v1,103(sp)
 938:	10000088 	b	b5c <__osPfsRWInode+0x2b8>
 93c:	8fbf0034 	lw	ra,52(sp)
 940:	93a30067 	lbu	v1,103(sp)
 944:	24020001 	li	v0,1
 948:	240a0001 	li	t2,1
 94c:	58600004 	blezl	v1,960 <__osPfsRWInode+0xbc>
 950:	8e4b0060 	lw	t3,96(s2)
 954:	10000003 	b	964 <__osPfsRWInode+0xc0>
 958:	afaa0048 	sw	t2,72(sp)
 95c:	8e4b0060 	lw	t3,96(s2)
 960:	afab0048 	sw	t3,72(sp)
 964:	1454000c 	bne	v0,s4,998 <__osPfsRWInode+0xf4>
 968:	8fad0048 	lw	t5,72(sp)
 96c:	8fac005c 	lw	t4,92(sp)
 970:	000d2823 	negu	a1,t5
 974:	00057840 	sll	t7,a1,0x1
 978:	000d7040 	sll	t6,t5,0x1
 97c:	25e50100 	addiu	a1,t7,256
 980:	afa3003c 	sw	v1,60(sp)
 984:	0c000000 	jal	0 <__osSumcalc>
 988:	018e2021 	addu	a0,t4,t6
 98c:	8fb8005c 	lw	t8,92(sp)
 990:	8fa3003c 	lw	v1,60(sp)
 994:	a3020001 	sb	v0,1(t8)
 998:	00008025 	move	s0,zero
 99c:	8fb1005c 	lw	s1,92(sp)
 9a0:	000398c0 	sll	s3,v1,0x3
 9a4:	24020001 	li	v0,1
 9a8:	14540016 	bne	v0,s4,a04 <__osPfsRWInode+0x160>
 9ac:	8e450008 	lw	a1,8(s2)
 9b0:	8e590054 	lw	t9,84(s2)
 9b4:	8e440004 	lw	a0,4(s2)
 9b8:	afa00010 	sw	zero,16(sp)
 9bc:	03334021 	addu	t0,t9,s3
 9c0:	01103021 	addu	a2,t0,s0
 9c4:	30c9ffff 	andi	t1,a2,0xffff
 9c8:	01203025 	move	a2,t1
 9cc:	0c000000 	jal	0 <__osSumcalc>
 9d0:	02203825 	move	a3,s1
 9d4:	8e4a0058 	lw	t2,88(s2)
 9d8:	8e440004 	lw	a0,4(s2)
 9dc:	8e450008 	lw	a1,8(s2)
 9e0:	01535821 	addu	t3,t2,s3
 9e4:	01703021 	addu	a2,t3,s0
 9e8:	30ccffff 	andi	t4,a2,0xffff
 9ec:	01803025 	move	a2,t4
 9f0:	afa00010 	sw	zero,16(sp)
 9f4:	0c000000 	jal	0 <__osSumcalc>
 9f8:	02203825 	move	a3,s1
 9fc:	1000000a 	b	a28 <__osPfsRWInode+0x184>
 a00:	00401825 	move	v1,v0
 a04:	8e4e0054 	lw	t6,84(s2)
 a08:	8e440004 	lw	a0,4(s2)
 a0c:	02203825 	move	a3,s1
 a10:	01d36821 	addu	t5,t6,s3
 a14:	01b03021 	addu	a2,t5,s0
 a18:	30cfffff 	andi	t7,a2,0xffff
 a1c:	0c000000 	jal	0 <__osSumcalc>
 a20:	01e03025 	move	a2,t7
 a24:	00401825 	move	v1,v0
 a28:	10400003 	beqz	v0,a38 <__osPfsRWInode+0x194>
 a2c:	26100001 	addiu	s0,s0,1
 a30:	10000049 	b	b58 <__osPfsRWInode+0x2b4>
 a34:	00601025 	move	v0,v1
 a38:	2a010008 	slti	at,s0,8
 a3c:	1420ffd9 	bnez	at,9a4 <__osPfsRWInode+0x100>
 a40:	26310020 	addiu	s1,s1,32
 a44:	16800038 	bnez	s4,b28 <__osPfsRWInode+0x284>
 a48:	8fb90048 	lw	t9,72(sp)
 a4c:	8fb8005c 	lw	t8,92(sp)
 a50:	00192823 	negu	a1,t9
 a54:	00054840 	sll	t1,a1,0x1
 a58:	00194040 	sll	t0,t9,0x1
 a5c:	25250100 	addiu	a1,t1,256
 a60:	0308a021 	addu	s4,t8,t0
 a64:	02802025 	move	a0,s4
 a68:	0c000000 	jal	0 <__osSumcalc>
 a6c:	afa5003c 	sw	a1,60(sp)
 a70:	8fab005c 	lw	t3,92(sp)
 a74:	304a00ff 	andi	t2,v0,0xff
 a78:	00008025 	move	s0,zero
 a7c:	916c0001 	lbu	t4,1(t3)
 a80:	01608825 	move	s1,t3
 a84:	514c0029 	beql	t2,t4,b2c <__osPfsRWInode+0x288>
 a88:	93ab0067 	lbu	t3,103(sp)
 a8c:	8e4e0058 	lw	t6,88(s2)
 a90:	8e440004 	lw	a0,4(s2)
 a94:	8e450008 	lw	a1,8(s2)
 a98:	01d36821 	addu	t5,t6,s3
 a9c:	01b03021 	addu	a2,t5,s0
 aa0:	30cfffff 	andi	t7,a2,0xffff
 aa4:	01e03025 	move	a2,t7
 aa8:	0c000000 	jal	0 <__osSumcalc>
 aac:	02203825 	move	a3,s1
 ab0:	26100001 	addiu	s0,s0,1
 ab4:	2a010008 	slti	at,s0,8
 ab8:	1420fff4 	bnez	at,a8c <__osPfsRWInode+0x1e8>
 abc:	26310020 	addiu	s1,s1,32
 ac0:	02802025 	move	a0,s4
 ac4:	0c000000 	jal	0 <__osSumcalc>
 ac8:	8fa5003c 	lw	a1,60(sp)
 acc:	8fa8005c 	lw	t0,92(sp)
 ad0:	305800ff 	andi	t8,v0,0xff
 ad4:	00008025 	move	s0,zero
 ad8:	91190001 	lbu	t9,1(t0)
 adc:	8fb1005c 	lw	s1,92(sp)
 ae0:	13190003 	beq	t8,t9,af0 <__osPfsRWInode+0x24c>
 ae4:	00000000 	nop
 ae8:	1000001b 	b	b58 <__osPfsRWInode+0x2b4>
 aec:	24020003 	li	v0,3
 af0:	8e490054 	lw	t1,84(s2)
 af4:	8e440004 	lw	a0,4(s2)
 af8:	8e450008 	lw	a1,8(s2)
 afc:	01335021 	addu	t2,t1,s3
 b00:	01503021 	addu	a2,t2,s0
 b04:	30ccffff 	andi	t4,a2,0xffff
 b08:	01803025 	move	a2,t4
 b0c:	afa00010 	sw	zero,16(sp)
 b10:	0c000000 	jal	0 <__osSumcalc>
 b14:	02203825 	move	a3,s1
 b18:	26100001 	addiu	s0,s0,1
 b1c:	24010008 	li	at,8
 b20:	1601fff3 	bne	s0,at,af0 <__osPfsRWInode+0x24c>
 b24:	26310020 	addiu	s1,s1,32
 b28:	93ab0067 	lbu	t3,103(sp)
 b2c:	3c010000 	lui	at,0x0
 b30:	3c050000 	lui	a1,0x0
 b34:	24a50000 	addiu	a1,a1,0
 b38:	8fa4005c 	lw	a0,92(sp)
 b3c:	24060100 	li	a2,256
 b40:	0c000000 	jal	0 <__osSumcalc>
 b44:	a02b0000 	sb	t3,0(at)
 b48:	8e4e0008 	lw	t6,8(s2)
 b4c:	3c010000 	lui	at,0x0
 b50:	00001025 	move	v0,zero
 b54:	ac2e0000 	sw	t6,0(at)
 b58:	8fbf0034 	lw	ra,52(sp)
 b5c:	8fb00020 	lw	s0,32(sp)
 b60:	8fb10024 	lw	s1,36(sp)
 b64:	8fb20028 	lw	s2,40(sp)
 b68:	8fb3002c 	lw	s3,44(sp)
 b6c:	8fb40030 	lw	s4,48(sp)
 b70:	03e00008 	jr	ra
 b74:	27bd0058 	addiu	sp,sp,88
	...
