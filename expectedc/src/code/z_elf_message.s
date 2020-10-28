
build/src/code/z_elf_message.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ElfMessage_CheckCondition>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	90850000 	lbu	a1,0(a0)
   c:	3c070000 	lui	a3,0x0
  10:	24e70000 	addiu	a3,a3,0
  14:	30a2001e 	andi	v0,a1,0x1e
  18:	1040000c 	beqz	v0,4c <ElfMessage_CheckCondition+0x4c>
  1c:	240f0001 	li	t7,1
  20:	24010002 	li	at,2
  24:	1041001a 	beq	v0,at,90 <ElfMessage_CheckCondition+0x90>
  28:	3c070000 	lui	a3,0x0
  2c:	24010004 	li	at,4
  30:	10410028 	beq	v0,at,d4 <ElfMessage_CheckCondition+0xd4>
  34:	3c070000 	lui	a3,0x0
  38:	24010006 	li	at,6
  3c:	50410036 	beql	v0,at,118 <ElfMessage_CheckCondition+0x118>
  40:	90830001 	lbu	v1,1(a0)
  44:	1000008c 	b	278 <ElfMessage_CheckCondition+0x278>
  48:	00000000 	nop
  4c:	90830001 	lbu	v1,1(a0)
  50:	30b80001 	andi	t8,a1,0x1
  54:	3b190001 	xori	t9,t8,0x1
  58:	306800f0 	andi	t0,v1,0xf0
  5c:	00084903 	sra	t1,t0,0x4
  60:	00095040 	sll	t2,t1,0x1
  64:	00ea5821 	addu	t3,a3,t2
  68:	956c0ed4 	lhu	t4,3796(t3)
  6c:	306e000f 	andi	t6,v1,0xf
  70:	01cf3004 	sllv	a2,t7,t6
  74:	30c6ffff 	andi	a2,a2,0xffff
  78:	01866824 	and	t5,t4,a2
  7c:	000d782b 	sltu	t7,zero,t5
  80:	2f390001 	sltiu	t9,t9,1
  84:	032f1026 	xor	v0,t9,t7
  88:	1000008b 	b	2b8 <ElfMessage_CheckCondition+0x2b8>
  8c:	2c420001 	sltiu	v0,v0,1
  90:	908e0001 	lbu	t6,1(a0)
  94:	24e70000 	addiu	a3,a3,0
  98:	94e91402 	lhu	t1,5122(a3)
  9c:	3c080000 	lui	t0,0x0
  a0:	000ec080 	sll	t8,t6,0x2
  a4:	01184021 	addu	t0,t0,t8
  a8:	00e95021 	addu	t2,a3,t1
  ac:	914b00a8 	lbu	t3,168(t2)
  b0:	8d08fe30 	lw	t0,-464(t0)
  b4:	30b90001 	andi	t9,a1,0x1
  b8:	3b2f0001 	xori	t7,t9,0x1
  bc:	010b6024 	and	t4,t0,t3
  c0:	000c682b 	sltu	t5,zero,t4
  c4:	2def0001 	sltiu	t7,t7,1
  c8:	01ed1026 	xor	v0,t7,t5
  cc:	1000007a 	b	2b8 <ElfMessage_CheckCondition+0x2b8>
  d0:	2c420001 	sltiu	v0,v0,1
  d4:	90980001 	lbu	t8,1(a0)
  d8:	3c090000 	lui	t1,0x0
  dc:	24e70000 	addiu	a3,a3,0
  e0:	01384821 	addu	t1,t1,t8
  e4:	91290000 	lbu	t1,0(t1)
  e8:	908e0003 	lbu	t6,3(a0)
  ec:	30ac0001 	andi	t4,a1,0x1
  f0:	00e95021 	addu	t2,a3,t1
  f4:	91480074 	lbu	t0,116(t2)
  f8:	39990001 	xori	t9,t4,0x1
  fc:	2f390001 	sltiu	t9,t9,1
 100:	01c85826 	xor	t3,t6,t0
 104:	2d6b0001 	sltiu	t3,t3,1
 108:	032b1026 	xor	v0,t9,t3
 10c:	1000006a 	b	2b8 <ElfMessage_CheckCondition+0x2b8>
 110:	2c420001 	sltiu	v0,v0,1
 114:	90830001 	lbu	v1,1(a0)
 118:	306f00f0 	andi	t7,v1,0xf0
 11c:	2de10041 	sltiu	at,t7,65
 120:	10200055 	beqz	at,278 <ElfMessage_CheckCondition+0x278>
 124:	000f7880 	sll	t7,t7,0x2
 128:	3c010000 	lui	at,0x0
 12c:	002f0821 	addu	at,at,t7
 130:	8c2f0098 	lw	t7,152(at)
 134:	01e00008 	jr	t7
 138:	00000000 	nop
 13c:	3c070000 	lui	a3,0x0
 140:	24e70000 	addiu	a3,a3,0
 144:	3c180000 	lui	t8,0x0
 148:	8f180008 	lw	t8,8(t8)
 14c:	8ced00a0 	lw	t5,160(a3)
 150:	3c0a0000 	lui	t2,0x0
 154:	914a0002 	lbu	t2,2(t2)
 158:	01b84824 	and	t1,t5,t8
 15c:	3068000f 	andi	t0,v1,0xf
 160:	30b90001 	andi	t9,a1,0x1
 164:	01497007 	srav	t6,t1,t2
 168:	010e6026 	xor	t4,t0,t6
 16c:	3b2b0001 	xori	t3,t9,0x1
 170:	2d6b0001 	sltiu	t3,t3,1
 174:	2d8c0001 	sltiu	t4,t4,1
 178:	016c1026 	xor	v0,t3,t4
 17c:	1000004e 	b	2b8 <ElfMessage_CheckCondition+0x2b8>
 180:	2c420001 	sltiu	v0,v0,1
 184:	908f0003 	lbu	t7,3(a0)
 188:	3c180000 	lui	t8,0x0
 18c:	3c070000 	lui	a3,0x0
 190:	000f6880 	sll	t5,t7,0x2
 194:	030dc021 	addu	t8,t8,t5
 198:	3c090000 	lui	t1,0x0
 19c:	91290003 	lbu	t1,3(t1)
 1a0:	8f18fef0 	lw	t8,-272(t8)
 1a4:	24e70000 	addiu	a3,a3,0
 1a8:	94e8009c 	lhu	t0,156(a3)
 1ac:	30ab0001 	andi	t3,a1,0x1
 1b0:	01385004 	sllv	t2,t8,t1
 1b4:	396c0001 	xori	t4,t3,0x1
 1b8:	01487024 	and	t6,t2,t0
 1bc:	000ec82b 	sltu	t9,zero,t6
 1c0:	2d8c0001 	sltiu	t4,t4,1
 1c4:	01991026 	xor	v0,t4,t9
 1c8:	1000003b 	b	2b8 <ElfMessage_CheckCondition+0x2b8>
 1cc:	2c420001 	sltiu	v0,v0,1
 1d0:	908f0003 	lbu	t7,3(a0)
 1d4:	3c070000 	lui	a3,0x0
 1d8:	3c180000 	lui	t8,0x0
 1dc:	000f6880 	sll	t5,t7,0x2
 1e0:	24e70000 	addiu	a3,a3,0
 1e4:	030dc021 	addu	t8,t8,t5
 1e8:	8f18feb0 	lw	t8,-336(t8)
 1ec:	8ce900a4 	lw	t1,164(a3)
 1f0:	30ae0001 	andi	t6,a1,0x1
 1f4:	39cb0001 	xori	t3,t6,0x1
 1f8:	03095024 	and	t2,t8,t1
 1fc:	000a402b 	sltu	t0,zero,t2
 200:	2d6b0001 	sltiu	t3,t3,1
 204:	01681026 	xor	v0,t3,t0
 208:	1000002b 	b	2b8 <ElfMessage_CheckCondition+0x2b8>
 20c:	2c420001 	sltiu	v0,v0,1
 210:	908c0003 	lbu	t4,3(a0)
 214:	3c070000 	lui	a3,0x0
 218:	3c0f0000 	lui	t7,0x0
 21c:	000cc880 	sll	t9,t4,0x2
 220:	24e70000 	addiu	a3,a3,0
 224:	01f97821 	addu	t7,t7,t9
 228:	8deffe68 	lw	t7,-408(t7)
 22c:	8ced00a4 	lw	t5,164(a3)
 230:	30aa0001 	andi	t2,a1,0x1
 234:	394e0001 	xori	t6,t2,0x1
 238:	01edc024 	and	t8,t7,t5
 23c:	0018482b 	sltu	t1,zero,t8
 240:	2dce0001 	sltiu	t6,t6,1
 244:	01c91026 	xor	v0,t6,t1
 248:	1000001b 	b	2b8 <ElfMessage_CheckCondition+0x2b8>
 24c:	2c420001 	sltiu	v0,v0,1
 250:	3c070000 	lui	a3,0x0
 254:	24e70000 	addiu	a3,a3,0
 258:	90ec003a 	lbu	t4,58(a3)
 25c:	30ab0001 	andi	t3,a1,0x1
 260:	39680001 	xori	t0,t3,0x1
 264:	2d080001 	sltiu	t0,t0,1
 268:	000cc82b 	sltu	t9,zero,t4
 26c:	01191026 	xor	v0,t0,t9
 270:	10000011 	b	2b8 <ElfMessage_CheckCondition+0x2b8>
 274:	2c420001 	sltiu	v0,v0,1
 278:	3c040000 	lui	a0,0x0
 27c:	24840000 	addiu	a0,a0,0
 280:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 284:	2405009c 	li	a1,156
 288:	3c040000 	lui	a0,0x0
 28c:	3c050000 	lui	a1,0x0
 290:	24a50028 	addiu	a1,a1,40
 294:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 298:	24840014 	addiu	a0,a0,20
 29c:	3c040000 	lui	a0,0x0
 2a0:	3c050000 	lui	a1,0x0
 2a4:	24a50038 	addiu	a1,a1,56
 2a8:	24840034 	addiu	a0,a0,52
 2ac:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 2b0:	2406009d 	li	a2,157
 2b4:	00001025 	move	v0,zero
 2b8:	8fbf0014 	lw	ra,20(sp)
 2bc:	27bd0018 	addiu	sp,sp,24
 2c0:	03e00008 	jr	ra
 2c4:	00000000 	nop

000002c8 <func_8006BE88>:
 2c8:	27bdffd8 	addiu	sp,sp,-40
 2cc:	afbf0024 	sw	ra,36(sp)
 2d0:	afb20020 	sw	s2,32(sp)
 2d4:	afb1001c 	sw	s1,28(sp)
 2d8:	afb00018 	sw	s0,24(sp)
 2dc:	8c850000 	lw	a1,0(a0)
 2e0:	24120020 	li	s2,32
 2e4:	00808025 	move	s0,a0
 2e8:	90ae0000 	lbu	t6,0(a1)
 2ec:	24110001 	li	s1,1
 2f0:	31cf00e0 	andi	t7,t6,0xe0
 2f4:	164f000d 	bne	s2,t7,32c <func_8006BE88+0x64>
 2f8:	00000000 	nop
 2fc:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 300:	00a02025 	move	a0,a1
 304:	54400003 	bnezl	v0,314 <func_8006BE88+0x4c>
 308:	8e180000 	lw	t8,0(s0)
 30c:	00008825 	move	s1,zero
 310:	8e180000 	lw	t8,0(s0)
 314:	27050004 	addiu	a1,t8,4
 318:	ae050000 	sw	a1,0(s0)
 31c:	90a80000 	lbu	t0,0(a1)
 320:	310900e0 	andi	t1,t0,0xe0
 324:	1249fff5 	beq	s2,t1,2fc <func_8006BE88+0x34>
 328:	00000000 	nop
 32c:	12200005 	beqz	s1,344 <func_8006BE88+0x7c>
 330:	00001025 	move	v0,zero
 334:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 338:	00a02025 	move	a0,a1
 33c:	10000002 	b	348 <func_8006BE88+0x80>
 340:	8fbf0024 	lw	ra,36(sp)
 344:	8fbf0024 	lw	ra,36(sp)
 348:	8fb00018 	lw	s0,24(sp)
 34c:	8fb1001c 	lw	s1,28(sp)
 350:	8fb20020 	lw	s2,32(sp)
 354:	03e00008 	jr	ra
 358:	27bd0028 	addiu	sp,sp,40

0000035c <func_8006BF1C>:
 35c:	27bdff90 	addiu	sp,sp,-112
 360:	afb30020 	sw	s3,32(sp)
 364:	afb2001c 	sw	s2,28(sp)
 368:	afb10018 	sw	s1,24(sp)
 36c:	afbf0024 	sw	ra,36(sp)
 370:	afb00014 	sw	s0,20(sp)
 374:	00808825 	move	s1,a0
 378:	8c900000 	lw	s0,0(a0)
 37c:	00009025 	move	s2,zero
 380:	00009825 	move	s3,zero
 384:	27a30044 	addiu	v1,sp,68
 388:	02002025 	move	a0,s0
 38c:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 390:	afa30030 	sw	v1,48(sp)
 394:	8fa30030 	lw	v1,48(sp)
 398:	24010040 	li	at,64
 39c:	02429021 	addu	s2,s2,v0
 3a0:	ac620000 	sw	v0,0(v1)
 3a4:	920e0004 	lbu	t6,4(s0)
 3a8:	26730001 	addiu	s3,s3,1
 3ac:	26100004 	addiu	s0,s0,4
 3b0:	31cf00e0 	andi	t7,t6,0xe0
 3b4:	11e1fff4 	beq	t7,at,388 <func_8006BF1C+0x2c>
 3b8:	24630004 	addiu	v1,v1,4
 3bc:	56400004 	bnezl	s2,3d0 <func_8006BF1C+0x74>
 3c0:	44922000 	mtc1	s2,$f4
 3c4:	10000056 	b	520 <func_8006BF1C+0x1c4>
 3c8:	00001025 	move	v0,zero
 3cc:	44922000 	mtc1	s2,$f4
 3d0:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 3d4:	46802320 	cvt.s.w	$f12,$f4
 3d8:	4600018d 	trunc.w.s	$f6,$f0
 3dc:	00009025 	move	s2,zero
 3e0:	32650003 	andi	a1,s3,0x3
 3e4:	44023000 	mfc1	v0,$f6
 3e8:	5a60004d 	blezl	s3,520 <func_8006BF1C+0x1c4>
 3ec:	00001025 	move	v0,zero
 3f0:	10a00014 	beqz	a1,444 <func_8006BF1C+0xe8>
 3f4:	00a02025 	move	a0,a1
 3f8:	0000c880 	sll	t9,zero,0x2
 3fc:	27a80044 	addiu	t0,sp,68
 400:	03281821 	addu	v1,t9,t0
 404:	8c690000 	lw	t1,0(v1)
 408:	51200008 	beqzl	t1,42c <func_8006BF1C+0xd0>
 40c:	8e2a0000 	lw	t2,0(s1)
 410:	18400003 	blez	v0,420 <func_8006BF1C+0xc4>
 414:	00000000 	nop
 418:	10000003 	b	428 <func_8006BF1C+0xcc>
 41c:	2442ffff 	addiu	v0,v0,-1
 420:	1000003f 	b	520 <func_8006BF1C+0x1c4>
 424:	24020001 	li	v0,1
 428:	8e2a0000 	lw	t2,0(s1)
 42c:	26520001 	addiu	s2,s2,1
 430:	24630004 	addiu	v1,v1,4
 434:	254b0004 	addiu	t3,t2,4
 438:	1492fff2 	bne	a0,s2,404 <func_8006BF1C+0xa8>
 43c:	ae2b0000 	sw	t3,0(s1)
 440:	12530036 	beq	s2,s3,51c <func_8006BF1C+0x1c0>
 444:	00126080 	sll	t4,s2,0x2
 448:	27ad0044 	addiu	t5,sp,68
 44c:	018d1821 	addu	v1,t4,t5
 450:	8c6e0000 	lw	t6,0(v1)
 454:	51c00008 	beqzl	t6,478 <func_8006BF1C+0x11c>
 458:	8e2f0000 	lw	t7,0(s1)
 45c:	18400003 	blez	v0,46c <func_8006BF1C+0x110>
 460:	00000000 	nop
 464:	10000003 	b	474 <func_8006BF1C+0x118>
 468:	2442ffff 	addiu	v0,v0,-1
 46c:	1000002c 	b	520 <func_8006BF1C+0x1c4>
 470:	24020001 	li	v0,1
 474:	8e2f0000 	lw	t7,0(s1)
 478:	25f80004 	addiu	t8,t7,4
 47c:	ae380000 	sw	t8,0(s1)
 480:	8c790004 	lw	t9,4(v1)
 484:	53200008 	beqzl	t9,4a8 <func_8006BF1C+0x14c>
 488:	8e280000 	lw	t0,0(s1)
 48c:	18400003 	blez	v0,49c <func_8006BF1C+0x140>
 490:	00000000 	nop
 494:	10000003 	b	4a4 <func_8006BF1C+0x148>
 498:	2442ffff 	addiu	v0,v0,-1
 49c:	10000020 	b	520 <func_8006BF1C+0x1c4>
 4a0:	24020001 	li	v0,1
 4a4:	8e280000 	lw	t0,0(s1)
 4a8:	25090004 	addiu	t1,t0,4
 4ac:	ae290000 	sw	t1,0(s1)
 4b0:	8c6a0008 	lw	t2,8(v1)
 4b4:	51400008 	beqzl	t2,4d8 <func_8006BF1C+0x17c>
 4b8:	8e2b0000 	lw	t3,0(s1)
 4bc:	18400003 	blez	v0,4cc <func_8006BF1C+0x170>
 4c0:	00000000 	nop
 4c4:	10000003 	b	4d4 <func_8006BF1C+0x178>
 4c8:	2442ffff 	addiu	v0,v0,-1
 4cc:	10000014 	b	520 <func_8006BF1C+0x1c4>
 4d0:	24020001 	li	v0,1
 4d4:	8e2b0000 	lw	t3,0(s1)
 4d8:	256c0004 	addiu	t4,t3,4
 4dc:	ae2c0000 	sw	t4,0(s1)
 4e0:	8c6d000c 	lw	t5,12(v1)
 4e4:	51a00008 	beqzl	t5,508 <func_8006BF1C+0x1ac>
 4e8:	8e2e0000 	lw	t6,0(s1)
 4ec:	18400003 	blez	v0,4fc <func_8006BF1C+0x1a0>
 4f0:	00000000 	nop
 4f4:	10000003 	b	504 <func_8006BF1C+0x1a8>
 4f8:	2442ffff 	addiu	v0,v0,-1
 4fc:	10000008 	b	520 <func_8006BF1C+0x1c4>
 500:	24020001 	li	v0,1
 504:	8e2e0000 	lw	t6,0(s1)
 508:	26520004 	addiu	s2,s2,4
 50c:	24630010 	addiu	v1,v1,16
 510:	25cf0004 	addiu	t7,t6,4
 514:	1653ffce 	bne	s2,s3,450 <func_8006BF1C+0xf4>
 518:	ae2f0000 	sw	t7,0(s1)
 51c:	00001025 	move	v0,zero
 520:	8fbf0024 	lw	ra,36(sp)
 524:	8fb00014 	lw	s0,20(sp)
 528:	8fb10018 	lw	s1,24(sp)
 52c:	8fb2001c 	lw	s2,28(sp)
 530:	8fb30020 	lw	s3,32(sp)
 534:	03e00008 	jr	ra
 538:	27bd0070 	addiu	sp,sp,112

0000053c <ElfMessage_GetTextFromMsgs>:
 53c:	27bdffc0 	addiu	sp,sp,-64
 540:	afbe0038 	sw	s8,56(sp)
 544:	afb70034 	sw	s7,52(sp)
 548:	afb60030 	sw	s6,48(sp)
 54c:	afb5002c 	sw	s5,44(sp)
 550:	afb40028 	sw	s4,40(sp)
 554:	afb30024 	sw	s3,36(sp)
 558:	afb20020 	sw	s2,32(sp)
 55c:	afb1001c 	sw	s1,28(sp)
 560:	afb00018 	sw	s0,24(sp)
 564:	3c150000 	lui	s5,0x0
 568:	3c160000 	lui	s6,0x0
 56c:	3c170000 	lui	s7,0x0
 570:	3c1e0000 	lui	s8,0x0
 574:	afbf003c 	sw	ra,60(sp)
 578:	afa40040 	sw	a0,64(sp)
 57c:	27de0080 	addiu	s8,s8,128
 580:	26f70074 	addiu	s7,s7,116
 584:	26d60060 	addiu	s6,s6,96
 588:	26b5004c 	addiu	s5,s5,76
 58c:	27b00040 	addiu	s0,sp,64
 590:	24110020 	li	s1,32
 594:	24120040 	li	s2,64
 598:	24130060 	li	s3,96
 59c:	241400e0 	li	s4,224
 5a0:	8fae0040 	lw	t6,64(sp)
 5a4:	91c20000 	lbu	v0,0(t6)
 5a8:	304200e0 	andi	v0,v0,0xe0
 5ac:	1040000b 	beqz	v0,5dc <ElfMessage_GetTextFromMsgs+0xa0>
 5b0:	00000000 	nop
 5b4:	10510012 	beq	v0,s1,600 <ElfMessage_GetTextFromMsgs+0xc4>
 5b8:	00000000 	nop
 5bc:	10520019 	beq	v0,s2,624 <ElfMessage_GetTextFromMsgs+0xe8>
 5c0:	00000000 	nop
 5c4:	10530020 	beq	v0,s3,648 <ElfMessage_GetTextFromMsgs+0x10c>
 5c8:	02a02025 	move	a0,s5
 5cc:	5054002a 	beql	v0,s4,678 <ElfMessage_GetTextFromMsgs+0x13c>
 5d0:	8fae0040 	lw	t6,64(sp)
 5d4:	1000002c 	b	688 <ElfMessage_GetTextFromMsgs+0x14c>
 5d8:	00000000 	nop
 5dc:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 5e0:	8fa40040 	lw	a0,64(sp)
 5e4:	50400033 	beqzl	v0,6b4 <ElfMessage_GetTextFromMsgs+0x178>
 5e8:	8faf0040 	lw	t7,64(sp)
 5ec:	8faf0040 	lw	t7,64(sp)
 5f0:	91e20002 	lbu	v0,2(t7)
 5f4:	34420100 	ori	v0,v0,0x100
 5f8:	10000031 	b	6c0 <ElfMessage_GetTextFromMsgs+0x184>
 5fc:	3042ffff 	andi	v0,v0,0xffff
 600:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 604:	02002025 	move	a0,s0
 608:	5040002a 	beqzl	v0,6b4 <ElfMessage_GetTextFromMsgs+0x178>
 60c:	8faf0040 	lw	t7,64(sp)
 610:	8fb80040 	lw	t8,64(sp)
 614:	93020002 	lbu	v0,2(t8)
 618:	34420100 	ori	v0,v0,0x100
 61c:	10000028 	b	6c0 <ElfMessage_GetTextFromMsgs+0x184>
 620:	3042ffff 	andi	v0,v0,0xffff
 624:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 628:	02002025 	move	a0,s0
 62c:	50400021 	beqzl	v0,6b4 <ElfMessage_GetTextFromMsgs+0x178>
 630:	8faf0040 	lw	t7,64(sp)
 634:	8fb90040 	lw	t9,64(sp)
 638:	93220002 	lbu	v0,2(t9)
 63c:	34420100 	ori	v0,v0,0x100
 640:	1000001f 	b	6c0 <ElfMessage_GetTextFromMsgs+0x184>
 644:	3042ffff 	andi	v0,v0,0xffff
 648:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 64c:	8fa40040 	lw	a0,64(sp)
 650:	10400017 	beqz	v0,6b0 <ElfMessage_GetTextFromMsgs+0x174>
 654:	8fa80040 	lw	t0,64(sp)
 658:	910a0002 	lbu	t2,2(t0)
 65c:	000a5880 	sll	t3,t2,0x2
 660:	010b6021 	addu	t4,t0,t3
 664:	afac0040 	sw	t4,64(sp)
 668:	258dfffc 	addiu	t5,t4,-4
 66c:	10000010 	b	6b0 <ElfMessage_GetTextFromMsgs+0x174>
 670:	afad0040 	sw	t5,64(sp)
 674:	8fae0040 	lw	t6,64(sp)
 678:	91c20002 	lbu	v0,2(t6)
 67c:	34420100 	ori	v0,v0,0x100
 680:	1000000f 	b	6c0 <ElfMessage_GetTextFromMsgs+0x184>
 684:	3042ffff 	andi	v0,v0,0xffff
 688:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 68c:	24050119 	li	a1,281
 690:	02c02025 	move	a0,s6
 694:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 698:	02e02825 	move	a1,s7
 69c:	3c050000 	lui	a1,0x0
 6a0:	24a50084 	addiu	a1,a1,132
 6a4:	03c02025 	move	a0,s8
 6a8:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 6ac:	2406011a 	li	a2,282
 6b0:	8faf0040 	lw	t7,64(sp)
 6b4:	25f80004 	addiu	t8,t7,4
 6b8:	1000ffb9 	b	5a0 <ElfMessage_GetTextFromMsgs+0x64>
 6bc:	afb80040 	sw	t8,64(sp)
 6c0:	8fbf003c 	lw	ra,60(sp)
 6c4:	8fb00018 	lw	s0,24(sp)
 6c8:	8fb1001c 	lw	s1,28(sp)
 6cc:	8fb20020 	lw	s2,32(sp)
 6d0:	8fb30024 	lw	s3,36(sp)
 6d4:	8fb40028 	lw	s4,40(sp)
 6d8:	8fb5002c 	lw	s5,44(sp)
 6dc:	8fb60030 	lw	s6,48(sp)
 6e0:	8fb70034 	lw	s7,52(sp)
 6e4:	8fbe0038 	lw	s8,56(sp)
 6e8:	03e00008 	jr	ra
 6ec:	27bd0040 	addiu	sp,sp,64

000006f0 <ElfMessage_GetSariaText>:
 6f0:	3c0e0000 	lui	t6,0x0
 6f4:	8dce0004 	lw	t6,4(t6)
 6f8:	27bdffe0 	addiu	sp,sp,-32
 6fc:	afbf001c 	sw	ra,28(sp)
 700:	11c0000d 	beqz	t6,738 <ElfMessage_GetSariaText+0x48>
 704:	8c851c44 	lw	a1,7236(a0)
 708:	3c014448 	lui	at,0x4448
 70c:	44812000 	mtc1	at,$f4
 710:	24060146 	li	a2,326
 714:	24070004 	li	a3,4
 718:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 71c:	e7a40010 	swc1	$f4,16(sp)
 720:	14400003 	bnez	v0,730 <ElfMessage_GetSariaText+0x40>
 724:	3c040000 	lui	a0,0x0
 728:	10000005 	b	740 <ElfMessage_GetSariaText+0x50>
 72c:	24840000 	addiu	a0,a0,0
 730:	10000005 	b	748 <ElfMessage_GetSariaText+0x58>
 734:	24020160 	li	v0,352
 738:	3c040000 	lui	a0,0x0
 73c:	24840000 	addiu	a0,a0,0
 740:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 744:	00000000 	nop
 748:	8fbf001c 	lw	ra,28(sp)
 74c:	27bd0020 	addiu	sp,sp,32
 750:	03e00008 	jr	ra
 754:	00000000 	nop

00000758 <ElfMessage_GetCUpText>:
 758:	27bdffe8 	addiu	sp,sp,-24
 75c:	3c050001 	lui	a1,0x1
 760:	afbf0014 	sw	ra,20(sp)
 764:	00a42821 	addu	a1,a1,a0
 768:	8ca51e0c 	lw	a1,7692(a1)
 76c:	14a00003 	bnez	a1,77c <ElfMessage_GetCUpText+0x24>
 770:	00000000 	nop
 774:	10000003 	b	784 <ElfMessage_GetCUpText+0x2c>
 778:	00001025 	move	v0,zero
 77c:	0c000000 	jal	0 <ElfMessage_CheckCondition>
 780:	00a02025 	move	a0,a1
 784:	8fbf0014 	lw	ra,20(sp)
 788:	27bd0018 	addiu	sp,sp,24
 78c:	03e00008 	jr	ra
 790:	00000000 	nop
	...
