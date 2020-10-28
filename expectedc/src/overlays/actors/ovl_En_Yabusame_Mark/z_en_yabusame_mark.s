
build/src/overlays/actors/ovl_En_Yabusame_Mark/z_en_yabusame_mark.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnYabusameMark_Destroy>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	00803025 	move	a2,a0
   8:	afbf0014 	sw	ra,20(sp)
   c:	00a02025 	move	a0,a1
  10:	0c000000 	jal	0 <EnYabusameMark_Destroy>
  14:	24c50190 	addiu	a1,a2,400
  18:	8fbf0014 	lw	ra,20(sp)
  1c:	27bd0018 	addiu	sp,sp,24
  20:	03e00008 	jr	ra
  24:	00000000 	nop

00000028 <EnYabusameMark_Init>:
  28:	27bdffd0 	addiu	sp,sp,-48
  2c:	afb00018 	sw	s0,24(sp)
  30:	00808025 	move	s0,a0
  34:	afbf001c 	sw	ra,28(sp)
  38:	3c040000 	lui	a0,0x0
  3c:	afa50034 	sw	a1,52(sp)
  40:	0c000000 	jal	0 <EnYabusameMark_Destroy>
  44:	24840000 	addiu	a0,a0,0
  48:	3c040000 	lui	a0,0x0
  4c:	24840000 	addiu	a0,a0,0
  50:	0c000000 	jal	0 <EnYabusameMark_Destroy>
  54:	8605001c 	lh	a1,28(s0)
  58:	8e0e0004 	lw	t6,4(s0)
  5c:	8618001c 	lh	t8,28(s0)
  60:	2401fffe 	li	at,-2
  64:	24190005 	li	t9,5
  68:	3c040000 	lui	a0,0x0
  6c:	01c17824 	and	t7,t6,at
  70:	a6180150 	sh	t8,336(s0)
  74:	ae0f0004 	sw	t7,4(s0)
  78:	a219001f 	sb	t9,31(s0)
  7c:	86050150 	lh	a1,336(s0)
  80:	0c000000 	jal	0 <EnYabusameMark_Destroy>
  84:	24840000 	addiu	a0,a0,0
  88:	86020150 	lh	v0,336(s0)
  8c:	24010001 	li	at,1
  90:	26050190 	addiu	a1,s0,400
  94:	50400008 	beqzl	v0,b8 <EnYabusameMark_Init+0x90>
  98:	44802000 	mtc1	zero,$f4
  9c:	1041000f 	beq	v0,at,dc <EnYabusameMark_Init+0xb4>
  a0:	24010002 	li	at,2
  a4:	10410018 	beq	v0,at,108 <EnYabusameMark_Init+0xe0>
  a8:	240b0004 	li	t3,4
  ac:	10000018 	b	110 <EnYabusameMark_Init+0xe8>
  b0:	8fa40034 	lw	a0,52(sp)
  b4:	44802000 	mtc1	zero,$f4
  b8:	c606002c 	lwc1	$f6,44(s0)
  bc:	a6000152 	sh	zero,338(s0)
  c0:	24080001 	li	t0,1
  c4:	4606203c 	c.lt.s	$f4,$f6
  c8:	00000000 	nop
  cc:	45020010 	bc1fl	110 <EnYabusameMark_Init+0xe8>
  d0:	8fa40034 	lw	a0,52(sp)
  d4:	1000000d 	b	10c <EnYabusameMark_Init+0xe4>
  d8:	a6080152 	sh	t0,338(s0)
  dc:	3c01c4fa 	lui	at,0xc4fa
  e0:	44815000 	mtc1	at,$f10
  e4:	c608002c 	lwc1	$f8,44(s0)
  e8:	24090002 	li	t1,2
  ec:	a6090152 	sh	t1,338(s0)
  f0:	460a403c 	c.lt.s	$f8,$f10
  f4:	240a0003 	li	t2,3
  f8:	45020005 	bc1fl	110 <EnYabusameMark_Init+0xe8>
  fc:	8fa40034 	lw	a0,52(sp)
 100:	10000002 	b	10c <EnYabusameMark_Init+0xe4>
 104:	a60a0152 	sh	t2,338(s0)
 108:	a60b0152 	sh	t3,338(s0)
 10c:	8fa40034 	lw	a0,52(sp)
 110:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 114:	afa50024 	sw	a1,36(sp)
 118:	3c070000 	lui	a3,0x0
 11c:	8fa50024 	lw	a1,36(sp)
 120:	24e70000 	addiu	a3,a3,0
 124:	8fa40034 	lw	a0,52(sp)
 128:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 12c:	02003025 	move	a2,s0
 130:	8e0d0024 	lw	t5,36(s0)
 134:	8e0e0004 	lw	t6,4(s0)
 138:	8e0c0028 	lw	t4,40(s0)
 13c:	ae0d0154 	sw	t5,340(s0)
 140:	8e0d002c 	lw	t5,44(s0)
 144:	35cf0010 	ori	t7,t6,0x10
 148:	ae0f0004 	sw	t7,4(s0)
 14c:	3c180000 	lui	t8,0x0
 150:	ae0c0158 	sw	t4,344(s0)
 154:	ae0d015c 	sw	t5,348(s0)
 158:	8f181360 	lw	t8,4960(t8)
 15c:	24010004 	li	at,4
 160:	3c040000 	lui	a0,0x0
 164:	13010005 	beq	t8,at,17c <EnYabusameMark_Init+0x154>
 168:	24840000 	addiu	a0,a0,0
 16c:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 170:	02002025 	move	a0,s0
 174:	1000000b 	b	1a4 <EnYabusameMark_Init+0x17c>
 178:	8fbf001c 	lw	ra,28(sp)
 17c:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 180:	86050150 	lh	a1,336(s0)
 184:	3c040000 	lui	a0,0x0
 188:	24840000 	addiu	a0,a0,0
 18c:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 190:	86050152 	lh	a1,338(s0)
 194:	3c190000 	lui	t9,0x0
 198:	27390000 	addiu	t9,t9,0
 19c:	ae19014c 	sw	t9,332(s0)
 1a0:	8fbf001c 	lw	ra,28(sp)
 1a4:	8fb00018 	lw	s0,24(sp)
 1a8:	27bd0030 	addiu	sp,sp,48
 1ac:	03e00008 	jr	ra
 1b0:	00000000 	nop

000001b4 <func_80B42F74>:
 1b4:	27bdff98 	addiu	sp,sp,-104
 1b8:	3c0f0000 	lui	t7,0x0
 1bc:	afbf001c 	sw	ra,28(sp)
 1c0:	afa40068 	sw	a0,104(sp)
 1c4:	afa5006c 	sw	a1,108(sp)
 1c8:	25ef0000 	addiu	t7,t7,0
 1cc:	8df90000 	lw	t9,0(t7)
 1d0:	27ae005c 	addiu	t6,sp,92
 1d4:	8df80004 	lw	t8,4(t7)
 1d8:	add90000 	sw	t9,0(t6)
 1dc:	8df90008 	lw	t9,8(t7)
 1e0:	3c090000 	lui	t1,0x0
 1e4:	25290000 	addiu	t1,t1,0
 1e8:	add80004 	sw	t8,4(t6)
 1ec:	add90008 	sw	t9,8(t6)
 1f0:	8d2b0000 	lw	t3,0(t1)
 1f4:	27a80050 	addiu	t0,sp,80
 1f8:	8d2a0004 	lw	t2,4(t1)
 1fc:	ad0b0000 	sw	t3,0(t0)
 200:	8d2b0008 	lw	t3,8(t1)
 204:	ad0a0004 	sw	t2,4(t0)
 208:	ad0b0008 	sw	t3,8(t0)
 20c:	8fac0068 	lw	t4,104(sp)
 210:	918201a1 	lbu	v0,417(t4)
 214:	304d0002 	andi	t5,v0,0x2
 218:	11a000d6 	beqz	t5,574 <func_80B42F74+0x3c0>
 21c:	304efffd 	andi	t6,v0,0xfffd
 220:	a18e01a1 	sb	t6,417(t4)
 224:	8faf0068 	lw	t7,104(sp)
 228:	3c014170 	lui	at,0x4170
 22c:	8fa4006c 	lw	a0,108(sp)
 230:	85f801b6 	lh	t8,438(t7)
 234:	00002825 	move	a1,zero
 238:	240602bc 	li	a2,700
 23c:	44982000 	mtc1	t8,$f4
 240:	27a70044 	addiu	a3,sp,68
 244:	468021a0 	cvt.s.w	$f6,$f4
 248:	e7a60044 	swc1	$f6,68(sp)
 24c:	85f901b8 	lh	t9,440(t7)
 250:	44994000 	mtc1	t9,$f8
 254:	00000000 	nop
 258:	468042a0 	cvt.s.w	$f10,$f8
 25c:	44814000 	mtc1	at,$f8
 260:	e7aa0048 	swc1	$f10,72(sp)
 264:	85e801ba 	lh	t0,442(t7)
 268:	e7a80054 	swc1	$f8,84(sp)
 26c:	44882000 	mtc1	t0,$f4
 270:	00000000 	nop
 274:	468021a0 	cvt.s.w	$f6,$f4
 278:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 27c:	e7a6004c 	swc1	$f6,76(sp)
 280:	8fa60068 	lw	a2,104(sp)
 284:	3c180000 	lui	t8,0x0
 288:	27180000 	addiu	t8,t8,0
 28c:	84ce0152 	lh	t6,338(a2)
 290:	c7a40044 	lwc1	$f4,68(sp)
 294:	84ca0150 	lh	t2,336(a2)
 298:	000e6080 	sll	t4,t6,0x2
 29c:	018e6023 	subu	t4,t4,t6
 2a0:	000c6080 	sll	t4,t4,0x2
 2a4:	01981821 	addu	v1,t4,t8
 2a8:	c46a0000 	lwc1	$f10,0(v1)
 2ac:	c4660004 	lwc1	$f6,4(v1)
 2b0:	c7a80048 	lwc1	$f8,72(sp)
 2b4:	46045001 	sub.s	$f0,$f10,$f4
 2b8:	3c0d0000 	lui	t5,0x0
 2bc:	25ad0000 	addiu	t5,t5,0
 2c0:	000a5900 	sll	t3,t2,0x4
 2c4:	46000305 	abs.s	$f12,$f0
 2c8:	46083001 	sub.s	$f0,$f6,$f8
 2cc:	016d1021 	addu	v0,t3,t5
 2d0:	c4500000 	lwc1	$f16,0(v0)
 2d4:	c7a4004c 	lwc1	$f4,76(sp)
 2d8:	c46a0008 	lwc1	$f10,8(v1)
 2dc:	460c803c 	c.lt.s	$f16,$f12
 2e0:	24050002 	li	a1,2
 2e4:	46000385 	abs.s	$f14,$f0
 2e8:	46045001 	sub.s	$f0,$f10,$f4
 2ec:	c4520004 	lwc1	$f18,4(v0)
 2f0:	c4420008 	lwc1	$f2,8(v0)
 2f4:	45010009 	bc1t	31c <func_80B42F74+0x168>
 2f8:	46000005 	abs.s	$f0,$f0
 2fc:	460e803c 	c.lt.s	$f16,$f14
 300:	00000000 	nop
 304:	45030006 	bc1tl	320 <func_80B42F74+0x16c>
 308:	460c903c 	c.lt.s	$f18,$f12
 30c:	4600803c 	c.lt.s	$f16,$f0
 310:	00000000 	nop
 314:	45000019 	bc1f	37c <func_80B42F74+0x1c8>
 318:	00000000 	nop
 31c:	460c903c 	c.lt.s	$f18,$f12
 320:	24050001 	li	a1,1
 324:	4503000a 	bc1tl	350 <func_80B42F74+0x19c>
 328:	00002825 	move	a1,zero
 32c:	460e903c 	c.lt.s	$f18,$f14
 330:	00000000 	nop
 334:	45030006 	bc1tl	350 <func_80B42F74+0x19c>
 338:	00002825 	move	a1,zero
 33c:	4600903c 	c.lt.s	$f18,$f0
 340:	00000000 	nop
 344:	45020003 	bc1fl	354 <func_80B42F74+0x1a0>
 348:	460c103c 	c.lt.s	$f2,$f12
 34c:	00002825 	move	a1,zero
 350:	460c103c 	c.lt.s	$f2,$f12
 354:	00000000 	nop
 358:	45030087 	bc1tl	578 <func_80B42F74+0x3c4>
 35c:	8fbf001c 	lw	ra,28(sp)
 360:	460e103c 	c.lt.s	$f2,$f14
 364:	00000000 	nop
 368:	45030083 	bc1tl	578 <func_80B42F74+0x3c4>
 36c:	8fbf001c 	lw	ra,28(sp)
 370:	4600103c 	c.lt.s	$f2,$f0
 374:	00000000 	nop
 378:	4501007e 	bc1t	574 <func_80B42F74+0x3c0>
 37c:	3c040000 	lui	a0,0x0
 380:	24840000 	addiu	a0,a0,0
 384:	afa50030 	sw	a1,48(sp)
 388:	e7b0002c 	swc1	$f16,44(sp)
 38c:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 390:	e7b20028 	swc1	$f18,40(sp)
 394:	c7a60044 	lwc1	$f6,68(sp)
 398:	3c040000 	lui	a0,0x0
 39c:	24840000 	addiu	a0,a0,0
 3a0:	46003221 	cvt.d.s	$f8,$f6
 3a4:	44074000 	mfc1	a3,$f8
 3a8:	44064800 	mfc1	a2,$f9
 3ac:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 3b0:	00000000 	nop
 3b4:	c7aa0048 	lwc1	$f10,72(sp)
 3b8:	3c040000 	lui	a0,0x0
 3bc:	24840000 	addiu	a0,a0,0
 3c0:	46005121 	cvt.d.s	$f4,$f10
 3c4:	44072000 	mfc1	a3,$f4
 3c8:	44062800 	mfc1	a2,$f5
 3cc:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 3d0:	00000000 	nop
 3d4:	c7a6004c 	lwc1	$f6,76(sp)
 3d8:	3c040000 	lui	a0,0x0
 3dc:	24840000 	addiu	a0,a0,0
 3e0:	46003221 	cvt.d.s	$f8,$f6
 3e4:	44074000 	mfc1	a3,$f8
 3e8:	44064800 	mfc1	a2,$f9
 3ec:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 3f0:	00000000 	nop
 3f4:	8fb90068 	lw	t9,104(sp)
 3f8:	3c010000 	lui	at,0x0
 3fc:	3c040000 	lui	a0,0x0
 400:	872f0152 	lh	t7,338(t9)
 404:	24840000 	addiu	a0,a0,0
 408:	000f4080 	sll	t0,t7,0x2
 40c:	010f4023 	subu	t0,t0,t7
 410:	00084080 	sll	t0,t0,0x2
 414:	00280821 	addu	at,at,t0
 418:	c42a0000 	lwc1	$f10,0(at)
 41c:	46005121 	cvt.d.s	$f4,$f10
 420:	44072000 	mfc1	a3,$f4
 424:	44062800 	mfc1	a2,$f5
 428:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 42c:	00000000 	nop
 430:	8fa90068 	lw	t1,104(sp)
 434:	3c010000 	lui	at,0x0
 438:	3c040000 	lui	a0,0x0
 43c:	852a0152 	lh	t2,338(t1)
 440:	24840000 	addiu	a0,a0,0
 444:	000a5880 	sll	t3,t2,0x2
 448:	016a5823 	subu	t3,t3,t2
 44c:	000b5880 	sll	t3,t3,0x2
 450:	002b0821 	addu	at,at,t3
 454:	c4260000 	lwc1	$f6,0(at)
 458:	46003221 	cvt.d.s	$f8,$f6
 45c:	44074000 	mfc1	a3,$f8
 460:	44064800 	mfc1	a2,$f9
 464:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 468:	00000000 	nop
 46c:	8fad0068 	lw	t5,104(sp)
 470:	3c010000 	lui	at,0x0
 474:	3c040000 	lui	a0,0x0
 478:	85ae0152 	lh	t6,338(t5)
 47c:	24840000 	addiu	a0,a0,0
 480:	000e6080 	sll	t4,t6,0x2
 484:	018e6023 	subu	t4,t4,t6
 488:	000c6080 	sll	t4,t4,0x2
 48c:	002c0821 	addu	at,at,t4
 490:	c42a0000 	lwc1	$f10,0(at)
 494:	46005121 	cvt.d.s	$f4,$f10
 498:	44072000 	mfc1	a3,$f4
 49c:	44062800 	mfc1	a2,$f5
 4a0:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 4a4:	00000000 	nop
 4a8:	c7a6002c 	lwc1	$f6,44(sp)
 4ac:	3c040000 	lui	a0,0x0
 4b0:	24840000 	addiu	a0,a0,0
 4b4:	46003221 	cvt.d.s	$f8,$f6
 4b8:	44074000 	mfc1	a3,$f8
 4bc:	44064800 	mfc1	a2,$f9
 4c0:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 4c4:	00000000 	nop
 4c8:	c7aa0028 	lwc1	$f10,40(sp)
 4cc:	3c040000 	lui	a0,0x0
 4d0:	24840000 	addiu	a0,a0,0
 4d4:	46005121 	cvt.d.s	$f4,$f10
 4d8:	44072000 	mfc1	a3,$f4
 4dc:	44062800 	mfc1	a2,$f5
 4e0:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 4e4:	00000000 	nop
 4e8:	3c040000 	lui	a0,0x0
 4ec:	24840000 	addiu	a0,a0,0
 4f0:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 4f4:	8fa50030 	lw	a1,48(sp)
 4f8:	3c040000 	lui	a0,0x0
 4fc:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 500:	24840000 	addiu	a0,a0,0
 504:	8fb80030 	lw	t8,48(sp)
 508:	24010002 	li	at,2
 50c:	57010004 	bnel	t8,at,520 <func_80B42F74+0x36c>
 510:	8fb90030 	lw	t9,48(sp)
 514:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 518:	24040922 	li	a0,2338
 51c:	8fb90030 	lw	t9,48(sp)
 520:	24010001 	li	at,1
 524:	57210006 	bnel	t9,at,540 <func_80B42F74+0x38c>
 528:	8faf0030 	lw	t7,48(sp)
 52c:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 530:	24044807 	li	a0,18439
 534:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 538:	24044807 	li	a0,18439
 53c:	8faf0030 	lw	t7,48(sp)
 540:	55e00004 	bnezl	t7,554 <func_80B42F74+0x3a0>
 544:	8fa90030 	lw	t1,48(sp)
 548:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 54c:	24044808 	li	a0,18440
 550:	8fa90030 	lw	t1,48(sp)
 554:	24080005 	li	t0,5
 558:	afa80010 	sw	t0,16(sp)
 55c:	8fa4006c 	lw	a0,108(sp)
 560:	27a50044 	addiu	a1,sp,68
 564:	27a60050 	addiu	a2,sp,80
 568:	27a7005c 	addiu	a3,sp,92
 56c:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 570:	afa90014 	sw	t1,20(sp)
 574:	8fbf001c 	lw	ra,28(sp)
 578:	27bd0068 	addiu	sp,sp,104
 57c:	03e00008 	jr	ra
 580:	00000000 	nop

00000584 <EnYabusameMark_Update>:
 584:	27bdff90 	addiu	sp,sp,-112
 588:	afb00048 	sw	s0,72(sp)
 58c:	00808025 	move	s0,a0
 590:	afbf004c 	sw	ra,76(sp)
 594:	afa50074 	sw	a1,116(sp)
 598:	8e19014c 	lw	t9,332(s0)
 59c:	0320f809 	jalr	t9
 5a0:	00000000 	nop
 5a4:	86030150 	lh	v1,336(s0)
 5a8:	3c0f0000 	lui	t7,0x0
 5ac:	25ef0000 	addiu	t7,t7,0
 5b0:	00031880 	sll	v1,v1,0x2
 5b4:	00037080 	sll	t6,v1,0x2
 5b8:	01c37023 	subu	t6,t6,v1
 5bc:	000e7080 	sll	t6,t6,0x2
 5c0:	01cf1021 	addu	v0,t6,t7
 5c4:	c4440000 	lwc1	$f4,0(v0)
 5c8:	c6000024 	lwc1	$f0,36(s0)
 5cc:	c6020028 	lwc1	$f2,40(s0)
 5d0:	c60c002c 	lwc1	$f12,44(s0)
 5d4:	46002180 	add.s	$f6,$f4,$f0
 5d8:	26040190 	addiu	a0,s0,400
 5dc:	26180184 	addiu	t8,s0,388
 5e0:	26050160 	addiu	a1,s0,352
 5e4:	e6060160 	swc1	$f6,352(s0)
 5e8:	c4480004 	lwc1	$f8,4(v0)
 5ec:	2606016c 	addiu	a2,s0,364
 5f0:	26070178 	addiu	a3,s0,376
 5f4:	46024280 	add.s	$f10,$f8,$f2
 5f8:	e60a0164 	swc1	$f10,356(s0)
 5fc:	c4500008 	lwc1	$f16,8(v0)
 600:	460c8480 	add.s	$f18,$f16,$f12
 604:	e6120168 	swc1	$f18,360(s0)
 608:	c444000c 	lwc1	$f4,12(v0)
 60c:	46002180 	add.s	$f6,$f4,$f0
 610:	e606016c 	swc1	$f6,364(s0)
 614:	c4480010 	lwc1	$f8,16(v0)
 618:	46024280 	add.s	$f10,$f8,$f2
 61c:	e60a0170 	swc1	$f10,368(s0)
 620:	c4500014 	lwc1	$f16,20(v0)
 624:	460c8480 	add.s	$f18,$f16,$f12
 628:	e6120174 	swc1	$f18,372(s0)
 62c:	c4440018 	lwc1	$f4,24(v0)
 630:	46002180 	add.s	$f6,$f4,$f0
 634:	e6060178 	swc1	$f6,376(s0)
 638:	c448001c 	lwc1	$f8,28(v0)
 63c:	46024280 	add.s	$f10,$f8,$f2
 640:	e60a017c 	swc1	$f10,380(s0)
 644:	c4500020 	lwc1	$f16,32(v0)
 648:	460c8480 	add.s	$f18,$f16,$f12
 64c:	e6120180 	swc1	$f18,384(s0)
 650:	c4440024 	lwc1	$f4,36(v0)
 654:	46002180 	add.s	$f6,$f4,$f0
 658:	e6060184 	swc1	$f6,388(s0)
 65c:	c4480028 	lwc1	$f8,40(v0)
 660:	46024280 	add.s	$f10,$f8,$f2
 664:	e60a0188 	swc1	$f10,392(s0)
 668:	c450002c 	lwc1	$f16,44(v0)
 66c:	460c8480 	add.s	$f18,$f16,$f12
 670:	e612018c 	swc1	$f18,396(s0)
 674:	afa40050 	sw	a0,80(sp)
 678:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 67c:	afb80010 	sw	t8,16(sp)
 680:	8fa40074 	lw	a0,116(sp)
 684:	3c010001 	lui	at,0x1
 688:	34211e60 	ori	at,at,0x1e60
 68c:	8fa60050 	lw	a2,80(sp)
 690:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 694:	00812821 	addu	a1,a0,at
 698:	3c080000 	lui	t0,0x0
 69c:	8d080000 	lw	t0,0(t0)
 6a0:	3c013f80 	lui	at,0x3f80
 6a4:	240c00ff 	li	t4,255
 6a8:	850912d4 	lh	t1,4820(t0)
 6ac:	240d00ff 	li	t5,255
 6b0:	24190004 	li	t9,4
 6b4:	51200017 	beqzl	t1,714 <EnYabusameMark_Update+0x190>
 6b8:	8fbf004c 	lw	ra,76(sp)
 6bc:	860a0032 	lh	t2,50(s0)
 6c0:	c60c0024 	lwc1	$f12,36(s0)
 6c4:	c60e0028 	lwc1	$f14,40(s0)
 6c8:	8e06002c 	lw	a2,44(s0)
 6cc:	86070030 	lh	a3,48(s0)
 6d0:	afaa0010 	sw	t2,16(sp)
 6d4:	860b0034 	lh	t3,52(s0)
 6d8:	44810000 	mtc1	at,$f0
 6dc:	8fae0074 	lw	t6,116(sp)
 6e0:	afb90034 	sw	t9,52(sp)
 6e4:	afad0030 	sw	t5,48(sp)
 6e8:	afa0002c 	sw	zero,44(sp)
 6ec:	afac0028 	sw	t4,40(sp)
 6f0:	afa00024 	sw	zero,36(sp)
 6f4:	afab0014 	sw	t3,20(sp)
 6f8:	e7a00018 	swc1	$f0,24(sp)
 6fc:	e7a0001c 	swc1	$f0,28(sp)
 700:	e7a00020 	swc1	$f0,32(sp)
 704:	8dcf0000 	lw	t7,0(t6)
 708:	0c000000 	jal	0 <EnYabusameMark_Destroy>
 70c:	afaf0038 	sw	t7,56(sp)
 710:	8fbf004c 	lw	ra,76(sp)
 714:	8fb00048 	lw	s0,72(sp)
 718:	27bd0070 	addiu	sp,sp,112
 71c:	03e00008 	jr	ra
 720:	00000000 	nop
	...
