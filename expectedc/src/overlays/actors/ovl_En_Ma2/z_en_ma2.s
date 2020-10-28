
build/src/overlays/actors/ovl_En_Ma2/z_en_ma2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80AA19A0>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa5001c 	sw	a1,28(sp)
   c:	0c000000 	jal	0 <func_80AA19A0>
  10:	24050017 	li	a1,23
  14:	10400003 	beqz	v0,24 <func_80AA19A0+0x24>
  18:	3043ffff 	andi	v1,v0,0xffff
  1c:	1000001a 	b	88 <func_80AA19A0+0x88>
  20:	00601025 	move	v0,v1
  24:	3c030000 	lui	v1,0x0
  28:	24630000 	addiu	v1,v1,0
  2c:	946e0ed6 	lhu	t6,3798(v1)
  30:	31cf0100 	andi	t7,t6,0x100
  34:	51e00004 	beqzl	t7,48 <func_80AA19A0+0x48>
  38:	8c780010 	lw	t8,16(v1)
  3c:	10000012 	b	88 <func_80AA19A0+0x88>
  40:	24022056 	li	v0,8278
  44:	8c780010 	lw	t8,16(v1)
  48:	24010001 	li	at,1
  4c:	2402204c 	li	v0,8268
  50:	1701000d 	bne	t8,at,88 <func_80AA19A0+0x88>
  54:	00000000 	nop
  58:	94620f08 	lhu	v0,3848(v1)
  5c:	30591000 	andi	t9,v0,0x1000
  60:	13200003 	beqz	t9,70 <func_80AA19A0+0x70>
  64:	30484000 	andi	t0,v0,0x4000
  68:	10000007 	b	88 <func_80AA19A0+0x88>
  6c:	24022052 	li	v0,8274
  70:	11000003 	beqz	t0,80 <func_80AA19A0+0x80>
  74:	00000000 	nop
  78:	10000003 	b	88 <func_80AA19A0+0x88>
  7c:	24022051 	li	v0,8273
  80:	10000001 	b	88 <func_80AA19A0+0x88>
  84:	24022050 	li	v0,8272
  88:	8fbf0014 	lw	ra,20(sp)
  8c:	27bd0018 	addiu	sp,sp,24
  90:	03e00008 	jr	ra
  94:	00000000 	nop

00000098 <func_80AA1A38>:
  98:	27bdffe0 	addiu	sp,sp,-32
  9c:	afbf0014 	sw	ra,20(sp)
  a0:	24030001 	li	v1,1
  a4:	afa50024 	sw	a1,36(sp)
  a8:	a7a3001e 	sh	v1,30(sp)
  ac:	0c000000 	jal	0 <func_80AA19A0>
  b0:	248420d8 	addiu	a0,a0,8408
  b4:	2c41000a 	sltiu	at,v0,10
  b8:	1020001d 	beqz	at,130 <func_80AA1A38+0x98>
  bc:	87a3001e 	lh	v1,30(sp)
  c0:	00027080 	sll	t6,v0,0x2
  c4:	3c010000 	lui	at,0x0
  c8:	002e0821 	addu	at,at,t6
  cc:	8c2e0040 	lw	t6,64(at)
  d0:	01c00008 	jr	t6
  d4:	00000000 	nop
  d8:	8faf0024 	lw	t7,36(sp)
  dc:	24012051 	li	at,8273
  e0:	95e2010e 	lhu	v0,270(t7)
  e4:	10410005 	beq	v0,at,fc <func_80AA1A38+0x64>
  e8:	24012053 	li	at,8275
  ec:	1041000a 	beq	v0,at,118 <func_80AA1A38+0x80>
  f0:	00000000 	nop
  f4:	1000000e 	b	130 <func_80AA1A38+0x98>
  f8:	00001825 	move	v1,zero
  fc:	3c020000 	lui	v0,0x0
 100:	24420000 	addiu	v0,v0,0
 104:	94580f08 	lhu	t8,3848(v0)
 108:	24030002 	li	v1,2
 10c:	37191000 	ori	t9,t8,0x1000
 110:	10000007 	b	130 <func_80AA1A38+0x98>
 114:	a4590f08 	sh	t9,3848(v0)
 118:	3c020000 	lui	v0,0x0
 11c:	24420000 	addiu	v0,v0,0
 120:	94480f08 	lhu	t0,3848(v0)
 124:	00001825 	move	v1,zero
 128:	35092000 	ori	t1,t0,0x2000
 12c:	a4490f08 	sh	t1,3848(v0)
 130:	8fbf0014 	lw	ra,20(sp)
 134:	27bd0020 	addiu	sp,sp,32
 138:	00601025 	move	v0,v1
 13c:	03e00008 	jr	ra
 140:	00000000 	nop

00000144 <func_80AA1AE4>:
 144:	27bdffe8 	addiu	sp,sp,-24
 148:	afbf0014 	sw	ra,20(sp)
 14c:	848e01e0 	lh	t6,480(a0)
 150:	8ca21c44 	lw	v0,7236(a1)
 154:	00003825 	move	a3,zero
 158:	15c00008 	bnez	t6,17c <func_80AA1AE4+0x38>
 15c:	00000000 	nop
 160:	8c980154 	lw	t8,340(a0)
 164:	3c0f0000 	lui	t7,0x0
 168:	25ef0000 	addiu	t7,t7,0
 16c:	15f80003 	bne	t7,t8,17c <func_80AA1AE4+0x38>
 170:	00000000 	nop
 174:	10000001 	b	17c <func_80AA1AE4+0x38>
 178:	24070001 	li	a3,1
 17c:	8c480024 	lw	t0,36(v0)
 180:	44802000 	mtc1	zero,$f4
 184:	248501e0 	addiu	a1,a0,480
 188:	ac8801f8 	sw	t0,504(a0)
 18c:	8c590028 	lw	t9,40(v0)
 190:	00003025 	move	a2,zero
 194:	ac9901fc 	sw	t9,508(a0)
 198:	8c48002c 	lw	t0,44(v0)
 19c:	e48401f4 	swc1	$f4,500(a0)
 1a0:	0c000000 	jal	0 <func_80AA19A0>
 1a4:	ac880200 	sw	t0,512(a0)
 1a8:	8fbf0014 	lw	ra,20(sp)
 1ac:	27bd0018 	addiu	sp,sp,24
 1b0:	03e00008 	jr	ra
 1b4:	00000000 	nop

000001b8 <func_80AA1B58>:
 1b8:	3c060000 	lui	a2,0x0
 1bc:	24c60000 	addiu	a2,a2,0
 1c0:	8cce0004 	lw	t6,4(a2)
 1c4:	24030001 	li	v1,1
 1c8:	546e0004 	bnel	v1,t6,1dc <func_80AA1B58+0x24>
 1cc:	94c20ed6 	lhu	v0,3798(a2)
 1d0:	03e00008 	jr	ra
 1d4:	00001025 	move	v0,zero
 1d8:	94c20ed6 	lhu	v0,3798(a2)
 1dc:	30420100 	andi	v0,v0,0x100
 1e0:	1440000e 	bnez	v0,21c <func_80AA1B58+0x64>
 1e4:	00000000 	nop
 1e8:	84af00a4 	lh	t7,164(a1)
 1ec:	24010036 	li	at,54
 1f0:	15e1000a 	bne	t7,at,21c <func_80AA1B58+0x64>
 1f4:	00000000 	nop
 1f8:	8cd80010 	lw	t8,16(a2)
 1fc:	17000007 	bnez	t8,21c <func_80AA1B58+0x64>
 200:	00000000 	nop
 204:	849900b8 	lh	t9,184(a0)
 208:	24010005 	li	at,5
 20c:	17210003 	bne	t9,at,21c <func_80AA1B58+0x64>
 210:	00000000 	nop
 214:	03e00008 	jr	ra
 218:	24020001 	li	v0,1
 21c:	1440000e 	bnez	v0,258 <func_80AA1B58+0xa0>
 220:	00000000 	nop
 224:	84a800a4 	lh	t0,164(a1)
 228:	24010063 	li	at,99
 22c:	1501000a 	bne	t0,at,258 <func_80AA1B58+0xa0>
 230:	00000000 	nop
 234:	8cc90010 	lw	t1,16(a2)
 238:	14690007 	bne	v1,t1,258 <func_80AA1B58+0xa0>
 23c:	00000000 	nop
 240:	848a00b8 	lh	t2,184(a0)
 244:	24010006 	li	at,6
 248:	15410003 	bne	t2,at,258 <func_80AA1B58+0xa0>
 24c:	00000000 	nop
 250:	03e00008 	jr	ra
 254:	24020002 	li	v0,2
 258:	10400005 	beqz	v0,270 <func_80AA1B58+0xb8>
 25c:	00000000 	nop
 260:	84ab00a4 	lh	t3,164(a1)
 264:	24010063 	li	at,99
 268:	51610004 	beql	t3,at,27c <func_80AA1B58+0xc4>
 26c:	848200b8 	lh	v0,184(a0)
 270:	03e00008 	jr	ra
 274:	00001025 	move	v0,zero
 278:	848200b8 	lh	v0,184(a0)
 27c:	24010007 	li	at,7
 280:	54410007 	bnel	v0,at,2a0 <func_80AA1B58+0xe8>
 284:	24010008 	li	at,8
 288:	8ccc0010 	lw	t4,16(a2)
 28c:	55800004 	bnezl	t4,2a0 <func_80AA1B58+0xe8>
 290:	24010008 	li	at,8
 294:	03e00008 	jr	ra
 298:	24020003 	li	v0,3
 29c:	24010008 	li	at,8
 2a0:	54410007 	bnel	v0,at,2c0 <func_80AA1B58+0x108>
 2a4:	00001025 	move	v0,zero
 2a8:	8ccd0010 	lw	t5,16(a2)
 2ac:	546d0004 	bnel	v1,t5,2c0 <func_80AA1B58+0x108>
 2b0:	00001025 	move	v0,zero
 2b4:	03e00008 	jr	ra
 2b8:	24020003 	li	v0,3
 2bc:	00001025 	move	v0,zero
 2c0:	03e00008 	jr	ra
 2c4:	00000000 	nop

000002c8 <func_80AA1C68>:
 2c8:	8c8f0154 	lw	t7,340(a0)
 2cc:	3c0e0000 	lui	t6,0x0
 2d0:	25ce0000 	addiu	t6,t6,0
 2d4:	51cf0004 	beql	t6,t7,2e8 <func_80AA1C68+0x20>
 2d8:	849801e0 	lh	t8,480(a0)
 2dc:	03e00008 	jr	ra
 2e0:	00001025 	move	v0,zero
 2e4:	849801e0 	lh	t8,480(a0)
 2e8:	53000004 	beqzl	t8,2fc <func_80AA1C68+0x34>
 2ec:	8499020e 	lh	t9,526(a0)
 2f0:	03e00008 	jr	ra
 2f4:	00001025 	move	v0,zero
 2f8:	8499020e 	lh	t9,526(a0)
 2fc:	24030002 	li	v1,2
 300:	a480020c 	sh	zero,524(a0)
 304:	10790003 	beq	v1,t9,314 <func_80AA1C68+0x4c>
 308:	24020001 	li	v0,1
 30c:	03e00008 	jr	ra
 310:	00001025 	move	v0,zero
 314:	a4830210 	sh	v1,528(a0)
 318:	03e00008 	jr	ra
 31c:	00000000 	nop

00000320 <func_80AA1CC0>:
 320:	27bdffe8 	addiu	sp,sp,-24
 324:	afbf0014 	sw	ra,20(sp)
 328:	0c000000 	jal	0 <func_80AA19A0>
 32c:	afa40018 	sw	a0,24(sp)
 330:	14400018 	bnez	v0,394 <func_80AA1CC0+0x74>
 334:	8fa60018 	lw	a2,24(sp)
 338:	84c2020c 	lh	v0,524(a2)
 33c:	14400003 	bnez	v0,34c <func_80AA1CC0+0x2c>
 340:	244effff 	addiu	t6,v0,-1
 344:	10000003 	b	354 <func_80AA1CC0+0x34>
 348:	00001825 	move	v1,zero
 34c:	a4ce020c 	sh	t6,524(a2)
 350:	84c3020c 	lh	v1,524(a2)
 354:	54600010 	bnezl	v1,398 <func_80AA1CC0+0x78>
 358:	8fbf0014 	lw	ra,20(sp)
 35c:	84cf020e 	lh	t7,526(a2)
 360:	2404001e 	li	a0,30
 364:	2405001e 	li	a1,30
 368:	25f80001 	addiu	t8,t7,1
 36c:	a4d8020e 	sh	t8,526(a2)
 370:	84d9020e 	lh	t9,526(a2)
 374:	2b210003 	slti	at,t9,3
 378:	54200007 	bnezl	at,398 <func_80AA1CC0+0x78>
 37c:	8fbf0014 	lw	ra,20(sp)
 380:	0c000000 	jal	0 <func_80AA19A0>
 384:	afa60018 	sw	a2,24(sp)
 388:	8fa60018 	lw	a2,24(sp)
 38c:	a4c2020c 	sh	v0,524(a2)
 390:	a4c0020e 	sh	zero,526(a2)
 394:	8fbf0014 	lw	ra,20(sp)
 398:	27bd0018 	addiu	sp,sp,24
 39c:	03e00008 	jr	ra
 3a0:	00000000 	nop

000003a4 <func_80AA1D44>:
 3a4:	27bdffd0 	addiu	sp,sp,-48
 3a8:	3c0f0000 	lui	t7,0x0
 3ac:	25ef0058 	addiu	t7,t7,88
 3b0:	00057100 	sll	t6,a1,0x4
 3b4:	afbf0024 	sw	ra,36(sp)
 3b8:	afa40030 	sw	a0,48(sp)
 3bc:	01cf1821 	addu	v1,t6,t7
 3c0:	8c640000 	lw	a0,0(v1)
 3c4:	0c000000 	jal	0 <func_80AA19A0>
 3c8:	afa30028 	sw	v1,40(sp)
 3cc:	44822000 	mtc1	v0,$f4
 3d0:	8fa30028 	lw	v1,40(sp)
 3d4:	8fa40030 	lw	a0,48(sp)
 3d8:	468021a0 	cvt.s.w	$f6,$f4
 3dc:	90780008 	lbu	t8,8(v1)
 3e0:	c468000c 	lwc1	$f8,12(v1)
 3e4:	3c063f80 	lui	a2,0x3f80
 3e8:	24070000 	li	a3,0
 3ec:	8c650000 	lw	a1,0(v1)
 3f0:	e7a60010 	swc1	$f6,16(sp)
 3f4:	2484014c 	addiu	a0,a0,332
 3f8:	afb80014 	sw	t8,20(sp)
 3fc:	0c000000 	jal	0 <func_80AA19A0>
 400:	e7a80018 	swc1	$f8,24(sp)
 404:	8fbf0024 	lw	ra,36(sp)
 408:	27bd0030 	addiu	sp,sp,48
 40c:	03e00008 	jr	ra
 410:	00000000 	nop

00000414 <func_80AA1DB4>:
 414:	27bdffe8 	addiu	sp,sp,-24
 418:	afbf0014 	sw	ra,20(sp)
 41c:	afa40018 	sw	a0,24(sp)
 420:	afa5001c 	sw	a1,28(sp)
 424:	8c8f0154 	lw	t7,340(a0)
 428:	3c0e0000 	lui	t6,0x0
 42c:	25ce0000 	addiu	t6,t6,0
 430:	15cf0016 	bne	t6,t7,48c <func_80AA1DB4+0x78>
 434:	00802825 	move	a1,a0
 438:	849801e0 	lh	t8,480(a0)
 43c:	5700000b 	bnezl	t8,46c <func_80AA1DB4+0x58>
 440:	84a8020a 	lh	t0,522(a1)
 444:	8499020a 	lh	t9,522(a0)
 448:	00002025 	move	a0,zero
 44c:	53200010 	beqzl	t9,490 <func_80AA1DB4+0x7c>
 450:	8fbf0014 	lw	ra,20(sp)
 454:	0c000000 	jal	0 <func_80AA19A0>
 458:	afa50018 	sw	a1,24(sp)
 45c:	8fa50018 	lw	a1,24(sp)
 460:	1000000a 	b	48c <func_80AA1DB4+0x78>
 464:	a4a0020a 	sh	zero,522(a1)
 468:	84a8020a 	lh	t0,522(a1)
 46c:	24040001 	li	a0,1
 470:	55000007 	bnezl	t0,490 <func_80AA1DB4+0x7c>
 474:	8fbf0014 	lw	ra,20(sp)
 478:	0c000000 	jal	0 <func_80AA19A0>
 47c:	afa50018 	sw	a1,24(sp)
 480:	8fa50018 	lw	a1,24(sp)
 484:	24090001 	li	t1,1
 488:	a4a9020a 	sh	t1,522(a1)
 48c:	8fbf0014 	lw	ra,20(sp)
 490:	27bd0018 	addiu	sp,sp,24
 494:	03e00008 	jr	ra
 498:	00000000 	nop

0000049c <EnMa2_Init>:
 49c:	27bdffc0 	addiu	sp,sp,-64
 4a0:	afb00028 	sw	s0,40(sp)
 4a4:	00808025 	move	s0,a0
 4a8:	afbf002c 	sw	ra,44(sp)
 4ac:	afa50044 	sw	a1,68(sp)
 4b0:	3c060000 	lui	a2,0x0
 4b4:	24c60000 	addiu	a2,a2,0
 4b8:	24050000 	li	a1,0
 4bc:	248400b4 	addiu	a0,a0,180
 4c0:	0c000000 	jal	0 <func_80AA19A0>
 4c4:	3c074190 	lui	a3,0x4190
 4c8:	3c060000 	lui	a2,0x0
 4cc:	24c60000 	addiu	a2,a2,0
 4d0:	8fa40044 	lw	a0,68(sp)
 4d4:	2605014c 	addiu	a1,s0,332
 4d8:	00003825 	move	a3,zero
 4dc:	afa00010 	sw	zero,16(sp)
 4e0:	afa00014 	sw	zero,20(sp)
 4e4:	0c000000 	jal	0 <func_80AA19A0>
 4e8:	afa00018 	sw	zero,24(sp)
 4ec:	26050194 	addiu	a1,s0,404
 4f0:	afa50030 	sw	a1,48(sp)
 4f4:	0c000000 	jal	0 <func_80AA19A0>
 4f8:	8fa40044 	lw	a0,68(sp)
 4fc:	3c070000 	lui	a3,0x0
 500:	8fa50030 	lw	a1,48(sp)
 504:	24e70020 	addiu	a3,a3,32
 508:	8fa40044 	lw	a0,68(sp)
 50c:	0c000000 	jal	0 <func_80AA19A0>
 510:	02003025 	move	a2,s0
 514:	0c000000 	jal	0 <func_80AA19A0>
 518:	24040016 	li	a0,22
 51c:	3c060000 	lui	a2,0x0
 520:	24c6004c 	addiu	a2,a2,76
 524:	26040098 	addiu	a0,s0,152
 528:	0c000000 	jal	0 <func_80AA19A0>
 52c:	00402825 	move	a1,v0
 530:	02002025 	move	a0,s0
 534:	0c000000 	jal	0 <func_80AA19A0>
 538:	8fa50044 	lw	a1,68(sp)
 53c:	10400027 	beqz	v0,5dc <EnMa2_Init+0x140>
 540:	24010001 	li	at,1
 544:	10410009 	beq	v0,at,56c <EnMa2_Init+0xd0>
 548:	02002025 	move	a0,s0
 54c:	24010002 	li	at,2
 550:	1041000c 	beq	v0,at,584 <EnMa2_Init+0xe8>
 554:	02002025 	move	a0,s0
 558:	24010003 	li	at,3
 55c:	1041000f 	beq	v0,at,59c <EnMa2_Init+0x100>
 560:	3c180000 	lui	t8,0x0
 564:	10000022 	b	5f0 <EnMa2_Init+0x154>
 568:	44800000 	mtc1	zero,$f0
 56c:	0c000000 	jal	0 <func_80AA19A0>
 570:	24050002 	li	a1,2
 574:	3c0e0000 	lui	t6,0x0
 578:	25ce0000 	addiu	t6,t6,0
 57c:	1000001b 	b	5ec <EnMa2_Init+0x150>
 580:	ae0e0190 	sw	t6,400(s0)
 584:	0c000000 	jal	0 <func_80AA19A0>
 588:	24050003 	li	a1,3
 58c:	3c0f0000 	lui	t7,0x0
 590:	25ef0000 	addiu	t7,t7,0
 594:	10000015 	b	5ec <EnMa2_Init+0x150>
 598:	ae0f0190 	sw	t7,400(s0)
 59c:	97180f08 	lhu	t8,3848(t8)
 5a0:	00002825 	move	a1,zero
 5a4:	02002025 	move	a0,s0
 5a8:	33192000 	andi	t9,t8,0x2000
 5ac:	13200005 	beqz	t9,5c4 <EnMa2_Init+0x128>
 5b0:	00000000 	nop
 5b4:	0c000000 	jal	0 <func_80AA19A0>
 5b8:	02002025 	move	a0,s0
 5bc:	10000003 	b	5cc <EnMa2_Init+0x130>
 5c0:	00000000 	nop
 5c4:	0c000000 	jal	0 <func_80AA19A0>
 5c8:	24050003 	li	a1,3
 5cc:	3c080000 	lui	t0,0x0
 5d0:	25080000 	addiu	t0,t0,0
 5d4:	10000005 	b	5ec <EnMa2_Init+0x150>
 5d8:	ae080190 	sw	t0,400(s0)
 5dc:	0c000000 	jal	0 <func_80AA19A0>
 5e0:	02002025 	move	a0,s0
 5e4:	10000012 	b	630 <EnMa2_Init+0x194>
 5e8:	8fbf002c 	lw	ra,44(sp)
 5ec:	44800000 	mtc1	zero,$f0
 5f0:	24090004 	li	t1,4
 5f4:	afa90014 	sw	t1,20(sp)
 5f8:	44060000 	mfc1	a2,$f0
 5fc:	44070000 	mfc1	a3,$f0
 600:	8fa40044 	lw	a0,68(sp)
 604:	02002825 	move	a1,s0
 608:	0c000000 	jal	0 <func_80AA19A0>
 60c:	e7a00010 	swc1	$f0,16(sp)
 610:	3c053c23 	lui	a1,0x3c23
 614:	34a5d70a 	ori	a1,a1,0xd70a
 618:	0c000000 	jal	0 <func_80AA19A0>
 61c:	02002025 	move	a0,s0
 620:	240a0006 	li	t2,6
 624:	a20a001f 	sb	t2,31(s0)
 628:	a60001e0 	sh	zero,480(s0)
 62c:	8fbf002c 	lw	ra,44(sp)
 630:	8fb00028 	lw	s0,40(sp)
 634:	27bd0040 	addiu	sp,sp,64
 638:	03e00008 	jr	ra
 63c:	00000000 	nop

00000640 <EnMa2_Destroy>:
 640:	27bdffe8 	addiu	sp,sp,-24
 644:	afbf0014 	sw	ra,20(sp)
 648:	afa40018 	sw	a0,24(sp)
 64c:	afa5001c 	sw	a1,28(sp)
 650:	0c000000 	jal	0 <func_80AA19A0>
 654:	2484014c 	addiu	a0,a0,332
 658:	8fa50018 	lw	a1,24(sp)
 65c:	8fa4001c 	lw	a0,28(sp)
 660:	0c000000 	jal	0 <func_80AA19A0>
 664:	24a50194 	addiu	a1,a1,404
 668:	8fbf0014 	lw	ra,20(sp)
 66c:	27bd0018 	addiu	sp,sp,24
 670:	03e00008 	jr	ra
 674:	00000000 	nop

00000678 <func_80AA2018>:
 678:	afa50004 	sw	a1,4(sp)
 67c:	848e01e0 	lh	t6,480(a0)
 680:	24010002 	li	at,2
 684:	15c10007 	bne	t6,at,6a4 <func_80AA2018+0x2c>
 688:	00000000 	nop
 68c:	8c8f0004 	lw	t7,4(a0)
 690:	3c01fffe 	lui	at,0xfffe
 694:	3421ffff 	ori	at,at,0xffff
 698:	01e1c024 	and	t8,t7,at
 69c:	ac980004 	sw	t8,4(a0)
 6a0:	a48001e0 	sh	zero,480(a0)
 6a4:	03e00008 	jr	ra
 6a8:	00000000 	nop

000006ac <func_80AA204C>:
 6ac:	27bdffe8 	addiu	sp,sp,-24
 6b0:	afbf0014 	sw	ra,20(sp)
 6b4:	8ca21c44 	lw	v0,7236(a1)
 6b8:	3c010200 	lui	at,0x200
 6bc:	00803025 	move	a2,a0
 6c0:	8c430680 	lw	v1,1664(v0)
 6c4:	000371c0 	sll	t6,v1,0x7
 6c8:	05c1000c 	bgez	t6,6fc <func_80AA204C+0x50>
 6cc:	00617825 	or	t7,v1,at
 6d0:	ac4406a8 	sw	a0,1704(v0)
 6d4:	ac4f0680 	sw	t7,1664(v0)
 6d8:	00a02025 	move	a0,a1
 6dc:	24050023 	li	a1,35
 6e0:	0c000000 	jal	0 <func_80AA19A0>
 6e4:	afa60018 	sw	a2,24(sp)
 6e8:	8fa60018 	lw	a2,24(sp)
 6ec:	3c180000 	lui	t8,0x0
 6f0:	27180000 	addiu	t8,t8,0
 6f4:	1000000f 	b	734 <func_80AA204C+0x88>
 6f8:	acd80190 	sw	t8,400(a2)
 6fc:	84d901d4 	lh	t9,468(a2)
 700:	3c0141f0 	lui	at,0x41f0
 704:	44813000 	mtc1	at,$f6
 708:	44994000 	mtc1	t9,$f8
 70c:	c4c40090 	lwc1	$f4,144(a2)
 710:	3c010080 	lui	at,0x80
 714:	468042a0 	cvt.s.w	$f10,$f8
 718:	00614025 	or	t0,v1,at
 71c:	460a3400 	add.s	$f16,$f6,$f10
 720:	4610203c 	c.lt.s	$f4,$f16
 724:	00000000 	nop
 728:	45020003 	bc1fl	738 <func_80AA204C+0x8c>
 72c:	8fbf0014 	lw	ra,20(sp)
 730:	ac480680 	sw	t0,1664(v0)
 734:	8fbf0014 	lw	ra,20(sp)
 738:	27bd0018 	addiu	sp,sp,24
 73c:	03e00008 	jr	ra
 740:	00000000 	nop

00000744 <func_80AA20E4>:
 744:	27bdffe0 	addiu	sp,sp,-32
 748:	3c030001 	lui	v1,0x1
 74c:	afbf001c 	sw	ra,28(sp)
 750:	afa40020 	sw	a0,32(sp)
 754:	afa50024 	sw	a1,36(sp)
 758:	00651821 	addu	v1,v1,a1
 75c:	946304c6 	lhu	v1,1222(v1)
 760:	3c0f0000 	lui	t7,0x0
 764:	8ca21c44 	lw	v0,7236(a1)
 768:	28610004 	slti	at,v1,4
 76c:	14200008 	bnez	at,790 <func_80AA20E4+0x4c>
 770:	25ef0000 	addiu	t7,t7,0
 774:	ac8f0190 	sw	t7,400(a0)
 778:	8fa80024 	lw	t0,36(sp)
 77c:	3c010001 	lui	at,0x1
 780:	24190004 	li	t9,4
 784:	00280821 	addu	at,at,t0
 788:	10000023 	b	818 <func_80AA20E4+0xd4>
 78c:	a43904c6 	sh	t9,1222(at)
 790:	24010003 	li	at,3
 794:	1461001c 	bne	v1,at,808 <func_80AA20E4+0xc4>
 798:	3c070000 	lui	a3,0x0
 79c:	3c090000 	lui	t1,0x0
 7a0:	24e70000 	addiu	a3,a3,0
 7a4:	25290000 	addiu	t1,t1,0
 7a8:	3c050000 	lui	a1,0x0
 7ac:	24a50000 	addiu	a1,a1,0
 7b0:	afa90014 	sw	t1,20(sp)
 7b4:	afa70010 	sw	a3,16(sp)
 7b8:	24044802 	li	a0,18434
 7bc:	0c000000 	jal	0 <func_80AA19A0>
 7c0:	24060004 	li	a2,4
 7c4:	8fa30020 	lw	v1,32(sp)
 7c8:	3c020000 	lui	v0,0x0
 7cc:	240a001e 	li	t2,30
 7d0:	24420000 	addiu	v0,v0,0
 7d4:	a46a0208 	sh	t2,520(v1)
 7d8:	944b0f08 	lhu	t3,3848(v0)
 7dc:	3c0d0000 	lui	t5,0x0
 7e0:	25ad0000 	addiu	t5,t5,0
 7e4:	356c4000 	ori	t4,t3,0x4000
 7e8:	a44c0f08 	sh	t4,3848(v0)
 7ec:	ac6d0190 	sw	t5,400(v1)
 7f0:	8faf0024 	lw	t7,36(sp)
 7f4:	3c010001 	lui	at,0x1
 7f8:	240e0004 	li	t6,4
 7fc:	002f0821 	addu	at,at,t7
 800:	10000005 	b	818 <func_80AA20E4+0xd4>
 804:	a42e04c6 	sh	t6,1222(at)
 808:	8c580680 	lw	t8,1664(v0)
 80c:	3c010080 	lui	at,0x80
 810:	0301c825 	or	t9,t8,at
 814:	ac590680 	sw	t9,1664(v0)
 818:	8fbf001c 	lw	ra,28(sp)
 81c:	27bd0020 	addiu	sp,sp,32
 820:	03e00008 	jr	ra
 824:	00000000 	nop

00000828 <func_80AA21C8>:
 828:	27bdffe8 	addiu	sp,sp,-24
 82c:	afbf0014 	sw	ra,20(sp)
 830:	84830208 	lh	v1,520(a0)
 834:	00803025 	move	a2,a0
 838:	8ca21c44 	lw	v0,7236(a1)
 83c:	14600003 	bnez	v1,84c <func_80AA21C8+0x24>
 840:	246effff 	addiu	t6,v1,-1
 844:	10000003 	b	854 <func_80AA21C8+0x2c>
 848:	00002025 	move	a0,zero
 84c:	a4ce0208 	sh	t6,520(a2)
 850:	84c40208 	lh	a0,520(a2)
 854:	50800007 	beqzl	a0,874 <func_80AA21C8+0x4c>
 858:	84d901e0 	lh	t9,480(a2)
 85c:	8c4f0680 	lw	t7,1664(v0)
 860:	3c010080 	lui	at,0x80
 864:	01e1c025 	or	t8,t7,at
 868:	10000013 	b	8b8 <func_80AA21C8+0x90>
 86c:	ac580680 	sw	t8,1664(v0)
 870:	84d901e0 	lh	t9,480(a2)
 874:	3c01fffe 	lui	at,0xfffe
 878:	3421ffff 	ori	at,at,0xffff
 87c:	17200009 	bnez	t9,8a4 <func_80AA21C8+0x7c>
 880:	3c0c0000 	lui	t4,0x0
 884:	8cc80004 	lw	t0,4(a2)
 888:	3c010001 	lui	at,0x1
 88c:	00a02025 	move	a0,a1
 890:	01014825 	or	t1,t0,at
 894:	0c000000 	jal	0 <func_80AA19A0>
 898:	acc90004 	sw	t1,4(a2)
 89c:	10000007 	b	8bc <func_80AA21C8+0x94>
 8a0:	8fbf0014 	lw	ra,20(sp)
 8a4:	8cca0004 	lw	t2,4(a2)
 8a8:	258c0000 	addiu	t4,t4,0
 8ac:	accc0190 	sw	t4,400(a2)
 8b0:	01415824 	and	t3,t2,at
 8b4:	accb0004 	sw	t3,4(a2)
 8b8:	8fbf0014 	lw	ra,20(sp)
 8bc:	27bd0018 	addiu	sp,sp,24
 8c0:	03e00008 	jr	ra
 8c4:	00000000 	nop

000008c8 <EnMa2_Update>:
 8c8:	27bdffc8 	addiu	sp,sp,-56
 8cc:	afb0001c 	sw	s0,28(sp)
 8d0:	00808025 	move	s0,a0
 8d4:	afb10020 	sw	s1,32(sp)
 8d8:	00a08825 	move	s1,a1
 8dc:	afbf0024 	sw	ra,36(sp)
 8e0:	26060194 	addiu	a2,s0,404
 8e4:	00c02825 	move	a1,a2
 8e8:	0c000000 	jal	0 <func_80AA19A0>
 8ec:	afa6002c 	sw	a2,44(sp)
 8f0:	3c010001 	lui	at,0x1
 8f4:	34211e60 	ori	at,at,0x1e60
 8f8:	8fa6002c 	lw	a2,44(sp)
 8fc:	02212821 	addu	a1,s1,at
 900:	0c000000 	jal	0 <func_80AA19A0>
 904:	02202025 	move	a0,s1
 908:	0c000000 	jal	0 <func_80AA19A0>
 90c:	2604014c 	addiu	a0,s0,332
 910:	0c000000 	jal	0 <func_80AA19A0>
 914:	02002025 	move	a0,s0
 918:	8e190190 	lw	t9,400(s0)
 91c:	02002025 	move	a0,s0
 920:	02202825 	move	a1,s1
 924:	0320f809 	jalr	t9
 928:	00000000 	nop
 92c:	02002025 	move	a0,s0
 930:	0c000000 	jal	0 <func_80AA19A0>
 934:	02202825 	move	a1,s1
 938:	02002025 	move	a0,s0
 93c:	0c000000 	jal	0 <func_80AA19A0>
 940:	02202825 	move	a1,s1
 944:	8e0f0190 	lw	t7,400(s0)
 948:	3c0e0000 	lui	t6,0x0
 94c:	25ce0000 	addiu	t6,t6,0
 950:	51cf0014 	beql	t6,t7,9a4 <EnMa2_Update+0xdc>
 954:	8fbf0024 	lw	ra,36(sp)
 958:	861801d4 	lh	t8,468(s0)
 95c:	3c0141f0 	lui	at,0x41f0
 960:	44814000 	mtc1	at,$f8
 964:	44982000 	mtc1	t8,$f4
 968:	3c080000 	lui	t0,0x0
 96c:	3c090000 	lui	t1,0x0
 970:	468021a0 	cvt.s.w	$f6,$f4
 974:	25290000 	addiu	t1,t1,0
 978:	25080000 	addiu	t0,t0,0
 97c:	afa80010 	sw	t0,16(sp)
 980:	afa90014 	sw	t1,20(sp)
 984:	02202025 	move	a0,s1
 988:	46083280 	add.s	$f10,$f6,$f8
 98c:	02002825 	move	a1,s0
 990:	260601e0 	addiu	a2,s0,480
 994:	44075000 	mfc1	a3,$f10
 998:	0c000000 	jal	0 <func_80AA19A0>
 99c:	00000000 	nop
 9a0:	8fbf0024 	lw	ra,36(sp)
 9a4:	8fb0001c 	lw	s0,28(sp)
 9a8:	8fb10020 	lw	s1,32(sp)
 9ac:	03e00008 	jr	ra
 9b0:	27bd0038 	addiu	sp,sp,56

000009b4 <EnMa2_OverrideLimbDraw>:
 9b4:	27bdffc8 	addiu	sp,sp,-56
 9b8:	afb00018 	sw	s0,24(sp)
 9bc:	24010003 	li	at,3
 9c0:	00a08025 	move	s0,a1
 9c4:	afbf001c 	sw	ra,28(sp)
 9c8:	afa40038 	sw	a0,56(sp)
 9cc:	10a10004 	beq	a1,at,9e0 <EnMa2_OverrideLimbDraw+0x2c>
 9d0:	afa70044 	sw	a3,68(sp)
 9d4:	24010006 	li	at,6
 9d8:	54a10003 	bnel	a1,at,9e8 <EnMa2_OverrideLimbDraw+0x34>
 9dc:	24010012 	li	at,18
 9e0:	acc00000 	sw	zero,0(a2)
 9e4:	24010012 	li	at,18
 9e8:	5601002e 	bnel	s0,at,aa4 <EnMa2_OverrideLimbDraw+0xf0>
 9ec:	2401000b 	li	at,11
 9f0:	44807000 	mtc1	zero,$f14
 9f4:	3c0144af 	lui	at,0x44af
 9f8:	44816000 	mtc1	at,$f12
 9fc:	44067000 	mfc1	a2,$f14
 a00:	0c000000 	jal	0 <func_80AA19A0>
 a04:	24070001 	li	a3,1
 a08:	8faf004c 	lw	t7,76(sp)
 a0c:	27ae002c 	addiu	t6,sp,44
 a10:	3c014700 	lui	at,0x4700
 a14:	89f901e8 	lwl	t9,488(t7)
 a18:	99f901eb 	lwr	t9,491(t7)
 a1c:	44814000 	mtc1	at,$f8
 a20:	3c010000 	lui	at,0x0
 a24:	add90000 	sw	t9,0(t6)
 a28:	95f901ec 	lhu	t9,492(t7)
 a2c:	24050001 	li	a1,1
 a30:	a5d90004 	sh	t9,4(t6)
 a34:	87a8002e 	lh	t0,46(sp)
 a38:	c4300068 	lwc1	$f16,104(at)
 a3c:	44882000 	mtc1	t0,$f4
 a40:	00000000 	nop
 a44:	468021a0 	cvt.s.w	$f6,$f4
 a48:	46083283 	div.s	$f10,$f6,$f8
 a4c:	46105302 	mul.s	$f12,$f10,$f16
 a50:	0c000000 	jal	0 <func_80AA19A0>
 a54:	00000000 	nop
 a58:	87a9002c 	lh	t1,44(sp)
 a5c:	3c014700 	lui	at,0x4700
 a60:	44813000 	mtc1	at,$f6
 a64:	44899000 	mtc1	t1,$f18
 a68:	3c010000 	lui	at,0x0
 a6c:	c42a006c 	lwc1	$f10,108(at)
 a70:	46809120 	cvt.s.w	$f4,$f18
 a74:	24050001 	li	a1,1
 a78:	46062203 	div.s	$f8,$f4,$f6
 a7c:	460a4302 	mul.s	$f12,$f8,$f10
 a80:	0c000000 	jal	0 <func_80AA19A0>
 a84:	00000000 	nop
 a88:	44807000 	mtc1	zero,$f14
 a8c:	3c01c4af 	lui	at,0xc4af
 a90:	44816000 	mtc1	at,$f12
 a94:	44067000 	mfc1	a2,$f14
 a98:	0c000000 	jal	0 <func_80AA19A0>
 a9c:	24070001 	li	a3,1
 aa0:	2401000b 	li	at,11
 aa4:	16010022 	bne	s0,at,b30 <EnMa2_OverrideLimbDraw+0x17c>
 aa8:	8fab004c 	lw	t3,76(sp)
 aac:	896d01ee 	lwl	t5,494(t3)
 ab0:	996d01f1 	lwr	t5,497(t3)
 ab4:	27aa002c 	addiu	t2,sp,44
 ab8:	3c014700 	lui	at,0x4700
 abc:	ad4d0000 	sw	t5,0(t2)
 ac0:	956d01f2 	lhu	t5,498(t3)
 ac4:	44812000 	mtc1	at,$f4
 ac8:	3c010000 	lui	at,0x0
 acc:	a54d0004 	sh	t5,4(t2)
 ad0:	87ae002e 	lh	t6,46(sp)
 ad4:	c4280070 	lwc1	$f8,112(at)
 ad8:	24050001 	li	a1,1
 adc:	000e7823 	negu	t7,t6
 ae0:	448f8000 	mtc1	t7,$f16
 ae4:	00000000 	nop
 ae8:	468084a0 	cvt.s.w	$f18,$f16
 aec:	46049183 	div.s	$f6,$f18,$f4
 af0:	46083302 	mul.s	$f12,$f6,$f8
 af4:	0c000000 	jal	0 <func_80AA19A0>
 af8:	00000000 	nop
 afc:	87b8002c 	lh	t8,44(sp)
 b00:	3c014700 	lui	at,0x4700
 b04:	44819000 	mtc1	at,$f18
 b08:	0018c823 	negu	t9,t8
 b0c:	44995000 	mtc1	t9,$f10
 b10:	3c010000 	lui	at,0x0
 b14:	c4260074 	lwc1	$f6,116(at)
 b18:	46805420 	cvt.s.w	$f16,$f10
 b1c:	24050001 	li	a1,1
 b20:	46128103 	div.s	$f4,$f16,$f18
 b24:	46062302 	mul.s	$f12,$f4,$f6
 b28:	0c000000 	jal	0 <func_80AA19A0>
 b2c:	00000000 	nop
 b30:	2401000b 	li	at,11
 b34:	12010005 	beq	s0,at,b4c <EnMa2_OverrideLimbDraw+0x198>
 b38:	8fa8004c 	lw	t0,76(sp)
 b3c:	2401000c 	li	at,12
 b40:	12010002 	beq	s0,at,b4c <EnMa2_OverrideLimbDraw+0x198>
 b44:	2401000f 	li	at,15
 b48:	16010024 	bne	s0,at,bdc <EnMa2_OverrideLimbDraw+0x228>
 b4c:	00104880 	sll	t1,s0,0x2
 b50:	01304823 	subu	t1,t1,s0
 b54:	00094840 	sll	t1,t1,0x1
 b58:	01091821 	addu	v1,t0,t1
 b5c:	84640214 	lh	a0,532(v1)
 b60:	0c000000 	jal	0 <func_80AA19A0>
 b64:	afa30024 	sw	v1,36(sp)
 b68:	8fa20048 	lw	v0,72(sp)
 b6c:	3c014348 	lui	at,0x4348
 b70:	44818000 	mtc1	at,$f16
 b74:	844a0002 	lh	t2,2(v0)
 b78:	8fa30024 	lw	v1,36(sp)
 b7c:	46100482 	mul.s	$f18,$f0,$f16
 b80:	448a4000 	mtc1	t2,$f8
 b84:	00000000 	nop
 b88:	468042a0 	cvt.s.w	$f10,$f8
 b8c:	46125100 	add.s	$f4,$f10,$f18
 b90:	4600218d 	trunc.w.s	$f6,$f4
 b94:	440c3000 	mfc1	t4,$f6
 b98:	00000000 	nop
 b9c:	a44c0002 	sh	t4,2(v0)
 ba0:	0c000000 	jal	0 <func_80AA19A0>
 ba4:	84640216 	lh	a0,534(v1)
 ba8:	8fa20048 	lw	v0,72(sp)
 bac:	3c014348 	lui	at,0x4348
 bb0:	44815000 	mtc1	at,$f10
 bb4:	844d0004 	lh	t5,4(v0)
 bb8:	460a0482 	mul.s	$f18,$f0,$f10
 bbc:	448d4000 	mtc1	t5,$f8
 bc0:	00000000 	nop
 bc4:	46804420 	cvt.s.w	$f16,$f8
 bc8:	46128100 	add.s	$f4,$f16,$f18
 bcc:	4600218d 	trunc.w.s	$f6,$f4
 bd0:	440f3000 	mfc1	t7,$f6
 bd4:	00000000 	nop
 bd8:	a44f0004 	sh	t7,4(v0)
 bdc:	8fbf001c 	lw	ra,28(sp)
 be0:	8fb00018 	lw	s0,24(sp)
 be4:	27bd0038 	addiu	sp,sp,56
 be8:	03e00008 	jr	ra
 bec:	00001025 	move	v0,zero

00000bf0 <EnMa2_PostLimbDraw>:
 bf0:	27bdffb8 	addiu	sp,sp,-72
 bf4:	3c0f0000 	lui	t7,0x0
 bf8:	afbf0014 	sw	ra,20(sp)
 bfc:	afa40048 	sw	a0,72(sp)
 c00:	afa5004c 	sw	a1,76(sp)
 c04:	afa60050 	sw	a2,80(sp)
 c08:	afa70054 	sw	a3,84(sp)
 c0c:	25ef00a8 	addiu	t7,t7,168
 c10:	8df90000 	lw	t9,0(t7)
 c14:	27ae0038 	addiu	t6,sp,56
 c18:	8df80004 	lw	t8,4(t7)
 c1c:	add90000 	sw	t9,0(t6)
 c20:	8df90008 	lw	t9,8(t7)
 c24:	add80004 	sw	t8,4(t6)
 c28:	3c060000 	lui	a2,0x0
 c2c:	add90008 	sw	t9,8(t6)
 c30:	8fa80048 	lw	t0,72(sp)
 c34:	24c60000 	addiu	a2,a2,0
 c38:	24070388 	li	a3,904
 c3c:	8d050000 	lw	a1,0(t0)
 c40:	27a40024 	addiu	a0,sp,36
 c44:	0c000000 	jal	0 <func_80AA19A0>
 c48:	afa50034 	sw	a1,52(sp)
 c4c:	8fa9004c 	lw	t1,76(sp)
 c50:	8fa50058 	lw	a1,88(sp)
 c54:	24010012 	li	at,18
 c58:	15210003 	bne	t1,at,c68 <EnMa2_PostLimbDraw+0x78>
 c5c:	24a50038 	addiu	a1,a1,56
 c60:	0c000000 	jal	0 <func_80AA19A0>
 c64:	27a40038 	addiu	a0,sp,56
 c68:	8faa004c 	lw	t2,76(sp)
 c6c:	2401000e 	li	at,14
 c70:	3c060000 	lui	a2,0x0
 c74:	15410010 	bne	t2,at,cb8 <EnMa2_PostLimbDraw+0xc8>
 c78:	24c60010 	addiu	a2,a2,16
 c7c:	8fac0058 	lw	t4,88(sp)
 c80:	3c0b0000 	lui	t3,0x0
 c84:	256b0000 	addiu	t3,t3,0
 c88:	8d8d0154 	lw	t5,340(t4)
 c8c:	8fa40034 	lw	a0,52(sp)
 c90:	3c0fde00 	lui	t7,0xde00
 c94:	556d0009 	bnel	t3,t5,cbc <EnMa2_PostLimbDraw+0xcc>
 c98:	8fb90048 	lw	t9,72(sp)
 c9c:	8c8302c0 	lw	v1,704(a0)
 ca0:	3c180000 	lui	t8,0x0
 ca4:	27180000 	addiu	t8,t8,0
 ca8:	246e0008 	addiu	t6,v1,8
 cac:	ac8e02c0 	sw	t6,704(a0)
 cb0:	ac780004 	sw	t8,4(v1)
 cb4:	ac6f0000 	sw	t7,0(v1)
 cb8:	8fb90048 	lw	t9,72(sp)
 cbc:	27a40024 	addiu	a0,sp,36
 cc0:	2407039f 	li	a3,927
 cc4:	0c000000 	jal	0 <func_80AA19A0>
 cc8:	8f250000 	lw	a1,0(t9)
 ccc:	8fbf0014 	lw	ra,20(sp)
 cd0:	27bd0048 	addiu	sp,sp,72
 cd4:	03e00008 	jr	ra
 cd8:	00000000 	nop

00000cdc <EnMa2_Draw>:
 cdc:	27bdff98 	addiu	sp,sp,-104
 ce0:	afb20030 	sw	s2,48(sp)
 ce4:	00a09025 	move	s2,a1
 ce8:	afbf0034 	sw	ra,52(sp)
 cec:	afb1002c 	sw	s1,44(sp)
 cf0:	afb00028 	sw	s0,40(sp)
 cf4:	8ca50000 	lw	a1,0(a1)
 cf8:	00808025 	move	s0,a0
 cfc:	3c060000 	lui	a2,0x0
 d00:	24c60020 	addiu	a2,a2,32
 d04:	27a40044 	addiu	a0,sp,68
 d08:	240703bb 	li	a3,955
 d0c:	0c000000 	jal	0 <func_80AA19A0>
 d10:	00a08825 	move	s1,a1
 d14:	864e07a0 	lh	t6,1952(s2)
 d18:	26040024 	addiu	a0,s0,36
 d1c:	000e7880 	sll	t7,t6,0x2
 d20:	024fc021 	addu	t8,s2,t7
 d24:	8f020790 	lw	v0,1936(t8)
 d28:	0c000000 	jal	0 <func_80AA19A0>
 d2c:	2445005c 	addiu	a1,v0,92
 d30:	46000306 	mov.s	$f12,$f0
 d34:	0c000000 	jal	0 <func_80AA19A0>
 d38:	2405002f 	li	a1,47
 d3c:	0c000000 	jal	0 <func_80AA19A0>
 d40:	8e440000 	lw	a0,0(s2)
 d44:	8e2302c0 	lw	v1,704(s1)
 d48:	3c08db06 	lui	t0,0xdb06
 d4c:	35080024 	ori	t0,t0,0x24
 d50:	24790008 	addiu	t9,v1,8
 d54:	ae3902c0 	sw	t9,704(s1)
 d58:	ac680000 	sw	t0,0(v1)
 d5c:	86090210 	lh	t1,528(s0)
 d60:	3c040000 	lui	a0,0x0
 d64:	3c060000 	lui	a2,0x0
 d68:	00095080 	sll	t2,t1,0x2
 d6c:	008a2021 	addu	a0,a0,t2
 d70:	8c8400b4 	lw	a0,180(a0)
 d74:	24c60000 	addiu	a2,a2,0
 d78:	3c0500ff 	lui	a1,0xff
 d7c:	00046100 	sll	t4,a0,0x4
 d80:	000c6f02 	srl	t5,t4,0x1c
 d84:	000d7080 	sll	t6,t5,0x2
 d88:	00ce7821 	addu	t7,a2,t6
 d8c:	8df80000 	lw	t8,0(t7)
 d90:	34a5ffff 	ori	a1,a1,0xffff
 d94:	00855824 	and	t3,a0,a1
 d98:	3c078000 	lui	a3,0x8000
 d9c:	0178c821 	addu	t9,t3,t8
 da0:	03274021 	addu	t0,t9,a3
 da4:	ac680004 	sw	t0,4(v1)
 da8:	8e2302c0 	lw	v1,704(s1)
 dac:	3c0adb06 	lui	t2,0xdb06
 db0:	354a0020 	ori	t2,t2,0x20
 db4:	24690008 	addiu	t1,v1,8
 db8:	ae2902c0 	sw	t1,704(s1)
 dbc:	ac6a0000 	sw	t2,0(v1)
 dc0:	860c020e 	lh	t4,526(s0)
 dc4:	3c040000 	lui	a0,0x0
 dc8:	000c6880 	sll	t5,t4,0x2
 dcc:	008d2021 	addu	a0,a0,t5
 dd0:	8c8400c0 	lw	a0,192(a0)
 dd4:	3c0d0000 	lui	t5,0x0
 dd8:	3c0c0000 	lui	t4,0x0
 ddc:	00047900 	sll	t7,a0,0x4
 de0:	000f5f02 	srl	t3,t7,0x1c
 de4:	000bc080 	sll	t8,t3,0x2
 de8:	00d8c821 	addu	t9,a2,t8
 dec:	8f280000 	lw	t0,0(t9)
 df0:	00857024 	and	t6,a0,a1
 df4:	258c0000 	addiu	t4,t4,0
 df8:	01c84821 	addu	t1,t6,t0
 dfc:	01275021 	addu	t2,t1,a3
 e00:	ac6a0004 	sw	t2,4(v1)
 e04:	9207014e 	lbu	a3,334(s0)
 e08:	8e06016c 	lw	a2,364(s0)
 e0c:	8e050150 	lw	a1,336(s0)
 e10:	25ad0000 	addiu	t5,t5,0
 e14:	afad0014 	sw	t5,20(sp)
 e18:	afb00018 	sw	s0,24(sp)
 e1c:	afac0010 	sw	t4,16(sp)
 e20:	0c000000 	jal	0 <func_80AA19A0>
 e24:	02402025 	move	a0,s2
 e28:	3c060000 	lui	a2,0x0
 e2c:	24c60030 	addiu	a2,a2,48
 e30:	27a40044 	addiu	a0,sp,68
 e34:	8e450000 	lw	a1,0(s2)
 e38:	0c000000 	jal	0 <func_80AA19A0>
 e3c:	240703de 	li	a3,990
 e40:	8fbf0034 	lw	ra,52(sp)
 e44:	8fb00028 	lw	s0,40(sp)
 e48:	8fb1002c 	lw	s1,44(sp)
 e4c:	8fb20030 	lw	s2,48(sp)
 e50:	03e00008 	jr	ra
 e54:	27bd0068 	addiu	sp,sp,104
	...
