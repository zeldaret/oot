
build/src/overlays/actors/ovl_Bg_Spot17_Bakudankabe/z_bg_spot17_bakudankabe.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808B6BC0>:
   0:	27bdff20 	addiu	sp,sp,-224
   4:	afb20080 	sw	s2,128(sp)
   8:	00809025 	move	s2,a0
   c:	afbf009c 	sw	ra,156(sp)
  10:	afbe0098 	sw	s8,152(sp)
  14:	afb70094 	sw	s7,148(sp)
  18:	afb60090 	sw	s6,144(sp)
  1c:	afb5008c 	sw	s5,140(sp)
  20:	afb40088 	sw	s4,136(sp)
  24:	afb30084 	sw	s3,132(sp)
  28:	afb1007c 	sw	s1,124(sp)
  2c:	afb00078 	sw	s0,120(sp)
  30:	f7be0070 	sdc1	$f30,112(sp)
  34:	f7bc0068 	sdc1	$f28,104(sp)
  38:	f7ba0060 	sdc1	$f26,96(sp)
  3c:	f7b80058 	sdc1	$f24,88(sp)
  40:	f7b60050 	sdc1	$f22,80(sp)
  44:	f7b40048 	sdc1	$f20,72(sp)
  48:	00a0f025 	move	s8,a1
  4c:	0c000000 	jal	0 <func_808B6BC0>
  50:	848400b6 	lh	a0,182(a0)
  54:	46000586 	mov.s	$f22,$f0
  58:	0c000000 	jal	0 <func_808B6BC0>
  5c:	864400b6 	lh	a0,182(s2)
  60:	3c0141a0 	lui	at,0x41a0
  64:	4481f000 	mtc1	at,$f30
  68:	44801000 	mtc1	zero,$f2
  6c:	3c01430c 	lui	at,0x430c
  70:	4481e000 	mtc1	at,$f28
  74:	3c013f00 	lui	at,0x3f00
  78:	3c160000 	lui	s6,0x0
  7c:	4481d000 	mtc1	at,$f26
  80:	46000606 	mov.s	$f24,$f0
  84:	26d60000 	addiu	s6,s6,0
  88:	00008825 	move	s1,zero
  8c:	24170014 	li	s7,20
  90:	27b500bc 	addiu	s5,sp,188
  94:	27b400c8 	addiu	s4,sp,200
  98:	e7a200c4 	swc1	$f2,196(sp)
  9c:	e7a200bc 	swc1	$f2,188(sp)
  a0:	0c000000 	jal	0 <func_808B6BC0>
  a4:	00000000 	nop
  a8:	461a0101 	sub.s	$f4,$f0,$f26
  ac:	461c2502 	mul.s	$f20,$f4,$f28
  b0:	0c000000 	jal	0 <func_808B6BC0>
  b4:	00000000 	nop
  b8:	461a0181 	sub.s	$f6,$f0,$f26
  bc:	c6480024 	lwc1	$f8,36(s2)
  c0:	3c0141f0 	lui	at,0x41f0
  c4:	461e3082 	mul.s	$f2,$f6,$f30
  c8:	00000000 	nop
  cc:	46161282 	mul.s	$f10,$f2,$f22
  d0:	460a4400 	add.s	$f16,$f8,$f10
  d4:	4618a482 	mul.s	$f18,$f20,$f24
  d8:	44814000 	mtc1	at,$f8
  dc:	3c0140d0 	lui	at,0x40d0
  e0:	46128100 	add.s	$f4,$f16,$f18
  e4:	44918000 	mtc1	s1,$f16
  e8:	00000000 	nop
  ec:	468084a0 	cvt.s.w	$f18,$f16
  f0:	e7a400c8 	swc1	$f4,200(sp)
  f4:	c6460028 	lwc1	$f6,40(s2)
  f8:	44812000 	mtc1	at,$f4
  fc:	46083280 	add.s	$f10,$f6,$f8
 100:	46049182 	mul.s	$f6,$f18,$f4
 104:	46065200 	add.s	$f8,$f10,$f6
 108:	46181482 	mul.s	$f18,$f2,$f24
 10c:	e7a800cc 	swc1	$f8,204(sp)
 110:	4616a282 	mul.s	$f10,$f20,$f22
 114:	c650002c 	lwc1	$f16,44(s2)
 118:	46128100 	add.s	$f4,$f16,$f18
 11c:	460a2181 	sub.s	$f6,$f4,$f10
 120:	0c000000 	jal	0 <func_808B6BC0>
 124:	e7a600d0 	swc1	$f6,208(sp)
 128:	3c010000 	lui	at,0x0
 12c:	c42800c0 	lwc1	$f8,192(at)
 130:	3c014140 	lui	at,0x4140
 134:	44819000 	mtc1	at,$f18
 138:	46080401 	sub.s	$f16,$f0,$f8
 13c:	46128102 	mul.s	$f4,$f16,$f18
 140:	0c000000 	jal	0 <func_808B6BC0>
 144:	e7a400c0 	swc1	$f4,192(sp)
 148:	3c01425c 	lui	at,0x425c
 14c:	44815000 	mtc1	at,$f10
 150:	3c014100 	lui	at,0x4100
 154:	44814000 	mtc1	at,$f8
 158:	460a0182 	mul.s	$f6,$f0,$f10
 15c:	46083400 	add.s	$f16,$f6,$f8
 160:	4600848d 	trunc.w.s	$f18,$f16
 164:	44029000 	mfc1	v0,$f18
 168:	00000000 	nop
 16c:	00021c00 	sll	v1,v0,0x10
 170:	00031c03 	sra	v1,v1,0x10
 174:	28610014 	slti	at,v1,20
 178:	00029c00 	sll	s3,v0,0x10
 17c:	10200003 	beqz	at,18c <func_808B6BC0+0x18c>
 180:	00139c03 	sra	s3,s3,0x10
 184:	10000006 	b	1a0 <func_808B6BC0+0x1a0>
 188:	2410fed4 	li	s0,-300
 18c:	28610023 	slti	at,v1,35
 190:	10200003 	beqz	at,1a0 <func_808B6BC0+0x1a0>
 194:	2410fe5c 	li	s0,-420
 198:	10000001 	b	1a0 <func_808B6BC0+0x1a0>
 19c:	2410fe98 	li	s0,-360
 1a0:	0c000000 	jal	0 <func_808B6BC0>
 1a4:	00000000 	nop
 1a8:	3c010000 	lui	at,0x0
 1ac:	c42400c4 	lwc1	$f4,196(at)
 1b0:	03c02025 	move	a0,s8
 1b4:	02802825 	move	a1,s4
 1b8:	4604003c 	c.lt.s	$f0,$f4
 1bc:	02a03025 	move	a2,s5
 1c0:	02803825 	move	a3,s4
 1c4:	240f001e 	li	t7,30
 1c8:	45000003 	bc1f	1d8 <func_808B6BC0+0x1d8>
 1cc:	24180004 	li	t8,4
 1d0:	10000002 	b	1dc <func_808B6BC0+0x1dc>
 1d4:	24020041 	li	v0,65
 1d8:	24020021 	li	v0,33
 1dc:	24190001 	li	t9,1
 1e0:	24080003 	li	t0,3
 1e4:	24090050 	li	t1,80
 1e8:	240affff 	li	t2,-1
 1ec:	240b0002 	li	t3,2
 1f0:	afab0038 	sw	t3,56(sp)
 1f4:	afaa0034 	sw	t2,52(sp)
 1f8:	afa90030 	sw	t1,48(sp)
 1fc:	afa8002c 	sw	t0,44(sp)
 200:	afb90028 	sw	t9,40(sp)
 204:	afb00010 	sw	s0,16(sp)
 208:	afa20014 	sw	v0,20(sp)
 20c:	afaf0018 	sw	t7,24(sp)
 210:	afb8001c 	sw	t8,28(sp)
 214:	afa00020 	sw	zero,32(sp)
 218:	afb30024 	sw	s3,36(sp)
 21c:	0c000000 	jal	0 <func_808B6BC0>
 220:	afb6003c 	sw	s6,60(sp)
 224:	26310001 	addiu	s1,s1,1
 228:	1637ff9d 	bne	s1,s7,a0 <func_808B6BC0+0xa0>
 22c:	00000000 	nop
 230:	02802025 	move	a0,s4
 234:	0c000000 	jal	0 <func_808B6BC0>
 238:	26450024 	addiu	a1,s2,36
 23c:	3c014270 	lui	at,0x4270
 240:	4481a000 	mtc1	at,$f20
 244:	240c006e 	li	t4,110
 248:	240d00a0 	li	t5,160
 24c:	240e0001 	li	t6,1
 250:	4406a000 	mfc1	a2,$f20
 254:	afae0018 	sw	t6,24(sp)
 258:	afad0014 	sw	t5,20(sp)
 25c:	afac0010 	sw	t4,16(sp)
 260:	03c02025 	move	a0,s8
 264:	02802825 	move	a1,s4
 268:	0c000000 	jal	0 <func_808B6BC0>
 26c:	24070004 	li	a3,4
 270:	3c014220 	lui	at,0x4220
 274:	4481b000 	mtc1	at,$f22
 278:	c7aa00cc 	lwc1	$f10,204(sp)
 27c:	4406a000 	mfc1	a2,$f20
 280:	240f0078 	li	t7,120
 284:	46165180 	add.s	$f6,$f10,$f22
 288:	241800a0 	li	t8,160
 28c:	24190001 	li	t9,1
 290:	afb90018 	sw	t9,24(sp)
 294:	e7a600cc 	swc1	$f6,204(sp)
 298:	afb80014 	sw	t8,20(sp)
 29c:	afaf0010 	sw	t7,16(sp)
 2a0:	03c02025 	move	a0,s8
 2a4:	02802825 	move	a1,s4
 2a8:	0c000000 	jal	0 <func_808B6BC0>
 2ac:	24070004 	li	a3,4
 2b0:	c7a800cc 	lwc1	$f8,204(sp)
 2b4:	4406a000 	mfc1	a2,$f20
 2b8:	2408006e 	li	t0,110
 2bc:	46164400 	add.s	$f16,$f8,$f22
 2c0:	240900a0 	li	t1,160
 2c4:	240a0001 	li	t2,1
 2c8:	afaa0018 	sw	t2,24(sp)
 2cc:	e7b000cc 	swc1	$f16,204(sp)
 2d0:	afa90014 	sw	t1,20(sp)
 2d4:	afa80010 	sw	t0,16(sp)
 2d8:	03c02025 	move	a0,s8
 2dc:	02802825 	move	a1,s4
 2e0:	0c000000 	jal	0 <func_808B6BC0>
 2e4:	24070004 	li	a3,4
 2e8:	8fbf009c 	lw	ra,156(sp)
 2ec:	d7b40048 	ldc1	$f20,72(sp)
 2f0:	d7b60050 	ldc1	$f22,80(sp)
 2f4:	d7b80058 	ldc1	$f24,88(sp)
 2f8:	d7ba0060 	ldc1	$f26,96(sp)
 2fc:	d7bc0068 	ldc1	$f28,104(sp)
 300:	d7be0070 	ldc1	$f30,112(sp)
 304:	8fb00078 	lw	s0,120(sp)
 308:	8fb1007c 	lw	s1,124(sp)
 30c:	8fb20080 	lw	s2,128(sp)
 310:	8fb30084 	lw	s3,132(sp)
 314:	8fb40088 	lw	s4,136(sp)
 318:	8fb5008c 	lw	s5,140(sp)
 31c:	8fb60090 	lw	s6,144(sp)
 320:	8fb70094 	lw	s7,148(sp)
 324:	8fbe0098 	lw	s8,152(sp)
 328:	03e00008 	jr	ra
 32c:	27bd00e0 	addiu	sp,sp,224

00000330 <BgSpot17Bakudankabe_Init>:
 330:	27bdffd0 	addiu	sp,sp,-48
 334:	afbf001c 	sw	ra,28(sp)
 338:	afb00018 	sw	s0,24(sp)
 33c:	afa50034 	sw	a1,52(sp)
 340:	00808025 	move	s0,a0
 344:	afa00024 	sw	zero,36(sp)
 348:	0c000000 	jal	0 <func_808B6BC0>
 34c:	00002825 	move	a1,zero
 350:	8605001c 	lh	a1,28(s0)
 354:	8fa40034 	lw	a0,52(sp)
 358:	0c000000 	jal	0 <func_808B6BC0>
 35c:	30a5003f 	andi	a1,a1,0x3f
 360:	10400005 	beqz	v0,378 <BgSpot17Bakudankabe_Init+0x48>
 364:	3c040000 	lui	a0,0x0
 368:	0c000000 	jal	0 <func_808B6BC0>
 36c:	02002025 	move	a0,s0
 370:	1000000f 	b	3b0 <BgSpot17Bakudankabe_Init+0x80>
 374:	8fbf001c 	lw	ra,28(sp)
 378:	24840000 	addiu	a0,a0,0
 37c:	0c000000 	jal	0 <func_808B6BC0>
 380:	27a50024 	addiu	a1,sp,36
 384:	8fa40034 	lw	a0,52(sp)
 388:	02003025 	move	a2,s0
 38c:	8fa70024 	lw	a3,36(sp)
 390:	0c000000 	jal	0 <func_808B6BC0>
 394:	24850810 	addiu	a1,a0,2064
 398:	3c050000 	lui	a1,0x0
 39c:	ae02014c 	sw	v0,332(s0)
 3a0:	24a50020 	addiu	a1,a1,32
 3a4:	0c000000 	jal	0 <func_808B6BC0>
 3a8:	02002025 	move	a0,s0
 3ac:	8fbf001c 	lw	ra,28(sp)
 3b0:	8fb00018 	lw	s0,24(sp)
 3b4:	27bd0030 	addiu	sp,sp,48
 3b8:	03e00008 	jr	ra
 3bc:	00000000 	nop

000003c0 <BgSpot17Bakudankabe_Destroy>:
 3c0:	27bdffe8 	addiu	sp,sp,-24
 3c4:	afa40018 	sw	a0,24(sp)
 3c8:	8fae0018 	lw	t6,24(sp)
 3cc:	afbf0014 	sw	ra,20(sp)
 3d0:	00a02025 	move	a0,a1
 3d4:	24a50810 	addiu	a1,a1,2064
 3d8:	0c000000 	jal	0 <func_808B6BC0>
 3dc:	8dc6014c 	lw	a2,332(t6)
 3e0:	8fbf0014 	lw	ra,20(sp)
 3e4:	27bd0018 	addiu	sp,sp,24
 3e8:	03e00008 	jr	ra
 3ec:	00000000 	nop

000003f0 <BgSpot17Bakudankabe_Update>:
 3f0:	27bdffe0 	addiu	sp,sp,-32
 3f4:	afbf001c 	sw	ra,28(sp)
 3f8:	afb00018 	sw	s0,24(sp)
 3fc:	afa50024 	sw	a1,36(sp)
 400:	3c010000 	lui	at,0x0
 404:	c42600c8 	lwc1	$f6,200(at)
 408:	c4840090 	lwc1	$f4,144(a0)
 40c:	00808025 	move	s0,a0
 410:	00a02025 	move	a0,a1
 414:	4606203c 	c.lt.s	$f4,$f6
 418:	00000000 	nop
 41c:	45020015 	bc1fl	474 <BgSpot17Bakudankabe_Update+0x84>
 420:	8fbf001c 	lw	ra,28(sp)
 424:	0c000000 	jal	0 <func_808B6BC0>
 428:	02002825 	move	a1,s0
 42c:	10400010 	beqz	v0,470 <BgSpot17Bakudankabe_Update+0x80>
 430:	02002025 	move	a0,s0
 434:	0c000000 	jal	0 <func_808B6BC0>
 438:	8fa50024 	lw	a1,36(sp)
 43c:	8605001c 	lh	a1,28(s0)
 440:	8fa40024 	lw	a0,36(sp)
 444:	0c000000 	jal	0 <func_808B6BC0>
 448:	30a5003f 	andi	a1,a1,0x3f
 44c:	8fa40024 	lw	a0,36(sp)
 450:	26050024 	addiu	a1,s0,36
 454:	24060028 	li	a2,40
 458:	0c000000 	jal	0 <func_808B6BC0>
 45c:	24072810 	li	a3,10256
 460:	0c000000 	jal	0 <func_808B6BC0>
 464:	24044802 	li	a0,18434
 468:	0c000000 	jal	0 <func_808B6BC0>
 46c:	02002025 	move	a0,s0
 470:	8fbf001c 	lw	ra,28(sp)
 474:	8fb00018 	lw	s0,24(sp)
 478:	27bd0020 	addiu	sp,sp,32
 47c:	03e00008 	jr	ra
 480:	00000000 	nop

00000484 <BgSpot17Bakudankabe_Draw>:
 484:	27bdff98 	addiu	sp,sp,-104
 488:	3c010001 	lui	at,0x1
 48c:	afbf001c 	sw	ra,28(sp)
 490:	afb00018 	sw	s0,24(sp)
 494:	afa40068 	sw	a0,104(sp)
 498:	00a11821 	addu	v1,a1,at
 49c:	8c641de4 	lw	a0,7652(v1)
 4a0:	00a08025 	move	s0,a1
 4a4:	afa30020 	sw	v1,32(sp)
 4a8:	00800821 	move	at,a0
 4ac:	00042080 	sll	a0,a0,0x2
 4b0:	00812023 	subu	a0,a0,at
 4b4:	00042100 	sll	a0,a0,0x4
 4b8:	00812023 	subu	a0,a0,at
 4bc:	000420c0 	sll	a0,a0,0x3
 4c0:	00812023 	subu	a0,a0,at
 4c4:	00042080 	sll	a0,a0,0x2
 4c8:	0c000000 	jal	0 <func_808B6BC0>
 4cc:	3084ffff 	andi	a0,a0,0xffff
 4d0:	8fa30020 	lw	v1,32(sp)
 4d4:	00027203 	sra	t6,v0,0x8
 4d8:	a3ae0063 	sb	t6,99(sp)
 4dc:	8c641de4 	lw	a0,7652(v1)
 4e0:	00800821 	move	at,a0
 4e4:	00042080 	sll	a0,a0,0x2
 4e8:	00812023 	subu	a0,a0,at
 4ec:	00042100 	sll	a0,a0,0x4
 4f0:	00812023 	subu	a0,a0,at
 4f4:	000420c0 	sll	a0,a0,0x3
 4f8:	00812023 	subu	a0,a0,at
 4fc:	00042080 	sll	a0,a0,0x2
 500:	0c000000 	jal	0 <func_808B6BC0>
 504:	3084ffff 	andi	a0,a0,0xffff
 508:	00027a03 	sra	t7,v0,0x8
 50c:	a3af0062 	sb	t7,98(sp)
 510:	8e050000 	lw	a1,0(s0)
 514:	3c060000 	lui	a2,0x0
 518:	24c60000 	addiu	a2,a2,0
 51c:	27a4004c 	addiu	a0,sp,76
 520:	2407010d 	li	a3,269
 524:	0c000000 	jal	0 <func_808B6BC0>
 528:	afa5005c 	sw	a1,92(sp)
 52c:	0c000000 	jal	0 <func_808B6BC0>
 530:	8e040000 	lw	a0,0(s0)
 534:	8fa8005c 	lw	t0,92(sp)
 538:	3c19da38 	lui	t9,0xda38
 53c:	37390003 	ori	t9,t9,0x3
 540:	8d0202c0 	lw	v0,704(t0)
 544:	3c050000 	lui	a1,0x0
 548:	24a50020 	addiu	a1,a1,32
 54c:	24580008 	addiu	t8,v0,8
 550:	ad1802c0 	sw	t8,704(t0)
 554:	ac590000 	sw	t9,0(v0)
 558:	8e040000 	lw	a0,0(s0)
 55c:	24060111 	li	a2,273
 560:	afa8005c 	sw	t0,92(sp)
 564:	0c000000 	jal	0 <func_808B6BC0>
 568:	afa20048 	sw	v0,72(sp)
 56c:	8fa30048 	lw	v1,72(sp)
 570:	8fa8005c 	lw	t0,92(sp)
 574:	3c0afb00 	lui	t2,0xfb00
 578:	ac620004 	sw	v0,4(v1)
 57c:	83a50062 	lb	a1,98(sp)
 580:	83a40063 	lb	a0,99(sp)
 584:	8d0202c0 	lw	v0,704(t0)
 588:	00052843 	sra	a1,a1,0x1
 58c:	24a500c0 	addiu	a1,a1,192
 590:	00042043 	sra	a0,a0,0x1
 594:	248400c0 	addiu	a0,a0,192
 598:	00052e00 	sll	a1,a1,0x18
 59c:	00042600 	sll	a0,a0,0x18
 5a0:	00052e03 	sra	a1,a1,0x18
 5a4:	00045e03 	sra	t3,a0,0x18
 5a8:	30ad00ff 	andi	t5,a1,0xff
 5ac:	000d7400 	sll	t6,t5,0x10
 5b0:	000b6600 	sll	t4,t3,0x18
 5b4:	24490008 	addiu	t1,v0,8
 5b8:	018ec025 	or	t8,t4,t6
 5bc:	ad0902c0 	sw	t1,704(t0)
 5c0:	3719ff80 	ori	t9,t8,0xff80
 5c4:	ac590004 	sw	t9,4(v0)
 5c8:	ac4a0000 	sw	t2,0(v0)
 5cc:	8d0202c0 	lw	v0,704(t0)
 5d0:	3c0b0000 	lui	t3,0x0
 5d4:	256b0000 	addiu	t3,t3,0
 5d8:	24490008 	addiu	t1,v0,8
 5dc:	ad0902c0 	sw	t1,704(t0)
 5e0:	3c0ade00 	lui	t2,0xde00
 5e4:	3c060000 	lui	a2,0x0
 5e8:	ac4a0000 	sw	t2,0(v0)
 5ec:	ac4b0004 	sw	t3,4(v0)
 5f0:	8e050000 	lw	a1,0(s0)
 5f4:	24c60040 	addiu	a2,a2,64
 5f8:	27a4004c 	addiu	a0,sp,76
 5fc:	0c000000 	jal	0 <func_808B6BC0>
 600:	2407011b 	li	a3,283
 604:	8e050000 	lw	a1,0(s0)
 608:	3c060000 	lui	a2,0x0
 60c:	24c60060 	addiu	a2,a2,96
 610:	27a4002c 	addiu	a0,sp,44
 614:	2407011e 	li	a3,286
 618:	0c000000 	jal	0 <func_808B6BC0>
 61c:	afa5003c 	sw	a1,60(sp)
 620:	0c000000 	jal	0 <func_808B6BC0>
 624:	8e040000 	lw	a0,0(s0)
 628:	8fa7003c 	lw	a3,60(sp)
 62c:	3c0cda38 	lui	t4,0xda38
 630:	358c0003 	ori	t4,t4,0x3
 634:	8ce202d0 	lw	v0,720(a3)
 638:	3c050000 	lui	a1,0x0
 63c:	24a50080 	addiu	a1,a1,128
 640:	244d0008 	addiu	t5,v0,8
 644:	aced02d0 	sw	t5,720(a3)
 648:	ac4c0000 	sw	t4,0(v0)
 64c:	8e040000 	lw	a0,0(s0)
 650:	24060122 	li	a2,290
 654:	0c000000 	jal	0 <func_808B6BC0>
 658:	afa20028 	sw	v0,40(sp)
 65c:	8fa30028 	lw	v1,40(sp)
 660:	3c190000 	lui	t9,0x0
 664:	27390000 	addiu	t9,t9,0
 668:	ac620004 	sw	v0,4(v1)
 66c:	8fae003c 	lw	t6,60(sp)
 670:	3c18de00 	lui	t8,0xde00
 674:	3c060000 	lui	a2,0x0
 678:	8dc202d0 	lw	v0,720(t6)
 67c:	24c600a0 	addiu	a2,a2,160
 680:	27a4002c 	addiu	a0,sp,44
 684:	244f0008 	addiu	t7,v0,8
 688:	adcf02d0 	sw	t7,720(t6)
 68c:	ac590004 	sw	t9,4(v0)
 690:	ac580000 	sw	t8,0(v0)
 694:	8e050000 	lw	a1,0(s0)
 698:	0c000000 	jal	0 <func_808B6BC0>
 69c:	24070127 	li	a3,295
 6a0:	8fbf001c 	lw	ra,28(sp)
 6a4:	8fb00018 	lw	s0,24(sp)
 6a8:	27bd0068 	addiu	sp,sp,104
 6ac:	03e00008 	jr	ra
 6b0:	00000000 	nop
	...
