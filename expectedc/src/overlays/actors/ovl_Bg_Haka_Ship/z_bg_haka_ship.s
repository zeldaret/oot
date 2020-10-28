
build/src/overlays/actors/ovl_Bg_Haka_Ship/z_bg_haka_ship.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHakaShip_Init>:
   0:	27bdffb0 	addiu	sp,sp,-80
   4:	afa50054 	sw	a1,84(sp)
   8:	afbf003c 	sw	ra,60(sp)
   c:	afb00038 	sw	s0,56(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00044 	sw	zero,68(sp)
  1c:	0c000000 	jal	0 <BgHakaShip_Init>
  20:	24a50000 	addiu	a1,a1,0
  24:	02002025 	move	a0,s0
  28:	0c000000 	jal	0 <BgHakaShip_Init>
  2c:	24050001 	li	a1,1
  30:	8619001c 	lh	t9,28(s0)
  34:	860e001c 	lh	t6,28(s0)
  38:	3c040601 	lui	a0,0x601
  3c:	332800ff 	andi	t0,t9,0xff
  40:	a608001c 	sh	t0,28(s0)
  44:	8609001c 	lh	t1,28(s0)
  48:	000ec203 	sra	t8,t6,0x8
  4c:	a2180169 	sb	t8,361(s0)
  50:	1520000b 	bnez	t1,80 <BgHakaShip_Init+0x80>
  54:	2484ed7c 	addiu	a0,a0,-4740
  58:	3c040601 	lui	a0,0x601
  5c:	2484e408 	addiu	a0,a0,-7160
  60:	0c000000 	jal	0 <BgHakaShip_Init>
  64:	27a50044 	addiu	a1,sp,68
  68:	3c0b0000 	lui	t3,0x0
  6c:	240a0008 	li	t2,8
  70:	256b0000 	addiu	t3,t3,0
  74:	a20a0168 	sb	t2,360(s0)
  78:	10000006 	b	94 <BgHakaShip_Init+0x94>
  7c:	ae0b0164 	sw	t3,356(s0)
  80:	0c000000 	jal	0 <BgHakaShip_Init>
  84:	27a50044 	addiu	a1,sp,68
  88:	3c0c0000 	lui	t4,0x0
  8c:	258c0000 	addiu	t4,t4,0
  90:	ae0c0164 	sw	t4,356(s0)
  94:	8fa40054 	lw	a0,84(sp)
  98:	02003025 	move	a2,s0
  9c:	8fa70044 	lw	a3,68(sp)
  a0:	0c000000 	jal	0 <BgHakaShip_Init>
  a4:	24850810 	addiu	a1,a0,2064
  a8:	860d00b6 	lh	t5,182(s0)
  ac:	860f001c 	lh	t7,28(s0)
  b0:	ae02014c 	sw	v0,332(s0)
  b4:	25aec000 	addiu	t6,t5,-16384
  b8:	a60e0032 	sh	t6,50(s0)
  bc:	15e0001b 	bnez	t7,12c <BgHakaShip_Init+0x12c>
  c0:	a600016a 	sh	zero,362(s0)
  c4:	3c01c120 	lui	at,0xc120
  c8:	44813000 	mtc1	at,$f6
  cc:	c6040024 	lwc1	$f4,36(s0)
  d0:	3c0142a4 	lui	at,0x42a4
  d4:	44818000 	mtc1	at,$f16
  d8:	46062200 	add.s	$f8,$f4,$f6
  dc:	8fa60054 	lw	a2,84(sp)
  e0:	24190001 	li	t9,1
  e4:	02002825 	move	a1,s0
  e8:	e7a80010 	swc1	$f8,16(sp)
  ec:	c60a0028 	lwc1	$f10,40(s0)
  f0:	240700b0 	li	a3,176
  f4:	24c41c24 	addiu	a0,a2,7204
  f8:	46105480 	add.s	$f18,$f10,$f16
  fc:	e7b20014 	swc1	$f18,20(sp)
 100:	c604002c 	lwc1	$f4,44(s0)
 104:	afb90028 	sw	t9,40(sp)
 108:	afa00024 	sw	zero,36(sp)
 10c:	afa00020 	sw	zero,32(sp)
 110:	afa0001c 	sw	zero,28(sp)
 114:	0c000000 	jal	0 <BgHakaShip_Init>
 118:	e7a40018 	swc1	$f4,24(sp)
 11c:	54400004 	bnezl	v0,130 <BgHakaShip_Init+0x130>
 120:	8fbf003c 	lw	ra,60(sp)
 124:	0c000000 	jal	0 <BgHakaShip_Init>
 128:	02002025 	move	a0,s0
 12c:	8fbf003c 	lw	ra,60(sp)
 130:	8fb00038 	lw	s0,56(sp)
 134:	27bd0050 	addiu	sp,sp,80
 138:	03e00008 	jr	ra
 13c:	00000000 	nop

00000140 <BgHakaShip_Destroy>:
 140:	27bdffe8 	addiu	sp,sp,-24
 144:	afa40018 	sw	a0,24(sp)
 148:	8fae0018 	lw	t6,24(sp)
 14c:	afbf0014 	sw	ra,20(sp)
 150:	00a02025 	move	a0,a1
 154:	24a50810 	addiu	a1,a1,2064
 158:	0c000000 	jal	0 <BgHakaShip_Init>
 15c:	8dc6014c 	lw	a2,332(t6)
 160:	8fa40018 	lw	a0,24(sp)
 164:	0c000000 	jal	0 <BgHakaShip_Init>
 168:	2484016c 	addiu	a0,a0,364
 16c:	8fbf0014 	lw	ra,20(sp)
 170:	27bd0018 	addiu	sp,sp,24
 174:	03e00008 	jr	ra
 178:	00000000 	nop

0000017c <func_8087F27C>:
 17c:	afa50004 	sw	a1,4(sp)
 180:	8c820118 	lw	v0,280(a0)
 184:	50400012 	beqzl	v0,1d0 <func_8087F27C+0x54>
 188:	ac800118 	sw	zero,280(a0)
 18c:	8c4e0130 	lw	t6,304(v0)
 190:	3c01c120 	lui	at,0xc120
 194:	51c0000e 	beqzl	t6,1d0 <func_8087F27C+0x54>
 198:	ac800118 	sw	zero,280(a0)
 19c:	c4440024 	lwc1	$f4,36(v0)
 1a0:	44813000 	mtc1	at,$f6
 1a4:	3c0142a4 	lui	at,0x42a4
 1a8:	44818000 	mtc1	at,$f16
 1ac:	46062200 	add.s	$f8,$f4,$f6
 1b0:	e4880024 	swc1	$f8,36(a0)
 1b4:	c44a0028 	lwc1	$f10,40(v0)
 1b8:	46105480 	add.s	$f18,$f10,$f16
 1bc:	e4920028 	swc1	$f18,40(a0)
 1c0:	c444002c 	lwc1	$f4,44(v0)
 1c4:	03e00008 	jr	ra
 1c8:	e484002c 	swc1	$f4,44(a0)
 1cc:	ac800118 	sw	zero,280(a0)
 1d0:	03e00008 	jr	ra
 1d4:	00000000 	nop

000001d8 <func_8087F2D8>:
 1d8:	27bdffe0 	addiu	sp,sp,-32
 1dc:	00803825 	move	a3,a0
 1e0:	afbf001c 	sw	ra,28(sp)
 1e4:	afa50024 	sw	a1,36(sp)
 1e8:	00a02025 	move	a0,a1
 1ec:	90e50169 	lbu	a1,361(a3)
 1f0:	0c000000 	jal	0 <BgHakaShip_Init>
 1f4:	afa70020 	sw	a3,32(sp)
 1f8:	10400016 	beqz	v0,254 <func_8087F2D8+0x7c>
 1fc:	8fa70020 	lw	a3,32(sp)
 200:	90e20168 	lbu	v0,360(a3)
 204:	240f0082 	li	t7,130
 208:	3c180000 	lui	t8,0x0
 20c:	10400003 	beqz	v0,21c <func_8087F2D8+0x44>
 210:	244effff 	addiu	t6,v0,-1
 214:	a0ee0168 	sb	t6,360(a3)
 218:	31c200ff 	andi	v0,t6,0xff
 21c:	1440000d 	bnez	v0,254 <func_8087F2D8+0x7c>
 220:	27180000 	addiu	t8,t8,0
 224:	a0ef0168 	sb	t7,360(a3)
 228:	acf80164 	sw	t8,356(a3)
 22c:	3c040000 	lui	a0,0x0
 230:	24840000 	addiu	a0,a0,0
 234:	0c000000 	jal	0 <BgHakaShip_Init>
 238:	afa70020 	sw	a3,32(sp)
 23c:	8fa70020 	lw	a3,32(sp)
 240:	8fa40024 	lw	a0,36(sp)
 244:	24050d3e 	li	a1,3390
 248:	240603e7 	li	a2,999
 24c:	0c000000 	jal	0 <BgHakaShip_Init>
 250:	afa00010 	sw	zero,16(sp)
 254:	8fbf001c 	lw	ra,28(sp)
 258:	27bd0020 	addiu	sp,sp,32
 25c:	03e00008 	jr	ra
 260:	00000000 	nop

00000264 <func_8087F364>:
 264:	27bdffe8 	addiu	sp,sp,-24
 268:	afbf0014 	sw	ra,20(sp)
 26c:	afa5001c 	sw	a1,28(sp)
 270:	90820168 	lbu	v0,360(a0)
 274:	3c014f80 	lui	at,0x4f80
 278:	10400003 	beqz	v0,288 <func_8087F364+0x24>
 27c:	244effff 	addiu	t6,v0,-1
 280:	a08e0168 	sb	t6,360(a0)
 284:	31c200ff 	andi	v0,t6,0xff
 288:	44822000 	mtc1	v0,$f4
 28c:	04410004 	bgez	v0,2a0 <func_8087F364+0x3c>
 290:	468021a0 	cvt.s.w	$f6,$f4
 294:	44814000 	mtc1	at,$f8
 298:	00000000 	nop
 29c:	46083180 	add.s	$f6,$f6,$f8
 2a0:	3c010000 	lui	at,0x0
 2a4:	c42a0000 	lwc1	$f10,0(at)
 2a8:	afa40018 	sw	a0,24(sp)
 2ac:	460a3302 	mul.s	$f12,$f6,$f10
 2b0:	0c000000 	jal	0 <BgHakaShip_Init>
 2b4:	00000000 	nop
 2b8:	3c0145c0 	lui	at,0x45c0
 2bc:	44818000 	mtc1	at,$f16
 2c0:	8fa40018 	lw	a0,24(sp)
 2c4:	3c090000 	lui	t1,0x0
 2c8:	46100482 	mul.s	$f18,$f0,$f16
 2cc:	90990168 	lbu	t9,360(a0)
 2d0:	24080032 	li	t0,50
 2d4:	25290000 	addiu	t1,t1,0
 2d8:	4600910d 	trunc.w.s	$f4,$f18
 2dc:	44182000 	mfc1	t8,$f4
 2e0:	17200003 	bnez	t9,2f0 <func_8087F364+0x8c>
 2e4:	a498016a 	sh	t8,362(a0)
 2e8:	a0880168 	sb	t0,360(a0)
 2ec:	ac890164 	sw	t1,356(a0)
 2f0:	8fbf0014 	lw	ra,20(sp)
 2f4:	27bd0018 	addiu	sp,sp,24
 2f8:	03e00008 	jr	ra
 2fc:	00000000 	nop

00000300 <func_8087F400>:
 300:	27bdffe0 	addiu	sp,sp,-32
 304:	afbf001c 	sw	ra,28(sp)
 308:	afb00018 	sw	s0,24(sp)
 30c:	afa50024 	sw	a1,36(sp)
 310:	90820168 	lbu	v0,360(a0)
 314:	00808025 	move	s0,a0
 318:	240f0032 	li	t7,50
 31c:	10400003 	beqz	v0,32c <func_8087F400+0x2c>
 320:	244effff 	addiu	t6,v0,-1
 324:	a08e0168 	sb	t6,360(a0)
 328:	31c200ff 	andi	v0,t6,0xff
 32c:	14400003 	bnez	v0,33c <func_8087F400+0x3c>
 330:	3c014f80 	lui	at,0x4f80
 334:	a20f0168 	sb	t7,360(s0)
 338:	31e200ff 	andi	v0,t7,0xff
 33c:	44822000 	mtc1	v0,$f4
 340:	04410004 	bgez	v0,354 <func_8087F400+0x54>
 344:	468021a0 	cvt.s.w	$f6,$f4
 348:	44814000 	mtc1	at,$f8
 34c:	00000000 	nop
 350:	46083180 	add.s	$f6,$f6,$f8
 354:	3c010000 	lui	at,0x0
 358:	c42a0000 	lwc1	$f10,0(at)
 35c:	460a3302 	mul.s	$f12,$f6,$f10
 360:	0c000000 	jal	0 <BgHakaShip_Init>
 364:	00000000 	nop
 368:	3c010000 	lui	at,0x0
 36c:	c42e0000 	lwc1	$f14,0(at)
 370:	3c014248 	lui	at,0x4248
 374:	44818000 	mtc1	at,$f16
 378:	c60c0008 	lwc1	$f12,8(s0)
 37c:	c6060024 	lwc1	$f6,36(s0)
 380:	46100482 	mul.s	$f18,$f0,$f16
 384:	c604000c 	lwc1	$f4,12(s0)
 388:	46066081 	sub.s	$f2,$f12,$f6
 38c:	3c010000 	lui	at,0x0
 390:	4602703c 	c.lt.s	$f14,$f2
 394:	46049200 	add.s	$f8,$f18,$f4
 398:	45000005 	bc1f	3b0 <func_8087F400+0xb0>
 39c:	e6080028 	swc1	$f8,40(s0)
 3a0:	460e6281 	sub.s	$f10,$f12,$f14
 3a4:	44808000 	mtc1	zero,$f16
 3a8:	e60a0024 	swc1	$f10,36(s0)
 3ac:	e6100068 	swc1	$f16,104(s0)
 3b0:	c4320000 	lwc1	$f18,0(at)
 3b4:	4602903c 	c.lt.s	$f18,$f2
 3b8:	00000000 	nop
 3bc:	45020011 	bc1fl	404 <func_8087F400+0x104>
 3c0:	3c063e4c 	lui	a2,0x3e4c
 3c4:	0c000000 	jal	0 <BgHakaShip_Init>
 3c8:	8fa40024 	lw	a0,36(sp)
 3cc:	1440000c 	bnez	v0,400 <func_8087F400+0x100>
 3d0:	24180028 	li	t8,40
 3d4:	44802000 	mtc1	zero,$f4
 3d8:	a2180168 	sb	t8,360(s0)
 3dc:	24055071 	li	a1,20593
 3e0:	e6040068 	swc1	$f4,104(s0)
 3e4:	8fa40024 	lw	a0,36(sp)
 3e8:	0c000000 	jal	0 <BgHakaShip_Init>
 3ec:	00003025 	move	a2,zero
 3f0:	3c190000 	lui	t9,0x0
 3f4:	27390000 	addiu	t9,t9,0
 3f8:	10000006 	b	414 <func_8087F400+0x114>
 3fc:	ae190164 	sw	t9,356(s0)
 400:	3c063e4c 	lui	a2,0x3e4c
 404:	34c6cccd 	ori	a2,a2,0xcccd
 408:	26040068 	addiu	a0,s0,104
 40c:	0c000000 	jal	0 <BgHakaShip_Init>
 410:	3c054080 	lui	a1,0x4080
 414:	8e02011c 	lw	v0,284(s0)
 418:	50400011 	beqzl	v0,460 <func_8087F400+0x160>
 41c:	ae00011c 	sw	zero,284(s0)
 420:	8c480130 	lw	t0,304(v0)
 424:	3c010000 	lui	at,0x0
 428:	5100000d 	beqzl	t0,460 <func_8087F400+0x160>
 42c:	ae00011c 	sw	zero,284(s0)
 430:	844900b8 	lh	t1,184(v0)
 434:	c4280000 	lwc1	$f8,0(at)
 438:	c6060068 	lwc1	$f6,104(s0)
 43c:	44898000 	mtc1	t1,$f16
 440:	46064282 	mul.s	$f10,$f8,$f6
 444:	468084a0 	cvt.s.w	$f18,$f16
 448:	460a9100 	add.s	$f4,$f18,$f10
 44c:	4600220d 	trunc.w.s	$f8,$f4
 450:	440b4000 	mfc1	t3,$f8
 454:	10000002 	b	460 <func_8087F400+0x160>
 458:	a44b00b8 	sh	t3,184(v0)
 45c:	ae00011c 	sw	zero,284(s0)
 460:	920c0168 	lbu	t4,360(s0)
 464:	3c014f80 	lui	at,0x4f80
 468:	448c3000 	mtc1	t4,$f6
 46c:	05810004 	bgez	t4,480 <func_8087F400+0x180>
 470:	46803420 	cvt.s.w	$f16,$f6
 474:	44819000 	mtc1	at,$f18
 478:	00000000 	nop
 47c:	46128400 	add.s	$f16,$f16,$f18
 480:	3c010000 	lui	at,0x0
 484:	c42a0000 	lwc1	$f10,0(at)
 488:	460a8302 	mul.s	$f12,$f16,$f10
 48c:	0c000000 	jal	0 <BgHakaShip_Init>
 490:	00000000 	nop
 494:	3c0145c0 	lui	at,0x45c0
 498:	44812000 	mtc1	at,$f4
 49c:	00000000 	nop
 4a0:	46040202 	mul.s	$f8,$f0,$f4
 4a4:	4600418d 	trunc.w.s	$f6,$f8
 4a8:	440e3000 	mfc1	t6,$f6
 4ac:	00000000 	nop
 4b0:	a60e016a 	sh	t6,362(s0)
 4b4:	8fbf001c 	lw	ra,28(sp)
 4b8:	8fb00018 	lw	s0,24(sp)
 4bc:	27bd0020 	addiu	sp,sp,32
 4c0:	03e00008 	jr	ra
 4c4:	00000000 	nop

000004c8 <func_8087F5C8>:
 4c8:	27bdffe8 	addiu	sp,sp,-24
 4cc:	afbf0014 	sw	ra,20(sp)
 4d0:	afa5001c 	sw	a1,28(sp)
 4d4:	90820168 	lbu	v0,360(a0)
 4d8:	00803825 	move	a3,a0
 4dc:	00002825 	move	a1,zero
 4e0:	10400004 	beqz	v0,4f4 <func_8087F5C8+0x2c>
 4e4:	24060080 	li	a2,128
 4e8:	244effff 	addiu	t6,v0,-1
 4ec:	a08e0168 	sb	t6,360(a0)
 4f0:	31c200ff 	andi	v0,t6,0xff
 4f4:	14400005 	bnez	v0,50c <func_8087F5C8+0x44>
 4f8:	240f0028 	li	t7,40
 4fc:	3c180000 	lui	t8,0x0
 500:	27180000 	addiu	t8,t8,0
 504:	a0ef0168 	sb	t7,360(a3)
 508:	acf80164 	sw	t8,356(a3)
 50c:	0c000000 	jal	0 <BgHakaShip_Init>
 510:	24e4016a 	addiu	a0,a3,362
 514:	8fbf0014 	lw	ra,20(sp)
 518:	27bd0018 	addiu	sp,sp,24
 51c:	03e00008 	jr	ra
 520:	00000000 	nop

00000524 <func_8087F624>:
 524:	27bdffe8 	addiu	sp,sp,-24
 528:	afbf0014 	sw	ra,20(sp)
 52c:	afa5001c 	sw	a1,28(sp)
 530:	90820168 	lbu	v0,360(a0)
 534:	3c01bf80 	lui	at,0xbf80
 538:	3c080000 	lui	t0,0x0
 53c:	10400005 	beqz	v0,554 <func_8087F624+0x30>
 540:	00401825 	move	v1,v0
 544:	244effff 	addiu	t6,v0,-1
 548:	31c200ff 	andi	v0,t6,0xff
 54c:	00401825 	move	v1,v0
 550:	a08e0168 	sb	t6,360(a0)
 554:	04610004 	bgez	v1,568 <func_8087F624+0x44>
 558:	306f0003 	andi	t7,v1,0x3
 55c:	11e00002 	beqz	t7,568 <func_8087F624+0x44>
 560:	00000000 	nop
 564:	25effffc 	addiu	t7,t7,-4
 568:	000fc080 	sll	t8,t7,0x2
 56c:	030fc023 	subu	t8,t8,t7
 570:	2719fffa 	addiu	t9,t8,-6
 574:	44992000 	mtc1	t9,$f4
 578:	c488000c 	lwc1	$f8,12(a0)
 57c:	468021a0 	cvt.s.w	$f6,$f4
 580:	46083280 	add.s	$f10,$f6,$f8
 584:	14400005 	bnez	v0,59c <func_8087F624+0x78>
 588:	e48a0028 	swc1	$f10,40(a0)
 58c:	44818000 	mtc1	at,$f16
 590:	25080000 	addiu	t0,t0,0
 594:	ac880164 	sw	t0,356(a0)
 598:	e490006c 	swc1	$f16,108(a0)
 59c:	0c000000 	jal	0 <BgHakaShip_Init>
 5a0:	2405205c 	li	a1,8284
 5a4:	8fbf0014 	lw	ra,20(sp)
 5a8:	27bd0018 	addiu	sp,sp,24
 5ac:	03e00008 	jr	ra
 5b0:	00000000 	nop

000005b4 <func_8087F6B4>:
 5b4:	27bdffe8 	addiu	sp,sp,-24
 5b8:	afbf0014 	sw	ra,20(sp)
 5bc:	afa5001c 	sw	a1,28(sp)
 5c0:	c4880028 	lwc1	$f8,40(a0)
 5c4:	c486000c 	lwc1	$f6,12(a0)
 5c8:	3c0144fa 	lui	at,0x44fa
 5cc:	44812000 	mtc1	at,$f4
 5d0:	46083281 	sub.s	$f10,$f6,$f8
 5d4:	2405205c 	li	a1,8284
 5d8:	460a203c 	c.lt.s	$f4,$f10
 5dc:	00000000 	nop
 5e0:	4500000e 	bc1f	61c <func_8087F6B4+0x68>
 5e4:	00000000 	nop
 5e8:	0c000000 	jal	0 <BgHakaShip_Init>
 5ec:	afa40018 	sw	a0,24(sp)
 5f0:	8fa40018 	lw	a0,24(sp)
 5f4:	8c85011c 	lw	a1,284(a0)
 5f8:	50a0001b 	beqzl	a1,668 <func_8087F6B4+0xb4>
 5fc:	8fbf0014 	lw	ra,20(sp)
 600:	8cae0130 	lw	t6,304(a1)
 604:	51c00018 	beqzl	t6,668 <func_8087F6B4+0xb4>
 608:	8fbf0014 	lw	ra,20(sp)
 60c:	0c000000 	jal	0 <BgHakaShip_Init>
 610:	00a02025 	move	a0,a1
 614:	10000014 	b	668 <func_8087F6B4+0xb4>
 618:	8fbf0014 	lw	ra,20(sp)
 61c:	0c000000 	jal	0 <BgHakaShip_Init>
 620:	afa40018 	sw	a0,24(sp)
 624:	8fa40018 	lw	a0,24(sp)
 628:	3c0143fa 	lui	at,0x43fa
 62c:	44818000 	mtc1	at,$f16
 630:	c492000c 	lwc1	$f18,12(a0)
 634:	c4860028 	lwc1	$f6,40(a0)
 638:	46069201 	sub.s	$f8,$f18,$f6
 63c:	4608803c 	c.lt.s	$f16,$f8
 640:	00000000 	nop
 644:	45020008 	bc1fl	668 <func_8087F6B4+0xb4>
 648:	8fbf0014 	lw	ra,20(sp)
 64c:	0c000000 	jal	0 <BgHakaShip_Init>
 650:	00000000 	nop
 654:	50400004 	beqzl	v0,668 <func_8087F6B4+0xb4>
 658:	8fbf0014 	lw	ra,20(sp)
 65c:	0c000000 	jal	0 <BgHakaShip_Init>
 660:	8fa4001c 	lw	a0,28(sp)
 664:	8fbf0014 	lw	ra,20(sp)
 668:	27bd0018 	addiu	sp,sp,24
 66c:	03e00008 	jr	ra
 670:	00000000 	nop

00000674 <BgHakaShip_Update>:
 674:	27bdffe8 	addiu	sp,sp,-24
 678:	afbf0014 	sw	ra,20(sp)
 67c:	afa40018 	sw	a0,24(sp)
 680:	8c990164 	lw	t9,356(a0)
 684:	0320f809 	jalr	t9
 688:	00000000 	nop
 68c:	8fa40018 	lw	a0,24(sp)
 690:	848e001c 	lh	t6,28(a0)
 694:	55c00004 	bnezl	t6,6a8 <BgHakaShip_Update+0x34>
 698:	8fbf0014 	lw	ra,20(sp)
 69c:	0c000000 	jal	0 <BgHakaShip_Init>
 6a0:	00000000 	nop
 6a4:	8fbf0014 	lw	ra,20(sp)
 6a8:	27bd0018 	addiu	sp,sp,24
 6ac:	03e00008 	jr	ra
 6b0:	00000000 	nop

000006b4 <BgHakaShip_Draw>:
 6b4:	27bdff88 	addiu	sp,sp,-120
 6b8:	afbf001c 	sw	ra,28(sp)
 6bc:	afb00018 	sw	s0,24(sp)
 6c0:	afa40078 	sw	a0,120(sp)
 6c4:	afa5007c 	sw	a1,124(sp)
 6c8:	8ca50000 	lw	a1,0(a1)
 6cc:	3c060000 	lui	a2,0x0
 6d0:	24c60000 	addiu	a2,a2,0
 6d4:	27a4005c 	addiu	a0,sp,92
 6d8:	24070210 	li	a3,528
 6dc:	0c000000 	jal	0 <BgHakaShip_Init>
 6e0:	00a08025 	move	s0,a1
 6e4:	8faf007c 	lw	t7,124(sp)
 6e8:	0c000000 	jal	0 <BgHakaShip_Init>
 6ec:	8de40000 	lw	a0,0(t7)
 6f0:	8fb80078 	lw	t8,120(sp)
 6f4:	3c09da38 	lui	t1,0xda38
 6f8:	3c08da38 	lui	t0,0xda38
 6fc:	8719001c 	lh	t9,28(t8)
 700:	57200065 	bnezl	t9,898 <BgHakaShip_Draw+0x1e4>
 704:	8e0202c0 	lw	v0,704(s0)
 708:	8e0202c0 	lw	v0,704(s0)
 70c:	35290003 	ori	t1,t1,0x3
 710:	3c050000 	lui	a1,0x0
 714:	24480008 	addiu	t0,v0,8
 718:	ae0802c0 	sw	t0,704(s0)
 71c:	ac490000 	sw	t1,0(v0)
 720:	8faa007c 	lw	t2,124(sp)
 724:	24a50000 	addiu	a1,a1,0
 728:	24060216 	li	a2,534
 72c:	8d440000 	lw	a0,0(t2)
 730:	0c000000 	jal	0 <BgHakaShip_Init>
 734:	afa20058 	sw	v0,88(sp)
 738:	8fa30058 	lw	v1,88(sp)
 73c:	3c0d0601 	lui	t5,0x601
 740:	25add330 	addiu	t5,t5,-11472
 744:	ac620004 	sw	v0,4(v1)
 748:	8e0202c0 	lw	v0,704(s0)
 74c:	3c0cde00 	lui	t4,0xde00
 750:	3c010000 	lui	at,0x0
 754:	244b0008 	addiu	t3,v0,8
 758:	ae0b02c0 	sw	t3,704(s0)
 75c:	ac4d0004 	sw	t5,4(v0)
 760:	ac4c0000 	sw	t4,0(v0)
 764:	8fae0078 	lw	t6,120(sp)
 768:	c4280000 	lwc1	$f8,0(at)
 76c:	3c010000 	lui	at,0x0
 770:	85cf016a 	lh	t7,362(t6)
 774:	c42c0000 	lwc1	$f12,0(at)
 778:	3c01441b 	lui	at,0x441b
 77c:	448f2000 	mtc1	t7,$f4
 780:	44817000 	mtc1	at,$f14
 784:	3c06448f 	lui	a2,0x448f
 788:	468021a0 	cvt.s.w	$f6,$f4
 78c:	34c6c000 	ori	a2,a2,0xc000
 790:	24070001 	li	a3,1
 794:	46083282 	mul.s	$f10,$f6,$f8
 798:	0c000000 	jal	0 <BgHakaShip_Init>
 79c:	e7aa0070 	swc1	$f10,112(sp)
 7a0:	c7ac0070 	lwc1	$f12,112(sp)
 7a4:	0c000000 	jal	0 <BgHakaShip_Init>
 7a8:	24050001 	li	a1,1
 7ac:	8e0202c0 	lw	v0,704(s0)
 7b0:	3c19da38 	lui	t9,0xda38
 7b4:	37390003 	ori	t9,t9,0x3
 7b8:	24580008 	addiu	t8,v0,8
 7bc:	ae1802c0 	sw	t8,704(s0)
 7c0:	ac590000 	sw	t9,0(v0)
 7c4:	8fa8007c 	lw	t0,124(sp)
 7c8:	3c050000 	lui	a1,0x0
 7cc:	24a50000 	addiu	a1,a1,0
 7d0:	8d040000 	lw	a0,0(t0)
 7d4:	24060223 	li	a2,547
 7d8:	0c000000 	jal	0 <BgHakaShip_Init>
 7dc:	afa20050 	sw	v0,80(sp)
 7e0:	8fa30050 	lw	v1,80(sp)
 7e4:	3c040600 	lui	a0,0x600
 7e8:	44806000 	mtc1	zero,$f12
 7ec:	ac620004 	sw	v0,4(v1)
 7f0:	8e0202c0 	lw	v0,704(s0)
 7f4:	24845a70 	addiu	a0,a0,23152
 7f8:	3c0ade00 	lui	t2,0xde00
 7fc:	24490008 	addiu	t1,v0,8
 800:	ae0902c0 	sw	t1,704(s0)
 804:	3c06c50f 	lui	a2,0xc50f
 808:	ac440004 	sw	a0,4(v0)
 80c:	ac4a0000 	sw	t2,0(v0)
 810:	afa40028 	sw	a0,40(sp)
 814:	34c6c000 	ori	a2,a2,0xc000
 818:	24070001 	li	a3,1
 81c:	0c000000 	jal	0 <BgHakaShip_Init>
 820:	46006386 	mov.s	$f14,$f12
 824:	c7a00070 	lwc1	$f0,112(sp)
 828:	24050001 	li	a1,1
 82c:	46000300 	add.s	$f12,$f0,$f0
 830:	0c000000 	jal	0 <BgHakaShip_Init>
 834:	46006307 	neg.s	$f12,$f12
 838:	8e0202c0 	lw	v0,704(s0)
 83c:	3c0cda38 	lui	t4,0xda38
 840:	358c0003 	ori	t4,t4,0x3
 844:	244b0008 	addiu	t3,v0,8
 848:	ae0b02c0 	sw	t3,704(s0)
 84c:	ac4c0000 	sw	t4,0(v0)
 850:	8fad007c 	lw	t5,124(sp)
 854:	3c050000 	lui	a1,0x0
 858:	24a50000 	addiu	a1,a1,0
 85c:	8da40000 	lw	a0,0(t5)
 860:	2406022c 	li	a2,556
 864:	0c000000 	jal	0 <BgHakaShip_Init>
 868:	afa20048 	sw	v0,72(sp)
 86c:	8fa30048 	lw	v1,72(sp)
 870:	3c0fde00 	lui	t7,0xde00
 874:	ac620004 	sw	v0,4(v1)
 878:	8e0202c0 	lw	v0,704(s0)
 87c:	244e0008 	addiu	t6,v0,8
 880:	ae0e02c0 	sw	t6,704(s0)
 884:	ac4f0000 	sw	t7,0(v0)
 888:	8fb80028 	lw	t8,40(sp)
 88c:	10000017 	b	8ec <BgHakaShip_Draw+0x238>
 890:	ac580004 	sw	t8,4(v0)
 894:	8e0202c0 	lw	v0,704(s0)
 898:	35080003 	ori	t0,t0,0x3
 89c:	3c050000 	lui	a1,0x0
 8a0:	24590008 	addiu	t9,v0,8
 8a4:	ae1902c0 	sw	t9,704(s0)
 8a8:	ac480000 	sw	t0,0(v0)
 8ac:	8fa9007c 	lw	t1,124(sp)
 8b0:	24a50000 	addiu	a1,a1,0
 8b4:	24060232 	li	a2,562
 8b8:	8d240000 	lw	a0,0(t1)
 8bc:	0c000000 	jal	0 <BgHakaShip_Init>
 8c0:	afa20040 	sw	v0,64(sp)
 8c4:	8fa30040 	lw	v1,64(sp)
 8c8:	3c0c0601 	lui	t4,0x601
 8cc:	258ce910 	addiu	t4,t4,-5872
 8d0:	ac620004 	sw	v0,4(v1)
 8d4:	8e0202c0 	lw	v0,704(s0)
 8d8:	3c0bde00 	lui	t3,0xde00
 8dc:	244a0008 	addiu	t2,v0,8
 8e0:	ae0a02c0 	sw	t2,704(s0)
 8e4:	ac4c0004 	sw	t4,4(v0)
 8e8:	ac4b0000 	sw	t3,0(v0)
 8ec:	8fad007c 	lw	t5,124(sp)
 8f0:	3c060000 	lui	a2,0x0
 8f4:	24c60000 	addiu	a2,a2,0
 8f8:	27a4005c 	addiu	a0,sp,92
 8fc:	24070238 	li	a3,568
 900:	0c000000 	jal	0 <BgHakaShip_Init>
 904:	8da50000 	lw	a1,0(t5)
 908:	8fa30078 	lw	v1,120(sp)
 90c:	3c0e0000 	lui	t6,0x0
 910:	25ce0000 	addiu	t6,t6,0
 914:	8c620164 	lw	v0,356(v1)
 918:	3c0f0000 	lui	t7,0x0
 91c:	25ef0000 	addiu	t7,t7,0
 920:	11c20003 	beq	t6,v0,930 <BgHakaShip_Draw+0x27c>
 924:	3c010000 	lui	at,0x0
 928:	55e20018 	bnel	t7,v0,98c <BgHakaShip_Draw+0x2d8>
 92c:	8fbf001c 	lw	ra,28(sp)
 930:	c4700024 	lwc1	$f16,36(v1)
 934:	c4320000 	lwc1	$f18,0(at)
 938:	3c014278 	lui	at,0x4278
 93c:	44814000 	mtc1	at,$f8
 940:	46128100 	add.s	$f4,$f16,$f18
 944:	8fa4007c 	lw	a0,124(sp)
 948:	3c010001 	lui	at,0x1
 94c:	34211d60 	ori	at,at,0x1d60
 950:	e7a4002c 	swc1	$f4,44(sp)
 954:	c4660028 	lwc1	$f6,40(v1)
 958:	2470016c 	addiu	s0,v1,364
 95c:	02003025 	move	a2,s0
 960:	46083280 	add.s	$f10,$f6,$f8
 964:	27a5002c 	addiu	a1,sp,44
 968:	00812021 	addu	a0,a0,at
 96c:	e7aa0030 	swc1	$f10,48(sp)
 970:	c470002c 	lwc1	$f16,44(v1)
 974:	0c000000 	jal	0 <BgHakaShip_Init>
 978:	e7b00034 	swc1	$f16,52(sp)
 97c:	02002025 	move	a0,s0
 980:	0c000000 	jal	0 <BgHakaShip_Init>
 984:	2405204f 	li	a1,8271
 988:	8fbf001c 	lw	ra,28(sp)
 98c:	8fb00018 	lw	s0,24(sp)
 990:	27bd0078 	addiu	sp,sp,120
 994:	03e00008 	jr	ra
 998:	00000000 	nop
 99c:	00000000 	nop
