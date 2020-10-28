
build/src/code/code_800FCE80.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Math_tanf>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf0014 	sw	ra,20(sp)
   8:	e7ac0020 	swc1	$f12,32(sp)
   c:	0c000000 	jal	0 <Math_tanf>
  10:	c7ac0020 	lwc1	$f12,32(sp)
  14:	e7a0001c 	swc1	$f0,28(sp)
  18:	0c000000 	jal	0 <Math_tanf>
  1c:	c7ac0020 	lwc1	$f12,32(sp)
  20:	8fbf0014 	lw	ra,20(sp)
  24:	c7a4001c 	lwc1	$f4,28(sp)
  28:	27bd0020 	addiu	sp,sp,32
  2c:	03e00008 	jr	ra
  30:	46002003 	div.s	$f0,$f4,$f0

00000034 <Math_floorf>:
  34:	27bdffe8 	addiu	sp,sp,-24
  38:	afbf0014 	sw	ra,20(sp)
  3c:	0c000000 	jal	0 <Math_tanf>
  40:	00000000 	nop
  44:	8fbf0014 	lw	ra,20(sp)
  48:	27bd0018 	addiu	sp,sp,24
  4c:	03e00008 	jr	ra
  50:	00000000 	nop

00000054 <Math_ceilf>:
  54:	27bdffe8 	addiu	sp,sp,-24
  58:	afbf0014 	sw	ra,20(sp)
  5c:	0c000000 	jal	0 <Math_tanf>
  60:	00000000 	nop
  64:	8fbf0014 	lw	ra,20(sp)
  68:	27bd0018 	addiu	sp,sp,24
  6c:	03e00008 	jr	ra
  70:	00000000 	nop

00000074 <Math_roundf>:
  74:	27bdffe8 	addiu	sp,sp,-24
  78:	afbf0014 	sw	ra,20(sp)
  7c:	0c000000 	jal	0 <Math_tanf>
  80:	00000000 	nop
  84:	8fbf0014 	lw	ra,20(sp)
  88:	27bd0018 	addiu	sp,sp,24
  8c:	03e00008 	jr	ra
  90:	00000000 	nop

00000094 <Math_truncf>:
  94:	27bdffe8 	addiu	sp,sp,-24
  98:	afbf0014 	sw	ra,20(sp)
  9c:	0c000000 	jal	0 <Math_tanf>
  a0:	00000000 	nop
  a4:	8fbf0014 	lw	ra,20(sp)
  a8:	27bd0018 	addiu	sp,sp,24
  ac:	03e00008 	jr	ra
  b0:	00000000 	nop

000000b4 <Math_nearbyintf>:
  b4:	27bdffe8 	addiu	sp,sp,-24
  b8:	afbf0014 	sw	ra,20(sp)
  bc:	0c000000 	jal	0 <Math_tanf>
  c0:	00000000 	nop
  c4:	8fbf0014 	lw	ra,20(sp)
  c8:	27bd0018 	addiu	sp,sp,24
  cc:	03e00008 	jr	ra
  d0:	00000000 	nop

000000d4 <Math_atanf_taylor_q>:
  d4:	460c6002 	mul.s	$f0,$f12,$f12
  d8:	3c020000 	lui	v0,0x0
  dc:	46006086 	mov.s	$f2,$f12
  e0:	24420000 	addiu	v0,v0,0
  e4:	46006382 	mul.s	$f14,$f12,$f0
  e8:	00000000 	nop
  ec:	c4440000 	lwc1	$f4,0(v0)
  f0:	24420004 	addiu	v0,v0,4
  f4:	460e2302 	mul.s	$f12,$f4,$f14
  f8:	460c1400 	add.s	$f16,$f2,$f12
  fc:	46101032 	c.eq.s	$f2,$f16
 100:	00000000 	nop
 104:	45010004 	bc1t	118 <Math_atanf_taylor_q+0x44>
 108:	00000000 	nop
 10c:	46007382 	mul.s	$f14,$f14,$f0
 110:	1000fff6 	b	ec <Math_atanf_taylor_q+0x18>
 114:	46008086 	mov.s	$f2,$f16
 118:	03e00008 	jr	ra
 11c:	46001006 	mov.s	$f0,$f2

00000120 <Math_atanf_taylor>:
 120:	44808000 	mtc1	zero,$f16
 124:	27bdffe8 	addiu	sp,sp,-24
 128:	afbf0014 	sw	ra,20(sp)
 12c:	460c803c 	c.lt.s	$f16,$f12
 130:	46006386 	mov.s	$f14,$f12
 134:	3c010000 	lui	at,0x0
 138:	45020004 	bc1fl	14c <Math_atanf_taylor+0x2c>
 13c:	4610703c 	c.lt.s	$f14,$f16
 140:	1000000f 	b	180 <Math_atanf_taylor+0x60>
 144:	46006006 	mov.s	$f0,$f12
 148:	4610703c 	c.lt.s	$f14,$f16
 14c:	00000000 	nop
 150:	45020004 	bc1fl	164 <Math_atanf_taylor+0x44>
 154:	46107032 	c.eq.s	$f14,$f16
 158:	10000009 	b	180 <Math_atanf_taylor+0x60>
 15c:	46007007 	neg.s	$f0,$f14
 160:	46107032 	c.eq.s	$f14,$f16
 164:	3c010000 	lui	at,0x0
 168:	45000003 	bc1f	178 <Math_atanf_taylor+0x58>
 16c:	00000000 	nop
 170:	10000030 	b	234 <Math_atanf_taylor+0x114>
 174:	46008006 	mov.s	$f0,$f16
 178:	1000002e 	b	234 <Math_atanf_taylor+0x114>
 17c:	c4200000 	lwc1	$f0,0(at)
 180:	c4240024 	lwc1	$f4,36(at)
 184:	3c010000 	lui	at,0x0
 188:	4604003e 	c.le.s	$f0,$f4
 18c:	00000000 	nop
 190:	45000005 	bc1f	1a8 <Math_atanf_taylor+0x88>
 194:	00000000 	nop
 198:	0c000000 	jal	0 <Math_tanf>
 19c:	46007306 	mov.s	$f12,$f14
 1a0:	10000025 	b	238 <Math_atanf_taylor+0x118>
 1a4:	8fbf0014 	lw	ra,20(sp)
 1a8:	c4260028 	lwc1	$f6,40(at)
 1ac:	3c013f80 	lui	at,0x3f80
 1b0:	4600303e 	c.le.s	$f6,$f0
 1b4:	00000000 	nop
 1b8:	4502000d 	bc1fl	1f0 <Math_atanf_taylor+0xd0>
 1bc:	44811000 	mtc1	at,$f2
 1c0:	3c013f80 	lui	at,0x3f80
 1c4:	44811000 	mtc1	at,$f2
 1c8:	e7ae0018 	swc1	$f14,24(sp)
 1cc:	0c000000 	jal	0 <Math_tanf>
 1d0:	46001303 	div.s	$f12,$f2,$f0
 1d4:	3c010000 	lui	at,0x0
 1d8:	c428002c 	lwc1	$f8,44(at)
 1dc:	44808000 	mtc1	zero,$f16
 1e0:	c7ae0018 	lwc1	$f14,24(sp)
 1e4:	1000000c 	b	218 <Math_atanf_taylor+0xf8>
 1e8:	46004081 	sub.s	$f2,$f8,$f0
 1ec:	44811000 	mtc1	at,$f2
 1f0:	e7ae0018 	swc1	$f14,24(sp)
 1f4:	46001281 	sub.s	$f10,$f2,$f0
 1f8:	46001480 	add.s	$f18,$f2,$f0
 1fc:	0c000000 	jal	0 <Math_tanf>
 200:	46125303 	div.s	$f12,$f10,$f18
 204:	3c010000 	lui	at,0x0
 208:	c4240030 	lwc1	$f4,48(at)
 20c:	44808000 	mtc1	zero,$f16
 210:	c7ae0018 	lwc1	$f14,24(sp)
 214:	46002081 	sub.s	$f2,$f4,$f0
 218:	460e803c 	c.lt.s	$f16,$f14
 21c:	00000000 	nop
 220:	45020004 	bc1fl	234 <Math_atanf_taylor+0x114>
 224:	46001007 	neg.s	$f0,$f2
 228:	10000002 	b	234 <Math_atanf_taylor+0x114>
 22c:	46001006 	mov.s	$f0,$f2
 230:	46001007 	neg.s	$f0,$f2
 234:	8fbf0014 	lw	ra,20(sp)
 238:	27bd0018 	addiu	sp,sp,24
 23c:	03e00008 	jr	ra
 240:	00000000 	nop

00000244 <Math_atanf_cfrac>:
 244:	3c01bf80 	lui	at,0xbf80
 248:	44810000 	mtc1	at,$f0
 24c:	3c013f80 	lui	at,0x3f80
 250:	460c003e 	c.le.s	$f0,$f12
 254:	00000000 	nop
 258:	4502000a 	bc1fl	284 <Math_atanf_cfrac+0x40>
 25c:	3c013f80 	lui	at,0x3f80
 260:	44818000 	mtc1	at,$f16
 264:	00000000 	nop
 268:	4610603e 	c.le.s	$f12,$f16
 26c:	00000000 	nop
 270:	45020004 	bc1fl	284 <Math_atanf_cfrac+0x40>
 274:	3c013f80 	lui	at,0x3f80
 278:	10000013 	b	2c8 <Math_atanf_cfrac+0x84>
 27c:	00001025 	move	v0,zero
 280:	3c013f80 	lui	at,0x3f80
 284:	44818000 	mtc1	at,$f16
 288:	24020001 	li	v0,1
 28c:	460c803c 	c.lt.s	$f16,$f12
 290:	00000000 	nop
 294:	45020004 	bc1fl	2a8 <Math_atanf_cfrac+0x64>
 298:	4600603c 	c.lt.s	$f12,$f0
 29c:	1000000a 	b	2c8 <Math_atanf_cfrac+0x84>
 2a0:	460c8303 	div.s	$f12,$f16,$f12
 2a4:	4600603c 	c.lt.s	$f12,$f0
 2a8:	2402ffff 	li	v0,-1
 2ac:	3c010000 	lui	at,0x0
 2b0:	45000003 	bc1f	2c0 <Math_atanf_cfrac+0x7c>
 2b4:	00000000 	nop
 2b8:	10000003 	b	2c8 <Math_atanf_cfrac+0x84>
 2bc:	460c8303 	div.s	$f12,$f16,$f12
 2c0:	03e00008 	jr	ra
 2c4:	c4200000 	lwc1	$f0,0(at)
 2c8:	3c014100 	lui	at,0x4100
 2cc:	460c6002 	mul.s	$f0,$f12,$f12
 2d0:	44801000 	mtc1	zero,$f2
 2d4:	44817000 	mtc1	at,$f14
 2d8:	24030008 	li	v1,8
 2dc:	460e7482 	mul.s	$f18,$f14,$f14
 2e0:	460e7280 	add.s	$f10,$f14,$f14
 2e4:	2463fffc 	addiu	v1,v1,-4
 2e8:	46105280 	add.s	$f10,$f10,$f16
 2ec:	46009482 	mul.s	$f18,$f18,$f0
 2f0:	46107381 	sub.s	$f14,$f14,$f16
 2f4:	460e7202 	mul.s	$f8,$f14,$f14
 2f8:	46025280 	add.s	$f10,$f10,$f2
 2fc:	460e7180 	add.s	$f6,$f14,$f14
 300:	46004202 	mul.s	$f8,$f8,$f0
 304:	460a9083 	div.s	$f2,$f18,$f10
 308:	46103180 	add.s	$f6,$f6,$f16
 30c:	46107381 	sub.s	$f14,$f14,$f16
 310:	460e7282 	mul.s	$f10,$f14,$f14
 314:	46023180 	add.s	$f6,$f6,$f2
 318:	460e7480 	add.s	$f18,$f14,$f14
 31c:	46005282 	mul.s	$f10,$f10,$f0
 320:	46064083 	div.s	$f2,$f8,$f6
 324:	46109480 	add.s	$f18,$f18,$f16
 328:	46107381 	sub.s	$f14,$f14,$f16
 32c:	460e7182 	mul.s	$f6,$f14,$f14
 330:	46029480 	add.s	$f18,$f18,$f2
 334:	460e7200 	add.s	$f8,$f14,$f14
 338:	46003182 	mul.s	$f6,$f6,$f0
 33c:	46125083 	div.s	$f2,$f10,$f18
 340:	46104200 	add.s	$f8,$f8,$f16
 344:	46107381 	sub.s	$f14,$f14,$f16
 348:	46024200 	add.s	$f8,$f8,$f2
 34c:	1460ffe3 	bnez	v1,2dc <Math_atanf_cfrac+0x98>
 350:	46083083 	div.s	$f2,$f6,$f8
 354:	46028100 	add.s	$f4,$f16,$f2
 358:	14400003 	bnez	v0,368 <Math_atanf_cfrac+0x124>
 35c:	46046083 	div.s	$f2,$f12,$f4
 360:	03e00008 	jr	ra
 364:	46001006 	mov.s	$f0,$f2
 368:	18400005 	blez	v0,380 <Math_atanf_cfrac+0x13c>
 36c:	3c010000 	lui	at,0x0
 370:	3c010000 	lui	at,0x0
 374:	c4280034 	lwc1	$f8,52(at)
 378:	03e00008 	jr	ra
 37c:	46024001 	sub.s	$f0,$f8,$f2
 380:	c42a0038 	lwc1	$f10,56(at)
 384:	46025001 	sub.s	$f0,$f10,$f2
 388:	03e00008 	jr	ra
 38c:	00000000 	nop

00000390 <Math_atanf>:
 390:	3c0e0000 	lui	t6,0x0
 394:	8dce0000 	lw	t6,0(t6)
 398:	27bdffe8 	addiu	sp,sp,-24
 39c:	afbf0014 	sw	ra,20(sp)
 3a0:	15c00005 	bnez	t6,3b8 <Math_atanf+0x28>
 3a4:	00000000 	nop
 3a8:	0c000000 	jal	0 <Math_tanf>
 3ac:	00000000 	nop
 3b0:	10000004 	b	3c4 <Math_atanf+0x34>
 3b4:	8fbf0014 	lw	ra,20(sp)
 3b8:	0c000000 	jal	0 <Math_tanf>
 3bc:	00000000 	nop
 3c0:	8fbf0014 	lw	ra,20(sp)
 3c4:	27bd0018 	addiu	sp,sp,24
 3c8:	03e00008 	jr	ra
 3cc:	00000000 	nop

000003d0 <Math_atan2f>:
 3d0:	44801000 	mtc1	zero,$f2
 3d4:	27bdffe0 	addiu	sp,sp,-32
 3d8:	f7b40010 	sdc1	$f20,16(sp)
 3dc:	46027032 	c.eq.s	$f14,$f2
 3e0:	46006506 	mov.s	$f20,$f12
 3e4:	afbf001c 	sw	ra,28(sp)
 3e8:	45020017 	bc1fl	448 <Math_atan2f+0x78>
 3ec:	460e103e 	c.le.s	$f2,$f14
 3f0:	46026032 	c.eq.s	$f12,$f2
 3f4:	00000000 	nop
 3f8:	45020004 	bc1fl	40c <Math_atan2f+0x3c>
 3fc:	4614103c 	c.lt.s	$f2,$f20
 400:	10000028 	b	4a4 <Math_atan2f+0xd4>
 404:	46001006 	mov.s	$f0,$f2
 408:	4614103c 	c.lt.s	$f2,$f20
 40c:	3c010000 	lui	at,0x0
 410:	45020004 	bc1fl	424 <Math_atan2f+0x54>
 414:	4602a03c 	c.lt.s	$f20,$f2
 418:	10000022 	b	4a4 <Math_atan2f+0xd4>
 41c:	c420003c 	lwc1	$f0,60(at)
 420:	4602a03c 	c.lt.s	$f20,$f2
 424:	3c010000 	lui	at,0x0
 428:	45000004 	bc1f	43c <Math_atan2f+0x6c>
 42c:	00000000 	nop
 430:	3c010000 	lui	at,0x0
 434:	1000001b 	b	4a4 <Math_atan2f+0xd4>
 438:	c4200040 	lwc1	$f0,64(at)
 43c:	10000019 	b	4a4 <Math_atan2f+0xd4>
 440:	c4200000 	lwc1	$f0,0(at)
 444:	460e103e 	c.le.s	$f2,$f14
 448:	00000000 	nop
 44c:	45020006 	bc1fl	468 <Math_atan2f+0x98>
 450:	4602a03c 	c.lt.s	$f20,$f2
 454:	0c000000 	jal	0 <Math_tanf>
 458:	460ea303 	div.s	$f12,$f20,$f14
 45c:	10000012 	b	4a8 <Math_atan2f+0xd8>
 460:	8fbf001c 	lw	ra,28(sp)
 464:	4602a03c 	c.lt.s	$f20,$f2
 468:	00000000 	nop
 46c:	45020008 	bc1fl	490 <Math_atan2f+0xc0>
 470:	460ea303 	div.s	$f12,$f20,$f14
 474:	0c000000 	jal	0 <Math_tanf>
 478:	460ea303 	div.s	$f12,$f20,$f14
 47c:	3c010000 	lui	at,0x0
 480:	c4240044 	lwc1	$f4,68(at)
 484:	10000007 	b	4a4 <Math_atan2f+0xd4>
 488:	46040001 	sub.s	$f0,$f0,$f4
 48c:	460ea303 	div.s	$f12,$f20,$f14
 490:	0c000000 	jal	0 <Math_tanf>
 494:	46006307 	neg.s	$f12,$f12
 498:	3c010000 	lui	at,0x0
 49c:	c4260048 	lwc1	$f6,72(at)
 4a0:	46003001 	sub.s	$f0,$f6,$f0
 4a4:	8fbf001c 	lw	ra,28(sp)
 4a8:	d7b40010 	ldc1	$f20,16(sp)
 4ac:	27bd0020 	addiu	sp,sp,32
 4b0:	03e00008 	jr	ra
 4b4:	00000000 	nop

000004b8 <Math_asinf>:
 4b8:	460c6182 	mul.s	$f6,$f12,$f12
 4bc:	3c013f80 	lui	at,0x3f80
 4c0:	44812000 	mtc1	at,$f4
 4c4:	27bdffe8 	addiu	sp,sp,-24
 4c8:	afbf0014 	sw	ra,20(sp)
 4cc:	46062001 	sub.s	$f0,$f4,$f6
 4d0:	0c000000 	jal	0 <Math_tanf>
 4d4:	46000384 	sqrt.s	$f14,$f0
 4d8:	8fbf0014 	lw	ra,20(sp)
 4dc:	27bd0018 	addiu	sp,sp,24
 4e0:	03e00008 	jr	ra
 4e4:	00000000 	nop

000004e8 <Math_acosf>:
 4e8:	27bdffe8 	addiu	sp,sp,-24
 4ec:	afbf0014 	sw	ra,20(sp)
 4f0:	0c000000 	jal	0 <Math_tanf>
 4f4:	00000000 	nop
 4f8:	8fbf0014 	lw	ra,20(sp)
 4fc:	3c010000 	lui	at,0x0
 500:	c424004c 	lwc1	$f4,76(at)
 504:	27bd0018 	addiu	sp,sp,24
 508:	03e00008 	jr	ra
 50c:	46002001 	sub.s	$f0,$f4,$f0
