
build/src/overlays/actors/ovl_Magic_Wind/z_magic_wind.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <MagicWind_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850170 	sw	a1,368(a0)

00000008 <MagicWind_Init>:
   8:	27bdffc8 	addiu	sp,sp,-56
   c:	afb00020 	sw	s0,32(sp)
  10:	afbf0024 	sw	ra,36(sp)
  14:	afa5003c 	sw	a1,60(sp)
  18:	8caf1c44 	lw	t7,7236(a1)
  1c:	00808025 	move	s0,a0
  20:	00a02025 	move	a0,a1
  24:	2605014c 	addiu	a1,s0,332
  28:	3c060000 	lui	a2,0x0
  2c:	3c070000 	lui	a3,0x0
  30:	24e70000 	addiu	a3,a3,0
  34:	24c60000 	addiu	a2,a2,0
  38:	afa50028 	sw	a1,40(sp)
  3c:	0c000000 	jal	0 <MagicWind_SetupAction>
  40:	afaf0030 	sw	t7,48(sp)
  44:	14400003 	bnez	v0,54 <MagicWind_Init+0x4c>
  48:	3c040000 	lui	a0,0x0
  4c:	0c000000 	jal	0 <MagicWind_SetupAction>
  50:	24840000 	addiu	a0,a0,0
  54:	8602001c 	lh	v0,28(s0)
  58:	2418ffff 	li	t8,-1
  5c:	a2180003 	sb	t8,3(s0)
  60:	10400006 	beqz	v0,7c <MagicWind_Init+0x74>
  64:	3c014270 	lui	at,0x4270
  68:	24010001 	li	at,1
  6c:	10410017 	beq	v0,at,cc <MagicWind_Init+0xc4>
  70:	8fa40028 	lw	a0,40(sp)
  74:	10000032 	b	140 <MagicWind_Init+0x138>
  78:	8fbf0024 	lw	ra,36(sp)
  7c:	44810000 	mtc1	at,$f0
  80:	44801000 	mtc1	zero,$f2
  84:	3c013f80 	lui	at,0x3f80
  88:	44812000 	mtc1	at,$f4
  8c:	3c050000 	lui	a1,0x0
  90:	44070000 	mfc1	a3,$f0
  94:	44061000 	mfc1	a2,$f2
  98:	24a50000 	addiu	a1,a1,0
  9c:	8fa40028 	lw	a0,40(sp)
  a0:	e7a20010 	swc1	$f2,16(sp)
  a4:	0c000000 	jal	0 <MagicWind_SetupAction>
  a8:	e7a40014 	swc1	$f4,20(sp)
  ac:	2419001d 	li	t9,29
  b0:	3c050000 	lui	a1,0x0
  b4:	a619016c 	sh	t9,364(s0)
  b8:	24a50000 	addiu	a1,a1,0
  bc:	0c000000 	jal	0 <MagicWind_SetupAction>
  c0:	02002025 	move	a0,s0
  c4:	1000001e 	b	140 <MagicWind_Init+0x138>
  c8:	8fbf0024 	lw	ra,36(sp)
  cc:	3c014270 	lui	at,0x4270
  d0:	44810000 	mtc1	at,$f0
  d4:	44801000 	mtc1	zero,$f2
  d8:	3c01bf80 	lui	at,0xbf80
  dc:	44813000 	mtc1	at,$f6
  e0:	3c050000 	lui	a1,0x0
  e4:	44060000 	mfc1	a2,$f0
  e8:	44071000 	mfc1	a3,$f2
  ec:	24a50000 	addiu	a1,a1,0
  f0:	e7a00010 	swc1	$f0,16(sp)
  f4:	0c000000 	jal	0 <MagicWind_SetupAction>
  f8:	e7a60014 	swc1	$f6,20(sp)
  fc:	3c050000 	lui	a1,0x0
 100:	24a50000 	addiu	a1,a1,0
 104:	0c000000 	jal	0 <MagicWind_SetupAction>
 108:	02002025 	move	a0,s0
 10c:	3c040000 	lui	a0,0x0
 110:	2484002c 	addiu	a0,a0,44
 114:	0c000000 	jal	0 <MagicWind_SetupAction>
 118:	240501e6 	li	a1,486
 11c:	3c040000 	lui	a0,0x0
 120:	3c050000 	lui	a1,0x0
 124:	24a50054 	addiu	a1,a1,84
 128:	0c000000 	jal	0 <MagicWind_SetupAction>
 12c:	24840040 	addiu	a0,a0,64
 130:	8fa40030 	lw	a0,48(sp)
 134:	0c000000 	jal	0 <MagicWind_SetupAction>
 138:	2405087b 	li	a1,2171
 13c:	8fbf0024 	lw	ra,36(sp)
 140:	8fb00020 	lw	s0,32(sp)
 144:	27bd0038 	addiu	sp,sp,56
 148:	03e00008 	jr	ra
 14c:	00000000 	nop

00000150 <MagicWind_Destroy>:
 150:	27bdffe8 	addiu	sp,sp,-24
 154:	00803025 	move	a2,a0
 158:	afbf0014 	sw	ra,20(sp)
 15c:	afa5001c 	sw	a1,28(sp)
 160:	00a02025 	move	a0,a1
 164:	0c000000 	jal	0 <MagicWind_SetupAction>
 168:	24c5014c 	addiu	a1,a2,332
 16c:	0c000000 	jal	0 <MagicWind_SetupAction>
 170:	8fa4001c 	lw	a0,28(sp)
 174:	3c040000 	lui	a0,0x0
 178:	24840060 	addiu	a0,a0,96
 17c:	0c000000 	jal	0 <MagicWind_SetupAction>
 180:	240501f9 	li	a1,505
 184:	3c040000 	lui	a0,0x0
 188:	3c050000 	lui	a1,0x0
 18c:	24a50084 	addiu	a1,a1,132
 190:	0c000000 	jal	0 <MagicWind_SetupAction>
 194:	24840074 	addiu	a0,a0,116
 198:	8fbf0014 	lw	ra,20(sp)
 19c:	27bd0018 	addiu	sp,sp,24
 1a0:	03e00008 	jr	ra
 1a4:	00000000 	nop

000001a8 <MagicWind_UpdateAlpha>:
 1a8:	3c01437f 	lui	at,0x437f
 1ac:	44812000 	mtc1	at,$f4
 1b0:	24040001 	li	a0,1
 1b4:	3c050000 	lui	a1,0x0
 1b8:	46046182 	mul.s	$f6,$f12,$f4
 1bc:	24a50000 	addiu	a1,a1,0
 1c0:	3c014f00 	lui	at,0x4f00
 1c4:	3c0f0000 	lui	t7,0x0
 1c8:	3c080000 	lui	t0,0x0
 1cc:	3c030000 	lui	v1,0x0
 1d0:	444ef800 	cfc1	t6,$31
 1d4:	44c4f800 	ctc1	a0,$31
 1d8:	00000000 	nop
 1dc:	46003224 	cvt.w.s	$f8,$f6
 1e0:	4444f800 	cfc1	a0,$31
 1e4:	00000000 	nop
 1e8:	30840078 	andi	a0,a0,0x78
 1ec:	50800013 	beqzl	a0,23c <MagicWind_UpdateAlpha+0x94>
 1f0:	44044000 	mfc1	a0,$f8
 1f4:	44814000 	mtc1	at,$f8
 1f8:	24040001 	li	a0,1
 1fc:	46083201 	sub.s	$f8,$f6,$f8
 200:	44c4f800 	ctc1	a0,$31
 204:	00000000 	nop
 208:	46004224 	cvt.w.s	$f8,$f8
 20c:	4444f800 	cfc1	a0,$31
 210:	00000000 	nop
 214:	30840078 	andi	a0,a0,0x78
 218:	14800005 	bnez	a0,230 <MagicWind_UpdateAlpha+0x88>
 21c:	00000000 	nop
 220:	44044000 	mfc1	a0,$f8
 224:	3c018000 	lui	at,0x8000
 228:	10000007 	b	248 <MagicWind_UpdateAlpha+0xa0>
 22c:	00812025 	or	a0,a0,at
 230:	10000005 	b	248 <MagicWind_UpdateAlpha+0xa0>
 234:	2404ffff 	li	a0,-1
 238:	44044000 	mfc1	a0,$f8
 23c:	00000000 	nop
 240:	0480fffb 	bltz	a0,230 <MagicWind_UpdateAlpha+0x88>
 244:	00000000 	nop
 248:	91ef0000 	lbu	t7,0(t7)
 24c:	44cef800 	ctc1	t6,$31
 250:	3c020000 	lui	v0,0x0
 254:	000fc100 	sll	t8,t7,0x4
 258:	00b8c821 	addu	t9,a1,t8
 25c:	a324000f 	sb	a0,15(t9)
 260:	91080001 	lbu	t0,1(t0)
 264:	24420012 	addiu	v0,v0,18
 268:	24630002 	addiu	v1,v1,2
 26c:	00084900 	sll	t1,t0,0x4
 270:	00a95021 	addu	t2,a1,t1
 274:	a144000f 	sb	a0,15(t2)
 278:	906b0000 	lbu	t3,0(v1)
 27c:	24630004 	addiu	v1,v1,4
 280:	000b6100 	sll	t4,t3,0x4
 284:	00ac6821 	addu	t5,a1,t4
 288:	a1a4000f 	sb	a0,15(t5)
 28c:	906efffd 	lbu	t6,-3(v1)
 290:	000e7900 	sll	t7,t6,0x4
 294:	00afc021 	addu	t8,a1,t7
 298:	a304000f 	sb	a0,15(t8)
 29c:	9079fffe 	lbu	t9,-2(v1)
 2a0:	00194100 	sll	t0,t9,0x4
 2a4:	00a84821 	addu	t1,a1,t0
 2a8:	a124000f 	sb	a0,15(t1)
 2ac:	906affff 	lbu	t2,-1(v1)
 2b0:	000a5900 	sll	t3,t2,0x4
 2b4:	00ab6021 	addu	t4,a1,t3
 2b8:	1462ffef 	bne	v1,v0,278 <MagicWind_UpdateAlpha+0xd0>
 2bc:	a184000f 	sb	a0,15(t4)
 2c0:	03e00008 	jr	ra
 2c4:	00000000 	nop

000002c8 <MagicWind_WaitForTimer>:
 2c8:	27bdffe0 	addiu	sp,sp,-32
 2cc:	afbf0014 	sw	ra,20(sp)
 2d0:	afa50024 	sw	a1,36(sp)
 2d4:	8caf1c44 	lw	t7,7236(a1)
 2d8:	00803025 	move	a2,a0
 2dc:	2405021b 	li	a1,539
 2e0:	afaf001c 	sw	t7,28(sp)
 2e4:	8482016c 	lh	v0,364(a0)
 2e8:	18400003 	blez	v0,2f8 <MagicWind_WaitForTimer+0x30>
 2ec:	2458ffff 	addiu	t8,v0,-1
 2f0:	10000019 	b	358 <MagicWind_WaitForTimer+0x90>
 2f4:	a498016c 	sh	t8,364(a0)
 2f8:	3c040000 	lui	a0,0x0
 2fc:	2484008c 	addiu	a0,a0,140
 300:	0c000000 	jal	0 <MagicWind_SetupAction>
 304:	afa60020 	sw	a2,32(sp)
 308:	3c040000 	lui	a0,0x0
 30c:	3c050000 	lui	a1,0x0
 310:	24a500b4 	addiu	a1,a1,180
 314:	0c000000 	jal	0 <MagicWind_SetupAction>
 318:	248400a0 	addiu	a0,a0,160
 31c:	8fa4001c 	lw	a0,28(sp)
 320:	0c000000 	jal	0 <MagicWind_SetupAction>
 324:	2405087a 	li	a1,2170
 328:	3c013f80 	lui	at,0x3f80
 32c:	44816000 	mtc1	at,$f12
 330:	0c000000 	jal	0 <MagicWind_SetupAction>
 334:	00000000 	nop
 338:	3c050000 	lui	a1,0x0
 33c:	24a50000 	addiu	a1,a1,0
 340:	0c000000 	jal	0 <MagicWind_SetupAction>
 344:	8fa40020 	lw	a0,32(sp)
 348:	8fa50020 	lw	a1,32(sp)
 34c:	8fa40024 	lw	a0,36(sp)
 350:	0c000000 	jal	0 <MagicWind_SetupAction>
 354:	24a5014c 	addiu	a1,a1,332
 358:	8fbf0014 	lw	ra,20(sp)
 35c:	27bd0020 	addiu	sp,sp,32
 360:	03e00008 	jr	ra
 364:	00000000 	nop

00000368 <MagicWind_Grow>:
 368:	27bdffe8 	addiu	sp,sp,-24
 36c:	afa40018 	sw	a0,24(sp)
 370:	00a02025 	move	a0,a1
 374:	8fa50018 	lw	a1,24(sp)
 378:	afbf0014 	sw	ra,20(sp)
 37c:	0c000000 	jal	0 <MagicWind_SetupAction>
 380:	24a5014c 	addiu	a1,a1,332
 384:	10400007 	beqz	v0,3a4 <MagicWind_Grow+0x3c>
 388:	8fa40018 	lw	a0,24(sp)
 38c:	3c050000 	lui	a1,0x0
 390:	0c000000 	jal	0 <MagicWind_SetupAction>
 394:	24a50000 	addiu	a1,a1,0
 398:	8faf0018 	lw	t7,24(sp)
 39c:	240e0032 	li	t6,50
 3a0:	a5ee016c 	sh	t6,364(t7)
 3a4:	8fbf0014 	lw	ra,20(sp)
 3a8:	27bd0018 	addiu	sp,sp,24
 3ac:	03e00008 	jr	ra
 3b0:	00000000 	nop

000003b4 <MagicWind_WaitAtFullSize>:
 3b4:	27bdffe8 	addiu	sp,sp,-24
 3b8:	afbf0014 	sw	ra,20(sp)
 3bc:	afa5001c 	sw	a1,28(sp)
 3c0:	8482016c 	lh	v0,364(a0)
 3c4:	3c050000 	lui	a1,0x0
 3c8:	24a50000 	addiu	a1,a1,0
 3cc:	18400003 	blez	v0,3dc <MagicWind_WaitAtFullSize+0x28>
 3d0:	244effff 	addiu	t6,v0,-1
 3d4:	10000006 	b	3f0 <MagicWind_WaitAtFullSize+0x3c>
 3d8:	a48e016c 	sh	t6,364(a0)
 3dc:	0c000000 	jal	0 <MagicWind_SetupAction>
 3e0:	afa40018 	sw	a0,24(sp)
 3e4:	8fa40018 	lw	a0,24(sp)
 3e8:	240f001e 	li	t7,30
 3ec:	a48f016c 	sh	t7,364(a0)
 3f0:	8fbf0014 	lw	ra,20(sp)
 3f4:	27bd0018 	addiu	sp,sp,24
 3f8:	03e00008 	jr	ra
 3fc:	00000000 	nop

00000400 <MagicWind_FadeOut>:
 400:	27bdffe8 	addiu	sp,sp,-24
 404:	afbf0014 	sw	ra,20(sp)
 408:	afa5001c 	sw	a1,28(sp)
 40c:	8482016c 	lh	v0,364(a0)
 410:	1840000e 	blez	v0,44c <MagicWind_FadeOut+0x4c>
 414:	00000000 	nop
 418:	44822000 	mtc1	v0,$f4
 41c:	3c010000 	lui	at,0x0
 420:	c4280110 	lwc1	$f8,272(at)
 424:	468021a0 	cvt.s.w	$f6,$f4
 428:	afa40018 	sw	a0,24(sp)
 42c:	46083302 	mul.s	$f12,$f6,$f8
 430:	0c000000 	jal	0 <MagicWind_SetupAction>
 434:	00000000 	nop
 438:	8fa40018 	lw	a0,24(sp)
 43c:	848e016c 	lh	t6,364(a0)
 440:	25cfffff 	addiu	t7,t6,-1
 444:	10000003 	b	454 <MagicWind_FadeOut+0x54>
 448:	a48f016c 	sh	t7,364(a0)
 44c:	0c000000 	jal	0 <MagicWind_SetupAction>
 450:	00000000 	nop
 454:	8fbf0014 	lw	ra,20(sp)
 458:	27bd0018 	addiu	sp,sp,24
 45c:	03e00008 	jr	ra
 460:	00000000 	nop

00000464 <MagicWind_Shrink>:
 464:	27bdffe8 	addiu	sp,sp,-24
 468:	afa40018 	sw	a0,24(sp)
 46c:	00a02025 	move	a0,a1
 470:	8fa50018 	lw	a1,24(sp)
 474:	afbf0014 	sw	ra,20(sp)
 478:	0c000000 	jal	0 <MagicWind_SetupAction>
 47c:	24a5014c 	addiu	a1,a1,332
 480:	50400004 	beqzl	v0,494 <MagicWind_Shrink+0x30>
 484:	8fbf0014 	lw	ra,20(sp)
 488:	0c000000 	jal	0 <MagicWind_SetupAction>
 48c:	8fa40018 	lw	a0,24(sp)
 490:	8fbf0014 	lw	ra,20(sp)
 494:	27bd0018 	addiu	sp,sp,24
 498:	03e00008 	jr	ra
 49c:	00000000 	nop

000004a0 <MagicWind_Update>:
 4a0:	27bdffe8 	addiu	sp,sp,-24
 4a4:	3c020001 	lui	v0,0x1
 4a8:	afbf0014 	sw	ra,20(sp)
 4ac:	00451021 	addu	v0,v0,a1
 4b0:	904203dc 	lbu	v0,988(v0)
 4b4:	2401000d 	li	at,13
 4b8:	10410003 	beq	v0,at,4c8 <MagicWind_Update+0x28>
 4bc:	24010011 	li	at,17
 4c0:	54410006 	bnel	v0,at,4dc <MagicWind_Update+0x3c>
 4c4:	8c990170 	lw	t9,368(a0)
 4c8:	0c000000 	jal	0 <MagicWind_SetupAction>
 4cc:	00000000 	nop
 4d0:	10000005 	b	4e8 <MagicWind_Update+0x48>
 4d4:	8fbf0014 	lw	ra,20(sp)
 4d8:	8c990170 	lw	t9,368(a0)
 4dc:	0320f809 	jalr	t9
 4e0:	00000000 	nop
 4e4:	8fbf0014 	lw	ra,20(sp)
 4e8:	27bd0018 	addiu	sp,sp,24
 4ec:	03e00008 	jr	ra
 4f0:	00000000 	nop

000004f4 <MagicWind_OverrideLimbDraw>:
 4f4:	27bdff98 	addiu	sp,sp,-104
 4f8:	afbf003c 	sw	ra,60(sp)
 4fc:	afb00038 	sw	s0,56(sp)
 500:	afa5006c 	sw	a1,108(sp)
 504:	afa60070 	sw	a2,112(sp)
 508:	afa70074 	sw	a3,116(sp)
 50c:	8c850000 	lw	a1,0(a0)
 510:	00808025 	move	s0,a0
 514:	3c060000 	lui	a2,0x0
 518:	24c600c0 	addiu	a2,a2,192
 51c:	27a40050 	addiu	a0,sp,80
 520:	24070267 	li	a3,615
 524:	0c000000 	jal	0 <MagicWind_SetupAction>
 528:	afa50060 	sw	a1,96(sp)
 52c:	8fa20070 	lw	v0,112(sp)
 530:	24010001 	li	at,1
 534:	8fa90060 	lw	t1,96(sp)
 538:	14410025 	bne	v0,at,5d0 <MagicWind_OverrideLimbDraw+0xdc>
 53c:	240b00ff 	li	t3,255
 540:	8d2302d0 	lw	v1,720(t1)
 544:	3c0fdb06 	lui	t7,0xdb06
 548:	35ef0020 	ori	t7,t7,0x20
 54c:	246e0008 	addiu	t6,v1,8
 550:	ad2e02d0 	sw	t6,720(t1)
 554:	ac6f0000 	sw	t7,0(v1)
 558:	8e02009c 	lw	v0,156(s0)
 55c:	8e040000 	lw	a0,0(s0)
 560:	24180040 	li	t8,64
 564:	00026900 	sll	t5,v0,0x4
 568:	01a26823 	subu	t5,t5,v0
 56c:	000d6840 	sll	t5,t5,0x1
 570:	00024100 	sll	t0,v0,0x4
 574:	31ae00ff 	andi	t6,t5,0xff
 578:	01024023 	subu	t0,t0,v0
 57c:	000230c0 	sll	a2,v0,0x3
 580:	310800ff 	andi	t0,t0,0xff
 584:	016e7823 	subu	t7,t3,t6
 588:	24190040 	li	t9,64
 58c:	240c0001 	li	t4,1
 590:	00c23021 	addu	a2,a2,v0
 594:	30c600ff 	andi	a2,a2,0xff
 598:	afac0018 	sw	t4,24(sp)
 59c:	afb90014 	sw	t9,20(sp)
 5a0:	afb90028 	sw	t9,40(sp)
 5a4:	afaf0020 	sw	t7,32(sp)
 5a8:	01683823 	subu	a3,t3,t0
 5ac:	afa8001c 	sw	t0,28(sp)
 5b0:	afb80010 	sw	t8,16(sp)
 5b4:	afb80024 	sw	t8,36(sp)
 5b8:	00002825 	move	a1,zero
 5bc:	0c000000 	jal	0 <MagicWind_SetupAction>
 5c0:	afa3004c 	sw	v1,76(sp)
 5c4:	8faa004c 	lw	t2,76(sp)
 5c8:	1000002d 	b	680 <MagicWind_OverrideLimbDraw+0x18c>
 5cc:	ad420004 	sw	v0,4(t2)
 5d0:	24010002 	li	at,2
 5d4:	1441002a 	bne	v0,at,680 <MagicWind_OverrideLimbDraw+0x18c>
 5d8:	240b00ff 	li	t3,255
 5dc:	8d2302d0 	lw	v1,720(t1)
 5e0:	3c0ddb06 	lui	t5,0xdb06
 5e4:	35ad0024 	ori	t5,t5,0x24
 5e8:	246c0008 	addiu	t4,v1,8
 5ec:	ad2c02d0 	sw	t4,720(t1)
 5f0:	ac6d0000 	sw	t5,0(v1)
 5f4:	8e02009c 	lw	v0,156(s0)
 5f8:	8e040000 	lw	a0,0(s0)
 5fc:	24180040 	li	t8,64
 600:	00027080 	sll	t6,v0,0x2
 604:	01c27021 	addu	t6,t6,v0
 608:	31cf00ff 	andi	t7,t6,0xff
 60c:	016f3823 	subu	a3,t3,t7
 610:	00027880 	sll	t7,v0,0x2
 614:	00026880 	sll	t5,v0,0x2
 618:	01a26823 	subu	t5,t5,v0
 61c:	01e27821 	addu	t7,t7,v0
 620:	000f7840 	sll	t7,t7,0x1
 624:	000d6840 	sll	t5,t5,0x1
 628:	afb80010 	sw	t8,16(sp)
 62c:	240c0001 	li	t4,1
 630:	24190040 	li	t9,64
 634:	afb90014 	sw	t9,20(sp)
 638:	afac0018 	sw	t4,24(sp)
 63c:	31f800ff 	andi	t8,t7,0xff
 640:	31ae00ff 	andi	t6,t5,0xff
 644:	00023080 	sll	a2,v0,0x2
 648:	240d0040 	li	t5,64
 64c:	0178c823 	subu	t9,t3,t8
 650:	240c0040 	li	t4,64
 654:	00c23023 	subu	a2,a2,v0
 658:	30c600ff 	andi	a2,a2,0xff
 65c:	afac0024 	sw	t4,36(sp)
 660:	afb90020 	sw	t9,32(sp)
 664:	afad0028 	sw	t5,40(sp)
 668:	afae001c 	sw	t6,28(sp)
 66c:	00002825 	move	a1,zero
 670:	0c000000 	jal	0 <MagicWind_SetupAction>
 674:	afa30048 	sw	v1,72(sp)
 678:	8fa80048 	lw	t0,72(sp)
 67c:	ad020004 	sw	v0,4(t0)
 680:	3c060000 	lui	a2,0x0
 684:	24c600d4 	addiu	a2,a2,212
 688:	27a40050 	addiu	a0,sp,80
 68c:	8e050000 	lw	a1,0(s0)
 690:	0c000000 	jal	0 <MagicWind_SetupAction>
 694:	24070286 	li	a3,646
 698:	8fbf003c 	lw	ra,60(sp)
 69c:	8fb00038 	lw	s0,56(sp)
 6a0:	27bd0068 	addiu	sp,sp,104
 6a4:	03e00008 	jr	ra
 6a8:	24020001 	li	v0,1

000006ac <MagicWind_Draw>:
 6ac:	27bdffb0 	addiu	sp,sp,-80
 6b0:	afbf002c 	sw	ra,44(sp)
 6b4:	afb00028 	sw	s0,40(sp)
 6b8:	afa40050 	sw	a0,80(sp)
 6bc:	afa50054 	sw	a1,84(sp)
 6c0:	8cb00000 	lw	s0,0(a1)
 6c4:	3c060000 	lui	a2,0x0
 6c8:	24c600e8 	addiu	a2,a2,232
 6cc:	27a40034 	addiu	a0,sp,52
 6d0:	24070295 	li	a3,661
 6d4:	0c000000 	jal	0 <MagicWind_SetupAction>
 6d8:	02002825 	move	a1,s0
 6dc:	8fb80050 	lw	t8,80(sp)
 6e0:	3c0f0000 	lui	t7,0x0
 6e4:	25ef0000 	addiu	t7,t7,0
 6e8:	8f190170 	lw	t9,368(t8)
 6ec:	24050019 	li	a1,25
 6f0:	11f9000e 	beq	t7,t9,72c <MagicWind_Draw+0x80>
 6f4:	00000000 	nop
 6f8:	0c000000 	jal	0 <MagicWind_SetupAction>
 6fc:	8e0402d0 	lw	a0,720(s0)
 700:	8fa40050 	lw	a0,80(sp)
 704:	ae0202d0 	sw	v0,720(s0)
 708:	3c070000 	lui	a3,0x0
 70c:	24080001 	li	t0,1
 710:	afa80014 	sw	t0,20(sp)
 714:	24e70000 	addiu	a3,a3,0
 718:	afa00018 	sw	zero,24(sp)
 71c:	afa00010 	sw	zero,16(sp)
 720:	8fa50054 	lw	a1,84(sp)
 724:	0c000000 	jal	0 <MagicWind_SetupAction>
 728:	2486014c 	addiu	a2,a0,332
 72c:	3c060000 	lui	a2,0x0
 730:	24c600fc 	addiu	a2,a2,252
 734:	27a40034 	addiu	a0,sp,52
 738:	02002825 	move	a1,s0
 73c:	0c000000 	jal	0 <MagicWind_SetupAction>
 740:	240702a1 	li	a3,673
 744:	8fbf002c 	lw	ra,44(sp)
 748:	8fb00028 	lw	s0,40(sp)
 74c:	27bd0050 	addiu	sp,sp,80
 750:	03e00008 	jr	ra
 754:	00000000 	nop
	...
