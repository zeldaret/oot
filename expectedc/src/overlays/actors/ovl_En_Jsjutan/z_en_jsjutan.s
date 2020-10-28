
build/src/overlays/actors/ovl_En_Jsjutan/z_en_jsjutan.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnJsjutan_Init>:
       0:	27bdffd0 	addiu	sp,sp,-48
       4:	afbf001c 	sw	ra,28(sp)
       8:	afb00018 	sw	s0,24(sp)
       c:	afa50034 	sw	a1,52(sp)
      10:	afa00024 	sw	zero,36(sp)
      14:	8c8e0004 	lw	t6,4(a0)
      18:	2401fffe 	li	at,-2
      1c:	00808025 	move	s0,a0
      20:	01c17824 	and	t7,t6,at
      24:	ac8f0004 	sw	t7,4(a0)
      28:	0c000000 	jal	0 <EnJsjutan_Init>
      2c:	00002825 	move	a1,zero
      30:	3c040000 	lui	a0,0x0
      34:	24840000 	addiu	a0,a0,0
      38:	0c000000 	jal	0 <EnJsjutan_Init>
      3c:	27a50024 	addiu	a1,sp,36
      40:	8fa40034 	lw	a0,52(sp)
      44:	02003025 	move	a2,s0
      48:	8fa70024 	lw	a3,36(sp)
      4c:	0c000000 	jal	0 <EnJsjutan_Init>
      50:	24850810 	addiu	a1,a0,2064
      54:	3c053ca3 	lui	a1,0x3ca3
      58:	ae02014c 	sw	v0,332(s0)
      5c:	34a5d70a 	ori	a1,a1,0xd70a
      60:	0c000000 	jal	0 <EnJsjutan_Init>
      64:	02002025 	move	a0,s0
      68:	3c0142c8 	lui	at,0x42c8
      6c:	44812000 	mtc1	at,$f4
      70:	24180001 	li	t8,1
      74:	a2180164 	sb	t8,356(s0)
      78:	e604016c 	swc1	$f4,364(s0)
      7c:	8fbf001c 	lw	ra,28(sp)
      80:	8fb00018 	lw	s0,24(sp)
      84:	27bd0030 	addiu	sp,sp,48
      88:	03e00008 	jr	ra
      8c:	00000000 	nop

00000090 <EnJsjutan_Destroy>:
      90:	27bdffe8 	addiu	sp,sp,-24
      94:	afa40018 	sw	a0,24(sp)
      98:	8fae0018 	lw	t6,24(sp)
      9c:	afbf0014 	sw	ra,20(sp)
      a0:	00a02025 	move	a0,a1
      a4:	24a50810 	addiu	a1,a1,2064
      a8:	0c000000 	jal	0 <EnJsjutan_Init>
      ac:	8dc6014c 	lw	a2,332(t6)
      b0:	8fbf0014 	lw	ra,20(sp)
      b4:	27bd0018 	addiu	sp,sp,24
      b8:	03e00008 	jr	ra
      bc:	00000000 	nop

000000c0 <func_80A89860>:
      c0:	27bdff80 	addiu	sp,sp,-128
      c4:	afbe0050 	sw	s8,80(sp)
      c8:	afbf0054 	sw	ra,84(sp)
      cc:	afb7004c 	sw	s7,76(sp)
      d0:	afb60048 	sw	s6,72(sp)
      d4:	afb50044 	sw	s5,68(sp)
      d8:	afb40040 	sw	s4,64(sp)
      dc:	afb3003c 	sw	s3,60(sp)
      e0:	afb20038 	sw	s2,56(sp)
      e4:	afb10034 	sw	s1,52(sp)
      e8:	afb00030 	sw	s0,48(sp)
      ec:	f7b60028 	sdc1	$f22,40(sp)
      f0:	f7b40020 	sdc1	$f20,32(sp)
      f4:	afa50084 	sw	a1,132(sp)
      f8:	249e0024 	addiu	s8,a0,36
      fc:	8fd80000 	lw	t8,0(s8)
     100:	27ae0068 	addiu	t6,sp,104
     104:	3c020000 	lui	v0,0x0
     108:	add80000 	sw	t8,0(t6)
     10c:	8fcf0004 	lw	t7,4(s8)
     110:	24420000 	addiu	v0,v0,0
     114:	3c030000 	lui	v1,0x0
     118:	adcf0004 	sw	t7,4(t6)
     11c:	8fd80008 	lw	t8,8(s8)
     120:	0002c900 	sll	t9,v0,0x4
     124:	24630000 	addiu	v1,v1,0
     128:	3c060000 	lui	a2,0x0
     12c:	00194f02 	srl	t1,t9,0x1c
     130:	00037900 	sll	t7,v1,0x4
     134:	add80008 	sw	t8,8(t6)
     138:	24c60000 	addiu	a2,a2,0
     13c:	00095080 	sll	t2,t1,0x2
     140:	000fc702 	srl	t8,t7,0x1c
     144:	00ca5821 	addu	t3,a2,t2
     148:	0018c880 	sll	t9,t8,0x2
     14c:	8d6c0000 	lw	t4,0(t3)
     150:	3c0700ff 	lui	a3,0xff
     154:	00d94821 	addu	t1,a2,t9
     158:	8d2a0000 	lw	t2,0(t1)
     15c:	34e7ffff 	ori	a3,a3,0xffff
     160:	3c010000 	lui	at,0x0
     164:	00476824 	and	t5,v0,a3
     168:	c4360000 	lwc1	$f22,0(at)
     16c:	3c088000 	lui	t0,0x8000
     170:	00675824 	and	t3,v1,a3
     174:	3c014120 	lui	at,0x4120
     178:	018d7021 	addu	t6,t4,t5
     17c:	3c140000 	lui	s4,0x0
     180:	014b6021 	addu	t4,t2,t3
     184:	4481a000 	mtc1	at,$f20
     188:	00808825 	move	s1,a0
     18c:	01c88021 	addu	s0,t6,t0
     190:	01889021 	addu	s2,t4,t0
     194:	26940000 	addiu	s4,s4,0
     198:	00009825 	move	s3,zero
     19c:	24150006 	li	s5,6
     1a0:	24160001 	li	s6,1
     1a4:	24170585 	li	s7,1413
     1a8:	02750019 	multu	s3,s5
     1ac:	860e0000 	lh	t6,0(s0)
     1b0:	00006812 	mflo	t5
     1b4:	028d1021 	addu	v0,s4,t5
     1b8:	a44e0000 	sh	t6,0(v0)
     1bc:	860f0004 	lh	t7,4(s0)
     1c0:	a44f0004 	sh	t7,4(v0)
     1c4:	8638001c 	lh	t8,28(s1)
     1c8:	56d80006 	bnel	s6,t8,1e4 <func_80A89860+0x124>
     1cc:	86090000 	lh	t1,0(s0)
     1d0:	a6570002 	sh	s7,2(s2)
     1d4:	86590002 	lh	t9,2(s2)
     1d8:	10000027 	b	278 <func_80A89860+0x1b8>
     1dc:	a6190002 	sh	t9,2(s0)
     1e0:	86090000 	lh	t1,0(s0)
     1e4:	c7aa0068 	lwc1	$f10,104(sp)
     1e8:	4406a000 	mfc1	a2,$f20
     1ec:	44892000 	mtc1	t1,$f4
     1f0:	4407a000 	mfc1	a3,$f20
     1f4:	240b0004 	li	t3,4
     1f8:	468021a0 	cvt.s.w	$f6,$f4
     1fc:	02202825 	move	a1,s1
     200:	46163202 	mul.s	$f8,$f6,$f22
     204:	460a4400 	add.s	$f16,$f8,$f10
     208:	e6300024 	swc1	$f16,36(s1)
     20c:	860a0004 	lh	t2,4(s0)
     210:	c7a80070 	lwc1	$f8,112(sp)
     214:	448a9000 	mtc1	t2,$f18
     218:	00000000 	nop
     21c:	46809120 	cvt.s.w	$f4,$f18
     220:	46162182 	mul.s	$f6,$f4,$f22
     224:	46083280 	add.s	$f10,$f6,$f8
     228:	e62a002c 	swc1	$f10,44(s1)
     22c:	afab0014 	sw	t3,20(sp)
     230:	e7b40010 	swc1	$f20,16(sp)
     234:	0c000000 	jal	0 <EnJsjutan_Init>
     238:	8fa40084 	lw	a0,132(sp)
     23c:	c6300080 	lwc1	$f16,128(s1)
     240:	27ad0068 	addiu	t5,sp,104
     244:	4600848d 	trunc.w.s	$f18,$f16
     248:	44029000 	mfc1	v0,$f18
     24c:	00000000 	nop
     250:	00021400 	sll	v0,v0,0x10
     254:	00021403 	sra	v0,v0,0x10
     258:	a6420002 	sh	v0,2(s2)
     25c:	a6020002 	sh	v0,2(s0)
     260:	8daf0000 	lw	t7,0(t5)
     264:	afcf0000 	sw	t7,0(s8)
     268:	8dae0004 	lw	t6,4(t5)
     26c:	afce0004 	sw	t6,4(s8)
     270:	8daf0008 	lw	t7,8(t5)
     274:	afcf0008 	sw	t7,8(s8)
     278:	26730001 	addiu	s3,s3,1
     27c:	00139c00 	sll	s3,s3,0x10
     280:	00139c03 	sra	s3,s3,0x10
     284:	2a610090 	slti	at,s3,144
     288:	26100010 	addiu	s0,s0,16
     28c:	1420ffc6 	bnez	at,1a8 <func_80A89860+0xe8>
     290:	26520010 	addiu	s2,s2,16
     294:	8fbf0054 	lw	ra,84(sp)
     298:	d7b40020 	ldc1	$f20,32(sp)
     29c:	d7b60028 	ldc1	$f22,40(sp)
     2a0:	8fb00030 	lw	s0,48(sp)
     2a4:	8fb10034 	lw	s1,52(sp)
     2a8:	8fb20038 	lw	s2,56(sp)
     2ac:	8fb3003c 	lw	s3,60(sp)
     2b0:	8fb40040 	lw	s4,64(sp)
     2b4:	8fb50044 	lw	s5,68(sp)
     2b8:	8fb60048 	lw	s6,72(sp)
     2bc:	8fb7004c 	lw	s7,76(sp)
     2c0:	8fbe0050 	lw	s8,80(sp)
     2c4:	03e00008 	jr	ra
     2c8:	27bd0080 	addiu	sp,sp,128

000002cc <func_80A89A6C>:
     2cc:	27bdfed8 	addiu	sp,sp,-296
     2d0:	afbf005c 	sw	ra,92(sp)
     2d4:	afb40058 	sw	s4,88(sp)
     2d8:	afb30054 	sw	s3,84(sp)
     2dc:	afb20050 	sw	s2,80(sp)
     2e0:	afb1004c 	sw	s1,76(sp)
     2e4:	afb00048 	sw	s0,72(sp)
     2e8:	f7be0040 	sdc1	$f30,64(sp)
     2ec:	f7bc0038 	sdc1	$f28,56(sp)
     2f0:	f7ba0030 	sdc1	$f26,48(sp)
     2f4:	f7b80028 	sdc1	$f24,40(sp)
     2f8:	f7b60020 	sdc1	$f22,32(sp)
     2fc:	f7b40018 	sdc1	$f20,24(sp)
     300:	a3a00127 	sb	zero,295(sp)
     304:	3c010001 	lui	at,0x1
     308:	8ca71c44 	lw	a3,7236(a1)
     30c:	8c880118 	lw	t0,280(a0)
     310:	8ca61c4c 	lw	a2,7244(a1)
     314:	00a17021 	addu	t6,a1,at
     318:	afae0074 	sw	t6,116(sp)
     31c:	8dd81de4 	lw	t8,7652(t6)
     320:	4480c000 	mtc1	zero,$f24
     324:	00809025 	move	s2,a0
     328:	33190001 	andi	t9,t8,0x1
     32c:	1320001b 	beqz	t9,39c <func_80A89A6C+0xd0>
     330:	00005825 	move	t3,zero
     334:	3c020000 	lui	v0,0x0
     338:	24420000 	addiu	v0,v0,0
     33c:	00027100 	sll	t6,v0,0x4
     340:	3c040000 	lui	a0,0x0
     344:	000e7f02 	srl	t7,t6,0x1c
     348:	24840000 	addiu	a0,a0,0
     34c:	000fc080 	sll	t8,t7,0x2
     350:	0098c821 	addu	t9,a0,t8
     354:	8f2e0000 	lw	t6,0(t9)
     358:	3c0900ff 	lui	t1,0xff
     35c:	3529ffff 	ori	t1,t1,0xffff
     360:	00497824 	and	t7,v0,t1
     364:	3c030000 	lui	v1,0x0
     368:	24630000 	addiu	v1,v1,0
     36c:	01cfc021 	addu	t8,t6,t7
     370:	0003c900 	sll	t9,v1,0x4
     374:	3c0a8000 	lui	t2,0x8000
     378:	00197702 	srl	t6,t9,0x1c
     37c:	030a8021 	addu	s0,t8,t2
     380:	000e7880 	sll	t7,t6,0x2
     384:	008fc021 	addu	t8,a0,t7
     388:	8f190000 	lw	t9,0(t8)
     38c:	00697024 	and	t6,v1,t1
     390:	032e7821 	addu	t7,t9,t6
     394:	1000001a 	b	400 <func_80A89A6C+0x134>
     398:	01ea9821 	addu	s3,t7,t2
     39c:	3c020000 	lui	v0,0x0
     3a0:	24420000 	addiu	v0,v0,0
     3a4:	0002c100 	sll	t8,v0,0x4
     3a8:	3c040000 	lui	a0,0x0
     3ac:	0018cf02 	srl	t9,t8,0x1c
     3b0:	24840000 	addiu	a0,a0,0
     3b4:	00197080 	sll	t6,t9,0x2
     3b8:	008e7821 	addu	t7,a0,t6
     3bc:	8df80000 	lw	t8,0(t7)
     3c0:	3c0900ff 	lui	t1,0xff
     3c4:	3529ffff 	ori	t1,t1,0xffff
     3c8:	0049c824 	and	t9,v0,t1
     3cc:	3c030000 	lui	v1,0x0
     3d0:	24630000 	addiu	v1,v1,0
     3d4:	03197021 	addu	t6,t8,t9
     3d8:	00037900 	sll	t7,v1,0x4
     3dc:	3c0a8000 	lui	t2,0x8000
     3e0:	000fc702 	srl	t8,t7,0x1c
     3e4:	01ca8021 	addu	s0,t6,t2
     3e8:	0018c880 	sll	t9,t8,0x2
     3ec:	00997021 	addu	t6,a0,t9
     3f0:	8dcf0000 	lw	t7,0(t6)
     3f4:	0069c024 	and	t8,v1,t1
     3f8:	01f8c821 	addu	t9,t7,t8
     3fc:	032a9821 	addu	s3,t9,t2
     400:	c64e0024 	lwc1	$f14,36(s2)
     404:	c4e40024 	lwc1	$f4,36(a3)
     408:	3c014248 	lui	at,0x4248
     40c:	44811000 	mtc1	at,$f2
     410:	460e2181 	sub.s	$f6,$f4,$f14
     414:	c4e80028 	lwc1	$f8,40(a3)
     418:	c64a0168 	lwc1	$f10,360(s2)
     41c:	3c010000 	lui	at,0x0
     420:	46023482 	mul.s	$f18,$f6,$f2
     424:	460a4101 	sub.s	$f4,$f8,$f10
     428:	c648002c 	lwc1	$f8,44(s2)
     42c:	c4e6002c 	lwc1	$f6,44(a3)
     430:	c42c0000 	lwc1	$f12,0(at)
     434:	46022502 	mul.s	$f20,$f4,$f2
     438:	46083281 	sub.s	$f10,$f6,$f8
     43c:	0200a025 	move	s4,s0
     440:	3c010000 	lui	at,0x0
     444:	46009005 	abs.s	$f0,$f18
     448:	46025582 	mul.s	$f22,$f10,$f2
     44c:	460c003c 	c.lt.s	$f0,$f12
     450:	3c190000 	lui	t9,0x0
     454:	4502000f 	bc1fl	494 <func_80A89A6C+0x1c8>
     458:	c5040024 	lwc1	$f4,36(t0)
     45c:	c4300000 	lwc1	$f16,0(at)
     460:	4600a005 	abs.s	$f0,$f20
     464:	4610003c 	c.lt.s	$f0,$f16
     468:	00000000 	nop
     46c:	45020009 	bc1fl	494 <func_80A89A6C+0x1c8>
     470:	c5040024 	lwc1	$f4,36(t0)
     474:	4600b005 	abs.s	$f0,$f22
     478:	240e0001 	li	t6,1
     47c:	460c003c 	c.lt.s	$f0,$f12
     480:	00000000 	nop
     484:	45020003 	bc1fl	494 <func_80A89A6C+0x1c8>
     488:	c5040024 	lwc1	$f4,36(t0)
     48c:	a3ae0127 	sb	t6,295(sp)
     490:	c5040024 	lwc1	$f4,36(t0)
     494:	3c010000 	lui	at,0x0
     498:	c4300000 	lwc1	$f16,0(at)
     49c:	460e2181 	sub.s	$f6,$f4,$f14
     4a0:	3c014100 	lui	at,0x4100
     4a4:	44812000 	mtc1	at,$f4
     4a8:	240f0001 	li	t7,1
     4ac:	46023202 	mul.s	$f8,$f6,$f2
     4b0:	24110001 	li	s1,1
     4b4:	27aa00e0 	addiu	t2,sp,224
     4b8:	3c0e0000 	lui	t6,0x0
     4bc:	e7a800d4 	swc1	$f8,212(sp)
     4c0:	c50a0028 	lwc1	$f10,40(t0)
     4c4:	c6480168 	lwc1	$f8,360(s2)
     4c8:	46045181 	sub.s	$f6,$f10,$f4
     4cc:	46083281 	sub.s	$f10,$f6,$f8
     4d0:	46025102 	mul.s	$f4,$f10,$f2
     4d4:	e7a400c8 	swc1	$f4,200(sp)
     4d8:	c648002c 	lwc1	$f8,44(s2)
     4dc:	c506002c 	lwc1	$f6,44(t0)
     4e0:	a3af00e0 	sb	t7,224(sp)
     4e4:	46083281 	sub.s	$f10,$f6,$f8
     4e8:	46025102 	mul.s	$f4,$f10,$f2
     4ec:	e7a400bc 	swc1	$f4,188(sp)
     4f0:	0151c021 	addu	t8,t2,s1
     4f4:	26310001 	addiu	s1,s1,1
     4f8:	00118c00 	sll	s1,s1,0x10
     4fc:	00118c03 	sra	s1,s1,0x10
     500:	2a210003 	slti	at,s1,3
     504:	1420fffa 	bnez	at,4f0 <func_80A89A6C+0x224>
     508:	a3000000 	sb	zero,0(t8)
     50c:	8f390000 	lw	t9,0(t9)
     510:	24010157 	li	at,343
     514:	24110001 	li	s1,1
     518:	1721003c 	bne	t9,at,60c <func_80A89A6C+0x340>
     51c:	00000000 	nop
     520:	8dce1360 	lw	t6,4960(t6)
     524:	24010008 	li	at,8
     528:	15c10038 	bne	t6,at,60c <func_80A89A6C+0x340>
     52c:	00000000 	nop
     530:	8ca41c54 	lw	a0,7252(a1)
     534:	240b0001 	li	t3,1
     538:	2402014a 	li	v0,330
     53c:	10800007 	beqz	a0,55c <func_80A89A6C+0x290>
     540:	00801825 	move	v1,a0
     544:	846f0000 	lh	t7,0(v1)
     548:	104f0004 	beq	v0,t7,55c <func_80A89A6C+0x290>
     54c:	00000000 	nop
     550:	8c630124 	lw	v1,292(v1)
     554:	5460fffc 	bnezl	v1,548 <func_80A89A6C+0x27c>
     558:	846f0000 	lh	t7,0(v1)
     55c:	10800008 	beqz	a0,580 <func_80A89A6C+0x2b4>
     560:	00801025 	move	v0,a0
     564:	2404013e 	li	a0,318
     568:	84580000 	lh	t8,0(v0)
     56c:	50980005 	beql	a0,t8,584 <func_80A89A6C+0x2b8>
     570:	c4660024 	lwc1	$f6,36(v1)
     574:	8c420124 	lw	v0,292(v0)
     578:	5440fffc 	bnezl	v0,56c <func_80A89A6C+0x2a0>
     57c:	84580000 	lh	t8,0(v0)
     580:	c4660024 	lwc1	$f6,36(v1)
     584:	c6480024 	lwc1	$f8,36(s2)
     588:	24190001 	li	t9,1
     58c:	240e0001 	li	t6,1
     590:	46083281 	sub.s	$f10,$f6,$f8
     594:	46025102 	mul.s	$f4,$f10,$f2
     598:	e7a400d8 	swc1	$f4,216(sp)
     59c:	c6480168 	lwc1	$f8,360(s2)
     5a0:	c4660028 	lwc1	$f6,40(v1)
     5a4:	46083281 	sub.s	$f10,$f6,$f8
     5a8:	46025102 	mul.s	$f4,$f10,$f2
     5ac:	e7a400cc 	swc1	$f4,204(sp)
     5b0:	c648002c 	lwc1	$f8,44(s2)
     5b4:	c466002c 	lwc1	$f6,44(v1)
     5b8:	a3b900e1 	sb	t9,225(sp)
     5bc:	46083281 	sub.s	$f10,$f6,$f8
     5c0:	46025102 	mul.s	$f4,$f10,$f2
     5c4:	e7a400c0 	swc1	$f4,192(sp)
     5c8:	c6480024 	lwc1	$f8,36(s2)
     5cc:	c4460024 	lwc1	$f6,36(v0)
     5d0:	46083281 	sub.s	$f10,$f6,$f8
     5d4:	46025102 	mul.s	$f4,$f10,$f2
     5d8:	e7a400dc 	swc1	$f4,220(sp)
     5dc:	c6480168 	lwc1	$f8,360(s2)
     5e0:	c4460028 	lwc1	$f6,40(v0)
     5e4:	46083281 	sub.s	$f10,$f6,$f8
     5e8:	46025102 	mul.s	$f4,$f10,$f2
     5ec:	e7a400d0 	swc1	$f4,208(sp)
     5f0:	c648002c 	lwc1	$f8,44(s2)
     5f4:	c446002c 	lwc1	$f6,44(v0)
     5f8:	a3ae00e2 	sb	t6,226(sp)
     5fc:	46083281 	sub.s	$f10,$f6,$f8
     600:	46025102 	mul.s	$f4,$f10,$f2
     604:	1000003c 	b	6f8 <func_80A89A6C+0x42c>
     608:	e7a400c4 	swc1	$f4,196(sp)
     60c:	10c0003a 	beqz	a2,6f8 <func_80A89A6C+0x42c>
     610:	241f0001 	li	ra,1
     614:	240d0023 	li	t5,35
     618:	240c0001 	li	t4,1
     61c:	27a900c8 	addiu	t1,sp,200
     620:	27a800bc 	addiu	t0,sp,188
     624:	27a700d4 	addiu	a3,sp,212
     628:	2a210003 	slti	at,s1,3
     62c:	50200030 	beqzl	at,6f0 <func_80A89A6C+0x424>
     630:	8cc60124 	lw	a2,292(a2)
     634:	c4c60024 	lwc1	$f6,36(a2)
     638:	c6480024 	lwc1	$f8,36(s2)
     63c:	00111080 	sll	v0,s1,0x2
     640:	00e21821 	addu	v1,a3,v0
     644:	46083281 	sub.s	$f10,$f6,$f8
     648:	01222021 	addu	a0,t1,v0
     64c:	01022821 	addu	a1,t0,v0
     650:	46025102 	mul.s	$f4,$f10,$f2
     654:	e4640000 	swc1	$f4,0(v1)
     658:	c6480168 	lwc1	$f8,360(s2)
     65c:	c4c60028 	lwc1	$f6,40(a2)
     660:	c4600000 	lwc1	$f0,0(v1)
     664:	46083281 	sub.s	$f10,$f6,$f8
     668:	46000005 	abs.s	$f0,$f0
     66c:	46025102 	mul.s	$f4,$f10,$f2
     670:	460c003c 	c.lt.s	$f0,$f12
     674:	e4840000 	swc1	$f4,0(a0)
     678:	c648002c 	lwc1	$f8,44(s2)
     67c:	c4c6002c 	lwc1	$f6,44(a2)
     680:	46083281 	sub.s	$f10,$f6,$f8
     684:	46025102 	mul.s	$f4,$f10,$f2
     688:	45000015 	bc1f	6e0 <func_80A89A6C+0x414>
     68c:	e4a40000 	swc1	$f4,0(a1)
     690:	c4800000 	lwc1	$f0,0(a0)
     694:	46000005 	abs.s	$f0,$f0
     698:	4610003c 	c.lt.s	$f0,$f16
     69c:	00000000 	nop
     6a0:	45020010 	bc1fl	6e4 <func_80A89A6C+0x418>
     6a4:	26310001 	addiu	s1,s1,1
     6a8:	c4a00000 	lwc1	$f0,0(a1)
     6ac:	46000005 	abs.s	$f0,$f0
     6b0:	460c003c 	c.lt.s	$f0,$f12
     6b4:	00000000 	nop
     6b8:	4502000a 	bc1fl	6e4 <func_80A89A6C+0x418>
     6bc:	26310001 	addiu	s1,s1,1
     6c0:	84cf001c 	lh	t7,28(a2)
     6c4:	0151c021 	addu	t8,t2,s1
     6c8:	0151c821 	addu	t9,t2,s1
     6cc:	558f0004 	bnel	t4,t7,6e0 <func_80A89A6C+0x414>
     6d0:	a33f0000 	sb	ra,0(t9)
     6d4:	10000002 	b	6e0 <func_80A89A6C+0x414>
     6d8:	a30d0000 	sb	t5,0(t8)
     6dc:	a33f0000 	sb	ra,0(t9)
     6e0:	26310001 	addiu	s1,s1,1
     6e4:	00118c00 	sll	s1,s1,0x10
     6e8:	00118c03 	sra	s1,s1,0x10
     6ec:	8cc60124 	lw	a2,292(a2)
     6f0:	54c0ffce 	bnezl	a2,62c <func_80A89A6C+0x360>
     6f4:	2a210003 	slti	at,s1,3
     6f8:	3c0144fa 	lui	at,0x44fa
     6fc:	4481f000 	mtc1	at,$f30
     700:	3c0142c8 	lui	at,0x42c8
     704:	4481d000 	mtc1	at,$f26
     708:	27a700d4 	addiu	a3,sp,212
     70c:	27a800bc 	addiu	t0,sp,188
     710:	27a900c8 	addiu	t1,sp,200
     714:	00008825 	move	s1,zero
     718:	e7b200b8 	swc1	$f18,184(sp)
     71c:	e7b400b4 	swc1	$f20,180(sp)
     720:	e7b600b0 	swc1	$f22,176(sp)
     724:	93ae0127 	lbu	t6,295(sp)
     728:	c7a600b8 	lwc1	$f6,184(sp)
     72c:	c7a800b0 	lwc1	$f8,176(sp)
     730:	11c00030 	beqz	t6,7f4 <func_80A89A6C+0x528>
     734:	00001825 	move	v1,zero
     738:	860f0000 	lh	t7,0(s0)
     73c:	86180004 	lh	t8,4(s0)
     740:	3c010000 	lui	at,0x0
     744:	448f5000 	mtc1	t7,$f10
     748:	c4300000 	lwc1	$f16,0(at)
     74c:	46805120 	cvt.s.w	$f4,$f10
     750:	44985000 	mtc1	t8,$f10
     754:	46062501 	sub.s	$f20,$f4,$f6
     758:	46805120 	cvt.s.w	$f4,$f10
     75c:	4614a182 	mul.s	$f6,$f20,$f20
     760:	46082581 	sub.s	$f22,$f4,$f8
     764:	4616b282 	mul.s	$f10,$f22,$f22
     768:	460a3000 	add.s	$f0,$f6,$f10
     76c:	46000004 	sqrt.s	$f0,$f0
     770:	46008101 	sub.s	$f4,$f16,$f0
     774:	46102083 	div.s	$f2,$f4,$f16
     778:	4618103c 	c.lt.s	$f2,$f24
     77c:	00000000 	nop
     780:	45020003 	bc1fl	790 <func_80A89A6C+0x4c4>
     784:	c6500170 	lwc1	$f16,368(s2)
     788:	4600c086 	mov.s	$f2,$f24
     78c:	c6500170 	lwc1	$f16,368(s2)
     790:	3c014348 	lui	at,0x4348
     794:	44815000 	mtc1	at,$f10
     798:	46028202 	mul.s	$f8,$f16,$f2
     79c:	3c010000 	lui	at,0x0
     7a0:	46088181 	sub.s	$f6,$f16,$f8
     7a4:	c7a800b4 	lwc1	$f8,180(sp)
     7a8:	460a3101 	sub.s	$f4,$f6,$f10
     7ac:	c42a0000 	lwc1	$f10,0(at)
     7b0:	46024182 	mul.s	$f6,$f8,$f2
     7b4:	460a0301 	sub.s	$f12,$f0,$f10
     7b8:	4618603c 	c.lt.s	$f12,$f24
     7bc:	46043700 	add.s	$f28,$f6,$f4
     7c0:	45000002 	bc1f	7cc <func_80A89A6C+0x500>
     7c4:	00000000 	nop
     7c8:	4600c306 	mov.s	$f12,$f24
     7cc:	460cd202 	mul.s	$f8,$f26,$f12
     7d0:	3c010000 	lui	at,0x0
     7d4:	c4260000 	lwc1	$f6,0(at)
     7d8:	46064482 	mul.s	$f18,$f8,$f6
     7dc:	4612d03c 	c.lt.s	$f26,$f18
     7e0:	00000000 	nop
     7e4:	45000008 	bc1f	808 <func_80A89A6C+0x53c>
     7e8:	00000000 	nop
     7ec:	10000006 	b	808 <func_80A89A6C+0x53c>
     7f0:	4600d486 	mov.s	$f18,$f26
     7f4:	3c014348 	lui	at,0x4348
     7f8:	44812000 	mtc1	at,$f4
     7fc:	c6500170 	lwc1	$f16,368(s2)
     800:	4600d486 	mov.s	$f18,$f26
     804:	46048701 	sub.s	$f28,$f16,$f4
     808:	0143c821 	addu	t9,t2,v1
     80c:	932e0000 	lbu	t6,0(t9)
     810:	51c00046 	beqzl	t6,92c <func_80A89A6C+0x660>
     814:	24630001 	addiu	v1,v1,1
     818:	860f0000 	lh	t7,0(s0)
     81c:	86190004 	lh	t9,4(s0)
     820:	00031080 	sll	v0,v1,0x2
     824:	448f5000 	mtc1	t7,$f10
     828:	44992000 	mtc1	t9,$f4
     82c:	00e2c021 	addu	t8,a3,v0
     830:	46805220 	cvt.s.w	$f8,$f10
     834:	c7060000 	lwc1	$f6,0(t8)
     838:	01027021 	addu	t6,t0,v0
     83c:	3c010000 	lui	at,0x0
     840:	01227821 	addu	t7,t1,v0
     844:	468022a0 	cvt.s.w	$f10,$f4
     848:	46064501 	sub.s	$f20,$f8,$f6
     84c:	c5c80000 	lwc1	$f8,0(t6)
     850:	46085581 	sub.s	$f22,$f10,$f8
     854:	4614a182 	mul.s	$f6,$f20,$f20
     858:	00000000 	nop
     85c:	4616b102 	mul.s	$f4,$f22,$f22
     860:	46043000 	add.s	$f0,$f6,$f4
     864:	10600003 	beqz	v1,874 <func_80A89A6C+0x5a8>
     868:	46000004 	sqrt.s	$f0,$f0
     86c:	51600006 	beqzl	t3,888 <func_80A89A6C+0x5bc>
     870:	4600f201 	sub.s	$f8,$f30,$f0
     874:	c42c0000 	lwc1	$f12,0(at)
     878:	46006281 	sub.s	$f10,$f12,$f0
     87c:	10000003 	b	88c <func_80A89A6C+0x5c0>
     880:	460c5083 	div.s	$f2,$f10,$f12
     884:	4600f201 	sub.s	$f8,$f30,$f0
     888:	461e4083 	div.s	$f2,$f8,$f30
     88c:	4618103c 	c.lt.s	$f2,$f24
     890:	00000000 	nop
     894:	45020003 	bc1fl	8a4 <func_80A89A6C+0x5d8>
     898:	c5e60000 	lwc1	$f6,0(t7)
     89c:	4600c086 	mov.s	$f2,$f24
     8a0:	c5e60000 	lwc1	$f6,0(t7)
     8a4:	3c014348 	lui	at,0x4348
     8a8:	44814000 	mtc1	at,$f8
     8ac:	46023382 	mul.s	$f14,$f6,$f2
     8b0:	3c010000 	lui	at,0x0
     8b4:	46028102 	mul.s	$f4,$f16,$f2
     8b8:	46048281 	sub.s	$f10,$f16,$f4
     8bc:	c4240000 	lwc1	$f4,0(at)
     8c0:	46040301 	sub.s	$f12,$f0,$f4
     8c4:	46085181 	sub.s	$f6,$f10,$f8
     8c8:	4618603c 	c.lt.s	$f12,$f24
     8cc:	46067380 	add.s	$f14,$f14,$f6
     8d0:	45000002 	bc1f	8dc <func_80A89A6C+0x610>
     8d4:	00000000 	nop
     8d8:	4600c306 	mov.s	$f12,$f24
     8dc:	460cd282 	mul.s	$f10,$f26,$f12
     8e0:	3c010000 	lui	at,0x0
     8e4:	c4280000 	lwc1	$f8,0(at)
     8e8:	46085082 	mul.s	$f2,$f10,$f8
     8ec:	4602d03c 	c.lt.s	$f26,$f2
     8f0:	00000000 	nop
     8f4:	45020003 	bc1fl	904 <func_80A89A6C+0x638>
     8f8:	461c703c 	c.lt.s	$f14,$f28
     8fc:	4600d086 	mov.s	$f2,$f26
     900:	461c703c 	c.lt.s	$f14,$f28
     904:	00000000 	nop
     908:	45020003 	bc1fl	918 <func_80A89A6C+0x64c>
     90c:	4612103c 	c.lt.s	$f2,$f18
     910:	46007706 	mov.s	$f28,$f14
     914:	4612103c 	c.lt.s	$f2,$f18
     918:	00000000 	nop
     91c:	45020003 	bc1fl	92c <func_80A89A6C+0x660>
     920:	24630001 	addiu	v1,v1,1
     924:	46001486 	mov.s	$f18,$f2
     928:	24630001 	addiu	v1,v1,1
     92c:	00031c00 	sll	v1,v1,0x10
     930:	00031c03 	sra	v1,v1,0x10
     934:	28610003 	slti	at,v1,3
     938:	5420ffb4 	bnezl	at,80c <func_80A89A6C+0x540>
     93c:	0143c821 	addu	t9,t2,v1
     940:	8fb80074 	lw	t8,116(sp)
     944:	00117880 	sll	t7,s1,0x2
     948:	01f17821 	addu	t7,t7,s1
     94c:	8f191de4 	lw	t9,7652(t8)
     950:	000f78c0 	sll	t7,t7,0x3
     954:	01f17823 	subu	t7,t7,s1
     958:	00197140 	sll	t6,t9,0x5
     95c:	01d97023 	subu	t6,t6,t9
     960:	000e7080 	sll	t6,t6,0x2
     964:	000f7900 	sll	t7,t7,0x4
     968:	01f17821 	addu	t7,t7,s1
     96c:	01d97021 	addu	t6,t6,t9
     970:	000e7140 	sll	t6,t6,0x5
     974:	000f7900 	sll	t7,t7,0x4
     978:	01cf2021 	addu	a0,t6,t7
     97c:	00042400 	sll	a0,a0,0x10
     980:	00042403 	sra	a0,a0,0x10
     984:	e7b200a8 	swc1	$f18,168(sp)
     988:	0c000000 	jal	0 <EnJsjutan_Init>
     98c:	a3ab008b 	sb	t3,139(sp)
     990:	92580174 	lbu	t8,372(s2)
     994:	27a700d4 	addiu	a3,sp,212
     998:	27a800bc 	addiu	t0,sp,188
     99c:	27a900c8 	addiu	t1,sp,200
     9a0:	27aa00e0 	addiu	t2,sp,224
     9a4:	93ab008b 	lbu	t3,139(sp)
     9a8:	1300001d 	beqz	t8,a20 <func_80A89A6C+0x754>
     9ac:	c7b200a8 	lwc1	$f18,168(sp)
     9b0:	46120182 	mul.s	$f6,$f0,$f18
     9b4:	866e0002 	lh	t6,2(s3)
     9b8:	3c014248 	lui	at,0x4248
     9bc:	448e4000 	mtc1	t6,$f8
     9c0:	4606e100 	add.s	$f4,$f28,$f6
     9c4:	468041a0 	cvt.s.w	$f6,$f8
     9c8:	44814000 	mtc1	at,$f8
     9cc:	4600228d 	trunc.w.s	$f10,$f4
     9d0:	c6440168 	lwc1	$f4,360(s2)
     9d4:	44025000 	mfc1	v0,$f10
     9d8:	46043281 	sub.s	$f10,$f6,$f4
     9dc:	0002c400 	sll	t8,v0,0x10
     9e0:	0018cc03 	sra	t9,t8,0x10
     9e4:	46085182 	mul.s	$f6,$f10,$f8
     9e8:	00021c00 	sll	v1,v0,0x10
     9ec:	00031c03 	sra	v1,v1,0x10
     9f0:	4600310d 	trunc.w.s	$f4,$f6
     9f4:	44042000 	mfc1	a0,$f4
     9f8:	00000000 	nop
     9fc:	00042400 	sll	a0,a0,0x10
     a00:	00042403 	sra	a0,a0,0x10
     a04:	0324082a 	slt	at,t9,a0
     a08:	10200003 	beqz	at,a18 <func_80A89A6C+0x74c>
     a0c:	00000000 	nop
     a10:	00041c00 	sll	v1,a0,0x10
     a14:	00031c03 	sra	v1,v1,0x10
     a18:	10000023 	b	aa8 <func_80A89A6C+0x7dc>
     a1c:	a6030002 	sh	v1,2(s0)
     a20:	46120082 	mul.s	$f2,$f0,$f18
     a24:	3c013f00 	lui	at,0x3f00
     a28:	44813000 	mtc1	at,$f6
     a2c:	0011c080 	sll	t8,s1,0x2
     a30:	0311c023 	subu	t8,t8,s1
     a34:	3c190000 	lui	t9,0x0
     a38:	27390000 	addiu	t9,t9,0
     a3c:	46061102 	mul.s	$f4,$f2,$f6
     a40:	4602e280 	add.s	$f10,$f28,$f2
     a44:	0018c040 	sll	t8,t8,0x1
     a48:	03191021 	addu	v0,t8,t9
     a4c:	4600520d 	trunc.w.s	$f8,$f10
     a50:	4600228d 	trunc.w.s	$f10,$f4
     a54:	440f4000 	mfc1	t7,$f8
     a58:	4600120d 	trunc.w.s	$f8,$f2
     a5c:	44035000 	mfc1	v1,$f10
     a60:	a60f0002 	sh	t7,2(s0)
     a64:	844f0000 	lh	t7,0(v0)
     a68:	00031c00 	sll	v1,v1,0x10
     a6c:	00031c03 	sra	v1,v1,0x10
     a70:	01e3c021 	addu	t8,t7,v1
     a74:	a6180000 	sh	t8,0(s0)
     a78:	84590004 	lh	t9,4(v0)
     a7c:	44044000 	mfc1	a0,$f8
     a80:	03237021 	addu	t6,t9,v1
     a84:	a60e0004 	sh	t6,4(s0)
     a88:	84580000 	lh	t8,0(v0)
     a8c:	00042400 	sll	a0,a0,0x10
     a90:	00042403 	sra	a0,a0,0x10
     a94:	0304c821 	addu	t9,t8,a0
     a98:	a6790000 	sh	t9,0(s3)
     a9c:	844e0004 	lh	t6,4(v0)
     aa0:	01c47821 	addu	t7,t6,a0
     aa4:	a66f0004 	sh	t7,4(s3)
     aa8:	26310001 	addiu	s1,s1,1
     aac:	00118c00 	sll	s1,s1,0x10
     ab0:	00118c03 	sra	s1,s1,0x10
     ab4:	2a210090 	slti	at,s1,144
     ab8:	26100010 	addiu	s0,s0,16
     abc:	1420ff19 	bnez	at,724 <func_80A89A6C+0x458>
     ac0:	26730010 	addiu	s3,s3,16
     ac4:	92580174 	lbu	t8,372(s2)
     ac8:	3c013f80 	lui	at,0x3f80
     acc:	57000021 	bnezl	t8,b54 <func_80A89A6C+0x888>
     ad0:	4481a000 	mtc1	at,$f20
     ad4:	c6460168 	lwc1	$f6,360(s2)
     ad8:	e6580060 	swc1	$f24,96(s2)
     adc:	3c020000 	lui	v0,0x0
     ae0:	e6460028 	swc1	$f6,40(s2)
     ae4:	9442000c 	lhu	v0,12(v0)
     ae8:	34018000 	li	at,0x8000
     aec:	3419ffff 	li	t9,0xffff
     af0:	0041082a 	slt	at,v0,at
     af4:	14200003 	bnez	at,b04 <func_80A89A6C+0x838>
     af8:	00401825 	move	v1,v0
     afc:	03231023 	subu	v0,t9,v1
     b00:	3042ffff 	andi	v0,v0,0xffff
     b04:	44822000 	mtc1	v0,$f4
     b08:	3c014f80 	lui	at,0x4f80
     b0c:	04410004 	bgez	v0,b20 <func_80A89A6C+0x854>
     b10:	468022a0 	cvt.s.w	$f10,$f4
     b14:	44814000 	mtc1	at,$f8
     b18:	00000000 	nop
     b1c:	46085280 	add.s	$f10,$f10,$f8
     b20:	3c010000 	lui	at,0x0
     b24:	c4260000 	lwc1	$f6,0(at)
     b28:	3c014120 	lui	at,0x4120
     b2c:	44814000 	mtc1	at,$f8
     b30:	46065102 	mul.s	$f4,$f10,$f6
     b34:	3c01447a 	lui	at,0x447a
     b38:	44813000 	mtc1	at,$f6
     b3c:	00000000 	nop
     b40:	e6460170 	swc1	$f6,368(s2)
     b44:	46082280 	add.s	$f10,$f4,$f8
     b48:	1000001c 	b	bbc <func_80A89A6C+0x8f0>
     b4c:	e64a016c 	swc1	$f10,364(s2)
     b50:	4481a000 	mtc1	at,$f20
     b54:	3c01447a 	lui	at,0x447a
     b58:	44814000 	mtc1	at,$f8
     b5c:	c6440168 	lwc1	$f4,360(s2)
     b60:	4406a000 	mfc1	a2,$f20
     b64:	26440028 	addiu	a0,s2,40
     b68:	46082281 	sub.s	$f10,$f4,$f8
     b6c:	8e470060 	lw	a3,96(s2)
     b70:	44055000 	mfc1	a1,$f10
     b74:	0c000000 	jal	0 <EnJsjutan_Init>
     b78:	00000000 	nop
     b7c:	4406a000 	mfc1	a2,$f20
     b80:	26440060 	addiu	a0,s2,96
     b84:	3c0540a0 	lui	a1,0x40a0
     b88:	0c000000 	jal	0 <EnJsjutan_Init>
     b8c:	3c073f00 	lui	a3,0x3f00
     b90:	4405c000 	mfc1	a1,$f24
     b94:	4406a000 	mfc1	a2,$f20
     b98:	2644016c 	addiu	a0,s2,364
     b9c:	0c000000 	jal	0 <EnJsjutan_Init>
     ba0:	3c074040 	lui	a3,0x4040
     ba4:	3c05c59c 	lui	a1,0xc59c
     ba8:	4406a000 	mfc1	a2,$f20
     bac:	4407d000 	mfc1	a3,$f26
     bb0:	34a54000 	ori	a1,a1,0x4000
     bb4:	0c000000 	jal	0 <EnJsjutan_Init>
     bb8:	26440170 	addiu	a0,s2,368
     bbc:	3c0142f0 	lui	at,0x42f0
     bc0:	44813000 	mtc1	at,$f6
     bc4:	02808025 	move	s0,s4
     bc8:	e7b80108 	swc1	$f24,264(sp)
     bcc:	e7b8010c 	swc1	$f24,268(sp)
     bd0:	00008825 	move	s1,zero
     bd4:	2413000b 	li	s3,11
     bd8:	e7a60110 	swc1	$f6,272(sp)
     bdc:	2401000c 	li	at,12
     be0:	0221001a 	div	zero,s1,at
     be4:	00007010 	mfhi	t6
     be8:	26320001 	addiu	s2,s1,1
     bec:	166e000f 	bne	s3,t6,c2c <func_80A89A6C+0x960>
     bf0:	0012c400 	sll	t8,s2,0x10
     bf4:	2622ffff 	addiu	v0,s1,-1
     bf8:	0002c400 	sll	t8,v0,0x10
     bfc:	0018cc03 	sra	t9,t8,0x10
     c00:	00197100 	sll	t6,t9,0x4
     c04:	028ec021 	addu	t8,s4,t6
     c08:	87190004 	lh	t9,4(t8)
     c0c:	860f0004 	lh	t7,4(s0)
     c10:	00021c00 	sll	v1,v0,0x10
     c14:	00031c03 	sra	v1,v1,0x10
     c18:	01f97023 	subu	t6,t7,t9
     c1c:	448e2000 	mtc1	t6,$f4
     c20:	26320001 	addiu	s2,s1,1
     c24:	1000000c 	b	c58 <func_80A89A6C+0x98c>
     c28:	468025a0 	cvt.s.w	$f22,$f4
     c2c:	00187c03 	sra	t7,t8,0x10
     c30:	000fc900 	sll	t9,t7,0x4
     c34:	02997021 	addu	t6,s4,t9
     c38:	85d80004 	lh	t8,4(t6)
     c3c:	860f0004 	lh	t7,4(s0)
     c40:	00121c00 	sll	v1,s2,0x10
     c44:	00031c03 	sra	v1,v1,0x10
     c48:	030fc823 	subu	t9,t8,t7
     c4c:	44994000 	mtc1	t9,$f8
     c50:	00000000 	nop
     c54:	468045a0 	cvt.s.w	$f22,$f8
     c58:	00037100 	sll	t6,v1,0x4
     c5c:	028ec021 	addu	t8,s4,t6
     c60:	870f0002 	lh	t7,2(t8)
     c64:	86190002 	lh	t9,2(s0)
     c68:	4600b306 	mov.s	$f12,$f22
     c6c:	01f97023 	subu	t6,t7,t9
     c70:	448e5000 	mtc1	t6,$f10
     c74:	00000000 	nop
     c78:	46805620 	cvt.s.w	$f24,$f10
     c7c:	0c000000 	jal	0 <EnJsjutan_Init>
     c80:	4600c386 	mov.s	$f14,$f24
     c84:	2a210084 	slti	at,s1,132
     c88:	1420000c 	bnez	at,cbc <func_80A89A6C+0x9f0>
     c8c:	46000586 	mov.s	$f22,$f0
     c90:	262ffff4 	addiu	t7,s1,-12
     c94:	000fcc00 	sll	t9,t7,0x10
     c98:	00197403 	sra	t6,t9,0x10
     c9c:	000e7900 	sll	t7,t6,0x4
     ca0:	028fc821 	addu	t9,s4,t7
     ca4:	872e0000 	lh	t6,0(t9)
     ca8:	86180000 	lh	t8,0(s0)
     cac:	030e7823 	subu	t7,t8,t6
     cb0:	448f3000 	mtc1	t7,$f6
     cb4:	1000000c 	b	ce8 <func_80A89A6C+0xa1c>
     cb8:	46803520 	cvt.s.w	$f20,$f6
     cbc:	2639000c 	addiu	t9,s1,12
     cc0:	0019c400 	sll	t8,t9,0x10
     cc4:	00187403 	sra	t6,t8,0x10
     cc8:	000e7900 	sll	t7,t6,0x4
     ccc:	028fc821 	addu	t9,s4,t7
     cd0:	87380000 	lh	t8,0(t9)
     cd4:	860e0000 	lh	t6,0(s0)
     cd8:	030e7823 	subu	t7,t8,t6
     cdc:	448f2000 	mtc1	t7,$f4
     ce0:	00000000 	nop
     ce4:	46802520 	cvt.s.w	$f20,$f4
     ce8:	4600a306 	mov.s	$f12,$f20
     cec:	0c000000 	jal	0 <EnJsjutan_Init>
     cf0:	4600c386 	mov.s	$f14,$f24
     cf4:	46000506 	mov.s	$f20,$f0
     cf8:	4600b306 	mov.s	$f12,$f22
     cfc:	0c000000 	jal	0 <EnJsjutan_Init>
     d00:	00002825 	move	a1,zero
     d04:	4600a306 	mov.s	$f12,$f20
     d08:	0c000000 	jal	0 <EnJsjutan_Init>
     d0c:	24050001 	li	a1,1
     d10:	27a40108 	addiu	a0,sp,264
     d14:	0c000000 	jal	0 <EnJsjutan_Init>
     d18:	27a500fc 	addiu	a1,sp,252
     d1c:	c7a800fc 	lwc1	$f8,252(sp)
     d20:	00128c00 	sll	s1,s2,0x10
     d24:	00118c03 	sra	s1,s1,0x10
     d28:	4600428d 	trunc.w.s	$f10,$f8
     d2c:	2a210090 	slti	at,s1,144
     d30:	26100010 	addiu	s0,s0,16
     d34:	44185000 	mfc1	t8,$f10
     d38:	00000000 	nop
     d3c:	a218fffc 	sb	t8,-4(s0)
     d40:	c7a60100 	lwc1	$f6,256(sp)
     d44:	4600310d 	trunc.w.s	$f4,$f6
     d48:	440f2000 	mfc1	t7,$f4
     d4c:	00000000 	nop
     d50:	a20ffffd 	sb	t7,-3(s0)
     d54:	c7a80104 	lwc1	$f8,260(sp)
     d58:	4600428d 	trunc.w.s	$f10,$f8
     d5c:	44185000 	mfc1	t8,$f10
     d60:	1420ff9e 	bnez	at,bdc <func_80A89A6C+0x910>
     d64:	a218fffe 	sb	t8,-2(s0)
     d68:	8fbf005c 	lw	ra,92(sp)
     d6c:	d7b40018 	ldc1	$f20,24(sp)
     d70:	d7b60020 	ldc1	$f22,32(sp)
     d74:	d7b80028 	ldc1	$f24,40(sp)
     d78:	d7ba0030 	ldc1	$f26,48(sp)
     d7c:	d7bc0038 	ldc1	$f28,56(sp)
     d80:	d7be0040 	ldc1	$f30,64(sp)
     d84:	8fb00048 	lw	s0,72(sp)
     d88:	8fb1004c 	lw	s1,76(sp)
     d8c:	8fb20050 	lw	s2,80(sp)
     d90:	8fb30054 	lw	s3,84(sp)
     d94:	8fb40058 	lw	s4,88(sp)
     d98:	03e00008 	jr	ra
     d9c:	27bd0128 	addiu	sp,sp,296

00000da0 <EnJsjutan_Update>:
     da0:	27bdffe0 	addiu	sp,sp,-32
     da4:	3c010001 	lui	at,0x1
     da8:	afbf0014 	sw	ra,20(sp)
     dac:	afa40020 	sw	a0,32(sp)
     db0:	afa50024 	sw	a1,36(sp)
     db4:	00a11021 	addu	v0,a1,at
     db8:	8c441de4 	lw	a0,7652(v0)
     dbc:	afa20018 	sw	v0,24(sp)
     dc0:	00800821 	move	at,a0
     dc4:	00042080 	sll	a0,a0,0x2
     dc8:	00812023 	subu	a0,a0,at
     dcc:	00042100 	sll	a0,a0,0x4
     dd0:	00812023 	subu	a0,a0,at
     dd4:	000420c0 	sll	a0,a0,0x3
     dd8:	00812023 	subu	a0,a0,at
     ddc:	000420c0 	sll	a0,a0,0x3
     de0:	00042400 	sll	a0,a0,0x10
     de4:	0c000000 	jal	0 <EnJsjutan_Init>
     de8:	00042403 	sra	a0,a0,0x10
     dec:	3c014396 	lui	at,0x4396
     df0:	44812000 	mtc1	at,$f4
     df4:	8fb80020 	lw	t8,32(sp)
     df8:	8fa20018 	lw	v0,24(sp)
     dfc:	46040182 	mul.s	$f6,$f0,$f4
     e00:	4600320d 	trunc.w.s	$f8,$f6
     e04:	440f4000 	mfc1	t7,$f8
     e08:	00000000 	nop
     e0c:	a70f00b4 	sh	t7,180(t8)
     e10:	8c441de4 	lw	a0,7652(v0)
     e14:	00800821 	move	at,a0
     e18:	000420c0 	sll	a0,a0,0x3
     e1c:	00812023 	subu	a0,a0,at
     e20:	000420c0 	sll	a0,a0,0x3
     e24:	00812023 	subu	a0,a0,at
     e28:	00042080 	sll	a0,a0,0x2
     e2c:	00812023 	subu	a0,a0,at
     e30:	00042080 	sll	a0,a0,0x2
     e34:	00812023 	subu	a0,a0,at
     e38:	00042080 	sll	a0,a0,0x2
     e3c:	00042400 	sll	a0,a0,0x10
     e40:	0c000000 	jal	0 <EnJsjutan_Init>
     e44:	00042403 	sra	a0,a0,0x10
     e48:	3c014396 	lui	at,0x4396
     e4c:	44815000 	mtc1	at,$f10
     e50:	8fa90020 	lw	t1,32(sp)
     e54:	460a0402 	mul.s	$f16,$f0,$f10
     e58:	4600848d 	trunc.w.s	$f18,$f16
     e5c:	44089000 	mfc1	t0,$f18
     e60:	00000000 	nop
     e64:	a52800b8 	sh	t0,184(t1)
     e68:	8fbf0014 	lw	ra,20(sp)
     e6c:	27bd0020 	addiu	sp,sp,32
     e70:	03e00008 	jr	ra
     e74:	00000000 	nop

00000e78 <EnJsjutan_Draw>:
     e78:	27bdff78 	addiu	sp,sp,-136
     e7c:	afbf001c 	sw	ra,28(sp)
     e80:	afb10018 	sw	s1,24(sp)
     e84:	afb00014 	sw	s0,20(sp)
     e88:	afa5008c 	sw	a1,140(sp)
     e8c:	8c820118 	lw	v0,280(a0)
     e90:	8ca50000 	lw	a1,0(a1)
     e94:	00808025 	move	s0,a0
     e98:	3c060000 	lui	a2,0x0
     e9c:	24c60000 	addiu	a2,a2,0
     ea0:	27a40064 	addiu	a0,sp,100
     ea4:	240702bd 	li	a3,701
     ea8:	afa20078 	sw	v0,120(sp)
     eac:	0c000000 	jal	0 <EnJsjutan_Init>
     eb0:	00a08825 	move	s1,a1
     eb4:	860f001c 	lh	t7,28(s0)
     eb8:	24010001 	li	at,1
     ebc:	8fa20078 	lw	v0,120(sp)
     ec0:	55e10013 	bnel	t7,at,f10 <EnJsjutan_Draw+0x98>
     ec4:	92090175 	lbu	t1,373(s0)
     ec8:	c4440024 	lwc1	$f4,36(v0)
     ecc:	92180175 	lbu	t8,373(s0)
     ed0:	24190001 	li	t9,1
     ed4:	e6040024 	swc1	$f4,36(s0)
     ed8:	c4460028 	lwc1	$f6,40(v0)
     edc:	02002025 	move	a0,s0
     ee0:	e6060028 	swc1	$f6,40(s0)
     ee4:	c448002c 	lwc1	$f8,44(v0)
     ee8:	c60a0028 	lwc1	$f10,40(s0)
     eec:	e608002c 	swc1	$f8,44(s0)
     ef0:	1700002b 	bnez	t8,fa0 <EnJsjutan_Draw+0x128>
     ef4:	e60a0168 	swc1	$f10,360(s0)
     ef8:	a2190175 	sb	t9,373(s0)
     efc:	0c000000 	jal	0 <EnJsjutan_Init>
     f00:	8fa5008c 	lw	a1,140(sp)
     f04:	10000027 	b	fa4 <EnJsjutan_Draw+0x12c>
     f08:	02002025 	move	a0,s0
     f0c:	92090175 	lbu	t1,373(s0)
     f10:	240a0001 	li	t2,1
     f14:	55200023 	bnezl	t1,fa4 <EnJsjutan_Draw+0x12c>
     f18:	02002025 	move	a0,s0
     f1c:	a20a0175 	sb	t2,373(s0)
     f20:	844400b6 	lh	a0,182(v0)
     f24:	0c000000 	jal	0 <EnJsjutan_Init>
     f28:	afa20078 	sw	v0,120(sp)
     f2c:	3c014270 	lui	at,0x4270
     f30:	44818000 	mtc1	at,$f16
     f34:	8fa20078 	lw	v0,120(sp)
     f38:	3c0140a0 	lui	at,0x40a0
     f3c:	46100482 	mul.s	$f18,$f0,$f16
     f40:	c4440024 	lwc1	$f4,36(v0)
     f44:	44815000 	mtc1	at,$f10
     f48:	3c014120 	lui	at,0x4120
     f4c:	46049180 	add.s	$f6,$f18,$f4
     f50:	44819000 	mtc1	at,$f18
     f54:	e6060024 	swc1	$f6,36(s0)
     f58:	c4480028 	lwc1	$f8,40(v0)
     f5c:	460a4400 	add.s	$f16,$f8,$f10
     f60:	46128101 	sub.s	$f4,$f16,$f18
     f64:	e6040028 	swc1	$f4,40(s0)
     f68:	0c000000 	jal	0 <EnJsjutan_Init>
     f6c:	844400b6 	lh	a0,182(v0)
     f70:	3c014270 	lui	at,0x4270
     f74:	44813000 	mtc1	at,$f6
     f78:	8fa20078 	lw	v0,120(sp)
     f7c:	c6120028 	lwc1	$f18,40(s0)
     f80:	46060202 	mul.s	$f8,$f0,$f6
     f84:	c44a002c 	lwc1	$f10,44(v0)
     f88:	e6120168 	swc1	$f18,360(s0)
     f8c:	02002025 	move	a0,s0
     f90:	460a4400 	add.s	$f16,$f8,$f10
     f94:	e610002c 	swc1	$f16,44(s0)
     f98:	0c000000 	jal	0 <EnJsjutan_Init>
     f9c:	8fa5008c 	lw	a1,140(sp)
     fa0:	02002025 	move	a0,s0
     fa4:	0c000000 	jal	0 <EnJsjutan_Init>
     fa8:	8fa5008c 	lw	a1,140(sp)
     fac:	920b0164 	lbu	t3,356(s0)
     fb0:	11600017 	beqz	t3,1010 <EnJsjutan_Draw+0x198>
     fb4:	3c040000 	lui	a0,0x0
     fb8:	3c030000 	lui	v1,0x0
     fbc:	a2000164 	sb	zero,356(s0)
     fc0:	24630000 	addiu	v1,v1,0
     fc4:	24840000 	addiu	a0,a0,0
     fc8:	00001025 	move	v0,zero
     fcc:	240500ff 	li	a1,255
     fd0:	00026040 	sll	t4,v0,0x1
     fd4:	008c6821 	addu	t5,a0,t4
     fd8:	95ae0000 	lhu	t6,0(t5)
     fdc:	00627821 	addu	t7,v1,v0
     fe0:	0062c021 	addu	t8,v1,v0
     fe4:	51c00004 	beqzl	t6,ff8 <EnJsjutan_Draw+0x180>
     fe8:	a3000000 	sb	zero,0(t8)
     fec:	10000002 	b	ff8 <EnJsjutan_Draw+0x180>
     ff0:	a1e50000 	sb	a1,0(t7)
     ff4:	a3000000 	sb	zero,0(t8)
     ff8:	24420001 	addiu	v0,v0,1
     ffc:	00021400 	sll	v0,v0,0x10
    1000:	00021403 	sra	v0,v0,0x10
    1004:	28410800 	slti	at,v0,2048
    1008:	5420fff2 	bnezl	at,fd4 <EnJsjutan_Draw+0x15c>
    100c:	00026040 	sll	t4,v0,0x1
    1010:	8fb9008c 	lw	t9,140(sp)
    1014:	0c000000 	jal	0 <EnJsjutan_Init>
    1018:	8f240000 	lw	a0,0(t9)
    101c:	8e2202c0 	lw	v0,704(s1)
    1020:	3c0afa00 	lui	t2,0xfa00
    1024:	3c014040 	lui	at,0x4040
    1028:	24490008 	addiu	t1,v0,8
    102c:	ae2902c0 	sw	t1,704(s1)
    1030:	ac4a0000 	sw	t2,0(v0)
    1034:	c604016c 	lwc1	$f4,364(s0)
    1038:	44817000 	mtc1	at,$f14
    103c:	00003825 	move	a3,zero
    1040:	4600218d 	trunc.w.s	$f6,$f4
    1044:	440e3000 	mfc1	t6,$f6
    1048:	00000000 	nop
    104c:	31cf00ff 	andi	t7,t6,0xff
    1050:	ac4f0004 	sw	t7,4(v0)
    1054:	8e06002c 	lw	a2,44(s0)
    1058:	0c000000 	jal	0 <EnJsjutan_Init>
    105c:	c60c0024 	lwc1	$f12,36(s0)
    1060:	3c013f80 	lui	at,0x3f80
    1064:	44817000 	mtc1	at,$f14
    1068:	c60c0050 	lwc1	$f12,80(s0)
    106c:	8e060058 	lw	a2,88(s0)
    1070:	0c000000 	jal	0 <EnJsjutan_Init>
    1074:	24070001 	li	a3,1
    1078:	8e2202c0 	lw	v0,704(s1)
    107c:	3c19da38 	lui	t9,0xda38
    1080:	37390003 	ori	t9,t9,0x3
    1084:	24580008 	addiu	t8,v0,8
    1088:	ae3802c0 	sw	t8,704(s1)
    108c:	ac590000 	sw	t9,0(v0)
    1090:	8fa9008c 	lw	t1,140(sp)
    1094:	3c050000 	lui	a1,0x0
    1098:	24a50000 	addiu	a1,a1,0
    109c:	8d240000 	lw	a0,0(t1)
    10a0:	2406030e 	li	a2,782
    10a4:	0c000000 	jal	0 <EnJsjutan_Init>
    10a8:	afa2005c 	sw	v0,92(sp)
    10ac:	8fa3005c 	lw	v1,92(sp)
    10b0:	3c0b0000 	lui	t3,0x0
    10b4:	256b0000 	addiu	t3,t3,0
    10b8:	ac620004 	sw	v0,4(v1)
    10bc:	8e2202c0 	lw	v0,704(s1)
    10c0:	3c07de00 	lui	a3,0xde00
    10c4:	3c0de700 	lui	t5,0xe700
    10c8:	244a0008 	addiu	t2,v0,8
    10cc:	ae2a02c0 	sw	t2,704(s1)
    10d0:	ac4b0004 	sw	t3,4(v0)
    10d4:	ac470000 	sw	a3,0(v0)
    10d8:	8e2202c0 	lw	v0,704(s1)
    10dc:	3c010001 	lui	at,0x1
    10e0:	3c19db06 	lui	t9,0xdb06
    10e4:	244c0008 	addiu	t4,v0,8
    10e8:	ae2c02c0 	sw	t4,704(s1)
    10ec:	ac400004 	sw	zero,4(v0)
    10f0:	ac4d0000 	sw	t5,0(v0)
    10f4:	8fa8008c 	lw	t0,140(sp)
    10f8:	3c0bdb06 	lui	t3,0xdb06
    10fc:	37390030 	ori	t9,t9,0x30
    1100:	01013021 	addu	a2,t0,at
    1104:	8cce1de4 	lw	t6,7652(a2)
    1108:	356b0030 	ori	t3,t3,0x30
    110c:	31cf0001 	andi	t7,t6,0x1
    1110:	51e0000a 	beqzl	t7,113c <EnJsjutan_Draw+0x2c4>
    1114:	8e2202c0 	lw	v0,704(s1)
    1118:	8e2202c0 	lw	v0,704(s1)
    111c:	3c090000 	lui	t1,0x0
    1120:	25290000 	addiu	t1,t1,0
    1124:	24580008 	addiu	t8,v0,8
    1128:	ae3802c0 	sw	t8,704(s1)
    112c:	ac490004 	sw	t1,4(v0)
    1130:	10000008 	b	1154 <EnJsjutan_Draw+0x2dc>
    1134:	ac590000 	sw	t9,0(v0)
    1138:	8e2202c0 	lw	v0,704(s1)
    113c:	3c0c0000 	lui	t4,0x0
    1140:	258c0000 	addiu	t4,t4,0
    1144:	244a0008 	addiu	t2,v0,8
    1148:	ae2a02c0 	sw	t2,704(s1)
    114c:	ac4c0004 	sw	t4,4(v0)
    1150:	ac4b0000 	sw	t3,0(v0)
    1154:	8e2202c0 	lw	v0,704(s1)
    1158:	3c050000 	lui	a1,0x0
    115c:	24a50000 	addiu	a1,a1,0
    1160:	244d0008 	addiu	t5,v0,8
    1164:	ae2d02c0 	sw	t5,704(s1)
    1168:	ac450004 	sw	a1,4(v0)
    116c:	ac470000 	sw	a3,0(v0)
    1170:	8d040000 	lw	a0,0(t0)
    1174:	afa60028 	sw	a2,40(sp)
    1178:	0c000000 	jal	0 <EnJsjutan_Init>
    117c:	afa5002c 	sw	a1,44(sp)
    1180:	3c014040 	lui	at,0x4040
    1184:	44815000 	mtc1	at,$f10
    1188:	c6080168 	lwc1	$f8,360(s0)
    118c:	c60c0024 	lwc1	$f12,36(s0)
    1190:	8e06002c 	lw	a2,44(s0)
    1194:	00003825 	move	a3,zero
    1198:	0c000000 	jal	0 <EnJsjutan_Init>
    119c:	460a4380 	add.s	$f14,$f8,$f10
    11a0:	c60c0050 	lwc1	$f12,80(s0)
    11a4:	c60e0054 	lwc1	$f14,84(s0)
    11a8:	8e060058 	lw	a2,88(s0)
    11ac:	0c000000 	jal	0 <EnJsjutan_Init>
    11b0:	24070001 	li	a3,1
    11b4:	8e2202c0 	lw	v0,704(s1)
    11b8:	3c0fda38 	lui	t7,0xda38
    11bc:	35ef0003 	ori	t7,t7,0x3
    11c0:	244e0008 	addiu	t6,v0,8
    11c4:	ae2e02c0 	sw	t6,704(s1)
    11c8:	ac4f0000 	sw	t7,0(v0)
    11cc:	8fb8008c 	lw	t8,140(sp)
    11d0:	3c050000 	lui	a1,0x0
    11d4:	24a50000 	addiu	a1,a1,0
    11d8:	24060325 	li	a2,805
    11dc:	00408025 	move	s0,v0
    11e0:	0c000000 	jal	0 <EnJsjutan_Init>
    11e4:	8f040000 	lw	a0,0(t8)
    11e8:	ae020004 	sw	v0,4(s0)
    11ec:	8e2202c0 	lw	v0,704(s1)
    11f0:	3c090000 	lui	t1,0x0
    11f4:	25290000 	addiu	t1,t1,0
    11f8:	24590008 	addiu	t9,v0,8
    11fc:	ae3902c0 	sw	t9,704(s1)
    1200:	3c04de00 	lui	a0,0xde00
    1204:	ac440000 	sw	a0,0(v0)
    1208:	ac490004 	sw	t1,4(v0)
    120c:	8e2202c0 	lw	v0,704(s1)
    1210:	3c0be700 	lui	t3,0xe700
    1214:	3c18db06 	lui	t8,0xdb06
    1218:	244a0008 	addiu	t2,v0,8
    121c:	ae2a02c0 	sw	t2,704(s1)
    1220:	ac400004 	sw	zero,4(v0)
    1224:	ac4b0000 	sw	t3,0(v0)
    1228:	8fac0028 	lw	t4,40(sp)
    122c:	3c0adb06 	lui	t2,0xdb06
    1230:	37180030 	ori	t8,t8,0x30
    1234:	8d8d1de4 	lw	t5,7652(t4)
    1238:	354a0030 	ori	t2,t2,0x30
    123c:	31ae0001 	andi	t6,t5,0x1
    1240:	51c0000a 	beqzl	t6,126c <EnJsjutan_Draw+0x3f4>
    1244:	8e2202c0 	lw	v0,704(s1)
    1248:	8e2202c0 	lw	v0,704(s1)
    124c:	3c190000 	lui	t9,0x0
    1250:	27390000 	addiu	t9,t9,0
    1254:	244f0008 	addiu	t7,v0,8
    1258:	ae2f02c0 	sw	t7,704(s1)
    125c:	ac590004 	sw	t9,4(v0)
    1260:	10000008 	b	1284 <EnJsjutan_Draw+0x40c>
    1264:	ac580000 	sw	t8,0(v0)
    1268:	8e2202c0 	lw	v0,704(s1)
    126c:	3c0b0000 	lui	t3,0x0
    1270:	256b0000 	addiu	t3,t3,0
    1274:	24490008 	addiu	t1,v0,8
    1278:	ae2902c0 	sw	t1,704(s1)
    127c:	ac4b0004 	sw	t3,4(v0)
    1280:	ac4a0000 	sw	t2,0(v0)
    1284:	8e2202c0 	lw	v0,704(s1)
    1288:	3c060000 	lui	a2,0x0
    128c:	24c60000 	addiu	a2,a2,0
    1290:	244c0008 	addiu	t4,v0,8
    1294:	ae2c02c0 	sw	t4,704(s1)
    1298:	ac440000 	sw	a0,0(v0)
    129c:	8fad002c 	lw	t5,44(sp)
    12a0:	27a40064 	addiu	a0,sp,100
    12a4:	24070337 	li	a3,823
    12a8:	ac4d0004 	sw	t5,4(v0)
    12ac:	8fae008c 	lw	t6,140(sp)
    12b0:	0c000000 	jal	0 <EnJsjutan_Init>
    12b4:	8dc50000 	lw	a1,0(t6)
    12b8:	8fbf001c 	lw	ra,28(sp)
    12bc:	8fb00014 	lw	s0,20(sp)
    12c0:	8fb10018 	lw	s1,24(sp)
    12c4:	03e00008 	jr	ra
    12c8:	27bd0088 	addiu	sp,sp,136
    12cc:	00000000 	nop
