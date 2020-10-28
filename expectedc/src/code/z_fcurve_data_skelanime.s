
build/src/code/z_fcurve_data_skelanime.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <SkelCurve_Clear>:
   0:	44800000 	mtc1	zero,$f0
   4:	a0800000 	sb	zero,0(a0)
   8:	ac800004 	sw	zero,4(a0)
   c:	ac800008 	sw	zero,8(a0)
  10:	ac80001c 	sw	zero,28(a0)
  14:	e4800018 	swc1	$f0,24(a0)
  18:	e4800014 	swc1	$f0,20(a0)
  1c:	e4800010 	swc1	$f0,16(a0)
  20:	03e00008 	jr	ra
  24:	e480000c 	swc1	$f0,12(a0)

00000028 <SkelCurve_Init>:
  28:	00067100 	sll	t6,a2,0x4
  2c:	3c080000 	lui	t0,0x0
  30:	000e7f02 	srl	t7,t6,0x1c
  34:	25080000 	addiu	t0,t0,0
  38:	000fc080 	sll	t8,t7,0x2
  3c:	27bdffe0 	addiu	sp,sp,-32
  40:	0118c821 	addu	t9,t0,t8
  44:	8f2b0000 	lw	t3,0(t9)
  48:	3c0900ff 	lui	t1,0xff
  4c:	3529ffff 	ori	t1,t1,0xffff
  50:	00c96024 	and	t4,a2,t1
  54:	3c0a8000 	lui	t2,0x8000
  58:	016c6821 	addu	t5,t3,t4
  5c:	afbf001c 	sw	ra,28(sp)
  60:	afb00018 	sw	s0,24(sp)
  64:	afa40020 	sw	a0,32(sp)
  68:	afa60028 	sw	a2,40(sp)
  6c:	afa7002c 	sw	a3,44(sp)
  70:	01aa1021 	addu	v0,t5,t2
  74:	904e0004 	lbu	t6,4(v0)
  78:	00a08025 	move	s0,a1
  7c:	2406007d 	li	a2,125
  80:	a0ae0000 	sb	t6,0(a1)
  84:	8c430000 	lw	v1,0(v0)
  88:	90a40000 	lbu	a0,0(a1)
  8c:	00037900 	sll	t7,v1,0x4
  90:	000fc702 	srl	t8,t7,0x1c
  94:	0018c880 	sll	t9,t8,0x2
  98:	01195821 	addu	t3,t0,t9
  9c:	8d6c0000 	lw	t4,0(t3)
  a0:	00696824 	and	t5,v1,t1
  a4:	00800821 	move	at,a0
  a8:	018d7021 	addu	t6,t4,t5
  ac:	01ca7821 	addu	t7,t6,t2
  b0:	acaf0004 	sw	t7,4(a1)
  b4:	000420c0 	sll	a0,a0,0x3
  b8:	00812021 	addu	a0,a0,at
  bc:	3c050000 	lui	a1,0x0
  c0:	24a50000 	addiu	a1,a1,0
  c4:	0c000000 	jal	0 <SkelCurve_Clear>
  c8:	00042040 	sll	a0,a0,0x1
  cc:	14400007 	bnez	v0,ec <SkelCurve_Init+0xc4>
  d0:	ae02001c 	sw	v0,28(s0)
  d4:	3c040000 	lui	a0,0x0
  d8:	3c050000 	lui	a1,0x0
  dc:	24a50038 	addiu	a1,a1,56
  e0:	24840020 	addiu	a0,a0,32
  e4:	0c000000 	jal	0 <SkelCurve_Clear>
  e8:	2406007f 	li	a2,127
  ec:	44802000 	mtc1	zero,$f4
  f0:	24020001 	li	v0,1
  f4:	e6040018 	swc1	$f4,24(s0)
  f8:	8fbf001c 	lw	ra,28(sp)
  fc:	8fb00018 	lw	s0,24(sp)
 100:	27bd0020 	addiu	sp,sp,32
 104:	03e00008 	jr	ra
 108:	00000000 	nop

0000010c <SkelCurve_Destroy>:
 10c:	27bdffe8 	addiu	sp,sp,-24
 110:	afbf0014 	sw	ra,20(sp)
 114:	afa40018 	sw	a0,24(sp)
 118:	8ca4001c 	lw	a0,28(a1)
 11c:	3c050000 	lui	a1,0x0
 120:	24a50058 	addiu	a1,a1,88
 124:	50800004 	beqzl	a0,138 <SkelCurve_Destroy+0x2c>
 128:	8fbf0014 	lw	ra,20(sp)
 12c:	0c000000 	jal	0 <SkelCurve_Clear>
 130:	24060092 	li	a2,146
 134:	8fbf0014 	lw	ra,20(sp)
 138:	27bd0018 	addiu	sp,sp,24
 13c:	03e00008 	jr	ra
 140:	00000000 	nop

00000144 <SkelCurve_SetAnim>:
 144:	44866000 	mtc1	a2,$f12
 148:	c4840014 	lwc1	$f4,20(a0)
 14c:	44877000 	mtc1	a3,$f14
 150:	46046181 	sub.s	$f6,$f12,$f4
 154:	e48e0010 	swc1	$f14,16(a0)
 158:	e486000c 	swc1	$f6,12(a0)
 15c:	c7a80010 	lwc1	$f8,16(sp)
 160:	e4880018 	swc1	$f8,24(a0)
 164:	c7aa0014 	lwc1	$f10,20(sp)
 168:	ac850008 	sw	a1,8(a0)
 16c:	03e00008 	jr	ra
 170:	e48a0014 	swc1	$f10,20(a0)

00000174 <SkelCurve_Update>:
 174:	27bdff90 	addiu	sp,sp,-112
 178:	afbf0054 	sw	ra,84(sp)
 17c:	afbe0050 	sw	s8,80(sp)
 180:	afb7004c 	sw	s7,76(sp)
 184:	afb60048 	sw	s6,72(sp)
 188:	afb50044 	sw	s5,68(sp)
 18c:	afb40040 	sw	s4,64(sp)
 190:	afb3003c 	sw	s3,60(sp)
 194:	afb20038 	sw	s2,56(sp)
 198:	afb10034 	sw	s1,52(sp)
 19c:	afb00030 	sw	s0,48(sp)
 1a0:	f7b80028 	sdc1	$f24,40(sp)
 1a4:	f7b60020 	sdc1	$f22,32(sp)
 1a8:	f7b40018 	sdc1	$f20,24(sp)
 1ac:	afa40070 	sw	a0,112(sp)
 1b0:	afa50074 	sw	a1,116(sp)
 1b4:	afa00058 	sw	zero,88(sp)
 1b8:	8ca30008 	lw	v1,8(a1)
 1bc:	3c080000 	lui	t0,0x0
 1c0:	25080000 	addiu	t0,t0,0
 1c4:	00037900 	sll	t7,v1,0x4
 1c8:	000fc702 	srl	t8,t7,0x1c
 1cc:	0018c880 	sll	t9,t8,0x2
 1d0:	01195821 	addu	t3,t0,t9
 1d4:	8d6c0000 	lw	t4,0(t3)
 1d8:	3c0900ff 	lui	t1,0xff
 1dc:	3529ffff 	ori	t1,t1,0xffff
 1e0:	00696824 	and	t5,v1,t1
 1e4:	3c0a8000 	lui	t2,0x8000
 1e8:	018d7821 	addu	t7,t4,t5
 1ec:	01ea1021 	addu	v0,t7,t2
 1f0:	8c440000 	lw	a0,0(v0)
 1f4:	8c460004 	lw	a2,4(v0)
 1f8:	8c470008 	lw	a3,8(v0)
 1fc:	0004c100 	sll	t8,a0,0x4
 200:	0018cf02 	srl	t9,t8,0x1c
 204:	00195880 	sll	t3,t9,0x2
 208:	010b6021 	addu	t4,t0,t3
 20c:	8d8d0000 	lw	t5,0(t4)
 210:	0006c900 	sll	t9,a2,0x4
 214:	00195f02 	srl	t3,t9,0x1c
 218:	00897824 	and	t7,a0,t1
 21c:	000b6080 	sll	t4,t3,0x2
 220:	01afc021 	addu	t8,t5,t7
 224:	010c6821 	addu	t5,t0,t4
 228:	00075900 	sll	t3,a3,0x4
 22c:	8daf0000 	lw	t7,0(t5)
 230:	000b6702 	srl	t4,t3,0x1c
 234:	000c6880 	sll	t5,t4,0x2
 238:	030a9821 	addu	s3,t8,t2
 23c:	3c0c0000 	lui	t4,0x0
 240:	8d8c0000 	lw	t4,0(t4)
 244:	00c9c024 	and	t8,a2,t1
 248:	01f8c821 	addu	t9,t7,t8
 24c:	010d7821 	addu	t7,t0,t5
 250:	858d0110 	lh	t5,272(t4)
 254:	c4a20014 	lwc1	$f2,20(a1)
 258:	3c013f00 	lui	at,0x3f00
 25c:	448d2000 	mtc1	t5,$f4
 260:	44815000 	mtc1	at,$f10
 264:	44806000 	mtc1	zero,$f12
 268:	468021a0 	cvt.s.w	$f6,$f4
 26c:	c4b20018 	lwc1	$f18,24(a1)
 270:	8df80000 	lw	t8,0(t7)
 274:	032aa021 	addu	s4,t9,t2
 278:	00e9c824 	and	t9,a3,t1
 27c:	4602603e 	c.le.s	$f12,$f2
 280:	46061202 	mul.s	$f8,$f2,$f6
 284:	03195821 	addu	t3,t8,t9
 288:	016aa821 	addu	s5,t3,t2
 28c:	8cb0001c 	lw	s0,28(a1)
 290:	3c0142c8 	lui	at,0x42c8
 294:	2417000c 	li	s7,12
 298:	241e0001 	li	s8,1
 29c:	460a4402 	mul.s	$f16,$f8,$f10
 2a0:	46109100 	add.s	$f4,$f18,$f16
 2a4:	45000008 	bc1f	2c8 <SkelCurve_Update+0x154>
 2a8:	e4a40018 	swc1	$f4,24(a1)
 2ac:	8faf0074 	lw	t7,116(sp)
 2b0:	c5e00010 	lwc1	$f0,16(t7)
 2b4:	c5e60018 	lwc1	$f6,24(t7)
 2b8:	4606003c 	c.lt.s	$f0,$f6
 2bc:	00000000 	nop
 2c0:	4503000c 	bc1tl	2f4 <SkelCurve_Update+0x180>
 2c4:	8fb90074 	lw	t9,116(sp)
 2c8:	460c103c 	c.lt.s	$f2,$f12
 2cc:	8fb80074 	lw	t8,116(sp)
 2d0:	4502000c 	bc1fl	304 <SkelCurve_Update+0x190>
 2d4:	8fac0074 	lw	t4,116(sp)
 2d8:	c7000010 	lwc1	$f0,16(t8)
 2dc:	c7080018 	lwc1	$f8,24(t8)
 2e0:	4600403c 	c.lt.s	$f8,$f0
 2e4:	00000000 	nop
 2e8:	45020006 	bc1fl	304 <SkelCurve_Update+0x190>
 2ec:	8fac0074 	lw	t4,116(sp)
 2f0:	8fb90074 	lw	t9,116(sp)
 2f4:	240b0001 	li	t3,1
 2f8:	e7200018 	swc1	$f0,24(t9)
 2fc:	afab0058 	sw	t3,88(sp)
 300:	8fac0074 	lw	t4,116(sp)
 304:	afa0005c 	sw	zero,92(sp)
 308:	918d0000 	lbu	t5,0(t4)
 30c:	59a00044 	blezl	t5,420 <SkelCurve_Update+0x2ac>
 310:	8fbf0054 	lw	ra,84(sp)
 314:	4481c000 	mtc1	at,$f24
 318:	3c010000 	lui	at,0x0
 31c:	c436013c 	lwc1	$f22,316(at)
 320:	3c014480 	lui	at,0x4480
 324:	4481a000 	mtc1	at,$f20
 328:	24160003 	li	s6,3
 32c:	00009025 	move	s2,zero
 330:	00008825 	move	s1,zero
 334:	92660000 	lbu	a2,0(s3)
 338:	8fb90074 	lw	t9,116(sp)
 33c:	02802825 	move	a1,s4
 340:	14c0000e 	bnez	a2,37c <SkelCurve_Update+0x208>
 344:	00000000 	nop
 348:	96ae0000 	lhu	t6,0(s5)
 34c:	3c014f80 	lui	at,0x4f80
 350:	448e5000 	mtc1	t6,$f10
 354:	05c10004 	bgez	t6,368 <SkelCurve_Update+0x1f4>
 358:	46805020 	cvt.s.w	$f0,$f10
 35c:	44819000 	mtc1	at,$f18
 360:	00000000 	nop
 364:	46120000 	add.s	$f0,$f0,$f18
 368:	4600040d 	trunc.w.s	$f16,$f0
 36c:	26b50002 	addiu	s5,s5,2
 370:	44188000 	mfc1	t8,$f16
 374:	1000001a 	b	3e0 <SkelCurve_Update+0x26c>
 378:	a6180000 	sh	t8,0(s0)
 37c:	0c000000 	jal	0 <SkelCurve_Clear>
 380:	c72c0018 	lwc1	$f12,24(t9)
 384:	926b0000 	lbu	t3,0(s3)
 388:	01770019 	multu	t3,s7
 38c:	00006012 	mflo	t4
 390:	028ca021 	addu	s4,s4,t4
 394:	16400006 	bnez	s2,3b0 <SkelCurve_Update+0x23c>
 398:	00000000 	nop
 39c:	46140102 	mul.s	$f4,$f0,$f20
 3a0:	4600218d 	trunc.w.s	$f6,$f4
 3a4:	440e3000 	mfc1	t6,$f6
 3a8:	1000000d 	b	3e0 <SkelCurve_Update+0x26c>
 3ac:	a60e0000 	sh	t6,0(s0)
 3b0:	165e0006 	bne	s2,s8,3cc <SkelCurve_Update+0x258>
 3b4:	00000000 	nop
 3b8:	46160202 	mul.s	$f8,$f0,$f22
 3bc:	4600428d 	trunc.w.s	$f10,$f8
 3c0:	44185000 	mfc1	t8,$f10
 3c4:	10000006 	b	3e0 <SkelCurve_Update+0x26c>
 3c8:	a6180000 	sh	t8,0(s0)
 3cc:	46180482 	mul.s	$f18,$f0,$f24
 3d0:	4600940d 	trunc.w.s	$f16,$f18
 3d4:	440b8000 	mfc1	t3,$f16
 3d8:	00000000 	nop
 3dc:	a60b0000 	sh	t3,0(s0)
 3e0:	26310001 	addiu	s1,s1,1
 3e4:	26730001 	addiu	s3,s3,1
 3e8:	1636ffd2 	bne	s1,s6,334 <SkelCurve_Update+0x1c0>
 3ec:	26100002 	addiu	s0,s0,2
 3f0:	26520001 	addiu	s2,s2,1
 3f4:	5656ffcf 	bnel	s2,s6,334 <SkelCurve_Update+0x1c0>
 3f8:	00008825 	move	s1,zero
 3fc:	8fac005c 	lw	t4,92(sp)
 400:	8fae0074 	lw	t6,116(sp)
 404:	258d0001 	addiu	t5,t4,1
 408:	afad005c 	sw	t5,92(sp)
 40c:	91cf0000 	lbu	t7,0(t6)
 410:	01af082a 	slt	at,t5,t7
 414:	5420ffc6 	bnezl	at,330 <SkelCurve_Update+0x1bc>
 418:	00009025 	move	s2,zero
 41c:	8fbf0054 	lw	ra,84(sp)
 420:	8fa20058 	lw	v0,88(sp)
 424:	d7b40018 	ldc1	$f20,24(sp)
 428:	d7b60020 	ldc1	$f22,32(sp)
 42c:	d7b80028 	ldc1	$f24,40(sp)
 430:	8fb00030 	lw	s0,48(sp)
 434:	8fb10034 	lw	s1,52(sp)
 438:	8fb20038 	lw	s2,56(sp)
 43c:	8fb3003c 	lw	s3,60(sp)
 440:	8fb40040 	lw	s4,64(sp)
 444:	8fb50044 	lw	s5,68(sp)
 448:	8fb60048 	lw	s6,72(sp)
 44c:	8fb7004c 	lw	s7,76(sp)
 450:	8fbe0050 	lw	s8,80(sp)
 454:	03e00008 	jr	ra
 458:	27bd0070 	addiu	sp,sp,112

0000045c <SkelCurve_DrawLimb>:
 45c:	27bdff68 	addiu	sp,sp,-152
 460:	afbf002c 	sw	ra,44(sp)
 464:	afb00028 	sw	s0,40(sp)
 468:	afa40098 	sw	a0,152(sp)
 46c:	afa5009c 	sw	a1,156(sp)
 470:	afa600a0 	sw	a2,160(sp)
 474:	afa700a4 	sw	a3,164(sp)
 478:	8ccf0004 	lw	t7,4(a2)
 47c:	0005c880 	sll	t9,a1,0x2
 480:	3c0d0000 	lui	t5,0x0
 484:	01f94021 	addu	t0,t7,t9
 488:	8d020000 	lw	v0,0(t0)
 48c:	3c0100ff 	lui	at,0xff
 490:	3421ffff 	ori	at,at,0xffff
 494:	00025100 	sll	t2,v0,0x4
 498:	000a5f02 	srl	t3,t2,0x1c
 49c:	000b6080 	sll	t4,t3,0x2
 4a0:	01ac6821 	addu	t5,t5,t4
 4a4:	8dad0000 	lw	t5,0(t5)
 4a8:	00414824 	and	t1,v0,at
 4ac:	3c018000 	lui	at,0x8000
 4b0:	012d7021 	addu	t6,t1,t5
 4b4:	01c1c021 	addu	t8,t6,at
 4b8:	afb80094 	sw	t8,148(sp)
 4bc:	8c850000 	lw	a1,0(a0)
 4c0:	3c060000 	lui	a2,0x0
 4c4:	24c60078 	addiu	a2,a2,120
 4c8:	27a40080 	addiu	a0,sp,128
 4cc:	24070117 	li	a3,279
 4d0:	0c000000 	jal	0 <SkelCurve_Clear>
 4d4:	00a08025 	move	s0,a1
 4d8:	0c000000 	jal	0 <SkelCurve_Clear>
 4dc:	00000000 	nop
 4e0:	8fb900a4 	lw	t9,164(sp)
 4e4:	5320000a 	beqzl	t9,510 <SkelCurve_DrawLimb+0xb4>
 4e8:	8fa800a0 	lw	t0,160(sp)
 4ec:	1320009a 	beqz	t9,758 <SkelCurve_DrawLimb+0x2fc>
 4f0:	8fa40098 	lw	a0,152(sp)
 4f4:	8fa500a0 	lw	a1,160(sp)
 4f8:	8fa6009c 	lw	a2,156(sp)
 4fc:	0320f809 	jalr	t9
 500:	8fa700b0 	lw	a3,176(sp)
 504:	50400095 	beqzl	v0,75c <SkelCurve_DrawLimb+0x300>
 508:	8fb000a8 	lw	s0,168(sp)
 50c:	8fa800a0 	lw	t0,160(sp)
 510:	8fab009c 	lw	t3,156(sp)
 514:	3c013a80 	lui	at,0x3a80
 518:	8d0a001c 	lw	t2,28(t0)
 51c:	000b60c0 	sll	t4,t3,0x3
 520:	018b6021 	addu	t4,t4,t3
 524:	000c6040 	sll	t4,t4,0x1
 528:	014c1021 	addu	v0,t2,t4
 52c:	84490000 	lh	t1,0(v0)
 530:	44810000 	mtc1	at,$f0
 534:	2442000c 	addiu	v0,v0,12
 538:	44892000 	mtc1	t1,$f4
 53c:	27a40060 	addiu	a0,sp,96
 540:	27a5006c 	addiu	a1,sp,108
 544:	468021a0 	cvt.s.w	$f6,$f4
 548:	46003202 	mul.s	$f8,$f6,$f0
 54c:	e7a80074 	swc1	$f8,116(sp)
 550:	844dfff6 	lh	t5,-10(v0)
 554:	448d5000 	mtc1	t5,$f10
 558:	00000000 	nop
 55c:	46805420 	cvt.s.w	$f16,$f10
 560:	46008482 	mul.s	$f18,$f16,$f0
 564:	e7b20078 	swc1	$f18,120(sp)
 568:	844efff8 	lh	t6,-8(v0)
 56c:	448e2000 	mtc1	t6,$f4
 570:	00000000 	nop
 574:	468021a0 	cvt.s.w	$f6,$f4
 578:	46003202 	mul.s	$f8,$f6,$f0
 57c:	e7a8007c 	swc1	$f8,124(sp)
 580:	8458fffa 	lh	t8,-6(v0)
 584:	a7b8006c 	sh	t8,108(sp)
 588:	844ffffc 	lh	t7,-4(v0)
 58c:	a7af006e 	sh	t7,110(sp)
 590:	8459fffe 	lh	t9,-2(v0)
 594:	a7b90070 	sh	t9,112(sp)
 598:	84480000 	lh	t0,0(v0)
 59c:	44885000 	mtc1	t0,$f10
 5a0:	00000000 	nop
 5a4:	46805420 	cvt.s.w	$f16,$f10
 5a8:	e7b00060 	swc1	$f16,96(sp)
 5ac:	844b0002 	lh	t3,2(v0)
 5b0:	448b9000 	mtc1	t3,$f18
 5b4:	00000000 	nop
 5b8:	46809120 	cvt.s.w	$f4,$f18
 5bc:	e7a40064 	swc1	$f4,100(sp)
 5c0:	844a0004 	lh	t2,4(v0)
 5c4:	448a3000 	mtc1	t2,$f6
 5c8:	00000000 	nop
 5cc:	46803220 	cvt.s.w	$f8,$f6
 5d0:	0c000000 	jal	0 <SkelCurve_Clear>
 5d4:	e7a80068 	swc1	$f8,104(sp)
 5d8:	c7ac0074 	lwc1	$f12,116(sp)
 5dc:	c7ae0078 	lwc1	$f14,120(sp)
 5e0:	8fa6007c 	lw	a2,124(sp)
 5e4:	0c000000 	jal	0 <SkelCurve_Clear>
 5e8:	24070001 	li	a3,1
 5ec:	8fac00ac 	lw	t4,172(sp)
 5f0:	8fa90094 	lw	t1,148(sp)
 5f4:	8fa800ac 	lw	t0,172(sp)
 5f8:	1580001c 	bnez	t4,66c <SkelCurve_DrawLimb+0x210>
 5fc:	24010001 	li	at,1
 600:	8d270004 	lw	a3,4(t1)
 604:	3c0eda38 	lui	t6,0xda38
 608:	50e00054 	beqzl	a3,75c <SkelCurve_DrawLimb+0x300>
 60c:	8fb000a8 	lw	s0,168(sp)
 610:	8e0202c0 	lw	v0,704(s0)
 614:	35ce0003 	ori	t6,t6,0x3
 618:	3c050000 	lui	a1,0x0
 61c:	244d0008 	addiu	t5,v0,8
 620:	ae0d02c0 	sw	t5,704(s0)
 624:	ac4e0000 	sw	t6,0(v0)
 628:	8fb80098 	lw	t8,152(sp)
 62c:	24a50098 	addiu	a1,a1,152
 630:	24060141 	li	a2,321
 634:	8f040000 	lw	a0,0(t8)
 638:	afa7005c 	sw	a3,92(sp)
 63c:	0c000000 	jal	0 <SkelCurve_Clear>
 640:	afa20050 	sw	v0,80(sp)
 644:	8fa30050 	lw	v1,80(sp)
 648:	8fa7005c 	lw	a3,92(sp)
 64c:	3c19de00 	lui	t9,0xde00
 650:	ac620004 	sw	v0,4(v1)
 654:	8e0202c0 	lw	v0,704(s0)
 658:	244f0008 	addiu	t7,v0,8
 65c:	ae0f02c0 	sw	t7,704(s0)
 660:	ac470004 	sw	a3,4(v0)
 664:	1000003c 	b	758 <SkelCurve_DrawLimb+0x2fc>
 668:	ac590000 	sw	t9,0(v0)
 66c:	15010038 	bne	t0,at,750 <SkelCurve_DrawLimb+0x2f4>
 670:	3c040000 	lui	a0,0x0
 674:	8fab0094 	lw	t3,148(sp)
 678:	3c0cda38 	lui	t4,0xda38
 67c:	8d670004 	lw	a3,4(t3)
 680:	50e00018 	beqzl	a3,6e4 <SkelCurve_DrawLimb+0x288>
 684:	8fb80094 	lw	t8,148(sp)
 688:	8e0202c0 	lw	v0,704(s0)
 68c:	358c0003 	ori	t4,t4,0x3
 690:	3c050000 	lui	a1,0x0
 694:	244a0008 	addiu	t2,v0,8
 698:	ae0a02c0 	sw	t2,704(s0)
 69c:	ac4c0000 	sw	t4,0(v0)
 6a0:	8fa90098 	lw	t1,152(sp)
 6a4:	24a500b8 	addiu	a1,a1,184
 6a8:	2406014c 	li	a2,332
 6ac:	8d240000 	lw	a0,0(t1)
 6b0:	afa7005c 	sw	a3,92(sp)
 6b4:	0c000000 	jal	0 <SkelCurve_Clear>
 6b8:	afa20044 	sw	v0,68(sp)
 6bc:	8fa30044 	lw	v1,68(sp)
 6c0:	8fa7005c 	lw	a3,92(sp)
 6c4:	3c0ede00 	lui	t6,0xde00
 6c8:	ac620004 	sw	v0,4(v1)
 6cc:	8e0202c0 	lw	v0,704(s0)
 6d0:	244d0008 	addiu	t5,v0,8
 6d4:	ae0d02c0 	sw	t5,704(s0)
 6d8:	ac470004 	sw	a3,4(v0)
 6dc:	ac4e0000 	sw	t6,0(v0)
 6e0:	8fb80094 	lw	t8,148(sp)
 6e4:	3c19da38 	lui	t9,0xda38
 6e8:	8f070008 	lw	a3,8(t8)
 6ec:	50e0001b 	beqzl	a3,75c <SkelCurve_DrawLimb+0x300>
 6f0:	8fb000a8 	lw	s0,168(sp)
 6f4:	8e0202d0 	lw	v0,720(s0)
 6f8:	37390003 	ori	t9,t9,0x3
 6fc:	3c050000 	lui	a1,0x0
 700:	244f0008 	addiu	t7,v0,8
 704:	ae0f02d0 	sw	t7,720(s0)
 708:	ac590000 	sw	t9,0(v0)
 70c:	8fa80098 	lw	t0,152(sp)
 710:	24a500d8 	addiu	a1,a1,216
 714:	24060152 	li	a2,338
 718:	8d040000 	lw	a0,0(t0)
 71c:	afa7005c 	sw	a3,92(sp)
 720:	0c000000 	jal	0 <SkelCurve_Clear>
 724:	afa2003c 	sw	v0,60(sp)
 728:	8fa3003c 	lw	v1,60(sp)
 72c:	8fa7005c 	lw	a3,92(sp)
 730:	3c0ade00 	lui	t2,0xde00
 734:	ac620004 	sw	v0,4(v1)
 738:	8e0202d0 	lw	v0,720(s0)
 73c:	244b0008 	addiu	t3,v0,8
 740:	ae0b02d0 	sw	t3,720(s0)
 744:	ac470004 	sw	a3,4(v0)
 748:	10000003 	b	758 <SkelCurve_DrawLimb+0x2fc>
 74c:	ac4a0000 	sw	t2,0(v0)
 750:	0c000000 	jal	0 <SkelCurve_Clear>
 754:	248400f8 	addiu	a0,a0,248
 758:	8fb000a8 	lw	s0,168(sp)
 75c:	8fa40098 	lw	a0,152(sp)
 760:	8fa500a0 	lw	a1,160(sp)
 764:	12000003 	beqz	s0,774 <SkelCurve_DrawLimb+0x318>
 768:	8fa6009c 	lw	a2,156(sp)
 76c:	0200f809 	jalr	s0
 770:	8fa700b0 	lw	a3,176(sp)
 774:	8fac0094 	lw	t4,148(sp)
 778:	240100ff 	li	at,255
 77c:	8fa40098 	lw	a0,152(sp)
 780:	91850000 	lbu	a1,0(t4)
 784:	8fa600a0 	lw	a2,160(sp)
 788:	8fa700a4 	lw	a3,164(sp)
 78c:	10a10007 	beq	a1,at,7ac <SkelCurve_DrawLimb+0x350>
 790:	00000000 	nop
 794:	8fa900ac 	lw	t1,172(sp)
 798:	8fad00b0 	lw	t5,176(sp)
 79c:	afb00010 	sw	s0,16(sp)
 7a0:	afa90014 	sw	t1,20(sp)
 7a4:	0c000000 	jal	0 <SkelCurve_Clear>
 7a8:	afad0018 	sw	t5,24(sp)
 7ac:	0c000000 	jal	0 <SkelCurve_Clear>
 7b0:	00000000 	nop
 7b4:	8fae0094 	lw	t6,148(sp)
 7b8:	240100ff 	li	at,255
 7bc:	8fa40098 	lw	a0,152(sp)
 7c0:	91c50001 	lbu	a1,1(t6)
 7c4:	8fa600a0 	lw	a2,160(sp)
 7c8:	8fa700a4 	lw	a3,164(sp)
 7cc:	50a10008 	beql	a1,at,7f0 <SkelCurve_DrawLimb+0x394>
 7d0:	8fb90098 	lw	t9,152(sp)
 7d4:	8fb800ac 	lw	t8,172(sp)
 7d8:	8faf00b0 	lw	t7,176(sp)
 7dc:	afb00010 	sw	s0,16(sp)
 7e0:	afb80014 	sw	t8,20(sp)
 7e4:	0c000000 	jal	0 <SkelCurve_Clear>
 7e8:	afaf0018 	sw	t7,24(sp)
 7ec:	8fb90098 	lw	t9,152(sp)
 7f0:	3c060000 	lui	a2,0x0
 7f4:	24c6011c 	addiu	a2,a2,284
 7f8:	27a40080 	addiu	a0,sp,128
 7fc:	24070173 	li	a3,371
 800:	0c000000 	jal	0 <SkelCurve_Clear>
 804:	8f250000 	lw	a1,0(t9)
 808:	8fbf002c 	lw	ra,44(sp)
 80c:	8fb00028 	lw	s0,40(sp)
 810:	27bd0098 	addiu	sp,sp,152
 814:	03e00008 	jr	ra
 818:	00000000 	nop

0000081c <SkelCurve_Draw>:
 81c:	27bdffd8 	addiu	sp,sp,-40
 820:	afbf0024 	sw	ra,36(sp)
 824:	afa40028 	sw	a0,40(sp)
 828:	8cce001c 	lw	t6,28(a2)
 82c:	00a02025 	move	a0,a1
 830:	00002825 	move	a1,zero
 834:	11c00007 	beqz	t6,854 <SkelCurve_Draw+0x38>
 838:	8faf0038 	lw	t7,56(sp)
 83c:	8fb8003c 	lw	t8,60(sp)
 840:	8fb90040 	lw	t9,64(sp)
 844:	afaf0010 	sw	t7,16(sp)
 848:	afb80014 	sw	t8,20(sp)
 84c:	0c000000 	jal	0 <SkelCurve_Clear>
 850:	afb90018 	sw	t9,24(sp)
 854:	8fbf0024 	lw	ra,36(sp)
 858:	27bd0028 	addiu	sp,sp,40
 85c:	03e00008 	jr	ra
 860:	00000000 	nop
	...
