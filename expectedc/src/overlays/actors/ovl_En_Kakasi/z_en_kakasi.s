
build/src/overlays/actors/ovl_En_Kakasi/z_en_kakasi.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnKakasi_Destroy>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	00803025 	move	a2,a0
   8:	afbf0014 	sw	ra,20(sp)
   c:	00a02025 	move	a0,a1
  10:	0c000000 	jal	0 <EnKakasi_Destroy>
  14:	24c501bc 	addiu	a1,a2,444
  18:	8fbf0014 	lw	ra,20(sp)
  1c:	27bd0018 	addiu	sp,sp,24
  20:	03e00008 	jr	ra
  24:	00000000 	nop

00000028 <EnKakasi_Init>:
  28:	27bdffc8 	addiu	sp,sp,-56
  2c:	afb00028 	sw	s0,40(sp)
  30:	00808025 	move	s0,a0
  34:	afbf002c 	sw	ra,44(sp)
  38:	3c040000 	lui	a0,0x0
  3c:	afa5003c 	sw	a1,60(sp)
  40:	0c000000 	jal	0 <EnKakasi_Destroy>
  44:	24840000 	addiu	a0,a0,0
  48:	c6040028 	lwc1	$f4,40(s0)
  4c:	3c040000 	lui	a0,0x0
  50:	24840004 	addiu	a0,a0,4
  54:	460021a1 	cvt.d.s	$f6,$f4
  58:	44073000 	mfc1	a3,$f6
  5c:	44063800 	mfc1	a2,$f7
  60:	0c000000 	jal	0 <EnKakasi_Destroy>
  64:	00000000 	nop
  68:	260501bc 	addiu	a1,s0,444
  6c:	afa50030 	sw	a1,48(sp)
  70:	0c000000 	jal	0 <EnKakasi_Destroy>
  74:	8fa4003c 	lw	a0,60(sp)
  78:	3c070000 	lui	a3,0x0
  7c:	8fa50030 	lw	a1,48(sp)
  80:	24e70000 	addiu	a3,a3,0
  84:	8fa4003c 	lw	a0,60(sp)
  88:	0c000000 	jal	0 <EnKakasi_Destroy>
  8c:	02003025 	move	a2,s0
  90:	240e0006 	li	t6,6
  94:	a20e001f 	sb	t6,31(s0)
  98:	3c060000 	lui	a2,0x0
  9c:	3c070000 	lui	a3,0x0
  a0:	24e70000 	addiu	a3,a3,0
  a4:	24c60000 	addiu	a2,a2,0
  a8:	afa00018 	sw	zero,24(sp)
  ac:	afa00014 	sw	zero,20(sp)
  b0:	afa00010 	sw	zero,16(sp)
  b4:	8fa4003c 	lw	a0,60(sp)
  b8:	0c000000 	jal	0 <EnKakasi_Destroy>
  bc:	26050150 	addiu	a1,s0,336
  c0:	8a180030 	lwl	t8,48(s0)
  c4:	9a180033 	lwr	t8,51(s0)
  c8:	8e190004 	lw	t9,4(s0)
  cc:	240900ff 	li	t1,255
  d0:	aa1801ae 	swl	t8,430(s0)
  d4:	ba1801b1 	swr	t8,433(s0)
  d8:	96180034 	lhu	t8,52(s0)
  dc:	3c053c23 	lui	a1,0x3c23
  e0:	37280400 	ori	t0,t9,0x400
  e4:	ae080004 	sw	t0,4(s0)
  e8:	a20900ae 	sb	t1,174(s0)
  ec:	34a5d70a 	ori	a1,a1,0xd70a
  f0:	02002025 	move	a0,s0
  f4:	0c000000 	jal	0 <EnKakasi_Destroy>
  f8:	a61801b2 	sh	t8,434(s0)
  fc:	3c0a0000 	lui	t2,0x0
 100:	254a0000 	addiu	t2,t2,0
 104:	ae0a014c 	sw	t2,332(s0)
 108:	8fbf002c 	lw	ra,44(sp)
 10c:	8fb00028 	lw	s0,40(sp)
 110:	27bd0038 	addiu	sp,sp,56
 114:	03e00008 	jr	ra
 118:	00000000 	nop

0000011c <func_80A8F28C>:
 11c:	27bdffd8 	addiu	sp,sp,-40
 120:	afbf0024 	sw	ra,36(sp)
 124:	afb00020 	sw	s0,32(sp)
 128:	a48001ac 	sh	zero,428(a0)
 12c:	44802000 	mtc1	zero,$f4
 130:	848e01ac 	lh	t6,428(a0)
 134:	00808025 	move	s0,a0
 138:	a48001a4 	sh	zero,420(a0)
 13c:	24840168 	addiu	a0,a0,360
 140:	3c053f00 	lui	a1,0x3f00
 144:	3c063f80 	lui	a2,0x3f80
 148:	e4840004 	swc1	$f4,4(a0)
 14c:	0c000000 	jal	0 <EnKakasi_Destroy>
 150:	a48e0040 	sh	t6,64(a0)
 154:	860501ae 	lh	a1,430(s0)
 158:	afa00010 	sw	zero,16(sp)
 15c:	260400b4 	addiu	a0,s0,180
 160:	24060005 	li	a2,5
 164:	0c000000 	jal	0 <EnKakasi_Destroy>
 168:	24072710 	li	a3,10000
 16c:	860501b0 	lh	a1,432(s0)
 170:	afa00010 	sw	zero,16(sp)
 174:	260400b6 	addiu	a0,s0,182
 178:	24060005 	li	a2,5
 17c:	0c000000 	jal	0 <EnKakasi_Destroy>
 180:	24072710 	li	a3,10000
 184:	860501b2 	lh	a1,434(s0)
 188:	afa00010 	sw	zero,16(sp)
 18c:	260400b8 	addiu	a0,s0,184
 190:	24060005 	li	a2,5
 194:	0c000000 	jal	0 <EnKakasi_Destroy>
 198:	24072710 	li	a3,10000
 19c:	8fbf0024 	lw	ra,36(sp)
 1a0:	8fb00020 	lw	s0,32(sp)
 1a4:	27bd0028 	addiu	sp,sp,40
 1a8:	03e00008 	jr	ra
 1ac:	00000000 	nop

000001b0 <func_80A8F320>:
 1b0:	27bdffd8 	addiu	sp,sp,-40
 1b4:	afa60030 	sw	a2,48(sp)
 1b8:	00063400 	sll	a2,a2,0x10
 1bc:	3c020001 	lui	v0,0x1
 1c0:	00063403 	sra	a2,a2,0x10
 1c4:	afbf0024 	sw	ra,36(sp)
 1c8:	afb00020 	sw	s0,32(sp)
 1cc:	00451021 	addu	v0,v0,a1
 1d0:	00808025 	move	s0,a0
 1d4:	10c0001c 	beqz	a2,248 <func_80A8F320+0x98>
 1d8:	904204e8 	lbu	v0,1256(v0)
 1dc:	848e01a2 	lh	t6,418(a0)
 1e0:	3c010000 	lui	at,0x0
 1e4:	15c0000f 	bnez	t6,224 <func_80A8F320+0x74>
 1e8:	00000000 	nop
 1ec:	0c000000 	jal	0 <EnKakasi_Destroy>
 1f0:	c42c00b8 	lwc1	$f12,184(at)
 1f4:	4600010d 	trunc.w.s	$f4,$f0
 1f8:	3c010000 	lui	at,0x0
 1fc:	44082000 	mfc1	t0,$f4
 200:	00000000 	nop
 204:	2509001e 	addiu	t1,t0,30
 208:	a60901a2 	sh	t1,418(s0)
 20c:	0c000000 	jal	0 <EnKakasi_Destroy>
 210:	c42c00bc 	lwc1	$f12,188(at)
 214:	4600018d 	trunc.w.s	$f6,$f0
 218:	440b3000 	mfc1	t3,$f6
 21c:	00000000 	nop
 220:	a60b01a6 	sh	t3,422(s0)
 224:	3c010000 	lui	at,0x0
 228:	0c000000 	jal	0 <EnKakasi_Destroy>
 22c:	c42c00c0 	lwc1	$f12,192(at)
 230:	4600020d 	trunc.w.s	$f8,$f0
 234:	860201a6 	lh	v0,422(s0)
 238:	440f4000 	mfc1	t7,$f8
 23c:	00000000 	nop
 240:	25f80005 	addiu	t8,t7,5
 244:	a618019a 	sh	t8,410(s0)
 248:	2c410005 	sltiu	at,v0,5
 24c:	1020002f 	beqz	at,30c <func_80A8F320+0x15c>
 250:	0002c880 	sll	t9,v0,0x2
 254:	3c010000 	lui	at,0x0
 258:	00390821 	addu	at,at,t9
 25c:	8c3900c4 	lw	t9,196(at)
 260:	03200008 	jr	t9
 264:	00000000 	nop
 268:	8608019a 	lh	t0,410(s0)
 26c:	860a01a4 	lh	t2,420(s0)
 270:	240b0001 	li	t3,1
 274:	25090001 	addiu	t1,t0,1
 278:	15400024 	bnez	t2,30c <func_80A8F320+0x15c>
 27c:	a609019a 	sh	t1,410(s0)
 280:	a60b01a4 	sh	t3,420(s0)
 284:	02002025 	move	a0,s0
 288:	0c000000 	jal	0 <EnKakasi_Destroy>
 28c:	2405286b 	li	a1,10347
 290:	1000001f 	b	310 <func_80A8F320+0x160>
 294:	8602019a 	lh	v0,410(s0)
 298:	860c019a 	lh	t4,410(s0)
 29c:	3c013f80 	lui	at,0x3f80
 2a0:	44815000 	mtc1	at,$f10
 2a4:	258d0001 	addiu	t5,t4,1
 2a8:	a60d019a 	sh	t5,410(s0)
 2ac:	10000017 	b	30c <func_80A8F320+0x15c>
 2b0:	e60a01b8 	swc1	$f10,440(s0)
 2b4:	860e019a 	lh	t6,410(s0)
 2b8:	861801ac 	lh	t8,428(s0)
 2bc:	24191388 	li	t9,5000
 2c0:	25cf0001 	addiu	t7,t6,1
 2c4:	17000011 	bnez	t8,30c <func_80A8F320+0x15c>
 2c8:	a60f019a 	sh	t7,410(s0)
 2cc:	1000000f 	b	30c <func_80A8F320+0x15c>
 2d0:	a61901ac 	sh	t9,428(s0)
 2d4:	8608019a 	lh	t0,410(s0)
 2d8:	860a01a8 	lh	t2,424(s0)
 2dc:	240b1388 	li	t3,5000
 2e0:	25090001 	addiu	t1,t0,1
 2e4:	15400009 	bnez	t2,30c <func_80A8F320+0x15c>
 2e8:	a609019a 	sh	t1,410(s0)
 2ec:	10000007 	b	30c <func_80A8F320+0x15c>
 2f0:	a60b01a8 	sh	t3,424(s0)
 2f4:	860c019a 	lh	t4,410(s0)
 2f8:	3c014000 	lui	at,0x4000
 2fc:	44818000 	mtc1	at,$f16
 300:	258d0001 	addiu	t5,t4,1
 304:	a60d019a 	sh	t5,410(s0)
 308:	e61001b8 	swc1	$f16,440(s0)
 30c:	8602019a 	lh	v0,410(s0)
 310:	240e0008 	li	t6,8
 314:	28410009 	slti	at,v0,9
 318:	14200003 	bnez	at,328 <func_80A8F320+0x178>
 31c:	00000000 	nop
 320:	a60e019a 	sh	t6,410(s0)
 324:	8602019a 	lh	v0,410(s0)
 328:	1040006c 	beqz	v0,4dc <func_80A8F320+0x32c>
 32c:	3c01bf80 	lui	at,0xbf80
 330:	44819000 	mtc1	at,$f18
 334:	24010008 	li	at,8
 338:	1441000b 	bne	v0,at,368 <func_80A8F320+0x1b8>
 33c:	e612006c 	swc1	$f18,108(s0)
 340:	960f0088 	lhu	t7,136(s0)
 344:	3c014040 	lui	at,0x4040
 348:	02002025 	move	a0,s0
 34c:	31f80001 	andi	t8,t7,0x1
 350:	53000006 	beqzl	t8,36c <func_80A8F320+0x1bc>
 354:	3c063dcc 	lui	a2,0x3dcc
 358:	44812000 	mtc1	at,$f4
 35c:	24051847 	li	a1,6215
 360:	0c000000 	jal	0 <EnKakasi_Destroy>
 364:	e6040060 	swc1	$f4,96(s0)
 368:	3c063dcc 	lui	a2,0x3dcc
 36c:	3c073e4c 	lui	a3,0x3e4c
 370:	34e7cccd 	ori	a3,a3,0xcccd
 374:	34c6cccd 	ori	a2,a2,0xcccd
 378:	2604016c 	addiu	a0,s0,364
 37c:	0c000000 	jal	0 <EnKakasi_Destroy>
 380:	8e0501b8 	lw	a1,440(s0)
 384:	860501a8 	lh	a1,424(s0)
 388:	afa00010 	sw	zero,16(sp)
 38c:	260400b4 	addiu	a0,s0,180
 390:	24060005 	li	a2,5
 394:	0c000000 	jal	0 <EnKakasi_Destroy>
 398:	240703e8 	li	a3,1000
 39c:	860501ac 	lh	a1,428(s0)
 3a0:	afa00010 	sw	zero,16(sp)
 3a4:	260400b8 	addiu	a0,s0,184
 3a8:	24060005 	li	a2,5
 3ac:	0c000000 	jal	0 <EnKakasi_Destroy>
 3b0:	240703e8 	li	a3,1000
 3b4:	860201a8 	lh	v0,424(s0)
 3b8:	02002025 	move	a0,s0
 3bc:	50400017 	beqzl	v0,41c <func_80A8F320+0x26c>
 3c0:	860201ac 	lh	v0,428(s0)
 3c4:	861900b4 	lh	t9,180(s0)
 3c8:	3c014248 	lui	at,0x4248
 3cc:	44814000 	mtc1	at,$f8
 3d0:	03224023 	subu	t0,t9,v0
 3d4:	44883000 	mtc1	t0,$f6
 3d8:	00000000 	nop
 3dc:	46803020 	cvt.s.w	$f0,$f6
 3e0:	46000005 	abs.s	$f0,$f0
 3e4:	4608003c 	c.lt.s	$f0,$f8
 3e8:	00000000 	nop
 3ec:	4502000b 	bc1fl	41c <func_80A8F320+0x26c>
 3f0:	860201ac 	lh	v0,428(s0)
 3f4:	44825000 	mtc1	v0,$f10
 3f8:	3c01bf80 	lui	at,0xbf80
 3fc:	44819000 	mtc1	at,$f18
 400:	46805420 	cvt.s.w	$f16,$f10
 404:	46128102 	mul.s	$f4,$f16,$f18
 408:	4600218d 	trunc.w.s	$f6,$f4
 40c:	440a3000 	mfc1	t2,$f6
 410:	00000000 	nop
 414:	a60a01a8 	sh	t2,424(s0)
 418:	860201ac 	lh	v0,428(s0)
 41c:	50400017 	beqzl	v0,47c <func_80A8F320+0x2cc>
 420:	860f01a4 	lh	t7,420(s0)
 424:	860b00b8 	lh	t3,184(s0)
 428:	3c014248 	lui	at,0x4248
 42c:	44815000 	mtc1	at,$f10
 430:	01626023 	subu	t4,t3,v0
 434:	448c4000 	mtc1	t4,$f8
 438:	00000000 	nop
 43c:	46804020 	cvt.s.w	$f0,$f8
 440:	46000005 	abs.s	$f0,$f0
 444:	460a003c 	c.lt.s	$f0,$f10
 448:	00000000 	nop
 44c:	4502000b 	bc1fl	47c <func_80A8F320+0x2cc>
 450:	860f01a4 	lh	t7,420(s0)
 454:	44828000 	mtc1	v0,$f16
 458:	3c01bf80 	lui	at,0xbf80
 45c:	44812000 	mtc1	at,$f4
 460:	468084a0 	cvt.s.w	$f18,$f16
 464:	46049182 	mul.s	$f6,$f18,$f4
 468:	4600320d 	trunc.w.s	$f8,$f6
 46c:	440e4000 	mfc1	t6,$f8
 470:	00000000 	nop
 474:	a60e01ac 	sh	t6,428(s0)
 478:	860f01a4 	lh	t7,420(s0)
 47c:	51e00009 	beqzl	t7,4a4 <func_80A8F320+0x2f4>
 480:	c60a0168 	lwc1	$f10,360(s0)
 484:	861800b6 	lh	t8,182(s0)
 488:	27191000 	addiu	t9,t8,4096
 48c:	a61900b6 	sh	t9,182(s0)
 490:	860800b6 	lh	t0,182(s0)
 494:	55000003 	bnezl	t0,4a4 <func_80A8F320+0x2f4>
 498:	c60a0168 	lwc1	$f10,360(s0)
 49c:	a60001a4 	sh	zero,420(s0)
 4a0:	c60a0168 	lwc1	$f10,360(s0)
 4a4:	2401000b 	li	at,11
 4a8:	4600540d 	trunc.w.s	$f16,$f10
 4ac:	44028000 	mfc1	v0,$f16
 4b0:	00000000 	nop
 4b4:	00021400 	sll	v0,v0,0x10
 4b8:	00021403 	sra	v0,v0,0x10
 4bc:	10410003 	beq	v0,at,4cc <func_80A8F320+0x31c>
 4c0:	24010011 	li	at,17
 4c4:	14410003 	bne	v0,at,4d4 <func_80A8F320+0x324>
 4c8:	00000000 	nop
 4cc:	0c000000 	jal	0 <EnKakasi_Destroy>
 4d0:	2405286a 	li	a1,10346
 4d4:	0c000000 	jal	0 <EnKakasi_Destroy>
 4d8:	26040150 	addiu	a0,s0,336
 4dc:	8fbf0024 	lw	ra,36(sp)
 4e0:	8fb00020 	lw	s0,32(sp)
 4e4:	27bd0028 	addiu	sp,sp,40
 4e8:	03e00008 	jr	ra
 4ec:	00000000 	nop

000004f0 <func_80A8F660>:
 4f0:	27bdffd0 	addiu	sp,sp,-48
 4f4:	afb00028 	sw	s0,40(sp)
 4f8:	00808025 	move	s0,a0
 4fc:	afbf002c 	sw	ra,44(sp)
 500:	3c040000 	lui	a0,0x0
 504:	afa50034 	sw	a1,52(sp)
 508:	0c000000 	jal	0 <EnKakasi_Destroy>
 50c:	24840000 	addiu	a0,a0,0
 510:	44822000 	mtc1	v0,$f4
 514:	3c01c120 	lui	at,0xc120
 518:	44819000 	mtc1	at,$f18
 51c:	468021a0 	cvt.s.w	$f6,$f4
 520:	3c050000 	lui	a1,0x0
 524:	24a50000 	addiu	a1,a1,0
 528:	26040150 	addiu	a0,s0,336
 52c:	3c063f80 	lui	a2,0x3f80
 530:	24070000 	li	a3,0
 534:	4600320d 	trunc.w.s	$f8,$f6
 538:	afa00014 	sw	zero,20(sp)
 53c:	e7b20018 	swc1	$f18,24(sp)
 540:	440f4000 	mfc1	t7,$f8
 544:	00000000 	nop
 548:	000fc400 	sll	t8,t7,0x10
 54c:	0018cc03 	sra	t9,t8,0x10
 550:	44995000 	mtc1	t9,$f10
 554:	00000000 	nop
 558:	46805420 	cvt.s.w	$f16,$f10
 55c:	0c000000 	jal	0 <EnKakasi_Destroy>
 560:	e7b00010 	swc1	$f16,16(sp)
 564:	3c020000 	lui	v0,0x0
 568:	24084076 	li	t0,16502
 56c:	24090006 	li	t1,6
 570:	24420000 	addiu	v0,v0,0
 574:	a608010e 	sh	t0,270(s0)
 578:	a6090196 	sh	t1,406(s0)
 57c:	8c4a0004 	lw	t2,4(v0)
 580:	3c080000 	lui	t0,0x0
 584:	240e0001 	li	t6,1
 588:	1140000a 	beqz	t2,5b4 <func_80A8F660+0xc4>
 58c:	25080000 	addiu	t0,t0,0
 590:	a2000194 	sb	zero,404(s0)
 594:	904b0f40 	lbu	t3,3904(v0)
 598:	240c407a 	li	t4,16506
 59c:	240d0005 	li	t5,5
 5a0:	5160000d 	beqzl	t3,5d8 <func_80A8F660+0xe8>
 5a4:	ae08014c 	sw	t0,332(s0)
 5a8:	a60c010e 	sh	t4,270(s0)
 5ac:	10000009 	b	5d4 <func_80A8F660+0xe4>
 5b0:	a60d0196 	sh	t5,406(s0)
 5b4:	a20e0194 	sb	t6,404(s0)
 5b8:	904f0f40 	lbu	t7,3904(v0)
 5bc:	24184079 	li	t8,16505
 5c0:	24190005 	li	t9,5
 5c4:	51e00004 	beqzl	t7,5d8 <func_80A8F660+0xe8>
 5c8:	ae08014c 	sw	t0,332(s0)
 5cc:	a618010e 	sh	t8,270(s0)
 5d0:	a6190196 	sh	t9,406(s0)
 5d4:	ae08014c 	sw	t0,332(s0)
 5d8:	8fbf002c 	lw	ra,44(sp)
 5dc:	8fb00028 	lw	s0,40(sp)
 5e0:	27bd0030 	addiu	sp,sp,48
 5e4:	03e00008 	jr	ra
 5e8:	00000000 	nop

000005ec <func_80A8F75C>:
 5ec:	27bdffd0 	addiu	sp,sp,-48
 5f0:	afbf0024 	sw	ra,36(sp)
 5f4:	afb00020 	sw	s0,32(sp)
 5f8:	afa50034 	sw	a1,52(sp)
 5fc:	8caf1c44 	lw	t7,7236(a1)
 600:	00808025 	move	s0,a0
 604:	0c000000 	jal	0 <EnKakasi_Destroy>
 608:	afaf002c 	sw	t7,44(sp)
 60c:	0c000000 	jal	0 <EnKakasi_Destroy>
 610:	26040150 	addiu	a0,s0,336
 614:	2418ffff 	li	t8,-1
 618:	a6180208 	sh	t8,520(s0)
 61c:	8fa50034 	lw	a1,52(sp)
 620:	0c000000 	jal	0 <EnKakasi_Destroy>
 624:	02002025 	move	a0,s0
 628:	1040000c 	beqz	v0,65c <func_80A8F75C+0x70>
 62c:	3c0142f0 	lui	at,0x42f0
 630:	86190196 	lh	t9,406(s0)
 634:	24010005 	li	at,5
 638:	3c090000 	lui	t1,0x0
 63c:	17210005 	bne	t9,at,654 <func_80A8F75C+0x68>
 640:	25290000 	addiu	t1,t1,0
 644:	3c080000 	lui	t0,0x0
 648:	25080000 	addiu	t0,t0,0
 64c:	1000003f 	b	74c <func_80A8F75C+0x160>
 650:	ae08014c 	sw	t0,332(s0)
 654:	1000003d 	b	74c <func_80A8F75C+0x160>
 658:	ae09014c 	sw	t1,332(s0)
 65c:	c6000090 	lwc1	$f0,144(s0)
 660:	44812000 	mtc1	at,$f4
 664:	860a008a 	lh	t2,138(s0)
 668:	860b00b6 	lh	t3,182(s0)
 66c:	4600203c 	c.lt.s	$f4,$f0
 670:	014b1023 	subu	v0,t2,t3
 674:	00021400 	sll	v0,v0,0x10
 678:	45010034 	bc1t	74c <func_80A8F75C+0x160>
 67c:	00021403 	sra	v0,v0,0x10
 680:	04400004 	bltz	v0,694 <func_80A8F75C+0xa8>
 684:	00021823 	negu	v1,v0
 688:	00021c00 	sll	v1,v0,0x10
 68c:	10000003 	b	69c <func_80A8F75C+0xb0>
 690:	00031c03 	sra	v1,v1,0x10
 694:	00031c00 	sll	v1,v1,0x10
 698:	00031c03 	sra	v1,v1,0x10
 69c:	28614300 	slti	at,v1,17152
 6a0:	5020002b 	beqzl	at,750 <func_80A8F75C+0x164>
 6a4:	8fbf0024 	lw	ra,36(sp)
 6a8:	920c0194 	lbu	t4,404(s0)
 6ac:	8fa3002c 	lw	v1,44(sp)
 6b0:	02002025 	move	a0,s0
 6b4:	15800023 	bnez	t4,744 <func_80A8F75C+0x158>
 6b8:	3c0642c8 	lui	a2,0x42c8
 6bc:	8c620680 	lw	v0,1664(v1)
 6c0:	240508d4 	li	a1,2260
 6c4:	02003825 	move	a3,s0
 6c8:	000269c0 	sll	t5,v0,0x7
 6cc:	05a10015 	bgez	t5,724 <func_80A8F75C+0x138>
 6d0:	3c0142a0 	lui	at,0x42a0
 6d4:	8fa40034 	lw	a0,52(sp)
 6d8:	2406ff9d 	li	a2,-99
 6dc:	0c000000 	jal	0 <EnKakasi_Destroy>
 6e0:	afa00010 	sw	zero,16(sp)
 6e4:	a6020208 	sh	v0,520(s0)
 6e8:	8fa40034 	lw	a0,52(sp)
 6ec:	0c000000 	jal	0 <EnKakasi_Destroy>
 6f0:	2405002a 	li	a1,42
 6f4:	44803000 	mtc1	zero,$f6
 6f8:	a600019a 	sh	zero,410(s0)
 6fc:	3c010080 	lui	at,0x80
 700:	e60601b8 	swc1	$f6,440(s0)
 704:	8fae002c 	lw	t6,44(sp)
 708:	3c190000 	lui	t9,0x0
 70c:	27390000 	addiu	t9,t9,0
 710:	8dcf0680 	lw	t7,1664(t6)
 714:	01e1c025 	or	t8,t7,at
 718:	add80680 	sw	t8,1664(t6)
 71c:	1000000b 	b	74c <func_80A8F75C+0x160>
 720:	ae19014c 	sw	t9,332(s0)
 724:	44814000 	mtc1	at,$f8
 728:	3c010080 	lui	at,0x80
 72c:	00414025 	or	t0,v0,at
 730:	4608003c 	c.lt.s	$f0,$f8
 734:	00000000 	nop
 738:	45000002 	bc1f	744 <func_80A8F75C+0x158>
 73c:	00000000 	nop
 740:	ac680680 	sw	t0,1664(v1)
 744:	0c000000 	jal	0 <EnKakasi_Destroy>
 748:	8fa50034 	lw	a1,52(sp)
 74c:	8fbf0024 	lw	ra,36(sp)
 750:	8fb00020 	lw	s0,32(sp)
 754:	27bd0030 	addiu	sp,sp,48
 758:	03e00008 	jr	ra
 75c:	00000000 	nop

00000760 <func_80A8F8D0>:
 760:	27bdffd8 	addiu	sp,sp,-40
 764:	3c010001 	lui	at,0x1
 768:	afbf001c 	sw	ra,28(sp)
 76c:	afb00018 	sw	s0,24(sp)
 770:	00a11821 	addu	v1,a1,at
 774:	946604c6 	lhu	a2,1222(v1)
 778:	24010004 	li	at,4
 77c:	00808025 	move	s0,a0
 780:	00a03825 	move	a3,a1
 784:	14c10023 	bne	a2,at,814 <func_80A8F8D0+0xb4>
 788:	8ca21c44 	lw	v0,7236(a1)
 78c:	906e03dc 	lbu	t6,988(v1)
 790:	3c040000 	lui	a0,0x0
 794:	24840040 	addiu	a0,a0,64
 798:	55c0001f 	bnezl	t6,818 <func_80A8F8D0+0xb8>
 79c:	24010001 	li	at,1
 7a0:	0c000000 	jal	0 <EnKakasi_Destroy>
 7a4:	afa5002c 	sw	a1,44(sp)
 7a8:	860f019a 	lh	t7,410(s0)
 7ac:	8fa7002c 	lw	a3,44(sp)
 7b0:	11e00010 	beqz	t7,7f4 <func_80A8F8D0+0x94>
 7b4:	00e02025 	move	a0,a3
 7b8:	00e02025 	move	a0,a3
 7bc:	0c000000 	jal	0 <EnKakasi_Destroy>
 7c0:	afa7002c 	sw	a3,44(sp)
 7c4:	8fa4002c 	lw	a0,44(sp)
 7c8:	24184077 	li	t8,16503
 7cc:	24190005 	li	t9,5
 7d0:	a618010e 	sh	t8,270(s0)
 7d4:	a6190196 	sh	t9,406(s0)
 7d8:	3305ffff 	andi	a1,t8,0xffff
 7dc:	0c000000 	jal	0 <EnKakasi_Destroy>
 7e0:	00003025 	move	a2,zero
 7e4:	3c080000 	lui	t0,0x0
 7e8:	25080000 	addiu	t0,t0,0
 7ec:	10000015 	b	844 <func_80A8F8D0+0xe4>
 7f0:	ae08014c 	sw	t0,332(s0)
 7f4:	0c000000 	jal	0 <EnKakasi_Destroy>
 7f8:	86050208 	lh	a1,520(s0)
 7fc:	3c0a0000 	lui	t2,0x0
 800:	2409ffff 	li	t1,-1
 804:	254a0000 	addiu	t2,t2,0
 808:	a6090208 	sh	t1,520(s0)
 80c:	1000000d 	b	844 <func_80A8F8D0+0xe4>
 810:	ae0a014c 	sw	t2,332(s0)
 814:	24010001 	li	at,1
 818:	14c1000a 	bne	a2,at,844 <func_80A8F8D0+0xe4>
 81c:	02002025 	move	a0,s0
 820:	00e02825 	move	a1,a3
 824:	00003025 	move	a2,zero
 828:	0c000000 	jal	0 <EnKakasi_Destroy>
 82c:	afa20024 	sw	v0,36(sp)
 830:	8fa20024 	lw	v0,36(sp)
 834:	3c010080 	lui	at,0x80
 838:	8c4b0680 	lw	t3,1664(v0)
 83c:	01616025 	or	t4,t3,at
 840:	ac4c0680 	sw	t4,1664(v0)
 844:	8fbf001c 	lw	ra,28(sp)
 848:	8fb00018 	lw	s0,24(sp)
 84c:	27bd0028 	addiu	sp,sp,40
 850:	03e00008 	jr	ra
 854:	00000000 	nop

00000858 <func_80A8F9C8>:
 858:	27bdffd8 	addiu	sp,sp,-40
 85c:	afbf0024 	sw	ra,36(sp)
 860:	afb10020 	sw	s1,32(sp)
 864:	afb0001c 	sw	s0,28(sp)
 868:	00a08025 	move	s0,a1
 86c:	0c000000 	jal	0 <EnKakasi_Destroy>
 870:	00808825 	move	s1,a0
 874:	0c000000 	jal	0 <EnKakasi_Destroy>
 878:	26240150 	addiu	a0,s1,336
 87c:	02002025 	move	a0,s0
 880:	00002825 	move	a1,zero
 884:	0c000000 	jal	0 <EnKakasi_Destroy>
 888:	24060008 	li	a2,8
 88c:	0c000000 	jal	0 <EnKakasi_Destroy>
 890:	260420d8 	addiu	a0,s0,8408
 894:	862e0196 	lh	t6,406(s1)
 898:	55c20022 	bnel	t6,v0,924 <func_80A8F9C8+0xcc>
 89c:	8fbf0024 	lw	ra,36(sp)
 8a0:	0c000000 	jal	0 <EnKakasi_Destroy>
 8a4:	02002025 	move	a0,s0
 8a8:	5040001e 	beqzl	v0,924 <func_80A8F9C8+0xcc>
 8ac:	8fbf0024 	lw	ra,36(sp)
 8b0:	86220208 	lh	v0,520(s1)
 8b4:	2401ffff 	li	at,-1
 8b8:	10410004 	beq	v0,at,8cc <func_80A8F9C8+0x74>
 8bc:	00027880 	sll	t7,v0,0x2
 8c0:	020fc021 	addu	t8,s0,t7
 8c4:	0c000000 	jal	0 <EnKakasi_Destroy>
 8c8:	8f040790 	lw	a0,1936(t8)
 8cc:	02002025 	move	a0,s0
 8d0:	240508de 	li	a1,2270
 8d4:	2406ff9d 	li	a2,-99
 8d8:	02203825 	move	a3,s1
 8dc:	0c000000 	jal	0 <EnKakasi_Destroy>
 8e0:	afa00010 	sw	zero,16(sp)
 8e4:	3c010001 	lui	at,0x1
 8e8:	a6220208 	sh	v0,520(s1)
 8ec:	00300821 	addu	at,at,s0
 8f0:	24190037 	li	t9,55
 8f4:	a03903dc 	sb	t9,988(at)
 8f8:	02002025 	move	a0,s0
 8fc:	00002825 	move	a1,zero
 900:	0c000000 	jal	0 <EnKakasi_Destroy>
 904:	24060008 	li	a2,8
 908:	02002025 	move	a0,s0
 90c:	0c000000 	jal	0 <EnKakasi_Destroy>
 910:	2405002b 	li	a1,43
 914:	3c080000 	lui	t0,0x0
 918:	25080000 	addiu	t0,t0,0
 91c:	ae28014c 	sw	t0,332(s1)
 920:	8fbf0024 	lw	ra,36(sp)
 924:	8fb0001c 	lw	s0,28(sp)
 928:	8fb10020 	lw	s1,32(sp)
 92c:	03e00008 	jr	ra
 930:	27bd0028 	addiu	sp,sp,40

00000934 <func_80A8FAA4>:
 934:	27bdffd0 	addiu	sp,sp,-48
 938:	3c010001 	lui	at,0x1
 93c:	afbf0024 	sw	ra,36(sp)
 940:	afb10020 	sw	s1,32(sp)
 944:	afb0001c 	sw	s0,28(sp)
 948:	00a11021 	addu	v0,a1,at
 94c:	944e04c6 	lhu	t6,1222(v0)
 950:	2401000f 	li	at,15
 954:	00808025 	move	s0,a0
 958:	11c10005 	beq	t6,at,970 <func_80A8FAA4+0x3c>
 95c:	00a08825 	move	s1,a1
 960:	0c000000 	jal	0 <EnKakasi_Destroy>
 964:	24060001 	li	a2,1
 968:	10000033 	b	a38 <func_80A8FAA4+0x104>
 96c:	8fbf0024 	lw	ra,36(sp)
 970:	3c040000 	lui	a0,0x0
 974:	904503dc 	lbu	a1,988(v0)
 978:	afa2002c 	sw	v0,44(sp)
 97c:	0c000000 	jal	0 <EnKakasi_Destroy>
 980:	24840068 	addiu	a0,a0,104
 984:	8fa2002c 	lw	v0,44(sp)
 988:	904f03dc 	lbu	t7,988(v0)
 98c:	55e0002a 	bnezl	t7,a38 <func_80A8FAA4+0x104>
 990:	8fbf0024 	lw	ra,36(sp)
 994:	92180194 	lbu	t8,404(s0)
 998:	24094078 	li	t1,16504
 99c:	240a0005 	li	t2,5
 9a0:	1300000b 	beqz	t8,9d0 <func_80A8FAA4+0x9c>
 9a4:	02202025 	move	a0,s1
 9a8:	24194077 	li	t9,16503
 9ac:	24080005 	li	t0,5
 9b0:	a619010e 	sh	t9,270(s0)
 9b4:	a6080196 	sh	t0,406(s0)
 9b8:	3325ffff 	andi	a1,t9,0xffff
 9bc:	02202025 	move	a0,s1
 9c0:	0c000000 	jal	0 <EnKakasi_Destroy>
 9c4:	00003025 	move	a2,zero
 9c8:	10000006 	b	9e4 <func_80A8FAA4+0xb0>
 9cc:	00000000 	nop
 9d0:	a609010e 	sh	t1,270(s0)
 9d4:	a60a0196 	sh	t2,406(s0)
 9d8:	3125ffff 	andi	a1,t1,0xffff
 9dc:	0c000000 	jal	0 <EnKakasi_Destroy>
 9e0:	00003025 	move	a2,zero
 9e4:	3c0b0000 	lui	t3,0x0
 9e8:	256b0000 	addiu	t3,t3,0
 9ec:	ae0b014c 	sw	t3,332(s0)
 9f0:	02202025 	move	a0,s1
 9f4:	0c000000 	jal	0 <EnKakasi_Destroy>
 9f8:	86050208 	lh	a1,520(s0)
 9fc:	240cffff 	li	t4,-1
 a00:	a60c0208 	sh	t4,520(s0)
 a04:	afa00010 	sw	zero,16(sp)
 a08:	02202025 	move	a0,s1
 a0c:	240508d4 	li	a1,2260
 a10:	2406ff9d 	li	a2,-99
 a14:	0c000000 	jal	0 <EnKakasi_Destroy>
 a18:	02003825 	move	a3,s0
 a1c:	a6020208 	sh	v0,520(s0)
 a20:	860d0208 	lh	t5,520(s0)
 a24:	000d7080 	sll	t6,t5,0x2
 a28:	022e7821 	addu	t7,s1,t6
 a2c:	0c000000 	jal	0 <EnKakasi_Destroy>
 a30:	8de40790 	lw	a0,1936(t7)
 a34:	8fbf0024 	lw	ra,36(sp)
 a38:	8fb0001c 	lw	s0,28(sp)
 a3c:	8fb10020 	lw	s1,32(sp)
 a40:	03e00008 	jr	ra
 a44:	27bd0030 	addiu	sp,sp,48

00000a48 <func_80A8FBB8>:
 a48:	27bdffe0 	addiu	sp,sp,-32
 a4c:	afbf001c 	sw	ra,28(sp)
 a50:	afb10018 	sw	s1,24(sp)
 a54:	afb00014 	sw	s0,20(sp)
 a58:	00a08025 	move	s0,a1
 a5c:	0c000000 	jal	0 <EnKakasi_Destroy>
 a60:	00808825 	move	s1,a0
 a64:	0c000000 	jal	0 <EnKakasi_Destroy>
 a68:	26240150 	addiu	a0,s1,336
 a6c:	0c000000 	jal	0 <EnKakasi_Destroy>
 a70:	260420d8 	addiu	a0,s0,8408
 a74:	862e0196 	lh	t6,406(s1)
 a78:	55c20014 	bnel	t6,v0,acc <func_80A8FBB8+0x84>
 a7c:	8fbf001c 	lw	ra,28(sp)
 a80:	0c000000 	jal	0 <EnKakasi_Destroy>
 a84:	02002025 	move	a0,s0
 a88:	50400010 	beqzl	v0,acc <func_80A8FBB8+0x84>
 a8c:	8fbf001c 	lw	ra,28(sp)
 a90:	862f0208 	lh	t7,520(s1)
 a94:	000fc080 	sll	t8,t7,0x2
 a98:	0218c821 	addu	t9,s0,t8
 a9c:	0c000000 	jal	0 <EnKakasi_Destroy>
 aa0:	8f240790 	lw	a0,1936(t9)
 aa4:	0c000000 	jal	0 <EnKakasi_Destroy>
 aa8:	02002025 	move	a0,s0
 aac:	02002025 	move	a0,s0
 ab0:	00002825 	move	a1,zero
 ab4:	0c000000 	jal	0 <EnKakasi_Destroy>
 ab8:	24060007 	li	a2,7
 abc:	3c080000 	lui	t0,0x0
 ac0:	25080000 	addiu	t0,t0,0
 ac4:	ae28014c 	sw	t0,332(s1)
 ac8:	8fbf001c 	lw	ra,28(sp)
 acc:	8fb00014 	lw	s0,20(sp)
 ad0:	8fb10018 	lw	s1,24(sp)
 ad4:	03e00008 	jr	ra
 ad8:	27bd0020 	addiu	sp,sp,32

00000adc <EnKakasi_Update>:
 adc:	27bdffc8 	addiu	sp,sp,-56
 ae0:	afbf0024 	sw	ra,36(sp)
 ae4:	afb00020 	sw	s0,32(sp)
 ae8:	afa5003c 	sw	a1,60(sp)
 aec:	889900b4 	lwl	t9,180(a0)
 af0:	989900b7 	lwr	t9,183(a0)
 af4:	848e0198 	lh	t6,408(a0)
 af8:	00808025 	move	s0,a0
 afc:	a8990030 	swl	t9,48(a0)
 b00:	b8990033 	swr	t9,51(a0)
 b04:	949900b8 	lhu	t9,184(a0)
 b08:	25cf0001 	addiu	t7,t6,1
 b0c:	a48f0198 	sh	t7,408(a0)
 b10:	24050008 	li	a1,8
 b14:	00001825 	move	v1,zero
 b18:	00801025 	move	v0,a0
 b1c:	a4990034 	sh	t9,52(a0)
 b20:	8444019c 	lh	a0,412(v0)
 b24:	24630002 	addiu	v1,v1,2
 b28:	10800002 	beqz	a0,b34 <EnKakasi_Update+0x58>
 b2c:	2488ffff 	addiu	t0,a0,-1
 b30:	a448019c 	sh	t0,412(v0)
 b34:	1465fffa 	bne	v1,a1,b20 <EnKakasi_Update+0x44>
 b38:	24420002 	addiu	v0,v0,2
 b3c:	3c014270 	lui	at,0x4270
 b40:	44810000 	mtc1	at,$f0
 b44:	02002025 	move	a0,s0
 b48:	44050000 	mfc1	a1,$f0
 b4c:	0c000000 	jal	0 <EnKakasi_Destroy>
 b50:	e60001b4 	swc1	$f0,436(s0)
 b54:	8e19014c 	lw	t9,332(s0)
 b58:	02002025 	move	a0,s0
 b5c:	8fa5003c 	lw	a1,60(sp)
 b60:	0320f809 	jalr	t9
 b64:	00000000 	nop
 b68:	0c000000 	jal	0 <EnKakasi_Destroy>
 b6c:	02002025 	move	a0,s0
 b70:	3c014248 	lui	at,0x4248
 b74:	44810000 	mtc1	at,$f0
 b78:	3c0142c8 	lui	at,0x42c8
 b7c:	44812000 	mtc1	at,$f4
 b80:	2409001c 	li	t1,28
 b84:	44060000 	mfc1	a2,$f0
 b88:	44070000 	mfc1	a3,$f0
 b8c:	afa90014 	sw	t1,20(sp)
 b90:	8fa4003c 	lw	a0,60(sp)
 b94:	02002825 	move	a1,s0
 b98:	0c000000 	jal	0 <EnKakasi_Destroy>
 b9c:	e7a40010 	swc1	$f4,16(sp)
 ba0:	260601bc 	addiu	a2,s0,444
 ba4:	00c02825 	move	a1,a2
 ba8:	afa60028 	sw	a2,40(sp)
 bac:	0c000000 	jal	0 <EnKakasi_Destroy>
 bb0:	02002025 	move	a0,s0
 bb4:	8fa4003c 	lw	a0,60(sp)
 bb8:	3c010001 	lui	at,0x1
 bbc:	34211e60 	ori	at,at,0x1e60
 bc0:	8fa60028 	lw	a2,40(sp)
 bc4:	0c000000 	jal	0 <EnKakasi_Destroy>
 bc8:	00812821 	addu	a1,a0,at
 bcc:	8fbf0024 	lw	ra,36(sp)
 bd0:	8fb00020 	lw	s0,32(sp)
 bd4:	27bd0038 	addiu	sp,sp,56
 bd8:	03e00008 	jr	ra
 bdc:	00000000 	nop

00000be0 <EnKakasi_Draw>:
 be0:	27bdffd8 	addiu	sp,sp,-40
 be4:	3c0e0000 	lui	t6,0x0
 be8:	8dce0000 	lw	t6,0(t6)
 bec:	afbf0024 	sw	ra,36(sp)
 bf0:	afa40028 	sw	a0,40(sp)
 bf4:	afa5002c 	sw	a1,44(sp)
 bf8:	85cf12da 	lh	t7,4826(t6)
 bfc:	3c040000 	lui	a0,0x0
 c00:	51e00009 	beqzl	t7,c28 <EnKakasi_Draw+0x48>
 c04:	8fb8002c 	lw	t8,44(sp)
 c08:	0c000000 	jal	0 <EnKakasi_Destroy>
 c0c:	24840088 	addiu	a0,a0,136
 c10:	3c040000 	lui	a0,0x0
 c14:	3c050000 	lui	a1,0x0
 c18:	90a50f40 	lbu	a1,3904(a1)
 c1c:	0c000000 	jal	0 <EnKakasi_Destroy>
 c20:	2484008c 	addiu	a0,a0,140
 c24:	8fb8002c 	lw	t8,44(sp)
 c28:	0c000000 	jal	0 <EnKakasi_Destroy>
 c2c:	8f040000 	lw	a0,0(t8)
 c30:	8fa20028 	lw	v0,40(sp)
 c34:	8fa4002c 	lw	a0,44(sp)
 c38:	8c450154 	lw	a1,340(v0)
 c3c:	8c460170 	lw	a2,368(v0)
 c40:	90470152 	lbu	a3,338(v0)
 c44:	afa00014 	sw	zero,20(sp)
 c48:	afa00010 	sw	zero,16(sp)
 c4c:	0c000000 	jal	0 <EnKakasi_Destroy>
 c50:	afa20018 	sw	v0,24(sp)
 c54:	8fbf0024 	lw	ra,36(sp)
 c58:	27bd0028 	addiu	sp,sp,40
 c5c:	03e00008 	jr	ra
 c60:	00000000 	nop
	...
