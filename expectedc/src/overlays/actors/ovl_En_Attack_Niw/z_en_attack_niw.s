
build/src/overlays/actors/ovl_En_Attack_Niw/z_en_attack_niw.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnAttackNiw_Init>:
       0:	27bdffd0 	addiu	sp,sp,-48
       4:	afa50034 	sw	a1,52(sp)
       8:	afbf002c 	sw	ra,44(sp)
       c:	afb00028 	sw	s0,40(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	0c000000 	jal	0 <EnAttackNiw_Init>
      1c:	24a50020 	addiu	a1,a1,32
      20:	3c060000 	lui	a2,0x0
      24:	24c60000 	addiu	a2,a2,0
      28:	260400b4 	addiu	a0,s0,180
      2c:	24050000 	li	a1,0
      30:	0c000000 	jal	0 <EnAttackNiw_Init>
      34:	3c0741c8 	lui	a3,0x41c8
      38:	3c060000 	lui	a2,0x0
      3c:	3c070000 	lui	a3,0x0
      40:	260e0190 	addiu	t6,s0,400
      44:	260f01f0 	addiu	t7,s0,496
      48:	24180010 	li	t8,16
      4c:	afb80018 	sw	t8,24(sp)
      50:	afaf0014 	sw	t7,20(sp)
      54:	afae0010 	sw	t6,16(sp)
      58:	24e70000 	addiu	a3,a3,0
      5c:	24c60000 	addiu	a2,a2,0
      60:	8fa40034 	lw	a0,52(sp)
      64:	0c000000 	jal	0 <EnAttackNiw_Init>
      68:	2605014c 	addiu	a1,s0,332
      6c:	8619001c 	lh	t9,28(s0)
      70:	02002025 	move	a0,s0
      74:	3c053c23 	lui	a1,0x3c23
      78:	07210002 	bgez	t9,84 <EnAttackNiw_Init+0x84>
      7c:	00000000 	nop
      80:	a600001c 	sh	zero,28(s0)
      84:	0c000000 	jal	0 <EnAttackNiw_Init>
      88:	34a5d70a 	ori	a1,a1,0xd70a
      8c:	44802000 	mtc1	zero,$f4
      90:	3c0142c8 	lui	at,0x42c8
      94:	44816000 	mtc1	at,$f12
      98:	0c000000 	jal	0 <EnAttackNiw_Init>
      9c:	e604006c 	swc1	$f4,108(s0)
      a0:	3c014120 	lui	at,0x4120
      a4:	44816000 	mtc1	at,$f12
      a8:	0c000000 	jal	0 <EnAttackNiw_Init>
      ac:	e6000298 	swc1	$f0,664(s0)
      b0:	3c0142c8 	lui	at,0x42c8
      b4:	44816000 	mtc1	at,$f12
      b8:	0c000000 	jal	0 <EnAttackNiw_Init>
      bc:	e600029c 	swc1	$f0,668(s0)
      c0:	3c053c23 	lui	a1,0x3c23
      c4:	e60002a0 	swc1	$f0,672(s0)
      c8:	34a5d70a 	ori	a1,a1,0xd70a
      cc:	0c000000 	jal	0 <EnAttackNiw_Init>
      d0:	02002025 	move	a0,s0
      d4:	8e080004 	lw	t0,4(s0)
      d8:	2401fffe 	li	at,-2
      dc:	01014824 	and	t1,t0,at
      e0:	0c000000 	jal	0 <EnAttackNiw_Init>
      e4:	ae090004 	sw	t1,4(s0)
      e8:	3c013f00 	lui	at,0x3f00
      ec:	44813000 	mtc1	at,$f6
      f0:	3c010000 	lui	at,0x0
      f4:	c42a0000 	lwc1	$f10,0(at)
      f8:	46060201 	sub.s	$f8,$f0,$f6
      fc:	3c0b0000 	lui	t3,0x0
     100:	256b0000 	addiu	t3,t3,0
     104:	ae0b0250 	sw	t3,592(s0)
     108:	460a4402 	mul.s	$f16,$f8,$f10
     10c:	4600848d 	trunc.w.s	$f18,$f16
     110:	44029000 	mfc1	v0,$f18
     114:	00000000 	nop
     118:	a6020032 	sh	v0,50(s0)
     11c:	a60200b6 	sh	v0,182(s0)
     120:	8fbf002c 	lw	ra,44(sp)
     124:	8fb00028 	lw	s0,40(sp)
     128:	27bd0030 	addiu	sp,sp,48
     12c:	03e00008 	jr	ra
     130:	00000000 	nop

00000134 <EnAttackNiw_Destroy>:
     134:	afa50004 	sw	a1,4(sp)
     138:	8c830118 	lw	v1,280(a0)
     13c:	10600008 	beqz	v1,160 <EnAttackNiw_Destroy+0x2c>
     140:	00601025 	move	v0,v1
     144:	8c6e0130 	lw	t6,304(v1)
     148:	11c00005 	beqz	t6,160 <EnAttackNiw_Destroy+0x2c>
     14c:	00000000 	nop
     150:	84630296 	lh	v1,662(v1)
     154:	18600002 	blez	v1,160 <EnAttackNiw_Destroy+0x2c>
     158:	246fffff 	addiu	t7,v1,-1
     15c:	a44f0296 	sh	t7,662(v0)
     160:	03e00008 	jr	ra
     164:	00000000 	nop

00000168 <func_809B5268>:
     168:	27bdffe0 	addiu	sp,sp,-32
     16c:	afbf001c 	sw	ra,28(sp)
     170:	afb00018 	sw	s0,24(sp)
     174:	afa50024 	sw	a1,36(sp)
     178:	afa60028 	sw	a2,40(sp)
     17c:	848e0254 	lh	t6,596(a0)
     180:	00063400 	sll	a2,a2,0x10
     184:	00063403 	sra	a2,a2,0x10
     188:	15c0001d 	bnez	t6,200 <func_809B5268+0x98>
     18c:	00808025 	move	s0,a0
     190:	14c00004 	bnez	a2,1a4 <func_809B5268+0x3c>
     194:	3c010000 	lui	at,0x0
     198:	44801000 	mtc1	zero,$f2
     19c:	10000004 	b	1b0 <func_809B5268+0x48>
     1a0:	e4820264 	swc1	$f2,612(a0)
     1a4:	c4240004 	lwc1	$f4,4(at)
     1a8:	44801000 	mtc1	zero,$f2
     1ac:	e6040264 	swc1	$f4,612(s0)
     1b0:	860f028e 	lh	t7,654(s0)
     1b4:	24190003 	li	t9,3
     1b8:	a6190254 	sh	t9,596(s0)
     1bc:	25f80001 	addiu	t8,t7,1
     1c0:	a618028e 	sh	t8,654(s0)
     1c4:	8608028e 	lh	t0,654(s0)
     1c8:	31090001 	andi	t1,t0,0x1
     1cc:	5520000d 	bnezl	t1,204 <func_809B5268+0x9c>
     1d0:	860c0258 	lh	t4,600(s0)
     1d4:	14c0000a 	bnez	a2,200 <func_809B5268+0x98>
     1d8:	e6020264 	swc1	$f2,612(s0)
     1dc:	3c0141f0 	lui	at,0x41f0
     1e0:	44816000 	mtc1	at,$f12
     1e4:	0c000000 	jal	0 <EnAttackNiw_Init>
     1e8:	a7a6002a 	sh	a2,42(sp)
     1ec:	4600018d 	trunc.w.s	$f6,$f0
     1f0:	87a6002a 	lh	a2,42(sp)
     1f4:	440b3000 	mfc1	t3,$f6
     1f8:	00000000 	nop
     1fc:	a60b0254 	sh	t3,596(s0)
     200:	860c0258 	lh	t4,600(s0)
     204:	44801000 	mtc1	zero,$f2
     208:	55800056 	bnezl	t4,364 <func_809B5268+0x1fc>
     20c:	c6000288 	lwc1	$f0,648(s0)
     210:	860d0292 	lh	t5,658(s0)
     214:	2cc10006 	sltiu	at,a2,6
     218:	0006c880 	sll	t9,a2,0x2
     21c:	25ae0001 	addiu	t6,t5,1
     220:	a60e0292 	sh	t6,658(s0)
     224:	860f0292 	lh	t7,658(s0)
     228:	31f80001 	andi	t8,t7,0x1
     22c:	1020004c 	beqz	at,360 <func_809B5268+0x1f8>
     230:	a6180292 	sh	t8,658(s0)
     234:	3c010000 	lui	at,0x0
     238:	00390821 	addu	at,at,t9
     23c:	8c390008 	lw	t9,8(at)
     240:	03200008 	jr	t9
     244:	00000000 	nop
     248:	e602026c 	swc1	$f2,620(s0)
     24c:	10000044 	b	360 <func_809B5268+0x1f8>
     250:	e6020268 	swc1	$f2,616(s0)
     254:	24080003 	li	t0,3
     258:	a6080258 	sh	t0,600(s0)
     25c:	3c010000 	lui	at,0x0
     260:	c4280020 	lwc1	$f8,32(at)
     264:	86090292 	lh	t1,658(s0)
     268:	3c010000 	lui	at,0x0
     26c:	e608026c 	swc1	$f8,620(s0)
     270:	c42a0024 	lwc1	$f10,36(at)
     274:	1520003a 	bnez	t1,360 <func_809B5268+0x1f8>
     278:	e60a0268 	swc1	$f10,616(s0)
     27c:	e602026c 	swc1	$f2,620(s0)
     280:	10000037 	b	360 <func_809B5268+0x1f8>
     284:	e6020268 	swc1	$f2,616(s0)
     288:	3c010000 	lui	at,0x0
     28c:	c4200028 	lwc1	$f0,40(at)
     290:	3c010000 	lui	at,0x0
     294:	c422002c 	lwc1	$f2,44(at)
     298:	240a0002 	li	t2,2
     29c:	a60a0258 	sh	t2,600(s0)
     2a0:	3c010000 	lui	at,0x0
     2a4:	c4300030 	lwc1	$f16,48(at)
     2a8:	3c010000 	lui	at,0x0
     2ac:	860b0292 	lh	t3,658(s0)
     2b0:	e610026c 	swc1	$f16,620(s0)
     2b4:	c4320034 	lwc1	$f18,52(at)
     2b8:	e6000280 	swc1	$f0,640(s0)
     2bc:	e6000278 	swc1	$f0,632(s0)
     2c0:	e6020284 	swc1	$f2,644(s0)
     2c4:	e602027c 	swc1	$f2,636(s0)
     2c8:	15600025 	bnez	t3,360 <func_809B5268+0x1f8>
     2cc:	e6120268 	swc1	$f18,616(s0)
     2d0:	3c0145fa 	lui	at,0x45fa
     2d4:	44810000 	mtc1	at,$f0
     2d8:	00000000 	nop
     2dc:	e6000278 	swc1	$f0,632(s0)
     2e0:	1000001f 	b	360 <func_809B5268+0x1f8>
     2e4:	e6000280 	swc1	$f0,640(s0)
     2e8:	3c010000 	lui	at,0x0
     2ec:	c4200038 	lwc1	$f0,56(at)
     2f0:	860d0292 	lh	t5,658(s0)
     2f4:	240c0002 	li	t4,2
     2f8:	a60c0258 	sh	t4,600(s0)
     2fc:	e6000278 	swc1	$f0,632(s0)
     300:	15a00017 	bnez	t5,360 <func_809B5268+0x1f8>
     304:	e6000280 	swc1	$f0,640(s0)
     308:	3c010000 	lui	at,0x0
     30c:	c420003c 	lwc1	$f0,60(at)
     310:	e6000278 	swc1	$f0,632(s0)
     314:	10000012 	b	360 <func_809B5268+0x1f8>
     318:	e6000280 	swc1	$f0,640(s0)
     31c:	240e0005 	li	t6,5
     320:	a60e0256 	sh	t6,598(s0)
     324:	860f0256 	lh	t7,598(s0)
     328:	1000000d 	b	360 <func_809B5268+0x1f8>
     32c:	a60f0254 	sh	t7,596(s0)
     330:	3c010000 	lui	at,0x0
     334:	c4200040 	lwc1	$f0,64(at)
     338:	86190292 	lh	t9,658(s0)
     33c:	24180005 	li	t8,5
     340:	a6180258 	sh	t8,600(s0)
     344:	e6000278 	swc1	$f0,632(s0)
     348:	17200005 	bnez	t9,360 <func_809B5268+0x1f8>
     34c:	e6000280 	swc1	$f0,640(s0)
     350:	3c010000 	lui	at,0x0
     354:	c4200044 	lwc1	$f0,68(at)
     358:	e6000278 	swc1	$f0,632(s0)
     35c:	e6000280 	swc1	$f0,640(s0)
     360:	c6000288 	lwc1	$f0,648(s0)
     364:	c60402c0 	lwc1	$f4,704(s0)
     368:	260402c0 	addiu	a0,s0,704
     36c:	3c063f00 	lui	a2,0x3f00
     370:	46002032 	c.eq.s	$f4,$f0
     374:	00000000 	nop
     378:	45030005 	bc1tl	390 <func_809B5268+0x228>
     37c:	c6000264 	lwc1	$f0,612(s0)
     380:	44050000 	mfc1	a1,$f0
     384:	0c000000 	jal	0 <EnAttackNiw_Init>
     388:	3c07457a 	lui	a3,0x457a
     38c:	c6000264 	lwc1	$f0,612(s0)
     390:	c60602bc 	lwc1	$f6,700(s0)
     394:	260402bc 	addiu	a0,s0,700
     398:	3c063f00 	lui	a2,0x3f00
     39c:	46003032 	c.eq.s	$f6,$f0
     3a0:	00000000 	nop
     3a4:	45030005 	bc1tl	3bc <func_809B5268+0x254>
     3a8:	c600026c 	lwc1	$f0,620(s0)
     3ac:	44050000 	mfc1	a1,$f0
     3b0:	0c000000 	jal	0 <EnAttackNiw_Init>
     3b4:	3c07457a 	lui	a3,0x457a
     3b8:	c600026c 	lwc1	$f0,620(s0)
     3bc:	c60802a4 	lwc1	$f8,676(s0)
     3c0:	3c063f4c 	lui	a2,0x3f4c
     3c4:	34c6cccd 	ori	a2,a2,0xcccd
     3c8:	46004032 	c.eq.s	$f8,$f0
     3cc:	260402a4 	addiu	a0,s0,676
     3d0:	3c0745da 	lui	a3,0x45da
     3d4:	45030005 	bc1tl	3ec <func_809B5268+0x284>
     3d8:	c6000280 	lwc1	$f0,640(s0)
     3dc:	44050000 	mfc1	a1,$f0
     3e0:	0c000000 	jal	0 <EnAttackNiw_Init>
     3e4:	34e7c000 	ori	a3,a3,0xc000
     3e8:	c6000280 	lwc1	$f0,640(s0)
     3ec:	c60a02a8 	lwc1	$f10,680(s0)
     3f0:	3c063f4c 	lui	a2,0x3f4c
     3f4:	34c6cccd 	ori	a2,a2,0xcccd
     3f8:	46005032 	c.eq.s	$f10,$f0
     3fc:	260402a8 	addiu	a0,s0,680
     400:	3c0745da 	lui	a3,0x45da
     404:	45030005 	bc1tl	41c <func_809B5268+0x2b4>
     408:	c6000284 	lwc1	$f0,644(s0)
     40c:	44050000 	mfc1	a1,$f0
     410:	0c000000 	jal	0 <EnAttackNiw_Init>
     414:	34e7c000 	ori	a3,a3,0xc000
     418:	c6000284 	lwc1	$f0,644(s0)
     41c:	c61002ac 	lwc1	$f16,684(s0)
     420:	3c063f4c 	lui	a2,0x3f4c
     424:	34c6cccd 	ori	a2,a2,0xcccd
     428:	46008032 	c.eq.s	$f16,$f0
     42c:	260402ac 	addiu	a0,s0,684
     430:	3c0745da 	lui	a3,0x45da
     434:	45030005 	bc1tl	44c <func_809B5268+0x2e4>
     438:	c6000268 	lwc1	$f0,616(s0)
     43c:	44050000 	mfc1	a1,$f0
     440:	0c000000 	jal	0 <EnAttackNiw_Init>
     444:	34e7c000 	ori	a3,a3,0xc000
     448:	c6000268 	lwc1	$f0,616(s0)
     44c:	c61202b0 	lwc1	$f18,688(s0)
     450:	3c063f4c 	lui	a2,0x3f4c
     454:	34c6cccd 	ori	a2,a2,0xcccd
     458:	46009032 	c.eq.s	$f18,$f0
     45c:	260402b0 	addiu	a0,s0,688
     460:	3c0745da 	lui	a3,0x45da
     464:	45030005 	bc1tl	47c <func_809B5268+0x314>
     468:	c6000278 	lwc1	$f0,632(s0)
     46c:	44050000 	mfc1	a1,$f0
     470:	0c000000 	jal	0 <EnAttackNiw_Init>
     474:	34e7c000 	ori	a3,a3,0xc000
     478:	c6000278 	lwc1	$f0,632(s0)
     47c:	c60402b4 	lwc1	$f4,692(s0)
     480:	3c063f4c 	lui	a2,0x3f4c
     484:	34c6cccd 	ori	a2,a2,0xcccd
     488:	46002032 	c.eq.s	$f4,$f0
     48c:	260402b4 	addiu	a0,s0,692
     490:	3c0745da 	lui	a3,0x45da
     494:	45030005 	bc1tl	4ac <func_809B5268+0x344>
     498:	c600027c 	lwc1	$f0,636(s0)
     49c:	44050000 	mfc1	a1,$f0
     4a0:	0c000000 	jal	0 <EnAttackNiw_Init>
     4a4:	34e7c000 	ori	a3,a3,0xc000
     4a8:	c600027c 	lwc1	$f0,636(s0)
     4ac:	c60602b8 	lwc1	$f6,696(s0)
     4b0:	3c063f4c 	lui	a2,0x3f4c
     4b4:	34c6cccd 	ori	a2,a2,0xcccd
     4b8:	46003032 	c.eq.s	$f6,$f0
     4bc:	260402b8 	addiu	a0,s0,696
     4c0:	3c0745da 	lui	a3,0x45da
     4c4:	45030005 	bc1tl	4dc <func_809B5268+0x374>
     4c8:	8fbf001c 	lw	ra,28(sp)
     4cc:	44050000 	mfc1	a1,$f0
     4d0:	0c000000 	jal	0 <EnAttackNiw_Init>
     4d4:	34e7c000 	ori	a3,a3,0xc000
     4d8:	8fbf001c 	lw	ra,28(sp)
     4dc:	8fb00018 	lw	s0,24(sp)
     4e0:	27bd0020 	addiu	sp,sp,32
     4e4:	03e00008 	jr	ra
     4e8:	00000000 	nop

000004ec <func_809B55EC>:
     4ec:	27bdffe0 	addiu	sp,sp,-32
     4f0:	afbf0014 	sw	ra,20(sp)
     4f4:	afa50024 	sw	a1,36(sp)
     4f8:	8c8502e4 	lw	a1,740(a0)
     4fc:	0c000000 	jal	0 <EnAttackNiw_Init>
     500:	afa40020 	sw	a0,32(sp)
     504:	8fa40024 	lw	a0,36(sp)
     508:	8fa50020 	lw	a1,32(sp)
     50c:	27a6001e 	addiu	a2,sp,30
     510:	0c000000 	jal	0 <EnAttackNiw_Init>
     514:	27a7001c 	addiu	a3,sp,28
     518:	8fae0020 	lw	t6,32(sp)
     51c:	3c01c1a0 	lui	at,0xc1a0
     520:	44813000 	mtc1	at,$f6
     524:	c5c400ec 	lwc1	$f4,236(t6)
     528:	87a2001e 	lh	v0,30(sp)
     52c:	8fbf0014 	lw	ra,20(sp)
     530:	4606203c 	c.lt.s	$f4,$f6
     534:	00000000 	nop
     538:	45010009 	bc1t	560 <func_809B55EC+0x74>
     53c:	00000000 	nop
     540:	04400007 	bltz	v0,560 <func_809B55EC+0x74>
     544:	28410141 	slti	at,v0,321
     548:	10200005 	beqz	at,560 <func_809B55EC+0x74>
     54c:	87a2001c 	lh	v0,28(sp)
     550:	04400003 	bltz	v0,560 <func_809B55EC+0x74>
     554:	284100f1 	slti	at,v0,241
     558:	14200003 	bnez	at,568 <func_809B55EC+0x7c>
     55c:	24020001 	li	v0,1
     560:	10000001 	b	568 <func_809B55EC+0x7c>
     564:	00001025 	move	v0,zero
     568:	03e00008 	jr	ra
     56c:	27bd0020 	addiu	sp,sp,32

00000570 <func_809B5670>:
     570:	27bdffb0 	addiu	sp,sp,-80
     574:	3c014120 	lui	at,0x4120
     578:	44812000 	mtc1	at,$f4
     57c:	afbf0024 	sw	ra,36(sp)
     580:	afb10020 	sw	s1,32(sp)
     584:	afb0001c 	sw	s0,28(sp)
     588:	e4840068 	swc1	$f4,104(a0)
     58c:	c4a000ec 	lwc1	$f0,236(a1)
     590:	c4860298 	lwc1	$f6,664(a0)
     594:	c4b200f0 	lwc1	$f18,240(a1)
     598:	c490029c 	lwc1	$f16,668(a0)
     59c:	46003200 	add.s	$f8,$f6,$f0
     5a0:	c4aa00e0 	lwc1	$f10,224(a1)
     5a4:	c4a600e4 	lwc1	$f6,228(a1)
     5a8:	46128100 	add.s	$f4,$f16,$f18
     5ac:	c4b200e8 	lwc1	$f18,232(a1)
     5b0:	00808025 	move	s0,a0
     5b4:	460a4081 	sub.s	$f2,$f8,$f10
     5b8:	c4aa00f4 	lwc1	$f10,244(a1)
     5bc:	c48802a0 	lwc1	$f8,672(a0)
     5c0:	46062301 	sub.s	$f12,$f4,$f6
     5c4:	00a08825 	move	s1,a1
     5c8:	24840024 	addiu	a0,a0,36
     5cc:	46020100 	add.s	$f4,$f0,$f2
     5d0:	460a4400 	add.s	$f16,$f8,$f10
     5d4:	e7a40034 	swc1	$f4,52(sp)
     5d8:	c4a600f0 	lwc1	$f6,240(a1)
     5dc:	46128381 	sub.s	$f14,$f16,$f18
     5e0:	460c3200 	add.s	$f8,$f6,$f12
     5e4:	e7a80038 	swc1	$f8,56(sp)
     5e8:	c4aa00f4 	lwc1	$f10,244(a1)
     5ec:	afa4002c 	sw	a0,44(sp)
     5f0:	27a50034 	addiu	a1,sp,52
     5f4:	460e5400 	add.s	$f16,$f10,$f14
     5f8:	0c000000 	jal	0 <EnAttackNiw_Init>
     5fc:	e7b0003c 	swc1	$f16,60(sp)
     600:	44829000 	mtc1	v0,$f18
     604:	8fa4002c 	lw	a0,44(sp)
     608:	27a50034 	addiu	a1,sp,52
     60c:	46809120 	cvt.s.w	$f4,$f18
     610:	0c000000 	jal	0 <EnAttackNiw_Init>
     614:	e60402d4 	swc1	$f4,724(s0)
     618:	44823000 	mtc1	v0,$f6
     61c:	3c01bf80 	lui	at,0xbf80
     620:	44815000 	mtc1	at,$f10
     624:	46803220 	cvt.s.w	$f8,$f6
     628:	c60602dc 	lwc1	$f6,732(s0)
     62c:	c61202d4 	lwc1	$f18,724(s0)
     630:	26040032 	addiu	a0,s0,50
     634:	24060005 	li	a2,5
     638:	4600910d 	trunc.w.s	$f4,$f18
     63c:	460a4402 	mul.s	$f16,$f8,$f10
     640:	44052000 	mfc1	a1,$f4
     644:	4600320d 	trunc.w.s	$f8,$f6
     648:	e61002d0 	swc1	$f16,720(s0)
     64c:	00052c00 	sll	a1,a1,0x10
     650:	00052c03 	sra	a1,a1,0x10
     654:	44074000 	mfc1	a3,$f8
     658:	afa00010 	sw	zero,16(sp)
     65c:	00073c00 	sll	a3,a3,0x10
     660:	0c000000 	jal	0 <EnAttackNiw_Init>
     664:	00073c03 	sra	a3,a3,0x10
     668:	c60a02d0 	lwc1	$f10,720(s0)
     66c:	c61202dc 	lwc1	$f18,732(s0)
     670:	afa00010 	sw	zero,16(sp)
     674:	4600540d 	trunc.w.s	$f16,$f10
     678:	26040030 	addiu	a0,s0,48
     67c:	24060005 	li	a2,5
     680:	4600910d 	trunc.w.s	$f4,$f18
     684:	44058000 	mfc1	a1,$f16
     688:	44072000 	mfc1	a3,$f4
     68c:	00052c00 	sll	a1,a1,0x10
     690:	00052c03 	sra	a1,a1,0x10
     694:	00073c00 	sll	a3,a3,0x10
     698:	0c000000 	jal	0 <EnAttackNiw_Init>
     69c:	00073c03 	sra	a3,a3,0x10
     6a0:	3c05459c 	lui	a1,0x459c
     6a4:	34a54000 	ori	a1,a1,0x4000
     6a8:	260402dc 	addiu	a0,s0,732
     6ac:	3c063f80 	lui	a2,0x3f80
     6b0:	0c000000 	jal	0 <EnAttackNiw_Init>
     6b4:	3c0742c8 	lui	a3,0x42c8
     6b8:	02002025 	move	a0,s0
     6bc:	0c000000 	jal	0 <EnAttackNiw_Init>
     6c0:	8e0502e4 	lw	a1,740(s0)
     6c4:	02202025 	move	a0,s1
     6c8:	02002825 	move	a1,s0
     6cc:	27a6004e 	addiu	a2,sp,78
     6d0:	0c000000 	jal	0 <EnAttackNiw_Init>
     6d4:	27a7004c 	addiu	a3,sp,76
     6d8:	96020088 	lhu	v0,136(s0)
     6dc:	30480008 	andi	t0,v0,0x8
     6e0:	51000023 	beqzl	t0,770 <func_809B5670+0x200>
     6e4:	44801000 	mtc1	zero,$f2
     6e8:	8609008a 	lh	t1,138(s0)
     6ec:	860a0030 	lh	t2,48(s0)
     6f0:	3c010000 	lui	at,0x0
     6f4:	44893000 	mtc1	t1,$f6
     6f8:	448a5000 	mtc1	t2,$f10
     6fc:	44801000 	mtc1	zero,$f2
     700:	46803220 	cvt.s.w	$f8,$f6
     704:	240b0064 	li	t3,100
     708:	3c0c0000 	lui	t4,0x0
     70c:	258c0000 	addiu	t4,t4,0
     710:	46805420 	cvt.s.w	$f16,$f10
     714:	e60802d4 	swc1	$f8,724(s0)
     718:	c4320000 	lwc1	$f18,0(at)
     71c:	a600025a 	sh	zero,602(s0)
     720:	8602025a 	lh	v0,602(s0)
     724:	a60b025c 	sh	t3,604(s0)
     728:	46128101 	sub.s	$f4,$f16,$f18
     72c:	3c010000 	lui	at,0x0
     730:	e60202dc 	swc1	$f2,732(s0)
     734:	e6020284 	swc1	$f2,644(s0)
     738:	e60402d0 	swc1	$f4,720(s0)
     73c:	e602027c 	swc1	$f2,636(s0)
     740:	a6020258 	sh	v0,600(s0)
     744:	a6020256 	sh	v0,598(s0)
     748:	a6020254 	sh	v0,596(s0)
     74c:	c4260000 	lwc1	$f6,0(at)
     750:	3c0140a0 	lui	at,0x40a0
     754:	44814000 	mtc1	at,$f8
     758:	ae0c0250 	sw	t4,592(s0)
     75c:	e6020288 	swc1	$f2,648(s0)
     760:	e606006c 	swc1	$f6,108(s0)
     764:	1000004d 	b	89c <func_809B5670+0x32c>
     768:	e60802e0 	swc1	$f8,736(s0)
     76c:	44801000 	mtc1	zero,$f2
     770:	c60a00ec 	lwc1	$f10,236(s0)
     774:	c7b00034 	lwc1	$f16,52(sp)
     778:	304d0001 	andi	t5,v0,0x1
     77c:	460a103c 	c.lt.s	$f2,$f10
     780:	00000000 	nop
     784:	4500001a 	bc1f	7f0 <func_809B5670+0x280>
     788:	00000000 	nop
     78c:	c6120024 	lwc1	$f18,36(s0)
     790:	3c014248 	lui	at,0x4248
     794:	44816000 	mtc1	at,$f12
     798:	46128001 	sub.s	$f0,$f16,$f18
     79c:	c7a40038 	lwc1	$f4,56(sp)
     7a0:	46000005 	abs.s	$f0,$f0
     7a4:	460c003c 	c.lt.s	$f0,$f12
     7a8:	00000000 	nop
     7ac:	45000010 	bc1f	7f0 <func_809B5670+0x280>
     7b0:	00000000 	nop
     7b4:	c6060028 	lwc1	$f6,40(s0)
     7b8:	c7a8003c 	lwc1	$f8,60(sp)
     7bc:	46062001 	sub.s	$f0,$f4,$f6
     7c0:	46000005 	abs.s	$f0,$f0
     7c4:	460c003c 	c.lt.s	$f0,$f12
     7c8:	00000000 	nop
     7cc:	45000008 	bc1f	7f0 <func_809B5670+0x280>
     7d0:	00000000 	nop
     7d4:	c60a002c 	lwc1	$f10,44(s0)
     7d8:	460a4001 	sub.s	$f0,$f8,$f10
     7dc:	46000005 	abs.s	$f0,$f0
     7e0:	460c003c 	c.lt.s	$f0,$f12
     7e4:	00000000 	nop
     7e8:	45030004 	bc1tl	7fc <func_809B5670+0x28c>
     7ec:	860f0030 	lh	t7,48(s0)
     7f0:	11a0001f 	beqz	t5,870 <func_809B5670+0x300>
     7f4:	2419000a 	li	t9,10
     7f8:	860f0030 	lh	t7,48(s0)
     7fc:	860e008a 	lh	t6,138(s0)
     800:	3c0144fa 	lui	at,0x44fa
     804:	448f2000 	mtc1	t7,$f4
     808:	448e8000 	mtc1	t6,$f16
     80c:	44814000 	mtc1	at,$f8
     810:	468021a0 	cvt.s.w	$f6,$f4
     814:	a600025a 	sh	zero,602(s0)
     818:	8602025a 	lh	v0,602(s0)
     81c:	e60202dc 	swc1	$f2,732(s0)
     820:	e602027c 	swc1	$f2,636(s0)
     824:	468084a0 	cvt.s.w	$f18,$f16
     828:	e6020284 	swc1	$f2,644(s0)
     82c:	3c010000 	lui	at,0x0
     830:	a6020258 	sh	v0,600(s0)
     834:	a6020256 	sh	v0,598(s0)
     838:	46083281 	sub.s	$f10,$f6,$f8
     83c:	e61202d4 	swc1	$f18,724(s0)
     840:	a6020254 	sh	v0,596(s0)
     844:	3c180000 	lui	t8,0x0
     848:	e60a02d0 	swc1	$f10,720(s0)
     84c:	c4300000 	lwc1	$f16,0(at)
     850:	3c0140a0 	lui	at,0x40a0
     854:	44819000 	mtc1	at,$f18
     858:	27180000 	addiu	t8,t8,0
     85c:	e6020288 	swc1	$f2,648(s0)
     860:	ae180250 	sw	t8,592(s0)
     864:	e610006c 	swc1	$f16,108(s0)
     868:	1000000c 	b	89c <func_809B5670+0x32c>
     86c:	e61202e0 	swc1	$f18,736(s0)
     870:	a6190254 	sh	t9,596(s0)
     874:	3c010000 	lui	at,0x0
     878:	c4240000 	lwc1	$f4,0(at)
     87c:	3c010000 	lui	at,0x0
     880:	02002025 	move	a0,s0
     884:	e6040264 	swc1	$f4,612(s0)
     888:	c4260000 	lwc1	$f6,0(at)
     88c:	02202825 	move	a1,s1
     890:	24060002 	li	a2,2
     894:	0c000000 	jal	0 <EnAttackNiw_Init>
     898:	e6060288 	swc1	$f6,648(s0)
     89c:	8fbf0024 	lw	ra,36(sp)
     8a0:	8fb0001c 	lw	s0,28(sp)
     8a4:	8fb10020 	lw	s1,32(sp)
     8a8:	03e00008 	jr	ra
     8ac:	27bd0050 	addiu	sp,sp,80

000008b0 <func_809B59B0>:
     8b0:	27bdffd8 	addiu	sp,sp,-40
     8b4:	afbf0024 	sw	ra,36(sp)
     8b8:	afb00020 	sw	s0,32(sp)
     8bc:	00808025 	move	s0,a0
     8c0:	0c000000 	jal	0 <EnAttackNiw_Init>
     8c4:	afa5002c 	sw	a1,44(sp)
     8c8:	54400006 	bnezl	v0,8e4 <func_809B59B0+0x34>
     8cc:	960e0088 	lhu	t6,136(s0)
     8d0:	0c000000 	jal	0 <EnAttackNiw_Init>
     8d4:	02002025 	move	a0,s0
     8d8:	1000008b 	b	b08 <func_809B59B0+0x258>
     8dc:	8fbf0024 	lw	ra,36(sp)
     8e0:	960e0088 	lhu	t6,136(s0)
     8e4:	31cf0001 	andi	t7,t6,0x1
     8e8:	51e00025 	beqzl	t7,980 <func_809B59B0+0xd0>
     8ec:	860b025c 	lh	t3,604(s0)
     8f0:	8618025a 	lh	t8,602(s0)
     8f4:	3c014060 	lui	at,0x4060
     8f8:	24090032 	li	t1,50
     8fc:	17000005 	bnez	t8,914 <func_809B59B0+0x64>
     900:	240a0064 	li	t2,100
     904:	44812000 	mtc1	at,$f4
     908:	24190003 	li	t9,3
     90c:	a619025a 	sh	t9,602(s0)
     910:	e6040060 	swc1	$f4,96(s0)
     914:	3c01c000 	lui	at,0xc000
     918:	44813000 	mtc1	at,$f6
     91c:	c608006c 	lwc1	$f8,108(s0)
     920:	3c010000 	lui	at,0x0
     924:	46083032 	c.eq.s	$f6,$f8
     928:	00000000 	nop
     92c:	45030014 	bc1tl	980 <func_809B59B0+0xd0>
     930:	860b025c 	lh	t3,604(s0)
     934:	c420005c 	lwc1	$f0,92(at)
     938:	8608008a 	lh	t0,138(s0)
     93c:	44801000 	mtc1	zero,$f2
     940:	3c01c000 	lui	at,0xc000
     944:	44885000 	mtc1	t0,$f10
     948:	44819000 	mtc1	at,$f18
     94c:	a6090262 	sh	t1,610(s0)
     950:	46805420 	cvt.s.w	$f16,$f10
     954:	a60a025c 	sh	t2,604(s0)
     958:	e6000278 	swc1	$f0,632(s0)
     95c:	e6000280 	swc1	$f0,640(s0)
     960:	e602027c 	swc1	$f2,636(s0)
     964:	e6020284 	swc1	$f2,644(s0)
     968:	e61002d4 	swc1	$f16,724(s0)
     96c:	e6020268 	swc1	$f2,616(s0)
     970:	e602026c 	swc1	$f2,620(s0)
     974:	e60202d0 	swc1	$f2,720(s0)
     978:	e612006c 	swc1	$f18,108(s0)
     97c:	860b025c 	lh	t3,604(s0)
     980:	24010032 	li	at,50
     984:	1561000a 	bne	t3,at,9b0 <func_809B59B0+0x100>
     988:	3c014348 	lui	at,0x4348
     98c:	44816000 	mtc1	at,$f12
     990:	0c000000 	jal	0 <EnAttackNiw_Init>
     994:	00000000 	nop
     998:	860c008a 	lh	t4,138(s0)
     99c:	448c2000 	mtc1	t4,$f4
     9a0:	00000000 	nop
     9a4:	468021a0 	cvt.s.w	$f6,$f4
     9a8:	46060200 	add.s	$f8,$f0,$f6
     9ac:	e60802d4 	swc1	$f8,724(s0)
     9b0:	c60a02d4 	lwc1	$f10,724(s0)
     9b4:	c61202dc 	lwc1	$f18,732(s0)
     9b8:	afa00010 	sw	zero,16(sp)
     9bc:	4600540d 	trunc.w.s	$f16,$f10
     9c0:	26040032 	addiu	a0,s0,50
     9c4:	24060002 	li	a2,2
     9c8:	4600910d 	trunc.w.s	$f4,$f18
     9cc:	44058000 	mfc1	a1,$f16
     9d0:	44072000 	mfc1	a3,$f4
     9d4:	00052c00 	sll	a1,a1,0x10
     9d8:	00052c03 	sra	a1,a1,0x10
     9dc:	00073c00 	sll	a3,a3,0x10
     9e0:	0c000000 	jal	0 <EnAttackNiw_Init>
     9e4:	00073c03 	sra	a3,a3,0x10
     9e8:	c60602d0 	lwc1	$f6,720(s0)
     9ec:	c60a02dc 	lwc1	$f10,732(s0)
     9f0:	afa00010 	sw	zero,16(sp)
     9f4:	4600320d 	trunc.w.s	$f8,$f6
     9f8:	26040030 	addiu	a0,s0,48
     9fc:	24060002 	li	a2,2
     a00:	4600540d 	trunc.w.s	$f16,$f10
     a04:	44054000 	mfc1	a1,$f8
     a08:	44078000 	mfc1	a3,$f16
     a0c:	00052c00 	sll	a1,a1,0x10
     a10:	00052c03 	sra	a1,a1,0x10
     a14:	00073c00 	sll	a3,a3,0x10
     a18:	0c000000 	jal	0 <EnAttackNiw_Init>
     a1c:	00073c03 	sra	a3,a3,0x10
     a20:	3c05461c 	lui	a1,0x461c
     a24:	34a54000 	ori	a1,a1,0x4000
     a28:	260402dc 	addiu	a0,s0,732
     a2c:	3c063f80 	lui	a2,0x3f80
     a30:	0c000000 	jal	0 <EnAttackNiw_Init>
     a34:	3c07447a 	lui	a3,0x447a
     a38:	3c063f66 	lui	a2,0x3f66
     a3c:	34c66666 	ori	a2,a2,0x6666
     a40:	26040068 	addiu	a0,s0,104
     a44:	8e0502e0 	lw	a1,736(s0)
     a48:	0c000000 	jal	0 <EnAttackNiw_Init>
     a4c:	3c073f80 	lui	a3,0x3f80
     a50:	3c01c000 	lui	at,0xc000
     a54:	44819000 	mtc1	at,$f18
     a58:	c604006c 	lwc1	$f4,108(s0)
     a5c:	44801000 	mtc1	zero,$f2
     a60:	46049032 	c.eq.s	$f18,$f4
     a64:	00000000 	nop
     a68:	4502001a 	bc1fl	ad4 <func_809B59B0+0x224>
     a6c:	960d0088 	lhu	t5,136(s0)
     a70:	86190262 	lh	t9,610(s0)
     a74:	57200017 	bnezl	t9,ad4 <func_809B59B0+0x224>
     a78:	960d0088 	lhu	t5,136(s0)
     a7c:	96080088 	lhu	t0,136(s0)
     a80:	31090008 	andi	t1,t0,0x8
     a84:	55200005 	bnezl	t1,a9c <func_809B59B0+0x1ec>
     a88:	860b0030 	lh	t3,48(s0)
     a8c:	860a025c 	lh	t2,604(s0)
     a90:	55400010 	bnezl	t2,ad4 <func_809B59B0+0x224>
     a94:	960d0088 	lhu	t5,136(s0)
     a98:	860b0030 	lh	t3,48(s0)
     a9c:	e60202e0 	swc1	$f2,736(s0)
     aa0:	e602006c 	swc1	$f2,108(s0)
     aa4:	448b3000 	mtc1	t3,$f6
     aa8:	e60202dc 	swc1	$f2,732(s0)
     aac:	3c010000 	lui	at,0x0
     ab0:	46803220 	cvt.s.w	$f8,$f6
     ab4:	c42a0060 	lwc1	$f10,96(at)
     ab8:	3c0c0000 	lui	t4,0x0
     abc:	258c0000 	addiu	t4,t4,0
     ac0:	ae0c0250 	sw	t4,592(s0)
     ac4:	460a4401 	sub.s	$f16,$f8,$f10
     ac8:	1000000e 	b	b04 <func_809B59B0+0x254>
     acc:	e61002d0 	swc1	$f16,720(s0)
     ad0:	960d0088 	lhu	t5,136(s0)
     ad4:	24060005 	li	a2,5
     ad8:	02002025 	move	a0,s0
     adc:	31ae0001 	andi	t6,t5,0x1
     ae0:	11c00006 	beqz	t6,afc <func_809B59B0+0x24c>
     ae4:	8fa5002c 	lw	a1,44(sp)
     ae8:	02002025 	move	a0,s0
     aec:	0c000000 	jal	0 <EnAttackNiw_Init>
     af0:	8fa5002c 	lw	a1,44(sp)
     af4:	10000004 	b	b08 <func_809B59B0+0x258>
     af8:	8fbf0024 	lw	ra,36(sp)
     afc:	0c000000 	jal	0 <EnAttackNiw_Init>
     b00:	24060002 	li	a2,2
     b04:	8fbf0024 	lw	ra,36(sp)
     b08:	8fb00020 	lw	s0,32(sp)
     b0c:	27bd0028 	addiu	sp,sp,40
     b10:	03e00008 	jr	ra
     b14:	00000000 	nop

00000b18 <func_809B5C18>:
     b18:	27bdffd8 	addiu	sp,sp,-40
     b1c:	afbf0024 	sw	ra,36(sp)
     b20:	afb00020 	sw	s0,32(sp)
     b24:	00808025 	move	s0,a0
     b28:	0c000000 	jal	0 <EnAttackNiw_Init>
     b2c:	afa5002c 	sw	a1,44(sp)
     b30:	54400006 	bnezl	v0,b4c <func_809B5C18+0x34>
     b34:	c60402d0 	lwc1	$f4,720(s0)
     b38:	0c000000 	jal	0 <EnAttackNiw_Init>
     b3c:	02002025 	move	a0,s0
     b40:	10000020 	b	bc4 <func_809B5C18+0xac>
     b44:	8fbf0024 	lw	ra,36(sp)
     b48:	c60402d0 	lwc1	$f4,720(s0)
     b4c:	c60802dc 	lwc1	$f8,732(s0)
     b50:	afa00010 	sw	zero,16(sp)
     b54:	4600218d 	trunc.w.s	$f6,$f4
     b58:	26040030 	addiu	a0,s0,48
     b5c:	24060005 	li	a2,5
     b60:	4600428d 	trunc.w.s	$f10,$f8
     b64:	44053000 	mfc1	a1,$f6
     b68:	44075000 	mfc1	a3,$f10
     b6c:	00052c00 	sll	a1,a1,0x10
     b70:	00052c03 	sra	a1,a1,0x10
     b74:	00073c00 	sll	a3,a3,0x10
     b78:	0c000000 	jal	0 <EnAttackNiw_Init>
     b7c:	00073c03 	sra	a3,a3,0x10
     b80:	3c05459c 	lui	a1,0x459c
     b84:	34a54000 	ori	a1,a1,0x4000
     b88:	260402dc 	addiu	a0,s0,732
     b8c:	3c063f80 	lui	a2,0x3f80
     b90:	0c000000 	jal	0 <EnAttackNiw_Init>
     b94:	3c0742c8 	lui	a3,0x42c8
     b98:	3c063e99 	lui	a2,0x3e99
     b9c:	34c6999a 	ori	a2,a2,0x999a
     ba0:	26040060 	addiu	a0,s0,96
     ba4:	3c0540a0 	lui	a1,0x40a0
     ba8:	0c000000 	jal	0 <EnAttackNiw_Init>
     bac:	3c073f80 	lui	a3,0x3f80
     bb0:	02002025 	move	a0,s0
     bb4:	8fa5002c 	lw	a1,44(sp)
     bb8:	0c000000 	jal	0 <EnAttackNiw_Init>
     bbc:	24060002 	li	a2,2
     bc0:	8fbf0024 	lw	ra,36(sp)
     bc4:	8fb00020 	lw	s0,32(sp)
     bc8:	27bd0028 	addiu	sp,sp,40
     bcc:	03e00008 	jr	ra
     bd0:	00000000 	nop

00000bd4 <EnAttackNiw_Update>:
     bd4:	27bdffb0 	addiu	sp,sp,-80
     bd8:	afbf0024 	sw	ra,36(sp)
     bdc:	afb00020 	sw	s0,32(sp)
     be0:	8cae1c44 	lw	t6,7236(a1)
     be4:	00808025 	move	s0,a0
     be8:	afae0040 	sw	t6,64(sp)
     bec:	848f028c 	lh	t7,652(a0)
     bf0:	84820254 	lh	v0,596(a0)
     bf4:	25f80001 	addiu	t8,t7,1
     bf8:	10400003 	beqz	v0,c08 <EnAttackNiw_Update+0x34>
     bfc:	a498028c 	sh	t8,652(a0)
     c00:	2459ffff 	addiu	t9,v0,-1
     c04:	a4990254 	sh	t9,596(a0)
     c08:	86020258 	lh	v0,600(s0)
     c0c:	10400002 	beqz	v0,c18 <EnAttackNiw_Update+0x44>
     c10:	2448ffff 	addiu	t0,v0,-1
     c14:	a6080258 	sh	t0,600(s0)
     c18:	8602025a 	lh	v0,602(s0)
     c1c:	10400002 	beqz	v0,c28 <EnAttackNiw_Update+0x54>
     c20:	2449ffff 	addiu	t1,v0,-1
     c24:	a609025a 	sh	t1,602(s0)
     c28:	8602025e 	lh	v0,606(s0)
     c2c:	10400002 	beqz	v0,c38 <EnAttackNiw_Update+0x64>
     c30:	244affff 	addiu	t2,v0,-1
     c34:	a60a025e 	sh	t2,606(s0)
     c38:	86020260 	lh	v0,608(s0)
     c3c:	10400002 	beqz	v0,c48 <EnAttackNiw_Update+0x74>
     c40:	244bffff 	addiu	t3,v0,-1
     c44:	a60b0260 	sh	t3,608(s0)
     c48:	8602025c 	lh	v0,604(s0)
     c4c:	10400002 	beqz	v0,c58 <EnAttackNiw_Update+0x84>
     c50:	244cffff 	addiu	t4,v0,-1
     c54:	a60c025c 	sh	t4,604(s0)
     c58:	86020262 	lh	v0,610(s0)
     c5c:	10400002 	beqz	v0,c68 <EnAttackNiw_Update+0x94>
     c60:	244dffff 	addiu	t5,v0,-1
     c64:	a60d0262 	sh	t5,610(s0)
     c68:	8a0f0030 	lwl	t7,48(s0)
     c6c:	9a0f0033 	lwr	t7,51(s0)
     c70:	3c014170 	lui	at,0x4170
     c74:	44812000 	mtc1	at,$f4
     c78:	aa0f00b4 	swl	t7,180(s0)
     c7c:	ba0f00b7 	swr	t7,183(s0)
     c80:	960f0034 	lhu	t7,52(s0)
     c84:	e60400c4 	swc1	$f4,196(s0)
     c88:	02002025 	move	a0,s0
     c8c:	a60f00b8 	sh	t7,184(s0)
     c90:	afa50054 	sw	a1,84(sp)
     c94:	8e190250 	lw	t9,592(s0)
     c98:	0320f809 	jalr	t9
     c9c:	00000000 	nop
     ca0:	3c0141a0 	lui	at,0x41a0
     ca4:	44810000 	mtc1	at,$f0
     ca8:	3c014270 	lui	at,0x4270
     cac:	44813000 	mtc1	at,$f6
     cb0:	2418001d 	li	t8,29
     cb4:	44060000 	mfc1	a2,$f0
     cb8:	44070000 	mfc1	a3,$f0
     cbc:	afb80014 	sw	t8,20(sp)
     cc0:	8fa40054 	lw	a0,84(sp)
     cc4:	02002825 	move	a1,s0
     cc8:	0c000000 	jal	0 <EnAttackNiw_Init>
     ccc:	e7a60010 	swc1	$f6,16(sp)
     cd0:	8e090250 	lw	t1,592(s0)
     cd4:	3c080000 	lui	t0,0x0
     cd8:	25080000 	addiu	t0,t0,0
     cdc:	15090005 	bne	t0,t1,cf4 <EnAttackNiw_Update+0x120>
     ce0:	00000000 	nop
     ce4:	0c000000 	jal	0 <EnAttackNiw_Init>
     ce8:	02002025 	move	a0,s0
     cec:	10000004 	b	d00 <EnAttackNiw_Update+0x12c>
     cf0:	3c01c6fa 	lui	at,0xc6fa
     cf4:	0c000000 	jal	0 <EnAttackNiw_Init>
     cf8:	02002025 	move	a0,s0
     cfc:	3c01c6fa 	lui	at,0xc6fa
     d00:	44814000 	mtc1	at,$f8
     d04:	c60a0080 	lwc1	$f10,128(s0)
     d08:	4608503e 	c.le.s	$f10,$f8
     d0c:	00000000 	nop
     d10:	45020006 	bc1fl	d2c <EnAttackNiw_Update+0x158>
     d14:	960a0088 	lhu	t2,136(s0)
     d18:	0c000000 	jal	0 <EnAttackNiw_Init>
     d1c:	02002025 	move	a0,s0
     d20:	10000059 	b	e88 <EnAttackNiw_Update+0x2b4>
     d24:	8fbf0024 	lw	ra,36(sp)
     d28:	960a0088 	lhu	t2,136(s0)
     d2c:	3c0141a0 	lui	at,0x41a0
     d30:	314b0020 	andi	t3,t2,0x20
     d34:	51600024 	beqzl	t3,dc8 <EnAttackNiw_Update+0x1f4>
     d38:	44810000 	mtc1	at,$f0
     d3c:	8e0c0250 	lw	t4,592(s0)
     d40:	3c020000 	lui	v0,0x0
     d44:	24420000 	addiu	v0,v0,0
     d48:	104c001e 	beq	v0,t4,dc4 <EnAttackNiw_Update+0x1f0>
     d4c:	27a40030 	addiu	a0,sp,48
     d50:	26050024 	addiu	a1,s0,36
     d54:	0c000000 	jal	0 <EnAttackNiw_Init>
     d58:	afa20028 	sw	v0,40(sp)
     d5c:	c7b00034 	lwc1	$f16,52(sp)
     d60:	c6120084 	lwc1	$f18,132(s0)
     d64:	240d0190 	li	t5,400
     d68:	afad0014 	sw	t5,20(sp)
     d6c:	46128100 	add.s	$f4,$f16,$f18
     d70:	afa00010 	sw	zero,16(sp)
     d74:	8fa40054 	lw	a0,84(sp)
     d78:	27a50030 	addiu	a1,sp,48
     d7c:	e7a40034 	swc1	$f4,52(sp)
     d80:	00003025 	move	a2,zero
     d84:	0c000000 	jal	0 <EnAttackNiw_Init>
     d88:	00003825 	move	a3,zero
     d8c:	860e0030 	lh	t6,48(s0)
     d90:	44800000 	mtc1	zero,$f0
     d94:	8fa20028 	lw	v0,40(sp)
     d98:	448e3000 	mtc1	t6,$f6
     d9c:	3c010000 	lui	at,0x0
     da0:	e60002dc 	swc1	$f0,732(s0)
     da4:	46803220 	cvt.s.w	$f8,$f6
     da8:	e600006c 	swc1	$f0,108(s0)
     dac:	e60002e0 	swc1	$f0,736(s0)
     db0:	c42a0064 	lwc1	$f10,100(at)
     db4:	ae020250 	sw	v0,592(s0)
     db8:	460a4401 	sub.s	$f16,$f8,$f10
     dbc:	10000031 	b	e84 <EnAttackNiw_Update+0x2b0>
     dc0:	e61002d0 	swc1	$f16,720(s0)
     dc4:	44810000 	mtc1	at,$f0
     dc8:	c612008c 	lwc1	$f18,140(s0)
     dcc:	46000102 	mul.s	$f4,$f0,$f0
     dd0:	4604903c 	c.lt.s	$f18,$f4
     dd4:	00000000 	nop
     dd8:	4502001d 	bc1fl	e50 <EnAttackNiw_Update+0x27c>
     ddc:	860b025e 	lh	t3,606(s0)
     de0:	8e020118 	lw	v0,280(s0)
     de4:	8c4f0130 	lw	t7,304(v0)
     de8:	51e00019 	beqzl	t7,e50 <EnAttackNiw_Update+0x27c>
     dec:	860b025e 	lh	t3,606(s0)
     df0:	50400017 	beqzl	v0,e50 <EnAttackNiw_Update+0x27c>
     df4:	860b025e 	lh	t3,606(s0)
     df8:	50400015 	beqzl	v0,e50 <EnAttackNiw_Update+0x27c>
     dfc:	860b025e 	lh	t3,606(s0)
     e00:	8459026a 	lh	t9,618(v0)
     e04:	8fb80040 	lw	t8,64(sp)
     e08:	57200011 	bnezl	t9,e50 <EnAttackNiw_Update+0x27c>
     e0c:	860b025e 	lh	t3,606(s0)
     e10:	83080a78 	lb	t0,2680(t8)
     e14:	8fa40054 	lw	a0,84(sp)
     e18:	02002825 	move	a1,s0
     e1c:	1500000b 	bnez	t0,e4c <EnAttackNiw_Update+0x278>
     e20:	3c064000 	lui	a2,0x4000
     e24:	44800000 	mtc1	zero,$f0
     e28:	86070032 	lh	a3,50(s0)
     e2c:	24090010 	li	t1,16
     e30:	afa90014 	sw	t1,20(sp)
     e34:	afa20044 	sw	v0,68(sp)
     e38:	0c000000 	jal	0 <EnAttackNiw_Init>
     e3c:	e7a00010 	swc1	$f0,16(sp)
     e40:	8fa30044 	lw	v1,68(sp)
     e44:	240a0046 	li	t2,70
     e48:	a46a026a 	sh	t2,618(v1)
     e4c:	860b025e 	lh	t3,606(s0)
     e50:	240c001e 	li	t4,30
     e54:	02002025 	move	a0,s0
     e58:	15600003 	bnez	t3,e68 <EnAttackNiw_Update+0x294>
     e5c:	24052812 	li	a1,10258
     e60:	0c000000 	jal	0 <EnAttackNiw_Init>
     e64:	a60c025e 	sh	t4,606(s0)
     e68:	860d0260 	lh	t5,608(s0)
     e6c:	240e0007 	li	t6,7
     e70:	02002025 	move	a0,s0
     e74:	15a00003 	bnez	t5,e84 <EnAttackNiw_Update+0x2b0>
     e78:	240538ff 	li	a1,14591
     e7c:	0c000000 	jal	0 <EnAttackNiw_Init>
     e80:	a60e0260 	sh	t6,608(s0)
     e84:	8fbf0024 	lw	ra,36(sp)
     e88:	8fb00020 	lw	s0,32(sp)
     e8c:	27bd0050 	addiu	sp,sp,80
     e90:	03e00008 	jr	ra
     e94:	00000000 	nop

00000e98 <func_809B5F98>:
     e98:	27bdfff0 	addiu	sp,sp,-16
     e9c:	3c0f0000 	lui	t7,0x0
     ea0:	afa40010 	sw	a0,16(sp)
     ea4:	afa60018 	sw	a2,24(sp)
     ea8:	afa7001c 	sw	a3,28(sp)
     eac:	25ef002c 	addiu	t7,t7,44
     eb0:	8df90000 	lw	t9,0(t7)
     eb4:	27ae0000 	addiu	t6,sp,0
     eb8:	8df80004 	lw	t8,4(t7)
     ebc:	add90000 	sw	t9,0(t6)
     ec0:	8df90008 	lw	t9,8(t7)
     ec4:	2401000d 	li	at,13
     ec8:	add80004 	sw	t8,4(t6)
     ecc:	14a1000a 	bne	a1,at,ef8 <func_809B5F98+0x60>
     ed0:	add90008 	sw	t9,8(t6)
     ed4:	8fa20024 	lw	v0,36(sp)
     ed8:	8fa30020 	lw	v1,32(sp)
     edc:	c44402bc 	lwc1	$f4,700(v0)
     ee0:	84680002 	lh	t0,2(v1)
     ee4:	4600218d 	trunc.w.s	$f6,$f4
     ee8:	440c3000 	mfc1	t4,$f6
     eec:	00000000 	nop
     ef0:	010c6821 	addu	t5,t0,t4
     ef4:	a46d0002 	sh	t5,2(v1)
     ef8:	2401000f 	li	at,15
     efc:	8fa20024 	lw	v0,36(sp)
     f00:	14a10008 	bne	a1,at,f24 <func_809B5F98+0x8c>
     f04:	8fa30020 	lw	v1,32(sp)
     f08:	c44802c0 	lwc1	$f8,704(v0)
     f0c:	846e0004 	lh	t6,4(v1)
     f10:	4600428d 	trunc.w.s	$f10,$f8
     f14:	44095000 	mfc1	t1,$f10
     f18:	00000000 	nop
     f1c:	01c95021 	addu	t2,t6,t1
     f20:	a46a0004 	sh	t2,4(v1)
     f24:	2401000b 	li	at,11
     f28:	54a10017 	bnel	a1,at,f88 <func_809B5F98+0xf0>
     f2c:	24010007 	li	at,7
     f30:	c45002b8 	lwc1	$f16,696(v0)
     f34:	846b0000 	lh	t3,0(v1)
     f38:	84790002 	lh	t9,2(v1)
     f3c:	4600848d 	trunc.w.s	$f18,$f16
     f40:	846d0004 	lh	t5,4(v1)
     f44:	440f9000 	mfc1	t7,$f18
     f48:	00000000 	nop
     f4c:	016fc021 	addu	t8,t3,t7
     f50:	a4780000 	sh	t8,0(v1)
     f54:	c44402b4 	lwc1	$f4,692(v0)
     f58:	4600218d 	trunc.w.s	$f6,$f4
     f5c:	44083000 	mfc1	t0,$f6
     f60:	00000000 	nop
     f64:	03286021 	addu	t4,t9,t0
     f68:	a46c0002 	sh	t4,2(v1)
     f6c:	c44802b0 	lwc1	$f8,688(v0)
     f70:	4600428d 	trunc.w.s	$f10,$f8
     f74:	440e5000 	mfc1	t6,$f10
     f78:	00000000 	nop
     f7c:	01ae4821 	addu	t1,t5,t6
     f80:	a4690004 	sh	t1,4(v1)
     f84:	24010007 	li	at,7
     f88:	54a10017 	bnel	a1,at,fe8 <func_809B5F98+0x150>
     f8c:	00001025 	move	v0,zero
     f90:	c45002ac 	lwc1	$f16,684(v0)
     f94:	846a0000 	lh	t2,0(v1)
     f98:	84780002 	lh	t8,2(v1)
     f9c:	4600848d 	trunc.w.s	$f18,$f16
     fa0:	846c0004 	lh	t4,4(v1)
     fa4:	440b9000 	mfc1	t3,$f18
     fa8:	00000000 	nop
     fac:	014b7821 	addu	t7,t2,t3
     fb0:	a46f0000 	sh	t7,0(v1)
     fb4:	c44402a8 	lwc1	$f4,680(v0)
     fb8:	4600218d 	trunc.w.s	$f6,$f4
     fbc:	44193000 	mfc1	t9,$f6
     fc0:	00000000 	nop
     fc4:	03194021 	addu	t0,t8,t9
     fc8:	a4680002 	sh	t0,2(v1)
     fcc:	c44802a4 	lwc1	$f8,676(v0)
     fd0:	4600428d 	trunc.w.s	$f10,$f8
     fd4:	440d5000 	mfc1	t5,$f10
     fd8:	00000000 	nop
     fdc:	018d7021 	addu	t6,t4,t5
     fe0:	a46e0004 	sh	t6,4(v1)
     fe4:	00001025 	move	v0,zero
     fe8:	03e00008 	jr	ra
     fec:	27bd0010 	addiu	sp,sp,16

00000ff0 <EnAttackNiw_Draw>:
     ff0:	27bdffd8 	addiu	sp,sp,-40
     ff4:	afbf0024 	sw	ra,36(sp)
     ff8:	afa40028 	sw	a0,40(sp)
     ffc:	afa5002c 	sw	a1,44(sp)
    1000:	0c000000 	jal	0 <EnAttackNiw_Init>
    1004:	8ca40000 	lw	a0,0(a1)
    1008:	8fa20028 	lw	v0,40(sp)
    100c:	3c0f0000 	lui	t7,0x0
    1010:	25ef0000 	addiu	t7,t7,0
    1014:	8c450150 	lw	a1,336(v0)
    1018:	8c46016c 	lw	a2,364(v0)
    101c:	9047014e 	lbu	a3,334(v0)
    1020:	afa00014 	sw	zero,20(sp)
    1024:	afaf0010 	sw	t7,16(sp)
    1028:	8fa4002c 	lw	a0,44(sp)
    102c:	0c000000 	jal	0 <EnAttackNiw_Init>
    1030:	afa20018 	sw	v0,24(sp)
    1034:	8fbf0024 	lw	ra,36(sp)
    1038:	27bd0028 	addiu	sp,sp,40
    103c:	03e00008 	jr	ra
    1040:	00000000 	nop
	...
