
build/src/code/z_effect_soft_sprite.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSs_InitInfo>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afb2001c 	sw	s2,28(sp)
   8:	afb10018 	sw	s1,24(sp)
   c:	afb30020 	sw	s3,32(sp)
  10:	afb00014 	sw	s0,20(sp)
  14:	3c110000 	lui	s1,0x0
  18:	3c120000 	lui	s2,0x0
  1c:	afbf0024 	sw	ra,36(sp)
  20:	afa40028 	sw	a0,40(sp)
  24:	afa5002c 	sw	a1,44(sp)
  28:	26520000 	addiu	s2,s2,0
  2c:	26310000 	addiu	s1,s1,0
  30:	00008025 	move	s0,zero
  34:	24130025 	li	s3,37
  38:	8e2e000c 	lw	t6,12(s1)
  3c:	8e2f0008 	lw	t7,8(s1)
  40:	8e380004 	lw	t8,4(s1)
  44:	8e390000 	lw	t9,0(s1)
  48:	02402025 	move	a0,s2
  4c:	02002825 	move	a1,s0
  50:	01cf3023 	subu	a2,t6,t7
  54:	0c000000 	jal	0 <EffectSs_InitInfo>
  58:	03193823 	subu	a3,t8,t9
  5c:	26100001 	addiu	s0,s0,1
  60:	1613fff5 	bne	s0,s3,38 <EffectSs_InitInfo+0x38>
  64:	2631001c 	addiu	s1,s1,28
  68:	8fa8002c 	lw	t0,44(sp)
  6c:	24120060 	li	s2,96
  70:	3c060000 	lui	a2,0x0
  74:	01120019 	multu	t0,s2
  78:	24c60030 	addiu	a2,a2,48
  7c:	8fa40028 	lw	a0,40(sp)
  80:	24070121 	li	a3,289
  84:	00002812 	mflo	a1
  88:	0c000000 	jal	0 <EffectSs_InitInfo>
  8c:	00000000 	nop
  90:	3c110000 	lui	s1,0x0
  94:	26310000 	addiu	s1,s1,0
  98:	ae220000 	sw	v0,0(s1)
  9c:	14400008 	bnez	v0,c0 <EffectSs_InitInfo+0xc0>
  a0:	00401825 	move	v1,v0
  a4:	3c040000 	lui	a0,0x0
  a8:	3c050000 	lui	a1,0x0
  ac:	24a50070 	addiu	a1,a1,112
  b0:	2484004c 	addiu	a0,a0,76
  b4:	0c000000 	jal	0 <EffectSs_InitInfo>
  b8:	24060122 	li	a2,290
  bc:	8e230000 	lw	v1,0(s1)
  c0:	8fa9002c 	lw	t1,44(sp)
  c4:	ae200004 	sw	zero,4(s1)
  c8:	00608025 	move	s0,v1
  cc:	01320019 	multu	t1,s2
  d0:	ae290008 	sw	t1,8(s1)
  d4:	00005812 	mflo	t3
  d8:	01636021 	addu	t4,t3,v1
  dc:	006c082b 	sltu	at,v1,t4
  e0:	1020000c 	beqz	at,114 <EffectSs_InitInfo+0x114>
  e4:	00000000 	nop
  e8:	0c000000 	jal	0 <EffectSs_InitInfo>
  ec:	02002025 	move	a0,s0
  f0:	8e2d0008 	lw	t5,8(s1)
  f4:	8e2f0000 	lw	t7,0(s1)
  f8:	26100060 	addiu	s0,s0,96
  fc:	01b20019 	multu	t5,s2
 100:	00007012 	mflo	t6
 104:	01cfc021 	addu	t8,t6,t7
 108:	0218082b 	sltu	at,s0,t8
 10c:	1420fff6 	bnez	at,e8 <EffectSs_InitInfo+0xe8>
 110:	00000000 	nop
 114:	3c010000 	lui	at,0x0
 118:	3c020000 	lui	v0,0x0
 11c:	2442001c 	addiu	v0,v0,28
 120:	ac200010 	sw	zero,16(at)
 124:	24100001 	li	s0,1
 128:	26100004 	addiu	s0,s0,4
 12c:	ac40002c 	sw	zero,44(v0)
 130:	ac400048 	sw	zero,72(v0)
 134:	ac400064 	sw	zero,100(v0)
 138:	24420070 	addiu	v0,v0,112
 13c:	1613fffa 	bne	s0,s3,128 <EffectSs_InitInfo+0x128>
 140:	ac40ffa0 	sw	zero,-96(v0)
 144:	8fbf0024 	lw	ra,36(sp)
 148:	8fb00014 	lw	s0,20(sp)
 14c:	8fb10018 	lw	s1,24(sp)
 150:	8fb2001c 	lw	s2,28(sp)
 154:	8fb30020 	lw	s3,32(sp)
 158:	03e00008 	jr	ra
 15c:	27bd0028 	addiu	sp,sp,40

00000160 <EffectSs_ClearAll>:
 160:	27bdffd8 	addiu	sp,sp,-40
 164:	afb2001c 	sw	s2,28(sp)
 168:	24120060 	li	s2,96
 16c:	00120019 	multu	zero,s2
 170:	afb10018 	sw	s1,24(sp)
 174:	3c110000 	lui	s1,0x0
 178:	26310000 	addiu	s1,s1,0
 17c:	afb00014 	sw	s0,20(sp)
 180:	afbf0024 	sw	ra,36(sp)
 184:	afb30020 	sw	s3,32(sp)
 188:	afa40028 	sw	a0,40(sp)
 18c:	ae200000 	sw	zero,0(s1)
 190:	ae200004 	sw	zero,4(s1)
 194:	00007812 	mflo	t7
 198:	000f082b 	sltu	at,zero,t7
 19c:	ae200008 	sw	zero,8(s1)
 1a0:	1020000c 	beqz	at,1d4 <EffectSs_ClearAll+0x74>
 1a4:	00008025 	move	s0,zero
 1a8:	0c000000 	jal	0 <EffectSs_InitInfo>
 1ac:	02002025 	move	a0,s0
 1b0:	8e390008 	lw	t9,8(s1)
 1b4:	8e290000 	lw	t1,0(s1)
 1b8:	26100060 	addiu	s0,s0,96
 1bc:	03320019 	multu	t9,s2
 1c0:	00004012 	mflo	t0
 1c4:	01095021 	addu	t2,t0,t1
 1c8:	020a082b 	sltu	at,s0,t2
 1cc:	1420fff6 	bnez	at,1a8 <EffectSs_ClearAll+0x48>
 1d0:	00000000 	nop
 1d4:	3c100000 	lui	s0,0x0
 1d8:	3c120000 	lui	s2,0x0
 1dc:	26100000 	addiu	s0,s0,0
 1e0:	2652008c 	addiu	s2,s2,140
 1e4:	00008825 	move	s1,zero
 1e8:	24130025 	li	s3,37
 1ec:	8e040010 	lw	a0,16(s0)
 1f0:	02402825 	move	a1,s2
 1f4:	50800004 	beqzl	a0,208 <EffectSs_ClearAll+0xa8>
 1f8:	26310001 	addiu	s1,s1,1
 1fc:	0c000000 	jal	0 <EffectSs_InitInfo>
 200:	24060151 	li	a2,337
 204:	26310001 	addiu	s1,s1,1
 208:	ae000010 	sw	zero,16(s0)
 20c:	1633fff7 	bne	s1,s3,1ec <EffectSs_ClearAll+0x8c>
 210:	2610001c 	addiu	s0,s0,28
 214:	8fbf0024 	lw	ra,36(sp)
 218:	8fb00014 	lw	s0,20(sp)
 21c:	8fb10018 	lw	s1,24(sp)
 220:	8fb2001c 	lw	s2,28(sp)
 224:	8fb30020 	lw	s3,32(sp)
 228:	03e00008 	jr	ra
 22c:	27bd0028 	addiu	sp,sp,40

00000230 <EffectSs_Delete>:
 230:	27bdffe8 	addiu	sp,sp,-24
 234:	afbf0014 	sw	ra,20(sp)
 238:	9482005a 	lhu	v0,90(a0)
 23c:	00802825 	move	a1,a0
 240:	304e0002 	andi	t6,v0,0x2
 244:	51c00006 	beqzl	t6,260 <EffectSs_Delete+0x30>
 248:	304f0004 	andi	t7,v0,0x4
 24c:	0c000000 	jal	0 <EffectSs_InitInfo>
 250:	afa50018 	sw	a1,24(sp)
 254:	8fa50018 	lw	a1,24(sp)
 258:	94a2005a 	lhu	v0,90(a1)
 25c:	304f0004 	andi	t7,v0,0x4
 260:	11e00004 	beqz	t7,274 <EffectSs_Delete+0x44>
 264:	24a4002c 	addiu	a0,a1,44
 268:	0c000000 	jal	0 <EffectSs_InitInfo>
 26c:	afa50018 	sw	a1,24(sp)
 270:	8fa50018 	lw	a1,24(sp)
 274:	0c000000 	jal	0 <EffectSs_InitInfo>
 278:	00a02025 	move	a0,a1
 27c:	8fbf0014 	lw	ra,20(sp)
 280:	27bd0018 	addiu	sp,sp,24
 284:	03e00008 	jr	ra
 288:	00000000 	nop

0000028c <EffectSs_Reset>:
 28c:	44800000 	mtc1	zero,$f0
 290:	240e0025 	li	t6,37
 294:	240fffff 	li	t7,-1
 298:	24180080 	li	t8,128
 29c:	a08e005f 	sb	t6,95(a0)
 2a0:	a48f005c 	sh	t7,92(a0)
 2a4:	a480005a 	sh	zero,90(a0)
 2a8:	a098005e 	sb	t8,94(a0)
 2ac:	ac800028 	sw	zero,40(a0)
 2b0:	ac800024 	sw	zero,36(a0)
 2b4:	ac800038 	sw	zero,56(a0)
 2b8:	ac80003c 	sw	zero,60(a0)
 2bc:	a4800040 	sh	zero,64(a0)
 2c0:	24830002 	addiu	v1,a0,2
 2c4:	e4800020 	swc1	$f0,32(a0)
 2c8:	e480001c 	swc1	$f0,28(a0)
 2cc:	e4800018 	swc1	$f0,24(a0)
 2d0:	e4800014 	swc1	$f0,20(a0)
 2d4:	e4800010 	swc1	$f0,16(a0)
 2d8:	e480000c 	swc1	$f0,12(a0)
 2dc:	e4800034 	swc1	$f0,52(a0)
 2e0:	e4800030 	swc1	$f0,48(a0)
 2e4:	e480002c 	swc1	$f0,44(a0)
 2e8:	e4800008 	swc1	$f0,8(a0)
 2ec:	e4800004 	swc1	$f0,4(a0)
 2f0:	e4800000 	swc1	$f0,0(a0)
 2f4:	2404000d 	li	a0,13
 2f8:	24020001 	li	v0,1
 2fc:	24420004 	addiu	v0,v0,4
 300:	a4600042 	sh	zero,66(v1)
 304:	a4600044 	sh	zero,68(v1)
 308:	a4600046 	sh	zero,70(v1)
 30c:	24630008 	addiu	v1,v1,8
 310:	1444fffa 	bne	v0,a0,2fc <EffectSs_Reset+0x70>
 314:	a4600038 	sh	zero,56(v1)
 318:	03e00008 	jr	ra
 31c:	00000000 	nop

00000320 <EffectSs_FindSlot>:
 320:	3c060000 	lui	a2,0x0
 324:	24c60000 	addiu	a2,a2,0
 328:	8cc20004 	lw	v0,4(a2)
 32c:	8cc30008 	lw	v1,8(a2)
 330:	27bdfff8 	addiu	sp,sp,-8
 334:	afb00004 	sw	s0,4(sp)
 338:	0043082a 	slt	at,v0,v1
 33c:	00808025 	move	s0,a0
 340:	14200003 	bnez	at,350 <EffectSs_FindSlot+0x30>
 344:	afa5000c 	sw	a1,12(sp)
 348:	acc00004 	sw	zero,4(a2)
 34c:	00001025 	move	v0,zero
 350:	3c060000 	lui	a2,0x0
 354:	8cc60000 	lw	a2,0(a2)
 358:	00027080 	sll	t6,v0,0x2
 35c:	01c27023 	subu	t6,t6,v0
 360:	000e7140 	sll	t6,t6,0x5
 364:	00402025 	move	a0,v0
 368:	00002825 	move	a1,zero
 36c:	2408ffff 	li	t0,-1
 370:	00ce3821 	addu	a3,a2,t6
 374:	84ef005c 	lh	t7,92(a3)
 378:	550f0004 	bnel	t0,t7,38c <EffectSs_FindSlot+0x6c>
 37c:	24840001 	addiu	a0,a0,1
 380:	1000000c 	b	3b4 <EffectSs_FindSlot+0x94>
 384:	24050001 	li	a1,1
 388:	24840001 	addiu	a0,a0,1
 38c:	0083082a 	slt	at,a0,v1
 390:	14200002 	bnez	at,39c <EffectSs_FindSlot+0x7c>
 394:	00000000 	nop
 398:	00002025 	move	a0,zero
 39c:	10820005 	beq	a0,v0,3b4 <EffectSs_FindSlot+0x94>
 3a0:	0004c080 	sll	t8,a0,0x2
 3a4:	0304c023 	subu	t8,t8,a0
 3a8:	0018c140 	sll	t8,t8,0x5
 3ac:	1000fff1 	b	374 <EffectSs_FindSlot+0x54>
 3b0:	00d83821 	addu	a3,a2,t8
 3b4:	24010001 	li	at,1
 3b8:	14a10005 	bne	a1,at,3d0 <EffectSs_FindSlot+0xb0>
 3bc:	00024880 	sll	t1,v0,0x2
 3c0:	8fb9000c 	lw	t9,12(sp)
 3c4:	00001025 	move	v0,zero
 3c8:	1000001f 	b	448 <EffectSs_FindSlot+0x128>
 3cc:	af240000 	sw	a0,0(t9)
 3d0:	01224823 	subu	t1,t1,v0
 3d4:	00094940 	sll	t1,t1,0x5
 3d8:	00402025 	move	a0,v0
 3dc:	00c93821 	addu	a3,a2,t1
 3e0:	90e5005e 	lbu	a1,94(a3)
 3e4:	00b0082a 	slt	at,a1,s0
 3e8:	54200008 	bnezl	at,40c <EffectSs_FindSlot+0xec>
 3ec:	24840001 	addiu	a0,a0,1
 3f0:	56050013 	bnel	s0,a1,440 <EffectSs_FindSlot+0x120>
 3f4:	8fad000c 	lw	t5,12(sp)
 3f8:	94ea005a 	lhu	t2,90(a3)
 3fc:	314b0001 	andi	t3,t2,0x1
 400:	5160000f 	beqzl	t3,440 <EffectSs_FindSlot+0x120>
 404:	8fad000c 	lw	t5,12(sp)
 408:	24840001 	addiu	a0,a0,1
 40c:	0083082a 	slt	at,a0,v1
 410:	14200002 	bnez	at,41c <EffectSs_FindSlot+0xfc>
 414:	00000000 	nop
 418:	00002025 	move	a0,zero
 41c:	14820003 	bne	a0,v0,42c <EffectSs_FindSlot+0x10c>
 420:	00046080 	sll	t4,a0,0x2
 424:	10000008 	b	448 <EffectSs_FindSlot+0x128>
 428:	24020001 	li	v0,1
 42c:	01846023 	subu	t4,t4,a0
 430:	000c6140 	sll	t4,t4,0x5
 434:	1000ffea 	b	3e0 <EffectSs_FindSlot+0xc0>
 438:	00cc3821 	addu	a3,a2,t4
 43c:	8fad000c 	lw	t5,12(sp)
 440:	00001025 	move	v0,zero
 444:	ada40000 	sw	a0,0(t5)
 448:	8fb00004 	lw	s0,4(sp)
 44c:	03e00008 	jr	ra
 450:	27bd0008 	addiu	sp,sp,8

00000454 <EffectSs_Insert>:
 454:	27bdffe0 	addiu	sp,sp,-32
 458:	afbf0014 	sw	ra,20(sp)
 45c:	0c000000 	jal	0 <EffectSs_InitInfo>
 460:	afa50024 	sw	a1,36(sp)
 464:	24010001 	li	at,1
 468:	1041001b 	beq	v0,at,4d8 <EffectSs_Insert+0x84>
 46c:	8fae0024 	lw	t6,36(sp)
 470:	91c4005e 	lbu	a0,94(t6)
 474:	0c000000 	jal	0 <EffectSs_InitInfo>
 478:	27a5001c 	addiu	a1,sp,28
 47c:	14400016 	bnez	v0,4d8 <EffectSs_Insert+0x84>
 480:	8faf001c 	lw	t7,28(sp)
 484:	8fa8001c 	lw	t0,28(sp)
 488:	3c020000 	lui	v0,0x0
 48c:	24420000 	addiu	v0,v0,0
 490:	8c590000 	lw	t9,0(v0)
 494:	8fab0024 	lw	t3,36(sp)
 498:	00084880 	sll	t1,t0,0x2
 49c:	01284823 	subu	t1,t1,t0
 4a0:	25f80001 	addiu	t8,t7,1
 4a4:	00094940 	sll	t1,t1,0x5
 4a8:	ac580004 	sw	t8,4(v0)
 4ac:	03295021 	addu	t2,t9,t1
 4b0:	256e0060 	addiu	t6,t3,96
 4b4:	8d6d0000 	lw	t5,0(t3)
 4b8:	256b000c 	addiu	t3,t3,12
 4bc:	254a000c 	addiu	t2,t2,12
 4c0:	ad4dfff4 	sw	t5,-12(t2)
 4c4:	8d6cfff8 	lw	t4,-8(t3)
 4c8:	ad4cfff8 	sw	t4,-8(t2)
 4cc:	8d6dfffc 	lw	t5,-4(t3)
 4d0:	156efff8 	bne	t3,t6,4b4 <EffectSs_Insert+0x60>
 4d4:	ad4dfffc 	sw	t5,-4(t2)
 4d8:	8fbf0014 	lw	ra,20(sp)
 4dc:	27bd0020 	addiu	sp,sp,32
 4e0:	03e00008 	jr	ra
 4e4:	00000000 	nop

000004e8 <EffectSs_Spawn>:
 4e8:	27bdffb8 	addiu	sp,sp,-72
 4ec:	28a10025 	slti	at,a1,37
 4f0:	afbf0024 	sw	ra,36(sp)
 4f4:	afa40048 	sw	a0,72(sp)
 4f8:	afa5004c 	sw	a1,76(sp)
 4fc:	afa60050 	sw	a2,80(sp)
 500:	14200007 	bnez	at,520 <EffectSs_Spawn+0x38>
 504:	afa70054 	sw	a3,84(sp)
 508:	3c040000 	lui	a0,0x0
 50c:	3c050000 	lui	a1,0x0
 510:	24a500cc 	addiu	a1,a1,204
 514:	248400a8 	addiu	a0,a0,168
 518:	0c000000 	jal	0 <EffectSs_InitInfo>
 51c:	2406022c 	li	a2,556
 520:	8fa40050 	lw	a0,80(sp)
 524:	0c000000 	jal	0 <EffectSs_InitInfo>
 528:	27a50044 	addiu	a1,sp,68
 52c:	14400094 	bnez	v0,780 <EffectSs_Spawn+0x298>
 530:	8faf0044 	lw	t7,68(sp)
 534:	8fb9004c 	lw	t9,76(sp)
 538:	3c090000 	lui	t1,0x0
 53c:	25f80001 	addiu	t8,t7,1
 540:	001940c0 	sll	t0,t9,0x3
 544:	01194023 	subu	t0,t0,t9
 548:	3c010000 	lui	at,0x0
 54c:	00084080 	sll	t0,t0,0x2
 550:	25290000 	addiu	t1,t1,0
 554:	ac380004 	sw	t8,4(at)
 558:	01091821 	addu	v1,t0,t1
 55c:	8c620008 	lw	v0,8(v1)
 560:	8c6a000c 	lw	t2,12(v1)
 564:	14400009 	bnez	v0,58c <EffectSs_Spawn+0xa4>
 568:	01422023 	subu	a0,t2,v0
 56c:	3c040000 	lui	a0,0x0
 570:	248400e8 	addiu	a0,a0,232
 574:	0c000000 	jal	0 <EffectSs_InitInfo>
 578:	afa30030 	sw	v1,48(sp)
 57c:	8fa30030 	lw	v1,48(sp)
 580:	8c6b0014 	lw	t3,20(v1)
 584:	1000003e 	b	680 <EffectSs_Spawn+0x198>
 588:	afab0038 	sw	t3,56(sp)
 58c:	8c6c0010 	lw	t4,16(v1)
 590:	3c050000 	lui	a1,0x0
 594:	24a50128 	addiu	a1,a1,296
 598:	1580002f 	bnez	t4,658 <EffectSs_Spawn+0x170>
 59c:	24060249 	li	a2,585
 5a0:	afa30030 	sw	v1,48(sp)
 5a4:	0c000000 	jal	0 <EffectSs_InitInfo>
 5a8:	afa40040 	sw	a0,64(sp)
 5ac:	8fa30030 	lw	v1,48(sp)
 5b0:	3c040000 	lui	a0,0x0
 5b4:	1440000c 	bnez	v0,5e8 <EffectSs_Spawn+0x100>
 5b8:	ac620010 	sw	v0,16(v1)
 5bc:	0c000000 	jal	0 <EffectSs_InitInfo>
 5c0:	24840144 	addiu	a0,a0,324
 5c4:	3c040000 	lui	a0,0x0
 5c8:	2484014c 	addiu	a0,a0,332
 5cc:	0c000000 	jal	0 <EffectSs_InitInfo>
 5d0:	8fa50040 	lw	a1,64(sp)
 5d4:	3c040000 	lui	a0,0x0
 5d8:	0c000000 	jal	0 <EffectSs_InitInfo>
 5dc:	24840208 	addiu	a0,a0,520
 5e0:	10000068 	b	784 <EffectSs_Spawn+0x29c>
 5e4:	8fbf0024 	lw	ra,36(sp)
 5e8:	8c6d0010 	lw	t5,16(v1)
 5ec:	8c640000 	lw	a0,0(v1)
 5f0:	8c650004 	lw	a1,4(v1)
 5f4:	8c660008 	lw	a2,8(v1)
 5f8:	8c67000c 	lw	a3,12(v1)
 5fc:	afa30030 	sw	v1,48(sp)
 600:	0c000000 	jal	0 <EffectSs_InitInfo>
 604:	afad0010 	sw	t5,16(sp)
 608:	3c040000 	lui	a0,0x0
 60c:	0c000000 	jal	0 <EffectSs_InitInfo>
 610:	2484020c 	addiu	a0,a0,524
 614:	8fa30030 	lw	v1,48(sp)
 618:	8fb8004c 	lw	t8,76(sp)
 61c:	3c040000 	lui	a0,0x0
 620:	8c6e000c 	lw	t6,12(v1)
 624:	8c650000 	lw	a1,0(v1)
 628:	8c660004 	lw	a2,4(v1)
 62c:	8c670008 	lw	a3,8(v1)
 630:	afae0010 	sw	t6,16(sp)
 634:	8c6f0010 	lw	t7,16(v1)
 638:	24840214 	addiu	a0,a0,532
 63c:	afb80018 	sw	t8,24(sp)
 640:	0c000000 	jal	0 <EffectSs_InitInfo>
 644:	afaf0014 	sw	t7,20(sp)
 648:	3c040000 	lui	a0,0x0
 64c:	0c000000 	jal	0 <EffectSs_InitInfo>
 650:	2484025c 	addiu	a0,a0,604
 654:	8fa30030 	lw	v1,48(sp)
 658:	8c640014 	lw	a0,20(v1)
 65c:	00001025 	move	v0,zero
 660:	10800006 	beqz	a0,67c <EffectSs_Spawn+0x194>
 664:	00000000 	nop
 668:	8c790008 	lw	t9,8(v1)
 66c:	8c680010 	lw	t0,16(v1)
 670:	03284823 	subu	t1,t9,t0
 674:	10000001 	b	67c <EffectSs_Spawn+0x194>
 678:	00891023 	subu	v0,a0,t1
 67c:	afa20038 	sw	v0,56(sp)
 680:	8faa0038 	lw	t2,56(sp)
 684:	8fac0044 	lw	t4,68(sp)
 688:	3c040000 	lui	a0,0x0
 68c:	8d4b0004 	lw	t3,4(t2)
 690:	000c6880 	sll	t5,t4,0x2
 694:	3c0e0000 	lui	t6,0x0
 698:	15600007 	bnez	t3,6b8 <EffectSs_Spawn+0x1d0>
 69c:	01ac6823 	subu	t5,t5,t4
 6a0:	24840260 	addiu	a0,a0,608
 6a4:	01402825 	move	a1,t2
 6a8:	0c000000 	jal	0 <EffectSs_InitInfo>
 6ac:	8fa6004c 	lw	a2,76(sp)
 6b0:	10000034 	b	784 <EffectSs_Spawn+0x29c>
 6b4:	8fbf0024 	lw	ra,36(sp)
 6b8:	8dce0000 	lw	t6,0(t6)
 6bc:	000d6940 	sll	t5,t5,0x5
 6c0:	0c000000 	jal	0 <EffectSs_InitInfo>
 6c4:	01ae2021 	addu	a0,t5,t6
 6c8:	8fb90044 	lw	t9,68(sp)
 6cc:	24020060 	li	v0,96
 6d0:	3c030000 	lui	v1,0x0
 6d4:	03220019 	multu	t9,v0
 6d8:	24630000 	addiu	v1,v1,0
 6dc:	8c780000 	lw	t8,0(v1)
 6e0:	8faf004c 	lw	t7,76(sp)
 6e4:	00004012 	mflo	t0
 6e8:	03084821 	addu	t1,t8,t0
 6ec:	a12f005f 	sb	t7,95(t1)
 6f0:	8fac0044 	lw	t4,68(sp)
 6f4:	8c6a0000 	lw	t2,0(v1)
 6f8:	8fab0050 	lw	t3,80(sp)
 6fc:	01820019 	multu	t4,v0
 700:	00006812 	mflo	t5
 704:	014d7021 	addu	t6,t2,t5
 708:	a1cb005e 	sb	t3,94(t6)
 70c:	8fa50044 	lw	a1,68(sp)
 710:	8faf0038 	lw	t7,56(sp)
 714:	8c680000 	lw	t0,0(v1)
 718:	00a20019 	multu	a1,v0
 71c:	8df90004 	lw	t9,4(t7)
 720:	8fa70054 	lw	a3,84(sp)
 724:	8fa40048 	lw	a0,72(sp)
 728:	0000c012 	mflo	t8
 72c:	03083021 	addu	a2,t8,t0
 730:	0320f809 	jalr	t9
 734:	00000000 	nop
 738:	14400011 	bnez	v0,780 <EffectSs_Spawn+0x298>
 73c:	3c040000 	lui	a0,0x0
 740:	0c000000 	jal	0 <EffectSs_InitInfo>
 744:	248402fc 	addiu	a0,a0,764
 748:	3c040000 	lui	a0,0x0
 74c:	0c000000 	jal	0 <EffectSs_InitInfo>
 750:	24840304 	addiu	a0,a0,772
 754:	3c040000 	lui	a0,0x0
 758:	0c000000 	jal	0 <EffectSs_InitInfo>
 75c:	2484038c 	addiu	a0,a0,908
 760:	8fa90044 	lw	t1,68(sp)
 764:	3c0a0000 	lui	t2,0x0
 768:	8d4a0000 	lw	t2,0(t2)
 76c:	00096080 	sll	t4,t1,0x2
 770:	01896023 	subu	t4,t4,t1
 774:	000c6140 	sll	t4,t4,0x5
 778:	0c000000 	jal	0 <EffectSs_InitInfo>
 77c:	018a2021 	addu	a0,t4,t2
 780:	8fbf0024 	lw	ra,36(sp)
 784:	27bd0048 	addiu	sp,sp,72
 788:	03e00008 	jr	ra
 78c:	00000000 	nop

00000790 <EffectSs_Update>:
 790:	3c0f0000 	lui	t7,0x0
 794:	8def0000 	lw	t7,0(t7)
 798:	00057080 	sll	t6,a1,0x2
 79c:	01c57023 	subu	t6,t6,a1
 7a0:	27bdffe8 	addiu	sp,sp,-24
 7a4:	000e7140 	sll	t6,t6,0x5
 7a8:	afbf0014 	sw	ra,20(sp)
 7ac:	01cf3021 	addu	a2,t6,t7
 7b0:	8cc20024 	lw	v0,36(a2)
 7b4:	5040001b 	beqzl	v0,824 <EffectSs_Update+0x94>
 7b8:	8fbf0014 	lw	ra,20(sp)
 7bc:	c4c4000c 	lwc1	$f4,12(a2)
 7c0:	c4c60018 	lwc1	$f6,24(a2)
 7c4:	c4ca0010 	lwc1	$f10,16(a2)
 7c8:	c4d0001c 	lwc1	$f16,28(a2)
 7cc:	46062200 	add.s	$f8,$f4,$f6
 7d0:	c4c60020 	lwc1	$f6,32(a2)
 7d4:	c4c40014 	lwc1	$f4,20(a2)
 7d8:	46105480 	add.s	$f18,$f10,$f16
 7dc:	e4c8000c 	swc1	$f8,12(a2)
 7e0:	c4d0000c 	lwc1	$f16,12(a2)
 7e4:	c4ca0000 	lwc1	$f10,0(a2)
 7e8:	46062200 	add.s	$f8,$f4,$f6
 7ec:	e4d20010 	swc1	$f18,16(a2)
 7f0:	c4c60010 	lwc1	$f6,16(a2)
 7f4:	46105480 	add.s	$f18,$f10,$f16
 7f8:	e4c80014 	swc1	$f8,20(a2)
 7fc:	c4c40004 	lwc1	$f4,4(a2)
 800:	c4d00014 	lwc1	$f16,20(a2)
 804:	c4ca0008 	lwc1	$f10,8(a2)
 808:	e4d20000 	swc1	$f18,0(a2)
 80c:	46062200 	add.s	$f8,$f4,$f6
 810:	46105480 	add.s	$f18,$f10,$f16
 814:	e4c80004 	swc1	$f8,4(a2)
 818:	0040f809 	jalr	v0
 81c:	e4d20008 	swc1	$f18,8(a2)
 820:	8fbf0014 	lw	ra,20(sp)
 824:	27bd0018 	addiu	sp,sp,24
 828:	03e00008 	jr	ra
 82c:	00000000 	nop

00000830 <EffectSs_UpdateAll>:
 830:	27bdffd8 	addiu	sp,sp,-40
 834:	afb2001c 	sw	s2,28(sp)
 838:	3c120000 	lui	s2,0x0
 83c:	26520000 	addiu	s2,s2,0
 840:	8e4e0008 	lw	t6,8(s2)
 844:	afb30020 	sw	s3,32(sp)
 848:	afb10018 	sw	s1,24(sp)
 84c:	00809825 	move	s3,a0
 850:	afbf0024 	sw	ra,36(sp)
 854:	afb00014 	sw	s0,20(sp)
 858:	19c0001c 	blez	t6,8cc <EffectSs_UpdateAll+0x9c>
 85c:	00008825 	move	s1,zero
 860:	00008025 	move	s0,zero
 864:	8e4f0000 	lw	t7,0(s2)
 868:	01f02021 	addu	a0,t7,s0
 86c:	8482005c 	lh	v0,92(a0)
 870:	0440000c 	bltz	v0,8a4 <EffectSs_UpdateAll+0x74>
 874:	2458ffff 	addiu	t8,v0,-1
 878:	a498005c 	sh	t8,92(a0)
 87c:	8e430000 	lw	v1,0(s2)
 880:	0070c821 	addu	t9,v1,s0
 884:	8722005c 	lh	v0,92(t9)
 888:	04410006 	bgez	v0,8a4 <EffectSs_UpdateAll+0x74>
 88c:	00000000 	nop
 890:	0c000000 	jal	0 <EffectSs_InitInfo>
 894:	02032021 	addu	a0,s0,v1
 898:	8e480000 	lw	t0,0(s2)
 89c:	01104821 	addu	t1,t0,s0
 8a0:	8522005c 	lh	v0,92(t1)
 8a4:	04400003 	bltz	v0,8b4 <EffectSs_UpdateAll+0x84>
 8a8:	02602025 	move	a0,s3
 8ac:	0c000000 	jal	0 <EffectSs_InitInfo>
 8b0:	02202825 	move	a1,s1
 8b4:	8e4a0008 	lw	t2,8(s2)
 8b8:	26310001 	addiu	s1,s1,1
 8bc:	26100060 	addiu	s0,s0,96
 8c0:	022a082a 	slt	at,s1,t2
 8c4:	5420ffe8 	bnezl	at,868 <EffectSs_UpdateAll+0x38>
 8c8:	8e4f0000 	lw	t7,0(s2)
 8cc:	8fbf0024 	lw	ra,36(sp)
 8d0:	8fb00014 	lw	s0,20(sp)
 8d4:	8fb10018 	lw	s1,24(sp)
 8d8:	8fb2001c 	lw	s2,28(sp)
 8dc:	8fb30020 	lw	s3,32(sp)
 8e0:	03e00008 	jr	ra
 8e4:	27bd0028 	addiu	sp,sp,40

000008e8 <EffectSs_Draw>:
 8e8:	3c0f0000 	lui	t7,0x0
 8ec:	8def0000 	lw	t7,0(t7)
 8f0:	00057080 	sll	t6,a1,0x2
 8f4:	01c57023 	subu	t6,t6,a1
 8f8:	27bdffe8 	addiu	sp,sp,-24
 8fc:	000e7140 	sll	t6,t6,0x5
 900:	afbf0014 	sw	ra,20(sp)
 904:	01cf3021 	addu	a2,t6,t7
 908:	8cc20028 	lw	v0,40(a2)
 90c:	50400004 	beqzl	v0,920 <EffectSs_Draw+0x38>
 910:	8fbf0014 	lw	ra,20(sp)
 914:	0040f809 	jalr	v0
 918:	00000000 	nop
 91c:	8fbf0014 	lw	ra,20(sp)
 920:	27bd0018 	addiu	sp,sp,24
 924:	03e00008 	jr	ra
 928:	00000000 	nop

0000092c <EffectSs_DrawAll>:
 92c:	27bdffa0 	addiu	sp,sp,-96
 930:	afb30044 	sw	s3,68(sp)
 934:	00809825 	move	s3,a0
 938:	afbf005c 	sw	ra,92(sp)
 93c:	afbe0058 	sw	s8,88(sp)
 940:	afb70054 	sw	s7,84(sp)
 944:	afb60050 	sw	s6,80(sp)
 948:	afb5004c 	sw	s5,76(sp)
 94c:	afb40048 	sw	s4,72(sp)
 950:	afb20040 	sw	s2,64(sp)
 954:	afb1003c 	sw	s1,60(sp)
 958:	afb00038 	sw	s0,56(sp)
 95c:	f7b60030 	sdc1	$f22,48(sp)
 960:	f7b40028 	sdc1	$f20,40(sp)
 964:	8e650000 	lw	a1,0(s3)
 968:	0c000000 	jal	0 <EffectSs_InitInfo>
 96c:	248407a8 	addiu	a0,a0,1960
 970:	00408025 	move	s0,v0
 974:	00402025 	move	a0,v0
 978:	8e6507a8 	lw	a1,1960(s3)
 97c:	0c000000 	jal	0 <EffectSs_InitInfo>
 980:	00003025 	move	a2,zero
 984:	02002025 	move	a0,s0
 988:	0c000000 	jal	0 <EffectSs_InitInfo>
 98c:	8e650000 	lw	a1,0(s3)
 990:	3c120000 	lui	s2,0x0
 994:	26520000 	addiu	s2,s2,0
 998:	8e430008 	lw	v1,8(s2)
 99c:	00008825 	move	s1,zero
 9a0:	00008025 	move	s0,zero
 9a4:	18600051 	blez	v1,aec <EffectSs_DrawAll+0x1c0>
 9a8:	3c01c6fa 	lui	at,0xc6fa
 9ac:	4481b000 	mtc1	at,$f22
 9b0:	3c0146fa 	lui	at,0x46fa
 9b4:	3c1e0000 	lui	s8,0x0
 9b8:	3c170000 	lui	s7,0x0
 9bc:	3c160000 	lui	s6,0x0
 9c0:	3c150000 	lui	s5,0x0
 9c4:	3c140000 	lui	s4,0x0
 9c8:	4481a000 	mtc1	at,$f20
 9cc:	26940390 	addiu	s4,s4,912
 9d0:	26b50398 	addiu	s5,s5,920
 9d4:	26d60464 	addiu	s6,s6,1124
 9d8:	26f7046c 	addiu	s7,s7,1132
 9dc:	27de04a4 	addiu	s8,s8,1188
 9e0:	8e4e0000 	lw	t6,0(s2)
 9e4:	01d01021 	addu	v0,t6,s0
 9e8:	844f005c 	lh	t7,92(v0)
 9ec:	05e2003c 	bltzl	t7,ae0 <EffectSs_DrawAll+0x1b4>
 9f0:	26310001 	addiu	s1,s1,1
 9f4:	c4400000 	lwc1	$f0,0(v0)
 9f8:	4600a03c 	c.lt.s	$f20,$f0
 9fc:	00000000 	nop
 a00:	45010017 	bc1t	a60 <EffectSs_DrawAll+0x134>
 a04:	00000000 	nop
 a08:	4616003c 	c.lt.s	$f0,$f22
 a0c:	00000000 	nop
 a10:	45010013 	bc1t	a60 <EffectSs_DrawAll+0x134>
 a14:	00000000 	nop
 a18:	c4400004 	lwc1	$f0,4(v0)
 a1c:	4600a03c 	c.lt.s	$f20,$f0
 a20:	00000000 	nop
 a24:	4501000e 	bc1t	a60 <EffectSs_DrawAll+0x134>
 a28:	00000000 	nop
 a2c:	4616003c 	c.lt.s	$f0,$f22
 a30:	00000000 	nop
 a34:	4501000a 	bc1t	a60 <EffectSs_DrawAll+0x134>
 a38:	00000000 	nop
 a3c:	c4400008 	lwc1	$f0,8(v0)
 a40:	4600a03c 	c.lt.s	$f20,$f0
 a44:	00000000 	nop
 a48:	45010005 	bc1t	a60 <EffectSs_DrawAll+0x134>
 a4c:	00000000 	nop
 a50:	4616003c 	c.lt.s	$f0,$f22
 a54:	02602025 	move	a0,s3
 a58:	4500001d 	bc1f	ad0 <EffectSs_DrawAll+0x1a4>
 a5c:	00000000 	nop
 a60:	0c000000 	jal	0 <EffectSs_InitInfo>
 a64:	02802025 	move	a0,s4
 a68:	8e580000 	lw	t8,0(s2)
 a6c:	02a02025 	move	a0,s5
 a70:	03101021 	addu	v0,t8,s0
 a74:	c4480004 	lwc1	$f8,4(v0)
 a78:	c4440000 	lwc1	$f4,0(v0)
 a7c:	9045005f 	lbu	a1,95(v0)
 a80:	460042a1 	cvt.d.s	$f10,$f8
 a84:	460021a1 	cvt.d.s	$f6,$f4
 a88:	f7aa0010 	sdc1	$f10,16(sp)
 a8c:	c4500008 	lwc1	$f16,8(v0)
 a90:	44073000 	mfc1	a3,$f6
 a94:	44063800 	mfc1	a2,$f7
 a98:	460084a1 	cvt.d.s	$f18,$f16
 a9c:	0c000000 	jal	0 <EffectSs_InitInfo>
 aa0:	f7b20018 	sdc1	$f18,24(sp)
 aa4:	0c000000 	jal	0 <EffectSs_InitInfo>
 aa8:	02c02025 	move	a0,s6
 aac:	0c000000 	jal	0 <EffectSs_InitInfo>
 ab0:	02e02025 	move	a0,s7
 ab4:	0c000000 	jal	0 <EffectSs_InitInfo>
 ab8:	03c02025 	move	a0,s8
 abc:	8e590000 	lw	t9,0(s2)
 ac0:	0c000000 	jal	0 <EffectSs_InitInfo>
 ac4:	02192021 	addu	a0,s0,t9
 ac8:	10000004 	b	adc <EffectSs_DrawAll+0x1b0>
 acc:	8e430008 	lw	v1,8(s2)
 ad0:	0c000000 	jal	0 <EffectSs_InitInfo>
 ad4:	02202825 	move	a1,s1
 ad8:	8e430008 	lw	v1,8(s2)
 adc:	26310001 	addiu	s1,s1,1
 ae0:	0223082a 	slt	at,s1,v1
 ae4:	1420ffbe 	bnez	at,9e0 <EffectSs_DrawAll+0xb4>
 ae8:	26100060 	addiu	s0,s0,96
 aec:	8fbf005c 	lw	ra,92(sp)
 af0:	d7b40028 	ldc1	$f20,40(sp)
 af4:	d7b60030 	ldc1	$f22,48(sp)
 af8:	8fb00038 	lw	s0,56(sp)
 afc:	8fb1003c 	lw	s1,60(sp)
 b00:	8fb20040 	lw	s2,64(sp)
 b04:	8fb30044 	lw	s3,68(sp)
 b08:	8fb40048 	lw	s4,72(sp)
 b0c:	8fb5004c 	lw	s5,76(sp)
 b10:	8fb60050 	lw	s6,80(sp)
 b14:	8fb70054 	lw	s7,84(sp)
 b18:	8fbe0058 	lw	s8,88(sp)
 b1c:	03e00008 	jr	ra
 b20:	27bd0060 	addiu	sp,sp,96

00000b24 <func_80027DD4>:
 b24:	afa40000 	sw	a0,0(sp)
 b28:	afa50004 	sw	a1,4(sp)
 b2c:	00052c00 	sll	a1,a1,0x10
 b30:	00042400 	sll	a0,a0,0x10
 b34:	00042403 	sra	a0,a0,0x10
 b38:	14c00004 	bnez	a2,b4c <func_80027DD4+0x28>
 b3c:	00052c03 	sra	a1,a1,0x10
 b40:	00051c00 	sll	v1,a1,0x10
 b44:	03e00008 	jr	ra
 b48:	00031403 	sra	v0,v1,0x10
 b4c:	00a47023 	subu	t6,a1,a0
 b50:	448e2000 	mtc1	t6,$f4
 b54:	44864000 	mtc1	a2,$f8
 b58:	468021a0 	cvt.s.w	$f6,$f4
 b5c:	468042a0 	cvt.s.w	$f10,$f8
 b60:	460a3403 	div.s	$f16,$f6,$f10
 b64:	4600848d 	trunc.w.s	$f18,$f16
 b68:	44189000 	mfc1	t8,$f18
 b6c:	00000000 	nop
 b70:	00981821 	addu	v1,a0,t8
 b74:	00031c00 	sll	v1,v1,0x10
 b78:	00031c03 	sra	v1,v1,0x10
 b7c:	03e00008 	jr	ra
 b80:	00601025 	move	v0,v1

00000b84 <func_80027E34>:
 b84:	afa40000 	sw	a0,0(sp)
 b88:	afa50004 	sw	a1,4(sp)
 b8c:	00052c00 	sll	a1,a1,0x10
 b90:	00042400 	sll	a0,a0,0x10
 b94:	00042403 	sra	a0,a0,0x10
 b98:	00052c03 	sra	a1,a1,0x10
 b9c:	00a47023 	subu	t6,a1,a0
 ba0:	448e2000 	mtc1	t6,$f4
 ba4:	44866000 	mtc1	a2,$f12
 ba8:	44845000 	mtc1	a0,$f10
 bac:	468021a0 	cvt.s.w	$f6,$f4
 bb0:	46805420 	cvt.s.w	$f16,$f10
 bb4:	460c3202 	mul.s	$f8,$f6,$f12
 bb8:	46104480 	add.s	$f18,$f8,$f16
 bbc:	4600910d 	trunc.w.s	$f4,$f18
 bc0:	44022000 	mfc1	v0,$f4
 bc4:	00000000 	nop
 bc8:	00021400 	sll	v0,v0,0x10
 bcc:	03e00008 	jr	ra
 bd0:	00021403 	sra	v0,v0,0x10

00000bd4 <func_80027E84>:
 bd4:	afa40000 	sw	a0,0(sp)
 bd8:	308400ff 	andi	a0,a0,0xff
 bdc:	44842000 	mtc1	a0,$f4
 be0:	afa50004 	sw	a1,4(sp)
 be4:	44866000 	mtc1	a2,$f12
 be8:	30a500ff 	andi	a1,a1,0xff
 bec:	04810005 	bgez	a0,c04 <func_80027E84+0x30>
 bf0:	46802020 	cvt.s.w	$f0,$f4
 bf4:	3c014f80 	lui	at,0x4f80
 bf8:	44813000 	mtc1	at,$f6
 bfc:	00000000 	nop
 c00:	46060000 	add.s	$f0,$f0,$f6
 c04:	44854000 	mtc1	a1,$f8
 c08:	3c014f80 	lui	at,0x4f80
 c0c:	04a10004 	bgez	a1,c20 <func_80027E84+0x4c>
 c10:	468042a0 	cvt.s.w	$f10,$f8
 c14:	44818000 	mtc1	at,$f16
 c18:	00000000 	nop
 c1c:	46105280 	add.s	$f10,$f10,$f16
 c20:	46005481 	sub.s	$f18,$f10,$f0
 c24:	24020001 	li	v0,1
 c28:	3c014f00 	lui	at,0x4f00
 c2c:	460c9102 	mul.s	$f4,$f18,$f12
 c30:	46002180 	add.s	$f6,$f4,$f0
 c34:	444ef800 	cfc1	t6,$31
 c38:	44c2f800 	ctc1	v0,$31
 c3c:	00000000 	nop
 c40:	46003224 	cvt.w.s	$f8,$f6
 c44:	4442f800 	cfc1	v0,$31
 c48:	00000000 	nop
 c4c:	30420078 	andi	v0,v0,0x78
 c50:	50400017 	beqzl	v0,cb0 <func_80027E84+0xdc>
 c54:	44024000 	mfc1	v0,$f8
 c58:	44814000 	mtc1	at,$f8
 c5c:	24020001 	li	v0,1
 c60:	46083201 	sub.s	$f8,$f6,$f8
 c64:	44c2f800 	ctc1	v0,$31
 c68:	00000000 	nop
 c6c:	46004224 	cvt.w.s	$f8,$f8
 c70:	4442f800 	cfc1	v0,$31
 c74:	00000000 	nop
 c78:	30420078 	andi	v0,v0,0x78
 c7c:	54400008 	bnezl	v0,ca0 <func_80027E84+0xcc>
 c80:	2402ffff 	li	v0,-1
 c84:	44024000 	mfc1	v0,$f8
 c88:	3c018000 	lui	at,0x8000
 c8c:	44cef800 	ctc1	t6,$31
 c90:	00411025 	or	v0,v0,at
 c94:	03e00008 	jr	ra
 c98:	304200ff 	andi	v0,v0,0xff
 c9c:	2402ffff 	li	v0,-1
 ca0:	44cef800 	ctc1	t6,$31
 ca4:	03e00008 	jr	ra
 ca8:	304200ff 	andi	v0,v0,0xff
 cac:	44024000 	mfc1	v0,$f8
 cb0:	00000000 	nop
 cb4:	0442fffa 	bltzl	v0,ca0 <func_80027E84+0xcc>
 cb8:	2402ffff 	li	v0,-1
 cbc:	44cef800 	ctc1	t6,$31
 cc0:	03e00008 	jr	ra
 cc4:	304200ff 	andi	v0,v0,0xff
	...
