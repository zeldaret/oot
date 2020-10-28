
build/src/overlays/actors/ovl_Bg_Jya_Bombchuiwa/z_bg_jya_bombchuiwa.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808944A0>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	00803025 	move	a2,a0
   8:	afa5002c 	sw	a1,44(sp)
   c:	00a02025 	move	a0,a1
  10:	afbf001c 	sw	ra,28(sp)
  14:	24c50150 	addiu	a1,a2,336
  18:	afa50020 	sw	a1,32(sp)
  1c:	0c000000 	jal	0 <func_808944A0>
  20:	afa60028 	sw	a2,40(sp)
  24:	8fa60028 	lw	a2,40(sp)
  28:	3c070000 	lui	a3,0x0
  2c:	8fa50020 	lw	a1,32(sp)
  30:	24ce0170 	addiu	t6,a2,368
  34:	afae0010 	sw	t6,16(sp)
  38:	24e70000 	addiu	a3,a3,0
  3c:	0c000000 	jal	0 <func_808944A0>
  40:	8fa4002c 	lw	a0,44(sp)
  44:	8fbf001c 	lw	ra,28(sp)
  48:	27bd0028 	addiu	sp,sp,40
  4c:	03e00008 	jr	ra
  50:	00000000 	nop

00000054 <func_808944F4>:
  54:	afa50004 	sw	a1,4(sp)
  58:	908e01b6 	lbu	t6,438(a0)
  5c:	31d8fff8 	andi	t8,t6,0xfff8
  60:	a09801b6 	sb	t8,438(a0)
  64:	0305c825 	or	t9,t8,a1
  68:	03e00008 	jr	ra
  6c:	a09901b6 	sb	t9,438(a0)

00000070 <BgJyaBombchuiwa_Init>:
  70:	27bdffe0 	addiu	sp,sp,-32
  74:	afa50024 	sw	a1,36(sp)
  78:	afbf001c 	sw	ra,28(sp)
  7c:	afb00018 	sw	s0,24(sp)
  80:	3c050000 	lui	a1,0x0
  84:	00808025 	move	s0,a0
  88:	0c000000 	jal	0 <func_808944A0>
  8c:	24a50000 	addiu	a1,a1,0
  90:	02002025 	move	a0,s0
  94:	0c000000 	jal	0 <func_808944A0>
  98:	8fa50024 	lw	a1,36(sp)
  9c:	8605001c 	lh	a1,28(s0)
  a0:	8fa40024 	lw	a0,36(sp)
  a4:	0c000000 	jal	0 <func_808944A0>
  a8:	30a5003f 	andi	a1,a1,0x3f
  ac:	10400005 	beqz	v0,c4 <BgJyaBombchuiwa_Init+0x54>
  b0:	8fa50024 	lw	a1,36(sp)
  b4:	0c000000 	jal	0 <func_808944A0>
  b8:	02002025 	move	a0,s0
  bc:	10000004 	b	d0 <BgJyaBombchuiwa_Init+0x60>
  c0:	02002025 	move	a0,s0
  c4:	0c000000 	jal	0 <func_808944A0>
  c8:	02002025 	move	a0,s0
  cc:	02002025 	move	a0,s0
  d0:	0c000000 	jal	0 <func_808944A0>
  d4:	24050000 	li	a1,0
  d8:	8fbf001c 	lw	ra,28(sp)
  dc:	8fb00018 	lw	s0,24(sp)
  e0:	27bd0020 	addiu	sp,sp,32
  e4:	03e00008 	jr	ra
  e8:	00000000 	nop

000000ec <BgJyaBombchuiwa_Destroy>:
  ec:	27bdffe8 	addiu	sp,sp,-24
  f0:	00803825 	move	a3,a0
  f4:	afbf0014 	sw	ra,20(sp)
  f8:	00a02025 	move	a0,a1
  fc:	0c000000 	jal	0 <func_808944A0>
 100:	24e50150 	addiu	a1,a3,336
 104:	8fbf0014 	lw	ra,20(sp)
 108:	27bd0018 	addiu	sp,sp,24
 10c:	03e00008 	jr	ra
 110:	00000000 	nop

00000114 <func_808945B4>:
 114:	27bdff38 	addiu	sp,sp,-200
 118:	f7be0070 	sdc1	$f30,112(sp)
 11c:	3c014040 	lui	at,0x4040
 120:	4481f000 	mtc1	at,$f30
 124:	f7bc0068 	sdc1	$f28,104(sp)
 128:	3c0141c8 	lui	at,0x41c8
 12c:	4481e000 	mtc1	at,$f28
 130:	f7ba0060 	sdc1	$f26,96(sp)
 134:	3c014248 	lui	at,0x4248
 138:	4481d000 	mtc1	at,$f26
 13c:	f7b80058 	sdc1	$f24,88(sp)
 140:	3c014220 	lui	at,0x4220
 144:	4481c000 	mtc1	at,$f24
 148:	f7b60050 	sdc1	$f22,80(sp)
 14c:	3c0141a0 	lui	at,0x41a0
 150:	4481b000 	mtc1	at,$f22
 154:	afbe0098 	sw	s8,152(sp)
 158:	f7b40048 	sdc1	$f20,72(sp)
 15c:	3c014120 	lui	at,0x4120
 160:	afb70094 	sw	s7,148(sp)
 164:	afb60090 	sw	s6,144(sp)
 168:	afb5008c 	sw	s5,140(sp)
 16c:	afb40088 	sw	s4,136(sp)
 170:	3c1e0601 	lui	s8,0x601
 174:	4481a000 	mtc1	at,$f20
 178:	0080a825 	move	s5,a0
 17c:	afbf009c 	sw	ra,156(sp)
 180:	afb30084 	sw	s3,132(sp)
 184:	afb20080 	sw	s2,128(sp)
 188:	afb1007c 	sw	s1,124(sp)
 18c:	afb00078 	sw	s0,120(sp)
 190:	afa500cc 	sw	a1,204(sp)
 194:	27deedc0 	addiu	s8,s8,-4672
 198:	0000a025 	move	s4,zero
 19c:	27b600bc 	addiu	s6,sp,188
 1a0:	27b700b0 	addiu	s7,sp,176
 1a4:	2412000c 	li	s2,12
 1a8:	0c000000 	jal	0 <func_808944A0>
 1ac:	24130008 	li	s3,8
 1b0:	46140102 	mul.s	$f4,$f0,$f20
 1b4:	c6a60024 	lwc1	$f6,36(s5)
 1b8:	46062200 	add.s	$f8,$f4,$f6
 1bc:	46144281 	sub.s	$f10,$f8,$f20
 1c0:	0c000000 	jal	0 <func_808944A0>
 1c4:	e7aa00bc 	swc1	$f10,188(sp)
 1c8:	46180402 	mul.s	$f16,$f0,$f24
 1cc:	c6b20028 	lwc1	$f18,40(s5)
 1d0:	46128100 	add.s	$f4,$f16,$f18
 1d4:	46162181 	sub.s	$f6,$f4,$f22
 1d8:	0c000000 	jal	0 <func_808944A0>
 1dc:	e7a600c0 	swc1	$f6,192(sp)
 1e0:	461a0202 	mul.s	$f8,$f0,$f26
 1e4:	c6aa002c 	lwc1	$f10,44(s5)
 1e8:	460a4400 	add.s	$f16,$f8,$f10
 1ec:	461c8481 	sub.s	$f18,$f16,$f28
 1f0:	0c000000 	jal	0 <func_808944A0>
 1f4:	e7b200c4 	swc1	$f18,196(sp)
 1f8:	461e0102 	mul.s	$f4,$f0,$f30
 1fc:	3c010000 	lui	at,0x0
 200:	c4260000 	lwc1	$f6,0(at)
 204:	46062201 	sub.s	$f8,$f4,$f6
 208:	0c000000 	jal	0 <func_808944A0>
 20c:	e7a800b0 	swc1	$f8,176(sp)
 210:	3c014190 	lui	at,0x4190
 214:	44815000 	mtc1	at,$f10
 218:	00000000 	nop
 21c:	460a0402 	mul.s	$f16,$f0,$f10
 220:	0c000000 	jal	0 <func_808944A0>
 224:	e7b000b4 	swc1	$f16,180(sp)
 228:	3c013f00 	lui	at,0x3f00
 22c:	44819000 	mtc1	at,$f18
 230:	3c014170 	lui	at,0x4170
 234:	44813000 	mtc1	at,$f6
 238:	46120101 	sub.s	$f4,$f0,$f18
 23c:	46062202 	mul.s	$f8,$f4,$f6
 240:	0c000000 	jal	0 <func_808944A0>
 244:	e7a800b8 	swc1	$f8,184(sp)
 248:	46160282 	mul.s	$f10,$f0,$f22
 24c:	24100001 	li	s0,1
 250:	4600540d 	trunc.w.s	$f16,$f10
 254:	44028000 	mfc1	v0,$f16
 258:	00000000 	nop
 25c:	24420001 	addiu	v0,v0,1
 260:	00027c00 	sll	t7,v0,0x10
 264:	000fc403 	sra	t8,t7,0x10
 268:	00028c00 	sll	s1,v0,0x10
 26c:	2b01000b 	slti	at,t8,11
 270:	14200003 	bnez	at,280 <func_808945B4+0x16c>
 274:	00118c03 	sra	s1,s1,0x10
 278:	10000001 	b	280 <func_808945B4+0x16c>
 27c:	24100005 	li	s0,5
 280:	0c000000 	jal	0 <func_808944A0>
 284:	00000000 	nop
 288:	3c010000 	lui	at,0x0
 28c:	c4320000 	lwc1	$f18,0(at)
 290:	8fa400cc 	lw	a0,204(sp)
 294:	02c02825 	move	a1,s6
 298:	4612003c 	c.lt.s	$f0,$f18
 29c:	02e03025 	move	a2,s7
 2a0:	02c03825 	move	a3,s6
 2a4:	2419fed4 	li	t9,-300
 2a8:	45000005 	bc1f	2c0 <func_808945B4+0x1ac>
 2ac:	24080001 	li	t0,1
 2b0:	36100040 	ori	s0,s0,0x40
 2b4:	00108400 	sll	s0,s0,0x10
 2b8:	10000008 	b	2dc <func_808945B4+0x1c8>
 2bc:	00108403 	sra	s0,s0,0x10
 2c0:	36100020 	ori	s0,s0,0x20
 2c4:	00108400 	sll	s0,s0,0x10
 2c8:	2a210008 	slti	at,s1,8
 2cc:	10200003 	beqz	at,2dc <func_808945B4+0x1c8>
 2d0:	00108403 	sra	s0,s0,0x10
 2d4:	24120046 	li	s2,70
 2d8:	24130028 	li	s3,40
 2dc:	2409000f 	li	t1,15
 2e0:	240a0050 	li	t2,80
 2e4:	240bffff 	li	t3,-1
 2e8:	240c00f1 	li	t4,241
 2ec:	afac0038 	sw	t4,56(sp)
 2f0:	afab0034 	sw	t3,52(sp)
 2f4:	afaa0030 	sw	t2,48(sp)
 2f8:	afa9002c 	sw	t1,44(sp)
 2fc:	afb90010 	sw	t9,16(sp)
 300:	afb00014 	sw	s0,20(sp)
 304:	afb20018 	sw	s2,24(sp)
 308:	afb3001c 	sw	s3,28(sp)
 30c:	afa00020 	sw	zero,32(sp)
 310:	afb10024 	sw	s1,36(sp)
 314:	afa80028 	sw	t0,40(sp)
 318:	0c000000 	jal	0 <func_808944A0>
 31c:	afbe003c 	sw	s8,60(sp)
 320:	26940001 	addiu	s4,s4,1
 324:	24010014 	li	at,20
 328:	5681ff9f 	bnel	s4,at,1a8 <func_808945B4+0x94>
 32c:	2412000c 	li	s2,12
 330:	240d0064 	li	t5,100
 334:	240e00a0 	li	t6,160
 338:	afae0014 	sw	t6,20(sp)
 33c:	afad0010 	sw	t5,16(sp)
 340:	8fa400cc 	lw	a0,204(sp)
 344:	26a50024 	addiu	a1,s5,36
 348:	3c0642c8 	lui	a2,0x42c8
 34c:	24070008 	li	a3,8
 350:	0c000000 	jal	0 <func_808944A0>
 354:	afa00018 	sw	zero,24(sp)
 358:	8fbf009c 	lw	ra,156(sp)
 35c:	d7b40048 	ldc1	$f20,72(sp)
 360:	d7b60050 	ldc1	$f22,80(sp)
 364:	d7b80058 	ldc1	$f24,88(sp)
 368:	d7ba0060 	ldc1	$f26,96(sp)
 36c:	d7bc0068 	ldc1	$f28,104(sp)
 370:	d7be0070 	ldc1	$f30,112(sp)
 374:	8fb00078 	lw	s0,120(sp)
 378:	8fb1007c 	lw	s1,124(sp)
 37c:	8fb20080 	lw	s2,128(sp)
 380:	8fb30084 	lw	s3,132(sp)
 384:	8fb40088 	lw	s4,136(sp)
 388:	8fb5008c 	lw	s5,140(sp)
 38c:	8fb60090 	lw	s6,144(sp)
 390:	8fb70094 	lw	s7,148(sp)
 394:	8fbe0098 	lw	s8,152(sp)
 398:	03e00008 	jr	ra
 39c:	27bd00c8 	addiu	sp,sp,200

000003a0 <func_80894840>:
 3a0:	27bdffe8 	addiu	sp,sp,-24
 3a4:	3c0e0000 	lui	t6,0x0
 3a8:	afbf0014 	sw	ra,20(sp)
 3ac:	afa5001c 	sw	a1,28(sp)
 3b0:	25ce0000 	addiu	t6,t6,0
 3b4:	ac8e014c 	sw	t6,332(a0)
 3b8:	afa40018 	sw	a0,24(sp)
 3bc:	0c000000 	jal	0 <func_808944A0>
 3c0:	24050003 	li	a1,3
 3c4:	8fa40018 	lw	a0,24(sp)
 3c8:	a48001b4 	sh	zero,436(a0)
 3cc:	8fbf0014 	lw	ra,20(sp)
 3d0:	27bd0018 	addiu	sp,sp,24
 3d4:	03e00008 	jr	ra
 3d8:	00000000 	nop

000003dc <func_8089487C>:
 3dc:	27bdffd0 	addiu	sp,sp,-48
 3e0:	afbf0024 	sw	ra,36(sp)
 3e4:	afb10020 	sw	s1,32(sp)
 3e8:	afb0001c 	sw	s0,28(sp)
 3ec:	908e0161 	lbu	t6,353(a0)
 3f0:	00808025 	move	s0,a0
 3f4:	00a08825 	move	s1,a1
 3f8:	31cf0002 	andi	t7,t6,0x2
 3fc:	55e00007 	bnezl	t7,41c <func_8089487C+0x40>
 400:	860201b4 	lh	v0,436(s0)
 404:	849801b4 	lh	t8,436(a0)
 408:	3c010001 	lui	at,0x1
 40c:	34211e60 	ori	at,at,0x1e60
 410:	1b00001d 	blez	t8,488 <func_8089487C+0xac>
 414:	02202025 	move	a0,s1
 418:	860201b4 	lh	v0,436(s0)
 41c:	02202025 	move	a0,s1
 420:	24050d52 	li	a1,3410
 424:	14400005 	bnez	v0,43c <func_8089487C+0x60>
 428:	2406ff9d 	li	a2,-99
 42c:	02003825 	move	a3,s0
 430:	0c000000 	jal	0 <func_808944A0>
 434:	afa00010 	sw	zero,16(sp)
 438:	860201b4 	lh	v0,436(s0)
 43c:	24590001 	addiu	t9,v0,1
 440:	a61901b4 	sh	t9,436(s0)
 444:	860801b4 	lh	t0,436(s0)
 448:	02002025 	move	a0,s0
 44c:	2901000b 	slti	at,t0,11
 450:	54200017 	bnezl	at,4b0 <func_8089487C+0xd4>
 454:	8fbf0024 	lw	ra,36(sp)
 458:	0c000000 	jal	0 <func_808944A0>
 45c:	02202825 	move	a1,s1
 460:	02002025 	move	a0,s0
 464:	0c000000 	jal	0 <func_808944A0>
 468:	02202825 	move	a1,s1
 46c:	02202025 	move	a0,s1
 470:	26050024 	addiu	a1,s0,36
 474:	24060028 	li	a2,40
 478:	0c000000 	jal	0 <func_808944A0>
 47c:	24072810 	li	a3,10256
 480:	1000000b 	b	4b0 <func_8089487C+0xd4>
 484:	8fbf0024 	lw	ra,36(sp)
 488:	02212821 	addu	a1,s1,at
 48c:	26060150 	addiu	a2,s0,336
 490:	afa60028 	sw	a2,40(sp)
 494:	0c000000 	jal	0 <func_808944A0>
 498:	afa5002c 	sw	a1,44(sp)
 49c:	8fa5002c 	lw	a1,44(sp)
 4a0:	8fa60028 	lw	a2,40(sp)
 4a4:	0c000000 	jal	0 <func_808944A0>
 4a8:	02202025 	move	a0,s1
 4ac:	8fbf0024 	lw	ra,36(sp)
 4b0:	8fb0001c 	lw	s0,28(sp)
 4b4:	8fb10020 	lw	s1,32(sp)
 4b8:	03e00008 	jr	ra
 4bc:	27bd0030 	addiu	sp,sp,48

000004c0 <func_80894960>:
 4c0:	27bdffe8 	addiu	sp,sp,-24
 4c4:	3c0e0000 	lui	t6,0x0
 4c8:	afbf0014 	sw	ra,20(sp)
 4cc:	afa5001c 	sw	a1,28(sp)
 4d0:	25ce0000 	addiu	t6,t6,0
 4d4:	ac8e014c 	sw	t6,332(a0)
 4d8:	afa40018 	sw	a0,24(sp)
 4dc:	0c000000 	jal	0 <func_808944A0>
 4e0:	24050004 	li	a1,4
 4e4:	8fa40018 	lw	a0,24(sp)
 4e8:	3c010000 	lui	at,0x0
 4ec:	c4240000 	lwc1	$f4,0(at)
 4f0:	8c8f0004 	lw	t7,4(a0)
 4f4:	2401fffe 	li	at,-2
 4f8:	a48001b4 	sh	zero,436(a0)
 4fc:	01e1c024 	and	t8,t7,at
 500:	ac980004 	sw	t8,4(a0)
 504:	e48401b0 	swc1	$f4,432(a0)
 508:	8fbf0014 	lw	ra,20(sp)
 50c:	27bd0018 	addiu	sp,sp,24
 510:	03e00008 	jr	ra
 514:	00000000 	nop

00000518 <func_808949B8>:
 518:	27bdffd0 	addiu	sp,sp,-48
 51c:	afbf002c 	sw	ra,44(sp)
 520:	afb00028 	sw	s0,40(sp)
 524:	afa50034 	sw	a1,52(sp)
 528:	848e01b4 	lh	t6,436(a0)
 52c:	00808025 	move	s0,a0
 530:	26050024 	addiu	a1,s0,36
 534:	25cf0001 	addiu	t7,t6,1
 538:	a48f01b4 	sh	t7,436(a0)
 53c:	849801b4 	lh	t8,436(a0)
 540:	8fa40034 	lw	a0,52(sp)
 544:	3c064270 	lui	a2,0x4270
 548:	33190004 	andi	t9,t8,0x4
 54c:	13200007 	beqz	t9,56c <func_808949B8+0x54>
 550:	24070003 	li	a3,3
 554:	24080064 	li	t0,100
 558:	24090064 	li	t1,100
 55c:	afa90014 	sw	t1,20(sp)
 560:	afa80010 	sw	t0,16(sp)
 564:	0c000000 	jal	0 <func_808944A0>
 568:	afa00018 	sw	zero,24(sp)
 56c:	3c063ce5 	lui	a2,0x3ce5
 570:	34c66042 	ori	a2,a2,0x6042
 574:	260401b0 	addiu	a0,s0,432
 578:	0c000000 	jal	0 <func_808944A0>
 57c:	3c053f80 	lui	a1,0x3f80
 580:	10400003 	beqz	v0,590 <func_808949B8+0x78>
 584:	02002025 	move	a0,s0
 588:	0c000000 	jal	0 <func_808944A0>
 58c:	8fa50034 	lw	a1,52(sp)
 590:	8fbf002c 	lw	ra,44(sp)
 594:	8fb00028 	lw	s0,40(sp)
 598:	27bd0030 	addiu	sp,sp,48
 59c:	03e00008 	jr	ra
 5a0:	00000000 	nop

000005a4 <func_80894A44>:
 5a4:	27bdffc8 	addiu	sp,sp,-56
 5a8:	3c014319 	lui	at,0x4319
 5ac:	44812000 	mtc1	at,$f4
 5b0:	afbf0034 	sw	ra,52(sp)
 5b4:	afb00030 	sw	s0,48(sp)
 5b8:	afa5003c 	sw	a1,60(sp)
 5bc:	00808025 	move	s0,a0
 5c0:	ac80014c 	sw	zero,332(a0)
 5c4:	24050004 	li	a1,4
 5c8:	0c000000 	jal	0 <func_808944A0>
 5cc:	e48401b0 	swc1	$f4,432(a0)
 5d0:	c6060028 	lwc1	$f6,40(s0)
 5d4:	8e070024 	lw	a3,36(s0)
 5d8:	8fa5003c 	lw	a1,60(sp)
 5dc:	e7a60010 	swc1	$f6,16(sp)
 5e0:	c608002c 	lwc1	$f8,44(s0)
 5e4:	afa00024 	sw	zero,36(sp)
 5e8:	afa00020 	sw	zero,32(sp)
 5ec:	afa0001c 	sw	zero,28(sp)
 5f0:	afa00018 	sw	zero,24(sp)
 5f4:	240600b7 	li	a2,183
 5f8:	24a41c24 	addiu	a0,a1,7204
 5fc:	0c000000 	jal	0 <func_808944A0>
 600:	e7a80014 	swc1	$f8,20(sp)
 604:	14400007 	bnez	v0,624 <func_80894A44+0x80>
 608:	3c040000 	lui	a0,0x0
 60c:	3c050000 	lui	a1,0x0
 610:	24a50000 	addiu	a1,a1,0
 614:	24840000 	addiu	a0,a0,0
 618:	2406019a 	li	a2,410
 61c:	0c000000 	jal	0 <func_808944A0>
 620:	8607001c 	lh	a3,28(s0)
 624:	8fbf0034 	lw	ra,52(sp)
 628:	8fb00030 	lw	s0,48(sp)
 62c:	27bd0038 	addiu	sp,sp,56
 630:	03e00008 	jr	ra
 634:	00000000 	nop

00000638 <BgJyaBombchuiwa_Update>:
 638:	27bdffe8 	addiu	sp,sp,-24
 63c:	afbf0014 	sw	ra,20(sp)
 640:	8c82014c 	lw	v0,332(a0)
 644:	50400004 	beqzl	v0,658 <BgJyaBombchuiwa_Update+0x20>
 648:	8fbf0014 	lw	ra,20(sp)
 64c:	0040f809 	jalr	v0
 650:	00000000 	nop
 654:	8fbf0014 	lw	ra,20(sp)
 658:	27bd0018 	addiu	sp,sp,24
 65c:	03e00008 	jr	ra
 660:	00000000 	nop

00000664 <func_80894B04>:
 664:	27bdffc0 	addiu	sp,sp,-64
 668:	afbf001c 	sw	ra,28(sp)
 66c:	afb00018 	sw	s0,24(sp)
 670:	afa40040 	sw	a0,64(sp)
 674:	8c850000 	lw	a1,0(a0)
 678:	3c060000 	lui	a2,0x0
 67c:	24c60000 	addiu	a2,a2,0
 680:	27a4002c 	addiu	a0,sp,44
 684:	240701b4 	li	a3,436
 688:	0c000000 	jal	0 <func_808944A0>
 68c:	00a08025 	move	s0,a1
 690:	8faf0040 	lw	t7,64(sp)
 694:	0c000000 	jal	0 <func_808944A0>
 698:	8de40000 	lw	a0,0(t7)
 69c:	8e0202d0 	lw	v0,720(s0)
 6a0:	3c19da38 	lui	t9,0xda38
 6a4:	37390003 	ori	t9,t9,0x3
 6a8:	24580008 	addiu	t8,v0,8
 6ac:	ae1802d0 	sw	t8,720(s0)
 6b0:	ac590000 	sw	t9,0(v0)
 6b4:	8fa80040 	lw	t0,64(sp)
 6b8:	3c050000 	lui	a1,0x0
 6bc:	24a50000 	addiu	a1,a1,0
 6c0:	8d040000 	lw	a0,0(t0)
 6c4:	240601b7 	li	a2,439
 6c8:	0c000000 	jal	0 <func_808944A0>
 6cc:	afa20028 	sw	v0,40(sp)
 6d0:	8fa30028 	lw	v1,40(sp)
 6d4:	3c0b0601 	lui	t3,0x601
 6d8:	256b19b0 	addiu	t3,t3,6576
 6dc:	ac620004 	sw	v0,4(v1)
 6e0:	8e0202d0 	lw	v0,720(s0)
 6e4:	3c0ade00 	lui	t2,0xde00
 6e8:	3c060000 	lui	a2,0x0
 6ec:	24490008 	addiu	t1,v0,8
 6f0:	ae0902d0 	sw	t1,720(s0)
 6f4:	ac4b0004 	sw	t3,4(v0)
 6f8:	ac4a0000 	sw	t2,0(v0)
 6fc:	8fac0040 	lw	t4,64(sp)
 700:	24c60000 	addiu	a2,a2,0
 704:	27a4002c 	addiu	a0,sp,44
 708:	240701bb 	li	a3,443
 70c:	0c000000 	jal	0 <func_808944A0>
 710:	8d850000 	lw	a1,0(t4)
 714:	8fbf001c 	lw	ra,28(sp)
 718:	8fb00018 	lw	s0,24(sp)
 71c:	27bd0040 	addiu	sp,sp,64
 720:	03e00008 	jr	ra
 724:	00000000 	nop

00000728 <func_80894BC8>:
 728:	27bdffa8 	addiu	sp,sp,-88
 72c:	afbf0014 	sw	ra,20(sp)
 730:	afa40058 	sw	a0,88(sp)
 734:	afa5005c 	sw	a1,92(sp)
 738:	8ca50000 	lw	a1,0(a1)
 73c:	3c060000 	lui	a2,0x0
 740:	24c60000 	addiu	a2,a2,0
 744:	27a40040 	addiu	a0,sp,64
 748:	240701c5 	li	a3,453
 74c:	0c000000 	jal	0 <func_808944A0>
 750:	afa50050 	sw	a1,80(sp)
 754:	8faf005c 	lw	t7,92(sp)
 758:	0c000000 	jal	0 <func_808944A0>
 75c:	8de40000 	lw	a0,0(t7)
 760:	8fa80050 	lw	t0,80(sp)
 764:	3c19da38 	lui	t9,0xda38
 768:	37390003 	ori	t9,t9,0x3
 76c:	8d0202d0 	lw	v0,720(t0)
 770:	3c050000 	lui	a1,0x0
 774:	24a50000 	addiu	a1,a1,0
 778:	24580008 	addiu	t8,v0,8
 77c:	ad1802d0 	sw	t8,720(t0)
 780:	ac590000 	sw	t9,0(v0)
 784:	8faa005c 	lw	t2,92(sp)
 788:	240601c9 	li	a2,457
 78c:	8d440000 	lw	a0,0(t2)
 790:	afa80050 	sw	t0,80(sp)
 794:	0c000000 	jal	0 <func_808944A0>
 798:	afa2003c 	sw	v0,60(sp)
 79c:	8fa3003c 	lw	v1,60(sp)
 7a0:	8fa80050 	lw	t0,80(sp)
 7a4:	3c06fa00 	lui	a2,0xfa00
 7a8:	ac620004 	sw	v0,4(v1)
 7ac:	8d0302d0 	lw	v1,720(t0)
 7b0:	8fa50058 	lw	a1,88(sp)
 7b4:	3c014319 	lui	at,0x4319
 7b8:	246b0008 	addiu	t3,v1,8
 7bc:	ad0b02d0 	sw	t3,720(t0)
 7c0:	ac660000 	sw	a2,0(v1)
 7c4:	44813000 	mtc1	at,$f6
 7c8:	c4a401b0 	lwc1	$f4,432(a1)
 7cc:	24040001 	li	a0,1
 7d0:	3c014f00 	lui	at,0x4f00
 7d4:	46062202 	mul.s	$f8,$f4,$f6
 7d8:	2407ff00 	li	a3,-256
 7dc:	3c09de00 	lui	t1,0xde00
 7e0:	444cf800 	cfc1	t4,$31
 7e4:	44c4f800 	ctc1	a0,$31
 7e8:	00000000 	nop
 7ec:	460042a4 	cvt.w.s	$f10,$f8
 7f0:	4444f800 	cfc1	a0,$31
 7f4:	00000000 	nop
 7f8:	30840078 	andi	a0,a0,0x78
 7fc:	50800013 	beqzl	a0,84c <func_80894BC8+0x124>
 800:	44045000 	mfc1	a0,$f10
 804:	44815000 	mtc1	at,$f10
 808:	24040001 	li	a0,1
 80c:	460a4281 	sub.s	$f10,$f8,$f10
 810:	44c4f800 	ctc1	a0,$31
 814:	00000000 	nop
 818:	460052a4 	cvt.w.s	$f10,$f10
 81c:	4444f800 	cfc1	a0,$31
 820:	00000000 	nop
 824:	30840078 	andi	a0,a0,0x78
 828:	14800005 	bnez	a0,840 <func_80894BC8+0x118>
 82c:	00000000 	nop
 830:	44045000 	mfc1	a0,$f10
 834:	3c018000 	lui	at,0x8000
 838:	10000007 	b	858 <func_80894BC8+0x130>
 83c:	00812025 	or	a0,a0,at
 840:	10000005 	b	858 <func_80894BC8+0x130>
 844:	2404ffff 	li	a0,-1
 848:	44045000 	mfc1	a0,$f10
 84c:	00000000 	nop
 850:	0480fffb 	bltz	a0,840 <func_80894BC8+0x118>
 854:	00000000 	nop
 858:	44ccf800 	ctc1	t4,$31
 85c:	2c81009a 	sltiu	at,a0,154
 860:	14200003 	bnez	at,870 <func_80894BC8+0x148>
 864:	00801025 	move	v0,a0
 868:	10000001 	b	870 <func_80894BC8+0x148>
 86c:	24020099 	li	v0,153
 870:	304d00ff 	andi	t5,v0,0xff
 874:	01a77025 	or	t6,t5,a3
 878:	ac6e0004 	sw	t6,4(v1)
 87c:	8d0202d0 	lw	v0,720(t0)
 880:	3c180601 	lui	t8,0x601
 884:	2718dc40 	addiu	t8,t8,-9152
 888:	244f0008 	addiu	t7,v0,8
 88c:	ad0f02d0 	sw	t7,720(t0)
 890:	ac580004 	sw	t8,4(v0)
 894:	ac490000 	sw	t1,0(v0)
 898:	8d0202d0 	lw	v0,720(t0)
 89c:	3c0ae700 	lui	t2,0xe700
 8a0:	3c01437f 	lui	at,0x437f
 8a4:	24590008 	addiu	t9,v0,8
 8a8:	ad1902d0 	sw	t9,720(t0)
 8ac:	ac400004 	sw	zero,4(v0)
 8b0:	ac4a0000 	sw	t2,0(v0)
 8b4:	8d0302d0 	lw	v1,720(t0)
 8b8:	44819000 	mtc1	at,$f18
 8bc:	24040001 	li	a0,1
 8c0:	246b0008 	addiu	t3,v1,8
 8c4:	ad0b02d0 	sw	t3,720(t0)
 8c8:	ac660000 	sw	a2,0(v1)
 8cc:	c4b001b0 	lwc1	$f16,432(a1)
 8d0:	3c180601 	lui	t8,0x601
 8d4:	3c014f00 	lui	at,0x4f00
 8d8:	46128102 	mul.s	$f4,$f16,$f18
 8dc:	2718db60 	addiu	t8,t8,-9376
 8e0:	3c060000 	lui	a2,0x0
 8e4:	444cf800 	cfc1	t4,$31
 8e8:	44c4f800 	ctc1	a0,$31
 8ec:	00000000 	nop
 8f0:	460021a4 	cvt.w.s	$f6,$f4
 8f4:	4444f800 	cfc1	a0,$31
 8f8:	00000000 	nop
 8fc:	30840078 	andi	a0,a0,0x78
 900:	50800013 	beqzl	a0,950 <func_80894BC8+0x228>
 904:	44043000 	mfc1	a0,$f6
 908:	44813000 	mtc1	at,$f6
 90c:	24040001 	li	a0,1
 910:	46062181 	sub.s	$f6,$f4,$f6
 914:	44c4f800 	ctc1	a0,$31
 918:	00000000 	nop
 91c:	460031a4 	cvt.w.s	$f6,$f6
 920:	4444f800 	cfc1	a0,$31
 924:	00000000 	nop
 928:	30840078 	andi	a0,a0,0x78
 92c:	14800005 	bnez	a0,944 <func_80894BC8+0x21c>
 930:	00000000 	nop
 934:	44043000 	mfc1	a0,$f6
 938:	3c018000 	lui	at,0x8000
 93c:	10000007 	b	95c <func_80894BC8+0x234>
 940:	00812025 	or	a0,a0,at
 944:	10000005 	b	95c <func_80894BC8+0x234>
 948:	2404ffff 	li	a0,-1
 94c:	44043000 	mfc1	a0,$f6
 950:	00000000 	nop
 954:	0480fffb 	bltz	a0,944 <func_80894BC8+0x21c>
 958:	00000000 	nop
 95c:	44ccf800 	ctc1	t4,$31
 960:	2c810100 	sltiu	at,a0,256
 964:	14200003 	bnez	at,974 <func_80894BC8+0x24c>
 968:	00801025 	move	v0,a0
 96c:	10000001 	b	974 <func_80894BC8+0x24c>
 970:	240200ff 	li	v0,255
 974:	304d00ff 	andi	t5,v0,0xff
 978:	01a77025 	or	t6,t5,a3
 97c:	ac6e0004 	sw	t6,4(v1)
 980:	8d0202d0 	lw	v0,720(t0)
 984:	240701d8 	li	a3,472
 988:	27a40040 	addiu	a0,sp,64
 98c:	244f0008 	addiu	t7,v0,8
 990:	ad0f02d0 	sw	t7,720(t0)
 994:	ac580004 	sw	t8,4(v0)
 998:	ac490000 	sw	t1,0(v0)
 99c:	8fb9005c 	lw	t9,92(sp)
 9a0:	24c60000 	addiu	a2,a2,0
 9a4:	0c000000 	jal	0 <func_808944A0>
 9a8:	8f250000 	lw	a1,0(t9)
 9ac:	8fbf0014 	lw	ra,20(sp)
 9b0:	27bd0058 	addiu	sp,sp,88
 9b4:	03e00008 	jr	ra
 9b8:	00000000 	nop

000009bc <BgJyaBombchuiwa_Draw>:
 9bc:	27bdffe0 	addiu	sp,sp,-32
 9c0:	afbf001c 	sw	ra,28(sp)
 9c4:	afb00018 	sw	s0,24(sp)
 9c8:	afa50024 	sw	a1,36(sp)
 9cc:	908201b6 	lbu	v0,438(a0)
 9d0:	00808025 	move	s0,a0
 9d4:	00a02025 	move	a0,a1
 9d8:	304e0001 	andi	t6,v0,0x1
 9dc:	11c00007 	beqz	t6,9fc <BgJyaBombchuiwa_Draw+0x40>
 9e0:	3c050601 	lui	a1,0x601
 9e4:	0c000000 	jal	0 <func_808944A0>
 9e8:	24a5e8d0 	addiu	a1,a1,-5936
 9ec:	00002025 	move	a0,zero
 9f0:	0c000000 	jal	0 <func_808944A0>
 9f4:	26050150 	addiu	a1,s0,336
 9f8:	920201b6 	lbu	v0,438(s0)
 9fc:	304f0002 	andi	t7,v0,0x2
 a00:	51e00005 	beqzl	t7,a18 <BgJyaBombchuiwa_Draw+0x5c>
 a04:	30580004 	andi	t8,v0,0x4
 a08:	0c000000 	jal	0 <func_808944A0>
 a0c:	8fa40024 	lw	a0,36(sp)
 a10:	920201b6 	lbu	v0,438(s0)
 a14:	30580004 	andi	t8,v0,0x4
 a18:	13000014 	beqz	t8,a6c <BgJyaBombchuiwa_Draw+0xb0>
 a1c:	3c010000 	lui	at,0x0
 a20:	3c060000 	lui	a2,0x0
 a24:	3c070000 	lui	a3,0x0
 a28:	24e70000 	addiu	a3,a3,0
 a2c:	8cc60000 	lw	a2,0(a2)
 a30:	c42c0000 	lwc1	$f12,0(at)
 a34:	0c000000 	jal	0 <func_808944A0>
 a38:	c42e0000 	lwc1	$f14,0(at)
 a3c:	c60c0050 	lwc1	$f12,80(s0)
 a40:	c60e0054 	lwc1	$f14,84(s0)
 a44:	8e060058 	lw	a2,88(s0)
 a48:	0c000000 	jal	0 <func_808944A0>
 a4c:	24070001 	li	a3,1
 a50:	921901b6 	lbu	t9,438(s0)
 a54:	02002025 	move	a0,s0
 a58:	33280004 	andi	t0,t9,0x4
 a5c:	51000004 	beqzl	t0,a70 <BgJyaBombchuiwa_Draw+0xb4>
 a60:	8fbf001c 	lw	ra,28(sp)
 a64:	0c000000 	jal	0 <func_808944A0>
 a68:	8fa50024 	lw	a1,36(sp)
 a6c:	8fbf001c 	lw	ra,28(sp)
 a70:	8fb00018 	lw	s0,24(sp)
 a74:	27bd0020 	addiu	sp,sp,32
 a78:	03e00008 	jr	ra
 a7c:	00000000 	nop
