
build/src/overlays/actors/ovl_En_Holl/z_en_holl.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnHoll_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850150 	sw	a1,336(a0)

00000008 <EnHoll_IsKokiriSetup8>:
   8:	3c030000 	lui	v1,0x0
   c:	24630000 	addiu	v1,v1,0
  10:	8c620000 	lw	v0,0(v1)
  14:	384200ee 	xori	v0,v0,0xee
  18:	2c420001 	sltiu	v0,v0,1
  1c:	10400004 	beqz	v0,30 <EnHoll_IsKokiriSetup8+0x28>
  20:	00000000 	nop
  24:	8c621360 	lw	v0,4960(v1)
  28:	38420008 	xori	v0,v0,0x8
  2c:	2c420001 	sltiu	v0,v0,1
  30:	03e00008 	jr	ra
  34:	00000000 	nop

00000038 <EnHoll_ChooseAction>:
  38:	27bdffe0 	addiu	sp,sp,-32
  3c:	afbf0014 	sw	ra,20(sp)
  40:	8482001c 	lh	v0,28(a0)
  44:	3c0f0000 	lui	t7,0x0
  48:	25ef0020 	addiu	t7,t7,32
  4c:	00021183 	sra	v0,v0,0x6
  50:	30420007 	andi	v0,v0,0x7
  54:	00027080 	sll	t6,v0,0x2
  58:	01cf1821 	addu	v1,t6,t7
  5c:	8c650000 	lw	a1,0(v1)
  60:	afa30018 	sw	v1,24(sp)
  64:	0c000000 	jal	0 <EnHoll_SetupAction>
  68:	afa40020 	sw	a0,32(sp)
  6c:	8fa30018 	lw	v1,24(sp)
  70:	3c180000 	lui	t8,0x0
  74:	27180020 	addiu	t8,t8,32
  78:	10780003 	beq	v1,t8,88 <EnHoll_ChooseAction+0x50>
  7c:	8fa40020 	lw	a0,32(sp)
  80:	10000003 	b	90 <EnHoll_ChooseAction+0x58>
  84:	ac800134 	sw	zero,308(a0)
  88:	241900ff 	li	t9,255
  8c:	a499014c 	sh	t9,332(a0)
  90:	8fbf0014 	lw	ra,20(sp)
  94:	27bd0020 	addiu	sp,sp,32
  98:	03e00008 	jr	ra
  9c:	00000000 	nop

000000a0 <EnHoll_Init>:
  a0:	27bdffe8 	addiu	sp,sp,-24
  a4:	afa5001c 	sw	a1,28(sp)
  a8:	afbf0014 	sw	ra,20(sp)
  ac:	3c050000 	lui	a1,0x0
  b0:	afa40018 	sw	a0,24(sp)
  b4:	0c000000 	jal	0 <EnHoll_SetupAction>
  b8:	24a5003c 	addiu	a1,a1,60
  bc:	0c000000 	jal	0 <EnHoll_SetupAction>
  c0:	8fa40018 	lw	a0,24(sp)
  c4:	8fae0018 	lw	t6,24(sp)
  c8:	a1c0014f 	sb	zero,335(t6)
  cc:	8fbf0014 	lw	ra,20(sp)
  d0:	27bd0018 	addiu	sp,sp,24
  d4:	03e00008 	jr	ra
  d8:	00000000 	nop

000000dc <EnHoll_Destroy>:
  dc:	9482001c 	lhu	v0,28(a0)
  e0:	3c0e0001 	lui	t6,0x1
  e4:	01c57021 	addu	t6,t6,a1
  e8:	8dce1d38 	lw	t6,7480(t6)
  ec:	00021283 	sra	v0,v0,0xa
  f0:	00027900 	sll	t7,v0,0x4
  f4:	01cf1821 	addu	v1,t6,t7
  f8:	84780004 	lh	t8,4(v1)
  fc:	0018c823 	negu	t9,t8
 100:	03e00008 	jr	ra
 104:	a4790004 	sh	t9,4(v1)

00000108 <EnHoll_SwapRooms>:
 108:	3c010001 	lui	at,0x1
 10c:	34211cbc 	ori	at,at,0x1cbc
 110:	00811021 	addu	v0,a0,at
 114:	8c4f0000 	lw	t7,0(v0)
 118:	27bdffe8 	addiu	sp,sp,-24
 11c:	27a50004 	addiu	a1,sp,4
 120:	acaf0000 	sw	t7,0(a1)
 124:	8c4e0004 	lw	t6,4(v0)
 128:	3c010001 	lui	at,0x1
 12c:	34211cd0 	ori	at,at,0x1cd0
 130:	acae0004 	sw	t6,4(a1)
 134:	8c4f0008 	lw	t7,8(v0)
 138:	00811821 	addu	v1,a0,at
 13c:	3c0a0001 	lui	t2,0x1
 140:	acaf0008 	sw	t7,8(a1)
 144:	8c4e000c 	lw	t6,12(v0)
 148:	01445021 	addu	t2,t2,a0
 14c:	3c010001 	lui	at,0x1
 150:	acae000c 	sw	t6,12(a1)
 154:	8c4f0010 	lw	t7,16(v0)
 158:	00240821 	addu	at,at,a0
 15c:	acaf0010 	sw	t7,16(a1)
 160:	8c790000 	lw	t9,0(v1)
 164:	ac590000 	sw	t9,0(v0)
 168:	8c780004 	lw	t8,4(v1)
 16c:	ac580004 	sw	t8,4(v0)
 170:	8c790008 	lw	t9,8(v1)
 174:	ac590008 	sw	t9,8(v0)
 178:	8c78000c 	lw	t8,12(v1)
 17c:	ac58000c 	sw	t8,12(v0)
 180:	8c790010 	lw	t9,16(v1)
 184:	ac590010 	sw	t9,16(v0)
 188:	8ca90000 	lw	t1,0(a1)
 18c:	ac690000 	sw	t1,0(v1)
 190:	8ca80004 	lw	t0,4(a1)
 194:	ac680004 	sw	t0,4(v1)
 198:	8ca90008 	lw	t1,8(a1)
 19c:	ac690008 	sw	t1,8(v1)
 1a0:	8ca8000c 	lw	t0,12(a1)
 1a4:	ac68000c 	sw	t0,12(v1)
 1a8:	8ca90010 	lw	t1,16(a1)
 1ac:	ac690010 	sw	t1,16(v1)
 1b0:	914a1cec 	lbu	t2,7404(t2)
 1b4:	27bd0018 	addiu	sp,sp,24
 1b8:	394b0001 	xori	t3,t2,0x1
 1bc:	03e00008 	jr	ra
 1c0:	a02b1cec 	sb	t3,7404(at)

000001c4 <func_80A58DD4>:
 1c4:	27bdffb0 	addiu	sp,sp,-80
 1c8:	afbf001c 	sw	ra,28(sp)
 1cc:	afb00018 	sw	s0,24(sp)
 1d0:	84ae00a4 	lh	t6,164(a1)
 1d4:	24010006 	li	at,6
 1d8:	00a08025 	move	s0,a1
 1dc:	00803825 	move	a3,a0
 1e0:	15c10003 	bne	t6,at,1f0 <func_80A58DD4+0x2c>
 1e4:	8ca21c44 	lw	v0,7236(a1)
 1e8:	10000002 	b	1f4 <func_80A58DD4+0x30>
 1ec:	24080001 	li	t0,1
 1f0:	00004025 	move	t0,zero
 1f4:	00e02025 	move	a0,a3
 1f8:	27a5003c 	addiu	a1,sp,60
 1fc:	24460024 	addiu	a2,v0,36
 200:	afa70050 	sw	a3,80(sp)
 204:	0c000000 	jal	0 <EnHoll_SetupAction>
 208:	afa80030 	sw	t0,48(sp)
 20c:	c7a40044 	lwc1	$f4,68(sp)
 210:	44803000 	mtc1	zero,$f6
 214:	3c01c248 	lui	at,0xc248
 218:	44814000 	mtc1	at,$f8
 21c:	4606203c 	c.lt.s	$f4,$f6
 220:	8fa70050 	lw	a3,80(sp)
 224:	8fa80030 	lw	t0,48(sp)
 228:	240f0001 	li	t7,1
 22c:	45000003 	bc1f	23c <func_80A58DD4+0x78>
 230:	3c014348 	lui	at,0x4348
 234:	10000002 	b	240 <func_80A58DD4+0x7c>
 238:	a0e0014e 	sb	zero,334(a3)
 23c:	a0ef014e 	sb	t7,334(a3)
 240:	c7ac0040 	lwc1	$f12,64(sp)
 244:	c7a00044 	lwc1	$f0,68(sp)
 248:	460c403c 	c.lt.s	$f8,$f12
 24c:	46000085 	abs.s	$f2,$f0
 250:	45020068 	bc1fl	3f4 <func_80A58DD4+0x230>
 254:	8fbf001c 	lw	ra,28(sp)
 258:	44815000 	mtc1	at,$f10
 25c:	3c0142c8 	lui	at,0x42c8
 260:	c7a0003c 	lwc1	$f0,60(sp)
 264:	460a603c 	c.lt.s	$f12,$f10
 268:	00000000 	nop
 26c:	45020061 	bc1fl	3f4 <func_80A58DD4+0x230>
 270:	8fbf001c 	lw	ra,28(sp)
 274:	44818000 	mtc1	at,$f16
 278:	46000005 	abs.s	$f0,$f0
 27c:	3c190000 	lui	t9,0x0
 280:	4610003c 	c.lt.s	$f0,$f16
 284:	27390048 	addiu	t9,t9,72
 288:	0008c100 	sll	t8,t0,0x4
 28c:	03191021 	addu	v0,t8,t9
 290:	45020058 	bc1fl	3f4 <func_80A58DD4+0x230>
 294:	8fbf001c 	lw	ra,28(sp)
 298:	c4520000 	lwc1	$f18,0(v0)
 29c:	4612103c 	c.lt.s	$f2,$f18
 2a0:	00000000 	nop
 2a4:	45020053 	bc1fl	3f4 <func_80A58DD4+0x230>
 2a8:	8fbf001c 	lw	ra,28(sp)
 2ac:	c4440004 	lwc1	$f4,4(v0)
 2b0:	94e5001c 	lhu	a1,28(a3)
 2b4:	3c010001 	lui	at,0x1
 2b8:	4602203c 	c.lt.s	$f4,$f2
 2bc:	02011821 	addu	v1,s0,at
 2c0:	00052a83 	sra	a1,a1,0xa
 2c4:	4502001b 	bc1fl	334 <func_80A58DD4+0x170>
 2c8:	90ec014e 	lbu	t4,334(a3)
 2cc:	3c010001 	lui	at,0x1
 2d0:	02011821 	addu	v1,s0,at
 2d4:	80691cd0 	lb	t1,7376(v1)
 2d8:	05220046 	bltzl	t1,3f4 <func_80A58DD4+0x230>
 2dc:	8fbf001c 	lw	ra,28(sp)
 2e0:	806a1ced 	lb	t2,7405(v1)
 2e4:	55400043 	bnezl	t2,3f4 <func_80A58DD4+0x230>
 2e8:	8fbf001c 	lw	ra,28(sp)
 2ec:	8c6b1d38 	lw	t3,7480(v1)
 2f0:	90ee014e 	lbu	t6,334(a3)
 2f4:	00056100 	sll	t4,a1,0x4
 2f8:	016c6821 	addu	t5,t3,t4
 2fc:	000e7840 	sll	t7,t6,0x1
 300:	01afc021 	addu	t8,t5,t7
 304:	83190000 	lb	t9,0(t8)
 308:	02002025 	move	a0,s0
 30c:	0c000000 	jal	0 <EnHoll_SetupAction>
 310:	a0f90003 	sb	t9,3(a3)
 314:	3c010001 	lui	at,0x1
 318:	34211cbc 	ori	at,at,0x1cbc
 31c:	02012821 	addu	a1,s0,at
 320:	0c000000 	jal	0 <EnHoll_SetupAction>
 324:	02002025 	move	a0,s0
 328:	10000032 	b	3f4 <func_80A58DD4+0x230>
 32c:	8fbf001c 	lw	ra,28(sp)
 330:	90ec014e 	lbu	t4,334(a3)
 334:	8c691d38 	lw	t1,7480(v1)
 338:	00055100 	sll	t2,a1,0x4
 33c:	398e0001 	xori	t6,t4,0x1
 340:	000e6840 	sll	t5,t6,0x1
 344:	012a5821 	addu	t3,t1,t2
 348:	016d7821 	addu	t7,t3,t5
 34c:	81f80000 	lb	t8,0(t7)
 350:	3c010001 	lui	at,0x1
 354:	34211cbc 	ori	at,at,0x1cbc
 358:	a0f80003 	sb	t8,3(a3)
 35c:	80791cd0 	lb	t9,7376(v1)
 360:	02012821 	addu	a1,s0,at
 364:	02002025 	move	a0,s0
 368:	07230006 	bgezl	t9,384 <func_80A58DD4+0x1c0>
 36c:	c440000c 	lwc1	$f0,12(v0)
 370:	0c000000 	jal	0 <EnHoll_SetupAction>
 374:	80e60003 	lb	a2,3(a3)
 378:	1000001e 	b	3f4 <func_80A58DD4+0x230>
 37c:	8fbf001c 	lw	ra,28(sp)
 380:	c440000c 	lwc1	$f0,12(v0)
 384:	c4480008 	lwc1	$f8,8(v0)
 388:	3c01437f 	lui	at,0x437f
 38c:	44813000 	mtc1	at,$f6
 390:	46004281 	sub.s	$f10,$f8,$f0
 394:	46001481 	sub.s	$f18,$f2,$f0
 398:	460a3403 	div.s	$f16,$f6,$f10
 39c:	46109102 	mul.s	$f4,$f18,$f16
 3a0:	4600220d 	trunc.w.s	$f8,$f4
 3a4:	440a4000 	mfc1	t2,$f8
 3a8:	00000000 	nop
 3ac:	a4ea014c 	sh	t2,332(a3)
 3b0:	84e4014c 	lh	a0,332(a3)
 3b4:	04810003 	bgez	a0,3c4 <func_80A58DD4+0x200>
 3b8:	28810100 	slti	at,a0,256
 3bc:	10000006 	b	3d8 <func_80A58DD4+0x214>
 3c0:	a4e0014c 	sh	zero,332(a3)
 3c4:	14200003 	bnez	at,3d4 <func_80A58DD4+0x210>
 3c8:	00804025 	move	t0,a0
 3cc:	10000001 	b	3d4 <func_80A58DD4+0x210>
 3d0:	240800ff 	li	t0,255
 3d4:	a4e8014c 	sh	t0,332(a3)
 3d8:	80ec0003 	lb	t4,3(a3)
 3dc:	806e1cbc 	lb	t6,7356(v1)
 3e0:	518e0004 	beql	t4,t6,3f4 <func_80A58DD4+0x230>
 3e4:	8fbf001c 	lw	ra,28(sp)
 3e8:	0c000000 	jal	0 <EnHoll_SetupAction>
 3ec:	02002025 	move	a0,s0
 3f0:	8fbf001c 	lw	ra,28(sp)
 3f4:	8fb00018 	lw	s0,24(sp)
 3f8:	27bd0050 	addiu	sp,sp,80
 3fc:	03e00008 	jr	ra
 400:	00000000 	nop

00000404 <func_80A59014>:
 404:	3c060000 	lui	a2,0x0
 408:	8cc60000 	lw	a2,0(a2)
 40c:	27bdffa8 	addiu	sp,sp,-88
 410:	afbf0014 	sw	ra,20(sp)
 414:	afa40058 	sw	a0,88(sp)
 418:	0006302b 	sltu	a2,zero,a2
 41c:	00a03825 	move	a3,a1
 420:	14c00003 	bnez	a2,430 <func_80A59014+0x2c>
 424:	8ca21c44 	lw	v0,7236(a1)
 428:	90a61d6c 	lbu	a2,7532(a1)
 42c:	0006302b 	sltu	a2,zero,a2
 430:	10c00003 	beqz	a2,440 <func_80A59014+0x3c>
 434:	8fa40058 	lw	a0,88(sp)
 438:	10000002 	b	444 <func_80A59014+0x40>
 43c:	24e600e0 	addiu	a2,a3,224
 440:	24460024 	addiu	a2,v0,36
 444:	27a50044 	addiu	a1,sp,68
 448:	0c000000 	jal	0 <EnHoll_SetupAction>
 44c:	afa7005c 	sw	a3,92(sp)
 450:	8fae0058 	lw	t6,88(sp)
 454:	24010006 	li	at,6
 458:	85cf001c 	lh	t7,28(t6)
 45c:	000fc183 	sra	t8,t7,0x6
 460:	33190007 	andi	t9,t8,0x7
 464:	17210004 	bne	t9,at,478 <func_80A59014+0x74>
 468:	3c0142c8 	lui	at,0x42c8
 46c:	44811000 	mtc1	at,$f2
 470:	10000004 	b	484 <func_80A59014+0x80>
 474:	00000000 	nop
 478:	3c014348 	lui	at,0x4348
 47c:	44811000 	mtc1	at,$f2
 480:	00000000 	nop
 484:	0c000000 	jal	0 <EnHoll_SetupAction>
 488:	e7a2003c 	swc1	$f2,60(sp)
 48c:	14400022 	bnez	v0,518 <func_80A59014+0x114>
 490:	c7a2003c 	lwc1	$f2,60(sp)
 494:	3c01c248 	lui	at,0xc248
 498:	44812000 	mtc1	at,$f4
 49c:	c7a00048 	lwc1	$f0,72(sp)
 4a0:	3c014348 	lui	at,0x4348
 4a4:	4600203c 	c.lt.s	$f4,$f0
 4a8:	00000000 	nop
 4ac:	4502003d 	bc1fl	5a4 <func_80A59014+0x1a0>
 4b0:	8fbf0014 	lw	ra,20(sp)
 4b4:	44813000 	mtc1	at,$f6
 4b8:	00000000 	nop
 4bc:	4606003c 	c.lt.s	$f0,$f6
 4c0:	c7a00044 	lwc1	$f0,68(sp)
 4c4:	45020037 	bc1fl	5a4 <func_80A59014+0x1a0>
 4c8:	8fbf0014 	lw	ra,20(sp)
 4cc:	46000005 	abs.s	$f0,$f0
 4d0:	3c0142c8 	lui	at,0x42c8
 4d4:	4602003c 	c.lt.s	$f0,$f2
 4d8:	c7a0004c 	lwc1	$f0,76(sp)
 4dc:	45020031 	bc1fl	5a4 <func_80A59014+0x1a0>
 4e0:	8fbf0014 	lw	ra,20(sp)
 4e4:	44814000 	mtc1	at,$f8
 4e8:	46000005 	abs.s	$f0,$f0
 4ec:	3c014248 	lui	at,0x4248
 4f0:	4608003c 	c.lt.s	$f0,$f8
 4f4:	00000000 	nop
 4f8:	4502002a 	bc1fl	5a4 <func_80A59014+0x1a0>
 4fc:	8fbf0014 	lw	ra,20(sp)
 500:	44815000 	mtc1	at,$f10
 504:	00000000 	nop
 508:	4600503c 	c.lt.s	$f10,$f0
 50c:	00000000 	nop
 510:	45020024 	bc1fl	5a4 <func_80A59014+0x1a0>
 514:	8fbf0014 	lw	ra,20(sp)
 518:	c7b0004c 	lwc1	$f16,76(sp)
 51c:	44809000 	mtc1	zero,$f18
 520:	8fa80058 	lw	t0,88(sp)
 524:	8fa5005c 	lw	a1,92(sp)
 528:	4612803c 	c.lt.s	$f16,$f18
 52c:	9507001c 	lhu	a3,28(t0)
 530:	3c010001 	lui	at,0x1
 534:	00a12821 	addu	a1,a1,at
 538:	45000003 	bc1f	548 <func_80A59014+0x144>
 53c:	00073a83 	sra	a3,a3,0xa
 540:	10000002 	b	54c <func_80A59014+0x148>
 544:	00002025 	move	a0,zero
 548:	24040001 	li	a0,1
 54c:	8ca91d38 	lw	t1,7480(a1)
 550:	00075100 	sll	t2,a3,0x4
 554:	00045840 	sll	t3,a0,0x1
 558:	012a1821 	addu	v1,t1,t2
 55c:	006b6021 	addu	t4,v1,t3
 560:	81860000 	lb	a2,0(t4)
 564:	3c010001 	lui	at,0x1
 568:	34211cbc 	ori	at,at,0x1cbc
 56c:	a1060003 	sb	a2,3(t0)
 570:	80ad1cbc 	lb	t5,7356(a1)
 574:	81070003 	lb	a3,3(t0)
 578:	8fa4005c 	lw	a0,92(sp)
 57c:	11a70008 	beq	t5,a3,5a0 <func_80A59014+0x19c>
 580:	00812821 	addu	a1,a0,at
 584:	0c000000 	jal	0 <EnHoll_SetupAction>
 588:	00e03025 	move	a2,a3
 58c:	10400004 	beqz	v0,5a0 <func_80A59014+0x19c>
 590:	8fa40058 	lw	a0,88(sp)
 594:	3c050000 	lui	a1,0x0
 598:	0c000000 	jal	0 <EnHoll_SetupAction>
 59c:	24a50000 	addiu	a1,a1,0
 5a0:	8fbf0014 	lw	ra,20(sp)
 5a4:	27bd0058 	addiu	sp,sp,88
 5a8:	03e00008 	jr	ra
 5ac:	00000000 	nop

000005b0 <func_80A591C0>:
 5b0:	27bdffc8 	addiu	sp,sp,-56
 5b4:	afbf0024 	sw	ra,36(sp)
 5b8:	afb10020 	sw	s1,32(sp)
 5bc:	afb0001c 	sw	s0,28(sp)
 5c0:	3c0143fa 	lui	at,0x43fa
 5c4:	44813000 	mtc1	at,$f6
 5c8:	c4840090 	lwc1	$f4,144(a0)
 5cc:	c4800094 	lwc1	$f0,148(a0)
 5d0:	00808025 	move	s0,a0
 5d4:	4606203c 	c.lt.s	$f4,$f6
 5d8:	00a08825 	move	s1,a1
 5dc:	8ca81c44 	lw	t0,7236(a1)
 5e0:	3c01442f 	lui	at,0x442f
 5e4:	4500005f 	bc1f	764 <func_80A591C0+0x1b4>
 5e8:	46000005 	abs.s	$f0,$f0
 5ec:	44814000 	mtc1	at,$f8
 5f0:	3c0142be 	lui	at,0x42be
 5f4:	4608003c 	c.lt.s	$f0,$f8
 5f8:	00000000 	nop
 5fc:	4502005a 	bc1fl	768 <func_80A591C0+0x1b8>
 600:	920b014f 	lbu	t3,335(s0)
 604:	44816000 	mtc1	at,$f12
 608:	9483001c 	lhu	v1,28(a0)
 60c:	3c010000 	lui	at,0x0
 610:	460c003c 	c.lt.s	$f0,$f12
 614:	00031a83 	sra	v1,v1,0xa
 618:	240e00ff 	li	t6,255
 61c:	00036900 	sll	t5,v1,0x4
 620:	45000005 	bc1f	638 <func_80A591C0+0x88>
 624:	25040024 	addiu	a0,t0,36
 628:	3c010001 	lui	at,0x1
 62c:	00250821 	addu	at,at,a1
 630:	1000001c 	b	6a4 <func_80A591C0+0xf4>
 634:	a42e1e18 	sh	t6,7704(at)
 638:	c4220030 	lwc1	$f2,48(at)
 63c:	3c010001 	lui	at,0x1
 640:	00310821 	addu	at,at,s1
 644:	4600103c 	c.lt.s	$f2,$f0
 648:	00000000 	nop
 64c:	45020004 	bc1fl	660 <func_80A591C0+0xb0>
 650:	46001281 	sub.s	$f10,$f2,$f0
 654:	10000013 	b	6a4 <func_80A591C0+0xf4>
 658:	a4201e18 	sh	zero,7704(at)
 65c:	46001281 	sub.s	$f10,$f2,$f0
 660:	3c013f00 	lui	at,0x3f00
 664:	44813000 	mtc1	at,$f6
 668:	3c010001 	lui	at,0x1
 66c:	4600540d 	trunc.w.s	$f16,$f10
 670:	00310821 	addu	at,at,s1
 674:	44188000 	mfc1	t8,$f16
 678:	00000000 	nop
 67c:	0018cc00 	sll	t9,t8,0x10
 680:	00194c03 	sra	t1,t9,0x10
 684:	44899000 	mtc1	t1,$f18
 688:	00000000 	nop
 68c:	46809120 	cvt.s.w	$f4,$f18
 690:	46062202 	mul.s	$f8,$f4,$f6
 694:	4600428d 	trunc.w.s	$f10,$f8
 698:	440b5000 	mfc1	t3,$f10
 69c:	00000000 	nop
 6a0:	a42b1e18 	sh	t3,7704(at)
 6a4:	460c003c 	c.lt.s	$f0,$f12
 6a8:	3c010001 	lui	at,0x1
 6ac:	02211021 	addu	v0,s1,at
 6b0:	3c063f80 	lui	a2,0x3f80
 6b4:	45020033 	bc1fl	784 <func_80A591C0+0x1d4>
 6b8:	8fbf0024 	lw	ra,36(sp)
 6bc:	8c4c1d38 	lw	t4,7480(v0)
 6c0:	3c014120 	lui	at,0x4120
 6c4:	44818000 	mtc1	at,$f16
 6c8:	018d7021 	addu	t6,t4,t5
 6cc:	81cf0002 	lb	t7,2(t6)
 6d0:	8e050024 	lw	a1,36(s0)
 6d4:	3c074248 	lui	a3,0x4248
 6d8:	a20f0003 	sb	t7,3(s0)
 6dc:	afa80034 	sw	t0,52(sp)
 6e0:	afa20028 	sw	v0,40(sp)
 6e4:	0c000000 	jal	0 <EnHoll_SetupAction>
 6e8:	e7b00010 	swc1	$f16,16(sp)
 6ec:	3c014120 	lui	at,0x4120
 6f0:	44819000 	mtc1	at,$f18
 6f4:	8fa40034 	lw	a0,52(sp)
 6f8:	8e05002c 	lw	a1,44(s0)
 6fc:	3c063f80 	lui	a2,0x3f80
 700:	3c074248 	lui	a3,0x4248
 704:	e7b20010 	swc1	$f18,16(sp)
 708:	0c000000 	jal	0 <EnHoll_SetupAction>
 70c:	2484002c 	addiu	a0,a0,44
 710:	8fb80028 	lw	t8,40(sp)
 714:	82060003 	lb	a2,3(s0)
 718:	3c010001 	lui	at,0x1
 71c:	83191cbc 	lb	t9,7356(t8)
 720:	34211cbc 	ori	at,at,0x1cbc
 724:	02202025 	move	a0,s1
 728:	53260016 	beql	t9,a2,784 <func_80A591C0+0x1d4>
 72c:	8fbf0024 	lw	ra,36(sp)
 730:	0c000000 	jal	0 <EnHoll_SetupAction>
 734:	02212821 	addu	a1,s1,at
 738:	10400011 	beqz	v0,780 <func_80A591C0+0x1d0>
 73c:	02002025 	move	a0,s0
 740:	3c050000 	lui	a1,0x0
 744:	0c000000 	jal	0 <EnHoll_SetupAction>
 748:	24a50000 	addiu	a1,a1,0
 74c:	24090001 	li	t1,1
 750:	a209014f 	sb	t1,335(s0)
 754:	8faa0034 	lw	t2,52(sp)
 758:	44802000 	mtc1	zero,$f4
 75c:	10000008 	b	780 <func_80A591C0+0x1d0>
 760:	e5440068 	swc1	$f4,104(t2)
 764:	920b014f 	lbu	t3,335(s0)
 768:	3c010001 	lui	at,0x1
 76c:	00310821 	addu	at,at,s1
 770:	51600004 	beqzl	t3,784 <func_80A591C0+0x1d4>
 774:	8fbf0024 	lw	ra,36(sp)
 778:	a4201e18 	sh	zero,7704(at)
 77c:	a200014f 	sb	zero,335(s0)
 780:	8fbf0024 	lw	ra,36(sp)
 784:	8fb0001c 	lw	s0,28(sp)
 788:	8fb10020 	lw	s1,32(sp)
 78c:	03e00008 	jr	ra
 790:	27bd0038 	addiu	sp,sp,56

00000794 <func_80A593A4>:
 794:	27bdffe0 	addiu	sp,sp,-32
 798:	afbf001c 	sw	ra,28(sp)
 79c:	afb00018 	sw	s0,24(sp)
 7a0:	3c0142f0 	lui	at,0x42f0
 7a4:	44813000 	mtc1	at,$f6
 7a8:	c4840090 	lwc1	$f4,144(a0)
 7ac:	00a08025 	move	s0,a1
 7b0:	00803825 	move	a3,a0
 7b4:	4606203c 	c.lt.s	$f4,$f6
 7b8:	00000000 	nop
 7bc:	45020049 	bc1fl	8e4 <func_80A593A4+0x150>
 7c0:	90ef014f 	lbu	t7,335(a3)
 7c4:	c4800094 	lwc1	$f0,148(a0)
 7c8:	3c014348 	lui	at,0x4348
 7cc:	44811000 	mtc1	at,$f2
 7d0:	46000005 	abs.s	$f0,$f0
 7d4:	3c014248 	lui	at,0x4248
 7d8:	4602003c 	c.lt.s	$f0,$f2
 7dc:	00000000 	nop
 7e0:	45020040 	bc1fl	8e4 <func_80A593A4+0x150>
 7e4:	90ef014f 	lbu	t7,335(a3)
 7e8:	44816000 	mtc1	at,$f12
 7ec:	240e00ff 	li	t6,255
 7f0:	3c010000 	lui	at,0x0
 7f4:	460c003c 	c.lt.s	$f0,$f12
 7f8:	00000000 	nop
 7fc:	45020006 	bc1fl	818 <func_80A593A4+0x84>
 800:	46001201 	sub.s	$f8,$f2,$f0
 804:	3c010001 	lui	at,0x1
 808:	00250821 	addu	at,at,a1
 80c:	1000000a 	b	838 <func_80A593A4+0xa4>
 810:	a42e1e18 	sh	t6,7704(at)
 814:	46001201 	sub.s	$f8,$f2,$f0
 818:	c42a0034 	lwc1	$f10,52(at)
 81c:	3c010001 	lui	at,0x1
 820:	00300821 	addu	at,at,s0
 824:	460a4402 	mul.s	$f16,$f8,$f10
 828:	4600848d 	trunc.w.s	$f18,$f16
 82c:	44189000 	mfc1	t8,$f18
 830:	00000000 	nop
 834:	a4381e18 	sh	t8,7704(at)
 838:	4600603c 	c.lt.s	$f12,$f0
 83c:	3c010001 	lui	at,0x1
 840:	02011021 	addu	v0,s0,at
 844:	4502002e 	bc1fl	900 <func_80A593A4+0x16c>
 848:	8fbf001c 	lw	ra,28(sp)
 84c:	44802000 	mtc1	zero,$f4
 850:	c4e60094 	lwc1	$f6,148(a3)
 854:	94e4001c 	lhu	a0,28(a3)
 858:	3c010001 	lui	at,0x1
 85c:	4606203c 	c.lt.s	$f4,$f6
 860:	34211cbc 	ori	at,at,0x1cbc
 864:	24030001 	li	v1,1
 868:	02012821 	addu	a1,s0,at
 86c:	45000003 	bc1f	87c <func_80A593A4+0xe8>
 870:	00042283 	sra	a0,a0,0xa
 874:	10000001 	b	87c <func_80A593A4+0xe8>
 878:	00001825 	move	v1,zero
 87c:	8c591d38 	lw	t9,7480(v0)
 880:	00044100 	sll	t0,a0,0x4
 884:	00035040 	sll	t2,v1,0x1
 888:	03284821 	addu	t1,t9,t0
 88c:	012a5821 	addu	t3,t1,t2
 890:	816c0000 	lb	t4,0(t3)
 894:	02002025 	move	a0,s0
 898:	a0ec0003 	sb	t4,3(a3)
 89c:	804d1cbc 	lb	t5,7356(v0)
 8a0:	80e60003 	lb	a2,3(a3)
 8a4:	51a60016 	beql	t5,a2,900 <func_80A593A4+0x16c>
 8a8:	8fbf001c 	lw	ra,28(sp)
 8ac:	0c000000 	jal	0 <EnHoll_SetupAction>
 8b0:	afa70020 	sw	a3,32(sp)
 8b4:	10400011 	beqz	v0,8fc <func_80A593A4+0x168>
 8b8:	8fa70020 	lw	a3,32(sp)
 8bc:	3c050000 	lui	a1,0x0
 8c0:	24a50000 	addiu	a1,a1,0
 8c4:	00e02025 	move	a0,a3
 8c8:	0c000000 	jal	0 <EnHoll_SetupAction>
 8cc:	afa70020 	sw	a3,32(sp)
 8d0:	8fa70020 	lw	a3,32(sp)
 8d4:	240e0001 	li	t6,1
 8d8:	10000008 	b	8fc <func_80A593A4+0x168>
 8dc:	a0ee014f 	sb	t6,335(a3)
 8e0:	90ef014f 	lbu	t7,335(a3)
 8e4:	3c010001 	lui	at,0x1
 8e8:	00300821 	addu	at,at,s0
 8ec:	51e00004 	beqzl	t7,900 <func_80A593A4+0x16c>
 8f0:	8fbf001c 	lw	ra,28(sp)
 8f4:	a0e0014f 	sb	zero,335(a3)
 8f8:	a4201e18 	sh	zero,7704(at)
 8fc:	8fbf001c 	lw	ra,28(sp)
 900:	8fb00018 	lw	s0,24(sp)
 904:	27bd0020 	addiu	sp,sp,32
 908:	03e00008 	jr	ra
 90c:	00000000 	nop

00000910 <func_80A59520>:
 910:	27bdffe8 	addiu	sp,sp,-24
 914:	afbf0014 	sw	ra,20(sp)
 918:	afa5001c 	sw	a1,28(sp)
 91c:	3c0142f0 	lui	at,0x42f0
 920:	44813000 	mtc1	at,$f6
 924:	c4840090 	lwc1	$f4,144(a0)
 928:	00803825 	move	a3,a0
 92c:	4606203c 	c.lt.s	$f4,$f6
 930:	00000000 	nop
 934:	45020031 	bc1fl	9fc <func_80A59520+0xec>
 938:	8fbf0014 	lw	ra,20(sp)
 93c:	c4820094 	lwc1	$f2,148(a0)
 940:	3c014348 	lui	at,0x4348
 944:	44814000 	mtc1	at,$f8
 948:	46001005 	abs.s	$f0,$f2
 94c:	3c014248 	lui	at,0x4248
 950:	4608003c 	c.lt.s	$f0,$f8
 954:	00000000 	nop
 958:	45020028 	bc1fl	9fc <func_80A59520+0xec>
 95c:	8fbf0014 	lw	ra,20(sp)
 960:	44815000 	mtc1	at,$f10
 964:	8fa2001c 	lw	v0,28(sp)
 968:	3c010001 	lui	at,0x1
 96c:	4600503c 	c.lt.s	$f10,$f0
 970:	00411021 	addu	v0,v0,at
 974:	45020021 	bc1fl	9fc <func_80A59520+0xec>
 978:	8fbf0014 	lw	ra,20(sp)
 97c:	44808000 	mtc1	zero,$f16
 980:	9484001c 	lhu	a0,28(a0)
 984:	3c010001 	lui	at,0x1
 988:	4602803c 	c.lt.s	$f16,$f2
 98c:	24030001 	li	v1,1
 990:	34211cbc 	ori	at,at,0x1cbc
 994:	00042283 	sra	a0,a0,0xa
 998:	45000003 	bc1f	9a8 <func_80A59520+0x98>
 99c:	00000000 	nop
 9a0:	10000001 	b	9a8 <func_80A59520+0x98>
 9a4:	00001825 	move	v1,zero
 9a8:	8c4e1d38 	lw	t6,7480(v0)
 9ac:	00047900 	sll	t7,a0,0x4
 9b0:	0003c840 	sll	t9,v1,0x1
 9b4:	01cfc021 	addu	t8,t6,t7
 9b8:	03194021 	addu	t0,t8,t9
 9bc:	81090000 	lb	t1,0(t0)
 9c0:	a0e90003 	sb	t1,3(a3)
 9c4:	804a1cbc 	lb	t2,7356(v0)
 9c8:	80e60003 	lb	a2,3(a3)
 9cc:	8fa4001c 	lw	a0,28(sp)
 9d0:	11460009 	beq	t2,a2,9f8 <func_80A59520+0xe8>
 9d4:	00812821 	addu	a1,a0,at
 9d8:	0c000000 	jal	0 <EnHoll_SetupAction>
 9dc:	afa70018 	sw	a3,24(sp)
 9e0:	10400005 	beqz	v0,9f8 <func_80A59520+0xe8>
 9e4:	8fa70018 	lw	a3,24(sp)
 9e8:	3c050000 	lui	a1,0x0
 9ec:	24a50000 	addiu	a1,a1,0
 9f0:	0c000000 	jal	0 <EnHoll_SetupAction>
 9f4:	00e02025 	move	a0,a3
 9f8:	8fbf0014 	lw	ra,20(sp)
 9fc:	27bd0018 	addiu	sp,sp,24
 a00:	03e00008 	jr	ra
 a04:	00000000 	nop

00000a08 <func_80A59618>:
 a08:	27bdffb8 	addiu	sp,sp,-72
 a0c:	afbf001c 	sw	ra,28(sp)
 a10:	afb00018 	sw	s0,24(sp)
 a14:	8cae1c44 	lw	t6,7236(a1)
 a18:	00808025 	move	s0,a0
 a1c:	00a03825 	move	a3,a1
 a20:	00a02025 	move	a0,a1
 a24:	afae0044 	sw	t6,68(sp)
 a28:	8605001c 	lh	a1,28(s0)
 a2c:	afa7004c 	sw	a3,76(sp)
 a30:	0c000000 	jal	0 <EnHoll_SetupAction>
 a34:	30a5003f 	andi	a1,a1,0x3f
 a38:	14400009 	bnez	v0,a60 <func_80A59618+0x58>
 a3c:	8fa7004c 	lw	a3,76(sp)
 a40:	920f014f 	lbu	t7,335(s0)
 a44:	3c010001 	lui	at,0x1
 a48:	00270821 	addu	at,at,a3
 a4c:	51e0006e 	beqzl	t7,c08 <func_80A59618+0x200>
 a50:	8fbf001c 	lw	ra,28(sp)
 a54:	a4201e18 	sh	zero,7704(at)
 a58:	1000006a 	b	c04 <func_80A59618+0x1fc>
 a5c:	a200014f 	sb	zero,335(s0)
 a60:	8fa60044 	lw	a2,68(sp)
 a64:	02002025 	move	a0,s0
 a68:	27a50038 	addiu	a1,sp,56
 a6c:	afa7004c 	sw	a3,76(sp)
 a70:	0c000000 	jal	0 <EnHoll_SetupAction>
 a74:	24c60024 	addiu	a2,a2,36
 a78:	3c01c248 	lui	at,0xc248
 a7c:	c7ac003c 	lwc1	$f12,60(sp)
 a80:	44812000 	mtc1	at,$f4
 a84:	c7a00040 	lwc1	$f0,64(sp)
 a88:	8fa7004c 	lw	a3,76(sp)
 a8c:	460c203c 	c.lt.s	$f4,$f12
 a90:	3c014348 	lui	at,0x4348
 a94:	46000085 	abs.s	$f2,$f0
 a98:	45020054 	bc1fl	bec <func_80A59618+0x1e4>
 a9c:	9219014f 	lbu	t9,335(s0)
 aa0:	44817000 	mtc1	at,$f14
 aa4:	c7a00038 	lwc1	$f0,56(sp)
 aa8:	460e603c 	c.lt.s	$f12,$f14
 aac:	00000000 	nop
 ab0:	4502004e 	bc1fl	bec <func_80A59618+0x1e4>
 ab4:	9219014f 	lbu	t9,335(s0)
 ab8:	46000005 	abs.s	$f0,$f0
 abc:	3c0142c8 	lui	at,0x42c8
 ac0:	460e003c 	c.lt.s	$f0,$f14
 ac4:	00000000 	nop
 ac8:	45020048 	bc1fl	bec <func_80A59618+0x1e4>
 acc:	9219014f 	lbu	t9,335(s0)
 ad0:	44813000 	mtc1	at,$f6
 ad4:	3c014248 	lui	at,0x4248
 ad8:	24180001 	li	t8,1
 adc:	4606103c 	c.lt.s	$f2,$f6
 ae0:	00000000 	nop
 ae4:	45020041 	bc1fl	bec <func_80A59618+0x1e4>
 ae8:	9219014f 	lbu	t9,335(s0)
 aec:	44810000 	mtc1	at,$f0
 af0:	a218014f 	sb	t8,335(s0)
 af4:	3c010000 	lui	at,0x0
 af8:	46001201 	sub.s	$f8,$f2,$f0
 afc:	c42a0038 	lwc1	$f10,56(at)
 b00:	240500ff 	li	a1,255
 b04:	3c010001 	lui	at,0x1
 b08:	460a4402 	mul.s	$f16,$f8,$f10
 b0c:	9604001c 	lhu	a0,28(s0)
 b10:	00270821 	addu	at,at,a3
 b14:	00042283 	sra	a0,a0,0xa
 b18:	4600848d 	trunc.w.s	$f18,$f16
 b1c:	44089000 	mfc1	t0,$f18
 b20:	00000000 	nop
 b24:	00a84823 	subu	t1,a1,t0
 b28:	a4291e18 	sh	t1,7704(at)
 b2c:	3c010001 	lui	at,0x1
 b30:	00e11821 	addu	v1,a3,at
 b34:	84621e18 	lh	v0,7704(v1)
 b38:	28410100 	slti	at,v0,256
 b3c:	14200004 	bnez	at,b50 <func_80A59618+0x148>
 b40:	3c010001 	lui	at,0x1
 b44:	00270821 	addu	at,at,a3
 b48:	10000005 	b	b60 <func_80A59618+0x158>
 b4c:	a4251e18 	sh	a1,7704(at)
 b50:	04410003 	bgez	v0,b60 <func_80A59618+0x158>
 b54:	3c010001 	lui	at,0x1
 b58:	00270821 	addu	at,at,a3
 b5c:	a4201e18 	sh	zero,7704(at)
 b60:	4600103c 	c.lt.s	$f2,$f0
 b64:	c7a40040 	lwc1	$f4,64(sp)
 b68:	45020027 	bc1fl	c08 <func_80A59618+0x200>
 b6c:	8fbf001c 	lw	ra,28(sp)
 b70:	44803000 	mtc1	zero,$f6
 b74:	3c010001 	lui	at,0x1
 b78:	34211cbc 	ori	at,at,0x1cbc
 b7c:	4606203c 	c.lt.s	$f4,$f6
 b80:	24020001 	li	v0,1
 b84:	00e12821 	addu	a1,a3,at
 b88:	45000003 	bc1f	b98 <func_80A59618+0x190>
 b8c:	00000000 	nop
 b90:	10000001 	b	b98 <func_80A59618+0x190>
 b94:	00001025 	move	v0,zero
 b98:	8c6a1d38 	lw	t2,7480(v1)
 b9c:	00045900 	sll	t3,a0,0x4
 ba0:	00026840 	sll	t5,v0,0x1
 ba4:	014b6021 	addu	t4,t2,t3
 ba8:	018d7021 	addu	t6,t4,t5
 bac:	81cf0000 	lb	t7,0(t6)
 bb0:	a20f0003 	sb	t7,3(s0)
 bb4:	80781cbc 	lb	t8,7356(v1)
 bb8:	82060003 	lb	a2,3(s0)
 bbc:	53060012 	beql	t8,a2,c08 <func_80A59618+0x200>
 bc0:	8fbf001c 	lw	ra,28(sp)
 bc4:	0c000000 	jal	0 <EnHoll_SetupAction>
 bc8:	00e02025 	move	a0,a3
 bcc:	1040000d 	beqz	v0,c04 <func_80A59618+0x1fc>
 bd0:	02002025 	move	a0,s0
 bd4:	3c050000 	lui	a1,0x0
 bd8:	0c000000 	jal	0 <EnHoll_SetupAction>
 bdc:	24a50000 	addiu	a1,a1,0
 be0:	10000009 	b	c08 <func_80A59618+0x200>
 be4:	8fbf001c 	lw	ra,28(sp)
 be8:	9219014f 	lbu	t9,335(s0)
 bec:	3c010001 	lui	at,0x1
 bf0:	00270821 	addu	at,at,a3
 bf4:	53200004 	beqzl	t9,c08 <func_80A59618+0x200>
 bf8:	8fbf001c 	lw	ra,28(sp)
 bfc:	a4201e18 	sh	zero,7704(at)
 c00:	a200014f 	sb	zero,335(s0)
 c04:	8fbf001c 	lw	ra,28(sp)
 c08:	8fb00018 	lw	s0,24(sp)
 c0c:	27bd0048 	addiu	sp,sp,72
 c10:	03e00008 	jr	ra
 c14:	00000000 	nop

00000c18 <EnHoll_NextAction>:
 c18:	27bdffe0 	addiu	sp,sp,-32
 c1c:	afbf0014 	sw	ra,20(sp)
 c20:	afa40020 	sw	a0,32(sp)
 c24:	0c000000 	jal	0 <EnHoll_SetupAction>
 c28:	afa50024 	sw	a1,36(sp)
 c2c:	14400013 	bnez	v0,c7c <EnHoll_NextAction+0x64>
 c30:	8fa60024 	lw	a2,36(sp)
 c34:	3c010001 	lui	at,0x1
 c38:	00c11021 	addu	v0,a2,at
 c3c:	804e1ced 	lb	t6,7405(v0)
 c40:	3c010001 	lui	at,0x1
 c44:	34211cbc 	ori	at,at,0x1cbc
 c48:	15c0000c 	bnez	t6,c7c <EnHoll_NextAction+0x64>
 c4c:	00c02025 	move	a0,a2
 c50:	00c12821 	addu	a1,a2,at
 c54:	0c000000 	jal	0 <EnHoll_SetupAction>
 c58:	afa2001c 	sw	v0,28(sp)
 c5c:	8fa2001c 	lw	v0,28(sp)
 c60:	8fb80020 	lw	t8,32(sp)
 c64:	844f1e18 	lh	t7,7704(v0)
 c68:	15e00002 	bnez	t7,c74 <EnHoll_NextAction+0x5c>
 c6c:	00000000 	nop
 c70:	a300014f 	sb	zero,335(t8)
 c74:	0c000000 	jal	0 <EnHoll_SetupAction>
 c78:	8fa40020 	lw	a0,32(sp)
 c7c:	8fbf0014 	lw	ra,20(sp)
 c80:	27bd0020 	addiu	sp,sp,32
 c84:	03e00008 	jr	ra
 c88:	00000000 	nop

00000c8c <EnHoll_Update>:
 c8c:	27bdffe8 	addiu	sp,sp,-24
 c90:	afbf0014 	sw	ra,20(sp)
 c94:	8c990150 	lw	t9,336(a0)
 c98:	0320f809 	jalr	t9
 c9c:	00000000 	nop
 ca0:	8fbf0014 	lw	ra,20(sp)
 ca4:	27bd0018 	addiu	sp,sp,24
 ca8:	03e00008 	jr	ra
 cac:	00000000 	nop

00000cb0 <EnHoll_Draw>:
 cb0:	27bdffb8 	addiu	sp,sp,-72
 cb4:	afbf0014 	sw	ra,20(sp)
 cb8:	afa40048 	sw	a0,72(sp)
 cbc:	afa5004c 	sw	a1,76(sp)
 cc0:	848f014c 	lh	t7,332(a0)
 cc4:	3c060000 	lui	a2,0x0
 cc8:	24c60000 	addiu	a2,a2,0
 ccc:	11e0004c 	beqz	t7,e00 <EnHoll_Draw+0x150>
 cd0:	27a40028 	addiu	a0,sp,40
 cd4:	8ca50000 	lw	a1,0(a1)
 cd8:	24070325 	li	a3,805
 cdc:	0c000000 	jal	0 <EnHoll_SetupAction>
 ce0:	afa50038 	sw	a1,56(sp)
 ce4:	8fb90048 	lw	t9,72(sp)
 ce8:	240100ff 	li	at,255
 cec:	8fa90038 	lw	t1,56(sp)
 cf0:	8728014c 	lh	t0,332(t9)
 cf4:	8faa0038 	lw	t2,56(sp)
 cf8:	00002825 	move	a1,zero
 cfc:	55010005 	bnel	t0,at,d14 <EnHoll_Draw+0x64>
 d00:	8d4702d0 	lw	a3,720(t2)
 d04:	8d2702c0 	lw	a3,704(t1)
 d08:	10000002 	b	d14 <EnHoll_Draw+0x64>
 d0c:	24050025 	li	a1,37
 d10:	8d4702d0 	lw	a3,720(t2)
 d14:	0c000000 	jal	0 <EnHoll_SetupAction>
 d18:	00e02025 	move	a0,a3
 d1c:	8fab0048 	lw	t3,72(sp)
 d20:	00403825 	move	a3,v0
 d24:	3c010000 	lui	at,0x0
 d28:	916c014e 	lbu	t4,334(t3)
 d2c:	24050001 	li	a1,1
 d30:	55800006 	bnezl	t4,d4c <EnHoll_Draw+0x9c>
 d34:	3c0dda38 	lui	t5,0xda38
 d38:	c42c003c 	lwc1	$f12,60(at)
 d3c:	0c000000 	jal	0 <EnHoll_SetupAction>
 d40:	afa20040 	sw	v0,64(sp)
 d44:	8fa70040 	lw	a3,64(sp)
 d48:	3c0dda38 	lui	t5,0xda38
 d4c:	35ad0003 	ori	t5,t5,0x3
 d50:	00e01825 	move	v1,a3
 d54:	ac6d0000 	sw	t5,0(v1)
 d58:	8fae004c 	lw	t6,76(sp)
 d5c:	24e70008 	addiu	a3,a3,8
 d60:	3c050000 	lui	a1,0x0
 d64:	8dc40000 	lw	a0,0(t6)
 d68:	afa70040 	sw	a3,64(sp)
 d6c:	afa30024 	sw	v1,36(sp)
 d70:	24a50010 	addiu	a1,a1,16
 d74:	0c000000 	jal	0 <EnHoll_SetupAction>
 d78:	24060338 	li	a2,824
 d7c:	8fa30024 	lw	v1,36(sp)
 d80:	8fa70040 	lw	a3,64(sp)
 d84:	3c0ffa00 	lui	t7,0xfa00
 d88:	ac620004 	sw	v0,4(v1)
 d8c:	00e01025 	move	v0,a3
 d90:	ac4f0000 	sw	t7,0(v0)
 d94:	8fb80048 	lw	t8,72(sp)
 d98:	24e70008 	addiu	a3,a3,8
 d9c:	3c0a0000 	lui	t2,0x0
 da0:	9308014d 	lbu	t0,333(t8)
 da4:	254a00a8 	addiu	t2,t2,168
 da8:	3c09de00 	lui	t1,0xde00
 dac:	ac480004 	sw	t0,4(v0)
 db0:	00e01025 	move	v0,a3
 db4:	ac490000 	sw	t1,0(v0)
 db8:	ac4a0004 	sw	t2,4(v0)
 dbc:	8fab0048 	lw	t3,72(sp)
 dc0:	240100ff 	li	at,255
 dc4:	3c060000 	lui	a2,0x0
 dc8:	856c014c 	lh	t4,332(t3)
 dcc:	24e70008 	addiu	a3,a3,8
 dd0:	24c60020 	addiu	a2,a2,32
 dd4:	15810004 	bne	t4,at,de8 <EnHoll_Draw+0x138>
 dd8:	27a40028 	addiu	a0,sp,40
 ddc:	8fad0038 	lw	t5,56(sp)
 de0:	10000003 	b	df0 <EnHoll_Draw+0x140>
 de4:	ada702c0 	sw	a3,704(t5)
 de8:	8fae0038 	lw	t6,56(sp)
 dec:	adc702d0 	sw	a3,720(t6)
 df0:	8faf004c 	lw	t7,76(sp)
 df4:	2407033f 	li	a3,831
 df8:	0c000000 	jal	0 <EnHoll_SetupAction>
 dfc:	8de50000 	lw	a1,0(t7)
 e00:	8fbf0014 	lw	ra,20(sp)
 e04:	27bd0048 	addiu	sp,sp,72
 e08:	03e00008 	jr	ra
 e0c:	00000000 	nop
