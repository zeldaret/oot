
build/src/overlays/actors/ovl_En_Heishi3/z_en_heishi3.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnHeishi3_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	3c010000 	lui	at,0x0
   8:	afbf002c 	sw	ra,44(sp)
   c:	afb00028 	sw	s0,40(sp)
  10:	afa5003c 	sw	a1,60(sp)
  14:	a4200000 	sh	zero,0(at)
  18:	848e001c 	lh	t6,28(a0)
  1c:	3c053c23 	lui	a1,0x3c23
  20:	00808025 	move	s0,a0
  24:	1dc00003 	bgtz	t6,34 <EnHeishi3_Init+0x34>
  28:	34a5d70a 	ori	a1,a1,0xd70a
  2c:	1000000b 	b	5c <EnHeishi3_Init+0x5c>
  30:	a4800278 	sh	zero,632(a0)
  34:	3c01c391 	lui	at,0xc391
  38:	44813000 	mtc1	at,$f6
  3c:	c6040024 	lwc1	$f4,36(s0)
  40:	240f0001 	li	t7,1
  44:	a60f0278 	sh	t7,632(s0)
  48:	4606203c 	c.lt.s	$f4,$f6
  4c:	24180002 	li	t8,2
  50:	45000002 	bc1f	5c <EnHeishi3_Init+0x5c>
  54:	00000000 	nop
  58:	a6180278 	sh	t8,632(s0)
  5c:	0c000000 	jal	0 <EnHeishi3_Init>
  60:	02002025 	move	a0,s0
  64:	3c060000 	lui	a2,0x0
  68:	24c60000 	addiu	a2,a2,0
  6c:	260400b4 	addiu	a0,s0,180
  70:	24050000 	li	a1,0
  74:	0c000000 	jal	0 <EnHeishi3_Init>
  78:	3c0741f0 	lui	a3,0x41f0
  7c:	3c060000 	lui	a2,0x0
  80:	3c070000 	lui	a3,0x0
  84:	26190190 	addiu	t9,s0,400
  88:	260801f6 	addiu	t0,s0,502
  8c:	24090011 	li	t1,17
  90:	afa90018 	sw	t1,24(sp)
  94:	afa80014 	sw	t0,20(sp)
  98:	afb90010 	sw	t9,16(sp)
  9c:	24e70000 	addiu	a3,a3,0
  a0:	24c60000 	addiu	a2,a2,0
  a4:	8fa4003c 	lw	a0,60(sp)
  a8:	0c000000 	jal	0 <EnHeishi3_Init>
  ac:	2605014c 	addiu	a1,s0,332
  b0:	240a00ff 	li	t2,255
  b4:	240b0006 	li	t3,6
  b8:	a20a00ae 	sb	t2,174(s0)
  bc:	a20b001f 	sb	t3,31(s0)
  c0:	2605027c 	addiu	a1,s0,636
  c4:	afa50030 	sw	a1,48(sp)
  c8:	0c000000 	jal	0 <EnHeishi3_Init>
  cc:	8fa4003c 	lw	a0,60(sp)
  d0:	3c070000 	lui	a3,0x0
  d4:	8fa50030 	lw	a1,48(sp)
  d8:	24e70024 	addiu	a3,a3,36
  dc:	8fa4003c 	lw	a0,60(sp)
  e0:	0c000000 	jal	0 <EnHeishi3_Init>
  e4:	02003025 	move	a2,s0
  e8:	3c040000 	lui	a0,0x0
  ec:	0c000000 	jal	0 <EnHeishi3_Init>
  f0:	24840000 	addiu	a0,a0,0
  f4:	8e0d0024 	lw	t5,36(s0)
  f8:	3c01c040 	lui	at,0xc040
  fc:	44814000 	mtc1	at,$f8
 100:	ae0d0038 	sw	t5,56(s0)
 104:	8e0d002c 	lw	t5,44(s0)
 108:	8e0c0028 	lw	t4,40(s0)
 10c:	3c0e0000 	lui	t6,0x0
 110:	25ce0000 	addiu	t6,t6,0
 114:	ae0e025c 	sw	t6,604(s0)
 118:	e608006c 	swc1	$f8,108(s0)
 11c:	ae0d0040 	sw	t5,64(s0)
 120:	ae0c003c 	sw	t4,60(s0)
 124:	8fbf002c 	lw	ra,44(sp)
 128:	8fb00028 	lw	s0,40(sp)
 12c:	27bd0038 	addiu	sp,sp,56
 130:	03e00008 	jr	ra
 134:	00000000 	nop

00000138 <EnHeishi3_Destroy>:
 138:	27bdffe8 	addiu	sp,sp,-24
 13c:	00803025 	move	a2,a0
 140:	afbf0014 	sw	ra,20(sp)
 144:	00a02025 	move	a0,a1
 148:	0c000000 	jal	0 <EnHeishi3_Init>
 14c:	24c5027c 	addiu	a1,a2,636
 150:	8fbf0014 	lw	ra,20(sp)
 154:	27bd0018 	addiu	sp,sp,24
 158:	03e00008 	jr	ra
 15c:	00000000 	nop

00000160 <EnHeishi3_SetupGuardType>:
 160:	27bdffd8 	addiu	sp,sp,-40
 164:	afa40028 	sw	a0,40(sp)
 168:	afbf0024 	sw	ra,36(sp)
 16c:	3c040000 	lui	a0,0x0
 170:	afa5002c 	sw	a1,44(sp)
 174:	0c000000 	jal	0 <EnHeishi3_Init>
 178:	24840000 	addiu	a0,a0,0
 17c:	44822000 	mtc1	v0,$f4
 180:	3c01c120 	lui	at,0xc120
 184:	8fa30028 	lw	v1,40(sp)
 188:	468021a0 	cvt.s.w	$f6,$f4
 18c:	44819000 	mtc1	at,$f18
 190:	3c050000 	lui	a1,0x0
 194:	24a50000 	addiu	a1,a1,0
 198:	3c063f80 	lui	a2,0x3f80
 19c:	24070000 	li	a3,0
 1a0:	4600320d 	trunc.w.s	$f8,$f6
 1a4:	afa00014 	sw	zero,20(sp)
 1a8:	2464014c 	addiu	a0,v1,332
 1ac:	e7b20018 	swc1	$f18,24(sp)
 1b0:	440f4000 	mfc1	t7,$f8
 1b4:	00000000 	nop
 1b8:	000fc400 	sll	t8,t7,0x10
 1bc:	0018cc03 	sra	t9,t8,0x10
 1c0:	44995000 	mtc1	t9,$f10
 1c4:	00000000 	nop
 1c8:	46805420 	cvt.s.w	$f16,$f10
 1cc:	0c000000 	jal	0 <EnHeishi3_Init>
 1d0:	e7b00010 	swc1	$f16,16(sp)
 1d4:	8fa30028 	lw	v1,40(sp)
 1d8:	3c090000 	lui	t1,0x0
 1dc:	3c0a0000 	lui	t2,0x0
 1e0:	84680278 	lh	t0,632(v1)
 1e4:	25290000 	addiu	t1,t1,0
 1e8:	254a0000 	addiu	t2,t2,0
 1ec:	55000004 	bnezl	t0,200 <EnHeishi3_SetupGuardType+0xa0>
 1f0:	ac6a025c 	sw	t2,604(v1)
 1f4:	10000002 	b	200 <EnHeishi3_SetupGuardType+0xa0>
 1f8:	ac69025c 	sw	t1,604(v1)
 1fc:	ac6a025c 	sw	t2,604(v1)
 200:	8fbf0024 	lw	ra,36(sp)
 204:	27bd0028 	addiu	sp,sp,40
 208:	03e00008 	jr	ra
 20c:	00000000 	nop

00000210 <EnHeishi3_StandSentinelInGrounds>:
 210:	27bdffd8 	addiu	sp,sp,-40
 214:	afbf001c 	sw	ra,28(sp)
 218:	afb00018 	sw	s0,24(sp)
 21c:	afa5002c 	sw	a1,44(sp)
 220:	8caf1c44 	lw	t7,7236(a1)
 224:	00808025 	move	s0,a0
 228:	2484014c 	addiu	a0,a0,332
 22c:	0c000000 	jal	0 <EnHeishi3_Init>
 230:	afaf0024 	sw	t7,36(sp)
 234:	8618008a 	lh	t8,138(s0)
 238:	861900b6 	lh	t9,182(s0)
 23c:	3c080000 	lui	t0,0x0
 240:	3c090000 	lui	t1,0x0
 244:	03191023 	subu	v0,t8,t9
 248:	00021400 	sll	v0,v0,0x10
 24c:	00021403 	sra	v0,v0,0x10
 250:	04400004 	bltz	v0,264 <EnHeishi3_StandSentinelInGrounds+0x54>
 254:	00021823 	negu	v1,v0
 258:	00021c00 	sll	v1,v0,0x10
 25c:	10000003 	b	26c <EnHeishi3_StandSentinelInGrounds+0x5c>
 260:	00031c03 	sra	v1,v1,0x10
 264:	00031c00 	sll	v1,v1,0x10
 268:	00031c03 	sra	v1,v1,0x10
 26c:	28614300 	slti	at,v1,17152
 270:	1020000c 	beqz	at,2a4 <EnHeishi3_StandSentinelInGrounds+0x94>
 274:	8faa0024 	lw	t2,36(sp)
 278:	8d080010 	lw	t0,16(t0)
 27c:	3c014348 	lui	at,0x4348
 280:	55000006 	bnezl	t0,29c <EnHeishi3_StandSentinelInGrounds+0x8c>
 284:	44810000 	mtc1	at,$f0
 288:	3c01437a 	lui	at,0x437a
 28c:	44810000 	mtc1	at,$f0
 290:	1000000f 	b	2d0 <EnHeishi3_StandSentinelInGrounds+0xc0>
 294:	c6040090 	lwc1	$f4,144(s0)
 298:	44810000 	mtc1	at,$f0
 29c:	1000000c 	b	2d0 <EnHeishi3_StandSentinelInGrounds+0xc0>
 2a0:	c6040090 	lwc1	$f4,144(s0)
 2a4:	8d290010 	lw	t1,16(t1)
 2a8:	3c0142c8 	lui	at,0x42c8
 2ac:	55200006 	bnezl	t1,2c8 <EnHeishi3_StandSentinelInGrounds+0xb8>
 2b0:	44810000 	mtc1	at,$f0
 2b4:	3c014316 	lui	at,0x4316
 2b8:	44810000 	mtc1	at,$f0
 2bc:	10000004 	b	2d0 <EnHeishi3_StandSentinelInGrounds+0xc0>
 2c0:	c6040090 	lwc1	$f4,144(s0)
 2c4:	44810000 	mtc1	at,$f0
 2c8:	00000000 	nop
 2cc:	c6040090 	lwc1	$f4,144(s0)
 2d0:	4600203c 	c.lt.s	$f4,$f0
 2d4:	00000000 	nop
 2d8:	45020022 	bc1fl	364 <EnHeishi3_StandSentinelInGrounds+0x154>
 2dc:	8fbf001c 	lw	ra,28(sp)
 2e0:	c5460028 	lwc1	$f6,40(t2)
 2e4:	c6080028 	lwc1	$f8,40(s0)
 2e8:	3c0142c8 	lui	at,0x42c8
 2ec:	44815000 	mtc1	at,$f10
 2f0:	46083001 	sub.s	$f0,$f6,$f8
 2f4:	3c020000 	lui	v0,0x0
 2f8:	24420000 	addiu	v0,v0,0
 2fc:	46000005 	abs.s	$f0,$f0
 300:	460a003c 	c.lt.s	$f0,$f10
 304:	00000000 	nop
 308:	45020016 	bc1fl	364 <EnHeishi3_StandSentinelInGrounds+0x154>
 30c:	8fbf001c 	lw	ra,28(sp)
 310:	844b0000 	lh	t3,0(v0)
 314:	240c0001 	li	t4,1
 318:	2405702d 	li	a1,28717
 31c:	15600010 	bnez	t3,360 <EnHeishi3_StandSentinelInGrounds+0x150>
 320:	02003025 	move	a2,s0
 324:	a44c0000 	sh	t4,0(v0)
 328:	0c000000 	jal	0 <EnHeishi3_Init>
 32c:	8fa4002c 	lw	a0,44(sp)
 330:	0c000000 	jal	0 <EnHeishi3_Init>
 334:	2404482c 	li	a0,18476
 338:	3c040000 	lui	a0,0x0
 33c:	0c000000 	jal	0 <EnHeishi3_Init>
 340:	24840034 	addiu	a0,a0,52
 344:	8fa4002c 	lw	a0,44(sp)
 348:	02002825 	move	a1,s0
 34c:	0c000000 	jal	0 <EnHeishi3_Init>
 350:	24060001 	li	a2,1
 354:	3c0d0000 	lui	t5,0x0
 358:	25ad0000 	addiu	t5,t5,0
 35c:	ae0d025c 	sw	t5,604(s0)
 360:	8fbf001c 	lw	ra,28(sp)
 364:	8fb00018 	lw	s0,24(sp)
 368:	27bd0028 	addiu	sp,sp,40
 36c:	03e00008 	jr	ra
 370:	00000000 	nop

00000374 <EnHeishi3_StandSentinelInCastle>:
 374:	27bdffd8 	addiu	sp,sp,-40
 378:	afbf001c 	sw	ra,28(sp)
 37c:	afb00018 	sw	s0,24(sp)
 380:	afa5002c 	sw	a1,44(sp)
 384:	8ca21c44 	lw	v0,7236(a1)
 388:	00808025 	move	s0,a0
 38c:	2484014c 	addiu	a0,a0,332
 390:	0c000000 	jal	0 <EnHeishi3_Init>
 394:	afa20024 	sw	v0,36(sp)
 398:	8fa20024 	lw	v0,36(sp)
 39c:	3c01c33e 	lui	at,0xc33e
 3a0:	44812000 	mtc1	at,$f4
 3a4:	c4420024 	lwc1	$f2,36(v0)
 3a8:	3c01c3be 	lui	at,0xc3be
 3ac:	4604103c 	c.lt.s	$f2,$f4
 3b0:	00000000 	nop
 3b4:	45020049 	bc1fl	4dc <EnHeishi3_StandSentinelInCastle+0x168>
 3b8:	8fbf001c 	lw	ra,28(sp)
 3bc:	44813000 	mtc1	at,$f6
 3c0:	00000000 	nop
 3c4:	4602303c 	c.lt.s	$f6,$f2
 3c8:	00000000 	nop
 3cc:	45020043 	bc1fl	4dc <EnHeishi3_StandSentinelInCastle+0x168>
 3d0:	8fbf001c 	lw	ra,28(sp)
 3d4:	c4480028 	lwc1	$f8,40(v0)
 3d8:	c60a0028 	lwc1	$f10,40(s0)
 3dc:	3c0142c8 	lui	at,0x42c8
 3e0:	44818000 	mtc1	at,$f16
 3e4:	460a4001 	sub.s	$f0,$f8,$f10
 3e8:	3c01447f 	lui	at,0x447f
 3ec:	46000005 	abs.s	$f0,$f0
 3f0:	4610003c 	c.lt.s	$f0,$f16
 3f4:	00000000 	nop
 3f8:	45020038 	bc1fl	4dc <EnHeishi3_StandSentinelInCastle+0x168>
 3fc:	8fbf001c 	lw	ra,28(sp)
 400:	c440002c 	lwc1	$f0,44(v0)
 404:	44819000 	mtc1	at,$f18
 408:	3c01442f 	lui	at,0x442f
 40c:	4612003c 	c.lt.s	$f0,$f18
 410:	00000000 	nop
 414:	45020031 	bc1fl	4dc <EnHeishi3_StandSentinelInCastle+0x168>
 418:	8fbf001c 	lw	ra,28(sp)
 41c:	44812000 	mtc1	at,$f4
 420:	3c030000 	lui	v1,0x0
 424:	24630000 	addiu	v1,v1,0
 428:	4600203c 	c.lt.s	$f4,$f0
 42c:	00000000 	nop
 430:	4502002a 	bc1fl	4dc <EnHeishi3_StandSentinelInCastle+0x168>
 434:	8fbf001c 	lw	ra,28(sp)
 438:	846f0000 	lh	t7,0(v1)
 43c:	55e00027 	bnezl	t7,4dc <EnHeishi3_StandSentinelInCastle+0x168>
 440:	8fbf001c 	lw	ra,28(sp)
 444:	86180278 	lh	t8,632(s0)
 448:	24020001 	li	v0,1
 44c:	3c01c391 	lui	at,0xc391
 450:	5458000b 	bnel	v0,t8,480 <EnHeishi3_StandSentinelInCastle+0x10c>
 454:	44814000 	mtc1	at,$f8
 458:	3c01c391 	lui	at,0xc391
 45c:	44813000 	mtc1	at,$f6
 460:	00000000 	nop
 464:	4606103c 	c.lt.s	$f2,$f6
 468:	00000000 	nop
 46c:	4502000a 	bc1fl	498 <EnHeishi3_StandSentinelInCastle+0x124>
 470:	a4620000 	sh	v0,0(v1)
 474:	10000019 	b	4dc <EnHeishi3_StandSentinelInCastle+0x168>
 478:	8fbf001c 	lw	ra,28(sp)
 47c:	44814000 	mtc1	at,$f8
 480:	00000000 	nop
 484:	4602403c 	c.lt.s	$f8,$f2
 488:	00000000 	nop
 48c:	45030013 	bc1tl	4dc <EnHeishi3_StandSentinelInCastle+0x168>
 490:	8fbf001c 	lw	ra,28(sp)
 494:	a4620000 	sh	v0,0(v1)
 498:	8fa4002c 	lw	a0,44(sp)
 49c:	2405702d 	li	a1,28717
 4a0:	0c000000 	jal	0 <EnHeishi3_Init>
 4a4:	02003025 	move	a2,s0
 4a8:	0c000000 	jal	0 <EnHeishi3_Init>
 4ac:	2404482c 	li	a0,18476
 4b0:	3c040000 	lui	a0,0x0
 4b4:	0c000000 	jal	0 <EnHeishi3_Init>
 4b8:	2484005c 	addiu	a0,a0,92
 4bc:	8fa4002c 	lw	a0,44(sp)
 4c0:	02002825 	move	a1,s0
 4c4:	0c000000 	jal	0 <EnHeishi3_Init>
 4c8:	24060001 	li	a2,1
 4cc:	3c190000 	lui	t9,0x0
 4d0:	27390000 	addiu	t9,t9,0
 4d4:	ae19025c 	sw	t9,604(s0)
 4d8:	8fbf001c 	lw	ra,28(sp)
 4dc:	8fb00018 	lw	s0,24(sp)
 4e0:	27bd0028 	addiu	sp,sp,40
 4e4:	03e00008 	jr	ra
 4e8:	00000000 	nop

000004ec <EnHeishi3_CatchStart>:
 4ec:	27bdffd8 	addiu	sp,sp,-40
 4f0:	afa40028 	sw	a0,40(sp)
 4f4:	afbf0024 	sw	ra,36(sp)
 4f8:	3c040000 	lui	a0,0x0
 4fc:	afa5002c 	sw	a1,44(sp)
 500:	0c000000 	jal	0 <EnHeishi3_Init>
 504:	24840000 	addiu	a0,a0,0
 508:	44822000 	mtc1	v0,$f4
 50c:	3c01c120 	lui	at,0xc120
 510:	8fa30028 	lw	v1,40(sp)
 514:	468021a0 	cvt.s.w	$f6,$f4
 518:	44819000 	mtc1	at,$f18
 51c:	3c050000 	lui	a1,0x0
 520:	24a50000 	addiu	a1,a1,0
 524:	3c063f80 	lui	a2,0x3f80
 528:	24070000 	li	a3,0
 52c:	4600320d 	trunc.w.s	$f8,$f6
 530:	afa00014 	sw	zero,20(sp)
 534:	2464014c 	addiu	a0,v1,332
 538:	e7b20018 	swc1	$f18,24(sp)
 53c:	440f4000 	mfc1	t7,$f8
 540:	00000000 	nop
 544:	000fc400 	sll	t8,t7,0x10
 548:	0018cc03 	sra	t9,t8,0x10
 54c:	44995000 	mtc1	t9,$f10
 550:	00000000 	nop
 554:	46805420 	cvt.s.w	$f16,$f10
 558:	0c000000 	jal	0 <EnHeishi3_Init>
 55c:	e7b00010 	swc1	$f16,16(sp)
 560:	8fa30028 	lw	v1,40(sp)
 564:	3c014020 	lui	at,0x4020
 568:	44812000 	mtc1	at,$f4
 56c:	3c090000 	lui	t1,0x0
 570:	24080014 	li	t0,20
 574:	25290000 	addiu	t1,t1,0
 578:	a4680272 	sh	t0,626(v1)
 57c:	ac69025c 	sw	t1,604(v1)
 580:	e4640068 	swc1	$f4,104(v1)
 584:	8fbf0024 	lw	ra,36(sp)
 588:	27bd0028 	addiu	sp,sp,40
 58c:	03e00008 	jr	ra
 590:	00000000 	nop

00000594 <func_80A55BD4>:
 594:	27bdffd0 	addiu	sp,sp,-48
 598:	afb00020 	sw	s0,32(sp)
 59c:	00808025 	move	s0,a0
 5a0:	afbf0024 	sw	ra,36(sp)
 5a4:	2484014c 	addiu	a0,a0,332
 5a8:	afa50034 	sw	a1,52(sp)
 5ac:	0c000000 	jal	0 <EnHeishi3_Init>
 5b0:	afa4002c 	sw	a0,44(sp)
 5b4:	8fa4002c 	lw	a0,44(sp)
 5b8:	0c000000 	jal	0 <EnHeishi3_Init>
 5bc:	3c053f80 	lui	a1,0x3f80
 5c0:	14400004 	bnez	v0,5d4 <func_80A55BD4+0x40>
 5c4:	8fa4002c 	lw	a0,44(sp)
 5c8:	0c000000 	jal	0 <EnHeishi3_Init>
 5cc:	3c054188 	lui	a1,0x4188
 5d0:	10400003 	beqz	v0,5e0 <func_80A55BD4+0x4c>
 5d4:	02002025 	move	a0,s0
 5d8:	0c000000 	jal	0 <EnHeishi3_Init>
 5dc:	240528f0 	li	a1,10480
 5e0:	860e0272 	lh	t6,626(s0)
 5e4:	26040032 	addiu	a0,s0,50
 5e8:	24060005 	li	a2,5
 5ec:	15c00007 	bnez	t6,60c <func_80A55BD4+0x78>
 5f0:	24070bb8 	li	a3,3000
 5f4:	44802000 	mtc1	zero,$f4
 5f8:	3c0f0000 	lui	t7,0x0
 5fc:	25ef0000 	addiu	t7,t7,0
 600:	ae0f025c 	sw	t7,604(s0)
 604:	10000004 	b	618 <func_80A55BD4+0x84>
 608:	e6040068 	swc1	$f4,104(s0)
 60c:	8605008a 	lh	a1,138(s0)
 610:	0c000000 	jal	0 <EnHeishi3_Init>
 614:	afa00010 	sw	zero,16(sp)
 618:	8fbf0024 	lw	ra,36(sp)
 61c:	8fb00020 	lw	s0,32(sp)
 620:	27bd0030 	addiu	sp,sp,48
 624:	03e00008 	jr	ra
 628:	00000000 	nop

0000062c <EnHeishi3_ResetAnimationToIdle>:
 62c:	27bdffd8 	addiu	sp,sp,-40
 630:	afa40028 	sw	a0,40(sp)
 634:	afbf0024 	sw	ra,36(sp)
 638:	3c040000 	lui	a0,0x0
 63c:	afa5002c 	sw	a1,44(sp)
 640:	0c000000 	jal	0 <EnHeishi3_Init>
 644:	24840000 	addiu	a0,a0,0
 648:	44822000 	mtc1	v0,$f4
 64c:	3c01c120 	lui	at,0xc120
 650:	44819000 	mtc1	at,$f18
 654:	468021a0 	cvt.s.w	$f6,$f4
 658:	8fa40028 	lw	a0,40(sp)
 65c:	3c050000 	lui	a1,0x0
 660:	24a50000 	addiu	a1,a1,0
 664:	3c063f80 	lui	a2,0x3f80
 668:	24070000 	li	a3,0
 66c:	4600320d 	trunc.w.s	$f8,$f6
 670:	afa00014 	sw	zero,20(sp)
 674:	e7b20018 	swc1	$f18,24(sp)
 678:	2484014c 	addiu	a0,a0,332
 67c:	440f4000 	mfc1	t7,$f8
 680:	00000000 	nop
 684:	000fc400 	sll	t8,t7,0x10
 688:	0018cc03 	sra	t9,t8,0x10
 68c:	44995000 	mtc1	t9,$f10
 690:	00000000 	nop
 694:	46805420 	cvt.s.w	$f16,$f10
 698:	0c000000 	jal	0 <EnHeishi3_Init>
 69c:	e7b00010 	swc1	$f16,16(sp)
 6a0:	8fa90028 	lw	t1,40(sp)
 6a4:	3c080000 	lui	t0,0x0
 6a8:	25080000 	addiu	t0,t0,0
 6ac:	ad28025c 	sw	t0,604(t1)
 6b0:	8fbf0024 	lw	ra,36(sp)
 6b4:	27bd0028 	addiu	sp,sp,40
 6b8:	03e00008 	jr	ra
 6bc:	00000000 	nop

000006c0 <func_80A55D00>:
 6c0:	27bdffe0 	addiu	sp,sp,-32
 6c4:	afbf001c 	sw	ra,28(sp)
 6c8:	afb00018 	sw	s0,24(sp)
 6cc:	afa40020 	sw	a0,32(sp)
 6d0:	00a08025 	move	s0,a1
 6d4:	0c000000 	jal	0 <EnHeishi3_Init>
 6d8:	2484014c 	addiu	a0,a0,332
 6dc:	0c000000 	jal	0 <EnHeishi3_Init>
 6e0:	260420d8 	addiu	a0,s0,8408
 6e4:	24010005 	li	at,5
 6e8:	5441001c 	bnel	v0,at,75c <func_80A55D00+0x9c>
 6ec:	8fbf001c 	lw	ra,28(sp)
 6f0:	0c000000 	jal	0 <EnHeishi3_Init>
 6f4:	02002025 	move	a0,s0
 6f8:	10400017 	beqz	v0,758 <func_80A55D00+0x98>
 6fc:	8fa40020 	lw	a0,32(sp)
 700:	908e0276 	lbu	t6,630(a0)
 704:	3c020000 	lui	v0,0x0
 708:	24420000 	addiu	v0,v0,0
 70c:	15c00012 	bnez	t6,758 <func_80A55D00+0x98>
 710:	2403002e 	li	v1,46
 714:	944f0edc 	lhu	t7,3804(v0)
 718:	3c010001 	lui	at,0x1
 71c:	00300821 	addu	at,at,s0
 720:	35f84000 	ori	t8,t7,0x4000
 724:	a4580edc 	sh	t8,3804(v0)
 728:	2419047e 	li	t9,1150
 72c:	a4391e1a 	sh	t9,7706(at)
 730:	3c010001 	lui	at,0x1
 734:	00300821 	addu	at,at,s0
 738:	24080014 	li	t0,20
 73c:	a0281e15 	sb	t0,7701(at)
 740:	24090001 	li	t1,1
 744:	3c010001 	lui	at,0x1
 748:	a0890276 	sb	t1,630(a0)
 74c:	00300821 	addu	at,at,s0
 750:	a0231e5e 	sb	v1,7774(at)
 754:	a043141d 	sb	v1,5149(v0)
 758:	8fbf001c 	lw	ra,28(sp)
 75c:	8fb00018 	lw	s0,24(sp)
 760:	27bd0020 	addiu	sp,sp,32
 764:	03e00008 	jr	ra
 768:	00000000 	nop

0000076c <EnHeishi3_Update>:
 76c:	27bdffc8 	addiu	sp,sp,-56
 770:	afbf0024 	sw	ra,36(sp)
 774:	afb00020 	sw	s0,32(sp)
 778:	afa5003c 	sw	a1,60(sp)
 77c:	00808025 	move	s0,a0
 780:	0c000000 	jal	0 <EnHeishi3_Init>
 784:	3c054270 	lui	a1,0x4270
 788:	860e0274 	lh	t6,628(s0)
 78c:	86020272 	lh	v0,626(s0)
 790:	25cf0001 	addiu	t7,t6,1
 794:	10400003 	beqz	v0,7a4 <EnHeishi3_Update+0x38>
 798:	a60f0274 	sh	t7,628(s0)
 79c:	2458ffff 	addiu	t8,v0,-1
 7a0:	a6180272 	sh	t8,626(s0)
 7a4:	8e19025c 	lw	t9,604(s0)
 7a8:	02002025 	move	a0,s0
 7ac:	8fa5003c 	lw	a1,60(sp)
 7b0:	0320f809 	jalr	t9
 7b4:	00000000 	nop
 7b8:	8a090030 	lwl	t1,48(s0)
 7bc:	9a090033 	lwr	t1,51(s0)
 7c0:	02002025 	move	a0,s0
 7c4:	aa0900b4 	swl	t1,180(s0)
 7c8:	ba0900b7 	swr	t1,183(s0)
 7cc:	96090034 	lhu	t1,52(s0)
 7d0:	0c000000 	jal	0 <EnHeishi3_Init>
 7d4:	a60900b8 	sh	t1,184(s0)
 7d8:	3c0141a0 	lui	at,0x41a0
 7dc:	44810000 	mtc1	at,$f0
 7e0:	3c014248 	lui	at,0x4248
 7e4:	44812000 	mtc1	at,$f4
 7e8:	240a001c 	li	t2,28
 7ec:	44060000 	mfc1	a2,$f0
 7f0:	44070000 	mfc1	a3,$f0
 7f4:	afaa0014 	sw	t2,20(sp)
 7f8:	8fa4003c 	lw	a0,60(sp)
 7fc:	02002825 	move	a1,s0
 800:	0c000000 	jal	0 <EnHeishi3_Init>
 804:	e7a40010 	swc1	$f4,16(sp)
 808:	2606027c 	addiu	a2,s0,636
 80c:	00c02825 	move	a1,a2
 810:	afa6002c 	sw	a2,44(sp)
 814:	0c000000 	jal	0 <EnHeishi3_Init>
 818:	02002025 	move	a0,s0
 81c:	8fa4003c 	lw	a0,60(sp)
 820:	3c010001 	lui	at,0x1
 824:	34211e60 	ori	at,at,0x1e60
 828:	8fa6002c 	lw	a2,44(sp)
 82c:	0c000000 	jal	0 <EnHeishi3_Init>
 830:	00812821 	addu	a1,a0,at
 834:	8fbf0024 	lw	ra,36(sp)
 838:	8fb00020 	lw	s0,32(sp)
 83c:	27bd0038 	addiu	sp,sp,56
 840:	03e00008 	jr	ra
 844:	00000000 	nop

00000848 <EnHeishi3_OverrideLimbDraw>:
 848:	24010009 	li	at,9
 84c:	afa40000 	sw	a0,0(sp)
 850:	afa60008 	sw	a2,8(sp)
 854:	14a10007 	bne	a1,at,874 <EnHeishi3_OverrideLimbDraw+0x2c>
 858:	afa7000c 	sw	a3,12(sp)
 85c:	8fa20014 	lw	v0,20(sp)
 860:	8fa30010 	lw	v1,16(sp)
 864:	844f026e 	lh	t7,622(v0)
 868:	846e0000 	lh	t6,0(v1)
 86c:	01cfc021 	addu	t8,t6,t7
 870:	a4780000 	sh	t8,0(v1)
 874:	24010010 	li	at,16
 878:	8fa20014 	lw	v0,20(sp)
 87c:	14a10009 	bne	a1,at,8a4 <EnHeishi3_OverrideLimbDraw+0x5c>
 880:	8fa30010 	lw	v1,16(sp)
 884:	84790000 	lh	t9,0(v1)
 888:	84480262 	lh	t0,610(v0)
 88c:	846a0004 	lh	t2,4(v1)
 890:	03284821 	addu	t1,t9,t0
 894:	a4690000 	sh	t1,0(v1)
 898:	844b0264 	lh	t3,612(v0)
 89c:	014b6021 	addu	t4,t2,t3
 8a0:	a46c0004 	sh	t4,4(v1)
 8a4:	03e00008 	jr	ra
 8a8:	00001025 	move	v0,zero

000008ac <EnHeishi3_Draw>:
 8ac:	27bdffe0 	addiu	sp,sp,-32
 8b0:	afbf001c 	sw	ra,28(sp)
 8b4:	afa40020 	sw	a0,32(sp)
 8b8:	afa50024 	sw	a1,36(sp)
 8bc:	0c000000 	jal	0 <EnHeishi3_Init>
 8c0:	8ca40000 	lw	a0,0(a1)
 8c4:	8fa20020 	lw	v0,32(sp)
 8c8:	3c070000 	lui	a3,0x0
 8cc:	24e70000 	addiu	a3,a3,0
 8d0:	8c450150 	lw	a1,336(v0)
 8d4:	8c46016c 	lw	a2,364(v0)
 8d8:	afa00010 	sw	zero,16(sp)
 8dc:	8fa40024 	lw	a0,36(sp)
 8e0:	0c000000 	jal	0 <EnHeishi3_Init>
 8e4:	afa20014 	sw	v0,20(sp)
 8e8:	8fbf001c 	lw	ra,28(sp)
 8ec:	27bd0020 	addiu	sp,sp,32
 8f0:	03e00008 	jr	ra
 8f4:	00000000 	nop
	...
