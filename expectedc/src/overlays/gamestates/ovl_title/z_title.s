
build/src/overlays/gamestates/ovl_title/z_title.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Title_PrintBuildInfo>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afbf003c 	sw	ra,60(sp)
   8:	afbe0038 	sw	s8,56(sp)
   c:	afb10034 	sw	s1,52(sp)
  10:	afb00030 	sw	s0,48(sp)
  14:	afa40040 	sw	a0,64(sp)
  18:	8c910000 	lw	s1,0(a0)
  1c:	03a0f025 	move	s8,sp
  20:	0c000000 	jal	0 <Title_PrintBuildInfo>
  24:	02202025 	move	a0,s1
  28:	27bdffd0 	addiu	sp,sp,-48
  2c:	27b00018 	addiu	s0,sp,24
  30:	00408825 	move	s1,v0
  34:	0c000000 	jal	0 <Title_PrintBuildInfo>
  38:	02002025 	move	a0,s0
  3c:	02002025 	move	a0,s0
  40:	0c000000 	jal	0 <Title_PrintBuildInfo>
  44:	02202825 	move	a1,s1
  48:	240f00ff 	li	t7,255
  4c:	afaf0010 	sw	t7,16(sp)
  50:	02002025 	move	a0,s0
  54:	240500ff 	li	a1,255
  58:	2406009b 	li	a2,155
  5c:	0c000000 	jal	0 <Title_PrintBuildInfo>
  60:	240700ff 	li	a3,255
  64:	02002025 	move	a0,s0
  68:	24050009 	li	a1,9
  6c:	0c000000 	jal	0 <Title_PrintBuildInfo>
  70:	24060015 	li	a2,21
  74:	3c050000 	lui	a1,0x0
  78:	24a50000 	addiu	a1,a1,0
  7c:	0c000000 	jal	0 <Title_PrintBuildInfo>
  80:	02002025 	move	a0,s0
  84:	241800ff 	li	t8,255
  88:	afb80010 	sw	t8,16(sp)
  8c:	02002025 	move	a0,s0
  90:	240500ff 	li	a1,255
  94:	240600ff 	li	a2,255
  98:	0c000000 	jal	0 <Title_PrintBuildInfo>
  9c:	240700ff 	li	a3,255
  a0:	02002025 	move	a0,s0
  a4:	24050007 	li	a1,7
  a8:	0c000000 	jal	0 <Title_PrintBuildInfo>
  ac:	24060017 	li	a2,23
  b0:	3c050000 	lui	a1,0x0
  b4:	3c060000 	lui	a2,0x0
  b8:	24c60000 	addiu	a2,a2,0
  bc:	24a50018 	addiu	a1,a1,24
  c0:	0c000000 	jal	0 <Title_PrintBuildInfo>
  c4:	02002025 	move	a0,s0
  c8:	02002025 	move	a0,s0
  cc:	24050007 	li	a1,7
  d0:	0c000000 	jal	0 <Title_PrintBuildInfo>
  d4:	24060018 	li	a2,24
  d8:	3c050000 	lui	a1,0x0
  dc:	3c060000 	lui	a2,0x0
  e0:	24c60000 	addiu	a2,a2,0
  e4:	24a50028 	addiu	a1,a1,40
  e8:	0c000000 	jal	0 <Title_PrintBuildInfo>
  ec:	02002025 	move	a0,s0
  f0:	0c000000 	jal	0 <Title_PrintBuildInfo>
  f4:	02002025 	move	a0,s0
  f8:	00408825 	move	s1,v0
  fc:	0c000000 	jal	0 <Title_PrintBuildInfo>
 100:	02002025 	move	a0,s0
 104:	8fd90040 	lw	t9,64(s8)
 108:	03c0e825 	move	sp,s8
 10c:	af310000 	sw	s1,0(t9)
 110:	8fdf003c 	lw	ra,60(s8)
 114:	8fd10034 	lw	s1,52(s8)
 118:	8fd00030 	lw	s0,48(s8)
 11c:	8fde0038 	lw	s8,56(s8)
 120:	03e00008 	jr	ra
 124:	27bd0040 	addiu	sp,sp,64

00000128 <Title_Calc>:
 128:	240e0001 	li	t6,1
 12c:	03e00008 	jr	ra
 130:	a08e01e1 	sb	t6,481(a0)

00000134 <Title_SetupView>:
 134:	27bdffb8 	addiu	sp,sp,-72
 138:	44800000 	mtc1	zero,$f0
 13c:	afa70054 	sw	a3,84(sp)
 140:	3c013f80 	lui	at,0x3f80
 144:	44856000 	mtc1	a1,$f12
 148:	44867000 	mtc1	a2,$f14
 14c:	c7a40054 	lwc1	$f4,84(sp)
 150:	44813000 	mtc1	at,$f6
 154:	afa40048 	sw	a0,72(sp)
 158:	afbf0014 	sw	ra,20(sp)
 15c:	248400a8 	addiu	a0,a0,168
 160:	afa4001c 	sw	a0,28(sp)
 164:	3c064120 	lui	a2,0x4120
 168:	3c0541f0 	lui	a1,0x41f0
 16c:	3c074648 	lui	a3,0x4648
 170:	e7a00028 	swc1	$f0,40(sp)
 174:	e7a00020 	swc1	$f0,32(sp)
 178:	e7a00034 	swc1	$f0,52(sp)
 17c:	e7a00030 	swc1	$f0,48(sp)
 180:	e7a0002c 	swc1	$f0,44(sp)
 184:	e7ac0038 	swc1	$f12,56(sp)
 188:	e7ae003c 	swc1	$f14,60(sp)
 18c:	e7a40040 	swc1	$f4,64(sp)
 190:	0c000000 	jal	0 <Title_PrintBuildInfo>
 194:	e7a60024 	swc1	$f6,36(sp)
 198:	8fa4001c 	lw	a0,28(sp)
 19c:	27a50038 	addiu	a1,sp,56
 1a0:	27a6002c 	addiu	a2,sp,44
 1a4:	0c000000 	jal	0 <Title_PrintBuildInfo>
 1a8:	27a70020 	addiu	a3,sp,32
 1ac:	8fa4001c 	lw	a0,28(sp)
 1b0:	0c000000 	jal	0 <Title_PrintBuildInfo>
 1b4:	2405000f 	li	a1,15
 1b8:	8fbf0014 	lw	ra,20(sp)
 1bc:	27bd0048 	addiu	sp,sp,72
 1c0:	03e00008 	jr	ra
 1c4:	00000000 	nop

000001c8 <Title_Draw>:
 1c8:	27bdff10 	addiu	sp,sp,-240
 1cc:	afbf0024 	sw	ra,36(sp)
 1d0:	afb00020 	sw	s0,32(sp)
 1d4:	8c850000 	lw	a1,0(a0)
 1d8:	00808025 	move	s0,a0
 1dc:	3c060000 	lui	a2,0x0
 1e0:	24c60034 	addiu	a2,a2,52
 1e4:	27a400a8 	addiu	a0,sp,168
 1e8:	2407018b 	li	a3,395
 1ec:	0c000000 	jal	0 <Title_PrintBuildInfo>
 1f0:	afa500b8 	sw	a1,184(sp)
 1f4:	3c01428a 	lui	at,0x428a
 1f8:	44810000 	mtc1	at,$f0
 1fc:	3c010000 	lui	at,0x0
 200:	c42400dc 	lwc1	$f4,220(at)
 204:	3c010000 	lui	at,0x0
 208:	44801000 	mtc1	zero,$f2
 20c:	c42600e0 	lwc1	$f6,224(at)
 210:	3c010000 	lui	at,0x0
 214:	c42800e4 	lwc1	$f8,228(at)
 218:	e7a000dc 	swc1	$f0,220(sp)
 21c:	e7a000e0 	swc1	$f0,224(sp)
 220:	e7a000e4 	swc1	$f0,228(sp)
 224:	e7a400c4 	swc1	$f4,196(sp)
 228:	e7a600c8 	swc1	$f6,200(sp)
 22c:	e7a200d0 	swc1	$f2,208(sp)
 230:	e7a200d4 	swc1	$f2,212(sp)
 234:	e7a200d8 	swc1	$f2,216(sp)
 238:	e7a800cc 	swc1	$f8,204(sp)
 23c:	8e070000 	lw	a3,0(s0)
 240:	27a400d0 	addiu	a0,sp,208
 244:	27a500c4 	addiu	a1,sp,196
 248:	0c000000 	jal	0 <Title_PrintBuildInfo>
 24c:	27a600dc 	addiu	a2,sp,220
 250:	8fa800b8 	lw	t0,184(sp)
 254:	3c0fdb02 	lui	t7,0xdb02
 258:	24180018 	li	t8,24
 25c:	8d0202c0 	lw	v0,704(t0)
 260:	02002025 	move	a0,s0
 264:	24050000 	li	a1,0
 268:	244e0008 	addiu	t6,v0,8
 26c:	ad0e02c0 	sw	t6,704(t0)
 270:	ac580004 	sw	t8,4(v0)
 274:	ac4f0000 	sw	t7,0(v0)
 278:	8d0202c0 	lw	v0,704(t0)
 27c:	3c0f0000 	lui	t7,0x0
 280:	3c0edc08 	lui	t6,0xdc08
 284:	24590008 	addiu	t9,v0,8
 288:	ad1902c0 	sw	t9,704(t0)
 28c:	35ce060a 	ori	t6,t6,0x60a
 290:	25ef0010 	addiu	t7,t7,16
 294:	ac4f0004 	sw	t7,4(v0)
 298:	ac4e0000 	sw	t6,0(v0)
 29c:	8d0202c0 	lw	v0,704(t0)
 2a0:	3c0e0000 	lui	t6,0x0
 2a4:	3c19dc08 	lui	t9,0xdc08
 2a8:	24580008 	addiu	t8,v0,8
 2ac:	ad1802c0 	sw	t8,704(t0)
 2b0:	3739090a 	ori	t9,t9,0x90a
 2b4:	25ce0008 	addiu	t6,t6,8
 2b8:	ac4e0004 	sw	t6,4(v0)
 2bc:	ac590000 	sw	t9,0(v0)
 2c0:	3c064316 	lui	a2,0x4316
 2c4:	3c074396 	lui	a3,0x4396
 2c8:	0c000000 	jal	0 <Title_PrintBuildInfo>
 2cc:	afa800b8 	sw	t0,184(sp)
 2d0:	0c000000 	jal	0 <Title_PrintBuildInfo>
 2d4:	8e040000 	lw	a0,0(s0)
 2d8:	3c01c254 	lui	at,0xc254
 2dc:	44816000 	mtc1	at,$f12
 2e0:	3c01c0a0 	lui	at,0xc0a0
 2e4:	44817000 	mtc1	at,$f14
 2e8:	24060000 	li	a2,0
 2ec:	0c000000 	jal	0 <Title_PrintBuildInfo>
 2f0:	00003825 	move	a3,zero
 2f4:	3c013f80 	lui	at,0x3f80
 2f8:	44816000 	mtc1	at,$f12
 2fc:	24070001 	li	a3,1
 300:	44066000 	mfc1	a2,$f12
 304:	0c000000 	jal	0 <Title_PrintBuildInfo>
 308:	46006386 	mov.s	$f14,$f12
 30c:	3c050000 	lui	a1,0x0
 310:	84a50000 	lh	a1,0(a1)
 314:	00002025 	move	a0,zero
 318:	00003025 	move	a2,zero
 31c:	0c000000 	jal	0 <Title_PrintBuildInfo>
 320:	24070001 	li	a3,1
 324:	8fa800b8 	lw	t0,184(sp)
 328:	3c18da38 	lui	t8,0xda38
 32c:	37180003 	ori	t8,t8,0x3
 330:	8d0202c0 	lw	v0,704(t0)
 334:	3c050000 	lui	a1,0x0
 338:	24a50044 	addiu	a1,a1,68
 33c:	244f0008 	addiu	t7,v0,8
 340:	ad0f02c0 	sw	t7,704(t0)
 344:	ac580000 	sw	t8,0(v0)
 348:	8e040000 	lw	a0,0(s0)
 34c:	240601a8 	li	a2,424
 350:	afa800b8 	sw	t0,184(sp)
 354:	0c000000 	jal	0 <Title_PrintBuildInfo>
 358:	afa20098 	sw	v0,152(sp)
 35c:	8fa30098 	lw	v1,152(sp)
 360:	8fa800b8 	lw	t0,184(sp)
 364:	3c0f0000 	lui	t7,0x0
 368:	ac620004 	sw	v0,4(v1)
 36c:	8d0202c0 	lw	v0,704(t0)
 370:	25ef0000 	addiu	t7,t7,0
 374:	3c0ede00 	lui	t6,0xde00
 378:	24590008 	addiu	t9,v0,8
 37c:	ad1902c0 	sw	t9,704(t0)
 380:	ac4f0004 	sw	t7,4(v0)
 384:	ac4e0000 	sw	t6,0(v0)
 388:	8e040000 	lw	a0,0(s0)
 38c:	0c000000 	jal	0 <Title_PrintBuildInfo>
 390:	afa800b8 	sw	t0,184(sp)
 394:	8fa800b8 	lw	t0,184(sp)
 398:	3c05e700 	lui	a1,0xe700
 39c:	3c0ee300 	lui	t6,0xe300
 3a0:	8d0202c0 	lw	v0,704(t0)
 3a4:	35ce0a01 	ori	t6,t6,0xa01
 3a8:	3c0f0010 	lui	t7,0x10
 3ac:	24580008 	addiu	t8,v0,8
 3b0:	ad1802c0 	sw	t8,704(t0)
 3b4:	ac400004 	sw	zero,4(v0)
 3b8:	ac450000 	sw	a1,0(v0)
 3bc:	8d0202c0 	lw	v0,704(t0)
 3c0:	3c09f200 	lui	t1,0xf200
 3c4:	3c1f070b 	lui	ra,0x70b
 3c8:	24590008 	addiu	t9,v0,8
 3cc:	ad1902c0 	sw	t9,704(t0)
 3d0:	ac4f0004 	sw	t7,4(v0)
 3d4:	ac4e0000 	sw	t6,0(v0)
 3d8:	8d0202c0 	lw	v0,704(t0)
 3dc:	3c0e0c18 	lui	t6,0xc18
 3e0:	3c19e200 	lui	t9,0xe200
 3e4:	24580008 	addiu	t8,v0,8
 3e8:	ad1802c0 	sw	t8,704(t0)
 3ec:	3739001c 	ori	t9,t9,0x1c
 3f0:	35ce4340 	ori	t6,t6,0x4340
 3f4:	ac4e0004 	sw	t6,4(v0)
 3f8:	ac590000 	sw	t9,0(v0)
 3fc:	8d0202c0 	lw	v0,704(t0)
 400:	3c19350c 	lui	t9,0x350c
 404:	3c18fc26 	lui	t8,0xfc26
 408:	244f0008 	addiu	t7,v0,8
 40c:	ad0f02c0 	sw	t7,704(t0)
 410:	37187e60 	ori	t8,t8,0x7e60
 414:	3739f37f 	ori	t9,t9,0xf37f
 418:	ac590004 	sw	t9,4(v0)
 41c:	ac580000 	sw	t8,0(v0)
 420:	8d0202c0 	lw	v0,704(t0)
 424:	3c18aaff 	lui	t8,0xaaff
 428:	3718ffff 	ori	t8,t8,0xffff
 42c:	244e0008 	addiu	t6,v0,8
 430:	ad0e02c0 	sw	t6,704(t0)
 434:	3c0ffa00 	lui	t7,0xfa00
 438:	ac4f0000 	sw	t7,0(v0)
 43c:	ac580004 	sw	t8,4(v0)
 440:	8d0202c0 	lw	v0,704(t0)
 444:	340fff80 	li	t7,0xff80
 448:	3c0efb00 	lui	t6,0xfb00
 44c:	24590008 	addiu	t9,v0,8
 450:	ad1902c0 	sw	t9,704(t0)
 454:	ac4f0004 	sw	t7,4(v0)
 458:	ac4e0000 	sw	t6,0(v0)
 45c:	8d0202c0 	lw	v0,704(t0)
 460:	3c0e0000 	lui	t6,0x0
 464:	25ce0000 	addiu	t6,t6,0
 468:	24580008 	addiu	t8,v0,8
 46c:	ad1802c0 	sw	t8,704(t0)
 470:	3c19fd90 	lui	t9,0xfd90
 474:	ac590000 	sw	t9,0(v0)
 478:	ac4e0004 	sw	t6,4(v0)
 47c:	8d0202c0 	lw	v0,704(t0)
 480:	3c190701 	lui	t9,0x701
 484:	3c18f590 	lui	t8,0xf590
 488:	244f0008 	addiu	t7,v0,8
 48c:	ad0f02c0 	sw	t7,704(t0)
 490:	37180100 	ori	t8,t8,0x100
 494:	37396c52 	ori	t9,t9,0x6c52
 498:	ac590004 	sw	t9,4(v0)
 49c:	ac580000 	sw	t8,0(v0)
 4a0:	8d0202c0 	lw	v0,704(t0)
 4a4:	3c0fe600 	lui	t7,0xe600
 4a8:	3c19f300 	lui	t9,0xf300
 4ac:	244e0008 	addiu	t6,v0,8
 4b0:	ad0e02c0 	sw	t6,704(t0)
 4b4:	ac400004 	sw	zero,4(v0)
 4b8:	ac4f0000 	sw	t7,0(v0)
 4bc:	8d0202c0 	lw	v0,704(t0)
 4c0:	3c0e071f 	lui	t6,0x71f
 4c4:	35cef200 	ori	t6,t6,0xf200
 4c8:	24580008 	addiu	t8,v0,8
 4cc:	ad1802c0 	sw	t8,704(t0)
 4d0:	ac4e0004 	sw	t6,4(v0)
 4d4:	ac590000 	sw	t9,0(v0)
 4d8:	8d0202c0 	lw	v0,704(t0)
 4dc:	3c19f588 	lui	t9,0xf588
 4e0:	3c0e0101 	lui	t6,0x101
 4e4:	244f0008 	addiu	t7,v0,8
 4e8:	ad0f02c0 	sw	t7,704(t0)
 4ec:	ac400004 	sw	zero,4(v0)
 4f0:	ac450000 	sw	a1,0(v0)
 4f4:	8d0202c0 	lw	v0,704(t0)
 4f8:	35ce6c52 	ori	t6,t6,0x6c52
 4fc:	37390900 	ori	t9,t9,0x900
 500:	24580008 	addiu	t8,v0,8
 504:	ad1802c0 	sw	t8,704(t0)
 508:	ac4e0004 	sw	t6,4(v0)
 50c:	ac590000 	sw	t9,0(v0)
 510:	8d0202c0 	lw	v0,704(t0)
 514:	3c180107 	lui	t8,0x107
 518:	3718c07c 	ori	t8,t8,0xc07c
 51c:	244f0008 	addiu	t7,v0,8
 520:	ad0f02c0 	sw	t7,704(t0)
 524:	3c0a0000 	lui	t2,0x0
 528:	254a0000 	addiu	t2,t2,0
 52c:	37fff056 	ori	ra,ra,0xf056
 530:	00003025 	move	a2,zero
 534:	2407005e 	li	a3,94
 538:	00002025 	move	a0,zero
 53c:	3c0d0700 	lui	t5,0x700
 540:	3c0cf590 	lui	t4,0xf590
 544:	240b0180 	li	t3,384
 548:	ac580004 	sw	t8,4(v0)
 54c:	ac490000 	sw	t1,0(v0)
 550:	008b0019 	multu	a0,t3
 554:	8d0202c0 	lw	v0,704(t0)
 558:	3c0efd90 	lui	t6,0xfd90
 55c:	24e50002 	addiu	a1,a3,2
 560:	24590008 	addiu	t9,v0,8
 564:	ad1902c0 	sw	t9,704(t0)
 568:	ac4e0000 	sw	t6,0(v0)
 56c:	3c01e448 	lui	at,0xe448
 570:	34214000 	ori	at,at,0x4000
 574:	24c60001 	addiu	a2,a2,1
 578:	00007812 	mflo	t7
 57c:	014fc021 	addu	t8,t2,t7
 580:	ac580004 	sw	t8,4(v0)
 584:	8d0202c0 	lw	v0,704(t0)
 588:	3c0fe600 	lui	t7,0xe600
 58c:	30c6ffff 	andi	a2,a2,0xffff
 590:	24590008 	addiu	t9,v0,8
 594:	ad1902c0 	sw	t9,704(t0)
 598:	ac4d0004 	sw	t5,4(v0)
 59c:	ac4c0000 	sw	t4,0(v0)
 5a0:	8d0202c0 	lw	v0,704(t0)
 5a4:	3c19f300 	lui	t9,0xf300
 5a8:	244e0008 	addiu	t6,v0,8
 5ac:	ad0e02c0 	sw	t6,704(t0)
 5b0:	ac400004 	sw	zero,4(v0)
 5b4:	ac4f0000 	sw	t7,0(v0)
 5b8:	8d0202c0 	lw	v0,704(t0)
 5bc:	3c0fe700 	lui	t7,0xe700
 5c0:	24580008 	addiu	t8,v0,8
 5c4:	ad1802c0 	sw	t8,704(t0)
 5c8:	ac5f0004 	sw	ra,4(v0)
 5cc:	ac590000 	sw	t9,0(v0)
 5d0:	8d0202c0 	lw	v0,704(t0)
 5d4:	3c19f588 	lui	t9,0xf588
 5d8:	37393000 	ori	t9,t9,0x3000
 5dc:	244e0008 	addiu	t6,v0,8
 5e0:	ad0e02c0 	sw	t6,704(t0)
 5e4:	ac400004 	sw	zero,4(v0)
 5e8:	ac4f0000 	sw	t7,0(v0)
 5ec:	8d0202c0 	lw	v0,704(t0)
 5f0:	3c0f002f 	lui	t7,0x2f
 5f4:	35efc004 	ori	t7,t7,0xc004
 5f8:	24580008 	addiu	t8,v0,8
 5fc:	ad1802c0 	sw	t8,704(t0)
 600:	ac400004 	sw	zero,4(v0)
 604:	ac590000 	sw	t9,0(v0)
 608:	8d0202c0 	lw	v0,704(t0)
 60c:	244e0008 	addiu	t6,v0,8
 610:	ad0e02c0 	sw	t6,704(t0)
 614:	ac4f0004 	sw	t7,4(v0)
 618:	ac490000 	sw	t1,0(v0)
 61c:	8d0202c0 	lw	v0,704(t0)
 620:	00047880 	sll	t7,a0,0x2
 624:	00c02025 	move	a0,a2
 628:	24580008 	addiu	t8,v0,8
 62c:	ad1802c0 	sw	t8,704(t0)
 630:	861901dc 	lh	t9,476(s0)
 634:	332e007f 	andi	t6,t9,0x7f
 638:	01cfc023 	subu	t8,t6,t7
 63c:	860e01de 	lh	t6,478(s0)
 640:	33190fff 	andi	t9,t8,0xfff
 644:	31cf0fff 	andi	t7,t6,0xfff
 648:	000fc300 	sll	t8,t7,0xc
 64c:	03097025 	or	t6,t8,t1
 650:	01d97825 	or	t7,t6,t9
 654:	3c180100 	lui	t8,0x100
 658:	ac580004 	sw	t8,4(v0)
 65c:	ac4f0000 	sw	t7,0(v0)
 660:	8d0202c0 	lw	v0,704(t0)
 664:	0005c880 	sll	t9,a1,0x2
 668:	332f0fff 	andi	t7,t9,0xfff
 66c:	244e0008 	addiu	t6,v0,8
 670:	ad0e02c0 	sw	t6,704(t0)
 674:	01e1c025 	or	t8,t7,at
 678:	3c010018 	lui	at,0x18
 67c:	00077080 	sll	t6,a3,0x2
 680:	31d90fff 	andi	t9,t6,0xfff
 684:	34214000 	ori	at,at,0x4000
 688:	03217825 	or	t7,t9,at
 68c:	ac4f0004 	sw	t7,4(v0)
 690:	ac580000 	sw	t8,0(v0)
 694:	8d0202c0 	lw	v0,704(t0)
 698:	3c0ee100 	lui	t6,0xe100
 69c:	28c10010 	slti	at,a2,16
 6a0:	24580008 	addiu	t8,v0,8
 6a4:	ad1802c0 	sw	t8,704(t0)
 6a8:	ac400004 	sw	zero,4(v0)
 6ac:	ac4e0000 	sw	t6,0(v0)
 6b0:	8d0202c0 	lw	v0,704(t0)
 6b4:	3c180400 	lui	t8,0x400
 6b8:	37180400 	ori	t8,t8,0x400
 6bc:	24590008 	addiu	t9,v0,8
 6c0:	ad1902c0 	sw	t9,704(t0)
 6c4:	3c0ff100 	lui	t7,0xf100
 6c8:	30a7ffff 	andi	a3,a1,0xffff
 6cc:	ac4f0000 	sw	t7,0(v0)
 6d0:	1420ff9f 	bnez	at,550 <Title_Draw+0x388>
 6d4:	ac580004 	sw	t8,4(v0)
 6d8:	860e01d6 	lh	t6,470(s0)
 6dc:	8e040000 	lw	a0,0(s0)
 6e0:	24190002 	li	t9,2
 6e4:	afb90014 	sw	t9,20(sp)
 6e8:	00002825 	move	a1,zero
 6ec:	00003025 	move	a2,zero
 6f0:	00003825 	move	a3,zero
 6f4:	0c000000 	jal	0 <Title_PrintBuildInfo>
 6f8:	afae0010 	sw	t6,16(sp)
 6fc:	3c0f0000 	lui	t7,0x0
 700:	85ef0000 	lh	t7,0(t7)
 704:	3c010000 	lui	at,0x0
 708:	3c060000 	lui	a2,0x0
 70c:	25f8012c 	addiu	t8,t7,300
 710:	a4380000 	sh	t8,0(at)
 714:	8e050000 	lw	a1,0(s0)
 718:	24c60054 	addiu	a2,a2,84
 71c:	27a400a8 	addiu	a0,sp,168
 720:	0c000000 	jal	0 <Title_PrintBuildInfo>
 724:	240701e3 	li	a3,483
 728:	8fbf0024 	lw	ra,36(sp)
 72c:	8fb00020 	lw	s0,32(sp)
 730:	27bd00f0 	addiu	sp,sp,240
 734:	03e00008 	jr	ra
 738:	00000000 	nop

0000073c <Title_Main>:
 73c:	27bdffb0 	addiu	sp,sp,-80
 740:	afbf001c 	sw	ra,28(sp)
 744:	afb10018 	sw	s1,24(sp)
 748:	afb00014 	sw	s0,20(sp)
 74c:	8c850000 	lw	a1,0(a0)
 750:	00808025 	move	s0,a0
 754:	3c060000 	lui	a2,0x0
 758:	24c60064 	addiu	a2,a2,100
 75c:	27a40038 	addiu	a0,sp,56
 760:	240701ee 	li	a3,494
 764:	0c000000 	jal	0 <Title_PrintBuildInfo>
 768:	00a08825 	move	s1,a1
 76c:	8e2302c0 	lw	v1,704(s1)
 770:	3c0fdb06 	lui	t7,0xdb06
 774:	3c19db06 	lui	t9,0xdb06
 778:	246e0008 	addiu	t6,v1,8
 77c:	ae2e02c0 	sw	t6,704(s1)
 780:	ac600004 	sw	zero,4(v1)
 784:	ac6f0000 	sw	t7,0(v1)
 788:	8e2302c0 	lw	v1,704(s1)
 78c:	37390004 	ori	t9,t9,0x4
 790:	00002825 	move	a1,zero
 794:	24780008 	addiu	t8,v1,8
 798:	ae3802c0 	sw	t8,704(s1)
 79c:	ac790000 	sw	t9,0(v1)
 7a0:	8e0800a4 	lw	t0,164(s0)
 7a4:	00003025 	move	a2,zero
 7a8:	00003825 	move	a3,zero
 7ac:	ac680004 	sw	t0,4(v1)
 7b0:	0c000000 	jal	0 <Title_PrintBuildInfo>
 7b4:	8e040000 	lw	a0,0(s0)
 7b8:	0c000000 	jal	0 <Title_PrintBuildInfo>
 7bc:	02002025 	move	a0,s0
 7c0:	0c000000 	jal	0 <Title_PrintBuildInfo>
 7c4:	02002025 	move	a0,s0
 7c8:	3c090000 	lui	t1,0x0
 7cc:	8d290000 	lw	t1,0(t1)
 7d0:	51200008 	beqzl	t1,7f4 <Title_Main+0xb8>
 7d4:	920c01e1 	lbu	t4,481(s0)
 7d8:	8e2a02c0 	lw	t2,704(s1)
 7dc:	27a4002c 	addiu	a0,sp,44
 7e0:	0c000000 	jal	0 <Title_PrintBuildInfo>
 7e4:	afaa002c 	sw	t2,44(sp)
 7e8:	8fab002c 	lw	t3,44(sp)
 7ec:	ae2b02c0 	sw	t3,704(s1)
 7f0:	920c01e1 	lbu	t4,481(s0)
 7f4:	3c060000 	lui	a2,0x0
 7f8:	24c60074 	addiu	a2,a2,116
 7fc:	1180000e 	beqz	t4,838 <Title_Main+0xfc>
 800:	27a40038 	addiu	a0,sp,56
 804:	3c020000 	lui	v0,0x0
 808:	24420000 	addiu	v0,v0,0
 80c:	240300ff 	li	v1,255
 810:	240d0001 	li	t5,1
 814:	a04313e0 	sb	v1,5088(v0)
 818:	a04313e1 	sb	v1,5089(v0)
 81c:	ac4d135c 	sw	t5,4956(v0)
 820:	3c0e0000 	lui	t6,0x0
 824:	25ce0000 	addiu	t6,t6,0
 828:	240f01d0 	li	t7,464
 82c:	ae000098 	sw	zero,152(s0)
 830:	ae0f0010 	sw	t7,16(s0)
 834:	ae0e000c 	sw	t6,12(s0)
 838:	8e050000 	lw	a1,0(s0)
 83c:	0c000000 	jal	0 <Title_PrintBuildInfo>
 840:	2407021d 	li	a3,541
 844:	8fbf001c 	lw	ra,28(sp)
 848:	8fb00014 	lw	s0,20(sp)
 84c:	8fb10018 	lw	s1,24(sp)
 850:	03e00008 	jr	ra
 854:	27bd0050 	addiu	sp,sp,80

00000858 <Title_Destroy>:
 858:	27bdffe8 	addiu	sp,sp,-24
 85c:	afbf0014 	sw	ra,20(sp)
 860:	0c000000 	jal	0 <Title_PrintBuildInfo>
 864:	248501d0 	addiu	a1,a0,464
 868:	8fbf0014 	lw	ra,20(sp)
 86c:	27bd0018 	addiu	sp,sp,24
 870:	03e00008 	jr	ra
 874:	00000000 	nop

00000878 <Title_Init>:
 878:	27bdffc8 	addiu	sp,sp,-56
 87c:	3c020000 	lui	v0,0x0
 880:	3c0e0000 	lui	t6,0x0
 884:	25ce0000 	addiu	t6,t6,0
 888:	24420000 	addiu	v0,v0,0
 88c:	afbf0024 	sw	ra,36(sp)
 890:	afb00020 	sw	s0,32(sp)
 894:	01c22823 	subu	a1,t6,v0
 898:	3c060000 	lui	a2,0x0
 89c:	00808025 	move	s0,a0
 8a0:	24c60084 	addiu	a2,a2,132
 8a4:	afa50028 	sw	a1,40(sp)
 8a8:	afa2002c 	sw	v0,44(sp)
 8ac:	0c000000 	jal	0 <Title_PrintBuildInfo>
 8b0:	24070263 	li	a3,611
 8b4:	3c040000 	lui	a0,0x0
 8b8:	ae0200a4 	sw	v0,164(s0)
 8bc:	0c000000 	jal	0 <Title_PrintBuildInfo>
 8c0:	24840094 	addiu	a0,a0,148
 8c4:	8e0400a4 	lw	a0,164(s0)
 8c8:	3c050000 	lui	a1,0x0
 8cc:	24a500bc 	addiu	a1,a1,188
 8d0:	14800005 	bnez	a0,8e8 <Title_Init+0x70>
 8d4:	24060266 	li	a2,614
 8d8:	3c040000 	lui	a0,0x0
 8dc:	0c000000 	jal	0 <Title_PrintBuildInfo>
 8e0:	248400a0 	addiu	a0,a0,160
 8e4:	8e0400a4 	lw	a0,164(s0)
 8e8:	3c070000 	lui	a3,0x0
 8ec:	240f0267 	li	t7,615
 8f0:	afaf0010 	sw	t7,16(sp)
 8f4:	24e700cc 	addiu	a3,a3,204
 8f8:	8fa5002c 	lw	a1,44(sp)
 8fc:	0c000000 	jal	0 <Title_PrintBuildInfo>
 900:	8fa60028 	lw	a2,40(sp)
 904:	3c190000 	lui	t9,0x0
 908:	8f390000 	lw	t9,0(t9)
 90c:	24180001 	li	t8,1
 910:	02002025 	move	a0,s0
 914:	0c000000 	jal	0 <Title_PrintBuildInfo>
 918:	a7380110 	sh	t8,272(t9)
 91c:	260400a8 	addiu	a0,s0,168
 920:	0c000000 	jal	0 <Title_PrintBuildInfo>
 924:	8e050000 	lw	a1,0(s0)
 928:	3c080000 	lui	t0,0x0
 92c:	3c090000 	lui	t1,0x0
 930:	25080000 	addiu	t0,t0,0
 934:	25290000 	addiu	t1,t1,0
 938:	ae080004 	sw	t0,4(s0)
 93c:	ae090008 	sw	t1,8(s0)
 940:	a20001e1 	sb	zero,481(s0)
 944:	240a00ff 	li	t2,255
 948:	3c010000 	lui	at,0x0
 94c:	ac2a1354 	sw	t2,4948(at)
 950:	02002025 	move	a0,s0
 954:	0c000000 	jal	0 <Title_PrintBuildInfo>
 958:	260501d0 	addiu	a1,s0,464
 95c:	240b0014 	li	t3,20
 960:	240c00ff 	li	t4,255
 964:	240dfffd 	li	t5,-3
 968:	240e003c 	li	t6,60
 96c:	a60001dc 	sh	zero,476(s0)
 970:	a60b01d4 	sh	t3,468(s0)
 974:	a60c01d6 	sh	t4,470(s0)
 978:	a60d01d8 	sh	t5,472(s0)
 97c:	a60e01da 	sh	t6,474(s0)
 980:	8fbf0024 	lw	ra,36(sp)
 984:	8fb00020 	lw	s0,32(sp)
 988:	27bd0038 	addiu	sp,sp,56
 98c:	03e00008 	jr	ra
 990:	00000000 	nop
	...
