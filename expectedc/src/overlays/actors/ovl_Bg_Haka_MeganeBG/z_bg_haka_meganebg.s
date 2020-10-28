
build/src/overlays/actors/ovl_Bg_Haka_MeganeBG/z_bg_haka_meganebg.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHakaMeganeBG_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa50034 	sw	a1,52(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00024 	sw	zero,36(sp)
  1c:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
  20:	24a50020 	addiu	a1,a1,32
  24:	8619001c 	lh	t9,28(s0)
  28:	860e001c 	lh	t6,28(s0)
  2c:	24010002 	li	at,2
  30:	332800ff 	andi	t0,t9,0xff
  34:	a608001c 	sh	t0,28(s0)
  38:	8609001c 	lh	t1,28(s0)
  3c:	000ec203 	sra	t8,t6,0x8
  40:	a2180168 	sb	t8,360(s0)
  44:	1521000f 	bne	t1,at,84 <BgHakaMeganeBG_Init+0x84>
  48:	02002025 	move	a0,s0
  4c:	02002025 	move	a0,s0
  50:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
  54:	24050003 	li	a1,3
  58:	8e0a0004 	lw	t2,4(s0)
  5c:	3c040000 	lui	a0,0x0
  60:	24840000 	addiu	a0,a0,0
  64:	354b0010 	ori	t3,t2,0x10
  68:	ae0b0004 	sw	t3,4(s0)
  6c:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
  70:	27a50024 	addiu	a1,sp,36
  74:	3c0c0000 	lui	t4,0x0
  78:	258c0000 	addiu	t4,t4,0
  7c:	1000003b 	b	16c <BgHakaMeganeBG_Init+0x16c>
  80:	ae0c0164 	sw	t4,356(s0)
  84:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
  88:	24050001 	li	a1,1
  8c:	8602001c 	lh	v0,28(s0)
  90:	3c040000 	lui	a0,0x0
  94:	24840000 	addiu	a0,a0,0
  98:	1440000c 	bnez	v0,cc <BgHakaMeganeBG_Init+0xcc>
  9c:	24010003 	li	at,3
  a0:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
  a4:	27a50024 	addiu	a1,sp,36
  a8:	8e0d0004 	lw	t5,4(s0)
  ac:	3c180000 	lui	t8,0x0
  b0:	240f0014 	li	t7,20
  b4:	27180000 	addiu	t8,t8,0
  b8:	35ae0080 	ori	t6,t5,0x80
  bc:	ae0e0004 	sw	t6,4(s0)
  c0:	a60f016a 	sh	t7,362(s0)
  c4:	10000029 	b	16c <BgHakaMeganeBG_Init+0x16c>
  c8:	ae180164 	sw	t8,356(s0)
  cc:	1441001b 	bne	v0,at,13c <BgHakaMeganeBG_Init+0x13c>
  d0:	3c040000 	lui	a0,0x0
  d4:	3c040000 	lui	a0,0x0
  d8:	24840000 	addiu	a0,a0,0
  dc:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
  e0:	27a50024 	addiu	a1,sp,36
  e4:	3c0142c8 	lui	at,0x42c8
  e8:	44813000 	mtc1	at,$f6
  ec:	c604000c 	lwc1	$f4,12(s0)
  f0:	92050168 	lbu	a1,360(s0)
  f4:	46062200 	add.s	$f8,$f4,$f6
  f8:	e608000c 	swc1	$f8,12(s0)
  fc:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 100:	8fa40034 	lw	a0,52(sp)
 104:	10400007 	beqz	v0,124 <BgHakaMeganeBG_Init+0x124>
 108:	3c0a0000 	lui	t2,0x0
 10c:	c60a000c 	lwc1	$f10,12(s0)
 110:	3c190000 	lui	t9,0x0
 114:	27390000 	addiu	t9,t9,0
 118:	ae190164 	sw	t9,356(s0)
 11c:	10000013 	b	16c <BgHakaMeganeBG_Init+0x16c>
 120:	e60a0028 	swc1	$f10,40(s0)
 124:	8e080004 	lw	t0,4(s0)
 128:	254a0000 	addiu	t2,t2,0
 12c:	ae0a0164 	sw	t2,356(s0)
 130:	35090010 	ori	t1,t0,0x10
 134:	1000000d 	b	16c <BgHakaMeganeBG_Init+0x16c>
 138:	ae090004 	sw	t1,4(s0)
 13c:	24840000 	addiu	a0,a0,0
 140:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 144:	27a50024 	addiu	a1,sp,36
 148:	3c010000 	lui	at,0x0
 14c:	c4200000 	lwc1	$f0,0(at)
 150:	3c0c0000 	lui	t4,0x0
 154:	240b0050 	li	t3,80
 158:	258c0000 	addiu	t4,t4,0
 15c:	a60b016a 	sh	t3,362(s0)
 160:	ae0c0164 	sw	t4,356(s0)
 164:	e60000f8 	swc1	$f0,248(s0)
 168:	e60000fc 	swc1	$f0,252(s0)
 16c:	8fa40034 	lw	a0,52(sp)
 170:	02003025 	move	a2,s0
 174:	8fa70024 	lw	a3,36(sp)
 178:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 17c:	24850810 	addiu	a1,a0,2064
 180:	ae02014c 	sw	v0,332(s0)
 184:	8fbf001c 	lw	ra,28(sp)
 188:	8fb00018 	lw	s0,24(sp)
 18c:	27bd0030 	addiu	sp,sp,48
 190:	03e00008 	jr	ra
 194:	00000000 	nop

00000198 <BgHakaMeganeBG_Destroy>:
 198:	27bdffe8 	addiu	sp,sp,-24
 19c:	afa40018 	sw	a0,24(sp)
 1a0:	8fae0018 	lw	t6,24(sp)
 1a4:	afbf0014 	sw	ra,20(sp)
 1a8:	00a02025 	move	a0,a1
 1ac:	24a50810 	addiu	a1,a1,2064
 1b0:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 1b4:	8dc6014c 	lw	a2,332(t6)
 1b8:	8fbf0014 	lw	ra,20(sp)
 1bc:	27bd0018 	addiu	sp,sp,24
 1c0:	03e00008 	jr	ra
 1c4:	00000000 	nop

000001c8 <func_8087DFF8>:
 1c8:	afa50004 	sw	a1,4(sp)
 1cc:	8482016a 	lh	v0,362(a0)
 1d0:	240f0028 	li	t7,40
 1d4:	34018000 	li	at,0x8000
 1d8:	10400003 	beqz	v0,1e8 <func_8087DFF8+0x20>
 1dc:	244effff 	addiu	t6,v0,-1
 1e0:	a48e016a 	sh	t6,362(a0)
 1e4:	8482016a 	lh	v0,362(a0)
 1e8:	14400007 	bnez	v0,208 <func_8087DFF8+0x40>
 1ec:	3c080000 	lui	t0,0x0
 1f0:	84980032 	lh	t8,50(a0)
 1f4:	25080000 	addiu	t0,t0,0
 1f8:	a48f016a 	sh	t7,362(a0)
 1fc:	0301c821 	addu	t9,t8,at
 200:	a4990032 	sh	t9,50(a0)
 204:	ac880164 	sw	t0,356(a0)
 208:	03e00008 	jr	ra
 20c:	00000000 	nop

00000210 <func_8087E040>:
 210:	27bdffe8 	addiu	sp,sp,-24
 214:	afbf0014 	sw	ra,20(sp)
 218:	afa5001c 	sw	a1,28(sp)
 21c:	8482016a 	lh	v0,362(a0)
 220:	10400003 	beqz	v0,230 <func_8087E040+0x20>
 224:	244effff 	addiu	t6,v0,-1
 228:	a48e016a 	sh	t6,362(a0)
 22c:	8482016a 	lh	v0,362(a0)
 230:	44822000 	mtc1	v0,$f4
 234:	3c010000 	lui	at,0x0
 238:	c4280004 	lwc1	$f8,4(at)
 23c:	468021a0 	cvt.s.w	$f6,$f4
 240:	3c013f00 	lui	at,0x3f00
 244:	44818000 	mtc1	at,$f16
 248:	3c010000 	lui	at,0x0
 24c:	c4240008 	lwc1	$f4,8(at)
 250:	afa40018 	sw	a0,24(sp)
 254:	46083282 	mul.s	$f10,$f6,$f8
 258:	46105480 	add.s	$f18,$f10,$f16
 25c:	46049302 	mul.s	$f12,$f18,$f4
 260:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 264:	00000000 	nop
 268:	3c013f80 	lui	at,0x3f80
 26c:	44813000 	mtc1	at,$f6
 270:	3c014320 	lui	at,0x4320
 274:	44815000 	mtc1	at,$f10
 278:	46060200 	add.s	$f8,$f0,$f6
 27c:	8fa40018 	lw	a0,24(sp)
 280:	3c090000 	lui	t1,0x0
 284:	3c0143a0 	lui	at,0x43a0
 288:	460a4302 	mul.s	$f12,$f8,$f10
 28c:	848f00b6 	lh	t7,182(a0)
 290:	84980032 	lh	t8,50(a0)
 294:	24080014 	li	t0,20
 298:	25290000 	addiu	t1,t1,0
 29c:	11f80004 	beq	t7,t8,2b0 <func_8087E040+0xa0>
 2a0:	46006086 	mov.s	$f2,$f12
 2a4:	44818000 	mtc1	at,$f16
 2a8:	00000000 	nop
 2ac:	460c8081 	sub.s	$f2,$f16,$f12
 2b0:	c4920008 	lwc1	$f18,8(a0)
 2b4:	8499016a 	lh	t9,362(a0)
 2b8:	46029101 	sub.s	$f4,$f18,$f2
 2bc:	17200003 	bnez	t9,2cc <func_8087E040+0xbc>
 2c0:	e4840024 	swc1	$f4,36(a0)
 2c4:	a488016a 	sh	t0,362(a0)
 2c8:	ac890164 	sw	t1,356(a0)
 2cc:	8fbf0014 	lw	ra,20(sp)
 2d0:	27bd0018 	addiu	sp,sp,24
 2d4:	03e00008 	jr	ra
 2d8:	00000000 	nop

000002dc <func_8087E10C>:
 2dc:	27bdffe8 	addiu	sp,sp,-24
 2e0:	3c0141a0 	lui	at,0x41a0
 2e4:	44811000 	mtc1	at,$f2
 2e8:	afbf0014 	sw	ra,20(sp)
 2ec:	afa5001c 	sw	a1,28(sp)
 2f0:	3c013f80 	lui	at,0x3f80
 2f4:	44813000 	mtc1	at,$f6
 2f8:	c4840060 	lwc1	$f4,96(a0)
 2fc:	3c014420 	lui	at,0x4420
 300:	44818000 	mtc1	at,$f16
 304:	46062200 	add.s	$f8,$f4,$f6
 308:	00803825 	move	a3,a0
 30c:	e4880060 	swc1	$f8,96(a0)
 310:	c4800060 	lwc1	$f0,96(a0)
 314:	4600103c 	c.lt.s	$f2,$f0
 318:	00000000 	nop
 31c:	45020004 	bc1fl	330 <func_8087E10C+0x54>
 320:	e4e00060 	swc1	$f0,96(a3)
 324:	10000002 	b	330 <func_8087E10C+0x54>
 328:	e4820060 	swc1	$f2,96(a0)
 32c:	e4e00060 	swc1	$f0,96(a3)
 330:	84e2016a 	lh	v0,362(a3)
 334:	10400002 	beqz	v0,340 <func_8087E10C+0x64>
 338:	244effff 	addiu	t6,v0,-1
 33c:	a4ee016a 	sh	t6,362(a3)
 340:	c4ea000c 	lwc1	$f10,12(a3)
 344:	8ce60060 	lw	a2,96(a3)
 348:	afa70018 	sw	a3,24(sp)
 34c:	46105481 	sub.s	$f18,$f10,$f16
 350:	24e40028 	addiu	a0,a3,40
 354:	44059000 	mfc1	a1,$f18
 358:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 35c:	00000000 	nop
 360:	14400006 	bnez	v0,37c <func_8087E10C+0xa0>
 364:	8fa70018 	lw	a3,24(sp)
 368:	00e02025 	move	a0,a3
 36c:	2405204d 	li	a1,8269
 370:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 374:	afa70018 	sw	a3,24(sp)
 378:	8fa70018 	lw	a3,24(sp)
 37c:	84ef016a 	lh	t7,362(a3)
 380:	3c190000 	lui	t9,0x0
 384:	24180078 	li	t8,120
 388:	15e00005 	bnez	t7,3a0 <func_8087E10C+0xc4>
 38c:	27390000 	addiu	t9,t9,0
 390:	44802000 	mtc1	zero,$f4
 394:	a4f8016a 	sh	t8,362(a3)
 398:	acf90164 	sw	t9,356(a3)
 39c:	e4e40060 	swc1	$f4,96(a3)
 3a0:	8fbf0014 	lw	ra,20(sp)
 3a4:	27bd0018 	addiu	sp,sp,24
 3a8:	03e00008 	jr	ra
 3ac:	00000000 	nop

000003b0 <func_8087E1E0>:
 3b0:	27bdffe8 	addiu	sp,sp,-24
 3b4:	afbf0014 	sw	ra,20(sp)
 3b8:	afa5001c 	sw	a1,28(sp)
 3bc:	00803825 	move	a3,a0
 3c0:	8ce5000c 	lw	a1,12(a3)
 3c4:	3c0640aa 	lui	a2,0x40aa
 3c8:	34c6aaab 	ori	a2,a2,0xaaab
 3cc:	afa70018 	sw	a3,24(sp)
 3d0:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 3d4:	24840028 	addiu	a0,a0,40
 3d8:	8fa40018 	lw	a0,24(sp)
 3dc:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 3e0:	2405200d 	li	a1,8205
 3e4:	8fa70018 	lw	a3,24(sp)
 3e8:	3c180000 	lui	t8,0x0
 3ec:	240f0050 	li	t7,80
 3f0:	84e2016a 	lh	v0,362(a3)
 3f4:	27180000 	addiu	t8,t8,0
 3f8:	10400003 	beqz	v0,408 <func_8087E1E0+0x58>
 3fc:	244effff 	addiu	t6,v0,-1
 400:	a4ee016a 	sh	t6,362(a3)
 404:	84e2016a 	lh	v0,362(a3)
 408:	54400004 	bnezl	v0,41c <func_8087E1E0+0x6c>
 40c:	8fbf0014 	lw	ra,20(sp)
 410:	a4ef016a 	sh	t7,362(a3)
 414:	acf80164 	sw	t8,356(a3)
 418:	8fbf0014 	lw	ra,20(sp)
 41c:	27bd0018 	addiu	sp,sp,24
 420:	03e00008 	jr	ra
 424:	00000000 	nop

00000428 <func_8087E258>:
 428:	27bdffe8 	addiu	sp,sp,-24
 42c:	afbf0014 	sw	ra,20(sp)
 430:	afa5001c 	sw	a1,28(sp)
 434:	848e00b6 	lh	t6,182(a0)
 438:	24052024 	li	a1,8228
 43c:	25cf0180 	addiu	t7,t6,384
 440:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 444:	a48f00b6 	sh	t7,182(a0)
 448:	8fbf0014 	lw	ra,20(sp)
 44c:	27bd0018 	addiu	sp,sp,24
 450:	03e00008 	jr	ra
 454:	00000000 	nop

00000458 <func_8087E288>:
 458:	27bdffe8 	addiu	sp,sp,-24
 45c:	afa40018 	sw	a0,24(sp)
 460:	8fae0018 	lw	t6,24(sp)
 464:	afbf0014 	sw	ra,20(sp)
 468:	afa5001c 	sw	a1,28(sp)
 46c:	00a02025 	move	a0,a1
 470:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 474:	91c50168 	lbu	a1,360(t6)
 478:	10400007 	beqz	v0,498 <func_8087E288+0x40>
 47c:	8fa4001c 	lw	a0,28(sp)
 480:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 484:	8fa50018 	lw	a1,24(sp)
 488:	8fb80018 	lw	t8,24(sp)
 48c:	3c0f0000 	lui	t7,0x0
 490:	25ef0000 	addiu	t7,t7,0
 494:	af0f0164 	sw	t7,356(t8)
 498:	8fbf0014 	lw	ra,20(sp)
 49c:	27bd0018 	addiu	sp,sp,24
 4a0:	03e00008 	jr	ra
 4a4:	00000000 	nop

000004a8 <func_8087E2D8>:
 4a8:	27bdffe0 	addiu	sp,sp,-32
 4ac:	afb00018 	sw	s0,24(sp)
 4b0:	00808025 	move	s0,a0
 4b4:	afbf001c 	sw	ra,28(sp)
 4b8:	afa50024 	sw	a1,36(sp)
 4bc:	3c0541f0 	lui	a1,0x41f0
 4c0:	24840068 	addiu	a0,a0,104
 4c4:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 4c8:	3c064000 	lui	a2,0x4000
 4cc:	26040028 	addiu	a0,s0,40
 4d0:	8e05000c 	lw	a1,12(s0)
 4d4:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 4d8:	8e060068 	lw	a2,104(s0)
 4dc:	10400008 	beqz	v0,500 <func_8087E2D8+0x58>
 4e0:	02002025 	move	a0,s0
 4e4:	02002025 	move	a0,s0
 4e8:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 4ec:	3c054248 	lui	a1,0x4248
 4f0:	3c0e0000 	lui	t6,0x0
 4f4:	25ce0000 	addiu	t6,t6,0
 4f8:	10000003 	b	508 <func_8087E2D8+0x60>
 4fc:	ae0e0164 	sw	t6,356(s0)
 500:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 504:	24052859 	li	a1,10329
 508:	8fbf001c 	lw	ra,28(sp)
 50c:	8fb00018 	lw	s0,24(sp)
 510:	27bd0020 	addiu	sp,sp,32
 514:	03e00008 	jr	ra
 518:	00000000 	nop

0000051c <func_8087E34C>:
 51c:	afa40000 	sw	a0,0(sp)
 520:	03e00008 	jr	ra
 524:	afa50004 	sw	a1,4(sp)

00000528 <BgHakaMeganeBG_Update>:
 528:	27bdffe8 	addiu	sp,sp,-24
 52c:	afbf0014 	sw	ra,20(sp)
 530:	8c990164 	lw	t9,356(a0)
 534:	0320f809 	jalr	t9
 538:	00000000 	nop
 53c:	8fbf0014 	lw	ra,20(sp)
 540:	27bd0018 	addiu	sp,sp,24
 544:	03e00008 	jr	ra
 548:	00000000 	nop

0000054c <BgHakaMeganeBG_Draw>:
 54c:	27bdffe8 	addiu	sp,sp,-24
 550:	afbf0014 	sw	ra,20(sp)
 554:	8482001c 	lh	v0,28(a0)
 558:	00a03025 	move	a2,a1
 55c:	00c02025 	move	a0,a2
 560:	14400007 	bnez	v0,580 <BgHakaMeganeBG_Draw+0x34>
 564:	00027080 	sll	t6,v0,0x2
 568:	00a02025 	move	a0,a1
 56c:	3c050000 	lui	a1,0x0
 570:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 574:	24a50000 	addiu	a1,a1,0
 578:	10000006 	b	594 <BgHakaMeganeBG_Draw+0x48>
 57c:	8fbf0014 	lw	ra,20(sp)
 580:	3c050000 	lui	a1,0x0
 584:	00ae2821 	addu	a1,a1,t6
 588:	0c000000 	jal	0 <BgHakaMeganeBG_Init>
 58c:	8ca50040 	lw	a1,64(a1)
 590:	8fbf0014 	lw	ra,20(sp)
 594:	27bd0018 	addiu	sp,sp,24
 598:	03e00008 	jr	ra
 59c:	00000000 	nop
