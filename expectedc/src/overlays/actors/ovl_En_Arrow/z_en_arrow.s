
build/src/overlays/actors/ovl_En_Arrow/z_en_arrow.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809B3920>:
       0:	03e00008 	jr	ra
       4:	ac85025c 	sw	a1,604(a0)

00000008 <EnArrow_Init>:
       8:	27bdffc8 	addiu	sp,sp,-56
       c:	afa5003c 	sw	a1,60(sp)
      10:	afbf002c 	sw	ra,44(sp)
      14:	afb00028 	sw	s0,40(sp)
      18:	3c050000 	lui	a1,0x0
      1c:	00808025 	move	s0,a0
      20:	0c000000 	jal	0 <func_809B3920>
      24:	24a50000 	addiu	a1,a1,0
      28:	8602001c 	lh	v0,28(s0)
      2c:	2401fff6 	li	at,-10
      30:	240e0001 	li	t6,1
      34:	14410004 	bne	v0,at,48 <EnArrow_Init+0x40>
      38:	240f000a 	li	t7,10
      3c:	a60f001c 	sh	t7,28(s0)
      40:	a20e024b 	sb	t6,587(s0)
      44:	8602001c 	lh	v0,28(s0)
      48:	2841000a 	slti	at,v0,10
      4c:	1020006e 	beqz	at,208 <EnArrow_Init+0x200>
      50:	28410009 	slti	at,v0,9
      54:	1020000b 	beqz	at,84 <EnArrow_Init+0x7c>
      58:	8fa4003c 	lw	a0,60(sp)
      5c:	3c060400 	lui	a2,0x400
      60:	3c070400 	lui	a3,0x400
      64:	24e7436c 	addiu	a3,a3,17260
      68:	24c66010 	addiu	a2,a2,24592
      6c:	2605014c 	addiu	a1,s0,332
      70:	afa00010 	sw	zero,16(sp)
      74:	afa00014 	sw	zero,20(sp)
      78:	0c000000 	jal	0 <func_809B3920>
      7c:	afa00018 	sw	zero,24(sp)
      80:	8602001c 	lh	v0,28(s0)
      84:	28410003 	slti	at,v0,3
      88:	10200014 	beqz	at,dc <EnArrow_Init+0xd4>
      8c:	26050228 	addiu	a1,s0,552
      90:	24010001 	li	at,1
      94:	14410005 	bne	v0,at,ac <EnArrow_Init+0xa4>
      98:	24060002 	li	a2,2
      9c:	24180004 	li	t8,4
      a0:	3c010000 	lui	at,0x0
      a4:	10000004 	b	b8 <EnArrow_Init+0xb0>
      a8:	a0380000 	sb	t8,0(at)
      ac:	24190010 	li	t9,16
      b0:	3c010000 	lui	at,0x0
      b4:	a0390000 	sb	t9,0(at)
      b8:	3c080000 	lui	t0,0x0
      bc:	25080000 	addiu	t0,t0,0
      c0:	afa80014 	sw	t0,20(sp)
      c4:	8fa4003c 	lw	a0,60(sp)
      c8:	00003825 	move	a3,zero
      cc:	0c000000 	jal	0 <func_809B3920>
      d0:	afa00010 	sw	zero,16(sp)
      d4:	10000027 	b	174 <EnArrow_Init+0x16c>
      d8:	26050190 	addiu	a1,s0,400
      dc:	24010003 	li	at,3
      e0:	1441000b 	bne	v0,at,110 <EnArrow_Init+0x108>
      e4:	8fa4003c 	lw	a0,60(sp)
      e8:	3c090000 	lui	t1,0x0
      ec:	25290000 	addiu	t1,t1,0
      f0:	afa90014 	sw	t1,20(sp)
      f4:	26050228 	addiu	a1,s0,552
      f8:	24060002 	li	a2,2
      fc:	00003825 	move	a3,zero
     100:	0c000000 	jal	0 <func_809B3920>
     104:	afa00010 	sw	zero,16(sp)
     108:	1000001a 	b	174 <EnArrow_Init+0x16c>
     10c:	26050190 	addiu	a1,s0,400
     110:	24010004 	li	at,4
     114:	1441000b 	bne	v0,at,144 <EnArrow_Init+0x13c>
     118:	8fa4003c 	lw	a0,60(sp)
     11c:	3c0a0000 	lui	t2,0x0
     120:	254a0000 	addiu	t2,t2,0
     124:	afaa0014 	sw	t2,20(sp)
     128:	26050228 	addiu	a1,s0,552
     12c:	24060002 	li	a2,2
     130:	00003825 	move	a3,zero
     134:	0c000000 	jal	0 <func_809B3920>
     138:	afa00010 	sw	zero,16(sp)
     13c:	1000000d 	b	174 <EnArrow_Init+0x16c>
     140:	26050190 	addiu	a1,s0,400
     144:	24010005 	li	at,5
     148:	14410009 	bne	v0,at,170 <EnArrow_Init+0x168>
     14c:	8fa4003c 	lw	a0,60(sp)
     150:	3c0b0000 	lui	t3,0x0
     154:	256b0000 	addiu	t3,t3,0
     158:	afab0014 	sw	t3,20(sp)
     15c:	26050228 	addiu	a1,s0,552
     160:	24060002 	li	a2,2
     164:	00003825 	move	a3,zero
     168:	0c000000 	jal	0 <func_809B3920>
     16c:	afa00010 	sw	zero,16(sp)
     170:	26050190 	addiu	a1,s0,400
     174:	afa50030 	sw	a1,48(sp)
     178:	0c000000 	jal	0 <func_809B3920>
     17c:	8fa4003c 	lw	a0,60(sp)
     180:	3c070000 	lui	a3,0x0
     184:	8fa50030 	lw	a1,48(sp)
     188:	24e70000 	addiu	a3,a3,0
     18c:	8fa4003c 	lw	a0,60(sp)
     190:	0c000000 	jal	0 <func_809B3920>
     194:	02003025 	move	a2,s0
     198:	8602001c 	lh	v0,28(s0)
     19c:	240f0011 	li	t7,17
     1a0:	28410003 	slti	at,v0,3
     1a4:	10200006 	beqz	at,1c0 <EnArrow_Init+0x1b8>
     1a8:	00000000 	nop
     1ac:	920c01bd 	lbu	t4,445(s0)
     1b0:	8602001c 	lh	v0,28(s0)
     1b4:	318effe7 	andi	t6,t4,0xffe7
     1b8:	a20e01bd 	sb	t6,445(s0)
     1bc:	a20e01bd 	sb	t6,445(s0)
     1c0:	04410003 	bgez	v0,1d0 <EnArrow_Init+0x1c8>
     1c4:	2841000a 	slti	at,v0,10
     1c8:	1000000f 	b	208 <EnArrow_Init+0x200>
     1cc:	a20f01a0 	sb	t7,416(s0)
     1d0:	1020000d 	beqz	at,208 <EnArrow_Init+0x200>
     1d4:	0002c080 	sll	t8,v0,0x2
     1d8:	3c190000 	lui	t9,0x0
     1dc:	0338c821 	addu	t9,t9,t8
     1e0:	8f390000 	lw	t9,0(t9)
     1e4:	3c040000 	lui	a0,0x0
     1e8:	24840000 	addiu	a0,a0,0
     1ec:	240502c3 	li	a1,707
     1f0:	0c000000 	jal	0 <func_809B3920>
     1f4:	ae1901a8 	sw	t9,424(s0)
     1f8:	3c040000 	lui	a0,0x0
     1fc:	24840000 	addiu	a0,a0,0
     200:	0c000000 	jal	0 <func_809B3920>
     204:	8e0501a8 	lw	a1,424(s0)
     208:	3c050000 	lui	a1,0x0
     20c:	24a50000 	addiu	a1,a1,0
     210:	0c000000 	jal	0 <func_809B3920>
     214:	02002025 	move	a0,s0
     218:	8fbf002c 	lw	ra,44(sp)
     21c:	8fb00028 	lw	s0,40(sp)
     220:	27bd0038 	addiu	sp,sp,56
     224:	03e00008 	jr	ra
     228:	00000000 	nop

0000022c <EnArrow_Destroy>:
     22c:	27bdffe0 	addiu	sp,sp,-32
     230:	afbf001c 	sw	ra,28(sp)
     234:	afb00018 	sw	s0,24(sp)
     238:	afa50024 	sw	a1,36(sp)
     23c:	848e001c 	lh	t6,28(a0)
     240:	00808025 	move	s0,a0
     244:	00a02025 	move	a0,a1
     248:	29c10006 	slti	at,t6,6
     24c:	50200004 	beqzl	at,260 <EnArrow_Destroy+0x34>
     250:	2604014c 	addiu	a0,s0,332
     254:	0c000000 	jal	0 <func_809B3920>
     258:	8e050228 	lw	a1,552(s0)
     25c:	2604014c 	addiu	a0,s0,332
     260:	0c000000 	jal	0 <func_809B3920>
     264:	8fa50024 	lw	a1,36(sp)
     268:	8fa40024 	lw	a0,36(sp)
     26c:	0c000000 	jal	0 <func_809B3920>
     270:	26050190 	addiu	a1,s0,400
     274:	8e02024c 	lw	v0,588(s0)
     278:	5040000a 	beqzl	v0,2a4 <EnArrow_Destroy+0x78>
     27c:	8fbf001c 	lw	ra,28(sp)
     280:	8c4f0130 	lw	t7,304(v0)
     284:	51e00007 	beqzl	t7,2a4 <EnArrow_Destroy+0x78>
     288:	8fbf001c 	lw	ra,28(sp)
     28c:	8c580004 	lw	t8,4(v0)
     290:	3c01ffff 	lui	at,0xffff
     294:	34217fff 	ori	at,at,0x7fff
     298:	0301c824 	and	t9,t8,at
     29c:	ac590004 	sw	t9,4(v0)
     2a0:	8fbf001c 	lw	ra,28(sp)
     2a4:	8fb00018 	lw	s0,24(sp)
     2a8:	27bd0020 	addiu	sp,sp,32
     2ac:	03e00008 	jr	ra
     2b0:	00000000 	nop

000002b4 <func_809B3BD4>:
     2b4:	27bdffe0 	addiu	sp,sp,-32
     2b8:	afbf001c 	sw	ra,28(sp)
     2bc:	afb00018 	sw	s0,24(sp)
     2c0:	8c8e0118 	lw	t6,280(a0)
     2c4:	00808025 	move	s0,a0
     2c8:	8ca61c44 	lw	a2,7236(a1)
     2cc:	55c0003b 	bnezl	t6,3bc <L809B3C70+0x6c>
     2d0:	8fbf001c 	lw	ra,28(sp)
     2d4:	8482001c 	lh	v0,28(a0)
     2d8:	2401000a 	li	at,10
     2dc:	10410008 	beq	v0,at,300 <func_809B3BD4+0x4c>
     2e0:	0002c080 	sll	t8,v0,0x2
     2e4:	90cf0a73 	lbu	t7,2675(a2)
     2e8:	55e00006 	bnezl	t7,304 <func_809B3BD4+0x50>
     2ec:	2c41000a 	sltiu	at,v0,10
     2f0:	0c000000 	jal	0 <func_809B3920>
     2f4:	02002025 	move	a0,s0
     2f8:	10000030 	b	3bc <L809B3C70+0x6c>
     2fc:	8fbf001c 	lw	ra,28(sp)
     300:	2c41000a 	sltiu	at,v0,10
     304:	10200012 	beqz	at,350 <L809B3C70>
     308:	3c010000 	lui	at,0x0
     30c:	00380821 	addu	at,at,t8
     310:	8c380000 	lw	t8,0(at)
     314:	03000008 	jr	t8
     318:	00000000 	nop

0000031c <L809B3C3C>:
     31c:	00c02025 	move	a0,a2
     320:	0c000000 	jal	0 <func_809B3920>
     324:	24051820 	li	a1,6176
     328:	10000009 	b	350 <L809B3C70>
     32c:	00000000 	nop

00000330 <L809B3C50>:
     330:	00c02025 	move	a0,a2
     334:	0c000000 	jal	0 <func_809B3920>
     338:	24051804 	li	a1,6148
     33c:	10000004 	b	350 <L809B3C70>
     340:	00000000 	nop

00000344 <L809B3C64>:
     344:	00c02025 	move	a0,a2
     348:	0c000000 	jal	0 <func_809B3920>
     34c:	24051839 	li	a1,6201

00000350 <L809B3C70>:
     350:	3c050000 	lui	a1,0x0
     354:	24a50000 	addiu	a1,a1,0
     358:	0c000000 	jal	0 <func_809B3920>
     35c:	02002025 	move	a0,s0
     360:	26040210 	addiu	a0,s0,528
     364:	0c000000 	jal	0 <func_809B3920>
     368:	26050024 	addiu	a1,s0,36
     36c:	8619001c 	lh	t9,28(s0)
     370:	3c0542a0 	lui	a1,0x42a0
     374:	02002025 	move	a0,s0
     378:	2b210009 	slti	at,t9,9
     37c:	1420000a 	bnez	at,3a8 <L809B3C70+0x58>
     380:	00000000 	nop
     384:	0c000000 	jal	0 <func_809B3920>
     388:	02002025 	move	a0,s0
     38c:	a60000b8 	sh	zero,184(s0)
     390:	860200b8 	lh	v0,184(s0)
     394:	2408000f 	li	t0,15
     398:	a2080248 	sb	t0,584(s0)
     39c:	a60200b6 	sh	v0,182(s0)
     3a0:	10000005 	b	3b8 <L809B3C70+0x68>
     3a4:	a60200b4 	sh	v0,180(s0)
     3a8:	0c000000 	jal	0 <func_809B3920>
     3ac:	3c054316 	lui	a1,0x4316
     3b0:	2409000c 	li	t1,12
     3b4:	a2090248 	sb	t1,584(s0)
     3b8:	8fbf001c 	lw	ra,28(sp)
     3bc:	8fb00018 	lw	s0,24(sp)
     3c0:	27bd0020 	addiu	sp,sp,32
     3c4:	03e00008 	jr	ra
     3c8:	00000000 	nop

000003cc <func_809B3CEC>:
     3cc:	27bdffe0 	addiu	sp,sp,-32
     3d0:	afb00018 	sw	s0,24(sp)
     3d4:	afa40020 	sw	a0,32(sp)
     3d8:	00a08025 	move	s0,a1
     3dc:	00a02025 	move	a0,a1
     3e0:	afbf001c 	sw	ra,28(sp)
     3e4:	3c050000 	lui	a1,0x0
     3e8:	0c000000 	jal	0 <func_809B3920>
     3ec:	24a50000 	addiu	a1,a1,0
     3f0:	3c050400 	lui	a1,0x400
     3f4:	24a54310 	addiu	a1,a1,17168
     3f8:	0c000000 	jal	0 <func_809B3920>
     3fc:	2604014c 	addiu	a0,s0,332
     400:	0c000000 	jal	0 <func_809B3920>
     404:	00000000 	nop
     408:	3c0146c0 	lui	at,0x46c0
     40c:	44812000 	mtc1	at,$f4
     410:	3c013f00 	lui	at,0x3f00
     414:	44813000 	mtc1	at,$f6
     418:	86180032 	lh	t8,50(s0)
     41c:	34018000 	li	at,0x8000
     420:	46060201 	sub.s	$f8,$f0,$f6
     424:	46082282 	mul.s	$f10,$f4,$f8
     428:	4600540d 	trunc.w.s	$f16,$f10
     42c:	440f8000 	mfc1	t7,$f16
     430:	00000000 	nop
     434:	030fc821 	addu	t9,t8,t7
     438:	03214021 	addu	t0,t9,at
     43c:	0c000000 	jal	0 <func_809B3920>
     440:	a6080032 	sh	t0,50(s0)
     444:	3c010000 	lui	at,0x0
     448:	c4220000 	lwc1	$f2,0(at)
     44c:	c6120068 	lwc1	$f18,104(s0)
     450:	c60a0060 	lwc1	$f10,96(s0)
     454:	46001182 	mul.s	$f6,$f2,$f0
     458:	46061100 	add.s	$f4,$f2,$f6
     45c:	46049202 	mul.s	$f8,$f18,$f4
     460:	46085400 	add.s	$f16,$f10,$f8
     464:	0c000000 	jal	0 <func_809B3920>
     468:	e6100060 	swc1	$f16,96(s0)
     46c:	3c010000 	lui	at,0x0
     470:	c4260000 	lwc1	$f6,0(at)
     474:	3c010000 	lui	at,0x0
     478:	c4320000 	lwc1	$f18,0(at)
     47c:	c6080068 	lwc1	$f8,104(s0)
     480:	3c01bfc0 	lui	at,0xbfc0
     484:	46009102 	mul.s	$f4,$f18,$f0
     488:	44819000 	mtc1	at,$f18
     48c:	24090032 	li	t1,50
     490:	a2090248 	sb	t1,584(s0)
     494:	e612006c 	swc1	$f18,108(s0)
     498:	46043280 	add.s	$f10,$f6,$f4
     49c:	460a4402 	mul.s	$f16,$f8,$f10
     4a0:	e6100068 	swc1	$f16,104(s0)
     4a4:	8fbf001c 	lw	ra,28(sp)
     4a8:	8fb00018 	lw	s0,24(sp)
     4ac:	27bd0020 	addiu	sp,sp,32
     4b0:	03e00008 	jr	ra
     4b4:	00000000 	nop

000004b8 <func_809B3DD8>:
     4b8:	27bdff88 	addiu	sp,sp,-120
     4bc:	afb00030 	sw	s0,48(sp)
     4c0:	00808025 	move	s0,a0
     4c4:	afbf0034 	sw	ra,52(sp)
     4c8:	afa5007c 	sw	a1,124(sp)
     4cc:	26050210 	addiu	a1,s0,528
     4d0:	24840024 	addiu	a0,a0,36
     4d4:	0c000000 	jal	0 <func_809B3920>
     4d8:	27a60068 	addiu	a2,sp,104
     4dc:	8e02024c 	lw	v0,588(s0)
     4e0:	c6040024 	lwc1	$f4,36(s0)
     4e4:	c7aa0068 	lwc1	$f10,104(sp)
     4e8:	c4460024 	lwc1	$f6,36(v0)
     4ec:	c6120028 	lwc1	$f18,40(s0)
     4f0:	27a40068 	addiu	a0,sp,104
     4f4:	46062201 	sub.s	$f8,$f4,$f6
     4f8:	c4440028 	lwc1	$f4,40(v0)
     4fc:	460a4402 	mul.s	$f16,$f8,$f10
     500:	46049181 	sub.s	$f6,$f18,$f4
     504:	c7a8006c 	lwc1	$f8,108(sp)
     508:	c604002c 	lwc1	$f4,44(s0)
     50c:	46083282 	mul.s	$f10,$f6,$f8
     510:	c446002c 	lwc1	$f6,44(v0)
     514:	46062201 	sub.s	$f8,$f4,$f6
     518:	44802000 	mtc1	zero,$f4
     51c:	460a8480 	add.s	$f18,$f16,$f10
     520:	c7b00070 	lwc1	$f16,112(sp)
     524:	46104282 	mul.s	$f10,$f8,$f16
     528:	460a9300 	add.s	$f12,$f18,$f10
     52c:	4604603c 	c.lt.s	$f12,$f4
     530:	00000000 	nop
     534:	4503005d 	bc1tl	6ac <func_809B3DD8+0x1f4>
     538:	8fbf0034 	lw	ra,52(sp)
     53c:	0c000000 	jal	0 <func_809B3920>
     540:	e7ac004c 	swc1	$f12,76(sp)
     544:	3c013f80 	lui	at,0x3f80
     548:	44813000 	mtc1	at,$f6
     54c:	c7ac004c 	lwc1	$f12,76(sp)
     550:	4606003c 	c.lt.s	$f0,$f6
     554:	00000000 	nop
     558:	45030054 	bc1tl	6ac <func_809B3DD8+0x1f4>
     55c:	8fbf0034 	lw	ra,52(sp)
     560:	46006083 	div.s	$f2,$f12,$f0
     564:	27a40068 	addiu	a0,sp,104
     568:	44051000 	mfc1	a1,$f2
     56c:	0c000000 	jal	0 <func_809B3920>
     570:	00000000 	nop
     574:	8e04024c 	lw	a0,588(s0)
     578:	27a50068 	addiu	a1,sp,104
     57c:	27a6005c 	addiu	a2,sp,92
     580:	0c000000 	jal	0 <func_809B3920>
     584:	24840024 	addiu	a0,a0,36
     588:	8e05024c 	lw	a1,588(s0)
     58c:	8fa4007c 	lw	a0,124(sp)
     590:	27ae0074 	addiu	t6,sp,116
     594:	240f0001 	li	t7,1
     598:	24180001 	li	t8,1
     59c:	24190001 	li	t9,1
     5a0:	24080001 	li	t0,1
     5a4:	27a90044 	addiu	t1,sp,68
     5a8:	afa90024 	sw	t1,36(sp)
     5ac:	afa80020 	sw	t0,32(sp)
     5b0:	afb9001c 	sw	t9,28(sp)
     5b4:	afb80018 	sw	t8,24(sp)
     5b8:	afaf0014 	sw	t7,20(sp)
     5bc:	afae0010 	sw	t6,16(sp)
     5c0:	27a6005c 	addiu	a2,sp,92
     5c4:	27a70050 	addiu	a3,sp,80
     5c8:	24a50024 	addiu	a1,a1,36
     5cc:	0c000000 	jal	0 <func_809B3920>
     5d0:	248407c0 	addiu	a0,a0,1984
     5d4:	10400030 	beqz	v0,698 <func_809B3DD8+0x1e0>
     5d8:	c7a80050 	lwc1	$f8,80(sp)
     5dc:	c7b0005c 	lwc1	$f16,92(sp)
     5e0:	c7b20050 	lwc1	$f18,80(sp)
     5e4:	3c01bf80 	lui	at,0xbf80
     5e8:	4608803e 	c.le.s	$f16,$f8
     5ec:	00000000 	nop
     5f0:	45020008 	bc1fl	614 <func_809B3DD8+0x15c>
     5f4:	44811000 	mtc1	at,$f2
     5f8:	3c013f80 	lui	at,0x3f80
     5fc:	44816000 	mtc1	at,$f12
     600:	3c01bf80 	lui	at,0xbf80
     604:	44811000 	mtc1	at,$f2
     608:	10000005 	b	620 <func_809B3DD8+0x168>
     60c:	46006006 	mov.s	$f0,$f12
     610:	44811000 	mtc1	at,$f2
     614:	3c013f80 	lui	at,0x3f80
     618:	44816000 	mtc1	at,$f12
     61c:	46001006 	mov.s	$f0,$f2
     620:	46120280 	add.s	$f10,$f0,$f18
     624:	8e0a024c 	lw	t2,588(s0)
     628:	e54a0024 	swc1	$f10,36(t2)
     62c:	c7a40054 	lwc1	$f4,84(sp)
     630:	c7a60060 	lwc1	$f6,96(sp)
     634:	c7a80054 	lwc1	$f8,84(sp)
     638:	4604303e 	c.le.s	$f6,$f4
     63c:	00000000 	nop
     640:	45020004 	bc1fl	654 <func_809B3DD8+0x19c>
     644:	46001006 	mov.s	$f0,$f2
     648:	10000002 	b	654 <func_809B3DD8+0x19c>
     64c:	46006006 	mov.s	$f0,$f12
     650:	46001006 	mov.s	$f0,$f2
     654:	46080400 	add.s	$f16,$f0,$f8
     658:	8e0b024c 	lw	t3,588(s0)
     65c:	e5700028 	swc1	$f16,40(t3)
     660:	c7b20058 	lwc1	$f18,88(sp)
     664:	c7aa0064 	lwc1	$f10,100(sp)
     668:	c7a40058 	lwc1	$f4,88(sp)
     66c:	4612503e 	c.le.s	$f10,$f18
     670:	00000000 	nop
     674:	45020004 	bc1fl	688 <func_809B3DD8+0x1d0>
     678:	46001006 	mov.s	$f0,$f2
     67c:	10000002 	b	688 <func_809B3DD8+0x1d0>
     680:	46006006 	mov.s	$f0,$f12
     684:	46001006 	mov.s	$f0,$f2
     688:	46040180 	add.s	$f6,$f0,$f4
     68c:	8e0c024c 	lw	t4,588(s0)
     690:	10000005 	b	6a8 <func_809B3DD8+0x1f0>
     694:	e586002c 	swc1	$f6,44(t4)
     698:	8e04024c 	lw	a0,588(s0)
     69c:	27a5005c 	addiu	a1,sp,92
     6a0:	0c000000 	jal	0 <func_809B3920>
     6a4:	24840024 	addiu	a0,a0,36
     6a8:	8fbf0034 	lw	ra,52(sp)
     6ac:	8fb00030 	lw	s0,48(sp)
     6b0:	27bd0078 	addiu	sp,sp,120
     6b4:	03e00008 	jr	ra
     6b8:	00000000 	nop

000006bc <func_809B3FDC>:
     6bc:	27bdff68 	addiu	sp,sp,-152
     6c0:	afbf0034 	sw	ra,52(sp)
     6c4:	afb00030 	sw	s0,48(sp)
     6c8:	afa5009c 	sw	a1,156(sp)
     6cc:	90820248 	lbu	v0,584(a0)
     6d0:	00808025 	move	s0,a0
     6d4:	14400003 	bnez	v0,6e4 <func_809B3FDC+0x28>
     6d8:	244effff 	addiu	t6,v0,-1
     6dc:	10000004 	b	6f0 <func_809B3FDC+0x34>
     6e0:	00001825 	move	v1,zero
     6e4:	31c200ff 	andi	v0,t6,0xff
     6e8:	00401825 	move	v1,v0
     6ec:	a20e0248 	sb	t6,584(s0)
     6f0:	54600006 	bnezl	v1,70c <func_809B3FDC+0x50>
     6f4:	44822000 	mtc1	v0,$f4
     6f8:	0c000000 	jal	0 <func_809B3920>
     6fc:	02002025 	move	a0,s0
     700:	1000016b 	b	cb0 <func_809B3FDC+0x5f4>
     704:	8fbf0034 	lw	ra,52(sp)
     708:	44822000 	mtc1	v0,$f4
     70c:	3c014f80 	lui	at,0x4f80
     710:	04410004 	bgez	v0,724 <func_809B3FDC+0x68>
     714:	468021a0 	cvt.s.w	$f6,$f4
     718:	44814000 	mtc1	at,$f8
     71c:	00000000 	nop
     720:	46083180 	add.s	$f6,$f6,$f8
     724:	3c010000 	lui	at,0x0
     728:	c42a0000 	lwc1	$f10,0(at)
     72c:	3c010000 	lui	at,0x0
     730:	460a303c 	c.lt.s	$f6,$f10
     734:	00000000 	nop
     738:	45020004 	bc1fl	74c <func_809B3FDC+0x90>
     73c:	8602001c 	lh	v0,28(s0)
     740:	c4300000 	lwc1	$f16,0(at)
     744:	e610006c 	swc1	$f16,108(s0)
     748:	8602001c 	lh	v0,28(s0)
     74c:	0002182b 	sltu	v1,zero,v0
     750:	10600007 	beqz	v1,770 <func_809B3FDC+0xb4>
     754:	28410009 	slti	at,v0,9
     758:	2843000a 	slti	v1,v0,10
     75c:	10600004 	beqz	v1,770 <func_809B3FDC+0xb4>
     760:	00000000 	nop
     764:	920301a0 	lbu	v1,416(s0)
     768:	30630002 	andi	v1,v1,0x2
     76c:	0003182b 	sltu	v1,zero,v1
     770:	14600006 	bnez	v1,78c <func_809B3FDC+0xd0>
     774:	00000000 	nop
     778:	920f024a 	lbu	t7,586(s0)
     77c:	26040210 	addiu	a0,s0,528
     780:	26050024 	addiu	a1,s0,36
     784:	11e000a8 	beqz	t7,a28 <func_809B3FDC+0x36c>
     788:	00000000 	nop
     78c:	14200039 	bnez	at,874 <func_809B3FDC+0x1b8>
     790:	8fa4009c 	lw	a0,156(sp)
     794:	10600013 	beqz	v1,7e4 <func_809B3FDC+0x128>
     798:	24071825 	li	a3,6181
     79c:	c6120024 	lwc1	$f18,36(s0)
     7a0:	c6040100 	lwc1	$f4,256(s0)
     7a4:	3c013f00 	lui	at,0x3f00
     7a8:	44810000 	mtc1	at,$f0
     7ac:	46049200 	add.s	$f8,$f18,$f4
     7b0:	c60a0028 	lwc1	$f10,40(s0)
     7b4:	c6100104 	lwc1	$f16,260(s0)
     7b8:	8602001c 	lh	v0,28(s0)
     7bc:	46004182 	mul.s	$f6,$f8,$f0
     7c0:	46105480 	add.s	$f18,$f10,$f16
     7c4:	c608002c 	lwc1	$f8,44(s0)
     7c8:	46009102 	mul.s	$f4,$f18,$f0
     7cc:	e6060024 	swc1	$f6,36(s0)
     7d0:	c6060108 	lwc1	$f6,264(s0)
     7d4:	46064280 	add.s	$f10,$f8,$f6
     7d8:	e6040028 	swc1	$f4,40(s0)
     7dc:	46005402 	mul.s	$f16,$f10,$f0
     7e0:	e610002c 	swc1	$f16,44(s0)
     7e4:	2401000a 	li	at,10
     7e8:	14410013 	bne	v0,at,838 <func_809B3FDC+0x17c>
     7ec:	3c190000 	lui	t9,0x0
     7f0:	8f390000 	lw	t9,0(t9)
     7f4:	2418ffff 	li	t8,-1
     7f8:	24060056 	li	a2,86
     7fc:	a7380d38 	sh	t8,3384(t9)
     800:	c6120028 	lwc1	$f18,40(s0)
     804:	8e070024 	lw	a3,36(s0)
     808:	8fa5009c 	lw	a1,156(sp)
     80c:	e7b20010 	swc1	$f18,16(sp)
     810:	c604002c 	lwc1	$f4,44(s0)
     814:	afa00024 	sw	zero,36(sp)
     818:	afa00020 	sw	zero,32(sp)
     81c:	afa0001c 	sw	zero,28(sp)
     820:	afa00018 	sw	zero,24(sp)
     824:	24a41c24 	addiu	a0,a1,7204
     828:	0c000000 	jal	0 <func_809B3920>
     82c:	e7a40014 	swc1	$f4,20(sp)
     830:	10000001 	b	838 <func_809B3FDC+0x17c>
     834:	2407182b 	li	a3,6187
     838:	26050024 	addiu	a1,s0,36
     83c:	afa50044 	sw	a1,68(sp)
     840:	8fa4009c 	lw	a0,156(sp)
     844:	00003025 	move	a2,zero
     848:	0c000000 	jal	0 <func_809B3920>
     84c:	a7a70072 	sh	a3,114(sp)
     850:	97a70072 	lhu	a3,114(sp)
     854:	8fa4009c 	lw	a0,156(sp)
     858:	8fa50044 	lw	a1,68(sp)
     85c:	0c000000 	jal	0 <func_809B3920>
     860:	24060014 	li	a2,20
     864:	0c000000 	jal	0 <func_809B3920>
     868:	02002025 	move	a0,s0
     86c:	1000009e 	b	ae8 <func_809B3FDC+0x42c>
     870:	8e02024c 	lw	v0,588(s0)
     874:	26070024 	addiu	a3,s0,36
     878:	afa70044 	sw	a3,68(sp)
     87c:	00002825 	move	a1,zero
     880:	24060096 	li	a2,150
     884:	0c000000 	jal	0 <func_809B3920>
     888:	afa30050 	sw	v1,80(sp)
     88c:	8fa30050 	lw	v1,80(sp)
     890:	5060004d 	beqzl	v1,9c8 <func_809B3FDC+0x30c>
     894:	9208024a 	lbu	t0,586(s0)
     898:	8e0301c8 	lw	v1,456(s0)
     89c:	24010004 	li	at,4
     8a0:	90690014 	lbu	t1,20(v1)
     8a4:	51210048 	beql	t1,at,9c8 <func_809B3FDC+0x30c>
     8a8:	9208024a 	lbu	t0,586(s0)
     8ac:	8e020194 	lw	v0,404(s0)
     8b0:	02002825 	move	a1,s0
     8b4:	8c4a0130 	lw	t2,304(v0)
     8b8:	51400024 	beqzl	t2,94c <func_809B3FDC+0x290>
     8bc:	92090249 	lbu	t1,585(s0)
     8c0:	920b01a0 	lbu	t3,416(s0)
     8c4:	316c0004 	andi	t4,t3,0x4
     8c8:	55800020 	bnezl	t4,94c <func_809B3FDC+0x290>
     8cc:	92090249 	lbu	t1,585(s0)
     8d0:	8c4d0004 	lw	t5,4(v0)
     8d4:	02002025 	move	a0,s0
     8d8:	31ae4000 	andi	t6,t5,0x4000
     8dc:	51c0001b 	beqzl	t6,94c <func_809B3FDC+0x290>
     8e0:	92090249 	lbu	t1,585(s0)
     8e4:	ae02024c 	sw	v0,588(s0)
     8e8:	afa2006c 	sw	v0,108(sp)
     8ec:	0c000000 	jal	0 <func_809B3920>
     8f0:	8fa5009c 	lw	a1,156(sp)
     8f4:	8fa2006c 	lw	v0,108(sp)
     8f8:	8fa50044 	lw	a1,68(sp)
     8fc:	26060250 	addiu	a2,s0,592
     900:	0c000000 	jal	0 <func_809B3920>
     904:	24440024 	addiu	a0,v0,36
     908:	8fa2006c 	lw	v0,108(sp)
     90c:	3c013f00 	lui	at,0x3f00
     910:	44810000 	mtc1	at,$f0
     914:	8c4f0004 	lw	t7,4(v0)
     918:	35f88000 	ori	t8,t7,0x8000
     91c:	ac580004 	sw	t8,4(v0)
     920:	c6080068 	lwc1	$f8,104(s0)
     924:	c60a0060 	lwc1	$f10,96(s0)
     928:	921901a0 	lbu	t9,416(s0)
     92c:	46004182 	mul.s	$f6,$f8,$f0
     930:	3328fffd 	andi	t0,t9,0xfffd
     934:	46005402 	mul.s	$f16,$f10,$f0
     938:	a20801a0 	sb	t0,416(s0)
     93c:	e6060068 	swc1	$f6,104(s0)
     940:	10000068 	b	ae4 <func_809B3FDC+0x428>
     944:	e6100060 	swc1	$f16,96(s0)
     948:	92090249 	lbu	t1,585(s0)
     94c:	352b0001 	ori	t3,t1,0x1
     950:	a20b0249 	sb	t3,585(s0)
     954:	356c0002 	ori	t4,t3,0x2
     958:	a20c0249 	sb	t4,585(s0)
     95c:	906d0016 	lbu	t5,22(v1)
     960:	31ae0002 	andi	t6,t5,0x2
     964:	11c00010 	beqz	t6,9a8 <func_809B3FDC+0x2ec>
     968:	00000000 	nop
     96c:	846f000e 	lh	t7,14(v1)
     970:	448f9000 	mtc1	t7,$f18
     974:	00000000 	nop
     978:	46809120 	cvt.s.w	$f4,$f18
     97c:	e6040024 	swc1	$f4,36(s0)
     980:	84780010 	lh	t8,16(v1)
     984:	44984000 	mtc1	t8,$f8
     988:	00000000 	nop
     98c:	468041a0 	cvt.s.w	$f6,$f8
     990:	e6060028 	swc1	$f6,40(s0)
     994:	84790012 	lh	t9,18(v1)
     998:	44995000 	mtc1	t9,$f10
     99c:	00000000 	nop
     9a0:	46805420 	cvt.s.w	$f16,$f10
     9a4:	e610002c 	swc1	$f16,44(s0)
     9a8:	0c000000 	jal	0 <func_809B3920>
     9ac:	8fa4009c 	lw	a0,156(sp)
     9b0:	02002025 	move	a0,s0
     9b4:	0c000000 	jal	0 <func_809B3920>
     9b8:	24051814 	li	a1,6164
     9bc:	1000004a 	b	ae8 <func_809B3FDC+0x42c>
     9c0:	8e02024c 	lw	v0,588(s0)
     9c4:	9208024a 	lbu	t0,586(s0)
     9c8:	02002025 	move	a0,s0
     9cc:	3c050000 	lui	a1,0x0
     9d0:	51000045 	beqzl	t0,ae8 <func_809B3FDC+0x42c>
     9d4:	8e02024c 	lw	v0,588(s0)
     9d8:	0c000000 	jal	0 <func_809B3920>
     9dc:	24a50000 	addiu	a1,a1,0
     9e0:	3c050400 	lui	a1,0x400
     9e4:	24a5436c 	addiu	a1,a1,17260
     9e8:	0c000000 	jal	0 <func_809B3920>
     9ec:	2604014c 	addiu	a0,s0,332
     9f0:	8609001c 	lh	t1,28(s0)
     9f4:	240a003c 	li	t2,60
     9f8:	240b0014 	li	t3,20
     9fc:	05200003 	bltz	t1,a0c <func_809B3FDC+0x350>
     a00:	02002025 	move	a0,s0
     a04:	10000002 	b	a10 <func_809B3FDC+0x354>
     a08:	a20a0248 	sb	t2,584(s0)
     a0c:	a20b0248 	sb	t3,584(s0)
     a10:	0c000000 	jal	0 <func_809B3920>
     a14:	24051815 	li	a1,6165
     a18:	920c0249 	lbu	t4,585(s0)
     a1c:	358d0001 	ori	t5,t4,0x1
     a20:	10000030 	b	ae4 <func_809B3FDC+0x428>
     a24:	a20d0249 	sb	t5,585(s0)
     a28:	0c000000 	jal	0 <func_809B3920>
     a2c:	afa50044 	sw	a1,68(sp)
     a30:	0c000000 	jal	0 <func_809B3920>
     a34:	02002025 	move	a0,s0
     a38:	8fa4009c 	lw	a0,156(sp)
     a3c:	260e0074 	addiu	t6,s0,116
     a40:	240f0001 	li	t7,1
     a44:	24180001 	li	t8,1
     a48:	24190001 	li	t9,1
     a4c:	24080001 	li	t0,1
     a50:	27a90090 	addiu	t1,sp,144
     a54:	afa90024 	sw	t1,36(sp)
     a58:	afa80020 	sw	t0,32(sp)
     a5c:	afb9001c 	sw	t9,28(sp)
     a60:	afb80018 	sw	t8,24(sp)
     a64:	afaf0014 	sw	t7,20(sp)
     a68:	afae0010 	sw	t6,16(sp)
     a6c:	26050100 	addiu	a1,s0,256
     a70:	8fa60044 	lw	a2,68(sp)
     a74:	27a70084 	addiu	a3,sp,132
     a78:	0c000000 	jal	0 <func_809B3920>
     a7c:	248407c0 	addiu	a0,a0,1984
     a80:	304a00ff 	andi	t2,v0,0xff
     a84:	1140000e 	beqz	t2,ac0 <func_809B3FDC+0x404>
     a88:	a202024a 	sb	v0,586(s0)
     a8c:	8e060074 	lw	a2,116(s0)
     a90:	27ab0084 	addiu	t3,sp,132
     a94:	afab0010 	sw	t3,16(sp)
     a98:	8fa4009c 	lw	a0,156(sp)
     a9c:	02002825 	move	a1,s0
     aa0:	0c000000 	jal	0 <func_809B3920>
     aa4:	8fa70090 	lw	a3,144(sp)
     aa8:	27a40078 	addiu	a0,sp,120
     aac:	0c000000 	jal	0 <func_809B3920>
     ab0:	8fa50044 	lw	a1,68(sp)
     ab4:	8fa40044 	lw	a0,68(sp)
     ab8:	0c000000 	jal	0 <func_809B3920>
     abc:	27a50084 	addiu	a1,sp,132
     ac0:	860c001c 	lh	t4,28(s0)
     ac4:	29810009 	slti	at,t4,9
     ac8:	50200007 	beqzl	at,ae8 <func_809B3FDC+0x42c>
     acc:	8e02024c 	lw	v0,588(s0)
     ad0:	c60e0060 	lwc1	$f14,96(s0)
     ad4:	c60c0068 	lwc1	$f12,104(s0)
     ad8:	0c000000 	jal	0 <func_809B3920>
     adc:	46007387 	neg.s	$f14,$f14
     ae0:	a60200b4 	sh	v0,180(s0)
     ae4:	8e02024c 	lw	v0,588(s0)
     ae8:	50400071 	beqzl	v0,cb0 <func_809B3FDC+0x5f4>
     aec:	8fbf0034 	lw	ra,52(sp)
     af0:	8c4d0130 	lw	t5,304(v0)
     af4:	26040210 	addiu	a0,s0,528
     af8:	26050250 	addiu	a1,s0,592
     afc:	11a0006a 	beqz	t5,ca8 <func_809B3FDC+0x5ec>
     b00:	8fae009c 	lw	t6,156(sp)
     b04:	25cf07c0 	addiu	t7,t6,1984
     b08:	afaf003c 	sw	t7,60(sp)
     b0c:	27a60060 	addiu	a2,sp,96
     b10:	0c000000 	jal	0 <func_809B3920>
     b14:	afa50040 	sw	a1,64(sp)
     b18:	8fa40044 	lw	a0,68(sp)
     b1c:	8fa50040 	lw	a1,64(sp)
     b20:	0c000000 	jal	0 <func_809B3920>
     b24:	27a60054 	addiu	a2,sp,84
     b28:	27b80094 	addiu	t8,sp,148
     b2c:	24190001 	li	t9,1
     b30:	24080001 	li	t0,1
     b34:	24090001 	li	t1,1
     b38:	240a0001 	li	t2,1
     b3c:	27ab0090 	addiu	t3,sp,144
     b40:	afab0024 	sw	t3,36(sp)
     b44:	afaa0020 	sw	t2,32(sp)
     b48:	afa9001c 	sw	t1,28(sp)
     b4c:	afa80018 	sw	t0,24(sp)
     b50:	afb90014 	sw	t9,20(sp)
     b54:	afb80010 	sw	t8,16(sp)
     b58:	8fa4003c 	lw	a0,60(sp)
     b5c:	27a50060 	addiu	a1,sp,96
     b60:	27a60054 	addiu	a2,sp,84
     b64:	0c000000 	jal	0 <func_809B3920>
     b68:	27a70084 	addiu	a3,sp,132
     b6c:	1040003d 	beqz	v0,c64 <func_809B3FDC+0x5a8>
     b70:	8fa40044 	lw	a0,68(sp)
     b74:	c7b20084 	lwc1	$f18,132(sp)
     b78:	c7a40054 	lwc1	$f4,84(sp)
     b7c:	c7a80084 	lwc1	$f8,132(sp)
     b80:	3c01bf80 	lui	at,0xbf80
     b84:	4612203e 	c.le.s	$f4,$f18
     b88:	00000000 	nop
     b8c:	45020008 	bc1fl	bb0 <func_809B3FDC+0x4f4>
     b90:	44816000 	mtc1	at,$f12
     b94:	3c013f80 	lui	at,0x3f80
     b98:	44811000 	mtc1	at,$f2
     b9c:	3c01bf80 	lui	at,0xbf80
     ba0:	44816000 	mtc1	at,$f12
     ba4:	10000005 	b	bbc <func_809B3FDC+0x500>
     ba8:	46001006 	mov.s	$f0,$f2
     bac:	44816000 	mtc1	at,$f12
     bb0:	3c013f80 	lui	at,0x3f80
     bb4:	44811000 	mtc1	at,$f2
     bb8:	46006006 	mov.s	$f0,$f12
     bbc:	46080180 	add.s	$f6,$f0,$f8
     bc0:	8e0c024c 	lw	t4,588(s0)
     bc4:	e5860024 	swc1	$f6,36(t4)
     bc8:	c7aa0088 	lwc1	$f10,136(sp)
     bcc:	c7b00058 	lwc1	$f16,88(sp)
     bd0:	c7b20088 	lwc1	$f18,136(sp)
     bd4:	460a803e 	c.le.s	$f16,$f10
     bd8:	00000000 	nop
     bdc:	45020004 	bc1fl	bf0 <func_809B3FDC+0x534>
     be0:	46006006 	mov.s	$f0,$f12
     be4:	10000002 	b	bf0 <func_809B3FDC+0x534>
     be8:	46001006 	mov.s	$f0,$f2
     bec:	46006006 	mov.s	$f0,$f12
     bf0:	46120100 	add.s	$f4,$f0,$f18
     bf4:	8e0d024c 	lw	t5,588(s0)
     bf8:	e5a40028 	swc1	$f4,40(t5)
     bfc:	c7a8008c 	lwc1	$f8,140(sp)
     c00:	c7a6005c 	lwc1	$f6,92(sp)
     c04:	c7aa008c 	lwc1	$f10,140(sp)
     c08:	4608303e 	c.le.s	$f6,$f8
     c0c:	00000000 	nop
     c10:	45020004 	bc1fl	c24 <func_809B3FDC+0x568>
     c14:	46006006 	mov.s	$f0,$f12
     c18:	10000002 	b	c24 <func_809B3FDC+0x568>
     c1c:	46001006 	mov.s	$f0,$f2
     c20:	46006006 	mov.s	$f0,$f12
     c24:	460a0400 	add.s	$f16,$f0,$f10
     c28:	8e0e024c 	lw	t6,588(s0)
     c2c:	e5d0002c 	swc1	$f16,44(t6)
     c30:	8e04024c 	lw	a0,588(s0)
     c34:	8fa60040 	lw	a2,64(sp)
     c38:	8fa50044 	lw	a1,68(sp)
     c3c:	0c000000 	jal	0 <func_809B3920>
     c40:	24840024 	addiu	a0,a0,36
     c44:	8e02024c 	lw	v0,588(s0)
     c48:	3c01ffff 	lui	at,0xffff
     c4c:	34217fff 	ori	at,at,0x7fff
     c50:	8c4f0004 	lw	t7,4(v0)
     c54:	01e1c024 	and	t8,t7,at
     c58:	ac580004 	sw	t8,4(v0)
     c5c:	10000005 	b	c74 <func_809B3FDC+0x5b8>
     c60:	ae00024c 	sw	zero,588(s0)
     c64:	8e06024c 	lw	a2,588(s0)
     c68:	8fa50040 	lw	a1,64(sp)
     c6c:	0c000000 	jal	0 <func_809B3920>
     c70:	24c60024 	addiu	a2,a2,36
     c74:	9219024a 	lbu	t9,586(s0)
     c78:	5320000d 	beqzl	t9,cb0 <func_809B3FDC+0x5f4>
     c7c:	8fbf0034 	lw	ra,52(sp)
     c80:	8e02024c 	lw	v0,588(s0)
     c84:	5040000a 	beqzl	v0,cb0 <func_809B3FDC+0x5f4>
     c88:	8fbf0034 	lw	ra,52(sp)
     c8c:	8c480004 	lw	t0,4(v0)
     c90:	3c01ffff 	lui	at,0xffff
     c94:	34217fff 	ori	at,at,0x7fff
     c98:	01014824 	and	t1,t0,at
     c9c:	ac490004 	sw	t1,4(v0)
     ca0:	10000002 	b	cac <func_809B3FDC+0x5f0>
     ca4:	ae00024c 	sw	zero,588(s0)
     ca8:	ae00024c 	sw	zero,588(s0)
     cac:	8fbf0034 	lw	ra,52(sp)
     cb0:	8fb00030 	lw	s0,48(sp)
     cb4:	27bd0098 	addiu	sp,sp,152
     cb8:	03e00008 	jr	ra
     cbc:	00000000 	nop

00000cc0 <func_809B45E0>:
     cc0:	27bdffe8 	addiu	sp,sp,-24
     cc4:	afa5001c 	sw	a1,28(sp)
     cc8:	00802825 	move	a1,a0
     ccc:	afbf0014 	sw	ra,20(sp)
     cd0:	afa40018 	sw	a0,24(sp)
     cd4:	afa50018 	sw	a1,24(sp)
     cd8:	0c000000 	jal	0 <func_809B3920>
     cdc:	2484014c 	addiu	a0,a0,332
     ce0:	8fa50018 	lw	a1,24(sp)
     ce4:	90a20248 	lbu	v0,584(a1)
     ce8:	14400003 	bnez	v0,cf8 <func_809B45E0+0x38>
     cec:	244effff 	addiu	t6,v0,-1
     cf0:	10000003 	b	d00 <func_809B45E0+0x40>
     cf4:	00001825 	move	v1,zero
     cf8:	a0ae0248 	sb	t6,584(a1)
     cfc:	31c300ff 	andi	v1,t6,0xff
     d00:	54600004 	bnezl	v1,d14 <func_809B45E0+0x54>
     d04:	8fbf0014 	lw	ra,20(sp)
     d08:	0c000000 	jal	0 <func_809B3920>
     d0c:	00a02025 	move	a0,a1
     d10:	8fbf0014 	lw	ra,20(sp)
     d14:	27bd0018 	addiu	sp,sp,24
     d18:	03e00008 	jr	ra
     d1c:	00000000 	nop

00000d20 <func_809B4640>:
     d20:	27bdffe8 	addiu	sp,sp,-24
     d24:	afa5001c 	sw	a1,28(sp)
     d28:	00802825 	move	a1,a0
     d2c:	afbf0014 	sw	ra,20(sp)
     d30:	afa40018 	sw	a0,24(sp)
     d34:	afa50018 	sw	a1,24(sp)
     d38:	0c000000 	jal	0 <func_809B3920>
     d3c:	2484014c 	addiu	a0,a0,332
     d40:	0c000000 	jal	0 <func_809B3920>
     d44:	8fa40018 	lw	a0,24(sp)
     d48:	8fa50018 	lw	a1,24(sp)
     d4c:	90a20248 	lbu	v0,584(a1)
     d50:	14400003 	bnez	v0,d60 <func_809B4640+0x40>
     d54:	244effff 	addiu	t6,v0,-1
     d58:	10000003 	b	d68 <func_809B4640+0x48>
     d5c:	00001825 	move	v1,zero
     d60:	a0ae0248 	sb	t6,584(a1)
     d64:	31c300ff 	andi	v1,t6,0xff
     d68:	54600004 	bnezl	v1,d7c <func_809B4640+0x5c>
     d6c:	8fbf0014 	lw	ra,20(sp)
     d70:	0c000000 	jal	0 <func_809B3920>
     d74:	00a02025 	move	a0,a1
     d78:	8fbf0014 	lw	ra,20(sp)
     d7c:	27bd0018 	addiu	sp,sp,24
     d80:	03e00008 	jr	ra
     d84:	00000000 	nop

00000d88 <EnArrow_Update>:
     d88:	27bdffa0 	addiu	sp,sp,-96
     d8c:	afbf003c 	sw	ra,60(sp)
     d90:	afb10038 	sw	s1,56(sp)
     d94:	afb00034 	sw	s0,52(sp)
     d98:	908e024b 	lbu	t6,587(a0)
     d9c:	00808025 	move	s0,a0
     da0:	00a08825 	move	s1,a1
     da4:	15c0000c 	bnez	t6,dd8 <EnArrow_Update+0x50>
     da8:	8ca61c44 	lw	a2,7236(a1)
     dac:	848f001c 	lh	t7,28(a0)
     db0:	02202025 	move	a0,s1
     db4:	05e00004 	bltz	t7,dc8 <EnArrow_Update+0x40>
     db8:	00000000 	nop
     dbc:	90d80a73 	lbu	t8,2675(a2)
     dc0:	57000006 	bnezl	t8,ddc <EnArrow_Update+0x54>
     dc4:	8e19025c 	lw	t9,604(s0)
     dc8:	0c000000 	jal	0 <func_809B3920>
     dcc:	00c02825 	move	a1,a2
     dd0:	54400007 	bnezl	v0,df0 <EnArrow_Update+0x68>
     dd4:	8602001c 	lh	v0,28(s0)
     dd8:	8e19025c 	lw	t9,604(s0)
     ddc:	02002025 	move	a0,s0
     de0:	02202825 	move	a1,s1
     de4:	0320f809 	jalr	t9
     de8:	00000000 	nop
     dec:	8602001c 	lh	v0,28(s0)
     df0:	28410003 	slti	at,v0,3
     df4:	14200022 	bnez	at,e80 <EnArrow_Update+0xf8>
     df8:	28410009 	slti	at,v0,9
     dfc:	10200020 	beqz	at,e80 <EnArrow_Update+0xf8>
     e00:	3c080000 	lui	t0,0x0
     e04:	25080000 	addiu	t0,t0,0
     e08:	8d0a0000 	lw	t2,0(t0)
     e0c:	27a20048 	addiu	v0,sp,72
     e10:	ac4a0000 	sw	t2,0(v0)
     e14:	8d090004 	lw	t1,4(t0)
     e18:	ac490004 	sw	t1,4(v0)
     e1c:	8d0a0008 	lw	t2,8(t0)
     e20:	ac4a0008 	sw	t2,8(v0)
     e24:	8e0b011c 	lw	t3,284(s0)
     e28:	55600029 	bnezl	t3,ed0 <EnArrow_Update+0x148>
     e2c:	8fbf003c 	lw	ra,60(sp)
     e30:	860c001c 	lh	t4,28(s0)
     e34:	c6040024 	lwc1	$f4,36(s0)
     e38:	26241c24 	addiu	a0,s1,7204
     e3c:	000c6840 	sll	t5,t4,0x1
     e40:	004d7021 	addu	t6,v0,t5
     e44:	85c7fffa 	lh	a3,-6(t6)
     e48:	e7a40010 	swc1	$f4,16(sp)
     e4c:	c6060028 	lwc1	$f6,40(s0)
     e50:	02002825 	move	a1,s0
     e54:	02203025 	move	a2,s1
     e58:	e7a60014 	swc1	$f6,20(sp)
     e5c:	c608002c 	lwc1	$f8,44(s0)
     e60:	afa00028 	sw	zero,40(sp)
     e64:	afa00024 	sw	zero,36(sp)
     e68:	afa00020 	sw	zero,32(sp)
     e6c:	afa0001c 	sw	zero,28(sp)
     e70:	0c000000 	jal	0 <func_809B3920>
     e74:	e7a80018 	swc1	$f8,24(sp)
     e78:	10000015 	b	ed0 <EnArrow_Update+0x148>
     e7c:	8fbf003c 	lw	ra,60(sp)
     e80:	14400012 	bnez	v0,ecc <EnArrow_Update+0x144>
     e84:	02202025 	move	a0,s1
     e88:	3c0f0000 	lui	t7,0x0
     e8c:	3c180000 	lui	t8,0x0
     e90:	27180000 	addiu	t8,t8,0
     e94:	25ef0000 	addiu	t7,t7,0
     e98:	3c060000 	lui	a2,0x0
     e9c:	3c070000 	lui	a3,0x0
     ea0:	24190064 	li	t9,100
     ea4:	24080008 	li	t0,8
     ea8:	afa80020 	sw	t0,32(sp)
     eac:	afb90018 	sw	t9,24(sp)
     eb0:	24e70000 	addiu	a3,a3,0
     eb4:	24c60000 	addiu	a2,a2,0
     eb8:	afaf0010 	sw	t7,16(sp)
     ebc:	afb80014 	sw	t8,20(sp)
     ec0:	2605021c 	addiu	a1,s0,540
     ec4:	0c000000 	jal	0 <func_809B3920>
     ec8:	afa0001c 	sw	zero,28(sp)
     ecc:	8fbf003c 	lw	ra,60(sp)
     ed0:	8fb00034 	lw	s0,52(sp)
     ed4:	8fb10038 	lw	s1,56(sp)
     ed8:	03e00008 	jr	ra
     edc:	27bd0060 	addiu	sp,sp,96

00000ee0 <func_809B4800>:
     ee0:	27bdffb0 	addiu	sp,sp,-80
     ee4:	afb00020 	sw	s0,32(sp)
     ee8:	00808025 	move	s0,a0
     eec:	afbf0024 	sw	ra,36(sp)
     ef0:	afa50054 	sw	a1,84(sp)
     ef4:	3c040000 	lui	a0,0x0
     ef8:	24840000 	addiu	a0,a0,0
     efc:	0c000000 	jal	0 <func_809B3920>
     f00:	2605021c 	addiu	a1,s0,540
     f04:	8e0e025c 	lw	t6,604(s0)
     f08:	3c0f0000 	lui	t7,0x0
     f0c:	25ef0000 	addiu	t7,t7,0
     f10:	15cf0048 	bne	t6,t7,1034 <func_809B4800+0x154>
     f14:	3c040000 	lui	a0,0x0
     f18:	24840000 	addiu	a0,a0,0
     f1c:	0c000000 	jal	0 <func_809B3920>
     f20:	27a50044 	addiu	a1,sp,68
     f24:	3c040000 	lui	a0,0x0
     f28:	24840000 	addiu	a0,a0,0
     f2c:	0c000000 	jal	0 <func_809B3920>
     f30:	27a50038 	addiu	a1,sp,56
     f34:	8602001c 	lh	v0,28(s0)
     f38:	2841000a 	slti	at,v0,10
     f3c:	5020003e 	beqzl	at,1038 <func_809B4800+0x158>
     f40:	8fbf0024 	lw	ra,36(sp)
     f44:	8e18024c 	lw	t8,588(s0)
     f48:	28430006 	slti	v1,v0,6
     f4c:	8fa40054 	lw	a0,84(sp)
     f50:	1700000a 	bnez	t8,f7c <func_809B4800+0x9c>
     f54:	26050190 	addiu	a1,s0,400
     f58:	27b90038 	addiu	t9,sp,56
     f5c:	afb90010 	sw	t9,16(sp)
     f60:	2606022c 	addiu	a2,s0,556
     f64:	27a70044 	addiu	a3,sp,68
     f68:	0c000000 	jal	0 <func_809B3920>
     f6c:	afa30034 	sw	v1,52(sp)
     f70:	8fa30034 	lw	v1,52(sp)
     f74:	10000027 	b	1014 <func_809B4800+0x134>
     f78:	00621824 	and	v1,v1,v0
     f7c:	10600025 	beqz	v1,1014 <func_809B4800+0x134>
     f80:	c7a40044 	lwc1	$f4,68(sp)
     f84:	c6060230 	lwc1	$f6,560(s0)
     f88:	c7a80048 	lwc1	$f8,72(sp)
     f8c:	46062032 	c.eq.s	$f4,$f6
     f90:	00000000 	nop
     f94:	4500001f 	bc1f	1014 <func_809B4800+0x134>
     f98:	00000000 	nop
     f9c:	c60a0234 	lwc1	$f10,564(s0)
     fa0:	c7b0004c 	lwc1	$f16,76(sp)
     fa4:	460a4032 	c.eq.s	$f8,$f10
     fa8:	00000000 	nop
     fac:	45000019 	bc1f	1014 <func_809B4800+0x134>
     fb0:	00000000 	nop
     fb4:	c6120238 	lwc1	$f18,568(s0)
     fb8:	c7a40038 	lwc1	$f4,56(sp)
     fbc:	46128032 	c.eq.s	$f16,$f18
     fc0:	00000000 	nop
     fc4:	45000013 	bc1f	1014 <func_809B4800+0x134>
     fc8:	00000000 	nop
     fcc:	c606023c 	lwc1	$f6,572(s0)
     fd0:	c7a8003c 	lwc1	$f8,60(sp)
     fd4:	46062032 	c.eq.s	$f4,$f6
     fd8:	00000000 	nop
     fdc:	4500000d 	bc1f	1014 <func_809B4800+0x134>
     fe0:	00000000 	nop
     fe4:	c60a0240 	lwc1	$f10,576(s0)
     fe8:	c7b00040 	lwc1	$f16,64(sp)
     fec:	460a4032 	c.eq.s	$f8,$f10
     ff0:	00000000 	nop
     ff4:	45000007 	bc1f	1014 <func_809B4800+0x134>
     ff8:	00000000 	nop
     ffc:	c6120244 	lwc1	$f18,580(s0)
    1000:	46128032 	c.eq.s	$f16,$f18
    1004:	00000000 	nop
    1008:	45000002 	bc1f	1014 <func_809B4800+0x134>
    100c:	00000000 	nop
    1010:	00001825 	move	v1,zero
    1014:	50600008 	beqzl	v1,1038 <func_809B4800+0x158>
    1018:	8fbf0024 	lw	ra,36(sp)
    101c:	0c000000 	jal	0 <func_809B3920>
    1020:	8e040228 	lw	a0,552(s0)
    1024:	00402025 	move	a0,v0
    1028:	27a50044 	addiu	a1,sp,68
    102c:	0c000000 	jal	0 <func_809B3920>
    1030:	27a60038 	addiu	a2,sp,56
    1034:	8fbf0024 	lw	ra,36(sp)
    1038:	8fb00020 	lw	s0,32(sp)
    103c:	27bd0050 	addiu	sp,sp,80
    1040:	03e00008 	jr	ra
    1044:	00000000 	nop

00001048 <EnArrow_Draw>:
    1048:	27bdff88 	addiu	sp,sp,-120
    104c:	afbf002c 	sw	ra,44(sp)
    1050:	afb00028 	sw	s0,40(sp)
    1054:	afa5007c 	sw	a1,124(sp)
    1058:	848e001c 	lh	t6,28(a0)
    105c:	00808025 	move	s0,a0
    1060:	29c10009 	slti	at,t6,9
    1064:	5020001c 	beqzl	at,10d8 <EnArrow_Draw+0x90>
    1068:	44805000 	mtc1	zero,$f10
    106c:	0c000000 	jal	0 <func_809B3920>
    1070:	8ca40000 	lw	a0,0(a1)
    1074:	3c180000 	lui	t8,0x0
    1078:	8f180000 	lw	t8,0(t8)
    107c:	c60400ec 	lwc1	$f4,236(s0)
    1080:	8fa4007c 	lw	a0,124(sp)
    1084:	87190492 	lh	t9,1170(t8)
    1088:	00003825 	move	a3,zero
    108c:	24020001 	li	v0,1
    1090:	44993000 	mtc1	t9,$f6
    1094:	00000000 	nop
    1098:	46803220 	cvt.s.w	$f8,$f6
    109c:	4608203c 	c.lt.s	$f4,$f8
    10a0:	00000000 	nop
    10a4:	45000003 	bc1f	10b4 <EnArrow_Draw+0x6c>
    10a8:	00000000 	nop
    10ac:	10000001 	b	10b4 <EnArrow_Draw+0x6c>
    10b0:	00001025 	move	v0,zero
    10b4:	8e050150 	lw	a1,336(s0)
    10b8:	8e06016c 	lw	a2,364(s0)
    10bc:	afa20018 	sw	v0,24(sp)
    10c0:	afb00014 	sw	s0,20(sp)
    10c4:	0c000000 	jal	0 <func_809B3920>
    10c8:	afa00010 	sw	zero,16(sp)
    10cc:	100000c9 	b	13f4 <EnArrow_Draw+0x3ac>
    10d0:	02002025 	move	a0,s0
    10d4:	44805000 	mtc1	zero,$f10
    10d8:	c6100068 	lwc1	$f16,104(s0)
    10dc:	46105032 	c.eq.s	$f10,$f16
    10e0:	00000000 	nop
    10e4:	450300c3 	bc1tl	13f4 <EnArrow_Draw+0x3ac>
    10e8:	02002025 	move	a0,s0
    10ec:	92040248 	lbu	a0,584(s0)
    10f0:	00800821 	move	at,a0
    10f4:	00042080 	sll	a0,a0,0x2
    10f8:	00812021 	addu	a0,a0,at
    10fc:	000420c0 	sll	a0,a0,0x3
    1100:	00812023 	subu	a0,a0,at
    1104:	00042100 	sll	a0,a0,0x4
    1108:	00812021 	addu	a0,a0,at
    110c:	000420c0 	sll	a0,a0,0x3
    1110:	00042400 	sll	a0,a0,0x10
    1114:	0c000000 	jal	0 <func_809B3920>
    1118:	00042403 	sra	a0,a0,0x10
    111c:	3c0142ff 	lui	at,0x42ff
    1120:	44811000 	mtc1	at,$f2
    1124:	240a0001 	li	t2,1
    1128:	3c060000 	lui	a2,0x0
    112c:	46020482 	mul.s	$f18,$f0,$f2
    1130:	24c60000 	addiu	a2,a2,0
    1134:	27a40054 	addiu	a0,sp,84
    1138:	46029180 	add.s	$f6,$f18,$f2
    113c:	4449f800 	cfc1	t1,$31
    1140:	44caf800 	ctc1	t2,$31
    1144:	00000000 	nop
    1148:	46003124 	cvt.w.s	$f4,$f6
    114c:	444af800 	cfc1	t2,$31
    1150:	00000000 	nop
    1154:	314a0078 	andi	t2,t2,0x78
    1158:	11400012 	beqz	t2,11a4 <EnArrow_Draw+0x15c>
    115c:	3c014f00 	lui	at,0x4f00
    1160:	44812000 	mtc1	at,$f4
    1164:	240a0001 	li	t2,1
    1168:	46043101 	sub.s	$f4,$f6,$f4
    116c:	44caf800 	ctc1	t2,$31
    1170:	00000000 	nop
    1174:	46002124 	cvt.w.s	$f4,$f4
    1178:	444af800 	cfc1	t2,$31
    117c:	00000000 	nop
    1180:	314a0078 	andi	t2,t2,0x78
    1184:	15400005 	bnez	t2,119c <EnArrow_Draw+0x154>
    1188:	00000000 	nop
    118c:	440a2000 	mfc1	t2,$f4
    1190:	3c018000 	lui	at,0x8000
    1194:	10000007 	b	11b4 <EnArrow_Draw+0x16c>
    1198:	01415025 	or	t2,t2,at
    119c:	10000005 	b	11b4 <EnArrow_Draw+0x16c>
    11a0:	240affff 	li	t2,-1
    11a4:	440a2000 	mfc1	t2,$f4
    11a8:	00000000 	nop
    11ac:	0540fffb 	bltz	t2,119c <EnArrow_Draw+0x154>
    11b0:	00000000 	nop
    11b4:	8fab007c 	lw	t3,124(sp)
    11b8:	a3aa006f 	sb	t2,111(sp)
    11bc:	44c9f800 	ctc1	t1,$31
    11c0:	8d650000 	lw	a1,0(t3)
    11c4:	24070542 	li	a3,1346
    11c8:	0c000000 	jal	0 <func_809B3920>
    11cc:	afa50064 	sw	a1,100(sp)
    11d0:	8fac007c 	lw	t4,124(sp)
    11d4:	0c000000 	jal	0 <func_809B3920>
    11d8:	8d840000 	lw	a0,0(t4)
    11dc:	860d001c 	lh	t5,28(s0)
    11e0:	24010009 	li	at,9
    11e4:	8fa80064 	lw	t0,100(sp)
    11e8:	15a10016 	bne	t5,at,1244 <EnArrow_Draw+0x1fc>
    11ec:	3c0efa00 	lui	t6,0xfa00
    11f0:	8d0202d0 	lw	v0,720(t0)
    11f4:	3c0ffa00 	lui	t7,0xfa00
    11f8:	2418ffff 	li	t8,-1
    11fc:	244e0008 	addiu	t6,v0,8
    1200:	ad0e02d0 	sw	t6,720(t0)
    1204:	ac580004 	sw	t8,4(v0)
    1208:	ac4f0000 	sw	t7,0(v0)
    120c:	8d0202d0 	lw	v0,720(t0)
    1210:	3c09fb00 	lui	t1,0xfb00
    1214:	3c0100ff 	lui	at,0xff
    1218:	24590008 	addiu	t9,v0,8
    121c:	ad1902d0 	sw	t9,720(t0)
    1220:	ac490000 	sw	t1,0(v0)
    1224:	93ab006f 	lbu	t3,111(sp)
    1228:	3421ff00 	ori	at,at,0xff00
    122c:	01616025 	or	t4,t3,at
    1230:	3c014248 	lui	at,0x4248
    1234:	44814000 	mtc1	at,$f8
    1238:	ac4c0004 	sw	t4,4(v0)
    123c:	10000014 	b	1290 <EnArrow_Draw+0x248>
    1240:	e7a80068 	swc1	$f8,104(sp)
    1244:	8d0202d0 	lw	v0,720(t0)
    1248:	3c0f0c00 	lui	t7,0xc00
    124c:	35ef00ff 	ori	t7,t7,0xff
    1250:	244d0008 	addiu	t5,v0,8
    1254:	ad0d02d0 	sw	t5,720(t0)
    1258:	ac4f0004 	sw	t7,4(v0)
    125c:	ac4e0000 	sw	t6,0(v0)
    1260:	8d0202d0 	lw	v0,720(t0)
    1264:	3c19fb00 	lui	t9,0xfb00
    1268:	3c01fafa 	lui	at,0xfafa
    126c:	24580008 	addiu	t8,v0,8
    1270:	ad1802d0 	sw	t8,720(t0)
    1274:	ac590000 	sw	t9,0(v0)
    1278:	93aa006f 	lbu	t2,111(sp)
    127c:	01415825 	or	t3,t2,at
    1280:	3c014316 	lui	at,0x4316
    1284:	44815000 	mtc1	at,$f10
    1288:	ac4b0004 	sw	t3,4(v0)
    128c:	e7aa0068 	swc1	$f10,104(sp)
    1290:	0c000000 	jal	0 <func_809B3920>
    1294:	afa80064 	sw	t0,100(sp)
    1298:	8fa4007c 	lw	a0,124(sp)
    129c:	3c010001 	lui	at,0x1
    12a0:	34211da0 	ori	at,at,0x1da0
    12a4:	24050001 	li	a1,1
    12a8:	0c000000 	jal	0 <func_809B3920>
    12ac:	00812021 	addu	a0,a0,at
    12b0:	44800000 	mtc1	zero,$f0
    12b4:	c6100068 	lwc1	$f16,104(s0)
    12b8:	8fac007c 	lw	t4,124(sp)
    12bc:	3c0d0001 	lui	t5,0x1
    12c0:	46100032 	c.eq.s	$f0,$f16
    12c4:	8fa80064 	lw	t0,100(sp)
    12c8:	24050001 	li	a1,1
    12cc:	01ac6821 	addu	t5,t5,t4
    12d0:	45020004 	bc1fl	12e4 <EnArrow_Draw+0x29c>
    12d4:	8dad1de4 	lw	t5,7652(t5)
    12d8:	10000013 	b	1328 <EnArrow_Draw+0x2e0>
    12dc:	46000306 	mov.s	$f12,$f0
    12e0:	8dad1de4 	lw	t5,7652(t5)
    12e4:	3c014f80 	lui	at,0x4f80
    12e8:	31ae00ff 	andi	t6,t5,0xff
    12ec:	000e7940 	sll	t7,t6,0x5
    12f0:	01ee7823 	subu	t7,t7,t6
    12f4:	000f7880 	sll	t7,t7,0x2
    12f8:	01ee7821 	addu	t7,t7,t6
    12fc:	000f7940 	sll	t7,t7,0x5
    1300:	448f9000 	mtc1	t7,$f18
    1304:	05e10004 	bgez	t7,1318 <EnArrow_Draw+0x2d0>
    1308:	468091a0 	cvt.s.w	$f6,$f18
    130c:	44812000 	mtc1	at,$f4
    1310:	00000000 	nop
    1314:	46043180 	add.s	$f6,$f6,$f4
    1318:	3c010000 	lui	at,0x0
    131c:	c4280000 	lwc1	$f8,0(at)
    1320:	46083302 	mul.s	$f12,$f6,$f8
    1324:	00000000 	nop
    1328:	0c000000 	jal	0 <func_809B3920>
    132c:	afa80064 	sw	t0,100(sp)
    1330:	c7ac0068 	lwc1	$f12,104(sp)
    1334:	24070001 	li	a3,1
    1338:	44066000 	mfc1	a2,$f12
    133c:	0c000000 	jal	0 <func_809B3920>
    1340:	46006386 	mov.s	$f14,$f12
    1344:	8fa80064 	lw	t0,100(sp)
    1348:	3c19da38 	lui	t9,0xda38
    134c:	37390003 	ori	t9,t9,0x3
    1350:	8d0202d0 	lw	v0,720(t0)
    1354:	3c050000 	lui	a1,0x0
    1358:	24a50000 	addiu	a1,a1,0
    135c:	24580008 	addiu	t8,v0,8
    1360:	ad1802d0 	sw	t8,720(t0)
    1364:	ac590000 	sw	t9,0(v0)
    1368:	8fa9007c 	lw	t1,124(sp)
    136c:	2406055e 	li	a2,1374
    1370:	8d240000 	lw	a0,0(t1)
    1374:	afa80064 	sw	t0,100(sp)
    1378:	0c000000 	jal	0 <func_809B3920>
    137c:	afa20040 	sw	v0,64(sp)
    1380:	8fa30040 	lw	v1,64(sp)
    1384:	8fa80064 	lw	t0,100(sp)
    1388:	3c0c0403 	lui	t4,0x403
    138c:	ac620004 	sw	v0,4(v1)
    1390:	8d0202d0 	lw	v0,720(t0)
    1394:	258c7880 	addiu	t4,t4,30848
    1398:	3c0bde00 	lui	t3,0xde00
    139c:	244a0008 	addiu	t2,v0,8
    13a0:	ad0a02d0 	sw	t2,720(t0)
    13a4:	ac4c0004 	sw	t4,4(v0)
    13a8:	0c000000 	jal	0 <func_809B3920>
    13ac:	ac4b0000 	sw	t3,0(v0)
    13b0:	860d0032 	lh	t5,50(s0)
    13b4:	3c010000 	lui	at,0x0
    13b8:	c4320000 	lwc1	$f18,0(at)
    13bc:	448d5000 	mtc1	t5,$f10
    13c0:	24050001 	li	a1,1
    13c4:	46805420 	cvt.s.w	$f16,$f10
    13c8:	46128302 	mul.s	$f12,$f16,$f18
    13cc:	0c000000 	jal	0 <func_809B3920>
    13d0:	00000000 	nop
    13d4:	8fae007c 	lw	t6,124(sp)
    13d8:	3c060000 	lui	a2,0x0
    13dc:	24c60000 	addiu	a2,a2,0
    13e0:	27a40054 	addiu	a0,sp,84
    13e4:	24070565 	li	a3,1381
    13e8:	0c000000 	jal	0 <func_809B3920>
    13ec:	8dc50000 	lw	a1,0(t6)
    13f0:	02002025 	move	a0,s0
    13f4:	0c000000 	jal	0 <func_809B3920>
    13f8:	8fa5007c 	lw	a1,124(sp)
    13fc:	8fbf002c 	lw	ra,44(sp)
    1400:	8fb00028 	lw	s0,40(sp)
    1404:	27bd0078 	addiu	sp,sp,120
    1408:	03e00008 	jr	ra
    140c:	00000000 	nop
