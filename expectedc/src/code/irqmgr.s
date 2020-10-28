
build/src/code/irqmgr.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <IrqMgr_AddClient>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afb00014 	sw	s0,20(sp)
   8:	00808025 	move	s0,a0
   c:	afb10018 	sw	s1,24(sp)
  10:	afa60028 	sw	a2,40(sp)
  14:	00a08825 	move	s1,a1
  18:	afbf001c 	sw	ra,28(sp)
  1c:	3c060000 	lui	a2,0x0
  20:	3c040000 	lui	a0,0x0
  24:	24840000 	addiu	a0,a0,0
  28:	24c60008 	addiu	a2,a2,8
  2c:	02002825 	move	a1,s0
  30:	0c000000 	jal	0 <IrqMgr_AddClient>
  34:	24070060 	li	a3,96
  38:	3c040000 	lui	a0,0x0
  3c:	3c060000 	lui	a2,0x0
  40:	24c60018 	addiu	a2,a2,24
  44:	24840014 	addiu	a0,a0,20
  48:	02202825 	move	a1,s1
  4c:	0c000000 	jal	0 <IrqMgr_AddClient>
  50:	24070061 	li	a3,97
  54:	3c040000 	lui	a0,0x0
  58:	3c060000 	lui	a2,0x0
  5c:	24c6002c 	addiu	a2,a2,44
  60:	24840024 	addiu	a0,a0,36
  64:	8fa50028 	lw	a1,40(sp)
  68:	0c000000 	jal	0 <IrqMgr_AddClient>
  6c:	24070062 	li	a3,98
  70:	0c000000 	jal	0 <IrqMgr_AddClient>
  74:	24040001 	li	a0,1
  78:	8fae0028 	lw	t6,40(sp)
  7c:	00402025 	move	a0,v0
  80:	ae2e0004 	sw	t6,4(s1)
  84:	8e0f0248 	lw	t7,584(s0)
  88:	ae2f0000 	sw	t7,0(s1)
  8c:	0c000000 	jal	0 <IrqMgr_AddClient>
  90:	ae110248 	sw	s1,584(s0)
  94:	9203024c 	lbu	v1,588(s0)
  98:	26050020 	addiu	a1,s0,32
  9c:	00003025 	move	a2,zero
  a0:	58600005 	blezl	v1,b8 <IrqMgr_AddClient+0xb8>
  a4:	28610002 	slti	at,v1,2
  a8:	0c000000 	jal	0 <IrqMgr_AddClient>
  ac:	8e240004 	lw	a0,4(s1)
  b0:	9203024c 	lbu	v1,588(s0)
  b4:	28610002 	slti	at,v1,2
  b8:	14200004 	bnez	at,cc <IrqMgr_AddClient+0xcc>
  bc:	26050040 	addiu	a1,s0,64
  c0:	8e240004 	lw	a0,4(s1)
  c4:	0c000000 	jal	0 <IrqMgr_AddClient>
  c8:	00003025 	move	a2,zero
  cc:	8fbf001c 	lw	ra,28(sp)
  d0:	8fb00014 	lw	s0,20(sp)
  d4:	8fb10018 	lw	s1,24(sp)
  d8:	03e00008 	jr	ra
  dc:	27bd0020 	addiu	sp,sp,32

000000e0 <IrqMgr_RemoveClient>:
  e0:	27bdffd8 	addiu	sp,sp,-40
  e4:	afb00018 	sw	s0,24(sp)
  e8:	afbf001c 	sw	ra,28(sp)
  ec:	afa40028 	sw	a0,40(sp)
  f0:	8c830248 	lw	v1,584(a0)
  f4:	00a08025 	move	s0,a1
  f8:	00802825 	move	a1,a0
  fc:	3c040000 	lui	a0,0x0
 100:	3c060000 	lui	a2,0x0
 104:	24c60040 	addiu	a2,a2,64
 108:	24840038 	addiu	a0,a0,56
 10c:	afa50028 	sw	a1,40(sp)
 110:	afa00020 	sw	zero,32(sp)
 114:	24070081 	li	a3,129
 118:	0c000000 	jal	0 <IrqMgr_AddClient>
 11c:	afa30024 	sw	v1,36(sp)
 120:	3c040000 	lui	a0,0x0
 124:	3c060000 	lui	a2,0x0
 128:	24c60050 	addiu	a2,a2,80
 12c:	2484004c 	addiu	a0,a0,76
 130:	02002825 	move	a1,s0
 134:	0c000000 	jal	0 <IrqMgr_AddClient>
 138:	24070082 	li	a3,130
 13c:	0c000000 	jal	0 <IrqMgr_AddClient>
 140:	24040001 	li	a0,1
 144:	8fa30024 	lw	v1,36(sp)
 148:	8fa80020 	lw	t0,32(sp)
 14c:	00402025 	move	a0,v0
 150:	1060000f 	beqz	v1,190 <IrqMgr_RemoveClient+0xb0>
 154:	8fb80028 	lw	t8,40(sp)
 158:	5470000a 	bnel	v1,s0,184 <IrqMgr_RemoveClient+0xa4>
 15c:	00604025 	move	t0,v1
 160:	51000005 	beqzl	t0,178 <IrqMgr_RemoveClient+0x98>
 164:	8e0f0000 	lw	t7,0(s0)
 168:	8e0e0000 	lw	t6,0(s0)
 16c:	10000008 	b	190 <IrqMgr_RemoveClient+0xb0>
 170:	ad0e0000 	sw	t6,0(t0)
 174:	8e0f0000 	lw	t7,0(s0)
 178:	10000005 	b	190 <IrqMgr_RemoveClient+0xb0>
 17c:	af0f0248 	sw	t7,584(t8)
 180:	00604025 	move	t0,v1
 184:	8c630000 	lw	v1,0(v1)
 188:	1460fff3 	bnez	v1,158 <IrqMgr_RemoveClient+0x78>
 18c:	00000000 	nop
 190:	0c000000 	jal	0 <IrqMgr_AddClient>
 194:	00000000 	nop
 198:	8fbf001c 	lw	ra,28(sp)
 19c:	8fb00018 	lw	s0,24(sp)
 1a0:	27bd0028 	addiu	sp,sp,40
 1a4:	03e00008 	jr	ra
 1a8:	00000000 	nop

000001ac <IrqMgr_SendMesgForClient>:
 1ac:	27bdffd8 	addiu	sp,sp,-40
 1b0:	afbf0024 	sw	ra,36(sp)
 1b4:	afb20020 	sw	s2,32(sp)
 1b8:	afb1001c 	sw	s1,28(sp)
 1bc:	afb00018 	sw	s0,24(sp)
 1c0:	8c900248 	lw	s0,584(a0)
 1c4:	3c120000 	lui	s2,0x0
 1c8:	00a08825 	move	s1,a1
 1cc:	12000013 	beqz	s0,21c <IrqMgr_SendMesgForClient+0x70>
 1d0:	2652005c 	addiu	s2,s2,92
 1d4:	8e070004 	lw	a3,4(s0)
 1d8:	02202825 	move	a1,s1
 1dc:	8ce60008 	lw	a2,8(a3)
 1e0:	8cee0010 	lw	t6,16(a3)
 1e4:	00e02025 	move	a0,a3
 1e8:	00ce082a 	slt	at,a2,t6
 1ec:	14200006 	bnez	at,208 <IrqMgr_SendMesgForClient+0x5c>
 1f0:	00000000 	nop
 1f4:	02402025 	move	a0,s2
 1f8:	0c000000 	jal	0 <IrqMgr_AddClient>
 1fc:	00e02825 	move	a1,a3
 200:	10000004 	b	214 <IrqMgr_SendMesgForClient+0x68>
 204:	8e100000 	lw	s0,0(s0)
 208:	0c000000 	jal	0 <IrqMgr_AddClient>
 20c:	00003025 	move	a2,zero
 210:	8e100000 	lw	s0,0(s0)
 214:	5600fff0 	bnezl	s0,1d8 <IrqMgr_SendMesgForClient+0x2c>
 218:	8e070004 	lw	a3,4(s0)
 21c:	8fbf0024 	lw	ra,36(sp)
 220:	8fb00018 	lw	s0,24(sp)
 224:	8fb1001c 	lw	s1,28(sp)
 228:	8fb20020 	lw	s2,32(sp)
 22c:	03e00008 	jr	ra
 230:	27bd0028 	addiu	sp,sp,40

00000234 <IrqMgr_JamMesgForClient>:
 234:	27bdffd8 	addiu	sp,sp,-40
 238:	afbf0024 	sw	ra,36(sp)
 23c:	afb20020 	sw	s2,32(sp)
 240:	afb1001c 	sw	s1,28(sp)
 244:	afb00018 	sw	s0,24(sp)
 248:	8c900248 	lw	s0,584(a0)
 24c:	3c120000 	lui	s2,0x0
 250:	00a08825 	move	s1,a1
 254:	12000013 	beqz	s0,2a4 <IrqMgr_JamMesgForClient+0x70>
 258:	265200b4 	addiu	s2,s2,180
 25c:	8e070004 	lw	a3,4(s0)
 260:	02202825 	move	a1,s1
 264:	8ce60008 	lw	a2,8(a3)
 268:	8cee0010 	lw	t6,16(a3)
 26c:	00e02025 	move	a0,a3
 270:	00ce082a 	slt	at,a2,t6
 274:	14200006 	bnez	at,290 <IrqMgr_JamMesgForClient+0x5c>
 278:	00000000 	nop
 27c:	02402025 	move	a0,s2
 280:	0c000000 	jal	0 <IrqMgr_AddClient>
 284:	00e02825 	move	a1,a3
 288:	10000004 	b	29c <IrqMgr_JamMesgForClient+0x68>
 28c:	8e100000 	lw	s0,0(s0)
 290:	0c000000 	jal	0 <IrqMgr_AddClient>
 294:	00003025 	move	a2,zero
 298:	8e100000 	lw	s0,0(s0)
 29c:	5600fff0 	bnezl	s0,260 <IrqMgr_JamMesgForClient+0x2c>
 2a0:	8e070004 	lw	a3,4(s0)
 2a4:	8fbf0024 	lw	ra,36(sp)
 2a8:	8fb00018 	lw	s0,24(sp)
 2ac:	8fb1001c 	lw	s1,28(sp)
 2b0:	8fb20020 	lw	s2,32(sp)
 2b4:	03e00008 	jr	ra
 2b8:	27bd0028 	addiu	sp,sp,40

000002bc <IrqMgr_HandlePreNMI>:
 2bc:	27bdffd0 	addiu	sp,sp,-48
 2c0:	afb00028 	sw	s0,40(sp)
 2c4:	3c0f0000 	lui	t7,0x0
 2c8:	afbf002c 	sw	ra,44(sp)
 2cc:	25ef0000 	addiu	t7,t7,0
 2d0:	240e0001 	li	t6,1
 2d4:	00808025 	move	s0,a0
 2d8:	adee0000 	sw	t6,0(t7)
 2dc:	24180001 	li	t8,1
 2e0:	0c000000 	jal	0 <IrqMgr_AddClient>
 2e4:	a218024c 	sb	t8,588(s0)
 2e8:	3c190000 	lui	t9,0x0
 2ec:	27390000 	addiu	t9,t9,0
 2f0:	ae020250 	sw	v0,592(s0)
 2f4:	ae030254 	sw	v1,596(s0)
 2f8:	af220000 	sw	v0,0(t9)
 2fc:	af230004 	sw	v1,4(t9)
 300:	3c070141 	lui	a3,0x141
 304:	24080000 	li	t0,0
 308:	24090000 	li	t1,0
 30c:	260a0060 	addiu	t2,s0,96
 310:	240b029f 	li	t3,671
 314:	afab001c 	sw	t3,28(sp)
 318:	afaa0018 	sw	t2,24(sp)
 31c:	afa90014 	sw	t1,20(sp)
 320:	afa80010 	sw	t0,16(sp)
 324:	34e7dd76 	ori	a3,a3,0xdd76
 328:	26040258 	addiu	a0,s0,600
 32c:	0c000000 	jal	0 <IrqMgr_AddClient>
 330:	24060000 	li	a2,0
 334:	02002025 	move	a0,s0
 338:	0c000000 	jal	0 <IrqMgr_AddClient>
 33c:	26050020 	addiu	a1,s0,32
 340:	8fbf002c 	lw	ra,44(sp)
 344:	8fb00028 	lw	s0,40(sp)
 348:	27bd0030 	addiu	sp,sp,48
 34c:	03e00008 	jr	ra
 350:	00000000 	nop

00000354 <IrqMgr_CheckStack>:
 354:	27bdffe8 	addiu	sp,sp,-24
 358:	afbf0014 	sw	ra,20(sp)
 35c:	3c040000 	lui	a0,0x0
 360:	0c000000 	jal	0 <IrqMgr_AddClient>
 364:	24840108 	addiu	a0,a0,264
 368:	0c000000 	jal	0 <IrqMgr_AddClient>
 36c:	00002025 	move	a0,zero
 370:	14400006 	bnez	v0,38c <IrqMgr_CheckStack+0x38>
 374:	3c040000 	lui	a0,0x0
 378:	3c040000 	lui	a0,0x0
 37c:	0c000000 	jal	0 <IrqMgr_AddClient>
 380:	24840128 	addiu	a0,a0,296
 384:	10000011 	b	3cc <IrqMgr_CheckStack+0x78>
 388:	8fbf0014 	lw	ra,20(sp)
 38c:	24840144 	addiu	a0,a0,324
 390:	0c000000 	jal	0 <IrqMgr_AddClient>
 394:	24050007 	li	a1,7
 398:	3c040000 	lui	a0,0x0
 39c:	0c000000 	jal	0 <IrqMgr_AddClient>
 3a0:	24840148 	addiu	a0,a0,328
 3a4:	3c040000 	lui	a0,0x0
 3a8:	0c000000 	jal	0 <IrqMgr_AddClient>
 3ac:	24840150 	addiu	a0,a0,336
 3b0:	3c040000 	lui	a0,0x0
 3b4:	0c000000 	jal	0 <IrqMgr_AddClient>
 3b8:	24840180 	addiu	a0,a0,384
 3bc:	3c040000 	lui	a0,0x0
 3c0:	0c000000 	jal	0 <IrqMgr_AddClient>
 3c4:	248401c8 	addiu	a0,a0,456
 3c8:	8fbf0014 	lw	ra,20(sp)
 3cc:	27bd0018 	addiu	sp,sp,24
 3d0:	03e00008 	jr	ra
 3d4:	00000000 	nop

000003d8 <IrqMgr_HandlePRENMI450>:
 3d8:	27bdffd0 	addiu	sp,sp,-48
 3dc:	afb00028 	sw	s0,40(sp)
 3e0:	3c0f0000 	lui	t7,0x0
 3e4:	afbf002c 	sw	ra,44(sp)
 3e8:	25ef0000 	addiu	t7,t7,0
 3ec:	240e0002 	li	t6,2
 3f0:	00808025 	move	s0,a0
 3f4:	adee0000 	sw	t6,0(t7)
 3f8:	24180002 	li	t8,2
 3fc:	a218024c 	sb	t8,588(s0)
 400:	26190060 	addiu	t9,s0,96
 404:	3c070015 	lui	a3,0x15
 408:	24080000 	li	t0,0
 40c:	24090000 	li	t1,0
 410:	240a02a0 	li	t2,672
 414:	afaa001c 	sw	t2,28(sp)
 418:	afa90014 	sw	t1,20(sp)
 41c:	afa80010 	sw	t0,16(sp)
 420:	34e7752a 	ori	a3,a3,0x752a
 424:	afb90018 	sw	t9,24(sp)
 428:	26040258 	addiu	a0,s0,600
 42c:	0c000000 	jal	0 <IrqMgr_AddClient>
 430:	24060000 	li	a2,0
 434:	02002025 	move	a0,s0
 438:	0c000000 	jal	0 <IrqMgr_AddClient>
 43c:	26050040 	addiu	a1,s0,64
 440:	8fbf002c 	lw	ra,44(sp)
 444:	8fb00028 	lw	s0,40(sp)
 448:	27bd0030 	addiu	sp,sp,48
 44c:	03e00008 	jr	ra
 450:	00000000 	nop

00000454 <IrqMgr_HandlePRENMI480>:
 454:	27bdffc8 	addiu	sp,sp,-56
 458:	00802825 	move	a1,a0
 45c:	afbf0024 	sw	ra,36(sp)
 460:	24a20060 	addiu	v0,a1,96
 464:	24840258 	addiu	a0,a0,600
 468:	3c07000e 	lui	a3,0xe
 46c:	240e0000 	li	t6,0
 470:	240f0000 	li	t7,0
 474:	241802a1 	li	t8,673
 478:	afb8001c 	sw	t8,28(sp)
 47c:	afaf0014 	sw	t7,20(sp)
 480:	afae0010 	sw	t6,16(sp)
 484:	34e74e1c 	ori	a3,a3,0x4e1c
 488:	afa40030 	sw	a0,48(sp)
 48c:	afa20018 	sw	v0,24(sp)
 490:	afa2002c 	sw	v0,44(sp)
 494:	0c000000 	jal	0 <IrqMgr_AddClient>
 498:	24060000 	li	a2,0
 49c:	0c000000 	jal	0 <IrqMgr_AddClient>
 4a0:	00000000 	nop
 4a4:	10400010 	beqz	v0,4e8 <IrqMgr_HandlePRENMI480+0x94>
 4a8:	00402825 	move	a1,v0
 4ac:	3c040000 	lui	a0,0x0
 4b0:	0c000000 	jal	0 <IrqMgr_AddClient>
 4b4:	248401cc 	addiu	a0,a0,460
 4b8:	8fb9002c 	lw	t9,44(sp)
 4bc:	24080000 	li	t0,0
 4c0:	24090000 	li	t1,0
 4c4:	240a02a0 	li	t2,672
 4c8:	afaa001c 	sw	t2,28(sp)
 4cc:	afa90014 	sw	t1,20(sp)
 4d0:	afa80010 	sw	t0,16(sp)
 4d4:	8fa40030 	lw	a0,48(sp)
 4d8:	24060000 	li	a2,0
 4dc:	3407b71b 	li	a3,0xb71b
 4e0:	0c000000 	jal	0 <IrqMgr_AddClient>
 4e4:	afb90018 	sw	t9,24(sp)
 4e8:	8fbf0024 	lw	ra,36(sp)
 4ec:	27bd0038 	addiu	sp,sp,56
 4f0:	03e00008 	jr	ra
 4f4:	00000000 	nop

000004f8 <IrqMgr_HandlePRENMI500>:
 4f8:	27bdffe8 	addiu	sp,sp,-24
 4fc:	afbf0014 	sw	ra,20(sp)
 500:	0c000000 	jal	0 <IrqMgr_AddClient>
 504:	afa40018 	sw	a0,24(sp)
 508:	8fbf0014 	lw	ra,20(sp)
 50c:	27bd0018 	addiu	sp,sp,24
 510:	03e00008 	jr	ra
 514:	00000000 	nop

00000518 <IrqMgr_HandleRetrace>:
 518:	27bdffe8 	addiu	sp,sp,-24
 51c:	3c0e0000 	lui	t6,0x0
 520:	afbf0014 	sw	ra,20(sp)
 524:	25ce0000 	addiu	t6,t6,0
 528:	8dd80000 	lw	t8,0(t6)
 52c:	8dd90004 	lw	t9,4(t6)
 530:	1700001c 	bnez	t8,5a4 <IrqMgr_HandleRetrace+0x8c>
 534:	00000000 	nop
 538:	1720001a 	bnez	t9,5a4 <IrqMgr_HandleRetrace+0x8c>
 53c:	00000000 	nop
 540:	8c880278 	lw	t0,632(a0)
 544:	8c89027c 	lw	t1,636(a0)
 548:	15000009 	bnez	t0,570 <IrqMgr_HandleRetrace+0x58>
 54c:	00000000 	nop
 550:	15200007 	bnez	t1,570 <IrqMgr_HandleRetrace+0x58>
 554:	00000000 	nop
 558:	0c000000 	jal	0 <IrqMgr_AddClient>
 55c:	afa40018 	sw	a0,24(sp)
 560:	8fa40018 	lw	a0,24(sp)
 564:	ac820278 	sw	v0,632(a0)
 568:	1000000e 	b	5a4 <IrqMgr_HandleRetrace+0x8c>
 56c:	ac83027c 	sw	v1,636(a0)
 570:	0c000000 	jal	0 <IrqMgr_AddClient>
 574:	afa40018 	sw	a0,24(sp)
 578:	8fa40018 	lw	a0,24(sp)
 57c:	3c0f0000 	lui	t7,0x0
 580:	25ef0000 	addiu	t7,t7,0
 584:	8c8a0278 	lw	t2,632(a0)
 588:	8c8b027c 	lw	t3,636(a0)
 58c:	004a6023 	subu	t4,v0,t2
 590:	006b082b 	sltu	at,v1,t3
 594:	01816023 	subu	t4,t4,at
 598:	adec0000 	sw	t4,0(t7)
 59c:	006b6823 	subu	t5,v1,t3
 5a0:	aded0004 	sw	t5,4(t7)
 5a4:	3c020000 	lui	v0,0x0
 5a8:	24420000 	addiu	v0,v0,0
 5ac:	8c4e0000 	lw	t6,0(v0)
 5b0:	00802825 	move	a1,a0
 5b4:	25d80001 	addiu	t8,t6,1
 5b8:	0c000000 	jal	0 <IrqMgr_AddClient>
 5bc:	ac580000 	sw	t8,0(v0)
 5c0:	8fbf0014 	lw	ra,20(sp)
 5c4:	27bd0018 	addiu	sp,sp,24
 5c8:	03e00008 	jr	ra
 5cc:	00000000 	nop

000005d0 <IrqMgr_ThreadEntry>:
 5d0:	27bdffb0 	addiu	sp,sp,-80
 5d4:	afb00018 	sw	s0,24(sp)
 5d8:	00808025 	move	s0,a0
 5dc:	afbf003c 	sw	ra,60(sp)
 5e0:	3c040000 	lui	a0,0x0
 5e4:	afbe0038 	sw	s8,56(sp)
 5e8:	afb70034 	sw	s7,52(sp)
 5ec:	afb60030 	sw	s6,48(sp)
 5f0:	afb5002c 	sw	s5,44(sp)
 5f4:	afb40028 	sw	s4,40(sp)
 5f8:	afb30024 	sw	s3,36(sp)
 5fc:	afb20020 	sw	s2,32(sp)
 600:	afb1001c 	sw	s1,28(sp)
 604:	afa0004c 	sw	zero,76(sp)
 608:	0c000000 	jal	0 <IrqMgr_AddClient>
 60c:	248401f4 	addiu	a0,a0,500
 610:	3c1e0000 	lui	s8,0x0
 614:	3c170000 	lui	s7,0x0
 618:	3c160000 	lui	s6,0x0
 61c:	3c150000 	lui	s5,0x0
 620:	3c140000 	lui	s4,0x0
 624:	00008825 	move	s1,zero
 628:	269402c8 	addiu	s4,s4,712
 62c:	26b502d8 	addiu	s5,s5,728
 630:	26d6028c 	addiu	s6,s6,652
 634:	26f7029c 	addiu	s7,s7,668
 638:	27de0250 	addiu	s8,s8,592
 63c:	26120060 	addiu	s2,s0,96
 640:	27b3004c 	addiu	s3,sp,76
 644:	02402025 	move	a0,s2
 648:	02602825 	move	a1,s3
 64c:	0c000000 	jal	0 <IrqMgr_AddClient>
 650:	24060001 	li	a2,1
 654:	8fae004c 	lw	t6,76(sp)
 658:	25cffd66 	addiu	t7,t6,-666
 65c:	2de10008 	sltiu	at,t7,8
 660:	1020002e 	beqz	at,71c <IrqMgr_ThreadEntry+0x14c>
 664:	000f7880 	sll	t7,t7,0x2
 668:	3c010000 	lui	at,0x0
 66c:	002f0821 	addu	at,at,t7
 670:	8c2f0388 	lw	t7,904(at)
 674:	01e00008 	jr	t7
 678:	00000000 	nop
 67c:	0c000000 	jal	0 <IrqMgr_AddClient>
 680:	02002025 	move	a0,s0
 684:	10000029 	b	72c <IrqMgr_ThreadEntry+0x15c>
 688:	00000000 	nop
 68c:	3c040000 	lui	a0,0x0
 690:	0c000000 	jal	0 <IrqMgr_AddClient>
 694:	24840218 	addiu	a0,a0,536
 698:	3c040000 	lui	a0,0x0
 69c:	0c000000 	jal	0 <IrqMgr_AddClient>
 6a0:	24840228 	addiu	a0,a0,552
 6a4:	0c000000 	jal	0 <IrqMgr_AddClient>
 6a8:	02002025 	move	a0,s0
 6ac:	1000001f 	b	72c <IrqMgr_ThreadEntry+0x15c>
 6b0:	00000000 	nop
 6b4:	0c000000 	jal	0 <IrqMgr_AddClient>
 6b8:	03c02025 	move	a0,s8
 6bc:	3c040000 	lui	a0,0x0
 6c0:	0c000000 	jal	0 <IrqMgr_AddClient>
 6c4:	24840260 	addiu	a0,a0,608
 6c8:	0c000000 	jal	0 <IrqMgr_AddClient>
 6cc:	02002025 	move	a0,s0
 6d0:	10000016 	b	72c <IrqMgr_ThreadEntry+0x15c>
 6d4:	00000000 	nop
 6d8:	0c000000 	jal	0 <IrqMgr_AddClient>
 6dc:	02c02025 	move	a0,s6
 6e0:	0c000000 	jal	0 <IrqMgr_AddClient>
 6e4:	02e02025 	move	a0,s7
 6e8:	0c000000 	jal	0 <IrqMgr_AddClient>
 6ec:	02002025 	move	a0,s0
 6f0:	1000000e 	b	72c <IrqMgr_ThreadEntry+0x15c>
 6f4:	00000000 	nop
 6f8:	02802025 	move	a0,s4
 6fc:	0c000000 	jal	0 <IrqMgr_AddClient>
 700:	24110001 	li	s1,1
 704:	0c000000 	jal	0 <IrqMgr_AddClient>
 708:	02a02025 	move	a0,s5
 70c:	0c000000 	jal	0 <IrqMgr_AddClient>
 710:	02002025 	move	a0,s0
 714:	10000005 	b	72c <IrqMgr_ThreadEntry+0x15c>
 718:	00000000 	nop
 71c:	3c040000 	lui	a0,0x0
 720:	24840304 	addiu	a0,a0,772
 724:	0c000000 	jal	0 <IrqMgr_AddClient>
 728:	8fa5004c 	lw	a1,76(sp)
 72c:	5220ffc6 	beqzl	s1,648 <IrqMgr_ThreadEntry+0x78>
 730:	02402025 	move	a0,s2
 734:	3c040000 	lui	a0,0x0
 738:	0c000000 	jal	0 <IrqMgr_AddClient>
 73c:	2484033c 	addiu	a0,a0,828
 740:	8fbf003c 	lw	ra,60(sp)
 744:	8fb00018 	lw	s0,24(sp)
 748:	8fb1001c 	lw	s1,28(sp)
 74c:	8fb20020 	lw	s2,32(sp)
 750:	8fb30024 	lw	s3,36(sp)
 754:	8fb40028 	lw	s4,40(sp)
 758:	8fb5002c 	lw	s5,44(sp)
 75c:	8fb60030 	lw	s6,48(sp)
 760:	8fb70034 	lw	s7,52(sp)
 764:	8fbe0038 	lw	s8,56(sp)
 768:	03e00008 	jr	ra
 76c:	27bd0050 	addiu	sp,sp,80

00000770 <IrqMgr_Init>:
 770:	27bdffd0 	addiu	sp,sp,-48
 774:	afb00020 	sw	s0,32(sp)
 778:	00808025 	move	s0,a0
 77c:	afa60038 	sw	a2,56(sp)
 780:	afbf0024 	sw	ra,36(sp)
 784:	afa50034 	sw	a1,52(sp)
 788:	afa7003c 	sw	a3,60(sp)
 78c:	3c060000 	lui	a2,0x0
 790:	3c040000 	lui	a0,0x0
 794:	24840360 	addiu	a0,a0,864
 798:	24c60368 	addiu	a2,a2,872
 79c:	2407015a 	li	a3,346
 7a0:	0c000000 	jal	0 <IrqMgr_AddClient>
 7a4:	02002825 	move	a1,s0
 7a8:	3c040000 	lui	a0,0x0
 7ac:	3c060000 	lui	a2,0x0
 7b0:	24c6037c 	addiu	a2,a2,892
 7b4:	24840374 	addiu	a0,a0,884
 7b8:	8fa50034 	lw	a1,52(sp)
 7bc:	0c000000 	jal	0 <IrqMgr_AddClient>
 7c0:	2407015b 	li	a3,347
 7c4:	240e0001 	li	t6,1
 7c8:	240f0004 	li	t7,4
 7cc:	24180003 	li	t8,3
 7d0:	24080000 	li	t0,0
 7d4:	24090000 	li	t1,0
 7d8:	ae000248 	sw	zero,584(s0)
 7dc:	a60e0000 	sh	t6,0(s0)
 7e0:	a60f0020 	sh	t7,32(s0)
 7e4:	a6180040 	sh	t8,64(s0)
 7e8:	a200024c 	sb	zero,588(s0)
 7ec:	ae090254 	sw	t1,596(s0)
 7f0:	ae080250 	sw	t0,592(s0)
 7f4:	26040060 	addiu	a0,s0,96
 7f8:	afa4002c 	sw	a0,44(sp)
 7fc:	26050078 	addiu	a1,s0,120
 800:	0c000000 	jal	0 <IrqMgr_AddClient>
 804:	24060008 	li	a2,8
 808:	2404000e 	li	a0,14
 80c:	8fa5002c 	lw	a1,44(sp)
 810:	0c000000 	jal	0 <IrqMgr_AddClient>
 814:	2406029d 	li	a2,669
 818:	8fa4002c 	lw	a0,44(sp)
 81c:	2405029a 	li	a1,666
 820:	0c000000 	jal	0 <IrqMgr_AddClient>
 824:	93a6003f 	lbu	a2,63(sp)
 828:	8fb90034 	lw	t9,52(sp)
 82c:	8faa0038 	lw	t2,56(sp)
 830:	26040098 	addiu	a0,s0,152
 834:	3c060000 	lui	a2,0x0
 838:	24c60000 	addiu	a2,a2,0
 83c:	afa4002c 	sw	a0,44(sp)
 840:	24050013 	li	a1,19
 844:	02003825 	move	a3,s0
 848:	afb90010 	sw	t9,16(sp)
 84c:	0c000000 	jal	0 <IrqMgr_AddClient>
 850:	afaa0014 	sw	t2,20(sp)
 854:	0c000000 	jal	0 <IrqMgr_AddClient>
 858:	8fa4002c 	lw	a0,44(sp)
 85c:	8fbf0024 	lw	ra,36(sp)
 860:	8fb00020 	lw	s0,32(sp)
 864:	27bd0030 	addiu	sp,sp,48
 868:	03e00008 	jr	ra
 86c:	00000000 	nop
