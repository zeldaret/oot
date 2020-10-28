
build/src/overlays/actors/ovl_Bg_Mori_Elevator/z_bg_mori_elevator.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808A1800>:
   0:	afa7000c 	sw	a3,12(sp)
   4:	44856000 	mtc1	a1,$f12
   8:	c4800000 	lwc1	$f0,0(a0)
   c:	44867000 	mtc1	a2,$f14
  10:	c7a6000c 	lwc1	$f6,12(sp)
  14:	46006101 	sub.s	$f4,$f12,$f0
  18:	460c003c 	c.lt.s	$f0,$f12
  1c:	460e2082 	mul.s	$f2,$f4,$f14
  20:	45020017 	bc1fl	80 <func_808A1800+0x80>
  24:	4600603c 	c.lt.s	$f12,$f0
  28:	4602303c 	c.lt.s	$f6,$f2
  2c:	c7ae0010 	lwc1	$f14,16(sp)
  30:	45020004 	bc1fl	44 <func_808A1800+0x44>
  34:	460e103c 	c.lt.s	$f2,$f14
  38:	10000006 	b	54 <func_808A1800+0x54>
  3c:	46003086 	mov.s	$f2,$f6
  40:	460e103c 	c.lt.s	$f2,$f14
  44:	00000000 	nop
  48:	45020003 	bc1fl	58 <func_808A1800+0x58>
  4c:	46020200 	add.s	$f8,$f0,$f2
  50:	46007086 	mov.s	$f2,$f14
  54:	46020200 	add.s	$f8,$f0,$f2
  58:	e4880000 	swc1	$f8,0(a0)
  5c:	c48a0000 	lwc1	$f10,0(a0)
  60:	460a603c 	c.lt.s	$f12,$f10
  64:	00000000 	nop
  68:	45000022 	bc1f	f4 <func_808A1800+0xf4>
  6c:	00000000 	nop
  70:	e48c0000 	swc1	$f12,0(a0)
  74:	03e00008 	jr	ra
  78:	46001006 	mov.s	$f0,$f2
  7c:	4600603c 	c.lt.s	$f12,$f0
  80:	c7ae000c 	lwc1	$f14,12(sp)
  84:	4502001a 	bc1fl	f0 <func_808A1800+0xf0>
  88:	44801000 	mtc1	zero,$f2
  8c:	46007387 	neg.s	$f14,$f14
  90:	460e103c 	c.lt.s	$f2,$f14
  94:	00000000 	nop
  98:	45020004 	bc1fl	ac <func_808A1800+0xac>
  9c:	c7ae0010 	lwc1	$f14,16(sp)
  a0:	10000008 	b	c4 <func_808A1800+0xc4>
  a4:	46007086 	mov.s	$f2,$f14
  a8:	c7ae0010 	lwc1	$f14,16(sp)
  ac:	46007407 	neg.s	$f16,$f14
  b0:	4602803c 	c.lt.s	$f16,$f2
  b4:	00000000 	nop
  b8:	45020003 	bc1fl	c8 <func_808A1800+0xc8>
  bc:	46020480 	add.s	$f18,$f0,$f2
  c0:	46008086 	mov.s	$f2,$f16
  c4:	46020480 	add.s	$f18,$f0,$f2
  c8:	e4920000 	swc1	$f18,0(a0)
  cc:	c4840000 	lwc1	$f4,0(a0)
  d0:	460c203c 	c.lt.s	$f4,$f12
  d4:	00000000 	nop
  d8:	45000006 	bc1f	f4 <func_808A1800+0xf4>
  dc:	00000000 	nop
  e0:	e48c0000 	swc1	$f12,0(a0)
  e4:	03e00008 	jr	ra
  e8:	46001006 	mov.s	$f0,$f2
  ec:	44801000 	mtc1	zero,$f2
  f0:	00000000 	nop
  f4:	03e00008 	jr	ra
  f8:	46001006 	mov.s	$f0,$f2

000000fc <func_808A18FC>:
  fc:	44856000 	mtc1	a1,$f12
 100:	3c010000 	lui	at,0x0
 104:	c4240164 	lwc1	$f4,356(at)
 108:	46006005 	abs.s	$f0,$f12
 10c:	44807000 	mtc1	zero,$f14
 110:	46040082 	mul.s	$f2,$f0,$f4
 114:	27bdffe8 	addiu	sp,sp,-24
 118:	00803825 	move	a3,a0
 11c:	afbf0014 	sw	ra,20(sp)
 120:	24e400e4 	addiu	a0,a3,228
 124:	3c013f80 	lui	at,0x3f80
 128:	460e103c 	c.lt.s	$f2,$f14
 12c:	00000000 	nop
 130:	45020004 	bc1fl	144 <func_808A18FC+0x48>
 134:	44810000 	mtc1	at,$f0
 138:	1000000b 	b	168 <func_808A18FC+0x6c>
 13c:	46007006 	mov.s	$f0,$f14
 140:	44810000 	mtc1	at,$f0
 144:	00000000 	nop
 148:	4602003c 	c.lt.s	$f0,$f2
 14c:	00000000 	nop
 150:	45020004 	bc1fl	164 <func_808A18FC+0x68>
 154:	46001306 	mov.s	$f12,$f2
 158:	10000002 	b	164 <func_808A18FC+0x68>
 15c:	46000306 	mov.s	$f12,$f0
 160:	46001306 	mov.s	$f12,$f2
 164:	46006006 	mov.s	$f0,$f12
 168:	44060000 	mfc1	a2,$f0
 16c:	0c000000 	jal	0 <func_808A1800>
 170:	24052079 	li	a1,8313
 174:	8fbf0014 	lw	ra,20(sp)
 178:	27bd0018 	addiu	sp,sp,24
 17c:	03e00008 	jr	ra
 180:	00000000 	nop

00000184 <BgMoriElevator_Init>:
 184:	27bdffd0 	addiu	sp,sp,-48
 188:	3c0e0000 	lui	t6,0x0
 18c:	85ce0000 	lh	t6,0(t6)
 190:	afb00018 	sw	s0,24(sp)
 194:	afbf001c 	sw	ra,28(sp)
 198:	afa50034 	sw	a1,52(sp)
 19c:	afa00024 	sw	zero,36(sp)
 1a0:	00808025 	move	s0,a0
 1a4:	a48e0172 	sh	t6,370(a0)
 1a8:	8fa40034 	lw	a0,52(sp)
 1ac:	3c010001 	lui	at,0x1
 1b0:	342117a4 	ori	at,at,0x17a4
 1b4:	24050073 	li	a1,115
 1b8:	0c000000 	jal	0 <func_808A1800>
 1bc:	00812021 	addu	a0,a0,at
 1c0:	a2020171 	sb	v0,369(s0)
 1c4:	820f0171 	lb	t7,369(s0)
 1c8:	3c020000 	lui	v0,0x0
 1cc:	05e1000b 	bgez	t7,1fc <BgMoriElevator_Init+0x78>
 1d0:	00000000 	nop
 1d4:	0c000000 	jal	0 <func_808A1800>
 1d8:	02002025 	move	a0,s0
 1dc:	3c040000 	lui	a0,0x0
 1e0:	3c050000 	lui	a1,0x0
 1e4:	24a50034 	addiu	a1,a1,52
 1e8:	24840000 	addiu	a0,a0,0
 1ec:	0c000000 	jal	0 <func_808A1800>
 1f0:	24060115 	li	a2,277
 1f4:	10000029 	b	29c <BgMoriElevator_Init+0x118>
 1f8:	8fbf001c 	lw	ra,28(sp)
 1fc:	84420000 	lh	v0,0(v0)
 200:	24010001 	li	at,1
 204:	3c040000 	lui	a0,0x0
 208:	10400005 	beqz	v0,220 <BgMoriElevator_Init+0x9c>
 20c:	00000000 	nop
 210:	1041001f 	beq	v0,at,290 <BgMoriElevator_Init+0x10c>
 214:	00000000 	nop
 218:	10000020 	b	29c <BgMoriElevator_Init+0x118>
 21c:	8fbf001c 	lw	ra,28(sp)
 220:	0c000000 	jal	0 <func_808A1800>
 224:	2484004c 	addiu	a0,a0,76
 228:	24180001 	li	t8,1
 22c:	3c010000 	lui	at,0x0
 230:	a4380000 	sh	t8,0(at)
 234:	2419ffff 	li	t9,-1
 238:	3c050000 	lui	a1,0x0
 23c:	a2190003 	sb	t9,3(s0)
 240:	24a50024 	addiu	a1,a1,36
 244:	0c000000 	jal	0 <func_808A1800>
 248:	02002025 	move	a0,s0
 24c:	02002025 	move	a0,s0
 250:	0c000000 	jal	0 <func_808A1800>
 254:	24050001 	li	a1,1
 258:	3c040000 	lui	a0,0x0
 25c:	24840000 	addiu	a0,a0,0
 260:	0c000000 	jal	0 <func_808A1800>
 264:	27a50024 	addiu	a1,sp,36
 268:	8fa40034 	lw	a0,52(sp)
 26c:	02003025 	move	a2,s0
 270:	8fa70024 	lw	a3,36(sp)
 274:	0c000000 	jal	0 <func_808A1800>
 278:	24850810 	addiu	a1,a0,2064
 27c:	ae02014c 	sw	v0,332(s0)
 280:	0c000000 	jal	0 <func_808A1800>
 284:	02002025 	move	a0,s0
 288:	10000004 	b	29c <BgMoriElevator_Init+0x118>
 28c:	8fbf001c 	lw	ra,28(sp)
 290:	0c000000 	jal	0 <func_808A1800>
 294:	02002025 	move	a0,s0
 298:	8fbf001c 	lw	ra,28(sp)
 29c:	8fb00018 	lw	s0,24(sp)
 2a0:	27bd0030 	addiu	sp,sp,48
 2a4:	03e00008 	jr	ra
 2a8:	00000000 	nop

000002ac <BgMoriElevator_Destroy>:
 2ac:	27bdffe8 	addiu	sp,sp,-24
 2b0:	afbf0014 	sw	ra,20(sp)
 2b4:	afa5001c 	sw	a1,28(sp)
 2b8:	848e0172 	lh	t6,370(a0)
 2bc:	00803825 	move	a3,a0
 2c0:	3c040000 	lui	a0,0x0
 2c4:	15c0000a 	bnez	t6,2f0 <BgMoriElevator_Destroy+0x44>
 2c8:	24840064 	addiu	a0,a0,100
 2cc:	0c000000 	jal	0 <func_808A1800>
 2d0:	afa70018 	sw	a3,24(sp)
 2d4:	8fa4001c 	lw	a0,28(sp)
 2d8:	8fa70018 	lw	a3,24(sp)
 2dc:	24850810 	addiu	a1,a0,2064
 2e0:	0c000000 	jal	0 <func_808A1800>
 2e4:	8ce6014c 	lw	a2,332(a3)
 2e8:	3c010000 	lui	at,0x0
 2ec:	a4200000 	sh	zero,0(at)
 2f0:	8fbf0014 	lw	ra,20(sp)
 2f4:	27bd0018 	addiu	sp,sp,24
 2f8:	03e00008 	jr	ra
 2fc:	00000000 	nop

00000300 <BgMoriElevator_IsPlayerRiding>:
 300:	90820160 	lbu	v0,352(a0)
 304:	30420002 	andi	v0,v0,0x2
 308:	0002102b 	sltu	v0,zero,v0
 30c:	10400012 	beqz	v0,358 <BgMoriElevator_IsPlayerRiding+0x58>
 310:	00000000 	nop
 314:	90820170 	lbu	v0,368(a0)
 318:	30420002 	andi	v0,v0,0x2
 31c:	2c420001 	sltiu	v0,v0,1
 320:	1040000d 	beqz	v0,358 <BgMoriElevator_IsPlayerRiding+0x58>
 324:	00000000 	nop
 328:	8cae1c44 	lw	t6,7236(a1)
 32c:	c4860028 	lwc1	$f6,40(a0)
 330:	3c0142a0 	lui	at,0x42a0
 334:	c5c40028 	lwc1	$f4,40(t6)
 338:	44815000 	mtc1	at,$f10
 33c:	00001025 	move	v0,zero
 340:	46062201 	sub.s	$f8,$f4,$f6
 344:	460a403c 	c.lt.s	$f8,$f10
 348:	00000000 	nop
 34c:	45000002 	bc1f	358 <BgMoriElevator_IsPlayerRiding+0x58>
 350:	00000000 	nop
 354:	24020001 	li	v0,1
 358:	03e00008 	jr	ra
 35c:	00000000 	nop

00000360 <BgMoriElevator_SetupWaitAfterInit>:
 360:	3c0e0000 	lui	t6,0x0
 364:	25ce0000 	addiu	t6,t6,0
 368:	03e00008 	jr	ra
 36c:	ac8e0164 	sw	t6,356(a0)

00000370 <BgMoriElevator_WaitAfterInit>:
 370:	27bdffe0 	addiu	sp,sp,-32
 374:	afb00018 	sw	s0,24(sp)
 378:	3c010001 	lui	at,0x1
 37c:	00808025 	move	s0,a0
 380:	342117a4 	ori	at,at,0x17a4
 384:	afbf001c 	sw	ra,28(sp)
 388:	afa50024 	sw	a1,36(sp)
 38c:	00a12021 	addu	a0,a1,at
 390:	0c000000 	jal	0 <func_808A1800>
 394:	82050171 	lb	a1,369(s0)
 398:	50400021 	beqzl	v0,420 <BgMoriElevator_WaitAfterInit+0xb0>
 39c:	8fbf001c 	lw	ra,28(sp)
 3a0:	8605001c 	lh	a1,28(s0)
 3a4:	8fa40024 	lw	a0,36(sp)
 3a8:	0c000000 	jal	0 <func_808A1800>
 3ac:	30a5003f 	andi	a1,a1,0x3f
 3b0:	10400015 	beqz	v0,408 <BgMoriElevator_WaitAfterInit+0x98>
 3b4:	8fae0024 	lw	t6,36(sp)
 3b8:	3c0f0001 	lui	t7,0x1
 3bc:	01ee7821 	addu	t7,t7,t6
 3c0:	81ef1cbc 	lb	t7,7356(t7)
 3c4:	24010002 	li	at,2
 3c8:	3c040000 	lui	a0,0x0
 3cc:	15e10008 	bne	t7,at,3f0 <BgMoriElevator_WaitAfterInit+0x80>
 3d0:	2484007c 	addiu	a0,a0,124
 3d4:	3c014292 	lui	at,0x4292
 3d8:	44812000 	mtc1	at,$f4
 3dc:	02002025 	move	a0,s0
 3e0:	0c000000 	jal	0 <func_808A1800>
 3e4:	e6040028 	swc1	$f4,40(s0)
 3e8:	10000009 	b	410 <BgMoriElevator_WaitAfterInit+0xa0>
 3ec:	00000000 	nop
 3f0:	3c050000 	lui	a1,0x0
 3f4:	24a500b4 	addiu	a1,a1,180
 3f8:	0c000000 	jal	0 <func_808A1800>
 3fc:	24060173 	li	a2,371
 400:	10000003 	b	410 <BgMoriElevator_WaitAfterInit+0xa0>
 404:	00000000 	nop
 408:	0c000000 	jal	0 <func_808A1800>
 40c:	02002025 	move	a0,s0
 410:	3c180000 	lui	t8,0x0
 414:	27180000 	addiu	t8,t8,0
 418:	ae180134 	sw	t8,308(s0)
 41c:	8fbf001c 	lw	ra,28(sp)
 420:	8fb00018 	lw	s0,24(sp)
 424:	27bd0020 	addiu	sp,sp,32
 428:	03e00008 	jr	ra
 42c:	00000000 	nop

00000430 <func_808A1C30>:
 430:	3c0e0000 	lui	t6,0x0
 434:	25ce0000 	addiu	t6,t6,0
 438:	03e00008 	jr	ra
 43c:	ac8e0164 	sw	t6,356(a0)

00000440 <BgMoriElevator_MoveIntoGround>:
 440:	27bdffd8 	addiu	sp,sp,-40
 444:	44802000 	mtc1	zero,$f4
 448:	afb00020 	sw	s0,32(sp)
 44c:	00808025 	move	s0,a0
 450:	afbf0024 	sw	ra,36(sp)
 454:	afa5002c 	sw	a1,44(sp)
 458:	3c063d4c 	lui	a2,0x3d4c
 45c:	34c6cccd 	ori	a2,a2,0xcccd
 460:	3c054000 	lui	a1,0x4000
 464:	24840060 	addiu	a0,a0,96
 468:	3c073f80 	lui	a3,0x3f80
 46c:	0c000000 	jal	0 <func_808A1800>
 470:	e7a40010 	swc1	$f4,16(sp)
 474:	3c013fc0 	lui	at,0x3fc0
 478:	44813000 	mtc1	at,$f6
 47c:	3c063da3 	lui	a2,0x3da3
 480:	8e070060 	lw	a3,96(s0)
 484:	34c6d70a 	ori	a2,a2,0xd70a
 488:	26040028 	addiu	a0,s0,40
 48c:	3c054292 	lui	a1,0x4292
 490:	0c000000 	jal	0 <func_808A1800>
 494:	e7a60010 	swc1	$f6,16(sp)
 498:	3c010000 	lui	at,0x0
 49c:	c4280168 	lwc1	$f8,360(at)
 4a0:	46000086 	mov.s	$f2,$f0
 4a4:	46000005 	abs.s	$f0,$f0
 4a8:	4608003c 	c.lt.s	$f0,$f8
 4ac:	00000000 	nop
 4b0:	45020009 	bc1fl	4d8 <BgMoriElevator_MoveIntoGround+0x98>
 4b4:	44051000 	mfc1	a1,$f2
 4b8:	0c000000 	jal	0 <func_808A1800>
 4bc:	02002025 	move	a0,s0
 4c0:	02002025 	move	a0,s0
 4c4:	0c000000 	jal	0 <func_808A1800>
 4c8:	2405287a 	li	a1,10362
 4cc:	10000005 	b	4e4 <BgMoriElevator_MoveIntoGround+0xa4>
 4d0:	8fbf0024 	lw	ra,36(sp)
 4d4:	44051000 	mfc1	a1,$f2
 4d8:	0c000000 	jal	0 <func_808A1800>
 4dc:	02002025 	move	a0,s0
 4e0:	8fbf0024 	lw	ra,36(sp)
 4e4:	8fb00020 	lw	s0,32(sp)
 4e8:	27bd0028 	addiu	sp,sp,40
 4ec:	03e00008 	jr	ra
 4f0:	00000000 	nop

000004f4 <func_808A1CF4>:
 4f4:	27bdffe0 	addiu	sp,sp,-32
 4f8:	3c0e0000 	lui	t6,0x0
 4fc:	afbf001c 	sw	ra,28(sp)
 500:	afa50024 	sw	a1,36(sp)
 504:	25ce0000 	addiu	t6,t6,0
 508:	ac8e0164 	sw	t6,356(a0)
 50c:	00803825 	move	a3,a0
 510:	afa70020 	sw	a3,32(sp)
 514:	8fa40024 	lw	a0,36(sp)
 518:	afa00010 	sw	zero,16(sp)
 51c:	24050c9e 	li	a1,3230
 520:	0c000000 	jal	0 <func_808A1800>
 524:	24060046 	li	a2,70
 528:	8fa70020 	lw	a3,32(sp)
 52c:	8fa40024 	lw	a0,36(sp)
 530:	240503fc 	li	a1,1020
 534:	2406000f 	li	a2,15
 538:	0c000000 	jal	0 <func_808A1800>
 53c:	afa00010 	sw	zero,16(sp)
 540:	8fbf001c 	lw	ra,28(sp)
 544:	27bd0020 	addiu	sp,sp,32
 548:	03e00008 	jr	ra
 54c:	00000000 	nop

00000550 <BgMoriElevator_MoveAboveGround>:
 550:	27bdffd8 	addiu	sp,sp,-40
 554:	44802000 	mtc1	zero,$f4
 558:	afb00020 	sw	s0,32(sp)
 55c:	00808025 	move	s0,a0
 560:	afbf0024 	sw	ra,36(sp)
 564:	afa5002c 	sw	a1,44(sp)
 568:	3c063d4c 	lui	a2,0x3d4c
 56c:	34c6cccd 	ori	a2,a2,0xcccd
 570:	3c054000 	lui	a1,0x4000
 574:	24840060 	addiu	a0,a0,96
 578:	3c073f80 	lui	a3,0x3f80
 57c:	0c000000 	jal	0 <func_808A1800>
 580:	e7a40010 	swc1	$f4,16(sp)
 584:	3c013fc0 	lui	at,0x3fc0
 588:	44813000 	mtc1	at,$f6
 58c:	3c063da3 	lui	a2,0x3da3
 590:	8e070060 	lw	a3,96(s0)
 594:	34c6d70a 	ori	a2,a2,0xd70a
 598:	26040028 	addiu	a0,s0,40
 59c:	3c054369 	lui	a1,0x4369
 5a0:	0c000000 	jal	0 <func_808A1800>
 5a4:	e7a60010 	swc1	$f6,16(sp)
 5a8:	3c010000 	lui	at,0x0
 5ac:	c428016c 	lwc1	$f8,364(at)
 5b0:	46000086 	mov.s	$f2,$f0
 5b4:	46000005 	abs.s	$f0,$f0
 5b8:	4608003c 	c.lt.s	$f0,$f8
 5bc:	00000000 	nop
 5c0:	45020009 	bc1fl	5e8 <BgMoriElevator_MoveAboveGround+0x98>
 5c4:	44051000 	mfc1	a1,$f2
 5c8:	0c000000 	jal	0 <func_808A1800>
 5cc:	02002025 	move	a0,s0
 5d0:	02002025 	move	a0,s0
 5d4:	0c000000 	jal	0 <func_808A1800>
 5d8:	2405287a 	li	a1,10362
 5dc:	10000005 	b	5f4 <BgMoriElevator_MoveAboveGround+0xa4>
 5e0:	8fbf0024 	lw	ra,36(sp)
 5e4:	44051000 	mfc1	a1,$f2
 5e8:	0c000000 	jal	0 <func_808A1800>
 5ec:	02002025 	move	a0,s0
 5f0:	8fbf0024 	lw	ra,36(sp)
 5f4:	8fb00020 	lw	s0,32(sp)
 5f8:	27bd0028 	addiu	sp,sp,40
 5fc:	03e00008 	jr	ra
 600:	00000000 	nop

00000604 <BgMoriElevator_SetupSetPosition>:
 604:	3c0e0000 	lui	t6,0x0
 608:	25ce0000 	addiu	t6,t6,0
 60c:	03e00008 	jr	ra
 610:	ac8e0164 	sw	t6,356(a0)

00000614 <BgMoriElevator_SetPosition>:
 614:	27bdffe0 	addiu	sp,sp,-32
 618:	afbf0014 	sw	ra,20(sp)
 61c:	afa50024 	sw	a1,36(sp)
 620:	0c000000 	jal	0 <func_808A1800>
 624:	afa40020 	sw	a0,32(sp)
 628:	10400020 	beqz	v0,6ac <BgMoriElevator_SetPosition+0x98>
 62c:	8fa60020 	lw	a2,32(sp)
 630:	8fae0024 	lw	t6,36(sp)
 634:	3c020001 	lui	v0,0x1
 638:	24070002 	li	a3,2
 63c:	004e1021 	addu	v0,v0,t6
 640:	80421cbc 	lb	v0,7356(v0)
 644:	24010011 	li	at,17
 648:	14e20008 	bne	a3,v0,66c <BgMoriElevator_SetPosition+0x58>
 64c:	00000000 	nop
 650:	3c010000 	lui	at,0x0
 654:	c4240170 	lwc1	$f4,368(at)
 658:	00c02025 	move	a0,a2
 65c:	0c000000 	jal	0 <func_808A1800>
 660:	e4c40168 	swc1	$f4,360(a2)
 664:	1000005f 	b	7e4 <BgMoriElevator_SetPosition+0x1d0>
 668:	8fbf0014 	lw	ra,20(sp)
 66c:	14410008 	bne	v0,at,690 <BgMoriElevator_SetPosition+0x7c>
 670:	3c040000 	lui	a0,0x0
 674:	3c014369 	lui	at,0x4369
 678:	44813000 	mtc1	at,$f6
 67c:	00c02025 	move	a0,a2
 680:	0c000000 	jal	0 <func_808A1800>
 684:	e4c60168 	swc1	$f6,360(a2)
 688:	10000056 	b	7e4 <BgMoriElevator_SetPosition+0x1d0>
 68c:	8fbf0014 	lw	ra,20(sp)
 690:	3c050000 	lui	a1,0x0
 694:	24a50104 	addiu	a1,a1,260
 698:	248400cc 	addiu	a0,a0,204
 69c:	0c000000 	jal	0 <func_808A1800>
 6a0:	240601df 	li	a2,479
 6a4:	1000004f 	b	7e4 <BgMoriElevator_SetPosition+0x1d0>
 6a8:	8fbf0014 	lw	ra,20(sp)
 6ac:	8fa40024 	lw	a0,36(sp)
 6b0:	3c010001 	lui	at,0x1
 6b4:	24070002 	li	a3,2
 6b8:	00811821 	addu	v1,a0,at
 6bc:	80621cbc 	lb	v0,7356(v1)
 6c0:	3c010000 	lui	at,0x0
 6c4:	54e2000f 	bnel	a3,v0,704 <BgMoriElevator_SetPosition+0xf0>
 6c8:	24010011 	li	at,17
 6cc:	c4c80028 	lwc1	$f8,40(a2)
 6d0:	c42a0174 	lwc1	$f10,372(at)
 6d4:	3c014369 	lui	at,0x4369
 6d8:	460a403c 	c.lt.s	$f8,$f10
 6dc:	00000000 	nop
 6e0:	45020008 	bc1fl	704 <BgMoriElevator_SetPosition+0xf0>
 6e4:	24010011 	li	at,17
 6e8:	44818000 	mtc1	at,$f16
 6ec:	00c02025 	move	a0,a2
 6f0:	0c000000 	jal	0 <func_808A1800>
 6f4:	e4d00168 	swc1	$f16,360(a2)
 6f8:	1000003a 	b	7e4 <BgMoriElevator_SetPosition+0x1d0>
 6fc:	8fbf0014 	lw	ra,20(sp)
 700:	24010011 	li	at,17
 704:	1441000e 	bne	v0,at,740 <BgMoriElevator_SetPosition+0x12c>
 708:	3c010000 	lui	at,0x0
 70c:	c4320178 	lwc1	$f18,376(at)
 710:	c4c40028 	lwc1	$f4,40(a2)
 714:	3c010000 	lui	at,0x0
 718:	4604903c 	c.lt.s	$f18,$f4
 71c:	00000000 	nop
 720:	45000007 	bc1f	740 <BgMoriElevator_SetPosition+0x12c>
 724:	00000000 	nop
 728:	c426017c 	lwc1	$f6,380(at)
 72c:	00c02025 	move	a0,a2
 730:	0c000000 	jal	0 <func_808A1800>
 734:	e4c60168 	swc1	$f6,360(a2)
 738:	1000002a 	b	7e4 <BgMoriElevator_SetPosition+0x1d0>
 73c:	8fbf0014 	lw	ra,20(sp)
 740:	54e20015 	bnel	a3,v0,798 <BgMoriElevator_SetPosition+0x184>
 744:	80781cbc 	lb	t8,7356(v1)
 748:	84c5001c 	lh	a1,28(a2)
 74c:	afa60020 	sw	a2,32(sp)
 750:	afa30018 	sw	v1,24(sp)
 754:	0c000000 	jal	0 <func_808A1800>
 758:	30a5003f 	andi	a1,a1,0x3f
 75c:	8fa30018 	lw	v1,24(sp)
 760:	8fa60020 	lw	a2,32(sp)
 764:	1040000b 	beqz	v0,794 <BgMoriElevator_SetPosition+0x180>
 768:	24070002 	li	a3,2
 76c:	8ccf016c 	lw	t7,364(a2)
 770:	3c014292 	lui	at,0x4292
 774:	55e00008 	bnezl	t7,798 <BgMoriElevator_SetPosition+0x184>
 778:	80781cbc 	lb	t8,7356(v1)
 77c:	44814000 	mtc1	at,$f8
 780:	00c02025 	move	a0,a2
 784:	0c000000 	jal	0 <func_808A1800>
 788:	e4c80168 	swc1	$f8,360(a2)
 78c:	10000015 	b	7e4 <BgMoriElevator_SetPosition+0x1d0>
 790:	8fbf0014 	lw	ra,20(sp)
 794:	80781cbc 	lb	t8,7356(v1)
 798:	8fa40024 	lw	a0,36(sp)
 79c:	54f80011 	bnel	a3,t8,7e4 <BgMoriElevator_SetPosition+0x1d0>
 7a0:	8fbf0014 	lw	ra,20(sp)
 7a4:	84c5001c 	lh	a1,28(a2)
 7a8:	afa60020 	sw	a2,32(sp)
 7ac:	0c000000 	jal	0 <func_808A1800>
 7b0:	30a5003f 	andi	a1,a1,0x3f
 7b4:	1440000a 	bnez	v0,7e0 <BgMoriElevator_SetPosition+0x1cc>
 7b8:	8fa60020 	lw	a2,32(sp)
 7bc:	8cd9016c 	lw	t9,364(a2)
 7c0:	3c014369 	lui	at,0x4369
 7c4:	53200007 	beqzl	t9,7e4 <BgMoriElevator_SetPosition+0x1d0>
 7c8:	8fbf0014 	lw	ra,20(sp)
 7cc:	44815000 	mtc1	at,$f10
 7d0:	00c02025 	move	a0,a2
 7d4:	e4ca0168 	swc1	$f10,360(a2)
 7d8:	0c000000 	jal	0 <func_808A1800>
 7dc:	8fa50024 	lw	a1,36(sp)
 7e0:	8fbf0014 	lw	ra,20(sp)
 7e4:	27bd0020 	addiu	sp,sp,32
 7e8:	03e00008 	jr	ra
 7ec:	00000000 	nop

000007f0 <BgMoriElevator_StopMovement>:
 7f0:	44802000 	mtc1	zero,$f4
 7f4:	3c0e0000 	lui	t6,0x0
 7f8:	25ce0000 	addiu	t6,t6,0
 7fc:	ac8e0164 	sw	t6,356(a0)
 800:	03e00008 	jr	ra
 804:	e4840060 	swc1	$f4,96(a0)

00000808 <func_808A2008>:
 808:	27bdffd8 	addiu	sp,sp,-40
 80c:	44802000 	mtc1	zero,$f4
 810:	afb00020 	sw	s0,32(sp)
 814:	00808025 	move	s0,a0
 818:	afbf0024 	sw	ra,36(sp)
 81c:	afa5002c 	sw	a1,44(sp)
 820:	3c063dcc 	lui	a2,0x3dcc
 824:	34c6cccd 	ori	a2,a2,0xcccd
 828:	3c054140 	lui	a1,0x4140
 82c:	24840060 	addiu	a0,a0,96
 830:	3c073f80 	lui	a3,0x3f80
 834:	0c000000 	jal	0 <func_808A1800>
 838:	e7a40010 	swc1	$f4,16(sp)
 83c:	3c010000 	lui	at,0x0
 840:	c4260180 	lwc1	$f6,384(at)
 844:	8e050168 	lw	a1,360(s0)
 848:	3c063dcc 	lui	a2,0x3dcc
 84c:	8e070060 	lw	a3,96(s0)
 850:	34c6cccd 	ori	a2,a2,0xcccd
 854:	26040028 	addiu	a0,s0,40
 858:	0c000000 	jal	0 <func_808A1800>
 85c:	e7a60010 	swc1	$f6,16(sp)
 860:	3c010000 	lui	at,0x0
 864:	c4280184 	lwc1	$f8,388(at)
 868:	46000086 	mov.s	$f2,$f0
 86c:	46000005 	abs.s	$f0,$f0
 870:	4608003c 	c.lt.s	$f0,$f8
 874:	00000000 	nop
 878:	45020009 	bc1fl	8a0 <func_808A2008+0x98>
 87c:	44051000 	mfc1	a1,$f2
 880:	0c000000 	jal	0 <func_808A1800>
 884:	02002025 	move	a0,s0
 888:	02002025 	move	a0,s0
 88c:	0c000000 	jal	0 <func_808A1800>
 890:	2405287a 	li	a1,10362
 894:	10000005 	b	8ac <func_808A2008+0xa4>
 898:	8fbf0024 	lw	ra,36(sp)
 89c:	44051000 	mfc1	a1,$f2
 8a0:	0c000000 	jal	0 <func_808A1800>
 8a4:	02002025 	move	a0,s0
 8a8:	8fbf0024 	lw	ra,36(sp)
 8ac:	8fb00020 	lw	s0,32(sp)
 8b0:	27bd0028 	addiu	sp,sp,40
 8b4:	03e00008 	jr	ra
 8b8:	00000000 	nop

000008bc <BgMoriElevator_Update>:
 8bc:	27bdffe8 	addiu	sp,sp,-24
 8c0:	afbf0014 	sw	ra,20(sp)
 8c4:	afa5001c 	sw	a1,28(sp)
 8c8:	afa40018 	sw	a0,24(sp)
 8cc:	8c990164 	lw	t9,356(a0)
 8d0:	0320f809 	jalr	t9
 8d4:	00000000 	nop
 8d8:	8fa60018 	lw	a2,24(sp)
 8dc:	90ce0160 	lbu	t6,352(a2)
 8e0:	84c5001c 	lh	a1,28(a2)
 8e4:	a0ce0170 	sb	t6,368(a2)
 8e8:	8fa4001c 	lw	a0,28(sp)
 8ec:	0c000000 	jal	0 <func_808A1800>
 8f0:	30a5003f 	andi	a1,a1,0x3f
 8f4:	8fa60018 	lw	a2,24(sp)
 8f8:	acc2016c 	sw	v0,364(a2)
 8fc:	8fbf0014 	lw	ra,20(sp)
 900:	27bd0018 	addiu	sp,sp,24
 904:	03e00008 	jr	ra
 908:	00000000 	nop

0000090c <BgMoriElevator_Draw>:
 90c:	27bdffb0 	addiu	sp,sp,-80
 910:	afb10018 	sw	s1,24(sp)
 914:	00a08825 	move	s1,a1
 918:	afbf001c 	sw	ra,28(sp)
 91c:	afb00014 	sw	s0,20(sp)
 920:	afa40050 	sw	a0,80(sp)
 924:	8ca50000 	lw	a1,0(a1)
 928:	3c060000 	lui	a2,0x0
 92c:	24c6011c 	addiu	a2,a2,284
 930:	27a40034 	addiu	a0,sp,52
 934:	2407023f 	li	a3,575
 938:	0c000000 	jal	0 <func_808A1800>
 93c:	00a08025 	move	s0,a1
 940:	0c000000 	jal	0 <func_808A1800>
 944:	8e240000 	lw	a0,0(s1)
 948:	8e0202c0 	lw	v0,704(s0)
 94c:	3c0fdb06 	lui	t7,0xdb06
 950:	35ef0020 	ori	t7,t7,0x20
 954:	244e0008 	addiu	t6,v0,8
 958:	ae0e02c0 	sw	t6,704(s0)
 95c:	ac4f0000 	sw	t7,0(v0)
 960:	8fb80050 	lw	t8,80(sp)
 964:	3c0a0001 	lui	t2,0x1
 968:	3c0cda38 	lui	t4,0xda38
 96c:	83190171 	lb	t9,369(t8)
 970:	358c0003 	ori	t4,t4,0x3
 974:	3c050000 	lui	a1,0x0
 978:	00194100 	sll	t0,t9,0x4
 97c:	01194021 	addu	t0,t0,t9
 980:	00084080 	sll	t0,t0,0x2
 984:	02284821 	addu	t1,s1,t0
 988:	01495021 	addu	t2,t2,t1
 98c:	8d4a17b4 	lw	t2,6068(t2)
 990:	24a50134 	addiu	a1,a1,308
 994:	24060244 	li	a2,580
 998:	ac4a0004 	sw	t2,4(v0)
 99c:	8e0202c0 	lw	v0,704(s0)
 9a0:	244b0008 	addiu	t3,v0,8
 9a4:	ae0b02c0 	sw	t3,704(s0)
 9a8:	ac4c0000 	sw	t4,0(v0)
 9ac:	8e240000 	lw	a0,0(s1)
 9b0:	0c000000 	jal	0 <func_808A1800>
 9b4:	afa2002c 	sw	v0,44(sp)
 9b8:	8fa3002c 	lw	v1,44(sp)
 9bc:	3c0f0000 	lui	t7,0x0
 9c0:	25ef0000 	addiu	t7,t7,0
 9c4:	ac620004 	sw	v0,4(v1)
 9c8:	8e0202c0 	lw	v0,704(s0)
 9cc:	3c0ede00 	lui	t6,0xde00
 9d0:	3c060000 	lui	a2,0x0
 9d4:	244d0008 	addiu	t5,v0,8
 9d8:	ae0d02c0 	sw	t5,704(s0)
 9dc:	ac4f0004 	sw	t7,4(v0)
 9e0:	ac4e0000 	sw	t6,0(v0)
 9e4:	8e250000 	lw	a1,0(s1)
 9e8:	24c6014c 	addiu	a2,a2,332
 9ec:	27a40034 	addiu	a0,sp,52
 9f0:	0c000000 	jal	0 <func_808A1800>
 9f4:	24070248 	li	a3,584
 9f8:	8fbf001c 	lw	ra,28(sp)
 9fc:	8fb00014 	lw	s0,20(sp)
 a00:	8fb10018 	lw	s1,24(sp)
 a04:	03e00008 	jr	ra
 a08:	27bd0050 	addiu	sp,sp,80
 a0c:	00000000 	nop
