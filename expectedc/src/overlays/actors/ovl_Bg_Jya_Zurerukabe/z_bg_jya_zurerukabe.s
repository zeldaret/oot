
build/src/overlays/actors/ovl_Bg_Jya_Zurerukabe/z_bg_jya_zurerukabe.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8089B440>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0024 	sw	ra,36(sp)
   8:	afb00020 	sw	s0,32(sp)
   c:	afa5003c 	sw	a1,60(sp)
  10:	00808025 	move	s0,a0
  14:	afa60040 	sw	a2,64(sp)
  18:	afa00030 	sw	zero,48(sp)
  1c:	0c000000 	jal	0 <func_8089B440>
  20:	00e02825 	move	a1,a3
  24:	8fa40040 	lw	a0,64(sp)
  28:	0c000000 	jal	0 <func_8089B440>
  2c:	27a50030 	addiu	a1,sp,48
  30:	8fa4003c 	lw	a0,60(sp)
  34:	02003025 	move	a2,s0
  38:	8fa70030 	lw	a3,48(sp)
  3c:	0c000000 	jal	0 <func_8089B440>
  40:	24850810 	addiu	a1,a0,2064
  44:	24010032 	li	at,50
  48:	1441000a 	bne	v0,at,74 <func_8089B440+0x74>
  4c:	ae02014c 	sw	v0,332(s0)
  50:	860e001c 	lh	t6,28(s0)
  54:	3c040000 	lui	a0,0x0
  58:	3c050000 	lui	a1,0x0
  5c:	86070000 	lh	a3,0(s0)
  60:	24a50040 	addiu	a1,a1,64
  64:	24840000 	addiu	a0,a0,0
  68:	240600c2 	li	a2,194
  6c:	0c000000 	jal	0 <func_8089B440>
  70:	afae0010 	sw	t6,16(sp)
  74:	8fbf0024 	lw	ra,36(sp)
  78:	8fb00020 	lw	s0,32(sp)
  7c:	27bd0038 	addiu	sp,sp,56
  80:	03e00008 	jr	ra
  84:	00000000 	nop

00000088 <func_8089B4C8>:
  88:	27bdffe0 	addiu	sp,sp,-32
  8c:	afbf001c 	sw	ra,28(sp)
  90:	afa40020 	sw	a0,32(sp)
  94:	afa50024 	sw	a1,36(sp)
  98:	8ca61c44 	lw	a2,7236(a1)
  9c:	3c010020 	lui	at,0x20
  a0:	8ccf067c 	lw	t7,1660(a2)
  a4:	55e1005b 	bnel	t7,at,214 <func_8089B4C8+0x18c>
  a8:	8fbf001c 	lw	ra,28(sp)
  ac:	8cd80074 	lw	t8,116(a2)
  b0:	3c020000 	lui	v0,0x0
  b4:	24420058 	addiu	v0,v0,88
  b8:	13000055 	beqz	t8,210 <func_8089B4C8+0x188>
  bc:	00001825 	move	v1,zero
  c0:	c4c00028 	lwc1	$f0,40(a2)
  c4:	24040006 	li	a0,6
  c8:	84590000 	lh	t9,0(v0)
  cc:	44992000 	mtc1	t9,$f4
  d0:	00000000 	nop
  d4:	468021a0 	cvt.s.w	$f6,$f4
  d8:	4600303e 	c.le.s	$f6,$f0
  dc:	00000000 	nop
  e0:	4502000a 	bc1fl	10c <func_8089B4C8+0x84>
  e4:	24630001 	addiu	v1,v1,1
  e8:	84480002 	lh	t0,2(v0)
  ec:	44884000 	mtc1	t0,$f8
  f0:	00000000 	nop
  f4:	468042a0 	cvt.s.w	$f10,$f8
  f8:	460a003e 	c.le.s	$f0,$f10
  fc:	00000000 	nop
 100:	45030005 	bc1tl	118 <func_8089B4C8+0x90>
 104:	2c610006 	sltiu	at,v1,6
 108:	24630001 	addiu	v1,v1,1
 10c:	1464ffee 	bne	v1,a0,c8 <func_8089B4C8+0x40>
 110:	24420004 	addiu	v0,v0,4
 114:	2c610006 	sltiu	at,v1,6
 118:	1020003d 	beqz	at,210 <func_8089B4C8+0x188>
 11c:	00034880 	sll	t1,v1,0x2
 120:	3c010000 	lui	at,0x0
 124:	00290821 	addu	at,at,t1
 128:	8c2900e4 	lw	t1,228(at)
 12c:	01200008 	jr	t1
 130:	00000000 	nop
 134:	00035040 	sll	t2,v1,0x1
 138:	3c0b0000 	lui	t3,0x0
 13c:	016a5821 	addu	t3,t3,t2
 140:	856b0070 	lh	t3,112(t3)
 144:	3c040000 	lui	a0,0x0
 148:	24840000 	addiu	a0,a0,0
 14c:	000b6080 	sll	t4,t3,0x2
 150:	008c6821 	addu	t5,a0,t4
 154:	c5a00000 	lwc1	$f0,0(t5)
 158:	3c013f80 	lui	at,0x3f80
 15c:	44818000 	mtc1	at,$f16
 160:	46000005 	abs.s	$f0,$f0
 164:	8fa40024 	lw	a0,36(sp)
 168:	4600803c 	c.lt.s	$f16,$f0
 16c:	8fa50020 	lw	a1,32(sp)
 170:	3c063fc0 	lui	a2,0x3fc0
 174:	45020027 	bc1fl	214 <func_8089B4C8+0x18c>
 178:	8fbf001c 	lw	ra,28(sp)
 17c:	44809000 	mtc1	zero,$f18
 180:	84a700b6 	lh	a3,182(a1)
 184:	afa00014 	sw	zero,20(sp)
 188:	0c000000 	jal	0 <func_8089B440>
 18c:	e7b20010 	swc1	$f18,16(sp)
 190:	10000020 	b	214 <func_8089B4C8+0x18c>
 194:	8fbf001c 	lw	ra,28(sp)
 198:	3c180000 	lui	t8,0x0
 19c:	27180070 	addiu	t8,t8,112
 1a0:	00037840 	sll	t7,v1,0x1
 1a4:	01f81021 	addu	v0,t7,t8
 1a8:	84590000 	lh	t9,0(v0)
 1ac:	844a0002 	lh	t2,2(v0)
 1b0:	3c040000 	lui	a0,0x0
 1b4:	24840000 	addiu	a0,a0,0
 1b8:	00194080 	sll	t0,t9,0x2
 1bc:	000a5880 	sll	t3,t2,0x2
 1c0:	008b6021 	addu	t4,a0,t3
 1c4:	00884821 	addu	t1,a0,t0
 1c8:	c5240000 	lwc1	$f4,0(t1)
 1cc:	c5860000 	lwc1	$f6,0(t4)
 1d0:	3c013f80 	lui	at,0x3f80
 1d4:	44814000 	mtc1	at,$f8
 1d8:	46062001 	sub.s	$f0,$f4,$f6
 1dc:	8fa40024 	lw	a0,36(sp)
 1e0:	8fa50020 	lw	a1,32(sp)
 1e4:	3c063fc0 	lui	a2,0x3fc0
 1e8:	46000005 	abs.s	$f0,$f0
 1ec:	4600403c 	c.lt.s	$f8,$f0
 1f0:	00000000 	nop
 1f4:	45020007 	bc1fl	214 <func_8089B4C8+0x18c>
 1f8:	8fbf001c 	lw	ra,28(sp)
 1fc:	44805000 	mtc1	zero,$f10
 200:	84a700b6 	lh	a3,182(a1)
 204:	afa00014 	sw	zero,20(sp)
 208:	0c000000 	jal	0 <func_8089B440>
 20c:	e7aa0010 	swc1	$f10,16(sp)
 210:	8fbf001c 	lw	ra,28(sp)
 214:	27bd0020 	addiu	sp,sp,32
 218:	03e00008 	jr	ra
 21c:	00000000 	nop

00000220 <BgJyaZurerukabe_Init>:
 220:	27bdffe0 	addiu	sp,sp,-32
 224:	afbf001c 	sw	ra,28(sp)
 228:	afb00018 	sw	s0,24(sp)
 22c:	3c060000 	lui	a2,0x0
 230:	00808025 	move	s0,a0
 234:	24c60000 	addiu	a2,a2,0
 238:	0c000000 	jal	0 <func_8089B440>
 23c:	00003825 	move	a3,zero
 240:	3c050000 	lui	a1,0x0
 244:	24a5007c 	addiu	a1,a1,124
 248:	0c000000 	jal	0 <func_8089B440>
 24c:	02002025 	move	a0,s0
 250:	3c013f80 	lui	at,0x3f80
 254:	3c030000 	lui	v1,0x0
 258:	44816000 	mtc1	at,$f12
 25c:	24630030 	addiu	v1,v1,48
 260:	00001025 	move	v0,zero
 264:	c602000c 	lwc1	$f2,12(s0)
 268:	24040004 	li	a0,4
 26c:	846e0000 	lh	t6,0(v1)
 270:	448e2000 	mtc1	t6,$f4
 274:	00000000 	nop
 278:	468021a0 	cvt.s.w	$f6,$f4
 27c:	46023001 	sub.s	$f0,$f6,$f2
 280:	46000005 	abs.s	$f0,$f0
 284:	460c003c 	c.lt.s	$f0,$f12
 288:	00000000 	nop
 28c:	45020004 	bc1fl	2a0 <BgJyaZurerukabe_Init+0x80>
 290:	24420001 	addiu	v0,v0,1
 294:	10000004 	b	2a8 <BgJyaZurerukabe_Init+0x88>
 298:	a6020168 	sh	v0,360(s0)
 29c:	24420001 	addiu	v0,v0,1
 2a0:	1444fff2 	bne	v0,a0,26c <BgJyaZurerukabe_Init+0x4c>
 2a4:	24630002 	addiu	v1,v1,2
 2a8:	3c0f0000 	lui	t7,0x0
 2ac:	25ef0038 	addiu	t7,t7,56
 2b0:	146f000d 	bne	v1,t7,2e8 <BgJyaZurerukabe_Init+0xc8>
 2b4:	3c040000 	lui	a0,0x0
 2b8:	0c000000 	jal	0 <func_8089B440>
 2bc:	2484005c 	addiu	a0,a0,92
 2c0:	3c040000 	lui	a0,0x0
 2c4:	3c050000 	lui	a1,0x0
 2c8:	24a500a0 	addiu	a1,a1,160
 2cc:	24840068 	addiu	a0,a0,104
 2d0:	2406012b 	li	a2,299
 2d4:	0c000000 	jal	0 <func_8089B440>
 2d8:	8607001c 	lh	a3,28(s0)
 2dc:	3c040000 	lui	a0,0x0
 2e0:	0c000000 	jal	0 <func_8089B440>
 2e4:	248400bc 	addiu	a0,a0,188
 2e8:	86180168 	lh	t8,360(s0)
 2ec:	3c080000 	lui	t0,0x0
 2f0:	02002025 	move	a0,s0
 2f4:	0018c840 	sll	t9,t8,0x1
 2f8:	01194021 	addu	t0,t0,t9
 2fc:	85080038 	lh	t0,56(t0)
 300:	0c000000 	jal	0 <func_8089B440>
 304:	a608016e 	sh	t0,366(s0)
 308:	3c040000 	lui	a0,0x0
 30c:	248400c0 	addiu	a0,a0,192
 310:	0c000000 	jal	0 <func_8089B440>
 314:	8605001c 	lh	a1,28(s0)
 318:	8fbf001c 	lw	ra,28(sp)
 31c:	8fb00018 	lw	s0,24(sp)
 320:	27bd0020 	addiu	sp,sp,32
 324:	03e00008 	jr	ra
 328:	00000000 	nop

0000032c <BgJyaZurerukabe_Destroy>:
 32c:	27bdffe8 	addiu	sp,sp,-24
 330:	afa40018 	sw	a0,24(sp)
 334:	8fae0018 	lw	t6,24(sp)
 338:	afbf0014 	sw	ra,20(sp)
 33c:	00a02025 	move	a0,a1
 340:	24a50810 	addiu	a1,a1,2064
 344:	0c000000 	jal	0 <func_8089B440>
 348:	8dc6014c 	lw	a2,332(t6)
 34c:	8faf0018 	lw	t7,24(sp)
 350:	8fbf0014 	lw	ra,20(sp)
 354:	44802000 	mtc1	zero,$f4
 358:	85f80168 	lh	t8,360(t7)
 35c:	3c010000 	lui	at,0x0
 360:	27bd0018 	addiu	sp,sp,24
 364:	0018c880 	sll	t9,t8,0x2
 368:	00390821 	addu	at,at,t9
 36c:	03e00008 	jr	ra
 370:	e4240000 	swc1	$f4,0(at)

00000374 <func_8089B7B4>:
 374:	3c0e0000 	lui	t6,0x0
 378:	25ce0000 	addiu	t6,t6,0
 37c:	03e00008 	jr	ra
 380:	ac8e0164 	sw	t6,356(a0)

00000384 <func_8089B7C4>:
 384:	27bdffe8 	addiu	sp,sp,-24
 388:	afbf0014 	sw	ra,20(sp)
 38c:	afa5001c 	sw	a1,28(sp)
 390:	848e016a 	lh	t6,362(a0)
 394:	5dc00005 	bgtzl	t6,3ac <func_8089B7C4+0x28>
 398:	848f0168 	lh	t7,360(a0)
 39c:	0c000000 	jal	0 <func_8089B440>
 3a0:	afa40018 	sw	a0,24(sp)
 3a4:	8fa40018 	lw	a0,24(sp)
 3a8:	848f0168 	lh	t7,360(a0)
 3ac:	8fbf0014 	lw	ra,20(sp)
 3b0:	44802000 	mtc1	zero,$f4
 3b4:	3c010000 	lui	at,0x0
 3b8:	000fc080 	sll	t8,t7,0x2
 3bc:	00380821 	addu	at,at,t8
 3c0:	27bd0018 	addiu	sp,sp,24
 3c4:	03e00008 	jr	ra
 3c8:	e4240000 	swc1	$f4,0(at)

000003cc <func_8089B80C>:
 3cc:	848f0168 	lh	t7,360(a0)
 3d0:	3c0e0000 	lui	t6,0x0
 3d4:	25ce0000 	addiu	t6,t6,0
 3d8:	3c190000 	lui	t9,0x0
 3dc:	000fc040 	sll	t8,t7,0x1
 3e0:	8482016c 	lh	v0,364(a0)
 3e4:	ac8e0164 	sw	t6,356(a0)
 3e8:	0338c821 	addu	t9,t9,t8
 3ec:	87390040 	lh	t9,64(t9)
 3f0:	24010004 	li	at,4
 3f4:	04400003 	bltz	v0,404 <func_8089B80C+0x38>
 3f8:	a499016a 	sh	t9,362(a0)
 3fc:	10000002 	b	408 <func_8089B80C+0x3c>
 400:	00401825 	move	v1,v0
 404:	00021823 	negu	v1,v0
 408:	54610006 	bnel	v1,at,424 <func_8089B80C+0x58>
 40c:	848a016e 	lh	t2,366(a0)
 410:	8488016e 	lh	t0,366(a0)
 414:	8482016c 	lh	v0,364(a0)
 418:	00084823 	negu	t1,t0
 41c:	a489016e 	sh	t1,366(a0)
 420:	848a016e 	lh	t2,366(a0)
 424:	004a5821 	addu	t3,v0,t2
 428:	03e00008 	jr	ra
 42c:	a48b016c 	sh	t3,364(a0)

00000430 <func_8089B870>:
 430:	27bdffe8 	addiu	sp,sp,-24
 434:	afbf0014 	sw	ra,20(sp)
 438:	afa5001c 	sw	a1,28(sp)
 43c:	00803825 	move	a3,a0
 440:	84ee016c 	lh	t6,364(a3)
 444:	c4e40008 	lwc1	$f4,8(a3)
 448:	84f80168 	lh	t8,360(a3)
 44c:	000e7880 	sll	t7,t6,0x2
 450:	01ee7821 	addu	t7,t7,t6
 454:	000f7880 	sll	t7,t7,0x2
 458:	01ee7823 	subu	t7,t7,t6
 45c:	000f7880 	sll	t7,t7,0x2
 460:	01ee7823 	subu	t7,t7,t6
 464:	448f3000 	mtc1	t7,$f6
 468:	3c060000 	lui	a2,0x0
 46c:	0018c880 	sll	t9,t8,0x2
 470:	46803220 	cvt.s.w	$f8,$f6
 474:	00d93021 	addu	a2,a2,t9
 478:	8cc60048 	lw	a2,72(a2)
 47c:	afa70018 	sw	a3,24(sp)
 480:	24840024 	addiu	a0,a0,36
 484:	46082280 	add.s	$f10,$f4,$f8
 488:	44055000 	mfc1	a1,$f10
 48c:	0c000000 	jal	0 <func_8089B440>
 490:	00000000 	nop
 494:	10400005 	beqz	v0,4ac <func_8089B870+0x7c>
 498:	8fa70018 	lw	a3,24(sp)
 49c:	00e02025 	move	a0,a3
 4a0:	0c000000 	jal	0 <func_8089B440>
 4a4:	afa70018 	sw	a3,24(sp)
 4a8:	8fa70018 	lw	a3,24(sp)
 4ac:	84e8016e 	lh	t0,366(a3)
 4b0:	84e20168 	lh	v0,360(a3)
 4b4:	3c010000 	lui	at,0x0
 4b8:	44889000 	mtc1	t0,$f18
 4bc:	00021080 	sll	v0,v0,0x2
 4c0:	00220821 	addu	at,at,v0
 4c4:	468091a0 	cvt.s.w	$f6,$f18
 4c8:	c4300048 	lwc1	$f16,72(at)
 4cc:	3c010000 	lui	at,0x0
 4d0:	00220821 	addu	at,at,v0
 4d4:	00e02025 	move	a0,a3
 4d8:	24052024 	li	a1,8228
 4dc:	46068102 	mul.s	$f4,$f16,$f6
 4e0:	0c000000 	jal	0 <func_8089B440>
 4e4:	e4240000 	swc1	$f4,0(at)
 4e8:	8fbf0014 	lw	ra,20(sp)
 4ec:	27bd0018 	addiu	sp,sp,24
 4f0:	03e00008 	jr	ra
 4f4:	00000000 	nop

000004f8 <BgJyaZurerukabe_Update>:
 4f8:	27bdffe8 	addiu	sp,sp,-24
 4fc:	afbf0014 	sw	ra,20(sp)
 500:	afa5001c 	sw	a1,28(sp)
 504:	8482016a 	lh	v0,362(a0)
 508:	18400002 	blez	v0,514 <BgJyaZurerukabe_Update+0x1c>
 50c:	244effff 	addiu	t6,v0,-1
 510:	a48e016a 	sh	t6,362(a0)
 514:	afa40018 	sw	a0,24(sp)
 518:	8c990164 	lw	t9,356(a0)
 51c:	8fa5001c 	lw	a1,28(sp)
 520:	0320f809 	jalr	t9
 524:	00000000 	nop
 528:	8fa40018 	lw	a0,24(sp)
 52c:	848f0168 	lh	t7,360(a0)
 530:	55e00004 	bnezl	t7,544 <BgJyaZurerukabe_Update+0x4c>
 534:	8fbf0014 	lw	ra,20(sp)
 538:	0c000000 	jal	0 <func_8089B440>
 53c:	8fa5001c 	lw	a1,28(sp)
 540:	8fbf0014 	lw	ra,20(sp)
 544:	27bd0018 	addiu	sp,sp,24
 548:	03e00008 	jr	ra
 54c:	00000000 	nop

00000550 <BgJyaZurerukabe_Draw>:
 550:	27bdffe8 	addiu	sp,sp,-24
 554:	afa40018 	sw	a0,24(sp)
 558:	00a02025 	move	a0,a1
 55c:	afbf0014 	sw	ra,20(sp)
 560:	3c050000 	lui	a1,0x0
 564:	0c000000 	jal	0 <func_8089B440>
 568:	24a50000 	addiu	a1,a1,0
 56c:	8fbf0014 	lw	ra,20(sp)
 570:	27bd0018 	addiu	sp,sp,24
 574:	03e00008 	jr	ra
 578:	00000000 	nop
 57c:	00000000 	nop
