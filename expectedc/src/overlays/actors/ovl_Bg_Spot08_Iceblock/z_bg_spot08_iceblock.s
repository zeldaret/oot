
build/src/overlays/actors/ovl_Bg_Spot08_Iceblock/z_bg_spot08_iceblock.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808B0960>:
   0:	03e00008 	jr	ra
   4:	ac850164 	sw	a1,356(a0)

00000008 <func_808B0968>:
   8:	27bdffc8 	addiu	sp,sp,-56
   c:	afbf0024 	sw	ra,36(sp)
  10:	afb00020 	sw	s0,32(sp)
  14:	afa5003c 	sw	a1,60(sp)
  18:	00808025 	move	s0,a0
  1c:	afa60040 	sw	a2,64(sp)
  20:	afa00030 	sw	zero,48(sp)
  24:	0c000000 	jal	0 <func_808B0960>
  28:	00e02825 	move	a1,a3
  2c:	8fa40040 	lw	a0,64(sp)
  30:	0c000000 	jal	0 <func_808B0960>
  34:	27a50030 	addiu	a1,sp,48
  38:	8fa4003c 	lw	a0,60(sp)
  3c:	02003025 	move	a2,s0
  40:	8fa70030 	lw	a3,48(sp)
  44:	0c000000 	jal	0 <func_808B0960>
  48:	24850810 	addiu	a1,a0,2064
  4c:	24010032 	li	at,50
  50:	1441000a 	bne	v0,at,7c <func_808B0968+0x74>
  54:	ae02014c 	sw	v0,332(s0)
  58:	860e001c 	lh	t6,28(s0)
  5c:	3c040000 	lui	a0,0x0
  60:	3c050000 	lui	a1,0x0
  64:	86070000 	lh	a3,0(s0)
  68:	24a50000 	addiu	a1,a1,0
  6c:	24840000 	addiu	a0,a0,0
  70:	240600d9 	li	a2,217
  74:	0c000000 	jal	0 <func_808B0960>
  78:	afae0010 	sw	t6,16(sp)
  7c:	8fbf0024 	lw	ra,36(sp)
  80:	8fb00020 	lw	s0,32(sp)
  84:	27bd0038 	addiu	sp,sp,56
  88:	03e00008 	jr	ra
  8c:	00000000 	nop

00000090 <func_808B09F0>:
  90:	27bdffe8 	addiu	sp,sp,-24
  94:	afbf0014 	sw	ra,20(sp)
  98:	afa40018 	sw	a0,24(sp)
  9c:	8487001c 	lh	a3,28(a0)
  a0:	30e200ff 	andi	v0,a3,0xff
  a4:	28410025 	slti	at,v0,37
  a8:	14200006 	bnez	at,c4 <func_808B09F0+0x34>
  ac:	244fffff 	addiu	t7,v0,-1
  b0:	240100ff 	li	at,255
  b4:	1041000b 	beq	v0,at,e4 <func_808B09F0+0x54>
  b8:	8fb90018 	lw	t9,24(sp)
  bc:	1000000c 	b	f0 <L808B0A50>
  c0:	00000000 	nop
  c4:	2de10024 	sltiu	at,t7,36
  c8:	10200009 	beqz	at,f0 <L808B0A50>
  cc:	000f7880 	sll	t7,t7,0x2
  d0:	3c010000 	lui	at,0x0
  d4:	002f0821 	addu	at,at,t7
  d8:	8c2f0000 	lw	t7,0(at)
  dc:	01e00008 	jr	t7
  e0:	00000000 	nop
  e4:	24180010 	li	t8,16
  e8:	1000000a 	b	114 <L808B0A74>
  ec:	a738001c 	sh	t8,28(t9)

000000f0 <L808B0A50>:
  f0:	3c040000 	lui	a0,0x0
  f4:	3c050000 	lui	a1,0x0
  f8:	24a50000 	addiu	a1,a1,0
  fc:	24840000 	addiu	a0,a0,0
 100:	0c000000 	jal	0 <func_808B0960>
 104:	240600f6 	li	a2,246
 108:	8fa90018 	lw	t1,24(sp)
 10c:	24080010 	li	t0,16
 110:	a528001c 	sh	t0,28(t1)

00000114 <L808B0A74>:
 114:	8fbf0014 	lw	ra,20(sp)
 118:	27bd0018 	addiu	sp,sp,24
 11c:	03e00008 	jr	ra
 120:	00000000 	nop

00000124 <func_808B0A84>:
 124:	27bdffe0 	addiu	sp,sp,-32
 128:	afbf0014 	sw	ra,20(sp)
 12c:	afa40020 	sw	a0,32(sp)
 130:	0c000000 	jal	0 <func_808B0960>
 134:	8484018c 	lh	a0,396(a0)
 138:	8faf0020 	lw	t7,32(sp)
 13c:	e7a0001c 	swc1	$f0,28(sp)
 140:	0c000000 	jal	0 <func_808B0960>
 144:	85e4018e 	lh	a0,398(t7)
 148:	3c014080 	lui	at,0x4080
 14c:	44813000 	mtc1	at,$f6
 150:	c7a4001c 	lwc1	$f4,28(sp)
 154:	3c014040 	lui	at,0x4040
 158:	44815000 	mtc1	at,$f10
 15c:	46062202 	mul.s	$f8,$f4,$f6
 160:	8fb80020 	lw	t8,32(sp)
 164:	460a0402 	mul.s	$f16,$f0,$f10
 168:	46088480 	add.s	$f18,$f16,$f8
 16c:	e7120198 	swc1	$f18,408(t8)
 170:	8fbf0014 	lw	ra,20(sp)
 174:	27bd0020 	addiu	sp,sp,32
 178:	03e00008 	jr	ra
 17c:	00000000 	nop

00000180 <func_808B0AE0>:
 180:	27bdffe0 	addiu	sp,sp,-32
 184:	afbf0014 	sw	ra,20(sp)
 188:	8482001c 	lh	v0,28(a0)
 18c:	00803825 	move	a3,a0
 190:	3c010000 	lui	at,0x0
 194:	304200f0 	andi	v0,v0,0xf0
 198:	10400008 	beqz	v0,1bc <func_808B0AE0+0x3c>
 19c:	00e02025 	move	a0,a3
 1a0:	24010010 	li	at,16
 1a4:	10410008 	beq	v0,at,1c8 <func_808B0AE0+0x48>
 1a8:	24010020 	li	at,32
 1ac:	1041000a 	beq	v0,at,1d8 <func_808B0AE0+0x58>
 1b0:	00000000 	nop
 1b4:	1000000b 	b	1e4 <func_808B0AE0+0x64>
 1b8:	00000000 	nop
 1bc:	c4240000 	lwc1	$f4,0(at)
 1c0:	10000008 	b	1e4 <func_808B0AE0+0x64>
 1c4:	e7a40018 	swc1	$f4,24(sp)
 1c8:	3c010000 	lui	at,0x0
 1cc:	c4260000 	lwc1	$f6,0(at)
 1d0:	10000004 	b	1e4 <func_808B0AE0+0x64>
 1d4:	e7a60018 	swc1	$f6,24(sp)
 1d8:	3c010000 	lui	at,0x0
 1dc:	c4280000 	lwc1	$f8,0(at)
 1e0:	e7a80018 	swc1	$f8,24(sp)
 1e4:	0c000000 	jal	0 <func_808B0960>
 1e8:	afa70020 	sw	a3,32(sp)
 1ec:	10400005 	beqz	v0,204 <func_808B0AE0+0x84>
 1f0:	8fa70020 	lw	a3,32(sp)
 1f4:	3c01c080 	lui	at,0xc080
 1f8:	44810000 	mtc1	at,$f0
 1fc:	10000004 	b	210 <func_808B0AE0+0x90>
 200:	44050000 	mfc1	a1,$f0
 204:	44800000 	mtc1	zero,$f0
 208:	00000000 	nop
 20c:	44050000 	mfc1	a1,$f0
 210:	24e40194 	addiu	a0,a3,404
 214:	0c000000 	jal	0 <func_808B0960>
 218:	8fa60018 	lw	a2,24(sp)
 21c:	8fbf0014 	lw	ra,20(sp)
 220:	27bd0020 	addiu	sp,sp,32
 224:	03e00008 	jr	ra
 228:	00000000 	nop

0000022c <func_808B0B8C>:
 22c:	c4840194 	lwc1	$f4,404(a0)
 230:	c4860198 	lwc1	$f6,408(a0)
 234:	c48a000c 	lwc1	$f10,12(a0)
 238:	46062200 	add.s	$f8,$f4,$f6
 23c:	460a4400 	add.s	$f16,$f8,$f10
 240:	03e00008 	jr	ra
 244:	e4900028 	swc1	$f16,40(a0)

00000248 <func_808B0BA8>:
 248:	44866000 	mtc1	a2,$f12
 24c:	c4a40000 	lwc1	$f4,0(a1)
 250:	460c2182 	mul.s	$f6,$f4,$f12
 254:	e4860000 	swc1	$f6,0(a0)
 258:	c4a80004 	lwc1	$f8,4(a1)
 25c:	460c4282 	mul.s	$f10,$f8,$f12
 260:	e48a0004 	swc1	$f10,4(a0)
 264:	c4b00008 	lwc1	$f16,8(a1)
 268:	460c8482 	mul.s	$f18,$f16,$f12
 26c:	03e00008 	jr	ra
 270:	e4920008 	swc1	$f18,8(a0)

00000274 <func_808B0BD4>:
 274:	c4a40004 	lwc1	$f4,4(a1)
 278:	c4c60008 	lwc1	$f6,8(a2)
 27c:	c4aa0008 	lwc1	$f10,8(a1)
 280:	c4d00004 	lwc1	$f16,4(a2)
 284:	46062202 	mul.s	$f8,$f4,$f6
 288:	00000000 	nop
 28c:	46105482 	mul.s	$f18,$f10,$f16
 290:	46124101 	sub.s	$f4,$f8,$f18
 294:	e4840000 	swc1	$f4,0(a0)
 298:	c4ca0000 	lwc1	$f10,0(a2)
 29c:	c4a60008 	lwc1	$f6,8(a1)
 2a0:	c4a80000 	lwc1	$f8,0(a1)
 2a4:	c4d20008 	lwc1	$f18,8(a2)
 2a8:	460a3402 	mul.s	$f16,$f6,$f10
 2ac:	00000000 	nop
 2b0:	46124102 	mul.s	$f4,$f8,$f18
 2b4:	46048181 	sub.s	$f6,$f16,$f4
 2b8:	e4860004 	swc1	$f6,4(a0)
 2bc:	c4c80004 	lwc1	$f8,4(a2)
 2c0:	c4aa0000 	lwc1	$f10,0(a1)
 2c4:	c4c40000 	lwc1	$f4,0(a2)
 2c8:	c4b00004 	lwc1	$f16,4(a1)
 2cc:	46085482 	mul.s	$f18,$f10,$f8
 2d0:	00000000 	nop
 2d4:	46048182 	mul.s	$f6,$f16,$f4
 2d8:	46069281 	sub.s	$f10,$f18,$f6
 2dc:	03e00008 	jr	ra
 2e0:	e48a0008 	swc1	$f10,8(a0)

000002e4 <func_808B0C44>:
 2e4:	27bdffe8 	addiu	sp,sp,-24
 2e8:	afbf0014 	sw	ra,20(sp)
 2ec:	00803025 	move	a2,a0
 2f0:	afa60018 	sw	a2,24(sp)
 2f4:	00a02025 	move	a0,a1
 2f8:	0c000000 	jal	0 <func_808B0960>
 2fc:	afa5001c 	sw	a1,28(sp)
 300:	3c010000 	lui	at,0x0
 304:	c4240000 	lwc1	$f4,0(at)
 308:	8fa5001c 	lw	a1,28(sp)
 30c:	8fa60018 	lw	a2,24(sp)
 310:	4604003c 	c.lt.s	$f0,$f4
 314:	00001025 	move	v0,zero
 318:	3c013f80 	lui	at,0x3f80
 31c:	45020009 	bc1fl	344 <func_808B0C44+0x60>
 320:	44814000 	mtc1	at,$f8
 324:	44800000 	mtc1	zero,$f0
 328:	3c013f80 	lui	at,0x3f80
 32c:	44813000 	mtc1	at,$f6
 330:	e4c00004 	swc1	$f0,4(a2)
 334:	e4c00000 	swc1	$f0,0(a2)
 338:	1000000d 	b	370 <func_808B0C44+0x8c>
 33c:	e4c60008 	swc1	$f6,8(a2)
 340:	44814000 	mtc1	at,$f8
 344:	c4aa0000 	lwc1	$f10,0(a1)
 348:	24020001 	li	v0,1
 34c:	46004083 	div.s	$f2,$f8,$f0
 350:	46025402 	mul.s	$f16,$f10,$f2
 354:	e4d00000 	swc1	$f16,0(a2)
 358:	c4b20004 	lwc1	$f18,4(a1)
 35c:	46029102 	mul.s	$f4,$f18,$f2
 360:	e4c40004 	swc1	$f4,4(a2)
 364:	c4a60008 	lwc1	$f6,8(a1)
 368:	46023202 	mul.s	$f8,$f6,$f2
 36c:	e4c80008 	swc1	$f8,8(a2)
 370:	8fbf0014 	lw	ra,20(sp)
 374:	27bd0018 	addiu	sp,sp,24
 378:	03e00008 	jr	ra
 37c:	00000000 	nop

00000380 <func_808B0CE0>:
 380:	27bdff18 	addiu	sp,sp,-232
 384:	afbf001c 	sw	ra,28(sp)
 388:	afb00018 	sw	s0,24(sp)
 38c:	8482001c 	lh	v0,28(a0)
 390:	24010001 	li	at,1
 394:	00808025 	move	s0,a0
 398:	304200ff 	andi	v0,v0,0xff
 39c:	10410008 	beq	v0,at,3c0 <func_808B0CE0+0x40>
 3a0:	8ca31c44 	lw	v1,7236(a1)
 3a4:	24010011 	li	at,17
 3a8:	10410003 	beq	v0,at,3b8 <func_808B0CE0+0x38>
 3ac:	240e0002 	li	t6,2
 3b0:	10000005 	b	3c8 <func_808B0CE0+0x48>
 3b4:	afae0084 	sw	t6,132(sp)
 3b8:	10000003 	b	3c8 <func_808B0CE0+0x48>
 3bc:	afa00084 	sw	zero,132(sp)
 3c0:	240f0001 	li	t7,1
 3c4:	afaf0084 	sw	t7,132(sp)
 3c8:	24640024 	addiu	a0,v1,36
 3cc:	26050024 	addiu	a1,s0,36
 3d0:	0c000000 	jal	0 <func_808B0960>
 3d4:	27a600c8 	addiu	a2,sp,200
 3d8:	3c014316 	lui	at,0x4316
 3dc:	44812000 	mtc1	at,$f4
 3e0:	c6060054 	lwc1	$f6,84(s0)
 3e4:	c7aa00cc 	lwc1	$f10,204(sp)
 3e8:	27a400c8 	addiu	a0,sp,200
 3ec:	46062202 	mul.s	$f8,$f4,$f6
 3f0:	46085401 	sub.s	$f16,$f10,$f8
 3f4:	0c000000 	jal	0 <func_808B0960>
 3f8:	e7b000cc 	swc1	$f16,204(sp)
 3fc:	0c000000 	jal	0 <func_808B0960>
 400:	e7a00088 	swc1	$f0,136(sp)
 404:	3c013f00 	lui	at,0x3f00
 408:	44819000 	mtc1	at,$f18
 40c:	3c010000 	lui	at,0x0
 410:	c4260000 	lwc1	$f6,0(at)
 414:	46120101 	sub.s	$f4,$f0,$f18
 418:	44804000 	mtc1	zero,$f8
 41c:	46062282 	mul.s	$f10,$f4,$f6
 420:	e7a800a8 	swc1	$f8,168(sp)
 424:	0c000000 	jal	0 <func_808B0960>
 428:	e7aa00a4 	swc1	$f10,164(sp)
 42c:	3c013f00 	lui	at,0x3f00
 430:	44818000 	mtc1	at,$f16
 434:	3c010000 	lui	at,0x0
 438:	c4240000 	lwc1	$f4,0(at)
 43c:	46100481 	sub.s	$f18,$f0,$f16
 440:	44804000 	mtc1	zero,$f8
 444:	02002025 	move	a0,s0
 448:	46049182 	mul.s	$f6,$f18,$f4
 44c:	e7a600ac 	swc1	$f6,172(sp)
 450:	c60a0168 	lwc1	$f10,360(s0)
 454:	e7a800d8 	swc1	$f8,216(sp)
 458:	e7aa00d4 	swc1	$f10,212(sp)
 45c:	c6100170 	lwc1	$f16,368(s0)
 460:	0c000000 	jal	0 <func_808B0960>
 464:	e7b000dc 	swc1	$f16,220(sp)
 468:	1040001c 	beqz	v0,4dc <func_808B0CE0+0x15c>
 46c:	3c014040 	lui	at,0x4040
 470:	44819000 	mtc1	at,$f18
 474:	c7a40088 	lwc1	$f4,136(sp)
 478:	27a400c8 	addiu	a0,sp,200
 47c:	27a500d4 	addiu	a1,sp,212
 480:	4604903c 	c.lt.s	$f18,$f4
 484:	00000000 	nop
 488:	45000014 	bc1f	4dc <func_808B0CE0+0x15c>
 48c:	00000000 	nop
 490:	0c000000 	jal	0 <func_808B0960>
 494:	27a600bc 	addiu	a2,sp,188
 498:	8fa20084 	lw	v0,132(sp)
 49c:	3c010000 	lui	at,0x0
 4a0:	c7aa0088 	lwc1	$f10,136(sp)
 4a4:	00021080 	sll	v0,v0,0x2
 4a8:	00220821 	addu	at,at,v0
 4ac:	c4260000 	lwc1	$f6,0(at)
 4b0:	c6100050 	lwc1	$f16,80(s0)
 4b4:	27a400bc 	addiu	a0,sp,188
 4b8:	460a3202 	mul.s	$f8,$f6,$f10
 4bc:	00802825 	move	a1,a0
 4c0:	afa2002c 	sw	v0,44(sp)
 4c4:	46104483 	div.s	$f18,$f8,$f16
 4c8:	44069000 	mfc1	a2,$f18
 4cc:	0c000000 	jal	0 <func_808B0960>
 4d0:	00000000 	nop
 4d4:	1000000e 	b	510 <func_808B0CE0+0x190>
 4d8:	3c06bc23 	lui	a2,0xbc23
 4dc:	3c190000 	lui	t9,0x0
 4e0:	27390000 	addiu	t9,t9,0
 4e4:	8f290000 	lw	t1,0(t9)
 4e8:	27b800bc 	addiu	t8,sp,188
 4ec:	8f280004 	lw	t0,4(t9)
 4f0:	af090000 	sw	t1,0(t8)
 4f4:	8f290008 	lw	t1,8(t9)
 4f8:	af080004 	sw	t0,4(t8)
 4fc:	af090008 	sw	t1,8(t8)
 500:	8faa0084 	lw	t2,132(sp)
 504:	000a5880 	sll	t3,t2,0x2
 508:	afab002c 	sw	t3,44(sp)
 50c:	3c06bc23 	lui	a2,0xbc23
 510:	34c6d70a 	ori	a2,a2,0xd70a
 514:	27a400b0 	addiu	a0,sp,176
 518:	0c000000 	jal	0 <func_808B0960>
 51c:	27a500d4 	addiu	a1,sp,212
 520:	26070174 	addiu	a3,s0,372
 524:	00e02025 	move	a0,a3
 528:	00e03025 	move	a2,a3
 52c:	afa70028 	sw	a3,40(sp)
 530:	0c000000 	jal	0 <func_808B0960>
 534:	27a500bc 	addiu	a1,sp,188
 538:	8fa60028 	lw	a2,40(sp)
 53c:	27a500b0 	addiu	a1,sp,176
 540:	0c000000 	jal	0 <func_808B0960>
 544:	00c02025 	move	a0,a2
 548:	8fa60028 	lw	a2,40(sp)
 54c:	27a500a4 	addiu	a1,sp,164
 550:	0c000000 	jal	0 <func_808B0960>
 554:	00c02025 	move	a0,a2
 558:	44802000 	mtc1	zero,$f4
 55c:	8fa50028 	lw	a1,40(sp)
 560:	26040168 	addiu	a0,s0,360
 564:	e6040178 	swc1	$f4,376(s0)
 568:	afa40024 	sw	a0,36(sp)
 56c:	0c000000 	jal	0 <func_808B0960>
 570:	27a60098 	addiu	a2,sp,152
 574:	8fac002c 	lw	t4,44(sp)
 578:	3c010000 	lui	at,0x0
 57c:	c7a60098 	lwc1	$f6,152(sp)
 580:	002c0821 	addu	at,at,t4
 584:	c4200000 	lwc1	$f0,0(at)
 588:	c7a800a0 	lwc1	$f8,160(sp)
 58c:	8fa40024 	lw	a0,36(sp)
 590:	46003282 	mul.s	$f10,$f6,$f0
 594:	27a50098 	addiu	a1,sp,152
 598:	46004402 	mul.s	$f16,$f8,$f0
 59c:	e7aa0098 	swc1	$f10,152(sp)
 5a0:	0c000000 	jal	0 <func_808B0960>
 5a4:	e7b000a0 	swc1	$f16,160(sp)
 5a8:	1040002a 	beqz	v0,654 <func_808B0CE0+0x2d4>
 5ac:	8fa80024 	lw	t0,36(sp)
 5b0:	c60c0170 	lwc1	$f12,368(s0)
 5b4:	0c000000 	jal	0 <func_808B0960>
 5b8:	c60e0168 	lwc1	$f14,360(s0)
 5bc:	8fad002c 	lw	t5,44(sp)
 5c0:	3c010000 	lui	at,0x0
 5c4:	3c050000 	lui	a1,0x0
 5c8:	002d0821 	addu	at,at,t5
 5cc:	c42c0000 	lwc1	$f12,0(at)
 5d0:	24a50000 	addiu	a1,a1,0
 5d4:	27a40098 	addiu	a0,sp,152
 5d8:	4600603c 	c.lt.s	$f12,$f0
 5dc:	00000000 	nop
 5e0:	4500000d 	bc1f	618 <func_808B0CE0+0x298>
 5e4:	00000000 	nop
 5e8:	46006083 	div.s	$f2,$f12,$f0
 5ec:	c6120168 	lwc1	$f18,360(s0)
 5f0:	c60a0170 	lwc1	$f10,368(s0)
 5f4:	3c010000 	lui	at,0x0
 5f8:	46029102 	mul.s	$f4,$f18,$f2
 5fc:	e6040168 	swc1	$f4,360(s0)
 600:	46025202 	mul.s	$f8,$f10,$f2
 604:	8fae002c 	lw	t6,44(sp)
 608:	002e0821 	addu	at,at,t6
 60c:	c4260000 	lwc1	$f6,0(at)
 610:	e6080170 	swc1	$f8,368(s0)
 614:	e606016c 	swc1	$f6,364(s0)
 618:	0c000000 	jal	0 <func_808B0960>
 61c:	8fa60024 	lw	a2,36(sp)
 620:	27a4008c 	addiu	a0,sp,140
 624:	0c000000 	jal	0 <func_808B0960>
 628:	27a50098 	addiu	a1,sp,152
 62c:	10400007 	beqz	v0,64c <func_808B0CE0+0x2cc>
 630:	27af008c 	addiu	t7,sp,140
 634:	8df90000 	lw	t9,0(t7)
 638:	ae190180 	sw	t9,384(s0)
 63c:	8df80004 	lw	t8,4(t7)
 640:	ae180184 	sw	t8,388(s0)
 644:	8df90008 	lw	t9,8(t7)
 648:	ae190188 	sw	t9,392(s0)
 64c:	1000000a 	b	678 <func_808B0CE0+0x2f8>
 650:	26070180 	addiu	a3,s0,384
 654:	3c090000 	lui	t1,0x0
 658:	25290000 	addiu	t1,t1,0
 65c:	8d2b0000 	lw	t3,0(t1)
 660:	26070180 	addiu	a3,s0,384
 664:	ad0b0000 	sw	t3,0(t0)
 668:	8d2a0004 	lw	t2,4(t1)
 66c:	ad0a0004 	sw	t2,4(t0)
 670:	8d2b0008 	lw	t3,8(t1)
 674:	ad0b0008 	sw	t3,8(t0)
 678:	3c040000 	lui	a0,0x0
 67c:	24840000 	addiu	a0,a0,0
 680:	8fa50024 	lw	a1,36(sp)
 684:	0c000000 	jal	0 <func_808B0960>
 688:	afa7002c 	sw	a3,44(sp)
 68c:	0c000000 	jal	0 <func_808B0960>
 690:	46000306 	mov.s	$f12,$f0
 694:	8fa5002c 	lw	a1,44(sp)
 698:	46000306 	mov.s	$f12,$f0
 69c:	0c000000 	jal	0 <func_808B0960>
 6a0:	00003025 	move	a2,zero
 6a4:	860c00b6 	lh	t4,182(s0)
 6a8:	3c010000 	lui	at,0x0
 6ac:	c4240000 	lwc1	$f4,0(at)
 6b0:	448c8000 	mtc1	t4,$f16
 6b4:	24050001 	li	a1,1
 6b8:	468084a0 	cvt.s.w	$f18,$f16
 6bc:	46049302 	mul.s	$f12,$f18,$f4
 6c0:	0c000000 	jal	0 <func_808B0960>
 6c4:	00000000 	nop
 6c8:	0c000000 	jal	0 <func_808B0960>
 6cc:	27a40044 	addiu	a0,sp,68
 6d0:	27a40044 	addiu	a0,sp,68
 6d4:	260500b4 	addiu	a1,s0,180
 6d8:	0c000000 	jal	0 <func_808B0960>
 6dc:	00003025 	move	a2,zero
 6e0:	8fbf001c 	lw	ra,28(sp)
 6e4:	8fb00018 	lw	s0,24(sp)
 6e8:	27bd00e8 	addiu	sp,sp,232
 6ec:	03e00008 	jr	ra
 6f0:	00000000 	nop

000006f4 <func_808B1054>:
 6f4:	27bdffb0 	addiu	sp,sp,-80
 6f8:	afb00038 	sw	s0,56(sp)
 6fc:	00808025 	move	s0,a0
 700:	afbf003c 	sw	ra,60(sp)
 704:	afa50054 	sw	a1,84(sp)
 708:	0c000000 	jal	0 <func_808B0960>
 70c:	84840016 	lh	a0,22(a0)
 710:	3c0142c8 	lui	at,0x42c8
 714:	44812000 	mtc1	at,$f4
 718:	00000000 	nop
 71c:	46040182 	mul.s	$f6,$f0,$f4
 720:	e7a60044 	swc1	$f6,68(sp)
 724:	0c000000 	jal	0 <func_808B0960>
 728:	86040016 	lh	a0,22(s0)
 72c:	3c0142c8 	lui	at,0x42c8
 730:	44814000 	mtc1	at,$f8
 734:	860e001c 	lh	t6,28(s0)
 738:	c7a40044 	lwc1	$f4,68(sp)
 73c:	46080082 	mul.s	$f2,$f0,$f8
 740:	31cf0100 	andi	t7,t6,0x100
 744:	15e0001e 	bnez	t7,7c0 <func_808B1054+0xcc>
 748:	46001306 	mov.s	$f12,$f2
 74c:	c60a0008 	lwc1	$f10,8(s0)
 750:	8fa60054 	lw	a2,84(sp)
 754:	24090123 	li	t1,291
 758:	e7aa0010 	swc1	$f10,16(sp)
 75c:	c610000c 	lwc1	$f16,12(s0)
 760:	02002825 	move	a1,s0
 764:	240700d1 	li	a3,209
 768:	e7b00014 	swc1	$f16,20(sp)
 76c:	c6120010 	lwc1	$f18,16(s0)
 770:	24c41c24 	addiu	a0,a2,7204
 774:	e7b20018 	swc1	$f18,24(sp)
 778:	86180014 	lh	t8,20(s0)
 77c:	afb8001c 	sw	t8,28(sp)
 780:	86190016 	lh	t9,22(s0)
 784:	afb90020 	sw	t9,32(sp)
 788:	86080018 	lh	t0,24(s0)
 78c:	e7ac0040 	swc1	$f12,64(sp)
 790:	afa90028 	sw	t1,40(sp)
 794:	0c000000 	jal	0 <func_808B0960>
 798:	afa80024 	sw	t0,36(sp)
 79c:	c7ac0040 	lwc1	$f12,64(sp)
 7a0:	c6040024 	lwc1	$f4,36(s0)
 7a4:	c7a60044 	lwc1	$f6,68(sp)
 7a8:	c60a002c 	lwc1	$f10,44(s0)
 7ac:	46062200 	add.s	$f8,$f4,$f6
 7b0:	460c5400 	add.s	$f16,$f10,$f12
 7b4:	e6080024 	swc1	$f8,36(s0)
 7b8:	10000007 	b	7d8 <func_808B1054+0xe4>
 7bc:	e610002c 	swc1	$f16,44(s0)
 7c0:	c6120024 	lwc1	$f18,36(s0)
 7c4:	c608002c 	lwc1	$f8,44(s0)
 7c8:	46049181 	sub.s	$f6,$f18,$f4
 7cc:	46024281 	sub.s	$f10,$f8,$f2
 7d0:	e6060024 	swc1	$f6,36(s0)
 7d4:	e60a002c 	swc1	$f10,44(s0)
 7d8:	0c000000 	jal	0 <func_808B0960>
 7dc:	02002025 	move	a0,s0
 7e0:	8fbf003c 	lw	ra,60(sp)
 7e4:	8fb00038 	lw	s0,56(sp)
 7e8:	27bd0050 	addiu	sp,sp,80
 7ec:	03e00008 	jr	ra
 7f0:	00000000 	nop

000007f4 <BgSpot08Iceblock_Init>:
 7f4:	27bdffd8 	addiu	sp,sp,-40
 7f8:	afb00018 	sw	s0,24(sp)
 7fc:	00808025 	move	s0,a0
 800:	afbf001c 	sw	ra,28(sp)
 804:	afa5002c 	sw	a1,44(sp)
 808:	3c040000 	lui	a0,0x0
 80c:	24840000 	addiu	a0,a0,0
 810:	0c000000 	jal	0 <func_808B0960>
 814:	8605001c 	lh	a1,28(s0)
 818:	0c000000 	jal	0 <func_808B0960>
 81c:	02002025 	move	a0,s0
 820:	8603001c 	lh	v1,28(s0)
 824:	24010200 	li	at,512
 828:	3c060600 	lui	a2,0x600
 82c:	30620200 	andi	v0,v1,0x200
 830:	10400005 	beqz	v0,848 <BgSpot08Iceblock_Init+0x54>
 834:	02002025 	move	a0,s0
 838:	10410005 	beq	v0,at,850 <BgSpot08Iceblock_Init+0x5c>
 83c:	3c060600 	lui	a2,0x600
 840:	10000004 	b	854 <BgSpot08Iceblock_Init+0x60>
 844:	8fa60020 	lw	a2,32(sp)
 848:	10000002 	b	854 <BgSpot08Iceblock_Init+0x60>
 84c:	24c62fd8 	addiu	a2,a2,12248
 850:	24c61904 	addiu	a2,a2,6404
 854:	3062000f 	andi	v0,v1,0xf
 858:	24010002 	li	at,2
 85c:	10410004 	beq	v0,at,870 <BgSpot08Iceblock_Init+0x7c>
 860:	8fa5002c 	lw	a1,44(sp)
 864:	24010003 	li	at,3
 868:	14410005 	bne	v0,at,880 <BgSpot08Iceblock_Init+0x8c>
 86c:	00003825 	move	a3,zero
 870:	0c000000 	jal	0 <func_808B0960>
 874:	24070003 	li	a3,3
 878:	10000004 	b	88c <BgSpot08Iceblock_Init+0x98>
 87c:	00000000 	nop
 880:	02002025 	move	a0,s0
 884:	0c000000 	jal	0 <func_808B0960>
 888:	8fa5002c 	lw	a1,44(sp)
 88c:	3c0e0000 	lui	t6,0x0
 890:	8dce0004 	lw	t6,4(t6)
 894:	24010005 	li	at,5
 898:	02002025 	move	a0,s0
 89c:	11c00003 	beqz	t6,8ac <BgSpot08Iceblock_Init+0xb8>
 8a0:	3c050000 	lui	a1,0x0
 8a4:	10000002 	b	8b0 <BgSpot08Iceblock_Init+0xbc>
 8a8:	24020005 	li	v0,5
 8ac:	24020011 	li	v0,17
 8b0:	14410005 	bne	v0,at,8c8 <BgSpot08Iceblock_Init+0xd4>
 8b4:	00000000 	nop
 8b8:	0c000000 	jal	0 <func_808B0960>
 8bc:	02002025 	move	a0,s0
 8c0:	10000049 	b	9e8 <L808B133C+0xc>
 8c4:	8fbf001c 	lw	ra,28(sp)
 8c8:	0c000000 	jal	0 <func_808B0960>
 8cc:	24a50000 	addiu	a1,a1,0
 8d0:	8602001c 	lh	v0,28(s0)
 8d4:	24010010 	li	at,16
 8d8:	02002025 	move	a0,s0
 8dc:	304200f0 	andi	v0,v0,0xf0
 8e0:	10400008 	beqz	v0,904 <BgSpot08Iceblock_Init+0x110>
 8e4:	3c053e4c 	lui	a1,0x3e4c
 8e8:	1041000a 	beq	v0,at,914 <BgSpot08Iceblock_Init+0x120>
 8ec:	02002025 	move	a0,s0
 8f0:	24010020 	li	at,32
 8f4:	1041000c 	beq	v0,at,928 <BgSpot08Iceblock_Init+0x134>
 8f8:	02002025 	move	a0,s0
 8fc:	1000000d 	b	934 <BgSpot08Iceblock_Init+0x140>
 900:	00000000 	nop
 904:	0c000000 	jal	0 <func_808B0960>
 908:	34a5cccd 	ori	a1,a1,0xcccd
 90c:	10000009 	b	934 <BgSpot08Iceblock_Init+0x140>
 910:	00000000 	nop
 914:	3c053dcc 	lui	a1,0x3dcc
 918:	0c000000 	jal	0 <func_808B0960>
 91c:	34a5cccd 	ori	a1,a1,0xcccd
 920:	10000004 	b	934 <BgSpot08Iceblock_Init+0x140>
 924:	00000000 	nop
 928:	3c053d4c 	lui	a1,0x3d4c
 92c:	0c000000 	jal	0 <func_808B0960>
 930:	34a5cccd 	ori	a1,a1,0xcccd
 934:	0c000000 	jal	0 <func_808B0960>
 938:	00000000 	nop
 93c:	3c010000 	lui	at,0x0
 940:	c4240000 	lwc1	$f4,0(at)
 944:	46040182 	mul.s	$f6,$f0,$f4
 948:	4600320d 	trunc.w.s	$f8,$f6
 94c:	44184000 	mfc1	t8,$f8
 950:	0c000000 	jal	0 <func_808B0960>
 954:	a618018c 	sh	t8,396(s0)
 958:	3c013f80 	lui	at,0x3f80
 95c:	44811000 	mtc1	at,$f2
 960:	3c010000 	lui	at,0x0
 964:	c42a0000 	lwc1	$f10,0(at)
 968:	8609001c 	lh	t1,28(s0)
 96c:	e602016c 	swc1	$f2,364(s0)
 970:	460a0402 	mul.s	$f16,$f0,$f10
 974:	312a000f 	andi	t2,t1,0xf
 978:	2d410005 	sltiu	at,t2,5
 97c:	000a5080 	sll	t2,t2,0x2
 980:	e6020180 	swc1	$f2,384(s0)
 984:	4600848d 	trunc.w.s	$f18,$f16
 988:	44089000 	mfc1	t0,$f18
 98c:	10200015 	beqz	at,9e4 <L808B133C+0x8>
 990:	a608018e 	sh	t0,398(s0)
 994:	3c010000 	lui	at,0x0
 998:	002a0821 	addu	at,at,t2
 99c:	8c2a0000 	lw	t2,0(at)
 9a0:	01400008 	jr	t2
 9a4:	00000000 	nop

000009a8 <L808B1308>:
 9a8:	0c000000 	jal	0 <func_808B0960>
 9ac:	02002025 	move	a0,s0
 9b0:	1000000d 	b	9e8 <L808B133C+0xc>
 9b4:	8fbf001c 	lw	ra,28(sp)

000009b8 <L808B1318>:
 9b8:	0c000000 	jal	0 <func_808B0960>
 9bc:	02002025 	move	a0,s0
 9c0:	10000009 	b	9e8 <L808B133C+0xc>
 9c4:	8fbf001c 	lw	ra,28(sp)

000009c8 <L808B1328>:
 9c8:	02002025 	move	a0,s0
 9cc:	0c000000 	jal	0 <func_808B0960>
 9d0:	8fa5002c 	lw	a1,44(sp)
 9d4:	10000004 	b	9e8 <L808B133C+0xc>
 9d8:	8fbf001c 	lw	ra,28(sp)

000009dc <L808B133C>:
 9dc:	0c000000 	jal	0 <func_808B0960>
 9e0:	02002025 	move	a0,s0
 9e4:	8fbf001c 	lw	ra,28(sp)
 9e8:	8fb00018 	lw	s0,24(sp)
 9ec:	27bd0028 	addiu	sp,sp,40
 9f0:	03e00008 	jr	ra
 9f4:	00000000 	nop

000009f8 <BgSpot08Iceblock_Destroy>:
 9f8:	27bdffe8 	addiu	sp,sp,-24
 9fc:	afa40018 	sw	a0,24(sp)
 a00:	8fae0018 	lw	t6,24(sp)
 a04:	afbf0014 	sw	ra,20(sp)
 a08:	00a02025 	move	a0,a1
 a0c:	24a50810 	addiu	a1,a1,2064
 a10:	0c000000 	jal	0 <func_808B0960>
 a14:	8dc6014c 	lw	a2,332(t6)
 a18:	8fbf0014 	lw	ra,20(sp)
 a1c:	27bd0018 	addiu	sp,sp,24
 a20:	03e00008 	jr	ra
 a24:	00000000 	nop

00000a28 <func_808B1388>:
 a28:	27bdffe8 	addiu	sp,sp,-24
 a2c:	afbf0014 	sw	ra,20(sp)
 a30:	3c050000 	lui	a1,0x0
 a34:	0c000000 	jal	0 <func_808B0960>
 a38:	24a50000 	addiu	a1,a1,0
 a3c:	8fbf0014 	lw	ra,20(sp)
 a40:	27bd0018 	addiu	sp,sp,24
 a44:	03e00008 	jr	ra
 a48:	00000000 	nop

00000a4c <func_808B13AC>:
 a4c:	27bdffe0 	addiu	sp,sp,-32
 a50:	afbf001c 	sw	ra,28(sp)
 a54:	afb00018 	sw	s0,24(sp)
 a58:	00808025 	move	s0,a0
 a5c:	0c000000 	jal	0 <func_808B0960>
 a60:	afa50024 	sw	a1,36(sp)
 a64:	0c000000 	jal	0 <func_808B0960>
 a68:	02002025 	move	a0,s0
 a6c:	0c000000 	jal	0 <func_808B0960>
 a70:	02002025 	move	a0,s0
 a74:	860e0016 	lh	t6,22(s0)
 a78:	02002025 	move	a0,s0
 a7c:	a60e00b6 	sh	t6,182(s0)
 a80:	0c000000 	jal	0 <func_808B0960>
 a84:	8fa50024 	lw	a1,36(sp)
 a88:	8fbf001c 	lw	ra,28(sp)
 a8c:	8fb00018 	lw	s0,24(sp)
 a90:	27bd0020 	addiu	sp,sp,32
 a94:	03e00008 	jr	ra
 a98:	00000000 	nop

00000a9c <func_808B13FC>:
 a9c:	27bdffe8 	addiu	sp,sp,-24
 aa0:	afbf0014 	sw	ra,20(sp)
 aa4:	3c050000 	lui	a1,0x0
 aa8:	0c000000 	jal	0 <func_808B0960>
 aac:	24a50000 	addiu	a1,a1,0
 ab0:	8fbf0014 	lw	ra,20(sp)
 ab4:	27bd0018 	addiu	sp,sp,24
 ab8:	03e00008 	jr	ra
 abc:	00000000 	nop

00000ac0 <func_808B1420>:
 ac0:	27bdffe0 	addiu	sp,sp,-32
 ac4:	afbf001c 	sw	ra,28(sp)
 ac8:	afb00018 	sw	s0,24(sp)
 acc:	00808025 	move	s0,a0
 ad0:	0c000000 	jal	0 <func_808B0960>
 ad4:	afa50024 	sw	a1,36(sp)
 ad8:	0c000000 	jal	0 <func_808B0960>
 adc:	02002025 	move	a0,s0
 ae0:	0c000000 	jal	0 <func_808B0960>
 ae4:	02002025 	move	a0,s0
 ae8:	860e0032 	lh	t6,50(s0)
 aec:	02002025 	move	a0,s0
 af0:	25cf0190 	addiu	t7,t6,400
 af4:	a60f0032 	sh	t7,50(s0)
 af8:	86180032 	lh	t8,50(s0)
 afc:	a61800b6 	sh	t8,182(s0)
 b00:	0c000000 	jal	0 <func_808B0960>
 b04:	8fa50024 	lw	a1,36(sp)
 b08:	8fbf001c 	lw	ra,28(sp)
 b0c:	8fb00018 	lw	s0,24(sp)
 b10:	27bd0020 	addiu	sp,sp,32
 b14:	03e00008 	jr	ra
 b18:	00000000 	nop

00000b1c <func_808B147C>:
 b1c:	27bdffe8 	addiu	sp,sp,-24
 b20:	afbf0014 	sw	ra,20(sp)
 b24:	3c050000 	lui	a1,0x0
 b28:	0c000000 	jal	0 <func_808B0960>
 b2c:	24a50000 	addiu	a1,a1,0
 b30:	8fbf0014 	lw	ra,20(sp)
 b34:	27bd0018 	addiu	sp,sp,24
 b38:	03e00008 	jr	ra
 b3c:	00000000 	nop

00000b40 <func_808B14A0>:
 b40:	27bdffd8 	addiu	sp,sp,-40
 b44:	afbf001c 	sw	ra,28(sp)
 b48:	afb00018 	sw	s0,24(sp)
 b4c:	00808025 	move	s0,a0
 b50:	0c000000 	jal	0 <func_808B0960>
 b54:	afa5002c 	sw	a1,44(sp)
 b58:	0c000000 	jal	0 <func_808B0960>
 b5c:	02002025 	move	a0,s0
 b60:	0c000000 	jal	0 <func_808B0960>
 b64:	02002025 	move	a0,s0
 b68:	860e001c 	lh	t6,28(s0)
 b6c:	31cf0100 	andi	t7,t6,0x100
 b70:	55e0001f 	bnezl	t7,bf0 <func_808B14A0+0xb0>
 b74:	86090016 	lh	t1,22(s0)
 b78:	86180032 	lh	t8,50(s0)
 b7c:	27190190 	addiu	t9,t8,400
 b80:	a6190032 	sh	t9,50(s0)
 b84:	0c000000 	jal	0 <func_808B0960>
 b88:	86040032 	lh	a0,50(s0)
 b8c:	3c0142c8 	lui	at,0x42c8
 b90:	44812000 	mtc1	at,$f4
 b94:	86040032 	lh	a0,50(s0)
 b98:	46040082 	mul.s	$f2,$f0,$f4
 b9c:	0c000000 	jal	0 <func_808B0960>
 ba0:	e7a20020 	swc1	$f2,32(sp)
 ba4:	3c0142c8 	lui	at,0x42c8
 ba8:	44814000 	mtc1	at,$f8
 bac:	c7a20020 	lwc1	$f2,32(sp)
 bb0:	c60e0008 	lwc1	$f14,8(s0)
 bb4:	46080302 	mul.s	$f12,$f0,$f8
 bb8:	c60a0010 	lwc1	$f10,16(s0)
 bbc:	46027180 	add.s	$f6,$f14,$f2
 bc0:	8e02011c 	lw	v0,284(s0)
 bc4:	e6060024 	swc1	$f6,36(s0)
 bc8:	460c5400 	add.s	$f16,$f10,$f12
 bcc:	10400007 	beqz	v0,bec <func_808B14A0+0xac>
 bd0:	e610002c 	swc1	$f16,44(s0)
 bd4:	46027481 	sub.s	$f18,$f14,$f2
 bd8:	e4520024 	swc1	$f18,36(v0)
 bdc:	c6040010 	lwc1	$f4,16(s0)
 be0:	8e08011c 	lw	t0,284(s0)
 be4:	460c2181 	sub.s	$f6,$f4,$f12
 be8:	e506002c 	swc1	$f6,44(t0)
 bec:	86090016 	lh	t1,22(s0)
 bf0:	02002025 	move	a0,s0
 bf4:	a60900b6 	sh	t1,182(s0)
 bf8:	0c000000 	jal	0 <func_808B0960>
 bfc:	8fa5002c 	lw	a1,44(sp)
 c00:	8fbf001c 	lw	ra,28(sp)
 c04:	8fb00018 	lw	s0,24(sp)
 c08:	27bd0028 	addiu	sp,sp,40
 c0c:	03e00008 	jr	ra
 c10:	00000000 	nop

00000c14 <func_808B1574>:
 c14:	27bdffe8 	addiu	sp,sp,-24
 c18:	afbf0014 	sw	ra,20(sp)
 c1c:	0c000000 	jal	0 <func_808B0960>
 c20:	00002825 	move	a1,zero
 c24:	8fbf0014 	lw	ra,20(sp)
 c28:	27bd0018 	addiu	sp,sp,24
 c2c:	03e00008 	jr	ra
 c30:	00000000 	nop

00000c34 <BgSpot08Iceblock_Update>:
 c34:	27bdffe0 	addiu	sp,sp,-32
 c38:	afbf001c 	sw	ra,28(sp)
 c3c:	afb00018 	sw	s0,24(sp)
 c40:	00808025 	move	s0,a0
 c44:	0c000000 	jal	0 <func_808B0960>
 c48:	afa50024 	sw	a1,36(sp)
 c4c:	3c010000 	lui	at,0x0
 c50:	c4240000 	lwc1	$f4,0(at)
 c54:	2404012c 	li	a0,300
 c58:	4604003c 	c.lt.s	$f0,$f4
 c5c:	00000000 	nop
 c60:	45020009 	bc1fl	c88 <BgSpot08Iceblock_Update+0x54>
 c64:	860e018c 	lh	t6,396(s0)
 c68:	0c000000 	jal	0 <func_808B0960>
 c6c:	24050064 	li	a1,100
 c70:	a6020190 	sh	v0,400(s0)
 c74:	24040320 	li	a0,800
 c78:	0c000000 	jal	0 <func_808B0960>
 c7c:	24050190 	li	a1,400
 c80:	a6020192 	sh	v0,402(s0)
 c84:	860e018c 	lh	t6,396(s0)
 c88:	860f0190 	lh	t7,400(s0)
 c8c:	8619018e 	lh	t9,398(s0)
 c90:	86080192 	lh	t0,402(s0)
 c94:	8e020164 	lw	v0,356(s0)
 c98:	01cfc021 	addu	t8,t6,t7
 c9c:	03284821 	addu	t1,t9,t0
 ca0:	a618018c 	sh	t8,396(s0)
 ca4:	10400004 	beqz	v0,cb8 <BgSpot08Iceblock_Update+0x84>
 ca8:	a609018e 	sh	t1,398(s0)
 cac:	02002025 	move	a0,s0
 cb0:	0040f809 	jalr	v0
 cb4:	8fa50024 	lw	a1,36(sp)
 cb8:	8fbf001c 	lw	ra,28(sp)
 cbc:	8fb00018 	lw	s0,24(sp)
 cc0:	27bd0020 	addiu	sp,sp,32
 cc4:	03e00008 	jr	ra
 cc8:	00000000 	nop

00000ccc <BgSpot08Iceblock_Draw>:
 ccc:	27bdffe0 	addiu	sp,sp,-32
 cd0:	afbf0014 	sw	ra,20(sp)
 cd4:	8482001c 	lh	v0,28(a0)
 cd8:	00a03025 	move	a2,a1
 cdc:	3c0e0600 	lui	t6,0x600
 ce0:	30420200 	andi	v0,v0,0x200
 ce4:	10400006 	beqz	v0,d00 <BgSpot08Iceblock_Draw+0x34>
 ce8:	00c02025 	move	a0,a2
 cec:	24010200 	li	at,512
 cf0:	10410006 	beq	v0,at,d0c <BgSpot08Iceblock_Draw+0x40>
 cf4:	3c0f0600 	lui	t7,0x600
 cf8:	10000006 	b	d14 <BgSpot08Iceblock_Draw+0x48>
 cfc:	00000000 	nop
 d00:	25ce2bd0 	addiu	t6,t6,11216
 d04:	10000003 	b	d14 <BgSpot08Iceblock_Draw+0x48>
 d08:	afae001c 	sw	t6,28(sp)
 d0c:	25ef0de0 	addiu	t7,t7,3552
 d10:	afaf001c 	sw	t7,28(sp)
 d14:	0c000000 	jal	0 <func_808B0960>
 d18:	8fa5001c 	lw	a1,28(sp)
 d1c:	8fbf0014 	lw	ra,20(sp)
 d20:	27bd0020 	addiu	sp,sp,32
 d24:	03e00008 	jr	ra
 d28:	00000000 	nop
 d2c:	00000000 	nop
