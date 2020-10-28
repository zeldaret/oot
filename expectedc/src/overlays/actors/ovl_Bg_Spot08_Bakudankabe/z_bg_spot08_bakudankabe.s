
build/src/overlays/actors/ovl_Bg_Spot08_Bakudankabe/z_bg_spot08_bakudankabe.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808B02D0>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	00803025 	move	a2,a0
   8:	afa5002c 	sw	a1,44(sp)
   c:	00a02025 	move	a0,a1
  10:	afbf001c 	sw	ra,28(sp)
  14:	24c50164 	addiu	a1,a2,356
  18:	afa50020 	sw	a1,32(sp)
  1c:	0c000000 	jal	0 <func_808B02D0>
  20:	afa60028 	sw	a2,40(sp)
  24:	8fa60028 	lw	a2,40(sp)
  28:	3c070000 	lui	a3,0x0
  2c:	8fa50020 	lw	a1,32(sp)
  30:	24ce0184 	addiu	t6,a2,388
  34:	afae0010 	sw	t6,16(sp)
  38:	24e7008c 	addiu	a3,a3,140
  3c:	0c000000 	jal	0 <func_808B02D0>
  40:	8fa4002c 	lw	a0,44(sp)
  44:	8fbf001c 	lw	ra,28(sp)
  48:	27bd0028 	addiu	sp,sp,40
  4c:	03e00008 	jr	ra
  50:	00000000 	nop

00000054 <func_808B0324>:
  54:	27bdff28 	addiu	sp,sp,-216
  58:	afb10078 	sw	s1,120(sp)
  5c:	00808825 	move	s1,a0
  60:	afbf0094 	sw	ra,148(sp)
  64:	afb70090 	sw	s7,144(sp)
  68:	afb6008c 	sw	s6,140(sp)
  6c:	afb50088 	sw	s5,136(sp)
  70:	afb40084 	sw	s4,132(sp)
  74:	afb30080 	sw	s3,128(sp)
  78:	afb2007c 	sw	s2,124(sp)
  7c:	afb00074 	sw	s0,116(sp)
  80:	f7be0068 	sdc1	$f30,104(sp)
  84:	f7bc0060 	sdc1	$f28,96(sp)
  88:	f7ba0058 	sdc1	$f26,88(sp)
  8c:	f7b80050 	sdc1	$f24,80(sp)
  90:	f7b60048 	sdc1	$f22,72(sp)
  94:	f7b40040 	sdc1	$f20,64(sp)
  98:	00a0a825 	move	s5,a1
  9c:	0c000000 	jal	0 <func_808B02D0>
  a0:	848400b6 	lh	a0,182(a0)
  a4:	46000586 	mov.s	$f22,$f0
  a8:	0c000000 	jal	0 <func_808B02D0>
  ac:	862400b6 	lh	a0,182(s1)
  b0:	3c0143dc 	lui	at,0x43dc
  b4:	4481f000 	mtc1	at,$f30
  b8:	44801000 	mtc1	zero,$f2
  bc:	3c0141a0 	lui	at,0x41a0
  c0:	4481e000 	mtc1	at,$f28
  c4:	3c013f00 	lui	at,0x3f00
  c8:	3c170000 	lui	s7,0x0
  cc:	4481d000 	mtc1	at,$f26
  d0:	46000606 	mov.s	$f24,$f0
  d4:	26f70000 	addiu	s7,s7,0
  d8:	00009025 	move	s2,zero
  dc:	27b600b4 	addiu	s6,sp,180
  e0:	27b400c0 	addiu	s4,sp,192
  e4:	e7a200bc 	swc1	$f2,188(sp)
  e8:	e7a200b4 	swc1	$f2,180(sp)
  ec:	0c000000 	jal	0 <func_808B02D0>
  f0:	00000000 	nop
  f4:	461a0101 	sub.s	$f4,$f0,$f26
  f8:	461e2502 	mul.s	$f20,$f4,$f30
  fc:	0c000000 	jal	0 <func_808B02D0>
 100:	00000000 	nop
 104:	461a0181 	sub.s	$f6,$f0,$f26
 108:	c6280024 	lwc1	$f8,36(s1)
 10c:	3c010000 	lui	at,0x0
 110:	461c3082 	mul.s	$f2,$f6,$f28
 114:	44923000 	mtc1	s2,$f6
 118:	46161282 	mul.s	$f10,$f2,$f22
 11c:	460a4400 	add.s	$f16,$f8,$f10
 120:	4618a482 	mul.s	$f18,$f20,$f24
 124:	c42a0000 	lwc1	$f10,0(at)
 128:	46803220 	cvt.s.w	$f8,$f6
 12c:	46128100 	add.s	$f4,$f16,$f18
 130:	460a4402 	mul.s	$f16,$f8,$f10
 134:	e7a400c0 	swc1	$f4,192(sp)
 138:	c6320028 	lwc1	$f18,40(s1)
 13c:	46181282 	mul.s	$f10,$f2,$f24
 140:	461c9100 	add.s	$f4,$f18,$f28
 144:	46102180 	add.s	$f6,$f4,$f16
 148:	4616a102 	mul.s	$f4,$f20,$f22
 14c:	e7a600c4 	swc1	$f6,196(sp)
 150:	c628002c 	lwc1	$f8,44(s1)
 154:	460a4480 	add.s	$f18,$f8,$f10
 158:	46049401 	sub.s	$f16,$f18,$f4
 15c:	0c000000 	jal	0 <func_808B02D0>
 160:	e7b000c8 	swc1	$f16,200(sp)
 164:	3c010000 	lui	at,0x0
 168:	c4260004 	lwc1	$f6,4(at)
 16c:	3c014140 	lui	at,0x4140
 170:	44815000 	mtc1	at,$f10
 174:	46060201 	sub.s	$f8,$f0,$f6
 178:	460a4482 	mul.s	$f18,$f8,$f10
 17c:	0c000000 	jal	0 <func_808B02D0>
 180:	e7b200b8 	swc1	$f18,184(sp)
 184:	3c014296 	lui	at,0x4296
 188:	44812000 	mtc1	at,$f4
 18c:	3c014120 	lui	at,0x4120
 190:	44813000 	mtc1	at,$f6
 194:	46040402 	mul.s	$f16,$f0,$f4
 198:	46068200 	add.s	$f8,$f16,$f6
 19c:	4600428d 	trunc.w.s	$f10,$f8
 1a0:	44025000 	mfc1	v0,$f10
 1a4:	00000000 	nop
 1a8:	00021c00 	sll	v1,v0,0x10
 1ac:	00031c03 	sra	v1,v1,0x10
 1b0:	28610019 	slti	at,v1,25
 1b4:	00029c00 	sll	s3,v0,0x10
 1b8:	10200003 	beqz	at,1c8 <func_808B0324+0x174>
 1bc:	00139c03 	sra	s3,s3,0x10
 1c0:	10000006 	b	1dc <func_808B0324+0x188>
 1c4:	2410fed4 	li	s0,-300
 1c8:	28610032 	slti	at,v1,50
 1cc:	10200003 	beqz	at,1dc <func_808B0324+0x188>
 1d0:	2410fe5c 	li	s0,-420
 1d4:	10000001 	b	1dc <func_808B0324+0x188>
 1d8:	2410fe98 	li	s0,-360
 1dc:	0c000000 	jal	0 <func_808B02D0>
 1e0:	00000000 	nop
 1e4:	3c010000 	lui	at,0x0
 1e8:	c4320008 	lwc1	$f18,8(at)
 1ec:	02a02025 	move	a0,s5
 1f0:	02802825 	move	a1,s4
 1f4:	4612003c 	c.lt.s	$f0,$f18
 1f8:	02c03025 	move	a2,s6
 1fc:	02803825 	move	a3,s4
 200:	240f001e 	li	t7,30
 204:	45000003 	bc1f	214 <func_808B0324+0x1c0>
 208:	24180004 	li	t8,4
 20c:	10000002 	b	218 <func_808B0324+0x1c4>
 210:	24020041 	li	v0,65
 214:	24020021 	li	v0,33
 218:	24190001 	li	t9,1
 21c:	24080003 	li	t0,3
 220:	24090050 	li	t1,80
 224:	240affff 	li	t2,-1
 228:	240b0002 	li	t3,2
 22c:	afab0038 	sw	t3,56(sp)
 230:	afaa0034 	sw	t2,52(sp)
 234:	afa90030 	sw	t1,48(sp)
 238:	afa8002c 	sw	t0,44(sp)
 23c:	afb90028 	sw	t9,40(sp)
 240:	afb00010 	sw	s0,16(sp)
 244:	afa20014 	sw	v0,20(sp)
 248:	afaf0018 	sw	t7,24(sp)
 24c:	afb8001c 	sw	t8,28(sp)
 250:	afa00020 	sw	zero,32(sp)
 254:	afb30024 	sw	s3,36(sp)
 258:	0c000000 	jal	0 <func_808B02D0>
 25c:	afb7003c 	sw	s7,60(sp)
 260:	26520001 	addiu	s2,s2,1
 264:	2a410018 	slti	at,s2,24
 268:	1420ffa0 	bnez	at,ec <func_808B0324+0x98>
 26c:	00000000 	nop
 270:	3c0142f0 	lui	at,0x42f0
 274:	3c100000 	lui	s0,0x0
 278:	3c120000 	lui	s2,0x0
 27c:	4481a000 	mtc1	at,$f20
 280:	26520024 	addiu	s2,s2,36
 284:	26100000 	addiu	s0,s0,0
 288:	c6020008 	lwc1	$f2,8(s0)
 28c:	c6000000 	lwc1	$f0,0(s0)
 290:	c6240024 	lwc1	$f4,36(s1)
 294:	46161402 	mul.s	$f16,$f2,$f22
 298:	c6120004 	lwc1	$f18,4(s0)
 29c:	4406a000 	mfc1	a2,$f20
 2a0:	46180202 	mul.s	$f8,$f0,$f24
 2a4:	240c0078 	li	t4,120
 2a8:	240d00a0 	li	t5,160
 2ac:	240e0001 	li	t6,1
 2b0:	02a02025 	move	a0,s5
 2b4:	46102180 	add.s	$f6,$f4,$f16
 2b8:	02802825 	move	a1,s4
 2bc:	24070004 	li	a3,4
 2c0:	46064280 	add.s	$f10,$f8,$f6
 2c4:	46181182 	mul.s	$f6,$f2,$f24
 2c8:	e7aa00c0 	swc1	$f10,192(sp)
 2cc:	c6240028 	lwc1	$f4,40(s1)
 2d0:	46049400 	add.s	$f16,$f18,$f4
 2d4:	46160482 	mul.s	$f18,$f0,$f22
 2d8:	e7b000c4 	swc1	$f16,196(sp)
 2dc:	c628002c 	lwc1	$f8,44(s1)
 2e0:	afae0018 	sw	t6,24(sp)
 2e4:	afad0014 	sw	t5,20(sp)
 2e8:	46064280 	add.s	$f10,$f8,$f6
 2ec:	afac0010 	sw	t4,16(sp)
 2f0:	46125101 	sub.s	$f4,$f10,$f18
 2f4:	0c000000 	jal	0 <func_808B02D0>
 2f8:	e7a400c8 	swc1	$f4,200(sp)
 2fc:	2610000c 	addiu	s0,s0,12
 300:	5612ffe2 	bnel	s0,s2,28c <func_808B0324+0x238>
 304:	c6020008 	lwc1	$f2,8(s0)
 308:	8fbf0094 	lw	ra,148(sp)
 30c:	d7b40040 	ldc1	$f20,64(sp)
 310:	d7b60048 	ldc1	$f22,72(sp)
 314:	d7b80050 	ldc1	$f24,80(sp)
 318:	d7ba0058 	ldc1	$f26,88(sp)
 31c:	d7bc0060 	ldc1	$f28,96(sp)
 320:	d7be0068 	ldc1	$f30,104(sp)
 324:	8fb00074 	lw	s0,116(sp)
 328:	8fb10078 	lw	s1,120(sp)
 32c:	8fb2007c 	lw	s2,124(sp)
 330:	8fb30080 	lw	s3,128(sp)
 334:	8fb40084 	lw	s4,132(sp)
 338:	8fb50088 	lw	s5,136(sp)
 33c:	8fb6008c 	lw	s6,140(sp)
 340:	8fb70090 	lw	s7,144(sp)
 344:	03e00008 	jr	ra
 348:	27bd00d8 	addiu	sp,sp,216

0000034c <BgSpot08Bakudankabe_Init>:
 34c:	27bdffd0 	addiu	sp,sp,-48
 350:	afbf001c 	sw	ra,28(sp)
 354:	afb00018 	sw	s0,24(sp)
 358:	afa50034 	sw	a1,52(sp)
 35c:	00808025 	move	s0,a0
 360:	afa00024 	sw	zero,36(sp)
 364:	0c000000 	jal	0 <func_808B02D0>
 368:	00002825 	move	a1,zero
 36c:	8605001c 	lh	a1,28(s0)
 370:	8fa40034 	lw	a0,52(sp)
 374:	0c000000 	jal	0 <func_808B02D0>
 378:	30a5003f 	andi	a1,a1,0x3f
 37c:	10400005 	beqz	v0,394 <BgSpot08Bakudankabe_Init+0x48>
 380:	02002025 	move	a0,s0
 384:	0c000000 	jal	0 <func_808B02D0>
 388:	02002025 	move	a0,s0
 38c:	10000012 	b	3d8 <BgSpot08Bakudankabe_Init+0x8c>
 390:	8fbf001c 	lw	ra,28(sp)
 394:	0c000000 	jal	0 <func_808B02D0>
 398:	8fa50034 	lw	a1,52(sp)
 39c:	3c040000 	lui	a0,0x0
 3a0:	24840000 	addiu	a0,a0,0
 3a4:	0c000000 	jal	0 <func_808B02D0>
 3a8:	27a50024 	addiu	a1,sp,36
 3ac:	8fa40034 	lw	a0,52(sp)
 3b0:	02003025 	move	a2,s0
 3b4:	8fa70024 	lw	a3,36(sp)
 3b8:	0c000000 	jal	0 <func_808B02D0>
 3bc:	24850810 	addiu	a1,a0,2064
 3c0:	3c050000 	lui	a1,0x0
 3c4:	ae02014c 	sw	v0,332(s0)
 3c8:	24a500c0 	addiu	a1,a1,192
 3cc:	0c000000 	jal	0 <func_808B02D0>
 3d0:	02002025 	move	a0,s0
 3d4:	8fbf001c 	lw	ra,28(sp)
 3d8:	8fb00018 	lw	s0,24(sp)
 3dc:	27bd0030 	addiu	sp,sp,48
 3e0:	03e00008 	jr	ra
 3e4:	00000000 	nop

000003e8 <BgSpot08Bakudankabe_Destroy>:
 3e8:	27bdffe8 	addiu	sp,sp,-24
 3ec:	afa40018 	sw	a0,24(sp)
 3f0:	8fae0018 	lw	t6,24(sp)
 3f4:	afbf0014 	sw	ra,20(sp)
 3f8:	00a03825 	move	a3,a1
 3fc:	00a02025 	move	a0,a1
 400:	8dc6014c 	lw	a2,332(t6)
 404:	afa7001c 	sw	a3,28(sp)
 408:	0c000000 	jal	0 <func_808B02D0>
 40c:	24a50810 	addiu	a1,a1,2064
 410:	8fa50018 	lw	a1,24(sp)
 414:	8fa4001c 	lw	a0,28(sp)
 418:	0c000000 	jal	0 <func_808B02D0>
 41c:	24a50164 	addiu	a1,a1,356
 420:	8fbf0014 	lw	ra,20(sp)
 424:	27bd0018 	addiu	sp,sp,24
 428:	03e00008 	jr	ra
 42c:	00000000 	nop

00000430 <BgSpot08Bakudankabe_Update>:
 430:	27bdffe0 	addiu	sp,sp,-32
 434:	afbf001c 	sw	ra,28(sp)
 438:	afb10018 	sw	s1,24(sp)
 43c:	afb00014 	sw	s0,20(sp)
 440:	908e0175 	lbu	t6,373(a0)
 444:	00808025 	move	s0,a0
 448:	00a08825 	move	s1,a1
 44c:	31cf0002 	andi	t7,t6,0x2
 450:	11e00012 	beqz	t7,49c <BgSpot08Bakudankabe_Update+0x6c>
 454:	3c014448 	lui	at,0x4448
 458:	0c000000 	jal	0 <func_808B02D0>
 45c:	00000000 	nop
 460:	8605001c 	lh	a1,28(s0)
 464:	02202025 	move	a0,s1
 468:	0c000000 	jal	0 <func_808B02D0>
 46c:	30a5003f 	andi	a1,a1,0x3f
 470:	02202025 	move	a0,s1
 474:	26050024 	addiu	a1,s0,36
 478:	24060028 	li	a2,40
 47c:	0c000000 	jal	0 <func_808B02D0>
 480:	24072810 	li	a3,10256
 484:	0c000000 	jal	0 <func_808B02D0>
 488:	24044802 	li	a0,18434
 48c:	0c000000 	jal	0 <func_808B02D0>
 490:	02002025 	move	a0,s0
 494:	1000000d 	b	4cc <BgSpot08Bakudankabe_Update+0x9c>
 498:	8fbf001c 	lw	ra,28(sp)
 49c:	c6040090 	lwc1	$f4,144(s0)
 4a0:	44813000 	mtc1	at,$f6
 4a4:	3c010001 	lui	at,0x1
 4a8:	34211e60 	ori	at,at,0x1e60
 4ac:	4606203c 	c.lt.s	$f4,$f6
 4b0:	02212821 	addu	a1,s1,at
 4b4:	02202025 	move	a0,s1
 4b8:	45020004 	bc1fl	4cc <BgSpot08Bakudankabe_Update+0x9c>
 4bc:	8fbf001c 	lw	ra,28(sp)
 4c0:	0c000000 	jal	0 <func_808B02D0>
 4c4:	26060164 	addiu	a2,s0,356
 4c8:	8fbf001c 	lw	ra,28(sp)
 4cc:	8fb00014 	lw	s0,20(sp)
 4d0:	8fb10018 	lw	s1,24(sp)
 4d4:	03e00008 	jr	ra
 4d8:	27bd0020 	addiu	sp,sp,32

000004dc <BgSpot08Bakudankabe_Draw>:
 4dc:	27bdffe0 	addiu	sp,sp,-32
 4e0:	afa40020 	sw	a0,32(sp)
 4e4:	afa50024 	sw	a1,36(sp)
 4e8:	8fa50020 	lw	a1,32(sp)
 4ec:	afbf0014 	sw	ra,20(sp)
 4f0:	00002025 	move	a0,zero
 4f4:	24a50164 	addiu	a1,a1,356
 4f8:	0c000000 	jal	0 <func_808B02D0>
 4fc:	afa50018 	sw	a1,24(sp)
 500:	24040001 	li	a0,1
 504:	0c000000 	jal	0 <func_808B02D0>
 508:	8fa50018 	lw	a1,24(sp)
 50c:	24040002 	li	a0,2
 510:	0c000000 	jal	0 <func_808B02D0>
 514:	8fa50018 	lw	a1,24(sp)
 518:	3c050000 	lui	a1,0x0
 51c:	24a50000 	addiu	a1,a1,0
 520:	0c000000 	jal	0 <func_808B02D0>
 524:	8fa40024 	lw	a0,36(sp)
 528:	8fbf0014 	lw	ra,20(sp)
 52c:	27bd0020 	addiu	sp,sp,32
 530:	03e00008 	jr	ra
 534:	00000000 	nop
	...
