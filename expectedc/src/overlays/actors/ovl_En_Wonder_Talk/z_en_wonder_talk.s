
build/src/overlays/actors/ovl_En_Wonder_Talk/z_en_wonder_talk.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnWonderTalk_Destroy>:
   0:	afa40000 	sw	a0,0(sp)
   4:	03e00008 	jr	ra
   8:	afa50004 	sw	a1,4(sp)

0000000c <EnWonderTalk_Init>:
   c:	27bdffe0 	addiu	sp,sp,-32
  10:	afb00018 	sw	s0,24(sp)
  14:	00808025 	move	s0,a0
  18:	afbf001c 	sw	ra,28(sp)
  1c:	3c040000 	lui	a0,0x0
  20:	afa50024 	sw	a1,36(sp)
  24:	0c000000 	jal	0 <EnWonderTalk_Destroy>
  28:	24840000 	addiu	a0,a0,0
  2c:	3c040000 	lui	a0,0x0
  30:	24840004 	addiu	a0,a0,4
  34:	0c000000 	jal	0 <EnWonderTalk_Destroy>
  38:	8605001c 	lh	a1,28(s0)
  3c:	8602001c 	lh	v0,28(s0)
  40:	2401003f 	li	at,63
  44:	240a0001 	li	t2,1
  48:	3048003f 	andi	t0,v0,0x3f
  4c:	a6080154 	sh	t0,340(s0)
  50:	86050154 	lh	a1,340(s0)
  54:	000272c3 	sra	t6,v0,0xb
  58:	0002c183 	sra	t8,v0,0x6
  5c:	31cf001f 	andi	t7,t6,0x1f
  60:	3319001f 	andi	t9,t8,0x1f
  64:	a60f0150 	sh	t7,336(s0)
  68:	14a10004 	bne	a1,at,7c <EnWonderTalk_Init+0x70>
  6c:	a6190152 	sh	t9,338(s0)
  70:	2409ffff 	li	t1,-1
  74:	a6090154 	sh	t1,340(s0)
  78:	86050154 	lh	a1,340(s0)
  7c:	04a0000c 	bltz	a1,b0 <EnWonderTalk_Init+0xa4>
  80:	a20a001f 	sb	t2,31(s0)
  84:	0c000000 	jal	0 <EnWonderTalk_Destroy>
  88:	8fa40024 	lw	a0,36(sp)
  8c:	10400008 	beqz	v0,b0 <EnWonderTalk_Init+0xa4>
  90:	3c040000 	lui	a0,0x0
  94:	24840034 	addiu	a0,a0,52
  98:	0c000000 	jal	0 <EnWonderTalk_Destroy>
  9c:	86050154 	lh	a1,340(s0)
  a0:	0c000000 	jal	0 <EnWonderTalk_Destroy>
  a4:	02002025 	move	a0,s0
  a8:	10000008 	b	cc <EnWonderTalk_Init+0xc0>
  ac:	8fbf001c 	lw	ra,28(sp)
  b0:	3c014220 	lui	at,0x4220
  b4:	44812000 	mtc1	at,$f4
  b8:	3c0b0000 	lui	t3,0x0
  bc:	256b0000 	addiu	t3,t3,0
  c0:	ae0b014c 	sw	t3,332(s0)
  c4:	e604015c 	swc1	$f4,348(s0)
  c8:	8fbf001c 	lw	ra,28(sp)
  cc:	8fb00018 	lw	s0,24(sp)
  d0:	27bd0020 	addiu	sp,sp,32
  d4:	03e00008 	jr	ra
  d8:	00000000 	nop

000000dc <func_80B391CC>:
  dc:	27bdffe0 	addiu	sp,sp,-32
  e0:	afbf001c 	sw	ra,28(sp)
  e4:	afb00018 	sw	s0,24(sp)
  e8:	84860154 	lh	a2,340(a0)
  ec:	00808025 	move	s0,a0
  f0:	00a03825 	move	a3,a1
  f4:	04c20007 	bltzl	a2,114 <func_80B391CC+0x38>
  f8:	860e0150 	lh	t6,336(s0)
  fc:	00e02025 	move	a0,a3
 100:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 104:	00c02825 	move	a1,a2
 108:	5440008c 	bnezl	v0,33c <func_80B391CC+0x260>
 10c:	8fbf001c 	lw	ra,28(sp)
 110:	860e0150 	lh	t6,336(s0)
 114:	25cfffff 	addiu	t7,t6,-1
 118:	2de10005 	sltiu	at,t7,5
 11c:	1020007b 	beqz	at,30c <func_80B391CC+0x230>
 120:	000f7880 	sll	t7,t7,0x2
 124:	3c010000 	lui	at,0x0
 128:	002f0821 	addu	at,at,t7
 12c:	8c2f0408 	lw	t7,1032(at)
 130:	01e00008 	jr	t7
 134:	00000000 	nop
 138:	3c040000 	lui	a0,0x0
 13c:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 140:	24840074 	addiu	a0,a0,116
 144:	44800000 	mtc1	zero,$f0
 148:	3c0142a0 	lui	at,0x42a0
 14c:	44812000 	mtc1	at,$f4
 150:	460001a1 	cvt.d.s	$f6,$f0
 154:	3c040000 	lui	a0,0x0
 158:	44073000 	mfc1	a3,$f6
 15c:	44063800 	mfc1	a2,$f7
 160:	248400a0 	addiu	a0,a0,160
 164:	e6000160 	swc1	$f0,352(s0)
 168:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 16c:	e604015c 	swc1	$f4,348(s0)
 170:	3c180000 	lui	t8,0x0
 174:	8f180004 	lw	t8,4(t8)
 178:	24197040 	li	t9,28736
 17c:	3c040000 	lui	a0,0x0
 180:	13000007 	beqz	t8,1a0 <func_80B391CC+0xc4>
 184:	00000000 	nop
 188:	3c040000 	lui	a0,0x0
 18c:	a619010e 	sh	t9,270(s0)
 190:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 194:	248400d4 	addiu	a0,a0,212
 198:	10000006 	b	1b4 <func_80B391CC+0xd8>
 19c:	24090005 	li	t1,5
 1a0:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 1a4:	248400fc 	addiu	a0,a0,252
 1a8:	24087088 	li	t0,28808
 1ac:	a608010e 	sh	t0,270(s0)
 1b0:	24090005 	li	t1,5
 1b4:	3c040000 	lui	a0,0x0
 1b8:	a6090156 	sh	t1,342(s0)
 1bc:	24840124 	addiu	a0,a0,292
 1c0:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 1c4:	9605010e 	lhu	a1,270(s0)
 1c8:	10000054 	b	31c <func_80B391CC+0x240>
 1cc:	00000000 	nop
 1d0:	3c040000 	lui	a0,0x0
 1d4:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 1d8:	24840164 	addiu	a0,a0,356
 1dc:	3c0141f0 	lui	at,0x41f0
 1e0:	44810000 	mtc1	at,$f0
 1e4:	3c014220 	lui	at,0x4220
 1e8:	44814000 	mtc1	at,$f8
 1ec:	460002a1 	cvt.d.s	$f10,$f0
 1f0:	240a5002 	li	t2,20482
 1f4:	240b0004 	li	t3,4
 1f8:	44075000 	mfc1	a3,$f10
 1fc:	44065800 	mfc1	a2,$f11
 200:	3c040000 	lui	a0,0x0
 204:	a60a010e 	sh	t2,270(s0)
 208:	a60b0156 	sh	t3,342(s0)
 20c:	24840198 	addiu	a0,a0,408
 210:	e6000160 	swc1	$f0,352(s0)
 214:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 218:	e608015c 	swc1	$f8,348(s0)
 21c:	1000003f 	b	31c <func_80B391CC+0x240>
 220:	00000000 	nop
 224:	44800000 	mtc1	zero,$f0
 228:	3c0142dc 	lui	at,0x42dc
 22c:	44818000 	mtc1	at,$f16
 230:	460004a1 	cvt.d.s	$f18,$f0
 234:	240c501e 	li	t4,20510
 238:	240d0005 	li	t5,5
 23c:	44079000 	mfc1	a3,$f18
 240:	44069800 	mfc1	a2,$f19
 244:	3c040000 	lui	a0,0x0
 248:	a60c010e 	sh	t4,270(s0)
 24c:	a60d0156 	sh	t5,342(s0)
 250:	248401cc 	addiu	a0,a0,460
 254:	e6000160 	swc1	$f0,352(s0)
 258:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 25c:	e610015c 	swc1	$f16,348(s0)
 260:	1000002e 	b	31c <func_80B391CC+0x240>
 264:	00000000 	nop
 268:	44800000 	mtc1	zero,$f0
 26c:	240e5020 	li	t6,20512
 270:	240f0006 	li	t7,6
 274:	46000121 	cvt.d.s	$f4,$f0
 278:	3c040000 	lui	a0,0x0
 27c:	44072000 	mfc1	a3,$f4
 280:	44062800 	mfc1	a2,$f5
 284:	a60e010e 	sh	t6,270(s0)
 288:	a60f0156 	sh	t7,342(s0)
 28c:	24840200 	addiu	a0,a0,512
 290:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 294:	e6000160 	swc1	$f0,352(s0)
 298:	3c0142f0 	lui	at,0x42f0
 29c:	44813000 	mtc1	at,$f6
 2a0:	3c180000 	lui	t8,0x0
 2a4:	e606015c 	swc1	$f6,348(s0)
 2a8:	97180ed6 	lhu	t8,3798(t8)
 2ac:	33192000 	andi	t9,t8,0x2000
 2b0:	1320001a 	beqz	t9,31c <func_80B391CC+0x240>
 2b4:	00000000 	nop
 2b8:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 2bc:	02002025 	move	a0,s0
 2c0:	10000016 	b	31c <func_80B391CC+0x240>
 2c4:	00000000 	nop
 2c8:	44800000 	mtc1	zero,$f0
 2cc:	3c0142dc 	lui	at,0x42dc
 2d0:	44814000 	mtc1	at,$f8
 2d4:	460002a1 	cvt.d.s	$f10,$f0
 2d8:	2408501f 	li	t0,20511
 2dc:	24090005 	li	t1,5
 2e0:	44075000 	mfc1	a3,$f10
 2e4:	44065800 	mfc1	a2,$f11
 2e8:	3c040000 	lui	a0,0x0
 2ec:	a608010e 	sh	t0,270(s0)
 2f0:	a6090156 	sh	t1,342(s0)
 2f4:	24840234 	addiu	a0,a0,564
 2f8:	e6000160 	swc1	$f0,352(s0)
 2fc:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 300:	e608015c 	swc1	$f8,348(s0)
 304:	10000005 	b	31c <func_80B391CC+0x240>
 308:	00000000 	nop
 30c:	240a7072 	li	t2,28786
 310:	240b0005 	li	t3,5
 314:	a60a010e 	sh	t2,270(s0)
 318:	a60b0156 	sh	t3,342(s0)
 31c:	3c040000 	lui	a0,0x0
 320:	24840268 	addiu	a0,a0,616
 324:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 328:	9605010e 	lhu	a1,270(s0)
 32c:	3c0c0000 	lui	t4,0x0
 330:	258c0000 	addiu	t4,t4,0
 334:	ae0c014c 	sw	t4,332(s0)
 338:	8fbf001c 	lw	ra,28(sp)
 33c:	8fb00018 	lw	s0,24(sp)
 340:	27bd0020 	addiu	sp,sp,32
 344:	03e00008 	jr	ra
 348:	00000000 	nop

0000034c <func_80B3943C>:
 34c:	27bdffe0 	addiu	sp,sp,-32
 350:	afbf001c 	sw	ra,28(sp)
 354:	afb00018 	sw	s0,24(sp)
 358:	afa50024 	sw	a1,36(sp)
 35c:	848e015a 	lh	t6,346(a0)
 360:	84980150 	lh	t8,336(a0)
 364:	24010004 	li	at,4
 368:	25cf0001 	addiu	t7,t6,1
 36c:	00808025 	move	s0,a0
 370:	1701000a 	bne	t8,at,39c <func_80B3943C+0x50>
 374:	a48f015a 	sh	t7,346(a0)
 378:	3c190000 	lui	t9,0x0
 37c:	97390ed6 	lhu	t9,3798(t9)
 380:	33282000 	andi	t0,t9,0x2000
 384:	51000006 	beqzl	t0,3a0 <func_80B3943C+0x54>
 388:	86050154 	lh	a1,340(s0)
 38c:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 390:	00000000 	nop
 394:	10000056 	b	4f0 <func_80B3943C+0x1a4>
 398:	8fbf001c 	lw	ra,28(sp)
 39c:	86050154 	lh	a1,340(s0)
 3a0:	04a20005 	bltzl	a1,3b8 <func_80B3943C+0x6c>
 3a4:	02002025 	move	a0,s0
 3a8:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 3ac:	8fa40024 	lw	a0,36(sp)
 3b0:	1440004e 	bnez	v0,4ec <func_80B3943C+0x1a0>
 3b4:	02002025 	move	a0,s0
 3b8:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 3bc:	8fa50024 	lw	a1,36(sp)
 3c0:	50400016 	beqzl	v0,41c <func_80B3943C+0xd0>
 3c4:	c600015c 	lwc1	$f0,348(s0)
 3c8:	86090156 	lh	t1,342(s0)
 3cc:	24010006 	li	at,6
 3d0:	3c0a0000 	lui	t2,0x0
 3d4:	11210003 	beq	t1,at,3e4 <func_80B3943C+0x98>
 3d8:	254a0000 	addiu	t2,t2,0
 3dc:	10000043 	b	4ec <func_80B3943C+0x1a0>
 3e0:	ae0a014c 	sw	t2,332(s0)
 3e4:	86050154 	lh	a1,340(s0)
 3e8:	04a00007 	bltz	a1,408 <func_80B3943C+0xbc>
 3ec:	00000000 	nop
 3f0:	8e0b0004 	lw	t3,4(s0)
 3f4:	2401fffe 	li	at,-2
 3f8:	01616024 	and	t4,t3,at
 3fc:	ae0c0004 	sw	t4,4(s0)
 400:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 404:	8fa40024 	lw	a0,36(sp)
 408:	3c0d0000 	lui	t5,0x0
 40c:	25ad0000 	addiu	t5,t5,0
 410:	10000036 	b	4ec <func_80B3943C+0x1a0>
 414:	ae0d014c 	sw	t5,332(s0)
 418:	c600015c 	lwc1	$f0,348(s0)
 41c:	c6040090 	lwc1	$f4,144(s0)
 420:	4604003c 	c.lt.s	$f0,$f4
 424:	00000000 	nop
 428:	45030031 	bc1tl	4f0 <func_80B3943C+0x1a4>
 42c:	8fbf001c 	lw	ra,28(sp)
 430:	860e008a 	lh	t6,138(s0)
 434:	860f0032 	lh	t7,50(s0)
 438:	01cf1023 	subu	v0,t6,t7
 43c:	00021400 	sll	v0,v0,0x10
 440:	00021403 	sra	v0,v0,0x10
 444:	04400004 	bltz	v0,458 <func_80B3943C+0x10c>
 448:	00021823 	negu	v1,v0
 44c:	00021c00 	sll	v1,v0,0x10
 450:	10000003 	b	460 <func_80B3943C+0x114>
 454:	00031c03 	sra	v1,v1,0x10
 458:	00031c00 	sll	v1,v1,0x10
 45c:	00031c03 	sra	v1,v1,0x10
 460:	28614000 	slti	at,v1,16384
 464:	50200022 	beqzl	at,4f0 <func_80B3943C+0x1a4>
 468:	8fbf001c 	lw	ra,28(sp)
 46c:	8618015a 	lh	t8,346(s0)
 470:	3c040000 	lui	a0,0x0
 474:	2b010002 	slti	at,t8,2
 478:	54200018 	bnezl	at,4dc <func_80B3943C+0x190>
 47c:	a600015a 	sh	zero,346(s0)
 480:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 484:	248402a8 	addiu	a0,a0,680
 488:	3c040000 	lui	a0,0x0
 48c:	248402ac 	addiu	a0,a0,684
 490:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 494:	86050154 	lh	a1,340(s0)
 498:	3c040000 	lui	a0,0x0
 49c:	248402dc 	addiu	a0,a0,732
 4a0:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 4a4:	86050150 	lh	a1,336(s0)
 4a8:	3c040000 	lui	a0,0x0
 4ac:	24840310 	addiu	a0,a0,784
 4b0:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 4b4:	9605010e 	lhu	a1,270(s0)
 4b8:	3c040000 	lui	a0,0x0
 4bc:	24840340 	addiu	a0,a0,832
 4c0:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 4c4:	86050034 	lh	a1,52(s0)
 4c8:	3c040000 	lui	a0,0x0
 4cc:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 4d0:	24840370 	addiu	a0,a0,880
 4d4:	c600015c 	lwc1	$f0,348(s0)
 4d8:	a600015a 	sh	zero,346(s0)
 4dc:	44060000 	mfc1	a2,$f0
 4e0:	8fa50024 	lw	a1,36(sp)
 4e4:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 4e8:	02002025 	move	a0,s0
 4ec:	8fbf001c 	lw	ra,28(sp)
 4f0:	8fb00018 	lw	s0,24(sp)
 4f4:	27bd0020 	addiu	sp,sp,32
 4f8:	03e00008 	jr	ra
 4fc:	00000000 	nop

00000500 <func_80B395F0>:
 500:	27bdffc8 	addiu	sp,sp,-56
 504:	afb0002c 	sw	s0,44(sp)
 508:	00808025 	move	s0,a0
 50c:	afbf0034 	sw	ra,52(sp)
 510:	afb10030 	sw	s1,48(sp)
 514:	00a08825 	move	s1,a1
 518:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 51c:	24a420d8 	addiu	a0,a1,8408
 520:	860e0156 	lh	t6,342(s0)
 524:	55c20077 	bnel	t6,v0,704 <func_80B395F0+0x204>
 528:	8fbf0034 	lw	ra,52(sp)
 52c:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 530:	02202025 	move	a0,s1
 534:	50400073 	beqzl	v0,704 <func_80B395F0+0x204>
 538:	8fbf0034 	lw	ra,52(sp)
 53c:	86050154 	lh	a1,340(s0)
 540:	04a20008 	bltzl	a1,564 <func_80B395F0+0x64>
 544:	86020150 	lh	v0,336(s0)
 548:	8e0f0004 	lw	t7,4(s0)
 54c:	2401fffe 	li	at,-2
 550:	02202025 	move	a0,s1
 554:	01e1c024 	and	t8,t7,at
 558:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 55c:	ae180004 	sw	t8,4(s0)
 560:	86020150 	lh	v0,336(s0)
 564:	24030001 	li	v1,1
 568:	24010002 	li	at,2
 56c:	10430009 	beq	v0,v1,594 <func_80B395F0+0x94>
 570:	00000000 	nop
 574:	1041000d 	beq	v0,at,5ac <func_80B395F0+0xac>
 578:	24010003 	li	at,3
 57c:	10410031 	beq	v0,at,644 <func_80B395F0+0x144>
 580:	24010005 	li	at,5
 584:	10410047 	beq	v0,at,6a4 <func_80B395F0+0x1a4>
 588:	00000000 	nop
 58c:	1000005d 	b	704 <func_80B395F0+0x204>
 590:	8fbf0034 	lw	ra,52(sp)
 594:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 598:	02202025 	move	a0,s1
 59c:	3c190000 	lui	t9,0x0
 5a0:	27390000 	addiu	t9,t9,0
 5a4:	10000056 	b	700 <func_80B395F0+0x200>
 5a8:	ae19014c 	sw	t9,332(s0)
 5ac:	3c020001 	lui	v0,0x1
 5b0:	00511021 	addu	v0,v0,s1
 5b4:	904204bd 	lbu	v0,1213(v0)
 5b8:	3c080000 	lui	t0,0x0
 5bc:	10400005 	beqz	v0,5d4 <func_80B395F0+0xd4>
 5c0:	00000000 	nop
 5c4:	10430012 	beq	v0,v1,610 <func_80B395F0+0x110>
 5c8:	3c040000 	lui	a0,0x0
 5cc:	10000015 	b	624 <func_80B395F0+0x124>
 5d0:	240c0006 	li	t4,6
 5d4:	8d080004 	lw	t0,4(t0)
 5d8:	3c040000 	lui	a0,0x0
 5dc:	11000007 	beqz	t0,5fc <func_80B395F0+0xfc>
 5e0:	00000000 	nop
 5e4:	3c040000 	lui	a0,0x0
 5e8:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 5ec:	24840374 	addiu	a0,a0,884
 5f0:	24095001 	li	t1,20481
 5f4:	1000000a 	b	620 <func_80B395F0+0x120>
 5f8:	a609010e 	sh	t1,270(s0)
 5fc:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 600:	248403a8 	addiu	a0,a0,936
 604:	240a5003 	li	t2,20483
 608:	10000005 	b	620 <func_80B395F0+0x120>
 60c:	a60a010e 	sh	t2,270(s0)
 610:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 614:	248403dc 	addiu	a0,a0,988
 618:	240b5004 	li	t3,20484
 61c:	a60b010e 	sh	t3,270(s0)
 620:	240c0006 	li	t4,6
 624:	a60c0156 	sh	t4,342(s0)
 628:	02202025 	move	a0,s1
 62c:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 630:	9605010e 	lhu	a1,270(s0)
 634:	3c0d0000 	lui	t5,0x0
 638:	25ad0000 	addiu	t5,t5,0
 63c:	10000030 	b	700 <func_80B395F0+0x200>
 640:	ae0d014c 	sw	t5,332(s0)
 644:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 648:	02202025 	move	a0,s1
 64c:	920e0164 	lbu	t6,356(s0)
 650:	26241c24 	addiu	a0,s1,7204
 654:	02202825 	move	a1,s1
 658:	15c0000e 	bnez	t6,694 <func_80B395F0+0x194>
 65c:	2406000d 	li	a2,13
 660:	c6040028 	lwc1	$f4,40(s0)
 664:	8e070024 	lw	a3,36(s0)
 668:	240f0002 	li	t7,2
 66c:	e7a40010 	swc1	$f4,16(sp)
 670:	c606002c 	lwc1	$f6,44(s0)
 674:	afaf0024 	sw	t7,36(sp)
 678:	afa00020 	sw	zero,32(sp)
 67c:	afa0001c 	sw	zero,28(sp)
 680:	afa00018 	sw	zero,24(sp)
 684:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 688:	e7a60014 	swc1	$f6,20(sp)
 68c:	24180001 	li	t8,1
 690:	a2180164 	sb	t8,356(s0)
 694:	3c190000 	lui	t9,0x0
 698:	27390000 	addiu	t9,t9,0
 69c:	10000018 	b	700 <func_80B395F0+0x200>
 6a0:	ae19014c 	sw	t9,332(s0)
 6a4:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 6a8:	02202025 	move	a0,s1
 6ac:	92080164 	lbu	t0,356(s0)
 6b0:	26241c24 	addiu	a0,s1,7204
 6b4:	02202825 	move	a1,s1
 6b8:	1500000e 	bnez	t0,6f4 <func_80B395F0+0x1f4>
 6bc:	2406000d 	li	a2,13
 6c0:	c6080028 	lwc1	$f8,40(s0)
 6c4:	8e070024 	lw	a3,36(s0)
 6c8:	24090003 	li	t1,3
 6cc:	e7a80010 	swc1	$f8,16(sp)
 6d0:	c60a002c 	lwc1	$f10,44(s0)
 6d4:	afa90024 	sw	t1,36(sp)
 6d8:	afa00020 	sw	zero,32(sp)
 6dc:	afa0001c 	sw	zero,28(sp)
 6e0:	afa00018 	sw	zero,24(sp)
 6e4:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 6e8:	e7aa0014 	swc1	$f10,20(sp)
 6ec:	240a0001 	li	t2,1
 6f0:	a20a0164 	sb	t2,356(s0)
 6f4:	3c0b0000 	lui	t3,0x0
 6f8:	256b0000 	addiu	t3,t3,0
 6fc:	ae0b014c 	sw	t3,332(s0)
 700:	8fbf0034 	lw	ra,52(sp)
 704:	8fb0002c 	lw	s0,44(sp)
 708:	8fb10030 	lw	s1,48(sp)
 70c:	03e00008 	jr	ra
 710:	27bd0038 	addiu	sp,sp,56

00000714 <EnWonderTalk_Update>:
 714:	27bdffb8 	addiu	sp,sp,-72
 718:	afbf0044 	sw	ra,68(sp)
 71c:	afa5004c 	sw	a1,76(sp)
 720:	84820158 	lh	v0,344(a0)
 724:	10400002 	beqz	v0,730 <EnWonderTalk_Update+0x1c>
 728:	244effff 	addiu	t6,v0,-1
 72c:	a48e0158 	sh	t6,344(a0)
 730:	afa40048 	sw	a0,72(sp)
 734:	8c99014c 	lw	t9,332(a0)
 738:	8fa5004c 	lw	a1,76(sp)
 73c:	0320f809 	jalr	t9
 740:	00000000 	nop
 744:	8fa40048 	lw	a0,72(sp)
 748:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 74c:	8c850160 	lw	a1,352(a0)
 750:	3c0f0000 	lui	t7,0x0
 754:	8def0000 	lw	t7,0(t7)
 758:	8fa40048 	lw	a0,72(sp)
 75c:	85f812d4 	lh	t8,4820(t7)
 760:	5300003c 	beqzl	t8,854 <EnWonderTalk_Update+0x140>
 764:	8fbf0044 	lw	ra,68(sp)
 768:	8482015a 	lh	v0,346(a0)
 76c:	3c013f80 	lui	at,0x3f80
 770:	240a00ff 	li	t2,255
 774:	10400020 	beqz	v0,7f8 <EnWonderTalk_Update+0xe4>
 778:	240b00ff 	li	t3,255
 77c:	30480001 	andi	t0,v0,0x1
 780:	15000033 	bnez	t0,850 <EnWonderTalk_Update+0x13c>
 784:	3c013f80 	lui	at,0x3f80
 788:	84890032 	lh	t1,50(a0)
 78c:	c48c0024 	lwc1	$f12,36(a0)
 790:	c48e0028 	lwc1	$f14,40(a0)
 794:	8c86002c 	lw	a2,44(a0)
 798:	84870030 	lh	a3,48(a0)
 79c:	afa90010 	sw	t1,16(sp)
 7a0:	848a0034 	lh	t2,52(a0)
 7a4:	44810000 	mtc1	at,$f0
 7a8:	8faf004c 	lw	t7,76(sp)
 7ac:	240b000a 	li	t3,10
 7b0:	240c000a 	li	t4,10
 7b4:	240d000a 	li	t5,10
 7b8:	240e00ff 	li	t6,255
 7bc:	24190004 	li	t9,4
 7c0:	afb90034 	sw	t9,52(sp)
 7c4:	afae0030 	sw	t6,48(sp)
 7c8:	afad002c 	sw	t5,44(sp)
 7cc:	afac0028 	sw	t4,40(sp)
 7d0:	afab0024 	sw	t3,36(sp)
 7d4:	afaa0014 	sw	t2,20(sp)
 7d8:	e7a00018 	swc1	$f0,24(sp)
 7dc:	e7a0001c 	swc1	$f0,28(sp)
 7e0:	e7a00020 	swc1	$f0,32(sp)
 7e4:	8df80000 	lw	t8,0(t7)
 7e8:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 7ec:	afb80038 	sw	t8,56(sp)
 7f0:	10000018 	b	854 <EnWonderTalk_Update+0x140>
 7f4:	8fbf0044 	lw	ra,68(sp)
 7f8:	84880032 	lh	t0,50(a0)
 7fc:	c48c0024 	lwc1	$f12,36(a0)
 800:	c48e0028 	lwc1	$f14,40(a0)
 804:	8c86002c 	lw	a2,44(a0)
 808:	84870030 	lh	a3,48(a0)
 80c:	afa80010 	sw	t0,16(sp)
 810:	84890034 	lh	t1,52(a0)
 814:	44810000 	mtc1	at,$f0
 818:	8fad004c 	lw	t5,76(sp)
 81c:	240c0004 	li	t4,4
 820:	afac0034 	sw	t4,52(sp)
 824:	afab0030 	sw	t3,48(sp)
 828:	afa0002c 	sw	zero,44(sp)
 82c:	afaa0028 	sw	t2,40(sp)
 830:	afa00024 	sw	zero,36(sp)
 834:	afa90014 	sw	t1,20(sp)
 838:	e7a00018 	swc1	$f0,24(sp)
 83c:	e7a0001c 	swc1	$f0,28(sp)
 840:	e7a00020 	swc1	$f0,32(sp)
 844:	8dae0000 	lw	t6,0(t5)
 848:	0c000000 	jal	0 <EnWonderTalk_Destroy>
 84c:	afae0038 	sw	t6,56(sp)
 850:	8fbf0044 	lw	ra,68(sp)
 854:	27bd0048 	addiu	sp,sp,72
 858:	03e00008 	jr	ra
 85c:	00000000 	nop
