
build/src/overlays/actors/ovl_Oceff_Storm/z_oceff_storm.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <OceffStorm_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850154 	sw	a1,340(a0)

00000008 <OceffStorm_Init>:
   8:	27bdffc8 	addiu	sp,sp,-56
   c:	afa5003c 	sw	a1,60(sp)
  10:	afbf0034 	sw	ra,52(sp)
  14:	afb00030 	sw	s0,48(sp)
  18:	3c050000 	lui	a1,0x0
  1c:	00808025 	move	s0,a0
  20:	0c000000 	jal	0 <OceffStorm_SetupAction>
  24:	24a50000 	addiu	a1,a1,0
  28:	8fa5003c 	lw	a1,60(sp)
  2c:	44800000 	mtc1	zero,$f0
  30:	860f001c 	lh	t7,28(s0)
  34:	a6000152 	sh	zero,338(s0)
  38:	860e0152 	lh	t6,338(s0)
  3c:	24010001 	li	at,1
  40:	a600014c 	sh	zero,332(s0)
  44:	a200014e 	sb	zero,334(s0)
  48:	a200014f 	sb	zero,335(s0)
  4c:	e6000054 	swc1	$f0,84(s0)
  50:	e6000058 	swc1	$f0,88(s0)
  54:	e6000050 	swc1	$f0,80(s0)
  58:	15e10009 	bne	t7,at,80 <OceffStorm_Init+0x78>
  5c:	a60e0150 	sh	t6,336(s0)
  60:	3c050000 	lui	a1,0x0
  64:	24a50000 	addiu	a1,a1,0
  68:	0c000000 	jal	0 <OceffStorm_SetupAction>
  6c:	02002025 	move	a0,s0
  70:	3c180000 	lui	t8,0x0
  74:	27180000 	addiu	t8,t8,0
  78:	10000011 	b	c0 <OceffStorm_Init+0xb8>
  7c:	ae180134 	sw	t8,308(s0)
  80:	3c0141f0 	lui	at,0x41f0
  84:	44813000 	mtc1	at,$f6
  88:	c6040028 	lwc1	$f4,40(s0)
  8c:	8e070024 	lw	a3,36(s0)
  90:	24190001 	li	t9,1
  94:	46062201 	sub.s	$f8,$f4,$f6
  98:	24a41c24 	addiu	a0,a1,7204
  9c:	24060170 	li	a2,368
  a0:	e7a80010 	swc1	$f8,16(sp)
  a4:	c60a002c 	lwc1	$f10,44(s0)
  a8:	afb90024 	sw	t9,36(sp)
  ac:	afa00020 	sw	zero,32(sp)
  b0:	afa0001c 	sw	zero,28(sp)
  b4:	afa00018 	sw	zero,24(sp)
  b8:	0c000000 	jal	0 <OceffStorm_SetupAction>
  bc:	e7aa0014 	swc1	$f10,20(sp)
  c0:	8fbf0034 	lw	ra,52(sp)
  c4:	8fb00030 	lw	s0,48(sp)
  c8:	27bd0038 	addiu	sp,sp,56
  cc:	03e00008 	jr	ra
  d0:	00000000 	nop

000000d4 <OceffStorm_Destroy>:
  d4:	27bdffe0 	addiu	sp,sp,-32
  d8:	afbf0014 	sw	ra,20(sp)
  dc:	afa40020 	sw	a0,32(sp)
  e0:	8ca21c44 	lw	v0,7236(a1)
  e4:	00a02025 	move	a0,a1
  e8:	0c000000 	jal	0 <OceffStorm_SetupAction>
  ec:	afa20018 	sw	v0,24(sp)
  f0:	3c0e0000 	lui	t6,0x0
  f4:	85ce13c8 	lh	t6,5064(t6)
  f8:	8fa20018 	lw	v0,24(sp)
  fc:	51c00005 	beqzl	t6,114 <OceffStorm_Destroy+0x40>
 100:	8fbf0014 	lw	ra,20(sp)
 104:	904f0692 	lbu	t7,1682(v0)
 108:	35f80040 	ori	t8,t7,0x40
 10c:	a0580692 	sb	t8,1682(v0)
 110:	8fbf0014 	lw	ra,20(sp)
 114:	27bd0020 	addiu	sp,sp,32
 118:	03e00008 	jr	ra
 11c:	00000000 	nop

00000120 <OceffStorm_DefaultAction>:
 120:	27bdffe8 	addiu	sp,sp,-24
 124:	afbf0014 	sw	ra,20(sp)
 128:	afa5001c 	sw	a1,28(sp)
 12c:	9486014c 	lhu	a2,332(a0)
 130:	28c10014 	slti	at,a2,20
 134:	10200010 	beqz	at,178 <OceffStorm_DefaultAction+0x58>
 138:	00c01025 	move	v0,a2
 13c:	44862000 	mtc1	a2,$f4
 140:	3c014f80 	lui	at,0x4f80
 144:	04c10004 	bgez	a2,158 <OceffStorm_DefaultAction+0x38>
 148:	468021a0 	cvt.s.w	$f6,$f4
 14c:	44814000 	mtc1	at,$f8
 150:	00000000 	nop
 154:	46083180 	add.s	$f6,$f6,$f8
 158:	3c0140a0 	lui	at,0x40a0
 15c:	44815000 	mtc1	at,$f10
 160:	00000000 	nop
 164:	460a3402 	mul.s	$f16,$f6,$f10
 168:	4600848d 	trunc.w.s	$f18,$f16
 16c:	440f9000 	mfc1	t7,$f18
 170:	10000012 	b	1bc <OceffStorm_DefaultAction+0x9c>
 174:	a08f014e 	sb	t7,334(a0)
 178:	28410051 	slti	at,v0,81
 17c:	1420000b 	bnez	at,1ac <OceffStorm_DefaultAction+0x8c>
 180:	24180064 	li	t8,100
 184:	0302c823 	subu	t9,t8,v0
 188:	44992000 	mtc1	t9,$f4
 18c:	3c0140a0 	lui	at,0x40a0
 190:	44813000 	mtc1	at,$f6
 194:	46802220 	cvt.s.w	$f8,$f4
 198:	46064282 	mul.s	$f10,$f8,$f6
 19c:	4600540d 	trunc.w.s	$f16,$f10
 1a0:	44098000 	mfc1	t1,$f16
 1a4:	10000005 	b	1bc <OceffStorm_DefaultAction+0x9c>
 1a8:	a089014e 	sb	t1,334(a0)
 1ac:	9486014c 	lhu	a2,332(a0)
 1b0:	240a0064 	li	t2,100
 1b4:	a08a014e 	sb	t2,334(a0)
 1b8:	00c01025 	move	v0,a2
 1bc:	2841000a 	slti	at,v0,10
 1c0:	14200003 	bnez	at,1d0 <OceffStorm_DefaultAction+0xb0>
 1c4:	2841005a 	slti	at,v0,90
 1c8:	54200006 	bnezl	at,1e4 <OceffStorm_DefaultAction+0xc4>
 1cc:	28410042 	slti	at,v0,66
 1d0:	9486014c 	lhu	a2,332(a0)
 1d4:	a080014f 	sb	zero,335(a0)
 1d8:	10000024 	b	26c <OceffStorm_DefaultAction+0x14c>
 1dc:	00c01025 	move	v0,a2
 1e0:	28410042 	slti	at,v0,66
 1e4:	50200011 	beqzl	at,22c <OceffStorm_DefaultAction+0x10c>
 1e8:	28410042 	slti	at,v0,66
 1ec:	9082014f 	lbu	v0,335(a0)
 1f0:	284100c9 	slti	at,v0,201
 1f4:	10200002 	beqz	at,200 <OceffStorm_DefaultAction+0xe0>
 1f8:	244b000a 	addiu	t3,v0,10
 1fc:	a08b014f 	sb	t3,335(a0)
 200:	3c010000 	lui	at,0x0
 204:	c4200064 	lwc1	$f0,100(at)
 208:	3c010000 	lui	at,0x0
 20c:	9486014c 	lhu	a2,332(a0)
 210:	e4800058 	swc1	$f0,88(a0)
 214:	e4800050 	swc1	$f0,80(a0)
 218:	c4320068 	lwc1	$f18,104(at)
 21c:	00c01025 	move	v0,a2
 220:	10000012 	b	26c <OceffStorm_DefaultAction+0x14c>
 224:	e4920054 	swc1	$f18,84(a0)
 228:	28410042 	slti	at,v0,66
 22c:	14200008 	bnez	at,250 <OceffStorm_DefaultAction+0x130>
 230:	240f00ff 	li	t7,255
 234:	00026023 	negu	t4,v0
 238:	000c6880 	sll	t5,t4,0x2
 23c:	01ac6821 	addu	t5,t5,t4
 240:	000d6840 	sll	t5,t5,0x1
 244:	25ae0384 	addiu	t6,t5,900
 248:	10000008 	b	26c <OceffStorm_DefaultAction+0x14c>
 24c:	a08e014f 	sb	t6,335(a0)
 250:	3c010000 	lui	at,0x0
 254:	c420006c 	lwc1	$f0,108(at)
 258:	9486014c 	lhu	a2,332(a0)
 25c:	a08f014f 	sb	t7,335(a0)
 260:	e4800058 	swc1	$f0,88(a0)
 264:	e4800050 	swc1	$f0,80(a0)
 268:	00c01025 	move	v0,a2
 26c:	2841003d 	slti	at,v0,61
 270:	54200012 	bnezl	at,2bc <OceffStorm_DefaultAction+0x19c>
 274:	28410064 	slti	at,v0,100
 278:	84830150 	lh	v1,336(a0)
 27c:	3c010000 	lui	at,0x0
 280:	c4260070 	lwc1	$f6,112(at)
 284:	44832000 	mtc1	v1,$f4
 288:	c4900028 	lwc1	$f16,40(a0)
 28c:	84850152 	lh	a1,338(a0)
 290:	46802220 	cvt.s.w	$f8,$f4
 294:	9486014c 	lhu	a2,332(a0)
 298:	0065c021 	addu	t8,v1,a1
 29c:	24b9000a 	addiu	t9,a1,10
 2a0:	a4980150 	sh	t8,336(a0)
 2a4:	a4990152 	sh	t9,338(a0)
 2a8:	46064282 	mul.s	$f10,$f8,$f6
 2ac:	00c01025 	move	v0,a2
 2b0:	460a8480 	add.s	$f18,$f16,$f10
 2b4:	e4920028 	swc1	$f18,40(a0)
 2b8:	28410064 	slti	at,v0,100
 2bc:	10200003 	beqz	at,2cc <OceffStorm_DefaultAction+0x1ac>
 2c0:	24c80001 	addiu	t0,a2,1
 2c4:	10000003 	b	2d4 <OceffStorm_DefaultAction+0x1b4>
 2c8:	a488014c 	sh	t0,332(a0)
 2cc:	0c000000 	jal	0 <OceffStorm_SetupAction>
 2d0:	00000000 	nop
 2d4:	8fbf0014 	lw	ra,20(sp)
 2d8:	27bd0018 	addiu	sp,sp,24
 2dc:	03e00008 	jr	ra
 2e0:	00000000 	nop

000002e4 <OceffStorm_UnkAction>:
 2e4:	afa50004 	sw	a1,4(sp)
 2e8:	9082014e 	lbu	v0,334(a0)
 2ec:	28410064 	slti	at,v0,100
 2f0:	10200002 	beqz	at,2fc <OceffStorm_UnkAction+0x18>
 2f4:	244e0005 	addiu	t6,v0,5
 2f8:	a08e014e 	sb	t6,334(a0)
 2fc:	03e00008 	jr	ra
 300:	00000000 	nop

00000304 <OceffStorm_Update>:
 304:	27bdffe8 	addiu	sp,sp,-24
 308:	afbf0014 	sw	ra,20(sp)
 30c:	8ca21c44 	lw	v0,7236(a1)
 310:	00803025 	move	a2,a0
 314:	8c4f0024 	lw	t7,36(v0)
 318:	ac8f0024 	sw	t7,36(a0)
 31c:	8c4e0028 	lw	t6,40(v0)
 320:	ac8e0028 	sw	t6,40(a0)
 324:	8c4f002c 	lw	t7,44(v0)
 328:	ac8f002c 	sw	t7,44(a0)
 32c:	84b807a0 	lh	t8,1952(a1)
 330:	0018c880 	sll	t9,t8,0x2
 334:	00b94021 	addu	t0,a1,t9
 338:	8d040790 	lw	a0,1936(t0)
 33c:	afa60018 	sw	a2,24(sp)
 340:	0c000000 	jal	0 <OceffStorm_SetupAction>
 344:	afa5001c 	sw	a1,28(sp)
 348:	8fa40018 	lw	a0,24(sp)
 34c:	8fa5001c 	lw	a1,28(sp)
 350:	8c990154 	lw	t9,340(a0)
 354:	a48200b6 	sh	v0,182(a0)
 358:	0320f809 	jalr	t9
 35c:	00000000 	nop
 360:	8fbf0014 	lw	ra,20(sp)
 364:	27bd0018 	addiu	sp,sp,24
 368:	03e00008 	jr	ra
 36c:	00000000 	nop

00000370 <OceffStorm_Draw2>:
 370:	27bdff80 	addiu	sp,sp,-128
 374:	afbf0034 	sw	ra,52(sp)
 378:	afa40080 	sw	a0,128(sp)
 37c:	afa50084 	sw	a1,132(sp)
 380:	8caf009c 	lw	t7,156(a1)
 384:	3c060000 	lui	a2,0x0
 388:	24c60000 	addiu	a2,a2,0
 38c:	31f80fff 	andi	t8,t7,0xfff
 390:	afb8007c 	sw	t8,124(sp)
 394:	8ca50000 	lw	a1,0(a1)
 398:	27a40064 	addiu	a0,sp,100
 39c:	240701c1 	li	a3,449
 3a0:	0c000000 	jal	0 <OceffStorm_SetupAction>
 3a4:	afa50074 	sw	a1,116(sp)
 3a8:	8fa30074 	lw	v1,116(sp)
 3ac:	3c0be700 	lui	t3,0xe700
 3b0:	8c6202d0 	lw	v0,720(v1)
 3b4:	24590008 	addiu	t9,v0,8
 3b8:	ac7902d0 	sw	t9,720(v1)
 3bc:	ac400004 	sw	zero,4(v0)
 3c0:	ac4b0000 	sw	t3,0(v0)
 3c4:	8c6402d0 	lw	a0,720(v1)
 3c8:	0c000000 	jal	0 <OceffStorm_SetupAction>
 3cc:	afa30074 	sw	v1,116(sp)
 3d0:	8fa30074 	lw	v1,116(sp)
 3d4:	244c0008 	addiu	t4,v0,8
 3d8:	3c0de300 	lui	t5,0xe300
 3dc:	ac6202d0 	sw	v0,720(v1)
 3e0:	ac6c02d0 	sw	t4,720(v1)
 3e4:	35ad1a01 	ori	t5,t5,0x1a01
 3e8:	240f0020 	li	t7,32
 3ec:	ac4f0004 	sw	t7,4(v0)
 3f0:	ac4d0000 	sw	t5,0(v0)
 3f4:	8c6202d0 	lw	v0,720(v1)
 3f8:	3c0ee300 	lui	t6,0xe300
 3fc:	35ce1801 	ori	t6,t6,0x1801
 400:	24580008 	addiu	t8,v0,8
 404:	ac7802d0 	sw	t8,720(v1)
 408:	24190080 	li	t9,128
 40c:	ac590004 	sw	t9,4(v0)
 410:	ac4e0000 	sw	t6,0(v0)
 414:	8c6202d0 	lw	v0,720(v1)
 418:	3c0cfa00 	lui	t4,0xfa00
 41c:	358c8080 	ori	t4,t4,0x8080
 420:	244b0008 	addiu	t3,v0,8
 424:	ac6b02d0 	sw	t3,720(v1)
 428:	ac4c0000 	sw	t4,0(v0)
 42c:	8fad0080 	lw	t5,128(sp)
 430:	3c01c8c8 	lui	at,0xc8c8
 434:	34219600 	ori	at,at,0x9600
 438:	91b8014e 	lbu	t8,334(t5)
 43c:	3c0b0000 	lui	t3,0x0
 440:	256b1020 	addiu	t3,t3,4128
 444:	03017025 	or	t6,t8,at
 448:	ac4e0004 	sw	t6,4(v0)
 44c:	8c6202d0 	lw	v0,720(v1)
 450:	3c09de00 	lui	t1,0xde00
 454:	240e0001 	li	t6,1
 458:	24590008 	addiu	t9,v0,8
 45c:	ac7902d0 	sw	t9,720(v1)
 460:	ac490000 	sw	t1,0(v0)
 464:	ac4b0004 	sw	t3,4(v0)
 468:	8c6202d0 	lw	v0,720(v1)
 46c:	8faa007c 	lw	t2,124(sp)
 470:	240b0040 	li	t3,64
 474:	244c0008 	addiu	t4,v0,8
 478:	ac6c02d0 	sw	t4,720(v1)
 47c:	ac490000 	sw	t1,0(v0)
 480:	8fad0084 	lw	t5,132(sp)
 484:	24190040 	li	t9,64
 488:	24180040 	li	t8,64
 48c:	8da40000 	lw	a0,0(t5)
 490:	240f0040 	li	t7,64
 494:	000a3880 	sll	a3,t2,0x2
 498:	afa7001c 	sw	a3,28(sp)
 49c:	afa70020 	sw	a3,32(sp)
 4a0:	afaf0010 	sw	t7,16(sp)
 4a4:	afab0028 	sw	t3,40(sp)
 4a8:	afb90024 	sw	t9,36(sp)
 4ac:	afae0018 	sw	t6,24(sp)
 4b0:	afb80014 	sw	t8,20(sp)
 4b4:	00002825 	move	a1,zero
 4b8:	afa30074 	sw	v1,116(sp)
 4bc:	afa2004c 	sw	v0,76(sp)
 4c0:	0c000000 	jal	0 <OceffStorm_SetupAction>
 4c4:	000a30c0 	sll	a2,t2,0x3
 4c8:	8fa8004c 	lw	t0,76(sp)
 4cc:	8fa30074 	lw	v1,116(sp)
 4d0:	3c0de450 	lui	t5,0xe450
 4d4:	ad020004 	sw	v0,4(t0)
 4d8:	8c6202d0 	lw	v0,720(v1)
 4dc:	35ad03c0 	ori	t5,t5,0x3c0
 4e0:	3c18e100 	lui	t8,0xe100
 4e4:	244c0008 	addiu	t4,v0,8
 4e8:	ac6c02d0 	sw	t4,720(v1)
 4ec:	ac400004 	sw	zero,4(v0)
 4f0:	ac4d0000 	sw	t5,0(v0)
 4f4:	8c6202d0 	lw	v0,720(v1)
 4f8:	3c0b008c 	lui	t3,0x8c
 4fc:	356bff74 	ori	t3,t3,0xff74
 500:	244f0008 	addiu	t7,v0,8
 504:	ac6f02d0 	sw	t7,720(v1)
 508:	ac400004 	sw	zero,4(v0)
 50c:	ac580000 	sw	t8,0(v0)
 510:	8c6202d0 	lw	v0,720(v1)
 514:	3c19f100 	lui	t9,0xf100
 518:	3c060000 	lui	a2,0x0
 51c:	244e0008 	addiu	t6,v0,8
 520:	ac6e02d0 	sw	t6,720(v1)
 524:	ac4b0004 	sw	t3,4(v0)
 528:	ac590000 	sw	t9,0(v0)
 52c:	8fac0084 	lw	t4,132(sp)
 530:	24c60014 	addiu	a2,a2,20
 534:	27a40064 	addiu	a0,sp,100
 538:	240701dd 	li	a3,477
 53c:	0c000000 	jal	0 <OceffStorm_SetupAction>
 540:	8d850000 	lw	a1,0(t4)
 544:	8fbf0034 	lw	ra,52(sp)
 548:	27bd0080 	addiu	sp,sp,128
 54c:	03e00008 	jr	ra
 550:	00000000 	nop

00000554 <OceffStorm_Draw>:
 554:	27bdff78 	addiu	sp,sp,-136
 558:	afbf003c 	sw	ra,60(sp)
 55c:	afb10038 	sw	s1,56(sp)
 560:	afb00034 	sw	s0,52(sp)
 564:	afa40088 	sw	a0,136(sp)
 568:	8cae009c 	lw	t6,156(a1)
 56c:	00a08825 	move	s1,a1
 570:	3c060000 	lui	a2,0x0
 574:	31cf0fff 	andi	t7,t6,0xfff
 578:	afaf0084 	sw	t7,132(sp)
 57c:	8ca50000 	lw	a1,0(a1)
 580:	24c60028 	addiu	a2,a2,40
 584:	27a40068 	addiu	a0,sp,104
 588:	240701e6 	li	a3,486
 58c:	0c000000 	jal	0 <OceffStorm_SetupAction>
 590:	00a08025 	move	s0,a1
 594:	0c000000 	jal	0 <OceffStorm_SetupAction>
 598:	8e240000 	lw	a0,0(s1)
 59c:	8e0202d0 	lw	v0,720(s0)
 5a0:	3c19fa00 	lui	t9,0xfa00
 5a4:	37398080 	ori	t9,t9,0x8080
 5a8:	24580008 	addiu	t8,v0,8
 5ac:	ae1802d0 	sw	t8,720(s0)
 5b0:	240bc8ff 	li	t3,-14081
 5b4:	ac4b0004 	sw	t3,4(v0)
 5b8:	ac590000 	sw	t9,0(v0)
 5bc:	8e0202d0 	lw	v0,720(s0)
 5c0:	3c0e9696 	lui	t6,0x9696
 5c4:	35ce0080 	ori	t6,t6,0x80
 5c8:	244c0008 	addiu	t4,v0,8
 5cc:	ae0c02d0 	sw	t4,720(s0)
 5d0:	3c0dfb00 	lui	t5,0xfb00
 5d4:	ac4d0000 	sw	t5,0(v0)
 5d8:	ac4e0004 	sw	t6,4(v0)
 5dc:	8e0202d0 	lw	v0,720(s0)
 5e0:	3c18e300 	lui	t8,0xe300
 5e4:	37181a01 	ori	t8,t8,0x1a01
 5e8:	244f0008 	addiu	t7,v0,8
 5ec:	ae0f02d0 	sw	t7,720(s0)
 5f0:	24190020 	li	t9,32
 5f4:	ac590004 	sw	t9,4(v0)
 5f8:	ac580000 	sw	t8,0(v0)
 5fc:	8e0202d0 	lw	v0,720(s0)
 600:	3c0ce300 	lui	t4,0xe300
 604:	358c1801 	ori	t4,t4,0x1801
 608:	244b0008 	addiu	t3,v0,8
 60c:	ae0b02d0 	sw	t3,720(s0)
 610:	240d0080 	li	t5,128
 614:	ac4d0004 	sw	t5,4(v0)
 618:	ac4c0000 	sw	t4,0(v0)
 61c:	8fa70088 	lw	a3,136(sp)
 620:	3c010000 	lui	at,0x0
 624:	3c0fda38 	lui	t7,0xda38
 628:	90e2014f 	lbu	v0,335(a3)
 62c:	35ef0003 	ori	t7,t7,0x3
 630:	3c050000 	lui	a1,0x0
 634:	00021043 	sra	v0,v0,0x1
 638:	a0221267 	sb	v0,4711(at)
 63c:	3c010000 	lui	at,0x0
 640:	a02211d7 	sb	v0,4567(at)
 644:	3c010000 	lui	at,0x0
 648:	a0221137 	sb	v0,4407(at)
 64c:	3c010000 	lui	at,0x0
 650:	a02210d7 	sb	v0,4311(at)
 654:	90e3014f 	lbu	v1,335(a3)
 658:	3c010000 	lui	at,0x0
 65c:	24a5003c 	addiu	a1,a1,60
 660:	a0231237 	sb	v1,4663(at)
 664:	3c010000 	lui	at,0x0
 668:	a0231177 	sb	v1,4471(at)
 66c:	8e0202d0 	lw	v0,720(s0)
 670:	240601f2 	li	a2,498
 674:	244e0008 	addiu	t6,v0,8
 678:	ae0e02d0 	sw	t6,720(s0)
 67c:	ac4f0000 	sw	t7,0(v0)
 680:	8e240000 	lw	a0,0(s1)
 684:	0c000000 	jal	0 <OceffStorm_SetupAction>
 688:	afa20054 	sw	v0,84(sp)
 68c:	8fa30054 	lw	v1,84(sp)
 690:	3c190000 	lui	t9,0x0
 694:	27391278 	addiu	t9,t9,4728
 698:	ac620004 	sw	v0,4(v1)
 69c:	8e0202d0 	lw	v0,720(s0)
 6a0:	3c09de00 	lui	t1,0xde00
 6a4:	240c0020 	li	t4,32
 6a8:	24580008 	addiu	t8,v0,8
 6ac:	ae1802d0 	sw	t8,720(s0)
 6b0:	ac490000 	sw	t1,0(v0)
 6b4:	ac590004 	sw	t9,4(v0)
 6b8:	8e0202d0 	lw	v0,720(s0)
 6bc:	8faa0084 	lw	t2,132(sp)
 6c0:	24190020 	li	t9,32
 6c4:	244b0008 	addiu	t3,v0,8
 6c8:	ae0b02d0 	sw	t3,720(s0)
 6cc:	ac490000 	sw	t1,0(v0)
 6d0:	8e240000 	lw	a0,0(s1)
 6d4:	000a1823 	negu	v1,t2
 6d8:	0003c080 	sll	t8,v1,0x2
 6dc:	0303c023 	subu	t8,t8,v1
 6e0:	0018c080 	sll	t8,t8,0x2
 6e4:	240b0020 	li	t3,32
 6e8:	240d0020 	li	t5,32
 6ec:	240e0001 	li	t6,1
 6f0:	000a78c0 	sll	t7,t2,0x3
 6f4:	afaf001c 	sw	t7,28(sp)
 6f8:	afae0018 	sw	t6,24(sp)
 6fc:	afad0014 	sw	t5,20(sp)
 700:	afab0028 	sw	t3,40(sp)
 704:	afb80020 	sw	t8,32(sp)
 708:	000338c0 	sll	a3,v1,0x3
 70c:	afb90024 	sw	t9,36(sp)
 710:	afac0010 	sw	t4,16(sp)
 714:	00002825 	move	a1,zero
 718:	afa2004c 	sw	v0,76(sp)
 71c:	0c000000 	jal	0 <OceffStorm_SetupAction>
 720:	000a3080 	sll	a2,t2,0x2
 724:	8fa8004c 	lw	t0,76(sp)
 728:	3c0e0000 	lui	t6,0x0
 72c:	25ce1320 	addiu	t6,t6,4896
 730:	ad020004 	sw	v0,4(t0)
 734:	8e0202d0 	lw	v0,720(s0)
 738:	3c0dde00 	lui	t5,0xde00
 73c:	3c060000 	lui	a2,0x0
 740:	244c0008 	addiu	t4,v0,8
 744:	ae0c02d0 	sw	t4,720(s0)
 748:	ac4e0004 	sw	t6,4(v0)
 74c:	ac4d0000 	sw	t5,0(v0)
 750:	8e250000 	lw	a1,0(s1)
 754:	24c60050 	addiu	a2,a2,80
 758:	27a40068 	addiu	a0,sp,104
 75c:	0c000000 	jal	0 <OceffStorm_SetupAction>
 760:	24070200 	li	a3,512
 764:	8fa40088 	lw	a0,136(sp)
 768:	0c000000 	jal	0 <OceffStorm_SetupAction>
 76c:	02202825 	move	a1,s1
 770:	8fbf003c 	lw	ra,60(sp)
 774:	8fb00034 	lw	s0,52(sp)
 778:	8fb10038 	lw	s1,56(sp)
 77c:	03e00008 	jr	ra
 780:	27bd0088 	addiu	sp,sp,136
	...
