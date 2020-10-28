
build/src/code/z_olib.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <OLib_Vec3fDist>:
   0:	c4840000 	lwc1	$f4,0(a0)
   4:	c4a60000 	lwc1	$f6,0(a1)
   8:	c4880004 	lwc1	$f8,4(a0)
   c:	c4aa0004 	lwc1	$f10,4(a1)
  10:	46062081 	sub.s	$f2,$f4,$f6
  14:	c4900008 	lwc1	$f16,8(a0)
  18:	c4b20008 	lwc1	$f18,8(a1)
  1c:	460a4301 	sub.s	$f12,$f8,$f10
  20:	46021102 	mul.s	$f4,$f2,$f2
  24:	46128381 	sub.s	$f14,$f16,$f18
  28:	460c6182 	mul.s	$f6,$f12,$f12
  2c:	46062200 	add.s	$f8,$f4,$f6
  30:	460e7282 	mul.s	$f10,$f14,$f14
  34:	460a4000 	add.s	$f0,$f8,$f10
  38:	03e00008 	jr	ra
  3c:	46000004 	sqrt.s	$f0,$f0

00000040 <OLib_Vec3fDistOutDiff>:
  40:	c4840000 	lwc1	$f4,0(a0)
  44:	c4a60000 	lwc1	$f6,0(a1)
  48:	46062201 	sub.s	$f8,$f4,$f6
  4c:	e4c80000 	swc1	$f8,0(a2)
  50:	c4b00004 	lwc1	$f16,4(a1)
  54:	c48a0004 	lwc1	$f10,4(a0)
  58:	c4c20000 	lwc1	$f2,0(a2)
  5c:	46105481 	sub.s	$f18,$f10,$f16
  60:	46021282 	mul.s	$f10,$f2,$f2
  64:	e4d20004 	swc1	$f18,4(a2)
  68:	c4a60008 	lwc1	$f6,8(a1)
  6c:	c4840008 	lwc1	$f4,8(a0)
  70:	c4cc0004 	lwc1	$f12,4(a2)
  74:	46062201 	sub.s	$f8,$f4,$f6
  78:	460c6402 	mul.s	$f16,$f12,$f12
  7c:	e4c80008 	swc1	$f8,8(a2)
  80:	c4ce0008 	lwc1	$f14,8(a2)
  84:	460e7102 	mul.s	$f4,$f14,$f14
  88:	46105480 	add.s	$f18,$f10,$f16
  8c:	46049000 	add.s	$f0,$f18,$f4
  90:	03e00008 	jr	ra
  94:	46000004 	sqrt.s	$f0,$f0

00000098 <OLib_Vec3fDistXZ>:
  98:	c4840000 	lwc1	$f4,0(a0)
  9c:	c4a60000 	lwc1	$f6,0(a1)
  a0:	c4880008 	lwc1	$f8,8(a0)
  a4:	c4aa0008 	lwc1	$f10,8(a1)
  a8:	46062081 	sub.s	$f2,$f4,$f6
  ac:	460a4301 	sub.s	$f12,$f8,$f10
  b0:	46021402 	mul.s	$f16,$f2,$f2
  b4:	00000000 	nop
  b8:	460c6482 	mul.s	$f18,$f12,$f12
  bc:	46128000 	add.s	$f0,$f16,$f18
  c0:	03e00008 	jr	ra
  c4:	46000004 	sqrt.s	$f0,$f0

000000c8 <OLib_ClampMinDist>:
  c8:	46006005 	abs.s	$f0,$f12
  cc:	4600703e 	c.le.s	$f14,$f0
  d0:	00000000 	nop
  d4:	45020005 	bc1fl	ec <OLib_ClampMinDist+0x24>
  d8:	44802000 	mtc1	zero,$f4
  dc:	46006086 	mov.s	$f2,$f12
  e0:	03e00008 	jr	ra
  e4:	46006006 	mov.s	$f0,$f12
  e8:	44802000 	mtc1	zero,$f4
  ec:	00000000 	nop
  f0:	460c203e 	c.le.s	$f4,$f12
  f4:	00000000 	nop
  f8:	45020004 	bc1fl	10c <OLib_ClampMinDist+0x44>
  fc:	46007007 	neg.s	$f0,$f14
 100:	10000002 	b	10c <OLib_ClampMinDist+0x44>
 104:	46007006 	mov.s	$f0,$f14
 108:	46007007 	neg.s	$f0,$f14
 10c:	46000086 	mov.s	$f2,$f0
 110:	03e00008 	jr	ra
 114:	46001006 	mov.s	$f0,$f2

00000118 <OLib_ClampMaxDist>:
 118:	46006005 	abs.s	$f0,$f12
 11c:	460e003e 	c.le.s	$f0,$f14
 120:	00000000 	nop
 124:	45020005 	bc1fl	13c <OLib_ClampMaxDist+0x24>
 128:	44802000 	mtc1	zero,$f4
 12c:	46006086 	mov.s	$f2,$f12
 130:	03e00008 	jr	ra
 134:	46006006 	mov.s	$f0,$f12
 138:	44802000 	mtc1	zero,$f4
 13c:	00000000 	nop
 140:	460c203e 	c.le.s	$f4,$f12
 144:	00000000 	nop
 148:	45020004 	bc1fl	15c <OLib_ClampMaxDist+0x44>
 14c:	46007007 	neg.s	$f0,$f14
 150:	10000002 	b	15c <OLib_ClampMaxDist+0x44>
 154:	46007006 	mov.s	$f0,$f14
 158:	46007007 	neg.s	$f0,$f14
 15c:	46000086 	mov.s	$f2,$f0
 160:	03e00008 	jr	ra
 164:	46001006 	mov.s	$f0,$f2

00000168 <OLib_Vec3fDistNormalize>:
 168:	27bdffc8 	addiu	sp,sp,-56
 16c:	afbf0014 	sw	ra,20(sp)
 170:	afa40038 	sw	a0,56(sp)
 174:	c4a60000 	lwc1	$f6,0(a1)
 178:	c4c40000 	lwc1	$f4,0(a2)
 17c:	c4aa0004 	lwc1	$f10,4(a1)
 180:	c4c80004 	lwc1	$f8,4(a2)
 184:	46062081 	sub.s	$f2,$f4,$f6
 188:	c4a60008 	lwc1	$f6,8(a1)
 18c:	c4c40008 	lwc1	$f4,8(a2)
 190:	460a4401 	sub.s	$f16,$f8,$f10
 194:	46021202 	mul.s	$f8,$f2,$f2
 198:	3c010000 	lui	at,0x0
 19c:	46062481 	sub.s	$f18,$f4,$f6
 1a0:	46108282 	mul.s	$f10,$f16,$f16
 1a4:	c42e0000 	lwc1	$f14,0(at)
 1a8:	e7b00030 	swc1	$f16,48(sp)
 1ac:	46129182 	mul.s	$f6,$f18,$f18
 1b0:	e7b20034 	swc1	$f18,52(sp)
 1b4:	e7a2002c 	swc1	$f2,44(sp)
 1b8:	460a4100 	add.s	$f4,$f8,$f10
 1bc:	46062000 	add.s	$f0,$f4,$f6
 1c0:	0c000000 	jal	0 <OLib_Vec3fDist>
 1c4:	46000304 	sqrt.s	$f12,$f0
 1c8:	c7a2002c 	lwc1	$f2,44(sp)
 1cc:	c7b00030 	lwc1	$f16,48(sp)
 1d0:	c7b20034 	lwc1	$f18,52(sp)
 1d4:	46001203 	div.s	$f8,$f2,$f0
 1d8:	27ae0020 	addiu	t6,sp,32
 1dc:	8fa20038 	lw	v0,56(sp)
 1e0:	46008283 	div.s	$f10,$f16,$f0
 1e4:	e7a80020 	swc1	$f8,32(sp)
 1e8:	46009103 	div.s	$f4,$f18,$f0
 1ec:	e7aa0024 	swc1	$f10,36(sp)
 1f0:	e7a40028 	swc1	$f4,40(sp)
 1f4:	8dd80000 	lw	t8,0(t6)
 1f8:	ac580000 	sw	t8,0(v0)
 1fc:	8dcf0004 	lw	t7,4(t6)
 200:	ac4f0004 	sw	t7,4(v0)
 204:	8dd80008 	lw	t8,8(t6)
 208:	ac580008 	sw	t8,8(v0)
 20c:	8fbf0014 	lw	ra,20(sp)
 210:	27bd0038 	addiu	sp,sp,56
 214:	03e00008 	jr	ra
 218:	00000000 	nop

0000021c <OLib_VecSphToVec3f>:
 21c:	27bdffc0 	addiu	sp,sp,-64
 220:	afbf001c 	sw	ra,28(sp)
 224:	afb00018 	sw	s0,24(sp)
 228:	afa40040 	sw	a0,64(sp)
 22c:	00a08025 	move	s0,a1
 230:	0c000000 	jal	0 <OLib_Vec3fDist>
 234:	84a40004 	lh	a0,4(a1)
 238:	e7a0002c 	swc1	$f0,44(sp)
 23c:	0c000000 	jal	0 <OLib_Vec3fDist>
 240:	86040006 	lh	a0,6(s0)
 244:	e7a00024 	swc1	$f0,36(sp)
 248:	0c000000 	jal	0 <OLib_Vec3fDist>
 24c:	86040004 	lh	a0,4(s0)
 250:	86040006 	lh	a0,6(s0)
 254:	0c000000 	jal	0 <OLib_Vec3fDist>
 258:	e7a00030 	swc1	$f0,48(sp)
 25c:	c7a20030 	lwc1	$f2,48(sp)
 260:	c6040000 	lwc1	$f4,0(s0)
 264:	c7b0002c 	lwc1	$f16,44(sp)
 268:	27ae0034 	addiu	t6,sp,52
 26c:	46022182 	mul.s	$f6,$f4,$f2
 270:	8fa20040 	lw	v0,64(sp)
 274:	46003202 	mul.s	$f8,$f6,$f0
 278:	e7a80034 	swc1	$f8,52(sp)
 27c:	c60a0000 	lwc1	$f10,0(s0)
 280:	c7a80024 	lwc1	$f8,36(sp)
 284:	46105482 	mul.s	$f18,$f10,$f16
 288:	e7b20038 	swc1	$f18,56(sp)
 28c:	c6040000 	lwc1	$f4,0(s0)
 290:	46022182 	mul.s	$f6,$f4,$f2
 294:	00000000 	nop
 298:	46083282 	mul.s	$f10,$f6,$f8
 29c:	e7aa003c 	swc1	$f10,60(sp)
 2a0:	8dd80000 	lw	t8,0(t6)
 2a4:	ac580000 	sw	t8,0(v0)
 2a8:	8dcf0004 	lw	t7,4(t6)
 2ac:	ac4f0004 	sw	t7,4(v0)
 2b0:	8dd80008 	lw	t8,8(t6)
 2b4:	ac580008 	sw	t8,8(v0)
 2b8:	8fbf001c 	lw	ra,28(sp)
 2bc:	8fb00018 	lw	s0,24(sp)
 2c0:	27bd0040 	addiu	sp,sp,64
 2c4:	03e00008 	jr	ra
 2c8:	00000000 	nop

000002cc <OLib_VecSphGeoToVec3f>:
 2cc:	27bdffe0 	addiu	sp,sp,-32
 2d0:	afbf0014 	sw	ra,20(sp)
 2d4:	c4a40000 	lwc1	$f4,0(a1)
 2d8:	240f3fff 	li	t7,16383
 2dc:	e7a40018 	swc1	$f4,24(sp)
 2e0:	84ae0004 	lh	t6,4(a1)
 2e4:	01eec023 	subu	t8,t7,t6
 2e8:	a7b8001c 	sh	t8,28(sp)
 2ec:	84b90006 	lh	t9,6(a1)
 2f0:	27a50018 	addiu	a1,sp,24
 2f4:	0c000000 	jal	0 <OLib_Vec3fDist>
 2f8:	a7b9001e 	sh	t9,30(sp)
 2fc:	8fbf0014 	lw	ra,20(sp)
 300:	27bd0020 	addiu	sp,sp,32
 304:	03e00008 	jr	ra
 308:	00000000 	nop

0000030c <OLib_Vec3fToVecSph>:
 30c:	27bdffd0 	addiu	sp,sp,-48
 310:	afbf0014 	sw	ra,20(sp)
 314:	afa40030 	sw	a0,48(sp)
 318:	c4ac0000 	lwc1	$f12,0(a1)
 31c:	c4a20008 	lwc1	$f2,8(a1)
 320:	44809000 	mtc1	zero,$f18
 324:	460c6102 	mul.s	$f4,$f12,$f12
 328:	00000000 	nop
 32c:	46021182 	mul.s	$f6,$f2,$f2
 330:	46062400 	add.s	$f16,$f4,$f6
 334:	46008004 	sqrt.s	$f0,$f16
 338:	46120032 	c.eq.s	$f0,$f18
 33c:	e7a00020 	swc1	$f0,32(sp)
 340:	c7ac0020 	lwc1	$f12,32(sp)
 344:	45000008 	bc1f	368 <OLib_Vec3fToVecSph+0x5c>
 348:	00000000 	nop
 34c:	c4a80004 	lwc1	$f8,4(a1)
 350:	46089032 	c.eq.s	$f18,$f8
 354:	00000000 	nop
 358:	45020004 	bc1fl	36c <OLib_Vec3fToVecSph+0x60>
 35c:	c4ae0004 	lwc1	$f14,4(a1)
 360:	10000015 	b	3b8 <OLib_Vec3fToVecSph+0xac>
 364:	a7a0002c 	sh	zero,44(sp)
 368:	c4ae0004 	lwc1	$f14,4(a1)
 36c:	e7b00024 	swc1	$f16,36(sp)
 370:	0c000000 	jal	0 <OLib_Vec3fDist>
 374:	afa50034 	sw	a1,52(sp)
 378:	3c010000 	lui	at,0x0
 37c:	c42a0004 	lwc1	$f10,4(at)
 380:	3c010000 	lui	at,0x0
 384:	c4260008 	lwc1	$f6,8(at)
 388:	460a0102 	mul.s	$f4,$f0,$f10
 38c:	3c013f00 	lui	at,0x3f00
 390:	44815000 	mtc1	at,$f10
 394:	44809000 	mtc1	zero,$f18
 398:	8fa50034 	lw	a1,52(sp)
 39c:	c7b00024 	lwc1	$f16,36(sp)
 3a0:	46062202 	mul.s	$f8,$f4,$f6
 3a4:	460a4100 	add.s	$f4,$f8,$f10
 3a8:	4600218d 	trunc.w.s	$f6,$f4
 3ac:	440f3000 	mfc1	t7,$f6
 3b0:	00000000 	nop
 3b4:	a7af002c 	sh	t7,44(sp)
 3b8:	c4a20004 	lwc1	$f2,4(a1)
 3bc:	46021202 	mul.s	$f8,$f2,$f2
 3c0:	46104000 	add.s	$f0,$f8,$f16
 3c4:	46000004 	sqrt.s	$f0,$f0
 3c8:	e7a00028 	swc1	$f0,40(sp)
 3cc:	c4ac0000 	lwc1	$f12,0(a1)
 3d0:	460c9032 	c.eq.s	$f18,$f12
 3d4:	00000000 	nop
 3d8:	45000008 	bc1f	3fc <OLib_Vec3fToVecSph+0xf0>
 3dc:	00000000 	nop
 3e0:	c4aa0008 	lwc1	$f10,8(a1)
 3e4:	460a9032 	c.eq.s	$f18,$f10
 3e8:	00000000 	nop
 3ec:	45000003 	bc1f	3fc <OLib_Vec3fToVecSph+0xf0>
 3f0:	00000000 	nop
 3f4:	10000010 	b	438 <OLib_Vec3fToVecSph+0x12c>
 3f8:	a7a0002e 	sh	zero,46(sp)
 3fc:	0c000000 	jal	0 <OLib_Vec3fDist>
 400:	c4ae0008 	lwc1	$f14,8(a1)
 404:	3c010000 	lui	at,0x0
 408:	c424000c 	lwc1	$f4,12(at)
 40c:	3c010000 	lui	at,0x0
 410:	c4280010 	lwc1	$f8,16(at)
 414:	46040182 	mul.s	$f6,$f0,$f4
 418:	3c013f00 	lui	at,0x3f00
 41c:	44812000 	mtc1	at,$f4
 420:	46083282 	mul.s	$f10,$f6,$f8
 424:	46045180 	add.s	$f6,$f10,$f4
 428:	4600320d 	trunc.w.s	$f8,$f6
 42c:	44194000 	mfc1	t9,$f8
 430:	00000000 	nop
 434:	a7b9002e 	sh	t9,46(sp)
 438:	27a90028 	addiu	t1,sp,40
 43c:	8d2b0000 	lw	t3,0(t1)
 440:	8fa80030 	lw	t0,48(sp)
 444:	ad0b0000 	sw	t3,0(t0)
 448:	8d2a0004 	lw	t2,4(t1)
 44c:	ad0a0004 	sw	t2,4(t0)
 450:	8fbf0014 	lw	ra,20(sp)
 454:	8fa20030 	lw	v0,48(sp)
 458:	27bd0030 	addiu	sp,sp,48
 45c:	03e00008 	jr	ra
 460:	00000000 	nop

00000464 <OLib_Vec3fToVecSphGeo>:
 464:	27bdffe0 	addiu	sp,sp,-32
 468:	afbf0014 	sw	ra,20(sp)
 46c:	afa40020 	sw	a0,32(sp)
 470:	0c000000 	jal	0 <OLib_Vec3fDist>
 474:	27a40018 	addiu	a0,sp,24
 478:	87ae001c 	lh	t6,28(sp)
 47c:	240f3fff 	li	t7,16383
 480:	27b90018 	addiu	t9,sp,24
 484:	01eec023 	subu	t8,t7,t6
 488:	a7b8001c 	sh	t8,28(sp)
 48c:	8fa20020 	lw	v0,32(sp)
 490:	8f290000 	lw	t1,0(t9)
 494:	ac490000 	sw	t1,0(v0)
 498:	8f280004 	lw	t0,4(t9)
 49c:	ac480004 	sw	t0,4(v0)
 4a0:	8fbf0014 	lw	ra,20(sp)
 4a4:	27bd0020 	addiu	sp,sp,32
 4a8:	03e00008 	jr	ra
 4ac:	00000000 	nop

000004b0 <OLib_Vec3fDiffToVecSph>:
 4b0:	27bdffd8 	addiu	sp,sp,-40
 4b4:	afbf0014 	sw	ra,20(sp)
 4b8:	c4a60000 	lwc1	$f6,0(a1)
 4bc:	c4c40000 	lwc1	$f4,0(a2)
 4c0:	46062201 	sub.s	$f8,$f4,$f6
 4c4:	e7a8001c 	swc1	$f8,28(sp)
 4c8:	c4b00004 	lwc1	$f16,4(a1)
 4cc:	c4ca0004 	lwc1	$f10,4(a2)
 4d0:	46105481 	sub.s	$f18,$f10,$f16
 4d4:	e7b20020 	swc1	$f18,32(sp)
 4d8:	c4a60008 	lwc1	$f6,8(a1)
 4dc:	c4c40008 	lwc1	$f4,8(a2)
 4e0:	27a5001c 	addiu	a1,sp,28
 4e4:	46062201 	sub.s	$f8,$f4,$f6
 4e8:	0c000000 	jal	0 <OLib_Vec3fDist>
 4ec:	e7a80024 	swc1	$f8,36(sp)
 4f0:	8fbf0014 	lw	ra,20(sp)
 4f4:	27bd0028 	addiu	sp,sp,40
 4f8:	03e00008 	jr	ra
 4fc:	00000000 	nop

00000500 <OLib_Vec3fDiffToVecSphGeo>:
 500:	27bdffd8 	addiu	sp,sp,-40
 504:	afbf0014 	sw	ra,20(sp)
 508:	c4a60000 	lwc1	$f6,0(a1)
 50c:	c4c40000 	lwc1	$f4,0(a2)
 510:	46062201 	sub.s	$f8,$f4,$f6
 514:	e7a8001c 	swc1	$f8,28(sp)
 518:	c4b00004 	lwc1	$f16,4(a1)
 51c:	c4ca0004 	lwc1	$f10,4(a2)
 520:	46105481 	sub.s	$f18,$f10,$f16
 524:	e7b20020 	swc1	$f18,32(sp)
 528:	c4a60008 	lwc1	$f6,8(a1)
 52c:	c4c40008 	lwc1	$f4,8(a2)
 530:	27a5001c 	addiu	a1,sp,28
 534:	46062201 	sub.s	$f8,$f4,$f6
 538:	0c000000 	jal	0 <OLib_Vec3fDist>
 53c:	e7a80024 	swc1	$f8,36(sp)
 540:	8fbf0014 	lw	ra,20(sp)
 544:	27bd0028 	addiu	sp,sp,40
 548:	03e00008 	jr	ra
 54c:	00000000 	nop

00000550 <OLib_Vec3fDiffRad>:
 550:	27bdffd8 	addiu	sp,sp,-40
 554:	afbf0014 	sw	ra,20(sp)
 558:	afa40028 	sw	a0,40(sp)
 55c:	c4aa0004 	lwc1	$f10,4(a1)
 560:	c4c80004 	lwc1	$f8,4(a2)
 564:	c4a60008 	lwc1	$f6,8(a1)
 568:	c4c40008 	lwc1	$f4,8(a2)
 56c:	afa60030 	sw	a2,48(sp)
 570:	afa5002c 	sw	a1,44(sp)
 574:	460a4381 	sub.s	$f14,$f8,$f10
 578:	0c000000 	jal	0 <OLib_Vec3fDist>
 57c:	46062301 	sub.s	$f12,$f4,$f6
 580:	8fa5002c 	lw	a1,44(sp)
 584:	8fa60030 	lw	a2,48(sp)
 588:	e7a0001c 	swc1	$f0,28(sp)
 58c:	c4a60008 	lwc1	$f6,8(a1)
 590:	c4b20000 	lwc1	$f18,0(a1)
 594:	c4c40008 	lwc1	$f4,8(a2)
 598:	c4d00000 	lwc1	$f16,0(a2)
 59c:	46062381 	sub.s	$f14,$f4,$f6
 5a0:	0c000000 	jal	0 <OLib_Vec3fDist>
 5a4:	46128301 	sub.s	$f12,$f16,$f18
 5a8:	44804000 	mtc1	zero,$f8
 5ac:	e7a00020 	swc1	$f0,32(sp)
 5b0:	27ae001c 	addiu	t6,sp,28
 5b4:	e7a80024 	swc1	$f8,36(sp)
 5b8:	8fa20028 	lw	v0,40(sp)
 5bc:	8dd80000 	lw	t8,0(t6)
 5c0:	ac580000 	sw	t8,0(v0)
 5c4:	8dcf0004 	lw	t7,4(t6)
 5c8:	ac4f0004 	sw	t7,4(v0)
 5cc:	8dd80008 	lw	t8,8(t6)
 5d0:	ac580008 	sw	t8,8(v0)
 5d4:	8fbf0014 	lw	ra,20(sp)
 5d8:	27bd0028 	addiu	sp,sp,40
 5dc:	03e00008 	jr	ra
 5e0:	00000000 	nop

000005e4 <OLib_Vec3fDiffDegF>:
 5e4:	27bdffd0 	addiu	sp,sp,-48
 5e8:	afbf0014 	sw	ra,20(sp)
 5ec:	afa40030 	sw	a0,48(sp)
 5f0:	0c000000 	jal	0 <OLib_Vec3fDist>
 5f4:	27a40024 	addiu	a0,sp,36
 5f8:	3c010000 	lui	at,0x0
 5fc:	c4200014 	lwc1	$f0,20(at)
 600:	c7a40024 	lwc1	$f4,36(sp)
 604:	c7a80028 	lwc1	$f8,40(sp)
 608:	44808000 	mtc1	zero,$f16
 60c:	46002182 	mul.s	$f6,$f4,$f0
 610:	27ae0018 	addiu	t6,sp,24
 614:	e7b00020 	swc1	$f16,32(sp)
 618:	46004282 	mul.s	$f10,$f8,$f0
 61c:	8fa20030 	lw	v0,48(sp)
 620:	e7a60018 	swc1	$f6,24(sp)
 624:	e7aa001c 	swc1	$f10,28(sp)
 628:	8dd80000 	lw	t8,0(t6)
 62c:	ac580000 	sw	t8,0(v0)
 630:	8dcf0004 	lw	t7,4(t6)
 634:	ac4f0004 	sw	t7,4(v0)
 638:	8dd80008 	lw	t8,8(t6)
 63c:	ac580008 	sw	t8,8(v0)
 640:	8fbf0014 	lw	ra,20(sp)
 644:	27bd0030 	addiu	sp,sp,48
 648:	03e00008 	jr	ra
 64c:	00000000 	nop

00000650 <OLib_Vec3fDiffBinAng>:
 650:	27bdffd0 	addiu	sp,sp,-48
 654:	afbf0014 	sw	ra,20(sp)
 658:	afa40030 	sw	a0,48(sp)
 65c:	0c000000 	jal	0 <OLib_Vec3fDist>
 660:	27a40024 	addiu	a0,sp,36
 664:	3c010000 	lui	at,0x0
 668:	c4200018 	lwc1	$f0,24(at)
 66c:	c7a40024 	lwc1	$f4,36(sp)
 670:	3c010000 	lui	at,0x0
 674:	c422001c 	lwc1	$f2,28(at)
 678:	46002182 	mul.s	$f6,$f4,$f0
 67c:	c7b20028 	lwc1	$f18,40(sp)
 680:	3c013f00 	lui	at,0x3f00
 684:	44816000 	mtc1	at,$f12
 688:	a7a00020 	sh	zero,32(sp)
 68c:	27a8001c 	addiu	t0,sp,28
 690:	8fa20030 	lw	v0,48(sp)
 694:	46023202 	mul.s	$f8,$f6,$f2
 698:	00000000 	nop
 69c:	46009102 	mul.s	$f4,$f18,$f0
 6a0:	460c4280 	add.s	$f10,$f8,$f12
 6a4:	46022182 	mul.s	$f6,$f4,$f2
 6a8:	4600540d 	trunc.w.s	$f16,$f10
 6ac:	460c3200 	add.s	$f8,$f6,$f12
 6b0:	440f8000 	mfc1	t7,$f16
 6b4:	4600428d 	trunc.w.s	$f10,$f8
 6b8:	a7af001c 	sh	t7,28(sp)
 6bc:	44195000 	mfc1	t9,$f10
 6c0:	00000000 	nop
 6c4:	a7b9001e 	sh	t9,30(sp)
 6c8:	8d0a0000 	lw	t2,0(t0)
 6cc:	a84a0000 	swl	t2,0(v0)
 6d0:	b84a0003 	swr	t2,3(v0)
 6d4:	950a0004 	lhu	t2,4(t0)
 6d8:	a44a0004 	sh	t2,4(v0)
 6dc:	8fbf0014 	lw	ra,20(sp)
 6e0:	27bd0030 	addiu	sp,sp,48
 6e4:	03e00008 	jr	ra
 6e8:	00000000 	nop
 6ec:	00000000 	nop
