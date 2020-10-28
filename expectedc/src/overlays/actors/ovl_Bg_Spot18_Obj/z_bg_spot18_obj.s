
build/src/overlays/actors/ovl_Bg_Spot18_Obj/z_bg_spot18_obj.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808B8910>:
   0:	3c030000 	lui	v1,0x0
   4:	8c630004 	lw	v1,4(v1)
   8:	27bdffe0 	addiu	sp,sp,-32
   c:	afbf0014 	sw	ra,20(sp)
  10:	afa40020 	sw	a0,32(sp)
  14:	10600003 	beqz	v1,24 <func_808B8910+0x24>
  18:	afa50024 	sw	a1,36(sp)
  1c:	10000002 	b	28 <func_808B8910+0x28>
  20:	24020005 	li	v0,5
  24:	24020011 	li	v0,17
  28:	24010011 	li	at,17
  2c:	14410003 	bne	v0,at,3c <func_808B8910+0x3c>
  30:	8faf0020 	lw	t7,32(sp)
  34:	10000013 	b	84 <func_808B8910+0x84>
  38:	24060001 	li	a2,1
  3c:	10600003 	beqz	v1,4c <func_808B8910+0x4c>
  40:	24010005 	li	at,5
  44:	10000002 	b	50 <func_808B8910+0x50>
  48:	24020005 	li	v0,5
  4c:	24020011 	li	v0,17
  50:	14410003 	bne	v0,at,60 <func_808B8910+0x60>
  54:	3c040000 	lui	a0,0x0
  58:	1000000a 	b	84 <func_808B8910+0x84>
  5c:	00003025 	move	a2,zero
  60:	8fae0020 	lw	t6,32(sp)
  64:	3c050000 	lui	a1,0x0
  68:	24a50034 	addiu	a1,a1,52
  6c:	24840000 	addiu	a0,a0,0
  70:	240600b6 	li	a2,182
  74:	0c000000 	jal	0 <func_808B8910>
  78:	85c7001c 	lh	a3,28(t6)
  7c:	1000002f 	b	13c <func_808B8910+0x13c>
  80:	00001025 	move	v0,zero
  84:	85e7001c 	lh	a3,28(t7)
  88:	3c030000 	lui	v1,0x0
  8c:	24010001 	li	at,1
  90:	30f8000f 	andi	t8,a3,0xf
  94:	0018c840 	sll	t9,t8,0x1
  98:	03264021 	addu	t0,t9,a2
  9c:	00681821 	addu	v1,v1,t0
  a0:	90630000 	lbu	v1,0(v1)
  a4:	10600007 	beqz	v1,c4 <func_808B8910+0xc4>
  a8:	00601025 	move	v0,v1
  ac:	10410005 	beq	v0,at,c4 <func_808B8910+0xc4>
  b0:	24010002 	li	at,2
  b4:	10410014 	beq	v0,at,108 <func_808B8910+0x108>
  b8:	3c040000 	lui	a0,0x0
  bc:	10000019 	b	124 <func_808B8910+0x124>
  c0:	3c040000 	lui	a0,0x0
  c4:	1460000e 	bnez	v1,100 <func_808B8910+0x100>
  c8:	3c040000 	lui	a0,0x0
  cc:	2484004c 	addiu	a0,a0,76
  d0:	00e02825 	move	a1,a3
  d4:	0c000000 	jal	0 <func_808B8910>
  d8:	afa6001c 	sw	a2,28(sp)
  dc:	8fa90020 	lw	t1,32(sp)
  e0:	8fa6001c 	lw	a2,28(sp)
  e4:	3c030000 	lui	v1,0x0
  e8:	852a001c 	lh	t2,28(t1)
  ec:	314b000f 	andi	t3,t2,0xf
  f0:	000b6040 	sll	t4,t3,0x1
  f4:	01866821 	addu	t5,t4,a2
  f8:	006d1821 	addu	v1,v1,t5
  fc:	90630000 	lbu	v1,0(v1)
 100:	1000000e 	b	13c <func_808B8910+0x13c>
 104:	00601025 	move	v0,v1
 108:	3c050000 	lui	a1,0x0
 10c:	24a500a8 	addiu	a1,a1,168
 110:	24840068 	addiu	a0,a0,104
 114:	0c000000 	jal	0 <func_808B8910>
 118:	240600ca 	li	a2,202
 11c:	10000007 	b	13c <func_808B8910+0x13c>
 120:	00001025 	move	v0,zero
 124:	3c050000 	lui	a1,0x0
 128:	24a500f4 	addiu	a1,a1,244
 12c:	248400c0 	addiu	a0,a0,192
 130:	0c000000 	jal	0 <func_808B8910>
 134:	240600d2 	li	a2,210
 138:	00001025 	move	v0,zero
 13c:	8fbf0014 	lw	ra,20(sp)
 140:	27bd0020 	addiu	sp,sp,32
 144:	03e00008 	jr	ra
 148:	00000000 	nop

0000014c <func_808B8A5C>:
 14c:	27bdffe8 	addiu	sp,sp,-24
 150:	afbf0014 	sw	ra,20(sp)
 154:	afa5001c 	sw	a1,28(sp)
 158:	848e001c 	lh	t6,28(a0)
 15c:	3c050000 	lui	a1,0x0
 160:	31cf000f 	andi	t7,t6,0xf
 164:	000fc080 	sll	t8,t7,0x2
 168:	00b82821 	addu	a1,a1,t8
 16c:	0c000000 	jal	0 <func_808B8910>
 170:	8ca50000 	lw	a1,0(a1)
 174:	8fbf0014 	lw	ra,20(sp)
 178:	27bd0018 	addiu	sp,sp,24
 17c:	24020001 	li	v0,1
 180:	03e00008 	jr	ra
 184:	00000000 	nop

00000188 <func_808B8A98>:
 188:	27bdffd8 	addiu	sp,sp,-40
 18c:	afbf0014 	sw	ra,20(sp)
 190:	afa5002c 	sw	a1,44(sp)
 194:	afa40028 	sw	a0,40(sp)
 198:	afa0001c 	sw	zero,28(sp)
 19c:	0c000000 	jal	0 <func_808B8910>
 1a0:	00002825 	move	a1,zero
 1a4:	8fae0028 	lw	t6,40(sp)
 1a8:	3c040000 	lui	a0,0x0
 1ac:	27a5001c 	addiu	a1,sp,28
 1b0:	85cf001c 	lh	t7,28(t6)
 1b4:	31f8000f 	andi	t8,t7,0xf
 1b8:	0018c880 	sll	t9,t8,0x2
 1bc:	00992021 	addu	a0,a0,t9
 1c0:	0c000000 	jal	0 <func_808B8910>
 1c4:	8c840000 	lw	a0,0(a0)
 1c8:	8fa4002c 	lw	a0,44(sp)
 1cc:	8fa60028 	lw	a2,40(sp)
 1d0:	8fa7001c 	lw	a3,28(sp)
 1d4:	0c000000 	jal	0 <func_808B8910>
 1d8:	24850810 	addiu	a1,a0,2064
 1dc:	8fa80028 	lw	t0,40(sp)
 1e0:	ad02014c 	sw	v0,332(t0)
 1e4:	8fbf0014 	lw	ra,20(sp)
 1e8:	27bd0028 	addiu	sp,sp,40
 1ec:	24020001 	li	v0,1
 1f0:	03e00008 	jr	ra
 1f4:	00000000 	nop

000001f8 <func_808B8B08>:
 1f8:	afa50004 	sw	a1,4(sp)
 1fc:	848f001c 	lh	t7,28(a0)
 200:	3c080000 	lui	t0,0x0
 204:	8c8e0004 	lw	t6,4(a0)
 208:	31f8000f 	andi	t8,t7,0xf
 20c:	0018c880 	sll	t9,t8,0x2
 210:	01194021 	addu	t0,t0,t9
 214:	8d080000 	lw	t0,0(t0)
 218:	24020001 	li	v0,1
 21c:	01c84825 	or	t1,t6,t0
 220:	03e00008 	jr	ra
 224:	ac890004 	sw	t1,4(a0)

00000228 <func_808B8B38>:
 228:	27bdffd8 	addiu	sp,sp,-40
 22c:	afb30020 	sw	s3,32(sp)
 230:	afb00014 	sw	s0,20(sp)
 234:	afb2001c 	sw	s2,28(sp)
 238:	afb10018 	sw	s1,24(sp)
 23c:	3c100000 	lui	s0,0x0
 240:	3c130000 	lui	s3,0x0
 244:	00808825 	move	s1,a0
 248:	00a09025 	move	s2,a1
 24c:	afbf0024 	sw	ra,36(sp)
 250:	26730010 	addiu	s3,s3,16
 254:	26100000 	addiu	s0,s0,0
 258:	8e190000 	lw	t9,0(s0)
 25c:	02202025 	move	a0,s1
 260:	02402825 	move	a1,s2
 264:	0320f809 	jalr	t9
 268:	00000000 	nop
 26c:	14400003 	bnez	v0,27c <func_808B8B38+0x54>
 270:	26100004 	addiu	s0,s0,4
 274:	10000004 	b	288 <func_808B8B38+0x60>
 278:	00001025 	move	v0,zero
 27c:	5613fff7 	bnel	s0,s3,25c <func_808B8B38+0x34>
 280:	8e190000 	lw	t9,0(s0)
 284:	24020001 	li	v0,1
 288:	8fbf0024 	lw	ra,36(sp)
 28c:	8fb00014 	lw	s0,20(sp)
 290:	8fb10018 	lw	s1,24(sp)
 294:	8fb2001c 	lw	s2,28(sp)
 298:	8fb30020 	lw	s3,32(sp)
 29c:	03e00008 	jr	ra
 2a0:	27bd0028 	addiu	sp,sp,40

000002a4 <func_808B8BB4>:
 2a4:	27bdffe0 	addiu	sp,sp,-32
 2a8:	afa50024 	sw	a1,36(sp)
 2ac:	afbf001c 	sw	ra,28(sp)
 2b0:	afb00018 	sw	s0,24(sp)
 2b4:	3c050000 	lui	a1,0x0
 2b8:	00808025 	move	s0,a0
 2bc:	0c000000 	jal	0 <func_808B8910>
 2c0:	24a5004c 	addiu	a1,a1,76
 2c4:	3c0e0000 	lui	t6,0x0
 2c8:	8dce0004 	lw	t6,4(t6)
 2cc:	24010005 	li	at,5
 2d0:	24020011 	li	v0,17
 2d4:	11c00003 	beqz	t6,2e4 <func_808B8BB4+0x40>
 2d8:	00000000 	nop
 2dc:	10000001 	b	2e4 <func_808B8BB4+0x40>
 2e0:	24020005 	li	v0,5
 2e4:	54410006 	bnel	v0,at,300 <func_808B8BB4+0x5c>
 2e8:	8605001c 	lh	a1,28(s0)
 2ec:	0c000000 	jal	0 <func_808B8910>
 2f0:	02002025 	move	a0,s0
 2f4:	1000001e 	b	370 <func_808B8BB4+0xcc>
 2f8:	8fbf001c 	lw	ra,28(sp)
 2fc:	8605001c 	lh	a1,28(s0)
 300:	8fa40024 	lw	a0,36(sp)
 304:	00052a03 	sra	a1,a1,0x8
 308:	0c000000 	jal	0 <func_808B8910>
 30c:	30a5003f 	andi	a1,a1,0x3f
 310:	10400014 	beqz	v0,364 <func_808B8BB4+0xc0>
 314:	00000000 	nop
 318:	0c000000 	jal	0 <func_808B8910>
 31c:	02002025 	move	a0,s0
 320:	0c000000 	jal	0 <func_808B8910>
 324:	86040032 	lh	a0,50(s0)
 328:	3c0142a0 	lui	at,0x42a0
 32c:	44812000 	mtc1	at,$f4
 330:	c6080008 	lwc1	$f8,8(s0)
 334:	86040032 	lh	a0,50(s0)
 338:	46040182 	mul.s	$f6,$f0,$f4
 33c:	46083280 	add.s	$f10,$f6,$f8
 340:	0c000000 	jal	0 <func_808B8910>
 344:	e60a0024 	swc1	$f10,36(s0)
 348:	3c0142a0 	lui	at,0x42a0
 34c:	44818000 	mtc1	at,$f16
 350:	c6040010 	lwc1	$f4,16(s0)
 354:	46100482 	mul.s	$f18,$f0,$f16
 358:	46049180 	add.s	$f6,$f18,$f4
 35c:	10000003 	b	36c <func_808B8BB4+0xc8>
 360:	e606002c 	swc1	$f6,44(s0)
 364:	0c000000 	jal	0 <func_808B8910>
 368:	02002025 	move	a0,s0
 36c:	8fbf001c 	lw	ra,28(sp)
 370:	8fb00018 	lw	s0,24(sp)
 374:	27bd0020 	addiu	sp,sp,32
 378:	03e00008 	jr	ra
 37c:	24020001 	li	v0,1

00000380 <func_808B8C90>:
 380:	27bdffe8 	addiu	sp,sp,-24
 384:	afa5001c 	sw	a1,28(sp)
 388:	afbf0014 	sw	ra,20(sp)
 38c:	3c050000 	lui	a1,0x0
 390:	afa40018 	sw	a0,24(sp)
 394:	0c000000 	jal	0 <func_808B8910>
 398:	24a50060 	addiu	a1,a1,96
 39c:	0c000000 	jal	0 <func_808B8910>
 3a0:	8fa40018 	lw	a0,24(sp)
 3a4:	8fbf0014 	lw	ra,20(sp)
 3a8:	27bd0018 	addiu	sp,sp,24
 3ac:	24020001 	li	v0,1
 3b0:	03e00008 	jr	ra
 3b4:	00000000 	nop

000003b8 <func_808B8CC8>:
 3b8:	27bdffe8 	addiu	sp,sp,-24
 3bc:	afbf0014 	sw	ra,20(sp)
 3c0:	848e001c 	lh	t6,28(a0)
 3c4:	3c020000 	lui	v0,0x0
 3c8:	31cf000f 	andi	t7,t6,0xf
 3cc:	000fc080 	sll	t8,t7,0x2
 3d0:	00581021 	addu	v0,v0,t8
 3d4:	8c420000 	lw	v0,0(v0)
 3d8:	50400008 	beqzl	v0,3fc <func_808B8CC8+0x44>
 3dc:	24020001 	li	v0,1
 3e0:	0040f809 	jalr	v0
 3e4:	00000000 	nop
 3e8:	54400004 	bnezl	v0,3fc <func_808B8CC8+0x44>
 3ec:	24020001 	li	v0,1
 3f0:	10000002 	b	3fc <func_808B8CC8+0x44>
 3f4:	00001025 	move	v0,zero
 3f8:	24020001 	li	v0,1
 3fc:	8fbf0014 	lw	ra,20(sp)
 400:	27bd0018 	addiu	sp,sp,24
 404:	03e00008 	jr	ra
 408:	00000000 	nop

0000040c <BgSpot18Obj_Init>:
 40c:	27bdffe0 	addiu	sp,sp,-32
 410:	afb00018 	sw	s0,24(sp)
 414:	00808025 	move	s0,a0
 418:	afbf001c 	sw	ra,28(sp)
 41c:	afa50024 	sw	a1,36(sp)
 420:	3c040000 	lui	a0,0x0
 424:	2484010c 	addiu	a0,a0,268
 428:	0c000000 	jal	0 <func_808B8910>
 42c:	8605001c 	lh	a1,28(s0)
 430:	02002025 	move	a0,s0
 434:	0c000000 	jal	0 <func_808B8910>
 438:	8fa50024 	lw	a1,36(sp)
 43c:	14400005 	bnez	v0,454 <BgSpot18Obj_Init+0x48>
 440:	02002025 	move	a0,s0
 444:	0c000000 	jal	0 <func_808B8910>
 448:	02002025 	move	a0,s0
 44c:	10000008 	b	470 <BgSpot18Obj_Init+0x64>
 450:	8fbf001c 	lw	ra,28(sp)
 454:	0c000000 	jal	0 <func_808B8910>
 458:	8fa50024 	lw	a1,36(sp)
 45c:	54400004 	bnezl	v0,470 <BgSpot18Obj_Init+0x64>
 460:	8fbf001c 	lw	ra,28(sp)
 464:	0c000000 	jal	0 <func_808B8910>
 468:	02002025 	move	a0,s0
 46c:	8fbf001c 	lw	ra,28(sp)
 470:	8fb00018 	lw	s0,24(sp)
 474:	27bd0020 	addiu	sp,sp,32
 478:	03e00008 	jr	ra
 47c:	00000000 	nop

00000480 <BgSpot18Obj_Destroy>:
 480:	27bdffe8 	addiu	sp,sp,-24
 484:	afa40018 	sw	a0,24(sp)
 488:	8fae0018 	lw	t6,24(sp)
 48c:	afbf0014 	sw	ra,20(sp)
 490:	00a02025 	move	a0,a1
 494:	24a50810 	addiu	a1,a1,2064
 498:	0c000000 	jal	0 <func_808B8910>
 49c:	8dc6014c 	lw	a2,332(t6)
 4a0:	8fbf0014 	lw	ra,20(sp)
 4a4:	27bd0018 	addiu	sp,sp,24
 4a8:	03e00008 	jr	ra
 4ac:	00000000 	nop

000004b0 <func_808B8DC0>:
 4b0:	3c0e0000 	lui	t6,0x0
 4b4:	25ce0000 	addiu	t6,t6,0
 4b8:	03e00008 	jr	ra
 4bc:	ac8e0164 	sw	t6,356(a0)

000004c0 <func_808B8DD0>:
 4c0:	afa40000 	sw	a0,0(sp)
 4c4:	03e00008 	jr	ra
 4c8:	afa50004 	sw	a1,4(sp)

000004cc <func_808B8DDC>:
 4cc:	27bdffe0 	addiu	sp,sp,-32
 4d0:	44802000 	mtc1	zero,$f4
 4d4:	afa50024 	sw	a1,36(sp)
 4d8:	00802825 	move	a1,a0
 4dc:	afbf001c 	sw	ra,28(sp)
 4e0:	afa40020 	sw	a0,32(sp)
 4e4:	240e001c 	li	t6,28
 4e8:	afae0014 	sw	t6,20(sp)
 4ec:	8fa40024 	lw	a0,36(sp)
 4f0:	3c0641a0 	lui	a2,0x41a0
 4f4:	3c074238 	lui	a3,0x4238
 4f8:	0c000000 	jal	0 <func_808B8910>
 4fc:	e7a40010 	swc1	$f4,16(sp)
 500:	8fbf001c 	lw	ra,28(sp)
 504:	27bd0020 	addiu	sp,sp,32
 508:	03e00008 	jr	ra
 50c:	00000000 	nop

00000510 <func_808B8E20>:
 510:	c4800150 	lwc1	$f0,336(a0)
 514:	3c010000 	lui	at,0x0
 518:	c4240130 	lwc1	$f4,304(at)
 51c:	46000005 	abs.s	$f0,$f0
 520:	8ca21c44 	lw	v0,7236(a1)
 524:	4600203c 	c.lt.s	$f4,$f0
 528:	00000000 	nop
 52c:	45000007 	bc1f	54c <func_808B8E20+0x3c>
 530:	00000000 	nop
 534:	44803000 	mtc1	zero,$f6
 538:	2401ffef 	li	at,-17
 53c:	e4860150 	swc1	$f6,336(a0)
 540:	8c4e0680 	lw	t6,1664(v0)
 544:	01c17824 	and	t7,t6,at
 548:	ac4f0680 	sw	t7,1664(v0)
 54c:	03e00008 	jr	ra
 550:	00000000 	nop

00000554 <func_808B8E64>:
 554:	3c0f0000 	lui	t7,0x0
 558:	240e0014 	li	t6,20
 55c:	25ef0000 	addiu	t7,t7,0
 560:	a48e0168 	sh	t6,360(a0)
 564:	03e00008 	jr	ra
 568:	ac8f0164 	sw	t7,356(a0)

0000056c <func_808B8E7C>:
 56c:	27bdffe8 	addiu	sp,sp,-24
 570:	afbf0014 	sw	ra,20(sp)
 574:	afa5001c 	sw	a1,28(sp)
 578:	3c010000 	lui	at,0x0
 57c:	c4260134 	lwc1	$f6,308(at)
 580:	c4840150 	lwc1	$f4,336(a0)
 584:	240f0014 	li	t7,20
 588:	4606203c 	c.lt.s	$f4,$f6
 58c:	00000000 	nop
 590:	45020009 	bc1fl	5b8 <func_808B8E7C+0x4c>
 594:	a48f0168 	sh	t7,360(a0)
 598:	848e0168 	lh	t6,360(a0)
 59c:	1dc00006 	bgtz	t6,5b8 <func_808B8E7C+0x4c>
 5a0:	00000000 	nop
 5a4:	0c000000 	jal	0 <func_808B8910>
 5a8:	afa40018 	sw	a0,24(sp)
 5ac:	10000002 	b	5b8 <func_808B8E7C+0x4c>
 5b0:	8fa40018 	lw	a0,24(sp)
 5b4:	a48f0168 	sh	t7,360(a0)
 5b8:	0c000000 	jal	0 <func_808B8910>
 5bc:	8fa5001c 	lw	a1,28(sp)
 5c0:	8fbf0014 	lw	ra,20(sp)
 5c4:	27bd0018 	addiu	sp,sp,24
 5c8:	03e00008 	jr	ra
 5cc:	00000000 	nop

000005d0 <func_808B8EE0>:
 5d0:	44800000 	mtc1	zero,$f0
 5d4:	3c0e0000 	lui	t6,0x0
 5d8:	25ce0000 	addiu	t6,t6,0
 5dc:	ac8e0164 	sw	t6,356(a0)
 5e0:	a4800032 	sh	zero,50(a0)
 5e4:	e4800068 	swc1	$f0,104(a0)
 5e8:	e4800064 	swc1	$f0,100(a0)
 5ec:	e4800060 	swc1	$f0,96(a0)
 5f0:	03e00008 	jr	ra
 5f4:	e480005c 	swc1	$f0,92(a0)

000005f8 <func_808B8F08>:
 5f8:	27bdffd8 	addiu	sp,sp,-40
 5fc:	afbf001c 	sw	ra,28(sp)
 600:	afb00018 	sw	s0,24(sp)
 604:	afa5002c 	sw	a1,44(sp)
 608:	8caf1c44 	lw	t7,7236(a1)
 60c:	00808025 	move	s0,a0
 610:	3c053f99 	lui	a1,0x3f99
 614:	3c063dcc 	lui	a2,0x3dcc
 618:	34c6cccd 	ori	a2,a2,0xcccd
 61c:	34a5999a 	ori	a1,a1,0x999a
 620:	24840068 	addiu	a0,a0,104
 624:	0c000000 	jal	0 <func_808B8910>
 628:	afaf0020 	sw	t7,32(sp)
 62c:	0c000000 	jal	0 <func_808B8910>
 630:	02002025 	move	a0,s0
 634:	02002025 	move	a0,s0
 638:	0c000000 	jal	0 <func_808B8910>
 63c:	8fa5002c 	lw	a1,44(sp)
 640:	c60c0024 	lwc1	$f12,36(s0)
 644:	c60e002c 	lwc1	$f14,44(s0)
 648:	8e060008 	lw	a2,8(s0)
 64c:	0c000000 	jal	0 <func_808B8910>
 650:	8e070010 	lw	a3,16(s0)
 654:	3c0145c8 	lui	at,0x45c8
 658:	44812000 	mtc1	at,$f4
 65c:	02002025 	move	a0,s0
 660:	4600203e 	c.le.s	$f4,$f0
 664:	00000000 	nop
 668:	45000026 	bc1f	704 <func_808B8F08+0x10c>
 66c:	00000000 	nop
 670:	0c000000 	jal	0 <func_808B8910>
 674:	02002025 	move	a0,s0
 678:	0c000000 	jal	0 <func_808B8910>
 67c:	86040032 	lh	a0,50(s0)
 680:	3c0142a0 	lui	at,0x42a0
 684:	44813000 	mtc1	at,$f6
 688:	c60a0008 	lwc1	$f10,8(s0)
 68c:	86040032 	lh	a0,50(s0)
 690:	46060202 	mul.s	$f8,$f0,$f6
 694:	460a4400 	add.s	$f16,$f8,$f10
 698:	0c000000 	jal	0 <func_808B8910>
 69c:	e6100024 	swc1	$f16,36(s0)
 6a0:	3c0142a0 	lui	at,0x42a0
 6a4:	44819000 	mtc1	at,$f18
 6a8:	c6060010 	lwc1	$f6,16(s0)
 6ac:	8fa20020 	lw	v0,32(sp)
 6b0:	46120102 	mul.s	$f4,$f0,$f18
 6b4:	44805000 	mtc1	zero,$f10
 6b8:	2401ffef 	li	at,-17
 6bc:	e60a0150 	swc1	$f10,336(s0)
 6c0:	46062200 	add.s	$f8,$f4,$f6
 6c4:	e608002c 	swc1	$f8,44(s0)
 6c8:	8c580680 	lw	t8,1664(v0)
 6cc:	0301c824 	and	t9,t8,at
 6d0:	ac590680 	sw	t9,1664(v0)
 6d4:	8605001c 	lh	a1,28(s0)
 6d8:	8fa4002c 	lw	a0,44(sp)
 6dc:	00052a03 	sra	a1,a1,0x8
 6e0:	0c000000 	jal	0 <func_808B8910>
 6e4:	30a5003f 	andi	a1,a1,0x3f
 6e8:	0c000000 	jal	0 <func_808B8910>
 6ec:	24044802 	li	a0,18434
 6f0:	02002025 	move	a0,s0
 6f4:	0c000000 	jal	0 <func_808B8910>
 6f8:	24052835 	li	a1,10293
 6fc:	10000004 	b	710 <func_808B8F08+0x118>
 700:	8fbf001c 	lw	ra,28(sp)
 704:	0c000000 	jal	0 <func_808B8910>
 708:	2405200a 	li	a1,8202
 70c:	8fbf001c 	lw	ra,28(sp)
 710:	8fb00018 	lw	s0,24(sp)
 714:	27bd0028 	addiu	sp,sp,40
 718:	03e00008 	jr	ra
 71c:	00000000 	nop

00000720 <func_808B9030>:
 720:	3c0e0000 	lui	t6,0x0
 724:	25ce0000 	addiu	t6,t6,0
 728:	03e00008 	jr	ra
 72c:	ac8e0164 	sw	t6,356(a0)

00000730 <func_808B9040>:
 730:	27bdffe8 	addiu	sp,sp,-24
 734:	afbf0014 	sw	ra,20(sp)
 738:	0c000000 	jal	0 <func_808B8910>
 73c:	00000000 	nop
 740:	8fbf0014 	lw	ra,20(sp)
 744:	27bd0018 	addiu	sp,sp,24
 748:	03e00008 	jr	ra
 74c:	00000000 	nop

00000750 <BgSpot18Obj_Update>:
 750:	27bdffe8 	addiu	sp,sp,-24
 754:	afbf0014 	sw	ra,20(sp)
 758:	84820168 	lh	v0,360(a0)
 75c:	18400002 	blez	v0,768 <BgSpot18Obj_Update+0x18>
 760:	244effff 	addiu	t6,v0,-1
 764:	a48e0168 	sh	t6,360(a0)
 768:	8c990164 	lw	t9,356(a0)
 76c:	0320f809 	jalr	t9
 770:	00000000 	nop
 774:	8fbf0014 	lw	ra,20(sp)
 778:	27bd0018 	addiu	sp,sp,24
 77c:	03e00008 	jr	ra
 780:	00000000 	nop

00000784 <BgSpot18Obj_Draw>:
 784:	27bdffe8 	addiu	sp,sp,-24
 788:	afbf0014 	sw	ra,20(sp)
 78c:	00803825 	move	a3,a0
 790:	84ee001c 	lh	t6,28(a3)
 794:	00a02025 	move	a0,a1
 798:	3c050000 	lui	a1,0x0
 79c:	31cf000f 	andi	t7,t6,0xf
 7a0:	000fc080 	sll	t8,t7,0x2
 7a4:	00b82821 	addu	a1,a1,t8
 7a8:	0c000000 	jal	0 <func_808B8910>
 7ac:	8ca50074 	lw	a1,116(a1)
 7b0:	8fbf0014 	lw	ra,20(sp)
 7b4:	27bd0018 	addiu	sp,sp,24
 7b8:	03e00008 	jr	ra
 7bc:	00000000 	nop
