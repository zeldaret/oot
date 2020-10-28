
build/src/overlays/actors/ovl_Demo_Kankyo/z_demo_kankyo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80988E80>:
       0:	03e00008 	jr	ra
       4:	ac850600 	sw	a1,1536(a0)

00000008 <DemoKankyo_Init>:
       8:	27bdffb8 	addiu	sp,sp,-72
       c:	afb30040 	sw	s3,64(sp)
      10:	00809825 	move	s3,a0
      14:	afbf0044 	sw	ra,68(sp)
      18:	afb2003c 	sw	s2,60(sp)
      1c:	afb10038 	sw	s1,56(sp)
      20:	afb00034 	sw	s0,52(sp)
      24:	866e001c 	lh	t6,28(s3)
      28:	3c010001 	lui	at,0x1
      2c:	342117a4 	ori	at,at,0x17a4
      30:	00a08025 	move	s0,a1
      34:	00a12021 	addu	a0,a1,at
      38:	3c050000 	lui	a1,0x0
      3c:	000e7840 	sll	t7,t6,0x1
      40:	00af2821 	addu	a1,a1,t7
      44:	0c000000 	jal	0 <func_80988E80>
      48:	84a50000 	lh	a1,0(a1)
      4c:	3c040000 	lui	a0,0x0
      50:	00408825 	move	s1,v0
      54:	24840000 	addiu	a0,a0,0
      58:	0c000000 	jal	0 <func_80988E80>
      5c:	00402825 	move	a1,v0
      60:	06210008 	bgez	s1,84 <DemoKankyo_Init+0x7c>
      64:	24060209 	li	a2,521
      68:	3c040000 	lui	a0,0x0
      6c:	3c050000 	lui	a1,0x0
      70:	24a50000 	addiu	a1,a1,0
      74:	0c000000 	jal	0 <func_80988E80>
      78:	24840000 	addiu	a0,a0,0
      7c:	10000003 	b	8c <DemoKankyo_Init+0x84>
      80:	9678001c 	lhu	t8,28(s3)
      84:	a271014c 	sb	s1,332(s3)
      88:	9678001c 	lhu	t8,28(s3)
      8c:	2f010012 	sltiu	at,t8,18
      90:	102000cc 	beqz	at,3c4 <L80989244>
      94:	0018c080 	sll	t8,t8,0x2
      98:	3c010000 	lui	at,0x0
      9c:	00380821 	addu	at,at,t8
      a0:	8c380000 	lw	t8,0(at)
      a4:	03000008 	jr	t8
      a8:	00000000 	nop

000000ac <L80988F2C>:
      ac:	860200a4 	lh	v0,164(s0)
      b0:	24010043 	li	at,67
      b4:	2409000e 	li	t1,14
      b8:	10410013 	beq	v0,at,108 <L80988F2C+0x5c>
      bc:	240a0008 	li	t2,8
      c0:	24010047 	li	at,71
      c4:	10410006 	beq	v0,at,e0 <L80988F2C+0x34>
      c8:	2419000a 	li	t9,10
      cc:	24010051 	li	at,81
      d0:	10410013 	beq	v0,at,120 <L80988F2C+0x74>
      d4:	240b0001 	li	t3,1
      d8:	10000018 	b	13c <L80988F2C+0x90>
      dc:	00000000 	nop
      e0:	3c010001 	lui	at,0x1
      e4:	00300821 	addu	at,at,s0
      e8:	ac201cc8 	sw	zero,7368(at)
      ec:	3c010000 	lui	at,0x0
      f0:	a4390000 	sh	t9,0(at)
      f4:	3c010000 	lui	at,0x0
      f8:	24080008 	li	t0,8
      fc:	a4280000 	sh	t0,0(at)
     100:	100000b1 	b	3c8 <L80989244+0x4>
     104:	24120028 	li	s2,40
     108:	3c010000 	lui	at,0x0
     10c:	a4290000 	sh	t1,0(at)
     110:	3c010000 	lui	at,0x0
     114:	a42a0000 	sh	t2,0(at)
     118:	100000ab 	b	3c8 <L80989244+0x4>
     11c:	24120028 	li	s2,40
     120:	3c010000 	lui	at,0x0
     124:	a42b0000 	sh	t3,0(at)
     128:	3c010000 	lui	at,0x0
     12c:	240c0005 	li	t4,5
     130:	a42c0000 	sh	t4,0(at)
     134:	100000a4 	b	3c8 <L80989244+0x4>
     138:	24120028 	li	s2,40
     13c:	0c000000 	jal	0 <func_80988E80>
     140:	02602025 	move	a0,s3
     144:	100000a0 	b	3c8 <L80989244+0x4>
     148:	24120028 	li	s2,40

0000014c <L80988FCC>:
     14c:	3c010001 	lui	at,0x1
     150:	00300821 	addu	at,at,s0
     154:	0c000000 	jal	0 <func_80988E80>
     158:	ac201cc8 	sw	zero,7368(at)
     15c:	3c013f00 	lui	at,0x3f00
     160:	44816000 	mtc1	at,$f12
     164:	00000000 	nop
     168:	460c0102 	mul.s	$f4,$f0,$f12
     16c:	460c2080 	add.s	$f2,$f4,$f12
     170:	e6620058 	swc1	$f2,88(s3)
     174:	e6620054 	swc1	$f2,84(s3)
     178:	0c000000 	jal	0 <func_80988E80>
     17c:	e6620050 	swc1	$f2,80(s3)
     180:	3c013f80 	lui	at,0x3f80
     184:	44811000 	mtc1	at,$f2
     188:	3c014040 	lui	at,0x4040
     18c:	44813000 	mtc1	at,$f6
     190:	00000000 	nop
     194:	46060202 	mul.s	$f8,$f0,$f6
     198:	46024280 	add.s	$f10,$f8,$f2
     19c:	0c000000 	jal	0 <func_80988E80>
     1a0:	e66a0150 	swc1	$f10,336(s3)
     1a4:	3c013f80 	lui	at,0x3f80
     1a8:	44811000 	mtc1	at,$f2
     1ac:	3c014040 	lui	at,0x4040
     1b0:	44818000 	mtc1	at,$f16
     1b4:	00000000 	nop
     1b8:	46100482 	mul.s	$f18,$f0,$f16
     1bc:	46029100 	add.s	$f4,$f18,$f2
     1c0:	0c000000 	jal	0 <func_80988E80>
     1c4:	e6640154 	swc1	$f4,340(s3)
     1c8:	3c013f80 	lui	at,0x3f80
     1cc:	44811000 	mtc1	at,$f2
     1d0:	3c014040 	lui	at,0x4040
     1d4:	44813000 	mtc1	at,$f6
     1d8:	24120028 	li	s2,40
     1dc:	46060202 	mul.s	$f8,$f0,$f6
     1e0:	46024280 	add.s	$f10,$f8,$f2
     1e4:	10000078 	b	3c8 <L80989244+0x4>
     1e8:	e66a0158 	swc1	$f10,344(s3)

000001ec <L8098906C>:
     1ec:	00008025 	move	s0,zero
     1f0:	24120028 	li	s2,40
     1f4:	0c000000 	jal	0 <func_80988E80>
     1f8:	00000000 	nop
     1fc:	3c010000 	lui	at,0x0
     200:	c4300000 	lwc1	$f16,0(at)
     204:	02120019 	multu	s0,s2
     208:	46100482 	mul.s	$f18,$f0,$f16
     20c:	4600910d 	trunc.w.s	$f4,$f18
     210:	00006812 	mflo	t5
     214:	026d8821 	addu	s1,s3,t5
     218:	440f2000 	mfc1	t7,$f4
     21c:	0c000000 	jal	0 <func_80988E80>
     220:	a62f0170 	sh	t7,368(s1)
     224:	3c0142c8 	lui	at,0x42c8
     228:	44813000 	mtc1	at,$f6
     22c:	3c014270 	lui	at,0x4270
     230:	44815000 	mtc1	at,$f10
     234:	46060202 	mul.s	$f8,$f0,$f6
     238:	26100001 	addiu	s0,s0,1
     23c:	00108400 	sll	s0,s0,0x10
     240:	00108403 	sra	s0,s0,0x10
     244:	2a01001e 	slti	at,s0,30
     248:	460a4400 	add.s	$f16,$f8,$f10
     24c:	1420ffe9 	bnez	at,1f4 <L8098906C+0x8>
     250:	e6300168 	swc1	$f16,360(s1)
     254:	1000005d 	b	3cc <L80989244+0x8>
     258:	00008025 	move	s0,zero

0000025c <L809890DC>:
     25c:	3c013f80 	lui	at,0x3f80
     260:	44811000 	mtc1	at,$f2
     264:	44809000 	mtc1	zero,$f18
     268:	3c180000 	lui	t8,0x0
     26c:	e6620058 	swc1	$f2,88(s3)
     270:	e6620054 	swc1	$f2,84(s3)
     274:	e6620050 	swc1	$f2,80(s3)
     278:	e6720168 	swc1	$f18,360(s3)
     27c:	97180edc 	lhu	t8,3804(t8)
     280:	3c010001 	lui	at,0x1
     284:	00300821 	addu	at,at,s0
     288:	33190800 	andi	t9,t8,0x800
     28c:	17200012 	bnez	t9,2d8 <L809890DC+0x7c>
     290:	240800ff 	li	t0,255
     294:	c6640024 	lwc1	$f4,36(s3)
     298:	26041c24 	addiu	a0,s0,7204
     29c:	02602825 	move	a1,s3
     2a0:	e7a40010 	swc1	$f4,16(sp)
     2a4:	c6660028 	lwc1	$f6,40(s3)
     2a8:	02003025 	move	a2,s0
     2ac:	24070070 	li	a3,112
     2b0:	e7a60014 	swc1	$f6,20(sp)
     2b4:	c668002c 	lwc1	$f8,44(s3)
     2b8:	afa00028 	sw	zero,40(sp)
     2bc:	afa00024 	sw	zero,36(sp)
     2c0:	afa00020 	sw	zero,32(sp)
     2c4:	afa0001c 	sw	zero,28(sp)
     2c8:	0c000000 	jal	0 <func_80988E80>
     2cc:	e7a80018 	swc1	$f8,24(sp)
     2d0:	1000003d 	b	3c8 <L80989244+0x4>
     2d4:	24120028 	li	s2,40
     2d8:	a4281d32 	sh	t0,7474(at)
     2dc:	0c000000 	jal	0 <func_80988E80>
     2e0:	02602025 	move	a0,s3
     2e4:	10000038 	b	3c8 <L80989244+0x4>
     2e8:	24120028 	li	s2,40

000002ec <L8098916C>:
     2ec:	3c013f80 	lui	at,0x3f80
     2f0:	44811000 	mtc1	at,$f2
     2f4:	44805000 	mtc1	zero,$f10
     2f8:	24120028 	li	s2,40
     2fc:	e6620058 	swc1	$f2,88(s3)
     300:	e6620054 	swc1	$f2,84(s3)
     304:	e6620050 	swc1	$f2,80(s3)
     308:	1000002f 	b	3c8 <L80989244+0x4>
     30c:	e66a0168 	swc1	$f10,360(s3)

00000310 <L80989190>:
     310:	02002025 	move	a0,s0
     314:	26051c24 	addiu	a1,s0,7204
     318:	02603025 	move	a2,s3
     31c:	0c000000 	jal	0 <func_80988E80>
     320:	24070007 	li	a3,7
     324:	3c013f80 	lui	at,0x3f80
     328:	44811000 	mtc1	at,$f2
     32c:	8e690004 	lw	t1,4(s3)
     330:	866d001c 	lh	t5,28(s3)
     334:	3c010200 	lui	at,0x200
     338:	01215025 	or	t2,t1,at
     33c:	240bffff 	li	t3,-1
     340:	240c0023 	li	t4,35
     344:	2401000f 	li	at,15
     348:	ae6a0004 	sw	t2,4(s3)
     34c:	a26b0003 	sb	t3,3(s3)
     350:	a26c014e 	sb	t4,334(s3)
     354:	a260014d 	sb	zero,333(s3)
     358:	e6620058 	swc1	$f2,88(s3)
     35c:	e6620054 	swc1	$f2,84(s3)
     360:	15a1000c 	bne	t5,at,394 <L80989190+0x84>
     364:	e6620050 	swc1	$f2,80(s3)
     368:	3c070000 	lui	a3,0x0
     36c:	3c0e0000 	lui	t6,0x0
     370:	24e70000 	addiu	a3,a3,0
     374:	25ce0000 	addiu	t6,t6,0
     378:	3c050000 	lui	a1,0x0
     37c:	24a50000 	addiu	a1,a1,0
     380:	afae0014 	sw	t6,20(sp)
     384:	afa70010 	sw	a3,16(sp)
     388:	240428a6 	li	a0,10406
     38c:	0c000000 	jal	0 <func_80988E80>
     390:	24060004 	li	a2,4
     394:	1000000c 	b	3c8 <L80989244+0x4>
     398:	24120028 	li	s2,40

0000039c <L8098921C>:
     39c:	3c013f80 	lui	at,0x3f80
     3a0:	44811000 	mtc1	at,$f2
     3a4:	240f0023 	li	t7,35
     3a8:	a26f014e 	sb	t7,334(s3)
     3ac:	a260014d 	sb	zero,333(s3)
     3b0:	24120028 	li	s2,40
     3b4:	e6620058 	swc1	$f2,88(s3)
     3b8:	e6620054 	swc1	$f2,84(s3)
     3bc:	10000002 	b	3c8 <L80989244+0x4>
     3c0:	e6620050 	swc1	$f2,80(s3)

000003c4 <L80989244>:
     3c4:	24120028 	li	s2,40
     3c8:	00008025 	move	s0,zero
     3cc:	02120019 	multu	s0,s2
     3d0:	26100001 	addiu	s0,s0,1
     3d4:	00108400 	sll	s0,s0,0x10
     3d8:	00108403 	sra	s0,s0,0x10
     3dc:	2a01001e 	slti	at,s0,30
     3e0:	0000c012 	mflo	t8
     3e4:	0278c821 	addu	t9,s3,t8
     3e8:	1420fff8 	bnez	at,3cc <L80989244+0x8>
     3ec:	a3200172 	sb	zero,370(t9)
     3f0:	3c050000 	lui	a1,0x0
     3f4:	24a50000 	addiu	a1,a1,0
     3f8:	0c000000 	jal	0 <func_80988E80>
     3fc:	02602025 	move	a0,s3
     400:	8fbf0044 	lw	ra,68(sp)
     404:	8fb00034 	lw	s0,52(sp)
     408:	8fb10038 	lw	s1,56(sp)
     40c:	8fb2003c 	lw	s2,60(sp)
     410:	8fb30040 	lw	s3,64(sp)
     414:	03e00008 	jr	ra
     418:	27bd0048 	addiu	sp,sp,72

0000041c <DemoKankyo_Destroy>:
     41c:	03e00008 	jr	ra
     420:	afa50004 	sw	a1,4(sp)

00000424 <func_809892A4>:
     424:	27bdffe8 	addiu	sp,sp,-24
     428:	afbf0014 	sw	ra,20(sp)
     42c:	808f001e 	lb	t7,30(a0)
     430:	908e014c 	lbu	t6,332(a0)
     434:	00803825 	move	a3,a0
     438:	00a03025 	move	a2,a1
     43c:	15cf0103 	bne	t6,t7,84c <L809896CC>
     440:	8ca81c44 	lw	t0,7236(a1)
     444:	9498001c 	lhu	t8,28(a0)
     448:	2f010012 	sltiu	at,t8,18
     44c:	102000ff 	beqz	at,84c <L809896CC>
     450:	0018c080 	sll	t8,t8,0x2
     454:	3c010000 	lui	at,0x0
     458:	00380821 	addu	at,at,t8
     45c:	8c380000 	lw	t8,0(at)
     460:	03000008 	jr	t8
     464:	00000000 	nop

00000468 <L809892E8>:
     468:	3c050000 	lui	a1,0x0
     46c:	24a50000 	addiu	a1,a1,0
     470:	0c000000 	jal	0 <func_80988E80>
     474:	00e02025 	move	a0,a3
     478:	100000f5 	b	850 <L809896CC+0x4>
     47c:	8fbf0014 	lw	ra,20(sp)

00000480 <L80989300>:
     480:	3c050000 	lui	a1,0x0
     484:	24a50000 	addiu	a1,a1,0
     488:	0c000000 	jal	0 <func_80988E80>
     48c:	00e02025 	move	a0,a3
     490:	100000ef 	b	850 <L809896CC+0x4>
     494:	8fbf0014 	lw	ra,20(sp)

00000498 <L80989318>:
     498:	00c02025 	move	a0,a2
     49c:	24050002 	li	a1,2
     4a0:	0c000000 	jal	0 <func_80988E80>
     4a4:	afa70018 	sw	a3,24(sp)
     4a8:	104000e8 	beqz	v0,84c <L809896CC>
     4ac:	8fa70018 	lw	a3,24(sp)
     4b0:	3c050000 	lui	a1,0x0
     4b4:	24a50000 	addiu	a1,a1,0
     4b8:	0c000000 	jal	0 <func_80988E80>
     4bc:	00e02025 	move	a0,a3
     4c0:	100000e3 	b	850 <L809896CC+0x4>
     4c4:	8fbf0014 	lw	ra,20(sp)

000004c8 <L80989348>:
     4c8:	3c010001 	lui	at,0x1
     4cc:	00c12021 	addu	a0,a2,at
     4d0:	240500ff 	li	a1,255
     4d4:	a0850b06 	sb	a1,2822(a0)
     4d8:	a0850b07 	sb	a1,2823(a0)
     4dc:	a0850b08 	sb	a1,2824(a0)
     4e0:	00260821 	addu	at,at,a2
     4e4:	a0200b05 	sb	zero,2821(at)
     4e8:	90e2014e 	lbu	v0,334(a3)
     4ec:	28410015 	slti	at,v0,21
     4f0:	1020003e 	beqz	at,5ec <L80989348+0x124>
     4f4:	00401825 	move	v1,v0
     4f8:	2861000f 	slti	at,v1,15
     4fc:	5420003c 	bnezl	at,5f0 <L80989348+0x128>
     500:	3c01437f 	lui	at,0x437f
     504:	44822000 	mtc1	v0,$f4
     508:	3c01437f 	lui	at,0x437f
     50c:	44811000 	mtc1	at,$f2
     510:	04410005 	bgez	v0,528 <L80989348+0x60>
     514:	468021a0 	cvt.s.w	$f6,$f4
     518:	3c014f80 	lui	at,0x4f80
     51c:	44814000 	mtc1	at,$f8
     520:	00000000 	nop
     524:	46083180 	add.s	$f6,$f6,$f8
     528:	3c014170 	lui	at,0x4170
     52c:	44815000 	mtc1	at,$f10
     530:	3c0140a0 	lui	at,0x40a0
     534:	44819000 	mtc1	at,$f18
     538:	460a3401 	sub.s	$f16,$f6,$f10
     53c:	240a0001 	li	t2,1
     540:	3c010001 	lui	at,0x1
     544:	00260821 	addu	at,at,a2
     548:	46128003 	div.s	$f0,$f16,$f18
     54c:	24190001 	li	t9,1
     550:	a0390b05 	sb	t9,2821(at)
     554:	3c014f00 	lui	at,0x4f00
     558:	46001102 	mul.s	$f4,$f2,$f0
     55c:	46041201 	sub.s	$f8,$f2,$f4
     560:	4449f800 	cfc1	t1,$31
     564:	44caf800 	ctc1	t2,$31
     568:	00000000 	nop
     56c:	460041a4 	cvt.w.s	$f6,$f8
     570:	444af800 	cfc1	t2,$31
     574:	00000000 	nop
     578:	314a0078 	andi	t2,t2,0x78
     57c:	51400013 	beqzl	t2,5cc <L80989348+0x104>
     580:	440a3000 	mfc1	t2,$f6
     584:	44813000 	mtc1	at,$f6
     588:	240a0001 	li	t2,1
     58c:	46064181 	sub.s	$f6,$f8,$f6
     590:	44caf800 	ctc1	t2,$31
     594:	00000000 	nop
     598:	460031a4 	cvt.w.s	$f6,$f6
     59c:	444af800 	cfc1	t2,$31
     5a0:	00000000 	nop
     5a4:	314a0078 	andi	t2,t2,0x78
     5a8:	15400005 	bnez	t2,5c0 <L80989348+0xf8>
     5ac:	00000000 	nop
     5b0:	440a3000 	mfc1	t2,$f6
     5b4:	3c018000 	lui	at,0x8000
     5b8:	10000007 	b	5d8 <L80989348+0x110>
     5bc:	01415025 	or	t2,t2,at
     5c0:	10000005 	b	5d8 <L80989348+0x110>
     5c4:	240affff 	li	t2,-1
     5c8:	440a3000 	mfc1	t2,$f6
     5cc:	00000000 	nop
     5d0:	0540fffb 	bltz	t2,5c0 <L80989348+0xf8>
     5d4:	00000000 	nop
     5d8:	a08a0b09 	sb	t2,2825(a0)
     5dc:	90e2014e 	lbu	v0,334(a3)
     5e0:	44c9f800 	ctc1	t1,$31
     5e4:	00401825 	move	v1,v0
     5e8:	00000000 	nop
     5ec:	3c01437f 	lui	at,0x437f
     5f0:	44811000 	mtc1	at,$f2
     5f4:	2861000f 	slti	at,v1,15
     5f8:	1020003a 	beqz	at,6e4 <L80989348+0x21c>
     5fc:	28610004 	slti	at,v1,4
     600:	54200039 	bnezl	at,6e8 <L80989348+0x220>
     604:	2401000f 	li	at,15
     608:	44825000 	mtc1	v0,$f10
     60c:	3c014f80 	lui	at,0x4f80
     610:	04410004 	bgez	v0,624 <L80989348+0x15c>
     614:	46805420 	cvt.s.w	$f16,$f10
     618:	44819000 	mtc1	at,$f18
     61c:	00000000 	nop
     620:	46128400 	add.s	$f16,$f16,$f18
     624:	3c014080 	lui	at,0x4080
     628:	44812000 	mtc1	at,$f4
     62c:	3c014120 	lui	at,0x4120
     630:	44813000 	mtc1	at,$f6
     634:	46048201 	sub.s	$f8,$f16,$f4
     638:	240d0001 	li	t5,1
     63c:	3c010001 	lui	at,0x1
     640:	00260821 	addu	at,at,a2
     644:	46064003 	div.s	$f0,$f8,$f6
     648:	240b0001 	li	t3,1
     64c:	a02b0b05 	sb	t3,2821(at)
     650:	3c014f00 	lui	at,0x4f00
     654:	46001282 	mul.s	$f10,$f2,$f0
     658:	444cf800 	cfc1	t4,$31
     65c:	44cdf800 	ctc1	t5,$31
     660:	00000000 	nop
     664:	460054a4 	cvt.w.s	$f18,$f10
     668:	444df800 	cfc1	t5,$31
     66c:	00000000 	nop
     670:	31ad0078 	andi	t5,t5,0x78
     674:	51a00013 	beqzl	t5,6c4 <L80989348+0x1fc>
     678:	440d9000 	mfc1	t5,$f18
     67c:	44819000 	mtc1	at,$f18
     680:	240d0001 	li	t5,1
     684:	46125481 	sub.s	$f18,$f10,$f18
     688:	44cdf800 	ctc1	t5,$31
     68c:	00000000 	nop
     690:	460094a4 	cvt.w.s	$f18,$f18
     694:	444df800 	cfc1	t5,$31
     698:	00000000 	nop
     69c:	31ad0078 	andi	t5,t5,0x78
     6a0:	15a00005 	bnez	t5,6b8 <L80989348+0x1f0>
     6a4:	00000000 	nop
     6a8:	440d9000 	mfc1	t5,$f18
     6ac:	3c018000 	lui	at,0x8000
     6b0:	10000007 	b	6d0 <L80989348+0x208>
     6b4:	01a16825 	or	t5,t5,at
     6b8:	10000005 	b	6d0 <L80989348+0x208>
     6bc:	240dffff 	li	t5,-1
     6c0:	440d9000 	mfc1	t5,$f18
     6c4:	00000000 	nop
     6c8:	05a0fffb 	bltz	t5,6b8 <L80989348+0x1f0>
     6cc:	00000000 	nop
     6d0:	a08d0b09 	sb	t5,2825(a0)
     6d4:	90e2014e 	lbu	v0,334(a3)
     6d8:	44ccf800 	ctc1	t4,$31
     6dc:	00401825 	move	v1,v0
     6e0:	00000000 	nop
     6e4:	2401000f 	li	at,15
     6e8:	14610003 	bne	v1,at,6f8 <L80989348+0x230>
     6ec:	00c02025 	move	a0,a2
     6f0:	ad000134 	sw	zero,308(t0)
     6f4:	90e2014e 	lbu	v0,334(a3)
     6f8:	10400004 	beqz	v0,70c <L80989348+0x244>
     6fc:	24010001 	li	at,1
     700:	244effff 	addiu	t6,v0,-1
     704:	a0ee014e 	sb	t6,334(a3)
     708:	31c200ff 	andi	v0,t6,0xff
     70c:	54410050 	bnel	v0,at,850 <L809896CC+0x4>
     710:	8fbf0014 	lw	ra,20(sp)
     714:	84cf00a4 	lh	t7,164(a2)
     718:	24010043 	li	at,67
     71c:	3c030000 	lui	v1,0x0
     720:	15e10010 	bne	t7,at,764 <L80989348+0x29c>
     724:	24630000 	addiu	v1,v1,0
     728:	3c030000 	lui	v1,0x0
     72c:	24180019 	li	t8,25
     730:	3c010000 	lui	at,0x0
     734:	24630000 	addiu	v1,v1,0
     738:	a4380000 	sh	t8,0(at)
     73c:	8c790004 	lw	t9,4(v1)
     740:	3c0a0000 	lui	t2,0x0
     744:	3c090000 	lui	t1,0x0
     748:	13200004 	beqz	t9,75c <L80989348+0x294>
     74c:	254a0000 	addiu	t2,t2,0
     750:	25290000 	addiu	t1,t1,0
     754:	1000000f 	b	794 <L80989348+0x2cc>
     758:	acc91d68 	sw	t1,7528(a2)
     75c:	1000000d 	b	794 <L80989348+0x2cc>
     760:	acca1d68 	sw	t2,7528(a2)
     764:	240b0020 	li	t3,32
     768:	3c010000 	lui	at,0x0
     76c:	a42b0000 	sh	t3,0(at)
     770:	8c6c0004 	lw	t4,4(v1)
     774:	3c0e0000 	lui	t6,0x0
     778:	3c0d0000 	lui	t5,0x0
     77c:	11800004 	beqz	t4,790 <L80989348+0x2c8>
     780:	25ce0000 	addiu	t6,t6,0
     784:	25ad0000 	addiu	t5,t5,0
     788:	10000002 	b	794 <L80989348+0x2cc>
     78c:	accd1d68 	sw	t5,7528(a2)
     790:	acce1d68 	sw	t6,7528(a2)
     794:	0c000000 	jal	0 <func_80988E80>
     798:	afa70018 	sw	a3,24(sp)
     79c:	3c030000 	lui	v1,0x0
     7a0:	24630000 	addiu	v1,v1,0
     7a4:	10400003 	beqz	v0,7b4 <L80989348+0x2ec>
     7a8:	8fa70018 	lw	a3,24(sp)
     7ac:	240f0001 	li	t7,1
     7b0:	a06f1414 	sb	t7,5140(v1)
     7b4:	3c050000 	lui	a1,0x0
     7b8:	24a50000 	addiu	a1,a1,0
     7bc:	0c000000 	jal	0 <func_80988E80>
     7c0:	00e02025 	move	a0,a3
     7c4:	10000022 	b	850 <L809896CC+0x4>
     7c8:	8fbf0014 	lw	ra,20(sp)

000007cc <L8098964C>:
     7cc:	84d800a4 	lh	t8,164(a2)
     7d0:	24010043 	li	at,67
     7d4:	240e0001 	li	t6,1
     7d8:	1701000d 	bne	t8,at,810 <L8098964C+0x44>
     7dc:	00e02025 	move	a0,a3
     7e0:	3c030000 	lui	v1,0x0
     7e4:	24630000 	addiu	v1,v1,0
     7e8:	8c790004 	lw	t9,4(v1)
     7ec:	3c0a0000 	lui	t2,0x0
     7f0:	3c090000 	lui	t1,0x0
     7f4:	13200004 	beqz	t9,808 <L8098964C+0x3c>
     7f8:	254a0000 	addiu	t2,t2,0
     7fc:	25290000 	addiu	t1,t1,0
     800:	1000000e 	b	83c <L8098964C+0x70>
     804:	acc91d68 	sw	t1,7528(a2)
     808:	1000000c 	b	83c <L8098964C+0x70>
     80c:	acca1d68 	sw	t2,7528(a2)
     810:	3c030000 	lui	v1,0x0
     814:	24630000 	addiu	v1,v1,0
     818:	8c6b0004 	lw	t3,4(v1)
     81c:	3c0d0000 	lui	t5,0x0
     820:	3c0c0000 	lui	t4,0x0
     824:	11600004 	beqz	t3,838 <L8098964C+0x6c>
     828:	25ad0000 	addiu	t5,t5,0
     82c:	258c0000 	addiu	t4,t4,0
     830:	10000002 	b	83c <L8098964C+0x70>
     834:	accc1d68 	sw	t4,7528(a2)
     838:	accd1d68 	sw	t5,7528(a2)
     83c:	3c050000 	lui	a1,0x0
     840:	a06e1414 	sb	t6,5140(v1)
     844:	0c000000 	jal	0 <func_80988E80>
     848:	24a50000 	addiu	a1,a1,0

0000084c <L809896CC>:
     84c:	8fbf0014 	lw	ra,20(sp)
     850:	27bd0018 	addiu	sp,sp,24
     854:	03e00008 	jr	ra
     858:	00000000 	nop

0000085c <func_809896DC>:
     85c:	afa40000 	sw	a0,0(sp)
     860:	03e00008 	jr	ra
     864:	afa50004 	sw	a1,4(sp)

00000868 <func_809896E8>:
     868:	27bdffe8 	addiu	sp,sp,-24
     86c:	afa5001c 	sw	a1,28(sp)
     870:	afbf0014 	sw	ra,20(sp)
     874:	3c050000 	lui	a1,0x0
     878:	0c000000 	jal	0 <func_80988E80>
     87c:	24a50000 	addiu	a1,a1,0
     880:	8fbf0014 	lw	ra,20(sp)
     884:	27bd0018 	addiu	sp,sp,24
     888:	03e00008 	jr	ra
     88c:	00000000 	nop

00000890 <func_80989710>:
     890:	27bdffd0 	addiu	sp,sp,-48
     894:	00067880 	sll	t7,a2,0x2
     898:	afbf0014 	sw	ra,20(sp)
     89c:	afa40030 	sw	a0,48(sp)
     8a0:	afa60038 	sw	a2,56(sp)
     8a4:	00afc021 	addu	t8,a1,t7
     8a8:	8f021d8c 	lw	v0,7564(t8)
     8ac:	00a03825 	move	a3,a1
     8b0:	8c4a0018 	lw	t2,24(v0)
     8b4:	8c59000c 	lw	t9,12(v0)
     8b8:	8c480010 	lw	t0,16(v0)
     8bc:	448a5000 	mtc1	t2,$f10
     8c0:	8c490014 	lw	t1,20(v0)
     8c4:	44992000 	mtc1	t9,$f4
     8c8:	46805420 	cvt.s.w	$f16,$f10
     8cc:	44883000 	mtc1	t0,$f6
     8d0:	44894000 	mtc1	t1,$f8
     8d4:	468020a0 	cvt.s.w	$f2,$f4
     8d8:	e7b00018 	swc1	$f16,24(sp)
     8dc:	8c4b001c 	lw	t3,28(v0)
     8e0:	448b9000 	mtc1	t3,$f18
     8e4:	46803320 	cvt.s.w	$f12,$f6
     8e8:	46809120 	cvt.s.w	$f4,$f18
     8ec:	468043a0 	cvt.s.w	$f14,$f8
     8f0:	e7a4001c 	swc1	$f4,28(sp)
     8f4:	8c4c0020 	lw	t4,32(v0)
     8f8:	448c3000 	mtc1	t4,$f6
     8fc:	00000000 	nop
     900:	46803220 	cvt.s.w	$f8,$f6
     904:	e7a80020 	swc1	$f8,32(sp)
     908:	94e61d74 	lhu	a2,7540(a3)
     90c:	94450002 	lhu	a1,2(v0)
     910:	94440004 	lhu	a0,4(v0)
     914:	e7ae002c 	swc1	$f14,44(sp)
     918:	e7ac0028 	swc1	$f12,40(sp)
     91c:	0c000000 	jal	0 <func_80988E80>
     920:	e7a20024 	swc1	$f2,36(sp)
     924:	c7a20024 	lwc1	$f2,36(sp)
     928:	c7aa0018 	lwc1	$f10,24(sp)
     92c:	8fa20030 	lw	v0,48(sp)
     930:	c7ac0028 	lwc1	$f12,40(sp)
     934:	46025401 	sub.s	$f16,$f10,$f2
     938:	c7ae002c 	lwc1	$f14,44(sp)
     93c:	46008482 	mul.s	$f18,$f16,$f0
     940:	46029100 	add.s	$f4,$f18,$f2
     944:	e4440024 	swc1	$f4,36(v0)
     948:	c7a6001c 	lwc1	$f6,28(sp)
     94c:	460c3201 	sub.s	$f8,$f6,$f12
     950:	46004282 	mul.s	$f10,$f8,$f0
     954:	460c5400 	add.s	$f16,$f10,$f12
     958:	e4500028 	swc1	$f16,40(v0)
     95c:	c7b20020 	lwc1	$f18,32(sp)
     960:	460e9101 	sub.s	$f4,$f18,$f14
     964:	46002182 	mul.s	$f6,$f4,$f0
     968:	460e3200 	add.s	$f8,$f6,$f14
     96c:	e448002c 	swc1	$f8,44(v0)
     970:	8fbf0014 	lw	ra,20(sp)
     974:	27bd0030 	addiu	sp,sp,48
     978:	03e00008 	jr	ra
     97c:	00000000 	nop

00000980 <func_80989800>:
     980:	27bdffe8 	addiu	sp,sp,-24
     984:	afbf0014 	sw	ra,20(sp)
     988:	90ae1d6c 	lbu	t6,7532(a1)
     98c:	51c0000c 	beqzl	t6,9c0 <func_80989800+0x40>
     990:	c484015c 	lwc1	$f4,348(a0)
     994:	8482001c 	lh	v0,28(a0)
     998:	00027880 	sll	t7,v0,0x2
     99c:	00afc021 	addu	t8,a1,t7
     9a0:	8f191d84 	lw	t9,7556(t8)
     9a4:	2446fffe 	addiu	a2,v0,-2
     9a8:	53200005 	beqzl	t9,9c0 <func_80989800+0x40>
     9ac:	c484015c 	lwc1	$f4,348(a0)
     9b0:	0c000000 	jal	0 <func_80988E80>
     9b4:	afa40018 	sw	a0,24(sp)
     9b8:	8fa40018 	lw	a0,24(sp)
     9bc:	c484015c 	lwc1	$f4,348(a0)
     9c0:	c4860150 	lwc1	$f6,336(a0)
     9c4:	c48a0160 	lwc1	$f10,352(a0)
     9c8:	c4900154 	lwc1	$f16,340(a0)
     9cc:	46062200 	add.s	$f8,$f4,$f6
     9d0:	c4860158 	lwc1	$f6,344(a0)
     9d4:	c4840164 	lwc1	$f4,356(a0)
     9d8:	46105480 	add.s	$f18,$f10,$f16
     9dc:	e488015c 	swc1	$f8,348(a0)
     9e0:	46062200 	add.s	$f8,$f4,$f6
     9e4:	e4920160 	swc1	$f18,352(a0)
     9e8:	e4880164 	swc1	$f8,356(a0)
     9ec:	8fbf0014 	lw	ra,20(sp)
     9f0:	27bd0018 	addiu	sp,sp,24
     9f4:	03e00008 	jr	ra
     9f8:	00000000 	nop

000009fc <func_8098987C>:
     9fc:	afa50004 	sw	a1,4(sp)
     a00:	24050028 	li	a1,40
     a04:	00001025 	move	v0,zero
     a08:	00450019 	multu	v0,a1
     a0c:	24420001 	addiu	v0,v0,1
     a10:	304200ff 	andi	v0,v0,0xff
     a14:	2841001e 	slti	at,v0,30
     a18:	00007012 	mflo	t6
     a1c:	008e1821 	addu	v1,a0,t6
     a20:	c4640168 	lwc1	$f4,360(v1)
     a24:	846f0170 	lh	t7,368(v1)
     a28:	4600218d 	trunc.w.s	$f6,$f4
     a2c:	44093000 	mfc1	t1,$f6
     a30:	00000000 	nop
     a34:	01e95021 	addu	t2,t7,t1
     a38:	1420fff3 	bnez	at,a08 <func_8098987C+0xc>
     a3c:	a46a0170 	sh	t2,368(v1)
     a40:	03e00008 	jr	ra
     a44:	00000000 	nop

00000a48 <func_809898C8>:
     a48:	27bdffe0 	addiu	sp,sp,-32
     a4c:	afbf001c 	sw	ra,28(sp)
     a50:	afb00018 	sw	s0,24(sp)
     a54:	afa50024 	sw	a1,36(sp)
     a58:	00808025 	move	s0,a0
     a5c:	0c000000 	jal	0 <func_80988E80>
     a60:	2405201e 	li	a1,8222
     a64:	3c013f80 	lui	at,0x3f80
     a68:	44813000 	mtc1	at,$f6
     a6c:	c6040168 	lwc1	$f4,360(s0)
     a70:	3c0142cc 	lui	at,0x42cc
     a74:	44818000 	mtc1	at,$f16
     a78:	46062200 	add.s	$f8,$f4,$f6
     a7c:	02002025 	move	a0,s0
     a80:	e6080168 	swc1	$f8,360(s0)
     a84:	c60a0168 	lwc1	$f10,360(s0)
     a88:	460a803e 	c.le.s	$f16,$f10
     a8c:	00000000 	nop
     a90:	4502000f 	bc1fl	ad0 <func_809898C8+0x88>
     a94:	8fbf001c 	lw	ra,28(sp)
     a98:	0c000000 	jal	0 <func_80988E80>
     a9c:	24052893 	li	a1,10387
     aa0:	3c020000 	lui	v0,0x0
     aa4:	24420000 	addiu	v0,v0,0
     aa8:	944e0edc 	lhu	t6,3804(v0)
     aac:	35cf0800 	ori	t7,t6,0x800
     ab0:	a44f0edc 	sh	t7,3804(v0)
     ab4:	0c000000 	jal	0 <func_80988E80>
     ab8:	8e04011c 	lw	a0,284(s0)
     abc:	3c050000 	lui	a1,0x0
     ac0:	24a50000 	addiu	a1,a1,0
     ac4:	0c000000 	jal	0 <func_80988E80>
     ac8:	02002025 	move	a0,s0
     acc:	8fbf001c 	lw	ra,28(sp)
     ad0:	8fb00018 	lw	s0,24(sp)
     ad4:	27bd0020 	addiu	sp,sp,32
     ad8:	03e00008 	jr	ra
     adc:	00000000 	nop

00000ae0 <func_80989960>:
     ae0:	27bdffe8 	addiu	sp,sp,-24
     ae4:	afbf0014 	sw	ra,20(sp)
     ae8:	afa40018 	sw	a0,24(sp)
     aec:	afa5001c 	sw	a1,28(sp)
     af0:	0c000000 	jal	0 <func_80988E80>
     af4:	8c84011c 	lw	a0,284(a0)
     af8:	8fbf0014 	lw	ra,20(sp)
     afc:	27bd0018 	addiu	sp,sp,24
     b00:	03e00008 	jr	ra
     b04:	00000000 	nop

00000b08 <DemoKankyo_Update>:
     b08:	27bdffe8 	addiu	sp,sp,-24
     b0c:	afbf0014 	sw	ra,20(sp)
     b10:	8c990600 	lw	t9,1536(a0)
     b14:	0320f809 	jalr	t9
     b18:	00000000 	nop
     b1c:	8fbf0014 	lw	ra,20(sp)
     b20:	27bd0018 	addiu	sp,sp,24
     b24:	03e00008 	jr	ra
     b28:	00000000 	nop

00000b2c <DemoKankyo_Draw>:
     b2c:	27bdffe0 	addiu	sp,sp,-32
     b30:	afbf001c 	sw	ra,28(sp)
     b34:	afb10018 	sw	s1,24(sp)
     b38:	afb00014 	sw	s0,20(sp)
     b3c:	808e001e 	lb	t6,30(a0)
     b40:	9086014c 	lbu	a2,332(a0)
     b44:	00808025 	move	s0,a0
     b48:	00a08825 	move	s1,a1
     b4c:	54ce0054 	bnel	a2,t6,ca0 <L80989B1C+0x4>
     b50:	3c010001 	lui	at,0x1
     b54:	948f001c 	lhu	t7,28(a0)
     b58:	2de10012 	sltiu	at,t7,18
     b5c:	1020004f 	beqz	at,c9c <L80989B1C>
     b60:	000f7880 	sll	t7,t7,0x2
     b64:	3c010000 	lui	at,0x0
     b68:	002f0821 	addu	at,at,t7
     b6c:	8c2f0000 	lw	t7,0(at)
     b70:	01e00008 	jr	t7
     b74:	00000000 	nop

00000b78 <L809899F8>:
     b78:	863800a4 	lh	t8,164(s1)
     b7c:	24010043 	li	at,67
     b80:	02202025 	move	a0,s1
     b84:	57010024 	bnel	t8,at,c18 <L809899F8+0xa0>
     b88:	02002025 	move	a0,s0
     b8c:	0c000000 	jal	0 <func_80988E80>
     b90:	24050001 	li	a1,1
     b94:	14400003 	bnez	v0,ba4 <L809899F8+0x2c>
     b98:	02002025 	move	a0,s0
     b9c:	1000003f 	b	c9c <L80989B1C>
     ba0:	9206014c 	lbu	a2,332(s0)
     ba4:	3c054396 	lui	a1,0x4396
     ba8:	0c000000 	jal	0 <func_80988E80>
     bac:	24067530 	li	a2,30000
     bb0:	14400003 	bnez	v0,bc0 <L809899F8+0x48>
     bb4:	3c190000 	lui	t9,0x0
     bb8:	10000038 	b	c9c <L80989B1C>
     bbc:	9206014c 	lbu	a2,332(s0)
     bc0:	8f390004 	lw	t9,4(t9)
     bc4:	5320000b 	beqzl	t9,bf4 <L809899F8+0x7c>
     bc8:	962a1d74 	lhu	t2,7540(s1)
     bcc:	96281d74 	lhu	t0,7540(s1)
     bd0:	290100aa 	slti	at,t0,170
     bd4:	14200004 	bnez	at,be8 <L809899F8+0x70>
     bd8:	00000000 	nop
     bdc:	92291d6c 	lbu	t1,7532(s1)
     be0:	5520000d 	bnezl	t1,c18 <L809899F8+0xa0>
     be4:	02002025 	move	a0,s0
     be8:	1000002c 	b	c9c <L80989B1C>
     bec:	9206014c 	lbu	a2,332(s0)
     bf0:	962a1d74 	lhu	t2,7540(s1)
     bf4:	29410078 	slti	at,t2,120
     bf8:	14200004 	bnez	at,c0c <L809899F8+0x94>
     bfc:	00000000 	nop
     c00:	922b1d6c 	lbu	t3,7532(s1)
     c04:	55600004 	bnezl	t3,c18 <L809899F8+0xa0>
     c08:	02002025 	move	a0,s0
     c0c:	10000023 	b	c9c <L80989B1C>
     c10:	9206014c 	lbu	a2,332(s0)
     c14:	02002025 	move	a0,s0
     c18:	0c000000 	jal	0 <func_80988E80>
     c1c:	02202825 	move	a1,s1
     c20:	1000001e 	b	c9c <L80989B1C>
     c24:	9206014c 	lbu	a2,332(s0)

00000c28 <L80989AA8>:
     c28:	02002025 	move	a0,s0
     c2c:	0c000000 	jal	0 <func_80988E80>
     c30:	02202825 	move	a1,s1
     c34:	10000019 	b	c9c <L80989B1C>
     c38:	9206014c 	lbu	a2,332(s0)

00000c3c <L80989ABC>:
     c3c:	02002025 	move	a0,s0
     c40:	0c000000 	jal	0 <func_80988E80>
     c44:	02202825 	move	a1,s1
     c48:	10000014 	b	c9c <L80989B1C>
     c4c:	9206014c 	lbu	a2,332(s0)

00000c50 <L80989AD0>:
     c50:	02002025 	move	a0,s0
     c54:	0c000000 	jal	0 <func_80988E80>
     c58:	02202825 	move	a1,s1
     c5c:	1000000f 	b	c9c <L80989B1C>
     c60:	9206014c 	lbu	a2,332(s0)

00000c64 <L80989AE4>:
     c64:	02002025 	move	a0,s0
     c68:	0c000000 	jal	0 <func_80988E80>
     c6c:	02202825 	move	a1,s1
     c70:	1000000a 	b	c9c <L80989B1C>
     c74:	9206014c 	lbu	a2,332(s0)

00000c78 <L80989AF8>:
     c78:	02002025 	move	a0,s0
     c7c:	0c000000 	jal	0 <func_80988E80>
     c80:	02202825 	move	a1,s1
     c84:	10000005 	b	c9c <L80989B1C>
     c88:	9206014c 	lbu	a2,332(s0)

00000c8c <L80989B0C>:
     c8c:	02002025 	move	a0,s0
     c90:	0c000000 	jal	0 <func_80988E80>
     c94:	02202825 	move	a1,s1
     c98:	9206014c 	lbu	a2,332(s0)

00000c9c <L80989B1C>:
     c9c:	3c010001 	lui	at,0x1
     ca0:	342117a4 	ori	at,at,0x17a4
     ca4:	02212021 	addu	a0,s1,at
     ca8:	0c000000 	jal	0 <func_80988E80>
     cac:	00c02825 	move	a1,a2
     cb0:	50400004 	beqzl	v0,cc4 <L80989B1C+0x28>
     cb4:	8fbf001c 	lw	ra,28(sp)
     cb8:	920c014c 	lbu	t4,332(s0)
     cbc:	a20c001e 	sb	t4,30(s0)
     cc0:	8fbf001c 	lw	ra,28(sp)
     cc4:	8fb00014 	lw	s0,20(sp)
     cc8:	8fb10018 	lw	s1,24(sp)
     ccc:	03e00008 	jr	ra
     cd0:	27bd0020 	addiu	sp,sp,32

00000cd4 <func_80989B54>:
     cd4:	27bdffe0 	addiu	sp,sp,-32
     cd8:	afbf001c 	sw	ra,28(sp)
     cdc:	afb10018 	sw	s1,24(sp)
     ce0:	afb00014 	sw	s0,20(sp)
     ce4:	afa60028 	sw	a2,40(sp)
     ce8:	84a200a4 	lh	v0,164(a1)
     cec:	00063400 	sll	a2,a2,0x10
     cf0:	24010043 	li	at,67
     cf4:	00063403 	sra	a2,a2,0x10
     cf8:	10410022 	beq	v0,at,d84 <func_80989B54+0xb0>
     cfc:	00808825 	move	s1,a0
     d00:	24010047 	li	at,71
     d04:	10410007 	beq	v0,at,d24 <func_80989B54+0x50>
     d08:	24010051 	li	at,81
     d0c:	10410039 	beq	v0,at,df4 <func_80989B54+0x120>
     d10:	00067080 	sll	t6,a2,0x2
     d14:	01c67021 	addu	t6,t6,a2
     d18:	000e70c0 	sll	t6,t6,0x3
     d1c:	1000004e 	b	e58 <func_80989B54+0x184>
     d20:	008e8021 	addu	s0,a0,t6
     d24:	0c000000 	jal	0 <func_80988E80>
     d28:	a7a6002a 	sh	a2,42(sp)
     d2c:	3c0143fa 	lui	at,0x43fa
     d30:	44811000 	mtc1	at,$f2
     d34:	3c013f00 	lui	at,0x3f00
     d38:	44812000 	mtc1	at,$f4
     d3c:	87a6002a 	lh	a2,42(sp)
     d40:	46040181 	sub.s	$f6,$f0,$f4
     d44:	00067880 	sll	t7,a2,0x2
     d48:	01e67821 	addu	t7,t7,a2
     d4c:	000f78c0 	sll	t7,t7,0x3
     d50:	46023202 	mul.s	$f8,$f6,$f2
     d54:	022f8021 	addu	s0,s1,t7
     d58:	e6020154 	swc1	$f2,340(s0)
     d5c:	0c000000 	jal	0 <func_80988E80>
     d60:	e6080150 	swc1	$f8,336(s0)
     d64:	3c013f00 	lui	at,0x3f00
     d68:	44815000 	mtc1	at,$f10
     d6c:	3c0143fa 	lui	at,0x43fa
     d70:	44819000 	mtc1	at,$f18
     d74:	460a0401 	sub.s	$f16,$f0,$f10
     d78:	46128102 	mul.s	$f4,$f16,$f18
     d7c:	10000036 	b	e58 <func_80989B54+0x184>
     d80:	e6040158 	swc1	$f4,344(s0)
     d84:	0006c080 	sll	t8,a2,0x2
     d88:	44800000 	mtc1	zero,$f0
     d8c:	0306c021 	addu	t8,t8,a2
     d90:	0018c0c0 	sll	t8,t8,0x3
     d94:	02388021 	addu	s0,s1,t8
     d98:	e600015c 	swc1	$f0,348(s0)
     d9c:	e6000160 	swc1	$f0,352(s0)
     da0:	0c000000 	jal	0 <func_80988E80>
     da4:	e6000164 	swc1	$f0,356(s0)
     da8:	3c013f00 	lui	at,0x3f00
     dac:	44813000 	mtc1	at,$f6
     db0:	3c014334 	lui	at,0x4334
     db4:	44815000 	mtc1	at,$f10
     db8:	46060201 	sub.s	$f8,$f0,$f6
     dbc:	3c014120 	lui	at,0x4120
     dc0:	44819000 	mtc1	at,$f18
     dc4:	460a4402 	mul.s	$f16,$f8,$f10
     dc8:	e6120154 	swc1	$f18,340(s0)
     dcc:	0c000000 	jal	0 <func_80988E80>
     dd0:	e6100150 	swc1	$f16,336(s0)
     dd4:	3c013f00 	lui	at,0x3f00
     dd8:	44812000 	mtc1	at,$f4
     ddc:	3c014334 	lui	at,0x4334
     de0:	44814000 	mtc1	at,$f8
     de4:	46040181 	sub.s	$f6,$f0,$f4
     de8:	46083282 	mul.s	$f10,$f6,$f8
     dec:	1000001a 	b	e58 <func_80989B54+0x184>
     df0:	e60a0158 	swc1	$f10,344(s0)
     df4:	0c000000 	jal	0 <func_80988E80>
     df8:	a7a6002a 	sh	a2,42(sp)
     dfc:	3c013f00 	lui	at,0x3f00
     e00:	44818000 	mtc1	at,$f16
     e04:	3c014416 	lui	at,0x4416
     e08:	44812000 	mtc1	at,$f4
     e0c:	46100481 	sub.s	$f18,$f0,$f16
     e10:	87a6002a 	lh	a2,42(sp)
     e14:	3c01c3fa 	lui	at,0xc3fa
     e18:	44814000 	mtc1	at,$f8
     e1c:	46049182 	mul.s	$f6,$f18,$f4
     e20:	0006c880 	sll	t9,a2,0x2
     e24:	0326c821 	addu	t9,t9,a2
     e28:	0019c8c0 	sll	t9,t9,0x3
     e2c:	02398021 	addu	s0,s1,t9
     e30:	e6080154 	swc1	$f8,340(s0)
     e34:	0c000000 	jal	0 <func_80988E80>
     e38:	e6060150 	swc1	$f6,336(s0)
     e3c:	3c013f00 	lui	at,0x3f00
     e40:	44815000 	mtc1	at,$f10
     e44:	3c014416 	lui	at,0x4416
     e48:	44819000 	mtc1	at,$f18
     e4c:	460a0401 	sub.s	$f16,$f0,$f10
     e50:	46128102 	mul.s	$f4,$f16,$f18
     e54:	e6040158 	swc1	$f4,344(s0)
     e58:	0c000000 	jal	0 <func_80988E80>
     e5c:	00000000 	nop
     e60:	3c080000 	lui	t0,0x0
     e64:	85080000 	lh	t0,0(t0)
     e68:	3c014080 	lui	at,0x4080
     e6c:	44814000 	mtc1	at,$f8
     e70:	44883000 	mtc1	t0,$f6
     e74:	00000000 	nop
     e78:	468030a0 	cvt.s.w	$f2,$f6
     e7c:	46081282 	mul.s	$f10,$f2,$f8
     e80:	00000000 	nop
     e84:	460a0402 	mul.s	$f16,$f0,$f10
     e88:	46028480 	add.s	$f18,$f16,$f2
     e8c:	e6120168 	swc1	$f18,360(s0)
     e90:	8fbf001c 	lw	ra,28(sp)
     e94:	8fb10018 	lw	s1,24(sp)
     e98:	8fb00014 	lw	s0,20(sp)
     e9c:	03e00008 	jr	ra
     ea0:	27bd0020 	addiu	sp,sp,32

00000ea4 <func_80989D24>:
     ea4:	27bdff18 	addiu	sp,sp,-232
     ea8:	afb5005c 	sw	s5,92(sp)
     eac:	00a0a825 	move	s5,a1
     eb0:	afbf006c 	sw	ra,108(sp)
     eb4:	afbe0068 	sw	s8,104(sp)
     eb8:	afb70064 	sw	s7,100(sp)
     ebc:	afb60060 	sw	s6,96(sp)
     ec0:	afb40058 	sw	s4,88(sp)
     ec4:	afb30054 	sw	s3,84(sp)
     ec8:	afb20050 	sw	s2,80(sp)
     ecc:	afb1004c 	sw	s1,76(sp)
     ed0:	afb00048 	sw	s0,72(sp)
     ed4:	f7be0040 	sdc1	$f30,64(sp)
     ed8:	f7bc0038 	sdc1	$f28,56(sp)
     edc:	f7ba0030 	sdc1	$f26,48(sp)
     ee0:	f7b80028 	sdc1	$f24,40(sp)
     ee4:	f7b60020 	sdc1	$f22,32(sp)
     ee8:	f7b40018 	sdc1	$f20,24(sp)
     eec:	8ca50000 	lw	a1,0(a1)
     ef0:	0080a025 	move	s4,a0
     ef4:	3c060000 	lui	a2,0x0
     ef8:	24c60000 	addiu	a2,a2,0
     efc:	27a400a8 	addiu	a0,sp,168
     f00:	240704a2 	li	a3,1186
     f04:	0c000000 	jal	0 <func_80988E80>
     f08:	00a09025 	move	s2,a1
     f0c:	3c014396 	lui	at,0x4396
     f10:	4481f000 	mtc1	at,$f30
     f14:	3c0143af 	lui	at,0x43af
     f18:	4481e000 	mtc1	at,$f28
     f1c:	3c014120 	lui	at,0x4120
     f20:	4481d000 	mtc1	at,$f26
     f24:	3c01457a 	lui	at,0x457a
     f28:	4481c000 	mtc1	at,$f24
     f2c:	3c0e0600 	lui	t6,0x600
     f30:	25ce0080 	addiu	t6,t6,128
     f34:	3c010000 	lui	at,0x0
     f38:	3c1e0000 	lui	s8,0x0
     f3c:	3c17da38 	lui	s7,0xda38
     f40:	4480a000 	mtc1	zero,$f20
     f44:	36f70003 	ori	s7,s7,0x3
     f48:	27de0000 	addiu	s8,s8,0
     f4c:	c4360000 	lwc1	$f22,0(at)
     f50:	afae0074 	sw	t6,116(sp)
     f54:	a7a000de 	sh	zero,222(sp)
     f58:	24160043 	li	s6,67
     f5c:	c6b000e0 	lwc1	$f16,224(s5)
     f60:	c6a400ec 	lwc1	$f4,236(s5)
     f64:	c6a600f0 	lwc1	$f6,240(s5)
     f68:	c6a800e4 	lwc1	$f8,228(s5)
     f6c:	46102301 	sub.s	$f12,$f4,$f16
     f70:	c6aa00f4 	lwc1	$f10,244(s5)
     f74:	c6b200e8 	lwc1	$f18,232(s5)
     f78:	46083081 	sub.s	$f2,$f6,$f8
     f7c:	460c6102 	mul.s	$f4,$f12,$f12
     f80:	86af00a4 	lh	t7,164(s5)
     f84:	46125381 	sub.s	$f14,$f10,$f18
     f88:	46021182 	mul.s	$f6,$f2,$f2
     f8c:	87b800de 	lh	t8,222(sp)
     f90:	02802025 	move	a0,s4
     f94:	460e7282 	mul.s	$f10,$f14,$f14
     f98:	02a02825 	move	a1,s5
     f9c:	46062200 	add.s	$f8,$f4,$f6
     fa0:	460a4000 	add.s	$f0,$f8,$f10
     fa4:	12cf0015 	beq	s6,t7,ffc <func_80989D24+0x158>
     fa8:	46000004 	sqrt.s	$f0,$f0
     fac:	46006483 	div.s	$f18,$f12,$f0
     fb0:	3c0142a0 	lui	at,0x42a0
     fb4:	44815000 	mtc1	at,$f10
     fb8:	0018c880 	sll	t9,t8,0x2
     fbc:	0338c821 	addu	t9,t9,t8
     fc0:	0019c8c0 	sll	t9,t9,0x3
     fc4:	02999821 	addu	s3,s4,t9
     fc8:	46001203 	div.s	$f8,$f2,$f0
     fcc:	461c9102 	mul.s	$f4,$f18,$f28
     fd0:	46048180 	add.s	$f6,$f16,$f4
     fd4:	460a4482 	mul.s	$f18,$f8,$f10
     fd8:	e666015c 	swc1	$f6,348(s3)
     fdc:	c6a400e4 	lwc1	$f4,228(s5)
     fe0:	46007283 	div.s	$f10,$f14,$f0
     fe4:	46122180 	add.s	$f6,$f4,$f18
     fe8:	e6660160 	swc1	$f6,352(s3)
     fec:	c6a800e8 	lwc1	$f8,232(s5)
     ff0:	461c5102 	mul.s	$f4,$f10,$f28
     ff4:	46044480 	add.s	$f18,$f8,$f4
     ff8:	e6720164 	swc1	$f18,356(s3)
     ffc:	87a800de 	lh	t0,222(sp)
    1000:	24010001 	li	at,1
    1004:	00084880 	sll	t1,t0,0x2
    1008:	01284821 	addu	t1,t1,t0
    100c:	000948c0 	sll	t1,t1,0x3
    1010:	02899821 	addu	s3,s4,t1
    1014:	92620172 	lbu	v0,370(s3)
    1018:	10400009 	beqz	v0,1040 <func_80989D24+0x19c>
    101c:	00000000 	nop
    1020:	10410024 	beq	v0,at,10b4 <func_80989D24+0x210>
    1024:	24010002 	li	at,2
    1028:	1041006b 	beq	v0,at,11d8 <func_80989D24+0x334>
    102c:	02802025 	move	a0,s4
    1030:	c6660154 	lwc1	$f6,340(s3)
    1034:	c66a0160 	lwc1	$f10,352(s3)
    1038:	10000070 	b	11fc <func_80989D24+0x358>
    103c:	460a3380 	add.s	$f14,$f6,$f10
    1040:	0c000000 	jal	0 <func_80988E80>
    1044:	87a600de 	lh	a2,222(sp)
    1048:	3c0a0000 	lui	t2,0x0
    104c:	8d4a0000 	lw	t2,0(t2)
    1050:	240100a0 	li	at,160
    1054:	15410009 	bne	t2,at,107c <func_80989D24+0x1d8>
    1058:	00000000 	nop
    105c:	0c000000 	jal	0 <func_80988E80>
    1060:	00000000 	nop
    1064:	3c0143fa 	lui	at,0x43fa
    1068:	44814000 	mtc1	at,$f8
    106c:	00000000 	nop
    1070:	46080102 	mul.s	$f4,$f0,$f8
    1074:	10000008 	b	1098 <func_80989D24+0x1f4>
    1078:	e6640154 	swc1	$f4,340(s3)
    107c:	0c000000 	jal	0 <func_80988E80>
    1080:	00000000 	nop
    1084:	3c01c3fa 	lui	at,0xc3fa
    1088:	44819000 	mtc1	at,$f18
    108c:	00000000 	nop
    1090:	46120182 	mul.s	$f6,$f0,$f18
    1094:	e6660154 	swc1	$f6,340(s3)
    1098:	926b0172 	lbu	t3,370(s3)
    109c:	c66a0154 	lwc1	$f10,340(s3)
    10a0:	c6680160 	lwc1	$f8,352(s3)
    10a4:	256c0001 	addiu	t4,t3,1
    10a8:	a26c0172 	sb	t4,370(s3)
    10ac:	10000053 	b	11fc <func_80989D24+0x358>
    10b0:	46085380 	add.s	$f14,$f10,$f8
    10b4:	46001103 	div.s	$f4,$f2,$f0
    10b8:	3c014316 	lui	at,0x4316
    10bc:	44819000 	mtc1	at,$f18
    10c0:	3c0d0000 	lui	t5,0x0
    10c4:	8dad0000 	lw	t5,0(t5)
    10c8:	c6aa00e4 	lwc1	$f10,228(s5)
    10cc:	240100a0 	li	at,160
    10d0:	3c020000 	lui	v0,0x0
    10d4:	46122182 	mul.s	$f6,$f4,$f18
    10d8:	15a10006 	bne	t5,at,10f4 <func_80989D24+0x250>
    10dc:	46065300 	add.s	$f12,$f10,$f6
    10e0:	c6680154 	lwc1	$f8,340(s3)
    10e4:	c6640168 	lwc1	$f4,360(s3)
    10e8:	46044481 	sub.s	$f18,$f8,$f4
    10ec:	10000005 	b	1104 <func_80989D24+0x260>
    10f0:	e6720154 	swc1	$f18,340(s3)
    10f4:	c66a0154 	lwc1	$f10,340(s3)
    10f8:	c6660168 	lwc1	$f6,360(s3)
    10fc:	46065200 	add.s	$f8,$f10,$f6
    1100:	e6680154 	swc1	$f8,340(s3)
    1104:	8c420000 	lw	v0,0(v0)
    1108:	240100a0 	li	at,160
    110c:	54410011 	bnel	v0,at,1154 <func_80989D24+0x2b0>
    1110:	240100cd 	li	at,205
    1114:	c6640154 	lwc1	$f4,340(s3)
    1118:	c6720160 	lwc1	$f18,352(s3)
    111c:	461e6281 	sub.s	$f10,$f12,$f30
    1120:	46122380 	add.s	$f14,$f4,$f18
    1124:	460a703c 	c.lt.s	$f14,$f10
    1128:	00000000 	nop
    112c:	45020034 	bc1fl	1200 <func_80989D24+0x35c>
    1130:	c6680158 	lwc1	$f8,344(s3)
    1134:	926e0172 	lbu	t6,370(s3)
    1138:	c6660154 	lwc1	$f6,340(s3)
    113c:	c6680160 	lwc1	$f8,352(s3)
    1140:	25cf0001 	addiu	t7,t6,1
    1144:	a26f0172 	sb	t7,370(s3)
    1148:	1000002c 	b	11fc <func_80989D24+0x358>
    114c:	46083380 	add.s	$f14,$f6,$f8
    1150:	240100cd 	li	at,205
    1154:	54410011 	bnel	v0,at,119c <func_80989D24+0x2f8>
    1158:	c6640154 	lwc1	$f4,340(s3)
    115c:	c6640154 	lwc1	$f4,340(s3)
    1160:	c6720160 	lwc1	$f18,352(s3)
    1164:	461e6280 	add.s	$f10,$f12,$f30
    1168:	46122380 	add.s	$f14,$f4,$f18
    116c:	460e503c 	c.lt.s	$f10,$f14
    1170:	00000000 	nop
    1174:	45020022 	bc1fl	1200 <func_80989D24+0x35c>
    1178:	c6680158 	lwc1	$f8,344(s3)
    117c:	92780172 	lbu	t8,370(s3)
    1180:	c6660154 	lwc1	$f6,340(s3)
    1184:	c6680160 	lwc1	$f8,352(s3)
    1188:	27190001 	addiu	t9,t8,1
    118c:	a2790172 	sb	t9,370(s3)
    1190:	1000001a 	b	11fc <func_80989D24+0x358>
    1194:	46083380 	add.s	$f14,$f6,$f8
    1198:	c6640154 	lwc1	$f4,340(s3)
    119c:	c6720160 	lwc1	$f18,352(s3)
    11a0:	3c01447a 	lui	at,0x447a
    11a4:	44815000 	mtc1	at,$f10
    11a8:	46122380 	add.s	$f14,$f4,$f18
    11ac:	460e503c 	c.lt.s	$f10,$f14
    11b0:	00000000 	nop
    11b4:	45020012 	bc1fl	1200 <func_80989D24+0x35c>
    11b8:	c6680158 	lwc1	$f8,344(s3)
    11bc:	92680172 	lbu	t0,370(s3)
    11c0:	c6660154 	lwc1	$f6,340(s3)
    11c4:	c6680160 	lwc1	$f8,352(s3)
    11c8:	25090001 	addiu	t1,t0,1
    11cc:	a2690172 	sb	t1,370(s3)
    11d0:	1000000a 	b	11fc <func_80989D24+0x358>
    11d4:	46083380 	add.s	$f14,$f6,$f8
    11d8:	02a02825 	move	a1,s5
    11dc:	0c000000 	jal	0 <func_80988E80>
    11e0:	87a600de 	lh	a2,222(sp)
    11e4:	926a0172 	lbu	t2,370(s3)
    11e8:	c6640154 	lwc1	$f4,340(s3)
    11ec:	c6720160 	lwc1	$f18,352(s3)
    11f0:	254bffff 	addiu	t3,t2,-1
    11f4:	a26b0172 	sb	t3,370(s3)
    11f8:	46122380 	add.s	$f14,$f4,$f18
    11fc:	c6680158 	lwc1	$f8,344(s3)
    1200:	c6640164 	lwc1	$f4,356(s3)
    1204:	c66a0150 	lwc1	$f10,336(s3)
    1208:	c666015c 	lwc1	$f6,348(s3)
    120c:	46044480 	add.s	$f18,$f8,$f4
    1210:	00003825 	move	a3,zero
    1214:	46065300 	add.s	$f12,$f10,$f6
    1218:	44069000 	mfc1	a2,$f18
    121c:	0c000000 	jal	0 <func_80988E80>
    1220:	00000000 	nop
    1224:	3c0c0000 	lui	t4,0x0
    1228:	8d8c0000 	lw	t4,0(t4)
    122c:	240100a0 	li	at,160
    1230:	24050001 	li	a1,1
    1234:	11810003 	beq	t4,at,1244 <func_80989D24+0x3a0>
    1238:	3c010000 	lui	at,0x0
    123c:	0c000000 	jal	0 <func_80988E80>
    1240:	c42c0000 	lwc1	$f12,0(at)
    1244:	8e4302d0 	lw	v1,720(s2)
    1248:	3c0ee700 	lui	t6,0xe700
    124c:	3c0f0000 	lui	t7,0x0
    1250:	246d0008 	addiu	t5,v1,8
    1254:	ae4d02d0 	sw	t5,720(s2)
    1258:	ac600004 	sw	zero,4(v1)
    125c:	ac6e0000 	sw	t6,0(v1)
    1260:	8def0000 	lw	t7,0(t7)
    1264:	240100cd 	li	at,205
    1268:	3c0ec8ff 	lui	t6,0xc8ff
    126c:	15e10011 	bne	t7,at,12b4 <func_80989D24+0x410>
    1270:	3c0dfa00 	lui	t5,0xfa00
    1274:	8e4302d0 	lw	v1,720(s2)
    1278:	3c19fa00 	lui	t9,0xfa00
    127c:	2408ffff 	li	t0,-1
    1280:	24780008 	addiu	t8,v1,8
    1284:	ae5802d0 	sw	t8,720(s2)
    1288:	ac680004 	sw	t0,4(v1)
    128c:	ac790000 	sw	t9,0(v1)
    1290:	8e4302d0 	lw	v1,720(s2)
    1294:	3c0bffff 	lui	t3,0xffff
    1298:	356b00ff 	ori	t3,t3,0xff
    129c:	24690008 	addiu	t1,v1,8
    12a0:	ae4902d0 	sw	t1,720(s2)
    12a4:	3c0afb00 	lui	t2,0xfb00
    12a8:	ac6a0000 	sw	t2,0(v1)
    12ac:	1000000f 	b	12ec <func_80989D24+0x448>
    12b0:	ac6b0004 	sw	t3,4(v1)
    12b4:	8e4302d0 	lw	v1,720(s2)
    12b8:	35ceffff 	ori	t6,t6,0xffff
    12bc:	3c190096 	lui	t9,0x96
    12c0:	246c0008 	addiu	t4,v1,8
    12c4:	ae4c02d0 	sw	t4,720(s2)
    12c8:	ac6e0004 	sw	t6,4(v1)
    12cc:	ac6d0000 	sw	t5,0(v1)
    12d0:	8e4302d0 	lw	v1,720(s2)
    12d4:	3739ffff 	ori	t9,t9,0xffff
    12d8:	3c18fb00 	lui	t8,0xfb00
    12dc:	246f0008 	addiu	t7,v1,8
    12e0:	ae4f02d0 	sw	t7,720(s2)
    12e4:	ac790004 	sw	t9,4(v1)
    12e8:	ac780000 	sw	t8,0(v1)
    12ec:	3c080000 	lui	t0,0x0
    12f0:	85080000 	lh	t0,0(t0)
    12f4:	3c010000 	lui	at,0x0
    12f8:	c4280000 	lwc1	$f8,0(at)
    12fc:	44885000 	mtc1	t0,$f10
    1300:	24070001 	li	a3,1
    1304:	468051a0 	cvt.s.w	$f6,$f10
    1308:	46083302 	mul.s	$f12,$f6,$f8
    130c:	44066000 	mfc1	a2,$f12
    1310:	0c000000 	jal	0 <func_80988E80>
    1314:	46006386 	mov.s	$f14,$f12
    1318:	00008025 	move	s0,zero
    131c:	86a900a4 	lh	t1,164(s5)
    1320:	320c0001 	andi	t4,s0,0x1
    1324:	52c90032 	beql	s6,t1,13f0 <func_80989D24+0x54c>
    1328:	44904000 	mtc1	s0,$f8
    132c:	c6640150 	lwc1	$f4,336(s3)
    1330:	00105023 	negu	t2,s0
    1334:	00105823 	negu	t3,s0
    1338:	4604a03e 	c.le.s	$f20,$f4
    133c:	00106823 	negu	t5,s0
    1340:	45020008 	bc1fl	1364 <func_80989D24+0x4c0>
    1344:	44903000 	mtc1	s0,$f6
    1348:	448a9000 	mtc1	t2,$f18
    134c:	00000000 	nop
    1350:	468092a0 	cvt.s.w	$f10,$f18
    1354:	46165302 	mul.s	$f12,$f10,$f22
    1358:	10000007 	b	1378 <func_80989D24+0x4d4>
    135c:	c6640158 	lwc1	$f4,344(s3)
    1360:	44903000 	mtc1	s0,$f6
    1364:	00000000 	nop
    1368:	46803220 	cvt.s.w	$f8,$f6
    136c:	46164302 	mul.s	$f12,$f8,$f22
    1370:	00000000 	nop
    1374:	c6640158 	lwc1	$f4,344(s3)
    1378:	4604a03e 	c.le.s	$f20,$f4
    137c:	00000000 	nop
    1380:	45020008 	bc1fl	13a4 <func_80989D24+0x500>
    1384:	44903000 	mtc1	s0,$f6
    1388:	448b9000 	mtc1	t3,$f18
    138c:	00000000 	nop
    1390:	468092a0 	cvt.s.w	$f10,$f18
    1394:	46165002 	mul.s	$f0,$f10,$f22
    1398:	10000006 	b	13b4 <func_80989D24+0x510>
    139c:	00000000 	nop
    13a0:	44903000 	mtc1	s0,$f6
    13a4:	00000000 	nop
    13a8:	46803220 	cvt.s.w	$f8,$f6
    13ac:	46164002 	mul.s	$f0,$f8,$f22
    13b0:	00000000 	nop
    13b4:	51800008 	beqzl	t4,13d8 <func_80989D24+0x534>
    13b8:	448d5000 	mtc1	t5,$f10
    13bc:	44902000 	mtc1	s0,$f4
    13c0:	00000000 	nop
    13c4:	468024a0 	cvt.s.w	$f18,$f4
    13c8:	46189382 	mul.s	$f14,$f18,$f24
    13cc:	1000000e 	b	1408 <func_80989D24+0x564>
    13d0:	44060000 	mfc1	a2,$f0
    13d4:	448d5000 	mtc1	t5,$f10
    13d8:	00000000 	nop
    13dc:	468051a0 	cvt.s.w	$f6,$f10
    13e0:	46183382 	mul.s	$f14,$f6,$f24
    13e4:	10000008 	b	1408 <func_80989D24+0x564>
    13e8:	44060000 	mfc1	a2,$f0
    13ec:	44904000 	mtc1	s0,$f8
    13f0:	4600a306 	mov.s	$f12,$f20
    13f4:	4600a006 	mov.s	$f0,$f20
    13f8:	46804120 	cvt.s.w	$f4,$f8
    13fc:	461a2382 	mul.s	$f14,$f4,$f26
    1400:	00000000 	nop
    1404:	44060000 	mfc1	a2,$f0
    1408:	0c000000 	jal	0 <func_80988E80>
    140c:	24070001 	li	a3,1
    1410:	8e5102d0 	lw	s1,720(s2)
    1414:	03c02825 	move	a1,s8
    1418:	24060540 	li	a2,1344
    141c:	262e0008 	addiu	t6,s1,8
    1420:	ae4e02d0 	sw	t6,720(s2)
    1424:	ae370000 	sw	s7,0(s1)
    1428:	0c000000 	jal	0 <func_80988E80>
    142c:	8ea40000 	lw	a0,0(s5)
    1430:	ae220004 	sw	v0,4(s1)
    1434:	8e4402d0 	lw	a0,720(s2)
    1438:	0c000000 	jal	0 <func_80988E80>
    143c:	24050014 	li	a1,20
    1440:	ae4202d0 	sw	v0,720(s2)
    1444:	244f0008 	addiu	t7,v0,8
    1448:	26100001 	addiu	s0,s0,1
    144c:	ae4f02d0 	sw	t7,720(s2)
    1450:	3c18de00 	lui	t8,0xde00
    1454:	00108400 	sll	s0,s0,0x10
    1458:	ac580000 	sw	t8,0(v0)
    145c:	8fb90074 	lw	t9,116(sp)
    1460:	00108403 	sra	s0,s0,0x10
    1464:	2a010005 	slti	at,s0,5
    1468:	1420ffac 	bnez	at,131c <func_80989D24+0x478>
    146c:	ac590004 	sw	t9,4(v0)
    1470:	87a800de 	lh	t0,222(sp)
    1474:	25090001 	addiu	t1,t0,1
    1478:	00095400 	sll	t2,t1,0x10
    147c:	000a5c03 	sra	t3,t2,0x10
    1480:	2961001e 	slti	at,t3,30
    1484:	1420feb5 	bnez	at,f5c <func_80989D24+0xb8>
    1488:	a7a900de 	sh	t1,222(sp)
    148c:	3c060000 	lui	a2,0x0
    1490:	24c60000 	addiu	a2,a2,0
    1494:	27a400a8 	addiu	a0,sp,168
    1498:	8ea50000 	lw	a1,0(s5)
    149c:	0c000000 	jal	0 <func_80988E80>
    14a0:	2407054e 	li	a3,1358
    14a4:	8fbf006c 	lw	ra,108(sp)
    14a8:	d7b40018 	ldc1	$f20,24(sp)
    14ac:	d7b60020 	ldc1	$f22,32(sp)
    14b0:	d7b80028 	ldc1	$f24,40(sp)
    14b4:	d7ba0030 	ldc1	$f26,48(sp)
    14b8:	d7bc0038 	ldc1	$f28,56(sp)
    14bc:	d7be0040 	ldc1	$f30,64(sp)
    14c0:	8fb00048 	lw	s0,72(sp)
    14c4:	8fb1004c 	lw	s1,76(sp)
    14c8:	8fb20050 	lw	s2,80(sp)
    14cc:	8fb30054 	lw	s3,84(sp)
    14d0:	8fb40058 	lw	s4,88(sp)
    14d4:	8fb5005c 	lw	s5,92(sp)
    14d8:	8fb60060 	lw	s6,96(sp)
    14dc:	8fb70064 	lw	s7,100(sp)
    14e0:	8fbe0068 	lw	s8,104(sp)
    14e4:	03e00008 	jr	ra
    14e8:	27bd00e8 	addiu	sp,sp,232

000014ec <func_8098A36C>:
    14ec:	27bdffb0 	addiu	sp,sp,-80
    14f0:	afbf001c 	sw	ra,28(sp)
    14f4:	afb10018 	sw	s1,24(sp)
    14f8:	afb00014 	sw	s0,20(sp)
    14fc:	afa50054 	sw	a1,84(sp)
    1500:	8ca50000 	lw	a1,0(a1)
    1504:	00808025 	move	s0,a0
    1508:	3c060000 	lui	a2,0x0
    150c:	24c60000 	addiu	a2,a2,0
    1510:	27a40034 	addiu	a0,sp,52
    1514:	24070560 	li	a3,1376
    1518:	0c000000 	jal	0 <func_80988E80>
    151c:	00a08825 	move	s1,a1
    1520:	8faf0054 	lw	t7,84(sp)
    1524:	0c000000 	jal	0 <func_80988E80>
    1528:	8de40000 	lw	a0,0(t7)
    152c:	c60c0024 	lwc1	$f12,36(s0)
    1530:	c60e0028 	lwc1	$f14,40(s0)
    1534:	8e06002c 	lw	a2,44(s0)
    1538:	0c000000 	jal	0 <func_80988E80>
    153c:	00003825 	move	a3,zero
    1540:	3c010000 	lui	at,0x0
    1544:	c4260000 	lwc1	$f6,0(at)
    1548:	c604015c 	lwc1	$f4,348(s0)
    154c:	24050001 	li	a1,1
    1550:	46062302 	mul.s	$f12,$f4,$f6
    1554:	0c000000 	jal	0 <func_80988E80>
    1558:	00000000 	nop
    155c:	3c010000 	lui	at,0x0
    1560:	c42a0000 	lwc1	$f10,0(at)
    1564:	c6080160 	lwc1	$f8,352(s0)
    1568:	24050001 	li	a1,1
    156c:	460a4302 	mul.s	$f12,$f8,$f10
    1570:	0c000000 	jal	0 <func_80988E80>
    1574:	00000000 	nop
    1578:	3c010000 	lui	at,0x0
    157c:	c4320000 	lwc1	$f18,0(at)
    1580:	c6100164 	lwc1	$f16,356(s0)
    1584:	24050001 	li	a1,1
    1588:	46128302 	mul.s	$f12,$f16,$f18
    158c:	0c000000 	jal	0 <func_80988E80>
    1590:	00000000 	nop
    1594:	c60c0050 	lwc1	$f12,80(s0)
    1598:	c60e0054 	lwc1	$f14,84(s0)
    159c:	8e060058 	lw	a2,88(s0)
    15a0:	0c000000 	jal	0 <func_80988E80>
    15a4:	24070001 	li	a3,1
    15a8:	8e2202c0 	lw	v0,704(s1)
    15ac:	3c08ff9b 	lui	t0,0xff9b
    15b0:	350837ff 	ori	t0,t0,0x37ff
    15b4:	24580008 	addiu	t8,v0,8
    15b8:	ae3802c0 	sw	t8,704(s1)
    15bc:	3c19fa00 	lui	t9,0xfa00
    15c0:	ac590000 	sw	t9,0(v0)
    15c4:	ac480004 	sw	t0,4(v0)
    15c8:	8e2202c0 	lw	v0,704(s1)
    15cc:	3c0b9bff 	lui	t3,0x9bff
    15d0:	356b37ff 	ori	t3,t3,0x37ff
    15d4:	24490008 	addiu	t1,v0,8
    15d8:	ae2902c0 	sw	t1,704(s1)
    15dc:	3c0afb00 	lui	t2,0xfb00
    15e0:	ac4a0000 	sw	t2,0(v0)
    15e4:	ac4b0004 	sw	t3,4(v0)
    15e8:	8e2202c0 	lw	v0,704(s1)
    15ec:	3c0dda38 	lui	t5,0xda38
    15f0:	35ad0003 	ori	t5,t5,0x3
    15f4:	244c0008 	addiu	t4,v0,8
    15f8:	ae2c02c0 	sw	t4,704(s1)
    15fc:	ac4d0000 	sw	t5,0(v0)
    1600:	8fae0054 	lw	t6,84(sp)
    1604:	3c050000 	lui	a1,0x0
    1608:	24a50000 	addiu	a1,a1,0
    160c:	2406057c 	li	a2,1404
    1610:	00408025 	move	s0,v0
    1614:	0c000000 	jal	0 <func_80988E80>
    1618:	8dc40000 	lw	a0,0(t6)
    161c:	ae020004 	sw	v0,4(s0)
    1620:	8e2202c0 	lw	v0,704(s1)
    1624:	3c190600 	lui	t9,0x600
    1628:	27390de0 	addiu	t9,t9,3552
    162c:	244f0008 	addiu	t7,v0,8
    1630:	ae2f02c0 	sw	t7,704(s1)
    1634:	3c18de00 	lui	t8,0xde00
    1638:	ac580000 	sw	t8,0(v0)
    163c:	ac590004 	sw	t9,4(v0)
    1640:	8fa80054 	lw	t0,84(sp)
    1644:	3c060000 	lui	a2,0x0
    1648:	24c60000 	addiu	a2,a2,0
    164c:	27a40034 	addiu	a0,sp,52
    1650:	24070581 	li	a3,1409
    1654:	0c000000 	jal	0 <func_80988E80>
    1658:	8d050000 	lw	a1,0(t0)
    165c:	8fbf001c 	lw	ra,28(sp)
    1660:	8fb00014 	lw	s0,20(sp)
    1664:	8fb10018 	lw	s1,24(sp)
    1668:	03e00008 	jr	ra
    166c:	27bd0050 	addiu	sp,sp,80

00001670 <func_8098A4F0>:
    1670:	27bdff20 	addiu	sp,sp,-224
    1674:	afb30054 	sw	s3,84(sp)
    1678:	00a09825 	move	s3,a1
    167c:	afbf006c 	sw	ra,108(sp)
    1680:	afbe0068 	sw	s8,104(sp)
    1684:	afb70064 	sw	s7,100(sp)
    1688:	afb60060 	sw	s6,96(sp)
    168c:	afb5005c 	sw	s5,92(sp)
    1690:	afb40058 	sw	s4,88(sp)
    1694:	afb20050 	sw	s2,80(sp)
    1698:	afb1004c 	sw	s1,76(sp)
    169c:	afb00048 	sw	s0,72(sp)
    16a0:	f7be0040 	sdc1	$f30,64(sp)
    16a4:	f7bc0038 	sdc1	$f28,56(sp)
    16a8:	f7ba0030 	sdc1	$f26,48(sp)
    16ac:	f7b80028 	sdc1	$f24,40(sp)
    16b0:	f7b60020 	sdc1	$f22,32(sp)
    16b4:	f7b40018 	sdc1	$f20,24(sp)
    16b8:	8ca50000 	lw	a1,0(a1)
    16bc:	0080a025 	move	s4,a0
    16c0:	3c060000 	lui	a2,0x0
    16c4:	24c60000 	addiu	a2,a2,0
    16c8:	27a400b4 	addiu	a0,sp,180
    16cc:	24070591 	li	a3,1425
    16d0:	0c000000 	jal	0 <func_80988E80>
    16d4:	00a08025 	move	s0,a1
    16d8:	3c020405 	lui	v0,0x405
    16dc:	3c0100ff 	lui	at,0xff
    16e0:	3421ffff 	ori	at,at,0xffff
    16e4:	24422db0 	addiu	v0,v0,11696
    16e8:	0041b824 	and	s7,v0,at
    16ec:	3c0141f0 	lui	at,0x41f0
    16f0:	4481f000 	mtc1	at,$f30
    16f4:	00027100 	sll	t6,v0,0x4
    16f8:	000e7f02 	srl	t7,t6,0x1c
    16fc:	3c0142f0 	lui	at,0x42f0
    1700:	3c190000 	lui	t9,0x0
    1704:	3c080401 	lui	t0,0x401
    1708:	25080050 	addiu	t0,t0,80
    170c:	27390000 	addiu	t9,t9,0
    1710:	000fc080 	sll	t8,t7,0x2
    1714:	3c1e0100 	lui	s8,0x100
    1718:	3c15e300 	lui	s5,0xe300
    171c:	4481e000 	mtc1	at,$f28
    1720:	36b51801 	ori	s5,s5,0x1801
    1724:	27de0000 	addiu	s8,s8,0
    1728:	0319b021 	addu	s6,t8,t9
    172c:	afa80078 	sw	t0,120(sp)
    1730:	00009025 	move	s2,zero
    1734:	00124880 	sll	t1,s2,0x2
    1738:	01324821 	addu	t1,t1,s2
    173c:	000948c0 	sll	t1,t1,0x3
    1740:	02898821 	addu	s1,s4,t1
    1744:	86240170 	lh	a0,368(s1)
    1748:	24018000 	li	at,-32768
    174c:	00812021 	addu	a0,a0,at
    1750:	00042400 	sll	a0,a0,0x10
    1754:	0c000000 	jal	0 <func_80988E80>
    1758:	00042403 	sra	a0,a0,0x10
    175c:	44922000 	mtc1	s2,$f4
    1760:	3c014120 	lui	at,0x4120
    1764:	44814000 	mtc1	at,$f8
    1768:	46802520 	cvt.s.w	$f20,$f4
    176c:	86240170 	lh	a0,368(s1)
    1770:	24018000 	li	at,-32768
    1774:	00812021 	addu	a0,a0,at
    1778:	00042400 	sll	a0,a0,0x10
    177c:	461ea183 	div.s	$f6,$f20,$f30
    1780:	00042403 	sra	a0,a0,0x10
    1784:	46083282 	mul.s	$f10,$f6,$f8
    1788:	00000000 	nop
    178c:	461c0402 	mul.s	$f16,$f0,$f28
    1790:	460af580 	add.s	$f22,$f30,$f10
    1794:	46008487 	neg.s	$f18,$f16
    1798:	46169602 	mul.s	$f24,$f18,$f22
    179c:	0c000000 	jal	0 <func_80988E80>
    17a0:	00000000 	nop
    17a4:	3c0140a0 	lui	at,0x40a0
    17a8:	44812000 	mtc1	at,$f4
    17ac:	86240170 	lh	a0,368(s1)
    17b0:	3c014496 	lui	at,0x4496
    17b4:	46040182 	mul.s	$f6,$f0,$f4
    17b8:	44814000 	mtc1	at,$f8
    17bc:	24018000 	li	at,-32768
    17c0:	00812021 	addu	a0,a0,at
    17c4:	00042400 	sll	a0,a0,0x10
    17c8:	00042403 	sra	a0,a0,0x10
    17cc:	0c000000 	jal	0 <func_80988E80>
    17d0:	46083680 	add.s	$f26,$f6,$f8
    17d4:	3c014140 	lui	at,0x4140
    17d8:	44818000 	mtc1	at,$f16
    17dc:	3c014396 	lui	at,0x4396
    17e0:	44812000 	mtc1	at,$f4
    17e4:	4610a481 	sub.s	$f18,$f20,$f16
    17e8:	c66a00e0 	lwc1	$f10,224(s3)
    17ec:	c66800e4 	lwc1	$f8,228(s3)
    17f0:	c67000e8 	lwc1	$f16,232(s3)
    17f4:	46049182 	mul.s	$f6,$f18,$f4
    17f8:	46185300 	add.s	$f12,$f10,$f24
    17fc:	00003825 	move	a3,zero
    1800:	461c0482 	mul.s	$f18,$f0,$f28
    1804:	461a4280 	add.s	$f10,$f8,$f26
    1808:	46065380 	add.s	$f14,$f10,$f6
    180c:	46169102 	mul.s	$f4,$f18,$f22
    1810:	46048200 	add.s	$f8,$f16,$f4
    1814:	44064000 	mfc1	a2,$f8
    1818:	0c000000 	jal	0 <func_80988E80>
    181c:	00000000 	nop
    1820:	3c0142fa 	lui	at,0x42fa
    1824:	44816000 	mtc1	at,$f12
    1828:	3c014270 	lui	at,0x4270
    182c:	44817000 	mtc1	at,$f14
    1830:	44066000 	mfc1	a2,$f12
    1834:	0c000000 	jal	0 <func_80988E80>
    1838:	24070001 	li	a3,1
    183c:	8e0202d0 	lw	v0,720(s0)
    1840:	3c0be700 	lui	t3,0xe700
    1844:	3c0ed2d2 	lui	t6,0xd2d2
    1848:	244a0008 	addiu	t2,v0,8
    184c:	ae0a02d0 	sw	t2,720(s0)
    1850:	ac4b0000 	sw	t3,0(v0)
    1854:	ac400004 	sw	zero,4(v0)
    1858:	8e0202d0 	lw	v0,720(s0)
    185c:	35ceffff 	ori	t6,t6,0xffff
    1860:	3c0dfa00 	lui	t5,0xfa00
    1864:	244c0008 	addiu	t4,v0,8
    1868:	ae0c02d0 	sw	t4,720(s0)
    186c:	ac4d0000 	sw	t5,0(v0)
    1870:	ac4e0004 	sw	t6,4(v0)
    1874:	8e0202d0 	lw	v0,720(s0)
    1878:	3c18fb00 	lui	t8,0xfb00
    187c:	2419ffff 	li	t9,-1
    1880:	244f0008 	addiu	t7,v0,8
    1884:	ae0f02d0 	sw	t7,720(s0)
    1888:	ac580000 	sw	t8,0(v0)
    188c:	ac590004 	sw	t9,4(v0)
    1890:	8e0202d0 	lw	v0,720(s0)
    1894:	240900c0 	li	t1,192
    1898:	240b0010 	li	t3,16
    189c:	24480008 	addiu	t0,v0,8
    18a0:	ae0802d0 	sw	t0,720(s0)
    18a4:	ac550000 	sw	s5,0(v0)
    18a8:	ac490004 	sw	t1,4(v0)
    18ac:	8e0202d0 	lw	v0,720(s0)
    18b0:	3c0dda38 	lui	t5,0xda38
    18b4:	35ad0003 	ori	t5,t5,0x3
    18b8:	244a0008 	addiu	t2,v0,8
    18bc:	ae0a02d0 	sw	t2,720(s0)
    18c0:	ac550000 	sw	s5,0(v0)
    18c4:	ac4b0004 	sw	t3,4(v0)
    18c8:	8e0202d0 	lw	v0,720(s0)
    18cc:	3c050000 	lui	a1,0x0
    18d0:	24a50000 	addiu	a1,a1,0
    18d4:	244c0008 	addiu	t4,v0,8
    18d8:	ae0c02d0 	sw	t4,720(s0)
    18dc:	ac4d0000 	sw	t5,0(v0)
    18e0:	8e640000 	lw	a0,0(s3)
    18e4:	240605b5 	li	a2,1461
    18e8:	0c000000 	jal	0 <func_80988E80>
    18ec:	00408825 	move	s1,v0
    18f0:	ae220004 	sw	v0,4(s1)
    18f4:	8e0202d0 	lw	v0,720(s0)
    18f8:	3c0fdb06 	lui	t7,0xdb06
    18fc:	35ef0020 	ori	t7,t7,0x20
    1900:	244e0008 	addiu	t6,v0,8
    1904:	ae0e02d0 	sw	t6,720(s0)
    1908:	ac4f0000 	sw	t7,0(v0)
    190c:	8ed80000 	lw	t8,0(s6)
    1910:	3c018000 	lui	at,0x8000
    1914:	0317c821 	addu	t9,t8,s7
    1918:	03214021 	addu	t0,t9,at
    191c:	ac480004 	sw	t0,4(v0)
    1920:	0c000000 	jal	0 <func_80988E80>
    1924:	8e640000 	lw	a0,0(s3)
    1928:	8e0202d0 	lw	v0,720(s0)
    192c:	3c0ada38 	lui	t2,0xda38
    1930:	354a0001 	ori	t2,t2,0x1
    1934:	24490008 	addiu	t1,v0,8
    1938:	ae0902d0 	sw	t1,720(s0)
    193c:	ac5e0004 	sw	s8,4(v0)
    1940:	ac4a0000 	sw	t2,0(v0)
    1944:	8e0202d0 	lw	v0,720(s0)
    1948:	26520001 	addiu	s2,s2,1
    194c:	3c0cde00 	lui	t4,0xde00
    1950:	244b0008 	addiu	t3,v0,8
    1954:	ae0b02d0 	sw	t3,720(s0)
    1958:	00129400 	sll	s2,s2,0x10
    195c:	ac4c0000 	sw	t4,0(v0)
    1960:	8fad0078 	lw	t5,120(sp)
    1964:	00129403 	sra	s2,s2,0x10
    1968:	2a41001e 	slti	at,s2,30
    196c:	1420ff71 	bnez	at,1734 <func_8098A4F0+0xc4>
    1970:	ac4d0004 	sw	t5,4(v0)
    1974:	3c060000 	lui	a2,0x0
    1978:	24c60000 	addiu	a2,a2,0
    197c:	27a400b4 	addiu	a0,sp,180
    1980:	8e650000 	lw	a1,0(s3)
    1984:	0c000000 	jal	0 <func_80988E80>
    1988:	240705c2 	li	a3,1474
    198c:	8fbf006c 	lw	ra,108(sp)
    1990:	d7b40018 	ldc1	$f20,24(sp)
    1994:	d7b60020 	ldc1	$f22,32(sp)
    1998:	d7b80028 	ldc1	$f24,40(sp)
    199c:	d7ba0030 	ldc1	$f26,48(sp)
    19a0:	d7bc0038 	ldc1	$f28,56(sp)
    19a4:	d7be0040 	ldc1	$f30,64(sp)
    19a8:	8fb00048 	lw	s0,72(sp)
    19ac:	8fb1004c 	lw	s1,76(sp)
    19b0:	8fb20050 	lw	s2,80(sp)
    19b4:	8fb30054 	lw	s3,84(sp)
    19b8:	8fb40058 	lw	s4,88(sp)
    19bc:	8fb5005c 	lw	s5,92(sp)
    19c0:	8fb60060 	lw	s6,96(sp)
    19c4:	8fb70064 	lw	s7,100(sp)
    19c8:	8fbe0068 	lw	s8,104(sp)
    19cc:	03e00008 	jr	ra
    19d0:	27bd00e0 	addiu	sp,sp,224

000019d4 <func_8098A854>:
    19d4:	27bdffb0 	addiu	sp,sp,-80
    19d8:	afb10018 	sw	s1,24(sp)
    19dc:	00a08825 	move	s1,a1
    19e0:	afbf001c 	sw	ra,28(sp)
    19e4:	afb00014 	sw	s0,20(sp)
    19e8:	afa40050 	sw	a0,80(sp)
    19ec:	8ca50000 	lw	a1,0(a1)
    19f0:	3c060000 	lui	a2,0x0
    19f4:	24c60000 	addiu	a2,a2,0
    19f8:	27a40034 	addiu	a0,sp,52
    19fc:	240705cf 	li	a3,1487
    1a00:	0c000000 	jal	0 <func_80988E80>
    1a04:	00a08025 	move	s0,a1
    1a08:	0c000000 	jal	0 <func_80988E80>
    1a0c:	8e240000 	lw	a0,0(s1)
    1a10:	8fae0050 	lw	t6,80(sp)
    1a14:	44807000 	mtc1	zero,$f14
    1a18:	24070001 	li	a3,1
    1a1c:	c5cc0168 	lwc1	$f12,360(t6)
    1a20:	44067000 	mfc1	a2,$f14
    1a24:	0c000000 	jal	0 <func_80988E80>
    1a28:	46006307 	neg.s	$f12,$f12
    1a2c:	8e0202c0 	lw	v0,704(s0)
    1a30:	3c18da38 	lui	t8,0xda38
    1a34:	37180003 	ori	t8,t8,0x3
    1a38:	244f0008 	addiu	t7,v0,8
    1a3c:	ae0f02c0 	sw	t7,704(s0)
    1a40:	ac580000 	sw	t8,0(v0)
    1a44:	8e240000 	lw	a0,0(s1)
    1a48:	3c050000 	lui	a1,0x0
    1a4c:	24a50000 	addiu	a1,a1,0
    1a50:	240605d4 	li	a2,1492
    1a54:	0c000000 	jal	0 <func_80988E80>
    1a58:	afa20030 	sw	v0,48(sp)
    1a5c:	8fa30030 	lw	v1,48(sp)
    1a60:	3c090600 	lui	t1,0x600
    1a64:	25297440 	addiu	t1,t1,29760
    1a68:	ac620004 	sw	v0,4(v1)
    1a6c:	8e0202c0 	lw	v0,704(s0)
    1a70:	3c08de00 	lui	t0,0xde00
    1a74:	44807000 	mtc1	zero,$f14
    1a78:	24590008 	addiu	t9,v0,8
    1a7c:	ae1902c0 	sw	t9,704(s0)
    1a80:	ac490004 	sw	t1,4(v0)
    1a84:	ac480000 	sw	t0,0(v0)
    1a88:	8faa0050 	lw	t2,80(sp)
    1a8c:	44067000 	mfc1	a2,$f14
    1a90:	24070001 	li	a3,1
    1a94:	c5400168 	lwc1	$f0,360(t2)
    1a98:	0c000000 	jal	0 <func_80988E80>
    1a9c:	46000300 	add.s	$f12,$f0,$f0
    1aa0:	8e0202c0 	lw	v0,704(s0)
    1aa4:	3c0cda38 	lui	t4,0xda38
    1aa8:	358c0003 	ori	t4,t4,0x3
    1aac:	244b0008 	addiu	t3,v0,8
    1ab0:	ae0b02c0 	sw	t3,704(s0)
    1ab4:	ac4c0000 	sw	t4,0(v0)
    1ab8:	8e240000 	lw	a0,0(s1)
    1abc:	3c050000 	lui	a1,0x0
    1ac0:	24a50000 	addiu	a1,a1,0
    1ac4:	240605d9 	li	a2,1497
    1ac8:	0c000000 	jal	0 <func_80988E80>
    1acc:	afa20028 	sw	v0,40(sp)
    1ad0:	8fa30028 	lw	v1,40(sp)
    1ad4:	3c0f0600 	lui	t7,0x600
    1ad8:	25ef7578 	addiu	t7,t7,30072
    1adc:	ac620004 	sw	v0,4(v1)
    1ae0:	8e0202c0 	lw	v0,704(s0)
    1ae4:	3c0ede00 	lui	t6,0xde00
    1ae8:	3c060000 	lui	a2,0x0
    1aec:	244d0008 	addiu	t5,v0,8
    1af0:	ae0d02c0 	sw	t5,704(s0)
    1af4:	ac4f0004 	sw	t7,4(v0)
    1af8:	ac4e0000 	sw	t6,0(v0)
    1afc:	8e250000 	lw	a1,0(s1)
    1b00:	24c60000 	addiu	a2,a2,0
    1b04:	27a40034 	addiu	a0,sp,52
    1b08:	0c000000 	jal	0 <func_80988E80>
    1b0c:	240705dd 	li	a3,1501
    1b10:	8fbf001c 	lw	ra,28(sp)
    1b14:	8fb00014 	lw	s0,20(sp)
    1b18:	8fb10018 	lw	s1,24(sp)
    1b1c:	03e00008 	jr	ra
    1b20:	27bd0050 	addiu	sp,sp,80

00001b24 <func_8098A9A4>:
    1b24:	27bdffa8 	addiu	sp,sp,-88
    1b28:	afb10020 	sw	s1,32(sp)
    1b2c:	00a08825 	move	s1,a1
    1b30:	afbf0024 	sw	ra,36(sp)
    1b34:	afb0001c 	sw	s0,28(sp)
    1b38:	afa40058 	sw	a0,88(sp)
    1b3c:	8ca50000 	lw	a1,0(a1)
    1b40:	3c060000 	lui	a2,0x0
    1b44:	24c60000 	addiu	a2,a2,0
    1b48:	27a4003c 	addiu	a0,sp,60
    1b4c:	240705ea 	li	a3,1514
    1b50:	0c000000 	jal	0 <func_80988E80>
    1b54:	00a08025 	move	s0,a1
    1b58:	922e1d6c 	lbu	t6,7532(s1)
    1b5c:	3c0f0000 	lui	t7,0x0
    1b60:	11c00005 	beqz	t6,1b78 <func_8098A9A4+0x54>
    1b64:	00000000 	nop
    1b68:	8def1360 	lw	t7,4960(t7)
    1b6c:	29e10004 	slti	at,t7,4
    1b70:	1420002a 	bnez	at,1c1c <func_8098A9A4+0xf8>
    1b74:	00000000 	nop
    1b78:	0c000000 	jal	0 <func_80988E80>
    1b7c:	8e240000 	lw	a0,0(s1)
    1b80:	8e0202d0 	lw	v0,720(s0)
    1b84:	3c19db06 	lui	t9,0xdb06
    1b88:	37390020 	ori	t9,t9,0x20
    1b8c:	24580008 	addiu	t8,v0,8
    1b90:	ae1802d0 	sw	t8,720(s0)
    1b94:	ac590000 	sw	t9,0(v0)
    1b98:	8e26009c 	lw	a2,156(s1)
    1b9c:	8e240000 	lw	a0,0(s1)
    1ba0:	24080020 	li	t0,32
    1ba4:	afa80010 	sw	t0,16(sp)
    1ba8:	00002825 	move	a1,zero
    1bac:	24070040 	li	a3,64
    1bb0:	afa20038 	sw	v0,56(sp)
    1bb4:	0c000000 	jal	0 <func_80988E80>
    1bb8:	30c6007f 	andi	a2,a2,0x7f
    1bbc:	8fa30038 	lw	v1,56(sp)
    1bc0:	3c0ada38 	lui	t2,0xda38
    1bc4:	354a0003 	ori	t2,t2,0x3
    1bc8:	ac620004 	sw	v0,4(v1)
    1bcc:	8e0202d0 	lw	v0,720(s0)
    1bd0:	3c050000 	lui	a1,0x0
    1bd4:	24a50000 	addiu	a1,a1,0
    1bd8:	24490008 	addiu	t1,v0,8
    1bdc:	ae0902d0 	sw	t1,720(s0)
    1be0:	ac4a0000 	sw	t2,0(v0)
    1be4:	8e240000 	lw	a0,0(s1)
    1be8:	240605f9 	li	a2,1529
    1bec:	0c000000 	jal	0 <func_80988E80>
    1bf0:	afa20034 	sw	v0,52(sp)
    1bf4:	8fa30034 	lw	v1,52(sp)
    1bf8:	3c0d0601 	lui	t5,0x601
    1bfc:	25ad8390 	addiu	t5,t5,-31856
    1c00:	ac620004 	sw	v0,4(v1)
    1c04:	8e0202d0 	lw	v0,720(s0)
    1c08:	3c0cde00 	lui	t4,0xde00
    1c0c:	244b0008 	addiu	t3,v0,8
    1c10:	ae0b02d0 	sw	t3,720(s0)
    1c14:	ac4d0004 	sw	t5,4(v0)
    1c18:	ac4c0000 	sw	t4,0(v0)
    1c1c:	3c060000 	lui	a2,0x0
    1c20:	24c60000 	addiu	a2,a2,0
    1c24:	27a4003c 	addiu	a0,sp,60
    1c28:	8e250000 	lw	a1,0(s1)
    1c2c:	0c000000 	jal	0 <func_80988E80>
    1c30:	240705fe 	li	a3,1534
    1c34:	8fbf0024 	lw	ra,36(sp)
    1c38:	8fb0001c 	lw	s0,28(sp)
    1c3c:	8fb10020 	lw	s1,32(sp)
    1c40:	03e00008 	jr	ra
    1c44:	27bd0058 	addiu	sp,sp,88

00001c48 <func_8098AAC8>:
    1c48:	c4840000 	lwc1	$f4,0(a0)
    1c4c:	e4a40000 	swc1	$f4,0(a1)
    1c50:	c4860004 	lwc1	$f6,4(a0)
    1c54:	e4a60004 	swc1	$f6,4(a1)
    1c58:	c4880008 	lwc1	$f8,8(a0)
    1c5c:	03e00008 	jr	ra
    1c60:	e4a80008 	swc1	$f8,8(a1)

00001c64 <func_8098AAE4>:
    1c64:	27bdffd0 	addiu	sp,sp,-48
    1c68:	afbf0014 	sw	ra,20(sp)
    1c6c:	afa40030 	sw	a0,48(sp)
    1c70:	00a03825 	move	a3,a1
    1c74:	afa70034 	sw	a3,52(sp)
    1c78:	00c02825 	move	a1,a2
    1c7c:	0c000000 	jal	0 <func_80988E80>
    1c80:	27a40018 	addiu	a0,sp,24
    1c84:	8fa70034 	lw	a3,52(sp)
    1c88:	c7a60018 	lwc1	$f6,24(sp)
    1c8c:	c7b0001c 	lwc1	$f16,28(sp)
    1c90:	c4e40000 	lwc1	$f4,0(a3)
    1c94:	27ae0024 	addiu	t6,sp,36
    1c98:	8fa20030 	lw	v0,48(sp)
    1c9c:	46062200 	add.s	$f8,$f4,$f6
    1ca0:	c7a60020 	lwc1	$f6,32(sp)
    1ca4:	e7a80024 	swc1	$f8,36(sp)
    1ca8:	c4ea0004 	lwc1	$f10,4(a3)
    1cac:	46105480 	add.s	$f18,$f10,$f16
    1cb0:	e7b20028 	swc1	$f18,40(sp)
    1cb4:	c4e40008 	lwc1	$f4,8(a3)
    1cb8:	46062200 	add.s	$f8,$f4,$f6
    1cbc:	e7a8002c 	swc1	$f8,44(sp)
    1cc0:	8dd80000 	lw	t8,0(t6)
    1cc4:	ac580000 	sw	t8,0(v0)
    1cc8:	8dcf0004 	lw	t7,4(t6)
    1ccc:	ac4f0004 	sw	t7,4(v0)
    1cd0:	8dd80008 	lw	t8,8(t6)
    1cd4:	ac580008 	sw	t8,8(v0)
    1cd8:	8fbf0014 	lw	ra,20(sp)
    1cdc:	27bd0030 	addiu	sp,sp,48
    1ce0:	03e00008 	jr	ra
    1ce4:	00000000 	nop

00001ce8 <func_8098AB68>:
    1ce8:	27bdffd0 	addiu	sp,sp,-48
    1cec:	afa40030 	sw	a0,48(sp)
    1cf0:	afbf0014 	sw	ra,20(sp)
    1cf4:	00a02025 	move	a0,a1
    1cf8:	afa60038 	sw	a2,56(sp)
    1cfc:	0c000000 	jal	0 <func_80988E80>
    1d00:	27a5001c 	addiu	a1,sp,28
    1d04:	27a40028 	addiu	a0,sp,40
    1d08:	0c000000 	jal	0 <func_80988E80>
    1d0c:	27a5001c 	addiu	a1,sp,28
    1d10:	8fa50030 	lw	a1,48(sp)
    1d14:	87ae002e 	lh	t6,46(sp)
    1d18:	8fa40038 	lw	a0,56(sp)
    1d1c:	84af000e 	lh	t7,14(a1)
    1d20:	27a60028 	addiu	a2,sp,40
    1d24:	01cfc021 	addu	t8,t6,t7
    1d28:	0c000000 	jal	0 <func_80988E80>
    1d2c:	a7b8002e 	sh	t8,46(sp)
    1d30:	8fbf0014 	lw	ra,20(sp)
    1d34:	27bd0030 	addiu	sp,sp,48
    1d38:	03e00008 	jr	ra
    1d3c:	00000000 	nop

00001d40 <func_8098ABC0>:
    1d40:	27bdff08 	addiu	sp,sp,-248
    1d44:	afbf006c 	sw	ra,108(sp)
    1d48:	afb60068 	sw	s6,104(sp)
    1d4c:	afb50064 	sw	s5,100(sp)
    1d50:	afb40060 	sw	s4,96(sp)
    1d54:	afb3005c 	sw	s3,92(sp)
    1d58:	afb20058 	sw	s2,88(sp)
    1d5c:	afb10054 	sw	s1,84(sp)
    1d60:	afb00050 	sw	s0,80(sp)
    1d64:	f7be0048 	sdc1	$f30,72(sp)
    1d68:	f7bc0040 	sdc1	$f28,64(sp)
    1d6c:	f7ba0038 	sdc1	$f26,56(sp)
    1d70:	f7b80030 	sdc1	$f24,48(sp)
    1d74:	f7b60028 	sdc1	$f22,40(sp)
    1d78:	f7b40020 	sdc1	$f20,32(sp)
    1d7c:	3c0f0000 	lui	t7,0x0
    1d80:	8cae1c44 	lw	t6,7236(a1)
    1d84:	8def0004 	lw	t7,4(t7)
    1d88:	00a09025 	move	s2,a1
    1d8c:	afae00e4 	sw	t6,228(sp)
    1d90:	a3af00b7 	sb	t7,183(sp)
    1d94:	8ca50000 	lw	a1,0(a1)
    1d98:	00808825 	move	s1,a0
    1d9c:	3c060000 	lui	a2,0x0
    1da0:	24c60000 	addiu	a2,a2,0
    1da4:	27a400a0 	addiu	a0,sp,160
    1da8:	24070720 	li	a3,1824
    1dac:	0c000000 	jal	0 <func_80988E80>
    1db0:	00a09825 	move	s3,a1
    1db4:	9222014d 	lbu	v0,333(s1)
    1db8:	27b600d8 	addiu	s6,sp,216
    1dbc:	2841001e 	slti	at,v0,30
    1dc0:	10200003 	beqz	at,1dd0 <func_8098ABC0+0x90>
    1dc4:	24580002 	addiu	t8,v0,2
    1dc8:	a238014d 	sb	t8,333(s1)
    1dcc:	330200ff 	andi	v0,t8,0xff
    1dd0:	2454ffff 	addiu	s4,v0,-1
    1dd4:	0014a400 	sll	s4,s4,0x10
    1dd8:	0014a403 	sra	s4,s4,0x10
    1ddc:	068001a7 	bltz	s4,247c <func_8098ABC0+0x73c>
    1de0:	3c013f80 	lui	at,0x3f80
    1de4:	4481e000 	mtc1	at,$f28
    1de8:	3c014180 	lui	at,0x4180
    1dec:	4481d000 	mtc1	at,$f26
    1df0:	3c013f00 	lui	at,0x3f00
    1df4:	4481c000 	mtc1	at,$f24
    1df8:	4480f000 	mtc1	zero,$f30
    1dfc:	2415000f 	li	s5,15
    1e00:	9223014d 	lbu	v1,333(s1)
    1e04:	44942000 	mtc1	s4,$f4
    1e08:	3c014f80 	lui	at,0x4f80
    1e0c:	44834000 	mtc1	v1,$f8
    1e10:	468021a0 	cvt.s.w	$f6,$f4
    1e14:	04610004 	bgez	v1,1e28 <func_8098ABC0+0xe8>
    1e18:	468042a0 	cvt.s.w	$f10,$f8
    1e1c:	44818000 	mtc1	at,$f16
    1e20:	00000000 	nop
    1e24:	46105280 	add.s	$f10,$f10,$f16
    1e28:	460a3483 	div.s	$f18,$f6,$f10
    1e2c:	0014c880 	sll	t9,s4,0x2
    1e30:	0334c821 	addu	t9,t9,s4
    1e34:	0019c8c0 	sll	t9,t9,0x3
    1e38:	02398021 	addu	s0,s1,t9
    1e3c:	92020172 	lbu	v0,370(s0)
    1e40:	24010001 	li	at,1
    1e44:	10400007 	beqz	v0,1e64 <func_8098ABC0+0x124>
    1e48:	4612e581 	sub.s	$f22,$f28,$f18
    1e4c:	10410035 	beq	v0,at,1f24 <func_8098ABC0+0x1e4>
    1e50:	24010002 	li	at,2
    1e54:	50410084 	beql	v0,at,2068 <func_8098ABC0+0x328>
    1e58:	862b001c 	lh	t3,28(s1)
    1e5c:	10000096 	b	20b8 <func_8098ABC0+0x378>
    1e60:	00000000 	nop
    1e64:	44802000 	mtc1	zero,$f4
    1e68:	a6000170 	sh	zero,368(s0)
    1e6c:	0c000000 	jal	0 <func_80988E80>
    1e70:	e604016c 	swc1	$f4,364(s0)
    1e74:	46180201 	sub.s	$f8,$f0,$f24
    1e78:	461a4402 	mul.s	$f16,$f8,$f26
    1e7c:	00000000 	nop
    1e80:	46168182 	mul.s	$f6,$f16,$f22
    1e84:	4600328d 	trunc.w.s	$f10,$f6
    1e88:	44095000 	mfc1	t1,$f10
    1e8c:	00000000 	nop
    1e90:	00095400 	sll	t2,t1,0x10
    1e94:	000a5c03 	sra	t3,t2,0x10
    1e98:	448b9000 	mtc1	t3,$f18
    1e9c:	00000000 	nop
    1ea0:	46809120 	cvt.s.w	$f4,$f18
    1ea4:	0c000000 	jal	0 <func_80988E80>
    1ea8:	e6040150 	swc1	$f4,336(s0)
    1eac:	46180201 	sub.s	$f8,$f0,$f24
    1eb0:	461a4402 	mul.s	$f16,$f8,$f26
    1eb4:	00000000 	nop
    1eb8:	46168182 	mul.s	$f6,$f16,$f22
    1ebc:	4600328d 	trunc.w.s	$f10,$f6
    1ec0:	440d5000 	mfc1	t5,$f10
    1ec4:	00000000 	nop
    1ec8:	000d7400 	sll	t6,t5,0x10
    1ecc:	000e7c03 	sra	t7,t6,0x10
    1ed0:	448f9000 	mtc1	t7,$f18
    1ed4:	00000000 	nop
    1ed8:	46809120 	cvt.s.w	$f4,$f18
    1edc:	0c000000 	jal	0 <func_80988E80>
    1ee0:	e6040154 	swc1	$f4,340(s0)
    1ee4:	46180201 	sub.s	$f8,$f0,$f24
    1ee8:	920a0172 	lbu	t2,370(s0)
    1eec:	a2000173 	sb	zero,371(s0)
    1ef0:	461a4402 	mul.s	$f16,$f8,$f26
    1ef4:	254b0001 	addiu	t3,t2,1
    1ef8:	a20b0172 	sb	t3,370(s0)
    1efc:	46168182 	mul.s	$f6,$f16,$f22
    1f00:	4600328d 	trunc.w.s	$f10,$f6
    1f04:	44195000 	mfc1	t9,$f10
    1f08:	00000000 	nop
    1f0c:	00194400 	sll	t0,t9,0x10
    1f10:	00084c03 	sra	t1,t0,0x10
    1f14:	44899000 	mtc1	t1,$f18
    1f18:	00000000 	nop
    1f1c:	46809120 	cvt.s.w	$f4,$f18
    1f20:	e6040158 	swc1	$f4,344(s0)
    1f24:	862c001c 	lh	t4,28(s1)
    1f28:	3c070000 	lui	a3,0x0
    1f2c:	24e70000 	addiu	a3,a3,0
    1f30:	16ac001e 	bne	s5,t4,1fac <func_8098ABC0+0x26c>
    1f34:	240420a7 	li	a0,8359
    1f38:	3c050000 	lui	a1,0x0
    1f3c:	3c060000 	lui	a2,0x0
    1f40:	3c070000 	lui	a3,0x0
    1f44:	260d0170 	addiu	t5,s0,368
    1f48:	260e016c 	addiu	t6,s0,364
    1f4c:	afae0014 	sw	t6,20(sp)
    1f50:	afad0010 	sw	t5,16(sp)
    1f54:	24e70000 	addiu	a3,a3,0
    1f58:	24c60000 	addiu	a2,a2,0
    1f5c:	24a50000 	addiu	a1,a1,0
    1f60:	0c000000 	jal	0 <func_80988E80>
    1f64:	02c02025 	move	a0,s6
    1f68:	50400005 	beqzl	v0,1f80 <func_8098ABC0+0x240>
    1f6c:	865900a4 	lh	t9,164(s2)
    1f70:	920f0172 	lbu	t7,370(s0)
    1f74:	25f80001 	addiu	t8,t7,1
    1f78:	a2180172 	sb	t8,370(s0)
    1f7c:	865900a4 	lh	t9,164(s2)
    1f80:	24010043 	li	at,67
    1f84:	5721002e 	bnel	t9,at,2040 <func_8098ABC0+0x300>
    1f88:	27a400b8 	addiu	a0,sp,184
    1f8c:	96481d74 	lhu	t0,7540(s2)
    1f90:	24010019 	li	at,25
    1f94:	5501002a 	bnel	t0,at,2040 <func_8098ABC0+0x300>
    1f98:	27a400b8 	addiu	a0,sp,184
    1f9c:	92090172 	lbu	t1,370(s0)
    1fa0:	252a0001 	addiu	t2,t1,1
    1fa4:	10000025 	b	203c <func_8098ABC0+0x2fc>
    1fa8:	a20a0172 	sb	t2,370(s0)
    1fac:	3c0b0000 	lui	t3,0x0
    1fb0:	256b0000 	addiu	t3,t3,0
    1fb4:	3c050000 	lui	a1,0x0
    1fb8:	24a50000 	addiu	a1,a1,0
    1fbc:	afab0014 	sw	t3,20(sp)
    1fc0:	24060004 	li	a2,4
    1fc4:	0c000000 	jal	0 <func_80988E80>
    1fc8:	afa70010 	sw	a3,16(sp)
    1fcc:	3c050000 	lui	a1,0x0
    1fd0:	3c060000 	lui	a2,0x0
    1fd4:	3c070000 	lui	a3,0x0
    1fd8:	260c0170 	addiu	t4,s0,368
    1fdc:	260d016c 	addiu	t5,s0,364
    1fe0:	afad0014 	sw	t5,20(sp)
    1fe4:	afac0010 	sw	t4,16(sp)
    1fe8:	24e70000 	addiu	a3,a3,0
    1fec:	24c60000 	addiu	a2,a2,0
    1ff0:	24a50000 	addiu	a1,a1,0
    1ff4:	0c000000 	jal	0 <func_80988E80>
    1ff8:	02c02025 	move	a0,s6
    1ffc:	10400004 	beqz	v0,2010 <func_8098ABC0+0x2d0>
    2000:	3c180000 	lui	t8,0x0
    2004:	920e0172 	lbu	t6,370(s0)
    2008:	25cf0001 	addiu	t7,t6,1
    200c:	a20f0172 	sb	t7,370(s0)
    2010:	87180000 	lh	t8,0(t8)
    2014:	96591d74 	lhu	t9,7540(s2)
    2018:	0319082a 	slt	at,t8,t9
    201c:	50200008 	beqzl	at,2040 <func_8098ABC0+0x300>
    2020:	27a400b8 	addiu	a0,sp,184
    2024:	8628001c 	lh	t0,28(s1)
    2028:	56a80005 	bnel	s5,t0,2040 <func_8098ABC0+0x300>
    202c:	27a400b8 	addiu	a0,sp,184
    2030:	92090172 	lbu	t1,370(s0)
    2034:	252a0001 	addiu	t2,t1,1
    2038:	a20a0172 	sb	t2,370(s0)
    203c:	27a400b8 	addiu	a0,sp,184
    2040:	0c000000 	jal	0 <func_80988E80>
    2044:	8fa500e4 	lw	a1,228(sp)
    2048:	3c060000 	lui	a2,0x0
    204c:	24c60000 	addiu	a2,a2,0
    2050:	27a400b8 	addiu	a0,sp,184
    2054:	0c000000 	jal	0 <func_80988E80>
    2058:	02c02825 	move	a1,s6
    205c:	10000016 	b	20b8 <func_8098ABC0+0x378>
    2060:	00000000 	nop
    2064:	862b001c 	lh	t3,28(s1)
    2068:	268e0001 	addiu	t6,s4,1
    206c:	16ab0009 	bne	s5,t3,2094 <func_8098ABC0+0x354>
    2070:	00000000 	nop
    2074:	16800010 	bnez	s4,20b8 <func_8098ABC0+0x378>
    2078:	00000000 	nop
    207c:	0c000000 	jal	0 <func_80988E80>
    2080:	02402025 	move	a0,s2
    2084:	920c0172 	lbu	t4,370(s0)
    2088:	258d0001 	addiu	t5,t4,1
    208c:	1000000a 	b	20b8 <func_8098ABC0+0x378>
    2090:	a20d0172 	sb	t5,370(s0)
    2094:	15c30008 	bne	t6,v1,20b8 <func_8098ABC0+0x378>
    2098:	00000000 	nop
    209c:	924f1d6c 	lbu	t7,7532(s2)
    20a0:	15e00005 	bnez	t7,20b8 <func_8098ABC0+0x378>
    20a4:	00000000 	nop
    20a8:	0c000000 	jal	0 <func_80988E80>
    20ac:	02402025 	move	a0,s2
    20b0:	0c000000 	jal	0 <func_80988E80>
    20b4:	02202025 	move	a0,s1
    20b8:	3c010000 	lui	at,0x0
    20bc:	c4280000 	lwc1	$f8,0(at)
    20c0:	92020173 	lbu	v0,371(s0)
    20c4:	e608015c 	swc1	$f8,348(s0)
    20c8:	c4300000 	lwc1	$f16,0(at)
    20cc:	3c010000 	lui	at,0x0
    20d0:	e6100160 	swc1	$f16,352(s0)
    20d4:	c4260000 	lwc1	$f6,0(at)
    20d8:	24010001 	li	at,1
    20dc:	10400007 	beqz	v0,20fc <func_8098ABC0+0x3bc>
    20e0:	e6060164 	swc1	$f6,356(s0)
    20e4:	1041000b 	beq	v0,at,2114 <func_8098ABC0+0x3d4>
    20e8:	24010002 	li	at,2
    20ec:	1041001a 	beq	v0,at,2158 <func_8098ABC0+0x418>
    20f0:	26040168 	addiu	a0,s0,360
    20f4:	10000054 	b	2248 <func_8098ABC0+0x508>
    20f8:	920c0172 	lbu	t4,370(s0)
    20fc:	0c000000 	jal	0 <func_80988E80>
    2100:	00000000 	nop
    2104:	92180173 	lbu	t8,371(s0)
    2108:	e6000168 	swc1	$f0,360(s0)
    210c:	27190001 	addiu	t9,t8,1
    2110:	a2190173 	sb	t9,371(s0)
    2114:	3c010000 	lui	at,0x0
    2118:	c42a0000 	lwc1	$f10,0(at)
    211c:	4405e000 	mfc1	a1,$f28
    2120:	4406c000 	mfc1	a2,$f24
    2124:	3c073ecc 	lui	a3,0x3ecc
    2128:	34e7cccd 	ori	a3,a3,0xcccd
    212c:	26040168 	addiu	a0,s0,360
    2130:	0c000000 	jal	0 <func_80988E80>
    2134:	e7aa0010 	swc1	$f10,16(sp)
    2138:	c6120168 	lwc1	$f18,360(s0)
    213c:	24080002 	li	t0,2
    2140:	4612e03e 	c.le.s	$f28,$f18
    2144:	00000000 	nop
    2148:	4502003f 	bc1fl	2248 <func_8098ABC0+0x508>
    214c:	920c0172 	lbu	t4,370(s0)
    2150:	1000003c 	b	2244 <func_8098ABC0+0x504>
    2154:	a2080173 	sb	t0,371(s0)
    2158:	3c010000 	lui	at,0x0
    215c:	c4240000 	lwc1	$f4,0(at)
    2160:	4405f000 	mfc1	a1,$f30
    2164:	4406c000 	mfc1	a2,$f24
    2168:	3c073e99 	lui	a3,0x3e99
    216c:	34e7999a 	ori	a3,a3,0x999a
    2170:	0c000000 	jal	0 <func_80988E80>
    2174:	e7a40010 	swc1	$f4,16(sp)
    2178:	c6080168 	lwc1	$f8,360(s0)
    217c:	461e403e 	c.le.s	$f8,$f30
    2180:	00000000 	nop
    2184:	45020030 	bc1fl	2248 <func_8098ABC0+0x508>
    2188:	920c0172 	lbu	t4,370(s0)
    218c:	0c000000 	jal	0 <func_80988E80>
    2190:	00000000 	nop
    2194:	46180401 	sub.s	$f16,$f0,$f24
    2198:	461a8182 	mul.s	$f6,$f16,$f26
    219c:	00000000 	nop
    21a0:	46163282 	mul.s	$f10,$f6,$f22
    21a4:	4600548d 	trunc.w.s	$f18,$f10
    21a8:	440a9000 	mfc1	t2,$f18
    21ac:	00000000 	nop
    21b0:	000a5c00 	sll	t3,t2,0x10
    21b4:	000b6403 	sra	t4,t3,0x10
    21b8:	448c2000 	mtc1	t4,$f4
    21bc:	00000000 	nop
    21c0:	46802220 	cvt.s.w	$f8,$f4
    21c4:	0c000000 	jal	0 <func_80988E80>
    21c8:	e6080150 	swc1	$f8,336(s0)
    21cc:	46180401 	sub.s	$f16,$f0,$f24
    21d0:	461a8182 	mul.s	$f6,$f16,$f26
    21d4:	00000000 	nop
    21d8:	46163282 	mul.s	$f10,$f6,$f22
    21dc:	4600548d 	trunc.w.s	$f18,$f10
    21e0:	440e9000 	mfc1	t6,$f18
    21e4:	00000000 	nop
    21e8:	000e7c00 	sll	t7,t6,0x10
    21ec:	000fc403 	sra	t8,t7,0x10
    21f0:	44982000 	mtc1	t8,$f4
    21f4:	00000000 	nop
    21f8:	46802220 	cvt.s.w	$f8,$f4
    21fc:	0c000000 	jal	0 <func_80988E80>
    2200:	e6080154 	swc1	$f8,340(s0)
    2204:	46180401 	sub.s	$f16,$f0,$f24
    2208:	240b0001 	li	t3,1
    220c:	e61e0168 	swc1	$f30,360(s0)
    2210:	a20b0173 	sb	t3,371(s0)
    2214:	461a8182 	mul.s	$f6,$f16,$f26
    2218:	00000000 	nop
    221c:	46163282 	mul.s	$f10,$f6,$f22
    2220:	4600548d 	trunc.w.s	$f18,$f10
    2224:	44089000 	mfc1	t0,$f18
    2228:	00000000 	nop
    222c:	00084c00 	sll	t1,t0,0x10
    2230:	00095403 	sra	t2,t1,0x10
    2234:	448a2000 	mtc1	t2,$f4
    2238:	00000000 	nop
    223c:	46802220 	cvt.s.w	$f8,$f4
    2240:	e6080158 	swc1	$f8,344(s0)
    2244:	920c0172 	lbu	t4,370(s0)
    2248:	c6120150 	lwc1	$f18,336(s0)
    224c:	c610015c 	lwc1	$f16,348(s0)
    2250:	c60e0154 	lwc1	$f14,340(s0)
    2254:	c60a0160 	lwc1	$f10,352(s0)
    2258:	46109300 	add.s	$f12,$f18,$f16
    225c:	c6100158 	lwc1	$f16,344(s0)
    2260:	c6120164 	lwc1	$f18,356(s0)
    2264:	460a7500 	add.s	$f20,$f14,$f10
    2268:	29810002 	slti	at,t4,2
    226c:	1020007e 	beqz	at,2468 <func_8098ABC0+0x728>
    2270:	46128000 	add.s	$f0,$f16,$f18
    2274:	93af00b7 	lbu	t7,183(sp)
    2278:	3c010001 	lui	at,0x1
    227c:	34211da0 	ori	at,at,0x1da0
    2280:	3c0d0401 	lui	t5,0x401
    2284:	25ad0130 	addiu	t5,t5,304
    2288:	02417021 	addu	t6,s2,at
    228c:	afae0078 	sw	t6,120(sp)
    2290:	11e00007 	beqz	t7,22b0 <func_8098ABC0+0x570>
    2294:	afad0080 	sw	t5,128(sp)
    2298:	44060000 	mfc1	a2,$f0
    229c:	4600a386 	mov.s	$f14,$f20
    22a0:	0c000000 	jal	0 <func_80988E80>
    22a4:	00003825 	move	a3,zero
    22a8:	10000007 	b	22c8 <func_8098ABC0+0x588>
    22ac:	00000000 	nop
    22b0:	3c014170 	lui	at,0x4170
    22b4:	44818000 	mtc1	at,$f16
    22b8:	44060000 	mfc1	a2,$f0
    22bc:	00003825 	move	a3,zero
    22c0:	0c000000 	jal	0 <func_80988E80>
    22c4:	4610a380 	add.s	$f14,$f20,$f16
    22c8:	3c010000 	lui	at,0x0
    22cc:	c42a0000 	lwc1	$f10,0(at)
    22d0:	c6060168 	lwc1	$f6,360(s0)
    22d4:	24070001 	li	a3,1
    22d8:	46165482 	mul.s	$f18,$f10,$f22
    22dc:	00000000 	nop
    22e0:	46123302 	mul.s	$f12,$f6,$f18
    22e4:	44066000 	mfc1	a2,$f12
    22e8:	0c000000 	jal	0 <func_80988E80>
    22ec:	46006386 	mov.s	$f14,$f12
    22f0:	8e6202d0 	lw	v0,720(s3)
    22f4:	3c19fa00 	lui	t9,0xfa00
    22f8:	37390080 	ori	t9,t9,0x80
    22fc:	24580008 	addiu	t8,v0,8
    2300:	ae7802d0 	sw	t8,720(s3)
    2304:	2408ffff 	li	t0,-1
    2308:	ac480004 	sw	t0,4(v0)
    230c:	ac590000 	sw	t9,0(v0)
    2310:	8629001c 	lh	t1,28(s1)
    2314:	3c0a0000 	lui	t2,0x0
    2318:	3c050000 	lui	a1,0x0
    231c:	16a90019 	bne	s5,t1,2384 <func_8098ABC0+0x644>
    2320:	254a0000 	addiu	t2,t2,0
    2324:	8e6202d0 	lw	v0,720(s3)
    2328:	3c010001 	lui	at,0x1
    232c:	3c0bfb00 	lui	t3,0xfb00
    2330:	244a0008 	addiu	t2,v0,8
    2334:	ae6a02d0 	sw	t2,720(s3)
    2338:	02412821 	addu	a1,s2,at
    233c:	ac4b0000 	sw	t3,0(v0)
    2340:	94ac04c4 	lhu	t4,1220(a1)
    2344:	3c0e0000 	lui	t6,0x0
    2348:	25ce0000 	addiu	t6,t6,0
    234c:	000c6880 	sll	t5,t4,0x2
    2350:	01ac6823 	subu	t5,t5,t4
    2354:	01ae1821 	addu	v1,t5,t6
    2358:	90780002 	lbu	t8,2(v1)
    235c:	90690000 	lbu	t1,0(v1)
    2360:	906d0001 	lbu	t5,1(v1)
    2364:	0018ca00 	sll	t9,t8,0x8
    2368:	00095600 	sll	t2,t1,0x18
    236c:	032a5825 	or	t3,t9,t2
    2370:	000d7400 	sll	t6,t5,0x10
    2374:	016e7825 	or	t7,t3,t6
    2378:	35f800ff 	ori	t8,t7,0xff
    237c:	10000014 	b	23d0 <func_8098ABC0+0x690>
    2380:	ac580004 	sw	t8,4(v0)
    2384:	80a51397 	lb	a1,5015(a1)
    2388:	8e6202d0 	lw	v0,720(s3)
    238c:	3c09fb00 	lui	t1,0xfb00
    2390:	0005c880 	sll	t9,a1,0x2
    2394:	24480008 	addiu	t0,v0,8
    2398:	ae6802d0 	sw	t0,720(s3)
    239c:	0325c823 	subu	t9,t9,a1
    23a0:	032a1821 	addu	v1,t9,t2
    23a4:	ac490000 	sw	t1,0(v0)
    23a8:	906f0000 	lbu	t7,0(v1)
    23ac:	906d0002 	lbu	t5,2(v1)
    23b0:	90790001 	lbu	t9,1(v1)
    23b4:	000fc600 	sll	t8,t7,0x18
    23b8:	000d5a00 	sll	t3,t5,0x8
    23bc:	01784025 	or	t0,t3,t8
    23c0:	00195400 	sll	t2,t9,0x10
    23c4:	010a6025 	or	t4,t0,t2
    23c8:	358d00ff 	ori	t5,t4,0xff
    23cc:	ac4d0004 	sw	t5,4(v0)
    23d0:	0c000000 	jal	0 <func_80988E80>
    23d4:	8e440000 	lw	a0,0(s2)
    23d8:	8fa40078 	lw	a0,120(sp)
    23dc:	0c000000 	jal	0 <func_80988E80>
    23e0:	24050001 	li	a1,1
    23e4:	860e0174 	lh	t6,372(s0)
    23e8:	3c010000 	lui	at,0x0
    23ec:	c4300000 	lwc1	$f16,0(at)
    23f0:	448e2000 	mtc1	t6,$f4
    23f4:	24050001 	li	a1,1
    23f8:	46802220 	cvt.s.w	$f8,$f4
    23fc:	46104302 	mul.s	$f12,$f8,$f16
    2400:	0c000000 	jal	0 <func_80988E80>
    2404:	00000000 	nop
    2408:	8e6202d0 	lw	v0,720(s3)
    240c:	3c0bda38 	lui	t3,0xda38
    2410:	356b0003 	ori	t3,t3,0x3
    2414:	244f0008 	addiu	t7,v0,8
    2418:	ae6f02d0 	sw	t7,720(s3)
    241c:	ac4b0000 	sw	t3,0(v0)
    2420:	8e440000 	lw	a0,0(s2)
    2424:	3c050000 	lui	a1,0x0
    2428:	24a50000 	addiu	a1,a1,0
    242c:	240607db 	li	a2,2011
    2430:	0c000000 	jal	0 <func_80988E80>
    2434:	afa2008c 	sw	v0,140(sp)
    2438:	8fa3008c 	lw	v1,140(sp)
    243c:	3c09de00 	lui	t1,0xde00
    2440:	ac620004 	sw	v0,4(v1)
    2444:	8e6202d0 	lw	v0,720(s3)
    2448:	24580008 	addiu	t8,v0,8
    244c:	ae7802d0 	sw	t8,720(s3)
    2450:	ac490000 	sw	t1,0(v0)
    2454:	8fb90080 	lw	t9,128(sp)
    2458:	ac590004 	sw	t9,4(v0)
    245c:	86080174 	lh	t0,372(s0)
    2460:	250a0190 	addiu	t2,t0,400
    2464:	a60a0174 	sh	t2,372(s0)
    2468:	2694ffff 	addiu	s4,s4,-1
    246c:	0014a400 	sll	s4,s4,0x10
    2470:	0014a403 	sra	s4,s4,0x10
    2474:	0683fe63 	bgezl	s4,1e04 <func_8098ABC0+0xc4>
    2478:	9223014d 	lbu	v1,333(s1)
    247c:	3c060000 	lui	a2,0x0
    2480:	24c60000 	addiu	a2,a2,0
    2484:	27a400a0 	addiu	a0,sp,160
    2488:	8e450000 	lw	a1,0(s2)
    248c:	0c000000 	jal	0 <func_80988E80>
    2490:	240707e3 	li	a3,2019
    2494:	8fbf006c 	lw	ra,108(sp)
    2498:	d7b40020 	ldc1	$f20,32(sp)
    249c:	d7b60028 	ldc1	$f22,40(sp)
    24a0:	d7b80030 	ldc1	$f24,48(sp)
    24a4:	d7ba0038 	ldc1	$f26,56(sp)
    24a8:	d7bc0040 	ldc1	$f28,64(sp)
    24ac:	d7be0048 	ldc1	$f30,72(sp)
    24b0:	8fb00050 	lw	s0,80(sp)
    24b4:	8fb10054 	lw	s1,84(sp)
    24b8:	8fb20058 	lw	s2,88(sp)
    24bc:	8fb3005c 	lw	s3,92(sp)
    24c0:	8fb40060 	lw	s4,96(sp)
    24c4:	8fb50064 	lw	s5,100(sp)
    24c8:	8fb60068 	lw	s6,104(sp)
    24cc:	03e00008 	jr	ra
    24d0:	27bd00f8 	addiu	sp,sp,248

000024d4 <func_8098B354>:
    24d4:	27bdff10 	addiu	sp,sp,-240
    24d8:	afb60068 	sw	s6,104(sp)
    24dc:	00a0b025 	move	s6,a1
    24e0:	afbf0074 	sw	ra,116(sp)
    24e4:	afbe0070 	sw	s8,112(sp)
    24e8:	afb7006c 	sw	s7,108(sp)
    24ec:	afb50064 	sw	s5,100(sp)
    24f0:	afb40060 	sw	s4,96(sp)
    24f4:	afb3005c 	sw	s3,92(sp)
    24f8:	afb20058 	sw	s2,88(sp)
    24fc:	afb10054 	sw	s1,84(sp)
    2500:	afb00050 	sw	s0,80(sp)
    2504:	f7be0048 	sdc1	$f30,72(sp)
    2508:	f7bc0040 	sdc1	$f28,64(sp)
    250c:	f7ba0038 	sdc1	$f26,56(sp)
    2510:	f7b80030 	sdc1	$f24,48(sp)
    2514:	f7b60028 	sdc1	$f22,40(sp)
    2518:	f7b40020 	sdc1	$f20,32(sp)
    251c:	8ca50000 	lw	a1,0(a1)
    2520:	00808825 	move	s1,a0
    2524:	3c060000 	lui	a2,0x0
    2528:	24c60000 	addiu	a2,a2,0
    252c:	27a400a0 	addiu	a0,sp,160
    2530:	24070982 	li	a3,2434
    2534:	0c000000 	jal	0 <func_80988E80>
    2538:	00a09825 	move	s3,a1
    253c:	9223014d 	lbu	v1,333(s1)
    2540:	3c170000 	lui	s7,0x0
    2544:	26f70000 	addiu	s7,s7,0
    2548:	28610014 	slti	at,v1,20
    254c:	10200004 	beqz	at,2560 <func_8098B354+0x8c>
    2550:	00601025 	move	v0,v1
    2554:	246e0001 	addiu	t6,v1,1
    2558:	a22e014d 	sb	t6,333(s1)
    255c:	31c200ff 	andi	v0,t6,0xff
    2560:	2454ffff 	addiu	s4,v0,-1
    2564:	0014a400 	sll	s4,s4,0x10
    2568:	0014a403 	sra	s4,s4,0x10
    256c:	0680012f 	bltz	s4,2a2c <func_8098B354+0x558>
    2570:	3c010000 	lui	at,0x0
    2574:	c43e0000 	lwc1	$f30,0(at)
    2578:	3c013f80 	lui	at,0x3f80
    257c:	4481d000 	mtc1	at,$f26
    2580:	3c014180 	lui	at,0x4180
    2584:	4481c000 	mtc1	at,$f24
    2588:	3c013f00 	lui	at,0x3f00
    258c:	4481b000 	mtc1	at,$f22
    2590:	4480e000 	mtc1	zero,$f28
    2594:	241e0001 	li	s8,1
    2598:	9223014d 	lbu	v1,333(s1)
    259c:	44942000 	mtc1	s4,$f4
    25a0:	3c014f80 	lui	at,0x4f80
    25a4:	44834000 	mtc1	v1,$f8
    25a8:	468021a0 	cvt.s.w	$f6,$f4
    25ac:	04610004 	bgez	v1,25c0 <func_8098B354+0xec>
    25b0:	468042a0 	cvt.s.w	$f10,$f8
    25b4:	44818000 	mtc1	at,$f16
    25b8:	00000000 	nop
    25bc:	46105280 	add.s	$f10,$f10,$f16
    25c0:	460a3483 	div.s	$f18,$f6,$f10
    25c4:	00147880 	sll	t7,s4,0x2
    25c8:	01f47821 	addu	t7,t7,s4
    25cc:	000f78c0 	sll	t7,t7,0x3
    25d0:	022f8021 	addu	s0,s1,t7
    25d4:	92020172 	lbu	v0,370(s0)
    25d8:	10400007 	beqz	v0,25f8 <func_8098B354+0x124>
    25dc:	4612d501 	sub.s	$f20,$f26,$f18
    25e0:	105e0035 	beq	v0,s8,26b8 <func_8098B354+0x1e4>
    25e4:	24010002 	li	at,2
    25e8:	1041004d 	beq	v0,at,2720 <func_8098B354+0x24c>
    25ec:	268e0001 	addiu	t6,s4,1
    25f0:	10000052 	b	273c <func_8098B354+0x268>
    25f4:	00000000 	nop
    25f8:	44802000 	mtc1	zero,$f4
    25fc:	a6000170 	sh	zero,368(s0)
    2600:	0c000000 	jal	0 <func_80988E80>
    2604:	e604016c 	swc1	$f4,364(s0)
    2608:	46160201 	sub.s	$f8,$f0,$f22
    260c:	46184402 	mul.s	$f16,$f8,$f24
    2610:	00000000 	nop
    2614:	46148182 	mul.s	$f6,$f16,$f20
    2618:	4600328d 	trunc.w.s	$f10,$f6
    261c:	44195000 	mfc1	t9,$f10
    2620:	00000000 	nop
    2624:	00194400 	sll	t0,t9,0x10
    2628:	00084c03 	sra	t1,t0,0x10
    262c:	44899000 	mtc1	t1,$f18
    2630:	00000000 	nop
    2634:	46809120 	cvt.s.w	$f4,$f18
    2638:	0c000000 	jal	0 <func_80988E80>
    263c:	e6040150 	swc1	$f4,336(s0)
    2640:	46160201 	sub.s	$f8,$f0,$f22
    2644:	46184402 	mul.s	$f16,$f8,$f24
    2648:	00000000 	nop
    264c:	46148182 	mul.s	$f6,$f16,$f20
    2650:	4600328d 	trunc.w.s	$f10,$f6
    2654:	440b5000 	mfc1	t3,$f10
    2658:	00000000 	nop
    265c:	000b6400 	sll	t4,t3,0x10
    2660:	000c6c03 	sra	t5,t4,0x10
    2664:	448d9000 	mtc1	t5,$f18
    2668:	00000000 	nop
    266c:	46809120 	cvt.s.w	$f4,$f18
    2670:	0c000000 	jal	0 <func_80988E80>
    2674:	e6040154 	swc1	$f4,340(s0)
    2678:	46160201 	sub.s	$f8,$f0,$f22
    267c:	92080172 	lbu	t0,370(s0)
    2680:	a2000173 	sb	zero,371(s0)
    2684:	46184402 	mul.s	$f16,$f8,$f24
    2688:	25090001 	addiu	t1,t0,1
    268c:	a2090172 	sb	t1,370(s0)
    2690:	46148182 	mul.s	$f6,$f16,$f20
    2694:	4600328d 	trunc.w.s	$f10,$f6
    2698:	440f5000 	mfc1	t7,$f10
    269c:	00000000 	nop
    26a0:	000fc400 	sll	t8,t7,0x10
    26a4:	0018cc03 	sra	t9,t8,0x10
    26a8:	44999000 	mtc1	t9,$f18
    26ac:	00000000 	nop
    26b0:	46809120 	cvt.s.w	$f4,$f18
    26b4:	e6040158 	swc1	$f4,344(s0)
    26b8:	3c050000 	lui	a1,0x0
    26bc:	3c060000 	lui	a2,0x0
    26c0:	3c070000 	lui	a3,0x0
    26c4:	260a0170 	addiu	t2,s0,368
    26c8:	260b016c 	addiu	t3,s0,364
    26cc:	afab0014 	sw	t3,20(sp)
    26d0:	afaa0010 	sw	t2,16(sp)
    26d4:	24e70000 	addiu	a3,a3,0
    26d8:	24c60000 	addiu	a2,a2,0
    26dc:	24a50000 	addiu	a1,a1,0
    26e0:	0c000000 	jal	0 <func_80988E80>
    26e4:	27a400d4 	addiu	a0,sp,212
    26e8:	10400004 	beqz	v0,26fc <func_8098B354+0x228>
    26ec:	27a400b4 	addiu	a0,sp,180
    26f0:	920c0172 	lbu	t4,370(s0)
    26f4:	258d0001 	addiu	t5,t4,1
    26f8:	a20d0172 	sb	t5,370(s0)
    26fc:	0c000000 	jal	0 <func_80988E80>
    2700:	02202825 	move	a1,s1
    2704:	3c060000 	lui	a2,0x0
    2708:	24c60000 	addiu	a2,a2,0
    270c:	27a400b4 	addiu	a0,sp,180
    2710:	0c000000 	jal	0 <func_80988E80>
    2714:	27a500d4 	addiu	a1,sp,212
    2718:	10000008 	b	273c <func_8098B354+0x268>
    271c:	00000000 	nop
    2720:	15c30006 	bne	t6,v1,273c <func_8098B354+0x268>
    2724:	00000000 	nop
    2728:	92cf1d6c 	lbu	t7,7532(s6)
    272c:	15e00003 	bnez	t7,273c <func_8098B354+0x268>
    2730:	00000000 	nop
    2734:	0c000000 	jal	0 <func_80988E80>
    2738:	02202025 	move	a0,s1
    273c:	3c010000 	lui	at,0x0
    2740:	c4280000 	lwc1	$f8,0(at)
    2744:	92020173 	lbu	v0,371(s0)
    2748:	e608015c 	swc1	$f8,348(s0)
    274c:	c4300000 	lwc1	$f16,0(at)
    2750:	3c010000 	lui	at,0x0
    2754:	e6100160 	swc1	$f16,352(s0)
    2758:	c4260000 	lwc1	$f6,0(at)
    275c:	10400007 	beqz	v0,277c <func_8098B354+0x2a8>
    2760:	e6060164 	swc1	$f6,356(s0)
    2764:	105e000b 	beq	v0,s8,2794 <func_8098B354+0x2c0>
    2768:	24010002 	li	at,2
    276c:	10410018 	beq	v0,at,27d0 <func_8098B354+0x2fc>
    2770:	26040168 	addiu	a0,s0,360
    2774:	10000050 	b	28b8 <func_8098B354+0x3e4>
    2778:	920c0172 	lbu	t4,370(s0)
    277c:	0c000000 	jal	0 <func_80988E80>
    2780:	00000000 	nop
    2784:	92180173 	lbu	t8,371(s0)
    2788:	e6000168 	swc1	$f0,360(s0)
    278c:	27190001 	addiu	t9,t8,1
    2790:	a2190173 	sb	t9,371(s0)
    2794:	4405d000 	mfc1	a1,$f26
    2798:	4406b000 	mfc1	a2,$f22
    279c:	3c073ecc 	lui	a3,0x3ecc
    27a0:	34e7cccd 	ori	a3,a3,0xcccd
    27a4:	26040168 	addiu	a0,s0,360
    27a8:	0c000000 	jal	0 <func_80988E80>
    27ac:	e7be0010 	swc1	$f30,16(sp)
    27b0:	c60a0168 	lwc1	$f10,360(s0)
    27b4:	24080002 	li	t0,2
    27b8:	460ad03e 	c.le.s	$f26,$f10
    27bc:	00000000 	nop
    27c0:	4502003d 	bc1fl	28b8 <func_8098B354+0x3e4>
    27c4:	920c0172 	lbu	t4,370(s0)
    27c8:	1000003a 	b	28b4 <func_8098B354+0x3e0>
    27cc:	a2080173 	sb	t0,371(s0)
    27d0:	4405e000 	mfc1	a1,$f28
    27d4:	4406b000 	mfc1	a2,$f22
    27d8:	3c073e99 	lui	a3,0x3e99
    27dc:	34e7999a 	ori	a3,a3,0x999a
    27e0:	0c000000 	jal	0 <func_80988E80>
    27e4:	e7be0010 	swc1	$f30,16(sp)
    27e8:	c6120168 	lwc1	$f18,360(s0)
    27ec:	461c903e 	c.le.s	$f18,$f28
    27f0:	00000000 	nop
    27f4:	45020030 	bc1fl	28b8 <func_8098B354+0x3e4>
    27f8:	920c0172 	lbu	t4,370(s0)
    27fc:	0c000000 	jal	0 <func_80988E80>
    2800:	00000000 	nop
    2804:	46160101 	sub.s	$f4,$f0,$f22
    2808:	46182202 	mul.s	$f8,$f4,$f24
    280c:	00000000 	nop
    2810:	46144402 	mul.s	$f16,$f8,$f20
    2814:	4600818d 	trunc.w.s	$f6,$f16
    2818:	440a3000 	mfc1	t2,$f6
    281c:	00000000 	nop
    2820:	000a5c00 	sll	t3,t2,0x10
    2824:	000b6403 	sra	t4,t3,0x10
    2828:	448c5000 	mtc1	t4,$f10
    282c:	00000000 	nop
    2830:	468054a0 	cvt.s.w	$f18,$f10
    2834:	0c000000 	jal	0 <func_80988E80>
    2838:	e6120150 	swc1	$f18,336(s0)
    283c:	46160101 	sub.s	$f4,$f0,$f22
    2840:	46182202 	mul.s	$f8,$f4,$f24
    2844:	00000000 	nop
    2848:	46144402 	mul.s	$f16,$f8,$f20
    284c:	4600818d 	trunc.w.s	$f6,$f16
    2850:	440e3000 	mfc1	t6,$f6
    2854:	00000000 	nop
    2858:	000e7c00 	sll	t7,t6,0x10
    285c:	000fc403 	sra	t8,t7,0x10
    2860:	44985000 	mtc1	t8,$f10
    2864:	00000000 	nop
    2868:	468054a0 	cvt.s.w	$f18,$f10
    286c:	0c000000 	jal	0 <func_80988E80>
    2870:	e6120154 	swc1	$f18,340(s0)
    2874:	46160101 	sub.s	$f4,$f0,$f22
    2878:	240b0001 	li	t3,1
    287c:	e61c0168 	swc1	$f28,360(s0)
    2880:	a20b0173 	sb	t3,371(s0)
    2884:	46182202 	mul.s	$f8,$f4,$f24
    2888:	00000000 	nop
    288c:	46144402 	mul.s	$f16,$f8,$f20
    2890:	4600818d 	trunc.w.s	$f6,$f16
    2894:	44083000 	mfc1	t0,$f6
    2898:	00000000 	nop
    289c:	00084c00 	sll	t1,t0,0x10
    28a0:	00095403 	sra	t2,t1,0x10
    28a4:	448a5000 	mtc1	t2,$f10
    28a8:	00000000 	nop
    28ac:	468054a0 	cvt.s.w	$f18,$f10
    28b0:	e6120158 	swc1	$f18,344(s0)
    28b4:	920c0172 	lbu	t4,370(s0)
    28b8:	c6120150 	lwc1	$f18,336(s0)
    28bc:	c610015c 	lwc1	$f16,348(s0)
    28c0:	c60a0154 	lwc1	$f10,340(s0)
    28c4:	c6080160 	lwc1	$f8,352(s0)
    28c8:	46109300 	add.s	$f12,$f18,$f16
    28cc:	c6100158 	lwc1	$f16,344(s0)
    28d0:	c6120164 	lwc1	$f18,356(s0)
    28d4:	46085380 	add.s	$f14,$f10,$f8
    28d8:	29810002 	slti	at,t4,2
    28dc:	1020004e 	beqz	at,2a18 <func_8098B354+0x544>
    28e0:	46128000 	add.s	$f0,$f16,$f18
    28e4:	3c010001 	lui	at,0x1
    28e8:	34211da0 	ori	at,at,0x1da0
    28ec:	44060000 	mfc1	a2,$f0
    28f0:	3c150401 	lui	s5,0x401
    28f4:	26b50130 	addiu	s5,s5,304
    28f8:	02c19021 	addu	s2,s6,at
    28fc:	0c000000 	jal	0 <func_80988E80>
    2900:	00003825 	move	a3,zero
    2904:	3c010000 	lui	at,0x0
    2908:	c4280000 	lwc1	$f8,0(at)
    290c:	c6040168 	lwc1	$f4,360(s0)
    2910:	24070001 	li	a3,1
    2914:	46144402 	mul.s	$f16,$f8,$f20
    2918:	00000000 	nop
    291c:	46102302 	mul.s	$f12,$f4,$f16
    2920:	44066000 	mfc1	a2,$f12
    2924:	0c000000 	jal	0 <func_80988E80>
    2928:	46006386 	mov.s	$f14,$f12
    292c:	8e6202d0 	lw	v0,720(s3)
    2930:	3c0efa00 	lui	t6,0xfa00
    2934:	35ce0080 	ori	t6,t6,0x80
    2938:	244d0008 	addiu	t5,v0,8
    293c:	ae6d02d0 	sw	t5,720(s3)
    2940:	240fffff 	li	t7,-1
    2944:	ac4f0004 	sw	t7,4(v0)
    2948:	ac4e0000 	sw	t6,0(v0)
    294c:	8e6202d0 	lw	v0,720(s3)
    2950:	3c19fb00 	lui	t9,0xfb00
    2954:	24580008 	addiu	t8,v0,8
    2958:	ae7802d0 	sw	t8,720(s3)
    295c:	ac590000 	sw	t9,0(v0)
    2960:	92ec0009 	lbu	t4,9(s7)
    2964:	92e9000b 	lbu	t1,11(s7)
    2968:	92f8000a 	lbu	t8,10(s7)
    296c:	000c6e00 	sll	t5,t4,0x18
    2970:	00095200 	sll	t2,t1,0x8
    2974:	014d7025 	or	t6,t2,t5
    2978:	0018cc00 	sll	t9,t8,0x10
    297c:	01d94025 	or	t0,t6,t9
    2980:	350900ff 	ori	t1,t0,0xff
    2984:	ac490004 	sw	t1,4(v0)
    2988:	0c000000 	jal	0 <func_80988E80>
    298c:	8ec40000 	lw	a0,0(s6)
    2990:	02402025 	move	a0,s2
    2994:	0c000000 	jal	0 <func_80988E80>
    2998:	24050001 	li	a1,1
    299c:	860b0174 	lh	t3,372(s0)
    29a0:	3c010000 	lui	at,0x0
    29a4:	c4320000 	lwc1	$f18,0(at)
    29a8:	448b3000 	mtc1	t3,$f6
    29ac:	24050001 	li	a1,1
    29b0:	468032a0 	cvt.s.w	$f10,$f6
    29b4:	46125302 	mul.s	$f12,$f10,$f18
    29b8:	0c000000 	jal	0 <func_80988E80>
    29bc:	00000000 	nop
    29c0:	8e6202d0 	lw	v0,720(s3)
    29c4:	3c0ada38 	lui	t2,0xda38
    29c8:	354a0003 	ori	t2,t2,0x3
    29cc:	244c0008 	addiu	t4,v0,8
    29d0:	ae6c02d0 	sw	t4,720(s3)
    29d4:	3c050000 	lui	a1,0x0
    29d8:	ac4a0000 	sw	t2,0(v0)
    29dc:	8ec40000 	lw	a0,0(s6)
    29e0:	24a50000 	addiu	a1,a1,0
    29e4:	24060a0c 	li	a2,2572
    29e8:	0c000000 	jal	0 <func_80988E80>
    29ec:	00409025 	move	s2,v0
    29f0:	ae420004 	sw	v0,4(s2)
    29f4:	8e6202d0 	lw	v0,720(s3)
    29f8:	3c0fde00 	lui	t7,0xde00
    29fc:	244d0008 	addiu	t5,v0,8
    2a00:	ae6d02d0 	sw	t5,720(s3)
    2a04:	ac550004 	sw	s5,4(v0)
    2a08:	ac4f0000 	sw	t7,0(v0)
    2a0c:	86180174 	lh	t8,372(s0)
    2a10:	270e0190 	addiu	t6,t8,400
    2a14:	a60e0174 	sh	t6,372(s0)
    2a18:	2694ffff 	addiu	s4,s4,-1
    2a1c:	0014a400 	sll	s4,s4,0x10
    2a20:	0014a403 	sra	s4,s4,0x10
    2a24:	0683fedd 	bgezl	s4,259c <func_8098B354+0xc8>
    2a28:	9223014d 	lbu	v1,333(s1)
    2a2c:	3c060000 	lui	a2,0x0
    2a30:	24c60000 	addiu	a2,a2,0
    2a34:	27a400a0 	addiu	a0,sp,160
    2a38:	8ec50000 	lw	a1,0(s6)
    2a3c:	0c000000 	jal	0 <func_80988E80>
    2a40:	24070a13 	li	a3,2579
    2a44:	8fbf0074 	lw	ra,116(sp)
    2a48:	d7b40020 	ldc1	$f20,32(sp)
    2a4c:	d7b60028 	ldc1	$f22,40(sp)
    2a50:	d7b80030 	ldc1	$f24,48(sp)
    2a54:	d7ba0038 	ldc1	$f26,56(sp)
    2a58:	d7bc0040 	ldc1	$f28,64(sp)
    2a5c:	d7be0048 	ldc1	$f30,72(sp)
    2a60:	8fb00050 	lw	s0,80(sp)
    2a64:	8fb10054 	lw	s1,84(sp)
    2a68:	8fb20058 	lw	s2,88(sp)
    2a6c:	8fb3005c 	lw	s3,92(sp)
    2a70:	8fb40060 	lw	s4,96(sp)
    2a74:	8fb50064 	lw	s5,100(sp)
    2a78:	8fb60068 	lw	s6,104(sp)
    2a7c:	8fb7006c 	lw	s7,108(sp)
    2a80:	8fbe0070 	lw	s8,112(sp)
    2a84:	03e00008 	jr	ra
    2a88:	27bd00f0 	addiu	sp,sp,240
    2a8c:	00000000 	nop
