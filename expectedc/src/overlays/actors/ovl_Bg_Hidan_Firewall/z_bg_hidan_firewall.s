
build/src/overlays/actors/ovl_Bg_Hidan_Firewall/z_bg_hidan_firewall.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHidanFirewall_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	3c010000 	lui	at,0x0
   8:	c4200054 	lwc1	$f0,84(at)
   c:	afbf001c 	sw	ra,28(sp)
  10:	afb00018 	sw	s0,24(sp)
  14:	afa5002c 	sw	a1,44(sp)
  18:	3c010000 	lui	at,0x0
  1c:	e4800050 	swc1	$f0,80(a0)
  20:	e4800058 	swc1	$f0,88(a0)
  24:	c4240058 	lwc1	$f4,88(at)
  28:	00808025 	move	s0,a0
  2c:	a4800150 	sh	zero,336(a0)
  30:	26050154 	addiu	a1,s0,340
  34:	e4840054 	swc1	$f4,84(a0)
  38:	afa50020 	sw	a1,32(sp)
  3c:	0c000000 	jal	0 <BgHidanFirewall_Init>
  40:	8fa4002c 	lw	a0,44(sp)
  44:	3c070000 	lui	a3,0x0
  48:	8fa50020 	lw	a1,32(sp)
  4c:	24e70020 	addiu	a3,a3,32
  50:	8fa4002c 	lw	a0,44(sp)
  54:	0c000000 	jal	0 <BgHidanFirewall_Init>
  58:	02003025 	move	a2,s0
  5c:	c6060028 	lwc1	$f6,40(s0)
  60:	3c060000 	lui	a2,0x0
  64:	24c6004c 	addiu	a2,a2,76
  68:	4600320d 	trunc.w.s	$f8,$f6
  6c:	26040098 	addiu	a0,s0,152
  70:	00002825 	move	a1,zero
  74:	440f4000 	mfc1	t7,$f8
  78:	0c000000 	jal	0 <BgHidanFirewall_Init>
  7c:	a60f019c 	sh	t7,412(s0)
  80:	3c180000 	lui	t8,0x0
  84:	27180000 	addiu	t8,t8,0
  88:	ae18014c 	sw	t8,332(s0)
  8c:	8fbf001c 	lw	ra,28(sp)
  90:	8fb00018 	lw	s0,24(sp)
  94:	27bd0028 	addiu	sp,sp,40
  98:	03e00008 	jr	ra
  9c:	00000000 	nop

000000a0 <BgHidanFirewall_Destroy>:
  a0:	27bdffe8 	addiu	sp,sp,-24
  a4:	00803025 	move	a2,a0
  a8:	afbf0014 	sw	ra,20(sp)
  ac:	00a02025 	move	a0,a1
  b0:	0c000000 	jal	0 <BgHidanFirewall_Init>
  b4:	24c50154 	addiu	a1,a2,340
  b8:	8fbf0014 	lw	ra,20(sp)
  bc:	27bd0018 	addiu	sp,sp,24
  c0:	03e00008 	jr	ra
  c4:	00000000 	nop

000000c8 <BgHidanFirewall_CheckProximity>:
  c8:	27bdffd8 	addiu	sp,sp,-40
  cc:	afbf0014 	sw	ra,20(sp)
  d0:	8ca21c44 	lw	v0,7236(a1)
  d4:	27a50018 	addiu	a1,sp,24
  d8:	0c000000 	jal	0 <BgHidanFirewall_Init>
  dc:	24460024 	addiu	a2,v0,36
  e0:	c7a00018 	lwc1	$f0,24(sp)
  e4:	3c0142c8 	lui	at,0x42c8
  e8:	44812000 	mtc1	at,$f4
  ec:	46000005 	abs.s	$f0,$f0
  f0:	3c0142f0 	lui	at,0x42f0
  f4:	4604003c 	c.lt.s	$f0,$f4
  f8:	c7a00020 	lwc1	$f0,32(sp)
  fc:	8fbf0014 	lw	ra,20(sp)
 100:	00001025 	move	v0,zero
 104:	45000009 	bc1f	12c <BgHidanFirewall_CheckProximity+0x64>
 108:	00000000 	nop
 10c:	44813000 	mtc1	at,$f6
 110:	46000005 	abs.s	$f0,$f0
 114:	4606003c 	c.lt.s	$f0,$f6
 118:	00000000 	nop
 11c:	45000003 	bc1f	12c <BgHidanFirewall_CheckProximity+0x64>
 120:	00000000 	nop
 124:	10000001 	b	12c <BgHidanFirewall_CheckProximity+0x64>
 128:	24020001 	li	v0,1
 12c:	03e00008 	jr	ra
 130:	27bd0028 	addiu	sp,sp,40

00000134 <BgHidanFirewall_Wait>:
 134:	27bdffe8 	addiu	sp,sp,-24
 138:	afbf0014 	sw	ra,20(sp)
 13c:	0c000000 	jal	0 <BgHidanFirewall_Init>
 140:	afa40018 	sw	a0,24(sp)
 144:	10400009 	beqz	v0,16c <BgHidanFirewall_Wait+0x38>
 148:	8fa40018 	lw	a0,24(sp)
 14c:	3c0e0000 	lui	t6,0x0
 150:	3c180000 	lui	t8,0x0
 154:	25ce0000 	addiu	t6,t6,0
 158:	240f0005 	li	t7,5
 15c:	27180000 	addiu	t8,t8,0
 160:	ac8e0134 	sw	t6,308(a0)
 164:	a48f001c 	sh	t7,28(a0)
 168:	ac98014c 	sw	t8,332(a0)
 16c:	8fbf0014 	lw	ra,20(sp)
 170:	27bd0018 	addiu	sp,sp,24
 174:	03e00008 	jr	ra
 178:	00000000 	nop

0000017c <BgHidanFirewall_Countdown>:
 17c:	afa50004 	sw	a1,4(sp)
 180:	8482001c 	lh	v0,28(a0)
 184:	3c0f0000 	lui	t7,0x0
 188:	25ef0000 	addiu	t7,t7,0
 18c:	10400003 	beqz	v0,19c <BgHidanFirewall_Countdown+0x20>
 190:	244effff 	addiu	t6,v0,-1
 194:	a48e001c 	sh	t6,28(a0)
 198:	8482001c 	lh	v0,28(a0)
 19c:	14400002 	bnez	v0,1a8 <BgHidanFirewall_Countdown+0x2c>
 1a0:	00000000 	nop
 1a4:	ac8f014c 	sw	t7,332(a0)
 1a8:	03e00008 	jr	ra
 1ac:	00000000 	nop

000001b0 <BgHidanFirewall_Erupt>:
 1b0:	27bdffe8 	addiu	sp,sp,-24
 1b4:	afbf0014 	sw	ra,20(sp)
 1b8:	0c000000 	jal	0 <BgHidanFirewall_Init>
 1bc:	afa40018 	sw	a0,24(sp)
 1c0:	10400009 	beqz	v0,1e8 <BgHidanFirewall_Erupt+0x38>
 1c4:	8fa70018 	lw	a3,24(sp)
 1c8:	3c053dcc 	lui	a1,0x3dcc
 1cc:	3c063ccc 	lui	a2,0x3ccc
 1d0:	34c6cccc 	ori	a2,a2,0xcccc
 1d4:	34a5cccd 	ori	a1,a1,0xcccd
 1d8:	0c000000 	jal	0 <BgHidanFirewall_Init>
 1dc:	24e40054 	addiu	a0,a3,84
 1e0:	10000012 	b	22c <BgHidanFirewall_Erupt+0x7c>
 1e4:	8fbf0014 	lw	ra,20(sp)
 1e8:	3c010000 	lui	at,0x0
 1ec:	c420005c 	lwc1	$f0,92(at)
 1f0:	24e40054 	addiu	a0,a3,84
 1f4:	afa70018 	sw	a3,24(sp)
 1f8:	44050000 	mfc1	a1,$f0
 1fc:	44060000 	mfc1	a2,$f0
 200:	0c000000 	jal	0 <BgHidanFirewall_Init>
 204:	00000000 	nop
 208:	10400006 	beqz	v0,224 <BgHidanFirewall_Erupt+0x74>
 20c:	8fa70018 	lw	a3,24(sp)
 210:	3c0e0000 	lui	t6,0x0
 214:	25ce0000 	addiu	t6,t6,0
 218:	ace00134 	sw	zero,308(a3)
 21c:	10000002 	b	228 <BgHidanFirewall_Erupt+0x78>
 220:	acee014c 	sw	t6,332(a3)
 224:	a4e0001c 	sh	zero,28(a3)
 228:	8fbf0014 	lw	ra,20(sp)
 22c:	27bd0018 	addiu	sp,sp,24
 230:	03e00008 	jr	ra
 234:	00000000 	nop

00000238 <BgHidanFirewall_Collide>:
 238:	27bdffe0 	addiu	sp,sp,-32
 23c:	afbf001c 	sw	ra,28(sp)
 240:	afa50024 	sw	a1,36(sp)
 244:	afa40020 	sw	a0,32(sp)
 248:	0c000000 	jal	0 <BgHidanFirewall_Init>
 24c:	24054000 	li	a1,16384
 250:	10400003 	beqz	v0,260 <BgHidanFirewall_Collide+0x28>
 254:	8fa50020 	lw	a1,32(sp)
 258:	10000006 	b	274 <BgHidanFirewall_Collide+0x3c>
 25c:	84a700b6 	lh	a3,182(a1)
 260:	84a700b6 	lh	a3,182(a1)
 264:	34018000 	li	at,0x8000
 268:	00e13821 	addu	a3,a3,at
 26c:	00073c00 	sll	a3,a3,0x10
 270:	00073c03 	sra	a3,a3,0x10
 274:	3c013f80 	lui	at,0x3f80
 278:	44812000 	mtc1	at,$f4
 27c:	8fa40024 	lw	a0,36(sp)
 280:	3c0640a0 	lui	a2,0x40a0
 284:	0c000000 	jal	0 <BgHidanFirewall_Init>
 288:	e7a40010 	swc1	$f4,16(sp)
 28c:	8fbf001c 	lw	ra,28(sp)
 290:	27bd0020 	addiu	sp,sp,32
 294:	03e00008 	jr	ra
 298:	00000000 	nop

0000029c <BgHidanFirewall_ColliderFollowPlayer>:
 29c:	27bdffc0 	addiu	sp,sp,-64
 2a0:	afbf001c 	sw	ra,28(sp)
 2a4:	afb00018 	sw	s0,24(sp)
 2a8:	8ca21c44 	lw	v0,7236(a1)
 2ac:	00808025 	move	s0,a0
 2b0:	27a50030 	addiu	a1,sp,48
 2b4:	0c000000 	jal	0 <BgHidanFirewall_Init>
 2b8:	24460024 	addiu	a2,v0,36
 2bc:	3c01c28c 	lui	at,0xc28c
 2c0:	44810000 	mtc1	at,$f0
 2c4:	c7a20030 	lwc1	$f2,48(sp)
 2c8:	3c01428c 	lui	at,0x428c
 2cc:	4600103c 	c.lt.s	$f2,$f0
 2d0:	00000000 	nop
 2d4:	45020004 	bc1fl	2e8 <BgHidanFirewall_ColliderFollowPlayer+0x4c>
 2d8:	44816000 	mtc1	at,$f12
 2dc:	1000000b 	b	30c <BgHidanFirewall_ColliderFollowPlayer+0x70>
 2e0:	e7a00030 	swc1	$f0,48(sp)
 2e4:	44816000 	mtc1	at,$f12
 2e8:	00000000 	nop
 2ec:	4602603c 	c.lt.s	$f12,$f2
 2f0:	00000000 	nop
 2f4:	45020004 	bc1fl	308 <BgHidanFirewall_ColliderFollowPlayer+0x6c>
 2f8:	46001006 	mov.s	$f0,$f2
 2fc:	10000002 	b	308 <BgHidanFirewall_ColliderFollowPlayer+0x6c>
 300:	46006006 	mov.s	$f0,$f12
 304:	46001006 	mov.s	$f0,$f2
 308:	e7a00030 	swc1	$f0,48(sp)
 30c:	8602001c 	lh	v0,28(s0)
 310:	c7a60038 	lwc1	$f6,56(sp)
 314:	54400013 	bnezl	v0,364 <BgHidanFirewall_ColliderFollowPlayer+0xc8>
 318:	44828000 	mtc1	v0,$f16
 31c:	44802000 	mtc1	zero,$f4
 320:	3c0141c8 	lui	at,0x41c8
 324:	4606203c 	c.lt.s	$f4,$f6
 328:	00000000 	nop
 32c:	45020008 	bc1fl	350 <BgHidanFirewall_ColliderFollowPlayer+0xb4>
 330:	44815000 	mtc1	at,$f10
 334:	3c01c1c8 	lui	at,0xc1c8
 338:	44814000 	mtc1	at,$f8
 33c:	240effff 	li	t6,-1
 340:	e7a80038 	swc1	$f8,56(sp)
 344:	1000000c 	b	378 <BgHidanFirewall_ColliderFollowPlayer+0xdc>
 348:	a60e001c 	sh	t6,28(s0)
 34c:	44815000 	mtc1	at,$f10
 350:	240f0001 	li	t7,1
 354:	e7aa0038 	swc1	$f10,56(sp)
 358:	10000007 	b	378 <BgHidanFirewall_ColliderFollowPlayer+0xdc>
 35c:	a60f001c 	sh	t7,28(s0)
 360:	44828000 	mtc1	v0,$f16
 364:	3c0141c8 	lui	at,0x41c8
 368:	44812000 	mtc1	at,$f4
 36c:	468084a0 	cvt.s.w	$f18,$f16
 370:	46049182 	mul.s	$f6,$f18,$f4
 374:	e7a60038 	swc1	$f6,56(sp)
 378:	0c000000 	jal	0 <BgHidanFirewall_Init>
 37c:	860400b6 	lh	a0,182(s0)
 380:	860400b6 	lh	a0,182(s0)
 384:	0c000000 	jal	0 <BgHidanFirewall_Init>
 388:	e7a00028 	swc1	$f0,40(sp)
 38c:	c7aa0030 	lwc1	$f10,48(sp)
 390:	c7a20028 	lwc1	$f2,40(sp)
 394:	c7a40038 	lwc1	$f4,56(sp)
 398:	46005402 	mul.s	$f16,$f10,$f0
 39c:	c6080024 	lwc1	$f8,36(s0)
 3a0:	46022182 	mul.s	$f6,$f4,$f2
 3a4:	46104480 	add.s	$f18,$f8,$f16
 3a8:	c610002c 	lwc1	$f16,44(s0)
 3ac:	46069280 	add.s	$f10,$f18,$f6
 3b0:	4600520d 	trunc.w.s	$f8,$f10
 3b4:	44194000 	mfc1	t9,$f8
 3b8:	00000000 	nop
 3bc:	a619019a 	sh	t9,410(s0)
 3c0:	c7a40030 	lwc1	$f4,48(sp)
 3c4:	c7aa0038 	lwc1	$f10,56(sp)
 3c8:	46022482 	mul.s	$f18,$f4,$f2
 3cc:	46128181 	sub.s	$f6,$f16,$f18
 3d0:	46005202 	mul.s	$f8,$f10,$f0
 3d4:	46083100 	add.s	$f4,$f6,$f8
 3d8:	4600240d 	trunc.w.s	$f16,$f4
 3dc:	44098000 	mfc1	t1,$f16
 3e0:	00000000 	nop
 3e4:	a609019e 	sh	t1,414(s0)
 3e8:	8fbf001c 	lw	ra,28(sp)
 3ec:	8fb00018 	lw	s0,24(sp)
 3f0:	27bd0040 	addiu	sp,sp,64
 3f4:	03e00008 	jr	ra
 3f8:	00000000 	nop

000003fc <BgHidanFirewall_Update>:
 3fc:	27bdffd0 	addiu	sp,sp,-48
 400:	afbf001c 	sw	ra,28(sp)
 404:	afb10018 	sw	s1,24(sp)
 408:	afb00014 	sw	s0,20(sp)
 40c:	848e0150 	lh	t6,336(a0)
 410:	00808025 	move	s0,a0
 414:	92020164 	lbu	v0,356(s0)
 418:	25cf0001 	addiu	t7,t6,1
 41c:	00a08825 	move	s1,a1
 420:	05e10004 	bgez	t7,434 <BgHidanFirewall_Update+0x38>
 424:	31f80007 	andi	t8,t7,0x7
 428:	13000002 	beqz	t8,434 <BgHidanFirewall_Update+0x38>
 42c:	00000000 	nop
 430:	2718fff8 	addiu	t8,t8,-8
 434:	30590002 	andi	t9,v0,0x2
 438:	13200006 	beqz	t9,454 <BgHidanFirewall_Update+0x58>
 43c:	a6180150 	sh	t8,336(s0)
 440:	3048fffd 	andi	t0,v0,0xfffd
 444:	a2080164 	sb	t0,356(s0)
 448:	02002025 	move	a0,s0
 44c:	0c000000 	jal	0 <BgHidanFirewall_Init>
 450:	02202825 	move	a1,s1
 454:	8e19014c 	lw	t9,332(s0)
 458:	02002025 	move	a0,s0
 45c:	02202825 	move	a1,s1
 460:	0320f809 	jalr	t9
 464:	00000000 	nop
 468:	8e0a014c 	lw	t2,332(s0)
 46c:	3c090000 	lui	t1,0x0
 470:	25290000 	addiu	t1,t1,0
 474:	152a0012 	bne	t1,t2,4c0 <BgHidanFirewall_Update+0xc4>
 478:	02002025 	move	a0,s0
 47c:	0c000000 	jal	0 <BgHidanFirewall_Init>
 480:	02202825 	move	a1,s1
 484:	3c010001 	lui	at,0x1
 488:	34211e60 	ori	at,at,0x1e60
 48c:	02212821 	addu	a1,s1,at
 490:	26060154 	addiu	a2,s0,340
 494:	afa60020 	sw	a2,32(sp)
 498:	afa50024 	sw	a1,36(sp)
 49c:	0c000000 	jal	0 <BgHidanFirewall_Init>
 4a0:	02202025 	move	a0,s1
 4a4:	8fa50024 	lw	a1,36(sp)
 4a8:	8fa60020 	lw	a2,32(sp)
 4ac:	0c000000 	jal	0 <BgHidanFirewall_Init>
 4b0:	02202025 	move	a0,s1
 4b4:	02002025 	move	a0,s0
 4b8:	0c000000 	jal	0 <BgHidanFirewall_Init>
 4bc:	24052034 	li	a1,8244
 4c0:	8fbf001c 	lw	ra,28(sp)
 4c4:	8fb00014 	lw	s0,20(sp)
 4c8:	8fb10018 	lw	s1,24(sp)
 4cc:	03e00008 	jr	ra
 4d0:	27bd0030 	addiu	sp,sp,48

000004d4 <BgHidanFirewall_Draw>:
 4d4:	27bdffb0 	addiu	sp,sp,-80
 4d8:	afbf001c 	sw	ra,28(sp)
 4dc:	afb00018 	sw	s0,24(sp)
 4e0:	afa40050 	sw	a0,80(sp)
 4e4:	afa50054 	sw	a1,84(sp)
 4e8:	8ca50000 	lw	a1,0(a1)
 4ec:	3c060000 	lui	a2,0x0
 4f0:	24c60000 	addiu	a2,a2,0
 4f4:	27a40038 	addiu	a0,sp,56
 4f8:	240701c0 	li	a3,448
 4fc:	0c000000 	jal	0 <BgHidanFirewall_Init>
 500:	00a08025 	move	s0,a1
 504:	8e0402d0 	lw	a0,720(s0)
 508:	0c000000 	jal	0 <BgHidanFirewall_Init>
 50c:	24050014 	li	a1,20
 510:	ae0202d0 	sw	v0,720(s0)
 514:	244f0008 	addiu	t7,v0,8
 518:	3c18db06 	lui	t8,0xdb06
 51c:	37180020 	ori	t8,t8,0x20
 520:	ae0f02d0 	sw	t7,720(s0)
 524:	ac580000 	sw	t8,0(v0)
 528:	8fb90050 	lw	t9,80(sp)
 52c:	3c040000 	lui	a0,0x0
 530:	3c0e0000 	lui	t6,0x0
 534:	87280150 	lh	t0,336(t9)
 538:	3c0100ff 	lui	at,0xff
 53c:	3421ffff 	ori	at,at,0xffff
 540:	00084880 	sll	t1,t0,0x2
 544:	00892021 	addu	a0,a0,t1
 548:	8c840000 	lw	a0,0(a0)
 54c:	3c09ffff 	lui	t1,0xffff
 550:	3c08fa00 	lui	t0,0xfa00
 554:	00045900 	sll	t3,a0,0x4
 558:	000b6702 	srl	t4,t3,0x1c
 55c:	000c6880 	sll	t5,t4,0x2
 560:	01cd7021 	addu	t6,t6,t5
 564:	8dce0000 	lw	t6,0(t6)
 568:	00815024 	and	t2,a0,at
 56c:	3c018000 	lui	at,0x8000
 570:	014e7821 	addu	t7,t2,t6
 574:	01e1c021 	addu	t8,t7,at
 578:	ac580004 	sw	t8,4(v0)
 57c:	8e0202d0 	lw	v0,720(s0)
 580:	35080001 	ori	t0,t0,0x1
 584:	35290096 	ori	t1,t1,0x96
 588:	24590008 	addiu	t9,v0,8
 58c:	ae1902d0 	sw	t9,720(s0)
 590:	ac480000 	sw	t0,0(v0)
 594:	ac490004 	sw	t1,4(v0)
 598:	8e0202d0 	lw	v0,720(s0)
 59c:	3c0dff00 	lui	t5,0xff00
 5a0:	35ad00ff 	ori	t5,t5,0xff
 5a4:	244b0008 	addiu	t3,v0,8
 5a8:	ae0b02d0 	sw	t3,720(s0)
 5ac:	3c0cfb00 	lui	t4,0xfb00
 5b0:	ac4c0000 	sw	t4,0(v0)
 5b4:	ac4d0004 	sw	t5,4(v0)
 5b8:	8e0202d0 	lw	v0,720(s0)
 5bc:	3c0eda38 	lui	t6,0xda38
 5c0:	35ce0003 	ori	t6,t6,0x3
 5c4:	244a0008 	addiu	t2,v0,8
 5c8:	ae0a02d0 	sw	t2,720(s0)
 5cc:	ac4e0000 	sw	t6,0(v0)
 5d0:	8faf0054 	lw	t7,84(sp)
 5d4:	3c050000 	lui	a1,0x0
 5d8:	24a5001c 	addiu	a1,a1,28
 5dc:	8de40000 	lw	a0,0(t7)
 5e0:	240601ca 	li	a2,458
 5e4:	0c000000 	jal	0 <BgHidanFirewall_Init>
 5e8:	afa20028 	sw	v0,40(sp)
 5ec:	8fa30028 	lw	v1,40(sp)
 5f0:	3c080000 	lui	t0,0x0
 5f4:	25080000 	addiu	t0,t0,0
 5f8:	ac620004 	sw	v0,4(v1)
 5fc:	8e0202d0 	lw	v0,720(s0)
 600:	3c19de00 	lui	t9,0xde00
 604:	3c060000 	lui	a2,0x0
 608:	24580008 	addiu	t8,v0,8
 60c:	ae1802d0 	sw	t8,720(s0)
 610:	ac480004 	sw	t0,4(v0)
 614:	ac590000 	sw	t9,0(v0)
 618:	8fa90054 	lw	t1,84(sp)
 61c:	24c60038 	addiu	a2,a2,56
 620:	27a40038 	addiu	a0,sp,56
 624:	240701cf 	li	a3,463
 628:	0c000000 	jal	0 <BgHidanFirewall_Init>
 62c:	8d250000 	lw	a1,0(t1)
 630:	8fbf001c 	lw	ra,28(sp)
 634:	8fb00018 	lw	s0,24(sp)
 638:	27bd0050 	addiu	sp,sp,80
 63c:	03e00008 	jr	ra
 640:	00000000 	nop
	...
