
build/src/libultra_code_O2/guLookAtHilite.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <guLookAtHiliteF>:
   0:	27bdff70 	addiu	sp,sp,-144
   4:	afbf003c 	sw	ra,60(sp)
   8:	f7bc0030 	sdc1	$f28,48(sp)
   c:	f7ba0028 	sdc1	$f26,40(sp)
  10:	f7b80020 	sdc1	$f24,32(sp)
  14:	f7b60018 	sdc1	$f22,24(sp)
  18:	f7b40010 	sdc1	$f20,16(sp)
  1c:	afa7009c 	sw	a3,156(sp)
  20:	afa40090 	sw	a0,144(sp)
  24:	afa50094 	sw	a1,148(sp)
  28:	0c000000 	jal	0 <guLookAtHiliteF>
  2c:	afa60098 	sw	a2,152(sp)
  30:	c7a800a8 	lwc1	$f8,168(sp)
  34:	c7a6009c 	lwc1	$f6,156(sp)
  38:	c7aa00ac 	lwc1	$f10,172(sp)
  3c:	c7a400a0 	lwc1	$f4,160(sp)
  40:	46064301 	sub.s	$f12,$f8,$f6
  44:	c7a600a4 	lwc1	$f6,164(sp)
  48:	c7a800b0 	lwc1	$f8,176(sp)
  4c:	46045381 	sub.s	$f14,$f10,$f4
  50:	460c6282 	mul.s	$f10,$f12,$f12
  54:	3c013ff0 	lui	at,0x3ff0
  58:	46064401 	sub.s	$f16,$f8,$f6
  5c:	460e7102 	mul.s	$f4,$f14,$f14
  60:	4481b800 	mtc1	at,$f23
  64:	3c01bff0 	lui	at,0xbff0
  68:	46108182 	mul.s	$f6,$f16,$f16
  6c:	44815800 	mtc1	at,$f11
  70:	c7b400b8 	lwc1	$f20,184(sp)
  74:	4480b000 	mtc1	zero,$f22
  78:	3c010000 	lui	at,0x0
  7c:	46045200 	add.s	$f8,$f10,$f4
  80:	44805000 	mtc1	zero,$f10
  84:	8fa200d8 	lw	v0,216(sp)
  88:	8fa300dc 	lw	v1,220(sp)
  8c:	46064000 	add.s	$f0,$f8,$f6
  90:	8fa40090 	lw	a0,144(sp)
  94:	8fa50094 	lw	a1,148(sp)
  98:	8fa60098 	lw	a2,152(sp)
  9c:	46000004 	sqrt.s	$f0,$f0
  a0:	00027040 	sll	t6,v0,0x1
  a4:	00037840 	sll	t7,v1,0x1
  a8:	46000121 	cvt.d.s	$f4,$f0
  ac:	46245203 	div.d	$f8,$f10,$f4
  b0:	462044a0 	cvt.s.d	$f18,$f8
  b4:	46126182 	mul.s	$f6,$f12,$f18
  b8:	e7a60054 	swc1	$f6,84(sp)
  bc:	46127102 	mul.s	$f4,$f14,$f18
  c0:	c7aa0054 	lwc1	$f10,84(sp)
  c4:	46128182 	mul.s	$f6,$f16,$f18
  c8:	e7aa0088 	swc1	$f10,136(sp)
  cc:	e7a40050 	swc1	$f4,80(sp)
  d0:	c7a80050 	lwc1	$f8,80(sp)
  d4:	c7a400bc 	lwc1	$f4,188(sp)
  d8:	e7a6004c 	swc1	$f6,76(sp)
  dc:	c7aa004c 	lwc1	$f10,76(sp)
  e0:	e7a80084 	swc1	$f8,132(sp)
  e4:	c7a80050 	lwc1	$f8,80(sp)
  e8:	e7aa0080 	swc1	$f10,128(sp)
  ec:	c7aa004c 	lwc1	$f10,76(sp)
  f0:	46082182 	mul.s	$f6,$f4,$f8
  f4:	00000000 	nop
  f8:	460aa102 	mul.s	$f4,$f20,$f10
  fc:	c7aa00bc 	lwc1	$f10,188(sp)
 100:	46062201 	sub.s	$f8,$f4,$f6
 104:	c7a40054 	lwc1	$f4,84(sp)
 108:	46045182 	mul.s	$f6,$f10,$f4
 10c:	e7a80048 	swc1	$f8,72(sp)
 110:	c7a800b4 	lwc1	$f8,180(sp)
 114:	c7aa004c 	lwc1	$f10,76(sp)
 118:	c7b80048 	lwc1	$f24,72(sp)
 11c:	460a4102 	mul.s	$f4,$f8,$f10
 120:	c7aa00b4 	lwc1	$f10,180(sp)
 124:	46043201 	sub.s	$f8,$f6,$f4
 128:	c7a60050 	lwc1	$f6,80(sp)
 12c:	e7a8004c 	swc1	$f8,76(sp)
 130:	46065102 	mul.s	$f4,$f10,$f6
 134:	c7a80054 	lwc1	$f8,84(sp)
 138:	c7ba004c 	lwc1	$f26,76(sp)
 13c:	4608a282 	mul.s	$f10,$f20,$f8
 140:	c7a80048 	lwc1	$f8,72(sp)
 144:	c7b400c0 	lwc1	$f20,192(sp)
 148:	460a2181 	sub.s	$f6,$f4,$f10
 14c:	c7a40048 	lwc1	$f4,72(sp)
 150:	46044282 	mul.s	$f10,$f8,$f4
 154:	e7a60054 	swc1	$f6,84(sp)
 158:	c7a6004c 	lwc1	$f6,76(sp)
 15c:	c7a8004c 	lwc1	$f8,76(sp)
 160:	c7bc0054 	lwc1	$f28,84(sp)
 164:	46083102 	mul.s	$f4,$f6,$f8
 168:	c7a80054 	lwc1	$f8,84(sp)
 16c:	46045180 	add.s	$f6,$f10,$f4
 170:	c7aa0054 	lwc1	$f10,84(sp)
 174:	460a4102 	mul.s	$f4,$f8,$f10
 178:	46043000 	add.s	$f0,$f6,$f4
 17c:	c7a60084 	lwc1	$f6,132(sp)
 180:	46000004 	sqrt.s	$f0,$f0
 184:	46000221 	cvt.d.s	$f8,$f0
 188:	4628b283 	div.d	$f10,$f22,$f8
 18c:	c7a80080 	lwc1	$f8,128(sp)
 190:	462050a0 	cvt.s.d	$f2,$f10
 194:	4602c602 	mul.s	$f24,$f24,$f2
 198:	00000000 	nop
 19c:	4602d682 	mul.s	$f26,$f26,$f2
 1a0:	00000000 	nop
 1a4:	4602e702 	mul.s	$f28,$f28,$f2
 1a8:	00000000 	nop
 1ac:	461c3102 	mul.s	$f4,$f6,$f28
 1b0:	c7a60080 	lwc1	$f6,128(sp)
 1b4:	461a4282 	mul.s	$f10,$f8,$f26
 1b8:	460a2381 	sub.s	$f14,$f4,$f10
 1bc:	46183202 	mul.s	$f8,$f6,$f24
 1c0:	c7a40088 	lwc1	$f4,136(sp)
 1c4:	c7a60088 	lwc1	$f6,136(sp)
 1c8:	461c2282 	mul.s	$f10,$f4,$f28
 1cc:	460a4401 	sub.s	$f16,$f8,$f10
 1d0:	461a3102 	mul.s	$f4,$f6,$f26
 1d4:	c7a80084 	lwc1	$f8,132(sp)
 1d8:	46184282 	mul.s	$f10,$f8,$f24
 1dc:	460a2481 	sub.s	$f18,$f4,$f10
 1e0:	460e7182 	mul.s	$f6,$f14,$f14
 1e4:	00000000 	nop
 1e8:	46108202 	mul.s	$f8,$f16,$f16
 1ec:	46083100 	add.s	$f4,$f6,$f8
 1f0:	46129282 	mul.s	$f10,$f18,$f18
 1f4:	460a2000 	add.s	$f0,$f4,$f10
 1f8:	46000004 	sqrt.s	$f0,$f0
 1fc:	460001a1 	cvt.d.s	$f6,$f0
 200:	4626b203 	div.d	$f8,$f22,$f6
 204:	462040a0 	cvt.s.d	$f2,$f8
 208:	c7a800c4 	lwc1	$f8,196(sp)
 20c:	46027102 	mul.s	$f4,$f14,$f2
 210:	00000000 	nop
 214:	46028282 	mul.s	$f10,$f16,$f2
 218:	e7a400b4 	swc1	$f4,180(sp)
 21c:	46029182 	mul.s	$f6,$f18,$f2
 220:	c7a400c4 	lwc1	$f4,196(sp)
 224:	e7aa00b8 	swc1	$f10,184(sp)
 228:	46044282 	mul.s	$f10,$f8,$f4
 22c:	c7a400c8 	lwc1	$f4,200(sp)
 230:	e7a600bc 	swc1	$f6,188(sp)
 234:	4614a182 	mul.s	$f6,$f20,$f20
 238:	460a3200 	add.s	$f8,$f6,$f10
 23c:	c7a600c8 	lwc1	$f6,200(sp)
 240:	46062282 	mul.s	$f10,$f4,$f6
 244:	460a4000 	add.s	$f0,$f8,$f10
 248:	c7a800c4 	lwc1	$f8,196(sp)
 24c:	46000004 	sqrt.s	$f0,$f0
 250:	46000121 	cvt.d.s	$f4,$f0
 254:	4624b183 	div.d	$f6,$f22,$f4
 258:	c7a400c8 	lwc1	$f4,200(sp)
 25c:	462030a0 	cvt.s.d	$f2,$f6
 260:	4602a502 	mul.s	$f20,$f20,$f2
 264:	00000000 	nop
 268:	46024282 	mul.s	$f10,$f8,$f2
 26c:	00000000 	nop
 270:	46022182 	mul.s	$f6,$f4,$f2
 274:	e7b400c0 	swc1	$f20,192(sp)
 278:	c7a800c0 	lwc1	$f8,192(sp)
 27c:	c7a40088 	lwc1	$f4,136(sp)
 280:	e7aa00c4 	swc1	$f10,196(sp)
 284:	46044080 	add.s	$f2,$f8,$f4
 288:	e7a600c8 	swc1	$f6,200(sp)
 28c:	c7a60084 	lwc1	$f6,132(sp)
 290:	c7a400c8 	lwc1	$f4,200(sp)
 294:	46065200 	add.s	$f8,$f10,$f6
 298:	c7aa0080 	lwc1	$f10,128(sp)
 29c:	e7a80050 	swc1	$f8,80(sp)
 2a0:	460a2180 	add.s	$f6,$f4,$f10
 2a4:	c7a40050 	lwc1	$f4,80(sp)
 2a8:	c7a80050 	lwc1	$f8,80(sp)
 2ac:	e7a6004c 	swc1	$f6,76(sp)
 2b0:	46044282 	mul.s	$f10,$f8,$f4
 2b4:	c7a4004c 	lwc1	$f4,76(sp)
 2b8:	46021182 	mul.s	$f6,$f2,$f2
 2bc:	460a3200 	add.s	$f8,$f6,$f10
 2c0:	c7a6004c 	lwc1	$f6,76(sp)
 2c4:	46062282 	mul.s	$f10,$f4,$f6
 2c8:	d4240000 	ldc1	$f4,0(at)
 2cc:	460a4000 	add.s	$f0,$f8,$f10
 2d0:	46000004 	sqrt.s	$f0,$f0
 2d4:	460003a1 	cvt.d.s	$f14,$f0
 2d8:	462e203c 	c.lt.d	$f4,$f14
 2dc:	00000000 	nop
 2e0:	45000037 	bc1f	3c0 <guLookAtHiliteF+0x3c0>
 2e4:	00000000 	nop
 2e8:	462eb183 	div.d	$f6,$f22,$f14
 2ec:	c7a80050 	lwc1	$f8,80(sp)
 2f0:	c7aa004c 	lwc1	$f10,76(sp)
 2f4:	8fa200d8 	lw	v0,216(sp)
 2f8:	3c014000 	lui	at,0x4000
 2fc:	8fa300dc 	lw	v1,220(sp)
 300:	00024080 	sll	t0,v0,0x2
 304:	00035880 	sll	t3,v1,0x2
 308:	46203320 	cvt.s.d	$f12,$f6
 30c:	460c1402 	mul.s	$f16,$f2,$f12
 310:	00000000 	nop
 314:	460c4482 	mul.s	$f18,$f8,$f12
 318:	00000000 	nop
 31c:	460c5502 	mul.s	$f20,$f10,$f12
 320:	00000000 	nop
 324:	46188102 	mul.s	$f4,$f16,$f24
 328:	00000000 	nop
 32c:	461a9182 	mul.s	$f6,$f18,$f26
 330:	46062200 	add.s	$f8,$f4,$f6
 334:	461ca282 	mul.s	$f10,$f20,$f28
 338:	44823000 	mtc1	v0,$f6
 33c:	460a4100 	add.s	$f4,$f8,$f10
 340:	46803220 	cvt.s.w	$f8,$f6
 344:	44813000 	mtc1	at,$f6
 348:	46082282 	mul.s	$f10,$f4,$f8
 34c:	44884000 	mtc1	t0,$f8
 350:	46065102 	mul.s	$f4,$f10,$f6
 354:	468042a0 	cvt.s.w	$f10,$f8
 358:	46045180 	add.s	$f6,$f10,$f4
 35c:	4600320d 	trunc.w.s	$f8,$f6
 360:	440a4000 	mfc1	t2,$f8
 364:	00000000 	nop
 368:	acca0000 	sw	t2,0(a2)
 36c:	c7aa00b4 	lwc1	$f10,180(sp)
 370:	c7a600b8 	lwc1	$f6,184(sp)
 374:	460a8102 	mul.s	$f4,$f16,$f10
 378:	00000000 	nop
 37c:	46069202 	mul.s	$f8,$f18,$f6
 380:	c7a600bc 	lwc1	$f6,188(sp)
 384:	46082280 	add.s	$f10,$f4,$f8
 388:	4606a102 	mul.s	$f4,$f20,$f6
 38c:	44833000 	mtc1	v1,$f6
 390:	46045200 	add.s	$f8,$f10,$f4
 394:	468032a0 	cvt.s.w	$f10,$f6
 398:	44813000 	mtc1	at,$f6
 39c:	460a4102 	mul.s	$f4,$f8,$f10
 3a0:	448b5000 	mtc1	t3,$f10
 3a4:	46062202 	mul.s	$f8,$f4,$f6
 3a8:	46805120 	cvt.s.w	$f4,$f10
 3ac:	46082180 	add.s	$f6,$f4,$f8
 3b0:	4600328d 	trunc.w.s	$f10,$f6
 3b4:	440d5000 	mfc1	t5,$f10
 3b8:	10000003 	b	3c8 <guLookAtHiliteF+0x3c8>
 3bc:	accd0004 	sw	t5,4(a2)
 3c0:	acce0000 	sw	t6,0(a2)
 3c4:	accf0004 	sw	t7,4(a2)
 3c8:	c7a400cc 	lwc1	$f4,204(sp)
 3cc:	c7a600d0 	lwc1	$f6,208(sp)
 3d0:	3c010000 	lui	at,0x0
 3d4:	46042202 	mul.s	$f8,$f4,$f4
 3d8:	e7a40040 	swc1	$f4,64(sp)
 3dc:	00026040 	sll	t4,v0,0x1
 3e0:	46063282 	mul.s	$f10,$f6,$f6
 3e4:	00036840 	sll	t5,v1,0x1
 3e8:	460a4200 	add.s	$f8,$f8,$f10
 3ec:	c7aa00d4 	lwc1	$f10,212(sp)
 3f0:	460a5102 	mul.s	$f4,$f10,$f10
 3f4:	46044000 	add.s	$f0,$f8,$f4
 3f8:	46000004 	sqrt.s	$f0,$f0
 3fc:	46000221 	cvt.d.s	$f8,$f0
 400:	4628b103 	div.d	$f4,$f22,$f8
 404:	c7a80040 	lwc1	$f8,64(sp)
 408:	462020a0 	cvt.s.d	$f2,$f4
 40c:	46024102 	mul.s	$f4,$f8,$f2
 410:	00000000 	nop
 414:	46023202 	mul.s	$f8,$f6,$f2
 418:	00000000 	nop
 41c:	46025182 	mul.s	$f6,$f10,$f2
 420:	c7aa0088 	lwc1	$f10,136(sp)
 424:	e7a400cc 	swc1	$f4,204(sp)
 428:	e7a800d0 	swc1	$f8,208(sp)
 42c:	460a2100 	add.s	$f4,$f4,$f10
 430:	c7aa0084 	lwc1	$f10,132(sp)
 434:	e7a600d4 	swc1	$f6,212(sp)
 438:	460a4200 	add.s	$f8,$f8,$f10
 43c:	c7aa0080 	lwc1	$f10,128(sp)
 440:	e7a40054 	swc1	$f4,84(sp)
 444:	460a3180 	add.s	$f6,$f6,$f10
 448:	46042282 	mul.s	$f10,$f4,$f4
 44c:	e7a80050 	swc1	$f8,80(sp)
 450:	e7a6004c 	swc1	$f6,76(sp)
 454:	e7a60040 	swc1	$f6,64(sp)
 458:	46084182 	mul.s	$f6,$f8,$f8
 45c:	46065280 	add.s	$f10,$f10,$f6
 460:	c7a60040 	lwc1	$f6,64(sp)
 464:	e7a40040 	swc1	$f4,64(sp)
 468:	46063102 	mul.s	$f4,$f6,$f6
 46c:	46045000 	add.s	$f0,$f10,$f4
 470:	d42a0008 	ldc1	$f10,8(at)
 474:	46000004 	sqrt.s	$f0,$f0
 478:	460003a1 	cvt.d.s	$f14,$f0
 47c:	462e503c 	c.lt.d	$f10,$f14
 480:	00000000 	nop
 484:	45000035 	bc1f	55c <guLookAtHiliteF+0x55c>
 488:	00000000 	nop
 48c:	462eb103 	div.d	$f4,$f22,$f14
 490:	c7aa0040 	lwc1	$f10,64(sp)
 494:	3c014000 	lui	at,0x4000
 498:	44811000 	mtc1	at,$f2
 49c:	0002c080 	sll	t8,v0,0x2
 4a0:	00034880 	sll	t1,v1,0x2
 4a4:	46202320 	cvt.s.d	$f12,$f4
 4a8:	460c5402 	mul.s	$f16,$f10,$f12
 4ac:	00000000 	nop
 4b0:	460c4482 	mul.s	$f18,$f8,$f12
 4b4:	00000000 	nop
 4b8:	460c3502 	mul.s	$f20,$f6,$f12
 4bc:	00000000 	nop
 4c0:	46188102 	mul.s	$f4,$f16,$f24
 4c4:	00000000 	nop
 4c8:	461a9282 	mul.s	$f10,$f18,$f26
 4cc:	460a2200 	add.s	$f8,$f4,$f10
 4d0:	461ca182 	mul.s	$f6,$f20,$f28
 4d4:	44825000 	mtc1	v0,$f10
 4d8:	46064100 	add.s	$f4,$f8,$f6
 4dc:	46805220 	cvt.s.w	$f8,$f10
 4e0:	46082182 	mul.s	$f6,$f4,$f8
 4e4:	44982000 	mtc1	t8,$f4
 4e8:	00000000 	nop
 4ec:	46802220 	cvt.s.w	$f8,$f4
 4f0:	46023282 	mul.s	$f10,$f6,$f2
 4f4:	460a4180 	add.s	$f6,$f8,$f10
 4f8:	4600310d 	trunc.w.s	$f4,$f6
 4fc:	44082000 	mfc1	t0,$f4
 500:	00000000 	nop
 504:	acc80008 	sw	t0,8(a2)
 508:	c7a800b4 	lwc1	$f8,180(sp)
 50c:	c7a600b8 	lwc1	$f6,184(sp)
 510:	46088282 	mul.s	$f10,$f16,$f8
 514:	00000000 	nop
 518:	46069102 	mul.s	$f4,$f18,$f6
 51c:	c7a600bc 	lwc1	$f6,188(sp)
 520:	46045200 	add.s	$f8,$f10,$f4
 524:	4606a282 	mul.s	$f10,$f20,$f6
 528:	44833000 	mtc1	v1,$f6
 52c:	460a4100 	add.s	$f4,$f8,$f10
 530:	46803220 	cvt.s.w	$f8,$f6
 534:	46082282 	mul.s	$f10,$f4,$f8
 538:	44892000 	mtc1	t1,$f4
 53c:	00000000 	nop
 540:	46802220 	cvt.s.w	$f8,$f4
 544:	46025182 	mul.s	$f6,$f10,$f2
 548:	46064280 	add.s	$f10,$f8,$f6
 54c:	4600510d 	trunc.w.s	$f4,$f10
 550:	440b2000 	mfc1	t3,$f4
 554:	10000003 	b	564 <guLookAtHiliteF+0x564>
 558:	accb000c 	sw	t3,12(a2)
 55c:	accc0008 	sw	t4,8(a2)
 560:	accd000c 	sw	t5,12(a2)
 564:	3c0142fe 	lui	at,0x42fe
 568:	44811000 	mtc1	at,$f2
 56c:	3c014300 	lui	at,0x4300
 570:	44817000 	mtc1	at,$f14
 574:	24020080 	li	v0,128
 578:	460ec302 	mul.s	$f12,$f24,$f14
 57c:	4602603c 	c.lt.s	$f12,$f2
 580:	00000000 	nop
 584:	45020004 	bc1fl	598 <guLookAtHiliteF+0x598>
 588:	46001006 	mov.s	$f0,$f2
 58c:	10000002 	b	598 <guLookAtHiliteF+0x598>
 590:	46006006 	mov.s	$f0,$f12
 594:	46001006 	mov.s	$f0,$f2
 598:	460ed302 	mul.s	$f12,$f26,$f14
 59c:	4600020d 	trunc.w.s	$f8,$f0
 5a0:	4602603c 	c.lt.s	$f12,$f2
 5a4:	44184000 	mfc1	t8,$f8
 5a8:	45000003 	bc1f	5b8 <guLookAtHiliteF+0x5b8>
 5ac:	a0b80008 	sb	t8,8(a1)
 5b0:	10000002 	b	5bc <guLookAtHiliteF+0x5bc>
 5b4:	46006006 	mov.s	$f0,$f12
 5b8:	46001006 	mov.s	$f0,$f2
 5bc:	460ee302 	mul.s	$f12,$f28,$f14
 5c0:	4600018d 	trunc.w.s	$f6,$f0
 5c4:	4602603c 	c.lt.s	$f12,$f2
 5c8:	44093000 	mfc1	t1,$f6
 5cc:	45000003 	bc1f	5dc <guLookAtHiliteF+0x5dc>
 5d0:	a0a90009 	sb	t1,9(a1)
 5d4:	10000002 	b	5e0 <guLookAtHiliteF+0x5e0>
 5d8:	46006006 	mov.s	$f0,$f12
 5dc:	46001006 	mov.s	$f0,$f2
 5e0:	4600028d 	trunc.w.s	$f10,$f0
 5e4:	440c5000 	mfc1	t4,$f10
 5e8:	00000000 	nop
 5ec:	a0ac000a 	sb	t4,10(a1)
 5f0:	c7a400b4 	lwc1	$f4,180(sp)
 5f4:	460e2302 	mul.s	$f12,$f4,$f14
 5f8:	4602603c 	c.lt.s	$f12,$f2
 5fc:	00000000 	nop
 600:	45020004 	bc1fl	614 <guLookAtHiliteF+0x614>
 604:	46001006 	mov.s	$f0,$f2
 608:	10000002 	b	614 <guLookAtHiliteF+0x614>
 60c:	46006006 	mov.s	$f0,$f12
 610:	46001006 	mov.s	$f0,$f2
 614:	4600020d 	trunc.w.s	$f8,$f0
 618:	440f4000 	mfc1	t7,$f8
 61c:	00000000 	nop
 620:	a0af0018 	sb	t7,24(a1)
 624:	c7a600b8 	lwc1	$f6,184(sp)
 628:	460e3302 	mul.s	$f12,$f6,$f14
 62c:	4602603c 	c.lt.s	$f12,$f2
 630:	00000000 	nop
 634:	45020004 	bc1fl	648 <guLookAtHiliteF+0x648>
 638:	46001006 	mov.s	$f0,$f2
 63c:	10000002 	b	648 <guLookAtHiliteF+0x648>
 640:	46006006 	mov.s	$f0,$f12
 644:	46001006 	mov.s	$f0,$f2
 648:	4600028d 	trunc.w.s	$f10,$f0
 64c:	44085000 	mfc1	t0,$f10
 650:	00000000 	nop
 654:	a0a80019 	sb	t0,25(a1)
 658:	c7a400bc 	lwc1	$f4,188(sp)
 65c:	460e2302 	mul.s	$f12,$f4,$f14
 660:	4602603c 	c.lt.s	$f12,$f2
 664:	00000000 	nop
 668:	45020004 	bc1fl	67c <guLookAtHiliteF+0x67c>
 66c:	46001006 	mov.s	$f0,$f2
 670:	10000002 	b	67c <guLookAtHiliteF+0x67c>
 674:	46006006 	mov.s	$f0,$f12
 678:	46001006 	mov.s	$f0,$f2
 67c:	4600020d 	trunc.w.s	$f8,$f0
 680:	a0a00000 	sb	zero,0(a1)
 684:	a0a00001 	sb	zero,1(a1)
 688:	a0a00002 	sb	zero,2(a1)
 68c:	440b4000 	mfc1	t3,$f8
 690:	a0a00003 	sb	zero,3(a1)
 694:	a0a00004 	sb	zero,4(a1)
 698:	a0a00005 	sb	zero,5(a1)
 69c:	a0a00006 	sb	zero,6(a1)
 6a0:	a0a00007 	sb	zero,7(a1)
 6a4:	a0a00010 	sb	zero,16(a1)
 6a8:	a0a20011 	sb	v0,17(a1)
 6ac:	a0a00012 	sb	zero,18(a1)
 6b0:	a0a00013 	sb	zero,19(a1)
 6b4:	a0a00014 	sb	zero,20(a1)
 6b8:	a0a20015 	sb	v0,21(a1)
 6bc:	a0a00016 	sb	zero,22(a1)
 6c0:	a0a00017 	sb	zero,23(a1)
 6c4:	a0ab001a 	sb	t3,26(a1)
 6c8:	e4980000 	swc1	$f24,0(a0)
 6cc:	c7ae009c 	lwc1	$f14,156(sp)
 6d0:	c7a200a0 	lwc1	$f2,160(sp)
 6d4:	c7ac00a4 	lwc1	$f12,164(sp)
 6d8:	46187182 	mul.s	$f6,$f14,$f24
 6dc:	e49a0010 	swc1	$f26,16(a0)
 6e0:	e49c0020 	swc1	$f28,32(a0)
 6e4:	461a1282 	mul.s	$f10,$f2,$f26
 6e8:	44800000 	mtc1	zero,$f0
 6ec:	3c013f80 	lui	at,0x3f80
 6f0:	461c6202 	mul.s	$f8,$f12,$f28
 6f4:	460a3100 	add.s	$f4,$f6,$f10
 6f8:	46082180 	add.s	$f6,$f4,$f8
 6fc:	46003287 	neg.s	$f10,$f6
 700:	e48a0030 	swc1	$f10,48(a0)
 704:	c7a400b4 	lwc1	$f4,180(sp)
 708:	e4840004 	swc1	$f4,4(a0)
 70c:	c7a800b8 	lwc1	$f8,184(sp)
 710:	e4880014 	swc1	$f8,20(a0)
 714:	c7a600bc 	lwc1	$f6,188(sp)
 718:	e4860024 	swc1	$f6,36(a0)
 71c:	c7aa00b4 	lwc1	$f10,180(sp)
 720:	c7a800b8 	lwc1	$f8,184(sp)
 724:	460a7102 	mul.s	$f4,$f14,$f10
 728:	00000000 	nop
 72c:	46081182 	mul.s	$f6,$f2,$f8
 730:	c7a800bc 	lwc1	$f8,188(sp)
 734:	46062280 	add.s	$f10,$f4,$f6
 738:	46086102 	mul.s	$f4,$f12,$f8
 73c:	46045180 	add.s	$f6,$f10,$f4
 740:	46003207 	neg.s	$f8,$f6
 744:	e4880034 	swc1	$f8,52(a0)
 748:	c7aa0088 	lwc1	$f10,136(sp)
 74c:	e48a0008 	swc1	$f10,8(a0)
 750:	c7a40084 	lwc1	$f4,132(sp)
 754:	e4840018 	swc1	$f4,24(a0)
 758:	c7a60080 	lwc1	$f6,128(sp)
 75c:	e4860028 	swc1	$f6,40(a0)
 760:	c7a80088 	lwc1	$f8,136(sp)
 764:	c7a40084 	lwc1	$f4,132(sp)
 768:	46087282 	mul.s	$f10,$f14,$f8
 76c:	00000000 	nop
 770:	46041182 	mul.s	$f6,$f2,$f4
 774:	c7a40080 	lwc1	$f4,128(sp)
 778:	e480000c 	swc1	$f0,12(a0)
 77c:	e480001c 	swc1	$f0,28(a0)
 780:	e480002c 	swc1	$f0,44(a0)
 784:	46065200 	add.s	$f8,$f10,$f6
 788:	46046282 	mul.s	$f10,$f12,$f4
 78c:	460a4180 	add.s	$f6,$f8,$f10
 790:	44814000 	mtc1	at,$f8
 794:	46003107 	neg.s	$f4,$f6
 798:	e488003c 	swc1	$f8,60(a0)
 79c:	e4840038 	swc1	$f4,56(a0)
 7a0:	8fbf003c 	lw	ra,60(sp)
 7a4:	d7bc0030 	ldc1	$f28,48(sp)
 7a8:	d7ba0028 	ldc1	$f26,40(sp)
 7ac:	d7b80020 	ldc1	$f24,32(sp)
 7b0:	d7b60018 	ldc1	$f22,24(sp)
 7b4:	d7b40010 	ldc1	$f20,16(sp)
 7b8:	03e00008 	jr	ra
 7bc:	27bd0090 	addiu	sp,sp,144

000007c0 <guLookAtHilite>:
 7c0:	27bdff68 	addiu	sp,sp,-152
 7c4:	c7a400a8 	lwc1	$f4,168(sp)
 7c8:	c7a600ac 	lwc1	$f6,172(sp)
 7cc:	c7a800b0 	lwc1	$f8,176(sp)
 7d0:	e7a40010 	swc1	$f4,16(sp)
 7d4:	e7a60014 	swc1	$f6,20(sp)
 7d8:	c7a600c4 	lwc1	$f6,196(sp)
 7dc:	c7a400c0 	lwc1	$f4,192(sp)
 7e0:	c7aa00b4 	lwc1	$f10,180(sp)
 7e4:	c7b000b8 	lwc1	$f16,184(sp)
 7e8:	c7b200bc 	lwc1	$f18,188(sp)
 7ec:	44876000 	mtc1	a3,$f12
 7f0:	e7a80018 	swc1	$f8,24(sp)
 7f4:	e7a6002c 	swc1	$f6,44(sp)
 7f8:	e7a40028 	swc1	$f4,40(sp)
 7fc:	e7aa001c 	swc1	$f10,28(sp)
 800:	e7b00020 	swc1	$f16,32(sp)
 804:	e7b20024 	swc1	$f18,36(sp)
 808:	c7b200d4 	lwc1	$f18,212(sp)
 80c:	c7b000d0 	lwc1	$f16,208(sp)
 810:	c7aa00cc 	lwc1	$f10,204(sp)
 814:	c7a400d8 	lwc1	$f4,216(sp)
 818:	c7a600dc 	lwc1	$f6,220(sp)
 81c:	c7a800c8 	lwc1	$f8,200(sp)
 820:	8fae00e0 	lw	t6,224(sp)
 824:	8faf00e4 	lw	t7,228(sp)
 828:	afbf0054 	sw	ra,84(sp)
 82c:	afa40098 	sw	a0,152(sp)
 830:	44076000 	mfc1	a3,$f12
 834:	27a40058 	addiu	a0,sp,88
 838:	e7b2003c 	swc1	$f18,60(sp)
 83c:	e7b00038 	swc1	$f16,56(sp)
 840:	e7aa0034 	swc1	$f10,52(sp)
 844:	e7a40040 	swc1	$f4,64(sp)
 848:	e7a60044 	swc1	$f6,68(sp)
 84c:	e7a80030 	swc1	$f8,48(sp)
 850:	afae0048 	sw	t6,72(sp)
 854:	0c000000 	jal	0 <guLookAtHiliteF>
 858:	afaf004c 	sw	t7,76(sp)
 85c:	27a40058 	addiu	a0,sp,88
 860:	0c000000 	jal	0 <guLookAtHiliteF>
 864:	8fa50098 	lw	a1,152(sp)
 868:	8fbf0054 	lw	ra,84(sp)
 86c:	27bd0098 	addiu	sp,sp,152
 870:	03e00008 	jr	ra
 874:	00000000 	nop
	...
