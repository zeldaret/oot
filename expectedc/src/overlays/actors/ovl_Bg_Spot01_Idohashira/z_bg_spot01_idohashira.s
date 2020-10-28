
build/src/overlays/actors/ovl_Bg_Spot01_Idohashira/z_bg_spot01_idohashira.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot01Idohashira_PlayBreakSfx1>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	248400e4 	addiu	a0,a0,228
   c:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
  10:	24052839 	li	a1,10297
  14:	8fbf0014 	lw	ra,20(sp)
  18:	27bd0018 	addiu	sp,sp,24
  1c:	03e00008 	jr	ra
  20:	00000000 	nop

00000024 <BgSpot01Idohashira_PlayBreakSfx2>:
  24:	27bdffe8 	addiu	sp,sp,-24
  28:	afa40018 	sw	a0,24(sp)
  2c:	afa5001c 	sw	a1,28(sp)
  30:	00a02025 	move	a0,a1
  34:	8fa50018 	lw	a1,24(sp)
  38:	afbf0014 	sw	ra,20(sp)
  3c:	2406003c 	li	a2,60
  40:	240728aa 	li	a3,10410
  44:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
  48:	24a50024 	addiu	a1,a1,36
  4c:	8fbf0014 	lw	ra,20(sp)
  50:	27bd0018 	addiu	sp,sp,24
  54:	03e00008 	jr	ra
  58:	00000000 	nop

0000005c <func_808AAD3C>:
  5c:	27bdfb18 	addiu	sp,sp,-1256
  60:	afbf001c 	sw	ra,28(sp)
  64:	afa504ec 	sw	a1,1260(sp)
  68:	afa604f0 	sw	a2,1264(sp)
  6c:	c4a40000 	lwc1	$f4,0(a1)
  70:	3c014100 	lui	at,0x4100
  74:	240c00ff 	li	t4,255
  78:	4600218d 	trunc.w.s	$f6,$f4
  7c:	44812000 	mtc1	at,$f4
  80:	3c01bf80 	lui	at,0xbf80
  84:	240d00ff 	li	t5,255
  88:	44183000 	mfc1	t8,$f6
  8c:	44813000 	mtc1	at,$f6
  90:	240f00ff 	li	t7,255
  94:	a7b80024 	sh	t8,36(sp)
  98:	c4a80004 	lwc1	$f8,4(a1)
  9c:	241800ff 	li	t8,255
  a0:	24190020 	li	t9,32
  a4:	4600428d 	trunc.w.s	$f10,$f8
  a8:	27ae0024 	addiu	t6,sp,36
  ac:	00003825 	move	a3,zero
  b0:	44085000 	mfc1	t0,$f10
  b4:	00000000 	nop
  b8:	a7a80026 	sh	t0,38(sp)
  bc:	c4b00008 	lwc1	$f16,8(a1)
  c0:	afa604b8 	sw	a2,1208(sp)
  c4:	afa604bc 	sw	a2,1212(sp)
  c8:	4600848d 	trunc.w.s	$f18,$f16
  cc:	24080001 	li	t0,1
  d0:	a3a004c0 	sb	zero,1216(sp)
  d4:	a3a004c1 	sb	zero,1217(sp)
  d8:	440a9000 	mfc1	t2,$f18
  dc:	a3a004c2 	sb	zero,1218(sp)
  e0:	a3ac04c3 	sb	t4,1219(sp)
  e4:	a3a004c4 	sb	zero,1220(sp)
  e8:	a3a004c5 	sb	zero,1221(sp)
  ec:	a3a004c6 	sb	zero,1222(sp)
  f0:	a3ad04c7 	sb	t5,1223(sp)
  f4:	a3a004c8 	sb	zero,1224(sp)
  f8:	a3a004c9 	sb	zero,1225(sp)
  fc:	a3a004ca 	sb	zero,1226(sp)
 100:	a3af04cb 	sb	t7,1227(sp)
 104:	a3a004cc 	sb	zero,1228(sp)
 108:	a3a004cd 	sb	zero,1229(sp)
 10c:	a3a004ce 	sb	zero,1230(sp)
 110:	a3b804cf 	sb	t8,1231(sp)
 114:	a3a004d0 	sb	zero,1232(sp)
 118:	a3a004d1 	sb	zero,1233(sp)
 11c:	a3a004d2 	sb	zero,1234(sp)
 120:	a3a004d3 	sb	zero,1235(sp)
 124:	a3a004d4 	sb	zero,1236(sp)
 128:	a3a004d5 	sb	zero,1237(sp)
 12c:	a3a004d6 	sb	zero,1238(sp)
 130:	a3a004d7 	sb	zero,1239(sp)
 134:	a3a004d8 	sb	zero,1240(sp)
 138:	a3a004d9 	sb	zero,1241(sp)
 13c:	a3a004da 	sb	zero,1242(sp)
 140:	a3a004db 	sb	zero,1243(sp)
 144:	a3a004dc 	sb	zero,1244(sp)
 148:	a3a004dd 	sb	zero,1245(sp)
 14c:	a3a004de 	sb	zero,1246(sp)
 150:	a3a004df 	sb	zero,1247(sp)
 154:	afa004e0 	sw	zero,1248(sp)
 158:	afb904e4 	sw	t9,1252(sp)
 15c:	afa80010 	sw	t0,16(sp)
 160:	00003025 	move	a2,zero
 164:	afae0014 	sw	t6,20(sp)
 168:	27a50020 	addiu	a1,sp,32
 16c:	e7a404b0 	swc1	$f4,1200(sp)
 170:	e7a604b4 	swc1	$f6,1204(sp)
 174:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 178:	a7aa0028 	sh	t2,40(sp)
 17c:	8fbf001c 	lw	ra,28(sp)
 180:	27bd04e8 	addiu	sp,sp,1256
 184:	03e00008 	jr	ra
 188:	00000000 	nop

0000018c <func_808AAE6C>:
 18c:	27bdffc0 	addiu	sp,sp,-64
 190:	afbf0024 	sw	ra,36(sp)
 194:	afa40040 	sw	a0,64(sp)
 198:	afa50044 	sw	a1,68(sp)
 19c:	8c980024 	lw	t8,36(a0)
 1a0:	27a50030 	addiu	a1,sp,48
 1a4:	3c020000 	lui	v0,0x0
 1a8:	acb80000 	sw	t8,0(a1)
 1ac:	8c8f0028 	lw	t7,40(a0)
 1b0:	3c0143af 	lui	at,0x43af
 1b4:	acaf0004 	sw	t7,4(a1)
 1b8:	8c98002c 	lw	t8,44(a0)
 1bc:	acb80008 	sw	t8,8(a1)
 1c0:	8c420000 	lw	v0,0(v0)
 1c4:	c7a40034 	lwc1	$f4,52(sp)
 1c8:	8fa40044 	lw	a0,68(sp)
 1cc:	84591472 	lh	t9,5234(v0)
 1d0:	44993000 	mtc1	t9,$f6
 1d4:	00000000 	nop
 1d8:	46803220 	cvt.s.w	$f8,$f6
 1dc:	44813000 	mtc1	at,$f6
 1e0:	46082280 	add.s	$f10,$f4,$f8
 1e4:	e7aa0034 	swc1	$f10,52(sp)
 1e8:	8448146a 	lh	t0,5226(v0)
 1ec:	8449146e 	lh	t1,5230(v0)
 1f0:	8447146c 	lh	a3,5228(v0)
 1f4:	44888000 	mtc1	t0,$f16
 1f8:	252a07d0 	addiu	t2,t1,2000
 1fc:	afaa0010 	sw	t2,16(sp)
 200:	468084a0 	cvt.s.w	$f18,$f16
 204:	844b1470 	lh	t3,5232(v0)
 208:	afa00018 	sw	zero,24(sp)
 20c:	24e70005 	addiu	a3,a3,5
 210:	256c0320 	addiu	t4,t3,800
 214:	afac0014 	sw	t4,20(sp)
 218:	46069100 	add.s	$f4,$f18,$f6
 21c:	44062000 	mfc1	a2,$f4
 220:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 224:	00000000 	nop
 228:	8fa40044 	lw	a0,68(sp)
 22c:	27a50030 	addiu	a1,sp,48
 230:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 234:	24060005 	li	a2,5
 238:	8fa40040 	lw	a0,64(sp)
 23c:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 240:	8fa50044 	lw	a1,68(sp)
 244:	8fbf0024 	lw	ra,36(sp)
 248:	27bd0040 	addiu	sp,sp,64
 24c:	03e00008 	jr	ra
 250:	00000000 	nop

00000254 <func_808AAF34>:
 254:	27bdffa8 	addiu	sp,sp,-88
 258:	afbf002c 	sw	ra,44(sp)
 25c:	afb00028 	sw	s0,40(sp)
 260:	afa40058 	sw	a0,88(sp)
 264:	afa5005c 	sw	a1,92(sp)
 268:	8c8f0170 	lw	t7,368(a0)
 26c:	3c020000 	lui	v0,0x0
 270:	51e00064 	beqzl	t7,404 <func_808AAF34+0x1b0>
 274:	8fbf002c 	lw	ra,44(sp)
 278:	8c420000 	lw	v0,0(v0)
 27c:	3c010000 	lui	at,0x0
 280:	c4280154 	lwc1	$f8,340(at)
 284:	8458147c 	lh	t8,5244(v0)
 288:	3c014348 	lui	at,0x4348
 28c:	27b00044 	addiu	s0,sp,68
 290:	44982000 	mtc1	t8,$f4
 294:	02002825 	move	a1,s0
 298:	27a40038 	addiu	a0,sp,56
 29c:	468021a0 	cvt.s.w	$f6,$f4
 2a0:	44812000 	mtc1	at,$f4
 2a4:	46083280 	add.s	$f10,$f6,$f8
 2a8:	44804000 	mtc1	zero,$f8
 2ac:	e7aa0038 	swc1	$f10,56(sp)
 2b0:	8459147e 	lh	t9,5246(v0)
 2b4:	e7a80040 	swc1	$f8,64(sp)
 2b8:	44998000 	mtc1	t9,$f16
 2bc:	00000000 	nop
 2c0:	468084a0 	cvt.s.w	$f18,$f16
 2c4:	46049180 	add.s	$f6,$f18,$f4
 2c8:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 2cc:	e7a6003c 	swc1	$f6,60(sp)
 2d0:	3c020000 	lui	v0,0x0
 2d4:	8c420000 	lw	v0,0(v0)
 2d8:	3c0142a0 	lui	at,0x42a0
 2dc:	44819000 	mtc1	at,$f18
 2e0:	84481474 	lh	t0,5236(v0)
 2e4:	84491478 	lh	t1,5240(v0)
 2e8:	84471476 	lh	a3,5238(v0)
 2ec:	44885000 	mtc1	t0,$f10
 2f0:	252a03e8 	addiu	t2,t1,1000
 2f4:	afaa0010 	sw	t2,16(sp)
 2f8:	46805420 	cvt.s.w	$f16,$f10
 2fc:	844b147a 	lh	t3,5242(v0)
 300:	afa00018 	sw	zero,24(sp)
 304:	8fa4005c 	lw	a0,92(sp)
 308:	02002825 	move	a1,s0
 30c:	24e7000a 	addiu	a3,a3,10
 310:	46128100 	add.s	$f4,$f16,$f18
 314:	afab0014 	sw	t3,20(sp)
 318:	44062000 	mfc1	a2,$f4
 31c:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 320:	00000000 	nop
 324:	8fa4005c 	lw	a0,92(sp)
 328:	02002825 	move	a1,s0
 32c:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 330:	24060003 	li	a2,3
 334:	3c020000 	lui	v0,0x0
 338:	8c420000 	lw	v0,0(v0)
 33c:	3c010000 	lui	at,0x0
 340:	c42a0158 	lwc1	$f10,344(at)
 344:	844c147c 	lh	t4,5244(v0)
 348:	3c014348 	lui	at,0x4348
 34c:	27a40038 	addiu	a0,sp,56
 350:	448c3000 	mtc1	t4,$f6
 354:	02002825 	move	a1,s0
 358:	46803220 	cvt.s.w	$f8,$f6
 35c:	460a4400 	add.s	$f16,$f8,$f10
 360:	44814000 	mtc1	at,$f8
 364:	46008487 	neg.s	$f18,$f16
 368:	44808000 	mtc1	zero,$f16
 36c:	e7b20038 	swc1	$f18,56(sp)
 370:	844d147e 	lh	t5,5246(v0)
 374:	e7b00040 	swc1	$f16,64(sp)
 378:	448d2000 	mtc1	t5,$f4
 37c:	00000000 	nop
 380:	468021a0 	cvt.s.w	$f6,$f4
 384:	46083280 	add.s	$f10,$f6,$f8
 388:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 38c:	e7aa003c 	swc1	$f10,60(sp)
 390:	3c020000 	lui	v0,0x0
 394:	8c420000 	lw	v0,0(v0)
 398:	3c0142a0 	lui	at,0x42a0
 39c:	44813000 	mtc1	at,$f6
 3a0:	844e1474 	lh	t6,5236(v0)
 3a4:	844f1478 	lh	t7,5240(v0)
 3a8:	84471476 	lh	a3,5238(v0)
 3ac:	448e9000 	mtc1	t6,$f18
 3b0:	25f803e8 	addiu	t8,t7,1000
 3b4:	afb80010 	sw	t8,16(sp)
 3b8:	46809120 	cvt.s.w	$f4,$f18
 3bc:	8459147a 	lh	t9,5242(v0)
 3c0:	afa00018 	sw	zero,24(sp)
 3c4:	8fa4005c 	lw	a0,92(sp)
 3c8:	02002825 	move	a1,s0
 3cc:	24e7000a 	addiu	a3,a3,10
 3d0:	46062200 	add.s	$f8,$f4,$f6
 3d4:	afb90014 	sw	t9,20(sp)
 3d8:	44064000 	mfc1	a2,$f8
 3dc:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 3e0:	00000000 	nop
 3e4:	8fa4005c 	lw	a0,92(sp)
 3e8:	02002825 	move	a1,s0
 3ec:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 3f0:	24060003 	li	a2,3
 3f4:	8fa40058 	lw	a0,88(sp)
 3f8:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 3fc:	ac800170 	sw	zero,368(a0)
 400:	8fbf002c 	lw	ra,44(sp)
 404:	8fb00028 	lw	s0,40(sp)
 408:	27bd0058 	addiu	sp,sp,88
 40c:	03e00008 	jr	ra
 410:	00000000 	nop

00000414 <BgSpot01Idohashira_Destroy>:
 414:	27bdffe8 	addiu	sp,sp,-24
 418:	afa40018 	sw	a0,24(sp)
 41c:	8fae0018 	lw	t6,24(sp)
 420:	afbf0014 	sw	ra,20(sp)
 424:	00a02025 	move	a0,a1
 428:	24a50810 	addiu	a1,a1,2064
 42c:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 430:	8dc6014c 	lw	a2,332(t6)
 434:	8fbf0014 	lw	ra,20(sp)
 438:	27bd0018 	addiu	sp,sp,24
 43c:	03e00008 	jr	ra
 440:	00000000 	nop

00000444 <BgSpot01Idohashira_NotInCsMode>:
 444:	908e1d6c 	lbu	t6,7532(a0)
 448:	00001025 	move	v0,zero
 44c:	15c00003 	bnez	t6,45c <BgSpot01Idohashira_NotInCsMode+0x18>
 450:	00000000 	nop
 454:	03e00008 	jr	ra
 458:	24020001 	li	v0,1
 45c:	03e00008 	jr	ra
 460:	00000000 	nop

00000464 <BgSpot01Idohashira_GetNpcAction>:
 464:	27bdffd8 	addiu	sp,sp,-40
 468:	afbf0014 	sw	ra,20(sp)
 46c:	afa40028 	sw	a0,40(sp)
 470:	afa5002c 	sw	a1,44(sp)
 474:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 478:	afa0001c 	sw	zero,28(sp)
 47c:	14400006 	bnez	v0,498 <BgSpot01Idohashira_GetNpcAction+0x34>
 480:	8fa3001c 	lw	v1,28(sp)
 484:	8faf002c 	lw	t7,44(sp)
 488:	8fae0028 	lw	t6,40(sp)
 48c:	000fc080 	sll	t8,t7,0x2
 490:	01d8c821 	addu	t9,t6,t8
 494:	8f231d8c 	lw	v1,7564(t9)
 498:	8fbf0014 	lw	ra,20(sp)
 49c:	27bd0028 	addiu	sp,sp,40
 4a0:	00601025 	move	v0,v1
 4a4:	03e00008 	jr	ra
 4a8:	00000000 	nop

000004ac <func_808AB18C>:
 4ac:	3c020000 	lui	v0,0x0
 4b0:	24420000 	addiu	v0,v0,0
 4b4:	8c4f0000 	lw	t7,0(v0)
 4b8:	848e00b4 	lh	t6,180(a0)
 4bc:	848800b6 	lh	t0,182(a0)
 4c0:	85f81460 	lh	t8,5216(t7)
 4c4:	01d8c821 	addu	t9,t6,t8
 4c8:	a49900b4 	sh	t9,180(a0)
 4cc:	8c490000 	lw	t1,0(v0)
 4d0:	848e00b8 	lh	t6,184(a0)
 4d4:	852a1462 	lh	t2,5218(t1)
 4d8:	254d03e8 	addiu	t5,t2,1000
 4dc:	010d7821 	addu	t7,t0,t5
 4e0:	a48f00b6 	sh	t7,182(a0)
 4e4:	8c580000 	lw	t8,0(v0)
 4e8:	87191464 	lh	t9,5220(t8)
 4ec:	272b07d0 	addiu	t3,t9,2000
 4f0:	01cb6021 	addu	t4,t6,t3
 4f4:	03e00008 	jr	ra
 4f8:	a48c00b8 	sh	t4,184(a0)

000004fc <func_808AB1DC>:
 4fc:	27bdffe8 	addiu	sp,sp,-24
 500:	afa60020 	sw	a2,32(sp)
 504:	afa70024 	sw	a3,36(sp)
 508:	30e7ffff 	andi	a3,a3,0xffff
 50c:	30c6ffff 	andi	a2,a2,0xffff
 510:	00c77023 	subu	t6,a2,a3
 514:	448e2000 	mtc1	t6,$f4
 518:	44803000 	mtc1	zero,$f6
 51c:	97b9002a 	lhu	t9,42(sp)
 520:	46802420 	cvt.s.w	$f16,$f4
 524:	afbf0014 	sw	ra,20(sp)
 528:	e7ac0018 	swc1	$f12,24(sp)
 52c:	e7ae001c 	swc1	$f14,28(sp)
 530:	3c0f0000 	lui	t7,0x0
 534:	3c040000 	lui	a0,0x0
 538:	46103032 	c.eq.s	$f6,$f16
 53c:	03274023 	subu	t0,t9,a3
 540:	45010016 	bc1t	59c <func_808AB1DC+0xa0>
 544:	00000000 	nop
 548:	8def0000 	lw	t7,0(t7)
 54c:	44882000 	mtc1	t0,$f4
 550:	3c0141f0 	lui	at,0x41f0
 554:	85f81466 	lh	t8,5222(t7)
 558:	44819000 	mtc1	at,$f18
 55c:	468020a0 	cvt.s.w	$f2,$f4
 560:	44984000 	mtc1	t8,$f8
 564:	c7a6001c 	lwc1	$f6,28(sp)
 568:	468042a0 	cvt.s.w	$f10,$f8
 56c:	c7a80018 	lwc1	$f8,24(sp)
 570:	46125380 	add.s	$f14,$f10,$f18
 574:	46083281 	sub.s	$f10,$f6,$f8
 578:	46027302 	mul.s	$f12,$f14,$f2
 57c:	460c5481 	sub.s	$f18,$f10,$f12
 580:	46108102 	mul.s	$f4,$f16,$f16
 584:	46049183 	div.s	$f6,$f18,$f4
 588:	46023202 	mul.s	$f8,$f6,$f2
 58c:	00000000 	nop
 590:	46024282 	mul.s	$f10,$f8,$f2
 594:	10000005 	b	5ac <func_808AB1DC+0xb0>
 598:	460c5000 	add.s	$f0,$f10,$f12
 59c:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 5a0:	24840000 	addiu	a0,a0,0
 5a4:	44800000 	mtc1	zero,$f0
 5a8:	00000000 	nop
 5ac:	8fbf0014 	lw	ra,20(sp)
 5b0:	27bd0018 	addiu	sp,sp,24
 5b4:	03e00008 	jr	ra
 5b8:	00000000 	nop

000005bc <func_808AB29C>:
 5bc:	27bdffb0 	addiu	sp,sp,-80
 5c0:	afa40050 	sw	a0,80(sp)
 5c4:	afbf001c 	sw	ra,28(sp)
 5c8:	afa50054 	sw	a1,84(sp)
 5cc:	00a02025 	move	a0,a1
 5d0:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 5d4:	24050002 	li	a1,2
 5d8:	10400046 	beqz	v0,6f4 <func_808AB29C+0x138>
 5dc:	8fae0054 	lw	t6,84(sp)
 5e0:	94440004 	lhu	a0,4(v0)
 5e4:	94450002 	lhu	a1,2(v0)
 5e8:	95c61d74 	lhu	a2,7540(t6)
 5ec:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 5f0:	afa2004c 	sw	v0,76(sp)
 5f4:	8fa20050 	lw	v0,80(sp)
 5f8:	8fa3004c 	lw	v1,76(sp)
 5fc:	27af0030 	addiu	t7,sp,48
 600:	8c590008 	lw	t9,8(v0)
 604:	3c090000 	lui	t1,0x0
 608:	3c010000 	lui	at,0x0
 60c:	adf90000 	sw	t9,0(t7)
 610:	8c58000c 	lw	t8,12(v0)
 614:	adf80004 	sw	t8,4(t7)
 618:	8c590010 	lw	t9,16(v0)
 61c:	adf90008 	sw	t9,8(t7)
 620:	8d290000 	lw	t1,0(t1)
 624:	8c680018 	lw	t0,24(v1)
 628:	c42a015c 	lwc1	$f10,348(at)
 62c:	852a1468 	lh	t2,5224(t1)
 630:	44882000 	mtc1	t0,$f4
 634:	3c014120 	lui	at,0x4120
 638:	448a3000 	mtc1	t2,$f6
 63c:	468020a0 	cvt.s.w	$f2,$f4
 640:	44812000 	mtc1	at,$f4
 644:	8c6b001c 	lw	t3,28(v1)
 648:	8c6c0020 	lw	t4,32(v1)
 64c:	46803220 	cvt.s.w	$f8,$f6
 650:	460a4480 	add.s	$f18,$f8,$f10
 654:	448b4000 	mtc1	t3,$f8
 658:	46049183 	div.s	$f6,$f18,$f4
 65c:	448c9000 	mtc1	t4,$f18
 660:	468042a0 	cvt.s.w	$f10,$f8
 664:	c7a80030 	lwc1	$f8,48(sp)
 668:	46809120 	cvt.s.w	$f4,$f18
 66c:	e7a4002c 	swc1	$f4,44(sp)
 670:	460a3380 	add.s	$f14,$f6,$f10
 674:	46081181 	sub.s	$f6,$f2,$f8
 678:	46003282 	mul.s	$f10,$f6,$f0
 67c:	46085480 	add.s	$f18,$f10,$f8
 680:	e4520024 	swc1	$f18,36(v0)
 684:	8fad0054 	lw	t5,84(sp)
 688:	94670002 	lhu	a3,2(v1)
 68c:	94660004 	lhu	a2,4(v1)
 690:	95ae1d74 	lhu	t6,7540(t5)
 694:	e7a00040 	swc1	$f0,64(sp)
 698:	c7ac0034 	lwc1	$f12,52(sp)
 69c:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 6a0:	afae0010 	sw	t6,16(sp)
 6a4:	c7a40034 	lwc1	$f4,52(sp)
 6a8:	8fa20050 	lw	v0,80(sp)
 6ac:	c7b00040 	lwc1	$f16,64(sp)
 6b0:	46040180 	add.s	$f6,$f0,$f4
 6b4:	3c013f80 	lui	at,0x3f80
 6b8:	24420024 	addiu	v0,v0,36
 6bc:	e4460004 	swc1	$f6,4(v0)
 6c0:	c7a80038 	lwc1	$f8,56(sp)
 6c4:	c7aa002c 	lwc1	$f10,44(sp)
 6c8:	46085481 	sub.s	$f18,$f10,$f8
 6cc:	44815000 	mtc1	at,$f10
 6d0:	46109102 	mul.s	$f4,$f18,$f16
 6d4:	4610503e 	c.le.s	$f10,$f16
 6d8:	46082180 	add.s	$f6,$f4,$f8
 6dc:	45000003 	bc1f	6ec <func_808AB29C+0x130>
 6e0:	e4460008 	swc1	$f6,8(v0)
 6e4:	10000004 	b	6f8 <func_808AB29C+0x13c>
 6e8:	24020001 	li	v0,1
 6ec:	10000002 	b	6f8 <func_808AB29C+0x13c>
 6f0:	00001025 	move	v0,zero
 6f4:	00001025 	move	v0,zero
 6f8:	8fbf001c 	lw	ra,28(sp)
 6fc:	27bd0050 	addiu	sp,sp,80
 700:	03e00008 	jr	ra
 704:	00000000 	nop

00000708 <func_808AB3E8>:
 708:	240e0001 	li	t6,1
 70c:	ac8e0164 	sw	t6,356(a0)
 710:	03e00008 	jr	ra
 714:	ac800168 	sw	zero,360(a0)

00000718 <func_808AB3F8>:
 718:	afa50004 	sw	a1,4(sp)
 71c:	240e0002 	li	t6,2
 720:	240f0001 	li	t7,1
 724:	ac8e0164 	sw	t6,356(a0)
 728:	ac800168 	sw	zero,360(a0)
 72c:	03e00008 	jr	ra
 730:	ac8f0170 	sw	t7,368(a0)

00000734 <func_808AB414>:
 734:	27bdffe8 	addiu	sp,sp,-24
 738:	afbf0014 	sw	ra,20(sp)
 73c:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 740:	afa40018 	sw	a0,24(sp)
 744:	8fa40018 	lw	a0,24(sp)
 748:	240e0003 	li	t6,3
 74c:	ac8e0164 	sw	t6,356(a0)
 750:	ac800168 	sw	zero,360(a0)
 754:	8fbf0014 	lw	ra,20(sp)
 758:	27bd0018 	addiu	sp,sp,24
 75c:	03e00008 	jr	ra
 760:	00000000 	nop

00000764 <func_808AB444>:
 764:	27bdffd8 	addiu	sp,sp,-40
 768:	afb00018 	sw	s0,24(sp)
 76c:	00808025 	move	s0,a0
 770:	afbf001c 	sw	ra,28(sp)
 774:	afa5002c 	sw	a1,44(sp)
 778:	00a02025 	move	a0,a1
 77c:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 780:	24050002 	li	a1,2
 784:	50400023 	beqzl	v0,814 <func_808AB444+0xb0>
 788:	8fbf001c 	lw	ra,28(sp)
 78c:	94460000 	lhu	a2,0(v0)
 790:	8e03016c 	lw	v1,364(s0)
 794:	24010001 	li	at,1
 798:	50c3001e 	beql	a2,v1,814 <func_808AB444+0xb0>
 79c:	8fbf001c 	lw	ra,28(sp)
 7a0:	10c10009 	beq	a2,at,7c8 <func_808AB444+0x64>
 7a4:	02002025 	move	a0,s0
 7a8:	24010002 	li	at,2
 7ac:	10c1000a 	beq	a2,at,7d8 <func_808AB444+0x74>
 7b0:	02002025 	move	a0,s0
 7b4:	24010003 	li	at,3
 7b8:	10c1000c 	beq	a2,at,7ec <func_808AB444+0x88>
 7bc:	02002025 	move	a0,s0
 7c0:	1000000e 	b	7fc <func_808AB444+0x98>
 7c4:	3c040000 	lui	a0,0x0
 7c8:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 7cc:	afa60020 	sw	a2,32(sp)
 7d0:	1000000e 	b	80c <func_808AB444+0xa8>
 7d4:	8fa60020 	lw	a2,32(sp)
 7d8:	8fa5002c 	lw	a1,44(sp)
 7dc:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 7e0:	afa60020 	sw	a2,32(sp)
 7e4:	10000009 	b	80c <func_808AB444+0xa8>
 7e8:	8fa60020 	lw	a2,32(sp)
 7ec:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 7f0:	afa60020 	sw	a2,32(sp)
 7f4:	10000005 	b	80c <func_808AB444+0xa8>
 7f8:	8fa60020 	lw	a2,32(sp)
 7fc:	2484004c 	addiu	a0,a0,76
 800:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 804:	afa60020 	sw	a2,32(sp)
 808:	8fa60020 	lw	a2,32(sp)
 80c:	ae06016c 	sw	a2,364(s0)
 810:	8fbf001c 	lw	ra,28(sp)
 814:	8fb00018 	lw	s0,24(sp)
 818:	27bd0028 	addiu	sp,sp,40
 81c:	03e00008 	jr	ra
 820:	00000000 	nop

00000824 <func_808AB504>:
 824:	afa40000 	sw	a0,0(sp)
 828:	03e00008 	jr	ra
 82c:	afa50004 	sw	a1,4(sp)

00000830 <func_808AB510>:
 830:	27bdffe8 	addiu	sp,sp,-24
 834:	afbf0014 	sw	ra,20(sp)
 838:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 83c:	00000000 	nop
 840:	8fbf0014 	lw	ra,20(sp)
 844:	27bd0018 	addiu	sp,sp,24
 848:	03e00008 	jr	ra
 84c:	00000000 	nop

00000850 <func_808AB530>:
 850:	27bdffe8 	addiu	sp,sp,-24
 854:	afbf0014 	sw	ra,20(sp)
 858:	afa40018 	sw	a0,24(sp)
 85c:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 860:	afa5001c 	sw	a1,28(sp)
 864:	8fa40018 	lw	a0,24(sp)
 868:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 86c:	8fa5001c 	lw	a1,28(sp)
 870:	10400003 	beqz	v0,880 <func_808AB530+0x30>
 874:	8fa40018 	lw	a0,24(sp)
 878:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 87c:	8fa5001c 	lw	a1,28(sp)
 880:	8fbf0014 	lw	ra,20(sp)
 884:	27bd0018 	addiu	sp,sp,24
 888:	03e00008 	jr	ra
 88c:	00000000 	nop

00000890 <func_808AB570>:
 890:	27bdffe8 	addiu	sp,sp,-24
 894:	afbf0014 	sw	ra,20(sp)
 898:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 89c:	00000000 	nop
 8a0:	8fbf0014 	lw	ra,20(sp)
 8a4:	27bd0018 	addiu	sp,sp,24
 8a8:	03e00008 	jr	ra
 8ac:	00000000 	nop

000008b0 <BgSpot01Idohashira_Update>:
 8b0:	27bdffe8 	addiu	sp,sp,-24
 8b4:	afbf0014 	sw	ra,20(sp)
 8b8:	8c820164 	lw	v0,356(a0)
 8bc:	04400008 	bltz	v0,8e0 <BgSpot01Idohashira_Update+0x30>
 8c0:	28410004 	slti	at,v0,4
 8c4:	10200006 	beqz	at,8e0 <BgSpot01Idohashira_Update+0x30>
 8c8:	00027080 	sll	t6,v0,0x2
 8cc:	3c030000 	lui	v1,0x0
 8d0:	006e1821 	addu	v1,v1,t6
 8d4:	8c630000 	lw	v1,0(v1)
 8d8:	14600006 	bnez	v1,8f4 <BgSpot01Idohashira_Update+0x44>
 8dc:	00000000 	nop
 8e0:	3c040000 	lui	a0,0x0
 8e4:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 8e8:	2484008c 	addiu	a0,a0,140
 8ec:	10000004 	b	900 <BgSpot01Idohashira_Update+0x50>
 8f0:	8fbf0014 	lw	ra,20(sp)
 8f4:	0060f809 	jalr	v1
 8f8:	00000000 	nop
 8fc:	8fbf0014 	lw	ra,20(sp)
 900:	27bd0018 	addiu	sp,sp,24
 904:	03e00008 	jr	ra
 908:	00000000 	nop

0000090c <BgSpot01Idohashira_Init>:
 90c:	27bdffc8 	addiu	sp,sp,-56
 910:	afa5003c 	sw	a1,60(sp)
 914:	afbf001c 	sw	ra,28(sp)
 918:	afb00018 	sw	s0,24(sp)
 91c:	3c050000 	lui	a1,0x0
 920:	00808025 	move	s0,a0
 924:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 928:	24a50010 	addiu	a1,a1,16
 92c:	02002025 	move	a0,s0
 930:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 934:	00002825 	move	a1,zero
 938:	3c040000 	lui	a0,0x0
 93c:	afa00028 	sw	zero,40(sp)
 940:	24840000 	addiu	a0,a0,0
 944:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 948:	27a50028 	addiu	a1,sp,40
 94c:	8fa4003c 	lw	a0,60(sp)
 950:	02003025 	move	a2,s0
 954:	8fa70028 	lw	a3,40(sp)
 958:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 95c:	24850810 	addiu	a1,a0,2064
 960:	3c040000 	lui	a0,0x0
 964:	24840000 	addiu	a0,a0,0
 968:	ae02014c 	sw	v0,332(s0)
 96c:	8c831360 	lw	v1,4960(a0)
 970:	28610004 	slti	at,v1,4
 974:	5020000f 	beqzl	at,9b4 <BgSpot01Idohashira_Init+0xa8>
 978:	24010004 	li	at,4
 97c:	948e0ede 	lhu	t6,3806(a0)
 980:	31cf0010 	andi	t7,t6,0x10
 984:	11e00008 	beqz	t7,9a8 <BgSpot01Idohashira_Init+0x9c>
 988:	00000000 	nop
 98c:	8c980004 	lw	t8,4(a0)
 990:	17000005 	bnez	t8,9a8 <BgSpot01Idohashira_Init+0x9c>
 994:	00000000 	nop
 998:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 99c:	02002025 	move	a0,s0
 9a0:	1000001b 	b	a10 <BgSpot01Idohashira_Init+0x104>
 9a4:	8fbf001c 	lw	ra,28(sp)
 9a8:	10000018 	b	a0c <BgSpot01Idohashira_Init+0x100>
 9ac:	ae000164 	sw	zero,356(s0)
 9b0:	24010004 	li	at,4
 9b4:	1461000e 	bne	v1,at,9f0 <BgSpot01Idohashira_Init+0xe4>
 9b8:	24190001 	li	t9,1
 9bc:	ae190164 	sw	t9,356(s0)
 9c0:	3c080000 	lui	t0,0x0
 9c4:	8d080000 	lw	t0,0(t0)
 9c8:	3c010000 	lui	at,0x0
 9cc:	c4280160 	lwc1	$f8,352(at)
 9d0:	85091468 	lh	t1,5224(t0)
 9d4:	44892000 	mtc1	t1,$f4
 9d8:	00000000 	nop
 9dc:	468021a0 	cvt.s.w	$f6,$f4
 9e0:	46083280 	add.s	$f10,$f6,$f8
 9e4:	46005407 	neg.s	$f16,$f10
 9e8:	10000008 	b	a0c <BgSpot01Idohashira_Init+0x100>
 9ec:	e61000bc 	swc1	$f16,188(s0)
 9f0:	24010006 	li	at,6
 9f4:	14610003 	bne	v1,at,a04 <BgSpot01Idohashira_Init+0xf8>
 9f8:	00000000 	nop
 9fc:	10000003 	b	a0c <BgSpot01Idohashira_Init+0x100>
 a00:	ae000164 	sw	zero,356(s0)
 a04:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 a08:	02002025 	move	a0,s0
 a0c:	8fbf001c 	lw	ra,28(sp)
 a10:	8fb00018 	lw	s0,24(sp)
 a14:	27bd0038 	addiu	sp,sp,56
 a18:	03e00008 	jr	ra
 a1c:	00000000 	nop

00000a20 <func_808AB700>:
 a20:	27bdffb8 	addiu	sp,sp,-72
 a24:	afbf001c 	sw	ra,28(sp)
 a28:	afb00018 	sw	s0,24(sp)
 a2c:	afa40048 	sw	a0,72(sp)
 a30:	afa5004c 	sw	a1,76(sp)
 a34:	8cb00000 	lw	s0,0(a1)
 a38:	3c060000 	lui	a2,0x0
 a3c:	24c600c8 	addiu	a2,a2,200
 a40:	27a40030 	addiu	a0,sp,48
 a44:	240702b1 	li	a3,689
 a48:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 a4c:	02002825 	move	a1,s0
 a50:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 a54:	02002025 	move	a0,s0
 a58:	8e0302c0 	lw	v1,704(s0)
 a5c:	3c18da38 	lui	t8,0xda38
 a60:	37180003 	ori	t8,t8,0x3
 a64:	246f0008 	addiu	t7,v1,8
 a68:	ae0f02c0 	sw	t7,704(s0)
 a6c:	3c050000 	lui	a1,0x0
 a70:	ac780000 	sw	t8,0(v1)
 a74:	24a500e4 	addiu	a1,a1,228
 a78:	02002025 	move	a0,s0
 a7c:	240602bb 	li	a2,699
 a80:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 a84:	afa3002c 	sw	v1,44(sp)
 a88:	8fa7002c 	lw	a3,44(sp)
 a8c:	ace20004 	sw	v0,4(a3)
 a90:	8fa5004c 	lw	a1,76(sp)
 a94:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 a98:	8fa40048 	lw	a0,72(sp)
 a9c:	8e0302c0 	lw	v1,704(s0)
 aa0:	3c090000 	lui	t1,0x0
 aa4:	25290000 	addiu	t1,t1,0
 aa8:	24790008 	addiu	t9,v1,8
 aac:	ae1902c0 	sw	t9,704(s0)
 ab0:	3c08de00 	lui	t0,0xde00
 ab4:	3c060000 	lui	a2,0x0
 ab8:	24c60100 	addiu	a2,a2,256
 abc:	27a40030 	addiu	a0,sp,48
 ac0:	02002825 	move	a1,s0
 ac4:	240702c4 	li	a3,708
 ac8:	ac680000 	sw	t0,0(v1)
 acc:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 ad0:	ac690004 	sw	t1,4(v1)
 ad4:	8fbf001c 	lw	ra,28(sp)
 ad8:	8fb00018 	lw	s0,24(sp)
 adc:	27bd0048 	addiu	sp,sp,72
 ae0:	03e00008 	jr	ra
 ae4:	00000000 	nop

00000ae8 <BgSpot01Idohashira_Draw>:
 ae8:	27bdffe8 	addiu	sp,sp,-24
 aec:	afbf0014 	sw	ra,20(sp)
 af0:	8c820168 	lw	v0,360(a0)
 af4:	04400008 	bltz	v0,b18 <BgSpot01Idohashira_Draw+0x30>
 af8:	00000000 	nop
 afc:	1c400006 	bgtz	v0,b18 <BgSpot01Idohashira_Draw+0x30>
 b00:	00027080 	sll	t6,v0,0x2
 b04:	3c030000 	lui	v1,0x0
 b08:	006e1821 	addu	v1,v1,t6
 b0c:	8c630014 	lw	v1,20(v1)
 b10:	14600006 	bnez	v1,b2c <BgSpot01Idohashira_Draw+0x44>
 b14:	00000000 	nop
 b18:	3c040000 	lui	a0,0x0
 b1c:	0c000000 	jal	0 <BgSpot01Idohashira_PlayBreakSfx1>
 b20:	2484011c 	addiu	a0,a0,284
 b24:	10000004 	b	b38 <BgSpot01Idohashira_Draw+0x50>
 b28:	8fbf0014 	lw	ra,20(sp)
 b2c:	0060f809 	jalr	v1
 b30:	00000000 	nop
 b34:	8fbf0014 	lw	ra,20(sp)
 b38:	27bd0018 	addiu	sp,sp,24
 b3c:	03e00008 	jr	ra
 b40:	00000000 	nop
	...
