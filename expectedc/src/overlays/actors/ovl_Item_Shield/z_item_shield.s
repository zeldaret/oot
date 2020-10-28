
build/src/overlays/actors/ovl_Item_Shield/z_item_shield.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B86920>:
   0:	03e00008 	jr	ra
   4:	ac850208 	sw	a1,520(a0)

00000008 <ItemShield_Init>:
   8:	27bdffc8 	addiu	sp,sp,-56
   c:	afbf0034 	sw	ra,52(sp)
  10:	afb40030 	sw	s4,48(sp)
  14:	afb3002c 	sw	s3,44(sp)
  18:	afb20028 	sw	s2,40(sp)
  1c:	afb10024 	sw	s1,36(sp)
  20:	afb00020 	sw	s0,32(sp)
  24:	f7b40018 	sdc1	$f20,24(sp)
  28:	afa5003c 	sw	a1,60(sp)
  2c:	8482001c 	lh	v0,28(a0)
  30:	00809825 	move	s3,a0
  34:	a480019a 	sh	zero,410(a0)
  38:	10400006 	beqz	v0,54 <ItemShield_Init+0x4c>
  3c:	a480019c 	sh	zero,412(a0)
  40:	24010001 	li	at,1
  44:	50410012 	beql	v0,at,90 <ItemShield_Init+0x88>
  48:	44800000 	mtc1	zero,$f0
  4c:	10000032 	b	118 <ItemShield_Init+0x110>
  50:	3c053c23 	lui	a1,0x3c23
  54:	44800000 	mtc1	zero,$f0
  58:	266400b4 	addiu	a0,s3,180
  5c:	3c0544af 	lui	a1,0x44af
  60:	44070000 	mfc1	a3,$f0
  64:	0c000000 	jal	0 <func_80B86920>
  68:	00003025 	move	a2,zero
  6c:	240e4000 	li	t6,16384
  70:	3c050000 	lui	a1,0x0
  74:	a66e00b4 	sh	t6,180(s3)
  78:	24a50000 	addiu	a1,a1,0
  7c:	0c000000 	jal	0 <func_80B86920>
  80:	02602025 	move	a0,s3
  84:	10000024 	b	118 <ItemShield_Init+0x110>
  88:	3c053c23 	lui	a1,0x3c23
  8c:	44800000 	mtc1	zero,$f0
  90:	266400b4 	addiu	a0,s3,180
  94:	00003025 	move	a2,zero
  98:	44050000 	mfc1	a1,$f0
  9c:	44070000 	mfc1	a3,$f0
  a0:	0c000000 	jal	0 <func_80B86920>
  a4:	00000000 	nop
  a8:	3c050000 	lui	a1,0x0
  ac:	24a50000 	addiu	a1,a1,0
  b0:	0c000000 	jal	0 <func_80B86920>
  b4:	02602025 	move	a0,s3
  b8:	866f019c 	lh	t7,412(s3)
  bc:	3c014120 	lui	at,0x4120
  c0:	4481a000 	mtc1	at,$f20
  c4:	35f80002 	ori	t8,t7,0x2
  c8:	a678019c 	sh	t8,412(s3)
  cc:	24110001 	li	s1,1
  d0:	02608025 	move	s0,s3
  d4:	02609025 	move	s2,s3
  d8:	24140011 	li	s4,17
  dc:	a251019e 	sb	s1,414(s2)
  e0:	0c000000 	jal	0 <func_80B86920>
  e4:	4600a306 	mov.s	$f12,$f20
  e8:	e60001a8 	swc1	$f0,424(s0)
  ec:	0c000000 	jal	0 <func_80B86920>
  f0:	4600a306 	mov.s	$f12,$f20
  f4:	e60001ac 	swc1	$f0,428(s0)
  f8:	0c000000 	jal	0 <func_80B86920>
  fc:	4600a306 	mov.s	$f12,$f20
 100:	26310002 	addiu	s1,s1,2
 104:	2610000c 	addiu	s0,s0,12
 108:	26520001 	addiu	s2,s2,1
 10c:	1634fff3 	bne	s1,s4,dc <ItemShield_Init+0xd4>
 110:	e60001a4 	swc1	$f0,420(s0)
 114:	3c053c23 	lui	a1,0x3c23
 118:	34a5d70a 	ori	a1,a1,0xd70a
 11c:	0c000000 	jal	0 <func_80B86920>
 120:	02602025 	move	a0,s3
 124:	2670014c 	addiu	s0,s3,332
 128:	02002825 	move	a1,s0
 12c:	0c000000 	jal	0 <func_80B86920>
 130:	8fa4003c 	lw	a0,60(sp)
 134:	3c070000 	lui	a3,0x0
 138:	24e70000 	addiu	a3,a3,0
 13c:	8fa4003c 	lw	a0,60(sp)
 140:	02002825 	move	a1,s0
 144:	0c000000 	jal	0 <func_80B86920>
 148:	02603025 	move	a2,s3
 14c:	3c040000 	lui	a0,0x0
 150:	24840000 	addiu	a0,a0,0
 154:	0c000000 	jal	0 <func_80B86920>
 158:	8665001c 	lh	a1,28(s3)
 15c:	8fbf0034 	lw	ra,52(sp)
 160:	d7b40018 	ldc1	$f20,24(sp)
 164:	8fb00020 	lw	s0,32(sp)
 168:	8fb10024 	lw	s1,36(sp)
 16c:	8fb20028 	lw	s2,40(sp)
 170:	8fb3002c 	lw	s3,44(sp)
 174:	8fb40030 	lw	s4,48(sp)
 178:	03e00008 	jr	ra
 17c:	27bd0038 	addiu	sp,sp,56

00000180 <ItemShield_Destroy>:
 180:	27bdffe8 	addiu	sp,sp,-24
 184:	00803025 	move	a2,a0
 188:	afbf0014 	sw	ra,20(sp)
 18c:	00a02025 	move	a0,a1
 190:	0c000000 	jal	0 <func_80B86920>
 194:	24c5014c 	addiu	a1,a2,332
 198:	8fbf0014 	lw	ra,20(sp)
 19c:	27bd0018 	addiu	sp,sp,24
 1a0:	03e00008 	jr	ra
 1a4:	00000000 	nop

000001a8 <func_80B86AC8>:
 1a8:	27bdffd8 	addiu	sp,sp,-40
 1ac:	afbf0024 	sw	ra,36(sp)
 1b0:	afb00020 	sw	s0,32(sp)
 1b4:	00808025 	move	s0,a0
 1b8:	0c000000 	jal	0 <func_80B86920>
 1bc:	afa5002c 	sw	a1,44(sp)
 1c0:	02002025 	move	a0,s0
 1c4:	0c000000 	jal	0 <func_80B86920>
 1c8:	8fa5002c 	lw	a1,44(sp)
 1cc:	10400005 	beqz	v0,1e4 <func_80B86AC8+0x3c>
 1d0:	02002025 	move	a0,s0
 1d4:	0c000000 	jal	0 <func_80B86920>
 1d8:	02002025 	move	a0,s0
 1dc:	1000002e 	b	298 <func_80B86AC8+0xf0>
 1e0:	8fbf0024 	lw	ra,36(sp)
 1e4:	3c014248 	lui	at,0x4248
 1e8:	44812000 	mtc1	at,$f4
 1ec:	8fa5002c 	lw	a1,44(sp)
 1f0:	24060029 	li	a2,41
 1f4:	3c0741f0 	lui	a3,0x41f0
 1f8:	0c000000 	jal	0 <func_80B86920>
 1fc:	e7a40010 	swc1	$f4,16(sp)
 200:	3c014120 	lui	at,0x4120
 204:	44810000 	mtc1	at,$f0
 208:	44803000 	mtc1	zero,$f6
 20c:	240e0005 	li	t6,5
 210:	44060000 	mfc1	a2,$f0
 214:	44070000 	mfc1	a3,$f0
 218:	afae0014 	sw	t6,20(sp)
 21c:	8fa4002c 	lw	a0,44(sp)
 220:	02002825 	move	a1,s0
 224:	0c000000 	jal	0 <func_80B86920>
 228:	e7a60010 	swc1	$f6,16(sp)
 22c:	960f0088 	lhu	t7,136(s0)
 230:	31f80001 	andi	t8,t7,0x1
 234:	53000018 	beqzl	t8,298 <func_80B86AC8+0xf0>
 238:	8fbf0024 	lw	ra,36(sp)
 23c:	8619019a 	lh	t9,410(s0)
 240:	2728ffff 	addiu	t0,t9,-1
 244:	a608019a 	sh	t0,410(s0)
 248:	8602019a 	lh	v0,410(s0)
 24c:	2841003c 	slti	at,v0,60
 250:	1020000c 	beqz	at,284 <func_80B86AC8+0xdc>
 254:	30490001 	andi	t1,v0,0x1
 258:	51200007 	beqzl	t1,278 <func_80B86AC8+0xd0>
 25c:	860c019c 	lh	t4,412(s0)
 260:	860a019c 	lh	t2,412(s0)
 264:	8602019a 	lh	v0,410(s0)
 268:	354b0002 	ori	t3,t2,0x2
 26c:	10000005 	b	284 <func_80B86AC8+0xdc>
 270:	a60b019c 	sh	t3,412(s0)
 274:	860c019c 	lh	t4,412(s0)
 278:	8602019a 	lh	v0,410(s0)
 27c:	318dfffd 	andi	t5,t4,0xfffd
 280:	a60d019c 	sh	t5,412(s0)
 284:	54400004 	bnezl	v0,298 <func_80B86AC8+0xf0>
 288:	8fbf0024 	lw	ra,36(sp)
 28c:	0c000000 	jal	0 <func_80B86920>
 290:	02002025 	move	a0,s0
 294:	8fbf0024 	lw	ra,36(sp)
 298:	8fb00020 	lw	s0,32(sp)
 29c:	27bd0028 	addiu	sp,sp,40
 2a0:	03e00008 	jr	ra
 2a4:	00000000 	nop

000002a8 <func_80B86BC8>:
 2a8:	27bdffd0 	addiu	sp,sp,-48
 2ac:	afbf0024 	sw	ra,36(sp)
 2b0:	afb00020 	sw	s0,32(sp)
 2b4:	00808025 	move	s0,a0
 2b8:	0c000000 	jal	0 <func_80B86920>
 2bc:	afa50034 	sw	a1,52(sp)
 2c0:	10400005 	beqz	v0,2d8 <func_80B86BC8+0x30>
 2c4:	02002025 	move	a0,s0
 2c8:	0c000000 	jal	0 <func_80B86920>
 2cc:	02002025 	move	a0,s0
 2d0:	10000029 	b	378 <func_80B86BC8+0xd0>
 2d4:	8fbf0024 	lw	ra,36(sp)
 2d8:	3c014248 	lui	at,0x4248
 2dc:	44812000 	mtc1	at,$f4
 2e0:	8fa50034 	lw	a1,52(sp)
 2e4:	24060029 	li	a2,41
 2e8:	3c0741f0 	lui	a3,0x41f0
 2ec:	0c000000 	jal	0 <func_80B86920>
 2f0:	e7a40010 	swc1	$f4,16(sp)
 2f4:	920e015d 	lbu	t6,349(s0)
 2f8:	2606014c 	addiu	a2,s0,332
 2fc:	00c02825 	move	a1,a2
 300:	31cf0002 	andi	t7,t6,0x2
 304:	11e00013 	beqz	t7,354 <func_80B86BC8+0xac>
 308:	02002025 	move	a0,s0
 30c:	3c050000 	lui	a1,0x0
 310:	24a50000 	addiu	a1,a1,0
 314:	0c000000 	jal	0 <func_80B86920>
 318:	02002025 	move	a0,s0
 31c:	3c014080 	lui	at,0x4080
 320:	44813000 	mtc1	at,$f6
 324:	3c01c080 	lui	at,0xc080
 328:	44814000 	mtc1	at,$f8
 32c:	3c010000 	lui	at,0x0
 330:	e6060060 	swc1	$f6,96(s0)
 334:	e6080070 	swc1	$f8,112(s0)
 338:	c42a0000 	lwc1	$f10,0(at)
 33c:	44808000 	mtc1	zero,$f16
 340:	241800a0 	li	t8,160
 344:	a618019a 	sh	t8,410(s0)
 348:	e60a006c 	swc1	$f10,108(s0)
 34c:	10000009 	b	374 <func_80B86BC8+0xcc>
 350:	e6100068 	swc1	$f16,104(s0)
 354:	0c000000 	jal	0 <func_80B86920>
 358:	afa6002c 	sw	a2,44(sp)
 35c:	8fa40034 	lw	a0,52(sp)
 360:	3c010001 	lui	at,0x1
 364:	34211e60 	ori	at,at,0x1e60
 368:	8fa6002c 	lw	a2,44(sp)
 36c:	0c000000 	jal	0 <func_80B86920>
 370:	00812821 	addu	a1,a0,at
 374:	8fbf0024 	lw	ra,36(sp)
 378:	8fb00020 	lw	s0,32(sp)
 37c:	27bd0030 	addiu	sp,sp,48
 380:	03e00008 	jr	ra
 384:	00000000 	nop

00000388 <func_80B86CA8>:
 388:	27bdff90 	addiu	sp,sp,-112
 38c:	afbf006c 	sw	ra,108(sp)
 390:	afb30054 	sw	s3,84(sp)
 394:	00809825 	move	s3,a0
 398:	afbe0068 	sw	s8,104(sp)
 39c:	afb70064 	sw	s7,100(sp)
 3a0:	afb60060 	sw	s6,96(sp)
 3a4:	afb5005c 	sw	s5,92(sp)
 3a8:	afb40058 	sw	s4,88(sp)
 3ac:	afb20050 	sw	s2,80(sp)
 3b0:	afb1004c 	sw	s1,76(sp)
 3b4:	afb00048 	sw	s0,72(sp)
 3b8:	f7bc0040 	sdc1	$f28,64(sp)
 3bc:	f7ba0038 	sdc1	$f26,56(sp)
 3c0:	f7b80030 	sdc1	$f24,48(sp)
 3c4:	f7b60028 	sdc1	$f22,40(sp)
 3c8:	f7b40020 	sdc1	$f20,32(sp)
 3cc:	0c000000 	jal	0 <func_80B86920>
 3d0:	afa50074 	sw	a1,116(sp)
 3d4:	3c014120 	lui	at,0x4120
 3d8:	4481e000 	mtc1	at,$f28
 3dc:	44802000 	mtc1	zero,$f4
 3e0:	240e0005 	li	t6,5
 3e4:	4406e000 	mfc1	a2,$f28
 3e8:	4407e000 	mfc1	a3,$f28
 3ec:	afae0014 	sw	t6,20(sp)
 3f0:	8fa40074 	lw	a0,116(sp)
 3f4:	02602825 	move	a1,s3
 3f8:	0c000000 	jal	0 <func_80B86920>
 3fc:	e7a40010 	swc1	$f4,16(sp)
 400:	0c000000 	jal	0 <func_80B86920>
 404:	866400b4 	lh	a0,180(s3)
 408:	44803000 	mtc1	zero,$f6
 40c:	00000000 	nop
 410:	4600303e 	c.le.s	$f6,$f0
 414:	00000000 	nop
 418:	45000005 	bc1f	430 <func_80B86CA8+0xa8>
 41c:	00000000 	nop
 420:	0c000000 	jal	0 <func_80B86920>
 424:	866400b4 	lh	a0,180(s3)
 428:	10000004 	b	43c <func_80B86CA8+0xb4>
 42c:	46000086 	mov.s	$f2,$f0
 430:	0c000000 	jal	0 <func_80B86920>
 434:	866400b4 	lh	a0,180(s3)
 438:	46000087 	neg.s	$f2,$f0
 43c:	3c010000 	lui	at,0x0
 440:	c4280000 	lwc1	$f8,0(at)
 444:	3c010000 	lui	at,0x0
 448:	3c170000 	lui	s7,0x0
 44c:	46081282 	mul.s	$f10,$f2,$f8
 450:	3c160000 	lui	s6,0x0
 454:	3c150000 	lui	s5,0x0
 458:	26b50000 	addiu	s5,s5,0
 45c:	26d60000 	addiu	s6,s6,0
 460:	26f70000 	addiu	s7,s7,0
 464:	02608825 	move	s1,s3
 468:	e66a00bc 	swc1	$f10,188(s3)
 46c:	c43a0000 	lwc1	$f26,0(at)
 470:	3c01c120 	lui	at,0xc120
 474:	4481c000 	mtc1	at,$f24
 478:	3c014170 	lui	at,0x4170
 47c:	4481b000 	mtc1	at,$f22
 480:	3c010000 	lui	at,0x0
 484:	c4340000 	lwc1	$f20,0(at)
 488:	00009025 	move	s2,zero
 48c:	02608025 	move	s0,s3
 490:	241e0060 	li	s8,96
 494:	2414000f 	li	s4,15
 498:	c61001a8 	lwc1	$f16,424(s0)
 49c:	922f019e 	lbu	t7,414(s1)
 4a0:	3c010000 	lui	at,0x0
 4a4:	e4300000 	swc1	$f16,0(at)
 4a8:	c66400bc 	lwc1	$f4,188(s3)
 4ac:	028f1823 	subu	v1,s4,t7
 4b0:	00031080 	sll	v0,v1,0x2
 4b4:	02a2c021 	addu	t8,s5,v0
 4b8:	461a2182 	mul.s	$f6,$f4,$f26
 4bc:	c7000000 	lwc1	$f0,0(t8)
 4c0:	c61201ac 	lwc1	$f18,428(s0)
 4c4:	02e24021 	addu	t0,s7,v0
 4c8:	46180282 	mul.s	$f10,$f0,$f24
 4cc:	2419ffff 	li	t9,-1
 4d0:	8fa40074 	lw	a0,116(sp)
 4d4:	02602825 	move	a1,s3
 4d8:	02c03025 	move	a2,s6
 4dc:	46069200 	add.s	$f8,$f18,$f6
 4e0:	46145402 	mul.s	$f16,$f10,$f20
 4e4:	46088100 	add.s	$f4,$f16,$f8
 4e8:	46140182 	mul.s	$f6,$f0,$f20
 4ec:	e4240000 	swc1	$f4,0(at)
 4f0:	c61201b0 	lwc1	$f18,432(s0)
 4f4:	afb90010 	sw	t9,16(sp)
 4f8:	e4320000 	swc1	$f18,0(at)
 4fc:	c50a0000 	lwc1	$f10,0(t0)
 500:	44073000 	mfc1	a3,$f6
 504:	0c000000 	jal	0 <func_80B86920>
 508:	e7aa0014 	swc1	$f10,20(sp)
 50c:	9222019e 	lbu	v0,414(s1)
 510:	10400003 	beqz	v0,520 <func_80B86CA8+0x198>
 514:	2449ffff 	addiu	t1,v0,-1
 518:	10000010 	b	55c <func_80B86CA8+0x1d4>
 51c:	a229019e 	sb	t1,414(s1)
 520:	866a019a 	lh	t2,410(s3)
 524:	240b000f 	li	t3,15
 528:	29410011 	slti	at,t2,17
 52c:	5420000c 	bnezl	at,560 <func_80B86CA8+0x1d8>
 530:	2652000c 	addiu	s2,s2,12
 534:	a22b019e 	sb	t3,414(s1)
 538:	0c000000 	jal	0 <func_80B86920>
 53c:	4600b306 	mov.s	$f12,$f22
 540:	e60001a8 	swc1	$f0,424(s0)
 544:	0c000000 	jal	0 <func_80B86920>
 548:	4600e306 	mov.s	$f12,$f28
 54c:	e60001ac 	swc1	$f0,428(s0)
 550:	0c000000 	jal	0 <func_80B86920>
 554:	4600b306 	mov.s	$f12,$f22
 558:	e60001b0 	swc1	$f0,432(s0)
 55c:	2652000c 	addiu	s2,s2,12
 560:	26310001 	addiu	s1,s1,1
 564:	165effcc 	bne	s2,s8,498 <func_80B86CA8+0x110>
 568:	2610000c 	addiu	s0,s0,12
 56c:	966c0088 	lhu	t4,136(s3)
 570:	318d0001 	andi	t5,t4,0x1
 574:	51a00024 	beqzl	t5,608 <func_80B86CA8+0x280>
 578:	8fbf006c 	lw	ra,108(sp)
 57c:	866200b4 	lh	v0,180(s3)
 580:	866e0198 	lh	t6,408(s3)
 584:	8670019a 	lh	s0,410(s3)
 588:	00027843 	sra	t7,v0,0x1
 58c:	01cfc023 	subu	t8,t6,t7
 590:	a6780198 	sh	t8,408(s3)
 594:	86630198 	lh	v1,408(s3)
 598:	2a010008 	slti	at,s0,8
 59c:	0003c883 	sra	t9,v1,0x2
 5a0:	00794023 	subu	t0,v1,t9
 5a4:	a6680198 	sh	t0,408(s3)
 5a8:	86690198 	lh	t1,408(s3)
 5ac:	00495021 	addu	t2,v0,t1
 5b0:	1420000e 	bnez	at,5ec <func_80B86CA8+0x264>
 5b4:	a66a00b4 	sh	t2,180(s3)
 5b8:	2a010018 	slti	at,s0,24
 5bc:	1020000b 	beqz	at,5ec <func_80B86CA8+0x264>
 5c0:	260bfff8 	addiu	t3,s0,-8
 5c4:	448b8000 	mtc1	t3,$f16
 5c8:	3c010000 	lui	at,0x0
 5cc:	c4240000 	lwc1	$f4,0(at)
 5d0:	46808220 	cvt.s.w	$f8,$f16
 5d4:	02602025 	move	a0,s3
 5d8:	46044482 	mul.s	$f18,$f8,$f4
 5dc:	44059000 	mfc1	a1,$f18
 5e0:	0c000000 	jal	0 <func_80B86920>
 5e4:	00000000 	nop
 5e8:	8670019a 	lh	s0,410(s3)
 5ec:	12000003 	beqz	s0,5fc <func_80B86CA8+0x274>
 5f0:	260cffff 	addiu	t4,s0,-1
 5f4:	10000003 	b	604 <func_80B86CA8+0x27c>
 5f8:	a66c019a 	sh	t4,410(s3)
 5fc:	0c000000 	jal	0 <func_80B86920>
 600:	02602025 	move	a0,s3
 604:	8fbf006c 	lw	ra,108(sp)
 608:	d7b40020 	ldc1	$f20,32(sp)
 60c:	d7b60028 	ldc1	$f22,40(sp)
 610:	d7b80030 	ldc1	$f24,48(sp)
 614:	d7ba0038 	ldc1	$f26,56(sp)
 618:	d7bc0040 	ldc1	$f28,64(sp)
 61c:	8fb00048 	lw	s0,72(sp)
 620:	8fb1004c 	lw	s1,76(sp)
 624:	8fb20050 	lw	s2,80(sp)
 628:	8fb30054 	lw	s3,84(sp)
 62c:	8fb40058 	lw	s4,88(sp)
 630:	8fb5005c 	lw	s5,92(sp)
 634:	8fb60060 	lw	s6,96(sp)
 638:	8fb70064 	lw	s7,100(sp)
 63c:	8fbe0068 	lw	s8,104(sp)
 640:	03e00008 	jr	ra
 644:	27bd0070 	addiu	sp,sp,112

00000648 <func_80B86F68>:
 648:	27bdffd8 	addiu	sp,sp,-40
 64c:	afbf001c 	sw	ra,28(sp)
 650:	afb00018 	sw	s0,24(sp)
 654:	8ca61c44 	lw	a2,7236(a1)
 658:	848e019c 	lh	t6,412(a0)
 65c:	00808025 	move	s0,a0
 660:	c4c40a50 	lwc1	$f4,2640(a2)
 664:	31cffffd 	andi	t7,t6,0xfffd
 668:	e4840024 	swc1	$f4,36(a0)
 66c:	c4c60a54 	lwc1	$f6,2644(a2)
 670:	e4860028 	swc1	$f6,40(a0)
 674:	c4c80a58 	lwc1	$f8,2648(a2)
 678:	a48f019c 	sh	t7,412(a0)
 67c:	e488002c 	swc1	$f8,44(a0)
 680:	c4ce0a40 	lwc1	$f14,2624(a2)
 684:	c4cc0a48 	lwc1	$f12,2632(a2)
 688:	afa60020 	sw	a2,32(sp)
 68c:	46007387 	neg.s	$f14,$f14
 690:	0c000000 	jal	0 <func_80B86920>
 694:	46006307 	neg.s	$f12,$f12
 698:	8fa60020 	lw	a2,32(sp)
 69c:	a60200b6 	sh	v0,182(s0)
 6a0:	24c30a20 	addiu	v1,a2,2592
 6a4:	c4620028 	lwc1	$f2,40(v1)
 6a8:	c4700020 	lwc1	$f16,32(v1)
 6ac:	c46c0024 	lwc1	$f12,36(v1)
 6b0:	46021282 	mul.s	$f10,$f2,$f2
 6b4:	46006307 	neg.s	$f12,$f12
 6b8:	46108482 	mul.s	$f18,$f16,$f16
 6bc:	46125000 	add.s	$f0,$f10,$f18
 6c0:	0c000000 	jal	0 <func_80B86920>
 6c4:	46000384 	sqrt.s	$f14,$f0
 6c8:	a60200b4 	sh	v0,180(s0)
 6cc:	860300b4 	lh	v1,180(s0)
 6d0:	02002025 	move	a0,s0
 6d4:	3c050000 	lui	a1,0x0
 6d8:	04600003 	bltz	v1,6e8 <func_80B86F68+0xa0>
 6dc:	00031023 	negu	v0,v1
 6e0:	10000001 	b	6e8 <func_80B86F68+0xa0>
 6e4:	00601025 	move	v0,v1
 6e8:	28414001 	slti	at,v0,16385
 6ec:	14200004 	bnez	at,700 <func_80B86F68+0xb8>
 6f0:	00000000 	nop
 6f4:	8618019c 	lh	t8,412(s0)
 6f8:	37190001 	ori	t9,t8,0x1
 6fc:	a619019c 	sh	t9,412(s0)
 700:	0c000000 	jal	0 <func_80B86920>
 704:	24a50000 	addiu	a1,a1,0
 708:	3c014080 	lui	at,0x4080
 70c:	44812000 	mtc1	at,$f4
 710:	3c01c080 	lui	at,0xc080
 714:	44813000 	mtc1	at,$f6
 718:	3c010000 	lui	at,0x0
 71c:	e6040060 	swc1	$f4,96(s0)
 720:	e6060070 	swc1	$f6,112(s0)
 724:	c4280000 	lwc1	$f8,0(at)
 728:	44805000 	mtc1	zero,$f10
 72c:	24080046 	li	t0,70
 730:	a6000198 	sh	zero,408(s0)
 734:	a608019a 	sh	t0,410(s0)
 738:	e608006c 	swc1	$f8,108(s0)
 73c:	e60a0068 	swc1	$f10,104(s0)
 740:	8fbf001c 	lw	ra,28(sp)
 744:	8fb00018 	lw	s0,24(sp)
 748:	27bd0028 	addiu	sp,sp,40
 74c:	03e00008 	jr	ra
 750:	00000000 	nop

00000754 <ItemShield_Update>:
 754:	27bdffe8 	addiu	sp,sp,-24
 758:	afbf0014 	sw	ra,20(sp)
 75c:	8c990208 	lw	t9,520(a0)
 760:	0320f809 	jalr	t9
 764:	00000000 	nop
 768:	8fbf0014 	lw	ra,20(sp)
 76c:	27bd0018 	addiu	sp,sp,24
 770:	03e00008 	jr	ra
 774:	00000000 	nop

00000778 <ItemShield_Draw>:
 778:	27bdffb8 	addiu	sp,sp,-72
 77c:	afbf001c 	sw	ra,28(sp)
 780:	afb00018 	sw	s0,24(sp)
 784:	afa5004c 	sw	a1,76(sp)
 788:	848e019c 	lh	t6,412(a0)
 78c:	3c060000 	lui	a2,0x0
 790:	24c60000 	addiu	a2,a2,0
 794:	31cf0002 	andi	t7,t6,0x2
 798:	15e00032 	bnez	t7,864 <ItemShield_Draw+0xec>
 79c:	27a40030 	addiu	a0,sp,48
 7a0:	8ca50000 	lw	a1,0(a1)
 7a4:	240701c9 	li	a3,457
 7a8:	0c000000 	jal	0 <func_80B86920>
 7ac:	00a08025 	move	s0,a1
 7b0:	8fb9004c 	lw	t9,76(sp)
 7b4:	0c000000 	jal	0 <func_80B86920>
 7b8:	8f240000 	lw	a0,0(t9)
 7bc:	8e0202c0 	lw	v0,704(s0)
 7c0:	3c09da38 	lui	t1,0xda38
 7c4:	35290003 	ori	t1,t1,0x3
 7c8:	24480008 	addiu	t0,v0,8
 7cc:	ae0802c0 	sw	t0,704(s0)
 7d0:	ac490000 	sw	t1,0(v0)
 7d4:	8faa004c 	lw	t2,76(sp)
 7d8:	3c050000 	lui	a1,0x0
 7dc:	24a50000 	addiu	a1,a1,0
 7e0:	8d440000 	lw	a0,0(t2)
 7e4:	240601cc 	li	a2,460
 7e8:	0c000000 	jal	0 <func_80B86920>
 7ec:	afa2002c 	sw	v0,44(sp)
 7f0:	8fa3002c 	lw	v1,44(sp)
 7f4:	3c040602 	lui	a0,0x602
 7f8:	248424f8 	addiu	a0,a0,9464
 7fc:	ac620004 	sw	v0,4(v1)
 800:	8e0202c0 	lw	v0,704(s0)
 804:	00046900 	sll	t5,a0,0x4
 808:	000d7702 	srl	t6,t5,0x1c
 80c:	244b0008 	addiu	t3,v0,8
 810:	ae0b02c0 	sw	t3,704(s0)
 814:	000e7880 	sll	t7,t6,0x2
 818:	3c0cde00 	lui	t4,0xde00
 81c:	3c180000 	lui	t8,0x0
 820:	030fc021 	addu	t8,t8,t7
 824:	3c0100ff 	lui	at,0xff
 828:	ac4c0000 	sw	t4,0(v0)
 82c:	8f180000 	lw	t8,0(t8)
 830:	3421ffff 	ori	at,at,0xffff
 834:	0081c824 	and	t9,a0,at
 838:	3c018000 	lui	at,0x8000
 83c:	03194021 	addu	t0,t8,t9
 840:	01014821 	addu	t1,t0,at
 844:	ac490004 	sw	t1,4(v0)
 848:	8faa004c 	lw	t2,76(sp)
 84c:	3c060000 	lui	a2,0x0
 850:	24c60000 	addiu	a2,a2,0
 854:	27a40030 	addiu	a0,sp,48
 858:	240701d1 	li	a3,465
 85c:	0c000000 	jal	0 <func_80B86920>
 860:	8d450000 	lw	a1,0(t2)
 864:	8fbf001c 	lw	ra,28(sp)
 868:	8fb00018 	lw	s0,24(sp)
 86c:	27bd0048 	addiu	sp,sp,72
 870:	03e00008 	jr	ra
 874:	00000000 	nop
	...
