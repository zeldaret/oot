
build/src/code/z_quake.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Quake_AddVec>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa40030 	sw	a0,48(sp)
   c:	00a03825 	move	a3,a1
  10:	afa70034 	sw	a3,52(sp)
  14:	00c02825 	move	a1,a2
  18:	0c000000 	jal	0 <Quake_AddVec>
  1c:	27a40018 	addiu	a0,sp,24
  20:	8fa70034 	lw	a3,52(sp)
  24:	c7a60018 	lwc1	$f6,24(sp)
  28:	c7b0001c 	lwc1	$f16,28(sp)
  2c:	c4e40000 	lwc1	$f4,0(a3)
  30:	27ae0024 	addiu	t6,sp,36
  34:	8fa20030 	lw	v0,48(sp)
  38:	46062200 	add.s	$f8,$f4,$f6
  3c:	c7a60020 	lwc1	$f6,32(sp)
  40:	e7a80024 	swc1	$f8,36(sp)
  44:	c4ea0004 	lwc1	$f10,4(a3)
  48:	46105480 	add.s	$f18,$f10,$f16
  4c:	e7b20028 	swc1	$f18,40(sp)
  50:	c4e40008 	lwc1	$f4,8(a3)
  54:	46062200 	add.s	$f8,$f4,$f6
  58:	e7a8002c 	swc1	$f8,44(sp)
  5c:	8dd80000 	lw	t8,0(t6)
  60:	ac580000 	sw	t8,0(v0)
  64:	8dcf0004 	lw	t7,4(t6)
  68:	ac4f0004 	sw	t7,4(v0)
  6c:	8dd80008 	lw	t8,8(t6)
  70:	ac580008 	sw	t8,8(v0)
  74:	8fbf0014 	lw	ra,20(sp)
  78:	27bd0030 	addiu	sp,sp,48
  7c:	03e00008 	jr	ra
  80:	00000000 	nop

00000084 <Quake_UpdateShakeInfo>:
  84:	27bdffa0 	addiu	sp,sp,-96
  88:	afbf0024 	sw	ra,36(sp)
  8c:	afb10020 	sw	s1,32(sp)
  90:	afb0001c 	sw	s0,28(sp)
  94:	f7b40010 	sdc1	$f20,16(sp)
  98:	afa50064 	sw	a1,100(sp)
  9c:	afa7006c 	sw	a3,108(sp)
  a0:	8c820004 	lw	v0,4(a0)
  a4:	848e001c 	lh	t6,28(a0)
  a8:	4486a000 	mtc1	a2,$f20
  ac:	00a03825 	move	a3,a1
  b0:	00808025 	move	s0,a0
  b4:	24460050 	addiu	a2,v0,80
  b8:	11c00031 	beqz	t6,180 <Quake_UpdateShakeInfo+0xfc>
  bc:	2451005c 	addiu	s1,v0,92
  c0:	44800000 	mtc1	zero,$f0
  c4:	27a4003c 	addiu	a0,sp,60
  c8:	02202825 	move	a1,s1
  cc:	afa70064 	sw	a3,100(sp)
  d0:	e7a0004c 	swc1	$f0,76(sp)
  d4:	e7a00050 	swc1	$f0,80(sp)
  d8:	0c000000 	jal	0 <Quake_AddVec>
  dc:	e7a00054 	swc1	$f0,84(sp)
  e0:	860f000c 	lh	t7,12(s0)
  e4:	87b80040 	lh	t8,64(sp)
  e8:	87aa0042 	lh	t2,66(sp)
  ec:	448f2000 	mtc1	t7,$f4
  f0:	27b1004c 	addiu	s1,sp,76
  f4:	02202025 	move	a0,s1
  f8:	468021a0 	cvt.s.w	$f6,$f4
  fc:	02202825 	move	a1,s1
 100:	27a60044 	addiu	a2,sp,68
 104:	46143202 	mul.s	$f8,$f6,$f20
 108:	e7a80044 	swc1	$f8,68(sp)
 10c:	86190014 	lh	t9,20(s0)
 110:	03194021 	addu	t0,t8,t9
 114:	25094000 	addiu	t1,t0,16384
 118:	a7a90048 	sh	t1,72(sp)
 11c:	860b0016 	lh	t3,22(s0)
 120:	014b6021 	addu	t4,t2,t3
 124:	0c000000 	jal	0 <Quake_AddVec>
 128:	a7ac004a 	sh	t4,74(sp)
 12c:	860d000e 	lh	t5,14(s0)
 130:	c7b2006c 	lwc1	$f18,108(sp)
 134:	87ae0040 	lh	t6,64(sp)
 138:	448d5000 	mtc1	t5,$f10
 13c:	87b90042 	lh	t9,66(sp)
 140:	02202025 	move	a0,s1
 144:	46805420 	cvt.s.w	$f16,$f10
 148:	02202825 	move	a1,s1
 14c:	27a60044 	addiu	a2,sp,68
 150:	46128102 	mul.s	$f4,$f16,$f18
 154:	e7a40044 	swc1	$f4,68(sp)
 158:	860f0014 	lh	t7,20(s0)
 15c:	01cfc021 	addu	t8,t6,t7
 160:	a7b80048 	sh	t8,72(sp)
 164:	86080016 	lh	t0,22(s0)
 168:	03284821 	addu	t1,t9,t0
 16c:	252a4000 	addiu	t2,t1,16384
 170:	0c000000 	jal	0 <Quake_AddVec>
 174:	a7aa004a 	sh	t2,74(sp)
 178:	1000001b 	b	1e8 <Quake_UpdateShakeInfo+0x164>
 17c:	8fa70064 	lw	a3,100(sp)
 180:	44800000 	mtc1	zero,$f0
 184:	c7a4006c 	lwc1	$f4,108(sp)
 188:	27b1004c 	addiu	s1,sp,76
 18c:	e7a0004c 	swc1	$f0,76(sp)
 190:	860b000c 	lh	t3,12(s0)
 194:	e7a00054 	swc1	$f0,84(sp)
 198:	02202025 	move	a0,s1
 19c:	448b3000 	mtc1	t3,$f6
 1a0:	02202825 	move	a1,s1
 1a4:	27a60044 	addiu	a2,sp,68
 1a8:	46803220 	cvt.s.w	$f8,$f6
 1ac:	46144282 	mul.s	$f10,$f8,$f20
 1b0:	e7aa0050 	swc1	$f10,80(sp)
 1b4:	860c000e 	lh	t4,14(s0)
 1b8:	448c8000 	mtc1	t4,$f16
 1bc:	00000000 	nop
 1c0:	468084a0 	cvt.s.w	$f18,$f16
 1c4:	46049182 	mul.s	$f6,$f18,$f4
 1c8:	e7a60044 	swc1	$f6,68(sp)
 1cc:	860d0014 	lh	t5,20(s0)
 1d0:	a7ad0048 	sh	t5,72(sp)
 1d4:	860e0016 	lh	t6,22(s0)
 1d8:	afa70064 	sw	a3,100(sp)
 1dc:	0c000000 	jal	0 <Quake_AddVec>
 1e0:	a7ae004a 	sh	t6,74(sp)
 1e4:	8fa70064 	lw	a3,100(sp)
 1e8:	8e380000 	lw	t8,0(s1)
 1ec:	27a20030 	addiu	v0,sp,48
 1f0:	8e2f0004 	lw	t7,4(s1)
 1f4:	ac580000 	sw	t8,0(v0)
 1f8:	8e380008 	lw	t8,8(s1)
 1fc:	8c480000 	lw	t0,0(v0)
 200:	ac4f0004 	sw	t7,4(v0)
 204:	ac580008 	sw	t8,8(v0)
 208:	ace8000c 	sw	t0,12(a3)
 20c:	8c590004 	lw	t9,4(v0)
 210:	3c014700 	lui	at,0x4700
 214:	44814000 	mtc1	at,$f8
 218:	acf90010 	sw	t9,16(a3)
 21c:	8c480008 	lw	t0,8(v0)
 220:	46144282 	mul.s	$f10,$f8,$f20
 224:	ace80014 	sw	t0,20(a3)
 228:	8c4a0000 	lw	t2,0(v0)
 22c:	acea0000 	sw	t2,0(a3)
 230:	4600540d 	trunc.w.s	$f16,$f10
 234:	8c490004 	lw	t1,4(v0)
 238:	ace90004 	sw	t1,4(a3)
 23c:	8c4a0008 	lw	t2,8(v0)
 240:	440c8000 	mfc1	t4,$f16
 244:	acea0008 	sw	t2,8(a3)
 248:	a4ec001a 	sh	t4,26(a3)
 24c:	860d0012 	lh	t5,18(s0)
 250:	448d9000 	mtc1	t5,$f18
 254:	00000000 	nop
 258:	46809120 	cvt.s.w	$f4,$f18
 25c:	46142182 	mul.s	$f6,$f4,$f20
 260:	4600320d 	trunc.w.s	$f8,$f6
 264:	440f4000 	mfc1	t7,$f8
 268:	00000000 	nop
 26c:	a4ef0018 	sh	t7,24(a3)
 270:	86180010 	lh	t8,16(s0)
 274:	44985000 	mtc1	t8,$f10
 278:	00000000 	nop
 27c:	46805420 	cvt.s.w	$f16,$f10
 280:	46148482 	mul.s	$f18,$f16,$f20
 284:	4600910d 	trunc.w.s	$f4,$f18
 288:	44082000 	mfc1	t0,$f4
 28c:	00000000 	nop
 290:	a4e8001c 	sh	t0,28(a3)
 294:	8fbf0024 	lw	ra,36(sp)
 298:	8fb10020 	lw	s1,32(sp)
 29c:	8fb0001c 	lw	s0,28(sp)
 2a0:	d7b40010 	ldc1	$f20,16(sp)
 2a4:	03e00008 	jr	ra
 2a8:	27bd0060 	addiu	sp,sp,96

000002ac <Quake_Callback1>:
 2ac:	27bdffd8 	addiu	sp,sp,-40
 2b0:	afbf001c 	sw	ra,28(sp)
 2b4:	afb00018 	sw	s0,24(sp)
 2b8:	afa5002c 	sw	a1,44(sp)
 2bc:	8483001e 	lh	v1,30(a0)
 2c0:	00808025 	move	s0,a0
 2c4:	58600016 	blezl	v1,320 <Quake_Callback1+0x74>
 2c8:	8fbf001c 	lw	ra,28(sp)
 2cc:	848e001a 	lh	t6,26(a0)
 2d0:	01c30019 	multu	t6,v1
 2d4:	00002012 	mflo	a0
 2d8:	00042400 	sll	a0,a0,0x10
 2dc:	0c000000 	jal	0 <Quake_AddVec>
 2e0:	00042403 	sra	a0,a0,0x10
 2e4:	0c000000 	jal	0 <Quake_AddVec>
 2e8:	e7a00020 	swc1	$f0,32(sp)
 2ec:	c7a20020 	lwc1	$f2,32(sp)
 2f0:	02002025 	move	a0,s0
 2f4:	8fa5002c 	lw	a1,44(sp)
 2f8:	46020102 	mul.s	$f4,$f0,$f2
 2fc:	44061000 	mfc1	a2,$f2
 300:	44072000 	mfc1	a3,$f4
 304:	0c000000 	jal	0 <Quake_AddVec>
 308:	00000000 	nop
 30c:	860f001e 	lh	t7,30(s0)
 310:	25f8ffff 	addiu	t8,t7,-1
 314:	a618001e 	sh	t8,30(s0)
 318:	8603001e 	lh	v1,30(s0)
 31c:	8fbf001c 	lw	ra,28(sp)
 320:	8fb00018 	lw	s0,24(sp)
 324:	27bd0028 	addiu	sp,sp,40
 328:	03e00008 	jr	ra
 32c:	00601025 	move	v0,v1

00000330 <Quake_Callback5>:
 330:	27bdffe0 	addiu	sp,sp,-32
 334:	afbf001c 	sw	ra,28(sp)
 338:	afb00018 	sw	s0,24(sp)
 33c:	afa50024 	sw	a1,36(sp)
 340:	8483001e 	lh	v1,30(a0)
 344:	00808025 	move	s0,a0
 348:	58600011 	blezl	v1,390 <Quake_Callback5+0x60>
 34c:	8fbf001c 	lw	ra,28(sp)
 350:	848e001a 	lh	t6,26(a0)
 354:	01c30019 	multu	t6,v1
 358:	00002012 	mflo	a0
 35c:	00042400 	sll	a0,a0,0x10
 360:	0c000000 	jal	0 <Quake_AddVec>
 364:	00042403 	sra	a0,a0,0x10
 368:	44060000 	mfc1	a2,$f0
 36c:	44070000 	mfc1	a3,$f0
 370:	02002025 	move	a0,s0
 374:	0c000000 	jal	0 <Quake_AddVec>
 378:	8fa50024 	lw	a1,36(sp)
 37c:	860f001e 	lh	t7,30(s0)
 380:	25f8ffff 	addiu	t8,t7,-1
 384:	a618001e 	sh	t8,30(s0)
 388:	8603001e 	lh	v1,30(s0)
 38c:	8fbf001c 	lw	ra,28(sp)
 390:	8fb00018 	lw	s0,24(sp)
 394:	27bd0020 	addiu	sp,sp,32
 398:	03e00008 	jr	ra
 39c:	00601025 	move	v0,v1

000003a0 <Quake_Callback6>:
 3a0:	27bdffd8 	addiu	sp,sp,-40
 3a4:	afbf001c 	sw	ra,28(sp)
 3a8:	afb00018 	sw	s0,24(sp)
 3ac:	afa5002c 	sw	a1,44(sp)
 3b0:	848e001e 	lh	t6,30(a0)
 3b4:	8498001a 	lh	t8,26(a0)
 3b8:	00808025 	move	s0,a0
 3bc:	25cfffff 	addiu	t7,t6,-1
 3c0:	a48f001e 	sh	t7,30(a0)
 3c4:	8499001e 	lh	t9,30(a0)
 3c8:	3328000f 	andi	t0,t9,0xf
 3cc:	250901f4 	addiu	t1,t0,500
 3d0:	03090019 	multu	t8,t1
 3d4:	00002012 	mflo	a0
 3d8:	00042400 	sll	a0,a0,0x10
 3dc:	0c000000 	jal	0 <Quake_AddVec>
 3e0:	00042403 	sra	a0,a0,0x10
 3e4:	0c000000 	jal	0 <Quake_AddVec>
 3e8:	e7a00020 	swc1	$f0,32(sp)
 3ec:	c7a20020 	lwc1	$f2,32(sp)
 3f0:	02002025 	move	a0,s0
 3f4:	8fa5002c 	lw	a1,44(sp)
 3f8:	46020102 	mul.s	$f4,$f0,$f2
 3fc:	44061000 	mfc1	a2,$f2
 400:	44072000 	mfc1	a3,$f4
 404:	0c000000 	jal	0 <Quake_AddVec>
 408:	00000000 	nop
 40c:	8fbf001c 	lw	ra,28(sp)
 410:	8fb00018 	lw	s0,24(sp)
 414:	27bd0028 	addiu	sp,sp,40
 418:	03e00008 	jr	ra
 41c:	24020001 	li	v0,1

00000420 <Quake_Callback3>:
 420:	27bdffe0 	addiu	sp,sp,-32
 424:	afbf001c 	sw	ra,28(sp)
 428:	afb00018 	sw	s0,24(sp)
 42c:	afa50024 	sw	a1,36(sp)
 430:	8483001e 	lh	v1,30(a0)
 434:	00808025 	move	s0,a0
 438:	5860001a 	blezl	v1,4a4 <Quake_Callback3+0x84>
 43c:	8fbf001c 	lw	ra,28(sp)
 440:	848e001a 	lh	t6,26(a0)
 444:	01c30019 	multu	t6,v1
 448:	00002012 	mflo	a0
 44c:	00042400 	sll	a0,a0,0x10
 450:	0c000000 	jal	0 <Quake_AddVec>
 454:	00042403 	sra	a0,a0,0x10
 458:	860f001e 	lh	t7,30(s0)
 45c:	86180002 	lh	t8,2(s0)
 460:	02002025 	move	a0,s0
 464:	448f2000 	mtc1	t7,$f4
 468:	44984000 	mtc1	t8,$f8
 46c:	8fa50024 	lw	a1,36(sp)
 470:	468021a0 	cvt.s.w	$f6,$f4
 474:	468042a0 	cvt.s.w	$f10,$f8
 478:	460a3403 	div.s	$f16,$f6,$f10
 47c:	46100082 	mul.s	$f2,$f0,$f16
 480:	44061000 	mfc1	a2,$f2
 484:	44071000 	mfc1	a3,$f2
 488:	0c000000 	jal	0 <Quake_AddVec>
 48c:	00000000 	nop
 490:	8619001e 	lh	t9,30(s0)
 494:	2728ffff 	addiu	t0,t9,-1
 498:	a608001e 	sh	t0,30(s0)
 49c:	8603001e 	lh	v1,30(s0)
 4a0:	8fbf001c 	lw	ra,28(sp)
 4a4:	8fb00018 	lw	s0,24(sp)
 4a8:	27bd0020 	addiu	sp,sp,32
 4ac:	03e00008 	jr	ra
 4b0:	00601025 	move	v0,v1

000004b4 <Quake_Callback2>:
 4b4:	27bdffe0 	addiu	sp,sp,-32
 4b8:	afbf0014 	sw	ra,20(sp)
 4bc:	afa50024 	sw	a1,36(sp)
 4c0:	8483001e 	lh	v1,30(a0)
 4c4:	58600013 	blezl	v1,514 <Quake_Callback2+0x60>
 4c8:	8fbf0014 	lw	ra,20(sp)
 4cc:	0c000000 	jal	0 <Quake_AddVec>
 4d0:	afa40020 	sw	a0,32(sp)
 4d4:	0c000000 	jal	0 <Quake_AddVec>
 4d8:	e7a0001c 	swc1	$f0,28(sp)
 4dc:	c7a2001c 	lwc1	$f2,28(sp)
 4e0:	8fa40020 	lw	a0,32(sp)
 4e4:	8fa50024 	lw	a1,36(sp)
 4e8:	46020102 	mul.s	$f4,$f0,$f2
 4ec:	44061000 	mfc1	a2,$f2
 4f0:	44072000 	mfc1	a3,$f4
 4f4:	0c000000 	jal	0 <Quake_AddVec>
 4f8:	00000000 	nop
 4fc:	8fa40020 	lw	a0,32(sp)
 500:	848e001e 	lh	t6,30(a0)
 504:	25cfffff 	addiu	t7,t6,-1
 508:	a48f001e 	sh	t7,30(a0)
 50c:	8483001e 	lh	v1,30(a0)
 510:	8fbf0014 	lw	ra,20(sp)
 514:	27bd0020 	addiu	sp,sp,32
 518:	00601025 	move	v0,v1
 51c:	03e00008 	jr	ra
 520:	00000000 	nop

00000524 <Quake_Callback4>:
 524:	27bdffd8 	addiu	sp,sp,-40
 528:	afbf001c 	sw	ra,28(sp)
 52c:	afb00018 	sw	s0,24(sp)
 530:	afa5002c 	sw	a1,44(sp)
 534:	8483001e 	lh	v1,30(a0)
 538:	00808025 	move	s0,a0
 53c:	5860001a 	blezl	v1,5a8 <Quake_Callback4+0x84>
 540:	8fbf001c 	lw	ra,28(sp)
 544:	0c000000 	jal	0 <Quake_AddVec>
 548:	00000000 	nop
 54c:	860e001e 	lh	t6,30(s0)
 550:	860f0002 	lh	t7,2(s0)
 554:	448e2000 	mtc1	t6,$f4
 558:	448f4000 	mtc1	t7,$f8
 55c:	468021a0 	cvt.s.w	$f6,$f4
 560:	468042a0 	cvt.s.w	$f10,$f8
 564:	460a3403 	div.s	$f16,$f6,$f10
 568:	46100082 	mul.s	$f2,$f0,$f16
 56c:	0c000000 	jal	0 <Quake_AddVec>
 570:	e7a20024 	swc1	$f2,36(sp)
 574:	c7a20024 	lwc1	$f2,36(sp)
 578:	02002025 	move	a0,s0
 57c:	8fa5002c 	lw	a1,44(sp)
 580:	46020482 	mul.s	$f18,$f0,$f2
 584:	44061000 	mfc1	a2,$f2
 588:	44079000 	mfc1	a3,$f18
 58c:	0c000000 	jal	0 <Quake_AddVec>
 590:	00000000 	nop
 594:	8618001e 	lh	t8,30(s0)
 598:	2719ffff 	addiu	t9,t8,-1
 59c:	a619001e 	sh	t9,30(s0)
 5a0:	8603001e 	lh	v1,30(s0)
 5a4:	8fbf001c 	lw	ra,28(sp)
 5a8:	8fb00018 	lw	s0,24(sp)
 5ac:	27bd0028 	addiu	sp,sp,40
 5b0:	03e00008 	jr	ra
 5b4:	00601025 	move	v0,v1

000005b8 <Quake_GetFreeIndex>:
 5b8:	27bdffe0 	addiu	sp,sp,-32
 5bc:	3c020000 	lui	v0,0x0
 5c0:	afbf0014 	sw	ra,20(sp)
 5c4:	3c050001 	lui	a1,0x1
 5c8:	24420000 	addiu	v0,v0,0
 5cc:	8fa70018 	lw	a3,24(sp)
 5d0:	00002025 	move	a0,zero
 5d4:	24060004 	li	a2,4
 5d8:	8c4e0008 	lw	t6,8(v0)
 5dc:	55c00005 	bnezl	t6,5f4 <Quake_GetFreeIndex+0x3c>
 5e0:	8443001e 	lh	v1,30(v0)
 5e4:	00803825 	move	a3,a0
 5e8:	1000000a 	b	614 <Quake_GetFreeIndex+0x5c>
 5ec:	3c050002 	lui	a1,0x2
 5f0:	8443001e 	lh	v1,30(v0)
 5f4:	0065082a 	slt	at,v1,a1
 5f8:	50200004 	beqzl	at,60c <Quake_GetFreeIndex+0x54>
 5fc:	24840001 	addiu	a0,a0,1
 600:	00602825 	move	a1,v1
 604:	00803825 	move	a3,a0
 608:	24840001 	addiu	a0,a0,1
 60c:	1486fff2 	bne	a0,a2,5d8 <Quake_GetFreeIndex+0x20>
 610:	24420024 	addiu	v0,v0,36
 614:	3c010002 	lui	at,0x2
 618:	10a10006 	beq	a1,at,634 <Quake_GetFreeIndex+0x7c>
 61c:	3c040000 	lui	a0,0x0
 620:	24840000 	addiu	a0,a0,0
 624:	00e02825 	move	a1,a3
 628:	0c000000 	jal	0 <Quake_AddVec>
 62c:	afa70018 	sw	a3,24(sp)
 630:	8fa70018 	lw	a3,24(sp)
 634:	8fbf0014 	lw	ra,20(sp)
 638:	00071400 	sll	v0,a3,0x10
 63c:	00021403 	sra	v0,v0,0x10
 640:	03e00008 	jr	ra
 644:	27bd0020 	addiu	sp,sp,32

00000648 <Quake_AddImpl>:
 648:	27bdffe0 	addiu	sp,sp,-32
 64c:	afbf0014 	sw	ra,20(sp)
 650:	afa40020 	sw	a0,32(sp)
 654:	0c000000 	jal	0 <Quake_AddVec>
 658:	afa50024 	sw	a1,36(sp)
 65c:	000270c0 	sll	t6,v0,0x3
 660:	01c27021 	addu	t6,t6,v0
 664:	3c0f0000 	lui	t7,0x0
 668:	25ef0000 	addiu	t7,t7,0
 66c:	000e7080 	sll	t6,t6,0x2
 670:	01cf2021 	addu	a0,t6,t7
 674:	a7a2001e 	sh	v0,30(sp)
 678:	afa40018 	sw	a0,24(sp)
 67c:	00002825 	move	a1,zero
 680:	0c000000 	jal	0 <Quake_AddVec>
 684:	24060024 	li	a2,36
 688:	8fa30018 	lw	v1,24(sp)
 68c:	8fa40020 	lw	a0,32(sp)
 690:	24080001 	li	t0,1
 694:	ac640004 	sw	a0,4(v1)
 698:	84980164 	lh	t8,356(a0)
 69c:	a4780020 	sh	t8,32(v1)
 6a0:	8fb90024 	lw	t9,36(sp)
 6a4:	a468001c 	sh	t0,28(v1)
 6a8:	0c000000 	jal	0 <Quake_AddVec>
 6ac:	ac790008 	sw	t9,8(v1)
 6b0:	3c014780 	lui	at,0x4780
 6b4:	44812000 	mtc1	at,$f4
 6b8:	87ae001e 	lh	t6,30(sp)
 6bc:	8fa20018 	lw	v0,24(sp)
 6c0:	46040182 	mul.s	$f6,$f0,$f4
 6c4:	3c040000 	lui	a0,0x0
 6c8:	24840000 	addiu	a0,a0,0
 6cc:	4600320d 	trunc.w.s	$f8,$f6
 6d0:	440c4000 	mfc1	t4,$f8
 6d4:	00000000 	nop
 6d8:	318dfffc 	andi	t5,t4,0xfffc
 6dc:	01ae7821 	addu	t7,t5,t6
 6e0:	a44f0000 	sh	t7,0(v0)
 6e4:	84980000 	lh	t8,0(a0)
 6e8:	8fbf0014 	lw	ra,20(sp)
 6ec:	27bd0020 	addiu	sp,sp,32
 6f0:	27190001 	addiu	t9,t8,1
 6f4:	03e00008 	jr	ra
 6f8:	a4990000 	sh	t9,0(a0)

000006fc <Quake_Remove>:
 6fc:	3c020000 	lui	v0,0x0
 700:	240effff 	li	t6,-1
 704:	24420000 	addiu	v0,v0,0
 708:	ac800008 	sw	zero,8(a0)
 70c:	a48e001e 	sh	t6,30(a0)
 710:	844f0000 	lh	t7,0(v0)
 714:	25f8ffff 	addiu	t8,t7,-1
 718:	03e00008 	jr	ra
 71c:	a4580000 	sh	t8,0(v0)

00000720 <Quake_GetRequest>:
 720:	afa40000 	sw	a0,0(sp)
 724:	00042400 	sll	a0,a0,0x10
 728:	00042403 	sra	a0,a0,0x10
 72c:	308e0003 	andi	t6,a0,0x3
 730:	000e78c0 	sll	t7,t6,0x3
 734:	01ee7821 	addu	t7,t7,t6
 738:	3c180000 	lui	t8,0x0
 73c:	27180000 	addiu	t8,t8,0
 740:	000f7880 	sll	t7,t7,0x2
 744:	01f81821 	addu	v1,t7,t8
 748:	8c790008 	lw	t9,8(v1)
 74c:	57200004 	bnezl	t9,760 <Quake_GetRequest+0x40>
 750:	84680000 	lh	t0,0(v1)
 754:	03e00008 	jr	ra
 758:	00001025 	move	v0,zero
 75c:	84680000 	lh	t0,0(v1)
 760:	00601025 	move	v0,v1
 764:	10880003 	beq	a0,t0,774 <Quake_GetRequest+0x54>
 768:	00000000 	nop
 76c:	03e00008 	jr	ra
 770:	00001025 	move	v0,zero
 774:	03e00008 	jr	ra
 778:	00000000 	nop

0000077c <Quake_SetValue>:
 77c:	27bdffe8 	addiu	sp,sp,-24
 780:	afa5001c 	sw	a1,28(sp)
 784:	afa60020 	sw	a2,32(sp)
 788:	00063400 	sll	a2,a2,0x10
 78c:	00052c00 	sll	a1,a1,0x10
 790:	afa40018 	sw	a0,24(sp)
 794:	00042400 	sll	a0,a0,0x10
 798:	00052c03 	sra	a1,a1,0x10
 79c:	00063403 	sra	a2,a2,0x10
 7a0:	afbf0014 	sw	ra,20(sp)
 7a4:	00042403 	sra	a0,a0,0x10
 7a8:	a7a60022 	sh	a2,34(sp)
 7ac:	0c000000 	jal	0 <Quake_AddVec>
 7b0:	a7a5001e 	sh	a1,30(sp)
 7b4:	87a5001e 	lh	a1,30(sp)
 7b8:	14400003 	bnez	v0,7c8 <Quake_SetValue+0x4c>
 7bc:	87a60022 	lh	a2,34(sp)
 7c0:	10000036 	b	89c <Quake_SetValue+0x120>
 7c4:	00001025 	move	v0,zero
 7c8:	28a10081 	slti	at,a1,129
 7cc:	14200007 	bnez	at,7ec <Quake_SetValue+0x70>
 7d0:	24010100 	li	at,256
 7d4:	10a1002c 	beq	a1,at,888 <Quake_SetValue+0x10c>
 7d8:	24010200 	li	at,512
 7dc:	50a1002f 	beql	a1,at,89c <Quake_SetValue+0x120>
 7e0:	a446001c 	sh	a2,28(v0)
 7e4:	1000002e 	b	8a0 <Quake_SetValue+0x124>
 7e8:	8fbf0014 	lw	ra,20(sp)
 7ec:	28a10041 	slti	at,a1,65
 7f0:	14200005 	bnez	at,808 <Quake_SetValue+0x8c>
 7f4:	24010080 	li	at,128
 7f8:	10a10021 	beq	a1,at,880 <Quake_SetValue+0x104>
 7fc:	00000000 	nop
 800:	10000027 	b	8a0 <Quake_SetValue+0x124>
 804:	8fbf0014 	lw	ra,20(sp)
 808:	28a10021 	slti	at,a1,33
 80c:	14200006 	bnez	at,828 <Quake_SetValue+0xac>
 810:	24aeffff 	addiu	t6,a1,-1
 814:	24010040 	li	at,64
 818:	10a10017 	beq	a1,at,878 <Quake_SetValue+0xfc>
 81c:	00000000 	nop
 820:	1000001f 	b	8a0 <Quake_SetValue+0x124>
 824:	8fbf0014 	lw	ra,20(sp)
 828:	2dc10020 	sltiu	at,t6,32
 82c:	1020001b 	beqz	at,89c <Quake_SetValue+0x120>
 830:	000e7080 	sll	t6,t6,0x2
 834:	3c010000 	lui	at,0x0
 838:	002e0821 	addu	at,at,t6
 83c:	8c2e0078 	lw	t6,120(at)
 840:	01c00008 	jr	t6
 844:	00000000 	nop
 848:	10000014 	b	89c <Quake_SetValue+0x120>
 84c:	a446001a 	sh	a2,26(v0)
 850:	10000012 	b	89c <Quake_SetValue+0x120>
 854:	a446000c 	sh	a2,12(v0)
 858:	10000010 	b	89c <Quake_SetValue+0x120>
 85c:	a446000e 	sh	a2,14(v0)
 860:	1000000e 	b	89c <Quake_SetValue+0x120>
 864:	a4460010 	sh	a2,16(v0)
 868:	1000000c 	b	89c <Quake_SetValue+0x120>
 86c:	a4460012 	sh	a2,18(v0)
 870:	1000000a 	b	89c <Quake_SetValue+0x120>
 874:	a4460014 	sh	a2,20(v0)
 878:	10000008 	b	89c <Quake_SetValue+0x120>
 87c:	a4460016 	sh	a2,22(v0)
 880:	10000006 	b	89c <Quake_SetValue+0x120>
 884:	a4460018 	sh	a2,24(v0)
 888:	a446001e 	sh	a2,30(v0)
 88c:	844f001e 	lh	t7,30(v0)
 890:	10000002 	b	89c <Quake_SetValue+0x120>
 894:	a44f0002 	sh	t7,2(v0)
 898:	a446001c 	sh	a2,28(v0)
 89c:	8fbf0014 	lw	ra,20(sp)
 8a0:	27bd0018 	addiu	sp,sp,24
 8a4:	03e00008 	jr	ra
 8a8:	00000000 	nop

000008ac <Quake_SetSpeed>:
 8ac:	27bdffe8 	addiu	sp,sp,-24
 8b0:	afa40018 	sw	a0,24(sp)
 8b4:	00042400 	sll	a0,a0,0x10
 8b8:	afbf0014 	sw	ra,20(sp)
 8bc:	00042403 	sra	a0,a0,0x10
 8c0:	0c000000 	jal	0 <Quake_AddVec>
 8c4:	afa5001c 	sw	a1,28(sp)
 8c8:	10400004 	beqz	v0,8dc <Quake_SetSpeed+0x30>
 8cc:	87ae001e 	lh	t6,30(sp)
 8d0:	a44e001a 	sh	t6,26(v0)
 8d4:	10000002 	b	8e0 <Quake_SetSpeed+0x34>
 8d8:	24020001 	li	v0,1
 8dc:	00001025 	move	v0,zero
 8e0:	8fbf0014 	lw	ra,20(sp)
 8e4:	27bd0018 	addiu	sp,sp,24
 8e8:	03e00008 	jr	ra
 8ec:	00000000 	nop

000008f0 <Quake_SetCountdown>:
 8f0:	27bdffe8 	addiu	sp,sp,-24
 8f4:	afa40018 	sw	a0,24(sp)
 8f8:	00042400 	sll	a0,a0,0x10
 8fc:	afbf0014 	sw	ra,20(sp)
 900:	00042403 	sra	a0,a0,0x10
 904:	0c000000 	jal	0 <Quake_AddVec>
 908:	afa5001c 	sw	a1,28(sp)
 90c:	10400006 	beqz	v0,928 <Quake_SetCountdown+0x38>
 910:	87ae001e 	lh	t6,30(sp)
 914:	a44e001e 	sh	t6,30(v0)
 918:	844f001e 	lh	t7,30(v0)
 91c:	a44f0002 	sh	t7,2(v0)
 920:	10000002 	b	92c <Quake_SetCountdown+0x3c>
 924:	24020001 	li	v0,1
 928:	00001025 	move	v0,zero
 92c:	8fbf0014 	lw	ra,20(sp)
 930:	27bd0018 	addiu	sp,sp,24
 934:	03e00008 	jr	ra
 938:	00000000 	nop

0000093c <Quake_GetCountdown>:
 93c:	27bdffe8 	addiu	sp,sp,-24
 940:	afa40018 	sw	a0,24(sp)
 944:	00042400 	sll	a0,a0,0x10
 948:	afbf0014 	sw	ra,20(sp)
 94c:	0c000000 	jal	0 <Quake_AddVec>
 950:	00042403 	sra	a0,a0,0x10
 954:	10400003 	beqz	v0,964 <Quake_GetCountdown+0x28>
 958:	8fbf0014 	lw	ra,20(sp)
 95c:	10000002 	b	968 <Quake_GetCountdown+0x2c>
 960:	8442001e 	lh	v0,30(v0)
 964:	00001025 	move	v0,zero
 968:	03e00008 	jr	ra
 96c:	27bd0018 	addiu	sp,sp,24

00000970 <Quake_SetQuakeValues>:
 970:	27bdffe8 	addiu	sp,sp,-24
 974:	afa40018 	sw	a0,24(sp)
 978:	00042400 	sll	a0,a0,0x10
 97c:	afbf0014 	sw	ra,20(sp)
 980:	00042403 	sra	a0,a0,0x10
 984:	afa5001c 	sw	a1,28(sp)
 988:	afa60020 	sw	a2,32(sp)
 98c:	0c000000 	jal	0 <Quake_AddVec>
 990:	afa70024 	sw	a3,36(sp)
 994:	1040000a 	beqz	v0,9c0 <Quake_SetQuakeValues+0x50>
 998:	87ae001e 	lh	t6,30(sp)
 99c:	a44e000c 	sh	t6,12(v0)
 9a0:	87af0022 	lh	t7,34(sp)
 9a4:	a44f000e 	sh	t7,14(v0)
 9a8:	87b80026 	lh	t8,38(sp)
 9ac:	a4580010 	sh	t8,16(v0)
 9b0:	87b9002a 	lh	t9,42(sp)
 9b4:	a4590012 	sh	t9,18(v0)
 9b8:	10000002 	b	9c4 <Quake_SetQuakeValues+0x54>
 9bc:	24020001 	li	v0,1
 9c0:	00001025 	move	v0,zero
 9c4:	8fbf0014 	lw	ra,20(sp)
 9c8:	27bd0018 	addiu	sp,sp,24
 9cc:	03e00008 	jr	ra
 9d0:	00000000 	nop

000009d4 <Quake_SetUnkValues>:
 9d4:	27bdffe8 	addiu	sp,sp,-24
 9d8:	afa40018 	sw	a0,24(sp)
 9dc:	00042400 	sll	a0,a0,0x10
 9e0:	afbf0014 	sw	ra,20(sp)
 9e4:	00042403 	sra	a0,a0,0x10
 9e8:	afa5001c 	sw	a1,28(sp)
 9ec:	afa60020 	sw	a2,32(sp)
 9f0:	0c000000 	jal	0 <Quake_AddVec>
 9f4:	afa70024 	sw	a3,36(sp)
 9f8:	1040000a 	beqz	v0,a24 <Quake_SetUnkValues+0x50>
 9fc:	87ae001e 	lh	t6,30(sp)
 a00:	a44e001c 	sh	t6,28(v0)
 a04:	27af0020 	addiu	t7,sp,32
 a08:	8df90000 	lw	t9,0(t7)
 a0c:	a8590014 	swl	t9,20(v0)
 a10:	b8590017 	swr	t9,23(v0)
 a14:	95f90004 	lhu	t9,4(t7)
 a18:	a4590018 	sh	t9,24(v0)
 a1c:	10000002 	b	a28 <Quake_SetUnkValues+0x54>
 a20:	24020001 	li	v0,1
 a24:	00001025 	move	v0,zero
 a28:	8fbf0014 	lw	ra,20(sp)
 a2c:	27bd0018 	addiu	sp,sp,24
 a30:	03e00008 	jr	ra
 a34:	00000000 	nop

00000a38 <Quake_Init>:
 a38:	3c040000 	lui	a0,0x0
 a3c:	24840000 	addiu	a0,a0,0
 a40:	00001025 	move	v0,zero
 a44:	24050024 	li	a1,36
 a48:	00450019 	multu	v0,a1
 a4c:	24420001 	addiu	v0,v0,1
 a50:	00021400 	sll	v0,v0,0x10
 a54:	00021403 	sra	v0,v0,0x10
 a58:	28410004 	slti	at,v0,4
 a5c:	00007012 	mflo	t6
 a60:	008e1821 	addu	v1,a0,t6
 a64:	ac600008 	sw	zero,8(v1)
 a68:	1420fff7 	bnez	at,a48 <Quake_Init+0x10>
 a6c:	a460001e 	sh	zero,30(v1)
 a70:	240f0001 	li	t7,1
 a74:	3c010000 	lui	at,0x0
 a78:	a42f0000 	sh	t7,0(at)
 a7c:	3c010000 	lui	at,0x0
 a80:	03e00008 	jr	ra
 a84:	a4200000 	sh	zero,0(at)

00000a88 <Quake_Add>:
 a88:	27bdffe8 	addiu	sp,sp,-24
 a8c:	afbf0014 	sw	ra,20(sp)
 a90:	0c000000 	jal	0 <Quake_AddVec>
 a94:	00000000 	nop
 a98:	8fbf0014 	lw	ra,20(sp)
 a9c:	84420000 	lh	v0,0(v0)
 aa0:	27bd0018 	addiu	sp,sp,24
 aa4:	03e00008 	jr	ra
 aa8:	00000000 	nop

00000aac <Quake_RemoveFromIdx>:
 aac:	27bdffe8 	addiu	sp,sp,-24
 ab0:	afa40018 	sw	a0,24(sp)
 ab4:	00042400 	sll	a0,a0,0x10
 ab8:	afbf0014 	sw	ra,20(sp)
 abc:	0c000000 	jal	0 <Quake_AddVec>
 ac0:	00042403 	sra	a0,a0,0x10
 ac4:	10400005 	beqz	v0,adc <Quake_RemoveFromIdx+0x30>
 ac8:	00402025 	move	a0,v0
 acc:	0c000000 	jal	0 <Quake_AddVec>
 ad0:	00000000 	nop
 ad4:	10000002 	b	ae0 <Quake_RemoveFromIdx+0x34>
 ad8:	24020001 	li	v0,1
 adc:	00001025 	move	v0,zero
 ae0:	8fbf0014 	lw	ra,20(sp)
 ae4:	27bd0018 	addiu	sp,sp,24
 ae8:	03e00008 	jr	ra
 aec:	00000000 	nop

00000af0 <Quake_Calc>:
 af0:	27bdff48 	addiu	sp,sp,-184
 af4:	44800000 	mtc1	zero,$f0
 af8:	afbf004c 	sw	ra,76(sp)
 afc:	afb40048 	sw	s4,72(sp)
 b00:	afb30044 	sw	s3,68(sp)
 b04:	afb20040 	sw	s2,64(sp)
 b08:	afb1003c 	sw	s1,60(sp)
 b0c:	afb00038 	sw	s0,56(sp)
 b10:	f7ba0030 	sdc1	$f26,48(sp)
 b14:	f7b80028 	sdc1	$f24,40(sp)
 b18:	f7b60020 	sdc1	$f22,32(sp)
 b1c:	f7b40018 	sdc1	$f20,24(sp)
 b20:	afa400b8 	sw	a0,184(sp)
 b24:	8c8f008c 	lw	t7,140(a0)
 b28:	e7a00068 	swc1	$f0,104(sp)
 b2c:	e7a0006c 	swc1	$f0,108(sp)
 b30:	e7a00070 	swc1	$f0,112(sp)
 b34:	afaf0064 	sw	t7,100(sp)
 b38:	a4a00018 	sh	zero,24(a1)
 b3c:	a4a0001a 	sh	zero,26(a1)
 b40:	a4a0001c 	sh	zero,28(a1)
 b44:	3c180000 	lui	t8,0x0
 b48:	e4a00000 	swc1	$f0,0(a1)
 b4c:	e4a00004 	swc1	$f0,4(a1)
 b50:	e4a00008 	swc1	$f0,8(a1)
 b54:	e4a0000c 	swc1	$f0,12(a1)
 b58:	e4a00010 	swc1	$f0,16(a1)
 b5c:	e4a00014 	swc1	$f0,20(a1)
 b60:	e4a00020 	swc1	$f0,32(a1)
 b64:	87180000 	lh	t8,0(t8)
 b68:	00a08025 	move	s0,a1
 b6c:	00009025 	move	s2,zero
 b70:	17000003 	bnez	t8,b80 <Quake_Calc+0x90>
 b74:	3c110000 	lui	s1,0x0
 b78:	100000ae 	b	e34 <Quake_Calc+0x344>
 b7c:	00001025 	move	v0,zero
 b80:	3c010000 	lui	at,0x0
 b84:	c43a00f8 	lwc1	$f26,248(at)
 b88:	26310000 	addiu	s1,s1,0
 b8c:	27b40068 	addiu	s4,sp,104
 b90:	27b3008c 	addiu	s3,sp,140
 b94:	8e260008 	lw	a2,8(s1)
 b98:	10c0009f 	beqz	a2,e18 <Quake_Calc+0x328>
 b9c:	00000000 	nop
 ba0:	86250020 	lh	a1,32(s1)
 ba4:	8fb90064 	lw	t9,100(sp)
 ba8:	3c040000 	lui	a0,0x0
 bac:	00054080 	sll	t0,a1,0x2
 bb0:	03284821 	addu	t1,t9,t0
 bb4:	8d2a0790 	lw	t2,1936(t1)
 bb8:	8fad00b8 	lw	t5,184(sp)
 bbc:	55400008 	bnezl	t2,be0 <Quake_Calc+0xf0>
 bc0:	8e2b0004 	lw	t3,4(s1)
 bc4:	0c000000 	jal	0 <Quake_AddVec>
 bc8:	24840040 	addiu	a0,a0,64
 bcc:	0c000000 	jal	0 <Quake_AddVec>
 bd0:	02202025 	move	a0,s1
 bd4:	10000090 	b	e18 <Quake_Calc+0x328>
 bd8:	00000000 	nop
 bdc:	8e2b0004 	lw	t3,4(s1)
 be0:	85ae0164 	lh	t6,356(t5)
 be4:	8622001a 	lh	v0,26(s1)
 be8:	856c0164 	lh	t4,356(t3)
 bec:	00021823 	negu	v1,v0
 bf0:	018e3826 	xor	a3,t4,t6
 bf4:	04400003 	bltz	v0,c04 <Quake_Calc+0x114>
 bf8:	0007382b 	sltu	a3,zero,a3
 bfc:	10000001 	b	c04 <Quake_Calc+0x114>
 c00:	00401825 	move	v1,v0
 c04:	44832000 	mtc1	v1,$f4
 c08:	3c014700 	lui	at,0x4700
 c0c:	44814000 	mtc1	at,$f8
 c10:	468021a0 	cvt.s.w	$f6,$f4
 c14:	00067880 	sll	t7,a2,0x2
 c18:	3c190000 	lui	t9,0x0
 c1c:	032fc821 	addu	t9,t9,t7
 c20:	8f390000 	lw	t9,0(t9)
 c24:	02202025 	move	a0,s1
 c28:	46083583 	div.s	$f22,$f6,$f8
 c2c:	02602825 	move	a1,s3
 c30:	afa70074 	sw	a3,116(sp)
 c34:	0320f809 	jalr	t9
 c38:	4600b606 	mov.s	$f24,$f22
 c3c:	14400005 	bnez	v0,c54 <Quake_Calc+0x164>
 c40:	8fa70074 	lw	a3,116(sp)
 c44:	0c000000 	jal	0 <Quake_AddVec>
 c48:	02202025 	move	a0,s1
 c4c:	10000072 	b	e18 <Quake_Calc+0x328>
 c50:	00000000 	nop
 c54:	14e00070 	bnez	a3,e18 <Quake_Calc+0x328>
 c58:	02602025 	move	a0,s3
 c5c:	c6000000 	lwc1	$f0,0(s0)
 c60:	c7aa008c 	lwc1	$f10,140(sp)
 c64:	46000085 	abs.s	$f2,$f0
 c68:	46005005 	abs.s	$f0,$f10
 c6c:	4600103c 	c.lt.s	$f2,$f0
 c70:	00000000 	nop
 c74:	45020003 	bc1fl	c84 <Quake_Calc+0x194>
 c78:	c6000004 	lwc1	$f0,4(s0)
 c7c:	e60a0000 	swc1	$f10,0(s0)
 c80:	c6000004 	lwc1	$f0,4(s0)
 c84:	c7b00090 	lwc1	$f16,144(sp)
 c88:	46000085 	abs.s	$f2,$f0
 c8c:	46008005 	abs.s	$f0,$f16
 c90:	4600103c 	c.lt.s	$f2,$f0
 c94:	00000000 	nop
 c98:	45020003 	bc1fl	ca8 <Quake_Calc+0x1b8>
 c9c:	c6000008 	lwc1	$f0,8(s0)
 ca0:	e6100004 	swc1	$f16,4(s0)
 ca4:	c6000008 	lwc1	$f0,8(s0)
 ca8:	c7b20094 	lwc1	$f18,148(sp)
 cac:	46000085 	abs.s	$f2,$f0
 cb0:	46009005 	abs.s	$f0,$f18
 cb4:	4600103c 	c.lt.s	$f2,$f0
 cb8:	00000000 	nop
 cbc:	45020003 	bc1fl	ccc <Quake_Calc+0x1dc>
 cc0:	c600000c 	lwc1	$f0,12(s0)
 cc4:	e6120008 	swc1	$f18,8(s0)
 cc8:	c600000c 	lwc1	$f0,12(s0)
 ccc:	c7a40098 	lwc1	$f4,152(sp)
 cd0:	46000085 	abs.s	$f2,$f0
 cd4:	46002005 	abs.s	$f0,$f4
 cd8:	4600103c 	c.lt.s	$f2,$f0
 cdc:	00000000 	nop
 ce0:	45020003 	bc1fl	cf0 <Quake_Calc+0x200>
 ce4:	c6000010 	lwc1	$f0,16(s0)
 ce8:	e604000c 	swc1	$f4,12(s0)
 cec:	c6000010 	lwc1	$f0,16(s0)
 cf0:	c7a6009c 	lwc1	$f6,156(sp)
 cf4:	46000085 	abs.s	$f2,$f0
 cf8:	46003005 	abs.s	$f0,$f6
 cfc:	4600103c 	c.lt.s	$f2,$f0
 d00:	00000000 	nop
 d04:	45020003 	bc1fl	d14 <Quake_Calc+0x224>
 d08:	c6000014 	lwc1	$f0,20(s0)
 d0c:	e6060010 	swc1	$f6,16(s0)
 d10:	c6000014 	lwc1	$f0,20(s0)
 d14:	c7a800a0 	lwc1	$f8,160(sp)
 d18:	46000085 	abs.s	$f2,$f0
 d1c:	46004005 	abs.s	$f0,$f8
 d20:	4600103c 	c.lt.s	$f2,$f0
 d24:	00000000 	nop
 d28:	45020003 	bc1fl	d38 <Quake_Calc+0x248>
 d2c:	86180018 	lh	t8,24(s0)
 d30:	e6080014 	swc1	$f8,20(s0)
 d34:	86180018 	lh	t8,24(s0)
 d38:	87a800a4 	lh	t0,164(sp)
 d3c:	0308082a 	slt	at,t8,t0
 d40:	50200005 	beqzl	at,d58 <Quake_Calc+0x268>
 d44:	860a001c 	lh	t2,28(s0)
 d48:	a6080018 	sh	t0,24(s0)
 d4c:	87a900a6 	lh	t1,166(sp)
 d50:	a609001a 	sh	t1,26(s0)
 d54:	860a001c 	lh	t2,28(s0)
 d58:	87ab00a8 	lh	t3,168(sp)
 d5c:	014b082a 	slt	at,t2,t3
 d60:	10200002 	beqz	at,d6c <Quake_Calc+0x27c>
 d64:	00000000 	nop
 d68:	a60b001c 	sh	t3,28(s0)
 d6c:	0c000000 	jal	0 <Quake_AddVec>
 d70:	02802825 	move	a1,s4
 d74:	46160502 	mul.s	$f20,$f0,$f22
 d78:	27a40098 	addiu	a0,sp,152
 d7c:	0c000000 	jal	0 <Quake_AddVec>
 d80:	02802825 	move	a1,s4
 d84:	46160082 	mul.s	$f2,$f0,$f22
 d88:	26520001 	addiu	s2,s2,1
 d8c:	4602a03c 	c.lt.s	$f20,$f2
 d90:	00000000 	nop
 d94:	45020003 	bc1fl	da4 <Quake_Calc+0x2b4>
 d98:	860d0018 	lh	t5,24(s0)
 d9c:	46001506 	mov.s	$f20,$f2
 da0:	860d0018 	lh	t5,24(s0)
 da4:	448d5000 	mtc1	t5,$f10
 da8:	00000000 	nop
 dac:	46805420 	cvt.s.w	$f16,$f10
 db0:	461a8482 	mul.s	$f18,$f16,$f26
 db4:	00000000 	nop
 db8:	46189002 	mul.s	$f0,$f18,$f24
 dbc:	4600a03c 	c.lt.s	$f20,$f0
 dc0:	00000000 	nop
 dc4:	45000002 	bc1f	dd0 <Quake_Calc+0x2e0>
 dc8:	00000000 	nop
 dcc:	46000506 	mov.s	$f20,$f0
 dd0:	860c001c 	lh	t4,28(s0)
 dd4:	448c2000 	mtc1	t4,$f4
 dd8:	00000000 	nop
 ddc:	468021a0 	cvt.s.w	$f6,$f4
 de0:	461a3202 	mul.s	$f8,$f6,$f26
 de4:	00000000 	nop
 de8:	46184002 	mul.s	$f0,$f8,$f24
 dec:	4600a03c 	c.lt.s	$f20,$f0
 df0:	00000000 	nop
 df4:	45000002 	bc1f	e00 <Quake_Calc+0x310>
 df8:	00000000 	nop
 dfc:	46000506 	mov.s	$f20,$f0
 e00:	c60a0020 	lwc1	$f10,32(s0)
 e04:	4614503c 	c.lt.s	$f10,$f20
 e08:	00000000 	nop
 e0c:	45000002 	bc1f	e18 <Quake_Calc+0x328>
 e10:	00000000 	nop
 e14:	e6140020 	swc1	$f20,32(s0)
 e18:	3c0e0000 	lui	t6,0x0
 e1c:	25ce0090 	addiu	t6,t6,144
 e20:	26310024 	addiu	s1,s1,36
 e24:	562eff5c 	bnel	s1,t6,b98 <Quake_Calc+0xa8>
 e28:	8e260008 	lw	a2,8(s1)
 e2c:	00121400 	sll	v0,s2,0x10
 e30:	00021403 	sra	v0,v0,0x10
 e34:	8fbf004c 	lw	ra,76(sp)
 e38:	d7b40018 	ldc1	$f20,24(sp)
 e3c:	d7b60020 	ldc1	$f22,32(sp)
 e40:	d7b80028 	ldc1	$f24,40(sp)
 e44:	d7ba0030 	ldc1	$f26,48(sp)
 e48:	8fb00038 	lw	s0,56(sp)
 e4c:	8fb1003c 	lw	s1,60(sp)
 e50:	8fb20040 	lw	s2,64(sp)
 e54:	8fb30044 	lw	s3,68(sp)
 e58:	8fb40048 	lw	s4,72(sp)
 e5c:	03e00008 	jr	ra
 e60:	27bd00b8 	addiu	sp,sp,184
	...
