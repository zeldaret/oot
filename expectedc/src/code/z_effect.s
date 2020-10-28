
build/src/code/z_effect.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Effect_GetGlobalCtx>:
   0:	3c020000 	lui	v0,0x0
   4:	03e00008 	jr	ra
   8:	8c420000 	lw	v0,0(v0)

0000000c <Effect_GetByIndex>:
   c:	2401001f 	li	at,31
  10:	54810004 	bnel	a0,at,24 <Effect_GetByIndex+0x18>
  14:	28810003 	slti	at,a0,3
  18:	03e00008 	jr	ra
  1c:	00001025 	move	v0,zero
  20:	28810003 	slti	at,a0,3
  24:	10200012 	beqz	at,70 <Effect_GetByIndex+0x64>
  28:	00047080 	sll	t6,a0,0x2
  2c:	01c47021 	addu	t6,t6,a0
  30:	000e7080 	sll	t6,t6,0x2
  34:	01c47023 	subu	t6,t6,a0
  38:	000e70c0 	sll	t6,t6,0x3
  3c:	01c47021 	addu	t6,t6,a0
  40:	3c0f0000 	lui	t7,0x0
  44:	25ef0000 	addiu	t7,t7,0
  48:	000e70c0 	sll	t6,t6,0x3
  4c:	01cf1821 	addu	v1,t6,t7
  50:	90780004 	lbu	t8,4(v1)
  54:	24010001 	li	at,1
  58:	17010003 	bne	t8,at,68 <Effect_GetByIndex+0x5c>
  5c:	00000000 	nop
  60:	03e00008 	jr	ra
  64:	24620008 	addiu	v0,v1,8
  68:	03e00008 	jr	ra
  6c:	00001025 	move	v0,zero
  70:	2484fffd 	addiu	a0,a0,-3
  74:	28810019 	slti	at,a0,25
  78:	10200010 	beqz	at,bc <Effect_GetByIndex+0xb0>
  7c:	0004c8c0 	sll	t9,a0,0x3
  80:	0324c823 	subu	t9,t9,a0
  84:	0019c880 	sll	t9,t9,0x2
  88:	0324c823 	subu	t9,t9,a0
  8c:	3c080000 	lui	t0,0x0
  90:	25080000 	addiu	t0,t0,0
  94:	0019c900 	sll	t9,t9,0x4
  98:	03281821 	addu	v1,t9,t0
  9c:	90690e5c 	lbu	t1,3676(v1)
  a0:	24010001 	li	at,1
  a4:	15210003 	bne	t1,at,b4 <Effect_GetByIndex+0xa8>
  a8:	00000000 	nop
  ac:	03e00008 	jr	ra
  b0:	24620e60 	addiu	v0,v1,3680
  b4:	03e00008 	jr	ra
  b8:	00001025 	move	v0,zero
  bc:	2484ffe7 	addiu	a0,a0,-25
  c0:	28810003 	slti	at,a0,3
  c4:	10200013 	beqz	at,114 <Effect_GetByIndex+0x108>
  c8:	00001025 	move	v0,zero
  cc:	000450c0 	sll	t2,a0,0x3
  d0:	01445023 	subu	t2,t2,a0
  d4:	000a5080 	sll	t2,t2,0x2
  d8:	01445021 	addu	t2,t2,a0
  dc:	000a5080 	sll	t2,t2,0x2
  e0:	01445023 	subu	t2,t2,a0
  e4:	3c0b0000 	lui	t3,0x0
  e8:	256b0000 	addiu	t3,t3,0
  ec:	000a5080 	sll	t2,t2,0x2
  f0:	014b1821 	addu	v1,t2,t3
  f4:	906c388c 	lbu	t4,14476(v1)
  f8:	24010001 	li	at,1
  fc:	15810003 	bne	t4,at,10c <Effect_GetByIndex+0x100>
 100:	00000000 	nop
 104:	03e00008 	jr	ra
 108:	24623890 	addiu	v0,v1,14480
 10c:	03e00008 	jr	ra
 110:	00001025 	move	v0,zero
 114:	03e00008 	jr	ra
 118:	00000000 	nop

0000011c <Effect_InitStatus>:
 11c:	a0800000 	sb	zero,0(a0)
 120:	a0800001 	sb	zero,1(a0)
 124:	03e00008 	jr	ra
 128:	a0800002 	sb	zero,2(a0)

0000012c <Effect_InitContext>:
 12c:	27bdffe0 	addiu	sp,sp,-32
 130:	afb10018 	sw	s1,24(sp)
 134:	afb00014 	sw	s0,20(sp)
 138:	3c100000 	lui	s0,0x0
 13c:	3c110000 	lui	s1,0x0
 140:	afbf001c 	sw	ra,28(sp)
 144:	afa40020 	sw	a0,32(sp)
 148:	26310e5c 	addiu	s1,s1,3676
 14c:	26100004 	addiu	s0,s0,4
 150:	0c000000 	jal	0 <Effect_GetGlobalCtx>
 154:	02002025 	move	a0,s0
 158:	261004c8 	addiu	s0,s0,1224
 15c:	0211082b 	sltu	at,s0,s1
 160:	1420fffb 	bnez	at,150 <Effect_InitContext+0x24>
 164:	00000000 	nop
 168:	3c100000 	lui	s0,0x0
 16c:	3c110000 	lui	s1,0x0
 170:	2631388c 	addiu	s1,s1,14476
 174:	26100e5c 	addiu	s0,s0,3676
 178:	0c000000 	jal	0 <Effect_GetGlobalCtx>
 17c:	02002025 	move	a0,s0
 180:	261001b0 	addiu	s0,s0,432
 184:	0211082b 	sltu	at,s0,s1
 188:	1420fffb 	bnez	at,178 <Effect_InitContext+0x4c>
 18c:	00000000 	nop
 190:	3c100000 	lui	s0,0x0
 194:	3c110000 	lui	s1,0x0
 198:	2631136c 	addiu	s1,s1,4972
 19c:	26100e5c 	addiu	s0,s0,3676
 1a0:	0c000000 	jal	0 <Effect_GetGlobalCtx>
 1a4:	02002025 	move	a0,s0
 1a8:	261001b0 	addiu	s0,s0,432
 1ac:	1611fffc 	bne	s0,s1,1a0 <Effect_InitContext+0x74>
 1b0:	00000000 	nop
 1b4:	8fbf001c 	lw	ra,28(sp)
 1b8:	8fae0020 	lw	t6,32(sp)
 1bc:	3c010000 	lui	at,0x0
 1c0:	8fb00014 	lw	s0,20(sp)
 1c4:	8fb10018 	lw	s1,24(sp)
 1c8:	27bd0020 	addiu	sp,sp,32
 1cc:	03e00008 	jr	ra
 1d0:	ac2e0000 	sw	t6,0(at)

000001d4 <Effect_Add>:
 1d4:	27bdffd8 	addiu	sp,sp,-40
 1d8:	afbf0014 	sw	ra,20(sp)
 1dc:	afa5002c 	sw	a1,44(sp)
 1e0:	afa70034 	sw	a3,52(sp)
 1e4:	afa0001c 	sw	zero,28(sp)
 1e8:	240e001f 	li	t6,31
 1ec:	acae0000 	sw	t6,0(a1)
 1f0:	afa00018 	sw	zero,24(sp)
 1f4:	0c000000 	jal	0 <Effect_GetGlobalCtx>
 1f8:	afa60030 	sw	a2,48(sp)
 1fc:	24030001 	li	v1,1
 200:	8fa60030 	lw	a2,48(sp)
 204:	8fa7001c 	lw	a3,28(sp)
 208:	8fa80018 	lw	t0,24(sp)
 20c:	10430055 	beq	v0,v1,364 <Effect_Add+0x190>
 210:	8fa9002c 	lw	t1,44(sp)
 214:	10c00009 	beqz	a2,23c <Effect_Add+0x68>
 218:	00002825 	move	a1,zero
 21c:	10c30018 	beq	a2,v1,280 <Effect_Add+0xac>
 220:	24010002 	li	at,2
 224:	10c10016 	beq	a2,at,280 <Effect_Add+0xac>
 228:	24040003 	li	a0,3
 22c:	10c40025 	beq	a2,a0,2c4 <Effect_Add+0xf0>
 230:	00001025 	move	v0,zero
 234:	10000030 	b	2f8 <Effect_Add+0x124>
 238:	00000000 	nop
 23c:	3c030000 	lui	v1,0x0
 240:	24630000 	addiu	v1,v1,0
 244:	00001025 	move	v0,zero
 248:	24040003 	li	a0,3
 24c:	90780004 	lbu	t8,4(v1)
 250:	57000007 	bnezl	t8,270 <Effect_Add+0x9c>
 254:	24420001 	addiu	v0,v0,1
 258:	24050001 	li	a1,1
 25c:	ad220000 	sw	v0,0(t1)
 260:	24670008 	addiu	a3,v1,8
 264:	10000024 	b	2f8 <Effect_Add+0x124>
 268:	24680004 	addiu	t0,v1,4
 26c:	24420001 	addiu	v0,v0,1
 270:	1444fff6 	bne	v0,a0,24c <Effect_Add+0x78>
 274:	246304c8 	addiu	v1,v1,1224
 278:	1000001f 	b	2f8 <Effect_Add+0x124>
 27c:	00000000 	nop
 280:	3c030000 	lui	v1,0x0
 284:	24630000 	addiu	v1,v1,0
 288:	00001025 	move	v0,zero
 28c:	24040019 	li	a0,25
 290:	90790e5c 	lbu	t9,3676(v1)
 294:	17200006 	bnez	t9,2b0 <Effect_Add+0xdc>
 298:	244a0003 	addiu	t2,v0,3
 29c:	24050001 	li	a1,1
 2a0:	ad2a0000 	sw	t2,0(t1)
 2a4:	24670e60 	addiu	a3,v1,3680
 2a8:	10000013 	b	2f8 <Effect_Add+0x124>
 2ac:	24680e5c 	addiu	t0,v1,3676
 2b0:	24420001 	addiu	v0,v0,1
 2b4:	1444fff6 	bne	v0,a0,290 <Effect_Add+0xbc>
 2b8:	246301b0 	addiu	v1,v1,432
 2bc:	1000000e 	b	2f8 <Effect_Add+0x124>
 2c0:	00000000 	nop
 2c4:	3c030000 	lui	v1,0x0
 2c8:	24630000 	addiu	v1,v1,0
 2cc:	906b388c 	lbu	t3,14476(v1)
 2d0:	15600006 	bnez	t3,2ec <Effect_Add+0x118>
 2d4:	244c001c 	addiu	t4,v0,28
 2d8:	24050001 	li	a1,1
 2dc:	ad2c0000 	sw	t4,0(t1)
 2e0:	24673890 	addiu	a3,v1,14480
 2e4:	10000004 	b	2f8 <Effect_Add+0x124>
 2e8:	2468388c 	addiu	t0,v1,14476
 2ec:	24420001 	addiu	v0,v0,1
 2f0:	1444fff6 	bne	v0,a0,2cc <Effect_Add+0xf8>
 2f4:	246301cc 	addiu	v1,v1,460
 2f8:	14a0000a 	bnez	a1,324 <Effect_Add+0x150>
 2fc:	00066880 	sll	t5,a2,0x2
 300:	3c040000 	lui	a0,0x0
 304:	24840000 	addiu	a0,a0,0
 308:	0c000000 	jal	0 <Effect_GetGlobalCtx>
 30c:	00c02825 	move	a1,a2
 310:	3c040000 	lui	a0,0x0
 314:	0c000000 	jal	0 <Effect_GetGlobalCtx>
 318:	24840038 	addiu	a0,a0,56
 31c:	10000012 	b	368 <Effect_Add+0x194>
 320:	8fbf0014 	lw	ra,20(sp)
 324:	01a66821 	addu	t5,t5,a2
 328:	000d6880 	sll	t5,t5,0x2
 32c:	3c190000 	lui	t9,0x0
 330:	032dc821 	addu	t9,t9,t5
 334:	8f390004 	lw	t9,4(t9)
 338:	00e02025 	move	a0,a3
 33c:	8fa5003c 	lw	a1,60(sp)
 340:	0320f809 	jalr	t9
 344:	afa80018 	sw	t0,24(sp)
 348:	8fa80018 	lw	t0,24(sp)
 34c:	93ae0037 	lbu	t6,55(sp)
 350:	24180001 	li	t8,1
 354:	a10e0002 	sb	t6,2(t0)
 358:	93af003b 	lbu	t7,59(sp)
 35c:	a1180000 	sb	t8,0(t0)
 360:	a10f0001 	sb	t7,1(t0)
 364:	8fbf0014 	lw	ra,20(sp)
 368:	27bd0028 	addiu	sp,sp,40
 36c:	03e00008 	jr	ra
 370:	00000000 	nop

00000374 <Effect_DrawAll>:
 374:	27bdffd8 	addiu	sp,sp,-40
 378:	afb30020 	sw	s3,32(sp)
 37c:	afb2001c 	sw	s2,28(sp)
 380:	afb00014 	sw	s0,20(sp)
 384:	afb10018 	sw	s1,24(sp)
 388:	3c100000 	lui	s0,0x0
 38c:	3c120000 	lui	s2,0x0
 390:	3c130000 	lui	s3,0x0
 394:	00808825 	move	s1,a0
 398:	afbf0024 	sw	ra,36(sp)
 39c:	26730000 	addiu	s3,s3,0
 3a0:	26520e58 	addiu	s2,s2,3672
 3a4:	26100000 	addiu	s0,s0,0
 3a8:	920e0004 	lbu	t6,4(s0)
 3ac:	51c00007 	beqzl	t6,3cc <Effect_DrawAll+0x58>
 3b0:	261004c8 	addiu	s0,s0,1224
 3b4:	8e790010 	lw	t9,16(s3)
 3b8:	26040008 	addiu	a0,s0,8
 3bc:	02202825 	move	a1,s1
 3c0:	0320f809 	jalr	t9
 3c4:	00000000 	nop
 3c8:	261004c8 	addiu	s0,s0,1224
 3cc:	0212082b 	sltu	at,s0,s2
 3d0:	5420fff6 	bnezl	at,3ac <Effect_DrawAll+0x38>
 3d4:	920e0004 	lbu	t6,4(s0)
 3d8:	3c100000 	lui	s0,0x0
 3dc:	3c120000 	lui	s2,0x0
 3e0:	26522a30 	addiu	s2,s2,10800
 3e4:	26100000 	addiu	s0,s0,0
 3e8:	920f0e5c 	lbu	t7,3676(s0)
 3ec:	51e00007 	beqzl	t7,40c <Effect_DrawAll+0x98>
 3f0:	261001b0 	addiu	s0,s0,432
 3f4:	8e790024 	lw	t9,36(s3)
 3f8:	26040e60 	addiu	a0,s0,3680
 3fc:	02202825 	move	a1,s1
 400:	0320f809 	jalr	t9
 404:	00000000 	nop
 408:	261001b0 	addiu	s0,s0,432
 40c:	0212082b 	sltu	at,s0,s2
 410:	5420fff6 	bnezl	at,3ec <Effect_DrawAll+0x78>
 414:	920f0e5c 	lbu	t7,3676(s0)
 418:	3c100000 	lui	s0,0x0
 41c:	3c120000 	lui	s2,0x0
 420:	26520564 	addiu	s2,s2,1380
 424:	26100000 	addiu	s0,s0,0
 428:	9218388c 	lbu	t8,14476(s0)
 42c:	53000007 	beqzl	t8,44c <Effect_DrawAll+0xd8>
 430:	261001cc 	addiu	s0,s0,460
 434:	8e79004c 	lw	t9,76(s3)
 438:	26043890 	addiu	a0,s0,14480
 43c:	02202825 	move	a1,s1
 440:	0320f809 	jalr	t9
 444:	00000000 	nop
 448:	261001cc 	addiu	s0,s0,460
 44c:	5612fff7 	bnel	s0,s2,42c <Effect_DrawAll+0xb8>
 450:	9218388c 	lbu	t8,14476(s0)
 454:	8fbf0024 	lw	ra,36(sp)
 458:	8fb00014 	lw	s0,20(sp)
 45c:	8fb10018 	lw	s1,24(sp)
 460:	8fb2001c 	lw	s2,28(sp)
 464:	8fb30020 	lw	s3,32(sp)
 468:	03e00008 	jr	ra
 46c:	27bd0028 	addiu	sp,sp,40

00000470 <Effect_UpdateAll>:
 470:	27bdffd0 	addiu	sp,sp,-48
 474:	afb30020 	sw	s3,32(sp)
 478:	afb10018 	sw	s1,24(sp)
 47c:	afb40024 	sw	s4,36(sp)
 480:	afb2001c 	sw	s2,28(sp)
 484:	afb00014 	sw	s0,20(sp)
 488:	3c110000 	lui	s1,0x0
 48c:	3c130000 	lui	s3,0x0
 490:	00809025 	move	s2,a0
 494:	afbf002c 	sw	ra,44(sp)
 498:	afb50028 	sw	s5,40(sp)
 49c:	26730000 	addiu	s3,s3,0
 4a0:	26310000 	addiu	s1,s1,0
 4a4:	00008025 	move	s0,zero
 4a8:	24140001 	li	s4,1
 4ac:	922e0004 	lbu	t6,4(s1)
 4b0:	51c0000a 	beqzl	t6,4dc <Effect_UpdateAll+0x6c>
 4b4:	26100001 	addiu	s0,s0,1
 4b8:	8e79000c 	lw	t9,12(s3)
 4bc:	26240008 	addiu	a0,s1,8
 4c0:	0320f809 	jalr	t9
 4c4:	00000000 	nop
 4c8:	14540003 	bne	v0,s4,4d8 <Effect_UpdateAll+0x68>
 4cc:	02402025 	move	a0,s2
 4d0:	0c000000 	jal	0 <Effect_GetGlobalCtx>
 4d4:	02002825 	move	a1,s0
 4d8:	26100001 	addiu	s0,s0,1
 4dc:	2a010003 	slti	at,s0,3
 4e0:	1420fff2 	bnez	at,4ac <Effect_UpdateAll+0x3c>
 4e4:	263104c8 	addiu	s1,s1,1224
 4e8:	3c110000 	lui	s1,0x0
 4ec:	26310000 	addiu	s1,s1,0
 4f0:	00008025 	move	s0,zero
 4f4:	922f0e5c 	lbu	t7,3676(s1)
 4f8:	51e0000a 	beqzl	t7,524 <Effect_UpdateAll+0xb4>
 4fc:	26100001 	addiu	s0,s0,1
 500:	8e790020 	lw	t9,32(s3)
 504:	26240e60 	addiu	a0,s1,3680
 508:	0320f809 	jalr	t9
 50c:	00000000 	nop
 510:	14540003 	bne	v0,s4,520 <Effect_UpdateAll+0xb0>
 514:	02402025 	move	a0,s2
 518:	0c000000 	jal	0 <Effect_GetGlobalCtx>
 51c:	26050003 	addiu	a1,s0,3
 520:	26100001 	addiu	s0,s0,1
 524:	2a010019 	slti	at,s0,25
 528:	1420fff2 	bnez	at,4f4 <Effect_UpdateAll+0x84>
 52c:	263101b0 	addiu	s1,s1,432
 530:	3c110000 	lui	s1,0x0
 534:	26310000 	addiu	s1,s1,0
 538:	00008025 	move	s0,zero
 53c:	24150003 	li	s5,3
 540:	9238388c 	lbu	t8,14476(s1)
 544:	5300000a 	beqzl	t8,570 <Effect_UpdateAll+0x100>
 548:	26100001 	addiu	s0,s0,1
 54c:	8e790048 	lw	t9,72(s3)
 550:	26243890 	addiu	a0,s1,14480
 554:	0320f809 	jalr	t9
 558:	00000000 	nop
 55c:	14540003 	bne	v0,s4,56c <Effect_UpdateAll+0xfc>
 560:	02402025 	move	a0,s2
 564:	0c000000 	jal	0 <Effect_GetGlobalCtx>
 568:	2605001c 	addiu	a1,s0,28
 56c:	26100001 	addiu	s0,s0,1
 570:	1615fff3 	bne	s0,s5,540 <Effect_UpdateAll+0xd0>
 574:	263101cc 	addiu	s1,s1,460
 578:	8fbf002c 	lw	ra,44(sp)
 57c:	8fb00014 	lw	s0,20(sp)
 580:	8fb10018 	lw	s1,24(sp)
 584:	8fb2001c 	lw	s2,28(sp)
 588:	8fb30020 	lw	s3,32(sp)
 58c:	8fb40024 	lw	s4,36(sp)
 590:	8fb50028 	lw	s5,40(sp)
 594:	03e00008 	jr	ra
 598:	27bd0030 	addiu	sp,sp,48

0000059c <Effect_Delete>:
 59c:	27bdffe8 	addiu	sp,sp,-24
 5a0:	2401001f 	li	at,31
 5a4:	afbf0014 	sw	ra,20(sp)
 5a8:	10a1003b 	beq	a1,at,698 <Effect_Delete+0xfc>
 5ac:	afa40018 	sw	a0,24(sp)
 5b0:	28a10003 	slti	at,a1,3
 5b4:	10200012 	beqz	at,600 <Effect_Delete+0x64>
 5b8:	00057080 	sll	t6,a1,0x2
 5bc:	01c57021 	addu	t6,t6,a1
 5c0:	000e7080 	sll	t6,t6,0x2
 5c4:	01c57023 	subu	t6,t6,a1
 5c8:	000e70c0 	sll	t6,t6,0x3
 5cc:	01c57021 	addu	t6,t6,a1
 5d0:	3c0f0000 	lui	t7,0x0
 5d4:	25ef0000 	addiu	t7,t7,0
 5d8:	000e70c0 	sll	t6,t6,0x3
 5dc:	01cf1021 	addu	v0,t6,t7
 5e0:	a0400004 	sb	zero,4(v0)
 5e4:	3c190000 	lui	t9,0x0
 5e8:	8f390008 	lw	t9,8(t9)
 5ec:	24440008 	addiu	a0,v0,8
 5f0:	0320f809 	jalr	t9
 5f4:	00000000 	nop
 5f8:	10000028 	b	69c <Effect_Delete+0x100>
 5fc:	8fbf0014 	lw	ra,20(sp)
 600:	24a5fffd 	addiu	a1,a1,-3
 604:	28a10019 	slti	at,a1,25
 608:	10200010 	beqz	at,64c <Effect_Delete+0xb0>
 60c:	0005c0c0 	sll	t8,a1,0x3
 610:	0305c023 	subu	t8,t8,a1
 614:	0018c080 	sll	t8,t8,0x2
 618:	0305c023 	subu	t8,t8,a1
 61c:	3c080000 	lui	t0,0x0
 620:	25080000 	addiu	t0,t0,0
 624:	0018c100 	sll	t8,t8,0x4
 628:	03081021 	addu	v0,t8,t0
 62c:	a0400e5c 	sb	zero,3676(v0)
 630:	3c190000 	lui	t9,0x0
 634:	8f39001c 	lw	t9,28(t9)
 638:	24440e60 	addiu	a0,v0,3680
 63c:	0320f809 	jalr	t9
 640:	00000000 	nop
 644:	10000015 	b	69c <Effect_Delete+0x100>
 648:	8fbf0014 	lw	ra,20(sp)
 64c:	24a5ffe7 	addiu	a1,a1,-25
 650:	28a10003 	slti	at,a1,3
 654:	10200010 	beqz	at,698 <Effect_Delete+0xfc>
 658:	000548c0 	sll	t1,a1,0x3
 65c:	01254823 	subu	t1,t1,a1
 660:	00094880 	sll	t1,t1,0x2
 664:	01254821 	addu	t1,t1,a1
 668:	00094880 	sll	t1,t1,0x2
 66c:	01254823 	subu	t1,t1,a1
 670:	3c0a0000 	lui	t2,0x0
 674:	254a0000 	addiu	t2,t2,0
 678:	00094880 	sll	t1,t1,0x2
 67c:	012a1021 	addu	v0,t1,t2
 680:	a040388c 	sb	zero,14476(v0)
 684:	3c190000 	lui	t9,0x0
 688:	8f390044 	lw	t9,68(t9)
 68c:	24443890 	addiu	a0,v0,14480
 690:	0320f809 	jalr	t9
 694:	00000000 	nop
 698:	8fbf0014 	lw	ra,20(sp)
 69c:	27bd0018 	addiu	sp,sp,24
 6a0:	03e00008 	jr	ra
 6a4:	00000000 	nop

000006a8 <Effect_DeleteAll>:
 6a8:	27bdffd8 	addiu	sp,sp,-40
 6ac:	afa40028 	sw	a0,40(sp)
 6b0:	afbf0024 	sw	ra,36(sp)
 6b4:	3c040000 	lui	a0,0x0
 6b8:	afb30020 	sw	s3,32(sp)
 6bc:	afb2001c 	sw	s2,28(sp)
 6c0:	afb10018 	sw	s1,24(sp)
 6c4:	afb00014 	sw	s0,20(sp)
 6c8:	0c000000 	jal	0 <Effect_GetGlobalCtx>
 6cc:	2484005c 	addiu	a0,a0,92
 6d0:	3c110000 	lui	s1,0x0
 6d4:	3c100000 	lui	s0,0x0
 6d8:	3c130000 	lui	s3,0x0
 6dc:	3c120000 	lui	s2,0x0
 6e0:	26520000 	addiu	s2,s2,0
 6e4:	26730e60 	addiu	s3,s3,3680
 6e8:	26100008 	addiu	s0,s0,8
 6ec:	26310000 	addiu	s1,s1,0
 6f0:	8e590008 	lw	t9,8(s2)
 6f4:	a2200004 	sb	zero,4(s1)
 6f8:	02002025 	move	a0,s0
 6fc:	0320f809 	jalr	t9
 700:	00000000 	nop
 704:	261004c8 	addiu	s0,s0,1224
 708:	0213082b 	sltu	at,s0,s3
 70c:	1420fff8 	bnez	at,6f0 <Effect_DeleteAll+0x48>
 710:	263104c8 	addiu	s1,s1,1224
 714:	3c110000 	lui	s1,0x0
 718:	3c100000 	lui	s0,0x0
 71c:	3c130000 	lui	s3,0x0
 720:	26733890 	addiu	s3,s3,14480
 724:	26100e60 	addiu	s0,s0,3680
 728:	26310000 	addiu	s1,s1,0
 72c:	8e59001c 	lw	t9,28(s2)
 730:	a2200e5c 	sb	zero,3676(s1)
 734:	02002025 	move	a0,s0
 738:	0320f809 	jalr	t9
 73c:	00000000 	nop
 740:	261001b0 	addiu	s0,s0,432
 744:	0213082b 	sltu	at,s0,s3
 748:	1420fff8 	bnez	at,72c <Effect_DeleteAll+0x84>
 74c:	263101b0 	addiu	s1,s1,432
 750:	3c110000 	lui	s1,0x0
 754:	3c100000 	lui	s0,0x0
 758:	3c130000 	lui	s3,0x0
 75c:	26733df4 	addiu	s3,s3,15860
 760:	26103890 	addiu	s0,s0,14480
 764:	26310000 	addiu	s1,s1,0
 768:	8e590044 	lw	t9,68(s2)
 76c:	a220388c 	sb	zero,14476(s1)
 770:	02002025 	move	a0,s0
 774:	0320f809 	jalr	t9
 778:	00000000 	nop
 77c:	261001cc 	addiu	s0,s0,460
 780:	1613fff9 	bne	s0,s3,768 <Effect_DeleteAll+0xc0>
 784:	263101cc 	addiu	s1,s1,460
 788:	3c040000 	lui	a0,0x0
 78c:	0c000000 	jal	0 <Effect_GetGlobalCtx>
 790:	24840070 	addiu	a0,a0,112
 794:	8fbf0024 	lw	ra,36(sp)
 798:	8fb00014 	lw	s0,20(sp)
 79c:	8fb10018 	lw	s1,24(sp)
 7a0:	8fb2001c 	lw	s2,28(sp)
 7a4:	8fb30020 	lw	s3,32(sp)
 7a8:	03e00008 	jr	ra
 7ac:	27bd0028 	addiu	sp,sp,40
