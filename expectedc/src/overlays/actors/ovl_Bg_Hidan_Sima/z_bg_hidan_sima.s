
build/src/overlays/actors/ovl_Bg_Hidan_Sima/z_bg_hidan_sima.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHidanSima_Init>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afa50044 	sw	a1,68(sp)
   8:	afbf0024 	sw	ra,36(sp)
   c:	afb00020 	sw	s0,32(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00034 	sw	zero,52(sp)
  1c:	0c000000 	jal	0 <BgHidanSima_Init>
  20:	24a50000 	addiu	a1,a1,0
  24:	02002025 	move	a0,s0
  28:	0c000000 	jal	0 <BgHidanSima_Init>
  2c:	24050001 	li	a1,1
  30:	860e001c 	lh	t6,28(s0)
  34:	3c040601 	lui	a0,0x601
  38:	27a50034 	addiu	a1,sp,52
  3c:	15c00006 	bnez	t6,58 <BgHidanSima_Init+0x58>
  40:	2484fae8 	addiu	a0,a0,-1304
  44:	3c040601 	lui	a0,0x601
  48:	0c000000 	jal	0 <BgHidanSima_Init>
  4c:	248420e8 	addiu	a0,a0,8424
  50:	10000004 	b	64 <BgHidanSima_Init+0x64>
  54:	8fa40044 	lw	a0,68(sp)
  58:	0c000000 	jal	0 <BgHidanSima_Init>
  5c:	27a50034 	addiu	a1,sp,52
  60:	8fa40044 	lw	a0,68(sp)
  64:	02003025 	move	a2,s0
  68:	8fa70034 	lw	a3,52(sp)
  6c:	0c000000 	jal	0 <BgHidanSima_Init>
  70:	24850810 	addiu	a1,a0,2064
  74:	ae02014c 	sw	v0,332(s0)
  78:	2605016c 	addiu	a1,s0,364
  7c:	afa5002c 	sw	a1,44(sp)
  80:	0c000000 	jal	0 <BgHidanSima_Init>
  84:	8fa40044 	lw	a0,68(sp)
  88:	3c070000 	lui	a3,0x0
  8c:	260f018c 	addiu	t7,s0,396
  90:	8fa5002c 	lw	a1,44(sp)
  94:	afaf0010 	sw	t7,16(sp)
  98:	24e70000 	addiu	a3,a3,0
  9c:	8fa40044 	lw	a0,68(sp)
  a0:	0c000000 	jal	0 <BgHidanSima_Init>
  a4:	02003025 	move	a2,s0
  a8:	00001825 	move	v1,zero
  ac:	24040080 	li	a0,128
  b0:	8e180188 	lw	t8,392(s0)
  b4:	03031021 	addu	v0,t8,v1
  b8:	8459002e 	lh	t9,46(v0)
  bc:	24630040 	addiu	v1,v1,64
  c0:	1464fffb 	bne	v1,a0,b0 <BgHidanSima_Init+0xb0>
  c4:	a4590036 	sh	t9,54(v0)
  c8:	8608001c 	lh	t0,28(s0)
  cc:	3c0a0000 	lui	t2,0x0
  d0:	3c090000 	lui	t1,0x0
  d4:	15000004 	bnez	t0,e8 <BgHidanSima_Init+0xe8>
  d8:	254a0000 	addiu	t2,t2,0
  dc:	25290000 	addiu	t1,t1,0
  e0:	10000002 	b	ec <BgHidanSima_Init+0xec>
  e4:	ae090164 	sw	t1,356(s0)
  e8:	ae0a0164 	sw	t2,356(s0)
  ec:	8fbf0024 	lw	ra,36(sp)
  f0:	8fb00020 	lw	s0,32(sp)
  f4:	27bd0040 	addiu	sp,sp,64
  f8:	03e00008 	jr	ra
  fc:	00000000 	nop

00000100 <BgHidanSima_Destroy>:
 100:	27bdffe8 	addiu	sp,sp,-24
 104:	afa40018 	sw	a0,24(sp)
 108:	8fae0018 	lw	t6,24(sp)
 10c:	afbf0014 	sw	ra,20(sp)
 110:	00a03825 	move	a3,a1
 114:	00a02025 	move	a0,a1
 118:	8dc6014c 	lw	a2,332(t6)
 11c:	afa7001c 	sw	a3,28(sp)
 120:	0c000000 	jal	0 <BgHidanSima_Init>
 124:	24a50810 	addiu	a1,a1,2064
 128:	8fa50018 	lw	a1,24(sp)
 12c:	8fa4001c 	lw	a0,28(sp)
 130:	0c000000 	jal	0 <BgHidanSima_Init>
 134:	24a5016c 	addiu	a1,a1,364
 138:	8fbf0014 	lw	ra,20(sp)
 13c:	27bd0018 	addiu	sp,sp,24
 140:	03e00008 	jr	ra
 144:	00000000 	nop

00000148 <func_8088E518>:
 148:	27bdffd8 	addiu	sp,sp,-40
 14c:	afbf001c 	sw	ra,28(sp)
 150:	afb00018 	sw	s0,24(sp)
 154:	afa5002c 	sw	a1,44(sp)
 158:	8caf1c44 	lw	t7,7236(a1)
 15c:	00808025 	move	s0,a0
 160:	3c064059 	lui	a2,0x4059
 164:	afaf0024 	sw	t7,36(sp)
 168:	8e05000c 	lw	a1,12(s0)
 16c:	34c6999a 	ori	a2,a2,0x999a
 170:	0c000000 	jal	0 <BgHidanSima_Init>
 174:	24840028 	addiu	a0,a0,40
 178:	0c000000 	jal	0 <BgHidanSima_Init>
 17c:	02002025 	move	a0,s0
 180:	1040001a 	beqz	v0,1ec <func_8088E518+0xa4>
 184:	8fb80024 	lw	t8,36(sp)
 188:	8f19067c 	lw	t9,1660(t8)
 18c:	8fa2002c 	lw	v0,44(sp)
 190:	24090014 	li	t1,20
 194:	33286000 	andi	t0,t9,0x6000
 198:	55000015 	bnezl	t0,1f0 <func_8088E518+0xa8>
 19c:	8fbf001c 	lw	ra,28(sp)
 1a0:	a6090168 	sh	t1,360(s0)
 1a4:	844a07a0 	lh	t2,1952(v0)
 1a8:	000a5880 	sll	t3,t2,0x2
 1ac:	004b6021 	addu	t4,v0,t3
 1b0:	0c000000 	jal	0 <BgHidanSima_Init>
 1b4:	8d840790 	lw	a0,1936(t4)
 1b8:	c6040028 	lwc1	$f4,40(s0)
 1bc:	c606000c 	lwc1	$f6,12(s0)
 1c0:	244d4000 	addiu	t5,v0,16384
 1c4:	3c0e0000 	lui	t6,0x0
 1c8:	4604303e 	c.le.s	$f6,$f4
 1cc:	3c0f0000 	lui	t7,0x0
 1d0:	a60d0032 	sh	t5,50(s0)
 1d4:	25ce0000 	addiu	t6,t6,0
 1d8:	45000003 	bc1f	1e8 <func_8088E518+0xa0>
 1dc:	25ef0000 	addiu	t7,t7,0
 1e0:	10000002 	b	1ec <func_8088E518+0xa4>
 1e4:	ae0e0164 	sw	t6,356(s0)
 1e8:	ae0f0164 	sw	t7,356(s0)
 1ec:	8fbf001c 	lw	ra,28(sp)
 1f0:	8fb00018 	lw	s0,24(sp)
 1f4:	27bd0028 	addiu	sp,sp,40
 1f8:	03e00008 	jr	ra
 1fc:	00000000 	nop

00000200 <func_8088E5D0>:
 200:	27bdffe0 	addiu	sp,sp,-32
 204:	afbf001c 	sw	ra,28(sp)
 208:	afb00018 	sw	s0,24(sp)
 20c:	afa50024 	sw	a1,36(sp)
 210:	84820168 	lh	v0,360(a0)
 214:	00808025 	move	s0,a0
 218:	3c0a0000 	lui	t2,0x0
 21c:	10400003 	beqz	v0,22c <func_8088E5D0+0x2c>
 220:	244effff 	addiu	t6,v0,-1
 224:	a48e0168 	sh	t6,360(a0)
 228:	84820168 	lh	v0,360(a0)
 22c:	1040001b 	beqz	v0,29c <func_8088E5D0+0x9c>
 230:	254a0000 	addiu	t2,t2,0
 234:	860f0032 	lh	t7,50(s0)
 238:	0002c380 	sll	t8,v0,0xe
 23c:	01f82021 	addu	a0,t7,t8
 240:	00042400 	sll	a0,a0,0x10
 244:	0c000000 	jal	0 <BgHidanSima_Init>
 248:	00042403 	sra	a0,a0,0x10
 24c:	3c0140a0 	lui	at,0x40a0
 250:	44812000 	mtc1	at,$f4
 254:	c6080008 	lwc1	$f8,8(s0)
 258:	86080168 	lh	t0,360(s0)
 25c:	46040182 	mul.s	$f6,$f0,$f4
 260:	86190032 	lh	t9,50(s0)
 264:	00084b80 	sll	t1,t0,0xe
 268:	03292021 	addu	a0,t9,t1
 26c:	00042400 	sll	a0,a0,0x10
 270:	00042403 	sra	a0,a0,0x10
 274:	46083280 	add.s	$f10,$f6,$f8
 278:	0c000000 	jal	0 <BgHidanSima_Init>
 27c:	e60a0024 	swc1	$f10,36(s0)
 280:	3c0140a0 	lui	at,0x40a0
 284:	44818000 	mtc1	at,$f16
 288:	c6040010 	lwc1	$f4,16(s0)
 28c:	46100482 	mul.s	$f18,$f0,$f16
 290:	46049180 	add.s	$f6,$f18,$f4
 294:	10000006 	b	2b0 <func_8088E5D0+0xb0>
 298:	e606002c 	swc1	$f6,44(s0)
 29c:	c6080008 	lwc1	$f8,8(s0)
 2a0:	c60a0010 	lwc1	$f10,16(s0)
 2a4:	ae0a0164 	sw	t2,356(s0)
 2a8:	e6080024 	swc1	$f8,36(s0)
 2ac:	e60a002c 	swc1	$f10,44(s0)
 2b0:	860b0168 	lh	t3,360(s0)
 2b4:	240500b4 	li	a1,180
 2b8:	2406000a 	li	a2,10
 2bc:	05610004 	bgez	t3,2d0 <func_8088E5D0+0xd0>
 2c0:	316c0003 	andi	t4,t3,0x3
 2c4:	11800002 	beqz	t4,2d0 <func_8088E5D0+0xd0>
 2c8:	00000000 	nop
 2cc:	258cfffc 	addiu	t4,t4,-4
 2d0:	15800006 	bnez	t4,2ec <func_8088E5D0+0xec>
 2d4:	24070064 	li	a3,100
 2d8:	0c000000 	jal	0 <BgHidanSima_Init>
 2dc:	c60c008c 	lwc1	$f12,140(s0)
 2e0:	02002025 	move	a0,s0
 2e4:	0c000000 	jal	0 <BgHidanSima_Init>
 2e8:	24052838 	li	a1,10296
 2ec:	8fbf001c 	lw	ra,28(sp)
 2f0:	8fb00018 	lw	s0,24(sp)
 2f4:	27bd0020 	addiu	sp,sp,32
 2f8:	03e00008 	jr	ra
 2fc:	00000000 	nop

00000300 <func_8088E6D0>:
 300:	27bdffe8 	addiu	sp,sp,-24
 304:	afbf0014 	sw	ra,20(sp)
 308:	afa5001c 	sw	a1,28(sp)
 30c:	0c000000 	jal	0 <BgHidanSima_Init>
 310:	afa40018 	sw	a0,24(sp)
 314:	10400004 	beqz	v0,328 <func_8088E6D0+0x28>
 318:	8fa70018 	lw	a3,24(sp)
 31c:	240e0014 	li	t6,20
 320:	10000005 	b	338 <func_8088E6D0+0x38>
 324:	a4ee0168 	sh	t6,360(a3)
 328:	84e20168 	lh	v0,360(a3)
 32c:	10400002 	beqz	v0,338 <func_8088E6D0+0x38>
 330:	244fffff 	addiu	t7,v0,-1
 334:	a4ef0168 	sh	t7,360(a3)
 338:	3c0142c8 	lui	at,0x42c8
 33c:	44813000 	mtc1	at,$f6
 340:	c4e4000c 	lwc1	$f4,12(a3)
 344:	3c063fd9 	lui	a2,0x3fd9
 348:	34c6999a 	ori	a2,a2,0x999a
 34c:	46062201 	sub.s	$f8,$f4,$f6
 350:	afa70018 	sw	a3,24(sp)
 354:	24e40028 	addiu	a0,a3,40
 358:	44054000 	mfc1	a1,$f8
 35c:	0c000000 	jal	0 <BgHidanSima_Init>
 360:	00000000 	nop
 364:	8fa70018 	lw	a3,24(sp)
 368:	3c190000 	lui	t9,0x0
 36c:	27390000 	addiu	t9,t9,0
 370:	84f80168 	lh	t8,360(a3)
 374:	57000003 	bnezl	t8,384 <func_8088E6D0+0x84>
 378:	8fbf0014 	lw	ra,20(sp)
 37c:	acf90164 	sw	t9,356(a3)
 380:	8fbf0014 	lw	ra,20(sp)
 384:	27bd0018 	addiu	sp,sp,24
 388:	03e00008 	jr	ra
 38c:	00000000 	nop

00000390 <func_8088E760>:
 390:	afa50004 	sw	a1,4(sp)
 394:	84820168 	lh	v0,360(a0)
 398:	34018000 	li	at,0x8000
 39c:	2419003c 	li	t9,60
 3a0:	10400003 	beqz	v0,3b0 <func_8088E760+0x20>
 3a4:	244effff 	addiu	t6,v0,-1
 3a8:	a48e0168 	sh	t6,360(a0)
 3ac:	84820168 	lh	v0,360(a0)
 3b0:	14400007 	bnez	v0,3d0 <func_8088E760+0x40>
 3b4:	3c080000 	lui	t0,0x0
 3b8:	848f0032 	lh	t7,50(a0)
 3bc:	25080000 	addiu	t0,t0,0
 3c0:	a4990168 	sh	t9,360(a0)
 3c4:	01e1c021 	addu	t8,t7,at
 3c8:	a4980032 	sh	t8,50(a0)
 3cc:	ac880164 	sw	t0,356(a0)
 3d0:	03e00008 	jr	ra
 3d4:	00000000 	nop

000003d8 <func_8088E7A8>:
 3d8:	27bdffd8 	addiu	sp,sp,-40
 3dc:	afbf001c 	sw	ra,28(sp)
 3e0:	afb00018 	sw	s0,24(sp)
 3e4:	afa5002c 	sw	a1,44(sp)
 3e8:	84820168 	lh	v0,360(a0)
 3ec:	00808025 	move	s0,a0
 3f0:	2419003c 	li	t9,60
 3f4:	10400003 	beqz	v0,404 <func_8088E7A8+0x2c>
 3f8:	244effff 	addiu	t6,v0,-1
 3fc:	a48e0168 	sh	t6,360(a0)
 400:	84820168 	lh	v0,360(a0)
 404:	860f0016 	lh	t7,22(s0)
 408:	86180032 	lh	t8,50(s0)
 40c:	03224023 	subu	t0,t9,v0
 410:	51f80018 	beql	t7,t8,474 <func_8088E7A8+0x9c>
 414:	44829000 	mtc1	v0,$f18
 418:	44882000 	mtc1	t0,$f4
 41c:	3c010000 	lui	at,0x0
 420:	d4280000 	ldc1	$f8,0(at)
 424:	468021a1 	cvt.d.w	$f6,$f4
 428:	3c013fe0 	lui	at,0x3fe0
 42c:	44818800 	mtc1	at,$f17
 430:	44808000 	mtc1	zero,$f16
 434:	3c010000 	lui	at,0x0
 438:	46283282 	mul.d	$f10,$f6,$f8
 43c:	d4240000 	ldc1	$f4,0(at)
 440:	46305481 	sub.d	$f18,$f10,$f16
 444:	46249182 	mul.d	$f6,$f18,$f4
 448:	0c000000 	jal	0 <BgHidanSima_Init>
 44c:	46203320 	cvt.s.d	$f12,$f6
 450:	3c013f80 	lui	at,0x3f80
 454:	44814000 	mtc1	at,$f8
 458:	3c014348 	lui	at,0x4348
 45c:	44818000 	mtc1	at,$f16
 460:	46080280 	add.s	$f10,$f0,$f8
 464:	46105082 	mul.s	$f2,$f10,$f16
 468:	10000017 	b	4c8 <func_8088E7A8+0xf0>
 46c:	86040032 	lh	a0,50(s0)
 470:	44829000 	mtc1	v0,$f18
 474:	3c010000 	lui	at,0x0
 478:	d4260000 	ldc1	$f6,0(at)
 47c:	46809121 	cvt.d.w	$f4,$f18
 480:	3c013fe0 	lui	at,0x3fe0
 484:	44815800 	mtc1	at,$f11
 488:	44805000 	mtc1	zero,$f10
 48c:	3c010000 	lui	at,0x0
 490:	46262202 	mul.d	$f8,$f4,$f6
 494:	d4320000 	ldc1	$f18,0(at)
 498:	462a4401 	sub.d	$f16,$f8,$f10
 49c:	46328102 	mul.d	$f4,$f16,$f18
 4a0:	0c000000 	jal	0 <BgHidanSima_Init>
 4a4:	46202320 	cvt.s.d	$f12,$f4
 4a8:	3c013f80 	lui	at,0x3f80
 4ac:	44813000 	mtc1	at,$f6
 4b0:	3c01c348 	lui	at,0xc348
 4b4:	44815000 	mtc1	at,$f10
 4b8:	46060200 	add.s	$f8,$f0,$f6
 4bc:	460a4082 	mul.s	$f2,$f8,$f10
 4c0:	00000000 	nop
 4c4:	86040032 	lh	a0,50(s0)
 4c8:	0c000000 	jal	0 <BgHidanSima_Init>
 4cc:	e7a20024 	swc1	$f2,36(sp)
 4d0:	c7a20024 	lwc1	$f2,36(sp)
 4d4:	c6120008 	lwc1	$f18,8(s0)
 4d8:	86040032 	lh	a0,50(s0)
 4dc:	46020402 	mul.s	$f16,$f0,$f2
 4e0:	46128100 	add.s	$f4,$f16,$f18
 4e4:	0c000000 	jal	0 <BgHidanSima_Init>
 4e8:	e6040024 	swc1	$f4,36(s0)
 4ec:	c7a20024 	lwc1	$f2,36(sp)
 4f0:	c6080010 	lwc1	$f8,16(s0)
 4f4:	86090168 	lh	t1,360(s0)
 4f8:	46020182 	mul.s	$f6,$f0,$f2
 4fc:	3c0b0000 	lui	t3,0x0
 500:	240a0014 	li	t2,20
 504:	256b0000 	addiu	t3,t3,0
 508:	02002025 	move	a0,s0
 50c:	46083280 	add.s	$f10,$f6,$f8
 510:	15200003 	bnez	t1,520 <func_8088E7A8+0x148>
 514:	e60a002c 	swc1	$f10,44(s0)
 518:	a60a0168 	sh	t2,360(s0)
 51c:	ae0b0164 	sw	t3,356(s0)
 520:	0c000000 	jal	0 <BgHidanSima_Init>
 524:	24052033 	li	a1,8243
 528:	8fbf001c 	lw	ra,28(sp)
 52c:	8fb00018 	lw	s0,24(sp)
 530:	27bd0028 	addiu	sp,sp,40
 534:	03e00008 	jr	ra
 538:	00000000 	nop

0000053c <func_8088E90C>:
 53c:	27bdffd8 	addiu	sp,sp,-40
 540:	afbf0014 	sw	ra,20(sp)
 544:	00802825 	move	a1,a0
 548:	84840032 	lh	a0,50(a0)
 54c:	34018000 	li	at,0x8000
 550:	afa50028 	sw	a1,40(sp)
 554:	00812021 	addu	a0,a0,at
 558:	00042400 	sll	a0,a0,0x10
 55c:	0c000000 	jal	0 <BgHidanSima_Init>
 560:	00042403 	sra	a0,a0,0x10
 564:	8fa50028 	lw	a1,40(sp)
 568:	34018000 	li	at,0x8000
 56c:	84a40032 	lh	a0,50(a1)
 570:	e7a0001c 	swc1	$f0,28(sp)
 574:	00812021 	addu	a0,a0,at
 578:	00042400 	sll	a0,a0,0x10
 57c:	0c000000 	jal	0 <BgHidanSima_Init>
 580:	00042403 	sra	a0,a0,0x10
 584:	8fa50028 	lw	a1,40(sp)
 588:	c7ac001c 	lwc1	$f12,28(sp)
 58c:	00001825 	move	v1,zero
 590:	24040080 	li	a0,128
 594:	8cae0188 	lw	t6,392(a1)
 598:	2484ffc0 	addiu	a0,a0,-64
 59c:	c4b00024 	lwc1	$f16,36(a1)
 5a0:	01c31021 	addu	v0,t6,v1
 5a4:	844f002c 	lh	t7,44(v0)
 5a8:	448f5000 	mtc1	t7,$f10
 5ac:	00000000 	nop
 5b0:	468054a0 	cvt.s.w	$f18,$f10
 5b4:	46120382 	mul.s	$f14,$f0,$f18
 5b8:	50640020 	beql	v1,a0,63c <func_8088E90C+0x100>
 5bc:	460e8200 	add.s	$f8,$f16,$f14
 5c0:	46126282 	mul.s	$f10,$f12,$f18
 5c4:	460e8200 	add.s	$f8,$f16,$f14
 5c8:	844c002a 	lh	t4,42(v0)
 5cc:	24630040 	addiu	v1,v1,64
 5d0:	4600420d 	trunc.w.s	$f8,$f8
 5d4:	44194000 	mfc1	t9,$f8
 5d8:	00000000 	nop
 5dc:	a4590030 	sh	t9,48(v0)
 5e0:	c4a80028 	lwc1	$f8,40(a1)
 5e4:	4600420d 	trunc.w.s	$f8,$f8
 5e8:	440b4000 	mfc1	t3,$f8
 5ec:	00000000 	nop
 5f0:	016c6821 	addu	t5,t3,t4
 5f4:	a44d0032 	sh	t5,50(v0)
 5f8:	c4a8002c 	lwc1	$f8,44(a1)
 5fc:	460a4280 	add.s	$f10,$f8,$f10
 600:	4600528d 	trunc.w.s	$f10,$f10
 604:	440f5000 	mfc1	t7,$f10
 608:	00000000 	nop
 60c:	a44f0034 	sh	t7,52(v0)
 610:	8cae0188 	lw	t6,392(a1)
 614:	c4b00024 	lwc1	$f16,36(a1)
 618:	01c31021 	addu	v0,t6,v1
 61c:	844f002c 	lh	t7,44(v0)
 620:	448f5000 	mtc1	t7,$f10
 624:	00000000 	nop
 628:	468054a0 	cvt.s.w	$f18,$f10
 62c:	46120382 	mul.s	$f14,$f0,$f18
 630:	1464ffe3 	bne	v1,a0,5c0 <func_8088E90C+0x84>
 634:	00000000 	nop
 638:	460e8200 	add.s	$f8,$f16,$f14
 63c:	844c002a 	lh	t4,42(v0)
 640:	46126282 	mul.s	$f10,$f12,$f18
 644:	24840040 	addiu	a0,a0,64
 648:	24630040 	addiu	v1,v1,64
 64c:	4600420d 	trunc.w.s	$f8,$f8
 650:	44194000 	mfc1	t9,$f8
 654:	00000000 	nop
 658:	a4590030 	sh	t9,48(v0)
 65c:	c4a80028 	lwc1	$f8,40(a1)
 660:	4600420d 	trunc.w.s	$f8,$f8
 664:	440b4000 	mfc1	t3,$f8
 668:	00000000 	nop
 66c:	016c6821 	addu	t5,t3,t4
 670:	a44d0032 	sh	t5,50(v0)
 674:	c4a8002c 	lwc1	$f8,44(a1)
 678:	460a4280 	add.s	$f10,$f8,$f10
 67c:	4600528d 	trunc.w.s	$f10,$f10
 680:	440f5000 	mfc1	t7,$f10
 684:	00000000 	nop
 688:	a44f0034 	sh	t7,52(v0)
 68c:	8fbf0014 	lw	ra,20(sp)
 690:	27bd0028 	addiu	sp,sp,40
 694:	03e00008 	jr	ra
 698:	00000000 	nop

0000069c <BgHidanSima_Update>:
 69c:	27bdffd0 	addiu	sp,sp,-48
 6a0:	afb00018 	sw	s0,24(sp)
 6a4:	00808025 	move	s0,a0
 6a8:	afbf001c 	sw	ra,28(sp)
 6ac:	afa50034 	sw	a1,52(sp)
 6b0:	8e190164 	lw	t9,356(s0)
 6b4:	0320f809 	jalr	t9
 6b8:	00000000 	nop
 6bc:	860e001c 	lh	t6,28(s0)
 6c0:	51c0002c 	beqzl	t6,774 <BgHidanSima_Update+0xd8>
 6c4:	8fbf001c 	lw	ra,28(sp)
 6c8:	860f00b6 	lh	t7,182(s0)
 6cc:	86180032 	lh	t8,50(s0)
 6d0:	55f80004 	bnel	t7,t8,6e4 <BgHidanSima_Update+0x48>
 6d4:	86020168 	lh	v0,360(s0)
 6d8:	10000003 	b	6e8 <BgHidanSima_Update+0x4c>
 6dc:	86020168 	lh	v0,360(s0)
 6e0:	86020168 	lh	v0,360(s0)
 6e4:	24420050 	addiu	v0,v0,80
 6e8:	8e080164 	lw	t0,356(s0)
 6ec:	3c030000 	lui	v1,0x0
 6f0:	24630000 	addiu	v1,v1,0
 6f4:	54680003 	bnel	v1,t0,704 <BgHidanSima_Update+0x68>
 6f8:	44822000 	mtc1	v0,$f4
 6fc:	24420014 	addiu	v0,v0,20
 700:	44822000 	mtc1	v0,$f4
 704:	3c010000 	lui	at,0x0
 708:	c4280000 	lwc1	$f8,0(at)
 70c:	468021a0 	cvt.s.w	$f6,$f4
 710:	afa30020 	sw	v1,32(sp)
 714:	46083302 	mul.s	$f12,$f6,$f8
 718:	0c000000 	jal	0 <BgHidanSima_Init>
 71c:	00000000 	nop
 720:	3c013f80 	lui	at,0x3f80
 724:	44815000 	mtc1	at,$f10
 728:	3c0140a0 	lui	at,0x40a0
 72c:	44819000 	mtc1	at,$f18
 730:	46005401 	sub.s	$f16,$f10,$f0
 734:	c606000c 	lwc1	$f6,12(s0)
 738:	8fa30020 	lw	v1,32(sp)
 73c:	8e090164 	lw	t1,356(s0)
 740:	46128102 	mul.s	$f4,$f16,$f18
 744:	46043201 	sub.s	$f8,$f6,$f4
 748:	14690009 	bne	v1,t1,770 <BgHidanSima_Update+0xd4>
 74c:	e6080028 	swc1	$f8,40(s0)
 750:	0c000000 	jal	0 <BgHidanSima_Init>
 754:	02002025 	move	a0,s0
 758:	8fa40034 	lw	a0,52(sp)
 75c:	3c010001 	lui	at,0x1
 760:	34211e60 	ori	at,at,0x1e60
 764:	2606016c 	addiu	a2,s0,364
 768:	0c000000 	jal	0 <BgHidanSima_Init>
 76c:	00812821 	addu	a1,a0,at
 770:	8fbf001c 	lw	ra,28(sp)
 774:	8fb00018 	lw	s0,24(sp)
 778:	27bd0030 	addiu	sp,sp,48
 77c:	03e00008 	jr	ra
 780:	00000000 	nop

00000784 <func_8088EB54>:
 784:	27bdff18 	addiu	sp,sp,-232
 788:	afb40040 	sw	s4,64(sp)
 78c:	00a0a025 	move	s4,a1
 790:	afbf0054 	sw	ra,84(sp)
 794:	afb10034 	sw	s1,52(sp)
 798:	afa400e8 	sw	a0,232(sp)
 79c:	3c050000 	lui	a1,0x0
 7a0:	00c08825 	move	s1,a2
 7a4:	afbe0050 	sw	s8,80(sp)
 7a8:	afb7004c 	sw	s7,76(sp)
 7ac:	afb60048 	sw	s6,72(sp)
 7b0:	afb50044 	sw	s5,68(sp)
 7b4:	afb3003c 	sw	s3,60(sp)
 7b8:	afb20038 	sw	s2,56(sp)
 7bc:	afb00030 	sw	s0,48(sp)
 7c0:	f7b80028 	sdc1	$f24,40(sp)
 7c4:	f7b60020 	sdc1	$f22,32(sp)
 7c8:	f7b40018 	sdc1	$f20,24(sp)
 7cc:	24a50000 	addiu	a1,a1,0
 7d0:	0c000000 	jal	0 <BgHidanSima_Init>
 7d4:	27a400a8 	addiu	a0,sp,168
 7d8:	868e0032 	lh	t6,50(s4)
 7dc:	34108000 	li	s0,0x8000
 7e0:	01d02021 	addu	a0,t6,s0
 7e4:	00042400 	sll	a0,a0,0x10
 7e8:	0c000000 	jal	0 <BgHidanSima_Init>
 7ec:	00042403 	sra	a0,a0,0x10
 7f0:	e7a00098 	swc1	$f0,152(sp)
 7f4:	868f0032 	lh	t7,50(s4)
 7f8:	01f02021 	addu	a0,t7,s0
 7fc:	00042400 	sll	a0,a0,0x10
 800:	0c000000 	jal	0 <BgHidanSima_Init>
 804:	00042403 	sra	a0,a0,0x10
 808:	e7a00094 	swc1	$f0,148(sp)
 80c:	86840168 	lh	a0,360(s4)
 810:	2418003c 	li	t8,60
 814:	24080003 	li	t0,3
 818:	0304a823 	subu	s5,t8,a0
 81c:	0015a843 	sra	s5,s5,0x1
 820:	2aa10004 	slti	at,s5,4
 824:	14200002 	bnez	at,830 <func_8088EB54+0xac>
 828:	0004c843 	sra	t9,a0,0x1
 82c:	24150003 	li	s5,3
 830:	01191023 	subu	v0,t0,t9
 834:	04410002 	bgez	v0,840 <func_8088EB54+0xbc>
 838:	2405004f 	li	a1,79
 83c:	00001025 	move	v0,zero
 840:	24060006 	li	a2,6
 844:	0086001a 	div	zero,a0,a2
 848:	00021880 	sll	v1,v0,0x2
 84c:	00004810 	mfhi	t1
 850:	00621823 	subu	v1,v1,v0
 854:	000318c0 	sll	v1,v1,0x3
 858:	00095080 	sll	t2,t1,0x2
 85c:	00aa5823 	subu	t3,a1,t2
 860:	00621821 	addu	v1,v1,v0
 864:	01636021 	addu	t4,t3,v1
 868:	448c3000 	mtc1	t4,$f6
 86c:	c6840024 	lwc1	$f4,36(s4)
 870:	c7ac0098 	lwc1	$f12,152(sp)
 874:	46803220 	cvt.s.w	$f8,$f6
 878:	3c010000 	lui	at,0x0
 87c:	c4340000 	lwc1	$f20,0(at)
 880:	14c00002 	bnez	a2,88c <func_8088EB54+0x108>
 884:	00000000 	nop
 888:	0007000d 	break	0x7
 88c:	2401ffff 	li	at,-1
 890:	14c10004 	bne	a2,at,8a4 <func_8088EB54+0x120>
 894:	3c018000 	lui	at,0x8000
 898:	14810002 	bne	a0,at,8a4 <func_8088EB54+0x120>
 89c:	00000000 	nop
 8a0:	0006000d 	break	0x6
 8a4:	46004282 	mul.s	$f10,$f8,$f0
 8a8:	3c190601 	lui	t9,0x601
 8ac:	2739dc30 	addiu	t9,t9,-9168
 8b0:	00409825 	move	s3,v0
 8b4:	241e0007 	li	s8,7
 8b8:	3c170000 	lui	s7,0x0
 8bc:	460a2400 	add.s	$f16,$f4,$f10
 8c0:	e7b000d8 	swc1	$f16,216(sp)
 8c4:	868d0168 	lh	t5,360(s4)
 8c8:	c692002c 	lwc1	$f18,44(s4)
 8cc:	01a6001a 	div	zero,t5,a2
 8d0:	00007010 	mfhi	t6
 8d4:	000e7880 	sll	t7,t6,0x2
 8d8:	00afc023 	subu	t8,a1,t7
 8dc:	03034021 	addu	t0,t8,v1
 8e0:	44883000 	mtc1	t0,$f6
 8e4:	14c00002 	bnez	a2,8f0 <func_8088EB54+0x16c>
 8e8:	00000000 	nop
 8ec:	0007000d 	break	0x7
 8f0:	2401ffff 	li	at,-1
 8f4:	14c10004 	bne	a2,at,908 <func_8088EB54+0x184>
 8f8:	3c018000 	lui	at,0x8000
 8fc:	15a10002 	bne	t5,at,908 <func_8088EB54+0x184>
 900:	00000000 	nop
 904:	0006000d 	break	0x6
 908:	46803220 	cvt.s.w	$f8,$f6
 90c:	3c014220 	lui	at,0x4220
 910:	44813000 	mtc1	at,$f6
 914:	3c013f80 	lui	at,0x3f80
 918:	460c4102 	mul.s	$f4,$f8,$f12
 91c:	46049280 	add.s	$f10,$f18,$f4
 920:	44829000 	mtc1	v0,$f18
 924:	00000000 	nop
 928:	46809120 	cvt.s.w	$f4,$f18
 92c:	e7aa00e0 	swc1	$f10,224(sp)
 930:	c6900028 	lwc1	$f16,40(s4)
 934:	46068200 	add.s	$f8,$f16,$f6
 938:	46142282 	mul.s	$f10,$f4,$f20
 93c:	44818000 	mtc1	at,$f16
 940:	0055082a 	slt	at,v0,s5
 944:	e7a800dc 	swc1	$f8,220(sp)
 948:	c7a80094 	lwc1	$f8,148(sp)
 94c:	46105080 	add.s	$f2,$f10,$f16
 950:	e7a200d0 	swc1	$f2,208(sp)
 954:	e7a200bc 	swc1	$f2,188(sp)
 958:	10200056 	beqz	at,ab4 <func_8088EB54+0x330>
 95c:	e7a200a8 	swc1	$f2,168(sp)
 960:	3c0141c8 	lui	at,0x41c8
 964:	44813000 	mtc1	at,$f6
 968:	44819000 	mtc1	at,$f18
 96c:	3c16db06 	lui	s6,0xdb06
 970:	46083582 	mul.s	$f22,$f6,$f8
 974:	36d60024 	ori	s6,s6,0x24
 978:	afb90060 	sw	t9,96(sp)
 97c:	460c9602 	mul.s	$f24,$f18,$f12
 980:	26f70000 	addiu	s7,s7,0
 984:	c7a400d8 	lwc1	$f4,216(sp)
 988:	c7b000e0 	lwc1	$f16,224(sp)
 98c:	c7a800a8 	lwc1	$f8,168(sp)
 990:	46162280 	add.s	$f10,$f4,$f22
 994:	c7a400bc 	lwc1	$f4,188(sp)
 998:	c7ac0098 	lwc1	$f12,152(sp)
 99c:	46188180 	add.s	$f6,$f16,$f24
 9a0:	c7b000d0 	lwc1	$f16,208(sp)
 9a4:	e7aa00d8 	swc1	$f10,216(sp)
 9a8:	46144480 	add.s	$f18,$f8,$f20
 9ac:	e7a600e0 	swc1	$f6,224(sp)
 9b0:	02201025 	move	v0,s1
 9b4:	46142280 	add.s	$f10,$f4,$f20
 9b8:	e7b200a8 	swc1	$f18,168(sp)
 9bc:	3c190000 	lui	t9,0x0
 9c0:	46148180 	add.s	$f6,$f16,$f20
 9c4:	e7aa00bc 	swc1	$f10,188(sp)
 9c8:	26310008 	addiu	s1,s1,8
 9cc:	02208025 	move	s0,s1
 9d0:	e7a600d0 	swc1	$f6,208(sp)
 9d4:	ac560000 	sw	s6,0(v0)
 9d8:	86890168 	lh	t1,360(s4)
 9dc:	3c050000 	lui	a1,0x0
 9e0:	24a50000 	addiu	a1,a1,0
 9e4:	01335021 	addu	t2,t1,s3
 9e8:	015e001a 	div	zero,t2,s8
 9ec:	00005810 	mfhi	t3
 9f0:	000b6080 	sll	t4,t3,0x2
 9f4:	02ec6821 	addu	t5,s7,t4
 9f8:	8da30000 	lw	v1,0(t5)
 9fc:	17c00002 	bnez	s8,a08 <func_8088EB54+0x284>
 a00:	00000000 	nop
 a04:	0007000d 	break	0x7
 a08:	2401ffff 	li	at,-1
 a0c:	17c10004 	bne	s8,at,a20 <func_8088EB54+0x29c>
 a10:	3c018000 	lui	at,0x8000
 a14:	15410002 	bne	t2,at,a20 <func_8088EB54+0x29c>
 a18:	00000000 	nop
 a1c:	0006000d 	break	0x6
 a20:	00037900 	sll	t7,v1,0x4
 a24:	000fc702 	srl	t8,t7,0x1c
 a28:	00184080 	sll	t0,t8,0x2
 a2c:	0328c821 	addu	t9,t9,t0
 a30:	3c0100ff 	lui	at,0xff
 a34:	8f390000 	lw	t9,0(t9)
 a38:	3421ffff 	ori	at,at,0xffff
 a3c:	00617024 	and	t6,v1,at
 a40:	3c018000 	lui	at,0x8000
 a44:	01d94821 	addu	t1,t6,t9
 a48:	01215021 	addu	t2,t1,at
 a4c:	3c0bda38 	lui	t3,0xda38
 a50:	ac4a0004 	sw	t2,4(v0)
 a54:	356b0003 	ori	t3,t3,0x3
 a58:	ae0b0000 	sw	t3,0(s0)
 a5c:	26310008 	addiu	s1,s1,8
 a60:	27a400a8 	addiu	a0,sp,168
 a64:	0c000000 	jal	0 <BgHidanSima_Init>
 a68:	24060263 	li	a2,611
 a6c:	8fac00e8 	lw	t4,232(sp)
 a70:	00409025 	move	s2,v0
 a74:	24050040 	li	a1,64
 a78:	0c000000 	jal	0 <BgHidanSima_Init>
 a7c:	8d840000 	lw	a0,0(t4)
 a80:	02402025 	move	a0,s2
 a84:	0c000000 	jal	0 <BgHidanSima_Init>
 a88:	00402825 	move	a1,v0
 a8c:	ae020004 	sw	v0,4(s0)
 a90:	02201025 	move	v0,s1
 a94:	3c0dde00 	lui	t5,0xde00
 a98:	ac4d0000 	sw	t5,0(v0)
 a9c:	8faf0060 	lw	t7,96(sp)
 aa0:	26730001 	addiu	s3,s3,1
 aa4:	26310008 	addiu	s1,s1,8
 aa8:	1675ffb6 	bne	s3,s5,984 <func_8088EB54+0x200>
 aac:	ac4f0004 	sw	t7,4(v0)
 ab0:	c7ac0098 	lwc1	$f12,152(sp)
 ab4:	0015c080 	sll	t8,s5,0x2
 ab8:	0315c023 	subu	t8,t8,s5
 abc:	0018c0c0 	sll	t8,t8,0x3
 ac0:	0315c021 	addu	t8,t8,s5
 ac4:	27080050 	addiu	t0,t8,80
 ac8:	44884000 	mtc1	t0,$f8
 acc:	c7a40094 	lwc1	$f4,148(sp)
 ad0:	c6920024 	lwc1	$f18,36(s4)
 ad4:	46804020 	cvt.s.w	$f0,$f8
 ad8:	3c0e0601 	lui	t6,0x601
 adc:	3c16db06 	lui	s6,0xdb06
 ae0:	25cedc30 	addiu	t6,t6,-9168
 ae4:	36d60024 	ori	s6,s6,0x24
 ae8:	02201025 	move	v0,s1
 aec:	46040282 	mul.s	$f10,$f0,$f4
 af0:	241e0007 	li	s8,7
 af4:	3c170000 	lui	s7,0x0
 af8:	460c0202 	mul.s	$f8,$f0,$f12
 afc:	26f70000 	addiu	s7,s7,0
 b00:	26310008 	addiu	s1,s1,8
 b04:	02208025 	move	s0,s1
 b08:	3c050000 	lui	a1,0x0
 b0c:	460a9400 	add.s	$f16,$f18,$f10
 b10:	24a50000 	addiu	a1,a1,0
 b14:	26310008 	addiu	s1,s1,8
 b18:	27a400a8 	addiu	a0,sp,168
 b1c:	e7b000d8 	swc1	$f16,216(sp)
 b20:	c686002c 	lwc1	$f6,44(s4)
 b24:	afae0060 	sw	t6,96(sp)
 b28:	3c0e0000 	lui	t6,0x0
 b2c:	46083100 	add.s	$f4,$f6,$f8
 b30:	24060270 	li	a2,624
 b34:	e7a400e0 	swc1	$f4,224(sp)
 b38:	ac560000 	sw	s6,0(v0)
 b3c:	86990168 	lh	t9,360(s4)
 b40:	03334821 	addu	t1,t9,s3
 b44:	013e001a 	div	zero,t1,s8
 b48:	00005010 	mfhi	t2
 b4c:	000a5880 	sll	t3,t2,0x2
 b50:	02eb6021 	addu	t4,s7,t3
 b54:	8d830000 	lw	v1,0(t4)
 b58:	17c00002 	bnez	s8,b64 <func_8088EB54+0x3e0>
 b5c:	00000000 	nop
 b60:	0007000d 	break	0x7
 b64:	2401ffff 	li	at,-1
 b68:	17c10004 	bne	s8,at,b7c <func_8088EB54+0x3f8>
 b6c:	3c018000 	lui	at,0x8000
 b70:	15210002 	bne	t1,at,b7c <func_8088EB54+0x3f8>
 b74:	00000000 	nop
 b78:	0006000d 	break	0x6
 b7c:	00037900 	sll	t7,v1,0x4
 b80:	000fc702 	srl	t8,t7,0x1c
 b84:	00184080 	sll	t0,t8,0x2
 b88:	01c87021 	addu	t6,t6,t0
 b8c:	3c0100ff 	lui	at,0xff
 b90:	8dce0000 	lw	t6,0(t6)
 b94:	3421ffff 	ori	at,at,0xffff
 b98:	00616824 	and	t5,v1,at
 b9c:	3c018000 	lui	at,0x8000
 ba0:	01aec821 	addu	t9,t5,t6
 ba4:	03214821 	addu	t1,t9,at
 ba8:	3c0ada38 	lui	t2,0xda38
 bac:	ac490004 	sw	t1,4(v0)
 bb0:	354a0003 	ori	t2,t2,0x3
 bb4:	0c000000 	jal	0 <BgHidanSima_Init>
 bb8:	ae0a0000 	sw	t2,0(s0)
 bbc:	8fab00e8 	lw	t3,232(sp)
 bc0:	00409025 	move	s2,v0
 bc4:	24050040 	li	a1,64
 bc8:	0c000000 	jal	0 <BgHidanSima_Init>
 bcc:	8d640000 	lw	a0,0(t3)
 bd0:	02402025 	move	a0,s2
 bd4:	0c000000 	jal	0 <BgHidanSima_Init>
 bd8:	00402825 	move	a1,v0
 bdc:	ae020004 	sw	v0,4(s0)
 be0:	02201025 	move	v0,s1
 be4:	3c0cde00 	lui	t4,0xde00
 be8:	ac4c0000 	sw	t4,0(v0)
 bec:	8faf0060 	lw	t7,96(sp)
 bf0:	26310008 	addiu	s1,s1,8
 bf4:	ac4f0004 	sw	t7,4(v0)
 bf8:	8fbf0054 	lw	ra,84(sp)
 bfc:	02201025 	move	v0,s1
 c00:	8fb10034 	lw	s1,52(sp)
 c04:	8fbe0050 	lw	s8,80(sp)
 c08:	8fb7004c 	lw	s7,76(sp)
 c0c:	8fb60048 	lw	s6,72(sp)
 c10:	8fb50044 	lw	s5,68(sp)
 c14:	8fb40040 	lw	s4,64(sp)
 c18:	8fb3003c 	lw	s3,60(sp)
 c1c:	8fb20038 	lw	s2,56(sp)
 c20:	8fb00030 	lw	s0,48(sp)
 c24:	d7b80028 	ldc1	$f24,40(sp)
 c28:	d7b60020 	ldc1	$f22,32(sp)
 c2c:	d7b40018 	ldc1	$f20,24(sp)
 c30:	03e00008 	jr	ra
 c34:	27bd00e8 	addiu	sp,sp,232

00000c38 <BgHidanSima_Draw>:
 c38:	27bdffb0 	addiu	sp,sp,-80
 c3c:	afbf001c 	sw	ra,28(sp)
 c40:	afb00018 	sw	s0,24(sp)
 c44:	afa40050 	sw	a0,80(sp)
 c48:	afa50054 	sw	a1,84(sp)
 c4c:	8ca50000 	lw	a1,0(a1)
 c50:	3c060000 	lui	a2,0x0
 c54:	24c60000 	addiu	a2,a2,0
 c58:	27a40038 	addiu	a0,sp,56
 c5c:	24070281 	li	a3,641
 c60:	0c000000 	jal	0 <BgHidanSima_Init>
 c64:	00a08025 	move	s0,a1
 c68:	8faf0054 	lw	t7,84(sp)
 c6c:	0c000000 	jal	0 <BgHidanSima_Init>
 c70:	8de40000 	lw	a0,0(t7)
 c74:	8e0202c0 	lw	v0,704(s0)
 c78:	3c19da38 	lui	t9,0xda38
 c7c:	37390003 	ori	t9,t9,0x3
 c80:	24580008 	addiu	t8,v0,8
 c84:	ae1802c0 	sw	t8,704(s0)
 c88:	ac590000 	sw	t9,0(v0)
 c8c:	8fa80054 	lw	t0,84(sp)
 c90:	3c050000 	lui	a1,0x0
 c94:	24a50000 	addiu	a1,a1,0
 c98:	8d040000 	lw	a0,0(t0)
 c9c:	24060285 	li	a2,645
 ca0:	0c000000 	jal	0 <BgHidanSima_Init>
 ca4:	afa20034 	sw	v0,52(sp)
 ca8:	8fa30034 	lw	v1,52(sp)
 cac:	3c0bde00 	lui	t3,0xde00
 cb0:	3c0ede00 	lui	t6,0xde00
 cb4:	ac620004 	sw	v0,4(v1)
 cb8:	8fa60050 	lw	a2,80(sp)
 cbc:	84c9001c 	lh	t1,28(a2)
 cc0:	5520000a 	bnezl	t1,cec <BgHidanSima_Draw+0xb4>
 cc4:	8e0202c0 	lw	v0,704(s0)
 cc8:	8e0202c0 	lw	v0,704(s0)
 ccc:	3c0c0601 	lui	t4,0x601
 cd0:	258cc338 	addiu	t4,t4,-15560
 cd4:	244a0008 	addiu	t2,v0,8
 cd8:	ae0a02c0 	sw	t2,704(s0)
 cdc:	ac4c0004 	sw	t4,4(v0)
 ce0:	10000025 	b	d78 <BgHidanSima_Draw+0x140>
 ce4:	ac4b0000 	sw	t3,0(v0)
 ce8:	8e0202c0 	lw	v0,704(s0)
 cec:	3c0f0601 	lui	t7,0x601
 cf0:	25efc470 	addiu	t7,t7,-15248
 cf4:	244d0008 	addiu	t5,v0,8
 cf8:	ae0d02c0 	sw	t5,704(s0)
 cfc:	ac4f0004 	sw	t7,4(v0)
 d00:	ac4e0000 	sw	t6,0(v0)
 d04:	8cd90164 	lw	t9,356(a2)
 d08:	3c180000 	lui	t8,0x0
 d0c:	27180000 	addiu	t8,t8,0
 d10:	17190019 	bne	t8,t9,d78 <BgHidanSima_Draw+0x140>
 d14:	24050014 	li	a1,20
 d18:	0c000000 	jal	0 <BgHidanSima_Init>
 d1c:	8e0402d0 	lw	a0,720(s0)
 d20:	ae0202d0 	sw	v0,720(s0)
 d24:	24480008 	addiu	t0,v0,8
 d28:	ae0802d0 	sw	t0,720(s0)
 d2c:	3c09fa00 	lui	t1,0xfa00
 d30:	3c0affff 	lui	t2,0xffff
 d34:	354a0096 	ori	t2,t2,0x96
 d38:	35290001 	ori	t1,t1,0x1
 d3c:	ac490000 	sw	t1,0(v0)
 d40:	ac4a0004 	sw	t2,4(v0)
 d44:	8e0202d0 	lw	v0,720(s0)
 d48:	3c0dff00 	lui	t5,0xff00
 d4c:	35ad00ff 	ori	t5,t5,0xff
 d50:	244b0008 	addiu	t3,v0,8
 d54:	ae0b02d0 	sw	t3,720(s0)
 d58:	3c0cfb00 	lui	t4,0xfb00
 d5c:	ac4c0000 	sw	t4,0(v0)
 d60:	ac4d0004 	sw	t5,4(v0)
 d64:	8e0602d0 	lw	a2,720(s0)
 d68:	8fa50050 	lw	a1,80(sp)
 d6c:	0c000000 	jal	0 <BgHidanSima_Init>
 d70:	8fa40054 	lw	a0,84(sp)
 d74:	ae0202d0 	sw	v0,720(s0)
 d78:	8fae0054 	lw	t6,84(sp)
 d7c:	3c060000 	lui	a2,0x0
 d80:	24c60000 	addiu	a2,a2,0
 d84:	27a40038 	addiu	a0,sp,56
 d88:	2407029c 	li	a3,668
 d8c:	0c000000 	jal	0 <BgHidanSima_Init>
 d90:	8dc50000 	lw	a1,0(t6)
 d94:	8fbf001c 	lw	ra,28(sp)
 d98:	8fb00018 	lw	s0,24(sp)
 d9c:	27bd0050 	addiu	sp,sp,80
 da0:	03e00008 	jr	ra
 da4:	00000000 	nop
	...
