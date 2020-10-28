
build/src/overlays/actors/ovl_En_Kakasi2/z_en_kakasi2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnKakasi2_Init>:
   0:	27bdffb8 	addiu	sp,sp,-72
   4:	afb00028 	sw	s0,40(sp)
   8:	00808025 	move	s0,a0
   c:	afbf002c 	sw	ra,44(sp)
  10:	3c040000 	lui	a0,0x0
  14:	afa5004c 	sw	a1,76(sp)
  18:	0c000000 	jal	0 <EnKakasi2_Init>
  1c:	24840000 	addiu	a0,a0,0
  20:	3c040000 	lui	a0,0x0
  24:	0c000000 	jal	0 <EnKakasi2_Init>
  28:	24840004 	addiu	a0,a0,4
  2c:	8602001c 	lh	v0,28(s0)
  30:	86190034 	lh	t9,52(s0)
  34:	2401003f 	li	at,63
  38:	304e003f 	andi	t6,v0,0x3f
  3c:	a60e0196 	sh	t6,406(s0)
  40:	00027983 	sra	t7,v0,0x6
  44:	86080196 	lh	t0,406(s0)
  48:	31f800ff 	andi	t8,t7,0xff
  4c:	44982000 	mtc1	t8,$f4
  50:	44993000 	mtc1	t9,$f6
  54:	2409ffff 	li	t1,-1
  58:	468020a0 	cvt.s.w	$f2,$f4
  5c:	15010002 	bne	t0,at,68 <EnKakasi2_Init+0x68>
  60:	46803320 	cvt.s.w	$f12,$f6
  64:	a6090196 	sh	t1,406(s0)
  68:	3c014220 	lui	at,0x4220
  6c:	44810000 	mtc1	at,$f0
  70:	46001121 	cvt.d.s	$f4,$f2
  74:	240a0004 	li	t2,4
  78:	46001202 	mul.s	$f8,$f2,$f0
  7c:	a20a001f 	sb	t2,31(s0)
  80:	44072000 	mfc1	a3,$f4
  84:	46006402 	mul.s	$f16,$f12,$f0
  88:	44062800 	mfc1	a2,$f5
  8c:	3c040000 	lui	a0,0x0
  90:	24840034 	addiu	a0,a0,52
  94:	46004280 	add.s	$f10,$f8,$f0
  98:	46008480 	add.s	$f18,$f16,$f0
  9c:	e60a019c 	swc1	$f10,412(s0)
  a0:	e61201a0 	swc1	$f18,416(s0)
  a4:	0c000000 	jal	0 <EnKakasi2_Init>
  a8:	e7ac0038 	swc1	$f12,56(sp)
  ac:	c7ac0038 	lwc1	$f12,56(sp)
  b0:	3c040000 	lui	a0,0x0
  b4:	24840064 	addiu	a0,a0,100
  b8:	460061a1 	cvt.d.s	$f6,$f12
  bc:	44073000 	mfc1	a3,$f6
  c0:	44063800 	mfc1	a2,$f7
  c4:	0c000000 	jal	0 <EnKakasi2_Init>
  c8:	00000000 	nop
  cc:	c608019c 	lwc1	$f8,412(s0)
  d0:	3c040000 	lui	a0,0x0
  d4:	24840094 	addiu	a0,a0,148
  d8:	460042a1 	cvt.d.s	$f10,$f8
  dc:	44075000 	mfc1	a3,$f10
  e0:	44065800 	mfc1	a2,$f11
  e4:	0c000000 	jal	0 <EnKakasi2_Init>
  e8:	00000000 	nop
  ec:	c61001a0 	lwc1	$f16,416(s0)
  f0:	3c040000 	lui	a0,0x0
  f4:	248400c4 	addiu	a0,a0,196
  f8:	460084a1 	cvt.d.s	$f18,$f16
  fc:	44079000 	mfc1	a3,$f18
 100:	44069800 	mfc1	a2,$f19
 104:	0c000000 	jal	0 <EnKakasi2_Init>
 108:	00000000 	nop
 10c:	c60401a4 	lwc1	$f4,420(s0)
 110:	3c040000 	lui	a0,0x0
 114:	248400f4 	addiu	a0,a0,244
 118:	460021a1 	cvt.d.s	$f6,$f4
 11c:	44073000 	mfc1	a3,$f6
 120:	44063800 	mfc1	a2,$f7
 124:	0c000000 	jal	0 <EnKakasi2_Init>
 128:	00000000 	nop
 12c:	3c040000 	lui	a0,0x0
 130:	24840124 	addiu	a0,a0,292
 134:	0c000000 	jal	0 <EnKakasi2_Init>
 138:	86050196 	lh	a1,406(s0)
 13c:	3c040000 	lui	a0,0x0
 140:	0c000000 	jal	0 <EnKakasi2_Init>
 144:	24840154 	addiu	a0,a0,340
 148:	3c014270 	lui	at,0x4270
 14c:	44814000 	mtc1	at,$f8
 150:	240b00ff 	li	t3,255
 154:	3c053c23 	lui	a1,0x3c23
 158:	a20b00ae 	sb	t3,174(s0)
 15c:	34a5d70a 	ori	a1,a1,0xd70a
 160:	02002025 	move	a0,s0
 164:	0c000000 	jal	0 <EnKakasi2_Init>
 168:	e60801a8 	swc1	$f8,424(s0)
 16c:	8e0c0004 	lw	t4,4(s0)
 170:	86050196 	lh	a1,406(s0)
 174:	860e00b6 	lh	t6,182(s0)
 178:	358d0400 	ori	t5,t4,0x400
 17c:	ae0d0004 	sw	t5,4(s0)
 180:	04a0001f 	bltz	a1,200 <EnKakasi2_Init+0x200>
 184:	a60e0198 	sh	t6,408(s0)
 188:	0c000000 	jal	0 <EnKakasi2_Init>
 18c:	8fa4004c 	lw	a0,76(sp)
 190:	1040001b 	beqz	v0,200 <EnKakasi2_Init+0x200>
 194:	3c0f0000 	lui	t7,0x0
 198:	25ef0000 	addiu	t7,t7,0
 19c:	ae0f0134 	sw	t7,308(s0)
 1a0:	260501ac 	addiu	a1,s0,428
 1a4:	afa50034 	sw	a1,52(sp)
 1a8:	0c000000 	jal	0 <EnKakasi2_Init>
 1ac:	8fa4004c 	lw	a0,76(sp)
 1b0:	3c070000 	lui	a3,0x0
 1b4:	8fa50034 	lw	a1,52(sp)
 1b8:	24e70000 	addiu	a3,a3,0
 1bc:	8fa4004c 	lw	a0,76(sp)
 1c0:	0c000000 	jal	0 <EnKakasi2_Init>
 1c4:	02003025 	move	a2,s0
 1c8:	3c060000 	lui	a2,0x0
 1cc:	3c070000 	lui	a3,0x0
 1d0:	24e70000 	addiu	a3,a3,0
 1d4:	24c60000 	addiu	a2,a2,0
 1d8:	8fa4004c 	lw	a0,76(sp)
 1dc:	26050150 	addiu	a1,s0,336
 1e0:	afa00010 	sw	zero,16(sp)
 1e4:	afa00014 	sw	zero,20(sp)
 1e8:	0c000000 	jal	0 <EnKakasi2_Init>
 1ec:	afa00018 	sw	zero,24(sp)
 1f0:	3c180000 	lui	t8,0x0
 1f4:	27180000 	addiu	t8,t8,0
 1f8:	10000007 	b	218 <EnKakasi2_Init+0x218>
 1fc:	ae18014c 	sw	t8,332(s0)
 200:	3c01c5fa 	lui	at,0xc5fa
 204:	44815000 	mtc1	at,$f10
 208:	3c190000 	lui	t9,0x0
 20c:	27390000 	addiu	t9,t9,0
 210:	ae19014c 	sw	t9,332(s0)
 214:	e60a00bc 	swc1	$f10,188(s0)
 218:	8fbf002c 	lw	ra,44(sp)
 21c:	8fb00028 	lw	s0,40(sp)
 220:	27bd0048 	addiu	sp,sp,72
 224:	03e00008 	jr	ra
 228:	00000000 	nop

0000022c <EnKakasi2_Destroy>:
 22c:	27bdffe8 	addiu	sp,sp,-24
 230:	00803025 	move	a2,a0
 234:	afbf0014 	sw	ra,20(sp)
 238:	00a02025 	move	a0,a1
 23c:	0c000000 	jal	0 <EnKakasi2_Init>
 240:	24c501ac 	addiu	a1,a2,428
 244:	8fbf0014 	lw	ra,20(sp)
 248:	27bd0018 	addiu	sp,sp,24
 24c:	03e00008 	jr	ra
 250:	00000000 	nop

00000254 <func_80A90264>:
 254:	27bdffc8 	addiu	sp,sp,-56
 258:	afbf002c 	sw	ra,44(sp)
 25c:	afb10028 	sw	s1,40(sp)
 260:	afb00024 	sw	s0,36(sp)
 264:	848e0194 	lh	t6,404(a0)
 268:	8ca21c44 	lw	v0,7236(a1)
 26c:	3c180000 	lui	t8,0x0
 270:	25cf0001 	addiu	t7,t6,1
 274:	a48f0194 	sh	t7,404(a0)
 278:	8f180000 	lw	t8,0(t8)
 27c:	00808025 	move	s0,a0
 280:	00a08825 	move	s1,a1
 284:	871912d6 	lh	t9,4822(t8)
 288:	5320003f 	beqzl	t9,388 <func_80A90264+0x134>
 28c:	c6120090 	lwc1	$f18,144(s0)
 290:	c4840090 	lwc1	$f4,144(a0)
 294:	c486019c 	lwc1	$f6,412(a0)
 298:	4606203c 	c.lt.s	$f4,$f6
 29c:	00000000 	nop
 2a0:	45020039 	bc1fl	388 <func_80A90264+0x134>
 2a4:	c6120090 	lwc1	$f18,144(s0)
 2a8:	c4480028 	lwc1	$f8,40(v0)
 2ac:	c48a0028 	lwc1	$f10,40(a0)
 2b0:	c49001a0 	lwc1	$f16,416(a0)
 2b4:	3c080000 	lui	t0,0x0
 2b8:	460a4001 	sub.s	$f0,$f8,$f10
 2bc:	25080000 	addiu	t0,t0,0
 2c0:	46000005 	abs.s	$f0,$f0
 2c4:	4610003c 	c.lt.s	$f0,$f16
 2c8:	00000000 	nop
 2cc:	4502002e 	bc1fl	388 <func_80A90264+0x134>
 2d0:	c6120090 	lwc1	$f18,144(s0)
 2d4:	ac880134 	sw	t0,308(a0)
 2d8:	00a02025 	move	a0,a1
 2dc:	260501ac 	addiu	a1,s0,428
 2e0:	0c000000 	jal	0 <EnKakasi2_Init>
 2e4:	afa50030 	sw	a1,48(sp)
 2e8:	3c070000 	lui	a3,0x0
 2ec:	8fa50030 	lw	a1,48(sp)
 2f0:	24e70000 	addiu	a3,a3,0
 2f4:	02202025 	move	a0,s1
 2f8:	0c000000 	jal	0 <EnKakasi2_Init>
 2fc:	02003025 	move	a2,s0
 300:	3c060000 	lui	a2,0x0
 304:	3c070000 	lui	a3,0x0
 308:	24e70000 	addiu	a3,a3,0
 30c:	24c60000 	addiu	a2,a2,0
 310:	02202025 	move	a0,s1
 314:	26050150 	addiu	a1,s0,336
 318:	afa00010 	sw	zero,16(sp)
 31c:	afa00014 	sw	zero,20(sp)
 320:	0c000000 	jal	0 <EnKakasi2_Init>
 324:	afa00018 	sw	zero,24(sp)
 328:	02202025 	move	a0,s1
 32c:	0c000000 	jal	0 <EnKakasi2_Init>
 330:	02002825 	move	a1,s0
 334:	8e090004 	lw	t1,4(s0)
 338:	3c010800 	lui	at,0x800
 33c:	34210001 	ori	at,at,0x1
 340:	01215025 	or	t2,t1,at
 344:	ae0a0004 	sw	t2,4(s0)
 348:	0c000000 	jal	0 <EnKakasi2_Init>
 34c:	24044802 	li	a0,18434
 350:	86050196 	lh	a1,406(s0)
 354:	04a00004 	bltz	a1,368 <func_80A90264+0x114>
 358:	00000000 	nop
 35c:	0c000000 	jal	0 <EnKakasi2_Init>
 360:	02202025 	move	a0,s1
 364:	86050196 	lh	a1,406(s0)
 368:	3c040000 	lui	a0,0x0
 36c:	0c000000 	jal	0 <EnKakasi2_Init>
 370:	24840158 	addiu	a0,a0,344
 374:	3c0b0000 	lui	t3,0x0
 378:	256b0000 	addiu	t3,t3,0
 37c:	1000004d 	b	4b4 <func_80A90264+0x260>
 380:	ae0b014c 	sw	t3,332(s0)
 384:	c6120090 	lwc1	$f18,144(s0)
 388:	c604019c 	lwc1	$f4,412(s0)
 38c:	4604903c 	c.lt.s	$f18,$f4
 390:	00000000 	nop
 394:	45020048 	bc1fl	4b8 <func_80A90264+0x264>
 398:	8fbf002c 	lw	ra,44(sp)
 39c:	c4460028 	lwc1	$f6,40(v0)
 3a0:	c6080028 	lwc1	$f8,40(s0)
 3a4:	c60a01a0 	lwc1	$f10,416(s0)
 3a8:	3c0c0000 	lui	t4,0x0
 3ac:	46083001 	sub.s	$f0,$f6,$f8
 3b0:	46000005 	abs.s	$f0,$f0
 3b4:	460a003c 	c.lt.s	$f0,$f10
 3b8:	00000000 	nop
 3bc:	4502003e 	bc1fl	4b8 <func_80A90264+0x264>
 3c0:	8fbf002c 	lw	ra,44(sp)
 3c4:	958c0ee6 	lhu	t4,3814(t4)
 3c8:	3c0e0001 	lui	t6,0x1
 3cc:	01d17021 	addu	t6,t6,s1
 3d0:	318d1000 	andi	t5,t4,0x1000
 3d4:	51a00038 	beqzl	t5,4b8 <func_80A90264+0x264>
 3d8:	8fbf002c 	lw	ra,44(sp)
 3dc:	a6000194 	sh	zero,404(s0)
 3e0:	95ce04c6 	lhu	t6,1222(t6)
 3e4:	2401000b 	li	at,11
 3e8:	55c10033 	bnel	t6,at,4b8 <func_80A90264+0x264>
 3ec:	8fbf002c 	lw	ra,44(sp)
 3f0:	86050196 	lh	a1,406(s0)
 3f4:	04a00004 	bltz	a1,408 <func_80A90264+0x1b4>
 3f8:	00000000 	nop
 3fc:	0c000000 	jal	0 <EnKakasi2_Init>
 400:	02202025 	move	a0,s1
 404:	86050196 	lh	a1,406(s0)
 408:	3c040000 	lui	a0,0x0
 40c:	0c000000 	jal	0 <EnKakasi2_Init>
 410:	24840184 	addiu	a0,a0,388
 414:	3c010001 	lui	at,0x1
 418:	00310821 	addu	at,at,s1
 41c:	240f0004 	li	t7,4
 420:	3c180000 	lui	t8,0x0
 424:	a42f04c6 	sh	t7,1222(at)
 428:	27180000 	addiu	t8,t8,0
 42c:	ae180134 	sw	t8,308(s0)
 430:	260501ac 	addiu	a1,s0,428
 434:	afa50030 	sw	a1,48(sp)
 438:	0c000000 	jal	0 <EnKakasi2_Init>
 43c:	02202025 	move	a0,s1
 440:	3c070000 	lui	a3,0x0
 444:	8fa50030 	lw	a1,48(sp)
 448:	24e70000 	addiu	a3,a3,0
 44c:	02202025 	move	a0,s1
 450:	0c000000 	jal	0 <EnKakasi2_Init>
 454:	02003025 	move	a2,s0
 458:	3c060000 	lui	a2,0x0
 45c:	3c070000 	lui	a3,0x0
 460:	24e70000 	addiu	a3,a3,0
 464:	24c60000 	addiu	a2,a2,0
 468:	02202025 	move	a0,s1
 46c:	26050150 	addiu	a1,s0,336
 470:	afa00010 	sw	zero,16(sp)
 474:	afa00014 	sw	zero,20(sp)
 478:	0c000000 	jal	0 <EnKakasi2_Init>
 47c:	afa00018 	sw	zero,24(sp)
 480:	02202025 	move	a0,s1
 484:	0c000000 	jal	0 <EnKakasi2_Init>
 488:	02002825 	move	a1,s0
 48c:	0c000000 	jal	0 <EnKakasi2_Init>
 490:	24044802 	li	a0,18434
 494:	8e190004 	lw	t9,4(s0)
 498:	3c010800 	lui	at,0x800
 49c:	34210001 	ori	at,at,0x1
 4a0:	3c090000 	lui	t1,0x0
 4a4:	25290000 	addiu	t1,t1,0
 4a8:	03214025 	or	t0,t9,at
 4ac:	ae080004 	sw	t0,4(s0)
 4b0:	ae09014c 	sw	t1,332(s0)
 4b4:	8fbf002c 	lw	ra,44(sp)
 4b8:	8fb00024 	lw	s0,36(sp)
 4bc:	8fb10028 	lw	s1,40(sp)
 4c0:	03e00008 	jr	ra
 4c4:	27bd0038 	addiu	sp,sp,56

000004c8 <func_80A904D8>:
 4c8:	27bdffd8 	addiu	sp,sp,-40
 4cc:	afa40028 	sw	a0,40(sp)
 4d0:	afbf0024 	sw	ra,36(sp)
 4d4:	3c040000 	lui	a0,0x0
 4d8:	afa5002c 	sw	a1,44(sp)
 4dc:	0c000000 	jal	0 <EnKakasi2_Init>
 4e0:	24840000 	addiu	a0,a0,0
 4e4:	44822000 	mtc1	v0,$f4
 4e8:	3c01c120 	lui	at,0xc120
 4ec:	44819000 	mtc1	at,$f18
 4f0:	468021a0 	cvt.s.w	$f6,$f4
 4f4:	8fa40028 	lw	a0,40(sp)
 4f8:	3c050000 	lui	a1,0x0
 4fc:	24a50000 	addiu	a1,a1,0
 500:	3c063f80 	lui	a2,0x3f80
 504:	24070000 	li	a3,0
 508:	4600320d 	trunc.w.s	$f8,$f6
 50c:	afa00014 	sw	zero,20(sp)
 510:	e7b20018 	swc1	$f18,24(sp)
 514:	24840150 	addiu	a0,a0,336
 518:	440f4000 	mfc1	t7,$f8
 51c:	00000000 	nop
 520:	000fc400 	sll	t8,t7,0x10
 524:	0018cc03 	sra	t9,t8,0x10
 528:	44995000 	mtc1	t9,$f10
 52c:	00000000 	nop
 530:	46805420 	cvt.s.w	$f16,$f10
 534:	0c000000 	jal	0 <EnKakasi2_Init>
 538:	e7b00010 	swc1	$f16,16(sp)
 53c:	8fa40028 	lw	a0,40(sp)
 540:	0c000000 	jal	0 <EnKakasi2_Init>
 544:	240528bf 	li	a1,10431
 548:	8fa90028 	lw	t1,40(sp)
 54c:	3c080000 	lui	t0,0x0
 550:	25080000 	addiu	t0,t0,0
 554:	ad28014c 	sw	t0,332(t1)
 558:	8fbf0024 	lw	ra,36(sp)
 55c:	27bd0028 	addiu	sp,sp,40
 560:	03e00008 	jr	ra
 564:	00000000 	nop

00000568 <func_80A90578>:
 568:	27bdffe0 	addiu	sp,sp,-32
 56c:	afb00018 	sw	s0,24(sp)
 570:	00808025 	move	s0,a0
 574:	afbf001c 	sw	ra,28(sp)
 578:	afa50024 	sw	a1,36(sp)
 57c:	0c000000 	jal	0 <EnKakasi2_Init>
 580:	24840150 	addiu	a0,a0,336
 584:	c6040168 	lwc1	$f4,360(s0)
 588:	2401000b 	li	at,11
 58c:	02002025 	move	a0,s0
 590:	4600218d 	trunc.w.s	$f6,$f4
 594:	44023000 	mfc1	v0,$f6
 598:	00000000 	nop
 59c:	00021400 	sll	v0,v0,0x10
 5a0:	00021403 	sra	v0,v0,0x10
 5a4:	10410003 	beq	v0,at,5b4 <func_80A90578+0x4c>
 5a8:	24010011 	li	at,17
 5ac:	54410004 	bnel	v0,at,5c0 <func_80A90578+0x58>
 5b0:	860f00b6 	lh	t7,182(s0)
 5b4:	0c000000 	jal	0 <EnKakasi2_Init>
 5b8:	2405286a 	li	a1,10346
 5bc:	860f00b6 	lh	t7,182(s0)
 5c0:	260400bc 	addiu	a0,s0,188
 5c4:	3c053f00 	lui	a1,0x3f00
 5c8:	25f80800 	addiu	t8,t7,2048
 5cc:	a61800b6 	sh	t8,182(s0)
 5d0:	0c000000 	jal	0 <EnKakasi2_Init>
 5d4:	3c0643fa 	lui	a2,0x43fa
 5d8:	3c01c2c8 	lui	at,0xc2c8
 5dc:	44814000 	mtc1	at,$f8
 5e0:	c60a00bc 	lwc1	$f10,188(s0)
 5e4:	3c190000 	lui	t9,0x0
 5e8:	460a403c 	c.lt.s	$f8,$f10
 5ec:	00000000 	nop
 5f0:	45020006 	bc1fl	60c <func_80A90578+0xa4>
 5f4:	8fbf001c 	lw	ra,28(sp)
 5f8:	44808000 	mtc1	zero,$f16
 5fc:	27390000 	addiu	t9,t9,0
 600:	ae19014c 	sw	t9,332(s0)
 604:	e61000bc 	swc1	$f16,188(s0)
 608:	8fbf001c 	lw	ra,28(sp)
 60c:	8fb00018 	lw	s0,24(sp)
 610:	27bd0020 	addiu	sp,sp,32
 614:	03e00008 	jr	ra
 618:	00000000 	nop

0000061c <func_80A9062C>:
 61c:	27bdffd8 	addiu	sp,sp,-40
 620:	afa40028 	sw	a0,40(sp)
 624:	afbf0024 	sw	ra,36(sp)
 628:	3c040000 	lui	a0,0x0
 62c:	afa5002c 	sw	a1,44(sp)
 630:	0c000000 	jal	0 <EnKakasi2_Init>
 634:	24840000 	addiu	a0,a0,0
 638:	44822000 	mtc1	v0,$f4
 63c:	44800000 	mtc1	zero,$f0
 640:	3c01c120 	lui	at,0xc120
 644:	468021a0 	cvt.s.w	$f6,$f4
 648:	44819000 	mtc1	at,$f18
 64c:	8fa40028 	lw	a0,40(sp)
 650:	3c050000 	lui	a1,0x0
 654:	24080002 	li	t0,2
 658:	44060000 	mfc1	a2,$f0
 65c:	4600320d 	trunc.w.s	$f8,$f6
 660:	44070000 	mfc1	a3,$f0
 664:	afa80014 	sw	t0,20(sp)
 668:	24a50000 	addiu	a1,a1,0
 66c:	440f4000 	mfc1	t7,$f8
 670:	24840150 	addiu	a0,a0,336
 674:	e7b20018 	swc1	$f18,24(sp)
 678:	000fc400 	sll	t8,t7,0x10
 67c:	0018cc03 	sra	t9,t8,0x10
 680:	44995000 	mtc1	t9,$f10
 684:	00000000 	nop
 688:	46805420 	cvt.s.w	$f16,$f10
 68c:	0c000000 	jal	0 <EnKakasi2_Init>
 690:	e7b00010 	swc1	$f16,16(sp)
 694:	8faa0028 	lw	t2,40(sp)
 698:	3c090000 	lui	t1,0x0
 69c:	25290000 	addiu	t1,t1,0
 6a0:	ad49014c 	sw	t1,332(t2)
 6a4:	8fbf0024 	lw	ra,36(sp)
 6a8:	27bd0028 	addiu	sp,sp,40
 6ac:	03e00008 	jr	ra
 6b0:	00000000 	nop

000006b4 <func_80A906C4>:
 6b4:	27bdffd8 	addiu	sp,sp,-40
 6b8:	afbf0024 	sw	ra,36(sp)
 6bc:	afb00020 	sw	s0,32(sp)
 6c0:	afa5002c 	sw	a1,44(sp)
 6c4:	c4860168 	lwc1	$f6,360(a0)
 6c8:	44802000 	mtc1	zero,$f4
 6cc:	00808025 	move	s0,a0
 6d0:	24840168 	addiu	a0,a0,360
 6d4:	46062032 	c.eq.s	$f4,$f6
 6d8:	3c053f00 	lui	a1,0x3f00
 6dc:	45030004 	bc1tl	6f0 <func_80A906C4+0x3c>
 6e0:	86050198 	lh	a1,408(s0)
 6e4:	0c000000 	jal	0 <EnKakasi2_Init>
 6e8:	3c063f80 	lui	a2,0x3f80
 6ec:	86050198 	lh	a1,408(s0)
 6f0:	afa00010 	sw	zero,16(sp)
 6f4:	260400b6 	addiu	a0,s0,182
 6f8:	24060005 	li	a2,5
 6fc:	0c000000 	jal	0 <EnKakasi2_Init>
 700:	24070bb8 	li	a3,3000
 704:	0c000000 	jal	0 <EnKakasi2_Init>
 708:	26040150 	addiu	a0,s0,336
 70c:	8fbf0024 	lw	ra,36(sp)
 710:	8fb00020 	lw	s0,32(sp)
 714:	27bd0028 	addiu	sp,sp,40
 718:	03e00008 	jr	ra
 71c:	00000000 	nop

00000720 <EnKakasi2_Update>:
 720:	27bdffa0 	addiu	sp,sp,-96
 724:	afbf004c 	sw	ra,76(sp)
 728:	afb10048 	sw	s1,72(sp)
 72c:	afb00044 	sw	s0,68(sp)
 730:	888f00b4 	lwl	t7,180(a0)
 734:	988f00b7 	lwr	t7,183(a0)
 738:	00808025 	move	s0,a0
 73c:	00a08825 	move	s1,a1
 740:	a88f0030 	swl	t7,48(a0)
 744:	b88f0033 	swr	t7,51(a0)
 748:	948f00b8 	lhu	t7,184(a0)
 74c:	a48f0034 	sh	t7,52(a0)
 750:	0c000000 	jal	0 <EnKakasi2_Init>
 754:	8e0501a8 	lw	a1,424(s0)
 758:	8e19014c 	lw	t9,332(s0)
 75c:	02002025 	move	a0,s0
 760:	02202825 	move	a1,s1
 764:	0320f809 	jalr	t9
 768:	00000000 	nop
 76c:	0c000000 	jal	0 <EnKakasi2_Init>
 770:	02002025 	move	a0,s0
 774:	44802000 	mtc1	zero,$f4
 778:	c60600bc 	lwc1	$f6,188(s0)
 77c:	02002025 	move	a0,s0
 780:	260501ac 	addiu	a1,s0,428
 784:	46062032 	c.eq.s	$f4,$f6
 788:	00000000 	nop
 78c:	4500000e 	bc1f	7c8 <EnKakasi2_Update+0xa8>
 790:	00000000 	nop
 794:	0c000000 	jal	0 <EnKakasi2_Init>
 798:	afa50050 	sw	a1,80(sp)
 79c:	3c010001 	lui	at,0x1
 7a0:	34211e60 	ori	at,at,0x1e60
 7a4:	02212821 	addu	a1,s1,at
 7a8:	afa50054 	sw	a1,84(sp)
 7ac:	02202025 	move	a0,s1
 7b0:	0c000000 	jal	0 <EnKakasi2_Init>
 7b4:	8fa60050 	lw	a2,80(sp)
 7b8:	8fa50054 	lw	a1,84(sp)
 7bc:	02202025 	move	a0,s1
 7c0:	0c000000 	jal	0 <EnKakasi2_Init>
 7c4:	8fa60050 	lw	a2,80(sp)
 7c8:	3c020000 	lui	v0,0x0
 7cc:	8c420000 	lw	v0,0(v0)
 7d0:	845812d4 	lh	t8,4820(v0)
 7d4:	53000054 	beqzl	t8,928 <EnKakasi2_Update+0x208>
 7d8:	8fbf004c 	lw	ra,76(sp)
 7dc:	844812de 	lh	t0,4830(v0)
 7e0:	51000015 	beqzl	t0,838 <EnKakasi2_Update+0x118>
 7e4:	8e090134 	lw	t1,308(s0)
 7e8:	c6080090 	lwc1	$f8,144(s0)
 7ec:	3c040000 	lui	a0,0x0
 7f0:	248401b0 	addiu	a0,a0,432
 7f4:	460042a1 	cvt.d.s	$f10,$f8
 7f8:	44075000 	mfc1	a3,$f10
 7fc:	44065800 	mfc1	a2,$f11
 800:	0c000000 	jal	0 <EnKakasi2_Init>
 804:	00000000 	nop
 808:	c610019c 	lwc1	$f16,412(s0)
 80c:	3c040000 	lui	a0,0x0
 810:	248401f0 	addiu	a0,a0,496
 814:	460084a1 	cvt.d.s	$f18,$f16
 818:	44079000 	mfc1	a3,$f18
 81c:	44069800 	mfc1	a2,$f19
 820:	0c000000 	jal	0 <EnKakasi2_Init>
 824:	00000000 	nop
 828:	3c040000 	lui	a0,0x0
 82c:	0c000000 	jal	0 <EnKakasi2_Init>
 830:	24840220 	addiu	a0,a0,544
 834:	8e090134 	lw	t1,308(s0)
 838:	5520003b 	bnezl	t1,928 <EnKakasi2_Update+0x208>
 83c:	8fbf004c 	lw	ra,76(sp)
 840:	86020194 	lh	v0,404(s0)
 844:	3c013f80 	lui	at,0x3f80
 848:	240b00ff 	li	t3,255
 84c:	1040001f 	beqz	v0,8cc <EnKakasi2_Update+0x1ac>
 850:	240c00ff 	li	t4,255
 854:	304a0001 	andi	t2,v0,0x1
 858:	15400032 	bnez	t2,924 <EnKakasi2_Update+0x204>
 85c:	3c013f80 	lui	at,0x3f80
 860:	860b0032 	lh	t3,50(s0)
 864:	c60c0024 	lwc1	$f12,36(s0)
 868:	c60e0028 	lwc1	$f14,40(s0)
 86c:	8e06002c 	lw	a2,44(s0)
 870:	86070030 	lh	a3,48(s0)
 874:	afab0010 	sw	t3,16(sp)
 878:	860c0034 	lh	t4,52(s0)
 87c:	44810000 	mtc1	at,$f0
 880:	240d0046 	li	t5,70
 884:	240e0046 	li	t6,70
 888:	240f0046 	li	t7,70
 88c:	241900ff 	li	t9,255
 890:	24180004 	li	t8,4
 894:	afb80034 	sw	t8,52(sp)
 898:	afb90030 	sw	t9,48(sp)
 89c:	afaf002c 	sw	t7,44(sp)
 8a0:	afae0028 	sw	t6,40(sp)
 8a4:	afad0024 	sw	t5,36(sp)
 8a8:	afac0014 	sw	t4,20(sp)
 8ac:	e7a00018 	swc1	$f0,24(sp)
 8b0:	e7a0001c 	swc1	$f0,28(sp)
 8b4:	e7a00020 	swc1	$f0,32(sp)
 8b8:	8e280000 	lw	t0,0(s1)
 8bc:	0c000000 	jal	0 <EnKakasi2_Init>
 8c0:	afa80038 	sw	t0,56(sp)
 8c4:	10000018 	b	928 <EnKakasi2_Update+0x208>
 8c8:	8fbf004c 	lw	ra,76(sp)
 8cc:	86090032 	lh	t1,50(s0)
 8d0:	c60c0024 	lwc1	$f12,36(s0)
 8d4:	c60e0028 	lwc1	$f14,40(s0)
 8d8:	8e06002c 	lw	a2,44(s0)
 8dc:	86070030 	lh	a3,48(s0)
 8e0:	afa90010 	sw	t1,16(sp)
 8e4:	860a0034 	lh	t2,52(s0)
 8e8:	44810000 	mtc1	at,$f0
 8ec:	240d00ff 	li	t5,255
 8f0:	240e0004 	li	t6,4
 8f4:	afae0034 	sw	t6,52(sp)
 8f8:	afad0030 	sw	t5,48(sp)
 8fc:	afac002c 	sw	t4,44(sp)
 900:	afab0028 	sw	t3,40(sp)
 904:	afa00024 	sw	zero,36(sp)
 908:	afaa0014 	sw	t2,20(sp)
 90c:	e7a00018 	swc1	$f0,24(sp)
 910:	e7a0001c 	swc1	$f0,28(sp)
 914:	e7a00020 	swc1	$f0,32(sp)
 918:	8e2f0000 	lw	t7,0(s1)
 91c:	0c000000 	jal	0 <EnKakasi2_Init>
 920:	afaf0038 	sw	t7,56(sp)
 924:	8fbf004c 	lw	ra,76(sp)
 928:	8fb00044 	lw	s0,68(sp)
 92c:	8fb10048 	lw	s1,72(sp)
 930:	03e00008 	jr	ra
 934:	27bd0060 	addiu	sp,sp,96

00000938 <func_80A90948>:
 938:	27bdffd8 	addiu	sp,sp,-40
 93c:	afbf0024 	sw	ra,36(sp)
 940:	afa40028 	sw	a0,40(sp)
 944:	afa5002c 	sw	a1,44(sp)
 948:	0c000000 	jal	0 <EnKakasi2_Init>
 94c:	8ca40000 	lw	a0,0(a1)
 950:	8fa20028 	lw	v0,40(sp)
 954:	8fa4002c 	lw	a0,44(sp)
 958:	8c450154 	lw	a1,340(v0)
 95c:	8c460170 	lw	a2,368(v0)
 960:	90470152 	lbu	a3,338(v0)
 964:	afa00014 	sw	zero,20(sp)
 968:	afa00010 	sw	zero,16(sp)
 96c:	0c000000 	jal	0 <EnKakasi2_Init>
 970:	afa20018 	sw	v0,24(sp)
 974:	8fbf0024 	lw	ra,36(sp)
 978:	27bd0028 	addiu	sp,sp,40
 97c:	03e00008 	jr	ra
 980:	00000000 	nop
	...
