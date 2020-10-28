
build/src/overlays/actors/ovl_En_Heishi1/z_en_heishi1.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnHeishi1_Init>:
       0:	27bdff90 	addiu	sp,sp,-112
       4:	afb20040 	sw	s2,64(sp)
       8:	00a09025 	move	s2,a1
       c:	afbf0044 	sw	ra,68(sp)
      10:	afb1003c 	sw	s1,60(sp)
      14:	3c053c23 	lui	a1,0x3c23
      18:	00808825 	move	s1,a0
      1c:	afb00038 	sw	s0,56(sp)
      20:	0c000000 	jal	0 <EnHeishi1_Init>
      24:	34a5d70a 	ori	a1,a1,0xd70a
      28:	3c060000 	lui	a2,0x0
      2c:	3c070000 	lui	a3,0x0
      30:	262e0190 	addiu	t6,s1,400
      34:	262f01f6 	addiu	t7,s1,502
      38:	24180011 	li	t8,17
      3c:	afb80018 	sw	t8,24(sp)
      40:	afaf0014 	sw	t7,20(sp)
      44:	afae0010 	sw	t6,16(sp)
      48:	24e70000 	addiu	a3,a3,0
      4c:	24c60000 	addiu	a2,a2,0
      50:	02402025 	move	a0,s2
      54:	0c000000 	jal	0 <EnHeishi1_Init>
      58:	2625014c 	addiu	a1,s1,332
      5c:	8624001c 	lh	a0,28(s1)
      60:	00001025 	move	v0,zero
      64:	02201825 	move	v1,s1
      68:	0004ca03 	sra	t9,a0,0x8
      6c:	308900ff 	andi	t1,a0,0xff
      70:	332800ff 	andi	t0,t9,0xff
      74:	3c040000 	lui	a0,0x0
      78:	a628026a 	sh	t0,618(s1)
      7c:	a629026c 	sh	t1,620(s1)
      80:	24840000 	addiu	a0,a0,0
      84:	862a026a 	lh	t2,618(s1)
      88:	24630004 	addiu	v1,v1,4
      8c:	000a5940 	sll	t3,t2,0x5
      90:	008b6021 	addu	t4,a0,t3
      94:	01826821 	addu	t5,t4,v0
      98:	c5a40000 	lwc1	$f4,0(t5)
      9c:	24420004 	addiu	v0,v0,4
      a0:	28410020 	slti	at,v0,32
      a4:	1420fff7 	bnez	at,84 <EnHeishi1_Init+0x84>
      a8:	e4640280 	swc1	$f4,640(v1)
      ac:	3c040000 	lui	a0,0x0
      b0:	24840000 	addiu	a0,a0,0
      b4:	0c000000 	jal	0 <EnHeishi1_Init>
      b8:	8625026a 	lh	a1,618(s1)
      bc:	3c040000 	lui	a0,0x0
      c0:	2484002c 	addiu	a0,a0,44
      c4:	0c000000 	jal	0 <EnHeishi1_Init>
      c8:	8625026c 	lh	a1,620(s1)
      cc:	c6260284 	lwc1	$f6,644(s1)
      d0:	3c040000 	lui	a0,0x0
      d4:	24840058 	addiu	a0,a0,88
      d8:	46003221 	cvt.d.s	$f8,$f6
      dc:	44074000 	mfc1	a3,$f8
      e0:	44064800 	mfc1	a2,$f9
      e4:	0c000000 	jal	0 <EnHeishi1_Init>
      e8:	00000000 	nop
      ec:	c62a0288 	lwc1	$f10,648(s1)
      f0:	3c040000 	lui	a0,0x0
      f4:	24840084 	addiu	a0,a0,132
      f8:	46005421 	cvt.d.s	$f16,$f10
      fc:	44078000 	mfc1	a3,$f16
     100:	44068800 	mfc1	a2,$f17
     104:	0c000000 	jal	0 <EnHeishi1_Init>
     108:	00000000 	nop
     10c:	c632028c 	lwc1	$f18,652(s1)
     110:	3c040000 	lui	a0,0x0
     114:	248400b0 	addiu	a0,a0,176
     118:	46009121 	cvt.d.s	$f4,$f18
     11c:	44072000 	mfc1	a3,$f4
     120:	44062800 	mfc1	a2,$f5
     124:	0c000000 	jal	0 <EnHeishi1_Init>
     128:	00000000 	nop
     12c:	c6260290 	lwc1	$f6,656(s1)
     130:	3c040000 	lui	a0,0x0
     134:	248400dc 	addiu	a0,a0,220
     138:	46003221 	cvt.d.s	$f8,$f6
     13c:	44074000 	mfc1	a3,$f8
     140:	44064800 	mfc1	a2,$f9
     144:	0c000000 	jal	0 <EnHeishi1_Init>
     148:	00000000 	nop
     14c:	c62a0294 	lwc1	$f10,660(s1)
     150:	3c040000 	lui	a0,0x0
     154:	24840108 	addiu	a0,a0,264
     158:	46005421 	cvt.d.s	$f16,$f10
     15c:	44078000 	mfc1	a3,$f16
     160:	44068800 	mfc1	a2,$f17
     164:	0c000000 	jal	0 <EnHeishi1_Init>
     168:	00000000 	nop
     16c:	c6320298 	lwc1	$f18,664(s1)
     170:	3c040000 	lui	a0,0x0
     174:	24840134 	addiu	a0,a0,308
     178:	46009121 	cvt.d.s	$f4,$f18
     17c:	44072000 	mfc1	a3,$f4
     180:	44062800 	mfc1	a2,$f5
     184:	0c000000 	jal	0 <EnHeishi1_Init>
     188:	00000000 	nop
     18c:	c626029c 	lwc1	$f6,668(s1)
     190:	3c040000 	lui	a0,0x0
     194:	24840160 	addiu	a0,a0,352
     198:	46003221 	cvt.d.s	$f8,$f6
     19c:	44074000 	mfc1	a3,$f8
     1a0:	44064800 	mfc1	a2,$f9
     1a4:	0c000000 	jal	0 <EnHeishi1_Init>
     1a8:	00000000 	nop
     1ac:	c62a02a0 	lwc1	$f10,672(s1)
     1b0:	3c040000 	lui	a0,0x0
     1b4:	2484018c 	addiu	a0,a0,396
     1b8:	46005421 	cvt.d.s	$f16,$f10
     1bc:	44078000 	mfc1	a3,$f16
     1c0:	44068800 	mfc1	a2,$f17
     1c4:	0c000000 	jal	0 <EnHeishi1_Init>
     1c8:	00000000 	nop
     1cc:	3c020000 	lui	v0,0x0
     1d0:	3c040000 	lui	a0,0x0
     1d4:	248401b8 	addiu	a0,a0,440
     1d8:	0c000000 	jal	0 <EnHeishi1_Init>
     1dc:	9445000c 	lhu	a1,12(v0)
     1e0:	3c040000 	lui	a0,0x0
     1e4:	248401cc 	addiu	a0,a0,460
     1e8:	0c000000 	jal	0 <EnHeishi1_Init>
     1ec:	3405baaa 	li	a1,0xbaaa
     1f0:	3c040000 	lui	a0,0x0
     1f4:	0c000000 	jal	0 <EnHeishi1_Init>
     1f8:	248401e8 	addiu	a0,a0,488
     1fc:	862e026c 	lh	t6,620(s1)
     200:	24010003 	li	at,3
     204:	3c100000 	lui	s0,0x0
     208:	15c1001f 	bne	t6,at,288 <EnHeishi1_Init+0x288>
     20c:	26100000 	addiu	s0,s0,0
     210:	26441c24 	addiu	a0,s2,7204
     214:	afa4004c 	sw	a0,76(sp)
     218:	8e190000 	lw	t9,0(s0)
     21c:	8fa4004c 	lw	a0,76(sp)
     220:	27af005c 	addiu	t7,sp,92
     224:	adf90000 	sw	t9,0(t7)
     228:	8e180004 	lw	t8,4(s0)
     22c:	24080003 	li	t0,3
     230:	02202825 	move	a1,s1
     234:	adf80004 	sw	t8,4(t7)
     238:	8e190008 	lw	t9,8(s0)
     23c:	02403025 	move	a2,s2
     240:	24070131 	li	a3,305
     244:	adf90008 	sw	t9,8(t7)
     248:	c7a60064 	lwc1	$f6,100(sp)
     24c:	c7a40060 	lwc1	$f4,96(sp)
     250:	c7b2005c 	lwc1	$f18,92(sp)
     254:	afa80028 	sw	t0,40(sp)
     258:	afa00024 	sw	zero,36(sp)
     25c:	afa00020 	sw	zero,32(sp)
     260:	afa0001c 	sw	zero,28(sp)
     264:	e7a60018 	swc1	$f6,24(sp)
     268:	e7a40014 	swc1	$f4,20(sp)
     26c:	0c000000 	jal	0 <EnHeishi1_Init>
     270:	e7b20010 	swc1	$f18,16(sp)
     274:	3c090000 	lui	t1,0x0
     278:	25290060 	addiu	t1,t1,96
     27c:	2610000c 	addiu	s0,s0,12
     280:	5609ffe6 	bnel	s0,t1,21c <EnHeishi1_Init+0x21c>
     284:	8e190000 	lw	t9,0(s0)
     288:	862a026a 	lh	t2,618(s1)
     28c:	24010005 	li	at,5
     290:	3c020000 	lui	v0,0x0
     294:	11410017 	beq	t2,at,2f4 <EnHeishi1_Init+0x2f4>
     298:	24420000 	addiu	v0,v0,0
     29c:	3c020000 	lui	v0,0x0
     2a0:	24420000 	addiu	v0,v0,0
     2a4:	944b000c 	lhu	t3,12(v0)
     2a8:	3401b888 	li	at,0xb888
     2ac:	0161082a 	slt	at,t3,at
     2b0:	54200005 	bnezl	at,2c8 <EnHeishi1_Init+0x2c8>
     2b4:	944d0ee4 	lhu	t5,3812(v0)
     2b8:	8c4c0010 	lw	t4,16(v0)
     2bc:	15800009 	bnez	t4,2e4 <EnHeishi1_Init+0x2e4>
     2c0:	00000000 	nop
     2c4:	944d0ee4 	lhu	t5,3812(v0)
     2c8:	3c0f0000 	lui	t7,0x0
     2cc:	25ef0000 	addiu	t7,t7,0
     2d0:	31ae0001 	andi	t6,t5,0x1
     2d4:	15c00003 	bnez	t6,2e4 <EnHeishi1_Init+0x2e4>
     2d8:	00000000 	nop
     2dc:	10000016 	b	338 <EnHeishi1_Init+0x338>
     2e0:	ae2f025c 	sw	t7,604(s1)
     2e4:	0c000000 	jal	0 <EnHeishi1_Init>
     2e8:	02202025 	move	a0,s1
     2ec:	10000013 	b	33c <EnHeishi1_Init+0x33c>
     2f0:	8fbf0044 	lw	ra,68(sp)
     2f4:	9458000c 	lhu	t8,12(v0)
     2f8:	3401b889 	li	at,0xb889
     2fc:	3c0a0000 	lui	t2,0x0
     300:	0301082a 	slt	at,t8,at
     304:	10200008 	beqz	at,328 <EnHeishi1_Init+0x328>
     308:	254a0000 	addiu	t2,t2,0
     30c:	8c590010 	lw	t9,16(v0)
     310:	17200005 	bnez	t9,328 <EnHeishi1_Init+0x328>
     314:	00000000 	nop
     318:	94480ee4 	lhu	t0,3812(v0)
     31c:	31090001 	andi	t1,t0,0x1
     320:	11200003 	beqz	t1,330 <EnHeishi1_Init+0x330>
     324:	00000000 	nop
     328:	10000003 	b	338 <EnHeishi1_Init+0x338>
     32c:	ae2a025c 	sw	t2,604(s1)
     330:	0c000000 	jal	0 <EnHeishi1_Init>
     334:	02202025 	move	a0,s1
     338:	8fbf0044 	lw	ra,68(sp)
     33c:	8fb00038 	lw	s0,56(sp)
     340:	8fb1003c 	lw	s1,60(sp)
     344:	8fb20040 	lw	s2,64(sp)
     348:	03e00008 	jr	ra
     34c:	27bd0070 	addiu	sp,sp,112

00000350 <EnHeishi1_Destroy>:
     350:	afa40000 	sw	a0,0(sp)
     354:	03e00008 	jr	ra
     358:	afa50004 	sw	a1,4(sp)

0000035c <EnHeishi1_SetupWalk>:
     35c:	27bdffd0 	addiu	sp,sp,-48
     360:	afb00028 	sw	s0,40(sp)
     364:	00808025 	move	s0,a0
     368:	afbf002c 	sw	ra,44(sp)
     36c:	3c040000 	lui	a0,0x0
     370:	afa50034 	sw	a1,52(sp)
     374:	0c000000 	jal	0 <EnHeishi1_Init>
     378:	24840000 	addiu	a0,a0,0
     37c:	44822000 	mtc1	v0,$f4
     380:	8e060284 	lw	a2,644(s0)
     384:	afa00014 	sw	zero,20(sp)
     388:	468021a0 	cvt.s.w	$f6,$f4
     38c:	3c050000 	lui	a1,0x0
     390:	24a50000 	addiu	a1,a1,0
     394:	2604014c 	addiu	a0,s0,332
     398:	24070000 	li	a3,0
     39c:	4600320d 	trunc.w.s	$f8,$f6
     3a0:	440f4000 	mfc1	t7,$f8
     3a4:	00000000 	nop
     3a8:	000fc400 	sll	t8,t7,0x10
     3ac:	0018cc03 	sra	t9,t8,0x10
     3b0:	44995000 	mtc1	t9,$f10
     3b4:	00000000 	nop
     3b8:	46805420 	cvt.s.w	$f16,$f10
     3bc:	e7b00010 	swc1	$f16,16(sp)
     3c0:	c6120288 	lwc1	$f18,648(s0)
     3c4:	0c000000 	jal	0 <EnHeishi1_Init>
     3c8:	e7b20018 	swc1	$f18,24(sp)
     3cc:	44800000 	mtc1	zero,$f0
     3d0:	3c010000 	lui	at,0x0
     3d4:	e6000278 	swc1	$f0,632(s0)
     3d8:	e6000274 	swc1	$f0,628(s0)
     3dc:	0c000000 	jal	0 <EnHeishi1_Init>
     3e0:	c42c02f8 	lwc1	$f12,760(at)
     3e4:	4600010d 	trunc.w.s	$f4,$f0
     3e8:	3c0a0000 	lui	t2,0x0
     3ec:	254a0000 	addiu	t2,t2,0
     3f0:	ae0a025c 	sw	t2,604(s0)
     3f4:	44092000 	mfc1	t1,$f4
     3f8:	00000000 	nop
     3fc:	a6090262 	sh	t1,610(s0)
     400:	8fbf002c 	lw	ra,44(sp)
     404:	8fb00028 	lw	s0,40(sp)
     408:	27bd0030 	addiu	sp,sp,48
     40c:	03e00008 	jr	ra
     410:	00000000 	nop

00000414 <EnHeishi1_Walk>:
     414:	27bdffb8 	addiu	sp,sp,-72
     418:	afb00020 	sw	s0,32(sp)
     41c:	00808025 	move	s0,a0
     420:	afbf0024 	sw	ra,36(sp)
     424:	2484014c 	addiu	a0,a0,332
     428:	afa5004c 	sw	a1,76(sp)
     42c:	0c000000 	jal	0 <EnHeishi1_Init>
     430:	afa4002c 	sw	a0,44(sp)
     434:	8fa4002c 	lw	a0,44(sp)
     438:	0c000000 	jal	0 <EnHeishi1_Init>
     43c:	3c053f80 	lui	a1,0x3f80
     440:	14400004 	bnez	v0,454 <EnHeishi1_Walk+0x40>
     444:	8fa4002c 	lw	a0,44(sp)
     448:	0c000000 	jal	0 <EnHeishi1_Init>
     44c:	3c054188 	lui	a1,0x4188
     450:	10400003 	beqz	v0,460 <EnHeishi1_Walk+0x4c>
     454:	02002025 	move	a0,s0
     458:	0c000000 	jal	0 <EnHeishi1_Init>
     45c:	240528f0 	li	a1,10480
     460:	3c0e0000 	lui	t6,0x0
     464:	8dce0000 	lw	t6,0(t6)
     468:	8faf004c 	lw	t7,76(sp)
     46c:	3c180001 	lui	t8,0x1
     470:	15c000d0 	bnez	t6,7b4 <EnHeishi1_Walk+0x3a0>
     474:	030fc021 	addu	t8,t8,t7
     478:	8619026c 	lh	t9,620(s0)
     47c:	8f181e08 	lw	t8,7688(t8)
     480:	3c0d0000 	lui	t5,0x0
     484:	001948c0 	sll	t1,t9,0x3
     488:	03094021 	addu	t0,t8,t1
     48c:	8d030004 	lw	v1,4(t0)
     490:	860f02aa 	lh	t7,682(s0)
     494:	3c0100ff 	lui	at,0xff
     498:	00035100 	sll	t2,v1,0x4
     49c:	000a5f02 	srl	t3,t2,0x1c
     4a0:	000b6080 	sll	t4,t3,0x2
     4a4:	01ac6821 	addu	t5,t5,t4
     4a8:	8dad0000 	lw	t5,0(t5)
     4ac:	3421ffff 	ori	at,at,0xffff
     4b0:	00617024 	and	t6,v1,at
     4b4:	000fc880 	sll	t9,t7,0x2
     4b8:	3c018000 	lui	at,0x8000
     4bc:	032fc823 	subu	t9,t9,t7
     4c0:	01ae1021 	addu	v0,t5,t6
     4c4:	00411021 	addu	v0,v0,at
     4c8:	0019c840 	sll	t9,t9,0x1
     4cc:	00591021 	addu	v0,v0,t9
     4d0:	84580000 	lh	t8,0(v0)
     4d4:	8e070274 	lw	a3,628(s0)
     4d8:	afa80044 	sw	t0,68(sp)
     4dc:	44982000 	mtc1	t8,$f4
     4e0:	afa20040 	sw	v0,64(sp)
     4e4:	26040024 	addiu	a0,s0,36
     4e8:	46802120 	cvt.s.w	$f4,$f4
     4ec:	3c063f80 	lui	a2,0x3f80
     4f0:	44052000 	mfc1	a1,$f4
     4f4:	0c000000 	jal	0 <EnHeishi1_Init>
     4f8:	00000000 	nop
     4fc:	8fa20040 	lw	v0,64(sp)
     500:	2604002c 	addiu	a0,s0,44
     504:	3c063f80 	lui	a2,0x3f80
     508:	84490004 	lh	t1,4(v0)
     50c:	8e070274 	lw	a3,628(s0)
     510:	44893000 	mtc1	t1,$f6
     514:	00000000 	nop
     518:	468031a0 	cvt.s.w	$f6,$f6
     51c:	44053000 	mfc1	a1,$f6
     520:	0c000000 	jal	0 <EnHeishi1_Init>
     524:	00000000 	nop
     528:	26040274 	addiu	a0,s0,628
     52c:	8e05028c 	lw	a1,652(s0)
     530:	3c063f80 	lui	a2,0x3f80
     534:	0c000000 	jal	0 <EnHeishi1_Init>
     538:	8e070290 	lw	a3,656(s0)
     53c:	8fa20040 	lw	v0,64(sp)
     540:	c6100024 	lwc1	$f16,36(s0)
     544:	c606002c 	lwc1	$f6,44(s0)
     548:	844a0000 	lh	t2,0(v0)
     54c:	844b0004 	lh	t3,4(v0)
     550:	448a4000 	mtc1	t2,$f8
     554:	448b9000 	mtc1	t3,$f18
     558:	468042a0 	cvt.s.w	$f10,$f8
     55c:	46809120 	cvt.s.w	$f4,$f18
     560:	46105301 	sub.s	$f12,$f10,$f16
     564:	46062381 	sub.s	$f14,$f4,$f6
     568:	e7ac003c 	swc1	$f12,60(sp)
     56c:	0c000000 	jal	0 <EnHeishi1_Init>
     570:	e7ae0038 	swc1	$f14,56(sp)
     574:	3c010000 	lui	at,0x0
     578:	c42802fc 	lwc1	$f8,764(at)
     57c:	c6120278 	lwc1	$f18,632(s0)
     580:	afa00010 	sw	zero,16(sp)
     584:	46080282 	mul.s	$f10,$f0,$f8
     588:	4600910d 	trunc.w.s	$f4,$f18
     58c:	260400b6 	addiu	a0,s0,182
     590:	24060003 	li	a2,3
     594:	44072000 	mfc1	a3,$f4
     598:	4600540d 	trunc.w.s	$f16,$f10
     59c:	00073c00 	sll	a3,a3,0x10
     5a0:	00073c03 	sra	a3,a3,0x10
     5a4:	44058000 	mfc1	a1,$f16
     5a8:	00000000 	nop
     5ac:	00052c00 	sll	a1,a1,0x10
     5b0:	0c000000 	jal	0 <EnHeishi1_Init>
     5b4:	00052c03 	sra	a1,a1,0x10
     5b8:	26040278 	addiu	a0,s0,632
     5bc:	8e050294 	lw	a1,660(s0)
     5c0:	3c063f80 	lui	a2,0x3f80
     5c4:	0c000000 	jal	0 <EnHeishi1_Init>
     5c8:	8e070298 	lw	a3,664(s0)
     5cc:	860e02a4 	lh	t6,676(s0)
     5d0:	55c00020 	bnezl	t6,654 <EnHeishi1_Walk+0x240>
     5d4:	2604027c 	addiu	a0,s0,636
     5d8:	860f0262 	lh	t7,610(s0)
     5dc:	3c014600 	lui	at,0x4600
     5e0:	44813000 	mtc1	at,$f6
     5e4:	25f90001 	addiu	t9,t7,1
     5e8:	a6190262 	sh	t9,610(s0)
     5ec:	86180262 	lh	t8,610(s0)
     5f0:	3c01bf80 	lui	at,0xbf80
     5f4:	e6060280 	swc1	$f6,640(s0)
     5f8:	33090001 	andi	t1,t8,0x1
     5fc:	51200007 	beqzl	t1,61c <EnHeishi1_Walk+0x208>
     600:	3c0141f0 	lui	at,0x41f0
     604:	c6080280 	lwc1	$f8,640(s0)
     608:	44815000 	mtc1	at,$f10
     60c:	00000000 	nop
     610:	460a4402 	mul.s	$f16,$f8,$f10
     614:	e6100280 	swc1	$f16,640(s0)
     618:	3c0141f0 	lui	at,0x41f0
     61c:	44816000 	mtc1	at,$f12
     620:	0c000000 	jal	0 <EnHeishi1_Init>
     624:	00000000 	nop
     628:	860a026a 	lh	t2,618(s0)
     62c:	4600048d 	trunc.w.s	$f18,$f0
     630:	3c0c0000 	lui	t4,0x0
     634:	000a5840 	sll	t3,t2,0x1
     638:	018b6021 	addu	t4,t4,t3
     63c:	858c0000 	lh	t4,0(t4)
     640:	44199000 	mfc1	t9,$f18
     644:	00000000 	nop
     648:	0199c021 	addu	t8,t4,t9
     64c:	a61802a4 	sh	t8,676(s0)
     650:	2604027c 	addiu	a0,s0,636
     654:	8e050280 	lw	a1,640(s0)
     658:	8e06029c 	lw	a2,668(s0)
     65c:	0c000000 	jal	0 <EnHeishi1_Init>
     660:	8e0702a0 	lw	a3,672(s0)
     664:	3c020000 	lui	v0,0x0
     668:	8c420000 	lw	v0,0(v0)
     66c:	8605026c 	lh	a1,620(s0)
     670:	844912d6 	lh	t1,4822(v0)
     674:	54a90020 	bnel	a1,t1,6f8 <EnHeishi1_Walk+0x2e4>
     678:	c7a0003c 	lwc1	$f0,60(sp)
     67c:	844a12d4 	lh	t2,4820(v0)
     680:	3c040000 	lui	a0,0x0
     684:	5140001c 	beqzl	t2,6f8 <EnHeishi1_Walk+0x2e4>
     688:	c7a0003c 	lwc1	$f0,60(sp)
     68c:	0c000000 	jal	0 <EnHeishi1_Init>
     690:	248401ec 	addiu	a0,a0,492
     694:	3c040000 	lui	a0,0x0
     698:	24840200 	addiu	a0,a0,512
     69c:	0c000000 	jal	0 <EnHeishi1_Init>
     6a0:	860502aa 	lh	a1,682(s0)
     6a4:	c6040278 	lwc1	$f4,632(s0)
     6a8:	3c040000 	lui	a0,0x0
     6ac:	24840214 	addiu	a0,a0,532
     6b0:	460021a1 	cvt.d.s	$f6,$f4
     6b4:	44073000 	mfc1	a3,$f6
     6b8:	44063800 	mfc1	a2,$f7
     6bc:	0c000000 	jal	0 <EnHeishi1_Init>
     6c0:	00000000 	nop
     6c4:	3c040000 	lui	a0,0x0
     6c8:	24840228 	addiu	a0,a0,552
     6cc:	0c000000 	jal	0 <EnHeishi1_Init>
     6d0:	86050270 	lh	a1,624(s0)
     6d4:	8fab0044 	lw	t3,68(sp)
     6d8:	3c040000 	lui	a0,0x0
     6dc:	2484023c 	addiu	a0,a0,572
     6e0:	0c000000 	jal	0 <EnHeishi1_Init>
     6e4:	91650000 	lbu	a1,0(t3)
     6e8:	3c040000 	lui	a0,0x0
     6ec:	0c000000 	jal	0 <EnHeishi1_Init>
     6f0:	24840250 	addiu	a0,a0,592
     6f4:	c7a0003c 	lwc1	$f0,60(sp)
     6f8:	3c0141a0 	lui	at,0x41a0
     6fc:	44811000 	mtc1	at,$f2
     700:	46000005 	abs.s	$f0,$f0
     704:	4602003c 	c.lt.s	$f0,$f2
     708:	c7a00038 	lwc1	$f0,56(sp)
     70c:	4502002a 	bc1fl	7b8 <EnHeishi1_Walk+0x3a4>
     710:	8fbf0024 	lw	ra,36(sp)
     714:	46000005 	abs.s	$f0,$f0
     718:	4602003c 	c.lt.s	$f0,$f2
     71c:	00000000 	nop
     720:	45020025 	bc1fl	7b8 <EnHeishi1_Walk+0x3a4>
     724:	8fbf0024 	lw	ra,36(sp)
     728:	860d0270 	lh	t5,624(s0)
     72c:	55a00022 	bnezl	t5,7b8 <EnHeishi1_Walk+0x3a4>
     730:	8fbf0024 	lw	ra,36(sp)
     734:	860e026a 	lh	t6,618(s0)
     738:	29c10002 	slti	at,t6,2
     73c:	1420001a 	bnez	at,7a8 <EnHeishi1_Walk+0x394>
     740:	00000000 	nop
     744:	860f02aa 	lh	t7,682(s0)
     748:	29e10004 	slti	at,t7,4
     74c:	14200016 	bnez	at,7a8 <EnHeishi1_Walk+0x394>
     750:	3c010000 	lui	at,0x0
     754:	0c000000 	jal	0 <EnHeishi1_Init>
     758:	c42c0300 	lwc1	$f12,768(at)
     75c:	3c013f80 	lui	at,0x3f80
     760:	44814000 	mtc1	at,$f8
     764:	24190005 	li	t9,5
     768:	4600403c 	c.lt.s	$f8,$f0
     76c:	00000000 	nop
     770:	4500000d 	bc1f	7a8 <EnHeishi1_Walk+0x394>
     774:	00000000 	nop
     778:	860202aa 	lh	v0,682(s0)
     77c:	24010007 	li	at,7
     780:	54410004 	bnel	v0,at,794 <EnHeishi1_Walk+0x380>
     784:	28410004 	slti	at,v0,4
     788:	a60002aa 	sh	zero,682(s0)
     78c:	860202aa 	lh	v0,682(s0)
     790:	28410004 	slti	at,v0,4
     794:	14200002 	bnez	at,7a0 <EnHeishi1_Walk+0x38c>
     798:	244cfffd 	addiu	t4,v0,-3
     79c:	a60c02aa 	sh	t4,682(s0)
     7a0:	10000004 	b	7b4 <EnHeishi1_Walk+0x3a0>
     7a4:	a6190270 	sh	t9,624(s0)
     7a8:	3c180000 	lui	t8,0x0
     7ac:	27180000 	addiu	t8,t8,0
     7b0:	ae18025c 	sw	t8,604(s0)
     7b4:	8fbf0024 	lw	ra,36(sp)
     7b8:	8fb00020 	lw	s0,32(sp)
     7bc:	27bd0048 	addiu	sp,sp,72
     7c0:	03e00008 	jr	ra
     7c4:	00000000 	nop

000007c8 <EnHeishi1_SetupMoveToLink>:
     7c8:	27bdffd0 	addiu	sp,sp,-48
     7cc:	afb00028 	sw	s0,40(sp)
     7d0:	00808025 	move	s0,a0
     7d4:	afbf002c 	sw	ra,44(sp)
     7d8:	3c040000 	lui	a0,0x0
     7dc:	afa50034 	sw	a1,52(sp)
     7e0:	0c000000 	jal	0 <EnHeishi1_Init>
     7e4:	24840000 	addiu	a0,a0,0
     7e8:	44822000 	mtc1	v0,$f4
     7ec:	3c01c040 	lui	at,0xc040
     7f0:	44819000 	mtc1	at,$f18
     7f4:	468021a0 	cvt.s.w	$f6,$f4
     7f8:	3c050000 	lui	a1,0x0
     7fc:	24a50000 	addiu	a1,a1,0
     800:	2604014c 	addiu	a0,s0,332
     804:	3c064040 	lui	a2,0x4040
     808:	24070000 	li	a3,0
     80c:	4600320d 	trunc.w.s	$f8,$f6
     810:	afa00014 	sw	zero,20(sp)
     814:	e7b20018 	swc1	$f18,24(sp)
     818:	440f4000 	mfc1	t7,$f8
     81c:	00000000 	nop
     820:	000fc400 	sll	t8,t7,0x10
     824:	0018cc03 	sra	t9,t8,0x10
     828:	44995000 	mtc1	t9,$f10
     82c:	00000000 	nop
     830:	46805420 	cvt.s.w	$f16,$f10
     834:	0c000000 	jal	0 <EnHeishi1_Init>
     838:	e7b00010 	swc1	$f16,16(sp)
     83c:	44800000 	mtc1	zero,$f0
     840:	2405702d 	li	a1,28717
     844:	02003025 	move	a2,s0
     848:	e6000278 	swc1	$f0,632(s0)
     84c:	e6000274 	swc1	$f0,628(s0)
     850:	0c000000 	jal	0 <EnHeishi1_Init>
     854:	8fa40034 	lw	a0,52(sp)
     858:	8fa40034 	lw	a0,52(sp)
     85c:	0c000000 	jal	0 <EnHeishi1_Init>
     860:	24050012 	li	a1,18
     864:	3c080000 	lui	t0,0x0
     868:	25080000 	addiu	t0,t0,0
     86c:	ae08025c 	sw	t0,604(s0)
     870:	8fbf002c 	lw	ra,44(sp)
     874:	8fb00028 	lw	s0,40(sp)
     878:	27bd0030 	addiu	sp,sp,48
     87c:	03e00008 	jr	ra
     880:	00000000 	nop

00000884 <EnHeishi1_MoveToLink>:
     884:	27bdffd0 	addiu	sp,sp,-48
     888:	afbf0024 	sw	ra,36(sp)
     88c:	afb00020 	sw	s0,32(sp)
     890:	8cae1c44 	lw	t6,7236(a1)
     894:	00808025 	move	s0,a0
     898:	2484014c 	addiu	a0,a0,332
     89c:	0c000000 	jal	0 <EnHeishi1_Init>
     8a0:	afae002c 	sw	t6,44(sp)
     8a4:	8faf002c 	lw	t7,44(sp)
     8a8:	26040024 	addiu	a0,s0,36
     8ac:	3c063f80 	lui	a2,0x3f80
     8b0:	8e070274 	lw	a3,628(s0)
     8b4:	0c000000 	jal	0 <EnHeishi1_Init>
     8b8:	8de50024 	lw	a1,36(t7)
     8bc:	8fb8002c 	lw	t8,44(sp)
     8c0:	2604002c 	addiu	a0,s0,44
     8c4:	3c063f80 	lui	a2,0x3f80
     8c8:	8e070274 	lw	a3,628(s0)
     8cc:	0c000000 	jal	0 <EnHeishi1_Init>
     8d0:	8f05002c 	lw	a1,44(t8)
     8d4:	3c073ecc 	lui	a3,0x3ecc
     8d8:	34e7cccd 	ori	a3,a3,0xcccd
     8dc:	26040274 	addiu	a0,s0,628
     8e0:	3c0540c0 	lui	a1,0x40c0
     8e4:	0c000000 	jal	0 <EnHeishi1_Init>
     8e8:	3c063f80 	lui	a2,0x3f80
     8ec:	c6040278 	lwc1	$f4,632(s0)
     8f0:	8605008a 	lh	a1,138(s0)
     8f4:	afa00010 	sw	zero,16(sp)
     8f8:	4600218d 	trunc.w.s	$f6,$f4
     8fc:	260400b6 	addiu	a0,s0,182
     900:	24060003 	li	a2,3
     904:	44073000 	mfc1	a3,$f6
     908:	00000000 	nop
     90c:	00073c00 	sll	a3,a3,0x10
     910:	0c000000 	jal	0 <EnHeishi1_Init>
     914:	00073c03 	sra	a3,a3,0x10
     918:	3c05453b 	lui	a1,0x453b
     91c:	34a58000 	ori	a1,a1,0x8000
     920:	26040278 	addiu	a0,s0,632
     924:	3c063f80 	lui	a2,0x3f80
     928:	0c000000 	jal	0 <EnHeishi1_Init>
     92c:	3c074396 	lui	a3,0x4396
     930:	2604027c 	addiu	a0,s0,636
     934:	3c053f00 	lui	a1,0x3f00
     938:	0c000000 	jal	0 <EnHeishi1_Init>
     93c:	3c0644fa 	lui	a2,0x44fa
     940:	3c01428c 	lui	at,0x428c
     944:	44815000 	mtc1	at,$f10
     948:	c6080090 	lwc1	$f8,144(s0)
     94c:	3c080000 	lui	t0,0x0
     950:	25080000 	addiu	t0,t0,0
     954:	460a403c 	c.lt.s	$f8,$f10
     958:	00000000 	nop
     95c:	45020003 	bc1fl	96c <EnHeishi1_MoveToLink+0xe8>
     960:	8fbf0024 	lw	ra,36(sp)
     964:	ae08025c 	sw	t0,604(s0)
     968:	8fbf0024 	lw	ra,36(sp)
     96c:	8fb00020 	lw	s0,32(sp)
     970:	27bd0030 	addiu	sp,sp,48
     974:	03e00008 	jr	ra
     978:	00000000 	nop

0000097c <EnHeishi1_SetupWait>:
     97c:	27bdffd0 	addiu	sp,sp,-48
     980:	afb00028 	sw	s0,40(sp)
     984:	00808025 	move	s0,a0
     988:	afbf002c 	sw	ra,44(sp)
     98c:	3c040000 	lui	a0,0x0
     990:	afa50034 	sw	a1,52(sp)
     994:	0c000000 	jal	0 <EnHeishi1_Init>
     998:	24840000 	addiu	a0,a0,0
     99c:	44822000 	mtc1	v0,$f4
     9a0:	8e060284 	lw	a2,644(s0)
     9a4:	afa00014 	sw	zero,20(sp)
     9a8:	468021a0 	cvt.s.w	$f6,$f4
     9ac:	3c050000 	lui	a1,0x0
     9b0:	24a50000 	addiu	a1,a1,0
     9b4:	2604014c 	addiu	a0,s0,332
     9b8:	24070000 	li	a3,0
     9bc:	4600320d 	trunc.w.s	$f8,$f6
     9c0:	440f4000 	mfc1	t7,$f8
     9c4:	00000000 	nop
     9c8:	000fc400 	sll	t8,t7,0x10
     9cc:	0018cc03 	sra	t9,t8,0x10
     9d0:	44995000 	mtc1	t9,$f10
     9d4:	00000000 	nop
     9d8:	46805420 	cvt.s.w	$f16,$f10
     9dc:	e7b00010 	swc1	$f16,16(sp)
     9e0:	c6120288 	lwc1	$f18,648(s0)
     9e4:	0c000000 	jal	0 <EnHeishi1_Init>
     9e8:	e7b20018 	swc1	$f18,24(sp)
     9ec:	a6000264 	sh	zero,612(s0)
     9f0:	3c010000 	lui	at,0x0
     9f4:	0c000000 	jal	0 <EnHeishi1_Init>
     9f8:	c42c0304 	lwc1	$f12,772(at)
     9fc:	4600010d 	trunc.w.s	$f4,$f0
     a00:	3c014248 	lui	at,0x4248
     a04:	44816000 	mtc1	at,$f12
     a08:	44092000 	mfc1	t1,$f4
     a0c:	0c000000 	jal	0 <EnHeishi1_Init>
     a10:	a6090262 	sh	t1,610(s0)
     a14:	4600018d 	trunc.w.s	$f6,$f0
     a18:	3c0f0000 	lui	t7,0x0
     a1c:	25ef0000 	addiu	t7,t7,0
     a20:	ae0f025c 	sw	t7,604(s0)
     a24:	440d3000 	mfc1	t5,$f6
     a28:	00000000 	nop
     a2c:	25ae0032 	addiu	t6,t5,50
     a30:	a60e02a6 	sh	t6,678(s0)
     a34:	8fbf002c 	lw	ra,44(sp)
     a38:	8fb00028 	lw	s0,40(sp)
     a3c:	27bd0030 	addiu	sp,sp,48
     a40:	03e00008 	jr	ra
     a44:	00000000 	nop

00000a48 <EnHeishi1_Wait>:
     a48:	27bdffe0 	addiu	sp,sp,-32
     a4c:	afb00018 	sw	s0,24(sp)
     a50:	00808025 	move	s0,a0
     a54:	afbf001c 	sw	ra,28(sp)
     a58:	afa50024 	sw	a1,36(sp)
     a5c:	0c000000 	jal	0 <EnHeishi1_Init>
     a60:	2484014c 	addiu	a0,a0,332
     a64:	3c0e0000 	lui	t6,0x0
     a68:	8dce0000 	lw	t6,0(t6)
     a6c:	55c00080 	bnezl	t6,c70 <EnHeishi1_Wait+0x228>
     a70:	8fbf001c 	lw	ra,28(sp)
     a74:	86020264 	lh	v0,612(s0)
     a78:	24030001 	li	v1,1
     a7c:	50400006 	beqzl	v0,a98 <EnHeishi1_Wait+0x50>
     a80:	860f0262 	lh	t7,610(s0)
     a84:	50430023 	beql	v0,v1,b14 <EnHeishi1_Wait+0xcc>
     a88:	861902a4 	lh	t9,676(s0)
     a8c:	10000051 	b	bd4 <EnHeishi1_Wait+0x18c>
     a90:	c60002a0 	lwc1	$f0,672(s0)
     a94:	860f0262 	lh	t7,610(s0)
     a98:	3c01c614 	lui	at,0xc614
     a9c:	25f80001 	addiu	t8,t7,1
     aa0:	a6180262 	sh	t8,610(s0)
     aa4:	86190262 	lh	t9,610(s0)
     aa8:	33280001 	andi	t0,t9,0x1
     aac:	51000006 	beqzl	t0,ac8 <EnHeishi1_Wait+0x80>
     ab0:	44813000 	mtc1	at,$f6
     ab4:	3c014614 	lui	at,0x4614
     ab8:	44812000 	mtc1	at,$f4
     abc:	10000004 	b	ad0 <EnHeishi1_Wait+0x88>
     ac0:	e6040280 	swc1	$f4,640(s0)
     ac4:	44813000 	mtc1	at,$f6
     ac8:	00000000 	nop
     acc:	e6060280 	swc1	$f6,640(s0)
     ad0:	3c0141f0 	lui	at,0x41f0
     ad4:	44816000 	mtc1	at,$f12
     ad8:	0c000000 	jal	0 <EnHeishi1_Init>
     adc:	00000000 	nop
     ae0:	8609026a 	lh	t1,618(s0)
     ae4:	4600020d 	trunc.w.s	$f8,$f0
     ae8:	3c0b0000 	lui	t3,0x0
     aec:	00095040 	sll	t2,t1,0x1
     af0:	016a5821 	addu	t3,t3,t2
     af4:	856b0000 	lh	t3,0(t3)
     af8:	440f4000 	mfc1	t7,$f8
     afc:	24030001 	li	v1,1
     b00:	a6030264 	sh	v1,612(s0)
     b04:	016fc021 	addu	t8,t3,t7
     b08:	10000031 	b	bd0 <EnHeishi1_Wait+0x188>
     b0c:	a61802a4 	sh	t8,676(s0)
     b10:	861902a4 	lh	t9,676(s0)
     b14:	5720002f 	bnezl	t9,bd4 <EnHeishi1_Wait+0x18c>
     b18:	c60002a0 	lwc1	$f0,672(s0)
     b1c:	860802a6 	lh	t0,678(s0)
     b20:	3c180000 	lui	t8,0x0
     b24:	27180000 	addiu	t8,t8,0
     b28:	55000029 	bnezl	t0,bd0 <EnHeishi1_Wait+0x188>
     b2c:	a6000264 	sh	zero,612(s0)
     b30:	8602026a 	lh	v0,618(s0)
     b34:	50400004 	beqzl	v0,b48 <EnHeishi1_Wait+0x100>
     b38:	860902aa 	lh	t1,682(s0)
     b3c:	1462000a 	bne	v1,v0,b68 <EnHeishi1_Wait+0x120>
     b40:	3c040000 	lui	a0,0x0
     b44:	860902aa 	lh	t1,682(s0)
     b48:	252a0001 	addiu	t2,t1,1
     b4c:	a60a02aa 	sh	t2,682(s0)
     b50:	860c02aa 	lh	t4,682(s0)
     b54:	29810004 	slti	at,t4,4
     b58:	1420001a 	bnez	at,bc4 <EnHeishi1_Wait+0x17c>
     b5c:	00000000 	nop
     b60:	10000018 	b	bc4 <EnHeishi1_Wait+0x17c>
     b64:	a60002aa 	sh	zero,682(s0)
     b68:	3c020000 	lui	v0,0x0
     b6c:	24420000 	addiu	v0,v0,0
     b70:	860302aa 	lh	v1,682(s0)
     b74:	24840010 	addiu	a0,a0,16
     b78:	844d0000 	lh	t5,0(v0)
     b7c:	146d000b 	bne	v1,t5,bac <EnHeishi1_Wait+0x164>
     b80:	3c0e0000 	lui	t6,0x0
     b84:	24420002 	addiu	v0,v0,2
     b88:	25ce0010 	addiu	t6,t6,16
     b8c:	004e082b 	sltu	at,v0,t6
     b90:	54200004 	bnezl	at,ba4 <EnHeishi1_Wait+0x15c>
     b94:	844b0000 	lh	t3,0(v0)
     b98:	3c020000 	lui	v0,0x0
     b9c:	24420000 	addiu	v0,v0,0
     ba0:	844b0000 	lh	t3,0(v0)
     ba4:	10000005 	b	bbc <EnHeishi1_Wait+0x174>
     ba8:	a60b02aa 	sh	t3,682(s0)
     bac:	24420002 	addiu	v0,v0,2
     bb0:	0044082b 	sltu	at,v0,a0
     bb4:	5420fff1 	bnezl	at,b7c <EnHeishi1_Wait+0x134>
     bb8:	844d0000 	lh	t5,0(v0)
     bbc:	240f0005 	li	t7,5
     bc0:	a60f0270 	sh	t7,624(s0)
     bc4:	10000002 	b	bd0 <EnHeishi1_Wait+0x188>
     bc8:	ae18025c 	sw	t8,604(s0)
     bcc:	a6000264 	sh	zero,612(s0)
     bd0:	c60002a0 	lwc1	$f0,672(s0)
     bd4:	2604027c 	addiu	a0,s0,636
     bd8:	8e050280 	lw	a1,640(s0)
     bdc:	46000280 	add.s	$f10,$f0,$f0
     be0:	8e06029c 	lw	a2,668(s0)
     be4:	44075000 	mfc1	a3,$f10
     be8:	0c000000 	jal	0 <EnHeishi1_Init>
     bec:	00000000 	nop
     bf0:	3c020000 	lui	v0,0x0
     bf4:	8c420000 	lw	v0,0(v0)
     bf8:	8605026c 	lh	a1,620(s0)
     bfc:	845912d6 	lh	t9,4822(v0)
     c00:	54b9001b 	bnel	a1,t9,c70 <EnHeishi1_Wait+0x228>
     c04:	8fbf001c 	lw	ra,28(sp)
     c08:	844812d4 	lh	t0,4820(v0)
     c0c:	3c040000 	lui	a0,0x0
     c10:	51000017 	beqzl	t0,c70 <EnHeishi1_Wait+0x228>
     c14:	8fbf001c 	lw	ra,28(sp)
     c18:	0c000000 	jal	0 <EnHeishi1_Init>
     c1c:	24840254 	addiu	a0,a0,596
     c20:	3c040000 	lui	a0,0x0
     c24:	24840268 	addiu	a0,a0,616
     c28:	0c000000 	jal	0 <EnHeishi1_Init>
     c2c:	860502aa 	lh	a1,682(s0)
     c30:	c6100278 	lwc1	$f16,632(s0)
     c34:	3c040000 	lui	a0,0x0
     c38:	2484027c 	addiu	a0,a0,636
     c3c:	460084a1 	cvt.d.s	$f18,$f16
     c40:	44079000 	mfc1	a3,$f18
     c44:	44069800 	mfc1	a2,$f19
     c48:	0c000000 	jal	0 <EnHeishi1_Init>
     c4c:	00000000 	nop
     c50:	3c040000 	lui	a0,0x0
     c54:	24840290 	addiu	a0,a0,656
     c58:	0c000000 	jal	0 <EnHeishi1_Init>
     c5c:	86050270 	lh	a1,624(s0)
     c60:	3c040000 	lui	a0,0x0
     c64:	0c000000 	jal	0 <EnHeishi1_Init>
     c68:	248402a4 	addiu	a0,a0,676
     c6c:	8fbf001c 	lw	ra,28(sp)
     c70:	8fb00018 	lw	s0,24(sp)
     c74:	27bd0020 	addiu	sp,sp,32
     c78:	03e00008 	jr	ra
     c7c:	00000000 	nop

00000c80 <EnHeishi1_SetupTurnTowardLink>:
     c80:	27bdffd8 	addiu	sp,sp,-40
     c84:	afa40028 	sw	a0,40(sp)
     c88:	afbf0024 	sw	ra,36(sp)
     c8c:	3c040000 	lui	a0,0x0
     c90:	afa5002c 	sw	a1,44(sp)
     c94:	0c000000 	jal	0 <EnHeishi1_Init>
     c98:	24840000 	addiu	a0,a0,0
     c9c:	44822000 	mtc1	v0,$f4
     ca0:	3c01c120 	lui	at,0xc120
     ca4:	44819000 	mtc1	at,$f18
     ca8:	468021a0 	cvt.s.w	$f6,$f4
     cac:	8fa40028 	lw	a0,40(sp)
     cb0:	3c050000 	lui	a1,0x0
     cb4:	24a50000 	addiu	a1,a1,0
     cb8:	3c063f80 	lui	a2,0x3f80
     cbc:	24070000 	li	a3,0
     cc0:	4600320d 	trunc.w.s	$f8,$f6
     cc4:	afa00014 	sw	zero,20(sp)
     cc8:	e7b20018 	swc1	$f18,24(sp)
     ccc:	2484014c 	addiu	a0,a0,332
     cd0:	440f4000 	mfc1	t7,$f8
     cd4:	00000000 	nop
     cd8:	000fc400 	sll	t8,t7,0x10
     cdc:	0018cc03 	sra	t9,t8,0x10
     ce0:	44995000 	mtc1	t9,$f10
     ce4:	00000000 	nop
     ce8:	46805420 	cvt.s.w	$f16,$f10
     cec:	0c000000 	jal	0 <EnHeishi1_Init>
     cf0:	e7b00010 	swc1	$f16,16(sp)
     cf4:	8fa20028 	lw	v0,40(sp)
     cf8:	3c090000 	lui	t1,0x0
     cfc:	2408001e 	li	t0,30
     d00:	25290000 	addiu	t1,t1,0
     d04:	a44802a8 	sh	t0,680(v0)
     d08:	ac49025c 	sw	t1,604(v0)
     d0c:	8fbf0024 	lw	ra,36(sp)
     d10:	27bd0028 	addiu	sp,sp,40
     d14:	03e00008 	jr	ra
     d18:	00000000 	nop

00000d1c <EnHeishi1_TurnTowardLink>:
     d1c:	27bdffd8 	addiu	sp,sp,-40
     d20:	afb00020 	sw	s0,32(sp)
     d24:	00808025 	move	s0,a0
     d28:	afbf0024 	sw	ra,36(sp)
     d2c:	afa5002c 	sw	a1,44(sp)
     d30:	0c000000 	jal	0 <EnHeishi1_Init>
     d34:	2484014c 	addiu	a0,a0,332
     d38:	860e026a 	lh	t6,618(s0)
     d3c:	24010005 	li	at,5
     d40:	51c10017 	beql	t6,at,da0 <EnHeishi1_TurnTowardLink+0x84>
     d44:	861802a8 	lh	t8,680(s0)
     d48:	c6040278 	lwc1	$f4,632(s0)
     d4c:	8605008a 	lh	a1,138(s0)
     d50:	afa00010 	sw	zero,16(sp)
     d54:	4600218d 	trunc.w.s	$f6,$f4
     d58:	260400b6 	addiu	a0,s0,182
     d5c:	24060003 	li	a2,3
     d60:	44073000 	mfc1	a3,$f6
     d64:	00000000 	nop
     d68:	00073c00 	sll	a3,a3,0x10
     d6c:	0c000000 	jal	0 <EnHeishi1_Init>
     d70:	00073c03 	sra	a3,a3,0x10
     d74:	3c05453b 	lui	a1,0x453b
     d78:	34a58000 	ori	a1,a1,0x8000
     d7c:	26040278 	addiu	a0,s0,632
     d80:	3c063f80 	lui	a2,0x3f80
     d84:	0c000000 	jal	0 <EnHeishi1_Init>
     d88:	3c074396 	lui	a3,0x4396
     d8c:	2604027c 	addiu	a0,s0,636
     d90:	3c053f00 	lui	a1,0x3f00
     d94:	0c000000 	jal	0 <EnHeishi1_Init>
     d98:	3c0644fa 	lui	a2,0x44fa
     d9c:	861802a8 	lh	t8,680(s0)
     da0:	3c190000 	lui	t9,0x0
     da4:	27390000 	addiu	t9,t9,0
     da8:	57000003 	bnezl	t8,db8 <EnHeishi1_TurnTowardLink+0x9c>
     dac:	8fbf0024 	lw	ra,36(sp)
     db0:	ae19025c 	sw	t9,604(s0)
     db4:	8fbf0024 	lw	ra,36(sp)
     db8:	8fb00020 	lw	s0,32(sp)
     dbc:	27bd0028 	addiu	sp,sp,40
     dc0:	03e00008 	jr	ra
     dc4:	00000000 	nop

00000dc8 <EnHeishi1_SetupKick>:
     dc8:	27bdffd8 	addiu	sp,sp,-40
     dcc:	afa40028 	sw	a0,40(sp)
     dd0:	afbf0024 	sw	ra,36(sp)
     dd4:	3c040000 	lui	a0,0x0
     dd8:	afa5002c 	sw	a1,44(sp)
     ddc:	0c000000 	jal	0 <EnHeishi1_Init>
     de0:	24840000 	addiu	a0,a0,0
     de4:	44822000 	mtc1	v0,$f4
     de8:	3c01c120 	lui	at,0xc120
     dec:	44819000 	mtc1	at,$f18
     df0:	468021a0 	cvt.s.w	$f6,$f4
     df4:	8fa40028 	lw	a0,40(sp)
     df8:	3c050000 	lui	a1,0x0
     dfc:	24a50000 	addiu	a1,a1,0
     e00:	3c063f80 	lui	a2,0x3f80
     e04:	24070000 	li	a3,0
     e08:	4600320d 	trunc.w.s	$f8,$f6
     e0c:	afa00014 	sw	zero,20(sp)
     e10:	e7b20018 	swc1	$f18,24(sp)
     e14:	2484014c 	addiu	a0,a0,332
     e18:	440f4000 	mfc1	t7,$f8
     e1c:	00000000 	nop
     e20:	000fc400 	sll	t8,t7,0x10
     e24:	0018cc03 	sra	t9,t8,0x10
     e28:	44995000 	mtc1	t9,$f10
     e2c:	00000000 	nop
     e30:	46805420 	cvt.s.w	$f16,$f10
     e34:	0c000000 	jal	0 <EnHeishi1_Init>
     e38:	e7b00010 	swc1	$f16,16(sp)
     e3c:	8fa90028 	lw	t1,40(sp)
     e40:	3c080000 	lui	t0,0x0
     e44:	25080000 	addiu	t0,t0,0
     e48:	ad28025c 	sw	t0,604(t1)
     e4c:	8fbf0024 	lw	ra,36(sp)
     e50:	27bd0028 	addiu	sp,sp,40
     e54:	03e00008 	jr	ra
     e58:	00000000 	nop

00000e5c <EnHeishi1_Kick>:
     e5c:	27bdffe0 	addiu	sp,sp,-32
     e60:	afbf001c 	sw	ra,28(sp)
     e64:	afb00018 	sw	s0,24(sp)
     e68:	afa40020 	sw	a0,32(sp)
     e6c:	00a08025 	move	s0,a1
     e70:	0c000000 	jal	0 <EnHeishi1_Init>
     e74:	2484014c 	addiu	a0,a0,332
     e78:	8fae0020 	lw	t6,32(sp)
     e7c:	85cf0268 	lh	t7,616(t6)
     e80:	55e00026 	bnezl	t7,f1c <EnHeishi1_Kick+0xc0>
     e84:	8fbf001c 	lw	ra,28(sp)
     e88:	0c000000 	jal	0 <EnHeishi1_Init>
     e8c:	260420d8 	addiu	a0,s0,8408
     e90:	24010005 	li	at,5
     e94:	54410021 	bnel	v0,at,f1c <EnHeishi1_Kick+0xc0>
     e98:	8fbf001c 	lw	ra,28(sp)
     e9c:	0c000000 	jal	0 <EnHeishi1_Init>
     ea0:	02002025 	move	a0,s0
     ea4:	5040001d 	beqzl	v0,f1c <EnHeishi1_Kick+0xc0>
     ea8:	8fbf001c 	lw	ra,28(sp)
     eac:	0c000000 	jal	0 <EnHeishi1_Init>
     eb0:	02002025 	move	a0,s0
     eb4:	8fa40020 	lw	a0,32(sp)
     eb8:	3c020000 	lui	v0,0x0
     ebc:	24420000 	addiu	v0,v0,0
     ec0:	84980268 	lh	t8,616(a0)
     ec4:	2403002e 	li	v1,46
     ec8:	240904fa 	li	t1,1274
     ecc:	17000012 	bnez	t8,f18 <EnHeishi1_Kick+0xbc>
     ed0:	3c010001 	lui	at,0x1
     ed4:	94590edc 	lhu	t9,3804(v0)
     ed8:	00300821 	addu	at,at,s0
     edc:	240a0014 	li	t2,20
     ee0:	37284000 	ori	t0,t9,0x4000
     ee4:	a4480edc 	sh	t0,3804(v0)
     ee8:	a4291e1a 	sh	t1,7706(at)
     eec:	3c010001 	lui	at,0x1
     ef0:	00300821 	addu	at,at,s0
     ef4:	a02a1e15 	sb	t2,7701(at)
     ef8:	240b0001 	li	t3,1
     efc:	a48b0268 	sh	t3,616(a0)
     f00:	3c010000 	lui	at,0x0
     f04:	ac200000 	sw	zero,0(at)
     f08:	3c010001 	lui	at,0x1
     f0c:	00300821 	addu	at,at,s0
     f10:	a0231e5e 	sb	v1,7774(at)
     f14:	a043141d 	sb	v1,5149(v0)
     f18:	8fbf001c 	lw	ra,28(sp)
     f1c:	8fb00018 	lw	s0,24(sp)
     f20:	27bd0020 	addiu	sp,sp,32
     f24:	03e00008 	jr	ra
     f28:	00000000 	nop

00000f2c <EnHeishi1_SetupWaitNight>:
     f2c:	27bdffd8 	addiu	sp,sp,-40
     f30:	afa40028 	sw	a0,40(sp)
     f34:	afbf0024 	sw	ra,36(sp)
     f38:	3c040000 	lui	a0,0x0
     f3c:	afa5002c 	sw	a1,44(sp)
     f40:	0c000000 	jal	0 <EnHeishi1_Init>
     f44:	24840000 	addiu	a0,a0,0
     f48:	44822000 	mtc1	v0,$f4
     f4c:	3c01c120 	lui	at,0xc120
     f50:	44819000 	mtc1	at,$f18
     f54:	468021a0 	cvt.s.w	$f6,$f4
     f58:	8fa40028 	lw	a0,40(sp)
     f5c:	3c050000 	lui	a1,0x0
     f60:	24a50000 	addiu	a1,a1,0
     f64:	3c063f80 	lui	a2,0x3f80
     f68:	24070000 	li	a3,0
     f6c:	4600320d 	trunc.w.s	$f8,$f6
     f70:	afa00014 	sw	zero,20(sp)
     f74:	e7b20018 	swc1	$f18,24(sp)
     f78:	2484014c 	addiu	a0,a0,332
     f7c:	440f4000 	mfc1	t7,$f8
     f80:	00000000 	nop
     f84:	000fc400 	sll	t8,t7,0x10
     f88:	0018cc03 	sra	t9,t8,0x10
     f8c:	44995000 	mtc1	t9,$f10
     f90:	00000000 	nop
     f94:	46805420 	cvt.s.w	$f16,$f10
     f98:	0c000000 	jal	0 <EnHeishi1_Init>
     f9c:	e7b00010 	swc1	$f16,16(sp)
     fa0:	8fa90028 	lw	t1,40(sp)
     fa4:	3c080000 	lui	t0,0x0
     fa8:	25080000 	addiu	t0,t0,0
     fac:	ad28025c 	sw	t0,604(t1)
     fb0:	8fbf0024 	lw	ra,36(sp)
     fb4:	27bd0028 	addiu	sp,sp,40
     fb8:	03e00008 	jr	ra
     fbc:	00000000 	nop

00000fc0 <EnHeishi1_WaitNight>:
     fc0:	27bdffe0 	addiu	sp,sp,-32
     fc4:	afb00018 	sw	s0,24(sp)
     fc8:	00808025 	move	s0,a0
     fcc:	afbf001c 	sw	ra,28(sp)
     fd0:	afa50024 	sw	a1,36(sp)
     fd4:	0c000000 	jal	0 <EnHeishi1_Init>
     fd8:	2484014c 	addiu	a0,a0,332
     fdc:	3c0142c8 	lui	at,0x42c8
     fe0:	44813000 	mtc1	at,$f6
     fe4:	c6040090 	lwc1	$f4,144(s0)
     fe8:	8fa40024 	lw	a0,36(sp)
     fec:	2405702d 	li	a1,28717
     ff0:	4606203c 	c.lt.s	$f4,$f6
     ff4:	00000000 	nop
     ff8:	45020010 	bc1fl	103c <EnHeishi1_WaitNight+0x7c>
     ffc:	8fbf001c 	lw	ra,28(sp)
    1000:	0c000000 	jal	0 <EnHeishi1_Init>
    1004:	02003025 	move	a2,s0
    1008:	0c000000 	jal	0 <EnHeishi1_Init>
    100c:	2404482c 	li	a0,18476
    1010:	3c040000 	lui	a0,0x0
    1014:	0c000000 	jal	0 <EnHeishi1_Init>
    1018:	248402a8 	addiu	a0,a0,680
    101c:	8fa40024 	lw	a0,36(sp)
    1020:	02002825 	move	a1,s0
    1024:	0c000000 	jal	0 <EnHeishi1_Init>
    1028:	24060001 	li	a2,1
    102c:	3c0e0000 	lui	t6,0x0
    1030:	25ce0000 	addiu	t6,t6,0
    1034:	ae0e025c 	sw	t6,604(s0)
    1038:	8fbf001c 	lw	ra,28(sp)
    103c:	8fb00018 	lw	s0,24(sp)
    1040:	27bd0020 	addiu	sp,sp,32
    1044:	03e00008 	jr	ra
    1048:	00000000 	nop

0000104c <EnHeishi1_Update>:
    104c:	27bdff88 	addiu	sp,sp,-120
    1050:	afbf0024 	sw	ra,36(sp)
    1054:	afb00020 	sw	s0,32(sp)
    1058:	848e0260 	lh	t6,608(a0)
    105c:	8ca71c44 	lw	a3,7236(a1)
    1060:	00808025 	move	s0,a0
    1064:	25cf0001 	addiu	t7,t6,1
    1068:	a48f0260 	sh	t7,608(a0)
    106c:	00001025 	move	v0,zero
    1070:	0002c040 	sll	t8,v0,0x1
    1074:	02181821 	addu	v1,s0,t8
    1078:	846402a4 	lh	a0,676(v1)
    107c:	24420001 	addiu	v0,v0,1
    1080:	304200ff 	andi	v0,v0,0xff
    1084:	10800003 	beqz	a0,1094 <EnHeishi1_Update+0x48>
    1088:	28410003 	slti	at,v0,3
    108c:	2499ffff 	addiu	t9,a0,-1
    1090:	a47902a4 	sh	t9,676(v1)
    1094:	5420fff7 	bnezl	at,1074 <EnHeishi1_Update+0x28>
    1098:	0002c040 	sll	t8,v0,0x1
    109c:	86020270 	lh	v0,624(s0)
    10a0:	10400002 	beqz	v0,10ac <EnHeishi1_Update+0x60>
    10a4:	2448ffff 	addiu	t0,v0,-1
    10a8:	a6080270 	sh	t0,624(s0)
    10ac:	84a907a0 	lh	t1,1952(a1)
    10b0:	94ec0110 	lhu	t4,272(a3)
    10b4:	00095080 	sll	t2,t1,0x2
    10b8:	00aa5821 	addu	t3,a1,t2
    10bc:	158000a6 	bnez	t4,1358 <EnHeishi1_Update+0x30c>
    10c0:	8d660790 	lw	a2,1936(t3)
    10c4:	afa5007c 	sw	a1,124(sp)
    10c8:	afa60060 	sw	a2,96(sp)
    10cc:	afa70068 	sw	a3,104(sp)
    10d0:	8e19025c 	lw	t9,604(s0)
    10d4:	02002025 	move	a0,s0
    10d8:	0320f809 	jalr	t9
    10dc:	00000000 	nop
    10e0:	3c010000 	lui	at,0x0
    10e4:	c4240308 	lwc1	$f4,776(at)
    10e8:	3c0143af 	lui	at,0x43af
    10ec:	44813000 	mtc1	at,$f6
    10f0:	3c01442f 	lui	at,0x442f
    10f4:	44814000 	mtc1	at,$f8
    10f8:	860d026a 	lh	t5,618(s0)
    10fc:	8fa60060 	lw	a2,96(sp)
    1100:	24010005 	li	at,5
    1104:	e60400f4 	swc1	$f4,244(s0)
    1108:	e60600f8 	swc1	$f6,248(s0)
    110c:	11a10092 	beq	t5,at,1358 <EnHeishi1_Update+0x30c>
    1110:	e60800fc 	swc1	$f8,252(s0)
    1114:	8602026c 	lh	v0,620(s0)
    1118:	3c0f0000 	lui	t7,0x0
    111c:	25ef0000 	addiu	t7,t7,0
    1120:	00021040 	sll	v0,v0,0x1
    1124:	00021400 	sll	v0,v0,0x10
    1128:	00021403 	sra	v0,v0,0x10
    112c:	00027080 	sll	t6,v0,0x2
    1130:	01cf2021 	addu	a0,t6,t7
    1134:	8c980000 	lw	t8,0(a0)
    1138:	84c30148 	lh	v1,328(a2)
    113c:	3c090000 	lui	t1,0x0
    1140:	10780004 	beq	v1,t8,1154 <EnHeishi1_Update+0x108>
    1144:	00000000 	nop
    1148:	8c880004 	lw	t0,4(a0)
    114c:	54680083 	bnel	v1,t0,135c <EnHeishi1_Update+0x310>
    1150:	8fbf0024 	lw	ra,36(sp)
    1154:	8d290000 	lw	t1,0(t1)
    1158:	55200080 	bnezl	t1,135c <EnHeishi1_Update+0x310>
    115c:	8fbf0024 	lw	ra,36(sp)
    1160:	8e02025c 	lw	v0,604(s0)
    1164:	3c0a0000 	lui	t2,0x0
    1168:	254a0000 	addiu	t2,t2,0
    116c:	11420003 	beq	t2,v0,117c <EnHeishi1_Update+0x130>
    1170:	3c0b0000 	lui	t3,0x0
    1174:	256b0000 	addiu	t3,t3,0
    1178:	15620077 	bne	t3,v0,1358 <EnHeishi1_Update+0x30c>
    117c:	3c190000 	lui	t9,0x0
    1180:	27390160 	addiu	t9,t9,352
    1184:	8f2e0000 	lw	t6,0(t9)
    1188:	27ac0048 	addiu	t4,sp,72
    118c:	8f2d0004 	lw	t5,4(t9)
    1190:	ad8e0000 	sw	t6,0(t4)
    1194:	8f2e0008 	lw	t6,8(t9)
    1198:	3c180000 	lui	t8,0x0
    119c:	2718016c 	addiu	t8,t8,364
    11a0:	ad8d0004 	sw	t5,4(t4)
    11a4:	ad8e0008 	sw	t6,8(t4)
    11a8:	8f090000 	lw	t1,0(t8)
    11ac:	27af003c 	addiu	t7,sp,60
    11b0:	8f080004 	lw	t0,4(t8)
    11b4:	ade90000 	sw	t1,0(t7)
    11b8:	8f090008 	lw	t1,8(t8)
    11bc:	ade80004 	sw	t0,4(t7)
    11c0:	3c014270 	lui	at,0x4270
    11c4:	ade90008 	sw	t1,8(t7)
    11c8:	c60a0024 	lwc1	$f10,36(s0)
    11cc:	44819000 	mtc1	at,$f18
    11d0:	e7aa0030 	swc1	$f10,48(sp)
    11d4:	c6100028 	lwc1	$f16,40(s0)
    11d8:	46128100 	add.s	$f4,$f16,$f18
    11dc:	e7a40034 	swc1	$f4,52(sp)
    11e0:	c606002c 	lwc1	$f6,44(s0)
    11e4:	0c000000 	jal	0 <EnHeishi1_Init>
    11e8:	e7a60038 	swc1	$f6,56(sp)
    11ec:	860a00b6 	lh	t2,182(s0)
    11f0:	c610027c 	lwc1	$f16,636(s0)
    11f4:	3c014700 	lui	at,0x4700
    11f8:	448a4000 	mtc1	t2,$f8
    11fc:	44812000 	mtc1	at,$f4
    1200:	3c010000 	lui	at,0x0
    1204:	468042a0 	cvt.s.w	$f10,$f8
    1208:	c428030c 	lwc1	$f8,780(at)
    120c:	00002825 	move	a1,zero
    1210:	46105480 	add.s	$f18,$f10,$f16
    1214:	46049183 	div.s	$f6,$f18,$f4
    1218:	46083302 	mul.s	$f12,$f6,$f8
    121c:	0c000000 	jal	0 <EnHeishi1_Init>
    1220:	00000000 	nop
    1224:	3c0141f0 	lui	at,0x41f0
    1228:	44815000 	mtc1	at,$f10
    122c:	27a4003c 	addiu	a0,sp,60
    1230:	27a50054 	addiu	a1,sp,84
    1234:	0c000000 	jal	0 <EnHeishi1_Init>
    1238:	e7aa0044 	swc1	$f10,68(sp)
    123c:	0c000000 	jal	0 <EnHeishi1_Init>
    1240:	00000000 	nop
    1244:	240b0002 	li	t3,2
    1248:	260c0266 	addiu	t4,s0,614
    124c:	afac0014 	sw	t4,20(sp)
    1250:	afab0010 	sw	t3,16(sp)
    1254:	8fa4007c 	lw	a0,124(sp)
    1258:	27a50030 	addiu	a1,sp,48
    125c:	27a60054 	addiu	a2,sp,84
    1260:	0c000000 	jal	0 <EnHeishi1_Init>
    1264:	27a70048 	addiu	a3,sp,72
    1268:	3c014270 	lui	at,0x4270
    126c:	44811000 	mtc1	at,$f2
    1270:	c6000090 	lwc1	$f0,144(s0)
    1274:	24190001 	li	t9,1
    1278:	3c01428c 	lui	at,0x428c
    127c:	4602003c 	c.lt.s	$f0,$f2
    1280:	00000000 	nop
    1284:	45020004 	bc1fl	1298 <EnHeishi1_Update+0x24c>
    1288:	44818000 	mtc1	at,$f16
    128c:	1000000f 	b	12cc <EnHeishi1_Update+0x280>
    1290:	a6190266 	sh	t9,614(s0)
    1294:	44818000 	mtc1	at,$f16
    1298:	8fad0068 	lw	t5,104(sp)
    129c:	4610003c 	c.lt.s	$f0,$f16
    12a0:	00000000 	nop
    12a4:	45000009 	bc1f	12cc <EnHeishi1_Update+0x280>
    12a8:	3c01c080 	lui	at,0xc080
    12ac:	44819000 	mtc1	at,$f18
    12b0:	c5a40060 	lwc1	$f4,96(t5)
    12b4:	240e0001 	li	t6,1
    12b8:	4604903c 	c.lt.s	$f18,$f4
    12bc:	00000000 	nop
    12c0:	45020003 	bc1fl	12d0 <EnHeishi1_Update+0x284>
    12c4:	860f0266 	lh	t7,614(s0)
    12c8:	a60e0266 	sh	t6,614(s0)
    12cc:	860f0266 	lh	t7,614(s0)
    12d0:	8fa20068 	lw	v0,104(sp)
    12d4:	3c010000 	lui	at,0x0
    12d8:	51e00020 	beqzl	t7,135c <EnHeishi1_Update+0x310>
    12dc:	8fbf0024 	lw	ra,36(sp)
    12e0:	c4260310 	lwc1	$f6,784(at)
    12e4:	c4480060 	lwc1	$f8,96(v0)
    12e8:	4608303c 	c.lt.s	$f6,$f8
    12ec:	00000000 	nop
    12f0:	4503001a 	bc1tl	135c <EnHeishi1_Update+0x310>
    12f4:	8fbf0024 	lw	ra,36(sp)
    12f8:	a6000266 	sh	zero,614(s0)
    12fc:	c44a0028 	lwc1	$f10,40(v0)
    1300:	c6100028 	lwc1	$f16,40(s0)
    1304:	46105001 	sub.s	$f0,$f10,$f16
    1308:	46000005 	abs.s	$f0,$f0
    130c:	4602003c 	c.lt.s	$f0,$f2
    1310:	00000000 	nop
    1314:	45020011 	bc1fl	135c <EnHeishi1_Update+0x310>
    1318:	8fbf0024 	lw	ra,36(sp)
    131c:	0c000000 	jal	0 <EnHeishi1_Init>
    1320:	2404482c 	li	a0,18476
    1324:	3c040000 	lui	a0,0x0
    1328:	0c000000 	jal	0 <EnHeishi1_Init>
    132c:	248402d0 	addiu	a0,a0,720
    1330:	8fa4007c 	lw	a0,124(sp)
    1334:	02002825 	move	a1,s0
    1338:	0c000000 	jal	0 <EnHeishi1_Init>
    133c:	24060001 	li	a2,1
    1340:	24180001 	li	t8,1
    1344:	3c010000 	lui	at,0x0
    1348:	3c080000 	lui	t0,0x0
    134c:	ac380000 	sw	t8,0(at)
    1350:	25080000 	addiu	t0,t0,0
    1354:	ae08025c 	sw	t0,604(s0)
    1358:	8fbf0024 	lw	ra,36(sp)
    135c:	8fb00020 	lw	s0,32(sp)
    1360:	27bd0078 	addiu	sp,sp,120
    1364:	03e00008 	jr	ra
    1368:	00000000 	nop

0000136c <EnHeishi1_OverrideLimbDraw>:
    136c:	24010010 	li	at,16
    1370:	afa40000 	sw	a0,0(sp)
    1374:	afa60008 	sw	a2,8(sp)
    1378:	14a1000a 	bne	a1,at,13a4 <EnHeishi1_OverrideLimbDraw+0x38>
    137c:	afa7000c 	sw	a3,12(sp)
    1380:	8faf0014 	lw	t7,20(sp)
    1384:	8fa20010 	lw	v0,16(sp)
    1388:	c5e4027c 	lwc1	$f4,636(t7)
    138c:	844e0000 	lh	t6,0(v0)
    1390:	4600218d 	trunc.w.s	$f6,$f4
    1394:	44093000 	mfc1	t1,$f6
    1398:	00000000 	nop
    139c:	01c95021 	addu	t2,t6,t1
    13a0:	a44a0000 	sh	t2,0(v0)
    13a4:	03e00008 	jr	ra
    13a8:	00001025 	move	v0,zero

000013ac <EnHeishi1_Draw>:
    13ac:	27bdff98 	addiu	sp,sp,-104
    13b0:	3c0f0000 	lui	t7,0x0
    13b4:	afbf004c 	sw	ra,76(sp)
    13b8:	afb00048 	sw	s0,72(sp)
    13bc:	afa5006c 	sw	a1,108(sp)
    13c0:	25ef0178 	addiu	t7,t7,376
    13c4:	8df90000 	lw	t9,0(t7)
    13c8:	27ae0054 	addiu	t6,sp,84
    13cc:	8df80004 	lw	t8,4(t7)
    13d0:	add90000 	sw	t9,0(t6)
    13d4:	8df90008 	lw	t9,8(t7)
    13d8:	add80004 	sw	t8,4(t6)
    13dc:	00808025 	move	s0,a0
    13e0:	add90008 	sw	t9,8(t6)
    13e4:	8fa8006c 	lw	t0,108(sp)
    13e8:	0c000000 	jal	0 <EnHeishi1_Init>
    13ec:	8d040000 	lw	a0,0(t0)
    13f0:	8e050150 	lw	a1,336(s0)
    13f4:	8e06016c 	lw	a2,364(s0)
    13f8:	3c070000 	lui	a3,0x0
    13fc:	24e70000 	addiu	a3,a3,0
    1400:	afb00014 	sw	s0,20(sp)
    1404:	afa00010 	sw	zero,16(sp)
    1408:	0c000000 	jal	0 <EnHeishi1_Init>
    140c:	8fa4006c 	lw	a0,108(sp)
    1410:	26040024 	addiu	a0,s0,36
    1414:	27a50054 	addiu	a1,sp,84
    1418:	240600ff 	li	a2,255
    141c:	0c000000 	jal	0 <EnHeishi1_Init>
    1420:	8fa7006c 	lw	a3,108(sp)
    1424:	3c020000 	lui	v0,0x0
    1428:	8c420000 	lw	v0,0(v0)
    142c:	8609026c 	lh	t1,620(s0)
    1430:	844a12d6 	lh	t2,4822(v0)
    1434:	552a0020 	bnel	t1,t2,14b8 <EnHeishi1_Draw+0x10c>
    1438:	8fbf004c 	lw	ra,76(sp)
    143c:	844b12d4 	lh	t3,4820(v0)
    1440:	3c013f80 	lui	at,0x3f80
    1444:	240e00ff 	li	t6,255
    1448:	1160001a 	beqz	t3,14b4 <EnHeishi1_Draw+0x108>
    144c:	240f00ff 	li	t7,255
    1450:	860c0032 	lh	t4,50(s0)
    1454:	c6040028 	lwc1	$f4,40(s0)
    1458:	c60c0024 	lwc1	$f12,36(s0)
    145c:	8e06002c 	lw	a2,44(s0)
    1460:	afac0010 	sw	t4,16(sp)
    1464:	860d0034 	lh	t5,52(s0)
    1468:	44810000 	mtc1	at,$f0
    146c:	8fb9006c 	lw	t9,108(sp)
    1470:	24180004 	li	t8,4
    1474:	afb80034 	sw	t8,52(sp)
    1478:	3c0142c8 	lui	at,0x42c8
    147c:	afaf0030 	sw	t7,48(sp)
    1480:	afa0002c 	sw	zero,44(sp)
    1484:	afa00028 	sw	zero,40(sp)
    1488:	afae0024 	sw	t6,36(sp)
    148c:	afad0014 	sw	t5,20(sp)
    1490:	e7a00018 	swc1	$f0,24(sp)
    1494:	e7a0001c 	swc1	$f0,28(sp)
    1498:	e7a00020 	swc1	$f0,32(sp)
    149c:	44813000 	mtc1	at,$f6
    14a0:	8f280000 	lw	t0,0(t9)
    14a4:	24074268 	li	a3,17000
    14a8:	46062380 	add.s	$f14,$f4,$f6
    14ac:	0c000000 	jal	0 <EnHeishi1_Init>
    14b0:	afa80038 	sw	t0,56(sp)
    14b4:	8fbf004c 	lw	ra,76(sp)
    14b8:	8fb00048 	lw	s0,72(sp)
    14bc:	27bd0068 	addiu	sp,sp,104
    14c0:	03e00008 	jr	ra
    14c4:	00000000 	nop
	...
