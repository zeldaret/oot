
build/src/overlays/actors/ovl_Shot_Sun/z_shot_sun.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ShotSun_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afb00018 	sw	s0,24(sp)
   8:	00808025 	move	s0,a0
   c:	afbf001c 	sw	ra,28(sp)
  10:	afa50034 	sw	a1,52(sp)
  14:	3c040000 	lui	a0,0x0
  18:	24840000 	addiu	a0,a0,0
  1c:	0c000000 	jal	0 <ShotSun_Init>
  20:	8605001c 	lh	a1,28(s0)
  24:	8602001c 	lh	v0,28(s0)
  28:	24010040 	li	at,64
  2c:	3c080000 	lui	t0,0x0
  30:	304200ff 	andi	v0,v0,0xff
  34:	10410004 	beq	v0,at,48 <ShotSun_Init+0x48>
  38:	25080000 	addiu	t0,t0,0
  3c:	24010041 	li	at,65
  40:	1441000d 	bne	v0,at,78 <ShotSun_Init+0x78>
  44:	8fa40034 	lw	a0,52(sp)
  48:	8e0e0004 	lw	t6,4(s0)
  4c:	3c010200 	lui	at,0x200
  50:	a20001a4 	sb	zero,420(s0)
  54:	35cf0010 	ori	t7,t6,0x10
  58:	01e1c825 	or	t9,t7,at
  5c:	ae0f0004 	sw	t7,4(s0)
  60:	3c010800 	lui	at,0x800
  64:	ae190004 	sw	t9,4(s0)
  68:	03215025 	or	t2,t9,at
  6c:	ae080198 	sw	t0,408(s0)
  70:	10000011 	b	b8 <ShotSun_Init+0xb8>
  74:	ae0a0004 	sw	t2,4(s0)
  78:	2605014c 	addiu	a1,s0,332
  7c:	0c000000 	jal	0 <ShotSun_Init>
  80:	afa50024 	sw	a1,36(sp)
  84:	3c070000 	lui	a3,0x0
  88:	8fa50024 	lw	a1,36(sp)
  8c:	24e70020 	addiu	a3,a3,32
  90:	8fa40034 	lw	a0,52(sp)
  94:	0c000000 	jal	0 <ShotSun_Init>
  98:	02003025 	move	a2,s0
  9c:	8e0c0004 	lw	t4,4(s0)
  a0:	3c0b0000 	lui	t3,0x0
  a4:	2401fffe 	li	at,-2
  a8:	256b0000 	addiu	t3,t3,0
  ac:	01816824 	and	t5,t4,at
  b0:	ae0b0198 	sw	t3,408(s0)
  b4:	ae0d0004 	sw	t5,4(s0)
  b8:	8fbf001c 	lw	ra,28(sp)
  bc:	8fb00018 	lw	s0,24(sp)
  c0:	27bd0030 	addiu	sp,sp,48
  c4:	03e00008 	jr	ra
  c8:	00000000 	nop

000000cc <ShotSun_Destroy>:
  cc:	27bdffe8 	addiu	sp,sp,-24
  d0:	afbf0014 	sw	ra,20(sp)
  d4:	8482001c 	lh	v0,28(a0)
  d8:	24010040 	li	at,64
  dc:	00803025 	move	a2,a0
  e0:	304200ff 	andi	v0,v0,0xff
  e4:	10410005 	beq	v0,at,fc <ShotSun_Destroy+0x30>
  e8:	24010041 	li	at,65
  ec:	10410003 	beq	v0,at,fc <ShotSun_Destroy+0x30>
  f0:	00a02025 	move	a0,a1
  f4:	0c000000 	jal	0 <ShotSun_Init>
  f8:	24c5014c 	addiu	a1,a2,332
  fc:	8fbf0014 	lw	ra,20(sp)
 100:	27bd0018 	addiu	sp,sp,24
 104:	03e00008 	jr	ra
 108:	00000000 	nop

0000010c <ShotSun_SpawnFairy>:
 10c:	27bdffc0 	addiu	sp,sp,-64
 110:	afbf0034 	sw	ra,52(sp)
 114:	afb00030 	sw	s0,48(sp)
 118:	848301a2 	lh	v1,418(a0)
 11c:	8482001c 	lh	v0,28(a0)
 120:	00808025 	move	s0,a0
 124:	18600004 	blez	v1,138 <ShotSun_SpawnFairy+0x2c>
 128:	304200ff 	andi	v0,v0,0xff
 12c:	246effff 	addiu	t6,v1,-1
 130:	1000001b 	b	1a0 <ShotSun_SpawnFairy+0x94>
 134:	a48e01a2 	sh	t6,418(a0)
 138:	24010040 	li	at,64
 13c:	10410006 	beq	v0,at,158 <ShotSun_SpawnFairy+0x4c>
 140:	24a41c24 	addiu	a0,a1,7204
 144:	24010041 	li	at,65
 148:	10410006 	beq	v0,at,164 <ShotSun_SpawnFairy+0x58>
 14c:	24180007 	li	t8,7
 150:	10000006 	b	16c <ShotSun_SpawnFairy+0x60>
 154:	c604000c 	lwc1	$f4,12(s0)
 158:	240f0007 	li	t7,7
 15c:	10000002 	b	168 <ShotSun_SpawnFairy+0x5c>
 160:	afaf0038 	sw	t7,56(sp)
 164:	afb80038 	sw	t8,56(sp)
 168:	c604000c 	lwc1	$f4,12(s0)
 16c:	8e070008 	lw	a3,8(s0)
 170:	8fb90038 	lw	t9,56(sp)
 174:	e7a40010 	swc1	$f4,16(sp)
 178:	c6060010 	lwc1	$f6,16(s0)
 17c:	afa00020 	sw	zero,32(sp)
 180:	afa0001c 	sw	zero,28(sp)
 184:	afa00018 	sw	zero,24(sp)
 188:	24060018 	li	a2,24
 18c:	afb90024 	sw	t9,36(sp)
 190:	0c000000 	jal	0 <ShotSun_Init>
 194:	e7a60014 	swc1	$f6,20(sp)
 198:	0c000000 	jal	0 <ShotSun_Init>
 19c:	02002025 	move	a0,s0
 1a0:	8fbf0034 	lw	ra,52(sp)
 1a4:	8fb00030 	lw	s0,48(sp)
 1a8:	27bd0040 	addiu	sp,sp,64
 1ac:	03e00008 	jr	ra
 1b0:	00000000 	nop

000001b4 <ShotSun_TriggerFairy>:
 1b4:	27bdffc8 	addiu	sp,sp,-56
 1b8:	afbf0034 	sw	ra,52(sp)
 1bc:	afb00030 	sw	s0,48(sp)
 1c0:	00808025 	move	s0,a0
 1c4:	0c000000 	jal	0 <ShotSun_Init>
 1c8:	afa5003c 	sw	a1,60(sp)
 1cc:	920e0002 	lbu	t6,2(s0)
 1d0:	3c180000 	lui	t8,0x0
 1d4:	8fa5003c 	lw	a1,60(sp)
 1d8:	104e0004 	beq	v0,t6,1ec <ShotSun_TriggerFairy+0x38>
 1dc:	27180000 	addiu	t8,t8,0
 1e0:	860f01a2 	lh	t7,418(s0)
 1e4:	51e00015 	beqzl	t7,23c <ShotSun_TriggerFairy+0x88>
 1e8:	8fbf0034 	lw	ra,52(sp)
 1ec:	c604000c 	lwc1	$f4,12(s0)
 1f0:	24190032 	li	t9,50
 1f4:	ae180198 	sw	t8,408(s0)
 1f8:	a61901a2 	sh	t9,418(s0)
 1fc:	8e070008 	lw	a3,8(s0)
 200:	e7a40010 	swc1	$f4,16(sp)
 204:	c6060010 	lwc1	$f6,16(s0)
 208:	24080011 	li	t0,17
 20c:	afa80024 	sw	t0,36(sp)
 210:	afa00020 	sw	zero,32(sp)
 214:	afa0001c 	sw	zero,28(sp)
 218:	afa00018 	sw	zero,24(sp)
 21c:	24a41c24 	addiu	a0,a1,7204
 220:	2406008c 	li	a2,140
 224:	0c000000 	jal	0 <ShotSun_Init>
 228:	e7a60014 	swc1	$f6,20(sp)
 22c:	260400e4 	addiu	a0,s0,228
 230:	0c000000 	jal	0 <ShotSun_Init>
 234:	2405287b 	li	a1,10363
 238:	8fbf0034 	lw	ra,52(sp)
 23c:	8fb00030 	lw	s0,48(sp)
 240:	27bd0038 	addiu	sp,sp,56
 244:	03e00008 	jr	ra
 248:	00000000 	nop

0000024c <func_80BADF0C>:
 24c:	27bdffd8 	addiu	sp,sp,-40
 250:	afbf0014 	sw	ra,20(sp)
 254:	8ca31c44 	lw	v1,7236(a1)
 258:	8488001c 	lh	t0,28(a0)
 25c:	00803025 	move	a2,a0
 260:	00a03825 	move	a3,a1
 264:	310800ff 	andi	t0,t0,0xff
 268:	afa8001c 	sw	t0,28(sp)
 26c:	afa7002c 	sw	a3,44(sp)
 270:	afa60028 	sw	a2,40(sp)
 274:	24840024 	addiu	a0,a0,36
 278:	24650024 	addiu	a1,v1,36
 27c:	0c000000 	jal	0 <ShotSun_Init>
 280:	afa30024 	sw	v1,36(sp)
 284:	3c010000 	lui	at,0x0
 288:	c424004c 	lwc1	$f4,76(at)
 28c:	8fa30024 	lw	v1,36(sp)
 290:	8fa60028 	lw	a2,40(sp)
 294:	4600203c 	c.lt.s	$f4,$f0
 298:	8fa7002c 	lw	a3,44(sp)
 29c:	8fa8001c 	lw	t0,28(sp)
 2a0:	45020004 	bc1fl	2b4 <func_80BADF0C+0x68>
 2a4:	90c201a4 	lbu	v0,420(a2)
 2a8:	10000038 	b	38c <func_80BADF0C+0x140>
 2ac:	a0c001a4 	sb	zero,420(a2)
 2b0:	90c201a4 	lbu	v0,420(a2)
 2b4:	24010001 	li	at,1
 2b8:	1440000c 	bnez	v0,2ec <func_80BADF0C+0xa0>
 2bc:	00000000 	nop
 2c0:	8c620680 	lw	v0,1664(v1)
 2c4:	24180001 	li	t8,1
 2c8:	000271c0 	sll	t6,v0,0x7
 2cc:	05c20006 	bltzl	t6,2e8 <func_80BADF0C+0x9c>
 2d0:	a0d801a4 	sb	t8,420(a2)
 2d4:	3c010080 	lui	at,0x80
 2d8:	00417825 	or	t7,v0,at
 2dc:	1000002b 	b	38c <func_80BADF0C+0x140>
 2e0:	ac6f0680 	sw	t7,1664(v1)
 2e4:	a0d801a4 	sb	t8,420(a2)
 2e8:	330200ff 	andi	v0,t8,0xff
 2ec:	14410008 	bne	v0,at,310 <func_80BADF0C+0xc4>
 2f0:	00e02025 	move	a0,a3
 2f4:	24050001 	li	a1,1
 2f8:	0c000000 	jal	0 <ShotSun_Init>
 2fc:	afa60028 	sw	a2,40(sp)
 300:	8fa60028 	lw	a2,40(sp)
 304:	24190002 	li	t9,2
 308:	10000020 	b	38c <func_80BADF0C+0x140>
 30c:	a0d901a4 	sb	t9,420(a2)
 310:	24010002 	li	at,2
 314:	1441001d 	bne	v0,at,38c <func_80BADF0C+0x140>
 318:	3c010001 	lui	at,0x1
 31c:	00e11021 	addu	v0,a3,at
 320:	944904c6 	lhu	t1,1222(v0)
 324:	24010004 	li	at,4
 328:	15210018 	bne	t1,at,38c <func_80BADF0C+0x140>
 32c:	24010040 	li	at,64
 330:	55010005 	bnel	t0,at,348 <func_80BADF0C+0xfc>
 334:	24010041 	li	at,65
 338:	944a04c4 	lhu	t2,1220(v0)
 33c:	24010009 	li	at,9
 340:	11410006 	beq	t2,at,35c <func_80BADF0C+0x110>
 344:	24010041 	li	at,65
 348:	55010010 	bnel	t0,at,38c <func_80BADF0C+0x140>
 34c:	a0c001a4 	sb	zero,420(a2)
 350:	944b04c4 	lhu	t3,1220(v0)
 354:	2401000b 	li	at,11
 358:	1561000b 	bne	t3,at,388 <func_80BADF0C+0x13c>
 35c:	3c0c0000 	lui	t4,0x0
 360:	258c0000 	addiu	t4,t4,0
 364:	accc0198 	sw	t4,408(a2)
 368:	afa60028 	sw	a2,40(sp)
 36c:	00e02025 	move	a0,a3
 370:	0c000000 	jal	0 <ShotSun_Init>
 374:	00c02825 	move	a1,a2
 378:	8fa60028 	lw	a2,40(sp)
 37c:	a4c001a2 	sh	zero,418(a2)
 380:	10000002 	b	38c <func_80BADF0C+0x140>
 384:	a0c001a4 	sb	zero,420(a2)
 388:	a0c001a4 	sb	zero,420(a2)
 38c:	8fbf0014 	lw	ra,20(sp)
 390:	27bd0028 	addiu	sp,sp,40
 394:	03e00008 	jr	ra
 398:	00000000 	nop

0000039c <ShotSun_UpdateHyliaSun>:
 39c:	27bdffa0 	addiu	sp,sp,-96
 3a0:	afbf0034 	sw	ra,52(sp)
 3a4:	afb00030 	sw	s0,48(sp)
 3a8:	908e015d 	lbu	t6,349(a0)
 3ac:	00a08025 	move	s0,a1
 3b0:	00803825 	move	a3,a0
 3b4:	31cf0002 	andi	t7,t6,0x2
 3b8:	11e00048 	beqz	t7,4dc <ShotSun_UpdateHyliaSun+0x140>
 3bc:	8ca31c44 	lw	v1,7236(a1)
 3c0:	24044802 	li	a0,18434
 3c4:	0c000000 	jal	0 <ShotSun_Init>
 3c8:	afa70060 	sw	a3,96(sp)
 3cc:	3c040000 	lui	a0,0x0
 3d0:	0c000000 	jal	0 <ShotSun_Init>
 3d4:	2484002c 	addiu	a0,a0,44
 3d8:	3c180000 	lui	t8,0x0
 3dc:	93180004 	lbu	t8,4(t8)
 3e0:	3c190000 	lui	t9,0x0
 3e4:	240100ff 	li	at,255
 3e8:	0338c821 	addu	t9,t9,t8
 3ec:	93390074 	lbu	t9,116(t9)
 3f0:	02002025 	move	a0,s0
 3f4:	27a50040 	addiu	a1,sp,64
 3f8:	17210024 	bne	t9,at,48c <ShotSun_UpdateHyliaSun+0xf0>
 3fc:	2406000e 	li	a2,14
 400:	3c01c448 	lui	at,0xc448
 404:	44812000 	mtc1	at,$f4
 408:	3c010000 	lui	at,0x0
 40c:	c4260050 	lwc1	$f6,80(at)
 410:	24080007 	li	t0,7
 414:	afa80024 	sw	t0,36(sp)
 418:	26041c24 	addiu	a0,s0,7204
 41c:	02002825 	move	a1,s0
 420:	2406010f 	li	a2,271
 424:	3c07442f 	lui	a3,0x442f
 428:	afa00018 	sw	zero,24(sp)
 42c:	afa0001c 	sw	zero,28(sp)
 430:	afa00020 	sw	zero,32(sp)
 434:	e7a40010 	swc1	$f4,16(sp)
 438:	0c000000 	jal	0 <ShotSun_Init>
 43c:	e7a60014 	swc1	$f6,20(sp)
 440:	3c030000 	lui	v1,0x0
 444:	24630000 	addiu	v1,v1,0
 448:	00034900 	sll	t1,v1,0x4
 44c:	00095702 	srl	t2,t1,0x1c
 450:	000a5880 	sll	t3,t2,0x2
 454:	3c0c0000 	lui	t4,0x0
 458:	018b6021 	addu	t4,t4,t3
 45c:	3c0100ff 	lui	at,0xff
 460:	8d8c0000 	lw	t4,0(t4)
 464:	3421ffff 	ori	at,at,0xffff
 468:	00616824 	and	t5,v1,at
 46c:	3c018000 	lui	at,0x8000
 470:	018d7021 	addu	t6,t4,t5
 474:	01c17821 	addu	t7,t6,at
 478:	ae0f1d68 	sw	t7,7528(s0)
 47c:	3c010000 	lui	at,0x0
 480:	24180001 	li	t8,1
 484:	10000011 	b	4cc <ShotSun_UpdateHyliaSun+0x130>
 488:	a0381414 	sb	t8,5140(at)
 48c:	3c01442f 	lui	at,0x442f
 490:	44814000 	mtc1	at,$f8
 494:	3c01c448 	lui	at,0xc448
 498:	44815000 	mtc1	at,$f10
 49c:	3c010000 	lui	at,0x0
 4a0:	c4300054 	lwc1	$f16,84(at)
 4a4:	e7a80040 	swc1	$f8,64(sp)
 4a8:	e7aa0044 	swc1	$f10,68(sp)
 4ac:	0c000000 	jal	0 <ShotSun_Init>
 4b0:	e7b00048 	swc1	$f16,72(sp)
 4b4:	10400005 	beqz	v0,4cc <ShotSun_UpdateHyliaSun+0x130>
 4b8:	00000000 	nop
 4bc:	44809000 	mtc1	zero,$f18
 4c0:	24191770 	li	t9,6000
 4c4:	a459015a 	sh	t9,346(v0)
 4c8:	e4520068 	swc1	$f18,104(v0)
 4cc:	0c000000 	jal	0 <ShotSun_Init>
 4d0:	8fa40060 	lw	a0,96(sp)
 4d4:	1000003e 	b	5d0 <ShotSun_UpdateHyliaSun+0x234>
 4d8:	8fbf0034 	lw	ra,52(sp)
 4dc:	3c0142f0 	lui	at,0x42f0
 4e0:	44812000 	mtc1	at,$f4
 4e4:	c4e60090 	lwc1	$f6,144(a3)
 4e8:	3c020000 	lui	v0,0x0
 4ec:	4606203c 	c.lt.s	$f4,$f6
 4f0:	00000000 	nop
 4f4:	45030036 	bc1tl	5d0 <ShotSun_UpdateHyliaSun+0x234>
 4f8:	8fbf0034 	lw	ra,52(sp)
 4fc:	9442000c 	lhu	v0,12(v0)
 500:	28414555 	slti	at,v0,17749
 504:	14200031 	bnez	at,5cc <ShotSun_UpdateHyliaSun+0x230>
 508:	28415000 	slti	at,v0,20480
 50c:	1020002f 	beqz	at,5cc <ShotSun_UpdateHyliaSun+0x230>
 510:	3c010000 	lui	at,0x0
 514:	c4200058 	lwc1	$f0,88(at)
 518:	3c010001 	lui	at,0x1
 51c:	02011021 	addu	v0,s0,at
 520:	c44a0a28 	lwc1	$f10,2600(v0)
 524:	c468095c 	lwc1	$f8,2396(v1)
 528:	3c0141f0 	lui	at,0x41f0
 52c:	46005402 	mul.s	$f16,$f10,$f0
 530:	44815000 	mtc1	at,$f10
 534:	27a50058 	addiu	a1,sp,88
 538:	24e6014c 	addiu	a2,a3,332
 53c:	00c02025 	move	a0,a2
 540:	46104480 	add.s	$f18,$f8,$f16
 544:	4600910d 	trunc.w.s	$f4,$f18
 548:	44092000 	mfc1	t1,$f4
 54c:	00000000 	nop
 550:	a7a90058 	sh	t1,88(sp)
 554:	c4500a2c 	lwc1	$f16,2604(v0)
 558:	c4660960 	lwc1	$f6,2400(v1)
 55c:	46008482 	mul.s	$f18,$f16,$f0
 560:	460a3201 	sub.s	$f8,$f6,$f10
 564:	46124100 	add.s	$f4,$f8,$f18
 568:	4600218d 	trunc.w.s	$f6,$f4
 56c:	440b3000 	mfc1	t3,$f6
 570:	00000000 	nop
 574:	a7ab005a 	sh	t3,90(sp)
 578:	c4500a30 	lwc1	$f16,2608(v0)
 57c:	c46a0964 	lwc1	$f10,2404(v1)
 580:	46008202 	mul.s	$f8,$f16,$f0
 584:	46085480 	add.s	$f18,$f10,$f8
 588:	4600910d 	trunc.w.s	$f4,$f18
 58c:	440d2000 	mfc1	t5,$f4
 590:	00000000 	nop
 594:	a7ad005c 	sh	t5,92(sp)
 598:	8caf0000 	lw	t7,0(a1)
 59c:	a8ef019c 	swl	t7,412(a3)
 5a0:	b8ef019f 	swr	t7,415(a3)
 5a4:	94af0004 	lhu	t7,4(a1)
 5a8:	a4ef01a0 	sh	t7,416(a3)
 5ac:	0c000000 	jal	0 <ShotSun_Init>
 5b0:	afa6003c 	sw	a2,60(sp)
 5b4:	3c010001 	lui	at,0x1
 5b8:	34211e60 	ori	at,at,0x1e60
 5bc:	8fa6003c 	lw	a2,60(sp)
 5c0:	02012821 	addu	a1,s0,at
 5c4:	0c000000 	jal	0 <ShotSun_Init>
 5c8:	02002025 	move	a0,s0
 5cc:	8fbf0034 	lw	ra,52(sp)
 5d0:	8fb00030 	lw	s0,48(sp)
 5d4:	27bd0060 	addiu	sp,sp,96
 5d8:	03e00008 	jr	ra
 5dc:	00000000 	nop

000005e0 <ShotSun_Update>:
 5e0:	27bdffe8 	addiu	sp,sp,-24
 5e4:	afbf0014 	sw	ra,20(sp)
 5e8:	8c990198 	lw	t9,408(a0)
 5ec:	0320f809 	jalr	t9
 5f0:	00000000 	nop
 5f4:	8fbf0014 	lw	ra,20(sp)
 5f8:	27bd0018 	addiu	sp,sp,24
 5fc:	03e00008 	jr	ra
 600:	00000000 	nop
	...
