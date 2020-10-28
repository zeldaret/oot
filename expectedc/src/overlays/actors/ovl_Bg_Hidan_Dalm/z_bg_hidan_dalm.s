
build/src/overlays/actors/ovl_Bg_Hidan_Dalm/z_bg_hidan_dalm.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHidanDalm_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afb10020 	sw	s1,32(sp)
   8:	00a08825 	move	s1,a1
   c:	afbf0024 	sw	ra,36(sp)
  10:	afb0001c 	sw	s0,28(sp)
  14:	3c050000 	lui	a1,0x0
  18:	00808025 	move	s0,a0
  1c:	afa0002c 	sw	zero,44(sp)
  20:	0c000000 	jal	0 <BgHidanDalm_Init>
  24:	24a50000 	addiu	a1,a1,0
  28:	02002025 	move	a0,s0
  2c:	0c000000 	jal	0 <BgHidanDalm_Init>
  30:	00002825 	move	a1,zero
  34:	3c040000 	lui	a0,0x0
  38:	24840000 	addiu	a0,a0,0
  3c:	0c000000 	jal	0 <BgHidanDalm_Init>
  40:	27a5002c 	addiu	a1,sp,44
  44:	02202025 	move	a0,s1
  48:	26250810 	addiu	a1,s1,2064
  4c:	02003025 	move	a2,s0
  50:	0c000000 	jal	0 <BgHidanDalm_Init>
  54:	8fa7002c 	lw	a3,44(sp)
  58:	ae02014c 	sw	v0,332(s0)
  5c:	2605016c 	addiu	a1,s0,364
  60:	afa50028 	sw	a1,40(sp)
  64:	0c000000 	jal	0 <BgHidanDalm_Init>
  68:	02202025 	move	a0,s1
  6c:	3c070000 	lui	a3,0x0
  70:	260e018c 	addiu	t6,s0,396
  74:	8fa50028 	lw	a1,40(sp)
  78:	afae0010 	sw	t6,16(sp)
  7c:	24e70000 	addiu	a3,a3,0
  80:	02202025 	move	a0,s1
  84:	0c000000 	jal	0 <BgHidanDalm_Init>
  88:	02003025 	move	a2,s0
  8c:	860f001c 	lh	t7,28(s0)
  90:	8608001c 	lh	t0,28(s0)
  94:	02202025 	move	a0,s1
  98:	000fca03 	sra	t9,t7,0x8
  9c:	310900ff 	andi	t1,t0,0xff
  a0:	a2190168 	sb	t9,360(s0)
  a4:	a609001c 	sh	t1,28(s0)
  a8:	0c000000 	jal	0 <BgHidanDalm_Init>
  ac:	332500ff 	andi	a1,t9,0xff
  b0:	10400005 	beqz	v0,c8 <BgHidanDalm_Init+0xc8>
  b4:	3c0a0000 	lui	t2,0x0
  b8:	0c000000 	jal	0 <BgHidanDalm_Init>
  bc:	02002025 	move	a0,s0
  c0:	10000004 	b	d4 <BgHidanDalm_Init+0xd4>
  c4:	8fbf0024 	lw	ra,36(sp)
  c8:	254a0000 	addiu	t2,t2,0
  cc:	ae0a0164 	sw	t2,356(s0)
  d0:	8fbf0024 	lw	ra,36(sp)
  d4:	8fb0001c 	lw	s0,28(sp)
  d8:	8fb10020 	lw	s1,32(sp)
  dc:	03e00008 	jr	ra
  e0:	27bd0038 	addiu	sp,sp,56

000000e4 <BgHidanDalm_Destroy>:
  e4:	27bdffe8 	addiu	sp,sp,-24
  e8:	afa40018 	sw	a0,24(sp)
  ec:	8fae0018 	lw	t6,24(sp)
  f0:	afbf0014 	sw	ra,20(sp)
  f4:	00a03825 	move	a3,a1
  f8:	00a02025 	move	a0,a1
  fc:	8dc6014c 	lw	a2,332(t6)
 100:	afa7001c 	sw	a3,28(sp)
 104:	0c000000 	jal	0 <BgHidanDalm_Init>
 108:	24a50810 	addiu	a1,a1,2064
 10c:	8fa50018 	lw	a1,24(sp)
 110:	8fa4001c 	lw	a0,28(sp)
 114:	0c000000 	jal	0 <BgHidanDalm_Init>
 118:	24a5016c 	addiu	a1,a1,364
 11c:	8fbf0014 	lw	ra,20(sp)
 120:	27bd0018 	addiu	sp,sp,24
 124:	03e00008 	jr	ra
 128:	00000000 	nop

0000012c <BgHidanDalm_Wait>:
 12c:	27bdffd8 	addiu	sp,sp,-40
 130:	afbf001c 	sw	ra,28(sp)
 134:	afb10018 	sw	s1,24(sp)
 138:	afb00014 	sw	s0,20(sp)
 13c:	908e017d 	lbu	t6,381(a0)
 140:	00808025 	move	s0,a0
 144:	00a08825 	move	s1,a1
 148:	31cf0002 	andi	t7,t6,0x2
 14c:	11e0004c 	beqz	t7,280 <BgHidanDalm_Wait+0x154>
 150:	8ca31c44 	lw	v1,7236(a1)
 154:	00a02025 	move	a0,a1
 158:	0c000000 	jal	0 <BgHidanDalm_Init>
 15c:	afa30024 	sw	v1,36(sp)
 160:	14400047 	bnez	v0,280 <BgHidanDalm_Wait+0x154>
 164:	8fa30024 	lw	v1,36(sp)
 168:	80620842 	lb	v0,2114(v1)
 16c:	24010016 	li	at,22
 170:	10410003 	beq	v0,at,180 <BgHidanDalm_Wait+0x54>
 174:	24010017 	li	at,23
 178:	54410042 	bnel	v0,at,284 <BgHidanDalm_Wait+0x158>
 17c:	3c010001 	lui	at,0x1
 180:	9218017d 	lbu	t8,381(s0)
 184:	8e020188 	lw	v0,392(s0)
 188:	3319fffd 	andi	t9,t8,0xfffd
 18c:	a219017d 	sb	t9,381(s0)
 190:	90480016 	lbu	t0,22(v0)
 194:	31090002 	andi	t1,t0,0x2
 198:	55200006 	bnezl	t1,1b4 <BgHidanDalm_Wait+0x88>
 19c:	860c0032 	lh	t4,50(s0)
 1a0:	904a0072 	lbu	t2,114(v0)
 1a4:	314b0002 	andi	t3,t2,0x2
 1a8:	51600006 	beqzl	t3,1c4 <BgHidanDalm_Wait+0x98>
 1ac:	860e0032 	lh	t6,50(s0)
 1b0:	860c0032 	lh	t4,50(s0)
 1b4:	258dc000 	addiu	t5,t4,-16384
 1b8:	10000004 	b	1cc <BgHidanDalm_Wait+0xa0>
 1bc:	a60d0032 	sh	t5,50(s0)
 1c0:	860e0032 	lh	t6,50(s0)
 1c4:	25cf4000 	addiu	t7,t6,16384
 1c8:	a60f0032 	sh	t7,50(s0)
 1cc:	0c000000 	jal	0 <BgHidanDalm_Init>
 1d0:	86040032 	lh	a0,50(s0)
 1d4:	3c014202 	lui	at,0x4202
 1d8:	44813000 	mtc1	at,$f6
 1dc:	c6040024 	lwc1	$f4,36(s0)
 1e0:	86040032 	lh	a0,50(s0)
 1e4:	46003202 	mul.s	$f8,$f6,$f0
 1e8:	46082280 	add.s	$f10,$f4,$f8
 1ec:	0c000000 	jal	0 <BgHidanDalm_Init>
 1f0:	e60a0024 	swc1	$f10,36(s0)
 1f4:	3c014202 	lui	at,0x4202
 1f8:	44819000 	mtc1	at,$f18
 1fc:	c610002c 	lwc1	$f16,44(s0)
 200:	02202025 	move	a0,s1
 204:	46009182 	mul.s	$f6,$f18,$f0
 208:	02002825 	move	a1,s0
 20c:	24060008 	li	a2,8
 210:	46068100 	add.s	$f4,$f16,$f6
 214:	0c000000 	jal	0 <BgHidanDalm_Init>
 218:	e604002c 	swc1	$f4,44(s0)
 21c:	96090088 	lhu	t1,136(s0)
 220:	8e180004 	lw	t8,4(s0)
 224:	3c014120 	lui	at,0x4120
 228:	312bfffd 	andi	t3,t1,0xfffd
 22c:	44814000 	mtc1	at,$f8
 230:	3c080000 	lui	t0,0x0
 234:	25080000 	addiu	t0,t0,0
 238:	a60b0088 	sh	t3,136(s0)
 23c:	316cfff7 	andi	t4,t3,0xfff7
 240:	37190010 	ori	t9,t8,0x10
 244:	ae190004 	sw	t9,4(s0)
 248:	ae080164 	sw	t0,356(s0)
 24c:	a60c0088 	sh	t4,136(s0)
 250:	02202025 	move	a0,s1
 254:	92050168 	lbu	a1,360(s0)
 258:	0c000000 	jal	0 <BgHidanDalm_Init>
 25c:	e6080068 	swc1	$f8,104(s0)
 260:	8e241c44 	lw	a0,7236(s1)
 264:	0c000000 	jal	0 <BgHidanDalm_Init>
 268:	2405180a 	li	a1,6154
 26c:	02002025 	move	a0,s0
 270:	0c000000 	jal	0 <BgHidanDalm_Init>
 274:	240528b7 	li	a1,10423
 278:	10000008 	b	29c <BgHidanDalm_Wait+0x170>
 27c:	8fbf001c 	lw	ra,28(sp)
 280:	3c010001 	lui	at,0x1
 284:	34211e60 	ori	at,at,0x1e60
 288:	02212821 	addu	a1,s1,at
 28c:	02202025 	move	a0,s1
 290:	0c000000 	jal	0 <BgHidanDalm_Init>
 294:	2606016c 	addiu	a2,s0,364
 298:	8fbf001c 	lw	ra,28(sp)
 29c:	8fb00014 	lw	s0,20(sp)
 2a0:	8fb10018 	lw	s1,24(sp)
 2a4:	03e00008 	jr	ra
 2a8:	27bd0028 	addiu	sp,sp,40

000002ac <BgHidanDalm_Shrink>:
 2ac:	27bdff88 	addiu	sp,sp,-120
 2b0:	afb70050 	sw	s7,80(sp)
 2b4:	afb10038 	sw	s1,56(sp)
 2b8:	00808825 	move	s1,a0
 2bc:	00a0b825 	move	s7,a1
 2c0:	afbf0054 	sw	ra,84(sp)
 2c4:	3c063b83 	lui	a2,0x3b83
 2c8:	afb6004c 	sw	s6,76(sp)
 2cc:	afb50048 	sw	s5,72(sp)
 2d0:	afb40044 	sw	s4,68(sp)
 2d4:	afb30040 	sw	s3,64(sp)
 2d8:	afb2003c 	sw	s2,60(sp)
 2dc:	afb00034 	sw	s0,52(sp)
 2e0:	f7ba0028 	sdc1	$f26,40(sp)
 2e4:	f7b80020 	sdc1	$f24,32(sp)
 2e8:	f7b60018 	sdc1	$f22,24(sp)
 2ec:	f7b40010 	sdc1	$f20,16(sp)
 2f0:	34c6126f 	ori	a2,a2,0x126f
 2f4:	24050000 	li	a1,0
 2f8:	0c000000 	jal	0 <BgHidanDalm_Init>
 2fc:	24840050 	addiu	a0,a0,80
 300:	10400006 	beqz	v0,31c <BgHidanDalm_Shrink+0x70>
 304:	02e02025 	move	a0,s7
 308:	02202825 	move	a1,s1
 30c:	0c000000 	jal	0 <BgHidanDalm_Init>
 310:	24060007 	li	a2,7
 314:	0c000000 	jal	0 <BgHidanDalm_Init>
 318:	02202025 	move	a0,s1
 31c:	c6340050 	lwc1	$f20,80(s1)
 320:	c6240024 	lwc1	$f4,36(s1)
 324:	3c014320 	lui	at,0x4320
 328:	e6340058 	swc1	$f20,88(s1)
 32c:	e6340054 	swc1	$f20,84(s1)
 330:	e7a4005c 	swc1	$f4,92(sp)
 334:	c6260050 	lwc1	$f6,80(s1)
 338:	44814000 	mtc1	at,$f8
 33c:	c6300028 	lwc1	$f16,40(s1)
 340:	3c013fc0 	lui	at,0x3fc0
 344:	46083282 	mul.s	$f10,$f6,$f8
 348:	4481d000 	mtc1	at,$f26
 34c:	3c013f00 	lui	at,0x3f00
 350:	4481c000 	mtc1	at,$f24
 354:	3c0140a0 	lui	at,0x40a0
 358:	3c150000 	lui	s5,0x0
 35c:	4481b000 	mtc1	at,$f22
 360:	460a8480 	add.s	$f18,$f16,$f10
 364:	26b50128 	addiu	s5,s5,296
 368:	00008025 	move	s0,zero
 36c:	24160004 	li	s6,4
 370:	e7b20060 	swc1	$f18,96(sp)
 374:	c624002c 	lwc1	$f4,44(s1)
 378:	27b40068 	addiu	s4,sp,104
 37c:	27b3005c 	addiu	s3,sp,92
 380:	34128000 	li	s2,0x8000
 384:	e7a40064 	swc1	$f4,100(sp)
 388:	862e0032 	lh	t6,50(s1)
 38c:	01d22021 	addu	a0,t6,s2
 390:	00042400 	sll	a0,a0,0x10
 394:	0c000000 	jal	0 <BgHidanDalm_Init>
 398:	00042403 	sra	a0,a0,0x10
 39c:	0c000000 	jal	0 <BgHidanDalm_Init>
 3a0:	46000506 	mov.s	$f20,$f0
 3a4:	46180181 	sub.s	$f6,$f0,$f24
 3a8:	46163202 	mul.s	$f8,$f6,$f22
 3ac:	00000000 	nop
 3b0:	4614b402 	mul.s	$f16,$f22,$f20
 3b4:	46104280 	add.s	$f10,$f8,$f16
 3b8:	e7aa0068 	swc1	$f10,104(sp)
 3bc:	862f0032 	lh	t7,50(s1)
 3c0:	01f22021 	addu	a0,t7,s2
 3c4:	00042400 	sll	a0,a0,0x10
 3c8:	0c000000 	jal	0 <BgHidanDalm_Init>
 3cc:	00042403 	sra	a0,a0,0x10
 3d0:	0c000000 	jal	0 <BgHidanDalm_Init>
 3d4:	46000506 	mov.s	$f20,$f0
 3d8:	46180481 	sub.s	$f18,$f0,$f24
 3dc:	46169102 	mul.s	$f4,$f18,$f22
 3e0:	00000000 	nop
 3e4:	4614b182 	mul.s	$f6,$f22,$f20
 3e8:	46062200 	add.s	$f8,$f4,$f6
 3ec:	0c000000 	jal	0 <BgHidanDalm_Init>
 3f0:	e7a80070 	swc1	$f8,112(sp)
 3f4:	46180401 	sub.s	$f16,$f0,$f24
 3f8:	02e02025 	move	a0,s7
 3fc:	02602825 	move	a1,s3
 400:	02803025 	move	a2,s4
 404:	461a8282 	mul.s	$f10,$f16,$f26
 408:	02a03825 	move	a3,s5
 40c:	0c000000 	jal	0 <BgHidanDalm_Init>
 410:	e7aa006c 	swc1	$f10,108(sp)
 414:	26100001 	addiu	s0,s0,1
 418:	5616ffdc 	bnel	s0,s6,38c <BgHidanDalm_Shrink+0xe0>
 41c:	862e0032 	lh	t6,50(s1)
 420:	8fbf0054 	lw	ra,84(sp)
 424:	d7b40010 	ldc1	$f20,16(sp)
 428:	d7b60018 	ldc1	$f22,24(sp)
 42c:	d7b80020 	ldc1	$f24,32(sp)
 430:	d7ba0028 	ldc1	$f26,40(sp)
 434:	8fb00034 	lw	s0,52(sp)
 438:	8fb10038 	lw	s1,56(sp)
 43c:	8fb2003c 	lw	s2,60(sp)
 440:	8fb30040 	lw	s3,64(sp)
 444:	8fb40044 	lw	s4,68(sp)
 448:	8fb50048 	lw	s5,72(sp)
 44c:	8fb6004c 	lw	s6,76(sp)
 450:	8fb70050 	lw	s7,80(sp)
 454:	03e00008 	jr	ra
 458:	27bd0078 	addiu	sp,sp,120

0000045c <BgHidanDalm_Update>:
 45c:	27bdffe0 	addiu	sp,sp,-32
 460:	afbf001c 	sw	ra,28(sp)
 464:	afa50024 	sw	a1,36(sp)
 468:	afa40020 	sw	a0,32(sp)
 46c:	8c990164 	lw	t9,356(a0)
 470:	0320f809 	jalr	t9
 474:	00000000 	nop
 478:	0c000000 	jal	0 <BgHidanDalm_Init>
 47c:	8fa40020 	lw	a0,32(sp)
 480:	3c014200 	lui	at,0x4200
 484:	44812000 	mtc1	at,$f4
 488:	240e0005 	li	t6,5
 48c:	afae0014 	sw	t6,20(sp)
 490:	8fa40024 	lw	a0,36(sp)
 494:	8fa50020 	lw	a1,32(sp)
 498:	3c064120 	lui	a2,0x4120
 49c:	3c074170 	lui	a3,0x4170
 4a0:	0c000000 	jal	0 <BgHidanDalm_Init>
 4a4:	e7a40010 	swc1	$f4,16(sp)
 4a8:	8fbf001c 	lw	ra,28(sp)
 4ac:	27bd0020 	addiu	sp,sp,32
 4b0:	03e00008 	jr	ra
 4b4:	00000000 	nop

000004b8 <BgHidanDalm_UpdateCollider>:
 4b8:	27bdffa8 	addiu	sp,sp,-88
 4bc:	afb30028 	sw	s3,40(sp)
 4c0:	afa40058 	sw	a0,88(sp)
 4c4:	27b30034 	addiu	s3,sp,52
 4c8:	afbf002c 	sw	ra,44(sp)
 4cc:	3c040000 	lui	a0,0x0
 4d0:	afb20024 	sw	s2,36(sp)
 4d4:	afb10020 	sw	s1,32(sp)
 4d8:	afb0001c 	sw	s0,28(sp)
 4dc:	24840038 	addiu	a0,a0,56
 4e0:	0c000000 	jal	0 <BgHidanDalm_Init>
 4e4:	02602825 	move	a1,s3
 4e8:	27b10040 	addiu	s1,sp,64
 4ec:	3c040000 	lui	a0,0x0
 4f0:	24840044 	addiu	a0,a0,68
 4f4:	0c000000 	jal	0 <BgHidanDalm_Init>
 4f8:	02202825 	move	a1,s1
 4fc:	27b2004c 	addiu	s2,sp,76
 500:	3c040000 	lui	a0,0x0
 504:	24840050 	addiu	a0,a0,80
 508:	0c000000 	jal	0 <BgHidanDalm_Init>
 50c:	02402825 	move	a1,s2
 510:	8fb00058 	lw	s0,88(sp)
 514:	00002825 	move	a1,zero
 518:	02603025 	move	a2,s3
 51c:	2610016c 	addiu	s0,s0,364
 520:	02002025 	move	a0,s0
 524:	02203825 	move	a3,s1
 528:	0c000000 	jal	0 <BgHidanDalm_Init>
 52c:	afb20010 	sw	s2,16(sp)
 530:	3c040000 	lui	a0,0x0
 534:	2484008c 	addiu	a0,a0,140
 538:	0c000000 	jal	0 <BgHidanDalm_Init>
 53c:	02202825 	move	a1,s1
 540:	02002025 	move	a0,s0
 544:	24050001 	li	a1,1
 548:	02603025 	move	a2,s3
 54c:	02403825 	move	a3,s2
 550:	0c000000 	jal	0 <BgHidanDalm_Init>
 554:	afb10010 	sw	s1,16(sp)
 558:	3c040000 	lui	a0,0x0
 55c:	248400b0 	addiu	a0,a0,176
 560:	0c000000 	jal	0 <BgHidanDalm_Init>
 564:	02602825 	move	a1,s3
 568:	3c040000 	lui	a0,0x0
 56c:	248400bc 	addiu	a0,a0,188
 570:	0c000000 	jal	0 <BgHidanDalm_Init>
 574:	02202825 	move	a1,s1
 578:	3c040000 	lui	a0,0x0
 57c:	248400c8 	addiu	a0,a0,200
 580:	0c000000 	jal	0 <BgHidanDalm_Init>
 584:	02402825 	move	a1,s2
 588:	02002025 	move	a0,s0
 58c:	24050002 	li	a1,2
 590:	02603025 	move	a2,s3
 594:	02203825 	move	a3,s1
 598:	0c000000 	jal	0 <BgHidanDalm_Init>
 59c:	afb20010 	sw	s2,16(sp)
 5a0:	3c040000 	lui	a0,0x0
 5a4:	248400f8 	addiu	a0,a0,248
 5a8:	0c000000 	jal	0 <BgHidanDalm_Init>
 5ac:	02402825 	move	a1,s2
 5b0:	02002025 	move	a0,s0
 5b4:	24050003 	li	a1,3
 5b8:	02603025 	move	a2,s3
 5bc:	02403825 	move	a3,s2
 5c0:	0c000000 	jal	0 <BgHidanDalm_Init>
 5c4:	afb10010 	sw	s1,16(sp)
 5c8:	8fbf002c 	lw	ra,44(sp)
 5cc:	8fb0001c 	lw	s0,28(sp)
 5d0:	8fb10020 	lw	s1,32(sp)
 5d4:	8fb20024 	lw	s2,36(sp)
 5d8:	8fb30028 	lw	s3,40(sp)
 5dc:	03e00008 	jr	ra
 5e0:	27bd0058 	addiu	sp,sp,88

000005e4 <BgHidanDalm_Draw>:
 5e4:	27bdffe8 	addiu	sp,sp,-24
 5e8:	afbf0014 	sw	ra,20(sp)
 5ec:	848e001c 	lh	t6,28(a0)
 5f0:	00803025 	move	a2,a0
 5f4:	00a03825 	move	a3,a1
 5f8:	15c00008 	bnez	t6,61c <BgHidanDalm_Draw+0x38>
 5fc:	00e02025 	move	a0,a3
 600:	00a02025 	move	a0,a1
 604:	3c050000 	lui	a1,0x0
 608:	24a50000 	addiu	a1,a1,0
 60c:	0c000000 	jal	0 <BgHidanDalm_Init>
 610:	afa60018 	sw	a2,24(sp)
 614:	10000006 	b	630 <BgHidanDalm_Draw+0x4c>
 618:	8fa60018 	lw	a2,24(sp)
 61c:	3c050000 	lui	a1,0x0
 620:	24a50000 	addiu	a1,a1,0
 624:	0c000000 	jal	0 <BgHidanDalm_Init>
 628:	afa60018 	sw	a2,24(sp)
 62c:	8fa60018 	lw	a2,24(sp)
 630:	8cd80164 	lw	t8,356(a2)
 634:	3c0f0000 	lui	t7,0x0
 638:	25ef0000 	addiu	t7,t7,0
 63c:	55f80004 	bnel	t7,t8,650 <BgHidanDalm_Draw+0x6c>
 640:	8fbf0014 	lw	ra,20(sp)
 644:	0c000000 	jal	0 <BgHidanDalm_Init>
 648:	00c02025 	move	a0,a2
 64c:	8fbf0014 	lw	ra,20(sp)
 650:	27bd0018 	addiu	sp,sp,24
 654:	03e00008 	jr	ra
 658:	00000000 	nop
 65c:	00000000 	nop
