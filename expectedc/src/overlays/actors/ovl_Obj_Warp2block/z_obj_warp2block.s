
build/src/overlays/actors/ovl_Obj_Warp2block/z_obj_warp2block.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80BA1DF0>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afb00030 	sw	s0,48(sp)
   8:	00808025 	move	s0,a0
   c:	afbf0034 	sw	ra,52(sp)
  10:	c6040028 	lwc1	$f4,40(s0)
  14:	8e070024 	lw	a3,36(s0)
  18:	3c080000 	lui	t0,0x0
  1c:	e7a40010 	swc1	$f4,16(sp)
  20:	c606002c 	lwc1	$f6,44(s0)
  24:	afa00020 	sw	zero,32(sp)
  28:	afa0001c 	sw	zero,28(sp)
  2c:	afa00018 	sw	zero,24(sp)
  30:	e7a60014 	swc1	$f6,20(sp)
  34:	860e001c 	lh	t6,28(s0)
  38:	24a41c24 	addiu	a0,a1,7204
  3c:	afa4003c 	sw	a0,60(sp)
  40:	000e7a03 	sra	t7,t6,0x8
  44:	31f80001 	andi	t8,t7,0x1
  48:	0018c880 	sll	t9,t8,0x2
  4c:	0338c823 	subu	t9,t9,t8
  50:	0019c880 	sll	t9,t9,0x2
  54:	01194021 	addu	t0,t0,t9
  58:	85080000 	lh	t0,0(t0)
  5c:	afa50044 	sw	a1,68(sp)
  60:	2406008b 	li	a2,139
  64:	0c000000 	jal	0 <func_80BA1DF0>
  68:	afa80024 	sw	t0,36(sp)
  6c:	8e02011c 	lw	v0,284(s0)
  70:	3c0d0000 	lui	t5,0x0
  74:	8fa4003c 	lw	a0,60(sp)
  78:	c4480028 	lwc1	$f8,40(v0)
  7c:	8c470024 	lw	a3,36(v0)
  80:	8fa50044 	lw	a1,68(sp)
  84:	e7a80010 	swc1	$f8,16(sp)
  88:	c44a002c 	lwc1	$f10,44(v0)
  8c:	afa00020 	sw	zero,32(sp)
  90:	afa0001c 	sw	zero,28(sp)
  94:	afa00018 	sw	zero,24(sp)
  98:	e7aa0014 	swc1	$f10,20(sp)
  9c:	8449001c 	lh	t1,28(v0)
  a0:	2406008b 	li	a2,139
  a4:	00095203 	sra	t2,t1,0x8
  a8:	314b0001 	andi	t3,t2,0x1
  ac:	000b6080 	sll	t4,t3,0x2
  b0:	018b6023 	subu	t4,t4,t3
  b4:	000c6080 	sll	t4,t4,0x2
  b8:	01ac6821 	addu	t5,t5,t4
  bc:	85ad0000 	lh	t5,0(t5)
  c0:	0c000000 	jal	0 <func_80BA1DF0>
  c4:	afad0024 	sw	t5,36(sp)
  c8:	8fbf0034 	lw	ra,52(sp)
  cc:	8fb00030 	lw	s0,48(sp)
  d0:	27bd0040 	addiu	sp,sp,64
  d4:	03e00008 	jr	ra
  d8:	00000000 	nop

000000dc <func_80BA1ECC>:
  dc:	27bdffc8 	addiu	sp,sp,-56
  e0:	afbf0014 	sw	ra,20(sp)
  e4:	afa5003c 	sw	a1,60(sp)
  e8:	0c000000 	jal	0 <func_80BA1DF0>
  ec:	afa40038 	sw	a0,56(sp)
  f0:	10400003 	beqz	v0,100 <func_80BA1ECC+0x24>
  f4:	8fa40038 	lw	a0,56(sp)
  f8:	10000053 	b	248 <func_80BA1ECC+0x16c>
  fc:	00001025 	move	v0,zero
 100:	848f001c 	lh	t7,28(a0)
 104:	3c030000 	lui	v1,0x0
 108:	24630000 	addiu	v1,v1,0
 10c:	000fc2c3 	sra	t8,t7,0xb
 110:	33190007 	andi	t9,t8,0x7
 114:	00194080 	sll	t0,t9,0x2
 118:	00684821 	addu	t1,v1,t0
 11c:	c5240000 	lwc1	$f4,0(t1)
 120:	c4860090 	lwc1	$f6,144(a0)
 124:	8fae003c 	lw	t6,60(sp)
 128:	8c87011c 	lw	a3,284(a0)
 12c:	4604303e 	c.le.s	$f6,$f4
 130:	8dc21c44 	lw	v0,7236(t6)
 134:	27a50020 	addiu	a1,sp,32
 138:	4501000c 	bc1t	16c <func_80BA1ECC+0x90>
 13c:	24460024 	addiu	a2,v0,36
 140:	84ea001c 	lh	t2,28(a3)
 144:	c4ea0090 	lwc1	$f10,144(a3)
 148:	000a5ac3 	sra	t3,t2,0xb
 14c:	316c0007 	andi	t4,t3,0x7
 150:	000c6880 	sll	t5,t4,0x2
 154:	006d7021 	addu	t6,v1,t5
 158:	c5c80000 	lwc1	$f8,0(t6)
 15c:	4608503e 	c.le.s	$f10,$f8
 160:	00000000 	nop
 164:	45000036 	bc1f	240 <func_80BA1ECC+0x164>
 168:	00000000 	nop
 16c:	afa40038 	sw	a0,56(sp)
 170:	afa60018 	sw	a2,24(sp)
 174:	0c000000 	jal	0 <func_80BA1DF0>
 178:	afa70030 	sw	a3,48(sp)
 17c:	8fa40038 	lw	a0,56(sp)
 180:	3c014248 	lui	at,0x4248
 184:	44819000 	mtc1	at,$f18
 188:	c4900050 	lwc1	$f16,80(a0)
 18c:	3c0140c0 	lui	at,0x40c0
 190:	44813000 	mtc1	at,$f6
 194:	46128102 	mul.s	$f4,$f16,$f18
 198:	c7a00020 	lwc1	$f0,32(sp)
 19c:	8fa70030 	lw	a3,48(sp)
 1a0:	8fa60018 	lw	a2,24(sp)
 1a4:	46000005 	abs.s	$f0,$f0
 1a8:	27a50020 	addiu	a1,sp,32
 1ac:	00e02025 	move	a0,a3
 1b0:	46062080 	add.s	$f2,$f4,$f6
 1b4:	4600103c 	c.lt.s	$f2,$f0
 1b8:	c7a00028 	lwc1	$f0,40(sp)
 1bc:	45010008 	bc1t	1e0 <func_80BA1ECC+0x104>
 1c0:	00000000 	nop
 1c4:	46000005 	abs.s	$f0,$f0
 1c8:	4600103c 	c.lt.s	$f2,$f0
 1cc:	00000000 	nop
 1d0:	45010003 	bc1t	1e0 <func_80BA1ECC+0x104>
 1d4:	00000000 	nop
 1d8:	1000001b 	b	248 <func_80BA1ECC+0x16c>
 1dc:	00001025 	move	v0,zero
 1e0:	0c000000 	jal	0 <func_80BA1DF0>
 1e4:	afa70030 	sw	a3,48(sp)
 1e8:	8fa70030 	lw	a3,48(sp)
 1ec:	3c014248 	lui	at,0x4248
 1f0:	44815000 	mtc1	at,$f10
 1f4:	c4e80050 	lwc1	$f8,80(a3)
 1f8:	3c0140c0 	lui	at,0x40c0
 1fc:	44819000 	mtc1	at,$f18
 200:	460a4402 	mul.s	$f16,$f8,$f10
 204:	c7a00020 	lwc1	$f0,32(sp)
 208:	24020001 	li	v0,1
 20c:	46000005 	abs.s	$f0,$f0
 210:	46128080 	add.s	$f2,$f16,$f18
 214:	4600103c 	c.lt.s	$f2,$f0
 218:	c7a00028 	lwc1	$f0,40(sp)
 21c:	4501000a 	bc1t	248 <func_80BA1ECC+0x16c>
 220:	00000000 	nop
 224:	46000005 	abs.s	$f0,$f0
 228:	4600103c 	c.lt.s	$f2,$f0
 22c:	00000000 	nop
 230:	45010005 	bc1t	248 <func_80BA1ECC+0x16c>
 234:	00000000 	nop
 238:	10000003 	b	248 <func_80BA1ECC+0x16c>
 23c:	00001025 	move	v0,zero
 240:	10000001 	b	248 <func_80BA1ECC+0x16c>
 244:	00001025 	move	v0,zero
 248:	8fbf0014 	lw	ra,20(sp)
 24c:	27bd0038 	addiu	sp,sp,56
 250:	03e00008 	jr	ra
 254:	00000000 	nop

00000258 <func_80BA2048>:
 258:	27bdffb8 	addiu	sp,sp,-72
 25c:	afb00014 	sw	s0,20(sp)
 260:	00808025 	move	s0,a0
 264:	afb10018 	sw	s1,24(sp)
 268:	afa5004c 	sw	a1,76(sp)
 26c:	27b1003c 	addiu	s1,sp,60
 270:	afbf001c 	sw	ra,28(sp)
 274:	26050024 	addiu	a1,s0,36
 278:	afa5002c 	sw	a1,44(sp)
 27c:	0c000000 	jal	0 <func_80BA1DF0>
 280:	02202025 	move	a0,s1
 284:	8e05011c 	lw	a1,284(s0)
 288:	8fa4002c 	lw	a0,44(sp)
 28c:	0c000000 	jal	0 <func_80BA1DF0>
 290:	24a50024 	addiu	a1,a1,36
 294:	8e04011c 	lw	a0,284(s0)
 298:	02202825 	move	a1,s1
 29c:	0c000000 	jal	0 <func_80BA1DF0>
 2a0:	24840024 	addiu	a0,a0,36
 2a4:	8e02011c 	lw	v0,284(s0)
 2a8:	86030032 	lh	v1,50(s0)
 2ac:	26060050 	addiu	a2,s0,80
 2b0:	844e0032 	lh	t6,50(v0)
 2b4:	00c02825 	move	a1,a2
 2b8:	02202025 	move	a0,s1
 2bc:	a60e0032 	sh	t6,50(s0)
 2c0:	a4430032 	sh	v1,50(v0)
 2c4:	8e02011c 	lw	v0,284(s0)
 2c8:	860300b6 	lh	v1,182(s0)
 2cc:	844f00b6 	lh	t7,182(v0)
 2d0:	a60f00b6 	sh	t7,182(s0)
 2d4:	a44300b6 	sh	v1,182(v0)
 2d8:	8e02011c 	lw	v0,284(s0)
 2dc:	86030018 	lh	v1,24(s0)
 2e0:	84580018 	lh	t8,24(v0)
 2e4:	a6180018 	sh	t8,24(s0)
 2e8:	a4430018 	sh	v1,24(v0)
 2ec:	0c000000 	jal	0 <func_80BA1DF0>
 2f0:	afa60028 	sw	a2,40(sp)
 2f4:	8e05011c 	lw	a1,284(s0)
 2f8:	8fa40028 	lw	a0,40(sp)
 2fc:	0c000000 	jal	0 <func_80BA1DF0>
 300:	24a50050 	addiu	a1,a1,80
 304:	8e04011c 	lw	a0,284(s0)
 308:	02202825 	move	a1,s1
 30c:	0c000000 	jal	0 <func_80BA1DF0>
 310:	24840050 	addiu	a0,a0,80
 314:	26060038 	addiu	a2,s0,56
 318:	00c02825 	move	a1,a2
 31c:	afa60028 	sw	a2,40(sp)
 320:	0c000000 	jal	0 <func_80BA1DF0>
 324:	02202025 	move	a0,s1
 328:	8e05011c 	lw	a1,284(s0)
 32c:	8fa40028 	lw	a0,40(sp)
 330:	0c000000 	jal	0 <func_80BA1DF0>
 334:	24a50038 	addiu	a1,a1,56
 338:	8e04011c 	lw	a0,284(s0)
 33c:	02202825 	move	a1,s1
 340:	0c000000 	jal	0 <func_80BA1DF0>
 344:	24840038 	addiu	a0,a0,56
 348:	26060044 	addiu	a2,s0,68
 34c:	88c90000 	lwl	t1,0(a2)
 350:	98c90003 	lwr	t1,3(a2)
 354:	27a80034 	addiu	t0,sp,52
 358:	26050008 	addiu	a1,s0,8
 35c:	ad090000 	sw	t1,0(t0)
 360:	94c90004 	lhu	t1,4(a2)
 364:	a5090004 	sh	t1,4(t0)
 368:	8e0a011c 	lw	t2,284(s0)
 36c:	894c0044 	lwl	t4,68(t2)
 370:	994c0047 	lwr	t4,71(t2)
 374:	a8cc0000 	swl	t4,0(a2)
 378:	b8cc0003 	swr	t4,3(a2)
 37c:	954c0048 	lhu	t4,72(t2)
 380:	a4cc0004 	sh	t4,4(a2)
 384:	8e0d011c 	lw	t5,284(s0)
 388:	8d0f0000 	lw	t7,0(t0)
 38c:	a9af0044 	swl	t7,68(t5)
 390:	b9af0047 	swr	t7,71(t5)
 394:	950f0004 	lhu	t7,4(t0)
 398:	a5af0048 	sh	t7,72(t5)
 39c:	8e02011c 	lw	v0,284(s0)
 3a0:	8603001c 	lh	v1,28(s0)
 3a4:	8459001c 	lh	t9,28(v0)
 3a8:	30788000 	andi	t8,v1,0x8000
 3ac:	306d7fff 	andi	t5,v1,0x7fff
 3b0:	33297fff 	andi	t1,t9,0x7fff
 3b4:	03095025 	or	t2,t8,t1
 3b8:	a60a001c 	sh	t2,28(s0)
 3bc:	844b001c 	lh	t3,28(v0)
 3c0:	316c8000 	andi	t4,t3,0x8000
 3c4:	018d7025 	or	t6,t4,t5
 3c8:	a44e001c 	sh	t6,28(v0)
 3cc:	0c000000 	jal	0 <func_80BA1DF0>
 3d0:	8fa4002c 	lw	a0,44(sp)
 3d4:	3c010000 	lui	at,0x0
 3d8:	c4240000 	lwc1	$f4,0(at)
 3dc:	4604003c 	c.lt.s	$f0,$f4
 3e0:	00000000 	nop
 3e4:	45020008 	bc1fl	408 <func_80BA2048+0x1b0>
 3e8:	8605001c 	lh	a1,28(s0)
 3ec:	8605001c 	lh	a1,28(s0)
 3f0:	8fa4004c 	lw	a0,76(sp)
 3f4:	0c000000 	jal	0 <func_80BA1DF0>
 3f8:	30a5003f 	andi	a1,a1,0x3f
 3fc:	10000006 	b	418 <func_80BA2048+0x1c0>
 400:	8fbf001c 	lw	ra,28(sp)
 404:	8605001c 	lh	a1,28(s0)
 408:	8fa4004c 	lw	a0,76(sp)
 40c:	0c000000 	jal	0 <func_80BA1DF0>
 410:	30a5003f 	andi	a1,a1,0x3f
 414:	8fbf001c 	lw	ra,28(sp)
 418:	8fb00014 	lw	s0,20(sp)
 41c:	8fb10018 	lw	s1,24(sp)
 420:	03e00008 	jr	ra
 424:	27bd0048 	addiu	sp,sp,72

00000428 <func_80BA2218>:
 428:	27bdffe0 	addiu	sp,sp,-32
 42c:	afbf0014 	sw	ra,20(sp)
 430:	afa40020 	sw	a0,32(sp)
 434:	8ca31c44 	lw	v1,7236(a1)
 438:	afa50024 	sw	a1,36(sp)
 43c:	0c000000 	jal	0 <func_80BA1DF0>
 440:	afa3001c 	sw	v1,28(sp)
 444:	8fa3001c 	lw	v1,28(sp)
 448:	1040000f 	beqz	v0,488 <func_80BA2218+0x60>
 44c:	8fa60024 	lw	a2,36(sp)
 450:	8c620680 	lw	v0,1664(v1)
 454:	3c010080 	lui	at,0x80
 458:	00c02025 	move	a0,a2
 45c:	000271c0 	sll	t6,v0,0x7
 460:	05c10008 	bgez	t6,484 <func_80BA2218+0x5c>
 464:	0041c825 	or	t9,v0,at
 468:	0c000000 	jal	0 <func_80BA1DF0>
 46c:	24050001 	li	a1,1
 470:	8fb80020 	lw	t8,32(sp)
 474:	3c0f0000 	lui	t7,0x0
 478:	25ef0000 	addiu	t7,t7,0
 47c:	10000002 	b	488 <func_80BA2218+0x60>
 480:	af0f0168 	sw	t7,360(t8)
 484:	ac790680 	sw	t9,1664(v1)
 488:	8fbf0014 	lw	ra,20(sp)
 48c:	27bd0020 	addiu	sp,sp,32
 490:	00001025 	move	v0,zero
 494:	03e00008 	jr	ra
 498:	00000000 	nop

0000049c <func_80BA228C>:
 49c:	3c010001 	lui	at,0x1
 4a0:	00a11021 	addu	v0,a1,at
 4a4:	944e04c6 	lhu	t6,1222(v0)
 4a8:	24010004 	li	at,4
 4ac:	3c0f0000 	lui	t7,0x0
 4b0:	15c10002 	bne	t6,at,4bc <func_80BA228C+0x20>
 4b4:	25ef0000 	addiu	t7,t7,0
 4b8:	ac8f0168 	sw	t7,360(a0)
 4bc:	945804c4 	lhu	t8,1220(v0)
 4c0:	2401000a 	li	at,10
 4c4:	00001025 	move	v0,zero
 4c8:	17010010 	bne	t8,at,50c <func_80BA228C+0x70>
 4cc:	00000000 	nop
 4d0:	94990172 	lhu	t9,370(a0)
 4d4:	240100fe 	li	at,254
 4d8:	2408006e 	li	t0,110
 4dc:	57210004 	bnel	t9,at,4f0 <func_80BA228C+0x54>
 4e0:	8489016e 	lh	t1,366(a0)
 4e4:	10000009 	b	50c <func_80BA228C+0x70>
 4e8:	a488016e 	sh	t0,366(a0)
 4ec:	8489016e 	lh	t1,366(a0)
 4f0:	252affff 	addiu	t2,t1,-1
 4f4:	a48a016e 	sh	t2,366(a0)
 4f8:	848b016e 	lh	t3,366(a0)
 4fc:	15600003 	bnez	t3,50c <func_80BA228C+0x70>
 500:	00000000 	nop
 504:	03e00008 	jr	ra
 508:	24020001 	li	v0,1
 50c:	03e00008 	jr	ra
 510:	00000000 	nop

00000514 <func_80BA2304>:
 514:	27bdffe8 	addiu	sp,sp,-24
 518:	afbf0014 	sw	ra,20(sp)
 51c:	afa5001c 	sw	a1,28(sp)
 520:	afa40018 	sw	a0,24(sp)
 524:	8c990168 	lw	t9,360(a0)
 528:	0320f809 	jalr	t9
 52c:	00000000 	nop
 530:	8fae001c 	lw	t6,28(sp)
 534:	3c0f0001 	lui	t7,0x1
 538:	8fa40018 	lw	a0,24(sp)
 53c:	01ee7821 	addu	t7,t7,t6
 540:	95ef04c4 	lhu	t7,1220(t7)
 544:	a48f0172 	sh	t7,370(a0)
 548:	8fbf0014 	lw	ra,20(sp)
 54c:	27bd0018 	addiu	sp,sp,24
 550:	03e00008 	jr	ra
 554:	00000000 	nop

00000558 <ObjWarp2block_Init>:
 558:	27bdffd0 	addiu	sp,sp,-48
 55c:	afbf001c 	sw	ra,28(sp)
 560:	afb00018 	sw	s0,24(sp)
 564:	afa50034 	sw	a1,52(sp)
 568:	afa00024 	sw	zero,36(sp)
 56c:	a48000b8 	sh	zero,184(a0)
 570:	848e00b8 	lh	t6,184(a0)
 574:	3c050000 	lui	a1,0x0
 578:	00808025 	move	s0,a0
 57c:	24a50000 	addiu	a1,a1,0
 580:	0c000000 	jal	0 <func_80BA1DF0>
 584:	a48e0034 	sh	t6,52(a0)
 588:	860f001c 	lh	t7,28(s0)
 58c:	3c050000 	lui	a1,0x0
 590:	02002025 	move	a0,s0
 594:	000fc203 	sra	t8,t7,0x8
 598:	33190001 	andi	t9,t8,0x1
 59c:	00194080 	sll	t0,t9,0x2
 5a0:	01194023 	subu	t0,t0,t9
 5a4:	00084080 	sll	t0,t0,0x2
 5a8:	00a82821 	addu	a1,a1,t0
 5ac:	0c000000 	jal	0 <func_80BA1DF0>
 5b0:	8ca50000 	lw	a1,0(a1)
 5b4:	860a001c 	lh	t2,28(s0)
 5b8:	3c090000 	lui	t1,0x0
 5bc:	25290000 	addiu	t1,t1,0
 5c0:	000a5a03 	sra	t3,t2,0x8
 5c4:	316c0001 	andi	t4,t3,0x1
 5c8:	000c6880 	sll	t5,t4,0x2
 5cc:	01ac6823 	subu	t5,t5,t4
 5d0:	000d6880 	sll	t5,t5,0x2
 5d4:	3c050000 	lui	a1,0x0
 5d8:	ae090168 	sw	t1,360(s0)
 5dc:	00ad2821 	addu	a1,a1,t5
 5e0:	8ca50000 	lw	a1,0(a1)
 5e4:	0c000000 	jal	0 <func_80BA1DF0>
 5e8:	02002025 	move	a0,s0
 5ec:	860e001c 	lh	t6,28(s0)
 5f0:	000e7bc3 	sra	t7,t6,0xf
 5f4:	31f80001 	andi	t8,t7,0x1
 5f8:	13000017 	beqz	t8,658 <ObjWarp2block_Init+0x100>
 5fc:	00000000 	nop
 600:	0c000000 	jal	0 <func_80BA1DF0>
 604:	02002025 	move	a0,s0
 608:	8605001c 	lh	a1,28(s0)
 60c:	8fa40034 	lw	a0,52(sp)
 610:	0c000000 	jal	0 <func_80BA1DF0>
 614:	30a5003f 	andi	a1,a1,0x3f
 618:	10400002 	beqz	v0,624 <ObjWarp2block_Init+0xcc>
 61c:	02002025 	move	a0,s0
 620:	ae000134 	sw	zero,308(s0)
 624:	0c000000 	jal	0 <func_80BA1DF0>
 628:	00002825 	move	a1,zero
 62c:	3c040600 	lui	a0,0x600
 630:	24840b30 	addiu	a0,a0,2864
 634:	0c000000 	jal	0 <func_80BA1DF0>
 638:	27a50024 	addiu	a1,sp,36
 63c:	8fa40034 	lw	a0,52(sp)
 640:	02003025 	move	a2,s0
 644:	8fa70024 	lw	a3,36(sp)
 648:	0c000000 	jal	0 <func_80BA1DF0>
 64c:	24850810 	addiu	a1,a0,2064
 650:	10000003 	b	660 <ObjWarp2block_Init+0x108>
 654:	ae02014c 	sw	v0,332(s0)
 658:	0c000000 	jal	0 <func_80BA1DF0>
 65c:	02002025 	move	a0,s0
 660:	8602001c 	lh	v0,28(s0)
 664:	86060018 	lh	a2,24(s0)
 668:	3c040000 	lui	a0,0x0
 66c:	00023ac3 	sra	a3,v0,0xb
 670:	30e70007 	andi	a3,a3,0x7
 674:	24840000 	addiu	a0,a0,0
 678:	3045ffff 	andi	a1,v0,0xffff
 67c:	0c000000 	jal	0 <func_80BA1DF0>
 680:	30c60007 	andi	a2,a2,0x7
 684:	8fbf001c 	lw	ra,28(sp)
 688:	8fb00018 	lw	s0,24(sp)
 68c:	27bd0030 	addiu	sp,sp,48
 690:	03e00008 	jr	ra
 694:	00000000 	nop

00000698 <ObjWarp2block_Destroy>:
 698:	27bdffe8 	addiu	sp,sp,-24
 69c:	afbf0014 	sw	ra,20(sp)
 6a0:	afa5001c 	sw	a1,28(sp)
 6a4:	848e001c 	lh	t6,28(a0)
 6a8:	00803825 	move	a3,a0
 6ac:	00a02025 	move	a0,a1
 6b0:	000e7bc3 	sra	t7,t6,0xf
 6b4:	31f80001 	andi	t8,t7,0x1
 6b8:	13000003 	beqz	t8,6c8 <ObjWarp2block_Destroy+0x30>
 6bc:	24a50810 	addiu	a1,a1,2064
 6c0:	0c000000 	jal	0 <func_80BA1DF0>
 6c4:	8ce6014c 	lw	a2,332(a3)
 6c8:	8fbf0014 	lw	ra,20(sp)
 6cc:	27bd0018 	addiu	sp,sp,24
 6d0:	03e00008 	jr	ra
 6d4:	00000000 	nop

000006d8 <func_80BA24C8>:
 6d8:	3c0e0000 	lui	t6,0x0
 6dc:	25ce0000 	addiu	t6,t6,0
 6e0:	ac8e0164 	sw	t6,356(a0)
 6e4:	03e00008 	jr	ra
 6e8:	ac800134 	sw	zero,308(a0)

000006ec <func_80BA24DC>:
 6ec:	afa40000 	sw	a0,0(sp)
 6f0:	03e00008 	jr	ra
 6f4:	afa50004 	sw	a1,4(sp)

000006f8 <func_80BA24E8>:
 6f8:	3c0e0000 	lui	t6,0x0
 6fc:	25ce0000 	addiu	t6,t6,0
 700:	03e00008 	jr	ra
 704:	ac8e0164 	sw	t6,356(a0)

00000708 <func_80BA24F8>:
 708:	27bdffe0 	addiu	sp,sp,-32
 70c:	afbf001c 	sw	ra,28(sp)
 710:	afb00018 	sw	s0,24(sp)
 714:	8ca21c6c 	lw	v0,7276(a1)
 718:	00808025 	move	s0,a0
 71c:	00a03025 	move	a2,a1
 720:	10400021 	beqz	v0,7a8 <func_80BA24F8+0xa0>
 724:	240401d6 	li	a0,470
 728:	844e0000 	lh	t6,0(v0)
 72c:	548e001c 	bnel	a0,t6,7a0 <func_80BA24F8+0x98>
 730:	8c420124 	lw	v0,292(v0)
 734:	8443001c 	lh	v1,28(v0)
 738:	00037bc3 	sra	t7,v1,0xf
 73c:	31f80001 	andi	t8,t7,0x1
 740:	57000017 	bnezl	t8,7a0 <func_80BA24F8+0x98>
 744:	8c420124 	lw	v0,292(v0)
 748:	8605001c 	lh	a1,28(s0)
 74c:	3079003f 	andi	t9,v1,0x3f
 750:	30a5003f 	andi	a1,a1,0x3f
 754:	57250012 	bnel	t9,a1,7a0 <func_80BA24F8+0x98>
 758:	8c420124 	lw	v0,292(v0)
 75c:	ae02011c 	sw	v0,284(s0)
 760:	afa60024 	sw	a2,36(sp)
 764:	0c000000 	jal	0 <func_80BA1DF0>
 768:	00c02025 	move	a0,a2
 76c:	10400007 	beqz	v0,78c <func_80BA24F8+0x84>
 770:	8fa60024 	lw	a2,36(sp)
 774:	02002025 	move	a0,s0
 778:	0c000000 	jal	0 <func_80BA1DF0>
 77c:	00c02825 	move	a1,a2
 780:	3c080000 	lui	t0,0x0
 784:	25080000 	addiu	t0,t0,0
 788:	ae080134 	sw	t0,308(s0)
 78c:	0c000000 	jal	0 <func_80BA1DF0>
 790:	02002025 	move	a0,s0
 794:	1000001a 	b	800 <func_80BA24F8+0xf8>
 798:	8fbf001c 	lw	ra,28(sp)
 79c:	8c420124 	lw	v0,292(v0)
 7a0:	5440ffe2 	bnezl	v0,72c <func_80BA24F8+0x24>
 7a4:	844e0000 	lh	t6,0(v0)
 7a8:	86090174 	lh	t1,372(s0)
 7ac:	3c040000 	lui	a0,0x0
 7b0:	252a0001 	addiu	t2,t1,1
 7b4:	a60a0174 	sh	t2,372(s0)
 7b8:	860b0174 	lh	t3,372(s0)
 7bc:	2961003d 	slti	at,t3,61
 7c0:	5420000f 	bnezl	at,800 <func_80BA24F8+0xf8>
 7c4:	8fbf001c 	lw	ra,28(sp)
 7c8:	0c000000 	jal	0 <func_80BA1DF0>
 7cc:	24840000 	addiu	a0,a0,0
 7d0:	3c040000 	lui	a0,0x0
 7d4:	3c050000 	lui	a1,0x0
 7d8:	24a50000 	addiu	a1,a1,0
 7dc:	24840000 	addiu	a0,a0,0
 7e0:	0c000000 	jal	0 <func_80BA1DF0>
 7e4:	240601f9 	li	a2,505
 7e8:	3c040000 	lui	a0,0x0
 7ec:	0c000000 	jal	0 <func_80BA1DF0>
 7f0:	24840000 	addiu	a0,a0,0
 7f4:	0c000000 	jal	0 <func_80BA1DF0>
 7f8:	02002025 	move	a0,s0
 7fc:	8fbf001c 	lw	ra,28(sp)
 800:	8fb00018 	lw	s0,24(sp)
 804:	27bd0020 	addiu	sp,sp,32
 808:	03e00008 	jr	ra
 80c:	00000000 	nop

00000810 <func_80BA2600>:
 810:	3c0e0000 	lui	t6,0x0
 814:	25ce0000 	addiu	t6,t6,0
 818:	03e00008 	jr	ra
 81c:	ac8e0164 	sw	t6,356(a0)

00000820 <func_80BA2610>:
 820:	27bdffe0 	addiu	sp,sp,-32
 824:	afbf001c 	sw	ra,28(sp)
 828:	afb00018 	sw	s0,24(sp)
 82c:	00808025 	move	s0,a0
 830:	0c000000 	jal	0 <func_80BA1DF0>
 834:	afa50024 	sw	a1,36(sp)
 838:	5040000f 	beqzl	v0,878 <func_80BA2610+0x58>
 83c:	86020170 	lh	v0,368(s0)
 840:	860e016c 	lh	t6,364(s0)
 844:	02002025 	move	a0,s0
 848:	5dc0000b 	bgtzl	t6,878 <func_80BA2610+0x58>
 84c:	86020170 	lh	v0,368(s0)
 850:	0c000000 	jal	0 <func_80BA1DF0>
 854:	8fa50024 	lw	a1,36(sp)
 858:	240f00a0 	li	t7,160
 85c:	a60f016c 	sh	t7,364(s0)
 860:	8fa40024 	lw	a0,36(sp)
 864:	0c000000 	jal	0 <func_80BA1DF0>
 868:	02002825 	move	a1,s0
 86c:	2418000c 	li	t8,12
 870:	a6180170 	sh	t8,368(s0)
 874:	86020170 	lh	v0,368(s0)
 878:	18400008 	blez	v0,89c <func_80BA2610+0x7c>
 87c:	2459ffff 	addiu	t9,v0,-1
 880:	a6190170 	sh	t9,368(s0)
 884:	86080170 	lh	t0,368(s0)
 888:	02002025 	move	a0,s0
 88c:	55000004 	bnezl	t0,8a0 <func_80BA2610+0x80>
 890:	8609016c 	lh	t1,364(s0)
 894:	0c000000 	jal	0 <func_80BA1DF0>
 898:	8fa50024 	lw	a1,36(sp)
 89c:	8609016c 	lh	t1,364(s0)
 8a0:	24010032 	li	at,50
 8a4:	55210004 	bnel	t1,at,8b8 <func_80BA2610+0x98>
 8a8:	8fbf001c 	lw	ra,28(sp)
 8ac:	0c000000 	jal	0 <func_80BA1DF0>
 8b0:	24044807 	li	a0,18439
 8b4:	8fbf001c 	lw	ra,28(sp)
 8b8:	8fb00018 	lw	s0,24(sp)
 8bc:	27bd0020 	addiu	sp,sp,32
 8c0:	03e00008 	jr	ra
 8c4:	00000000 	nop

000008c8 <ObjWarp2block_Update>:
 8c8:	27bdffe8 	addiu	sp,sp,-24
 8cc:	afbf0014 	sw	ra,20(sp)
 8d0:	afa40018 	sw	a0,24(sp)
 8d4:	8c990164 	lw	t9,356(a0)
 8d8:	0320f809 	jalr	t9
 8dc:	00000000 	nop
 8e0:	8fa40018 	lw	a0,24(sp)
 8e4:	8482016c 	lh	v0,364(a0)
 8e8:	18400002 	blez	v0,8f4 <ObjWarp2block_Update+0x2c>
 8ec:	244effff 	addiu	t6,v0,-1
 8f0:	a48e016c 	sh	t6,364(a0)
 8f4:	8fbf0014 	lw	ra,20(sp)
 8f8:	27bd0018 	addiu	sp,sp,24
 8fc:	03e00008 	jr	ra
 900:	00000000 	nop

00000904 <ObjWarp2block_Draw>:
 904:	27bdffb8 	addiu	sp,sp,-72
 908:	afbf001c 	sw	ra,28(sp)
 90c:	afb00018 	sw	s0,24(sp)
 910:	afa40048 	sw	a0,72(sp)
 914:	afa5004c 	sw	a1,76(sp)
 918:	848f0018 	lh	t7,24(a0)
 91c:	3c080000 	lui	t0,0x0
 920:	25080000 	addiu	t0,t0,0
 924:	31f80007 	andi	t8,t7,0x7
 928:	0018c880 	sll	t9,t8,0x2
 92c:	0338c823 	subu	t9,t9,t8
 930:	03284821 	addu	t1,t9,t0
 934:	afa90044 	sw	t1,68(sp)
 938:	8ca50000 	lw	a1,0(a1)
 93c:	3c060000 	lui	a2,0x0
 940:	24c60000 	addiu	a2,a2,0
 944:	27a40030 	addiu	a0,sp,48
 948:	24070248 	li	a3,584
 94c:	0c000000 	jal	0 <func_80BA1DF0>
 950:	00a08025 	move	s0,a1
 954:	8fab004c 	lw	t3,76(sp)
 958:	0c000000 	jal	0 <func_80BA1DF0>
 95c:	8d640000 	lw	a0,0(t3)
 960:	8e0202c0 	lw	v0,704(s0)
 964:	3c0dda38 	lui	t5,0xda38
 968:	35ad0003 	ori	t5,t5,0x3
 96c:	244c0008 	addiu	t4,v0,8
 970:	ae0c02c0 	sw	t4,704(s0)
 974:	ac4d0000 	sw	t5,0(v0)
 978:	8fae004c 	lw	t6,76(sp)
 97c:	3c050000 	lui	a1,0x0
 980:	24a50000 	addiu	a1,a1,0
 984:	8dc40000 	lw	a0,0(t6)
 988:	2406024c 	li	a2,588
 98c:	0c000000 	jal	0 <func_80BA1DF0>
 990:	afa2002c 	sw	v0,44(sp)
 994:	8fa3002c 	lw	v1,44(sp)
 998:	3c18fa00 	lui	t8,0xfa00
 99c:	3c060000 	lui	a2,0x0
 9a0:	ac620004 	sw	v0,4(v1)
 9a4:	8e0202c0 	lw	v0,704(s0)
 9a8:	8fa40044 	lw	a0,68(sp)
 9ac:	24c60000 	addiu	a2,a2,0
 9b0:	244f0008 	addiu	t7,v0,8
 9b4:	ae0f02c0 	sw	t7,704(s0)
 9b8:	ac580000 	sw	t8,0(v0)
 9bc:	908b0001 	lbu	t3,1(a0)
 9c0:	90880000 	lbu	t0,0(a0)
 9c4:	908f0002 	lbu	t7,2(a0)
 9c8:	000b6400 	sll	t4,t3,0x10
 9cc:	00084e00 	sll	t1,t0,0x18
 9d0:	012c6825 	or	t5,t1,t4
 9d4:	000fc200 	sll	t8,t7,0x8
 9d8:	01b8c825 	or	t9,t5,t8
 9dc:	372800ff 	ori	t0,t9,0xff
 9e0:	ac480004 	sw	t0,4(v0)
 9e4:	8e0202c0 	lw	v0,704(s0)
 9e8:	3c090600 	lui	t1,0x600
 9ec:	25290980 	addiu	t1,t1,2432
 9f0:	244a0008 	addiu	t2,v0,8
 9f4:	ae0a02c0 	sw	t2,704(s0)
 9f8:	3c0bde00 	lui	t3,0xde00
 9fc:	ac4b0000 	sw	t3,0(v0)
 a00:	ac490004 	sw	t1,4(v0)
 a04:	8fac004c 	lw	t4,76(sp)
 a08:	27a40030 	addiu	a0,sp,48
 a0c:	24070252 	li	a3,594
 a10:	0c000000 	jal	0 <func_80BA1DF0>
 a14:	8d850000 	lw	a1,0(t4)
 a18:	8fbf001c 	lw	ra,28(sp)
 a1c:	8fb00018 	lw	s0,24(sp)
 a20:	27bd0048 	addiu	sp,sp,72
 a24:	03e00008 	jr	ra
 a28:	00000000 	nop
 a2c:	00000000 	nop
