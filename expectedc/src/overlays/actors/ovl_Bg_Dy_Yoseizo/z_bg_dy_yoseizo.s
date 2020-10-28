
build/src/overlays/actors/ovl_Bg_Dy_Yoseizo/z_bg_dy_yoseizo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgDyYoseizo_Init>:
       0:	27bdffd0 	addiu	sp,sp,-48
       4:	3c010001 	lui	at,0x1
       8:	afbf002c 	sw	ra,44(sp)
       c:	afb10028 	sw	s1,40(sp)
      10:	afb00024 	sw	s0,36(sp)
      14:	00a11021 	addu	v0,a1,at
      18:	904e1dea 	lbu	t6,7658(v0)
      1c:	3c014220 	lui	at,0x4220
      20:	44812000 	mtc1	at,$f4
      24:	a48e02ec 	sh	t6,748(a0)
      28:	848f02ec 	lh	t7,748(a0)
      2c:	00808025 	move	s0,a0
      30:	00a08825 	move	s1,a1
      34:	05e30003 	bgezl	t7,44 <BgDyYoseizo_Init+0x44>
      38:	c6000028 	lwc1	$f0,40(s0)
      3c:	a48002ec 	sh	zero,748(a0)
      40:	c6000028 	lwc1	$f0,40(s0)
      44:	8e190024 	lw	t9,36(s0)
      48:	8e180028 	lw	t8,40(s0)
      4c:	46040180 	add.s	$f6,$f0,$f4
      50:	ae190038 	sw	t9,56(s0)
      54:	8e19002c 	lw	t9,44(s0)
      58:	e6000310 	swc1	$f0,784(s0)
      5c:	e606030c 	swc1	$f6,780(s0)
      60:	ae18003c 	sw	t8,60(s0)
      64:	ae190040 	sw	t9,64(s0)
      68:	862800a4 	lh	t0,164(s1)
      6c:	2401003b 	li	at,59
      70:	3c040000 	lui	a0,0x0
      74:	15010014 	bne	t0,at,c8 <BgDyYoseizo_Init+0xc8>
      78:	24840000 	addiu	a0,a0,0
      7c:	3c040000 	lui	a0,0x0
      80:	24840000 	addiu	a0,a0,0
      84:	0c000000 	jal	0 <BgDyYoseizo_Init>
      88:	90451dea 	lbu	a1,7658(v0)
      8c:	3c060602 	lui	a2,0x602
      90:	3c070601 	lui	a3,0x601
      94:	26090194 	addiu	t1,s0,404
      98:	260a023c 	addiu	t2,s0,572
      9c:	240b001c 	li	t3,28
      a0:	afab0018 	sw	t3,24(sp)
      a4:	afaa0014 	sw	t2,20(sp)
      a8:	afa90010 	sw	t1,16(sp)
      ac:	24e78698 	addiu	a3,a3,-31080
      b0:	24c6c450 	addiu	a2,a2,-15280
      b4:	02202025 	move	a0,s1
      b8:	0c000000 	jal	0 <BgDyYoseizo_Init>
      bc:	26050150 	addiu	a1,s0,336
      c0:	10000010 	b	104 <BgDyYoseizo_Init+0x104>
      c4:	00000000 	nop
      c8:	0c000000 	jal	0 <BgDyYoseizo_Init>
      cc:	90451dea 	lbu	a1,7658(v0)
      d0:	3c060602 	lui	a2,0x602
      d4:	3c070600 	lui	a3,0x600
      d8:	260c0194 	addiu	t4,s0,404
      dc:	260d023c 	addiu	t5,s0,572
      e0:	240e001c 	li	t6,28
      e4:	afae0018 	sw	t6,24(sp)
      e8:	afad0014 	sw	t5,20(sp)
      ec:	afac0010 	sw	t4,16(sp)
      f0:	24e731c0 	addiu	a3,a3,12736
      f4:	24c6c450 	addiu	a2,a2,-15280
      f8:	02202025 	move	a0,s1
      fc:	0c000000 	jal	0 <BgDyYoseizo_Init>
     100:	26050150 	addiu	a1,s0,336
     104:	3c0f0000 	lui	t7,0x0
     108:	25ef0000 	addiu	t7,t7,0
     10c:	ae0f014c 	sw	t7,332(s0)
     110:	8fbf002c 	lw	ra,44(sp)
     114:	8fb10028 	lw	s1,40(sp)
     118:	8fb00024 	lw	s0,36(sp)
     11c:	03e00008 	jr	ra
     120:	27bd0030 	addiu	sp,sp,48

00000124 <BgDyYoseizo_Destroy>:
     124:	afa40000 	sw	a0,0(sp)
     128:	03e00008 	jr	ra
     12c:	afa50004 	sw	a1,4(sp)

00000130 <func_80872960>:
     130:	27bdff30 	addiu	sp,sp,-208
     134:	3c0f0000 	lui	t7,0x0
     138:	afbf0084 	sw	ra,132(sp)
     13c:	afbe0080 	sw	s8,128(sp)
     140:	afb7007c 	sw	s7,124(sp)
     144:	afb60078 	sw	s6,120(sp)
     148:	afb50074 	sw	s5,116(sp)
     14c:	afb40070 	sw	s4,112(sp)
     150:	afb3006c 	sw	s3,108(sp)
     154:	afb20068 	sw	s2,104(sp)
     158:	afb10064 	sw	s1,100(sp)
     15c:	afb00060 	sw	s0,96(sp)
     160:	f7be0058 	sdc1	$f30,88(sp)
     164:	f7bc0050 	sdc1	$f28,80(sp)
     168:	f7ba0048 	sdc1	$f26,72(sp)
     16c:	f7b80040 	sdc1	$f24,64(sp)
     170:	f7b60038 	sdc1	$f22,56(sp)
     174:	f7b40030 	sdc1	$f20,48(sp)
     178:	afa500d4 	sw	a1,212(sp)
     17c:	afa600d8 	sw	a2,216(sp)
     180:	25ef0000 	addiu	t7,t7,0
     184:	8df90000 	lw	t9,0(t7)
     188:	27ae00c4 	addiu	t6,sp,196
     18c:	8df80004 	lw	t8,4(t7)
     190:	add90000 	sw	t9,0(t6)
     194:	8df90008 	lw	t9,8(t7)
     198:	add80004 	sw	t8,4(t6)
     19c:	3c010000 	lui	at,0x0
     1a0:	add90008 	sw	t9,8(t6)
     1a4:	c4240000 	lwc1	$f4,0(at)
     1a8:	c4800308 	lwc1	$f0,776(a0)
     1ac:	0006a400 	sll	s4,a2,0x10
     1b0:	0014a403 	sra	s4,s4,0x10
     1b4:	4604003c 	c.lt.s	$f0,$f4
     1b8:	00808025 	move	s0,a0
     1bc:	3c010000 	lui	at,0x0
     1c0:	45030088 	bc1tl	3e4 <func_80872960+0x2b4>
     1c4:	8fbf0084 	lw	ra,132(sp)
     1c8:	c4260000 	lwc1	$f6,0(at)
     1cc:	46060502 	mul.s	$f20,$f0,$f6
     1d0:	0c000000 	jal	0 <BgDyYoseizo_Init>
     1d4:	00000000 	nop
     1d8:	3c013f00 	lui	at,0x3f00
     1dc:	4481e000 	mtc1	at,$f28
     1e0:	00000000 	nop
     1e4:	461c0201 	sub.s	$f8,$f0,$f28
     1e8:	0c000000 	jal	0 <BgDyYoseizo_Init>
     1ec:	e7a800b8 	swc1	$f8,184(sp)
     1f0:	461c0281 	sub.s	$f10,$f0,$f28
     1f4:	0c000000 	jal	0 <BgDyYoseizo_Init>
     1f8:	e7aa00bc 	swc1	$f10,188(sp)
     1fc:	461c0401 	sub.s	$f16,$f0,$f28
     200:	3c010000 	lui	at,0x0
     204:	c43e0000 	lwc1	$f30,0(at)
     208:	3c0141f0 	lui	at,0x41f0
     20c:	3c170000 	lui	s7,0x0
     210:	3c150000 	lui	s5,0x0
     214:	4481d000 	mtc1	at,$f26
     218:	e7b000c0 	swc1	$f16,192(sp)
     21c:	26b50000 	addiu	s5,s5,0
     220:	26f70000 	addiu	s7,s7,0
     224:	00009825 	move	s3,zero
     228:	27be00ac 	addiu	s8,sp,172
     22c:	24160003 	li	s6,3
     230:	16800012 	bnez	s4,27c <func_80872960+0x14c>
     234:	3c010000 	lui	at,0x0
     238:	c6120024 	lwc1	$f18,36(s0)
     23c:	461ca582 	mul.s	$f22,$f20,$f28
     240:	00008825 	move	s1,zero
     244:	4600f606 	mov.s	$f24,$f30
     248:	2412005a 	li	s2,90
     24c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     250:	e7b200ac 	swc1	$f18,172(sp)
     254:	461c0101 	sub.s	$f4,$f0,$f28
     258:	c6080028 	lwc1	$f8,40(s0)
     25c:	46162182 	mul.s	$f6,$f4,$f22
     260:	46144280 	add.s	$f10,$f8,$f20
     264:	460a3400 	add.s	$f16,$f6,$f10
     268:	e7b000b0 	swc1	$f16,176(sp)
     26c:	c612002c 	lwc1	$f18,44(s0)
     270:	461a9100 	add.s	$f4,$f18,$f26
     274:	1000003a 	b	360 <func_80872960+0x230>
     278:	e7a400b4 	swc1	$f4,180(sp)
     27c:	c4380000 	lwc1	$f24,0(at)
     280:	3c014120 	lui	at,0x4120
     284:	44816000 	mtc1	at,$f12
     288:	3c010000 	lui	at,0x0
     28c:	c4280000 	lwc1	$f8,0(at)
     290:	24120032 	li	s2,50
     294:	02808825 	move	s1,s4
     298:	4608a582 	mul.s	$f22,$f20,$f8
     29c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     2a0:	00000000 	nop
     2a4:	c6060024 	lwc1	$f6,36(s0)
     2a8:	8fa900d4 	lw	t1,212(sp)
     2ac:	2401003b 	li	at,59
     2b0:	46060280 	add.s	$f10,$f0,$f6
     2b4:	e7aa00ac 	swc1	$f10,172(sp)
     2b8:	852a00a4 	lh	t2,164(t1)
     2bc:	15410010 	bne	t2,at,300 <func_80872960+0x1d0>
     2c0:	00000000 	nop
     2c4:	0c000000 	jal	0 <BgDyYoseizo_Init>
     2c8:	00000000 	nop
     2cc:	461c0181 	sub.s	$f6,$f0,$f28
     2d0:	c6100028 	lwc1	$f16,40(s0)
     2d4:	3c014248 	lui	at,0x4248
     2d8:	44812000 	mtc1	at,$f4
     2dc:	46148480 	add.s	$f18,$f16,$f20
     2e0:	46163282 	mul.s	$f10,$f6,$f22
     2e4:	46049200 	add.s	$f8,$f18,$f4
     2e8:	46085400 	add.s	$f16,$f10,$f8
     2ec:	e7b000b0 	swc1	$f16,176(sp)
     2f0:	c612002c 	lwc1	$f18,44(s0)
     2f4:	461a9100 	add.s	$f4,$f18,$f26
     2f8:	1000000f 	b	338 <func_80872960+0x208>
     2fc:	e7a400b4 	swc1	$f4,180(sp)
     300:	0c000000 	jal	0 <BgDyYoseizo_Init>
     304:	00000000 	nop
     308:	461c0181 	sub.s	$f6,$f0,$f28
     30c:	c6080028 	lwc1	$f8,40(s0)
     310:	3c014270 	lui	at,0x4270
     314:	46144400 	add.s	$f16,$f8,$f20
     318:	46163282 	mul.s	$f10,$f6,$f22
     31c:	44814000 	mtc1	at,$f8
     320:	461a8481 	sub.s	$f18,$f16,$f26
     324:	46125100 	add.s	$f4,$f10,$f18
     328:	e7a400b0 	swc1	$f4,176(sp)
     32c:	c606002c 	lwc1	$f6,44(s0)
     330:	46083400 	add.s	$f16,$f6,$f8
     334:	e7b000b4 	swc1	$f16,180(sp)
     338:	3c0b0000 	lui	t3,0x0
     33c:	8d6b0004 	lw	t3,4(t3)
     340:	c7aa00b0 	lwc1	$f10,176(sp)
     344:	3c0141a0 	lui	at,0x41a0
     348:	15600005 	bnez	t3,360 <func_80872960+0x230>
     34c:	00000000 	nop
     350:	44819000 	mtc1	at,$f18
     354:	00000000 	nop
     358:	46125100 	add.s	$f4,$f10,$f18
     35c:	e7a400b0 	swc1	$f4,176(sp)
     360:	02360019 	multu	s1,s6
     364:	27a900a8 	addiu	t1,sp,168
     368:	27aa00a4 	addiu	t2,sp,164
     36c:	afaa0014 	sw	t2,20(sp)
     370:	afa90010 	sw	t1,16(sp)
     374:	02002025 	move	a0,s0
     378:	03c02825 	move	a1,s8
     37c:	27a600c4 	addiu	a2,sp,196
     380:	27a700b8 	addiu	a3,sp,184
     384:	e7b80018 	swc1	$f24,24(sp)
     388:	00004012 	mflo	t0
     38c:	02a81021 	addu	v0,s5,t0
     390:	02e81821 	addu	v1,s7,t0
     394:	904c0000 	lbu	t4,0(v0)
     398:	904d0001 	lbu	t5,1(v0)
     39c:	904e0002 	lbu	t6,2(v0)
     3a0:	906f0000 	lbu	t7,0(v1)
     3a4:	90780001 	lbu	t8,1(v1)
     3a8:	90790002 	lbu	t9,2(v1)
     3ac:	afb2001c 	sw	s2,28(sp)
     3b0:	afb10020 	sw	s1,32(sp)
     3b4:	a3ac00a8 	sb	t4,168(sp)
     3b8:	a3ad00a9 	sb	t5,169(sp)
     3bc:	a3ae00aa 	sb	t6,170(sp)
     3c0:	a3af00a4 	sb	t7,164(sp)
     3c4:	a3b800a5 	sb	t8,165(sp)
     3c8:	0c000000 	jal	0 <BgDyYoseizo_Init>
     3cc:	a3b900a6 	sb	t9,166(sp)
     3d0:	26730001 	addiu	s3,s3,1
     3d4:	24010002 	li	at,2
     3d8:	1661ff95 	bne	s3,at,230 <func_80872960+0x100>
     3dc:	00000000 	nop
     3e0:	8fbf0084 	lw	ra,132(sp)
     3e4:	d7b40030 	ldc1	$f20,48(sp)
     3e8:	d7b60038 	ldc1	$f22,56(sp)
     3ec:	d7b80040 	ldc1	$f24,64(sp)
     3f0:	d7ba0048 	ldc1	$f26,72(sp)
     3f4:	d7bc0050 	ldc1	$f28,80(sp)
     3f8:	d7be0058 	ldc1	$f30,88(sp)
     3fc:	8fb00060 	lw	s0,96(sp)
     400:	8fb10064 	lw	s1,100(sp)
     404:	8fb20068 	lw	s2,104(sp)
     408:	8fb3006c 	lw	s3,108(sp)
     40c:	8fb40070 	lw	s4,112(sp)
     410:	8fb50074 	lw	s5,116(sp)
     414:	8fb60078 	lw	s6,120(sp)
     418:	8fb7007c 	lw	s7,124(sp)
     41c:	8fbe0080 	lw	s8,128(sp)
     420:	03e00008 	jr	ra
     424:	27bd00d0 	addiu	sp,sp,208

00000428 <func_80872C58>:
     428:	27bdffe0 	addiu	sp,sp,-32
     42c:	afbf001c 	sw	ra,28(sp)
     430:	afb00018 	sw	s0,24(sp)
     434:	afa50024 	sw	a1,36(sp)
     438:	c4860320 	lwc1	$f6,800(a0)
     43c:	c484030c 	lwc1	$f4,780(a0)
     440:	00808025 	move	s0,a0
     444:	3c063dcc 	lui	a2,0x3dcc
     448:	46062000 	add.s	$f0,$f4,$f6
     44c:	34c6cccd 	ori	a2,a2,0xcccd
     450:	24840028 	addiu	a0,a0,40
     454:	3c074120 	lui	a3,0x4120
     458:	44050000 	mfc1	a1,$f0
     45c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     460:	e48002f4 	swc1	$f0,756(a0)
     464:	3c063dcc 	lui	a2,0x3dcc
     468:	34c6cccd 	ori	a2,a2,0xcccd
     46c:	26040320 	addiu	a0,s0,800
     470:	3c054120 	lui	a1,0x4120
     474:	0c000000 	jal	0 <BgDyYoseizo_Init>
     478:	3c073f00 	lui	a3,0x3f00
     47c:	8fae0024 	lw	t6,36(sp)
     480:	91cf1d6c 	lbu	t7,7532(t6)
     484:	55e0000b 	bnezl	t7,4b4 <func_80872C58+0x8c>
     488:	c6100324 	lwc1	$f16,804(s0)
     48c:	c6080324 	lwc1	$f8,804(s0)
     490:	4600428d 	trunc.w.s	$f10,$f8
     494:	44045000 	mfc1	a0,$f10
     498:	00000000 	nop
     49c:	00042400 	sll	a0,a0,0x10
     4a0:	0c000000 	jal	0 <BgDyYoseizo_Init>
     4a4:	00042403 	sra	a0,a0,0x10
     4a8:	1000000c 	b	4dc <func_80872C58+0xb4>
     4ac:	e6000060 	swc1	$f0,96(s0)
     4b0:	c6100324 	lwc1	$f16,804(s0)
     4b4:	4600848d 	trunc.w.s	$f18,$f16
     4b8:	44049000 	mfc1	a0,$f18
     4bc:	00000000 	nop
     4c0:	00042400 	sll	a0,a0,0x10
     4c4:	0c000000 	jal	0 <BgDyYoseizo_Init>
     4c8:	00042403 	sra	a0,a0,0x10
     4cc:	3c010000 	lui	at,0x0
     4d0:	c4240000 	lwc1	$f4,0(at)
     4d4:	46040182 	mul.s	$f6,$f0,$f4
     4d8:	e6060060 	swc1	$f6,96(s0)
     4dc:	8fbf001c 	lw	ra,28(sp)
     4e0:	8fb00018 	lw	s0,24(sp)
     4e4:	27bd0020 	addiu	sp,sp,32
     4e8:	03e00008 	jr	ra
     4ec:	00000000 	nop

000004f0 <func_80872D20>:
     4f0:	27bdffe0 	addiu	sp,sp,-32
     4f4:	afb00018 	sw	s0,24(sp)
     4f8:	00808025 	move	s0,a0
     4fc:	afbf001c 	sw	ra,28(sp)
     500:	00a03825 	move	a3,a1
     504:	00a02025 	move	a0,a1
     508:	24050038 	li	a1,56
     50c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     510:	afa70024 	sw	a3,36(sp)
     514:	10400022 	beqz	v0,5a0 <func_80872D20+0xb0>
     518:	8fa70024 	lw	a3,36(sp)
     51c:	3c010001 	lui	at,0x1
     520:	00270821 	addu	at,at,a3
     524:	240e0004 	li	t6,4
     528:	a42e04c6 	sh	t6,1222(at)
     52c:	84ef00a4 	lh	t7,164(a3)
     530:	2401003b 	li	at,59
     534:	3c180000 	lui	t8,0x0
     538:	15e1000b 	bne	t7,at,568 <func_80872D20+0x78>
     53c:	3c080000 	lui	t0,0x0
     540:	9318003a 	lbu	t8,58(t8)
     544:	57000010 	bnezl	t8,588 <func_80872D20+0x98>
     548:	00e02025 	move	a0,a3
     54c:	861902ec 	lh	t9,748(s0)
     550:	5320000d 	beqzl	t9,588 <func_80872D20+0x98>
     554:	00e02025 	move	a0,a3
     558:	0c000000 	jal	0 <BgDyYoseizo_Init>
     55c:	02002025 	move	a0,s0
     560:	10000010 	b	5a4 <func_80872D20+0xb4>
     564:	8fbf001c 	lw	ra,28(sp)
     568:	9108003a 	lbu	t0,58(t0)
     56c:	55000006 	bnezl	t0,588 <func_80872D20+0x98>
     570:	00e02025 	move	a0,a3
     574:	0c000000 	jal	0 <BgDyYoseizo_Init>
     578:	02002025 	move	a0,s0
     57c:	10000009 	b	5a4 <func_80872D20+0xb4>
     580:	8fbf001c 	lw	ra,28(sp)
     584:	00e02025 	move	a0,a3
     588:	02002825 	move	a1,s0
     58c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     590:	24060001 	li	a2,1
     594:	3c090000 	lui	t1,0x0
     598:	25290000 	addiu	t1,t1,0
     59c:	ae09014c 	sw	t1,332(s0)
     5a0:	8fbf001c 	lw	ra,28(sp)
     5a4:	8fb00018 	lw	s0,24(sp)
     5a8:	27bd0020 	addiu	sp,sp,32
     5ac:	03e00008 	jr	ra
     5b0:	00000000 	nop

000005b4 <func_80872DE4>:
     5b4:	27bdffe0 	addiu	sp,sp,-32
     5b8:	afa40020 	sw	a0,32(sp)
     5bc:	afbf001c 	sw	ra,28(sp)
     5c0:	afa50024 	sw	a1,36(sp)
     5c4:	00a02025 	move	a0,a1
     5c8:	8fa50020 	lw	a1,32(sp)
     5cc:	0c000000 	jal	0 <BgDyYoseizo_Init>
     5d0:	24060001 	li	a2,1
     5d4:	8fae0024 	lw	t6,36(sp)
     5d8:	3c050001 	lui	a1,0x1
     5dc:	3c040000 	lui	a0,0x0
     5e0:	00ae2821 	addu	a1,a1,t6
     5e4:	94a504c6 	lhu	a1,1222(a1)
     5e8:	0c000000 	jal	0 <BgDyYoseizo_Init>
     5ec:	24840000 	addiu	a0,a0,0
     5f0:	8faf0024 	lw	t7,36(sp)
     5f4:	2401003b 	li	at,59
     5f8:	00001825 	move	v1,zero
     5fc:	85f800a4 	lh	t8,164(t7)
     600:	8fa80020 	lw	t0,32(sp)
     604:	53010023 	beql	t8,at,694 <func_80872DE4+0xe0>
     608:	8fae0020 	lw	t6,32(sp)
     60c:	850202ec 	lh	v0,748(t0)
     610:	3c050000 	lui	a1,0x0
     614:	24a50000 	addiu	a1,a1,0
     618:	10400009 	beqz	v0,640 <func_80872DE4+0x8c>
     61c:	24010001 	li	at,1
     620:	1041000d 	beq	v0,at,658 <func_80872DE4+0xa4>
     624:	3c050000 	lui	a1,0x0
     628:	24010002 	li	at,2
     62c:	10410011 	beq	v0,at,674 <func_80872DE4+0xc0>
     630:	3c050000 	lui	a1,0x0
     634:	3c050000 	lui	a1,0x0
     638:	10000054 	b	78c <func_80872DE4+0x1d8>
     63c:	24a50000 	addiu	a1,a1,0
     640:	94b90ef2 	lhu	t9,3826(a1)
     644:	33290100 	andi	t1,t9,0x100
     648:	15200050 	bnez	t1,78c <func_80872DE4+0x1d8>
     64c:	00000000 	nop
     650:	1000004e 	b	78c <func_80872DE4+0x1d8>
     654:	24030001 	li	v1,1
     658:	24a50000 	addiu	a1,a1,0
     65c:	94aa0ef2 	lhu	t2,3826(a1)
     660:	314b0200 	andi	t3,t2,0x200
     664:	15600049 	bnez	t3,78c <func_80872DE4+0x1d8>
     668:	00000000 	nop
     66c:	10000047 	b	78c <func_80872DE4+0x1d8>
     670:	24030001 	li	v1,1
     674:	24a50000 	addiu	a1,a1,0
     678:	94ac0ef2 	lhu	t4,3826(a1)
     67c:	318d0400 	andi	t5,t4,0x400
     680:	15a00042 	bnez	t5,78c <func_80872DE4+0x1d8>
     684:	00000000 	nop
     688:	10000040 	b	78c <func_80872DE4+0x1d8>
     68c:	24030001 	li	v1,1
     690:	8fae0020 	lw	t6,32(sp)
     694:	85c202ec 	lh	v0,748(t6)
     698:	1040000a 	beqz	v0,6c4 <func_80872DE4+0x110>
     69c:	24010001 	li	at,1
     6a0:	1041001d 	beq	v0,at,718 <func_80872DE4+0x164>
     6a4:	3c050000 	lui	a1,0x0
     6a8:	24010002 	li	at,2
     6ac:	10410029 	beq	v0,at,754 <func_80872DE4+0x1a0>
     6b0:	3c050000 	lui	a1,0x0
     6b4:	3c050000 	lui	a1,0x0
     6b8:	24a50000 	addiu	a1,a1,0
     6bc:	10000033 	b	78c <func_80872DE4+0x1d8>
     6c0:	01c04025 	move	t0,t6
     6c4:	3c050000 	lui	a1,0x0
     6c8:	24a50000 	addiu	a1,a1,0
     6cc:	90af003a 	lbu	t7,58(a1)
     6d0:	3c180000 	lui	t8,0x0
     6d4:	3c040000 	lui	a0,0x0
     6d8:	11e00005 	beqz	t7,6f0 <func_80872DE4+0x13c>
     6dc:	00000000 	nop
     6e0:	8f180000 	lw	t8,0(t8)
     6e4:	871912d8 	lh	t9,4824(t8)
     6e8:	13200009 	beqz	t9,710 <func_80872DE4+0x15c>
     6ec:	00000000 	nop
     6f0:	0c000000 	jal	0 <BgDyYoseizo_Init>
     6f4:	24840000 	addiu	a0,a0,0
     6f8:	8faa0020 	lw	t2,32(sp)
     6fc:	3c050000 	lui	a1,0x0
     700:	24090001 	li	t1,1
     704:	24a50000 	addiu	a1,a1,0
     708:	24030001 	li	v1,1
     70c:	a54902ea 	sh	t1,746(t2)
     710:	1000001e 	b	78c <func_80872DE4+0x1d8>
     714:	8fa80020 	lw	t0,32(sp)
     718:	24a50000 	addiu	a1,a1,0
     71c:	90ab003c 	lbu	t3,60(a1)
     720:	3c040000 	lui	a0,0x0
     724:	15600009 	bnez	t3,74c <func_80872DE4+0x198>
     728:	00000000 	nop
     72c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     730:	24840000 	addiu	a0,a0,0
     734:	8fad0020 	lw	t5,32(sp)
     738:	3c050000 	lui	a1,0x0
     73c:	240c0001 	li	t4,1
     740:	24a50000 	addiu	a1,a1,0
     744:	24030001 	li	v1,1
     748:	a5ac02ea 	sh	t4,746(t5)
     74c:	1000000f 	b	78c <func_80872DE4+0x1d8>
     750:	8fa80020 	lw	t0,32(sp)
     754:	24a50000 	addiu	a1,a1,0
     758:	90ae003d 	lbu	t6,61(a1)
     75c:	3c040000 	lui	a0,0x0
     760:	55c0000a 	bnezl	t6,78c <func_80872DE4+0x1d8>
     764:	8fa80020 	lw	t0,32(sp)
     768:	0c000000 	jal	0 <BgDyYoseizo_Init>
     76c:	24840000 	addiu	a0,a0,0
     770:	8fb80020 	lw	t8,32(sp)
     774:	3c050000 	lui	a1,0x0
     778:	240f0001 	li	t7,1
     77c:	24a50000 	addiu	a1,a1,0
     780:	24030001 	li	v1,1
     784:	a70f02ea 	sh	t7,746(t8)
     788:	8fa80020 	lw	t0,32(sp)
     78c:	5060008f 	beqzl	v1,9cc <func_80872DE4+0x418>
     790:	8fad0024 	lw	t5,36(sp)
     794:	8cb91360 	lw	t9,4960(a1)
     798:	8fa90024 	lw	t1,36(sp)
     79c:	2b210004 	slti	at,t9,4
     7a0:	10200085 	beqz	at,9b8 <func_80872DE4+0x404>
     7a4:	00000000 	nop
     7a8:	852a00a4 	lh	t2,164(t1)
     7ac:	2401003b 	li	at,59
     7b0:	850202ec 	lh	v0,748(t0)
     7b4:	11410041 	beq	t2,at,8bc <func_80872DE4+0x308>
     7b8:	00000000 	nop
     7bc:	10400009 	beqz	v0,7e4 <func_80872DE4+0x230>
     7c0:	3c0e0000 	lui	t6,0x0
     7c4:	24010001 	li	at,1
     7c8:	10410018 	beq	v0,at,82c <func_80872DE4+0x278>
     7cc:	3c0e0000 	lui	t6,0x0
     7d0:	24010002 	li	at,2
     7d4:	10410027 	beq	v0,at,874 <func_80872DE4+0x2c0>
     7d8:	3c0e0000 	lui	t6,0x0
     7dc:	10000076 	b	9b8 <func_80872DE4+0x404>
     7e0:	00000000 	nop
     7e4:	3c020200 	lui	v0,0x200
     7e8:	24420160 	addiu	v0,v0,352
     7ec:	00025900 	sll	t3,v0,0x4
     7f0:	000b6702 	srl	t4,t3,0x1c
     7f4:	000c6880 	sll	t5,t4,0x2
     7f8:	01cd7021 	addu	t6,t6,t5
     7fc:	3c0100ff 	lui	at,0xff
     800:	8dce0000 	lw	t6,0(t6)
     804:	3421ffff 	ori	at,at,0xffff
     808:	00417824 	and	t7,v0,at
     80c:	8fa90024 	lw	t1,36(sp)
     810:	3c018000 	lui	at,0x8000
     814:	01cfc021 	addu	t8,t6,t7
     818:	0301c821 	addu	t9,t8,at
     81c:	240a0001 	li	t2,1
     820:	ad391d68 	sw	t9,7528(t1)
     824:	10000064 	b	9b8 <func_80872DE4+0x404>
     828:	a0aa1414 	sb	t2,5140(a1)
     82c:	3c020200 	lui	v0,0x200
     830:	24421020 	addiu	v0,v0,4128
     834:	00025900 	sll	t3,v0,0x4
     838:	000b6702 	srl	t4,t3,0x1c
     83c:	000c6880 	sll	t5,t4,0x2
     840:	01cd7021 	addu	t6,t6,t5
     844:	3c0100ff 	lui	at,0xff
     848:	8dce0000 	lw	t6,0(t6)
     84c:	3421ffff 	ori	at,at,0xffff
     850:	00417824 	and	t7,v0,at
     854:	8fa90024 	lw	t1,36(sp)
     858:	3c018000 	lui	at,0x8000
     85c:	01cfc021 	addu	t8,t6,t7
     860:	0301c821 	addu	t9,t8,at
     864:	240a0001 	li	t2,1
     868:	ad391d68 	sw	t9,7528(t1)
     86c:	10000052 	b	9b8 <func_80872DE4+0x404>
     870:	a0aa1414 	sb	t2,5140(a1)
     874:	3c020200 	lui	v0,0x200
     878:	24421f40 	addiu	v0,v0,8000
     87c:	00025900 	sll	t3,v0,0x4
     880:	000b6702 	srl	t4,t3,0x1c
     884:	000c6880 	sll	t5,t4,0x2
     888:	01cd7021 	addu	t6,t6,t5
     88c:	3c0100ff 	lui	at,0xff
     890:	8dce0000 	lw	t6,0(t6)
     894:	3421ffff 	ori	at,at,0xffff
     898:	00417824 	and	t7,v0,at
     89c:	8fa90024 	lw	t1,36(sp)
     8a0:	3c018000 	lui	at,0x8000
     8a4:	01cfc021 	addu	t8,t6,t7
     8a8:	0301c821 	addu	t9,t8,at
     8ac:	240a0001 	li	t2,1
     8b0:	ad391d68 	sw	t9,7528(t1)
     8b4:	10000040 	b	9b8 <func_80872DE4+0x404>
     8b8:	a0aa1414 	sb	t2,5140(a1)
     8bc:	10400009 	beqz	v0,8e4 <func_80872DE4+0x330>
     8c0:	3c0e0000 	lui	t6,0x0
     8c4:	24010001 	li	at,1
     8c8:	10410018 	beq	v0,at,92c <func_80872DE4+0x378>
     8cc:	3c0e0000 	lui	t6,0x0
     8d0:	24010002 	li	at,2
     8d4:	10410027 	beq	v0,at,974 <func_80872DE4+0x3c0>
     8d8:	3c0e0000 	lui	t6,0x0
     8dc:	10000036 	b	9b8 <func_80872DE4+0x404>
     8e0:	00000000 	nop
     8e4:	3c020200 	lui	v0,0x200
     8e8:	24420130 	addiu	v0,v0,304
     8ec:	00025900 	sll	t3,v0,0x4
     8f0:	000b6702 	srl	t4,t3,0x1c
     8f4:	000c6880 	sll	t5,t4,0x2
     8f8:	01cd7021 	addu	t6,t6,t5
     8fc:	3c0100ff 	lui	at,0xff
     900:	8dce0000 	lw	t6,0(t6)
     904:	3421ffff 	ori	at,at,0xffff
     908:	00417824 	and	t7,v0,at
     90c:	8fa90024 	lw	t1,36(sp)
     910:	3c018000 	lui	at,0x8000
     914:	01cfc021 	addu	t8,t6,t7
     918:	0301c821 	addu	t9,t8,at
     91c:	240a0001 	li	t2,1
     920:	ad391d68 	sw	t9,7528(t1)
     924:	10000024 	b	9b8 <func_80872DE4+0x404>
     928:	a0aa1414 	sb	t2,5140(a1)
     92c:	3c020200 	lui	v0,0x200
     930:	244213e0 	addiu	v0,v0,5088
     934:	00025900 	sll	t3,v0,0x4
     938:	000b6702 	srl	t4,t3,0x1c
     93c:	000c6880 	sll	t5,t4,0x2
     940:	01cd7021 	addu	t6,t6,t5
     944:	3c0100ff 	lui	at,0xff
     948:	8dce0000 	lw	t6,0(t6)
     94c:	3421ffff 	ori	at,at,0xffff
     950:	00417824 	and	t7,v0,at
     954:	8fa90024 	lw	t1,36(sp)
     958:	3c018000 	lui	at,0x8000
     95c:	01cfc021 	addu	t8,t6,t7
     960:	0301c821 	addu	t9,t8,at
     964:	240a0001 	li	t2,1
     968:	ad391d68 	sw	t9,7528(t1)
     96c:	10000012 	b	9b8 <func_80872DE4+0x404>
     970:	a0aa1414 	sb	t2,5140(a1)
     974:	3c020200 	lui	v0,0x200
     978:	244225d0 	addiu	v0,v0,9680
     97c:	00025900 	sll	t3,v0,0x4
     980:	000b6702 	srl	t4,t3,0x1c
     984:	000c6880 	sll	t5,t4,0x2
     988:	01cd7021 	addu	t6,t6,t5
     98c:	3c0100ff 	lui	at,0xff
     990:	8dce0000 	lw	t6,0(t6)
     994:	3421ffff 	ori	at,at,0xffff
     998:	00417824 	and	t7,v0,at
     99c:	8fa90024 	lw	t1,36(sp)
     9a0:	3c018000 	lui	at,0x8000
     9a4:	01cfc021 	addu	t8,t6,t7
     9a8:	0301c821 	addu	t9,t8,at
     9ac:	240a0001 	li	t2,1
     9b0:	ad391d68 	sw	t9,7528(t1)
     9b4:	a0aa1414 	sb	t2,5140(a1)
     9b8:	3c0b0000 	lui	t3,0x0
     9bc:	256b0000 	addiu	t3,t3,0
     9c0:	10000022 	b	a4c <func_80872DE4+0x498>
     9c4:	ad0b014c 	sw	t3,332(t0)
     9c8:	8fad0024 	lw	t5,36(sp)
     9cc:	3c010001 	lui	at,0x1
     9d0:	240c0002 	li	t4,2
     9d4:	002d0821 	addu	at,at,t5
     9d8:	a02c0ae3 	sb	t4,2787(at)
     9dc:	8fae0024 	lw	t6,36(sp)
     9e0:	2401003b 	li	at,59
     9e4:	8fa40024 	lw	a0,36(sp)
     9e8:	85cf00a4 	lh	t7,164(t6)
     9ec:	2405219c 	li	a1,8604
     9f0:	2406ff9d 	li	a2,-99
     9f4:	15e10009 	bne	t7,at,a1c <func_80872DE4+0x468>
     9f8:	00003825 	move	a3,zero
     9fc:	01c02025 	move	a0,t6
     a00:	2405219b 	li	a1,8603
     a04:	2406ff9d 	li	a2,-99
     a08:	00003825 	move	a3,zero
     a0c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     a10:	afa00010 	sw	zero,16(sp)
     a14:	10000004 	b	a28 <func_80872DE4+0x474>
     a18:	8fa40020 	lw	a0,32(sp)
     a1c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     a20:	afa00010 	sw	zero,16(sp)
     a24:	8fa40020 	lw	a0,32(sp)
     a28:	0c000000 	jal	0 <BgDyYoseizo_Init>
     a2c:	2405287f 	li	a1,10367
     a30:	8fa20020 	lw	v0,32(sp)
     a34:	3c180000 	lui	t8,0x0
     a38:	3c190000 	lui	t9,0x0
     a3c:	27180000 	addiu	t8,t8,0
     a40:	27390000 	addiu	t9,t9,0
     a44:	ac580134 	sw	t8,308(v0)
     a48:	ac59014c 	sw	t9,332(v0)
     a4c:	8fbf001c 	lw	ra,28(sp)
     a50:	27bd0020 	addiu	sp,sp,32
     a54:	03e00008 	jr	ra
     a58:	00000000 	nop

00000a5c <func_8087328C>:
     a5c:	27bdffd0 	addiu	sp,sp,-48
     a60:	afbf002c 	sw	ra,44(sp)
     a64:	afb00028 	sw	s0,40(sp)
     a68:	afa50034 	sw	a1,52(sp)
     a6c:	84af00a4 	lh	t7,164(a1)
     a70:	00808025 	move	s0,a0
     a74:	2401003b 	li	at,59
     a78:	15e10015 	bne	t7,at,ad0 <func_8087328C+0x74>
     a7c:	3c040600 	lui	a0,0x600
     a80:	3c040601 	lui	a0,0x601
     a84:	0c000000 	jal	0 <BgDyYoseizo_Init>
     a88:	24848698 	addiu	a0,a0,-31080
     a8c:	44822000 	mtc1	v0,$f4
     a90:	3c01c120 	lui	at,0xc120
     a94:	44813000 	mtc1	at,$f6
     a98:	46802020 	cvt.s.w	$f0,$f4
     a9c:	3c050601 	lui	a1,0x601
     aa0:	24180002 	li	t8,2
     aa4:	24a58698 	addiu	a1,a1,-31080
     aa8:	26040150 	addiu	a0,s0,336
     aac:	3c063f80 	lui	a2,0x3f80
     ab0:	e600032c 	swc1	$f0,812(s0)
     ab4:	afb80014 	sw	t8,20(sp)
     ab8:	e7a00010 	swc1	$f0,16(sp)
     abc:	24070000 	li	a3,0
     ac0:	0c000000 	jal	0 <BgDyYoseizo_Init>
     ac4:	e7a60018 	swc1	$f6,24(sp)
     ac8:	10000013 	b	b18 <func_8087328C+0xbc>
     acc:	02002025 	move	a0,s0
     ad0:	0c000000 	jal	0 <BgDyYoseizo_Init>
     ad4:	248431c0 	addiu	a0,a0,12736
     ad8:	44824000 	mtc1	v0,$f8
     adc:	3c01c120 	lui	at,0xc120
     ae0:	44815000 	mtc1	at,$f10
     ae4:	46804020 	cvt.s.w	$f0,$f8
     ae8:	3c050600 	lui	a1,0x600
     aec:	24190002 	li	t9,2
     af0:	24a531c0 	addiu	a1,a1,12736
     af4:	26040150 	addiu	a0,s0,336
     af8:	3c063f80 	lui	a2,0x3f80
     afc:	e600032c 	swc1	$f0,812(s0)
     b00:	afb90014 	sw	t9,20(sp)
     b04:	e7a00010 	swc1	$f0,16(sp)
     b08:	24070000 	li	a3,0
     b0c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     b10:	e7aa0018 	swc1	$f10,24(sp)
     b14:	02002025 	move	a0,s0
     b18:	0c000000 	jal	0 <BgDyYoseizo_Init>
     b1c:	24056858 	li	a1,26712
     b20:	8fa40034 	lw	a0,52(sp)
     b24:	02002825 	move	a1,s0
     b28:	0c000000 	jal	0 <BgDyYoseizo_Init>
     b2c:	24060001 	li	a2,1
     b30:	3c080000 	lui	t0,0x0
     b34:	25080000 	addiu	t0,t0,0
     b38:	ae08014c 	sw	t0,332(s0)
     b3c:	8fbf002c 	lw	ra,44(sp)
     b40:	8fb00028 	lw	s0,40(sp)
     b44:	27bd0030 	addiu	sp,sp,48
     b48:	03e00008 	jr	ra
     b4c:	00000000 	nop

00000b50 <func_80873380>:
     b50:	27bdffd8 	addiu	sp,sp,-40
     b54:	afb00020 	sw	s0,32(sp)
     b58:	00808025 	move	s0,a0
     b5c:	afbf0024 	sw	ra,36(sp)
     b60:	afa5002c 	sw	a1,44(sp)
     b64:	00a02025 	move	a0,a1
     b68:	02002825 	move	a1,s0
     b6c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     b70:	24060001 	li	a2,1
     b74:	26040028 	addiu	a0,s0,40
     b78:	8e05030c 	lw	a1,780(s0)
     b7c:	8e060314 	lw	a2,788(s0)
     b80:	0c000000 	jal	0 <BgDyYoseizo_Init>
     b84:	3c0742c8 	lui	a3,0x42c8
     b88:	3c053d0f 	lui	a1,0x3d0f
     b8c:	3c073ba3 	lui	a3,0x3ba3
     b90:	34e7d70a 	ori	a3,a3,0xd70a
     b94:	34a55c29 	ori	a1,a1,0x5c29
     b98:	26040308 	addiu	a0,s0,776
     b9c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     ba0:	8e060318 	lw	a2,792(s0)
     ba4:	3c053f4c 	lui	a1,0x3f4c
     ba8:	3c063dcc 	lui	a2,0x3dcc
     bac:	3c073ca3 	lui	a3,0x3ca3
     bb0:	34e7d70a 	ori	a3,a3,0xd70a
     bb4:	34c6cccd 	ori	a2,a2,0xcccd
     bb8:	34a5cccd 	ori	a1,a1,0xcccd
     bbc:	0c000000 	jal	0 <BgDyYoseizo_Init>
     bc0:	26040314 	addiu	a0,s0,788
     bc4:	3c053e4c 	lui	a1,0x3e4c
     bc8:	3c063cf5 	lui	a2,0x3cf5
     bcc:	3c073d4c 	lui	a3,0x3d4c
     bd0:	34e7cccd 	ori	a3,a3,0xcccd
     bd4:	34c6c28f 	ori	a2,a2,0xc28f
     bd8:	34a5cccd 	ori	a1,a1,0xcccd
     bdc:	0c000000 	jal	0 <BgDyYoseizo_Init>
     be0:	26040318 	addiu	a0,s0,792
     be4:	3c010000 	lui	at,0x0
     be8:	c4260000 	lwc1	$f6,0(at)
     bec:	c6040308 	lwc1	$f4,776(s0)
     bf0:	4604303e 	c.le.s	$f6,$f4
     bf4:	00000000 	nop
     bf8:	45020021 	bc1fl	c80 <func_80873380+0x130>
     bfc:	861900b6 	lh	t9,182(s0)
     c00:	860200b6 	lh	v0,182(s0)
     c04:	2841e0c1 	slti	at,v0,-7999
     c08:	1420001a 	bnez	at,c74 <func_80873380+0x124>
     c0c:	24580bb8 	addiu	t8,v0,3000
     c10:	284103e8 	slti	at,v0,1000
     c14:	10200017 	beqz	at,c74 <func_80873380+0x124>
     c18:	00000000 	nop
     c1c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     c20:	26040150 	addiu	a0,s0,336
     c24:	260400b6 	addiu	a0,s0,182
     c28:	00002825 	move	a1,zero
     c2c:	24060005 	li	a2,5
     c30:	240703e8 	li	a3,1000
     c34:	0c000000 	jal	0 <BgDyYoseizo_Init>
     c38:	afa00010 	sw	zero,16(sp)
     c3c:	860e00b6 	lh	t6,182(s0)
     c40:	3c014248 	lui	at,0x4248
     c44:	44815000 	mtc1	at,$f10
     c48:	448e4000 	mtc1	t6,$f8
     c4c:	3c0f0000 	lui	t7,0x0
     c50:	25ef0000 	addiu	t7,t7,0
     c54:	46804020 	cvt.s.w	$f0,$f8
     c58:	46000005 	abs.s	$f0,$f0
     c5c:	460a003c 	c.lt.s	$f0,$f10
     c60:	00000000 	nop
     c64:	45020009 	bc1fl	c8c <func_80873380+0x13c>
     c68:	02002025 	move	a0,s0
     c6c:	10000006 	b	c88 <func_80873380+0x138>
     c70:	ae0f014c 	sw	t7,332(s0)
     c74:	10000004 	b	c88 <func_80873380+0x138>
     c78:	a61800b6 	sh	t8,182(s0)
     c7c:	861900b6 	lh	t9,182(s0)
     c80:	27280bb8 	addiu	t0,t9,3000
     c84:	a60800b6 	sh	t0,182(s0)
     c88:	02002025 	move	a0,s0
     c8c:	8fa5002c 	lw	a1,44(sp)
     c90:	0c000000 	jal	0 <BgDyYoseizo_Init>
     c94:	00003025 	move	a2,zero
     c98:	8fbf0024 	lw	ra,36(sp)
     c9c:	8fb00020 	lw	s0,32(sp)
     ca0:	27bd0028 	addiu	sp,sp,40
     ca4:	03e00008 	jr	ra
     ca8:	00000000 	nop

00000cac <func_808734DC>:
     cac:	27bdffe0 	addiu	sp,sp,-32
     cb0:	afbf0014 	sw	ra,20(sp)
     cb4:	afa40020 	sw	a0,32(sp)
     cb8:	c4840168 	lwc1	$f4,360(a0)
     cbc:	00a03825 	move	a3,a1
     cc0:	00802825 	move	a1,a0
     cc4:	afa50020 	sw	a1,32(sp)
     cc8:	00e02025 	move	a0,a3
     ccc:	24060001 	li	a2,1
     cd0:	0c000000 	jal	0 <BgDyYoseizo_Init>
     cd4:	e7a4001c 	swc1	$f4,28(sp)
     cd8:	8fa50020 	lw	a1,32(sp)
     cdc:	3c010000 	lui	at,0x0
     ce0:	c42a0000 	lwc1	$f10,0(at)
     ce4:	c4a8032c 	lwc1	$f8,812(a1)
     ce8:	c4a60324 	lwc1	$f6,804(a1)
     cec:	24a40150 	addiu	a0,a1,336
     cf0:	460a4402 	mul.s	$f16,$f8,$f10
     cf4:	4606803e 	c.le.s	$f16,$f6
     cf8:	00000000 	nop
     cfc:	45000004 	bc1f	d10 <func_808734DC+0x64>
     d00:	00000000 	nop
     d04:	44809000 	mtc1	zero,$f18
     d08:	00000000 	nop
     d0c:	e4b20324 	swc1	$f18,804(a1)
     d10:	0c000000 	jal	0 <BgDyYoseizo_Init>
     d14:	afa50020 	sw	a1,32(sp)
     d18:	8fa50020 	lw	a1,32(sp)
     d1c:	c7a4001c 	lwc1	$f4,28(sp)
     d20:	c4a8032c 	lwc1	$f8,812(a1)
     d24:	4604403e 	c.le.s	$f8,$f4
     d28:	00000000 	nop
     d2c:	45020008 	bc1fl	d50 <func_808734DC+0xa4>
     d30:	8fbf0014 	lw	ra,20(sp)
     d34:	84ae02fc 	lh	t6,764(a1)
     d38:	3c0f0000 	lui	t7,0x0
     d3c:	25ef0000 	addiu	t7,t7,0
     d40:	55c00003 	bnezl	t6,d50 <func_808734DC+0xa4>
     d44:	8fbf0014 	lw	ra,20(sp)
     d48:	acaf014c 	sw	t7,332(a1)
     d4c:	8fbf0014 	lw	ra,20(sp)
     d50:	27bd0020 	addiu	sp,sp,32
     d54:	03e00008 	jr	ra
     d58:	00000000 	nop

00000d5c <func_8087358C>:
     d5c:	27bdffd0 	addiu	sp,sp,-48
     d60:	afb00028 	sw	s0,40(sp)
     d64:	00808025 	move	s0,a0
     d68:	afbf002c 	sw	ra,44(sp)
     d6c:	afa50034 	sw	a1,52(sp)
     d70:	00a02025 	move	a0,a1
     d74:	02002825 	move	a1,s0
     d78:	0c000000 	jal	0 <BgDyYoseizo_Init>
     d7c:	24060001 	li	a2,1
     d80:	8fae0034 	lw	t6,52(sp)
     d84:	2401003b 	li	at,59
     d88:	3c040600 	lui	a0,0x600
     d8c:	85cf00a4 	lh	t7,164(t6)
     d90:	15e10014 	bne	t7,at,de4 <func_8087358C+0x88>
     d94:	00000000 	nop
     d98:	3c040602 	lui	a0,0x602
     d9c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     da0:	2484d514 	addiu	a0,a0,-10988
     da4:	44822000 	mtc1	v0,$f4
     da8:	3c01c120 	lui	at,0xc120
     dac:	44813000 	mtc1	at,$f6
     db0:	46802020 	cvt.s.w	$f0,$f4
     db4:	3c050602 	lui	a1,0x602
     db8:	24a5d514 	addiu	a1,a1,-10988
     dbc:	26040150 	addiu	a0,s0,336
     dc0:	3c063f80 	lui	a2,0x3f80
     dc4:	24070000 	li	a3,0
     dc8:	e600032c 	swc1	$f0,812(s0)
     dcc:	afa00014 	sw	zero,20(sp)
     dd0:	e7a00010 	swc1	$f0,16(sp)
     dd4:	0c000000 	jal	0 <BgDyYoseizo_Init>
     dd8:	e7a60018 	swc1	$f6,24(sp)
     ddc:	10000012 	b	e28 <func_8087358C+0xcc>
     de0:	241800db 	li	t8,219
     de4:	0c000000 	jal	0 <BgDyYoseizo_Init>
     de8:	24841df0 	addiu	a0,a0,7664
     dec:	44824000 	mtc1	v0,$f8
     df0:	3c01c120 	lui	at,0xc120
     df4:	44815000 	mtc1	at,$f10
     df8:	46804020 	cvt.s.w	$f0,$f8
     dfc:	3c050600 	lui	a1,0x600
     e00:	24a51df0 	addiu	a1,a1,7664
     e04:	26040150 	addiu	a0,s0,336
     e08:	3c063f80 	lui	a2,0x3f80
     e0c:	24070000 	li	a3,0
     e10:	e600032c 	swc1	$f0,812(s0)
     e14:	afa00014 	sw	zero,20(sp)
     e18:	e7a00010 	swc1	$f0,16(sp)
     e1c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     e20:	e7aa0018 	swc1	$f10,24(sp)
     e24:	241800db 	li	t8,219
     e28:	24190005 	li	t9,5
     e2c:	a618010e 	sh	t8,270(s0)
     e30:	a61902ee 	sh	t9,750(s0)
     e34:	8fa40034 	lw	a0,52(sp)
     e38:	3305ffff 	andi	a1,t8,0xffff
     e3c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     e40:	00003025 	move	a2,zero
     e44:	02002025 	move	a0,s0
     e48:	8fa50034 	lw	a1,52(sp)
     e4c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     e50:	00003025 	move	a2,zero
     e54:	3c080000 	lui	t0,0x0
     e58:	25080000 	addiu	t0,t0,0
     e5c:	ae08014c 	sw	t0,332(s0)
     e60:	8fbf002c 	lw	ra,44(sp)
     e64:	8fb00028 	lw	s0,40(sp)
     e68:	27bd0030 	addiu	sp,sp,48
     e6c:	03e00008 	jr	ra
     e70:	00000000 	nop

00000e74 <func_808736A4>:
     e74:	27bdffe0 	addiu	sp,sp,-32
     e78:	afb00014 	sw	s0,20(sp)
     e7c:	00808025 	move	s0,a0
     e80:	afb10018 	sw	s1,24(sp)
     e84:	00a08825 	move	s1,a1
     e88:	afbf001c 	sw	ra,28(sp)
     e8c:	00a02025 	move	a0,a1
     e90:	02002825 	move	a1,s0
     e94:	0c000000 	jal	0 <BgDyYoseizo_Init>
     e98:	24060001 	li	a2,1
     e9c:	3c010000 	lui	at,0x0
     ea0:	c4220000 	lwc1	$f2,0(at)
     ea4:	c6040168 	lwc1	$f4,360(s0)
     ea8:	c606032c 	lwc1	$f6,812(s0)
     eac:	46022002 	mul.s	$f0,$f4,$f2
     eb0:	00000000 	nop
     eb4:	46023202 	mul.s	$f8,$f6,$f2
     eb8:	e6000324 	swc1	$f0,804(s0)
     ebc:	4600403e 	c.le.s	$f8,$f0
     ec0:	00000000 	nop
     ec4:	45000004 	bc1f	ed8 <func_808736A4+0x64>
     ec8:	00000000 	nop
     ecc:	44805000 	mtc1	zero,$f10
     ed0:	00000000 	nop
     ed4:	e60a0324 	swc1	$f10,804(s0)
     ed8:	0c000000 	jal	0 <BgDyYoseizo_Init>
     edc:	26040150 	addiu	a0,s0,336
     ee0:	0c000000 	jal	0 <BgDyYoseizo_Init>
     ee4:	262420d8 	addiu	a0,s1,8408
     ee8:	860e02ee 	lh	t6,750(s0)
     eec:	55c2000d 	bnel	t6,v0,f24 <func_808736A4+0xb0>
     ef0:	02002025 	move	a0,s0
     ef4:	0c000000 	jal	0 <BgDyYoseizo_Init>
     ef8:	02202025 	move	a0,s1
     efc:	50400009 	beqzl	v0,f24 <func_808736A4+0xb0>
     f00:	02002025 	move	a0,s0
     f04:	0c000000 	jal	0 <BgDyYoseizo_Init>
     f08:	02202025 	move	a0,s1
     f0c:	0c000000 	jal	0 <BgDyYoseizo_Init>
     f10:	24040005 	li	a0,5
     f14:	3c0f0000 	lui	t7,0x0
     f18:	25ef0000 	addiu	t7,t7,0
     f1c:	ae0f014c 	sw	t7,332(s0)
     f20:	02002025 	move	a0,s0
     f24:	0c000000 	jal	0 <BgDyYoseizo_Init>
     f28:	02202825 	move	a1,s1
     f2c:	02002025 	move	a0,s0
     f30:	02202825 	move	a1,s1
     f34:	0c000000 	jal	0 <BgDyYoseizo_Init>
     f38:	00003025 	move	a2,zero
     f3c:	8fbf001c 	lw	ra,28(sp)
     f40:	8fb00014 	lw	s0,20(sp)
     f44:	8fb10018 	lw	s1,24(sp)
     f48:	03e00008 	jr	ra
     f4c:	27bd0020 	addiu	sp,sp,32

00000f50 <func_80873780>:
     f50:	27bdffd0 	addiu	sp,sp,-48
     f54:	afbf002c 	sw	ra,44(sp)
     f58:	afb00028 	sw	s0,40(sp)
     f5c:	84ae00a4 	lh	t6,164(a1)
     f60:	00808025 	move	s0,a0
     f64:	2401003b 	li	at,59
     f68:	15c10015 	bne	t6,at,fc0 <func_80873780+0x70>
     f6c:	3c040600 	lui	a0,0x600
     f70:	3c040600 	lui	a0,0x600
     f74:	0c000000 	jal	0 <BgDyYoseizo_Init>
     f78:	248469e8 	addiu	a0,a0,27112
     f7c:	44822000 	mtc1	v0,$f4
     f80:	3c01c120 	lui	at,0xc120
     f84:	44813000 	mtc1	at,$f6
     f88:	46802020 	cvt.s.w	$f0,$f4
     f8c:	3c050600 	lui	a1,0x600
     f90:	240f0002 	li	t7,2
     f94:	24a569e8 	addiu	a1,a1,27112
     f98:	26040150 	addiu	a0,s0,336
     f9c:	3c063f80 	lui	a2,0x3f80
     fa0:	e600032c 	swc1	$f0,812(s0)
     fa4:	afaf0014 	sw	t7,20(sp)
     fa8:	e7a00010 	swc1	$f0,16(sp)
     fac:	24070000 	li	a3,0
     fb0:	0c000000 	jal	0 <BgDyYoseizo_Init>
     fb4:	e7a60018 	swc1	$f6,24(sp)
     fb8:	10000013 	b	1008 <func_80873780+0xb8>
     fbc:	02002025 	move	a0,s0
     fc0:	0c000000 	jal	0 <BgDyYoseizo_Init>
     fc4:	24845810 	addiu	a0,a0,22544
     fc8:	44824000 	mtc1	v0,$f8
     fcc:	3c01c120 	lui	at,0xc120
     fd0:	44815000 	mtc1	at,$f10
     fd4:	46804020 	cvt.s.w	$f0,$f8
     fd8:	3c050600 	lui	a1,0x600
     fdc:	24180002 	li	t8,2
     fe0:	24a55810 	addiu	a1,a1,22544
     fe4:	26040150 	addiu	a0,s0,336
     fe8:	3c063f80 	lui	a2,0x3f80
     fec:	e600032c 	swc1	$f0,812(s0)
     ff0:	afb80014 	sw	t8,20(sp)
     ff4:	e7a00010 	swc1	$f0,16(sp)
     ff8:	24070000 	li	a3,0
     ffc:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1000:	e7aa0018 	swc1	$f10,24(sp)
    1004:	02002025 	move	a0,s0
    1008:	0c000000 	jal	0 <BgDyYoseizo_Init>
    100c:	24056859 	li	a1,26713
    1010:	3c080000 	lui	t0,0x0
    1014:	24190001 	li	t9,1
    1018:	25080000 	addiu	t0,t0,0
    101c:	a61902f6 	sh	t9,758(s0)
    1020:	ae08014c 	sw	t0,332(s0)
    1024:	8fbf002c 	lw	ra,44(sp)
    1028:	8fb00028 	lw	s0,40(sp)
    102c:	27bd0030 	addiu	sp,sp,48
    1030:	03e00008 	jr	ra
    1034:	00000000 	nop

00001038 <func_80873868>:
    1038:	27bdffa0 	addiu	sp,sp,-96
    103c:	afbf003c 	sw	ra,60(sp)
    1040:	afb00038 	sw	s0,56(sp)
    1044:	afa50064 	sw	a1,100(sp)
    1048:	8caf1c44 	lw	t7,7236(a1)
    104c:	00808025 	move	s0,a0
    1050:	3c010000 	lui	at,0x0
    1054:	afaf005c 	sw	t7,92(sp)
    1058:	849802fc 	lh	t8,764(a0)
    105c:	c4820168 	lwc1	$f2,360(a0)
    1060:	1300000e 	beqz	t8,109c <func_80873868+0x64>
    1064:	46001306 	mov.s	$f12,$f2
    1068:	c42e0000 	lwc1	$f14,0(at)
    106c:	c484032c 	lwc1	$f4,812(a0)
    1070:	460e1002 	mul.s	$f0,$f2,$f14
    1074:	00000000 	nop
    1078:	460e2182 	mul.s	$f6,$f4,$f14
    107c:	e4800324 	swc1	$f0,804(a0)
    1080:	4600303e 	c.le.s	$f6,$f0
    1084:	00000000 	nop
    1088:	45000004 	bc1f	109c <func_80873868+0x64>
    108c:	00000000 	nop
    1090:	44804000 	mtc1	zero,$f8
    1094:	00000000 	nop
    1098:	e4880324 	swc1	$f8,804(a0)
    109c:	26040150 	addiu	a0,s0,336
    10a0:	afa40044 	sw	a0,68(sp)
    10a4:	0c000000 	jal	0 <BgDyYoseizo_Init>
    10a8:	e7ac0058 	swc1	$f12,88(sp)
    10ac:	c7ac0058 	lwc1	$f12,88(sp)
    10b0:	c60a032c 	lwc1	$f10,812(s0)
    10b4:	460c503e 	c.le.s	$f10,$f12
    10b8:	00000000 	nop
    10bc:	4502004f 	bc1fl	11fc <func_80873868+0x1c4>
    10c0:	86020306 	lh	v0,774(s0)
    10c4:	861902fc 	lh	t9,764(s0)
    10c8:	8fa90064 	lw	t1,100(sp)
    10cc:	5720004b 	bnezl	t9,11fc <func_80873868+0x1c4>
    10d0:	86020306 	lh	v0,774(s0)
    10d4:	852a00a4 	lh	t2,164(t1)
    10d8:	2401003b 	li	at,59
    10dc:	3c040600 	lui	a0,0x600
    10e0:	15410014 	bne	t2,at,1134 <func_80873868+0xfc>
    10e4:	00000000 	nop
    10e8:	3c040600 	lui	a0,0x600
    10ec:	0c000000 	jal	0 <BgDyYoseizo_Init>
    10f0:	24847ca8 	addiu	a0,a0,31912
    10f4:	44828000 	mtc1	v0,$f16
    10f8:	3c01c120 	lui	at,0xc120
    10fc:	44819000 	mtc1	at,$f18
    1100:	46808020 	cvt.s.w	$f0,$f16
    1104:	3c050600 	lui	a1,0x600
    1108:	24a57ca8 	addiu	a1,a1,31912
    110c:	3c063f80 	lui	a2,0x3f80
    1110:	24070000 	li	a3,0
    1114:	e600032c 	swc1	$f0,812(s0)
    1118:	afa00014 	sw	zero,20(sp)
    111c:	e7a00010 	swc1	$f0,16(sp)
    1120:	8fa40044 	lw	a0,68(sp)
    1124:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1128:	e7b20018 	swc1	$f18,24(sp)
    112c:	10000012 	b	1178 <func_80873868+0x140>
    1130:	860c02ea 	lh	t4,746(s0)
    1134:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1138:	24844344 	addiu	a0,a0,17220
    113c:	44822000 	mtc1	v0,$f4
    1140:	3c01c120 	lui	at,0xc120
    1144:	44813000 	mtc1	at,$f6
    1148:	46802020 	cvt.s.w	$f0,$f4
    114c:	3c050600 	lui	a1,0x600
    1150:	24a54344 	addiu	a1,a1,17220
    1154:	3c063f80 	lui	a2,0x3f80
    1158:	24070000 	li	a3,0
    115c:	e600032c 	swc1	$f0,812(s0)
    1160:	afa00014 	sw	zero,20(sp)
    1164:	e7a00010 	swc1	$f0,16(sp)
    1168:	8fa40044 	lw	a0,68(sp)
    116c:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1170:	e7a60018 	swc1	$f6,24(sp)
    1174:	860c02ea 	lh	t4,746(s0)
    1178:	24080001 	li	t0,1
    117c:	240b0096 	li	t3,150
    1180:	a60b0302 	sh	t3,770(s0)
    1184:	1580001c 	bnez	t4,11f8 <func_80873868+0x1c0>
    1188:	a60802fc 	sh	t0,764(s0)
    118c:	8fa60064 	lw	a2,100(sp)
    1190:	8fa2005c 	lw	v0,92(sp)
    1194:	3c014348 	lui	at,0x4348
    1198:	44815000 	mtc1	at,$f10
    119c:	84cd00a4 	lh	t5,164(a2)
    11a0:	c4480028 	lwc1	$f8,40(v0)
    11a4:	2401003b 	li	at,59
    11a8:	c4400024 	lwc1	$f0,36(v0)
    11ac:	c44c002c 	lwc1	$f12,44(v0)
    11b0:	15a10003 	bne	t5,at,11c0 <func_80873868+0x188>
    11b4:	460a4080 	add.s	$f2,$f8,$f10
    11b8:	10000003 	b	11c8 <func_80873868+0x190>
    11bc:	00001025 	move	v0,zero
    11c0:	00081400 	sll	v0,t0,0x10
    11c4:	00021403 	sra	v0,v0,0x10
    11c8:	24c41c24 	addiu	a0,a2,7204
    11cc:	02002825 	move	a1,s0
    11d0:	24070184 	li	a3,388
    11d4:	e7a00010 	swc1	$f0,16(sp)
    11d8:	e7a20014 	swc1	$f2,20(sp)
    11dc:	e7ac0018 	swc1	$f12,24(sp)
    11e0:	afa0001c 	sw	zero,28(sp)
    11e4:	afa00020 	sw	zero,32(sp)
    11e8:	afa00024 	sw	zero,36(sp)
    11ec:	0c000000 	jal	0 <BgDyYoseizo_Init>
    11f0:	afa20028 	sw	v0,40(sp)
    11f4:	ae020340 	sw	v0,832(s0)
    11f8:	86020306 	lh	v0,774(s0)
    11fc:	24080001 	li	t0,1
    1200:	3c030000 	lui	v1,0x0
    1204:	28410002 	slti	at,v0,2
    1208:	14200002 	bnez	at,1214 <func_80873868+0x1dc>
    120c:	244effff 	addiu	t6,v0,-1
    1210:	a60e0306 	sh	t6,774(s0)
    1214:	86020302 	lh	v0,770(s0)
    1218:	24630000 	addiu	v1,v1,0
    121c:	24180140 	li	t8,320
    1220:	2841006e 	slti	at,v0,110
    1224:	14200003 	bnez	at,1234 <func_80873868+0x1fc>
    1228:	244fffff 	addiu	t7,v0,-1
    122c:	a60f0302 	sh	t7,770(s0)
    1230:	86020302 	lh	v0,770(s0)
    1234:	2401006e 	li	at,110
    1238:	14410008 	bne	v0,at,125c <func_80873868+0x224>
    123c:	00000000 	nop
    1240:	a4781424 	sh	t8,5156(v1)
    1244:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1248:	8fa40064 	lw	a0,100(sp)
    124c:	241900c8 	li	t9,200
    1250:	a6190306 	sh	t9,774(s0)
    1254:	86020302 	lh	v0,770(s0)
    1258:	24080001 	li	t0,1
    125c:	3c030000 	lui	v1,0x0
    1260:	24630000 	addiu	v1,v1,0
    1264:	84690030 	lh	t1,48(v1)
    1268:	846a002e 	lh	t2,46(v1)
    126c:	241900da 	li	t9,218
    1270:	3325ffff 	andi	a1,t9,0xffff
    1274:	152a0005 	bne	t1,t2,128c <func_80873868+0x254>
    1278:	02002025 	move	a0,s0
    127c:	846b13f4 	lh	t3,5108(v1)
    1280:	806c0033 	lb	t4,51(v1)
    1284:	516c0004 	beql	t3,t4,1298 <func_80873868+0x260>
    1288:	244effff 	addiu	t6,v0,-1
    128c:	860d0306 	lh	t5,774(s0)
    1290:	150d000d 	bne	t0,t5,12c8 <func_80873868+0x290>
    1294:	244effff 	addiu	t6,v0,-1
    1298:	a60e0302 	sh	t6,770(s0)
    129c:	86020302 	lh	v0,770(s0)
    12a0:	2401005a 	li	at,90
    12a4:	14410008 	bne	v0,at,12c8 <func_80873868+0x290>
    12a8:	00000000 	nop
    12ac:	860f02ea 	lh	t7,746(s0)
    12b0:	55e00004 	bnezl	t7,12c4 <func_80873868+0x28c>
    12b4:	a60002ea 	sh	zero,746(s0)
    12b8:	8e180340 	lw	t8,832(s0)
    12bc:	a7080152 	sh	t0,338(t8)
    12c0:	a60002ea 	sh	zero,746(s0)
    12c4:	86020302 	lh	v0,770(s0)
    12c8:	15020009 	bne	t0,v0,12f0 <func_80873868+0x2b8>
    12cc:	24090005 	li	t1,5
    12d0:	a619010e 	sh	t9,270(s0)
    12d4:	a60902ee 	sh	t1,750(s0)
    12d8:	0c000000 	jal	0 <BgDyYoseizo_Init>
    12dc:	8fa40064 	lw	a0,100(sp)
    12e0:	3c0a0000 	lui	t2,0x0
    12e4:	254a0000 	addiu	t2,t2,0
    12e8:	10000003 	b	12f8 <func_80873868+0x2c0>
    12ec:	ae0a014c 	sw	t2,332(s0)
    12f0:	0c000000 	jal	0 <BgDyYoseizo_Init>
    12f4:	8fa50064 	lw	a1,100(sp)
    12f8:	8fbf003c 	lw	ra,60(sp)
    12fc:	8fb00038 	lw	s0,56(sp)
    1300:	27bd0060 	addiu	sp,sp,96
    1304:	03e00008 	jr	ra
    1308:	00000000 	nop

0000130c <func_80873B3C>:
    130c:	27bdffe0 	addiu	sp,sp,-32
    1310:	afbf001c 	sw	ra,28(sp)
    1314:	afb10018 	sw	s1,24(sp)
    1318:	afb00014 	sw	s0,20(sp)
    131c:	3c0144af 	lui	at,0x44af
    1320:	44811000 	mtc1	at,$f2
    1324:	c4840168 	lwc1	$f4,360(a0)
    1328:	c486032c 	lwc1	$f6,812(a0)
    132c:	00808025 	move	s0,a0
    1330:	46022002 	mul.s	$f0,$f4,$f2
    1334:	00a08825 	move	s1,a1
    1338:	46023202 	mul.s	$f8,$f6,$f2
    133c:	e4800324 	swc1	$f0,804(a0)
    1340:	4600403e 	c.le.s	$f8,$f0
    1344:	00000000 	nop
    1348:	45000004 	bc1f	135c <func_80873B3C+0x50>
    134c:	00000000 	nop
    1350:	44805000 	mtc1	zero,$f10
    1354:	00000000 	nop
    1358:	e48a0324 	swc1	$f10,804(a0)
    135c:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1360:	26040150 	addiu	a0,s0,336
    1364:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1368:	262420d8 	addiu	a0,s1,8408
    136c:	860e02ee 	lh	t6,750(s0)
    1370:	55c20011 	bnel	t6,v0,13b8 <func_80873B3C+0xac>
    1374:	02002025 	move	a0,s0
    1378:	0c000000 	jal	0 <BgDyYoseizo_Init>
    137c:	02202025 	move	a0,s1
    1380:	5040000d 	beqzl	v0,13b8 <func_80873B3C+0xac>
    1384:	02002025 	move	a0,s0
    1388:	0c000000 	jal	0 <BgDyYoseizo_Init>
    138c:	02202025 	move	a0,s1
    1390:	3c0f0000 	lui	t7,0x0
    1394:	25ef0000 	addiu	t7,t7,0
    1398:	a60002f6 	sh	zero,758(s0)
    139c:	ae0f014c 	sw	t7,332(s0)
    13a0:	863807a0 	lh	t8,1952(s1)
    13a4:	0018c880 	sll	t9,t8,0x2
    13a8:	02394021 	addu	t0,s1,t9
    13ac:	0c000000 	jal	0 <BgDyYoseizo_Init>
    13b0:	8d040790 	lw	a0,1936(t0)
    13b4:	02002025 	move	a0,s0
    13b8:	0c000000 	jal	0 <BgDyYoseizo_Init>
    13bc:	02202825 	move	a1,s1
    13c0:	02002025 	move	a0,s0
    13c4:	02202825 	move	a1,s1
    13c8:	0c000000 	jal	0 <BgDyYoseizo_Init>
    13cc:	00003025 	move	a2,zero
    13d0:	8fbf001c 	lw	ra,28(sp)
    13d4:	8fb00014 	lw	s0,20(sp)
    13d8:	8fb10018 	lw	s1,24(sp)
    13dc:	03e00008 	jr	ra
    13e0:	27bd0020 	addiu	sp,sp,32

000013e4 <func_80873C14>:
    13e4:	27bdffd0 	addiu	sp,sp,-48
    13e8:	afbf002c 	sw	ra,44(sp)
    13ec:	afb00028 	sw	s0,40(sp)
    13f0:	84ae00a4 	lh	t6,164(a1)
    13f4:	00808025 	move	s0,a0
    13f8:	2401003b 	li	at,59
    13fc:	15c10015 	bne	t6,at,1454 <func_80873C14+0x70>
    1400:	3c040600 	lui	a0,0x600
    1404:	3c040600 	lui	a0,0x600
    1408:	0c000000 	jal	0 <BgDyYoseizo_Init>
    140c:	24845e60 	addiu	a0,a0,24160
    1410:	44822000 	mtc1	v0,$f4
    1414:	3c01c120 	lui	at,0xc120
    1418:	44813000 	mtc1	at,$f6
    141c:	46802020 	cvt.s.w	$f0,$f4
    1420:	3c050600 	lui	a1,0x600
    1424:	240f0002 	li	t7,2
    1428:	24a55e60 	addiu	a1,a1,24160
    142c:	26040150 	addiu	a0,s0,336
    1430:	3c063f80 	lui	a2,0x3f80
    1434:	e600032c 	swc1	$f0,812(s0)
    1438:	afaf0014 	sw	t7,20(sp)
    143c:	e7a00010 	swc1	$f0,16(sp)
    1440:	24070000 	li	a3,0
    1444:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1448:	e7a60018 	swc1	$f6,24(sp)
    144c:	10000013 	b	149c <func_80873C14+0xb8>
    1450:	44800000 	mtc1	zero,$f0
    1454:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1458:	2484092c 	addiu	a0,a0,2348
    145c:	44824000 	mtc1	v0,$f8
    1460:	3c01c120 	lui	at,0xc120
    1464:	44815000 	mtc1	at,$f10
    1468:	46804020 	cvt.s.w	$f0,$f8
    146c:	3c050600 	lui	a1,0x600
    1470:	24180002 	li	t8,2
    1474:	24a5092c 	addiu	a1,a1,2348
    1478:	26040150 	addiu	a0,s0,336
    147c:	3c063f80 	lui	a2,0x3f80
    1480:	e600032c 	swc1	$f0,812(s0)
    1484:	afb80014 	sw	t8,20(sp)
    1488:	e7a00010 	swc1	$f0,16(sp)
    148c:	24070000 	li	a3,0
    1490:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1494:	e7aa0018 	swc1	$f10,24(sp)
    1498:	44800000 	mtc1	zero,$f0
    149c:	24190005 	li	t9,5
    14a0:	a61902e8 	sh	t9,744(s0)
    14a4:	02002025 	move	a0,s0
    14a8:	24056858 	li	a1,26712
    14ac:	e6000318 	swc1	$f0,792(s0)
    14b0:	0c000000 	jal	0 <BgDyYoseizo_Init>
    14b4:	e6000314 	swc1	$f0,788(s0)
    14b8:	02002025 	move	a0,s0
    14bc:	0c000000 	jal	0 <BgDyYoseizo_Init>
    14c0:	24052880 	li	a1,10368
    14c4:	3c080000 	lui	t0,0x0
    14c8:	25080000 	addiu	t0,t0,0
    14cc:	ae08014c 	sw	t0,332(s0)
    14d0:	8fbf002c 	lw	ra,44(sp)
    14d4:	8fb00028 	lw	s0,40(sp)
    14d8:	27bd0030 	addiu	sp,sp,48
    14dc:	03e00008 	jr	ra
    14e0:	00000000 	nop

000014e4 <func_80873D14>:
    14e4:	27bdffe0 	addiu	sp,sp,-32
    14e8:	afb00018 	sw	s0,24(sp)
    14ec:	00808025 	move	s0,a0
    14f0:	afbf001c 	sw	ra,28(sp)
    14f4:	afa50024 	sw	a1,36(sp)
    14f8:	0c000000 	jal	0 <BgDyYoseizo_Init>
    14fc:	24840150 	addiu	a0,a0,336
    1500:	860e02e8 	lh	t6,744(s0)
    1504:	3c010000 	lui	at,0x0
    1508:	55c0002e 	bnezl	t6,15c4 <func_80873D14+0xe0>
    150c:	8fbf001c 	lw	ra,28(sp)
    1510:	c6040308 	lwc1	$f4,776(s0)
    1514:	c4260000 	lwc1	$f6,0(at)
    1518:	3c180000 	lui	t8,0x0
    151c:	240f001e 	li	t7,30
    1520:	4606203c 	c.lt.s	$f4,$f6
    1524:	27180000 	addiu	t8,t8,0
    1528:	26040028 	addiu	a0,s0,40
    152c:	3c0742c8 	lui	a3,0x42c8
    1530:	45020005 	bc1fl	1548 <func_80873D14+0x64>
    1534:	8e050310 	lw	a1,784(s0)
    1538:	a60f02e8 	sh	t7,744(s0)
    153c:	10000020 	b	15c0 <func_80873D14+0xdc>
    1540:	ae18014c 	sw	t8,332(s0)
    1544:	8e050310 	lw	a1,784(s0)
    1548:	0c000000 	jal	0 <BgDyYoseizo_Init>
    154c:	8e060314 	lw	a2,788(s0)
    1550:	3c063ba3 	lui	a2,0x3ba3
    1554:	34c6d70a 	ori	a2,a2,0xd70a
    1558:	26040308 	addiu	a0,s0,776
    155c:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1560:	8e050318 	lw	a1,792(s0)
    1564:	3c053f4c 	lui	a1,0x3f4c
    1568:	3c063dcc 	lui	a2,0x3dcc
    156c:	3c073ca3 	lui	a3,0x3ca3
    1570:	34e7d70a 	ori	a3,a3,0xd70a
    1574:	34c6cccd 	ori	a2,a2,0xcccd
    1578:	34a5cccd 	ori	a1,a1,0xcccd
    157c:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1580:	26040314 	addiu	a0,s0,788
    1584:	3c053e4c 	lui	a1,0x3e4c
    1588:	3c063cf5 	lui	a2,0x3cf5
    158c:	3c073d4c 	lui	a3,0x3d4c
    1590:	34e7cccd 	ori	a3,a3,0xcccd
    1594:	34c6c28f 	ori	a2,a2,0xc28f
    1598:	34a5cccd 	ori	a1,a1,0xcccd
    159c:	0c000000 	jal	0 <BgDyYoseizo_Init>
    15a0:	26040318 	addiu	a0,s0,792
    15a4:	861900b6 	lh	t9,182(s0)
    15a8:	02002025 	move	a0,s0
    15ac:	00003025 	move	a2,zero
    15b0:	27280bb8 	addiu	t0,t9,3000
    15b4:	a60800b6 	sh	t0,182(s0)
    15b8:	0c000000 	jal	0 <BgDyYoseizo_Init>
    15bc:	8fa50024 	lw	a1,36(sp)
    15c0:	8fbf001c 	lw	ra,28(sp)
    15c4:	8fb00018 	lw	s0,24(sp)
    15c8:	27bd0020 	addiu	sp,sp,32
    15cc:	03e00008 	jr	ra
    15d0:	00000000 	nop

000015d4 <func_80873E04>:
    15d4:	27bdffe8 	addiu	sp,sp,-24
    15d8:	afbf0014 	sw	ra,20(sp)
    15dc:	afa40018 	sw	a0,24(sp)
    15e0:	848f02e8 	lh	t7,744(a0)
    15e4:	00807025 	move	t6,a0
    15e8:	00a03825 	move	a3,a1
    15ec:	15e0001d 	bnez	t7,1664 <func_80873E04+0x90>
    15f0:	00a02025 	move	a0,a1
    15f4:	01c02825 	move	a1,t6
    15f8:	24060007 	li	a2,7
    15fc:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1600:	afa7001c 	sw	a3,28(sp)
    1604:	8fa7001c 	lw	a3,28(sp)
    1608:	3c010001 	lui	at,0x1
    160c:	2402012e 	li	v0,302
    1610:	00270821 	addu	at,at,a3
    1614:	a0200ae3 	sb	zero,2787(at)
    1618:	8ce41c64 	lw	a0,7268(a3)
    161c:	5080000d 	beqzl	a0,1654 <func_80873E04+0x80>
    1620:	00e02025 	move	a0,a3
    1624:	84980000 	lh	t8,0(a0)
    1628:	10580003 	beq	v0,t8,1638 <func_80873E04+0x64>
    162c:	00000000 	nop
    1630:	10000005 	b	1648 <func_80873E04+0x74>
    1634:	8c840124 	lw	a0,292(a0)
    1638:	0c000000 	jal	0 <BgDyYoseizo_Init>
    163c:	afa7001c 	sw	a3,28(sp)
    1640:	10000003 	b	1650 <func_80873E04+0x7c>
    1644:	8fa7001c 	lw	a3,28(sp)
    1648:	5480fff7 	bnezl	a0,1628 <func_80873E04+0x54>
    164c:	84980000 	lh	t8,0(a0)
    1650:	00e02025 	move	a0,a3
    1654:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1658:	24050038 	li	a1,56
    165c:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1660:	8fa40018 	lw	a0,24(sp)
    1664:	8fbf0014 	lw	ra,20(sp)
    1668:	27bd0018 	addiu	sp,sp,24
    166c:	03e00008 	jr	ra
    1670:	00000000 	nop

00001674 <func_80873EA4>:
    1674:	27bdffd0 	addiu	sp,sp,-48
    1678:	afbf002c 	sw	ra,44(sp)
    167c:	afb00028 	sw	s0,40(sp)
    1680:	90ae1d6c 	lbu	t6,7532(a1)
    1684:	00808025 	move	s0,a0
    1688:	00a03825 	move	a3,a1
    168c:	51c00042 	beqzl	t6,1798 <func_80873EA4+0x124>
    1690:	8fbf002c 	lw	ra,44(sp)
    1694:	8ca21d8c 	lw	v0,7564(a1)
    1698:	5040003f 	beqzl	v0,1798 <func_80873EA4+0x124>
    169c:	8fbf002c 	lw	ra,44(sp)
    16a0:	944f0000 	lhu	t7,0(v0)
    16a4:	24010002 	li	at,2
    16a8:	3c180000 	lui	t8,0x0
    16ac:	15e10039 	bne	t7,at,1794 <func_80873EA4+0x120>
    16b0:	27180000 	addiu	t8,t8,0
    16b4:	ac980134 	sw	t8,308(a0)
    16b8:	00a02025 	move	a0,a1
    16bc:	02002825 	move	a1,s0
    16c0:	afa70034 	sw	a3,52(sp)
    16c4:	0c000000 	jal	0 <BgDyYoseizo_Init>
    16c8:	24060001 	li	a2,1
    16cc:	8fa70034 	lw	a3,52(sp)
    16d0:	a60002fe 	sh	zero,766(s0)
    16d4:	2401003b 	li	at,59
    16d8:	84f900a4 	lh	t9,164(a3)
    16dc:	3c040600 	lui	a0,0x600
    16e0:	17210015 	bne	t9,at,1738 <func_80873EA4+0xc4>
    16e4:	00000000 	nop
    16e8:	3c040601 	lui	a0,0x601
    16ec:	0c000000 	jal	0 <BgDyYoseizo_Init>
    16f0:	24848698 	addiu	a0,a0,-31080
    16f4:	44822000 	mtc1	v0,$f4
    16f8:	3c01c120 	lui	at,0xc120
    16fc:	44813000 	mtc1	at,$f6
    1700:	46802020 	cvt.s.w	$f0,$f4
    1704:	3c050601 	lui	a1,0x601
    1708:	24080002 	li	t0,2
    170c:	24a58698 	addiu	a1,a1,-31080
    1710:	26040150 	addiu	a0,s0,336
    1714:	3c063f80 	lui	a2,0x3f80
    1718:	e600032c 	swc1	$f0,812(s0)
    171c:	afa80014 	sw	t0,20(sp)
    1720:	e7a00010 	swc1	$f0,16(sp)
    1724:	24070000 	li	a3,0
    1728:	0c000000 	jal	0 <BgDyYoseizo_Init>
    172c:	e7a60018 	swc1	$f6,24(sp)
    1730:	10000013 	b	1780 <func_80873EA4+0x10c>
    1734:	02002025 	move	a0,s0
    1738:	0c000000 	jal	0 <BgDyYoseizo_Init>
    173c:	248431c0 	addiu	a0,a0,12736
    1740:	44824000 	mtc1	v0,$f8
    1744:	3c01c120 	lui	at,0xc120
    1748:	44815000 	mtc1	at,$f10
    174c:	46804020 	cvt.s.w	$f0,$f8
    1750:	3c050600 	lui	a1,0x600
    1754:	24090002 	li	t1,2
    1758:	24a531c0 	addiu	a1,a1,12736
    175c:	26040150 	addiu	a0,s0,336
    1760:	3c063f80 	lui	a2,0x3f80
    1764:	e600032c 	swc1	$f0,812(s0)
    1768:	afa90014 	sw	t1,20(sp)
    176c:	e7a00010 	swc1	$f0,16(sp)
    1770:	24070000 	li	a3,0
    1774:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1778:	e7aa0018 	swc1	$f10,24(sp)
    177c:	02002025 	move	a0,s0
    1780:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1784:	2405287f 	li	a1,10367
    1788:	3c0a0000 	lui	t2,0x0
    178c:	254a0000 	addiu	t2,t2,0
    1790:	ae0a014c 	sw	t2,332(s0)
    1794:	8fbf002c 	lw	ra,44(sp)
    1798:	8fb00028 	lw	s0,40(sp)
    179c:	27bd0030 	addiu	sp,sp,48
    17a0:	03e00008 	jr	ra
    17a4:	00000000 	nop

000017a8 <func_80873FD8>:
    17a8:	27bdffc8 	addiu	sp,sp,-56
    17ac:	afbf002c 	sw	ra,44(sp)
    17b0:	afb00028 	sw	s0,40(sp)
    17b4:	afa5003c 	sw	a1,60(sp)
    17b8:	848e02fe 	lh	t6,766(a0)
    17bc:	00808025 	move	s0,a0
    17c0:	c4800168 	lwc1	$f0,360(a0)
    17c4:	15c00044 	bnez	t6,18d8 <func_80873FD8+0x130>
    17c8:	24840028 	addiu	a0,a0,40
    17cc:	8e05030c 	lw	a1,780(s0)
    17d0:	8e060314 	lw	a2,788(s0)
    17d4:	0c000000 	jal	0 <BgDyYoseizo_Init>
    17d8:	3c0742c8 	lui	a3,0x42c8
    17dc:	3c053d0f 	lui	a1,0x3d0f
    17e0:	3c073ba3 	lui	a3,0x3ba3
    17e4:	34e7d70a 	ori	a3,a3,0xd70a
    17e8:	34a55c29 	ori	a1,a1,0x5c29
    17ec:	26040308 	addiu	a0,s0,776
    17f0:	0c000000 	jal	0 <BgDyYoseizo_Init>
    17f4:	8e060318 	lw	a2,792(s0)
    17f8:	3c053f4c 	lui	a1,0x3f4c
    17fc:	3c063dcc 	lui	a2,0x3dcc
    1800:	3c073ca3 	lui	a3,0x3ca3
    1804:	34e7d70a 	ori	a3,a3,0xd70a
    1808:	34c6cccd 	ori	a2,a2,0xcccd
    180c:	34a5cccd 	ori	a1,a1,0xcccd
    1810:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1814:	26040314 	addiu	a0,s0,788
    1818:	3c053e4c 	lui	a1,0x3e4c
    181c:	3c063cf5 	lui	a2,0x3cf5
    1820:	3c073d4c 	lui	a3,0x3d4c
    1824:	34e7cccd 	ori	a3,a3,0xcccd
    1828:	34c6c28f 	ori	a2,a2,0xc28f
    182c:	34a5cccd 	ori	a1,a1,0xcccd
    1830:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1834:	26040318 	addiu	a0,s0,792
    1838:	3c010000 	lui	at,0x0
    183c:	c4260000 	lwc1	$f6,0(at)
    1840:	c6040308 	lwc1	$f4,776(s0)
    1844:	4604303e 	c.le.s	$f6,$f4
    1848:	00000000 	nop
    184c:	4502001f 	bc1fl	18cc <func_80873FD8+0x124>
    1850:	860800b6 	lh	t0,182(s0)
    1854:	860200b6 	lh	v0,182(s0)
    1858:	2841e0c1 	slti	at,v0,-7999
    185c:	14200018 	bnez	at,18c0 <func_80873FD8+0x118>
    1860:	24590bb8 	addiu	t9,v0,3000
    1864:	284103e8 	slti	at,v0,1000
    1868:	10200015 	beqz	at,18c0 <func_80873FD8+0x118>
    186c:	00000000 	nop
    1870:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1874:	26040150 	addiu	a0,s0,336
    1878:	260400b6 	addiu	a0,s0,182
    187c:	00002825 	move	a1,zero
    1880:	24060005 	li	a2,5
    1884:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1888:	240703e8 	li	a3,1000
    188c:	860f00b6 	lh	t7,182(s0)
    1890:	3c014248 	lui	at,0x4248
    1894:	44815000 	mtc1	at,$f10
    1898:	448f4000 	mtc1	t7,$f8
    189c:	24180001 	li	t8,1
    18a0:	46804020 	cvt.s.w	$f0,$f8
    18a4:	46000005 	abs.s	$f0,$f0
    18a8:	460a003c 	c.lt.s	$f0,$f10
    18ac:	00000000 	nop
    18b0:	45020080 	bc1fl	1ab4 <func_80873FD8+0x30c>
    18b4:	02002025 	move	a0,s0
    18b8:	1000007d 	b	1ab0 <func_80873FD8+0x308>
    18bc:	a61802fe 	sh	t8,766(s0)
    18c0:	1000007b 	b	1ab0 <func_80873FD8+0x308>
    18c4:	a61900b6 	sh	t9,182(s0)
    18c8:	860800b6 	lh	t0,182(s0)
    18cc:	25090bb8 	addiu	t1,t0,3000
    18d0:	10000077 	b	1ab0 <func_80873FD8+0x308>
    18d4:	a60900b6 	sh	t1,182(s0)
    18d8:	26040150 	addiu	a0,s0,336
    18dc:	afa40030 	sw	a0,48(sp)
    18e0:	0c000000 	jal	0 <BgDyYoseizo_Init>
    18e4:	e7a00034 	swc1	$f0,52(sp)
    18e8:	c7a00034 	lwc1	$f0,52(sp)
    18ec:	c610032c 	lwc1	$f16,812(s0)
    18f0:	4600803e 	c.le.s	$f16,$f0
    18f4:	00000000 	nop
    18f8:	45020030 	bc1fl	19bc <func_80873FD8+0x214>
    18fc:	8fae003c 	lw	t6,60(sp)
    1900:	860a02fc 	lh	t2,764(s0)
    1904:	8fab003c 	lw	t3,60(sp)
    1908:	5540002c 	bnezl	t2,19bc <func_80873FD8+0x214>
    190c:	8fae003c 	lw	t6,60(sp)
    1910:	856c00a4 	lh	t4,164(t3)
    1914:	2401003b 	li	at,59
    1918:	3c040600 	lui	a0,0x600
    191c:	15810014 	bne	t4,at,1970 <func_80873FD8+0x1c8>
    1920:	00000000 	nop
    1924:	3c040602 	lui	a0,0x602
    1928:	0c000000 	jal	0 <BgDyYoseizo_Init>
    192c:	2484d514 	addiu	a0,a0,-10988
    1930:	44829000 	mtc1	v0,$f18
    1934:	3c01c120 	lui	at,0xc120
    1938:	44812000 	mtc1	at,$f4
    193c:	46809020 	cvt.s.w	$f0,$f18
    1940:	3c050602 	lui	a1,0x602
    1944:	24a5d514 	addiu	a1,a1,-10988
    1948:	3c063f80 	lui	a2,0x3f80
    194c:	24070000 	li	a3,0
    1950:	e600032c 	swc1	$f0,812(s0)
    1954:	afa00014 	sw	zero,20(sp)
    1958:	e7a00010 	swc1	$f0,16(sp)
    195c:	8fa40030 	lw	a0,48(sp)
    1960:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1964:	e7a40018 	swc1	$f4,24(sp)
    1968:	10000012 	b	19b4 <func_80873FD8+0x20c>
    196c:	240d0001 	li	t5,1
    1970:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1974:	24841df0 	addiu	a0,a0,7664
    1978:	44823000 	mtc1	v0,$f6
    197c:	3c01c120 	lui	at,0xc120
    1980:	44814000 	mtc1	at,$f8
    1984:	46803020 	cvt.s.w	$f0,$f6
    1988:	3c050600 	lui	a1,0x600
    198c:	24a51df0 	addiu	a1,a1,7664
    1990:	3c063f80 	lui	a2,0x3f80
    1994:	24070000 	li	a3,0
    1998:	e600032c 	swc1	$f0,812(s0)
    199c:	afa00014 	sw	zero,20(sp)
    19a0:	e7a00010 	swc1	$f0,16(sp)
    19a4:	8fa40030 	lw	a0,48(sp)
    19a8:	0c000000 	jal	0 <BgDyYoseizo_Init>
    19ac:	e7a80018 	swc1	$f8,24(sp)
    19b0:	240d0001 	li	t5,1
    19b4:	a60d02fc 	sh	t5,764(s0)
    19b8:	8fae003c 	lw	t6,60(sp)
    19bc:	91cf1d6c 	lbu	t7,7532(t6)
    19c0:	51e0003c 	beqzl	t7,1ab4 <func_80873FD8+0x30c>
    19c4:	02002025 	move	a0,s0
    19c8:	8dc21d8c 	lw	v0,7564(t6)
    19cc:	50400039 	beqzl	v0,1ab4 <func_80873FD8+0x30c>
    19d0:	02002025 	move	a0,s0
    19d4:	94580000 	lhu	t8,0(v0)
    19d8:	24010003 	li	at,3
    19dc:	57010035 	bnel	t8,at,1ab4 <func_80873FD8+0x30c>
    19e0:	02002025 	move	a0,s0
    19e4:	a60002fc 	sh	zero,764(s0)
    19e8:	861902fc 	lh	t9,764(s0)
    19ec:	2401003b 	li	at,59
    19f0:	3c040600 	lui	a0,0x600
    19f4:	a61902fe 	sh	t9,766(s0)
    19f8:	8fa8003c 	lw	t0,60(sp)
    19fc:	850900a4 	lh	t1,164(t0)
    1a00:	15210015 	bne	t1,at,1a58 <func_80873FD8+0x2b0>
    1a04:	00000000 	nop
    1a08:	3c040600 	lui	a0,0x600
    1a0c:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1a10:	248469e8 	addiu	a0,a0,27112
    1a14:	44825000 	mtc1	v0,$f10
    1a18:	3c01c120 	lui	at,0xc120
    1a1c:	44818000 	mtc1	at,$f16
    1a20:	46805020 	cvt.s.w	$f0,$f10
    1a24:	3c050600 	lui	a1,0x600
    1a28:	240a0002 	li	t2,2
    1a2c:	24a569e8 	addiu	a1,a1,27112
    1a30:	3c063f80 	lui	a2,0x3f80
    1a34:	24070000 	li	a3,0
    1a38:	e600032c 	swc1	$f0,812(s0)
    1a3c:	afaa0014 	sw	t2,20(sp)
    1a40:	e7a00010 	swc1	$f0,16(sp)
    1a44:	8fa40030 	lw	a0,48(sp)
    1a48:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1a4c:	e7b00018 	swc1	$f16,24(sp)
    1a50:	10000012 	b	1a9c <func_80873FD8+0x2f4>
    1a54:	00000000 	nop
    1a58:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1a5c:	24845810 	addiu	a0,a0,22544
    1a60:	44829000 	mtc1	v0,$f18
    1a64:	3c01c120 	lui	at,0xc120
    1a68:	44812000 	mtc1	at,$f4
    1a6c:	46809020 	cvt.s.w	$f0,$f18
    1a70:	3c050600 	lui	a1,0x600
    1a74:	240b0002 	li	t3,2
    1a78:	24a55810 	addiu	a1,a1,22544
    1a7c:	3c063f80 	lui	a2,0x3f80
    1a80:	24070000 	li	a3,0
    1a84:	e600032c 	swc1	$f0,812(s0)
    1a88:	afab0014 	sw	t3,20(sp)
    1a8c:	e7a00010 	swc1	$f0,16(sp)
    1a90:	8fa40030 	lw	a0,48(sp)
    1a94:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1a98:	e7a40018 	swc1	$f4,24(sp)
    1a9c:	3c0d0000 	lui	t5,0x0
    1aa0:	240c0001 	li	t4,1
    1aa4:	25ad0000 	addiu	t5,t5,0
    1aa8:	a60c02f6 	sh	t4,758(s0)
    1aac:	ae0d014c 	sw	t5,332(s0)
    1ab0:	02002025 	move	a0,s0
    1ab4:	8fa5003c 	lw	a1,60(sp)
    1ab8:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1abc:	00003025 	move	a2,zero
    1ac0:	8fbf002c 	lw	ra,44(sp)
    1ac4:	8fb00028 	lw	s0,40(sp)
    1ac8:	27bd0038 	addiu	sp,sp,56
    1acc:	03e00008 	jr	ra
    1ad0:	00000000 	nop

00001ad4 <func_80874304>:
    1ad4:	27bdffa0 	addiu	sp,sp,-96
    1ad8:	afbf003c 	sw	ra,60(sp)
    1adc:	afb10038 	sw	s1,56(sp)
    1ae0:	afb00034 	sw	s0,52(sp)
    1ae4:	8cae1c44 	lw	t6,7236(a1)
    1ae8:	c4820168 	lwc1	$f2,360(a0)
    1aec:	00808025 	move	s0,a0
    1af0:	afae0058 	sw	t6,88(sp)
    1af4:	848f02fc 	lh	t7,764(a0)
    1af8:	00a08825 	move	s1,a1
    1afc:	3c0144af 	lui	at,0x44af
    1b00:	11e0000e 	beqz	t7,1b3c <func_80874304+0x68>
    1b04:	46001306 	mov.s	$f12,$f2
    1b08:	44817000 	mtc1	at,$f14
    1b0c:	c484032c 	lwc1	$f4,812(a0)
    1b10:	460e1002 	mul.s	$f0,$f2,$f14
    1b14:	00000000 	nop
    1b18:	460e2182 	mul.s	$f6,$f4,$f14
    1b1c:	e4800324 	swc1	$f0,804(a0)
    1b20:	4600303e 	c.le.s	$f6,$f0
    1b24:	00000000 	nop
    1b28:	45000004 	bc1f	1b3c <func_80874304+0x68>
    1b2c:	00000000 	nop
    1b30:	44804000 	mtc1	zero,$f8
    1b34:	00000000 	nop
    1b38:	e4880324 	swc1	$f8,804(a0)
    1b3c:	26040150 	addiu	a0,s0,336
    1b40:	afa40040 	sw	a0,64(sp)
    1b44:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1b48:	e7ac005c 	swc1	$f12,92(sp)
    1b4c:	c7ac005c 	lwc1	$f12,92(sp)
    1b50:	c60a032c 	lwc1	$f10,812(s0)
    1b54:	460c503e 	c.le.s	$f10,$f12
    1b58:	00000000 	nop
    1b5c:	4502002f 	bc1fl	1c1c <func_80874304+0x148>
    1b60:	8e2b1d8c 	lw	t3,7564(s1)
    1b64:	861802fc 	lh	t8,764(s0)
    1b68:	5700002c 	bnezl	t8,1c1c <func_80874304+0x148>
    1b6c:	8e2b1d8c 	lw	t3,7564(s1)
    1b70:	863900a4 	lh	t9,164(s1)
    1b74:	2401003b 	li	at,59
    1b78:	3c040600 	lui	a0,0x600
    1b7c:	17210014 	bne	t9,at,1bd0 <func_80874304+0xfc>
    1b80:	00000000 	nop
    1b84:	3c040600 	lui	a0,0x600
    1b88:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1b8c:	24847ca8 	addiu	a0,a0,31912
    1b90:	44828000 	mtc1	v0,$f16
    1b94:	3c01c120 	lui	at,0xc120
    1b98:	44819000 	mtc1	at,$f18
    1b9c:	46808020 	cvt.s.w	$f0,$f16
    1ba0:	3c050600 	lui	a1,0x600
    1ba4:	24a57ca8 	addiu	a1,a1,31912
    1ba8:	3c063f80 	lui	a2,0x3f80
    1bac:	24070000 	li	a3,0
    1bb0:	e600032c 	swc1	$f0,812(s0)
    1bb4:	afa00014 	sw	zero,20(sp)
    1bb8:	e7a00010 	swc1	$f0,16(sp)
    1bbc:	8fa40040 	lw	a0,64(sp)
    1bc0:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1bc4:	e7b20018 	swc1	$f18,24(sp)
    1bc8:	10000012 	b	1c14 <func_80874304+0x140>
    1bcc:	240a0001 	li	t2,1
    1bd0:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1bd4:	24844344 	addiu	a0,a0,17220
    1bd8:	44822000 	mtc1	v0,$f4
    1bdc:	3c01c120 	lui	at,0xc120
    1be0:	44813000 	mtc1	at,$f6
    1be4:	46802020 	cvt.s.w	$f0,$f4
    1be8:	3c050600 	lui	a1,0x600
    1bec:	24a54344 	addiu	a1,a1,17220
    1bf0:	3c063f80 	lui	a2,0x3f80
    1bf4:	24070000 	li	a3,0
    1bf8:	e600032c 	swc1	$f0,812(s0)
    1bfc:	afa00014 	sw	zero,20(sp)
    1c00:	e7a00010 	swc1	$f0,16(sp)
    1c04:	8fa40040 	lw	a0,64(sp)
    1c08:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1c0c:	e7a60018 	swc1	$f6,24(sp)
    1c10:	240a0001 	li	t2,1
    1c14:	a60a02fc 	sh	t2,764(s0)
    1c18:	8e2b1d8c 	lw	t3,7564(s1)
    1c1c:	2401000d 	li	at,13
    1c20:	3c0c0000 	lui	t4,0x0
    1c24:	95620000 	lhu	v0,0(t3)
    1c28:	258c0000 	addiu	t4,t4,0
    1c2c:	54410004 	bnel	v0,at,1c40 <func_80874304+0x16c>
    1c30:	28410004 	slti	at,v0,4
    1c34:	10000135 	b	210c <func_80874304+0x638>
    1c38:	ae0c014c 	sw	t4,332(s0)
    1c3c:	28410004 	slti	at,v0,4
    1c40:	14200030 	bnez	at,1d04 <func_80874304+0x230>
    1c44:	02002025 	move	a0,s0
    1c48:	28410007 	slti	at,v0,7
    1c4c:	1020002d 	beqz	at,1d04 <func_80874304+0x230>
    1c50:	244dfffc 	addiu	t5,v0,-4
    1c54:	a7ad0056 	sh	t5,86(sp)
    1c58:	862300a4 	lh	v1,164(s1)
    1c5c:	87ae0056 	lh	t6,86(sp)
    1c60:	2401003b 	li	at,59
    1c64:	14610009 	bne	v1,at,1c8c <func_80874304+0x1b8>
    1c68:	25cf0001 	addiu	t7,t6,1
    1c6c:	000f3400 	sll	a2,t7,0x10
    1c70:	a7af0056 	sh	t7,86(sp)
    1c74:	00063403 	sra	a2,a2,0x10
    1c78:	02002025 	move	a0,s0
    1c7c:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1c80:	02202825 	move	a1,s1
    1c84:	10000023 	b	1d14 <func_80874304+0x240>
    1c88:	862300a4 	lh	v1,164(s1)
    1c8c:	921802e4 	lbu	t8,740(s0)
    1c90:	87b90056 	lh	t9,86(sp)
    1c94:	3c020000 	lui	v0,0x0
    1c98:	1700001e 	bnez	t8,1d14 <func_80874304+0x240>
    1c9c:	00195040 	sll	t2,t9,0x1
    1ca0:	004a1021 	addu	v0,v0,t2
    1ca4:	84420000 	lh	v0,0(v0)
    1ca8:	c6080028 	lwc1	$f8,40(s0)
    1cac:	8e070024 	lw	a3,36(s0)
    1cb0:	00021300 	sll	v0,v0,0xc
    1cb4:	00021400 	sll	v0,v0,0x10
    1cb8:	e7a80010 	swc1	$f8,16(sp)
    1cbc:	c60a002c 	lwc1	$f10,44(s0)
    1cc0:	00021403 	sra	v0,v0,0x10
    1cc4:	34420012 	ori	v0,v0,0x12
    1cc8:	00021400 	sll	v0,v0,0x10
    1ccc:	00021403 	sra	v0,v0,0x10
    1cd0:	afa20024 	sw	v0,36(sp)
    1cd4:	afa00020 	sw	zero,32(sp)
    1cd8:	afa0001c 	sw	zero,28(sp)
    1cdc:	afa00018 	sw	zero,24(sp)
    1ce0:	26241c24 	addiu	a0,s1,7204
    1ce4:	02202825 	move	a1,s1
    1ce8:	2406008b 	li	a2,139
    1cec:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1cf0:	e7aa0014 	swc1	$f10,20(sp)
    1cf4:	240b0001 	li	t3,1
    1cf8:	a20b02e4 	sb	t3,740(s0)
    1cfc:	10000005 	b	1d14 <func_80874304+0x240>
    1d00:	862300a4 	lh	v1,164(s1)
    1d04:	02202825 	move	a1,s1
    1d08:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1d0c:	00003025 	move	a2,zero
    1d10:	862300a4 	lh	v1,164(s1)
    1d14:	2401003b 	li	at,59
    1d18:	54610043 	bnel	v1,at,1e28 <func_80874304+0x354>
    1d1c:	862300a4 	lh	v1,164(s1)
    1d20:	8e2c1d8c 	lw	t4,7564(s1)
    1d24:	95820000 	lhu	v0,0(t4)
    1d28:	2841000a 	slti	at,v0,10
    1d2c:	1420003d 	bnez	at,1e24 <func_80874304+0x350>
    1d30:	2841000d 	slti	at,v0,13
    1d34:	1020003b 	beqz	at,1e24 <func_80874304+0x350>
    1d38:	2443fff6 	addiu	v1,v0,-10
    1d3c:	00031c00 	sll	v1,v1,0x10
    1d40:	00031c03 	sra	v1,v1,0x10
    1d44:	10600009 	beqz	v1,1d6c <func_80874304+0x298>
    1d48:	240d0001 	li	t5,1
    1d4c:	24010001 	li	at,1
    1d50:	10610010 	beq	v1,at,1d94 <func_80874304+0x2c0>
    1d54:	3c0f0000 	lui	t7,0x0
    1d58:	24010002 	li	at,2
    1d5c:	1061001f 	beq	v1,at,1ddc <func_80874304+0x308>
    1d60:	240b0001 	li	t3,1
    1d64:	10000024 	b	1df8 <func_80874304+0x324>
    1d68:	920c02e6 	lbu	t4,742(s0)
    1d6c:	3c010000 	lui	at,0x0
    1d70:	a02d003a 	sb	t5,58(at)
    1d74:	3c010000 	lui	at,0x0
    1d78:	240e0030 	li	t6,48
    1d7c:	a42e13f6 	sh	t6,5110(at)
    1d80:	24040009 	li	a0,9
    1d84:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1d88:	a7a30056 	sh	v1,86(sp)
    1d8c:	10000019 	b	1df4 <func_80874304+0x320>
    1d90:	87a30056 	lh	v1,86(sp)
    1d94:	91ef003a 	lbu	t7,58(t7)
    1d98:	24190001 	li	t9,1
    1d9c:	240a0060 	li	t2,96
    1da0:	15e00004 	bnez	t7,1db4 <func_80874304+0x2e0>
    1da4:	24040009 	li	a0,9
    1da8:	24180001 	li	t8,1
    1dac:	3c010000 	lui	at,0x0
    1db0:	a038003a 	sb	t8,58(at)
    1db4:	3c010000 	lui	at,0x0
    1db8:	a039003c 	sb	t9,60(at)
    1dbc:	3c010000 	lui	at,0x0
    1dc0:	a42a13f6 	sh	t2,5110(at)
    1dc4:	3c010000 	lui	at,0x0
    1dc8:	a0200032 	sb	zero,50(at)
    1dcc:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1dd0:	a7a30056 	sh	v1,86(sp)
    1dd4:	10000007 	b	1df4 <func_80874304+0x320>
    1dd8:	87a30056 	lh	v1,86(sp)
    1ddc:	3c010000 	lui	at,0x0
    1de0:	a02b003d 	sb	t3,61(at)
    1de4:	24040009 	li	a0,9
    1de8:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1dec:	a7a30056 	sh	v1,86(sp)
    1df0:	87a30056 	lh	v1,86(sp)
    1df4:	920c02e6 	lbu	t4,742(s0)
    1df8:	3c090000 	lui	t1,0x0
    1dfc:	25290000 	addiu	t1,t1,0
    1e00:	15800008 	bnez	t4,1e24 <func_80874304+0x350>
    1e04:	240d0140 	li	t5,320
    1e08:	a52d1424 	sh	t5,5156(t1)
    1e0c:	240e0001 	li	t6,1
    1e10:	24010002 	li	at,2
    1e14:	14610003 	bne	v1,at,1e24 <func_80874304+0x350>
    1e18:	a20e02e6 	sb	t6,742(s0)
    1e1c:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1e20:	02202025 	move	a0,s1
    1e24:	862300a4 	lh	v1,164(s1)
    1e28:	3c090000 	lui	t1,0x0
    1e2c:	2401003b 	li	at,59
    1e30:	10610074 	beq	v1,at,2004 <func_80874304+0x530>
    1e34:	25290000 	addiu	t1,t1,0
    1e38:	8e2f1d8c 	lw	t7,7564(s1)
    1e3c:	95e20000 	lhu	v0,0(t7)
    1e40:	2841000e 	slti	at,v0,14
    1e44:	1420006f 	bnez	at,2004 <func_80874304+0x530>
    1e48:	28410011 	slti	at,v0,17
    1e4c:	5020006e 	beqzl	at,2008 <func_80874304+0x534>
    1e50:	2401003b 	li	at,59
    1e54:	86180300 	lh	t8,768(s0)
    1e58:	2443fff2 	addiu	v1,v0,-14
    1e5c:	00031c00 	sll	v1,v1,0x10
    1e60:	1700004c 	bnez	t8,1f94 <func_80874304+0x4c0>
    1e64:	00031c03 	sra	v1,v1,0x10
    1e68:	8d390004 	lw	t9,4(t1)
    1e6c:	8fa80058 	lw	t0,88(sp)
    1e70:	26241c24 	addiu	a0,s1,7204
    1e74:	17200006 	bnez	t9,1e90 <func_80874304+0x3bc>
    1e78:	c50c0024 	lwc1	$f12,36(t0)
    1e7c:	3c014292 	lui	at,0x4292
    1e80:	44819000 	mtc1	at,$f18
    1e84:	c5100028 	lwc1	$f16,40(t0)
    1e88:	10000005 	b	1ea0 <func_80874304+0x3cc>
    1e8c:	46128080 	add.s	$f2,$f16,$f18
    1e90:	3c014254 	lui	at,0x4254
    1e94:	44813000 	mtc1	at,$f6
    1e98:	c5040028 	lwc1	$f4,40(t0)
    1e9c:	46062080 	add.s	$f2,$f4,$f6
    1ea0:	c500002c 	lwc1	$f0,44(t0)
    1ea4:	00031040 	sll	v0,v1,0x1
    1ea8:	3c0a0000 	lui	t2,0x0
    1eac:	01425021 	addu	t2,t2,v0
    1eb0:	854a0000 	lh	t2,0(t2)
    1eb4:	afa20040 	sw	v0,64(sp)
    1eb8:	a7a30056 	sh	v1,86(sp)
    1ebc:	afa00024 	sw	zero,36(sp)
    1ec0:	afa00020 	sw	zero,32(sp)
    1ec4:	afa0001c 	sw	zero,28(sp)
    1ec8:	e7a20014 	swc1	$f2,20(sp)
    1ecc:	e7ac0010 	swc1	$f12,16(sp)
    1ed0:	02002825 	move	a1,s0
    1ed4:	02203025 	move	a2,s1
    1ed8:	24070168 	li	a3,360
    1edc:	e7a00018 	swc1	$f0,24(sp)
    1ee0:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1ee4:	afaa0028 	sw	t2,40(sp)
    1ee8:	87a30056 	lh	v1,86(sp)
    1eec:	10400025 	beqz	v0,1f84 <func_80874304+0x4b0>
    1ef0:	ae020344 	sw	v0,836(s0)
    1ef4:	3c020000 	lui	v0,0x0
    1ef8:	24420000 	addiu	v0,v0,0
    1efc:	904b003a 	lbu	t3,58(v0)
    1f00:	240c0001 	li	t4,1
    1f04:	02202025 	move	a0,s1
    1f08:	15600003 	bnez	t3,1f18 <func_80874304+0x444>
    1f0c:	00000000 	nop
    1f10:	10000006 	b	1f2c <func_80874304+0x458>
    1f14:	a04c003a 	sb	t4,58(v0)
    1f18:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1f1c:	a7a30056 	sh	v1,86(sp)
    1f20:	3c020000 	lui	v0,0x0
    1f24:	24420000 	addiu	v0,v0,0
    1f28:	87a30056 	lh	v1,86(sp)
    1f2c:	240d0001 	li	t5,1
    1f30:	a60d0300 	sh	t5,768(s0)
    1f34:	240e0140 	li	t6,320
    1f38:	a44e1424 	sh	t6,5156(v0)
    1f3c:	a7a30056 	sh	v1,86(sp)
    1f40:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1f44:	24040009 	li	a0,9
    1f48:	8fb80040 	lw	t8,64(sp)
    1f4c:	3c020000 	lui	v0,0x0
    1f50:	3c190000 	lui	t9,0x0
    1f54:	24420000 	addiu	v0,v0,0
    1f58:	0338c821 	addu	t9,t9,t8
    1f5c:	87390000 	lh	t9,0(t9)
    1f60:	944f0ef2 	lhu	t7,3826(v0)
    1f64:	87a30056 	lh	v1,86(sp)
    1f68:	3c050000 	lui	a1,0x0
    1f6c:	01f95025 	or	t2,t7,t9
    1f70:	a44a0ef2 	sh	t2,3826(v0)
    1f74:	00a32821 	addu	a1,a1,v1
    1f78:	90a50000 	lbu	a1,0(a1)
    1f7c:	0c000000 	jal	0 <BgDyYoseizo_Init>
    1f80:	02202025 	move	a0,s1
    1f84:	3c090000 	lui	t1,0x0
    1f88:	25290000 	addiu	t1,t1,0
    1f8c:	1000001d 	b	2004 <func_80874304+0x530>
    1f90:	862300a4 	lh	v1,164(s1)
    1f94:	8fa50058 	lw	a1,88(sp)
    1f98:	8e0b0344 	lw	t3,836(s0)
    1f9c:	3c014254 	lui	at,0x4254
    1fa0:	c4a80024 	lwc1	$f8,36(a1)
    1fa4:	e5680024 	swc1	$f8,36(t3)
    1fa8:	8d2c0004 	lw	t4,4(t1)
    1fac:	55800009 	bnezl	t4,1fd4 <func_80874304+0x500>
    1fb0:	c4a40028 	lwc1	$f4,40(a1)
    1fb4:	3c014292 	lui	at,0x4292
    1fb8:	44818000 	mtc1	at,$f16
    1fbc:	c4aa0028 	lwc1	$f10,40(a1)
    1fc0:	8e0d0344 	lw	t5,836(s0)
    1fc4:	46105480 	add.s	$f18,$f10,$f16
    1fc8:	10000006 	b	1fe4 <func_80874304+0x510>
    1fcc:	e5b20028 	swc1	$f18,40(t5)
    1fd0:	c4a40028 	lwc1	$f4,40(a1)
    1fd4:	44813000 	mtc1	at,$f6
    1fd8:	8e0e0344 	lw	t6,836(s0)
    1fdc:	46062200 	add.s	$f8,$f4,$f6
    1fe0:	e5c80028 	swc1	$f8,40(t6)
    1fe4:	c4aa002c 	lwc1	$f10,44(a1)
    1fe8:	8e180344 	lw	t8,836(s0)
    1fec:	3c010000 	lui	at,0x0
    1ff0:	e70a002c 	swc1	$f10,44(t8)
    1ff4:	8e0f0344 	lw	t7,836(s0)
    1ff8:	c4300000 	lwc1	$f16,0(at)
    1ffc:	e5f00164 	swc1	$f16,356(t7)
    2000:	862300a4 	lh	v1,164(s1)
    2004:	2401003b 	li	at,59
    2008:	50610010 	beql	v1,at,204c <func_80874304+0x578>
    200c:	2401003b 	li	at,59
    2010:	8e391d8c 	lw	t9,7564(s1)
    2014:	24010011 	li	at,17
    2018:	972a0000 	lhu	t2,0(t9)
    201c:	5541000b 	bnel	t2,at,204c <func_80874304+0x578>
    2020:	2401003b 	li	at,59
    2024:	8e040344 	lw	a0,836(s0)
    2028:	50800008 	beqzl	a0,204c <func_80874304+0x578>
    202c:	2401003b 	li	at,59
    2030:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2034:	00000000 	nop
    2038:	ae000344 	sw	zero,836(s0)
    203c:	3c090000 	lui	t1,0x0
    2040:	25290000 	addiu	t1,t1,0
    2044:	862300a4 	lh	v1,164(s1)
    2048:	2401003b 	li	at,59
    204c:	54610009 	bnel	v1,at,2074 <func_80874304+0x5a0>
    2050:	920e02e5 	lbu	t6,741(s0)
    2054:	8e2b1d8c 	lw	t3,7564(s1)
    2058:	24010012 	li	at,18
    205c:	240d0001 	li	t5,1
    2060:	956c0000 	lhu	t4,0(t3)
    2064:	55810003 	bnel	t4,at,2074 <func_80874304+0x5a0>
    2068:	920e02e5 	lbu	t6,741(s0)
    206c:	a20d02e5 	sb	t5,741(s0)
    2070:	920e02e5 	lbu	t6,741(s0)
    2074:	51c00007 	beqzl	t6,2094 <func_80874304+0x5c0>
    2078:	8e2f1d8c 	lw	t7,7564(s1)
    207c:	812200cf 	lb	v0,207(t1)
    2080:	28410014 	slti	at,v0,20
    2084:	10200002 	beqz	at,2090 <func_80874304+0x5bc>
    2088:	24580001 	addiu	t8,v0,1
    208c:	a13800cf 	sb	t8,207(t1)
    2090:	8e2f1d8c 	lw	t7,7564(s1)
    2094:	95e20000 	lhu	v0,0(t7)
    2098:	28410013 	slti	at,v0,19
    209c:	14200018 	bnez	at,2100 <func_80874304+0x62c>
    20a0:	28410016 	slti	at,v0,22
    20a4:	50200017 	beqzl	at,2104 <func_80874304+0x630>
    20a8:	02002025 	move	a0,s0
    20ac:	86190304 	lh	t9,772(s0)
    20b0:	2443fff5 	addiu	v1,v0,-11
    20b4:	8fa80058 	lw	t0,88(sp)
    20b8:	17200011 	bnez	t9,2100 <func_80874304+0x62c>
    20bc:	00031c00 	sll	v1,v1,0x10
    20c0:	c5120028 	lwc1	$f18,40(t0)
    20c4:	8d070024 	lw	a3,36(t0)
    20c8:	00031c03 	sra	v1,v1,0x10
    20cc:	e7b20010 	swc1	$f18,16(sp)
    20d0:	c504002c 	lwc1	$f4,44(t0)
    20d4:	afa30024 	sw	v1,36(sp)
    20d8:	afa00020 	sw	zero,32(sp)
    20dc:	afa0001c 	sw	zero,28(sp)
    20e0:	afa00018 	sw	zero,24(sp)
    20e4:	26241c24 	addiu	a0,s1,7204
    20e8:	02202825 	move	a1,s1
    20ec:	2406005d 	li	a2,93
    20f0:	0c000000 	jal	0 <BgDyYoseizo_Init>
    20f4:	e7a40014 	swc1	$f4,20(sp)
    20f8:	240a0001 	li	t2,1
    20fc:	a60a0304 	sh	t2,772(s0)
    2100:	02002025 	move	a0,s0
    2104:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2108:	02202825 	move	a1,s1
    210c:	8fbf003c 	lw	ra,60(sp)
    2110:	8fb00034 	lw	s0,52(sp)
    2114:	8fb10038 	lw	s1,56(sp)
    2118:	03e00008 	jr	ra
    211c:	27bd0060 	addiu	sp,sp,96

00002120 <BgDyYoseizo_Update>:
    2120:	27bdffc0 	addiu	sp,sp,-64
    2124:	afbf002c 	sw	ra,44(sp)
    2128:	afb10028 	sw	s1,40(sp)
    212c:	afb00024 	sw	s0,36(sp)
    2130:	848e02f0 	lh	t6,752(a0)
    2134:	848202e8 	lh	v0,744(a0)
    2138:	00808025 	move	s0,a0
    213c:	25cf0001 	addiu	t7,t6,1
    2140:	00a08825 	move	s1,a1
    2144:	10400003 	beqz	v0,2154 <BgDyYoseizo_Update+0x34>
    2148:	a48f02f0 	sh	t7,752(a0)
    214c:	2458ffff 	addiu	t8,v0,-1
    2150:	a49802e8 	sh	t8,744(a0)
    2154:	860202f8 	lh	v0,760(s0)
    2158:	10400002 	beqz	v0,2164 <BgDyYoseizo_Update+0x44>
    215c:	2459ffff 	addiu	t9,v0,-1
    2160:	a61902f8 	sh	t9,760(s0)
    2164:	860202fa 	lh	v0,762(s0)
    2168:	10400002 	beqz	v0,2174 <BgDyYoseizo_Update+0x54>
    216c:	2448ffff 	addiu	t0,v0,-1
    2170:	a60802fa 	sh	t0,762(s0)
    2174:	8e19014c 	lw	t9,332(s0)
    2178:	02002025 	move	a0,s0
    217c:	02202825 	move	a1,s1
    2180:	0320f809 	jalr	t9
    2184:	00000000 	nop
    2188:	92291d6c 	lbu	t1,7532(s1)
    218c:	51200031 	beqzl	t1,2254 <BgDyYoseizo_Update+0x134>
    2190:	860b02f8 	lh	t3,760(s0)
    2194:	862a00a4 	lh	t2,164(s1)
    2198:	2401003b 	li	at,59
    219c:	00001825 	move	v1,zero
    21a0:	15410011 	bne	t2,at,21e8 <BgDyYoseizo_Update+0xc8>
    21a4:	02002025 	move	a0,s0
    21a8:	96221d74 	lhu	v0,7540(s1)
    21ac:	24010020 	li	at,32
    21b0:	10410007 	beq	v0,at,21d0 <BgDyYoseizo_Update+0xb0>
    21b4:	24010123 	li	at,291
    21b8:	10410005 	beq	v0,at,21d0 <BgDyYoseizo_Update+0xb0>
    21bc:	240101aa 	li	at,426
    21c0:	10410003 	beq	v0,at,21d0 <BgDyYoseizo_Update+0xb0>
    21c4:	24010353 	li	at,851
    21c8:	54410003 	bnel	v0,at,21d8 <BgDyYoseizo_Update+0xb8>
    21cc:	24010065 	li	at,101
    21d0:	24030001 	li	v1,1
    21d4:	24010065 	li	at,101
    21d8:	54410013 	bnel	v0,at,2228 <BgDyYoseizo_Update+0x108>
    21dc:	24010001 	li	at,1
    21e0:	10000010 	b	2224 <BgDyYoseizo_Update+0x104>
    21e4:	24030002 	li	v1,2
    21e8:	96221d74 	lhu	v0,7540(s1)
    21ec:	24010023 	li	at,35
    21f0:	10410007 	beq	v0,at,2210 <BgDyYoseizo_Update+0xf0>
    21f4:	240100b5 	li	at,181
    21f8:	10410005 	beq	v0,at,2210 <BgDyYoseizo_Update+0xf0>
    21fc:	240101ce 	li	at,462
    2200:	10410003 	beq	v0,at,2210 <BgDyYoseizo_Update+0xf0>
    2204:	2401031b 	li	at,795
    2208:	54410003 	bnel	v0,at,2218 <BgDyYoseizo_Update+0xf8>
    220c:	2401005a 	li	at,90
    2210:	24030001 	li	v1,1
    2214:	2401005a 	li	at,90
    2218:	54410003 	bnel	v0,at,2228 <BgDyYoseizo_Update+0x108>
    221c:	24010001 	li	at,1
    2220:	24030002 	li	v1,2
    2224:	24010001 	li	at,1
    2228:	14610004 	bne	v1,at,223c <BgDyYoseizo_Update+0x11c>
    222c:	24056859 	li	a1,26713
    2230:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2234:	afa30034 	sw	v1,52(sp)
    2238:	8fa30034 	lw	v1,52(sp)
    223c:	24010002 	li	at,2
    2240:	14610003 	bne	v1,at,2250 <BgDyYoseizo_Update+0x130>
    2244:	02002025 	move	a0,s0
    2248:	0c000000 	jal	0 <BgDyYoseizo_Init>
    224c:	24056858 	li	a1,26712
    2250:	860b02f8 	lh	t3,760(s0)
    2254:	1560001b 	bnez	t3,22c4 <BgDyYoseizo_Update+0x1a4>
    2258:	00000000 	nop
    225c:	8e0d014c 	lw	t5,332(s0)
    2260:	3c0c0000 	lui	t4,0x0
    2264:	258c0000 	addiu	t4,t4,0
    2268:	118d0016 	beq	t4,t5,22c4 <BgDyYoseizo_Update+0x1a4>
    226c:	00000000 	nop
    2270:	860e02f2 	lh	t6,754(s0)
    2274:	861802f4 	lh	t8,756(s0)
    2278:	25cf0001 	addiu	t7,t6,1
    227c:	a60f02f2 	sh	t7,754(s0)
    2280:	861902f2 	lh	t9,754(s0)
    2284:	27080001 	addiu	t0,t8,1
    2288:	a60802f4 	sh	t0,756(s0)
    228c:	2b210003 	slti	at,t9,3
    2290:	1420000c 	bnez	at,22c4 <BgDyYoseizo_Update+0x1a4>
    2294:	00000000 	nop
    2298:	a60002f4 	sh	zero,756(s0)
    229c:	860902f4 	lh	t1,756(s0)
    22a0:	3c014270 	lui	at,0x4270
    22a4:	44816000 	mtc1	at,$f12
    22a8:	0c000000 	jal	0 <BgDyYoseizo_Init>
    22ac:	a60902f2 	sh	t1,754(s0)
    22b0:	4600010d 	trunc.w.s	$f4,$f0
    22b4:	440d2000 	mfc1	t5,$f4
    22b8:	00000000 	nop
    22bc:	25ae0014 	addiu	t6,t5,20
    22c0:	a60e02f8 	sh	t6,760(s0)
    22c4:	0c000000 	jal	0 <BgDyYoseizo_Init>
    22c8:	02002025 	move	a0,s0
    22cc:	3c010000 	lui	at,0x0
    22d0:	c4280000 	lwc1	$f8,0(at)
    22d4:	c6060308 	lwc1	$f6,776(s0)
    22d8:	02002025 	move	a0,s0
    22dc:	46083002 	mul.s	$f0,$f6,$f8
    22e0:	44050000 	mfc1	a1,$f0
    22e4:	0c000000 	jal	0 <BgDyYoseizo_Init>
    22e8:	e6000328 	swc1	$f0,808(s0)
    22ec:	c60a0328 	lwc1	$f10,808(s0)
    22f0:	8e180038 	lw	t8,56(s0)
    22f4:	02202025 	move	a0,s1
    22f8:	e60a003c 	swc1	$f10,60(s0)
    22fc:	afb80010 	sw	t8,16(sp)
    2300:	8e0f003c 	lw	t7,60(s0)
    2304:	02002825 	move	a1,s0
    2308:	26060334 	addiu	a2,s0,820
    230c:	afaf0014 	sw	t7,20(sp)
    2310:	8e180040 	lw	t8,64(s0)
    2314:	2607033a 	addiu	a3,s0,826
    2318:	0c000000 	jal	0 <BgDyYoseizo_Init>
    231c:	afb80018 	sw	t8,24(sp)
    2320:	02002025 	move	a0,s0
    2324:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2328:	02202825 	move	a1,s1
    232c:	02002025 	move	a0,s0
    2330:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2334:	8e050308 	lw	a1,776(s0)
    2338:	8fbf002c 	lw	ra,44(sp)
    233c:	8fb00024 	lw	s0,36(sp)
    2340:	8fb10028 	lw	s1,40(sp)
    2344:	03e00008 	jr	ra
    2348:	27bd0040 	addiu	sp,sp,64

0000234c <func_80874B7C>:
    234c:	24010008 	li	at,8
    2350:	afa40000 	sw	a0,0(sp)
    2354:	afa60008 	sw	a2,8(sp)
    2358:	14a10007 	bne	a1,at,2378 <func_80874B7C+0x2c>
    235c:	afa7000c 	sw	a3,12(sp)
    2360:	8fa20014 	lw	v0,20(sp)
    2364:	8fa30010 	lw	v1,16(sp)
    2368:	844f033c 	lh	t7,828(v0)
    236c:	846e0000 	lh	t6,0(v1)
    2370:	01cfc021 	addu	t8,t6,t7
    2374:	a4780000 	sh	t8,0(v1)
    2378:	2401000f 	li	at,15
    237c:	8fa20014 	lw	v0,20(sp)
    2380:	14a10009 	bne	a1,at,23a8 <func_80874B7C+0x5c>
    2384:	8fa30010 	lw	v1,16(sp)
    2388:	84790000 	lh	t9,0(v1)
    238c:	84480336 	lh	t0,822(v0)
    2390:	846a0004 	lh	t2,4(v1)
    2394:	03284821 	addu	t1,t9,t0
    2398:	a4690000 	sh	t1,0(v1)
    239c:	844b0338 	lh	t3,824(v0)
    23a0:	014b6021 	addu	t4,t2,t3
    23a4:	a46c0004 	sh	t4,4(v1)
    23a8:	03e00008 	jr	ra
    23ac:	00001025 	move	v0,zero

000023b0 <func_80874BE0>:
    23b0:	27bdffa8 	addiu	sp,sp,-88
    23b4:	afb10028 	sw	s1,40(sp)
    23b8:	00a08825 	move	s1,a1
    23bc:	afbf002c 	sw	ra,44(sp)
    23c0:	afb00024 	sw	s0,36(sp)
    23c4:	8ca50000 	lw	a1,0(a1)
    23c8:	00808025 	move	s0,a0
    23cc:	3c060000 	lui	a2,0x0
    23d0:	24c60000 	addiu	a2,a2,0
    23d4:	27a40040 	addiu	a0,sp,64
    23d8:	24070649 	li	a3,1609
    23dc:	0c000000 	jal	0 <BgDyYoseizo_Init>
    23e0:	afa50050 	sw	a1,80(sp)
    23e4:	8e0f014c 	lw	t7,332(s0)
    23e8:	3c0e0000 	lui	t6,0x0
    23ec:	25ce0000 	addiu	t6,t6,0
    23f0:	11cf0050 	beq	t6,t7,2534 <func_80874BE0+0x184>
    23f4:	8fa80050 	lw	t0,80(sp)
    23f8:	8e240000 	lw	a0,0(s1)
    23fc:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2400:	afa80050 	sw	t0,80(sp)
    2404:	8fa80050 	lw	t0,80(sp)
    2408:	3c19db06 	lui	t9,0xdb06
    240c:	37390020 	ori	t9,t9,0x20
    2410:	8d0202c0 	lw	v0,704(t0)
    2414:	3c090000 	lui	t1,0x0
    2418:	25290000 	addiu	t1,t1,0
    241c:	24580008 	addiu	t8,v0,8
    2420:	ad1802c0 	sw	t8,704(t0)
    2424:	ac590000 	sw	t9,0(v0)
    2428:	860a02f2 	lh	t2,754(s0)
    242c:	3c060000 	lui	a2,0x0
    2430:	24c60000 	addiu	a2,a2,0
    2434:	000a5880 	sll	t3,t2,0x2
    2438:	012b6021 	addu	t4,t1,t3
    243c:	8d840000 	lw	a0,0(t4)
    2440:	3c0500ff 	lui	a1,0xff
    2444:	34a5ffff 	ori	a1,a1,0xffff
    2448:	00047100 	sll	t6,a0,0x4
    244c:	000e7f02 	srl	t7,t6,0x1c
    2450:	000fc080 	sll	t8,t7,0x2
    2454:	00d8c821 	addu	t9,a2,t8
    2458:	8f2a0000 	lw	t2,0(t9)
    245c:	00856824 	and	t5,a0,a1
    2460:	3c078000 	lui	a3,0x8000
    2464:	01aa5821 	addu	t3,t5,t2
    2468:	01676021 	addu	t4,t3,a3
    246c:	ac4c0004 	sw	t4,4(v0)
    2470:	8d0202c0 	lw	v0,704(t0)
    2474:	3c0fdb06 	lui	t7,0xdb06
    2478:	35ef0024 	ori	t7,t7,0x24
    247c:	244e0008 	addiu	t6,v0,8
    2480:	ad0e02c0 	sw	t6,704(t0)
    2484:	ac4f0000 	sw	t7,0(v0)
    2488:	861802f4 	lh	t8,756(s0)
    248c:	0018c880 	sll	t9,t8,0x2
    2490:	01396821 	addu	t5,t1,t9
    2494:	8da40000 	lw	a0,0(t5)
    2498:	00045900 	sll	t3,a0,0x4
    249c:	000b6702 	srl	t4,t3,0x1c
    24a0:	000c7080 	sll	t6,t4,0x2
    24a4:	00ce7821 	addu	t7,a2,t6
    24a8:	8df80000 	lw	t8,0(t7)
    24ac:	00855024 	and	t2,a0,a1
    24b0:	3c0cdb06 	lui	t4,0xdb06
    24b4:	0158c821 	addu	t9,t2,t8
    24b8:	03276821 	addu	t5,t9,a3
    24bc:	ac4d0004 	sw	t5,4(v0)
    24c0:	8d0202c0 	lw	v0,704(t0)
    24c4:	358c0028 	ori	t4,t4,0x28
    24c8:	3c040000 	lui	a0,0x0
    24cc:	244b0008 	addiu	t3,v0,8
    24d0:	ad0b02c0 	sw	t3,704(t0)
    24d4:	ac4c0000 	sw	t4,0(v0)
    24d8:	860e02f6 	lh	t6,758(s0)
    24dc:	000e7880 	sll	t7,t6,0x2
    24e0:	008f2021 	addu	a0,a0,t7
    24e4:	8c840000 	lw	a0,0(a0)
    24e8:	0004c100 	sll	t8,a0,0x4
    24ec:	0018cf02 	srl	t9,t8,0x1c
    24f0:	00196880 	sll	t5,t9,0x2
    24f4:	00cd5821 	addu	t3,a2,t5
    24f8:	8d6c0000 	lw	t4,0(t3)
    24fc:	00855024 	and	t2,a0,a1
    2500:	3c180000 	lui	t8,0x0
    2504:	014c7021 	addu	t6,t2,t4
    2508:	01c77821 	addu	t7,t6,a3
    250c:	ac4f0004 	sw	t7,4(v0)
    2510:	92070152 	lbu	a3,338(s0)
    2514:	8e060170 	lw	a2,368(s0)
    2518:	8e050154 	lw	a1,340(s0)
    251c:	27180000 	addiu	t8,t8,0
    2520:	afb80010 	sw	t8,16(sp)
    2524:	afb00018 	sw	s0,24(sp)
    2528:	afa00014 	sw	zero,20(sp)
    252c:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2530:	02202025 	move	a0,s1
    2534:	3c060000 	lui	a2,0x0
    2538:	24c60000 	addiu	a2,a2,0
    253c:	27a40040 	addiu	a0,sp,64
    2540:	8e250000 	lw	a1,0(s1)
    2544:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2548:	2407065d 	li	a3,1629
    254c:	02002025 	move	a0,s0
    2550:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2554:	02202825 	move	a1,s1
    2558:	8fbf002c 	lw	ra,44(sp)
    255c:	8fb00024 	lw	s0,36(sp)
    2560:	8fb10028 	lw	s1,40(sp)
    2564:	03e00008 	jr	ra
    2568:	27bd0058 	addiu	sp,sp,88

0000256c <func_80874D9C>:
    256c:	27bdffe0 	addiu	sp,sp,-32
    2570:	afbf0014 	sw	ra,20(sp)
    2574:	24820394 	addiu	v0,a0,916
    2578:	00001825 	move	v1,zero
    257c:	904e0000 	lbu	t6,0(v0)
    2580:	24630001 	addiu	v1,v1,1
    2584:	00031c00 	sll	v1,v1,0x10
    2588:	15c00035 	bnez	t6,2660 <func_80874D9C+0xf4>
    258c:	00031c03 	sra	v1,v1,0x10
    2590:	240f0001 	li	t7,1
    2594:	a04f0000 	sb	t7,0(v0)
    2598:	8cb90000 	lw	t9,0(a1)
    259c:	44803000 	mtc1	zero,$f6
    25a0:	3c010000 	lui	at,0x0
    25a4:	ac590004 	sw	t9,4(v0)
    25a8:	8cb80004 	lw	t8,4(a1)
    25ac:	ac580008 	sw	t8,8(v0)
    25b0:	8cb90008 	lw	t9,8(a1)
    25b4:	ac59000c 	sw	t9,12(v0)
    25b8:	8cc90000 	lw	t1,0(a2)
    25bc:	ac490010 	sw	t1,16(v0)
    25c0:	8cc80004 	lw	t0,4(a2)
    25c4:	ac480014 	sw	t0,20(v0)
    25c8:	8cc90008 	lw	t1,8(a2)
    25cc:	ac490018 	sw	t1,24(v0)
    25d0:	8ceb0000 	lw	t3,0(a3)
    25d4:	ac4b001c 	sw	t3,28(v0)
    25d8:	8cea0004 	lw	t2,4(a3)
    25dc:	ac4a0020 	sw	t2,32(v0)
    25e0:	8ceb0008 	lw	t3,8(a3)
    25e4:	ac4b0024 	sw	t3,36(v0)
    25e8:	8fac0030 	lw	t4,48(sp)
    25ec:	918e0000 	lbu	t6,0(t4)
    25f0:	a04e0028 	sb	t6,40(v0)
    25f4:	918d0001 	lbu	t5,1(t4)
    25f8:	a04d0029 	sb	t5,41(v0)
    25fc:	918e0002 	lbu	t6,2(t4)
    2600:	a440002e 	sh	zero,46(v0)
    2604:	a04e002a 	sb	t6,42(v0)
    2608:	8faf0034 	lw	t7,52(sp)
    260c:	91f90000 	lbu	t9,0(t7)
    2610:	a059002b 	sb	t9,43(v0)
    2614:	91f80001 	lbu	t8,1(t7)
    2618:	a058002c 	sb	t8,44(v0)
    261c:	91f90002 	lbu	t9,2(t7)
    2620:	a059002d 	sb	t9,45(v0)
    2624:	c7a40038 	lwc1	$f4,56(sp)
    2628:	e4440030 	swc1	$f4,48(v0)
    262c:	87a8003e 	lh	t0,62(sp)
    2630:	a4480034 	sh	t0,52(v0)
    2634:	87a90042 	lh	t1,66(sp)
    2638:	e4460038 	swc1	$f6,56(v0)
    263c:	a4490036 	sh	t1,54(v0)
    2640:	afa2001c 	sw	v0,28(sp)
    2644:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2648:	c42c0000 	lwc1	$f12,0(at)
    264c:	8fa2001c 	lw	v0,28(sp)
    2650:	44804000 	mtc1	zero,$f8
    2654:	e440003c 	swc1	$f0,60(v0)
    2658:	10000004 	b	266c <func_80874D9C+0x100>
    265c:	e4480040 	swc1	$f8,64(v0)
    2660:	286100c8 	slti	at,v1,200
    2664:	1420ffc5 	bnez	at,257c <func_80874D9C+0x10>
    2668:	24420044 	addiu	v0,v0,68
    266c:	8fbf0014 	lw	ra,20(sp)
    2670:	27bd0020 	addiu	sp,sp,32
    2674:	03e00008 	jr	ra
    2678:	00000000 	nop

0000267c <func_80874EAC>:
    267c:	27bdff58 	addiu	sp,sp,-168
    2680:	f7be0040 	sdc1	$f30,64(sp)
    2684:	3c014700 	lui	at,0x4700
    2688:	4481f000 	mtc1	at,$f30
    268c:	f7bc0038 	sdc1	$f28,56(sp)
    2690:	3c010000 	lui	at,0x0
    2694:	c43c0000 	lwc1	$f28,0(at)
    2698:	f7ba0030 	sdc1	$f26,48(sp)
    269c:	3c010000 	lui	at,0x0
    26a0:	c43a0000 	lwc1	$f26,0(at)
    26a4:	afbe0068 	sw	s8,104(sp)
    26a8:	afb70064 	sw	s7,100(sp)
    26ac:	afb60060 	sw	s6,96(sp)
    26b0:	afb5005c 	sw	s5,92(sp)
    26b4:	afb30054 	sw	s3,84(sp)
    26b8:	afb00048 	sw	s0,72(sp)
    26bc:	f7b80028 	sdc1	$f24,40(sp)
    26c0:	3c014040 	lui	at,0x4040
    26c4:	afbf006c 	sw	ra,108(sp)
    26c8:	afb40058 	sw	s4,88(sp)
    26cc:	afb20050 	sw	s2,80(sp)
    26d0:	afb1004c 	sw	s1,76(sp)
    26d4:	f7b60020 	sdc1	$f22,32(sp)
    26d8:	f7b40018 	sdc1	$f20,24(sp)
    26dc:	4481c000 	mtc1	at,$f24
    26e0:	0080f025 	move	s8,a0
    26e4:	24900394 	addiu	s0,a0,916
    26e8:	8cb41c44 	lw	s4,7236(a1)
    26ec:	27b30094 	addiu	s3,sp,148
    26f0:	0000a825 	move	s5,zero
    26f4:	241600ff 	li	s6,255
    26f8:	27b70088 	addiu	s7,sp,136
    26fc:	920e0000 	lbu	t6,0(s0)
    2700:	3c010000 	lui	at,0x0
    2704:	51c0006d 	beqzl	t6,28bc <func_80874EAC+0x240>
    2708:	86020034 	lh	v0,52(s0)
    270c:	c6040040 	lwc1	$f4,64(s0)
    2710:	c4260000 	lwc1	$f6,0(at)
    2714:	860f0036 	lh	t7,54(s0)
    2718:	03c02025 	move	a0,s8
    271c:	46062200 	add.s	$f8,$f4,$f6
    2720:	2405207e 	li	a1,8318
    2724:	15e00017 	bnez	t7,2784 <func_80874EAC+0x108>
    2728:	e6080040 	swc1	$f8,64(s0)
    272c:	c6000010 	lwc1	$f0,16(s0)
    2730:	c60a0004 	lwc1	$f10,4(s0)
    2734:	c6020014 	lwc1	$f2,20(s0)
    2738:	c6120008 	lwc1	$f18,8(s0)
    273c:	c60c0018 	lwc1	$f12,24(s0)
    2740:	c606000c 	lwc1	$f6,12(s0)
    2744:	46005400 	add.s	$f16,$f10,$f0
    2748:	c60a001c 	lwc1	$f10,28(s0)
    274c:	46029100 	add.s	$f4,$f18,$f2
    2750:	c6120020 	lwc1	$f18,32(s0)
    2754:	e6100004 	swc1	$f16,4(s0)
    2758:	460c3200 	add.s	$f8,$f6,$f12
    275c:	c6060024 	lwc1	$f6,36(s0)
    2760:	e6040008 	swc1	$f4,8(s0)
    2764:	460a0400 	add.s	$f16,$f0,$f10
    2768:	e608000c 	swc1	$f8,12(s0)
    276c:	46121100 	add.s	$f4,$f2,$f18
    2770:	e6100010 	swc1	$f16,16(s0)
    2774:	46066200 	add.s	$f8,$f12,$f6
    2778:	e6040014 	swc1	$f4,20(s0)
    277c:	1000004e 	b	28b8 <func_80874EAC+0x23c>
    2780:	e6080018 	swc1	$f8,24(s0)
    2784:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2788:	26920024 	addiu	s2,s4,36
    278c:	8e590000 	lw	t9,0(s2)
    2790:	3c014316 	lui	at,0x4316
    2794:	44818000 	mtc1	at,$f16
    2798:	ae790000 	sw	t9,0(s3)
    279c:	8e580004 	lw	t8,4(s2)
    27a0:	3c014248 	lui	at,0x4248
    27a4:	44813000 	mtc1	at,$f6
    27a8:	ae780004 	sw	t8,4(s3)
    27ac:	8e590008 	lw	t9,8(s2)
    27b0:	26110004 	addiu	s1,s0,4
    27b4:	02202025 	move	a0,s1
    27b8:	ae790008 	sw	t9,8(s3)
    27bc:	c68a0028 	lwc1	$f10,40(s4)
    27c0:	02602825 	move	a1,s3
    27c4:	46105481 	sub.s	$f18,$f10,$f16
    27c8:	e7b20098 	swc1	$f18,152(sp)
    27cc:	c684002c 	lwc1	$f4,44(s4)
    27d0:	46062201 	sub.s	$f8,$f4,$f6
    27d4:	0c000000 	jal	0 <BgDyYoseizo_Init>
    27d8:	e7a8009c 	swc1	$f8,156(sp)
    27dc:	44825000 	mtc1	v0,$f10
    27e0:	02202025 	move	a0,s1
    27e4:	02602825 	move	a1,s3
    27e8:	0c000000 	jal	0 <BgDyYoseizo_Init>
    27ec:	46805520 	cvt.s.w	$f20,$f10
    27f0:	44828000 	mtc1	v0,$f16
    27f4:	4405a000 	mfc1	a1,$f20
    27f8:	4406d000 	mfc1	a2,$f26
    27fc:	4407e000 	mfc1	a3,$f28
    2800:	26040038 	addiu	a0,s0,56
    2804:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2808:	468085a0 	cvt.s.w	$f22,$f16
    280c:	4405b000 	mfc1	a1,$f22
    2810:	4406d000 	mfc1	a2,$f26
    2814:	4407e000 	mfc1	a3,$f28
    2818:	0c000000 	jal	0 <BgDyYoseizo_Init>
    281c:	2604003c 	addiu	a0,s0,60
    2820:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2824:	00000000 	nop
    2828:	c612003c 	lwc1	$f18,60(s0)
    282c:	3c010000 	lui	at,0x0
    2830:	c4260000 	lwc1	$f6,0(at)
    2834:	461e9103 	div.s	$f4,$f18,$f30
    2838:	00002825 	move	a1,zero
    283c:	46062302 	mul.s	$f12,$f4,$f6
    2840:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2844:	00000000 	nop
    2848:	c6080038 	lwc1	$f8,56(s0)
    284c:	3c010000 	lui	at,0x0
    2850:	c4300000 	lwc1	$f16,0(at)
    2854:	461e4283 	div.s	$f10,$f8,$f30
    2858:	24050001 	li	a1,1
    285c:	46105302 	mul.s	$f12,$f10,$f16
    2860:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2864:	00000000 	nop
    2868:	e7b8009c 	swc1	$f24,156(sp)
    286c:	e7b80098 	swc1	$f24,152(sp)
    2870:	e7b80094 	swc1	$f24,148(sp)
    2874:	02602025 	move	a0,s3
    2878:	0c000000 	jal	0 <BgDyYoseizo_Init>
    287c:	02e02825 	move	a1,s7
    2880:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2884:	00000000 	nop
    2888:	c6120004 	lwc1	$f18,4(s0)
    288c:	c7a40088 	lwc1	$f4,136(sp)
    2890:	c6080008 	lwc1	$f8,8(s0)
    2894:	46049180 	add.s	$f6,$f18,$f4
    2898:	c612000c 	lwc1	$f18,12(s0)
    289c:	e6060004 	swc1	$f6,4(s0)
    28a0:	c7aa008c 	lwc1	$f10,140(sp)
    28a4:	460a4400 	add.s	$f16,$f8,$f10
    28a8:	e6100008 	swc1	$f16,8(s0)
    28ac:	c7a40090 	lwc1	$f4,144(sp)
    28b0:	46049180 	add.s	$f6,$f18,$f4
    28b4:	e606000c 	swc1	$f6,12(s0)
    28b8:	86020034 	lh	v0,52(s0)
    28bc:	26b50001 	addiu	s5,s5,1
    28c0:	0015ac00 	sll	s5,s5,0x10
    28c4:	1040000c 	beqz	v0,28f8 <func_80874EAC+0x27c>
    28c8:	0015ac03 	sra	s5,s5,0x10
    28cc:	8609002e 	lh	t1,46(s0)
    28d0:	2448ffff 	addiu	t0,v0,-1
    28d4:	a6080034 	sh	t0,52(s0)
    28d8:	252a001e 	addiu	t2,t1,30
    28dc:	a60a002e 	sh	t2,46(s0)
    28e0:	860b002e 	lh	t3,46(s0)
    28e4:	29610100 	slti	at,t3,256
    28e8:	5420000d 	bnezl	at,2920 <func_80874EAC+0x2a4>
    28ec:	2aa100c8 	slti	at,s5,200
    28f0:	1000000a 	b	291c <func_80874EAC+0x2a0>
    28f4:	a616002e 	sh	s6,46(s0)
    28f8:	860c002e 	lh	t4,46(s0)
    28fc:	300f00ff 	andi	t7,zero,0xff
    2900:	258dffe2 	addiu	t5,t4,-30
    2904:	a60d002e 	sh	t5,46(s0)
    2908:	860e002e 	lh	t6,46(s0)
    290c:	5dc00004 	bgtzl	t6,2920 <func_80874EAC+0x2a4>
    2910:	2aa100c8 	slti	at,s5,200
    2914:	a2000000 	sb	zero,0(s0)
    2918:	a60f002e 	sh	t7,46(s0)
    291c:	2aa100c8 	slti	at,s5,200
    2920:	1420ff76 	bnez	at,26fc <func_80874EAC+0x80>
    2924:	26100044 	addiu	s0,s0,68
    2928:	8fbf006c 	lw	ra,108(sp)
    292c:	d7b40018 	ldc1	$f20,24(sp)
    2930:	d7b60020 	ldc1	$f22,32(sp)
    2934:	d7b80028 	ldc1	$f24,40(sp)
    2938:	d7ba0030 	ldc1	$f26,48(sp)
    293c:	d7bc0038 	ldc1	$f28,56(sp)
    2940:	d7be0040 	ldc1	$f30,64(sp)
    2944:	8fb00048 	lw	s0,72(sp)
    2948:	8fb1004c 	lw	s1,76(sp)
    294c:	8fb20050 	lw	s2,80(sp)
    2950:	8fb30054 	lw	s3,84(sp)
    2954:	8fb40058 	lw	s4,88(sp)
    2958:	8fb5005c 	lw	s5,92(sp)
    295c:	8fb60060 	lw	s6,96(sp)
    2960:	8fb70064 	lw	s7,100(sp)
    2964:	8fbe0068 	lw	s8,104(sp)
    2968:	03e00008 	jr	ra
    296c:	27bd00a8 	addiu	sp,sp,168

00002970 <func_808751A0>:
    2970:	27bdff60 	addiu	sp,sp,-160
    2974:	afbf0044 	sw	ra,68(sp)
    2978:	afbe0040 	sw	s8,64(sp)
    297c:	afb7003c 	sw	s7,60(sp)
    2980:	afb60038 	sw	s6,56(sp)
    2984:	afb50034 	sw	s5,52(sp)
    2988:	afb40030 	sw	s4,48(sp)
    298c:	afb3002c 	sw	s3,44(sp)
    2990:	afb20028 	sw	s2,40(sp)
    2994:	afb10024 	sw	s1,36(sp)
    2998:	afb00020 	sw	s0,32(sp)
    299c:	f7b40018 	sdc1	$f20,24(sp)
    29a0:	afa500a4 	sw	a1,164(sp)
    29a4:	8cb10000 	lw	s1,0(a1)
    29a8:	24900394 	addiu	s0,a0,916
    29ac:	3c060000 	lui	a2,0x0
    29b0:	00009825 	move	s3,zero
    29b4:	24c60000 	addiu	a2,a2,0
    29b8:	27a4007c 	addiu	a0,sp,124
    29bc:	240706e7 	li	a3,1767
    29c0:	0c000000 	jal	0 <BgDyYoseizo_Init>
    29c4:	02202825 	move	a1,s1
    29c8:	8faf00a4 	lw	t7,164(sp)
    29cc:	0c000000 	jal	0 <BgDyYoseizo_Init>
    29d0:	8de40000 	lw	a0,0(t7)
    29d4:	3c013f80 	lui	at,0x3f80
    29d8:	4481a000 	mtc1	at,$f20
    29dc:	0000a025 	move	s4,zero
    29e0:	3c1e8000 	lui	s8,0x8000
    29e4:	3c17de00 	lui	s7,0xde00
    29e8:	92180000 	lbu	t8,0(s0)
    29ec:	24010001 	li	at,1
    29f0:	8fb200a4 	lw	s2,164(sp)
    29f4:	1701006b 	bne	t8,at,2ba4 <func_808751A0+0x234>
    29f8:	3c020600 	lui	v0,0x600
    29fc:	3c010001 	lui	at,0x1
    2a00:	34211da0 	ori	at,at,0x1da0
    2a04:	244258d8 	addiu	v0,v0,22744
    2a08:	0002c900 	sll	t9,v0,0x4
    2a0c:	02419021 	addu	s2,s2,at
    2a10:	3c0100ff 	lui	at,0xff
    2a14:	00194702 	srl	t0,t9,0x1c
    2a18:	3c0a0000 	lui	t2,0x0
    2a1c:	254a0000 	addiu	t2,t2,0
    2a20:	00084880 	sll	t1,t0,0x2
    2a24:	3421ffff 	ori	at,at,0xffff
    2a28:	0041b024 	and	s6,v0,at
    2a2c:	1660001a 	bnez	s3,2a98 <func_808751A0+0x128>
    2a30:	012aa821 	addu	s5,t1,t2
    2a34:	3c020600 	lui	v0,0x600
    2a38:	24425860 	addiu	v0,v0,22624
    2a3c:	3c0100ff 	lui	at,0xff
    2a40:	3421ffff 	ori	at,at,0xffff
    2a44:	00412824 	and	a1,v0,at
    2a48:	00025900 	sll	t3,v0,0x4
    2a4c:	8e2202d0 	lw	v0,720(s1)
    2a50:	000b6702 	srl	t4,t3,0x1c
    2a54:	000c6880 	sll	t5,t4,0x2
    2a58:	244e0008 	addiu	t6,v0,8
    2a5c:	ae2e02d0 	sw	t6,720(s1)
    2a60:	01aa2021 	addu	a0,t5,t2
    2a64:	ac570000 	sw	s7,0(v0)
    2a68:	8c8f0000 	lw	t7,0(a0)
    2a6c:	3c09e700 	lui	t1,0xe700
    2a70:	26730001 	addiu	s3,s3,1
    2a74:	01e5c021 	addu	t8,t7,a1
    2a78:	031ec821 	addu	t9,t8,s8
    2a7c:	ac590004 	sw	t9,4(v0)
    2a80:	8e2202d0 	lw	v0,720(s1)
    2a84:	327300ff 	andi	s3,s3,0xff
    2a88:	24480008 	addiu	t0,v0,8
    2a8c:	ae2802d0 	sw	t0,720(s1)
    2a90:	ac400004 	sw	zero,4(v0)
    2a94:	ac490000 	sw	t1,0(v0)
    2a98:	8e2202d0 	lw	v0,720(s1)
    2a9c:	3c0cfa00 	lui	t4,0xfa00
    2aa0:	00003825 	move	a3,zero
    2aa4:	244b0008 	addiu	t3,v0,8
    2aa8:	ae2b02d0 	sw	t3,720(s1)
    2aac:	ac4c0000 	sw	t4,0(v0)
    2ab0:	920a0028 	lbu	t2,40(s0)
    2ab4:	92180029 	lbu	t8,41(s0)
    2ab8:	920b002a 	lbu	t3,42(s0)
    2abc:	000a7600 	sll	t6,t2,0x18
    2ac0:	860a002e 	lh	t2,46(s0)
    2ac4:	0018cc00 	sll	t9,t8,0x10
    2ac8:	01d94025 	or	t0,t6,t9
    2acc:	000b6200 	sll	t4,t3,0x8
    2ad0:	010c6825 	or	t5,t0,t4
    2ad4:	314f00ff 	andi	t7,t2,0xff
    2ad8:	01afc025 	or	t8,t5,t7
    2adc:	ac580004 	sw	t8,4(v0)
    2ae0:	8e2202d0 	lw	v0,720(s1)
    2ae4:	3c19fb00 	lui	t9,0xfb00
    2ae8:	244e0008 	addiu	t6,v0,8
    2aec:	ae2e02d0 	sw	t6,720(s1)
    2af0:	ac590000 	sw	t9,0(v0)
    2af4:	920a002c 	lbu	t2,44(s0)
    2af8:	920b002b 	lbu	t3,43(s0)
    2afc:	920e002d 	lbu	t6,45(s0)
    2b00:	000a6c00 	sll	t5,t2,0x10
    2b04:	000b4600 	sll	t0,t3,0x18
    2b08:	010d7825 	or	t7,t0,t5
    2b0c:	000eca00 	sll	t9,t6,0x8
    2b10:	01f94825 	or	t1,t7,t9
    2b14:	ac490004 	sw	t1,4(v0)
    2b18:	8e06000c 	lw	a2,12(s0)
    2b1c:	c60e0008 	lwc1	$f14,8(s0)
    2b20:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2b24:	c60c0004 	lwc1	$f12,4(s0)
    2b28:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2b2c:	02402025 	move	a0,s2
    2b30:	c60c0030 	lwc1	$f12,48(s0)
    2b34:	4406a000 	mfc1	a2,$f20
    2b38:	24070001 	li	a3,1
    2b3c:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2b40:	46006386 	mov.s	$f14,$f12
    2b44:	c60c0040 	lwc1	$f12,64(s0)
    2b48:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2b4c:	24050001 	li	a1,1
    2b50:	8e2202d0 	lw	v0,720(s1)
    2b54:	3c0cda38 	lui	t4,0xda38
    2b58:	358c0003 	ori	t4,t4,0x3
    2b5c:	244b0008 	addiu	t3,v0,8
    2b60:	ae2b02d0 	sw	t3,720(s1)
    2b64:	3c050000 	lui	a1,0x0
    2b68:	24a50000 	addiu	a1,a1,0
    2b6c:	02202025 	move	a0,s1
    2b70:	24060712 	li	a2,1810
    2b74:	ac4c0000 	sw	t4,0(v0)
    2b78:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2b7c:	00409025 	move	s2,v0
    2b80:	ae420004 	sw	v0,4(s2)
    2b84:	8e2202d0 	lw	v0,720(s1)
    2b88:	244a0008 	addiu	t2,v0,8
    2b8c:	ae2a02d0 	sw	t2,720(s1)
    2b90:	ac570000 	sw	s7,0(v0)
    2b94:	8ea80000 	lw	t0,0(s5)
    2b98:	01166821 	addu	t5,t0,s6
    2b9c:	01bec021 	addu	t8,t5,s8
    2ba0:	ac580004 	sw	t8,4(v0)
    2ba4:	26940001 	addiu	s4,s4,1
    2ba8:	0014a400 	sll	s4,s4,0x10
    2bac:	0014a403 	sra	s4,s4,0x10
    2bb0:	2a8100c8 	slti	at,s4,200
    2bb4:	1420ff8c 	bnez	at,29e8 <func_808751A0+0x78>
    2bb8:	26100044 	addiu	s0,s0,68
    2bbc:	3c060000 	lui	a2,0x0
    2bc0:	24c60000 	addiu	a2,a2,0
    2bc4:	27a4007c 	addiu	a0,sp,124
    2bc8:	02202825 	move	a1,s1
    2bcc:	0c000000 	jal	0 <BgDyYoseizo_Init>
    2bd0:	2407071b 	li	a3,1819
    2bd4:	8fbf0044 	lw	ra,68(sp)
    2bd8:	d7b40018 	ldc1	$f20,24(sp)
    2bdc:	8fb00020 	lw	s0,32(sp)
    2be0:	8fb10024 	lw	s1,36(sp)
    2be4:	8fb20028 	lw	s2,40(sp)
    2be8:	8fb3002c 	lw	s3,44(sp)
    2bec:	8fb40030 	lw	s4,48(sp)
    2bf0:	8fb50034 	lw	s5,52(sp)
    2bf4:	8fb60038 	lw	s6,56(sp)
    2bf8:	8fb7003c 	lw	s7,60(sp)
    2bfc:	8fbe0040 	lw	s8,64(sp)
    2c00:	03e00008 	jr	ra
    2c04:	27bd00a0 	addiu	sp,sp,160
	...
