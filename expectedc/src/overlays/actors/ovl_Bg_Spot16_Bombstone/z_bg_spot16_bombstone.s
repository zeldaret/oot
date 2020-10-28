
build/src/overlays/actors/ovl_Bg_Spot16_Bombstone/z_bg_spot16_bombstone.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808B4C30>:
       0:	8482001c 	lh	v0,28(a0)
       4:	00027203 	sra	t6,v0,0x8
       8:	31cf003f 	andi	t7,t6,0x3f
       c:	305800ff 	andi	t8,v0,0xff
      10:	a48f0156 	sh	t7,342(a0)
      14:	03e00008 	jr	ra
      18:	a498001c 	sh	t8,28(a0)

0000001c <func_808B4C4C>:
      1c:	27bdffd8 	addiu	sp,sp,-40
      20:	00803025 	move	a2,a0
      24:	afa5002c 	sw	a1,44(sp)
      28:	00a02025 	move	a0,a1
      2c:	afbf001c 	sw	ra,28(sp)
      30:	24c50164 	addiu	a1,a2,356
      34:	afa50020 	sw	a1,32(sp)
      38:	0c000000 	jal	0 <func_808B4C30>
      3c:	afa60028 	sw	a2,40(sp)
      40:	8fa60028 	lw	a2,40(sp)
      44:	3c070000 	lui	a3,0x0
      48:	8fa50020 	lw	a1,32(sp)
      4c:	24ce0184 	addiu	t6,a2,388
      50:	afae0010 	sw	t6,16(sp)
      54:	24e700a4 	addiu	a3,a3,164
      58:	0c000000 	jal	0 <func_808B4C30>
      5c:	8fa4002c 	lw	a0,44(sp)
      60:	8fa60028 	lw	a2,40(sp)
      64:	3c014248 	lui	at,0x4248
      68:	44815000 	mtc1	at,$f10
      6c:	c4c40024 	lwc1	$f4,36(a2)
      70:	8cd90180 	lw	t9,384(a2)
      74:	240e0078 	li	t6,120
      78:	4600218d 	trunc.w.s	$f6,$f4
      7c:	44183000 	mfc1	t8,$f6
      80:	00000000 	nop
      84:	a7380030 	sh	t8,48(t9)
      88:	c4c80028 	lwc1	$f8,40(a2)
      8c:	8cca0180 	lw	t2,384(a2)
      90:	460a4400 	add.s	$f16,$f8,$f10
      94:	4600848d 	trunc.w.s	$f18,$f16
      98:	44099000 	mfc1	t1,$f18
      9c:	00000000 	nop
      a0:	a5490032 	sh	t1,50(t2)
      a4:	c4c4002c 	lwc1	$f4,44(a2)
      a8:	8ccd0180 	lw	t5,384(a2)
      ac:	4600218d 	trunc.w.s	$f6,$f4
      b0:	440c3000 	mfc1	t4,$f6
      b4:	00000000 	nop
      b8:	a5ac0034 	sh	t4,52(t5)
      bc:	8ccf0180 	lw	t7,384(a2)
      c0:	a5ee0036 	sh	t6,54(t7)
      c4:	8fbf001c 	lw	ra,28(sp)
      c8:	27bd0028 	addiu	sp,sp,40
      cc:	03e00008 	jr	ra
      d0:	00000000 	nop

000000d4 <func_808B4D04>:
      d4:	27bdffe0 	addiu	sp,sp,-32
      d8:	00803025 	move	a2,a0
      dc:	afa50024 	sw	a1,36(sp)
      e0:	00a02025 	move	a0,a1
      e4:	afbf0014 	sw	ra,20(sp)
      e8:	24c501c4 	addiu	a1,a2,452
      ec:	afa50018 	sw	a1,24(sp)
      f0:	0c000000 	jal	0 <func_808B4C30>
      f4:	afa60020 	sw	a2,32(sp)
      f8:	3c070000 	lui	a3,0x0
      fc:	8fa50018 	lw	a1,24(sp)
     100:	8fa60020 	lw	a2,32(sp)
     104:	24e700b4 	addiu	a3,a3,180
     108:	0c000000 	jal	0 <func_808B4C30>
     10c:	8fa40024 	lw	a0,36(sp)
     110:	8fa60020 	lw	a2,32(sp)
     114:	c4c40024 	lwc1	$f4,36(a2)
     118:	c4c80028 	lwc1	$f8,40(a2)
     11c:	c4d0002c 	lwc1	$f16,44(a2)
     120:	4600218d 	trunc.w.s	$f6,$f4
     124:	84ce020a 	lh	t6,522(a2)
     128:	84ca020c 	lh	t2,524(a2)
     12c:	4600428d 	trunc.w.s	$f10,$f8
     130:	44083000 	mfc1	t0,$f6
     134:	84d9020e 	lh	t9,526(a2)
     138:	4600848d 	trunc.w.s	$f18,$f16
     13c:	440f5000 	mfc1	t7,$f10
     140:	01c84821 	addu	t1,t6,t0
     144:	a4c9020a 	sh	t1,522(a2)
     148:	440b9000 	mfc1	t3,$f18
     14c:	014fc021 	addu	t8,t2,t7
     150:	a4d8020c 	sh	t8,524(a2)
     154:	032b6021 	addu	t4,t9,t3
     158:	a4cc020e 	sh	t4,526(a2)
     15c:	8fbf0014 	lw	ra,20(sp)
     160:	27bd0020 	addiu	sp,sp,32
     164:	03e00008 	jr	ra
     168:	00000000 	nop

0000016c <func_808B4D9C>:
     16c:	27bdffe0 	addiu	sp,sp,-32
     170:	afb00018 	sw	s0,24(sp)
     174:	00808025 	move	s0,a0
     178:	afbf001c 	sw	ra,28(sp)
     17c:	afa50024 	sw	a1,36(sp)
     180:	00a02025 	move	a0,a1
     184:	0c000000 	jal	0 <func_808B4C30>
     188:	86050156 	lh	a1,342(s0)
     18c:	10400006 	beqz	v0,1a8 <func_808B4D9C+0x3c>
     190:	02002025 	move	a0,s0
     194:	3c040000 	lui	a0,0x0
     198:	0c000000 	jal	0 <func_808B4C30>
     19c:	24840000 	addiu	a0,a0,0
     1a0:	1000001c 	b	214 <func_808B4D9C+0xa8>
     1a4:	00001025 	move	v0,zero
     1a8:	3c050000 	lui	a1,0x0
     1ac:	0c000000 	jal	0 <func_808B4C30>
     1b0:	24a5026c 	addiu	a1,a1,620
     1b4:	3c053ecc 	lui	a1,0x3ecc
     1b8:	34a5cccd 	ori	a1,a1,0xcccd
     1bc:	0c000000 	jal	0 <func_808B4C30>
     1c0:	02002025 	move	a0,s0
     1c4:	240e00ff 	li	t6,255
     1c8:	a20e00ae 	sb	t6,174(s0)
     1cc:	8fa50024 	lw	a1,36(sp)
     1d0:	0c000000 	jal	0 <func_808B4C30>
     1d4:	02002025 	move	a0,s0
     1d8:	02002025 	move	a0,s0
     1dc:	0c000000 	jal	0 <func_808B4C30>
     1e0:	8fa50024 	lw	a1,36(sp)
     1e4:	0c000000 	jal	0 <func_808B4C30>
     1e8:	860400b6 	lh	a0,182(s0)
     1ec:	e600015c 	swc1	$f0,348(s0)
     1f0:	0c000000 	jal	0 <func_808B4C30>
     1f4:	860400b6 	lh	a0,182(s0)
     1f8:	3c0f0000 	lui	t7,0x0
     1fc:	25ef0000 	addiu	t7,t7,0
     200:	e6000160 	swc1	$f0,352(s0)
     204:	ae0f0150 	sw	t7,336(s0)
     208:	0c000000 	jal	0 <func_808B4C30>
     20c:	02002025 	move	a0,s0
     210:	24020001 	li	v0,1
     214:	8fbf001c 	lw	ra,28(sp)
     218:	8fb00018 	lw	s0,24(sp)
     21c:	27bd0020 	addiu	sp,sp,32
     220:	03e00008 	jr	ra
     224:	00000000 	nop

00000228 <func_808B4E58>:
     228:	27bdffd0 	addiu	sp,sp,-48
     22c:	afa50034 	sw	a1,52(sp)
     230:	afbf001c 	sw	ra,28(sp)
     234:	afb00018 	sw	s0,24(sp)
     238:	3c050000 	lui	a1,0x0
     23c:	00808025 	move	s0,a0
     240:	0c000000 	jal	0 <func_808B4C30>
     244:	24a50278 	addiu	a1,a1,632
     248:	860e001c 	lh	t6,28(s0)
     24c:	3c180000 	lui	t8,0x0
     250:	27180000 	addiu	t8,t8,0
     254:	000e7880 	sll	t7,t6,0x2
     258:	01ee7821 	addu	t7,t7,t6
     25c:	000f7880 	sll	t7,t7,0x2
     260:	01f81021 	addu	v0,t7,t8
     264:	84590000 	lh	t9,0(v0)
     268:	3c010000 	lui	at,0x0
     26c:	02002025 	move	a0,s0
     270:	44992000 	mtc1	t9,$f4
     274:	00000000 	nop
     278:	468021a0 	cvt.s.w	$f6,$f4
     27c:	e6060068 	swc1	$f6,104(s0)
     280:	84480002 	lh	t0,2(v0)
     284:	44884000 	mtc1	t0,$f8
     288:	00000000 	nop
     28c:	468042a0 	cvt.s.w	$f10,$f8
     290:	e60a0060 	swc1	$f10,96(s0)
     294:	84490004 	lh	t1,4(v0)
     298:	c4240198 	lwc1	$f4,408(at)
     29c:	44898000 	mtc1	t1,$f16
     2a0:	00000000 	nop
     2a4:	468084a0 	cvt.s.w	$f18,$f16
     2a8:	46049182 	mul.s	$f6,$f18,$f4
     2ac:	44053000 	mfc1	a1,$f6
     2b0:	0c000000 	jal	0 <func_808B4C30>
     2b4:	00000000 	nop
     2b8:	860a001c 	lh	t2,28(s0)
     2bc:	24030014 	li	v1,20
     2c0:	3c020000 	lui	v0,0x0
     2c4:	01430019 	multu	t2,v1
     2c8:	24420000 	addiu	v0,v0,0
     2cc:	8618001c 	lh	t8,28(s0)
     2d0:	00005812 	mflo	t3
     2d4:	004b6021 	addu	t4,v0,t3
     2d8:	858d0006 	lh	t5,6(t4)
     2dc:	03030019 	multu	t8,v1
     2e0:	860c001c 	lh	t4,28(s0)
     2e4:	448d4000 	mtc1	t5,$f8
     2e8:	00000000 	nop
     2ec:	468042a0 	cvt.s.w	$f10,$f8
     2f0:	0000c812 	mflo	t9
     2f4:	4600540d 	trunc.w.s	$f16,$f10
     2f8:	00594021 	addu	t0,v0,t9
     2fc:	01830019 	multu	t4,v1
     300:	440f8000 	mfc1	t7,$f16
     304:	00000000 	nop
     308:	a60f0210 	sh	t7,528(s0)
     30c:	85090008 	lh	t1,8(t0)
     310:	44899000 	mtc1	t1,$f18
     314:	00006812 	mflo	t5
     318:	004d7021 	addu	t6,v0,t5
     31c:	46809120 	cvt.s.w	$f4,$f18
     320:	4600218d 	trunc.w.s	$f6,$f4
     324:	440b3000 	mfc1	t3,$f6
     328:	00000000 	nop
     32c:	a60b0212 	sh	t3,530(s0)
     330:	85cf000a 	lh	t7,10(t6)
     334:	a60f0032 	sh	t7,50(s0)
     338:	0c000000 	jal	0 <func_808B4C30>
     33c:	86040032 	lh	a0,50(s0)
     340:	e7a00020 	swc1	$f0,32(sp)
     344:	0c000000 	jal	0 <func_808B4C30>
     348:	86040032 	lh	a0,50(s0)
     34c:	3c014248 	lui	at,0x4248
     350:	44811000 	mtc1	at,$f2
     354:	c7a80020 	lwc1	$f8,32(sp)
     358:	c6100008 	lwc1	$f16,8(s0)
     35c:	8618001c 	lh	t8,28(s0)
     360:	46024282 	mul.s	$f10,$f8,$f2
     364:	3c080000 	lui	t0,0x0
     368:	0018c880 	sll	t9,t8,0x2
     36c:	0338c821 	addu	t9,t9,t8
     370:	0019c880 	sll	t9,t9,0x2
     374:	25080000 	addiu	t0,t0,0
     378:	03281021 	addu	v0,t9,t0
     37c:	46105480 	add.s	$f18,$f10,$f16
     380:	46020402 	mul.s	$f16,$f0,$f2
     384:	c608000c 	lwc1	$f8,12(s0)
     388:	3c0d0000 	lui	t5,0x0
     38c:	e6120024 	swc1	$f18,36(s0)
     390:	8449000c 	lh	t1,12(v0)
     394:	c6120010 	lwc1	$f18,16(s0)
     398:	25ad0000 	addiu	t5,t5,0
     39c:	44892000 	mtc1	t1,$f4
     3a0:	3c010001 	lui	at,0x1
     3a4:	342117a4 	ori	at,at,0x17a4
     3a8:	468021a0 	cvt.s.w	$f6,$f4
     3ac:	24050163 	li	a1,355
     3b0:	46128100 	add.s	$f4,$f16,$f18
     3b4:	46083280 	add.s	$f10,$f6,$f8
     3b8:	e604002c 	swc1	$f4,44(s0)
     3bc:	e60a0028 	swc1	$f10,40(s0)
     3c0:	844a000e 	lh	t2,14(v0)
     3c4:	a60a00b4 	sh	t2,180(s0)
     3c8:	844b0010 	lh	t3,16(v0)
     3cc:	a60b00b6 	sh	t3,182(s0)
     3d0:	844c0012 	lh	t4,18(v0)
     3d4:	ae0d0150 	sw	t5,336(s0)
     3d8:	a60c00b8 	sh	t4,184(s0)
     3dc:	8fa40034 	lw	a0,52(sp)
     3e0:	0c000000 	jal	0 <func_808B4C30>
     3e4:	00812021 	addu	a0,a0,at
     3e8:	a2020214 	sb	v0,532(s0)
     3ec:	820e0214 	lb	t6,532(s0)
     3f0:	3c040000 	lui	a0,0x0
     3f4:	2484001c 	addiu	a0,a0,28
     3f8:	05c10007 	bgez	t6,418 <func_808B4E58+0x1f0>
     3fc:	3c060000 	lui	a2,0x0
     400:	8605001c 	lh	a1,28(s0)
     404:	24c6004c 	addiu	a2,a2,76
     408:	0c000000 	jal	0 <func_808B4C30>
     40c:	2407024d 	li	a3,589
     410:	10000004 	b	424 <func_808B4E58+0x1fc>
     414:	00001025 	move	v0,zero
     418:	0c000000 	jal	0 <func_808B4C30>
     41c:	02002025 	move	a0,s0
     420:	24020001 	li	v0,1
     424:	8fbf001c 	lw	ra,28(sp)
     428:	8fb00018 	lw	s0,24(sp)
     42c:	27bd0030 	addiu	sp,sp,48
     430:	03e00008 	jr	ra
     434:	00000000 	nop

00000438 <BgSpot16Bombstone_Init>:
     438:	27bdffd8 	addiu	sp,sp,-40
     43c:	afbf0024 	sw	ra,36(sp)
     440:	afb00020 	sw	s0,32(sp)
     444:	00808025 	move	s0,a0
     448:	0c000000 	jal	0 <func_808B4C30>
     44c:	afa5002c 	sw	a1,44(sp)
     450:	8607001c 	lh	a3,28(s0)
     454:	8fa5002c 	lw	a1,44(sp)
     458:	28e10006 	slti	at,a3,6
     45c:	14200006 	bnez	at,478 <BgSpot16Bombstone_Init+0x40>
     460:	00e01025 	move	v0,a3
     464:	240100ff 	li	at,255
     468:	1041000b 	beq	v0,at,498 <BgSpot16Bombstone_Init+0x60>
     46c:	00000000 	nop
     470:	10000013 	b	4c0 <BgSpot16Bombstone_Init+0x88>
     474:	00000000 	nop
     478:	2c410006 	sltiu	at,v0,6
     47c:	10200010 	beqz	at,4c0 <BgSpot16Bombstone_Init+0x88>
     480:	00027080 	sll	t6,v0,0x2
     484:	3c010000 	lui	at,0x0
     488:	002e0821 	addu	at,at,t6
     48c:	8c2e019c 	lw	t6,412(at)
     490:	01c00008 	jr	t6
     494:	00000000 	nop
     498:	0c000000 	jal	0 <func_808B4C30>
     49c:	02002025 	move	a0,s0
     4a0:	00021c00 	sll	v1,v0,0x10
     4a4:	1000000d 	b	4dc <BgSpot16Bombstone_Init+0xa4>
     4a8:	00031c03 	sra	v1,v1,0x10
     4ac:	0c000000 	jal	0 <func_808B4C30>
     4b0:	02002025 	move	a0,s0
     4b4:	00021c00 	sll	v1,v0,0x10
     4b8:	10000008 	b	4dc <BgSpot16Bombstone_Init+0xa4>
     4bc:	00031c03 	sra	v1,v1,0x10
     4c0:	3c040000 	lui	a0,0x0
     4c4:	3c050000 	lui	a1,0x0
     4c8:	24a500a0 	addiu	a1,a1,160
     4cc:	24840068 	addiu	a0,a0,104
     4d0:	0c000000 	jal	0 <func_808B4C30>
     4d4:	2406029c 	li	a2,668
     4d8:	00001825 	move	v1,zero
     4dc:	54600006 	bnezl	v1,4f8 <BgSpot16Bombstone_Init+0xc0>
     4e0:	c6040050 	lwc1	$f4,80(s0)
     4e4:	0c000000 	jal	0 <func_808B4C30>
     4e8:	02002025 	move	a0,s0
     4ec:	1000000b 	b	51c <BgSpot16Bombstone_Init+0xe4>
     4f0:	8fbf0024 	lw	ra,36(sp)
     4f4:	c6040050 	lwc1	$f4,80(s0)
     4f8:	860f001c 	lh	t7,28(s0)
     4fc:	3c040000 	lui	a0,0x0
     500:	460021a1 	cvt.d.s	$f6,$f4
     504:	248400bc 	addiu	a0,a0,188
     508:	44073000 	mfc1	a3,$f6
     50c:	44063800 	mfc1	a2,$f7
     510:	0c000000 	jal	0 <func_808B4C30>
     514:	afaf0010 	sw	t7,16(sp)
     518:	8fbf0024 	lw	ra,36(sp)
     51c:	8fb00020 	lw	s0,32(sp)
     520:	27bd0028 	addiu	sp,sp,40
     524:	03e00008 	jr	ra
     528:	00000000 	nop

0000052c <BgSpot16Bombstone_Destroy>:
     52c:	27bdffe8 	addiu	sp,sp,-24
     530:	afbf0014 	sw	ra,20(sp)
     534:	afa5001c 	sw	a1,28(sp)
     538:	848e001c 	lh	t6,28(a0)
     53c:	00803025 	move	a2,a0
     540:	240100ff 	li	at,255
     544:	15c10008 	bne	t6,at,568 <BgSpot16Bombstone_Destroy+0x3c>
     548:	00a02025 	move	a0,a1
     54c:	24c50164 	addiu	a1,a2,356
     550:	0c000000 	jal	0 <func_808B4C30>
     554:	afa60018 	sw	a2,24(sp)
     558:	8fa60018 	lw	a2,24(sp)
     55c:	8fa4001c 	lw	a0,28(sp)
     560:	0c000000 	jal	0 <func_808B4C30>
     564:	24c501c4 	addiu	a1,a2,452
     568:	8fbf0014 	lw	ra,20(sp)
     56c:	27bd0018 	addiu	sp,sp,24
     570:	03e00008 	jr	ra
     574:	00000000 	nop

00000578 <BgSpot16Bombstone_SpawnDust>:
     578:	27bdffc0 	addiu	sp,sp,-64
     57c:	afbf0024 	sw	ra,36(sp)
     580:	afa40040 	sw	a0,64(sp)
     584:	afa50044 	sw	a1,68(sp)
     588:	3c014316 	lui	at,0x4316
     58c:	44812000 	mtc1	at,$f4
     590:	c4800050 	lwc1	$f0,80(a0)
     594:	3c01437a 	lui	at,0x437a
     598:	44813000 	mtc1	at,$f6
     59c:	46040082 	mul.s	$f2,$f0,$f4
     5a0:	c4900024 	lwc1	$f16,36(a0)
     5a4:	3c014248 	lui	at,0x4248
     5a8:	46060202 	mul.s	$f8,$f0,$f6
     5ac:	e7b0002c 	swc1	$f16,44(sp)
     5b0:	c4920028 	lwc1	$f18,40(a0)
     5b4:	44812000 	mtc1	at,$f4
     5b8:	44061000 	mfc1	a2,$f2
     5bc:	241800a0 	li	t8,160
     5c0:	46049180 	add.s	$f6,$f18,$f4
     5c4:	24190001 	li	t9,1
     5c8:	24070002 	li	a3,2
     5cc:	4600428d 	trunc.w.s	$f10,$f8
     5d0:	e7a60030 	swc1	$f6,48(sp)
     5d4:	c488002c 	lwc1	$f8,44(a0)
     5d8:	00a02025 	move	a0,a1
     5dc:	44025000 	mfc1	v0,$f10
     5e0:	27a5002c 	addiu	a1,sp,44
     5e4:	afb90018 	sw	t9,24(sp)
     5e8:	00021400 	sll	v0,v0,0x10
     5ec:	00021403 	sra	v0,v0,0x10
     5f0:	afa20010 	sw	v0,16(sp)
     5f4:	afb80014 	sw	t8,20(sp)
     5f8:	0c000000 	jal	0 <func_808B4C30>
     5fc:	e7a80034 	swc1	$f8,52(sp)
     600:	8fbf0024 	lw	ra,36(sp)
     604:	27bd0040 	addiu	sp,sp,64
     608:	03e00008 	jr	ra
     60c:	00000000 	nop

00000610 <func_808B5240>:
     610:	27bdff98 	addiu	sp,sp,-104
     614:	afb5003c 	sw	s5,60(sp)
     618:	afb40038 	sw	s4,56(sp)
     61c:	afb1002c 	sw	s1,44(sp)
     620:	afb60040 	sw	s6,64(sp)
     624:	afb30034 	sw	s3,52(sp)
     628:	afb20030 	sw	s2,48(sp)
     62c:	afb00028 	sw	s0,40(sp)
     630:	3c110000 	lui	s1,0x0
     634:	3c140000 	lui	s4,0x0
     638:	3c150000 	lui	s5,0x0
     63c:	00808025 	move	s0,a0
     640:	00a0b025 	move	s6,a1
     644:	afbf0044 	sw	ra,68(sp)
     648:	26b50298 	addiu	s5,s5,664
     64c:	2694028c 	addiu	s4,s4,652
     650:	263100e0 	addiu	s1,s1,224
     654:	2412000e 	li	s2,14
     658:	27b30050 	addiu	s3,sp,80
     65c:	86080158 	lh	t0,344(s0)
     660:	2d01001a 	sltiu	at,t0,26
     664:	1020003a 	beqz	at,750 <func_808B5240+0x140>
     668:	00084c00 	sll	t1,t0,0x10
     66c:	01120019 	multu	t0,s2
     670:	860e0154 	lh	t6,340(s0)
     674:	00094c03 	sra	t1,t1,0x10
     678:	00007812 	mflo	t7
     67c:	022fc021 	addu	t8,s1,t7
     680:	87190000 	lh	t9,0(t8)
     684:	01d9082a 	slt	at,t6,t9
     688:	54200032 	bnezl	at,754 <func_808B5240+0x144>
     68c:	8fbf0044 	lw	ra,68(sp)
     690:	01320019 	multu	t1,s2
     694:	c608015c 	lwc1	$f8,348(s0)
     698:	c6100160 	lwc1	$f16,352(s0)
     69c:	26030024 	addiu	v1,s0,36
     6a0:	02c02025 	move	a0,s6
     6a4:	02602825 	move	a1,s3
     6a8:	02803025 	move	a2,s4
     6ac:	02a03825 	move	a3,s5
     6b0:	00005012 	mflo	t2
     6b4:	022a1021 	addu	v0,s1,t2
     6b8:	844c0006 	lh	t4,6(v0)
     6bc:	844b0002 	lh	t3,2(v0)
     6c0:	844d0004 	lh	t5,4(v0)
     6c4:	448c3000 	mtc1	t4,$f6
     6c8:	448b2000 	mtc1	t3,$f4
     6cc:	844f0008 	lh	t7,8(v0)
     6d0:	468030a0 	cvt.s.w	$f2,$f6
     6d4:	c4660000 	lwc1	$f6,0(v1)
     6d8:	8458000a 	lh	t8,10(v0)
     6dc:	844e000c 	lh	t6,12(v0)
     6e0:	46802020 	cvt.s.w	$f0,$f4
     6e4:	46024282 	mul.s	$f10,$f8,$f2
     6e8:	00000000 	nop
     6ec:	46100482 	mul.s	$f18,$f0,$f16
     6f0:	448d8000 	mtc1	t5,$f16
     6f4:	46125100 	add.s	$f4,$f10,$f18
     6f8:	468082a0 	cvt.s.w	$f10,$f16
     6fc:	46062200 	add.s	$f8,$f4,$f6
     700:	e7a80050 	swc1	$f8,80(sp)
     704:	c4720004 	lwc1	$f18,4(v1)
     708:	46125100 	add.s	$f4,$f10,$f18
     70c:	e7a40054 	swc1	$f4,84(sp)
     710:	c6060160 	lwc1	$f6,352(s0)
     714:	c610015c 	lwc1	$f16,348(s0)
     718:	c4640008 	lwc1	$f4,8(v1)
     71c:	46023202 	mul.s	$f8,$f6,$f2
     720:	afaf0010 	sw	t7,16(sp)
     724:	afb80014 	sw	t8,20(sp)
     728:	46100282 	mul.s	$f10,$f0,$f16
     72c:	afae0018 	sw	t6,24(sp)
     730:	460a4481 	sub.s	$f18,$f8,$f10
     734:	46049180 	add.s	$f6,$f18,$f4
     738:	0c000000 	jal	0 <func_808B4C30>
     73c:	e7a60058 	swc1	$f6,88(sp)
     740:	86190158 	lh	t9,344(s0)
     744:	272a0001 	addiu	t2,t9,1
     748:	1000ffc4 	b	65c <func_808B5240+0x4c>
     74c:	a60a0158 	sh	t2,344(s0)
     750:	8fbf0044 	lw	ra,68(sp)
     754:	8fb00028 	lw	s0,40(sp)
     758:	8fb1002c 	lw	s1,44(sp)
     75c:	8fb20030 	lw	s2,48(sp)
     760:	8fb30034 	lw	s3,52(sp)
     764:	8fb40038 	lw	s4,56(sp)
     768:	8fb5003c 	lw	s5,60(sp)
     76c:	8fb60040 	lw	s6,64(sp)
     770:	03e00008 	jr	ra
     774:	27bd0068 	addiu	sp,sp,104

00000778 <BgSpot16Bombstone_SpawnFragments>:
     778:	27bdff38 	addiu	sp,sp,-200
     77c:	afbf0094 	sw	ra,148(sp)
     780:	afb70090 	sw	s7,144(sp)
     784:	afb6008c 	sw	s6,140(sp)
     788:	afb50088 	sw	s5,136(sp)
     78c:	afb40084 	sw	s4,132(sp)
     790:	afb30080 	sw	s3,128(sp)
     794:	afb2007c 	sw	s2,124(sp)
     798:	afb10078 	sw	s1,120(sp)
     79c:	afb00074 	sw	s0,116(sp)
     7a0:	f7be0068 	sdc1	$f30,104(sp)
     7a4:	f7bc0060 	sdc1	$f28,96(sp)
     7a8:	f7ba0058 	sdc1	$f26,88(sp)
     7ac:	f7b80050 	sdc1	$f24,80(sp)
     7b0:	f7b60048 	sdc1	$f22,72(sp)
     7b4:	f7b40040 	sdc1	$f20,64(sp)
     7b8:	848e001c 	lh	t6,28(a0)
     7bc:	00808825 	move	s1,a0
     7c0:	00a0b825 	move	s7,a1
     7c4:	15c00010 	bnez	t6,808 <BgSpot16Bombstone_SpawnFragments+0x90>
     7c8:	00001025 	move	v0,zero
     7cc:	c6240028 	lwc1	$f4,40(s1)
     7d0:	8e270024 	lw	a3,36(s1)
     7d4:	240f0005 	li	t7,5
     7d8:	e7a40010 	swc1	$f4,16(sp)
     7dc:	c626002c 	lwc1	$f6,44(s1)
     7e0:	afaf0024 	sw	t7,36(sp)
     7e4:	afa00020 	sw	zero,32(sp)
     7e8:	afa0001c 	sw	zero,28(sp)
     7ec:	afa00018 	sw	zero,24(sp)
     7f0:	24a41c24 	addiu	a0,a1,7204
     7f4:	240600cd 	li	a2,205
     7f8:	0c000000 	jal	0 <func_808B4C30>
     7fc:	e7a60014 	swc1	$f6,20(sp)
     800:	10000001 	b	808 <BgSpot16Bombstone_SpawnFragments+0x90>
     804:	24020003 	li	v0,3
     808:	28410005 	slti	at,v0,5
     80c:	10200066 	beqz	at,9a8 <BgSpot16Bombstone_SpawnFragments+0x230>
     810:	0002c080 	sll	t8,v0,0x2
     814:	3c010000 	lui	at,0x0
     818:	c43e01b4 	lwc1	$f30,436(at)
     81c:	3c0140a0 	lui	at,0x40a0
     820:	4481e000 	mtc1	at,$f28
     824:	3c01402c 	lui	at,0x402c
     828:	4481d800 	mtc1	at,$f27
     82c:	3c014180 	lui	at,0x4180
     830:	4481c000 	mtc1	at,$f24
     834:	3c014100 	lui	at,0x4100
     838:	4481b000 	mtc1	at,$f22
     83c:	3c013f00 	lui	at,0x3f00
     840:	3c190000 	lui	t9,0x0
     844:	273902a4 	addiu	t9,t9,676
     848:	3c160000 	lui	s6,0x0
     84c:	3c150000 	lui	s5,0x0
     850:	4481a000 	mtc1	at,$f20
     854:	4480d000 	mtc1	zero,$f26
     858:	26b50000 	addiu	s5,s5,0
     85c:	26d602b8 	addiu	s6,s6,696
     860:	03198021 	addu	s0,t8,t9
     864:	26320024 	addiu	s2,s1,36
     868:	27b400ac 	addiu	s4,sp,172
     86c:	27b300b8 	addiu	s3,sp,184
     870:	0c000000 	jal	0 <func_808B4C30>
     874:	00000000 	nop
     878:	46140201 	sub.s	$f8,$f0,$f20
     87c:	c6300024 	lwc1	$f16,36(s1)
     880:	46164282 	mul.s	$f10,$f8,$f22
     884:	46105480 	add.s	$f18,$f10,$f16
     888:	0c000000 	jal	0 <func_808B4C30>
     88c:	e7b200b8 	swc1	$f18,184(sp)
     890:	461c0102 	mul.s	$f4,$f0,$f28
     894:	c6260028 	lwc1	$f6,40(s1)
     898:	46062200 	add.s	$f8,$f4,$f6
     89c:	46164280 	add.s	$f10,$f8,$f22
     8a0:	0c000000 	jal	0 <func_808B4C30>
     8a4:	e7aa00bc 	swc1	$f10,188(sp)
     8a8:	46140401 	sub.s	$f16,$f0,$f20
     8ac:	c624002c 	lwc1	$f4,44(s1)
     8b0:	46168482 	mul.s	$f18,$f16,$f22
     8b4:	46049180 	add.s	$f6,$f18,$f4
     8b8:	0c000000 	jal	0 <func_808B4C30>
     8bc:	e7a600c0 	swc1	$f6,192(sp)
     8c0:	46140201 	sub.s	$f8,$f0,$f20
     8c4:	46184282 	mul.s	$f10,$f8,$f24
     8c8:	0c000000 	jal	0 <func_808B4C30>
     8cc:	e7aa00ac 	swc1	$f10,172(sp)
     8d0:	46000086 	mov.s	$f2,$f0
     8d4:	c6200060 	lwc1	$f0,96(s1)
     8d8:	46001121 	cvt.d.s	$f4,$f2
     8dc:	46000005 	abs.s	$f0,$f0
     8e0:	461e0402 	mul.s	$f16,$f0,$f30
     8e4:	00000000 	nop
     8e8:	463a2182 	mul.d	$f6,$f4,$f26
     8ec:	460084a1 	cvt.d.s	$f18,$f16
     8f0:	46269200 	add.d	$f8,$f18,$f6
     8f4:	462042a0 	cvt.s.d	$f10,$f8
     8f8:	0c000000 	jal	0 <func_808B4C30>
     8fc:	e7aa00b0 	swc1	$f10,176(sp)
     900:	46140401 	sub.s	$f16,$f0,$f20
     904:	c6120000 	lwc1	$f18,0(s0)
     908:	3c014040 	lui	at,0x4040
     90c:	44815000 	mtc1	at,$f10
     910:	46188102 	mul.s	$f4,$f16,$f24
     914:	2409fe5c 	li	t1,-420
     918:	240a0031 	li	t2,49
     91c:	240b000f 	li	t3,15
     920:	240c000f 	li	t4,15
     924:	240d0002 	li	t5,2
     928:	240e0040 	li	t6,64
     92c:	e7a400b4 	swc1	$f4,180(sp)
     930:	c6260050 	lwc1	$f6,80(s1)
     934:	240f00a0 	li	t7,160
     938:	2418ffff 	li	t8,-1
     93c:	46069202 	mul.s	$f8,$f18,$f6
     940:	24190163 	li	t9,355
     944:	afb90038 	sw	t9,56(sp)
     948:	afb80034 	sw	t8,52(sp)
     94c:	afaf0030 	sw	t7,48(sp)
     950:	afb5003c 	sw	s5,60(sp)
     954:	afae002c 	sw	t6,44(sp)
     958:	460a4402 	mul.s	$f16,$f8,$f10
     95c:	afad0028 	sw	t5,40(sp)
     960:	afa00020 	sw	zero,32(sp)
     964:	afac001c 	sw	t4,28(sp)
     968:	afab0018 	sw	t3,24(sp)
     96c:	afaa0014 	sw	t2,20(sp)
     970:	afa90010 	sw	t1,16(sp)
     974:	4600810d 	trunc.w.s	$f4,$f16
     978:	02e02025 	move	a0,s7
     97c:	02602825 	move	a1,s3
     980:	02803025 	move	a2,s4
     984:	44022000 	mfc1	v0,$f4
     988:	02403825 	move	a3,s2
     98c:	00021400 	sll	v0,v0,0x10
     990:	00021403 	sra	v0,v0,0x10
     994:	0c000000 	jal	0 <func_808B4C30>
     998:	afa20024 	sw	v0,36(sp)
     99c:	26100004 	addiu	s0,s0,4
     9a0:	1616ffb3 	bne	s0,s6,870 <BgSpot16Bombstone_SpawnFragments+0xf8>
     9a4:	00000000 	nop
     9a8:	8fbf0094 	lw	ra,148(sp)
     9ac:	d7b40040 	ldc1	$f20,64(sp)
     9b0:	d7b60048 	ldc1	$f22,72(sp)
     9b4:	d7b80050 	ldc1	$f24,80(sp)
     9b8:	d7ba0058 	ldc1	$f26,88(sp)
     9bc:	d7bc0060 	ldc1	$f28,96(sp)
     9c0:	d7be0068 	ldc1	$f30,104(sp)
     9c4:	8fb00074 	lw	s0,116(sp)
     9c8:	8fb10078 	lw	s1,120(sp)
     9cc:	8fb2007c 	lw	s2,124(sp)
     9d0:	8fb30080 	lw	s3,128(sp)
     9d4:	8fb40084 	lw	s4,132(sp)
     9d8:	8fb50088 	lw	s5,136(sp)
     9dc:	8fb6008c 	lw	s6,140(sp)
     9e0:	8fb70090 	lw	s7,144(sp)
     9e4:	03e00008 	jr	ra
     9e8:	27bd00c8 	addiu	sp,sp,200

000009ec <func_808B561C>:
     9ec:	27bdffb8 	addiu	sp,sp,-72
     9f0:	afb40040 	sw	s4,64(sp)
     9f4:	afb00030 	sw	s0,48(sp)
     9f8:	afb3003c 	sw	s3,60(sp)
     9fc:	afb20038 	sw	s2,56(sp)
     a00:	afb10034 	sw	s1,52(sp)
     a04:	3c100000 	lui	s0,0x0
     a08:	3c140000 	lui	s4,0x0
     a0c:	00a09025 	move	s2,a1
     a10:	afbf0044 	sw	ra,68(sp)
     a14:	269402c2 	addiu	s4,s4,706
     a18:	261002b8 	addiu	s0,s0,696
     a1c:	24910024 	addiu	s1,a0,36
     a20:	24b31c24 	addiu	s3,a1,7204
     a24:	c6240004 	lwc1	$f4,4(s1)
     a28:	8e270000 	lw	a3,0(s1)
     a2c:	860e0000 	lh	t6,0(s0)
     a30:	e7a40010 	swc1	$f4,16(sp)
     a34:	c6260008 	lwc1	$f6,8(s1)
     a38:	afa00020 	sw	zero,32(sp)
     a3c:	afa0001c 	sw	zero,28(sp)
     a40:	afa00018 	sw	zero,24(sp)
     a44:	02602025 	move	a0,s3
     a48:	02402825 	move	a1,s2
     a4c:	240600cd 	li	a2,205
     a50:	afae0024 	sw	t6,36(sp)
     a54:	0c000000 	jal	0 <func_808B4C30>
     a58:	e7a60014 	swc1	$f6,20(sp)
     a5c:	10400003 	beqz	v0,a6c <func_808B561C+0x80>
     a60:	26100002 	addiu	s0,s0,2
     a64:	5614fff0 	bnel	s0,s4,a28 <func_808B561C+0x3c>
     a68:	c6240004 	lwc1	$f4,4(s1)
     a6c:	8fbf0044 	lw	ra,68(sp)
     a70:	8fb00030 	lw	s0,48(sp)
     a74:	8fb10034 	lw	s1,52(sp)
     a78:	8fb20038 	lw	s2,56(sp)
     a7c:	8fb3003c 	lw	s3,60(sp)
     a80:	8fb40040 	lw	s4,64(sp)
     a84:	03e00008 	jr	ra
     a88:	27bd0048 	addiu	sp,sp,72

00000a8c <func_808B56BC>:
     a8c:	27bdffc0 	addiu	sp,sp,-64
     a90:	afbf0024 	sw	ra,36(sp)
     a94:	afb00020 	sw	s0,32(sp)
     a98:	3c014302 	lui	at,0x4302
     a9c:	44813000 	mtc1	at,$f6
     aa0:	c4840090 	lwc1	$f4,144(a0)
     aa4:	00808025 	move	s0,a0
     aa8:	8ca61c44 	lw	a2,7236(a1)
     aac:	4606203c 	c.lt.s	$f4,$f6
     ab0:	3c014320 	lui	at,0x4320
     ab4:	4502003a 	bc1fl	ba0 <func_808B56BC+0x114>
     ab8:	8fbf0024 	lw	ra,36(sp)
     abc:	c4800094 	lwc1	$f0,148(a0)
     ac0:	44814000 	mtc1	at,$f8
     ac4:	3c01c120 	lui	at,0xc120
     ac8:	4608003c 	c.lt.s	$f0,$f8
     acc:	00000000 	nop
     ad0:	45020033 	bc1fl	ba0 <func_808B56BC+0x114>
     ad4:	8fbf0024 	lw	ra,36(sp)
     ad8:	44815000 	mtc1	at,$f10
     adc:	00000000 	nop
     ae0:	4600503e 	c.le.s	$f10,$f0
     ae4:	00000000 	nop
     ae8:	4502002d 	bc1fl	ba0 <func_808B56BC+0x114>
     aec:	8fbf0024 	lw	ra,36(sp)
     af0:	848e008a 	lh	t6,138(a0)
     af4:	848f00b6 	lh	t7,182(a0)
     af8:	01cf1023 	subu	v0,t6,t7
     afc:	04400003 	bltz	v0,b0c <func_808B56BC+0x80>
     b00:	00021823 	negu	v1,v0
     b04:	10000001 	b	b0c <func_808B56BC+0x80>
     b08:	00401825 	move	v1,v0
     b0c:	2464c001 	addiu	a0,v1,-16383
     b10:	00042400 	sll	a0,a0,0x10
     b14:	00042403 	sra	a0,a0,0x10
     b18:	58800021 	blezl	a0,ba0 <func_808B56BC+0x114>
     b1c:	8fbf0024 	lw	ra,36(sp)
     b20:	afa40028 	sw	a0,40(sp)
     b24:	0c000000 	jal	0 <func_808B4C30>
     b28:	afa6003c 	sw	a2,60(sp)
     b2c:	c6100090 	lwc1	$f16,144(s0)
     b30:	44809000 	mtc1	zero,$f18
     b34:	3c040000 	lui	a0,0x0
     b38:	46100082 	mul.s	$f2,$f0,$f16
     b3c:	3c050000 	lui	a1,0x0
     b40:	8fa6003c 	lw	a2,60(sp)
     b44:	24a50128 	addiu	a1,a1,296
     b48:	248400ec 	addiu	a0,a0,236
     b4c:	8fb80028 	lw	t8,40(sp)
     b50:	4602903e 	c.le.s	$f18,$f2
     b54:	00000000 	nop
     b58:	4502000d 	bc1fl	b90 <func_808B56BC+0x104>
     b5c:	8607001c 	lh	a3,28(s0)
     b60:	c606015c 	lwc1	$f6,348(s0)
     b64:	c4c40024 	lwc1	$f4,36(a2)
     b68:	c4d0002c 	lwc1	$f16,44(a2)
     b6c:	46061202 	mul.s	$f8,$f2,$f6
     b70:	46082280 	add.s	$f10,$f4,$f8
     b74:	e4ca0024 	swc1	$f10,36(a2)
     b78:	c6120160 	lwc1	$f18,352(s0)
     b7c:	46121182 	mul.s	$f6,$f2,$f18
     b80:	46068100 	add.s	$f4,$f16,$f6
     b84:	10000005 	b	b9c <func_808B56BC+0x110>
     b88:	e4c4002c 	swc1	$f4,44(a2)
     b8c:	8607001c 	lh	a3,28(s0)
     b90:	afb80010 	sw	t8,16(sp)
     b94:	0c000000 	jal	0 <func_808B4C30>
     b98:	240603a7 	li	a2,935
     b9c:	8fbf0024 	lw	ra,36(sp)
     ba0:	8fb00020 	lw	s0,32(sp)
     ba4:	27bd0040 	addiu	sp,sp,64
     ba8:	03e00008 	jr	ra
     bac:	00000000 	nop

00000bb0 <func_808B57E0>:
     bb0:	3c090000 	lui	t1,0x0
     bb4:	25290004 	addiu	t1,t1,4
     bb8:	27bdffe0 	addiu	sp,sp,-32
     bbc:	85220000 	lh	v0,0(t1)
     bc0:	afbf001c 	sw	ra,28(sp)
     bc4:	afa40020 	sw	a0,32(sp)
     bc8:	afa50024 	sw	a1,36(sp)
     bcc:	18400003 	blez	v0,bdc <func_808B57E0+0x2c>
     bd0:	8ca31c44 	lw	v1,7236(a1)
     bd4:	244fffff 	addiu	t7,v0,-1
     bd8:	a52f0000 	sh	t7,0(t1)
     bdc:	3c040000 	lui	a0,0x0
     be0:	24840000 	addiu	a0,a0,0
     be4:	8c820000 	lw	v0,0(a0)
     be8:	50400033 	beqzl	v0,cb8 <func_808B57E0+0x108>
     bec:	8c6c067c 	lw	t4,1660(v1)
     bf0:	8c580130 	lw	t8,304(v0)
     bf4:	57000004 	bnezl	t8,c08 <func_808B57E0+0x58>
     bf8:	85390000 	lh	t9,0(t1)
     bfc:	1000003d 	b	cf4 <func_808B57E0+0x144>
     c00:	ac800000 	sw	zero,0(a0)
     c04:	85390000 	lh	t9,0(t1)
     c08:	3c0144af 	lui	at,0x44af
     c0c:	5f20003a 	bgtzl	t9,cf8 <func_808B57E0+0x148>
     c10:	8fbf001c 	lw	ra,28(sp)
     c14:	c4440028 	lwc1	$f4,40(v0)
     c18:	44813000 	mtc1	at,$f6
     c1c:	3c010000 	lui	at,0x0
     c20:	4606203c 	c.lt.s	$f4,$f6
     c24:	00000000 	nop
     c28:	45020033 	bc1fl	cf8 <func_808B57E0+0x148>
     c2c:	8fbf001c 	lw	ra,28(sp)
     c30:	c42a01b8 	lwc1	$f10,440(at)
     c34:	3c010000 	lui	at,0x0
     c38:	c43201bc 	lwc1	$f18,444(at)
     c3c:	c4480024 	lwc1	$f8,36(v0)
     c40:	c450002c 	lwc1	$f16,44(v0)
     c44:	460a4300 	add.s	$f12,$f8,$f10
     c48:	0c000000 	jal	0 <func_808B4C30>
     c4c:	46128380 	add.s	$f14,$f16,$f18
     c50:	3c010000 	lui	at,0x0
     c54:	c42401c0 	lwc1	$f4,448(at)
     c58:	3c040000 	lui	a0,0x0
     c5c:	3c090000 	lui	t1,0x0
     c60:	4604003c 	c.lt.s	$f0,$f4
     c64:	25290004 	addiu	t1,t1,4
     c68:	24840000 	addiu	a0,a0,0
     c6c:	45020022 	bc1fl	cf8 <func_808B57E0+0x148>
     c70:	8fbf001c 	lw	ra,28(sp)
     c74:	8c820000 	lw	v0,0(a0)
     c78:	844a001c 	lh	t2,28(v0)
     c7c:	5540001e 	bnezl	t2,cf8 <func_808B57E0+0x148>
     c80:	8fbf001c 	lw	ra,28(sp)
     c84:	844801f8 	lh	t0,504(v0)
     c88:	24051054 	li	a1,4180
     c8c:	00003825 	move	a3,zero
     c90:	19000018 	blez	t0,cf4 <func_808B57E0+0x144>
     c94:	250b0014 	addiu	t3,t0,20
     c98:	a52b0000 	sh	t3,0(t1)
     c9c:	85260000 	lh	a2,0(t1)
     ca0:	8fa40024 	lw	a0,36(sp)
     ca4:	0c000000 	jal	0 <func_808B4C30>
     ca8:	afa00010 	sw	zero,16(sp)
     cac:	10000012 	b	cf8 <func_808B57E0+0x148>
     cb0:	8fbf001c 	lw	ra,28(sp)
     cb4:	8c6c067c 	lw	t4,1660(v1)
     cb8:	318d0800 	andi	t5,t4,0x800
     cbc:	51a0000e 	beqzl	t5,cf8 <func_808B57E0+0x148>
     cc0:	8fbf001c 	lw	ra,28(sp)
     cc4:	8c6203ac 	lw	v0,940(v1)
     cc8:	5040000b 	beqzl	v0,cf8 <func_808B57E0+0x148>
     ccc:	8fbf001c 	lw	ra,28(sp)
     cd0:	904e0002 	lbu	t6,2(v0)
     cd4:	24010003 	li	at,3
     cd8:	55c10007 	bnel	t6,at,cf8 <func_808B57E0+0x148>
     cdc:	8fbf001c 	lw	ra,28(sp)
     ce0:	844f0000 	lh	t7,0(v0)
     ce4:	2401004c 	li	at,76
     ce8:	55e10003 	bnel	t7,at,cf8 <func_808B57E0+0x148>
     cec:	8fbf001c 	lw	ra,28(sp)
     cf0:	ac820000 	sw	v0,0(a0)
     cf4:	8fbf001c 	lw	ra,28(sp)
     cf8:	27bd0020 	addiu	sp,sp,32
     cfc:	03e00008 	jr	ra
     d00:	00000000 	nop

00000d04 <func_808B5934>:
     d04:	3c0e0000 	lui	t6,0x0
     d08:	3c0f0000 	lui	t7,0x0
     d0c:	25ce0000 	addiu	t6,t6,0
     d10:	25ef0000 	addiu	t7,t7,0
     d14:	ac8e0134 	sw	t6,308(a0)
     d18:	03e00008 	jr	ra
     d1c:	ac8f014c 	sw	t7,332(a0)

00000d20 <func_808B5950>:
     d20:	27bdffc8 	addiu	sp,sp,-56
     d24:	afbf0024 	sw	ra,36(sp)
     d28:	afb10020 	sw	s1,32(sp)
     d2c:	afb0001c 	sw	s0,28(sp)
     d30:	00a08025 	move	s0,a1
     d34:	0c000000 	jal	0 <func_808B4C30>
     d38:	00808825 	move	s1,a0
     d3c:	02202025 	move	a0,s1
     d40:	0c000000 	jal	0 <func_808B4C30>
     d44:	02002825 	move	a1,s0
     d48:	922201d5 	lbu	v0,469(s1)
     d4c:	3c010001 	lui	at,0x1
     d50:	34211e60 	ori	at,at,0x1e60
     d54:	304e0002 	andi	t6,v0,0x2
     d58:	11c00018 	beqz	t6,dbc <func_808B5950+0x9c>
     d5c:	02002025 	move	a0,s0
     d60:	304ffffd 	andi	t7,v0,0xfffd
     d64:	a22f01d5 	sb	t7,469(s1)
     d68:	02202025 	move	a0,s1
     d6c:	0c000000 	jal	0 <func_808B4C30>
     d70:	02002825 	move	a1,s0
     d74:	02002025 	move	a0,s0
     d78:	24051054 	li	a1,4180
     d7c:	24060032 	li	a2,50
     d80:	00003825 	move	a3,zero
     d84:	0c000000 	jal	0 <func_808B4C30>
     d88:	afa00010 	sw	zero,16(sp)
     d8c:	02002025 	move	a0,s0
     d90:	0c000000 	jal	0 <func_808B4C30>
     d94:	86250156 	lh	a1,342(s1)
     d98:	3c020000 	lui	v0,0x0
     d9c:	24420000 	addiu	v0,v0,0
     da0:	94580ed8 	lhu	t8,3800(v0)
     da4:	02202025 	move	a0,s1
     da8:	37190008 	ori	t9,t8,0x8
     dac:	0c000000 	jal	0 <func_808B4C30>
     db0:	a4590ed8 	sh	t9,3800(v0)
     db4:	1000000e 	b	df0 <func_808B5950+0xd0>
     db8:	00000000 	nop
     dbc:	02012821 	addu	a1,s0,at
     dc0:	afa50030 	sw	a1,48(sp)
     dc4:	0c000000 	jal	0 <func_808B4C30>
     dc8:	262601c4 	addiu	a2,s1,452
     dcc:	26260164 	addiu	a2,s1,356
     dd0:	afa6002c 	sw	a2,44(sp)
     dd4:	02002025 	move	a0,s0
     dd8:	0c000000 	jal	0 <func_808B4C30>
     ddc:	8fa50030 	lw	a1,48(sp)
     de0:	8fa6002c 	lw	a2,44(sp)
     de4:	02002025 	move	a0,s0
     de8:	0c000000 	jal	0 <func_808B4C30>
     dec:	8fa50030 	lw	a1,48(sp)
     df0:	3c030000 	lui	v1,0x0
     df4:	8c630000 	lw	v1,0(v1)
     df8:	24010001 	li	at,1
     dfc:	02202025 	move	a0,s1
     e00:	846211d4 	lh	v0,4564(v1)
     e04:	14410008 	bne	v0,at,e28 <func_808B5950+0x108>
     e08:	00000000 	nop
     e0c:	0c000000 	jal	0 <func_808B4C30>
     e10:	02002825 	move	a1,s0
     e14:	3c090000 	lui	t1,0x0
     e18:	8d290000 	lw	t1,0(t1)
     e1c:	2408fff6 	li	t0,-10
     e20:	10000004 	b	e34 <func_808B5950+0x114>
     e24:	a52811d4 	sh	t0,4564(t1)
     e28:	04410002 	bgez	v0,e34 <func_808B5950+0x114>
     e2c:	244a0001 	addiu	t2,v0,1
     e30:	a46a11d4 	sh	t2,4564(v1)
     e34:	8fbf0024 	lw	ra,36(sp)
     e38:	8fb0001c 	lw	s0,28(sp)
     e3c:	8fb10020 	lw	s1,32(sp)
     e40:	03e00008 	jr	ra
     e44:	27bd0038 	addiu	sp,sp,56

00000e48 <func_808B5A78>:
     e48:	3c0e0000 	lui	t6,0x0
     e4c:	25ce0000 	addiu	t6,t6,0
     e50:	a4800154 	sh	zero,340(a0)
     e54:	a4800158 	sh	zero,344(a0)
     e58:	ac800134 	sw	zero,308(a0)
     e5c:	03e00008 	jr	ra
     e60:	ac8e014c 	sw	t6,332(a0)

00000e64 <func_808B5A94>:
     e64:	27bdffe8 	addiu	sp,sp,-24
     e68:	afbf0014 	sw	ra,20(sp)
     e6c:	0c000000 	jal	0 <func_808B4C30>
     e70:	afa40018 	sw	a0,24(sp)
     e74:	8fa60018 	lw	a2,24(sp)
     e78:	24010038 	li	at,56
     e7c:	24044802 	li	a0,18434
     e80:	84c20154 	lh	v0,340(a2)
     e84:	54410006 	bnel	v0,at,ea0 <func_808B5A94+0x3c>
     e88:	2841003d 	slti	at,v0,61
     e8c:	0c000000 	jal	0 <func_808B4C30>
     e90:	afa60018 	sw	a2,24(sp)
     e94:	8fa60018 	lw	a2,24(sp)
     e98:	84c20154 	lh	v0,340(a2)
     e9c:	2841003d 	slti	at,v0,61
     ea0:	54200004 	bnezl	at,eb4 <func_808B5A94+0x50>
     ea4:	8fbf0014 	lw	ra,20(sp)
     ea8:	0c000000 	jal	0 <func_808B4C30>
     eac:	00c02025 	move	a0,a2
     eb0:	8fbf0014 	lw	ra,20(sp)
     eb4:	27bd0018 	addiu	sp,sp,24
     eb8:	03e00008 	jr	ra
     ebc:	00000000 	nop

00000ec0 <func_808B5AF0>:
     ec0:	3c0e0000 	lui	t6,0x0
     ec4:	25ce0000 	addiu	t6,t6,0
     ec8:	ac8e014c 	sw	t6,332(a0)
     ecc:	03e00008 	jr	ra
     ed0:	ac800134 	sw	zero,308(a0)

00000ed4 <func_808B5B04>:
     ed4:	27bdffe8 	addiu	sp,sp,-24
     ed8:	afa40018 	sw	a0,24(sp)
     edc:	3c010001 	lui	at,0x1
     ee0:	8fae0018 	lw	t6,24(sp)
     ee4:	342117a4 	ori	at,at,0x17a4
     ee8:	afbf0014 	sw	ra,20(sp)
     eec:	00a12021 	addu	a0,a1,at
     ef0:	0c000000 	jal	0 <func_808B4C30>
     ef4:	81c50214 	lb	a1,532(t6)
     ef8:	50400008 	beqzl	v0,f1c <func_808B5B04+0x48>
     efc:	8fbf0014 	lw	ra,20(sp)
     f00:	0c000000 	jal	0 <func_808B4C30>
     f04:	8fa40018 	lw	a0,24(sp)
     f08:	8fb80018 	lw	t8,24(sp)
     f0c:	3c0f0000 	lui	t7,0x0
     f10:	25ef0000 	addiu	t7,t7,0
     f14:	af0f0134 	sw	t7,308(t8)
     f18:	8fbf0014 	lw	ra,20(sp)
     f1c:	27bd0018 	addiu	sp,sp,24
     f20:	03e00008 	jr	ra
     f24:	00000000 	nop

00000f28 <func_808B5B58>:
     f28:	3c0e0000 	lui	t6,0x0
     f2c:	25ce0000 	addiu	t6,t6,0
     f30:	a4800154 	sh	zero,340(a0)
     f34:	03e00008 	jr	ra
     f38:	ac8e014c 	sw	t6,332(a0)

00000f3c <func_808B5B6C>:
     f3c:	27bdffd8 	addiu	sp,sp,-40
     f40:	afbf0024 	sw	ra,36(sp)
     f44:	afb00020 	sw	s0,32(sp)
     f48:	00808025 	move	s0,a0
     f4c:	0c000000 	jal	0 <func_808B4C30>
     f50:	afa5002c 	sw	a1,44(sp)
     f54:	860e00b4 	lh	t6,180(s0)
     f58:	860f0210 	lh	t7,528(s0)
     f5c:	861900b8 	lh	t9,184(s0)
     f60:	86080212 	lh	t0,530(s0)
     f64:	860a0154 	lh	t2,340(s0)
     f68:	01cfc021 	addu	t8,t6,t7
     f6c:	03284821 	addu	t1,t9,t0
     f70:	2941003d 	slti	at,t2,61
     f74:	a61800b4 	sh	t8,180(s0)
     f78:	14200005 	bnez	at,f90 <func_808B5B6C+0x54>
     f7c:	a60900b8 	sh	t1,184(s0)
     f80:	0c000000 	jal	0 <func_808B4C30>
     f84:	02002025 	move	a0,s0
     f88:	10000026 	b	1024 <func_808B5B6C+0xe8>
     f8c:	8fbf0024 	lw	ra,36(sp)
     f90:	96020088 	lhu	v0,136(s0)
     f94:	02002025 	move	a0,s0
     f98:	304b0008 	andi	t3,v0,0x8
     f9c:	1560000a 	bnez	t3,fc8 <func_808B5B6C+0x8c>
     fa0:	304c0001 	andi	t4,v0,0x1
     fa4:	11800016 	beqz	t4,1000 <func_808B5B6C+0xc4>
     fa8:	02002825 	move	a1,s0
     fac:	c6040060 	lwc1	$f4,96(s0)
     fb0:	44803000 	mtc1	zero,$f6
     fb4:	00000000 	nop
     fb8:	4606203c 	c.lt.s	$f4,$f6
     fbc:	00000000 	nop
     fc0:	45020010 	bc1fl	1004 <func_808B5B6C+0xc8>
     fc4:	44804000 	mtc1	zero,$f8
     fc8:	0c000000 	jal	0 <func_808B4C30>
     fcc:	8fa5002c 	lw	a1,44(sp)
     fd0:	02002025 	move	a0,s0
     fd4:	0c000000 	jal	0 <func_808B4C30>
     fd8:	8fa5002c 	lw	a1,44(sp)
     fdc:	8fa4002c 	lw	a0,44(sp)
     fe0:	26050024 	addiu	a1,s0,36
     fe4:	24060014 	li	a2,20
     fe8:	0c000000 	jal	0 <func_808B4C30>
     fec:	24072852 	li	a3,10322
     ff0:	0c000000 	jal	0 <func_808B4C30>
     ff4:	02002025 	move	a0,s0
     ff8:	1000000a 	b	1024 <func_808B5B6C+0xe8>
     ffc:	8fbf0024 	lw	ra,36(sp)
    1000:	44804000 	mtc1	zero,$f8
    1004:	240d0005 	li	t5,5
    1008:	afad0014 	sw	t5,20(sp)
    100c:	8fa4002c 	lw	a0,44(sp)
    1010:	3c06418c 	lui	a2,0x418c
    1014:	3c07420c 	lui	a3,0x420c
    1018:	0c000000 	jal	0 <func_808B4C30>
    101c:	e7a80010 	swc1	$f8,16(sp)
    1020:	8fbf0024 	lw	ra,36(sp)
    1024:	8fb00020 	lw	s0,32(sp)
    1028:	27bd0028 	addiu	sp,sp,40
    102c:	03e00008 	jr	ra
    1030:	00000000 	nop

00001034 <BgSpot16Bombstone_Update>:
    1034:	27bdffe8 	addiu	sp,sp,-24
    1038:	afbf0014 	sw	ra,20(sp)
    103c:	848e0154 	lh	t6,340(a0)
    1040:	8c82014c 	lw	v0,332(a0)
    1044:	25cf0001 	addiu	t7,t6,1
    1048:	10400003 	beqz	v0,1058 <BgSpot16Bombstone_Update+0x24>
    104c:	a48f0154 	sh	t7,340(a0)
    1050:	0040f809 	jalr	v0
    1054:	00000000 	nop
    1058:	8fbf0014 	lw	ra,20(sp)
    105c:	27bd0018 	addiu	sp,sp,24
    1060:	03e00008 	jr	ra
    1064:	00000000 	nop

00001068 <BgSpot16Bombstone_Draw>:
    1068:	27bdffb0 	addiu	sp,sp,-80
    106c:	afb10018 	sw	s1,24(sp)
    1070:	00a08825 	move	s1,a1
    1074:	afbf001c 	sw	ra,28(sp)
    1078:	afb00014 	sw	s0,20(sp)
    107c:	afa40050 	sw	a0,80(sp)
    1080:	8ca50000 	lw	a1,0(a1)
    1084:	3c060000 	lui	a2,0x0
    1088:	24c60144 	addiu	a2,a2,324
    108c:	27a40034 	addiu	a0,sp,52
    1090:	240704e5 	li	a3,1253
    1094:	0c000000 	jal	0 <func_808B4C30>
    1098:	00a08025 	move	s0,a1
    109c:	0c000000 	jal	0 <func_808B4C30>
    10a0:	8e240000 	lw	a0,0(s1)
    10a4:	8e0202c0 	lw	v0,704(s0)
    10a8:	3c0fda38 	lui	t7,0xda38
    10ac:	35ef0003 	ori	t7,t7,0x3
    10b0:	244e0008 	addiu	t6,v0,8
    10b4:	ae0e02c0 	sw	t6,704(s0)
    10b8:	ac4f0000 	sw	t7,0(v0)
    10bc:	8e240000 	lw	a0,0(s1)
    10c0:	3c050000 	lui	a1,0x0
    10c4:	24a50160 	addiu	a1,a1,352
    10c8:	240604e9 	li	a2,1257
    10cc:	0c000000 	jal	0 <func_808B4C30>
    10d0:	afa20030 	sw	v0,48(sp)
    10d4:	8fa30030 	lw	v1,48(sp)
    10d8:	240100ff 	li	at,255
    10dc:	3c060000 	lui	a2,0x0
    10e0:	ac620004 	sw	v0,4(v1)
    10e4:	8fa40050 	lw	a0,80(sp)
    10e8:	24c6017c 	addiu	a2,a2,380
    10ec:	240704fa 	li	a3,1274
    10f0:	8498001c 	lh	t8,28(a0)
    10f4:	5701000a 	bnel	t8,at,1120 <BgSpot16Bombstone_Draw+0xb8>
    10f8:	8e0202c0 	lw	v0,704(s0)
    10fc:	8e0202c0 	lw	v0,704(s0)
    1100:	3c08de00 	lui	t0,0xde00
    1104:	24590008 	addiu	t9,v0,8
    1108:	ae1902c0 	sw	t9,704(s0)
    110c:	ac480000 	sw	t0,0(v0)
    1110:	8c890150 	lw	t1,336(a0)
    1114:	10000017 	b	1174 <BgSpot16Bombstone_Draw+0x10c>
    1118:	ac490004 	sw	t1,4(v0)
    111c:	8e0202c0 	lw	v0,704(s0)
    1120:	3c0bdb06 	lui	t3,0xdb06
    1124:	356b0018 	ori	t3,t3,0x18
    1128:	244a0008 	addiu	t2,v0,8
    112c:	ae0a02c0 	sw	t2,704(s0)
    1130:	ac4b0000 	sw	t3,0(v0)
    1134:	808c0214 	lb	t4,532(a0)
    1138:	3c0f0001 	lui	t7,0x1
    113c:	3c19de00 	lui	t9,0xde00
    1140:	000c6900 	sll	t5,t4,0x4
    1144:	01ac6821 	addu	t5,t5,t4
    1148:	000d6880 	sll	t5,t5,0x2
    114c:	022d7021 	addu	t6,s1,t5
    1150:	01ee7821 	addu	t7,t7,t6
    1154:	8def17b4 	lw	t7,6068(t7)
    1158:	ac4f0004 	sw	t7,4(v0)
    115c:	8e0202c0 	lw	v0,704(s0)
    1160:	24580008 	addiu	t8,v0,8
    1164:	ae1802c0 	sw	t8,704(s0)
    1168:	ac590000 	sw	t9,0(v0)
    116c:	8c880150 	lw	t0,336(a0)
    1170:	ac480004 	sw	t0,4(v0)
    1174:	27a40034 	addiu	a0,sp,52
    1178:	0c000000 	jal	0 <func_808B4C30>
    117c:	8e250000 	lw	a1,0(s1)
    1180:	8fbf001c 	lw	ra,28(sp)
    1184:	8fb00014 	lw	s0,20(sp)
    1188:	8fb10018 	lw	s1,24(sp)
    118c:	03e00008 	jr	ra
    1190:	27bd0050 	addiu	sp,sp,80
	...
