
build/src/overlays/actors/ovl_En_Niw_Girl/z_en_niw_girl.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnNiwGirl_Init>:
   0:	27bdff98 	addiu	sp,sp,-104
   4:	afb00038 	sw	s0,56(sp)
   8:	00808025 	move	s0,a0
   c:	afbf003c 	sw	ra,60(sp)
  10:	afa5006c 	sw	a1,108(sp)
  14:	260e0190 	addiu	t6,s0,400
  18:	260f01f6 	addiu	t7,s0,502
  1c:	00a02025 	move	a0,a1
  20:	3c060000 	lui	a2,0x0
  24:	3c070000 	lui	a3,0x0
  28:	24180011 	li	t8,17
  2c:	afb80018 	sw	t8,24(sp)
  30:	24e70000 	addiu	a3,a3,0
  34:	24c60000 	addiu	a2,a2,0
  38:	2605014c 	addiu	a1,s0,332
  3c:	afaf0014 	sw	t7,20(sp)
  40:	0c000000 	jal	0 <EnNiwGirl_Init>
  44:	afae0010 	sw	t6,16(sp)
  48:	26050288 	addiu	a1,s0,648
  4c:	afa50040 	sw	a1,64(sp)
  50:	0c000000 	jal	0 <EnNiwGirl_Init>
  54:	8fa4006c 	lw	a0,108(sp)
  58:	3c070000 	lui	a3,0x0
  5c:	8fa50040 	lw	a1,64(sp)
  60:	24e70020 	addiu	a3,a3,32
  64:	8fa4006c 	lw	a0,108(sp)
  68:	0c000000 	jal	0 <EnNiwGirl_Init>
  6c:	02003025 	move	a2,s0
  70:	8603001c 	lh	v1,28(s0)
  74:	24190006 	li	t9,6
  78:	a219001f 	sb	t9,31(s0)
  7c:	04630004 	bgezl	v1,90 <EnNiwGirl_Init+0x90>
  80:	860a00b6 	lh	t2,182(s0)
  84:	a600001c 	sh	zero,28(s0)
  88:	8603001c 	lh	v1,28(s0)
  8c:	860a00b6 	lh	t2,182(s0)
  90:	3c01c040 	lui	at,0xc040
  94:	44812000 	mtc1	at,$f4
  98:	448a3000 	mtc1	t2,$f6
  9c:	3c014700 	lui	at,0x4700
  a0:	44815000 	mtc1	at,$f10
  a4:	46803220 	cvt.s.w	$f8,$f6
  a8:	00034203 	sra	t0,v1,0x8
  ac:	310900ff 	andi	t1,t0,0xff
  b0:	a6090276 	sh	t1,630(s0)
  b4:	3c010000 	lui	at,0x0
  b8:	e604006c 	swc1	$f4,108(s0)
  bc:	460a4403 	div.s	$f16,$f8,$f10
  c0:	c4320124 	lwc1	$f18,292(at)
  c4:	00002825 	move	a1,zero
  c8:	46128302 	mul.s	$f12,$f16,$f18
  cc:	0c000000 	jal	0 <EnNiwGirl_Init>
  d0:	00000000 	nop
  d4:	44800000 	mtc1	zero,$f0
  d8:	3c014248 	lui	at,0x4248
  dc:	44812000 	mtc1	at,$f4
  e0:	27a40054 	addiu	a0,sp,84
  e4:	27a50048 	addiu	a1,sp,72
  e8:	e7a00050 	swc1	$f0,80(sp)
  ec:	e7a0004c 	swc1	$f0,76(sp)
  f0:	e7a00048 	swc1	$f0,72(sp)
  f4:	e7a00058 	swc1	$f0,88(sp)
  f8:	e7a00054 	swc1	$f0,84(sp)
  fc:	0c000000 	jal	0 <EnNiwGirl_Init>
 100:	e7a4005c 	swc1	$f4,92(sp)
 104:	c6060024 	lwc1	$f6,36(s0)
 108:	c7a80048 	lwc1	$f8,72(sp)
 10c:	c7b2004c 	lwc1	$f18,76(sp)
 110:	8fa6006c 	lw	a2,108(sp)
 114:	46083280 	add.s	$f10,$f6,$f8
 118:	c7a80050 	lwc1	$f8,80(sp)
 11c:	240c000a 	li	t4,10
 120:	02002825 	move	a1,s0
 124:	e7aa0010 	swc1	$f10,16(sp)
 128:	c6100028 	lwc1	$f16,40(s0)
 12c:	24070019 	li	a3,25
 130:	24c41c24 	addiu	a0,a2,7204
 134:	46128100 	add.s	$f4,$f16,$f18
 138:	e7a40014 	swc1	$f4,20(sp)
 13c:	c606002c 	lwc1	$f6,44(s0)
 140:	afa0001c 	sw	zero,28(sp)
 144:	46083280 	add.s	$f10,$f6,$f8
 148:	e7aa0018 	swc1	$f10,24(sp)
 14c:	860b0032 	lh	t3,50(s0)
 150:	afac0028 	sw	t4,40(sp)
 154:	afa00024 	sw	zero,36(sp)
 158:	0c000000 	jal	0 <EnNiwGirl_Init>
 15c:	afab0020 	sw	t3,32(sp)
 160:	10400012 	beqz	v0,1ac <EnNiwGirl_Init+0x1ac>
 164:	ae020284 	sw	v0,644(s0)
 168:	3c040000 	lui	a0,0x0
 16c:	24840000 	addiu	a0,a0,0
 170:	0c000000 	jal	0 <EnNiwGirl_Init>
 174:	8605001c 	lh	a1,28(s0)
 178:	3c040000 	lui	a0,0x0
 17c:	24840044 	addiu	a0,a0,68
 180:	0c000000 	jal	0 <EnNiwGirl_Init>
 184:	86050276 	lh	a1,630(s0)
 188:	3c040000 	lui	a0,0x0
 18c:	0c000000 	jal	0 <EnNiwGirl_Init>
 190:	24840080 	addiu	a0,a0,128
 194:	3c0e0000 	lui	t6,0x0
 198:	240d00ff 	li	t5,255
 19c:	25ce0000 	addiu	t6,t6,0
 1a0:	a20d00ae 	sb	t5,174(s0)
 1a4:	10000011 	b	1ec <EnNiwGirl_Init+0x1ec>
 1a8:	ae0e025c 	sw	t6,604(s0)
 1ac:	3c040000 	lui	a0,0x0
 1b0:	0c000000 	jal	0 <EnNiwGirl_Init>
 1b4:	24840084 	addiu	a0,a0,132
 1b8:	3c040000 	lui	a0,0x0
 1bc:	24840088 	addiu	a0,a0,136
 1c0:	0c000000 	jal	0 <EnNiwGirl_Init>
 1c4:	8605001c 	lh	a1,28(s0)
 1c8:	3c040000 	lui	a0,0x0
 1cc:	248400c8 	addiu	a0,a0,200
 1d0:	0c000000 	jal	0 <EnNiwGirl_Init>
 1d4:	86050276 	lh	a1,630(s0)
 1d8:	3c040000 	lui	a0,0x0
 1dc:	0c000000 	jal	0 <EnNiwGirl_Init>
 1e0:	248400f8 	addiu	a0,a0,248
 1e4:	0c000000 	jal	0 <EnNiwGirl_Init>
 1e8:	02002025 	move	a0,s0
 1ec:	8fbf003c 	lw	ra,60(sp)
 1f0:	8fb00038 	lw	s0,56(sp)
 1f4:	27bd0068 	addiu	sp,sp,104
 1f8:	03e00008 	jr	ra
 1fc:	00000000 	nop

00000200 <EnNiwGirl_Destroy>:
 200:	afa40000 	sw	a0,0(sp)
 204:	03e00008 	jr	ra
 208:	afa50004 	sw	a1,4(sp)

0000020c <EnNiwGirl_Jump>:
 20c:	27bdffd8 	addiu	sp,sp,-40
 210:	afa40028 	sw	a0,40(sp)
 214:	afbf0024 	sw	ra,36(sp)
 218:	3c040000 	lui	a0,0x0
 21c:	afa5002c 	sw	a1,44(sp)
 220:	0c000000 	jal	0 <EnNiwGirl_Init>
 224:	24840000 	addiu	a0,a0,0
 228:	44822000 	mtc1	v0,$f4
 22c:	3c01c120 	lui	at,0xc120
 230:	8fa30028 	lw	v1,40(sp)
 234:	468021a0 	cvt.s.w	$f6,$f4
 238:	44814000 	mtc1	at,$f8
 23c:	3c050000 	lui	a1,0x0
 240:	24a50000 	addiu	a1,a1,0
 244:	3c063f80 	lui	a2,0x3f80
 248:	24070000 	li	a3,0
 24c:	e7a60010 	swc1	$f6,16(sp)
 250:	afa00014 	sw	zero,20(sp)
 254:	2464014c 	addiu	a0,v1,332
 258:	0c000000 	jal	0 <EnNiwGirl_Init>
 25c:	e7a80018 	swc1	$f8,24(sp)
 260:	8fa30028 	lw	v1,40(sp)
 264:	2401fffe 	li	at,-2
 268:	3c180000 	lui	t8,0x0
 26c:	8c6e0004 	lw	t6,4(v1)
 270:	27180000 	addiu	t8,t8,0
 274:	ac78025c 	sw	t8,604(v1)
 278:	01c17824 	and	t7,t6,at
 27c:	ac6f0004 	sw	t7,4(v1)
 280:	8fbf0024 	lw	ra,36(sp)
 284:	27bd0028 	addiu	sp,sp,40
 288:	03e00008 	jr	ra
 28c:	00000000 	nop

00000290 <func_80AB9210>:
 290:	27bdffc8 	addiu	sp,sp,-56
 294:	afbf0024 	sw	ra,36(sp)
 298:	afb00020 	sw	s0,32(sp)
 29c:	afa5003c 	sw	a1,60(sp)
 2a0:	3c0f0001 	lui	t7,0x1
 2a4:	84980276 	lh	t8,630(a0)
 2a8:	01e57821 	addu	t7,t7,a1
 2ac:	8def1e08 	lw	t7,7688(t7)
 2b0:	0018c8c0 	sll	t9,t8,0x3
 2b4:	00808025 	move	s0,a0
 2b8:	01f94021 	addu	t0,t7,t9
 2bc:	afa80034 	sw	t0,52(sp)
 2c0:	0c000000 	jal	0 <EnNiwGirl_Init>
 2c4:	2484014c 	addiu	a0,a0,332
 2c8:	3c063e4c 	lui	a2,0x3e4c
 2cc:	3c073ecc 	lui	a3,0x3ecc
 2d0:	34e7cccd 	ori	a3,a3,0xcccd
 2d4:	34c6cccd 	ori	a2,a2,0xcccd
 2d8:	26040068 	addiu	a0,s0,104
 2dc:	0c000000 	jal	0 <EnNiwGirl_Init>
 2e0:	3c054040 	lui	a1,0x4040
 2e4:	8e020284 	lw	v0,644(s0)
 2e8:	c6060024 	lwc1	$f6,36(s0)
 2ec:	c60a002c 	lwc1	$f10,44(s0)
 2f0:	c4440024 	lwc1	$f4,36(v0)
 2f4:	c448002c 	lwc1	$f8,44(v0)
 2f8:	8fa4003c 	lw	a0,60(sp)
 2fc:	46062301 	sub.s	$f12,$f4,$f6
 300:	248420d8 	addiu	a0,a0,8408
 304:	460a4381 	sub.s	$f14,$f8,$f10
 308:	e7ac0030 	swc1	$f12,48(sp)
 30c:	0c000000 	jal	0 <EnNiwGirl_Init>
 310:	e7ae002c 	swc1	$f14,44(sp)
 314:	c7ac0030 	lwc1	$f12,48(sp)
 318:	10400003 	beqz	v0,328 <func_80AB9210+0x98>
 31c:	c7ae002c 	lwc1	$f14,44(sp)
 320:	8e090284 	lw	t1,644(s0)
 324:	a52002e8 	sh	zero,744(t1)
 328:	460c6402 	mul.s	$f16,$f12,$f12
 32c:	3c01428c 	lui	at,0x428c
 330:	44812000 	mtc1	at,$f4
 334:	460e7482 	mul.s	$f18,$f14,$f14
 338:	3c014316 	lui	at,0x4316
 33c:	46128080 	add.s	$f2,$f16,$f18
 340:	46001084 	sqrt.s	$f2,$f2
 344:	4604103c 	c.lt.s	$f2,$f4
 348:	00000000 	nop
 34c:	4502000b 	bc1fl	37c <func_80AB9210+0xec>
 350:	44813000 	mtc1	at,$f6
 354:	860a0276 	lh	t2,630(s0)
 358:	8e0c0284 	lw	t4,644(s0)
 35c:	254b0001 	addiu	t3,t2,1
 360:	a58b02e8 	sh	t3,744(t4)
 364:	8fad0034 	lw	t5,52(sp)
 368:	8e180284 	lw	t8,644(s0)
 36c:	91ae0000 	lbu	t6,0(t5)
 370:	10000009 	b	398 <func_80AB9210+0x108>
 374:	a70e02ec 	sh	t6,748(t8)
 378:	44813000 	mtc1	at,$f6
 37c:	00000000 	nop
 380:	4602303c 	c.lt.s	$f6,$f2
 384:	00000000 	nop
 388:	45000003 	bc1f	398 <func_80AB9210+0x108>
 38c:	00000000 	nop
 390:	8e0f0284 	lw	t7,644(s0)
 394:	a5e002e8 	sh	zero,744(t7)
 398:	0c000000 	jal	0 <EnNiwGirl_Init>
 39c:	00000000 	nop
 3a0:	3c010000 	lui	at,0x0
 3a4:	c4280128 	lwc1	$f8,296(at)
 3a8:	c612027c 	lwc1	$f18,636(s0)
 3ac:	afa00010 	sw	zero,16(sp)
 3b0:	46080282 	mul.s	$f10,$f0,$f8
 3b4:	4600910d 	trunc.w.s	$f4,$f18
 3b8:	260400b6 	addiu	a0,s0,182
 3bc:	24060003 	li	a2,3
 3c0:	44072000 	mfc1	a3,$f4
 3c4:	4600540d 	trunc.w.s	$f16,$f10
 3c8:	00073c00 	sll	a3,a3,0x10
 3cc:	00073c03 	sra	a3,a3,0x10
 3d0:	44058000 	mfc1	a1,$f16
 3d4:	00000000 	nop
 3d8:	00052c00 	sll	a1,a1,0x10
 3dc:	0c000000 	jal	0 <EnNiwGirl_Init>
 3e0:	00052c03 	sra	a1,a1,0x10
 3e4:	3c05459c 	lui	a1,0x459c
 3e8:	34a54000 	ori	a1,a1,0x4000
 3ec:	2604027c 	addiu	a0,s0,636
 3f0:	3c0641f0 	lui	a2,0x41f0
 3f4:	0c000000 	jal	0 <EnNiwGirl_Init>
 3f8:	3c074316 	lui	a3,0x4316
 3fc:	860a026c 	lh	t2,620(s0)
 400:	860900b6 	lh	t1,182(s0)
 404:	11400004 	beqz	t2,418 <func_80AB9210+0x188>
 408:	a6090032 	sh	t1,50(s0)
 40c:	0c000000 	jal	0 <EnNiwGirl_Init>
 410:	8fa4003c 	lw	a0,60(sp)
 414:	10400005 	beqz	v0,42c <func_80AB9210+0x19c>
 418:	3c0c0000 	lui	t4,0x0
 41c:	240b003c 	li	t3,60
 420:	258c0000 	addiu	t4,t4,0
 424:	a60b026c 	sh	t3,620(s0)
 428:	ae0c025c 	sw	t4,604(s0)
 42c:	8fbf0024 	lw	ra,36(sp)
 430:	8fb00020 	lw	s0,32(sp)
 434:	27bd0038 	addiu	sp,sp,56
 438:	03e00008 	jr	ra
 43c:	00000000 	nop

00000440 <EnNiwGirl_Talk>:
 440:	27bdffd0 	addiu	sp,sp,-48
 444:	afb00028 	sw	s0,40(sp)
 448:	00808025 	move	s0,a0
 44c:	afbf002c 	sw	ra,44(sp)
 450:	3c040000 	lui	a0,0x0
 454:	afa50034 	sw	a1,52(sp)
 458:	0c000000 	jal	0 <EnNiwGirl_Init>
 45c:	24840000 	addiu	a0,a0,0
 460:	44822000 	mtc1	v0,$f4
 464:	3c01c120 	lui	at,0xc120
 468:	44814000 	mtc1	at,$f8
 46c:	468021a0 	cvt.s.w	$f6,$f4
 470:	3c050000 	lui	a1,0x0
 474:	24a50000 	addiu	a1,a1,0
 478:	2604014c 	addiu	a0,s0,332
 47c:	3c063f80 	lui	a2,0x3f80
 480:	24070000 	li	a3,0
 484:	e7a60010 	swc1	$f6,16(sp)
 488:	afa00014 	sw	zero,20(sp)
 48c:	0c000000 	jal	0 <EnNiwGirl_Init>
 490:	e7a80018 	swc1	$f8,24(sp)
 494:	8e0e0004 	lw	t6,4(s0)
 498:	24187000 	li	t8,28672
 49c:	a618010e 	sh	t8,270(s0)
 4a0:	35cf0001 	ori	t7,t6,0x1
 4a4:	ae0f0004 	sw	t7,4(s0)
 4a8:	3c190000 	lui	t9,0x0
 4ac:	97390ee4 	lhu	t9,3812(t9)
 4b0:	33280001 	andi	t0,t9,0x1
 4b4:	11000006 	beqz	t0,4d0 <EnNiwGirl_Talk+0x90>
 4b8:	00000000 	nop
 4bc:	8609027a 	lh	t1,634(s0)
 4c0:	240a70ea 	li	t2,28906
 4c4:	15200002 	bnez	t1,4d0 <EnNiwGirl_Talk+0x90>
 4c8:	00000000 	nop
 4cc:	a60a010e 	sh	t2,270(s0)
 4d0:	0c000000 	jal	0 <EnNiwGirl_Init>
 4d4:	8fa40034 	lw	a0,52(sp)
 4d8:	244bffff 	addiu	t3,v0,-1
 4dc:	2d610008 	sltiu	at,t3,8
 4e0:	10200011 	beqz	at,528 <EnNiwGirl_Talk+0xe8>
 4e4:	000b5880 	sll	t3,t3,0x2
 4e8:	3c010000 	lui	at,0x0
 4ec:	002b0821 	addu	at,at,t3
 4f0:	8c2b012c 	lw	t3,300(at)
 4f4:	01600008 	jr	t3
 4f8:	00000000 	nop
 4fc:	240c7118 	li	t4,28952
 500:	10000009 	b	528 <EnNiwGirl_Talk+0xe8>
 504:	a60c010e 	sh	t4,270(s0)
 508:	240d7119 	li	t5,28953
 50c:	10000006 	b	528 <EnNiwGirl_Talk+0xe8>
 510:	a60d010e 	sh	t5,270(s0)
 514:	240e711a 	li	t6,28954
 518:	10000003 	b	528 <EnNiwGirl_Talk+0xe8>
 51c:	a60e010e 	sh	t6,270(s0)
 520:	240f711b 	li	t7,28955
 524:	a60f010e 	sh	t7,270(s0)
 528:	3c190000 	lui	t9,0x0
 52c:	24180006 	li	t8,6
 530:	27390000 	addiu	t9,t9,0
 534:	a6180270 	sh	t8,624(s0)
 538:	ae19025c 	sw	t9,604(s0)
 53c:	8fbf002c 	lw	ra,44(sp)
 540:	8fb00028 	lw	s0,40(sp)
 544:	27bd0030 	addiu	sp,sp,48
 548:	03e00008 	jr	ra
 54c:	00000000 	nop

00000550 <func_80AB94D0>:
 550:	27bdffd8 	addiu	sp,sp,-40
 554:	afb00018 	sw	s0,24(sp)
 558:	00808025 	move	s0,a0
 55c:	afbf001c 	sw	ra,28(sp)
 560:	afa5002c 	sw	a1,44(sp)
 564:	0c000000 	jal	0 <EnNiwGirl_Init>
 568:	2484014c 	addiu	a0,a0,332
 56c:	8fa4002c 	lw	a0,44(sp)
 570:	248420d8 	addiu	a0,a0,8408
 574:	0c000000 	jal	0 <EnNiwGirl_Init>
 578:	afa40024 	sw	a0,36(sp)
 57c:	10400003 	beqz	v0,58c <func_80AB94D0+0x3c>
 580:	26040068 	addiu	a0,s0,104
 584:	8e0e0284 	lw	t6,644(s0)
 588:	a5c002e8 	sh	zero,744(t6)
 58c:	3c053f4c 	lui	a1,0x3f4c
 590:	3c063e4c 	lui	a2,0x3e4c
 594:	34c6cccd 	ori	a2,a2,0xcccd
 598:	0c000000 	jal	0 <EnNiwGirl_Init>
 59c:	34a5cccd 	ori	a1,a1,0xcccd
 5a0:	02002025 	move	a0,s0
 5a4:	0c000000 	jal	0 <EnNiwGirl_Init>
 5a8:	8fa5002c 	lw	a1,44(sp)
 5ac:	50400009 	beqzl	v0,5d4 <func_80AB94D0+0x84>
 5b0:	8619026c 	lh	t9,620(s0)
 5b4:	960f010e 	lhu	t7,270(s0)
 5b8:	240170ea 	li	at,28906
 5bc:	24180001 	li	t8,1
 5c0:	55e1001c 	bnel	t7,at,634 <func_80AB94D0+0xe4>
 5c4:	8fbf001c 	lw	ra,28(sp)
 5c8:	10000019 	b	630 <func_80AB94D0+0xe0>
 5cc:	a618027a 	sh	t8,634(s0)
 5d0:	8619026c 	lh	t9,620(s0)
 5d4:	57200013 	bnezl	t9,624 <func_80AB94D0+0xd4>
 5d8:	02002025 	move	a0,s0
 5dc:	0c000000 	jal	0 <EnNiwGirl_Init>
 5e0:	8fa40024 	lw	a0,36(sp)
 5e4:	1440000e 	bnez	v0,620 <func_80AB94D0+0xd0>
 5e8:	3c0142c8 	lui	at,0x42c8
 5ec:	44816000 	mtc1	at,$f12
 5f0:	0c000000 	jal	0 <EnNiwGirl_Init>
 5f4:	00000000 	nop
 5f8:	3c01437a 	lui	at,0x437a
 5fc:	44812000 	mtc1	at,$f4
 600:	3c0a0000 	lui	t2,0x0
 604:	254a0000 	addiu	t2,t2,0
 608:	46040180 	add.s	$f6,$f0,$f4
 60c:	ae0a025c 	sw	t2,604(s0)
 610:	4600320d 	trunc.w.s	$f8,$f6
 614:	44094000 	mfc1	t1,$f8
 618:	10000005 	b	630 <func_80AB94D0+0xe0>
 61c:	a609026c 	sh	t1,620(s0)
 620:	02002025 	move	a0,s0
 624:	8fa5002c 	lw	a1,44(sp)
 628:	0c000000 	jal	0 <EnNiwGirl_Init>
 62c:	3c0642c8 	lui	a2,0x42c8
 630:	8fbf001c 	lw	ra,28(sp)
 634:	8fb00018 	lw	s0,24(sp)
 638:	27bd0028 	addiu	sp,sp,40
 63c:	03e00008 	jr	ra
 640:	00000000 	nop

00000644 <EnNiwGirl_Update>:
 644:	27bdffc8 	addiu	sp,sp,-56
 648:	afbf0024 	sw	ra,36(sp)
 64c:	afb00020 	sw	s0,32(sp)
 650:	afa5003c 	sw	a1,60(sp)
 654:	8caf1c44 	lw	t7,7236(a1)
 658:	3c053c54 	lui	a1,0x3c54
 65c:	00808025 	move	s0,a0
 660:	34a5fdf4 	ori	a1,a1,0xfdf4
 664:	0c000000 	jal	0 <EnNiwGirl_Init>
 668:	afaf002c 	sw	t7,44(sp)
 66c:	8618026e 	lh	t8,622(s0)
 670:	86080274 	lh	t0,628(s0)
 674:	27190001 	addiu	t9,t8,1
 678:	15000010 	bnez	t0,6bc <EnNiwGirl_Update+0x78>
 67c:	a619026e 	sh	t9,622(s0)
 680:	86090272 	lh	t1,626(s0)
 684:	252a0001 	addiu	t2,t1,1
 688:	a60a0272 	sh	t2,626(s0)
 68c:	860b0272 	lh	t3,626(s0)
 690:	29610003 	slti	at,t3,3
 694:	14200009 	bnez	at,6bc <EnNiwGirl_Update+0x78>
 698:	3c014270 	lui	at,0x4270
 69c:	44816000 	mtc1	at,$f12
 6a0:	0c000000 	jal	0 <EnNiwGirl_Init>
 6a4:	a6000272 	sh	zero,626(s0)
 6a8:	4600010d 	trunc.w.s	$f4,$f0
 6ac:	440f2000 	mfc1	t7,$f4
 6b0:	00000000 	nop
 6b4:	25f80014 	addiu	t8,t7,20
 6b8:	a6180274 	sh	t8,628(s0)
 6bc:	3c0141f0 	lui	at,0x41f0
 6c0:	44810000 	mtc1	at,$f0
 6c4:	02002025 	move	a0,s0
 6c8:	44050000 	mfc1	a1,$f0
 6cc:	0c000000 	jal	0 <EnNiwGirl_Init>
 6d0:	e6000280 	swc1	$f0,640(s0)
 6d4:	8e08025c 	lw	t0,604(s0)
 6d8:	3c190000 	lui	t9,0x0
 6dc:	27390000 	addiu	t9,t9,0
 6e0:	17280024 	bne	t9,t0,774 <EnNiwGirl_Update+0x130>
 6e4:	26040268 	addiu	a0,s0,616
 6e8:	8fa2002c 	lw	v0,44(sp)
 6ec:	3c0b0000 	lui	t3,0x0
 6f0:	3c014120 	lui	at,0x4120
 6f4:	8c4a0024 	lw	t2,36(v0)
 6f8:	02002025 	move	a0,s0
 6fc:	260502d4 	addiu	a1,s0,724
 700:	ae0a02ec 	sw	t2,748(s0)
 704:	8c490028 	lw	t1,40(v0)
 708:	24060002 	li	a2,2
 70c:	ae0902f0 	sw	t1,752(s0)
 710:	8c4a002c 	lw	t2,44(v0)
 714:	ae0a02f4 	sw	t2,756(s0)
 718:	8d6b0004 	lw	t3,4(t3)
 71c:	11600006 	beqz	t3,738 <EnNiwGirl_Update+0xf4>
 720:	00000000 	nop
 724:	c4460028 	lwc1	$f6,40(v0)
 728:	44814000 	mtc1	at,$f8
 72c:	00000000 	nop
 730:	46083281 	sub.s	$f10,$f6,$f8
 734:	e60a02f0 	swc1	$f10,752(s0)
 738:	0c000000 	jal	0 <EnNiwGirl_Init>
 73c:	24070004 	li	a3,4
 740:	8a0d02dc 	lwl	t5,732(s0)
 744:	8a0f02e2 	lwl	t7,738(s0)
 748:	9a0d02df 	lwr	t5,735(s0)
 74c:	9a0f02e5 	lwr	t7,741(s0)
 750:	aa0d0260 	swl	t5,608(s0)
 754:	aa0f0266 	swl	t7,614(s0)
 758:	ba0d0263 	swr	t5,611(s0)
 75c:	ba0f0269 	swr	t7,617(s0)
 760:	960d02e0 	lhu	t5,736(s0)
 764:	960f02e6 	lhu	t7,742(s0)
 768:	a60d0264 	sh	t5,612(s0)
 76c:	10000012 	b	7b8 <EnNiwGirl_Update+0x174>
 770:	a60f026a 	sh	t7,618(s0)
 774:	00002825 	move	a1,zero
 778:	24060005 	li	a2,5
 77c:	24070bb8 	li	a3,3000
 780:	0c000000 	jal	0 <EnNiwGirl_Init>
 784:	afa00010 	sw	zero,16(sp)
 788:	26040262 	addiu	a0,s0,610
 78c:	00002825 	move	a1,zero
 790:	24060005 	li	a2,5
 794:	24070bb8 	li	a3,3000
 798:	0c000000 	jal	0 <EnNiwGirl_Init>
 79c:	afa00010 	sw	zero,16(sp)
 7a0:	26040264 	addiu	a0,s0,612
 7a4:	00002825 	move	a1,zero
 7a8:	24060005 	li	a2,5
 7ac:	24070bb8 	li	a3,3000
 7b0:	0c000000 	jal	0 <EnNiwGirl_Init>
 7b4:	afa00010 	sw	zero,16(sp)
 7b8:	86020274 	lh	v0,628(s0)
 7bc:	10400002 	beqz	v0,7c8 <EnNiwGirl_Update+0x184>
 7c0:	2458ffff 	addiu	t8,v0,-1
 7c4:	a6180274 	sh	t8,628(s0)
 7c8:	8602026c 	lh	v0,620(s0)
 7cc:	10400002 	beqz	v0,7d8 <EnNiwGirl_Update+0x194>
 7d0:	2459ffff 	addiu	t9,v0,-1
 7d4:	a619026c 	sh	t9,620(s0)
 7d8:	8e19025c 	lw	t9,604(s0)
 7dc:	02002025 	move	a0,s0
 7e0:	8fa5003c 	lw	a1,60(sp)
 7e4:	0320f809 	jalr	t9
 7e8:	00000000 	nop
 7ec:	0c000000 	jal	0 <EnNiwGirl_Init>
 7f0:	02002025 	move	a0,s0
 7f4:	3c0142c8 	lui	at,0x42c8
 7f8:	44810000 	mtc1	at,$f0
 7fc:	3c014348 	lui	at,0x4348
 800:	44818000 	mtc1	at,$f16
 804:	2408001c 	li	t0,28
 808:	44060000 	mfc1	a2,$f0
 80c:	44070000 	mfc1	a3,$f0
 810:	afa80014 	sw	t0,20(sp)
 814:	8fa4003c 	lw	a0,60(sp)
 818:	02002825 	move	a1,s0
 81c:	0c000000 	jal	0 <EnNiwGirl_Init>
 820:	e7b00010 	swc1	$f16,16(sp)
 824:	26060288 	addiu	a2,s0,648
 828:	00c02825 	move	a1,a2
 82c:	afa60028 	sw	a2,40(sp)
 830:	0c000000 	jal	0 <EnNiwGirl_Init>
 834:	02002025 	move	a0,s0
 838:	8fa4003c 	lw	a0,60(sp)
 83c:	3c010001 	lui	at,0x1
 840:	34211e60 	ori	at,at,0x1e60
 844:	8fa60028 	lw	a2,40(sp)
 848:	0c000000 	jal	0 <EnNiwGirl_Init>
 84c:	00812821 	addu	a1,a0,at
 850:	8fbf0024 	lw	ra,36(sp)
 854:	8fb00020 	lw	s0,32(sp)
 858:	27bd0038 	addiu	sp,sp,56
 85c:	03e00008 	jr	ra
 860:	00000000 	nop

00000864 <EnNiwGirlOverrideLimbDraw>:
 864:	24010003 	li	at,3
 868:	afa40000 	sw	a0,0(sp)
 86c:	afa60008 	sw	a2,8(sp)
 870:	14a10007 	bne	a1,at,890 <EnNiwGirlOverrideLimbDraw+0x2c>
 874:	afa7000c 	sw	a3,12(sp)
 878:	8fa20014 	lw	v0,20(sp)
 87c:	8fa30010 	lw	v1,16(sp)
 880:	844f0268 	lh	t7,616(v0)
 884:	846e0000 	lh	t6,0(v1)
 888:	01cfc021 	addu	t8,t6,t7
 88c:	a4780000 	sh	t8,0(v1)
 890:	24010004 	li	at,4
 894:	8fa20014 	lw	v0,20(sp)
 898:	14a10009 	bne	a1,at,8c0 <EnNiwGirlOverrideLimbDraw+0x5c>
 89c:	8fa30010 	lw	v1,16(sp)
 8a0:	84790000 	lh	t9,0(v1)
 8a4:	84480262 	lh	t0,610(v0)
 8a8:	846a0004 	lh	t2,4(v1)
 8ac:	03284821 	addu	t1,t9,t0
 8b0:	a4690000 	sh	t1,0(v1)
 8b4:	844b0264 	lh	t3,612(v0)
 8b8:	014b6021 	addu	t4,t2,t3
 8bc:	a46c0004 	sh	t4,4(v1)
 8c0:	03e00008 	jr	ra
 8c4:	00001025 	move	v0,zero

000008c8 <EnNiwGirl_Draw>:
 8c8:	27bdffa0 	addiu	sp,sp,-96
 8cc:	3c0f0000 	lui	t7,0x0
 8d0:	afbf002c 	sw	ra,44(sp)
 8d4:	afb10028 	sw	s1,40(sp)
 8d8:	afb00024 	sw	s0,36(sp)
 8dc:	25ef004c 	addiu	t7,t7,76
 8e0:	8df90000 	lw	t9,0(t7)
 8e4:	27ae004c 	addiu	t6,sp,76
 8e8:	8df80004 	lw	t8,4(t7)
 8ec:	add90000 	sw	t9,0(t6)
 8f0:	8df90008 	lw	t9,8(t7)
 8f4:	00a08825 	move	s1,a1
 8f8:	add80004 	sw	t8,4(t6)
 8fc:	add90008 	sw	t9,8(t6)
 900:	8ca50000 	lw	a1,0(a1)
 904:	00808025 	move	s0,a0
 908:	3c060000 	lui	a2,0x0
 90c:	24c600fc 	addiu	a2,a2,252
 910:	27a40038 	addiu	a0,sp,56
 914:	2407023d 	li	a3,573
 918:	0c000000 	jal	0 <EnNiwGirl_Init>
 91c:	afa50048 	sw	a1,72(sp)
 920:	0c000000 	jal	0 <EnNiwGirl_Init>
 924:	8e240000 	lw	a0,0(s1)
 928:	8fa50048 	lw	a1,72(sp)
 92c:	3c09db06 	lui	t1,0xdb06
 930:	35290020 	ori	t1,t1,0x20
 934:	8ca302c0 	lw	v1,704(a1)
 938:	3c040000 	lui	a0,0x0
 93c:	3c180000 	lui	t8,0x0
 940:	24680008 	addiu	t0,v1,8
 944:	aca802c0 	sw	t0,704(a1)
 948:	ac690000 	sw	t1,0(v1)
 94c:	860a0272 	lh	t2,626(s0)
 950:	3c0100ff 	lui	at,0xff
 954:	3421ffff 	ori	at,at,0xffff
 958:	000a5880 	sll	t3,t2,0x2
 95c:	008b2021 	addu	a0,a0,t3
 960:	8c840000 	lw	a0,0(a0)
 964:	3c090000 	lui	t1,0x0
 968:	25290000 	addiu	t1,t1,0
 96c:	00046900 	sll	t5,a0,0x4
 970:	000d7702 	srl	t6,t5,0x1c
 974:	000e7880 	sll	t7,t6,0x2
 978:	030fc021 	addu	t8,t8,t7
 97c:	8f180000 	lw	t8,0(t8)
 980:	00816024 	and	t4,a0,at
 984:	3c018000 	lui	at,0x8000
 988:	0198c821 	addu	t9,t4,t8
 98c:	03214021 	addu	t0,t9,at
 990:	ac680004 	sw	t0,4(v1)
 994:	9207014e 	lbu	a3,334(s0)
 998:	8e06016c 	lw	a2,364(s0)
 99c:	8e050150 	lw	a1,336(s0)
 9a0:	afb00018 	sw	s0,24(sp)
 9a4:	afa00014 	sw	zero,20(sp)
 9a8:	afa90010 	sw	t1,16(sp)
 9ac:	0c000000 	jal	0 <EnNiwGirl_Init>
 9b0:	02202025 	move	a0,s1
 9b4:	26040024 	addiu	a0,s0,36
 9b8:	27a5004c 	addiu	a1,sp,76
 9bc:	240600ff 	li	a2,255
 9c0:	0c000000 	jal	0 <EnNiwGirl_Init>
 9c4:	02203825 	move	a3,s1
 9c8:	3c060000 	lui	a2,0x0
 9cc:	24c60110 	addiu	a2,a2,272
 9d0:	27a40038 	addiu	a0,sp,56
 9d4:	8e250000 	lw	a1,0(s1)
 9d8:	0c000000 	jal	0 <EnNiwGirl_Init>
 9dc:	24070250 	li	a3,592
 9e0:	8fbf002c 	lw	ra,44(sp)
 9e4:	8fb00024 	lw	s0,36(sp)
 9e8:	8fb10028 	lw	s1,40(sp)
 9ec:	03e00008 	jr	ra
 9f0:	27bd0060 	addiu	sp,sp,96
	...
