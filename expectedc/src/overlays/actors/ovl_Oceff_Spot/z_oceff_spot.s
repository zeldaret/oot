
build/src/overlays/actors/ovl_Oceff_Spot/z_oceff_spot.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <OceffSpot_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac85017c 	sw	a1,380(a0)

00000008 <OceffSpot_Init>:
   8:	27bdffc0 	addiu	sp,sp,-64
   c:	afa50044 	sw	a1,68(sp)
  10:	afbf002c 	sw	ra,44(sp)
  14:	afb00028 	sw	s0,40(sp)
  18:	3c050000 	lui	a1,0x0
  1c:	00808025 	move	s0,a0
  20:	0c000000 	jal	0 <OceffSpot_SetupAction>
  24:	24a506f8 	addiu	a1,a1,1784
  28:	3c050000 	lui	a1,0x0
  2c:	24a50000 	addiu	a1,a1,0
  30:	0c000000 	jal	0 <OceffSpot_SetupAction>
  34:	02002025 	move	a0,s0
  38:	c6040024 	lwc1	$f4,36(s0)
  3c:	c6080028 	lwc1	$f8,40(s0)
  40:	c610002c 	lwc1	$f16,44(s0)
  44:	4600218d 	trunc.w.s	$f6,$f4
  48:	26040150 	addiu	a0,s0,336
  4c:	afa40030 	sw	a0,48(sp)
  50:	4600428d 	trunc.w.s	$f10,$f8
  54:	44053000 	mfc1	a1,$f6
  58:	afa0001c 	sw	zero,28(sp)
  5c:	4600848d 	trunc.w.s	$f18,$f16
  60:	44065000 	mfc1	a2,$f10
  64:	00052c00 	sll	a1,a1,0x10
  68:	00052c03 	sra	a1,a1,0x10
  6c:	44079000 	mfc1	a3,$f18
  70:	00063400 	sll	a2,a2,0x10
  74:	00063403 	sra	a2,a2,0x10
  78:	00073c00 	sll	a3,a3,0x10
  7c:	00073c03 	sra	a3,a3,0x10
  80:	afa00018 	sw	zero,24(sp)
  84:	afa00014 	sw	zero,20(sp)
  88:	0c000000 	jal	0 <OceffSpot_SetupAction>
  8c:	afa00010 	sw	zero,16(sp)
  90:	8fa40044 	lw	a0,68(sp)
  94:	8fa60030 	lw	a2,48(sp)
  98:	248507a8 	addiu	a1,a0,1960
  9c:	0c000000 	jal	0 <OceffSpot_SetupAction>
  a0:	afa50034 	sw	a1,52(sp)
  a4:	c6040024 	lwc1	$f4,36(s0)
  a8:	c6080028 	lwc1	$f8,40(s0)
  ac:	c610002c 	lwc1	$f16,44(s0)
  b0:	4600218d 	trunc.w.s	$f6,$f4
  b4:	ae02014c 	sw	v0,332(s0)
  b8:	26040164 	addiu	a0,s0,356
  bc:	4600428d 	trunc.w.s	$f10,$f8
  c0:	44053000 	mfc1	a1,$f6
  c4:	afa40030 	sw	a0,48(sp)
  c8:	4600848d 	trunc.w.s	$f18,$f16
  cc:	44065000 	mfc1	a2,$f10
  d0:	00052c00 	sll	a1,a1,0x10
  d4:	00052c03 	sra	a1,a1,0x10
  d8:	44079000 	mfc1	a3,$f18
  dc:	00063400 	sll	a2,a2,0x10
  e0:	00063403 	sra	a2,a2,0x10
  e4:	00073c00 	sll	a3,a3,0x10
  e8:	00073c03 	sra	a3,a3,0x10
  ec:	afa0001c 	sw	zero,28(sp)
  f0:	afa00018 	sw	zero,24(sp)
  f4:	afa00014 	sw	zero,20(sp)
  f8:	0c000000 	jal	0 <OceffSpot_SetupAction>
  fc:	afa00010 	sw	zero,16(sp)
 100:	8fa40044 	lw	a0,68(sp)
 104:	8fa50034 	lw	a1,52(sp)
 108:	0c000000 	jal	0 <OceffSpot_SetupAction>
 10c:	8fa60030 	lw	a2,48(sp)
 110:	ae020160 	sw	v0,352(s0)
 114:	3c0a0000 	lui	t2,0x0
 118:	8d4a0000 	lw	t2,0(t2)
 11c:	44804000 	mtc1	zero,$f8
 120:	3c010000 	lui	at,0x0
 124:	854b04b2 	lh	t3,1202(t2)
 128:	11600005 	beqz	t3,140 <OceffSpot_Init+0x138>
 12c:	00000000 	nop
 130:	3c010000 	lui	at,0x0
 134:	c4240090 	lwc1	$f4,144(at)
 138:	10000003 	b	148 <OceffSpot_Init+0x140>
 13c:	e6040054 	swc1	$f4,84(s0)
 140:	c4260094 	lwc1	$f6,148(at)
 144:	e6060054 	swc1	$f6,84(s0)
 148:	e6080174 	swc1	$f8,372(s0)
 14c:	8fbf002c 	lw	ra,44(sp)
 150:	8fb00028 	lw	s0,40(sp)
 154:	27bd0040 	addiu	sp,sp,64
 158:	03e00008 	jr	ra
 15c:	00000000 	nop

00000160 <OceffSpot_Destroy>:
 160:	27bdffd0 	addiu	sp,sp,-48
 164:	afbf001c 	sw	ra,28(sp)
 168:	afb00018 	sw	s0,24(sp)
 16c:	afa40030 	sw	a0,48(sp)
 170:	8cae1c44 	lw	t6,7236(a1)
 174:	8faf0030 	lw	t7,48(sp)
 178:	00a08025 	move	s0,a1
 17c:	00a02025 	move	a0,a1
 180:	afae0024 	sw	t6,36(sp)
 184:	24a507a8 	addiu	a1,a1,1960
 188:	8de6014c 	lw	a2,332(t7)
 18c:	0c000000 	jal	0 <OceffSpot_SetupAction>
 190:	afa50020 	sw	a1,32(sp)
 194:	8fb80030 	lw	t8,48(sp)
 198:	8fa50020 	lw	a1,32(sp)
 19c:	02002025 	move	a0,s0
 1a0:	0c000000 	jal	0 <OceffSpot_SetupAction>
 1a4:	8f060160 	lw	a2,352(t8)
 1a8:	0c000000 	jal	0 <OceffSpot_SetupAction>
 1ac:	02002025 	move	a0,s0
 1b0:	3c190000 	lui	t9,0x0
 1b4:	873913c8 	lh	t9,5064(t9)
 1b8:	53200009 	beqzl	t9,1e0 <OceffSpot_Destroy+0x80>
 1bc:	8fbf001c 	lw	ra,28(sp)
 1c0:	8e081c40 	lw	t0,7232(s0)
 1c4:	8fa20024 	lw	v0,36(sp)
 1c8:	51000005 	beqzl	t0,1e0 <OceffSpot_Destroy+0x80>
 1cc:	8fbf001c 	lw	ra,28(sp)
 1d0:	90490692 	lbu	t1,1682(v0)
 1d4:	352a0040 	ori	t2,t1,0x40
 1d8:	a04a0692 	sb	t2,1682(v0)
 1dc:	8fbf001c 	lw	ra,28(sp)
 1e0:	8fb00018 	lw	s0,24(sp)
 1e4:	27bd0030 	addiu	sp,sp,48
 1e8:	03e00008 	jr	ra
 1ec:	00000000 	nop

000001f0 <OceffSpot_End>:
 1f0:	27bdffe8 	addiu	sp,sp,-24
 1f4:	afbf0014 	sw	ra,20(sp)
 1f8:	c4800174 	lwc1	$f0,372(a0)
 1fc:	44802000 	mtc1	zero,$f4
 200:	3c010000 	lui	at,0x0
 204:	4600203c 	c.lt.s	$f4,$f0
 208:	00000000 	nop
 20c:	45000005 	bc1f	224 <OceffSpot_End+0x34>
 210:	00000000 	nop
 214:	c4260098 	lwc1	$f6,152(at)
 218:	46060201 	sub.s	$f8,$f0,$f6
 21c:	10000034 	b	2f0 <OceffSpot_End+0x100>
 220:	e4880174 	swc1	$f8,372(a0)
 224:	0c000000 	jal	0 <OceffSpot_SetupAction>
 228:	afa5001c 	sw	a1,28(sp)
 22c:	3c0e0000 	lui	t6,0x0
 230:	95ce0000 	lhu	t6,0(t6)
 234:	24010190 	li	at,400
 238:	8fa5001c 	lw	a1,28(sp)
 23c:	11c10020 	beq	t6,at,2c0 <OceffSpot_End+0xd0>
 240:	240a0004 	li	t2,4
 244:	3c010001 	lui	at,0x1
 248:	00a11021 	addu	v0,a1,at
 24c:	844f04e6 	lh	t7,1254(v0)
 250:	3c060000 	lui	a2,0x0
 254:	24c60000 	addiu	a2,a2,0
 258:	55e0001a 	bnezl	t7,2c4 <OceffSpot_End+0xd4>
 25c:	3c010001 	lui	at,0x1
 260:	94d813fa 	lhu	t8,5114(a2)
 264:	24030001 	li	v1,1
 268:	3319000f 	andi	t9,t8,0xf
 26c:	50790015 	beql	v1,t9,2c4 <OceffSpot_End+0xd4>
 270:	3c010001 	lui	at,0x1
 274:	944804c8 	lhu	t0,1224(v0)
 278:	24010031 	li	at,49
 27c:	3c040000 	lui	a0,0x0
 280:	15010005 	bne	t0,at,298 <OceffSpot_End+0xa8>
 284:	24840000 	addiu	a0,a0,0
 288:	944904c6 	lhu	t1,1222(v0)
 28c:	24010008 	li	at,8
 290:	51210018 	beql	t1,at,2f4 <OceffSpot_End+0x104>
 294:	8fbf0014 	lw	ra,20(sp)
 298:	0c000000 	jal	0 <OceffSpot_SetupAction>
 29c:	a4c31422 	sh	v1,5154(a2)
 2a0:	3c040000 	lui	a0,0x0
 2a4:	0c000000 	jal	0 <OceffSpot_SetupAction>
 2a8:	24840008 	addiu	a0,a0,8
 2ac:	3c040000 	lui	a0,0x0
 2b0:	0c000000 	jal	0 <OceffSpot_SetupAction>
 2b4:	24840028 	addiu	a0,a0,40
 2b8:	1000000e 	b	2f4 <OceffSpot_End+0x104>
 2bc:	8fbf0014 	lw	ra,20(sp)
 2c0:	3c010001 	lui	at,0x1
 2c4:	00250821 	addu	at,at,a1
 2c8:	3c040000 	lui	a0,0x0
 2cc:	a42a04c6 	sh	t2,1222(at)
 2d0:	0c000000 	jal	0 <OceffSpot_SetupAction>
 2d4:	2484002c 	addiu	a0,a0,44
 2d8:	3c040000 	lui	a0,0x0
 2dc:	0c000000 	jal	0 <OceffSpot_SetupAction>
 2e0:	24840034 	addiu	a0,a0,52
 2e4:	3c040000 	lui	a0,0x0
 2e8:	0c000000 	jal	0 <OceffSpot_SetupAction>
 2ec:	24840050 	addiu	a0,a0,80
 2f0:	8fbf0014 	lw	ra,20(sp)
 2f4:	27bd0018 	addiu	sp,sp,24
 2f8:	03e00008 	jr	ra
 2fc:	00000000 	nop

00000300 <OceffSpot_Wait>:
 300:	27bdffe8 	addiu	sp,sp,-24
 304:	afbf0014 	sw	ra,20(sp)
 308:	afa5001c 	sw	a1,28(sp)
 30c:	94820178 	lhu	v0,376(a0)
 310:	3c050000 	lui	a1,0x0
 314:	18400003 	blez	v0,324 <OceffSpot_Wait+0x24>
 318:	244effff 	addiu	t6,v0,-1
 31c:	10000003 	b	32c <OceffSpot_Wait+0x2c>
 320:	a48e0178 	sh	t6,376(a0)
 324:	0c000000 	jal	0 <OceffSpot_SetupAction>
 328:	24a50000 	addiu	a1,a1,0
 32c:	8fbf0014 	lw	ra,20(sp)
 330:	27bd0018 	addiu	sp,sp,24
 334:	03e00008 	jr	ra
 338:	00000000 	nop

0000033c <OceffSpot_GrowCylinder>:
 33c:	27bdffe8 	addiu	sp,sp,-24
 340:	afbf0014 	sw	ra,20(sp)
 344:	afa5001c 	sw	a1,28(sp)
 348:	3c013f80 	lui	at,0x3f80
 34c:	44812000 	mtc1	at,$f4
 350:	c4800174 	lwc1	$f0,372(a0)
 354:	3c050000 	lui	a1,0x0
 358:	3c010000 	lui	at,0x0
 35c:	4604003c 	c.lt.s	$f0,$f4
 360:	24a50000 	addiu	a1,a1,0
 364:	45000005 	bc1f	37c <OceffSpot_GrowCylinder+0x40>
 368:	00000000 	nop
 36c:	c426009c 	lwc1	$f6,156(at)
 370:	46060200 	add.s	$f8,$f0,$f6
 374:	10000006 	b	390 <OceffSpot_GrowCylinder+0x54>
 378:	e4880174 	swc1	$f8,372(a0)
 37c:	0c000000 	jal	0 <OceffSpot_SetupAction>
 380:	afa40018 	sw	a0,24(sp)
 384:	8fa40018 	lw	a0,24(sp)
 388:	240e003c 	li	t6,60
 38c:	a48e0178 	sh	t6,376(a0)
 390:	8fbf0014 	lw	ra,20(sp)
 394:	27bd0018 	addiu	sp,sp,24
 398:	03e00008 	jr	ra
 39c:	00000000 	nop

000003a0 <OceffSpot_Update>:
 3a0:	27bdffa8 	addiu	sp,sp,-88
 3a4:	afbf002c 	sw	ra,44(sp)
 3a8:	afb00028 	sw	s0,40(sp)
 3ac:	afa5005c 	sw	a1,92(sp)
 3b0:	8caf1c44 	lw	t7,7236(a1)
 3b4:	3c010000 	lui	at,0x0
 3b8:	c42600a0 	lwc1	$f6,160(at)
 3bc:	afaf004c 	sw	t7,76(sp)
 3c0:	c4840174 	lwc1	$f4,372(a0)
 3c4:	00808025 	move	s0,a0
 3c8:	46062302 	mul.s	$f12,$f4,$f6
 3cc:	0c000000 	jal	0 <OceffSpot_SetupAction>
 3d0:	00000000 	nop
 3d4:	3c013f80 	lui	at,0x3f80
 3d8:	44814000 	mtc1	at,$f8
 3dc:	3c013f00 	lui	at,0x3f00
 3e0:	44818000 	mtc1	at,$f16
 3e4:	46004281 	sub.s	$f10,$f8,$f0
 3e8:	02002025 	move	a0,s0
 3ec:	8fa5005c 	lw	a1,92(sp)
 3f0:	46105082 	mul.s	$f2,$f10,$f16
 3f4:	e7a20048 	swc1	$f2,72(sp)
 3f8:	8e19017c 	lw	t9,380(s0)
 3fc:	0320f809 	jalr	t9
 400:	00000000 	nop
 404:	3c010000 	lui	at,0x0
 408:	c7a20048 	lwc1	$f2,72(sp)
 40c:	c43200a4 	lwc1	$f18,164(at)
 410:	3c0140a0 	lui	at,0x40a0
 414:	44813000 	mtc1	at,$f6
 418:	46029302 	mul.s	$f12,$f18,$f2
 41c:	3c014000 	lui	at,0x4000
 420:	44815000 	mtc1	at,$f10
 424:	c6000174 	lwc1	$f0,372(s0)
 428:	3c013f00 	lui	at,0x3f00
 42c:	44819000 	mtc1	at,$f18
 430:	46005401 	sub.s	$f16,$f10,$f0
 434:	e60c0058 	swc1	$f12,88(s0)
 438:	e60c0050 	swc1	$f12,80(s0)
 43c:	8fb8004c 	lw	t8,76(sp)
 440:	46008082 	mul.s	$f2,$f16,$f0
 444:	3c010000 	lui	at,0x0
 448:	8f0a0024 	lw	t2,36(t8)
 44c:	3c073e4c 	lui	a3,0x3e4c
 450:	34e7cccd 	ori	a3,a3,0xcccd
 454:	ae0a0024 	sw	t2,36(s0)
 458:	8f090028 	lw	t1,40(t8)
 45c:	3c06445c 	lui	a2,0x445c
 460:	ae090028 	sw	t1,40(s0)
 464:	c6040028 	lwc1	$f4,40(s0)
 468:	8f0a002c 	lw	t2,44(t8)
 46c:	46062200 	add.s	$f8,$f4,$f6
 470:	46121102 	mul.s	$f4,$f2,$f18
 474:	ae0a002c 	sw	t2,44(s0)
 478:	e6080028 	swc1	$f8,40(s0)
 47c:	c42600a8 	lwc1	$f6,168(at)
 480:	e7a20048 	swc1	$f2,72(sp)
 484:	8fa4005c 	lw	a0,92(sp)
 488:	44052000 	mfc1	a1,$f4
 48c:	0c000000 	jal	0 <OceffSpot_SetupAction>
 490:	e7a60010 	swc1	$f6,16(sp)
 494:	c6100028 	lwc1	$f16,40(s0)
 498:	c6080024 	lwc1	$f8,36(s0)
 49c:	3c01425c 	lui	at,0x425c
 4a0:	4600848d 	trunc.w.s	$f18,$f16
 4a4:	c7a20048 	lwc1	$f2,72(sp)
 4a8:	26040150 	addiu	a0,s0,336
 4ac:	4600428d 	trunc.w.s	$f10,$f8
 4b0:	440d9000 	mfc1	t5,$f18
 4b4:	44814000 	mtc1	at,$f8
 4b8:	3c01437f 	lui	at,0x437f
 4bc:	000d7400 	sll	t6,t5,0x10
 4c0:	000e7c03 	sra	t7,t6,0x10
 4c4:	448f2000 	mtc1	t7,$f4
 4c8:	44055000 	mfc1	a1,$f10
 4cc:	c612002c 	lwc1	$f18,44(s0)
 4d0:	468021a0 	cvt.s.w	$f6,$f4
 4d4:	00052c00 	sll	a1,a1,0x10
 4d8:	00052c03 	sra	a1,a1,0x10
 4dc:	4600910d 	trunc.w.s	$f4,$f18
 4e0:	46083280 	add.s	$f10,$f6,$f8
 4e4:	44813000 	mtc1	at,$f6
 4e8:	3c014348 	lui	at,0x4348
 4ec:	44072000 	mfc1	a3,$f4
 4f0:	4600540d 	trunc.w.s	$f16,$f10
 4f4:	46023202 	mul.s	$f8,$f6,$f2
 4f8:	00073c00 	sll	a3,a3,0x10
 4fc:	00073c03 	sra	a3,a3,0x10
 500:	44068000 	mfc1	a2,$f16
 504:	44818000 	mtc1	at,$f16
 508:	3c0142c8 	lui	at,0x42c8
 50c:	44813000 	mtc1	at,$f6
 510:	46028482 	mul.s	$f18,$f16,$f2
 514:	4600428d 	trunc.w.s	$f10,$f8
 518:	00063400 	sll	a2,a2,0x10
 51c:	46023202 	mul.s	$f8,$f6,$f2
 520:	00063403 	sra	a2,a2,0x10
 524:	44025000 	mfc1	v0,$f10
 528:	00000000 	nop
 52c:	304200ff 	andi	v0,v0,0xff
 530:	4600910d 	trunc.w.s	$f4,$f18
 534:	afa20010 	sw	v0,16(sp)
 538:	afa20014 	sw	v0,20(sp)
 53c:	4600428d 	trunc.w.s	$f10,$f8
 540:	44032000 	mfc1	v1,$f4
 544:	afa2003c 	sw	v0,60(sp)
 548:	44085000 	mfc1	t0,$f10
 54c:	306300ff 	andi	v1,v1,0xff
 550:	afa30018 	sw	v1,24(sp)
 554:	00084400 	sll	t0,t0,0x10
 558:	00084403 	sra	t0,t0,0x10
 55c:	afa8001c 	sw	t0,28(sp)
 560:	afa80034 	sw	t0,52(sp)
 564:	0c000000 	jal	0 <OceffSpot_SetupAction>
 568:	afa30038 	sw	v1,56(sp)
 56c:	8fac004c 	lw	t4,76(sp)
 570:	0c000000 	jal	0 <OceffSpot_SetupAction>
 574:	858400b6 	lh	a0,182(t4)
 578:	8fad004c 	lw	t5,76(sp)
 57c:	e7a00040 	swc1	$f0,64(sp)
 580:	0c000000 	jal	0 <OceffSpot_SetupAction>
 584:	85a400b6 	lh	a0,182(t5)
 588:	c6040024 	lwc1	$f4,36(s0)
 58c:	3c0141a0 	lui	at,0x41a0
 590:	44811000 	mtc1	at,$f2
 594:	4600218d 	trunc.w.s	$f6,$f4
 598:	c7b00040 	lwc1	$f16,64(sp)
 59c:	8fa2003c 	lw	v0,60(sp)
 5a0:	26040164 	addiu	a0,s0,356
 5a4:	440f3000 	mfc1	t7,$f6
 5a8:	c6060028 	lwc1	$f6,40(s0)
 5ac:	46028482 	mul.s	$f18,$f16,$f2
 5b0:	000fcc00 	sll	t9,t7,0x10
 5b4:	0019c403 	sra	t8,t9,0x10
 5b8:	44984000 	mtc1	t8,$f8
 5bc:	00000000 	nop
 5c0:	468042a0 	cvt.s.w	$f10,$f8
 5c4:	4600320d 	trunc.w.s	$f8,$f6
 5c8:	46020182 	mul.s	$f6,$f0,$f2
 5cc:	460a9400 	add.s	$f16,$f18,$f10
 5d0:	440b4000 	mfc1	t3,$f8
 5d4:	c608002c 	lwc1	$f8,44(s0)
 5d8:	afa20014 	sw	v0,20(sp)
 5dc:	000b6400 	sll	t4,t3,0x10
 5e0:	000c6c03 	sra	t5,t4,0x10
 5e4:	448d9000 	mtc1	t5,$f18
 5e8:	4600810d 	trunc.w.s	$f4,$f16
 5ec:	8fac0034 	lw	t4,52(sp)
 5f0:	8fab0038 	lw	t3,56(sp)
 5f4:	468092a0 	cvt.s.w	$f10,$f18
 5f8:	44052000 	mfc1	a1,$f4
 5fc:	afa20010 	sw	v0,16(sp)
 600:	afac001c 	sw	t4,28(sp)
 604:	00052c00 	sll	a1,a1,0x10
 608:	4600448d 	trunc.w.s	$f18,$f8
 60c:	00052c03 	sra	a1,a1,0x10
 610:	afab0018 	sw	t3,24(sp)
 614:	46025400 	add.s	$f16,$f10,$f2
 618:	44199000 	mfc1	t9,$f18
 61c:	00000000 	nop
 620:	0019c400 	sll	t8,t9,0x10
 624:	00184c03 	sra	t1,t8,0x10
 628:	44895000 	mtc1	t1,$f10
 62c:	4600810d 	trunc.w.s	$f4,$f16
 630:	46805420 	cvt.s.w	$f16,$f10
 634:	44062000 	mfc1	a2,$f4
 638:	00000000 	nop
 63c:	00063400 	sll	a2,a2,0x10
 640:	00063403 	sra	a2,a2,0x10
 644:	46103100 	add.s	$f4,$f6,$f16
 648:	4600220d 	trunc.w.s	$f8,$f4
 64c:	44074000 	mfc1	a3,$f8
 650:	00000000 	nop
 654:	00073c00 	sll	a3,a3,0x10
 658:	0c000000 	jal	0 <OceffSpot_SetupAction>
 65c:	00073c03 	sra	a3,a3,0x10
 660:	8fbf002c 	lw	ra,44(sp)
 664:	8fb00028 	lw	s0,40(sp)
 668:	27bd0058 	addiu	sp,sp,88
 66c:	03e00008 	jr	ra
 670:	00000000 	nop

00000674 <OceffSpot_Draw>:
 674:	27bdff90 	addiu	sp,sp,-112
 678:	afbf003c 	sw	ra,60(sp)
 67c:	afb10038 	sw	s1,56(sp)
 680:	afb00034 	sw	s0,52(sp)
 684:	afa40070 	sw	a0,112(sp)
 688:	8cae009c 	lw	t6,156(a1)
 68c:	00a08825 	move	s1,a1
 690:	3c060000 	lui	a2,0x0
 694:	31cfffff 	andi	t7,t6,0xffff
 698:	afaf0068 	sw	t7,104(sp)
 69c:	8ca50000 	lw	a1,0(a1)
 6a0:	24c60054 	addiu	a2,a2,84
 6a4:	27a40054 	addiu	a0,sp,84
 6a8:	240701d2 	li	a3,466
 6ac:	0c000000 	jal	0 <OceffSpot_SetupAction>
 6b0:	00a08025 	move	s0,a1
 6b4:	0c000000 	jal	0 <OceffSpot_SetupAction>
 6b8:	8e240000 	lw	a0,0(s1)
 6bc:	8e0202d0 	lw	v0,720(s0)
 6c0:	3c19da38 	lui	t9,0xda38
 6c4:	37390003 	ori	t9,t9,0x3
 6c8:	24580008 	addiu	t8,v0,8
 6cc:	ae1802d0 	sw	t8,720(s0)
 6d0:	ac590000 	sw	t9,0(v0)
 6d4:	8e240000 	lw	a0,0(s1)
 6d8:	3c050000 	lui	a1,0x0
 6dc:	24a50068 	addiu	a1,a1,104
 6e0:	240601d5 	li	a2,469
 6e4:	0c000000 	jal	0 <OceffSpot_SetupAction>
 6e8:	afa20050 	sw	v0,80(sp)
 6ec:	8fa30050 	lw	v1,80(sp)
 6f0:	3c0b0000 	lui	t3,0x0
 6f4:	256b05d0 	addiu	t3,t3,1488
 6f8:	ac620004 	sw	v0,4(v1)
 6fc:	8e0202d0 	lw	v0,720(s0)
 700:	3c09de00 	lui	t1,0xde00
 704:	240d0020 	li	t5,32
 708:	244a0008 	addiu	t2,v0,8
 70c:	ae0a02d0 	sw	t2,720(s0)
 710:	ac490000 	sw	t1,0(v0)
 714:	ac4b0004 	sw	t3,4(v0)
 718:	8e0202d0 	lw	v0,720(s0)
 71c:	8fa80068 	lw	t0,104(sp)
 720:	240a0020 	li	t2,32
 724:	244c0008 	addiu	t4,v0,8
 728:	ae0c02d0 	sw	t4,720(s0)
 72c:	ac490000 	sw	t1,0(v0)
 730:	8e240000 	lw	a0,0(s1)
 734:	00080823 	negu	at,t0
 738:	0001c0c0 	sll	t8,at,0x3
 73c:	240e0020 	li	t6,32
 740:	240f0001 	li	t7,1
 744:	24190020 	li	t9,32
 748:	afb90024 	sw	t9,36(sp)
 74c:	afaf0018 	sw	t7,24(sp)
 750:	afae0014 	sw	t6,20(sp)
 754:	afb80020 	sw	t8,32(sp)
 758:	00013840 	sll	a3,at,0x1
 75c:	afaa0028 	sw	t2,40(sp)
 760:	afa0001c 	sw	zero,28(sp)
 764:	afad0010 	sw	t5,16(sp)
 768:	00002825 	move	a1,zero
 76c:	afa20048 	sw	v0,72(sp)
 770:	0c000000 	jal	0 <OceffSpot_SetupAction>
 774:	00083040 	sll	a2,t0,0x1
 778:	8fa30048 	lw	v1,72(sp)
 77c:	3c0d0000 	lui	t5,0x0
 780:	25ad0668 	addiu	t5,t5,1640
 784:	ac620004 	sw	v0,4(v1)
 788:	8e0202d0 	lw	v0,720(s0)
 78c:	3c0cde00 	lui	t4,0xde00
 790:	3c060000 	lui	a2,0x0
 794:	244b0008 	addiu	t3,v0,8
 798:	ae0b02d0 	sw	t3,720(s0)
 79c:	ac4d0004 	sw	t5,4(v0)
 7a0:	ac4c0000 	sw	t4,0(v0)
 7a4:	8e250000 	lw	a1,0(s1)
 7a8:	24c6007c 	addiu	a2,a2,124
 7ac:	27a40054 	addiu	a0,sp,84
 7b0:	0c000000 	jal	0 <OceffSpot_SetupAction>
 7b4:	240701e5 	li	a3,485
 7b8:	8fbf003c 	lw	ra,60(sp)
 7bc:	8fb00034 	lw	s0,52(sp)
 7c0:	8fb10038 	lw	s1,56(sp)
 7c4:	03e00008 	jr	ra
 7c8:	27bd0070 	addiu	sp,sp,112
 7cc:	00000000 	nop
