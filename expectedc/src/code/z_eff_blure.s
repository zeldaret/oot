
build/src/code/z_eff_blure.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectBlure_AddVertex>:
       0:	27bdfe80 	addiu	sp,sp,-384
       4:	afb30028 	sw	s3,40(sp)
       8:	afb20024 	sw	s2,36(sp)
       c:	afb10020 	sw	s1,32(sp)
      10:	00808825 	move	s1,a0
      14:	00a09025 	move	s2,a1
      18:	00c09825 	move	s3,a2
      1c:	afbf002c 	sw	ra,44(sp)
      20:	108000bc 	beqz	a0,314 <EffectBlure_AddVertex+0x314>
      24:	afb0001c 	sw	s0,28(sp)
      28:	9085019e 	lbu	a1,414(a0)
      2c:	3c040000 	lui	a0,0x0
      30:	240f0001 	li	t7,1
      34:	28a10010 	slti	at,a1,16
      38:	14200005 	bnez	at,50 <EffectBlure_AddVertex+0x50>
      3c:	00057080 	sll	t6,a1,0x2
      40:	0c000000 	jal	0 <EffectBlure_AddVertex>
      44:	24840000 	addiu	a0,a0,0
      48:	100000b3 	b	318 <EffectBlure_AddVertex+0x318>
      4c:	8fbf002c 	lw	ra,44(sp)
      50:	01c57023 	subu	t6,t6,a1
      54:	000e70c0 	sll	t6,t6,0x3
      58:	022e8021 	addu	s0,s1,t6
      5c:	ae0f0000 	sw	t7,0(s0)
      60:	96380188 	lhu	t8,392(s1)
      64:	33190002 	andi	t9,t8,0x2
      68:	57200020 	bnezl	t9,ec <EffectBlure_AddVertex+0xec>
      6c:	860afff6 	lh	t2,-10(s0)
      70:	c6440000 	lwc1	$f4,0(s2)
      74:	4600218d 	trunc.w.s	$f6,$f4
      78:	44093000 	mfc1	t1,$f6
      7c:	00000000 	nop
      80:	a6090008 	sh	t1,8(s0)
      84:	c6480004 	lwc1	$f8,4(s2)
      88:	4600428d 	trunc.w.s	$f10,$f8
      8c:	440b5000 	mfc1	t3,$f10
      90:	00000000 	nop
      94:	a60b000a 	sh	t3,10(s0)
      98:	c6500008 	lwc1	$f16,8(s2)
      9c:	4600848d 	trunc.w.s	$f18,$f16
      a0:	440d9000 	mfc1	t5,$f18
      a4:	00000000 	nop
      a8:	a60d000c 	sh	t5,12(s0)
      ac:	c6640000 	lwc1	$f4,0(s3)
      b0:	4600218d 	trunc.w.s	$f6,$f4
      b4:	440f3000 	mfc1	t7,$f6
      b8:	00000000 	nop
      bc:	a60f000e 	sh	t7,14(s0)
      c0:	c6680004 	lwc1	$f8,4(s3)
      c4:	4600428d 	trunc.w.s	$f10,$f8
      c8:	44195000 	mfc1	t9,$f10
      cc:	00000000 	nop
      d0:	a6190010 	sh	t9,16(s0)
      d4:	c6700008 	lwc1	$f16,8(s3)
      d8:	4600848d 	trunc.w.s	$f18,$f16
      dc:	44099000 	mfc1	t1,$f18
      e0:	10000087 	b	300 <EffectBlure_AddVertex+0x300>
      e4:	a6090012 	sh	t1,18(s0)
      e8:	860afff6 	lh	t2,-10(s0)
      ec:	860bfff0 	lh	t3,-16(s0)
      f0:	3c013f00 	lui	at,0x3f00
      f4:	448a2000 	mtc1	t2,$f4
      f8:	448b4000 	mtc1	t3,$f8
      fc:	44810000 	mtc1	at,$f0
     100:	468021a0 	cvt.s.w	$f6,$f4
     104:	27a40160 	addiu	a0,sp,352
     108:	27a5016c 	addiu	a1,sp,364
     10c:	27a60154 	addiu	a2,sp,340
     110:	468042a0 	cvt.s.w	$f10,$f8
     114:	460a3400 	add.s	$f16,$f6,$f10
     118:	46008482 	mul.s	$f18,$f16,$f0
     11c:	e7b2016c 	swc1	$f18,364(sp)
     120:	860dfff2 	lh	t5,-14(s0)
     124:	860cfff8 	lh	t4,-8(s0)
     128:	448d3000 	mtc1	t5,$f6
     12c:	448c2000 	mtc1	t4,$f4
     130:	468032a0 	cvt.s.w	$f10,$f6
     134:	46802220 	cvt.s.w	$f8,$f4
     138:	460a4400 	add.s	$f16,$f8,$f10
     13c:	46008482 	mul.s	$f18,$f16,$f0
     140:	e7b20170 	swc1	$f18,368(sp)
     144:	860ffff4 	lh	t7,-12(s0)
     148:	860efffa 	lh	t6,-6(s0)
     14c:	448f4000 	mtc1	t7,$f8
     150:	448e2000 	mtc1	t6,$f4
     154:	468042a0 	cvt.s.w	$f10,$f8
     158:	468021a0 	cvt.s.w	$f6,$f4
     15c:	460a3400 	add.s	$f16,$f6,$f10
     160:	46008482 	mul.s	$f18,$f16,$f0
     164:	e7b20174 	swc1	$f18,372(sp)
     168:	c6680000 	lwc1	$f8,0(s3)
     16c:	c6440000 	lwc1	$f4,0(s2)
     170:	46082180 	add.s	$f6,$f4,$f8
     174:	46003282 	mul.s	$f10,$f6,$f0
     178:	e7aa0160 	swc1	$f10,352(sp)
     17c:	c6720004 	lwc1	$f18,4(s3)
     180:	c6500004 	lwc1	$f16,4(s2)
     184:	46128100 	add.s	$f4,$f16,$f18
     188:	46002202 	mul.s	$f8,$f4,$f0
     18c:	e7a80164 	swc1	$f8,356(sp)
     190:	c66a0008 	lwc1	$f10,8(s3)
     194:	c6460008 	lwc1	$f6,8(s2)
     198:	460a3400 	add.s	$f16,$f6,$f10
     19c:	46008482 	mul.s	$f18,$f16,$f0
     1a0:	0c000000 	jal	0 <EffectBlure_AddVertex>
     1a4:	e7b20168 	swc1	$f18,360(sp)
     1a8:	0c000000 	jal	0 <EffectBlure_AddVertex>
     1ac:	27a40154 	addiu	a0,sp,340
     1b0:	3c010000 	lui	at,0x0
     1b4:	c42402fc 	lwc1	$f4,764(at)
     1b8:	46000086 	mov.s	$f2,$f0
     1bc:	46000005 	abs.s	$f0,$f0
     1c0:	3c013f80 	lui	at,0x3f80
     1c4:	4604003c 	c.lt.s	$f0,$f4
     1c8:	00000000 	nop
     1cc:	4503004d 	bc1tl	304 <EffectBlure_AddVertex+0x304>
     1d0:	24080001 	li	t0,1
     1d4:	44814000 	mtc1	at,$f8
     1d8:	27a40154 	addiu	a0,sp,340
     1dc:	46024083 	div.s	$f2,$f8,$f2
     1e0:	44051000 	mfc1	a1,$f2
     1e4:	0c000000 	jal	0 <EffectBlure_AddVertex>
     1e8:	00000000 	nop
     1ec:	27a40110 	addiu	a0,sp,272
     1f0:	8fa50160 	lw	a1,352(sp)
     1f4:	8fa60164 	lw	a2,356(sp)
     1f8:	0c000000 	jal	0 <EffectBlure_AddVertex>
     1fc:	8fa70168 	lw	a3,360(sp)
     200:	c7a6015c 	lwc1	$f6,348(sp)
     204:	8625018c 	lh	a1,396(s1)
     208:	27a400d0 	addiu	a0,sp,208
     20c:	8fa60154 	lw	a2,340(sp)
     210:	8fa70158 	lw	a3,344(sp)
     214:	0c000000 	jal	0 <EffectBlure_AddVertex>
     218:	e7a60010 	swc1	$f6,16(sp)
     21c:	27a40110 	addiu	a0,sp,272
     220:	27a500d0 	addiu	a1,sp,208
     224:	0c000000 	jal	0 <EffectBlure_AddVertex>
     228:	27a60090 	addiu	a2,sp,144
     22c:	c7aa0160 	lwc1	$f10,352(sp)
     230:	c7b20164 	lwc1	$f18,356(sp)
     234:	c7a80168 	lwc1	$f8,360(sp)
     238:	46005407 	neg.s	$f16,$f10
     23c:	46009107 	neg.s	$f4,$f18
     240:	46004187 	neg.s	$f6,$f8
     244:	44062000 	mfc1	a2,$f4
     248:	44073000 	mfc1	a3,$f6
     24c:	44058000 	mfc1	a1,$f16
     250:	0c000000 	jal	0 <EffectBlure_AddVertex>
     254:	27a40110 	addiu	a0,sp,272
     258:	27a40090 	addiu	a0,sp,144
     25c:	27a50110 	addiu	a1,sp,272
     260:	0c000000 	jal	0 <EffectBlure_AddVertex>
     264:	27a60050 	addiu	a2,sp,80
     268:	27a40050 	addiu	a0,sp,80
     26c:	02402825 	move	a1,s2
     270:	0c000000 	jal	0 <EffectBlure_AddVertex>
     274:	27a60038 	addiu	a2,sp,56
     278:	27a40050 	addiu	a0,sp,80
     27c:	02602825 	move	a1,s3
     280:	0c000000 	jal	0 <EffectBlure_AddVertex>
     284:	27a60044 	addiu	a2,sp,68
     288:	c7aa0038 	lwc1	$f10,56(sp)
     28c:	4600540d 	trunc.w.s	$f16,$f10
     290:	44198000 	mfc1	t9,$f16
     294:	00000000 	nop
     298:	a6190008 	sh	t9,8(s0)
     29c:	c7b2003c 	lwc1	$f18,60(sp)
     2a0:	4600910d 	trunc.w.s	$f4,$f18
     2a4:	44092000 	mfc1	t1,$f4
     2a8:	00000000 	nop
     2ac:	a609000a 	sh	t1,10(s0)
     2b0:	c7a80040 	lwc1	$f8,64(sp)
     2b4:	4600418d 	trunc.w.s	$f6,$f8
     2b8:	440b3000 	mfc1	t3,$f6
     2bc:	00000000 	nop
     2c0:	a60b000c 	sh	t3,12(s0)
     2c4:	c7aa0044 	lwc1	$f10,68(sp)
     2c8:	4600540d 	trunc.w.s	$f16,$f10
     2cc:	440d8000 	mfc1	t5,$f16
     2d0:	00000000 	nop
     2d4:	a60d000e 	sh	t5,14(s0)
     2d8:	c7b20048 	lwc1	$f18,72(sp)
     2dc:	4600910d 	trunc.w.s	$f4,$f18
     2e0:	440f2000 	mfc1	t7,$f4
     2e4:	00000000 	nop
     2e8:	a60f0010 	sh	t7,16(s0)
     2ec:	c7a8004c 	lwc1	$f8,76(sp)
     2f0:	4600418d 	trunc.w.s	$f6,$f8
     2f4:	44193000 	mfc1	t9,$f6
     2f8:	00000000 	nop
     2fc:	a6190012 	sh	t9,18(s0)
     300:	24080001 	li	t0,1
     304:	ae080004 	sw	t0,4(s0)
     308:	9229019e 	lbu	t1,414(s1)
     30c:	252a0001 	addiu	t2,t1,1
     310:	a22a019e 	sb	t2,414(s1)
     314:	8fbf002c 	lw	ra,44(sp)
     318:	8fb0001c 	lw	s0,28(sp)
     31c:	8fb10020 	lw	s1,32(sp)
     320:	8fb20024 	lw	s2,36(sp)
     324:	8fb30028 	lw	s3,40(sp)
     328:	03e00008 	jr	ra
     32c:	27bd0180 	addiu	sp,sp,384

00000330 <EffectBlure_AddSpace>:
     330:	27bdffe8 	addiu	sp,sp,-24
     334:	10800013 	beqz	a0,384 <EffectBlure_AddSpace+0x54>
     338:	afbf0014 	sw	ra,20(sp)
     33c:	9085019e 	lbu	a1,414(a0)
     340:	240f0001 	li	t7,1
     344:	28a10010 	slti	at,a1,16
     348:	14200006 	bnez	at,364 <EffectBlure_AddSpace+0x34>
     34c:	00057080 	sll	t6,a1,0x2
     350:	3c040000 	lui	a0,0x0
     354:	0c000000 	jal	0 <EffectBlure_AddVertex>
     358:	24840028 	addiu	a0,a0,40
     35c:	1000000a 	b	388 <EffectBlure_AddSpace+0x58>
     360:	8fbf0014 	lw	ra,20(sp)
     364:	01c57023 	subu	t6,t6,a1
     368:	000e70c0 	sll	t6,t6,0x3
     36c:	008e1021 	addu	v0,a0,t6
     370:	ac400000 	sw	zero,0(v0)
     374:	ac4f0004 	sw	t7,4(v0)
     378:	9098019e 	lbu	t8,414(a0)
     37c:	27190001 	addiu	t9,t8,1
     380:	a099019e 	sb	t9,414(a0)
     384:	8fbf0014 	lw	ra,20(sp)
     388:	27bd0018 	addiu	sp,sp,24
     38c:	03e00008 	jr	ra
     390:	00000000 	nop

00000394 <EffectBlure_InitElements>:
     394:	a080019e 	sb	zero,414(a0)
     398:	00801825 	move	v1,a0
     39c:	24040002 	li	a0,2
     3a0:	00001025 	move	v0,zero
     3a4:	24050010 	li	a1,16
     3a8:	24420004 	addiu	v0,v0,4
     3ac:	ac640018 	sw	a0,24(v1)
     3b0:	a4600020 	sh	zero,32(v1)
     3b4:	a4600022 	sh	zero,34(v1)
     3b8:	a4600024 	sh	zero,36(v1)
     3bc:	a4600026 	sh	zero,38(v1)
     3c0:	a4600028 	sh	zero,40(v1)
     3c4:	a460002a 	sh	zero,42(v1)
     3c8:	ac60001c 	sw	zero,28(v1)
     3cc:	a460002c 	sh	zero,44(v1)
     3d0:	ac640030 	sw	a0,48(v1)
     3d4:	a4600038 	sh	zero,56(v1)
     3d8:	a460003a 	sh	zero,58(v1)
     3dc:	a460003c 	sh	zero,60(v1)
     3e0:	a460003e 	sh	zero,62(v1)
     3e4:	a4600040 	sh	zero,64(v1)
     3e8:	a4600042 	sh	zero,66(v1)
     3ec:	ac600034 	sw	zero,52(v1)
     3f0:	a4600044 	sh	zero,68(v1)
     3f4:	ac640048 	sw	a0,72(v1)
     3f8:	a4600050 	sh	zero,80(v1)
     3fc:	a4600052 	sh	zero,82(v1)
     400:	a4600054 	sh	zero,84(v1)
     404:	a4600056 	sh	zero,86(v1)
     408:	a4600058 	sh	zero,88(v1)
     40c:	a460005a 	sh	zero,90(v1)
     410:	ac60004c 	sw	zero,76(v1)
     414:	a460005c 	sh	zero,92(v1)
     418:	24630060 	addiu	v1,v1,96
     41c:	ac64ffa0 	sw	a0,-96(v1)
     420:	a460ffa8 	sh	zero,-88(v1)
     424:	a460ffaa 	sh	zero,-86(v1)
     428:	a460ffac 	sh	zero,-84(v1)
     42c:	a460ffae 	sh	zero,-82(v1)
     430:	a460ffb0 	sh	zero,-80(v1)
     434:	a460ffb2 	sh	zero,-78(v1)
     438:	ac60ffa4 	sw	zero,-92(v1)
     43c:	1445ffda 	bne	v0,a1,3a8 <EffectBlure_InitElements+0x14>
     440:	a460ffb4 	sh	zero,-76(v1)
     444:	03e00008 	jr	ra
     448:	00000000 	nop

0000044c <EffectBlure_Init1>:
     44c:	27bdffe8 	addiu	sp,sp,-24
     450:	1080003d 	beqz	a0,548 <EffectBlure_Init1+0xfc>
     454:	afbf0014 	sw	ra,20(sp)
     458:	50a0003c 	beqzl	a1,54c <EffectBlure_Init1+0x100>
     45c:	8fbf0014 	lw	ra,20(sp)
     460:	afa40018 	sw	a0,24(sp)
     464:	0c000000 	jal	0 <EffectBlure_AddVertex>
     468:	afa5001c 	sw	a1,28(sp)
     46c:	8fa5001c 	lw	a1,28(sp)
     470:	8fa40018 	lw	a0,24(sp)
     474:	3c013f80 	lui	at,0x3f80
     478:	90ae0184 	lbu	t6,388(a1)
     47c:	44812000 	mtc1	at,$f4
     480:	a08e018e 	sb	t6,398(a0)
     484:	90af0188 	lbu	t7,392(a1)
     488:	a08f0192 	sb	t7,402(a0)
     48c:	90b8018c 	lbu	t8,396(a1)
     490:	a0980196 	sb	t8,406(a0)
     494:	90b90190 	lbu	t9,400(a1)
     498:	a099019a 	sb	t9,410(a0)
     49c:	90a80185 	lbu	t0,389(a1)
     4a0:	a088018f 	sb	t0,399(a0)
     4a4:	90a90189 	lbu	t1,393(a1)
     4a8:	a0890193 	sb	t1,403(a0)
     4ac:	90aa018d 	lbu	t2,397(a1)
     4b0:	a08a0197 	sb	t2,407(a0)
     4b4:	90ab0191 	lbu	t3,401(a1)
     4b8:	a08b019b 	sb	t3,411(a0)
     4bc:	90ac0186 	lbu	t4,390(a1)
     4c0:	a08c0190 	sb	t4,400(a0)
     4c4:	90ad018a 	lbu	t5,394(a1)
     4c8:	a08d0194 	sb	t5,404(a0)
     4cc:	90ae018e 	lbu	t6,398(a1)
     4d0:	a08e0198 	sb	t6,408(a0)
     4d4:	90af0192 	lbu	t7,402(a1)
     4d8:	a08f019c 	sb	t7,412(a0)
     4dc:	90b80187 	lbu	t8,391(a1)
     4e0:	a0980191 	sb	t8,401(a0)
     4e4:	90b9018b 	lbu	t9,395(a1)
     4e8:	a0990195 	sb	t9,405(a0)
     4ec:	90a8018f 	lbu	t0,399(a1)
     4f0:	a0880199 	sb	t0,409(a0)
     4f4:	90a90193 	lbu	t1,403(a1)
     4f8:	a089019d 	sb	t1,413(a0)
     4fc:	8caa0194 	lw	t2,404(a1)
     500:	a08a019f 	sb	t2,415(a0)
     504:	8cab0198 	lw	t3,408(a1)
     508:	a08b01a0 	sb	t3,416(a0)
     50c:	8cac019c 	lw	t4,412(a1)
     510:	a4800188 	sh	zero,392(a0)
     514:	a480018a 	sh	zero,394(a0)
     518:	a480018c 	sh	zero,396(a0)
     51c:	a08001a1 	sb	zero,417(a0)
     520:	a08001a2 	sb	zero,418(a0)
     524:	a08001a3 	sb	zero,419(a0)
     528:	a08001a4 	sb	zero,420(a0)
     52c:	a08001a5 	sb	zero,421(a0)
     530:	a08001a6 	sb	zero,422(a0)
     534:	a08001a7 	sb	zero,423(a0)
     538:	a08001a8 	sb	zero,424(a0)
     53c:	a08001a9 	sb	zero,425(a0)
     540:	e4840184 	swc1	$f4,388(a0)
     544:	ac8c0180 	sw	t4,384(a0)
     548:	8fbf0014 	lw	ra,20(sp)
     54c:	27bd0018 	addiu	sp,sp,24
     550:	03e00008 	jr	ra
     554:	00000000 	nop

00000558 <EffectBlure_Init2>:
     558:	27bdffe8 	addiu	sp,sp,-24
     55c:	10800046 	beqz	a0,678 <EffectBlure_Init2+0x120>
     560:	afbf0014 	sw	ra,20(sp)
     564:	50a00045 	beqzl	a1,67c <EffectBlure_Init2+0x124>
     568:	8fbf0014 	lw	ra,20(sp)
     56c:	afa40018 	sw	a0,24(sp)
     570:	0c000000 	jal	0 <EffectBlure_AddVertex>
     574:	afa5001c 	sw	a1,28(sp)
     578:	8fa5001c 	lw	a1,28(sp)
     57c:	8fa40018 	lw	a0,24(sp)
     580:	3c014f80 	lui	at,0x4f80
     584:	90ae0008 	lbu	t6,8(a1)
     588:	a08e018e 	sb	t6,398(a0)
     58c:	90af000c 	lbu	t7,12(a1)
     590:	a08f0192 	sb	t7,402(a0)
     594:	90b80010 	lbu	t8,16(a1)
     598:	a0980196 	sb	t8,406(a0)
     59c:	90b90014 	lbu	t9,20(a1)
     5a0:	a099019a 	sb	t9,410(a0)
     5a4:	90a80009 	lbu	t0,9(a1)
     5a8:	a088018f 	sb	t0,399(a0)
     5ac:	90a9000d 	lbu	t1,13(a1)
     5b0:	a0890193 	sb	t1,403(a0)
     5b4:	90aa0011 	lbu	t2,17(a1)
     5b8:	a08a0197 	sb	t2,407(a0)
     5bc:	90ab0015 	lbu	t3,21(a1)
     5c0:	a08b019b 	sb	t3,411(a0)
     5c4:	90ac000a 	lbu	t4,10(a1)
     5c8:	a08c0190 	sb	t4,400(a0)
     5cc:	90ad000e 	lbu	t5,14(a1)
     5d0:	a08d0194 	sb	t5,404(a0)
     5d4:	90ae0012 	lbu	t6,18(a1)
     5d8:	a08e0198 	sb	t6,408(a0)
     5dc:	90af0016 	lbu	t7,22(a1)
     5e0:	a08f019c 	sb	t7,412(a0)
     5e4:	90b8000b 	lbu	t8,11(a1)
     5e8:	a0980191 	sb	t8,401(a0)
     5ec:	90b9000f 	lbu	t9,15(a1)
     5f0:	a0990195 	sb	t9,405(a0)
     5f4:	90a80013 	lbu	t0,19(a1)
     5f8:	a0880199 	sb	t0,409(a0)
     5fc:	90a90017 	lbu	t1,23(a1)
     600:	a089019d 	sb	t1,413(a0)
     604:	90aa0018 	lbu	t2,24(a1)
     608:	a08a019f 	sb	t2,415(a0)
     60c:	90ab0019 	lbu	t3,25(a1)
     610:	a08b01a0 	sb	t3,416(a0)
     614:	8cac0000 	lw	t4,0(a1)
     618:	ac8c0180 	sw	t4,384(a0)
     61c:	94ad0004 	lhu	t5,4(a1)
     620:	a48d0188 	sh	t5,392(a0)
     624:	90ae001a 	lbu	t6,26(a1)
     628:	a08e01a1 	sb	t6,417(a0)
     62c:	84af0006 	lh	t7,6(a1)
     630:	a480018c 	sh	zero,396(a0)
     634:	a48f018a 	sh	t7,394(a0)
     638:	90b8001b 	lbu	t8,27(a1)
     63c:	44982000 	mtc1	t8,$f4
     640:	07010004 	bgez	t8,654 <EffectBlure_Init2+0xfc>
     644:	468021a0 	cvt.s.w	$f6,$f4
     648:	44814000 	mtc1	at,$f8
     64c:	00000000 	nop
     650:	46083180 	add.s	$f6,$f6,$f8
     654:	e4860184 	swc1	$f6,388(a0)
     658:	88a8001c 	lwl	t0,28(a1)
     65c:	98a8001f 	lwr	t0,31(a1)
     660:	a88801a2 	swl	t0,418(a0)
     664:	b88801a5 	swr	t0,421(a0)
     668:	88aa0020 	lwl	t2,32(a1)
     66c:	98aa0023 	lwr	t2,35(a1)
     670:	a88a01a6 	swl	t2,422(a0)
     674:	b88a01a9 	swr	t2,425(a0)
     678:	8fbf0014 	lw	ra,20(sp)
     67c:	27bd0018 	addiu	sp,sp,24
     680:	03e00008 	jr	ra
     684:	00000000 	nop

00000688 <EffectBlure_Destroy>:
     688:	03e00008 	jr	ra
     68c:	afa40000 	sw	a0,0(sp)

00000690 <EffectBlure_Update>:
     690:	27bdfff8 	addiu	sp,sp,-8
     694:	14800003 	bnez	a0,6a4 <EffectBlure_Update+0x14>
     698:	afb00004 	sw	s0,4(sp)
     69c:	10000111 	b	ae4 <EffectBlure_Update+0x454>
     6a0:	00001025 	move	v0,zero
     6a4:	9083019e 	lbu	v1,414(a0)
     6a8:	24100002 	li	s0,2
     6ac:	240d000f 	li	t5,15
     6b0:	14600003 	bnez	v1,6c0 <EffectBlure_Update+0x30>
     6b4:	00000000 	nop
     6b8:	1000010a 	b	ae4 <EffectBlure_Update+0x454>
     6bc:	00001025 	move	v0,zero
     6c0:	8c820000 	lw	v0,0(a0)
     6c4:	248a0018 	addiu	t2,a0,24
     6c8:	14400075 	bnez	v0,8a0 <EffectBlure_Update+0x210>
     6cc:	00000000 	nop
     6d0:	8d4f0000 	lw	t7,0(t2)
     6d4:	248b0030 	addiu	t3,a0,48
     6d8:	248c0048 	addiu	t4,a0,72
     6dc:	ac8f0000 	sw	t7,0(a0)
     6e0:	8d4e0004 	lw	t6,4(t2)
     6e4:	24830048 	addiu	v1,a0,72
     6e8:	24650018 	addiu	a1,v1,24
     6ec:	ac8e0004 	sw	t6,4(a0)
     6f0:	8d4f0008 	lw	t7,8(t2)
     6f4:	24660030 	addiu	a2,v1,48
     6f8:	24670048 	addiu	a3,v1,72
     6fc:	ac8f0008 	sw	t7,8(a0)
     700:	8d4e000c 	lw	t6,12(t2)
     704:	24680060 	addiu	t0,v1,96
     708:	24020003 	li	v0,3
     70c:	ac8e000c 	sw	t6,12(a0)
     710:	8d4f0010 	lw	t7,16(t2)
     714:	ac8f0010 	sw	t7,16(a0)
     718:	8d4e0014 	lw	t6,20(t2)
     71c:	ac8e0014 	sw	t6,20(a0)
     720:	8d790000 	lw	t9,0(t3)
     724:	ad590000 	sw	t9,0(t2)
     728:	8d780004 	lw	t8,4(t3)
     72c:	ad580004 	sw	t8,4(t2)
     730:	8d790008 	lw	t9,8(t3)
     734:	ad590008 	sw	t9,8(t2)
     738:	8d78000c 	lw	t8,12(t3)
     73c:	ad58000c 	sw	t8,12(t2)
     740:	8d790010 	lw	t9,16(t3)
     744:	ad590010 	sw	t9,16(t2)
     748:	8d780014 	lw	t8,20(t3)
     74c:	ad580014 	sw	t8,20(t2)
     750:	8d8f0000 	lw	t7,0(t4)
     754:	ad6f0000 	sw	t7,0(t3)
     758:	8d8e0004 	lw	t6,4(t4)
     75c:	ad6e0004 	sw	t6,4(t3)
     760:	8d8f0008 	lw	t7,8(t4)
     764:	ad6f0008 	sw	t7,8(t3)
     768:	8d8e000c 	lw	t6,12(t4)
     76c:	ad6e000c 	sw	t6,12(t3)
     770:	8d8f0010 	lw	t7,16(t4)
     774:	ad6f0010 	sw	t7,16(t3)
     778:	8d8e0014 	lw	t6,20(t4)
     77c:	ad6e0014 	sw	t6,20(t3)
     780:	8cb90000 	lw	t9,0(a1)
     784:	24420004 	addiu	v0,v0,4
     788:	24630060 	addiu	v1,v1,96
     78c:	ac79ffa0 	sw	t9,-96(v1)
     790:	8cb80004 	lw	t8,4(a1)
     794:	24a50060 	addiu	a1,a1,96
     798:	24c60060 	addiu	a2,a2,96
     79c:	ac78ffa4 	sw	t8,-92(v1)
     7a0:	8cb9ffa8 	lw	t9,-88(a1)
     7a4:	24e70060 	addiu	a3,a3,96
     7a8:	25080060 	addiu	t0,t0,96
     7ac:	ac79ffa8 	sw	t9,-88(v1)
     7b0:	8cb8ffac 	lw	t8,-84(a1)
     7b4:	ac78ffac 	sw	t8,-84(v1)
     7b8:	8cb9ffb0 	lw	t9,-80(a1)
     7bc:	ac79ffb0 	sw	t9,-80(v1)
     7c0:	8cb8ffb4 	lw	t8,-76(a1)
     7c4:	ac78ffb4 	sw	t8,-76(v1)
     7c8:	8ccfffa0 	lw	t7,-96(a2)
     7cc:	acafffa0 	sw	t7,-96(a1)
     7d0:	8cceffa4 	lw	t6,-92(a2)
     7d4:	acaeffa4 	sw	t6,-92(a1)
     7d8:	8ccfffa8 	lw	t7,-88(a2)
     7dc:	acafffa8 	sw	t7,-88(a1)
     7e0:	8cceffac 	lw	t6,-84(a2)
     7e4:	acaeffac 	sw	t6,-84(a1)
     7e8:	8ccfffb0 	lw	t7,-80(a2)
     7ec:	acafffb0 	sw	t7,-80(a1)
     7f0:	8cceffb4 	lw	t6,-76(a2)
     7f4:	acaeffb4 	sw	t6,-76(a1)
     7f8:	8cf9ffa0 	lw	t9,-96(a3)
     7fc:	acd9ffa0 	sw	t9,-96(a2)
     800:	8cf8ffa4 	lw	t8,-92(a3)
     804:	acd8ffa4 	sw	t8,-92(a2)
     808:	8cf9ffa8 	lw	t9,-88(a3)
     80c:	acd9ffa8 	sw	t9,-88(a2)
     810:	8cf8ffac 	lw	t8,-84(a3)
     814:	acd8ffac 	sw	t8,-84(a2)
     818:	8cf9ffb0 	lw	t9,-80(a3)
     81c:	acd9ffb0 	sw	t9,-80(a2)
     820:	8cf8ffb4 	lw	t8,-76(a3)
     824:	acd8ffb4 	sw	t8,-76(a2)
     828:	8d0fffa0 	lw	t7,-96(t0)
     82c:	acefffa0 	sw	t7,-96(a3)
     830:	8d0effa4 	lw	t6,-92(t0)
     834:	aceeffa4 	sw	t6,-92(a3)
     838:	8d0fffa8 	lw	t7,-88(t0)
     83c:	acefffa8 	sw	t7,-88(a3)
     840:	8d0effac 	lw	t6,-84(t0)
     844:	aceeffac 	sw	t6,-84(a3)
     848:	8d0fffb0 	lw	t7,-80(t0)
     84c:	acefffb0 	sw	t7,-80(a3)
     850:	8d0effb4 	lw	t6,-76(t0)
     854:	144dffca 	bne	v0,t5,780 <EffectBlure_Update+0xf0>
     858:	aceeffb4 	sw	t6,-76(a3)
     85c:	ac700000 	sw	s0,0(v1)
     860:	a4600008 	sh	zero,8(v1)
     864:	a460000a 	sh	zero,10(v1)
     868:	a460000c 	sh	zero,12(v1)
     86c:	a460000e 	sh	zero,14(v1)
     870:	a4600010 	sh	zero,16(v1)
     874:	a4600012 	sh	zero,18(v1)
     878:	a4600014 	sh	zero,20(v1)
     87c:	ac600004 	sw	zero,4(v1)
     880:	9098019e 	lbu	t8,414(a0)
     884:	2719ffff 	addiu	t9,t8,-1
     888:	332300ff 	andi	v1,t9,0xff
     88c:	1c60ff8c 	bgtz	v1,6c0 <EffectBlure_Update+0x30>
     890:	a099019e 	sb	t9,414(a0)
     894:	a080019e 	sb	zero,414(a0)
     898:	10000092 	b	ae4 <EffectBlure_Update+0x454>
     89c:	00001025 	move	v0,zero
     8a0:	16020003 	bne	s0,v0,8b0 <EffectBlure_Update+0x220>
     8a4:	00000000 	nop
     8a8:	1000008e 	b	ae4 <EffectBlure_Update+0x454>
     8ac:	00001025 	move	v0,zero
     8b0:	1860000b 	blez	v1,8e0 <EffectBlure_Update+0x250>
     8b4:	00001025 	move	v0,zero
     8b8:	00801825 	move	v1,a0
     8bc:	8c6e0004 	lw	t6,4(v1)
     8c0:	24420001 	addiu	v0,v0,1
     8c4:	24630018 	addiu	v1,v1,24
     8c8:	25cf0001 	addiu	t7,t6,1
     8cc:	ac6fffec 	sw	t7,-20(v1)
     8d0:	9098019e 	lbu	t8,414(a0)
     8d4:	0058082a 	slt	at,v0,t8
     8d8:	5420fff9 	bnezl	at,8c0 <EffectBlure_Update+0x230>
     8dc:	8c6e0004 	lw	t6,4(v1)
     8e0:	9099019f 	lbu	t9,415(a0)
     8e4:	8c8e0004 	lw	t6,4(a0)
     8e8:	248a0018 	addiu	t2,a0,24
     8ec:	032e082a 	slt	at,t9,t6
     8f0:	50200078 	beqzl	at,ad4 <EffectBlure_Update+0x444>
     8f4:	8498018c 	lh	t8,396(a0)
     8f8:	8d580000 	lw	t8,0(t2)
     8fc:	248b0030 	addiu	t3,a0,48
     900:	248c0048 	addiu	t4,a0,72
     904:	ac980000 	sw	t8,0(a0)
     908:	8d4f0004 	lw	t7,4(t2)
     90c:	24830048 	addiu	v1,a0,72
     910:	24650018 	addiu	a1,v1,24
     914:	ac8f0004 	sw	t7,4(a0)
     918:	8d580008 	lw	t8,8(t2)
     91c:	24660030 	addiu	a2,v1,48
     920:	24670048 	addiu	a3,v1,72
     924:	ac980008 	sw	t8,8(a0)
     928:	8d4f000c 	lw	t7,12(t2)
     92c:	24680060 	addiu	t0,v1,96
     930:	24020003 	li	v0,3
     934:	ac8f000c 	sw	t7,12(a0)
     938:	8d580010 	lw	t8,16(t2)
     93c:	ac980010 	sw	t8,16(a0)
     940:	8d4f0014 	lw	t7,20(t2)
     944:	ac8f0014 	sw	t7,20(a0)
     948:	8d6e0000 	lw	t6,0(t3)
     94c:	ad4e0000 	sw	t6,0(t2)
     950:	8d790004 	lw	t9,4(t3)
     954:	ad590004 	sw	t9,4(t2)
     958:	8d6e0008 	lw	t6,8(t3)
     95c:	ad4e0008 	sw	t6,8(t2)
     960:	8d79000c 	lw	t9,12(t3)
     964:	ad59000c 	sw	t9,12(t2)
     968:	8d6e0010 	lw	t6,16(t3)
     96c:	ad4e0010 	sw	t6,16(t2)
     970:	8d790014 	lw	t9,20(t3)
     974:	ad590014 	sw	t9,20(t2)
     978:	8d980000 	lw	t8,0(t4)
     97c:	ad780000 	sw	t8,0(t3)
     980:	8d8f0004 	lw	t7,4(t4)
     984:	ad6f0004 	sw	t7,4(t3)
     988:	8d980008 	lw	t8,8(t4)
     98c:	ad780008 	sw	t8,8(t3)
     990:	8d8f000c 	lw	t7,12(t4)
     994:	ad6f000c 	sw	t7,12(t3)
     998:	8d980010 	lw	t8,16(t4)
     99c:	ad780010 	sw	t8,16(t3)
     9a0:	8d8f0014 	lw	t7,20(t4)
     9a4:	ad6f0014 	sw	t7,20(t3)
     9a8:	8cae0000 	lw	t6,0(a1)
     9ac:	24420004 	addiu	v0,v0,4
     9b0:	24630060 	addiu	v1,v1,96
     9b4:	ac6effa0 	sw	t6,-96(v1)
     9b8:	8cb90004 	lw	t9,4(a1)
     9bc:	24a50060 	addiu	a1,a1,96
     9c0:	24c60060 	addiu	a2,a2,96
     9c4:	ac79ffa4 	sw	t9,-92(v1)
     9c8:	8caeffa8 	lw	t6,-88(a1)
     9cc:	24e70060 	addiu	a3,a3,96
     9d0:	25080060 	addiu	t0,t0,96
     9d4:	ac6effa8 	sw	t6,-88(v1)
     9d8:	8cb9ffac 	lw	t9,-84(a1)
     9dc:	ac79ffac 	sw	t9,-84(v1)
     9e0:	8caeffb0 	lw	t6,-80(a1)
     9e4:	ac6effb0 	sw	t6,-80(v1)
     9e8:	8cb9ffb4 	lw	t9,-76(a1)
     9ec:	ac79ffb4 	sw	t9,-76(v1)
     9f0:	8cd8ffa0 	lw	t8,-96(a2)
     9f4:	acb8ffa0 	sw	t8,-96(a1)
     9f8:	8ccfffa4 	lw	t7,-92(a2)
     9fc:	acafffa4 	sw	t7,-92(a1)
     a00:	8cd8ffa8 	lw	t8,-88(a2)
     a04:	acb8ffa8 	sw	t8,-88(a1)
     a08:	8ccfffac 	lw	t7,-84(a2)
     a0c:	acafffac 	sw	t7,-84(a1)
     a10:	8cd8ffb0 	lw	t8,-80(a2)
     a14:	acb8ffb0 	sw	t8,-80(a1)
     a18:	8ccfffb4 	lw	t7,-76(a2)
     a1c:	acafffb4 	sw	t7,-76(a1)
     a20:	8ceeffa0 	lw	t6,-96(a3)
     a24:	acceffa0 	sw	t6,-96(a2)
     a28:	8cf9ffa4 	lw	t9,-92(a3)
     a2c:	acd9ffa4 	sw	t9,-92(a2)
     a30:	8ceeffa8 	lw	t6,-88(a3)
     a34:	acceffa8 	sw	t6,-88(a2)
     a38:	8cf9ffac 	lw	t9,-84(a3)
     a3c:	acd9ffac 	sw	t9,-84(a2)
     a40:	8ceeffb0 	lw	t6,-80(a3)
     a44:	acceffb0 	sw	t6,-80(a2)
     a48:	8cf9ffb4 	lw	t9,-76(a3)
     a4c:	acd9ffb4 	sw	t9,-76(a2)
     a50:	8d18ffa0 	lw	t8,-96(t0)
     a54:	acf8ffa0 	sw	t8,-96(a3)
     a58:	8d0fffa4 	lw	t7,-92(t0)
     a5c:	acefffa4 	sw	t7,-92(a3)
     a60:	8d18ffa8 	lw	t8,-88(t0)
     a64:	acf8ffa8 	sw	t8,-88(a3)
     a68:	8d0fffac 	lw	t7,-84(t0)
     a6c:	acefffac 	sw	t7,-84(a3)
     a70:	8d18ffb0 	lw	t8,-80(t0)
     a74:	acf8ffb0 	sw	t8,-80(a3)
     a78:	8d0fffb4 	lw	t7,-76(t0)
     a7c:	144dffca 	bne	v0,t5,9a8 <EffectBlure_Update+0x318>
     a80:	acefffb4 	sw	t7,-76(a3)
     a84:	ac700000 	sw	s0,0(v1)
     a88:	a4600008 	sh	zero,8(v1)
     a8c:	a460000a 	sh	zero,10(v1)
     a90:	a460000c 	sh	zero,12(v1)
     a94:	a460000e 	sh	zero,14(v1)
     a98:	a4600010 	sh	zero,16(v1)
     a9c:	a4600012 	sh	zero,18(v1)
     aa0:	a4600014 	sh	zero,20(v1)
     aa4:	ac600004 	sw	zero,4(v1)
     aa8:	9099019e 	lbu	t9,414(a0)
     aac:	00001025 	move	v0,zero
     ab0:	272effff 	addiu	t6,t9,-1
     ab4:	31cf00ff 	andi	t7,t6,0xff
     ab8:	1de00003 	bgtz	t7,ac8 <EffectBlure_Update+0x438>
     abc:	a08e019e 	sb	t6,414(a0)
     ac0:	10000008 	b	ae4 <EffectBlure_Update+0x454>
     ac4:	a080019e 	sb	zero,414(a0)
     ac8:	10000006 	b	ae4 <EffectBlure_Update+0x454>
     acc:	00001025 	move	v0,zero
     ad0:	8498018c 	lh	t8,396(a0)
     ad4:	8499018a 	lh	t9,394(a0)
     ad8:	00001025 	move	v0,zero
     adc:	03197021 	addu	t6,t8,t9
     ae0:	a48e018c 	sh	t6,396(a0)
     ae4:	8fb00004 	lw	s0,4(sp)
     ae8:	03e00008 	jr	ra
     aec:	27bd0008 	addiu	sp,sp,8

00000af0 <EffectBlure_UpdateFlags>:
     af0:	27bdff90 	addiu	sp,sp,-112
     af4:	afbf001c 	sw	ra,28(sp)
     af8:	afb00018 	sw	s0,24(sp)
     afc:	8c8effe8 	lw	t6,-24(a0)
     b00:	00808025 	move	s0,a0
     b04:	51c00007 	beqzl	t6,b24 <EffectBlure_UpdateFlags+0x34>
     b08:	96180014 	lhu	t8,20(s0)
     b0c:	8c8f0018 	lw	t7,24(a0)
     b10:	27a40064 	addiu	a0,sp,100
     b14:	26050008 	addiu	a1,s0,8
     b18:	15e00007 	bnez	t7,b38 <EffectBlure_UpdateFlags+0x48>
     b1c:	2602ffe8 	addiu	v0,s0,-24
     b20:	96180014 	lhu	t8,20(s0)
     b24:	3308fffc 	andi	t0,t8,0xfffc
     b28:	a6080014 	sh	t0,20(s0)
     b2c:	35090002 	ori	t1,t0,0x2
     b30:	10000046 	b	c4c <EffectBlure_UpdateFlags+0x15c>
     b34:	a6090014 	sh	t1,20(s0)
     b38:	24460008 	addiu	a2,v0,8
     b3c:	afa20028 	sw	v0,40(sp)
     b40:	0c000000 	jal	0 <EffectBlure_AddVertex>
     b44:	afa50024 	sw	a1,36(sp)
     b48:	8fa20028 	lw	v0,40(sp)
     b4c:	2605000e 	addiu	a1,s0,14
     b50:	afa50020 	sw	a1,32(sp)
     b54:	27a40058 	addiu	a0,sp,88
     b58:	0c000000 	jal	0 <EffectBlure_AddVertex>
     b5c:	2446000e 	addiu	a2,v0,14
     b60:	26020018 	addiu	v0,s0,24
     b64:	24450008 	addiu	a1,v0,8
     b68:	afa20028 	sw	v0,40(sp)
     b6c:	27a4004c 	addiu	a0,sp,76
     b70:	0c000000 	jal	0 <EffectBlure_AddVertex>
     b74:	8fa60024 	lw	a2,36(sp)
     b78:	8fa20028 	lw	v0,40(sp)
     b7c:	27a40040 	addiu	a0,sp,64
     b80:	8fa60020 	lw	a2,32(sp)
     b84:	0c000000 	jal	0 <EffectBlure_AddVertex>
     b88:	2445000e 	addiu	a1,v0,14
     b8c:	27a40064 	addiu	a0,sp,100
     b90:	27a5004c 	addiu	a1,sp,76
     b94:	0c000000 	jal	0 <EffectBlure_AddVertex>
     b98:	27a60034 	addiu	a2,sp,52
     b9c:	1440000b 	bnez	v0,bcc <EffectBlure_UpdateFlags+0xdc>
     ba0:	27a40058 	addiu	a0,sp,88
     ba4:	27a50040 	addiu	a1,sp,64
     ba8:	0c000000 	jal	0 <EffectBlure_AddVertex>
     bac:	27a60030 	addiu	a2,sp,48
     bb0:	14400006 	bnez	v0,bcc <EffectBlure_UpdateFlags+0xdc>
     bb4:	27a4004c 	addiu	a0,sp,76
     bb8:	27a50040 	addiu	a1,sp,64
     bbc:	0c000000 	jal	0 <EffectBlure_AddVertex>
     bc0:	27a6002c 	addiu	a2,sp,44
     bc4:	10400006 	beqz	v0,be0 <EffectBlure_UpdateFlags+0xf0>
     bc8:	3c01bf00 	lui	at,0xbf00
     bcc:	960a0014 	lhu	t2,20(s0)
     bd0:	314cfffc 	andi	t4,t2,0xfffc
     bd4:	a60c0014 	sh	t4,20(s0)
     bd8:	1000001c 	b	c4c <EffectBlure_UpdateFlags+0x15c>
     bdc:	a60c0014 	sh	t4,20(s0)
     be0:	44810000 	mtc1	at,$f0
     be4:	c7a40034 	lwc1	$f4,52(sp)
     be8:	c7a60030 	lwc1	$f6,48(sp)
     bec:	4600203e 	c.le.s	$f4,$f0
     bf0:	00000000 	nop
     bf4:	4503000c 	bc1tl	c28 <EffectBlure_UpdateFlags+0x138>
     bf8:	960d0014 	lhu	t5,20(s0)
     bfc:	4600303e 	c.le.s	$f6,$f0
     c00:	3c010000 	lui	at,0x0
     c04:	c7aa002c 	lwc1	$f10,44(sp)
     c08:	45030007 	bc1tl	c28 <EffectBlure_UpdateFlags+0x138>
     c0c:	960d0014 	lhu	t5,20(s0)
     c10:	c4280300 	lwc1	$f8,768(at)
     c14:	4608503e 	c.le.s	$f10,$f8
     c18:	00000000 	nop
     c1c:	45020007 	bc1fl	c3c <EffectBlure_UpdateFlags+0x14c>
     c20:	96180014 	lhu	t8,20(s0)
     c24:	960d0014 	lhu	t5,20(s0)
     c28:	31affffc 	andi	t7,t5,0xfffc
     c2c:	a60f0014 	sh	t7,20(s0)
     c30:	10000006 	b	c4c <EffectBlure_UpdateFlags+0x15c>
     c34:	a60f0014 	sh	t7,20(s0)
     c38:	96180014 	lhu	t8,20(s0)
     c3c:	3308fffc 	andi	t0,t8,0xfffc
     c40:	a6080014 	sh	t0,20(s0)
     c44:	35090001 	ori	t1,t0,0x1
     c48:	a6090014 	sh	t1,20(s0)
     c4c:	8fbf001c 	lw	ra,28(sp)
     c50:	8fb00018 	lw	s0,24(sp)
     c54:	27bd0070 	addiu	sp,sp,112
     c58:	03e00008 	jr	ra
     c5c:	00000000 	nop

00000c60 <EffectBlure_GetComputedValues>:
     c60:	27bdffc8 	addiu	sp,sp,-56
     c64:	afbf002c 	sw	ra,44(sp)
     c68:	afb20028 	sw	s2,40(sp)
     c6c:	afb10024 	sw	s1,36(sp)
     c70:	afb00020 	sw	s0,32(sp)
     c74:	f7b40018 	sdc1	$f20,24(sp)
     c78:	afa5003c 	sw	a1,60(sp)
     c7c:	8c8e0180 	lw	t6,384(a0)
     c80:	4486a000 	mtc1	a2,$f20
     c84:	00e08825 	move	s1,a3
     c88:	2dc10005 	sltiu	at,t6,5
     c8c:	102000e3 	beqz	at,101c <L80020E0C>
     c90:	00809025 	move	s2,a0
     c94:	000e7080 	sll	t6,t6,0x2
     c98:	3c010000 	lui	at,0x0
     c9c:	002e0821 	addu	at,at,t6
     ca0:	8c2e0000 	lw	t6,0(at)
     ca4:	01c00008 	jr	t6
     ca8:	00000000 	nop

00000cac <L80020A9C>:
     cac:	8faf003c 	lw	t7,60(sp)
     cb0:	4406a000 	mfc1	a2,$f20
     cb4:	000fc080 	sll	t8,t7,0x2
     cb8:	030fc023 	subu	t8,t8,t7
     cbc:	0018c0c0 	sll	t8,t8,0x3
     cc0:	02588021 	addu	s0,s2,t8
     cc4:	86040008 	lh	a0,8(s0)
     cc8:	0c000000 	jal	0 <EffectBlure_AddVertex>
     ccc:	8605000e 	lh	a1,14(s0)
     cd0:	a6220000 	sh	v0,0(s1)
     cd4:	4406a000 	mfc1	a2,$f20
     cd8:	86050010 	lh	a1,16(s0)
     cdc:	0c000000 	jal	0 <EffectBlure_AddVertex>
     ce0:	8604000a 	lh	a0,10(s0)
     ce4:	a6220002 	sh	v0,2(s1)
     ce8:	4406a000 	mfc1	a2,$f20
     cec:	86050012 	lh	a1,18(s0)
     cf0:	0c000000 	jal	0 <EffectBlure_AddVertex>
     cf4:	8604000c 	lh	a0,12(s0)
     cf8:	8fa30048 	lw	v1,72(sp)
     cfc:	a6220004 	sh	v0,4(s1)
     d00:	8619000e 	lh	t9,14(s0)
     d04:	a4790000 	sh	t9,0(v1)
     d08:	86080010 	lh	t0,16(s0)
     d0c:	a4680002 	sh	t0,2(v1)
     d10:	86090012 	lh	t1,18(s0)
     d14:	100000d3 	b	1064 <L80020E0C+0x48>
     d18:	a4690004 	sh	t1,4(v1)

00000d1c <L80020B0C>:
     d1c:	8faa003c 	lw	t2,60(sp)
     d20:	4406a000 	mfc1	a2,$f20
     d24:	000a5880 	sll	t3,t2,0x2
     d28:	016a5823 	subu	t3,t3,t2
     d2c:	000b58c0 	sll	t3,t3,0x3
     d30:	024b8021 	addu	s0,s2,t3
     d34:	860c0008 	lh	t4,8(s0)
     d38:	a62c0000 	sh	t4,0(s1)
     d3c:	860d000a 	lh	t5,10(s0)
     d40:	a62d0002 	sh	t5,2(s1)
     d44:	860e000c 	lh	t6,12(s0)
     d48:	a62e0004 	sh	t6,4(s1)
     d4c:	86050008 	lh	a1,8(s0)
     d50:	0c000000 	jal	0 <EffectBlure_AddVertex>
     d54:	8604000e 	lh	a0,14(s0)
     d58:	8fa30048 	lw	v1,72(sp)
     d5c:	4406a000 	mfc1	a2,$f20
     d60:	a4620000 	sh	v0,0(v1)
     d64:	8605000a 	lh	a1,10(s0)
     d68:	0c000000 	jal	0 <EffectBlure_AddVertex>
     d6c:	86040010 	lh	a0,16(s0)
     d70:	8fa30048 	lw	v1,72(sp)
     d74:	4406a000 	mfc1	a2,$f20
     d78:	a4620002 	sh	v0,2(v1)
     d7c:	8605000c 	lh	a1,12(s0)
     d80:	0c000000 	jal	0 <EffectBlure_AddVertex>
     d84:	86040012 	lh	a0,18(s0)
     d88:	8fa30048 	lw	v1,72(sp)
     d8c:	100000b5 	b	1064 <L80020E0C+0x48>
     d90:	a4620004 	sh	v0,4(v1)

00000d94 <L80020B84>:
     d94:	3c013f00 	lui	at,0x3f00
     d98:	44811000 	mtc1	at,$f2
     d9c:	8faf003c 	lw	t7,60(sp)
     da0:	4602a502 	mul.s	$f20,$f20,$f2
     da4:	000fc080 	sll	t8,t7,0x2
     da8:	030fc023 	subu	t8,t8,t7
     dac:	0018c0c0 	sll	t8,t8,0x3
     db0:	02588021 	addu	s0,s2,t8
     db4:	86040008 	lh	a0,8(s0)
     db8:	8605000e 	lh	a1,14(s0)
     dbc:	4406a000 	mfc1	a2,$f20
     dc0:	0c000000 	jal	0 <EffectBlure_AddVertex>
     dc4:	00000000 	nop
     dc8:	a6220000 	sh	v0,0(s1)
     dcc:	4406a000 	mfc1	a2,$f20
     dd0:	86050010 	lh	a1,16(s0)
     dd4:	0c000000 	jal	0 <EffectBlure_AddVertex>
     dd8:	8604000a 	lh	a0,10(s0)
     ddc:	a6220002 	sh	v0,2(s1)
     de0:	4406a000 	mfc1	a2,$f20
     de4:	86050012 	lh	a1,18(s0)
     de8:	0c000000 	jal	0 <EffectBlure_AddVertex>
     dec:	8604000c 	lh	a0,12(s0)
     df0:	a6220004 	sh	v0,4(s1)
     df4:	4406a000 	mfc1	a2,$f20
     df8:	86050008 	lh	a1,8(s0)
     dfc:	0c000000 	jal	0 <EffectBlure_AddVertex>
     e00:	8604000e 	lh	a0,14(s0)
     e04:	8fa30048 	lw	v1,72(sp)
     e08:	4406a000 	mfc1	a2,$f20
     e0c:	a4620000 	sh	v0,0(v1)
     e10:	8605000a 	lh	a1,10(s0)
     e14:	0c000000 	jal	0 <EffectBlure_AddVertex>
     e18:	86040010 	lh	a0,16(s0)
     e1c:	8fa30048 	lw	v1,72(sp)
     e20:	4406a000 	mfc1	a2,$f20
     e24:	a4620002 	sh	v0,2(v1)
     e28:	8605000c 	lh	a1,12(s0)
     e2c:	0c000000 	jal	0 <EffectBlure_AddVertex>
     e30:	86040012 	lh	a0,18(s0)
     e34:	8fa30048 	lw	v1,72(sp)
     e38:	4614a500 	add.s	$f20,$f20,$f20
     e3c:	10000089 	b	1064 <L80020E0C+0x48>
     e40:	a4620004 	sh	v0,4(v1)

00000e44 <L80020C34>:
     e44:	8fb9003c 	lw	t9,60(sp)
     e48:	3c013f00 	lui	at,0x3f00
     e4c:	44811000 	mtc1	at,$f2
     e50:	00194080 	sll	t0,t9,0x2
     e54:	01194023 	subu	t0,t0,t9
     e58:	000840c0 	sll	t0,t0,0x3
     e5c:	02488021 	addu	s0,s2,t0
     e60:	86090008 	lh	t1,8(s0)
     e64:	860a000e 	lh	t2,14(s0)
     e68:	3c013f80 	lui	at,0x3f80
     e6c:	44813000 	mtc1	at,$f6
     e70:	012a5823 	subu	t3,t1,t2
     e74:	a7ab0030 	sh	t3,48(sp)
     e78:	87a80030 	lh	t0,48(sp)
     e7c:	860d0010 	lh	t5,16(s0)
     e80:	860c000a 	lh	t4,10(s0)
     e84:	44884000 	mtc1	t0,$f8
     e88:	018d7023 	subu	t6,t4,t5
     e8c:	a7ae0032 	sh	t6,50(sp)
     e90:	468042a0 	cvt.s.w	$f10,$f8
     e94:	86180012 	lh	t8,18(s0)
     e98:	860f000c 	lh	t7,12(s0)
     e9c:	01f8c823 	subu	t9,t7,t8
     ea0:	a7b90034 	sh	t9,52(sp)
     ea4:	46025402 	mul.s	$f16,$f10,$f2
     ea8:	c6440184 	lwc1	$f4,388(s2)
     eac:	86090008 	lh	t1,8(s0)
     eb0:	46062001 	sub.s	$f0,$f4,$f6
     eb4:	44893000 	mtc1	t1,$f6
     eb8:	46008482 	mul.s	$f18,$f16,$f0
     ebc:	46803220 	cvt.s.w	$f8,$f6
     ec0:	46149102 	mul.s	$f4,$f18,$f20
     ec4:	46082280 	add.s	$f10,$f4,$f8
     ec8:	4600540d 	trunc.w.s	$f16,$f10
     ecc:	440b8000 	mfc1	t3,$f16
     ed0:	00000000 	nop
     ed4:	a62b0000 	sh	t3,0(s1)
     ed8:	87ac0032 	lh	t4,50(sp)
     edc:	860d000a 	lh	t5,10(s0)
     ee0:	448c9000 	mtc1	t4,$f18
     ee4:	448d8000 	mtc1	t5,$f16
     ee8:	468091a0 	cvt.s.w	$f6,$f18
     eec:	468084a0 	cvt.s.w	$f18,$f16
     ef0:	46023102 	mul.s	$f4,$f6,$f2
     ef4:	00000000 	nop
     ef8:	46002202 	mul.s	$f8,$f4,$f0
     efc:	00000000 	nop
     f00:	46144282 	mul.s	$f10,$f8,$f20
     f04:	46125180 	add.s	$f6,$f10,$f18
     f08:	4600310d 	trunc.w.s	$f4,$f6
     f0c:	440f2000 	mfc1	t7,$f4
     f10:	00000000 	nop
     f14:	a62f0002 	sh	t7,2(s1)
     f18:	87b80034 	lh	t8,52(sp)
     f1c:	8619000c 	lh	t9,12(s0)
     f20:	8fa30048 	lw	v1,72(sp)
     f24:	44984000 	mtc1	t8,$f8
     f28:	44992000 	mtc1	t9,$f4
     f2c:	46804420 	cvt.s.w	$f16,$f8
     f30:	46802220 	cvt.s.w	$f8,$f4
     f34:	46028282 	mul.s	$f10,$f16,$f2
     f38:	00000000 	nop
     f3c:	46005482 	mul.s	$f18,$f10,$f0
     f40:	00000000 	nop
     f44:	46149182 	mul.s	$f6,$f18,$f20
     f48:	46083400 	add.s	$f16,$f6,$f8
     f4c:	4600828d 	trunc.w.s	$f10,$f16
     f50:	44095000 	mfc1	t1,$f10
     f54:	00000000 	nop
     f58:	a6290004 	sh	t1,4(s1)
     f5c:	87ab0030 	lh	t3,48(sp)
     f60:	860a000e 	lh	t2,14(s0)
     f64:	448b3000 	mtc1	t3,$f6
     f68:	448a9000 	mtc1	t2,$f18
     f6c:	46803220 	cvt.s.w	$f8,$f6
     f70:	46809120 	cvt.s.w	$f4,$f18
     f74:	46024402 	mul.s	$f16,$f8,$f2
     f78:	00000000 	nop
     f7c:	46008282 	mul.s	$f10,$f16,$f0
     f80:	00000000 	nop
     f84:	46145482 	mul.s	$f18,$f10,$f20
     f88:	46122181 	sub.s	$f6,$f4,$f18
     f8c:	4600320d 	trunc.w.s	$f8,$f6
     f90:	440d4000 	mfc1	t5,$f8
     f94:	00000000 	nop
     f98:	a46d0000 	sh	t5,0(v1)
     f9c:	87af0032 	lh	t7,50(sp)
     fa0:	860e0010 	lh	t6,16(s0)
     fa4:	448f2000 	mtc1	t7,$f4
     fa8:	448e8000 	mtc1	t6,$f16
     fac:	468024a0 	cvt.s.w	$f18,$f4
     fb0:	468082a0 	cvt.s.w	$f10,$f16
     fb4:	46029182 	mul.s	$f6,$f18,$f2
     fb8:	00000000 	nop
     fbc:	46003202 	mul.s	$f8,$f6,$f0
     fc0:	00000000 	nop
     fc4:	46144402 	mul.s	$f16,$f8,$f20
     fc8:	46105101 	sub.s	$f4,$f10,$f16
     fcc:	4600248d 	trunc.w.s	$f18,$f4
     fd0:	44199000 	mfc1	t9,$f18
     fd4:	00000000 	nop
     fd8:	a4790002 	sh	t9,2(v1)
     fdc:	87a90034 	lh	t1,52(sp)
     fe0:	86080012 	lh	t0,18(s0)
     fe4:	44895000 	mtc1	t1,$f10
     fe8:	44883000 	mtc1	t0,$f6
     fec:	46805420 	cvt.s.w	$f16,$f10
     ff0:	46803220 	cvt.s.w	$f8,$f6
     ff4:	46028102 	mul.s	$f4,$f16,$f2
     ff8:	00000000 	nop
     ffc:	46002482 	mul.s	$f18,$f4,$f0
    1000:	00000000 	nop
    1004:	46149182 	mul.s	$f6,$f18,$f20
    1008:	46064281 	sub.s	$f10,$f8,$f6
    100c:	4600540d 	trunc.w.s	$f16,$f10
    1010:	440b8000 	mfc1	t3,$f16
    1014:	10000013 	b	1064 <L80020E0C+0x48>
    1018:	a46b0004 	sh	t3,4(v1)

0000101c <L80020E0C>:
    101c:	8fac003c 	lw	t4,60(sp)
    1020:	8fa30048 	lw	v1,72(sp)
    1024:	000c6880 	sll	t5,t4,0x2
    1028:	01ac6823 	subu	t5,t5,t4
    102c:	000d68c0 	sll	t5,t5,0x3
    1030:	024d8021 	addu	s0,s2,t5
    1034:	860e0008 	lh	t6,8(s0)
    1038:	a62e0000 	sh	t6,0(s1)
    103c:	860f000a 	lh	t7,10(s0)
    1040:	a62f0002 	sh	t7,2(s1)
    1044:	8618000c 	lh	t8,12(s0)
    1048:	a6380004 	sh	t8,4(s1)
    104c:	8619000e 	lh	t9,14(s0)
    1050:	a4790000 	sh	t9,0(v1)
    1054:	86080010 	lh	t0,16(s0)
    1058:	a4680002 	sh	t0,2(v1)
    105c:	86090012 	lh	t1,18(s0)
    1060:	a4690004 	sh	t1,4(v1)
    1064:	964a0188 	lhu	t2,392(s2)
    1068:	8fa30050 	lw	v1,80(sp)
    106c:	8fb0004c 	lw	s0,76(sp)
    1070:	314b0010 	andi	t3,t2,0x10
    1074:	1160000a 	beqz	t3,10a0 <L80020E0C+0x84>
    1078:	240200ff 	li	v0,255
    107c:	a2020003 	sb	v0,3(s0)
    1080:	a2020002 	sb	v0,2(s0)
    1084:	a2020001 	sb	v0,1(s0)
    1088:	a2020000 	sb	v0,0(s0)
    108c:	a0620000 	sb	v0,0(v1)
    1090:	a0620001 	sb	v0,1(v1)
    1094:	a0620002 	sb	v0,2(v1)
    1098:	1000002e 	b	1154 <L80020E0C+0x138>
    109c:	a0620003 	sb	v0,3(v1)
    10a0:	4406a000 	mfc1	a2,$f20
    10a4:	9244018e 	lbu	a0,398(s2)
    10a8:	0c000000 	jal	0 <EffectBlure_AddVertex>
    10ac:	92450196 	lbu	a1,406(s2)
    10b0:	8fb0004c 	lw	s0,76(sp)
    10b4:	4406a000 	mfc1	a2,$f20
    10b8:	a2020000 	sb	v0,0(s0)
    10bc:	92450197 	lbu	a1,407(s2)
    10c0:	0c000000 	jal	0 <EffectBlure_AddVertex>
    10c4:	9244018f 	lbu	a0,399(s2)
    10c8:	a2020001 	sb	v0,1(s0)
    10cc:	4406a000 	mfc1	a2,$f20
    10d0:	92450198 	lbu	a1,408(s2)
    10d4:	0c000000 	jal	0 <EffectBlure_AddVertex>
    10d8:	92440190 	lbu	a0,400(s2)
    10dc:	a2020002 	sb	v0,2(s0)
    10e0:	4406a000 	mfc1	a2,$f20
    10e4:	92450199 	lbu	a1,409(s2)
    10e8:	0c000000 	jal	0 <EffectBlure_AddVertex>
    10ec:	92440191 	lbu	a0,401(s2)
    10f0:	a2020003 	sb	v0,3(s0)
    10f4:	4406a000 	mfc1	a2,$f20
    10f8:	9245019a 	lbu	a1,410(s2)
    10fc:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1100:	92440192 	lbu	a0,402(s2)
    1104:	8fa30050 	lw	v1,80(sp)
    1108:	4406a000 	mfc1	a2,$f20
    110c:	a0620000 	sb	v0,0(v1)
    1110:	9245019b 	lbu	a1,411(s2)
    1114:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1118:	92440193 	lbu	a0,403(s2)
    111c:	8fa30050 	lw	v1,80(sp)
    1120:	4406a000 	mfc1	a2,$f20
    1124:	a0620001 	sb	v0,1(v1)
    1128:	9245019c 	lbu	a1,412(s2)
    112c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1130:	92440194 	lbu	a0,404(s2)
    1134:	8fa30050 	lw	v1,80(sp)
    1138:	4406a000 	mfc1	a2,$f20
    113c:	a0620002 	sb	v0,2(v1)
    1140:	9245019d 	lbu	a1,413(s2)
    1144:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1148:	92440195 	lbu	a0,405(s2)
    114c:	8fa30050 	lw	v1,80(sp)
    1150:	a0620003 	sb	v0,3(v1)
    1154:	8fbf002c 	lw	ra,44(sp)
    1158:	d7b40018 	ldc1	$f20,24(sp)
    115c:	8fb00020 	lw	s0,32(sp)
    1160:	8fb10024 	lw	s1,36(sp)
    1164:	8fb20028 	lw	s2,40(sp)
    1168:	03e00008 	jr	ra
    116c:	27bd0038 	addiu	sp,sp,56

00001170 <EffectBlure_SetupSmooth>:
    1170:	27bdffd0 	addiu	sp,sp,-48
    1174:	afbf0014 	sw	ra,20(sp)
    1178:	afa40030 	sw	a0,48(sp)
    117c:	3c060000 	lui	a2,0x0
    1180:	afa50034 	sw	a1,52(sp)
    1184:	24c60050 	addiu	a2,a2,80
    1188:	27a4001c 	addiu	a0,sp,28
    118c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1190:	24070329 	li	a3,809
    1194:	8fae0034 	lw	t6,52(sp)
    1198:	24050026 	li	a1,38
    119c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    11a0:	8dc402d0 	lw	a0,720(t6)
    11a4:	8fa50034 	lw	a1,52(sp)
    11a8:	3c060000 	lui	a2,0x0
    11ac:	24c60064 	addiu	a2,a2,100
    11b0:	27a4001c 	addiu	a0,sp,28
    11b4:	2407032d 	li	a3,813
    11b8:	0c000000 	jal	0 <EffectBlure_AddVertex>
    11bc:	aca202d0 	sw	v0,720(a1)
    11c0:	8fbf0014 	lw	ra,20(sp)
    11c4:	27bd0030 	addiu	sp,sp,48
    11c8:	03e00008 	jr	ra
    11cc:	00000000 	nop

000011d0 <EffectBlure_DrawElemNoInterpolation>:
    11d0:	27bdff68 	addiu	sp,sp,-152
    11d4:	afb10028 	sw	s1,40(sp)
    11d8:	afa5009c 	sw	a1,156(sp)
    11dc:	afa600a0 	sw	a2,160(sp)
    11e0:	00e08825 	move	s1,a3
    11e4:	afbf002c 	sw	ra,44(sp)
    11e8:	afa40098 	sw	a0,152(sp)
    11ec:	3c060000 	lui	a2,0x0
    11f0:	00e02825 	move	a1,a3
    11f4:	afb00024 	sw	s0,36(sp)
    11f8:	24070346 	li	a3,838
    11fc:	24c60078 	addiu	a2,a2,120
    1200:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1204:	27a40040 	addiu	a0,sp,64
    1208:	8fa50098 	lw	a1,152(sp)
    120c:	27a4006c 	addiu	a0,sp,108
    1210:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1214:	24a5000e 	addiu	a1,a1,14
    1218:	02202025 	move	a0,s1
    121c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1220:	24050040 	li	a1,64
    1224:	14400006 	bnez	v0,1240 <EffectBlure_DrawElemNoInterpolation+0x70>
    1228:	00408025 	move	s0,v0
    122c:	3c040000 	lui	a0,0x0
    1230:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1234:	2484008c 	addiu	a0,a0,140
    1238:	1000011e 	b	16b4 <EffectBlure_DrawElemNoInterpolation+0x4e4>
    123c:	00000000 	nop
    1240:	3c020000 	lui	v0,0x0
    1244:	24420000 	addiu	v0,v0,0
    1248:	8c4f0000 	lw	t7,0(v0)
    124c:	8fa40098 	lw	a0,152(sp)
    1250:	aa0f0000 	swl	t7,0(s0)
    1254:	ba0f0003 	swr	t7,3(s0)
    1258:	8c4e0004 	lw	t6,4(v0)
    125c:	aa0e0004 	swl	t6,4(s0)
    1260:	ba0e0007 	swr	t6,7(s0)
    1264:	8c4f0008 	lw	t7,8(v0)
    1268:	aa0f0008 	swl	t7,8(s0)
    126c:	ba0f000b 	swr	t7,11(s0)
    1270:	8c4e000c 	lw	t6,12(v0)
    1274:	aa0e000c 	swl	t6,12(s0)
    1278:	ba0e000f 	swr	t6,15(s0)
    127c:	8c590000 	lw	t9,0(v0)
    1280:	aa190010 	swl	t9,16(s0)
    1284:	ba190013 	swr	t9,19(s0)
    1288:	8c580004 	lw	t8,4(v0)
    128c:	aa180014 	swl	t8,20(s0)
    1290:	ba180017 	swr	t8,23(s0)
    1294:	8c590008 	lw	t9,8(v0)
    1298:	aa190018 	swl	t9,24(s0)
    129c:	ba19001b 	swr	t9,27(s0)
    12a0:	8c58000c 	lw	t8,12(v0)
    12a4:	aa18001c 	swl	t8,28(s0)
    12a8:	ba18001f 	swr	t8,31(s0)
    12ac:	8c490000 	lw	t1,0(v0)
    12b0:	aa090020 	swl	t1,32(s0)
    12b4:	ba090023 	swr	t1,35(s0)
    12b8:	8c480004 	lw	t0,4(v0)
    12bc:	aa080024 	swl	t0,36(s0)
    12c0:	ba080027 	swr	t0,39(s0)
    12c4:	8c490008 	lw	t1,8(v0)
    12c8:	aa090028 	swl	t1,40(s0)
    12cc:	ba09002b 	swr	t1,43(s0)
    12d0:	8c48000c 	lw	t0,12(v0)
    12d4:	aa08002c 	swl	t0,44(s0)
    12d8:	ba08002f 	swr	t0,47(s0)
    12dc:	8c4b0000 	lw	t3,0(v0)
    12e0:	aa0b0030 	swl	t3,48(s0)
    12e4:	ba0b0033 	swr	t3,51(s0)
    12e8:	8c4a0004 	lw	t2,4(v0)
    12ec:	aa0a0034 	swl	t2,52(s0)
    12f0:	ba0a0037 	swr	t2,55(s0)
    12f4:	8c4b0008 	lw	t3,8(v0)
    12f8:	aa0b0038 	swl	t3,56(s0)
    12fc:	ba0b003b 	swr	t3,59(s0)
    1300:	8c4a000c 	lw	t2,12(v0)
    1304:	aa0a003c 	swl	t2,60(s0)
    1308:	ba0a003f 	swr	t2,63(s0)
    130c:	8fac009c 	lw	t4,156(sp)
    1310:	908e019f 	lbu	t6,415(a0)
    1314:	8d8d0004 	lw	t5,4(t4)
    1318:	448e4000 	mtc1	t6,$f8
    131c:	448d2000 	mtc1	t5,$f4
    1320:	468042a0 	cvt.s.w	$f10,$f8
    1324:	05c10005 	bgez	t6,133c <EffectBlure_DrawElemNoInterpolation+0x16c>
    1328:	468021a0 	cvt.s.w	$f6,$f4
    132c:	3c014f80 	lui	at,0x4f80
    1330:	44818000 	mtc1	at,$f16
    1334:	00000000 	nop
    1338:	46105280 	add.s	$f10,$f10,$f16
    133c:	460a3003 	div.s	$f0,$f6,$f10
    1340:	27af0084 	addiu	t7,sp,132
    1344:	27b8007c 	addiu	t8,sp,124
    1348:	27b90078 	addiu	t9,sp,120
    134c:	afb90018 	sw	t9,24(sp)
    1350:	afb80014 	sw	t8,20(sp)
    1354:	afaf0010 	sw	t7,16(sp)
    1358:	8fa500a0 	lw	a1,160(sp)
    135c:	27a7008c 	addiu	a3,sp,140
    1360:	44060000 	mfc1	a2,$f0
    1364:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1368:	00000000 	nop
    136c:	87a80084 	lh	t0,132(sp)
    1370:	87a90086 	lh	t1,134(sp)
    1374:	87aa0088 	lh	t2,136(sp)
    1378:	44889000 	mtc1	t0,$f18
    137c:	44894000 	mtc1	t1,$f8
    1380:	448a3000 	mtc1	t2,$f6
    1384:	46809120 	cvt.s.w	$f4,$f18
    1388:	27a40060 	addiu	a0,sp,96
    138c:	27a5006c 	addiu	a1,sp,108
    1390:	27a60054 	addiu	a2,sp,84
    1394:	46804420 	cvt.s.w	$f16,$f8
    1398:	e7a40060 	swc1	$f4,96(sp)
    139c:	468032a0 	cvt.s.w	$f10,$f6
    13a0:	e7b00064 	swc1	$f16,100(sp)
    13a4:	0c000000 	jal	0 <EffectBlure_AddVertex>
    13a8:	e7aa0068 	swc1	$f10,104(sp)
    13ac:	27a40054 	addiu	a0,sp,84
    13b0:	0c000000 	jal	0 <EffectBlure_AddVertex>
    13b4:	3c054120 	lui	a1,0x4120
    13b8:	c7b20054 	lwc1	$f18,84(sp)
    13bc:	27a40060 	addiu	a0,sp,96
    13c0:	27a5006c 	addiu	a1,sp,108
    13c4:	4600910d 	trunc.w.s	$f4,$f18
    13c8:	27a60054 	addiu	a2,sp,84
    13cc:	440c2000 	mfc1	t4,$f4
    13d0:	00000000 	nop
    13d4:	a60c0000 	sh	t4,0(s0)
    13d8:	c7a80058 	lwc1	$f8,88(sp)
    13dc:	4600440d 	trunc.w.s	$f16,$f8
    13e0:	440e8000 	mfc1	t6,$f16
    13e4:	00000000 	nop
    13e8:	a60e0002 	sh	t6,2(s0)
    13ec:	c7a6005c 	lwc1	$f6,92(sp)
    13f0:	4600328d 	trunc.w.s	$f10,$f6
    13f4:	44185000 	mfc1	t8,$f10
    13f8:	00000000 	nop
    13fc:	a6180004 	sh	t8,4(s0)
    1400:	93b90078 	lbu	t9,120(sp)
    1404:	a219000c 	sb	t9,12(s0)
    1408:	93a80079 	lbu	t0,121(sp)
    140c:	a208000d 	sb	t0,13(s0)
    1410:	93a9007a 	lbu	t1,122(sp)
    1414:	a209000e 	sb	t1,14(s0)
    1418:	93aa007b 	lbu	t2,123(sp)
    141c:	a20a000f 	sb	t2,15(s0)
    1420:	87ab008c 	lh	t3,140(sp)
    1424:	87ac008e 	lh	t4,142(sp)
    1428:	87ad0090 	lh	t5,144(sp)
    142c:	448b9000 	mtc1	t3,$f18
    1430:	448c4000 	mtc1	t4,$f8
    1434:	448d3000 	mtc1	t5,$f6
    1438:	46809120 	cvt.s.w	$f4,$f18
    143c:	46804420 	cvt.s.w	$f16,$f8
    1440:	e7a40060 	swc1	$f4,96(sp)
    1444:	468032a0 	cvt.s.w	$f10,$f6
    1448:	e7b00064 	swc1	$f16,100(sp)
    144c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1450:	e7aa0068 	swc1	$f10,104(sp)
    1454:	27a40054 	addiu	a0,sp,84
    1458:	0c000000 	jal	0 <EffectBlure_AddVertex>
    145c:	3c054120 	lui	a1,0x4120
    1460:	c7b20054 	lwc1	$f18,84(sp)
    1464:	3c014f80 	lui	at,0x4f80
    1468:	4600910d 	trunc.w.s	$f4,$f18
    146c:	440f2000 	mfc1	t7,$f4
    1470:	00000000 	nop
    1474:	a60f0010 	sh	t7,16(s0)
    1478:	c7a80058 	lwc1	$f8,88(sp)
    147c:	4600440d 	trunc.w.s	$f16,$f8
    1480:	44198000 	mfc1	t9,$f16
    1484:	00000000 	nop
    1488:	a6190012 	sh	t9,18(s0)
    148c:	c7a6005c 	lwc1	$f6,92(sp)
    1490:	4600328d 	trunc.w.s	$f10,$f6
    1494:	44095000 	mfc1	t1,$f10
    1498:	00000000 	nop
    149c:	a6090014 	sh	t1,20(s0)
    14a0:	93aa007c 	lbu	t2,124(sp)
    14a4:	a20a001c 	sb	t2,28(s0)
    14a8:	93ab007d 	lbu	t3,125(sp)
    14ac:	a20b001d 	sb	t3,29(s0)
    14b0:	93ac007e 	lbu	t4,126(sp)
    14b4:	a20c001e 	sb	t4,30(s0)
    14b8:	93ad007f 	lbu	t5,127(sp)
    14bc:	a20d001f 	sb	t5,31(s0)
    14c0:	8fb80098 	lw	t8,152(sp)
    14c4:	8fae009c 	lw	t6,156(sp)
    14c8:	9319019f 	lbu	t9,415(t8)
    14cc:	8dcf001c 	lw	t7,28(t6)
    14d0:	44994000 	mtc1	t9,$f8
    14d4:	448f9000 	mtc1	t7,$f18
    14d8:	46804420 	cvt.s.w	$f16,$f8
    14dc:	07210004 	bgez	t9,14f0 <EffectBlure_DrawElemNoInterpolation+0x320>
    14e0:	46809120 	cvt.s.w	$f4,$f18
    14e4:	44813000 	mtc1	at,$f6
    14e8:	00000000 	nop
    14ec:	46068400 	add.s	$f16,$f16,$f6
    14f0:	46102003 	div.s	$f0,$f4,$f16
    14f4:	8fa500a0 	lw	a1,160(sp)
    14f8:	27a80084 	addiu	t0,sp,132
    14fc:	27a9007c 	addiu	t1,sp,124
    1500:	27aa0078 	addiu	t2,sp,120
    1504:	afaa0018 	sw	t2,24(sp)
    1508:	afa90014 	sw	t1,20(sp)
    150c:	afa80010 	sw	t0,16(sp)
    1510:	03002025 	move	a0,t8
    1514:	27a7008c 	addiu	a3,sp,140
    1518:	24a50001 	addiu	a1,a1,1
    151c:	44060000 	mfc1	a2,$f0
    1520:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1524:	00000000 	nop
    1528:	87ab008c 	lh	t3,140(sp)
    152c:	87ac008e 	lh	t4,142(sp)
    1530:	87ad0090 	lh	t5,144(sp)
    1534:	448b5000 	mtc1	t3,$f10
    1538:	448c4000 	mtc1	t4,$f8
    153c:	448d2000 	mtc1	t5,$f4
    1540:	468054a0 	cvt.s.w	$f18,$f10
    1544:	27a40060 	addiu	a0,sp,96
    1548:	27a5006c 	addiu	a1,sp,108
    154c:	27a60054 	addiu	a2,sp,84
    1550:	468041a0 	cvt.s.w	$f6,$f8
    1554:	e7b20060 	swc1	$f18,96(sp)
    1558:	46802420 	cvt.s.w	$f16,$f4
    155c:	e7a60064 	swc1	$f6,100(sp)
    1560:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1564:	e7b00068 	swc1	$f16,104(sp)
    1568:	27a40054 	addiu	a0,sp,84
    156c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1570:	3c054120 	lui	a1,0x4120
    1574:	c7aa0054 	lwc1	$f10,84(sp)
    1578:	27a40060 	addiu	a0,sp,96
    157c:	27a5006c 	addiu	a1,sp,108
    1580:	4600548d 	trunc.w.s	$f18,$f10
    1584:	27a60054 	addiu	a2,sp,84
    1588:	440f9000 	mfc1	t7,$f18
    158c:	00000000 	nop
    1590:	a60f0020 	sh	t7,32(s0)
    1594:	c7a80058 	lwc1	$f8,88(sp)
    1598:	4600418d 	trunc.w.s	$f6,$f8
    159c:	44183000 	mfc1	t8,$f6
    15a0:	00000000 	nop
    15a4:	a6180022 	sh	t8,34(s0)
    15a8:	c7a4005c 	lwc1	$f4,92(sp)
    15ac:	4600240d 	trunc.w.s	$f16,$f4
    15b0:	44098000 	mfc1	t1,$f16
    15b4:	00000000 	nop
    15b8:	a6090024 	sh	t1,36(s0)
    15bc:	93aa007c 	lbu	t2,124(sp)
    15c0:	a20a002c 	sb	t2,44(s0)
    15c4:	93ab007d 	lbu	t3,125(sp)
    15c8:	a20b002d 	sb	t3,45(s0)
    15cc:	93ac007e 	lbu	t4,126(sp)
    15d0:	a20c002e 	sb	t4,46(s0)
    15d4:	93ad007f 	lbu	t5,127(sp)
    15d8:	a20d002f 	sb	t5,47(s0)
    15dc:	87ae0084 	lh	t6,132(sp)
    15e0:	87af0086 	lh	t7,134(sp)
    15e4:	87b90088 	lh	t9,136(sp)
    15e8:	448e5000 	mtc1	t6,$f10
    15ec:	448f4000 	mtc1	t7,$f8
    15f0:	44992000 	mtc1	t9,$f4
    15f4:	468054a0 	cvt.s.w	$f18,$f10
    15f8:	468041a0 	cvt.s.w	$f6,$f8
    15fc:	e7b20060 	swc1	$f18,96(sp)
    1600:	46802420 	cvt.s.w	$f16,$f4
    1604:	e7a60064 	swc1	$f6,100(sp)
    1608:	0c000000 	jal	0 <EffectBlure_AddVertex>
    160c:	e7b00068 	swc1	$f16,104(sp)
    1610:	27a40054 	addiu	a0,sp,84
    1614:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1618:	3c054120 	lui	a1,0x4120
    161c:	c7aa0054 	lwc1	$f10,84(sp)
    1620:	240b0406 	li	t3,1030
    1624:	4600548d 	trunc.w.s	$f18,$f10
    1628:	44089000 	mfc1	t0,$f18
    162c:	00000000 	nop
    1630:	a6080030 	sh	t0,48(s0)
    1634:	c7a80058 	lwc1	$f8,88(sp)
    1638:	3c080100 	lui	t0,0x100
    163c:	35084008 	ori	t0,t0,0x4008
    1640:	4600418d 	trunc.w.s	$f6,$f8
    1644:	440a3000 	mfc1	t2,$f6
    1648:	00000000 	nop
    164c:	a60a0032 	sh	t2,50(s0)
    1650:	c7a4005c 	lwc1	$f4,92(sp)
    1654:	3c0a0600 	lui	t2,0x600
    1658:	354a0204 	ori	t2,t2,0x204
    165c:	4600240d 	trunc.w.s	$f16,$f4
    1660:	440c8000 	mfc1	t4,$f16
    1664:	00000000 	nop
    1668:	a60c0034 	sh	t4,52(s0)
    166c:	93ad0078 	lbu	t5,120(sp)
    1670:	a20d003c 	sb	t5,60(s0)
    1674:	93ae0079 	lbu	t6,121(sp)
    1678:	a20e003d 	sb	t6,61(s0)
    167c:	93af007a 	lbu	t7,122(sp)
    1680:	a20f003e 	sb	t7,62(s0)
    1684:	93b9007b 	lbu	t9,123(sp)
    1688:	a219003f 	sb	t9,63(s0)
    168c:	8e2302d0 	lw	v1,720(s1)
    1690:	24780008 	addiu	t8,v1,8
    1694:	ae3802d0 	sw	t8,720(s1)
    1698:	ac700004 	sw	s0,4(v1)
    169c:	ac680000 	sw	t0,0(v1)
    16a0:	8e2302d0 	lw	v1,720(s1)
    16a4:	24690008 	addiu	t1,v1,8
    16a8:	ae2902d0 	sw	t1,720(s1)
    16ac:	ac6b0004 	sw	t3,4(v1)
    16b0:	ac6a0000 	sw	t2,0(v1)
    16b4:	3c060000 	lui	a2,0x0
    16b8:	24c600c8 	addiu	a2,a2,200
    16bc:	27a40040 	addiu	a0,sp,64
    16c0:	02202825 	move	a1,s1
    16c4:	0c000000 	jal	0 <EffectBlure_AddVertex>
    16c8:	240703a4 	li	a3,932
    16cc:	8fbf002c 	lw	ra,44(sp)
    16d0:	8fb00024 	lw	s0,36(sp)
    16d4:	8fb10028 	lw	s1,40(sp)
    16d8:	03e00008 	jr	ra
    16dc:	27bd0098 	addiu	sp,sp,152

000016e0 <EffectBlure_DrawElemHermiteInterpolation>:
    16e0:	27bdfe08 	addiu	sp,sp,-504
    16e4:	afb40060 	sw	s4,96(sp)
    16e8:	00a0a025 	move	s4,a1
    16ec:	afb10054 	sw	s1,84(sp)
    16f0:	afa60200 	sw	a2,512(sp)
    16f4:	00808825 	move	s1,a0
    16f8:	afbf0064 	sw	ra,100(sp)
    16fc:	afa70204 	sw	a3,516(sp)
    1700:	3c060000 	lui	a2,0x0
    1704:	00e02825 	move	a1,a3
    1708:	afb3005c 	sw	s3,92(sp)
    170c:	afb20058 	sw	s2,88(sp)
    1710:	afb00050 	sw	s0,80(sp)
    1714:	f7bc0048 	sdc1	$f28,72(sp)
    1718:	f7ba0040 	sdc1	$f26,64(sp)
    171c:	f7b80038 	sdc1	$f24,56(sp)
    1720:	f7b60030 	sdc1	$f22,48(sp)
    1724:	f7b40028 	sdc1	$f20,40(sp)
    1728:	240703cb 	li	a3,971
    172c:	24c60000 	addiu	a2,a2,0
    1730:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1734:	27a40124 	addiu	a0,sp,292
    1738:	27a40138 	addiu	a0,sp,312
    173c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1740:	2625000e 	addiu	a1,s1,14
    1744:	8e8e0004 	lw	t6,4(s4)
    1748:	922f019f 	lbu	t7,415(s1)
    174c:	27b201ec 	addiu	s2,sp,492
    1750:	448e2000 	mtc1	t6,$f4
    1754:	448f4000 	mtc1	t7,$f8
    1758:	27b301e4 	addiu	s3,sp,484
    175c:	468021a0 	cvt.s.w	$f6,$f4
    1760:	05e10005 	bgez	t7,1778 <EffectBlure_DrawElemHermiteInterpolation+0x98>
    1764:	468042a0 	cvt.s.w	$f10,$f8
    1768:	3c014f80 	lui	at,0x4f80
    176c:	44818000 	mtc1	at,$f16
    1770:	00000000 	nop
    1774:	46105280 	add.s	$f10,$f10,$f16
    1778:	460a3003 	div.s	$f0,$f6,$f10
    177c:	27b801a4 	addiu	t8,sp,420
    1780:	27b901a0 	addiu	t9,sp,416
    1784:	afb90018 	sw	t9,24(sp)
    1788:	afb80014 	sw	t8,20(sp)
    178c:	02202025 	move	a0,s1
    1790:	8fa50200 	lw	a1,512(sp)
    1794:	02403825 	move	a3,s2
    1798:	afb30010 	sw	s3,16(sp)
    179c:	44060000 	mfc1	a2,$f0
    17a0:	0c000000 	jal	0 <EffectBlure_AddVertex>
    17a4:	00000000 	nop
    17a8:	27a401cc 	addiu	a0,sp,460
    17ac:	0c000000 	jal	0 <EffectBlure_AddVertex>
    17b0:	02402825 	move	a1,s2
    17b4:	27a401c0 	addiu	a0,sp,448
    17b8:	0c000000 	jal	0 <EffectBlure_AddVertex>
    17bc:	02602825 	move	a1,s3
    17c0:	8e88001c 	lw	t0,28(s4)
    17c4:	9229019f 	lbu	t1,415(s1)
    17c8:	44889000 	mtc1	t0,$f18
    17cc:	44894000 	mtc1	t1,$f8
    17d0:	46809120 	cvt.s.w	$f4,$f18
    17d4:	05210005 	bgez	t1,17ec <EffectBlure_DrawElemHermiteInterpolation+0x10c>
    17d8:	46804420 	cvt.s.w	$f16,$f8
    17dc:	3c014f80 	lui	at,0x4f80
    17e0:	44813000 	mtc1	at,$f6
    17e4:	00000000 	nop
    17e8:	46068400 	add.s	$f16,$f16,$f6
    17ec:	46102003 	div.s	$f0,$f4,$f16
    17f0:	8fa50200 	lw	a1,512(sp)
    17f4:	27aa019c 	addiu	t2,sp,412
    17f8:	27ab0198 	addiu	t3,sp,408
    17fc:	afab0018 	sw	t3,24(sp)
    1800:	afaa0014 	sw	t2,20(sp)
    1804:	02202025 	move	a0,s1
    1808:	02403825 	move	a3,s2
    180c:	afb30010 	sw	s3,16(sp)
    1810:	24a50001 	addiu	a1,a1,1
    1814:	44060000 	mfc1	a2,$f0
    1818:	0c000000 	jal	0 <EffectBlure_AddVertex>
    181c:	00000000 	nop
    1820:	27a4018c 	addiu	a0,sp,396
    1824:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1828:	02402825 	move	a1,s2
    182c:	27a40180 	addiu	a0,sp,384
    1830:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1834:	02602825 	move	a1,s3
    1838:	968c0014 	lhu	t4,20(s4)
    183c:	8fb00200 	lw	s0,512(sp)
    1840:	24010002 	li	at,2
    1844:	318d0003 	andi	t5,t4,0x3
    1848:	15a1000c 	bne	t5,at,187c <EffectBlure_DrawElemHermiteInterpolation+0x19c>
    184c:	2610ffff 	addiu	s0,s0,-1
    1850:	27a4018c 	addiu	a0,sp,396
    1854:	27a501cc 	addiu	a1,sp,460
    1858:	0c000000 	jal	0 <EffectBlure_AddVertex>
    185c:	27a601b4 	addiu	a2,sp,436
    1860:	27b001a8 	addiu	s0,sp,424
    1864:	02003025 	move	a2,s0
    1868:	27a40180 	addiu	a0,sp,384
    186c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1870:	27a501c0 	addiu	a1,sp,448
    1874:	10000030 	b	1938 <EffectBlure_DrawElemHermiteInterpolation+0x258>
    1878:	3c013f00 	lui	at,0x3f00
    187c:	06010006 	bgez	s0,1898 <EffectBlure_DrawElemHermiteInterpolation+0x1b8>
    1880:	3c040000 	lui	a0,0x0
    1884:	3c050000 	lui	a1,0x0
    1888:	24a50000 	addiu	a1,a1,0
    188c:	24840000 	addiu	a0,a0,0
    1890:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1894:	240603ed 	li	a2,1005
    1898:	8e8effec 	lw	t6,-20(s4)
    189c:	922f019f 	lbu	t7,415(s1)
    18a0:	3c014f80 	lui	at,0x4f80
    18a4:	448e5000 	mtc1	t6,$f10
    18a8:	448f4000 	mtc1	t7,$f8
    18ac:	468054a0 	cvt.s.w	$f18,$f10
    18b0:	05e10004 	bgez	t7,18c4 <EffectBlure_DrawElemHermiteInterpolation+0x1e4>
    18b4:	468041a0 	cvt.s.w	$f6,$f8
    18b8:	44812000 	mtc1	at,$f4
    18bc:	00000000 	nop
    18c0:	46043180 	add.s	$f6,$f6,$f4
    18c4:	46069003 	div.s	$f0,$f18,$f6
    18c8:	27b801dc 	addiu	t8,sp,476
    18cc:	27b901d8 	addiu	t9,sp,472
    18d0:	afb90018 	sw	t9,24(sp)
    18d4:	afb80014 	sw	t8,20(sp)
    18d8:	02202025 	move	a0,s1
    18dc:	02002825 	move	a1,s0
    18e0:	02403825 	move	a3,s2
    18e4:	afb30010 	sw	s3,16(sp)
    18e8:	44060000 	mfc1	a2,$f0
    18ec:	0c000000 	jal	0 <EffectBlure_AddVertex>
    18f0:	00000000 	nop
    18f4:	27b00118 	addiu	s0,sp,280
    18f8:	02002025 	move	a0,s0
    18fc:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1900:	02402825 	move	a1,s2
    1904:	27a4010c 	addiu	a0,sp,268
    1908:	0c000000 	jal	0 <EffectBlure_AddVertex>
    190c:	02602825 	move	a1,s3
    1910:	27a4018c 	addiu	a0,sp,396
    1914:	02002825 	move	a1,s0
    1918:	0c000000 	jal	0 <EffectBlure_AddVertex>
    191c:	27a601b4 	addiu	a2,sp,436
    1920:	27b001a8 	addiu	s0,sp,424
    1924:	02003025 	move	a2,s0
    1928:	27a40180 	addiu	a0,sp,384
    192c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1930:	27a5010c 	addiu	a1,sp,268
    1934:	3c013f00 	lui	at,0x3f00
    1938:	4481a000 	mtc1	at,$f20
    193c:	27a401b4 	addiu	a0,sp,436
    1940:	4405a000 	mfc1	a1,$f20
    1944:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1948:	00000000 	nop
    194c:	4405a000 	mfc1	a1,$f20
    1950:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1954:	02002025 	move	a0,s0
    1958:	9688002c 	lhu	t0,44(s4)
    195c:	24010002 	li	at,2
    1960:	8fb00200 	lw	s0,512(sp)
    1964:	31090003 	andi	t1,t0,0x3
    1968:	5521000e 	bnel	t1,at,19a4 <EffectBlure_DrawElemHermiteInterpolation+0x2c4>
    196c:	922a019e 	lbu	t2,414(s1)
    1970:	27b20174 	addiu	s2,sp,372
    1974:	02403025 	move	a2,s2
    1978:	27a4018c 	addiu	a0,sp,396
    197c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1980:	27a501cc 	addiu	a1,sp,460
    1984:	27b00168 	addiu	s0,sp,360
    1988:	02003025 	move	a2,s0
    198c:	27a40180 	addiu	a0,sp,384
    1990:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1994:	27a501c0 	addiu	a1,sp,448
    1998:	10000035 	b	1a70 <EffectBlure_DrawElemHermiteInterpolation+0x390>
    199c:	4405a000 	mfc1	a1,$f20
    19a0:	922a019e 	lbu	t2,414(s1)
    19a4:	26100002 	addiu	s0,s0,2
    19a8:	3c040000 	lui	a0,0x0
    19ac:	020a082a 	slt	at,s0,t2
    19b0:	14200005 	bnez	at,19c8 <EffectBlure_DrawElemHermiteInterpolation+0x2e8>
    19b4:	24840000 	addiu	a0,a0,0
    19b8:	3c050000 	lui	a1,0x0
    19bc:	24a50000 	addiu	a1,a1,0
    19c0:	0c000000 	jal	0 <EffectBlure_AddVertex>
    19c4:	24060408 	li	a2,1032
    19c8:	8e8b0034 	lw	t3,52(s4)
    19cc:	922c019f 	lbu	t4,415(s1)
    19d0:	3c014f80 	lui	at,0x4f80
    19d4:	448b8000 	mtc1	t3,$f16
    19d8:	448c4000 	mtc1	t4,$f8
    19dc:	468082a0 	cvt.s.w	$f10,$f16
    19e0:	05810004 	bgez	t4,19f4 <EffectBlure_DrawElemHermiteInterpolation+0x314>
    19e4:	46804120 	cvt.s.w	$f4,$f8
    19e8:	44819000 	mtc1	at,$f18
    19ec:	00000000 	nop
    19f0:	46122100 	add.s	$f4,$f4,$f18
    19f4:	46045003 	div.s	$f0,$f10,$f4
    19f8:	27ad01dc 	addiu	t5,sp,476
    19fc:	27ae01d8 	addiu	t6,sp,472
    1a00:	afae0018 	sw	t6,24(sp)
    1a04:	afad0014 	sw	t5,20(sp)
    1a08:	02202025 	move	a0,s1
    1a0c:	02002825 	move	a1,s0
    1a10:	02403825 	move	a3,s2
    1a14:	afb30010 	sw	s3,16(sp)
    1a18:	44060000 	mfc1	a2,$f0
    1a1c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1a20:	00000000 	nop
    1a24:	27b00100 	addiu	s0,sp,256
    1a28:	02002025 	move	a0,s0
    1a2c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1a30:	02402825 	move	a1,s2
    1a34:	27b100f4 	addiu	s1,sp,244
    1a38:	02202025 	move	a0,s1
    1a3c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1a40:	02602825 	move	a1,s3
    1a44:	27b20174 	addiu	s2,sp,372
    1a48:	02403025 	move	a2,s2
    1a4c:	02002025 	move	a0,s0
    1a50:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1a54:	27a501cc 	addiu	a1,sp,460
    1a58:	27b00168 	addiu	s0,sp,360
    1a5c:	02003025 	move	a2,s0
    1a60:	02202025 	move	a0,s1
    1a64:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1a68:	27a501c0 	addiu	a1,sp,448
    1a6c:	4405a000 	mfc1	a1,$f20
    1a70:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1a74:	02402025 	move	a0,s2
    1a78:	4405a000 	mfc1	a1,$f20
    1a7c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1a80:	02002025 	move	a0,s0
    1a84:	8fa40204 	lw	a0,516(sp)
    1a88:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1a8c:	24050100 	li	a1,256
    1a90:	14400006 	bnez	v0,1aac <EffectBlure_DrawElemHermiteInterpolation+0x3cc>
    1a94:	0040a025 	move	s4,v0
    1a98:	3c040000 	lui	a0,0x0
    1a9c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1aa0:	24840000 	addiu	a0,a0,0
    1aa4:	10000187 	b	20c4 <EffectBlure_DrawElemHermiteInterpolation+0x9e4>
    1aa8:	00000000 	nop
    1aac:	27a401cc 	addiu	a0,sp,460
    1ab0:	27a50138 	addiu	a1,sp,312
    1ab4:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1ab8:	27a60158 	addiu	a2,sp,344
    1abc:	27a40158 	addiu	a0,sp,344
    1ac0:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1ac4:	3c054120 	lui	a1,0x4120
    1ac8:	27a401c0 	addiu	a0,sp,448
    1acc:	27a50138 	addiu	a1,sp,312
    1ad0:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1ad4:	27a6014c 	addiu	a2,sp,332
    1ad8:	27a4014c 	addiu	a0,sp,332
    1adc:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1ae0:	3c054120 	lui	a1,0x4120
    1ae4:	27a40148 	addiu	a0,sp,328
    1ae8:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1aec:	27a501a4 	addiu	a1,sp,420
    1af0:	27a40144 	addiu	a0,sp,324
    1af4:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1af8:	27a501a0 	addiu	a1,sp,416
    1afc:	3c020000 	lui	v0,0x0
    1b00:	24420000 	addiu	v0,v0,0
    1b04:	8c580000 	lw	t8,0(v0)
    1b08:	aa980000 	swl	t8,0(s4)
    1b0c:	ba980003 	swr	t8,3(s4)
    1b10:	8c4f0004 	lw	t7,4(v0)
    1b14:	aa8f0004 	swl	t7,4(s4)
    1b18:	ba8f0007 	swr	t7,7(s4)
    1b1c:	8c580008 	lw	t8,8(v0)
    1b20:	aa980008 	swl	t8,8(s4)
    1b24:	ba98000b 	swr	t8,11(s4)
    1b28:	8c4f000c 	lw	t7,12(v0)
    1b2c:	aa8f000c 	swl	t7,12(s4)
    1b30:	ba8f000f 	swr	t7,15(s4)
    1b34:	8c480000 	lw	t0,0(v0)
    1b38:	aa880010 	swl	t0,16(s4)
    1b3c:	ba880013 	swr	t0,19(s4)
    1b40:	8c590004 	lw	t9,4(v0)
    1b44:	aa990014 	swl	t9,20(s4)
    1b48:	ba990017 	swr	t9,23(s4)
    1b4c:	8c480008 	lw	t0,8(v0)
    1b50:	aa880018 	swl	t0,24(s4)
    1b54:	ba88001b 	swr	t0,27(s4)
    1b58:	8c59000c 	lw	t9,12(v0)
    1b5c:	aa99001c 	swl	t9,28(s4)
    1b60:	ba99001f 	swr	t9,31(s4)
    1b64:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1b68:	c7ac0158 	lwc1	$f12,344(sp)
    1b6c:	4600018d 	trunc.w.s	$f6,$f0
    1b70:	440a3000 	mfc1	t2,$f6
    1b74:	00000000 	nop
    1b78:	a68a0000 	sh	t2,0(s4)
    1b7c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1b80:	c7ac015c 	lwc1	$f12,348(sp)
    1b84:	4600040d 	trunc.w.s	$f16,$f0
    1b88:	440c8000 	mfc1	t4,$f16
    1b8c:	00000000 	nop
    1b90:	a68c0002 	sh	t4,2(s4)
    1b94:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1b98:	c7ac0160 	lwc1	$f12,352(sp)
    1b9c:	4600020d 	trunc.w.s	$f8,$f0
    1ba0:	440e4000 	mfc1	t6,$f8
    1ba4:	00000000 	nop
    1ba8:	a68e0004 	sh	t6,4(s4)
    1bac:	93af0148 	lbu	t7,328(sp)
    1bb0:	a28f000c 	sb	t7,12(s4)
    1bb4:	93b80149 	lbu	t8,329(sp)
    1bb8:	a298000d 	sb	t8,13(s4)
    1bbc:	93b9014a 	lbu	t9,330(sp)
    1bc0:	a299000e 	sb	t9,14(s4)
    1bc4:	93a8014b 	lbu	t0,331(sp)
    1bc8:	a288000f 	sb	t0,15(s4)
    1bcc:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1bd0:	c7ac014c 	lwc1	$f12,332(sp)
    1bd4:	4600048d 	trunc.w.s	$f18,$f0
    1bd8:	440a9000 	mfc1	t2,$f18
    1bdc:	00000000 	nop
    1be0:	a68a0010 	sh	t2,16(s4)
    1be4:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1be8:	c7ac0150 	lwc1	$f12,336(sp)
    1bec:	4600028d 	trunc.w.s	$f10,$f0
    1bf0:	440c5000 	mfc1	t4,$f10
    1bf4:	00000000 	nop
    1bf8:	a68c0012 	sh	t4,18(s4)
    1bfc:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1c00:	c7ac0154 	lwc1	$f12,340(sp)
    1c04:	4600010d 	trunc.w.s	$f4,$f0
    1c08:	24120001 	li	s2,1
    1c0c:	24130003 	li	s3,3
    1c10:	26910030 	addiu	s1,s4,48
    1c14:	440e2000 	mfc1	t6,$f4
    1c18:	26900020 	addiu	s0,s4,32
    1c1c:	a68e0014 	sh	t6,20(s4)
    1c20:	93af0144 	lbu	t7,324(sp)
    1c24:	a28f001c 	sb	t7,28(s4)
    1c28:	93b80145 	lbu	t8,325(sp)
    1c2c:	a298001d 	sb	t8,29(s4)
    1c30:	93b90146 	lbu	t9,326(sp)
    1c34:	a299001e 	sb	t9,30(s4)
    1c38:	93a80147 	lbu	t0,327(sp)
    1c3c:	a288001f 	sb	t0,31(s4)
    1c40:	44923000 	mtc1	s2,$f6
    1c44:	3c0140e0 	lui	at,0x40e0
    1c48:	44814000 	mtc1	at,$f8
    1c4c:	46803420 	cvt.s.w	$f16,$f6
    1c50:	3c014040 	lui	at,0x4040
    1c54:	44819000 	mtc1	at,$f18
    1c58:	3c013f80 	lui	at,0x3f80
    1c5c:	44812000 	mtc1	at,$f4
    1c60:	afb300ec 	sw	s3,236(sp)
    1c64:	46088703 	div.s	$f28,$f16,$f8
    1c68:	c7a801cc 	lwc1	$f8,460(sp)
    1c6c:	27a400e0 	addiu	a0,sp,224
    1c70:	27a50138 	addiu	a1,sp,312
    1c74:	27a60158 	addiu	a2,sp,344
    1c78:	461ce002 	mul.s	$f0,$f28,$f28
    1c7c:	00000000 	nop
    1c80:	461c0082 	mul.s	$f2,$f0,$f28
    1c84:	46000180 	add.s	$f6,$f0,$f0
    1c88:	46120382 	mul.s	$f14,$f0,$f18
    1c8c:	46021300 	add.s	$f12,$f2,$f2
    1c90:	46061401 	sub.s	$f16,$f2,$f6
    1c94:	460e6281 	sub.s	$f10,$f12,$f14
    1c98:	460c7681 	sub.s	$f26,$f14,$f12
    1c9c:	46045600 	add.s	$f24,$f10,$f4
    1ca0:	c7aa018c 	lwc1	$f10,396(sp)
    1ca4:	461c8580 	add.s	$f22,$f16,$f28
    1ca8:	4608c482 	mul.s	$f18,$f24,$f8
    1cac:	c7b001b4 	lwc1	$f16,436(sp)
    1cb0:	46001501 	sub.s	$f20,$f2,$f0
    1cb4:	460ad102 	mul.s	$f4,$f26,$f10
    1cb8:	46049180 	add.s	$f6,$f18,$f4
    1cbc:	4610b202 	mul.s	$f8,$f22,$f16
    1cc0:	c7b20174 	lwc1	$f18,372(sp)
    1cc4:	4612a102 	mul.s	$f4,$f20,$f18
    1cc8:	c7b20190 	lwc1	$f18,400(sp)
    1ccc:	46083280 	add.s	$f10,$f6,$f8
    1cd0:	c7a601d0 	lwc1	$f6,464(sp)
    1cd4:	4606c202 	mul.s	$f8,$f24,$f6
    1cd8:	46045400 	add.s	$f16,$f10,$f4
    1cdc:	4612d282 	mul.s	$f10,$f26,$f18
    1ce0:	e7b000e0 	swc1	$f16,224(sp)
    1ce4:	c7b001b8 	lwc1	$f16,440(sp)
    1ce8:	4610b182 	mul.s	$f6,$f22,$f16
    1cec:	460a4100 	add.s	$f4,$f8,$f10
    1cf0:	c7a80178 	lwc1	$f8,376(sp)
    1cf4:	4608a282 	mul.s	$f10,$f20,$f8
    1cf8:	c7a80194 	lwc1	$f8,404(sp)
    1cfc:	46062480 	add.s	$f18,$f4,$f6
    1d00:	c7a401d4 	lwc1	$f4,468(sp)
    1d04:	4604c182 	mul.s	$f6,$f24,$f4
    1d08:	460a9400 	add.s	$f16,$f18,$f10
    1d0c:	4608d482 	mul.s	$f18,$f26,$f8
    1d10:	e7b000e4 	swc1	$f16,228(sp)
    1d14:	c7b001bc 	lwc1	$f16,444(sp)
    1d18:	4610b102 	mul.s	$f4,$f22,$f16
    1d1c:	46123280 	add.s	$f10,$f6,$f18
    1d20:	c7a6017c 	lwc1	$f6,380(sp)
    1d24:	4606a482 	mul.s	$f18,$f20,$f6
    1d28:	46045200 	add.s	$f8,$f10,$f4
    1d2c:	46124400 	add.s	$f16,$f8,$f18
    1d30:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1d34:	e7b000e8 	swc1	$f16,232(sp)
    1d38:	27a40158 	addiu	a0,sp,344
    1d3c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1d40:	3c054120 	lui	a1,0x4120
    1d44:	c7aa01c0 	lwc1	$f10,448(sp)
    1d48:	c7a60180 	lwc1	$f6,384(sp)
    1d4c:	c7b001a8 	lwc1	$f16,424(sp)
    1d50:	460ac102 	mul.s	$f4,$f24,$f10
    1d54:	27a400e0 	addiu	a0,sp,224
    1d58:	27a50138 	addiu	a1,sp,312
    1d5c:	4606d202 	mul.s	$f8,$f26,$f6
    1d60:	27a6014c 	addiu	a2,sp,332
    1d64:	4610b282 	mul.s	$f10,$f22,$f16
    1d68:	46082480 	add.s	$f18,$f4,$f8
    1d6c:	c7a40168 	lwc1	$f4,360(sp)
    1d70:	4604a202 	mul.s	$f8,$f20,$f4
    1d74:	460a9180 	add.s	$f6,$f18,$f10
    1d78:	c7b201c4 	lwc1	$f18,452(sp)
    1d7c:	c7a40184 	lwc1	$f4,388(sp)
    1d80:	4612c282 	mul.s	$f10,$f24,$f18
    1d84:	46083400 	add.s	$f16,$f6,$f8
    1d88:	4604d182 	mul.s	$f6,$f26,$f4
    1d8c:	e7b000e0 	swc1	$f16,224(sp)
    1d90:	c7b001ac 	lwc1	$f16,428(sp)
    1d94:	4610b482 	mul.s	$f18,$f22,$f16
    1d98:	46065200 	add.s	$f8,$f10,$f6
    1d9c:	c7aa016c 	lwc1	$f10,364(sp)
    1da0:	460aa182 	mul.s	$f6,$f20,$f10
    1da4:	c7aa0188 	lwc1	$f10,392(sp)
    1da8:	46124100 	add.s	$f4,$f8,$f18
    1dac:	c7a801c8 	lwc1	$f8,456(sp)
    1db0:	4608c482 	mul.s	$f18,$f24,$f8
    1db4:	46062400 	add.s	$f16,$f4,$f6
    1db8:	460ad102 	mul.s	$f4,$f26,$f10
    1dbc:	e7b000e4 	swc1	$f16,228(sp)
    1dc0:	c7b001b0 	lwc1	$f16,432(sp)
    1dc4:	4610b202 	mul.s	$f8,$f22,$f16
    1dc8:	46049180 	add.s	$f6,$f18,$f4
    1dcc:	c7b20170 	lwc1	$f18,368(sp)
    1dd0:	4612a102 	mul.s	$f4,$f20,$f18
    1dd4:	46083280 	add.s	$f10,$f6,$f8
    1dd8:	46045400 	add.s	$f16,$f10,$f4
    1ddc:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1de0:	e7b000e8 	swc1	$f16,232(sp)
    1de4:	27a4014c 	addiu	a0,sp,332
    1de8:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1dec:	3c054120 	lui	a1,0x4120
    1df0:	3c020000 	lui	v0,0x0
    1df4:	24420000 	addiu	v0,v0,0
    1df8:	8c4a0000 	lw	t2,0(v0)
    1dfc:	aa0a0000 	swl	t2,0(s0)
    1e00:	ba0a0003 	swr	t2,3(s0)
    1e04:	8c490004 	lw	t1,4(v0)
    1e08:	aa090004 	swl	t1,4(s0)
    1e0c:	ba090007 	swr	t1,7(s0)
    1e10:	8c4a0008 	lw	t2,8(v0)
    1e14:	aa0a0008 	swl	t2,8(s0)
    1e18:	ba0a000b 	swr	t2,11(s0)
    1e1c:	8c49000c 	lw	t1,12(v0)
    1e20:	aa09000c 	swl	t1,12(s0)
    1e24:	ba09000f 	swr	t1,15(s0)
    1e28:	8c4c0000 	lw	t4,0(v0)
    1e2c:	aa2c0000 	swl	t4,0(s1)
    1e30:	ba2c0003 	swr	t4,3(s1)
    1e34:	8c4b0004 	lw	t3,4(v0)
    1e38:	aa2b0004 	swl	t3,4(s1)
    1e3c:	ba2b0007 	swr	t3,7(s1)
    1e40:	8c4c0008 	lw	t4,8(v0)
    1e44:	aa2c0008 	swl	t4,8(s1)
    1e48:	ba2c000b 	swr	t4,11(s1)
    1e4c:	8c4b000c 	lw	t3,12(v0)
    1e50:	aa2b000c 	swl	t3,12(s1)
    1e54:	ba2b000f 	swr	t3,15(s1)
    1e58:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1e5c:	c7ac0158 	lwc1	$f12,344(sp)
    1e60:	4600018d 	trunc.w.s	$f6,$f0
    1e64:	440e3000 	mfc1	t6,$f6
    1e68:	00000000 	nop
    1e6c:	a60e0000 	sh	t6,0(s0)
    1e70:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1e74:	c7ac015c 	lwc1	$f12,348(sp)
    1e78:	4600020d 	trunc.w.s	$f8,$f0
    1e7c:	44184000 	mfc1	t8,$f8
    1e80:	00000000 	nop
    1e84:	a6180002 	sh	t8,2(s0)
    1e88:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1e8c:	c7ac0160 	lwc1	$f12,352(sp)
    1e90:	4600048d 	trunc.w.s	$f18,$f0
    1e94:	4406e000 	mfc1	a2,$f28
    1e98:	44089000 	mfc1	t0,$f18
    1e9c:	00000000 	nop
    1ea0:	a6080004 	sh	t0,4(s0)
    1ea4:	93a5019c 	lbu	a1,412(sp)
    1ea8:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1eac:	93a401a4 	lbu	a0,420(sp)
    1eb0:	a202000c 	sb	v0,12(s0)
    1eb4:	4406e000 	mfc1	a2,$f28
    1eb8:	93a5019d 	lbu	a1,413(sp)
    1ebc:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1ec0:	93a401a5 	lbu	a0,421(sp)
    1ec4:	a202000d 	sb	v0,13(s0)
    1ec8:	4406e000 	mfc1	a2,$f28
    1ecc:	93a5019e 	lbu	a1,414(sp)
    1ed0:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1ed4:	93a401a6 	lbu	a0,422(sp)
    1ed8:	a202000e 	sb	v0,14(s0)
    1edc:	4406e000 	mfc1	a2,$f28
    1ee0:	93a5019f 	lbu	a1,415(sp)
    1ee4:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1ee8:	93a401a7 	lbu	a0,423(sp)
    1eec:	a202000f 	sb	v0,15(s0)
    1ef0:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1ef4:	c7ac014c 	lwc1	$f12,332(sp)
    1ef8:	4600028d 	trunc.w.s	$f10,$f0
    1efc:	440a5000 	mfc1	t2,$f10
    1f00:	00000000 	nop
    1f04:	a62a0000 	sh	t2,0(s1)
    1f08:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1f0c:	c7ac0150 	lwc1	$f12,336(sp)
    1f10:	4600010d 	trunc.w.s	$f4,$f0
    1f14:	440c2000 	mfc1	t4,$f4
    1f18:	00000000 	nop
    1f1c:	a62c0002 	sh	t4,2(s1)
    1f20:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1f24:	c7ac0154 	lwc1	$f12,340(sp)
    1f28:	4600040d 	trunc.w.s	$f16,$f0
    1f2c:	4406e000 	mfc1	a2,$f28
    1f30:	440e8000 	mfc1	t6,$f16
    1f34:	00000000 	nop
    1f38:	a62e0004 	sh	t6,4(s1)
    1f3c:	93a50198 	lbu	a1,408(sp)
    1f40:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1f44:	93a401a0 	lbu	a0,416(sp)
    1f48:	a222000c 	sb	v0,12(s1)
    1f4c:	4406e000 	mfc1	a2,$f28
    1f50:	93a50199 	lbu	a1,409(sp)
    1f54:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1f58:	93a401a1 	lbu	a0,417(sp)
    1f5c:	a222000d 	sb	v0,13(s1)
    1f60:	4406e000 	mfc1	a2,$f28
    1f64:	93a5019a 	lbu	a1,410(sp)
    1f68:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1f6c:	93a401a2 	lbu	a0,418(sp)
    1f70:	a222000e 	sb	v0,14(s1)
    1f74:	4406e000 	mfc1	a2,$f28
    1f78:	93a5019b 	lbu	a1,411(sp)
    1f7c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    1f80:	93a401a3 	lbu	a0,419(sp)
    1f84:	8faf00ec 	lw	t7,236(sp)
    1f88:	26520001 	addiu	s2,s2,1
    1f8c:	24010008 	li	at,8
    1f90:	000fc100 	sll	t8,t7,0x4
    1f94:	0298c821 	addu	t9,s4,t8
    1f98:	26730002 	addiu	s3,s3,2
    1f9c:	26310020 	addiu	s1,s1,32
    1fa0:	26100020 	addiu	s0,s0,32
    1fa4:	1641ff26 	bne	s2,at,1c40 <EffectBlure_DrawElemHermiteInterpolation+0x560>
    1fa8:	a322000f 	sb	v0,15(t9)
    1fac:	8fa40204 	lw	a0,516(sp)
    1fb0:	3c090101 	lui	t1,0x101
    1fb4:	35290020 	ori	t1,t1,0x20
    1fb8:	8c8202d0 	lw	v0,720(a0)
    1fbc:	3c0b0600 	lui	t3,0x600
    1fc0:	356b0206 	ori	t3,t3,0x206
    1fc4:	24480008 	addiu	t0,v0,8
    1fc8:	ac8802d0 	sw	t0,720(a0)
    1fcc:	ac540004 	sw	s4,4(v0)
    1fd0:	ac490000 	sw	t1,0(v0)
    1fd4:	8c8202d0 	lw	v0,720(a0)
    1fd8:	240c0604 	li	t4,1540
    1fdc:	3c0e0604 	lui	t6,0x604
    1fe0:	244a0008 	addiu	t2,v0,8
    1fe4:	ac8a02d0 	sw	t2,720(a0)
    1fe8:	ac4c0004 	sw	t4,4(v0)
    1fec:	ac4b0000 	sw	t3,0(v0)
    1ff0:	8c8202d0 	lw	v0,720(a0)
    1ff4:	3c0f0004 	lui	t7,0x4
    1ff8:	35ef0a08 	ori	t7,t7,0xa08
    1ffc:	244d0008 	addiu	t5,v0,8
    2000:	ac8d02d0 	sw	t5,720(a0)
    2004:	35ce060a 	ori	t6,t6,0x60a
    2008:	ac4e0000 	sw	t6,0(v0)
    200c:	ac4f0004 	sw	t7,4(v0)
    2010:	8c8202d0 	lw	v0,720(a0)
    2014:	3c080008 	lui	t0,0x8
    2018:	3c190608 	lui	t9,0x608
    201c:	24580008 	addiu	t8,v0,8
    2020:	ac9802d0 	sw	t8,720(a0)
    2024:	37390a0e 	ori	t9,t9,0xa0e
    2028:	35080e0c 	ori	t0,t0,0xe0c
    202c:	ac480004 	sw	t0,4(v0)
    2030:	ac590000 	sw	t9,0(v0)
    2034:	8c8202d0 	lw	v0,720(a0)
    2038:	3c0b000c 	lui	t3,0xc
    203c:	3c0a060c 	lui	t2,0x60c
    2040:	24490008 	addiu	t1,v0,8
    2044:	ac8902d0 	sw	t1,720(a0)
    2048:	354a0e12 	ori	t2,t2,0xe12
    204c:	356b1210 	ori	t3,t3,0x1210
    2050:	ac4b0004 	sw	t3,4(v0)
    2054:	ac4a0000 	sw	t2,0(v0)
    2058:	8c8202d0 	lw	v0,720(a0)
    205c:	3c0e0010 	lui	t6,0x10
    2060:	3c0d0610 	lui	t5,0x610
    2064:	244c0008 	addiu	t4,v0,8
    2068:	ac8c02d0 	sw	t4,720(a0)
    206c:	35ad1216 	ori	t5,t5,0x1216
    2070:	35ce1614 	ori	t6,t6,0x1614
    2074:	ac4e0004 	sw	t6,4(v0)
    2078:	ac4d0000 	sw	t5,0(v0)
    207c:	8c8202d0 	lw	v0,720(a0)
    2080:	3c190014 	lui	t9,0x14
    2084:	3c180614 	lui	t8,0x614
    2088:	244f0008 	addiu	t7,v0,8
    208c:	ac8f02d0 	sw	t7,720(a0)
    2090:	3718161a 	ori	t8,t8,0x161a
    2094:	37391a18 	ori	t9,t9,0x1a18
    2098:	ac590004 	sw	t9,4(v0)
    209c:	ac580000 	sw	t8,0(v0)
    20a0:	8c8202d0 	lw	v0,720(a0)
    20a4:	3c0a0018 	lui	t2,0x18
    20a8:	3c090618 	lui	t1,0x618
    20ac:	24480008 	addiu	t0,v0,8
    20b0:	ac8802d0 	sw	t0,720(a0)
    20b4:	35291a1e 	ori	t1,t1,0x1a1e
    20b8:	354a1e1c 	ori	t2,t2,0x1e1c
    20bc:	ac4a0004 	sw	t2,4(v0)
    20c0:	ac490000 	sw	t1,0(v0)
    20c4:	3c060000 	lui	a2,0x0
    20c8:	24c60000 	addiu	a2,a2,0
    20cc:	27a40124 	addiu	a0,sp,292
    20d0:	8fa50204 	lw	a1,516(sp)
    20d4:	0c000000 	jal	0 <EffectBlure_AddVertex>
    20d8:	240704a0 	li	a3,1184
    20dc:	8fbf0064 	lw	ra,100(sp)
    20e0:	d7b40028 	ldc1	$f20,40(sp)
    20e4:	d7b60030 	ldc1	$f22,48(sp)
    20e8:	d7b80038 	ldc1	$f24,56(sp)
    20ec:	d7ba0040 	ldc1	$f26,64(sp)
    20f0:	d7bc0048 	ldc1	$f28,72(sp)
    20f4:	8fb00050 	lw	s0,80(sp)
    20f8:	8fb10054 	lw	s1,84(sp)
    20fc:	8fb20058 	lw	s2,88(sp)
    2100:	8fb3005c 	lw	s3,92(sp)
    2104:	8fb40060 	lw	s4,96(sp)
    2108:	03e00008 	jr	ra
    210c:	27bd01f8 	addiu	sp,sp,504

00002110 <EffectBlure_DrawSmooth>:
    2110:	27bdfed8 	addiu	sp,sp,-296
    2114:	afb40024 	sw	s4,36(sp)
    2118:	afb30020 	sw	s3,32(sp)
    211c:	0080a025 	move	s4,a0
    2120:	afbf002c 	sw	ra,44(sp)
    2124:	afb50028 	sw	s5,40(sp)
    2128:	00809825 	move	s3,a0
    212c:	3c060000 	lui	a2,0x0
    2130:	00a0a825 	move	s5,a1
    2134:	afb2001c 	sw	s2,28(sp)
    2138:	afb10018 	sw	s1,24(sp)
    213c:	afb00014 	sw	s0,20(sp)
    2140:	24c60000 	addiu	a2,a2,0
    2144:	27a40044 	addiu	a0,sp,68
    2148:	0c000000 	jal	0 <EffectBlure_AddVertex>
    214c:	240704b1 	li	a3,1201
    2150:	9284019e 	lbu	a0,414(s4)
    2154:	24120018 	li	s2,24
    2158:	28810002 	slti	at,a0,2
    215c:	142000a2 	bnez	at,23e8 <EffectBlure_DrawSmooth+0x2d8>
    2160:	00801825 	move	v1,a0
    2164:	00920019 	multu	a0,s2
    2168:	968e0014 	lhu	t6,20(s4)
    216c:	26900018 	addiu	s0,s4,24
    2170:	2411fffc 	li	s1,-4
    2174:	31d8fffc 	andi	t8,t6,0xfffc
    2178:	a6980014 	sh	t8,20(s4)
    217c:	37190002 	ori	t9,t8,0x2
    2180:	a6990014 	sh	t9,20(s4)
    2184:	00004012 	mflo	t0
    2188:	02884821 	addu	t1,s4,t0
    218c:	252affe8 	addiu	t2,t1,-24
    2190:	020a082b 	sltu	at,s0,t2
    2194:	5020000e 	beqzl	at,21d0 <EffectBlure_DrawSmooth+0xc0>
    2198:	24060018 	li	a2,24
    219c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    21a0:	02002025 	move	a0,s0
    21a4:	926b019e 	lbu	t3,414(s3)
    21a8:	26100018 	addiu	s0,s0,24
    21ac:	01720019 	multu	t3,s2
    21b0:	00006012 	mflo	t4
    21b4:	026c6821 	addu	t5,s3,t4
    21b8:	25aeffe8 	addiu	t6,t5,-24
    21bc:	020e082b 	sltu	at,s0,t6
    21c0:	1420fff6 	bnez	at,219c <EffectBlure_DrawSmooth+0x8c>
    21c4:	00000000 	nop
    21c8:	9283019e 	lbu	v1,414(s4)
    21cc:	24060018 	li	a2,24
    21d0:	00660019 	multu	v1,a2
    21d4:	02802025 	move	a0,s4
    21d8:	02a02825 	move	a1,s5
    21dc:	00007812 	mflo	t7
    21e0:	028f1021 	addu	v0,s4,t7
    21e4:	9458fffc 	lhu	t8,-4(v0)
    21e8:	0311c824 	and	t9,t8,s1
    21ec:	a459fffc 	sh	t9,-4(v0)
    21f0:	9288019e 	lbu	t0,414(s4)
    21f4:	01060019 	multu	t0,a2
    21f8:	00004812 	mflo	t1
    21fc:	02891021 	addu	v0,s4,t1
    2200:	944afffc 	lhu	t2,-4(v0)
    2204:	354b0002 	ori	t3,t2,0x2
    2208:	0c000000 	jal	0 <EffectBlure_AddVertex>
    220c:	a44bfffc 	sh	t3,-4(v0)
    2210:	868c000e 	lh	t4,14(s4)
    2214:	868d0010 	lh	t5,16(s4)
    2218:	868e0012 	lh	t6,18(s4)
    221c:	448c2000 	mtc1	t4,$f4
    2220:	448d3000 	mtc1	t5,$f6
    2224:	448e4000 	mtc1	t6,$f8
    2228:	46802120 	cvt.s.w	$f4,$f4
    222c:	27b000dc 	addiu	s0,sp,220
    2230:	02002025 	move	a0,s0
    2234:	468031a0 	cvt.s.w	$f6,$f6
    2238:	44052000 	mfc1	a1,$f4
    223c:	46804220 	cvt.s.w	$f8,$f8
    2240:	44063000 	mfc1	a2,$f6
    2244:	44074000 	mfc1	a3,$f8
    2248:	0c000000 	jal	0 <EffectBlure_AddVertex>
    224c:	00000000 	nop
    2250:	3c010000 	lui	at,0x0
    2254:	c4200000 	lwc1	$f0,0(at)
    2258:	27b1009c 	addiu	s1,sp,156
    225c:	02202025 	move	a0,s1
    2260:	44050000 	mfc1	a1,$f0
    2264:	44060000 	mfc1	a2,$f0
    2268:	44070000 	mfc1	a3,$f0
    226c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2270:	00000000 	nop
    2274:	02002025 	move	a0,s0
    2278:	02202825 	move	a1,s1
    227c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2280:	27a6005c 	addiu	a2,sp,92
    2284:	02a02025 	move	a0,s5
    2288:	0c000000 	jal	0 <EffectBlure_AddVertex>
    228c:	27a5005c 	addiu	a1,sp,92
    2290:	50400056 	beqzl	v0,23ec <EffectBlure_DrawSmooth+0x2dc>
    2294:	8fbf002c 	lw	ra,44(sp)
    2298:	8ea402d0 	lw	a0,720(s5)
    229c:	3c18da38 	lui	t8,0xda38
    22a0:	37180003 	ori	t8,t8,0x3
    22a4:	248f0008 	addiu	t7,a0,8
    22a8:	aeaf02d0 	sw	t7,720(s5)
    22ac:	ac820004 	sw	v0,4(a0)
    22b0:	ac980000 	sw	t8,0(a0)
    22b4:	9299019e 	lbu	t9,414(s4)
    22b8:	00008825 	move	s1,zero
    22bc:	02808025 	move	s0,s4
    22c0:	03320019 	multu	t9,s2
    22c4:	24120002 	li	s2,2
    22c8:	00004012 	mflo	t0
    22cc:	02884821 	addu	t1,s4,t0
    22d0:	252affe8 	addiu	t2,t1,-24
    22d4:	028a082b 	sltu	at,s4,t2
    22d8:	1020003d 	beqz	at,23d0 <EffectBlure_DrawSmooth+0x2c0>
    22dc:	00000000 	nop
    22e0:	8e0b0000 	lw	t3,0(s0)
    22e4:	51600005 	beqzl	t3,22fc <EffectBlure_DrawSmooth+0x1ec>
    22e8:	926d019e 	lbu	t5,414(s3)
    22ec:	8e0c0018 	lw	t4,24(s0)
    22f0:	55800009 	bnezl	t4,2318 <EffectBlure_DrawSmooth+0x208>
    22f4:	96020014 	lhu	v0,20(s0)
    22f8:	926d019e 	lbu	t5,414(s3)
    22fc:	000d7080 	sll	t6,t5,0x2
    2300:	01cd7023 	subu	t6,t6,t5
    2304:	000e70c0 	sll	t6,t6,0x3
    2308:	026e1021 	addu	v0,s3,t6
    230c:	1000002c 	b	23c0 <EffectBlure_DrawSmooth+0x2b0>
    2310:	2442ffe8 	addiu	v0,v0,-24
    2314:	96020014 	lhu	v0,20(s0)
    2318:	30420003 	andi	v0,v0,0x3
    231c:	14400005 	bnez	v0,2334 <EffectBlure_DrawSmooth+0x224>
    2320:	00000000 	nop
    2324:	960f002c 	lhu	t7,44(s0)
    2328:	31f80003 	andi	t8,t7,0x3
    232c:	53000014 	beqzl	t8,2380 <EffectBlure_DrawSmooth+0x270>
    2330:	02802025 	move	a0,s4
    2334:	16420005 	bne	s2,v0,234c <EffectBlure_DrawSmooth+0x23c>
    2338:	00000000 	nop
    233c:	9619002c 	lhu	t9,44(s0)
    2340:	33280003 	andi	t0,t9,0x3
    2344:	5100000e 	beqzl	t0,2380 <EffectBlure_DrawSmooth+0x270>
    2348:	02802025 	move	a0,s4
    234c:	14400005 	bnez	v0,2364 <EffectBlure_DrawSmooth+0x254>
    2350:	00000000 	nop
    2354:	9609002c 	lhu	t1,44(s0)
    2358:	312a0003 	andi	t2,t1,0x3
    235c:	524a0008 	beql	s2,t2,2380 <EffectBlure_DrawSmooth+0x270>
    2360:	02802025 	move	a0,s4
    2364:	1642000c 	bne	s2,v0,2398 <EffectBlure_DrawSmooth+0x288>
    2368:	02802025 	move	a0,s4
    236c:	960b002c 	lhu	t3,44(s0)
    2370:	316c0003 	andi	t4,t3,0x3
    2374:	564c0009 	bnel	s2,t4,239c <EffectBlure_DrawSmooth+0x28c>
    2378:	02002825 	move	a1,s0
    237c:	02802025 	move	a0,s4
    2380:	02002825 	move	a1,s0
    2384:	02203025 	move	a2,s1
    2388:	0c000000 	jal	0 <EffectBlure_AddVertex>
    238c:	02a03825 	move	a3,s5
    2390:	10000006 	b	23ac <EffectBlure_DrawSmooth+0x29c>
    2394:	926d019e 	lbu	t5,414(s3)
    2398:	02002825 	move	a1,s0
    239c:	02203025 	move	a2,s1
    23a0:	0c000000 	jal	0 <EffectBlure_AddVertex>
    23a4:	02a03825 	move	a3,s5
    23a8:	926d019e 	lbu	t5,414(s3)
    23ac:	000d7080 	sll	t6,t5,0x2
    23b0:	01cd7023 	subu	t6,t6,t5
    23b4:	000e70c0 	sll	t6,t6,0x3
    23b8:	026e1021 	addu	v0,s3,t6
    23bc:	2442ffe8 	addiu	v0,v0,-24
    23c0:	26100018 	addiu	s0,s0,24
    23c4:	0202082b 	sltu	at,s0,v0
    23c8:	1420ffc5 	bnez	at,22e0 <EffectBlure_DrawSmooth+0x1d0>
    23cc:	26310001 	addiu	s1,s1,1
    23d0:	3c060000 	lui	a2,0x0
    23d4:	24c60000 	addiu	a2,a2,0
    23d8:	27a40044 	addiu	a0,sp,68
    23dc:	02a02825 	move	a1,s5
    23e0:	0c000000 	jal	0 <EffectBlure_AddVertex>
    23e4:	240704ef 	li	a3,1263
    23e8:	8fbf002c 	lw	ra,44(sp)
    23ec:	8fb00014 	lw	s0,20(sp)
    23f0:	8fb10018 	lw	s1,24(sp)
    23f4:	8fb2001c 	lw	s2,28(sp)
    23f8:	8fb30020 	lw	s3,32(sp)
    23fc:	8fb40024 	lw	s4,36(sp)
    2400:	8fb50028 	lw	s5,40(sp)
    2404:	03e00008 	jr	ra
    2408:	27bd0128 	addiu	sp,sp,296

0000240c <EffectBlure_SetupSimple>:
    240c:	27bdffd0 	addiu	sp,sp,-48
    2410:	afa60038 	sw	a2,56(sp)
    2414:	afbf0014 	sw	ra,20(sp)
    2418:	afa40030 	sw	a0,48(sp)
    241c:	afa50034 	sw	a1,52(sp)
    2420:	3c060000 	lui	a2,0x0
    2424:	24c601c4 	addiu	a2,a2,452
    2428:	8fa50030 	lw	a1,48(sp)
    242c:	27a4001c 	addiu	a0,sp,28
    2430:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2434:	24070500 	li	a3,1280
    2438:	8fae0030 	lw	t6,48(sp)
    243c:	24050026 	li	a1,38
    2440:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2444:	8dc402d0 	lw	a0,720(t6)
    2448:	8fa50030 	lw	a1,48(sp)
    244c:	3c060000 	lui	a2,0x0
    2450:	24c601d8 	addiu	a2,a2,472
    2454:	27a4001c 	addiu	a0,sp,28
    2458:	24070505 	li	a3,1285
    245c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2460:	aca202d0 	sw	v0,720(a1)
    2464:	8fbf0014 	lw	ra,20(sp)
    2468:	27bd0030 	addiu	sp,sp,48
    246c:	03e00008 	jr	ra
    2470:	00000000 	nop

00002474 <EffectBlure_SetupSimpleAlt>:
    2474:	27bdff80 	addiu	sp,sp,-128
    2478:	afb00018 	sw	s0,24(sp)
    247c:	afa60088 	sw	a2,136(sp)
    2480:	00808025 	move	s0,a0
    2484:	afbf001c 	sw	ra,28(sp)
    2488:	afa50084 	sw	a1,132(sp)
    248c:	3c060000 	lui	a2,0x0
    2490:	24c601ec 	addiu	a2,a2,492
    2494:	02002825 	move	a1,s0
    2498:	27a4006c 	addiu	a0,sp,108
    249c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    24a0:	2407050e 	li	a3,1294
    24a4:	8e0202d0 	lw	v0,720(s0)
    24a8:	3c07e700 	lui	a3,0xe700
    24ac:	24050026 	li	a1,38
    24b0:	244e0008 	addiu	t6,v0,8
    24b4:	ae0e02d0 	sw	t6,720(s0)
    24b8:	ac400004 	sw	zero,4(v0)
    24bc:	ac470000 	sw	a3,0(v0)
    24c0:	0c000000 	jal	0 <EffectBlure_AddVertex>
    24c4:	8e0402d0 	lw	a0,720(s0)
    24c8:	8fa60084 	lw	a2,132(sp)
    24cc:	ae0202d0 	sw	v0,720(s0)
    24d0:	244f0008 	addiu	t7,v0,8
    24d4:	ae0f02d0 	sw	t7,720(s0)
    24d8:	3c18e300 	lui	t8,0xe300
    24dc:	37180a01 	ori	t8,t8,0xa01
    24e0:	3c190010 	lui	t9,0x10
    24e4:	ac590004 	sw	t9,4(v0)
    24e8:	ac580000 	sw	t8,0(v0)
    24ec:	8e0202d0 	lw	v0,720(s0)
    24f0:	3c09e300 	lui	t1,0xe300
    24f4:	35291001 	ori	t1,t1,0x1001
    24f8:	24480008 	addiu	t0,v0,8
    24fc:	ae0802d0 	sw	t0,720(s0)
    2500:	ac400004 	sw	zero,4(v0)
    2504:	ac490000 	sw	t1,0(v0)
    2508:	8e0202d0 	lw	v0,720(s0)
    250c:	3c0bd700 	lui	t3,0xd700
    2510:	356b0002 	ori	t3,t3,0x2
    2514:	244a0008 	addiu	t2,v0,8
    2518:	ae0a02d0 	sw	t2,720(s0)
    251c:	240cffff 	li	t4,-1
    2520:	ac4c0004 	sw	t4,4(v0)
    2524:	ac4b0000 	sw	t3,0(v0)
    2528:	8e0202d0 	lw	v0,720(s0)
    252c:	3c0f0000 	lui	t7,0x0
    2530:	25ef0000 	addiu	t7,t7,0
    2534:	244d0008 	addiu	t5,v0,8
    2538:	ae0d02d0 	sw	t5,720(s0)
    253c:	3c0efd90 	lui	t6,0xfd90
    2540:	ac4e0000 	sw	t6,0(v0)
    2544:	ac4f0004 	sw	t7,4(v0)
    2548:	8e0202d0 	lw	v0,720(s0)
    254c:	3c080701 	lui	t0,0x701
    2550:	35084260 	ori	t0,t0,0x4260
    2554:	24580008 	addiu	t8,v0,8
    2558:	ae1802d0 	sw	t8,720(s0)
    255c:	3c19f590 	lui	t9,0xf590
    2560:	ac590000 	sw	t9,0(v0)
    2564:	ac480004 	sw	t0,4(v0)
    2568:	8e0202d0 	lw	v0,720(s0)
    256c:	3c0ae600 	lui	t2,0xe600
    2570:	3c0d073f 	lui	t5,0x73f
    2574:	24490008 	addiu	t1,v0,8
    2578:	ae0902d0 	sw	t1,720(s0)
    257c:	ac400004 	sw	zero,4(v0)
    2580:	ac4a0000 	sw	t2,0(v0)
    2584:	8e0202d0 	lw	v0,720(s0)
    2588:	35adf100 	ori	t5,t5,0xf100
    258c:	3c0cf300 	lui	t4,0xf300
    2590:	244b0008 	addiu	t3,v0,8
    2594:	ae0b02d0 	sw	t3,720(s0)
    2598:	ac4d0004 	sw	t5,4(v0)
    259c:	ac4c0000 	sw	t4,0(v0)
    25a0:	8e0202d0 	lw	v0,720(s0)
    25a4:	3c07e700 	lui	a3,0xe700
    25a8:	3c190001 	lui	t9,0x1
    25ac:	244e0008 	addiu	t6,v0,8
    25b0:	ae0e02d0 	sw	t6,720(s0)
    25b4:	ac400004 	sw	zero,4(v0)
    25b8:	ac470000 	sw	a3,0(v0)
    25bc:	8e0202d0 	lw	v0,720(s0)
    25c0:	3c18f588 	lui	t8,0xf588
    25c4:	37181000 	ori	t8,t8,0x1000
    25c8:	244f0008 	addiu	t7,v0,8
    25cc:	ae0f02d0 	sw	t7,720(s0)
    25d0:	37394260 	ori	t9,t9,0x4260
    25d4:	ac590004 	sw	t9,4(v0)
    25d8:	ac580000 	sw	t8,0(v0)
    25dc:	8e0202d0 	lw	v0,720(s0)
    25e0:	3c0a000f 	lui	t2,0xf
    25e4:	354ac07c 	ori	t2,t2,0xc07c
    25e8:	24480008 	addiu	t0,v0,8
    25ec:	ae0802d0 	sw	t0,720(s0)
    25f0:	3c09f200 	lui	t1,0xf200
    25f4:	ac490000 	sw	t1,0(v0)
    25f8:	ac4a0004 	sw	t2,4(v0)
    25fc:	8e0202d0 	lw	v0,720(s0)
    2600:	3c0cfc17 	lui	t4,0xfc17
    2604:	3c0d35fc 	lui	t5,0x35fc
    2608:	244b0008 	addiu	t3,v0,8
    260c:	ae0b02d0 	sw	t3,720(s0)
    2610:	35adff78 	ori	t5,t5,0xff78
    2614:	358c1660 	ori	t4,t4,0x1660
    2618:	ac4c0000 	sw	t4,0(v0)
    261c:	ac4d0004 	sw	t5,4(v0)
    2620:	8e0202d0 	lw	v0,720(s0)
    2624:	3c180c18 	lui	t8,0xc18
    2628:	3c0fe200 	lui	t7,0xe200
    262c:	244e0008 	addiu	t6,v0,8
    2630:	ae0e02d0 	sw	t6,720(s0)
    2634:	35ef001c 	ori	t7,t7,0x1c
    2638:	37184b50 	ori	t8,t8,0x4b50
    263c:	ac580004 	sw	t8,4(v0)
    2640:	ac4f0000 	sw	t7,0(v0)
    2644:	8e0202d0 	lw	v0,720(s0)
    2648:	3c08d9f0 	lui	t0,0xd9f0
    264c:	3508ffff 	ori	t0,t0,0xffff
    2650:	24590008 	addiu	t9,v0,8
    2654:	ae1902d0 	sw	t9,720(s0)
    2658:	ac400004 	sw	zero,4(v0)
    265c:	ac480000 	sw	t0,0(v0)
    2660:	8e0202d0 	lw	v0,720(s0)
    2664:	3c0b0020 	lui	t3,0x20
    2668:	3c0ad9ff 	lui	t2,0xd9ff
    266c:	24490008 	addiu	t1,v0,8
    2670:	ae0902d0 	sw	t1,720(s0)
    2674:	354affff 	ori	t2,t2,0xffff
    2678:	356b0005 	ori	t3,t3,0x5
    267c:	ac4b0004 	sw	t3,4(v0)
    2680:	ac4a0000 	sw	t2,0(v0)
    2684:	8e0202d0 	lw	v0,720(s0)
    2688:	3c0efb00 	lui	t6,0xfb00
    268c:	27a4006c 	addiu	a0,sp,108
    2690:	244c0008 	addiu	t4,v0,8
    2694:	ae0c02d0 	sw	t4,720(s0)
    2698:	ac400004 	sw	zero,4(v0)
    269c:	ac470000 	sw	a3,0(v0)
    26a0:	8e0202d0 	lw	v0,720(s0)
    26a4:	24070531 	li	a3,1329
    26a8:	02002825 	move	a1,s0
    26ac:	244d0008 	addiu	t5,v0,8
    26b0:	ae0d02d0 	sw	t5,720(s0)
    26b4:	ac4e0000 	sw	t6,0(v0)
    26b8:	90c901a7 	lbu	t1,423(a2)
    26bc:	90d801a6 	lbu	t8,422(a2)
    26c0:	90cd01a8 	lbu	t5,424(a2)
    26c4:	90c801a9 	lbu	t0,425(a2)
    26c8:	00095400 	sll	t2,t1,0x10
    26cc:	0018ce00 	sll	t9,t8,0x18
    26d0:	032a5825 	or	t3,t9,t2
    26d4:	000d7200 	sll	t6,t5,0x8
    26d8:	016e7825 	or	t7,t3,t6
    26dc:	3c060000 	lui	a2,0x0
    26e0:	01e84825 	or	t1,t7,t0
    26e4:	24c60200 	addiu	a2,a2,512
    26e8:	0c000000 	jal	0 <EffectBlure_AddVertex>
    26ec:	ac490004 	sw	t1,4(v0)
    26f0:	8fbf001c 	lw	ra,28(sp)
    26f4:	8fb00018 	lw	s0,24(sp)
    26f8:	27bd0080 	addiu	sp,sp,128
    26fc:	03e00008 	jr	ra
    2700:	00000000 	nop

00002704 <EffectBlure_DrawSimpleVertices>:
    2704:	27bdfe28 	addiu	sp,sp,-472
    2708:	afb10034 	sw	s1,52(sp)
    270c:	afb00030 	sw	s0,48(sp)
    2710:	afa601e0 	sw	a2,480(sp)
    2714:	00808025 	move	s0,a0
    2718:	00a08825 	move	s1,a1
    271c:	afbf0054 	sw	ra,84(sp)
    2720:	3c060000 	lui	a2,0x0
    2724:	afbe0050 	sw	s8,80(sp)
    2728:	afb7004c 	sw	s7,76(sp)
    272c:	afb60048 	sw	s6,72(sp)
    2730:	afb50044 	sw	s5,68(sp)
    2734:	afb40040 	sw	s4,64(sp)
    2738:	afb3003c 	sw	s3,60(sp)
    273c:	afb20038 	sw	s2,56(sp)
    2740:	f7b60028 	sdc1	$f22,40(sp)
    2744:	f7b40020 	sdc1	$f20,32(sp)
    2748:	24c60214 	addiu	a2,a2,532
    274c:	02002825 	move	a1,s0
    2750:	27a401c0 	addiu	a0,sp,448
    2754:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2758:	2407054c 	li	a3,1356
    275c:	922e01a1 	lbu	t6,417(s1)
    2760:	3c190000 	lui	t9,0x0
    2764:	02002025 	move	a0,s0
    2768:	000e7880 	sll	t7,t6,0x2
    276c:	032fc821 	addu	t9,t9,t7
    2770:	8f390000 	lw	t9,0(t9)
    2774:	02202825 	move	a1,s1
    2778:	8fa601e0 	lw	a2,480(sp)
    277c:	0320f809 	jalr	t9
    2780:	00000000 	nop
    2784:	8e0302d0 	lw	v1,720(s0)
    2788:	3c08e700 	lui	t0,0xe700
    278c:	00009025 	move	s2,zero
    2790:	24780008 	addiu	t8,v1,8
    2794:	ae1802d0 	sw	t8,720(s0)
    2798:	ac600004 	sw	zero,4(v1)
    279c:	ac680000 	sw	t0,0(v1)
    27a0:	9229019e 	lbu	t1,414(s1)
    27a4:	8fb501e0 	lw	s5,480(sp)
    27a8:	3c013f80 	lui	at,0x3f80
    27ac:	252affff 	addiu	t2,t1,-1
    27b0:	19400107 	blez	t2,2bd0 <EffectBlure_DrawSimpleVertices+0x4cc>
    27b4:	3c170600 	lui	s7,0x600
    27b8:	4481b000 	mtc1	at,$f22
    27bc:	3c013f00 	lui	at,0x3f00
    27c0:	3c160100 	lui	s6,0x100
    27c4:	4481a000 	mtc1	at,$f20
    27c8:	36d64008 	ori	s6,s6,0x4008
    27cc:	241e0604 	li	s8,1540
    27d0:	36f70206 	ori	s7,s7,0x206
    27d4:	27b40154 	addiu	s4,sp,340
    27d8:	922b01a1 	lbu	t3,417(s1)
    27dc:	24010001 	li	at,1
    27e0:	00126080 	sll	t4,s2,0x2
    27e4:	15610051 	bne	t3,at,292c <EffectBlure_DrawSimpleVertices+0x228>
    27e8:	01926023 	subu	t4,t4,s2
    27ec:	000c60c0 	sll	t4,t4,0x3
    27f0:	022c6821 	addu	t5,s1,t4
    27f4:	8dae0004 	lw	t6,4(t5)
    27f8:	922f019f 	lbu	t7,415(s1)
    27fc:	3c014f80 	lui	at,0x4f80
    2800:	448e2000 	mtc1	t6,$f4
    2804:	448f4000 	mtc1	t7,$f8
    2808:	468021a0 	cvt.s.w	$f6,$f4
    280c:	05e10004 	bgez	t7,2820 <EffectBlure_DrawSimpleVertices+0x11c>
    2810:	468042a0 	cvt.s.w	$f10,$f8
    2814:	44819000 	mtc1	at,$f18
    2818:	00000000 	nop
    281c:	46125280 	add.s	$f10,$f10,$f18
    2820:	8e0202d0 	lw	v0,720(s0)
    2824:	3c18fa00 	lui	t8,0xfa00
    2828:	37180080 	ori	t8,t8,0x80
    282c:	24590008 	addiu	t9,v0,8
    2830:	ae1902d0 	sw	t9,720(s0)
    2834:	ac580000 	sw	t8,0(v0)
    2838:	922901a2 	lbu	t1,418(s1)
    283c:	922c01a3 	lbu	t4,419(s1)
    2840:	923901a4 	lbu	t9,420(s1)
    2844:	00095600 	sll	t2,t1,0x18
    2848:	922901a5 	lbu	t1,421(s1)
    284c:	000c6c00 	sll	t5,t4,0x10
    2850:	014d7025 	or	t6,t2,t5
    2854:	44892000 	mtc1	t1,$f4
    2858:	0019c200 	sll	t8,t9,0x8
    285c:	460a3003 	div.s	$f0,$f6,$f10
    2860:	01d84025 	or	t0,t6,t8
    2864:	3c014f80 	lui	at,0x4f80
    2868:	05210004 	bgez	t1,287c <EffectBlure_DrawSimpleVertices+0x178>
    286c:	46802220 	cvt.s.w	$f8,$f4
    2870:	44819000 	mtc1	at,$f18
    2874:	00000000 	nop
    2878:	46124200 	add.s	$f8,$f8,$f18
    287c:	4600b181 	sub.s	$f6,$f22,$f0
    2880:	240c0001 	li	t4,1
    2884:	3c014f00 	lui	at,0x4f00
    2888:	46064282 	mul.s	$f10,$f8,$f6
    288c:	444bf800 	cfc1	t3,$31
    2890:	44ccf800 	ctc1	t4,$31
    2894:	00000000 	nop
    2898:	46005124 	cvt.w.s	$f4,$f10
    289c:	444cf800 	cfc1	t4,$31
    28a0:	00000000 	nop
    28a4:	318c0078 	andi	t4,t4,0x78
    28a8:	51800013 	beqzl	t4,28f8 <EffectBlure_DrawSimpleVertices+0x1f4>
    28ac:	440c2000 	mfc1	t4,$f4
    28b0:	44812000 	mtc1	at,$f4
    28b4:	240c0001 	li	t4,1
    28b8:	46045101 	sub.s	$f4,$f10,$f4
    28bc:	44ccf800 	ctc1	t4,$31
    28c0:	00000000 	nop
    28c4:	46002124 	cvt.w.s	$f4,$f4
    28c8:	444cf800 	cfc1	t4,$31
    28cc:	00000000 	nop
    28d0:	318c0078 	andi	t4,t4,0x78
    28d4:	15800005 	bnez	t4,28ec <EffectBlure_DrawSimpleVertices+0x1e8>
    28d8:	00000000 	nop
    28dc:	440c2000 	mfc1	t4,$f4
    28e0:	3c018000 	lui	at,0x8000
    28e4:	10000007 	b	2904 <EffectBlure_DrawSimpleVertices+0x200>
    28e8:	01816025 	or	t4,t4,at
    28ec:	10000005 	b	2904 <EffectBlure_DrawSimpleVertices+0x200>
    28f0:	240cffff 	li	t4,-1
    28f4:	440c2000 	mfc1	t4,$f4
    28f8:	00000000 	nop
    28fc:	0580fffb 	bltz	t4,28ec <EffectBlure_DrawSimpleVertices+0x1e8>
    2900:	00000000 	nop
    2904:	318a00ff 	andi	t2,t4,0xff
    2908:	010a6825 	or	t5,t0,t2
    290c:	ac4d0004 	sw	t5,4(v0)
    2910:	8e0302d0 	lw	v1,720(s0)
    2914:	44cbf800 	ctc1	t3,$31
    2918:	3c19e700 	lui	t9,0xe700
    291c:	246f0008 	addiu	t7,v1,8
    2920:	ae0f02d0 	sw	t7,720(s0)
    2924:	ac600004 	sw	zero,4(v1)
    2928:	ac790000 	sw	t9,0(v1)
    292c:	8e0302d0 	lw	v1,720(s0)
    2930:	00125180 	sll	t2,s2,0x6
    2934:	02a09825 	move	s3,s5
    2938:	246e0008 	addiu	t6,v1,8
    293c:	ae0e02d0 	sw	t6,720(s0)
    2940:	ac750004 	sw	s5,4(v1)
    2944:	ac760000 	sw	s6,0(v1)
    2948:	8e0302d0 	lw	v1,720(s0)
    294c:	24780008 	addiu	t8,v1,8
    2950:	ae1802d0 	sw	t8,720(s0)
    2954:	ac7e0004 	sw	s8,4(v1)
    2958:	ac770000 	sw	s7,0(v1)
    295c:	96290188 	lhu	t1,392(s1)
    2960:	8fac01e0 	lw	t4,480(sp)
    2964:	312b0004 	andi	t3,t1,0x4
    2968:	11600092 	beqz	t3,2bb4 <EffectBlure_DrawSimpleVertices+0x4b0>
    296c:	018a1021 	addu	v0,t4,t2
    2970:	844d0010 	lh	t5,16(v0)
    2974:	844f0000 	lh	t7,0(v0)
    2978:	27a401a4 	addiu	a0,sp,420
    297c:	448d9000 	mtc1	t5,$f18
    2980:	448f3000 	mtc1	t7,$f6
    2984:	27a501b0 	addiu	a1,sp,432
    2988:	46809220 	cvt.s.w	$f8,$f18
    298c:	27a60198 	addiu	a2,sp,408
    2990:	468032a0 	cvt.s.w	$f10,$f6
    2994:	460a4100 	add.s	$f4,$f8,$f10
    2998:	46142482 	mul.s	$f18,$f4,$f20
    299c:	e7b201b0 	swc1	$f18,432(sp)
    29a0:	844e0002 	lh	t6,2(v0)
    29a4:	84590012 	lh	t9,18(v0)
    29a8:	448e5000 	mtc1	t6,$f10
    29ac:	44993000 	mtc1	t9,$f6
    29b0:	46805120 	cvt.s.w	$f4,$f10
    29b4:	46803220 	cvt.s.w	$f8,$f6
    29b8:	46044480 	add.s	$f18,$f8,$f4
    29bc:	46149182 	mul.s	$f6,$f18,$f20
    29c0:	e7a601b4 	swc1	$f6,436(sp)
    29c4:	84490004 	lh	t1,4(v0)
    29c8:	84580014 	lh	t8,20(v0)
    29cc:	44892000 	mtc1	t1,$f4
    29d0:	44985000 	mtc1	t8,$f10
    29d4:	468024a0 	cvt.s.w	$f18,$f4
    29d8:	46805220 	cvt.s.w	$f8,$f10
    29dc:	46124180 	add.s	$f6,$f8,$f18
    29e0:	46143282 	mul.s	$f10,$f6,$f20
    29e4:	e7aa01b8 	swc1	$f10,440(sp)
    29e8:	84480020 	lh	t0,32(v0)
    29ec:	844b0030 	lh	t3,48(v0)
    29f0:	44889000 	mtc1	t0,$f18
    29f4:	448b2000 	mtc1	t3,$f4
    29f8:	468091a0 	cvt.s.w	$f6,$f18
    29fc:	46802220 	cvt.s.w	$f8,$f4
    2a00:	46064280 	add.s	$f10,$f8,$f6
    2a04:	46145102 	mul.s	$f4,$f10,$f20
    2a08:	e7a401a4 	swc1	$f4,420(sp)
    2a0c:	844a0022 	lh	t2,34(v0)
    2a10:	844c0032 	lh	t4,50(v0)
    2a14:	448a3000 	mtc1	t2,$f6
    2a18:	448c9000 	mtc1	t4,$f18
    2a1c:	468032a0 	cvt.s.w	$f10,$f6
    2a20:	46809220 	cvt.s.w	$f8,$f18
    2a24:	460a4100 	add.s	$f4,$f8,$f10
    2a28:	46142482 	mul.s	$f18,$f4,$f20
    2a2c:	e7b201a8 	swc1	$f18,424(sp)
    2a30:	844f0024 	lh	t7,36(v0)
    2a34:	844d0034 	lh	t5,52(v0)
    2a38:	448f5000 	mtc1	t7,$f10
    2a3c:	448d3000 	mtc1	t5,$f6
    2a40:	46805120 	cvt.s.w	$f4,$f10
    2a44:	46803220 	cvt.s.w	$f8,$f6
    2a48:	46044480 	add.s	$f18,$f8,$f4
    2a4c:	46149182 	mul.s	$f6,$f18,$f20
    2a50:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2a54:	e7a601ac 	swc1	$f6,428(sp)
    2a58:	c7ac0198 	lwc1	$f12,408(sp)
    2a5c:	c7ae019c 	lwc1	$f14,412(sp)
    2a60:	c7b001a0 	lwc1	$f16,416(sp)
    2a64:	460c6282 	mul.s	$f10,$f12,$f12
    2a68:	3c010000 	lui	at,0x0
    2a6c:	c426031c 	lwc1	$f6,796(at)
    2a70:	460e7202 	mul.s	$f8,$f14,$f14
    2a74:	27a40198 	addiu	a0,sp,408
    2a78:	46108482 	mul.s	$f18,$f16,$f16
    2a7c:	46085100 	add.s	$f4,$f10,$f8
    2a80:	46122000 	add.s	$f0,$f4,$f18
    2a84:	46000084 	sqrt.s	$f2,$f0
    2a88:	46001005 	abs.s	$f0,$f2
    2a8c:	4600303c 	c.lt.s	$f6,$f0
    2a90:	00000000 	nop
    2a94:	45020048 	bc1fl	2bb8 <EffectBlure_DrawSimpleVertices+0x4b4>
    2a98:	922c019e 	lbu	t4,414(s1)
    2a9c:	4602b083 	div.s	$f2,$f22,$f2
    2aa0:	44051000 	mfc1	a1,$f2
    2aa4:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2aa8:	00000000 	nop
    2aac:	02802025 	move	a0,s4
    2ab0:	8fa501b0 	lw	a1,432(sp)
    2ab4:	8fa601b4 	lw	a2,436(sp)
    2ab8:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2abc:	8fa701b8 	lw	a3,440(sp)
    2ac0:	c7ac0198 	lwc1	$f12,408(sp)
    2ac4:	c7ae019c 	lwc1	$f14,412(sp)
    2ac8:	c7b001a0 	lwc1	$f16,416(sp)
    2acc:	44066000 	mfc1	a2,$f12
    2ad0:	44077000 	mfc1	a3,$f14
    2ad4:	27a40114 	addiu	a0,sp,276
    2ad8:	24053fff 	li	a1,16383
    2adc:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2ae0:	e7b00010 	swc1	$f16,16(sp)
    2ae4:	02802025 	move	a0,s4
    2ae8:	27a50114 	addiu	a1,sp,276
    2aec:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2af0:	27a600d4 	addiu	a2,sp,212
    2af4:	c7aa01b0 	lwc1	$f10,432(sp)
    2af8:	c7a401b4 	lwc1	$f4,436(sp)
    2afc:	c7a601b8 	lwc1	$f6,440(sp)
    2b00:	46005207 	neg.s	$f8,$f10
    2b04:	46002487 	neg.s	$f18,$f4
    2b08:	46003287 	neg.s	$f10,$f6
    2b0c:	44069000 	mfc1	a2,$f18
    2b10:	44075000 	mfc1	a3,$f10
    2b14:	44054000 	mfc1	a1,$f8
    2b18:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2b1c:	02802025 	move	a0,s4
    2b20:	27a400d4 	addiu	a0,sp,212
    2b24:	02802825 	move	a1,s4
    2b28:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2b2c:	27a60094 	addiu	a2,sp,148
    2b30:	02002025 	move	a0,s0
    2b34:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2b38:	27a50094 	addiu	a1,sp,148
    2b3c:	14400005 	bnez	v0,2b54 <EffectBlure_DrawSimpleVertices+0x450>
    2b40:	3c040000 	lui	a0,0x0
    2b44:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2b48:	24840228 	addiu	a0,a0,552
    2b4c:	10000020 	b	2bd0 <EffectBlure_DrawSimpleVertices+0x4cc>
    2b50:	00000000 	nop
    2b54:	8e0302d0 	lw	v1,720(s0)
    2b58:	3c0eda38 	lui	t6,0xda38
    2b5c:	35ce0003 	ori	t6,t6,0x3
    2b60:	24790008 	addiu	t9,v1,8
    2b64:	ae1902d0 	sw	t9,720(s0)
    2b68:	ac620004 	sw	v0,4(v1)
    2b6c:	ac6e0000 	sw	t6,0(v1)
    2b70:	8e0302d0 	lw	v1,720(s0)
    2b74:	3c050000 	lui	a1,0x0
    2b78:	24a50000 	addiu	a1,a1,0
    2b7c:	24780008 	addiu	t8,v1,8
    2b80:	ae1802d0 	sw	t8,720(s0)
    2b84:	ac730004 	sw	s3,4(v1)
    2b88:	ac760000 	sw	s6,0(v1)
    2b8c:	8e0302d0 	lw	v1,720(s0)
    2b90:	24690008 	addiu	t1,v1,8
    2b94:	ae0902d0 	sw	t1,720(s0)
    2b98:	ac7e0004 	sw	s8,4(v1)
    2b9c:	ac770000 	sw	s7,0(v1)
    2ba0:	8e0302d0 	lw	v1,720(s0)
    2ba4:	246b0008 	addiu	t3,v1,8
    2ba8:	ae0b02d0 	sw	t3,720(s0)
    2bac:	ac650004 	sw	a1,4(v1)
    2bb0:	ac6e0000 	sw	t6,0(v1)
    2bb4:	922c019e 	lbu	t4,414(s1)
    2bb8:	26520001 	addiu	s2,s2,1
    2bbc:	26b50040 	addiu	s5,s5,64
    2bc0:	258affff 	addiu	t2,t4,-1
    2bc4:	024a082a 	slt	at,s2,t2
    2bc8:	5420ff04 	bnezl	at,27dc <EffectBlure_DrawSimpleVertices+0xd8>
    2bcc:	922b01a1 	lbu	t3,417(s1)
    2bd0:	3c060000 	lui	a2,0x0
    2bd4:	24c60274 	addiu	a2,a2,628
    2bd8:	27a401c0 	addiu	a0,sp,448
    2bdc:	02002825 	move	a1,s0
    2be0:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2be4:	240705ac 	li	a3,1452
    2be8:	8fbf0054 	lw	ra,84(sp)
    2bec:	d7b40020 	ldc1	$f20,32(sp)
    2bf0:	d7b60028 	ldc1	$f22,40(sp)
    2bf4:	8fb00030 	lw	s0,48(sp)
    2bf8:	8fb10034 	lw	s1,52(sp)
    2bfc:	8fb20038 	lw	s2,56(sp)
    2c00:	8fb3003c 	lw	s3,60(sp)
    2c04:	8fb40040 	lw	s4,64(sp)
    2c08:	8fb50044 	lw	s5,68(sp)
    2c0c:	8fb60048 	lw	s6,72(sp)
    2c10:	8fb7004c 	lw	s7,76(sp)
    2c14:	8fbe0050 	lw	s8,80(sp)
    2c18:	03e00008 	jr	ra
    2c1c:	27bd01d8 	addiu	sp,sp,472

00002c20 <EffectBlure_DrawSimple>:
    2c20:	27bdff68 	addiu	sp,sp,-152
    2c24:	afbf004c 	sw	ra,76(sp)
    2c28:	afbe0048 	sw	s8,72(sp)
    2c2c:	afb70044 	sw	s7,68(sp)
    2c30:	afb60040 	sw	s6,64(sp)
    2c34:	afb5003c 	sw	s5,60(sp)
    2c38:	afb40038 	sw	s4,56(sp)
    2c3c:	afb30034 	sw	s3,52(sp)
    2c40:	afb20030 	sw	s2,48(sp)
    2c44:	afb1002c 	sw	s1,44(sp)
    2c48:	afb00028 	sw	s0,40(sp)
    2c4c:	afa5009c 	sw	a1,156(sp)
    2c50:	9082019e 	lbu	v0,414(a0)
    2c54:	0080a025 	move	s4,a0
    2c58:	0080b025 	move	s6,a0
    2c5c:	28410002 	slti	at,v0,2
    2c60:	14200127 	bnez	at,3100 <EffectBlure_DrawSimple+0x4e0>
    2c64:	0002b880 	sll	s7,v0,0x2
    2c68:	00a02025 	move	a0,a1
    2c6c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2c70:	00172900 	sll	a1,s7,0x4
    2c74:	14400006 	bnez	v0,2c90 <EffectBlure_DrawSimple+0x70>
    2c78:	0040a825 	move	s5,v0
    2c7c:	3c040000 	lui	a0,0x0
    2c80:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2c84:	24840000 	addiu	a0,a0,0
    2c88:	1000011e 	b	3104 <EffectBlure_DrawSimple+0x4e4>
    2c8c:	8fbf004c 	lw	ra,76(sp)
    2c90:	3c0e0000 	lui	t6,0x0
    2c94:	25ce0000 	addiu	t6,t6,0
    2c98:	89d80000 	lwl	t8,0(t6)
    2c9c:	99d80003 	lwr	t8,3(t6)
    2ca0:	3c190000 	lui	t9,0x0
    2ca4:	27390010 	addiu	t9,t9,16
    2ca8:	a8580000 	swl	t8,0(v0)
    2cac:	b8580003 	swr	t8,3(v0)
    2cb0:	89cf0004 	lwl	t7,4(t6)
    2cb4:	99cf0007 	lwr	t7,7(t6)
    2cb8:	00401825 	move	v1,v0
    2cbc:	3c0b0000 	lui	t3,0x0
    2cc0:	a84f0004 	swl	t7,4(v0)
    2cc4:	b84f0007 	swr	t7,7(v0)
    2cc8:	89d80008 	lwl	t8,8(t6)
    2ccc:	99d8000b 	lwr	t8,11(t6)
    2cd0:	256b0020 	addiu	t3,t3,32
    2cd4:	24630040 	addiu	v1,v1,64
    2cd8:	a8580008 	swl	t8,8(v0)
    2cdc:	b858000b 	swr	t8,11(v0)
    2ce0:	89cf000c 	lwl	t7,12(t6)
    2ce4:	99cf000f 	lwr	t7,15(t6)
    2ce8:	3c0e0000 	lui	t6,0x0
    2cec:	25ce0030 	addiu	t6,t6,48
    2cf0:	a84f000c 	swl	t7,12(v0)
    2cf4:	b84f000f 	swr	t7,15(v0)
    2cf8:	8b2a0000 	lwl	t2,0(t9)
    2cfc:	9b2a0003 	lwr	t2,3(t9)
    2d00:	24080018 	li	t0,24
    2d04:	2410fffe 	li	s0,-2
    2d08:	a86affd0 	swl	t2,-48(v1)
    2d0c:	b86affd3 	swr	t2,-45(v1)
    2d10:	8b290004 	lwl	t1,4(t9)
    2d14:	9b290007 	lwr	t1,7(t9)
    2d18:	2412ffff 	li	s2,-1
    2d1c:	02809825 	move	s3,s4
    2d20:	a869ffd4 	swl	t1,-44(v1)
    2d24:	b869ffd7 	swr	t1,-41(v1)
    2d28:	8b2a0008 	lwl	t2,8(t9)
    2d2c:	9b2a000b 	lwr	t2,11(t9)
    2d30:	a86affd8 	swl	t2,-40(v1)
    2d34:	b86affdb 	swr	t2,-37(v1)
    2d38:	8b29000c 	lwl	t1,12(t9)
    2d3c:	9b29000f 	lwr	t1,15(t9)
    2d40:	a869ffdc 	swl	t1,-36(v1)
    2d44:	b869ffdf 	swr	t1,-33(v1)
    2d48:	896d0000 	lwl	t5,0(t3)
    2d4c:	996d0003 	lwr	t5,3(t3)
    2d50:	a86dffe0 	swl	t5,-32(v1)
    2d54:	b86dffe3 	swr	t5,-29(v1)
    2d58:	896c0004 	lwl	t4,4(t3)
    2d5c:	996c0007 	lwr	t4,7(t3)
    2d60:	a86cffe4 	swl	t4,-28(v1)
    2d64:	b86cffe7 	swr	t4,-25(v1)
    2d68:	896d0008 	lwl	t5,8(t3)
    2d6c:	996d000b 	lwr	t5,11(t3)
    2d70:	a86dffe8 	swl	t5,-24(v1)
    2d74:	b86dffeb 	swr	t5,-21(v1)
    2d78:	896c000c 	lwl	t4,12(t3)
    2d7c:	996c000f 	lwr	t4,15(t3)
    2d80:	a86cffec 	swl	t4,-20(v1)
    2d84:	b86cffef 	swr	t4,-17(v1)
    2d88:	89d80000 	lwl	t8,0(t6)
    2d8c:	99d80003 	lwr	t8,3(t6)
    2d90:	a878fff0 	swl	t8,-16(v1)
    2d94:	b878fff3 	swr	t8,-13(v1)
    2d98:	89cf0004 	lwl	t7,4(t6)
    2d9c:	99cf0007 	lwr	t7,7(t6)
    2da0:	a86ffff4 	swl	t7,-12(v1)
    2da4:	b86ffff7 	swr	t7,-9(v1)
    2da8:	89d80008 	lwl	t8,8(t6)
    2dac:	99d8000b 	lwr	t8,11(t6)
    2db0:	a878fff8 	swl	t8,-8(v1)
    2db4:	b878fffb 	swr	t8,-5(v1)
    2db8:	89cf000c 	lwl	t7,12(t6)
    2dbc:	99cf000f 	lwr	t7,15(t6)
    2dc0:	a86ffffc 	swl	t7,-4(v1)
    2dc4:	b86fffff 	swr	t7,-1(v1)
    2dc8:	9284019e 	lbu	a0,414(s4)
    2dcc:	28810002 	slti	at,a0,2
    2dd0:	1420005c 	bnez	at,2f44 <EffectBlure_DrawSimple+0x324>
    2dd4:	00801025 	move	v0,a0
    2dd8:	00880019 	multu	a0,t0
    2ddc:	3c040000 	lui	a0,0x0
    2de0:	3c060000 	lui	a2,0x0
    2de4:	3c050000 	lui	a1,0x0
    2de8:	24a50020 	addiu	a1,a1,32
    2dec:	24c60030 	addiu	a2,a2,48
    2df0:	24840010 	addiu	a0,a0,16
    2df4:	02803825 	move	a3,s4
    2df8:	0000c812 	mflo	t9
    2dfc:	02994821 	addu	t1,s4,t9
    2e00:	252affd0 	addiu	t2,t1,-48
    2e04:	028a082b 	sltu	at,s4,t2
    2e08:	1020004e 	beqz	at,2f44 <EffectBlure_DrawSimple+0x324>
    2e0c:	00000000 	nop
    2e10:	3c020000 	lui	v0,0x0
    2e14:	24420000 	addiu	v0,v0,0
    2e18:	884c0000 	lwl	t4,0(v0)
    2e1c:	984c0003 	lwr	t4,3(v0)
    2e20:	24e70018 	addiu	a3,a3,24
    2e24:	24630040 	addiu	v1,v1,64
    2e28:	a86cffc0 	swl	t4,-64(v1)
    2e2c:	b86cffc3 	swr	t4,-61(v1)
    2e30:	884b0004 	lwl	t3,4(v0)
    2e34:	984b0007 	lwr	t3,7(v0)
    2e38:	a86bffc4 	swl	t3,-60(v1)
    2e3c:	b86bffc7 	swr	t3,-57(v1)
    2e40:	884c0008 	lwl	t4,8(v0)
    2e44:	984c000b 	lwr	t4,11(v0)
    2e48:	a86cffc8 	swl	t4,-56(v1)
    2e4c:	b86cffcb 	swr	t4,-53(v1)
    2e50:	884b000c 	lwl	t3,12(v0)
    2e54:	984b000f 	lwr	t3,15(v0)
    2e58:	a86bffcc 	swl	t3,-52(v1)
    2e5c:	b86bffcf 	swr	t3,-49(v1)
    2e60:	888e0000 	lwl	t6,0(a0)
    2e64:	988e0003 	lwr	t6,3(a0)
    2e68:	a86effd0 	swl	t6,-48(v1)
    2e6c:	b86effd3 	swr	t6,-45(v1)
    2e70:	888d0004 	lwl	t5,4(a0)
    2e74:	988d0007 	lwr	t5,7(a0)
    2e78:	a86dffd4 	swl	t5,-44(v1)
    2e7c:	b86dffd7 	swr	t5,-41(v1)
    2e80:	888e0008 	lwl	t6,8(a0)
    2e84:	988e000b 	lwr	t6,11(a0)
    2e88:	a86effd8 	swl	t6,-40(v1)
    2e8c:	b86effdb 	swr	t6,-37(v1)
    2e90:	888d000c 	lwl	t5,12(a0)
    2e94:	988d000f 	lwr	t5,15(a0)
    2e98:	a86dffdc 	swl	t5,-36(v1)
    2e9c:	b86dffdf 	swr	t5,-33(v1)
    2ea0:	88b80000 	lwl	t8,0(a1)
    2ea4:	98b80003 	lwr	t8,3(a1)
    2ea8:	a878ffe0 	swl	t8,-32(v1)
    2eac:	b878ffe3 	swr	t8,-29(v1)
    2eb0:	88af0004 	lwl	t7,4(a1)
    2eb4:	98af0007 	lwr	t7,7(a1)
    2eb8:	a86fffe4 	swl	t7,-28(v1)
    2ebc:	b86fffe7 	swr	t7,-25(v1)
    2ec0:	88b80008 	lwl	t8,8(a1)
    2ec4:	98b8000b 	lwr	t8,11(a1)
    2ec8:	a878ffe8 	swl	t8,-24(v1)
    2ecc:	b878ffeb 	swr	t8,-21(v1)
    2ed0:	88af000c 	lwl	t7,12(a1)
    2ed4:	98af000f 	lwr	t7,15(a1)
    2ed8:	a86fffec 	swl	t7,-20(v1)
    2edc:	b86fffef 	swr	t7,-17(v1)
    2ee0:	88c90000 	lwl	t1,0(a2)
    2ee4:	98c90003 	lwr	t1,3(a2)
    2ee8:	a869fff0 	swl	t1,-16(v1)
    2eec:	b869fff3 	swr	t1,-13(v1)
    2ef0:	88d90004 	lwl	t9,4(a2)
    2ef4:	98d90007 	lwr	t9,7(a2)
    2ef8:	a879fff4 	swl	t9,-12(v1)
    2efc:	b879fff7 	swr	t9,-9(v1)
    2f00:	88c90008 	lwl	t1,8(a2)
    2f04:	98c9000b 	lwr	t1,11(a2)
    2f08:	a869fff8 	swl	t1,-8(v1)
    2f0c:	b869fffb 	swr	t1,-5(v1)
    2f10:	88d9000c 	lwl	t9,12(a2)
    2f14:	98d9000f 	lwr	t9,15(a2)
    2f18:	a879fffc 	swl	t9,-4(v1)
    2f1c:	b879ffff 	swr	t9,-1(v1)
    2f20:	92ca019e 	lbu	t2,414(s6)
    2f24:	01480019 	multu	t2,t0
    2f28:	00005812 	mflo	t3
    2f2c:	02cb6021 	addu	t4,s6,t3
    2f30:	258dffd0 	addiu	t5,t4,-48
    2f34:	00ed082b 	sltu	at,a3,t5
    2f38:	5420ffb8 	bnezl	at,2e1c <EffectBlure_DrawSimple+0x1fc>
    2f3c:	884c0000 	lwl	t4,0(v0)
    2f40:	9282019e 	lbu	v0,414(s4)
    2f44:	1840006a 	blez	v0,30f0 <EffectBlure_DrawSimple+0x4d0>
    2f48:	00008825 	move	s1,zero
    2f4c:	27be0074 	addiu	s8,sp,116
    2f50:	8e6e0004 	lw	t6,4(s3)
    2f54:	928f019f 	lbu	t7,415(s4)
    2f58:	3c014f80 	lui	at,0x4f80
    2f5c:	448e2000 	mtc1	t6,$f4
    2f60:	448f4000 	mtc1	t7,$f8
    2f64:	468021a0 	cvt.s.w	$f6,$f4
    2f68:	05e10004 	bgez	t7,2f7c <EffectBlure_DrawSimple+0x35c>
    2f6c:	468042a0 	cvt.s.w	$f10,$f8
    2f70:	44818000 	mtc1	at,$f16
    2f74:	00000000 	nop
    2f78:	46105280 	add.s	$f10,$f10,$f16
    2f7c:	460a3003 	div.s	$f0,$f6,$f10
    2f80:	27b8006c 	addiu	t8,sp,108
    2f84:	27b90064 	addiu	t9,sp,100
    2f88:	27a90060 	addiu	t1,sp,96
    2f8c:	afa90018 	sw	t1,24(sp)
    2f90:	afb90014 	sw	t9,20(sp)
    2f94:	afb80010 	sw	t8,16(sp)
    2f98:	02802025 	move	a0,s4
    2f9c:	02202825 	move	a1,s1
    2fa0:	03c03825 	move	a3,s8
    2fa4:	44060000 	mfc1	a2,$f0
    2fa8:	0c000000 	jal	0 <EffectBlure_AddVertex>
    2fac:	00000000 	nop
    2fb0:	06000011 	bltz	s0,2ff8 <EffectBlure_DrawSimple+0x3d8>
    2fb4:	26310001 	addiu	s1,s1,1
    2fb8:	87ab0074 	lh	t3,116(sp)
    2fbc:	00105100 	sll	t2,s0,0x4
    2fc0:	02aa1021 	addu	v0,s5,t2
    2fc4:	a44b0000 	sh	t3,0(v0)
    2fc8:	87ac0076 	lh	t4,118(sp)
    2fcc:	a44c0002 	sh	t4,2(v0)
    2fd0:	87ad0078 	lh	t5,120(sp)
    2fd4:	a44d0004 	sh	t5,4(v0)
    2fd8:	93ae0064 	lbu	t6,100(sp)
    2fdc:	a04e000c 	sb	t6,12(v0)
    2fe0:	93af0065 	lbu	t7,101(sp)
    2fe4:	a04f000d 	sb	t7,13(v0)
    2fe8:	93b80066 	lbu	t8,102(sp)
    2fec:	a058000e 	sb	t8,14(v0)
    2ff0:	93b90067 	lbu	t9,103(sp)
    2ff4:	a059000f 	sb	t9,15(v0)
    2ff8:	06400011 	bltz	s2,3040 <EffectBlure_DrawSimple+0x420>
    2ffc:	02401825 	move	v1,s2
    3000:	87aa006c 	lh	t2,108(sp)
    3004:	00034900 	sll	t1,v1,0x4
    3008:	02a91021 	addu	v0,s5,t1
    300c:	a44a0000 	sh	t2,0(v0)
    3010:	87ab006e 	lh	t3,110(sp)
    3014:	a44b0002 	sh	t3,2(v0)
    3018:	87ac0070 	lh	t4,112(sp)
    301c:	a44c0004 	sh	t4,4(v0)
    3020:	93ad0060 	lbu	t5,96(sp)
    3024:	a04d000c 	sb	t5,12(v0)
    3028:	93ae0061 	lbu	t6,97(sp)
    302c:	a04e000d 	sb	t6,13(v0)
    3030:	93af0062 	lbu	t7,98(sp)
    3034:	a04f000e 	sb	t7,14(v0)
    3038:	93b80063 	lbu	t8,99(sp)
    303c:	a058000f 	sb	t8,15(v0)
    3040:	24630001 	addiu	v1,v1,1
    3044:	02e3082a 	slt	at,s7,v1
    3048:	14200010 	bnez	at,308c <EffectBlure_DrawSimple+0x46c>
    304c:	87a90074 	lh	t1,116(sp)
    3050:	0003c900 	sll	t9,v1,0x4
    3054:	02b91021 	addu	v0,s5,t9
    3058:	a4490000 	sh	t1,0(v0)
    305c:	87aa0076 	lh	t2,118(sp)
    3060:	a44a0002 	sh	t2,2(v0)
    3064:	87ab0078 	lh	t3,120(sp)
    3068:	a44b0004 	sh	t3,4(v0)
    306c:	93ac0064 	lbu	t4,100(sp)
    3070:	a04c000c 	sb	t4,12(v0)
    3074:	93ad0065 	lbu	t5,101(sp)
    3078:	a04d000d 	sb	t5,13(v0)
    307c:	93ae0066 	lbu	t6,102(sp)
    3080:	a04e000e 	sb	t6,14(v0)
    3084:	93af0067 	lbu	t7,103(sp)
    3088:	a04f000f 	sb	t7,15(v0)
    308c:	24630001 	addiu	v1,v1,1
    3090:	02e3082a 	slt	at,s7,v1
    3094:	14200010 	bnez	at,30d8 <EffectBlure_DrawSimple+0x4b8>
    3098:	87b9006c 	lh	t9,108(sp)
    309c:	0003c100 	sll	t8,v1,0x4
    30a0:	02b81021 	addu	v0,s5,t8
    30a4:	a4590000 	sh	t9,0(v0)
    30a8:	87a9006e 	lh	t1,110(sp)
    30ac:	a4490002 	sh	t1,2(v0)
    30b0:	87aa0070 	lh	t2,112(sp)
    30b4:	a44a0004 	sh	t2,4(v0)
    30b8:	93ab0060 	lbu	t3,96(sp)
    30bc:	a04b000c 	sb	t3,12(v0)
    30c0:	93ac0061 	lbu	t4,97(sp)
    30c4:	a04c000d 	sb	t4,13(v0)
    30c8:	93ad0062 	lbu	t5,98(sp)
    30cc:	a04d000e 	sb	t5,14(v0)
    30d0:	93ae0063 	lbu	t6,99(sp)
    30d4:	a04e000f 	sb	t6,15(v0)
    30d8:	92cf019e 	lbu	t7,414(s6)
    30dc:	26100004 	addiu	s0,s0,4
    30e0:	26520004 	addiu	s2,s2,4
    30e4:	022f082a 	slt	at,s1,t7
    30e8:	1420ff99 	bnez	at,2f50 <EffectBlure_DrawSimple+0x330>
    30ec:	26730018 	addiu	s3,s3,24
    30f0:	8fa4009c 	lw	a0,156(sp)
    30f4:	02802825 	move	a1,s4
    30f8:	0c000000 	jal	0 <EffectBlure_AddVertex>
    30fc:	02a03025 	move	a2,s5
    3100:	8fbf004c 	lw	ra,76(sp)
    3104:	8fb00028 	lw	s0,40(sp)
    3108:	8fb1002c 	lw	s1,44(sp)
    310c:	8fb20030 	lw	s2,48(sp)
    3110:	8fb30034 	lw	s3,52(sp)
    3114:	8fb40038 	lw	s4,56(sp)
    3118:	8fb5003c 	lw	s5,60(sp)
    311c:	8fb60040 	lw	s6,64(sp)
    3120:	8fb70044 	lw	s7,68(sp)
    3124:	8fbe0048 	lw	s8,72(sp)
    3128:	03e00008 	jr	ra
    312c:	27bd0098 	addiu	sp,sp,152

00003130 <EffectBlure_Draw>:
    3130:	27bdff60 	addiu	sp,sp,-160
    3134:	afb60034 	sw	s6,52(sp)
    3138:	afb20024 	sw	s2,36(sp)
    313c:	00809025 	move	s2,a0
    3140:	afbf003c 	sw	ra,60(sp)
    3144:	afb70038 	sw	s7,56(sp)
    3148:	0080b025 	move	s6,a0
    314c:	3c060000 	lui	a2,0x0
    3150:	00a0b825 	move	s7,a1
    3154:	afb50030 	sw	s5,48(sp)
    3158:	afb4002c 	sw	s4,44(sp)
    315c:	afb30028 	sw	s3,40(sp)
    3160:	afb10020 	sw	s1,32(sp)
    3164:	afb0001c 	sw	s0,28(sp)
    3168:	f7b40010 	sdc1	$f20,16(sp)
    316c:	24c602b0 	addiu	a2,a2,688
    3170:	27a40074 	addiu	a0,sp,116
    3174:	0c000000 	jal	0 <EffectBlure_AddVertex>
    3178:	2407063c 	li	a3,1596
    317c:	8ee602d0 	lw	a2,720(s7)
    3180:	3c0fda38 	lui	t7,0xda38
    3184:	3c180000 	lui	t8,0x0
    3188:	24ce0008 	addiu	t6,a2,8
    318c:	aeee02d0 	sw	t6,720(s7)
    3190:	27180000 	addiu	t8,t8,0
    3194:	35ef0003 	ori	t7,t7,0x3
    3198:	accf0000 	sw	t7,0(a2)
    319c:	acd80004 	sw	t8,4(a2)
    31a0:	9259019e 	lbu	t9,414(s2)
    31a4:	13200119 	beqz	t9,360c <EffectBlure_Draw+0x4dc>
    31a8:	00000000 	nop
    31ac:	964c0188 	lhu	t4,392(s2)
    31b0:	5580010b 	bnezl	t4,35e0 <EffectBlure_Draw+0x4b0>
    31b4:	925801a1 	lbu	t8,417(s2)
    31b8:	0c000000 	jal	0 <EffectBlure_AddVertex>
    31bc:	02e02025 	move	a0,s7
    31c0:	8ee602d0 	lw	a2,720(s7)
    31c4:	3c0ee700 	lui	t6,0xe700
    31c8:	02e02025 	move	a0,s7
    31cc:	24cd0008 	addiu	t5,a2,8
    31d0:	aeed02d0 	sw	t5,720(s7)
    31d4:	24050200 	li	a1,512
    31d8:	acc00004 	sw	zero,4(a2)
    31dc:	0c000000 	jal	0 <EffectBlure_AddVertex>
    31e0:	acce0000 	sw	t6,0(a2)
    31e4:	14400006 	bnez	v0,3200 <EffectBlure_Draw+0xd0>
    31e8:	afa20098 	sw	v0,152(sp)
    31ec:	3c040000 	lui	a0,0x0
    31f0:	0c000000 	jal	0 <EffectBlure_AddVertex>
    31f4:	248402c4 	addiu	a0,a0,708
    31f8:	10000104 	b	360c <EffectBlure_Draw+0x4dc>
    31fc:	00000000 	nop
    3200:	924f019e 	lbu	t7,414(s2)
    3204:	00009825 	move	s3,zero
    3208:	0000a025 	move	s4,zero
    320c:	19e000b2 	blez	t7,34d8 <EffectBlure_Draw+0x3a8>
    3210:	02408825 	move	s1,s2
    3214:	24150001 	li	s5,1
    3218:	8e380000 	lw	t8,0(s1)
    321c:	8fad0098 	lw	t5,152(sp)
    3220:	56b800a7 	bnel	s5,t8,34c0 <EffectBlure_Draw+0x390>
    3224:	92cf019e 	lbu	t7,414(s6)
    3228:	8e390004 	lw	t9,4(s1)
    322c:	924c019f 	lbu	t4,415(s2)
    3230:	3c014f80 	lui	at,0x4f80
    3234:	44992000 	mtc1	t9,$f4
    3238:	448c4000 	mtc1	t4,$f8
    323c:	468021a0 	cvt.s.w	$f6,$f4
    3240:	05810004 	bgez	t4,3254 <EffectBlure_Draw+0x124>
    3244:	468042a0 	cvt.s.w	$f10,$f8
    3248:	44818000 	mtc1	at,$f16
    324c:	00000000 	nop
    3250:	46105280 	add.s	$f10,$f10,$f16
    3254:	8e420180 	lw	v0,384(s2)
    3258:	00137100 	sll	t6,s3,0x4
    325c:	460a3503 	div.s	$f20,$f6,$f10
    3260:	10400059 	beqz	v0,33c8 <EffectBlure_Draw+0x298>
    3264:	01ae8021 	addu	s0,t5,t6
    3268:	10550007 	beq	v0,s5,3288 <EffectBlure_Draw+0x158>
    326c:	24010002 	li	at,2
    3270:	1041001b 	beq	v0,at,32e0 <EffectBlure_Draw+0x1b0>
    3274:	24010003 	li	at,3
    3278:	50410030 	beql	v0,at,333c <EffectBlure_Draw+0x20c>
    327c:	3c013f00 	lui	at,0x3f00
    3280:	10000052 	b	33cc <EffectBlure_Draw+0x29c>
    3284:	862f0008 	lh	t7,8(s1)
    3288:	4406a000 	mfc1	a2,$f20
    328c:	86240008 	lh	a0,8(s1)
    3290:	0c000000 	jal	0 <EffectBlure_AddVertex>
    3294:	8625000e 	lh	a1,14(s1)
    3298:	a6020000 	sh	v0,0(s0)
    329c:	4406a000 	mfc1	a2,$f20
    32a0:	86250010 	lh	a1,16(s1)
    32a4:	0c000000 	jal	0 <EffectBlure_AddVertex>
    32a8:	8624000a 	lh	a0,10(s1)
    32ac:	a6020002 	sh	v0,2(s0)
    32b0:	4406a000 	mfc1	a2,$f20
    32b4:	86250012 	lh	a1,18(s1)
    32b8:	0c000000 	jal	0 <EffectBlure_AddVertex>
    32bc:	8624000c 	lh	a0,12(s1)
    32c0:	a6020004 	sh	v0,4(s0)
    32c4:	862f000e 	lh	t7,14(s1)
    32c8:	a60f0010 	sh	t7,16(s0)
    32cc:	86380010 	lh	t8,16(s1)
    32d0:	a6180012 	sh	t8,18(s0)
    32d4:	86390012 	lh	t9,18(s1)
    32d8:	10000047 	b	33f8 <EffectBlure_Draw+0x2c8>
    32dc:	a6190014 	sh	t9,20(s0)
    32e0:	862c0008 	lh	t4,8(s1)
    32e4:	4406a000 	mfc1	a2,$f20
    32e8:	a60c0000 	sh	t4,0(s0)
    32ec:	862d000a 	lh	t5,10(s1)
    32f0:	a60d0002 	sh	t5,2(s0)
    32f4:	862e000c 	lh	t6,12(s1)
    32f8:	a60e0004 	sh	t6,4(s0)
    32fc:	86250008 	lh	a1,8(s1)
    3300:	0c000000 	jal	0 <EffectBlure_AddVertex>
    3304:	8624000e 	lh	a0,14(s1)
    3308:	a6020010 	sh	v0,16(s0)
    330c:	4406a000 	mfc1	a2,$f20
    3310:	8625000a 	lh	a1,10(s1)
    3314:	0c000000 	jal	0 <EffectBlure_AddVertex>
    3318:	86240010 	lh	a0,16(s1)
    331c:	a6020012 	sh	v0,18(s0)
    3320:	4406a000 	mfc1	a2,$f20
    3324:	8625000c 	lh	a1,12(s1)
    3328:	0c000000 	jal	0 <EffectBlure_AddVertex>
    332c:	86240012 	lh	a0,18(s1)
    3330:	10000031 	b	33f8 <EffectBlure_Draw+0x2c8>
    3334:	a6020014 	sh	v0,20(s0)
    3338:	3c013f00 	lui	at,0x3f00
    333c:	44819000 	mtc1	at,$f18
    3340:	86240008 	lh	a0,8(s1)
    3344:	8625000e 	lh	a1,14(s1)
    3348:	4612a502 	mul.s	$f20,$f20,$f18
    334c:	4406a000 	mfc1	a2,$f20
    3350:	0c000000 	jal	0 <EffectBlure_AddVertex>
    3354:	00000000 	nop
    3358:	a6020000 	sh	v0,0(s0)
    335c:	4406a000 	mfc1	a2,$f20
    3360:	86250010 	lh	a1,16(s1)
    3364:	0c000000 	jal	0 <EffectBlure_AddVertex>
    3368:	8624000a 	lh	a0,10(s1)
    336c:	a6020002 	sh	v0,2(s0)
    3370:	4406a000 	mfc1	a2,$f20
    3374:	86250012 	lh	a1,18(s1)
    3378:	0c000000 	jal	0 <EffectBlure_AddVertex>
    337c:	8624000c 	lh	a0,12(s1)
    3380:	a6020004 	sh	v0,4(s0)
    3384:	4406a000 	mfc1	a2,$f20
    3388:	86250008 	lh	a1,8(s1)
    338c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    3390:	8624000e 	lh	a0,14(s1)
    3394:	a6020010 	sh	v0,16(s0)
    3398:	4406a000 	mfc1	a2,$f20
    339c:	8625000a 	lh	a1,10(s1)
    33a0:	0c000000 	jal	0 <EffectBlure_AddVertex>
    33a4:	86240010 	lh	a0,16(s1)
    33a8:	a6020012 	sh	v0,18(s0)
    33ac:	4406a000 	mfc1	a2,$f20
    33b0:	8625000c 	lh	a1,12(s1)
    33b4:	0c000000 	jal	0 <EffectBlure_AddVertex>
    33b8:	86240012 	lh	a0,18(s1)
    33bc:	a6020014 	sh	v0,20(s0)
    33c0:	1000000d 	b	33f8 <EffectBlure_Draw+0x2c8>
    33c4:	4614a500 	add.s	$f20,$f20,$f20
    33c8:	862f0008 	lh	t7,8(s1)
    33cc:	a60f0000 	sh	t7,0(s0)
    33d0:	8638000a 	lh	t8,10(s1)
    33d4:	a6180002 	sh	t8,2(s0)
    33d8:	8639000c 	lh	t9,12(s1)
    33dc:	a6190004 	sh	t9,4(s0)
    33e0:	862c000e 	lh	t4,14(s1)
    33e4:	a60c0010 	sh	t4,16(s0)
    33e8:	862d0010 	lh	t5,16(s1)
    33ec:	a60d0012 	sh	t5,18(s0)
    33f0:	862e0012 	lh	t6,18(s1)
    33f4:	a60e0014 	sh	t6,20(s0)
    33f8:	a6000006 	sh	zero,6(s0)
    33fc:	a6000008 	sh	zero,8(s0)
    3400:	a600000a 	sh	zero,10(s0)
    3404:	4406a000 	mfc1	a2,$f20
    3408:	92450196 	lbu	a1,406(s2)
    340c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    3410:	9244018e 	lbu	a0,398(s2)
    3414:	a202000c 	sb	v0,12(s0)
    3418:	4406a000 	mfc1	a2,$f20
    341c:	92450197 	lbu	a1,407(s2)
    3420:	0c000000 	jal	0 <EffectBlure_AddVertex>
    3424:	9244018f 	lbu	a0,399(s2)
    3428:	a202000d 	sb	v0,13(s0)
    342c:	4406a000 	mfc1	a2,$f20
    3430:	92450198 	lbu	a1,408(s2)
    3434:	0c000000 	jal	0 <EffectBlure_AddVertex>
    3438:	92440190 	lbu	a0,400(s2)
    343c:	a202000e 	sb	v0,14(s0)
    3440:	4406a000 	mfc1	a2,$f20
    3444:	92450199 	lbu	a1,409(s2)
    3448:	0c000000 	jal	0 <EffectBlure_AddVertex>
    344c:	92440191 	lbu	a0,401(s2)
    3450:	a202000f 	sb	v0,15(s0)
    3454:	a6000016 	sh	zero,22(s0)
    3458:	a6000018 	sh	zero,24(s0)
    345c:	a600001a 	sh	zero,26(s0)
    3460:	4406a000 	mfc1	a2,$f20
    3464:	26730001 	addiu	s3,s3,1
    3468:	26100010 	addiu	s0,s0,16
    346c:	9245019a 	lbu	a1,410(s2)
    3470:	0c000000 	jal	0 <EffectBlure_AddVertex>
    3474:	92440192 	lbu	a0,402(s2)
    3478:	a202000c 	sb	v0,12(s0)
    347c:	4406a000 	mfc1	a2,$f20
    3480:	9245019b 	lbu	a1,411(s2)
    3484:	0c000000 	jal	0 <EffectBlure_AddVertex>
    3488:	92440193 	lbu	a0,403(s2)
    348c:	a202000d 	sb	v0,13(s0)
    3490:	4406a000 	mfc1	a2,$f20
    3494:	9245019c 	lbu	a1,412(s2)
    3498:	0c000000 	jal	0 <EffectBlure_AddVertex>
    349c:	92440194 	lbu	a0,404(s2)
    34a0:	a202000e 	sb	v0,14(s0)
    34a4:	4406a000 	mfc1	a2,$f20
    34a8:	9245019d 	lbu	a1,413(s2)
    34ac:	0c000000 	jal	0 <EffectBlure_AddVertex>
    34b0:	92440195 	lbu	a0,405(s2)
    34b4:	a202000f 	sb	v0,15(s0)
    34b8:	26730001 	addiu	s3,s3,1
    34bc:	92cf019e 	lbu	t7,414(s6)
    34c0:	26940001 	addiu	s4,s4,1
    34c4:	26310018 	addiu	s1,s1,24
    34c8:	028f082a 	slt	at,s4,t7
    34cc:	5420ff53 	bnezl	at,321c <EffectBlure_Draw+0xec>
    34d0:	8e380000 	lw	t8,0(s1)
    34d4:	00009825 	move	s3,zero
    34d8:	8ee602d0 	lw	a2,720(s7)
    34dc:	3c190102 	lui	t9,0x102
    34e0:	37390040 	ori	t9,t9,0x40
    34e4:	24d80008 	addiu	t8,a2,8
    34e8:	aef802d0 	sw	t8,720(s7)
    34ec:	acd90000 	sw	t9,0(a2)
    34f0:	8fac0098 	lw	t4,152(sp)
    34f4:	24150001 	li	s5,1
    34f8:	00005025 	move	t2,zero
    34fc:	accc0004 	sw	t4,4(a2)
    3500:	924d019e 	lbu	t5,414(s2)
    3504:	02408825 	move	s1,s2
    3508:	3c0b0700 	lui	t3,0x700
    350c:	19a0003f 	blez	t5,360c <EffectBlure_Draw+0x4dc>
    3510:	00000000 	nop
    3514:	8e2e0000 	lw	t6,0(s1)
    3518:	26310018 	addiu	s1,s1,24
    351c:	15c00008 	bnez	t6,3540 <EffectBlure_Draw+0x410>
    3520:	00000000 	nop
    3524:	92c2019e 	lbu	v0,414(s6)
    3528:	00005025 	move	t2,zero
    352c:	00027880 	sll	t7,v0,0x2
    3530:	01e27823 	subu	t7,t7,v0
    3534:	000f78c0 	sll	t7,t7,0x3
    3538:	10000023 	b	35c8 <EffectBlure_Draw+0x498>
    353c:	01f21821 	addu	v1,t7,s2
    3540:	15400003 	bnez	t2,3550 <EffectBlure_Draw+0x420>
    3544:	00132840 	sll	a1,s3,0x1
    3548:	10000019 	b	35b0 <EffectBlure_Draw+0x480>
    354c:	02a05025 	move	t2,s5
    3550:	8ee602d0 	lw	a2,720(s7)
    3554:	24a7fffc 	addiu	a3,a1,-4
    3558:	24a8fffe 	addiu	t0,a1,-2
    355c:	311900ff 	andi	t9,t0,0xff
    3560:	30e300ff 	andi	v1,a3,0xff
    3564:	24a90002 	addiu	t1,a1,2
    3568:	312400ff 	andi	a0,t1,0xff
    356c:	00031c00 	sll	v1,v1,0x10
    3570:	00196200 	sll	t4,t9,0x8
    3574:	24d80008 	addiu	t8,a2,8
    3578:	aef802d0 	sw	t8,720(s7)
    357c:	006c6825 	or	t5,v1,t4
    3580:	01a47025 	or	t6,t5,a0
    3584:	0004c200 	sll	t8,a0,0x8
    3588:	0078c825 	or	t9,v1,t8
    358c:	30ac00ff 	andi	t4,a1,0xff
    3590:	032c6825 	or	t5,t9,t4
    3594:	01cb7825 	or	t7,t6,t3
    3598:	accf0000 	sw	t7,0(a2)
    359c:	accd0004 	sw	t5,4(a2)
    35a0:	924e01a0 	lbu	t6,416(s2)
    35a4:	56ae0003 	bnel	s5,t6,35b4 <EffectBlure_Draw+0x484>
    35a8:	92c2019e 	lbu	v0,414(s6)
    35ac:	00005025 	move	t2,zero
    35b0:	92c2019e 	lbu	v0,414(s6)
    35b4:	26730002 	addiu	s3,s3,2
    35b8:	00027880 	sll	t7,v0,0x2
    35bc:	01e27823 	subu	t7,t7,v0
    35c0:	000f78c0 	sll	t7,t7,0x3
    35c4:	01f21821 	addu	v1,t7,s2
    35c8:	0223082b 	sltu	at,s1,v1
    35cc:	5420ffd2 	bnezl	at,3518 <EffectBlure_Draw+0x3e8>
    35d0:	8e2e0000 	lw	t6,0(s1)
    35d4:	1000000d 	b	360c <EffectBlure_Draw+0x4dc>
    35d8:	00000000 	nop
    35dc:	925801a1 	lbu	t8,417(s2)
    35e0:	02e02825 	move	a1,s7
    35e4:	02402025 	move	a0,s2
    35e8:	2b010002 	slti	at,t8,2
    35ec:	10200005 	beqz	at,3604 <EffectBlure_Draw+0x4d4>
    35f0:	00000000 	nop
    35f4:	0c000000 	jal	0 <EffectBlure_AddVertex>
    35f8:	02402025 	move	a0,s2
    35fc:	10000003 	b	360c <EffectBlure_Draw+0x4dc>
    3600:	00000000 	nop
    3604:	0c000000 	jal	0 <EffectBlure_AddVertex>
    3608:	02e02825 	move	a1,s7
    360c:	3c060000 	lui	a2,0x0
    3610:	24c602e8 	addiu	a2,a2,744
    3614:	27a40074 	addiu	a0,sp,116
    3618:	02e02825 	move	a1,s7
    361c:	0c000000 	jal	0 <EffectBlure_AddVertex>
    3620:	2407071f 	li	a3,1823
    3624:	8fbf003c 	lw	ra,60(sp)
    3628:	d7b40010 	ldc1	$f20,16(sp)
    362c:	8fb0001c 	lw	s0,28(sp)
    3630:	8fb10020 	lw	s1,32(sp)
    3634:	8fb20024 	lw	s2,36(sp)
    3638:	8fb30028 	lw	s3,40(sp)
    363c:	8fb4002c 	lw	s4,44(sp)
    3640:	8fb50030 	lw	s5,48(sp)
    3644:	8fb60034 	lw	s6,52(sp)
    3648:	8fb70038 	lw	s7,56(sp)
    364c:	03e00008 	jr	ra
    3650:	27bd00a0 	addiu	sp,sp,160
	...
