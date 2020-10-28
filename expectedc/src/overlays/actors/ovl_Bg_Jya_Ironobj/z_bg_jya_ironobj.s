
build/src/overlays/actors/ovl_Bg_Jya_Ironobj/z_bg_jya_ironobj.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808988A0>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	00803025 	move	a2,a0
   8:	afa50024 	sw	a1,36(sp)
   c:	00a02025 	move	a0,a1
  10:	afbf0014 	sw	ra,20(sp)
  14:	24c50168 	addiu	a1,a2,360
  18:	afa50018 	sw	a1,24(sp)
  1c:	0c000000 	jal	0 <func_808988A0>
  20:	afa60020 	sw	a2,32(sp)
  24:	3c070000 	lui	a3,0x0
  28:	8fa60020 	lw	a2,32(sp)
  2c:	24e70000 	addiu	a3,a3,0
  30:	8fa40024 	lw	a0,36(sp)
  34:	0c000000 	jal	0 <func_808988A0>
  38:	8fa50018 	lw	a1,24(sp)
  3c:	8fa60020 	lw	a2,32(sp)
  40:	24010001 	li	at,1
  44:	24180028 	li	t8,40
  48:	84ce001c 	lh	t6,28(a2)
  4c:	24190064 	li	t9,100
  50:	00c02025 	move	a0,a2
  54:	31cf0001 	andi	t7,t6,0x1
  58:	15e10003 	bne	t7,at,68 <func_808988A0+0x68>
  5c:	00000000 	nop
  60:	a4d801a8 	sh	t8,424(a2)
  64:	a4d901aa 	sh	t9,426(a2)
  68:	0c000000 	jal	0 <func_808988A0>
  6c:	8fa50018 	lw	a1,24(sp)
  70:	8fbf0014 	lw	ra,20(sp)
  74:	27bd0020 	addiu	sp,sp,32
  78:	03e00008 	jr	ra
  7c:	00000000 	nop

00000080 <func_80898920>:
  80:	27bdff10 	addiu	sp,sp,-240
  84:	afbf0094 	sw	ra,148(sp)
  88:	afb60090 	sw	s6,144(sp)
  8c:	afb5008c 	sw	s5,140(sp)
  90:	afb40088 	sw	s4,136(sp)
  94:	afb30084 	sw	s3,132(sp)
  98:	afb20080 	sw	s2,128(sp)
  9c:	afb1007c 	sw	s1,124(sp)
  a0:	afb00078 	sw	s0,120(sp)
  a4:	f7be0070 	sdc1	$f30,112(sp)
  a8:	f7bc0068 	sdc1	$f28,104(sp)
  ac:	f7ba0060 	sdc1	$f26,96(sp)
  b0:	f7b80058 	sdc1	$f24,88(sp)
  b4:	f7b60050 	sdc1	$f22,80(sp)
  b8:	f7b40048 	sdc1	$f20,72(sp)
  bc:	80c702ff 	lb	a3,767(a2)
  c0:	00c08025 	move	s0,a2
  c4:	00809825 	move	s3,a0
  c8:	18e00004 	blez	a3,dc <func_80898920+0x5c>
  cc:	00a0a825 	move	s5,a1
  d0:	28e10004 	slti	at,a3,4
  d4:	14200009 	bnez	at,fc <func_80898920+0x7c>
  d8:	3c040000 	lui	a0,0x0
  dc:	3c040000 	lui	a0,0x0
  e0:	3c050000 	lui	a1,0x0
  e4:	24a50000 	addiu	a1,a1,0
  e8:	24840000 	addiu	a0,a0,0
  ec:	0c000000 	jal	0 <func_808988A0>
  f0:	240600e9 	li	a2,233
  f4:	100000f8 	b	4d8 <func_80898920+0x458>
  f8:	8fbf0094 	lw	ra,148(sp)
  fc:	24840000 	addiu	a0,a0,0
 100:	0c000000 	jal	0 <func_808988A0>
 104:	00e02825 	move	a1,a3
 108:	02602025 	move	a0,s3
 10c:	0c000000 	jal	0 <func_808988A0>
 110:	02002825 	move	a1,s0
 114:	820e02ff 	lb	t6,767(s0)
 118:	3c014120 	lui	at,0x4120
 11c:	4481f000 	mtc1	at,$f30
 120:	3c0140c0 	lui	at,0x40c0
 124:	3c180000 	lui	t8,0x0
 128:	4481e000 	mtc1	at,$f28
 12c:	000e7840 	sll	t7,t6,0x1
 130:	030fc021 	addu	t8,t8,t7
 134:	3c014100 	lui	at,0x4100
 138:	87180000 	lh	t8,0(t8)
 13c:	4481d000 	mtc1	at,$f26
 140:	3c0141a0 	lui	at,0x41a0
 144:	4481c000 	mtc1	at,$f24
 148:	3c0142a0 	lui	at,0x42a0
 14c:	0302b021 	addu	s6,t8,v0
 150:	0016b400 	sll	s6,s6,0x10
 154:	4481b000 	mtc1	at,$f22
 158:	0016b403 	sra	s6,s6,0x10
 15c:	00008825 	move	s1,zero
 160:	26b41c24 	addiu	s4,s5,7204
 164:	24120008 	li	s2,8
 168:	0c000000 	jal	0 <func_808988A0>
 16c:	00000000 	nop
 170:	0c000000 	jal	0 <func_808988A0>
 174:	46000506 	mov.s	$f20,$f0
 178:	4616a102 	mul.s	$f4,$f20,$f22
 17c:	c6660028 	lwc1	$f6,40(s3)
 180:	3c014680 	lui	at,0x4680
 184:	44819000 	mtc1	at,$f18
 188:	8e670024 	lw	a3,36(s3)
 18c:	02802025 	move	a0,s4
 190:	02a02825 	move	a1,s5
 194:	46062200 	add.s	$f8,$f4,$f6
 198:	46120102 	mul.s	$f4,$f0,$f18
 19c:	2406018f 	li	a2,399
 1a0:	46184280 	add.s	$f10,$f8,$f24
 1a4:	4600218d 	trunc.w.s	$f6,$f4
 1a8:	e7aa0010 	swc1	$f10,16(sp)
 1ac:	c670002c 	lwc1	$f16,44(s3)
 1b0:	afa00024 	sw	zero,36(sp)
 1b4:	44083000 	mfc1	t0,$f6
 1b8:	afa00020 	sw	zero,32(sp)
 1bc:	afa00018 	sw	zero,24(sp)
 1c0:	00084c00 	sll	t1,t0,0x10
 1c4:	00095403 	sra	t2,t1,0x10
 1c8:	01565821 	addu	t3,t2,s6
 1cc:	256ce000 	addiu	t4,t3,-8192
 1d0:	afac001c 	sw	t4,28(sp)
 1d4:	0c000000 	jal	0 <func_808988A0>
 1d8:	e7b00014 	swc1	$f16,20(sp)
 1dc:	1040000d 	beqz	v0,214 <func_80898920+0x194>
 1e0:	00408025 	move	s0,v0
 1e4:	0c000000 	jal	0 <func_808988A0>
 1e8:	00000000 	nop
 1ec:	461a0202 	mul.s	$f8,$f0,$f26
 1f0:	3c014110 	lui	at,0x4110
 1f4:	44815000 	mtc1	at,$f10
 1f8:	00000000 	nop
 1fc:	460a4400 	add.s	$f16,$f8,$f10
 200:	0c000000 	jal	0 <func_808988A0>
 204:	e6100068 	swc1	$f16,104(s0)
 208:	461e0482 	mul.s	$f18,$f0,$f30
 20c:	461c9100 	add.s	$f4,$f18,$f28
 210:	e6040060 	swc1	$f4,96(s0)
 214:	26310001 	addiu	s1,s1,1
 218:	1632ffd3 	bne	s1,s2,168 <func_80898920+0xe8>
 21c:	00000000 	nop
 220:	3c014316 	lui	at,0x4316
 224:	44814000 	mtc1	at,$f8
 228:	c6660028 	lwc1	$f6,40(s3)
 22c:	8e670024 	lw	a3,36(s3)
 230:	240d0001 	li	t5,1
 234:	46083280 	add.s	$f10,$f6,$f8
 238:	02802025 	move	a0,s4
 23c:	02a02825 	move	a1,s5
 240:	2406018f 	li	a2,399
 244:	e7aa0010 	swc1	$f10,16(sp)
 248:	c670002c 	lwc1	$f16,44(s3)
 24c:	afad0024 	sw	t5,36(sp)
 250:	afa00020 	sw	zero,32(sp)
 254:	afa0001c 	sw	zero,28(sp)
 258:	afa00018 	sw	zero,24(sp)
 25c:	0c000000 	jal	0 <func_808988A0>
 260:	e7b00014 	swc1	$f16,20(sp)
 264:	c6720028 	lwc1	$f18,40(s3)
 268:	8e670024 	lw	a3,36(s3)
 26c:	240e0002 	li	t6,2
 270:	e7b20010 	swc1	$f18,16(sp)
 274:	c664002c 	lwc1	$f4,44(s3)
 278:	afae0024 	sw	t6,36(sp)
 27c:	afa00020 	sw	zero,32(sp)
 280:	afa0001c 	sw	zero,28(sp)
 284:	afa00018 	sw	zero,24(sp)
 288:	02802025 	move	a0,s4
 28c:	02a02825 	move	a1,s5
 290:	2406018f 	li	a2,399
 294:	0c000000 	jal	0 <func_808988A0>
 298:	e7a40014 	swc1	$f4,20(sp)
 29c:	00162400 	sll	a0,s6,0x10
 2a0:	0c000000 	jal	0 <func_808988A0>
 2a4:	00042403 	sra	a0,a0,0x10
 2a8:	00162400 	sll	a0,s6,0x10
 2ac:	e7a000bc 	swc1	$f0,188(sp)
 2b0:	0c000000 	jal	0 <func_808988A0>
 2b4:	00042403 	sra	a0,a0,0x10
 2b8:	3c014040 	lui	at,0x4040
 2bc:	4481c000 	mtc1	at,$f24
 2c0:	e7a000c4 	swc1	$f0,196(sp)
 2c4:	00009025 	move	s2,zero
 2c8:	27b600c8 	addiu	s6,sp,200
 2cc:	27b400d4 	addiu	s4,sp,212
 2d0:	0c000000 	jal	0 <func_808988A0>
 2d4:	00000000 	nop
 2d8:	3c010000 	lui	at,0x0
 2dc:	c4260000 	lwc1	$f6,0(at)
 2e0:	44928000 	mtc1	s2,$f16
 2e4:	3c010000 	lui	at,0x0
 2e8:	4606003c 	c.lt.s	$f0,$f6
 2ec:	468080a0 	cvt.s.w	$f2,$f16
 2f0:	45000003 	bc1f	300 <func_80898920+0x280>
 2f4:	00000000 	nop
 2f8:	10000009 	b	320 <func_80898920+0x2a0>
 2fc:	24110060 	li	s1,96
 300:	c4280000 	lwc1	$f8,0(at)
 304:	24110020 	li	s1,32
 308:	4608003c 	c.lt.s	$f0,$f8
 30c:	00000000 	nop
 310:	45000003 	bc1f	320 <func_80898920+0x2a0>
 314:	00000000 	nop
 318:	10000001 	b	320 <func_80898920+0x2a0>
 31c:	24110040 	li	s1,64
 320:	3c01408c 	lui	at,0x408c
 324:	44812000 	mtc1	at,$f4
 328:	3c014178 	lui	at,0x4178
 32c:	c66a0024 	lwc1	$f10,36(s3)
 330:	46022182 	mul.s	$f6,$f4,$f2
 334:	44812000 	mtc1	at,$f4
 338:	e7aa00d4 	swc1	$f10,212(sp)
 33c:	c6720028 	lwc1	$f18,40(s3)
 340:	3c010000 	lui	at,0x0
 344:	46041001 	sub.s	$f0,$f2,$f4
 348:	461e3200 	add.s	$f8,$f6,$f30
 34c:	c4260000 	lwc1	$f6,0(at)
 350:	3c013f00 	lui	at,0x3f00
 354:	46000005 	abs.s	$f0,$f0
 358:	46089280 	add.s	$f10,$f18,$f8
 35c:	46060482 	mul.s	$f18,$f0,$f6
 360:	44814000 	mtc1	at,$f8
 364:	e7aa00d8 	swc1	$f10,216(sp)
 368:	c670002c 	lwc1	$f16,44(s3)
 36c:	46089580 	add.s	$f22,$f18,$f8
 370:	0c000000 	jal	0 <func_808988A0>
 374:	e7b000dc 	swc1	$f16,220(sp)
 378:	0c000000 	jal	0 <func_808988A0>
 37c:	46000506 	mov.s	$f20,$f0
 380:	461ca282 	mul.s	$f10,$f20,$f28
 384:	c7b000bc 	lwc1	$f16,188(sp)
 388:	46100102 	mul.s	$f4,$f0,$f16
 38c:	46185081 	sub.s	$f2,$f10,$f24
 390:	461a2182 	mul.s	$f6,$f4,$f26
 394:	46021200 	add.s	$f8,$f2,$f2
 398:	46163482 	mul.s	$f18,$f6,$f22
 39c:	46089280 	add.s	$f10,$f18,$f8
 3a0:	0c000000 	jal	0 <func_808988A0>
 3a4:	e7aa00c8 	swc1	$f10,200(sp)
 3a8:	461a0402 	mul.s	$f16,$f0,$f26
 3ac:	46188101 	sub.s	$f4,$f16,$f24
 3b0:	0c000000 	jal	0 <func_808988A0>
 3b4:	e7a400cc 	swc1	$f4,204(sp)
 3b8:	0c000000 	jal	0 <func_808988A0>
 3bc:	46000506 	mov.s	$f20,$f0
 3c0:	461ca182 	mul.s	$f6,$f20,$f28
 3c4:	c7b200c4 	lwc1	$f18,196(sp)
 3c8:	32420007 	andi	v0,s2,0x7
 3cc:	00021040 	sll	v0,v0,0x1
 3d0:	46120202 	mul.s	$f8,$f0,$f18
 3d4:	3c080000 	lui	t0,0x0
 3d8:	25080000 	addiu	t0,t0,0
 3dc:	3c180000 	lui	t8,0x0
 3e0:	3c0b0000 	lui	t3,0x0
 3e4:	46183081 	sub.s	$f2,$f6,$f24
 3e8:	01625821 	addu	t3,t3,v0
 3ec:	461a4282 	mul.s	$f10,$f8,$f26
 3f0:	0302c021 	addu	t8,t8,v0
 3f4:	46021100 	add.s	$f4,$f2,$f2
 3f8:	00488021 	addu	s0,v0,t0
 3fc:	86090000 	lh	t1,0(s0)
 400:	87180000 	lh	t8,0(t8)
 404:	856b0000 	lh	t3,0(t3)
 408:	46165402 	mul.s	$f16,$f10,$f22
 40c:	3c0e0600 	lui	t6,0x600
 410:	25ce0880 	addiu	t6,t6,2176
 414:	240ffea2 	li	t7,-350
 418:	24190004 	li	t9,4
 41c:	240a0005 	li	t2,5
 420:	240cffff 	li	t4,-1
 424:	46048180 	add.s	$f6,$f16,$f4
 428:	240d016c 	li	t5,364
 42c:	afad0038 	sw	t5,56(sp)
 430:	afac0034 	sw	t4,52(sp)
 434:	e7a600d0 	swc1	$f6,208(sp)
 438:	afaa002c 	sw	t2,44(sp)
 43c:	afb9001c 	sw	t9,28(sp)
 440:	afaf0010 	sw	t7,16(sp)
 444:	afae003c 	sw	t6,60(sp)
 448:	02a02025 	move	a0,s5
 44c:	02802825 	move	a1,s4
 450:	02c03025 	move	a2,s6
 454:	02803825 	move	a3,s4
 458:	afb10014 	sw	s1,20(sp)
 45c:	afa00020 	sw	zero,32(sp)
 460:	afa00028 	sw	zero,40(sp)
 464:	afa90024 	sw	t1,36(sp)
 468:	afb80018 	sw	t8,24(sp)
 46c:	0c000000 	jal	0 <func_808988A0>
 470:	afab0030 	sw	t3,48(sp)
 474:	0c000000 	jal	0 <func_808988A0>
 478:	00000000 	nop
 47c:	3c010000 	lui	at,0x0
 480:	c4320000 	lwc1	$f18,0(at)
 484:	02a02025 	move	a0,s5
 488:	02802825 	move	a1,s4
 48c:	4612003c 	c.lt.s	$f0,$f18
 490:	3c064348 	lui	a2,0x4348
 494:	24070001 	li	a3,1
 498:	4502000b 	bc1fl	4c8 <func_80898920+0x448>
 49c:	26520001 	addiu	s2,s2,1
 4a0:	86020000 	lh	v0,0(s0)
 4a4:	24190001 	li	t9,1
 4a8:	afb90018 	sw	t9,24(sp)
 4ac:	00021080 	sll	v0,v0,0x2
 4b0:	244f003c 	addiu	t7,v0,60
 4b4:	24580050 	addiu	t8,v0,80
 4b8:	afb80014 	sw	t8,20(sp)
 4bc:	0c000000 	jal	0 <func_808988A0>
 4c0:	afaf0010 	sw	t7,16(sp)
 4c4:	26520001 	addiu	s2,s2,1
 4c8:	24010020 	li	at,32
 4cc:	1641ff80 	bne	s2,at,2d0 <func_80898920+0x250>
 4d0:	00000000 	nop
 4d4:	8fbf0094 	lw	ra,148(sp)
 4d8:	d7b40048 	ldc1	$f20,72(sp)
 4dc:	d7b60050 	ldc1	$f22,80(sp)
 4e0:	d7b80058 	ldc1	$f24,88(sp)
 4e4:	d7ba0060 	ldc1	$f26,96(sp)
 4e8:	d7bc0068 	ldc1	$f28,104(sp)
 4ec:	d7be0070 	ldc1	$f30,112(sp)
 4f0:	8fb00078 	lw	s0,120(sp)
 4f4:	8fb1007c 	lw	s1,124(sp)
 4f8:	8fb20080 	lw	s2,128(sp)
 4fc:	8fb30084 	lw	s3,132(sp)
 500:	8fb40088 	lw	s4,136(sp)
 504:	8fb5008c 	lw	s5,140(sp)
 508:	8fb60090 	lw	s6,144(sp)
 50c:	03e00008 	jr	ra
 510:	27bd00f0 	addiu	sp,sp,240

00000514 <func_80898DB4>:
 514:	27bdff10 	addiu	sp,sp,-240
 518:	afbf0094 	sw	ra,148(sp)
 51c:	afb60090 	sw	s6,144(sp)
 520:	afb5008c 	sw	s5,140(sp)
 524:	afb40088 	sw	s4,136(sp)
 528:	afb30084 	sw	s3,132(sp)
 52c:	afb20080 	sw	s2,128(sp)
 530:	afb1007c 	sw	s1,124(sp)
 534:	afb00078 	sw	s0,120(sp)
 538:	f7be0070 	sdc1	$f30,112(sp)
 53c:	f7bc0068 	sdc1	$f28,104(sp)
 540:	f7ba0060 	sdc1	$f26,96(sp)
 544:	f7b80058 	sdc1	$f24,88(sp)
 548:	f7b60050 	sdc1	$f22,80(sp)
 54c:	f7b40048 	sdc1	$f20,72(sp)
 550:	80c702ff 	lb	a3,767(a2)
 554:	00c08025 	move	s0,a2
 558:	00809825 	move	s3,a0
 55c:	18e00004 	blez	a3,570 <func_80898DB4+0x5c>
 560:	00a0b025 	move	s6,a1
 564:	28e10004 	slti	at,a3,4
 568:	14200009 	bnez	at,590 <func_80898DB4+0x7c>
 56c:	3c040000 	lui	a0,0x0
 570:	3c040000 	lui	a0,0x0
 574:	3c050000 	lui	a1,0x0
 578:	24a50000 	addiu	a1,a1,0
 57c:	24840000 	addiu	a0,a0,0
 580:	0c000000 	jal	0 <func_808988A0>
 584:	2406016a 	li	a2,362
 588:	100000e6 	b	924 <func_80898DB4+0x410>
 58c:	8fbf0094 	lw	ra,148(sp)
 590:	24840000 	addiu	a0,a0,0
 594:	0c000000 	jal	0 <func_808988A0>
 598:	00e02825 	move	a1,a3
 59c:	02602025 	move	a0,s3
 5a0:	0c000000 	jal	0 <func_808988A0>
 5a4:	02002825 	move	a1,s0
 5a8:	820e02ff 	lb	t6,767(s0)
 5ac:	3c0140c0 	lui	at,0x40c0
 5b0:	3c180000 	lui	t8,0x0
 5b4:	4481e000 	mtc1	at,$f28
 5b8:	000e7840 	sll	t7,t6,0x1
 5bc:	030fc021 	addu	t8,t8,t7
 5c0:	3c014100 	lui	at,0x4100
 5c4:	87180000 	lh	t8,0(t8)
 5c8:	4481d000 	mtc1	at,$f26
 5cc:	3c0142a0 	lui	at,0x42a0
 5d0:	4481c000 	mtc1	at,$f24
 5d4:	3c014120 	lui	at,0x4120
 5d8:	0302a821 	addu	s5,t8,v0
 5dc:	0015ac00 	sll	s5,s5,0x10
 5e0:	4481b000 	mtc1	at,$f22
 5e4:	0015ac03 	sra	s5,s5,0x10
 5e8:	00008825 	move	s1,zero
 5ec:	26d21c24 	addiu	s2,s6,7204
 5f0:	24140008 	li	s4,8
 5f4:	0c000000 	jal	0 <func_808988A0>
 5f8:	00000000 	nop
 5fc:	0c000000 	jal	0 <func_808988A0>
 600:	46000506 	mov.s	$f20,$f0
 604:	4618a102 	mul.s	$f4,$f20,$f24
 608:	c6660028 	lwc1	$f6,40(s3)
 60c:	3c014680 	lui	at,0x4680
 610:	44819000 	mtc1	at,$f18
 614:	8e670024 	lw	a3,36(s3)
 618:	02402025 	move	a0,s2
 61c:	02c02825 	move	a1,s6
 620:	46062200 	add.s	$f8,$f4,$f6
 624:	46120102 	mul.s	$f4,$f0,$f18
 628:	2406018f 	li	a2,399
 62c:	46164280 	add.s	$f10,$f8,$f22
 630:	4600218d 	trunc.w.s	$f6,$f4
 634:	e7aa0010 	swc1	$f10,16(sp)
 638:	c670002c 	lwc1	$f16,44(s3)
 63c:	afa00024 	sw	zero,36(sp)
 640:	44083000 	mfc1	t0,$f6
 644:	afa00020 	sw	zero,32(sp)
 648:	afa00018 	sw	zero,24(sp)
 64c:	00084c00 	sll	t1,t0,0x10
 650:	00095403 	sra	t2,t1,0x10
 654:	01555821 	addu	t3,t2,s5
 658:	256ce000 	addiu	t4,t3,-8192
 65c:	afac001c 	sw	t4,28(sp)
 660:	0c000000 	jal	0 <func_808988A0>
 664:	e7b00014 	swc1	$f16,20(sp)
 668:	1040000d 	beqz	v0,6a0 <func_80898DB4+0x18c>
 66c:	00408025 	move	s0,v0
 670:	0c000000 	jal	0 <func_808988A0>
 674:	00000000 	nop
 678:	461a0202 	mul.s	$f8,$f0,$f26
 67c:	3c014110 	lui	at,0x4110
 680:	44815000 	mtc1	at,$f10
 684:	00000000 	nop
 688:	460a4400 	add.s	$f16,$f8,$f10
 68c:	0c000000 	jal	0 <func_808988A0>
 690:	e6100068 	swc1	$f16,104(s0)
 694:	46160482 	mul.s	$f18,$f0,$f22
 698:	461c9100 	add.s	$f4,$f18,$f28
 69c:	e6040060 	swc1	$f4,96(s0)
 6a0:	26310001 	addiu	s1,s1,1
 6a4:	1634ffd3 	bne	s1,s4,5f4 <func_80898DB4+0xe0>
 6a8:	00000000 	nop
 6ac:	00152400 	sll	a0,s5,0x10
 6b0:	0c000000 	jal	0 <func_808988A0>
 6b4:	00042403 	sra	a0,a0,0x10
 6b8:	00152400 	sll	a0,s5,0x10
 6bc:	e7a000bc 	swc1	$f0,188(sp)
 6c0:	0c000000 	jal	0 <func_808988A0>
 6c4:	00042403 	sra	a0,a0,0x10
 6c8:	3c014220 	lui	at,0x4220
 6cc:	4481f000 	mtc1	at,$f30
 6d0:	3c014040 	lui	at,0x4040
 6d4:	4481c000 	mtc1	at,$f24
 6d8:	e7a000c4 	swc1	$f0,196(sp)
 6dc:	00009025 	move	s2,zero
 6e0:	27b500c8 	addiu	s5,sp,200
 6e4:	27b400d4 	addiu	s4,sp,212
 6e8:	0c000000 	jal	0 <func_808988A0>
 6ec:	00000000 	nop
 6f0:	3c010000 	lui	at,0x0
 6f4:	c4260000 	lwc1	$f6,0(at)
 6f8:	3c010000 	lui	at,0x0
 6fc:	4606003c 	c.lt.s	$f0,$f6
 700:	00000000 	nop
 704:	45000003 	bc1f	714 <func_80898DB4+0x200>
 708:	00000000 	nop
 70c:	10000009 	b	734 <func_80898DB4+0x220>
 710:	24110060 	li	s1,96
 714:	c4280000 	lwc1	$f8,0(at)
 718:	24110020 	li	s1,32
 71c:	4608003c 	c.lt.s	$f0,$f8
 720:	00000000 	nop
 724:	45000003 	bc1f	734 <func_80898DB4+0x220>
 728:	00000000 	nop
 72c:	10000001 	b	734 <func_80898DB4+0x220>
 730:	24110040 	li	s1,64
 734:	0c000000 	jal	0 <func_808988A0>
 738:	00000000 	nop
 73c:	461e0282 	mul.s	$f10,$f0,$f30
 740:	3c0141a0 	lui	at,0x41a0
 744:	44818000 	mtc1	at,$f16
 748:	44924000 	mtc1	s2,$f8
 74c:	c6640024 	lwc1	$f4,36(s3)
 750:	3c014070 	lui	at,0x4070
 754:	46804520 	cvt.s.w	$f20,$f8
 758:	46105481 	sub.s	$f18,$f10,$f16
 75c:	44818000 	mtc1	at,$f16
 760:	46049180 	add.s	$f6,$f18,$f4
 764:	46148482 	mul.s	$f18,$f16,$f20
 768:	e7a600d4 	swc1	$f6,212(sp)
 76c:	c66a0028 	lwc1	$f10,40(s3)
 770:	46125100 	add.s	$f4,$f10,$f18
 774:	0c000000 	jal	0 <func_808988A0>
 778:	e7a400d8 	swc1	$f4,216(sp)
 77c:	3c0141a0 	lui	at,0x41a0
 780:	461e0182 	mul.s	$f6,$f0,$f30
 784:	44814000 	mtc1	at,$f8
 788:	3c014178 	lui	at,0x4178
 78c:	44812000 	mtc1	at,$f4
 790:	3c010000 	lui	at,0x0
 794:	c66a002c 	lwc1	$f10,44(s3)
 798:	4604a001 	sub.s	$f0,$f20,$f4
 79c:	46083401 	sub.s	$f16,$f6,$f8
 7a0:	c4260000 	lwc1	$f6,0(at)
 7a4:	3c013f00 	lui	at,0x3f00
 7a8:	46000005 	abs.s	$f0,$f0
 7ac:	460a8480 	add.s	$f18,$f16,$f10
 7b0:	46060202 	mul.s	$f8,$f0,$f6
 7b4:	44818000 	mtc1	at,$f16
 7b8:	e7b200dc 	swc1	$f18,220(sp)
 7bc:	0c000000 	jal	0 <func_808988A0>
 7c0:	46104580 	add.s	$f22,$f8,$f16
 7c4:	0c000000 	jal	0 <func_808988A0>
 7c8:	46000506 	mov.s	$f20,$f0
 7cc:	461ca282 	mul.s	$f10,$f20,$f28
 7d0:	c7b200bc 	lwc1	$f18,188(sp)
 7d4:	46120102 	mul.s	$f4,$f0,$f18
 7d8:	46185081 	sub.s	$f2,$f10,$f24
 7dc:	461a2182 	mul.s	$f6,$f4,$f26
 7e0:	46021400 	add.s	$f16,$f2,$f2
 7e4:	46163202 	mul.s	$f8,$f6,$f22
 7e8:	46104280 	add.s	$f10,$f8,$f16
 7ec:	0c000000 	jal	0 <func_808988A0>
 7f0:	e7aa00c8 	swc1	$f10,200(sp)
 7f4:	461a0482 	mul.s	$f18,$f0,$f26
 7f8:	46189101 	sub.s	$f4,$f18,$f24
 7fc:	0c000000 	jal	0 <func_808988A0>
 800:	e7a400cc 	swc1	$f4,204(sp)
 804:	0c000000 	jal	0 <func_808988A0>
 808:	46000506 	mov.s	$f20,$f0
 80c:	461ca182 	mul.s	$f6,$f20,$f28
 810:	c7a800c4 	lwc1	$f8,196(sp)
 814:	32420007 	andi	v0,s2,0x7
 818:	00021040 	sll	v0,v0,0x1
 81c:	46080402 	mul.s	$f16,$f0,$f8
 820:	3c180000 	lui	t8,0x0
 824:	27180000 	addiu	t8,t8,0
 828:	3c0e0000 	lui	t6,0x0
 82c:	3c090000 	lui	t1,0x0
 830:	46183081 	sub.s	$f2,$f6,$f24
 834:	01224821 	addu	t1,t1,v0
 838:	461a8282 	mul.s	$f10,$f16,$f26
 83c:	01c27021 	addu	t6,t6,v0
 840:	46021100 	add.s	$f4,$f2,$f2
 844:	00588021 	addu	s0,v0,t8
 848:	86190000 	lh	t9,0(s0)
 84c:	85ce0000 	lh	t6,0(t6)
 850:	85290000 	lh	t1,0(t1)
 854:	46165482 	mul.s	$f18,$f10,$f22
 858:	3c0c0600 	lui	t4,0x600
 85c:	258c0880 	addiu	t4,t4,2176
 860:	240dfea2 	li	t5,-350
 864:	240f0004 	li	t7,4
 868:	24080005 	li	t0,5
 86c:	240affff 	li	t2,-1
 870:	46049180 	add.s	$f6,$f18,$f4
 874:	240b016c 	li	t3,364
 878:	afab0038 	sw	t3,56(sp)
 87c:	afaa0034 	sw	t2,52(sp)
 880:	e7a600d0 	swc1	$f6,208(sp)
 884:	afa8002c 	sw	t0,44(sp)
 888:	afaf001c 	sw	t7,28(sp)
 88c:	afad0010 	sw	t5,16(sp)
 890:	afac003c 	sw	t4,60(sp)
 894:	02c02025 	move	a0,s6
 898:	02802825 	move	a1,s4
 89c:	02a03025 	move	a2,s5
 8a0:	02803825 	move	a3,s4
 8a4:	afb10014 	sw	s1,20(sp)
 8a8:	afa00020 	sw	zero,32(sp)
 8ac:	afa00028 	sw	zero,40(sp)
 8b0:	afb90024 	sw	t9,36(sp)
 8b4:	afae0018 	sw	t6,24(sp)
 8b8:	0c000000 	jal	0 <func_808988A0>
 8bc:	afa90030 	sw	t1,48(sp)
 8c0:	0c000000 	jal	0 <func_808988A0>
 8c4:	00000000 	nop
 8c8:	3c010000 	lui	at,0x0
 8cc:	c4280000 	lwc1	$f8,0(at)
 8d0:	02c02025 	move	a0,s6
 8d4:	02802825 	move	a1,s4
 8d8:	4608003c 	c.lt.s	$f0,$f8
 8dc:	3c064348 	lui	a2,0x4348
 8e0:	24070001 	li	a3,1
 8e4:	4502000b 	bc1fl	914 <func_80898DB4+0x400>
 8e8:	26520001 	addiu	s2,s2,1
 8ec:	86020000 	lh	v0,0(s0)
 8f0:	240f0001 	li	t7,1
 8f4:	afaf0018 	sw	t7,24(sp)
 8f8:	00021080 	sll	v0,v0,0x2
 8fc:	244d003c 	addiu	t5,v0,60
 900:	244e0050 	addiu	t6,v0,80
 904:	afae0014 	sw	t6,20(sp)
 908:	0c000000 	jal	0 <func_808988A0>
 90c:	afad0010 	sw	t5,16(sp)
 910:	26520001 	addiu	s2,s2,1
 914:	24010020 	li	at,32
 918:	1641ff73 	bne	s2,at,6e8 <func_80898DB4+0x1d4>
 91c:	00000000 	nop
 920:	8fbf0094 	lw	ra,148(sp)
 924:	d7b40048 	ldc1	$f20,72(sp)
 928:	d7b60050 	ldc1	$f22,80(sp)
 92c:	d7b80058 	ldc1	$f24,88(sp)
 930:	d7ba0060 	ldc1	$f26,96(sp)
 934:	d7bc0068 	ldc1	$f28,104(sp)
 938:	d7be0070 	ldc1	$f30,112(sp)
 93c:	8fb00078 	lw	s0,120(sp)
 940:	8fb1007c 	lw	s1,124(sp)
 944:	8fb20080 	lw	s2,128(sp)
 948:	8fb30084 	lw	s3,132(sp)
 94c:	8fb40088 	lw	s4,136(sp)
 950:	8fb5008c 	lw	s5,140(sp)
 954:	8fb60090 	lw	s6,144(sp)
 958:	03e00008 	jr	ra
 95c:	27bd00f0 	addiu	sp,sp,240

00000960 <BgJyaIronobj_Init>:
 960:	27bdffd0 	addiu	sp,sp,-48
 964:	afbf001c 	sw	ra,28(sp)
 968:	afb00018 	sw	s0,24(sp)
 96c:	afa50034 	sw	a1,52(sp)
 970:	00808025 	move	s0,a0
 974:	afa00024 	sw	zero,36(sp)
 978:	0c000000 	jal	0 <func_808988A0>
 97c:	00002825 	move	a1,zero
 980:	3c050000 	lui	a1,0x0
 984:	24a50000 	addiu	a1,a1,0
 988:	0c000000 	jal	0 <func_808988A0>
 98c:	02002025 	move	a0,s0
 990:	02002025 	move	a0,s0
 994:	0c000000 	jal	0 <func_808988A0>
 998:	8fa50034 	lw	a1,52(sp)
 99c:	860e001c 	lh	t6,28(s0)
 9a0:	3c040000 	lui	a0,0x0
 9a4:	27a50024 	addiu	a1,sp,36
 9a8:	31cf0001 	andi	t7,t6,0x1
 9ac:	000fc080 	sll	t8,t7,0x2
 9b0:	00982021 	addu	a0,a0,t8
 9b4:	0c000000 	jal	0 <func_808988A0>
 9b8:	8c840000 	lw	a0,0(a0)
 9bc:	8fa40034 	lw	a0,52(sp)
 9c0:	02003025 	move	a2,s0
 9c4:	8fa70024 	lw	a3,36(sp)
 9c8:	0c000000 	jal	0 <func_808988A0>
 9cc:	24850810 	addiu	a1,a0,2064
 9d0:	ae02014c 	sw	v0,332(s0)
 9d4:	0c000000 	jal	0 <func_808988A0>
 9d8:	02002025 	move	a0,s0
 9dc:	8fbf001c 	lw	ra,28(sp)
 9e0:	8fb00018 	lw	s0,24(sp)
 9e4:	27bd0030 	addiu	sp,sp,48
 9e8:	03e00008 	jr	ra
 9ec:	00000000 	nop

000009f0 <BgJyaIronobj_Destroy>:
 9f0:	27bdffe8 	addiu	sp,sp,-24
 9f4:	afa40018 	sw	a0,24(sp)
 9f8:	00a03825 	move	a3,a1
 9fc:	00a02025 	move	a0,a1
 a00:	8fa50018 	lw	a1,24(sp)
 a04:	afbf0014 	sw	ra,20(sp)
 a08:	afa7001c 	sw	a3,28(sp)
 a0c:	0c000000 	jal	0 <func_808988A0>
 a10:	24a50168 	addiu	a1,a1,360
 a14:	8fa4001c 	lw	a0,28(sp)
 a18:	8fae0018 	lw	t6,24(sp)
 a1c:	24850810 	addiu	a1,a0,2064
 a20:	0c000000 	jal	0 <func_808988A0>
 a24:	8dc6014c 	lw	a2,332(t6)
 a28:	8fbf0014 	lw	ra,20(sp)
 a2c:	27bd0018 	addiu	sp,sp,24
 a30:	03e00008 	jr	ra
 a34:	00000000 	nop

00000a38 <func_808992D8>:
 a38:	3c0e0000 	lui	t6,0x0
 a3c:	25ce0000 	addiu	t6,t6,0
 a40:	03e00008 	jr	ra
 a44:	ac8e0164 	sw	t6,356(a0)

00000a48 <func_808992E8>:
 a48:	27bdffb0 	addiu	sp,sp,-80
 a4c:	afbf0034 	sw	ra,52(sp)
 a50:	afb40030 	sw	s4,48(sp)
 a54:	afb3002c 	sw	s3,44(sp)
 a58:	afb20028 	sw	s2,40(sp)
 a5c:	afb10024 	sw	s1,36(sp)
 a60:	afb00020 	sw	s0,32(sp)
 a64:	f7b40018 	sdc1	$f20,24(sp)
 a68:	90820179 	lbu	v0,377(a0)
 a6c:	00a09825 	move	s3,a1
 a70:	0080a025 	move	s4,a0
 a74:	304e0002 	andi	t6,v0,0x2
 a78:	11c00033 	beqz	t6,b48 <func_808992E8+0x100>
 a7c:	3c010001 	lui	at,0x1
 a80:	8c860170 	lw	a2,368(a0)
 a84:	304ffffd 	andi	t7,v0,0xfffd
 a88:	a08f0179 	sb	t7,377(a0)
 a8c:	50c00034 	beqzl	a2,b60 <func_808992E8+0x118>
 a90:	8fbf0034 	lw	ra,52(sp)
 a94:	84d80000 	lh	t8,0(a2)
 a98:	24010113 	li	at,275
 a9c:	57010030 	bnel	t8,at,b60 <func_808992E8+0x118>
 aa0:	8fbf0034 	lw	ra,52(sp)
 aa4:	8699001c 	lh	t9,28(s4)
 aa8:	33280001 	andi	t0,t9,0x1
 aac:	00084880 	sll	t1,t0,0x2
 ab0:	3c190000 	lui	t9,0x0
 ab4:	0329c821 	addu	t9,t9,t1
 ab8:	8f390000 	lw	t9,0(t9)
 abc:	0320f809 	jalr	t9
 ac0:	00000000 	nop
 ac4:	02602025 	move	a0,s3
 ac8:	26850024 	addiu	a1,s4,36
 acc:	24060050 	li	a2,80
 ad0:	0c000000 	jal	0 <func_808988A0>
 ad4:	240739ad 	li	a3,14765
 ad8:	c6840024 	lwc1	$f4,36(s4)
 adc:	3c0141a0 	lui	at,0x41a0
 ae0:	44814000 	mtc1	at,$f8
 ae4:	e7a40040 	swc1	$f4,64(sp)
 ae8:	c6860028 	lwc1	$f6,40(s4)
 aec:	3c014190 	lui	at,0x4190
 af0:	4481a000 	mtc1	at,$f20
 af4:	46083280 	add.s	$f10,$f6,$f8
 af8:	00008025 	move	s0,zero
 afc:	24120003 	li	s2,3
 b00:	27b10040 	addiu	s1,sp,64
 b04:	e7aa0044 	swc1	$f10,68(sp)
 b08:	c690002c 	lwc1	$f16,44(s4)
 b0c:	e7b00048 	swc1	$f16,72(sp)
 b10:	00123400 	sll	a2,s2,0x10
 b14:	00063403 	sra	a2,a2,0x10
 b18:	02602025 	move	a0,s3
 b1c:	0c000000 	jal	0 <func_808988A0>
 b20:	02202825 	move	a1,s1
 b24:	c7b20044 	lwc1	$f18,68(sp)
 b28:	26100001 	addiu	s0,s0,1
 b2c:	46149100 	add.s	$f4,$f18,$f20
 b30:	1612fff7 	bne	s0,s2,b10 <func_808992E8+0xc8>
 b34:	e7a40044 	swc1	$f4,68(sp)
 b38:	0c000000 	jal	0 <func_808988A0>
 b3c:	02802025 	move	a0,s4
 b40:	10000007 	b	b60 <func_808992E8+0x118>
 b44:	8fbf0034 	lw	ra,52(sp)
 b48:	34211e60 	ori	at,at,0x1e60
 b4c:	02612821 	addu	a1,s3,at
 b50:	02602025 	move	a0,s3
 b54:	0c000000 	jal	0 <func_808988A0>
 b58:	26860168 	addiu	a2,s4,360
 b5c:	8fbf0034 	lw	ra,52(sp)
 b60:	d7b40018 	ldc1	$f20,24(sp)
 b64:	8fb00020 	lw	s0,32(sp)
 b68:	8fb10024 	lw	s1,36(sp)
 b6c:	8fb20028 	lw	s2,40(sp)
 b70:	8fb3002c 	lw	s3,44(sp)
 b74:	8fb40030 	lw	s4,48(sp)
 b78:	03e00008 	jr	ra
 b7c:	27bd0050 	addiu	sp,sp,80

00000b80 <BgJyaIronobj_Update>:
 b80:	27bdffe8 	addiu	sp,sp,-24
 b84:	afbf0014 	sw	ra,20(sp)
 b88:	8c990164 	lw	t9,356(a0)
 b8c:	0320f809 	jalr	t9
 b90:	00000000 	nop
 b94:	8fbf0014 	lw	ra,20(sp)
 b98:	27bd0018 	addiu	sp,sp,24
 b9c:	03e00008 	jr	ra
 ba0:	00000000 	nop

00000ba4 <BgJyaIronobj_Draw>:
 ba4:	27bdffe8 	addiu	sp,sp,-24
 ba8:	afbf0014 	sw	ra,20(sp)
 bac:	00803825 	move	a3,a0
 bb0:	84ee001c 	lh	t6,28(a3)
 bb4:	00a02025 	move	a0,a1
 bb8:	3c050000 	lui	a1,0x0
 bbc:	31cf0001 	andi	t7,t6,0x1
 bc0:	000fc080 	sll	t8,t7,0x2
 bc4:	00b82821 	addu	a1,a1,t8
 bc8:	0c000000 	jal	0 <func_808988A0>
 bcc:	8ca50000 	lw	a1,0(a1)
 bd0:	8fbf0014 	lw	ra,20(sp)
 bd4:	27bd0018 	addiu	sp,sp,24
 bd8:	03e00008 	jr	ra
 bdc:	00000000 	nop
