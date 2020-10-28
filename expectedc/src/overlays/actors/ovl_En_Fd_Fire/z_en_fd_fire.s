
build/src/overlays/actors/ovl_En_Fd_Fire/z_en_fd_fire.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A0E4B0>:
   0:	c4a40000 	lwc1	$f4,0(a1)
   4:	c4860024 	lwc1	$f6,36(a0)
   8:	c4a80004 	lwc1	$f8,4(a1)
   c:	c48a0028 	lwc1	$f10,40(a0)
  10:	46062081 	sub.s	$f2,$f4,$f6
  14:	c486002c 	lwc1	$f6,44(a0)
  18:	c4a40008 	lwc1	$f4,8(a1)
  1c:	460a4301 	sub.s	$f12,$f8,$f10
  20:	46021202 	mul.s	$f8,$f2,$f2
  24:	27bdffe8 	addiu	sp,sp,-24
  28:	46062381 	sub.s	$f14,$f4,$f6
  2c:	460c6282 	mul.s	$f10,$f12,$f12
  30:	460a4100 	add.s	$f4,$f8,$f10
  34:	460e7182 	mul.s	$f6,$f14,$f14
  38:	c4880068 	lwc1	$f8,104(a0)
  3c:	e7a80000 	swc1	$f8,0(sp)
  40:	c7aa0000 	lwc1	$f10,0(sp)
  44:	46062000 	add.s	$f0,$f4,$f6
  48:	46000404 	sqrt.s	$f16,$f0
  4c:	46005005 	abs.s	$f0,$f10
  50:	46008485 	abs.s	$f18,$f16
  54:	4612003c 	c.lt.s	$f0,$f18
  58:	00000000 	nop
  5c:	4502000a 	bc1fl	88 <func_80A0E4B0+0x88>
  60:	44800000 	mtc1	zero,$f0
  64:	46101103 	div.s	$f4,$f2,$f16
  68:	46107203 	div.s	$f8,$f14,$f16
  6c:	460a2182 	mul.s	$f6,$f4,$f10
  70:	e486005c 	swc1	$f6,92(a0)
  74:	c7a40000 	lwc1	$f4,0(sp)
  78:	46044282 	mul.s	$f10,$f8,$f4
  7c:	10000005 	b	94 <func_80A0E4B0+0x94>
  80:	e48a0064 	swc1	$f10,100(a0)
  84:	44800000 	mtc1	zero,$f0
  88:	00000000 	nop
  8c:	e480005c 	swc1	$f0,92(a0)
  90:	e4800064 	swc1	$f0,100(a0)
  94:	c4860060 	lwc1	$f6,96(a0)
  98:	c488006c 	lwc1	$f8,108(a0)
  9c:	c4800070 	lwc1	$f0,112(a0)
  a0:	46083100 	add.s	$f4,$f6,$f8
  a4:	e4840060 	swc1	$f4,96(a0)
  a8:	c48a0060 	lwc1	$f10,96(a0)
  ac:	460a003e 	c.le.s	$f0,$f10
  b0:	00000000 	nop
  b4:	45010002 	bc1t	c0 <func_80A0E4B0+0xc0>
  b8:	00000000 	nop
  bc:	e4800060 	swc1	$f0,96(a0)
  c0:	03e00008 	jr	ra
  c4:	27bd0018 	addiu	sp,sp,24

000000c8 <func_80A0E578>:
  c8:	afa50004 	sw	a1,4(sp)
  cc:	8c8f014c 	lw	t7,332(a0)
  d0:	3c0e0000 	lui	t6,0x0
  d4:	25ce0000 	addiu	t6,t6,0
  d8:	55cf0004 	bnel	t6,t7,ec <func_80A0E578+0x24>
  dc:	90830161 	lbu	v1,353(a0)
  e0:	03e00008 	jr	ra
  e4:	00001025 	move	v0,zero
  e8:	90830161 	lbu	v1,353(a0)
  ec:	24020001 	li	v0,1
  f0:	30780002 	andi	t8,v1,0x2
  f4:	13000003 	beqz	t8,104 <func_80A0E578+0x3c>
  f8:	3079fffd 	andi	t9,v1,0xfffd
  fc:	03e00008 	jr	ra
 100:	a0990161 	sb	t9,353(a0)
 104:	90830163 	lbu	v1,355(a0)
 108:	00001025 	move	v0,zero
 10c:	30680001 	andi	t0,v1,0x1
 110:	11000004 	beqz	t0,124 <func_80A0E578+0x5c>
 114:	3069fffe 	andi	t1,v1,0xfffe
 118:	a0890163 	sb	t1,355(a0)
 11c:	03e00008 	jr	ra
 120:	24020001 	li	v0,1
 124:	03e00008 	jr	ra
 128:	00000000 	nop

0000012c <EnFdFire_Init>:
 12c:	27bdffd0 	addiu	sp,sp,-48
 130:	afbf001c 	sw	ra,28(sp)
 134:	afb00018 	sw	s0,24(sp)
 138:	afa50034 	sw	a1,52(sp)
 13c:	8caf1c44 	lw	t7,7236(a1)
 140:	00808025 	move	s0,a0
 144:	3c060000 	lui	a2,0x0
 148:	24c60000 	addiu	a2,a2,0
 14c:	248400b4 	addiu	a0,a0,180
 150:	24050000 	li	a1,0
 154:	3c0741a0 	lui	a3,0x41a0
 158:	0c000000 	jal	0 <func_80A0E4B0>
 15c:	afaf0024 	sw	t7,36(sp)
 160:	26050150 	addiu	a1,s0,336
 164:	afa50020 	sw	a1,32(sp)
 168:	0c000000 	jal	0 <func_80A0E4B0>
 16c:	8fa40034 	lw	a0,52(sp)
 170:	3c070000 	lui	a3,0x0
 174:	8fa50020 	lw	a1,32(sp)
 178:	24e70000 	addiu	a3,a3,0
 17c:	8fa40034 	lw	a0,52(sp)
 180:	0c000000 	jal	0 <func_80A0E4B0>
 184:	02003025 	move	a2,s0
 188:	3c050000 	lui	a1,0x0
 18c:	3c060000 	lui	a2,0x0
 190:	24c60000 	addiu	a2,a2,0
 194:	24a50000 	addiu	a1,a1,0
 198:	0c000000 	jal	0 <func_80A0E4B0>
 19c:	26040098 	addiu	a0,s0,152
 1a0:	8e180004 	lw	t8,4(s0)
 1a4:	2401fffe 	li	at,-2
 1a8:	26040024 	addiu	a0,s0,36
 1ac:	0301c824 	and	t9,t8,at
 1b0:	ae190004 	sw	t9,4(s0)
 1b4:	3c010000 	lui	at,0x0
 1b8:	c4240000 	lwc1	$f4,0(at)
 1bc:	3c0140a0 	lui	at,0x40a0
 1c0:	44813000 	mtc1	at,$f6
 1c4:	3c014140 	lui	at,0x4140
 1c8:	44814000 	mtc1	at,$f8
 1cc:	e604006c 	swc1	$f4,108(s0)
 1d0:	e6060068 	swc1	$f6,104(s0)
 1d4:	e6080060 	swc1	$f8,96(s0)
 1d8:	8fa50024 	lw	a1,36(sp)
 1dc:	0c000000 	jal	0 <func_80A0E4B0>
 1e0:	24a50024 	addiu	a1,a1,36
 1e4:	3c014040 	lui	at,0x4040
 1e8:	44815000 	mtc1	at,$f10
 1ec:	3c0140a0 	lui	at,0x40a0
 1f0:	44816000 	mtc1	at,$f12
 1f4:	e600019c 	swc1	$f0,412(s0)
 1f8:	0c000000 	jal	0 <func_80A0E4B0>
 1fc:	e60a01a0 	swc1	$f10,416(s0)
 200:	4600040d 	trunc.w.s	$f16,$f0
 204:	3c0d0000 	lui	t5,0x0
 208:	25ad0000 	addiu	t5,t5,0
 20c:	ae0d014c 	sw	t5,332(s0)
 210:	440b8000 	mfc1	t3,$f16
 214:	00000000 	nop
 218:	256cffe7 	addiu	t4,t3,-25
 21c:	a60c01a8 	sh	t4,424(s0)
 220:	8fbf001c 	lw	ra,28(sp)
 224:	8fb00018 	lw	s0,24(sp)
 228:	27bd0030 	addiu	sp,sp,48
 22c:	03e00008 	jr	ra
 230:	00000000 	nop

00000234 <EnFdFire_Destroy>:
 234:	27bdffe8 	addiu	sp,sp,-24
 238:	00803025 	move	a2,a0
 23c:	afbf0014 	sw	ra,20(sp)
 240:	00a02025 	move	a0,a1
 244:	0c000000 	jal	0 <func_80A0E4B0>
 248:	24c50150 	addiu	a1,a2,336
 24c:	8fbf0014 	lw	ra,20(sp)
 250:	27bd0018 	addiu	sp,sp,24
 254:	03e00008 	jr	ra
 258:	00000000 	nop

0000025c <func_80A0E70C>:
 25c:	27bdffc0 	addiu	sp,sp,-64
 260:	3c0f0000 	lui	t7,0x0
 264:	afbf001c 	sw	ra,28(sp)
 268:	afb00018 	sw	s0,24(sp)
 26c:	afa50044 	sw	a1,68(sp)
 270:	25ef0000 	addiu	t7,t7,0
 274:	8df90000 	lw	t9,0(t7)
 278:	27ae0034 	addiu	t6,sp,52
 27c:	8df80004 	lw	t8,4(t7)
 280:	add90000 	sw	t9,0(t6)
 284:	8df90008 	lw	t9,8(t7)
 288:	add80004 	sw	t8,4(t6)
 28c:	27a80028 	addiu	t0,sp,40
 290:	add90008 	sw	t9,8(t6)
 294:	8c890118 	lw	t1,280(a0)
 298:	00808025 	move	s0,a0
 29c:	8d2b0024 	lw	t3,36(t1)
 2a0:	ad0b0000 	sw	t3,0(t0)
 2a4:	8d2a0028 	lw	t2,40(t1)
 2a8:	ad0a0004 	sw	t2,4(t0)
 2ac:	8d2b002c 	lw	t3,44(t1)
 2b0:	ad0b0008 	sw	t3,8(t0)
 2b4:	0c000000 	jal	0 <func_80A0E4B0>
 2b8:	84840032 	lh	a0,50(a0)
 2bc:	c606019c 	lwc1	$f6,412(s0)
 2c0:	c7a40028 	lwc1	$f4,40(sp)
 2c4:	46003202 	mul.s	$f8,$f6,$f0
 2c8:	46082280 	add.s	$f10,$f4,$f8
 2cc:	e7aa0028 	swc1	$f10,40(sp)
 2d0:	0c000000 	jal	0 <func_80A0E4B0>
 2d4:	86040032 	lh	a0,50(s0)
 2d8:	c612019c 	lwc1	$f18,412(s0)
 2dc:	c7b00030 	lwc1	$f16,48(sp)
 2e0:	02002025 	move	a0,s0
 2e4:	46009182 	mul.s	$f6,$f18,$f0
 2e8:	27a50028 	addiu	a1,sp,40
 2ec:	46068100 	add.s	$f4,$f16,$f6
 2f0:	0c000000 	jal	0 <func_80A0E4B0>
 2f4:	e7a40030 	swc1	$f4,48(sp)
 2f8:	960c0088 	lhu	t4,136(s0)
 2fc:	318d0001 	andi	t5,t4,0x1
 300:	51a00021 	beqzl	t5,388 <func_80A0E70C+0x12c>
 304:	8fbf001c 	lw	ra,28(sp)
 308:	44800000 	mtc1	zero,$f0
 30c:	c6080060 	lwc1	$f8,96(s0)
 310:	27ae0034 	addiu	t6,sp,52
 314:	4608003c 	c.lt.s	$f0,$f8
 318:	00000000 	nop
 31c:	4503001a 	bc1tl	388 <func_80A0E70C+0x12c>
 320:	8fbf001c 	lw	ra,28(sp)
 324:	8dd80000 	lw	t8,0(t6)
 328:	96190088 	lhu	t9,136(s0)
 32c:	8609001c 	lh	t1,28(s0)
 330:	ae18005c 	sw	t8,92(s0)
 334:	8dcf0004 	lw	t7,4(t6)
 338:	3328fffe 	andi	t0,t9,0xfffe
 33c:	312a8000 	andi	t2,t1,0x8000
 340:	ae0f0060 	sw	t7,96(s0)
 344:	8dd80008 	lw	t8,8(t6)
 348:	e6000068 	swc1	$f0,104(s0)
 34c:	a6080088 	sh	t0,136(s0)
 350:	11400007 	beqz	t2,370 <func_80A0E70C+0x114>
 354:	ae180064 	sw	t8,100(s0)
 358:	3c0c0000 	lui	t4,0x0
 35c:	240b00c8 	li	t3,200
 360:	258c0000 	addiu	t4,t4,0
 364:	a60b01a6 	sh	t3,422(s0)
 368:	10000006 	b	384 <func_80A0E70C+0x128>
 36c:	ae0c014c 	sw	t4,332(s0)
 370:	3c0e0000 	lui	t6,0x0
 374:	240d012c 	li	t5,300
 378:	25ce0000 	addiu	t6,t6,0
 37c:	a60d01a6 	sh	t5,422(s0)
 380:	ae0e014c 	sw	t6,332(s0)
 384:	8fbf001c 	lw	ra,28(sp)
 388:	8fb00018 	lw	s0,24(sp)
 38c:	27bd0040 	addiu	sp,sp,64
 390:	03e00008 	jr	ra
 394:	00000000 	nop

00000398 <func_80A0E848>:
 398:	afa50004 	sw	a1,4(sp)
 39c:	848201a6 	lh	v0,422(a0)
 3a0:	3c0f0000 	lui	t7,0x0
 3a4:	25ef0000 	addiu	t7,t7,0
 3a8:	14400003 	bnez	v0,3b8 <func_80A0E848+0x20>
 3ac:	244effff 	addiu	t6,v0,-1
 3b0:	10000003 	b	3c0 <func_80A0E848+0x28>
 3b4:	00001825 	move	v1,zero
 3b8:	a48e01a6 	sh	t6,422(a0)
 3bc:	848301a6 	lh	v1,422(a0)
 3c0:	14600002 	bnez	v1,3cc <func_80A0E848+0x34>
 3c4:	00000000 	nop
 3c8:	ac8f014c 	sw	t7,332(a0)
 3cc:	03e00008 	jr	ra
 3d0:	00000000 	nop

000003d4 <func_80A0E884>:
 3d4:	27bdff80 	addiu	sp,sp,-128
 3d8:	afb00020 	sw	s0,32(sp)
 3dc:	3c0e0000 	lui	t6,0x0
 3e0:	afbf0024 	sw	ra,36(sp)
 3e4:	27a7004c 	addiu	a3,sp,76
 3e8:	25ce0000 	addiu	t6,t6,0
 3ec:	00808025 	move	s0,a0
 3f0:	8ca21c44 	lw	v0,7236(a1)
 3f4:	25c80030 	addiu	t0,t6,48
 3f8:	00e0c825 	move	t9,a3
 3fc:	8dd80000 	lw	t8,0(t6)
 400:	25ce000c 	addiu	t6,t6,12
 404:	2739000c 	addiu	t9,t9,12
 408:	af38fff4 	sw	t8,-12(t9)
 40c:	8dcffff8 	lw	t7,-8(t6)
 410:	af2ffff8 	sw	t7,-8(t9)
 414:	8dd8fffc 	lw	t8,-4(t6)
 418:	15c8fff8 	bne	t6,t0,3fc <func_80A0E884+0x28>
 41c:	af38fffc 	sw	t8,-4(t9)
 420:	8ca9009c 	lw	t1,156(a1)
 424:	2401000a 	li	at,10
 428:	860b001c 	lh	t3,28(s0)
 42c:	0121001b 	divu	zero,t1,at
 430:	00005012 	mflo	t2
 434:	316c7fff 	andi	t4,t3,0x7fff
 438:	014c1821 	addu	v1,t2,t4
 43c:	2401000c 	li	at,12
 440:	0061001b 	divu	zero,v1,at
 444:	8c4e0024 	lw	t6,36(v0)
 448:	27ad0040 	addiu	t5,sp,64
 44c:	00001810 	mfhi	v1
 450:	adae0000 	sw	t6,0(t5)
 454:	8c480028 	lw	t0,40(v0)
 458:	00031c00 	sll	v1,v1,0x10
 45c:	00031c03 	sra	v1,v1,0x10
 460:	ada80004 	sw	t0,4(t5)
 464:	8c4e002c 	lw	t6,44(v0)
 468:	0003c880 	sll	t9,v1,0x2
 46c:	00f93021 	addu	a2,a3,t9
 470:	adae0008 	sw	t6,8(t5)
 474:	c4cc0000 	lwc1	$f12,0(a2)
 478:	0c000000 	jal	0 <func_80A0E4B0>
 47c:	afa6002c 	sw	a2,44(sp)
 480:	3c0142f0 	lui	at,0x42f0
 484:	44813000 	mtc1	at,$f6
 488:	c7a40040 	lwc1	$f4,64(sp)
 48c:	8fa6002c 	lw	a2,44(sp)
 490:	46003202 	mul.s	$f8,$f6,$f0
 494:	46082280 	add.s	$f10,$f4,$f8
 498:	e7aa0040 	swc1	$f10,64(sp)
 49c:	0c000000 	jal	0 <func_80A0E4B0>
 4a0:	c4cc0000 	lwc1	$f12,0(a2)
 4a4:	3c0142f0 	lui	at,0x42f0
 4a8:	44819000 	mtc1	at,$f18
 4ac:	c7b00048 	lwc1	$f16,72(sp)
 4b0:	3c180000 	lui	t8,0x0
 4b4:	46009182 	mul.s	$f6,$f18,$f0
 4b8:	27180000 	addiu	t8,t8,0
 4bc:	26040024 	addiu	a0,s0,36
 4c0:	46068100 	add.s	$f4,$f16,$f6
 4c4:	e7a40048 	swc1	$f4,72(sp)
 4c8:	860201a6 	lh	v0,422(s0)
 4cc:	14400003 	bnez	v0,4dc <func_80A0E884+0x108>
 4d0:	244fffff 	addiu	t7,v0,-1
 4d4:	10000003 	b	4e4 <func_80A0E884+0x110>
 4d8:	00001825 	move	v1,zero
 4dc:	a60f01a6 	sh	t7,422(s0)
 4e0:	860301a6 	lh	v1,422(s0)
 4e4:	14600003 	bnez	v1,4f4 <func_80A0E884+0x120>
 4e8:	00000000 	nop
 4ec:	10000020 	b	570 <func_80A0E884+0x19c>
 4f0:	ae18014c 	sw	t8,332(s0)
 4f4:	0c000000 	jal	0 <func_80A0E4B0>
 4f8:	27a50040 	addiu	a1,sp,64
 4fc:	00022c00 	sll	a1,v0,0x10
 500:	24090001 	li	t1,1
 504:	afa90010 	sw	t1,16(sp)
 508:	00052c03 	sra	a1,a1,0x10
 50c:	26040032 	addiu	a0,s0,50
 510:	24060008 	li	a2,8
 514:	0c000000 	jal	0 <func_80A0E4B0>
 518:	24070fa0 	li	a3,4000
 51c:	44800000 	mtc1	zero,$f0
 520:	3c063ecc 	lui	a2,0x3ecc
 524:	34c6cccd 	ori	a2,a2,0xcccd
 528:	44050000 	mfc1	a1,$f0
 52c:	26040068 	addiu	a0,s0,104
 530:	3c073f80 	lui	a3,0x3f80
 534:	0c000000 	jal	0 <func_80A0E4B0>
 538:	e7a00010 	swc1	$f0,16(sp)
 53c:	3c010000 	lui	at,0x0
 540:	c42a0000 	lwc1	$f10,0(at)
 544:	c6080068 	lwc1	$f8,104(s0)
 548:	3c0140a0 	lui	at,0x40a0
 54c:	460a403c 	c.lt.s	$f8,$f10
 550:	00000000 	nop
 554:	45000004 	bc1f	568 <func_80A0E884+0x194>
 558:	00000000 	nop
 55c:	44819000 	mtc1	at,$f18
 560:	00000000 	nop
 564:	e6120068 	swc1	$f18,104(s0)
 568:	0c000000 	jal	0 <func_80A0E4B0>
 56c:	02002025 	move	a0,s0
 570:	8fbf0024 	lw	ra,36(sp)
 574:	8fb00020 	lw	s0,32(sp)
 578:	27bd0080 	addiu	sp,sp,128
 57c:	03e00008 	jr	ra
 580:	00000000 	nop

00000584 <func_80A0EA34>:
 584:	44800000 	mtc1	zero,$f0
 588:	27bdffd8 	addiu	sp,sp,-40
 58c:	afb00020 	sw	s0,32(sp)
 590:	afa5002c 	sw	a1,44(sp)
 594:	00808025 	move	s0,a0
 598:	afbf0024 	sw	ra,36(sp)
 59c:	3c063f19 	lui	a2,0x3f19
 5a0:	44050000 	mfc1	a1,$f0
 5a4:	34c6999a 	ori	a2,a2,0x999a
 5a8:	24840068 	addiu	a0,a0,104
 5ac:	3c074110 	lui	a3,0x4110
 5b0:	0c000000 	jal	0 <func_80A0E4B0>
 5b4:	e7a00010 	swc1	$f0,16(sp)
 5b8:	0c000000 	jal	0 <func_80A0E4B0>
 5bc:	02002025 	move	a0,s0
 5c0:	44800000 	mtc1	zero,$f0
 5c4:	3c063e99 	lui	a2,0x3e99
 5c8:	3c073dcc 	lui	a3,0x3dcc
 5cc:	44050000 	mfc1	a1,$f0
 5d0:	34e7cccd 	ori	a3,a3,0xcccd
 5d4:	34c6999a 	ori	a2,a2,0x999a
 5d8:	260401a0 	addiu	a0,s0,416
 5dc:	0c000000 	jal	0 <func_80A0E4B0>
 5e0:	e7a00010 	swc1	$f0,16(sp)
 5e4:	3c0141a0 	lui	at,0x41a0
 5e8:	44812000 	mtc1	at,$f4
 5ec:	3c014040 	lui	at,0x4040
 5f0:	44813000 	mtc1	at,$f6
 5f4:	c60001a0 	lwc1	$f0,416(s0)
 5f8:	3c010000 	lui	at,0x0
 5fc:	46060203 	div.s	$f8,$f0,$f6
 600:	46082282 	mul.s	$f10,$f4,$f8
 604:	e60a00c4 	swc1	$f10,196(s0)
 608:	c4300000 	lwc1	$f16,0(at)
 60c:	4600803c 	c.lt.s	$f16,$f0
 610:	00000000 	nop
 614:	45030004 	bc1tl	628 <func_80A0EA34+0xa4>
 618:	8fbf0024 	lw	ra,36(sp)
 61c:	0c000000 	jal	0 <func_80A0E4B0>
 620:	02002025 	move	a0,s0
 624:	8fbf0024 	lw	ra,36(sp)
 628:	8fb00020 	lw	s0,32(sp)
 62c:	27bd0028 	addiu	sp,sp,40
 630:	03e00008 	jr	ra
 634:	00000000 	nop

00000638 <EnFdFire_Update>:
 638:	27bdffc8 	addiu	sp,sp,-56
 63c:	3c0e0000 	lui	t6,0x0
 640:	25ce0000 	addiu	t6,t6,0
 644:	afbf0024 	sw	ra,36(sp)
 648:	afb10020 	sw	s1,32(sp)
 64c:	afb0001c 	sw	s0,28(sp)
 650:	afae002c 	sw	t6,44(sp)
 654:	8c8f014c 	lw	t7,332(a0)
 658:	00808025 	move	s0,a0
 65c:	00a08825 	move	s1,a1
 660:	11cf000b 	beq	t6,t7,690 <EnFdFire_Update+0x58>
 664:	00000000 	nop
 668:	8c980118 	lw	t8,280(a0)
 66c:	8f190130 	lw	t9,304(t8)
 670:	53200006 	beqzl	t9,68c <EnFdFire_Update+0x54>
 674:	8fa8002c 	lw	t0,44(sp)
 678:	0c000000 	jal	0 <func_80A0E4B0>
 67c:	00000000 	nop
 680:	10400003 	beqz	v0,690 <EnFdFire_Update+0x58>
 684:	00000000 	nop
 688:	8fa8002c 	lw	t0,44(sp)
 68c:	ae08014c 	sw	t0,332(s0)
 690:	0c000000 	jal	0 <func_80A0E4B0>
 694:	02002025 	move	a0,s0
 698:	8e19014c 	lw	t9,332(s0)
 69c:	02002025 	move	a0,s0
 6a0:	02202825 	move	a1,s1
 6a4:	0320f809 	jalr	t9
 6a8:	00000000 	nop
 6ac:	44802000 	mtc1	zero,$f4
 6b0:	24090005 	li	t1,5
 6b4:	afa90014 	sw	t1,20(sp)
 6b8:	02202025 	move	a0,s1
 6bc:	02002825 	move	a1,s0
 6c0:	3c064140 	lui	a2,0x4140
 6c4:	3c074120 	lui	a3,0x4120
 6c8:	0c000000 	jal	0 <func_80A0E4B0>
 6cc:	e7a40010 	swc1	$f4,16(sp)
 6d0:	8faa002c 	lw	t2,44(sp)
 6d4:	8e0b014c 	lw	t3,332(s0)
 6d8:	02002025 	move	a0,s0
 6dc:	26050150 	addiu	a1,s0,336
 6e0:	514b000f 	beql	t2,t3,720 <EnFdFire_Update+0xe8>
 6e4:	8fbf0024 	lw	ra,36(sp)
 6e8:	0c000000 	jal	0 <func_80A0E4B0>
 6ec:	afa50028 	sw	a1,40(sp)
 6f0:	3c010001 	lui	at,0x1
 6f4:	34211e60 	ori	at,at,0x1e60
 6f8:	02212821 	addu	a1,s1,at
 6fc:	afa5002c 	sw	a1,44(sp)
 700:	02202025 	move	a0,s1
 704:	0c000000 	jal	0 <func_80A0E4B0>
 708:	8fa60028 	lw	a2,40(sp)
 70c:	8fa5002c 	lw	a1,44(sp)
 710:	02202025 	move	a0,s1
 714:	0c000000 	jal	0 <func_80A0E4B0>
 718:	8fa60028 	lw	a2,40(sp)
 71c:	8fbf0024 	lw	ra,36(sp)
 720:	8fb0001c 	lw	s0,28(sp)
 724:	8fb10020 	lw	s1,32(sp)
 728:	03e00008 	jr	ra
 72c:	27bd0038 	addiu	sp,sp,56

00000730 <EnFdFire_Draw>:
 730:	27bdff40 	addiu	sp,sp,-192
 734:	3c0f0000 	lui	t7,0x0
 738:	afbf003c 	sw	ra,60(sp)
 73c:	afb10038 	sw	s1,56(sp)
 740:	afb00034 	sw	s0,52(sp)
 744:	afa400c0 	sw	a0,192(sp)
 748:	25ef0000 	addiu	t7,t7,0
 74c:	8df90000 	lw	t9,0(t7)
 750:	8df80004 	lw	t8,4(t7)
 754:	27ae00b8 	addiu	t6,sp,184
 758:	3c090000 	lui	t1,0x0
 75c:	25290000 	addiu	t1,t1,0
 760:	add90000 	sw	t9,0(t6)
 764:	add80004 	sw	t8,4(t6)
 768:	8d2a0004 	lw	t2,4(t1)
 76c:	8d2b0000 	lw	t3,0(t1)
 770:	27a800b0 	addiu	t0,sp,176
 774:	3c0d0000 	lui	t5,0x0
 778:	25ad0000 	addiu	t5,t5,0
 77c:	ad0a0004 	sw	t2,4(t0)
 780:	ad0b0000 	sw	t3,0(t0)
 784:	8daf0000 	lw	t7,0(t5)
 788:	27ac009c 	addiu	t4,sp,156
 78c:	8dae0004 	lw	t6,4(t5)
 790:	ad8f0000 	sw	t7,0(t4)
 794:	8daf0008 	lw	t7,8(t5)
 798:	3c190000 	lui	t9,0x0
 79c:	27390000 	addiu	t9,t9,0
 7a0:	ad8e0004 	sw	t6,4(t4)
 7a4:	ad8f0008 	sw	t7,8(t4)
 7a8:	8f290000 	lw	t1,0(t9)
 7ac:	27b80090 	addiu	t8,sp,144
 7b0:	8f280004 	lw	t0,4(t9)
 7b4:	af090000 	sw	t1,0(t8)
 7b8:	8f290008 	lw	t1,8(t9)
 7bc:	00a08825 	move	s1,a1
 7c0:	af080004 	sw	t0,4(t8)
 7c4:	af090008 	sw	t1,8(t8)
 7c8:	8ca50000 	lw	a1,0(a1)
 7cc:	3c060000 	lui	a2,0x0
 7d0:	24c60000 	addiu	a2,a2,0
 7d4:	27a4006c 	addiu	a0,sp,108
 7d8:	2407023c 	li	a3,572
 7dc:	0c000000 	jal	0 <func_80A0E4B0>
 7e0:	00a08025 	move	s0,a1
 7e4:	8fa200c0 	lw	v0,192(sp)
 7e8:	00003825 	move	a3,zero
 7ec:	c44c0024 	lwc1	$f12,36(v0)
 7f0:	c44e0028 	lwc1	$f14,40(v0)
 7f4:	0c000000 	jal	0 <func_80A0E4B0>
 7f8:	8c46002c 	lw	a2,44(v0)
 7fc:	8fa500c0 	lw	a1,192(sp)
 800:	27a4009c 	addiu	a0,sp,156
 804:	24a5005c 	addiu	a1,a1,92
 808:	0c000000 	jal	0 <func_80A0E4B0>
 80c:	afa50048 	sw	a1,72(sp)
 810:	a7a20052 	sh	v0,82(sp)
 814:	862a07a0 	lh	t2,1952(s1)
 818:	000a5880 	sll	t3,t2,0x2
 81c:	022b6021 	addu	t4,s1,t3
 820:	0c000000 	jal	0 <func_80A0E4B0>
 824:	8d840790 	lw	a0,1936(t4)
 828:	87ad0052 	lh	t5,82(sp)
 82c:	01a21823 	subu	v1,t5,v0
 830:	00032400 	sll	a0,v1,0x10
 834:	a7a3008e 	sh	v1,142(sp)
 838:	0c000000 	jal	0 <func_80A0E4B0>
 83c:	00042403 	sra	a0,a0,0x10
 840:	46000005 	abs.s	$f0,$f0
 844:	87a4008e 	lh	a0,142(sp)
 848:	0c000000 	jal	0 <func_80A0E4B0>
 84c:	e7a00084 	swc1	$f0,132(sp)
 850:	e7a00088 	swc1	$f0,136(sp)
 854:	27a4009c 	addiu	a0,sp,156
 858:	0c000000 	jal	0 <func_80A0E4B0>
 85c:	8fa50048 	lw	a1,72(sp)
 860:	3c013fc0 	lui	at,0x3fc0
 864:	44812000 	mtc1	at,$f4
 868:	00000000 	nop
 86c:	46040183 	div.s	$f6,$f0,$f4
 870:	e7a60080 	swc1	$f6,128(sp)
 874:	862e07a0 	lh	t6,1952(s1)
 878:	000e7880 	sll	t7,t6,0x2
 87c:	022fc021 	addu	t8,s1,t7
 880:	0c000000 	jal	0 <func_80A0E4B0>
 884:	8f040790 	lw	a0,1936(t8)
 888:	34018000 	li	at,0x8000
 88c:	0041c821 	addu	t9,v0,at
 890:	00194400 	sll	t0,t9,0x10
 894:	00084c03 	sra	t1,t0,0x10
 898:	44894000 	mtc1	t1,$f8
 89c:	3c010000 	lui	at,0x0
 8a0:	c4300000 	lwc1	$f16,0(at)
 8a4:	468042a0 	cvt.s.w	$f10,$f8
 8a8:	24050001 	li	a1,1
 8ac:	46105302 	mul.s	$f12,$f10,$f16
 8b0:	0c000000 	jal	0 <func_80A0E4B0>
 8b4:	00000000 	nop
 8b8:	3c01c120 	lui	at,0xc120
 8bc:	44812000 	mtc1	at,$f4
 8c0:	c7b20088 	lwc1	$f18,136(sp)
 8c4:	c7a80080 	lwc1	$f8,128(sp)
 8c8:	3c010000 	lui	at,0x0
 8cc:	46049182 	mul.s	$f6,$f18,$f4
 8d0:	c4300000 	lwc1	$f16,0(at)
 8d4:	24050001 	li	a1,1
 8d8:	46083282 	mul.s	$f10,$f6,$f8
 8dc:	00000000 	nop
 8e0:	46105302 	mul.s	$f12,$f10,$f16
 8e4:	0c000000 	jal	0 <func_80A0E4B0>
 8e8:	00000000 	nop
 8ec:	8faa00c0 	lw	t2,192(sp)
 8f0:	3c010000 	lui	at,0x0
 8f4:	c4240000 	lwc1	$f4,0(at)
 8f8:	c55201a0 	lwc1	$f18,416(t2)
 8fc:	24070001 	li	a3,1
 900:	46049382 	mul.s	$f14,$f18,$f4
 904:	44067000 	mfc1	a2,$f14
 908:	e7ae00a4 	swc1	$f14,164(sp)
 90c:	e7ae00a0 	swc1	$f14,160(sp)
 910:	e7ae009c 	swc1	$f14,156(sp)
 914:	0c000000 	jal	0 <func_80A0E4B0>
 918:	46007306 	mov.s	$f12,$f14
 91c:	3c010000 	lui	at,0x0
 920:	c4200000 	lwc1	$f0,0(at)
 924:	3c013f80 	lui	at,0x3f80
 928:	44816000 	mtc1	at,$f12
 92c:	3c010000 	lui	at,0x0
 930:	c7a20084 	lwc1	$f2,132(sp)
 934:	c4280000 	lwc1	$f8,0(at)
 938:	c7b00080 	lwc1	$f16,128(sp)
 93c:	46024282 	mul.s	$f10,$f8,$f2
 940:	00000000 	nop
 944:	46105482 	mul.s	$f18,$f10,$f16
 948:	460c9080 	add.s	$f2,$f18,$f12
 94c:	4600103c 	c.lt.s	$f2,$f0
 950:	e7a20084 	swc1	$f2,132(sp)
 954:	45000002 	bc1f	960 <EnFdFire_Draw+0x230>
 958:	00000000 	nop
 95c:	e7a00084 	swc1	$f0,132(sp)
 960:	c7ae0084 	lwc1	$f14,132(sp)
 964:	24070001 	li	a3,1
 968:	460e6103 	div.s	$f4,$f12,$f14
 96c:	44062000 	mfc1	a2,$f4
 970:	0c000000 	jal	0 <func_80A0E4B0>
 974:	00000000 	nop
 978:	8e0202d0 	lw	v0,720(s0)
 97c:	3c0cda38 	lui	t4,0xda38
 980:	358c0003 	ori	t4,t4,0x3
 984:	244b0008 	addiu	t3,v0,8
 988:	ae0b02d0 	sw	t3,720(s0)
 98c:	ac4c0000 	sw	t4,0(v0)
 990:	8e240000 	lw	a0,0(s1)
 994:	3c050000 	lui	a1,0x0
 998:	24a50000 	addiu	a1,a1,0
 99c:	2406026f 	li	a2,623
 9a0:	0c000000 	jal	0 <func_80A0E4B0>
 9a4:	afa20068 	sw	v0,104(sp)
 9a8:	8fa30068 	lw	v1,104(sp)
 9ac:	ac620004 	sw	v0,4(v1)
 9b0:	0c000000 	jal	0 <func_80A0E4B0>
 9b4:	8e240000 	lw	a0,0(s1)
 9b8:	8e0202d0 	lw	v0,720(s0)
 9bc:	3c0edb06 	lui	t6,0xdb06
 9c0:	35ce0020 	ori	t6,t6,0x20
 9c4:	244d0008 	addiu	t5,v0,8
 9c8:	ae0d02d0 	sw	t5,720(s0)
 9cc:	ac4e0000 	sw	t6,0(v0)
 9d0:	8e240000 	lw	a0,0(s1)
 9d4:	8fa900c0 	lw	t1,192(sp)
 9d8:	240f0020 	li	t7,32
 9dc:	24180040 	li	t8,64
 9e0:	24190001 	li	t9,1
 9e4:	afb90018 	sw	t9,24(sp)
 9e8:	afb80014 	sw	t8,20(sp)
 9ec:	afaf0010 	sw	t7,16(sp)
 9f0:	afa0001c 	sw	zero,28(sp)
 9f4:	8e28009c 	lw	t0,156(s1)
 9f8:	852a01a8 	lh	t2,424(t1)
 9fc:	240d0080 	li	t5,128
 a00:	240c0020 	li	t4,32
 a04:	010a0019 	multu	t0,t2
 a08:	afac0024 	sw	t4,36(sp)
 a0c:	afad0028 	sw	t5,40(sp)
 a10:	00002825 	move	a1,zero
 a14:	00003025 	move	a2,zero
 a18:	00003825 	move	a3,zero
 a1c:	afa20064 	sw	v0,100(sp)
 a20:	00005812 	mflo	t3
 a24:	afab0020 	sw	t3,32(sp)
 a28:	0c000000 	jal	0 <func_80A0E4B0>
 a2c:	00000000 	nop
 a30:	8fa30064 	lw	v1,100(sp)
 a34:	3c0ffa00 	lui	t7,0xfa00
 a38:	35ef8080 	ori	t7,t7,0x8080
 a3c:	ac620004 	sw	v0,4(v1)
 a40:	8e0202d0 	lw	v0,720(s0)
 a44:	27ab00b8 	addiu	t3,sp,184
 a48:	3c060000 	lui	a2,0x0
 a4c:	244e0008 	addiu	t6,v0,8
 a50:	ae0e02d0 	sw	t6,720(s0)
 a54:	ac4f0000 	sw	t7,0(v0)
 a58:	8fb800c0 	lw	t8,192(sp)
 a5c:	24c60000 	addiu	a2,a2,0
 a60:	27a4006c 	addiu	a0,sp,108
 a64:	8719001c 	lh	t9,28(t8)
 a68:	240702a0 	li	a3,672
 a6c:	33298000 	andi	t1,t9,0x8000
 a70:	000943c3 	sra	t0,t1,0xf
 a74:	00085080 	sll	t2,t0,0x2
 a78:	014b1821 	addu	v1,t2,t3
 a7c:	906f0000 	lbu	t7,0(v1)
 a80:	906d0003 	lbu	t5,3(v1)
 a84:	90680001 	lbu	t0,1(v1)
 a88:	906e0002 	lbu	t6,2(v1)
 a8c:	000fc600 	sll	t8,t7,0x18
 a90:	01b8c825 	or	t9,t5,t8
 a94:	00085400 	sll	t2,t0,0x10
 a98:	032a5825 	or	t3,t9,t2
 a9c:	000e7a00 	sll	t7,t6,0x8
 aa0:	016f6825 	or	t5,t3,t7
 aa4:	ac4d0004 	sw	t5,4(v0)
 aa8:	8e0202d0 	lw	v0,720(s0)
 aac:	3c09fb00 	lui	t1,0xfb00
 ab0:	27ab00b0 	addiu	t3,sp,176
 ab4:	24580008 	addiu	t8,v0,8
 ab8:	ae1802d0 	sw	t8,720(s0)
 abc:	ac490000 	sw	t1,0(v0)
 ac0:	8fa800c0 	lw	t0,192(sp)
 ac4:	8519001c 	lh	t9,28(t0)
 ac8:	332a8000 	andi	t2,t9,0x8000
 acc:	000a63c3 	sra	t4,t2,0xf
 ad0:	000c7080 	sll	t6,t4,0x2
 ad4:	01cb1821 	addu	v1,t6,t3
 ad8:	90690000 	lbu	t1,0(v1)
 adc:	906d0003 	lbu	t5,3(v1)
 ae0:	906c0001 	lbu	t4,1(v1)
 ae4:	90780002 	lbu	t8,2(v1)
 ae8:	00094600 	sll	t0,t1,0x18
 aec:	01a8c825 	or	t9,t5,t0
 af0:	000c7400 	sll	t6,t4,0x10
 af4:	032e5825 	or	t3,t9,t6
 af8:	00184a00 	sll	t1,t8,0x8
 afc:	01696825 	or	t5,t3,t1
 b00:	ac4d0004 	sw	t5,4(v0)
 b04:	8e0202d0 	lw	v0,720(s0)
 b08:	3c0ae700 	lui	t2,0xe700
 b0c:	3c0e0405 	lui	t6,0x405
 b10:	24480008 	addiu	t0,v0,8
 b14:	ae0802d0 	sw	t0,720(s0)
 b18:	ac400004 	sw	zero,4(v0)
 b1c:	ac4a0000 	sw	t2,0(v0)
 b20:	8e0202d0 	lw	v0,720(s0)
 b24:	25ced4e0 	addiu	t6,t6,-11040
 b28:	3c19de00 	lui	t9,0xde00
 b2c:	244c0008 	addiu	t4,v0,8
 b30:	ae0c02d0 	sw	t4,720(s0)
 b34:	ac4e0004 	sw	t6,4(v0)
 b38:	ac590000 	sw	t9,0(v0)
 b3c:	0c000000 	jal	0 <func_80A0E4B0>
 b40:	8e250000 	lw	a1,0(s1)
 b44:	8fbf003c 	lw	ra,60(sp)
 b48:	8fb00034 	lw	s0,52(sp)
 b4c:	8fb10038 	lw	s1,56(sp)
 b50:	03e00008 	jr	ra
 b54:	27bd00c0 	addiu	sp,sp,192
	...
