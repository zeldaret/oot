
build/src/overlays/actors/ovl_Bg_Sst_Floor/z_bg_sst_floor.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSstFloor_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afa5002c 	sw	a1,44(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c050000 	lui	a1,0x0
  10:	afa40028 	sw	a0,40(sp)
  14:	afa0001c 	sw	zero,28(sp)
  18:	0c000000 	jal	0 <BgSstFloor_Init>
  1c:	24a50000 	addiu	a1,a1,0
  20:	8fa40028 	lw	a0,40(sp)
  24:	0c000000 	jal	0 <BgSstFloor_Init>
  28:	24050001 	li	a1,1
  2c:	3c040602 	lui	a0,0x602
  30:	248494f8 	addiu	a0,a0,-27400
  34:	0c000000 	jal	0 <BgSstFloor_Init>
  38:	27a5001c 	addiu	a1,sp,28
  3c:	8fa4002c 	lw	a0,44(sp)
  40:	8fa60028 	lw	a2,40(sp)
  44:	8fa7001c 	lw	a3,28(sp)
  48:	0c000000 	jal	0 <BgSstFloor_Init>
  4c:	24850810 	addiu	a1,a0,2064
  50:	8fae0028 	lw	t6,40(sp)
  54:	adc2014c 	sw	v0,332(t6)
  58:	8fbf0014 	lw	ra,20(sp)
  5c:	27bd0028 	addiu	sp,sp,40
  60:	03e00008 	jr	ra
  64:	00000000 	nop

00000068 <BgSstFloor_Destroy>:
  68:	27bdffe8 	addiu	sp,sp,-24
  6c:	afa40018 	sw	a0,24(sp)
  70:	8fae0018 	lw	t6,24(sp)
  74:	afbf0014 	sw	ra,20(sp)
  78:	00a02025 	move	a0,a1
  7c:	24a50810 	addiu	a1,a1,2064
  80:	0c000000 	jal	0 <BgSstFloor_Init>
  84:	8dc6014c 	lw	a2,332(t6)
  88:	8fbf0014 	lw	ra,20(sp)
  8c:	27bd0018 	addiu	sp,sp,24
  90:	03e00008 	jr	ra
  94:	00000000 	nop

00000098 <BgSstFloor_Update>:
  98:	3c020602 	lui	v0,0x602
  9c:	27bdffc8 	addiu	sp,sp,-56
  a0:	244294f8 	addiu	v0,v0,-27400
  a4:	0002c100 	sll	t8,v0,0x4
  a8:	3c060000 	lui	a2,0x0
  ac:	0018cf02 	srl	t9,t8,0x1c
  b0:	24c60000 	addiu	a2,a2,0
  b4:	00194880 	sll	t1,t9,0x2
  b8:	00c95021 	addu	t2,a2,t1
  bc:	8d4b0000 	lw	t3,0(t2)
  c0:	afbf0024 	sw	ra,36(sp)
  c4:	afb20020 	sw	s2,32(sp)
  c8:	afb1001c 	sw	s1,28(sp)
  cc:	afb00018 	sw	s0,24(sp)
  d0:	afa5003c 	sw	a1,60(sp)
  d4:	3c0700ff 	lui	a3,0xff
  d8:	8caf1c44 	lw	t7,7236(a1)
  dc:	34e7ffff 	ori	a3,a3,0xffff
  e0:	00476024 	and	t4,v0,a3
  e4:	3c088000 	lui	t0,0x8000
  e8:	016c6821 	addu	t5,t3,t4
  ec:	01a89021 	addu	s2,t5,t0
  f0:	afaf002c 	sw	t7,44(sp)
  f4:	8e430010 	lw	v1,16(s2)
  f8:	00808825 	move	s1,a0
  fc:	00037100 	sll	t6,v1,0x4
 100:	000e7f02 	srl	t7,t6,0x1c
 104:	000fc080 	sll	t8,t7,0x2
 108:	00d8c821 	addu	t9,a2,t8
 10c:	8f290000 	lw	t1,0(t9)
 110:	00675024 	and	t2,v1,a3
 114:	012a5821 	addu	t3,t1,t2
 118:	01686021 	addu	t4,t3,t0
 11c:	0c000000 	jal	0 <BgSstFloor_Init>
 120:	ae4c0010 	sw	t4,16(s2)
 124:	1040000d 	beqz	v0,15c <BgSstFloor_Update+0xc4>
 128:	3c01447a 	lui	at,0x447a
 12c:	c6240094 	lwc1	$f4,148(s1)
 130:	44813000 	mtc1	at,$f6
 134:	8fad003c 	lw	t5,60(sp)
 138:	2405000c 	li	a1,12
 13c:	4606203c 	c.lt.s	$f4,$f6
 140:	00000000 	nop
 144:	45020006 	bc1fl	160 <BgSstFloor_Update+0xc8>
 148:	8fae003c 	lw	t6,60(sp)
 14c:	0c000000 	jal	0 <BgSstFloor_Init>
 150:	8da40790 	lw	a0,1936(t5)
 154:	10000005 	b	16c <BgSstFloor_Update+0xd4>
 158:	00000000 	nop
 15c:	8fae003c 	lw	t6,60(sp)
 160:	24050003 	li	a1,3
 164:	0c000000 	jal	0 <BgSstFloor_Init>
 168:	8dc40790 	lw	a0,1936(t6)
 16c:	0c000000 	jal	0 <BgSstFloor_Init>
 170:	02202025 	move	a0,s1
 174:	1040000f 	beqz	v0,1b4 <BgSstFloor_Update+0x11c>
 178:	8faf002c 	lw	t7,44(sp)
 17c:	85f80896 	lh	t8,2198(t7)
 180:	3c01447a 	lui	at,0x447a
 184:	44814000 	mtc1	at,$f8
 188:	44985000 	mtc1	t8,$f10
 18c:	24190001 	li	t9,1
 190:	02202025 	move	a0,s1
 194:	468054a0 	cvt.s.w	$f18,$f10
 198:	24053951 	li	a1,14673
 19c:	4612403c 	c.lt.s	$f8,$f18
 1a0:	00000000 	nop
 1a4:	45020004 	bc1fl	1b8 <BgSstFloor_Update+0x120>
 1a8:	8629001c 	lh	t1,28(s1)
 1ac:	0c000000 	jal	0 <BgSstFloor_Init>
 1b0:	a639001c 	sh	t9,28(s1)
 1b4:	8629001c 	lh	t1,28(s1)
 1b8:	24010001 	li	at,1
 1bc:	8faa003c 	lw	t2,60(sp)
 1c0:	15210051 	bne	t1,at,308 <BgSstFloor_Update+0x270>
 1c4:	240b0050 	li	t3,80
 1c8:	8d501c74 	lw	s0,7284(t2)
 1cc:	240c001c 	li	t4,28
 1d0:	a62b0166 	sh	t3,358(s1)
 1d4:	a620001c 	sh	zero,28(s1)
 1d8:	a62c0164 	sh	t4,356(s1)
 1dc:	0c000000 	jal	0 <BgSstFloor_Init>
 1e0:	02202025 	move	a0,s1
 1e4:	10400020 	beqz	v0,268 <BgSstFloor_Update+0x1d0>
 1e8:	00000000 	nop
 1ec:	8fa2002c 	lw	v0,44(sp)
 1f0:	3c014416 	lui	at,0x4416
 1f4:	8c4d067c 	lw	t5,1660(v0)
 1f8:	31ae6000 	andi	t6,t5,0x6000
 1fc:	15c0001a 	bnez	t6,268 <BgSstFloor_Update+0x1d0>
 200:	00000000 	nop
 204:	44818000 	mtc1	at,$f16
 208:	c6240090 	lwc1	$f4,144(s1)
 20c:	44803000 	mtc1	zero,$f6
 210:	3c0143af 	lui	at,0x43af
 214:	46048301 	sub.s	$f12,$f16,$f4
 218:	460c303c 	c.lt.s	$f6,$f12
 21c:	00000000 	nop
 220:	45000011 	bc1f	268 <BgSstFloor_Update+0x1d0>
 224:	00000000 	nop
 228:	44817000 	mtc1	at,$f14
 22c:	3c014110 	lui	at,0x4110
 230:	44815000 	mtc1	at,$f10
 234:	460c703c 	c.lt.s	$f14,$f12
 238:	00000000 	nop
 23c:	45020003 	bc1fl	24c <BgSstFloor_Update+0x1b4>
 240:	944f0088 	lhu	t7,136(v0)
 244:	46007306 	mov.s	$f12,$f14
 248:	944f0088 	lhu	t7,136(v0)
 24c:	460c5202 	mul.s	$f8,$f10,$f12
 250:	3c010000 	lui	at,0x0
 254:	31f8fffe 	andi	t8,t7,0xfffe
 258:	a4580088 	sh	t8,136(v0)
 25c:	c4320000 	lwc1	$f18,0(at)
 260:	46124102 	mul.s	$f4,$f8,$f18
 264:	e4440060 	swc1	$f4,96(v0)
 268:	52000028 	beqzl	s0,30c <BgSstFloor_Update+0x274>
 26c:	862b0164 	lh	t3,356(s1)
 270:	86190000 	lh	t9,0(s0)
 274:	24010015 	li	at,21
 278:	57210021 	bnel	t9,at,300 <BgSstFloor_Update+0x268>
 27c:	8e100124 	lw	s0,292(s0)
 280:	44803000 	mtc1	zero,$f6
 284:	c60a0028 	lwc1	$f10,40(s0)
 288:	02202025 	move	a0,s1
 28c:	460a3032 	c.eq.s	$f6,$f10
 290:	00000000 	nop
 294:	4502001a 	bc1fl	300 <BgSstFloor_Update+0x268>
 298:	8e100124 	lw	s0,292(s0)
 29c:	0c000000 	jal	0 <BgSstFloor_Init>
 2a0:	02002825 	move	a1,s0
 2a4:	3c0143af 	lui	at,0x43af
 2a8:	44817000 	mtc1	at,$f14
 2ac:	3c014416 	lui	at,0x4416
 2b0:	44818000 	mtc1	at,$f16
 2b4:	3c014110 	lui	at,0x4110
 2b8:	4610003c 	c.lt.s	$f0,$f16
 2bc:	46008081 	sub.s	$f2,$f16,$f0
 2c0:	4500000e 	bc1f	2fc <BgSstFloor_Update+0x264>
 2c4:	46001306 	mov.s	$f12,$f2
 2c8:	4602703c 	c.lt.s	$f14,$f2
 2cc:	44814000 	mtc1	at,$f8
 2d0:	45020003 	bc1fl	2e0 <BgSstFloor_Update+0x248>
 2d4:	96090088 	lhu	t1,136(s0)
 2d8:	46007306 	mov.s	$f12,$f14
 2dc:	96090088 	lhu	t1,136(s0)
 2e0:	460c4482 	mul.s	$f18,$f8,$f12
 2e4:	3c010000 	lui	at,0x0
 2e8:	312afffc 	andi	t2,t1,0xfffc
 2ec:	a60a0088 	sh	t2,136(s0)
 2f0:	c4240000 	lwc1	$f4,0(at)
 2f4:	46049182 	mul.s	$f6,$f18,$f4
 2f8:	e6060060 	swc1	$f6,96(s0)
 2fc:	8e100124 	lw	s0,292(s0)
 300:	5600ffdc 	bnezl	s0,274 <BgSstFloor_Update+0x1dc>
 304:	86190000 	lh	t9,0(s0)
 308:	862b0164 	lh	t3,356(s1)
 30c:	3c010000 	lui	at,0x0
 310:	c4320000 	lwc1	$f18,0(at)
 314:	448b5000 	mtc1	t3,$f10
 318:	00000000 	nop
 31c:	46805220 	cvt.s.w	$f8,$f10
 320:	46124302 	mul.s	$f12,$f8,$f18
 324:	0c000000 	jal	0 <BgSstFloor_Init>
 328:	00000000 	nop
 32c:	862c0166 	lh	t4,358(s1)
 330:	26240166 	addiu	a0,s1,358
 334:	00002825 	move	a1,zero
 338:	000c6823 	negu	t5,t4
 33c:	448d2000 	mtc1	t5,$f4
 340:	24060005 	li	a2,5
 344:	468021a0 	cvt.s.w	$f6,$f4
 348:	46060282 	mul.s	$f10,$f0,$f6
 34c:	4600520d 	trunc.w.s	$f8,$f10
 350:	440f4000 	mfc1	t7,$f8
 354:	0c000000 	jal	0 <BgSstFloor_Init>
 358:	a62f0168 	sh	t7,360(s1)
 35c:	86380168 	lh	t8,360(s1)
 360:	c632000c 	lwc1	$f18,12(s1)
 364:	8e490010 	lw	t1,16(s2)
 368:	44982000 	mtc1	t8,$f4
 36c:	00000000 	nop
 370:	468021a0 	cvt.s.w	$f6,$f4
 374:	46069280 	add.s	$f10,$f18,$f6
 378:	4600520d 	trunc.w.s	$f8,$f10
 37c:	44034000 	mfc1	v1,$f8
 380:	00000000 	nop
 384:	00031c00 	sll	v1,v1,0x10
 388:	00031c03 	sra	v1,v1,0x10
 38c:	a5230050 	sh	v1,80(t1)
 390:	8e4a0010 	lw	t2,16(s2)
 394:	a5430044 	sh	v1,68(t2)
 398:	8e4b0010 	lw	t3,16(s2)
 39c:	a5630038 	sh	v1,56(t3)
 3a0:	8e4c0010 	lw	t4,16(s2)
 3a4:	a583002c 	sh	v1,44(t4)
 3a8:	8e4d0010 	lw	t5,16(s2)
 3ac:	a5a3001a 	sh	v1,26(t5)
 3b0:	8e4e0010 	lw	t6,16(s2)
 3b4:	a5c30014 	sh	v1,20(t6)
 3b8:	8e4f0010 	lw	t7,16(s2)
 3bc:	a5e3000e 	sh	v1,14(t7)
 3c0:	8e580010 	lw	t8,16(s2)
 3c4:	a7030002 	sh	v1,2(t8)
 3c8:	8e590010 	lw	t9,16(s2)
 3cc:	a7230008 	sh	v1,8(t9)
 3d0:	86240164 	lh	a0,356(s1)
 3d4:	10800002 	beqz	a0,3e0 <BgSstFloor_Update+0x348>
 3d8:	2489ffff 	addiu	t1,a0,-1
 3dc:	a6290164 	sh	t1,356(s1)
 3e0:	8fa4003c 	lw	a0,60(sp)
 3e4:	0c000000 	jal	0 <BgSstFloor_Init>
 3e8:	24850810 	addiu	a1,a0,2064
 3ec:	8fbf0024 	lw	ra,36(sp)
 3f0:	8fb00018 	lw	s0,24(sp)
 3f4:	8fb1001c 	lw	s1,28(sp)
 3f8:	8fb20020 	lw	s2,32(sp)
 3fc:	03e00008 	jr	ra
 400:	27bd0038 	addiu	sp,sp,56

00000404 <BgSstFloor_Draw>:
 404:	27bdffb8 	addiu	sp,sp,-72
 408:	afbf001c 	sw	ra,28(sp)
 40c:	afb00018 	sw	s0,24(sp)
 410:	afa40048 	sw	a0,72(sp)
 414:	afa5004c 	sw	a1,76(sp)
 418:	8ca50000 	lw	a1,0(a1)
 41c:	3c060000 	lui	a2,0x0
 420:	24c60000 	addiu	a2,a2,0
 424:	27a40030 	addiu	a0,sp,48
 428:	24070115 	li	a3,277
 42c:	0c000000 	jal	0 <BgSstFloor_Init>
 430:	00a08025 	move	s0,a1
 434:	8faf004c 	lw	t7,76(sp)
 438:	0c000000 	jal	0 <BgSstFloor_Init>
 43c:	8de40000 	lw	a0,0(t7)
 440:	8fb80048 	lw	t8,72(sp)
 444:	3c013f80 	lui	at,0x3f80
 448:	44816000 	mtc1	at,$f12
 44c:	87190168 	lh	t9,360(t8)
 450:	3c010000 	lui	at,0x0
 454:	c4280000 	lwc1	$f8,0(at)
 458:	44992000 	mtc1	t9,$f4
 45c:	44066000 	mfc1	a2,$f12
 460:	24070001 	li	a3,1
 464:	468021a0 	cvt.s.w	$f6,$f4
 468:	46083382 	mul.s	$f14,$f6,$f8
 46c:	0c000000 	jal	0 <BgSstFloor_Init>
 470:	00000000 	nop
 474:	8e0202c0 	lw	v0,704(s0)
 478:	3c09da38 	lui	t1,0xda38
 47c:	35290003 	ori	t1,t1,0x3
 480:	24480008 	addiu	t0,v0,8
 484:	ae0802c0 	sw	t0,704(s0)
 488:	ac490000 	sw	t1,0(v0)
 48c:	8faa004c 	lw	t2,76(sp)
 490:	3c050000 	lui	a1,0x0
 494:	24a50000 	addiu	a1,a1,0
 498:	8d440000 	lw	a0,0(t2)
 49c:	2406011b 	li	a2,283
 4a0:	0c000000 	jal	0 <BgSstFloor_Init>
 4a4:	afa2002c 	sw	v0,44(sp)
 4a8:	8fa3002c 	lw	v1,44(sp)
 4ac:	3c0d0602 	lui	t5,0x602
 4b0:	25ad9210 	addiu	t5,t5,-28144
 4b4:	ac620004 	sw	v0,4(v1)
 4b8:	8e0202c0 	lw	v0,704(s0)
 4bc:	3c0cde00 	lui	t4,0xde00
 4c0:	3c060000 	lui	a2,0x0
 4c4:	244b0008 	addiu	t3,v0,8
 4c8:	ae0b02c0 	sw	t3,704(s0)
 4cc:	ac4d0004 	sw	t5,4(v0)
 4d0:	ac4c0000 	sw	t4,0(v0)
 4d4:	8fae004c 	lw	t6,76(sp)
 4d8:	24c60000 	addiu	a2,a2,0
 4dc:	27a40030 	addiu	a0,sp,48
 4e0:	2407011f 	li	a3,287
 4e4:	0c000000 	jal	0 <BgSstFloor_Init>
 4e8:	8dc50000 	lw	a1,0(t6)
 4ec:	8fbf001c 	lw	ra,28(sp)
 4f0:	8fb00018 	lw	s0,24(sp)
 4f4:	27bd0048 	addiu	sp,sp,72
 4f8:	03e00008 	jr	ra
 4fc:	00000000 	nop
