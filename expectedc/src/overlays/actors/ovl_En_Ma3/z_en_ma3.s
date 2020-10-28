
build/src/overlays/actors/ovl_En_Ma3/z_en_ma3.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80AA2AA0>:
   0:	3c030000 	lui	v1,0x0
   4:	24630000 	addiu	v1,v1,0
   8:	946e0f0e 	lhu	t6,3854(v1)
   c:	27bdffe0 	addiu	sp,sp,-32
  10:	afbf001c 	sw	ra,28(sp)
  14:	31cf0100 	andi	t7,t6,0x100
  18:	15e00003 	bnez	t7,28 <func_80AA2AA0+0x28>
  1c:	8c821c44 	lw	v0,7236(a0)
  20:	10000040 	b	124 <func_80AA2AA0+0x124>
  24:	24022000 	li	v0,8192
  28:	947813fa 	lhu	t8,5114(v1)
  2c:	33190400 	andi	t9,t8,0x400
  30:	53200027 	beqzl	t9,d0 <func_80AA2AA0+0xd0>
  34:	8c4f067c 	lw	t7,1660(v0)
  38:	846813d0 	lh	t0,5072(v1)
  3c:	3c010001 	lui	at,0x1
  40:	a46813d0 	sh	t0,5072(v1)
  44:	8ca90004 	lw	t1,4(a1)
  48:	01215025 	or	t2,t1,at
  4c:	acaa0004 	sw	t2,4(a1)
  50:	846213d0 	lh	v0,5072(v1)
  54:	284100d3 	slti	at,v0,211
  58:	54200004 	bnezl	at,6c <func_80AA2AA0+0x6c>
  5c:	8c640ec4 	lw	a0,3780(v1)
  60:	10000030 	b	124 <func_80AA2AA0+0x124>
  64:	2402208e 	li	v0,8334
  68:	8c640ec4 	lw	a0,3780(v1)
  6c:	240b00b4 	li	t3,180
  70:	10800003 	beqz	a0,80 <func_80AA2AA0+0x80>
  74:	288100b4 	slti	at,a0,180
  78:	54200004 	bnezl	at,8c <func_80AA2AA0+0x8c>
  7c:	946c0ed6 	lhu	t4,3798(v1)
  80:	ac6b0ec4 	sw	t3,3780(v1)
  84:	846213d0 	lh	v0,5072(v1)
  88:	946c0ed6 	lhu	t4,3798(v1)
  8c:	28410032 	slti	at,v0,50
  90:	318d4000 	andi	t5,t4,0x4000
  94:	55a00006 	bnezl	t5,b0 <func_80AA2AA0+0xb0>
  98:	8c6e0ec4 	lw	t6,3780(v1)
  9c:	50200004 	beqzl	at,b0 <func_80AA2AA0+0xb0>
  a0:	8c6e0ec4 	lw	t6,3780(v1)
  a4:	1000001f 	b	124 <func_80AA2AA0+0x124>
  a8:	2402208f 	li	v0,8335
  ac:	8c6e0ec4 	lw	t6,3780(v1)
  b0:	004e082a 	slt	at,v0,t6
  b4:	10200003 	beqz	at,c4 <func_80AA2AA0+0xc4>
  b8:	00000000 	nop
  bc:	10000019 	b	124 <func_80AA2AA0+0x124>
  c0:	24022012 	li	v0,8210
  c4:	10000017 	b	124 <func_80AA2AA0+0x124>
  c8:	24022004 	li	v0,8196
  cc:	8c4f067c 	lw	t7,1660(v0)
  d0:	24060014 	li	a2,20
  d4:	3c014496 	lui	at,0x4496
  d8:	000fc200 	sll	t8,t7,0x8
  dc:	0702000b 	bltzl	t8,10c <func_80AA2AA0+0x10c>
  e0:	94790f0e 	lhu	t9,3854(v1)
  e4:	44812000 	mtc1	at,$f4
  e8:	24070001 	li	a3,1
  ec:	0c000000 	jal	0 <func_80AA2AA0>
  f0:	e7a40010 	swc1	$f4,16(sp)
  f4:	3c030000 	lui	v1,0x0
  f8:	14400003 	bnez	v0,108 <func_80AA2AA0+0x108>
  fc:	24630000 	addiu	v1,v1,0
 100:	10000008 	b	124 <func_80AA2AA0+0x124>
 104:	24022001 	li	v0,8193
 108:	94790f0e 	lhu	t9,3854(v1)
 10c:	24022003 	li	v0,8195
 110:	33280200 	andi	t0,t9,0x200
 114:	15000003 	bnez	t0,124 <func_80AA2AA0+0x124>
 118:	00000000 	nop
 11c:	10000001 	b	124 <func_80AA2AA0+0x124>
 120:	24022002 	li	v0,8194
 124:	8fbf001c 	lw	ra,28(sp)
 128:	27bd0020 	addiu	sp,sp,32
 12c:	03e00008 	jr	ra
 130:	00000000 	nop

00000134 <func_80AA2BD4>:
 134:	27bdffe0 	addiu	sp,sp,-32
 138:	afbf0014 	sw	ra,20(sp)
 13c:	00803025 	move	a2,a0
 140:	240e0001 	li	t6,1
 144:	a7ae001e 	sh	t6,30(sp)
 148:	afa60020 	sw	a2,32(sp)
 14c:	248420d8 	addiu	a0,a0,8408
 150:	0c000000 	jal	0 <func_80AA2AA0>
 154:	afa50024 	sw	a1,36(sp)
 158:	2c41000a 	sltiu	at,v0,10
 15c:	8fa50024 	lw	a1,36(sp)
 160:	1020008f 	beqz	at,3a0 <func_80AA2BD4+0x26c>
 164:	8fa60020 	lw	a2,32(sp)
 168:	00027880 	sll	t7,v0,0x2
 16c:	3c010000 	lui	at,0x0
 170:	002f0821 	addu	at,at,t7
 174:	8c2f0040 	lw	t7,64(at)
 178:	01e00008 	jr	t7
 17c:	00000000 	nop
 180:	00c02025 	move	a0,a2
 184:	0c000000 	jal	0 <func_80AA2AA0>
 188:	afa60020 	sw	a2,32(sp)
 18c:	10400084 	beqz	v0,3a0 <func_80AA2BD4+0x26c>
 190:	8fa60020 	lw	a2,32(sp)
 194:	3c010001 	lui	at,0x1
 198:	00260821 	addu	at,at,a2
 19c:	24180157 	li	t8,343
 1a0:	3c020000 	lui	v0,0x0
 1a4:	a4381e1a 	sh	t8,7706(at)
 1a8:	24420000 	addiu	v0,v0,0
 1ac:	3419fff0 	li	t9,0xfff0
 1b0:	3c010001 	lui	at,0x1
 1b4:	a4591412 	sh	t9,5138(v0)
 1b8:	00260821 	addu	at,at,a2
 1bc:	24080026 	li	t0,38
 1c0:	a0281e5e 	sb	t0,7774(at)
 1c4:	3c010001 	lui	at,0x1
 1c8:	00260821 	addu	at,at,a2
 1cc:	24090014 	li	t1,20
 1d0:	a0291e15 	sb	t1,7701(at)
 1d4:	944a13fa 	lhu	t2,5114(v0)
 1d8:	240c000f 	li	t4,15
 1dc:	a44c13ce 	sh	t4,5070(v0)
 1e0:	354b0400 	ori	t3,t2,0x400
 1e4:	1000006e 	b	3a0 <func_80AA2BD4+0x26c>
 1e8:	a44b13fa 	sh	t3,5114(v0)
 1ec:	00c02025 	move	a0,a2
 1f0:	0c000000 	jal	0 <func_80AA2AA0>
 1f4:	afa60020 	sw	a2,32(sp)
 1f8:	10400069 	beqz	v0,3a0 <func_80AA2BD4+0x26c>
 1fc:	8fa60020 	lw	a2,32(sp)
 200:	3c020000 	lui	v0,0x0
 204:	24420000 	addiu	v0,v0,0
 208:	944d0f0e 	lhu	t5,3854(v0)
 20c:	3c0f0001 	lui	t7,0x1
 210:	01e67821 	addu	t7,t7,a2
 214:	35ae0200 	ori	t6,t5,0x200
 218:	a44e0f0e 	sh	t6,3854(v0)
 21c:	91ef04bd 	lbu	t7,1213(t7)
 220:	55e00060 	bnezl	t7,3a4 <func_80AA2BD4+0x270>
 224:	8fbf0014 	lw	ra,20(sp)
 228:	94580ed6 	lhu	t8,3798(v0)
 22c:	00c02025 	move	a0,a2
 230:	33194000 	andi	t9,t8,0x4000
 234:	53200006 	beqzl	t9,250 <func_80AA2BD4+0x11c>
 238:	8c480ec4 	lw	t0,3780(v0)
 23c:	0c000000 	jal	0 <func_80AA2AA0>
 240:	24052091 	li	a1,8337
 244:	10000057 	b	3a4 <func_80AA2BD4+0x270>
 248:	8fbf0014 	lw	ra,20(sp)
 24c:	8c480ec4 	lw	t0,3780(v0)
 250:	24052092 	li	a1,8338
 254:	00c02025 	move	a0,a2
 258:	15000005 	bnez	t0,270 <func_80AA2BD4+0x13c>
 25c:	00000000 	nop
 260:	0c000000 	jal	0 <func_80AA2AA0>
 264:	00c02025 	move	a0,a2
 268:	1000004e 	b	3a4 <func_80AA2BD4+0x270>
 26c:	8fbf0014 	lw	ra,20(sp)
 270:	0c000000 	jal	0 <func_80AA2AA0>
 274:	24052090 	li	a1,8336
 278:	1000004a 	b	3a4 <func_80AA2BD4+0x270>
 27c:	8fbf0014 	lw	ra,20(sp)
 280:	94a2010e 	lhu	v0,270(a1)
 284:	2841208f 	slti	at,v0,8335
 288:	14200006 	bnez	at,2a4 <func_80AA2BD4+0x170>
 28c:	2449e000 	addiu	t1,v0,-8192
 290:	2401208f 	li	at,8335
 294:	10410019 	beq	v0,at,2fc <func_80AA2BD4+0x1c8>
 298:	00000000 	nop
 29c:	10000040 	b	3a0 <func_80AA2BD4+0x26c>
 2a0:	a7a0001e 	sh	zero,30(sp)
 2a4:	28412013 	slti	at,v0,8211
 2a8:	14200005 	bnez	at,2c0 <func_80AA2BD4+0x18c>
 2ac:	2401208e 	li	at,8334
 2b0:	1041001f 	beq	v0,at,330 <func_80AA2BD4+0x1fc>
 2b4:	00000000 	nop
 2b8:	10000039 	b	3a0 <func_80AA2BD4+0x26c>
 2bc:	a7a0001e 	sh	zero,30(sp)
 2c0:	2d210013 	sltiu	at,t1,19
 2c4:	10200035 	beqz	at,39c <func_80AA2BD4+0x268>
 2c8:	00094880 	sll	t1,t1,0x2
 2cc:	3c010000 	lui	at,0x0
 2d0:	00290821 	addu	at,at,t1
 2d4:	8c290068 	lw	t1,104(at)
 2d8:	01200008 	jr	t1
 2dc:	00000000 	nop
 2e0:	3c020000 	lui	v0,0x0
 2e4:	24420000 	addiu	v0,v0,0
 2e8:	944a0f0e 	lhu	t2,3854(v0)
 2ec:	a7a0001e 	sh	zero,30(sp)
 2f0:	354b0100 	ori	t3,t2,0x100
 2f4:	1000002a 	b	3a0 <func_80AA2BD4+0x26c>
 2f8:	a44b0f0e 	sh	t3,3854(v0)
 2fc:	3c020000 	lui	v0,0x0
 300:	24420000 	addiu	v0,v0,0
 304:	944c0ed6 	lhu	t4,3798(v0)
 308:	358d4000 	ori	t5,t4,0x4000
 30c:	a44d0ed6 	sh	t5,3798(v0)
 310:	3c020000 	lui	v0,0x0
 314:	24420000 	addiu	v0,v0,0
 318:	844313d0 	lh	v1,5072(v0)
 31c:	8c4e0ec4 	lw	t6,3780(v0)
 320:	006e082a 	slt	at,v1,t6
 324:	10200002 	beqz	at,330 <func_80AA2BD4+0x1fc>
 328:	00000000 	nop
 32c:	ac430ec4 	sw	v1,3780(v0)
 330:	3c020000 	lui	v0,0x0
 334:	24420000 	addiu	v0,v0,0
 338:	944f13fa 	lhu	t7,5114(v0)
 33c:	3c01fffe 	lui	at,0xfffe
 340:	3421ffff 	ori	at,at,0xffff
 344:	31f8fbff 	andi	t8,t7,0xfbff
 348:	a45813fa 	sh	t8,5114(v0)
 34c:	8cb90004 	lw	t9,4(a1)
 350:	2409000a 	li	t1,10
 354:	03214024 	and	t0,t9,at
 358:	aca80004 	sw	t0,4(a1)
 35c:	a7a0001e 	sh	zero,30(sp)
 360:	1000000f 	b	3a0 <func_80AA2BD4+0x26c>
 364:	a44913ce 	sh	t1,5070(v0)
 368:	3c020000 	lui	v0,0x0
 36c:	24420000 	addiu	v0,v0,0
 370:	944a0f0e 	lhu	t2,3854(v0)
 374:	354b0200 	ori	t3,t2,0x200
 378:	a44b0f0e 	sh	t3,3854(v0)
 37c:	3c020000 	lui	v0,0x0
 380:	24420000 	addiu	v0,v0,0
 384:	944c13fa 	lhu	t4,5114(v0)
 388:	318d0400 	andi	t5,t4,0x400
 38c:	55a00005 	bnezl	t5,3a4 <func_80AA2BD4+0x270>
 390:	8fbf0014 	lw	ra,20(sp)
 394:	10000002 	b	3a0 <func_80AA2BD4+0x26c>
 398:	a7a0001e 	sh	zero,30(sp)
 39c:	a7a0001e 	sh	zero,30(sp)
 3a0:	8fbf0014 	lw	ra,20(sp)
 3a4:	87a2001e 	lh	v0,30(sp)
 3a8:	27bd0020 	addiu	sp,sp,32
 3ac:	03e00008 	jr	ra
 3b0:	00000000 	nop

000003b4 <func_80AA2E54>:
 3b4:	27bdffe8 	addiu	sp,sp,-24
 3b8:	afbf0014 	sw	ra,20(sp)
 3bc:	848e01e0 	lh	t6,480(a0)
 3c0:	8ca21c44 	lw	v0,7236(a1)
 3c4:	00003825 	move	a3,zero
 3c8:	15c00008 	bnez	t6,3ec <func_80AA2E54+0x38>
 3cc:	00000000 	nop
 3d0:	8c980154 	lw	t8,340(a0)
 3d4:	3c0f0000 	lui	t7,0x0
 3d8:	25ef0000 	addiu	t7,t7,0
 3dc:	15f80003 	bne	t7,t8,3ec <func_80AA2E54+0x38>
 3e0:	00000000 	nop
 3e4:	10000001 	b	3ec <func_80AA2E54+0x38>
 3e8:	24070001 	li	a3,1
 3ec:	8c480024 	lw	t0,36(v0)
 3f0:	44802000 	mtc1	zero,$f4
 3f4:	248501e0 	addiu	a1,a0,480
 3f8:	ac8801f8 	sw	t0,504(a0)
 3fc:	8c590028 	lw	t9,40(v0)
 400:	00003025 	move	a2,zero
 404:	ac9901fc 	sw	t9,508(a0)
 408:	8c48002c 	lw	t0,44(v0)
 40c:	e48401f4 	swc1	$f4,500(a0)
 410:	0c000000 	jal	0 <func_80AA2AA0>
 414:	ac880200 	sw	t0,512(a0)
 418:	8fbf0014 	lw	ra,20(sp)
 41c:	27bd0018 	addiu	sp,sp,24
 420:	03e00008 	jr	ra
 424:	00000000 	nop

00000428 <func_80AA2EC8>:
 428:	3c020000 	lui	v0,0x0
 42c:	24420000 	addiu	v0,v0,0
 430:	8c4e0004 	lw	t6,4(v0)
 434:	24010001 	li	at,1
 438:	afa40000 	sw	a0,0(sp)
 43c:	15c10003 	bne	t6,at,44c <func_80AA2EC8+0x24>
 440:	afa50004 	sw	a1,4(sp)
 444:	03e00008 	jr	ra
 448:	24020002 	li	v0,2
 44c:	944f0ed6 	lhu	t7,3798(v0)
 450:	31f80100 	andi	t8,t7,0x100
 454:	57000004 	bnezl	t8,468 <func_80AA2EC8+0x40>
 458:	945913fa 	lhu	t9,5114(v0)
 45c:	03e00008 	jr	ra
 460:	24020002 	li	v0,2
 464:	945913fa 	lhu	t9,5114(v0)
 468:	00001025 	move	v0,zero
 46c:	33280400 	andi	t0,t9,0x400
 470:	11000003 	beqz	t0,480 <func_80AA2EC8+0x58>
 474:	00000000 	nop
 478:	03e00008 	jr	ra
 47c:	24020001 	li	v0,1
 480:	03e00008 	jr	ra
 484:	00000000 	nop

00000488 <func_80AA2F28>:
 488:	8c8f0154 	lw	t7,340(a0)
 48c:	3c0e0000 	lui	t6,0x0
 490:	25ce0000 	addiu	t6,t6,0
 494:	51cf0004 	beql	t6,t7,4a8 <func_80AA2F28+0x20>
 498:	849801e0 	lh	t8,480(a0)
 49c:	03e00008 	jr	ra
 4a0:	00001025 	move	v0,zero
 4a4:	849801e0 	lh	t8,480(a0)
 4a8:	53000004 	beqzl	t8,4bc <func_80AA2F28+0x34>
 4ac:	8499020e 	lh	t9,526(a0)
 4b0:	03e00008 	jr	ra
 4b4:	00001025 	move	v0,zero
 4b8:	8499020e 	lh	t9,526(a0)
 4bc:	24030002 	li	v1,2
 4c0:	a480020c 	sh	zero,524(a0)
 4c4:	10790003 	beq	v1,t9,4d4 <func_80AA2F28+0x4c>
 4c8:	24020001 	li	v0,1
 4cc:	03e00008 	jr	ra
 4d0:	00001025 	move	v0,zero
 4d4:	a4830210 	sh	v1,528(a0)
 4d8:	03e00008 	jr	ra
 4dc:	00000000 	nop

000004e0 <func_80AA2F80>:
 4e0:	27bdffe8 	addiu	sp,sp,-24
 4e4:	afbf0014 	sw	ra,20(sp)
 4e8:	0c000000 	jal	0 <func_80AA2AA0>
 4ec:	afa40018 	sw	a0,24(sp)
 4f0:	14400018 	bnez	v0,554 <func_80AA2F80+0x74>
 4f4:	8fa60018 	lw	a2,24(sp)
 4f8:	84c2020c 	lh	v0,524(a2)
 4fc:	14400003 	bnez	v0,50c <func_80AA2F80+0x2c>
 500:	244effff 	addiu	t6,v0,-1
 504:	10000003 	b	514 <func_80AA2F80+0x34>
 508:	00001825 	move	v1,zero
 50c:	a4ce020c 	sh	t6,524(a2)
 510:	84c3020c 	lh	v1,524(a2)
 514:	54600010 	bnezl	v1,558 <func_80AA2F80+0x78>
 518:	8fbf0014 	lw	ra,20(sp)
 51c:	84cf020e 	lh	t7,526(a2)
 520:	2404001e 	li	a0,30
 524:	2405001e 	li	a1,30
 528:	25f80001 	addiu	t8,t7,1
 52c:	a4d8020e 	sh	t8,526(a2)
 530:	84d9020e 	lh	t9,526(a2)
 534:	2b210003 	slti	at,t9,3
 538:	54200007 	bnezl	at,558 <func_80AA2F80+0x78>
 53c:	8fbf0014 	lw	ra,20(sp)
 540:	0c000000 	jal	0 <func_80AA2AA0>
 544:	afa60018 	sw	a2,24(sp)
 548:	8fa60018 	lw	a2,24(sp)
 54c:	a4c2020c 	sh	v0,524(a2)
 550:	a4c0020e 	sh	zero,526(a2)
 554:	8fbf0014 	lw	ra,20(sp)
 558:	27bd0018 	addiu	sp,sp,24
 55c:	03e00008 	jr	ra
 560:	00000000 	nop

00000564 <func_80AA3004>:
 564:	27bdffd0 	addiu	sp,sp,-48
 568:	3c0f0000 	lui	t7,0x0
 56c:	25ef0058 	addiu	t7,t7,88
 570:	00057100 	sll	t6,a1,0x4
 574:	afbf0024 	sw	ra,36(sp)
 578:	afa40030 	sw	a0,48(sp)
 57c:	01cf1821 	addu	v1,t6,t7
 580:	8c640000 	lw	a0,0(v1)
 584:	0c000000 	jal	0 <func_80AA2AA0>
 588:	afa30028 	sw	v1,40(sp)
 58c:	44822000 	mtc1	v0,$f4
 590:	8fa30028 	lw	v1,40(sp)
 594:	8fa40030 	lw	a0,48(sp)
 598:	468021a0 	cvt.s.w	$f6,$f4
 59c:	90780008 	lbu	t8,8(v1)
 5a0:	c468000c 	lwc1	$f8,12(v1)
 5a4:	3c063f80 	lui	a2,0x3f80
 5a8:	24070000 	li	a3,0
 5ac:	8c650000 	lw	a1,0(v1)
 5b0:	e7a60010 	swc1	$f6,16(sp)
 5b4:	2484014c 	addiu	a0,a0,332
 5b8:	afb80014 	sw	t8,20(sp)
 5bc:	0c000000 	jal	0 <func_80AA2AA0>
 5c0:	e7a80018 	swc1	$f8,24(sp)
 5c4:	8fbf0024 	lw	ra,36(sp)
 5c8:	27bd0030 	addiu	sp,sp,48
 5cc:	03e00008 	jr	ra
 5d0:	00000000 	nop

000005d4 <EnMa3_Init>:
 5d4:	27bdffc0 	addiu	sp,sp,-64
 5d8:	afb00028 	sw	s0,40(sp)
 5dc:	00808025 	move	s0,a0
 5e0:	afbf002c 	sw	ra,44(sp)
 5e4:	afa50044 	sw	a1,68(sp)
 5e8:	3c060000 	lui	a2,0x0
 5ec:	24c60000 	addiu	a2,a2,0
 5f0:	24050000 	li	a1,0
 5f4:	248400b4 	addiu	a0,a0,180
 5f8:	0c000000 	jal	0 <func_80AA2AA0>
 5fc:	3c074190 	lui	a3,0x4190
 600:	3c060000 	lui	a2,0x0
 604:	24c60000 	addiu	a2,a2,0
 608:	8fa40044 	lw	a0,68(sp)
 60c:	2605014c 	addiu	a1,s0,332
 610:	00003825 	move	a3,zero
 614:	afa00010 	sw	zero,16(sp)
 618:	afa00014 	sw	zero,20(sp)
 61c:	0c000000 	jal	0 <func_80AA2AA0>
 620:	afa00018 	sw	zero,24(sp)
 624:	26050194 	addiu	a1,s0,404
 628:	afa50030 	sw	a1,48(sp)
 62c:	0c000000 	jal	0 <func_80AA2AA0>
 630:	8fa40044 	lw	a0,68(sp)
 634:	3c070000 	lui	a3,0x0
 638:	8fa50030 	lw	a1,48(sp)
 63c:	24e70020 	addiu	a3,a3,32
 640:	8fa40044 	lw	a0,68(sp)
 644:	0c000000 	jal	0 <func_80AA2AA0>
 648:	02003025 	move	a2,s0
 64c:	0c000000 	jal	0 <func_80AA2AA0>
 650:	24040016 	li	a0,22
 654:	3c060000 	lui	a2,0x0
 658:	24c6004c 	addiu	a2,a2,76
 65c:	26040098 	addiu	a0,s0,152
 660:	0c000000 	jal	0 <func_80AA2AA0>
 664:	00402825 	move	a1,v0
 668:	02002025 	move	a0,s0
 66c:	0c000000 	jal	0 <func_80AA2AA0>
 670:	8fa50044 	lw	a1,68(sp)
 674:	10400009 	beqz	v0,69c <EnMa3_Init+0xc8>
 678:	02002025 	move	a0,s0
 67c:	24010001 	li	at,1
 680:	1041000c 	beq	v0,at,6b4 <EnMa3_Init+0xe0>
 684:	02002025 	move	a0,s0
 688:	24010002 	li	at,2
 68c:	1041000f 	beq	v0,at,6cc <EnMa3_Init+0xf8>
 690:	00000000 	nop
 694:	10000012 	b	6e0 <EnMa3_Init+0x10c>
 698:	44800000 	mtc1	zero,$f0
 69c:	0c000000 	jal	0 <func_80AA2AA0>
 6a0:	00002825 	move	a1,zero
 6a4:	3c0e0000 	lui	t6,0x0
 6a8:	25ce0000 	addiu	t6,t6,0
 6ac:	1000000b 	b	6dc <EnMa3_Init+0x108>
 6b0:	ae0e0190 	sw	t6,400(s0)
 6b4:	0c000000 	jal	0 <func_80AA2AA0>
 6b8:	00002825 	move	a1,zero
 6bc:	3c0f0000 	lui	t7,0x0
 6c0:	25ef0000 	addiu	t7,t7,0
 6c4:	10000005 	b	6dc <EnMa3_Init+0x108>
 6c8:	ae0f0190 	sw	t7,400(s0)
 6cc:	0c000000 	jal	0 <func_80AA2AA0>
 6d0:	02002025 	move	a0,s0
 6d4:	10000010 	b	718 <EnMa3_Init+0x144>
 6d8:	8fbf002c 	lw	ra,44(sp)
 6dc:	44800000 	mtc1	zero,$f0
 6e0:	24180004 	li	t8,4
 6e4:	afb80014 	sw	t8,20(sp)
 6e8:	44060000 	mfc1	a2,$f0
 6ec:	44070000 	mfc1	a3,$f0
 6f0:	8fa40044 	lw	a0,68(sp)
 6f4:	02002825 	move	a1,s0
 6f8:	0c000000 	jal	0 <func_80AA2AA0>
 6fc:	e7a00010 	swc1	$f0,16(sp)
 700:	3c053c23 	lui	a1,0x3c23
 704:	34a5d70a 	ori	a1,a1,0xd70a
 708:	0c000000 	jal	0 <func_80AA2AA0>
 70c:	02002025 	move	a0,s0
 710:	a60001e0 	sh	zero,480(s0)
 714:	8fbf002c 	lw	ra,44(sp)
 718:	8fb00028 	lw	s0,40(sp)
 71c:	27bd0040 	addiu	sp,sp,64
 720:	03e00008 	jr	ra
 724:	00000000 	nop

00000728 <EnMa3_Destroy>:
 728:	27bdffe8 	addiu	sp,sp,-24
 72c:	afbf0014 	sw	ra,20(sp)
 730:	afa40018 	sw	a0,24(sp)
 734:	afa5001c 	sw	a1,28(sp)
 738:	0c000000 	jal	0 <func_80AA2AA0>
 73c:	2484014c 	addiu	a0,a0,332
 740:	8fa50018 	lw	a1,24(sp)
 744:	8fa4001c 	lw	a0,28(sp)
 748:	0c000000 	jal	0 <func_80AA2AA0>
 74c:	24a50194 	addiu	a1,a1,404
 750:	8fbf0014 	lw	ra,20(sp)
 754:	27bd0018 	addiu	sp,sp,24
 758:	03e00008 	jr	ra
 75c:	00000000 	nop

00000760 <func_80AA3200>:
 760:	afa50004 	sw	a1,4(sp)
 764:	848e01e0 	lh	t6,480(a0)
 768:	24010002 	li	at,2
 76c:	15c10007 	bne	t6,at,78c <func_80AA3200+0x2c>
 770:	00000000 	nop
 774:	8c8f0004 	lw	t7,4(a0)
 778:	3c01fffe 	lui	at,0xfffe
 77c:	3421ffff 	ori	at,at,0xffff
 780:	01e1c024 	and	t8,t7,at
 784:	ac980004 	sw	t8,4(a0)
 788:	a48001e0 	sh	zero,480(a0)
 78c:	03e00008 	jr	ra
 790:	00000000 	nop

00000794 <EnMa3_Update>:
 794:	27bdffc8 	addiu	sp,sp,-56
 798:	afb0001c 	sw	s0,28(sp)
 79c:	00808025 	move	s0,a0
 7a0:	afb10020 	sw	s1,32(sp)
 7a4:	00a08825 	move	s1,a1
 7a8:	afbf0024 	sw	ra,36(sp)
 7ac:	26060194 	addiu	a2,s0,404
 7b0:	00c02825 	move	a1,a2
 7b4:	0c000000 	jal	0 <func_80AA2AA0>
 7b8:	afa6002c 	sw	a2,44(sp)
 7bc:	3c010001 	lui	at,0x1
 7c0:	34211e60 	ori	at,at,0x1e60
 7c4:	8fa6002c 	lw	a2,44(sp)
 7c8:	02212821 	addu	a1,s1,at
 7cc:	0c000000 	jal	0 <func_80AA2AA0>
 7d0:	02202025 	move	a0,s1
 7d4:	0c000000 	jal	0 <func_80AA2AA0>
 7d8:	2604014c 	addiu	a0,s0,332
 7dc:	0c000000 	jal	0 <func_80AA2AA0>
 7e0:	02002025 	move	a0,s0
 7e4:	8e190190 	lw	t9,400(s0)
 7e8:	02002025 	move	a0,s0
 7ec:	02202825 	move	a1,s1
 7f0:	0320f809 	jalr	t9
 7f4:	00000000 	nop
 7f8:	02002025 	move	a0,s0
 7fc:	0c000000 	jal	0 <func_80AA2AA0>
 800:	02202825 	move	a1,s1
 804:	860e01d4 	lh	t6,468(s0)
 808:	3c014316 	lui	at,0x4316
 80c:	44814000 	mtc1	at,$f8
 810:	448e2000 	mtc1	t6,$f4
 814:	3c0f0000 	lui	t7,0x0
 818:	3c180000 	lui	t8,0x0
 81c:	468021a0 	cvt.s.w	$f6,$f4
 820:	27180000 	addiu	t8,t8,0
 824:	25ef0000 	addiu	t7,t7,0
 828:	afaf0010 	sw	t7,16(sp)
 82c:	afb80014 	sw	t8,20(sp)
 830:	02202025 	move	a0,s1
 834:	46083280 	add.s	$f10,$f6,$f8
 838:	02002825 	move	a1,s0
 83c:	260601e0 	addiu	a2,s0,480
 840:	44075000 	mfc1	a3,$f10
 844:	0c000000 	jal	0 <func_80AA2AA0>
 848:	00000000 	nop
 84c:	860801e0 	lh	t0,480(s0)
 850:	55000009 	bnezl	t0,878 <EnMa3_Update+0xe4>
 854:	860a020a 	lh	t2,522(s0)
 858:	8609020a 	lh	t1,522(s0)
 85c:	5120000d 	beqzl	t1,894 <EnMa3_Update+0x100>
 860:	8fbf0024 	lw	ra,36(sp)
 864:	0c000000 	jal	0 <func_80AA2AA0>
 868:	00002025 	move	a0,zero
 86c:	10000008 	b	890 <EnMa3_Update+0xfc>
 870:	a600020a 	sh	zero,522(s0)
 874:	860a020a 	lh	t2,522(s0)
 878:	55400006 	bnezl	t2,894 <EnMa3_Update+0x100>
 87c:	8fbf0024 	lw	ra,36(sp)
 880:	0c000000 	jal	0 <func_80AA2AA0>
 884:	24040001 	li	a0,1
 888:	240b0001 	li	t3,1
 88c:	a60b020a 	sh	t3,522(s0)
 890:	8fbf0024 	lw	ra,36(sp)
 894:	8fb0001c 	lw	s0,28(sp)
 898:	8fb10020 	lw	s1,32(sp)
 89c:	03e00008 	jr	ra
 8a0:	27bd0038 	addiu	sp,sp,56

000008a4 <EnMa3_OverrideLimbDraw>:
 8a4:	27bdffc8 	addiu	sp,sp,-56
 8a8:	afb00018 	sw	s0,24(sp)
 8ac:	24010003 	li	at,3
 8b0:	00a08025 	move	s0,a1
 8b4:	afbf001c 	sw	ra,28(sp)
 8b8:	afa40038 	sw	a0,56(sp)
 8bc:	10a10004 	beq	a1,at,8d0 <EnMa3_OverrideLimbDraw+0x2c>
 8c0:	afa70044 	sw	a3,68(sp)
 8c4:	24010006 	li	at,6
 8c8:	54a10003 	bnel	a1,at,8d8 <EnMa3_OverrideLimbDraw+0x34>
 8cc:	24010012 	li	at,18
 8d0:	acc00000 	sw	zero,0(a2)
 8d4:	24010012 	li	at,18
 8d8:	5601002e 	bnel	s0,at,994 <EnMa3_OverrideLimbDraw+0xf0>
 8dc:	2401000b 	li	at,11
 8e0:	44807000 	mtc1	zero,$f14
 8e4:	3c0144af 	lui	at,0x44af
 8e8:	44816000 	mtc1	at,$f12
 8ec:	44067000 	mfc1	a2,$f14
 8f0:	0c000000 	jal	0 <func_80AA2AA0>
 8f4:	24070001 	li	a3,1
 8f8:	8faf004c 	lw	t7,76(sp)
 8fc:	27ae002c 	addiu	t6,sp,44
 900:	3c014700 	lui	at,0x4700
 904:	89f901e8 	lwl	t9,488(t7)
 908:	99f901eb 	lwr	t9,491(t7)
 90c:	44814000 	mtc1	at,$f8
 910:	3c010000 	lui	at,0x0
 914:	add90000 	sw	t9,0(t6)
 918:	95f901ec 	lhu	t9,492(t7)
 91c:	24050001 	li	a1,1
 920:	a5d90004 	sh	t9,4(t6)
 924:	87a8002e 	lh	t0,46(sp)
 928:	c43000b4 	lwc1	$f16,180(at)
 92c:	44882000 	mtc1	t0,$f4
 930:	00000000 	nop
 934:	468021a0 	cvt.s.w	$f6,$f4
 938:	46083283 	div.s	$f10,$f6,$f8
 93c:	46105302 	mul.s	$f12,$f10,$f16
 940:	0c000000 	jal	0 <func_80AA2AA0>
 944:	00000000 	nop
 948:	87a9002c 	lh	t1,44(sp)
 94c:	3c014700 	lui	at,0x4700
 950:	44813000 	mtc1	at,$f6
 954:	44899000 	mtc1	t1,$f18
 958:	3c010000 	lui	at,0x0
 95c:	c42a00b8 	lwc1	$f10,184(at)
 960:	46809120 	cvt.s.w	$f4,$f18
 964:	24050001 	li	a1,1
 968:	46062203 	div.s	$f8,$f4,$f6
 96c:	460a4302 	mul.s	$f12,$f8,$f10
 970:	0c000000 	jal	0 <func_80AA2AA0>
 974:	00000000 	nop
 978:	44807000 	mtc1	zero,$f14
 97c:	3c01c4af 	lui	at,0xc4af
 980:	44816000 	mtc1	at,$f12
 984:	44067000 	mfc1	a2,$f14
 988:	0c000000 	jal	0 <func_80AA2AA0>
 98c:	24070001 	li	a3,1
 990:	2401000b 	li	at,11
 994:	16010022 	bne	s0,at,a20 <EnMa3_OverrideLimbDraw+0x17c>
 998:	8fab004c 	lw	t3,76(sp)
 99c:	896d01ee 	lwl	t5,494(t3)
 9a0:	996d01f1 	lwr	t5,497(t3)
 9a4:	27aa002c 	addiu	t2,sp,44
 9a8:	3c014700 	lui	at,0x4700
 9ac:	ad4d0000 	sw	t5,0(t2)
 9b0:	956d01f2 	lhu	t5,498(t3)
 9b4:	44812000 	mtc1	at,$f4
 9b8:	3c010000 	lui	at,0x0
 9bc:	a54d0004 	sh	t5,4(t2)
 9c0:	87ae002e 	lh	t6,46(sp)
 9c4:	c42800bc 	lwc1	$f8,188(at)
 9c8:	24050001 	li	a1,1
 9cc:	000e7823 	negu	t7,t6
 9d0:	448f8000 	mtc1	t7,$f16
 9d4:	00000000 	nop
 9d8:	468084a0 	cvt.s.w	$f18,$f16
 9dc:	46049183 	div.s	$f6,$f18,$f4
 9e0:	46083302 	mul.s	$f12,$f6,$f8
 9e4:	0c000000 	jal	0 <func_80AA2AA0>
 9e8:	00000000 	nop
 9ec:	87b8002c 	lh	t8,44(sp)
 9f0:	3c014700 	lui	at,0x4700
 9f4:	44819000 	mtc1	at,$f18
 9f8:	0018c823 	negu	t9,t8
 9fc:	44995000 	mtc1	t9,$f10
 a00:	3c010000 	lui	at,0x0
 a04:	c42600c0 	lwc1	$f6,192(at)
 a08:	46805420 	cvt.s.w	$f16,$f10
 a0c:	24050001 	li	a1,1
 a10:	46128103 	div.s	$f4,$f16,$f18
 a14:	46062302 	mul.s	$f12,$f4,$f6
 a18:	0c000000 	jal	0 <func_80AA2AA0>
 a1c:	00000000 	nop
 a20:	2401000b 	li	at,11
 a24:	12010005 	beq	s0,at,a3c <EnMa3_OverrideLimbDraw+0x198>
 a28:	8fa8004c 	lw	t0,76(sp)
 a2c:	2401000c 	li	at,12
 a30:	12010002 	beq	s0,at,a3c <EnMa3_OverrideLimbDraw+0x198>
 a34:	2401000f 	li	at,15
 a38:	16010024 	bne	s0,at,acc <EnMa3_OverrideLimbDraw+0x228>
 a3c:	00104880 	sll	t1,s0,0x2
 a40:	01304823 	subu	t1,t1,s0
 a44:	00094840 	sll	t1,t1,0x1
 a48:	01091821 	addu	v1,t0,t1
 a4c:	84640214 	lh	a0,532(v1)
 a50:	0c000000 	jal	0 <func_80AA2AA0>
 a54:	afa30024 	sw	v1,36(sp)
 a58:	8fa20048 	lw	v0,72(sp)
 a5c:	3c014348 	lui	at,0x4348
 a60:	44818000 	mtc1	at,$f16
 a64:	844a0002 	lh	t2,2(v0)
 a68:	8fa30024 	lw	v1,36(sp)
 a6c:	46100482 	mul.s	$f18,$f0,$f16
 a70:	448a4000 	mtc1	t2,$f8
 a74:	00000000 	nop
 a78:	468042a0 	cvt.s.w	$f10,$f8
 a7c:	46125100 	add.s	$f4,$f10,$f18
 a80:	4600218d 	trunc.w.s	$f6,$f4
 a84:	440c3000 	mfc1	t4,$f6
 a88:	00000000 	nop
 a8c:	a44c0002 	sh	t4,2(v0)
 a90:	0c000000 	jal	0 <func_80AA2AA0>
 a94:	84640216 	lh	a0,534(v1)
 a98:	8fa20048 	lw	v0,72(sp)
 a9c:	3c014348 	lui	at,0x4348
 aa0:	44815000 	mtc1	at,$f10
 aa4:	844d0004 	lh	t5,4(v0)
 aa8:	460a0482 	mul.s	$f18,$f0,$f10
 aac:	448d4000 	mtc1	t5,$f8
 ab0:	00000000 	nop
 ab4:	46804420 	cvt.s.w	$f16,$f8
 ab8:	46128100 	add.s	$f4,$f16,$f18
 abc:	4600218d 	trunc.w.s	$f6,$f4
 ac0:	440f3000 	mfc1	t7,$f6
 ac4:	00000000 	nop
 ac8:	a44f0004 	sh	t7,4(v0)
 acc:	8fbf001c 	lw	ra,28(sp)
 ad0:	8fb00018 	lw	s0,24(sp)
 ad4:	27bd0038 	addiu	sp,sp,56
 ad8:	03e00008 	jr	ra
 adc:	00001025 	move	v0,zero

00000ae0 <EnMa3_PostLimbDraw>:
 ae0:	27bdffb8 	addiu	sp,sp,-72
 ae4:	3c0f0000 	lui	t7,0x0
 ae8:	afbf0014 	sw	ra,20(sp)
 aec:	afa40048 	sw	a0,72(sp)
 af0:	afa5004c 	sw	a1,76(sp)
 af4:	afa60050 	sw	a2,80(sp)
 af8:	afa70054 	sw	a3,84(sp)
 afc:	25ef00a8 	addiu	t7,t7,168
 b00:	8df90000 	lw	t9,0(t7)
 b04:	27ae0038 	addiu	t6,sp,56
 b08:	8df80004 	lw	t8,4(t7)
 b0c:	add90000 	sw	t9,0(t6)
 b10:	8df90008 	lw	t9,8(t7)
 b14:	add80004 	sw	t8,4(t6)
 b18:	3c060000 	lui	a2,0x0
 b1c:	add90008 	sw	t9,8(t6)
 b20:	8fa80048 	lw	t0,72(sp)
 b24:	24c60000 	addiu	a2,a2,0
 b28:	2407039f 	li	a3,927
 b2c:	8d050000 	lw	a1,0(t0)
 b30:	27a40024 	addiu	a0,sp,36
 b34:	0c000000 	jal	0 <func_80AA2AA0>
 b38:	afa50034 	sw	a1,52(sp)
 b3c:	8fa9004c 	lw	t1,76(sp)
 b40:	8fa50058 	lw	a1,88(sp)
 b44:	24010012 	li	at,18
 b48:	15210003 	bne	t1,at,b58 <EnMa3_PostLimbDraw+0x78>
 b4c:	24a50038 	addiu	a1,a1,56
 b50:	0c000000 	jal	0 <func_80AA2AA0>
 b54:	27a40038 	addiu	a0,sp,56
 b58:	8faa004c 	lw	t2,76(sp)
 b5c:	2401000e 	li	at,14
 b60:	3c060000 	lui	a2,0x0
 b64:	15410010 	bne	t2,at,ba8 <EnMa3_PostLimbDraw+0xc8>
 b68:	24c60010 	addiu	a2,a2,16
 b6c:	8fac0058 	lw	t4,88(sp)
 b70:	3c0b0000 	lui	t3,0x0
 b74:	256b0000 	addiu	t3,t3,0
 b78:	8d8d0154 	lw	t5,340(t4)
 b7c:	8fa40034 	lw	a0,52(sp)
 b80:	3c0fde00 	lui	t7,0xde00
 b84:	556d0009 	bnel	t3,t5,bac <EnMa3_PostLimbDraw+0xcc>
 b88:	8fb90048 	lw	t9,72(sp)
 b8c:	8c8302c0 	lw	v1,704(a0)
 b90:	3c180000 	lui	t8,0x0
 b94:	27180000 	addiu	t8,t8,0
 b98:	246e0008 	addiu	t6,v1,8
 b9c:	ac8e02c0 	sw	t6,704(a0)
 ba0:	ac780004 	sw	t8,4(v1)
 ba4:	ac6f0000 	sw	t7,0(v1)
 ba8:	8fb90048 	lw	t9,72(sp)
 bac:	27a40024 	addiu	a0,sp,36
 bb0:	240703b6 	li	a3,950
 bb4:	0c000000 	jal	0 <func_80AA2AA0>
 bb8:	8f250000 	lw	a1,0(t9)
 bbc:	8fbf0014 	lw	ra,20(sp)
 bc0:	27bd0048 	addiu	sp,sp,72
 bc4:	03e00008 	jr	ra
 bc8:	00000000 	nop

00000bcc <EnMa3_Draw>:
 bcc:	27bdff98 	addiu	sp,sp,-104
 bd0:	afb20030 	sw	s2,48(sp)
 bd4:	00a09025 	move	s2,a1
 bd8:	afbf0034 	sw	ra,52(sp)
 bdc:	afb1002c 	sw	s1,44(sp)
 be0:	afb00028 	sw	s0,40(sp)
 be4:	8ca50000 	lw	a1,0(a1)
 be8:	00808025 	move	s0,a0
 bec:	3c060000 	lui	a2,0x0
 bf0:	24c60020 	addiu	a2,a2,32
 bf4:	27a40044 	addiu	a0,sp,68
 bf8:	240703d2 	li	a3,978
 bfc:	0c000000 	jal	0 <func_80AA2AA0>
 c00:	00a08825 	move	s1,a1
 c04:	864e07a0 	lh	t6,1952(s2)
 c08:	26040024 	addiu	a0,s0,36
 c0c:	000e7880 	sll	t7,t6,0x2
 c10:	024fc021 	addu	t8,s2,t7
 c14:	8f020790 	lw	v0,1936(t8)
 c18:	0c000000 	jal	0 <func_80AA2AA0>
 c1c:	2445005c 	addiu	a1,v0,92
 c20:	46000306 	mov.s	$f12,$f0
 c24:	0c000000 	jal	0 <func_80AA2AA0>
 c28:	2405002f 	li	a1,47
 c2c:	0c000000 	jal	0 <func_80AA2AA0>
 c30:	8e440000 	lw	a0,0(s2)
 c34:	8e2302c0 	lw	v1,704(s1)
 c38:	3c08db06 	lui	t0,0xdb06
 c3c:	35080024 	ori	t0,t0,0x24
 c40:	24790008 	addiu	t9,v1,8
 c44:	ae3902c0 	sw	t9,704(s1)
 c48:	ac680000 	sw	t0,0(v1)
 c4c:	86090210 	lh	t1,528(s0)
 c50:	3c040000 	lui	a0,0x0
 c54:	3c060000 	lui	a2,0x0
 c58:	00095080 	sll	t2,t1,0x2
 c5c:	008a2021 	addu	a0,a0,t2
 c60:	8c8400b4 	lw	a0,180(a0)
 c64:	24c60000 	addiu	a2,a2,0
 c68:	3c0500ff 	lui	a1,0xff
 c6c:	00046100 	sll	t4,a0,0x4
 c70:	000c6f02 	srl	t5,t4,0x1c
 c74:	000d7080 	sll	t6,t5,0x2
 c78:	00ce7821 	addu	t7,a2,t6
 c7c:	8df80000 	lw	t8,0(t7)
 c80:	34a5ffff 	ori	a1,a1,0xffff
 c84:	00855824 	and	t3,a0,a1
 c88:	3c078000 	lui	a3,0x8000
 c8c:	0178c821 	addu	t9,t3,t8
 c90:	03274021 	addu	t0,t9,a3
 c94:	ac680004 	sw	t0,4(v1)
 c98:	8e2302c0 	lw	v1,704(s1)
 c9c:	3c0adb06 	lui	t2,0xdb06
 ca0:	354a0020 	ori	t2,t2,0x20
 ca4:	24690008 	addiu	t1,v1,8
 ca8:	ae2902c0 	sw	t1,704(s1)
 cac:	ac6a0000 	sw	t2,0(v1)
 cb0:	860c020e 	lh	t4,526(s0)
 cb4:	3c040000 	lui	a0,0x0
 cb8:	000c6880 	sll	t5,t4,0x2
 cbc:	008d2021 	addu	a0,a0,t5
 cc0:	8c8400c0 	lw	a0,192(a0)
 cc4:	3c0d0000 	lui	t5,0x0
 cc8:	3c0c0000 	lui	t4,0x0
 ccc:	00047900 	sll	t7,a0,0x4
 cd0:	000f5f02 	srl	t3,t7,0x1c
 cd4:	000bc080 	sll	t8,t3,0x2
 cd8:	00d8c821 	addu	t9,a2,t8
 cdc:	8f280000 	lw	t0,0(t9)
 ce0:	00857024 	and	t6,a0,a1
 ce4:	258c0000 	addiu	t4,t4,0
 ce8:	01c84821 	addu	t1,t6,t0
 cec:	01275021 	addu	t2,t1,a3
 cf0:	ac6a0004 	sw	t2,4(v1)
 cf4:	9207014e 	lbu	a3,334(s0)
 cf8:	8e06016c 	lw	a2,364(s0)
 cfc:	8e050150 	lw	a1,336(s0)
 d00:	25ad0000 	addiu	t5,t5,0
 d04:	afad0014 	sw	t5,20(sp)
 d08:	afb00018 	sw	s0,24(sp)
 d0c:	afac0010 	sw	t4,16(sp)
 d10:	0c000000 	jal	0 <func_80AA2AA0>
 d14:	02402025 	move	a0,s2
 d18:	3c060000 	lui	a2,0x0
 d1c:	24c60030 	addiu	a2,a2,48
 d20:	27a40044 	addiu	a0,sp,68
 d24:	8e450000 	lw	a1,0(s2)
 d28:	0c000000 	jal	0 <func_80AA2AA0>
 d2c:	240703f5 	li	a3,1013
 d30:	8fbf0034 	lw	ra,52(sp)
 d34:	8fb00028 	lw	s0,40(sp)
 d38:	8fb1002c 	lw	s1,44(sp)
 d3c:	8fb20030 	lw	s2,48(sp)
 d40:	03e00008 	jr	ra
 d44:	27bd0068 	addiu	sp,sp,104
	...
