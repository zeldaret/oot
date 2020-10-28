
build/src/overlays/actors/ovl_Bg_Jya_Haheniron/z_bg_jya_haheniron.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808980C0>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	00803025 	move	a2,a0
   8:	afa5002c 	sw	a1,44(sp)
   c:	00a02025 	move	a0,a1
  10:	afbf001c 	sw	ra,28(sp)
  14:	24c50150 	addiu	a1,a2,336
  18:	afa50020 	sw	a1,32(sp)
  1c:	0c000000 	jal	0 <func_808980C0>
  20:	afa60028 	sw	a2,40(sp)
  24:	8fa60028 	lw	a2,40(sp)
  28:	3c070000 	lui	a3,0x0
  2c:	8fa50020 	lw	a1,32(sp)
  30:	24ce0170 	addiu	t6,a2,368
  34:	afae0010 	sw	t6,16(sp)
  38:	24e70000 	addiu	a3,a3,0
  3c:	0c000000 	jal	0 <func_808980C0>
  40:	8fa4002c 	lw	a0,44(sp)
  44:	8fbf001c 	lw	ra,28(sp)
  48:	27bd0028 	addiu	sp,sp,40
  4c:	03e00008 	jr	ra
  50:	00000000 	nop

00000054 <func_80898114>:
  54:	27bdff40 	addiu	sp,sp,-192
  58:	f7ba0060 	sdc1	$f26,96(sp)
  5c:	3c010000 	lui	at,0x0
  60:	c43a0000 	lwc1	$f26,0(at)
  64:	f7b80058 	sdc1	$f24,88(sp)
  68:	3c010000 	lui	at,0x0
  6c:	c4380000 	lwc1	$f24,0(at)
  70:	afb70084 	sw	s7,132(sp)
  74:	afb60080 	sw	s6,128(sp)
  78:	afb1006c 	sw	s1,108(sp)
  7c:	f7b60050 	sdc1	$f22,80(sp)
  80:	3c014120 	lui	at,0x4120
  84:	afbe0088 	sw	s8,136(sp)
  88:	afb5007c 	sw	s5,124(sp)
  8c:	afb40078 	sw	s4,120(sp)
  90:	afb30074 	sw	s3,116(sp)
  94:	afb20070 	sw	s2,112(sp)
  98:	3c110000 	lui	s1,0x0
  9c:	3c160600 	lui	s6,0x600
  a0:	3c170000 	lui	s7,0x0
  a4:	4481b000 	mtc1	at,$f22
  a8:	00c09825 	move	s3,a2
  ac:	00a0a025 	move	s4,a1
  b0:	0080f025 	move	s8,a0
  b4:	afbf008c 	sw	ra,140(sp)
  b8:	afb00068 	sw	s0,104(sp)
  bc:	f7b40048 	sdc1	$f20,72(sp)
  c0:	26f70000 	addiu	s7,s7,0
  c4:	26d60880 	addiu	s6,s6,2176
  c8:	26310000 	addiu	s1,s1,0
  cc:	00009025 	move	s2,zero
  d0:	27b500b4 	addiu	s5,sp,180
  d4:	0c000000 	jal	0 <func_808980C0>
  d8:	00000000 	nop
  dc:	00128400 	sll	s0,s2,0x10
  e0:	00108403 	sra	s0,s0,0x10
  e4:	46160502 	mul.s	$f20,$f0,$f22
  e8:	00102400 	sll	a0,s0,0x10
  ec:	0c000000 	jal	0 <func_808980C0>
  f0:	00042403 	sra	a0,a0,0x10
  f4:	46140102 	mul.s	$f4,$f0,$f20
  f8:	c6660000 	lwc1	$f6,0(s3)
  fc:	46062200 	add.s	$f8,$f4,$f6
 100:	0c000000 	jal	0 <func_808980C0>
 104:	e7a800b4 	swc1	$f8,180(sp)
 108:	46160282 	mul.s	$f10,$f0,$f22
 10c:	c6700004 	lwc1	$f16,4(s3)
 110:	00102400 	sll	a0,s0,0x10
 114:	00042403 	sra	a0,a0,0x10
 118:	46105480 	add.s	$f18,$f10,$f16
 11c:	0c000000 	jal	0 <func_808980C0>
 120:	e7b200b8 	swc1	$f18,184(sp)
 124:	46140102 	mul.s	$f4,$f0,$f20
 128:	c6660008 	lwc1	$f6,8(s3)
 12c:	46062200 	add.s	$f8,$f4,$f6
 130:	0c000000 	jal	0 <func_808980C0>
 134:	e7a800bc 	swc1	$f8,188(sp)
 138:	4618003c 	c.lt.s	$f0,$f24
 13c:	03c02025 	move	a0,s8
 140:	02802825 	move	a1,s4
 144:	02a03025 	move	a2,s5
 148:	45000003 	bc1f	158 <func_80898114+0x104>
 14c:	02803825 	move	a3,s4
 150:	10000007 	b	170 <func_80898114+0x11c>
 154:	24020060 	li	v0,96
 158:	461a003c 	c.lt.s	$f0,$f26
 15c:	24020020 	li	v0,32
 160:	45000003 	bc1f	170 <func_80898114+0x11c>
 164:	00000000 	nop
 168:	10000001 	b	170 <func_80898114+0x11c>
 16c:	24020040 	li	v0,64
 170:	86390000 	lh	t9,0(s1)
 174:	240efea2 	li	t6,-350
 178:	240f0028 	li	t7,40
 17c:	24180004 	li	t8,4
 180:	24080014 	li	t0,20
 184:	24090028 	li	t1,40
 188:	240affff 	li	t2,-1
 18c:	240b016c 	li	t3,364
 190:	afab0038 	sw	t3,56(sp)
 194:	afaa0034 	sw	t2,52(sp)
 198:	afa90030 	sw	t1,48(sp)
 19c:	afa8002c 	sw	t0,44(sp)
 1a0:	afb8001c 	sw	t8,28(sp)
 1a4:	afaf0018 	sw	t7,24(sp)
 1a8:	afae0010 	sw	t6,16(sp)
 1ac:	afa20014 	sw	v0,20(sp)
 1b0:	afa00020 	sw	zero,32(sp)
 1b4:	afa00028 	sw	zero,40(sp)
 1b8:	afb6003c 	sw	s6,60(sp)
 1bc:	0c000000 	jal	0 <func_808980C0>
 1c0:	afb90024 	sw	t9,36(sp)
 1c4:	26310002 	addiu	s1,s1,2
 1c8:	1637ffc2 	bne	s1,s7,d4 <func_80898114+0x80>
 1cc:	26523333 	addiu	s2,s2,13107
 1d0:	3c0140a0 	lui	at,0x40a0
 1d4:	44810000 	mtc1	at,$f0
 1d8:	c6700000 	lwc1	$f16,0(s3)
 1dc:	c68a0000 	lwc1	$f10,0(s4)
 1e0:	240c0064 	li	t4,100
 1e4:	46008482 	mul.s	$f18,$f16,$f0
 1e8:	240d00a0 	li	t5,160
 1ec:	240e0001 	li	t6,1
 1f0:	03c02025 	move	a0,s8
 1f4:	27a500a8 	addiu	a1,sp,168
 1f8:	3c0642c8 	lui	a2,0x42c8
 1fc:	24070004 	li	a3,4
 200:	46125100 	add.s	$f4,$f10,$f18
 204:	e7a400a8 	swc1	$f4,168(sp)
 208:	c6680004 	lwc1	$f8,4(s3)
 20c:	c6860004 	lwc1	$f6,4(s4)
 210:	46004402 	mul.s	$f16,$f8,$f0
 214:	46103280 	add.s	$f10,$f6,$f16
 218:	e7aa00ac 	swc1	$f10,172(sp)
 21c:	c6640008 	lwc1	$f4,8(s3)
 220:	c6920008 	lwc1	$f18,8(s4)
 224:	afae0018 	sw	t6,24(sp)
 228:	46002202 	mul.s	$f8,$f4,$f0
 22c:	afad0014 	sw	t5,20(sp)
 230:	afac0010 	sw	t4,16(sp)
 234:	46089180 	add.s	$f6,$f18,$f8
 238:	0c000000 	jal	0 <func_808980C0>
 23c:	e7a600b0 	swc1	$f6,176(sp)
 240:	8fbf008c 	lw	ra,140(sp)
 244:	d7b40048 	ldc1	$f20,72(sp)
 248:	d7b60050 	ldc1	$f22,80(sp)
 24c:	d7b80058 	ldc1	$f24,88(sp)
 250:	d7ba0060 	ldc1	$f26,96(sp)
 254:	8fb00068 	lw	s0,104(sp)
 258:	8fb1006c 	lw	s1,108(sp)
 25c:	8fb20070 	lw	s2,112(sp)
 260:	8fb30074 	lw	s3,116(sp)
 264:	8fb40078 	lw	s4,120(sp)
 268:	8fb5007c 	lw	s5,124(sp)
 26c:	8fb60080 	lw	s6,128(sp)
 270:	8fb70084 	lw	s7,132(sp)
 274:	8fbe0088 	lw	s8,136(sp)
 278:	03e00008 	jr	ra
 27c:	27bd00c0 	addiu	sp,sp,192

00000280 <BgJyaHaheniron_Init>:
 280:	27bdffe0 	addiu	sp,sp,-32
 284:	afa50024 	sw	a1,36(sp)
 288:	afbf001c 	sw	ra,28(sp)
 28c:	afb00018 	sw	s0,24(sp)
 290:	3c050000 	lui	a1,0x0
 294:	00808025 	move	s0,a0
 298:	0c000000 	jal	0 <func_808980C0>
 29c:	24a50000 	addiu	a1,a1,0
 2a0:	860e001c 	lh	t6,28(s0)
 2a4:	3c050000 	lui	a1,0x0
 2a8:	02002025 	move	a0,s0
 2ac:	000e7880 	sll	t7,t6,0x2
 2b0:	00af2821 	addu	a1,a1,t7
 2b4:	0c000000 	jal	0 <func_808980C0>
 2b8:	8ca50000 	lw	a1,0(a1)
 2bc:	8602001c 	lh	v0,28(s0)
 2c0:	02002025 	move	a0,s0
 2c4:	24010001 	li	at,1
 2c8:	1440000f 	bnez	v0,308 <BgJyaHaheniron_Init+0x88>
 2cc:	00000000 	nop
 2d0:	0c000000 	jal	0 <func_808980C0>
 2d4:	8fa50024 	lw	a1,36(sp)
 2d8:	0c000000 	jal	0 <func_808980C0>
 2dc:	00000000 	nop
 2e0:	3c010000 	lui	at,0x0
 2e4:	c4240000 	lwc1	$f4,0(at)
 2e8:	02002025 	move	a0,s0
 2ec:	46040182 	mul.s	$f6,$f0,$f4
 2f0:	4600320d 	trunc.w.s	$f8,$f6
 2f4:	44194000 	mfc1	t9,$f8
 2f8:	0c000000 	jal	0 <func_808980C0>
 2fc:	a61900b8 	sh	t9,184(s0)
 300:	1000000d 	b	338 <BgJyaHaheniron_Init+0xb8>
 304:	8fbf001c 	lw	ra,28(sp)
 308:	54410006 	bnel	v0,at,324 <BgJyaHaheniron_Init+0xa4>
 30c:	24010002 	li	at,2
 310:	0c000000 	jal	0 <func_808980C0>
 314:	02002025 	move	a0,s0
 318:	10000007 	b	338 <BgJyaHaheniron_Init+0xb8>
 31c:	8fbf001c 	lw	ra,28(sp)
 320:	24010002 	li	at,2
 324:	54410004 	bnel	v0,at,338 <BgJyaHaheniron_Init+0xb8>
 328:	8fbf001c 	lw	ra,28(sp)
 32c:	0c000000 	jal	0 <func_808980C0>
 330:	02002025 	move	a0,s0
 334:	8fbf001c 	lw	ra,28(sp)
 338:	8fb00018 	lw	s0,24(sp)
 33c:	27bd0020 	addiu	sp,sp,32
 340:	03e00008 	jr	ra
 344:	00000000 	nop

00000348 <BgJyaHaheniron_Destroy>:
 348:	27bdffe8 	addiu	sp,sp,-24
 34c:	afbf0014 	sw	ra,20(sp)
 350:	848e001c 	lh	t6,28(a0)
 354:	00803025 	move	a2,a0
 358:	00a02025 	move	a0,a1
 35c:	55c00004 	bnezl	t6,370 <BgJyaHaheniron_Destroy+0x28>
 360:	8fbf0014 	lw	ra,20(sp)
 364:	0c000000 	jal	0 <func_808980C0>
 368:	24c50150 	addiu	a1,a2,336
 36c:	8fbf0014 	lw	ra,20(sp)
 370:	27bd0018 	addiu	sp,sp,24
 374:	03e00008 	jr	ra
 378:	00000000 	nop

0000037c <func_8089843C>:
 37c:	3c0e0000 	lui	t6,0x0
 380:	25ce0000 	addiu	t6,t6,0
 384:	03e00008 	jr	ra
 388:	ac8e014c 	sw	t6,332(a0)

0000038c <func_8089844C>:
 38c:	27bdffc8 	addiu	sp,sp,-56
 390:	afbf0024 	sw	ra,36(sp)
 394:	afb00020 	sw	s0,32(sp)
 398:	00808025 	move	s0,a0
 39c:	0c000000 	jal	0 <func_808980C0>
 3a0:	afa5003c 	sw	a1,60(sp)
 3a4:	44802000 	mtc1	zero,$f4
 3a8:	240e0085 	li	t6,133
 3ac:	afae0014 	sw	t6,20(sp)
 3b0:	8fa4003c 	lw	a0,60(sp)
 3b4:	02002825 	move	a1,s0
 3b8:	3c0640a0 	lui	a2,0x40a0
 3bc:	3c074100 	lui	a3,0x4100
 3c0:	0c000000 	jal	0 <func_808980C0>
 3c4:	e7a40010 	swc1	$f4,16(sp)
 3c8:	960f0088 	lhu	t7,136(s0)
 3cc:	31f80009 	andi	t8,t7,0x9
 3d0:	1700000c 	bnez	t8,404 <func_8089844C+0x78>
 3d4:	00000000 	nop
 3d8:	92190160 	lbu	t9,352(s0)
 3dc:	33280002 	andi	t0,t9,0x2
 3e0:	51000021 	beqzl	t0,468 <func_8089844C+0xdc>
 3e4:	860a01b0 	lh	t2,432(s0)
 3e8:	8e020154 	lw	v0,340(s0)
 3ec:	5040001e 	beqzl	v0,468 <func_8089844C+0xdc>
 3f0:	860a01b0 	lh	t2,432(s0)
 3f4:	90490002 	lbu	t1,2(v0)
 3f8:	24010002 	li	at,2
 3fc:	5521001a 	bnel	t1,at,468 <func_8089844C+0xdc>
 400:	860a01b0 	lh	t2,432(s0)
 404:	0c000000 	jal	0 <func_808980C0>
 408:	00000000 	nop
 40c:	c608005c 	lwc1	$f8,92(s0)
 410:	46000187 	neg.s	$f6,$f0
 414:	46083282 	mul.s	$f10,$f6,$f8
 418:	0c000000 	jal	0 <func_808980C0>
 41c:	e7aa002c 	swc1	$f10,44(sp)
 420:	c6120060 	lwc1	$f18,96(s0)
 424:	46000407 	neg.s	$f16,$f0
 428:	46128102 	mul.s	$f4,$f16,$f18
 42c:	0c000000 	jal	0 <func_808980C0>
 430:	e7a40030 	swc1	$f4,48(sp)
 434:	c6080064 	lwc1	$f8,100(s0)
 438:	46000187 	neg.s	$f6,$f0
 43c:	8fa4003c 	lw	a0,60(sp)
 440:	46083282 	mul.s	$f10,$f6,$f8
 444:	26050024 	addiu	a1,s0,36
 448:	27a6002c 	addiu	a2,sp,44
 44c:	0c000000 	jal	0 <func_808980C0>
 450:	e7aa0034 	swc1	$f10,52(sp)
 454:	0c000000 	jal	0 <func_808980C0>
 458:	02002025 	move	a0,s0
 45c:	10000010 	b	4a0 <func_8089844C+0x114>
 460:	860b00b6 	lh	t3,182(s0)
 464:	860a01b0 	lh	t2,432(s0)
 468:	8fa4003c 	lw	a0,60(sp)
 46c:	26060150 	addiu	a2,s0,336
 470:	2941003d 	slti	at,t2,61
 474:	54200006 	bnezl	at,490 <func_8089844C+0x104>
 478:	3c010001 	lui	at,0x1
 47c:	0c000000 	jal	0 <func_808980C0>
 480:	02002025 	move	a0,s0
 484:	10000006 	b	4a0 <func_8089844C+0x114>
 488:	860b00b6 	lh	t3,182(s0)
 48c:	3c010001 	lui	at,0x1
 490:	34211e60 	ori	at,at,0x1e60
 494:	0c000000 	jal	0 <func_808980C0>
 498:	00812821 	addu	a1,a0,at
 49c:	860b00b6 	lh	t3,182(s0)
 4a0:	860d00b4 	lh	t5,180(s0)
 4a4:	256c04b0 	addiu	t4,t3,1200
 4a8:	25ae0fa0 	addiu	t6,t5,4000
 4ac:	a60c00b6 	sh	t4,182(s0)
 4b0:	a60e00b4 	sh	t6,180(s0)
 4b4:	8fbf0024 	lw	ra,36(sp)
 4b8:	8fb00020 	lw	s0,32(sp)
 4bc:	27bd0038 	addiu	sp,sp,56
 4c0:	03e00008 	jr	ra
 4c4:	00000000 	nop

000004c8 <func_80898588>:
 4c8:	3c0e0000 	lui	t6,0x0
 4cc:	25ce0000 	addiu	t6,t6,0
 4d0:	03e00008 	jr	ra
 4d4:	ac8e014c 	sw	t6,332(a0)

000004d8 <func_80898598>:
 4d8:	27bdffe0 	addiu	sp,sp,-32
 4dc:	afbf001c 	sw	ra,28(sp)
 4e0:	afb00018 	sw	s0,24(sp)
 4e4:	848201b0 	lh	v0,432(a0)
 4e8:	00808025 	move	s0,a0
 4ec:	00a03825 	move	a3,a1
 4f0:	28410008 	slti	at,v0,8
 4f4:	54200006 	bnezl	at,510 <func_80898598+0x38>
 4f8:	28410011 	slti	at,v0,17
 4fc:	0c000000 	jal	0 <func_808980C0>
 500:	00000000 	nop
 504:	1000000b 	b	534 <func_80898598+0x5c>
 508:	860e00b6 	lh	t6,182(s0)
 50c:	28410011 	slti	at,v0,17
 510:	14200007 	bnez	at,530 <func_80898598+0x58>
 514:	00e02025 	move	a0,a3
 518:	3c060000 	lui	a2,0x0
 51c:	24c60000 	addiu	a2,a2,0
 520:	0c000000 	jal	0 <func_808980C0>
 524:	26050024 	addiu	a1,s0,36
 528:	0c000000 	jal	0 <func_808980C0>
 52c:	02002025 	move	a0,s0
 530:	860e00b6 	lh	t6,182(s0)
 534:	861800b4 	lh	t8,180(s0)
 538:	25cf0258 	addiu	t7,t6,600
 53c:	271903e8 	addiu	t9,t8,1000
 540:	a60f00b6 	sh	t7,182(s0)
 544:	a61900b4 	sh	t9,180(s0)
 548:	8fbf001c 	lw	ra,28(sp)
 54c:	8fb00018 	lw	s0,24(sp)
 550:	27bd0020 	addiu	sp,sp,32
 554:	03e00008 	jr	ra
 558:	00000000 	nop

0000055c <func_8089861C>:
 55c:	3c0e0000 	lui	t6,0x0
 560:	25ce0000 	addiu	t6,t6,0
 564:	03e00008 	jr	ra
 568:	ac8e014c 	sw	t6,332(a0)

0000056c <func_8089862C>:
 56c:	27bdffe0 	addiu	sp,sp,-32
 570:	afbf0014 	sw	ra,20(sp)
 574:	afa50024 	sw	a1,36(sp)
 578:	848e01b0 	lh	t6,432(a0)
 57c:	00803825 	move	a3,a0
 580:	00a02025 	move	a0,a1
 584:	29c10011 	slti	at,t6,17
 588:	1420000d 	bnez	at,5c0 <func_8089862C+0x54>
 58c:	24e50024 	addiu	a1,a3,36
 590:	3c060000 	lui	a2,0x0
 594:	24c60000 	addiu	a2,a2,0
 598:	afa5001c 	sw	a1,28(sp)
 59c:	0c000000 	jal	0 <func_808980C0>
 5a0:	afa70020 	sw	a3,32(sp)
 5a4:	8fa5001c 	lw	a1,28(sp)
 5a8:	8fa40024 	lw	a0,36(sp)
 5ac:	24060050 	li	a2,80
 5b0:	0c000000 	jal	0 <func_808980C0>
 5b4:	240739ac 	li	a3,14764
 5b8:	0c000000 	jal	0 <func_808980C0>
 5bc:	8fa40020 	lw	a0,32(sp)
 5c0:	8fbf0014 	lw	ra,20(sp)
 5c4:	27bd0020 	addiu	sp,sp,32
 5c8:	03e00008 	jr	ra
 5cc:	00000000 	nop

000005d0 <BgJyaHaheniron_Update>:
 5d0:	27bdffe8 	addiu	sp,sp,-24
 5d4:	afbf0014 	sw	ra,20(sp)
 5d8:	848e01b0 	lh	t6,432(a0)
 5dc:	8c99014c 	lw	t9,332(a0)
 5e0:	25cf0001 	addiu	t7,t6,1
 5e4:	0320f809 	jalr	t9
 5e8:	a48f01b0 	sh	t7,432(a0)
 5ec:	8fbf0014 	lw	ra,20(sp)
 5f0:	27bd0018 	addiu	sp,sp,24
 5f4:	03e00008 	jr	ra
 5f8:	00000000 	nop

000005fc <BgJyaHaheniron_Draw>:
 5fc:	27bdffe8 	addiu	sp,sp,-24
 600:	afbf0014 	sw	ra,20(sp)
 604:	afa5001c 	sw	a1,28(sp)
 608:	8482001c 	lh	v0,28(a0)
 60c:	00803025 	move	a2,a0
 610:	24c50150 	addiu	a1,a2,336
 614:	14400005 	bnez	v0,62c <BgJyaHaheniron_Draw+0x30>
 618:	00002025 	move	a0,zero
 61c:	0c000000 	jal	0 <func_808980C0>
 620:	afa60018 	sw	a2,24(sp)
 624:	8fa60018 	lw	a2,24(sp)
 628:	84c2001c 	lh	v0,28(a2)
 62c:	00027080 	sll	t6,v0,0x2
 630:	3c050000 	lui	a1,0x0
 634:	00ae2821 	addu	a1,a1,t6
 638:	8ca50000 	lw	a1,0(a1)
 63c:	0c000000 	jal	0 <func_808980C0>
 640:	8fa4001c 	lw	a0,28(sp)
 644:	8fbf0014 	lw	ra,20(sp)
 648:	27bd0018 	addiu	sp,sp,24
 64c:	03e00008 	jr	ra
 650:	00000000 	nop
	...
