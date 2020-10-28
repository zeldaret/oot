
build/src/overlays/actors/ovl_Bg_Jya_1flift/z_bg_jya_1flift.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgJya1flift_InitDynapoly>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0024 	sw	ra,36(sp)
   8:	afb00020 	sw	s0,32(sp)
   c:	afa5003c 	sw	a1,60(sp)
  10:	00808025 	move	s0,a0
  14:	afa60040 	sw	a2,64(sp)
  18:	afa00030 	sw	zero,48(sp)
  1c:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
  20:	00e02825 	move	a1,a3
  24:	8fa40040 	lw	a0,64(sp)
  28:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
  2c:	27a50030 	addiu	a1,sp,48
  30:	8fa4003c 	lw	a0,60(sp)
  34:	02003025 	move	a2,s0
  38:	8fa70030 	lw	a3,48(sp)
  3c:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
  40:	24850810 	addiu	a1,a0,2064
  44:	24010032 	li	at,50
  48:	1441000a 	bne	v0,at,74 <BgJya1flift_InitDynapoly+0x74>
  4c:	ae02014c 	sw	v0,332(s0)
  50:	860e001c 	lh	t6,28(s0)
  54:	3c040000 	lui	a0,0x0
  58:	3c050000 	lui	a1,0x0
  5c:	86070000 	lh	a3,0(s0)
  60:	24a50040 	addiu	a1,a1,64
  64:	24840000 	addiu	a0,a0,0
  68:	240600b3 	li	a2,179
  6c:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
  70:	afae0010 	sw	t6,16(sp)
  74:	8fbf0024 	lw	ra,36(sp)
  78:	8fb00020 	lw	s0,32(sp)
  7c:	27bd0038 	addiu	sp,sp,56
  80:	03e00008 	jr	ra
  84:	00000000 	nop

00000088 <BgJya1flift_InitCollision>:
  88:	27bdffe0 	addiu	sp,sp,-32
  8c:	afa40020 	sw	a0,32(sp)
  90:	afa50024 	sw	a1,36(sp)
  94:	00a02025 	move	a0,a1
  98:	8fa50020 	lw	a1,32(sp)
  9c:	afbf0014 	sw	ra,20(sp)
  a0:	24a50164 	addiu	a1,a1,356
  a4:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
  a8:	afa50018 	sw	a1,24(sp)
  ac:	3c070000 	lui	a3,0x0
  b0:	8fa50018 	lw	a1,24(sp)
  b4:	8fa60020 	lw	a2,32(sp)
  b8:	24e70024 	addiu	a3,a3,36
  bc:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
  c0:	8fa40024 	lw	a0,36(sp)
  c4:	8faf0020 	lw	t7,32(sp)
  c8:	240e00ff 	li	t6,255
  cc:	a1ee00ae 	sb	t6,174(t7)
  d0:	8fbf0014 	lw	ra,20(sp)
  d4:	27bd0020 	addiu	sp,sp,32
  d8:	03e00008 	jr	ra
  dc:	00000000 	nop

000000e0 <BgJya1flift_Init>:
  e0:	27bdffe0 	addiu	sp,sp,-32
  e4:	afa50024 	sw	a1,36(sp)
  e8:	8fae0024 	lw	t6,36(sp)
  ec:	afb00018 	sw	s0,24(sp)
  f0:	00808025 	move	s0,a0
  f4:	3c060001 	lui	a2,0x1
  f8:	afbf001c 	sw	ra,28(sp)
  fc:	3c040000 	lui	a0,0x0
 100:	3c050000 	lui	a1,0x0
 104:	00ce3021 	addu	a2,a2,t6
 108:	80c61cbc 	lb	a2,7356(a2)
 10c:	90a50000 	lbu	a1,0(a1)
 110:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 114:	24840058 	addiu	a0,a0,88
 118:	a20001b7 	sb	zero,439(s0)
 11c:	3c0f0000 	lui	t7,0x0
 120:	91ef0000 	lbu	t7,0(t7)
 124:	8fa50024 	lw	a1,36(sp)
 128:	02002025 	move	a0,s0
 12c:	11e00005 	beqz	t7,144 <BgJya1flift_Init+0x64>
 130:	3c060000 	lui	a2,0x0
 134:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 138:	02002025 	move	a0,s0
 13c:	1000002b 	b	1ec <BgJya1flift_Init+0x10c>
 140:	8fbf001c 	lw	ra,28(sp)
 144:	24c60000 	addiu	a2,a2,0
 148:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 14c:	00003825 	move	a3,zero
 150:	3c050000 	lui	a1,0x0
 154:	24a50058 	addiu	a1,a1,88
 158:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 15c:	02002025 	move	a0,s0
 160:	02002025 	move	a0,s0
 164:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 168:	8fa50024 	lw	a1,36(sp)
 16c:	8605001c 	lh	a1,28(s0)
 170:	8fa40024 	lw	a0,36(sp)
 174:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 178:	30a5003f 	andi	a1,a1,0x3f
 17c:	10400012 	beqz	v0,1c8 <BgJya1flift_Init+0xe8>
 180:	3c180000 	lui	t8,0x0
 184:	8f180004 	lw	t8,4(t8)
 188:	24010011 	li	at,17
 18c:	24020011 	li	v0,17
 190:	13000003 	beqz	t8,1a0 <BgJya1flift_Init+0xc0>
 194:	00000000 	nop
 198:	10000001 	b	1a0 <BgJya1flift_Init+0xc0>
 19c:	24020005 	li	v0,5
 1a0:	14410005 	bne	v0,at,1b8 <BgJya1flift_Init+0xd8>
 1a4:	00000000 	nop
 1a8:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 1ac:	02002025 	move	a0,s0
 1b0:	10000008 	b	1d4 <BgJya1flift_Init+0xf4>
 1b4:	2419ffff 	li	t9,-1
 1b8:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 1bc:	02002025 	move	a0,s0
 1c0:	10000004 	b	1d4 <BgJya1flift_Init+0xf4>
 1c4:	2419ffff 	li	t9,-1
 1c8:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 1cc:	02002025 	move	a0,s0
 1d0:	2419ffff 	li	t9,-1
 1d4:	24020001 	li	v0,1
 1d8:	a2190003 	sb	t9,3(s0)
 1dc:	3c010000 	lui	at,0x0
 1e0:	a0220000 	sb	v0,0(at)
 1e4:	a20201b7 	sb	v0,439(s0)
 1e8:	8fbf001c 	lw	ra,28(sp)
 1ec:	8fb00018 	lw	s0,24(sp)
 1f0:	27bd0020 	addiu	sp,sp,32
 1f4:	03e00008 	jr	ra
 1f8:	00000000 	nop

000001fc <BgJya1flift_Destroy>:
 1fc:	27bdffe8 	addiu	sp,sp,-24
 200:	afbf0014 	sw	ra,20(sp)
 204:	afa5001c 	sw	a1,28(sp)
 208:	908e01b7 	lbu	t6,439(a0)
 20c:	00803825 	move	a3,a0
 210:	3c010000 	lui	at,0x0
 214:	11c0000a 	beqz	t6,240 <BgJya1flift_Destroy+0x44>
 218:	00a02025 	move	a0,a1
 21c:	a0200000 	sb	zero,0(at)
 220:	24e50164 	addiu	a1,a3,356
 224:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 228:	afa70018 	sw	a3,24(sp)
 22c:	8fa4001c 	lw	a0,28(sp)
 230:	8fa70018 	lw	a3,24(sp)
 234:	24850810 	addiu	a1,a0,2064
 238:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 23c:	8ce6014c 	lw	a2,332(a3)
 240:	8fbf0014 	lw	ra,20(sp)
 244:	27bd0018 	addiu	sp,sp,24
 248:	03e00008 	jr	ra
 24c:	00000000 	nop

00000250 <func_80892DB0>:
 250:	3c0e0000 	lui	t6,0x0
 254:	25ce0000 	addiu	t6,t6,0
 258:	ac8e01b0 	sw	t6,432(a0)
 25c:	3c010000 	lui	at,0x0
 260:	c4240000 	lwc1	$f4,0(at)
 264:	03e00008 	jr	ra
 268:	e4840028 	swc1	$f4,40(a0)

0000026c <func_80892DCC>:
 26c:	27bdffe8 	addiu	sp,sp,-24
 270:	afa40018 	sw	a0,24(sp)
 274:	8fae0018 	lw	t6,24(sp)
 278:	afbf0014 	sw	ra,20(sp)
 27c:	00a02025 	move	a0,a1
 280:	85c5001c 	lh	a1,28(t6)
 284:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 288:	30a5003f 	andi	a1,a1,0x3f
 28c:	50400004 	beqzl	v0,2a0 <func_80892DCC+0x34>
 290:	8fbf0014 	lw	ra,20(sp)
 294:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 298:	8fa40018 	lw	a0,24(sp)
 29c:	8fbf0014 	lw	ra,20(sp)
 2a0:	27bd0018 	addiu	sp,sp,24
 2a4:	03e00008 	jr	ra
 2a8:	00000000 	nop

000002ac <func_80892E0C>:
 2ac:	3c0e0000 	lui	t6,0x0
 2b0:	25ce0000 	addiu	t6,t6,0
 2b4:	ac8e01b0 	sw	t6,432(a0)
 2b8:	3c010000 	lui	at,0x0
 2bc:	c4240000 	lwc1	$f4,0(at)
 2c0:	03e00008 	jr	ra
 2c4:	e4840028 	swc1	$f4,40(a0)

000002c8 <BgJya1flift_DoNothing>:
 2c8:	afa40000 	sw	a0,0(sp)
 2cc:	03e00008 	jr	ra
 2d0:	afa50004 	sw	a1,4(sp)

000002d4 <BgJya1flift_ChangeDirection>:
 2d4:	908f01b6 	lbu	t7,438(a0)
 2d8:	44802000 	mtc1	zero,$f4
 2dc:	3c0e0000 	lui	t6,0x0
 2e0:	25ce0000 	addiu	t6,t6,0
 2e4:	39f80001 	xori	t8,t7,0x1
 2e8:	ac8e01b0 	sw	t6,432(a0)
 2ec:	a09801b6 	sb	t8,438(a0)
 2f0:	03e00008 	jr	ra
 2f4:	e4840060 	swc1	$f4,96(a0)

000002f8 <BgJya1flift_Move>:
 2f8:	27bdffd8 	addiu	sp,sp,-40
 2fc:	afb00020 	sw	s0,32(sp)
 300:	00808025 	move	s0,a0
 304:	afbf0024 	sw	ra,36(sp)
 308:	afa5002c 	sw	a1,44(sp)
 30c:	3c063ecc 	lui	a2,0x3ecc
 310:	34c6cccd 	ori	a2,a2,0xcccd
 314:	3c0540c0 	lui	a1,0x40c0
 318:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 31c:	24840060 	addiu	a0,a0,96
 320:	3c013f80 	lui	at,0x3f80
 324:	44816000 	mtc1	at,$f12
 328:	c6000060 	lwc1	$f0,96(s0)
 32c:	26040028 	addiu	a0,s0,40
 330:	3c050000 	lui	a1,0x0
 334:	460c003c 	c.lt.s	$f0,$f12
 338:	3c063f00 	lui	a2,0x3f00
 33c:	45020004 	bc1fl	350 <BgJya1flift_Move+0x58>
 340:	46000086 	mov.s	$f2,$f0
 344:	10000002 	b	350 <BgJya1flift_Move+0x58>
 348:	46006086 	mov.s	$f2,$f12
 34c:	46000086 	mov.s	$f2,$f0
 350:	920e01b6 	lbu	t6,438(s0)
 354:	44071000 	mfc1	a3,$f2
 358:	e7ac0010 	swc1	$f12,16(sp)
 35c:	000e7880 	sll	t7,t6,0x2
 360:	00af2821 	addu	a1,a1,t7
 364:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 368:	8ca50000 	lw	a1,0(a1)
 36c:	3c010000 	lui	at,0x0
 370:	c4240078 	lwc1	$f4,120(at)
 374:	46000005 	abs.s	$f0,$f0
 378:	02002025 	move	a0,s0
 37c:	4604003c 	c.lt.s	$f0,$f4
 380:	00000000 	nop
 384:	4500000e 	bc1f	3c0 <BgJya1flift_Move+0xc8>
 388:	00000000 	nop
 38c:	921801b6 	lbu	t8,438(s0)
 390:	3c010000 	lui	at,0x0
 394:	02002025 	move	a0,s0
 398:	0018c880 	sll	t9,t8,0x2
 39c:	00390821 	addu	at,at,t9
 3a0:	c4260000 	lwc1	$f6,0(at)
 3a4:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 3a8:	e6060028 	swc1	$f6,40(s0)
 3ac:	02002025 	move	a0,s0
 3b0:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 3b4:	24052835 	li	a1,10293
 3b8:	10000004 	b	3cc <BgJya1flift_Move+0xd4>
 3bc:	8fbf0024 	lw	ra,36(sp)
 3c0:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 3c4:	240520b9 	li	a1,8377
 3c8:	8fbf0024 	lw	ra,36(sp)
 3cc:	8fb00020 	lw	s0,32(sp)
 3d0:	27bd0028 	addiu	sp,sp,40
 3d4:	03e00008 	jr	ra
 3d8:	00000000 	nop

000003dc <BgJya1flift_ResetMoveDelay>:
 3dc:	3c0e0000 	lui	t6,0x0
 3e0:	25ce0000 	addiu	t6,t6,0
 3e4:	ac8e01b0 	sw	t6,432(a0)
 3e8:	03e00008 	jr	ra
 3ec:	a48001b4 	sh	zero,436(a0)

000003f0 <BgJya1flift_DelayMove>:
 3f0:	27bdffe8 	addiu	sp,sp,-24
 3f4:	afbf0014 	sw	ra,20(sp)
 3f8:	afa5001c 	sw	a1,28(sp)
 3fc:	848e01b4 	lh	t6,436(a0)
 400:	25cf0001 	addiu	t7,t6,1
 404:	a48f01b4 	sh	t7,436(a0)
 408:	849801b4 	lh	t8,436(a0)
 40c:	2b010015 	slti	at,t8,21
 410:	54200004 	bnezl	at,424 <BgJya1flift_DelayMove+0x34>
 414:	8fbf0014 	lw	ra,20(sp)
 418:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 41c:	00000000 	nop
 420:	8fbf0014 	lw	ra,20(sp)
 424:	27bd0018 	addiu	sp,sp,24
 428:	03e00008 	jr	ra
 42c:	00000000 	nop

00000430 <BgJya1flift_Update>:
 430:	27bdffd0 	addiu	sp,sp,-48
 434:	3c020001 	lui	v0,0x1
 438:	afbf001c 	sw	ra,28(sp)
 43c:	afb10018 	sw	s1,24(sp)
 440:	afb00014 	sw	s0,20(sp)
 444:	00451021 	addu	v0,v0,a1
 448:	80421cbc 	lb	v0,7356(v0)
 44c:	24010006 	li	at,6
 450:	00808025 	move	s0,a0
 454:	10410003 	beq	v0,at,464 <BgJya1flift_Update+0x34>
 458:	00a08825 	move	s1,a1
 45c:	14400033 	bnez	v0,52c <BgJya1flift_Update+0xfc>
 460:	00000000 	nop
 464:	8e1901b0 	lw	t9,432(s0)
 468:	02002025 	move	a0,s0
 46c:	02202825 	move	a1,s1
 470:	0320f809 	jalr	t9
 474:	00000000 	nop
 478:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 47c:	02002025 	move	a0,s0
 480:	10400003 	beqz	v0,490 <BgJya1flift_Update+0x60>
 484:	00001825 	move	v1,zero
 488:	10000001 	b	490 <BgJya1flift_Update+0x60>
 48c:	24030001 	li	v1,1
 490:	8e0201b0 	lw	v0,432(s0)
 494:	3c0e0000 	lui	t6,0x0
 498:	25ce0000 	addiu	t6,t6,0
 49c:	11c20004 	beq	t6,v0,4b0 <BgJya1flift_Update+0x80>
 4a0:	3c0f0000 	lui	t7,0x0
 4a4:	25ef0000 	addiu	t7,t7,0
 4a8:	55e20013 	bnel	t7,v0,4f8 <BgJya1flift_Update+0xc8>
 4ac:	a20301b8 	sb	v1,440(s0)
 4b0:	10600006 	beqz	v1,4cc <BgJya1flift_Update+0x9c>
 4b4:	24050030 	li	a1,48
 4b8:	8e240790 	lw	a0,1936(s1)
 4bc:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 4c0:	afa30024 	sw	v1,36(sp)
 4c4:	1000000b 	b	4f4 <BgJya1flift_Update+0xc4>
 4c8:	8fa30024 	lw	v1,36(sp)
 4cc:	5460000a 	bnezl	v1,4f8 <BgJya1flift_Update+0xc8>
 4d0:	a20301b8 	sb	v1,440(s0)
 4d4:	921801b8 	lbu	t8,440(s0)
 4d8:	24050003 	li	a1,3
 4dc:	53000006 	beqzl	t8,4f8 <BgJya1flift_Update+0xc8>
 4e0:	a20301b8 	sb	v1,440(s0)
 4e4:	8e240790 	lw	a0,1936(s1)
 4e8:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 4ec:	afa30024 	sw	v1,36(sp)
 4f0:	8fa30024 	lw	v1,36(sp)
 4f4:	a20301b8 	sb	v1,440(s0)
 4f8:	26060164 	addiu	a2,s0,356
 4fc:	00c02825 	move	a1,a2
 500:	afa60020 	sw	a2,32(sp)
 504:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 508:	02002025 	move	a0,s0
 50c:	3c010001 	lui	at,0x1
 510:	34211e60 	ori	at,at,0x1e60
 514:	8fa60020 	lw	a2,32(sp)
 518:	02212821 	addu	a1,s1,at
 51c:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 520:	02202025 	move	a0,s1
 524:	10000004 	b	538 <BgJya1flift_Update+0x108>
 528:	8fbf001c 	lw	ra,28(sp)
 52c:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 530:	02002025 	move	a0,s0
 534:	8fbf001c 	lw	ra,28(sp)
 538:	8fb00014 	lw	s0,20(sp)
 53c:	8fb10018 	lw	s1,24(sp)
 540:	03e00008 	jr	ra
 544:	27bd0030 	addiu	sp,sp,48

00000548 <BgJya1flift_Draw>:
 548:	27bdffe8 	addiu	sp,sp,-24
 54c:	afa40018 	sw	a0,24(sp)
 550:	00a02025 	move	a0,a1
 554:	afbf0014 	sw	ra,20(sp)
 558:	3c050000 	lui	a1,0x0
 55c:	0c000000 	jal	0 <BgJya1flift_InitDynapoly>
 560:	24a50000 	addiu	a1,a1,0
 564:	8fbf0014 	lw	ra,20(sp)
 568:	27bd0018 	addiu	sp,sp,24
 56c:	03e00008 	jr	ra
 570:	00000000 	nop
	...
