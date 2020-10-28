
build/src/overlays/actors/ovl_Eff_Dust/z_eff_dust.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8099D8D0>:
       0:	03e00008 	jr	ra
       4:	ac850560 	sw	a1,1376(a0)

00000008 <func_8099D8D8>:
       8:	03e00008 	jr	ra
       c:	ac850564 	sw	a1,1380(a0)

00000010 <func_8099D8E0>:
      10:	3c013f80 	lui	at,0x3f80
      14:	44811000 	mtc1	at,$f2
      18:	44800000 	mtc1	zero,$f0
      1c:	00001025 	move	v0,zero
      20:	00801825 	move	v1,a0
      24:	00802825 	move	a1,a0
      28:	24060040 	li	a2,64
      2c:	e4600254 	swc1	$f0,596(v1)
      30:	e4600250 	swc1	$f0,592(v1)
      34:	e460024c 	swc1	$f0,588(v1)
      38:	e4a2014c 	swc1	$f2,332(a1)
      3c:	e4600258 	swc1	$f0,600(v1)
      40:	e460025c 	swc1	$f0,604(v1)
      44:	e4600260 	swc1	$f0,608(v1)
      48:	e4a20150 	swc1	$f2,336(a1)
      4c:	e4600264 	swc1	$f0,612(v1)
      50:	e4600268 	swc1	$f0,616(v1)
      54:	e460026c 	swc1	$f0,620(v1)
      58:	e4a20154 	swc1	$f2,340(a1)
      5c:	e4600270 	swc1	$f0,624(v1)
      60:	e4600274 	swc1	$f0,628(v1)
      64:	e4600278 	swc1	$f0,632(v1)
      68:	24420004 	addiu	v0,v0,4
      6c:	e4a20158 	swc1	$f2,344(a1)
      70:	24630030 	addiu	v1,v1,48
      74:	1446ffed 	bne	v0,a2,2c <func_8099D8E0+0x1c>
      78:	24a50010 	addiu	a1,a1,16
      7c:	03e00008 	jr	ra
      80:	a080054c 	sb	zero,1356(a0)

00000084 <EffDust_Init>:
      84:	27bdffd8 	addiu	sp,sp,-40
      88:	afbf001c 	sw	ra,28(sp)
      8c:	afb00018 	sw	s0,24(sp)
      90:	afa5002c 	sw	a1,44(sp)
      94:	848e001c 	lh	t6,28(a0)
      98:	00808025 	move	s0,a0
      9c:	0c000000 	jal	0 <func_8099D8D0>
      a0:	afae0020 	sw	t6,32(sp)
      a4:	8faf0020 	lw	t7,32(sp)
      a8:	2de10005 	sltiu	at,t7,5
      ac:	1020005b 	beqz	at,21c <L8099DAA8+0x44>
      b0:	000f7880 	sll	t7,t7,0x2
      b4:	3c010000 	lui	at,0x0
      b8:	002f0821 	addu	at,at,t7
      bc:	8c2f0000 	lw	t7,0(at)
      c0:	01e00008 	jr	t7
      c4:	00000000 	nop

000000c8 <L8099D998>:
      c8:	3c050000 	lui	a1,0x0
      cc:	24a50000 	addiu	a1,a1,0
      d0:	0c000000 	jal	0 <func_8099D8D0>
      d4:	02002025 	move	a0,s0
      d8:	3c050000 	lui	a1,0x0
      dc:	24a50000 	addiu	a1,a1,0
      e0:	0c000000 	jal	0 <func_8099D8D0>
      e4:	02002025 	move	a0,s0
      e8:	3c010000 	lui	at,0x0
      ec:	c4200000 	lwc1	$f0,0(at)
      f0:	3c013f80 	lui	at,0x3f80
      f4:	44812000 	mtc1	at,$f4
      f8:	3c010000 	lui	at,0x0
      fc:	e6000554 	swc1	$f0,1364(s0)
     100:	e6000558 	swc1	$f0,1368(s0)
     104:	e6040550 	swc1	$f4,1360(s0)
     108:	c4260000 	lwc1	$f6,0(at)
     10c:	10000048 	b	230 <L8099DAA8+0x58>
     110:	e606055c 	swc1	$f6,1372(s0)

00000114 <L8099D9E4>:
     114:	3c050000 	lui	a1,0x0
     118:	24a50000 	addiu	a1,a1,0
     11c:	0c000000 	jal	0 <func_8099D8D0>
     120:	02002025 	move	a0,s0
     124:	3c050000 	lui	a1,0x0
     128:	24a50000 	addiu	a1,a1,0
     12c:	0c000000 	jal	0 <func_8099D8D0>
     130:	02002025 	move	a0,s0
     134:	3c010000 	lui	at,0x0
     138:	c4200000 	lwc1	$f0,0(at)
     13c:	3c013f80 	lui	at,0x3f80
     140:	44814000 	mtc1	at,$f8
     144:	3c013f00 	lui	at,0x3f00
     148:	44815000 	mtc1	at,$f10
     14c:	e6000550 	swc1	$f0,1360(s0)
     150:	e6000558 	swc1	$f0,1368(s0)
     154:	e6080554 	swc1	$f8,1364(s0)
     158:	10000035 	b	230 <L8099DAA8+0x58>
     15c:	e60a055c 	swc1	$f10,1372(s0)

00000160 <L8099DA30>:
     160:	3c050000 	lui	a1,0x0
     164:	24a50000 	addiu	a1,a1,0
     168:	0c000000 	jal	0 <func_8099D8D0>
     16c:	02002025 	move	a0,s0
     170:	3c050000 	lui	a1,0x0
     174:	24a50000 	addiu	a1,a1,0
     178:	0c000000 	jal	0 <func_8099D8D0>
     17c:	02002025 	move	a0,s0
     180:	3c013f00 	lui	at,0x3f00
     184:	44818000 	mtc1	at,$f16
     188:	3c014170 	lui	at,0x4170
     18c:	44819000 	mtc1	at,$f18
     190:	e6100550 	swc1	$f16,1360(s0)
     194:	10000026 	b	230 <L8099DAA8+0x58>
     198:	e612055c 	swc1	$f18,1372(s0)

0000019c <L8099DA6C>:
     19c:	3c050000 	lui	a1,0x0
     1a0:	24a50000 	addiu	a1,a1,0
     1a4:	0c000000 	jal	0 <func_8099D8D0>
     1a8:	02002025 	move	a0,s0
     1ac:	3c050000 	lui	a1,0x0
     1b0:	24a50000 	addiu	a1,a1,0
     1b4:	0c000000 	jal	0 <func_8099D8D0>
     1b8:	02002025 	move	a0,s0
     1bc:	3c013f00 	lui	at,0x3f00
     1c0:	44812000 	mtc1	at,$f4
     1c4:	3c014120 	lui	at,0x4120
     1c8:	44813000 	mtc1	at,$f6
     1cc:	e6040550 	swc1	$f4,1360(s0)
     1d0:	10000017 	b	230 <L8099DAA8+0x58>
     1d4:	e606055c 	swc1	$f6,1372(s0)

000001d8 <L8099DAA8>:
     1d8:	3c050000 	lui	a1,0x0
     1dc:	24a50000 	addiu	a1,a1,0
     1e0:	0c000000 	jal	0 <func_8099D8D0>
     1e4:	02002025 	move	a0,s0
     1e8:	3c050000 	lui	a1,0x0
     1ec:	24a50000 	addiu	a1,a1,0
     1f0:	0c000000 	jal	0 <func_8099D8D0>
     1f4:	02002025 	move	a0,s0
     1f8:	3c013f00 	lui	at,0x3f00
     1fc:	44814000 	mtc1	at,$f8
     200:	3c0141a0 	lui	at,0x41a0
     204:	44815000 	mtc1	at,$f10
     208:	2418ffff 	li	t8,-1
     20c:	a2180003 	sb	t8,3(s0)
     210:	e6080550 	swc1	$f8,1360(s0)
     214:	10000006 	b	230 <L8099DAA8+0x58>
     218:	e60a055c 	swc1	$f10,1372(s0)
     21c:	3c050000 	lui	a1,0x0
     220:	24a50000 	addiu	a1,a1,0
     224:	02002025 	move	a0,s0
     228:	0c000000 	jal	0 <func_8099D8D0>
     22c:	240600ca 	li	a2,202
     230:	2419000a 	li	t9,10
     234:	a219054d 	sb	t9,1357(s0)
     238:	8fbf001c 	lw	ra,28(sp)
     23c:	8fb00018 	lw	s0,24(sp)
     240:	27bd0028 	addiu	sp,sp,40
     244:	03e00008 	jr	ra
     248:	00000000 	nop

0000024c <EffDust_Destroy>:
     24c:	afa40000 	sw	a0,0(sp)
     250:	03e00008 	jr	ra
     254:	afa50004 	sw	a1,4(sp)

00000258 <func_8099DB28>:
     258:	27bdff90 	addiu	sp,sp,-112
     25c:	f7b60020 	sdc1	$f22,32(sp)
     260:	3c013f80 	lui	at,0x3f80
     264:	4481b000 	mtc1	at,$f22
     268:	afb60060 	sw	s6,96(sp)
     26c:	afb30054 	sw	s3,84(sp)
     270:	3c010000 	lui	at,0x0
     274:	0080b025 	move	s6,a0
     278:	afbf006c 	sw	ra,108(sp)
     27c:	afbe0068 	sw	s8,104(sp)
     280:	afb70064 	sw	s7,100(sp)
     284:	afb5005c 	sw	s5,92(sp)
     288:	afb40058 	sw	s4,88(sp)
     28c:	afb20050 	sw	s2,80(sp)
     290:	afb1004c 	sw	s1,76(sp)
     294:	afb00048 	sw	s0,72(sp)
     298:	f7be0040 	sdc1	$f30,64(sp)
     29c:	f7bc0038 	sdc1	$f28,56(sp)
     2a0:	f7ba0030 	sdc1	$f26,48(sp)
     2a4:	f7b80028 	sdc1	$f24,40(sp)
     2a8:	f7b40018 	sdc1	$f20,24(sp)
     2ac:	afa50074 	sw	a1,116(sp)
     2b0:	2482014c 	addiu	v0,a0,332
     2b4:	c4220000 	lwc1	$f2,0(at)
     2b8:	00009825 	move	s3,zero
     2bc:	24030040 	li	v1,64
     2c0:	c4400000 	lwc1	$f0,0(v0)
     2c4:	26730004 	addiu	s3,s3,4
     2c8:	4616003c 	c.lt.s	$f0,$f22
     2cc:	00000000 	nop
     2d0:	45020004 	bc1fl	2e4 <func_8099DB28+0x8c>
     2d4:	c4400004 	lwc1	$f0,4(v0)
     2d8:	46020100 	add.s	$f4,$f0,$f2
     2dc:	e4440000 	swc1	$f4,0(v0)
     2e0:	c4400004 	lwc1	$f0,4(v0)
     2e4:	24420004 	addiu	v0,v0,4
     2e8:	4616003c 	c.lt.s	$f0,$f22
     2ec:	00000000 	nop
     2f0:	45020004 	bc1fl	304 <func_8099DB28+0xac>
     2f4:	c4400004 	lwc1	$f0,4(v0)
     2f8:	46020180 	add.s	$f6,$f0,$f2
     2fc:	e4460000 	swc1	$f6,0(v0)
     300:	c4400004 	lwc1	$f0,4(v0)
     304:	24420004 	addiu	v0,v0,4
     308:	4616003c 	c.lt.s	$f0,$f22
     30c:	00000000 	nop
     310:	45020004 	bc1fl	324 <func_8099DB28+0xcc>
     314:	c4400004 	lwc1	$f0,4(v0)
     318:	46020200 	add.s	$f8,$f0,$f2
     31c:	e4480000 	swc1	$f8,0(v0)
     320:	c4400004 	lwc1	$f0,4(v0)
     324:	24420004 	addiu	v0,v0,4
     328:	4616003c 	c.lt.s	$f0,$f22
     32c:	00000000 	nop
     330:	45000003 	bc1f	340 <func_8099DB28+0xe8>
     334:	00000000 	nop
     338:	46020280 	add.s	$f10,$f0,$f2
     33c:	e44a0000 	swc1	$f10,0(v0)
     340:	1663ffdf 	bne	s3,v1,2c0 <func_8099DB28+0x68>
     344:	24420004 	addiu	v0,v0,4
     348:	3c014580 	lui	at,0x4580
     34c:	4481e000 	mtc1	at,$f28
     350:	3c014600 	lui	at,0x4600
     354:	4481d000 	mtc1	at,$f26
     358:	3c01c448 	lui	at,0xc448
     35c:	4481c000 	mtc1	at,$f24
     360:	4480f000 	mtc1	zero,$f30
     364:	0000a825 	move	s5,zero
     368:	241e0003 	li	s8,3
     36c:	2417000c 	li	s7,12
     370:	92d3054c 	lbu	s3,1356(s6)
     374:	3273003f 	andi	s3,s3,0x3f
     378:	00137080 	sll	t6,s3,0x2
     37c:	02cea021 	addu	s4,s6,t6
     380:	c690014c 	lwc1	$f16,332(s4)
     384:	4610b03e 	c.le.s	$f22,$f16
     388:	00000000 	nop
     38c:	45020031 	bc1fl	454 <func_8099DB28+0x1fc>
     390:	26b50001 	addiu	s5,s5,1
     394:	0c000000 	jal	0 <func_8099D8D0>
     398:	4600d306 	mov.s	$f12,$f26
     39c:	4600048d 	trunc.w.s	$f18,$f0
     3a0:	4600e306 	mov.s	$f12,$f28
     3a4:	44129000 	mfc1	s2,$f18
     3a8:	00000000 	nop
     3ac:	00129400 	sll	s2,s2,0x10
     3b0:	0c000000 	jal	0 <func_8099D8D0>
     3b4:	00129403 	sra	s2,s2,0x10
     3b8:	4600010d 	trunc.w.s	$f4,$f0
     3bc:	00122400 	sll	a0,s2,0x10
     3c0:	00042403 	sra	a0,a0,0x10
     3c4:	44102000 	mfc1	s0,$f4
     3c8:	00000000 	nop
     3cc:	00108400 	sll	s0,s0,0x10
     3d0:	0c000000 	jal	0 <func_8099D8D0>
     3d4:	00108403 	sra	s0,s0,0x10
     3d8:	00102400 	sll	a0,s0,0x10
     3dc:	00042403 	sra	a0,a0,0x10
     3e0:	0c000000 	jal	0 <func_8099D8D0>
     3e4:	46000506 	mov.s	$f20,$f0
     3e8:	4614c182 	mul.s	$f6,$f24,$f20
     3ec:	00102400 	sll	a0,s0,0x10
     3f0:	02770019 	multu	s3,s7
     3f4:	00042403 	sra	a0,a0,0x10
     3f8:	46060202 	mul.s	$f8,$f0,$f6
     3fc:	0000c812 	mflo	t9
     400:	02d98821 	addu	s1,s6,t9
     404:	0c000000 	jal	0 <func_8099D8D0>
     408:	e628024c 	swc1	$f8,588(s1)
     40c:	46180282 	mul.s	$f10,$f0,$f24
     410:	00122400 	sll	a0,s2,0x10
     414:	00042403 	sra	a0,a0,0x10
     418:	0c000000 	jal	0 <func_8099D8D0>
     41c:	e62a0250 	swc1	$f10,592(s1)
     420:	00102400 	sll	a0,s0,0x10
     424:	00042403 	sra	a0,a0,0x10
     428:	0c000000 	jal	0 <func_8099D8D0>
     42c:	46000506 	mov.s	$f20,$f0
     430:	4614c402 	mul.s	$f16,$f24,$f20
     434:	00000000 	nop
     438:	46100482 	mul.s	$f18,$f0,$f16
     43c:	e6320254 	swc1	$f18,596(s1)
     440:	e69e014c 	swc1	$f30,332(s4)
     444:	92c8054c 	lbu	t0,1356(s6)
     448:	25090001 	addiu	t1,t0,1
     44c:	a2c9054c 	sb	t1,1356(s6)
     450:	26b50001 	addiu	s5,s5,1
     454:	56beffc7 	bnel	s5,s8,374 <func_8099DB28+0x11c>
     458:	92d3054c 	lbu	s3,1356(s6)
     45c:	8fbf006c 	lw	ra,108(sp)
     460:	d7b40018 	ldc1	$f20,24(sp)
     464:	d7b60020 	ldc1	$f22,32(sp)
     468:	d7b80028 	ldc1	$f24,40(sp)
     46c:	d7ba0030 	ldc1	$f26,48(sp)
     470:	d7bc0038 	ldc1	$f28,56(sp)
     474:	d7be0040 	ldc1	$f30,64(sp)
     478:	8fb00048 	lw	s0,72(sp)
     47c:	8fb1004c 	lw	s1,76(sp)
     480:	8fb20050 	lw	s2,80(sp)
     484:	8fb30054 	lw	s3,84(sp)
     488:	8fb40058 	lw	s4,88(sp)
     48c:	8fb5005c 	lw	s5,92(sp)
     490:	8fb60060 	lw	s6,96(sp)
     494:	8fb70064 	lw	s7,100(sp)
     498:	8fbe0068 	lw	s8,104(sp)
     49c:	03e00008 	jr	ra
     4a0:	27bd0070 	addiu	sp,sp,112

000004a4 <func_8099DD74>:
     4a4:	27bdff90 	addiu	sp,sp,-112
     4a8:	f7b60020 	sdc1	$f22,32(sp)
     4ac:	3c013f80 	lui	at,0x3f80
     4b0:	4481b000 	mtc1	at,$f22
     4b4:	afb60060 	sw	s6,96(sp)
     4b8:	afb30054 	sw	s3,84(sp)
     4bc:	3c010000 	lui	at,0x0
     4c0:	0080b025 	move	s6,a0
     4c4:	afbf006c 	sw	ra,108(sp)
     4c8:	afbe0068 	sw	s8,104(sp)
     4cc:	afb70064 	sw	s7,100(sp)
     4d0:	afb5005c 	sw	s5,92(sp)
     4d4:	afb40058 	sw	s4,88(sp)
     4d8:	afb20050 	sw	s2,80(sp)
     4dc:	afb1004c 	sw	s1,76(sp)
     4e0:	afb00048 	sw	s0,72(sp)
     4e4:	f7be0040 	sdc1	$f30,64(sp)
     4e8:	f7bc0038 	sdc1	$f28,56(sp)
     4ec:	f7ba0030 	sdc1	$f26,48(sp)
     4f0:	f7b80028 	sdc1	$f24,40(sp)
     4f4:	f7b40018 	sdc1	$f20,24(sp)
     4f8:	afa50074 	sw	a1,116(sp)
     4fc:	2482014c 	addiu	v0,a0,332
     500:	c4220000 	lwc1	$f2,0(at)
     504:	00009825 	move	s3,zero
     508:	24030040 	li	v1,64
     50c:	c4400000 	lwc1	$f0,0(v0)
     510:	26730004 	addiu	s3,s3,4
     514:	4616003c 	c.lt.s	$f0,$f22
     518:	00000000 	nop
     51c:	45020004 	bc1fl	530 <func_8099DD74+0x8c>
     520:	c4400004 	lwc1	$f0,4(v0)
     524:	46020100 	add.s	$f4,$f0,$f2
     528:	e4440000 	swc1	$f4,0(v0)
     52c:	c4400004 	lwc1	$f0,4(v0)
     530:	24420004 	addiu	v0,v0,4
     534:	4616003c 	c.lt.s	$f0,$f22
     538:	00000000 	nop
     53c:	45020004 	bc1fl	550 <func_8099DD74+0xac>
     540:	c4400004 	lwc1	$f0,4(v0)
     544:	46020180 	add.s	$f6,$f0,$f2
     548:	e4460000 	swc1	$f6,0(v0)
     54c:	c4400004 	lwc1	$f0,4(v0)
     550:	24420004 	addiu	v0,v0,4
     554:	4616003c 	c.lt.s	$f0,$f22
     558:	00000000 	nop
     55c:	45020004 	bc1fl	570 <func_8099DD74+0xcc>
     560:	c4400004 	lwc1	$f0,4(v0)
     564:	46020200 	add.s	$f8,$f0,$f2
     568:	e4480000 	swc1	$f8,0(v0)
     56c:	c4400004 	lwc1	$f0,4(v0)
     570:	24420004 	addiu	v0,v0,4
     574:	4616003c 	c.lt.s	$f0,$f22
     578:	00000000 	nop
     57c:	45000003 	bc1f	58c <func_8099DD74+0xe8>
     580:	00000000 	nop
     584:	46020280 	add.s	$f10,$f0,$f2
     588:	e44a0000 	swc1	$f10,0(v0)
     58c:	1663ffdf 	bne	s3,v1,50c <func_8099DD74+0x68>
     590:	24420004 	addiu	v0,v0,4
     594:	3c014600 	lui	at,0x4600
     598:	4481e000 	mtc1	at,$f28
     59c:	3c014780 	lui	at,0x4780
     5a0:	4481d000 	mtc1	at,$f26
     5a4:	3c0143c8 	lui	at,0x43c8
     5a8:	4481c000 	mtc1	at,$f24
     5ac:	4480f000 	mtc1	zero,$f30
     5b0:	0000a825 	move	s5,zero
     5b4:	241e0002 	li	s8,2
     5b8:	2417000c 	li	s7,12
     5bc:	92d3054c 	lbu	s3,1356(s6)
     5c0:	3273003f 	andi	s3,s3,0x3f
     5c4:	00137080 	sll	t6,s3,0x2
     5c8:	02cea021 	addu	s4,s6,t6
     5cc:	c690014c 	lwc1	$f16,332(s4)
     5d0:	4610b03e 	c.le.s	$f22,$f16
     5d4:	00000000 	nop
     5d8:	45020031 	bc1fl	6a0 <func_8099DD74+0x1fc>
     5dc:	26b50001 	addiu	s5,s5,1
     5e0:	0c000000 	jal	0 <func_8099D8D0>
     5e4:	4600d306 	mov.s	$f12,$f26
     5e8:	4600048d 	trunc.w.s	$f18,$f0
     5ec:	4600e306 	mov.s	$f12,$f28
     5f0:	44129000 	mfc1	s2,$f18
     5f4:	00000000 	nop
     5f8:	00129400 	sll	s2,s2,0x10
     5fc:	0c000000 	jal	0 <func_8099D8D0>
     600:	00129403 	sra	s2,s2,0x10
     604:	4600010d 	trunc.w.s	$f4,$f0
     608:	00122400 	sll	a0,s2,0x10
     60c:	00042403 	sra	a0,a0,0x10
     610:	44102000 	mfc1	s0,$f4
     614:	00000000 	nop
     618:	00108400 	sll	s0,s0,0x10
     61c:	0c000000 	jal	0 <func_8099D8D0>
     620:	00108403 	sra	s0,s0,0x10
     624:	00102400 	sll	a0,s0,0x10
     628:	00042403 	sra	a0,a0,0x10
     62c:	0c000000 	jal	0 <func_8099D8D0>
     630:	46000506 	mov.s	$f20,$f0
     634:	4614c182 	mul.s	$f6,$f24,$f20
     638:	00102400 	sll	a0,s0,0x10
     63c:	02770019 	multu	s3,s7
     640:	00042403 	sra	a0,a0,0x10
     644:	46060202 	mul.s	$f8,$f0,$f6
     648:	0000c812 	mflo	t9
     64c:	02d98821 	addu	s1,s6,t9
     650:	0c000000 	jal	0 <func_8099D8D0>
     654:	e628024c 	swc1	$f8,588(s1)
     658:	46180282 	mul.s	$f10,$f0,$f24
     65c:	00122400 	sll	a0,s2,0x10
     660:	00042403 	sra	a0,a0,0x10
     664:	0c000000 	jal	0 <func_8099D8D0>
     668:	e62a0250 	swc1	$f10,592(s1)
     66c:	00102400 	sll	a0,s0,0x10
     670:	00042403 	sra	a0,a0,0x10
     674:	0c000000 	jal	0 <func_8099D8D0>
     678:	46000506 	mov.s	$f20,$f0
     67c:	4614c402 	mul.s	$f16,$f24,$f20
     680:	00000000 	nop
     684:	46100482 	mul.s	$f18,$f0,$f16
     688:	e6320254 	swc1	$f18,596(s1)
     68c:	e69e014c 	swc1	$f30,332(s4)
     690:	92c8054c 	lbu	t0,1356(s6)
     694:	25090001 	addiu	t1,t0,1
     698:	a2c9054c 	sb	t1,1356(s6)
     69c:	26b50001 	addiu	s5,s5,1
     6a0:	56beffc7 	bnel	s5,s8,5c0 <func_8099DD74+0x11c>
     6a4:	92d3054c 	lbu	s3,1356(s6)
     6a8:	8fbf006c 	lw	ra,108(sp)
     6ac:	d7b40018 	ldc1	$f20,24(sp)
     6b0:	d7b60020 	ldc1	$f22,32(sp)
     6b4:	d7b80028 	ldc1	$f24,40(sp)
     6b8:	d7ba0030 	ldc1	$f26,48(sp)
     6bc:	d7bc0038 	ldc1	$f28,56(sp)
     6c0:	d7be0040 	ldc1	$f30,64(sp)
     6c4:	8fb00048 	lw	s0,72(sp)
     6c8:	8fb1004c 	lw	s1,76(sp)
     6cc:	8fb20050 	lw	s2,80(sp)
     6d0:	8fb30054 	lw	s3,84(sp)
     6d4:	8fb40058 	lw	s4,88(sp)
     6d8:	8fb5005c 	lw	s5,92(sp)
     6dc:	8fb60060 	lw	s6,96(sp)
     6e0:	8fb70064 	lw	s7,100(sp)
     6e4:	8fbe0068 	lw	s8,104(sp)
     6e8:	03e00008 	jr	ra
     6ec:	27bd0070 	addiu	sp,sp,112

000006f0 <func_8099DFC0>:
     6f0:	27bdff90 	addiu	sp,sp,-112
     6f4:	afbf005c 	sw	ra,92(sp)
     6f8:	afb60058 	sw	s6,88(sp)
     6fc:	afb50054 	sw	s5,84(sp)
     700:	afb40050 	sw	s4,80(sp)
     704:	afb3004c 	sw	s3,76(sp)
     708:	afb20048 	sw	s2,72(sp)
     70c:	afb10044 	sw	s1,68(sp)
     710:	afb00040 	sw	s0,64(sp)
     714:	f7bc0038 	sdc1	$f28,56(sp)
     718:	f7ba0030 	sdc1	$f26,48(sp)
     71c:	f7b80028 	sdc1	$f24,40(sp)
     720:	f7b60020 	sdc1	$f22,32(sp)
     724:	f7b40018 	sdc1	$f20,24(sp)
     728:	8c860118 	lw	a2,280(a0)
     72c:	00809825 	move	s3,a0
     730:	8ca31c44 	lw	v1,7236(a1)
     734:	10c0000a 	beqz	a2,760 <func_8099DFC0+0x70>
     738:	2482014c 	addiu	v0,a0,332
     73c:	8cce0130 	lw	t6,304(a2)
     740:	51c00008 	beqzl	t6,764 <func_8099DFC0+0x74>
     744:	9263054d 	lbu	v1,1357(s3)
     748:	8c6f067c 	lw	t7,1660(v1)
     74c:	24030040 	li	v1,64
     750:	00009025 	move	s2,zero
     754:	31f81000 	andi	t8,t7,0x1000
     758:	17000034 	bnez	t8,82c <func_8099DFC0+0x13c>
     75c:	3c013f80 	lui	at,0x3f80
     760:	9263054d 	lbu	v1,1357(s3)
     764:	02602025 	move	a0,s3
     768:	10600003 	beqz	v1,778 <func_8099DFC0+0x88>
     76c:	2479ffff 	addiu	t9,v1,-1
     770:	10000004 	b	784 <func_8099DFC0+0x94>
     774:	a279054d 	sb	t9,1357(s3)
     778:	0c000000 	jal	0 <func_8099D8D0>
     77c:	afa20060 	sw	v0,96(sp)
     780:	8fa20060 	lw	v0,96(sp)
     784:	3c013f80 	lui	at,0x3f80
     788:	4481b000 	mtc1	at,$f22
     78c:	3c010000 	lui	at,0x0
     790:	c4220000 	lwc1	$f2,0(at)
     794:	00009025 	move	s2,zero
     798:	24030040 	li	v1,64
     79c:	c4400000 	lwc1	$f0,0(v0)
     7a0:	26520004 	addiu	s2,s2,4
     7a4:	4616003c 	c.lt.s	$f0,$f22
     7a8:	00000000 	nop
     7ac:	45020004 	bc1fl	7c0 <func_8099DFC0+0xd0>
     7b0:	c4400004 	lwc1	$f0,4(v0)
     7b4:	46020100 	add.s	$f4,$f0,$f2
     7b8:	e4440000 	swc1	$f4,0(v0)
     7bc:	c4400004 	lwc1	$f0,4(v0)
     7c0:	24420004 	addiu	v0,v0,4
     7c4:	4616003c 	c.lt.s	$f0,$f22
     7c8:	00000000 	nop
     7cc:	45020004 	bc1fl	7e0 <func_8099DFC0+0xf0>
     7d0:	c4400004 	lwc1	$f0,4(v0)
     7d4:	46020180 	add.s	$f6,$f0,$f2
     7d8:	e4460000 	swc1	$f6,0(v0)
     7dc:	c4400004 	lwc1	$f0,4(v0)
     7e0:	24420004 	addiu	v0,v0,4
     7e4:	4616003c 	c.lt.s	$f0,$f22
     7e8:	00000000 	nop
     7ec:	45020004 	bc1fl	800 <func_8099DFC0+0x110>
     7f0:	c4400004 	lwc1	$f0,4(v0)
     7f4:	46020200 	add.s	$f8,$f0,$f2
     7f8:	e4480000 	swc1	$f8,0(v0)
     7fc:	c4400004 	lwc1	$f0,4(v0)
     800:	24420004 	addiu	v0,v0,4
     804:	4616003c 	c.lt.s	$f0,$f22
     808:	00000000 	nop
     80c:	45000003 	bc1f	81c <func_8099DFC0+0x12c>
     810:	00000000 	nop
     814:	46020280 	add.s	$f10,$f0,$f2
     818:	e44a0000 	swc1	$f10,0(v0)
     81c:	1643ffdf 	bne	s2,v1,79c <func_8099DFC0+0xac>
     820:	24420004 	addiu	v0,v0,4
     824:	100000e8 	b	bc8 <func_8099DFC0+0x4d8>
     828:	8fbf005c 	lw	ra,92(sp)
     82c:	4481b000 	mtc1	at,$f22
     830:	3c010000 	lui	at,0x0
     834:	c4220000 	lwc1	$f2,0(at)
     838:	c4400000 	lwc1	$f0,0(v0)
     83c:	26520004 	addiu	s2,s2,4
     840:	4616003c 	c.lt.s	$f0,$f22
     844:	00000000 	nop
     848:	45020004 	bc1fl	85c <func_8099DFC0+0x16c>
     84c:	c4400004 	lwc1	$f0,4(v0)
     850:	46020400 	add.s	$f16,$f0,$f2
     854:	e4500000 	swc1	$f16,0(v0)
     858:	c4400004 	lwc1	$f0,4(v0)
     85c:	24420004 	addiu	v0,v0,4
     860:	4616003c 	c.lt.s	$f0,$f22
     864:	00000000 	nop
     868:	45020004 	bc1fl	87c <func_8099DFC0+0x18c>
     86c:	c4400004 	lwc1	$f0,4(v0)
     870:	46020480 	add.s	$f18,$f0,$f2
     874:	e4520000 	swc1	$f18,0(v0)
     878:	c4400004 	lwc1	$f0,4(v0)
     87c:	24420004 	addiu	v0,v0,4
     880:	4616003c 	c.lt.s	$f0,$f22
     884:	00000000 	nop
     888:	45020004 	bc1fl	89c <func_8099DFC0+0x1ac>
     88c:	c4400004 	lwc1	$f0,4(v0)
     890:	46020100 	add.s	$f4,$f0,$f2
     894:	e4440000 	swc1	$f4,0(v0)
     898:	c4400004 	lwc1	$f0,4(v0)
     89c:	24420004 	addiu	v0,v0,4
     8a0:	4616003c 	c.lt.s	$f0,$f22
     8a4:	00000000 	nop
     8a8:	45000003 	bc1f	8b8 <func_8099DFC0+0x1c8>
     8ac:	00000000 	nop
     8b0:	46020180 	add.s	$f6,$f0,$f2
     8b4:	e4460000 	swc1	$f6,0(v0)
     8b8:	1643ffdf 	bne	s2,v1,838 <func_8099DFC0+0x148>
     8bc:	24420004 	addiu	v0,v0,4
     8c0:	8cc90024 	lw	t1,36(a2)
     8c4:	3c01457a 	lui	at,0x457a
     8c8:	4481e000 	mtc1	at,$f28
     8cc:	ae690024 	sw	t1,36(s3)
     8d0:	8cc80028 	lw	t0,40(a2)
     8d4:	3c010000 	lui	at,0x0
     8d8:	0000b025 	move	s6,zero
     8dc:	ae680028 	sw	t0,40(s3)
     8e0:	8cc9002c 	lw	t1,44(a2)
     8e4:	2415000c 	li	s5,12
     8e8:	ae69002c 	sw	t1,44(s3)
     8ec:	c43a0000 	lwc1	$f26,0(at)
     8f0:	3c0144fa 	lui	at,0x44fa
     8f4:	4481c000 	mtc1	at,$f24
     8f8:	00000000 	nop
     8fc:	9272054c 	lbu	s2,1356(s3)
     900:	3c014780 	lui	at,0x4780
     904:	3252003f 	andi	s2,s2,0x3f
     908:	00125080 	sll	t2,s2,0x2
     90c:	026aa021 	addu	s4,s3,t2
     910:	c688014c 	lwc1	$f8,332(s4)
     914:	4608b03e 	c.le.s	$f22,$f8
     918:	00000000 	nop
     91c:	450200a6 	bc1fl	bb8 <func_8099DFC0+0x4c8>
     920:	26d60001 	addiu	s6,s6,1
     924:	44816000 	mtc1	at,$f12
     928:	0c000000 	jal	0 <func_8099D8D0>
     92c:	00000000 	nop
     930:	4600028d 	trunc.w.s	$f10,$f0
     934:	8662001c 	lh	v0,28(s3)
     938:	24010002 	li	at,2
     93c:	44115000 	mfc1	s1,$f10
     940:	00000000 	nop
     944:	00118c00 	sll	s1,s1,0x10
     948:	10410008 	beq	v0,at,96c <func_8099DFC0+0x27c>
     94c:	00118c03 	sra	s1,s1,0x10
     950:	24010003 	li	at,3
     954:	10410033 	beq	v0,at,a24 <func_8099DFC0+0x334>
     958:	24010004 	li	at,4
     95c:	1041005f 	beq	v0,at,adc <func_8099DFC0+0x3ec>
     960:	00000000 	nop
     964:	1000008e 	b	ba0 <func_8099DFC0+0x4b0>
     968:	44804000 	mtc1	zero,$f8
     96c:	0c000000 	jal	0 <func_8099D8D0>
     970:	00000000 	nop
     974:	3c010000 	lui	at,0x0
     978:	c4300000 	lwc1	$f16,0(at)
     97c:	02550019 	multu	s2,s5
     980:	3c01442f 	lui	at,0x442f
     984:	46100482 	mul.s	$f18,$f0,$f16
     988:	44812000 	mtc1	at,$f4
     98c:	00112400 	sll	a0,s1,0x10
     990:	46049080 	add.s	$f2,$f18,$f4
     994:	00006012 	mflo	t4
     998:	026c8021 	addu	s0,s3,t4
     99c:	4602d03c 	c.lt.s	$f26,$f2
     9a0:	e602024c 	swc1	$f2,588(s0)
     9a4:	45000015 	bc1f	9fc <func_8099DFC0+0x30c>
     9a8:	00000000 	nop
     9ac:	0c000000 	jal	0 <func_8099D8D0>
     9b0:	00000000 	nop
     9b4:	00112400 	sll	a0,s1,0x10
     9b8:	00042403 	sra	a0,a0,0x10
     9bc:	0c000000 	jal	0 <func_8099D8D0>
     9c0:	46000506 	mov.s	$f20,$f0
     9c4:	4614d182 	mul.s	$f6,$f26,$f20
     9c8:	00000000 	nop
     9cc:	46060202 	mul.s	$f8,$f0,$f6
     9d0:	0c000000 	jal	0 <func_8099D8D0>
     9d4:	e6080250 	swc1	$f8,592(s0)
     9d8:	00112400 	sll	a0,s1,0x10
     9dc:	00042403 	sra	a0,a0,0x10
     9e0:	0c000000 	jal	0 <func_8099D8D0>
     9e4:	46000506 	mov.s	$f20,$f0
     9e8:	4614d282 	mul.s	$f10,$f26,$f20
     9ec:	00000000 	nop
     9f0:	460a0402 	mul.s	$f16,$f0,$f10
     9f4:	10000069 	b	b9c <func_8099DFC0+0x4ac>
     9f8:	e6100254 	swc1	$f16,596(s0)
     9fc:	0c000000 	jal	0 <func_8099D8D0>
     a00:	00042403 	sra	a0,a0,0x10
     a04:	461a0482 	mul.s	$f18,$f0,$f26
     a08:	00112400 	sll	a0,s1,0x10
     a0c:	00042403 	sra	a0,a0,0x10
     a10:	0c000000 	jal	0 <func_8099D8D0>
     a14:	e6120250 	swc1	$f18,592(s0)
     a18:	461a0102 	mul.s	$f4,$f0,$f26
     a1c:	1000005f 	b	b9c <func_8099DFC0+0x4ac>
     a20:	e6040254 	swc1	$f4,596(s0)
     a24:	0c000000 	jal	0 <func_8099D8D0>
     a28:	00000000 	nop
     a2c:	3c010000 	lui	at,0x0
     a30:	c4260000 	lwc1	$f6,0(at)
     a34:	02550019 	multu	s2,s5
     a38:	3c01442f 	lui	at,0x442f
     a3c:	46060202 	mul.s	$f8,$f0,$f6
     a40:	44815000 	mtc1	at,$f10
     a44:	00112400 	sll	a0,s1,0x10
     a48:	460a4080 	add.s	$f2,$f8,$f10
     a4c:	00006812 	mflo	t5
     a50:	026d8021 	addu	s0,s3,t5
     a54:	4602c03c 	c.lt.s	$f24,$f2
     a58:	e602024c 	swc1	$f2,588(s0)
     a5c:	45000015 	bc1f	ab4 <func_8099DFC0+0x3c4>
     a60:	00000000 	nop
     a64:	0c000000 	jal	0 <func_8099D8D0>
     a68:	00000000 	nop
     a6c:	00112400 	sll	a0,s1,0x10
     a70:	00042403 	sra	a0,a0,0x10
     a74:	0c000000 	jal	0 <func_8099D8D0>
     a78:	46000506 	mov.s	$f20,$f0
     a7c:	4614c402 	mul.s	$f16,$f24,$f20
     a80:	00000000 	nop
     a84:	46100482 	mul.s	$f18,$f0,$f16
     a88:	0c000000 	jal	0 <func_8099D8D0>
     a8c:	e6120250 	swc1	$f18,592(s0)
     a90:	00112400 	sll	a0,s1,0x10
     a94:	00042403 	sra	a0,a0,0x10
     a98:	0c000000 	jal	0 <func_8099D8D0>
     a9c:	46000506 	mov.s	$f20,$f0
     aa0:	4614c102 	mul.s	$f4,$f24,$f20
     aa4:	00000000 	nop
     aa8:	46040182 	mul.s	$f6,$f0,$f4
     aac:	1000003b 	b	b9c <func_8099DFC0+0x4ac>
     ab0:	e6060254 	swc1	$f6,596(s0)
     ab4:	0c000000 	jal	0 <func_8099D8D0>
     ab8:	00042403 	sra	a0,a0,0x10
     abc:	46180202 	mul.s	$f8,$f0,$f24
     ac0:	00112400 	sll	a0,s1,0x10
     ac4:	00042403 	sra	a0,a0,0x10
     ac8:	0c000000 	jal	0 <func_8099D8D0>
     acc:	e6080250 	swc1	$f8,592(s0)
     ad0:	46180282 	mul.s	$f10,$f0,$f24
     ad4:	10000031 	b	b9c <func_8099DFC0+0x4ac>
     ad8:	e60a0254 	swc1	$f10,596(s0)
     adc:	0c000000 	jal	0 <func_8099D8D0>
     ae0:	00000000 	nop
     ae4:	3c010000 	lui	at,0x0
     ae8:	c4300000 	lwc1	$f16,0(at)
     aec:	02550019 	multu	s2,s5
     af0:	3c010000 	lui	at,0x0
     af4:	46100482 	mul.s	$f18,$f0,$f16
     af8:	c4240000 	lwc1	$f4,0(at)
     afc:	3c010000 	lui	at,0x0
     b00:	00112400 	sll	a0,s1,0x10
     b04:	46049080 	add.s	$f2,$f18,$f4
     b08:	00007012 	mflo	t6
     b0c:	026e8021 	addu	s0,s3,t6
     b10:	e602024c 	swc1	$f2,588(s0)
     b14:	c4260000 	lwc1	$f6,0(at)
     b18:	4602303c 	c.lt.s	$f6,$f2
     b1c:	00000000 	nop
     b20:	45000015 	bc1f	b78 <func_8099DFC0+0x488>
     b24:	00000000 	nop
     b28:	0c000000 	jal	0 <func_8099D8D0>
     b2c:	00000000 	nop
     b30:	00112400 	sll	a0,s1,0x10
     b34:	00042403 	sra	a0,a0,0x10
     b38:	0c000000 	jal	0 <func_8099D8D0>
     b3c:	46000506 	mov.s	$f20,$f0
     b40:	4614e202 	mul.s	$f8,$f28,$f20
     b44:	00000000 	nop
     b48:	46080282 	mul.s	$f10,$f0,$f8
     b4c:	0c000000 	jal	0 <func_8099D8D0>
     b50:	e60a0250 	swc1	$f10,592(s0)
     b54:	00112400 	sll	a0,s1,0x10
     b58:	00042403 	sra	a0,a0,0x10
     b5c:	0c000000 	jal	0 <func_8099D8D0>
     b60:	46000506 	mov.s	$f20,$f0
     b64:	4614e402 	mul.s	$f16,$f28,$f20
     b68:	00000000 	nop
     b6c:	46100482 	mul.s	$f18,$f0,$f16
     b70:	1000000a 	b	b9c <func_8099DFC0+0x4ac>
     b74:	e6120254 	swc1	$f18,596(s0)
     b78:	0c000000 	jal	0 <func_8099D8D0>
     b7c:	00042403 	sra	a0,a0,0x10
     b80:	461c0102 	mul.s	$f4,$f0,$f28
     b84:	00112400 	sll	a0,s1,0x10
     b88:	00042403 	sra	a0,a0,0x10
     b8c:	0c000000 	jal	0 <func_8099D8D0>
     b90:	e6040250 	swc1	$f4,592(s0)
     b94:	461c0182 	mul.s	$f6,$f0,$f28
     b98:	e6060254 	swc1	$f6,596(s0)
     b9c:	44804000 	mtc1	zero,$f8
     ba0:	00000000 	nop
     ba4:	e688014c 	swc1	$f8,332(s4)
     ba8:	926f054c 	lbu	t7,1356(s3)
     bac:	25f80001 	addiu	t8,t7,1
     bb0:	a278054c 	sb	t8,1356(s3)
     bb4:	26d60001 	addiu	s6,s6,1
     bb8:	24010003 	li	at,3
     bbc:	56c1ff50 	bnel	s6,at,900 <func_8099DFC0+0x210>
     bc0:	9272054c 	lbu	s2,1356(s3)
     bc4:	8fbf005c 	lw	ra,92(sp)
     bc8:	d7b40018 	ldc1	$f20,24(sp)
     bcc:	d7b60020 	ldc1	$f22,32(sp)
     bd0:	d7b80028 	ldc1	$f24,40(sp)
     bd4:	d7ba0030 	ldc1	$f26,48(sp)
     bd8:	d7bc0038 	ldc1	$f28,56(sp)
     bdc:	8fb00040 	lw	s0,64(sp)
     be0:	8fb10044 	lw	s1,68(sp)
     be4:	8fb20048 	lw	s2,72(sp)
     be8:	8fb3004c 	lw	s3,76(sp)
     bec:	8fb40050 	lw	s4,80(sp)
     bf0:	8fb50054 	lw	s5,84(sp)
     bf4:	8fb60058 	lw	s6,88(sp)
     bf8:	03e00008 	jr	ra
     bfc:	27bd0070 	addiu	sp,sp,112

00000c00 <EffDust_Update>:
     c00:	27bdffe8 	addiu	sp,sp,-24
     c04:	afbf0014 	sw	ra,20(sp)
     c08:	8c990560 	lw	t9,1376(a0)
     c0c:	0320f809 	jalr	t9
     c10:	00000000 	nop
     c14:	8fbf0014 	lw	ra,20(sp)
     c18:	27bd0018 	addiu	sp,sp,24
     c1c:	03e00008 	jr	ra
     c20:	00000000 	nop

00000c24 <func_8099E4F4>:
     c24:	27bdff50 	addiu	sp,sp,-176
     c28:	afbf004c 	sw	ra,76(sp)
     c2c:	afbe0048 	sw	s8,72(sp)
     c30:	afb70044 	sw	s7,68(sp)
     c34:	afb60040 	sw	s6,64(sp)
     c38:	afb5003c 	sw	s5,60(sp)
     c3c:	afb40038 	sw	s4,56(sp)
     c40:	afb30034 	sw	s3,52(sp)
     c44:	afb20030 	sw	s2,48(sp)
     c48:	afb1002c 	sw	s1,44(sp)
     c4c:	afb00028 	sw	s0,40(sp)
     c50:	f7b60020 	sdc1	$f22,32(sp)
     c54:	f7b40018 	sdc1	$f20,24(sp)
     c58:	8cb30000 	lw	s3,0(a1)
     c5c:	00808825 	move	s1,a0
     c60:	00a0f025 	move	s8,a1
     c64:	3c060000 	lui	a2,0x0
     c68:	24c60000 	addiu	a2,a2,0
     c6c:	27a40080 	addiu	a0,sp,128
     c70:	240701a9 	li	a3,425
     c74:	0c000000 	jal	0 <func_8099D8D0>
     c78:	02602825 	move	a1,s3
     c7c:	0c000000 	jal	0 <func_8099D8D0>
     c80:	02602025 	move	a0,s3
     c84:	8e6302d0 	lw	v1,720(s3)
     c88:	3c0fe700 	lui	t7,0xe700
     c8c:	3c088080 	lui	t0,0x8080
     c90:	246e0008 	addiu	t6,v1,8
     c94:	ae6e02d0 	sw	t6,720(s3)
     c98:	ac600004 	sw	zero,4(v1)
     c9c:	ac6f0000 	sw	t7,0(v1)
     ca0:	8e6302d0 	lw	v1,720(s3)
     ca4:	350880ff 	ori	t0,t0,0x80ff
     ca8:	3c19fa00 	lui	t9,0xfa00
     cac:	24780008 	addiu	t8,v1,8
     cb0:	ae7802d0 	sw	t8,720(s3)
     cb4:	ac680004 	sw	t0,4(v1)
     cb8:	ac790000 	sw	t9,0(v1)
     cbc:	8e6302d0 	lw	v1,720(s3)
     cc0:	3c0b8080 	lui	t3,0x8080
     cc4:	356b8000 	ori	t3,t3,0x8000
     cc8:	24690008 	addiu	t1,v1,8
     ccc:	ae6902d0 	sw	t1,720(s3)
     cd0:	3c0afb00 	lui	t2,0xfb00
     cd4:	ac6a0000 	sw	t2,0(v1)
     cd8:	ac6b0004 	sw	t3,4(v1)
     cdc:	8e6302d0 	lw	v1,720(s3)
     ce0:	3c0e0000 	lui	t6,0x0
     ce4:	3c0ddb06 	lui	t5,0xdb06
     ce8:	246c0008 	addiu	t4,v1,8
     cec:	ae6c02d0 	sw	t4,720(s3)
     cf0:	3c013f80 	lui	at,0x3f80
     cf4:	35ad0020 	ori	t5,t5,0x20
     cf8:	25ce0000 	addiu	t6,t6,0
     cfc:	4481b000 	mtc1	at,$f22
     d00:	2632024c 	addiu	s2,s1,588
     d04:	2637014c 	addiu	s7,s1,332
     d08:	0000a025 	move	s4,zero
     d0c:	ac6e0004 	sw	t6,4(v1)
     d10:	ac6d0000 	sw	t5,0(v1)
     d14:	c6f40000 	lwc1	$f20,0(s7)
     d18:	4616a03c 	c.lt.s	$f20,$f22
     d1c:	00000000 	nop
     d20:	4502004c 	bc1fl	e54 <func_8099E4F4+0x230>
     d24:	26940001 	addiu	s4,s4,1
     d28:	4614a102 	mul.s	$f4,$f20,$f20
     d2c:	c6220550 	lwc1	$f2,1360(s1)
     d30:	c6300554 	lwc1	$f16,1364(s1)
     d34:	c6320558 	lwc1	$f18,1368(s1)
     d38:	3c020403 	lui	v0,0x403
     d3c:	4602b201 	sub.s	$f8,$f22,$f2
     d40:	24427880 	addiu	v0,v0,30848
     d44:	3c0100ff 	lui	at,0xff
     d48:	4604b001 	sub.s	$f0,$f22,$f4
     d4c:	c6440000 	lwc1	$f4,0(s2)
     d50:	3421ffff 	ori	at,at,0xffff
     d54:	0041b024 	and	s6,v0,at
     d58:	46001182 	mul.s	$f6,$f2,$f0
     d5c:	00027900 	sll	t7,v0,0x4
     d60:	000fc702 	srl	t8,t7,0x1c
     d64:	3c010001 	lui	at,0x1
     d68:	3c080000 	lui	t0,0x0
     d6c:	25080000 	addiu	t0,t0,0
     d70:	34211da0 	ori	at,at,0x1da0
     d74:	46083280 	add.s	$f10,$f6,$f8
     d78:	c6280024 	lwc1	$f8,36(s1)
     d7c:	0018c880 	sll	t9,t8,0x2
     d80:	0328a821 	addu	s5,t9,t0
     d84:	460a2182 	mul.s	$f6,$f4,$f10
     d88:	4610b281 	sub.s	$f10,$f22,$f16
     d8c:	03c18021 	addu	s0,s8,at
     d90:	46008102 	mul.s	$f4,$f16,$f0
     d94:	00003825 	move	a3,zero
     d98:	46064300 	add.s	$f12,$f8,$f6
     d9c:	c6460004 	lwc1	$f6,4(s2)
     da0:	460a2200 	add.s	$f8,$f4,$f10
     da4:	c62a0028 	lwc1	$f10,40(s1)
     da8:	46083102 	mul.s	$f4,$f6,$f8
     dac:	4612b201 	sub.s	$f8,$f22,$f18
     db0:	46009182 	mul.s	$f6,$f18,$f0
     db4:	46045380 	add.s	$f14,$f10,$f4
     db8:	c6440008 	lwc1	$f4,8(s2)
     dbc:	46083280 	add.s	$f10,$f6,$f8
     dc0:	c628002c 	lwc1	$f8,44(s1)
     dc4:	460a2182 	mul.s	$f6,$f4,$f10
     dc8:	46064100 	add.s	$f4,$f8,$f6
     dcc:	44062000 	mfc1	a2,$f4
     dd0:	0c000000 	jal	0 <func_8099D8D0>
     dd4:	00000000 	nop
     dd8:	c62c055c 	lwc1	$f12,1372(s1)
     ddc:	24070001 	li	a3,1
     de0:	44066000 	mfc1	a2,$f12
     de4:	0c000000 	jal	0 <func_8099D8D0>
     de8:	46006386 	mov.s	$f14,$f12
     dec:	02002025 	move	a0,s0
     df0:	0c000000 	jal	0 <func_8099D8D0>
     df4:	24050001 	li	a1,1
     df8:	8e7002d0 	lw	s0,720(s3)
     dfc:	3c0ada38 	lui	t2,0xda38
     e00:	354a0003 	ori	t2,t2,0x3
     e04:	26090008 	addiu	t1,s0,8
     e08:	ae6902d0 	sw	t1,720(s3)
     e0c:	3c050000 	lui	a1,0x0
     e10:	24a50000 	addiu	a1,a1,0
     e14:	02602025 	move	a0,s3
     e18:	240601c1 	li	a2,449
     e1c:	0c000000 	jal	0 <func_8099D8D0>
     e20:	ae0a0000 	sw	t2,0(s0)
     e24:	ae020004 	sw	v0,4(s0)
     e28:	8e6302d0 	lw	v1,720(s3)
     e2c:	3c0cde00 	lui	t4,0xde00
     e30:	3c018000 	lui	at,0x8000
     e34:	246b0008 	addiu	t3,v1,8
     e38:	ae6b02d0 	sw	t3,720(s3)
     e3c:	ac6c0000 	sw	t4,0(v1)
     e40:	8ead0000 	lw	t5,0(s5)
     e44:	01b67021 	addu	t6,t5,s6
     e48:	01c17821 	addu	t7,t6,at
     e4c:	ac6f0004 	sw	t7,4(v1)
     e50:	26940001 	addiu	s4,s4,1
     e54:	24010040 	li	at,64
     e58:	2652000c 	addiu	s2,s2,12
     e5c:	1681ffad 	bne	s4,at,d14 <func_8099E4F4+0xf0>
     e60:	26f70004 	addiu	s7,s7,4
     e64:	3c060000 	lui	a2,0x0
     e68:	24c60000 	addiu	a2,a2,0
     e6c:	27a40080 	addiu	a0,sp,128
     e70:	02602825 	move	a1,s3
     e74:	0c000000 	jal	0 <func_8099D8D0>
     e78:	240701ca 	li	a3,458
     e7c:	8fbf004c 	lw	ra,76(sp)
     e80:	d7b40018 	ldc1	$f20,24(sp)
     e84:	d7b60020 	ldc1	$f22,32(sp)
     e88:	8fb00028 	lw	s0,40(sp)
     e8c:	8fb1002c 	lw	s1,44(sp)
     e90:	8fb20030 	lw	s2,48(sp)
     e94:	8fb30034 	lw	s3,52(sp)
     e98:	8fb40038 	lw	s4,56(sp)
     e9c:	8fb5003c 	lw	s5,60(sp)
     ea0:	8fb60040 	lw	s6,64(sp)
     ea4:	8fb70044 	lw	s7,68(sp)
     ea8:	8fbe0048 	lw	s8,72(sp)
     eac:	03e00008 	jr	ra
     eb0:	27bd00b0 	addiu	sp,sp,176

00000eb4 <func_8099E784>:
     eb4:	27bdff30 	addiu	sp,sp,-208
     eb8:	afbf0064 	sw	ra,100(sp)
     ebc:	afbe0060 	sw	s8,96(sp)
     ec0:	afb7005c 	sw	s7,92(sp)
     ec4:	afb60058 	sw	s6,88(sp)
     ec8:	afb50054 	sw	s5,84(sp)
     ecc:	afb40050 	sw	s4,80(sp)
     ed0:	afb3004c 	sw	s3,76(sp)
     ed4:	afb20048 	sw	s2,72(sp)
     ed8:	afb10044 	sw	s1,68(sp)
     edc:	afb00040 	sw	s0,64(sp)
     ee0:	f7bc0038 	sdc1	$f28,56(sp)
     ee4:	f7ba0030 	sdc1	$f26,48(sp)
     ee8:	f7b80028 	sdc1	$f24,40(sp)
     eec:	f7b60020 	sdc1	$f22,32(sp)
     ef0:	f7b40018 	sdc1	$f20,24(sp)
     ef4:	8cb20000 	lw	s2,0(a1)
     ef8:	8cae1c44 	lw	t6,7236(a1)
     efc:	0080b825 	move	s7,a0
     f00:	00a0f025 	move	s8,a1
     f04:	3c060000 	lui	a2,0x0
     f08:	24c60000 	addiu	a2,a2,0
     f0c:	27a4009c 	addiu	a0,sp,156
     f10:	240701d8 	li	a3,472
     f14:	02402825 	move	a1,s2
     f18:	0c000000 	jal	0 <func_8099D8D0>
     f1c:	afae00b0 	sw	t6,176(sp)
     f20:	0c000000 	jal	0 <func_8099D8D0>
     f24:	02402025 	move	a0,s2
     f28:	8e4202d0 	lw	v0,720(s2)
     f2c:	3c18e700 	lui	t8,0xe700
     f30:	3c08fa00 	lui	t0,0xfa00
     f34:	244f0008 	addiu	t7,v0,8
     f38:	ae4f02d0 	sw	t7,720(s2)
     f3c:	ac400004 	sw	zero,4(v0)
     f40:	ac580000 	sw	t8,0(v0)
     f44:	8e4202d0 	lw	v0,720(s2)
     f48:	2409ffff 	li	t1,-1
     f4c:	3c010000 	lui	at,0x0
     f50:	24590008 	addiu	t9,v0,8
     f54:	ae5902d0 	sw	t9,720(s2)
     f58:	ac490004 	sw	t1,4(v0)
     f5c:	ac480000 	sw	t0,0(v0)
     f60:	8faa00b0 	lw	t2,176(sp)
     f64:	c4260000 	lwc1	$f6,0(at)
     f68:	3c08db06 	lui	t0,0xdb06
     f6c:	c5440858 	lwc1	$f4,2136(t2)
     f70:	3c090000 	lui	t1,0x0
     f74:	26f3024c 	addiu	s3,s7,588
     f78:	4604303e 	c.le.s	$f6,$f4
     f7c:	26f1014c 	addiu	s1,s7,332
     f80:	25290000 	addiu	t1,t1,0
     f84:	35080020 	ori	t0,t0,0x20
     f88:	45000009 	bc1f	fb0 <func_8099E784+0xfc>
     f8c:	0000a025 	move	s4,zero
     f90:	8e4202d0 	lw	v0,720(s2)
     f94:	3c0cfb00 	lui	t4,0xfb00
     f98:	3c0dff00 	lui	t5,0xff00
     f9c:	244b0008 	addiu	t3,v0,8
     fa0:	ae4b02d0 	sw	t3,720(s2)
     fa4:	ac4d0004 	sw	t5,4(v0)
     fa8:	10000008 	b	fcc <func_8099E784+0x118>
     fac:	ac4c0000 	sw	t4,0(v0)
     fb0:	8e4202d0 	lw	v0,720(s2)
     fb4:	3c0ffb00 	lui	t7,0xfb00
     fb8:	3418ff00 	li	t8,0xff00
     fbc:	244e0008 	addiu	t6,v0,8
     fc0:	ae4e02d0 	sw	t6,720(s2)
     fc4:	ac580004 	sw	t8,4(v0)
     fc8:	ac4f0000 	sw	t7,0(v0)
     fcc:	3c01c1a0 	lui	at,0xc1a0
     fd0:	4481e000 	mtc1	at,$f28
     fd4:	8e4202d0 	lw	v0,720(s2)
     fd8:	3c0143a0 	lui	at,0x43a0
     fdc:	4481d000 	mtc1	at,$f26
     fe0:	3c01437f 	lui	at,0x437f
     fe4:	4481c000 	mtc1	at,$f24
     fe8:	24590008 	addiu	t9,v0,8
     fec:	ae5902d0 	sw	t9,720(s2)
     ff0:	3c013f80 	lui	at,0x3f80
     ff4:	4481b000 	mtc1	at,$f22
     ff8:	ac490004 	sw	t1,4(v0)
     ffc:	ac480000 	sw	t0,0(v0)
    1000:	c6280000 	lwc1	$f8,0(s1)
    1004:	4616403c 	c.lt.s	$f8,$f22
    1008:	00000000 	nop
    100c:	45020074 	bc1fl	11e0 <func_8099E784+0x32c>
    1010:	26940001 	addiu	s4,s4,1
    1014:	8e4302d0 	lw	v1,720(s2)
    1018:	8fa400b0 	lw	a0,176(sp)
    101c:	3c0ffa00 	lui	t7,0xfa00
    1020:	246e0008 	addiu	t6,v1,8
    1024:	ae4e02d0 	sw	t6,720(s2)
    1028:	ac6f0000 	sw	t7,0(v1)
    102c:	c62a0000 	lwc1	$f10,0(s1)
    1030:	24190001 	li	t9,1
    1034:	3c020403 	lui	v0,0x403
    1038:	46185402 	mul.s	$f16,$f10,$f24
    103c:	24427880 	addiu	v0,v0,30848
    1040:	3c0100ff 	lui	at,0xff
    1044:	3421ffff 	ori	at,at,0xffff
    1048:	0041b024 	and	s6,v0,at
    104c:	00025100 	sll	t2,v0,0x4
    1050:	000a5f02 	srl	t3,t2,0x1c
    1054:	4458f800 	cfc1	t8,$31
    1058:	44d9f800 	ctc1	t9,$31
    105c:	3c010001 	lui	at,0x1
    1060:	3c0d0000 	lui	t5,0x0
    1064:	460084a4 	cvt.w.s	$f18,$f16
    1068:	25ad0000 	addiu	t5,t5,0
    106c:	34211da0 	ori	at,at,0x1da0
    1070:	000b6080 	sll	t4,t3,0x2
    1074:	4459f800 	cfc1	t9,$31
    1078:	018da821 	addu	s5,t4,t5
    107c:	03c18021 	addu	s0,s8,at
    1080:	33390078 	andi	t9,t9,0x78
    1084:	13200013 	beqz	t9,10d4 <func_8099E784+0x220>
    1088:	248409e0 	addiu	a0,a0,2528
    108c:	3c014f00 	lui	at,0x4f00
    1090:	44819000 	mtc1	at,$f18
    1094:	24190001 	li	t9,1
    1098:	46128481 	sub.s	$f18,$f16,$f18
    109c:	44d9f800 	ctc1	t9,$31
    10a0:	00000000 	nop
    10a4:	460094a4 	cvt.w.s	$f18,$f18
    10a8:	4459f800 	cfc1	t9,$31
    10ac:	00000000 	nop
    10b0:	33390078 	andi	t9,t9,0x78
    10b4:	17200005 	bnez	t9,10cc <func_8099E784+0x218>
    10b8:	00000000 	nop
    10bc:	44199000 	mfc1	t9,$f18
    10c0:	3c018000 	lui	at,0x8000
    10c4:	10000007 	b	10e4 <func_8099E784+0x230>
    10c8:	0321c825 	or	t9,t9,at
    10cc:	10000005 	b	10e4 <func_8099E784+0x230>
    10d0:	2419ffff 	li	t9,-1
    10d4:	44199000 	mfc1	t9,$f18
    10d8:	00000000 	nop
    10dc:	0720fffb 	bltz	t9,10cc <func_8099E784+0x218>
    10e0:	00000000 	nop
    10e4:	332800ff 	andi	t0,t9,0xff
    10e8:	2401ff00 	li	at,-256
    10ec:	01014825 	or	t1,t0,at
    10f0:	ac690004 	sw	t1,4(v1)
    10f4:	44d8f800 	ctc1	t8,$31
    10f8:	c6200000 	lwc1	$f0,0(s1)
    10fc:	00002825 	move	a1,zero
    1100:	46000102 	mul.s	$f4,$f0,$f0
    1104:	0c000000 	jal	0 <func_8099D8D0>
    1108:	4604b501 	sub.s	$f20,$f22,$f4
    110c:	c6e20550 	lwc1	$f2,1360(s7)
    1110:	c6320000 	lwc1	$f18,0(s1)
    1114:	c6700000 	lwc1	$f16,0(s3)
    1118:	46141182 	mul.s	$f6,$f2,$f20
    111c:	4602b201 	sub.s	$f8,$f22,$f2
    1120:	c6640004 	lwc1	$f4,4(s3)
    1124:	24070001 	li	a3,1
    1128:	4612b001 	sub.s	$f0,$f22,$f18
    112c:	46083280 	add.s	$f10,$f6,$f8
    1130:	c6680008 	lwc1	$f8,8(s3)
    1134:	460a8302 	mul.s	$f12,$f16,$f10
    1138:	00000000 	nop
    113c:	46040182 	mul.s	$f6,$f0,$f4
    1140:	00000000 	nop
    1144:	46080402 	mul.s	$f16,$f0,$f8
    1148:	461a3380 	add.s	$f14,$f6,$f26
    114c:	461c8280 	add.s	$f10,$f16,$f28
    1150:	44065000 	mfc1	a2,$f10
    1154:	0c000000 	jal	0 <func_8099D8D0>
    1158:	00000000 	nop
    115c:	c6320000 	lwc1	$f18,0(s1)
    1160:	c6e4055c 	lwc1	$f4,1372(s7)
    1164:	24070001 	li	a3,1
    1168:	46049302 	mul.s	$f12,$f18,$f4
    116c:	44066000 	mfc1	a2,$f12
    1170:	0c000000 	jal	0 <func_8099D8D0>
    1174:	46006386 	mov.s	$f14,$f12
    1178:	0c000000 	jal	0 <func_8099D8D0>
    117c:	02002025 	move	a0,s0
    1180:	8e4202d0 	lw	v0,720(s2)
    1184:	3c0bda38 	lui	t3,0xda38
    1188:	356b0003 	ori	t3,t3,0x3
    118c:	244a0008 	addiu	t2,v0,8
    1190:	ae4a02d0 	sw	t2,720(s2)
    1194:	3c050000 	lui	a1,0x0
    1198:	24a50000 	addiu	a1,a1,0
    119c:	02402025 	move	a0,s2
    11a0:	240601fa 	li	a2,506
    11a4:	ac4b0000 	sw	t3,0(v0)
    11a8:	0c000000 	jal	0 <func_8099D8D0>
    11ac:	00408025 	move	s0,v0
    11b0:	ae020004 	sw	v0,4(s0)
    11b4:	8e4202d0 	lw	v0,720(s2)
    11b8:	3c0dde00 	lui	t5,0xde00
    11bc:	3c018000 	lui	at,0x8000
    11c0:	244c0008 	addiu	t4,v0,8
    11c4:	ae4c02d0 	sw	t4,720(s2)
    11c8:	ac4d0000 	sw	t5,0(v0)
    11cc:	8eae0000 	lw	t6,0(s5)
    11d0:	01d67821 	addu	t7,t6,s6
    11d4:	01e1c021 	addu	t8,t7,at
    11d8:	ac580004 	sw	t8,4(v0)
    11dc:	26940001 	addiu	s4,s4,1
    11e0:	24010040 	li	at,64
    11e4:	2673000c 	addiu	s3,s3,12
    11e8:	1681ff85 	bne	s4,at,1000 <func_8099E784+0x14c>
    11ec:	26310004 	addiu	s1,s1,4
    11f0:	3c060000 	lui	a2,0x0
    11f4:	24c60000 	addiu	a2,a2,0
    11f8:	27a4009c 	addiu	a0,sp,156
    11fc:	02402825 	move	a1,s2
    1200:	0c000000 	jal	0 <func_8099D8D0>
    1204:	24070203 	li	a3,515
    1208:	8fbf0064 	lw	ra,100(sp)
    120c:	d7b40018 	ldc1	$f20,24(sp)
    1210:	d7b60020 	ldc1	$f22,32(sp)
    1214:	d7b80028 	ldc1	$f24,40(sp)
    1218:	d7ba0030 	ldc1	$f26,48(sp)
    121c:	d7bc0038 	ldc1	$f28,56(sp)
    1220:	8fb00040 	lw	s0,64(sp)
    1224:	8fb10044 	lw	s1,68(sp)
    1228:	8fb20048 	lw	s2,72(sp)
    122c:	8fb3004c 	lw	s3,76(sp)
    1230:	8fb40050 	lw	s4,80(sp)
    1234:	8fb50054 	lw	s5,84(sp)
    1238:	8fb60058 	lw	s6,88(sp)
    123c:	8fb7005c 	lw	s7,92(sp)
    1240:	8fbe0060 	lw	s8,96(sp)
    1244:	03e00008 	jr	ra
    1248:	27bd00d0 	addiu	sp,sp,208

0000124c <EffDust_Draw>:
    124c:	27bdffe8 	addiu	sp,sp,-24
    1250:	afbf0014 	sw	ra,20(sp)
    1254:	8c990564 	lw	t9,1380(a0)
    1258:	0320f809 	jalr	t9
    125c:	00000000 	nop
    1260:	8fbf0014 	lw	ra,20(sp)
    1264:	27bd0018 	addiu	sp,sp,24
    1268:	03e00008 	jr	ra
    126c:	00000000 	nop
