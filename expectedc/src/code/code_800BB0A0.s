
build/src/code/code_800BB0A0.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800BB0A0>:
   0:	3c013f80 	lui	at,0x3f80
   4:	44818000 	mtc1	at,$f16
   8:	27bdfff0 	addiu	sp,sp,-16
   c:	afa60018 	sw	a2,24(sp)
  10:	460c803c 	c.lt.s	$f16,$f12
  14:	00000000 	nop
  18:	45020003 	bc1fl	28 <func_800BB0A0+0x28>
  1c:	460c8001 	sub.s	$f0,$f16,$f12
  20:	46008306 	mov.s	$f12,$f16
  24:	460c8001 	sub.s	$f0,$f16,$f12
  28:	3c0140c0 	lui	at,0x40c0
  2c:	44819000 	mtc1	at,$f18
  30:	3c013f00 	lui	at,0x3f00
  34:	46000102 	mul.s	$f4,$f0,$f0
  38:	44815000 	mtc1	at,$f10
  3c:	3c010000 	lui	at,0x0
  40:	8fa30020 	lw	v1,32(sp)
  44:	8fa40024 	lw	a0,36(sp)
  48:	8fa60028 	lw	a2,40(sp)
  4c:	8fa2002c 	lw	v0,44(sp)
  50:	46002182 	mul.s	$f6,$f4,$f0
  54:	00000000 	nop
  58:	460c6082 	mul.s	$f2,$f12,$f12
  5c:	46123203 	div.s	$f8,$f6,$f18
  60:	460c1382 	mul.s	$f14,$f2,$f12
  64:	00000000 	nop
  68:	460a7102 	mul.s	$f4,$f14,$f10
  6c:	c42a0000 	lwc1	$f10,0(at)
  70:	3c013f00 	lui	at,0x3f00
  74:	e7a80000 	swc1	$f8,0(sp)
  78:	46022181 	sub.s	$f6,$f4,$f2
  7c:	460a3100 	add.s	$f4,$f6,$f10
  80:	46006187 	neg.s	$f6,$f12
  84:	e7a40004 	swc1	$f4,4(sp)
  88:	460c3282 	mul.s	$f10,$f6,$f12
  8c:	00000000 	nop
  90:	460c5182 	mul.s	$f6,$f10,$f12
  94:	44815000 	mtc1	at,$f10
  98:	00000000 	nop
  9c:	460a3182 	mul.s	$f6,$f6,$f10
  a0:	44815000 	mtc1	at,$f10
  a4:	00000000 	nop
  a8:	460a1282 	mul.s	$f10,$f2,$f10
  ac:	460a3180 	add.s	$f6,$f6,$f10
  b0:	44815000 	mtc1	at,$f10
  b4:	3c010000 	lui	at,0x0
  b8:	460a6282 	mul.s	$f10,$f12,$f10
  bc:	460a3180 	add.s	$f6,$f6,$f10
  c0:	c42a0000 	lwc1	$f10,0(at)
  c4:	460a3180 	add.s	$f6,$f6,$f10
  c8:	46127283 	div.s	$f10,$f14,$f18
  cc:	e7a60008 	swc1	$f6,8(sp)
  d0:	e7aa000c 	swc1	$f10,12(sp)
  d4:	c46a0000 	lwc1	$f10,0(v1)
  d8:	460a4202 	mul.s	$f8,$f8,$f10
  dc:	c48a0000 	lwc1	$f10,0(a0)
  e0:	460a2102 	mul.s	$f4,$f4,$f10
  e4:	46044280 	add.s	$f10,$f8,$f4
  e8:	c4c80000 	lwc1	$f8,0(a2)
  ec:	46083102 	mul.s	$f4,$f6,$f8
  f0:	c4480000 	lwc1	$f8,0(v0)
  f4:	46045180 	add.s	$f6,$f10,$f4
  f8:	c7aa000c 	lwc1	$f10,12(sp)
  fc:	460a4102 	mul.s	$f4,$f8,$f10
 100:	46062200 	add.s	$f8,$f4,$f6
 104:	e4a80000 	swc1	$f8,0(a1)
 108:	c7aa0000 	lwc1	$f10,0(sp)
 10c:	c4640004 	lwc1	$f4,4(v1)
 110:	c7a80004 	lwc1	$f8,4(sp)
 114:	46045182 	mul.s	$f6,$f10,$f4
 118:	c48a0004 	lwc1	$f10,4(a0)
 11c:	460a4102 	mul.s	$f4,$f8,$f10
 120:	c7aa0008 	lwc1	$f10,8(sp)
 124:	46043200 	add.s	$f8,$f6,$f4
 128:	c4c60004 	lwc1	$f6,4(a2)
 12c:	46065102 	mul.s	$f4,$f10,$f6
 130:	c4460004 	lwc1	$f6,4(v0)
 134:	46044280 	add.s	$f10,$f8,$f4
 138:	c7a8000c 	lwc1	$f8,12(sp)
 13c:	46083102 	mul.s	$f4,$f6,$f8
 140:	460a2180 	add.s	$f6,$f4,$f10
 144:	e4a60004 	swc1	$f6,4(a1)
 148:	c7a80000 	lwc1	$f8,0(sp)
 14c:	c4640008 	lwc1	$f4,8(v1)
 150:	c7a60004 	lwc1	$f6,4(sp)
 154:	46044282 	mul.s	$f10,$f8,$f4
 158:	c4880008 	lwc1	$f8,8(a0)
 15c:	46083102 	mul.s	$f4,$f6,$f8
 160:	c7a80008 	lwc1	$f8,8(sp)
 164:	46045180 	add.s	$f6,$f10,$f4
 168:	c4ca0008 	lwc1	$f10,8(a2)
 16c:	460a4102 	mul.s	$f4,$f8,$f10
 170:	c44a0008 	lwc1	$f10,8(v0)
 174:	46043200 	add.s	$f8,$f6,$f4
 178:	c7a6000c 	lwc1	$f6,12(sp)
 17c:	46065102 	mul.s	$f4,$f10,$f6
 180:	46082280 	add.s	$f10,$f4,$f8
 184:	e4aa0008 	swc1	$f10,8(a1)
 188:	c7a60000 	lwc1	$f6,0(sp)
 18c:	c464000c 	lwc1	$f4,12(v1)
 190:	c7aa0004 	lwc1	$f10,4(sp)
 194:	8fae0018 	lw	t6,24(sp)
 198:	46043202 	mul.s	$f8,$f6,$f4
 19c:	c486000c 	lwc1	$f6,12(a0)
 1a0:	46065102 	mul.s	$f4,$f10,$f6
 1a4:	c7a60008 	lwc1	$f6,8(sp)
 1a8:	46044280 	add.s	$f10,$f8,$f4
 1ac:	c4c8000c 	lwc1	$f8,12(a2)
 1b0:	46083102 	mul.s	$f4,$f6,$f8
 1b4:	c448000c 	lwc1	$f8,12(v0)
 1b8:	46045180 	add.s	$f6,$f10,$f4
 1bc:	c7aa000c 	lwc1	$f10,12(sp)
 1c0:	460a4102 	mul.s	$f4,$f8,$f10
 1c4:	46062200 	add.s	$f8,$f4,$f6
 1c8:	e5c80000 	swc1	$f8,0(t6)
 1cc:	c7aa0000 	lwc1	$f10,0(sp)
 1d0:	c4640010 	lwc1	$f4,16(v1)
 1d4:	c7a80004 	lwc1	$f8,4(sp)
 1d8:	46045182 	mul.s	$f6,$f10,$f4
 1dc:	c48a0010 	lwc1	$f10,16(a0)
 1e0:	460a4102 	mul.s	$f4,$f8,$f10
 1e4:	c7aa0008 	lwc1	$f10,8(sp)
 1e8:	46043200 	add.s	$f8,$f6,$f4
 1ec:	c4c60010 	lwc1	$f6,16(a2)
 1f0:	46065102 	mul.s	$f4,$f10,$f6
 1f4:	c4460010 	lwc1	$f6,16(v0)
 1f8:	46044280 	add.s	$f10,$f8,$f4
 1fc:	c7a8000c 	lwc1	$f8,12(sp)
 200:	27bd0010 	addiu	sp,sp,16
 204:	46083102 	mul.s	$f4,$f6,$f8
 208:	460a2180 	add.s	$f6,$f4,$f10
 20c:	03e00008 	jr	ra
 210:	e4e60000 	swc1	$f6,0(a3)

00000214 <func_800BB2B4>:
 214:	27bdff60 	addiu	sp,sp,-160
 218:	8faf00b0 	lw	t7,176(sp)
 21c:	afbf0024 	sw	ra,36(sp)
 220:	afa400a0 	sw	a0,160(sp)
 224:	afa500a4 	sw	a1,164(sp)
 228:	afa600a8 	sw	a2,168(sp)
 22c:	afa700ac 	sw	a3,172(sp)
 230:	44809000 	mtc1	zero,$f18
 234:	85e80000 	lh	t0,0(t7)
 238:	8fae00b4 	lw	t6,180(sp)
 23c:	00005025 	move	t2,zero
 240:	46009386 	mov.s	$f14,$f18
 244:	46009406 	mov.s	$f16,$f18
 248:	05010002 	bgez	t0,254 <func_800BB2B4+0x40>
 24c:	c5cc0000 	lwc1	$f12,0(t6)
 250:	46009306 	mov.s	$f12,$f18
 254:	8fb800ac 	lw	t8,172(sp)
 258:	0008c900 	sll	t9,t0,0x4
 25c:	2409ffff 	li	t1,-1
 260:	03191021 	addu	v0,t8,t9
 264:	804b0000 	lb	t3,0(v0)
 268:	112b0009 	beq	t1,t3,290 <func_800BB2B4+0x7c>
 26c:	00000000 	nop
 270:	804c0010 	lb	t4,16(v0)
 274:	112c0006 	beq	t1,t4,290 <func_800BB2B4+0x7c>
 278:	00000000 	nop
 27c:	804d0020 	lb	t5,32(v0)
 280:	27a2004c 	addiu	v0,sp,76
 284:	00002025 	move	a0,zero
 288:	152d0003 	bne	t1,t5,298 <func_800BB2B4+0x84>
 28c:	8fae00ac 	lw	t6,172(sp)
 290:	1000008b 	b	4c0 <func_800BB2B4+0x2ac>
 294:	24020001 	li	v0,1
 298:	00087900 	sll	t7,t0,0x4
 29c:	01cf1821 	addu	v1,t6,t7
 2a0:	24050040 	li	a1,64
 2a4:	24840010 	addiu	a0,a0,16
 2a8:	1085001a 	beq	a0,a1,314 <func_800BB2B4+0x100>
 2ac:	84780008 	lh	t8,8(v1)
 2b0:	44989000 	mtc1	t8,$f18
 2b4:	24840010 	addiu	a0,a0,16
 2b8:	24420014 	addiu	v0,v0,20
 2bc:	468094a0 	cvt.s.w	$f18,$f18
 2c0:	24630010 	addiu	v1,v1,16
 2c4:	e452ffec 	swc1	$f18,-20(v0)
 2c8:	8479fffa 	lh	t9,-6(v1)
 2cc:	44999000 	mtc1	t9,$f18
 2d0:	00000000 	nop
 2d4:	468094a0 	cvt.s.w	$f18,$f18
 2d8:	e452fff0 	swc1	$f18,-16(v0)
 2dc:	846bfffc 	lh	t3,-4(v1)
 2e0:	448b9000 	mtc1	t3,$f18
 2e4:	00000000 	nop
 2e8:	468094a0 	cvt.s.w	$f18,$f18
 2ec:	e452fff4 	swc1	$f18,-12(v0)
 2f0:	806cfff1 	lb	t4,-15(v1)
 2f4:	448c9000 	mtc1	t4,$f18
 2f8:	00000000 	nop
 2fc:	468094a0 	cvt.s.w	$f18,$f18
 300:	e452fff8 	swc1	$f18,-8(v0)
 304:	c472fff4 	lwc1	$f18,-12(v1)
 308:	e452fffc 	swc1	$f18,-4(v0)
 30c:	1485ffe8 	bne	a0,a1,2b0 <func_800BB2B4+0x9c>
 310:	84780008 	lh	t8,8(v1)
 314:	44989000 	mtc1	t8,$f18
 318:	24420014 	addiu	v0,v0,20
 31c:	24630010 	addiu	v1,v1,16
 320:	468094a0 	cvt.s.w	$f18,$f18
 324:	e452ffec 	swc1	$f18,-20(v0)
 328:	8479fffa 	lh	t9,-6(v1)
 32c:	44999000 	mtc1	t9,$f18
 330:	00000000 	nop
 334:	468094a0 	cvt.s.w	$f18,$f18
 338:	e452fff0 	swc1	$f18,-16(v0)
 33c:	846bfffc 	lh	t3,-4(v1)
 340:	448b9000 	mtc1	t3,$f18
 344:	00000000 	nop
 348:	468094a0 	cvt.s.w	$f18,$f18
 34c:	e452fff4 	swc1	$f18,-12(v0)
 350:	806cfff1 	lb	t4,-15(v1)
 354:	448c9000 	mtc1	t4,$f18
 358:	00000000 	nop
 35c:	468094a0 	cvt.s.w	$f18,$f18
 360:	e452fff8 	swc1	$f18,-8(v0)
 364:	c472fff4 	lwc1	$f18,-12(v1)
 368:	e452fffc 	swc1	$f18,-4(v0)
 36c:	27ad004c 	addiu	t5,sp,76
 370:	27ae0060 	addiu	t6,sp,96
 374:	27af0074 	addiu	t7,sp,116
 378:	27b80088 	addiu	t8,sp,136
 37c:	afb8001c 	sw	t8,28(sp)
 380:	afaf0018 	sw	t7,24(sp)
 384:	afae0014 	sw	t6,20(sp)
 388:	afad0010 	sw	t5,16(sp)
 38c:	8fa500a0 	lw	a1,160(sp)
 390:	8fa600a4 	lw	a2,164(sp)
 394:	8fa700a8 	lw	a3,168(sp)
 398:	afaa009c 	sw	t2,156(sp)
 39c:	e7ae003c 	swc1	$f14,60(sp)
 3a0:	0c000000 	jal	0 <func_800BB0A0>
 3a4:	e7b00038 	swc1	$f16,56(sp)
 3a8:	8fa500b0 	lw	a1,176(sp)
 3ac:	8fa600ac 	lw	a2,172(sp)
 3b0:	44809000 	mtc1	zero,$f18
 3b4:	84b90000 	lh	t9,0(a1)
 3b8:	8fa400b4 	lw	a0,180(sp)
 3bc:	2409ffff 	li	t1,-1
 3c0:	00195900 	sll	t3,t9,0x4
 3c4:	00cb1021 	addu	v0,a2,t3
 3c8:	94430012 	lhu	v1,18(v0)
 3cc:	8faa009c 	lw	t2,156(sp)
 3d0:	c7ae003c 	lwc1	$f14,60(sp)
 3d4:	1060000b 	beqz	v1,404 <func_800BB2B4+0x1f0>
 3d8:	c7b00038 	lwc1	$f16,56(sp)
 3dc:	44834000 	mtc1	v1,$f8
 3e0:	3c013f80 	lui	at,0x3f80
 3e4:	44813000 	mtc1	at,$f6
 3e8:	04610005 	bgez	v1,400 <func_800BB2B4+0x1ec>
 3ec:	468042a0 	cvt.s.w	$f10,$f8
 3f0:	3c014f80 	lui	at,0x4f80
 3f4:	44812000 	mtc1	at,$f4
 3f8:	00000000 	nop
 3fc:	46045280 	add.s	$f10,$f10,$f4
 400:	460a3383 	div.s	$f14,$f6,$f10
 404:	94430022 	lhu	v1,34(v0)
 408:	3c013f80 	lui	at,0x3f80
 40c:	5060000b 	beqzl	v1,43c <func_800BB2B4+0x228>
 410:	460e8101 	sub.s	$f4,$f16,$f14
 414:	44832000 	mtc1	v1,$f4
 418:	44814000 	mtc1	at,$f8
 41c:	04610005 	bgez	v1,434 <func_800BB2B4+0x220>
 420:	468021a0 	cvt.s.w	$f6,$f4
 424:	3c014f80 	lui	at,0x4f80
 428:	44815000 	mtc1	at,$f10
 42c:	00000000 	nop
 430:	460a3180 	add.s	$f6,$f6,$f10
 434:	46064403 	div.s	$f16,$f8,$f6
 438:	460e8101 	sub.s	$f4,$f16,$f14
 43c:	c4820000 	lwc1	$f2,0(a0)
 440:	46041282 	mul.s	$f10,$f2,$f4
 444:	460e5000 	add.s	$f0,$f10,$f14
 448:	4612003c 	c.lt.s	$f0,$f18
 44c:	00000000 	nop
 450:	45020004 	bc1fl	464 <func_800BB2B4+0x250>
 454:	46001200 	add.s	$f8,$f2,$f0
 458:	44800000 	mtc1	zero,$f0
 45c:	00000000 	nop
 460:	46001200 	add.s	$f8,$f2,$f0
 464:	3c013f80 	lui	at,0x3f80
 468:	44816000 	mtc1	at,$f12
 46c:	e4880000 	swc1	$f8,0(a0)
 470:	c4860000 	lwc1	$f6,0(a0)
 474:	4606603e 	c.le.s	$f12,$f6
 478:	00000000 	nop
 47c:	45020010 	bc1fl	4c0 <func_800BB2B4+0x2ac>
 480:	01401025 	move	v0,t2
 484:	84ac0000 	lh	t4,0(a1)
 488:	258d0001 	addiu	t5,t4,1
 48c:	a4ad0000 	sh	t5,0(a1)
 490:	84ae0000 	lh	t6,0(a1)
 494:	000e7900 	sll	t7,t6,0x4
 498:	00cfc021 	addu	t8,a2,t7
 49c:	83190030 	lb	t9,48(t8)
 4a0:	55390004 	bnel	t1,t9,4b4 <func_800BB2B4+0x2a0>
 4a4:	c4840000 	lwc1	$f4,0(a0)
 4a8:	a4a00000 	sh	zero,0(a1)
 4ac:	240a0001 	li	t2,1
 4b0:	c4840000 	lwc1	$f4,0(a0)
 4b4:	460c2281 	sub.s	$f10,$f4,$f12
 4b8:	e48a0000 	swc1	$f10,0(a0)
 4bc:	01401025 	move	v0,t2
 4c0:	8fbf0024 	lw	ra,36(sp)
 4c4:	27bd00a0 	addiu	sp,sp,160
 4c8:	03e00008 	jr	ra
 4cc:	00000000 	nop
