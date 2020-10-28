
build/src/overlays/actors/ovl_En_Door/z_en_door.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnDoor_Init>:
   0:	27bdffa0 	addiu	sp,sp,-96
   4:	afb10038 	sw	s1,56(sp)
   8:	00a08825 	move	s1,a1
   c:	3c080000 	lui	t0,0x0
  10:	afbf003c 	sw	ra,60(sp)
  14:	afb00034 	sw	s0,52(sp)
  18:	25080000 	addiu	t0,t0,0
  1c:	3c050000 	lui	a1,0x0
  20:	00808025 	move	s0,a0
  24:	24a50000 	addiu	a1,a1,0
  28:	0c000000 	jal	0 <EnDoor_Init>
  2c:	afa80054 	sw	t0,84(sp)
  30:	3c060401 	lui	a2,0x401
  34:	3c070401 	lui	a3,0x401
  38:	260e0198 	addiu	t6,s0,408
  3c:	260f01b6 	addiu	t7,s0,438
  40:	24180005 	li	t8,5
  44:	afb80018 	sw	t8,24(sp)
  48:	afaf0014 	sw	t7,20(sp)
  4c:	afae0010 	sw	t6,16(sp)
  50:	24e7e758 	addiu	a3,a3,-6312
  54:	24c6ff78 	addiu	a2,a2,-136
  58:	02202025 	move	a0,s1
  5c:	0c000000 	jal	0 <EnDoor_Init>
  60:	2605014c 	addiu	a1,s0,332
  64:	8fa80054 	lw	t0,84(sp)
  68:	00001825 	move	v1,zero
  6c:	862400a4 	lh	a0,164(s1)
  70:	24020004 	li	v0,4
  74:	85190000 	lh	t9,0(t0)
  78:	53240005 	beql	t9,a0,90 <EnDoor_Init+0x90>
  7c:	28610004 	slti	at,v1,4
  80:	24630001 	addiu	v1,v1,1
  84:	1462fffb 	bne	v1,v0,74 <EnDoor_Init+0x74>
  88:	25080006 	addiu	t0,t0,6
  8c:	28610004 	slti	at,v1,4
  90:	14200009 	bnez	at,b8 <EnDoor_Init+0xb8>
  94:	24050002 	li	a1,2
  98:	3c010001 	lui	at,0x1
  9c:	342117a4 	ori	at,at,0x17a4
  a0:	02212021 	addu	a0,s1,at
  a4:	0c000000 	jal	0 <EnDoor_Init>
  a8:	afa80054 	sw	t0,84(sp)
  ac:	04400002 	bltz	v0,b8 <EnDoor_Init+0xb8>
  b0:	8fa80054 	lw	t0,84(sp)
  b4:	25080006 	addiu	t0,t0,6
  b8:	91090002 	lbu	t1,2(t0)
  bc:	3c010001 	lui	at,0x1
  c0:	342117a4 	ori	at,at,0x17a4
  c4:	a2090194 	sb	t1,404(s0)
  c8:	85050004 	lh	a1,4(t0)
  cc:	afa80054 	sw	t0,84(sp)
  d0:	0c000000 	jal	0 <EnDoor_Init>
  d4:	02212021 	addu	a0,s1,at
  d8:	04410005 	bgez	v0,f0 <EnDoor_Init+0xf0>
  dc:	8fa80054 	lw	t0,84(sp)
  e0:	0c000000 	jal	0 <EnDoor_Init>
  e4:	02002025 	move	a0,s0
  e8:	10000047 	b	208 <EnDoor_Init+0x208>
  ec:	8fbf003c 	lw	ra,60(sp)
  f0:	a2020193 	sb	v0,403(s0)
  f4:	820b0193 	lb	t3,403(s0)
  f8:	820c001e 	lb	t4,30(s0)
  fc:	910a0002 	lbu	t2,2(t0)
 100:	3c0d0000 	lui	t5,0x0
 104:	156c0006 	bne	t3,t4,120 <EnDoor_Init+0x120>
 108:	a20a0194 	sb	t2,404(s0)
 10c:	02002025 	move	a0,s0
 110:	0c000000 	jal	0 <EnDoor_Init>
 114:	02202825 	move	a1,s1
 118:	10000004 	b	12c <EnDoor_Init+0x12c>
 11c:	860e001c 	lh	t6,28(s0)
 120:	25ad0000 	addiu	t5,t5,0
 124:	ae0d01d4 	sw	t5,468(s0)
 128:	860e001c 	lh	t6,28(s0)
 12c:	31cf0040 	andi	t7,t6,0x40
 130:	51e00032 	beqzl	t7,1fc <EnDoor_Init+0x1fc>
 134:	02002025 	move	a0,s0
 138:	0c000000 	jal	0 <EnDoor_Init>
 13c:	860400b6 	lh	a0,182(s0)
 140:	3c0141f0 	lui	at,0x41f0
 144:	44812000 	mtc1	at,$f4
 148:	00000000 	nop
 14c:	46040182 	mul.s	$f6,$f0,$f4
 150:	e7a60048 	swc1	$f6,72(sp)
 154:	0c000000 	jal	0 <EnDoor_Init>
 158:	860400b6 	lh	a0,182(s0)
 15c:	3c0141f0 	lui	at,0x41f0
 160:	44814000 	mtc1	at,$f8
 164:	c7b00048 	lwc1	$f16,72(sp)
 168:	34018000 	li	at,0x8000
 16c:	46080082 	mul.s	$f2,$f0,$f8
 170:	26241c24 	addiu	a0,s1,7204
 174:	02002825 	move	a1,s0
 178:	02203025 	move	a2,s1
 17c:	24070009 	li	a3,9
 180:	e7a20044 	swc1	$f2,68(sp)
 184:	c60a0024 	lwc1	$f10,36(s0)
 188:	46105480 	add.s	$f18,$f10,$f16
 18c:	e7b20010 	swc1	$f18,16(sp)
 190:	c6040028 	lwc1	$f4,40(s0)
 194:	e7a40014 	swc1	$f4,20(sp)
 198:	c606002c 	lwc1	$f6,44(s0)
 19c:	afa0001c 	sw	zero,28(sp)
 1a0:	46023201 	sub.s	$f8,$f6,$f2
 1a4:	e7a80018 	swc1	$f8,24(sp)
 1a8:	861800b6 	lh	t8,182(s0)
 1ac:	afa00024 	sw	zero,36(sp)
 1b0:	0301c821 	addu	t9,t8,at
 1b4:	afb90020 	sw	t9,32(sp)
 1b8:	8609001c 	lh	t1,28(s0)
 1bc:	2401ffbf 	li	at,-65
 1c0:	01215024 	and	t2,t1,at
 1c4:	0c000000 	jal	0 <EnDoor_Init>
 1c8:	afaa0028 	sw	t2,40(sp)
 1cc:	10400002 	beqz	v0,1d8 <EnDoor_Init+0x1d8>
 1d0:	240b0001 	li	t3,1
 1d4:	a04b0192 	sb	t3,402(v0)
 1d8:	c60a0024 	lwc1	$f10,36(s0)
 1dc:	c7b00048 	lwc1	$f16,72(sp)
 1e0:	c604002c 	lwc1	$f4,44(s0)
 1e4:	46105481 	sub.s	$f18,$f10,$f16
 1e8:	e6120024 	swc1	$f18,36(s0)
 1ec:	c7a60044 	lwc1	$f6,68(sp)
 1f0:	46062200 	add.s	$f8,$f4,$f6
 1f4:	e608002c 	swc1	$f8,44(s0)
 1f8:	02002025 	move	a0,s0
 1fc:	0c000000 	jal	0 <EnDoor_Init>
 200:	3c05428c 	lui	a1,0x428c
 204:	8fbf003c 	lw	ra,60(sp)
 208:	8fb00034 	lw	s0,52(sp)
 20c:	8fb10038 	lw	s1,56(sp)
 210:	03e00008 	jr	ra
 214:	27bd0060 	addiu	sp,sp,96

00000218 <EnDoor_Destroy>:
 218:	948f001c 	lhu	t7,28(a0)
 21c:	3c0e0001 	lui	t6,0x1
 220:	01c57021 	addu	t6,t6,a1
 224:	8dce1d38 	lw	t6,7480(t6)
 228:	000fc283 	sra	t8,t7,0xa
 22c:	0018c900 	sll	t9,t8,0x4
 230:	01d91021 	addu	v0,t6,t9
 234:	84430004 	lh	v1,4(v0)
 238:	04610002 	bgez	v1,244 <EnDoor_Destroy+0x2c>
 23c:	00034023 	negu	t0,v1
 240:	a4480004 	sh	t0,4(v0)
 244:	03e00008 	jr	ra
 248:	00000000 	nop

0000024c <func_809FC41C>:
 24c:	3c010001 	lui	at,0x1
 250:	27bdffe0 	addiu	sp,sp,-32
 254:	00803025 	move	a2,a0
 258:	342117a4 	ori	at,at,0x17a4
 25c:	afbf0014 	sw	ra,20(sp)
 260:	00a03825 	move	a3,a1
 264:	00a12021 	addu	a0,a1,at
 268:	80c50193 	lb	a1,403(a2)
 26c:	afa70024 	sw	a3,36(sp)
 270:	0c000000 	jal	0 <EnDoor_Init>
 274:	afa60020 	sw	a2,32(sp)
 278:	8fa60020 	lw	a2,32(sp)
 27c:	1040005c 	beqz	v0,3f0 <func_809FC41C+0x1a4>
 280:	8fa70024 	lw	a3,36(sp)
 284:	84c3001c 	lh	v1,28(a2)
 288:	8cce0004 	lw	t6,4(a2)
 28c:	2401ffef 	li	at,-17
 290:	80d80193 	lb	t8,403(a2)
 294:	3c190000 	lui	t9,0x0
 298:	000319c3 	sra	v1,v1,0x7
 29c:	01c17824 	and	t7,t6,at
 2a0:	30630007 	andi	v1,v1,0x7
 2a4:	27390000 	addiu	t9,t9,0
 2a8:	24010006 	li	at,6
 2ac:	accf0004 	sw	t7,4(a2)
 2b0:	acd901d4 	sw	t9,468(a2)
 2b4:	1461000d 	bne	v1,at,2ec <func_809FC41C+0xa0>
 2b8:	a0d8001e 	sb	t8,30(a2)
 2bc:	3c020000 	lui	v0,0x0
 2c0:	9442000c 	lhu	v0,12(v0)
 2c4:	3401c001 	li	at,0xc001
 2c8:	24030005 	li	v1,5
 2cc:	0041082a 	slt	at,v0,at
 2d0:	14200006 	bnez	at,2ec <func_809FC41C+0xa0>
 2d4:	3401e000 	li	at,0xe000
 2d8:	0041082a 	slt	at,v0,at
 2dc:	10200003 	beqz	at,2ec <func_809FC41C+0xa0>
 2e0:	00000000 	nop
 2e4:	10000001 	b	2ec <func_809FC41C+0xa0>
 2e8:	24030003 	li	v1,3
 2ec:	24010001 	li	at,1
 2f0:	1461000d 	bne	v1,at,328 <func_809FC41C+0xdc>
 2f4:	a4c00032 	sh	zero,50(a2)
 2f8:	84c5001c 	lh	a1,28(a2)
 2fc:	afa60020 	sw	a2,32(sp)
 300:	afa3001c 	sw	v1,28(sp)
 304:	00e02025 	move	a0,a3
 308:	0c000000 	jal	0 <EnDoor_Init>
 30c:	30a5003f 	andi	a1,a1,0x3f
 310:	8fa3001c 	lw	v1,28(sp)
 314:	14400031 	bnez	v0,3dc <func_809FC41C+0x190>
 318:	8fa60020 	lw	a2,32(sp)
 31c:	2408000a 	li	t0,10
 320:	1000002e 	b	3dc <func_809FC41C+0x190>
 324:	a4c80196 	sh	t0,406(a2)
 328:	24010004 	li	at,4
 32c:	14610012 	bne	v1,at,378 <func_809FC41C+0x12c>
 330:	00c02025 	move	a0,a2
 334:	8ce51c44 	lw	a1,7236(a3)
 338:	afa60020 	sw	a2,32(sp)
 33c:	0c000000 	jal	0 <EnDoor_Init>
 340:	afa3001c 	sw	v1,28(sp)
 344:	3c0142f0 	lui	at,0x42f0
 348:	44812000 	mtc1	at,$f4
 34c:	3c090000 	lui	t1,0x0
 350:	8fa3001c 	lw	v1,28(sp)
 354:	4600203c 	c.lt.s	$f4,$f0
 358:	8fa60020 	lw	a2,32(sp)
 35c:	25290000 	addiu	t1,t1,0
 360:	240ae800 	li	t2,-6144
 364:	4502001e 	bc1fl	3e0 <func_809FC41C+0x194>
 368:	84ca001c 	lh	t2,28(a2)
 36c:	acc901d4 	sw	t1,468(a2)
 370:	1000001a 	b	3dc <func_809FC41C+0x190>
 374:	a4ca0032 	sh	t2,50(a2)
 378:	24010005 	li	at,5
 37c:	54610018 	bnel	v1,at,3e0 <func_809FC41C+0x194>
 380:	84ca001c 	lh	t2,28(a2)
 384:	84cb001c 	lh	t3,28(a2)
 388:	24010229 	li	at,553
 38c:	3c0f0000 	lui	t7,0x0
 390:	316c003f 	andi	t4,t3,0x3f
 394:	258d0200 	addiu	t5,t4,512
 398:	31aeffff 	andi	t6,t5,0xffff
 39c:	15c10007 	bne	t6,at,3bc <func_809FC41C+0x170>
 3a0:	a4cd010e 	sh	t5,270(a2)
 3a4:	95ef0ed6 	lhu	t7,3798(t7)
 3a8:	31f80010 	andi	t8,t7,0x10
 3ac:	57000004 	bnezl	t8,3c0 <func_809FC41C+0x174>
 3b0:	8cc80004 	lw	t0,4(a2)
 3b4:	10000009 	b	3dc <func_809FC41C+0x190>
 3b8:	24030003 	li	v1,3
 3bc:	8cc80004 	lw	t0,4(a2)
 3c0:	3c010800 	lui	at,0x800
 3c4:	3c190000 	lui	t9,0x0
 3c8:	34210009 	ori	at,at,0x9
 3cc:	27390000 	addiu	t9,t9,0
 3d0:	01014825 	or	t1,t0,at
 3d4:	acd901d4 	sw	t9,468(a2)
 3d8:	acc90004 	sw	t1,4(a2)
 3dc:	84ca001c 	lh	t2,28(a2)
 3e0:	000361c0 	sll	t4,v1,0x7
 3e4:	314bfc7f 	andi	t3,t2,0xfc7f
 3e8:	016c6825 	or	t5,t3,t4
 3ec:	a4cd001c 	sh	t5,28(a2)
 3f0:	8fbf0014 	lw	ra,20(sp)
 3f4:	27bd0020 	addiu	sp,sp,32
 3f8:	03e00008 	jr	ra
 3fc:	00000000 	nop

00000400 <func_809FC5D0>:
 400:	27bdffc0 	addiu	sp,sp,-64
 404:	afbf0014 	sw	ra,20(sp)
 408:	afa50044 	sw	a1,68(sp)
 40c:	848f001c 	lh	t7,28(a0)
 410:	8ca81c44 	lw	t0,7236(a1)
 414:	afa40040 	sw	a0,64(sp)
 418:	000fc1c3 	sra	t8,t7,0x7
 41c:	33190007 	andi	t9,t8,0x7
 420:	afb90038 	sw	t9,56(sp)
 424:	27a5002c 	addiu	a1,sp,44
 428:	25060024 	addiu	a2,t0,36
 42c:	0c000000 	jal	0 <EnDoor_Init>
 430:	afa8003c 	sw	t0,60(sp)
 434:	8fa70040 	lw	a3,64(sp)
 438:	3c0a0000 	lui	t2,0x0
 43c:	8fa8003c 	lw	t0,60(sp)
 440:	90e90191 	lbu	t1,401(a3)
 444:	254a0000 	addiu	t2,t2,0
 448:	3c050000 	lui	a1,0x0
 44c:	1120002a 	beqz	t1,4f8 <func_809FC5D0+0xf8>
 450:	8fa40044 	lw	a0,68(sp)
 454:	acea01d4 	sw	t2,468(a3)
 458:	8d0b067c 	lw	t3,1660(t0)
 45c:	24e4014c 	addiu	a0,a3,332
 460:	3c013fc0 	lui	at,0x3fc0
 464:	000b6100 	sll	t4,t3,0x4
 468:	05830006 	bgezl	t4,484 <func_809FC5D0+0x84>
 46c:	44810000 	mtc1	at,$f0
 470:	3c013f40 	lui	at,0x3f40
 474:	44810000 	mtc1	at,$f0
 478:	10000004 	b	48c <func_809FC5D0+0x8c>
 47c:	90ed0190 	lbu	t5,400(a3)
 480:	44810000 	mtc1	at,$f0
 484:	00000000 	nop
 488:	90ed0190 	lbu	t5,400(a3)
 48c:	44060000 	mfc1	a2,$f0
 490:	afa70040 	sw	a3,64(sp)
 494:	000d7080 	sll	t6,t5,0x2
 498:	00ae2821 	addu	a1,a1,t6
 49c:	0c000000 	jal	0 <EnDoor_Init>
 4a0:	8ca50000 	lw	a1,0(a1)
 4a4:	8fa70040 	lw	a3,64(sp)
 4a8:	3c030000 	lui	v1,0x0
 4ac:	24630000 	addiu	v1,v1,0
 4b0:	84ef0196 	lh	t7,406(a3)
 4b4:	51e00079 	beqzl	t7,69c <func_809FC5D0+0x29c>
 4b8:	8fbf0014 	lw	ra,20(sp)
 4bc:	94781402 	lhu	t8,5122(v1)
 4c0:	8fa40044 	lw	a0,68(sp)
 4c4:	00781021 	addu	v0,v1,t8
 4c8:	805900bc 	lb	t9,188(v0)
 4cc:	2729ffff 	addiu	t1,t9,-1
 4d0:	a04900bc 	sb	t1,188(v0)
 4d4:	84e5001c 	lh	a1,28(a3)
 4d8:	afa70040 	sw	a3,64(sp)
 4dc:	0c000000 	jal	0 <EnDoor_Init>
 4e0:	30a5003f 	andi	a1,a1,0x3f
 4e4:	8fa40040 	lw	a0,64(sp)
 4e8:	0c000000 	jal	0 <EnDoor_Init>
 4ec:	2405287c 	li	a1,10364
 4f0:	1000006a 	b	69c <func_809FC5D0+0x29c>
 4f4:	8fbf0014 	lw	ra,20(sp)
 4f8:	afa70040 	sw	a3,64(sp)
 4fc:	0c000000 	jal	0 <EnDoor_Init>
 500:	afa8003c 	sw	t0,60(sp)
 504:	8fa70040 	lw	a3,64(sp)
 508:	14400063 	bnez	v0,698 <func_809FC5D0+0x298>
 50c:	8fa8003c 	lw	t0,60(sp)
 510:	c7a00030 	lwc1	$f0,48(sp)
 514:	3c0141a0 	lui	at,0x41a0
 518:	44811000 	mtc1	at,$f2
 51c:	46000005 	abs.s	$f0,$f0
 520:	8fa90038 	lw	t1,56(sp)
 524:	4602003c 	c.lt.s	$f0,$f2
 528:	c7a0002c 	lwc1	$f0,44(sp)
 52c:	4502004f 	bc1fl	66c <func_809FC5D0+0x26c>
 530:	24010004 	li	at,4
 534:	46000005 	abs.s	$f0,$f0
 538:	c7a40034 	lwc1	$f4,52(sp)
 53c:	4602003c 	c.lt.s	$f0,$f2
 540:	3c014248 	lui	at,0x4248
 544:	45020049 	bc1fl	66c <func_809FC5D0+0x26c>
 548:	24010004 	li	at,4
 54c:	44813000 	mtc1	at,$f6
 550:	46002005 	abs.s	$f0,$f4
 554:	4606003c 	c.lt.s	$f0,$f6
 558:	00000000 	nop
 55c:	45020043 	bc1fl	66c <func_809FC5D0+0x26c>
 560:	24010004 	li	at,4
 564:	44800000 	mtc1	zero,$f0
 568:	850a00b6 	lh	t2,182(t0)
 56c:	84eb00b6 	lh	t3,182(a3)
 570:	4604003c 	c.lt.s	$f0,$f4
 574:	340c8000 	li	t4,0x8000
 578:	014b1023 	subu	v0,t2,t3
 57c:	00021400 	sll	v0,v0,0x10
 580:	45000004 	bc1f	594 <func_809FC5D0+0x194>
 584:	00021403 	sra	v0,v0,0x10
 588:	01821023 	subu	v0,t4,v0
 58c:	00021400 	sll	v0,v0,0x10
 590:	00021403 	sra	v0,v0,0x10
 594:	04400003 	bltz	v0,5a4 <func_809FC5D0+0x1a4>
 598:	00021823 	negu	v1,v0
 59c:	10000001 	b	5a4 <func_809FC5D0+0x1a4>
 5a0:	00401825 	move	v1,v0
 5a4:	28613000 	slti	at,v1,12288
 5a8:	5020003c 	beqzl	at,69c <func_809FC5D0+0x29c>
 5ac:	8fbf0014 	lw	ra,20(sp)
 5b0:	84ed0196 	lh	t5,406(a3)
 5b4:	3c030000 	lui	v1,0x0
 5b8:	24630000 	addiu	v1,v1,0
 5bc:	51a0000e 	beqzl	t5,5f8 <func_809FC5D0+0x1f8>
 5c0:	8fab0038 	lw	t3,56(sp)
 5c4:	946e1402 	lhu	t6,5122(v1)
 5c8:	8fb90044 	lw	t9,68(sp)
 5cc:	240a000a 	li	t2,10
 5d0:	006e7821 	addu	t7,v1,t6
 5d4:	81f800bc 	lb	t8,188(t7)
 5d8:	5f000006 	bgtzl	t8,5f4 <func_809FC5D0+0x1f4>
 5dc:	a50a042e 	sh	t2,1070(t0)
 5e0:	8f221c44 	lw	v0,7236(t9)
 5e4:	2409fdfd 	li	t1,-515
 5e8:	1000002b 	b	698 <func_809FC5D0+0x298>
 5ec:	a4490690 	sh	t1,1680(v0)
 5f0:	a50a042e 	sh	t2,1070(t0)
 5f4:	8fab0038 	lw	t3,56(sp)
 5f8:	24010004 	li	at,4
 5fc:	240d0001 	li	t5,1
 600:	15610003 	bne	t3,at,610 <func_809FC5D0+0x210>
 604:	240cffff 	li	t4,-1
 608:	10000002 	b	614 <func_809FC5D0+0x214>
 60c:	a10c042c 	sb	t4,1068(t0)
 610:	a10d042c 	sb	t5,1068(t0)
 614:	c7a80034 	lwc1	$f8,52(sp)
 618:	3c01bf80 	lui	at,0xbf80
 61c:	4608003e 	c.le.s	$f0,$f8
 620:	00000000 	nop
 624:	45020009 	bc1fl	64c <func_809FC5D0+0x24c>
 628:	44819000 	mtc1	at,$f18
 62c:	3c013f80 	lui	at,0x3f80
 630:	44815000 	mtc1	at,$f10
 634:	00000000 	nop
 638:	4600540d 	trunc.w.s	$f16,$f10
 63c:	440f8000 	mfc1	t7,$f16
 640:	10000007 	b	660 <func_809FC5D0+0x260>
 644:	a10f042d 	sb	t7,1069(t0)
 648:	44819000 	mtc1	at,$f18
 64c:	00000000 	nop
 650:	4600918d 	trunc.w.s	$f6,$f18
 654:	44193000 	mfc1	t9,$f6
 658:	00000000 	nop
 65c:	a119042d 	sb	t9,1069(t0)
 660:	1000000d 	b	698 <func_809FC5D0+0x298>
 664:	ad070430 	sw	a3,1072(t0)
 668:	24010004 	li	at,4
 66c:	1521000a 	bne	t1,at,698 <func_809FC5D0+0x298>
 670:	3c014370 	lui	at,0x4370
 674:	44812000 	mtc1	at,$f4
 678:	c4e80090 	lwc1	$f8,144(a3)
 67c:	3c0a0000 	lui	t2,0x0
 680:	254a0000 	addiu	t2,t2,0
 684:	4608203c 	c.lt.s	$f4,$f8
 688:	00000000 	nop
 68c:	45020003 	bc1fl	69c <func_809FC5D0+0x29c>
 690:	8fbf0014 	lw	ra,20(sp)
 694:	acea01d4 	sw	t2,468(a3)
 698:	8fbf0014 	lw	ra,20(sp)
 69c:	27bd0040 	addiu	sp,sp,64
 6a0:	03e00008 	jr	ra
 6a4:	00000000 	nop

000006a8 <func_809FC878>:
 6a8:	27bdffe8 	addiu	sp,sp,-24
 6ac:	afbf0014 	sw	ra,20(sp)
 6b0:	afa5001c 	sw	a1,28(sp)
 6b4:	0c000000 	jal	0 <EnDoor_Init>
 6b8:	afa40018 	sw	a0,24(sp)
 6bc:	10400005 	beqz	v0,6d4 <func_809FC878+0x2c>
 6c0:	8fa40018 	lw	a0,24(sp)
 6c4:	3c0e0000 	lui	t6,0x0
 6c8:	25ce0000 	addiu	t6,t6,0
 6cc:	10000004 	b	6e0 <func_809FC878+0x38>
 6d0:	ac8e01d4 	sw	t6,468(a0)
 6d4:	8fa5001c 	lw	a1,28(sp)
 6d8:	0c000000 	jal	0 <EnDoor_Init>
 6dc:	3c064220 	lui	a2,0x4220
 6e0:	8fbf0014 	lw	ra,20(sp)
 6e4:	27bd0018 	addiu	sp,sp,24
 6e8:	03e00008 	jr	ra
 6ec:	00000000 	nop

000006f0 <func_809FC8C0>:
 6f0:	27bdffe8 	addiu	sp,sp,-24
 6f4:	afbf0014 	sw	ra,20(sp)
 6f8:	0c000000 	jal	0 <EnDoor_Init>
 6fc:	afa40018 	sw	a0,24(sp)
 700:	10400004 	beqz	v0,714 <func_809FC8C0+0x24>
 704:	8faf0018 	lw	t7,24(sp)
 708:	3c0e0000 	lui	t6,0x0
 70c:	25ce0000 	addiu	t6,t6,0
 710:	adee01d4 	sw	t6,468(t7)
 714:	8fbf0014 	lw	ra,20(sp)
 718:	27bd0018 	addiu	sp,sp,24
 71c:	03e00008 	jr	ra
 720:	00000000 	nop

00000724 <func_809FC8F4>:
 724:	afa50004 	sw	a1,4(sp)
 728:	3c0142f0 	lui	at,0x42f0
 72c:	44813000 	mtc1	at,$f6
 730:	c4840090 	lwc1	$f4,144(a0)
 734:	3c0e0000 	lui	t6,0x0
 738:	25ce0000 	addiu	t6,t6,0
 73c:	4606203c 	c.lt.s	$f4,$f6
 740:	00000000 	nop
 744:	45000002 	bc1f	750 <func_809FC8F4+0x2c>
 748:	00000000 	nop
 74c:	ac8e01d4 	sw	t6,468(a0)
 750:	03e00008 	jr	ra
 754:	00000000 	nop

00000758 <func_809FC928>:
 758:	27bdffe8 	addiu	sp,sp,-24
 75c:	afbf0014 	sw	ra,20(sp)
 760:	afa5001c 	sw	a1,28(sp)
 764:	3c0142f0 	lui	at,0x42f0
 768:	44813000 	mtc1	at,$f6
 76c:	c4840090 	lwc1	$f4,144(a0)
 770:	3c0e0000 	lui	t6,0x0
 774:	00803825 	move	a3,a0
 778:	4606203c 	c.lt.s	$f4,$f6
 77c:	25ce0000 	addiu	t6,t6,0
 780:	2405e800 	li	a1,-6144
 784:	24060100 	li	a2,256
 788:	45020004 	bc1fl	79c <func_809FC928+0x44>
 78c:	24e40032 	addiu	a0,a3,50
 790:	10000009 	b	7b8 <func_809FC928+0x60>
 794:	ac8e01d4 	sw	t6,468(a0)
 798:	24e40032 	addiu	a0,a3,50
 79c:	0c000000 	jal	0 <EnDoor_Init>
 7a0:	afa70018 	sw	a3,24(sp)
 7a4:	10400004 	beqz	v0,7b8 <func_809FC928+0x60>
 7a8:	8fa70018 	lw	a3,24(sp)
 7ac:	3c0f0000 	lui	t7,0x0
 7b0:	25ef0000 	addiu	t7,t7,0
 7b4:	acef01d4 	sw	t7,468(a3)
 7b8:	8fbf0014 	lw	ra,20(sp)
 7bc:	27bd0018 	addiu	sp,sp,24
 7c0:	03e00008 	jr	ra
 7c4:	00000000 	nop

000007c8 <func_809FC998>:
 7c8:	27bdffe8 	addiu	sp,sp,-24
 7cc:	afbf0014 	sw	ra,20(sp)
 7d0:	afa40018 	sw	a0,24(sp)
 7d4:	afa5001c 	sw	a1,28(sp)
 7d8:	00002825 	move	a1,zero
 7dc:	24840032 	addiu	a0,a0,50
 7e0:	0c000000 	jal	0 <EnDoor_Init>
 7e4:	24060700 	li	a2,1792
 7e8:	10400004 	beqz	v0,7fc <func_809FC998+0x34>
 7ec:	8faf0018 	lw	t7,24(sp)
 7f0:	3c0e0000 	lui	t6,0x0
 7f4:	25ce0000 	addiu	t6,t6,0
 7f8:	adee01d4 	sw	t6,468(t7)
 7fc:	8fbf0014 	lw	ra,20(sp)
 800:	27bd0018 	addiu	sp,sp,24
 804:	03e00008 	jr	ra
 808:	00000000 	nop

0000080c <func_809FC9DC>:
 80c:	27bdffa8 	addiu	sp,sp,-88
 810:	afbf0054 	sw	ra,84(sp)
 814:	afb40050 	sw	s4,80(sp)
 818:	afb3004c 	sw	s3,76(sp)
 81c:	afb20048 	sw	s2,72(sp)
 820:	afb10044 	sw	s1,68(sp)
 824:	afb00040 	sw	s0,64(sp)
 828:	f7ba0038 	sdc1	$f26,56(sp)
 82c:	f7b80030 	sdc1	$f24,48(sp)
 830:	f7b60028 	sdc1	$f22,40(sp)
 834:	f7b40020 	sdc1	$f20,32(sp)
 838:	84830196 	lh	v1,406(a0)
 83c:	00a09825 	move	s3,a1
 840:	0080a025 	move	s4,a0
 844:	14600003 	bnez	v1,854 <func_809FC9DC+0x48>
 848:	246effff 	addiu	t6,v1,-1
 84c:	10000003 	b	85c <func_809FC9DC+0x50>
 850:	00001025 	move	v0,zero
 854:	a68e0196 	sh	t6,406(s4)
 858:	86820196 	lh	v0,406(s4)
 85c:	1440006e 	bnez	v0,a18 <func_809FC9DC+0x20c>
 860:	2690014c 	addiu	s0,s4,332
 864:	0c000000 	jal	0 <EnDoor_Init>
 868:	02002025 	move	a0,s0
 86c:	10400005 	beqz	v0,884 <func_809FC9DC+0x78>
 870:	3c0f0000 	lui	t7,0x0
 874:	25ef0000 	addiu	t7,t7,0
 878:	ae8f01d4 	sw	t7,468(s4)
 87c:	10000066 	b	a18 <func_809FC9DC+0x20c>
 880:	a2800191 	sb	zero,401(s4)
 884:	92980190 	lbu	t8,400(s4)
 888:	3c190000 	lui	t9,0x0
 88c:	02002025 	move	a0,s0
 890:	0338c821 	addu	t9,t9,t8
 894:	93390000 	lbu	t9,0(t9)
 898:	3c014f80 	lui	at,0x4f80
 89c:	44992000 	mtc1	t9,$f4
 8a0:	07210004 	bgez	t9,8b4 <func_809FC9DC+0xa8>
 8a4:	46802120 	cvt.s.w	$f4,$f4
 8a8:	44813000 	mtc1	at,$f6
 8ac:	00000000 	nop
 8b0:	46062100 	add.s	$f4,$f4,$f6
 8b4:	44052000 	mfc1	a1,$f4
 8b8:	0c000000 	jal	0 <EnDoor_Init>
 8bc:	00000000 	nop
 8c0:	10400037 	beqz	v0,9a0 <func_809FC9DC+0x194>
 8c4:	02802025 	move	a0,s4
 8c8:	866200a4 	lh	v0,164(s3)
 8cc:	24010007 	li	at,7
 8d0:	10410005 	beq	v0,at,8e8 <func_809FC9DC+0xdc>
 8d4:	24010008 	li	at,8
 8d8:	10410003 	beq	v0,at,8e8 <func_809FC9DC+0xdc>
 8dc:	24010004 	li	at,4
 8e0:	54410004 	bnel	v0,at,8f4 <func_809FC9DC+0xe8>
 8e4:	24025802 	li	v0,22530
 8e8:	10000002 	b	8f4 <func_809FC9DC+0xe8>
 8ec:	240228db 	li	v0,10459
 8f0:	24025802 	li	v0,22530
 8f4:	0c000000 	jal	0 <EnDoor_Init>
 8f8:	3045ffff 	andi	a1,v0,0xffff
 8fc:	3c013fc0 	lui	at,0x3fc0
 900:	44815000 	mtc1	at,$f10
 904:	c6880168 	lwc1	$f8,360(s4)
 908:	460a403c 	c.lt.s	$f8,$f10
 90c:	00000000 	nop
 910:	45020042 	bc1fl	a1c <func_809FC9DC+0x210>
 914:	8fbf0054 	lw	ra,84(sp)
 918:	0c000000 	jal	0 <EnDoor_Init>
 91c:	00000000 	nop
 920:	3c0141f0 	lui	at,0x41f0
 924:	44818000 	mtc1	at,$f16
 928:	3c010000 	lui	at,0x0
 92c:	00008025 	move	s0,zero
 930:	46100482 	mul.s	$f18,$f0,$f16
 934:	4600910d 	trunc.w.s	$f4,$f18
 938:	44022000 	mfc1	v0,$f4
 93c:	00000000 	nop
 940:	24510032 	addiu	s1,v0,50
 944:	5a200035 	blezl	s1,a1c <func_809FC9DC+0x210>
 948:	8fbf0054 	lw	ra,84(sp)
 94c:	c43a0000 	lwc1	$f26,0(at)
 950:	3c014248 	lui	at,0x4248
 954:	4481c000 	mtc1	at,$f24
 958:	3c0142c8 	lui	at,0x42c8
 95c:	4481b000 	mtc1	at,$f22
 960:	3c014270 	lui	at,0x4270
 964:	4481a000 	mtc1	at,$f20
 968:	26920024 	addiu	s2,s4,36
 96c:	4406a000 	mfc1	a2,$f20
 970:	4407b000 	mfc1	a3,$f22
 974:	02602025 	move	a0,s3
 978:	02402825 	move	a1,s2
 97c:	e7b80010 	swc1	$f24,16(sp)
 980:	0c000000 	jal	0 <EnDoor_Init>
 984:	e7ba0014 	swc1	$f26,20(sp)
 988:	26100001 	addiu	s0,s0,1
 98c:	0211082a 	slt	at,s0,s1
 990:	5420fff7 	bnezl	at,970 <func_809FC9DC+0x164>
 994:	4406a000 	mfc1	a2,$f20
 998:	10000020 	b	a1c <func_809FC9DC+0x210>
 99c:	8fbf0054 	lw	ra,84(sp)
 9a0:	92890190 	lbu	t1,400(s4)
 9a4:	3c0a0000 	lui	t2,0x0
 9a8:	02002025 	move	a0,s0
 9ac:	01495021 	addu	t2,t2,t1
 9b0:	914a0000 	lbu	t2,0(t2)
 9b4:	3c014f80 	lui	at,0x4f80
 9b8:	448a3000 	mtc1	t2,$f6
 9bc:	05410004 	bgez	t2,9d0 <func_809FC9DC+0x1c4>
 9c0:	468031a0 	cvt.s.w	$f6,$f6
 9c4:	44814000 	mtc1	at,$f8
 9c8:	00000000 	nop
 9cc:	46083180 	add.s	$f6,$f6,$f8
 9d0:	44053000 	mfc1	a1,$f6
 9d4:	0c000000 	jal	0 <EnDoor_Init>
 9d8:	00000000 	nop
 9dc:	1040000e 	beqz	v0,a18 <func_809FC9DC+0x20c>
 9e0:	02802025 	move	a0,s4
 9e4:	866200a4 	lh	v0,164(s3)
 9e8:	24010007 	li	at,7
 9ec:	10410005 	beq	v0,at,a04 <func_809FC9DC+0x1f8>
 9f0:	24010008 	li	at,8
 9f4:	10410003 	beq	v0,at,a04 <func_809FC9DC+0x1f8>
 9f8:	24010004 	li	at,4
 9fc:	54410004 	bnel	v0,at,a10 <func_809FC9DC+0x204>
 a00:	24022801 	li	v0,10241
 a04:	10000002 	b	a10 <func_809FC9DC+0x204>
 a08:	240228dc 	li	v0,10460
 a0c:	24022801 	li	v0,10241
 a10:	0c000000 	jal	0 <EnDoor_Init>
 a14:	3045ffff 	andi	a1,v0,0xffff
 a18:	8fbf0054 	lw	ra,84(sp)
 a1c:	d7b40020 	ldc1	$f20,32(sp)
 a20:	d7b60028 	ldc1	$f22,40(sp)
 a24:	d7b80030 	ldc1	$f24,48(sp)
 a28:	d7ba0038 	ldc1	$f26,56(sp)
 a2c:	8fb00040 	lw	s0,64(sp)
 a30:	8fb10044 	lw	s1,68(sp)
 a34:	8fb20048 	lw	s2,72(sp)
 a38:	8fb3004c 	lw	s3,76(sp)
 a3c:	8fb40050 	lw	s4,80(sp)
 a40:	03e00008 	jr	ra
 a44:	27bd0058 	addiu	sp,sp,88

00000a48 <EnDoor_Update>:
 a48:	27bdffe8 	addiu	sp,sp,-24
 a4c:	afbf0014 	sw	ra,20(sp)
 a50:	8c9901d4 	lw	t9,468(a0)
 a54:	0320f809 	jalr	t9
 a58:	00000000 	nop
 a5c:	8fbf0014 	lw	ra,20(sp)
 a60:	27bd0018 	addiu	sp,sp,24
 a64:	03e00008 	jr	ra
 a68:	00000000 	nop

00000a6c <func_809FCC3C>:
 a6c:	27bdffd8 	addiu	sp,sp,-40
 a70:	afa70034 	sw	a3,52(sp)
 a74:	24010004 	li	at,4
 a78:	00803825 	move	a3,a0
 a7c:	afbf0014 	sw	ra,20(sp)
 a80:	afa40028 	sw	a0,40(sp)
 a84:	14a10040 	bne	a1,at,b88 <func_809FCC3C+0x11c>
 a88:	afa60030 	sw	a2,48(sp)
 a8c:	8fa3003c 	lw	v1,60(sp)
 a90:	8fa80038 	lw	t0,56(sp)
 a94:	3c010001 	lui	at,0x1
 a98:	806e0194 	lb	t6,404(v1)
 a9c:	846d0032 	lh	t5,50(v1)
 aa0:	850c0004 	lh	t4,4(t0)
 aa4:	9469001c 	lhu	t1,28(v1)
 aa8:	3c180000 	lui	t8,0x0
 aac:	00811021 	addu	v0,a0,at
 ab0:	000e78c0 	sll	t7,t6,0x3
 ab4:	8c591d38 	lw	t9,7480(v0)
 ab8:	27180000 	addiu	t8,t8,0
 abc:	018d7021 	addu	t6,t4,t5
 ac0:	01f83021 	addu	a2,t7,t8
 ac4:	a50e0004 	sh	t6,4(t0)
 ac8:	804f1cd0 	lb	t7,7376(v0)
 acc:	00095283 	sra	t2,t1,0xa
 ad0:	000a5900 	sll	t3,t2,0x4
 ad4:	05e10005 	bgez	t7,aec <func_809FCC3C+0x80>
 ad8:	032b2021 	addu	a0,t9,t3
 adc:	80850000 	lb	a1,0(a0)
 ae0:	80980002 	lb	t8,2(a0)
 ae4:	8fab0030 	lw	t3,48(sp)
 ae8:	14b8001e 	bne	a1,t8,b64 <func_809FCC3C+0xf8>
 aec:	24e400e0 	addiu	a0,a3,224
 af0:	24650024 	addiu	a1,v1,36
 af4:	0c000000 	jal	0 <EnDoor_Init>
 af8:	afa6001c 	sw	a2,28(sp)
 afc:	8fa3003c 	lw	v1,60(sp)
 b00:	8fa80038 	lw	t0,56(sp)
 b04:	8fa50030 	lw	a1,48(sp)
 b08:	8c6a016c 	lw	t2,364(v1)
 b0c:	846900b6 	lh	t1,182(v1)
 b10:	850c0004 	lh	t4,4(t0)
 b14:	85590016 	lh	t9,22(t2)
 b18:	8fa6001c 	lw	a2,28(sp)
 b1c:	01395821 	addu	t3,t1,t9
 b20:	016c6821 	addu	t5,t3,t4
 b24:	01a22023 	subu	a0,t5,v0
 b28:	00042400 	sll	a0,a0,0x10
 b2c:	00042403 	sra	a0,a0,0x10
 b30:	04800003 	bltz	a0,b40 <func_809FCC3C+0xd4>
 b34:	00041023 	negu	v0,a0
 b38:	10000001 	b	b40 <func_809FCC3C+0xd4>
 b3c:	00801025 	move	v0,a0
 b40:	28414000 	slti	at,v0,16384
 b44:	50200005 	beqzl	at,b5c <func_809FCC3C+0xf0>
 b48:	8ccf0004 	lw	t7,4(a2)
 b4c:	8cce0000 	lw	t6,0(a2)
 b50:	1000000d 	b	b88 <func_809FCC3C+0x11c>
 b54:	acae0000 	sw	t6,0(a1)
 b58:	8ccf0004 	lw	t7,4(a2)
 b5c:	1000000a 	b	b88 <func_809FCC3C+0x11c>
 b60:	acaf0000 	sw	t7,0(a1)
 b64:	80780003 	lb	t8,3(v1)
 b68:	90620192 	lbu	v0,402(v1)
 b6c:	53050003 	beql	t8,a1,b7c <func_809FCC3C+0x110>
 b70:	00025080 	sll	t2,v0,0x2
 b74:	38420001 	xori	v0,v0,0x1
 b78:	00025080 	sll	t2,v0,0x2
 b7c:	00ca4821 	addu	t1,a2,t2
 b80:	8d390000 	lw	t9,0(t1)
 b84:	ad790000 	sw	t9,0(t3)
 b88:	8fbf0014 	lw	ra,20(sp)
 b8c:	27bd0028 	addiu	sp,sp,40
 b90:	00001025 	move	v0,zero
 b94:	03e00008 	jr	ra
 b98:	00000000 	nop

00000b9c <EnDoor_Draw>:
 b9c:	27bdffb0 	addiu	sp,sp,-80
 ba0:	afbf0024 	sw	ra,36(sp)
 ba4:	afb00020 	sw	s0,32(sp)
 ba8:	afa50054 	sw	a1,84(sp)
 bac:	808f001e 	lb	t7,30(a0)
 bb0:	808e0193 	lb	t6,403(a0)
 bb4:	00808025 	move	s0,a0
 bb8:	27a40038 	addiu	a0,sp,56
 bbc:	15cf0034 	bne	t6,t7,c90 <EnDoor_Draw+0xf4>
 bc0:	3c060000 	lui	a2,0x0
 bc4:	8ca50000 	lw	a1,0(a1)
 bc8:	24c60000 	addiu	a2,a2,0
 bcc:	2407038e 	li	a3,910
 bd0:	0c000000 	jal	0 <EnDoor_Init>
 bd4:	afa50048 	sw	a1,72(sp)
 bd8:	8fb90054 	lw	t9,84(sp)
 bdc:	0c000000 	jal	0 <EnDoor_Init>
 be0:	8f240000 	lw	a0,0(t9)
 be4:	8e050150 	lw	a1,336(s0)
 be8:	8e06016c 	lw	a2,364(s0)
 bec:	3c070000 	lui	a3,0x0
 bf0:	24e70000 	addiu	a3,a3,0
 bf4:	afb00014 	sw	s0,20(sp)
 bf8:	afa00010 	sw	zero,16(sp)
 bfc:	0c000000 	jal	0 <EnDoor_Init>
 c00:	8fa40054 	lw	a0,84(sp)
 c04:	86020032 	lh	v0,50(s0)
 c08:	8fa80048 	lw	t0,72(sp)
 c0c:	00003025 	move	a2,zero
 c10:	50400014 	beqzl	v0,c64 <EnDoor_Draw+0xc8>
 c14:	86050196 	lh	a1,406(s0)
 c18:	1840000a 	blez	v0,c44 <EnDoor_Draw+0xa8>
 c1c:	3c0dde00 	lui	t5,0xde00
 c20:	8d0302c0 	lw	v1,704(t0)
 c24:	3c0b0401 	lui	t3,0x401
 c28:	256bee00 	addiu	t3,t3,-4608
 c2c:	24690008 	addiu	t1,v1,8
 c30:	ad0902c0 	sw	t1,704(t0)
 c34:	3c0ade00 	lui	t2,0xde00
 c38:	ac6a0000 	sw	t2,0(v1)
 c3c:	10000008 	b	c60 <EnDoor_Draw+0xc4>
 c40:	ac6b0004 	sw	t3,4(v1)
 c44:	8d0302c0 	lw	v1,704(t0)
 c48:	3c0e0401 	lui	t6,0x401
 c4c:	25ceecb8 	addiu	t6,t6,-4936
 c50:	246c0008 	addiu	t4,v1,8
 c54:	ad0c02c0 	sw	t4,704(t0)
 c58:	ac6e0004 	sw	t6,4(v1)
 c5c:	ac6d0000 	sw	t5,0(v1)
 c60:	86050196 	lh	a1,406(s0)
 c64:	50a00004 	beqzl	a1,c78 <EnDoor_Draw+0xdc>
 c68:	8faf0054 	lw	t7,84(sp)
 c6c:	0c000000 	jal	0 <EnDoor_Init>
 c70:	8fa40054 	lw	a0,84(sp)
 c74:	8faf0054 	lw	t7,84(sp)
 c78:	3c060000 	lui	a2,0x0
 c7c:	24c60000 	addiu	a2,a2,0
 c80:	27a40038 	addiu	a0,sp,56
 c84:	240703ad 	li	a3,941
 c88:	0c000000 	jal	0 <EnDoor_Init>
 c8c:	8de50000 	lw	a1,0(t7)
 c90:	8fbf0024 	lw	ra,36(sp)
 c94:	8fb00020 	lw	s0,32(sp)
 c98:	27bd0050 	addiu	sp,sp,80
 c9c:	03e00008 	jr	ra
 ca0:	00000000 	nop
	...
