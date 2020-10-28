
build/src/overlays/actors/ovl_Item_Etcetera/z_item_etcetera.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ItemEtcetera_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac85015c 	sw	a1,348(a0)

00000008 <ItemEtcetera_Init>:
   8:	27bdffc8 	addiu	sp,sp,-56
   c:	afbf001c 	sw	ra,28(sp)
  10:	afb00018 	sw	s0,24(sp)
  14:	afa5003c 	sw	a1,60(sp)
  18:	8485001c 	lh	a1,28(a0)
  1c:	00808025 	move	s0,a0
  20:	3c040000 	lui	a0,0x0
  24:	30a500ff 	andi	a1,a1,0xff
  28:	afa5002c 	sw	a1,44(sp)
  2c:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
  30:	24840000 	addiu	a0,a0,0
  34:	8fa2002c 	lw	v0,44(sp)
  38:	8fa4003c 	lw	a0,60(sp)
  3c:	3c010001 	lui	at,0x1
  40:	3c050000 	lui	a1,0x0
  44:	00021040 	sll	v0,v0,0x1
  48:	00a22821 	addu	a1,a1,v0
  4c:	342117a4 	ori	at,at,0x17a4
  50:	84a50020 	lh	a1,32(a1)
  54:	afa20024 	sw	v0,36(sp)
  58:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
  5c:	00812021 	addu	a0,a0,at
  60:	3c040000 	lui	a0,0x0
  64:	2484000c 	addiu	a0,a0,12
  68:	00402825 	move	a1,v0
  6c:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
  70:	afa20028 	sw	v0,40(sp)
  74:	8fa30028 	lw	v1,40(sp)
  78:	3c040000 	lui	a0,0x0
  7c:	2484001c 	addiu	a0,a0,28
  80:	04610006 	bgez	v1,9c <ItemEtcetera_Init+0x94>
  84:	3c050000 	lui	a1,0x0
  88:	24a50020 	addiu	a1,a1,32
  8c:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
  90:	240600f1 	li	a2,241
  94:	10000003 	b	a4 <ItemEtcetera_Init+0x9c>
  98:	8fa20024 	lw	v0,36(sp)
  9c:	a2030154 	sb	v1,340(s0)
  a0:	8fa20024 	lw	v0,36(sp)
  a4:	3c0e0000 	lui	t6,0x0
  a8:	3c0f0000 	lui	t7,0x0
  ac:	01c27021 	addu	t6,t6,v0
  b0:	85ce003c 	lh	t6,60(t6)
  b4:	01e27821 	addu	t7,t7,v0
  b8:	3c180000 	lui	t8,0x0
  bc:	a60e0150 	sh	t6,336(s0)
  c0:	85ef0058 	lh	t7,88(t7)
  c4:	3c190000 	lui	t9,0x0
  c8:	27180000 	addiu	t8,t8,0
  cc:	27390000 	addiu	t9,t9,0
  d0:	ae18014c 	sw	t8,332(s0)
  d4:	ae190158 	sw	t9,344(s0)
  d8:	02002025 	move	a0,s0
  dc:	3c053e80 	lui	a1,0x3e80
  e0:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
  e4:	a60f0152 	sh	t7,338(s0)
  e8:	3c050000 	lui	a1,0x0
  ec:	24a50000 	addiu	a1,a1,0
  f0:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
  f4:	02002025 	move	a0,s0
  f8:	8fa8002c 	lw	t0,44(sp)
  fc:	2509ffff 	addiu	t1,t0,-1
 100:	2d21000d 	sltiu	at,t1,13
 104:	1020002e 	beqz	at,1c0 <ItemEtcetera_Init+0x1b8>
 108:	00094880 	sll	t1,t1,0x2
 10c:	3c010000 	lui	at,0x0
 110:	00290821 	addu	at,at,t1
 114:	8c290084 	lw	t1,132(at)
 118:	01200008 	jr	t1
 11c:	00000000 	nop
 120:	02002025 	move	a0,s0
 124:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 128:	3c053f00 	lui	a1,0x3f00
 12c:	3c0a0000 	lui	t2,0x0
 130:	254a0000 	addiu	t2,t2,0
 134:	ae0a014c 	sw	t2,332(s0)
 138:	3c0b0000 	lui	t3,0x0
 13c:	956b0eda 	lhu	t3,3802(t3)
 140:	316c0002 	andi	t4,t3,0x2
 144:	5180001f 	beqzl	t4,1c4 <ItemEtcetera_Init+0x1bc>
 148:	8fbf001c 	lw	ra,28(sp)
 14c:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 150:	02002025 	move	a0,s0
 154:	1000001b 	b	1c4 <ItemEtcetera_Init+0x1bc>
 158:	8fbf001c 	lw	ra,28(sp)
 15c:	3c0d0000 	lui	t5,0x0
 160:	25ad0000 	addiu	t5,t5,0
 164:	ae0d014c 	sw	t5,332(s0)
 168:	02002025 	move	a0,s0
 16c:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 170:	3c053f00 	lui	a1,0x3f00
 174:	3c014248 	lui	at,0x4248
 178:	44812000 	mtc1	at,$f4
 17c:	ae000134 	sw	zero,308(s0)
 180:	1000000f 	b	1c0 <ItemEtcetera_Init+0x1b8>
 184:	e60400bc 	swc1	$f4,188(s0)
 188:	02002025 	move	a0,s0
 18c:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 190:	3c053f00 	lui	a1,0x3f00
 194:	3c014170 	lui	at,0x4170
 198:	44814000 	mtc1	at,$f8
 19c:	c6060028 	lwc1	$f6,40(s0)
 1a0:	3c0e0000 	lui	t6,0x0
 1a4:	3c0f0000 	lui	t7,0x0
 1a8:	46083280 	add.s	$f10,$f6,$f8
 1ac:	25ce0000 	addiu	t6,t6,0
 1b0:	25ef0000 	addiu	t7,t7,0
 1b4:	ae0e014c 	sw	t6,332(s0)
 1b8:	ae0f0158 	sw	t7,344(s0)
 1bc:	e60a0028 	swc1	$f10,40(s0)
 1c0:	8fbf001c 	lw	ra,28(sp)
 1c4:	8fb00018 	lw	s0,24(sp)
 1c8:	27bd0038 	addiu	sp,sp,56
 1cc:	03e00008 	jr	ra
 1d0:	00000000 	nop

000001d4 <ItemEtcetera_Destroy>:
 1d4:	afa40000 	sw	a0,0(sp)
 1d8:	03e00008 	jr	ra
 1dc:	afa50004 	sw	a1,4(sp)

000001e0 <func_80B857D0>:
 1e0:	3c010001 	lui	at,0x1
 1e4:	27bdffe8 	addiu	sp,sp,-24
 1e8:	00803025 	move	a2,a0
 1ec:	342117a4 	ori	at,at,0x17a4
 1f0:	afbf0014 	sw	ra,20(sp)
 1f4:	00a12021 	addu	a0,a1,at
 1f8:	90c50154 	lbu	a1,340(a2)
 1fc:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 200:	afa60018 	sw	a2,24(sp)
 204:	10400007 	beqz	v0,224 <func_80B857D0+0x44>
 208:	8fa60018 	lw	a2,24(sp)
 20c:	90ce0154 	lbu	t6,340(a2)
 210:	8ccf0158 	lw	t7,344(a2)
 214:	8cd8014c 	lw	t8,332(a2)
 218:	a0ce001e 	sb	t6,30(a2)
 21c:	accf0134 	sw	t7,308(a2)
 220:	acd8015c 	sw	t8,348(a2)
 224:	8fbf0014 	lw	ra,20(sp)
 228:	27bd0018 	addiu	sp,sp,24
 22c:	03e00008 	jr	ra
 230:	00000000 	nop

00000234 <func_80B85824>:
 234:	27bdffd8 	addiu	sp,sp,-40
 238:	afbf0024 	sw	ra,36(sp)
 23c:	afb00020 	sw	s0,32(sp)
 240:	00808025 	move	s0,a0
 244:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 248:	afa5002c 	sw	a1,44(sp)
 24c:	10400011 	beqz	v0,294 <func_80B85824+0x60>
 250:	02002025 	move	a0,s0
 254:	860e001c 	lh	t6,28(s0)
 258:	24010001 	li	at,1
 25c:	3c020000 	lui	v0,0x0
 260:	31cf00ff 	andi	t7,t6,0xff
 264:	15e10007 	bne	t7,at,284 <func_80B85824+0x50>
 268:	24420000 	addiu	v0,v0,0
 26c:	94580eda 	lhu	t8,3802(v0)
 270:	8fa4002c 	lw	a0,44(sp)
 274:	2405000b 	li	a1,11
 278:	37190002 	ori	t9,t8,0x2
 27c:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 280:	a4590eda 	sh	t9,3802(v0)
 284:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 288:	02002025 	move	a0,s0
 28c:	10000009 	b	2b4 <func_80B85824+0x80>
 290:	8fbf0024 	lw	ra,36(sp)
 294:	3c014248 	lui	at,0x4248
 298:	44812000 	mtc1	at,$f4
 29c:	86060152 	lh	a2,338(s0)
 2a0:	8fa5002c 	lw	a1,44(sp)
 2a4:	3c0741f0 	lui	a3,0x41f0
 2a8:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 2ac:	e7a40010 	swc1	$f4,16(sp)
 2b0:	8fbf0024 	lw	ra,36(sp)
 2b4:	8fb00020 	lw	s0,32(sp)
 2b8:	27bd0028 	addiu	sp,sp,40
 2bc:	03e00008 	jr	ra
 2c0:	00000000 	nop

000002c4 <func_80B858B4>:
 2c4:	27bdffd8 	addiu	sp,sp,-40
 2c8:	afbf0024 	sw	ra,36(sp)
 2cc:	afb10020 	sw	s1,32(sp)
 2d0:	afb0001c 	sw	s0,28(sp)
 2d4:	00a08025 	move	s0,a1
 2d8:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 2dc:	00808825 	move	s1,a0
 2e0:	10400011 	beqz	v0,328 <func_80B858B4+0x64>
 2e4:	02202025 	move	a0,s1
 2e8:	862e001c 	lh	t6,28(s1)
 2ec:	24010001 	li	at,1
 2f0:	3c020000 	lui	v0,0x0
 2f4:	31cf00ff 	andi	t7,t6,0xff
 2f8:	15e10007 	bne	t7,at,318 <func_80B858B4+0x54>
 2fc:	24420000 	addiu	v0,v0,0
 300:	94580eda 	lhu	t8,3802(v0)
 304:	02002025 	move	a0,s0
 308:	2405000b 	li	a1,11
 30c:	37190002 	ori	t9,t8,0x2
 310:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 314:	a4590eda 	sh	t9,3802(v0)
 318:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 31c:	02202025 	move	a0,s1
 320:	1000001a 	b	38c <func_80B858B4+0xc8>
 324:	8fbf0024 	lw	ra,36(sp)
 328:	3c014248 	lui	at,0x4248
 32c:	44812000 	mtc1	at,$f4
 330:	86260152 	lh	a2,338(s1)
 334:	02002825 	move	a1,s0
 338:	3c0741f0 	lui	a3,0x41f0
 33c:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 340:	e7a40010 	swc1	$f4,16(sp)
 344:	3c080001 	lui	t0,0x1
 348:	01104021 	addu	t0,t0,s0
 34c:	8d081de4 	lw	t0,7652(t0)
 350:	02002025 	move	a0,s0
 354:	26250024 	addiu	a1,s1,36
 358:	3109000d 	andi	t1,t0,0xd
 35c:	1520000a 	bnez	t1,388 <func_80B858B4+0xc4>
 360:	3c014120 	lui	at,0x4120
 364:	44800000 	mtc1	zero,$f0
 368:	44813000 	mtc1	at,$f6
 36c:	3c010000 	lui	at,0x0
 370:	c42800b8 	lwc1	$f8,184(at)
 374:	44060000 	mfc1	a2,$f0
 378:	44070000 	mfc1	a3,$f0
 37c:	e7a60010 	swc1	$f6,16(sp)
 380:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 384:	e7a80014 	swc1	$f8,20(sp)
 388:	8fbf0024 	lw	ra,36(sp)
 38c:	8fb0001c 	lw	s0,28(sp)
 390:	8fb10020 	lw	s1,32(sp)
 394:	03e00008 	jr	ra
 398:	27bd0028 	addiu	sp,sp,40

0000039c <ItemEtcetera_SpawnSparkles>:
 39c:	27bdffc8 	addiu	sp,sp,-56
 3a0:	3c014040 	lui	at,0x4040
 3a4:	afbf0024 	sw	ra,36(sp)
 3a8:	44816000 	mtc1	at,$f12
 3ac:	afa40038 	sw	a0,56(sp)
 3b0:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 3b4:	afa5003c 	sw	a1,60(sp)
 3b8:	3c010000 	lui	at,0x0
 3bc:	e4200074 	swc1	$f0,116(at)
 3c0:	3c014040 	lui	at,0x4040
 3c4:	44816000 	mtc1	at,$f12
 3c8:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 3cc:	00000000 	nop
 3d0:	3c010000 	lui	at,0x0
 3d4:	e420007c 	swc1	$f0,124(at)
 3d8:	3c010000 	lui	at,0x0
 3dc:	c42400bc 	lwc1	$f4,188(at)
 3e0:	3c010000 	lui	at,0x0
 3e4:	e4240078 	swc1	$f4,120(at)
 3e8:	3c010000 	lui	at,0x0
 3ec:	c42600c0 	lwc1	$f6,192(at)
 3f0:	3c010000 	lui	at,0x0
 3f4:	e4260084 	swc1	$f6,132(at)
 3f8:	3c014140 	lui	at,0x4140
 3fc:	44816000 	mtc1	at,$f12
 400:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 404:	00000000 	nop
 408:	8fae0038 	lw	t6,56(sp)
 40c:	c5c80024 	lwc1	$f8,36(t6)
 410:	46080280 	add.s	$f10,$f0,$f8
 414:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 418:	e7aa002c 	swc1	$f10,44(sp)
 41c:	3c0140c0 	lui	at,0x40c0
 420:	44818000 	mtc1	at,$f16
 424:	8faf0038 	lw	t7,56(sp)
 428:	3c014140 	lui	at,0x4140
 42c:	46100482 	mul.s	$f18,$f0,$f16
 430:	c5e40028 	lwc1	$f4,40(t7)
 434:	44816000 	mtc1	at,$f12
 438:	46049180 	add.s	$f6,$f18,$f4
 43c:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 440:	e7a60030 	swc1	$f6,48(sp)
 444:	8fb80038 	lw	t8,56(sp)
 448:	3c190000 	lui	t9,0x0
 44c:	3c080000 	lui	t0,0x0
 450:	c708002c 	lwc1	$f8,44(t8)
 454:	25080090 	addiu	t0,t0,144
 458:	2739008c 	addiu	t9,t9,140
 45c:	46080280 	add.s	$f10,$f0,$f8
 460:	3c060000 	lui	a2,0x0
 464:	3c070000 	lui	a3,0x0
 468:	24091388 	li	t1,5000
 46c:	240a0010 	li	t2,16
 470:	e7aa0034 	swc1	$f10,52(sp)
 474:	afaa001c 	sw	t2,28(sp)
 478:	afa90018 	sw	t1,24(sp)
 47c:	24e70080 	addiu	a3,a3,128
 480:	24c60074 	addiu	a2,a2,116
 484:	afb90010 	sw	t9,16(sp)
 488:	afa80014 	sw	t0,20(sp)
 48c:	8fa4003c 	lw	a0,60(sp)
 490:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 494:	27a5002c 	addiu	a1,sp,44
 498:	8fbf0024 	lw	ra,36(sp)
 49c:	27bd0038 	addiu	sp,sp,56
 4a0:	03e00008 	jr	ra
 4a4:	00000000 	nop

000004a8 <ItemEtcetera_MoveFireArrowDown>:
 4a8:	3c014120 	lui	at,0x4120
 4ac:	44810000 	mtc1	at,$f0
 4b0:	27bdffd8 	addiu	sp,sp,-40
 4b4:	afb00020 	sw	s0,32(sp)
 4b8:	44802000 	mtc1	zero,$f4
 4bc:	00808025 	move	s0,a0
 4c0:	afbf0024 	sw	ra,36(sp)
 4c4:	afa5002c 	sw	a1,44(sp)
 4c8:	00a02025 	move	a0,a1
 4cc:	240e0005 	li	t6,5
 4d0:	44060000 	mfc1	a2,$f0
 4d4:	44070000 	mfc1	a3,$f0
 4d8:	afae0014 	sw	t6,20(sp)
 4dc:	02002825 	move	a1,s0
 4e0:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 4e4:	e7a40010 	swc1	$f4,16(sp)
 4e8:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 4ec:	02002025 	move	a0,s0
 4f0:	960f0088 	lhu	t7,136(s0)
 4f4:	02002025 	move	a0,s0
 4f8:	31f80001 	andi	t8,t7,0x1
 4fc:	57000004 	bnezl	t8,510 <ItemEtcetera_MoveFireArrowDown+0x68>
 500:	861900b6 	lh	t9,182(s0)
 504:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 508:	8fa5002c 	lw	a1,44(sp)
 50c:	861900b6 	lh	t9,182(s0)
 510:	02002025 	move	a0,s0
 514:	27280400 	addiu	t0,t9,1024
 518:	a60800b6 	sh	t0,182(s0)
 51c:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 520:	8fa5002c 	lw	a1,44(sp)
 524:	8fbf0024 	lw	ra,36(sp)
 528:	8fb00020 	lw	s0,32(sp)
 52c:	27bd0028 	addiu	sp,sp,40
 530:	03e00008 	jr	ra
 534:	00000000 	nop

00000538 <func_80B85B28>:
 538:	27bdffe8 	addiu	sp,sp,-24
 53c:	afa40018 	sw	a0,24(sp)
 540:	8fae0018 	lw	t6,24(sp)
 544:	afbf0014 	sw	ra,20(sp)
 548:	00a02025 	move	a0,a1
 54c:	85c5001c 	lh	a1,28(t6)
 550:	00052a03 	sra	a1,a1,0x8
 554:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 558:	30a5001f 	andi	a1,a1,0x1f
 55c:	50400004 	beqzl	v0,570 <func_80B85B28+0x38>
 560:	8fbf0014 	lw	ra,20(sp)
 564:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 568:	8fa40018 	lw	a0,24(sp)
 56c:	8fbf0014 	lw	ra,20(sp)
 570:	27bd0018 	addiu	sp,sp,24
 574:	03e00008 	jr	ra
 578:	00000000 	nop

0000057c <ItemEtcetera_UpdateFireArrow>:
 57c:	27bdffe8 	addiu	sp,sp,-24
 580:	afbf0014 	sw	ra,20(sp)
 584:	90ae1d6c 	lbu	t6,7532(a1)
 588:	00803025 	move	a2,a0
 58c:	00a03825 	move	a3,a1
 590:	11c00023 	beqz	t6,620 <ItemEtcetera_UpdateFireArrow+0xa4>
 594:	3c010000 	lui	at,0x0
 598:	8caf1d8c 	lw	t7,7564(a1)
 59c:	3c040000 	lui	a0,0x0
 5a0:	24840038 	addiu	a0,a0,56
 5a4:	11e0001e 	beqz	t7,620 <ItemEtcetera_UpdateFireArrow+0xa4>
 5a8:	240501b9 	li	a1,441
 5ac:	afa60018 	sw	a2,24(sp)
 5b0:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 5b4:	afa7001c 	sw	a3,28(sp)
 5b8:	8fa7001c 	lw	a3,28(sp)
 5bc:	3c040000 	lui	a0,0x0
 5c0:	24840050 	addiu	a0,a0,80
 5c4:	8cf81d8c 	lw	t8,7564(a3)
 5c8:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 5cc:	97050000 	lhu	a1,0(t8)
 5d0:	8fa7001c 	lw	a3,28(sp)
 5d4:	24010002 	li	at,2
 5d8:	3c090000 	lui	t1,0x0
 5dc:	8cf91d8c 	lw	t9,7564(a3)
 5e0:	3c0a0000 	lui	t2,0x0
 5e4:	8fa60018 	lw	a2,24(sp)
 5e8:	97280000 	lhu	t0,0(t9)
 5ec:	25290000 	addiu	t1,t1,0
 5f0:	254a0000 	addiu	t2,t2,0
 5f4:	55010013 	bnel	t0,at,644 <ItemEtcetera_UpdateFireArrow+0xc8>
 5f8:	8fbf0014 	lw	ra,20(sp)
 5fc:	acc90134 	sw	t1,308(a2)
 600:	3c010000 	lui	at,0x0
 604:	c42400c4 	lwc1	$f4,196(at)
 608:	3c01c080 	lui	at,0xc080
 60c:	44813000 	mtc1	at,$f6
 610:	acca015c 	sw	t2,348(a2)
 614:	e4c4006c 	swc1	$f4,108(a2)
 618:	10000009 	b	640 <ItemEtcetera_UpdateFireArrow+0xc4>
 61c:	e4c60070 	swc1	$f6,112(a2)
 620:	c42800c8 	lwc1	$f8,200(at)
 624:	3c01c080 	lui	at,0xc080
 628:	44815000 	mtc1	at,$f10
 62c:	3c0b0000 	lui	t3,0x0
 630:	256b0000 	addiu	t3,t3,0
 634:	accb015c 	sw	t3,348(a2)
 638:	e4c8006c 	swc1	$f8,108(a2)
 63c:	e4ca0070 	swc1	$f10,112(a2)
 640:	8fbf0014 	lw	ra,20(sp)
 644:	27bd0018 	addiu	sp,sp,24
 648:	03e00008 	jr	ra
 64c:	00000000 	nop

00000650 <ItemEtcetera_Update>:
 650:	27bdffe8 	addiu	sp,sp,-24
 654:	afbf0014 	sw	ra,20(sp)
 658:	8c99015c 	lw	t9,348(a0)
 65c:	0320f809 	jalr	t9
 660:	00000000 	nop
 664:	8fbf0014 	lw	ra,20(sp)
 668:	27bd0018 	addiu	sp,sp,24
 66c:	03e00008 	jr	ra
 670:	00000000 	nop

00000674 <ItemEtcetera_DrawThroughLens>:
 674:	27bdffe8 	addiu	sp,sp,-24
 678:	afbf0014 	sw	ra,20(sp)
 67c:	afa40018 	sw	a0,24(sp)
 680:	90ae1c27 	lbu	t6,7207(a1)
 684:	00003025 	move	a2,zero
 688:	51c0000c 	beqzl	t6,6bc <ItemEtcetera_DrawThroughLens+0x48>
 68c:	8fbf0014 	lw	ra,20(sp)
 690:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 694:	afa5001c 	sw	a1,28(sp)
 698:	8fa40018 	lw	a0,24(sp)
 69c:	8fa5001c 	lw	a1,28(sp)
 6a0:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 6a4:	00003025 	move	a2,zero
 6a8:	8faf0018 	lw	t7,24(sp)
 6ac:	8fa4001c 	lw	a0,28(sp)
 6b0:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 6b4:	85e50150 	lh	a1,336(t7)
 6b8:	8fbf0014 	lw	ra,20(sp)
 6bc:	27bd0018 	addiu	sp,sp,24
 6c0:	03e00008 	jr	ra
 6c4:	00000000 	nop

000006c8 <ItemEtcetera_Draw>:
 6c8:	27bdffe8 	addiu	sp,sp,-24
 6cc:	afbf0014 	sw	ra,20(sp)
 6d0:	afa40018 	sw	a0,24(sp)
 6d4:	afa5001c 	sw	a1,28(sp)
 6d8:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 6dc:	00003025 	move	a2,zero
 6e0:	8fa40018 	lw	a0,24(sp)
 6e4:	8fa5001c 	lw	a1,28(sp)
 6e8:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 6ec:	00003025 	move	a2,zero
 6f0:	8fae0018 	lw	t6,24(sp)
 6f4:	8fa4001c 	lw	a0,28(sp)
 6f8:	0c000000 	jal	0 <ItemEtcetera_SetupAction>
 6fc:	85c50150 	lh	a1,336(t6)
 700:	8fbf0014 	lw	ra,20(sp)
 704:	27bd0018 	addiu	sp,sp,24
 708:	03e00008 	jr	ra
 70c:	00000000 	nop
