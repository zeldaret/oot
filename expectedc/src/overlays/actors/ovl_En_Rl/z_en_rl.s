
build/src/overlays/actors/ovl_En_Rl/z_en_rl.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnRl_Destroy>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	0c000000 	jal	0 <EnRl_Destroy>
   c:	2484014c 	addiu	a0,a0,332
  10:	8fbf0014 	lw	ra,20(sp)
  14:	27bd0018 	addiu	sp,sp,24
  18:	03e00008 	jr	ra
  1c:	00000000 	nop

00000020 <func_80AE72D0>:
  20:	27bdffc8 	addiu	sp,sp,-56
  24:	afbf0014 	sw	ra,20(sp)
  28:	848e0192 	lh	t6,402(a0)
  2c:	00803025 	move	a2,a0
  30:	24c30192 	addiu	v1,a2,402
  34:	15c00003 	bnez	t6,44 <func_80AE72D0+0x24>
  38:	00001025 	move	v0,zero
  3c:	10000005 	b	54 <func_80AE72D0+0x34>
  40:	24830192 	addiu	v1,a0,402
  44:	846f0000 	lh	t7,0(v1)
  48:	25f8ffff 	addiu	t8,t7,-1
  4c:	a4780000 	sh	t8,0(v1)
  50:	84620000 	lh	v0,0(v1)
  54:	14400008 	bnez	v0,78 <func_80AE72D0+0x58>
  58:	2404003c 	li	a0,60
  5c:	2405003c 	li	a1,60
  60:	afa3001c 	sw	v1,28(sp)
  64:	0c000000 	jal	0 <EnRl_Destroy>
  68:	afa60038 	sw	a2,56(sp)
  6c:	8fa3001c 	lw	v1,28(sp)
  70:	8fa60038 	lw	a2,56(sp)
  74:	a4620000 	sh	v0,0(v1)
  78:	84790000 	lh	t9,0(v1)
  7c:	24c20190 	addiu	v0,a2,400
  80:	a4590000 	sh	t9,0(v0)
  84:	84480000 	lh	t0,0(v0)
  88:	29010003 	slti	at,t0,3
  8c:	54200003 	bnezl	at,9c <func_80AE72D0+0x7c>
  90:	8fbf0014 	lw	ra,20(sp)
  94:	a4400000 	sh	zero,0(v0)
  98:	8fbf0014 	lw	ra,20(sp)
  9c:	27bd0038 	addiu	sp,sp,56
  a0:	03e00008 	jr	ra
  a4:	00000000 	nop

000000a8 <func_80AE7358>:
  a8:	27bdffd0 	addiu	sp,sp,-48
  ac:	afb00028 	sw	s0,40(sp)
  b0:	00808025 	move	s0,a0
  b4:	afbf002c 	sw	ra,44(sp)
  b8:	3c040000 	lui	a0,0x0
  bc:	0c000000 	jal	0 <EnRl_Destroy>
  c0:	24840000 	addiu	a0,a0,0
  c4:	44822000 	mtc1	v0,$f4
  c8:	44800000 	mtc1	zero,$f0
  cc:	3c050000 	lui	a1,0x0
  d0:	468021a0 	cvt.s.w	$f6,$f4
  d4:	44070000 	mfc1	a3,$f0
  d8:	24a50000 	addiu	a1,a1,0
  dc:	2604014c 	addiu	a0,s0,332
  e0:	3c063f80 	lui	a2,0x3f80
  e4:	afa00014 	sw	zero,20(sp)
  e8:	e7a60010 	swc1	$f6,16(sp)
  ec:	0c000000 	jal	0 <EnRl_Destroy>
  f0:	e7a00018 	swc1	$f0,24(sp)
  f4:	44804000 	mtc1	zero,$f8
  f8:	240e0004 	li	t6,4
  fc:	ae0e0194 	sw	t6,404(s0)
 100:	ae000198 	sw	zero,408(s0)
 104:	ae0001a0 	sw	zero,416(s0)
 108:	ae0001a4 	sw	zero,420(s0)
 10c:	a20000c8 	sb	zero,200(s0)
 110:	e608019c 	swc1	$f8,412(s0)
 114:	8fbf002c 	lw	ra,44(sp)
 118:	8fb00028 	lw	s0,40(sp)
 11c:	27bd0030 	addiu	sp,sp,48
 120:	03e00008 	jr	ra
 124:	00000000 	nop

00000128 <func_80AE73D8>:
 128:	27bdffe8 	addiu	sp,sp,-24
 12c:	afbf0014 	sw	ra,20(sp)
 130:	90ae1d6c 	lbu	t6,7532(a1)
 134:	3c0f0000 	lui	t7,0x0
 138:	3c190000 	lui	t9,0x0
 13c:	15c0000d 	bnez	t6,174 <func_80AE73D8+0x4c>
 140:	00000000 	nop
 144:	8def000c 	lw	t7,12(t7)
 148:	51e00011 	beqzl	t7,190 <func_80AE73D8+0x68>
 14c:	8fbf0014 	lw	ra,20(sp)
 150:	8498001c 	lh	t8,28(a0)
 154:	24010002 	li	at,2
 158:	17010003 	bne	t8,at,168 <func_80AE73D8+0x40>
 15c:	00000000 	nop
 160:	0c000000 	jal	0 <EnRl_Destroy>
 164:	00000000 	nop
 168:	3c010000 	lui	at,0x0
 16c:	10000007 	b	18c <func_80AE73D8+0x64>
 170:	ac20000c 	sw	zero,12(at)
 174:	8f39000c 	lw	t9,12(t9)
 178:	24080001 	li	t0,1
 17c:	3c010000 	lui	at,0x0
 180:	57200003 	bnezl	t9,190 <func_80AE73D8+0x68>
 184:	8fbf0014 	lw	ra,20(sp)
 188:	ac28000c 	sw	t0,12(at)
 18c:	8fbf0014 	lw	ra,20(sp)
 190:	27bd0018 	addiu	sp,sp,24
 194:	03e00008 	jr	ra
 198:	00000000 	nop

0000019c <func_80AE744C>:
 19c:	27bdffe0 	addiu	sp,sp,-32
 1a0:	3c0141f0 	lui	at,0x41f0
 1a4:	44810000 	mtc1	at,$f0
 1a8:	afa50024 	sw	a1,36(sp)
 1ac:	00802825 	move	a1,a0
 1b0:	afbf001c 	sw	ra,28(sp)
 1b4:	afa40020 	sw	a0,32(sp)
 1b8:	240e0005 	li	t6,5
 1bc:	44070000 	mfc1	a3,$f0
 1c0:	afae0014 	sw	t6,20(sp)
 1c4:	8fa40024 	lw	a0,36(sp)
 1c8:	3c064296 	lui	a2,0x4296
 1cc:	0c000000 	jal	0 <EnRl_Destroy>
 1d0:	e7a00010 	swc1	$f0,16(sp)
 1d4:	8fbf001c 	lw	ra,28(sp)
 1d8:	27bd0020 	addiu	sp,sp,32
 1dc:	03e00008 	jr	ra
 1e0:	00000000 	nop

000001e4 <func_80AE7494>:
 1e4:	27bdffe8 	addiu	sp,sp,-24
 1e8:	afbf0014 	sw	ra,20(sp)
 1ec:	0c000000 	jal	0 <EnRl_Destroy>
 1f0:	2484014c 	addiu	a0,a0,332
 1f4:	8fbf0014 	lw	ra,20(sp)
 1f8:	27bd0018 	addiu	sp,sp,24
 1fc:	03e00008 	jr	ra
 200:	00000000 	nop

00000204 <func_80AE74B4>:
 204:	afa40000 	sw	a0,0(sp)
 208:	afa60008 	sw	a2,8(sp)
 20c:	90ae1d6c 	lbu	t6,7532(a1)
 210:	00077880 	sll	t7,a3,0x2
 214:	30c6ffff 	andi	a2,a2,0xffff
 218:	11c00009 	beqz	t6,240 <func_80AE74B4+0x3c>
 21c:	00afc021 	addu	t8,a1,t7
 220:	8f021d8c 	lw	v0,7564(t8)
 224:	50400007 	beqzl	v0,244 <func_80AE74B4+0x40>
 228:	00001025 	move	v0,zero
 22c:	94590000 	lhu	t9,0(v0)
 230:	54d90004 	bnel	a2,t9,244 <func_80AE74B4+0x40>
 234:	00001025 	move	v0,zero
 238:	03e00008 	jr	ra
 23c:	24020001 	li	v0,1
 240:	00001025 	move	v0,zero
 244:	03e00008 	jr	ra
 248:	00000000 	nop

0000024c <func_80AE74FC>:
 24c:	afa40000 	sw	a0,0(sp)
 250:	afa60008 	sw	a2,8(sp)
 254:	90ae1d6c 	lbu	t6,7532(a1)
 258:	00077880 	sll	t7,a3,0x2
 25c:	30c6ffff 	andi	a2,a2,0xffff
 260:	11c00009 	beqz	t6,288 <func_80AE74FC+0x3c>
 264:	00afc021 	addu	t8,a1,t7
 268:	8f021d8c 	lw	v0,7564(t8)
 26c:	50400007 	beqzl	v0,28c <func_80AE74FC+0x40>
 270:	00001025 	move	v0,zero
 274:	94590000 	lhu	t9,0(v0)
 278:	50d90004 	beql	a2,t9,28c <func_80AE74FC+0x40>
 27c:	00001025 	move	v0,zero
 280:	03e00008 	jr	ra
 284:	24020001 	li	v0,1
 288:	00001025 	move	v0,zero
 28c:	03e00008 	jr	ra
 290:	00000000 	nop

00000294 <func_80AE7544>:
 294:	27bdffd8 	addiu	sp,sp,-40
 298:	afa40028 	sw	a0,40(sp)
 29c:	afa5002c 	sw	a1,44(sp)
 2a0:	00a02025 	move	a0,a1
 2a4:	8fa50028 	lw	a1,40(sp)
 2a8:	afbf0024 	sw	ra,36(sp)
 2ac:	3c060000 	lui	a2,0x0
 2b0:	3c070000 	lui	a3,0x0
 2b4:	24e70000 	addiu	a3,a3,0
 2b8:	24c60000 	addiu	a2,a2,0
 2bc:	afa00010 	sw	zero,16(sp)
 2c0:	afa00014 	sw	zero,20(sp)
 2c4:	afa00018 	sw	zero,24(sp)
 2c8:	0c000000 	jal	0 <EnRl_Destroy>
 2cc:	24a5014c 	addiu	a1,a1,332
 2d0:	8fbf0024 	lw	ra,36(sp)
 2d4:	27bd0028 	addiu	sp,sp,40
 2d8:	03e00008 	jr	ra
 2dc:	00000000 	nop

000002e0 <func_80AE7590>:
 2e0:	27bdffc8 	addiu	sp,sp,-56
 2e4:	3c0e0000 	lui	t6,0x0
 2e8:	8dce1360 	lw	t6,4960(t6)
 2ec:	afbf0034 	sw	ra,52(sp)
 2f0:	afb00030 	sw	s0,48(sp)
 2f4:	afa40038 	sw	a0,56(sp)
 2f8:	24010004 	li	at,4
 2fc:	00a08025 	move	s0,a1
 300:	15c10028 	bne	t6,at,3a4 <func_80AE7590+0xc4>
 304:	84a200a4 	lh	v0,164(a1)
 308:	24010044 	li	at,68
 30c:	54410026 	bnel	v0,at,3a8 <func_80AE7590+0xc8>
 310:	8fbf0034 	lw	ra,52(sp)
 314:	90af1d6c 	lbu	t7,7532(a1)
 318:	51e00023 	beqzl	t7,3a8 <func_80AE7590+0xc8>
 31c:	8fbf0034 	lw	ra,52(sp)
 320:	8ca21da4 	lw	v0,7588(a1)
 324:	50400020 	beqzl	v0,3a8 <func_80AE7590+0xc8>
 328:	8fbf0034 	lw	ra,52(sp)
 32c:	94580000 	lhu	t8,0(v0)
 330:	24010002 	li	at,2
 334:	5701001c 	bnel	t8,at,3a8 <func_80AE7590+0xc8>
 338:	8fbf0034 	lw	ra,52(sp)
 33c:	8c8801a8 	lw	t0,424(a0)
 340:	3c0142a0 	lui	at,0x42a0
 344:	24a41c24 	addiu	a0,a1,7204
 348:	15000016 	bnez	t0,3a4 <func_80AE7590+0xc4>
 34c:	2406008b 	li	a2,139
 350:	8ca21c44 	lw	v0,7236(a1)
 354:	44813000 	mtc1	at,$f6
 358:	2409000e 	li	t1,14
 35c:	c4400024 	lwc1	$f0,36(v0)
 360:	c4440028 	lwc1	$f4,40(v0)
 364:	c44c002c 	lwc1	$f12,44(v0)
 368:	44070000 	mfc1	a3,$f0
 36c:	46062080 	add.s	$f2,$f4,$f6
 370:	afa90024 	sw	t1,36(sp)
 374:	afa00020 	sw	zero,32(sp)
 378:	afa0001c 	sw	zero,28(sp)
 37c:	e7a20010 	swc1	$f2,16(sp)
 380:	afa00018 	sw	zero,24(sp)
 384:	0c000000 	jal	0 <EnRl_Destroy>
 388:	e7ac0014 	swc1	$f12,20(sp)
 38c:	02002025 	move	a0,s0
 390:	0c000000 	jal	0 <EnRl_Destroy>
 394:	2405006b 	li	a1,107
 398:	8fab0038 	lw	t3,56(sp)
 39c:	240a0001 	li	t2,1
 3a0:	ad6a01a8 	sw	t2,424(t3)
 3a4:	8fbf0034 	lw	ra,52(sp)
 3a8:	8fb00030 	lw	s0,48(sp)
 3ac:	27bd0038 	addiu	sp,sp,56
 3b0:	03e00008 	jr	ra
 3b4:	00000000 	nop

000003b8 <func_80AE7668>:
 3b8:	84830032 	lh	v1,50(a0)
 3bc:	8ca21c44 	lw	v0,7236(a1)
 3c0:	34018000 	li	at,0x8000
 3c4:	24060001 	li	a2,1
 3c8:	00611821 	addu	v1,v1,at
 3cc:	00031c00 	sll	v1,v1,0x10
 3d0:	ac860198 	sw	a2,408(a0)
 3d4:	ac860194 	sw	a2,404(a0)
 3d8:	00031c03 	sra	v1,v1,0x10
 3dc:	a44300b6 	sh	v1,182(v0)
 3e0:	03e00008 	jr	ra
 3e4:	a4430032 	sh	v1,50(v0)

000003e8 <func_80AE7698>:
 3e8:	27bdffd8 	addiu	sp,sp,-40
 3ec:	afbf0024 	sw	ra,36(sp)
 3f0:	afa40028 	sw	a0,40(sp)
 3f4:	90ae1d6c 	lbu	t6,7532(a1)
 3f8:	51c0001d 	beqzl	t6,470 <func_80AE7698+0x88>
 3fc:	8fbf0024 	lw	ra,36(sp)
 400:	8ca21d8c 	lw	v0,7564(a1)
 404:	5040001a 	beqzl	v0,470 <func_80AE7698+0x88>
 408:	8fbf0024 	lw	ra,36(sp)
 40c:	944f0000 	lhu	t7,0(v0)
 410:	24010003 	li	at,3
 414:	3c040000 	lui	a0,0x0
 418:	55e10015 	bnel	t7,at,470 <func_80AE7698+0x88>
 41c:	8fbf0024 	lw	ra,36(sp)
 420:	0c000000 	jal	0 <EnRl_Destroy>
 424:	24840000 	addiu	a0,a0,0
 428:	44822000 	mtc1	v0,$f4
 42c:	44800000 	mtc1	zero,$f0
 430:	8fa40028 	lw	a0,40(sp)
 434:	468021a0 	cvt.s.w	$f6,$f4
 438:	3c050000 	lui	a1,0x0
 43c:	24180002 	li	t8,2
 440:	44070000 	mfc1	a3,$f0
 444:	afb80014 	sw	t8,20(sp)
 448:	24a50000 	addiu	a1,a1,0
 44c:	e7a60010 	swc1	$f6,16(sp)
 450:	3c063f80 	lui	a2,0x3f80
 454:	2484014c 	addiu	a0,a0,332
 458:	0c000000 	jal	0 <EnRl_Destroy>
 45c:	e7a00018 	swc1	$f0,24(sp)
 460:	8fa80028 	lw	t0,40(sp)
 464:	24190002 	li	t9,2
 468:	ad190194 	sw	t9,404(t0)
 46c:	8fbf0024 	lw	ra,36(sp)
 470:	27bd0028 	addiu	sp,sp,40
 474:	03e00008 	jr	ra
 478:	00000000 	nop

0000047c <func_80AE772C>:
 47c:	27bdffd8 	addiu	sp,sp,-40
 480:	afbf0024 	sw	ra,36(sp)
 484:	10a00014 	beqz	a1,4d8 <func_80AE772C+0x5c>
 488:	afa40028 	sw	a0,40(sp)
 48c:	3c040000 	lui	a0,0x0
 490:	0c000000 	jal	0 <EnRl_Destroy>
 494:	24840000 	addiu	a0,a0,0
 498:	44822000 	mtc1	v0,$f4
 49c:	44800000 	mtc1	zero,$f0
 4a0:	8fa40028 	lw	a0,40(sp)
 4a4:	468021a0 	cvt.s.w	$f6,$f4
 4a8:	3c050000 	lui	a1,0x0
 4ac:	44070000 	mfc1	a3,$f0
 4b0:	24a50000 	addiu	a1,a1,0
 4b4:	3c063f80 	lui	a2,0x3f80
 4b8:	afa00014 	sw	zero,20(sp)
 4bc:	e7a60010 	swc1	$f6,16(sp)
 4c0:	2484014c 	addiu	a0,a0,332
 4c4:	0c000000 	jal	0 <EnRl_Destroy>
 4c8:	e7a00018 	swc1	$f0,24(sp)
 4cc:	8faf0028 	lw	t7,40(sp)
 4d0:	240e0003 	li	t6,3
 4d4:	adee0194 	sw	t6,404(t7)
 4d8:	8fbf0024 	lw	ra,36(sp)
 4dc:	27bd0028 	addiu	sp,sp,40
 4e0:	03e00008 	jr	ra
 4e4:	00000000 	nop

000004e8 <func_80AE7798>:
 4e8:	27bdffe8 	addiu	sp,sp,-24
 4ec:	afbf0014 	sw	ra,20(sp)
 4f0:	0c000000 	jal	0 <EnRl_Destroy>
 4f4:	00000000 	nop
 4f8:	8fbf0014 	lw	ra,20(sp)
 4fc:	27bd0018 	addiu	sp,sp,24
 500:	03e00008 	jr	ra
 504:	00000000 	nop

00000508 <func_80AE77B8>:
 508:	27bdffe8 	addiu	sp,sp,-24
 50c:	afbf0014 	sw	ra,20(sp)
 510:	afa40018 	sw	a0,24(sp)
 514:	0c000000 	jal	0 <EnRl_Destroy>
 518:	afa5001c 	sw	a1,28(sp)
 51c:	0c000000 	jal	0 <EnRl_Destroy>
 520:	8fa40018 	lw	a0,24(sp)
 524:	0c000000 	jal	0 <EnRl_Destroy>
 528:	8fa40018 	lw	a0,24(sp)
 52c:	8fa40018 	lw	a0,24(sp)
 530:	0c000000 	jal	0 <EnRl_Destroy>
 534:	8fa5001c 	lw	a1,28(sp)
 538:	8fbf0014 	lw	ra,20(sp)
 53c:	27bd0018 	addiu	sp,sp,24
 540:	03e00008 	jr	ra
 544:	00000000 	nop

00000548 <func_80AE77F8>:
 548:	27bdffe0 	addiu	sp,sp,-32
 54c:	afbf0014 	sw	ra,20(sp)
 550:	0c000000 	jal	0 <EnRl_Destroy>
 554:	afa40020 	sw	a0,32(sp)
 558:	0c000000 	jal	0 <EnRl_Destroy>
 55c:	8fa40020 	lw	a0,32(sp)
 560:	afa2001c 	sw	v0,28(sp)
 564:	0c000000 	jal	0 <EnRl_Destroy>
 568:	8fa40020 	lw	a0,32(sp)
 56c:	8fa40020 	lw	a0,32(sp)
 570:	0c000000 	jal	0 <EnRl_Destroy>
 574:	8fa5001c 	lw	a1,28(sp)
 578:	8fbf0014 	lw	ra,20(sp)
 57c:	27bd0020 	addiu	sp,sp,32
 580:	03e00008 	jr	ra
 584:	00000000 	nop

00000588 <func_80AE7838>:
 588:	27bdffe8 	addiu	sp,sp,-24
 58c:	afbf0014 	sw	ra,20(sp)
 590:	afa40018 	sw	a0,24(sp)
 594:	0c000000 	jal	0 <EnRl_Destroy>
 598:	afa5001c 	sw	a1,28(sp)
 59c:	0c000000 	jal	0 <EnRl_Destroy>
 5a0:	8fa40018 	lw	a0,24(sp)
 5a4:	0c000000 	jal	0 <EnRl_Destroy>
 5a8:	8fa40018 	lw	a0,24(sp)
 5ac:	8fa40018 	lw	a0,24(sp)
 5b0:	0c000000 	jal	0 <EnRl_Destroy>
 5b4:	8fa5001c 	lw	a1,28(sp)
 5b8:	8fbf0014 	lw	ra,20(sp)
 5bc:	27bd0018 	addiu	sp,sp,24
 5c0:	03e00008 	jr	ra
 5c4:	00000000 	nop

000005c8 <func_80AE7878>:
 5c8:	27bdffd8 	addiu	sp,sp,-40
 5cc:	afa40028 	sw	a0,40(sp)
 5d0:	afa5002c 	sw	a1,44(sp)
 5d4:	00a02025 	move	a0,a1
 5d8:	8fa50028 	lw	a1,40(sp)
 5dc:	afbf0024 	sw	ra,36(sp)
 5e0:	3c060000 	lui	a2,0x0
 5e4:	3c070000 	lui	a3,0x0
 5e8:	24e70000 	addiu	a3,a3,0
 5ec:	24c60000 	addiu	a2,a2,0
 5f0:	afa00010 	sw	zero,16(sp)
 5f4:	afa00014 	sw	zero,20(sp)
 5f8:	afa00018 	sw	zero,24(sp)
 5fc:	0c000000 	jal	0 <EnRl_Destroy>
 600:	24a5014c 	addiu	a1,a1,332
 604:	8fa20028 	lw	v0,40(sp)
 608:	240e0004 	li	t6,4
 60c:	ac4e0194 	sw	t6,404(v0)
 610:	a04000c8 	sb	zero,200(v0)
 614:	8fbf0024 	lw	ra,36(sp)
 618:	27bd0028 	addiu	sp,sp,40
 61c:	03e00008 	jr	ra
 620:	00000000 	nop

00000624 <func_80AE78D4>:
 624:	27bdffc8 	addiu	sp,sp,-56
 628:	00a03025 	move	a2,a1
 62c:	00802825 	move	a1,a0
 630:	afbf0034 	sw	ra,52(sp)
 634:	afa40038 	sw	a0,56(sp)
 638:	c4a40024 	lwc1	$f4,36(a1)
 63c:	3c0e0000 	lui	t6,0x0
 640:	8dce0000 	lw	t6,0(t6)
 644:	e7a40010 	swc1	$f4,16(sp)
 648:	3c0141b0 	lui	at,0x41b0
 64c:	85cf1478 	lh	t7,5240(t6)
 650:	44815000 	mtc1	at,$f10
 654:	c4b20028 	lwc1	$f18,40(a1)
 658:	448f3000 	mtc1	t7,$f6
 65c:	24180005 	li	t8,5
 660:	24c41c24 	addiu	a0,a2,7204
 664:	46803220 	cvt.s.w	$f8,$f6
 668:	240700f5 	li	a3,245
 66c:	460a4400 	add.s	$f16,$f8,$f10
 670:	46128100 	add.s	$f4,$f16,$f18
 674:	e7a40014 	swc1	$f4,20(sp)
 678:	c4a6002c 	lwc1	$f6,44(a1)
 67c:	afb80028 	sw	t8,40(sp)
 680:	afa00024 	sw	zero,36(sp)
 684:	afa00020 	sw	zero,32(sp)
 688:	afa0001c 	sw	zero,28(sp)
 68c:	0c000000 	jal	0 <EnRl_Destroy>
 690:	e7a60018 	swc1	$f6,24(sp)
 694:	8fbf0034 	lw	ra,52(sp)
 698:	27bd0038 	addiu	sp,sp,56
 69c:	03e00008 	jr	ra
 6a0:	00000000 	nop

000006a4 <func_80AE7954>:
 6a4:	27bdffe8 	addiu	sp,sp,-24
 6a8:	afbf0014 	sw	ra,20(sp)
 6ac:	afa40018 	sw	a0,24(sp)
 6b0:	24060004 	li	a2,4
 6b4:	0c000000 	jal	0 <EnRl_Destroy>
 6b8:	00003825 	move	a3,zero
 6bc:	10400009 	beqz	v0,6e4 <func_80AE7954+0x40>
 6c0:	8fa40018 	lw	a0,24(sp)
 6c4:	44802000 	mtc1	zero,$f4
 6c8:	240e0005 	li	t6,5
 6cc:	240f0002 	li	t7,2
 6d0:	ac8e0194 	sw	t6,404(a0)
 6d4:	ac8f0198 	sw	t7,408(a0)
 6d8:	ac8001a0 	sw	zero,416(a0)
 6dc:	a08000c8 	sb	zero,200(a0)
 6e0:	e484019c 	swc1	$f4,412(a0)
 6e4:	8fbf0014 	lw	ra,20(sp)
 6e8:	27bd0018 	addiu	sp,sp,24
 6ec:	03e00008 	jr	ra
 6f0:	00000000 	nop

000006f4 <func_80AE79A4>:
 6f4:	27bdffe8 	addiu	sp,sp,-24
 6f8:	afbf0014 	sw	ra,20(sp)
 6fc:	afa40018 	sw	a0,24(sp)
 700:	24060004 	li	a2,4
 704:	0c000000 	jal	0 <EnRl_Destroy>
 708:	00003825 	move	a3,zero
 70c:	10400025 	beqz	v0,7a4 <func_80AE79A4+0xb0>
 710:	8fa40018 	lw	a0,24(sp)
 714:	3c014120 	lui	at,0x4120
 718:	44811000 	mtc1	at,$f2
 71c:	3c013f80 	lui	at,0x3f80
 720:	2482019c 	addiu	v0,a0,412
 724:	c4440000 	lwc1	$f4,0(v0)
 728:	44813000 	mtc1	at,$f6
 72c:	3c050000 	lui	a1,0x0
 730:	24a50000 	addiu	a1,a1,0
 734:	46062200 	add.s	$f8,$f4,$f6
 738:	24180007 	li	t8,7
 73c:	24190001 	li	t9,1
 740:	e4480000 	swc1	$f8,0(v0)
 744:	8cae0000 	lw	t6,0(a1)
 748:	c4400000 	lwc1	$f0,0(v0)
 74c:	85cf145e 	lh	t7,5214(t6)
 750:	448f5000 	mtc1	t7,$f10
 754:	00000000 	nop
 758:	46805420 	cvt.s.w	$f16,$f10
 75c:	46028480 	add.s	$f18,$f16,$f2
 760:	4600903e 	c.le.s	$f18,$f0
 764:	00000000 	nop
 768:	45000020 	bc1f	7ec <func_80AE79A4+0xf8>
 76c:	00000000 	nop
 770:	ac980194 	sw	t8,404(a0)
 774:	ac990198 	sw	t9,408(a0)
 778:	8ca80000 	lw	t0,0(a1)
 77c:	240300ff 	li	v1,255
 780:	8509145e 	lh	t1,5214(t0)
 784:	44892000 	mtc1	t1,$f4
 788:	00000000 	nop
 78c:	468021a0 	cvt.s.w	$f6,$f4
 790:	46023200 	add.s	$f8,$f6,$f2
 794:	e4480000 	swc1	$f8,0(v0)
 798:	ac8301a0 	sw	v1,416(a0)
 79c:	10000026 	b	838 <func_80AE79A4+0x144>
 7a0:	a08300c8 	sb	v1,200(a0)
 7a4:	2482019c 	addiu	v0,a0,412
 7a8:	3c013f80 	lui	at,0x3f80
 7ac:	44818000 	mtc1	at,$f16
 7b0:	c44a0000 	lwc1	$f10,0(v0)
 7b4:	44801000 	mtc1	zero,$f2
 7b8:	46105481 	sub.s	$f18,$f10,$f16
 7bc:	e4520000 	swc1	$f18,0(v0)
 7c0:	c4400000 	lwc1	$f0,0(v0)
 7c4:	4602003e 	c.le.s	$f0,$f2
 7c8:	00000000 	nop
 7cc:	45000007 	bc1f	7ec <func_80AE79A4+0xf8>
 7d0:	240a0004 	li	t2,4
 7d4:	ac8a0194 	sw	t2,404(a0)
 7d8:	ac800198 	sw	zero,408(a0)
 7dc:	e4420000 	swc1	$f2,0(v0)
 7e0:	ac8001a0 	sw	zero,416(a0)
 7e4:	10000014 	b	838 <func_80AE79A4+0x144>
 7e8:	a08000c8 	sb	zero,200(a0)
 7ec:	3c050000 	lui	a1,0x0
 7f0:	24a50000 	addiu	a1,a1,0
 7f4:	8cab0000 	lw	t3,0(a1)
 7f8:	3c014120 	lui	at,0x4120
 7fc:	44811000 	mtc1	at,$f2
 800:	856c145e 	lh	t4,5214(t3)
 804:	3c01437f 	lui	at,0x437f
 808:	44818000 	mtc1	at,$f16
 80c:	448c2000 	mtc1	t4,$f4
 810:	00000000 	nop
 814:	468021a0 	cvt.s.w	$f6,$f4
 818:	46023200 	add.s	$f8,$f6,$f2
 81c:	46080283 	div.s	$f10,$f0,$f8
 820:	46105482 	mul.s	$f18,$f10,$f16
 824:	4600910d 	trunc.w.s	$f4,$f18
 828:	44022000 	mfc1	v0,$f4
 82c:	00000000 	nop
 830:	ac8201a0 	sw	v0,416(a0)
 834:	a08200c8 	sb	v0,200(a0)
 838:	8fbf0014 	lw	ra,20(sp)
 83c:	27bd0018 	addiu	sp,sp,24
 840:	03e00008 	jr	ra
 844:	00000000 	nop

00000848 <func_80AE7AF8>:
 848:	27bdffd0 	addiu	sp,sp,-48
 84c:	afbf002c 	sw	ra,44(sp)
 850:	afb00028 	sw	s0,40(sp)
 854:	00808025 	move	s0,a0
 858:	afa50034 	sw	a1,52(sp)
 85c:	24060003 	li	a2,3
 860:	0c000000 	jal	0 <EnRl_Destroy>
 864:	00003825 	move	a3,zero
 868:	10400015 	beqz	v0,8c0 <func_80AE7AF8+0x78>
 86c:	02002025 	move	a0,s0
 870:	3c040000 	lui	a0,0x0
 874:	0c000000 	jal	0 <EnRl_Destroy>
 878:	24840000 	addiu	a0,a0,0
 87c:	44822000 	mtc1	v0,$f4
 880:	3c01c100 	lui	at,0xc100
 884:	44814000 	mtc1	at,$f8
 888:	468021a0 	cvt.s.w	$f6,$f4
 88c:	3c050000 	lui	a1,0x0
 890:	240e0002 	li	t6,2
 894:	afae0014 	sw	t6,20(sp)
 898:	24a50000 	addiu	a1,a1,0
 89c:	2604014c 	addiu	a0,s0,332
 8a0:	e7a60010 	swc1	$f6,16(sp)
 8a4:	3c063f80 	lui	a2,0x3f80
 8a8:	24070000 	li	a3,0
 8ac:	0c000000 	jal	0 <EnRl_Destroy>
 8b0:	e7a80018 	swc1	$f8,24(sp)
 8b4:	240f0006 	li	t7,6
 8b8:	1000001e 	b	934 <func_80AE7AF8+0xec>
 8bc:	ae0f0194 	sw	t7,404(s0)
 8c0:	8fa50034 	lw	a1,52(sp)
 8c4:	24060004 	li	a2,4
 8c8:	0c000000 	jal	0 <EnRl_Destroy>
 8cc:	00003825 	move	a3,zero
 8d0:	10400018 	beqz	v0,934 <func_80AE7AF8+0xec>
 8d4:	24180005 	li	t8,5
 8d8:	24190002 	li	t9,2
 8dc:	ae180194 	sw	t8,404(s0)
 8e0:	ae190198 	sw	t9,408(s0)
 8e4:	3c080000 	lui	t0,0x0
 8e8:	8d080000 	lw	t0,0(t0)
 8ec:	3c014120 	lui	at,0x4120
 8f0:	44819000 	mtc1	at,$f18
 8f4:	8509145e 	lh	t1,5214(t0)
 8f8:	8e0b01a4 	lw	t3,420(s0)
 8fc:	240a00ff 	li	t2,255
 900:	44895000 	mtc1	t1,$f10
 904:	ae0a01a0 	sw	t2,416(s0)
 908:	02002025 	move	a0,s0
 90c:	46805420 	cvt.s.w	$f16,$f10
 910:	46128100 	add.s	$f4,$f16,$f18
 914:	15600005 	bnez	t3,92c <func_80AE7AF8+0xe4>
 918:	e604019c 	swc1	$f4,412(s0)
 91c:	0c000000 	jal	0 <EnRl_Destroy>
 920:	8fa50034 	lw	a1,52(sp)
 924:	240c0001 	li	t4,1
 928:	ae0c01a4 	sw	t4,420(s0)
 92c:	240d00ff 	li	t5,255
 930:	a20d00c8 	sb	t5,200(s0)
 934:	8fbf002c 	lw	ra,44(sp)
 938:	8fb00028 	lw	s0,40(sp)
 93c:	27bd0030 	addiu	sp,sp,48
 940:	03e00008 	jr	ra
 944:	00000000 	nop

00000948 <func_80AE7BF8>:
 948:	27bdffd8 	addiu	sp,sp,-40
 94c:	afbf0024 	sw	ra,36(sp)
 950:	10a00014 	beqz	a1,9a4 <func_80AE7BF8+0x5c>
 954:	afa40028 	sw	a0,40(sp)
 958:	3c040000 	lui	a0,0x0
 95c:	0c000000 	jal	0 <EnRl_Destroy>
 960:	24840000 	addiu	a0,a0,0
 964:	44822000 	mtc1	v0,$f4
 968:	44800000 	mtc1	zero,$f0
 96c:	8fa40028 	lw	a0,40(sp)
 970:	468021a0 	cvt.s.w	$f6,$f4
 974:	3c050000 	lui	a1,0x0
 978:	44070000 	mfc1	a3,$f0
 97c:	24a50000 	addiu	a1,a1,0
 980:	3c063f80 	lui	a2,0x3f80
 984:	afa00014 	sw	zero,20(sp)
 988:	e7a60010 	swc1	$f6,16(sp)
 98c:	2484014c 	addiu	a0,a0,332
 990:	0c000000 	jal	0 <EnRl_Destroy>
 994:	e7a00018 	swc1	$f0,24(sp)
 998:	8faf0028 	lw	t7,40(sp)
 99c:	240e0007 	li	t6,7
 9a0:	adee0194 	sw	t6,404(t7)
 9a4:	8fbf0024 	lw	ra,36(sp)
 9a8:	27bd0028 	addiu	sp,sp,40
 9ac:	03e00008 	jr	ra
 9b0:	00000000 	nop

000009b4 <func_80AE7C64>:
 9b4:	27bdffe8 	addiu	sp,sp,-24
 9b8:	afbf0014 	sw	ra,20(sp)
 9bc:	afa40018 	sw	a0,24(sp)
 9c0:	0c000000 	jal	0 <EnRl_Destroy>
 9c4:	afa5001c 	sw	a1,28(sp)
 9c8:	8fa40018 	lw	a0,24(sp)
 9cc:	0c000000 	jal	0 <EnRl_Destroy>
 9d0:	8fa5001c 	lw	a1,28(sp)
 9d4:	8fbf0014 	lw	ra,20(sp)
 9d8:	27bd0018 	addiu	sp,sp,24
 9dc:	03e00008 	jr	ra
 9e0:	00000000 	nop

000009e4 <func_80AE7C94>:
 9e4:	27bdffe0 	addiu	sp,sp,-32
 9e8:	afbf001c 	sw	ra,28(sp)
 9ec:	afb00018 	sw	s0,24(sp)
 9f0:	00808025 	move	s0,a0
 9f4:	0c000000 	jal	0 <EnRl_Destroy>
 9f8:	afa50024 	sw	a1,36(sp)
 9fc:	0c000000 	jal	0 <EnRl_Destroy>
 a00:	02002025 	move	a0,s0
 a04:	0c000000 	jal	0 <EnRl_Destroy>
 a08:	02002025 	move	a0,s0
 a0c:	02002025 	move	a0,s0
 a10:	0c000000 	jal	0 <EnRl_Destroy>
 a14:	8fa50024 	lw	a1,36(sp)
 a18:	02002025 	move	a0,s0
 a1c:	0c000000 	jal	0 <EnRl_Destroy>
 a20:	8fa50024 	lw	a1,36(sp)
 a24:	8fbf001c 	lw	ra,28(sp)
 a28:	8fb00018 	lw	s0,24(sp)
 a2c:	27bd0020 	addiu	sp,sp,32
 a30:	03e00008 	jr	ra
 a34:	00000000 	nop

00000a38 <func_80AE7CE8>:
 a38:	27bdffd8 	addiu	sp,sp,-40
 a3c:	afbf001c 	sw	ra,28(sp)
 a40:	afb00018 	sw	s0,24(sp)
 a44:	00808025 	move	s0,a0
 a48:	0c000000 	jal	0 <EnRl_Destroy>
 a4c:	afa5002c 	sw	a1,44(sp)
 a50:	0c000000 	jal	0 <EnRl_Destroy>
 a54:	02002025 	move	a0,s0
 a58:	afa20024 	sw	v0,36(sp)
 a5c:	0c000000 	jal	0 <EnRl_Destroy>
 a60:	02002025 	move	a0,s0
 a64:	02002025 	move	a0,s0
 a68:	0c000000 	jal	0 <EnRl_Destroy>
 a6c:	8fa50024 	lw	a1,36(sp)
 a70:	02002025 	move	a0,s0
 a74:	0c000000 	jal	0 <EnRl_Destroy>
 a78:	8fa5002c 	lw	a1,44(sp)
 a7c:	8fbf001c 	lw	ra,28(sp)
 a80:	8fb00018 	lw	s0,24(sp)
 a84:	27bd0028 	addiu	sp,sp,40
 a88:	03e00008 	jr	ra
 a8c:	00000000 	nop

00000a90 <func_80AE7D40>:
 a90:	27bdffe0 	addiu	sp,sp,-32
 a94:	afbf001c 	sw	ra,28(sp)
 a98:	afb00018 	sw	s0,24(sp)
 a9c:	00808025 	move	s0,a0
 aa0:	0c000000 	jal	0 <EnRl_Destroy>
 aa4:	afa50024 	sw	a1,36(sp)
 aa8:	0c000000 	jal	0 <EnRl_Destroy>
 aac:	02002025 	move	a0,s0
 ab0:	0c000000 	jal	0 <EnRl_Destroy>
 ab4:	02002025 	move	a0,s0
 ab8:	02002025 	move	a0,s0
 abc:	0c000000 	jal	0 <EnRl_Destroy>
 ac0:	8fa50024 	lw	a1,36(sp)
 ac4:	02002025 	move	a0,s0
 ac8:	0c000000 	jal	0 <EnRl_Destroy>
 acc:	8fa50024 	lw	a1,36(sp)
 ad0:	8fbf001c 	lw	ra,28(sp)
 ad4:	8fb00018 	lw	s0,24(sp)
 ad8:	27bd0020 	addiu	sp,sp,32
 adc:	03e00008 	jr	ra
 ae0:	00000000 	nop

00000ae4 <func_80AE7D94>:
 ae4:	27bdff88 	addiu	sp,sp,-120
 ae8:	afbf002c 	sw	ra,44(sp)
 aec:	afb00028 	sw	s0,40(sp)
 af0:	afa40078 	sw	a0,120(sp)
 af4:	afa5007c 	sw	a1,124(sp)
 af8:	84820190 	lh	v0,400(a0)
 afc:	3c180000 	lui	t8,0x0
 b00:	3c060000 	lui	a2,0x0
 b04:	00027880 	sll	t7,v0,0x2
 b08:	030fc021 	addu	t8,t8,t7
 b0c:	8f180000 	lw	t8,0(t8)
 b10:	24c60000 	addiu	a2,a2,0
 b14:	27a40050 	addiu	a0,sp,80
 b18:	afb80068 	sw	t8,104(sp)
 b1c:	8ca50000 	lw	a1,0(a1)
 b20:	24070130 	li	a3,304
 b24:	0c000000 	jal	0 <EnRl_Destroy>
 b28:	00a08025 	move	s0,a1
 b2c:	8fa9007c 	lw	t1,124(sp)
 b30:	0c000000 	jal	0 <EnRl_Destroy>
 b34:	8d240000 	lw	a0,0(t1)
 b38:	8fa70068 	lw	a3,104(sp)
 b3c:	8e0202d0 	lw	v0,720(s0)
 b40:	3c0bdb06 	lui	t3,0xdb06
 b44:	00076100 	sll	t4,a3,0x4
 b48:	000c6f02 	srl	t5,t4,0x1c
 b4c:	3c0f0000 	lui	t7,0x0
 b50:	244a0008 	addiu	t2,v0,8
 b54:	ae0a02d0 	sw	t2,720(s0)
 b58:	25ef0000 	addiu	t7,t7,0
 b5c:	000d7080 	sll	t6,t5,0x2
 b60:	356b0020 	ori	t3,t3,0x20
 b64:	01cf2021 	addu	a0,t6,t7
 b68:	ac4b0000 	sw	t3,0(v0)
 b6c:	8c980000 	lw	t8,0(a0)
 b70:	3c0100ff 	lui	at,0xff
 b74:	3421ffff 	ori	at,at,0xffff
 b78:	00e12824 	and	a1,a3,at
 b7c:	3c068000 	lui	a2,0x8000
 b80:	0305c821 	addu	t9,t8,a1
 b84:	03264821 	addu	t1,t9,a2
 b88:	ac490004 	sw	t1,4(v0)
 b8c:	8e0202d0 	lw	v0,720(s0)
 b90:	3c0bdb06 	lui	t3,0xdb06
 b94:	356b0024 	ori	t3,t3,0x24
 b98:	244a0008 	addiu	t2,v0,8
 b9c:	ae0a02d0 	sw	t2,720(s0)
 ba0:	ac4b0000 	sw	t3,0(v0)
 ba4:	8c8c0000 	lw	t4,0(a0)
 ba8:	3c18fb00 	lui	t8,0xfb00
 bac:	3c0bdb06 	lui	t3,0xdb06
 bb0:	01856821 	addu	t5,t4,a1
 bb4:	01a67021 	addu	t6,t5,a2
 bb8:	ac4e0004 	sw	t6,4(v0)
 bbc:	8e0202d0 	lw	v0,720(s0)
 bc0:	8fa80078 	lw	t0,120(sp)
 bc4:	3c0c0000 	lui	t4,0x0
 bc8:	244f0008 	addiu	t7,v0,8
 bcc:	ae0f02d0 	sw	t7,720(s0)
 bd0:	ac580000 	sw	t8,0(v0)
 bd4:	8d1901a0 	lw	t9,416(t0)
 bd8:	258c0000 	addiu	t4,t4,0
 bdc:	356b0030 	ori	t3,t3,0x30
 be0:	332900ff 	andi	t1,t9,0xff
 be4:	ac490004 	sw	t1,4(v0)
 be8:	8e0202d0 	lw	v0,720(s0)
 bec:	244a0008 	addiu	t2,v0,8
 bf0:	ae0a02d0 	sw	t2,720(s0)
 bf4:	ac4c0004 	sw	t4,4(v0)
 bf8:	ac4b0000 	sw	t3,0(v0)
 bfc:	2502014c 	addiu	v0,t0,332
 c00:	8c450004 	lw	a1,4(v0)
 c04:	8c460020 	lw	a2,32(v0)
 c08:	90470002 	lbu	a3,2(v0)
 c0c:	afa00018 	sw	zero,24(sp)
 c10:	afa00014 	sw	zero,20(sp)
 c14:	afa00010 	sw	zero,16(sp)
 c18:	8e0d02d0 	lw	t5,720(s0)
 c1c:	8fa4007c 	lw	a0,124(sp)
 c20:	0c000000 	jal	0 <EnRl_Destroy>
 c24:	afad001c 	sw	t5,28(sp)
 c28:	ae0202d0 	sw	v0,720(s0)
 c2c:	8fae007c 	lw	t6,124(sp)
 c30:	3c060000 	lui	a2,0x0
 c34:	24c60020 	addiu	a2,a2,32
 c38:	27a40050 	addiu	a0,sp,80
 c3c:	2407014b 	li	a3,331
 c40:	0c000000 	jal	0 <EnRl_Destroy>
 c44:	8dc50000 	lw	a1,0(t6)
 c48:	8fbf002c 	lw	ra,44(sp)
 c4c:	8fb00028 	lw	s0,40(sp)
 c50:	27bd0078 	addiu	sp,sp,120
 c54:	03e00008 	jr	ra
 c58:	00000000 	nop

00000c5c <EnRl_Update>:
 c5c:	27bdffe8 	addiu	sp,sp,-24
 c60:	afbf0014 	sw	ra,20(sp)
 c64:	8c820194 	lw	v0,404(a0)
 c68:	04400008 	bltz	v0,c8c <EnRl_Update+0x30>
 c6c:	28410008 	slti	at,v0,8
 c70:	10200006 	beqz	at,c8c <EnRl_Update+0x30>
 c74:	00027080 	sll	t6,v0,0x2
 c78:	3c030000 	lui	v1,0x0
 c7c:	006e1821 	addu	v1,v1,t6
 c80:	8c630000 	lw	v1,0(v1)
 c84:	14600006 	bnez	v1,ca0 <EnRl_Update+0x44>
 c88:	00000000 	nop
 c8c:	3c040000 	lui	a0,0x0
 c90:	0c000000 	jal	0 <EnRl_Destroy>
 c94:	24840040 	addiu	a0,a0,64
 c98:	10000004 	b	cac <EnRl_Update+0x50>
 c9c:	8fbf0014 	lw	ra,20(sp)
 ca0:	0060f809 	jalr	v1
 ca4:	00000000 	nop
 ca8:	8fbf0014 	lw	ra,20(sp)
 cac:	27bd0018 	addiu	sp,sp,24
 cb0:	03e00008 	jr	ra
 cb4:	00000000 	nop

00000cb8 <EnRl_Init>:
 cb8:	27bdffe8 	addiu	sp,sp,-24
 cbc:	afbf0014 	sw	ra,20(sp)
 cc0:	afa40018 	sw	a0,24(sp)
 cc4:	afa5001c 	sw	a1,28(sp)
 cc8:	3c060000 	lui	a2,0x0
 ccc:	24c60000 	addiu	a2,a2,0
 cd0:	24050000 	li	a1,0
 cd4:	248400b4 	addiu	a0,a0,180
 cd8:	0c000000 	jal	0 <EnRl_Destroy>
 cdc:	3c074248 	lui	a3,0x4248
 ce0:	8fa40018 	lw	a0,24(sp)
 ce4:	24010002 	li	at,2
 ce8:	8fa5001c 	lw	a1,28(sp)
 cec:	848e001c 	lh	t6,28(a0)
 cf0:	15c10005 	bne	t6,at,d08 <EnRl_Init+0x50>
 cf4:	00000000 	nop
 cf8:	0c000000 	jal	0 <EnRl_Destroy>
 cfc:	00000000 	nop
 d00:	10000004 	b	d14 <EnRl_Init+0x5c>
 d04:	8fbf0014 	lw	ra,20(sp)
 d08:	0c000000 	jal	0 <EnRl_Destroy>
 d0c:	00000000 	nop
 d10:	8fbf0014 	lw	ra,20(sp)
 d14:	27bd0018 	addiu	sp,sp,24
 d18:	03e00008 	jr	ra
 d1c:	00000000 	nop

00000d20 <func_80AE7FD0>:
 d20:	afa40000 	sw	a0,0(sp)
 d24:	03e00008 	jr	ra
 d28:	afa50004 	sw	a1,4(sp)

00000d2c <func_80AE7FDC>:
 d2c:	27bdff90 	addiu	sp,sp,-112
 d30:	afbf0024 	sw	ra,36(sp)
 d34:	afa40070 	sw	a0,112(sp)
 d38:	afa50074 	sw	a1,116(sp)
 d3c:	84820190 	lh	v0,400(a0)
 d40:	3c180000 	lui	t8,0x0
 d44:	3c060000 	lui	a2,0x0
 d48:	00027880 	sll	t7,v0,0x2
 d4c:	030fc021 	addu	t8,t8,t7
 d50:	8f180000 	lw	t8,0(t8)
 d54:	24c6007c 	addiu	a2,a2,124
 d58:	27a40048 	addiu	a0,sp,72
 d5c:	afb80060 	sw	t8,96(sp)
 d60:	8ca50000 	lw	a1,0(a1)
 d64:	240701a0 	li	a3,416
 d68:	0c000000 	jal	0 <EnRl_Destroy>
 d6c:	afa50058 	sw	a1,88(sp)
 d70:	8fa90074 	lw	t1,116(sp)
 d74:	0c000000 	jal	0 <EnRl_Destroy>
 d78:	8d240000 	lw	a0,0(t1)
 d7c:	8fa80058 	lw	t0,88(sp)
 d80:	8fa70060 	lw	a3,96(sp)
 d84:	3c0bdb06 	lui	t3,0xdb06
 d88:	8d0202c0 	lw	v0,704(t0)
 d8c:	00076100 	sll	t4,a3,0x4
 d90:	000c6f02 	srl	t5,t4,0x1c
 d94:	3c0f0000 	lui	t7,0x0
 d98:	244a0008 	addiu	t2,v0,8
 d9c:	25ef0000 	addiu	t7,t7,0
 da0:	000d7080 	sll	t6,t5,0x2
 da4:	356b0020 	ori	t3,t3,0x20
 da8:	ad0a02c0 	sw	t2,704(t0)
 dac:	01cf2021 	addu	a0,t6,t7
 db0:	ac4b0000 	sw	t3,0(v0)
 db4:	8c980000 	lw	t8,0(a0)
 db8:	3c0100ff 	lui	at,0xff
 dbc:	3421ffff 	ori	at,at,0xffff
 dc0:	00e12824 	and	a1,a3,at
 dc4:	3c068000 	lui	a2,0x8000
 dc8:	0305c821 	addu	t9,t8,a1
 dcc:	03264821 	addu	t1,t9,a2
 dd0:	ac490004 	sw	t1,4(v0)
 dd4:	8d0202c0 	lw	v0,704(t0)
 dd8:	3c0bdb06 	lui	t3,0xdb06
 ddc:	356b0024 	ori	t3,t3,0x24
 de0:	244a0008 	addiu	t2,v0,8
 de4:	ad0a02c0 	sw	t2,704(t0)
 de8:	ac4b0000 	sw	t3,0(v0)
 dec:	8c8c0000 	lw	t4,0(a0)
 df0:	241900ff 	li	t9,255
 df4:	3c18fb00 	lui	t8,0xfb00
 df8:	01856821 	addu	t5,t4,a1
 dfc:	01a67021 	addu	t6,t5,a2
 e00:	ac4e0004 	sw	t6,4(v0)
 e04:	8d0202c0 	lw	v0,704(t0)
 e08:	3c0b0000 	lui	t3,0x0
 e0c:	3c0adb06 	lui	t2,0xdb06
 e10:	244f0008 	addiu	t7,v0,8
 e14:	ad0f02c0 	sw	t7,704(t0)
 e18:	ac590004 	sw	t9,4(v0)
 e1c:	ac580000 	sw	t8,0(v0)
 e20:	8d0202c0 	lw	v0,704(t0)
 e24:	354a0030 	ori	t2,t2,0x30
 e28:	256b0010 	addiu	t3,t3,16
 e2c:	24490008 	addiu	t1,v0,8
 e30:	ad0902c0 	sw	t1,704(t0)
 e34:	ac4b0004 	sw	t3,4(v0)
 e38:	ac4a0000 	sw	t2,0(v0)
 e3c:	8fa30070 	lw	v1,112(sp)
 e40:	8fa40074 	lw	a0,116(sp)
 e44:	2462014c 	addiu	v0,v1,332
 e48:	8c450004 	lw	a1,4(v0)
 e4c:	8c460020 	lw	a2,32(v0)
 e50:	90470002 	lbu	a3,2(v0)
 e54:	afa00014 	sw	zero,20(sp)
 e58:	afa00010 	sw	zero,16(sp)
 e5c:	0c000000 	jal	0 <EnRl_Destroy>
 e60:	afa30018 	sw	v1,24(sp)
 e64:	8fac0074 	lw	t4,116(sp)
 e68:	3c060000 	lui	a2,0x0
 e6c:	24c6008c 	addiu	a2,a2,140
 e70:	27a40048 	addiu	a0,sp,72
 e74:	240701b5 	li	a3,437
 e78:	0c000000 	jal	0 <EnRl_Destroy>
 e7c:	8d850000 	lw	a1,0(t4)
 e80:	8fbf0024 	lw	ra,36(sp)
 e84:	27bd0070 	addiu	sp,sp,112
 e88:	03e00008 	jr	ra
 e8c:	00000000 	nop

00000e90 <EnRl_Draw>:
 e90:	27bdffe8 	addiu	sp,sp,-24
 e94:	afbf0014 	sw	ra,20(sp)
 e98:	8c820198 	lw	v0,408(a0)
 e9c:	04400008 	bltz	v0,ec0 <EnRl_Draw+0x30>
 ea0:	28410003 	slti	at,v0,3
 ea4:	10200006 	beqz	at,ec0 <EnRl_Draw+0x30>
 ea8:	00027080 	sll	t6,v0,0x2
 eac:	3c030000 	lui	v1,0x0
 eb0:	006e1821 	addu	v1,v1,t6
 eb4:	8c630000 	lw	v1,0(v1)
 eb8:	14600006 	bnez	v1,ed4 <EnRl_Draw+0x44>
 ebc:	00000000 	nop
 ec0:	3c040000 	lui	a0,0x0
 ec4:	0c000000 	jal	0 <EnRl_Destroy>
 ec8:	2484009c 	addiu	a0,a0,156
 ecc:	10000004 	b	ee0 <EnRl_Draw+0x50>
 ed0:	8fbf0014 	lw	ra,20(sp)
 ed4:	0060f809 	jalr	v1
 ed8:	00000000 	nop
 edc:	8fbf0014 	lw	ra,20(sp)
 ee0:	27bd0018 	addiu	sp,sp,24
 ee4:	03e00008 	jr	ra
 ee8:	00000000 	nop
 eec:	00000000 	nop
