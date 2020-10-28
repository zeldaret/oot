
build/src/overlays/actors/ovl_Obj_Comb/z_obj_comb.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ObjComb_Break>:
   0:	27bdff18 	addiu	sp,sp,-232
   4:	f7be0070 	sdc1	$f30,112(sp)
   8:	3c0141c8 	lui	at,0x41c8
   c:	4481f000 	mtc1	at,$f30
  10:	f7bc0068 	sdc1	$f28,104(sp)
  14:	3c014290 	lui	at,0x4290
  18:	4481e000 	mtc1	at,$f28
  1c:	f7ba0060 	sdc1	$f26,96(sp)
  20:	3c010000 	lui	at,0x0
  24:	c43a0030 	lwc1	$f26,48(at)
  28:	f7b80058 	sdc1	$f24,88(sp)
  2c:	3c010000 	lui	at,0x0
  30:	c4380034 	lwc1	$f24,52(at)
  34:	afbe0098 	sw	s8,152(sp)
  38:	f7b60050 	sdc1	$f22,80(sp)
  3c:	3c013f00 	lui	at,0x3f00
  40:	afb70094 	sw	s7,148(sp)
  44:	afb60090 	sw	s6,144(sp)
  48:	afb5008c 	sw	s5,140(sp)
  4c:	afb30084 	sw	s3,132(sp)
  50:	afb20080 	sw	s2,128(sp)
  54:	3c1e0000 	lui	s8,0x0
  58:	248f0024 	addiu	t7,a0,36
  5c:	4481b000 	mtc1	at,$f22
  60:	afbf009c 	sw	ra,156(sp)
  64:	afb40088 	sw	s4,136(sp)
  68:	afb1007c 	sw	s1,124(sp)
  6c:	afb00078 	sw	s0,120(sp)
  70:	f7b40048 	sdc1	$f20,72(sp)
  74:	afa400e8 	sw	a0,232(sp)
  78:	afa500ec 	sw	a1,236(sp)
  7c:	00009025 	move	s2,zero
  80:	afaf00a8 	sw	t7,168(sp)
  84:	27de0000 	addiu	s8,s8,0
  88:	00009825 	move	s3,zero
  8c:	27b500d0 	addiu	s5,sp,208
  90:	27b600dc 	addiu	s6,sp,220
  94:	27b700c4 	addiu	s7,sp,196
  98:	26524e20 	addiu	s2,s2,20000
  9c:	00129400 	sll	s2,s2,0x10
  a0:	0c000000 	jal	0 <ObjComb_Break>
  a4:	00129403 	sra	s2,s2,0x10
  a8:	3c014120 	lui	at,0x4120
  ac:	44812000 	mtc1	at,$f4
  b0:	00122400 	sll	a0,s2,0x10
  b4:	00042403 	sra	a0,a0,0x10
  b8:	46040502 	mul.s	$f20,$f0,$f4
  bc:	0c000000 	jal	0 <ObjComb_Break>
  c0:	00000000 	nop
  c4:	2678fff1 	addiu	t8,s3,-15
  c8:	44984000 	mtc1	t8,$f8
  cc:	46140182 	mul.s	$f6,$f0,$f20
  d0:	00122400 	sll	a0,s2,0x10
  d4:	00042403 	sra	a0,a0,0x10
  d8:	468042a0 	cvt.s.w	$f10,$f8
  dc:	e7a600dc 	swc1	$f6,220(sp)
  e0:	46185402 	mul.s	$f16,$f10,$f24
  e4:	0c000000 	jal	0 <ObjComb_Break>
  e8:	e7b000e0 	swc1	$f16,224(sp)
  ec:	46140482 	mul.s	$f18,$f0,$f20
  f0:	02c02025 	move	a0,s6
  f4:	8fa500a8 	lw	a1,168(sp)
  f8:	02a03025 	move	a2,s5
  fc:	0c000000 	jal	0 <ObjComb_Break>
 100:	e7b200e4 	swc1	$f18,228(sp)
 104:	0c000000 	jal	0 <ObjComb_Break>
 108:	00000000 	nop
 10c:	c7a600dc 	lwc1	$f6,220(sp)
 110:	46160101 	sub.s	$f4,$f0,$f22
 114:	46163202 	mul.s	$f8,$f6,$f22
 118:	46082280 	add.s	$f10,$f4,$f8
 11c:	0c000000 	jal	0 <ObjComb_Break>
 120:	e7aa00c4 	swc1	$f10,196(sp)
 124:	c7b200e0 	lwc1	$f18,224(sp)
 128:	46160401 	sub.s	$f16,$f0,$f22
 12c:	461a9182 	mul.s	$f6,$f18,$f26
 130:	46068100 	add.s	$f4,$f16,$f6
 134:	0c000000 	jal	0 <ObjComb_Break>
 138:	e7a400c8 	swc1	$f4,200(sp)
 13c:	c7aa00e4 	lwc1	$f10,228(sp)
 140:	46160201 	sub.s	$f8,$f0,$f22
 144:	46165482 	mul.s	$f18,$f10,$f22
 148:	46124400 	add.s	$f16,$f8,$f18
 14c:	0c000000 	jal	0 <ObjComb_Break>
 150:	e7b000cc 	swc1	$f16,204(sp)
 154:	461c0182 	mul.s	$f6,$f0,$f28
 158:	2410ff38 	li	s0,-200
 15c:	461e3100 	add.s	$f4,$f6,$f30
 160:	4600228d 	trunc.w.s	$f10,$f4
 164:	44025000 	mfc1	v0,$f10
 168:	00000000 	nop
 16c:	00021c00 	sll	v1,v0,0x10
 170:	00031c03 	sra	v1,v1,0x10
 174:	28610028 	slti	at,v1,40
 178:	0002a400 	sll	s4,v0,0x10
 17c:	10200003 	beqz	at,18c <ObjComb_Break+0x18c>
 180:	0014a403 	sra	s4,s4,0x10
 184:	10000008 	b	1a8 <ObjComb_Break+0x1a8>
 188:	24110028 	li	s1,40
 18c:	28610046 	slti	at,v1,70
 190:	10200004 	beqz	at,1a4 <ObjComb_Break+0x1a4>
 194:	2410feac 	li	s0,-340
 198:	2410fee8 	li	s0,-280
 19c:	10000002 	b	1a8 <ObjComb_Break+0x1a8>
 1a0:	2411001e 	li	s1,30
 1a4:	24110014 	li	s1,20
 1a8:	0c000000 	jal	0 <ObjComb_Break>
 1ac:	00000000 	nop
 1b0:	3c010000 	lui	at,0x0
 1b4:	c4280038 	lwc1	$f8,56(at)
 1b8:	8fa400ec 	lw	a0,236(sp)
 1bc:	02a02825 	move	a1,s5
 1c0:	4608003c 	c.lt.s	$f0,$f8
 1c4:	02e03025 	move	a2,s7
 1c8:	02a03825 	move	a3,s5
 1cc:	24080004 	li	t0,4
 1d0:	45000003 	bc1f	1e0 <ObjComb_Break+0x1e0>
 1d4:	24090050 	li	t1,80
 1d8:	1000000a 	b	204 <ObjComb_Break+0x204>
 1dc:	24020060 	li	v0,96
 1e0:	3c010000 	lui	at,0x0
 1e4:	c432003c 	lwc1	$f18,60(at)
 1e8:	24020020 	li	v0,32
 1ec:	4612003c 	c.lt.s	$f0,$f18
 1f0:	00000000 	nop
 1f4:	45000003 	bc1f	204 <ObjComb_Break+0x204>
 1f8:	00000000 	nop
 1fc:	10000001 	b	204 <ObjComb_Break+0x204>
 200:	24020040 	li	v0,64
 204:	240affff 	li	t2,-1
 208:	240b0002 	li	t3,2
 20c:	afab0038 	sw	t3,56(sp)
 210:	afaa0034 	sw	t2,52(sp)
 214:	afb00010 	sw	s0,16(sp)
 218:	afa20014 	sw	v0,20(sp)
 21c:	afb10018 	sw	s1,24(sp)
 220:	afa8001c 	sw	t0,28(sp)
 224:	afa00020 	sw	zero,32(sp)
 228:	afb40024 	sw	s4,36(sp)
 22c:	afa00028 	sw	zero,40(sp)
 230:	afa0002c 	sw	zero,44(sp)
 234:	afa90030 	sw	t1,48(sp)
 238:	0c000000 	jal	0 <ObjComb_Break>
 23c:	afbe003c 	sw	s8,60(sp)
 240:	26730001 	addiu	s3,s3,1
 244:	2401001f 	li	at,31
 248:	5661ff94 	bnel	s3,at,9c <ObjComb_Break+0x9c>
 24c:	26524e20 	addiu	s2,s2,20000
 250:	8fac00e8 	lw	t4,232(sp)
 254:	3c014120 	lui	at,0x4120
 258:	44812000 	mtc1	at,$f4
 25c:	c5900024 	lwc1	$f16,36(t4)
 260:	240d0046 	li	t5,70
 264:	240e003c 	li	t6,60
 268:	e7b000d0 	swc1	$f16,208(sp)
 26c:	c5860028 	lwc1	$f6,40(t4)
 270:	240f0001 	li	t7,1
 274:	8fa400ec 	lw	a0,236(sp)
 278:	46043281 	sub.s	$f10,$f6,$f4
 27c:	02a02825 	move	a1,s5
 280:	3c064220 	lui	a2,0x4220
 284:	24070006 	li	a3,6
 288:	e7aa00d4 	swc1	$f10,212(sp)
 28c:	c588002c 	lwc1	$f8,44(t4)
 290:	afaf0018 	sw	t7,24(sp)
 294:	afae0014 	sw	t6,20(sp)
 298:	afad0010 	sw	t5,16(sp)
 29c:	0c000000 	jal	0 <ObjComb_Break>
 2a0:	e7a800d8 	swc1	$f8,216(sp)
 2a4:	8fbf009c 	lw	ra,156(sp)
 2a8:	d7b40048 	ldc1	$f20,72(sp)
 2ac:	d7b60050 	ldc1	$f22,80(sp)
 2b0:	d7b80058 	ldc1	$f24,88(sp)
 2b4:	d7ba0060 	ldc1	$f26,96(sp)
 2b8:	d7bc0068 	ldc1	$f28,104(sp)
 2bc:	d7be0070 	ldc1	$f30,112(sp)
 2c0:	8fb00078 	lw	s0,120(sp)
 2c4:	8fb1007c 	lw	s1,124(sp)
 2c8:	8fb20080 	lw	s2,128(sp)
 2cc:	8fb30084 	lw	s3,132(sp)
 2d0:	8fb40088 	lw	s4,136(sp)
 2d4:	8fb5008c 	lw	s5,140(sp)
 2d8:	8fb60090 	lw	s6,144(sp)
 2dc:	8fb70094 	lw	s7,148(sp)
 2e0:	8fbe0098 	lw	s8,152(sp)
 2e4:	03e00008 	jr	ra
 2e8:	27bd00e8 	addiu	sp,sp,232

000002ec <ObjComb_ChooseItemDrop>:
 2ec:	27bdffe0 	addiu	sp,sp,-32
 2f0:	afbf0014 	sw	ra,20(sp)
 2f4:	afa50024 	sw	a1,36(sp)
 2f8:	8482001c 	lh	v0,28(a0)
 2fc:	00803825 	move	a3,a0
 300:	3046001f 	andi	a2,v0,0x1f
 304:	00063400 	sll	a2,a2,0x10
 308:	00063403 	sra	a2,a2,0x10
 30c:	1cc00002 	bgtz	a2,318 <ObjComb_ChooseItemDrop+0x2c>
 310:	28c1001a 	slti	at,a2,26
 314:	10200025 	beqz	at,3ac <ObjComb_ChooseItemDrop+0xc0>
 318:	24010006 	li	at,6
 31c:	14c10013 	bne	a2,at,36c <ObjComb_ChooseItemDrop+0x80>
 320:	8fa40024 	lw	a0,36(sp)
 324:	00022a03 	sra	a1,v0,0x8
 328:	30a5003f 	andi	a1,a1,0x3f
 32c:	a7a6001e 	sh	a2,30(sp)
 330:	0c000000 	jal	0 <ObjComb_Break>
 334:	afa70020 	sw	a3,32(sp)
 338:	87a6001e 	lh	a2,30(sp)
 33c:	10400003 	beqz	v0,34c <ObjComb_ChooseItemDrop+0x60>
 340:	8fa70020 	lw	a3,32(sp)
 344:	10000015 	b	39c <ObjComb_ChooseItemDrop+0xb0>
 348:	2406ffff 	li	a2,-1
 34c:	84ee001c 	lh	t6,28(a3)
 350:	000e7a03 	sra	t7,t6,0x8
 354:	31f8003f 	andi	t8,t7,0x3f
 358:	0018ca00 	sll	t9,t8,0x8
 35c:	00d93025 	or	a2,a2,t9
 360:	00063400 	sll	a2,a2,0x10
 364:	1000000d 	b	39c <ObjComb_ChooseItemDrop+0xb0>
 368:	00063403 	sra	a2,a2,0x10
 36c:	a7a6001e 	sh	a2,30(sp)
 370:	0c000000 	jal	0 <ObjComb_Break>
 374:	afa70020 	sw	a3,32(sp)
 378:	3c013f00 	lui	at,0x3f00
 37c:	44812000 	mtc1	at,$f4
 380:	87a6001e 	lh	a2,30(sp)
 384:	8fa70020 	lw	a3,32(sp)
 388:	4604003c 	c.lt.s	$f0,$f4
 38c:	00000000 	nop
 390:	45000002 	bc1f	39c <ObjComb_ChooseItemDrop+0xb0>
 394:	00000000 	nop
 398:	2406ffff 	li	a2,-1
 39c:	04c00003 	bltz	a2,3ac <ObjComb_ChooseItemDrop+0xc0>
 3a0:	8fa40024 	lw	a0,36(sp)
 3a4:	0c000000 	jal	0 <ObjComb_Break>
 3a8:	24e50024 	addiu	a1,a3,36
 3ac:	8fbf0014 	lw	ra,20(sp)
 3b0:	27bd0020 	addiu	sp,sp,32
 3b4:	03e00008 	jr	ra
 3b8:	00000000 	nop

000003bc <ObjComb_Init>:
 3bc:	27bdffd0 	addiu	sp,sp,-48
 3c0:	afa50034 	sw	a1,52(sp)
 3c4:	afbf0024 	sw	ra,36(sp)
 3c8:	afb00020 	sw	s0,32(sp)
 3cc:	3c050000 	lui	a1,0x0
 3d0:	00808025 	move	s0,a0
 3d4:	0c000000 	jal	0 <ObjComb_Break>
 3d8:	24a50054 	addiu	a1,a1,84
 3dc:	26050150 	addiu	a1,s0,336
 3e0:	afa50028 	sw	a1,40(sp)
 3e4:	0c000000 	jal	0 <ObjComb_Break>
 3e8:	8fa40034 	lw	a0,52(sp)
 3ec:	3c070000 	lui	a3,0x0
 3f0:	260e0170 	addiu	t6,s0,368
 3f4:	8fa50028 	lw	a1,40(sp)
 3f8:	afae0010 	sw	t6,16(sp)
 3fc:	24e70000 	addiu	a3,a3,0
 400:	8fa40034 	lw	a0,52(sp)
 404:	0c000000 	jal	0 <ObjComb_Break>
 408:	02003025 	move	a2,s0
 40c:	0c000000 	jal	0 <ObjComb_Break>
 410:	02002025 	move	a0,s0
 414:	8fbf0024 	lw	ra,36(sp)
 418:	8fb00020 	lw	s0,32(sp)
 41c:	27bd0030 	addiu	sp,sp,48
 420:	03e00008 	jr	ra
 424:	00000000 	nop

00000428 <ObjComb_Destroy>:
 428:	27bdffe8 	addiu	sp,sp,-24
 42c:	00803825 	move	a3,a0
 430:	afbf0014 	sw	ra,20(sp)
 434:	00a02025 	move	a0,a1
 438:	0c000000 	jal	0 <ObjComb_Break>
 43c:	24e50150 	addiu	a1,a3,336
 440:	8fbf0014 	lw	ra,20(sp)
 444:	27bd0018 	addiu	sp,sp,24
 448:	03e00008 	jr	ra
 44c:	00000000 	nop

00000450 <ObjComb_SetupWait>:
 450:	3c0e0000 	lui	t6,0x0
 454:	25ce0000 	addiu	t6,t6,0
 458:	03e00008 	jr	ra
 45c:	ac8e014c 	sw	t6,332(a0)

00000460 <ObjComb_Wait>:
 460:	27bdffe0 	addiu	sp,sp,-32
 464:	afbf001c 	sw	ra,28(sp)
 468:	afb10018 	sw	s1,24(sp)
 46c:	afb00014 	sw	s0,20(sp)
 470:	848e01b0 	lh	t6,432(a0)
 474:	3c010001 	lui	at,0x1
 478:	00a08825 	move	s1,a1
 47c:	25cfffce 	addiu	t7,t6,-50
 480:	a48f01b0 	sh	t7,432(a0)
 484:	849801b0 	lh	t8,432(a0)
 488:	34211e60 	ori	at,at,0x1e60
 48c:	00808025 	move	s0,a0
 490:	07010002 	bgez	t8,49c <ObjComb_Wait+0x3c>
 494:	02212821 	addu	a1,s1,at
 498:	a48001b0 	sh	zero,432(a0)
 49c:	92030161 	lbu	v1,353(s0)
 4a0:	02202025 	move	a0,s1
 4a4:	30790002 	andi	t9,v1,0x2
 4a8:	13200018 	beqz	t9,50c <ObjComb_Wait+0xac>
 4ac:	00000000 	nop
 4b0:	8e09016c 	lw	t1,364(s0)
 4b4:	3068fffd 	andi	t0,v1,0xfffd
 4b8:	a2080161 	sb	t0,353(s0)
 4bc:	8d2a0024 	lw	t2,36(t1)
 4c0:	3c014001 	lui	at,0x4001
 4c4:	3421f866 	ori	at,at,0xf866
 4c8:	8d420000 	lw	v0,0(t2)
 4cc:	240c05dc 	li	t4,1500
 4d0:	02002025 	move	a0,s0
 4d4:	00415824 	and	t3,v0,at
 4d8:	11600003 	beqz	t3,4e8 <ObjComb_Wait+0x88>
 4dc:	00000000 	nop
 4e0:	1000000c 	b	514 <ObjComb_Wait+0xb4>
 4e4:	a60c01b0 	sh	t4,432(s0)
 4e8:	0c000000 	jal	0 <ObjComb_Break>
 4ec:	02202825 	move	a1,s1
 4f0:	02002025 	move	a0,s0
 4f4:	0c000000 	jal	0 <ObjComb_Break>
 4f8:	02202825 	move	a1,s1
 4fc:	0c000000 	jal	0 <ObjComb_Break>
 500:	02002025 	move	a0,s0
 504:	10000004 	b	518 <ObjComb_Wait+0xb8>
 508:	8e0d0130 	lw	t5,304(s0)
 50c:	0c000000 	jal	0 <ObjComb_Break>
 510:	26060150 	addiu	a2,s0,336
 514:	8e0d0130 	lw	t5,304(s0)
 518:	3c010001 	lui	at,0x1
 51c:	34211e60 	ori	at,at,0x1e60
 520:	11a00004 	beqz	t5,534 <ObjComb_Wait+0xd4>
 524:	02202025 	move	a0,s1
 528:	02212821 	addu	a1,s1,at
 52c:	0c000000 	jal	0 <ObjComb_Break>
 530:	26060150 	addiu	a2,s0,336
 534:	8fbf001c 	lw	ra,28(sp)
 538:	8fb00014 	lw	s0,20(sp)
 53c:	8fb10018 	lw	s1,24(sp)
 540:	03e00008 	jr	ra
 544:	27bd0020 	addiu	sp,sp,32

00000548 <ObjComb_Update>:
 548:	27bdffe8 	addiu	sp,sp,-24
 54c:	afbf0014 	sw	ra,20(sp)
 550:	848e01b2 	lh	t6,434(a0)
 554:	25cf2ee0 	addiu	t7,t6,12000
 558:	a48f01b2 	sh	t7,434(a0)
 55c:	afa40018 	sw	a0,24(sp)
 560:	8c99014c 	lw	t9,332(a0)
 564:	0320f809 	jalr	t9
 568:	00000000 	nop
 56c:	8fa60018 	lw	a2,24(sp)
 570:	0c000000 	jal	0 <ObjComb_Break>
 574:	84c401b2 	lh	a0,434(a2)
 578:	8fa60018 	lw	a2,24(sp)
 57c:	84d801b0 	lh	t8,432(a2)
 580:	84c80014 	lh	t0,20(a2)
 584:	44982000 	mtc1	t8,$f4
 588:	44885000 	mtc1	t0,$f10
 58c:	468021a0 	cvt.s.w	$f6,$f4
 590:	46805420 	cvt.s.w	$f16,$f10
 594:	46060202 	mul.s	$f8,$f0,$f6
 598:	46104480 	add.s	$f18,$f8,$f16
 59c:	4600910d 	trunc.w.s	$f4,$f18
 5a0:	440a2000 	mfc1	t2,$f4
 5a4:	00000000 	nop
 5a8:	a4ca00b4 	sh	t2,180(a2)
 5ac:	8fbf0014 	lw	ra,20(sp)
 5b0:	27bd0018 	addiu	sp,sp,24
 5b4:	03e00008 	jr	ra
 5b8:	00000000 	nop

000005bc <ObjComb_Draw>:
 5bc:	27bdffb8 	addiu	sp,sp,-72
 5c0:	afbf001c 	sw	ra,28(sp)
 5c4:	afb10018 	sw	s1,24(sp)
 5c8:	afb00014 	sw	s0,20(sp)
 5cc:	afa5004c 	sw	a1,76(sp)
 5d0:	8ca50000 	lw	a1,0(a1)
 5d4:	00808025 	move	s0,a0
 5d8:	3c060000 	lui	a2,0x0
 5dc:	24c60000 	addiu	a2,a2,0
 5e0:	27a40030 	addiu	a0,sp,48
 5e4:	24070171 	li	a3,369
 5e8:	0c000000 	jal	0 <ObjComb_Break>
 5ec:	00a08825 	move	s1,a1
 5f0:	8faf004c 	lw	t7,76(sp)
 5f4:	0c000000 	jal	0 <ObjComb_Break>
 5f8:	8de40000 	lw	a0,0(t7)
 5fc:	3c0142ec 	lui	at,0x42ec
 600:	44812000 	mtc1	at,$f4
 604:	c6060054 	lwc1	$f6,84(s0)
 608:	c60a0028 	lwc1	$f10,40(s0)
 60c:	c60c0024 	lwc1	$f12,36(s0)
 610:	46062202 	mul.s	$f8,$f4,$f6
 614:	8e06002c 	lw	a2,44(s0)
 618:	00003825 	move	a3,zero
 61c:	0c000000 	jal	0 <ObjComb_Break>
 620:	46085380 	add.s	$f14,$f10,$f8
 624:	861800b6 	lh	t8,182(s0)
 628:	3c010000 	lui	at,0x0
 62c:	c4240040 	lwc1	$f4,64(at)
 630:	44988000 	mtc1	t8,$f16
 634:	24050001 	li	a1,1
 638:	468084a0 	cvt.s.w	$f18,$f16
 63c:	46049302 	mul.s	$f12,$f18,$f4
 640:	0c000000 	jal	0 <ObjComb_Break>
 644:	00000000 	nop
 648:	861900b4 	lh	t9,180(s0)
 64c:	3c010000 	lui	at,0x0
 650:	c4280044 	lwc1	$f8,68(at)
 654:	44993000 	mtc1	t9,$f6
 658:	24050001 	li	a1,1
 65c:	468032a0 	cvt.s.w	$f10,$f6
 660:	46085302 	mul.s	$f12,$f10,$f8
 664:	0c000000 	jal	0 <ObjComb_Break>
 668:	00000000 	nop
 66c:	860800b8 	lh	t0,184(s0)
 670:	3c010000 	lui	at,0x0
 674:	c4240048 	lwc1	$f4,72(at)
 678:	44888000 	mtc1	t0,$f16
 67c:	24050001 	li	a1,1
 680:	468084a0 	cvt.s.w	$f18,$f16
 684:	46049302 	mul.s	$f12,$f18,$f4
 688:	0c000000 	jal	0 <ObjComb_Break>
 68c:	00000000 	nop
 690:	3c0142ec 	lui	at,0x42ec
 694:	44815000 	mtc1	at,$f10
 698:	c6060054 	lwc1	$f6,84(s0)
 69c:	44806000 	mtc1	zero,$f12
 6a0:	24070001 	li	a3,1
 6a4:	460a3382 	mul.s	$f14,$f6,$f10
 6a8:	44066000 	mfc1	a2,$f12
 6ac:	0c000000 	jal	0 <ObjComb_Break>
 6b0:	46007387 	neg.s	$f14,$f14
 6b4:	c60c0050 	lwc1	$f12,80(s0)
 6b8:	c60e0054 	lwc1	$f14,84(s0)
 6bc:	8e060058 	lw	a2,88(s0)
 6c0:	0c000000 	jal	0 <ObjComb_Break>
 6c4:	24070001 	li	a3,1
 6c8:	8e2202c0 	lw	v0,704(s1)
 6cc:	3c0ada38 	lui	t2,0xda38
 6d0:	354a0003 	ori	t2,t2,0x3
 6d4:	24490008 	addiu	t1,v0,8
 6d8:	ae2902c0 	sw	t1,704(s1)
 6dc:	ac4a0000 	sw	t2,0(v0)
 6e0:	8fab004c 	lw	t3,76(sp)
 6e4:	3c050000 	lui	a1,0x0
 6e8:	24a50010 	addiu	a1,a1,16
 6ec:	8d640000 	lw	a0,0(t3)
 6f0:	2406018a 	li	a2,394
 6f4:	0c000000 	jal	0 <ObjComb_Break>
 6f8:	afa2002c 	sw	v0,44(sp)
 6fc:	8fa3002c 	lw	v1,44(sp)
 700:	3c0e0000 	lui	t6,0x0
 704:	25ce0000 	addiu	t6,t6,0
 708:	ac620004 	sw	v0,4(v1)
 70c:	8e2202c0 	lw	v0,704(s1)
 710:	3c0dde00 	lui	t5,0xde00
 714:	00002025 	move	a0,zero
 718:	244c0008 	addiu	t4,v0,8
 71c:	ae2c02c0 	sw	t4,704(s1)
 720:	26050150 	addiu	a1,s0,336
 724:	ac4e0004 	sw	t6,4(v0)
 728:	0c000000 	jal	0 <ObjComb_Break>
 72c:	ac4d0000 	sw	t5,0(v0)
 730:	8faf004c 	lw	t7,76(sp)
 734:	3c060000 	lui	a2,0x0
 738:	24c60020 	addiu	a2,a2,32
 73c:	27a40030 	addiu	a0,sp,48
 740:	24070192 	li	a3,402
 744:	0c000000 	jal	0 <ObjComb_Break>
 748:	8de50000 	lw	a1,0(t7)
 74c:	8fbf001c 	lw	ra,28(sp)
 750:	8fb00014 	lw	s0,20(sp)
 754:	8fb10018 	lw	s1,24(sp)
 758:	03e00008 	jr	ra
 75c:	27bd0048 	addiu	sp,sp,72
