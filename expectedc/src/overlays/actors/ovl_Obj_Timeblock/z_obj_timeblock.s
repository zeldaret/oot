
build/src/overlays/actors/ovl_Obj_Timeblock/z_obj_timeblock.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B9FFA0>:
   0:	8482001c 	lh	v0,28(a0)
   4:	00027283 	sra	t6,v0,0xa
   8:	31cf0001 	andi	t7,t6,0x1
   c:	15e00021 	bnez	t7,94 <func_80B9FFA0+0x94>
  10:	000263c3 	sra	t4,v0,0xf
  14:	90830177 	lbu	v1,375(a0)
  18:	0002c3c3 	sra	t8,v0,0xf
  1c:	33190001 	andi	t9,t8,0x1
  20:	14600003 	bnez	v1,30 <func_80B9FFA0+0x30>
  24:	24010001 	li	at,1
  28:	03e00008 	jr	ra
  2c:	90820175 	lbu	v0,373(a0)
  30:	13200003 	beqz	t9,40 <func_80B9FFA0+0x40>
  34:	00002825 	move	a1,zero
  38:	10000001 	b	40 <func_80B9FFA0+0x40>
  3c:	24050001 	li	a1,1
  40:	14610004 	bne	v1,at,54 <func_80B9FFA0+0x54>
  44:	3c090000 	lui	t1,0x0
  48:	90880174 	lbu	t0,372(a0)
  4c:	03e00008 	jr	ra
  50:	01051026 	xor	v0,t0,a1
  54:	8d290004 	lw	t1,4(t1)
  58:	24010005 	li	at,5
  5c:	24030011 	li	v1,17
  60:	11200003 	beqz	t1,70 <func_80B9FFA0+0x70>
  64:	00000000 	nop
  68:	10000001 	b	70 <func_80B9FFA0+0x70>
  6c:	24030005 	li	v1,5
  70:	54610004 	bnel	v1,at,84 <func_80B9FFA0+0x84>
  74:	00001825 	move	v1,zero
  78:	10000002 	b	84 <func_80B9FFA0+0x84>
  7c:	24030001 	li	v1,1
  80:	00001825 	move	v1,zero
  84:	908a0174 	lbu	t2,372(a0)
  88:	01455826 	xor	t3,t2,a1
  8c:	03e00008 	jr	ra
  90:	01631026 	xor	v0,t3,v1
  94:	318d0001 	andi	t5,t4,0x1
  98:	11a00003 	beqz	t5,a8 <func_80B9FFA0+0xa8>
  9c:	00001825 	move	v1,zero
  a0:	10000001 	b	a8 <func_80B9FFA0+0xa8>
  a4:	24030001 	li	v1,1
  a8:	908e0174 	lbu	t6,372(a0)
  ac:	006e1026 	xor	v0,v1,t6
  b0:	03e00008 	jr	ra
  b4:	00000000 	nop

000000b8 <func_80BA0058>:
  b8:	27bdffd0 	addiu	sp,sp,-48
  bc:	afa40030 	sw	a0,48(sp)
  c0:	8fae0030 	lw	t6,48(sp)
  c4:	afbf002c 	sw	ra,44(sp)
  c8:	3c090000 	lui	t1,0x0
  cc:	c5c40028 	lwc1	$f4,40(t6)
  d0:	8dc70024 	lw	a3,36(t6)
  d4:	24a41c24 	addiu	a0,a1,7204
  d8:	e7a40010 	swc1	$f4,16(sp)
  dc:	c5c6002c 	lwc1	$f6,44(t6)
  e0:	afa00020 	sw	zero,32(sp)
  e4:	afa0001c 	sw	zero,28(sp)
  e8:	afa00018 	sw	zero,24(sp)
  ec:	e7a60014 	swc1	$f6,20(sp)
  f0:	85cf001c 	lh	t7,28(t6)
  f4:	2406008b 	li	a2,139
  f8:	000fc203 	sra	t8,t7,0x8
  fc:	33190001 	andi	t9,t8,0x1
 100:	00194080 	sll	t0,t9,0x2
 104:	01194023 	subu	t0,t0,t9
 108:	00084080 	sll	t0,t0,0x2
 10c:	01284821 	addu	t1,t1,t0
 110:	85290000 	lh	t1,0(t1)
 114:	0c000000 	jal	0 <func_80B9FFA0>
 118:	afa90024 	sw	t1,36(sp)
 11c:	8fbf002c 	lw	ra,44(sp)
 120:	27bd0030 	addiu	sp,sp,48
 124:	03e00008 	jr	ra
 128:	00000000 	nop

0000012c <func_80BA00CC>:
 12c:	27bdffe8 	addiu	sp,sp,-24
 130:	afbf0014 	sw	ra,20(sp)
 134:	afa40018 	sw	a0,24(sp)
 138:	0c000000 	jal	0 <func_80B9FFA0>
 13c:	afa5001c 	sw	a1,28(sp)
 140:	8fa40018 	lw	a0,24(sp)
 144:	10400005 	beqz	v0,15c <func_80BA00CC+0x30>
 148:	8fa5001c 	lw	a1,28(sp)
 14c:	0c000000 	jal	0 <func_80B9FFA0>
 150:	00000000 	nop
 154:	10000004 	b	168 <func_80BA00CC+0x3c>
 158:	8fbf0014 	lw	ra,20(sp)
 15c:	0c000000 	jal	0 <func_80B9FFA0>
 160:	00000000 	nop
 164:	8fbf0014 	lw	ra,20(sp)
 168:	27bd0018 	addiu	sp,sp,24
 16c:	03e00008 	jr	ra
 170:	00000000 	nop

00000174 <ObjTimeblock_Init>:
 174:	27bdffc8 	addiu	sp,sp,-56
 178:	afbf0024 	sw	ra,36(sp)
 17c:	afb00020 	sw	s0,32(sp)
 180:	afa5003c 	sw	a1,60(sp)
 184:	00808025 	move	s0,a0
 188:	afa0002c 	sw	zero,44(sp)
 18c:	0c000000 	jal	0 <func_80B9FFA0>
 190:	00002825 	move	a1,zero
 194:	a60000b8 	sh	zero,184(s0)
 198:	860e00b8 	lh	t6,184(s0)
 19c:	3c040600 	lui	a0,0x600
 1a0:	24840b30 	addiu	a0,a0,2864
 1a4:	27a5002c 	addiu	a1,sp,44
 1a8:	0c000000 	jal	0 <func_80B9FFA0>
 1ac:	a60e0034 	sh	t6,52(s0)
 1b0:	8fa4003c 	lw	a0,60(sp)
 1b4:	02003025 	move	a2,s0
 1b8:	8fa7002c 	lw	a3,44(sp)
 1bc:	0c000000 	jal	0 <func_80B9FFA0>
 1c0:	24850810 	addiu	a1,a0,2064
 1c4:	3c050000 	lui	a1,0x0
 1c8:	ae02014c 	sw	v0,332(s0)
 1cc:	24a50000 	addiu	a1,a1,0
 1d0:	0c000000 	jal	0 <func_80B9FFA0>
 1d4:	02002025 	move	a0,s0
 1d8:	860f001c 	lh	t7,28(s0)
 1dc:	3c050000 	lui	a1,0x0
 1e0:	02002025 	move	a0,s0
 1e4:	000fc203 	sra	t8,t7,0x8
 1e8:	33190001 	andi	t9,t8,0x1
 1ec:	00194080 	sll	t0,t9,0x2
 1f0:	01194023 	subu	t0,t0,t9
 1f4:	00084080 	sll	t0,t0,0x2
 1f8:	00a82821 	addu	a1,a1,t0
 1fc:	0c000000 	jal	0 <func_80B9FFA0>
 200:	8ca50000 	lw	a1,0(a1)
 204:	8602001c 	lh	v0,28(s0)
 208:	3c0e0000 	lui	t6,0x0
 20c:	25ce0000 	addiu	t6,t6,0
 210:	00024983 	sra	t1,v0,0x6
 214:	312a0001 	andi	t2,t1,0x1
 218:	11400003 	beqz	t2,228 <ObjTimeblock_Init+0xb4>
 21c:	02002025 	move	a0,s0
 220:	10000009 	b	248 <ObjTimeblock_Init+0xd4>
 224:	a2000177 	sb	zero,375(s0)
 228:	304b003f 	andi	t3,v0,0x3f
 22c:	29610038 	slti	at,t3,56
 230:	10200004 	beqz	at,244 <ObjTimeblock_Init+0xd0>
 234:	240d0001 	li	t5,1
 238:	240c0002 	li	t4,2
 23c:	10000002 	b	248 <ObjTimeblock_Init+0xd4>
 240:	a20c0177 	sb	t4,375(s0)
 244:	a20d0177 	sb	t5,375(s0)
 248:	860f001c 	lh	t7,28(s0)
 24c:	3c050000 	lui	a1,0x0
 250:	ae0e0168 	sw	t6,360(s0)
 254:	000fc203 	sra	t8,t7,0x8
 258:	33190001 	andi	t9,t8,0x1
 25c:	00194080 	sll	t0,t9,0x2
 260:	01194023 	subu	t0,t0,t9
 264:	00084080 	sll	t0,t0,0x2
 268:	00a82821 	addu	a1,a1,t0
 26c:	0c000000 	jal	0 <func_80B9FFA0>
 270:	8ca50000 	lw	a1,0(a1)
 274:	8605001c 	lh	a1,28(s0)
 278:	8fa4003c 	lw	a0,60(sp)
 27c:	0c000000 	jal	0 <func_80B9FFA0>
 280:	30a5003f 	andi	a1,a1,0x3f
 284:	10400003 	beqz	v0,294 <ObjTimeblock_Init+0x120>
 288:	24090001 	li	t1,1
 28c:	10000002 	b	298 <ObjTimeblock_Init+0x124>
 290:	a2090174 	sb	t1,372(s0)
 294:	a2000174 	sb	zero,372(s0)
 298:	860a001c 	lh	t2,28(s0)
 29c:	240d0001 	li	t5,1
 2a0:	000a5bc3 	sra	t3,t2,0xf
 2a4:	316c0001 	andi	t4,t3,0x1
 2a8:	51800004 	beqzl	t4,2bc <ObjTimeblock_Init+0x148>
 2ac:	a2000175 	sb	zero,373(s0)
 2b0:	10000002 	b	2bc <ObjTimeblock_Init+0x148>
 2b4:	a20d0175 	sb	t5,373(s0)
 2b8:	a2000175 	sb	zero,373(s0)
 2bc:	0c000000 	jal	0 <func_80B9FFA0>
 2c0:	02002025 	move	a0,s0
 2c4:	860e001c 	lh	t6,28(s0)
 2c8:	a2020178 	sb	v0,376(s0)
 2cc:	000e7a83 	sra	t7,t6,0xa
 2d0:	31f80001 	andi	t8,t7,0x1
 2d4:	57000006 	bnezl	t8,2f0 <ObjTimeblock_Init+0x17c>
 2d8:	92190178 	lbu	t9,376(s0)
 2dc:	0c000000 	jal	0 <func_80B9FFA0>
 2e0:	02002025 	move	a0,s0
 2e4:	1000000b 	b	314 <ObjTimeblock_Init+0x1a0>
 2e8:	8602001c 	lh	v0,28(s0)
 2ec:	92190178 	lbu	t9,376(s0)
 2f0:	13200005 	beqz	t9,308 <ObjTimeblock_Init+0x194>
 2f4:	00000000 	nop
 2f8:	0c000000 	jal	0 <func_80B9FFA0>
 2fc:	02002025 	move	a0,s0
 300:	10000004 	b	314 <ObjTimeblock_Init+0x1a0>
 304:	8602001c 	lh	v0,28(s0)
 308:	0c000000 	jal	0 <func_80B9FFA0>
 30c:	02002025 	move	a0,s0
 310:	8602001c 	lh	v0,28(s0)
 314:	86070018 	lh	a3,24(s0)
 318:	3c040000 	lui	a0,0x0
 31c:	000242c3 	sra	t0,v0,0xb
 320:	00025283 	sra	t2,v0,0xa
 324:	314b0001 	andi	t3,t2,0x1
 328:	31090007 	andi	t1,t0,0x7
 32c:	92060177 	lbu	a2,375(s0)
 330:	afab0014 	sw	t3,20(sp)
 334:	afa90010 	sw	t1,16(sp)
 338:	24840000 	addiu	a0,a0,0
 33c:	3045ffff 	andi	a1,v0,0xffff
 340:	0c000000 	jal	0 <func_80B9FFA0>
 344:	30e70007 	andi	a3,a3,0x7
 348:	8fbf0024 	lw	ra,36(sp)
 34c:	8fb00020 	lw	s0,32(sp)
 350:	27bd0038 	addiu	sp,sp,56
 354:	03e00008 	jr	ra
 358:	00000000 	nop

0000035c <ObjTimeblock_Destroy>:
 35c:	27bdffe8 	addiu	sp,sp,-24
 360:	afa40018 	sw	a0,24(sp)
 364:	8fae0018 	lw	t6,24(sp)
 368:	afbf0014 	sw	ra,20(sp)
 36c:	00a02025 	move	a0,a1
 370:	24a50810 	addiu	a1,a1,2064
 374:	0c000000 	jal	0 <func_80B9FFA0>
 378:	8dc6014c 	lw	a2,332(t6)
 37c:	8fbf0014 	lw	ra,20(sp)
 380:	27bd0018 	addiu	sp,sp,24
 384:	03e00008 	jr	ra
 388:	00000000 	nop

0000038c <func_80BA032C>:
 38c:	27bdffd8 	addiu	sp,sp,-40
 390:	afbf0014 	sw	ra,20(sp)
 394:	afa5002c 	sw	a1,44(sp)
 398:	908e0178 	lbu	t6,376(a0)
 39c:	51c00008 	beqzl	t6,3c0 <func_80BA032C+0x34>
 3a0:	848f001c 	lh	t7,28(a0)
 3a4:	0c000000 	jal	0 <func_80B9FFA0>
 3a8:	afa40028 	sw	a0,40(sp)
 3ac:	10400003 	beqz	v0,3bc <func_80BA032C+0x30>
 3b0:	8fa40028 	lw	a0,40(sp)
 3b4:	10000029 	b	45c <func_80BA032C+0xd0>
 3b8:	00001025 	move	v0,zero
 3bc:	848f001c 	lh	t7,28(a0)
 3c0:	3c010000 	lui	at,0x0
 3c4:	c4860090 	lwc1	$f6,144(a0)
 3c8:	000fc2c3 	sra	t8,t7,0xb
 3cc:	33190007 	andi	t9,t8,0x7
 3d0:	00194080 	sll	t0,t9,0x2
 3d4:	00280821 	addu	at,at,t0
 3d8:	c4240000 	lwc1	$f4,0(at)
 3dc:	8fa9002c 	lw	t1,44(sp)
 3e0:	4604303e 	c.le.s	$f6,$f4
 3e4:	00000000 	nop
 3e8:	4502001c 	bc1fl	45c <func_80BA032C+0xd0>
 3ec:	00001025 	move	v0,zero
 3f0:	8d261c44 	lw	a2,7236(t1)
 3f4:	afa40028 	sw	a0,40(sp)
 3f8:	27a5001c 	addiu	a1,sp,28
 3fc:	0c000000 	jal	0 <func_80B9FFA0>
 400:	24c60024 	addiu	a2,a2,36
 404:	8fa40028 	lw	a0,40(sp)
 408:	3c014248 	lui	at,0x4248
 40c:	44815000 	mtc1	at,$f10
 410:	c4880050 	lwc1	$f8,80(a0)
 414:	3c0140c0 	lui	at,0x40c0
 418:	44819000 	mtc1	at,$f18
 41c:	460a4402 	mul.s	$f16,$f8,$f10
 420:	c7a0001c 	lwc1	$f0,28(sp)
 424:	46000005 	abs.s	$f0,$f0
 428:	46128080 	add.s	$f2,$f16,$f18
 42c:	4600103c 	c.lt.s	$f2,$f0
 430:	c7a00024 	lwc1	$f0,36(sp)
 434:	45010006 	bc1t	450 <func_80BA032C+0xc4>
 438:	00000000 	nop
 43c:	46000005 	abs.s	$f0,$f0
 440:	4600103c 	c.lt.s	$f2,$f0
 444:	00000000 	nop
 448:	45020004 	bc1fl	45c <func_80BA032C+0xd0>
 44c:	00001025 	move	v0,zero
 450:	10000002 	b	45c <func_80BA032C+0xd0>
 454:	24020001 	li	v0,1
 458:	00001025 	move	v0,zero
 45c:	8fbf0014 	lw	ra,20(sp)
 460:	27bd0028 	addiu	sp,sp,40
 464:	03e00008 	jr	ra
 468:	00000000 	nop

0000046c <func_80BA040C>:
 46c:	27bdffe0 	addiu	sp,sp,-32
 470:	afbf0014 	sw	ra,20(sp)
 474:	afa40020 	sw	a0,32(sp)
 478:	8ca31c44 	lw	v1,7236(a1)
 47c:	afa50024 	sw	a1,36(sp)
 480:	0c000000 	jal	0 <func_80B9FFA0>
 484:	afa3001c 	sw	v1,28(sp)
 488:	8fa3001c 	lw	v1,28(sp)
 48c:	1040000f 	beqz	v0,4cc <func_80BA040C+0x60>
 490:	8fa60024 	lw	a2,36(sp)
 494:	8c620680 	lw	v0,1664(v1)
 498:	3c010080 	lui	at,0x80
 49c:	00c02025 	move	a0,a2
 4a0:	000271c0 	sll	t6,v0,0x7
 4a4:	05c10008 	bgez	t6,4c8 <func_80BA040C+0x5c>
 4a8:	0041c825 	or	t9,v0,at
 4ac:	0c000000 	jal	0 <func_80B9FFA0>
 4b0:	24050001 	li	a1,1
 4b4:	8fb80020 	lw	t8,32(sp)
 4b8:	3c0f0000 	lui	t7,0x0
 4bc:	25ef0000 	addiu	t7,t7,0
 4c0:	10000002 	b	4cc <func_80BA040C+0x60>
 4c4:	af0f0168 	sw	t7,360(t8)
 4c8:	ac790680 	sw	t9,1664(v1)
 4cc:	8fbf0014 	lw	ra,20(sp)
 4d0:	27bd0020 	addiu	sp,sp,32
 4d4:	00001025 	move	v0,zero
 4d8:	03e00008 	jr	ra
 4dc:	00000000 	nop

000004e0 <func_80BA0480>:
 4e0:	3c010001 	lui	at,0x1
 4e4:	00a11021 	addu	v0,a1,at
 4e8:	944e04c6 	lhu	t6,1222(v0)
 4ec:	24010004 	li	at,4
 4f0:	3c0f0000 	lui	t7,0x0
 4f4:	15c10002 	bne	t6,at,500 <func_80BA0480+0x20>
 4f8:	25ef0000 	addiu	t7,t7,0
 4fc:	ac8f0168 	sw	t7,360(a0)
 500:	945804c4 	lhu	t8,1220(v0)
 504:	2401000a 	li	at,10
 508:	00001025 	move	v0,zero
 50c:	17010010 	bne	t8,at,550 <func_80BA0480+0x70>
 510:	00000000 	nop
 514:	94990172 	lhu	t9,370(a0)
 518:	240100fe 	li	at,254
 51c:	2408006e 	li	t0,110
 520:	57210004 	bnel	t9,at,534 <func_80BA0480+0x54>
 524:	8489016e 	lh	t1,366(a0)
 528:	10000009 	b	550 <func_80BA0480+0x70>
 52c:	a488016e 	sh	t0,366(a0)
 530:	8489016e 	lh	t1,366(a0)
 534:	252affff 	addiu	t2,t1,-1
 538:	a48a016e 	sh	t2,366(a0)
 53c:	848b016e 	lh	t3,366(a0)
 540:	15600003 	bnez	t3,550 <func_80BA0480+0x70>
 544:	00000000 	nop
 548:	03e00008 	jr	ra
 54c:	24020001 	li	v0,1
 550:	03e00008 	jr	ra
 554:	00000000 	nop

00000558 <func_80BA04F8>:
 558:	3c0e0000 	lui	t6,0x0
 55c:	25ce0000 	addiu	t6,t6,0
 560:	03e00008 	jr	ra
 564:	ac8e0164 	sw	t6,356(a0)

00000568 <func_80BA0508>:
 568:	afa40000 	sw	a0,0(sp)
 56c:	03e00008 	jr	ra
 570:	afa50004 	sw	a1,4(sp)

00000574 <func_80BA0514>:
 574:	3c0e0000 	lui	t6,0x0
 578:	25ce0000 	addiu	t6,t6,0
 57c:	03e00008 	jr	ra
 580:	ac8e0164 	sw	t6,356(a0)

00000584 <func_80BA0524>:
 584:	27bdffd8 	addiu	sp,sp,-40
 588:	afb00018 	sw	s0,24(sp)
 58c:	00808025 	move	s0,a0
 590:	afbf001c 	sw	ra,28(sp)
 594:	afa5002c 	sw	a1,44(sp)
 598:	8e190168 	lw	t9,360(s0)
 59c:	0320f809 	jalr	t9
 5a0:	00000000 	nop
 5a4:	5040001f 	beqzl	v0,624 <func_80BA0524+0xa0>
 5a8:	8fa4002c 	lw	a0,44(sp)
 5ac:	860e016c 	lh	t6,364(s0)
 5b0:	02002025 	move	a0,s0
 5b4:	5dc0001b 	bgtzl	t6,624 <func_80BA0524+0xa0>
 5b8:	8fa4002c 	lw	a0,44(sp)
 5bc:	0c000000 	jal	0 <func_80B9FFA0>
 5c0:	8fa5002c 	lw	a1,44(sp)
 5c4:	240f00a0 	li	t7,160
 5c8:	a60f016c 	sh	t7,364(s0)
 5cc:	8fa4002c 	lw	a0,44(sp)
 5d0:	0c000000 	jal	0 <func_80B9FFA0>
 5d4:	02002825 	move	a1,s0
 5d8:	8fb8002c 	lw	t8,44(sp)
 5dc:	3c040000 	lui	a0,0x0
 5e0:	24840000 	addiu	a0,a0,0
 5e4:	0c000000 	jal	0 <func_80B9FFA0>
 5e8:	8f05009c 	lw	a1,156(t8)
 5ec:	92090177 	lbu	t1,375(s0)
 5f0:	2408000c 	li	t0,12
 5f4:	a6080170 	sh	t0,368(s0)
 5f8:	55200006 	bnezl	t1,614 <func_80BA0524+0x90>
 5fc:	8605001c 	lh	a1,28(s0)
 600:	860a001c 	lh	t2,28(s0)
 604:	394b8000 	xori	t3,t2,0x8000
 608:	10000005 	b	620 <func_80BA0524+0x9c>
 60c:	a60b001c 	sh	t3,28(s0)
 610:	8605001c 	lh	a1,28(s0)
 614:	8fa4002c 	lw	a0,44(sp)
 618:	0c000000 	jal	0 <func_80B9FFA0>
 61c:	30a5003f 	andi	a1,a1,0x3f
 620:	8fa4002c 	lw	a0,44(sp)
 624:	3c0c0001 	lui	t4,0x1
 628:	86020170 	lh	v0,368(s0)
 62c:	01846021 	addu	t4,t4,a0
 630:	958c04c4 	lhu	t4,1220(t4)
 634:	244dffff 	addiu	t5,v0,-1
 638:	1840001a 	blez	v0,6a4 <func_80BA0524+0x120>
 63c:	a60c0172 	sh	t4,370(s0)
 640:	a60d0170 	sh	t5,368(s0)
 644:	86190170 	lh	t9,368(s0)
 648:	17200016 	bnez	t9,6a4 <func_80BA0524+0x120>
 64c:	00000000 	nop
 650:	920e0177 	lbu	t6,375(s0)
 654:	55c0000c 	bnezl	t6,688 <func_80BA0524+0x104>
 658:	8605001c 	lh	a1,28(s0)
 65c:	860f001c 	lh	t7,28(s0)
 660:	24090001 	li	t1,1
 664:	000fc3c3 	sra	t8,t7,0xf
 668:	33080001 	andi	t0,t8,0x1
 66c:	11000003 	beqz	t0,67c <func_80BA0524+0xf8>
 670:	00000000 	nop
 674:	1000000b 	b	6a4 <func_80BA0524+0x120>
 678:	a2090175 	sb	t1,373(s0)
 67c:	10000009 	b	6a4 <func_80BA0524+0x120>
 680:	a2000175 	sb	zero,373(s0)
 684:	8605001c 	lh	a1,28(s0)
 688:	0c000000 	jal	0 <func_80B9FFA0>
 68c:	30a5003f 	andi	a1,a1,0x3f
 690:	10400003 	beqz	v0,6a0 <func_80BA0524+0x11c>
 694:	240a0001 	li	t2,1
 698:	10000002 	b	6a4 <func_80BA0524+0x120>
 69c:	a20a0174 	sb	t2,372(s0)
 6a0:	a2000174 	sb	zero,372(s0)
 6a4:	0c000000 	jal	0 <func_80B9FFA0>
 6a8:	02002025 	move	a0,s0
 6ac:	920b0177 	lbu	t3,375(s0)
 6b0:	24010001 	li	at,1
 6b4:	00401825 	move	v1,v0
 6b8:	55610009 	bnel	t3,at,6e0 <func_80BA0524+0x15c>
 6bc:	860d016c 	lh	t5,364(s0)
 6c0:	920c0178 	lbu	t4,376(s0)
 6c4:	02002025 	move	a0,s0
 6c8:	504c0005 	beql	v0,t4,6e0 <func_80BA0524+0x15c>
 6cc:	860d016c 	lh	t5,364(s0)
 6d0:	0c000000 	jal	0 <func_80B9FFA0>
 6d4:	afa20024 	sw	v0,36(sp)
 6d8:	8fa30024 	lw	v1,36(sp)
 6dc:	860d016c 	lh	t5,364(s0)
 6e0:	24010032 	li	at,50
 6e4:	a2030178 	sb	v1,376(s0)
 6e8:	55a10004 	bnel	t5,at,6fc <func_80BA0524+0x178>
 6ec:	8fbf001c 	lw	ra,28(sp)
 6f0:	0c000000 	jal	0 <func_80B9FFA0>
 6f4:	24044807 	li	a0,18439
 6f8:	8fbf001c 	lw	ra,28(sp)
 6fc:	8fb00018 	lw	s0,24(sp)
 700:	27bd0028 	addiu	sp,sp,40
 704:	03e00008 	jr	ra
 708:	00000000 	nop

0000070c <func_80BA06AC>:
 70c:	27bdffd8 	addiu	sp,sp,-40
 710:	afbf001c 	sw	ra,28(sp)
 714:	afb00018 	sw	s0,24(sp)
 718:	afa5002c 	sw	a1,44(sp)
 71c:	848e001c 	lh	t6,28(a0)
 720:	3c190001 	lui	t9,0x1
 724:	0325c821 	addu	t9,t9,a1
 728:	31cf003f 	andi	t7,t6,0x3f
 72c:	afaf0024 	sw	t7,36(sp)
 730:	84820170 	lh	v0,368(a0)
 734:	973904c4 	lhu	t9,1220(t9)
 738:	00808025 	move	s0,a0
 73c:	1840000e 	blez	v0,778 <func_80BA06AC+0x6c>
 740:	a4990172 	sh	t9,370(a0)
 744:	2448ffff 	addiu	t0,v0,-1
 748:	a4880170 	sh	t0,368(a0)
 74c:	84890170 	lh	t1,368(a0)
 750:	8fa4002c 	lw	a0,44(sp)
 754:	15200008 	bnez	t1,778 <func_80BA06AC+0x6c>
 758:	00000000 	nop
 75c:	0c000000 	jal	0 <func_80B9FFA0>
 760:	8fa50024 	lw	a1,36(sp)
 764:	10400003 	beqz	v0,774 <func_80BA06AC+0x68>
 768:	240a0001 	li	t2,1
 76c:	10000002 	b	778 <func_80BA06AC+0x6c>
 770:	a20a0174 	sb	t2,372(s0)
 774:	a2000174 	sb	zero,372(s0)
 778:	0c000000 	jal	0 <func_80B9FFA0>
 77c:	02002025 	move	a0,s0
 780:	a2020178 	sb	v0,376(s0)
 784:	8fa50024 	lw	a1,36(sp)
 788:	0c000000 	jal	0 <func_80B9FFA0>
 78c:	8fa4002c 	lw	a0,44(sp)
 790:	10400003 	beqz	v0,7a0 <func_80BA06AC+0x94>
 794:	240b0001 	li	t3,1
 798:	10000002 	b	7a4 <func_80BA06AC+0x98>
 79c:	a20b0176 	sb	t3,374(s0)
 7a0:	a2000176 	sb	zero,374(s0)
 7a4:	8fbf001c 	lw	ra,28(sp)
 7a8:	8fb00018 	lw	s0,24(sp)
 7ac:	27bd0028 	addiu	sp,sp,40
 7b0:	03e00008 	jr	ra
 7b4:	00000000 	nop

000007b8 <func_80BA0758>:
 7b8:	3c0e0000 	lui	t6,0x0
 7bc:	25ce0000 	addiu	t6,t6,0
 7c0:	03e00008 	jr	ra
 7c4:	ac8e0164 	sw	t6,356(a0)

000007c8 <func_80BA0768>:
 7c8:	27bdffe0 	addiu	sp,sp,-32
 7cc:	afb00014 	sw	s0,20(sp)
 7d0:	00808025 	move	s0,a0
 7d4:	afbf001c 	sw	ra,28(sp)
 7d8:	afb10018 	sw	s1,24(sp)
 7dc:	8e190168 	lw	t9,360(s0)
 7e0:	00a08825 	move	s1,a1
 7e4:	0320f809 	jalr	t9
 7e8:	00000000 	nop
 7ec:	50400016 	beqzl	v0,848 <func_80BA0768+0x80>
 7f0:	02002025 	move	a0,s0
 7f4:	860e016c 	lh	t6,364(s0)
 7f8:	240f000c 	li	t7,12
 7fc:	02002025 	move	a0,s0
 800:	1dc00010 	bgtz	t6,844 <func_80BA0768+0x7c>
 804:	02202825 	move	a1,s1
 808:	0c000000 	jal	0 <func_80B9FFA0>
 80c:	a60f0170 	sh	t7,368(s0)
 810:	241800a0 	li	t8,160
 814:	a618016c 	sh	t8,364(s0)
 818:	02202025 	move	a0,s1
 81c:	0c000000 	jal	0 <func_80B9FFA0>
 820:	02002825 	move	a1,s0
 824:	3c040000 	lui	a0,0x0
 828:	24840000 	addiu	a0,a0,0
 82c:	0c000000 	jal	0 <func_80B9FFA0>
 830:	8e25009c 	lw	a1,156(s1)
 834:	8605001c 	lh	a1,28(s0)
 838:	02202025 	move	a0,s1
 83c:	0c000000 	jal	0 <func_80B9FFA0>
 840:	30a5003f 	andi	a1,a1,0x3f
 844:	02002025 	move	a0,s0
 848:	0c000000 	jal	0 <func_80B9FFA0>
 84c:	02202825 	move	a1,s1
 850:	8608016c 	lh	t0,364(s0)
 854:	24010032 	li	at,50
 858:	55010004 	bnel	t0,at,86c <func_80BA0768+0xa4>
 85c:	92090178 	lbu	t1,376(s0)
 860:	0c000000 	jal	0 <func_80B9FFA0>
 864:	24044807 	li	a0,18439
 868:	92090178 	lbu	t1,376(s0)
 86c:	55200007 	bnezl	t1,88c <func_80BA0768+0xc4>
 870:	8fbf001c 	lw	ra,28(sp)
 874:	860a016c 	lh	t2,364(s0)
 878:	5d400004 	bgtzl	t2,88c <func_80BA0768+0xc4>
 87c:	8fbf001c 	lw	ra,28(sp)
 880:	0c000000 	jal	0 <func_80B9FFA0>
 884:	02002025 	move	a0,s0
 888:	8fbf001c 	lw	ra,28(sp)
 88c:	8fb00014 	lw	s0,20(sp)
 890:	8fb10018 	lw	s1,24(sp)
 894:	03e00008 	jr	ra
 898:	27bd0020 	addiu	sp,sp,32

0000089c <func_80BA083C>:
 89c:	3c0e0000 	lui	t6,0x0
 8a0:	25ce0000 	addiu	t6,t6,0
 8a4:	03e00008 	jr	ra
 8a8:	ac8e0164 	sw	t6,356(a0)

000008ac <func_80BA084C>:
 8ac:	27bdffe0 	addiu	sp,sp,-32
 8b0:	afbf001c 	sw	ra,28(sp)
 8b4:	afb00018 	sw	s0,24(sp)
 8b8:	afa50024 	sw	a1,36(sp)
 8bc:	8485001c 	lh	a1,28(a0)
 8c0:	00808025 	move	s0,a0
 8c4:	8fa40024 	lw	a0,36(sp)
 8c8:	0c000000 	jal	0 <func_80B9FFA0>
 8cc:	30a5003f 	andi	a1,a1,0x3f
 8d0:	10400003 	beqz	v0,8e0 <func_80BA084C+0x34>
 8d4:	00001825 	move	v1,zero
 8d8:	10000001 	b	8e0 <func_80BA084C+0x34>
 8dc:	24030001 	li	v1,1
 8e0:	920e0176 	lbu	t6,374(s0)
 8e4:	51c30016 	beql	t6,v1,940 <func_80BA084C+0x94>
 8e8:	02002025 	move	a0,s0
 8ec:	8618001c 	lh	t8,28(s0)
 8f0:	00001025 	move	v0,zero
 8f4:	0018cbc3 	sra	t9,t8,0xf
 8f8:	33280001 	andi	t0,t9,0x1
 8fc:	11000003 	beqz	t0,90c <func_80BA084C+0x60>
 900:	00000000 	nop
 904:	10000001 	b	90c <func_80BA084C+0x60>
 908:	24020001 	li	v0,1
 90c:	5043000c 	beql	v0,v1,940 <func_80BA084C+0x94>
 910:	02002025 	move	a0,s0
 914:	860a016c 	lh	t2,364(s0)
 918:	02002025 	move	a0,s0
 91c:	5d400006 	bgtzl	t2,938 <func_80BA084C+0x8c>
 920:	240c000c 	li	t4,12
 924:	0c000000 	jal	0 <func_80B9FFA0>
 928:	8fa50024 	lw	a1,36(sp)
 92c:	240b00a0 	li	t3,160
 930:	a60b016c 	sh	t3,364(s0)
 934:	240c000c 	li	t4,12
 938:	a60c0170 	sh	t4,368(s0)
 93c:	02002025 	move	a0,s0
 940:	0c000000 	jal	0 <func_80B9FFA0>
 944:	8fa50024 	lw	a1,36(sp)
 948:	920d0178 	lbu	t5,376(s0)
 94c:	51a00007 	beqzl	t5,96c <func_80BA084C+0xc0>
 950:	8fbf001c 	lw	ra,28(sp)
 954:	860e016c 	lh	t6,364(s0)
 958:	5dc00004 	bgtzl	t6,96c <func_80BA084C+0xc0>
 95c:	8fbf001c 	lw	ra,28(sp)
 960:	0c000000 	jal	0 <func_80B9FFA0>
 964:	02002025 	move	a0,s0
 968:	8fbf001c 	lw	ra,28(sp)
 96c:	8fb00018 	lw	s0,24(sp)
 970:	27bd0020 	addiu	sp,sp,32
 974:	03e00008 	jr	ra
 978:	00000000 	nop

0000097c <ObjTimeblock_Update>:
 97c:	27bdffe0 	addiu	sp,sp,-32
 980:	afbf001c 	sw	ra,28(sp)
 984:	afb00018 	sw	s0,24(sp)
 988:	afa40020 	sw	a0,32(sp)
 98c:	8c990164 	lw	t9,356(a0)
 990:	00a08025 	move	s0,a1
 994:	0320f809 	jalr	t9
 998:	00000000 	nop
 99c:	8fa70020 	lw	a3,32(sp)
 9a0:	02002025 	move	a0,s0
 9a4:	26050810 	addiu	a1,s0,2064
 9a8:	84e2016c 	lh	v0,364(a3)
 9ac:	18400002 	blez	v0,9b8 <ObjTimeblock_Update+0x3c>
 9b0:	244effff 	addiu	t6,v0,-1
 9b4:	a4ee016c 	sh	t6,364(a3)
 9b8:	90ef0178 	lbu	t7,376(a3)
 9bc:	11e00007 	beqz	t7,9dc <ObjTimeblock_Update+0x60>
 9c0:	00000000 	nop
 9c4:	02002025 	move	a0,s0
 9c8:	26050810 	addiu	a1,s0,2064
 9cc:	0c000000 	jal	0 <func_80B9FFA0>
 9d0:	8ce6014c 	lw	a2,332(a3)
 9d4:	10000004 	b	9e8 <ObjTimeblock_Update+0x6c>
 9d8:	8fbf001c 	lw	ra,28(sp)
 9dc:	0c000000 	jal	0 <func_80B9FFA0>
 9e0:	8ce6014c 	lw	a2,332(a3)
 9e4:	8fbf001c 	lw	ra,28(sp)
 9e8:	8fb00018 	lw	s0,24(sp)
 9ec:	27bd0020 	addiu	sp,sp,32
 9f0:	03e00008 	jr	ra
 9f4:	00000000 	nop

000009f8 <ObjTimeblock_Draw>:
 9f8:	27bdffb8 	addiu	sp,sp,-72
 9fc:	afbf001c 	sw	ra,28(sp)
 a00:	afb00018 	sw	s0,24(sp)
 a04:	afa40048 	sw	a0,72(sp)
 a08:	afa5004c 	sw	a1,76(sp)
 a0c:	908f0178 	lbu	t7,376(a0)
 a10:	3c090000 	lui	t1,0x0
 a14:	25290000 	addiu	t1,t1,0
 a18:	11e0003e 	beqz	t7,b14 <ObjTimeblock_Draw+0x11c>
 a1c:	3c060000 	lui	a2,0x0
 a20:	84980018 	lh	t8,24(a0)
 a24:	27a40030 	addiu	a0,sp,48
 a28:	24c60000 	addiu	a2,a2,0
 a2c:	33190007 	andi	t9,t8,0x7
 a30:	00194080 	sll	t0,t9,0x2
 a34:	01194023 	subu	t0,t0,t9
 a38:	01095021 	addu	t2,t0,t1
 a3c:	afaa0044 	sw	t2,68(sp)
 a40:	8ca50000 	lw	a1,0(a1)
 a44:	240702fa 	li	a3,762
 a48:	0c000000 	jal	0 <func_80B9FFA0>
 a4c:	00a08025 	move	s0,a1
 a50:	8fac004c 	lw	t4,76(sp)
 a54:	0c000000 	jal	0 <func_80B9FFA0>
 a58:	8d840000 	lw	a0,0(t4)
 a5c:	8e0202c0 	lw	v0,704(s0)
 a60:	3c0fda38 	lui	t7,0xda38
 a64:	35ef0003 	ori	t7,t7,0x3
 a68:	244d0008 	addiu	t5,v0,8
 a6c:	ae0d02c0 	sw	t5,704(s0)
 a70:	ac4f0000 	sw	t7,0(v0)
 a74:	8fae004c 	lw	t6,76(sp)
 a78:	3c050000 	lui	a1,0x0
 a7c:	24a50000 	addiu	a1,a1,0
 a80:	8dc40000 	lw	a0,0(t6)
 a84:	240602fe 	li	a2,766
 a88:	0c000000 	jal	0 <func_80B9FFA0>
 a8c:	afa2002c 	sw	v0,44(sp)
 a90:	8fa3002c 	lw	v1,44(sp)
 a94:	3c19fa00 	lui	t9,0xfa00
 a98:	3c060000 	lui	a2,0x0
 a9c:	ac620004 	sw	v0,4(v1)
 aa0:	8e0202c0 	lw	v0,704(s0)
 aa4:	8fa40044 	lw	a0,68(sp)
 aa8:	24c60000 	addiu	a2,a2,0
 aac:	24580008 	addiu	t8,v0,8
 ab0:	ae1802c0 	sw	t8,704(s0)
 ab4:	ac590000 	sw	t9,0(v0)
 ab8:	908c0001 	lbu	t4,1(a0)
 abc:	90890000 	lbu	t1,0(a0)
 ac0:	90980002 	lbu	t8,2(a0)
 ac4:	000c6c00 	sll	t5,t4,0x10
 ac8:	00095600 	sll	t2,t1,0x18
 acc:	014d7825 	or	t7,t2,t5
 ad0:	0018ca00 	sll	t9,t8,0x8
 ad4:	01f94025 	or	t0,t7,t9
 ad8:	350900ff 	ori	t1,t0,0xff
 adc:	ac490004 	sw	t1,4(v0)
 ae0:	8e0202c0 	lw	v0,704(s0)
 ae4:	3c0a0600 	lui	t2,0x600
 ae8:	254a0980 	addiu	t2,t2,2432
 aec:	244b0008 	addiu	t3,v0,8
 af0:	ae0b02c0 	sw	t3,704(s0)
 af4:	3c0cde00 	lui	t4,0xde00
 af8:	ac4c0000 	sw	t4,0(v0)
 afc:	ac4a0004 	sw	t2,4(v0)
 b00:	8fad004c 	lw	t5,76(sp)
 b04:	27a40030 	addiu	a0,sp,48
 b08:	24070304 	li	a3,772
 b0c:	0c000000 	jal	0 <func_80B9FFA0>
 b10:	8da50000 	lw	a1,0(t5)
 b14:	8fbf001c 	lw	ra,28(sp)
 b18:	8fb00018 	lw	s0,24(sp)
 b1c:	27bd0048 	addiu	sp,sp,72
 b20:	03e00008 	jr	ra
 b24:	00000000 	nop
	...
