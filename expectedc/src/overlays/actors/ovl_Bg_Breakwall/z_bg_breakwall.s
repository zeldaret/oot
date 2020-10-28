
build/src/overlays/actors/ovl_Bg_Breakwall/z_bg_breakwall.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgBreakwall_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac8501ec 	sw	a1,492(a0)

00000008 <BgBreakwall_Init>:
   8:	27bdffc8 	addiu	sp,sp,-56
   c:	afbf001c 	sw	ra,28(sp)
  10:	afb00018 	sw	s0,24(sp)
  14:	afa5003c 	sw	a1,60(sp)
  18:	848e001c 	lh	t6,28(a0)
  1c:	3c050000 	lui	a1,0x0
  20:	00808025 	move	s0,a0
  24:	000ec343 	sra	t8,t6,0xd
  28:	33190003 	andi	t9,t8,0x3
  2c:	afb9002c 	sw	t9,44(sp)
  30:	0c000000 	jal	0 <BgBreakwall_SetupAction>
  34:	24a50000 	addiu	a1,a1,0
  38:	02002025 	move	a0,s0
  3c:	0c000000 	jal	0 <BgBreakwall_SetupAction>
  40:	00002825 	move	a1,zero
  44:	8fa8002c 	lw	t0,44(sp)
  48:	3c0a0000 	lui	t2,0x0
  4c:	254a0000 	addiu	t2,t2,0
  50:	00084880 	sll	t1,t0,0x2
  54:	01284823 	subu	t1,t1,t0
  58:	00094880 	sll	t1,t1,0x2
  5c:	012a1021 	addu	v0,t1,t2
  60:	8c4b0004 	lw	t3,4(v0)
  64:	24010001 	li	at,1
  68:	240e4000 	li	t6,16384
  6c:	ae0b0164 	sw	t3,356(s0)
  70:	804c0008 	lb	t4,8(v0)
  74:	a20c0168 	sb	t4,360(s0)
  78:	820d0168 	lb	t5,360(s0)
  7c:	55a10003 	bnel	t5,at,8c <BgBreakwall_Init+0x84>
  80:	8e0f0164 	lw	t7,356(s0)
  84:	a60e0030 	sh	t6,48(s0)
  88:	8e0f0164 	lw	t7,356(s0)
  8c:	8fa4003c 	lw	a0,60(sp)
  90:	3c014220 	lui	at,0x4220
  94:	51e0001f 	beqzl	t7,114 <BgBreakwall_Init+0x10c>
  98:	c6040028 	lwc1	$f4,40(s0)
  9c:	8605001c 	lh	a1,28(s0)
  a0:	afa20028 	sw	v0,40(sp)
  a4:	0c000000 	jal	0 <BgBreakwall_SetupAction>
  a8:	30a5003f 	andi	a1,a1,0x3f
  ac:	50400006 	beqzl	v0,c8 <BgBreakwall_Init+0xc0>
  b0:	44800000 	mtc1	zero,$f0
  b4:	0c000000 	jal	0 <BgBreakwall_SetupAction>
  b8:	02002025 	move	a0,s0
  bc:	10000038 	b	1a0 <BgBreakwall_Init+0x198>
  c0:	8fbf001c 	lw	ra,28(sp)
  c4:	44800000 	mtc1	zero,$f0
  c8:	260400b4 	addiu	a0,s0,180
  cc:	00003025 	move	a2,zero
  d0:	44050000 	mfc1	a1,$f0
  d4:	44070000 	mfc1	a3,$f0
  d8:	0c000000 	jal	0 <BgBreakwall_SetupAction>
  dc:	00000000 	nop
  e0:	2605016c 	addiu	a1,s0,364
  e4:	afa50024 	sw	a1,36(sp)
  e8:	0c000000 	jal	0 <BgBreakwall_SetupAction>
  ec:	8fa4003c 	lw	a0,60(sp)
  f0:	3c070000 	lui	a3,0x0
  f4:	8fa50024 	lw	a1,36(sp)
  f8:	24e70000 	addiu	a3,a3,0
  fc:	8fa4003c 	lw	a0,60(sp)
 100:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 104:	02003025 	move	a2,s0
 108:	10000006 	b	124 <BgBreakwall_Init+0x11c>
 10c:	8fa20028 	lw	v0,40(sp)
 110:	c6040028 	lwc1	$f4,40(s0)
 114:	44813000 	mtc1	at,$f6
 118:	00000000 	nop
 11c:	46062201 	sub.s	$f8,$f4,$f6
 120:	e6080028 	swc1	$f8,40(s0)
 124:	3c180000 	lui	t8,0x0
 128:	27180000 	addiu	t8,t8,0
 12c:	0058082b 	sltu	at,v0,t8
 130:	14200009 	bnez	at,158 <BgBreakwall_Init+0x150>
 134:	8fa4003c 	lw	a0,60(sp)
 138:	8fa4003c 	lw	a0,60(sp)
 13c:	3c010001 	lui	at,0x1
 140:	342117a4 	ori	at,at,0x17a4
 144:	24050019 	li	a1,25
 148:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 14c:	00812021 	addu	a0,a0,at
 150:	10000007 	b	170 <BgBreakwall_Init+0x168>
 154:	a2020169 	sb	v0,361(s0)
 158:	3c010001 	lui	at,0x1
 15c:	342117a4 	ori	at,at,0x17a4
 160:	00812021 	addu	a0,a0,at
 164:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 168:	2405018a 	li	a1,394
 16c:	a2020169 	sb	v0,361(s0)
 170:	82190169 	lb	t9,361(s0)
 174:	02002025 	move	a0,s0
 178:	3c050000 	lui	a1,0x0
 17c:	07210005 	bgez	t9,194 <BgBreakwall_Init+0x18c>
 180:	00000000 	nop
 184:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 188:	02002025 	move	a0,s0
 18c:	10000004 	b	1a0 <BgBreakwall_Init+0x198>
 190:	8fbf001c 	lw	ra,28(sp)
 194:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 198:	24a50000 	addiu	a1,a1,0
 19c:	8fbf001c 	lw	ra,28(sp)
 1a0:	8fb00018 	lw	s0,24(sp)
 1a4:	27bd0038 	addiu	sp,sp,56
 1a8:	03e00008 	jr	ra
 1ac:	00000000 	nop

000001b0 <BgBreakwall_Destroy>:
 1b0:	27bdffe8 	addiu	sp,sp,-24
 1b4:	afa40018 	sw	a0,24(sp)
 1b8:	8fae0018 	lw	t6,24(sp)
 1bc:	afbf0014 	sw	ra,20(sp)
 1c0:	00a02025 	move	a0,a1
 1c4:	24a50810 	addiu	a1,a1,2064
 1c8:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 1cc:	8dc6014c 	lw	a2,332(t6)
 1d0:	8fbf0014 	lw	ra,20(sp)
 1d4:	27bd0018 	addiu	sp,sp,24
 1d8:	03e00008 	jr	ra
 1dc:	00000000 	nop

000001e0 <func_8086FDC0>:
 1e0:	27bdfe08 	addiu	sp,sp,-504
 1e4:	3c0f0000 	lui	t7,0x0
 1e8:	afbf0084 	sw	ra,132(sp)
 1ec:	afbe0080 	sw	s8,128(sp)
 1f0:	afb7007c 	sw	s7,124(sp)
 1f4:	afb60078 	sw	s6,120(sp)
 1f8:	afb50074 	sw	s5,116(sp)
 1fc:	afb40070 	sw	s4,112(sp)
 200:	afb3006c 	sw	s3,108(sp)
 204:	afb20068 	sw	s2,104(sp)
 208:	afb10064 	sw	s1,100(sp)
 20c:	afb00060 	sw	s0,96(sp)
 210:	f7be0058 	sdc1	$f30,88(sp)
 214:	f7bc0050 	sdc1	$f28,80(sp)
 218:	f7ba0048 	sdc1	$f26,72(sp)
 21c:	f7b80040 	sdc1	$f24,64(sp)
 220:	f7b60038 	sdc1	$f22,56(sp)
 224:	f7b40030 	sdc1	$f20,48(sp)
 228:	afa60200 	sw	a2,512(sp)
 22c:	afa70204 	sw	a3,516(sp)
 230:	a7a001d8 	sh	zero,472(sp)
 234:	25ef0000 	addiu	t7,t7,0
 238:	8df90000 	lw	t9,0(t7)
 23c:	27ae01cc 	addiu	t6,sp,460
 240:	8df80004 	lw	t8,4(t7)
 244:	add90000 	sw	t9,0(t6)
 248:	8df90008 	lw	t9,8(t7)
 24c:	3c090000 	lui	t1,0x0
 250:	25290000 	addiu	t1,t1,0
 254:	add80004 	sw	t8,4(t6)
 258:	add90008 	sw	t9,8(t6)
 25c:	8d2a0004 	lw	t2,4(t1)
 260:	8d2b0000 	lw	t3,0(t1)
 264:	27a801b4 	addiu	t0,sp,436
 268:	ad0a0004 	sw	t2,4(t0)
 26c:	ad0b0000 	sw	t3,0(t0)
 270:	8d2b0008 	lw	t3,8(t1)
 274:	8d2a000c 	lw	t2,12(t1)
 278:	3c0d0000 	lui	t5,0x0
 27c:	ad0b0008 	sw	t3,8(t0)
 280:	ad0a000c 	sw	t2,12(t0)
 284:	8d2a0014 	lw	t2,20(t1)
 288:	8d2b0010 	lw	t3,16(t1)
 28c:	25ad0000 	addiu	t5,t5,0
 290:	0080b825 	move	s7,a0
 294:	25b80030 	addiu	t8,t5,48
 298:	27ac0184 	addiu	t4,sp,388
 29c:	ad0a0014 	sw	t2,20(t0)
 2a0:	ad0b0010 	sw	t3,16(t0)
 2a4:	8daf0000 	lw	t7,0(t5)
 2a8:	25ad000c 	addiu	t5,t5,12
 2ac:	258c000c 	addiu	t4,t4,12
 2b0:	ad8ffff4 	sw	t7,-12(t4)
 2b4:	8daefff8 	lw	t6,-8(t5)
 2b8:	ad8efff8 	sw	t6,-8(t4)
 2bc:	8daffffc 	lw	t7,-4(t5)
 2c0:	15b8fff8 	bne	t5,t8,2a4 <func_8086FDC0+0xc4>
 2c4:	ad8ffffc 	sw	t7,-4(t4)
 2c8:	3c080000 	lui	t0,0x0
 2cc:	25080000 	addiu	t0,t0,0
 2d0:	250b00c0 	addiu	t3,t0,192
 2d4:	27b900c4 	addiu	t9,sp,196
 2d8:	8d0a0000 	lw	t2,0(t0)
 2dc:	2508000c 	addiu	t0,t0,12
 2e0:	2739000c 	addiu	t9,t9,12
 2e4:	af2afff4 	sw	t2,-12(t9)
 2e8:	8d09fff8 	lw	t1,-8(t0)
 2ec:	af29fff8 	sw	t1,-8(t9)
 2f0:	8d0afffc 	lw	t2,-4(t0)
 2f4:	150bfff8 	bne	t0,t3,2d8 <func_8086FDC0+0xf8>
 2f8:	af2afffc 	sw	t2,-4(t9)
 2fc:	27a20184 	addiu	v0,sp,388
 300:	00402025 	move	a0,v0
 304:	27b201a8 	addiu	s2,sp,424
 308:	c7a20208 	lwc1	$f2,520(sp)
 30c:	c7a0020c 	lwc1	$f0,524(sp)
 310:	27a301a8 	addiu	v1,sp,424
 314:	52420004 	beql	s2,v0,328 <func_8086FDC0+0x148>
 318:	c6440000 	lwc1	$f4,0(s2)
 31c:	5643000e 	bnel	s2,v1,358 <func_8086FDC0+0x178>
 320:	c6440000 	lwc1	$f4,0(s2)
 324:	c6440000 	lwc1	$f4,0(s2)
 328:	c6480004 	lwc1	$f8,4(s2)
 32c:	c6500008 	lwc1	$f16,8(s2)
 330:	46002182 	mul.s	$f6,$f4,$f0
 334:	00000000 	nop
 338:	46024282 	mul.s	$f10,$f8,$f2
 33c:	00000000 	nop
 340:	46028482 	mul.s	$f18,$f16,$f2
 344:	e6460000 	swc1	$f6,0(s2)
 348:	e64a0004 	swc1	$f10,4(s2)
 34c:	1000000c 	b	380 <func_8086FDC0+0x1a0>
 350:	e6520008 	swc1	$f18,8(s2)
 354:	c6440000 	lwc1	$f4,0(s2)
 358:	c6480004 	lwc1	$f8,4(s2)
 35c:	c6500008 	lwc1	$f16,8(s2)
 360:	46022182 	mul.s	$f6,$f4,$f2
 364:	00000000 	nop
 368:	46004282 	mul.s	$f10,$f8,$f0
 36c:	00000000 	nop
 370:	46008482 	mul.s	$f18,$f16,$f0
 374:	e6460000 	swc1	$f6,0(s2)
 378:	e64a0004 	swc1	$f10,4(s2)
 37c:	e6520008 	swc1	$f18,8(s2)
 380:	2652fff4 	addiu	s2,s2,-12
 384:	0244082b 	sltu	at,s2,a0
 388:	1020ffe2 	beqz	at,314 <func_8086FDC0+0x134>
 38c:	00000000 	nop
 390:	8fad0210 	lw	t5,528(sp)
 394:	afa001dc 	sw	zero,476(sp)
 398:	26ec1c24 	addiu	t4,s7,7204
 39c:	19a000b1 	blez	t5,664 <func_8086FDC0+0x484>
 3a0:	3c010000 	lui	at,0x0
 3a4:	c43c0000 	lwc1	$f28,0(at)
 3a8:	3c010000 	lui	at,0x0
 3ac:	c43a0000 	lwc1	$f26,0(at)
 3b0:	3c0141a0 	lui	at,0x41a0
 3b4:	4481c000 	mtc1	at,$f24
 3b8:	afac009c 	sw	t4,156(sp)
 3bc:	afa501fc 	sw	a1,508(sp)
 3c0:	c7be0214 	lwc1	$f30,532(sp)
 3c4:	27b501e8 	addiu	s5,sp,488
 3c8:	8fa501fc 	lw	a1,508(sp)
 3cc:	00003825 	move	a3,zero
 3d0:	84a20032 	lh	v0,50(a1)
 3d4:	04400003 	bltz	v0,3e4 <func_8086FDC0+0x204>
 3d8:	00028023 	negu	s0,v0
 3dc:	10000001 	b	3e4 <func_8086FDC0+0x204>
 3e0:	00408025 	move	s0,v0
 3e4:	c4ac0024 	lwc1	$f12,36(a1)
 3e8:	c4ae0028 	lwc1	$f14,40(a1)
 3ec:	8ca6002c 	lw	a2,44(a1)
 3f0:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 3f4:	afa501fc 	sw	a1,508(sp)
 3f8:	8fa201fc 	lw	v0,508(sp)
 3fc:	24070001 	li	a3,1
 400:	84440030 	lh	a0,48(v0)
 404:	84450032 	lh	a1,50(v0)
 408:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 40c:	84460034 	lh	a2,52(v0)
 410:	8fa20200 	lw	v0,512(sp)
 414:	24070001 	li	a3,1
 418:	c44c0000 	lwc1	$f12,0(v0)
 41c:	c44e0004 	lwc1	$f14,4(v0)
 420:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 424:	8c460008 	lw	a2,8(v0)
 428:	87ae01d8 	lh	t6,472(sp)
 42c:	24030003 	li	v1,3
 430:	27a60154 	addiu	a2,sp,340
 434:	020ef021 	addu	s8,s0,t6
 438:	001ef400 	sll	s8,s8,0x10
 43c:	001ef403 	sra	s8,s8,0x10
 440:	afa600a4 	sw	a2,164(sp)
 444:	afa301e0 	sw	v1,480(sp)
 448:	8fa301e0 	lw	v1,480(sp)
 44c:	8fa600a4 	lw	a2,164(sp)
 450:	24130024 	li	s3,36
 454:	27b101c6 	addiu	s1,sp,454
 458:	30760001 	andi	s6,v1,0x1
 45c:	24d40024 	addiu	s4,a2,36
 460:	02802025 	move	a0,s4
 464:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 468:	02a02825 	move	a1,s5
 46c:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 470:	4600c306 	mov.s	$f12,$f24
 474:	46000506 	mov.s	$f20,$f0
 478:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 47c:	4600c306 	mov.s	$f12,$f24
 480:	46000586 	mov.s	$f22,$f0
 484:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 488:	4600c306 	mov.s	$f12,$f24
 48c:	c7a801ec 	lwc1	$f8,492(sp)
 490:	c7b001f0 	lwc1	$f16,496(sp)
 494:	c7a401e8 	lwc1	$f4,488(sp)
 498:	4608b280 	add.s	$f10,$f22,$f8
 49c:	2409000b 	li	t1,11
 4a0:	8fa4009c 	lw	a0,156(sp)
 4a4:	46100480 	add.s	$f18,$f0,$f16
 4a8:	e7aa0010 	swc1	$f10,16(sp)
 4ac:	02e02825 	move	a1,s7
 4b0:	4604a180 	add.s	$f6,$f20,$f4
 4b4:	e7b20014 	swc1	$f18,20(sp)
 4b8:	862f0000 	lh	t7,0(s1)
 4bc:	24060039 	li	a2,57
 4c0:	44073000 	mfc1	a3,$f6
 4c4:	afaf0018 	sw	t7,24(sp)
 4c8:	862b0002 	lh	t3,2(s1)
 4cc:	017e4021 	addu	t0,t3,s8
 4d0:	afa8001c 	sw	t0,28(sp)
 4d4:	86390004 	lh	t9,4(s1)
 4d8:	afa90024 	sw	t1,36(sp)
 4dc:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 4e0:	afb90020 	sw	t9,32(sp)
 4e4:	16c00010 	bnez	s6,528 <func_8086FDC0+0x348>
 4e8:	00408025 	move	s0,v0
 4ec:	3c014348 	lui	at,0x4348
 4f0:	44813000 	mtc1	at,$f6
 4f4:	c7a40204 	lwc1	$f4,516(sp)
 4f8:	240a028a 	li	t2,650
 4fc:	24180096 	li	t8,150
 500:	46062202 	mul.s	$f8,$f4,$f6
 504:	240d0001 	li	t5,1
 508:	afad0018 	sw	t5,24(sp)
 50c:	afb80014 	sw	t8,20(sp)
 510:	afaa0010 	sw	t2,16(sp)
 514:	02e02025 	move	a0,s7
 518:	02a02825 	move	a1,s5
 51c:	44064000 	mfc1	a2,$f8
 520:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 524:	24070001 	li	a3,1
 528:	12000038 	beqz	s0,60c <func_8086FDC0+0x42c>
 52c:	3c010000 	lui	at,0x0
 530:	c42a0000 	lwc1	$f10,0(at)
 534:	27ac0184 	addiu	t4,sp,388
 538:	026c9021 	addu	s2,s3,t4
 53c:	460af502 	mul.s	$f20,$f30,$f10
 540:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 544:	00000000 	nop
 548:	46140400 	add.s	$f16,$f0,$f20
 54c:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 550:	e6100068 	swc1	$f16,104(s0)
 554:	46140480 	add.s	$f18,$f0,$f20
 558:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 55c:	e6120060 	swc1	$f18,96(s0)
 560:	3c013f00 	lui	at,0x3f00
 564:	44812000 	mtc1	at,$f4
 568:	3c010000 	lui	at,0x0
 56c:	c4280000 	lwc1	$f8,0(at)
 570:	46040181 	sub.s	$f6,$f0,$f4
 574:	86190032 	lh	t9,50(s0)
 578:	46083282 	mul.s	$f10,$f6,$f8
 57c:	4600540d 	trunc.w.s	$f16,$f10
 580:	44088000 	mfc1	t0,$f16
 584:	00000000 	nop
 588:	03284821 	addu	t1,t9,t0
 58c:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 590:	a6090032 	sh	t1,50(s0)
 594:	461c0482 	mul.s	$f18,$f0,$f28
 598:	4600910d 	trunc.w.s	$f4,$f18
 59c:	440c2000 	mfc1	t4,$f4
 5a0:	00000000 	nop
 5a4:	258e07d0 	addiu	t6,t4,2000
 5a8:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 5ac:	a60e0030 	sh	t6,48(s0)
 5b0:	461c0182 	mul.s	$f6,$f0,$f28
 5b4:	4600d306 	mov.s	$f12,$f26
 5b8:	4600320d 	trunc.w.s	$f8,$f6
 5bc:	44084000 	mfc1	t0,$f8
 5c0:	00000000 	nop
 5c4:	250907d0 	addiu	t1,t0,2000
 5c8:	a6090034 	sh	t1,52(s0)
 5cc:	8faa01fc 	lw	t2,508(sp)
 5d0:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 5d4:	ae0a0118 	sw	t2,280(s0)
 5d8:	c64a0000 	lwc1	$f10,0(s2)
 5dc:	4600d306 	mov.s	$f12,$f26
 5e0:	460a0400 	add.s	$f16,$f0,$f10
 5e4:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 5e8:	e6100050 	swc1	$f16,80(s0)
 5ec:	c6520004 	lwc1	$f18,4(s2)
 5f0:	4600d306 	mov.s	$f12,$f26
 5f4:	46120100 	add.s	$f4,$f0,$f18
 5f8:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 5fc:	e6040054 	swc1	$f4,84(s0)
 600:	c6460008 	lwc1	$f6,8(s2)
 604:	46060200 	add.s	$f8,$f0,$f6
 608:	e6080058 	swc1	$f8,88(s0)
 60c:	2631fffa 	addiu	s1,s1,-6
 610:	27b801b4 	addiu	t8,sp,436
 614:	0238082b 	sltu	at,s1,t8
 618:	2673fff4 	addiu	s3,s3,-12
 61c:	1020ff90 	beqz	at,460 <func_8086FDC0+0x280>
 620:	2694fff4 	addiu	s4,s4,-12
 624:	8fad01e0 	lw	t5,480(sp)
 628:	8fae00a4 	lw	t6,164(sp)
 62c:	25acffff 	addiu	t4,t5,-1
 630:	25cfffd0 	addiu	t7,t6,-48
 634:	afaf00a4 	sw	t7,164(sp)
 638:	0581ff83 	bgez	t4,448 <func_8086FDC0+0x268>
 63c:	afac01e0 	sw	t4,480(sp)
 640:	87ab01d8 	lh	t3,472(sp)
 644:	8fa201dc 	lw	v0,476(sp)
 648:	8fa80210 	lw	t0,528(sp)
 64c:	25794000 	addiu	t9,t3,16384
 650:	24420001 	addiu	v0,v0,1
 654:	afa201dc 	sw	v0,476(sp)
 658:	1448ff5b 	bne	v0,t0,3c8 <func_8086FDC0+0x1e8>
 65c:	a7b901d8 	sh	t9,472(sp)
 660:	afb001f4 	sw	s0,500(sp)
 664:	8fbf0084 	lw	ra,132(sp)
 668:	8fa201f4 	lw	v0,500(sp)
 66c:	d7b40030 	ldc1	$f20,48(sp)
 670:	d7b60038 	ldc1	$f22,56(sp)
 674:	d7b80040 	ldc1	$f24,64(sp)
 678:	d7ba0048 	ldc1	$f26,72(sp)
 67c:	d7bc0050 	ldc1	$f28,80(sp)
 680:	d7be0058 	ldc1	$f30,88(sp)
 684:	8fb00060 	lw	s0,96(sp)
 688:	8fb10064 	lw	s1,100(sp)
 68c:	8fb20068 	lw	s2,104(sp)
 690:	8fb3006c 	lw	s3,108(sp)
 694:	8fb40070 	lw	s4,112(sp)
 698:	8fb50074 	lw	s5,116(sp)
 69c:	8fb60078 	lw	s6,120(sp)
 6a0:	8fb7007c 	lw	s7,124(sp)
 6a4:	8fbe0080 	lw	s8,128(sp)
 6a8:	03e00008 	jr	ra
 6ac:	27bd01f8 	addiu	sp,sp,504

000006b0 <func_80870290>:
 6b0:	27bdffd0 	addiu	sp,sp,-48
 6b4:	afb00018 	sw	s0,24(sp)
 6b8:	3c010001 	lui	at,0x1
 6bc:	00808025 	move	s0,a0
 6c0:	342117a4 	ori	at,at,0x17a4
 6c4:	afbf001c 	sw	ra,28(sp)
 6c8:	afa50034 	sw	a1,52(sp)
 6cc:	00a12021 	addu	a0,a1,at
 6d0:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 6d4:	82050169 	lb	a1,361(s0)
 6d8:	50400032 	beqzl	v0,7a4 <func_80870290+0xf4>
 6dc:	8fbf001c 	lw	ra,28(sp)
 6e0:	afa0002c 	sw	zero,44(sp)
 6e4:	860e001c 	lh	t6,28(s0)
 6e8:	02002825 	move	a1,s0
 6ec:	000ec343 	sra	t8,t6,0xd
 6f0:	33190003 	andi	t9,t8,0x3
 6f4:	afb90028 	sw	t9,40(sp)
 6f8:	82080169 	lb	t0,361(s0)
 6fc:	a208001e 	sb	t0,30(s0)
 700:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 704:	8fa40034 	lw	a0,52(sp)
 708:	8e090004 	lw	t1,4(s0)
 70c:	2401ffef 	li	at,-17
 710:	3c0b0000 	lui	t3,0x0
 714:	256b0000 	addiu	t3,t3,0
 718:	01215024 	and	t2,t1,at
 71c:	ae0a0004 	sw	t2,4(s0)
 720:	ae0b0134 	sw	t3,308(s0)
 724:	8fac0028 	lw	t4,40(sp)
 728:	3c0e0000 	lui	t6,0x0
 72c:	25ce0000 	addiu	t6,t6,0
 730:	000c6880 	sll	t5,t4,0x2
 734:	01ac6823 	subu	t5,t5,t4
 738:	000d6880 	sll	t5,t5,0x2
 73c:	01ae1021 	addu	v0,t5,t6
 740:	8c440000 	lw	a0,0(v0)
 744:	afa20024 	sw	v0,36(sp)
 748:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 74c:	27a5002c 	addiu	a1,sp,44
 750:	8fa40034 	lw	a0,52(sp)
 754:	02003025 	move	a2,s0
 758:	8fa7002c 	lw	a3,44(sp)
 75c:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 760:	24850810 	addiu	a1,a0,2064
 764:	ae02014c 	sw	v0,332(s0)
 768:	8fb80024 	lw	t8,36(sp)
 76c:	3c190000 	lui	t9,0x0
 770:	27390000 	addiu	t9,t9,0
 774:	17190007 	bne	t8,t9,794 <func_80870290+0xe4>
 778:	02002025 	move	a0,s0
 77c:	3c050000 	lui	a1,0x0
 780:	24a50000 	addiu	a1,a1,0
 784:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 788:	02002025 	move	a0,s0
 78c:	10000005 	b	7a4 <func_80870290+0xf4>
 790:	8fbf001c 	lw	ra,28(sp)
 794:	3c050000 	lui	a1,0x0
 798:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 79c:	24a50000 	addiu	a1,a1,0
 7a0:	8fbf001c 	lw	ra,28(sp)
 7a4:	8fb00018 	lw	s0,24(sp)
 7a8:	27bd0030 	addiu	sp,sp,48
 7ac:	03e00008 	jr	ra
 7b0:	00000000 	nop

000007b4 <func_80870394>:
 7b4:	27bdffc0 	addiu	sp,sp,-64
 7b8:	afbf002c 	sw	ra,44(sp)
 7bc:	afb00028 	sw	s0,40(sp)
 7c0:	908e017d 	lbu	t6,381(a0)
 7c4:	00808025 	move	s0,a0
 7c8:	00a03825 	move	a3,a1
 7cc:	31cf0002 	andi	t7,t6,0x2
 7d0:	51e00068 	beqzl	t7,974 <func_80870394+0x1c0>
 7d4:	8fbf002c 	lw	ra,44(sp)
 7d8:	8498001c 	lh	t8,28(a0)
 7dc:	00a02025 	move	a0,a1
 7e0:	24a50810 	addiu	a1,a1,2064
 7e4:	00184343 	sra	t0,t8,0xd
 7e8:	31090003 	andi	t1,t0,0x3
 7ec:	afa90030 	sw	t1,48(sp)
 7f0:	8e06014c 	lw	a2,332(s0)
 7f4:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 7f8:	afa70044 	sw	a3,68(sp)
 7fc:	44800000 	mtc1	zero,$f0
 800:	3c0141c8 	lui	at,0x41c8
 804:	02002825 	move	a1,s0
 808:	e7a00034 	swc1	$f0,52(sp)
 80c:	e7a0003c 	swc1	$f0,60(sp)
 810:	e7a00038 	swc1	$f0,56(sp)
 814:	860a0030 	lh	t2,48(s0)
 818:	44070000 	mfc1	a3,$f0
 81c:	27a60034 	addiu	a2,sp,52
 820:	15400005 	bnez	t2,838 <func_80870394+0x84>
 824:	240b0001 	li	t3,1
 828:	3c01425c 	lui	at,0x425c
 82c:	44812000 	mtc1	at,$f4
 830:	10000006 	b	84c <func_80870394+0x98>
 834:	e7a40038 	swc1	$f4,56(sp)
 838:	44813000 	mtc1	at,$f6
 83c:	3c01c120 	lui	at,0xc120
 840:	44814000 	mtc1	at,$f8
 844:	e7a6003c 	swc1	$f6,60(sp)
 848:	e7a80038 	swc1	$f8,56(sp)
 84c:	3c010000 	lui	at,0x0
 850:	c42a0000 	lwc1	$f10,0(at)
 854:	3c0140a0 	lui	at,0x40a0
 858:	44818000 	mtc1	at,$f16
 85c:	3c014000 	lui	at,0x4000
 860:	44819000 	mtc1	at,$f18
 864:	8fa40044 	lw	a0,68(sp)
 868:	afab0018 	sw	t3,24(sp)
 86c:	e7aa0010 	swc1	$f10,16(sp)
 870:	e7b00014 	swc1	$f16,20(sp)
 874:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 878:	e7b2001c 	swc1	$f18,28(sp)
 87c:	8605001c 	lh	a1,28(s0)
 880:	8fa40044 	lw	a0,68(sp)
 884:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 888:	30a5003f 	andi	a1,a1,0x3f
 88c:	8fac0030 	lw	t4,48(sp)
 890:	24010002 	li	at,2
 894:	24052802 	li	a1,10242
 898:	15810005 	bne	t4,at,8b0 <func_80870394+0xfc>
 89c:	02002025 	move	a0,s0
 8a0:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 8a4:	02002025 	move	a0,s0
 8a8:	10000004 	b	8bc <func_80870394+0x108>
 8ac:	8fad0030 	lw	t5,48(sp)
 8b0:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 8b4:	24052810 	li	a1,10256
 8b8:	8fad0030 	lw	t5,48(sp)
 8bc:	55a0001e 	bnezl	t5,938 <func_80870394+0x184>
 8c0:	8618001c 	lh	t8,28(s0)
 8c4:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 8c8:	240400b0 	li	a0,176
 8cc:	5440001a 	bnezl	v0,938 <func_80870394+0x184>
 8d0:	8618001c 	lh	t8,28(s0)
 8d4:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 8d8:	240400b0 	li	a0,176
 8dc:	3c050201 	lui	a1,0x201
 8e0:	24a54f80 	addiu	a1,a1,20352
 8e4:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 8e8:	8fa40044 	lw	a0,68(sp)
 8ec:	3c070000 	lui	a3,0x0
 8f0:	3c0f0000 	lui	t7,0x0
 8f4:	24e70000 	addiu	a3,a3,0
 8f8:	240e0001 	li	t6,1
 8fc:	3c010000 	lui	at,0x0
 900:	25ef0000 	addiu	t7,t7,0
 904:	3c050000 	lui	a1,0x0
 908:	a02e1414 	sb	t6,5140(at)
 90c:	24a50000 	addiu	a1,a1,0
 910:	afaf0014 	sw	t7,20(sp)
 914:	afa70010 	sw	a3,16(sp)
 918:	24044802 	li	a0,18434
 91c:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 920:	24060004 	li	a2,4
 924:	8fa40044 	lw	a0,68(sp)
 928:	00002825 	move	a1,zero
 92c:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 930:	24060031 	li	a2,49
 934:	8618001c 	lh	t8,28(s0)
 938:	3c050000 	lui	a1,0x0
 93c:	24a50000 	addiu	a1,a1,0
 940:	07010009 	bgez	t8,968 <func_80870394+0x1b4>
 944:	24044807 	li	a0,18439
 948:	3c190000 	lui	t9,0x0
 94c:	3c080000 	lui	t0,0x0
 950:	25080000 	addiu	t0,t0,0
 954:	27270000 	addiu	a3,t9,0
 958:	afa70010 	sw	a3,16(sp)
 95c:	afa80014 	sw	t0,20(sp)
 960:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 964:	24060004 	li	a2,4
 968:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 96c:	02002025 	move	a0,s0
 970:	8fbf002c 	lw	ra,44(sp)
 974:	8fb00028 	lw	s0,40(sp)
 978:	27bd0040 	addiu	sp,sp,64
 97c:	03e00008 	jr	ra
 980:	00000000 	nop

00000984 <func_80870564>:
 984:	3c0e0000 	lui	t6,0x0
 988:	8dce0000 	lw	t6,0(t6)
 98c:	27bdffe8 	addiu	sp,sp,-24
 990:	afbf0014 	sw	ra,20(sp)
 994:	afa5001c 	sw	a1,28(sp)
 998:	85cf0a74 	lh	t7,2676(t6)
 99c:	00803825 	move	a3,a0
 9a0:	c4e8000c 	lwc1	$f8,12(a3)
 9a4:	448f2000 	mtc1	t7,$f4
 9a8:	24840028 	addiu	a0,a0,40
 9ac:	3c063f80 	lui	a2,0x3f80
 9b0:	468021a0 	cvt.s.w	$f6,$f4
 9b4:	46083280 	add.s	$f10,$f6,$f8
 9b8:	44055000 	mfc1	a1,$f10
 9bc:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 9c0:	00000000 	nop
 9c4:	8fbf0014 	lw	ra,20(sp)
 9c8:	27bd0018 	addiu	sp,sp,24
 9cc:	03e00008 	jr	ra
 9d0:	00000000 	nop

000009d4 <BgBreakwall_Update>:
 9d4:	27bdffe8 	addiu	sp,sp,-24
 9d8:	afbf0014 	sw	ra,20(sp)
 9dc:	8c9901ec 	lw	t9,492(a0)
 9e0:	0320f809 	jalr	t9
 9e4:	00000000 	nop
 9e8:	8fbf0014 	lw	ra,20(sp)
 9ec:	27bd0018 	addiu	sp,sp,24
 9f0:	03e00008 	jr	ra
 9f4:	00000000 	nop

000009f8 <func_808705D8>:
 9f8:	27bdff60 	addiu	sp,sp,-160
 9fc:	afbf0034 	sw	ra,52(sp)
 a00:	afb50030 	sw	s5,48(sp)
 a04:	afb4002c 	sw	s4,44(sp)
 a08:	afb30028 	sw	s3,40(sp)
 a0c:	afb20024 	sw	s2,36(sp)
 a10:	afb10020 	sw	s1,32(sp)
 a14:	afb0001c 	sw	s0,28(sp)
 a18:	8c8e0164 	lw	t6,356(a0)
 a1c:	0080a025 	move	s4,a0
 a20:	00a0a825 	move	s5,a1
 a24:	11c00044 	beqz	t6,b38 <func_808705D8+0x140>
 a28:	27a40084 	addiu	a0,sp,132
 a2c:	8ca50000 	lw	a1,0(a1)
 a30:	3c060000 	lui	a2,0x0
 a34:	24c60000 	addiu	a2,a2,0
 a38:	240702ff 	li	a3,767
 a3c:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 a40:	00a08025 	move	s0,a1
 a44:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 a48:	8ea40000 	lw	a0,0(s5)
 a4c:	8e0202c0 	lw	v0,704(s0)
 a50:	3c18da38 	lui	t8,0xda38
 a54:	37180003 	ori	t8,t8,0x3
 a58:	244f0008 	addiu	t7,v0,8
 a5c:	ae0f02c0 	sw	t7,704(s0)
 a60:	3c050000 	lui	a1,0x0
 a64:	ac580000 	sw	t8,0(v0)
 a68:	8ea40000 	lw	a0,0(s5)
 a6c:	24a50000 	addiu	a1,a1,0
 a70:	24060303 	li	a2,771
 a74:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 a78:	00408825 	move	s1,v0
 a7c:	ae220004 	sw	v0,4(s1)
 a80:	8e0202c0 	lw	v0,704(s0)
 a84:	3c08de00 	lui	t0,0xde00
 a88:	3c0b0000 	lui	t3,0x0
 a8c:	24590008 	addiu	t9,v0,8
 a90:	ae1902c0 	sw	t9,704(s0)
 a94:	ac480000 	sw	t0,0(v0)
 a98:	8e890164 	lw	t1,356(s4)
 a9c:	256b0000 	addiu	t3,t3,0
 aa0:	27b1004c 	addiu	s1,sp,76
 aa4:	ac490004 	sw	t1,4(v0)
 aa8:	82820168 	lb	v0,360(s4)
 aac:	00009025 	move	s2,zero
 ab0:	24130004 	li	s3,4
 ab4:	0440001a 	bltz	v0,b20 <func_808705D8+0x128>
 ab8:	00025080 	sll	t2,v0,0x2
 abc:	01425023 	subu	t2,t2,v0
 ac0:	000a5100 	sll	t2,t2,0x4
 ac4:	014b8021 	addu	s0,t2,t3
 ac8:	02002025 	move	a0,s0
 acc:	02202825 	move	a1,s1
 ad0:	2631000c 	addiu	s1,s1,12
 ad4:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 ad8:	2610000c 	addiu	s0,s0,12
 adc:	26520001 	addiu	s2,s2,1
 ae0:	5653fffa 	bnel	s2,s3,acc <func_808705D8+0xd4>
 ae4:	02002025 	move	a0,s0
 ae8:	2690016c 	addiu	s0,s4,364
 aec:	27ac0070 	addiu	t4,sp,112
 af0:	afac0010 	sw	t4,16(sp)
 af4:	02002025 	move	a0,s0
 af8:	27a5004c 	addiu	a1,sp,76
 afc:	27a60058 	addiu	a2,sp,88
 b00:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 b04:	27a70064 	addiu	a3,sp,100
 b08:	3c010001 	lui	at,0x1
 b0c:	34211e60 	ori	at,at,0x1e60
 b10:	02a12821 	addu	a1,s5,at
 b14:	02a02025 	move	a0,s5
 b18:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 b1c:	02003025 	move	a2,s0
 b20:	3c060000 	lui	a2,0x0
 b24:	24c60000 	addiu	a2,a2,0
 b28:	27a40084 	addiu	a0,sp,132
 b2c:	8ea50000 	lw	a1,0(s5)
 b30:	0c000000 	jal	0 <BgBreakwall_SetupAction>
 b34:	24070336 	li	a3,822
 b38:	8fbf0034 	lw	ra,52(sp)
 b3c:	8fb0001c 	lw	s0,28(sp)
 b40:	8fb10020 	lw	s1,32(sp)
 b44:	8fb20024 	lw	s2,36(sp)
 b48:	8fb30028 	lw	s3,40(sp)
 b4c:	8fb4002c 	lw	s4,44(sp)
 b50:	8fb50030 	lw	s5,48(sp)
 b54:	03e00008 	jr	ra
 b58:	27bd00a0 	addiu	sp,sp,160
 b5c:	00000000 	nop
