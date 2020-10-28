
build/src/overlays/actors/ovl_En_Dha/z_en_dha.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnDha_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac8501c4 	sw	a1,452(a0)

00000008 <EnDha_Init>:
   8:	27bdffc8 	addiu	sp,sp,-56
   c:	afa5003c 	sw	a1,60(sp)
  10:	afbf002c 	sw	ra,44(sp)
  14:	afb00028 	sw	s0,40(sp)
  18:	3c050000 	lui	a1,0x0
  1c:	00808025 	move	s0,a0
  20:	0c000000 	jal	0 <EnDha_SetupAction>
  24:	24a50104 	addiu	a1,a1,260
  28:	3c0e0000 	lui	t6,0x0
  2c:	25ce0020 	addiu	t6,t6,32
  30:	ae0e0098 	sw	t6,152(s0)
  34:	3c060000 	lui	a2,0x0
  38:	3c070000 	lui	a3,0x0
  3c:	260f0190 	addiu	t7,s0,400
  40:	261801a8 	addiu	t8,s0,424
  44:	24190004 	li	t9,4
  48:	afb90018 	sw	t9,24(sp)
  4c:	afb80014 	sw	t8,20(sp)
  50:	afaf0010 	sw	t7,16(sp)
  54:	24e70000 	addiu	a3,a3,0
  58:	24c60000 	addiu	a2,a2,0
  5c:	8fa4003c 	lw	a0,60(sp)
  60:	0c000000 	jal	0 <EnDha_SetupAction>
  64:	2605014c 	addiu	a1,s0,332
  68:	3c060000 	lui	a2,0x0
  6c:	24c60000 	addiu	a2,a2,0
  70:	260400b4 	addiu	a0,s0,180
  74:	24050000 	li	a1,0
  78:	0c000000 	jal	0 <EnDha_SetupAction>
  7c:	3c0742b4 	lui	a3,0x42b4
  80:	8e080028 	lw	t0,40(s0)
  84:	3c014248 	lui	at,0x4248
  88:	8e090024 	lw	t1,36(s0)
  8c:	ae08003c 	sw	t0,60(s0)
  90:	c604003c 	lwc1	$f4,60(s0)
  94:	44813000 	mtc1	at,$f6
  98:	ae090038 	sw	t1,56(s0)
  9c:	8e09002c 	lw	t1,44(s0)
  a0:	46062200 	add.s	$f8,$f4,$f6
  a4:	240a00fe 	li	t2,254
  a8:	240b0008 	li	t3,8
  ac:	240cc000 	li	t4,-16384
  b0:	e608003c 	swc1	$f8,60(s0)
  b4:	a20a00ae 	sb	t2,174(s0)
  b8:	a20b00af 	sb	t3,175(s0)
  bc:	a60c01ce 	sh	t4,462(s0)
  c0:	26050200 	addiu	a1,s0,512
  c4:	ae090040 	sw	t1,64(s0)
  c8:	afa50030 	sw	a1,48(sp)
  cc:	0c000000 	jal	0 <EnDha_SetupAction>
  d0:	8fa4003c 	lw	a0,60(sp)
  d4:	3c070000 	lui	a3,0x0
  d8:	260d0220 	addiu	t5,s0,544
  dc:	8fa50030 	lw	a1,48(sp)
  e0:	afad0010 	sw	t5,16(sp)
  e4:	24e700f4 	addiu	a3,a3,244
  e8:	8fa4003c 	lw	a0,60(sp)
  ec:	0c000000 	jal	0 <EnDha_SetupAction>
  f0:	02003025 	move	a2,s0
  f4:	8e0e0004 	lw	t6,4(s0)
  f8:	2401fffe 	li	at,-2
  fc:	02002025 	move	a0,s0
 100:	01c17824 	and	t7,t6,at
 104:	0c000000 	jal	0 <EnDha_SetupAction>
 108:	ae0f0004 	sw	t7,4(s0)
 10c:	8fbf002c 	lw	ra,44(sp)
 110:	8fb00028 	lw	s0,40(sp)
 114:	27bd0038 	addiu	sp,sp,56
 118:	03e00008 	jr	ra
 11c:	00000000 	nop

00000120 <EnDha_Destroy>:
 120:	27bdffe8 	addiu	sp,sp,-24
 124:	00803025 	move	a2,a0
 128:	afbf0014 	sw	ra,20(sp)
 12c:	00a02025 	move	a0,a1
 130:	0c000000 	jal	0 <EnDha_SetupAction>
 134:	24c50200 	addiu	a1,a2,512
 138:	8fbf0014 	lw	ra,20(sp)
 13c:	27bd0018 	addiu	sp,sp,24
 140:	03e00008 	jr	ra
 144:	00000000 	nop

00000148 <func_809EC9C8>:
 148:	27bdffe8 	addiu	sp,sp,-24
 14c:	afbf0014 	sw	ra,20(sp)
 150:	00803025 	move	a2,a0
 154:	3c050000 	lui	a1,0x0
 158:	24a50000 	addiu	a1,a1,0
 15c:	afa60018 	sw	a2,24(sp)
 160:	0c000000 	jal	0 <EnDha_SetupAction>
 164:	2484014c 	addiu	a0,a0,332
 168:	8fa60018 	lw	a2,24(sp)
 16c:	0c000000 	jal	0 <EnDha_SetupAction>
 170:	a0c001c0 	sb	zero,448(a2)
 174:	3c014120 	lui	at,0x4120
 178:	44812000 	mtc1	at,$f4
 17c:	3c0140a0 	lui	at,0x40a0
 180:	44814000 	mtc1	at,$f8
 184:	46040182 	mul.s	$f6,$f0,$f4
 188:	8fa40018 	lw	a0,24(sp)
 18c:	44809000 	mtc1	zero,$f18
 190:	24190001 	li	t9,1
 194:	849800b6 	lh	t8,182(a0)
 198:	3c050000 	lui	a1,0x0
 19c:	24a50000 	addiu	a1,a1,0
 1a0:	46083280 	add.s	$f10,$f6,$f8
 1a4:	a4990018 	sh	t9,24(a0)
 1a8:	e4920068 	swc1	$f18,104(a0)
 1ac:	a4980032 	sh	t8,50(a0)
 1b0:	4600540d 	trunc.w.s	$f16,$f10
 1b4:	440f8000 	mfc1	t7,$f16
 1b8:	0c000000 	jal	0 <EnDha_SetupAction>
 1bc:	a48f01c8 	sh	t7,456(a0)
 1c0:	8fbf0014 	lw	ra,20(sp)
 1c4:	27bd0018 	addiu	sp,sp,24
 1c8:	03e00008 	jr	ra
 1cc:	00000000 	nop

000001d0 <func_809ECA50>:
 1d0:	27bdff78 	addiu	sp,sp,-136
 1d4:	3c0f0000 	lui	t7,0x0
 1d8:	afbf0024 	sw	ra,36(sp)
 1dc:	afb00020 	sw	s0,32(sp)
 1e0:	afa5008c 	sw	a1,140(sp)
 1e4:	25ef0110 	addiu	t7,t7,272
 1e8:	8df90000 	lw	t9,0(t7)
 1ec:	27ae007c 	addiu	t6,sp,124
 1f0:	8df80004 	lw	t8,4(t7)
 1f4:	add90000 	sw	t9,0(t6)
 1f8:	8df90008 	lw	t9,8(t7)
 1fc:	3c090000 	lui	t1,0x0
 200:	2529011c 	addiu	t1,t1,284
 204:	add80004 	sw	t8,4(t6)
 208:	add90008 	sw	t9,8(t6)
 20c:	8d2b0000 	lw	t3,0(t1)
 210:	27a80070 	addiu	t0,sp,112
 214:	8d2a0004 	lw	t2,4(t1)
 218:	ad0b0000 	sw	t3,0(t0)
 21c:	8d2b0008 	lw	t3,8(t1)
 220:	3c0d0000 	lui	t5,0x0
 224:	25ad0128 	addiu	t5,t5,296
 228:	ad0a0004 	sw	t2,4(t0)
 22c:	ad0b0008 	sw	t3,8(t0)
 230:	8daf0000 	lw	t7,0(t5)
 234:	27ac0064 	addiu	t4,sp,100
 238:	8dae0004 	lw	t6,4(t5)
 23c:	ad8f0000 	sw	t7,0(t4)
 240:	8daf0008 	lw	t7,8(t5)
 244:	ad8e0004 	sw	t6,4(t4)
 248:	27b9004c 	addiu	t9,sp,76
 24c:	ad8f0008 	sw	t7,8(t4)
 250:	8fb8008c 	lw	t8,140(sp)
 254:	00808025 	move	s0,a0
 258:	8f061c44 	lw	a2,7236(t8)
 25c:	8cc90024 	lw	t1,36(a2)
 260:	af290000 	sw	t1,0(t9)
 264:	8cc80028 	lw	t0,40(a2)
 268:	af280004 	sw	t0,4(t9)
 26c:	8cc9002c 	lw	t1,44(a2)
 270:	af290008 	sw	t1,8(t9)
 274:	84c400b6 	lh	a0,182(a2)
 278:	0c000000 	jal	0 <EnDha_SetupAction>
 27c:	afa60060 	sw	a2,96(sp)
 280:	3c01c0a0 	lui	at,0xc0a0
 284:	44813000 	mtc1	at,$f6
 288:	c7a4004c 	lwc1	$f4,76(sp)
 28c:	8fa60060 	lw	a2,96(sp)
 290:	46060202 	mul.s	$f8,$f0,$f6
 294:	46082280 	add.s	$f10,$f4,$f8
 298:	e7aa004c 	swc1	$f10,76(sp)
 29c:	0c000000 	jal	0 <EnDha_SetupAction>
 2a0:	84c400b6 	lh	a0,182(a2)
 2a4:	3c01c0a0 	lui	at,0xc0a0
 2a8:	44819000 	mtc1	at,$f18
 2ac:	c7b00054 	lwc1	$f16,84(sp)
 2b0:	3c0a0000 	lui	t2,0x0
 2b4:	46120182 	mul.s	$f6,$f0,$f18
 2b8:	8d4a0004 	lw	t2,4(t2)
 2bc:	8fa60060 	lw	a2,96(sp)
 2c0:	c7a80050 	lwc1	$f8,80(sp)
 2c4:	3c014260 	lui	at,0x4260
 2c8:	240b0001 	li	t3,1
 2cc:	260401d0 	addiu	a0,s0,464
 2d0:	46068100 	add.s	$f4,$f16,$f6
 2d4:	c7b00050 	lwc1	$f16,80(sp)
 2d8:	00002825 	move	a1,zero
 2dc:	11400007 	beqz	t2,2fc <func_809ECA50+0x12c>
 2e0:	e7a40054 	swc1	$f4,84(sp)
 2e4:	3c014218 	lui	at,0x4218
 2e8:	44815000 	mtc1	at,$f10
 2ec:	00000000 	nop
 2f0:	460a4480 	add.s	$f18,$f8,$f10
 2f4:	10000005 	b	30c <func_809ECA50+0x13c>
 2f8:	e7b20050 	swc1	$f18,80(sp)
 2fc:	44813000 	mtc1	at,$f6
 300:	00000000 	nop
 304:	46068100 	add.s	$f4,$f16,$f6
 308:	e7a40050 	swc1	$f4,80(sp)
 30c:	3c0142c8 	lui	at,0x42c8
 310:	44814000 	mtc1	at,$f8
 314:	c60a0090 	lwc1	$f10,144(s0)
 318:	240703e8 	li	a3,1000
 31c:	4608503e 	c.le.s	$f10,$f8
 320:	00000000 	nop
 324:	450200d2 	bc1fl	670 <func_809ECA50+0x4a0>
 328:	8cc20680 	lw	v0,1664(a2)
 32c:	a60001d2 	sh	zero,466(s0)
 330:	860201d2 	lh	v0,466(s0)
 334:	260501dc 	addiu	a1,s0,476
 338:	27a4004c 	addiu	a0,sp,76
 33c:	a60201d4 	sh	v0,468(s0)
 340:	a60201d6 	sh	v0,470(s0)
 344:	afa60060 	sw	a2,96(sp)
 348:	0c000000 	jal	0 <EnDha_SetupAction>
 34c:	afa50030 	sw	a1,48(sp)
 350:	3c014140 	lui	at,0x4140
 354:	44819000 	mtc1	at,$f18
 358:	8fa60060 	lw	a2,96(sp)
 35c:	4612003e 	c.le.s	$f0,$f18
 360:	00000000 	nop
 364:	4502004b 	bc1fl	494 <func_809ECA50+0x2c4>
 368:	8cc20680 	lw	v0,1664(a2)
 36c:	920b01cc 	lbu	t3,460(s0)
 370:	8fa4008c 	lw	a0,140(sp)
 374:	3c190001 	lui	t9,0x1
 378:	15600013 	bnez	t3,3c8 <func_809ECA50+0x1f8>
 37c:	0324c821 	addu	t9,t9,a0
 380:	8f391d4c 	lw	t9,7500(t9)
 384:	00c02825 	move	a1,a2
 388:	0320f809 	jalr	t9
 38c:	00000000 	nop
 390:	1040002b 	beqz	v0,440 <func_809ECA50+0x270>
 394:	02002025 	move	a0,s0
 398:	920c01cc 	lbu	t4,460(s0)
 39c:	8e020118 	lw	v0,280(s0)
 3a0:	a60001ca 	sh	zero,458(s0)
 3a4:	258d0001 	addiu	t5,t4,1
 3a8:	10400003 	beqz	v0,3b8 <func_809ECA50+0x1e8>
 3ac:	a20d01cc 	sb	t5,460(s0)
 3b0:	240e0001 	li	t6,1
 3b4:	a44e001c 	sh	t6,28(v0)
 3b8:	0c000000 	jal	0 <EnDha_SetupAction>
 3bc:	24053902 	li	a1,14594
 3c0:	10000020 	b	444 <func_809ECA50+0x274>
 3c4:	260401e8 	addiu	a0,s0,488
 3c8:	860f01ca 	lh	t7,458(s0)
 3cc:	25f81194 	addiu	t8,t7,4500
 3d0:	a61801ca 	sh	t8,458(s0)
 3d4:	860401ca 	lh	a0,458(s0)
 3d8:	0c000000 	jal	0 <EnDha_SetupAction>
 3dc:	afa60060 	sw	a2,96(sp)
 3e0:	3c010000 	lui	at,0x0
 3e4:	c4300000 	lwc1	$f16,0(at)
 3e8:	8fa60060 	lw	a2,96(sp)
 3ec:	02002025 	move	a0,s0
 3f0:	46100182 	mul.s	$f6,$f0,$f16
 3f4:	4600310d 	trunc.w.s	$f4,$f6
 3f8:	44092000 	mfc1	t1,$f4
 3fc:	00000000 	nop
 400:	a60901d2 	sh	t1,466(s0)
 404:	8cca0680 	lw	t2,1664(a2)
 408:	314b0080 	andi	t3,t2,0x80
 40c:	55600006 	bnezl	t3,428 <func_809ECA50+0x258>
 410:	861901ca 	lh	t9,458(s0)
 414:	0c000000 	jal	0 <EnDha_SetupAction>
 418:	a20001cc 	sb	zero,460(s0)
 41c:	100000ac 	b	6d0 <func_809ECA50+0x500>
 420:	8fbf0024 	lw	ra,36(sp)
 424:	861901ca 	lh	t9,458(s0)
 428:	02002025 	move	a0,s0
 42c:	2b219195 	slti	at,t9,-28267
 430:	50200004 	beqzl	at,444 <func_809ECA50+0x274>
 434:	260401e8 	addiu	a0,s0,488
 438:	0c000000 	jal	0 <EnDha_SetupAction>
 43c:	24053902 	li	a1,14594
 440:	260401e8 	addiu	a0,s0,488
 444:	27a5004c 	addiu	a1,sp,76
 448:	260601d4 	addiu	a2,s0,468
 44c:	0c000000 	jal	0 <EnDha_SetupAction>
 450:	00003825 	move	a3,zero
 454:	860c01d6 	lh	t4,470(s0)
 458:	860d00b6 	lh	t5,182(s0)
 45c:	860801d4 	lh	t0,468(s0)
 460:	860900b4 	lh	t1,180(s0)
 464:	860b01ce 	lh	t3,462(s0)
 468:	018d7023 	subu	t6,t4,t5
 46c:	860f01d2 	lh	t7,466(s0)
 470:	860c01d0 	lh	t4,464(s0)
 474:	01095023 	subu	t2,t0,t1
 478:	014bc823 	subu	t9,t2,t3
 47c:	01cfc023 	subu	t8,t6,t7
 480:	032c6823 	subu	t5,t9,t4
 484:	a61801d6 	sh	t8,470(s0)
 488:	10000014 	b	4dc <func_809ECA50+0x30c>
 48c:	a60d01d4 	sh	t5,468(s0)
 490:	8cc20680 	lw	v0,1664(a2)
 494:	02002025 	move	a0,s0
 498:	304e0080 	andi	t6,v0,0x80
 49c:	51c0000a 	beqzl	t6,4c8 <func_809ECA50+0x2f8>
 4a0:	86090018 	lh	t1,24(s0)
 4a4:	8ccf0118 	lw	t7,280(a2)
 4a8:	2401ff7f 	li	at,-129
 4ac:	0041c024 	and	t8,v0,at
 4b0:	160f0004 	bne	s0,t7,4c4 <func_809ECA50+0x2f4>
 4b4:	240800c8 	li	t0,200
 4b8:	acd80680 	sw	t8,1664(a2)
 4bc:	acc00118 	sw	zero,280(a2)
 4c0:	a4c80850 	sh	t0,2128(a2)
 4c4:	86090018 	lh	t1,24(s0)
 4c8:	51200005 	beqzl	t1,4e0 <func_809ECA50+0x310>
 4cc:	26040024 	addiu	a0,s0,36
 4d0:	0c000000 	jal	0 <EnDha_SetupAction>
 4d4:	24053903 	li	a1,14595
 4d8:	a6000018 	sh	zero,24(s0)
 4dc:	26040024 	addiu	a0,s0,36
 4e0:	afa4002c 	sw	a0,44(sp)
 4e4:	0c000000 	jal	0 <EnDha_SetupAction>
 4e8:	27a5004c 	addiu	a1,sp,76
 4ec:	44804000 	mtc1	zero,$f8
 4f0:	a60200b6 	sh	v0,182(s0)
 4f4:	8fa5004c 	lw	a1,76(sp)
 4f8:	8fa40030 	lw	a0,48(sp)
 4fc:	3c063f80 	lui	a2,0x3f80
 500:	3c074180 	lui	a3,0x4180
 504:	0c000000 	jal	0 <EnDha_SetupAction>
 508:	e7a80010 	swc1	$f8,16(sp)
 50c:	44805000 	mtc1	zero,$f10
 510:	260401e0 	addiu	a0,s0,480
 514:	8fa50050 	lw	a1,80(sp)
 518:	3c063f80 	lui	a2,0x3f80
 51c:	3c074180 	lui	a3,0x4180
 520:	0c000000 	jal	0 <EnDha_SetupAction>
 524:	e7aa0010 	swc1	$f10,16(sp)
 528:	44809000 	mtc1	zero,$f18
 52c:	260401e4 	addiu	a0,s0,484
 530:	8fa50054 	lw	a1,84(sp)
 534:	3c063f80 	lui	a2,0x3f80
 538:	3c074180 	lui	a3,0x4180
 53c:	0c000000 	jal	0 <EnDha_SetupAction>
 540:	e7b20010 	swc1	$f18,16(sp)
 544:	260401f4 	addiu	a0,s0,500
 548:	afa40028 	sw	a0,40(sp)
 54c:	8fa50030 	lw	a1,48(sp)
 550:	27a60044 	addiu	a2,sp,68
 554:	0c000000 	jal	0 <EnDha_SetupAction>
 558:	00003825 	move	a3,zero
 55c:	c60c01dc 	lwc1	$f12,476(s0)
 560:	c60e01e0 	lwc1	$f14,480(s0)
 564:	8e0601e4 	lw	a2,484(s0)
 568:	0c000000 	jal	0 <EnDha_SetupAction>
 56c:	00003825 	move	a3,zero
 570:	87a40044 	lh	a0,68(sp)
 574:	87a50046 	lh	a1,70(sp)
 578:	00003025 	move	a2,zero
 57c:	0c000000 	jal	0 <EnDha_SetupAction>
 580:	24070001 	li	a3,1
 584:	27a40064 	addiu	a0,sp,100
 588:	0c000000 	jal	0 <EnDha_SetupAction>
 58c:	8fa50028 	lw	a1,40(sp)
 590:	c60c0024 	lwc1	$f12,36(s0)
 594:	c60e0028 	lwc1	$f14,40(s0)
 598:	8e06002c 	lw	a2,44(s0)
 59c:	0c000000 	jal	0 <EnDha_SetupAction>
 5a0:	00003825 	move	a3,zero
 5a4:	8fa4002c 	lw	a0,44(sp)
 5a8:	8fa50028 	lw	a1,40(sp)
 5ac:	27a60044 	addiu	a2,sp,68
 5b0:	0c000000 	jal	0 <EnDha_SetupAction>
 5b4:	00003825 	move	a3,zero
 5b8:	87a40044 	lh	a0,68(sp)
 5bc:	87a50046 	lh	a1,70(sp)
 5c0:	00003025 	move	a2,zero
 5c4:	0c000000 	jal	0 <EnDha_SetupAction>
 5c8:	24070001 	li	a3,1
 5cc:	27a40070 	addiu	a0,sp,112
 5d0:	0c000000 	jal	0 <EnDha_SetupAction>
 5d4:	8fa50028 	lw	a1,40(sp)
 5d8:	8fa4002c 	lw	a0,44(sp)
 5dc:	0c000000 	jal	0 <EnDha_SetupAction>
 5e0:	8fa50028 	lw	a1,40(sp)
 5e4:	a60201ce 	sh	v0,462(s0)
 5e8:	8fa50028 	lw	a1,40(sp)
 5ec:	0c000000 	jal	0 <EnDha_SetupAction>
 5f0:	8fa4002c 	lw	a0,44(sp)
 5f4:	860a00b6 	lh	t2,182(s0)
 5f8:	004a1823 	subu	v1,v0,t2
 5fc:	00031c00 	sll	v1,v1,0x10
 600:	00031c03 	sra	v1,v1,0x10
 604:	04600003 	bltz	v1,614 <func_809ECA50+0x444>
 608:	00031023 	negu	v0,v1
 60c:	10000001 	b	614 <func_809ECA50+0x444>
 610:	00601025 	move	v0,v1
 614:	28414000 	slti	at,v0,16384
 618:	54200006 	bnezl	at,634 <func_809ECA50+0x464>
 61c:	8fa40028 	lw	a0,40(sp)
 620:	860b01ce 	lh	t3,462(s0)
 624:	24198000 	li	t9,-32768
 628:	032b6023 	subu	t4,t9,t3
 62c:	a60c01ce 	sh	t4,462(s0)
 630:	8fa40028 	lw	a0,40(sp)
 634:	0c000000 	jal	0 <EnDha_SetupAction>
 638:	8fa50030 	lw	a1,48(sp)
 63c:	860401ce 	lh	a0,462(s0)
 640:	00446823 	subu	t5,v0,a0
 644:	a60d01d0 	sh	t5,464(s0)
 648:	860301d0 	lh	v1,464(s0)
 64c:	0461001f 	bgez	v1,6cc <func_809ECA50+0x4fc>
 650:	00037040 	sll	t6,v1,0x1
 654:	00030823 	negu	at,v1
 658:	008e7821 	addu	t7,a0,t6
 65c:	0001c040 	sll	t8,at,0x1
 660:	a60f01ce 	sh	t7,462(s0)
 664:	10000019 	b	6cc <func_809ECA50+0x4fc>
 668:	a61801d0 	sh	t8,464(s0)
 66c:	8cc20680 	lw	v0,1664(a2)
 670:	30480080 	andi	t0,v0,0x80
 674:	5100000a 	beqzl	t0,6a0 <func_809ECA50+0x4d0>
 678:	a60b0018 	sh	t3,24(s0)
 67c:	8cc90118 	lw	t1,280(a2)
 680:	2401ff7f 	li	at,-129
 684:	00415024 	and	t2,v0,at
 688:	16090004 	bne	s0,t1,69c <func_809ECA50+0x4cc>
 68c:	241900c8 	li	t9,200
 690:	acca0680 	sw	t2,1664(a2)
 694:	acc00118 	sw	zero,280(a2)
 698:	a4d90850 	sh	t9,2128(a2)
 69c:	a60b0018 	sh	t3,24(s0)
 6a0:	afa00010 	sw	zero,16(sp)
 6a4:	0c000000 	jal	0 <EnDha_SetupAction>
 6a8:	24060001 	li	a2,1
 6ac:	260401ce 	addiu	a0,s0,462
 6b0:	2405c000 	li	a1,-16384
 6b4:	24060001 	li	a2,1
 6b8:	240703e8 	li	a3,1000
 6bc:	0c000000 	jal	0 <EnDha_SetupAction>
 6c0:	afa00010 	sw	zero,16(sp)
 6c4:	0c000000 	jal	0 <EnDha_SetupAction>
 6c8:	2604014c 	addiu	a0,s0,332
 6cc:	8fbf0024 	lw	ra,36(sp)
 6d0:	8fb00020 	lw	s0,32(sp)
 6d4:	27bd0088 	addiu	sp,sp,136
 6d8:	03e00008 	jr	ra
 6dc:	00000000 	nop

000006e0 <func_809ECF60>:
 6e0:	27bdffe8 	addiu	sp,sp,-24
 6e4:	afbf0014 	sw	ra,20(sp)
 6e8:	240e000f 	li	t6,15
 6ec:	3c050000 	lui	a1,0x0
 6f0:	a48e01c8 	sh	t6,456(a0)
 6f4:	0c000000 	jal	0 <EnDha_SetupAction>
 6f8:	24a50000 	addiu	a1,a1,0
 6fc:	8fbf0014 	lw	ra,20(sp)
 700:	27bd0018 	addiu	sp,sp,24
 704:	03e00008 	jr	ra
 708:	00000000 	nop

0000070c <func_809ECF8C>:
 70c:	27bdffd8 	addiu	sp,sp,-40
 710:	afbf0024 	sw	ra,36(sp)
 714:	afb00020 	sw	s0,32(sp)
 718:	8ca21c44 	lw	v0,7236(a1)
 71c:	00808025 	move	s0,a0
 720:	00002825 	move	a1,zero
 724:	8c430680 	lw	v1,1664(v0)
 728:	24060001 	li	a2,1
 72c:	240707d0 	li	a3,2000
 730:	306e0080 	andi	t6,v1,0x80
 734:	51c0000a 	beqzl	t6,760 <func_809ECF8C+0x54>
 738:	260401d0 	addiu	a0,s0,464
 73c:	8c4f0118 	lw	t7,280(v0)
 740:	2401ff7f 	li	at,-129
 744:	0061c024 	and	t8,v1,at
 748:	148f0004 	bne	a0,t7,75c <func_809ECF8C+0x50>
 74c:	241900c8 	li	t9,200
 750:	ac580680 	sw	t8,1664(v0)
 754:	ac400118 	sw	zero,280(v0)
 758:	a4590850 	sh	t9,2128(v0)
 75c:	260401d0 	addiu	a0,s0,464
 760:	0c000000 	jal	0 <EnDha_SetupAction>
 764:	afa00010 	sw	zero,16(sp)
 768:	260401d2 	addiu	a0,s0,466
 76c:	00002825 	move	a1,zero
 770:	24060001 	li	a2,1
 774:	24070258 	li	a3,600
 778:	0c000000 	jal	0 <EnDha_SetupAction>
 77c:	afa00010 	sw	zero,16(sp)
 780:	260401ce 	addiu	a0,s0,462
 784:	2405c000 	li	a1,-16384
 788:	24060001 	li	a2,1
 78c:	240707d0 	li	a3,2000
 790:	0c000000 	jal	0 <EnDha_SetupAction>
 794:	afa00010 	sw	zero,16(sp)
 798:	0c000000 	jal	0 <EnDha_SetupAction>
 79c:	2604014c 	addiu	a0,s0,332
 7a0:	860801c8 	lh	t0,456(s0)
 7a4:	2509ffff 	addiu	t1,t0,-1
 7a8:	a60901c8 	sh	t1,456(s0)
 7ac:	860a01c8 	lh	t2,456(s0)
 7b0:	55400004 	bnezl	t2,7c4 <func_809ECF8C+0xb8>
 7b4:	8fbf0024 	lw	ra,36(sp)
 7b8:	0c000000 	jal	0 <EnDha_SetupAction>
 7bc:	02002025 	move	a0,s0
 7c0:	8fbf0024 	lw	ra,36(sp)
 7c4:	8fb00020 	lw	s0,32(sp)
 7c8:	27bd0028 	addiu	sp,sp,40
 7cc:	03e00008 	jr	ra
 7d0:	00000000 	nop

000007d4 <EnDha_SetupDeath>:
 7d4:	27bdffe8 	addiu	sp,sp,-24
 7d8:	afbf0014 	sw	ra,20(sp)
 7dc:	8c820118 	lw	v0,280(a0)
 7e0:	240e0008 	li	t6,8
 7e4:	240f012c 	li	t7,300
 7e8:	a08e01c0 	sb	t6,448(a0)
 7ec:	1040000e 	beqz	v0,828 <EnDha_SetupDeath+0x54>
 7f0:	a48f01c8 	sh	t7,456(a0)
 7f4:	8443001c 	lh	v1,28(v0)
 7f8:	2401000a 	li	at,10
 7fc:	240539aa 	li	a1,14762
 800:	10610006 	beq	v1,at,81c <EnDha_SetupDeath+0x48>
 804:	00000000 	nop
 808:	0c000000 	jal	0 <EnDha_SetupAction>
 80c:	afa40018 	sw	a0,24(sp)
 810:	8fa40018 	lw	a0,24(sp)
 814:	8c820118 	lw	v0,280(a0)
 818:	8443001c 	lh	v1,28(v0)
 81c:	1c600002 	bgtz	v1,828 <EnDha_SetupDeath+0x54>
 820:	2478ffff 	addiu	t8,v1,-1
 824:	a458001c 	sh	t8,28(v0)
 828:	3c050000 	lui	a1,0x0
 82c:	0c000000 	jal	0 <EnDha_SetupAction>
 830:	24a50000 	addiu	a1,a1,0
 834:	8fbf0014 	lw	ra,20(sp)
 838:	27bd0018 	addiu	sp,sp,24
 83c:	03e00008 	jr	ra
 840:	00000000 	nop

00000844 <EnDha_Die>:
 844:	27bdffb0 	addiu	sp,sp,-80
 848:	afbf002c 	sw	ra,44(sp)
 84c:	afb00028 	sw	s0,40(sp)
 850:	afa50054 	sw	a1,84(sp)
 854:	8ca21c44 	lw	v0,7236(a1)
 858:	00808025 	move	s0,a0
 85c:	00002825 	move	a1,zero
 860:	8c430680 	lw	v1,1664(v0)
 864:	24060001 	li	a2,1
 868:	240707d0 	li	a3,2000
 86c:	306f0080 	andi	t7,v1,0x80
 870:	51e0000a 	beqzl	t7,89c <EnDha_Die+0x58>
 874:	260401d0 	addiu	a0,s0,464
 878:	8c580118 	lw	t8,280(v0)
 87c:	2401ff7f 	li	at,-129
 880:	0061c824 	and	t9,v1,at
 884:	14980004 	bne	a0,t8,898 <EnDha_Die+0x54>
 888:	240800c8 	li	t0,200
 88c:	ac590680 	sw	t9,1664(v0)
 890:	ac400118 	sw	zero,280(v0)
 894:	a4480850 	sh	t0,2128(v0)
 898:	260401d0 	addiu	a0,s0,464
 89c:	0c000000 	jal	0 <EnDha_SetupAction>
 8a0:	afa00010 	sw	zero,16(sp)
 8a4:	260401ce 	addiu	a0,s0,462
 8a8:	2405c000 	li	a1,-16384
 8ac:	24060001 	li	a2,1
 8b0:	240707d0 	li	a3,2000
 8b4:	0c000000 	jal	0 <EnDha_SetupAction>
 8b8:	afa00010 	sw	zero,16(sp)
 8bc:	a7a2004e 	sh	v0,78(sp)
 8c0:	0c000000 	jal	0 <EnDha_SetupAction>
 8c4:	2604014c 	addiu	a0,s0,332
 8c8:	87a9004e 	lh	t1,78(sp)
 8cc:	55200047 	bnezl	t1,9ec <EnDha_Die+0x1a8>
 8d0:	8fbf002c 	lw	ra,44(sp)
 8d4:	8e0b0024 	lw	t3,36(s0)
 8d8:	27a50040 	addiu	a1,sp,64
 8dc:	3c0143fa 	lui	at,0x43fa
 8e0:	acab0000 	sw	t3,0(a1)
 8e4:	8e0a0028 	lw	t2,40(s0)
 8e8:	acaa0004 	sw	t2,4(a1)
 8ec:	8e0b002c 	lw	t3,44(s0)
 8f0:	acab0008 	sw	t3,8(a1)
 8f4:	860201c8 	lh	v0,456(s0)
 8f8:	50400026 	beqzl	v0,994 <EnDha_Die+0x150>
 8fc:	c60a00bc 	lwc1	$f10,188(s0)
 900:	3c010000 	lui	at,0x0
 904:	c4240004 	lwc1	$f4,4(at)
 908:	c60000bc 	lwc1	$f0,188(s0)
 90c:	3c01447a 	lui	at,0x447a
 910:	4600203c 	c.lt.s	$f4,$f0
 914:	00000000 	nop
 918:	45020011 	bc1fl	960 <EnDha_Die+0x11c>
 91c:	8e030118 	lw	v1,280(s0)
 920:	44813000 	mtc1	at,$f6
 924:	240c005a 	li	t4,90
 928:	240d0014 	li	t5,20
 92c:	46060201 	sub.s	$f8,$f0,$f6
 930:	240e0001 	li	t6,1
 934:	3c0640e0 	lui	a2,0x40e0
 938:	24070001 	li	a3,1
 93c:	e60800bc 	swc1	$f8,188(s0)
 940:	afae0018 	sw	t6,24(sp)
 944:	afad0014 	sw	t5,20(sp)
 948:	afac0010 	sw	t4,16(sp)
 94c:	0c000000 	jal	0 <EnDha_SetupAction>
 950:	8fa40054 	lw	a0,84(sp)
 954:	10000025 	b	9ec <EnDha_Die+0x1a8>
 958:	8fbf002c 	lw	ra,44(sp)
 95c:	8e030118 	lw	v1,280(s0)
 960:	244fffff 	addiu	t7,v0,-1
 964:	a60f01c8 	sh	t7,456(s0)
 968:	50600020 	beqzl	v1,9ec <EnDha_Die+0x1a8>
 96c:	8fbf002c 	lw	ra,44(sp)
 970:	8478001c 	lh	t8,28(v1)
 974:	2401000a 	li	at,10
 978:	5701001c 	bnel	t8,at,9ec <EnDha_Die+0x1a8>
 97c:	8fbf002c 	lw	ra,44(sp)
 980:	0c000000 	jal	0 <EnDha_SetupAction>
 984:	02002025 	move	a0,s0
 988:	10000018 	b	9ec <EnDha_Die+0x1a8>
 98c:	8fbf002c 	lw	ra,44(sp)
 990:	c60a00bc 	lwc1	$f10,188(s0)
 994:	44818000 	mtc1	at,$f16
 998:	2419005a 	li	t9,90
 99c:	24080014 	li	t0,20
 9a0:	46105480 	add.s	$f18,$f10,$f16
 9a4:	24090001 	li	t1,1
 9a8:	3c0640e0 	lui	a2,0x40e0
 9ac:	24070001 	li	a3,1
 9b0:	e61200bc 	swc1	$f18,188(s0)
 9b4:	afa90018 	sw	t1,24(sp)
 9b8:	afa80014 	sw	t0,20(sp)
 9bc:	afb90010 	sw	t9,16(sp)
 9c0:	0c000000 	jal	0 <EnDha_SetupAction>
 9c4:	8fa40054 	lw	a0,84(sp)
 9c8:	44802000 	mtc1	zero,$f4
 9cc:	c60600bc 	lwc1	$f6,188(s0)
 9d0:	46062032 	c.eq.s	$f4,$f6
 9d4:	00000000 	nop
 9d8:	45020004 	bc1fl	9ec <EnDha_Die+0x1a8>
 9dc:	8fbf002c 	lw	ra,44(sp)
 9e0:	0c000000 	jal	0 <EnDha_SetupAction>
 9e4:	02002025 	move	a0,s0
 9e8:	8fbf002c 	lw	ra,44(sp)
 9ec:	8fb00028 	lw	s0,40(sp)
 9f0:	27bd0050 	addiu	sp,sp,80
 9f4:	03e00008 	jr	ra
 9f8:	00000000 	nop

000009fc <EnDha_UpdateHealth>:
 9fc:	27bdffd8 	addiu	sp,sp,-40
 a00:	afbf0024 	sw	ra,36(sp)
 a04:	afb00020 	sw	s0,32(sp)
 a08:	afa5002c 	sw	a1,44(sp)
 a0c:	908e01c0 	lbu	t6,448(a0)
 a10:	00808025 	move	s0,a0
 a14:	29c10008 	slti	at,t6,8
 a18:	50200027 	beqzl	at,ab8 <EnDha_UpdateHealth+0xbc>
 a1c:	8e020118 	lw	v0,280(s0)
 a20:	90820211 	lbu	v0,529(a0)
 a24:	304f0002 	andi	t7,v0,0x2
 a28:	51e00023 	beqzl	t7,ab8 <EnDha_UpdateHealth+0xbc>
 a2c:	8e020118 	lw	v0,280(s0)
 a30:	908300b1 	lbu	v1,177(a0)
 a34:	3058fffd 	andi	t8,v0,0xfffd
 a38:	a0980211 	sb	t8,529(a0)
 a3c:	10600026 	beqz	v1,ad8 <EnDha_UpdateHealth+0xdc>
 a40:	24010006 	li	at,6
 a44:	10610024 	beq	v1,at,ad8 <EnDha_UpdateHealth+0xdc>
 a48:	24054000 	li	a1,16384
 a4c:	24190008 	li	t9,8
 a50:	afb90010 	sw	t9,16(sp)
 a54:	240600ff 	li	a2,255
 a58:	0c000000 	jal	0 <EnDha_SetupAction>
 a5c:	00003825 	move	a3,zero
 a60:	0c000000 	jal	0 <EnDha_SetupAction>
 a64:	02002025 	move	a0,s0
 a68:	1440000c 	bnez	v0,a9c <EnDha_UpdateHealth+0xa0>
 a6c:	02002025 	move	a0,s0
 a70:	0c000000 	jal	0 <EnDha_SetupAction>
 a74:	02002025 	move	a0,s0
 a78:	24080008 	li	t0,8
 a7c:	a20800af 	sb	t0,175(s0)
 a80:	8fa4002c 	lw	a0,44(sp)
 a84:	02002825 	move	a1,s0
 a88:	26060024 	addiu	a2,s0,36
 a8c:	0c000000 	jal	0 <EnDha_SetupAction>
 a90:	240700e0 	li	a3,224
 a94:	10000008 	b	ab8 <EnDha_UpdateHealth+0xbc>
 a98:	8e020118 	lw	v0,280(s0)
 a9c:	0c000000 	jal	0 <EnDha_SetupAction>
 aa0:	240539a9 	li	a1,14761
 aa4:	24090009 	li	t1,9
 aa8:	a20901c0 	sb	t1,448(s0)
 aac:	0c000000 	jal	0 <EnDha_SetupAction>
 ab0:	02002025 	move	a0,s0
 ab4:	8e020118 	lw	v0,280(s0)
 ab8:	50400008 	beqzl	v0,adc <EnDha_UpdateHealth+0xe0>
 abc:	8fbf0024 	lw	ra,36(sp)
 ac0:	844a001c 	lh	t2,28(v0)
 ac4:	2401000a 	li	at,10
 ac8:	55410004 	bnel	t2,at,adc <EnDha_UpdateHealth+0xe0>
 acc:	8fbf0024 	lw	ra,36(sp)
 ad0:	0c000000 	jal	0 <EnDha_SetupAction>
 ad4:	02002025 	move	a0,s0
 ad8:	8fbf0024 	lw	ra,36(sp)
 adc:	8fb00020 	lw	s0,32(sp)
 ae0:	27bd0028 	addiu	sp,sp,40
 ae4:	03e00008 	jr	ra
 ae8:	00000000 	nop

00000aec <EnDha_Update>:
 aec:	27bdffc8 	addiu	sp,sp,-56
 af0:	afbf0024 	sw	ra,36(sp)
 af4:	afb10020 	sw	s1,32(sp)
 af8:	afb0001c 	sw	s0,28(sp)
 afc:	8c8e0118 	lw	t6,280(a0)
 b00:	00808025 	move	s0,a0
 b04:	00a08825 	move	s1,a1
 b08:	15c00009 	bnez	t6,b30 <EnDha_Update+0x44>
 b0c:	00a02025 	move	a0,a1
 b10:	3c010000 	lui	at,0x0
 b14:	c4240008 	lwc1	$f4,8(at)
 b18:	02002825 	move	a1,s0
 b1c:	240600a4 	li	a2,164
 b20:	24070005 	li	a3,5
 b24:	0c000000 	jal	0 <EnDha_SetupAction>
 b28:	e7a40010 	swc1	$f4,16(sp)
 b2c:	ae020118 	sw	v0,280(s0)
 b30:	02002025 	move	a0,s0
 b34:	0c000000 	jal	0 <EnDha_SetupAction>
 b38:	02202825 	move	a1,s1
 b3c:	8e1901c4 	lw	t9,452(s0)
 b40:	02002025 	move	a0,s0
 b44:	02202825 	move	a1,s1
 b48:	0320f809 	jalr	t9
 b4c:	00000000 	nop
 b50:	3c010001 	lui	at,0x1
 b54:	34211e60 	ori	at,at,0x1e60
 b58:	02212821 	addu	a1,s1,at
 b5c:	26060200 	addiu	a2,s0,512
 b60:	afa60028 	sw	a2,40(sp)
 b64:	afa5002c 	sw	a1,44(sp)
 b68:	0c000000 	jal	0 <EnDha_SetupAction>
 b6c:	02202025 	move	a0,s1
 b70:	8fa5002c 	lw	a1,44(sp)
 b74:	8fa60028 	lw	a2,40(sp)
 b78:	0c000000 	jal	0 <EnDha_SetupAction>
 b7c:	02202025 	move	a0,s1
 b80:	8fbf0024 	lw	ra,36(sp)
 b84:	8fb0001c 	lw	s0,28(sp)
 b88:	8fb10020 	lw	s1,32(sp)
 b8c:	03e00008 	jr	ra
 b90:	27bd0038 	addiu	sp,sp,56

00000b94 <EnDha_OverrideLimbDraw>:
 b94:	24010001 	li	at,1
 b98:	afa40000 	sw	a0,0(sp)
 b9c:	afa60008 	sw	a2,8(sp)
 ba0:	14a1000d 	bne	a1,at,bd8 <EnDha_OverrideLimbDraw+0x44>
 ba4:	afa7000c 	sw	a3,12(sp)
 ba8:	8fa20014 	lw	v0,20(sp)
 bac:	8fa30010 	lw	v1,16(sp)
 bb0:	844e01ce 	lh	t6,462(v0)
 bb4:	84690004 	lh	t1,4(v1)
 bb8:	25d94000 	addiu	t9,t6,16384
 bbc:	00194023 	negu	t0,t9
 bc0:	a4680002 	sh	t0,2(v1)
 bc4:	844a01d2 	lh	t2,466(v0)
 bc8:	00001025 	move	v0,zero
 bcc:	012a5821 	addu	t3,t1,t2
 bd0:	03e00008 	jr	ra
 bd4:	a46b0004 	sh	t3,4(v1)
 bd8:	24010002 	li	at,2
 bdc:	14a1000a 	bne	a1,at,c08 <EnDha_OverrideLimbDraw+0x74>
 be0:	8fa20014 	lw	v0,20(sp)
 be4:	8fa30010 	lw	v1,16(sp)
 be8:	844c01d0 	lh	t4,464(v0)
 bec:	846d0002 	lh	t5,2(v1)
 bf0:	a46c0004 	sh	t4,4(v1)
 bf4:	844e01d2 	lh	t6,466(v0)
 bf8:	00001025 	move	v0,zero
 bfc:	01ae7823 	subu	t7,t5,t6
 c00:	03e00008 	jr	ra
 c04:	a46f0002 	sh	t7,2(v1)
 c08:	24010003 	li	at,3
 c0c:	14a10008 	bne	a1,at,c30 <EnDha_OverrideLimbDraw+0x9c>
 c10:	8fa20014 	lw	v0,20(sp)
 c14:	845801d6 	lh	t8,470(v0)
 c18:	8fa30010 	lw	v1,16(sp)
 c1c:	0018c823 	negu	t9,t8
 c20:	a4790002 	sh	t9,2(v1)
 c24:	844801d4 	lh	t0,468(v0)
 c28:	00084823 	negu	t1,t0
 c2c:	a4690004 	sh	t1,4(v1)
 c30:	03e00008 	jr	ra
 c34:	00001025 	move	v0,zero

00000c38 <EnDha_OverridePostDraw>:
 c38:	27bdffb8 	addiu	sp,sp,-72
 c3c:	3c0f0000 	lui	t7,0x0
 c40:	afbf001c 	sw	ra,28(sp)
 c44:	afb00018 	sw	s0,24(sp)
 c48:	afa40048 	sw	a0,72(sp)
 c4c:	afa60050 	sw	a2,80(sp)
 c50:	afa70054 	sw	a3,84(sp)
 c54:	25ef0134 	addiu	t7,t7,308
 c58:	8df90000 	lw	t9,0(t7)
 c5c:	27ae003c 	addiu	t6,sp,60
 c60:	8df80004 	lw	t8,4(t7)
 c64:	add90000 	sw	t9,0(t6)
 c68:	8df90008 	lw	t9,8(t7)
 c6c:	3c090000 	lui	t1,0x0
 c70:	25290140 	addiu	t1,t1,320
 c74:	add80004 	sw	t8,4(t6)
 c78:	add90008 	sw	t9,8(t6)
 c7c:	8d2b0000 	lw	t3,0(t1)
 c80:	27a80030 	addiu	t0,sp,48
 c84:	8d2a0004 	lw	t2,4(t1)
 c88:	ad0b0000 	sw	t3,0(t0)
 c8c:	8d2b0008 	lw	t3,8(t1)
 c90:	24010001 	li	at,1
 c94:	ad0a0004 	sw	t2,4(t0)
 c98:	10a10009 	beq	a1,at,cc0 <EnDha_OverridePostDraw+0x88>
 c9c:	ad0b0008 	sw	t3,8(t0)
 ca0:	24010002 	li	at,2
 ca4:	10a10010 	beq	a1,at,ce8 <EnDha_OverridePostDraw+0xb0>
 ca8:	8fb00058 	lw	s0,88(sp)
 cac:	24010003 	li	at,3
 cb0:	10a10019 	beq	a1,at,d18 <EnDha_OverridePostDraw+0xe0>
 cb4:	8fb00058 	lw	s0,88(sp)
 cb8:	10000021 	b	d40 <EnDha_OverridePostDraw+0x108>
 cbc:	8fbf001c 	lw	ra,28(sp)
 cc0:	8fb00058 	lw	s0,88(sp)
 cc4:	24040002 	li	a0,2
 cc8:	26050200 	addiu	a1,s0,512
 ccc:	0c000000 	jal	0 <EnDha_SetupAction>
 cd0:	afa50024 	sw	a1,36(sp)
 cd4:	8fa50024 	lw	a1,36(sp)
 cd8:	0c000000 	jal	0 <EnDha_SetupAction>
 cdc:	24040003 	li	a0,3
 ce0:	10000017 	b	d40 <EnDha_OverridePostDraw+0x108>
 ce4:	8fbf001c 	lw	ra,28(sp)
 ce8:	26050200 	addiu	a1,s0,512
 cec:	afa50024 	sw	a1,36(sp)
 cf0:	0c000000 	jal	0 <EnDha_SetupAction>
 cf4:	24040004 	li	a0,4
 cf8:	8fa50024 	lw	a1,36(sp)
 cfc:	0c000000 	jal	0 <EnDha_SetupAction>
 d00:	24040005 	li	a0,5
 d04:	27a40030 	addiu	a0,sp,48
 d08:	0c000000 	jal	0 <EnDha_SetupAction>
 d0c:	260501f4 	addiu	a1,s0,500
 d10:	1000000b 	b	d40 <EnDha_OverridePostDraw+0x108>
 d14:	8fbf001c 	lw	ra,28(sp)
 d18:	24040001 	li	a0,1
 d1c:	0c000000 	jal	0 <EnDha_SetupAction>
 d20:	26050200 	addiu	a1,s0,512
 d24:	27a4003c 	addiu	a0,sp,60
 d28:	0c000000 	jal	0 <EnDha_SetupAction>
 d2c:	260501dc 	addiu	a1,s0,476
 d30:	27a40030 	addiu	a0,sp,48
 d34:	0c000000 	jal	0 <EnDha_SetupAction>
 d38:	260501e8 	addiu	a1,s0,488
 d3c:	8fbf001c 	lw	ra,28(sp)
 d40:	8fb00018 	lw	s0,24(sp)
 d44:	27bd0048 	addiu	sp,sp,72
 d48:	03e00008 	jr	ra
 d4c:	00000000 	nop

00000d50 <EnDha_Draw>:
 d50:	27bdffd8 	addiu	sp,sp,-40
 d54:	afbf0024 	sw	ra,36(sp)
 d58:	afa40028 	sw	a0,40(sp)
 d5c:	afa5002c 	sw	a1,44(sp)
 d60:	0c000000 	jal	0 <EnDha_SetupAction>
 d64:	8ca40000 	lw	a0,0(a1)
 d68:	8fa20028 	lw	v0,40(sp)
 d6c:	3c0f0000 	lui	t7,0x0
 d70:	3c180000 	lui	t8,0x0
 d74:	8c450150 	lw	a1,336(v0)
 d78:	8c46016c 	lw	a2,364(v0)
 d7c:	9047014e 	lbu	a3,334(v0)
 d80:	27180000 	addiu	t8,t8,0
 d84:	25ef0000 	addiu	t7,t7,0
 d88:	afaf0010 	sw	t7,16(sp)
 d8c:	afb80014 	sw	t8,20(sp)
 d90:	8fa4002c 	lw	a0,44(sp)
 d94:	0c000000 	jal	0 <EnDha_SetupAction>
 d98:	afa20018 	sw	v0,24(sp)
 d9c:	8fbf0024 	lw	ra,36(sp)
 da0:	27bd0028 	addiu	sp,sp,40
 da4:	03e00008 	jr	ra
 da8:	00000000 	nop
 dac:	00000000 	nop
