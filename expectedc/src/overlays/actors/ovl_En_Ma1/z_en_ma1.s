
build/src/overlays/actors/ovl_En_Ma1/z_en_ma1.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnMa1_GetText>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa5001c 	sw	a1,28(sp)
   c:	0c000000 	jal	0 <EnMa1_GetText>
  10:	24050017 	li	a1,23
  14:	10400003 	beqz	v0,24 <EnMa1_GetText+0x24>
  18:	3043ffff 	andi	v1,v0,0xffff
  1c:	1000002e 	b	d8 <EnMa1_GetText+0xd8>
  20:	00601025 	move	v0,v1
  24:	3c030000 	lui	v1,0x0
  28:	24630000 	addiu	v1,v1,0
  2c:	3c0e0000 	lui	t6,0x0
  30:	8dce0034 	lw	t6,52(t6)
  34:	8c6f00a4 	lw	t7,164(v1)
  38:	01cfc024 	and	t8,t6,t7
  3c:	53000004 	beqzl	t8,50 <EnMa1_GetText+0x50>
  40:	94620ed6 	lhu	v0,3798(v1)
  44:	10000024 	b	d8 <EnMa1_GetText+0xd8>
  48:	2402204a 	li	v0,8266
  4c:	94620ed6 	lhu	v0,3798(v1)
  50:	30590040 	andi	t9,v0,0x40
  54:	13200003 	beqz	t9,64 <EnMa1_GetText+0x64>
  58:	30480020 	andi	t0,v0,0x20
  5c:	1000001e 	b	d8 <EnMa1_GetText+0xd8>
  60:	24022049 	li	v0,8265
  64:	11000009 	beqz	t0,8c <EnMa1_GetText+0x8c>
  68:	304b0010 	andi	t3,v0,0x10
  6c:	94690f08 	lhu	t1,3848(v1)
  70:	312a0020 	andi	t2,t1,0x20
  74:	11400003 	beqz	t2,84 <EnMa1_GetText+0x84>
  78:	00000000 	nop
  7c:	10000016 	b	d8 <EnMa1_GetText+0xd8>
  80:	24022049 	li	v0,8265
  84:	10000014 	b	d8 <EnMa1_GetText+0xd8>
  88:	24022048 	li	v0,8264
  8c:	11600003 	beqz	t3,9c <EnMa1_GetText+0x9c>
  90:	304c0004 	andi	t4,v0,0x4
  94:	10000010 	b	d8 <EnMa1_GetText+0xd8>
  98:	24022047 	li	v0,8263
  9c:	51800004 	beqzl	t4,b0 <EnMa1_GetText+0xb0>
  a0:	94620f08 	lhu	v0,3848(v1)
  a4:	1000000c 	b	d8 <EnMa1_GetText+0xd8>
  a8:	24022044 	li	v0,8260
  ac:	94620f08 	lhu	v0,3848(v1)
  b0:	304d0010 	andi	t5,v0,0x10
  b4:	11a00007 	beqz	t5,d4 <EnMa1_GetText+0xd4>
  b8:	304e0800 	andi	t6,v0,0x800
  bc:	11c00003 	beqz	t6,cc <EnMa1_GetText+0xcc>
  c0:	00000000 	nop
  c4:	10000004 	b	d8 <EnMa1_GetText+0xd8>
  c8:	24022043 	li	v0,8259
  cc:	10000002 	b	d8 <EnMa1_GetText+0xd8>
  d0:	24022042 	li	v0,8258
  d4:	24022041 	li	v0,8257
  d8:	8fbf0014 	lw	ra,20(sp)
  dc:	27bd0018 	addiu	sp,sp,24
  e0:	03e00008 	jr	ra
  e4:	00000000 	nop

000000e8 <func_80AA0778>:
  e8:	27bdffe0 	addiu	sp,sp,-32
  ec:	afbf0014 	sw	ra,20(sp)
  f0:	00803025 	move	a2,a0
  f4:	24030001 	li	v1,1
  f8:	afa50024 	sw	a1,36(sp)
  fc:	a7a3001e 	sh	v1,30(sp)
 100:	afa60020 	sw	a2,32(sp)
 104:	0c000000 	jal	0 <EnMa1_GetText>
 108:	248420d8 	addiu	a0,a0,8408
 10c:	2c41000a 	sltiu	at,v0,10
 110:	87a3001e 	lh	v1,30(sp)
 114:	10200042 	beqz	at,220 <func_80AA0778+0x138>
 118:	8fa60020 	lw	a2,32(sp)
 11c:	00027080 	sll	t6,v0,0x2
 120:	3c010000 	lui	at,0x0
 124:	002e0821 	addu	at,at,t6
 128:	8c2e0020 	lw	t6,32(at)
 12c:	01c00008 	jr	t6
 130:	00000000 	nop
 134:	8faf0024 	lw	t7,36(sp)
 138:	95f8010e 	lhu	t8,270(t7)
 13c:	2719dfbf 	addiu	t9,t8,-8257
 140:	2f210021 	sltiu	at,t9,33
 144:	10200027 	beqz	at,1e4 <func_80AA0778+0xfc>
 148:	0019c880 	sll	t9,t9,0x2
 14c:	3c010000 	lui	at,0x0
 150:	00390821 	addu	at,at,t9
 154:	8c390048 	lw	t9,72(at)
 158:	03200008 	jr	t9
 15c:	00000000 	nop
 160:	3c020000 	lui	v0,0x0
 164:	24420000 	addiu	v0,v0,0
 168:	94480f08 	lhu	t0,3848(v0)
 16c:	944a0ed6 	lhu	t2,3798(v0)
 170:	00001825 	move	v1,zero
 174:	35090010 	ori	t1,t0,0x10
 178:	354b0001 	ori	t3,t2,0x1
 17c:	a4490f08 	sh	t1,3848(v0)
 180:	10000027 	b	220 <func_80AA0778+0x138>
 184:	a44b0ed6 	sh	t3,3798(v0)
 188:	3c020000 	lui	v0,0x0
 18c:	24420000 	addiu	v0,v0,0
 190:	944c0ed6 	lhu	t4,3798(v0)
 194:	00001825 	move	v1,zero
 198:	358d0020 	ori	t5,t4,0x20
 19c:	10000020 	b	220 <func_80AA0778+0x138>
 1a0:	a44d0ed6 	sh	t5,3798(v0)
 1a4:	3c020000 	lui	v0,0x0
 1a8:	24420000 	addiu	v0,v0,0
 1ac:	944e0f08 	lhu	t6,3848(v0)
 1b0:	00001825 	move	v1,zero
 1b4:	35cf0020 	ori	t7,t6,0x20
 1b8:	10000019 	b	220 <func_80AA0778+0x138>
 1bc:	a44f0f08 	sh	t7,3848(v0)
 1c0:	3c020000 	lui	v0,0x0
 1c4:	24420000 	addiu	v0,v0,0
 1c8:	94580ed6 	lhu	t8,3798(v0)
 1cc:	00001825 	move	v1,zero
 1d0:	37190040 	ori	t9,t8,0x40
 1d4:	10000012 	b	220 <func_80AA0778+0x138>
 1d8:	a4590ed6 	sh	t9,3798(v0)
 1dc:	10000010 	b	220 <func_80AA0778+0x138>
 1e0:	24030002 	li	v1,2
 1e4:	1000000e 	b	220 <func_80AA0778+0x138>
 1e8:	00001825 	move	v1,zero
 1ec:	00c02025 	move	a0,a2
 1f0:	0c000000 	jal	0 <EnMa1_GetText>
 1f4:	a7a3001e 	sh	v1,30(sp)
 1f8:	10400009 	beqz	v0,220 <func_80AA0778+0x138>
 1fc:	87a3001e 	lh	v1,30(sp)
 200:	10000007 	b	220 <func_80AA0778+0x138>
 204:	24030002 	li	v1,2
 208:	00c02025 	move	a0,a2
 20c:	0c000000 	jal	0 <EnMa1_GetText>
 210:	a7a3001e 	sh	v1,30(sp)
 214:	10400002 	beqz	v0,220 <func_80AA0778+0x138>
 218:	87a3001e 	lh	v1,30(sp)
 21c:	24030003 	li	v1,3
 220:	8fbf0014 	lw	ra,20(sp)
 224:	27bd0020 	addiu	sp,sp,32
 228:	00601025 	move	v0,v1
 22c:	03e00008 	jr	ra
 230:	00000000 	nop

00000234 <func_80AA08C4>:
 234:	848200b8 	lh	v0,184(a0)
 238:	24060003 	li	a2,3
 23c:	3c040000 	lui	a0,0x0
 240:	14c20007 	bne	a2,v0,260 <func_80AA08C4+0x2c>
 244:	24840000 	addiu	a0,a0,0
 248:	8c8e1360 	lw	t6,4960(a0)
 24c:	24010005 	li	at,5
 250:	15c10003 	bne	t6,at,260 <func_80AA08C4+0x2c>
 254:	00000000 	nop
 258:	03e00008 	jr	ra
 25c:	24020001 	li	v0,1
 260:	3c040000 	lui	a0,0x0
 264:	24840000 	addiu	a0,a0,0
 268:	8c8f0004 	lw	t7,4(a0)
 26c:	24070001 	li	a3,1
 270:	50ef0004 	beql	a3,t7,284 <func_80AA08C4+0x50>
 274:	84a300a4 	lh	v1,164(a1)
 278:	03e00008 	jr	ra
 27c:	00001025 	move	v0,zero
 280:	84a300a4 	lh	v1,164(a1)
 284:	24010021 	li	at,33
 288:	10610003 	beq	v1,at,298 <func_80AA08C4+0x64>
 28c:	24010020 	li	at,32
 290:	5461000c 	bnel	v1,at,2c4 <func_80AA08C4+0x90>
 294:	2401005f 	li	at,95
 298:	94980ed6 	lhu	t8,3798(a0)
 29c:	33190010 	andi	t9,t8,0x10
 2a0:	57200008 	bnezl	t9,2c4 <func_80AA08C4+0x90>
 2a4:	2401005f 	li	at,95
 2a8:	94880f08 	lhu	t0,3848(a0)
 2ac:	31090800 	andi	t1,t0,0x800
 2b0:	55200004 	bnezl	t1,2c4 <func_80AA08C4+0x90>
 2b4:	2401005f 	li	at,95
 2b8:	03e00008 	jr	ra
 2bc:	24020001 	li	v0,1
 2c0:	2401005f 	li	at,95
 2c4:	5461000f 	bnel	v1,at,304 <func_80AA08C4+0xd0>
 2c8:	2401004c 	li	at,76
 2cc:	948a0ed6 	lhu	t2,3798(a0)
 2d0:	314b0010 	andi	t3,t2,0x10
 2d4:	5560000b 	bnezl	t3,304 <func_80AA08C4+0xd0>
 2d8:	2401004c 	li	at,76
 2dc:	94830f08 	lhu	v1,3848(a0)
 2e0:	00001025 	move	v0,zero
 2e4:	306c0800 	andi	t4,v1,0x800
 2e8:	11800003 	beqz	t4,2f8 <func_80AA08C4+0xc4>
 2ec:	346d0800 	ori	t5,v1,0x800
 2f0:	03e00008 	jr	ra
 2f4:	24020001 	li	v0,1
 2f8:	03e00008 	jr	ra
 2fc:	a48d0f08 	sh	t5,3848(a0)
 300:	2401004c 	li	at,76
 304:	5461000b 	bnel	v1,at,334 <func_80AA08C4+0x100>
 308:	24010063 	li	at,99
 30c:	8c8e0010 	lw	t6,16(a0)
 310:	54ee0008 	bnel	a3,t6,334 <func_80AA08C4+0x100>
 314:	24010063 	li	at,99
 318:	948f0ed6 	lhu	t7,3798(a0)
 31c:	31f80010 	andi	t8,t7,0x10
 320:	53000004 	beqzl	t8,334 <func_80AA08C4+0x100>
 324:	24010063 	li	at,99
 328:	03e00008 	jr	ra
 32c:	24020001 	li	v0,1
 330:	24010063 	li	at,99
 334:	10610003 	beq	v1,at,344 <func_80AA08C4+0x110>
 338:	00000000 	nop
 33c:	03e00008 	jr	ra
 340:	00001025 	move	v0,zero
 344:	54c2000b 	bnel	a2,v0,374 <func_80AA08C4+0x140>
 348:	00001025 	move	v0,zero
 34c:	8c990010 	lw	t9,16(a0)
 350:	57200008 	bnezl	t9,374 <func_80AA08C4+0x140>
 354:	00001025 	move	v0,zero
 358:	94880ed6 	lhu	t0,3798(a0)
 35c:	31090010 	andi	t1,t0,0x10
 360:	51200004 	beqzl	t1,374 <func_80AA08C4+0x140>
 364:	00001025 	move	v0,zero
 368:	03e00008 	jr	ra
 36c:	24020001 	li	v0,1
 370:	00001025 	move	v0,zero
 374:	03e00008 	jr	ra
 378:	00000000 	nop

0000037c <func_80AA0A0C>:
 37c:	27bdffe8 	addiu	sp,sp,-24
 380:	afbf0014 	sw	ra,20(sp)
 384:	848201e2 	lh	v0,482(a0)
 388:	00803025 	move	a2,a0
 38c:	14400003 	bnez	v0,39c <func_80AA0A0C+0x20>
 390:	244effff 	addiu	t6,v0,-1
 394:	10000003 	b	3a4 <func_80AA0A0C+0x28>
 398:	00001825 	move	v1,zero
 39c:	a4ce01e2 	sh	t6,482(a2)
 3a0:	84c301e2 	lh	v1,482(a2)
 3a4:	54600010 	bnezl	v1,3e8 <func_80AA0A0C+0x6c>
 3a8:	8fbf0014 	lw	ra,20(sp)
 3ac:	84cf01e4 	lh	t7,484(a2)
 3b0:	2404001e 	li	a0,30
 3b4:	2405001e 	li	a1,30
 3b8:	25f80001 	addiu	t8,t7,1
 3bc:	a4d801e4 	sh	t8,484(a2)
 3c0:	84d901e4 	lh	t9,484(a2)
 3c4:	2b210003 	slti	at,t9,3
 3c8:	54200007 	bnezl	at,3e8 <func_80AA0A0C+0x6c>
 3cc:	8fbf0014 	lw	ra,20(sp)
 3d0:	0c000000 	jal	0 <EnMa1_GetText>
 3d4:	afa60018 	sw	a2,24(sp)
 3d8:	8fa60018 	lw	a2,24(sp)
 3dc:	a4c201e2 	sh	v0,482(a2)
 3e0:	a4c001e4 	sh	zero,484(a2)
 3e4:	8fbf0014 	lw	ra,20(sp)
 3e8:	27bd0018 	addiu	sp,sp,24
 3ec:	03e00008 	jr	ra
 3f0:	00000000 	nop

000003f4 <func_80AA0A84>:
 3f4:	27bdffd0 	addiu	sp,sp,-48
 3f8:	3c0f0000 	lui	t7,0x0
 3fc:	25ef0000 	addiu	t7,t7,0
 400:	00057100 	sll	t6,a1,0x4
 404:	afbf0024 	sw	ra,36(sp)
 408:	afa40030 	sw	a0,48(sp)
 40c:	01cf1821 	addu	v1,t6,t7
 410:	8c640000 	lw	a0,0(v1)
 414:	0c000000 	jal	0 <EnMa1_GetText>
 418:	afa30028 	sw	v1,40(sp)
 41c:	44822000 	mtc1	v0,$f4
 420:	8fa30028 	lw	v1,40(sp)
 424:	8fa40030 	lw	a0,48(sp)
 428:	468021a0 	cvt.s.w	$f6,$f4
 42c:	90780008 	lbu	t8,8(v1)
 430:	c468000c 	lwc1	$f8,12(v1)
 434:	3c063f80 	lui	a2,0x3f80
 438:	24070000 	li	a3,0
 43c:	8c650000 	lw	a1,0(v1)
 440:	e7a60010 	swc1	$f6,16(sp)
 444:	2484014c 	addiu	a0,a0,332
 448:	afb80014 	sw	t8,20(sp)
 44c:	0c000000 	jal	0 <EnMa1_GetText>
 450:	e7a80018 	swc1	$f8,24(sp)
 454:	8fbf0024 	lw	ra,36(sp)
 458:	27bd0030 	addiu	sp,sp,48
 45c:	03e00008 	jr	ra
 460:	00000000 	nop

00000464 <func_80AA0AF4>:
 464:	27bdffe8 	addiu	sp,sp,-24
 468:	afbf0014 	sw	ra,20(sp)
 46c:	848e01e8 	lh	t6,488(a0)
 470:	8ca21c44 	lw	v0,7236(a1)
 474:	00003825 	move	a3,zero
 478:	15c00008 	bnez	t6,49c <func_80AA0AF4+0x38>
 47c:	00000000 	nop
 480:	8c980154 	lw	t8,340(a0)
 484:	3c0f0000 	lui	t7,0x0
 488:	25ef0000 	addiu	t7,t7,0
 48c:	15f80003 	bne	t7,t8,49c <func_80AA0AF4+0x38>
 490:	00000000 	nop
 494:	10000001 	b	49c <func_80AA0AF4+0x38>
 498:	24070001 	li	a3,1
 49c:	8c480024 	lw	t0,36(v0)
 4a0:	3c01c120 	lui	at,0xc120
 4a4:	44813000 	mtc1	at,$f6
 4a8:	ac880200 	sw	t0,512(a0)
 4ac:	8c590028 	lw	t9,40(v0)
 4b0:	248501e8 	addiu	a1,a0,488
 4b4:	00003025 	move	a2,zero
 4b8:	ac990204 	sw	t9,516(a0)
 4bc:	c4840204 	lwc1	$f4,516(a0)
 4c0:	8c48002c 	lw	t0,44(v0)
 4c4:	46062201 	sub.s	$f8,$f4,$f6
 4c8:	ac880208 	sw	t0,520(a0)
 4cc:	0c000000 	jal	0 <EnMa1_GetText>
 4d0:	e4880204 	swc1	$f8,516(a0)
 4d4:	8fbf0014 	lw	ra,20(sp)
 4d8:	27bd0018 	addiu	sp,sp,24
 4dc:	03e00008 	jr	ra
 4e0:	00000000 	nop

000004e4 <func_80AA0B74>:
 4e4:	27bdffe8 	addiu	sp,sp,-24
 4e8:	afbf0014 	sw	ra,20(sp)
 4ec:	8c8f0154 	lw	t7,340(a0)
 4f0:	3c0e0000 	lui	t6,0x0
 4f4:	25ce0000 	addiu	t6,t6,0
 4f8:	15cf0013 	bne	t6,t7,548 <func_80AA0B74+0x64>
 4fc:	00802825 	move	a1,a0
 500:	849801e8 	lh	t8,488(a0)
 504:	5700000a 	bnezl	t8,530 <func_80AA0B74+0x4c>
 508:	84a801e0 	lh	t0,480(a1)
 50c:	849901e0 	lh	t9,480(a0)
 510:	5320000e 	beqzl	t9,54c <func_80AA0B74+0x68>
 514:	8fbf0014 	lw	ra,20(sp)
 518:	a48001e0 	sh	zero,480(a0)
 51c:	0c000000 	jal	0 <EnMa1_GetText>
 520:	00002025 	move	a0,zero
 524:	10000009 	b	54c <func_80AA0B74+0x68>
 528:	8fbf0014 	lw	ra,20(sp)
 52c:	84a801e0 	lh	t0,480(a1)
 530:	24090001 	li	t1,1
 534:	24040001 	li	a0,1
 538:	55000004 	bnezl	t0,54c <func_80AA0B74+0x68>
 53c:	8fbf0014 	lw	ra,20(sp)
 540:	0c000000 	jal	0 <EnMa1_GetText>
 544:	a4a901e0 	sh	t1,480(a1)
 548:	8fbf0014 	lw	ra,20(sp)
 54c:	27bd0018 	addiu	sp,sp,24
 550:	03e00008 	jr	ra
 554:	00000000 	nop

00000558 <EnMa1_Init>:
 558:	27bdffc0 	addiu	sp,sp,-64
 55c:	afb00028 	sw	s0,40(sp)
 560:	00808025 	move	s0,a0
 564:	afbf002c 	sw	ra,44(sp)
 568:	afa50044 	sw	a1,68(sp)
 56c:	3c060000 	lui	a2,0x0
 570:	24c60000 	addiu	a2,a2,0
 574:	24050000 	li	a1,0
 578:	248400b4 	addiu	a0,a0,180
 57c:	0c000000 	jal	0 <EnMa1_GetText>
 580:	3c074190 	lui	a3,0x4190
 584:	3c060000 	lui	a2,0x0
 588:	24c60000 	addiu	a2,a2,0
 58c:	8fa40044 	lw	a0,68(sp)
 590:	2605014c 	addiu	a1,s0,332
 594:	00003825 	move	a3,zero
 598:	afa00010 	sw	zero,16(sp)
 59c:	afa00014 	sw	zero,20(sp)
 5a0:	0c000000 	jal	0 <EnMa1_GetText>
 5a4:	afa00018 	sw	zero,24(sp)
 5a8:	26050194 	addiu	a1,s0,404
 5ac:	afa50030 	sw	a1,48(sp)
 5b0:	0c000000 	jal	0 <EnMa1_GetText>
 5b4:	8fa40044 	lw	a0,68(sp)
 5b8:	3c070000 	lui	a3,0x0
 5bc:	8fa50030 	lw	a1,48(sp)
 5c0:	24e70020 	addiu	a3,a3,32
 5c4:	8fa40044 	lw	a0,68(sp)
 5c8:	0c000000 	jal	0 <EnMa1_GetText>
 5cc:	02003025 	move	a2,s0
 5d0:	0c000000 	jal	0 <EnMa1_GetText>
 5d4:	24040016 	li	a0,22
 5d8:	3c060000 	lui	a2,0x0
 5dc:	24c60000 	addiu	a2,a2,0
 5e0:	26040098 	addiu	a0,s0,152
 5e4:	0c000000 	jal	0 <EnMa1_GetText>
 5e8:	00402825 	move	a1,v0
 5ec:	02002025 	move	a0,s0
 5f0:	0c000000 	jal	0 <EnMa1_GetText>
 5f4:	8fa50044 	lw	a1,68(sp)
 5f8:	14400005 	bnez	v0,610 <EnMa1_Init+0xb8>
 5fc:	8fa40044 	lw	a0,68(sp)
 600:	0c000000 	jal	0 <EnMa1_GetText>
 604:	02002025 	move	a0,s0
 608:	10000029 	b	6b0 <EnMa1_Init+0x158>
 60c:	8fbf002c 	lw	ra,44(sp)
 610:	44800000 	mtc1	zero,$f0
 614:	240e0004 	li	t6,4
 618:	afae0014 	sw	t6,20(sp)
 61c:	44060000 	mfc1	a2,$f0
 620:	44070000 	mfc1	a3,$f0
 624:	02002825 	move	a1,s0
 628:	0c000000 	jal	0 <EnMa1_GetText>
 62c:	e7a00010 	swc1	$f0,16(sp)
 630:	3c053c23 	lui	a1,0x3c23
 634:	34a5d70a 	ori	a1,a1,0xd70a
 638:	0c000000 	jal	0 <EnMa1_GetText>
 63c:	02002025 	move	a0,s0
 640:	3c020000 	lui	v0,0x0
 644:	240f0006 	li	t7,6
 648:	24420000 	addiu	v0,v0,0
 64c:	a20f001f 	sb	t7,31(s0)
 650:	a60001e8 	sh	zero,488(s0)
 654:	94580ed6 	lhu	t8,3798(v0)
 658:	3c0b0000 	lui	t3,0x0
 65c:	3c080000 	lui	t0,0x0
 660:	33190010 	andi	t9,t8,0x10
 664:	13200008 	beqz	t9,688 <EnMa1_Init+0x130>
 668:	256b0000 	addiu	t3,t3,0
 66c:	8d080034 	lw	t0,52(t0)
 670:	8c4900a4 	lw	t1,164(v0)
 674:	3c0c0000 	lui	t4,0x0
 678:	258c0000 	addiu	t4,t4,0
 67c:	01095024 	and	t2,t0,t1
 680:	11400007 	beqz	t2,6a0 <EnMa1_Init+0x148>
 684:	02002025 	move	a0,s0
 688:	ae0b0190 	sw	t3,400(s0)
 68c:	02002025 	move	a0,s0
 690:	0c000000 	jal	0 <EnMa1_GetText>
 694:	24050002 	li	a1,2
 698:	10000005 	b	6b0 <EnMa1_Init+0x158>
 69c:	8fbf002c 	lw	ra,44(sp)
 6a0:	ae0c0190 	sw	t4,400(s0)
 6a4:	0c000000 	jal	0 <EnMa1_GetText>
 6a8:	24050002 	li	a1,2
 6ac:	8fbf002c 	lw	ra,44(sp)
 6b0:	8fb00028 	lw	s0,40(sp)
 6b4:	27bd0040 	addiu	sp,sp,64
 6b8:	03e00008 	jr	ra
 6bc:	00000000 	nop

000006c0 <EnMa1_Destroy>:
 6c0:	27bdffe8 	addiu	sp,sp,-24
 6c4:	afbf0014 	sw	ra,20(sp)
 6c8:	afa40018 	sw	a0,24(sp)
 6cc:	afa5001c 	sw	a1,28(sp)
 6d0:	0c000000 	jal	0 <EnMa1_GetText>
 6d4:	2484014c 	addiu	a0,a0,332
 6d8:	8fa50018 	lw	a1,24(sp)
 6dc:	8fa4001c 	lw	a0,28(sp)
 6e0:	0c000000 	jal	0 <EnMa1_GetText>
 6e4:	24a50194 	addiu	a1,a1,404
 6e8:	8fbf0014 	lw	ra,20(sp)
 6ec:	27bd0018 	addiu	sp,sp,24
 6f0:	03e00008 	jr	ra
 6f4:	00000000 	nop

000006f8 <func_80AA0D88>:
 6f8:	27bdffe8 	addiu	sp,sp,-24
 6fc:	afbf0014 	sw	ra,20(sp)
 700:	848e01e8 	lh	t6,488(a0)
 704:	00a03025 	move	a2,a1
 708:	51c0000d 	beqzl	t6,740 <func_80AA0D88+0x48>
 70c:	8c880154 	lw	t0,340(a0)
 710:	8c980154 	lw	t8,340(a0)
 714:	3c0f0000 	lui	t7,0x0
 718:	25ef0000 	addiu	t7,t7,0
 71c:	11f80011 	beq	t7,t8,764 <func_80AA0D88+0x6c>
 720:	24050001 	li	a1,1
 724:	afa40018 	sw	a0,24(sp)
 728:	0c000000 	jal	0 <EnMa1_GetText>
 72c:	afa6001c 	sw	a2,28(sp)
 730:	8fa40018 	lw	a0,24(sp)
 734:	1000000b 	b	764 <func_80AA0D88+0x6c>
 738:	8fa6001c 	lw	a2,28(sp)
 73c:	8c880154 	lw	t0,340(a0)
 740:	3c190000 	lui	t9,0x0
 744:	27390000 	addiu	t9,t9,0
 748:	13280006 	beq	t9,t0,764 <func_80AA0D88+0x6c>
 74c:	24050003 	li	a1,3
 750:	afa40018 	sw	a0,24(sp)
 754:	0c000000 	jal	0 <EnMa1_GetText>
 758:	afa6001c 	sw	a2,28(sp)
 75c:	8fa40018 	lw	a0,24(sp)
 760:	8fa6001c 	lw	a2,28(sp)
 764:	84c900a4 	lh	t1,164(a2)
 768:	2401005f 	li	at,95
 76c:	3c020000 	lui	v0,0x0
 770:	15210009 	bne	t1,at,798 <func_80AA0D88+0xa0>
 774:	24420000 	addiu	v0,v0,0
 778:	944a0ed6 	lhu	t2,3798(v0)
 77c:	314b0010 	andi	t3,t2,0x10
 780:	11600005 	beqz	t3,798 <func_80AA0D88+0xa0>
 784:	00000000 	nop
 788:	0c000000 	jal	0 <EnMa1_GetText>
 78c:	00000000 	nop
 790:	1000001c 	b	804 <func_80AA0D88+0x10c>
 794:	8fbf0014 	lw	ra,20(sp)
 798:	3c020000 	lui	v0,0x0
 79c:	24420000 	addiu	v0,v0,0
 7a0:	944c0ed6 	lhu	t4,3798(v0)
 7a4:	3c0e0000 	lui	t6,0x0
 7a8:	318d0010 	andi	t5,t4,0x10
 7ac:	51a00007 	beqzl	t5,7cc <func_80AA0D88+0xd4>
 7b0:	849901e8 	lh	t9,488(a0)
 7b4:	8dce0034 	lw	t6,52(t6)
 7b8:	8c4f00a4 	lw	t7,164(v0)
 7bc:	01cfc024 	and	t8,t6,t7
 7c0:	53000010 	beqzl	t8,804 <func_80AA0D88+0x10c>
 7c4:	8fbf0014 	lw	ra,20(sp)
 7c8:	849901e8 	lh	t9,488(a0)
 7cc:	24010002 	li	at,2
 7d0:	3c080000 	lui	t0,0x0
 7d4:	1721000a 	bne	t9,at,800 <func_80AA0D88+0x108>
 7d8:	25080000 	addiu	t0,t0,0
 7dc:	3c010001 	lui	at,0x1
 7e0:	ac880190 	sw	t0,400(a0)
 7e4:	00260821 	addu	at,at,a2
 7e8:	24090004 	li	t1,4
 7ec:	a02904bf 	sb	t1,1215(at)
 7f0:	3c010001 	lui	at,0x1
 7f4:	00260821 	addu	at,at,a2
 7f8:	240a0036 	li	t2,54
 7fc:	a02a03dc 	sb	t2,988(at)
 800:	8fbf0014 	lw	ra,20(sp)
 804:	27bd0018 	addiu	sp,sp,24
 808:	03e00008 	jr	ra
 80c:	00000000 	nop

00000810 <func_80AA0EA0>:
 810:	27bdffe0 	addiu	sp,sp,-32
 814:	afbf001c 	sw	ra,28(sp)
 818:	afa50024 	sw	a1,36(sp)
 81c:	0c000000 	jal	0 <EnMa1_GetText>
 820:	afa40020 	sw	a0,32(sp)
 824:	10400006 	beqz	v0,840 <func_80AA0EA0+0x30>
 828:	8fa40020 	lw	a0,32(sp)
 82c:	3c0e0000 	lui	t6,0x0
 830:	25ce0000 	addiu	t6,t6,0
 834:	ac800118 	sw	zero,280(a0)
 838:	10000008 	b	85c <func_80AA0EA0+0x4c>
 83c:	ac8e0190 	sw	t6,400(a0)
 840:	3c014120 	lui	at,0x4120
 844:	44812000 	mtc1	at,$f4
 848:	8fa50024 	lw	a1,36(sp)
 84c:	24060047 	li	a2,71
 850:	3c0742f0 	lui	a3,0x42f0
 854:	0c000000 	jal	0 <EnMa1_GetText>
 858:	e7a40010 	swc1	$f4,16(sp)
 85c:	8fbf001c 	lw	ra,28(sp)
 860:	27bd0020 	addiu	sp,sp,32
 864:	03e00008 	jr	ra
 868:	00000000 	nop

0000086c <func_80AA0EFC>:
 86c:	848e01e8 	lh	t6,488(a0)
 870:	24010003 	li	at,3
 874:	3c020000 	lui	v0,0x0
 878:	15c1000c 	bne	t6,at,8ac <func_80AA0EFC+0x40>
 87c:	24420000 	addiu	v0,v0,0
 880:	3c0f0000 	lui	t7,0x0
 884:	25ef0000 	addiu	t7,t7,0
 888:	a48001e8 	sh	zero,488(a0)
 88c:	ac8f0190 	sw	t7,400(a0)
 890:	94580ed6 	lhu	t8,3798(v0)
 894:	3c010001 	lui	at,0x1
 898:	00250821 	addu	at,at,a1
 89c:	37190004 	ori	t9,t8,0x4
 8a0:	a4590ed6 	sh	t9,3798(v0)
 8a4:	24080036 	li	t0,54
 8a8:	a02803dc 	sb	t0,988(at)
 8ac:	03e00008 	jr	ra
 8b0:	00000000 	nop

000008b4 <func_80AA0F44>:
 8b4:	27bdffd8 	addiu	sp,sp,-40
 8b8:	afbf001c 	sw	ra,28(sp)
 8bc:	afb00018 	sw	s0,24(sp)
 8c0:	afa5002c 	sw	a1,44(sp)
 8c4:	848f01e8 	lh	t7,488(a0)
 8c8:	00808025 	move	s0,a0
 8cc:	8ca31c44 	lw	v1,7236(a1)
 8d0:	51e0000b 	beqzl	t7,900 <func_80AA0F44+0x4c>
 8d4:	8e090154 	lw	t1,340(s0)
 8d8:	8c990154 	lw	t9,340(a0)
 8dc:	3c180000 	lui	t8,0x0
 8e0:	27180000 	addiu	t8,t8,0
 8e4:	1319000e 	beq	t8,t9,920 <func_80AA0F44+0x6c>
 8e8:	24050001 	li	a1,1
 8ec:	0c000000 	jal	0 <EnMa1_GetText>
 8f0:	afa30024 	sw	v1,36(sp)
 8f4:	1000000a 	b	920 <func_80AA0F44+0x6c>
 8f8:	8fa30024 	lw	v1,36(sp)
 8fc:	8e090154 	lw	t1,340(s0)
 900:	3c080000 	lui	t0,0x0
 904:	25080000 	addiu	t0,t0,0
 908:	11090005 	beq	t0,t1,920 <func_80AA0F44+0x6c>
 90c:	02002025 	move	a0,s0
 910:	24050003 	li	a1,3
 914:	0c000000 	jal	0 <EnMa1_GetText>
 918:	afa30024 	sw	v1,36(sp)
 91c:	8fa30024 	lw	v1,36(sp)
 920:	3c0a0000 	lui	t2,0x0
 924:	954a0ed6 	lhu	t2,3798(t2)
 928:	314b0040 	andi	t3,t2,0x40
 92c:	51600027 	beqzl	t3,9cc <func_80AA0F44+0x118>
 930:	8fbf001c 	lw	ra,28(sp)
 934:	8c620680 	lw	v0,1664(v1)
 938:	3c010200 	lui	at,0x200
 93c:	240e2061 	li	t6,8289
 940:	000261c0 	sll	t4,v0,0x7
 944:	05810012 	bgez	t4,990 <func_80AA0F44+0xdc>
 948:	00416825 	or	t5,v0,at
 94c:	ac6d0680 	sw	t5,1664(v1)
 950:	ac7006a8 	sw	s0,1704(v1)
 954:	a60e010e 	sh	t6,270(s0)
 958:	8fa4002c 	lw	a0,44(sp)
 95c:	31c5ffff 	andi	a1,t6,0xffff
 960:	0c000000 	jal	0 <EnMa1_GetText>
 964:	00003025 	move	a2,zero
 968:	8e180004 	lw	t8,4(s0)
 96c:	3c010001 	lui	at,0x1
 970:	3c080000 	lui	t0,0x0
 974:	240f0001 	li	t7,1
 978:	25080000 	addiu	t0,t0,0
 97c:	0301c825 	or	t9,t8,at
 980:	a60f01e8 	sh	t7,488(s0)
 984:	ae190004 	sw	t9,4(s0)
 988:	1000000f 	b	9c8 <func_80AA0F44+0x114>
 98c:	ae080190 	sw	t0,400(s0)
 990:	860901d4 	lh	t1,468(s0)
 994:	3c0141f0 	lui	at,0x41f0
 998:	44813000 	mtc1	at,$f6
 99c:	44894000 	mtc1	t1,$f8
 9a0:	c6040090 	lwc1	$f4,144(s0)
 9a4:	3c010080 	lui	at,0x80
 9a8:	468042a0 	cvt.s.w	$f10,$f8
 9ac:	00415025 	or	t2,v0,at
 9b0:	460a3400 	add.s	$f16,$f6,$f10
 9b4:	4610203c 	c.lt.s	$f4,$f16
 9b8:	00000000 	nop
 9bc:	45020003 	bc1fl	9cc <func_80AA0F44+0x118>
 9c0:	8fbf001c 	lw	ra,28(sp)
 9c4:	ac6a0680 	sw	t2,1664(v1)
 9c8:	8fbf001c 	lw	ra,28(sp)
 9cc:	8fb00018 	lw	s0,24(sp)
 9d0:	27bd0028 	addiu	sp,sp,40
 9d4:	03e00008 	jr	ra
 9d8:	00000000 	nop

000009dc <func_80AA106C>:
 9dc:	27bdffe8 	addiu	sp,sp,-24
 9e0:	afbf0014 	sw	ra,20(sp)
 9e4:	8ca21c44 	lw	v0,7236(a1)
 9e8:	3c010080 	lui	at,0x80
 9ec:	00803025 	move	a2,a0
 9f0:	8c4e0680 	lw	t6,1664(v0)
 9f4:	01c17825 	or	t7,t6,at
 9f8:	ac4f0680 	sw	t7,1664(v0)
 9fc:	849801e8 	lh	t8,488(a0)
 a00:	24010002 	li	at,2
 a04:	24040002 	li	a0,2
 a08:	57010011 	bnel	t8,at,a50 <func_80AA106C+0x74>
 a0c:	8fbf0014 	lw	ra,20(sp)
 a10:	afa60018 	sw	a2,24(sp)
 a14:	0c000000 	jal	0 <EnMa1_GetText>
 a18:	afa5001c 	sw	a1,28(sp)
 a1c:	8fa4001c 	lw	a0,28(sp)
 a20:	0c000000 	jal	0 <EnMa1_GetText>
 a24:	24050009 	li	a1,9
 a28:	8fa60018 	lw	a2,24(sp)
 a2c:	3c01fffe 	lui	at,0xfffe
 a30:	3421ffff 	ori	at,at,0xffff
 a34:	8cd90004 	lw	t9,4(a2)
 a38:	3c090000 	lui	t1,0x0
 a3c:	25290000 	addiu	t1,t1,0
 a40:	03214024 	and	t0,t9,at
 a44:	acc80004 	sw	t0,4(a2)
 a48:	acc90190 	sw	t1,400(a2)
 a4c:	8fbf0014 	lw	ra,20(sp)
 a50:	27bd0018 	addiu	sp,sp,24
 a54:	03e00008 	jr	ra
 a58:	00000000 	nop

00000a5c <func_80AA10EC>:
 a5c:	27bdffe8 	addiu	sp,sp,-24
 a60:	afbf0014 	sw	ra,20(sp)
 a64:	afa40018 	sw	a0,24(sp)
 a68:	8ca21c44 	lw	v0,7236(a1)
 a6c:	3c010080 	lui	at,0x80
 a70:	24a420d8 	addiu	a0,a1,8408
 a74:	8c4e0680 	lw	t6,1664(v0)
 a78:	01c17825 	or	t7,t6,at
 a7c:	ac4f0680 	sw	t7,1664(v0)
 a80:	0c000000 	jal	0 <EnMa1_GetText>
 a84:	afa5001c 	sw	a1,28(sp)
 a88:	24010007 	li	at,7
 a8c:	14410008 	bne	v0,at,ab0 <func_80AA10EC+0x54>
 a90:	8fa6001c 	lw	a2,28(sp)
 a94:	00c02025 	move	a0,a2
 a98:	0c000000 	jal	0 <EnMa1_GetText>
 a9c:	24050016 	li	a1,22
 aa0:	8fb90018 	lw	t9,24(sp)
 aa4:	3c180000 	lui	t8,0x0
 aa8:	27180000 	addiu	t8,t8,0
 aac:	af380190 	sw	t8,400(t9)
 ab0:	8fbf0014 	lw	ra,20(sp)
 ab4:	27bd0018 	addiu	sp,sp,24
 ab8:	03e00008 	jr	ra
 abc:	00000000 	nop

00000ac0 <func_80AA1150>:
 ac0:	8ca21c44 	lw	v0,7236(a1)
 ac4:	3c010080 	lui	at,0x80
 ac8:	3c180001 	lui	t8,0x1
 acc:	8c4e0680 	lw	t6,1664(v0)
 ad0:	0305c021 	addu	t8,t8,a1
 ad4:	24190157 	li	t9,343
 ad8:	01c17825 	or	t7,t6,at
 adc:	ac4f0680 	sw	t7,1664(v0)
 ae0:	971804c6 	lhu	t8,1222(t8)
 ae4:	24010003 	li	at,3
 ae8:	3408fff1 	li	t0,0xfff1
 aec:	17010010 	bne	t8,at,b30 <func_80AA1150+0x70>
 af0:	2409002a 	li	t1,42
 af4:	3c010001 	lui	at,0x1
 af8:	00250821 	addu	at,at,a1
 afc:	a4391e1a 	sh	t9,7706(at)
 b00:	3c010000 	lui	at,0x0
 b04:	a4281412 	sh	t0,5138(at)
 b08:	3c010001 	lui	at,0x1
 b0c:	00250821 	addu	at,at,a1
 b10:	a0291e5e 	sb	t1,7774(at)
 b14:	3c010001 	lui	at,0x1
 b18:	00250821 	addu	at,at,a1
 b1c:	240a0014 	li	t2,20
 b20:	3c0b0000 	lui	t3,0x0
 b24:	a02a1e15 	sb	t2,7701(at)
 b28:	256b0000 	addiu	t3,t3,0
 b2c:	ac8b0190 	sw	t3,400(a0)
 b30:	03e00008 	jr	ra
 b34:	00000000 	nop

00000b38 <func_80AA11C8>:
 b38:	afa40000 	sw	a0,0(sp)
 b3c:	03e00008 	jr	ra
 b40:	afa50004 	sw	a1,4(sp)

00000b44 <EnMa1_Update>:
 b44:	27bdffc8 	addiu	sp,sp,-56
 b48:	afb0001c 	sw	s0,28(sp)
 b4c:	00808025 	move	s0,a0
 b50:	afb10020 	sw	s1,32(sp)
 b54:	00a08825 	move	s1,a1
 b58:	afbf0024 	sw	ra,36(sp)
 b5c:	26060194 	addiu	a2,s0,404
 b60:	00c02825 	move	a1,a2
 b64:	0c000000 	jal	0 <EnMa1_GetText>
 b68:	afa6002c 	sw	a2,44(sp)
 b6c:	3c010001 	lui	at,0x1
 b70:	34211e60 	ori	at,at,0x1e60
 b74:	8fa6002c 	lw	a2,44(sp)
 b78:	02212821 	addu	a1,s1,at
 b7c:	0c000000 	jal	0 <EnMa1_GetText>
 b80:	02202025 	move	a0,s1
 b84:	0c000000 	jal	0 <EnMa1_GetText>
 b88:	2604014c 	addiu	a0,s0,332
 b8c:	0c000000 	jal	0 <EnMa1_GetText>
 b90:	02002025 	move	a0,s0
 b94:	8e190190 	lw	t9,400(s0)
 b98:	02002025 	move	a0,s0
 b9c:	02202825 	move	a1,s1
 ba0:	0320f809 	jalr	t9
 ba4:	00000000 	nop
 ba8:	8e0f0190 	lw	t7,400(s0)
 bac:	3c0e0000 	lui	t6,0x0
 bb0:	25ce0000 	addiu	t6,t6,0
 bb4:	11cf0013 	beq	t6,t7,c04 <EnMa1_Update+0xc0>
 bb8:	00000000 	nop
 bbc:	861801d4 	lh	t8,468(s0)
 bc0:	3c0141f0 	lui	at,0x41f0
 bc4:	44814000 	mtc1	at,$f8
 bc8:	44982000 	mtc1	t8,$f4
 bcc:	3c080000 	lui	t0,0x0
 bd0:	3c090000 	lui	t1,0x0
 bd4:	468021a0 	cvt.s.w	$f6,$f4
 bd8:	25290000 	addiu	t1,t1,0
 bdc:	25080000 	addiu	t0,t0,0
 be0:	afa80010 	sw	t0,16(sp)
 be4:	afa90014 	sw	t1,20(sp)
 be8:	02202025 	move	a0,s1
 bec:	46083280 	add.s	$f10,$f6,$f8
 bf0:	02002825 	move	a1,s0
 bf4:	260601e8 	addiu	a2,s0,488
 bf8:	44075000 	mfc1	a3,$f10
 bfc:	0c000000 	jal	0 <EnMa1_GetText>
 c00:	00000000 	nop
 c04:	0c000000 	jal	0 <EnMa1_GetText>
 c08:	02002025 	move	a0,s0
 c0c:	02002025 	move	a0,s0
 c10:	0c000000 	jal	0 <EnMa1_GetText>
 c14:	02202825 	move	a1,s1
 c18:	8fbf0024 	lw	ra,36(sp)
 c1c:	8fb0001c 	lw	s0,28(sp)
 c20:	8fb10020 	lw	s1,32(sp)
 c24:	03e00008 	jr	ra
 c28:	27bd0038 	addiu	sp,sp,56

00000c2c <EnMa1_OverrideLimbDraw>:
 c2c:	27bdffd8 	addiu	sp,sp,-40
 c30:	24010002 	li	at,2
 c34:	afbf0014 	sw	ra,20(sp)
 c38:	afa40028 	sw	a0,40(sp)
 c3c:	10a10004 	beq	a1,at,c50 <EnMa1_OverrideLimbDraw+0x24>
 c40:	afa70034 	sw	a3,52(sp)
 c44:	24010005 	li	at,5
 c48:	54a10003 	bnel	a1,at,c58 <EnMa1_OverrideLimbDraw+0x2c>
 c4c:	2401000f 	li	at,15
 c50:	acc00000 	sw	zero,0(a2)
 c54:	2401000f 	li	at,15
 c58:	14a1002e 	bne	a1,at,d14 <EnMa1_OverrideLimbDraw+0xe8>
 c5c:	24070001 	li	a3,1
 c60:	44807000 	mtc1	zero,$f14
 c64:	3c0144af 	lui	at,0x44af
 c68:	44816000 	mtc1	at,$f12
 c6c:	44067000 	mfc1	a2,$f14
 c70:	0c000000 	jal	0 <EnMa1_GetText>
 c74:	afa5002c 	sw	a1,44(sp)
 c78:	8faf003c 	lw	t7,60(sp)
 c7c:	27ae001c 	addiu	t6,sp,28
 c80:	3c014700 	lui	at,0x4700
 c84:	89f901f0 	lwl	t9,496(t7)
 c88:	99f901f3 	lwr	t9,499(t7)
 c8c:	44814000 	mtc1	at,$f8
 c90:	3c010000 	lui	at,0x0
 c94:	add90000 	sw	t9,0(t6)
 c98:	95f901f4 	lhu	t9,500(t7)
 c9c:	24050001 	li	a1,1
 ca0:	a5d90004 	sh	t9,4(t6)
 ca4:	87a8001e 	lh	t0,30(sp)
 ca8:	c43000cc 	lwc1	$f16,204(at)
 cac:	44882000 	mtc1	t0,$f4
 cb0:	00000000 	nop
 cb4:	468021a0 	cvt.s.w	$f6,$f4
 cb8:	46083283 	div.s	$f10,$f6,$f8
 cbc:	46105302 	mul.s	$f12,$f10,$f16
 cc0:	0c000000 	jal	0 <EnMa1_GetText>
 cc4:	00000000 	nop
 cc8:	87a9001c 	lh	t1,28(sp)
 ccc:	3c014700 	lui	at,0x4700
 cd0:	44813000 	mtc1	at,$f6
 cd4:	44899000 	mtc1	t1,$f18
 cd8:	3c010000 	lui	at,0x0
 cdc:	c42a00d0 	lwc1	$f10,208(at)
 ce0:	46809120 	cvt.s.w	$f4,$f18
 ce4:	24050001 	li	a1,1
 ce8:	46062203 	div.s	$f8,$f4,$f6
 cec:	460a4302 	mul.s	$f12,$f8,$f10
 cf0:	0c000000 	jal	0 <EnMa1_GetText>
 cf4:	00000000 	nop
 cf8:	44807000 	mtc1	zero,$f14
 cfc:	3c01c4af 	lui	at,0xc4af
 d00:	44816000 	mtc1	at,$f12
 d04:	44067000 	mfc1	a2,$f14
 d08:	0c000000 	jal	0 <EnMa1_GetText>
 d0c:	24070001 	li	a3,1
 d10:	8fa5002c 	lw	a1,44(sp)
 d14:	24010008 	li	at,8
 d18:	14a10022 	bne	a1,at,da4 <EnMa1_OverrideLimbDraw+0x178>
 d1c:	8fab003c 	lw	t3,60(sp)
 d20:	896d01f6 	lwl	t5,502(t3)
 d24:	996d01f9 	lwr	t5,505(t3)
 d28:	27aa001c 	addiu	t2,sp,28
 d2c:	3c014700 	lui	at,0x4700
 d30:	ad4d0000 	sw	t5,0(t2)
 d34:	956d01fa 	lhu	t5,506(t3)
 d38:	44812000 	mtc1	at,$f4
 d3c:	3c010000 	lui	at,0x0
 d40:	a54d0004 	sh	t5,4(t2)
 d44:	87ae001e 	lh	t6,30(sp)
 d48:	c42800d4 	lwc1	$f8,212(at)
 d4c:	24050001 	li	a1,1
 d50:	000e7823 	negu	t7,t6
 d54:	448f8000 	mtc1	t7,$f16
 d58:	00000000 	nop
 d5c:	468084a0 	cvt.s.w	$f18,$f16
 d60:	46049183 	div.s	$f6,$f18,$f4
 d64:	46083302 	mul.s	$f12,$f6,$f8
 d68:	0c000000 	jal	0 <EnMa1_GetText>
 d6c:	00000000 	nop
 d70:	87b8001c 	lh	t8,28(sp)
 d74:	3c014700 	lui	at,0x4700
 d78:	44819000 	mtc1	at,$f18
 d7c:	0018c823 	negu	t9,t8
 d80:	44995000 	mtc1	t9,$f10
 d84:	3c010000 	lui	at,0x0
 d88:	c42600d8 	lwc1	$f6,216(at)
 d8c:	46805420 	cvt.s.w	$f16,$f10
 d90:	24050001 	li	a1,1
 d94:	46128103 	div.s	$f4,$f16,$f18
 d98:	46062302 	mul.s	$f12,$f4,$f6
 d9c:	0c000000 	jal	0 <EnMa1_GetText>
 da0:	00000000 	nop
 da4:	8fbf0014 	lw	ra,20(sp)
 da8:	27bd0028 	addiu	sp,sp,40
 dac:	00001025 	move	v0,zero
 db0:	03e00008 	jr	ra
 db4:	00000000 	nop

00000db8 <EnMa1_PostLimbDraw>:
 db8:	27bdffd8 	addiu	sp,sp,-40
 dbc:	3c0e0000 	lui	t6,0x0
 dc0:	afbf0014 	sw	ra,20(sp)
 dc4:	afa40028 	sw	a0,40(sp)
 dc8:	afa60030 	sw	a2,48(sp)
 dcc:	afa70034 	sw	a3,52(sp)
 dd0:	25ce0000 	addiu	t6,t6,0
 dd4:	8dd80000 	lw	t8,0(t6)
 dd8:	27a40018 	addiu	a0,sp,24
 ddc:	2401000f 	li	at,15
 de0:	ac980000 	sw	t8,0(a0)
 de4:	8dcf0004 	lw	t7,4(t6)
 de8:	ac8f0004 	sw	t7,4(a0)
 dec:	8dd80008 	lw	t8,8(t6)
 df0:	14a10004 	bne	a1,at,e04 <EnMa1_PostLimbDraw+0x4c>
 df4:	ac980008 	sw	t8,8(a0)
 df8:	8fa50038 	lw	a1,56(sp)
 dfc:	0c000000 	jal	0 <EnMa1_GetText>
 e00:	24a50038 	addiu	a1,a1,56
 e04:	8fbf0014 	lw	ra,20(sp)
 e08:	27bd0028 	addiu	sp,sp,40
 e0c:	03e00008 	jr	ra
 e10:	00000000 	nop

00000e14 <EnMa1_Draw>:
 e14:	27bdff98 	addiu	sp,sp,-104
 e18:	afb20030 	sw	s2,48(sp)
 e1c:	00a09025 	move	s2,a1
 e20:	afbf0034 	sw	ra,52(sp)
 e24:	afb1002c 	sw	s1,44(sp)
 e28:	afb00028 	sw	s0,40(sp)
 e2c:	8ca50000 	lw	a1,0(a1)
 e30:	00808025 	move	s0,a0
 e34:	3c060000 	lui	a2,0x0
 e38:	24c60000 	addiu	a2,a2,0
 e3c:	27a40044 	addiu	a0,sp,68
 e40:	240704ca 	li	a3,1226
 e44:	0c000000 	jal	0 <EnMa1_GetText>
 e48:	00a08825 	move	s1,a1
 e4c:	864e07a0 	lh	t6,1952(s2)
 e50:	26040024 	addiu	a0,s0,36
 e54:	000e7880 	sll	t7,t6,0x2
 e58:	024fc021 	addu	t8,s2,t7
 e5c:	8f020790 	lw	v0,1936(t8)
 e60:	0c000000 	jal	0 <EnMa1_GetText>
 e64:	2445005c 	addiu	a1,v0,92
 e68:	46000306 	mov.s	$f12,$f0
 e6c:	0c000000 	jal	0 <EnMa1_GetText>
 e70:	2405002f 	li	a1,47
 e74:	0c000000 	jal	0 <EnMa1_GetText>
 e78:	8e440000 	lw	a0,0(s2)
 e7c:	8e2302c0 	lw	v1,704(s1)
 e80:	3c08db06 	lui	t0,0xdb06
 e84:	35080024 	ori	t0,t0,0x24
 e88:	24790008 	addiu	t9,v1,8
 e8c:	ae3902c0 	sw	t9,704(s1)
 e90:	ac680000 	sw	t0,0(v1)
 e94:	860901e6 	lh	t1,486(s0)
 e98:	3c040000 	lui	a0,0x0
 e9c:	3c060000 	lui	a2,0x0
 ea0:	00095080 	sll	t2,t1,0x2
 ea4:	008a2021 	addu	a0,a0,t2
 ea8:	8c840000 	lw	a0,0(a0)
 eac:	24c60000 	addiu	a2,a2,0
 eb0:	3c0500ff 	lui	a1,0xff
 eb4:	00046100 	sll	t4,a0,0x4
 eb8:	000c6f02 	srl	t5,t4,0x1c
 ebc:	000d7080 	sll	t6,t5,0x2
 ec0:	00ce7821 	addu	t7,a2,t6
 ec4:	8df80000 	lw	t8,0(t7)
 ec8:	34a5ffff 	ori	a1,a1,0xffff
 ecc:	00855824 	and	t3,a0,a1
 ed0:	3c078000 	lui	a3,0x8000
 ed4:	0178c821 	addu	t9,t3,t8
 ed8:	03274021 	addu	t0,t9,a3
 edc:	ac680004 	sw	t0,4(v1)
 ee0:	8e2302c0 	lw	v1,704(s1)
 ee4:	3c0adb06 	lui	t2,0xdb06
 ee8:	354a0020 	ori	t2,t2,0x20
 eec:	24690008 	addiu	t1,v1,8
 ef0:	ae2902c0 	sw	t1,704(s1)
 ef4:	ac6a0000 	sw	t2,0(v1)
 ef8:	860c01e4 	lh	t4,484(s0)
 efc:	3c040000 	lui	a0,0x0
 f00:	000c6880 	sll	t5,t4,0x2
 f04:	008d2021 	addu	a0,a0,t5
 f08:	8c840000 	lw	a0,0(a0)
 f0c:	3c0d0000 	lui	t5,0x0
 f10:	3c0c0000 	lui	t4,0x0
 f14:	00047900 	sll	t7,a0,0x4
 f18:	000f5f02 	srl	t3,t7,0x1c
 f1c:	000bc080 	sll	t8,t3,0x2
 f20:	00d8c821 	addu	t9,a2,t8
 f24:	8f280000 	lw	t0,0(t9)
 f28:	00857024 	and	t6,a0,a1
 f2c:	258c0000 	addiu	t4,t4,0
 f30:	01c84821 	addu	t1,t6,t0
 f34:	01275021 	addu	t2,t1,a3
 f38:	ac6a0004 	sw	t2,4(v1)
 f3c:	9207014e 	lbu	a3,334(s0)
 f40:	8e06016c 	lw	a2,364(s0)
 f44:	8e050150 	lw	a1,336(s0)
 f48:	25ad0000 	addiu	t5,t5,0
 f4c:	afad0014 	sw	t5,20(sp)
 f50:	afb00018 	sw	s0,24(sp)
 f54:	afac0010 	sw	t4,16(sp)
 f58:	0c000000 	jal	0 <EnMa1_GetText>
 f5c:	02402025 	move	a0,s2
 f60:	3c060000 	lui	a2,0x0
 f64:	24c60010 	addiu	a2,a2,16
 f68:	27a40044 	addiu	a0,sp,68
 f6c:	8e450000 	lw	a1,0(s2)
 f70:	0c000000 	jal	0 <EnMa1_GetText>
 f74:	240704ed 	li	a3,1261
 f78:	8fbf0034 	lw	ra,52(sp)
 f7c:	8fb00028 	lw	s0,40(sp)
 f80:	8fb1002c 	lw	s1,44(sp)
 f84:	8fb20030 	lw	s2,48(sp)
 f88:	03e00008 	jr	ra
 f8c:	27bd0068 	addiu	sp,sp,104
