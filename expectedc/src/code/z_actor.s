
build/src/code/z_actor.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ActorShape_Init>:
       0:	44856000 	mtc1	a1,$f12
       4:	44877000 	mtc1	a3,$f14
       8:	240e00ff 	li	t6,255
       c:	ac86000c 	sw	a2,12(a0)
      10:	a08e0014 	sb	t6,20(a0)
      14:	e48c0008 	swc1	$f12,8(a0)
      18:	03e00008 	jr	ra
      1c:	e48e0010 	swc1	$f14,16(a0)

00000020 <func_8002B200>:
      20:	27bdff58 	addiu	sp,sp,-168
      24:	afbf0024 	sw	ra,36(sp)
      28:	afb10020 	sw	s1,32(sp)
      2c:	afb0001c 	sw	s0,28(sp)
      30:	afa500ac 	sw	a1,172(sp)
      34:	afa600b0 	sw	a2,176(sp)
      38:	afa700b4 	sw	a3,180(sp)
      3c:	8c8e0078 	lw	t6,120(a0)
      40:	00808025 	move	s0,a0
      44:	51c000ed 	beqzl	t6,3fc <func_8002B200+0x3dc>
      48:	8fbf0024 	lw	ra,36(sp)
      4c:	c4840028 	lwc1	$f4,40(a0)
      50:	c4860080 	lwc1	$f6,128(a0)
      54:	3c01c248 	lui	at,0xc248
      58:	44814000 	mtc1	at,$f8
      5c:	46062001 	sub.s	$f0,$f4,$f6
      60:	3c0143fa 	lui	at,0x43fa
      64:	4600403e 	c.le.s	$f8,$f0
      68:	00000000 	nop
      6c:	450200e3 	bc1fl	3fc <func_8002B200+0x3dc>
      70:	8fbf0024 	lw	ra,36(sp)
      74:	44815000 	mtc1	at,$f10
      78:	27a4004c 	addiu	a0,sp,76
      7c:	24070611 	li	a3,1553
      80:	460a003c 	c.lt.s	$f0,$f10
      84:	00000000 	nop
      88:	450200dc 	bc1fl	3fc <func_8002B200+0x3dc>
      8c:	8fbf0024 	lw	ra,36(sp)
      90:	8cc50000 	lw	a1,0(a2)
      94:	3c060000 	lui	a2,0x0
      98:	24c60000 	addiu	a2,a2,0
      9c:	e7a000a4 	swc1	$f0,164(sp)
      a0:	0c000000 	jal	0 <ActorShape_Init>
      a4:	00a08825 	move	s1,a1
      a8:	8e2402c0 	lw	a0,704(s1)
      ac:	0c000000 	jal	0 <ActorShape_Init>
      b0:	2405002c 	li	a1,44
      b4:	c7a000a4 	lwc1	$f0,164(sp)
      b8:	44801000 	mtc1	zero,$f2
      bc:	ae2202c0 	sw	v0,704(s1)
      c0:	24580008 	addiu	t8,v0,8
      c4:	4602003c 	c.lt.s	$f0,$f2
      c8:	3c19fcff 	lui	t9,0xfcff
      cc:	3c08fffd 	lui	t0,0xfffd
      d0:	3508fe38 	ori	t0,t0,0xfe38
      d4:	373997ff 	ori	t9,t9,0x97ff
      d8:	ae3802c0 	sw	t8,704(s1)
      dc:	ac480004 	sw	t0,4(v0)
      e0:	45000003 	bc1f	f0 <func_8002B200+0xd0>
      e4:	ac590000 	sw	t9,0(v0)
      e8:	1000000c 	b	11c <func_8002B200+0xfc>
      ec:	46001006 	mov.s	$f0,$f2
      f0:	3c014316 	lui	at,0x4316
      f4:	44816000 	mtc1	at,$f12
      f8:	00000000 	nop
      fc:	4600603c 	c.lt.s	$f12,$f0
     100:	00000000 	nop
     104:	45020004 	bc1fl	118 <func_8002B200+0xf8>
     108:	46000086 	mov.s	$f2,$f0
     10c:	10000002 	b	118 <func_8002B200+0xf8>
     110:	46006086 	mov.s	$f2,$f12
     114:	46000086 	mov.s	$f2,$f0
     118:	46001006 	mov.s	$f0,$f2
     11c:	3c013f80 	lui	at,0x3f80
     120:	44818000 	mtc1	at,$f16
     124:	3c010000 	lui	at,0x0
     128:	c4320a3c 	lwc1	$f18,2620(at)
     12c:	8fa400b8 	lw	a0,184(sp)
     130:	46120102 	mul.s	$f4,$f0,$f18
     134:	46048301 	sub.s	$f12,$f16,$f4
     138:	1080003c 	beqz	a0,22c <func_8002B200+0x20c>
     13c:	46006086 	mov.s	$f2,$f12
     140:	8e2302c0 	lw	v1,704(s1)
     144:	3c0afa00 	lui	t2,0xfa00
     148:	3c014f80 	lui	at,0x4f80
     14c:	24690008 	addiu	t1,v1,8
     150:	ae2902c0 	sw	t1,704(s1)
     154:	ac6a0000 	sw	t2,0(v1)
     158:	908c0000 	lbu	t4,0(a0)
     15c:	908f0001 	lbu	t7,1(a0)
     160:	90890002 	lbu	t1,2(a0)
     164:	000c6e00 	sll	t5,t4,0x18
     168:	920c00c8 	lbu	t4,200(s0)
     16c:	000fc400 	sll	t8,t7,0x10
     170:	01b8c825 	or	t9,t5,t8
     174:	448c3000 	mtc1	t4,$f6
     178:	00095200 	sll	t2,t1,0x8
     17c:	032a5825 	or	t3,t9,t2
     180:	05810004 	bgez	t4,194 <func_8002B200+0x174>
     184:	46803220 	cvt.s.w	$f8,$f6
     188:	44815000 	mtc1	at,$f10
     18c:	00000000 	nop
     190:	460a4200 	add.s	$f8,$f8,$f10
     194:	46024482 	mul.s	$f18,$f8,$f2
     198:	240f0001 	li	t7,1
     19c:	3c014f00 	lui	at,0x4f00
     1a0:	444ef800 	cfc1	t6,$31
     1a4:	44cff800 	ctc1	t7,$31
     1a8:	00000000 	nop
     1ac:	46009424 	cvt.w.s	$f16,$f18
     1b0:	444ff800 	cfc1	t7,$31
     1b4:	00000000 	nop
     1b8:	31ef0078 	andi	t7,t7,0x78
     1bc:	51e00013 	beqzl	t7,20c <func_8002B200+0x1ec>
     1c0:	440f8000 	mfc1	t7,$f16
     1c4:	44818000 	mtc1	at,$f16
     1c8:	240f0001 	li	t7,1
     1cc:	46109401 	sub.s	$f16,$f18,$f16
     1d0:	44cff800 	ctc1	t7,$31
     1d4:	00000000 	nop
     1d8:	46008424 	cvt.w.s	$f16,$f16
     1dc:	444ff800 	cfc1	t7,$31
     1e0:	00000000 	nop
     1e4:	31ef0078 	andi	t7,t7,0x78
     1e8:	15e00005 	bnez	t7,200 <func_8002B200+0x1e0>
     1ec:	00000000 	nop
     1f0:	440f8000 	mfc1	t7,$f16
     1f4:	3c018000 	lui	at,0x8000
     1f8:	10000007 	b	218 <func_8002B200+0x1f8>
     1fc:	01e17825 	or	t7,t7,at
     200:	10000005 	b	218 <func_8002B200+0x1f8>
     204:	240fffff 	li	t7,-1
     208:	440f8000 	mfc1	t7,$f16
     20c:	00000000 	nop
     210:	05e0fffb 	bltz	t7,200 <func_8002B200+0x1e0>
     214:	00000000 	nop
     218:	31f800ff 	andi	t8,t7,0xff
     21c:	01784025 	or	t0,t3,t8
     220:	44cef800 	ctc1	t6,$31
     224:	10000032 	b	2f0 <func_8002B200+0x2d0>
     228:	ac680004 	sw	t0,4(v1)
     22c:	8e2302c0 	lw	v1,704(s1)
     230:	3c19fa00 	lui	t9,0xfa00
     234:	3c014f80 	lui	at,0x4f80
     238:	24690008 	addiu	t1,v1,8
     23c:	ae2902c0 	sw	t1,704(s1)
     240:	ac790000 	sw	t9,0(v1)
     244:	920a00c8 	lbu	t2,200(s0)
     248:	448a2000 	mtc1	t2,$f4
     24c:	05410004 	bgez	t2,260 <func_8002B200+0x240>
     250:	468021a0 	cvt.s.w	$f6,$f4
     254:	44815000 	mtc1	at,$f10
     258:	00000000 	nop
     25c:	460a3180 	add.s	$f6,$f6,$f10
     260:	46023202 	mul.s	$f8,$f6,$f2
     264:	240e0001 	li	t6,1
     268:	3c014f00 	lui	at,0x4f00
     26c:	444cf800 	cfc1	t4,$31
     270:	44cef800 	ctc1	t6,$31
     274:	00000000 	nop
     278:	460044a4 	cvt.w.s	$f18,$f8
     27c:	444ef800 	cfc1	t6,$31
     280:	00000000 	nop
     284:	31ce0078 	andi	t6,t6,0x78
     288:	51c00013 	beqzl	t6,2d8 <func_8002B200+0x2b8>
     28c:	440e9000 	mfc1	t6,$f18
     290:	44819000 	mtc1	at,$f18
     294:	240e0001 	li	t6,1
     298:	46124481 	sub.s	$f18,$f8,$f18
     29c:	44cef800 	ctc1	t6,$31
     2a0:	00000000 	nop
     2a4:	460094a4 	cvt.w.s	$f18,$f18
     2a8:	444ef800 	cfc1	t6,$31
     2ac:	00000000 	nop
     2b0:	31ce0078 	andi	t6,t6,0x78
     2b4:	15c00005 	bnez	t6,2cc <func_8002B200+0x2ac>
     2b8:	00000000 	nop
     2bc:	440e9000 	mfc1	t6,$f18
     2c0:	3c018000 	lui	at,0x8000
     2c4:	10000007 	b	2e4 <func_8002B200+0x2c4>
     2c8:	01c17025 	or	t6,t6,at
     2cc:	10000005 	b	2e4 <func_8002B200+0x2c4>
     2d0:	240effff 	li	t6,-1
     2d4:	440e9000 	mfc1	t6,$f18
     2d8:	00000000 	nop
     2dc:	05c0fffb 	bltz	t6,2cc <func_8002B200+0x2ac>
     2e0:	00000000 	nop
     2e4:	44ccf800 	ctc1	t4,$31
     2e8:	31cd00ff 	andi	t5,t6,0xff
     2ec:	ac6d0004 	sw	t5,4(v1)
     2f0:	8e040078 	lw	a0,120(s0)
     2f4:	8e050024 	lw	a1,36(s0)
     2f8:	8e060080 	lw	a2,128(s0)
     2fc:	8e07002c 	lw	a3,44(s0)
     300:	27ab0060 	addiu	t3,sp,96
     304:	afab0010 	sw	t3,16(sp)
     308:	0c000000 	jal	0 <ActorShape_Init>
     30c:	e7ac0030 	swc1	$f12,48(sp)
     310:	0c000000 	jal	0 <ActorShape_Init>
     314:	27a40060 	addiu	a0,sp,96
     318:	8fb800b4 	lw	t8,180(sp)
     31c:	3c080000 	lui	t0,0x0
     320:	25080000 	addiu	t0,t0,0
     324:	5308000b 	beql	t8,t0,354 <func_8002B200+0x334>
     328:	c7a60030 	lwc1	$f6,48(sp)
     32c:	860900b6 	lh	t1,182(s0)
     330:	3c010000 	lui	at,0x0
     334:	c42a0a40 	lwc1	$f10,2624(at)
     338:	44898000 	mtc1	t1,$f16
     33c:	24050001 	li	a1,1
     340:	46808120 	cvt.s.w	$f4,$f16
     344:	460a2302 	mul.s	$f12,$f4,$f10
     348:	0c000000 	jal	0 <ActorShape_Init>
     34c:	00000000 	nop
     350:	c7a60030 	lwc1	$f6,48(sp)
     354:	c60800c4 	lwc1	$f8,196(s0)
     358:	c6120050 	lwc1	$f18,80(s0)
     35c:	c6100058 	lwc1	$f16,88(s0)
     360:	46083082 	mul.s	$f2,$f6,$f8
     364:	3c013f80 	lui	at,0x3f80
     368:	44817000 	mtc1	at,$f14
     36c:	24070001 	li	a3,1
     370:	46029302 	mul.s	$f12,$f18,$f2
     374:	00000000 	nop
     378:	46028102 	mul.s	$f4,$f16,$f2
     37c:	44062000 	mfc1	a2,$f4
     380:	0c000000 	jal	0 <ActorShape_Init>
     384:	00000000 	nop
     388:	8e2202c0 	lw	v0,704(s1)
     38c:	3c0ada38 	lui	t2,0xda38
     390:	354a0003 	ori	t2,t2,0x3
     394:	24590008 	addiu	t9,v0,8
     398:	ae3902c0 	sw	t9,704(s1)
     39c:	ac4a0000 	sw	t2,0(v0)
     3a0:	8fac00b0 	lw	t4,176(sp)
     3a4:	3c050000 	lui	a1,0x0
     3a8:	24a50010 	addiu	a1,a1,16
     3ac:	24060634 	li	a2,1588
     3b0:	00408025 	move	s0,v0
     3b4:	0c000000 	jal	0 <ActorShape_Init>
     3b8:	8d840000 	lw	a0,0(t4)
     3bc:	ae020004 	sw	v0,4(s0)
     3c0:	8e2202c0 	lw	v0,704(s1)
     3c4:	3c0fde00 	lui	t7,0xde00
     3c8:	3c060000 	lui	a2,0x0
     3cc:	244e0008 	addiu	t6,v0,8
     3d0:	ae2e02c0 	sw	t6,704(s1)
     3d4:	ac4f0000 	sw	t7,0(v0)
     3d8:	8fad00b4 	lw	t5,180(sp)
     3dc:	24c60020 	addiu	a2,a2,32
     3e0:	27a4004c 	addiu	a0,sp,76
     3e4:	ac4d0004 	sw	t5,4(v0)
     3e8:	8fab00b0 	lw	t3,176(sp)
     3ec:	2407063a 	li	a3,1594
     3f0:	0c000000 	jal	0 <ActorShape_Init>
     3f4:	8d650000 	lw	a1,0(t3)
     3f8:	8fbf0024 	lw	ra,36(sp)
     3fc:	8fb0001c 	lw	s0,28(sp)
     400:	8fb10020 	lw	s1,32(sp)
     404:	03e00008 	jr	ra
     408:	27bd00a8 	addiu	sp,sp,168

0000040c <ActorShadow_DrawFunc_Circle>:
     40c:	27bdffe0 	addiu	sp,sp,-32
     410:	afbf001c 	sw	ra,28(sp)
     414:	3c070000 	lui	a3,0x0
     418:	24e70000 	addiu	a3,a3,0
     41c:	0c000000 	jal	0 <ActorShape_Init>
     420:	afa00010 	sw	zero,16(sp)
     424:	8fbf001c 	lw	ra,28(sp)
     428:	27bd0020 	addiu	sp,sp,32
     42c:	03e00008 	jr	ra
     430:	00000000 	nop

00000434 <ActorShadow_DrawFunc_WhiteCircle>:
     434:	27bdffe0 	addiu	sp,sp,-32
     438:	3c0e0000 	lui	t6,0x0
     43c:	afbf001c 	sw	ra,28(sp)
     440:	25ce0000 	addiu	t6,t6,0
     444:	3c070000 	lui	a3,0x0
     448:	24e70000 	addiu	a3,a3,0
     44c:	0c000000 	jal	0 <ActorShape_Init>
     450:	afae0010 	sw	t6,16(sp)
     454:	8fbf001c 	lw	ra,28(sp)
     458:	27bd0020 	addiu	sp,sp,32
     45c:	03e00008 	jr	ra
     460:	00000000 	nop

00000464 <ActorShadow_DrawFunc_Squiggly>:
     464:	27bdffe0 	addiu	sp,sp,-32
     468:	afbf001c 	sw	ra,28(sp)
     46c:	3c070000 	lui	a3,0x0
     470:	24e70000 	addiu	a3,a3,0
     474:	0c000000 	jal	0 <ActorShape_Init>
     478:	afa00010 	sw	zero,16(sp)
     47c:	8fbf001c 	lw	ra,28(sp)
     480:	27bd0020 	addiu	sp,sp,32
     484:	03e00008 	jr	ra
     488:	00000000 	nop

0000048c <func_8002B66C>:
     48c:	27bdffa0 	addiu	sp,sp,-96
     490:	afbf001c 	sw	ra,28(sp)
     494:	afb00018 	sw	s0,24(sp)
     498:	afa40060 	sw	a0,96(sp)
     49c:	afa50064 	sw	a1,100(sp)
     4a0:	afa60068 	sw	a2,104(sp)
     4a4:	afa7006c 	sw	a3,108(sp)
     4a8:	8c850000 	lw	a1,0(a0)
     4ac:	3c060000 	lui	a2,0x0
     4b0:	24c60030 	addiu	a2,a2,48
     4b4:	27a4003c 	addiu	a0,sp,60
     4b8:	2407067d 	li	a3,1661
     4bc:	0c000000 	jal	0 <ActorShape_Init>
     4c0:	00a08025 	move	s0,a1
     4c4:	8e0302c0 	lw	v1,704(s0)
     4c8:	3c18fa00 	lui	t8,0xfa00
     4cc:	3c013f80 	lui	at,0x3f80
     4d0:	246f0008 	addiu	t7,v1,8
     4d4:	ae0f02c0 	sw	t7,704(s0)
     4d8:	ac780000 	sw	t8,0(v1)
     4dc:	8fb9006c 	lw	t9,108(sp)
     4e0:	44818000 	mtc1	at,$f16
     4e4:	3c010000 	lui	at,0x0
     4e8:	44992000 	mtc1	t9,$f4
     4ec:	c4280a44 	lwc1	$f8,2628(at)
     4f0:	c7aa0070 	lwc1	$f10,112(sp)
     4f4:	468021a0 	cvt.s.w	$f6,$f4
     4f8:	46083002 	mul.s	$f0,$f6,$f8
     4fc:	4600803c 	c.lt.s	$f16,$f0
     500:	00000000 	nop
     504:	45020004 	bc1fl	518 <func_8002B66C+0x8c>
     508:	46000086 	mov.s	$f2,$f0
     50c:	10000002 	b	518 <func_8002B66C+0x8c>
     510:	46008086 	mov.s	$f2,$f16
     514:	46000086 	mov.s	$f2,$f0
     518:	460a1482 	mul.s	$f18,$f2,$f10
     51c:	24090001 	li	t1,1
     520:	3c014f00 	lui	at,0x4f00
     524:	4448f800 	cfc1	t0,$31
     528:	44c9f800 	ctc1	t1,$31
     52c:	00000000 	nop
     530:	46009124 	cvt.w.s	$f4,$f18
     534:	4449f800 	cfc1	t1,$31
     538:	00000000 	nop
     53c:	31290078 	andi	t1,t1,0x78
     540:	51200013 	beqzl	t1,590 <func_8002B66C+0x104>
     544:	44092000 	mfc1	t1,$f4
     548:	44812000 	mtc1	at,$f4
     54c:	24090001 	li	t1,1
     550:	46049101 	sub.s	$f4,$f18,$f4
     554:	44c9f800 	ctc1	t1,$31
     558:	00000000 	nop
     55c:	46002124 	cvt.w.s	$f4,$f4
     560:	4449f800 	cfc1	t1,$31
     564:	00000000 	nop
     568:	31290078 	andi	t1,t1,0x78
     56c:	15200005 	bnez	t1,584 <func_8002B66C+0xf8>
     570:	00000000 	nop
     574:	44092000 	mfc1	t1,$f4
     578:	3c018000 	lui	at,0x8000
     57c:	10000007 	b	59c <func_8002B66C+0x110>
     580:	01214825 	or	t1,t1,at
     584:	10000005 	b	59c <func_8002B66C+0x110>
     588:	2409ffff 	li	t1,-1
     58c:	44092000 	mfc1	t1,$f4
     590:	00000000 	nop
     594:	0520fffb 	bltz	t1,584 <func_8002B66C+0xf8>
     598:	00000000 	nop
     59c:	312b00ff 	andi	t3,t1,0xff
     5a0:	ac6b0004 	sw	t3,4(v1)
     5a4:	8fa20064 	lw	v0,100(sp)
     5a8:	44c8f800 	ctc1	t0,$31
     5ac:	804c0008 	lb	t4,8(v0)
     5b0:	804d000a 	lb	t5,10(v0)
     5b4:	448c3000 	mtc1	t4,$f6
     5b8:	448d4000 	mtc1	t5,$f8
     5bc:	46803320 	cvt.s.w	$f12,$f6
     5c0:	0c000000 	jal	0 <ActorShape_Init>
     5c4:	468043a0 	cvt.s.w	$f14,$f8
     5c8:	8fae0064 	lw	t6,100(sp)
     5cc:	3c013f80 	lui	at,0x3f80
     5d0:	44817000 	mtc1	at,$f14
     5d4:	81cf0009 	lb	t7,9(t6)
     5d8:	3c010000 	lui	at,0x0
     5dc:	c4240a48 	lwc1	$f4,2632(at)
     5e0:	448f5000 	mtc1	t7,$f10
     5e4:	3c014090 	lui	at,0x4090
     5e8:	44814000 	mtc1	at,$f8
     5ec:	468054a0 	cvt.s.w	$f18,$f10
     5f0:	c7a20078 	lwc1	$f2,120(sp)
     5f4:	46000306 	mov.s	$f12,$f0
     5f8:	8fa40068 	lw	a0,104(sp)
     5fc:	46049182 	mul.s	$f6,$f18,$f4
     600:	46064281 	sub.s	$f10,$f8,$f6
     604:	460a1082 	mul.s	$f2,$f2,$f10
     608:	460e103c 	c.lt.s	$f2,$f14
     60c:	00000000 	nop
     610:	45020003 	bc1fl	620 <func_8002B66C+0x194>
     614:	e7a20078 	swc1	$f2,120(sp)
     618:	46007086 	mov.s	$f2,$f14
     61c:	e7a20078 	swc1	$f2,120(sp)
     620:	0c000000 	jal	0 <ActorShape_Init>
     624:	e7ac0058 	swc1	$f12,88(sp)
     628:	c7ac0058 	lwc1	$f12,88(sp)
     62c:	0c000000 	jal	0 <ActorShape_Init>
     630:	24050001 	li	a1,1
     634:	c7a20078 	lwc1	$f2,120(sp)
     638:	c7ac0074 	lwc1	$f12,116(sp)
     63c:	3c013f80 	lui	at,0x3f80
     640:	44817000 	mtc1	at,$f14
     644:	46026482 	mul.s	$f18,$f12,$f2
     648:	24070001 	li	a3,1
     64c:	44069000 	mfc1	a2,$f18
     650:	0c000000 	jal	0 <ActorShape_Init>
     654:	00000000 	nop
     658:	8e0202c0 	lw	v0,704(s0)
     65c:	3c19da38 	lui	t9,0xda38
     660:	37390003 	ori	t9,t9,0x3
     664:	24580008 	addiu	t8,v0,8
     668:	ae1802c0 	sw	t8,704(s0)
     66c:	ac590000 	sw	t9,0(v0)
     670:	8fa80060 	lw	t0,96(sp)
     674:	3c050000 	lui	a1,0x0
     678:	24a50040 	addiu	a1,a1,64
     67c:	8d040000 	lw	a0,0(t0)
     680:	24060697 	li	a2,1687
     684:	0c000000 	jal	0 <ActorShape_Init>
     688:	afa20034 	sw	v0,52(sp)
     68c:	8fa30034 	lw	v1,52(sp)
     690:	3c0b0000 	lui	t3,0x0
     694:	256b0000 	addiu	t3,t3,0
     698:	ac620004 	sw	v0,4(v1)
     69c:	8e0202c0 	lw	v0,704(s0)
     6a0:	3c0ade00 	lui	t2,0xde00
     6a4:	3c060000 	lui	a2,0x0
     6a8:	24490008 	addiu	t1,v0,8
     6ac:	ae0902c0 	sw	t1,704(s0)
     6b0:	ac4b0004 	sw	t3,4(v0)
     6b4:	ac4a0000 	sw	t2,0(v0)
     6b8:	8fac0060 	lw	t4,96(sp)
     6bc:	24c60050 	addiu	a2,a2,80
     6c0:	27a4003c 	addiu	a0,sp,60
     6c4:	2407069d 	li	a3,1693
     6c8:	0c000000 	jal	0 <ActorShape_Init>
     6cc:	8d850000 	lw	a1,0(t4)
     6d0:	8fbf001c 	lw	ra,28(sp)
     6d4:	8fb00018 	lw	s0,24(sp)
     6d8:	27bd0060 	addiu	sp,sp,96
     6dc:	03e00008 	jr	ra
     6e0:	00000000 	nop

000006e4 <ActorShadow_DrawFunc_Teardrop>:
     6e4:	27bdfec8 	addiu	sp,sp,-312
     6e8:	afbf007c 	sw	ra,124(sp)
     6ec:	afbe0078 	sw	s8,120(sp)
     6f0:	afb70074 	sw	s7,116(sp)
     6f4:	afb60070 	sw	s6,112(sp)
     6f8:	afb5006c 	sw	s5,108(sp)
     6fc:	afb40068 	sw	s4,104(sp)
     700:	afb30064 	sw	s3,100(sp)
     704:	afb20060 	sw	s2,96(sp)
     708:	afb1005c 	sw	s1,92(sp)
     70c:	afb00058 	sw	s0,88(sp)
     710:	f7be0050 	sdc1	$f30,80(sp)
     714:	f7bc0048 	sdc1	$f28,72(sp)
     718:	f7ba0040 	sdc1	$f26,64(sp)
     71c:	f7b80038 	sdc1	$f24,56(sp)
     720:	f7b60030 	sdc1	$f22,48(sp)
     724:	f7b40028 	sdc1	$f20,40(sp)
     728:	afa5013c 	sw	a1,316(sp)
     72c:	c4860080 	lwc1	$f6,128(a0)
     730:	c4840028 	lwc1	$f4,40(a0)
     734:	3c0141a0 	lui	at,0x41a0
     738:	44816000 	mtc1	at,$f12
     73c:	46062501 	sub.s	$f20,$f4,$f6
     740:	00c0a025 	move	s4,a2
     744:	0080f025 	move	s8,a0
     748:	3c013f80 	lui	at,0x3f80
     74c:	4614603c 	c.lt.s	$f12,$f20
     750:	02803025 	move	a2,s4
     754:	45020044 	bc1fl	868 <ActorShadow_DrawFunc_Teardrop+0x184>
     758:	3c013f80 	lui	at,0x3f80
     75c:	4481f000 	mtc1	at,$f30
     760:	3c010000 	lui	at,0x0
     764:	c49600c4 	lwc1	$f22,196(a0)
     768:	c4280000 	lwc1	$f8,0(at)
     76c:	460ca401 	sub.s	$f16,$f20,$f12
     770:	3c010000 	lui	at,0x0
     774:	4608b282 	mul.s	$f10,$f22,$f8
     778:	908200c8 	lbu	v0,200(a0)
     77c:	44822000 	mtc1	v0,$f4
     780:	00408025 	move	s0,v0
     784:	e48a00c4 	swc1	$f10,196(a0)
     788:	c4320000 	lwc1	$f18,0(at)
     78c:	3c014f80 	lui	at,0x4f80
     790:	03c02025 	move	a0,s8
     794:	46128082 	mul.s	$f2,$f16,$f18
     798:	4602f03c 	c.lt.s	$f30,$f2
     79c:	00000000 	nop
     7a0:	45020004 	bc1fl	7b4 <ActorShadow_DrawFunc_Teardrop+0xd0>
     7a4:	46001006 	mov.s	$f0,$f2
     7a8:	10000002 	b	7b4 <ActorShadow_DrawFunc_Teardrop+0xd0>
     7ac:	4600f006 	mov.s	$f0,$f30
     7b0:	46001006 	mov.s	$f0,$f2
     7b4:	04410004 	bgez	v0,7c8 <ActorShadow_DrawFunc_Teardrop+0xe4>
     7b8:	468021a0 	cvt.s.w	$f6,$f4
     7bc:	44814000 	mtc1	at,$f8
     7c0:	00000000 	nop
     7c4:	46083180 	add.s	$f6,$f6,$f8
     7c8:	46060282 	mul.s	$f10,$f0,$f6
     7cc:	240f0001 	li	t7,1
     7d0:	3c014f00 	lui	at,0x4f00
     7d4:	444ef800 	cfc1	t6,$31
     7d8:	44cff800 	ctc1	t7,$31
     7dc:	00000000 	nop
     7e0:	46005424 	cvt.w.s	$f16,$f10
     7e4:	444ff800 	cfc1	t7,$31
     7e8:	00000000 	nop
     7ec:	31ef0078 	andi	t7,t7,0x78
     7f0:	51e00013 	beqzl	t7,840 <ActorShadow_DrawFunc_Teardrop+0x15c>
     7f4:	440f8000 	mfc1	t7,$f16
     7f8:	44818000 	mtc1	at,$f16
     7fc:	240f0001 	li	t7,1
     800:	46105401 	sub.s	$f16,$f10,$f16
     804:	44cff800 	ctc1	t7,$31
     808:	00000000 	nop
     80c:	46008424 	cvt.w.s	$f16,$f16
     810:	444ff800 	cfc1	t7,$31
     814:	00000000 	nop
     818:	31ef0078 	andi	t7,t7,0x78
     81c:	15e00005 	bnez	t7,834 <ActorShadow_DrawFunc_Teardrop+0x150>
     820:	00000000 	nop
     824:	440f8000 	mfc1	t7,$f16
     828:	3c018000 	lui	at,0x8000
     82c:	10000007 	b	84c <ActorShadow_DrawFunc_Teardrop+0x168>
     830:	01e17825 	or	t7,t7,at
     834:	10000005 	b	84c <ActorShadow_DrawFunc_Teardrop+0x168>
     838:	240fffff 	li	t7,-1
     83c:	440f8000 	mfc1	t7,$f16
     840:	00000000 	nop
     844:	05e0fffb 	bltz	t7,834 <ActorShadow_DrawFunc_Teardrop+0x150>
     848:	00000000 	nop
     84c:	44cef800 	ctc1	t6,$31
     850:	a3cf00c8 	sb	t7,200(s8)
     854:	0c000000 	jal	0 <ActorShape_Init>
     858:	8fa5013c 	lw	a1,316(sp)
     85c:	e7d600c4 	swc1	$f22,196(s8)
     860:	a3d000c8 	sb	s0,200(s8)
     864:	3c013f80 	lui	at,0x3f80
     868:	4481f000 	mtc1	at,$f30
     86c:	3c014348 	lui	at,0x4348
     870:	44819000 	mtc1	at,$f18
     874:	3c060000 	lui	a2,0x0
     878:	8fb8013c 	lw	t8,316(sp)
     87c:	4612a03c 	c.lt.s	$f20,$f18
     880:	27d700cc 	addiu	s7,s8,204
     884:	27b900e0 	addiu	t9,sp,224
     888:	24c60000 	addiu	a2,a2,0
     88c:	450000be 	bc1f	b88 <ActorShadow_DrawFunc_Teardrop+0x4a4>
     890:	27a40098 	addiu	a0,sp,152
     894:	93160000 	lbu	s6,0(t8)
     898:	afb900ac 	sw	t9,172(sp)
     89c:	8e850000 	lw	a1,0(s4)
     8a0:	240706cd 	li	a3,1741
     8a4:	26d6fffe 	addiu	s6,s6,-2
     8a8:	0c000000 	jal	0 <ActorShape_Init>
     8ac:	00a08025 	move	s0,a1
     8b0:	8e0402c0 	lw	a0,704(s0)
     8b4:	0c000000 	jal	0 <ActorShape_Init>
     8b8:	2405002c 	li	a1,44
     8bc:	3c014248 	lui	at,0x4248
     8c0:	4481e000 	mtc1	at,$f28
     8c4:	ae0202c0 	sw	v0,704(s0)
     8c8:	3c0141f0 	lui	at,0x41f0
     8cc:	a3c000c9 	sb	zero,201(s8)
     8d0:	4481d000 	mtc1	at,$f26
     8d4:	afa000c0 	sw	zero,192(sp)
     8d8:	24150002 	li	s5,2
     8dc:	27b300e8 	addiu	s3,sp,232
     8e0:	c6e40004 	lwc1	$f4,4(s7)
     8e4:	02802025 	move	a0,s4
     8e8:	02602825 	move	a1,s3
     8ec:	461c2200 	add.s	$f8,$f4,$f28
     8f0:	02e03025 	move	a2,s7
     8f4:	0c000000 	jal	0 <ActorShape_Init>
     8f8:	e6e80004 	swc1	$f8,4(s7)
     8fc:	8fa800ac 	lw	t0,172(sp)
     900:	3c01bf80 	lui	at,0xbf80
     904:	44812000 	mtc1	at,$f4
     908:	e5000000 	swc1	$f0,0(t0)
     90c:	c6e60004 	lwc1	$f6,4(s7)
     910:	3c0143fa 	lui	at,0x43fa
     914:	461c3281 	sub.s	$f10,$f6,$f28
     918:	e6ea0004 	swc1	$f10,4(s7)
     91c:	93c900c9 	lbu	t1,201(s8)
     920:	00095040 	sll	t2,t1,0x1
     924:	a3ca00c9 	sb	t2,201(s8)
     928:	8fab00ac 	lw	t3,172(sp)
     92c:	c6f00004 	lwc1	$f16,4(s7)
     930:	c5720000 	lwc1	$f18,0(t3)
     934:	46128081 	sub.s	$f2,$f16,$f18
     938:	4602203e 	c.le.s	$f4,$f2
     93c:	00000000 	nop
     940:	4502006b 	bc1fl	af0 <ActorShadow_DrawFunc_Teardrop+0x40c>
     944:	8fa200c0 	lw	v0,192(sp)
     948:	44814000 	mtc1	at,$f8
     94c:	00000000 	nop
     950:	4608103c 	c.lt.s	$f2,$f8
     954:	00000000 	nop
     958:	45020065 	bc1fl	af0 <ActorShadow_DrawFunc_Teardrop+0x40c>
     95c:	8fa200c0 	lw	v0,192(sp)
     960:	44803000 	mtc1	zero,$f6
     964:	8fa2013c 	lw	v0,316(sp)
     968:	00009025 	move	s2,zero
     96c:	4606103e 	c.le.s	$f2,$f6
     970:	254d0001 	addiu	t5,t2,1
     974:	3c014f80 	lui	at,0x4f80
     978:	24420010 	addiu	v0,v0,16
     97c:	45020003 	bc1fl	98c <ActorShadow_DrawFunc_Teardrop+0x2a8>
     980:	4602d03c 	c.lt.s	$f26,$f2
     984:	a3cd00c9 	sb	t5,201(s8)
     988:	4602d03c 	c.lt.s	$f26,$f2
     98c:	00000000 	nop
     990:	45020003 	bc1fl	9a0 <ActorShadow_DrawFunc_Teardrop+0x2bc>
     994:	93ce00c8 	lbu	t6,200(s8)
     998:	4600d086 	mov.s	$f2,$f26
     99c:	93ce00c8 	lbu	t6,200(s8)
     9a0:	448e5000 	mtc1	t6,$f10
     9a4:	05c10004 	bgez	t6,9b8 <ActorShadow_DrawFunc_Teardrop+0x2d4>
     9a8:	46805420 	cvt.s.w	$f16,$f10
     9ac:	44819000 	mtc1	at,$f18
     9b0:	00000000 	nop
     9b4:	46128400 	add.s	$f16,$f16,$f18
     9b8:	3c010000 	lui	at,0x0
     9bc:	c4240000 	lwc1	$f4,0(at)
     9c0:	4602d03c 	c.lt.s	$f26,$f2
     9c4:	3c010000 	lui	at,0x0
     9c8:	46041202 	mul.s	$f8,$f2,$f4
     9cc:	4608f181 	sub.s	$f6,$f30,$f8
     9d0:	46068602 	mul.s	$f24,$f16,$f6
     9d4:	45000002 	bc1f	9e0 <ActorShadow_DrawFunc_Teardrop+0x2fc>
     9d8:	00000000 	nop
     9dc:	4600d086 	mov.s	$f2,$f26
     9e0:	c42a0000 	lwc1	$f10,0(at)
     9e4:	c7c400c4 	lwc1	$f4,196(s8)
     9e8:	c7d00050 	lwc1	$f16,80(s8)
     9ec:	460a1482 	mul.s	$f18,$f2,$f10
     9f0:	00408025 	move	s0,v0
     9f4:	00008825 	move	s1,zero
     9f8:	4612f501 	sub.s	$f20,$f30,$f18
     9fc:	46142202 	mul.s	$f8,$f4,$f20
     a00:	00000000 	nop
     a04:	46104582 	mul.s	$f22,$f8,$f16
     a08:	1ac0001d 	blez	s6,a80 <ActorShadow_DrawFunc_Teardrop+0x39c>
     a0c:	00000000 	nop
     a10:	82020009 	lb	v0,9(s0)
     a14:	58400017 	blezl	v0,a74 <ActorShadow_DrawFunc_Teardrop+0x390>
     a18:	26310001 	addiu	s1,s1,1
     a1c:	04400003 	bltz	v0,a2c <ActorShadow_DrawFunc_Teardrop+0x348>
     a20:	00021823 	negu	v1,v0
     a24:	10000001 	b	a2c <ActorShadow_DrawFunc_Teardrop+0x348>
     a28:	00401825 	move	v1,v0
     a2c:	920f0000 	lbu	t7,0(s0)
     a30:	92180001 	lbu	t8,1(s0)
     a34:	92080002 	lbu	t0,2(s0)
     a38:	02802025 	move	a0,s4
     a3c:	01f8c821 	addu	t9,t7,t8
     a40:	03284821 	addu	t1,t9,t0
     a44:	00690019 	multu	v1,t1
     a48:	02002825 	move	a1,s0
     a4c:	02603025 	move	a2,s3
     a50:	00003812 	mflo	a3
     a54:	58e00007 	blezl	a3,a74 <ActorShadow_DrawFunc_Teardrop+0x390>
     a58:	26310001 	addiu	s1,s1,1
     a5c:	02479021 	addu	s2,s2,a3
     a60:	e7b80010 	swc1	$f24,16(sp)
     a64:	e7b60014 	swc1	$f22,20(sp)
     a68:	0c000000 	jal	0 <ActorShape_Init>
     a6c:	e7b40018 	swc1	$f20,24(sp)
     a70:	26310001 	addiu	s1,s1,1
     a74:	1636ffe6 	bne	s1,s6,a10 <ActorShadow_DrawFunc_Teardrop+0x32c>
     a78:	26100010 	addiu	s0,s0,16
     a7c:	00008825 	move	s1,zero
     a80:	82020009 	lb	v0,9(s0)
     a84:	58400017 	blezl	v0,ae4 <ActorShadow_DrawFunc_Teardrop+0x400>
     a88:	26310001 	addiu	s1,s1,1
     a8c:	04400003 	bltz	v0,a9c <ActorShadow_DrawFunc_Teardrop+0x3b8>
     a90:	001220c0 	sll	a0,s2,0x3
     a94:	10000002 	b	aa0 <ActorShadow_DrawFunc_Teardrop+0x3bc>
     a98:	00401825 	move	v1,v0
     a9c:	00021823 	negu	v1,v0
     aa0:	920a0000 	lbu	t2,0(s0)
     aa4:	920b0001 	lbu	t3,1(s0)
     aa8:	920d0002 	lbu	t5,2(s0)
     aac:	02002825 	move	a1,s0
     ab0:	014b6021 	addu	t4,t2,t3
     ab4:	018d7021 	addu	t6,t4,t5
     ab8:	006e0019 	multu	v1,t6
     abc:	02603025 	move	a2,s3
     ac0:	00007812 	mflo	t7
     ac4:	01e43823 	subu	a3,t7,a0
     ac8:	18e00005 	blez	a3,ae0 <ActorShadow_DrawFunc_Teardrop+0x3fc>
     acc:	02802025 	move	a0,s4
     ad0:	e7b80010 	swc1	$f24,16(sp)
     ad4:	e7b60014 	swc1	$f22,20(sp)
     ad8:	0c000000 	jal	0 <ActorShape_Init>
     adc:	e7b40018 	swc1	$f20,24(sp)
     ae0:	26310001 	addiu	s1,s1,1
     ae4:	1635ffe6 	bne	s1,s5,a80 <ActorShadow_DrawFunc_Teardrop+0x39c>
     ae8:	26100010 	addiu	s0,s0,16
     aec:	8fa200c0 	lw	v0,192(sp)
     af0:	8fb800ac 	lw	t8,172(sp)
     af4:	26f7000c 	addiu	s7,s7,12
     af8:	24420001 	addiu	v0,v0,1
     afc:	27190004 	addiu	t9,t8,4
     b00:	afa200c0 	sw	v0,192(sp)
     b04:	1455ff76 	bne	v0,s5,8e0 <ActorShadow_DrawFunc_Teardrop+0x1fc>
     b08:	afb900ac 	sw	t9,172(sp)
     b0c:	97c80088 	lhu	t0,136(s8)
     b10:	3c060000 	lui	a2,0x0
     b14:	24c60000 	addiu	a2,a2,0
     b18:	31090001 	andi	t1,t0,0x1
     b1c:	15200003 	bnez	t1,b2c <ActorShadow_DrawFunc_Teardrop+0x448>
     b20:	27a40098 	addiu	a0,sp,152
     b24:	10000015 	b	b7c <ActorShadow_DrawFunc_Teardrop+0x498>
     b28:	a3c000c9 	sb	zero,201(s8)
     b2c:	93ca00c9 	lbu	t2,201(s8)
     b30:	24010003 	li	at,3
     b34:	55410012 	bnel	t2,at,b80 <ActorShadow_DrawFunc_Teardrop+0x49c>
     b38:	8e850000 	lw	a1,0(s4)
     b3c:	c7c600d0 	lwc1	$f6,208(s8)
     b40:	c7ca00dc 	lwc1	$f10,220(s8)
     b44:	c7b200e0 	lwc1	$f18,224(sp)
     b48:	c7a800e4 	lwc1	$f8,228(sp)
     b4c:	460a3001 	sub.s	$f0,$f6,$f10
     b50:	240b0002 	li	t3,2
     b54:	240c0001 	li	t4,1
     b58:	46009100 	add.s	$f4,$f18,$f0
     b5c:	46004401 	sub.s	$f16,$f8,$f0
     b60:	4610203c 	c.lt.s	$f4,$f16
     b64:	00000000 	nop
     b68:	45020004 	bc1fl	b7c <ActorShadow_DrawFunc_Teardrop+0x498>
     b6c:	a3cc00c9 	sb	t4,201(s8)
     b70:	10000002 	b	b7c <ActorShadow_DrawFunc_Teardrop+0x498>
     b74:	a3cb00c9 	sb	t3,201(s8)
     b78:	a3cc00c9 	sb	t4,201(s8)
     b7c:	8e850000 	lw	a1,0(s4)
     b80:	0c000000 	jal	0 <ActorShape_Init>
     b84:	24070727 	li	a3,1831
     b88:	8fbf007c 	lw	ra,124(sp)
     b8c:	d7b40028 	ldc1	$f20,40(sp)
     b90:	d7b60030 	ldc1	$f22,48(sp)
     b94:	d7b80038 	ldc1	$f24,56(sp)
     b98:	d7ba0040 	ldc1	$f26,64(sp)
     b9c:	d7bc0048 	ldc1	$f28,72(sp)
     ba0:	d7be0050 	ldc1	$f30,80(sp)
     ba4:	8fb00058 	lw	s0,88(sp)
     ba8:	8fb1005c 	lw	s1,92(sp)
     bac:	8fb20060 	lw	s2,96(sp)
     bb0:	8fb30064 	lw	s3,100(sp)
     bb4:	8fb40068 	lw	s4,104(sp)
     bb8:	8fb5006c 	lw	s5,108(sp)
     bbc:	8fb60070 	lw	s6,112(sp)
     bc0:	8fb70074 	lw	s7,116(sp)
     bc4:	8fbe0078 	lw	s8,120(sp)
     bc8:	03e00008 	jr	ra
     bcc:	27bd0138 	addiu	sp,sp,312

00000bd0 <func_8002BDB0>:
     bd0:	27bdffe8 	addiu	sp,sp,-24
     bd4:	afbf0014 	sw	ra,20(sp)
     bd8:	14a60007 	bne	a1,a2,bf8 <func_8002BDB0+0x28>
     bdc:	afa40018 	sw	a0,24(sp)
     be0:	8fa50018 	lw	a1,24(sp)
     be4:	00e02025 	move	a0,a3
     be8:	0c000000 	jal	0 <ActorShape_Init>
     bec:	24a500cc 	addiu	a1,a1,204
     bf0:	10000009 	b	c18 <func_8002BDB0+0x48>
     bf4:	8fbf0014 	lw	ra,20(sp)
     bf8:	8fae0028 	lw	t6,40(sp)
     bfc:	54ae0006 	bnel	a1,t6,c18 <func_8002BDB0+0x48>
     c00:	8fbf0014 	lw	ra,20(sp)
     c04:	8fa50018 	lw	a1,24(sp)
     c08:	8fa4002c 	lw	a0,44(sp)
     c0c:	0c000000 	jal	0 <ActorShape_Init>
     c10:	24a500d8 	addiu	a1,a1,216
     c14:	8fbf0014 	lw	ra,20(sp)
     c18:	27bd0018 	addiu	sp,sp,24
     c1c:	03e00008 	jr	ra
     c20:	00000000 	nop

00000c24 <func_8002BE04>:
     c24:	27bdffe8 	addiu	sp,sp,-24
     c28:	3c010001 	lui	at,0x1
     c2c:	afbf0014 	sw	ra,20(sp)
     c30:	afa40018 	sw	a0,24(sp)
     c34:	34211d60 	ori	at,at,0x1d60
     c38:	00812021 	addu	a0,a0,at
     c3c:	0c000000 	jal	0 <ActorShape_Init>
     c40:	afa70024 	sw	a3,36(sp)
     c44:	8fa70024 	lw	a3,36(sp)
     c48:	3c013f80 	lui	at,0x3f80
     c4c:	44811000 	mtc1	at,$f2
     c50:	c4e00000 	lwc1	$f0,0(a3)
     c54:	4602003c 	c.lt.s	$f0,$f2
     c58:	00000000 	nop
     c5c:	45020004 	bc1fl	c70 <func_8002BE04+0x4c>
     c60:	46001103 	div.s	$f4,$f2,$f0
     c64:	10000003 	b	c74 <func_8002BE04+0x50>
     c68:	e4e20000 	swc1	$f2,0(a3)
     c6c:	46001103 	div.s	$f4,$f2,$f0
     c70:	e4e40000 	swc1	$f4,0(a3)
     c74:	8fbf0014 	lw	ra,20(sp)
     c78:	27bd0018 	addiu	sp,sp,24
     c7c:	03e00008 	jr	ra
     c80:	00000000 	nop

00000c84 <func_8002BE64>:
     c84:	00057080 	sll	t6,a1,0x2
     c88:	01c57021 	addu	t6,t6,a1
     c8c:	44866000 	mtc1	a2,$f12
     c90:	44877000 	mtc1	a3,$f14
     c94:	000e7080 	sll	t6,t6,0x2
     c98:	008e1021 	addu	v0,a0,t6
     c9c:	e44c0050 	swc1	$f12,80(v0)
     ca0:	e44e0054 	swc1	$f14,84(v0)
     ca4:	c7a40010 	lwc1	$f4,16(sp)
     ca8:	e4440058 	swc1	$f4,88(v0)
     cac:	c4860044 	lwc1	$f6,68(a0)
     cb0:	03e00008 	jr	ra
     cb4:	e446005c 	swc1	$f6,92(v0)

00000cb8 <func_8002BE98>:
     cb8:	27bdffc0 	addiu	sp,sp,-64
     cbc:	afb40038 	sw	s4,56(sp)
     cc0:	afb30034 	sw	s3,52(sp)
     cc4:	00809825 	move	s3,a0
     cc8:	00a0a025 	move	s4,a1
     ccc:	afbf003c 	sw	ra,60(sp)
     cd0:	afb20030 	sw	s2,48(sp)
     cd4:	afb1002c 	sw	s1,44(sp)
     cd8:	afb00028 	sw	s0,40(sp)
     cdc:	f7b40020 	sdc1	$f20,32(sp)
     ce0:	24c500e0 	addiu	a1,a2,224
     ce4:	0c000000 	jal	0 <ActorShape_Init>
     ce8:	2484000c 	addiu	a0,a0,12
     cec:	3c0143fa 	lui	at,0x43fa
     cf0:	44812000 	mtc1	at,$f4
     cf4:	001478c0 	sll	t7,s4,0x3
     cf8:	3c180000 	lui	t8,0x0
     cfc:	240e0100 	li	t6,256
     d00:	27180000 	addiu	t8,t8,0
     d04:	4480a000 	mtc1	zero,$f20
     d08:	a66e0048 	sh	t6,72(s3)
     d0c:	26700050 	addiu	s0,s3,80
     d10:	01f89021 	addu	s2,t7,t8
     d14:	24140003 	li	s4,3
     d18:	00008825 	move	s1,zero
     d1c:	e6640044 	swc1	$f4,68(s3)
     d20:	4406a000 	mfc1	a2,$f20
     d24:	4407a000 	mfc1	a3,$f20
     d28:	02602025 	move	a0,s3
     d2c:	02202825 	move	a1,s1
     d30:	0c000000 	jal	0 <ActorShape_Init>
     d34:	e7b40010 	swc1	$f20,16(sp)
     d38:	92590000 	lbu	t9,0(s2)
     d3c:	26310001 	addiu	s1,s1,1
     d40:	26100014 	addiu	s0,s0,20
     d44:	a219fffc 	sb	t9,-4(s0)
     d48:	92480001 	lbu	t0,1(s2)
     d4c:	a208fffd 	sb	t0,-3(s0)
     d50:	92490002 	lbu	t1,2(s2)
     d54:	1634fff2 	bne	s1,s4,d20 <func_8002BE98+0x68>
     d58:	a209fffe 	sb	t1,-2(s0)
     d5c:	8fbf003c 	lw	ra,60(sp)
     d60:	d7b40020 	ldc1	$f20,32(sp)
     d64:	8fb00028 	lw	s0,40(sp)
     d68:	8fb1002c 	lw	s1,44(sp)
     d6c:	8fb20030 	lw	s2,48(sp)
     d70:	8fb30034 	lw	s3,52(sp)
     d74:	8fb40038 	lw	s4,56(sp)
     d78:	03e00008 	jr	ra
     d7c:	27bd0040 	addiu	sp,sp,64

00000d80 <func_8002BF60>:
     d80:	afa7000c 	sw	a3,12(sp)
     d84:	c4a40038 	lwc1	$f4,56(a1)
     d88:	3c0f0000 	lui	t7,0x0
     d8c:	25ef0000 	addiu	t7,t7,0
     d90:	e4840000 	swc1	$f4,0(a0)
     d94:	c4a80054 	lwc1	$f8,84(a1)
     d98:	c4a6004c 	lwc1	$f6,76(a1)
     d9c:	c4b0003c 	lwc1	$f16,60(a1)
     da0:	000670c0 	sll	t6,a2,0x3
     da4:	46083282 	mul.s	$f10,$f6,$f8
     da8:	01cf1021 	addu	v0,t6,t7
     dac:	3c014f80 	lui	at,0x4f80
     db0:	460a8480 	add.s	$f18,$f16,$f10
     db4:	e4920004 	swc1	$f18,4(a0)
     db8:	c4a40040 	lwc1	$f4,64(a1)
     dbc:	e4840008 	swc1	$f4,8(a0)
     dc0:	90580000 	lbu	t8,0(v0)
     dc4:	44983000 	mtc1	t8,$f6
     dc8:	07010004 	bgez	t8,ddc <func_8002BF60+0x5c>
     dcc:	46803220 	cvt.s.w	$f8,$f6
     dd0:	44818000 	mtc1	at,$f16
     dd4:	00000000 	nop
     dd8:	46104200 	add.s	$f8,$f8,$f16
     ddc:	e4880018 	swc1	$f8,24(a0)
     de0:	90590001 	lbu	t9,1(v0)
     de4:	3c014f80 	lui	at,0x4f80
     de8:	44995000 	mtc1	t9,$f10
     dec:	07210004 	bgez	t9,e00 <func_8002BF60+0x80>
     df0:	468054a0 	cvt.s.w	$f18,$f10
     df4:	44812000 	mtc1	at,$f4
     df8:	00000000 	nop
     dfc:	46049480 	add.s	$f18,$f18,$f4
     e00:	e492001c 	swc1	$f18,28(a0)
     e04:	90480002 	lbu	t0,2(v0)
     e08:	3c014f80 	lui	at,0x4f80
     e0c:	44883000 	mtc1	t0,$f6
     e10:	05010004 	bgez	t0,e24 <func_8002BF60+0xa4>
     e14:	46803420 	cvt.s.w	$f16,$f6
     e18:	44814000 	mtc1	at,$f8
     e1c:	00000000 	nop
     e20:	46088400 	add.s	$f16,$f16,$f8
     e24:	e4900020 	swc1	$f16,32(a0)
     e28:	90490003 	lbu	t1,3(v0)
     e2c:	3c014f80 	lui	at,0x4f80
     e30:	44895000 	mtc1	t1,$f10
     e34:	05210004 	bgez	t1,e48 <func_8002BF60+0xc8>
     e38:	46805120 	cvt.s.w	$f4,$f10
     e3c:	44819000 	mtc1	at,$f18
     e40:	00000000 	nop
     e44:	46122100 	add.s	$f4,$f4,$f18
     e48:	e4840024 	swc1	$f4,36(a0)
     e4c:	904a0004 	lbu	t2,4(v0)
     e50:	3c014f80 	lui	at,0x4f80
     e54:	448a3000 	mtc1	t2,$f6
     e58:	05410004 	bgez	t2,e6c <func_8002BF60+0xec>
     e5c:	46803220 	cvt.s.w	$f8,$f6
     e60:	44818000 	mtc1	at,$f16
     e64:	00000000 	nop
     e68:	46104200 	add.s	$f8,$f8,$f16
     e6c:	e4880028 	swc1	$f8,40(a0)
     e70:	904b0005 	lbu	t3,5(v0)
     e74:	3c014f80 	lui	at,0x4f80
     e78:	448b5000 	mtc1	t3,$f10
     e7c:	05610004 	bgez	t3,e90 <func_8002BF60+0x110>
     e80:	468054a0 	cvt.s.w	$f18,$f10
     e84:	44812000 	mtc1	at,$f4
     e88:	00000000 	nop
     e8c:	46049480 	add.s	$f18,$f18,$f4
     e90:	e492002c 	swc1	$f18,44(a0)
     e94:	904c0006 	lbu	t4,6(v0)
     e98:	3c014f80 	lui	at,0x4f80
     e9c:	448c3000 	mtc1	t4,$f6
     ea0:	05810004 	bgez	t4,eb4 <func_8002BF60+0x134>
     ea4:	46803420 	cvt.s.w	$f16,$f6
     ea8:	44814000 	mtc1	at,$f8
     eac:	00000000 	nop
     eb0:	46088400 	add.s	$f16,$f16,$f8
     eb4:	e4900030 	swc1	$f16,48(a0)
     eb8:	904d0007 	lbu	t5,7(v0)
     ebc:	3c014f80 	lui	at,0x4f80
     ec0:	448d5000 	mtc1	t5,$f10
     ec4:	05a10004 	bgez	t5,ed8 <func_8002BF60+0x158>
     ec8:	46805120 	cvt.s.w	$f4,$f10
     ecc:	44819000 	mtc1	at,$f18
     ed0:	00000000 	nop
     ed4:	46122100 	add.s	$f4,$f4,$f18
     ed8:	03e00008 	jr	ra
     edc:	e4840034 	swc1	$f4,52(a0)

00000ee0 <func_8002C0C0>:
     ee0:	27bdffe8 	addiu	sp,sp,-24
     ee4:	afbf0014 	sw	ra,20(sp)
     ee8:	afa60020 	sw	a2,32(sp)
     eec:	44802000 	mtc1	zero,$f4
     ef0:	ac800038 	sw	zero,56(a0)
     ef4:	ac80003c 	sw	zero,60(a0)
     ef8:	ac80008c 	sw	zero,140(a0)
     efc:	ac800090 	sw	zero,144(a0)
     f00:	a080004b 	sb	zero,75(a0)
     f04:	a080004c 	sb	zero,76(a0)
     f08:	e4840040 	swc1	$f4,64(a0)
     f0c:	90a60002 	lbu	a2,2(a1)
     f10:	afa5001c 	sw	a1,28(sp)
     f14:	afa40018 	sw	a0,24(sp)
     f18:	0c000000 	jal	0 <ActorShape_Init>
     f1c:	8fa70020 	lw	a3,32(sp)
     f20:	8fae001c 	lw	t6,28(sp)
     f24:	8fa40018 	lw	a0,24(sp)
     f28:	8fa60020 	lw	a2,32(sp)
     f2c:	0c000000 	jal	0 <ActorShape_Init>
     f30:	91c50002 	lbu	a1,2(t6)
     f34:	8fbf0014 	lw	ra,20(sp)
     f38:	27bd0018 	addiu	sp,sp,24
     f3c:	03e00008 	jr	ra
     f40:	00000000 	nop

00000f44 <func_8002C124>:
     f44:	27bdff10 	addiu	sp,sp,-240
     f48:	afbf006c 	sw	ra,108(sp)
     f4c:	afbe0068 	sw	s8,104(sp)
     f50:	afb70064 	sw	s7,100(sp)
     f54:	afb60060 	sw	s6,96(sp)
     f58:	afb5005c 	sw	s5,92(sp)
     f5c:	afb40058 	sw	s4,88(sp)
     f60:	afb30054 	sw	s3,84(sp)
     f64:	afb20050 	sw	s2,80(sp)
     f68:	afb1004c 	sw	s1,76(sp)
     f6c:	afb00048 	sw	s0,72(sp)
     f70:	f7bc0040 	sdc1	$f28,64(sp)
     f74:	f7ba0038 	sdc1	$f26,56(sp)
     f78:	f7b80030 	sdc1	$f24,48(sp)
     f7c:	f7b60028 	sdc1	$f22,40(sp)
     f80:	f7b40020 	sdc1	$f20,32(sp)
     f84:	afa400f0 	sw	a0,240(sp)
     f88:	afa500f4 	sw	a1,244(sp)
     f8c:	8ca50000 	lw	a1,0(a1)
     f90:	8c91003c 	lw	s1,60(a0)
     f94:	3c060000 	lui	a2,0x0
     f98:	24c60080 	addiu	a2,a2,128
     f9c:	27a400d8 	addiu	a0,sp,216
     fa0:	240707ed 	li	a3,2029
     fa4:	0c000000 	jal	0 <ActorShape_Init>
     fa8:	00a09825 	move	s3,a1
     fac:	8fa300f0 	lw	v1,240(sp)
     fb0:	8fb800f4 	lw	t8,244(sp)
     fb4:	241900ff 	li	t9,255
     fb8:	84620048 	lh	v0,72(v1)
     fbc:	504000ff 	beqzl	v0,13bc <func_8002C124+0x478>
     fc0:	8fa300f0 	lw	v1,240(sp)
     fc4:	8f121c44 	lw	s2,7236(t8)
     fc8:	a7b900ce 	sh	t9,206(sp)
     fcc:	9068004b 	lbu	t0,75(v1)
     fd0:	3c013f80 	lui	at,0x3f80
     fd4:	4481a000 	mtc1	at,$f20
     fd8:	11000004 	beqz	t0,fec <func_8002C124+0xa8>
     fdc:	240a0003 	li	t2,3
     fe0:	24090001 	li	t1,1
     fe4:	10000002 	b	ff0 <func_8002C124+0xac>
     fe8:	afa900b8 	sw	t1,184(sp)
     fec:	afaa00b8 	sw	t2,184(sp)
     ff0:	1220000e 	beqz	s1,102c <func_8002C124+0xe8>
     ff4:	244cff88 	addiu	t4,v0,-120
     ff8:	2470000c 	addiu	s0,v1,12
     ffc:	02002025 	move	a0,s0
    1000:	0c000000 	jal	0 <ActorShape_Init>
    1004:	26250038 	addiu	a1,s1,56
    1008:	8fab00f0 	lw	t3,240(sp)
    100c:	3c0143fa 	lui	at,0x43fa
    1010:	44812000 	mtc1	at,$f4
    1014:	c5660044 	lwc1	$f6,68(t3)
    1018:	3c0143d2 	lui	at,0x43d2
    101c:	44815000 	mtc1	at,$f10
    1020:	46062201 	sub.s	$f8,$f4,$f6
    1024:	10000009 	b	104c <func_8002C124+0x108>
    1028:	460a4503 	div.s	$f20,$f8,$f10
    102c:	a46c0048 	sh	t4,72(v1)
    1030:	84620048 	lh	v0,72(v1)
    1034:	2470000c 	addiu	s0,v1,12
    1038:	04430004 	bgezl	v0,104c <func_8002C124+0x108>
    103c:	a7a200ce 	sh	v0,206(sp)
    1040:	a4600048 	sh	zero,72(v1)
    1044:	84620048 	lh	v0,72(v1)
    1048:	a7a200ce 	sh	v0,206(sp)
    104c:	8fa400f4 	lw	a0,244(sp)
    1050:	02002825 	move	a1,s0
    1054:	27a600bc 	addiu	a2,sp,188
    1058:	0c000000 	jal	0 <ActorShape_Init>
    105c:	27a700b4 	addiu	a3,sp,180
    1060:	c7a000bc 	lwc1	$f0,188(sp)
    1064:	c7ae00b4 	lwc1	$f14,180(sp)
    1068:	3c01c3a0 	lui	at,0xc3a0
    106c:	44811000 	mtc1	at,$f2
    1070:	460e0402 	mul.s	$f16,$f0,$f14
    1074:	3c014320 	lui	at,0x4320
    1078:	44819000 	mtc1	at,$f18
    107c:	3c0143a0 	lui	at,0x43a0
    1080:	240f0002 	li	t7,2
    1084:	46128102 	mul.s	$f4,$f16,$f18
    1088:	00000000 	nop
    108c:	46142002 	mul.s	$f0,$f4,$f20
    1090:	4602003c 	c.lt.s	$f0,$f2
    1094:	00000000 	nop
    1098:	45000003 	bc1f	10a8 <func_8002C124+0x164>
    109c:	00000000 	nop
    10a0:	1000000b 	b	10d0 <func_8002C124+0x18c>
    10a4:	e7a200bc 	swc1	$f2,188(sp)
    10a8:	44816000 	mtc1	at,$f12
    10ac:	00000000 	nop
    10b0:	4600603c 	c.lt.s	$f12,$f0
    10b4:	00000000 	nop
    10b8:	45020004 	bc1fl	10cc <func_8002C124+0x188>
    10bc:	46000086 	mov.s	$f2,$f0
    10c0:	10000002 	b	10cc <func_8002C124+0x188>
    10c4:	46006086 	mov.s	$f2,$f12
    10c8:	46000086 	mov.s	$f2,$f0
    10cc:	e7a200bc 	swc1	$f2,188(sp)
    10d0:	c7a000c0 	lwc1	$f0,192(sp)
    10d4:	3c01c370 	lui	at,0xc370
    10d8:	44811000 	mtc1	at,$f2
    10dc:	460e0182 	mul.s	$f6,$f0,$f14
    10e0:	3c0142f0 	lui	at,0x42f0
    10e4:	44814000 	mtc1	at,$f8
    10e8:	3c014370 	lui	at,0x4370
    10ec:	46083282 	mul.s	$f10,$f6,$f8
    10f0:	00000000 	nop
    10f4:	46145002 	mul.s	$f0,$f10,$f20
    10f8:	4602003c 	c.lt.s	$f0,$f2
    10fc:	00000000 	nop
    1100:	45000003 	bc1f	1110 <func_8002C124+0x1cc>
    1104:	00000000 	nop
    1108:	1000000b 	b	1138 <func_8002C124+0x1f4>
    110c:	e7a200c0 	swc1	$f2,192(sp)
    1110:	44816000 	mtc1	at,$f12
    1114:	00000000 	nop
    1118:	4600603c 	c.lt.s	$f12,$f0
    111c:	00000000 	nop
    1120:	45020004 	bc1fl	1134 <func_8002C124+0x1f0>
    1124:	46000086 	mov.s	$f2,$f0
    1128:	10000002 	b	1134 <func_8002C124+0x1f0>
    112c:	46006086 	mov.s	$f2,$f12
    1130:	46000086 	mov.s	$f2,$f0
    1134:	e7a200c0 	swc1	$f2,192(sp)
    1138:	c7b000c4 	lwc1	$f16,196(sp)
    113c:	8fa400f0 	lw	a0,240(sp)
    1140:	46148482 	mul.s	$f18,$f16,$f20
    1144:	e7b200c4 	swc1	$f18,196(sp)
    1148:	808d004c 	lb	t5,76(a0)
    114c:	25aeffff 	addiu	t6,t5,-1
    1150:	a08e004c 	sb	t6,76(a0)
    1154:	8085004c 	lb	a1,76(a0)
    1158:	04a30004 	bgezl	a1,116c <func_8002C124+0x228>
    115c:	c7a400c4 	lwc1	$f4,196(sp)
    1160:	a08f004c 	sb	t7,76(a0)
    1164:	8085004c 	lb	a1,76(a0)
    1168:	c7a400c4 	lwc1	$f4,196(sp)
    116c:	8fa600bc 	lw	a2,188(sp)
    1170:	8fa700c0 	lw	a3,192(sp)
    1174:	0c000000 	jal	0 <ActorShape_Init>
    1178:	e7a40010 	swc1	$f4,16(sp)
    117c:	8e58067c 	lw	t8,1660(s2)
    1180:	24050039 	li	a1,57
    1184:	33190040 	andi	t9,t8,0x40
    1188:	13200004 	beqz	t9,119c <func_8002C124+0x258>
    118c:	00000000 	nop
    1190:	8e480664 	lw	t0,1636(s2)
    1194:	52280089 	beql	s1,t0,13bc <func_8002C124+0x478>
    1198:	8fa300f0 	lw	v1,240(sp)
    119c:	0c000000 	jal	0 <ActorShape_Init>
    11a0:	8e6402b0 	lw	a0,688(s3)
    11a4:	ae6202b0 	sw	v0,688(s3)
    11a8:	8faa00b8 	lw	t2,184(sp)
    11ac:	8fa900f0 	lw	t1,240(sp)
    11b0:	00002025 	move	a0,zero
    11b4:	19400080 	blez	t2,13b8 <func_8002C124+0x474>
    11b8:	8125004c 	lb	a1,76(t1)
    11bc:	3c0142f0 	lui	at,0x42f0
    11c0:	4481e000 	mtc1	at,$f28
    11c4:	3c010000 	lui	at,0x0
    11c8:	c43a0a5c 	lwc1	$f26,2652(at)
    11cc:	3c010000 	lui	at,0x0
    11d0:	3c17da38 	lui	s7,0xda38
    11d4:	3c150000 	lui	s5,0x0
    11d8:	4480a000 	mtc1	zero,$f20
    11dc:	26b50090 	addiu	s5,s5,144
    11e0:	36f70003 	ori	s7,s7,0x3
    11e4:	c4380a60 	lwc1	$f24,2656(at)
    11e8:	3c1ede00 	lui	s8,0xde00
    11ec:	24160004 	li	s6,4
    11f0:	8fab00f0 	lw	t3,240(sp)
    11f4:	00056080 	sll	t4,a1,0x2
    11f8:	01856021 	addu	t4,t4,a1
    11fc:	000c6080 	sll	t4,t4,0x2
    1200:	3c0143fa 	lui	at,0x43fa
    1204:	016c1021 	addu	v0,t3,t4
    1208:	c446005c 	lwc1	$f6,92(v0)
    120c:	44814000 	mtc1	at,$f8
    1210:	87a300ce 	lh	v1,206(sp)
    1214:	24520050 	addiu	s2,v0,80
    1218:	4608303c 	c.lt.s	$f6,$f8
    121c:	00003825 	move	a3,zero
    1220:	45020059 	bc1fl	1388 <func_8002C124+0x444>
    1224:	2463ffab 	addiu	v1,v1,-85
    1228:	c64c000c 	lwc1	$f12,12(s2)
    122c:	3c140000 	lui	s4,0x0
    1230:	4406a000 	mfc1	a2,$f20
    1234:	461c603e 	c.le.s	$f12,$f28
    1238:	26940000 	addiu	s4,s4,0
    123c:	3c010000 	lui	at,0x0
    1240:	45020004 	bc1fl	1254 <func_8002C124+0x310>
    1244:	461c6281 	sub.s	$f10,$f12,$f28
    1248:	10000005 	b	1260 <func_8002C124+0x31c>
    124c:	4600d586 	mov.s	$f22,$f26
    1250:	461c6281 	sub.s	$f10,$f12,$f28
    1254:	c4300a64 	lwc1	$f16,2660(at)
    1258:	46105482 	mul.s	$f18,$f10,$f16
    125c:	461a9580 	add.s	$f22,$f18,$f26
    1260:	c64c0000 	lwc1	$f12,0(s2)
    1264:	c64e0004 	lwc1	$f14,4(s2)
    1268:	afa500ac 	sw	a1,172(sp)
    126c:	afa400b0 	sw	a0,176(sp)
    1270:	0c000000 	jal	0 <ActorShape_Init>
    1274:	a7a300ce 	sh	v1,206(sp)
    1278:	4600b306 	mov.s	$f12,$f22
    127c:	4600d386 	mov.s	$f14,$f26
    1280:	3c063f80 	lui	a2,0x3f80
    1284:	0c000000 	jal	0 <ActorShape_Init>
    1288:	24070001 	li	a3,1
    128c:	8e6202b0 	lw	v0,688(s3)
    1290:	3c0efa00 	lui	t6,0xfa00
    1294:	3c010000 	lui	at,0x0
    1298:	244d0008 	addiu	t5,v0,8
    129c:	ae6d02b0 	sw	t5,688(s3)
    12a0:	ac4e0000 	sw	t6,0(v0)
    12a4:	92490011 	lbu	t1,17(s2)
    12a8:	92580010 	lbu	t8,16(s2)
    12ac:	924d0012 	lbu	t5,18(s2)
    12b0:	93a800cf 	lbu	t0,207(sp)
    12b4:	00095400 	sll	t2,t1,0x10
    12b8:	0018ce00 	sll	t9,t8,0x18
    12bc:	032a5825 	or	t3,t9,t2
    12c0:	000d7200 	sll	t6,t5,0x8
    12c4:	016e7825 	or	t7,t3,t6
    12c8:	01e84825 	or	t1,t7,t0
    12cc:	ac490004 	sw	t1,4(v0)
    12d0:	8fb900f0 	lw	t9,240(sp)
    12d4:	c4280a68 	lwc1	$f8,2664(at)
    12d8:	24050001 	li	a1,1
    12dc:	932a004b 	lbu	t2,75(t9)
    12e0:	314c007f 	andi	t4,t2,0x7f
    12e4:	448c2000 	mtc1	t4,$f4
    12e8:	00000000 	nop
    12ec:	468021a0 	cvt.s.w	$f6,$f4
    12f0:	46083302 	mul.s	$f12,$f6,$f8
    12f4:	0c000000 	jal	0 <ActorShape_Init>
    12f8:	00000000 	nop
    12fc:	00008825 	move	s1,zero
    1300:	4600c306 	mov.s	$f12,$f24
    1304:	0c000000 	jal	0 <ActorShape_Init>
    1308:	24050001 	li	a1,1
    130c:	0c000000 	jal	0 <ActorShape_Init>
    1310:	00000000 	nop
    1314:	c64c000c 	lwc1	$f12,12(s2)
    1318:	4406a000 	mfc1	a2,$f20
    131c:	24070001 	li	a3,1
    1320:	0c000000 	jal	0 <ActorShape_Init>
    1324:	46006386 	mov.s	$f14,$f12
    1328:	8e6202b0 	lw	v0,688(s3)
    132c:	02a02825 	move	a1,s5
    1330:	24060844 	li	a2,2116
    1334:	244d0008 	addiu	t5,v0,8
    1338:	ae6d02b0 	sw	t5,688(s3)
    133c:	ac570000 	sw	s7,0(v0)
    1340:	8fab00f4 	lw	t3,244(sp)
    1344:	00408025 	move	s0,v0
    1348:	0c000000 	jal	0 <ActorShape_Init>
    134c:	8d640000 	lw	a0,0(t3)
    1350:	ae020004 	sw	v0,4(s0)
    1354:	8e6202b0 	lw	v0,688(s3)
    1358:	244e0008 	addiu	t6,v0,8
    135c:	ae6e02b0 	sw	t6,688(s3)
    1360:	ac540004 	sw	s4,4(v0)
    1364:	0c000000 	jal	0 <ActorShape_Init>
    1368:	ac5e0000 	sw	s8,0(v0)
    136c:	26310001 	addiu	s1,s1,1
    1370:	5636ffe4 	bnel	s1,s6,1304 <func_8002C124+0x3c0>
    1374:	4600c306 	mov.s	$f12,$f24
    1378:	8fa500ac 	lw	a1,172(sp)
    137c:	8fa400b0 	lw	a0,176(sp)
    1380:	87a300ce 	lh	v1,206(sp)
    1384:	2463ffab 	addiu	v1,v1,-85
    1388:	00031c00 	sll	v1,v1,0x10
    138c:	00031c03 	sra	v1,v1,0x10
    1390:	04610002 	bgez	v1,139c <func_8002C124+0x458>
    1394:	24a50001 	addiu	a1,a1,1
    1398:	00001825 	move	v1,zero
    139c:	24010003 	li	at,3
    13a0:	00a1001a 	div	zero,a1,at
    13a4:	8fb800b8 	lw	t8,184(sp)
    13a8:	00002810 	mfhi	a1
    13ac:	24840001 	addiu	a0,a0,1
    13b0:	1498ff8f 	bne	a0,t8,11f0 <func_8002C124+0x2ac>
    13b4:	a7a300ce 	sh	v1,206(sp)
    13b8:	8fa300f0 	lw	v1,240(sp)
    13bc:	3c17da38 	lui	s7,0xda38
    13c0:	36f70003 	ori	s7,s7,0x3
    13c4:	8c710094 	lw	s1,148(v1)
    13c8:	3c1ede00 	lui	s8,0xde00
    13cc:	5220006c 	beqzl	s1,1580 <func_8002C124+0x63c>
    13d0:	8faa00f4 	lw	t2,244(sp)
    13d4:	8e2f0004 	lw	t7,4(s1)
    13d8:	3c0a0000 	lui	t2,0x0
    13dc:	254a0000 	addiu	t2,t2,0
    13e0:	000f4100 	sll	t0,t7,0x4
    13e4:	05020066 	bltzl	t0,1580 <func_8002C124+0x63c>
    13e8:	8faa00f4 	lw	t2,244(sp)
    13ec:	92290002 	lbu	t1,2(s1)
    13f0:	8e6402d0 	lw	a0,720(s3)
    13f4:	24050007 	li	a1,7
    13f8:	0009c8c0 	sll	t9,t1,0x3
    13fc:	0c000000 	jal	0 <ActorShape_Init>
    1400:	032a8021 	addu	s0,t9,t2
    1404:	ae6202d0 	sw	v0,720(s3)
    1408:	c6300054 	lwc1	$f16,84(s1)
    140c:	c62a004c 	lwc1	$f10,76(s1)
    1410:	c624003c 	lwc1	$f4,60(s1)
    1414:	3c014188 	lui	at,0x4188
    1418:	46105482 	mul.s	$f18,$f10,$f16
    141c:	44814000 	mtc1	at,$f8
    1420:	8e260040 	lw	a2,64(s1)
    1424:	c62c0038 	lwc1	$f12,56(s1)
    1428:	00003825 	move	a3,zero
    142c:	46122180 	add.s	$f6,$f4,$f18
    1430:	0c000000 	jal	0 <ActorShape_Init>
    1434:	46083380 	add.s	$f14,$f6,$f8
    1438:	8fac00f4 	lw	t4,244(sp)
    143c:	3c0d0001 	lui	t5,0x1
    1440:	3c014f80 	lui	at,0x4f80
    1444:	01ac6821 	addu	t5,t5,t4
    1448:	8dad1de4 	lw	t5,7652(t5)
    144c:	000d5880 	sll	t3,t5,0x2
    1450:	016d5823 	subu	t3,t3,t5
    1454:	000b5900 	sll	t3,t3,0x4
    1458:	016d5823 	subu	t3,t3,t5
    145c:	000b58c0 	sll	t3,t3,0x3
    1460:	016d5823 	subu	t3,t3,t5
    1464:	000b58c0 	sll	t3,t3,0x3
    1468:	316effff 	andi	t6,t3,0xffff
    146c:	448e5000 	mtc1	t6,$f10
    1470:	05c10004 	bgez	t6,1484 <func_8002C124+0x540>
    1474:	46805420 	cvt.s.w	$f16,$f10
    1478:	44812000 	mtc1	at,$f4
    147c:	00000000 	nop
    1480:	46048400 	add.s	$f16,$f16,$f4
    1484:	3c010000 	lui	at,0x0
    1488:	c4320a6c 	lwc1	$f18,2668(at)
    148c:	24050001 	li	a1,1
    1490:	46128302 	mul.s	$f12,$f16,$f18
    1494:	0c000000 	jal	0 <ActorShape_Init>
    1498:	00000000 	nop
    149c:	3c020000 	lui	v0,0x0
    14a0:	8c420000 	lw	v0,0(v0)
    14a4:	3c01447a 	lui	at,0x447a
    14a8:	44810000 	mtc1	at,$f0
    14ac:	84590d0e 	lh	t9,3342(v0)
    14b0:	84580d0a 	lh	t8,3338(v0)
    14b4:	84480d0c 	lh	t0,3340(v0)
    14b8:	272a0032 	addiu	t2,t9,50
    14bc:	448a8000 	mtc1	t2,$f16
    14c0:	270f0023 	addiu	t7,t8,35
    14c4:	448f3000 	mtc1	t7,$f6
    14c8:	468084a0 	cvt.s.w	$f18,$f16
    14cc:	2509003c 	addiu	t1,t0,60
    14d0:	44895000 	mtc1	t1,$f10
    14d4:	24070001 	li	a3,1
    14d8:	46803220 	cvt.s.w	$f8,$f6
    14dc:	46009183 	div.s	$f6,$f18,$f0
    14e0:	46805120 	cvt.s.w	$f4,$f10
    14e4:	46002383 	div.s	$f14,$f4,$f0
    14e8:	44063000 	mfc1	a2,$f6
    14ec:	0c000000 	jal	0 <ActorShape_Init>
    14f0:	46004303 	div.s	$f12,$f8,$f0
    14f4:	8e6202d0 	lw	v0,720(s3)
    14f8:	3c0dfa00 	lui	t5,0xfa00
    14fc:	3c050000 	lui	a1,0x0
    1500:	244c0008 	addiu	t4,v0,8
    1504:	ae6c02d0 	sw	t4,720(s3)
    1508:	ac4d0000 	sw	t5,0(v0)
    150c:	92080001 	lbu	t0,1(s0)
    1510:	920e0000 	lbu	t6,0(s0)
    1514:	920c0002 	lbu	t4,2(s0)
    1518:	00084c00 	sll	t1,t0,0x10
    151c:	000ec600 	sll	t8,t6,0x18
    1520:	0309c825 	or	t9,t8,t1
    1524:	000c6a00 	sll	t5,t4,0x8
    1528:	032d5825 	or	t3,t9,t5
    152c:	356e00ff 	ori	t6,t3,0xff
    1530:	ac4e0004 	sw	t6,4(v0)
    1534:	8e6202d0 	lw	v0,720(s3)
    1538:	24a500a0 	addiu	a1,a1,160
    153c:	24060869 	li	a2,2153
    1540:	244f0008 	addiu	t7,v0,8
    1544:	ae6f02d0 	sw	t7,720(s3)
    1548:	ac570000 	sw	s7,0(v0)
    154c:	8fa800f4 	lw	t0,244(sp)
    1550:	00408025 	move	s0,v0
    1554:	0c000000 	jal	0 <ActorShape_Init>
    1558:	8d040000 	lw	a0,0(t0)
    155c:	ae020004 	sw	v0,4(s0)
    1560:	8e6202d0 	lw	v0,720(s3)
    1564:	3c090000 	lui	t1,0x0
    1568:	25290000 	addiu	t1,t1,0
    156c:	24580008 	addiu	t8,v0,8
    1570:	ae7802d0 	sw	t8,720(s3)
    1574:	ac490004 	sw	t1,4(v0)
    1578:	ac5e0000 	sw	s8,0(v0)
    157c:	8faa00f4 	lw	t2,244(sp)
    1580:	3c060000 	lui	a2,0x0
    1584:	24c600b0 	addiu	a2,a2,176
    1588:	27a400d8 	addiu	a0,sp,216
    158c:	2407086e 	li	a3,2158
    1590:	0c000000 	jal	0 <ActorShape_Init>
    1594:	8d450000 	lw	a1,0(t2)
    1598:	8fbf006c 	lw	ra,108(sp)
    159c:	d7b40020 	ldc1	$f20,32(sp)
    15a0:	d7b60028 	ldc1	$f22,40(sp)
    15a4:	d7b80030 	ldc1	$f24,48(sp)
    15a8:	d7ba0038 	ldc1	$f26,56(sp)
    15ac:	d7bc0040 	ldc1	$f28,64(sp)
    15b0:	8fb00048 	lw	s0,72(sp)
    15b4:	8fb1004c 	lw	s1,76(sp)
    15b8:	8fb20050 	lw	s2,80(sp)
    15bc:	8fb30054 	lw	s3,84(sp)
    15c0:	8fb40058 	lw	s4,88(sp)
    15c4:	8fb5005c 	lw	s5,92(sp)
    15c8:	8fb60060 	lw	s6,96(sp)
    15cc:	8fb70064 	lw	s7,100(sp)
    15d0:	8fbe0068 	lw	s8,104(sp)
    15d4:	03e00008 	jr	ra
    15d8:	27bd00f0 	addiu	sp,sp,240

000015dc <func_8002C7BC>:
    15dc:	27bdff98 	addiu	sp,sp,-104
    15e0:	afbf001c 	sw	ra,28(sp)
    15e4:	afb10018 	sw	s1,24(sp)
    15e8:	afb00014 	sw	s0,20(sp)
    15ec:	afa5006c 	sw	a1,108(sp)
    15f0:	afa70074 	sw	a3,116(sp)
    15f4:	afa00060 	sw	zero,96(sp)
    15f8:	8caf0664 	lw	t7,1636(a1)
    15fc:	00c08825 	move	s1,a2
    1600:	00808025 	move	s0,a0
    1604:	11e00009 	beqz	t7,162c <func_8002C7BC+0x50>
    1608:	27a60060 	addiu	a2,sp,96
    160c:	90b80846 	lbu	t8,2118(a1)
    1610:	24010002 	li	at,2
    1614:	00b8c821 	addu	t9,a1,t8
    1618:	8328084b 	lb	t0,2123(t9)
    161c:	55010004 	bnel	t0,at,1630 <func_8002C7BC+0x54>
    1620:	8fa40074 	lw	a0,116(sp)
    1624:	10000007 	b	1644 <func_8002C7BC+0x68>
    1628:	ac800094 	sw	zero,148(a0)
    162c:	8fa40074 	lw	a0,116(sp)
    1630:	8fa7006c 	lw	a3,108(sp)
    1634:	0c000000 	jal	0 <ActorShape_Init>
    1638:	24851c24 	addiu	a1,a0,7204
    163c:	8faa0060 	lw	t2,96(sp)
    1640:	ae0a0094 	sw	t2,148(s0)
    1644:	8e02008c 	lw	v0,140(s0)
    1648:	26040040 	addiu	a0,s0,64
    164c:	24050000 	li	a1,0
    1650:	10400004 	beqz	v0,1664 <func_8002C7BC+0x88>
    1654:	00000000 	nop
    1658:	afa20060 	sw	v0,96(sp)
    165c:	10000004 	b	1670 <func_8002C7BC+0x94>
    1660:	ae00008c 	sw	zero,140(s0)
    1664:	52200003 	beqzl	s1,1674 <func_8002C7BC+0x98>
    1668:	8fab0060 	lw	t3,96(sp)
    166c:	afb10060 	sw	s1,96(sp)
    1670:	8fab0060 	lw	t3,96(sp)
    1674:	8fad006c 	lw	t5,108(sp)
    1678:	51600005 	beqzl	t3,1690 <func_8002C7BC+0xb4>
    167c:	91af0002 	lbu	t7,2(t5)
    1680:	916c0002 	lbu	t4,2(t3)
    1684:	10000003 	b	1694 <func_8002C7BC+0xb8>
    1688:	afac005c 	sw	t4,92(sp)
    168c:	91af0002 	lbu	t7,2(t5)
    1690:	afaf005c 	sw	t7,92(sp)
    1694:	8fae0060 	lw	t6,96(sp)
    1698:	8e180038 	lw	t8,56(s0)
    169c:	8fb9005c 	lw	t9,92(sp)
    16a0:	8fa90060 	lw	t1,96(sp)
    16a4:	15d80004 	bne	t6,t8,16b8 <func_8002C7BC+0xdc>
    16a8:	3c013f80 	lui	at,0x3f80
    16ac:	9208004a 	lbu	t0,74(s0)
    16b0:	53280007 	beql	t9,t0,16d0 <func_8002C7BC+0xf4>
    16b4:	8fab0060 	lw	t3,96(sp)
    16b8:	ae090038 	sw	t1,56(s0)
    16bc:	8faa005c 	lw	t2,92(sp)
    16c0:	44812000 	mtc1	at,$f4
    16c4:	a20a004a 	sb	t2,74(s0)
    16c8:	e6040040 	swc1	$f4,64(s0)
    16cc:	8fab0060 	lw	t3,96(sp)
    16d0:	8fac006c 	lw	t4,108(sp)
    16d4:	15600002 	bnez	t3,16e0 <func_8002C7BC+0x104>
    16d8:	00000000 	nop
    16dc:	afac0060 	sw	t4,96(sp)
    16e0:	0c000000 	jal	0 <ActorShape_Init>
    16e4:	3c063e80 	lui	a2,0x3e80
    16e8:	1440001f 	bnez	v0,1768 <func_8002C7BC+0x18c>
    16ec:	02002025 	move	a0,s0
    16f0:	3c013e80 	lui	at,0x3e80
    16f4:	44813000 	mtc1	at,$f6
    16f8:	c6080040 	lwc1	$f8,64(s0)
    16fc:	8fad0060 	lw	t5,96(sp)
    1700:	c6020000 	lwc1	$f2,0(s0)
    1704:	46083003 	div.s	$f0,$f6,$f8
    1708:	c5a60054 	lwc1	$f6,84(t5)
    170c:	c5a4004c 	lwc1	$f4,76(t5)
    1710:	c5aa0024 	lwc1	$f10,36(t5)
    1714:	c60c0004 	lwc1	$f12,4(s0)
    1718:	46062202 	mul.s	$f8,$f4,$f6
    171c:	46025401 	sub.s	$f16,$f10,$f2
    1720:	c5aa0028 	lwc1	$f10,40(t5)
    1724:	c60e0008 	lwc1	$f14,8(s0)
    1728:	c5a6002c 	lwc1	$f6,44(t5)
    172c:	46085100 	add.s	$f4,$f10,$f8
    1730:	46008202 	mul.s	$f8,$f16,$f0
    1734:	460e3281 	sub.s	$f10,$f6,$f14
    1738:	460c2481 	sub.s	$f18,$f4,$f12
    173c:	e7aa003c 	swc1	$f10,60(sp)
    1740:	46081100 	add.s	$f4,$f2,$f8
    1744:	46009182 	mul.s	$f6,$f18,$f0
    1748:	e6040000 	swc1	$f4,0(s0)
    174c:	46066280 	add.s	$f10,$f12,$f6
    1750:	e60a0004 	swc1	$f10,4(s0)
    1754:	c7a8003c 	lwc1	$f8,60(sp)
    1758:	46004102 	mul.s	$f4,$f8,$f0
    175c:	46047180 	add.s	$f6,$f14,$f4
    1760:	10000005 	b	1778 <func_8002C7BC+0x19c>
    1764:	e6060008 	swc1	$f6,8(s0)
    1768:	8fa50060 	lw	a1,96(sp)
    176c:	8fa6005c 	lw	a2,92(sp)
    1770:	0c000000 	jal	0 <ActorShape_Init>
    1774:	8fa70074 	lw	a3,116(sp)
    1778:	12200020 	beqz	s1,17fc <func_8002C7BC+0x220>
    177c:	00000000 	nop
    1780:	920f004b 	lbu	t7,75(s0)
    1784:	8fa40074 	lw	a0,116(sp)
    1788:	26250038 	addiu	a1,s1,56
    178c:	15e0001b 	bnez	t7,17fc <func_8002C7BC+0x220>
    1790:	27a60050 	addiu	a2,sp,80
    1794:	0c000000 	jal	0 <ActorShape_Init>
    1798:	27a7004c 	addiu	a3,sp,76
    179c:	44805000 	mtc1	zero,$f10
    17a0:	c7a80058 	lwc1	$f8,88(sp)
    17a4:	c7a2004c 	lwc1	$f2,76(sp)
    17a8:	c7a40050 	lwc1	$f4,80(sp)
    17ac:	460a403e 	c.le.s	$f8,$f10
    17b0:	00000000 	nop
    17b4:	45030011 	bc1tl	17fc <func_8002C7BC+0x220>
    17b8:	00008825 	move	s1,zero
    17bc:	46022002 	mul.s	$f0,$f4,$f2
    17c0:	3c013f80 	lui	at,0x3f80
    17c4:	44816000 	mtc1	at,$f12
    17c8:	c7a60054 	lwc1	$f6,84(sp)
    17cc:	46000005 	abs.s	$f0,$f0
    17d0:	4600603e 	c.le.s	$f12,$f0
    17d4:	00000000 	nop
    17d8:	45030008 	bc1tl	17fc <func_8002C7BC+0x220>
    17dc:	00008825 	move	s1,zero
    17e0:	46023002 	mul.s	$f0,$f6,$f2
    17e4:	46000005 	abs.s	$f0,$f0
    17e8:	4600603e 	c.le.s	$f12,$f0
    17ec:	00000000 	nop
    17f0:	45000002 	bc1f	17fc <func_8002C7BC+0x220>
    17f4:	00000000 	nop
    17f8:	00008825 	move	s1,zero
    17fc:	1220004f 	beqz	s1,193c <func_8002C7BC+0x360>
    1800:	26040044 	addiu	a0,s0,68
    1804:	8e0e003c 	lw	t6,60(s0)
    1808:	02002025 	move	a0,s0
    180c:	8fa60074 	lw	a2,116(sp)
    1810:	522e0014 	beql	s1,t6,1864 <func_8002C7BC+0x288>
    1814:	c62a0024 	lwc1	$f10,36(s1)
    1818:	0c000000 	jal	0 <ActorShape_Init>
    181c:	92250002 	lbu	a1,2(s1)
    1820:	ae11003c 	sw	s1,60(s0)
    1824:	86380000 	lh	t8,0(s1)
    1828:	24010032 	li	at,50
    182c:	24024810 	li	v0,18448
    1830:	57010003 	bnel	t8,at,1840 <func_8002C7BC+0x264>
    1834:	8e390004 	lw	t9,4(s1)
    1838:	a6000048 	sh	zero,72(s0)
    183c:	8e390004 	lw	t9,4(s1)
    1840:	24010005 	li	at,5
    1844:	33280005 	andi	t0,t9,0x5
    1848:	15010003 	bne	t0,at,1858 <func_8002C7BC+0x27c>
    184c:	00000000 	nop
    1850:	10000001 	b	1858 <func_8002C7BC+0x27c>
    1854:	24024830 	li	v0,18480
    1858:	0c000000 	jal	0 <ActorShape_Init>
    185c:	3044ffff 	andi	a0,v0,0xffff
    1860:	c62a0024 	lwc1	$f10,36(s1)
    1864:	9202004b 	lbu	v0,75(s0)
    1868:	26040044 	addiu	a0,s0,68
    186c:	e60a000c 	swc1	$f10,12(s0)
    1870:	c6240054 	lwc1	$f4,84(s1)
    1874:	c62800bc 	lwc1	$f8,188(s1)
    1878:	c62a0028 	lwc1	$f10,40(s1)
    187c:	244b0003 	addiu	t3,v0,3
    1880:	46044182 	mul.s	$f6,$f8,$f4
    1884:	356c0080 	ori	t4,t3,0x80
    1888:	3c0142f0 	lui	at,0x42f0
    188c:	46065201 	sub.s	$f8,$f10,$f6
    1890:	e6080010 	swc1	$f8,16(s0)
    1894:	c624002c 	lwc1	$f4,44(s1)
    1898:	14400024 	bnez	v0,192c <func_8002C7BC+0x350>
    189c:	e6040014 	swc1	$f4,20(s0)
    18a0:	3c0141f0 	lui	at,0x41f0
    18a4:	44811000 	mtc1	at,$f2
    18a8:	3c0143fa 	lui	at,0x43fa
    18ac:	44815000 	mtc1	at,$f10
    18b0:	c6060044 	lwc1	$f6,68(s0)
    18b4:	3c014040 	lui	at,0x4040
    18b8:	44812000 	mtc1	at,$f4
    18bc:	46065201 	sub.s	$f8,$f10,$f6
    18c0:	3c0142c8 	lui	at,0x42c8
    18c4:	46044002 	mul.s	$f0,$f8,$f4
    18c8:	4602003c 	c.lt.s	$f0,$f2
    18cc:	00000000 	nop
    18d0:	45020004 	bc1fl	18e4 <func_8002C7BC+0x308>
    18d4:	44816000 	mtc1	at,$f12
    18d8:	1000000b 	b	1908 <func_8002C7BC+0x32c>
    18dc:	46001006 	mov.s	$f0,$f2
    18e0:	44816000 	mtc1	at,$f12
    18e4:	00000000 	nop
    18e8:	4600603c 	c.lt.s	$f12,$f0
    18ec:	00000000 	nop
    18f0:	45020004 	bc1fl	1904 <func_8002C7BC+0x328>
    18f4:	46000086 	mov.s	$f2,$f0
    18f8:	10000002 	b	1904 <func_8002C7BC+0x328>
    18fc:	46006086 	mov.s	$f2,$f12
    1900:	46000086 	mov.s	$f2,$f0
    1904:	46001006 	mov.s	$f0,$f2
    1908:	44060000 	mfc1	a2,$f0
    190c:	0c000000 	jal	0 <ActorShape_Init>
    1910:	3c0542a0 	lui	a1,0x42a0
    1914:	5040000e 	beqzl	v0,1950 <func_8002C7BC+0x374>
    1918:	8fbf001c 	lw	ra,28(sp)
    191c:	9209004b 	lbu	t1,75(s0)
    1920:	252a0001 	addiu	t2,t1,1
    1924:	10000009 	b	194c <func_8002C7BC+0x370>
    1928:	a20a004b 	sb	t2,75(s0)
    192c:	44815000 	mtc1	at,$f10
    1930:	a20c004b 	sb	t4,75(s0)
    1934:	10000005 	b	194c <func_8002C7BC+0x370>
    1938:	e60a0044 	swc1	$f10,68(s0)
    193c:	ae00003c 	sw	zero,60(s0)
    1940:	3c0543fa 	lui	a1,0x43fa
    1944:	0c000000 	jal	0 <ActorShape_Init>
    1948:	3c0642a0 	lui	a2,0x42a0
    194c:	8fbf001c 	lw	ra,28(sp)
    1950:	8fb00014 	lw	s0,20(sp)
    1954:	8fb10018 	lw	s1,24(sp)
    1958:	03e00008 	jr	ra
    195c:	27bd0068 	addiu	sp,sp,104

00001960 <Flags_GetSwitch>:
    1960:	28a10020 	slti	at,a1,32
    1964:	10200005 	beqz	at,197c <Flags_GetSwitch+0x1c>
    1968:	240f0001 	li	t7,1
    196c:	8c8e1d28 	lw	t6,7464(a0)
    1970:	00afc004 	sllv	t8,t7,a1
    1974:	03e00008 	jr	ra
    1978:	01d81024 	and	v0,t6,t8
    197c:	8c991d2c 	lw	t9,7468(a0)
    1980:	24080001 	li	t0,1
    1984:	00a84804 	sllv	t1,t0,a1
    1988:	03291024 	and	v0,t9,t1
    198c:	03e00008 	jr	ra
    1990:	00000000 	nop

00001994 <Flags_SetSwitch>:
    1994:	28a10020 	slti	at,a1,32
    1998:	50200008 	beqzl	at,19bc <Flags_SetSwitch+0x28>
    199c:	8c881d2c 	lw	t0,7468(a0)
    19a0:	8c8e1d28 	lw	t6,7464(a0)
    19a4:	240f0001 	li	t7,1
    19a8:	00afc004 	sllv	t8,t7,a1
    19ac:	01d8c825 	or	t9,t6,t8
    19b0:	03e00008 	jr	ra
    19b4:	ac991d28 	sw	t9,7464(a0)
    19b8:	8c881d2c 	lw	t0,7468(a0)
    19bc:	24090001 	li	t1,1
    19c0:	00a95004 	sllv	t2,t1,a1
    19c4:	010a5825 	or	t3,t0,t2
    19c8:	ac8b1d2c 	sw	t3,7468(a0)
    19cc:	03e00008 	jr	ra
    19d0:	00000000 	nop

000019d4 <Flags_UnsetSwitch>:
    19d4:	28a10020 	slti	at,a1,32
    19d8:	10200008 	beqz	at,19fc <Flags_UnsetSwitch+0x28>
    19dc:	240a0001 	li	t2,1
    19e0:	8c8e1d28 	lw	t6,7464(a0)
    19e4:	240f0001 	li	t7,1
    19e8:	00afc004 	sllv	t8,t7,a1
    19ec:	0300c827 	nor	t9,t8,zero
    19f0:	01d94024 	and	t0,t6,t9
    19f4:	03e00008 	jr	ra
    19f8:	ac881d28 	sw	t0,7464(a0)
    19fc:	8c891d2c 	lw	t1,7468(a0)
    1a00:	00aa5804 	sllv	t3,t2,a1
    1a04:	01606027 	nor	t4,t3,zero
    1a08:	012c6824 	and	t5,t1,t4
    1a0c:	ac8d1d2c 	sw	t5,7468(a0)
    1a10:	03e00008 	jr	ra
    1a14:	00000000 	nop

00001a18 <Flags_GetUnknown>:
    1a18:	28a10020 	slti	at,a1,32
    1a1c:	10200005 	beqz	at,1a34 <Flags_GetUnknown+0x1c>
    1a20:	240f0001 	li	t7,1
    1a24:	8c8e1d30 	lw	t6,7472(a0)
    1a28:	00afc004 	sllv	t8,t7,a1
    1a2c:	03e00008 	jr	ra
    1a30:	01d81024 	and	v0,t6,t8
    1a34:	8c991d34 	lw	t9,7476(a0)
    1a38:	24080001 	li	t0,1
    1a3c:	00a84804 	sllv	t1,t0,a1
    1a40:	03291024 	and	v0,t9,t1
    1a44:	03e00008 	jr	ra
    1a48:	00000000 	nop

00001a4c <Flags_SetUnknown>:
    1a4c:	28a10020 	slti	at,a1,32
    1a50:	50200008 	beqzl	at,1a74 <Flags_SetUnknown+0x28>
    1a54:	8c881d34 	lw	t0,7476(a0)
    1a58:	8c8e1d30 	lw	t6,7472(a0)
    1a5c:	240f0001 	li	t7,1
    1a60:	00afc004 	sllv	t8,t7,a1
    1a64:	01d8c825 	or	t9,t6,t8
    1a68:	03e00008 	jr	ra
    1a6c:	ac991d30 	sw	t9,7472(a0)
    1a70:	8c881d34 	lw	t0,7476(a0)
    1a74:	24090001 	li	t1,1
    1a78:	00a95004 	sllv	t2,t1,a1
    1a7c:	010a5825 	or	t3,t0,t2
    1a80:	ac8b1d34 	sw	t3,7476(a0)
    1a84:	03e00008 	jr	ra
    1a88:	00000000 	nop

00001a8c <Flags_UnsetUnknown>:
    1a8c:	28a10020 	slti	at,a1,32
    1a90:	10200008 	beqz	at,1ab4 <Flags_UnsetUnknown+0x28>
    1a94:	240a0001 	li	t2,1
    1a98:	8c8e1d30 	lw	t6,7472(a0)
    1a9c:	240f0001 	li	t7,1
    1aa0:	00afc004 	sllv	t8,t7,a1
    1aa4:	0300c827 	nor	t9,t8,zero
    1aa8:	01d94024 	and	t0,t6,t9
    1aac:	03e00008 	jr	ra
    1ab0:	ac881d30 	sw	t0,7472(a0)
    1ab4:	8c891d34 	lw	t1,7476(a0)
    1ab8:	00aa5804 	sllv	t3,t2,a1
    1abc:	01606027 	nor	t4,t3,zero
    1ac0:	012c6824 	and	t5,t1,t4
    1ac4:	ac8d1d34 	sw	t5,7476(a0)
    1ac8:	03e00008 	jr	ra
    1acc:	00000000 	nop

00001ad0 <Flags_GetTreasure>:
    1ad0:	8c8e1d38 	lw	t6,7480(a0)
    1ad4:	240f0001 	li	t7,1
    1ad8:	00afc004 	sllv	t8,t7,a1
    1adc:	03e00008 	jr	ra
    1ae0:	01d81024 	and	v0,t6,t8

00001ae4 <Flags_SetTreasure>:
    1ae4:	8c8e1d38 	lw	t6,7480(a0)
    1ae8:	240f0001 	li	t7,1
    1aec:	00afc004 	sllv	t8,t7,a1
    1af0:	01d8c825 	or	t9,t6,t8
    1af4:	03e00008 	jr	ra
    1af8:	ac991d38 	sw	t9,7480(a0)

00001afc <Flags_GetClear>:
    1afc:	8c8e1d3c 	lw	t6,7484(a0)
    1b00:	240f0001 	li	t7,1
    1b04:	00afc004 	sllv	t8,t7,a1
    1b08:	03e00008 	jr	ra
    1b0c:	01d81024 	and	v0,t6,t8

00001b10 <Flags_SetClear>:
    1b10:	8c8e1d3c 	lw	t6,7484(a0)
    1b14:	240f0001 	li	t7,1
    1b18:	00afc004 	sllv	t8,t7,a1
    1b1c:	01d8c825 	or	t9,t6,t8
    1b20:	03e00008 	jr	ra
    1b24:	ac991d3c 	sw	t9,7484(a0)

00001b28 <Flags_UnsetClear>:
    1b28:	8c8e1d3c 	lw	t6,7484(a0)
    1b2c:	240f0001 	li	t7,1
    1b30:	00afc004 	sllv	t8,t7,a1
    1b34:	0300c827 	nor	t9,t8,zero
    1b38:	01d94024 	and	t0,t6,t9
    1b3c:	03e00008 	jr	ra
    1b40:	ac881d3c 	sw	t0,7484(a0)

00001b44 <Flags_GetTempClear>:
    1b44:	8c8e1d40 	lw	t6,7488(a0)
    1b48:	240f0001 	li	t7,1
    1b4c:	00afc004 	sllv	t8,t7,a1
    1b50:	03e00008 	jr	ra
    1b54:	01d81024 	and	v0,t6,t8

00001b58 <Flags_SetTempClear>:
    1b58:	8c8e1d40 	lw	t6,7488(a0)
    1b5c:	240f0001 	li	t7,1
    1b60:	00afc004 	sllv	t8,t7,a1
    1b64:	01d8c825 	or	t9,t6,t8
    1b68:	03e00008 	jr	ra
    1b6c:	ac991d40 	sw	t9,7488(a0)

00001b70 <Flags_UnsetTempClear>:
    1b70:	8c8e1d40 	lw	t6,7488(a0)
    1b74:	240f0001 	li	t7,1
    1b78:	00afc004 	sllv	t8,t7,a1
    1b7c:	0300c827 	nor	t9,t8,zero
    1b80:	01d94024 	and	t0,t6,t9
    1b84:	03e00008 	jr	ra
    1b88:	ac881d40 	sw	t0,7488(a0)

00001b8c <Flags_GetCollectible>:
    1b8c:	28a10020 	slti	at,a1,32
    1b90:	10200005 	beqz	at,1ba8 <Flags_GetCollectible+0x1c>
    1b94:	240f0001 	li	t7,1
    1b98:	8c8e1d44 	lw	t6,7492(a0)
    1b9c:	00afc004 	sllv	t8,t7,a1
    1ba0:	03e00008 	jr	ra
    1ba4:	01d81024 	and	v0,t6,t8
    1ba8:	8c991d48 	lw	t9,7496(a0)
    1bac:	24080001 	li	t0,1
    1bb0:	00a84804 	sllv	t1,t0,a1
    1bb4:	03291024 	and	v0,t9,t1
    1bb8:	03e00008 	jr	ra
    1bbc:	00000000 	nop

00001bc0 <Flags_SetCollectible>:
    1bc0:	10a0000e 	beqz	a1,1bfc <Flags_SetCollectible+0x3c>
    1bc4:	28a10020 	slti	at,a1,32
    1bc8:	50200008 	beqzl	at,1bec <Flags_SetCollectible+0x2c>
    1bcc:	8c881d48 	lw	t0,7496(a0)
    1bd0:	8c8e1d44 	lw	t6,7492(a0)
    1bd4:	240f0001 	li	t7,1
    1bd8:	00afc004 	sllv	t8,t7,a1
    1bdc:	01d8c825 	or	t9,t6,t8
    1be0:	03e00008 	jr	ra
    1be4:	ac991d44 	sw	t9,7492(a0)
    1be8:	8c881d48 	lw	t0,7496(a0)
    1bec:	24090001 	li	t1,1
    1bf0:	00a95004 	sllv	t2,t1,a1
    1bf4:	010a5825 	or	t3,t0,t2
    1bf8:	ac8b1d48 	sw	t3,7496(a0)
    1bfc:	03e00008 	jr	ra
    1c00:	00000000 	nop

00001c04 <func_8002CDE4>:
    1c04:	afa40000 	sw	a0,0(sp)
    1c08:	a4a0000c 	sh	zero,12(a1)
    1c0c:	84a2000c 	lh	v0,12(a1)
    1c10:	a4a2000e 	sh	v0,14(a1)
    1c14:	a0a2000b 	sb	v0,11(a1)
    1c18:	03e00008 	jr	ra
    1c1c:	a0a2000a 	sb	v0,10(a1)

00001c20 <TitleCard_InitBossName>:
    1c20:	afa7000c 	sw	a3,12(sp)
    1c24:	00073c00 	sll	a3,a3,0x10
    1c28:	afa40000 	sw	a0,0(sp)
    1c2c:	00073c03 	sra	a3,a3,0x10
    1c30:	aca60000 	sw	a2,0(a1)
    1c34:	a4a70004 	sh	a3,4(a1)
    1c38:	87ae0012 	lh	t6,18(sp)
    1c3c:	24190050 	li	t9,80
    1c40:	a4ae0006 	sh	t6,6(a1)
    1c44:	93af0017 	lbu	t7,23(sp)
    1c48:	a0af0008 	sb	t7,8(a1)
    1c4c:	93b8001b 	lbu	t8,27(sp)
    1c50:	a0b9000a 	sb	t9,10(a1)
    1c54:	a0a0000b 	sb	zero,11(a1)
    1c58:	03e00008 	jr	ra
    1c5c:	a0b80009 	sb	t8,9(a1)

00001c60 <TitleCard_InitPlaceName>:
    1c60:	27bdffc8 	addiu	sp,sp,-56
    1c64:	3c020001 	lui	v0,0x1
    1c68:	afbf0024 	sw	ra,36(sp)
    1c6c:	afb00020 	sw	s0,32(sp)
    1c70:	afa60040 	sw	a2,64(sp)
    1c74:	afa70044 	sw	a3,68(sp)
    1c78:	00441021 	addu	v0,v0,a0
    1c7c:	8c42242c 	lw	v0,9260(v0)
    1c80:	00a08025 	move	s0,a1
    1c84:	8c4e0008 	lw	t6,8(v0)
    1c88:	afae002c 	sw	t6,44(sp)
    1c8c:	8c4f000c 	lw	t7,12(v0)
    1c90:	01eec823 	subu	t9,t7,t6
    1c94:	1320000b 	beqz	t9,1cc4 <TitleCard_InitPlaceName+0x64>
    1c98:	afb90030 	sw	t9,48(sp)
    1c9c:	2f213001 	sltiu	at,t9,12289
    1ca0:	10200008 	beqz	at,1cc4 <TitleCard_InitPlaceName+0x64>
    1ca4:	00c02025 	move	a0,a2
    1ca8:	3c070000 	lui	a3,0x0
    1cac:	24090acd 	li	t1,2765
    1cb0:	afa90010 	sw	t1,16(sp)
    1cb4:	24e700c0 	addiu	a3,a3,192
    1cb8:	01c02825 	move	a1,t6
    1cbc:	0c000000 	jal	0 <ActorShape_Init>
    1cc0:	03203025 	move	a2,t9
    1cc4:	8faa0040 	lw	t2,64(sp)
    1cc8:	240f0050 	li	t7,80
    1ccc:	ae0a0000 	sw	t2,0(s0)
    1cd0:	8fab0044 	lw	t3,68(sp)
    1cd4:	a60b0004 	sh	t3,4(s0)
    1cd8:	8fac0048 	lw	t4,72(sp)
    1cdc:	a60c0006 	sh	t4,6(s0)
    1ce0:	8fad004c 	lw	t5,76(sp)
    1ce4:	a20d0008 	sb	t5,8(s0)
    1ce8:	8fae0050 	lw	t6,80(sp)
    1cec:	a20f000a 	sb	t7,10(s0)
    1cf0:	a20e0009 	sb	t6,9(s0)
    1cf4:	8fb90054 	lw	t9,84(sp)
    1cf8:	a219000b 	sb	t9,11(s0)
    1cfc:	8fbf0024 	lw	ra,36(sp)
    1d00:	8fb00020 	lw	s0,32(sp)
    1d04:	27bd0038 	addiu	sp,sp,56
    1d08:	03e00008 	jr	ra
    1d0c:	00000000 	nop

00001d10 <TitleCard_Update>:
    1d10:	27bdffe8 	addiu	sp,sp,-24
    1d14:	afbf0014 	sw	ra,20(sp)
    1d18:	afa40018 	sw	a0,24(sp)
    1d1c:	90a3000b 	lbu	v1,11(a1)
    1d20:	00a03825 	move	a3,a1
    1d24:	14600003 	bnez	v1,1d34 <TitleCard_Update+0x24>
    1d28:	246effff 	addiu	t6,v1,-1
    1d2c:	10000003 	b	1d3c <TitleCard_Update+0x2c>
    1d30:	00001025 	move	v0,zero
    1d34:	a0ee000b 	sb	t6,11(a3)
    1d38:	31c200ff 	andi	v0,t6,0xff
    1d3c:	54400020 	bnezl	v0,1dc0 <TitleCard_Update+0xb0>
    1d40:	8fbf0014 	lw	ra,20(sp)
    1d44:	90e3000a 	lbu	v1,10(a3)
    1d48:	24e4000c 	addiu	a0,a3,12
    1d4c:	240500ff 	li	a1,255
    1d50:	14600003 	bnez	v1,1d60 <TitleCard_Update+0x50>
    1d54:	246fffff 	addiu	t7,v1,-1
    1d58:	10000003 	b	1d68 <TitleCard_Update+0x58>
    1d5c:	00001025 	move	v0,zero
    1d60:	a0ef000a 	sb	t7,10(a3)
    1d64:	31e200ff 	andi	v0,t7,0xff
    1d68:	1440000d 	bnez	v0,1da0 <TitleCard_Update+0x90>
    1d6c:	2406000a 	li	a2,10
    1d70:	24e4000c 	addiu	a0,a3,12
    1d74:	00002825 	move	a1,zero
    1d78:	2406001e 	li	a2,30
    1d7c:	0c000000 	jal	0 <ActorShape_Init>
    1d80:	afa7001c 	sw	a3,28(sp)
    1d84:	8fa7001c 	lw	a3,28(sp)
    1d88:	00002825 	move	a1,zero
    1d8c:	24060046 	li	a2,70
    1d90:	0c000000 	jal	0 <ActorShape_Init>
    1d94:	24e4000e 	addiu	a0,a3,14
    1d98:	10000009 	b	1dc0 <TitleCard_Update+0xb0>
    1d9c:	8fbf0014 	lw	ra,20(sp)
    1da0:	0c000000 	jal	0 <ActorShape_Init>
    1da4:	afa7001c 	sw	a3,28(sp)
    1da8:	8fa7001c 	lw	a3,28(sp)
    1dac:	240500ff 	li	a1,255
    1db0:	24060014 	li	a2,20
    1db4:	0c000000 	jal	0 <ActorShape_Init>
    1db8:	24e4000e 	addiu	a0,a3,14
    1dbc:	8fbf0014 	lw	ra,20(sp)
    1dc0:	27bd0018 	addiu	sp,sp,24
    1dc4:	03e00008 	jr	ra
    1dc8:	00000000 	nop

00001dcc <TitleCard_Draw>:
    1dcc:	27bdff30 	addiu	sp,sp,-208
    1dd0:	afbf0014 	sw	ra,20(sp)
    1dd4:	afa400d0 	sw	a0,208(sp)
    1dd8:	afa500d4 	sw	a1,212(sp)
    1ddc:	84af000c 	lh	t7,12(a1)
    1de0:	3c060000 	lui	a2,0x0
    1de4:	24c600d0 	addiu	a2,a2,208
    1de8:	51e00159 	beqzl	t7,2350 <TitleCard_Draw+0x584>
    1dec:	8fbf0014 	lw	ra,20(sp)
    1df0:	90aa0008 	lbu	t2,8(a1)
    1df4:	84b80004 	lh	t8,4(a1)
    1df8:	90a90009 	lbu	t1,9(a1)
    1dfc:	000a1040 	sll	v0,t2,0x1
    1e00:	0018c880 	sll	t9,t8,0x2
    1e04:	03227823 	subu	t7,t9,v0
    1e08:	afaf00c0 	sw	t7,192(sp)
    1e0c:	84b80006 	lh	t8,6(a1)
    1e10:	00097840 	sll	t7,t1,0x1
    1e14:	24070b08 	li	a3,2824
    1e18:	0018c880 	sll	t9,t8,0x2
    1e1c:	032f7023 	subu	t6,t9,t7
    1e20:	afae00b8 	sw	t6,184(sp)
    1e24:	8c850000 	lw	a1,0(a0)
    1e28:	afa20038 	sw	v0,56(sp)
    1e2c:	27a4009c 	addiu	a0,sp,156
    1e30:	afaa00cc 	sw	t2,204(sp)
    1e34:	afa900c8 	sw	t1,200(sp)
    1e38:	0c000000 	jal	0 <ActorShape_Init>
    1e3c:	afa500ac 	sw	a1,172(sp)
    1e40:	8fa900c8 	lw	t1,200(sp)
    1e44:	8faa00cc 	lw	t2,204(sp)
    1e48:	3c190000 	lui	t9,0x0
    1e4c:	93391409 	lbu	t9,5129(t9)
    1e50:	01490019 	multu	t2,t1
    1e54:	8fa800ac 	lw	t0,172(sp)
    1e58:	8fab00d4 	lw	t3,212(sp)
    1e5c:	240e1000 	li	t6,4096
    1e60:	00002812 	mflo	a1
    1e64:	28a11001 	slti	at,a1,4097
    1e68:	00000000 	nop
    1e6c:	00b90019 	multu	a1,t9
    1e70:	8fb900b8 	lw	t9,184(sp)
    1e74:	00007812 	mflo	t7
    1e78:	afaf00b0 	sw	t7,176(sp)
    1e7c:	54200011 	bnezl	at,1ec4 <TitleCard_Draw+0xf8>
    1e80:	0009c080 	sll	t8,t1,0x2
    1e84:	01ca001a 	div	zero,t6,t2
    1e88:	00004812 	mflo	t1
    1e8c:	15400002 	bnez	t2,1e98 <TitleCard_Draw+0xcc>
    1e90:	00000000 	nop
    1e94:	0007000d 	break	0x7
    1e98:	2401ffff 	li	at,-1
    1e9c:	15410004 	bne	t2,at,1eb0 <TitleCard_Draw+0xe4>
    1ea0:	3c018000 	lui	at,0x8000
    1ea4:	15c10002 	bne	t6,at,1eb0 <TitleCard_Draw+0xe4>
    1ea8:	00000000 	nop
    1eac:	0006000d 	break	0x6
    1eb0:	01490019 	multu	t2,t1
    1eb4:	00002812 	mflo	a1
	...
    1ec0:	0009c080 	sll	t8,t1,0x2
    1ec4:	03196021 	addu	t4,t8,t9
    1ec8:	afac00b4 	sw	t4,180(sp)
    1ecc:	8d0402b0 	lw	a0,688(t0)
    1ed0:	afac0030 	sw	t4,48(sp)
    1ed4:	afaa00cc 	sw	t2,204(sp)
    1ed8:	afa900c8 	sw	t1,200(sp)
    1edc:	afa800ac 	sw	t0,172(sp)
    1ee0:	0c000000 	jal	0 <ActorShape_Init>
    1ee4:	afa50034 	sw	a1,52(sp)
    1ee8:	8fa800ac 	lw	t0,172(sp)
    1eec:	8fa50034 	lw	a1,52(sp)
    1ef0:	8faa00cc 	lw	t2,204(sp)
    1ef4:	8fab00d4 	lw	t3,212(sp)
    1ef8:	8fa900c8 	lw	t1,200(sp)
    1efc:	8fac0030 	lw	t4,48(sp)
    1f00:	244f0008 	addiu	t7,v0,8
    1f04:	ad0202b0 	sw	v0,688(t0)
    1f08:	3c0efa00 	lui	t6,0xfa00
    1f0c:	ad0f02b0 	sw	t7,688(t0)
    1f10:	ac4e0000 	sw	t6,0(v0)
    1f14:	9163000f 	lbu	v1,15(t3)
    1f18:	01403825 	move	a3,t2
    1f1c:	24ed0007 	addiu	t5,a3,7
    1f20:	0003c600 	sll	t8,v1,0x18
    1f24:	0003cc00 	sll	t9,v1,0x10
    1f28:	03197825 	or	t7,t8,t9
    1f2c:	00037200 	sll	t6,v1,0x8
    1f30:	01eec025 	or	t8,t7,t6
    1f34:	916f000d 	lbu	t7,13(t3)
    1f38:	24a30001 	addiu	v1,a1,1
    1f3c:	00031843 	sra	v1,v1,0x1
    1f40:	030f7025 	or	t6,t8,t7
    1f44:	ac4e0004 	sw	t6,4(v0)
    1f48:	8d0202b0 	lw	v0,688(t0)
    1f4c:	3c18fd70 	lui	t8,0xfd70
    1f50:	2463ffff 	addiu	v1,v1,-1
    1f54:	24590008 	addiu	t9,v0,8
    1f58:	ad1902b0 	sw	t9,688(t0)
    1f5c:	ac580000 	sw	t8,0(v0)
    1f60:	8fae00b0 	lw	t6,176(sp)
    1f64:	8d6f0000 	lw	t7,0(t3)
    1f68:	000d68c3 	sra	t5,t5,0x3
    1f6c:	31ad01ff 	andi	t5,t5,0x1ff
    1f70:	01eec821 	addu	t9,t7,t6
    1f74:	ac590004 	sw	t9,4(v0)
    1f78:	8d0202b0 	lw	v0,688(t0)
    1f7c:	3c0e0700 	lui	t6,0x700
    1f80:	3c0ff570 	lui	t7,0xf570
    1f84:	24580008 	addiu	t8,v0,8
    1f88:	ad1802b0 	sw	t8,688(t0)
    1f8c:	ac4e0004 	sw	t6,4(v0)
    1f90:	ac4f0000 	sw	t7,0(v0)
    1f94:	8d0202b0 	lw	v0,688(t0)
    1f98:	3c18e600 	lui	t8,0xe600
    1f9c:	3c0ef300 	lui	t6,0xf300
    1fa0:	24590008 	addiu	t9,v0,8
    1fa4:	ad1902b0 	sw	t9,688(t0)
    1fa8:	ac400004 	sw	zero,4(v0)
    1fac:	ac580000 	sw	t8,0(v0)
    1fb0:	8d0602b0 	lw	a2,688(t0)
    1fb4:	286107ff 	slti	at,v1,2047
    1fb8:	000d6a40 	sll	t5,t5,0x9
    1fbc:	24cf0008 	addiu	t7,a2,8
    1fc0:	ad0f02b0 	sw	t7,688(t0)
    1fc4:	10200003 	beqz	at,1fd4 <TitleCard_Draw+0x208>
    1fc8:	acce0000 	sw	t6,0(a2)
    1fcc:	10000002 	b	1fd8 <TitleCard_Draw+0x20c>
    1fd0:	00602025 	move	a0,v1
    1fd4:	240407ff 	li	a0,2047
    1fd8:	04e10003 	bgez	a3,1fe8 <TitleCard_Draw+0x21c>
    1fdc:	000728c3 	sra	a1,a3,0x3
    1fe0:	24e10007 	addiu	at,a3,7
    1fe4:	000128c3 	sra	a1,at,0x3
    1fe8:	1ca00003 	bgtz	a1,1ff8 <TitleCard_Draw+0x22c>
    1fec:	2547ffff 	addiu	a3,t2,-1
    1ff0:	10000002 	b	1ffc <TitleCard_Draw+0x230>
    1ff4:	24030001 	li	v1,1
    1ff8:	00a01825 	move	v1,a1
    1ffc:	1ca00003 	bgtz	a1,200c <TitleCard_Draw+0x240>
    2000:	247907ff 	addiu	t9,v1,2047
    2004:	10000002 	b	2010 <TitleCard_Draw+0x244>
    2008:	24020001 	li	v0,1
    200c:	00a01025 	move	v0,a1
    2010:	0322001a 	div	zero,t9,v0
    2014:	14400002 	bnez	v0,2020 <TitleCard_Draw+0x254>
    2018:	00000000 	nop
    201c:	0007000d 	break	0x7
    2020:	2401ffff 	li	at,-1
    2024:	14410004 	bne	v0,at,2038 <TitleCard_Draw+0x26c>
    2028:	3c018000 	lui	at,0x8000
    202c:	17210002 	bne	t9,at,2038 <TitleCard_Draw+0x26c>
    2030:	00000000 	nop
    2034:	0006000d 	break	0x6
    2038:	0000c012 	mflo	t8
    203c:	330f0fff 	andi	t7,t8,0xfff
    2040:	3c010700 	lui	at,0x700
    2044:	30990fff 	andi	t9,a0,0xfff
    2048:	0019c300 	sll	t8,t9,0xc
    204c:	01e17025 	or	t6,t7,at
    2050:	01d87825 	or	t7,t6,t8
    2054:	accf0004 	sw	t7,4(a2)
    2058:	8d0202b0 	lw	v0,688(t0)
    205c:	3c0ee700 	lui	t6,0xe700
    2060:	3c01f568 	lui	at,0xf568
    2064:	24590008 	addiu	t9,v0,8
    2068:	ad1902b0 	sw	t9,688(t0)
    206c:	ac400004 	sw	zero,4(v0)
    2070:	ac4e0000 	sw	t6,0(v0)
    2074:	8d0202b0 	lw	v0,688(t0)
    2078:	01a16825 	or	t5,t5,at
    207c:	252effff 	addiu	t6,t1,-1
    2080:	24580008 	addiu	t8,v0,8
    2084:	ad1802b0 	sw	t8,688(t0)
    2088:	ac400004 	sw	zero,4(v0)
    208c:	ac4d0000 	sw	t5,0(v0)
    2090:	8d0202b0 	lw	v0,688(t0)
    2094:	00073880 	sll	a3,a3,0x2
    2098:	30e70fff 	andi	a3,a3,0xfff
    209c:	244f0008 	addiu	t7,v0,8
    20a0:	ad0f02b0 	sw	t7,688(t0)
    20a4:	000ec080 	sll	t8,t6,0x2
    20a8:	3c19f200 	lui	t9,0xf200
    20ac:	330f0fff 	andi	t7,t8,0xfff
    20b0:	00073b00 	sll	a3,a3,0xc
    20b4:	ac590000 	sw	t9,0(v0)
    20b8:	00efc825 	or	t9,a3,t7
    20bc:	ac590004 	sw	t9,4(v0)
    20c0:	8d0202b0 	lw	v0,688(t0)
    20c4:	8fa600c0 	lw	a2,192(sp)
    20c8:	2599ffff 	addiu	t9,t4,-1
    20cc:	244e0008 	addiu	t6,v0,8
    20d0:	ad0e02b0 	sw	t6,688(t0)
    20d4:	8fb80038 	lw	t8,56(sp)
    20d8:	3c01e400 	lui	at,0xe400
    20dc:	332e0fff 	andi	t6,t9,0xfff
    20e0:	00187840 	sll	t7,t8,0x1
    20e4:	01e62021 	addu	a0,t7,a2
    20e8:	2484fffc 	addiu	a0,a0,-4
    20ec:	30840fff 	andi	a0,a0,0xfff
    20f0:	00042300 	sll	a0,a0,0xc
    20f4:	00812025 	or	a0,a0,at
    20f8:	008ec025 	or	t8,a0,t6
    20fc:	ac580000 	sw	t8,0(v0)
    2100:	8faf00b8 	lw	t7,184(sp)
    2104:	30df0fff 	andi	ra,a2,0xfff
    2108:	001ffb00 	sll	ra,ra,0xc
    210c:	31f90fff 	andi	t9,t7,0xfff
    2110:	03f97025 	or	t6,ra,t9
    2114:	ac4e0004 	sw	t6,4(v0)
    2118:	afa4001c 	sw	a0,28(sp)
    211c:	8d0202b0 	lw	v0,688(t0)
    2120:	3c0ce100 	lui	t4,0xe100
    2124:	3c0e0400 	lui	t6,0x400
    2128:	24580008 	addiu	t8,v0,8
    212c:	ad1802b0 	sw	t8,688(t0)
    2130:	ac400004 	sw	zero,4(v0)
    2134:	ac4c0000 	sw	t4,0(v0)
    2138:	8d0202b0 	lw	v0,688(t0)
    213c:	35ce0400 	ori	t6,t6,0x400
    2140:	3c19f100 	lui	t9,0xf100
    2144:	244f0008 	addiu	t7,v0,8
    2148:	ad0f02b0 	sw	t7,688(t0)
    214c:	ac4e0004 	sw	t6,4(v0)
    2150:	ac590000 	sw	t9,0(v0)
    2154:	91780009 	lbu	t8,9(t3)
    2158:	00401825 	move	v1,v0
    215c:	03094823 	subu	t1,t8,t1
    2160:	59200074 	blezl	t1,2334 <TitleCard_Draw+0x568>
    2164:	8fb800d0 	lw	t8,208(sp)
    2168:	8d0202b0 	lw	v0,688(t0)
    216c:	3c19fd70 	lui	t9,0xfd70
    2170:	01490019 	multu	t2,t1
    2174:	244f0008 	addiu	t7,v0,8
    2178:	ad0f02b0 	sw	t7,688(t0)
    217c:	ac590000 	sw	t9,0(v0)
    2180:	8fb800b0 	lw	t8,176(sp)
    2184:	8d6e0000 	lw	t6,0(t3)
    2188:	240407ff 	li	a0,2047
    218c:	01d87821 	addu	t7,t6,t8
    2190:	25f91000 	addiu	t9,t7,4096
    2194:	ac590004 	sw	t9,4(v0)
    2198:	8d0202b0 	lw	v0,688(t0)
    219c:	3c0f0700 	lui	t7,0x700
    21a0:	3c18f570 	lui	t8,0xf570
    21a4:	244e0008 	addiu	t6,v0,8
    21a8:	ad0e02b0 	sw	t6,688(t0)
    21ac:	ac4f0004 	sw	t7,4(v0)
    21b0:	ac580000 	sw	t8,0(v0)
    21b4:	8d0202b0 	lw	v0,688(t0)
    21b8:	3c0ee600 	lui	t6,0xe600
    21bc:	00001812 	mflo	v1
    21c0:	24590008 	addiu	t9,v0,8
    21c4:	ad1902b0 	sw	t9,688(t0)
    21c8:	ac400004 	sw	zero,4(v0)
    21cc:	ac4e0000 	sw	t6,0(v0)
    21d0:	8d0602b0 	lw	a2,688(t0)
    21d4:	24630001 	addiu	v1,v1,1
    21d8:	00031843 	sra	v1,v1,0x1
    21dc:	2463ffff 	addiu	v1,v1,-1
    21e0:	24d80008 	addiu	t8,a2,8
    21e4:	ad1802b0 	sw	t8,688(t0)
    21e8:	286107ff 	slti	at,v1,2047
    21ec:	3c0ff300 	lui	t7,0xf300
    21f0:	10200003 	beqz	at,2200 <TitleCard_Draw+0x434>
    21f4:	accf0000 	sw	t7,0(a2)
    21f8:	10000001 	b	2200 <TitleCard_Draw+0x434>
    21fc:	00602025 	move	a0,v1
    2200:	1ca00003 	bgtz	a1,2210 <TitleCard_Draw+0x444>
    2204:	00a01825 	move	v1,a1
    2208:	10000001 	b	2210 <TitleCard_Draw+0x444>
    220c:	24030001 	li	v1,1
    2210:	1ca00003 	bgtz	a1,2220 <TitleCard_Draw+0x454>
    2214:	247907ff 	addiu	t9,v1,2047
    2218:	10000002 	b	2224 <TitleCard_Draw+0x458>
    221c:	24020001 	li	v0,1
    2220:	00a01025 	move	v0,a1
    2224:	0322001a 	div	zero,t9,v0
    2228:	14400002 	bnez	v0,2234 <TitleCard_Draw+0x468>
    222c:	00000000 	nop
    2230:	0007000d 	break	0x7
    2234:	2401ffff 	li	at,-1
    2238:	14410004 	bne	v0,at,224c <TitleCard_Draw+0x480>
    223c:	3c018000 	lui	at,0x8000
    2240:	17210002 	bne	t9,at,224c <TitleCard_Draw+0x480>
    2244:	00000000 	nop
    2248:	0006000d 	break	0x6
    224c:	00007012 	mflo	t6
    2250:	31d80fff 	andi	t8,t6,0xfff
    2254:	3c010700 	lui	at,0x700
    2258:	30990fff 	andi	t9,a0,0xfff
    225c:	00197300 	sll	t6,t9,0xc
    2260:	03017825 	or	t7,t8,at
    2264:	01eec025 	or	t8,t7,t6
    2268:	acd80004 	sw	t8,4(a2)
    226c:	8d0202b0 	lw	v0,688(t0)
    2270:	3c0fe700 	lui	t7,0xe700
    2274:	24590008 	addiu	t9,v0,8
    2278:	ad1902b0 	sw	t9,688(t0)
    227c:	ac400004 	sw	zero,4(v0)
    2280:	ac4f0000 	sw	t7,0(v0)
    2284:	8d0202b0 	lw	v0,688(t0)
    2288:	252fffff 	addiu	t7,t1,-1
    228c:	3c19f200 	lui	t9,0xf200
    2290:	244e0008 	addiu	t6,v0,8
    2294:	ad0e02b0 	sw	t6,688(t0)
    2298:	ac400004 	sw	zero,4(v0)
    229c:	ac4d0000 	sw	t5,0(v0)
    22a0:	8d0202b0 	lw	v0,688(t0)
    22a4:	000f7080 	sll	t6,t7,0x2
    22a8:	24580008 	addiu	t8,v0,8
    22ac:	ad1802b0 	sw	t8,688(t0)
    22b0:	31d80fff 	andi	t8,t6,0xfff
    22b4:	ac590000 	sw	t9,0(v0)
    22b8:	00f8c825 	or	t9,a3,t8
    22bc:	ac590004 	sw	t9,4(v0)
    22c0:	8d0202b0 	lw	v0,688(t0)
    22c4:	8fa400b4 	lw	a0,180(sp)
    22c8:	0009c080 	sll	t8,t1,0x2
    22cc:	244f0008 	addiu	t7,v0,8
    22d0:	ad0f02b0 	sw	t7,688(t0)
    22d4:	0098c821 	addu	t9,a0,t8
    22d8:	8fae001c 	lw	t6,28(sp)
    22dc:	272fffff 	addiu	t7,t9,-1
    22e0:	31f80fff 	andi	t8,t7,0xfff
    22e4:	308f0fff 	andi	t7,a0,0xfff
    22e8:	01d8c825 	or	t9,t6,t8
    22ec:	03ef7025 	or	t6,ra,t7
    22f0:	ac4e0004 	sw	t6,4(v0)
    22f4:	ac590000 	sw	t9,0(v0)
    22f8:	8d0202b0 	lw	v0,688(t0)
    22fc:	3c0e0400 	lui	t6,0x400
    2300:	35ce0400 	ori	t6,t6,0x400
    2304:	24580008 	addiu	t8,v0,8
    2308:	ad1802b0 	sw	t8,688(t0)
    230c:	ac400004 	sw	zero,4(v0)
    2310:	ac4c0000 	sw	t4,0(v0)
    2314:	8d0202b0 	lw	v0,688(t0)
    2318:	3c0ff100 	lui	t7,0xf100
    231c:	24590008 	addiu	t9,v0,8
    2320:	ad1902b0 	sw	t9,688(t0)
    2324:	ac4e0004 	sw	t6,4(v0)
    2328:	ac4f0000 	sw	t7,0(v0)
    232c:	00401825 	move	v1,v0
    2330:	8fb800d0 	lw	t8,208(sp)
    2334:	3c060000 	lui	a2,0x0
    2338:	24c600e0 	addiu	a2,a2,224
    233c:	27a4009c 	addiu	a0,sp,156
    2340:	24070b40 	li	a3,2880
    2344:	0c000000 	jal	0 <ActorShape_Init>
    2348:	8f050000 	lw	a1,0(t8)
    234c:	8fbf0014 	lw	ra,20(sp)
    2350:	27bd00d0 	addiu	sp,sp,208
    2354:	03e00008 	jr	ra
    2358:	00000000 	nop

0000235c <func_8002D53C>:
    235c:	908e1d57 	lbu	t6,7511(a0)
    2360:	00001025 	move	v0,zero
    2364:	55c00005 	bnezl	t6,237c <func_8002D53C+0x20>
    2368:	a0a0000a 	sb	zero,10(a1)
    236c:	848f1d58 	lh	t7,7512(a0)
    2370:	51e00005 	beqzl	t7,2388 <func_8002D53C+0x2c>
    2374:	24020001 	li	v0,1
    2378:	a0a0000a 	sb	zero,10(a1)
    237c:	03e00008 	jr	ra
    2380:	a0a0000b 	sb	zero,11(a1)
    2384:	24020001 	li	v0,1
    2388:	03e00008 	jr	ra
    238c:	00000000 	nop

00002390 <Actor_Kill>:
    2390:	8c8e0004 	lw	t6,4(a0)
    2394:	2401fffe 	li	at,-2
    2398:	ac800134 	sw	zero,308(a0)
    239c:	01c17824 	and	t7,t6,at
    23a0:	ac800130 	sw	zero,304(a0)
    23a4:	03e00008 	jr	ra
    23a8:	ac8f0004 	sw	t7,4(a0)

000023ac <Actor_InitPosRot>:
    23ac:	8c8f0008 	lw	t7,8(a0)
    23b0:	8c8e000c 	lw	t6,12(a0)
    23b4:	ac8f0024 	sw	t7,36(a0)
    23b8:	8c8f0010 	lw	t7,16(a0)
    23bc:	ac8e0028 	sw	t6,40(a0)
    23c0:	8c8e0014 	lw	t6,20(a0)
    23c4:	ac8f002c 	sw	t7,44(a0)
    23c8:	8c8f0018 	lw	t7,24(a0)
    23cc:	ac8e0030 	sw	t6,48(a0)
    23d0:	03e00008 	jr	ra
    23d4:	ac8f0034 	sw	t7,52(a0)

000023d8 <Actor_SetHeight>:
    23d8:	44856000 	mtc1	a1,$f12
    23dc:	c4860028 	lwc1	$f6,40(a0)
    23e0:	c4840024 	lwc1	$f4,36(a0)
    23e4:	c48a002c 	lwc1	$f10,44(a0)
    23e8:	460c3200 	add.s	$f8,$f6,$f12
    23ec:	848e0030 	lh	t6,48(a0)
    23f0:	848f0032 	lh	t7,50(a0)
    23f4:	84980034 	lh	t8,52(a0)
    23f8:	e488003c 	swc1	$f8,60(a0)
    23fc:	e4840038 	swc1	$f4,56(a0)
    2400:	e48a0040 	swc1	$f10,64(a0)
    2404:	a48e0044 	sh	t6,68(a0)
    2408:	a48f0046 	sh	t7,70(a0)
    240c:	03e00008 	jr	ra
    2410:	a4980048 	sh	t8,72(a0)

00002414 <func_8002D5F4>:
    2414:	888f00b4 	lwl	t7,180(a0)
    2418:	988f00b7 	lwr	t7,183(a0)
    241c:	a88f0030 	swl	t7,48(a0)
    2420:	b88f0033 	swr	t7,51(a0)
    2424:	948f00b8 	lhu	t7,184(a0)
    2428:	03e00008 	jr	ra
    242c:	a48f0034 	sh	t7,52(a0)

00002430 <func_8002D610>:
    2430:	888f0030 	lwl	t7,48(a0)
    2434:	988f0033 	lwr	t7,51(a0)
    2438:	a88f00b4 	swl	t7,180(a0)
    243c:	b88f00b7 	swr	t7,183(a0)
    2440:	948f0034 	lhu	t7,52(a0)
    2444:	03e00008 	jr	ra
    2448:	a48f00b8 	sh	t7,184(a0)

0000244c <Actor_SetScale>:
    244c:	44856000 	mtc1	a1,$f12
    2450:	00000000 	nop
    2454:	e48c0058 	swc1	$f12,88(a0)
    2458:	e48c0054 	swc1	$f12,84(a0)
    245c:	03e00008 	jr	ra
    2460:	e48c0050 	swc1	$f12,80(a0)

00002464 <Actor_SetObjectDependency>:
    2464:	80ae001e 	lb	t6,30(a1)
    2468:	3c190001 	lui	t9,0x1
    246c:	3c018000 	lui	at,0x8000
    2470:	000e7900 	sll	t7,t6,0x4
    2474:	01ee7821 	addu	t7,t7,t6
    2478:	000f7880 	sll	t7,t7,0x2
    247c:	008fc021 	addu	t8,a0,t7
    2480:	0338c821 	addu	t9,t9,t8
    2484:	8f3917b4 	lw	t9,6068(t9)
    2488:	03214021 	addu	t0,t9,at
    248c:	3c010000 	lui	at,0x0
    2490:	03e00008 	jr	ra
    2494:	ac280018 	sw	t0,24(at)

00002498 <Actor_Init>:
    2498:	27bdffe0 	addiu	sp,sp,-32
    249c:	afbf001c 	sw	ra,28(sp)
    24a0:	afb00018 	sw	s0,24(sp)
    24a4:	00808025 	move	s0,a0
    24a8:	0c000000 	jal	0 <ActorShape_Init>
    24ac:	afa50024 	sw	a1,36(sp)
    24b0:	0c000000 	jal	0 <ActorShape_Init>
    24b4:	02002025 	move	a0,s0
    24b8:	02002025 	move	a0,s0
    24bc:	0c000000 	jal	0 <ActorShape_Init>
    24c0:	24050000 	li	a1,0
    24c4:	26040100 	addiu	a0,s0,256
    24c8:	0c000000 	jal	0 <ActorShape_Init>
    24cc:	26050024 	addiu	a1,s0,36
    24d0:	3c053c23 	lui	a1,0x3c23
    24d4:	34a5d70a 	ori	a1,a1,0xd70a
    24d8:	0c000000 	jal	0 <ActorShape_Init>
    24dc:	02002025 	move	a0,s0
    24e0:	3c01c1a0 	lui	at,0xc1a0
    24e4:	44812000 	mtc1	at,$f4
    24e8:	240e0003 	li	t6,3
    24ec:	a20e001f 	sb	t6,31(s0)
    24f0:	3c010000 	lui	at,0x0
    24f4:	e6040070 	swc1	$f4,112(s0)
    24f8:	c4260a70 	lwc1	$f6,2672(at)
    24fc:	3c01447a 	lui	at,0x447a
    2500:	44814000 	mtc1	at,$f8
    2504:	3c0143af 	lui	at,0x43af
    2508:	44815000 	mtc1	at,$f10
    250c:	3c01442f 	lui	at,0x442f
    2510:	44818000 	mtc1	at,$f16
    2514:	240f00ff 	li	t7,255
    2518:	a20f0117 	sb	t7,279(s0)
    251c:	26040098 	addiu	a0,s0,152
    2520:	e606008c 	swc1	$f6,140(s0)
    2524:	e60800f4 	swc1	$f8,244(s0)
    2528:	e60a00f8 	swc1	$f10,248(s0)
    252c:	0c000000 	jal	0 <ActorShape_Init>
    2530:	e61000fc 	swc1	$f16,252(s0)
    2534:	44800000 	mtc1	zero,$f0
    2538:	24180032 	li	t8,50
    253c:	a218007d 	sb	t8,125(s0)
    2540:	44050000 	mfc1	a1,$f0
    2544:	44070000 	mfc1	a3,$f0
    2548:	260400b4 	addiu	a0,s0,180
    254c:	0c000000 	jal	0 <ActorShape_Init>
    2550:	00003025 	move	a2,zero
    2554:	8fa40024 	lw	a0,36(sp)
    2558:	3c010001 	lui	at,0x1
    255c:	342117a4 	ori	at,at,0x17a4
    2560:	8205001e 	lb	a1,30(s0)
    2564:	0c000000 	jal	0 <ActorShape_Init>
    2568:	00812021 	addu	a0,a0,at
    256c:	10400009 	beqz	v0,2594 <Actor_Init+0xfc>
    2570:	8fa40024 	lw	a0,36(sp)
    2574:	0c000000 	jal	0 <ActorShape_Init>
    2578:	02002825 	move	a1,s0
    257c:	8e190128 	lw	t9,296(s0)
    2580:	02002025 	move	a0,s0
    2584:	8fa50024 	lw	a1,36(sp)
    2588:	0320f809 	jalr	t9
    258c:	00000000 	nop
    2590:	ae000128 	sw	zero,296(s0)
    2594:	8fbf001c 	lw	ra,28(sp)
    2598:	8fb00018 	lw	s0,24(sp)
    259c:	27bd0020 	addiu	sp,sp,32
    25a0:	03e00008 	jr	ra
    25a4:	00000000 	nop

000025a8 <Actor_Destroy>:
    25a8:	27bdffe8 	addiu	sp,sp,-24
    25ac:	afbf0014 	sw	ra,20(sp)
    25b0:	8c82012c 	lw	v0,300(a0)
    25b4:	50400007 	beqzl	v0,25d4 <Actor_Destroy+0x2c>
    25b8:	8c820138 	lw	v0,312(a0)
    25bc:	0040f809 	jalr	v0
    25c0:	afa40018 	sw	a0,24(sp)
    25c4:	8fa40018 	lw	a0,24(sp)
    25c8:	1000000c 	b	25fc <Actor_Destroy+0x54>
    25cc:	ac80012c 	sw	zero,300(a0)
    25d0:	8c820138 	lw	v0,312(a0)
    25d4:	3c050000 	lui	a1,0x0
    25d8:	24a500f0 	addiu	a1,a1,240
    25dc:	8c430018 	lw	v1,24(v0)
    25e0:	3c040000 	lui	a0,0x0
    25e4:	10600003 	beqz	v1,25f4 <Actor_Destroy+0x4c>
    25e8:	00000000 	nop
    25ec:	10000001 	b	25f4 <Actor_Destroy+0x4c>
    25f0:	00602825 	move	a1,v1
    25f4:	0c000000 	jal	0 <ActorShape_Init>
    25f8:	248400f4 	addiu	a0,a0,244
    25fc:	8fbf0014 	lw	ra,20(sp)
    2600:	27bd0018 	addiu	sp,sp,24
    2604:	03e00008 	jr	ra
    2608:	00000000 	nop

0000260c <func_8002D7EC>:
    260c:	3c0e0000 	lui	t6,0x0
    2610:	8dce0000 	lw	t6,0(t6)
    2614:	3c013f00 	lui	at,0x3f00
    2618:	44814000 	mtc1	at,$f8
    261c:	85cf0110 	lh	t7,272(t6)
    2620:	c48a005c 	lwc1	$f10,92(a0)
    2624:	c492009c 	lwc1	$f18,156(a0)
    2628:	448f2000 	mtc1	t7,$f4
    262c:	00000000 	nop
    2630:	468021a0 	cvt.s.w	$f6,$f4
    2634:	46083002 	mul.s	$f0,$f6,$f8
    2638:	c4860024 	lwc1	$f6,36(a0)
    263c:	46005402 	mul.s	$f16,$f10,$f0
    2640:	c48a0060 	lwc1	$f10,96(a0)
    2644:	46128100 	add.s	$f4,$f16,$f18
    2648:	46005402 	mul.s	$f16,$f10,$f0
    264c:	c49200a0 	lwc1	$f18,160(a0)
    2650:	c48a0064 	lwc1	$f10,100(a0)
    2654:	46043200 	add.s	$f8,$f6,$f4
    2658:	c4840028 	lwc1	$f4,40(a0)
    265c:	46128180 	add.s	$f6,$f16,$f18
    2660:	46005402 	mul.s	$f16,$f10,$f0
    2664:	c49200a4 	lwc1	$f18,164(a0)
    2668:	e4880024 	swc1	$f8,36(a0)
    266c:	46062200 	add.s	$f8,$f4,$f6
    2670:	c486002c 	lwc1	$f6,44(a0)
    2674:	46128100 	add.s	$f4,$f16,$f18
    2678:	e4880028 	swc1	$f8,40(a0)
    267c:	46043200 	add.s	$f8,$f6,$f4
    2680:	03e00008 	jr	ra
    2684:	e488002c 	swc1	$f8,44(a0)

00002688 <func_8002D868>:
    2688:	27bdffe8 	addiu	sp,sp,-24
    268c:	afbf0014 	sw	ra,20(sp)
    2690:	00802825 	move	a1,a0
    2694:	84840032 	lh	a0,50(a0)
    2698:	0c000000 	jal	0 <ActorShape_Init>
    269c:	afa50018 	sw	a1,24(sp)
    26a0:	8fa50018 	lw	a1,24(sp)
    26a4:	c4a40068 	lwc1	$f4,104(a1)
    26a8:	84a40032 	lh	a0,50(a1)
    26ac:	46040182 	mul.s	$f6,$f0,$f4
    26b0:	0c000000 	jal	0 <ActorShape_Init>
    26b4:	e4a6005c 	swc1	$f6,92(a1)
    26b8:	8fa50018 	lw	a1,24(sp)
    26bc:	c4b00060 	lwc1	$f16,96(a1)
    26c0:	c4b2006c 	lwc1	$f18,108(a1)
    26c4:	c4a80068 	lwc1	$f8,104(a1)
    26c8:	c4a20070 	lwc1	$f2,112(a1)
    26cc:	46128100 	add.s	$f4,$f16,$f18
    26d0:	46080282 	mul.s	$f10,$f0,$f8
    26d4:	e4a40060 	swc1	$f4,96(a1)
    26d8:	c4a60060 	lwc1	$f6,96(a1)
    26dc:	4602303c 	c.lt.s	$f6,$f2
    26e0:	e4aa0064 	swc1	$f10,100(a1)
    26e4:	45020003 	bc1fl	26f4 <func_8002D868+0x6c>
    26e8:	8fbf0014 	lw	ra,20(sp)
    26ec:	e4a20060 	swc1	$f2,96(a1)
    26f0:	8fbf0014 	lw	ra,20(sp)
    26f4:	27bd0018 	addiu	sp,sp,24
    26f8:	03e00008 	jr	ra
    26fc:	00000000 	nop

00002700 <Actor_MoveForward>:
    2700:	27bdffe8 	addiu	sp,sp,-24
    2704:	afbf0014 	sw	ra,20(sp)
    2708:	0c000000 	jal	0 <ActorShape_Init>
    270c:	afa40018 	sw	a0,24(sp)
    2710:	0c000000 	jal	0 <ActorShape_Init>
    2714:	8fa40018 	lw	a0,24(sp)
    2718:	8fbf0014 	lw	ra,20(sp)
    271c:	27bd0018 	addiu	sp,sp,24
    2720:	03e00008 	jr	ra
    2724:	00000000 	nop

00002728 <func_8002D908>:
    2728:	27bdffd8 	addiu	sp,sp,-40
    272c:	afb00018 	sw	s0,24(sp)
    2730:	00808025 	move	s0,a0
    2734:	afbf001c 	sw	ra,28(sp)
    2738:	0c000000 	jal	0 <ActorShape_Init>
    273c:	84840030 	lh	a0,48(a0)
    2740:	c6040068 	lwc1	$f4,104(s0)
    2744:	46040182 	mul.s	$f6,$f0,$f4
    2748:	e7a60024 	swc1	$f6,36(sp)
    274c:	0c000000 	jal	0 <ActorShape_Init>
    2750:	86040032 	lh	a0,50(s0)
    2754:	c7a80024 	lwc1	$f8,36(sp)
    2758:	86040030 	lh	a0,48(s0)
    275c:	46080282 	mul.s	$f10,$f0,$f8
    2760:	0c000000 	jal	0 <ActorShape_Init>
    2764:	e60a005c 	swc1	$f10,92(s0)
    2768:	c6100068 	lwc1	$f16,104(s0)
    276c:	86040032 	lh	a0,50(s0)
    2770:	46100482 	mul.s	$f18,$f0,$f16
    2774:	0c000000 	jal	0 <ActorShape_Init>
    2778:	e6120060 	swc1	$f18,96(s0)
    277c:	c7a40024 	lwc1	$f4,36(sp)
    2780:	46040182 	mul.s	$f6,$f0,$f4
    2784:	e6060064 	swc1	$f6,100(s0)
    2788:	8fbf001c 	lw	ra,28(sp)
    278c:	8fb00018 	lw	s0,24(sp)
    2790:	27bd0028 	addiu	sp,sp,40
    2794:	03e00008 	jr	ra
    2798:	00000000 	nop

0000279c <func_8002D97C>:
    279c:	27bdffe8 	addiu	sp,sp,-24
    27a0:	afbf0014 	sw	ra,20(sp)
    27a4:	0c000000 	jal	0 <ActorShape_Init>
    27a8:	afa40018 	sw	a0,24(sp)
    27ac:	0c000000 	jal	0 <ActorShape_Init>
    27b0:	8fa40018 	lw	a0,24(sp)
    27b4:	8fbf0014 	lw	ra,20(sp)
    27b8:	27bd0018 	addiu	sp,sp,24
    27bc:	03e00008 	jr	ra
    27c0:	00000000 	nop

000027c4 <func_8002D9A4>:
    27c4:	27bdffe8 	addiu	sp,sp,-24
    27c8:	afbf0014 	sw	ra,20(sp)
    27cc:	afa40018 	sw	a0,24(sp)
    27d0:	afa5001c 	sw	a1,28(sp)
    27d4:	0c000000 	jal	0 <ActorShape_Init>
    27d8:	84840030 	lh	a0,48(a0)
    27dc:	c7a4001c 	lwc1	$f4,28(sp)
    27e0:	8fa20018 	lw	v0,24(sp)
    27e4:	46040182 	mul.s	$f6,$f0,$f4
    27e8:	84440030 	lh	a0,48(v0)
    27ec:	0c000000 	jal	0 <ActorShape_Init>
    27f0:	e4460068 	swc1	$f6,104(v0)
    27f4:	c7aa001c 	lwc1	$f10,28(sp)
    27f8:	46000207 	neg.s	$f8,$f0
    27fc:	8faf0018 	lw	t7,24(sp)
    2800:	460a4402 	mul.s	$f16,$f8,$f10
    2804:	e5f00060 	swc1	$f16,96(t7)
    2808:	8fbf0014 	lw	ra,20(sp)
    280c:	27bd0018 	addiu	sp,sp,24
    2810:	03e00008 	jr	ra
    2814:	00000000 	nop

00002818 <func_8002D9F8>:
    2818:	27bdffd8 	addiu	sp,sp,-40
    281c:	00803825 	move	a3,a0
    2820:	afbf0014 	sw	ra,20(sp)
    2824:	afa5002c 	sw	a1,44(sp)
    2828:	84e600b6 	lh	a2,182(a3)
    282c:	00a02025 	move	a0,a1
    2830:	27a5001c 	addiu	a1,sp,28
    2834:	0c000000 	jal	0 <ActorShape_Init>
    2838:	afa70028 	sw	a3,40(sp)
    283c:	8fa70028 	lw	a3,40(sp)
    2840:	c7a4001c 	lwc1	$f4,28(sp)
    2844:	c4e60050 	lwc1	$f6,80(a3)
    2848:	c4ea0024 	lwc1	$f10,36(a3)
    284c:	46062202 	mul.s	$f8,$f4,$f6
    2850:	c4e40054 	lwc1	$f4,84(a3)
    2854:	46085400 	add.s	$f16,$f10,$f8
    2858:	c4ea0028 	lwc1	$f10,40(a3)
    285c:	e4f00024 	swc1	$f16,36(a3)
    2860:	c7b20020 	lwc1	$f18,32(sp)
    2864:	46049182 	mul.s	$f6,$f18,$f4
    2868:	c4f20058 	lwc1	$f18,88(a3)
    286c:	46065200 	add.s	$f8,$f10,$f6
    2870:	c4ea002c 	lwc1	$f10,44(a3)
    2874:	e4e80028 	swc1	$f8,40(a3)
    2878:	c7b00024 	lwc1	$f16,36(sp)
    287c:	46128102 	mul.s	$f4,$f16,$f18
    2880:	46045180 	add.s	$f6,$f10,$f4
    2884:	e4e6002c 	swc1	$f6,44(a3)
    2888:	8fbf0014 	lw	ra,20(sp)
    288c:	27bd0028 	addiu	sp,sp,40
    2890:	03e00008 	jr	ra
    2894:	00000000 	nop

00002898 <func_8002DA78>:
    2898:	27bdffe8 	addiu	sp,sp,-24
    289c:	afbf0014 	sw	ra,20(sp)
    28a0:	24840024 	addiu	a0,a0,36
    28a4:	0c000000 	jal	0 <ActorShape_Init>
    28a8:	24a50024 	addiu	a1,a1,36
    28ac:	8fbf0014 	lw	ra,20(sp)
    28b0:	27bd0018 	addiu	sp,sp,24
    28b4:	03e00008 	jr	ra
    28b8:	00000000 	nop

000028bc <func_8002DA9C>:
    28bc:	27bdffe8 	addiu	sp,sp,-24
    28c0:	afbf0014 	sw	ra,20(sp)
    28c4:	24840038 	addiu	a0,a0,56
    28c8:	0c000000 	jal	0 <ActorShape_Init>
    28cc:	24a50038 	addiu	a1,a1,56
    28d0:	8fbf0014 	lw	ra,20(sp)
    28d4:	27bd0018 	addiu	sp,sp,24
    28d8:	03e00008 	jr	ra
    28dc:	00000000 	nop

000028e0 <func_8002DAC0>:
    28e0:	27bdffe8 	addiu	sp,sp,-24
    28e4:	afbf0014 	sw	ra,20(sp)
    28e8:	0c000000 	jal	0 <ActorShape_Init>
    28ec:	24840024 	addiu	a0,a0,36
    28f0:	8fbf0014 	lw	ra,20(sp)
    28f4:	27bd0018 	addiu	sp,sp,24
    28f8:	03e00008 	jr	ra
    28fc:	00000000 	nop

00002900 <func_8002DAE0>:
    2900:	27bdffe8 	addiu	sp,sp,-24
    2904:	afbf0014 	sw	ra,20(sp)
    2908:	24840024 	addiu	a0,a0,36
    290c:	0c000000 	jal	0 <ActorShape_Init>
    2910:	24a50024 	addiu	a1,a1,36
    2914:	8fbf0014 	lw	ra,20(sp)
    2918:	27bd0018 	addiu	sp,sp,24
    291c:	03e00008 	jr	ra
    2920:	00000000 	nop

00002924 <func_8002DB04>:
    2924:	27bdffe8 	addiu	sp,sp,-24
    2928:	afbf0014 	sw	ra,20(sp)
    292c:	24840038 	addiu	a0,a0,56
    2930:	0c000000 	jal	0 <ActorShape_Init>
    2934:	24a50038 	addiu	a1,a1,56
    2938:	8fbf0014 	lw	ra,20(sp)
    293c:	27bd0018 	addiu	sp,sp,24
    2940:	03e00008 	jr	ra
    2944:	00000000 	nop

00002948 <func_8002DB28>:
    2948:	27bdffe8 	addiu	sp,sp,-24
    294c:	afbf0014 	sw	ra,20(sp)
    2950:	0c000000 	jal	0 <ActorShape_Init>
    2954:	24840024 	addiu	a0,a0,36
    2958:	8fbf0014 	lw	ra,20(sp)
    295c:	27bd0018 	addiu	sp,sp,24
    2960:	03e00008 	jr	ra
    2964:	00000000 	nop

00002968 <func_8002DB48>:
    2968:	27bdffe8 	addiu	sp,sp,-24
    296c:	afbf0014 	sw	ra,20(sp)
    2970:	24840024 	addiu	a0,a0,36
    2974:	0c000000 	jal	0 <ActorShape_Init>
    2978:	24a50024 	addiu	a1,a1,36
    297c:	8fbf0014 	lw	ra,20(sp)
    2980:	27bd0018 	addiu	sp,sp,24
    2984:	03e00008 	jr	ra
    2988:	00000000 	nop

0000298c <func_8002DB6C>:
    298c:	27bdffe8 	addiu	sp,sp,-24
    2990:	afbf0014 	sw	ra,20(sp)
    2994:	0c000000 	jal	0 <ActorShape_Init>
    2998:	24840024 	addiu	a0,a0,36
    299c:	8fbf0014 	lw	ra,20(sp)
    29a0:	27bd0018 	addiu	sp,sp,24
    29a4:	03e00008 	jr	ra
    29a8:	00000000 	nop

000029ac <func_8002DB8C>:
    29ac:	27bdffe8 	addiu	sp,sp,-24
    29b0:	afbf0014 	sw	ra,20(sp)
    29b4:	24840024 	addiu	a0,a0,36
    29b8:	0c000000 	jal	0 <ActorShape_Init>
    29bc:	24a50024 	addiu	a1,a1,36
    29c0:	8fbf0014 	lw	ra,20(sp)
    29c4:	27bd0018 	addiu	sp,sp,24
    29c8:	03e00008 	jr	ra
    29cc:	00000000 	nop

000029d0 <func_8002DBB0>:
    29d0:	27bdffe8 	addiu	sp,sp,-24
    29d4:	afbf0014 	sw	ra,20(sp)
    29d8:	0c000000 	jal	0 <ActorShape_Init>
    29dc:	24840024 	addiu	a0,a0,36
    29e0:	8fbf0014 	lw	ra,20(sp)
    29e4:	27bd0018 	addiu	sp,sp,24
    29e8:	03e00008 	jr	ra
    29ec:	00000000 	nop

000029f0 <func_8002DBD0>:
    29f0:	27bdffe0 	addiu	sp,sp,-32
    29f4:	afbf0014 	sw	ra,20(sp)
    29f8:	afa50024 	sw	a1,36(sp)
    29fc:	afa60028 	sw	a2,40(sp)
    2a00:	00803825 	move	a3,a0
    2a04:	848400b6 	lh	a0,182(a0)
    2a08:	0c000000 	jal	0 <ActorShape_Init>
    2a0c:	afa70020 	sw	a3,32(sp)
    2a10:	8fa70020 	lw	a3,32(sp)
    2a14:	84e400b6 	lh	a0,182(a3)
    2a18:	0c000000 	jal	0 <ActorShape_Init>
    2a1c:	e7a0001c 	swc1	$f0,28(sp)
    2a20:	8fa20028 	lw	v0,40(sp)
    2a24:	8fa70020 	lw	a3,32(sp)
    2a28:	c7ae001c 	lwc1	$f14,28(sp)
    2a2c:	c4440000 	lwc1	$f4,0(v0)
    2a30:	c4e60024 	lwc1	$f6,36(a3)
    2a34:	c4480008 	lwc1	$f8,8(v0)
    2a38:	c4ea002c 	lwc1	$f10,44(a3)
    2a3c:	46062081 	sub.s	$f2,$f4,$f6
    2a40:	8fa30024 	lw	v1,36(sp)
    2a44:	460a4301 	sub.s	$f12,$f8,$f10
    2a48:	460e1402 	mul.s	$f16,$f2,$f14
    2a4c:	00000000 	nop
    2a50:	46006482 	mul.s	$f18,$f12,$f0
    2a54:	00000000 	nop
    2a58:	46001182 	mul.s	$f6,$f2,$f0
    2a5c:	00000000 	nop
    2a60:	460e6202 	mul.s	$f8,$f12,$f14
    2a64:	46128101 	sub.s	$f4,$f16,$f18
    2a68:	e4640000 	swc1	$f4,0(v1)
    2a6c:	46083280 	add.s	$f10,$f6,$f8
    2a70:	e46a0008 	swc1	$f10,8(v1)
    2a74:	c4500004 	lwc1	$f16,4(v0)
    2a78:	c4f20028 	lwc1	$f18,40(a3)
    2a7c:	46128101 	sub.s	$f4,$f16,$f18
    2a80:	e4640004 	swc1	$f4,4(v1)
    2a84:	8fbf0014 	lw	ra,20(sp)
    2a88:	27bd0020 	addiu	sp,sp,32
    2a8c:	03e00008 	jr	ra
    2a90:	00000000 	nop

00002a94 <Actor_HeightDiff>:
    2a94:	c4a40028 	lwc1	$f4,40(a1)
    2a98:	c4860028 	lwc1	$f6,40(a0)
    2a9c:	03e00008 	jr	ra
    2aa0:	46062001 	sub.s	$f0,$f4,$f6

00002aa4 <Player_GetCameraYOffset>:
    2aa4:	8c8e067c 	lw	t6,1660(a0)
    2aa8:	3c014200 	lui	at,0x4200
    2aac:	3c180000 	lui	t8,0x0
    2ab0:	000e7a00 	sll	t7,t6,0x8
    2ab4:	05e30005 	bgezl	t7,2acc <Player_GetCameraYOffset+0x28>
    2ab8:	44801000 	mtc1	zero,$f2
    2abc:	44811000 	mtc1	at,$f2
    2ac0:	10000003 	b	2ad0 <Player_GetCameraYOffset+0x2c>
    2ac4:	00000000 	nop
    2ac8:	44801000 	mtc1	zero,$f2
    2acc:	00000000 	nop
    2ad0:	8f180004 	lw	t8,4(t8)
    2ad4:	3c014230 	lui	at,0x4230
    2ad8:	57000006 	bnezl	t8,2af4 <Player_GetCameraYOffset+0x50>
    2adc:	44813000 	mtc1	at,$f6
    2ae0:	3c014288 	lui	at,0x4288
    2ae4:	44812000 	mtc1	at,$f4
    2ae8:	03e00008 	jr	ra
    2aec:	46041000 	add.s	$f0,$f2,$f4
    2af0:	44813000 	mtc1	at,$f6
    2af4:	00000000 	nop
    2af8:	46061000 	add.s	$f0,$f2,$f6
    2afc:	03e00008 	jr	ra
    2b00:	00000000 	nop

00002b04 <func_8002DCE4>:
    2b04:	8c82067c 	lw	v0,1660(a0)
    2b08:	3c014100 	lui	at,0x4100
    2b0c:	00027200 	sll	t6,v0,0x8
    2b10:	05c10004 	bgez	t6,2b24 <func_8002DCE4+0x20>
    2b14:	00027900 	sll	t7,v0,0x4
    2b18:	44810000 	mtc1	at,$f0
    2b1c:	03e00008 	jr	ra
    2b20:	00000000 	nop
    2b24:	05e1000f 	bgez	t7,2b64 <func_8002DCE4+0x60>
    2b28:	3c080000 	lui	t0,0x0
    2b2c:	3c180000 	lui	t8,0x0
    2b30:	8f180000 	lw	t8,0(t8)
    2b34:	3c0142c8 	lui	at,0x42c8
    2b38:	44814000 	mtc1	at,$f8
    2b3c:	8719006e 	lh	t9,110(t8)
    2b40:	3c010000 	lui	at,0x0
    2b44:	c4300a74 	lwc1	$f16,2676(at)
    2b48:	44992000 	mtc1	t9,$f4
    2b4c:	00000000 	nop
    2b50:	468021a0 	cvt.s.w	$f6,$f4
    2b54:	46083283 	div.s	$f10,$f6,$f8
    2b58:	46105002 	mul.s	$f0,$f10,$f16
    2b5c:	03e00008 	jr	ra
    2b60:	00000000 	nop
    2b64:	8d080000 	lw	t0,0(t0)
    2b68:	3c0142c8 	lui	at,0x42c8
    2b6c:	44813000 	mtc1	at,$f6
    2b70:	8509006e 	lh	t1,110(t0)
    2b74:	44899000 	mtc1	t1,$f18
    2b78:	00000000 	nop
    2b7c:	46809120 	cvt.s.w	$f4,$f18
    2b80:	46062003 	div.s	$f0,$f4,$f6
    2b84:	03e00008 	jr	ra
    2b88:	00000000 	nop

00002b8c <func_8002DD6C>:
    2b8c:	8c82067c 	lw	v0,1660(a0)
    2b90:	03e00008 	jr	ra
    2b94:	30420008 	andi	v0,v0,0x8

00002b98 <func_8002DD78>:
    2b98:	27bdffe8 	addiu	sp,sp,-24
    2b9c:	afbf0014 	sw	ra,20(sp)
    2ba0:	0c000000 	jal	0 <ActorShape_Init>
    2ba4:	afa40018 	sw	a0,24(sp)
    2ba8:	0002102b 	sltu	v0,zero,v0
    2bac:	10400004 	beqz	v0,2bc0 <func_8002DD78+0x28>
    2bb0:	8fbf0014 	lw	ra,20(sp)
    2bb4:	8fae0018 	lw	t6,24(sp)
    2bb8:	85c20834 	lh	v0,2100(t6)
    2bbc:	0002102b 	sltu	v0,zero,v0
    2bc0:	03e00008 	jr	ra
    2bc4:	27bd0018 	addiu	sp,sp,24

00002bc8 <func_8002DDA8>:
    2bc8:	27bdffe8 	addiu	sp,sp,-24
    2bcc:	afbf0014 	sw	ra,20(sp)
    2bd0:	8c851c44 	lw	a1,7236(a0)
    2bd4:	8ca2067c 	lw	v0,1660(a1)
    2bd8:	30420800 	andi	v0,v0,0x800
    2bdc:	0002102b 	sltu	v0,zero,v0
    2be0:	54400005 	bnezl	v0,2bf8 <func_8002DDA8+0x30>
    2be4:	8fbf0014 	lw	ra,20(sp)
    2be8:	0c000000 	jal	0 <ActorShape_Init>
    2bec:	00a02025 	move	a0,a1
    2bf0:	0002102b 	sltu	v0,zero,v0
    2bf4:	8fbf0014 	lw	ra,20(sp)
    2bf8:	27bd0018 	addiu	sp,sp,24
    2bfc:	03e00008 	jr	ra
    2c00:	00000000 	nop

00002c04 <func_8002DDE4>:
    2c04:	8c831c44 	lw	v1,7236(a0)
    2c08:	8c620680 	lw	v0,1664(v1)
    2c0c:	03e00008 	jr	ra
    2c10:	30420008 	andi	v0,v0,0x8

00002c14 <func_8002DDF4>:
    2c14:	8c831c44 	lw	v1,7236(a0)
    2c18:	8c620680 	lw	v0,1664(v1)
    2c1c:	03e00008 	jr	ra
    2c20:	30421000 	andi	v0,v0,0x1000

00002c24 <func_8002DE04>:
    2c24:	27bdffe8 	addiu	sp,sp,-24
    2c28:	afbf0014 	sw	ra,20(sp)
    2c2c:	afa40018 	sw	a0,24(sp)
    2c30:	afa5001c 	sw	a1,28(sp)
    2c34:	00c03825 	move	a3,a2
    2c38:	afa70020 	sw	a3,32(sp)
    2c3c:	24060007 	li	a2,7
    2c40:	24050066 	li	a1,102
    2c44:	0c000000 	jal	0 <ActorShape_Init>
    2c48:	24841c24 	addiu	a0,a0,7204
    2c4c:	8fa70020 	lw	a3,32(sp)
    2c50:	44800000 	mtc1	zero,$f0
    2c54:	8fa3001c 	lw	v1,28(sp)
    2c58:	ac470200 	sw	a3,512(v0)
    2c5c:	e4400204 	swc1	$f0,516(v0)
    2c60:	e4400208 	swc1	$f0,520(v0)
    2c64:	e440020c 	swc1	$f0,524(v0)
    2c68:	8cee0004 	lw	t6,4(a3)
    2c6c:	2401dfff 	li	at,-8193
    2c70:	35cf2000 	ori	t7,t6,0x2000
    2c74:	acef0004 	sw	t7,4(a3)
    2c78:	8c780004 	lw	t8,4(v1)
    2c7c:	0301c824 	and	t9,t8,at
    2c80:	ac790004 	sw	t9,4(v1)
    2c84:	8fbf0014 	lw	ra,20(sp)
    2c88:	27bd0018 	addiu	sp,sp,24
    2c8c:	03e00008 	jr	ra
    2c90:	00000000 	nop

00002c94 <func_8002DE74>:
    2c94:	27bdffe8 	addiu	sp,sp,-24
    2c98:	3c0e0001 	lui	t6,0x1
    2c9c:	afbf0014 	sw	ra,20(sp)
    2ca0:	afa5001c 	sw	a1,28(sp)
    2ca4:	01c47021 	addu	t6,t6,a0
    2ca8:	91ce1cbf 	lbu	t6,7359(t6)
    2cac:	24010004 	li	at,4
    2cb0:	51c1000b 	beql	t6,at,2ce0 <func_8002DE74+0x4c>
    2cb4:	8fbf0014 	lw	ra,20(sp)
    2cb8:	0c000000 	jal	0 <ActorShape_Init>
    2cbc:	afa40018 	sw	a0,24(sp)
    2cc0:	10400006 	beqz	v0,2cdc <func_8002DE74+0x48>
    2cc4:	8fa40018 	lw	a0,24(sp)
    2cc8:	0c000000 	jal	0 <ActorShape_Init>
    2ccc:	00002825 	move	a1,zero
    2cd0:	00402025 	move	a0,v0
    2cd4:	0c000000 	jal	0 <ActorShape_Init>
    2cd8:	24050006 	li	a1,6
    2cdc:	8fbf0014 	lw	ra,20(sp)
    2ce0:	27bd0018 	addiu	sp,sp,24
    2ce4:	03e00008 	jr	ra
    2ce8:	00000000 	nop

00002cec <func_8002DECC>:
    2cec:	afa40000 	sw	a0,0(sp)
    2cf0:	8cae067c 	lw	t6,1660(a1)
    2cf4:	3c010080 	lui	at,0x80
    2cf8:	aca60440 	sw	a2,1088(a1)
    2cfc:	01c17825 	or	t7,t6,at
    2d00:	acaf067c 	sw	t7,1660(a1)
    2d04:	03e00008 	jr	ra
    2d08:	acc5011c 	sw	a1,284(a2)

00002d0c <func_8002DEEC>:
    2d0c:	8c82067c 	lw	v0,1660(a0)
    2d10:	3c012000 	lui	at,0x2000
    2d14:	34210080 	ori	at,at,0x80
    2d18:	00411024 	and	v0,v0,at
    2d1c:	0002102b 	sltu	v0,zero,v0
    2d20:	14400003 	bnez	v0,2d30 <func_8002DEEC+0x24>
    2d24:	00000000 	nop
    2d28:	90820444 	lbu	v0,1092(a0)
    2d2c:	0002102b 	sltu	v0,zero,v0
    2d30:	03e00008 	jr	ra
    2d34:	00000000 	nop

00002d38 <func_8002DF18>:
    2d38:	27bdffe8 	addiu	sp,sp,-24
    2d3c:	afbf0014 	sw	ra,20(sp)
    2d40:	0c000000 	jal	0 <ActorShape_Init>
    2d44:	00000000 	nop
    2d48:	8fbf0014 	lw	ra,20(sp)
    2d4c:	27bd0018 	addiu	sp,sp,24
    2d50:	03e00008 	jr	ra
    2d54:	00000000 	nop

00002d58 <func_8002DF38>:
    2d58:	afa60008 	sw	a2,8(sp)
    2d5c:	8c831c44 	lw	v1,7236(a0)
    2d60:	24020001 	li	v0,1
    2d64:	a0660444 	sb	a2,1092(v1)
    2d68:	ac650448 	sw	a1,1096(v1)
    2d6c:	03e00008 	jr	ra
    2d70:	a460046a 	sh	zero,1130(v1)

00002d74 <func_8002DF54>:
    2d74:	27bdffe0 	addiu	sp,sp,-32
    2d78:	afbf0014 	sw	ra,20(sp)
    2d7c:	afa60028 	sw	a2,40(sp)
    2d80:	8c8e1c44 	lw	t6,7236(a0)
    2d84:	30c600ff 	andi	a2,a2,0xff
    2d88:	0c000000 	jal	0 <ActorShape_Init>
    2d8c:	afae001c 	sw	t6,28(sp)
    2d90:	8fb8001c 	lw	t8,28(sp)
    2d94:	240f0001 	li	t7,1
    2d98:	24020001 	li	v0,1
    2d9c:	a70f046a 	sh	t7,1130(t8)
    2da0:	8fbf0014 	lw	ra,20(sp)
    2da4:	27bd0020 	addiu	sp,sp,32
    2da8:	03e00008 	jr	ra
    2dac:	00000000 	nop

00002db0 <func_8002DF90>:
    2db0:	44800000 	mtc1	zero,$f0
    2db4:	00000000 	nop
    2db8:	e4800154 	swc1	$f0,340(a0)
    2dbc:	03e00008 	jr	ra
    2dc0:	e4800150 	swc1	$f0,336(a0)

00002dc4 <func_8002DFA4>:
    2dc4:	afa60008 	sw	a2,8(sp)
    2dc8:	44856000 	mtc1	a1,$f12
    2dcc:	c4840150 	lwc1	$f4,336(a0)
    2dd0:	00063400 	sll	a2,a2,0x10
    2dd4:	00063403 	sra	a2,a2,0x10
    2dd8:	460c2180 	add.s	$f6,$f4,$f12
    2ddc:	a4860158 	sh	a2,344(a0)
    2de0:	03e00008 	jr	ra
    2de4:	e4860150 	swc1	$f6,336(a0)

00002de8 <func_8002DFC8>:
    2de8:	afa50004 	sw	a1,4(sp)
    2dec:	8cc21c44 	lw	v0,7236(a2)
    2df0:	848e008a 	lh	t6,138(a0)
    2df4:	34018000 	li	at,0x8000
    2df8:	844800b6 	lh	t0,182(v0)
    2dfc:	01c1c821 	addu	t9,t6,at
    2e00:	00052c00 	sll	a1,a1,0x10
    2e04:	03281823 	subu	v1,t9,t0
    2e08:	00031c00 	sll	v1,v1,0x10
    2e0c:	00031c03 	sra	v1,v1,0x10
    2e10:	04600003 	bltz	v1,2e20 <func_8002DFC8+0x38>
    2e14:	00052c03 	sra	a1,a1,0x10
    2e18:	10000002 	b	2e24 <func_8002DFC8+0x3c>
    2e1c:	00601025 	move	v0,v1
    2e20:	00031023 	negu	v0,v1
    2e24:	0045082a 	slt	at,v0,a1
    2e28:	10200003 	beqz	at,2e38 <func_8002DFC8+0x50>
    2e2c:	00001025 	move	v0,zero
    2e30:	03e00008 	jr	ra
    2e34:	24020001 	li	v0,1
    2e38:	03e00008 	jr	ra
    2e3c:	00000000 	nop

00002e40 <func_8002E020>:
    2e40:	27bdffe8 	addiu	sp,sp,-24
    2e44:	afbf0014 	sw	ra,20(sp)
    2e48:	afa5001c 	sw	a1,28(sp)
    2e4c:	0c000000 	jal	0 <ActorShape_Init>
    2e50:	afa60020 	sw	a2,32(sp)
    2e54:	8fb9001c 	lw	t9,28(sp)
    2e58:	34018000 	li	at,0x8000
    2e5c:	0041c021 	addu	t8,v0,at
    2e60:	872800b6 	lh	t0,182(t9)
    2e64:	87a90022 	lh	t1,34(sp)
    2e68:	8fbf0014 	lw	ra,20(sp)
    2e6c:	03081823 	subu	v1,t8,t0
    2e70:	00031c00 	sll	v1,v1,0x10
    2e74:	00031c03 	sra	v1,v1,0x10
    2e78:	04600003 	bltz	v1,2e88 <func_8002E020+0x48>
    2e7c:	00031023 	negu	v0,v1
    2e80:	10000001 	b	2e88 <func_8002E020+0x48>
    2e84:	00601025 	move	v0,v1
    2e88:	0049082a 	slt	at,v0,t1
    2e8c:	10200003 	beqz	at,2e9c <func_8002E020+0x5c>
    2e90:	00001025 	move	v0,zero
    2e94:	10000001 	b	2e9c <func_8002E020+0x5c>
    2e98:	24020001 	li	v0,1
    2e9c:	03e00008 	jr	ra
    2ea0:	27bd0018 	addiu	sp,sp,24

00002ea4 <func_8002E084>:
    2ea4:	afa50004 	sw	a1,4(sp)
    2ea8:	848f00b6 	lh	t7,182(a0)
    2eac:	848e008a 	lh	t6,138(a0)
    2eb0:	00052c00 	sll	a1,a1,0x10
    2eb4:	00052c03 	sra	a1,a1,0x10
    2eb8:	01cf1023 	subu	v0,t6,t7
    2ebc:	00021400 	sll	v0,v0,0x10
    2ec0:	00021403 	sra	v0,v0,0x10
    2ec4:	04400003 	bltz	v0,2ed4 <func_8002E084+0x30>
    2ec8:	00021823 	negu	v1,v0
    2ecc:	10000001 	b	2ed4 <func_8002E084+0x30>
    2ed0:	00401825 	move	v1,v0
    2ed4:	0065082a 	slt	at,v1,a1
    2ed8:	10200003 	beqz	at,2ee8 <func_8002E084+0x44>
    2edc:	00001025 	move	v0,zero
    2ee0:	03e00008 	jr	ra
    2ee4:	24020001 	li	v0,1
    2ee8:	03e00008 	jr	ra
    2eec:	00000000 	nop

00002ef0 <func_8002E0D0>:
    2ef0:	27bdffe8 	addiu	sp,sp,-24
    2ef4:	afbf0014 	sw	ra,20(sp)
    2ef8:	afa40018 	sw	a0,24(sp)
    2efc:	0c000000 	jal	0 <ActorShape_Init>
    2f00:	afa60020 	sw	a2,32(sp)
    2f04:	8fae0018 	lw	t6,24(sp)
    2f08:	87b80022 	lh	t8,34(sp)
    2f0c:	8fbf0014 	lw	ra,20(sp)
    2f10:	85cf00b6 	lh	t7,182(t6)
    2f14:	004f1823 	subu	v1,v0,t7
    2f18:	00031c00 	sll	v1,v1,0x10
    2f1c:	00031c03 	sra	v1,v1,0x10
    2f20:	04600003 	bltz	v1,2f30 <func_8002E0D0+0x40>
    2f24:	00031023 	negu	v0,v1
    2f28:	10000001 	b	2f30 <func_8002E0D0+0x40>
    2f2c:	00601025 	move	v0,v1
    2f30:	0058082a 	slt	at,v0,t8
    2f34:	10200003 	beqz	at,2f44 <func_8002E0D0+0x54>
    2f38:	00001025 	move	v0,zero
    2f3c:	10000001 	b	2f44 <func_8002E0D0+0x54>
    2f40:	24020001 	li	v0,1
    2f44:	03e00008 	jr	ra
    2f48:	27bd0018 	addiu	sp,sp,24

00002f4c <func_8002E12C>:
    2f4c:	afa60008 	sw	a2,8(sp)
    2f50:	848f00b6 	lh	t7,182(a0)
    2f54:	848e008a 	lh	t6,138(a0)
    2f58:	00063400 	sll	a2,a2,0x10
    2f5c:	44857000 	mtc1	a1,$f14
    2f60:	01cf1023 	subu	v0,t6,t7
    2f64:	00021400 	sll	v0,v0,0x10
    2f68:	00021403 	sra	v0,v0,0x10
    2f6c:	04400003 	bltz	v0,2f7c <func_8002E12C+0x30>
    2f70:	00063403 	sra	a2,a2,0x10
    2f74:	10000002 	b	2f80 <func_8002E12C+0x34>
    2f78:	00401825 	move	v1,v0
    2f7c:	00021823 	negu	v1,v0
    2f80:	0066082a 	slt	at,v1,a2
    2f84:	1020000e 	beqz	at,2fc0 <func_8002E12C+0x74>
    2f88:	00001025 	move	v0,zero
    2f8c:	c4820090 	lwc1	$f2,144(a0)
    2f90:	c48c0094 	lwc1	$f12,148(a0)
    2f94:	46021102 	mul.s	$f4,$f2,$f2
    2f98:	00000000 	nop
    2f9c:	460c6182 	mul.s	$f6,$f12,$f12
    2fa0:	46062000 	add.s	$f0,$f4,$f6
    2fa4:	46000004 	sqrt.s	$f0,$f0
    2fa8:	460e003c 	c.lt.s	$f0,$f14
    2fac:	00000000 	nop
    2fb0:	45000003 	bc1f	2fc0 <func_8002E12C+0x74>
    2fb4:	00000000 	nop
    2fb8:	03e00008 	jr	ra
    2fbc:	24020001 	li	v0,1
    2fc0:	03e00008 	jr	ra
    2fc4:	00000000 	nop

00002fc8 <func_8002E1A8>:
    2fc8:	27bdffe8 	addiu	sp,sp,-24
    2fcc:	afbf0014 	sw	ra,20(sp)
    2fd0:	afa40018 	sw	a0,24(sp)
    2fd4:	afa5001c 	sw	a1,28(sp)
    2fd8:	afa60020 	sw	a2,32(sp)
    2fdc:	0c000000 	jal	0 <ActorShape_Init>
    2fe0:	afa70024 	sw	a3,36(sp)
    2fe4:	c7a40020 	lwc1	$f4,32(sp)
    2fe8:	8fa40018 	lw	a0,24(sp)
    2fec:	4604003c 	c.lt.s	$f0,$f4
    2ff0:	00000000 	nop
    2ff4:	45020013 	bc1fl	3044 <func_8002E1A8+0x7c>
    2ff8:	00001025 	move	v0,zero
    2ffc:	0c000000 	jal	0 <ActorShape_Init>
    3000:	8fa5001c 	lw	a1,28(sp)
    3004:	8fae0018 	lw	t6,24(sp)
    3008:	87b80026 	lh	t8,38(sp)
    300c:	85cf00b6 	lh	t7,182(t6)
    3010:	004f1823 	subu	v1,v0,t7
    3014:	00031c00 	sll	v1,v1,0x10
    3018:	00031c03 	sra	v1,v1,0x10
    301c:	04600003 	bltz	v1,302c <func_8002E1A8+0x64>
    3020:	00031023 	negu	v0,v1
    3024:	10000001 	b	302c <func_8002E1A8+0x64>
    3028:	00601025 	move	v0,v1
    302c:	0058082a 	slt	at,v0,t8
    3030:	50200004 	beqzl	at,3044 <func_8002E1A8+0x7c>
    3034:	00001025 	move	v0,zero
    3038:	10000002 	b	3044 <func_8002E1A8+0x7c>
    303c:	24020001 	li	v0,1
    3040:	00001025 	move	v0,zero
    3044:	8fbf0014 	lw	ra,20(sp)
    3048:	27bd0018 	addiu	sp,sp,24
    304c:	03e00008 	jr	ra
    3050:	00000000 	nop

00003054 <func_8002E234>:
    3054:	94820088 	lhu	v0,136(a0)
    3058:	44856000 	mtc1	a1,$f12
    305c:	3c01c130 	lui	at,0xc130
    3060:	304e0001 	andi	t6,v0,0x1
    3064:	51c00017 	beqzl	t6,30c4 <func_8002E234+0x70>
    3068:	24020001 	li	v0,1
    306c:	44812000 	mtc1	at,$f4
    3070:	00000000 	nop
    3074:	4604603c 	c.lt.s	$f12,$f4
    3078:	00000000 	nop
    307c:	45020011 	bc1fl	30c4 <func_8002E234+0x70>
    3080:	24020001 	li	v0,1
    3084:	44800000 	mtc1	zero,$f0
    3088:	c4860060 	lwc1	$f6,96(a0)
    308c:	3058fffe 	andi	t8,v0,0xfffe
    3090:	a4980088 	sh	t8,136(a0)
    3094:	4600303c 	c.lt.s	$f6,$f0
    3098:	37190004 	ori	t9,t8,0x4
    309c:	a4990088 	sh	t9,136(a0)
    30a0:	30c80010 	andi	t0,a2,0x10
    30a4:	45000004 	bc1f	30b8 <func_8002E234+0x64>
    30a8:	00000000 	nop
    30ac:	11000002 	beqz	t0,30b8 <func_8002E234+0x64>
    30b0:	00000000 	nop
    30b4:	e4800060 	swc1	$f0,96(a0)
    30b8:	03e00008 	jr	ra
    30bc:	00001025 	move	v0,zero
    30c0:	24020001 	li	v0,1
    30c4:	03e00008 	jr	ra
    30c8:	00000000 	nop

000030cc <func_8002E2AC>:
    30cc:	27bdffc8 	addiu	sp,sp,-56
    30d0:	afbf0024 	sw	ra,36(sp)
    30d4:	afb00020 	sw	s0,32(sp)
    30d8:	afa60040 	sw	a2,64(sp)
    30dc:	afa70044 	sw	a3,68(sp)
    30e0:	3c014248 	lui	at,0x4248
    30e4:	44813000 	mtc1	at,$f6
    30e8:	c4c40004 	lwc1	$f4,4(a2)
    30ec:	00a08025 	move	s0,a1
    30f0:	248507c0 	addiu	a1,a0,1984
    30f4:	46062200 	add.s	$f8,$f4,$f6
    30f8:	27a70030 	addiu	a3,sp,48
    30fc:	e4c80004 	swc1	$f8,4(a2)
    3100:	8faf0040 	lw	t7,64(sp)
    3104:	afa5002c 	sw	a1,44(sp)
    3108:	afb00010 	sw	s0,16(sp)
    310c:	26060078 	addiu	a2,s0,120
    3110:	0c000000 	jal	0 <ActorShape_Init>
    3114:	afaf0014 	sw	t7,20(sp)
    3118:	3c01c6fa 	lui	at,0xc6fa
    311c:	44811000 	mtc1	at,$f2
    3120:	96180088 	lhu	t8,136(s0)
    3124:	8fa4002c 	lw	a0,44(sp)
    3128:	4602003e 	c.le.s	$f0,$f2
    312c:	8fa70044 	lw	a3,68(sp)
    3130:	3319ff79 	andi	t9,t8,0xff79
    3134:	e6000080 	swc1	$f0,128(s0)
    3138:	45000007 	bc1f	3158 <func_8002E2AC+0x8c>
    313c:	a6190088 	sh	t9,136(s0)
    3140:	44051000 	mfc1	a1,$f2
    3144:	02002025 	move	a0,s0
    3148:	0c000000 	jal	0 <ActorShape_Init>
    314c:	00e03025 	move	a2,a3
    3150:	1000005c 	b	32c4 <func_8002E2AC+0x1f8>
    3154:	8fbf0024 	lw	ra,36(sp)
    3158:	c60a0080 	lwc1	$f10,128(s0)
    315c:	c6100028 	lwc1	$f16,40(s0)
    3160:	44801000 	mtc1	zero,$f2
    3164:	8fa80030 	lw	t0,48(sp)
    3168:	46105001 	sub.s	$f0,$f10,$f16
    316c:	a208007d 	sb	t0,125(s0)
    3170:	4600103e 	c.le.s	$f2,$f0
    3174:	00000000 	nop
    3178:	4502003b 	bc1fl	3268 <func_8002E2AC+0x19c>
    317c:	960a0088 	lhu	t2,136(s0)
    3180:	96090088 	lhu	t1,136(s0)
    3184:	3c0d0000 	lui	t5,0x0
    3188:	352a0080 	ori	t2,t1,0x80
    318c:	3142ffff 	andi	v0,t2,0xffff
    3190:	304b0010 	andi	t3,v0,0x10
    3194:	11600012 	beqz	t3,31e0 <func_8002E2AC+0x114>
    3198:	a60a0088 	sh	t2,136(s0)
    319c:	8fac0030 	lw	t4,48(sp)
    31a0:	8dad0000 	lw	t5,0(t5)
    31a4:	3c014170 	lui	at,0x4170
    31a8:	518d000a 	beql	t4,t5,31d4 <func_8002E2AC+0x108>
    31ac:	c6040100 	lwc1	$f4,256(s0)
    31b0:	44819000 	mtc1	at,$f18
    31b4:	344e0100 	ori	t6,v0,0x100
    31b8:	4600903c 	c.lt.s	$f18,$f0
    31bc:	00000000 	nop
    31c0:	45020008 	bc1fl	31e4 <func_8002E2AC+0x118>
    31c4:	c60a0060 	lwc1	$f10,96(s0)
    31c8:	10000005 	b	31e0 <func_8002E2AC+0x114>
    31cc:	a60e0088 	sh	t6,136(s0)
    31d0:	c6040100 	lwc1	$f4,256(s0)
    31d4:	c6060108 	lwc1	$f6,264(s0)
    31d8:	e6040024 	swc1	$f4,36(s0)
    31dc:	e606002c 	swc1	$f6,44(s0)
    31e0:	c60a0060 	lwc1	$f10,96(s0)
    31e4:	c6080080 	lwc1	$f8,128(s0)
    31e8:	4602503e 	c.le.s	$f10,$f2
    31ec:	e6080028 	swc1	$f8,40(s0)
    31f0:	45020033 	bc1fl	32c0 <func_8002E2AC+0x1f4>
    31f4:	24020001 	li	v0,1
    31f8:	96020088 	lhu	v0,136(s0)
    31fc:	30f90008 	andi	t9,a3,0x8
    3200:	304f0001 	andi	t7,v0,0x1
    3204:	15e00003 	bnez	t7,3214 <func_8002E2AC+0x148>
    3208:	34580002 	ori	t8,v0,0x2
    320c:	1000000d 	b	3244 <func_8002E2AC+0x178>
    3210:	a6180088 	sh	t8,136(s0)
    3214:	5320000b 	beqzl	t9,3244 <func_8002E2AC+0x178>
    3218:	e6020060 	swc1	$f2,96(s0)
    321c:	c610006c 	lwc1	$f16,108(s0)
    3220:	3c01c080 	lui	at,0xc080
    3224:	4602803c 	c.lt.s	$f16,$f2
    3228:	00000000 	nop
    322c:	45020005 	bc1fl	3244 <func_8002E2AC+0x178>
    3230:	e6020060 	swc1	$f2,96(s0)
    3234:	44819000 	mtc1	at,$f18
    3238:	10000002 	b	3244 <func_8002E2AC+0x178>
    323c:	e6120060 	swc1	$f18,96(s0)
    3240:	e6020060 	swc1	$f2,96(s0)
    3244:	96080088 	lhu	t0,136(s0)
    3248:	02002825 	move	a1,s0
    324c:	9206007d 	lbu	a2,125(s0)
    3250:	35090001 	ori	t1,t0,0x1
    3254:	0c000000 	jal	0 <ActorShape_Init>
    3258:	a6090088 	sh	t1,136(s0)
    325c:	10000018 	b	32c0 <func_8002E2AC+0x1f4>
    3260:	24020001 	li	v0,1
    3264:	960a0088 	lhu	t2,136(s0)
    3268:	3c01c130 	lui	at,0xc130
    326c:	314b0001 	andi	t3,t2,0x1
    3270:	5160000d 	beqzl	t3,32a8 <func_8002E2AC+0x1dc>
    3274:	44050000 	mfc1	a1,$f0
    3278:	44812000 	mtc1	at,$f4
    327c:	02002825 	move	a1,s0
    3280:	4600203e 	c.le.s	$f4,$f0
    3284:	00000000 	nop
    3288:	45020007 	bc1fl	32a8 <func_8002E2AC+0x1dc>
    328c:	44050000 	mfc1	a1,$f0
    3290:	9206007d 	lbu	a2,125(s0)
    3294:	0c000000 	jal	0 <ActorShape_Init>
    3298:	e7a00034 	swc1	$f0,52(sp)
    329c:	8fa70044 	lw	a3,68(sp)
    32a0:	c7a00034 	lwc1	$f0,52(sp)
    32a4:	44050000 	mfc1	a1,$f0
    32a8:	02002025 	move	a0,s0
    32ac:	0c000000 	jal	0 <ActorShape_Init>
    32b0:	00e03025 	move	a2,a3
    32b4:	10000003 	b	32c4 <func_8002E2AC+0x1f8>
    32b8:	8fbf0024 	lw	ra,36(sp)
    32bc:	24020001 	li	v0,1
    32c0:	8fbf0024 	lw	ra,36(sp)
    32c4:	8fb00020 	lw	s0,32(sp)
    32c8:	27bd0038 	addiu	sp,sp,56
    32cc:	03e00008 	jr	ra
    32d0:	00000000 	nop

000032d4 <func_8002E4B4>:
    32d4:	27bdff88 	addiu	sp,sp,-120
    32d8:	afbf0034 	sw	ra,52(sp)
    32dc:	afb00030 	sw	s0,48(sp)
    32e0:	afa40078 	sw	a0,120(sp)
    32e4:	afa60080 	sw	a2,128(sp)
    32e8:	afa70084 	sw	a3,132(sp)
    32ec:	c4a60104 	lwc1	$f6,260(a1)
    32f0:	c4a40028 	lwc1	$f4,40(a1)
    32f4:	24010032 	li	at,50
    32f8:	00a08025 	move	s0,a1
    32fc:	46062201 	sub.s	$f8,$f4,$f6
    3300:	e7a80074 	swc1	$f8,116(sp)
    3304:	90a7007d 	lbu	a3,125(a1)
    3308:	50e1000a 	beql	a3,at,3334 <func_8002E4B4+0x60>
    330c:	8fb8008c 	lw	t8,140(sp)
    3310:	94ae0088 	lhu	t6,136(a1)
    3314:	00e02825 	move	a1,a3
    3318:	248407c0 	addiu	a0,a0,1984
    331c:	31cf0001 	andi	t7,t6,0x1
    3320:	51e00004 	beqzl	t7,3334 <func_8002E4B4+0x60>
    3324:	8fb8008c 	lw	t8,140(sp)
    3328:	0c000000 	jal	0 <ActorShape_Init>
    332c:	02003025 	move	a2,s0
    3330:	8fb8008c 	lw	t8,140(sp)
    3334:	33190001 	andi	t9,t8,0x1
    3338:	13200040 	beqz	t9,343c <func_8002E4B4+0x168>
    333c:	33030080 	andi	v1,t8,0x80
    3340:	14600014 	bnez	v1,3394 <func_8002E4B4+0xc0>
    3344:	8fa40078 	lw	a0,120(sp)
    3348:	c7aa0084 	lwc1	$f10,132(sp)
    334c:	c7b00080 	lwc1	$f16,128(sp)
    3350:	26060024 	addiu	a2,s0,36
    3354:	26080074 	addiu	t0,s0,116
    3358:	27a90060 	addiu	t1,sp,96
    335c:	afa90018 	sw	t1,24(sp)
    3360:	afa80014 	sw	t0,20(sp)
    3364:	afa6003c 	sw	a2,60(sp)
    3368:	248407c0 	addiu	a0,a0,1984
    336c:	27a50064 	addiu	a1,sp,100
    3370:	26070100 	addiu	a3,s0,256
    3374:	afb0001c 	sw	s0,28(sp)
    3378:	afa30040 	sw	v1,64(sp)
    337c:	e7aa0010 	swc1	$f10,16(sp)
    3380:	0c000000 	jal	0 <ActorShape_Init>
    3384:	e7b00020 	swc1	$f16,32(sp)
    3388:	8fa30040 	lw	v1,64(sp)
    338c:	14400014 	bnez	v0,33e0 <func_8002E4B4+0x10c>
    3390:	8fa6003c 	lw	a2,60(sp)
    3394:	10600026 	beqz	v1,3430 <func_8002E4B4+0x15c>
    3398:	8fa40078 	lw	a0,120(sp)
    339c:	c7b20084 	lwc1	$f18,132(sp)
    33a0:	c7a40080 	lwc1	$f4,128(sp)
    33a4:	26060024 	addiu	a2,s0,36
    33a8:	260a0074 	addiu	t2,s0,116
    33ac:	27ab0060 	addiu	t3,sp,96
    33b0:	afab0018 	sw	t3,24(sp)
    33b4:	afaa0014 	sw	t2,20(sp)
    33b8:	afa6003c 	sw	a2,60(sp)
    33bc:	248407c0 	addiu	a0,a0,1984
    33c0:	27a50064 	addiu	a1,sp,100
    33c4:	26070100 	addiu	a3,s0,256
    33c8:	afb0001c 	sw	s0,28(sp)
    33cc:	e7b20010 	swc1	$f18,16(sp)
    33d0:	0c000000 	jal	0 <ActorShape_Init>
    33d4:	e7a40020 	swc1	$f4,32(sp)
    33d8:	10400015 	beqz	v0,3430 <func_8002E4B4+0x15c>
    33dc:	8fa6003c 	lw	a2,60(sp)
    33e0:	8e020074 	lw	v0,116(s0)
    33e4:	00c02025 	move	a0,a2
    33e8:	27a50064 	addiu	a1,sp,100
    33ec:	0c000000 	jal	0 <ActorShape_Init>
    33f0:	afa2005c 	sw	v0,92(sp)
    33f4:	8fa2005c 	lw	v0,92(sp)
    33f8:	844c000c 	lh	t4,12(v0)
    33fc:	844d0008 	lh	t5,8(v0)
    3400:	448c3000 	mtc1	t4,$f6
    3404:	448d4000 	mtc1	t5,$f8
    3408:	46803320 	cvt.s.w	$f12,$f6
    340c:	0c000000 	jal	0 <ActorShape_Init>
    3410:	468043a0 	cvt.s.w	$f14,$f8
    3414:	960e0088 	lhu	t6,136(s0)
    3418:	a602007e 	sh	v0,126(s0)
    341c:	35cf0008 	ori	t7,t6,0x8
    3420:	a60f0088 	sh	t7,136(s0)
    3424:	8fb90060 	lw	t9,96(sp)
    3428:	10000004 	b	343c <func_8002E4B4+0x168>
    342c:	a219007c 	sb	t9,124(s0)
    3430:	96180088 	lhu	t8,136(s0)
    3434:	3308fff7 	andi	t0,t8,0xfff7
    3438:	a6080088 	sh	t0,136(s0)
    343c:	c60a0024 	lwc1	$f10,36(s0)
    3440:	8fa9008c 	lw	t1,140(sp)
    3444:	3c014120 	lui	at,0x4120
    3448:	e7aa0064 	swc1	$f10,100(sp)
    344c:	c610002c 	lwc1	$f16,44(s0)
    3450:	312a0002 	andi	t2,t1,0x2
    3454:	11400026 	beqz	t2,34f0 <func_8002E4B4+0x21c>
    3458:	e7b0006c 	swc1	$f16,108(sp)
    345c:	c7a60088 	lwc1	$f6,136(sp)
    3460:	c7a80074 	lwc1	$f8,116(sp)
    3464:	44810000 	mtc1	at,$f0
    3468:	c6120104 	lwc1	$f18,260(s0)
    346c:	46083280 	add.s	$f10,$f6,$f8
    3470:	8fa40078 	lw	a0,120(sp)
    3474:	3c0b0000 	lui	t3,0x0
    3478:	46009100 	add.s	$f4,$f18,$f0
    347c:	3c0c0000 	lui	t4,0x0
    3480:	258c0000 	addiu	t4,t4,0
    3484:	46005401 	sub.s	$f16,$f10,$f0
    3488:	256b0000 	addiu	t3,t3,0
    348c:	e7a40068 	swc1	$f4,104(sp)
    3490:	afab0010 	sw	t3,16(sp)
    3494:	44078000 	mfc1	a3,$f16
    3498:	afac0014 	sw	t4,20(sp)
    349c:	afb00018 	sw	s0,24(sp)
    34a0:	27a50058 	addiu	a1,sp,88
    34a4:	27a60064 	addiu	a2,sp,100
    34a8:	0c000000 	jal	0 <ActorShape_Init>
    34ac:	248407c0 	addiu	a0,a0,1984
    34b0:	5040000d 	beqzl	v0,34e8 <func_8002E4B4+0x214>
    34b4:	960f0088 	lhu	t7,136(s0)
    34b8:	960d0088 	lhu	t5,136(s0)
    34bc:	3c014120 	lui	at,0x4120
    34c0:	44814000 	mtc1	at,$f8
    34c4:	35ae0010 	ori	t6,t5,0x10
    34c8:	a60e0088 	sh	t6,136(s0)
    34cc:	c7a40074 	lwc1	$f4,116(sp)
    34d0:	c7b20058 	lwc1	$f18,88(sp)
    34d4:	46049180 	add.s	$f6,$f18,$f4
    34d8:	46083281 	sub.s	$f10,$f6,$f8
    34dc:	10000004 	b	34f0 <func_8002E4B4+0x21c>
    34e0:	e60a0028 	swc1	$f10,40(s0)
    34e4:	960f0088 	lhu	t7,136(s0)
    34e8:	31f9ffef 	andi	t9,t7,0xffef
    34ec:	a6190088 	sh	t9,136(s0)
    34f0:	8fb8008c 	lw	t8,140(sp)
    34f4:	02002825 	move	a1,s0
    34f8:	27a60064 	addiu	a2,sp,100
    34fc:	33080004 	andi	t0,t8,0x4
    3500:	5100004f 	beqzl	t0,3640 <func_8002E4B4+0x36c>
    3504:	8fbf0034 	lw	ra,52(sp)
    3508:	8fa40078 	lw	a0,120(sp)
    350c:	c6100104 	lwc1	$f16,260(s0)
    3510:	03003825 	move	a3,t8
    3514:	248a07c0 	addiu	t2,a0,1984
    3518:	afaa0040 	sw	t2,64(sp)
    351c:	0c000000 	jal	0 <ActorShape_Init>
    3520:	e7b00068 	swc1	$f16,104(sp)
    3524:	c6120028 	lwc1	$f18,40(s0)
    3528:	27ab0050 	addiu	t3,sp,80
    352c:	27ac0054 	addiu	t4,sp,84
    3530:	e7b20050 	swc1	$f18,80(sp)
    3534:	8e07002c 	lw	a3,44(s0)
    3538:	8e060024 	lw	a2,36(s0)
    353c:	afac0014 	sw	t4,20(sp)
    3540:	afab0010 	sw	t3,16(sp)
    3544:	8fa40078 	lw	a0,120(sp)
    3548:	0c000000 	jal	0 <ActorShape_Init>
    354c:	8fa50040 	lw	a1,64(sp)
    3550:	10400034 	beqz	v0,3624 <func_8002E4B4+0x350>
    3554:	c7a40050 	lwc1	$f4,80(sp)
    3558:	c6060028 	lwc1	$f6,40(s0)
    355c:	44808000 	mtc1	zero,$f16
    3560:	46062201 	sub.s	$f8,$f4,$f6
    3564:	e6080084 	swc1	$f8,132(s0)
    3568:	c60a0084 	lwc1	$f10,132(s0)
    356c:	4610503c 	c.lt.s	$f10,$f16
    3570:	00000000 	nop
    3574:	45020006 	bc1fl	3590 <func_8002E4B4+0x2bc>
    3578:	96020088 	lhu	v0,136(s0)
    357c:	960d0088 	lhu	t5,136(s0)
    3580:	31aeff9f 	andi	t6,t5,0xff9f
    3584:	1000002d 	b	363c <func_8002E4B4+0x368>
    3588:	a60e0088 	sh	t6,136(s0)
    358c:	96020088 	lhu	v0,136(s0)
    3590:	304f0020 	andi	t7,v0,0x20
    3594:	15e0001f 	bnez	t7,3614 <func_8002E4B4+0x340>
    3598:	34590040 	ori	t9,v0,0x40
    359c:	a6190088 	sh	t9,136(s0)
    35a0:	8fa8008c 	lw	t0,140(sp)
    35a4:	27a50044 	addiu	a1,sp,68
    35a8:	24060064 	li	a2,100
    35ac:	31180040 	andi	t8,t0,0x40
    35b0:	17000018 	bnez	t8,3614 <func_8002E4B4+0x340>
    35b4:	240701f4 	li	a3,500
    35b8:	c6120024 	lwc1	$f18,36(s0)
    35bc:	c7a40050 	lwc1	$f4,80(sp)
    35c0:	8fa40078 	lw	a0,120(sp)
    35c4:	e7b20044 	swc1	$f18,68(sp)
    35c8:	e7a40048 	swc1	$f4,72(sp)
    35cc:	c606002c 	lwc1	$f6,44(s0)
    35d0:	afa00010 	sw	zero,16(sp)
    35d4:	0c000000 	jal	0 <ActorShape_Init>
    35d8:	e7a6004c 	swc1	$f6,76(sp)
    35dc:	24090004 	li	t1,4
    35e0:	afa90010 	sw	t1,16(sp)
    35e4:	8fa40078 	lw	a0,120(sp)
    35e8:	27a50044 	addiu	a1,sp,68
    35ec:	24060064 	li	a2,100
    35f0:	0c000000 	jal	0 <ActorShape_Init>
    35f4:	240701f4 	li	a3,500
    35f8:	240a0008 	li	t2,8
    35fc:	afaa0010 	sw	t2,16(sp)
    3600:	8fa40078 	lw	a0,120(sp)
    3604:	27a50044 	addiu	a1,sp,68
    3608:	24060064 	li	a2,100
    360c:	0c000000 	jal	0 <ActorShape_Init>
    3610:	240701f4 	li	a3,500
    3614:	960b0088 	lhu	t3,136(s0)
    3618:	356c0020 	ori	t4,t3,0x20
    361c:	10000007 	b	363c <func_8002E4B4+0x368>
    3620:	a60c0088 	sh	t4,136(s0)
    3624:	960d0088 	lhu	t5,136(s0)
    3628:	3c01c6fa 	lui	at,0xc6fa
    362c:	44814000 	mtc1	at,$f8
    3630:	31aeff9f 	andi	t6,t5,0xff9f
    3634:	a60e0088 	sh	t6,136(s0)
    3638:	e6080084 	swc1	$f8,132(s0)
    363c:	8fbf0034 	lw	ra,52(sp)
    3640:	8fb00030 	lw	s0,48(sp)
    3644:	27bd0078 	addiu	sp,sp,120
    3648:	03e00008 	jr	ra
    364c:	00000000 	nop

00003650 <func_8002E830>:
    3650:	27bdff88 	addiu	sp,sp,-120
    3654:	afb10064 	sw	s1,100(sp)
    3658:	afb00060 	sw	s0,96(sp)
    365c:	00a08025 	move	s0,a1
    3660:	00808825 	move	s1,a0
    3664:	afbf006c 	sw	ra,108(sp)
    3668:	afb20068 	sw	s2,104(sp)
    366c:	00c09025 	move	s2,a2
    3670:	afa70084 	sw	a3,132(sp)
    3674:	00e02025 	move	a0,a3
    3678:	0c000000 	jal	0 <ActorShape_Init>
    367c:	24050020 	li	a1,32
    3680:	afa20074 	sw	v0,116(sp)
    3684:	c6240000 	lwc1	$f4,0(s1)
    3688:	c6000000 	lwc1	$f0,0(s0)
    368c:	24050010 	li	a1,16
    3690:	46002032 	c.eq.s	$f4,$f0
    3694:	00000000 	nop
    3698:	4502000d 	bc1fl	36d0 <func_8002E830+0x80>
    369c:	e7a00070 	swc1	$f0,112(sp)
    36a0:	c6260008 	lwc1	$f6,8(s1)
    36a4:	c6080008 	lwc1	$f8,8(s0)
    36a8:	3c010000 	lui	at,0x0
    36ac:	46083032 	c.eq.s	$f6,$f8
    36b0:	00000000 	nop
    36b4:	45020006 	bc1fl	36d0 <func_8002E830+0x80>
    36b8:	e7a00070 	swc1	$f0,112(sp)
    36bc:	c42a0a78 	lwc1	$f10,2680(at)
    36c0:	460a0400 	add.s	$f16,$f0,$f10
    36c4:	10000002 	b	36d0 <func_8002E830+0x80>
    36c8:	e7b00070 	swc1	$f16,112(sp)
    36cc:	e7a00070 	swc1	$f0,112(sp)
    36d0:	0c000000 	jal	0 <ActorShape_Init>
    36d4:	8fa40084 	lw	a0,132(sp)
    36d8:	8fae008c 	lw	t6,140(sp)
    36dc:	3c0f0000 	lui	t7,0x0
    36e0:	24010006 	li	at,6
    36e4:	adc20000 	sw	v0,0(t6)
    36e8:	8def0000 	lw	t7,0(t7)
    36ec:	85f81074 	lh	t8,4212(t7)
    36f0:	57010024 	bnel	t8,at,3784 <func_8002E830+0x134>
    36f4:	c7ac0070 	lwc1	$f12,112(sp)
    36f8:	c6060000 	lwc1	$f6,0(s0)
    36fc:	c7b20070 	lwc1	$f18,112(sp)
    3700:	3c040000 	lui	a0,0x0
    3704:	46003221 	cvt.d.s	$f8,$f6
    3708:	46009121 	cvt.d.s	$f4,$f18
    370c:	f7a80010 	sdc1	$f8,16(sp)
    3710:	c60a0004 	lwc1	$f10,4(s0)
    3714:	44072000 	mfc1	a3,$f4
    3718:	44062800 	mfc1	a2,$f5
    371c:	46005421 	cvt.d.s	$f16,$f10
    3720:	24840128 	addiu	a0,a0,296
    3724:	f7b00018 	sdc1	$f16,24(sp)
    3728:	c6120008 	lwc1	$f18,8(s0)
    372c:	46009121 	cvt.d.s	$f4,$f18
    3730:	f7a40020 	sdc1	$f4,32(sp)
    3734:	c6260000 	lwc1	$f6,0(s1)
    3738:	46003221 	cvt.d.s	$f8,$f6
    373c:	f7a80028 	sdc1	$f8,40(sp)
    3740:	c62a0004 	lwc1	$f10,4(s1)
    3744:	46005421 	cvt.d.s	$f16,$f10
    3748:	f7b00030 	sdc1	$f16,48(sp)
    374c:	c6320008 	lwc1	$f18,8(s1)
    3750:	46009121 	cvt.d.s	$f4,$f18
    3754:	f7a40038 	sdc1	$f4,56(sp)
    3758:	c6460000 	lwc1	$f6,0(s2)
    375c:	46003221 	cvt.d.s	$f8,$f6
    3760:	f7a80040 	sdc1	$f8,64(sp)
    3764:	c64a0004 	lwc1	$f10,4(s2)
    3768:	46005421 	cvt.d.s	$f16,$f10
    376c:	f7b00048 	sdc1	$f16,72(sp)
    3770:	c6520008 	lwc1	$f18,8(s2)
    3774:	46009121 	cvt.d.s	$f4,$f18
    3778:	0c000000 	jal	0 <ActorShape_Init>
    377c:	f7a40050 	sdc1	$f4,80(sp)
    3780:	c7ac0070 	lwc1	$f12,112(sp)
    3784:	c60e0004 	lwc1	$f14,4(s0)
    3788:	0c000000 	jal	0 <ActorShape_Init>
    378c:	8e060008 	lw	a2,8(s0)
    3790:	8fb9008c 	lw	t9,140(sp)
    3794:	c6060004 	lwc1	$f6,4(s0)
    3798:	44807000 	mtc1	zero,$f14
    379c:	8f260000 	lw	a2,0(t9)
    37a0:	e7a60010 	swc1	$f6,16(sp)
    37a4:	c6080008 	lwc1	$f8,8(s0)
    37a8:	3c013f80 	lui	at,0x3f80
    37ac:	44812000 	mtc1	at,$f4
    37b0:	e7a80014 	swc1	$f8,20(sp)
    37b4:	c62a0000 	lwc1	$f10,0(s1)
    37b8:	3c040000 	lui	a0,0x0
    37bc:	24080010 	li	t0,16
    37c0:	e7aa0018 	swc1	$f10,24(sp)
    37c4:	c6300004 	lwc1	$f16,4(s1)
    37c8:	24090010 	li	t1,16
    37cc:	24840000 	addiu	a0,a0,0
    37d0:	e7b0001c 	swc1	$f16,28(sp)
    37d4:	c6320008 	lwc1	$f18,8(s1)
    37d8:	e7ae002c 	swc1	$f14,44(sp)
    37dc:	e7ae0024 	swc1	$f14,36(sp)
    37e0:	e7a40028 	swc1	$f4,40(sp)
    37e4:	e7b20020 	swc1	$f18,32(sp)
    37e8:	c6400000 	lwc1	$f0,0(s2)
    37ec:	8fa50074 	lw	a1,116(sp)
    37f0:	8fa70070 	lw	a3,112(sp)
    37f4:	e7a00030 	swc1	$f0,48(sp)
    37f8:	c6420004 	lwc1	$f2,4(s2)
    37fc:	e7a20034 	swc1	$f2,52(sp)
    3800:	c64c0008 	lwc1	$f12,8(s2)
    3804:	afa9004c 	sw	t1,76(sp)
    3808:	afa80048 	sw	t0,72(sp)
    380c:	e7a0003c 	swc1	$f0,60(sp)
    3810:	e7a20040 	swc1	$f2,64(sp)
    3814:	e7ac0038 	swc1	$f12,56(sp)
    3818:	0c000000 	jal	0 <ActorShape_Init>
    381c:	e7ac0044 	swc1	$f12,68(sp)
    3820:	8fa20088 	lw	v0,136(sp)
    3824:	3c0adc08 	lui	t2,0xdc08
    3828:	354a000a 	ori	t2,t2,0xa
    382c:	ac4a0000 	sw	t2,0(v0)
    3830:	8fab0074 	lw	t3,116(sp)
    3834:	3c0cdc08 	lui	t4,0xdc08
    3838:	24430008 	addiu	v1,v0,8
    383c:	ac4b0004 	sw	t3,4(v0)
    3840:	00601025 	move	v0,v1
    3844:	358c030a 	ori	t4,t4,0x30a
    3848:	ac4c0000 	sw	t4,0(v0)
    384c:	8fad0074 	lw	t5,116(sp)
    3850:	3c01f200 	lui	at,0xf200
    3854:	24640008 	addiu	a0,v1,8
    3858:	25ae0010 	addiu	t6,t5,16
    385c:	ac4e0004 	sw	t6,4(v0)
    3860:	8faf008c 	lw	t7,140(sp)
    3864:	24830008 	addiu	v1,a0,8
    3868:	8de20000 	lw	v0,0(t7)
    386c:	8c590004 	lw	t9,4(v0)
    3870:	8c4b0000 	lw	t3,0(v0)
    3874:	33280fff 	andi	t0,t9,0xfff
    3878:	316c0fff 	andi	t4,t3,0xfff
    387c:	000c6b00 	sll	t5,t4,0xc
    3880:	01014825 	or	t1,t0,at
    3884:	012d7025 	or	t6,t1,t5
    3888:	ac8e0000 	sw	t6,0(a0)
    388c:	8faf008c 	lw	t7,140(sp)
    3890:	3c010100 	lui	at,0x100
    3894:	8de20000 	lw	v0,0(t7)
    3898:	8c580004 	lw	t8,4(v0)
    389c:	8c4c0000 	lw	t4,0(v0)
    38a0:	00601025 	move	v0,v1
    38a4:	2708003c 	addiu	t0,t8,60
    38a8:	258d003c 	addiu	t5,t4,60
    38ac:	31ae0fff 	andi	t6,t5,0xfff
    38b0:	310a0fff 	andi	t2,t0,0xfff
    38b4:	01415825 	or	t3,t2,at
    38b8:	000e7b00 	sll	t7,t6,0xc
    38bc:	016fc025 	or	t8,t3,t7
    38c0:	ac980004 	sw	t8,4(a0)
    38c4:	8fbf006c 	lw	ra,108(sp)
    38c8:	8fb20068 	lw	s2,104(sp)
    38cc:	8fb10064 	lw	s1,100(sp)
    38d0:	8fb00060 	lw	s0,96(sp)
    38d4:	03e00008 	jr	ra
    38d8:	27bd0078 	addiu	sp,sp,120

000038dc <func_8002EABC>:
    38dc:	27bdffc0 	addiu	sp,sp,-64
    38e0:	afb00020 	sw	s0,32(sp)
    38e4:	afa50044 	sw	a1,68(sp)
    38e8:	afa60048 	sw	a2,72(sp)
    38ec:	00e08025 	move	s0,a3
    38f0:	afbf0024 	sw	ra,36(sp)
    38f4:	afa40040 	sw	a0,64(sp)
    38f8:	3c060000 	lui	a2,0x0
    38fc:	00e02825 	move	a1,a3
    3900:	240710d2 	li	a3,4306
    3904:	24c60178 	addiu	a2,a2,376
    3908:	0c000000 	jal	0 <ActorShape_Init>
    390c:	27a40028 	addiu	a0,sp,40
    3910:	8e0e02c0 	lw	t6,704(s0)
    3914:	27af003c 	addiu	t7,sp,60
    3918:	afaf0014 	sw	t7,20(sp)
    391c:	8fa40040 	lw	a0,64(sp)
    3920:	8fa50044 	lw	a1,68(sp)
    3924:	8fa60048 	lw	a2,72(sp)
    3928:	02003825 	move	a3,s0
    392c:	0c000000 	jal	0 <ActorShape_Init>
    3930:	afae0010 	sw	t6,16(sp)
    3934:	3c060000 	lui	a2,0x0
    3938:	ae0202c0 	sw	v0,704(s0)
    393c:	24c60188 	addiu	a2,a2,392
    3940:	27a40028 	addiu	a0,sp,40
    3944:	02002825 	move	a1,s0
    3948:	0c000000 	jal	0 <ActorShape_Init>
    394c:	240710d9 	li	a3,4313
    3950:	8fbf0024 	lw	ra,36(sp)
    3954:	8fa2003c 	lw	v0,60(sp)
    3958:	8fb00020 	lw	s0,32(sp)
    395c:	03e00008 	jr	ra
    3960:	27bd0040 	addiu	sp,sp,64

00003964 <func_8002EB44>:
    3964:	27bdffc0 	addiu	sp,sp,-64
    3968:	afb00020 	sw	s0,32(sp)
    396c:	afa50044 	sw	a1,68(sp)
    3970:	afa60048 	sw	a2,72(sp)
    3974:	00e08025 	move	s0,a3
    3978:	afbf0024 	sw	ra,36(sp)
    397c:	afa40040 	sw	a0,64(sp)
    3980:	3c060000 	lui	a2,0x0
    3984:	00e02825 	move	a1,a3
    3988:	240710ec 	li	a3,4332
    398c:	24c60198 	addiu	a2,a2,408
    3990:	0c000000 	jal	0 <ActorShape_Init>
    3994:	27a40028 	addiu	a0,sp,40
    3998:	8e0e02d0 	lw	t6,720(s0)
    399c:	27af003c 	addiu	t7,sp,60
    39a0:	afaf0014 	sw	t7,20(sp)
    39a4:	8fa40040 	lw	a0,64(sp)
    39a8:	8fa50044 	lw	a1,68(sp)
    39ac:	8fa60048 	lw	a2,72(sp)
    39b0:	02003825 	move	a3,s0
    39b4:	0c000000 	jal	0 <ActorShape_Init>
    39b8:	afae0010 	sw	t6,16(sp)
    39bc:	3c060000 	lui	a2,0x0
    39c0:	ae0202d0 	sw	v0,720(s0)
    39c4:	24c601a8 	addiu	a2,a2,424
    39c8:	27a40028 	addiu	a0,sp,40
    39cc:	02002825 	move	a1,s0
    39d0:	0c000000 	jal	0 <ActorShape_Init>
    39d4:	240710f3 	li	a3,4339
    39d8:	8fbf0024 	lw	ra,36(sp)
    39dc:	8fa2003c 	lw	v0,60(sp)
    39e0:	8fb00020 	lw	s0,32(sp)
    39e4:	03e00008 	jr	ra
    39e8:	27bd0040 	addiu	sp,sp,64

000039ec <func_8002EBCC>:
    39ec:	27bdff90 	addiu	sp,sp,-112
    39f0:	3c010001 	lui	at,0x1
    39f4:	afbf002c 	sw	ra,44(sp)
    39f8:	afb00028 	sw	s0,40(sp)
    39fc:	afa40070 	sw	a0,112(sp)
    3a00:	afa60078 	sw	a2,120(sp)
    3a04:	00a11021 	addu	v0,a1,at
    3a08:	804e0a4e 	lb	t6,2638(v0)
    3a0c:	3c190000 	lui	t9,0x0
    3a10:	8f390000 	lw	t9,0(t9)
    3a14:	448e2000 	mtc1	t6,$f4
    3a18:	24010006 	li	at,6
    3a1c:	00a08025 	move	s0,a1
    3a20:	468021a0 	cvt.s.w	$f6,$f4
    3a24:	3c040000 	lui	a0,0x0
    3a28:	e7a60060 	swc1	$f6,96(sp)
    3a2c:	804f0a4f 	lb	t7,2639(v0)
    3a30:	448f4000 	mtc1	t7,$f8
    3a34:	00000000 	nop
    3a38:	468042a0 	cvt.s.w	$f10,$f8
    3a3c:	e7aa0064 	swc1	$f10,100(sp)
    3a40:	80580a50 	lb	t8,2640(v0)
    3a44:	44988000 	mtc1	t8,$f16
    3a48:	00000000 	nop
    3a4c:	468084a0 	cvt.s.w	$f18,$f16
    3a50:	e7b20068 	swc1	$f18,104(sp)
    3a54:	872a1074 	lh	t2,4212(t9)
    3a58:	5541000e 	bnel	t2,at,3a94 <func_8002EBCC+0xa8>
    3a5c:	8fa40070 	lw	a0,112(sp)
    3a60:	c4a800e4 	lwc1	$f8,228(a1)
    3a64:	c4a400e0 	lwc1	$f4,224(a1)
    3a68:	248401b8 	addiu	a0,a0,440
    3a6c:	460042a1 	cvt.d.s	$f10,$f8
    3a70:	460021a1 	cvt.d.s	$f6,$f4
    3a74:	f7aa0010 	sdc1	$f10,16(sp)
    3a78:	c4b000e8 	lwc1	$f16,232(a1)
    3a7c:	44073000 	mfc1	a3,$f6
    3a80:	44063800 	mfc1	a2,$f7
    3a84:	460084a1 	cvt.d.s	$f18,$f16
    3a88:	0c000000 	jal	0 <ActorShape_Init>
    3a8c:	f7b20018 	sdc1	$f18,24(sp)
    3a90:	8fa40070 	lw	a0,112(sp)
    3a94:	260500e0 	addiu	a1,s0,224
    3a98:	27a60060 	addiu	a2,sp,96
    3a9c:	8e070000 	lw	a3,0(s0)
    3aa0:	0c000000 	jal	0 <ActorShape_Init>
    3aa4:	24840024 	addiu	a0,a0,36
    3aa8:	8fab0078 	lw	t3,120(sp)
    3aac:	24050010 	li	a1,16
    3ab0:	51600037 	beqzl	t3,3b90 <func_8002EBCC+0x1a4>
    3ab4:	8fbf002c 	lw	ra,44(sp)
    3ab8:	8e040000 	lw	a0,0(s0)
    3abc:	0c000000 	jal	0 <ActorShape_Init>
    3ac0:	afa2006c 	sw	v0,108(sp)
    3ac4:	afa20058 	sw	v0,88(sp)
    3ac8:	8e050000 	lw	a1,0(s0)
    3acc:	3c060000 	lui	a2,0x0
    3ad0:	24c601ec 	addiu	a2,a2,492
    3ad4:	afa2005c 	sw	v0,92(sp)
    3ad8:	27a40044 	addiu	a0,sp,68
    3adc:	24071120 	li	a3,4384
    3ae0:	0c000000 	jal	0 <ActorShape_Init>
    3ae4:	afa50054 	sw	a1,84(sp)
    3ae8:	8fa8006c 	lw	t0,108(sp)
    3aec:	8fa2005c 	lw	v0,92(sp)
    3af0:	3c01f200 	lui	at,0xf200
    3af4:	8d0d0000 	lw	t5,0(t0)
    3af8:	8d0a0004 	lw	t2,4(t0)
    3afc:	8fa90054 	lw	t1,84(sp)
    3b00:	31ae0fff 	andi	t6,t5,0xfff
    3b04:	000e7b00 	sll	t7,t6,0xc
    3b08:	01e1c025 	or	t8,t7,at
    3b0c:	314b0fff 	andi	t3,t2,0xfff
    3b10:	030b6025 	or	t4,t8,t3
    3b14:	ac4c0000 	sw	t4,0(v0)
    3b18:	8d0d0000 	lw	t5,0(t0)
    3b1c:	8d0b0004 	lw	t3,4(t0)
    3b20:	3c010100 	lui	at,0x100
    3b24:	25af003c 	addiu	t7,t5,60
    3b28:	31f90fff 	andi	t9,t7,0xfff
    3b2c:	00195300 	sll	t2,t9,0xc
    3b30:	256d003c 	addiu	t5,t3,60
    3b34:	31ae0fff 	andi	t6,t5,0xfff
    3b38:	0141c025 	or	t8,t2,at
    3b3c:	030e7825 	or	t7,t8,t6
    3b40:	ac4f0004 	sw	t7,4(v0)
    3b44:	24430008 	addiu	v1,v0,8
    3b48:	3c19df00 	lui	t9,0xdf00
    3b4c:	ac790000 	sw	t9,0(v1)
    3b50:	ac600004 	sw	zero,4(v1)
    3b54:	8d2302c0 	lw	v1,704(t1)
    3b58:	3c0bdb06 	lui	t3,0xdb06
    3b5c:	356b001c 	ori	t3,t3,0x1c
    3b60:	246a0008 	addiu	t2,v1,8
    3b64:	ad2a02c0 	sw	t2,704(t1)
    3b68:	ac6b0000 	sw	t3,0(v1)
    3b6c:	8fac0058 	lw	t4,88(sp)
    3b70:	3c060000 	lui	a2,0x0
    3b74:	24c601fc 	addiu	a2,a2,508
    3b78:	ac6c0004 	sw	t4,4(v1)
    3b7c:	8e050000 	lw	a1,0(s0)
    3b80:	27a40044 	addiu	a0,sp,68
    3b84:	0c000000 	jal	0 <ActorShape_Init>
    3b88:	2407112a 	li	a3,4394
    3b8c:	8fbf002c 	lw	ra,44(sp)
    3b90:	8fb00028 	lw	s0,40(sp)
    3b94:	27bd0070 	addiu	sp,sp,112
    3b98:	03e00008 	jr	ra
    3b9c:	00000000 	nop

00003ba0 <func_8002ED80>:
    3ba0:	27bdffa0 	addiu	sp,sp,-96
    3ba4:	3c010001 	lui	at,0x1
    3ba8:	afbf001c 	sw	ra,28(sp)
    3bac:	afb00018 	sw	s0,24(sp)
    3bb0:	afa40060 	sw	a0,96(sp)
    3bb4:	afa60068 	sw	a2,104(sp)
    3bb8:	00a11021 	addu	v0,a1,at
    3bbc:	804e0a4e 	lb	t6,2638(v0)
    3bc0:	00a08025 	move	s0,a1
    3bc4:	24a500e0 	addiu	a1,a1,224
    3bc8:	448e2000 	mtc1	t6,$f4
    3bcc:	27a60050 	addiu	a2,sp,80
    3bd0:	24840024 	addiu	a0,a0,36
    3bd4:	468021a0 	cvt.s.w	$f6,$f4
    3bd8:	e7a60050 	swc1	$f6,80(sp)
    3bdc:	804f0a4f 	lb	t7,2639(v0)
    3be0:	448f4000 	mtc1	t7,$f8
    3be4:	00000000 	nop
    3be8:	468042a0 	cvt.s.w	$f10,$f8
    3bec:	e7aa0054 	swc1	$f10,84(sp)
    3bf0:	80580a50 	lb	t8,2640(v0)
    3bf4:	44988000 	mtc1	t8,$f16
    3bf8:	00000000 	nop
    3bfc:	468084a0 	cvt.s.w	$f18,$f16
    3c00:	e7b20058 	swc1	$f18,88(sp)
    3c04:	0c000000 	jal	0 <ActorShape_Init>
    3c08:	8e070000 	lw	a3,0(s0)
    3c0c:	8fb90068 	lw	t9,104(sp)
    3c10:	24050010 	li	a1,16
    3c14:	53200037 	beqzl	t9,3cf4 <func_8002ED80+0x154>
    3c18:	8fbf001c 	lw	ra,28(sp)
    3c1c:	8e040000 	lw	a0,0(s0)
    3c20:	0c000000 	jal	0 <ActorShape_Init>
    3c24:	afa2005c 	sw	v0,92(sp)
    3c28:	afa20048 	sw	v0,72(sp)
    3c2c:	8e050000 	lw	a1,0(s0)
    3c30:	3c060000 	lui	a2,0x0
    3c34:	24c6020c 	addiu	a2,a2,524
    3c38:	afa2004c 	sw	v0,76(sp)
    3c3c:	27a40034 	addiu	a0,sp,52
    3c40:	2407114d 	li	a3,4429
    3c44:	0c000000 	jal	0 <ActorShape_Init>
    3c48:	afa50044 	sw	a1,68(sp)
    3c4c:	8fa8005c 	lw	t0,92(sp)
    3c50:	8fa2004c 	lw	v0,76(sp)
    3c54:	3c01f200 	lui	at,0xf200
    3c58:	8d0b0000 	lw	t3,0(t0)
    3c5c:	8d180004 	lw	t8,4(t0)
    3c60:	8fa90044 	lw	t1,68(sp)
    3c64:	316c0fff 	andi	t4,t3,0xfff
    3c68:	000c6b00 	sll	t5,t4,0xc
    3c6c:	01a17025 	or	t6,t5,at
    3c70:	33190fff 	andi	t9,t8,0xfff
    3c74:	01d95025 	or	t2,t6,t9
    3c78:	ac4a0000 	sw	t2,0(v0)
    3c7c:	8d0b0000 	lw	t3,0(t0)
    3c80:	8d190004 	lw	t9,4(t0)
    3c84:	3c010100 	lui	at,0x100
    3c88:	256d003c 	addiu	t5,t3,60
    3c8c:	31af0fff 	andi	t7,t5,0xfff
    3c90:	000fc300 	sll	t8,t7,0xc
    3c94:	272b003c 	addiu	t3,t9,60
    3c98:	316c0fff 	andi	t4,t3,0xfff
    3c9c:	03017025 	or	t6,t8,at
    3ca0:	01cc6825 	or	t5,t6,t4
    3ca4:	ac4d0004 	sw	t5,4(v0)
    3ca8:	24430008 	addiu	v1,v0,8
    3cac:	3c0fdf00 	lui	t7,0xdf00
    3cb0:	ac6f0000 	sw	t7,0(v1)
    3cb4:	ac600004 	sw	zero,4(v1)
    3cb8:	8d2302d0 	lw	v1,720(t1)
    3cbc:	3c19db06 	lui	t9,0xdb06
    3cc0:	3739001c 	ori	t9,t9,0x1c
    3cc4:	24780008 	addiu	t8,v1,8
    3cc8:	ad3802d0 	sw	t8,720(t1)
    3ccc:	ac790000 	sw	t9,0(v1)
    3cd0:	8faa0048 	lw	t2,72(sp)
    3cd4:	3c060000 	lui	a2,0x0
    3cd8:	24c6021c 	addiu	a2,a2,540
    3cdc:	ac6a0004 	sw	t2,4(v1)
    3ce0:	8e050000 	lw	a1,0(s0)
    3ce4:	27a40034 	addiu	a0,sp,52
    3ce8:	0c000000 	jal	0 <ActorShape_Init>
    3cec:	24071157 	li	a3,4439
    3cf0:	8fbf001c 	lw	ra,28(sp)
    3cf4:	8fb00018 	lw	s0,24(sp)
    3cf8:	27bd0060 	addiu	sp,sp,96
    3cfc:	03e00008 	jr	ra
    3d00:	00000000 	nop

00003d04 <func_8002EEE4>:
    3d04:	8caf0038 	lw	t7,56(a1)
    3d08:	00801025 	move	v0,a0
    3d0c:	ac8f0000 	sw	t7,0(a0)
    3d10:	8cae003c 	lw	t6,60(a1)
    3d14:	ac8e0004 	sw	t6,4(a0)
    3d18:	8caf0040 	lw	t7,64(a1)
    3d1c:	ac8f0008 	sw	t7,8(a0)
    3d20:	8cae0044 	lw	t6,68(a1)
    3d24:	ac8e000c 	sw	t6,12(a0)
    3d28:	8caf0048 	lw	t7,72(a1)
    3d2c:	03e00008 	jr	ra
    3d30:	ac8f0010 	sw	t7,16(a0)

00003d34 <func_8002EF14>:
    3d34:	8caf0024 	lw	t7,36(a1)
    3d38:	00801025 	move	v0,a0
    3d3c:	ac8f0000 	sw	t7,0(a0)
    3d40:	8cae0028 	lw	t6,40(a1)
    3d44:	ac8e0004 	sw	t6,4(a0)
    3d48:	8caf002c 	lw	t7,44(a1)
    3d4c:	ac8f0008 	sw	t7,8(a0)
    3d50:	8cae0030 	lw	t6,48(a1)
    3d54:	ac8e000c 	sw	t6,12(a0)
    3d58:	8caf0034 	lw	t7,52(a1)
    3d5c:	03e00008 	jr	ra
    3d60:	ac8f0010 	sw	t7,16(a0)

00003d64 <func_8002EF44>:
    3d64:	27bdffd0 	addiu	sp,sp,-48
    3d68:	afbf0014 	sw	ra,20(sp)
    3d6c:	afa40030 	sw	a0,48(sp)
    3d70:	afa50034 	sw	a1,52(sp)
    3d74:	24a50024 	addiu	a1,a1,36
    3d78:	0c000000 	jal	0 <ActorShape_Init>
    3d7c:	27a4001c 	addiu	a0,sp,28
    3d80:	8faf0034 	lw	t7,52(sp)
    3d84:	8fa20030 	lw	v0,48(sp)
    3d88:	27ae0028 	addiu	t6,sp,40
    3d8c:	89f900b4 	lwl	t9,180(t7)
    3d90:	99f900b7 	lwr	t9,183(t7)
    3d94:	27a8001c 	addiu	t0,sp,28
    3d98:	a9d90000 	swl	t9,0(t6)
    3d9c:	b9d90003 	swr	t9,3(t6)
    3da0:	95f900b8 	lhu	t9,184(t7)
    3da4:	a5d90004 	sh	t9,4(t6)
    3da8:	8d0a0000 	lw	t2,0(t0)
    3dac:	ac4a0000 	sw	t2,0(v0)
    3db0:	8d090004 	lw	t1,4(t0)
    3db4:	ac490004 	sw	t1,4(v0)
    3db8:	8d0a0008 	lw	t2,8(t0)
    3dbc:	ac4a0008 	sw	t2,8(v0)
    3dc0:	8d09000c 	lw	t1,12(t0)
    3dc4:	ac49000c 	sw	t1,12(v0)
    3dc8:	8d0a0010 	lw	t2,16(t0)
    3dcc:	ac4a0010 	sw	t2,16(v0)
    3dd0:	8fbf0014 	lw	ra,20(sp)
    3dd4:	27bd0030 	addiu	sp,sp,48
    3dd8:	03e00008 	jr	ra
    3ddc:	00000000 	nop

00003de0 <func_8002EFC0>:
    3de0:	afa60008 	sw	a2,8(sp)
    3de4:	848e008a 	lh	t6,138(a0)
    3de8:	00063400 	sll	a2,a2,0x10
    3dec:	24018000 	li	at,-32768
    3df0:	00063403 	sra	a2,a2,0x10
    3df4:	01c1c821 	addu	t9,t6,at
    3df8:	03261023 	subu	v0,t9,a2
    3dfc:	00021400 	sll	v0,v0,0x10
    3e00:	00021403 	sra	v0,v0,0x10
    3e04:	04400004 	bltz	v0,3e18 <func_8002EFC0+0x38>
    3e08:	00021823 	negu	v1,v0
    3e0c:	00021c00 	sll	v1,v0,0x10
    3e10:	10000003 	b	3e20 <func_8002EFC0+0x40>
    3e14:	00031c03 	sra	v1,v1,0x10
    3e18:	00031c00 	sll	v1,v1,0x10
    3e1c:	00031c03 	sra	v1,v1,0x10
    3e20:	8ca80664 	lw	t0,1636(a1)
    3e24:	28612aab 	slti	at,v1,10923
    3e28:	1100001a 	beqz	t0,3e94 <func_8002EFC0+0xb4>
    3e2c:	00000000 	nop
    3e30:	28614001 	slti	at,v1,16385
    3e34:	10200006 	beqz	at,3e50 <func_8002EFC0+0x70>
    3e38:	00000000 	nop
    3e3c:	8c890004 	lw	t1,4(a0)
    3e40:	240b4000 	li	t3,16384
    3e44:	01636023 	subu	t4,t3,v1
    3e48:	00095100 	sll	t2,t1,0x4
    3e4c:	05410003 	bgez	t2,3e5c <func_8002EFC0+0x7c>
    3e50:	3c010000 	lui	at,0x0
    3e54:	03e00008 	jr	ra
    3e58:	c4200a7c 	lwc1	$f0,2684(at)
    3e5c:	448c2000 	mtc1	t4,$f4
    3e60:	3c013800 	lui	at,0x3800
    3e64:	44814000 	mtc1	at,$f8
    3e68:	468021a0 	cvt.s.w	$f6,$f4
    3e6c:	3c010000 	lui	at,0x0
    3e70:	c4300a80 	lwc1	$f16,2688(at)
    3e74:	c48c008c 	lwc1	$f12,140(a0)
    3e78:	46083282 	mul.s	$f10,$f6,$f8
    3e7c:	00000000 	nop
    3e80:	46106482 	mul.s	$f18,$f12,$f16
    3e84:	00000000 	nop
    3e88:	460a9102 	mul.s	$f4,$f18,$f10
    3e8c:	03e00008 	jr	ra
    3e90:	46046001 	sub.s	$f0,$f12,$f4
    3e94:	14200003 	bnez	at,3ea4 <func_8002EFC0+0xc4>
    3e98:	3c010000 	lui	at,0x0
    3e9c:	03e00008 	jr	ra
    3ea0:	c4200a84 	lwc1	$f0,2692(at)
    3ea4:	c480008c 	lwc1	$f0,140(a0)
    3ea8:	03e00008 	jr	ra
    3eac:	00000000 	nop

00003eb0 <func_8002F090>:
    3eb0:	808e001f 	lb	t6,31(a0)
    3eb4:	3c010000 	lui	at,0x0
    3eb8:	44856000 	mtc1	a1,$f12
    3ebc:	000e78c0 	sll	t7,t6,0x3
    3ec0:	002f0821 	addu	at,at,t7
    3ec4:	c4240000 	lwc1	$f4,0(at)
    3ec8:	00001025 	move	v0,zero
    3ecc:	4604603c 	c.lt.s	$f12,$f4
    3ed0:	00000000 	nop
    3ed4:	45000002 	bc1f	3ee0 <func_8002F090+0x30>
    3ed8:	00000000 	nop
    3edc:	24020001 	li	v0,1
    3ee0:	03e00008 	jr	ra
    3ee4:	00000000 	nop

00003ee8 <func_8002F0C8>:
    3ee8:	27bdffe8 	addiu	sp,sp,-24
    3eec:	afbf0014 	sw	ra,20(sp)
    3ef0:	8c8e0130 	lw	t6,304(a0)
    3ef4:	11c00005 	beqz	t6,3f0c <func_8002F0C8+0x24>
    3ef8:	00000000 	nop
    3efc:	8c8f0004 	lw	t7,4(a0)
    3f00:	31f80001 	andi	t8,t7,0x1
    3f04:	17000003 	bnez	t8,3f14 <func_8002F0C8+0x2c>
    3f08:	00000000 	nop
    3f0c:	10000025 	b	3fa4 <func_8002F0C8+0xbc>
    3f10:	24020001 	li	v0,1
    3f14:	14c00023 	bnez	a2,3fa4 <func_8002F0C8+0xbc>
    3f18:	00001025 	move	v0,zero
    3f1c:	8499008a 	lh	t9,138(a0)
    3f20:	84ab00b6 	lh	t3,182(a1)
    3f24:	24018000 	li	at,-32768
    3f28:	03215021 	addu	t2,t9,at
    3f2c:	014b1023 	subu	v0,t2,t3
    3f30:	00021400 	sll	v0,v0,0x10
    3f34:	00021403 	sra	v0,v0,0x10
    3f38:	04400004 	bltz	v0,3f4c <func_8002F0C8+0x64>
    3f3c:	00021823 	negu	v1,v0
    3f40:	00021c00 	sll	v1,v0,0x10
    3f44:	10000003 	b	3f54 <func_8002F0C8+0x6c>
    3f48:	00031c03 	sra	v1,v1,0x10
    3f4c:	00031c00 	sll	v1,v1,0x10
    3f50:	00031c03 	sra	v1,v1,0x10
    3f54:	8cac0664 	lw	t4,1636(a1)
    3f58:	28612aab 	slti	at,v1,10923
    3f5c:	55800006 	bnezl	t4,3f78 <func_8002F0C8+0x90>
    3f60:	c480008c 	lwc1	$f0,140(a0)
    3f64:	14200003 	bnez	at,3f74 <func_8002F0C8+0x8c>
    3f68:	3c010000 	lui	at,0x0
    3f6c:	10000002 	b	3f78 <func_8002F0C8+0x90>
    3f70:	c4200a88 	lwc1	$f0,2696(at)
    3f74:	c480008c 	lwc1	$f0,140(a0)
    3f78:	808d001f 	lb	t5,31(a0)
    3f7c:	3c010000 	lui	at,0x0
    3f80:	000d70c0 	sll	t6,t5,0x3
    3f84:	002e0821 	addu	at,at,t6
    3f88:	c4240004 	lwc1	$f4,4(at)
    3f8c:	46002182 	mul.s	$f6,$f4,$f0
    3f90:	44053000 	mfc1	a1,$f6
    3f94:	0c000000 	jal	0 <ActorShape_Init>
    3f98:	00000000 	nop
    3f9c:	10000001 	b	3fa4 <func_8002F0C8+0xbc>
    3fa0:	2c420001 	sltiu	v0,v0,1
    3fa4:	8fbf0014 	lw	ra,20(sp)
    3fa8:	27bd0018 	addiu	sp,sp,24
    3fac:	03e00008 	jr	ra
    3fb0:	00000000 	nop

00003fb4 <func_8002F194>:
    3fb4:	afa50004 	sw	a1,4(sp)
    3fb8:	8c830004 	lw	v1,4(a0)
    3fbc:	2401feff 	li	at,-257
    3fc0:	00001025 	move	v0,zero
    3fc4:	306e0100 	andi	t6,v1,0x100
    3fc8:	11c00004 	beqz	t6,3fdc <func_8002F194+0x28>
    3fcc:	00617824 	and	t7,v1,at
    3fd0:	ac8f0004 	sw	t7,4(a0)
    3fd4:	03e00008 	jr	ra
    3fd8:	24020001 	li	v0,1
    3fdc:	03e00008 	jr	ra
    3fe0:	00000000 	nop

00003fe4 <func_8002F1C4>:
    3fe4:	27bdffe0 	addiu	sp,sp,-32
    3fe8:	afbf0014 	sw	ra,20(sp)
    3fec:	afa40020 	sw	a0,32(sp)
    3ff0:	afa60028 	sw	a2,40(sp)
    3ff4:	afa7002c 	sw	a3,44(sp)
    3ff8:	8ca31c44 	lw	v1,7236(a1)
    3ffc:	00803025 	move	a2,a0
    4000:	8fb80030 	lw	t8,48(sp)
    4004:	8c6e0004 	lw	t6,4(v1)
    4008:	31cf0100 	andi	t7,t6,0x100
    400c:	15e0001e 	bnez	t7,4088 <func_8002F1C4+0xa4>
    4010:	00000000 	nop
    4014:	13000007 	beqz	t8,4034 <func_8002F1C4+0x50>
    4018:	00a02025 	move	a0,a1
    401c:	afa3001c 	sw	v1,28(sp)
    4020:	0c000000 	jal	0 <ActorShape_Init>
    4024:	afa60020 	sw	a2,32(sp)
    4028:	8fa3001c 	lw	v1,28(sp)
    402c:	14400016 	bnez	v0,4088 <func_8002F1C4+0xa4>
    4030:	8fa60020 	lw	a2,32(sp)
    4034:	90d9010c 	lbu	t9,268(a2)
    4038:	57200016 	bnezl	t9,4094 <func_8002F1C4+0xb0>
    403c:	ac660694 	sw	a2,1684(v1)
    4040:	c4c00094 	lwc1	$f0,148(a2)
    4044:	c7a4002c 	lwc1	$f4,44(sp)
    4048:	46000005 	abs.s	$f0,$f0
    404c:	4600203c 	c.lt.s	$f4,$f0
    4050:	00000000 	nop
    4054:	4501000c 	bc1t	4088 <func_8002F1C4+0xa4>
    4058:	00000000 	nop
    405c:	c4c00090 	lwc1	$f0,144(a2)
    4060:	c4660698 	lwc1	$f6,1688(v1)
    4064:	c7a80028 	lwc1	$f8,40(sp)
    4068:	4600303c 	c.lt.s	$f6,$f0
    406c:	00000000 	nop
    4070:	45010005 	bc1t	4088 <func_8002F1C4+0xa4>
    4074:	00000000 	nop
    4078:	4600403c 	c.lt.s	$f8,$f0
    407c:	00000000 	nop
    4080:	45020004 	bc1fl	4094 <func_8002F1C4+0xb0>
    4084:	ac660694 	sw	a2,1684(v1)
    4088:	10000007 	b	40a8 <func_8002F1C4+0xc4>
    408c:	00001025 	move	v0,zero
    4090:	ac660694 	sw	a2,1684(v1)
    4094:	c4ca0090 	lwc1	$f10,144(a2)
    4098:	24020001 	li	v0,1
    409c:	e46a0698 	swc1	$f10,1688(v1)
    40a0:	8fa80030 	lw	t0,48(sp)
    40a4:	a0680693 	sb	t0,1683(v1)
    40a8:	8fbf0014 	lw	ra,20(sp)
    40ac:	27bd0020 	addiu	sp,sp,32
    40b0:	03e00008 	jr	ra
    40b4:	00000000 	nop

000040b8 <func_8002F298>:
    40b8:	44866000 	mtc1	a2,$f12
    40bc:	27bdffe0 	addiu	sp,sp,-32
    40c0:	afa7002c 	sw	a3,44(sp)
    40c4:	8fae002c 	lw	t6,44(sp)
    40c8:	afbf001c 	sw	ra,28(sp)
    40cc:	44076000 	mfc1	a3,$f12
    40d0:	44066000 	mfc1	a2,$f12
    40d4:	0c000000 	jal	0 <ActorShape_Init>
    40d8:	afae0010 	sw	t6,16(sp)
    40dc:	8fbf001c 	lw	ra,28(sp)
    40e0:	27bd0020 	addiu	sp,sp,32
    40e4:	03e00008 	jr	ra
    40e8:	00000000 	nop

000040ec <func_8002F2CC>:
    40ec:	44866000 	mtc1	a2,$f12
    40f0:	27bdffe8 	addiu	sp,sp,-24
    40f4:	afbf0014 	sw	ra,20(sp)
    40f8:	44066000 	mfc1	a2,$f12
    40fc:	0c000000 	jal	0 <ActorShape_Init>
    4100:	00003825 	move	a3,zero
    4104:	8fbf0014 	lw	ra,20(sp)
    4108:	27bd0018 	addiu	sp,sp,24
    410c:	03e00008 	jr	ra
    4110:	00000000 	nop

00004114 <func_8002F2F4>:
    4114:	27bdffe8 	addiu	sp,sp,-24
    4118:	afbf0014 	sw	ra,20(sp)
    411c:	848e00a8 	lh	t6,168(a0)
    4120:	3c014248 	lui	at,0x4248
    4124:	44814000 	mtc1	at,$f8
    4128:	448e2000 	mtc1	t6,$f4
    412c:	00000000 	nop
    4130:	468021a0 	cvt.s.w	$f6,$f4
    4134:	46083000 	add.s	$f0,$f6,$f8
    4138:	44060000 	mfc1	a2,$f0
    413c:	0c000000 	jal	0 <ActorShape_Init>
    4140:	00000000 	nop
    4144:	8fbf0014 	lw	ra,20(sp)
    4148:	27bd0018 	addiu	sp,sp,24
    414c:	03e00008 	jr	ra
    4150:	00000000 	nop

00004154 <func_8002F334>:
    4154:	27bdffe8 	addiu	sp,sp,-24
    4158:	afbf0014 	sw	ra,20(sp)
    415c:	afa40018 	sw	a0,24(sp)
    4160:	0c000000 	jal	0 <ActorShape_Init>
    4164:	24a420d8 	addiu	a0,a1,8408
    4168:	24010002 	li	at,2
    416c:	14410003 	bne	v0,at,417c <func_8002F334+0x28>
    4170:	8fbf0014 	lw	ra,20(sp)
    4174:	10000002 	b	4180 <func_8002F334+0x2c>
    4178:	24020001 	li	v0,1
    417c:	00001025 	move	v0,zero
    4180:	03e00008 	jr	ra
    4184:	27bd0018 	addiu	sp,sp,24

00004188 <func_8002F368>:
    4188:	8c831c44 	lw	v1,7236(a0)
    418c:	03e00008 	jr	ra
    4190:	80620693 	lb	v0,1683(v1)

00004194 <func_8002F374>:
    4194:	27bdffd8 	addiu	sp,sp,-40
    4198:	afbf0014 	sw	ra,20(sp)
    419c:	afa5002c 	sw	a1,44(sp)
    41a0:	afa60030 	sw	a2,48(sp)
    41a4:	afa70034 	sw	a3,52(sp)
    41a8:	27a70018 	addiu	a3,sp,24
    41ac:	27a6001c 	addiu	a2,sp,28
    41b0:	0c000000 	jal	0 <ActorShape_Init>
    41b4:	24a50038 	addiu	a1,a1,56
    41b8:	c7a4001c 	lwc1	$f4,28(sp)
    41bc:	c7a60018 	lwc1	$f6,24(sp)
    41c0:	3c014320 	lui	at,0x4320
    41c4:	44810000 	mtc1	at,$f0
    41c8:	46062202 	mul.s	$f8,$f4,$f6
    41cc:	8fb80030 	lw	t8,48(sp)
    41d0:	3c01c2f0 	lui	at,0xc2f0
    41d4:	46004282 	mul.s	$f10,$f8,$f0
    41d8:	46005400 	add.s	$f16,$f10,$f0
    41dc:	44815000 	mtc1	at,$f10
    41e0:	3c0142f0 	lui	at,0x42f0
    41e4:	4600848d 	trunc.w.s	$f18,$f16
    41e8:	440f9000 	mfc1	t7,$f18
    41ec:	44819000 	mtc1	at,$f18
    41f0:	a70f0000 	sh	t7,0(t8)
    41f4:	c7a60018 	lwc1	$f6,24(sp)
    41f8:	c7a40020 	lwc1	$f4,32(sp)
    41fc:	8fa90034 	lw	t1,52(sp)
    4200:	46062202 	mul.s	$f8,$f4,$f6
    4204:	00000000 	nop
    4208:	460a4402 	mul.s	$f16,$f8,$f10
    420c:	46128100 	add.s	$f4,$f16,$f18
    4210:	4600218d 	trunc.w.s	$f6,$f4
    4214:	44083000 	mfc1	t0,$f6
    4218:	00000000 	nop
    421c:	a5280000 	sh	t0,0(t1)
    4220:	8fbf0014 	lw	ra,20(sp)
    4224:	27bd0028 	addiu	sp,sp,40
    4228:	03e00008 	jr	ra
    422c:	00000000 	nop

00004230 <Actor_HasParent>:
    4230:	afa50004 	sw	a1,4(sp)
    4234:	8c8e0118 	lw	t6,280(a0)
    4238:	00001025 	move	v0,zero
    423c:	11c00003 	beqz	t6,424c <Actor_HasParent+0x1c>
    4240:	00000000 	nop
    4244:	03e00008 	jr	ra
    4248:	24020001 	li	v0,1
    424c:	03e00008 	jr	ra
    4250:	00000000 	nop

00004254 <func_8002F434>:
    4254:	27bdffe0 	addiu	sp,sp,-32
    4258:	afbf0014 	sw	ra,20(sp)
    425c:	afa40020 	sw	a0,32(sp)
    4260:	afa7002c 	sw	a3,44(sp)
    4264:	8ca71c44 	lw	a3,7236(a1)
    4268:	3c01003c 	lui	at,0x3c
    426c:	34217080 	ori	at,at,0x7080
    4270:	8cee067c 	lw	t6,1660(a3)
    4274:	00e02025 	move	a0,a3
    4278:	01c17824 	and	t7,t6,at
    427c:	55e00039 	bnezl	t7,4364 <func_8002F434+0x110>
    4280:	00001025 	move	v0,zero
    4284:	afa60028 	sw	a2,40(sp)
    4288:	0c000000 	jal	0 <ActorShape_Init>
    428c:	afa7001c 	sw	a3,28(sp)
    4290:	8fa40020 	lw	a0,32(sp)
    4294:	8fa60028 	lw	a2,40(sp)
    4298:	04410031 	bgez	v0,4360 <func_8002F434+0x10c>
    429c:	8fa7001c 	lw	a3,28(sp)
    42a0:	8cf803ac 	lw	t8,940(a3)
    42a4:	17000004 	bnez	t8,42b8 <func_8002F434+0x64>
    42a8:	00000000 	nop
    42ac:	8cf90694 	lw	t9,1684(a3)
    42b0:	54990006 	bnel	a0,t9,42cc <func_8002F434+0x78>
    42b4:	8ce8067c 	lw	t0,1660(a3)
    42b8:	18c00003 	blez	a2,42c8 <func_8002F434+0x74>
    42bc:	28c1007e 	slti	at,a2,126
    42c0:	54200008 	bnezl	at,42e4 <func_8002F434+0x90>
    42c4:	c4840090 	lwc1	$f4,144(a0)
    42c8:	8ce8067c 	lw	t0,1660(a3)
    42cc:	3c012000 	lui	at,0x2000
    42d0:	34210800 	ori	at,at,0x800
    42d4:	01014824 	and	t1,t0,at
    42d8:	55200022 	bnezl	t1,4364 <func_8002F434+0x110>
    42dc:	00001025 	move	v0,zero
    42e0:	c4840090 	lwc1	$f4,144(a0)
    42e4:	c7a6002c 	lwc1	$f6,44(sp)
    42e8:	4606203c 	c.lt.s	$f4,$f6
    42ec:	00000000 	nop
    42f0:	4502001c 	bc1fl	4364 <func_8002F434+0x110>
    42f4:	00001025 	move	v0,zero
    42f8:	c4800094 	lwc1	$f0,148(a0)
    42fc:	c7a80030 	lwc1	$f8,48(sp)
    4300:	46000005 	abs.s	$f0,$f0
    4304:	4608003c 	c.lt.s	$f0,$f8
    4308:	00000000 	nop
    430c:	45020015 	bc1fl	4364 <func_8002F434+0x110>
    4310:	00001025 	move	v0,zero
    4314:	848a008a 	lh	t2,138(a0)
    4318:	84eb00b6 	lh	t3,182(a3)
    431c:	014b1023 	subu	v0,t2,t3
    4320:	00021400 	sll	v0,v0,0x10
    4324:	00021403 	sra	v0,v0,0x10
    4328:	04400003 	bltz	v0,4338 <func_8002F434+0xe4>
    432c:	00021823 	negu	v1,v0
    4330:	10000001 	b	4338 <func_8002F434+0xe4>
    4334:	00401825 	move	v1,v0
    4338:	14c00005 	bnez	a2,4350 <func_8002F434+0xfc>
    433c:	24020001 	li	v0,1
    4340:	94ec0436 	lhu	t4,1078(a3)
    4344:	0183082a 	slt	at,t4,v1
    4348:	50200006 	beqzl	at,4364 <func_8002F434+0x110>
    434c:	00001025 	move	v0,zero
    4350:	a0e60434 	sb	a2,1076(a3)
    4354:	ace40438 	sw	a0,1080(a3)
    4358:	10000002 	b	4364 <func_8002F434+0x110>
    435c:	a4e30436 	sh	v1,1078(a3)
    4360:	00001025 	move	v0,zero
    4364:	8fbf0014 	lw	ra,20(sp)
    4368:	27bd0020 	addiu	sp,sp,32
    436c:	03e00008 	jr	ra
    4370:	00000000 	nop

00004374 <func_8002F554>:
    4374:	3c014120 	lui	at,0x4120
    4378:	44812000 	mtc1	at,$f4
    437c:	27bdffe0 	addiu	sp,sp,-32
    4380:	afbf001c 	sw	ra,28(sp)
    4384:	3c074248 	lui	a3,0x4248
    4388:	0c000000 	jal	0 <ActorShape_Init>
    438c:	e7a40010 	swc1	$f4,16(sp)
    4390:	8fbf001c 	lw	ra,28(sp)
    4394:	27bd0020 	addiu	sp,sp,32
    4398:	03e00008 	jr	ra
    439c:	00000000 	nop

000043a0 <func_8002F580>:
    43a0:	27bdffe8 	addiu	sp,sp,-24
    43a4:	afbf0014 	sw	ra,20(sp)
    43a8:	0c000000 	jal	0 <ActorShape_Init>
    43ac:	00003025 	move	a2,zero
    43b0:	8fbf0014 	lw	ra,20(sp)
    43b4:	27bd0018 	addiu	sp,sp,24
    43b8:	03e00008 	jr	ra
    43bc:	00000000 	nop

000043c0 <Actor_HasNoParent>:
    43c0:	afa50004 	sw	a1,4(sp)
    43c4:	8c8e0118 	lw	t6,280(a0)
    43c8:	00001025 	move	v0,zero
    43cc:	15c00003 	bnez	t6,43dc <Actor_HasNoParent+0x1c>
    43d0:	00000000 	nop
    43d4:	03e00008 	jr	ra
    43d8:	24020001 	li	v0,1
    43dc:	03e00008 	jr	ra
    43e0:	00000000 	nop

000043e4 <func_8002F5C4>:
    43e4:	afa60008 	sw	a2,8(sp)
    43e8:	8c820118 	lw	v0,280(a0)
    43ec:	844e0000 	lh	t6,0(v0)
    43f0:	55c00004 	bnezl	t6,4404 <func_8002F5C4+0x20>
    43f4:	ac45011c 	sw	a1,284(v0)
    43f8:	ac4503ac 	sw	a1,940(v0)
    43fc:	ac450438 	sw	a1,1080(v0)
    4400:	ac45011c 	sw	a1,284(v0)
    4404:	aca20118 	sw	v0,280(a1)
    4408:	03e00008 	jr	ra
    440c:	ac800118 	sw	zero,280(a0)

00004410 <func_8002F5F0>:
    4410:	8ca21c44 	lw	v0,7236(a1)
    4414:	c480008c 	lwc1	$f0,140(a0)
    4418:	c44406a4 	lwc1	$f4,1700(v0)
    441c:	4604003c 	c.lt.s	$f0,$f4
    4420:	00000000 	nop
    4424:	45000002 	bc1f	4430 <func_8002F5F0+0x20>
    4428:	00000000 	nop
    442c:	e44006a4 	swc1	$f0,1700(v0)
    4430:	03e00008 	jr	ra
    4434:	00000000 	nop

00004438 <Actor_HasChild>:
    4438:	afa40000 	sw	a0,0(sp)
    443c:	8cae011c 	lw	t6,284(a1)
    4440:	00001025 	move	v0,zero
    4444:	11c00003 	beqz	t6,4454 <Actor_HasChild+0x1c>
    4448:	00000000 	nop
    444c:	03e00008 	jr	ra
    4450:	24020001 	li	v0,1
    4454:	03e00008 	jr	ra
    4458:	00000000 	nop

0000445c <func_8002F63C>:
    445c:	8c831c44 	lw	v1,7236(a0)
    4460:	3c01003c 	lui	at,0x3c
    4464:	34217880 	ori	at,at,0x7880
    4468:	8c6e067c 	lw	t6,1660(v1)
    446c:	00001025 	move	v0,zero
    4470:	01c17824 	and	t7,t6,at
    4474:	15e00005 	bnez	t7,448c <func_8002F63C+0x30>
    4478:	00000000 	nop
    447c:	ac650440 	sw	a1,1088(v1)
    4480:	a066043c 	sb	a2,1084(v1)
    4484:	03e00008 	jr	ra
    4488:	24020001 	li	v0,1
    448c:	03e00008 	jr	ra
    4490:	00000000 	nop

00004494 <Actor_HasNoChild>:
    4494:	afa40000 	sw	a0,0(sp)
    4498:	8cae011c 	lw	t6,284(a1)
    449c:	00001025 	move	v0,zero
    44a0:	15c00003 	bnez	t6,44b0 <Actor_HasNoChild+0x1c>
    44a4:	00000000 	nop
    44a8:	03e00008 	jr	ra
    44ac:	24020001 	li	v0,1
    44b0:	03e00008 	jr	ra
    44b4:	00000000 	nop

000044b8 <func_8002F698>:
    44b8:	afa50004 	sw	a1,4(sp)
    44bc:	afa7000c 	sw	a3,12(sp)
    44c0:	8c821c44 	lw	v0,7236(a0)
    44c4:	8fae0018 	lw	t6,24(sp)
    44c8:	44866000 	mtc1	a2,$f12
    44cc:	00073c00 	sll	a3,a3,0x10
    44d0:	a04e08a0 	sb	t6,2208(v0)
    44d4:	8faf0014 	lw	t7,20(sp)
    44d8:	00073c03 	sra	a3,a3,0x10
    44dc:	a44708a2 	sh	a3,2210(v0)
    44e0:	e44c08a4 	swc1	$f12,2212(v0)
    44e4:	a04f08a1 	sb	t7,2209(v0)
    44e8:	c7a40010 	lwc1	$f4,16(sp)
    44ec:	03e00008 	jr	ra
    44f0:	e44408a8 	swc1	$f4,2216(v0)

000044f4 <func_8002F6D4>:
    44f4:	27bdffd8 	addiu	sp,sp,-40
    44f8:	44866000 	mtc1	a2,$f12
    44fc:	c7a40038 	lwc1	$f4,56(sp)
    4500:	8faf003c 	lw	t7,60(sp)
    4504:	afa70034 	sw	a3,52(sp)
    4508:	00073c00 	sll	a3,a3,0x10
    450c:	afbf0024 	sw	ra,36(sp)
    4510:	240e0002 	li	t6,2
    4514:	44066000 	mfc1	a2,$f12
    4518:	00073c03 	sra	a3,a3,0x10
    451c:	afae0014 	sw	t6,20(sp)
    4520:	e7a40010 	swc1	$f4,16(sp)
    4524:	0c000000 	jal	0 <ActorShape_Init>
    4528:	afaf0018 	sw	t7,24(sp)
    452c:	8fbf0024 	lw	ra,36(sp)
    4530:	27bd0028 	addiu	sp,sp,40
    4534:	03e00008 	jr	ra
    4538:	00000000 	nop

0000453c <func_8002F71C>:
    453c:	44866000 	mtc1	a2,$f12
    4540:	27bdffe0 	addiu	sp,sp,-32
    4544:	c7a40030 	lwc1	$f4,48(sp)
    4548:	afa7002c 	sw	a3,44(sp)
    454c:	00073c00 	sll	a3,a3,0x10
    4550:	afbf001c 	sw	ra,28(sp)
    4554:	44066000 	mfc1	a2,$f12
    4558:	00073c03 	sra	a3,a3,0x10
    455c:	afa00014 	sw	zero,20(sp)
    4560:	0c000000 	jal	0 <ActorShape_Init>
    4564:	e7a40010 	swc1	$f4,16(sp)
    4568:	8fbf001c 	lw	ra,28(sp)
    456c:	27bd0020 	addiu	sp,sp,32
    4570:	03e00008 	jr	ra
    4574:	00000000 	nop

00004578 <func_8002F758>:
    4578:	27bdffd8 	addiu	sp,sp,-40
    457c:	44866000 	mtc1	a2,$f12
    4580:	c7a40038 	lwc1	$f4,56(sp)
    4584:	8faf003c 	lw	t7,60(sp)
    4588:	afa70034 	sw	a3,52(sp)
    458c:	00073c00 	sll	a3,a3,0x10
    4590:	afbf0024 	sw	ra,36(sp)
    4594:	240e0001 	li	t6,1
    4598:	44066000 	mfc1	a2,$f12
    459c:	00073c03 	sra	a3,a3,0x10
    45a0:	afae0014 	sw	t6,20(sp)
    45a4:	e7a40010 	swc1	$f4,16(sp)
    45a8:	0c000000 	jal	0 <ActorShape_Init>
    45ac:	afaf0018 	sw	t7,24(sp)
    45b0:	8fbf0024 	lw	ra,36(sp)
    45b4:	27bd0028 	addiu	sp,sp,40
    45b8:	03e00008 	jr	ra
    45bc:	00000000 	nop

000045c0 <func_8002F7A0>:
    45c0:	44866000 	mtc1	a2,$f12
    45c4:	27bdffe0 	addiu	sp,sp,-32
    45c8:	c7a40030 	lwc1	$f4,48(sp)
    45cc:	afa7002c 	sw	a3,44(sp)
    45d0:	00073c00 	sll	a3,a3,0x10
    45d4:	afbf001c 	sw	ra,28(sp)
    45d8:	44066000 	mfc1	a2,$f12
    45dc:	00073c03 	sra	a3,a3,0x10
    45e0:	afa00014 	sw	zero,20(sp)
    45e4:	0c000000 	jal	0 <ActorShape_Init>
    45e8:	e7a40010 	swc1	$f4,16(sp)
    45ec:	8fbf001c 	lw	ra,28(sp)
    45f0:	27bd0020 	addiu	sp,sp,32
    45f4:	03e00008 	jr	ra
    45f8:	00000000 	nop

000045fc <func_8002F7DC>:
    45fc:	27bdffe0 	addiu	sp,sp,-32
    4600:	afa40020 	sw	a0,32(sp)
    4604:	afa50024 	sw	a1,36(sp)
    4608:	8fa50020 	lw	a1,32(sp)
    460c:	3c070000 	lui	a3,0x0
    4610:	3c0e0000 	lui	t6,0x0
    4614:	24e70000 	addiu	a3,a3,0
    4618:	afbf001c 	sw	ra,28(sp)
    461c:	25ce0000 	addiu	t6,t6,0
    4620:	afae0014 	sw	t6,20(sp)
    4624:	afa70010 	sw	a3,16(sp)
    4628:	97a40026 	lhu	a0,38(sp)
    462c:	24060004 	li	a2,4
    4630:	0c000000 	jal	0 <ActorShape_Init>
    4634:	24a500e4 	addiu	a1,a1,228
    4638:	8fbf001c 	lw	ra,28(sp)
    463c:	27bd0020 	addiu	sp,sp,32
    4640:	03e00008 	jr	ra
    4644:	00000000 	nop

00004648 <Audio_PlayActorSound2>:
    4648:	27bdffe8 	addiu	sp,sp,-24
    464c:	afbf0014 	sw	ra,20(sp)
    4650:	afa5001c 	sw	a1,28(sp)
    4654:	30a5ffff 	andi	a1,a1,0xffff
    4658:	0c000000 	jal	0 <ActorShape_Init>
    465c:	248400e4 	addiu	a0,a0,228
    4660:	8fbf0014 	lw	ra,20(sp)
    4664:	27bd0018 	addiu	sp,sp,24
    4668:	03e00008 	jr	ra
    466c:	00000000 	nop

00004670 <func_8002F850>:
    4670:	27bdffe0 	addiu	sp,sp,-32
    4674:	afbf0014 	sw	ra,20(sp)
    4678:	afa40020 	sw	a0,32(sp)
    467c:	94ae0088 	lhu	t6,136(a1)
    4680:	8fa40020 	lw	a0,32(sp)
    4684:	00a03825 	move	a3,a1
    4688:	31cf0020 	andi	t7,t6,0x20
    468c:	11e0000c 	beqz	t7,46c0 <func_8002F850+0x50>
    4690:	248407c0 	addiu	a0,a0,1984
    4694:	3c0141a0 	lui	at,0x41a0
    4698:	44813000 	mtc1	at,$f6
    469c:	c4a40084 	lwc1	$f4,132(a1)
    46a0:	4606203c 	c.lt.s	$f4,$f6
    46a4:	00000000 	nop
    46a8:	45000003 	bc1f	46b8 <func_8002F850+0x48>
    46ac:	00000000 	nop
    46b0:	10000009 	b	46d8 <func_8002F850+0x68>
    46b4:	24030004 	li	v1,4
    46b8:	10000007 	b	46d8 <func_8002F850+0x68>
    46bc:	24030005 	li	v1,5
    46c0:	8ce50078 	lw	a1,120(a3)
    46c4:	90e6007d 	lbu	a2,125(a3)
    46c8:	0c000000 	jal	0 <ActorShape_Init>
    46cc:	afa70024 	sw	a3,36(sp)
    46d0:	8fa70024 	lw	a3,36(sp)
    46d4:	00401825 	move	v1,v0
    46d8:	24e400e4 	addiu	a0,a3,228
    46dc:	afa40018 	sw	a0,24(sp)
    46e0:	2405282f 	li	a1,10287
    46e4:	0c000000 	jal	0 <ActorShape_Init>
    46e8:	afa3001c 	sw	v1,28(sp)
    46ec:	8fa3001c 	lw	v1,28(sp)
    46f0:	8fa40018 	lw	a0,24(sp)
    46f4:	24650800 	addiu	a1,v1,2048
    46f8:	0c000000 	jal	0 <ActorShape_Init>
    46fc:	30a5ffff 	andi	a1,a1,0xffff
    4700:	8fbf0014 	lw	ra,20(sp)
    4704:	27bd0020 	addiu	sp,sp,32
    4708:	03e00008 	jr	ra
    470c:	00000000 	nop

00004710 <func_8002F8F0>:
    4710:	afa50004 	sw	a1,4(sp)
    4714:	8c8e0004 	lw	t6,4(a0)
    4718:	3c010008 	lui	at,0x8
    471c:	a4850020 	sh	a1,32(a0)
    4720:	01c17825 	or	t7,t6,at
    4724:	3c01efcf 	lui	at,0xefcf
    4728:	3421ffff 	ori	at,at,0xffff
    472c:	ac8f0004 	sw	t7,4(a0)
    4730:	01e1c824 	and	t9,t7,at
    4734:	03e00008 	jr	ra
    4738:	ac990004 	sw	t9,4(a0)

0000473c <func_8002F91C>:
    473c:	afa50004 	sw	a1,4(sp)
    4740:	8c8e0004 	lw	t6,4(a0)
    4744:	3c010010 	lui	at,0x10
    4748:	a4850020 	sh	a1,32(a0)
    474c:	01c17825 	or	t7,t6,at
    4750:	3c01efd7 	lui	at,0xefd7
    4754:	3421ffff 	ori	at,at,0xffff
    4758:	ac8f0004 	sw	t7,4(a0)
    475c:	01e1c824 	and	t9,t7,at
    4760:	03e00008 	jr	ra
    4764:	ac990004 	sw	t9,4(a0)

00004768 <func_8002F948>:
    4768:	afa50004 	sw	a1,4(sp)
    476c:	8c8e0004 	lw	t6,4(a0)
    4770:	3c010020 	lui	at,0x20
    4774:	a4850020 	sh	a1,32(a0)
    4778:	01c17825 	or	t7,t6,at
    477c:	3c01efe7 	lui	at,0xefe7
    4780:	3421ffff 	ori	at,at,0xffff
    4784:	ac8f0004 	sw	t7,4(a0)
    4788:	01e1c824 	and	t9,t7,at
    478c:	03e00008 	jr	ra
    4790:	ac990004 	sw	t9,4(a0)

00004794 <func_8002F974>:
    4794:	afa50004 	sw	a1,4(sp)
    4798:	8c8e0004 	lw	t6,4(a0)
    479c:	3c01efc7 	lui	at,0xefc7
    47a0:	3421ffff 	ori	at,at,0xffff
    47a4:	01c17824 	and	t7,t6,at
    47a8:	ac8f0004 	sw	t7,4(a0)
    47ac:	03e00008 	jr	ra
    47b0:	a4850020 	sh	a1,32(a0)

000047b4 <func_8002F994>:
    47b4:	8c8e0004 	lw	t6,4(a0)
    47b8:	3c011000 	lui	at,0x1000
    47bc:	24080003 	li	t0,3
    47c0:	01c17825 	or	t7,t6,at
    47c4:	3c01ffc7 	lui	at,0xffc7
    47c8:	3421ffff 	ori	at,at,0xffff
    47cc:	01e1c824 	and	t9,t7,at
    47d0:	ac8f0004 	sw	t7,4(a0)
    47d4:	28a10028 	slti	at,a1,40
    47d8:	10200003 	beqz	at,47e8 <func_8002F994+0x34>
    47dc:	ac990004 	sw	t9,4(a0)
    47e0:	03e00008 	jr	ra
    47e4:	a4880020 	sh	t0,32(a0)
    47e8:	28a10064 	slti	at,a1,100
    47ec:	10200004 	beqz	at,4800 <func_8002F994+0x4c>
    47f0:	240a0001 	li	t2,1
    47f4:	24090002 	li	t1,2
    47f8:	03e00008 	jr	ra
    47fc:	a4890020 	sh	t1,32(a0)
    4800:	a48a0020 	sh	t2,32(a0)
    4804:	03e00008 	jr	ra
    4808:	00000000 	nop

0000480c <func_8002F9EC>:
    480c:	27bdffe8 	addiu	sp,sp,-24
    4810:	afa5001c 	sw	a1,28(sp)
    4814:	afbf0014 	sw	ra,20(sp)
    4818:	afa40018 	sw	a0,24(sp)
    481c:	afa60020 	sw	a2,32(sp)
    4820:	00c02825 	move	a1,a2
    4824:	00e03025 	move	a2,a3
    4828:	0c000000 	jal	0 <ActorShape_Init>
    482c:	248407c0 	addiu	a0,a0,1984
    4830:	24010008 	li	at,8
    4834:	1441000d 	bne	v0,at,486c <func_8002F9EC+0x60>
    4838:	8fa40018 	lw	a0,24(sp)
    483c:	3c010001 	lui	at,0x1
    4840:	00240821 	addu	at,at,a0
    4844:	240e0001 	li	t6,1
    4848:	a42e1d30 	sh	t6,7472(at)
    484c:	8fa60028 	lw	a2,40(sp)
    4850:	0c000000 	jal	0 <ActorShape_Init>
    4854:	00002825 	move	a1,zero
    4858:	8fa4001c 	lw	a0,28(sp)
    485c:	0c000000 	jal	0 <ActorShape_Init>
    4860:	2405182c 	li	a1,6188
    4864:	10000002 	b	4870 <func_8002F9EC+0x64>
    4868:	24020001 	li	v0,1
    486c:	00001025 	move	v0,zero
    4870:	8fbf0014 	lw	ra,20(sp)
    4874:	27bd0018 	addiu	sp,sp,24
    4878:	03e00008 	jr	ra
    487c:	00000000 	nop

00004880 <func_8002FA60>:
    4880:	3c020000 	lui	v0,0x0
    4884:	24420000 	addiu	v0,v0,0
    4888:	8c4e0e80 	lw	t6,3712(v0)
    488c:	27bdffd8 	addiu	sp,sp,-40
    4890:	afbf0024 	sw	ra,36(sp)
    4894:	11c0001c 	beqz	t6,4908 <func_8002FA60+0x88>
    4898:	afa40028 	sw	a0,40(sp)
    489c:	8c580e64 	lw	t8,3684(v0)
    48a0:	8c590e68 	lw	t9,3688(v0)
    48a4:	8c480e6c 	lw	t0,3692(v0)
    48a8:	44982000 	mtc1	t8,$f4
    48ac:	44994000 	mtc1	t9,$f8
    48b0:	44888000 	mtc1	t0,$f16
    48b4:	468021a0 	cvt.s.w	$f6,$f4
    48b8:	8c490e70 	lw	t1,3696(v0)
    48bc:	8c4a0e74 	lw	t2,3700(v0)
    48c0:	8c4b0e78 	lw	t3,3704(v0)
    48c4:	8c4c0e7c 	lw	t4,3708(v0)
    48c8:	468042a0 	cvt.s.w	$f10,$f8
    48cc:	8c4d0e84 	lw	t5,3716(v0)
    48d0:	8c4e0e88 	lw	t6,3720(v0)
    48d4:	240f0028 	li	t7,40
    48d8:	a04f13b3 	sb	t7,5043(v0)
    48dc:	468084a0 	cvt.s.w	$f18,$f16
    48e0:	e44613a0 	swc1	$f6,5024(v0)
    48e4:	e44a13a4 	swc1	$f10,5028(v0)
    48e8:	a44913ac 	sh	t1,5036(v0)
    48ec:	a44a13ae 	sh	t2,5038(v0)
    48f0:	a44b13b0 	sh	t3,5040(v0)
    48f4:	e45213a8 	swc1	$f18,5032(v0)
    48f8:	a04c13b2 	sb	t4,5042(v0)
    48fc:	ac4d13b4 	sw	t5,5044(v0)
    4900:	10000006 	b	491c <func_8002FA60+0x9c>
    4904:	ac4e13b8 	sw	t6,5048(v0)
    4908:	44807000 	mtc1	zero,$f14
    490c:	a04013b3 	sb	zero,5043(v0)
    4910:	e44e13a0 	swc1	$f14,5024(v0)
    4914:	e44e13a4 	swc1	$f14,5028(v0)
    4918:	e44e13a8 	swc1	$f14,5032(v0)
    491c:	3c0142a0 	lui	at,0x42a0
    4920:	44813000 	mtc1	at,$f6
    4924:	c44413a4 	lwc1	$f4,5028(v0)
    4928:	c44013a0 	lwc1	$f0,5024(v0)
    492c:	c44c13a8 	lwc1	$f12,5032(v0)
    4930:	46062080 	add.s	$f2,$f4,$f6
    4934:	3c040000 	lui	a0,0x0
    4938:	240800ff 	li	t0,255
    493c:	4600020d 	trunc.w.s	$f8,$f0
    4940:	240900ff 	li	t1,255
    4944:	240a00ff 	li	t2,255
    4948:	4600128d 	trunc.w.s	$f10,$f2
    494c:	44054000 	mfc1	a1,$f8
    4950:	240bffff 	li	t3,-1
    4954:	4600640d 	trunc.w.s	$f16,$f12
    4958:	44065000 	mfc1	a2,$f10
    495c:	00052c00 	sll	a1,a1,0x10
    4960:	00052c03 	sra	a1,a1,0x10
    4964:	44078000 	mfc1	a3,$f16
    4968:	00063400 	sll	a2,a2,0x10
    496c:	00063403 	sra	a2,a2,0x10
    4970:	00073c00 	sll	a3,a3,0x10
    4974:	00073c03 	sra	a3,a3,0x10
    4978:	afab001c 	sw	t3,28(sp)
    497c:	afaa0018 	sw	t2,24(sp)
    4980:	afa90014 	sw	t1,20(sp)
    4984:	afa80010 	sw	t0,16(sp)
    4988:	0c000000 	jal	0 <ActorShape_Init>
    498c:	24840000 	addiu	a0,a0,0
    4990:	8fa40028 	lw	a0,40(sp)
    4994:	3c060000 	lui	a2,0x0
    4998:	24c60000 	addiu	a2,a2,0
    499c:	0c000000 	jal	0 <ActorShape_Init>
    49a0:	248507a8 	addiu	a1,a0,1960
    49a4:	3c010000 	lui	at,0x0
    49a8:	ac220000 	sw	v0,0(at)
    49ac:	8fbf0024 	lw	ra,36(sp)
    49b0:	3c010000 	lui	at,0x0
    49b4:	44809000 	mtc1	zero,$f18
    49b8:	ac200000 	sw	zero,0(at)
    49bc:	3c010000 	lui	at,0x0
    49c0:	27bd0028 	addiu	sp,sp,40
    49c4:	03e00008 	jr	ra
    49c8:	e4320000 	swc1	$f18,0(at)

000049cc <func_8002FBAC>:
    49cc:	27bdff08 	addiu	sp,sp,-248
    49d0:	afbf0024 	sw	ra,36(sp)
    49d4:	afa400f8 	sw	a0,248(sp)
    49d8:	8c850000 	lw	a1,0(a0)
    49dc:	3c060000 	lui	a2,0x0
    49e0:	24c60000 	addiu	a2,a2,0
    49e4:	27a400dc 	addiu	a0,sp,220
    49e8:	240714bc 	li	a3,5308
    49ec:	0c000000 	jal	0 <ActorShape_Init>
    49f0:	afa500ec 	sw	a1,236(sp)
    49f4:	3c080000 	lui	t0,0x0
    49f8:	25080000 	addiu	t0,t0,0
    49fc:	810313b3 	lb	v1,5043(t0)
    4a00:	241800ff 	li	t8,255
    4a04:	10600224 	beqz	v1,5298 <func_8002FBAC+0x8cc>
    4a08:	2467ffd8 	addiu	a3,v1,-40
    4a0c:	8d0f0004 	lw	t7,4(t0)
    4a10:	3c014270 	lui	at,0x4270
    4a14:	00e04825 	move	t1,a3
    4a18:	15e00005 	bnez	t7,4a30 <func_8002FBAC+0x64>
    4a1c:	3c040000 	lui	a0,0x0
    4a20:	3c0142a0 	lui	at,0x42a0
    4a24:	44812000 	mtc1	at,$f4
    4a28:	10000004 	b	4a3c <func_8002FBAC+0x70>
    4a2c:	e7a400d8 	swc1	$f4,216(sp)
    4a30:	44813000 	mtc1	at,$f6
    4a34:	00000000 	nop
    4a38:	e7a600d8 	swc1	$f6,216(sp)
    4a3c:	3c013f80 	lui	at,0x3f80
    4a40:	44819000 	mtc1	at,$f18
    4a44:	afb800d0 	sw	t8,208(sp)
    4a48:	04e10014 	bgez	a3,4a9c <func_8002FBAC+0xd0>
    4a4c:	e7b200d4 	swc1	$f18,212(sp)
    4a50:	24630001 	addiu	v1,v1,1
    4a54:	04600003 	bltz	v1,4a64 <func_8002FBAC+0x98>
    4a58:	a10313b3 	sb	v1,5043(t0)
    4a5c:	10000002 	b	4a68 <func_8002FBAC+0x9c>
    4a60:	00601025 	move	v0,v1
    4a64:	00031023 	negu	v0,v1
    4a68:	44824000 	mtc1	v0,$f8
    4a6c:	3c010000 	lui	at,0x0
    4a70:	c4240000 	lwc1	$f4,0(at)
    4a74:	468042a0 	cvt.s.w	$f10,$f8
    4a78:	3c040000 	lui	a0,0x0
    4a7c:	24840000 	addiu	a0,a0,0
    4a80:	2419003c 	li	t9,60
    4a84:	ac990000 	sw	t9,0(a0)
    4a88:	3c010000 	lui	at,0x0
    4a8c:	46045182 	mul.s	$f6,$f10,$f4
    4a90:	e4320000 	swc1	$f18,0(at)
    4a94:	10000128 	b	4f38 <func_8002FBAC+0x56c>
    4a98:	e7a600d4 	swc1	$f6,212(sp)
    4a9c:	24840000 	addiu	a0,a0,0
    4aa0:	8c820000 	lw	v0,0(a0)
    4aa4:	10400003 	beqz	v0,4ab4 <func_8002FBAC+0xe8>
    4aa8:	244affff 	addiu	t2,v0,-1
    4aac:	10000122 	b	4f38 <func_8002FBAC+0x56c>
    4ab0:	ac8a0000 	sw	t2,0(a0)
    4ab4:	3c010000 	lui	at,0x0
    4ab8:	c4200000 	lwc1	$f0,0(at)
    4abc:	44804000 	mtc1	zero,$f8
    4ac0:	00000000 	nop
    4ac4:	4600403c 	c.lt.s	$f8,$f0
    4ac8:	00000000 	nop
    4acc:	450000b5 	bc1f	4da4 <func_8002FBAC+0x3d8>
    4ad0:	3c040000 	lui	a0,0x0
    4ad4:	3c050000 	lui	a1,0x0
    4ad8:	e7a000c0 	swc1	$f0,192(sp)
    4adc:	24a513a0 	addiu	a1,a1,5024
    4ae0:	24841368 	addiu	a0,a0,4968
    4ae4:	0c000000 	jal	0 <ActorShape_Init>
    4ae8:	27a600b4 	addiu	a2,sp,180
    4aec:	3c013f80 	lui	at,0x3f80
    4af0:	44819000 	mtc1	at,$f18
    4af4:	3c0141a0 	lui	at,0x41a0
    4af8:	44815000 	mtc1	at,$f10
    4afc:	3c040000 	lui	a0,0x0
    4b00:	46000406 	mov.s	$f16,$f0
    4b04:	460a003c 	c.lt.s	$f0,$f10
    4b08:	3c010000 	lui	at,0x0
    4b0c:	24840000 	addiu	a0,a0,0
    4b10:	24050000 	li	a1,0
    4b14:	4502000b 	bc1fl	4b44 <func_8002FBAC+0x178>
    4b18:	c4860000 	lwc1	$f6,0(a0)
    4b1c:	44802000 	mtc1	zero,$f4
    4b20:	3c040000 	lui	a0,0x0
    4b24:	3c050000 	lui	a1,0x0
    4b28:	24a51368 	addiu	a1,a1,4968
    4b2c:	248413a0 	addiu	a0,a0,5024
    4b30:	0c000000 	jal	0 <ActorShape_Init>
    4b34:	e4240000 	swc1	$f4,0(at)
    4b38:	10000048 	b	4c5c <func_8002FBAC+0x290>
    4b3c:	3c0140c0 	lui	at,0x40c0
    4b40:	c4860000 	lwc1	$f6,0(a0)
    4b44:	3c0141a0 	lui	at,0x41a0
    4b48:	44815000 	mtc1	at,$f10
    4b4c:	46069203 	div.s	$f8,$f18,$f6
    4b50:	3c010000 	lui	at,0x0
    4b54:	c4240000 	lwc1	$f4,0(at)
    4b58:	3c010000 	lui	at,0x0
    4b5c:	46004302 	mul.s	$f12,$f8,$f0
    4b60:	460c5383 	div.s	$f14,$f10,$f12
    4b64:	4604703c 	c.lt.s	$f14,$f4
    4b68:	00000000 	nop
    4b6c:	45020003 	bc1fl	4b7c <func_8002FBAC+0x1b0>
    4b70:	44067000 	mfc1	a2,$f14
    4b74:	c42e0000 	lwc1	$f14,0(at)
    4b78:	44067000 	mfc1	a2,$f14
    4b7c:	e7ac009c 	swc1	$f12,156(sp)
    4b80:	0c000000 	jal	0 <ActorShape_Init>
    4b84:	e7b000b0 	swc1	$f16,176(sp)
    4b88:	3c010000 	lui	at,0x0
    4b8c:	c4260000 	lwc1	$f6,0(at)
    4b90:	c7a800c0 	lwc1	$f8,192(sp)
    4b94:	c7b000b0 	lwc1	$f16,176(sp)
    4b98:	3c010000 	lui	at,0x0
    4b9c:	46083283 	div.s	$f10,$f6,$f8
    4ba0:	c7a800b4 	lwc1	$f8,180(sp)
    4ba4:	c4261368 	lwc1	$f6,4968(at)
    4ba8:	3c010000 	lui	at,0x0
    4bac:	c7ac009c 	lwc1	$f12,156(sp)
    4bb0:	3c040000 	lui	a0,0x0
    4bb4:	24840000 	addiu	a0,a0,0
    4bb8:	46105102 	mul.s	$f4,$f10,$f16
    4bbc:	46102083 	div.s	$f2,$f4,$f16
    4bc0:	46024282 	mul.s	$f10,$f8,$f2
    4bc4:	460a3100 	add.s	$f4,$f6,$f10
    4bc8:	c7a600b8 	lwc1	$f6,184(sp)
    4bcc:	46023282 	mul.s	$f10,$f6,$f2
    4bd0:	e42413a0 	swc1	$f4,5024(at)
    4bd4:	3c010000 	lui	at,0x0
    4bd8:	c428136c 	lwc1	$f8,4972(at)
    4bdc:	3c010000 	lui	at,0x0
    4be0:	460a4100 	add.s	$f4,$f8,$f10
    4be4:	c7a800bc 	lwc1	$f8,188(sp)
    4be8:	46024282 	mul.s	$f10,$f8,$f2
    4bec:	e42413a4 	swc1	$f4,5028(at)
    4bf0:	3c010000 	lui	at,0x0
    4bf4:	c4261370 	lwc1	$f6,4976(at)
    4bf8:	3c010000 	lui	at,0x0
    4bfc:	460a3100 	add.s	$f4,$f6,$f10
    4c00:	e42413a8 	swc1	$f4,5032(at)
    4c04:	3c013f00 	lui	at,0x3f00
    4c08:	44814000 	mtc1	at,$f8
    4c0c:	3c010000 	lui	at,0x0
    4c10:	c7a400d8 	lwc1	$f4,216(sp)
    4c14:	46086302 	mul.s	$f12,$f12,$f8
    4c18:	c4280000 	lwc1	$f8,0(at)
    4c1c:	460c8381 	sub.s	$f14,$f16,$f12
    4c20:	460c6182 	mul.s	$f6,$f12,$f12
    4c24:	00000000 	nop
    4c28:	460e7282 	mul.s	$f10,$f14,$f14
    4c2c:	460a3001 	sub.s	$f0,$f6,$f10
    4c30:	46000004 	sqrt.s	$f0,$f0
    4c34:	46080182 	mul.s	$f6,$f0,$f8
    4c38:	46062280 	add.s	$f10,$f4,$f6
    4c3c:	e7aa00d8 	swc1	$f10,216(sp)
    4c40:	c7a800d8 	lwc1	$f8,216(sp)
    4c44:	46004121 	cvt.d.s	$f4,$f8
    4c48:	44072000 	mfc1	a3,$f4
    4c4c:	44062800 	mfc1	a2,$f5
    4c50:	0c000000 	jal	0 <ActorShape_Init>
    4c54:	00000000 	nop
    4c58:	3c0140c0 	lui	at,0x40c0
    4c5c:	44816000 	mtc1	at,$f12
    4c60:	0c000000 	jal	0 <ActorShape_Init>
    4c64:	00000000 	nop
    4c68:	3c010000 	lui	at,0x0
    4c6c:	c42613a0 	lwc1	$f6,5024(at)
    4c70:	46060280 	add.s	$f10,$f0,$f6
    4c74:	0c000000 	jal	0 <ActorShape_Init>
    4c78:	e7aa00a4 	swc1	$f10,164(sp)
    4c7c:	3c0140c0 	lui	at,0x40c0
    4c80:	44816000 	mtc1	at,$f12
    4c84:	3c010000 	lui	at,0x0
    4c88:	c42813a4 	lwc1	$f8,5028(at)
    4c8c:	3c0142a0 	lui	at,0x42a0
    4c90:	460c0282 	mul.s	$f10,$f0,$f12
    4c94:	44812000 	mtc1	at,$f4
    4c98:	00000000 	nop
    4c9c:	46044180 	add.s	$f6,$f8,$f4
    4ca0:	46065200 	add.s	$f8,$f10,$f6
    4ca4:	0c000000 	jal	0 <ActorShape_Init>
    4ca8:	e7a800a8 	swc1	$f8,168(sp)
    4cac:	3c010000 	lui	at,0x0
    4cb0:	c42413a8 	lwc1	$f4,5032(at)
    4cb4:	3c0b0000 	lui	t3,0x0
    4cb8:	3c0c0000 	lui	t4,0x0
    4cbc:	46040280 	add.s	$f10,$f0,$f4
    4cc0:	258c0000 	addiu	t4,t4,0
    4cc4:	256b0000 	addiu	t3,t3,0
    4cc8:	3c060000 	lui	a2,0x0
    4ccc:	3c070000 	lui	a3,0x0
    4cd0:	240d03e8 	li	t5,1000
    4cd4:	240e0010 	li	t6,16
    4cd8:	e7aa00ac 	swc1	$f10,172(sp)
    4cdc:	afae001c 	sw	t6,28(sp)
    4ce0:	afad0018 	sw	t5,24(sp)
    4ce4:	24e70000 	addiu	a3,a3,0
    4ce8:	24c60000 	addiu	a2,a2,0
    4cec:	afab0010 	sw	t3,16(sp)
    4cf0:	afac0014 	sw	t4,20(sp)
    4cf4:	8fa400f8 	lw	a0,248(sp)
    4cf8:	0c000000 	jal	0 <ActorShape_Init>
    4cfc:	27a500a4 	addiu	a1,sp,164
    4d00:	3c010000 	lui	at,0x0
    4d04:	c4280000 	lwc1	$f8,0(at)
    4d08:	44803000 	mtc1	zero,$f6
    4d0c:	3c0f0000 	lui	t7,0x0
    4d10:	25ef1368 	addiu	t7,t7,4968
    4d14:	46083032 	c.eq.s	$f6,$f8
    4d18:	3c080000 	lui	t0,0x0
    4d1c:	45000017 	bc1f	4d7c <func_8002FBAC+0x3b0>
    4d20:	00000000 	nop
    4d24:	8df90000 	lw	t9,0(t7)
    4d28:	3c020000 	lui	v0,0x0
    4d2c:	244213a0 	addiu	v0,v0,5024
    4d30:	ac590000 	sw	t9,0(v0)
    4d34:	8df80004 	lw	t8,4(t7)
    4d38:	240a06ff 	li	t2,1791
    4d3c:	3c010000 	lui	at,0x0
    4d40:	ac580004 	sw	t8,4(v0)
    4d44:	8df90008 	lw	t9,8(t7)
    4d48:	240b0028 	li	t3,40
    4d4c:	ac590008 	sw	t9,8(v0)
    4d50:	8df8000c 	lw	t8,12(t7)
    4d54:	ac58000c 	sw	t8,12(v0)
    4d58:	8df90010 	lw	t9,16(t7)
    4d5c:	ac590010 	sw	t9,16(v0)
    4d60:	8df80014 	lw	t8,20(t7)
    4d64:	ac580014 	sw	t8,20(v0)
    4d68:	8df90018 	lw	t9,24(t7)
    4d6c:	ac590018 	sw	t9,24(v0)
    4d70:	a42a13ae 	sh	t2,5038(at)
    4d74:	3c010000 	lui	at,0x0
    4d78:	a02b13b3 	sb	t3,5043(at)
    4d7c:	3c020000 	lui	v0,0x0
    4d80:	244213a0 	addiu	v0,v0,5024
    4d84:	8c4d0000 	lw	t5,0(v0)
    4d88:	8c4c0004 	lw	t4,4(v0)
    4d8c:	25080000 	addiu	t0,t0,0
    4d90:	ac4d0000 	sw	t5,0(v0)
    4d94:	8c4d0008 	lw	t5,8(v0)
    4d98:	ac4c0004 	sw	t4,4(v0)
    4d9c:	10000066 	b	4f38 <func_8002FBAC+0x56c>
    4da0:	ac4d0008 	sw	t5,8(v0)
    4da4:	58e00065 	blezl	a3,4f3c <func_8002FBAC+0x570>
    4da8:	8fae00f8 	lw	t6,248(sp)
    4dac:	44872000 	mtc1	a3,$f4
    4db0:	3c010000 	lui	at,0x0
    4db4:	c4260000 	lwc1	$f6,0(at)
    4db8:	468022a0 	cvt.s.w	$f10,$f4
    4dbc:	8fae00f8 	lw	t6,248(sp)
    4dc0:	46065302 	mul.s	$f12,$f10,$f6
    4dc4:	4612603c 	c.lt.s	$f12,$f18
    4dc8:	00000000 	nop
    4dcc:	45020042 	bc1fl	4ed8 <func_8002FBAC+0x50c>
    4dd0:	00076100 	sll	t4,a3,0x4
    4dd4:	c5c800e0 	lwc1	$f8,224(t6)
    4dd8:	c7aa00d8 	lwc1	$f10,216(sp)
    4ddc:	3c050000 	lui	a1,0x0
    4de0:	e7a8007c 	swc1	$f8,124(sp)
    4de4:	c5c400e4 	lwc1	$f4,228(t6)
    4de8:	24a513a0 	addiu	a1,a1,5024
    4dec:	27a4007c 	addiu	a0,sp,124
    4df0:	460a2181 	sub.s	$f6,$f4,$f10
    4df4:	27a60070 	addiu	a2,sp,112
    4df8:	e7a60080 	swc1	$f6,128(sp)
    4dfc:	c5c800e8 	lwc1	$f8,232(t6)
    4e00:	e7ac0030 	swc1	$f12,48(sp)
    4e04:	afa900cc 	sw	t1,204(sp)
    4e08:	afa70034 	sw	a3,52(sp)
    4e0c:	afa300f0 	sw	v1,240(sp)
    4e10:	0c000000 	jal	0 <ActorShape_Init>
    4e14:	e7a80084 	swc1	$f8,132(sp)
    4e18:	8fa70034 	lw	a3,52(sp)
    4e1c:	3c013f80 	lui	at,0x3f80
    4e20:	44819000 	mtc1	at,$f18
    4e24:	24efffff 	addiu	t7,a3,-1
    4e28:	448f2000 	mtc1	t7,$f4
    4e2c:	3c010000 	lui	at,0x0
    4e30:	c4260000 	lwc1	$f6,0(at)
    4e34:	468022a0 	cvt.s.w	$f10,$f4
    4e38:	c7ac0030 	lwc1	$f12,48(sp)
    4e3c:	3c010000 	lui	at,0x0
    4e40:	3c190000 	lui	t9,0x0
    4e44:	273913a0 	addiu	t9,t9,5024
    4e48:	3c180000 	lui	t8,0x0
    4e4c:	46065202 	mul.s	$f8,$f10,$f6
    4e50:	460c9281 	sub.s	$f10,$f18,$f12
    4e54:	8fa300f0 	lw	v1,240(sp)
    4e58:	8fa900cc 	lw	t1,204(sp)
    4e5c:	271813a0 	addiu	t8,t8,5024
    4e60:	3c080000 	lui	t0,0x0
    4e64:	25080000 	addiu	t0,t0,0
    4e68:	46089101 	sub.s	$f4,$f18,$f8
    4e6c:	46045183 	div.s	$f6,$f10,$f4
    4e70:	c7aa0070 	lwc1	$f10,112(sp)
    4e74:	46003202 	mul.s	$f8,$f6,$f0
    4e78:	c7a6007c 	lwc1	$f6,124(sp)
    4e7c:	46004083 	div.s	$f2,$f8,$f0
    4e80:	46025102 	mul.s	$f4,$f10,$f2
    4e84:	c7aa0074 	lwc1	$f10,116(sp)
    4e88:	46062200 	add.s	$f8,$f4,$f6
    4e8c:	46025102 	mul.s	$f4,$f10,$f2
    4e90:	c7a60080 	lwc1	$f6,128(sp)
    4e94:	c7aa0078 	lwc1	$f10,120(sp)
    4e98:	e42813a0 	swc1	$f8,5024(at)
    4e9c:	3c010000 	lui	at,0x0
    4ea0:	46062200 	add.s	$f8,$f4,$f6
    4ea4:	46025102 	mul.s	$f4,$f10,$f2
    4ea8:	c7a60084 	lwc1	$f6,132(sp)
    4eac:	e42813a4 	swc1	$f8,5028(at)
    4eb0:	3c010000 	lui	at,0x0
    4eb4:	46062200 	add.s	$f8,$f4,$f6
    4eb8:	e42813a8 	swc1	$f8,5032(at)
    4ebc:	8f2b0000 	lw	t3,0(t9)
    4ec0:	af0b0000 	sw	t3,0(t8)
    4ec4:	8f2a0004 	lw	t2,4(t9)
    4ec8:	af0a0004 	sw	t2,4(t8)
    4ecc:	8f2b0008 	lw	t3,8(t9)
    4ed0:	af0b0008 	sw	t3,8(t8)
    4ed4:	00076100 	sll	t4,a3,0x4
    4ed8:	01876023 	subu	t4,t4,a3
    4edc:	000c6040 	sll	t4,t4,0x1
    4ee0:	240d00ff 	li	t5,255
    4ee4:	01ac1023 	subu	v0,t5,t4
    4ee8:	04410005 	bgez	v0,4f00 <func_8002FBAC+0x534>
    4eec:	afa200d0 	sw	v0,208(sp)
    4ef0:	ad000e80 	sw	zero,3712(t0)
    4ef4:	a10013b3 	sb	zero,5043(t0)
    4ef8:	10000003 	b	4f08 <func_8002FBAC+0x53c>
    4efc:	afa000d0 	sw	zero,208(sp)
    4f00:	24630001 	addiu	v1,v1,1
    4f04:	a10313b3 	sb	v1,5043(t0)
    4f08:	44895000 	mtc1	t1,$f10
    4f0c:	3c010000 	lui	at,0x0
    4f10:	d4280000 	ldc1	$f8,0(at)
    4f14:	46805120 	cvt.s.w	$f4,$f10
    4f18:	3c013ff0 	lui	at,0x3ff0
    4f1c:	44812800 	mtc1	at,$f5
    4f20:	460021a1 	cvt.d.s	$f6,$f4
    4f24:	44802000 	mtc1	zero,$f4
    4f28:	46283282 	mul.d	$f10,$f6,$f8
    4f2c:	46245180 	add.d	$f6,$f10,$f4
    4f30:	46203220 	cvt.s.d	$f8,$f6
    4f34:	e7a800d4 	swc1	$f8,212(sp)
    4f38:	8fae00f8 	lw	t6,248(sp)
    4f3c:	91cf1d6c 	lbu	t7,7532(t6)
    4f40:	55e000ae 	bnezl	t7,51fc <func_8002FBAC+0x830>
    4f44:	c50213a4 	lwc1	$f2,5028(t0)
    4f48:	850213b0 	lh	v0,5040(t0)
    4f4c:	8d180000 	lw	t8,0(t0)
    4f50:	3c010001 	lui	at,0x1
    4f54:	145800a8 	bne	v0,t8,51f8 <func_8002FBAC+0x82c>
    4f58:	01c11021 	addu	v0,t6,at
    4f5c:	80591cbc 	lb	t9,7356(v0)
    4f60:	910a13b2 	lbu	t2,5042(t0)
    4f64:	8fab00ec 	lw	t3,236(sp)
    4f68:	24050019 	li	a1,25
    4f6c:	572a00a3 	bnel	t9,t2,51fc <func_8002FBAC+0x830>
    4f70:	c50213a4 	lwc1	$f2,5028(t0)
    4f74:	8d6402d0 	lw	a0,720(t3)
    4f78:	0c000000 	jal	0 <ActorShape_Init>
    4f7c:	afa20034 	sw	v0,52(sp)
    4f80:	8fad00ec 	lw	t5,236(sp)
    4f84:	3c030000 	lui	v1,0x0
    4f88:	24630000 	addiu	v1,v1,0
    4f8c:	ada202d0 	sw	v0,720(t5)
    4f90:	c46013a8 	lwc1	$f0,5032(v1)
    4f94:	c7aa00d8 	lwc1	$f10,216(sp)
    4f98:	c46213a4 	lwc1	$f2,5028(v1)
    4f9c:	44060000 	mfc1	a2,$f0
    4fa0:	c46c13a0 	lwc1	$f12,5024(v1)
    4fa4:	00003825 	move	a3,zero
    4fa8:	0c000000 	jal	0 <ActorShape_Init>
    4fac:	460a1380 	add.s	$f14,$f2,$f10
    4fb0:	3c010000 	lui	at,0x0
    4fb4:	c4240000 	lwc1	$f4,0(at)
    4fb8:	c7a600d4 	lwc1	$f6,212(sp)
    4fbc:	24070001 	li	a3,1
    4fc0:	46062302 	mul.s	$f12,$f4,$f6
    4fc4:	44066000 	mfc1	a2,$f12
    4fc8:	0c000000 	jal	0 <ActorShape_Init>
    4fcc:	46006386 	mov.s	$f14,$f12
    4fd0:	8fa400f8 	lw	a0,248(sp)
    4fd4:	3c010001 	lui	at,0x1
    4fd8:	34211da0 	ori	at,at,0x1da0
    4fdc:	24050001 	li	a1,1
    4fe0:	0c000000 	jal	0 <ActorShape_Init>
    4fe4:	00812021 	addu	a0,a0,at
    4fe8:	0c000000 	jal	0 <ActorShape_Init>
    4fec:	00000000 	nop
    4ff0:	8fa400ec 	lw	a0,236(sp)
    4ff4:	3c0fe700 	lui	t7,0xe700
    4ff8:	3c0efa00 	lui	t6,0xfa00
    4ffc:	8c8202d0 	lw	v0,720(a0)
    5000:	35ce8080 	ori	t6,t6,0x8080
    5004:	2401c800 	li	at,-14336
    5008:	244c0008 	addiu	t4,v0,8
    500c:	ac8c02d0 	sw	t4,720(a0)
    5010:	ac400004 	sw	zero,4(v0)
    5014:	ac4f0000 	sw	t7,0(v0)
    5018:	8c8202d0 	lw	v0,720(a0)
    501c:	3c0f64c8 	lui	t7,0x64c8
    5020:	35ef00ff 	ori	t7,t7,0xff
    5024:	24580008 	addiu	t8,v0,8
    5028:	ac9802d0 	sw	t8,720(a0)
    502c:	ac4e0000 	sw	t6,0(v0)
    5030:	8fb900d0 	lw	t9,208(sp)
    5034:	3c0cfb00 	lui	t4,0xfb00
    5038:	332a00ff 	andi	t2,t9,0xff
    503c:	01415825 	or	t3,t2,at
    5040:	ac4b0004 	sw	t3,4(v0)
    5044:	8c8202d0 	lw	v0,720(a0)
    5048:	3c014f80 	lui	at,0x4f80
    504c:	244d0008 	addiu	t5,v0,8
    5050:	ac8d02d0 	sw	t5,720(a0)
    5054:	ac4f0004 	sw	t7,4(v0)
    5058:	ac4c0000 	sw	t4,0(v0)
    505c:	8fb80034 	lw	t8,52(sp)
    5060:	8f0e1de4 	lw	t6,7652(t8)
    5064:	000ec880 	sll	t9,t6,0x2
    5068:	032ec823 	subu	t9,t9,t6
    506c:	0019c900 	sll	t9,t9,0x4
    5070:	032ec823 	subu	t9,t9,t6
    5074:	0019c8c0 	sll	t9,t9,0x3
    5078:	032ec823 	subu	t9,t9,t6
    507c:	0019c880 	sll	t9,t9,0x2
    5080:	332affff 	andi	t2,t9,0xffff
    5084:	448a4000 	mtc1	t2,$f8
    5088:	05410004 	bgez	t2,509c <func_8002FBAC+0x6d0>
    508c:	468042a0 	cvt.s.w	$f10,$f8
    5090:	44812000 	mtc1	at,$f4
    5094:	00000000 	nop
    5098:	46045280 	add.s	$f10,$f10,$f4
    509c:	3c010000 	lui	at,0x0
    50a0:	c4260000 	lwc1	$f6,0(at)
    50a4:	3c014700 	lui	at,0x4700
    50a8:	44812000 	mtc1	at,$f4
    50ac:	46065202 	mul.s	$f8,$f10,$f6
    50b0:	24050001 	li	a1,1
    50b4:	0c000000 	jal	0 <ActorShape_Init>
    50b8:	46044303 	div.s	$f12,$f8,$f4
    50bc:	8fa700ec 	lw	a3,236(sp)
    50c0:	3c0dda38 	lui	t5,0xda38
    50c4:	35ad0003 	ori	t5,t5,0x3
    50c8:	8ce202d0 	lw	v0,720(a3)
    50cc:	3c050000 	lui	a1,0x0
    50d0:	24a50000 	addiu	a1,a1,0
    50d4:	244b0008 	addiu	t3,v0,8
    50d8:	aceb02d0 	sw	t3,720(a3)
    50dc:	ac4d0000 	sw	t5,0(v0)
    50e0:	8fac00f8 	lw	t4,248(sp)
    50e4:	24061552 	li	a2,5458
    50e8:	8d840000 	lw	a0,0(t4)
    50ec:	0c000000 	jal	0 <ActorShape_Init>
    50f0:	afa20058 	sw	v0,88(sp)
    50f4:	8fa30058 	lw	v1,88(sp)
    50f8:	3c040000 	lui	a0,0x0
    50fc:	24840000 	addiu	a0,a0,0
    5100:	ac620004 	sw	v0,4(v1)
    5104:	8fa500ec 	lw	a1,236(sp)
    5108:	3c18de00 	lui	t8,0xde00
    510c:	8ca202d0 	lw	v0,720(a1)
    5110:	244f0008 	addiu	t7,v0,8
    5114:	acaf02d0 	sw	t7,720(a1)
    5118:	ac440004 	sw	a0,4(v0)
    511c:	ac580000 	sw	t8,0(v0)
    5120:	0c000000 	jal	0 <ActorShape_Init>
    5124:	afa40030 	sw	a0,48(sp)
    5128:	8fae0034 	lw	t6,52(sp)
    512c:	3c014f80 	lui	at,0x4f80
    5130:	8dd91de4 	lw	t9,7652(t6)
    5134:	00195080 	sll	t2,t9,0x2
    5138:	01595021 	addu	t2,t2,t9
    513c:	000a5080 	sll	t2,t2,0x2
    5140:	01595023 	subu	t2,t2,t9
    5144:	000a5080 	sll	t2,t2,0x2
    5148:	01595023 	subu	t2,t2,t9
    514c:	000a5100 	sll	t2,t2,0x4
    5150:	314bffff 	andi	t3,t2,0xffff
    5154:	01606827 	nor	t5,t3,zero
    5158:	448d5000 	mtc1	t5,$f10
    515c:	05a10004 	bgez	t5,5170 <func_8002FBAC+0x7a4>
    5160:	468051a0 	cvt.s.w	$f6,$f10
    5164:	44814000 	mtc1	at,$f8
    5168:	00000000 	nop
    516c:	46083180 	add.s	$f6,$f6,$f8
    5170:	3c010000 	lui	at,0x0
    5174:	c4240000 	lwc1	$f4,0(at)
    5178:	3c014700 	lui	at,0x4700
    517c:	44814000 	mtc1	at,$f8
    5180:	46043282 	mul.s	$f10,$f6,$f4
    5184:	24050001 	li	a1,1
    5188:	0c000000 	jal	0 <ActorShape_Init>
    518c:	46085303 	div.s	$f12,$f10,$f8
    5190:	8fac00ec 	lw	t4,236(sp)
    5194:	3c18da38 	lui	t8,0xda38
    5198:	37180003 	ori	t8,t8,0x3
    519c:	8d8202d0 	lw	v0,720(t4)
    51a0:	3c050000 	lui	a1,0x0
    51a4:	24a50000 	addiu	a1,a1,0
    51a8:	244f0008 	addiu	t7,v0,8
    51ac:	ad8f02d0 	sw	t7,720(t4)
    51b0:	ac580000 	sw	t8,0(v0)
    51b4:	8fae00f8 	lw	t6,248(sp)
    51b8:	24061557 	li	a2,5463
    51bc:	8dc40000 	lw	a0,0(t6)
    51c0:	0c000000 	jal	0 <ActorShape_Init>
    51c4:	afa20050 	sw	v0,80(sp)
    51c8:	8fa30050 	lw	v1,80(sp)
    51cc:	3c0bde00 	lui	t3,0xde00
    51d0:	3c080000 	lui	t0,0x0
    51d4:	ac620004 	sw	v0,4(v1)
    51d8:	8fb900ec 	lw	t9,236(sp)
    51dc:	25080000 	addiu	t0,t0,0
    51e0:	8f2202d0 	lw	v0,720(t9)
    51e4:	244a0008 	addiu	t2,v0,8
    51e8:	af2a02d0 	sw	t2,720(t9)
    51ec:	ac4b0000 	sw	t3,0(v0)
    51f0:	8fad0030 	lw	t5,48(sp)
    51f4:	ac4d0004 	sw	t5,4(v0)
    51f8:	c50213a4 	lwc1	$f2,5028(t0)
    51fc:	c7a400d8 	lwc1	$f4,216(sp)
    5200:	c50c13a0 	lwc1	$f12,5024(t0)
    5204:	3c0143fa 	lui	at,0x43fa
    5208:	46041280 	add.s	$f10,$f2,$f4
    520c:	44812000 	mtc1	at,$f4
    5210:	c50013a8 	lwc1	$f0,5032(t0)
    5214:	4600618d 	trunc.w.s	$f6,$f12
    5218:	3c040000 	lui	a0,0x0
    521c:	240e00ff 	li	t6,255
    5220:	4600520d 	trunc.w.s	$f8,$f10
    5224:	c7aa00d4 	lwc1	$f10,212(sp)
    5228:	44053000 	mfc1	a1,$f6
    522c:	4600018d 	trunc.w.s	$f6,$f0
    5230:	44064000 	mfc1	a2,$f8
    5234:	460a2202 	mul.s	$f8,$f4,$f10
    5238:	240a00ff 	li	t2,255
    523c:	44073000 	mfc1	a3,$f6
    5240:	241900ff 	li	t9,255
    5244:	00052c00 	sll	a1,a1,0x10
    5248:	00063400 	sll	a2,a2,0x10
    524c:	00073c00 	sll	a3,a3,0x10
    5250:	4600418d 	trunc.w.s	$f6,$f8
    5254:	00073c03 	sra	a3,a3,0x10
    5258:	00063403 	sra	a2,a2,0x10
    525c:	00052c03 	sra	a1,a1,0x10
    5260:	440d3000 	mfc1	t5,$f6
    5264:	afb90018 	sw	t9,24(sp)
    5268:	afaa0014 	sw	t2,20(sp)
    526c:	afae0010 	sw	t6,16(sp)
    5270:	24840000 	addiu	a0,a0,0
    5274:	0c000000 	jal	0 <ActorShape_Init>
    5278:	afad001c 	sw	t5,28(sp)
    527c:	8faf00f8 	lw	t7,248(sp)
    5280:	3c060000 	lui	a2,0x0
    5284:	24c60000 	addiu	a2,a2,0
    5288:	27a400dc 	addiu	a0,sp,220
    528c:	24071562 	li	a3,5474
    5290:	0c000000 	jal	0 <ActorShape_Init>
    5294:	8de50000 	lw	a1,0(t7)
    5298:	8fbf0024 	lw	ra,36(sp)
    529c:	27bd00f8 	addiu	sp,sp,248
    52a0:	03e00008 	jr	ra
    52a4:	00000000 	nop

000052a8 <func_80030488>:
    52a8:	27bdffe8 	addiu	sp,sp,-24
    52ac:	afbf0014 	sw	ra,20(sp)
    52b0:	3c060000 	lui	a2,0x0
    52b4:	8cc60000 	lw	a2,0(a2)
    52b8:	0c000000 	jal	0 <ActorShape_Init>
    52bc:	248507a8 	addiu	a1,a0,1960
    52c0:	8fbf0014 	lw	ra,20(sp)
    52c4:	27bd0018 	addiu	sp,sp,24
    52c8:	03e00008 	jr	ra
    52cc:	00000000 	nop

000052d0 <func_800304B0>:
    52d0:	27bdffe8 	addiu	sp,sp,-24
    52d4:	afbf0014 	sw	ra,20(sp)
    52d8:	908e1c27 	lbu	t6,7207(a0)
    52dc:	51c00004 	beqzl	t6,52f0 <func_800304B0+0x20>
    52e0:	8fbf0014 	lw	ra,20(sp)
    52e4:	0c000000 	jal	0 <ActorShape_Init>
    52e8:	a0801c27 	sb	zero,7207(a0)
    52ec:	8fbf0014 	lw	ra,20(sp)
    52f0:	27bd0018 	addiu	sp,sp,24
    52f4:	03e00008 	jr	ra
    52f8:	00000000 	nop

000052fc <func_800304DC>:
    52fc:	27bdffd8 	addiu	sp,sp,-40
    5300:	afbf0024 	sw	ra,36(sp)
    5304:	afb20020 	sw	s2,32(sp)
    5308:	afb1001c 	sw	s1,28(sp)
    530c:	afb00018 	sw	s0,24(sp)
    5310:	afa60030 	sw	a2,48(sp)
    5314:	848e00a4 	lh	t6,164(a0)
    5318:	00808825 	move	s1,a0
    531c:	3c190000 	lui	t9,0x0
    5320:	000e78c0 	sll	t7,t6,0x3
    5324:	01ee7823 	subu	t7,t7,t6
    5328:	000f7880 	sll	t7,t7,0x2
    532c:	00a08025 	move	s0,a1
    5330:	25f800d4 	addiu	t8,t7,212
    5334:	27390000 	addiu	t9,t9,0
    5338:	00a02025 	move	a0,a1
    533c:	03199021 	addu	s2,t8,t9
    5340:	0c000000 	jal	0 <ActorShape_Init>
    5344:	24050140 	li	a1,320
    5348:	0c000000 	jal	0 <ActorShape_Init>
    534c:	00000000 	nop
    5350:	3c010001 	lui	at,0x1
    5354:	34211da0 	ori	at,at,0x1da0
    5358:	3c050000 	lui	a1,0x0
    535c:	24a50000 	addiu	a1,a1,0
    5360:	0c000000 	jal	0 <ActorShape_Init>
    5364:	02212021 	addu	a0,s1,at
    5368:	3c010001 	lui	at,0x1
    536c:	34211d60 	ori	at,at,0x1d60
    5370:	3c050000 	lui	a1,0x0
    5374:	24a50000 	addiu	a1,a1,0
    5378:	0c000000 	jal	0 <ActorShape_Init>
    537c:	02212021 	addu	a0,s1,at
    5380:	3c010000 	lui	at,0x0
    5384:	ac200010 	sw	zero,16(at)
    5388:	3c020000 	lui	v0,0x0
    538c:	24420020 	addiu	v0,v0,32
    5390:	3c010000 	lui	at,0x0
    5394:	a020001e 	sb	zero,30(at)
    5398:	a040003e 	sb	zero,62(v0)
    539c:	ac400030 	sw	zero,48(v0)
    53a0:	a040001e 	sb	zero,30(v0)
    53a4:	ac400010 	sw	zero,16(v0)
    53a8:	24420040 	addiu	v0,v0,64
    53ac:	24030003 	li	v1,3
    53b0:	240401d7 	li	a0,471
    53b4:	24630004 	addiu	v1,v1,4
    53b8:	ac400030 	sw	zero,48(v0)
    53bc:	a040003e 	sb	zero,62(v0)
    53c0:	ac400050 	sw	zero,80(v0)
    53c4:	a040005e 	sb	zero,94(v0)
    53c8:	ac400070 	sw	zero,112(v0)
    53cc:	a040007e 	sb	zero,126(v0)
    53d0:	24420080 	addiu	v0,v0,128
    53d4:	ac40ff90 	sw	zero,-112(v0)
    53d8:	1464fff6 	bne	v1,a0,53b4 <func_800304DC+0xb8>
    53dc:	a040ff9e 	sb	zero,-98(v0)
    53e0:	8e480000 	lw	t0,0(s2)
    53e4:	02202025 	move	a0,s1
    53e8:	26050128 	addiu	a1,s0,296
    53ec:	ae080114 	sw	t0,276(s0)
    53f0:	8e490004 	lw	t1,4(s2)
    53f4:	ae090104 	sw	t1,260(s0)
    53f8:	8e4a0008 	lw	t2,8(s2)
    53fc:	ae0a0118 	sw	t2,280(s0)
    5400:	8e4b000c 	lw	t3,12(s2)
    5404:	0c000000 	jal	0 <ActorShape_Init>
    5408:	ae0b0120 	sw	t3,288(s0)
    540c:	ae00013c 	sw	zero,316(s0)
    5410:	8fa50030 	lw	a1,48(sp)
    5414:	02002025 	move	a0,s0
    5418:	0c000000 	jal	0 <ActorShape_Init>
    541c:	02203025 	move	a2,s1
    5420:	2604006c 	addiu	a0,s0,108
    5424:	8e050020 	lw	a1,32(s0)
    5428:	0c000000 	jal	0 <ActorShape_Init>
    542c:	02203025 	move	a2,s1
    5430:	0c000000 	jal	0 <ActorShape_Init>
    5434:	02202025 	move	a0,s1
    5438:	8fbf0024 	lw	ra,36(sp)
    543c:	8fb00018 	lw	s0,24(sp)
    5440:	8fb1001c 	lw	s1,28(sp)
    5444:	8fb20020 	lw	s2,32(sp)
    5448:	03e00008 	jr	ra
    544c:	27bd0028 	addiu	sp,sp,40

00005450 <Actor_UpdateAll>:
    5450:	27bdff70 	addiu	sp,sp,-144
    5454:	afbf005c 	sw	ra,92(sp)
    5458:	afbe0058 	sw	s8,88(sp)
    545c:	afb70054 	sw	s7,84(sp)
    5460:	afb60050 	sw	s6,80(sp)
    5464:	afb5004c 	sw	s5,76(sp)
    5468:	afb40048 	sw	s4,72(sp)
    546c:	afb30044 	sw	s3,68(sp)
    5470:	afb20040 	sw	s2,64(sp)
    5474:	afb1003c 	sw	s1,60(sp)
    5478:	afb00038 	sw	s0,56(sp)
    547c:	f7b40030 	sdc1	$f20,48(sp)
    5480:	afa50094 	sw	a1,148(sp)
    5484:	8c921c44 	lw	s2,7236(a0)
    5488:	3c010001 	lui	at,0x1
    548c:	afa00074 	sw	zero,116(sp)
    5490:	0081a021 	addu	s4,a0,at
    5494:	92821deb 	lbu	v0,7659(s4)
    5498:	00808825 	move	s1,a0
    549c:	00009825 	move	s3,zero
    54a0:	50400015 	beqzl	v0,54f8 <Actor_UpdateAll+0xa8>
    54a4:	8faf0094 	lw	t7,148(sp)
    54a8:	8e831df8 	lw	v1,7672(s4)
    54ac:	1840000e 	blez	v0,54e8 <Actor_UpdateAll+0x98>
    54b0:	00008025 	move	s0,zero
    54b4:	24951c24 	addiu	s5,a0,7204
    54b8:	00602825 	move	a1,v1
    54bc:	24630010 	addiu	v1,v1,16
    54c0:	afa30070 	sw	v1,112(sp)
    54c4:	02a02025 	move	a0,s5
    54c8:	0c000000 	jal	0 <ActorShape_Init>
    54cc:	02203025 	move	a2,s1
    54d0:	928e1deb 	lbu	t6,7659(s4)
    54d4:	26100001 	addiu	s0,s0,1
    54d8:	8fa30070 	lw	v1,112(sp)
    54dc:	020e082a 	slt	at,s0,t6
    54e0:	5420fff6 	bnezl	at,54bc <Actor_UpdateAll+0x6c>
    54e4:	00602825 	move	a1,v1
    54e8:	3c010001 	lui	at,0x1
    54ec:	00310821 	addu	at,at,s1
    54f0:	a0201deb 	sb	zero,7659(at)
    54f4:	8faf0094 	lw	t7,148(sp)
    54f8:	3c030000 	lui	v1,0x0
    54fc:	91e20002 	lbu	v0,2(t7)
    5500:	10400002 	beqz	v0,550c <Actor_UpdateAll+0xbc>
    5504:	2458ffff 	addiu	t8,v0,-1
    5508:	a1f80002 	sb	t8,2(t7)
    550c:	8c630000 	lw	v1,0(v1)
    5510:	2401ff9c 	li	at,-100
    5514:	847909d4 	lh	t9,2516(v1)
    5518:	17210014 	bne	t9,at,556c <Actor_UpdateAll+0x11c>
    551c:	00000000 	nop
    5520:	8e221c44 	lw	v0,7236(s1)
    5524:	a46009d4 	sh	zero,2516(v1)
    5528:	3c0142c8 	lui	at,0x42c8
    552c:	44813000 	mtc1	at,$f6
    5530:	c4440028 	lwc1	$f4,40(v0)
    5534:	8c470024 	lw	a3,36(v0)
    5538:	24080001 	li	t0,1
    553c:	46062200 	add.s	$f8,$f4,$f6
    5540:	26241c24 	addiu	a0,s1,7204
    5544:	02202825 	move	a1,s1
    5548:	2406013b 	li	a2,315
    554c:	e7a80010 	swc1	$f8,16(sp)
    5550:	c44a002c 	lwc1	$f10,44(v0)
    5554:	afa80024 	sw	t0,36(sp)
    5558:	afa00020 	sw	zero,32(sp)
    555c:	afa0001c 	sw	zero,28(sp)
    5560:	afa00018 	sw	zero,24(sp)
    5564:	0c000000 	jal	0 <ActorShape_Init>
    5568:	e7aa0014 	swc1	$f10,20(sp)
    556c:	3c090000 	lui	t1,0x0
    5570:	25290000 	addiu	t1,t1,0
    5574:	afa90080 	sw	t1,128(sp)
    5578:	8e4a0680 	lw	t2,1664(s2)
    557c:	263e0810 	addiu	s8,s1,2064
    5580:	24170001 	li	s7,1
    5584:	000a5900 	sll	t3,t2,0x4
    5588:	05610002 	bgez	t3,5594 <Actor_UpdateAll+0x144>
    558c:	3c16feff 	lui	s6,0xfeff
    5590:	3c130200 	lui	s3,0x200
    5594:	8e4c067c 	lw	t4,1660(s2)
    5598:	36d6ffff 	ori	s6,s6,0xffff
    559c:	318d0040 	andi	t5,t4,0x40
    55a0:	51a00009 	beqzl	t5,55c8 <Actor_UpdateAll+0x178>
    55a4:	8fb90094 	lw	t9,148(sp)
    55a8:	964e010e 	lhu	t6,270(s2)
    55ac:	24010600 	li	at,1536
    55b0:	31d8ff00 	andi	t8,t6,0xff00
    55b4:	53010004 	beql	t8,at,55c8 <Actor_UpdateAll+0x178>
    55b8:	8fb90094 	lw	t9,148(sp)
    55bc:	8e4f0694 	lw	t7,1684(s2)
    55c0:	afaf0074 	sw	t7,116(sp)
    55c4:	8fb90094 	lw	t9,148(sp)
    55c8:	3c010000 	lui	at,0x0
    55cc:	c4340abc 	lwc1	$f20,2748(at)
    55d0:	afa00064 	sw	zero,100(sp)
    55d4:	afb90060 	sw	t9,96(sp)
    55d8:	8fab0060 	lw	t3,96(sp)
    55dc:	8fa80080 	lw	t0,128(sp)
    55e0:	8e4a067c 	lw	t2,1660(s2)
    55e4:	8d700010 	lw	s0,16(t3)
    55e8:	8d090000 	lw	t1,0(t0)
    55ec:	3c010001 	lui	at,0x1
    55f0:	12000094 	beqz	s0,5844 <Actor_UpdateAll+0x3f4>
    55f4:	012aa824 	and	s5,t1,t2
    55f8:	342117a4 	ori	at,at,0x17a4
    55fc:	0221a021 	addu	s4,s1,at
    5600:	c6100028 	lwc1	$f16,40(s0)
    5604:	02802025 	move	a0,s4
    5608:	4614803c 	c.lt.s	$f16,$f20
    560c:	00000000 	nop
    5610:	45020003 	bc1fl	5620 <Actor_UpdateAll+0x1d0>
    5614:	8e0c0128 	lw	t4,296(s0)
    5618:	e6140028 	swc1	$f20,40(s0)
    561c:	8e0c0128 	lw	t4,296(s0)
    5620:	a6000020 	sh	zero,32(s0)
    5624:	11800010 	beqz	t4,5668 <Actor_UpdateAll+0x218>
    5628:	00000000 	nop
    562c:	02802025 	move	a0,s4
    5630:	0c000000 	jal	0 <ActorShape_Init>
    5634:	8205001e 	lb	a1,30(s0)
    5638:	10400009 	beqz	v0,5660 <Actor_UpdateAll+0x210>
    563c:	02202025 	move	a0,s1
    5640:	0c000000 	jal	0 <ActorShape_Init>
    5644:	02002825 	move	a1,s0
    5648:	8e190128 	lw	t9,296(s0)
    564c:	02002025 	move	a0,s0
    5650:	02202825 	move	a1,s1
    5654:	0320f809 	jalr	t9
    5658:	00000000 	nop
    565c:	ae000128 	sw	zero,296(s0)
    5660:	10000076 	b	583c <Actor_UpdateAll+0x3ec>
    5664:	8e100124 	lw	s0,292(s0)
    5668:	0c000000 	jal	0 <ActorShape_Init>
    566c:	8205001e 	lb	a1,30(s0)
    5670:	14400005 	bnez	v0,5688 <Actor_UpdateAll+0x238>
    5674:	00000000 	nop
    5678:	0c000000 	jal	0 <ActorShape_Init>
    567c:	02002025 	move	a0,s0
    5680:	1000006e 	b	583c <Actor_UpdateAll+0x3ec>
    5684:	8e100124 	lw	s0,292(s0)
    5688:	12600005 	beqz	s3,56a0 <Actor_UpdateAll+0x250>
    568c:	00000000 	nop
    5690:	8e0d0004 	lw	t5,4(s0)
    5694:	01b37024 	and	t6,t5,s3
    5698:	11c00010 	beqz	t6,56dc <Actor_UpdateAll+0x28c>
    569c:	00000000 	nop
    56a0:	56600013 	bnezl	s3,56f0 <Actor_UpdateAll+0x2a0>
    56a4:	8e0a0130 	lw	t2,304(s0)
    56a8:	12a00010 	beqz	s5,56ec <Actor_UpdateAll+0x29c>
    56ac:	8fb80074 	lw	t8,116(sp)
    56b0:	5310000f 	beql	t8,s0,56f0 <Actor_UpdateAll+0x2a0>
    56b4:	8e0a0130 	lw	t2,304(s0)
    56b8:	8e4f068c 	lw	t7,1676(s2)
    56bc:	520f000c 	beql	s0,t7,56f0 <Actor_UpdateAll+0x2a0>
    56c0:	8e0a0130 	lw	t2,304(s0)
    56c4:	8e4803ac 	lw	t0,940(s2)
    56c8:	52080009 	beql	s0,t0,56f0 <Actor_UpdateAll+0x2a0>
    56cc:	8e0a0130 	lw	t2,304(s0)
    56d0:	8e090118 	lw	t1,280(s0)
    56d4:	52490006 	beql	s2,t1,56f0 <Actor_UpdateAll+0x2a0>
    56d8:	8e0a0130 	lw	t2,304(s0)
    56dc:	0c000000 	jal	0 <ActorShape_Init>
    56e0:	26040098 	addiu	a0,s0,152
    56e4:	10000055 	b	583c <Actor_UpdateAll+0x3ec>
    56e8:	8e100124 	lw	s0,292(s0)
    56ec:	8e0a0130 	lw	t2,304(s0)
    56f0:	26040100 	addiu	a0,s0,256
    56f4:	1540000e 	bnez	t2,5730 <Actor_UpdateAll+0x2e0>
    56f8:	00000000 	nop
    56fc:	920b0115 	lbu	t3,277(s0)
    5700:	02002825 	move	a1,s0
    5704:	02203025 	move	a2,s1
    5708:	15600005 	bnez	t3,5720 <Actor_UpdateAll+0x2d0>
    570c:	02002025 	move	a0,s0
    5710:	0c000000 	jal	0 <ActorShape_Init>
    5714:	26241c24 	addiu	a0,s1,7204
    5718:	10000048 	b	583c <Actor_UpdateAll+0x3ec>
    571c:	00408025 	move	s0,v0
    5720:	0c000000 	jal	0 <ActorShape_Init>
    5724:	02202825 	move	a1,s1
    5728:	10000044 	b	583c <Actor_UpdateAll+0x3ec>
    572c:	8e100124 	lw	s0,292(s0)
    5730:	0c000000 	jal	0 <ActorShape_Init>
    5734:	26050024 	addiu	a1,s0,36
    5738:	02002025 	move	a0,s0
    573c:	0c000000 	jal	0 <ActorShape_Init>
    5740:	02402825 	move	a1,s2
    5744:	e6000090 	swc1	$f0,144(s0)
    5748:	02002025 	move	a0,s0
    574c:	0c000000 	jal	0 <ActorShape_Init>
    5750:	02402825 	move	a1,s2
    5754:	c6020090 	lwc1	$f2,144(s0)
    5758:	e6000094 	swc1	$f0,148(s0)
    575c:	02002025 	move	a0,s0
    5760:	46021482 	mul.s	$f18,$f2,$f2
    5764:	02402825 	move	a1,s2
    5768:	46000102 	mul.s	$f4,$f0,$f0
    576c:	46049180 	add.s	$f6,$f18,$f4
    5770:	0c000000 	jal	0 <ActorShape_Init>
    5774:	e606008c 	swc1	$f6,140(s0)
    5778:	8e0c0004 	lw	t4,4(s0)
    577c:	96030110 	lhu	v1,272(s0)
    5780:	a602008a 	sh	v0,138(s0)
    5784:	0196c824 	and	t9,t4,s6
    5788:	14600003 	bnez	v1,5798 <Actor_UpdateAll+0x348>
    578c:	ae190004 	sw	t9,4(s0)
    5790:	10000004 	b	57a4 <Actor_UpdateAll+0x354>
    5794:	00001025 	move	v0,zero
    5798:	246dffff 	addiu	t5,v1,-1
    579c:	a60d0110 	sh	t5,272(s0)
    57a0:	31a2ffff 	andi	v0,t5,0xffff
    57a4:	14400022 	bnez	v0,5830 <Actor_UpdateAll+0x3e0>
    57a8:	00000000 	nop
    57ac:	8e0e0004 	lw	t6,4(s0)
    57b0:	02202025 	move	a0,s1
    57b4:	31d80050 	andi	t8,t6,0x50
    57b8:	1300001d 	beqz	t8,5830 <Actor_UpdateAll+0x3e0>
    57bc:	00000000 	nop
    57c0:	8e4f0664 	lw	t7,1636(s2)
    57c4:	560f0004 	bnel	s0,t7,57d8 <Actor_UpdateAll+0x388>
    57c8:	a200010c 	sb	zero,268(s0)
    57cc:	10000002 	b	57d8 <Actor_UpdateAll+0x388>
    57d0:	a217010c 	sb	s7,268(s0)
    57d4:	a200010c 	sb	zero,268(s0)
    57d8:	9208010d 	lbu	t0,269(s0)
    57dc:	11000005 	beqz	t0,57f4 <Actor_UpdateAll+0x3a4>
    57e0:	00000000 	nop
    57e4:	8e490664 	lw	t1,1636(s2)
    57e8:	15200002 	bnez	t1,57f4 <Actor_UpdateAll+0x3a4>
    57ec:	00000000 	nop
    57f0:	a200010d 	sb	zero,269(s0)
    57f4:	0c000000 	jal	0 <ActorShape_Init>
    57f8:	02002825 	move	a1,s0
    57fc:	92020114 	lbu	v0,276(s0)
    5800:	10400002 	beqz	v0,580c <Actor_UpdateAll+0x3bc>
    5804:	244affff 	addiu	t2,v0,-1
    5808:	a20a0114 	sb	t2,276(s0)
    580c:	8e190130 	lw	t9,304(s0)
    5810:	02002025 	move	a0,s0
    5814:	02202825 	move	a1,s1
    5818:	0320f809 	jalr	t9
    581c:	00000000 	nop
    5820:	02202025 	move	a0,s1
    5824:	03c02825 	move	a1,s8
    5828:	0c000000 	jal	0 <ActorShape_Init>
    582c:	02003025 	move	a2,s0
    5830:	0c000000 	jal	0 <ActorShape_Init>
    5834:	26040098 	addiu	a0,s0,152
    5838:	8e100124 	lw	s0,292(s0)
    583c:	5600ff71 	bnezl	s0,5604 <Actor_UpdateAll+0x1b4>
    5840:	c6100028 	lwc1	$f16,40(s0)
    5844:	8fab0064 	lw	t3,100(sp)
    5848:	24010008 	li	at,8
    584c:	02202025 	move	a0,s1
    5850:	55610004 	bnel	t3,at,5864 <Actor_UpdateAll+0x414>
    5854:	8fac0064 	lw	t4,100(sp)
    5858:	0c000000 	jal	0 <ActorShape_Init>
    585c:	03c02825 	move	a1,s8
    5860:	8fac0064 	lw	t4,100(sp)
    5864:	8fae0060 	lw	t6,96(sp)
    5868:	8faf0080 	lw	t7,128(sp)
    586c:	24010060 	li	at,96
    5870:	258d0008 	addiu	t5,t4,8
    5874:	25d80008 	addiu	t8,t6,8
    5878:	25e80004 	addiu	t0,t7,4
    587c:	afa80080 	sw	t0,128(sp)
    5880:	afb80060 	sw	t8,96(sp)
    5884:	15a1ff54 	bne	t5,at,55d8 <Actor_UpdateAll+0x188>
    5888:	afad0064 	sw	t5,100(sp)
    588c:	8e500664 	lw	s0,1636(s2)
    5890:	12000007 	beqz	s0,58b0 <Actor_UpdateAll+0x460>
    5894:	00000000 	nop
    5898:	8e090130 	lw	t1,304(s0)
    589c:	02402025 	move	a0,s2
    58a0:	15200003 	bnez	t1,58b0 <Actor_UpdateAll+0x460>
    58a4:	00000000 	nop
    58a8:	0c000000 	jal	0 <ActorShape_Init>
    58ac:	00008025 	move	s0,zero
    58b0:	12000005 	beqz	s0,58c8 <Actor_UpdateAll+0x478>
    58b4:	8fb90094 	lw	t9,148(sp)
    58b8:	8e4a066c 	lw	t2,1644(s2)
    58bc:	29410005 	slti	at,t2,5
    58c0:	50200009 	beqzl	at,58e8 <Actor_UpdateAll+0x498>
    58c4:	8fa40094 	lw	a0,148(sp)
    58c8:	932b00b7 	lbu	t3,183(t9)
    58cc:	00008025 	move	s0,zero
    58d0:	2404480f 	li	a0,18447
    58d4:	51600004 	beqzl	t3,58e8 <Actor_UpdateAll+0x498>
    58d8:	8fa40094 	lw	a0,148(sp)
    58dc:	0c000000 	jal	0 <ActorShape_Init>
    58e0:	a32000b7 	sb	zero,183(t9)
    58e4:	8fa40094 	lw	a0,148(sp)
    58e8:	02402825 	move	a1,s2
    58ec:	02003025 	move	a2,s0
    58f0:	02203825 	move	a3,s1
    58f4:	0c000000 	jal	0 <ActorShape_Init>
    58f8:	2484006c 	addiu	a0,a0,108
    58fc:	8fa50094 	lw	a1,148(sp)
    5900:	02202025 	move	a0,s1
    5904:	0c000000 	jal	0 <ActorShape_Init>
    5908:	24a50128 	addiu	a1,a1,296
    590c:	02202025 	move	a0,s1
    5910:	0c000000 	jal	0 <ActorShape_Init>
    5914:	03c02825 	move	a1,s8
    5918:	8fbf005c 	lw	ra,92(sp)
    591c:	d7b40030 	ldc1	$f20,48(sp)
    5920:	8fb00038 	lw	s0,56(sp)
    5924:	8fb1003c 	lw	s1,60(sp)
    5928:	8fb20040 	lw	s2,64(sp)
    592c:	8fb30044 	lw	s3,68(sp)
    5930:	8fb40048 	lw	s4,72(sp)
    5934:	8fb5004c 	lw	s5,76(sp)
    5938:	8fb60050 	lw	s6,80(sp)
    593c:	8fb70054 	lw	s7,84(sp)
    5940:	8fbe0058 	lw	s8,88(sp)
    5944:	03e00008 	jr	ra
    5948:	27bd0090 	addiu	sp,sp,144

0000594c <Actor_FaultPrint>:
    594c:	27bdffd8 	addiu	sp,sp,-40
    5950:	afb00018 	sw	s0,24(sp)
    5954:	00808025 	move	s0,a0
    5958:	afbf001c 	sw	ra,28(sp)
    595c:	10800003 	beqz	a0,596c <Actor_FaultPrint+0x20>
    5960:	afa5002c 	sw	a1,44(sp)
    5964:	8c820138 	lw	v0,312(a0)
    5968:	14400007 	bnez	v0,5988 <Actor_FaultPrint+0x3c>
    596c:	24040030 	li	a0,48
    5970:	0c000000 	jal	0 <ActorShape_Init>
    5974:	24050018 	li	a1,24
    5978:	3c040000 	lui	a0,0x0
    597c:	0c000000 	jal	0 <ActorShape_Init>
    5980:	248402b0 	addiu	a0,a0,688
    5984:	8e020138 	lw	v0,312(s0)
    5988:	8c440018 	lw	a0,24(v0)
    598c:	3c0e0000 	lui	t6,0x0
    5990:	25ce02c4 	addiu	t6,t6,708
    5994:	10800003 	beqz	a0,59a4 <Actor_FaultPrint+0x58>
    5998:	02002825 	move	a1,s0
    599c:	10000002 	b	59a8 <Actor_FaultPrint+0x5c>
    59a0:	afa40020 	sw	a0,32(sp)
    59a4:	afae0020 	sw	t6,32(sp)
    59a8:	3c040000 	lui	a0,0x0
    59ac:	248402c8 	addiu	a0,a0,712
    59b0:	0c000000 	jal	0 <ActorShape_Init>
    59b4:	8fa60020 	lw	a2,32(sp)
    59b8:	8faf002c 	lw	t7,44(sp)
    59bc:	3c040000 	lui	a0,0x0
    59c0:	248402e4 	addiu	a0,a0,740
    59c4:	51e00004 	beqzl	t7,59d8 <Actor_FaultPrint+0x8c>
    59c8:	24040030 	li	a0,48
    59cc:	0c000000 	jal	0 <ActorShape_Init>
    59d0:	01e02825 	move	a1,t7
    59d4:	24040030 	li	a0,48
    59d8:	0c000000 	jal	0 <ActorShape_Init>
    59dc:	24050018 	li	a1,24
    59e0:	3c040000 	lui	a0,0x0
    59e4:	248402f4 	addiu	a0,a0,756
    59e8:	02002825 	move	a1,s0
    59ec:	0c000000 	jal	0 <ActorShape_Init>
    59f0:	8fa60020 	lw	a2,32(sp)
    59f4:	8fbf001c 	lw	ra,28(sp)
    59f8:	8fb00018 	lw	s0,24(sp)
    59fc:	27bd0028 	addiu	sp,sp,40
    5a00:	03e00008 	jr	ra
    5a04:	00000000 	nop

00005a08 <Actor_Draw>:
    5a08:	27bdffa0 	addiu	sp,sp,-96
    5a0c:	afb00014 	sw	s0,20(sp)
    5a10:	00a08025 	move	s0,a1
    5a14:	afb10018 	sw	s1,24(sp)
    5a18:	00808825 	move	s1,a0
    5a1c:	afbf001c 	sw	ra,28(sp)
    5a20:	3c050000 	lui	a1,0x0
    5a24:	3c070000 	lui	a3,0x0
    5a28:	24e70308 	addiu	a3,a3,776
    5a2c:	24a50000 	addiu	a1,a1,0
    5a30:	27a40050 	addiu	a0,sp,80
    5a34:	0c000000 	jal	0 <ActorShape_Init>
    5a38:	02003025 	move	a2,s0
    5a3c:	8e250000 	lw	a1,0(s1)
    5a40:	3c060000 	lui	a2,0x0
    5a44:	24c60314 	addiu	a2,a2,788
    5a48:	27a40038 	addiu	a0,sp,56
    5a4c:	24071793 	li	a3,6035
    5a50:	0c000000 	jal	0 <ActorShape_Init>
    5a54:	afa50048 	sw	a1,72(sp)
    5a58:	262407a8 	addiu	a0,s1,1960
    5a5c:	0c000000 	jal	0 <ActorShape_Init>
    5a60:	8e250000 	lw	a1,0(s1)
    5a64:	8e0e0004 	lw	t6,4(s0)
    5a68:	00402025 	move	a0,v0
    5a6c:	000e7a40 	sll	t7,t6,0x9
    5a70:	05e30004 	bgezl	t7,5a84 <Actor_Draw+0x7c>
    5a74:	26060024 	addiu	a2,s0,36
    5a78:	10000002 	b	5a84 <Actor_Draw+0x7c>
    5a7c:	00003025 	move	a2,zero
    5a80:	26060024 	addiu	a2,s0,36
    5a84:	8e2507a8 	lw	a1,1960(s1)
    5a88:	0c000000 	jal	0 <ActorShape_Init>
    5a8c:	afa4004c 	sw	a0,76(sp)
    5a90:	8fa4004c 	lw	a0,76(sp)
    5a94:	0c000000 	jal	0 <ActorShape_Init>
    5a98:	8e250000 	lw	a1,0(s1)
    5a9c:	8e180004 	lw	t8,4(s0)
    5aa0:	33191000 	andi	t9,t8,0x1000
    5aa4:	53200015 	beqzl	t9,5afc <Actor_Draw+0xf4>
    5aa8:	c61200bc 	lwc1	$f18,188(s0)
    5aac:	c60800bc 	lwc1	$f8,188(s0)
    5ab0:	c60a0054 	lwc1	$f10,84(s0)
    5ab4:	c6040024 	lwc1	$f4,36(s0)
    5ab8:	c6260260 	lwc1	$f6,608(s1)
    5abc:	460a4402 	mul.s	$f16,$f8,$f10
    5ac0:	c6320264 	lwc1	$f18,612(s1)
    5ac4:	c62a0268 	lwc1	$f10,616(s1)
    5ac8:	c608002c 	lwc1	$f8,44(s0)
    5acc:	260700b4 	addiu	a3,s0,180
    5ad0:	46062300 	add.s	$f12,$f4,$f6
    5ad4:	c6060028 	lwc1	$f6,40(s0)
    5ad8:	46128100 	add.s	$f4,$f16,$f18
    5adc:	460a4400 	add.s	$f16,$f8,$f10
    5ae0:	46043380 	add.s	$f14,$f6,$f4
    5ae4:	44068000 	mfc1	a2,$f16
    5ae8:	0c000000 	jal	0 <ActorShape_Init>
    5aec:	00000000 	nop
    5af0:	1000000b 	b	5b20 <Actor_Draw+0x118>
    5af4:	c60c0050 	lwc1	$f12,80(s0)
    5af8:	c61200bc 	lwc1	$f18,188(s0)
    5afc:	c6060054 	lwc1	$f6,84(s0)
    5b00:	c6080028 	lwc1	$f8,40(s0)
    5b04:	c60c0024 	lwc1	$f12,36(s0)
    5b08:	46069102 	mul.s	$f4,$f18,$f6
    5b0c:	8e06002c 	lw	a2,44(s0)
    5b10:	260700b4 	addiu	a3,s0,180
    5b14:	0c000000 	jal	0 <ActorShape_Init>
    5b18:	46044380 	add.s	$f14,$f8,$f4
    5b1c:	c60c0050 	lwc1	$f12,80(s0)
    5b20:	c60e0054 	lwc1	$f14,84(s0)
    5b24:	8e060058 	lw	a2,88(s0)
    5b28:	0c000000 	jal	0 <ActorShape_Init>
    5b2c:	24070001 	li	a3,1
    5b30:	02202025 	move	a0,s1
    5b34:	0c000000 	jal	0 <ActorShape_Init>
    5b38:	02002825 	move	a1,s0
    5b3c:	8fa40048 	lw	a0,72(sp)
    5b40:	3c05db06 	lui	a1,0xdb06
    5b44:	34a50018 	ori	a1,a1,0x18
    5b48:	8c8302c0 	lw	v1,704(a0)
    5b4c:	24060044 	li	a2,68
    5b50:	3c070001 	lui	a3,0x1
    5b54:	24680008 	addiu	t0,v1,8
    5b58:	ac8802c0 	sw	t0,704(a0)
    5b5c:	ac650000 	sw	a1,0(v1)
    5b60:	8209001e 	lb	t1,30(s0)
    5b64:	01260019 	multu	t1,a2
    5b68:	00005012 	mflo	t2
    5b6c:	022a5821 	addu	t3,s1,t2
    5b70:	01676021 	addu	t4,t3,a3
    5b74:	8d8d17b4 	lw	t5,6068(t4)
    5b78:	3c0b0000 	lui	t3,0x0
    5b7c:	256b0118 	addiu	t3,t3,280
    5b80:	ac6d0004 	sw	t5,4(v1)
    5b84:	8c8302d0 	lw	v1,720(a0)
    5b88:	246e0008 	addiu	t6,v1,8
    5b8c:	ac8e02d0 	sw	t6,720(a0)
    5b90:	ac650000 	sw	a1,0(v1)
    5b94:	820f001e 	lb	t7,30(s0)
    5b98:	01e60019 	multu	t7,a2
    5b9c:	0000c012 	mflo	t8
    5ba0:	0238c821 	addu	t9,s1,t8
    5ba4:	03274021 	addu	t0,t9,a3
    5ba8:	8d0917b4 	lw	t1,6068(t0)
    5bac:	ac690004 	sw	t1,4(v1)
    5bb0:	920a0114 	lbu	t2,276(s0)
    5bb4:	5140002b 	beqzl	t2,5c64 <Actor_Draw+0x25c>
    5bb8:	8e190134 	lw	t9,308(s0)
    5bbc:	8d6d0000 	lw	t5,0(t3)
    5bc0:	27a5002c 	addiu	a1,sp,44
    5bc4:	02202025 	move	a0,s1
    5bc8:	acad0000 	sw	t5,0(a1)
    5bcc:	96020112 	lhu	v0,274(s0)
    5bd0:	304e8000 	andi	t6,v0,0x8000
    5bd4:	11c00008 	beqz	t6,5bf8 <Actor_Draw+0x1f0>
    5bd8:	304a4000 	andi	t2,v0,0x4000
    5bdc:	304f1f00 	andi	t7,v0,0x1f00
    5be0:	000fc143 	sra	t8,t7,0x5
    5be4:	37080007 	ori	t0,t8,0x7
    5be8:	a3a8002e 	sb	t0,46(sp)
    5bec:	a3a8002d 	sb	t0,45(sp)
    5bf0:	1000000b 	b	5c20 <Actor_Draw+0x218>
    5bf4:	a3a8002c 	sb	t0,44(sp)
    5bf8:	11400006 	beqz	t2,5c14 <Actor_Draw+0x20c>
    5bfc:	304e1f00 	andi	t6,v0,0x1f00
    5c00:	304b1f00 	andi	t3,v0,0x1f00
    5c04:	000b6143 	sra	t4,t3,0x5
    5c08:	358d0007 	ori	t5,t4,0x7
    5c0c:	10000004 	b	5c20 <Actor_Draw+0x218>
    5c10:	a3ad002c 	sb	t5,44(sp)
    5c14:	000e7943 	sra	t7,t6,0x5
    5c18:	35f80007 	ori	t8,t7,0x7
    5c1c:	a3b8002e 	sb	t8,46(sp)
    5c20:	96020112 	lhu	v0,274(s0)
    5c24:	30482000 	andi	t0,v0,0x2000
    5c28:	11000009 	beqz	t0,5c50 <Actor_Draw+0x248>
    5c2c:	304700ff 	andi	a3,v0,0xff
    5c30:	304700ff 	andi	a3,v0,0xff
    5c34:	00073c00 	sll	a3,a3,0x10
    5c38:	00073c03 	sra	a3,a3,0x10
    5c3c:	02202025 	move	a0,s1
    5c40:	0c000000 	jal	0 <ActorShape_Init>
    5c44:	92060114 	lbu	a2,276(s0)
    5c48:	10000006 	b	5c64 <Actor_Draw+0x25c>
    5c4c:	8e190134 	lw	t9,308(s0)
    5c50:	00073c00 	sll	a3,a3,0x10
    5c54:	00073c03 	sra	a3,a3,0x10
    5c58:	0c000000 	jal	0 <ActorShape_Init>
    5c5c:	92060114 	lbu	a2,276(s0)
    5c60:	8e190134 	lw	t9,308(s0)
    5c64:	02002025 	move	a0,s0
    5c68:	02202825 	move	a1,s1
    5c6c:	0320f809 	jalr	t9
    5c70:	00000000 	nop
    5c74:	92090114 	lbu	t1,276(s0)
    5c78:	5120000c 	beqzl	t1,5cac <Actor_Draw+0x2a4>
    5c7c:	8e0200c0 	lw	v0,192(s0)
    5c80:	960a0112 	lhu	t2,274(s0)
    5c84:	314b2000 	andi	t3,t2,0x2000
    5c88:	11600005 	beqz	t3,5ca0 <Actor_Draw+0x298>
    5c8c:	00000000 	nop
    5c90:	0c000000 	jal	0 <ActorShape_Init>
    5c94:	02202025 	move	a0,s1
    5c98:	10000004 	b	5cac <Actor_Draw+0x2a4>
    5c9c:	8e0200c0 	lw	v0,192(s0)
    5ca0:	0c000000 	jal	0 <ActorShape_Init>
    5ca4:	02202025 	move	a0,s1
    5ca8:	8e0200c0 	lw	v0,192(s0)
    5cac:	02002025 	move	a0,s0
    5cb0:	8fa5004c 	lw	a1,76(sp)
    5cb4:	10400003 	beqz	v0,5cc4 <Actor_Draw+0x2bc>
    5cb8:	00000000 	nop
    5cbc:	0040f809 	jalr	v0
    5cc0:	02203025 	move	a2,s1
    5cc4:	3c060000 	lui	a2,0x0
    5cc8:	24c60324 	addiu	a2,a2,804
    5ccc:	27a40038 	addiu	a0,sp,56
    5cd0:	8e250000 	lw	a1,0(s1)
    5cd4:	0c000000 	jal	0 <ActorShape_Init>
    5cd8:	240717e7 	li	a3,6119
    5cdc:	0c000000 	jal	0 <ActorShape_Init>
    5ce0:	27a40050 	addiu	a0,sp,80
    5ce4:	8fbf001c 	lw	ra,28(sp)
    5ce8:	8fb00014 	lw	s0,20(sp)
    5cec:	8fb10018 	lw	s1,24(sp)
    5cf0:	03e00008 	jr	ra
    5cf4:	27bd0060 	addiu	sp,sp,96

00005cf8 <func_80030ED8>:
    5cf8:	27bdffd8 	addiu	sp,sp,-40
    5cfc:	afbf0024 	sw	ra,36(sp)
    5d00:	afb00020 	sw	s0,32(sp)
    5d04:	8c820004 	lw	v0,4(a0)
    5d08:	00808025 	move	s0,a0
    5d0c:	3c070000 	lui	a3,0x0
    5d10:	00027300 	sll	t6,v0,0xc
    5d14:	05c1000c 	bgez	t6,5d48 <func_80030ED8+0x50>
    5d18:	0002c2c0 	sll	t8,v0,0xb
    5d1c:	3c0f0000 	lui	t7,0x0
    5d20:	24e70000 	addiu	a3,a3,0
    5d24:	25ef0000 	addiu	t7,t7,0
    5d28:	94840020 	lhu	a0,32(a0)
    5d2c:	afaf0014 	sw	t7,20(sp)
    5d30:	afa70010 	sw	a3,16(sp)
    5d34:	260500e4 	addiu	a1,s0,228
    5d38:	0c000000 	jal	0 <ActorShape_Init>
    5d3c:	24060004 	li	a2,4
    5d40:	1000001d 	b	5db8 <func_80030ED8+0xc0>
    5d44:	8fbf0024 	lw	ra,36(sp)
    5d48:	07010005 	bgez	t8,5d60 <func_80030ED8+0x68>
    5d4c:	0002ca80 	sll	t9,v0,0xa
    5d50:	0c000000 	jal	0 <ActorShape_Init>
    5d54:	96040020 	lhu	a0,32(s0)
    5d58:	10000017 	b	5db8 <func_80030ED8+0xc0>
    5d5c:	8fbf0024 	lw	ra,36(sp)
    5d60:	07210005 	bgez	t9,5d78 <func_80030ED8+0x80>
    5d64:	000240c0 	sll	t0,v0,0x3
    5d68:	0c000000 	jal	0 <ActorShape_Init>
    5d6c:	96040020 	lhu	a0,32(s0)
    5d70:	10000011 	b	5db8 <func_80030ED8+0xc0>
    5d74:	8fbf0024 	lw	ra,36(sp)
    5d78:	0501000c 	bgez	t0,5dac <func_80030ED8+0xb4>
    5d7c:	260400e4 	addiu	a0,s0,228
    5d80:	96060020 	lhu	a2,32(s0)
    5d84:	3c040000 	lui	a0,0x0
    5d88:	24840000 	addiu	a0,a0,0
    5d8c:	24c6ffff 	addiu	a2,a2,-1
    5d90:	00063600 	sll	a2,a2,0x18
    5d94:	00063603 	sra	a2,a2,0x18
    5d98:	30c600ff 	andi	a2,a2,0xff
    5d9c:	0c000000 	jal	0 <ActorShape_Init>
    5da0:	24052021 	li	a1,8225
    5da4:	10000004 	b	5db8 <func_80030ED8+0xc0>
    5da8:	8fbf0024 	lw	ra,36(sp)
    5dac:	0c000000 	jal	0 <ActorShape_Init>
    5db0:	96050020 	lhu	a1,32(s0)
    5db4:	8fbf0024 	lw	ra,36(sp)
    5db8:	8fb00020 	lw	s0,32(sp)
    5dbc:	27bd0028 	addiu	sp,sp,40
    5dc0:	03e00008 	jr	ra
    5dc4:	00000000 	nop

00005dc8 <func_80030FA8>:
    5dc8:	27bdffa0 	addiu	sp,sp,-96
    5dcc:	afbf0014 	sw	ra,20(sp)
    5dd0:	00802825 	move	a1,a0
    5dd4:	3c060000 	lui	a2,0x0
    5dd8:	24c60334 	addiu	a2,a2,820
    5ddc:	afa50060 	sw	a1,96(sp)
    5de0:	27a4004c 	addiu	a0,sp,76
    5de4:	0c000000 	jal	0 <ActorShape_Init>
    5de8:	24071811 	li	a3,6161
    5dec:	8fa50060 	lw	a1,96(sp)
    5df0:	3c180000 	lui	t8,0x0
    5df4:	27180000 	addiu	t8,t8,0
    5df8:	8ca202d0 	lw	v0,720(a1)
    5dfc:	3c0ffd90 	lui	t7,0xfd90
    5e00:	3c09070d 	lui	t1,0x70d
    5e04:	244e0008 	addiu	t6,v0,8
    5e08:	acae02d0 	sw	t6,720(a1)
    5e0c:	ac580004 	sw	t8,4(v0)
    5e10:	ac4f0000 	sw	t7,0(v0)
    5e14:	8ca202d0 	lw	v0,720(a1)
    5e18:	35298360 	ori	t1,t1,0x8360
    5e1c:	3c08f590 	lui	t0,0xf590
    5e20:	24590008 	addiu	t9,v0,8
    5e24:	acb902d0 	sw	t9,720(a1)
    5e28:	ac490004 	sw	t1,4(v0)
    5e2c:	ac480000 	sw	t0,0(v0)
    5e30:	8ca202d0 	lw	v0,720(a1)
    5e34:	3c0be600 	lui	t3,0xe600
    5e38:	3c0e077f 	lui	t6,0x77f
    5e3c:	244a0008 	addiu	t2,v0,8
    5e40:	acaa02d0 	sw	t2,720(a1)
    5e44:	ac400004 	sw	zero,4(v0)
    5e48:	ac4b0000 	sw	t3,0(v0)
    5e4c:	8ca202d0 	lw	v0,720(a1)
    5e50:	35cef100 	ori	t6,t6,0xf100
    5e54:	3c0df300 	lui	t5,0xf300
    5e58:	244c0008 	addiu	t4,v0,8
    5e5c:	acac02d0 	sw	t4,720(a1)
    5e60:	ac4e0004 	sw	t6,4(v0)
    5e64:	ac4d0000 	sw	t5,0(v0)
    5e68:	8ca202d0 	lw	v0,720(a1)
    5e6c:	3c04e700 	lui	a0,0xe700
    5e70:	3c08000d 	lui	t0,0xd
    5e74:	244f0008 	addiu	t7,v0,8
    5e78:	acaf02d0 	sw	t7,720(a1)
    5e7c:	ac400004 	sw	zero,4(v0)
    5e80:	ac440000 	sw	a0,0(v0)
    5e84:	8ca202d0 	lw	v0,720(a1)
    5e88:	3c19f588 	lui	t9,0xf588
    5e8c:	37391000 	ori	t9,t9,0x1000
    5e90:	24580008 	addiu	t8,v0,8
    5e94:	acb802d0 	sw	t8,720(a1)
    5e98:	35088360 	ori	t0,t0,0x8360
    5e9c:	ac480004 	sw	t0,4(v0)
    5ea0:	ac590000 	sw	t9,0(v0)
    5ea4:	8ca202d0 	lw	v0,720(a1)
    5ea8:	3c0b000f 	lui	t3,0xf
    5eac:	356bc0fc 	ori	t3,t3,0xc0fc
    5eb0:	24490008 	addiu	t1,v0,8
    5eb4:	aca902d0 	sw	t1,720(a1)
    5eb8:	3c0af200 	lui	t2,0xf200
    5ebc:	ac4a0000 	sw	t2,0(v0)
    5ec0:	ac4b0004 	sw	t3,4(v0)
    5ec4:	8ca202d0 	lw	v0,720(a1)
    5ec8:	3c0df218 	lui	t5,0xf218
    5ecc:	3c0e0037 	lui	t6,0x37
    5ed0:	244c0008 	addiu	t4,v0,8
    5ed4:	acac02d0 	sw	t4,720(a1)
    5ed8:	35cec2dc 	ori	t6,t6,0xc2dc
    5edc:	35ad00e0 	ori	t5,t5,0xe0
    5ee0:	ac4d0000 	sw	t5,0(v0)
    5ee4:	ac4e0004 	sw	t6,4(v0)
    5ee8:	8ca202d0 	lw	v0,720(a1)
    5eec:	3c18e450 	lui	t8,0xe450
    5ef0:	371803c0 	ori	t8,t8,0x3c0
    5ef4:	244f0008 	addiu	t7,v0,8
    5ef8:	acaf02d0 	sw	t7,720(a1)
    5efc:	ac400004 	sw	zero,4(v0)
    5f00:	ac580000 	sw	t8,0(v0)
    5f04:	8ca202d0 	lw	v0,720(a1)
    5f08:	3c0908c0 	lui	t1,0x8c0
    5f0c:	35290640 	ori	t1,t1,0x640
    5f10:	24590008 	addiu	t9,v0,8
    5f14:	acb902d0 	sw	t9,720(a1)
    5f18:	3c08e100 	lui	t0,0xe100
    5f1c:	ac480000 	sw	t0,0(v0)
    5f20:	ac490004 	sw	t1,4(v0)
    5f24:	8ca202d0 	lw	v0,720(a1)
    5f28:	3c0c0240 	lui	t4,0x240
    5f2c:	358c0255 	ori	t4,t4,0x255
    5f30:	244a0008 	addiu	t2,v0,8
    5f34:	acaa02d0 	sw	t2,720(a1)
    5f38:	3c0bf100 	lui	t3,0xf100
    5f3c:	ac4b0000 	sw	t3,0(v0)
    5f40:	ac4c0004 	sw	t4,4(v0)
    5f44:	8ca202d0 	lw	v0,720(a1)
    5f48:	3c060000 	lui	a2,0x0
    5f4c:	24c60344 	addiu	a2,a2,836
    5f50:	244d0008 	addiu	t5,v0,8
    5f54:	acad02d0 	sw	t5,720(a1)
    5f58:	ac440000 	sw	a0,0(v0)
    5f5c:	27a4004c 	addiu	a0,sp,76
    5f60:	24071827 	li	a3,6183
    5f64:	0c000000 	jal	0 <ActorShape_Init>
    5f68:	ac400004 	sw	zero,4(v0)
    5f6c:	8fbf0014 	lw	ra,20(sp)
    5f70:	27bd0060 	addiu	sp,sp,96
    5f74:	03e00008 	jr	ra
    5f78:	00000000 	nop

00005f7c <func_8003115C>:
    5f7c:	27bdff60 	addiu	sp,sp,-160
    5f80:	afbf001c 	sw	ra,28(sp)
    5f84:	afb10018 	sw	s1,24(sp)
    5f88:	afb00014 	sw	s0,20(sp)
    5f8c:	afa400a0 	sw	a0,160(sp)
    5f90:	afa500a4 	sw	a1,164(sp)
    5f94:	afa600a8 	sw	a2,168(sp)
    5f98:	8c910000 	lw	s1,0(a0)
    5f9c:	3c060000 	lui	a2,0x0
    5fa0:	24c60354 	addiu	a2,a2,852
    5fa4:	27a40080 	addiu	a0,sp,128
    5fa8:	24071835 	li	a3,6197
    5fac:	0c000000 	jal	0 <ActorShape_Init>
    5fb0:	02202825 	move	a1,s1
    5fb4:	8e2302c0 	lw	v1,704(s1)
    5fb8:	3c180000 	lui	t8,0x0
    5fbc:	27180364 	addiu	t8,t8,868
    5fc0:	246f0008 	addiu	t7,v1,8
    5fc4:	ae2f02c0 	sw	t7,704(s1)
    5fc8:	3c080002 	lui	t0,0x2
    5fcc:	ac680000 	sw	t0,0(v1)
    5fd0:	ac780004 	sw	t8,4(v1)
    5fd4:	8e2202d0 	lw	v0,720(s1)
    5fd8:	3c0ae700 	lui	t2,0xe700
    5fdc:	3c010001 	lui	at,0x1
    5fe0:	24590008 	addiu	t9,v0,8
    5fe4:	ae3902d0 	sw	t9,720(s1)
    5fe8:	ac400004 	sw	zero,4(v0)
    5fec:	ac4a0000 	sw	t2,0(v0)
    5ff0:	8fa500a0 	lw	a1,160(sp)
    5ff4:	3c0faf50 	lui	t7,0xaf50
    5ff8:	3c0eef00 	lui	t6,0xef00
    5ffc:	00a12821 	addu	a1,a1,at
    6000:	90ab1cc1 	lbu	t3,7361(a1)
    6004:	35ce2c30 	ori	t6,t6,0x2c30
    6008:	35ef4365 	ori	t7,t7,0x4365
    600c:	1560001c 	bnez	t3,6080 <func_8003115C+0x104>
    6010:	3c19fc37 	lui	t9,0xfc37
    6014:	8e2202d0 	lw	v0,720(s1)
    6018:	3c0def00 	lui	t5,0xef00
    601c:	3c0e0050 	lui	t6,0x50
    6020:	244c0008 	addiu	t4,v0,8
    6024:	ae2c02d0 	sw	t4,720(s1)
    6028:	35ce4365 	ori	t6,t6,0x4365
    602c:	35ad2c30 	ori	t5,t5,0x2c30
    6030:	ac4d0000 	sw	t5,0(v0)
    6034:	ac4e0004 	sw	t6,4(v0)
    6038:	8e2202d0 	lw	v0,720(s1)
    603c:	3c18fc11 	lui	t8,0xfc11
    6040:	3c19ff2f 	lui	t9,0xff2f
    6044:	244f0008 	addiu	t7,v0,8
    6048:	ae2f02d0 	sw	t7,720(s1)
    604c:	3739ffff 	ori	t9,t9,0xffff
    6050:	37189623 	ori	t8,t8,0x9623
    6054:	ac580000 	sw	t8,0(v0)
    6058:	ac590004 	sw	t9,4(v0)
    605c:	8e2202d0 	lw	v0,720(s1)
    6060:	3c0cff00 	lui	t4,0xff00
    6064:	358c00ff 	ori	t4,t4,0xff
    6068:	244a0008 	addiu	t2,v0,8
    606c:	ae2a02d0 	sw	t2,720(s1)
    6070:	3c0bfa00 	lui	t3,0xfa00
    6074:	ac4b0000 	sw	t3,0(v0)
    6078:	10000017 	b	60d8 <func_8003115C+0x15c>
    607c:	ac4c0004 	sw	t4,4(v0)
    6080:	8e2202d0 	lw	v0,720(s1)
    6084:	3c0a117b 	lui	t2,0x117b
    6088:	354a9fcf 	ori	t2,t2,0x9fcf
    608c:	244d0008 	addiu	t5,v0,8
    6090:	ae2d02d0 	sw	t5,720(s1)
    6094:	ac4f0004 	sw	t7,4(v0)
    6098:	ac4e0000 	sw	t6,0(v0)
    609c:	8e2202d0 	lw	v0,720(s1)
    60a0:	37393c6e 	ori	t9,t9,0x3c6e
    60a4:	3c0d4a4a 	lui	t5,0x4a4a
    60a8:	24580008 	addiu	t8,v0,8
    60ac:	ae3802d0 	sw	t8,720(s1)
    60b0:	ac4a0004 	sw	t2,4(v0)
    60b4:	ac590000 	sw	t9,0(v0)
    60b8:	8e2202d0 	lw	v0,720(s1)
    60bc:	3c0cfa00 	lui	t4,0xfa00
    60c0:	358c00ff 	ori	t4,t4,0xff
    60c4:	244b0008 	addiu	t3,v0,8
    60c8:	ae2b02d0 	sw	t3,720(s1)
    60cc:	35ad4a4a 	ori	t5,t5,0x4a4a
    60d0:	ac4d0004 	sw	t5,4(v0)
    60d4:	ac4c0000 	sw	t4,0(v0)
    60d8:	8e2202d0 	lw	v0,720(s1)
    60dc:	3c0fee00 	lui	t7,0xee00
    60e0:	02202025 	move	a0,s1
    60e4:	244e0008 	addiu	t6,v0,8
    60e8:	ae2e02d0 	sw	t6,720(s1)
    60ec:	ac400004 	sw	zero,4(v0)
    60f0:	ac4f0000 	sw	t7,0(v0)
    60f4:	0c000000 	jal	0 <ActorShape_Init>
    60f8:	afa50030 	sw	a1,48(sp)
    60fc:	8fa900a4 	lw	t1,164(sp)
    6100:	8e2302c0 	lw	v1,704(s1)
    6104:	3c080002 	lui	t0,0x2
    6108:	3139ffff 	andi	t9,t1,0xffff
    610c:	24780008 	addiu	t8,v1,8
    6110:	ae3802c0 	sw	t8,704(s1)
    6114:	03285025 	or	t2,t9,t0
    6118:	afaa002c 	sw	t2,44(sp)
    611c:	3c0b0000 	lui	t3,0x0
    6120:	256b0378 	addiu	t3,t3,888
    6124:	ac6b0004 	sw	t3,4(v1)
    6128:	ac6a0000 	sw	t2,0(v1)
    612c:	8fb000a8 	lw	s0,168(sp)
    6130:	19200016 	blez	t1,618c <func_8003115C+0x210>
    6134:	00003025 	move	a2,zero
    6138:	3c070000 	lui	a3,0x0
    613c:	24e703a4 	addiu	a3,a3,932
    6140:	8e2302c0 	lw	v1,704(s1)
    6144:	30cdffff 	andi	t5,a2,0xffff
    6148:	01a87025 	or	t6,t5,t0
    614c:	246c0008 	addiu	t4,v1,8
    6150:	ae2c02c0 	sw	t4,704(s1)
    6154:	ac670004 	sw	a3,4(v1)
    6158:	ac6e0000 	sw	t6,0(v1)
    615c:	8e050000 	lw	a1,0(s0)
    6160:	afa70028 	sw	a3,40(sp)
    6164:	afa60094 	sw	a2,148(sp)
    6168:	8fa400a0 	lw	a0,160(sp)
    616c:	0c000000 	jal	0 <ActorShape_Init>
    6170:	26100004 	addiu	s0,s0,4
    6174:	8fa60094 	lw	a2,148(sp)
    6178:	8faf00a4 	lw	t7,164(sp)
    617c:	8fa70028 	lw	a3,40(sp)
    6180:	24c60001 	addiu	a2,a2,1
    6184:	14cfffee 	bne	a2,t7,6140 <func_8003115C+0x1c4>
    6188:	3c080002 	lui	t0,0x2
    618c:	8e2302c0 	lw	v1,704(s1)
    6190:	3c0a0000 	lui	t2,0x0
    6194:	254a03c8 	addiu	t2,t2,968
    6198:	24780008 	addiu	t8,v1,8
    619c:	ae3802c0 	sw	t8,704(s1)
    61a0:	8fb9002c 	lw	t9,44(sp)
    61a4:	ac6a0004 	sw	t2,4(v1)
    61a8:	3c0e0000 	lui	t6,0x0
    61ac:	ac790000 	sw	t9,0(v1)
    61b0:	8fab0030 	lw	t3,48(sp)
    61b4:	3c0aef00 	lui	t2,0xef00
    61b8:	25ce03f0 	addiu	t6,t6,1008
    61bc:	916c1cc1 	lbu	t4,7361(t3)
    61c0:	3c18e700 	lui	t8,0xe700
    61c4:	354a2c30 	ori	t2,t2,0x2c30
    61c8:	51800030 	beqzl	t4,628c <func_8003115C+0x310>
    61cc:	8e2302c0 	lw	v1,704(s1)
    61d0:	8e2302c0 	lw	v1,704(s1)
    61d4:	3c0b0050 	lui	t3,0x50
    61d8:	356b4345 	ori	t3,t3,0x4345
    61dc:	246d0008 	addiu	t5,v1,8
    61e0:	ae2d02c0 	sw	t5,704(s1)
    61e4:	ac6e0004 	sw	t6,4(v1)
    61e8:	ac680000 	sw	t0,0(v1)
    61ec:	8e2202d0 	lw	v0,720(s1)
    61f0:	3c0eff2f 	lui	t6,0xff2f
    61f4:	3c0dfc11 	lui	t5,0xfc11
    61f8:	244f0008 	addiu	t7,v0,8
    61fc:	ae2f02d0 	sw	t7,720(s1)
    6200:	ac400004 	sw	zero,4(v0)
    6204:	ac580000 	sw	t8,0(v0)
    6208:	8e2202d0 	lw	v0,720(s1)
    620c:	35ad9623 	ori	t5,t5,0x9623
    6210:	35ceffff 	ori	t6,t6,0xffff
    6214:	24590008 	addiu	t9,v0,8
    6218:	ae3902d0 	sw	t9,720(s1)
    621c:	ac4b0004 	sw	t3,4(v0)
    6220:	ac4a0000 	sw	t2,0(v0)
    6224:	8e2202d0 	lw	v0,720(s1)
    6228:	3c19ff00 	lui	t9,0xff00
    622c:	373900ff 	ori	t9,t9,0xff
    6230:	244c0008 	addiu	t4,v0,8
    6234:	ae2c02d0 	sw	t4,720(s1)
    6238:	ac4e0004 	sw	t6,4(v0)
    623c:	ac4d0000 	sw	t5,0(v0)
    6240:	8e2202d0 	lw	v0,720(s1)
    6244:	3c18fa00 	lui	t8,0xfa00
    6248:	02202025 	move	a0,s1
    624c:	244f0008 	addiu	t7,v0,8
    6250:	ae2f02d0 	sw	t7,720(s1)
    6254:	ac590004 	sw	t9,4(v0)
    6258:	0c000000 	jal	0 <ActorShape_Init>
    625c:	ac580000 	sw	t8,0(v0)
    6260:	8e2302c0 	lw	v1,704(s1)
    6264:	3c0b0002 	lui	t3,0x2
    6268:	3c0c0000 	lui	t4,0x0
    626c:	246a0008 	addiu	t2,v1,8
    6270:	ae2a02c0 	sw	t2,704(s1)
    6274:	258c0400 	addiu	t4,t4,1024
    6278:	356b0001 	ori	t3,t3,0x1
    627c:	3c080002 	lui	t0,0x2
    6280:	ac6b0000 	sw	t3,0(v1)
    6284:	ac6c0004 	sw	t4,4(v1)
    6288:	8e2302c0 	lw	v1,704(s1)
    628c:	3c0e0000 	lui	t6,0x0
    6290:	25ce0410 	addiu	t6,t6,1040
    6294:	246d0008 	addiu	t5,v1,8
    6298:	ae2d02c0 	sw	t5,704(s1)
    629c:	3c060000 	lui	a2,0x0
    62a0:	24c60424 	addiu	a2,a2,1060
    62a4:	27a40080 	addiu	a0,sp,128
    62a8:	02202825 	move	a1,s1
    62ac:	2407188c 	li	a3,6284
    62b0:	ac6e0004 	sw	t6,4(v1)
    62b4:	0c000000 	jal	0 <ActorShape_Init>
    62b8:	ac680000 	sw	t0,0(v1)
    62bc:	8fbf001c 	lw	ra,28(sp)
    62c0:	8fb00014 	lw	s0,20(sp)
    62c4:	8fb10018 	lw	s1,24(sp)
    62c8:	03e00008 	jr	ra
    62cc:	27bd00a0 	addiu	sp,sp,160

000062d0 <func_800314B0>:
    62d0:	27bdffe8 	addiu	sp,sp,-24
    62d4:	afbf0014 	sw	ra,20(sp)
    62d8:	8ca700f0 	lw	a3,240(a1)
    62dc:	0c000000 	jal	0 <ActorShape_Init>
    62e0:	24a600e4 	addiu	a2,a1,228
    62e4:	8fbf0014 	lw	ra,20(sp)
    62e8:	27bd0018 	addiu	sp,sp,24
    62ec:	03e00008 	jr	ra
    62f0:	00000000 	nop

000062f4 <func_800314D4>:
    62f4:	afa40000 	sw	a0,0(sp)
    62f8:	c4a200f8 	lwc1	$f2,248(a1)
    62fc:	c4c00008 	lwc1	$f0,8(a2)
    6300:	44876000 	mtc1	a3,$f12
    6304:	46001107 	neg.s	$f4,$f2
    6308:	00001025 	move	v0,zero
    630c:	4600203c 	c.lt.s	$f4,$f0
    6310:	00000000 	nop
    6314:	4500002b 	bc1f	63c4 <func_800314D4+0xd0>
    6318:	00000000 	nop
    631c:	c4a600f4 	lwc1	$f6,244(a1)
    6320:	3c013f80 	lui	at,0x3f80
    6324:	46023200 	add.s	$f8,$f6,$f2
    6328:	4608003c 	c.lt.s	$f0,$f8
    632c:	00000000 	nop
    6330:	45000024 	bc1f	63c4 <func_800314D4+0xd0>
    6334:	00000000 	nop
    6338:	44818000 	mtc1	at,$f16
    633c:	00000000 	nop
    6340:	4610603c 	c.lt.s	$f12,$f16
    6344:	00000000 	nop
    6348:	45020004 	bc1fl	635c <func_800314D4+0x68>
    634c:	460c8383 	div.s	$f14,$f16,$f12
    6350:	10000002 	b	635c <func_800314D4+0x68>
    6354:	46008386 	mov.s	$f14,$f16
    6358:	460c8383 	div.s	$f14,$f16,$f12
    635c:	c4c00000 	lwc1	$f0,0(a2)
    6360:	46000005 	abs.s	$f0,$f0
    6364:	46020281 	sub.s	$f10,$f0,$f2
    6368:	460e5482 	mul.s	$f18,$f10,$f14
    636c:	4610903c 	c.lt.s	$f18,$f16
    6370:	00000000 	nop
    6374:	45000013 	bc1f	63c4 <func_800314D4+0xd0>
    6378:	00000000 	nop
    637c:	c4c00004 	lwc1	$f0,4(a2)
    6380:	c4a600fc 	lwc1	$f6,252(a1)
    6384:	3c01bf80 	lui	at,0xbf80
    6388:	44812000 	mtc1	at,$f4
    638c:	46060200 	add.s	$f8,$f0,$f6
    6390:	460e4282 	mul.s	$f10,$f8,$f14
    6394:	460a203c 	c.lt.s	$f4,$f10
    6398:	00000000 	nop
    639c:	45000009 	bc1f	63c4 <func_800314D4+0xd0>
    63a0:	00000000 	nop
    63a4:	46020481 	sub.s	$f18,$f0,$f2
    63a8:	460e9182 	mul.s	$f6,$f18,$f14
    63ac:	4610303c 	c.lt.s	$f6,$f16
    63b0:	00000000 	nop
    63b4:	45000003 	bc1f	63c4 <func_800314D4+0xd0>
    63b8:	00000000 	nop
    63bc:	03e00008 	jr	ra
    63c0:	24020001 	li	v0,1
    63c4:	03e00008 	jr	ra
    63c8:	00000000 	nop

000063cc <func_800315AC>:
    63cc:	27bdff28 	addiu	sp,sp,-216
    63d0:	afbf003c 	sw	ra,60(sp)
    63d4:	afbe0038 	sw	s8,56(sp)
    63d8:	afb70034 	sw	s7,52(sp)
    63dc:	afb60030 	sw	s6,48(sp)
    63e0:	afb5002c 	sw	s5,44(sp)
    63e4:	afb40028 	sw	s4,40(sp)
    63e8:	afb30024 	sw	s3,36(sp)
    63ec:	afb20020 	sw	s2,32(sp)
    63f0:	afb1001c 	sw	s1,28(sp)
    63f4:	afb00018 	sw	s0,24(sp)
    63f8:	afa500dc 	sw	a1,220(sp)
    63fc:	8c850000 	lw	a1,0(a0)
    6400:	0080a825 	move	s5,a0
    6404:	3c060000 	lui	a2,0x0
    6408:	0000b025 	move	s6,zero
    640c:	24c60434 	addiu	a2,a2,1076
    6410:	27a40064 	addiu	a0,sp,100
    6414:	240718c0 	li	a3,6336
    6418:	0c000000 	jal	0 <ActorShape_Init>
    641c:	00a09825 	move	s3,a1
    6420:	8fae00dc 	lw	t6,220(sp)
    6424:	3c170000 	lui	s7,0x0
    6428:	26f70000 	addiu	s7,s7,0
    642c:	25cf000c 	addiu	t7,t6,12
    6430:	afaf0080 	sw	t7,128(sp)
    6434:	afa00078 	sw	zero,120(sp)
    6438:	24140001 	li	s4,1
    643c:	2412ffff 	li	s2,-1
    6440:	8fb80080 	lw	t8,128(sp)
    6444:	8f110004 	lw	s1,4(t8)
    6448:	5220009d 	beqzl	s1,66c0 <func_800315AC+0x2f4>
    644c:	8fb90078 	lw	t9,120(sp)
    6450:	8fbe0078 	lw	s8,120(sp)
    6454:	3c010002 	lui	at,0x2
    6458:	33deffff 	andi	s8,s8,0xffff
    645c:	03c1f025 	or	s8,s8,at
    6460:	8e220138 	lw	v0,312(s1)
    6464:	8c430018 	lw	v1,24(v0)
    6468:	10600003 	beqz	v1,6478 <func_800315AC+0xac>
    646c:	00000000 	nop
    6470:	10000003 	b	6480 <func_800315AC+0xb4>
    6474:	00602025 	move	a0,v1
    6478:	3c040000 	lui	a0,0x0
    647c:	24840444 	addiu	a0,a0,1092
    6480:	8e6302c0 	lw	v1,704(s3)
    6484:	24790008 	addiu	t9,v1,8
    6488:	ae7902c0 	sw	t9,704(s3)
    648c:	ac640004 	sw	a0,4(v1)
    6490:	ac7e0000 	sw	s8,0(v1)
    6494:	8e6302d0 	lw	v1,720(s3)
    6498:	24680008 	addiu	t0,v1,8
    649c:	ae6802d0 	sw	t0,720(s3)
    64a0:	ac640004 	sw	a0,4(v1)
    64a4:	ac7e0000 	sw	s8,0(v1)
    64a8:	8eea0000 	lw	t2,0(s7)
    64ac:	8fa90078 	lw	t1,120(sp)
    64b0:	a5491058 	sh	t1,4184(t2)
    64b4:	8ee30000 	lw	v1,0(s7)
    64b8:	84641054 	lh	a0,4180(v1)
    64bc:	5684000a 	bnel	s4,a0,64e8 <func_800315AC+0x11c>
    64c0:	3c010001 	lui	at,0x1
    64c4:	84621056 	lh	v0,4182(v1)
    64c8:	52420005 	beql	s2,v0,64e0 <func_800315AC+0x114>
    64cc:	846c105c 	lh	t4,4188(v1)
    64d0:	846b1058 	lh	t3,4184(v1)
    64d4:	544b0004 	bnel	v0,t3,64e8 <func_800315AC+0x11c>
    64d8:	3c010001 	lui	at,0x1
    64dc:	846c105c 	lh	t4,4188(v1)
    64e0:	15800009 	bnez	t4,6508 <func_800315AC+0x13c>
    64e4:	3c010001 	lui	at,0x1
    64e8:	34211d60 	ori	at,at,0x1d60
    64ec:	02a12021 	addu	a0,s5,at
    64f0:	26250024 	addiu	a1,s1,36
    64f4:	262600e4 	addiu	a2,s1,228
    64f8:	0c000000 	jal	0 <ActorShape_Init>
    64fc:	262700f0 	addiu	a3,s1,240
    6500:	8ee30000 	lw	v1,0(s7)
    6504:	84641054 	lh	a0,4180(v1)
    6508:	5684000b 	bnel	s4,a0,6538 <func_800315AC+0x16c>
    650c:	962f0020 	lhu	t7,32(s1)
    6510:	84621056 	lh	v0,4182(v1)
    6514:	52420005 	beql	s2,v0,652c <func_800315AC+0x160>
    6518:	846e105e 	lh	t6,4190(v1)
    651c:	846d1058 	lh	t5,4184(v1)
    6520:	544d0005 	bnel	v0,t5,6538 <func_800315AC+0x16c>
    6524:	962f0020 	lhu	t7,32(s1)
    6528:	846e105e 	lh	t6,4190(v1)
    652c:	15c00008 	bnez	t6,6550 <func_800315AC+0x184>
    6530:	00000000 	nop
    6534:	962f0020 	lhu	t7,32(s1)
    6538:	11e00005 	beqz	t7,6550 <func_800315AC+0x184>
    653c:	00000000 	nop
    6540:	0c000000 	jal	0 <ActorShape_Init>
    6544:	02202025 	move	a0,s1
    6548:	8ee30000 	lw	v1,0(s7)
    654c:	84641054 	lh	a0,4180(v1)
    6550:	5684000a 	bnel	s4,a0,657c <func_800315AC+0x1b0>
    6554:	02a02025 	move	a0,s5
    6558:	84621056 	lh	v0,4182(v1)
    655c:	52420005 	beql	s2,v0,6574 <func_800315AC+0x1a8>
    6560:	84791060 	lh	t9,4192(v1)
    6564:	84781058 	lh	t8,4184(v1)
    6568:	54580004 	bnel	v0,t8,657c <func_800315AC+0x1b0>
    656c:	02a02025 	move	a0,s5
    6570:	84791060 	lh	t9,4192(v1)
    6574:	1720000d 	bnez	t9,65ac <func_800315AC+0x1e0>
    6578:	02a02025 	move	a0,s5
    657c:	0c000000 	jal	0 <ActorShape_Init>
    6580:	02202825 	move	a1,s1
    6584:	50400006 	beqzl	v0,65a0 <func_800315AC+0x1d4>
    6588:	8e2a0004 	lw	t2,4(s1)
    658c:	8e280004 	lw	t0,4(s1)
    6590:	35090040 	ori	t1,t0,0x40
    6594:	10000005 	b	65ac <func_800315AC+0x1e0>
    6598:	ae290004 	sw	t1,4(s1)
    659c:	8e2a0004 	lw	t2,4(s1)
    65a0:	2401ffbf 	li	at,-65
    65a4:	01415824 	and	t3,t2,at
    65a8:	ae2b0004 	sw	t3,4(s1)
    65ac:	a2200115 	sb	zero,277(s1)
    65b0:	8ee30000 	lw	v1,0(s7)
    65b4:	84641054 	lh	a0,4180(v1)
    65b8:	5684000b 	bnel	s4,a0,65e8 <func_800315AC+0x21c>
    65bc:	8e2e0128 	lw	t6,296(s1)
    65c0:	84621056 	lh	v0,4182(v1)
    65c4:	52420005 	beql	s2,v0,65dc <func_800315AC+0x210>
    65c8:	846d1062 	lh	t5,4194(v1)
    65cc:	846c1058 	lh	t4,4184(v1)
    65d0:	544c0005 	bnel	v0,t4,65e8 <func_800315AC+0x21c>
    65d4:	8e2e0128 	lw	t6,296(s1)
    65d8:	846d1062 	lh	t5,4194(v1)
    65dc:	55a00035 	bnezl	t5,66b4 <func_800315AC+0x2e8>
    65e0:	8e310124 	lw	s1,292(s1)
    65e4:	8e2e0128 	lw	t6,296(s1)
    65e8:	55c00032 	bnezl	t6,66b4 <func_800315AC+0x2e8>
    65ec:	8e310124 	lw	s1,292(s1)
    65f0:	8e2f0134 	lw	t7,308(s1)
    65f4:	51e0002f 	beqzl	t7,66b4 <func_800315AC+0x2e8>
    65f8:	8e310124 	lw	s1,292(s1)
    65fc:	8e220004 	lw	v0,4(s1)
    6600:	30580060 	andi	t8,v0,0x60
    6604:	1300002a 	beqz	t8,66b0 <func_800315AC+0x2e4>
    6608:	30590080 	andi	t9,v0,0x80
    660c:	13200019 	beqz	t9,6674 <func_800315AC+0x2a8>
    6610:	3c010001 	lui	at,0x1
    6614:	02a11021 	addu	v0,s5,at
    6618:	90481cc1 	lbu	t0,7361(v0)
    661c:	2ac10014 	slti	at,s6,20
    6620:	00166080 	sll	t4,s6,0x2
    6624:	11000008 	beqz	t0,6648 <func_800315AC+0x27c>
    6628:	27ad0084 	addiu	t5,sp,132
    662c:	92a91c27 	lbu	t1,7207(s5)
    6630:	15200005 	bnez	t1,6648 <func_800315AC+0x27c>
    6634:	00000000 	nop
    6638:	804a1cbc 	lb	t2,7356(v0)
    663c:	822b0003 	lb	t3,3(s1)
    6640:	114b000c 	beq	t2,t3,6674 <func_800315AC+0x2a8>
    6644:	00000000 	nop
    6648:	14200007 	bnez	at,6668 <func_800315AC+0x29c>
    664c:	018d8021 	addu	s0,t4,t5
    6650:	3c040000 	lui	a0,0x0
    6654:	3c050000 	lui	a1,0x0
    6658:	24a50478 	addiu	a1,a1,1144
    665c:	24840448 	addiu	a0,a0,1096
    6660:	0c000000 	jal	0 <ActorShape_Init>
    6664:	24061940 	li	a2,6464
    6668:	ae110000 	sw	s1,0(s0)
    666c:	10000010 	b	66b0 <func_800315AC+0x2e4>
    6670:	26d60001 	addiu	s6,s6,1
    6674:	5684000a 	bnel	s4,a0,66a0 <func_800315AC+0x2d4>
    6678:	02a02025 	move	a0,s5
    667c:	84621056 	lh	v0,4182(v1)
    6680:	52420005 	beql	s2,v0,6698 <func_800315AC+0x2cc>
    6684:	846f1064 	lh	t7,4196(v1)
    6688:	846e1058 	lh	t6,4184(v1)
    668c:	544e0004 	bnel	v0,t6,66a0 <func_800315AC+0x2d4>
    6690:	02a02025 	move	a0,s5
    6694:	846f1064 	lh	t7,4196(v1)
    6698:	15e00005 	bnez	t7,66b0 <func_800315AC+0x2e4>
    669c:	02a02025 	move	a0,s5
    66a0:	0c000000 	jal	0 <ActorShape_Init>
    66a4:	02202825 	move	a1,s1
    66a8:	24180001 	li	t8,1
    66ac:	a2380115 	sb	t8,277(s1)
    66b0:	8e310124 	lw	s1,292(s1)
    66b4:	5620ff6b 	bnezl	s1,6464 <func_800315AC+0x98>
    66b8:	8e220138 	lw	v0,312(s1)
    66bc:	8fb90078 	lw	t9,120(sp)
    66c0:	8fa90080 	lw	t1,128(sp)
    66c4:	2401000c 	li	at,12
    66c8:	27280001 	addiu	t0,t9,1
    66cc:	252a0008 	addiu	t2,t1,8
    66d0:	afaa0080 	sw	t2,128(sp)
    66d4:	1501ff5a 	bne	t0,at,6440 <func_800315AC+0x74>
    66d8:	afa80078 	sw	t0,120(sp)
    66dc:	8ee30000 	lw	v1,0(s7)
    66e0:	84641054 	lh	a0,4180(v1)
    66e4:	16840004 	bne	s4,a0,66f8 <func_800315AC+0x32c>
    66e8:	00000000 	nop
    66ec:	846b1066 	lh	t3,4198(v1)
    66f0:	11600005 	beqz	t3,6708 <func_800315AC+0x33c>
    66f4:	00000000 	nop
    66f8:	0c000000 	jal	0 <ActorShape_Init>
    66fc:	8ea40000 	lw	a0,0(s5)
    6700:	8ee30000 	lw	v1,0(s7)
    6704:	84641054 	lh	a0,4180(v1)
    6708:	16840004 	bne	s4,a0,671c <func_800315AC+0x350>
    670c:	00000000 	nop
    6710:	846c1068 	lh	t4,4200(v1)
    6714:	11800005 	beqz	t4,672c <func_800315AC+0x360>
    6718:	00000000 	nop
    671c:	0c000000 	jal	0 <ActorShape_Init>
    6720:	02a02025 	move	a0,s5
    6724:	8ee30000 	lw	v1,0(s7)
    6728:	84641054 	lh	a0,4180(v1)
    672c:	56840005 	bnel	s4,a0,6744 <func_800315AC+0x378>
    6730:	92ae1c27 	lbu	t6,7207(s5)
    6734:	846d1064 	lh	t5,4196(v1)
    6738:	11a00011 	beqz	t5,6780 <func_800315AC+0x3b4>
    673c:	00000000 	nop
    6740:	92ae1c27 	lbu	t6,7207(s5)
    6744:	02a02025 	move	a0,s5
    6748:	02c02825 	move	a1,s6
    674c:	11c0000c 	beqz	t6,6780 <func_800315AC+0x3b4>
    6750:	00000000 	nop
    6754:	0c000000 	jal	0 <ActorShape_Init>
    6758:	27a60084 	addiu	a2,sp,132
    675c:	92af1d6c 	lbu	t7,7532(s5)
    6760:	15e00005 	bnez	t7,6778 <func_800315AC+0x3ac>
    6764:	00000000 	nop
    6768:	0c000000 	jal	0 <ActorShape_Init>
    676c:	02a02025 	move	a0,s5
    6770:	10400003 	beqz	v0,6780 <func_800315AC+0x3b4>
    6774:	00000000 	nop
    6778:	0c000000 	jal	0 <ActorShape_Init>
    677c:	02a02025 	move	a0,s5
    6780:	0c000000 	jal	0 <ActorShape_Init>
    6784:	02a02025 	move	a0,s5
    6788:	8ee30000 	lw	v1,0(s7)
    678c:	84780714 	lh	t8,1812(v1)
    6790:	57000006 	bnezl	t8,67ac <func_800315AC+0x3e0>
    6794:	84641054 	lh	a0,4180(v1)
    6798:	0c000000 	jal	0 <ActorShape_Init>
    679c:	02a02025 	move	a0,s5
    67a0:	3c030000 	lui	v1,0x0
    67a4:	8c630000 	lw	v1,0(v1)
    67a8:	84641054 	lh	a0,4180(v1)
    67ac:	56840005 	bnel	s4,a0,67c4 <func_800315AC+0x3f8>
    67b0:	8fa500dc 	lw	a1,220(sp)
    67b4:	8479106a 	lh	t9,4202(v1)
    67b8:	13200008 	beqz	t9,67dc <func_800315AC+0x410>
    67bc:	00000000 	nop
    67c0:	8fa500dc 	lw	a1,220(sp)
    67c4:	02a02025 	move	a0,s5
    67c8:	0c000000 	jal	0 <ActorShape_Init>
    67cc:	24a50128 	addiu	a1,a1,296
    67d0:	3c030000 	lui	v1,0x0
    67d4:	8c630000 	lw	v1,0(v1)
    67d8:	84641054 	lh	a0,4180(v1)
    67dc:	56840004 	bnel	s4,a0,67f0 <func_800315AC+0x424>
    67e0:	3c010001 	lui	at,0x1
    67e4:	8469106c 	lh	t1,4204(v1)
    67e8:	11200005 	beqz	t1,6800 <func_800315AC+0x434>
    67ec:	3c010001 	lui	at,0x1
    67f0:	34211e60 	ori	at,at,0x1e60
    67f4:	02a12821 	addu	a1,s5,at
    67f8:	0c000000 	jal	0 <ActorShape_Init>
    67fc:	02a02025 	move	a0,s5
    6800:	3c060000 	lui	a2,0x0
    6804:	24c60488 	addiu	a2,a2,1160
    6808:	27a40064 	addiu	a0,sp,100
    680c:	8ea50000 	lw	a1,0(s5)
    6810:	0c000000 	jal	0 <ActorShape_Init>
    6814:	240719a3 	li	a3,6563
    6818:	8fbf003c 	lw	ra,60(sp)
    681c:	8fb00018 	lw	s0,24(sp)
    6820:	8fb1001c 	lw	s1,28(sp)
    6824:	8fb20020 	lw	s2,32(sp)
    6828:	8fb30024 	lw	s3,36(sp)
    682c:	8fb40028 	lw	s4,40(sp)
    6830:	8fb5002c 	lw	s5,44(sp)
    6834:	8fb60030 	lw	s6,48(sp)
    6838:	8fb70034 	lw	s7,52(sp)
    683c:	8fbe0038 	lw	s8,56(sp)
    6840:	03e00008 	jr	ra
    6844:	27bd00d8 	addiu	sp,sp,216

00006848 <func_80031A28>:
    6848:	27bdffd0 	addiu	sp,sp,-48
    684c:	afb50028 	sw	s5,40(sp)
    6850:	afb40024 	sw	s4,36(sp)
    6854:	afb30020 	sw	s3,32(sp)
    6858:	afb2001c 	sw	s2,28(sp)
    685c:	0080a825 	move	s5,a0
    6860:	afbf002c 	sw	ra,44(sp)
    6864:	afb10018 	sw	s1,24(sp)
    6868:	afb00014 	sw	s0,20(sp)
    686c:	00009025 	move	s2,zero
    6870:	00a09825 	move	s3,a1
    6874:	24140060 	li	s4,96
    6878:	8e700010 	lw	s0,16(s3)
    687c:	3c010001 	lui	at,0x1
    6880:	342117a4 	ori	at,at,0x17a4
    6884:	1200000b 	beqz	s0,68b4 <func_80031A28+0x6c>
    6888:	02a18821 	addu	s1,s5,at
    688c:	02202025 	move	a0,s1
    6890:	0c000000 	jal	0 <ActorShape_Init>
    6894:	8205001e 	lb	a1,30(s0)
    6898:	54400004 	bnezl	v0,68ac <func_80031A28+0x64>
    689c:	8e100124 	lw	s0,292(s0)
    68a0:	0c000000 	jal	0 <ActorShape_Init>
    68a4:	02002025 	move	a0,s0
    68a8:	8e100124 	lw	s0,292(s0)
    68ac:	5600fff8 	bnezl	s0,6890 <func_80031A28+0x48>
    68b0:	02202025 	move	a0,s1
    68b4:	26520008 	addiu	s2,s2,8
    68b8:	1654ffef 	bne	s2,s4,6878 <func_80031A28+0x30>
    68bc:	26730008 	addiu	s3,s3,8
    68c0:	8fbf002c 	lw	ra,44(sp)
    68c4:	8fb00014 	lw	s0,20(sp)
    68c8:	8fb10018 	lw	s1,24(sp)
    68cc:	8fb2001c 	lw	s2,28(sp)
    68d0:	8fb30020 	lw	s3,32(sp)
    68d4:	8fb40024 	lw	s4,36(sp)
    68d8:	8fb50028 	lw	s5,40(sp)
    68dc:	03e00008 	jr	ra
    68e0:	27bd0030 	addiu	sp,sp,48

000068e4 <Actor_FreezeAllEnemies>:
    68e4:	afa40000 	sw	a0,0(sp)
    68e8:	3c040000 	lui	a0,0x0
    68ec:	3c030000 	lui	v1,0x0
    68f0:	24630000 	addiu	v1,v1,0
    68f4:	24840002 	addiu	a0,a0,2
    68f8:	906e0000 	lbu	t6,0(v1)
    68fc:	24630001 	addiu	v1,v1,1
    6900:	000e78c0 	sll	t7,t6,0x3
    6904:	00afc021 	addu	t8,a1,t7
    6908:	8f020010 	lw	v0,16(t8)
    690c:	10400005 	beqz	v0,6924 <Actor_FreezeAllEnemies+0x40>
    6910:	00000000 	nop
    6914:	a4460110 	sh	a2,272(v0)
    6918:	8c420124 	lw	v0,292(v0)
    691c:	5440fffe 	bnezl	v0,6918 <Actor_FreezeAllEnemies+0x34>
    6920:	a4460110 	sh	a2,272(v0)
    6924:	5464fff5 	bnel	v1,a0,68fc <Actor_FreezeAllEnemies+0x18>
    6928:	906e0000 	lbu	t6,0(v1)
    692c:	03e00008 	jr	ra
    6930:	00000000 	nop

00006934 <func_80031B14>:
    6934:	27bdffc8 	addiu	sp,sp,-56
    6938:	afb60030 	sw	s6,48(sp)
    693c:	afb5002c 	sw	s5,44(sp)
    6940:	afb40028 	sw	s4,40(sp)
    6944:	afb30024 	sw	s3,36(sp)
    6948:	afb20020 	sw	s2,32(sp)
    694c:	afb1001c 	sw	s1,28(sp)
    6950:	00808825 	move	s1,a0
    6954:	00a09825 	move	s3,a1
    6958:	afbf0034 	sw	ra,52(sp)
    695c:	afb00018 	sw	s0,24(sp)
    6960:	3c120001 	lui	s2,0x1
    6964:	0000a025 	move	s4,zero
    6968:	00a0a825 	move	s5,a1
    696c:	24160060 	li	s6,96
    6970:	8eb00010 	lw	s0,16(s5)
    6974:	5200001f 	beqzl	s0,69f4 <func_80031B14+0xc0>
    6978:	26940008 	addiu	s4,s4,8
    697c:	82020003 	lb	v0,3(s0)
    6980:	02321821 	addu	v1,s1,s2
    6984:	04420018 	bltzl	v0,69e8 <func_80031B14+0xb4>
    6988:	8e100124 	lw	s0,292(s0)
    698c:	806e1cbc 	lb	t6,7356(v1)
    6990:	51c20015 	beql	t6,v0,69e8 <func_80031B14+0xb4>
    6994:	8e100124 	lw	s0,292(s0)
    6998:	806f1cd0 	lb	t7,7376(v1)
    699c:	51e20012 	beql	t7,v0,69e8 <func_80031B14+0xb4>
    69a0:	8e100124 	lw	s0,292(s0)
    69a4:	92180115 	lbu	t8,277(s0)
    69a8:	02602025 	move	a0,s3
    69ac:	02002825 	move	a1,s0
    69b0:	17000005 	bnez	t8,69c8 <func_80031B14+0x94>
    69b4:	00000000 	nop
    69b8:	0c000000 	jal	0 <ActorShape_Init>
    69bc:	02203025 	move	a2,s1
    69c0:	10000009 	b	69e8 <func_80031B14+0xb4>
    69c4:	00408025 	move	s0,v0
    69c8:	0c000000 	jal	0 <ActorShape_Init>
    69cc:	02002025 	move	a0,s0
    69d0:	02002025 	move	a0,s0
    69d4:	0c000000 	jal	0 <ActorShape_Init>
    69d8:	02202825 	move	a1,s1
    69dc:	10000002 	b	69e8 <func_80031B14+0xb4>
    69e0:	8e100124 	lw	s0,292(s0)
    69e4:	8e100124 	lw	s0,292(s0)
    69e8:	5600ffe5 	bnezl	s0,6980 <func_80031B14+0x4c>
    69ec:	82020003 	lb	v0,3(s0)
    69f0:	26940008 	addiu	s4,s4,8
    69f4:	1696ffde 	bne	s4,s6,6970 <func_80031B14+0x3c>
    69f8:	26b50008 	addiu	s5,s5,8
    69fc:	3c010001 	lui	at,0x1
    6a00:	34211e60 	ori	at,at,0x1e60
    6a04:	02212821 	addu	a1,s1,at
    6a08:	0c000000 	jal	0 <ActorShape_Init>
    6a0c:	02202025 	move	a0,s1
    6a10:	8e790108 	lw	t9,264(s3)
    6a14:	3c0100ff 	lui	at,0xff
    6a18:	3421ffff 	ori	at,at,0xffff
    6a1c:	03214024 	and	t0,t9,at
    6a20:	3c010001 	lui	at,0x1
    6a24:	ae60011c 	sw	zero,284(s3)
    6a28:	ae680108 	sw	t0,264(s3)
    6a2c:	00310821 	addu	at,at,s1
    6a30:	a42004cc 	sh	zero,1228(at)
    6a34:	8fbf0034 	lw	ra,52(sp)
    6a38:	8fb60030 	lw	s6,48(sp)
    6a3c:	8fb5002c 	lw	s5,44(sp)
    6a40:	8fb40028 	lw	s4,40(sp)
    6a44:	8fb30024 	lw	s3,36(sp)
    6a48:	8fb20020 	lw	s2,32(sp)
    6a4c:	8fb1001c 	lw	s1,28(sp)
    6a50:	8fb00018 	lw	s0,24(sp)
    6a54:	03e00008 	jr	ra
    6a58:	27bd0038 	addiu	sp,sp,56

00006a5c <func_80031C3C>:
    6a5c:	27bdffd0 	addiu	sp,sp,-48
    6a60:	afb50028 	sw	s5,40(sp)
    6a64:	afb40024 	sw	s4,36(sp)
    6a68:	afb30020 	sw	s3,32(sp)
    6a6c:	afb2001c 	sw	s2,28(sp)
    6a70:	afb10018 	sw	s1,24(sp)
    6a74:	00809025 	move	s2,a0
    6a78:	00a09825 	move	s3,a1
    6a7c:	afbf002c 	sw	ra,44(sp)
    6a80:	afb00014 	sw	s0,20(sp)
    6a84:	00808825 	move	s1,a0
    6a88:	0000a025 	move	s4,zero
    6a8c:	24150060 	li	s5,96
    6a90:	8e300010 	lw	s0,16(s1)
    6a94:	12000007 	beqz	s0,6ab4 <func_80031C3C+0x58>
    6a98:	02402025 	move	a0,s2
    6a9c:	02002825 	move	a1,s0
    6aa0:	0c000000 	jal	0 <ActorShape_Init>
    6aa4:	02603025 	move	a2,s3
    6aa8:	8e300010 	lw	s0,16(s1)
    6aac:	5600fffb 	bnezl	s0,6a9c <func_80031C3C+0x40>
    6ab0:	02402025 	move	a0,s2
    6ab4:	26940008 	addiu	s4,s4,8
    6ab8:	1695fff5 	bne	s4,s5,6a90 <func_80031C3C+0x34>
    6abc:	26310008 	addiu	s1,s1,8
    6ac0:	3c0e0000 	lui	t6,0x0
    6ac4:	8dce0000 	lw	t6,0(t6)
    6ac8:	3c040000 	lui	a0,0x0
    6acc:	85cf0ffc 	lh	t7,4092(t6)
    6ad0:	51e00004 	beqzl	t7,6ae4 <func_80031C3C+0x88>
    6ad4:	8e44013c 	lw	a0,316(s2)
    6ad8:	0c000000 	jal	0 <ActorShape_Init>
    6adc:	24840498 	addiu	a0,a0,1176
    6ae0:	8e44013c 	lw	a0,316(s2)
    6ae4:	3c050000 	lui	a1,0x0
    6ae8:	24a504ac 	addiu	a1,a1,1196
    6aec:	10800004 	beqz	a0,6b00 <func_80031C3C+0xa4>
    6af0:	00000000 	nop
    6af4:	0c000000 	jal	0 <ActorShape_Init>
    6af8:	24061a4b 	li	a2,6731
    6afc:	ae40013c 	sw	zero,316(s2)
    6b00:	0c000000 	jal	0 <ActorShape_Init>
    6b04:	02602025 	move	a0,s3
    6b08:	0c000000 	jal	0 <ActorShape_Init>
    6b0c:	02602025 	move	a0,s3
    6b10:	0c000000 	jal	0 <ActorShape_Init>
    6b14:	00000000 	nop
    6b18:	8fbf002c 	lw	ra,44(sp)
    6b1c:	8fb00014 	lw	s0,20(sp)
    6b20:	8fb10018 	lw	s1,24(sp)
    6b24:	8fb2001c 	lw	s2,28(sp)
    6b28:	8fb30020 	lw	s3,32(sp)
    6b2c:	8fb40024 	lw	s4,36(sp)
    6b30:	8fb50028 	lw	s5,40(sp)
    6b34:	03e00008 	jr	ra
    6b38:	27bd0030 	addiu	sp,sp,48

00006b3c <Actor_AddToTypeList>:
    6b3c:	afa60008 	sw	a2,8(sp)
    6b40:	30c600ff 	andi	a2,a2,0xff
    6b44:	a0a60002 	sb	a2,2(a1)
    6b48:	908e0008 	lbu	t6,8(a0)
    6b4c:	0006c0c0 	sll	t8,a2,0x3
    6b50:	00981021 	addu	v0,a0,t8
    6b54:	25cf0001 	addiu	t7,t6,1
    6b58:	a08f0008 	sb	t7,8(a0)
    6b5c:	8c59000c 	lw	t9,12(v0)
    6b60:	8c430010 	lw	v1,16(v0)
    6b64:	27280001 	addiu	t0,t9,1
    6b68:	10600002 	beqz	v1,6b74 <Actor_AddToTypeList+0x38>
    6b6c:	ac48000c 	sw	t0,12(v0)
    6b70:	ac650120 	sw	a1,288(v1)
    6b74:	ac450010 	sw	a1,16(v0)
    6b78:	03e00008 	jr	ra
    6b7c:	aca30124 	sw	v1,292(a1)

00006b80 <Actor_RemoveFromTypeList>:
    6b80:	27bdffe0 	addiu	sp,sp,-32
    6b84:	afbf0014 	sw	ra,20(sp)
    6b88:	90ae0008 	lbu	t6,8(a1)
    6b8c:	3c070001 	lui	a3,0x1
    6b90:	00e43821 	addu	a3,a3,a0
    6b94:	25cfffff 	addiu	t7,t6,-1
    6b98:	a0af0008 	sb	t7,8(a1)
    6b9c:	90d80002 	lbu	t8,2(a2)
    6ba0:	0018c8c0 	sll	t9,t8,0x3
    6ba4:	00b91021 	addu	v0,a1,t9
    6ba8:	8c48000c 	lw	t0,12(v0)
    6bac:	2509ffff 	addiu	t1,t0,-1
    6bb0:	ac49000c 	sw	t1,12(v0)
    6bb4:	8cc30120 	lw	v1,288(a2)
    6bb8:	50600005 	beqzl	v1,6bd0 <Actor_RemoveFromTypeList+0x50>
    6bbc:	90cc0002 	lbu	t4,2(a2)
    6bc0:	8cca0124 	lw	t2,292(a2)
    6bc4:	10000006 	b	6be0 <Actor_RemoveFromTypeList+0x60>
    6bc8:	ac6a0124 	sw	t2,292(v1)
    6bcc:	90cc0002 	lbu	t4,2(a2)
    6bd0:	8ccb0124 	lw	t3,292(a2)
    6bd4:	000c68c0 	sll	t5,t4,0x3
    6bd8:	00ad7021 	addu	t6,a1,t5
    6bdc:	adcb0010 	sw	t3,16(t6)
    6be0:	8cc30124 	lw	v1,292(a2)
    6be4:	50600004 	beqzl	v1,6bf8 <Actor_RemoveFromTypeList+0x78>
    6be8:	acc00124 	sw	zero,292(a2)
    6bec:	8ccf0120 	lw	t7,288(a2)
    6bf0:	ac6f0120 	sw	t7,288(v1)
    6bf4:	acc00124 	sw	zero,292(a2)
    6bf8:	acc00120 	sw	zero,288(a2)
    6bfc:	80e71cbc 	lb	a3,7356(a3)
    6c00:	80d80003 	lb	t8,3(a2)
    6c04:	54f8000d 	bnel	a3,t8,6c3c <Actor_RemoveFromTypeList+0xbc>
    6c08:	8fbf0014 	lw	ra,20(sp)
    6c0c:	90d90002 	lbu	t9,2(a2)
    6c10:	24010005 	li	at,5
    6c14:	57210009 	bnel	t9,at,6c3c <Actor_RemoveFromTypeList+0xbc>
    6c18:	8fbf0014 	lw	ra,20(sp)
    6c1c:	8ca80034 	lw	t0,52(a1)
    6c20:	00e02825 	move	a1,a3
    6c24:	55000005 	bnezl	t0,6c3c <Actor_RemoveFromTypeList+0xbc>
    6c28:	8fbf0014 	lw	ra,20(sp)
    6c2c:	0c000000 	jal	0 <ActorShape_Init>
    6c30:	afa3001c 	sw	v1,28(sp)
    6c34:	8fa3001c 	lw	v1,28(sp)
    6c38:	8fbf0014 	lw	ra,20(sp)
    6c3c:	27bd0020 	addiu	sp,sp,32
    6c40:	00601025 	move	v0,v1
    6c44:	03e00008 	jr	ra
    6c48:	00000000 	nop

00006c4c <Actor_FreeOverlay>:
    6c4c:	27bdffe8 	addiu	sp,sp,-24
    6c50:	afa40018 	sw	a0,24(sp)
    6c54:	afbf0014 	sw	ra,20(sp)
    6c58:	3c040000 	lui	a0,0x0
    6c5c:	0c000000 	jal	0 <ActorShape_Init>
    6c60:	248404bc 	addiu	a0,a0,1212
    6c64:	8fa70018 	lw	a3,24(sp)
    6c68:	3c0e0000 	lui	t6,0x0
    6c6c:	3c090000 	lui	t1,0x0
    6c70:	80e5001e 	lb	a1,30(a3)
    6c74:	14a00030 	bnez	a1,6d38 <Actor_FreeOverlay+0xec>
    6c78:	00000000 	nop
    6c7c:	8dce0000 	lw	t6,0(t6)
    6c80:	3c040000 	lui	a0,0x0
    6c84:	85cf0ffc 	lh	t7,4092(t6)
    6c88:	51e00005 	beqzl	t7,6ca0 <Actor_FreeOverlay+0x54>
    6c8c:	8ce40010 	lw	a0,16(a3)
    6c90:	0c000000 	jal	0 <ActorShape_Init>
    6c94:	248404c4 	addiu	a0,a0,1220
    6c98:	8fa70018 	lw	a3,24(sp)
    6c9c:	8ce40010 	lw	a0,16(a3)
    6ca0:	1080002c 	beqz	a0,6d54 <Actor_FreeOverlay+0x108>
    6ca4:	00000000 	nop
    6ca8:	94e3001c 	lhu	v1,28(a3)
    6cac:	3c180000 	lui	t8,0x0
    6cb0:	8f180000 	lw	t8,0(t8)
    6cb4:	30790002 	andi	t9,v1,0x2
    6cb8:	13200007 	beqz	t9,6cd8 <Actor_FreeOverlay+0x8c>
    6cbc:	87020ffc 	lh	v0,4092(t8)
    6cc0:	10400024 	beqz	v0,6d54 <Actor_FreeOverlay+0x108>
    6cc4:	3c040000 	lui	a0,0x0
    6cc8:	0c000000 	jal	0 <ActorShape_Init>
    6ccc:	248404ec 	addiu	a0,a0,1260
    6cd0:	10000020 	b	6d54 <Actor_FreeOverlay+0x108>
    6cd4:	00000000 	nop
    6cd8:	30680001 	andi	t0,v1,0x1
    6cdc:	11000008 	beqz	t0,6d00 <Actor_FreeOverlay+0xb4>
    6ce0:	00000000 	nop
    6ce4:	10400004 	beqz	v0,6cf8 <Actor_FreeOverlay+0xac>
    6ce8:	3c040000 	lui	a0,0x0
    6cec:	0c000000 	jal	0 <ActorShape_Init>
    6cf0:	24840508 	addiu	a0,a0,1288
    6cf4:	8fa70018 	lw	a3,24(sp)
    6cf8:	10000016 	b	6d54 <Actor_FreeOverlay+0x108>
    6cfc:	ace00010 	sw	zero,16(a3)
    6d00:	10400006 	beqz	v0,6d1c <Actor_FreeOverlay+0xd0>
    6d04:	00000000 	nop
    6d08:	3c040000 	lui	a0,0x0
    6d0c:	0c000000 	jal	0 <ActorShape_Init>
    6d10:	2484052c 	addiu	a0,a0,1324
    6d14:	8fa70018 	lw	a3,24(sp)
    6d18:	8ce40010 	lw	a0,16(a3)
    6d1c:	3c050000 	lui	a1,0x0
    6d20:	24a50544 	addiu	a1,a1,1348
    6d24:	0c000000 	jal	0 <ActorShape_Init>
    6d28:	24061ab2 	li	a2,6834
    6d2c:	8fa70018 	lw	a3,24(sp)
    6d30:	10000008 	b	6d54 <Actor_FreeOverlay+0x108>
    6d34:	ace00010 	sw	zero,16(a3)
    6d38:	8d290000 	lw	t1,0(t1)
    6d3c:	3c040000 	lui	a0,0x0
    6d40:	852a0ffc 	lh	t2,4092(t1)
    6d44:	11400003 	beqz	t2,6d54 <Actor_FreeOverlay+0x108>
    6d48:	00000000 	nop
    6d4c:	0c000000 	jal	0 <ActorShape_Init>
    6d50:	24840554 	addiu	a0,a0,1364
    6d54:	3c040000 	lui	a0,0x0
    6d58:	0c000000 	jal	0 <ActorShape_Init>
    6d5c:	24840580 	addiu	a0,a0,1408
    6d60:	8fbf0014 	lw	ra,20(sp)
    6d64:	27bd0018 	addiu	sp,sp,24
    6d68:	03e00008 	jr	ra
    6d6c:	00000000 	nop

00006d70 <Actor_Spawn>:
    6d70:	27bdffa0 	addiu	sp,sp,-96
    6d74:	afa60068 	sw	a2,104(sp)
    6d78:	afa7006c 	sw	a3,108(sp)
    6d7c:	87a7006a 	lh	a3,106(sp)
    6d80:	afbf002c 	sw	ra,44(sp)
    6d84:	afb00028 	sw	s0,40(sp)
    6d88:	28e101d7 	slti	at,a3,471
    6d8c:	afa40060 	sw	a0,96(sp)
    6d90:	14200009 	bnez	at,6db8 <Actor_Spawn+0x48>
    6d94:	afa50064 	sw	a1,100(sp)
    6d98:	3c040000 	lui	a0,0x0
    6d9c:	3c050000 	lui	a1,0x0
    6da0:	24a5059c 	addiu	a1,a1,1436
    6da4:	24840584 	addiu	a0,a0,1412
    6da8:	24061ae3 	li	a2,6883
    6dac:	0c000000 	jal	0 <ActorShape_Init>
    6db0:	a7a7006a 	sh	a3,106(sp)
    6db4:	87a7006a 	lh	a3,106(sp)
    6db8:	3c0f0000 	lui	t7,0x0
    6dbc:	25ef0000 	addiu	t7,t7,0
    6dc0:	00077140 	sll	t6,a3,0x5
    6dc4:	01cf8021 	addu	s0,t6,t7
    6dc8:	8e020018 	lw	v0,24(s0)
    6dcc:	3c180000 	lui	t8,0x0
    6dd0:	271805ac 	addiu	t8,t8,1452
    6dd4:	10400003 	beqz	v0,6de4 <Actor_Spawn+0x74>
    6dd8:	3c040000 	lui	a0,0x0
    6ddc:	10000002 	b	6de8 <Actor_Spawn+0x78>
    6de0:	afa20044 	sw	v0,68(sp)
    6de4:	afb80044 	sw	t8,68(sp)
    6de8:	8e19000c 	lw	t9,12(s0)
    6dec:	8e080008 	lw	t0,8(s0)
    6df0:	3c0a0000 	lui	t2,0x0
    6df4:	8d4a0000 	lw	t2,0(t2)
    6df8:	03284823 	subu	t1,t9,t0
    6dfc:	afa90040 	sw	t1,64(sp)
    6e00:	854b0ffc 	lh	t3,4092(t2)
    6e04:	248405b0 	addiu	a0,a0,1456
    6e08:	00e02825 	move	a1,a3
    6e0c:	51600004 	beqzl	t3,6e20 <Actor_Spawn+0xb0>
    6e10:	8fac0060 	lw	t4,96(sp)
    6e14:	0c000000 	jal	0 <ActorShape_Init>
    6e18:	8fa60044 	lw	a2,68(sp)
    6e1c:	8fac0060 	lw	t4,96(sp)
    6e20:	3c040000 	lui	a0,0x0
    6e24:	918d0008 	lbu	t5,8(t4)
    6e28:	29a100c9 	slti	at,t5,201
    6e2c:	54200006 	bnezl	at,6e48 <Actor_Spawn+0xd8>
    6e30:	8e0e0008 	lw	t6,8(s0)
    6e34:	0c000000 	jal	0 <ActorShape_Init>
    6e38:	248405cc 	addiu	a0,a0,1484
    6e3c:	10000109 	b	7264 <Actor_Spawn+0x4f4>
    6e40:	00001025 	move	v0,zero
    6e44:	8e0e0008 	lw	t6,8(s0)
    6e48:	3c0f0000 	lui	t7,0x0
    6e4c:	55c0000b 	bnezl	t6,6e7c <Actor_Spawn+0x10c>
    6e50:	8e190010 	lw	t9,16(s0)
    6e54:	8def0000 	lw	t7,0(t7)
    6e58:	3c040000 	lui	a0,0x0
    6e5c:	85f80ffc 	lh	t8,4092(t7)
    6e60:	13000003 	beqz	t8,6e70 <Actor_Spawn+0x100>
    6e64:	00000000 	nop
    6e68:	0c000000 	jal	0 <ActorShape_Init>
    6e6c:	248405f4 	addiu	a0,a0,1524
    6e70:	1000006d 	b	7028 <Actor_Spawn+0x2b8>
    6e74:	8e030014 	lw	v1,20(s0)
    6e78:	8e190010 	lw	t9,16(s0)
    6e7c:	3c080000 	lui	t0,0x0
    6e80:	5320000b 	beqzl	t9,6eb0 <Actor_Spawn+0x140>
    6e84:	9602001c 	lhu	v0,28(s0)
    6e88:	8d080000 	lw	t0,0(t0)
    6e8c:	3c040000 	lui	a0,0x0
    6e90:	85090ffc 	lh	t1,4092(t0)
    6e94:	5120005b 	beqzl	t1,7004 <Actor_Spawn+0x294>
    6e98:	8e030014 	lw	v1,20(s0)
    6e9c:	0c000000 	jal	0 <ActorShape_Init>
    6ea0:	24840610 	addiu	a0,a0,1552
    6ea4:	10000057 	b	7004 <Actor_Spawn+0x294>
    6ea8:	8e030014 	lw	v1,20(s0)
    6eac:	9602001c 	lhu	v0,28(s0)
    6eb0:	8fab0040 	lw	t3,64(sp)
    6eb4:	304a0001 	andi	t2,v0,0x1
    6eb8:	11400021 	beqz	t2,6f40 <Actor_Spawn+0x1d0>
    6ebc:	30490002 	andi	t1,v0,0x2
    6ec0:	2d6127a1 	sltiu	at,t3,10145
    6ec4:	14200006 	bnez	at,6ee0 <Actor_Spawn+0x170>
    6ec8:	3c040000 	lui	a0,0x0
    6ecc:	3c050000 	lui	a1,0x0
    6ed0:	24a50648 	addiu	a1,a1,1608
    6ed4:	24840628 	addiu	a0,a0,1576
    6ed8:	0c000000 	jal	0 <ActorShape_Init>
    6edc:	24061b16 	li	a2,6934
    6ee0:	8fac0060 	lw	t4,96(sp)
    6ee4:	3c050000 	lui	a1,0x0
    6ee8:	24a50658 	addiu	a1,a1,1624
    6eec:	8d8d013c 	lw	t5,316(t4)
    6ef0:	240427a0 	li	a0,10144
    6ef4:	55a0000f 	bnezl	t5,6f34 <Actor_Spawn+0x1c4>
    6ef8:	8fb90060 	lw	t9,96(sp)
    6efc:	0c000000 	jal	0 <ActorShape_Init>
    6f00:	00003025 	move	a2,zero
    6f04:	8fae0060 	lw	t6,96(sp)
    6f08:	3c0f0000 	lui	t7,0x0
    6f0c:	3c040000 	lui	a0,0x0
    6f10:	adc2013c 	sw	v0,316(t6)
    6f14:	8def0000 	lw	t7,0(t7)
    6f18:	2484066c 	addiu	a0,a0,1644
    6f1c:	85f80ffc 	lh	t8,4092(t7)
    6f20:	53000004 	beqzl	t8,6f34 <Actor_Spawn+0x1c4>
    6f24:	8fb90060 	lw	t9,96(sp)
    6f28:	0c000000 	jal	0 <ActorShape_Init>
    6f2c:	240527a0 	li	a1,10144
    6f30:	8fb90060 	lw	t9,96(sp)
    6f34:	8f28013c 	lw	t0,316(t9)
    6f38:	1000000d 	b	6f70 <Actor_Spawn+0x200>
    6f3c:	ae080010 	sw	t0,16(s0)
    6f40:	11200007 	beqz	t1,6f60 <Actor_Spawn+0x1f0>
    6f44:	8fa40040 	lw	a0,64(sp)
    6f48:	8fa40040 	lw	a0,64(sp)
    6f4c:	8fa50044 	lw	a1,68(sp)
    6f50:	0c000000 	jal	0 <ActorShape_Init>
    6f54:	00003025 	move	a2,zero
    6f58:	10000005 	b	6f70 <Actor_Spawn+0x200>
    6f5c:	ae020010 	sw	v0,16(s0)
    6f60:	8fa50044 	lw	a1,68(sp)
    6f64:	0c000000 	jal	0 <ActorShape_Init>
    6f68:	00003025 	move	a2,zero
    6f6c:	ae020010 	sw	v0,16(s0)
    6f70:	8e020010 	lw	v0,16(s0)
    6f74:	3c040000 	lui	a0,0x0
    6f78:	54400006 	bnezl	v0,6f94 <Actor_Spawn+0x224>
    6f7c:	8e040000 	lw	a0,0(s0)
    6f80:	0c000000 	jal	0 <ActorShape_Init>
    6f84:	2484068c 	addiu	a0,a0,1676
    6f88:	100000b6 	b	7264 <Actor_Spawn+0x4f4>
    6f8c:	00001025 	move	v0,zero
    6f90:	8e040000 	lw	a0,0(s0)
    6f94:	8e050004 	lw	a1,4(s0)
    6f98:	8e060008 	lw	a2,8(s0)
    6f9c:	8e07000c 	lw	a3,12(s0)
    6fa0:	0c000000 	jal	0 <ActorShape_Init>
    6fa4:	afa20010 	sw	v0,16(sp)
    6fa8:	3c040000 	lui	a0,0x0
    6fac:	0c000000 	jal	0 <ActorShape_Init>
    6fb0:	248406c4 	addiu	a0,a0,1732
    6fb4:	8e050008 	lw	a1,8(s0)
    6fb8:	8e06000c 	lw	a2,12(s0)
    6fbc:	8e070010 	lw	a3,16(s0)
    6fc0:	8fad0044 	lw	t5,68(sp)
    6fc4:	3c040000 	lui	a0,0x0
    6fc8:	00e65021 	addu	t2,a3,a2
    6fcc:	01455823 	subu	t3,t2,a1
    6fd0:	00a76023 	subu	t4,a1,a3
    6fd4:	afac0014 	sw	t4,20(sp)
    6fd8:	afab0010 	sw	t3,16(sp)
    6fdc:	248406cc 	addiu	a0,a0,1740
    6fe0:	00a01825 	move	v1,a1
    6fe4:	00e01025 	move	v0,a3
    6fe8:	0c000000 	jal	0 <ActorShape_Init>
    6fec:	afad0018 	sw	t5,24(sp)
    6ff0:	3c040000 	lui	a0,0x0
    6ff4:	0c000000 	jal	0 <ActorShape_Init>
    6ff8:	248406fc 	addiu	a0,a0,1788
    6ffc:	a200001e 	sb	zero,30(s0)
    7000:	8e030014 	lw	v1,20(s0)
    7004:	00001025 	move	v0,zero
    7008:	10600006 	beqz	v1,7024 <Actor_Spawn+0x2b4>
    700c:	00000000 	nop
    7010:	8e0e0008 	lw	t6,8(s0)
    7014:	8e0f0010 	lw	t7,16(s0)
    7018:	01cfc023 	subu	t8,t6,t7
    701c:	10000001 	b	7024 <Actor_Spawn+0x2b4>
    7020:	00781023 	subu	v0,v1,t8
    7024:	00401825 	move	v1,v0
    7028:	8fa40064 	lw	a0,100(sp)
    702c:	3c010001 	lui	at,0x1
    7030:	342117a4 	ori	at,at,0x17a4
    7034:	84650008 	lh	a1,8(v1)
    7038:	afa30054 	sw	v1,84(sp)
    703c:	0c000000 	jal	0 <ActorShape_Init>
    7040:	00812021 	addu	a0,a0,at
    7044:	8fa30054 	lw	v1,84(sp)
    7048:	0440000c 	bltz	v0,707c <Actor_Spawn+0x30c>
    704c:	afa20050 	sw	v0,80(sp)
    7050:	90790002 	lbu	t9,2(v1)
    7054:	24010005 	li	at,5
    7058:	8fa40064 	lw	a0,100(sp)
    705c:	17210010 	bne	t9,at,70a0 <Actor_Spawn+0x330>
    7060:	3c050001 	lui	a1,0x1
    7064:	00a42821 	addu	a1,a1,a0
    7068:	80a51cbc 	lb	a1,7356(a1)
    706c:	0c000000 	jal	0 <ActorShape_Init>
    7070:	afa30054 	sw	v1,84(sp)
    7074:	1040000a 	beqz	v0,70a0 <Actor_Spawn+0x330>
    7078:	8fa30054 	lw	v1,84(sp)
    707c:	3c040000 	lui	a0,0x0
    7080:	24840700 	addiu	a0,a0,1792
    7084:	8fa50050 	lw	a1,80(sp)
    7088:	0c000000 	jal	0 <ActorShape_Init>
    708c:	84660008 	lh	a2,8(v1)
    7090:	0c000000 	jal	0 <ActorShape_Init>
    7094:	02002025 	move	a0,s0
    7098:	10000072 	b	7264 <Actor_Spawn+0x4f4>
    709c:	00001025 	move	v0,zero
    70a0:	8c64000c 	lw	a0,12(v1)
    70a4:	afa30054 	sw	v1,84(sp)
    70a8:	8fa50044 	lw	a1,68(sp)
    70ac:	0c000000 	jal	0 <ActorShape_Init>
    70b0:	24060001 	li	a2,1
    70b4:	8fa30054 	lw	v1,84(sp)
    70b8:	1440000c 	bnez	v0,70ec <Actor_Spawn+0x37c>
    70bc:	00403825 	move	a3,v0
    70c0:	3c040000 	lui	a0,0x0
    70c4:	3c050000 	lui	a1,0x0
    70c8:	24a50788 	addiu	a1,a1,1928
    70cc:	24840748 	addiu	a0,a0,1864
    70d0:	8fa60044 	lw	a2,68(sp)
    70d4:	0c000000 	jal	0 <ActorShape_Init>
    70d8:	8c67000c 	lw	a3,12(v1)
    70dc:	0c000000 	jal	0 <ActorShape_Init>
    70e0:	02002025 	move	a0,s0
    70e4:	1000005f 	b	7264 <Actor_Spawn+0x4f4>
    70e8:	00001025 	move	v0,zero
    70ec:	8fa90064 	lw	t1,100(sp)
    70f0:	8202001e 	lb	v0,30(s0)
    70f4:	3c010001 	lui	at,0x1
    70f8:	01215021 	addu	t2,t1,at
    70fc:	284100ff 	slti	at,v0,255
    7100:	1420000c 	bnez	at,7134 <Actor_Spawn+0x3c4>
    7104:	afaa0034 	sw	t2,52(sp)
    7108:	3c040000 	lui	a0,0x0
    710c:	3c050000 	lui	a1,0x0
    7110:	24a507a8 	addiu	a1,a1,1960
    7114:	2484078c 	addiu	a0,a0,1932
    7118:	24061b77 	li	a2,7031
    711c:	afa30054 	sw	v1,84(sp)
    7120:	0c000000 	jal	0 <ActorShape_Init>
    7124:	afa70058 	sw	a3,88(sp)
    7128:	8fa30054 	lw	v1,84(sp)
    712c:	8fa70058 	lw	a3,88(sp)
    7130:	8202001e 	lb	v0,30(s0)
    7134:	244b0001 	addiu	t3,v0,1
    7138:	a20b001e 	sb	t3,30(s0)
    713c:	3c0c0000 	lui	t4,0x0
    7140:	8d8c0000 	lw	t4,0(t4)
    7144:	3c040000 	lui	a0,0x0
    7148:	248407b8 	addiu	a0,a0,1976
    714c:	858d0ffc 	lh	t5,4092(t4)
    7150:	51a00008 	beqzl	t5,7174 <Actor_Spawn+0x404>
    7154:	8c65000c 	lw	a1,12(v1)
    7158:	8205001e 	lb	a1,30(s0)
    715c:	afa70058 	sw	a3,88(sp)
    7160:	0c000000 	jal	0 <ActorShape_Init>
    7164:	afa30054 	sw	v1,84(sp)
    7168:	8fa30054 	lw	v1,84(sp)
    716c:	8fa70058 	lw	a3,88(sp)
    7170:	8c65000c 	lw	a1,12(v1)
    7174:	afa70058 	sw	a3,88(sp)
    7178:	afa30054 	sw	v1,84(sp)
    717c:	00e02025 	move	a0,a3
    7180:	0c000000 	jal	0 <ActorShape_Init>
    7184:	00003025 	move	a2,zero
    7188:	8fa70058 	lw	a3,88(sp)
    718c:	8fa30054 	lw	v1,84(sp)
    7190:	24010007 	li	at,7
    7194:	acf00138 	sw	s0,312(a3)
    7198:	846e0000 	lh	t6,0(v1)
    719c:	a4ee0000 	sh	t6,0(a3)
    71a0:	8c6f0004 	lw	t7,4(v1)
    71a4:	acef0004 	sw	t7,4(a3)
    71a8:	84780000 	lh	t8,0(v1)
    71ac:	87b90082 	lh	t9,130(sp)
    71b0:	8fa80050 	lw	t0,80(sp)
    71b4:	57010005 	bnel	t8,at,71cc <Actor_Spawn+0x45c>
    71b8:	a0e8001e 	sb	t0,30(a3)
    71bc:	a0f9001e 	sb	t9,30(a3)
    71c0:	10000002 	b	71cc <Actor_Spawn+0x45c>
    71c4:	a7a00082 	sh	zero,130(sp)
    71c8:	a0e8001e 	sb	t0,30(a3)
    71cc:	8c690010 	lw	t1,16(v1)
    71d0:	00e02825 	move	a1,a3
    71d4:	ace90128 	sw	t1,296(a3)
    71d8:	8c6a0014 	lw	t2,20(v1)
    71dc:	acea012c 	sw	t2,300(a3)
    71e0:	8c6b0018 	lw	t3,24(v1)
    71e4:	aceb0130 	sw	t3,304(a3)
    71e8:	8c6c001c 	lw	t4,28(v1)
    71ec:	acec0134 	sw	t4,308(a3)
    71f0:	8fad0034 	lw	t5,52(sp)
    71f4:	81ae1cbc 	lb	t6,7356(t5)
    71f8:	a0ee0003 	sb	t6,3(a3)
    71fc:	c7a4006c 	lwc1	$f4,108(sp)
    7200:	e4e40008 	swc1	$f4,8(a3)
    7204:	c7a60070 	lwc1	$f6,112(sp)
    7208:	e4e6000c 	swc1	$f6,12(a3)
    720c:	c7a80074 	lwc1	$f8,116(sp)
    7210:	e4e80010 	swc1	$f8,16(a3)
    7214:	87af007a 	lh	t7,122(sp)
    7218:	a4ef0014 	sh	t7,20(a3)
    721c:	87b8007e 	lh	t8,126(sp)
    7220:	a4f80016 	sh	t8,22(a3)
    7224:	87b90082 	lh	t9,130(sp)
    7228:	a4f90018 	sh	t9,24(a3)
    722c:	87a80086 	lh	t0,134(sp)
    7230:	a4e8001c 	sh	t0,28(a3)
    7234:	90660002 	lbu	a2,2(v1)
    7238:	afa70058 	sw	a3,88(sp)
    723c:	0c000000 	jal	0 <ActorShape_Init>
    7240:	8fa40060 	lw	a0,96(sp)
    7244:	3c100000 	lui	s0,0x0
    7248:	8fa40058 	lw	a0,88(sp)
    724c:	8e100018 	lw	s0,24(s0)
    7250:	0c000000 	jal	0 <ActorShape_Init>
    7254:	8fa50064 	lw	a1,100(sp)
    7258:	3c010000 	lui	at,0x0
    725c:	8fa20058 	lw	v0,88(sp)
    7260:	ac300018 	sw	s0,24(at)
    7264:	8fbf002c 	lw	ra,44(sp)
    7268:	8fb00028 	lw	s0,40(sp)
    726c:	27bd0060 	addiu	sp,sp,96
    7270:	03e00008 	jr	ra
    7274:	00000000 	nop

00007278 <Actor_SpawnAsChild>:
    7278:	27bdffd0 	addiu	sp,sp,-48
    727c:	c7a40044 	lwc1	$f4,68(sp)
    7280:	c7a60048 	lwc1	$f6,72(sp)
    7284:	87ae004e 	lh	t6,78(sp)
    7288:	87af0052 	lh	t7,82(sp)
    728c:	87b80056 	lh	t8,86(sp)
    7290:	87b9005a 	lh	t9,90(sp)
    7294:	afa50034 	sw	a1,52(sp)
    7298:	afbf002c 	sw	ra,44(sp)
    729c:	afa60038 	sw	a2,56(sp)
    72a0:	afa7003c 	sw	a3,60(sp)
    72a4:	00c02825 	move	a1,a2
    72a8:	87a6003e 	lh	a2,62(sp)
    72ac:	8fa70040 	lw	a3,64(sp)
    72b0:	e7a40010 	swc1	$f4,16(sp)
    72b4:	e7a60014 	swc1	$f6,20(sp)
    72b8:	afae0018 	sw	t6,24(sp)
    72bc:	afaf001c 	sw	t7,28(sp)
    72c0:	afb80020 	sw	t8,32(sp)
    72c4:	0c000000 	jal	0 <ActorShape_Init>
    72c8:	afb90024 	sw	t9,36(sp)
    72cc:	8fa40034 	lw	a0,52(sp)
    72d0:	14400003 	bnez	v0,72e0 <Actor_SpawnAsChild+0x68>
    72d4:	00401825 	move	v1,v0
    72d8:	10000009 	b	7300 <Actor_SpawnAsChild+0x88>
    72dc:	00001025 	move	v0,zero
    72e0:	ac82011c 	sw	v0,284(a0)
    72e4:	80480003 	lb	t0,3(v0)
    72e8:	ac440118 	sw	a0,280(v0)
    72ec:	05020004 	bltzl	t0,7300 <Actor_SpawnAsChild+0x88>
    72f0:	00601025 	move	v0,v1
    72f4:	80890003 	lb	t1,3(a0)
    72f8:	a0490003 	sb	t1,3(v0)
    72fc:	00601025 	move	v0,v1
    7300:	8fbf002c 	lw	ra,44(sp)
    7304:	27bd0030 	addiu	sp,sp,48
    7308:	03e00008 	jr	ra
    730c:	00000000 	nop

00007310 <Actor_SpawnTransitionActors>:
    7310:	27bdffb8 	addiu	sp,sp,-72
    7314:	afb10034 	sw	s1,52(sp)
    7318:	3c010001 	lui	at,0x1
    731c:	afbf0044 	sw	ra,68(sp)
    7320:	afb40040 	sw	s4,64(sp)
    7324:	afb3003c 	sw	s3,60(sp)
    7328:	afb20038 	sw	s2,56(sp)
    732c:	afb00030 	sw	s0,48(sp)
    7330:	00818821 	addu	s1,a0,at
    7334:	92261d34 	lbu	a2,7476(s1)
    7338:	00809825 	move	s3,a0
    733c:	00a0a025 	move	s4,a1
    7340:	8e301d38 	lw	s0,7480(s1)
    7344:	18c00038 	blez	a2,7428 <Actor_SpawnTransitionActors+0x118>
    7348:	00009025 	move	s2,zero
    734c:	86030004 	lh	v1,4(s0)
    7350:	04620032 	bltzl	v1,741c <Actor_SpawnTransitionActors+0x10c>
    7354:	26520001 	addiu	s2,s2,1
    7358:	82020000 	lb	v0,0(s0)
    735c:	04420008 	bltzl	v0,7380 <Actor_SpawnTransitionActors+0x70>
    7360:	82020002 	lb	v0,2(s0)
    7364:	822e1cbc 	lb	t6,7356(s1)
    7368:	51c2000e 	beql	t6,v0,73a4 <Actor_SpawnTransitionActors+0x94>
    736c:	86090008 	lh	t1,8(s0)
    7370:	822f1cd0 	lb	t7,7376(s1)
    7374:	51e2000b 	beql	t7,v0,73a4 <Actor_SpawnTransitionActors+0x94>
    7378:	86090008 	lh	t1,8(s0)
    737c:	82020002 	lb	v0,2(s0)
    7380:	04420026 	bltzl	v0,741c <Actor_SpawnTransitionActors+0x10c>
    7384:	26520001 	addiu	s2,s2,1
    7388:	82381cbc 	lb	t8,7356(s1)
    738c:	53020005 	beql	t8,v0,73a4 <Actor_SpawnTransitionActors+0x94>
    7390:	86090008 	lh	t1,8(s0)
    7394:	82391cd0 	lb	t9,7376(s1)
    7398:	57220020 	bnel	t9,v0,741c <Actor_SpawnTransitionActors+0x10c>
    739c:	26520001 	addiu	s2,s2,1
    73a0:	86090008 	lh	t1,8(s0)
    73a4:	86080006 	lh	t0,6(s0)
    73a8:	30661fff 	andi	a2,v1,0x1fff
    73ac:	44893000 	mtc1	t1,$f6
    73b0:	44882000 	mtc1	t0,$f4
    73b4:	00126280 	sll	t4,s2,0xa
    73b8:	46803220 	cvt.s.w	$f8,$f6
    73bc:	00063400 	sll	a2,a2,0x10
    73c0:	00063403 	sra	a2,a2,0x10
    73c4:	02802025 	move	a0,s4
    73c8:	02602825 	move	a1,s3
    73cc:	46802120 	cvt.s.w	$f4,$f4
    73d0:	e7a80010 	swc1	$f8,16(sp)
    73d4:	860a000a 	lh	t2,10(s0)
    73d8:	afa00018 	sw	zero,24(sp)
    73dc:	448a5000 	mtc1	t2,$f10
    73e0:	44072000 	mfc1	a3,$f4
    73e4:	46805420 	cvt.s.w	$f16,$f10
    73e8:	e7b00014 	swc1	$f16,20(sp)
    73ec:	860b000c 	lh	t3,12(s0)
    73f0:	afa00020 	sw	zero,32(sp)
    73f4:	afab001c 	sw	t3,28(sp)
    73f8:	860d000e 	lh	t5,14(s0)
    73fc:	018d7021 	addu	t6,t4,t5
    7400:	0c000000 	jal	0 <ActorShape_Init>
    7404:	afae0024 	sw	t6,36(sp)
    7408:	860f0004 	lh	t7,4(s0)
    740c:	000fc023 	negu	t8,t7
    7410:	a6180004 	sh	t8,4(s0)
    7414:	92261d34 	lbu	a2,7476(s1)
    7418:	26520001 	addiu	s2,s2,1
    741c:	0246082a 	slt	at,s2,a2
    7420:	1420ffca 	bnez	at,734c <Actor_SpawnTransitionActors+0x3c>
    7424:	26100010 	addiu	s0,s0,16
    7428:	8fbf0044 	lw	ra,68(sp)
    742c:	8fb00030 	lw	s0,48(sp)
    7430:	8fb10034 	lw	s1,52(sp)
    7434:	8fb20038 	lw	s2,56(sp)
    7438:	8fb3003c 	lw	s3,60(sp)
    743c:	8fb40040 	lw	s4,64(sp)
    7440:	03e00008 	jr	ra
    7444:	27bd0048 	addiu	sp,sp,72

00007448 <Actor_SpawnEntry>:
    7448:	27bdffc8 	addiu	sp,sp,-56
    744c:	afb00030 	sw	s0,48(sp)
    7450:	00a08025 	move	s0,a1
    7454:	afbf0034 	sw	ra,52(sp)
    7458:	afa60040 	sw	a2,64(sp)
    745c:	860f0004 	lh	t7,4(s0)
    7460:	00c02825 	move	a1,a2
    7464:	860e0002 	lh	t6,2(s0)
    7468:	448f3000 	mtc1	t7,$f6
    746c:	86060000 	lh	a2,0(s0)
    7470:	448e2000 	mtc1	t6,$f4
    7474:	46803220 	cvt.s.w	$f8,$f6
    7478:	46802120 	cvt.s.w	$f4,$f4
    747c:	e7a80010 	swc1	$f8,16(sp)
    7480:	86180006 	lh	t8,6(s0)
    7484:	44985000 	mtc1	t8,$f10
    7488:	44072000 	mfc1	a3,$f4
    748c:	46805420 	cvt.s.w	$f16,$f10
    7490:	e7b00014 	swc1	$f16,20(sp)
    7494:	86190008 	lh	t9,8(s0)
    7498:	afb90018 	sw	t9,24(sp)
    749c:	8608000a 	lh	t0,10(s0)
    74a0:	afa8001c 	sw	t0,28(sp)
    74a4:	8609000c 	lh	t1,12(s0)
    74a8:	afa90020 	sw	t1,32(sp)
    74ac:	860a000e 	lh	t2,14(s0)
    74b0:	0c000000 	jal	0 <ActorShape_Init>
    74b4:	afaa0024 	sw	t2,36(sp)
    74b8:	8fbf0034 	lw	ra,52(sp)
    74bc:	8fb00030 	lw	s0,48(sp)
    74c0:	27bd0038 	addiu	sp,sp,56
    74c4:	03e00008 	jr	ra
    74c8:	00000000 	nop

000074cc <Actor_Delete>:
    74cc:	27bdffd8 	addiu	sp,sp,-40
    74d0:	afbf0014 	sw	ra,20(sp)
    74d4:	afa40028 	sw	a0,40(sp)
    74d8:	afa5002c 	sw	a1,44(sp)
    74dc:	afa60030 	sw	a2,48(sp)
    74e0:	8cb80138 	lw	t8,312(a1)
    74e4:	8cc71c44 	lw	a3,7236(a2)
    74e8:	3c190000 	lui	t9,0x0
    74ec:	afb80018 	sw	t8,24(sp)
    74f0:	8f020018 	lw	v0,24(t8)
    74f4:	10400003 	beqz	v0,7504 <Actor_Delete+0x38>
    74f8:	00000000 	nop
    74fc:	10000003 	b	750c <Actor_Delete+0x40>
    7500:	00402825 	move	a1,v0
    7504:	3c050000 	lui	a1,0x0
    7508:	24a507dc 	addiu	a1,a1,2012
    750c:	8f390000 	lw	t9,0(t9)
    7510:	3c040000 	lui	a0,0x0
    7514:	248407e0 	addiu	a0,a0,2016
    7518:	87280ffc 	lh	t0,4092(t9)
    751c:	11000004 	beqz	t0,7530 <Actor_Delete+0x64>
    7520:	00000000 	nop
    7524:	0c000000 	jal	0 <ActorShape_Init>
    7528:	afa70020 	sw	a3,32(sp)
    752c:	8fa70020 	lw	a3,32(sp)
    7530:	10e0000f 	beqz	a3,7570 <Actor_Delete+0xa4>
    7534:	8fa9002c 	lw	t1,44(sp)
    7538:	8cea0664 	lw	t2,1636(a3)
    753c:	552a000d 	bnel	t1,t2,7574 <Actor_Delete+0xa8>
    7540:	8fac0028 	lw	t4,40(sp)
    7544:	0c000000 	jal	0 <ActorShape_Init>
    7548:	00e02025 	move	a0,a3
    754c:	0c000000 	jal	0 <ActorShape_Init>
    7550:	8fa40030 	lw	a0,48(sp)
    7554:	00022c00 	sll	a1,v0,0x10
    7558:	00052c03 	sra	a1,a1,0x10
    755c:	0c000000 	jal	0 <ActorShape_Init>
    7560:	8fa40030 	lw	a0,48(sp)
    7564:	00402025 	move	a0,v0
    7568:	0c000000 	jal	0 <ActorShape_Init>
    756c:	00002825 	move	a1,zero
    7570:	8fac0028 	lw	t4,40(sp)
    7574:	8fab002c 	lw	t3,44(sp)
    7578:	8d8d00a4 	lw	t5,164(t4)
    757c:	556d0003 	bnel	t3,t5,758c <Actor_Delete+0xc0>
    7580:	8faf0028 	lw	t7,40(sp)
    7584:	ad8000a4 	sw	zero,164(t4)
    7588:	8faf0028 	lw	t7,40(sp)
    758c:	8fae002c 	lw	t6,44(sp)
    7590:	8df800f8 	lw	t8,248(t7)
    7594:	55d80003 	bnel	t6,t8,75a4 <Actor_Delete+0xd8>
    7598:	8fa80028 	lw	t0,40(sp)
    759c:	ade000f8 	sw	zero,248(t7)
    75a0:	8fa80028 	lw	t0,40(sp)
    75a4:	8fb9002c 	lw	t9,44(sp)
    75a8:	8d0900fc 	lw	t1,252(t0)
    75ac:	57290003 	bnel	t9,t1,75bc <Actor_Delete+0xf0>
    75b0:	8fa4002c 	lw	a0,44(sp)
    75b4:	ad0000fc 	sw	zero,252(t0)
    75b8:	8fa4002c 	lw	a0,44(sp)
    75bc:	0c000000 	jal	0 <ActorShape_Init>
    75c0:	248400e4 	addiu	a0,a0,228
    75c4:	8fa4002c 	lw	a0,44(sp)
    75c8:	0c000000 	jal	0 <ActorShape_Init>
    75cc:	8fa50030 	lw	a1,48(sp)
    75d0:	8fa40030 	lw	a0,48(sp)
    75d4:	8fa50028 	lw	a1,40(sp)
    75d8:	0c000000 	jal	0 <ActorShape_Init>
    75dc:	8fa6002c 	lw	a2,44(sp)
    75e0:	3c050000 	lui	a1,0x0
    75e4:	afa2001c 	sw	v0,28(sp)
    75e8:	24a507fc 	addiu	a1,a1,2044
    75ec:	8fa4002c 	lw	a0,44(sp)
    75f0:	0c000000 	jal	0 <ActorShape_Init>
    75f4:	24061c4a 	li	a2,7242
    75f8:	8fa70018 	lw	a3,24(sp)
    75fc:	3c0b0000 	lui	t3,0x0
    7600:	8cea0008 	lw	t2,8(a3)
    7604:	5540000b 	bnezl	t2,7634 <Actor_Delete+0x168>
    7608:	8cec0010 	lw	t4,16(a3)
    760c:	8d6b0000 	lw	t3,0(t3)
    7610:	3c040000 	lui	a0,0x0
    7614:	856d0ffc 	lh	t5,4092(t3)
    7618:	51a0001d 	beqzl	t5,7690 <Actor_Delete+0x1c4>
    761c:	8fbf0014 	lw	ra,20(sp)
    7620:	0c000000 	jal	0 <ActorShape_Init>
    7624:	2484080c 	addiu	a0,a0,2060
    7628:	10000019 	b	7690 <Actor_Delete+0x1c4>
    762c:	8fbf0014 	lw	ra,20(sp)
    7630:	8cec0010 	lw	t4,16(a3)
    7634:	3c040000 	lui	a0,0x0
    7638:	24840828 	addiu	a0,a0,2088
    763c:	15800005 	bnez	t4,7654 <Actor_Delete+0x188>
    7640:	3c050000 	lui	a1,0x0
    7644:	24a50848 	addiu	a1,a1,2120
    7648:	0c000000 	jal	0 <ActorShape_Init>
    764c:	24061c53 	li	a2,7251
    7650:	8fa70018 	lw	a3,24(sp)
    7654:	80e2001e 	lb	v0,30(a3)
    7658:	3c040000 	lui	a0,0x0
    765c:	24840858 	addiu	a0,a0,2136
    7660:	1c400006 	bgtz	v0,767c <Actor_Delete+0x1b0>
    7664:	3c050000 	lui	a1,0x0
    7668:	24a50874 	addiu	a1,a1,2164
    766c:	0c000000 	jal	0 <ActorShape_Init>
    7670:	24061c54 	li	a2,7252
    7674:	8fa70018 	lw	a3,24(sp)
    7678:	80e2001e 	lb	v0,30(a3)
    767c:	2458ffff 	addiu	t8,v0,-1
    7680:	a0f8001e 	sb	t8,30(a3)
    7684:	0c000000 	jal	0 <ActorShape_Init>
    7688:	00e02025 	move	a0,a3
    768c:	8fbf0014 	lw	ra,20(sp)
    7690:	8fa2001c 	lw	v0,28(sp)
    7694:	27bd0028 	addiu	sp,sp,40
    7698:	03e00008 	jr	ra
    769c:	00000000 	nop

000076a0 <func_80032880>:
    76a0:	27bdffe0 	addiu	sp,sp,-32
    76a4:	afbf0014 	sw	ra,20(sp)
    76a8:	27a6001e 	addiu	a2,sp,30
    76ac:	0c000000 	jal	0 <ActorShape_Init>
    76b0:	27a7001c 	addiu	a3,sp,28
    76b4:	87a3001e 	lh	v1,30(sp)
    76b8:	8fbf0014 	lw	ra,20(sp)
    76bc:	2862ffed 	slti	v0,v1,-19
    76c0:	38420001 	xori	v0,v0,0x1
    76c4:	10400009 	beqz	v0,76ec <func_80032880+0x4c>
    76c8:	00000000 	nop
    76cc:	28620154 	slti	v0,v1,340
    76d0:	10400006 	beqz	v0,76ec <func_80032880+0x4c>
    76d4:	87a3001c 	lh	v1,28(sp)
    76d8:	2862ff61 	slti	v0,v1,-159
    76dc:	38420001 	xori	v0,v0,0x1
    76e0:	10400002 	beqz	v0,76ec <func_80032880+0x4c>
    76e4:	00000000 	nop
    76e8:	28620190 	slti	v0,v1,400
    76ec:	03e00008 	jr	ra
    76f0:	27bd0020 	addiu	sp,sp,32

000076f4 <func_800328D4>:
    76f4:	27bdff70 	addiu	sp,sp,-144
    76f8:	afb7005c 	sw	s7,92(sp)
    76fc:	0007b8c0 	sll	s7,a3,0x3
    7700:	afbf0064 	sw	ra,100(sp)
    7704:	afbe0060 	sw	s8,96(sp)
    7708:	afb60058 	sw	s6,88(sp)
    770c:	afb50054 	sw	s5,84(sp)
    7710:	afb40050 	sw	s4,80(sp)
    7714:	afb3004c 	sw	s3,76(sp)
    7718:	afb20048 	sw	s2,72(sp)
    771c:	afb10044 	sw	s1,68(sp)
    7720:	afb00040 	sw	s0,64(sp)
    7724:	f7b60038 	sdc1	$f22,56(sp)
    7728:	f7b40030 	sdc1	$f20,48(sp)
    772c:	00b77021 	addu	t6,a1,s7
    7730:	8dd00010 	lw	s0,16(t6)
    7734:	8ccf0664 	lw	t7,1636(a2)
    7738:	00c09025 	move	s2,a2
    773c:	00809825 	move	s3,a0
    7740:	00a0f025 	move	s8,a1
    7744:	12000064 	beqz	s0,78d8 <func_800328D4+0x1e4>
    7748:	afaf0084 	sw	t7,132(sp)
    774c:	3c010000 	lui	at,0x0
    7750:	3c160000 	lui	s6,0x0
    7754:	3c150000 	lui	s5,0x0
    7758:	3c140000 	lui	s4,0x0
    775c:	26940000 	addiu	s4,s4,0
    7760:	26b50000 	addiu	s5,s5,0
    7764:	26d60000 	addiu	s6,s6,0
    7768:	c4360ac0 	lwc1	$f22,2752(at)
    776c:	8e180130 	lw	t8,304(s0)
    7770:	53000057 	beqzl	t8,78d0 <func_800328D4+0x1dc>
    7774:	8e100124 	lw	s0,292(s0)
    7778:	52120055 	beql	s0,s2,78d0 <func_800328D4+0x1dc>
    777c:	8e100124 	lw	s0,292(s0)
    7780:	8e020004 	lw	v0,4(s0)
    7784:	24010001 	li	at,1
    7788:	30590001 	andi	t9,v0,0x1
    778c:	1721004f 	bne	t9,at,78cc <func_800328D4+0x1d8>
    7790:	24010028 	li	at,40
    7794:	16e10011 	bne	s7,at,77dc <func_800328D4+0xe8>
    7798:	30480005 	andi	t0,v0,0x5
    779c:	24010005 	li	at,5
    77a0:	5501000f 	bnel	t0,at,77e0 <func_800328D4+0xec>
    77a4:	8fa90084 	lw	t1,132(sp)
    77a8:	c600008c 	lwc1	$f0,140(s0)
    77ac:	4616003c 	c.lt.s	$f0,$f22
    77b0:	00000000 	nop
    77b4:	4502000a 	bc1fl	77e0 <func_800328D4+0xec>
    77b8:	8fa90084 	lw	t1,132(sp)
    77bc:	c6840000 	lwc1	$f4,0(s4)
    77c0:	4604003c 	c.lt.s	$f0,$f4
    77c4:	00000000 	nop
    77c8:	45020005 	bc1fl	77e0 <func_800328D4+0xec>
    77cc:	8fa90084 	lw	t1,132(sp)
    77d0:	afd000fc 	sw	s0,252(s8)
    77d4:	c606008c 	lwc1	$f6,140(s0)
    77d8:	e6860000 	swc1	$f6,0(s4)
    77dc:	8fa90084 	lw	t1,132(sp)
    77e0:	02002025 	move	a0,s0
    77e4:	02402825 	move	a1,s2
    77e8:	12090038 	beq	s0,t1,78cc <func_800328D4+0x1d8>
    77ec:	3c060000 	lui	a2,0x0
    77f0:	0c000000 	jal	0 <ActorShape_Init>
    77f4:	84c60000 	lh	a2,0(a2)
    77f8:	c6a80000 	lwc1	$f8,0(s5)
    77fc:	46000506 	mov.s	$f20,$f0
    7800:	4608003c 	c.lt.s	$f0,$f8
    7804:	00000000 	nop
    7808:	45020031 	bc1fl	78d0 <func_800328D4+0x1dc>
    780c:	8e100124 	lw	s0,292(s0)
    7810:	44050000 	mfc1	a1,$f0
    7814:	0c000000 	jal	0 <ActorShape_Init>
    7818:	02002025 	move	a0,s0
    781c:	1040002b 	beqz	v0,78cc <func_800328D4+0x1d8>
    7820:	02602025 	move	a0,s3
    7824:	0c000000 	jal	0 <ActorShape_Init>
    7828:	02002825 	move	a1,s0
    782c:	10400027 	beqz	v0,78cc <func_800328D4+0x1d8>
    7830:	267107c0 	addiu	s1,s3,1984
    7834:	27aa0080 	addiu	t2,sp,128
    7838:	240b0001 	li	t3,1
    783c:	240c0001 	li	t4,1
    7840:	240d0001 	li	t5,1
    7844:	240e0001 	li	t6,1
    7848:	27af007c 	addiu	t7,sp,124
    784c:	afaf0024 	sw	t7,36(sp)
    7850:	afae0020 	sw	t6,32(sp)
    7854:	afad001c 	sw	t5,28(sp)
    7858:	afac0018 	sw	t4,24(sp)
    785c:	afab0014 	sw	t3,20(sp)
    7860:	afaa0010 	sw	t2,16(sp)
    7864:	02202025 	move	a0,s1
    7868:	26450038 	addiu	a1,s2,56
    786c:	26060038 	addiu	a2,s0,56
    7870:	0c000000 	jal	0 <ActorShape_Init>
    7874:	27a70070 	addiu	a3,sp,112
    7878:	10400006 	beqz	v0,7894 <func_800328D4+0x1a0>
    787c:	02202025 	move	a0,s1
    7880:	8fa50080 	lw	a1,128(sp)
    7884:	0c000000 	jal	0 <ActorShape_Init>
    7888:	8fa6007c 	lw	a2,124(sp)
    788c:	50400010 	beqzl	v0,78d0 <func_800328D4+0x1dc>
    7890:	8e100124 	lw	s0,292(s0)
    7894:	9202010d 	lbu	v0,269(s0)
    7898:	3c010000 	lui	at,0x0
    789c:	10400009 	beqz	v0,78c4 <func_800328D4+0x1d0>
    78a0:	00000000 	nop
    78a4:	8ed80000 	lw	t8,0(s6)
    78a8:	0058082a 	slt	at,v0,t8
    78ac:	10200007 	beqz	at,78cc <func_800328D4+0x1d8>
    78b0:	3c010000 	lui	at,0x0
    78b4:	ac300000 	sw	s0,0(at)
    78b8:	9219010d 	lbu	t9,269(s0)
    78bc:	10000003 	b	78cc <func_800328D4+0x1d8>
    78c0:	aed90000 	sw	t9,0(s6)
    78c4:	ac300000 	sw	s0,0(at)
    78c8:	e6b40000 	swc1	$f20,0(s5)
    78cc:	8e100124 	lw	s0,292(s0)
    78d0:	5600ffa7 	bnezl	s0,7770 <func_800328D4+0x7c>
    78d4:	8e180130 	lw	t8,304(s0)
    78d8:	8fbf0064 	lw	ra,100(sp)
    78dc:	d7b40030 	ldc1	$f20,48(sp)
    78e0:	d7b60038 	ldc1	$f22,56(sp)
    78e4:	8fb00040 	lw	s0,64(sp)
    78e8:	8fb10044 	lw	s1,68(sp)
    78ec:	8fb20048 	lw	s2,72(sp)
    78f0:	8fb3004c 	lw	s3,76(sp)
    78f4:	8fb40050 	lw	s4,80(sp)
    78f8:	8fb50054 	lw	s5,84(sp)
    78fc:	8fb60058 	lw	s6,88(sp)
    7900:	8fb7005c 	lw	s7,92(sp)
    7904:	8fbe0060 	lw	s8,96(sp)
    7908:	03e00008 	jr	ra
    790c:	27bd0090 	addiu	sp,sp,144

00007910 <func_80032AF0>:
    7910:	3c030000 	lui	v1,0x0
    7914:	24630000 	addiu	v1,v1,0
    7918:	ac600000 	sw	zero,0(v1)
    791c:	3c010000 	lui	at,0x0
    7920:	ac200000 	sw	zero,0(at)
    7924:	3c010000 	lui	at,0x0
    7928:	c4240ac4 	lwc1	$f4,2756(at)
    792c:	3c020000 	lui	v0,0x0
    7930:	24420000 	addiu	v0,v0,0
    7934:	27bdffd0 	addiu	sp,sp,-48
    7938:	e4440000 	swc1	$f4,0(v0)
    793c:	c4460000 	lwc1	$f6,0(v0)
    7940:	3c010000 	lui	at,0x0
    7944:	3c0f7fff 	lui	t7,0x7fff
    7948:	e4260000 	swc1	$f6,0(at)
    794c:	afbf002c 	sw	ra,44(sp)
    7950:	afb40024 	sw	s4,36(sp)
    7954:	afb30020 	sw	s3,32(sp)
    7958:	afb2001c 	sw	s2,28(sp)
    795c:	3c010000 	lui	at,0x0
    7960:	35efffff 	ori	t7,t7,0xffff
    7964:	00809025 	move	s2,a0
    7968:	00a09825 	move	s3,a1
    796c:	00e0a025 	move	s4,a3
    7970:	afb50028 	sw	s5,40(sp)
    7974:	afb10018 	sw	s1,24(sp)
    7978:	afb00014 	sw	s0,20(sp)
    797c:	afa60038 	sw	a2,56(sp)
    7980:	0c000000 	jal	0 <ActorShape_Init>
    7984:	ac2f0000 	sw	t7,0(at)
    7988:	1440001f 	bnez	v0,7a08 <func_80032AF0+0xf8>
    798c:	3c110000 	lui	s1,0x0
    7990:	ae6000fc 	sw	zero,252(s3)
    7994:	869800b6 	lh	t8,182(s4)
    7998:	3c010000 	lui	at,0x0
    799c:	26310000 	addiu	s1,s1,0
    79a0:	00008025 	move	s0,zero
    79a4:	24150003 	li	s5,3
    79a8:	a4380000 	sh	t8,0(at)
    79ac:	02402025 	move	a0,s2
    79b0:	02602825 	move	a1,s3
    79b4:	02803025 	move	a2,s4
    79b8:	0c000000 	jal	0 <ActorShape_Init>
    79bc:	92270000 	lbu	a3,0(s1)
    79c0:	26100001 	addiu	s0,s0,1
    79c4:	1615fff9 	bne	s0,s5,79ac <func_80032AF0+0x9c>
    79c8:	26310001 	addiu	s1,s1,1
    79cc:	3c190000 	lui	t9,0x0
    79d0:	8f390000 	lw	t9,0(t9)
    79d4:	2a01000c 	slti	at,s0,12
    79d8:	1720000b 	bnez	t9,7a08 <func_80032AF0+0xf8>
    79dc:	00000000 	nop
    79e0:	10200009 	beqz	at,7a08 <func_80032AF0+0xf8>
    79e4:	02402025 	move	a0,s2
    79e8:	02602825 	move	a1,s3
    79ec:	02803025 	move	a2,s4
    79f0:	0c000000 	jal	0 <ActorShape_Init>
    79f4:	92270000 	lbu	a3,0(s1)
    79f8:	26100001 	addiu	s0,s0,1
    79fc:	2a01000c 	slti	at,s0,12
    7a00:	1420fff8 	bnez	at,79e4 <func_80032AF0+0xd4>
    7a04:	26310001 	addiu	s1,s1,1
    7a08:	3c020000 	lui	v0,0x0
    7a0c:	8c420000 	lw	v0,0(v0)
    7a10:	3c080000 	lui	t0,0x0
    7a14:	8fa90038 	lw	t1,56(sp)
    7a18:	14400004 	bnez	v0,7a2c <func_80032AF0+0x11c>
    7a1c:	8faa0038 	lw	t2,56(sp)
    7a20:	8d080000 	lw	t0,0(t0)
    7a24:	10000002 	b	7a30 <func_80032AF0+0x120>
    7a28:	ad280000 	sw	t0,0(t1)
    7a2c:	ad420000 	sw	v0,0(t2)
    7a30:	8fab0038 	lw	t3,56(sp)
    7a34:	8fbf002c 	lw	ra,44(sp)
    7a38:	8fb00014 	lw	s0,20(sp)
    7a3c:	8fb10018 	lw	s1,24(sp)
    7a40:	8fb2001c 	lw	s2,28(sp)
    7a44:	8fb30020 	lw	s3,32(sp)
    7a48:	8fb40024 	lw	s4,36(sp)
    7a4c:	8fb50028 	lw	s5,40(sp)
    7a50:	8d620000 	lw	v0,0(t3)
    7a54:	03e00008 	jr	ra
    7a58:	27bd0030 	addiu	sp,sp,48

00007a5c <Actor_Find>:
    7a5c:	000670c0 	sll	t6,a2,0x3
    7a60:	008e7821 	addu	t7,a0,t6
    7a64:	8de30010 	lw	v1,16(t7)
    7a68:	00001025 	move	v0,zero
    7a6c:	10600009 	beqz	v1,7a94 <Actor_Find+0x38>
    7a70:	00000000 	nop
    7a74:	84780000 	lh	t8,0(v1)
    7a78:	54b80004 	bnel	a1,t8,7a8c <Actor_Find+0x30>
    7a7c:	8c630124 	lw	v1,292(v1)
    7a80:	03e00008 	jr	ra
    7a84:	00601025 	move	v0,v1
    7a88:	8c630124 	lw	v1,292(v1)
    7a8c:	5460fffa 	bnezl	v1,7a78 <Actor_Find+0x1c>
    7a90:	84780000 	lh	t8,0(v1)
    7a94:	03e00008 	jr	ra
    7a98:	00000000 	nop

00007a9c <func_80032C7C>:
    7a9c:	27bdffe8 	addiu	sp,sp,-24
    7aa0:	afbf0014 	sw	ra,20(sp)
    7aa4:	afa5001c 	sw	a1,28(sp)
    7aa8:	240e0005 	li	t6,5
    7aac:	a08e1c24 	sb	t6,7204(a0)
    7ab0:	8fa5001c 	lw	a1,28(sp)
    7ab4:	24060014 	li	a2,20
    7ab8:	2407388b 	li	a3,14475
    7abc:	0c000000 	jal	0 <ActorShape_Init>
    7ac0:	24a50024 	addiu	a1,a1,36
    7ac4:	8fbf0014 	lw	ra,20(sp)
    7ac8:	27bd0018 	addiu	sp,sp,24
    7acc:	03e00008 	jr	ra
    7ad0:	00000000 	nop

00007ad4 <func_80032CB4>:
    7ad4:	27bdffe0 	addiu	sp,sp,-32
    7ad8:	afbf001c 	sw	ra,28(sp)
    7adc:	afb00018 	sw	s0,24(sp)
    7ae0:	afa50024 	sw	a1,36(sp)
    7ae4:	afa60028 	sw	a2,40(sp)
    7ae8:	afa7002c 	sw	a3,44(sp)
    7aec:	84830002 	lh	v1,2(a0)
    7af0:	00063400 	sll	a2,a2,0x10
    7af4:	00063403 	sra	a2,a2,0x10
    7af8:	14600003 	bnez	v1,7b08 <func_80032CB4+0x34>
    7afc:	00808025 	move	s0,a0
    7b00:	10000005 	b	7b18 <func_80032CB4+0x44>
    7b04:	00001025 	move	v0,zero
    7b08:	246effff 	addiu	t6,v1,-1
    7b0c:	a60e0002 	sh	t6,2(s0)
    7b10:	86030002 	lh	v1,2(s0)
    7b14:	00601025 	move	v0,v1
    7b18:	14400006 	bnez	v0,7b34 <func_80032CB4+0x60>
    7b1c:	87a40026 	lh	a0,38(sp)
    7b20:	00062c00 	sll	a1,a2,0x10
    7b24:	0c000000 	jal	0 <ActorShape_Init>
    7b28:	00052c03 	sra	a1,a1,0x10
    7b2c:	a6020002 	sh	v0,2(s0)
    7b30:	86030002 	lh	v1,2(s0)
    7b34:	87af002e 	lh	t7,46(sp)
    7b38:	006f1023 	subu	v0,v1,t7
    7b3c:	18400003 	blez	v0,7b4c <func_80032CB4+0x78>
    7b40:	2841ffff 	slti	at,v0,-1
    7b44:	10000009 	b	7b6c <func_80032CB4+0x98>
    7b48:	a6000000 	sh	zero,0(s0)
    7b4c:	10200004 	beqz	at,7b60 <func_80032CB4+0x8c>
    7b50:	24180001 	li	t8,1
    7b54:	28610002 	slti	at,v1,2
    7b58:	10200003 	beqz	at,7b68 <func_80032CB4+0x94>
    7b5c:	24190002 	li	t9,2
    7b60:	10000002 	b	7b6c <func_80032CB4+0x98>
    7b64:	a6180000 	sh	t8,0(s0)
    7b68:	a6190000 	sh	t9,0(s0)
    7b6c:	8fbf001c 	lw	ra,28(sp)
    7b70:	86020000 	lh	v0,0(s0)
    7b74:	8fb00018 	lw	s0,24(sp)
    7b78:	03e00008 	jr	ra
    7b7c:	27bd0020 	addiu	sp,sp,32

00007b80 <func_80032D60>:
    7b80:	27bdffe0 	addiu	sp,sp,-32
    7b84:	afbf001c 	sw	ra,28(sp)
    7b88:	afb00018 	sw	s0,24(sp)
    7b8c:	afa50024 	sw	a1,36(sp)
    7b90:	afa60028 	sw	a2,40(sp)
    7b94:	afa7002c 	sw	a3,44(sp)
    7b98:	84820002 	lh	v0,2(a0)
    7b9c:	00063400 	sll	a2,a2,0x10
    7ba0:	00063403 	sra	a2,a2,0x10
    7ba4:	14400003 	bnez	v0,7bb4 <func_80032D60+0x34>
    7ba8:	00808025 	move	s0,a0
    7bac:	10000004 	b	7bc0 <func_80032D60+0x40>
    7bb0:	00001825 	move	v1,zero
    7bb4:	244effff 	addiu	t6,v0,-1
    7bb8:	a60e0002 	sh	t6,2(s0)
    7bbc:	86030002 	lh	v1,2(s0)
    7bc0:	1460001b 	bnez	v1,7c30 <func_80032D60+0xb0>
    7bc4:	87a40026 	lh	a0,38(sp)
    7bc8:	00062c00 	sll	a1,a2,0x10
    7bcc:	0c000000 	jal	0 <ActorShape_Init>
    7bd0:	00052c03 	sra	a1,a1,0x10
    7bd4:	860f0000 	lh	t7,0(s0)
    7bd8:	24010003 	li	at,3
    7bdc:	a6020002 	sh	v0,2(s0)
    7be0:	25f80001 	addiu	t8,t7,1
    7be4:	a6180000 	sh	t8,0(s0)
    7be8:	86190000 	lh	t9,0(s0)
    7bec:	0321001a 	div	zero,t9,at
    7bf0:	00004010 	mfhi	t0
    7bf4:	5500000f 	bnezl	t0,7c34 <func_80032D60+0xb4>
    7bf8:	8fbf001c 	lw	ra,28(sp)
    7bfc:	0c000000 	jal	0 <ActorShape_Init>
    7c00:	00000000 	nop
    7c04:	87a9002e 	lh	t1,46(sp)
    7c08:	44892000 	mtc1	t1,$f4
    7c0c:	00000000 	nop
    7c10:	468021a0 	cvt.s.w	$f6,$f4
    7c14:	46060202 	mul.s	$f8,$f0,$f6
    7c18:	4600428d 	trunc.w.s	$f10,$f8
    7c1c:	440b5000 	mfc1	t3,$f10
    7c20:	00000000 	nop
    7c24:	000b6080 	sll	t4,t3,0x2
    7c28:	018b6023 	subu	t4,t4,t3
    7c2c:	a60c0000 	sh	t4,0(s0)
    7c30:	8fbf001c 	lw	ra,28(sp)
    7c34:	86020000 	lh	v0,0(s0)
    7c38:	8fb00018 	lw	s0,24(sp)
    7c3c:	03e00008 	jr	ra
    7c40:	27bd0020 	addiu	sp,sp,32

00007c44 <func_80032E24>:
    7c44:	27bdffc8 	addiu	sp,sp,-56
    7c48:	afb00018 	sw	s0,24(sp)
    7c4c:	00808025 	move	s0,a0
    7c50:	00052180 	sll	a0,a1,0x6
    7c54:	afa5003c 	sw	a1,60(sp)
    7c58:	afbf001c 	sw	ra,28(sp)
    7c5c:	afa60040 	sw	a2,64(sp)
    7c60:	3c050000 	lui	a1,0x0
    7c64:	24840040 	addiu	a0,a0,64
    7c68:	afa40028 	sw	a0,40(sp)
    7c6c:	24a50884 	addiu	a1,a1,2180
    7c70:	0c000000 	jal	0 <ActorShape_Init>
    7c74:	24061d74 	li	a2,7540
    7c78:	10400024 	beqz	v0,7d0c <func_80032E24+0xc8>
    7c7c:	ae020000 	sw	v0,0(s0)
    7c80:	8fa4003c 	lw	a0,60(sp)
    7c84:	3c050000 	lui	a1,0x0
    7c88:	24a50894 	addiu	a1,a1,2196
    7c8c:	00042080 	sll	a0,a0,0x2
    7c90:	24840004 	addiu	a0,a0,4
    7c94:	afa40024 	sw	a0,36(sp)
    7c98:	0c000000 	jal	0 <ActorShape_Init>
    7c9c:	24061d77 	li	a2,7543
    7ca0:	1040001a 	beqz	v0,7d0c <func_80032E24+0xc8>
    7ca4:	ae02000c 	sw	v0,12(s0)
    7ca8:	8fa4003c 	lw	a0,60(sp)
    7cac:	3c050000 	lui	a1,0x0
    7cb0:	24a508a4 	addiu	a1,a1,2212
    7cb4:	00042040 	sll	a0,a0,0x1
    7cb8:	24840002 	addiu	a0,a0,2
    7cbc:	afa40020 	sw	a0,32(sp)
    7cc0:	0c000000 	jal	0 <ActorShape_Init>
    7cc4:	24061d7a 	li	a2,7546
    7cc8:	10400010 	beqz	v0,7d0c <func_80032E24+0xc8>
    7ccc:	ae020004 	sw	v0,4(s0)
    7cd0:	8e040000 	lw	a0,0(s0)
    7cd4:	8fa50028 	lw	a1,40(sp)
    7cd8:	0c000000 	jal	0 <ActorShape_Init>
    7cdc:	00003025 	move	a2,zero
    7ce0:	8e04000c 	lw	a0,12(s0)
    7ce4:	8fa50024 	lw	a1,36(sp)
    7ce8:	0c000000 	jal	0 <ActorShape_Init>
    7cec:	00003025 	move	a2,zero
    7cf0:	8e040004 	lw	a0,4(s0)
    7cf4:	8fa50020 	lw	a1,32(sp)
    7cf8:	0c000000 	jal	0 <ActorShape_Init>
    7cfc:	00003025 	move	a2,zero
    7d00:	240e0001 	li	t6,1
    7d04:	10000016 	b	7d60 <func_80032E24+0x11c>
    7d08:	ae0e0010 	sw	t6,16(s0)
    7d0c:	8e040000 	lw	a0,0(s0)
    7d10:	3c050000 	lui	a1,0x0
    7d14:	24a508b4 	addiu	a1,a1,2228
    7d18:	50800004 	beqzl	a0,7d2c <func_80032E24+0xe8>
    7d1c:	8e04000c 	lw	a0,12(s0)
    7d20:	0c000000 	jal	0 <ActorShape_Init>
    7d24:	24061d86 	li	a2,7558
    7d28:	8e04000c 	lw	a0,12(s0)
    7d2c:	3c050000 	lui	a1,0x0
    7d30:	24a508c4 	addiu	a1,a1,2244
    7d34:	50800004 	beqzl	a0,7d48 <func_80032E24+0x104>
    7d38:	8e040004 	lw	a0,4(s0)
    7d3c:	0c000000 	jal	0 <ActorShape_Init>
    7d40:	24061d89 	li	a2,7561
    7d44:	8e040004 	lw	a0,4(s0)
    7d48:	3c050000 	lui	a1,0x0
    7d4c:	24a508d4 	addiu	a1,a1,2260
    7d50:	50800004 	beqzl	a0,7d64 <func_80032E24+0x120>
    7d54:	8fbf001c 	lw	ra,28(sp)
    7d58:	0c000000 	jal	0 <ActorShape_Init>
    7d5c:	24061d8c 	li	a2,7564
    7d60:	8fbf001c 	lw	ra,28(sp)
    7d64:	8fb00018 	lw	s0,24(sp)
    7d68:	27bd0038 	addiu	sp,sp,56
    7d6c:	03e00008 	jr	ra
    7d70:	00000000 	nop

00007d74 <func_80032F54>:
    7d74:	27bdffe0 	addiu	sp,sp,-32
    7d78:	afbf001c 	sw	ra,28(sp)
    7d7c:	afb00018 	sw	s0,24(sp)
    7d80:	00808025 	move	s0,a0
    7d84:	afa60028 	sw	a2,40(sp)
    7d88:	afa7002c 	sw	a3,44(sp)
    7d8c:	0c000000 	jal	0 <ActorShape_Init>
    7d90:	afa50024 	sw	a1,36(sp)
    7d94:	904e1c24 	lbu	t6,7204(v0)
    7d98:	8fa50024 	lw	a1,36(sp)
    7d9c:	55c00032 	bnezl	t6,7e68 <func_80032F54+0xf4>
    7da0:	ae050014 	sw	a1,20(s0)
    7da4:	8e020010 	lw	v0,16(s0)
    7da8:	8faf0028 	lw	t7,40(sp)
    7dac:	1840002d 	blez	v0,7e64 <func_80032F54+0xf0>
    7db0:	00af082a 	slt	at,a1,t7
    7db4:	1420001b 	bnez	at,7e24 <func_80032F54+0xb0>
    7db8:	8fb8002c 	lw	t8,44(sp)
    7dbc:	0305082a 	slt	at,t8,a1
    7dc0:	14200018 	bnez	at,7e24 <func_80032F54+0xb0>
    7dc4:	8fb90034 	lw	t9,52(sp)
    7dc8:	8f230000 	lw	v1,0(t9)
    7dcc:	50600016 	beqzl	v1,7e28 <func_80032F54+0xb4>
    7dd0:	8e0c0014 	lw	t4,20(s0)
    7dd4:	8e08000c 	lw	t0,12(s0)
    7dd8:	00024880 	sll	t1,v0,0x2
    7ddc:	01095021 	addu	t2,t0,t1
    7de0:	ad430000 	sw	v1,0(t2)
    7de4:	8e0c0010 	lw	t4,16(s0)
    7de8:	8e0b0000 	lw	t3,0(s0)
    7dec:	afa50024 	sw	a1,36(sp)
    7df0:	000c6980 	sll	t5,t4,0x6
    7df4:	0c000000 	jal	0 <ActorShape_Init>
    7df8:	016d2021 	addu	a0,t3,t5
    7dfc:	8e180010 	lw	t8,16(s0)
    7e00:	8e0f0004 	lw	t7,4(s0)
    7e04:	87ae003a 	lh	t6,58(sp)
    7e08:	0018c840 	sll	t9,t8,0x1
    7e0c:	8fa50024 	lw	a1,36(sp)
    7e10:	01f94021 	addu	t0,t7,t9
    7e14:	a50e0000 	sh	t6,0(t0)
    7e18:	8e090010 	lw	t1,16(s0)
    7e1c:	252a0001 	addiu	t2,t1,1
    7e20:	ae0a0010 	sw	t2,16(s0)
    7e24:	8e0c0014 	lw	t4,20(s0)
    7e28:	50ac0005 	beql	a1,t4,7e40 <func_80032F54+0xcc>
    7e2c:	86180008 	lh	t8,8(s0)
    7e30:	860b0008 	lh	t3,8(s0)
    7e34:	256d0001 	addiu	t5,t3,1
    7e38:	a60d0008 	sh	t5,8(s0)
    7e3c:	86180008 	lh	t8,8(s0)
    7e40:	8faf0030 	lw	t7,48(sp)
    7e44:	030f082b 	sltu	at,t8,t7
    7e48:	54200007 	bnezl	at,7e68 <func_80032F54+0xf4>
    7e4c:	ae050014 	sw	a1,20(s0)
    7e50:	8e190010 	lw	t9,16(s0)
    7e54:	2408ffff 	li	t0,-1
    7e58:	ae080010 	sw	t0,16(s0)
    7e5c:	272effff 	addiu	t6,t9,-1
    7e60:	a60e0008 	sh	t6,8(s0)
    7e64:	ae050014 	sw	a1,20(s0)
    7e68:	8fbf001c 	lw	ra,28(sp)
    7e6c:	8fb00018 	lw	s0,24(sp)
    7e70:	27bd0020 	addiu	sp,sp,32
    7e74:	03e00008 	jr	ra
    7e78:	00000000 	nop

00007e7c <func_8003305C>:
    7e7c:	27bdffa0 	addiu	sp,sp,-96
    7e80:	afbf005c 	sw	ra,92(sp)
    7e84:	afb60058 	sw	s6,88(sp)
    7e88:	afb50054 	sw	s5,84(sp)
    7e8c:	afb40050 	sw	s4,80(sp)
    7e90:	afb3004c 	sw	s3,76(sp)
    7e94:	afb20048 	sw	s2,72(sp)
    7e98:	afb10044 	sw	s1,68(sp)
    7e9c:	afb00040 	sw	s0,64(sp)
    7ea0:	f7b40038 	sdc1	$f20,56(sp)
    7ea4:	afa7006c 	sw	a3,108(sp)
    7ea8:	8cae0010 	lw	t6,16(a1)
    7eac:	0007b400 	sll	s6,a3,0x10
    7eb0:	2401ffff 	li	at,-1
    7eb4:	0016b403 	sra	s6,s6,0x10
    7eb8:	00a08025 	move	s0,a1
    7ebc:	00809025 	move	s2,a0
    7ec0:	11c10003 	beq	t6,at,7ed0 <func_8003305C+0x54>
    7ec4:	00c0a825 	move	s5,a2
    7ec8:	10000062 	b	8054 <func_8003305C+0x1d8>
    7ecc:	00001025 	move	v0,zero
    7ed0:	86030008 	lh	v1,8(s0)
    7ed4:	3c013f80 	lui	at,0x3f80
    7ed8:	1860004d 	blez	v1,8010 <func_8003305C+0x194>
    7edc:	00000000 	nop
    7ee0:	4481a000 	mtc1	at,$f20
    7ee4:	26b41c24 	addiu	s4,s5,7204
    7ee8:	8e0f0000 	lw	t7,0(s0)
    7eec:	0003c180 	sll	t8,v1,0x6
    7ef0:	0c000000 	jal	0 <ActorShape_Init>
    7ef4:	01f82021 	addu	a0,t7,t8
    7ef8:	c6480058 	lwc1	$f8,88(s2)
    7efc:	c6440050 	lwc1	$f4,80(s2)
    7f00:	c6460054 	lwc1	$f6,84(s2)
    7f04:	4608a283 	div.s	$f10,$f20,$f8
    7f08:	24070001 	li	a3,1
    7f0c:	4604a303 	div.s	$f12,$f20,$f4
    7f10:	44065000 	mfc1	a2,$f10
    7f14:	0c000000 	jal	0 <ActorShape_Init>
    7f18:	4606a383 	div.s	$f14,$f20,$f6
    7f1c:	86090008 	lh	t1,8(s0)
    7f20:	8e190000 	lw	t9,0(s0)
    7f24:	00095180 	sll	t2,t1,0x6
    7f28:	0c000000 	jal	0 <ActorShape_Init>
    7f2c:	032a2021 	addu	a0,t9,t2
    7f30:	86030008 	lh	v1,8(s0)
    7f34:	8e0b0004 	lw	t3,4(s0)
    7f38:	00036040 	sll	t4,v1,0x1
    7f3c:	016c6821 	addu	t5,t3,t4
    7f40:	85a20000 	lh	v0,0(t5)
    7f44:	04400003 	bltz	v0,7f54 <func_8003305C+0xd8>
    7f48:	00024400 	sll	t0,v0,0x10
    7f4c:	10000002 	b	7f58 <func_8003305C+0xdc>
    7f50:	00084403 	sra	t0,t0,0x10
    7f54:	8248001e 	lb	t0,30(s2)
    7f58:	8e0e0000 	lw	t6,0(s0)
    7f5c:	00037980 	sll	t7,v1,0x6
    7f60:	02802025 	move	a0,s4
    7f64:	01cf1021 	addu	v0,t6,t7
    7f68:	c4500030 	lwc1	$f16,48(v0)
    7f6c:	02402825 	move	a1,s2
    7f70:	02a03025 	move	a2,s5
    7f74:	e7b00010 	swc1	$f16,16(sp)
    7f78:	c4520034 	lwc1	$f18,52(v0)
    7f7c:	24070007 	li	a3,7
    7f80:	e7b20014 	swc1	$f18,20(sp)
    7f84:	c4440038 	lwc1	$f4,56(v0)
    7f88:	afb60028 	sw	s6,40(sp)
    7f8c:	afa80024 	sw	t0,36(sp)
    7f90:	afa00020 	sw	zero,32(sp)
    7f94:	afa0001c 	sw	zero,28(sp)
    7f98:	0c000000 	jal	0 <ActorShape_Init>
    7f9c:	e7a40018 	swc1	$f4,24(sp)
    7fa0:	10400015 	beqz	v0,7ff8 <func_8003305C+0x17c>
    7fa4:	00408825 	move	s1,v0
    7fa8:	86090008 	lh	t1,8(s0)
    7fac:	8e180000 	lw	t8,0(s0)
    7fb0:	244500b4 	addiu	a1,v0,180
    7fb4:	0009c980 	sll	t9,t1,0x6
    7fb8:	00003025 	move	a2,zero
    7fbc:	26530050 	addiu	s3,s2,80
    7fc0:	0c000000 	jal	0 <ActorShape_Init>
    7fc4:	03192021 	addu	a0,t8,t9
    7fc8:	860b0008 	lh	t3,8(s0)
    7fcc:	8e0a000c 	lw	t2,12(s0)
    7fd0:	000b6080 	sll	t4,t3,0x2
    7fd4:	014c6821 	addu	t5,t2,t4
    7fd8:	8dae0000 	lw	t6,0(t5)
    7fdc:	ae2e0150 	sw	t6,336(s1)
    7fe0:	8e690000 	lw	t1,0(s3)
    7fe4:	ae290050 	sw	t1,80(s1)
    7fe8:	8e6f0004 	lw	t7,4(s3)
    7fec:	ae2f0054 	sw	t7,84(s1)
    7ff0:	8e690008 	lw	t1,8(s3)
    7ff4:	ae290058 	sw	t1,88(s1)
    7ff8:	86180008 	lh	t8,8(s0)
    7ffc:	2719ffff 	addiu	t9,t8,-1
    8000:	a6190008 	sh	t9,8(s0)
    8004:	86030008 	lh	v1,8(s0)
    8008:	5c60ffb8 	bgtzl	v1,7eec <func_8003305C+0x70>
    800c:	8e0f0000 	lw	t7,0(s0)
    8010:	3c050000 	lui	a1,0x0
    8014:	ae000010 	sw	zero,16(s0)
    8018:	24a508e4 	addiu	a1,a1,2276
    801c:	8e040000 	lw	a0,0(s0)
    8020:	0c000000 	jal	0 <ActorShape_Init>
    8024:	24061dfe 	li	a2,7678
    8028:	3c050000 	lui	a1,0x0
    802c:	24a508f4 	addiu	a1,a1,2292
    8030:	8e04000c 	lw	a0,12(s0)
    8034:	0c000000 	jal	0 <ActorShape_Init>
    8038:	24061dff 	li	a2,7679
    803c:	3c050000 	lui	a1,0x0
    8040:	24a50904 	addiu	a1,a1,2308
    8044:	8e040004 	lw	a0,4(s0)
    8048:	0c000000 	jal	0 <ActorShape_Init>
    804c:	24061e00 	li	a2,7680
    8050:	24020001 	li	v0,1
    8054:	8fbf005c 	lw	ra,92(sp)
    8058:	d7b40038 	ldc1	$f20,56(sp)
    805c:	8fb00040 	lw	s0,64(sp)
    8060:	8fb10044 	lw	s1,68(sp)
    8064:	8fb20048 	lw	s2,72(sp)
    8068:	8fb3004c 	lw	s3,76(sp)
    806c:	8fb40050 	lw	s4,80(sp)
    8070:	8fb50054 	lw	s5,84(sp)
    8074:	8fb60058 	lw	s6,88(sp)
    8078:	03e00008 	jr	ra
    807c:	27bd0060 	addiu	sp,sp,96

00008080 <func_80033260>:
    8080:	27bdff58 	addiu	sp,sp,-168
    8084:	3c0e0000 	lui	t6,0x0
    8088:	afbf006c 	sw	ra,108(sp)
    808c:	afbe0068 	sw	s8,104(sp)
    8090:	afb70064 	sw	s7,100(sp)
    8094:	afb60060 	sw	s6,96(sp)
    8098:	afb5005c 	sw	s5,92(sp)
    809c:	afb40058 	sw	s4,88(sp)
    80a0:	afb30054 	sw	s3,84(sp)
    80a4:	afb20050 	sw	s2,80(sp)
    80a8:	afb1004c 	sw	s1,76(sp)
    80ac:	afb00048 	sw	s0,72(sp)
    80b0:	f7bc0040 	sdc1	$f28,64(sp)
    80b4:	f7ba0038 	sdc1	$f26,56(sp)
    80b8:	f7b80030 	sdc1	$f24,48(sp)
    80bc:	f7b60028 	sdc1	$f22,40(sp)
    80c0:	f7b40020 	sdc1	$f20,32(sp)
    80c4:	25ce012c 	addiu	t6,t6,300
    80c8:	8dd80000 	lw	t8,0(t6)
    80cc:	27b40090 	addiu	s4,sp,144
    80d0:	3c190000 	lui	t9,0x0
    80d4:	ae980000 	sw	t8,0(s4)
    80d8:	8dcf0004 	lw	t7,4(t6)
    80dc:	27390138 	addiu	t9,t9,312
    80e0:	27b50084 	addiu	s5,sp,132
    80e4:	ae8f0004 	sw	t7,4(s4)
    80e8:	8dd80008 	lw	t8,8(t6)
    80ec:	4487d000 	mtc1	a3,$f26
    80f0:	00a08025 	move	s0,a1
    80f4:	ae980008 	sw	t8,8(s4)
    80f8:	8f290000 	lw	t1,0(t9)
    80fc:	00809825 	move	s3,a0
    8100:	00c0b825 	move	s7,a2
    8104:	aea90000 	sw	t1,0(s5)
    8108:	8f280004 	lw	t0,4(t9)
    810c:	aea80004 	sw	t0,4(s5)
    8110:	8f290008 	lw	t1,8(t9)
    8114:	0c000000 	jal	0 <ActorShape_Init>
    8118:	aea90008 	sw	t1,8(s5)
    811c:	3c013f00 	lui	at,0x3f00
    8120:	4481c000 	mtc1	at,$f24
    8124:	3c010000 	lui	at,0x0
    8128:	c4260ac8 	lwc1	$f6,2760(at)
    812c:	46180101 	sub.s	$f4,$f0,$f24
    8130:	c6080080 	lwc1	$f8,128(s0)
    8134:	46062502 	mul.s	$f20,$f4,$f6
    8138:	0c000000 	jal	0 <ActorShape_Init>
    813c:	e7a800a0 	swc1	$f8,160(sp)
    8140:	46180281 	sub.s	$f10,$f0,$f24
    8144:	3c010000 	lui	at,0x0
    8148:	c4300acc 	lwc1	$f16,2764(at)
    814c:	c7a40088 	lwc1	$f4,136(sp)
    8150:	8fa200b8 	lw	v0,184(sp)
    8154:	46105482 	mul.s	$f18,$f10,$f16
    8158:	00409025 	move	s2,v0
    815c:	46122180 	add.s	$f6,$f4,$f18
    8160:	0440003e 	bltz	v0,825c <func_80033260+0x1dc>
    8164:	e7a60088 	swc1	$f6,136(sp)
    8168:	44824000 	mtc1	v0,$f8
    816c:	3c013f80 	lui	at,0x3f80
    8170:	44818000 	mtc1	at,$f16
    8174:	468042a0 	cvt.s.w	$f10,$f8
    8178:	3c010000 	lui	at,0x0
    817c:	c4320ad0 	lwc1	$f18,2768(at)
    8180:	c7b600bc 	lwc1	$f22,188(sp)
    8184:	93be00cb 	lbu	s8,203(sp)
    8188:	87b600c6 	lh	s6,198(sp)
    818c:	46105100 	add.s	$f4,$f10,$f16
    8190:	27b1009c 	addiu	s1,sp,156
    8194:	87b000c2 	lh	s0,194(sp)
    8198:	46049703 	div.s	$f28,$f18,$f4
    819c:	0c000000 	jal	0 <ActorShape_Init>
    81a0:	4600a306 	mov.s	$f12,$f20
    81a4:	461a0182 	mul.s	$f6,$f0,$f26
    81a8:	c6e80000 	lwc1	$f8,0(s7)
    81ac:	4600a306 	mov.s	$f12,$f20
    81b0:	46083280 	add.s	$f10,$f6,$f8
    81b4:	0c000000 	jal	0 <ActorShape_Init>
    81b8:	e7aa009c 	swc1	$f10,156(sp)
    81bc:	461a0402 	mul.s	$f16,$f0,$f26
    81c0:	c6f20008 	lwc1	$f18,8(s7)
    81c4:	46128100 	add.s	$f4,$f16,$f18
    81c8:	0c000000 	jal	0 <ActorShape_Init>
    81cc:	e7a400a4 	swc1	$f4,164(sp)
    81d0:	46180181 	sub.s	$f6,$f0,$f24
    81d4:	46163202 	mul.s	$f8,$f6,$f22
    81d8:	0c000000 	jal	0 <ActorShape_Init>
    81dc:	e7a80084 	swc1	$f8,132(sp)
    81e0:	46180281 	sub.s	$f10,$f0,$f24
    81e4:	02602025 	move	a0,s3
    81e8:	02202825 	move	a1,s1
    81ec:	02803025 	move	a2,s4
    81f0:	46165402 	mul.s	$f16,$f10,$f22
    81f4:	16000005 	bnez	s0,820c <func_80033260+0x18c>
    81f8:	e7b0008c 	swc1	$f16,140(sp)
    81fc:	0c000000 	jal	0 <ActorShape_Init>
    8200:	02a03825 	move	a3,s5
    8204:	10000013 	b	8254 <func_80033260+0x1d4>
    8208:	2652ffff 	addiu	s2,s2,-1
    820c:	13c0000a 	beqz	s8,8238 <func_80033260+0x1b8>
    8210:	02602025 	move	a0,s3
    8214:	02602025 	move	a0,s3
    8218:	02202825 	move	a1,s1
    821c:	02803025 	move	a2,s4
    8220:	02a03825 	move	a3,s5
    8224:	afb00010 	sw	s0,16(sp)
    8228:	0c000000 	jal	0 <ActorShape_Init>
    822c:	afb60014 	sw	s6,20(sp)
    8230:	10000008 	b	8254 <func_80033260+0x1d4>
    8234:	2652ffff 	addiu	s2,s2,-1
    8238:	02202825 	move	a1,s1
    823c:	02803025 	move	a2,s4
    8240:	02a03825 	move	a3,s5
    8244:	afb00010 	sw	s0,16(sp)
    8248:	0c000000 	jal	0 <ActorShape_Init>
    824c:	afb60014 	sw	s6,20(sp)
    8250:	2652ffff 	addiu	s2,s2,-1
    8254:	0641ffd1 	bgez	s2,819c <func_80033260+0x11c>
    8258:	461ca500 	add.s	$f20,$f20,$f28
    825c:	8fbf006c 	lw	ra,108(sp)
    8260:	d7b40020 	ldc1	$f20,32(sp)
    8264:	d7b60028 	ldc1	$f22,40(sp)
    8268:	d7b80030 	ldc1	$f24,48(sp)
    826c:	d7ba0038 	ldc1	$f26,56(sp)
    8270:	d7bc0040 	ldc1	$f28,64(sp)
    8274:	8fb00048 	lw	s0,72(sp)
    8278:	8fb1004c 	lw	s1,76(sp)
    827c:	8fb20050 	lw	s2,80(sp)
    8280:	8fb30054 	lw	s3,84(sp)
    8284:	8fb40058 	lw	s4,88(sp)
    8288:	8fb5005c 	lw	s5,92(sp)
    828c:	8fb60060 	lw	s6,96(sp)
    8290:	8fb70064 	lw	s7,100(sp)
    8294:	8fbe0068 	lw	s8,104(sp)
    8298:	03e00008 	jr	ra
    829c:	27bd00a8 	addiu	sp,sp,168

000082a0 <func_80033480>:
    82a0:	27bdff60 	addiu	sp,sp,-160
    82a4:	3c0e0000 	lui	t6,0x0
    82a8:	afbf0064 	sw	ra,100(sp)
    82ac:	afbe0060 	sw	s8,96(sp)
    82b0:	afb7005c 	sw	s7,92(sp)
    82b4:	afb60058 	sw	s6,88(sp)
    82b8:	afb50054 	sw	s5,84(sp)
    82bc:	afb40050 	sw	s4,80(sp)
    82c0:	afb3004c 	sw	s3,76(sp)
    82c4:	afb20048 	sw	s2,72(sp)
    82c8:	afb10044 	sw	s1,68(sp)
    82cc:	afb00040 	sw	s0,64(sp)
    82d0:	f7ba0038 	sdc1	$f26,56(sp)
    82d4:	f7b80030 	sdc1	$f24,48(sp)
    82d8:	f7b60028 	sdc1	$f22,40(sp)
    82dc:	f7b40020 	sdc1	$f20,32(sp)
    82e0:	25ce0144 	addiu	t6,t6,324
    82e4:	8dd80000 	lw	t8,0(t6)
    82e8:	27b40088 	addiu	s4,sp,136
    82ec:	3c190000 	lui	t9,0x0
    82f0:	ae980000 	sw	t8,0(s4)
    82f4:	8dcf0004 	lw	t7,4(t6)
    82f8:	27390150 	addiu	t9,t9,336
    82fc:	27b5007c 	addiu	s5,sp,124
    8300:	ae8f0004 	sw	t7,4(s4)
    8304:	8dd80008 	lw	t8,8(t6)
    8308:	4486a000 	mtc1	a2,$f20
    830c:	00a08825 	move	s1,a1
    8310:	ae980008 	sw	t8,8(s4)
    8314:	8f290000 	lw	t1,0(t9)
    8318:	00809025 	move	s2,a0
    831c:	00e08025 	move	s0,a3
    8320:	aea90000 	sw	t1,0(s5)
    8324:	8f280004 	lw	t0,4(t9)
    8328:	27b60094 	addiu	s6,sp,148
    832c:	3c010000 	lui	at,0x0
    8330:	aea80004 	sw	t0,4(s5)
    8334:	8f290008 	lw	t1,8(t9)
    8338:	04e00039 	bltz	a3,8420 <func_80033480+0x180>
    833c:	aea90008 	sw	t1,8(s5)
    8340:	87b700b2 	lh	s7,178(sp)
    8344:	c43a0ad4 	lwc1	$f26,2772(at)
    8348:	3c013f00 	lui	at,0x3f00
    834c:	44972000 	mtc1	s7,$f4
    8350:	4481b000 	mtc1	at,$f22
    8354:	93be00bb 	lbu	s8,187(sp)
    8358:	87b300b6 	lh	s3,182(sp)
    835c:	46802620 	cvt.s.w	$f24,$f4
    8360:	0c000000 	jal	0 <ActorShape_Init>
    8364:	00000000 	nop
    8368:	46160181 	sub.s	$f6,$f0,$f22
    836c:	c62a0000 	lwc1	$f10,0(s1)
    8370:	46143202 	mul.s	$f8,$f6,$f20
    8374:	460a4400 	add.s	$f16,$f8,$f10
    8378:	0c000000 	jal	0 <ActorShape_Init>
    837c:	e7b00094 	swc1	$f16,148(sp)
    8380:	46160481 	sub.s	$f18,$f0,$f22
    8384:	c6260004 	lwc1	$f6,4(s1)
    8388:	46149102 	mul.s	$f4,$f18,$f20
    838c:	46062200 	add.s	$f8,$f4,$f6
    8390:	0c000000 	jal	0 <ActorShape_Init>
    8394:	e7a80098 	swc1	$f8,152(sp)
    8398:	46160281 	sub.s	$f10,$f0,$f22
    839c:	c6320008 	lwc1	$f18,8(s1)
    83a0:	46145402 	mul.s	$f16,$f10,$f20
    83a4:	46128100 	add.s	$f4,$f16,$f18
    83a8:	0c000000 	jal	0 <ActorShape_Init>
    83ac:	e7a4009c 	swc1	$f4,156(sp)
    83b0:	46180182 	mul.s	$f6,$f0,$f24
    83b4:	02402025 	move	a0,s2
    83b8:	02c02825 	move	a1,s6
    83bc:	02803025 	move	a2,s4
    83c0:	02a03825 	move	a3,s5
    83c4:	461a3202 	mul.s	$f8,$f6,$f26
    83c8:	4600428d 	trunc.w.s	$f10,$f8
    83cc:	440d5000 	mfc1	t5,$f10
    83d0:	00000000 	nop
    83d4:	01b71021 	addu	v0,t5,s7
    83d8:	00021400 	sll	v0,v0,0x10
    83dc:	13c0000a 	beqz	s8,8408 <func_80033480+0x168>
    83e0:	00021403 	sra	v0,v0,0x10
    83e4:	02402025 	move	a0,s2
    83e8:	02c02825 	move	a1,s6
    83ec:	02803025 	move	a2,s4
    83f0:	02a03825 	move	a3,s5
    83f4:	afa20010 	sw	v0,16(sp)
    83f8:	0c000000 	jal	0 <ActorShape_Init>
    83fc:	afb30014 	sw	s3,20(sp)
    8400:	10000005 	b	8418 <func_80033480+0x178>
    8404:	2610ffff 	addiu	s0,s0,-1
    8408:	afa20010 	sw	v0,16(sp)
    840c:	0c000000 	jal	0 <ActorShape_Init>
    8410:	afb30014 	sw	s3,20(sp)
    8414:	2610ffff 	addiu	s0,s0,-1
    8418:	0601ffd1 	bgez	s0,8360 <func_80033480+0xc0>
    841c:	00000000 	nop
    8420:	8fbf0064 	lw	ra,100(sp)
    8424:	d7b40020 	ldc1	$f20,32(sp)
    8428:	d7b60028 	ldc1	$f22,40(sp)
    842c:	d7b80030 	ldc1	$f24,48(sp)
    8430:	d7ba0038 	ldc1	$f26,56(sp)
    8434:	8fb00040 	lw	s0,64(sp)
    8438:	8fb10044 	lw	s1,68(sp)
    843c:	8fb20048 	lw	s2,72(sp)
    8440:	8fb3004c 	lw	s3,76(sp)
    8444:	8fb40050 	lw	s4,80(sp)
    8448:	8fb50054 	lw	s5,84(sp)
    844c:	8fb60058 	lw	s6,88(sp)
    8450:	8fb7005c 	lw	s7,92(sp)
    8454:	8fbe0060 	lw	s8,96(sp)
    8458:	03e00008 	jr	ra
    845c:	27bd00a0 	addiu	sp,sp,160

00008460 <Actor_GetCollidedExplosive>:
    8460:	afa40000 	sw	a0,0(sp)
    8464:	90a30011 	lbu	v1,17(a1)
    8468:	00001025 	move	v0,zero
    846c:	306e0002 	andi	t6,v1,0x2
    8470:	11c0000a 	beqz	t6,849c <Actor_GetCollidedExplosive+0x3c>
    8474:	00000000 	nop
    8478:	8ca40008 	lw	a0,8(a1)
    847c:	24010003 	li	at,3
    8480:	3078fffd 	andi	t8,v1,0xfffd
    8484:	908f0002 	lbu	t7,2(a0)
    8488:	15e10004 	bne	t7,at,849c <Actor_GetCollidedExplosive+0x3c>
    848c:	00000000 	nop
    8490:	a0b80011 	sb	t8,17(a1)
    8494:	03e00008 	jr	ra
    8498:	00801025 	move	v0,a0
    849c:	03e00008 	jr	ra
    84a0:	00000000 	nop

000084a4 <func_80033684>:
    84a4:	27bdffd0 	addiu	sp,sp,-48
    84a8:	afbf002c 	sw	ra,44(sp)
    84ac:	afb30028 	sw	s3,40(sp)
    84b0:	afb20024 	sw	s2,36(sp)
    84b4:	afb10020 	sw	s1,32(sp)
    84b8:	afb0001c 	sw	s0,28(sp)
    84bc:	f7b40010 	sdc1	$f20,16(sp)
    84c0:	8c901c4c 	lw	s0,7244(a0)
    84c4:	00a08825 	move	s1,a1
    84c8:	2413000a 	li	s3,10
    84cc:	1200001d 	beqz	s0,8544 <func_80033684+0xa0>
    84d0:	3c0142a0 	lui	at,0x42a0
    84d4:	4481a000 	mtc1	at,$f20
    84d8:	24120001 	li	s2,1
    84dc:	12110005 	beq	s0,s1,84f4 <func_80033684+0x50>
    84e0:	00000000 	nop
    84e4:	860e001c 	lh	t6,28(s0)
    84e8:	02202025 	move	a0,s1
    84ec:	124e0003 	beq	s2,t6,84fc <func_80033684+0x58>
    84f0:	00000000 	nop
    84f4:	10000011 	b	853c <func_80033684+0x98>
    84f8:	8e100124 	lw	s0,292(s0)
    84fc:	0c000000 	jal	0 <ActorShape_Init>
    8500:	02002825 	move	a1,s0
    8504:	860f00b8 	lh	t7,184(s0)
    8508:	01f30019 	multu	t7,s3
    850c:	0000c012 	mflo	t8
    8510:	44982000 	mtc1	t8,$f4
    8514:	00000000 	nop
    8518:	468021a0 	cvt.s.w	$f6,$f4
    851c:	46143200 	add.s	$f8,$f6,$f20
    8520:	4608003e 	c.le.s	$f0,$f8
    8524:	00000000 	nop
    8528:	45020004 	bc1fl	853c <func_80033684+0x98>
    852c:	8e100124 	lw	s0,292(s0)
    8530:	10000005 	b	8548 <func_80033684+0xa4>
    8534:	02001025 	move	v0,s0
    8538:	8e100124 	lw	s0,292(s0)
    853c:	1600ffe7 	bnez	s0,84dc <func_80033684+0x38>
    8540:	00000000 	nop
    8544:	00001025 	move	v0,zero
    8548:	8fbf002c 	lw	ra,44(sp)
    854c:	d7b40010 	ldc1	$f20,16(sp)
    8550:	8fb0001c 	lw	s0,28(sp)
    8554:	8fb10020 	lw	s1,32(sp)
    8558:	8fb20024 	lw	s2,36(sp)
    855c:	8fb30028 	lw	s3,40(sp)
    8560:	03e00008 	jr	ra
    8564:	27bd0030 	addiu	sp,sp,48

00008568 <Actor_ChangeType>:
    8568:	27bdffe8 	addiu	sp,sp,-24
    856c:	afbf0014 	sw	ra,20(sp)
    8570:	afa5001c 	sw	a1,28(sp)
    8574:	afa60020 	sw	a2,32(sp)
    8578:	0c000000 	jal	0 <ActorShape_Init>
    857c:	afa70024 	sw	a3,36(sp)
    8580:	8fa4001c 	lw	a0,28(sp)
    8584:	8fa50020 	lw	a1,32(sp)
    8588:	0c000000 	jal	0 <ActorShape_Init>
    858c:	93a60027 	lbu	a2,39(sp)
    8590:	8fbf0014 	lw	ra,20(sp)
    8594:	27bd0018 	addiu	sp,sp,24
    8598:	03e00008 	jr	ra
    859c:	00000000 	nop

000085a0 <func_80033780>:
    85a0:	27bdff48 	addiu	sp,sp,-184
    85a4:	afbf0074 	sw	ra,116(sp)
    85a8:	afbe0070 	sw	s8,112(sp)
    85ac:	afb7006c 	sw	s7,108(sp)
    85b0:	afb60068 	sw	s6,104(sp)
    85b4:	afb50064 	sw	s5,100(sp)
    85b8:	afb40060 	sw	s4,96(sp)
    85bc:	afb3005c 	sw	s3,92(sp)
    85c0:	afb20058 	sw	s2,88(sp)
    85c4:	afb10054 	sw	s1,84(sp)
    85c8:	afb00050 	sw	s0,80(sp)
    85cc:	f7bc0048 	sdc1	$f28,72(sp)
    85d0:	f7ba0040 	sdc1	$f26,64(sp)
    85d4:	f7b80038 	sdc1	$f24,56(sp)
    85d8:	f7b60030 	sdc1	$f22,48(sp)
    85dc:	f7b40028 	sdc1	$f20,40(sp)
    85e0:	8c901c6c 	lw	s0,7276(a0)
    85e4:	4486e000 	mtc1	a2,$f28
    85e8:	00a09825 	move	s3,a1
    85ec:	1200004a 	beqz	s0,8718 <func_80033780+0x178>
    85f0:	3c014120 	lui	at,0x4120
    85f4:	4480d000 	mtc1	zero,$f26
    85f8:	4481c000 	mtc1	at,$f24
    85fc:	27be0084 	addiu	s8,sp,132
    8600:	27b70090 	addiu	s7,sp,144
    8604:	27b600a8 	addiu	s6,sp,168
    8608:	24150016 	li	s5,22
    860c:	24140066 	li	s4,102
    8610:	86020000 	lh	v0,0(s0)
    8614:	12820003 	beq	s4,v0,8624 <func_80033780+0x84>
    8618:	00000000 	nop
    861c:	16a20003 	bne	s5,v0,862c <func_80033780+0x8c>
    8620:	00000000 	nop
    8624:	16130003 	bne	s0,s3,8634 <func_80033780+0x94>
    8628:	26710024 	addiu	s1,s3,36
    862c:	10000038 	b	8710 <func_80033780+0x170>
    8630:	8e100124 	lw	s0,292(s0)
    8634:	26120024 	addiu	s2,s0,36
    8638:	02402825 	move	a1,s2
    863c:	0c000000 	jal	0 <ActorShape_Init>
    8640:	02202025 	move	a0,s1
    8644:	4600e03c 	c.lt.s	$f28,$f0
    8648:	00000000 	nop
    864c:	45010004 	bc1t	8660 <func_80033780+0xc0>
    8650:	00000000 	nop
    8654:	860e0210 	lh	t6,528(s0)
    8658:	15c00003 	bnez	t6,8668 <func_80033780+0xc8>
    865c:	00000000 	nop
    8660:	1000002b 	b	8710 <func_80033780+0x170>
    8664:	8e100124 	lw	s0,292(s0)
    8668:	0c000000 	jal	0 <ActorShape_Init>
    866c:	86040032 	lh	a0,50(s0)
    8670:	c6040068 	lwc1	$f4,104(s0)
    8674:	c60a006c 	lwc1	$f10,108(s0)
    8678:	c6080060 	lwc1	$f8,96(s0)
    867c:	46182182 	mul.s	$f6,$f4,$f24
    8680:	86040032 	lh	a0,50(s0)
    8684:	46060502 	mul.s	$f20,$f0,$f6
    8688:	00000000 	nop
    868c:	46185402 	mul.s	$f16,$f10,$f24
    8690:	0c000000 	jal	0 <ActorShape_Init>
    8694:	46104580 	add.s	$f22,$f8,$f16
    8698:	c6060024 	lwc1	$f6,36(s0)
    869c:	c6120068 	lwc1	$f18,104(s0)
    86a0:	4406d000 	mfc1	a2,$f26
    86a4:	46143280 	add.s	$f10,$f6,$f20
    86a8:	46189102 	mul.s	$f4,$f18,$f24
    86ac:	02203825 	move	a3,s1
    86b0:	e7aa00a8 	swc1	$f10,168(sp)
    86b4:	c6080028 	lwc1	$f8,40(s0)
    86b8:	46164400 	add.s	$f16,$f8,$f22
    86bc:	46040082 	mul.s	$f2,$f0,$f4
    86c0:	e7b000ac 	swc1	$f16,172(sp)
    86c4:	c612002c 	lwc1	$f18,44(s0)
    86c8:	46029100 	add.s	$f4,$f18,$f2
    86cc:	e7a400b0 	swc1	$f4,176(sp)
    86d0:	867800aa 	lh	t8,170(s3)
    86d4:	866f00a8 	lh	t7,168(s3)
    86d8:	afbe001c 	sw	s8,28(sp)
    86dc:	44985000 	mtc1	t8,$f10
    86e0:	448f3000 	mtc1	t7,$f6
    86e4:	afb70018 	sw	s7,24(sp)
    86e8:	afb60014 	sw	s6,20(sp)
    86ec:	afb20010 	sw	s2,16(sp)
    86f0:	468053a0 	cvt.s.w	$f14,$f10
    86f4:	0c000000 	jal	0 <ActorShape_Init>
    86f8:	46803320 	cvt.s.w	$f12,$f6
    86fc:	50400004 	beqzl	v0,8710 <func_80033780+0x170>
    8700:	8e100124 	lw	s0,292(s0)
    8704:	10000005 	b	871c <func_80033780+0x17c>
    8708:	02001025 	move	v0,s0
    870c:	8e100124 	lw	s0,292(s0)
    8710:	5600ffc0 	bnezl	s0,8614 <func_80033780+0x74>
    8714:	86020000 	lh	v0,0(s0)
    8718:	00001025 	move	v0,zero
    871c:	8fbf0074 	lw	ra,116(sp)
    8720:	d7b40028 	ldc1	$f20,40(sp)
    8724:	d7b60030 	ldc1	$f22,48(sp)
    8728:	d7b80038 	ldc1	$f24,56(sp)
    872c:	d7ba0040 	ldc1	$f26,64(sp)
    8730:	d7bc0048 	ldc1	$f28,72(sp)
    8734:	8fb00050 	lw	s0,80(sp)
    8738:	8fb10054 	lw	s1,84(sp)
    873c:	8fb20058 	lw	s2,88(sp)
    8740:	8fb3005c 	lw	s3,92(sp)
    8744:	8fb40060 	lw	s4,96(sp)
    8748:	8fb50064 	lw	s5,100(sp)
    874c:	8fb60068 	lw	s6,104(sp)
    8750:	8fb7006c 	lw	s7,108(sp)
    8754:	8fbe0070 	lw	s8,112(sp)
    8758:	03e00008 	jr	ra
    875c:	27bd00b8 	addiu	sp,sp,184

00008760 <Actor_SetTextWithPrefix>:
    8760:	afa60008 	sw	a2,8(sp)
    8764:	948e00a4 	lhu	t6,164(a0)
    8768:	00063400 	sll	a2,a2,0x10
    876c:	00063403 	sra	a2,a2,0x10
    8770:	2dc10071 	sltiu	at,t6,113
    8774:	10200014 	beqz	at,87c8 <Actor_SetTextWithPrefix+0x68>
    8778:	000e7080 	sll	t6,t6,0x2
    877c:	3c010000 	lui	at,0x0
    8780:	002e0821 	addu	at,at,t6
    8784:	8c2e0ad8 	lw	t6,2776(at)
    8788:	01c00008 	jr	t6
    878c:	00000000 	nop
    8790:	1000000e 	b	87cc <Actor_SetTextWithPrefix+0x6c>
    8794:	24021000 	li	v0,4096
    8798:	1000000c 	b	87cc <Actor_SetTextWithPrefix+0x6c>
    879c:	24022000 	li	v0,8192
    87a0:	1000000a 	b	87cc <Actor_SetTextWithPrefix+0x6c>
    87a4:	24023000 	li	v0,12288
    87a8:	10000008 	b	87cc <Actor_SetTextWithPrefix+0x6c>
    87ac:	24024000 	li	v0,16384
    87b0:	10000006 	b	87cc <Actor_SetTextWithPrefix+0x6c>
    87b4:	24025000 	li	v0,20480
    87b8:	10000004 	b	87cc <Actor_SetTextWithPrefix+0x6c>
    87bc:	24026000 	li	v0,24576
    87c0:	10000002 	b	87cc <Actor_SetTextWithPrefix+0x6c>
    87c4:	24027000 	li	v0,28672
    87c8:	00001025 	move	v0,zero
    87cc:	00467825 	or	t7,v0,a2
    87d0:	03e00008 	jr	ra
    87d4:	a4af010e 	sh	t7,270(a1)

000087d8 <func_800339B8>:
    87d8:	27bdffb8 	addiu	sp,sp,-72
    87dc:	afb00020 	sw	s0,32(sp)
    87e0:	00808025 	move	s0,a0
    87e4:	afa5004c 	sw	a1,76(sp)
    87e8:	afbf0024 	sw	ra,36(sp)
    87ec:	26050024 	addiu	a1,s0,36
    87f0:	afa60050 	sw	a2,80(sp)
    87f4:	afa70054 	sw	a3,84(sp)
    87f8:	afa5002c 	sw	a1,44(sp)
    87fc:	0c000000 	jal	0 <ActorShape_Init>
    8800:	27a40030 	addiu	a0,sp,48
    8804:	960e0088 	lhu	t6,136(s0)
    8808:	87a40056 	lh	a0,86(sp)
    880c:	0c000000 	jal	0 <ActorShape_Init>
    8810:	a7ae0044 	sh	t6,68(sp)
    8814:	c7a40050 	lwc1	$f4,80(sp)
    8818:	87a40056 	lh	a0,86(sp)
    881c:	46040182 	mul.s	$f6,$f0,$f4
    8820:	0c000000 	jal	0 <ActorShape_Init>
    8824:	e7a60040 	swc1	$f6,64(sp)
    8828:	c6080024 	lwc1	$f8,36(s0)
    882c:	c7aa0040 	lwc1	$f10,64(sp)
    8830:	c612002c 	lwc1	$f18,44(s0)
    8834:	44801000 	mtc1	zero,$f2
    8838:	460a4400 	add.s	$f16,$f8,$f10
    883c:	240f0004 	li	t7,4
    8840:	44061000 	mfc1	a2,$f2
    8844:	44071000 	mfc1	a3,$f2
    8848:	e6100024 	swc1	$f16,36(s0)
    884c:	c7a40050 	lwc1	$f4,80(sp)
    8850:	02002825 	move	a1,s0
    8854:	46040182 	mul.s	$f6,$f0,$f4
    8858:	46069200 	add.s	$f8,$f18,$f6
    885c:	e608002c 	swc1	$f8,44(s0)
    8860:	afaf0014 	sw	t7,20(sp)
    8864:	8fa4004c 	lw	a0,76(sp)
    8868:	0c000000 	jal	0 <ActorShape_Init>
    886c:	e7a20010 	swc1	$f2,16(sp)
    8870:	8fa4002c 	lw	a0,44(sp)
    8874:	0c000000 	jal	0 <ActorShape_Init>
    8878:	27a50030 	addiu	a1,sp,48
    887c:	87b80044 	lh	t8,68(sp)
    8880:	96030088 	lhu	v1,136(s0)
    8884:	a6180088 	sh	t8,136(s0)
    8888:	8fbf0024 	lw	ra,36(sp)
    888c:	30630001 	andi	v1,v1,0x1
    8890:	00031c00 	sll	v1,v1,0x10
    8894:	8fb00020 	lw	s0,32(sp)
    8898:	00031403 	sra	v0,v1,0x10
    889c:	03e00008 	jr	ra
    88a0:	27bd0048 	addiu	sp,sp,72

000088a4 <func_80033A84>:
    88a4:	8c821c44 	lw	v0,7236(a0)
    88a8:	8c4e067c 	lw	t6,1660(v0)
    88ac:	00001025 	move	v0,zero
    88b0:	31cf0010 	andi	t7,t6,0x10
    88b4:	11e00006 	beqz	t7,88d0 <func_80033A84+0x2c>
    88b8:	00000000 	nop
    88bc:	90b8010c 	lbu	t8,268(a1)
    88c0:	13000003 	beqz	t8,88d0 <func_80033A84+0x2c>
    88c4:	00000000 	nop
    88c8:	03e00008 	jr	ra
    88cc:	24020001 	li	v0,1
    88d0:	03e00008 	jr	ra
    88d4:	00000000 	nop

000088d8 <func_80033AB8>:
    88d8:	8c821c44 	lw	v0,7236(a0)
    88dc:	8c4e067c 	lw	t6,1660(v0)
    88e0:	00001025 	move	v0,zero
    88e4:	31cf0010 	andi	t7,t6,0x10
    88e8:	11e00006 	beqz	t7,8904 <func_80033AB8+0x2c>
    88ec:	00000000 	nop
    88f0:	90b8010c 	lbu	t8,268(a1)
    88f4:	17000003 	bnez	t8,8904 <func_80033AB8+0x2c>
    88f8:	00000000 	nop
    88fc:	03e00008 	jr	ra
    8900:	24020001 	li	v0,1
    8904:	03e00008 	jr	ra
    8908:	00000000 	nop

0000890c <func_80033AEC>:
    890c:	27bdffb8 	addiu	sp,sp,-72
    8910:	f7ba0030 	sdc1	$f26,48(sp)
    8914:	4480d000 	mtc1	zero,$f26
    8918:	f7b80028 	sdc1	$f24,40(sp)
    891c:	f7b60020 	sdc1	$f22,32(sp)
    8920:	4486b000 	mtc1	a2,$f22
    8924:	4487c000 	mtc1	a3,$f24
    8928:	afbf0044 	sw	ra,68(sp)
    892c:	afb10040 	sw	s1,64(sp)
    8930:	afb0003c 	sw	s0,60(sp)
    8934:	f7b40018 	sdc1	$f20,24(sp)
    8938:	00808025 	move	s0,a0
    893c:	00a08825 	move	s1,a1
    8940:	0c000000 	jal	0 <ActorShape_Init>
    8944:	4600d506 	mov.s	$f20,$f26
    8948:	c7a40058 	lwc1	$f4,88(sp)
    894c:	02002025 	move	a0,s0
    8950:	4600203e 	c.le.s	$f4,$f0
    8954:	00000000 	nop
    8958:	45000017 	bc1f	89b8 <func_80033AEC+0xac>
    895c:	00000000 	nop
    8960:	8e050000 	lw	a1,0(s0)
    8964:	4406b000 	mfc1	a2,$f22
    8968:	4407c000 	mfc1	a3,$f24
    896c:	e7ba0010 	swc1	$f26,16(sp)
    8970:	0c000000 	jal	0 <ActorShape_Init>
    8974:	02202025 	move	a0,s1
    8978:	8e050004 	lw	a1,4(s0)
    897c:	4406b000 	mfc1	a2,$f22
    8980:	4407c000 	mfc1	a3,$f24
    8984:	46000506 	mov.s	$f20,$f0
    8988:	e7ba0010 	swc1	$f26,16(sp)
    898c:	0c000000 	jal	0 <ActorShape_Init>
    8990:	26240004 	addiu	a0,s1,4
    8994:	8e050008 	lw	a1,8(s0)
    8998:	4406b000 	mfc1	a2,$f22
    899c:	4407c000 	mfc1	a3,$f24
    89a0:	4600a500 	add.s	$f20,$f20,$f0
    89a4:	e7ba0010 	swc1	$f26,16(sp)
    89a8:	0c000000 	jal	0 <ActorShape_Init>
    89ac:	26240008 	addiu	a0,s1,8
    89b0:	1000001d 	b	8a28 <func_80033AEC+0x11c>
    89b4:	4600a500 	add.s	$f20,$f20,$f0
    89b8:	0c000000 	jal	0 <ActorShape_Init>
    89bc:	02202825 	move	a1,s1
    89c0:	c7a6005c 	lwc1	$f6,92(sp)
    89c4:	02202025 	move	a0,s1
    89c8:	4600303c 	c.lt.s	$f6,$f0
    89cc:	00000000 	nop
    89d0:	45020016 	bc1fl	8a2c <func_80033AEC+0x120>
    89d4:	8fbf0044 	lw	ra,68(sp)
    89d8:	8e050000 	lw	a1,0(s0)
    89dc:	4406b000 	mfc1	a2,$f22
    89e0:	4407c000 	mfc1	a3,$f24
    89e4:	0c000000 	jal	0 <ActorShape_Init>
    89e8:	e7ba0010 	swc1	$f26,16(sp)
    89ec:	8e050004 	lw	a1,4(s0)
    89f0:	4406b000 	mfc1	a2,$f22
    89f4:	4407c000 	mfc1	a3,$f24
    89f8:	46000506 	mov.s	$f20,$f0
    89fc:	e7ba0010 	swc1	$f26,16(sp)
    8a00:	0c000000 	jal	0 <ActorShape_Init>
    8a04:	26240004 	addiu	a0,s1,4
    8a08:	8e050008 	lw	a1,8(s0)
    8a0c:	4406b000 	mfc1	a2,$f22
    8a10:	4407c000 	mfc1	a3,$f24
    8a14:	4600a500 	add.s	$f20,$f20,$f0
    8a18:	e7ba0010 	swc1	$f26,16(sp)
    8a1c:	0c000000 	jal	0 <ActorShape_Init>
    8a20:	26240008 	addiu	a0,s1,8
    8a24:	4600a500 	add.s	$f20,$f20,$f0
    8a28:	8fbf0044 	lw	ra,68(sp)
    8a2c:	4600a006 	mov.s	$f0,$f20
    8a30:	d7b40018 	ldc1	$f20,24(sp)
    8a34:	d7b60020 	ldc1	$f22,32(sp)
    8a38:	d7b80028 	ldc1	$f24,40(sp)
    8a3c:	d7ba0030 	ldc1	$f26,48(sp)
    8a40:	8fb0003c 	lw	s0,60(sp)
    8a44:	8fb10040 	lw	s1,64(sp)
    8a48:	03e00008 	jr	ra
    8a4c:	27bd0048 	addiu	sp,sp,72

00008a50 <func_80033C30>:
    8a50:	27bdff60 	addiu	sp,sp,-160
    8a54:	afbf0024 	sw	ra,36(sp)
    8a58:	afb10020 	sw	s1,32(sp)
    8a5c:	afb0001c 	sw	s0,28(sp)
    8a60:	afa500a4 	sw	a1,164(sp)
    8a64:	afa600a8 	sw	a2,168(sp)
    8a68:	afa700ac 	sw	a3,172(sp)
    8a6c:	8ce50000 	lw	a1,0(a3)
    8a70:	00808025 	move	s0,a0
    8a74:	3c060000 	lui	a2,0x0
    8a78:	24c60914 	addiu	a2,a2,2324
    8a7c:	27a40038 	addiu	a0,sp,56
    8a80:	24071fb8 	li	a3,8120
    8a84:	0c000000 	jal	0 <ActorShape_Init>
    8a88:	00a08825 	move	s1,a1
    8a8c:	8e2402c0 	lw	a0,704(s1)
    8a90:	0c000000 	jal	0 <ActorShape_Init>
    8a94:	2405002c 	li	a1,44
    8a98:	ae2202c0 	sw	v0,704(s1)
    8a9c:	244f0008 	addiu	t7,v0,8
    8aa0:	ae2f02c0 	sw	t7,704(s1)
    8aa4:	3c18fa00 	lui	t8,0xfa00
    8aa8:	ac580000 	sw	t8,0(v0)
    8aac:	93a800ab 	lbu	t0,171(sp)
    8ab0:	3c013f80 	lui	at,0x3f80
    8ab4:	44814000 	mtc1	at,$f8
    8ab8:	ac480004 	sw	t0,4(v0)
    8abc:	c6040000 	lwc1	$f4,0(s0)
    8ac0:	8fa400ac 	lw	a0,172(sp)
    8ac4:	27a6004c 	addiu	a2,sp,76
    8ac8:	e7a40050 	swc1	$f4,80(sp)
    8acc:	c6060004 	lwc1	$f6,4(s0)
    8ad0:	27a70050 	addiu	a3,sp,80
    8ad4:	248507c0 	addiu	a1,a0,1984
    8ad8:	46083280 	add.s	$f10,$f6,$f8
    8adc:	e7aa0054 	swc1	$f10,84(sp)
    8ae0:	c6100008 	lwc1	$f16,8(s0)
    8ae4:	0c000000 	jal	0 <ActorShape_Init>
    8ae8:	e7b00058 	swc1	$f16,88(sp)
    8aec:	8fa9004c 	lw	t1,76(sp)
    8af0:	27aa0060 	addiu	t2,sp,96
    8af4:	00003825 	move	a3,zero
    8af8:	1120000a 	beqz	t1,8b24 <func_80033C30+0xd4>
    8afc:	01202025 	move	a0,t1
    8b00:	8e050000 	lw	a1,0(s0)
    8b04:	44060000 	mfc1	a2,$f0
    8b08:	8e070008 	lw	a3,8(s0)
    8b0c:	0c000000 	jal	0 <ActorShape_Init>
    8b10:	afaa0010 	sw	t2,16(sp)
    8b14:	0c000000 	jal	0 <ActorShape_Init>
    8b18:	27a40060 	addiu	a0,sp,96
    8b1c:	10000006 	b	8b38 <func_80033C30+0xe8>
    8b20:	8fa200a4 	lw	v0,164(sp)
    8b24:	c60c0000 	lwc1	$f12,0(s0)
    8b28:	c60e0004 	lwc1	$f14,4(s0)
    8b2c:	0c000000 	jal	0 <ActorShape_Init>
    8b30:	8e060008 	lw	a2,8(s0)
    8b34:	8fa200a4 	lw	v0,164(sp)
    8b38:	3c013f80 	lui	at,0x3f80
    8b3c:	44817000 	mtc1	at,$f14
    8b40:	24070001 	li	a3,1
    8b44:	c44c0000 	lwc1	$f12,0(v0)
    8b48:	0c000000 	jal	0 <ActorShape_Init>
    8b4c:	8c460008 	lw	a2,8(v0)
    8b50:	8e2202c0 	lw	v0,704(s1)
    8b54:	3c0cda38 	lui	t4,0xda38
    8b58:	358c0003 	ori	t4,t4,0x3
    8b5c:	244b0008 	addiu	t3,v0,8
    8b60:	ae2b02c0 	sw	t3,704(s1)
    8b64:	ac4c0000 	sw	t4,0(v0)
    8b68:	8fad00ac 	lw	t5,172(sp)
    8b6c:	3c050000 	lui	a1,0x0
    8b70:	24a50924 	addiu	a1,a1,2340
    8b74:	24061fd5 	li	a2,8149
    8b78:	00408025 	move	s0,v0
    8b7c:	0c000000 	jal	0 <ActorShape_Init>
    8b80:	8da40000 	lw	a0,0(t5)
    8b84:	ae020004 	sw	v0,4(s0)
    8b88:	8e2202c0 	lw	v0,704(s1)
    8b8c:	3c180000 	lui	t8,0x0
    8b90:	27180000 	addiu	t8,t8,0
    8b94:	244e0008 	addiu	t6,v0,8
    8b98:	ae2e02c0 	sw	t6,704(s1)
    8b9c:	3c0fde00 	lui	t7,0xde00
    8ba0:	ac4f0000 	sw	t7,0(v0)
    8ba4:	ac580004 	sw	t8,4(v0)
    8ba8:	8fb900ac 	lw	t9,172(sp)
    8bac:	3c060000 	lui	a2,0x0
    8bb0:	24c60934 	addiu	a2,a2,2356
    8bb4:	27a40038 	addiu	a0,sp,56
    8bb8:	24071fdb 	li	a3,8155
    8bbc:	0c000000 	jal	0 <ActorShape_Init>
    8bc0:	8f250000 	lw	a1,0(t9)
    8bc4:	8fbf0024 	lw	ra,36(sp)
    8bc8:	8fb0001c 	lw	s0,28(sp)
    8bcc:	8fb10020 	lw	s1,32(sp)
    8bd0:	03e00008 	jr	ra
    8bd4:	27bd00a0 	addiu	sp,sp,160

00008bd8 <func_80033DB8>:
    8bd8:	27bdffd8 	addiu	sp,sp,-40
    8bdc:	afbf001c 	sw	ra,28(sp)
    8be0:	afa5002c 	sw	a1,44(sp)
    8be4:	afa60030 	sw	a2,48(sp)
    8be8:	24050003 	li	a1,3
    8bec:	0c000000 	jal	0 <ActorShape_Init>
    8bf0:	248401e0 	addiu	a0,a0,480
    8bf4:	00022400 	sll	a0,v0,0x10
    8bf8:	a7a20026 	sh	v0,38(sp)
    8bfc:	00042403 	sra	a0,a0,0x10
    8c00:	0c000000 	jal	0 <ActorShape_Init>
    8c04:	24054e20 	li	a1,20000
    8c08:	87a40026 	lh	a0,38(sp)
    8c0c:	87a5002e 	lh	a1,46(sp)
    8c10:	00003025 	move	a2,zero
    8c14:	00003825 	move	a3,zero
    8c18:	0c000000 	jal	0 <ActorShape_Init>
    8c1c:	afa00010 	sw	zero,16(sp)
    8c20:	87a40026 	lh	a0,38(sp)
    8c24:	0c000000 	jal	0 <ActorShape_Init>
    8c28:	87a50032 	lh	a1,50(sp)
    8c2c:	8fbf001c 	lw	ra,28(sp)
    8c30:	27bd0028 	addiu	sp,sp,40
    8c34:	03e00008 	jr	ra
    8c38:	00000000 	nop

00008c3c <func_80033E1C>:
    8c3c:	27bdffd8 	addiu	sp,sp,-40
    8c40:	afbf001c 	sw	ra,28(sp)
    8c44:	afa40028 	sw	a0,40(sp)
    8c48:	afa5002c 	sw	a1,44(sp)
    8c4c:	afa60030 	sw	a2,48(sp)
    8c50:	afa70034 	sw	a3,52(sp)
    8c54:	24050003 	li	a1,3
    8c58:	0c000000 	jal	0 <ActorShape_Init>
    8c5c:	248401e0 	addiu	a0,a0,480
    8c60:	00022400 	sll	a0,v0,0x10
    8c64:	a7a20026 	sh	v0,38(sp)
    8c68:	00042403 	sra	a0,a0,0x10
    8c6c:	0c000000 	jal	0 <ActorShape_Init>
    8c70:	87a50036 	lh	a1,54(sp)
    8c74:	87a40026 	lh	a0,38(sp)
    8c78:	87a5002e 	lh	a1,46(sp)
    8c7c:	00003025 	move	a2,zero
    8c80:	00003825 	move	a3,zero
    8c84:	0c000000 	jal	0 <ActorShape_Init>
    8c88:	afa00010 	sw	zero,16(sp)
    8c8c:	87a40026 	lh	a0,38(sp)
    8c90:	0c000000 	jal	0 <ActorShape_Init>
    8c94:	87a50032 	lh	a1,50(sp)
    8c98:	8fbf001c 	lw	ra,28(sp)
    8c9c:	27bd0028 	addiu	sp,sp,40
    8ca0:	03e00008 	jr	ra
    8ca4:	00000000 	nop

00008ca8 <func_80033E88>:
    8ca8:	27bdffe8 	addiu	sp,sp,-24
    8cac:	afa60020 	sw	a2,32(sp)
    8cb0:	87ae0022 	lh	t6,34(sp)
    8cb4:	afbf0014 	sw	ra,20(sp)
    8cb8:	afa5001c 	sw	a1,28(sp)
    8cbc:	29c10005 	slti	at,t6,5
    8cc0:	14200008 	bnez	at,8ce4 <func_80033E88+0x3c>
    8cc4:	afa70024 	sw	a3,36(sp)
    8cc8:	c48c008c 	lwc1	$f12,140(a0)
    8ccc:	240500ff 	li	a1,255
    8cd0:	24060014 	li	a2,20
    8cd4:	0c000000 	jal	0 <ActorShape_Init>
    8cd8:	24070096 	li	a3,150
    8cdc:	10000007 	b	8cfc <func_80033E88+0x54>
    8ce0:	8fa4001c 	lw	a0,28(sp)
    8ce4:	c48c008c 	lwc1	$f12,140(a0)
    8ce8:	240500b4 	li	a1,180
    8cec:	24060014 	li	a2,20
    8cf0:	0c000000 	jal	0 <ActorShape_Init>
    8cf4:	24070064 	li	a3,100
    8cf8:	8fa4001c 	lw	a0,28(sp)
    8cfc:	87a50022 	lh	a1,34(sp)
    8d00:	0c000000 	jal	0 <ActorShape_Init>
    8d04:	87a60026 	lh	a2,38(sp)
    8d08:	8fbf0014 	lw	ra,20(sp)
    8d0c:	27bd0018 	addiu	sp,sp,24
    8d10:	03e00008 	jr	ra
    8d14:	00000000 	nop

00008d18 <Math_Rand_ZeroFloat>:
    8d18:	27bdffe8 	addiu	sp,sp,-24
    8d1c:	afbf0014 	sw	ra,20(sp)
    8d20:	0c000000 	jal	0 <ActorShape_Init>
    8d24:	e7ac0018 	swc1	$f12,24(sp)
    8d28:	c7a40018 	lwc1	$f4,24(sp)
    8d2c:	8fbf0014 	lw	ra,20(sp)
    8d30:	27bd0018 	addiu	sp,sp,24
    8d34:	46040002 	mul.s	$f0,$f0,$f4
    8d38:	03e00008 	jr	ra
    8d3c:	00000000 	nop

00008d40 <Math_Rand_CenteredFloat>:
    8d40:	27bdffe8 	addiu	sp,sp,-24
    8d44:	afbf0014 	sw	ra,20(sp)
    8d48:	0c000000 	jal	0 <ActorShape_Init>
    8d4c:	e7ac0018 	swc1	$f12,24(sp)
    8d50:	3c013f00 	lui	at,0x3f00
    8d54:	44812000 	mtc1	at,$f4
    8d58:	c7a80018 	lwc1	$f8,24(sp)
    8d5c:	8fbf0014 	lw	ra,20(sp)
    8d60:	46040181 	sub.s	$f6,$f0,$f4
    8d64:	27bd0018 	addiu	sp,sp,24
    8d68:	46083002 	mul.s	$f0,$f6,$f8
    8d6c:	03e00008 	jr	ra
    8d70:	00000000 	nop

00008d74 <func_80033F54>:
    8d74:	27bdff08 	addiu	sp,sp,-248
    8d78:	000670c0 	sll	t6,a2,0x3
    8d7c:	afbf006c 	sw	ra,108(sp)
    8d80:	afbe0068 	sw	s8,104(sp)
    8d84:	afb70064 	sw	s7,100(sp)
    8d88:	afb60060 	sw	s6,96(sp)
    8d8c:	afb5005c 	sw	s5,92(sp)
    8d90:	afb40058 	sw	s4,88(sp)
    8d94:	afb30054 	sw	s3,84(sp)
    8d98:	afb20050 	sw	s2,80(sp)
    8d9c:	afb1004c 	sw	s1,76(sp)
    8da0:	afb00048 	sw	s0,72(sp)
    8da4:	f7be0040 	sdc1	$f30,64(sp)
    8da8:	f7bc0038 	sdc1	$f28,56(sp)
    8dac:	f7ba0030 	sdc1	$f26,48(sp)
    8db0:	f7b80028 	sdc1	$f24,40(sp)
    8db4:	f7b60020 	sdc1	$f22,32(sp)
    8db8:	f7b40018 	sdc1	$f20,24(sp)
    8dbc:	afa400f8 	sw	a0,248(sp)
    8dc0:	afa500fc 	sw	a1,252(sp)
    8dc4:	01c67023 	subu	t6,t6,a2
    8dc8:	3c0f0000 	lui	t7,0x0
    8dcc:	8c850000 	lw	a1,0(a0)
    8dd0:	25ef0000 	addiu	t7,t7,0
    8dd4:	000e7080 	sll	t6,t6,0x2
    8dd8:	01cf9021 	addu	s2,t6,t7
    8ddc:	3c060000 	lui	a2,0x0
    8de0:	c6540010 	lwc1	$f20,16(s2)
    8de4:	24c60944 	addiu	a2,a2,2372
    8de8:	27a4008c 	addiu	a0,sp,140
    8dec:	24072049 	li	a3,8265
    8df0:	0c000000 	jal	0 <ActorShape_Init>
    8df4:	00a09825 	move	s3,a1
    8df8:	4480f000 	mtc1	zero,$f30
    8dfc:	c64e0008 	lwc1	$f14,8(s2)
    8e00:	3c0643fa 	lui	a2,0x43fa
    8e04:	24070001 	li	a3,1
    8e08:	0c000000 	jal	0 <ActorShape_Init>
    8e0c:	4600f306 	mov.s	$f12,$f30
    8e10:	27b600b0 	addiu	s6,sp,176
    8e14:	0c000000 	jal	0 <ActorShape_Init>
    8e18:	02c02025 	move	a0,s6
    8e1c:	c6440000 	lwc1	$f4,0(s2)
    8e20:	0c000000 	jal	0 <ActorShape_Init>
    8e24:	46142301 	sub.s	$f12,$f4,$f20
    8e28:	8fb900fc 	lw	t9,252(sp)
    8e2c:	2408000a 	li	t0,10
    8e30:	3c010000 	lui	at,0x0
    8e34:	01198023 	subu	s0,t0,t9
    8e38:	00104823 	negu	t1,s0
    8e3c:	44893000 	mtc1	t1,$f6
    8e40:	c4300c9c 	lwc1	$f16,3228(at)
    8e44:	c6440004 	lwc1	$f4,4(s2)
    8e48:	46803220 	cvt.s.w	$f8,$f6
    8e4c:	c6460000 	lwc1	$f6,0(s2)
    8e50:	46143301 	sub.s	$f12,$f6,$f20
    8e54:	46080282 	mul.s	$f10,$f0,$f8
    8e58:	00000000 	nop
    8e5c:	46105482 	mul.s	$f18,$f10,$f16
    8e60:	00000000 	nop
    8e64:	46049582 	mul.s	$f22,$f18,$f4
    8e68:	0c000000 	jal	0 <ActorShape_Init>
    8e6c:	00000000 	nop
    8e70:	44904000 	mtc1	s0,$f8
    8e74:	3c010000 	lui	at,0x0
    8e78:	c4320ca0 	lwc1	$f18,3232(at)
    8e7c:	468042a0 	cvt.s.w	$f10,$f8
    8e80:	c6460004 	lwc1	$f6,4(s2)
    8e84:	3c010000 	lui	at,0x0
    8e88:	c43c0ca4 	lwc1	$f28,3236(at)
    8e8c:	3c013f80 	lui	at,0x3f80
    8e90:	3c17da38 	lui	s7,0xda38
    8e94:	460a0402 	mul.s	$f16,$f0,$f10
    8e98:	3c140000 	lui	s4,0x0
    8e9c:	4481d000 	mtc1	at,$f26
    8ea0:	26940954 	addiu	s4,s4,2388
    8ea4:	36f70003 	ori	s7,s7,0x3
    8ea8:	00008825 	move	s1,zero
    8eac:	3c1ede00 	lui	s8,0xde00
    8eb0:	46128102 	mul.s	$f4,$f16,$f18
    8eb4:	24150004 	li	s5,4
    8eb8:	46062602 	mul.s	$f24,$f4,$f6
    8ebc:	00000000 	nop
    8ec0:	0c000000 	jal	0 <ActorShape_Init>
    8ec4:	02c02025 	move	a0,s6
    8ec8:	4600a306 	mov.s	$f12,$f20
    8ecc:	0c000000 	jal	0 <ActorShape_Init>
    8ed0:	24050001 	li	a1,1
    8ed4:	4406f000 	mfc1	a2,$f30
    8ed8:	4600b306 	mov.s	$f12,$f22
    8edc:	4600c386 	mov.s	$f14,$f24
    8ee0:	0c000000 	jal	0 <ActorShape_Init>
    8ee4:	24070001 	li	a3,1
    8ee8:	c64c000c 	lwc1	$f12,12(s2)
    8eec:	24070001 	li	a3,1
    8ef0:	460cd032 	c.eq.s	$f26,$f12
    8ef4:	00000000 	nop
    8ef8:	45030005 	bc1tl	8f10 <func_80033F54+0x19c>
    8efc:	8e6202c0 	lw	v0,704(s3)
    8f00:	44066000 	mfc1	a2,$f12
    8f04:	0c000000 	jal	0 <ActorShape_Init>
    8f08:	46006386 	mov.s	$f14,$f12
    8f0c:	8e6202c0 	lw	v0,704(s3)
    8f10:	02802825 	move	a1,s4
    8f14:	2406206b 	li	a2,8299
    8f18:	244a0008 	addiu	t2,v0,8
    8f1c:	ae6a02c0 	sw	t2,704(s3)
    8f20:	ac570000 	sw	s7,0(v0)
    8f24:	8fab00f8 	lw	t3,248(sp)
    8f28:	00408025 	move	s0,v0
    8f2c:	0c000000 	jal	0 <ActorShape_Init>
    8f30:	8d640000 	lw	a0,0(t3)
    8f34:	ae020004 	sw	v0,4(s0)
    8f38:	8e6202c0 	lw	v0,704(s3)
    8f3c:	244c0008 	addiu	t4,v0,8
    8f40:	ae6c02c0 	sw	t4,704(s3)
    8f44:	ac5e0000 	sw	s8,0(v0)
    8f48:	8e4d0014 	lw	t5,20(s2)
    8f4c:	00401825 	move	v1,v0
    8f50:	ac4d0004 	sw	t5,4(v0)
    8f54:	06210004 	bgez	s1,8f68 <func_80033F54+0x1f4>
    8f58:	322e0001 	andi	t6,s1,0x1
    8f5c:	11c00002 	beqz	t6,8f68 <func_80033F54+0x1f4>
    8f60:	00000000 	nop
    8f64:	25cefffe 	addiu	t6,t6,-2
    8f68:	11c00004 	beqz	t6,8f7c <func_80033F54+0x208>
    8f6c:	26310001 	addiu	s1,s1,1
    8f70:	c6400000 	lwc1	$f0,0(s2)
    8f74:	10000004 	b	8f88 <func_80033F54+0x214>
    8f78:	46000080 	add.s	$f2,$f0,$f0
    8f7c:	c6400000 	lwc1	$f0,0(s2)
    8f80:	46000200 	add.s	$f8,$f0,$f0
    8f84:	4608e081 	sub.s	$f2,$f28,$f8
    8f88:	1635ffcd 	bne	s1,s5,8ec0 <func_80033F54+0x14c>
    8f8c:	4602a500 	add.s	$f20,$f20,$f2
    8f90:	0c000000 	jal	0 <ActorShape_Init>
    8f94:	02c02025 	move	a0,s6
    8f98:	8faf00fc 	lw	t7,252(sp)
    8f9c:	3c010000 	lui	at,0x0
    8fa0:	c4320ca8 	lwc1	$f18,3240(at)
    8fa4:	448f5000 	mtc1	t7,$f10
    8fa8:	24070001 	li	a3,1
    8fac:	46805420 	cvt.s.w	$f16,$f10
    8fb0:	46128302 	mul.s	$f12,$f16,$f18
    8fb4:	44066000 	mfc1	a2,$f12
    8fb8:	0c000000 	jal	0 <ActorShape_Init>
    8fbc:	46006386 	mov.s	$f14,$f12
    8fc0:	8e6202c0 	lw	v0,704(s3)
    8fc4:	3c050000 	lui	a1,0x0
    8fc8:	24a50964 	addiu	a1,a1,2404
    8fcc:	24580008 	addiu	t8,v0,8
    8fd0:	ae7802c0 	sw	t8,704(s3)
    8fd4:	ac570000 	sw	s7,0(v0)
    8fd8:	8fa800f8 	lw	t0,248(sp)
    8fdc:	2406207a 	li	a2,8314
    8fe0:	00408025 	move	s0,v0
    8fe4:	0c000000 	jal	0 <ActorShape_Init>
    8fe8:	8d040000 	lw	a0,0(t0)
    8fec:	ae020004 	sw	v0,4(s0)
    8ff0:	8e6202c0 	lw	v0,704(s3)
    8ff4:	3c060000 	lui	a2,0x0
    8ff8:	24c60974 	addiu	a2,a2,2420
    8ffc:	24590008 	addiu	t9,v0,8
    9000:	ae7902c0 	sw	t9,704(s3)
    9004:	ac5e0000 	sw	s8,0(v0)
    9008:	8e490018 	lw	t1,24(s2)
    900c:	27a4008c 	addiu	a0,sp,140
    9010:	2407207f 	li	a3,8319
    9014:	ac490004 	sw	t1,4(v0)
    9018:	8faa00f8 	lw	t2,248(sp)
    901c:	0c000000 	jal	0 <ActorShape_Init>
    9020:	8d450000 	lw	a1,0(t2)
    9024:	8fbf006c 	lw	ra,108(sp)
    9028:	d7b40018 	ldc1	$f20,24(sp)
    902c:	d7b60020 	ldc1	$f22,32(sp)
    9030:	d7b80028 	ldc1	$f24,40(sp)
    9034:	d7ba0030 	ldc1	$f26,48(sp)
    9038:	d7bc0038 	ldc1	$f28,56(sp)
    903c:	d7be0040 	ldc1	$f30,64(sp)
    9040:	8fb00048 	lw	s0,72(sp)
    9044:	8fb1004c 	lw	s1,76(sp)
    9048:	8fb20050 	lw	s2,80(sp)
    904c:	8fb30054 	lw	s3,84(sp)
    9050:	8fb40058 	lw	s4,88(sp)
    9054:	8fb5005c 	lw	s5,92(sp)
    9058:	8fb60060 	lw	s6,96(sp)
    905c:	8fb70064 	lw	s7,100(sp)
    9060:	8fbe0068 	lw	s8,104(sp)
    9064:	03e00008 	jr	ra
    9068:	27bd00f8 	addiu	sp,sp,248

0000906c <func_8003424C>:
    906c:	27bdffe8 	addiu	sp,sp,-24
    9070:	afbf0014 	sw	ra,20(sp)
    9074:	0c000000 	jal	0 <ActorShape_Init>
    9078:	00000000 	nop
    907c:	8fbf0014 	lw	ra,20(sp)
    9080:	27bd0018 	addiu	sp,sp,24
    9084:	03e00008 	jr	ra
    9088:	00000000 	nop

0000908c <func_8003426C>:
    908c:	27bdffe8 	addiu	sp,sp,-24
    9090:	afa5001c 	sw	a1,28(sp)
    9094:	87ae001e 	lh	t6,30(sp)
    9098:	afa60020 	sw	a2,32(sp)
    909c:	00063400 	sll	a2,a2,0x10
    90a0:	34018000 	li	at,0x8000
    90a4:	00063403 	sra	a2,a2,0x10
    90a8:	afbf0014 	sw	ra,20(sp)
    90ac:	15c10009 	bne	t6,at,90d4 <func_8003426C+0x48>
    90b0:	afa70024 	sw	a3,36(sp)
    90b4:	30cf8000 	andi	t7,a2,0x8000
    90b8:	15e00006 	bnez	t7,90d4 <func_8003426C+0x48>
    90bc:	24053836 	li	a1,14390
    90c0:	afa40018 	sw	a0,24(sp)
    90c4:	0c000000 	jal	0 <ActorShape_Init>
    90c8:	a7a60022 	sh	a2,34(sp)
    90cc:	8fa40018 	lw	a0,24(sp)
    90d0:	87a60022 	lh	a2,34(sp)
    90d4:	87b8001e 	lh	t8,30(sp)
    90d8:	87b90026 	lh	t9,38(sp)
    90dc:	87a2002a 	lh	v0,42(sp)
    90e0:	30c900f8 	andi	t1,a2,0xf8
    90e4:	00095140 	sll	t2,t1,0x5
    90e8:	03194025 	or	t0,t8,t9
    90ec:	010a5825 	or	t3,t0,t2
    90f0:	01626025 	or	t4,t3,v0
    90f4:	a48c0112 	sh	t4,274(a0)
    90f8:	a0820114 	sb	v0,276(a0)
    90fc:	8fbf0014 	lw	ra,20(sp)
    9100:	27bd0018 	addiu	sp,sp,24
    9104:	03e00008 	jr	ra
    9108:	00000000 	nop

0000910c <func_800342EC>:
    910c:	27bdffd8 	addiu	sp,sp,-40
    9110:	3c010001 	lui	at,0x1
    9114:	afbf0014 	sw	ra,20(sp)
    9118:	afa5002c 	sw	a1,44(sp)
    911c:	00a11021 	addu	v0,a1,at
    9120:	804f0a4e 	lb	t7,2638(v0)
    9124:	00a07025 	move	t6,a1
    9128:	24a500e0 	addiu	a1,a1,224
    912c:	448f2000 	mtc1	t7,$f4
    9130:	27a6001c 	addiu	a2,sp,28
    9134:	468021a0 	cvt.s.w	$f6,$f4
    9138:	e7a6001c 	swc1	$f6,28(sp)
    913c:	80580a4f 	lb	t8,2639(v0)
    9140:	44984000 	mtc1	t8,$f8
    9144:	00000000 	nop
    9148:	468042a0 	cvt.s.w	$f10,$f8
    914c:	e7aa0020 	swc1	$f10,32(sp)
    9150:	80590a50 	lb	t9,2640(v0)
    9154:	44998000 	mtc1	t9,$f16
    9158:	00000000 	nop
    915c:	468084a0 	cvt.s.w	$f18,$f16
    9160:	e7b20024 	swc1	$f18,36(sp)
    9164:	0c000000 	jal	0 <ActorShape_Init>
    9168:	8dc70000 	lw	a3,0(t6)
    916c:	8fbf0014 	lw	ra,20(sp)
    9170:	27bd0028 	addiu	sp,sp,40
    9174:	03e00008 	jr	ra
    9178:	00000000 	nop

0000917c <func_8003435C>:
    917c:	27bdffd8 	addiu	sp,sp,-40
    9180:	3c010001 	lui	at,0x1
    9184:	afbf0014 	sw	ra,20(sp)
    9188:	afa5002c 	sw	a1,44(sp)
    918c:	00a11021 	addu	v0,a1,at
    9190:	804f0a4e 	lb	t7,2638(v0)
    9194:	00a07025 	move	t6,a1
    9198:	24a500e0 	addiu	a1,a1,224
    919c:	448f2000 	mtc1	t7,$f4
    91a0:	27a6001c 	addiu	a2,sp,28
    91a4:	468021a0 	cvt.s.w	$f6,$f4
    91a8:	e7a6001c 	swc1	$f6,28(sp)
    91ac:	80580a4f 	lb	t8,2639(v0)
    91b0:	44984000 	mtc1	t8,$f8
    91b4:	00000000 	nop
    91b8:	468042a0 	cvt.s.w	$f10,$f8
    91bc:	e7aa0020 	swc1	$f10,32(sp)
    91c0:	80590a50 	lb	t9,2640(v0)
    91c4:	44998000 	mtc1	t9,$f16
    91c8:	00000000 	nop
    91cc:	468084a0 	cvt.s.w	$f18,$f16
    91d0:	e7b20024 	swc1	$f18,36(sp)
    91d4:	0c000000 	jal	0 <ActorShape_Init>
    91d8:	8dc70000 	lw	a3,0(t6)
    91dc:	8fbf0014 	lw	ra,20(sp)
    91e0:	27bd0028 	addiu	sp,sp,40
    91e4:	03e00008 	jr	ra
    91e8:	00000000 	nop

000091ec <func_800343CC>:
    91ec:	27bdffd8 	addiu	sp,sp,-40
    91f0:	afb00018 	sw	s0,24(sp)
    91f4:	afa40028 	sw	a0,40(sp)
    91f8:	00a08025 	move	s0,a1
    91fc:	afbf001c 	sw	ra,28(sp)
    9200:	00a02025 	move	a0,a1
    9204:	afa60030 	sw	a2,48(sp)
    9208:	afa70034 	sw	a3,52(sp)
    920c:	0c000000 	jal	0 <ActorShape_Init>
    9210:	8fa50028 	lw	a1,40(sp)
    9214:	10400005 	beqz	v0,922c <func_800343CC+0x40>
    9218:	8fa30030 	lw	v1,48(sp)
    921c:	240e0001 	li	t6,1
    9220:	a46e0000 	sh	t6,0(v1)
    9224:	10000028 	b	92c8 <func_800343CC+0xdc>
    9228:	24020001 	li	v0,1
    922c:	846f0000 	lh	t7,0(v1)
    9230:	8fa40028 	lw	a0,40(sp)
    9234:	02002825 	move	a1,s0
    9238:	11e0000a 	beqz	t7,9264 <func_800343CC+0x78>
    923c:	27a60026 	addiu	a2,sp,38
    9240:	8fb9003c 	lw	t9,60(sp)
    9244:	8fa40028 	lw	a0,40(sp)
    9248:	02002825 	move	a1,s0
    924c:	0320f809 	jalr	t9
    9250:	00000000 	nop
    9254:	8fa30030 	lw	v1,48(sp)
    9258:	a4620000 	sh	v0,0(v1)
    925c:	1000001a 	b	92c8 <func_800343CC+0xdc>
    9260:	00001025 	move	v0,zero
    9264:	0c000000 	jal	0 <ActorShape_Init>
    9268:	27a70024 	addiu	a3,sp,36
    926c:	87a20026 	lh	v0,38(sp)
    9270:	04400007 	bltz	v0,9290 <func_800343CC+0xa4>
    9274:	28410141 	slti	at,v0,321
    9278:	10200005 	beqz	at,9290 <func_800343CC+0xa4>
    927c:	87a20024 	lh	v0,36(sp)
    9280:	04400003 	bltz	v0,9290 <func_800343CC+0xa4>
    9284:	284100f1 	slti	at,v0,241
    9288:	14200003 	bnez	at,9298 <func_800343CC+0xac>
    928c:	02002025 	move	a0,s0
    9290:	1000000d 	b	92c8 <func_800343CC+0xdc>
    9294:	00001025 	move	v0,zero
    9298:	8fa50028 	lw	a1,40(sp)
    929c:	0c000000 	jal	0 <ActorShape_Init>
    92a0:	8fa60034 	lw	a2,52(sp)
    92a4:	14400003 	bnez	v0,92b4 <func_800343CC+0xc8>
    92a8:	8fb90038 	lw	t9,56(sp)
    92ac:	10000006 	b	92c8 <func_800343CC+0xdc>
    92b0:	00001025 	move	v0,zero
    92b4:	8fa40028 	lw	a0,40(sp)
    92b8:	0320f809 	jalr	t9
    92bc:	02002825 	move	a1,s0
    92c0:	a602010e 	sh	v0,270(s0)
    92c4:	00001025 	move	v0,zero
    92c8:	8fbf001c 	lw	ra,28(sp)
    92cc:	8fb00018 	lw	s0,24(sp)
    92d0:	27bd0028 	addiu	sp,sp,40
    92d4:	03e00008 	jr	ra
    92d8:	00000000 	nop

000092dc <func_800344BC>:
    92dc:	27bdffb8 	addiu	sp,sp,-72
    92e0:	afbf001c 	sw	ra,28(sp)
    92e4:	afa40048 	sw	a0,72(sp)
    92e8:	afa5004c 	sw	a1,76(sp)
    92ec:	afa60050 	sw	a2,80(sp)
    92f0:	afa70054 	sw	a3,84(sp)
    92f4:	c4840024 	lwc1	$f4,36(a0)
    92f8:	24a50018 	addiu	a1,a1,24
    92fc:	e7a40030 	swc1	$f4,48(sp)
    9300:	c4a8fffc 	lwc1	$f8,-4(a1)
    9304:	c4860028 	lwc1	$f6,40(a0)
    9308:	46083280 	add.s	$f10,$f6,$f8
    930c:	e7aa0034 	swc1	$f10,52(sp)
    9310:	c490002c 	lwc1	$f16,44(a0)
    9314:	afa50024 	sw	a1,36(sp)
    9318:	27a40030 	addiu	a0,sp,48
    931c:	0c000000 	jal	0 <ActorShape_Init>
    9320:	e7b00038 	swc1	$f16,56(sp)
    9324:	a7a20046 	sh	v0,70(sp)
    9328:	27a40030 	addiu	a0,sp,48
    932c:	0c000000 	jal	0 <ActorShape_Init>
    9330:	8fa50024 	lw	a1,36(sp)
    9334:	8fa40048 	lw	a0,72(sp)
    9338:	a7a20044 	sh	v0,68(sp)
    933c:	8fa50024 	lw	a1,36(sp)
    9340:	0c000000 	jal	0 <ActorShape_Init>
    9344:	24840024 	addiu	a0,a0,36
    9348:	8fb80048 	lw	t8,72(sp)
    934c:	87a50052 	lh	a1,82(sp)
    9350:	8fa8004c 	lw	t0,76(sp)
    9354:	871900b6 	lh	t9,182(t8)
    9358:	00052023 	negu	a0,a1
    935c:	24060006 	li	a2,6
    9360:	00591823 	subu	v1,v0,t9
    9364:	00031c00 	sll	v1,v1,0x10
    9368:	00031c03 	sra	v1,v1,0x10
    936c:	0064082a 	slt	at,v1,a0
    9370:	10200004 	beqz	at,9384 <func_800344BC+0xa8>
    9374:	240707d0 	li	a3,2000
    9378:	00042c00 	sll	a1,a0,0x10
    937c:	10000008 	b	93a0 <func_800344BC+0xc4>
    9380:	00052c03 	sra	a1,a1,0x10
    9384:	00a3082a 	slt	at,a1,v1
    9388:	10200003 	beqz	at,9398 <func_800344BC+0xbc>
    938c:	00601025 	move	v0,v1
    9390:	10000001 	b	9398 <func_800344BC+0xbc>
    9394:	00a01025 	move	v0,a1
    9398:	00022c00 	sll	a1,v0,0x10
    939c:	00052c03 	sra	a1,a1,0x10
    93a0:	240a0001 	li	t2,1
    93a4:	afaa0010 	sw	t2,16(sp)
    93a8:	2504000a 	addiu	a0,t0,10
    93ac:	0c000000 	jal	0 <ActorShape_Init>
    93b0:	a7a30040 	sh	v1,64(sp)
    93b4:	87a30040 	lh	v1,64(sp)
    93b8:	8fa8004c 	lw	t0,76(sp)
    93bc:	34018000 	li	at,0x8000
    93c0:	04600003 	bltz	v1,93d0 <func_800344BC+0xf4>
    93c4:	24060006 	li	a2,6
    93c8:	10000002 	b	93d4 <func_800344BC+0xf8>
    93cc:	00601025 	move	v0,v1
    93d0:	00031023 	negu	v0,v1
    93d4:	0041082a 	slt	at,v0,at
    93d8:	14200003 	bnez	at,93e8 <func_800344BC+0x10c>
    93dc:	240707d0 	li	a3,2000
    93e0:	10000007 	b	9400 <func_800344BC+0x124>
    93e4:	00002825 	move	a1,zero
    93e8:	04600003 	bltz	v1,93f8 <func_800344BC+0x11c>
    93ec:	00031023 	negu	v0,v1
    93f0:	10000001 	b	93f8 <func_800344BC+0x11c>
    93f4:	00601025 	move	v0,v1
    93f8:	00022c00 	sll	a1,v0,0x10
    93fc:	00052c03 	sra	a1,a1,0x10
    9400:	8504000a 	lh	a0,10(t0)
    9404:	00051023 	negu	v0,a1
    9408:	240c0001 	li	t4,1
    940c:	0082082a 	slt	at,a0,v0
    9410:	50200004 	beqzl	at,9424 <func_800344BC+0x148>
    9414:	00a4082a 	slt	at,a1,a0
    9418:	10000007 	b	9438 <func_800344BC+0x15c>
    941c:	a502000a 	sh	v0,10(t0)
    9420:	00a4082a 	slt	at,a1,a0
    9424:	10200003 	beqz	at,9434 <func_800344BC+0x158>
    9428:	00801025 	move	v0,a0
    942c:	10000001 	b	9434 <func_800344BC+0x158>
    9430:	00a01025 	move	v0,a1
    9434:	a502000a 	sh	v0,10(t0)
    9438:	850b000a 	lh	t3,10(t0)
    943c:	87a4005e 	lh	a0,94(sp)
    9440:	006b1823 	subu	v1,v1,t3
    9444:	00031c00 	sll	v1,v1,0x10
    9448:	00031c03 	sra	v1,v1,0x10
    944c:	00041023 	negu	v0,a0
    9450:	0062082a 	slt	at,v1,v0
    9454:	10200003 	beqz	at,9464 <func_800344BC+0x188>
    9458:	00022c00 	sll	a1,v0,0x10
    945c:	10000008 	b	9480 <func_800344BC+0x1a4>
    9460:	00052c03 	sra	a1,a1,0x10
    9464:	0083082a 	slt	at,a0,v1
    9468:	10200003 	beqz	at,9478 <func_800344BC+0x19c>
    946c:	00601025 	move	v0,v1
    9470:	10000001 	b	9478 <func_800344BC+0x19c>
    9474:	00801025 	move	v0,a0
    9478:	00022c00 	sll	a1,v0,0x10
    947c:	00052c03 	sra	a1,a1,0x10
    9480:	25040010 	addiu	a0,t0,16
    9484:	afac0010 	sw	t4,16(sp)
    9488:	0c000000 	jal	0 <ActorShape_Init>
    948c:	a7a30040 	sh	v1,64(sp)
    9490:	87a30040 	lh	v1,64(sp)
    9494:	8fa8004c 	lw	t0,76(sp)
    9498:	34018000 	li	at,0x8000
    949c:	04600003 	bltz	v1,94ac <func_800344BC+0x1d0>
    94a0:	00031023 	negu	v0,v1
    94a4:	10000001 	b	94ac <func_800344BC+0x1d0>
    94a8:	00601025 	move	v0,v1
    94ac:	0041082a 	slt	at,v0,at
    94b0:	14200003 	bnez	at,94c0 <func_800344BC+0x1e4>
    94b4:	00000000 	nop
    94b8:	10000007 	b	94d8 <func_800344BC+0x1fc>
    94bc:	00002825 	move	a1,zero
    94c0:	04600003 	bltz	v1,94d0 <func_800344BC+0x1f4>
    94c4:	00031023 	negu	v0,v1
    94c8:	10000001 	b	94d0 <func_800344BC+0x1f4>
    94cc:	00601025 	move	v0,v1
    94d0:	00022c00 	sll	a1,v0,0x10
    94d4:	00052c03 	sra	a1,a1,0x10
    94d8:	85030010 	lh	v1,16(t0)
    94dc:	00051023 	negu	v0,a1
    94e0:	24060006 	li	a2,6
    94e4:	0062082a 	slt	at,v1,v0
    94e8:	10200003 	beqz	at,94f8 <func_800344BC+0x21c>
    94ec:	240707d0 	li	a3,2000
    94f0:	10000007 	b	9510 <func_800344BC+0x234>
    94f4:	a5020010 	sh	v0,16(t0)
    94f8:	00a3082a 	slt	at,a1,v1
    94fc:	10200003 	beqz	at,950c <func_800344BC+0x230>
    9500:	00601025 	move	v0,v1
    9504:	10000001 	b	950c <func_800344BC+0x230>
    9508:	00a01025 	move	v0,a1
    950c:	a5020010 	sh	v0,16(t0)
    9510:	93ad006b 	lbu	t5,107(sp)
    9514:	8fa40048 	lw	a0,72(sp)
    9518:	87a50044 	lh	a1,68(sp)
    951c:	11a00005 	beqz	t5,9534 <func_800344BC+0x258>
    9520:	248400b6 	addiu	a0,a0,182
    9524:	240e0001 	li	t6,1
    9528:	0c000000 	jal	0 <ActorShape_Init>
    952c:	afae0010 	sw	t6,16(sp)
    9530:	8fa8004c 	lw	t0,76(sp)
    9534:	87a2005a 	lh	v0,90(sp)
    9538:	87a90046 	lh	t1,70(sp)
    953c:	25040008 	addiu	a0,t0,8
    9540:	24060006 	li	a2,6
    9544:	0122082a 	slt	at,t1,v0
    9548:	10200004 	beqz	at,955c <func_800344BC+0x280>
    954c:	240707d0 	li	a3,2000
    9550:	00022c00 	sll	a1,v0,0x10
    9554:	1000000a 	b	9580 <func_800344BC+0x2a4>
    9558:	00052c03 	sra	a1,a1,0x10
    955c:	87a30056 	lh	v1,86(sp)
    9560:	01201025 	move	v0,t1
    9564:	0069082a 	slt	at,v1,t1
    9568:	10200003 	beqz	at,9578 <func_800344BC+0x29c>
    956c:	00000000 	nop
    9570:	10000001 	b	9578 <func_800344BC+0x29c>
    9574:	00601025 	move	v0,v1
    9578:	00022c00 	sll	a1,v0,0x10
    957c:	00052c03 	sra	a1,a1,0x10
    9580:	240f0001 	li	t7,1
    9584:	0c000000 	jal	0 <ActorShape_Init>
    9588:	afaf0010 	sw	t7,16(sp)
    958c:	8fa8004c 	lw	t0,76(sp)
    9590:	87b80046 	lh	t8,70(sp)
    9594:	87a40066 	lh	a0,102(sp)
    9598:	85190008 	lh	t9,8(t0)
    959c:	24060006 	li	a2,6
    95a0:	240707d0 	li	a3,2000
    95a4:	03191823 	subu	v1,t8,t9
    95a8:	00031c00 	sll	v1,v1,0x10
    95ac:	00031c03 	sra	v1,v1,0x10
    95b0:	0064082a 	slt	at,v1,a0
    95b4:	10200004 	beqz	at,95c8 <func_800344BC+0x2ec>
    95b8:	240a0001 	li	t2,1
    95bc:	00042c00 	sll	a1,a0,0x10
    95c0:	1000000a 	b	95ec <func_800344BC+0x310>
    95c4:	00052c03 	sra	a1,a1,0x10
    95c8:	87a40062 	lh	a0,98(sp)
    95cc:	00601025 	move	v0,v1
    95d0:	0083082a 	slt	at,a0,v1
    95d4:	10200003 	beqz	at,95e4 <func_800344BC+0x308>
    95d8:	00000000 	nop
    95dc:	10000001 	b	95e4 <func_800344BC+0x308>
    95e0:	00801025 	move	v0,a0
    95e4:	00022c00 	sll	a1,v0,0x10
    95e8:	00052c03 	sra	a1,a1,0x10
    95ec:	2504000e 	addiu	a0,t0,14
    95f0:	0c000000 	jal	0 <ActorShape_Init>
    95f4:	afaa0010 	sw	t2,16(sp)
    95f8:	8fbf001c 	lw	ra,28(sp)
    95fc:	27bd0048 	addiu	sp,sp,72
    9600:	03e00008 	jr	ra
    9604:	00000000 	nop

00009608 <func_800347E8>:
    9608:	afa40000 	sw	a0,0(sp)
    960c:	00042400 	sll	a0,a0,0x10
    9610:	00042403 	sra	a0,a0,0x10
    9614:	00047080 	sll	t6,a0,0x2
    9618:	01c47023 	subu	t6,t6,a0
    961c:	000e70c0 	sll	t6,t6,0x3
    9620:	3c020000 	lui	v0,0x0
    9624:	004e1021 	addu	v0,v0,t6
    9628:	03e00008 	jr	ra
    962c:	84420014 	lh	v0,20(v0)

00009630 <func_80034810>:
    9630:	27bdffd0 	addiu	sp,sp,-48
    9634:	87ae0042 	lh	t6,66(sp)
    9638:	afa60038 	sw	a2,56(sp)
    963c:	00a03025 	move	a2,a1
    9640:	afbf0014 	sw	ra,20(sp)
    9644:	afa40030 	sw	a0,48(sp)
    9648:	afa50034 	sw	a1,52(sp)
    964c:	11c00003 	beqz	t6,965c <func_80034810+0x2c>
    9650:	afa7003c 	sw	a3,60(sp)
    9654:	10000073 	b	9824 <func_80034810+0x1f4>
    9658:	01c01025 	move	v0,t6
    965c:	84cf0000 	lh	t7,0(a2)
    9660:	8fa40030 	lw	a0,48(sp)
    9664:	24c50018 	addiu	a1,a2,24
    9668:	11e00003 	beqz	t7,9678 <func_80034810+0x48>
    966c:	24840024 	addiu	a0,a0,36
    9670:	1000006c 	b	9824 <func_80034810+0x1f4>
    9674:	24020004 	li	v0,4
    9678:	afa40020 	sw	a0,32(sp)
    967c:	afa5001c 	sw	a1,28(sp)
    9680:	0c000000 	jal	0 <ActorShape_Init>
    9684:	afa60034 	sw	a2,52(sp)
    9688:	c7a40038 	lwc1	$f4,56(sp)
    968c:	8fa40020 	lw	a0,32(sp)
    9690:	8fa5001c 	lw	a1,28(sp)
    9694:	4600203c 	c.lt.s	$f4,$f0
    9698:	8fa60034 	lw	a2,52(sp)
    969c:	24020001 	li	v0,1
    96a0:	45000004 	bc1f	96b4 <func_80034810+0x84>
    96a4:	00000000 	nop
    96a8:	a4c00004 	sh	zero,4(a2)
    96ac:	1000005d 	b	9824 <func_80034810+0x1f4>
    96b0:	a4c00006 	sh	zero,6(a2)
    96b4:	0c000000 	jal	0 <ActorShape_Init>
    96b8:	afa60034 	sw	a2,52(sp)
    96bc:	8fb80030 	lw	t8,48(sp)
    96c0:	44824000 	mtc1	v0,$f8
    96c4:	00027c00 	sll	t7,v0,0x10
    96c8:	871900b6 	lh	t9,182(t8)
    96cc:	468042a0 	cvt.s.w	$f10,$f8
    96d0:	00026400 	sll	t4,v0,0x10
    96d4:	44993000 	mtc1	t9,$f6
    96d8:	8fa60034 	lw	a2,52(sp)
    96dc:	000c6c03 	sra	t5,t4,0x10
    96e0:	46803020 	cvt.s.w	$f0,$f6
    96e4:	000fc403 	sra	t8,t7,0x10
    96e8:	87a8003e 	lh	t0,62(sp)
    96ec:	24020002 	li	v0,2
    96f0:	46005401 	sub.s	$f16,$f10,$f0
    96f4:	4600848d 	trunc.w.s	$f18,$f16
    96f8:	44099000 	mfc1	t1,$f18
    96fc:	00000000 	nop
    9700:	00095400 	sll	t2,t1,0x10
    9704:	000a5c03 	sra	t3,t2,0x10
    9708:	0562000c 	bltzl	t3,973c <func_80034810+0x10c>
    970c:	44988000 	mtc1	t8,$f16
    9710:	448d2000 	mtc1	t5,$f4
    9714:	00000000 	nop
    9718:	468021a0 	cvt.s.w	$f6,$f4
    971c:	46003201 	sub.s	$f8,$f6,$f0
    9720:	4600428d 	trunc.w.s	$f10,$f8
    9724:	44035000 	mfc1	v1,$f10
    9728:	00000000 	nop
    972c:	00031c00 	sll	v1,v1,0x10
    9730:	1000000d 	b	9768 <func_80034810+0x138>
    9734:	00031c03 	sra	v1,v1,0x10
    9738:	44988000 	mtc1	t8,$f16
    973c:	00000000 	nop
    9740:	468084a0 	cvt.s.w	$f18,$f16
    9744:	46009101 	sub.s	$f4,$f18,$f0
    9748:	4600218d 	trunc.w.s	$f6,$f4
    974c:	44033000 	mfc1	v1,$f6
    9750:	00000000 	nop
    9754:	00031c00 	sll	v1,v1,0x10
    9758:	00031c03 	sra	v1,v1,0x10
    975c:	00031823 	negu	v1,v1
    9760:	00031c00 	sll	v1,v1,0x10
    9764:	00031c03 	sra	v1,v1,0x10
    9768:	0103082a 	slt	at,t0,v1
    976c:	54200005 	bnezl	at,9784 <func_80034810+0x154>
    9770:	84c30004 	lh	v1,4(a2)
    9774:	a4c00004 	sh	zero,4(a2)
    9778:	1000002a 	b	9824 <func_80034810+0x1f4>
    977c:	a4c00006 	sh	zero,6(a2)
    9780:	84c30004 	lh	v1,4(a2)
    9784:	14600003 	bnez	v1,9794 <func_80034810+0x164>
    9788:	2469ffff 	addiu	t1,v1,-1
    978c:	10000003 	b	979c <func_80034810+0x16c>
    9790:	00001025 	move	v0,zero
    9794:	a4c90004 	sh	t1,4(a2)
    9798:	84c20004 	lh	v0,4(a2)
    979c:	50400004 	beqzl	v0,97b0 <func_80034810+0x180>
    97a0:	84c20006 	lh	v0,6(a2)
    97a4:	1000001f 	b	9824 <func_80034810+0x1f4>
    97a8:	84c20002 	lh	v0,2(a2)
    97ac:	84c20006 	lh	v0,6(a2)
    97b0:	24010001 	li	at,1
    97b4:	2404001e 	li	a0,30
    97b8:	10400005 	beqz	v0,97d0 <func_80034810+0x1a0>
    97bc:	2405001e 	li	a1,30
    97c0:	1041000c 	beq	v0,at,97f4 <func_80034810+0x1c4>
    97c4:	24010002 	li	at,2
    97c8:	54410016 	bnel	v0,at,9824 <func_80034810+0x1f4>
    97cc:	24020004 	li	v0,4
    97d0:	0c000000 	jal	0 <ActorShape_Init>
    97d4:	afa60034 	sw	a2,52(sp)
    97d8:	8fa60034 	lw	a2,52(sp)
    97dc:	84ca0006 	lh	t2,6(a2)
    97e0:	a4c20004 	sh	v0,4(a2)
    97e4:	24020001 	li	v0,1
    97e8:	254b0001 	addiu	t3,t2,1
    97ec:	1000000d 	b	9824 <func_80034810+0x1f4>
    97f0:	a4cb0006 	sh	t3,6(a2)
    97f4:	2404000a 	li	a0,10
    97f8:	2405000a 	li	a1,10
    97fc:	0c000000 	jal	0 <ActorShape_Init>
    9800:	afa60034 	sw	a2,52(sp)
    9804:	8fa60034 	lw	a2,52(sp)
    9808:	84cc0006 	lh	t4,6(a2)
    980c:	a4c20004 	sh	v0,4(a2)
    9810:	24020003 	li	v0,3
    9814:	258d0001 	addiu	t5,t4,1
    9818:	10000002 	b	9824 <func_80034810+0x1f4>
    981c:	a4cd0006 	sh	t5,6(a2)
    9820:	24020004 	li	v0,4
    9824:	8fbf0014 	lw	ra,20(sp)
    9828:	27bd0030 	addiu	sp,sp,48
    982c:	03e00008 	jr	ra
    9830:	00000000 	nop

00009834 <func_80034A14>:
    9834:	27bdffb8 	addiu	sp,sp,-72
    9838:	afa60050 	sw	a2,80(sp)
    983c:	87ae0052 	lh	t6,82(sp)
    9840:	3c180000 	lui	t8,0x0
    9844:	afa70054 	sw	a3,84(sp)
    9848:	000e7880 	sll	t7,t6,0x2
    984c:	01ee7823 	subu	t7,t7,t6
    9850:	000f78c0 	sll	t7,t7,0x3
    9854:	27180000 	addiu	t8,t8,0
    9858:	87b90056 	lh	t9,86(sp)
    985c:	01f81821 	addu	v1,t7,t8
    9860:	afbf002c 	sw	ra,44(sp)
    9864:	afa40048 	sw	a0,72(sp)
    9868:	8c660010 	lw	a2,16(v1)
    986c:	84670014 	lh	a3,20(v1)
    9870:	afa30030 	sw	v1,48(sp)
    9874:	afa5004c 	sw	a1,76(sp)
    9878:	0c000000 	jal	0 <ActorShape_Init>
    987c:	afb90010 	sw	t9,16(sp)
    9880:	8fa30030 	lw	v1,48(sp)
    9884:	8fa5004c 	lw	a1,76(sp)
    9888:	27a80038 	addiu	t0,sp,56
    988c:	24010001 	li	at,1
    9890:	a4a20002 	sh	v0,2(a1)
    9894:	886a0000 	lwl	t2,0(v1)
    9898:	986a0003 	lwr	t2,3(v1)
    989c:	ad0a0000 	sw	t2,0(t0)
    98a0:	88690004 	lwl	t1,4(v1)
    98a4:	98690007 	lwr	t1,7(v1)
    98a8:	ad090004 	sw	t1,4(t0)
    98ac:	886a0008 	lwl	t2,8(v1)
    98b0:	986a000b 	lwr	t2,11(v1)
    98b4:	ad0a0008 	sw	t2,8(t0)
    98b8:	946a000c 	lhu	t2,12(v1)
    98bc:	a50a000c 	sh	t2,12(t0)
    98c0:	84a40002 	lh	a0,2(a1)
    98c4:	10810007 	beq	a0,at,98e4 <func_80034A14+0xb0>
    98c8:	24010002 	li	at,2
    98cc:	1081000b 	beq	a0,at,98fc <func_80034A14+0xc8>
    98d0:	24010003 	li	at,3
    98d4:	50810007 	beql	a0,at,98f4 <func_80034A14+0xc0>
    98d8:	a7a0003e 	sh	zero,62(sp)
    98dc:	10000009 	b	9904 <func_80034A14+0xd0>
    98e0:	87ab003a 	lh	t3,58(sp)
    98e4:	a7a00038 	sh	zero,56(sp)
    98e8:	a7a0003c 	sh	zero,60(sp)
    98ec:	a7a0003a 	sh	zero,58(sp)
    98f0:	a7a0003e 	sh	zero,62(sp)
    98f4:	a7a00042 	sh	zero,66(sp)
    98f8:	a7a00040 	sh	zero,64(sp)
    98fc:	a3a00044 	sb	zero,68(sp)
    9900:	87ab003a 	lh	t3,58(sp)
    9904:	87ac003e 	lh	t4,62(sp)
    9908:	87ad0042 	lh	t5,66(sp)
    990c:	87ae0040 	lh	t6,64(sp)
    9910:	93af0044 	lbu	t7,68(sp)
    9914:	8fa40048 	lw	a0,72(sp)
    9918:	87a60038 	lh	a2,56(sp)
    991c:	87a7003c 	lh	a3,60(sp)
    9920:	afab0010 	sw	t3,16(sp)
    9924:	afac0014 	sw	t4,20(sp)
    9928:	afad0018 	sw	t5,24(sp)
    992c:	afae001c 	sw	t6,28(sp)
    9930:	0c000000 	jal	0 <ActorShape_Init>
    9934:	afaf0020 	sw	t7,32(sp)
    9938:	8fbf002c 	lw	ra,44(sp)
    993c:	27bd0048 	addiu	sp,sp,72
    9940:	03e00008 	jr	ra
    9944:	00000000 	nop

00009948 <func_80034B28>:
    9948:	27bdffe8 	addiu	sp,sp,-24
    994c:	afbf0014 	sw	ra,20(sp)
    9950:	0c000000 	jal	0 <ActorShape_Init>
    9954:	24050008 	li	a1,8
    9958:	3c0edf00 	lui	t6,0xdf00
    995c:	ac4e0000 	sw	t6,0(v0)
    9960:	ac400004 	sw	zero,4(v0)
    9964:	8fbf0014 	lw	ra,20(sp)
    9968:	27bd0018 	addiu	sp,sp,24
    996c:	03e00008 	jr	ra
    9970:	00000000 	nop

00009974 <func_80034B54>:
    9974:	27bdffe8 	addiu	sp,sp,-24
    9978:	afbf0014 	sw	ra,20(sp)
    997c:	0c000000 	jal	0 <ActorShape_Init>
    9980:	24050010 	li	a1,16
    9984:	3c0ee200 	lui	t6,0xe200
    9988:	3c0fc810 	lui	t7,0xc810
    998c:	35ef49f8 	ori	t7,t7,0x49f8
    9990:	35ce001c 	ori	t6,t6,0x1c
    9994:	ac4e0000 	sw	t6,0(v0)
    9998:	ac4f0004 	sw	t7,4(v0)
    999c:	24440008 	addiu	a0,v0,8
    99a0:	3c18df00 	lui	t8,0xdf00
    99a4:	ac980000 	sw	t8,0(a0)
    99a8:	ac800004 	sw	zero,4(a0)
    99ac:	8fbf0014 	lw	ra,20(sp)
    99b0:	00402825 	move	a1,v0
    99b4:	00a01025 	move	v0,a1
    99b8:	03e00008 	jr	ra
    99bc:	27bd0018 	addiu	sp,sp,24

000099c0 <func_80034BA0>:
    99c0:	27bdffa8 	addiu	sp,sp,-88
    99c4:	afbf002c 	sw	ra,44(sp)
    99c8:	afb10028 	sw	s1,40(sp)
    99cc:	afb00024 	sw	s0,36(sp)
    99d0:	afa5005c 	sw	a1,92(sp)
    99d4:	afa60060 	sw	a2,96(sp)
    99d8:	afa70064 	sw	a3,100(sp)
    99dc:	8c850000 	lw	a1,0(a0)
    99e0:	00808825 	move	s1,a0
    99e4:	3c060000 	lui	a2,0x0
    99e8:	24c60984 	addiu	a2,a2,2436
    99ec:	27a40044 	addiu	a0,sp,68
    99f0:	2407227f 	li	a3,8831
    99f4:	0c000000 	jal	0 <ActorShape_Init>
    99f8:	00a08025 	move	s0,a1
    99fc:	0c000000 	jal	0 <ActorShape_Init>
    9a00:	8e240000 	lw	a0,0(s1)
    9a04:	8e0202c0 	lw	v0,704(s0)
    9a08:	3c04e700 	lui	a0,0xe700
    9a0c:	3c18fb00 	lui	t8,0xfb00
    9a10:	244e0008 	addiu	t6,v0,8
    9a14:	ae0e02c0 	sw	t6,704(s0)
    9a18:	ac440000 	sw	a0,0(v0)
    9a1c:	ac400004 	sw	zero,4(v0)
    9a20:	8e0202c0 	lw	v0,704(s0)
    9a24:	3c0bdb06 	lui	t3,0xdb06
    9a28:	356b0030 	ori	t3,t3,0x30
    9a2c:	244f0008 	addiu	t7,v0,8
    9a30:	ae0f02c0 	sw	t7,704(s0)
    9a34:	ac580000 	sw	t8,0(v0)
    9a38:	87b9006e 	lh	t9,110(sp)
    9a3c:	332800ff 	andi	t0,t9,0xff
    9a40:	ac480004 	sw	t0,4(v0)
    9a44:	8e0202c0 	lw	v0,704(s0)
    9a48:	24490008 	addiu	t1,v0,8
    9a4c:	ae0902c0 	sw	t1,704(s0)
    9a50:	ac440000 	sw	a0,0(v0)
    9a54:	ac400004 	sw	zero,4(v0)
    9a58:	8e0202c0 	lw	v0,704(s0)
    9a5c:	244a0008 	addiu	t2,v0,8
    9a60:	ae0a02c0 	sw	t2,704(s0)
    9a64:	ac4b0000 	sw	t3,0(v0)
    9a68:	8e240000 	lw	a0,0(s1)
    9a6c:	0c000000 	jal	0 <ActorShape_Init>
    9a70:	afa20034 	sw	v0,52(sp)
    9a74:	8fa30034 	lw	v1,52(sp)
    9a78:	02202025 	move	a0,s1
    9a7c:	ac620004 	sw	v0,4(v1)
    9a80:	8fa2005c 	lw	v0,92(sp)
    9a84:	8fae0068 	lw	t6,104(sp)
    9a88:	8fad0064 	lw	t5,100(sp)
    9a8c:	8fac0060 	lw	t4,96(sp)
    9a90:	8c450004 	lw	a1,4(v0)
    9a94:	8c460020 	lw	a2,32(v0)
    9a98:	90470002 	lbu	a3,2(v0)
    9a9c:	afae0018 	sw	t6,24(sp)
    9aa0:	afad0014 	sw	t5,20(sp)
    9aa4:	afac0010 	sw	t4,16(sp)
    9aa8:	8e0f02c0 	lw	t7,704(s0)
    9aac:	0c000000 	jal	0 <ActorShape_Init>
    9ab0:	afaf001c 	sw	t7,28(sp)
    9ab4:	ae0202c0 	sw	v0,704(s0)
    9ab8:	3c060000 	lui	a2,0x0
    9abc:	24c60994 	addiu	a2,a2,2452
    9ac0:	8e250000 	lw	a1,0(s1)
    9ac4:	27a40044 	addiu	a0,sp,68
    9ac8:	0c000000 	jal	0 <ActorShape_Init>
    9acc:	2407229c 	li	a3,8860
    9ad0:	8fbf002c 	lw	ra,44(sp)
    9ad4:	8fb00024 	lw	s0,36(sp)
    9ad8:	8fb10028 	lw	s1,40(sp)
    9adc:	03e00008 	jr	ra
    9ae0:	27bd0058 	addiu	sp,sp,88

00009ae4 <func_80034CC4>:
    9ae4:	27bdffa8 	addiu	sp,sp,-88
    9ae8:	afbf002c 	sw	ra,44(sp)
    9aec:	afb10028 	sw	s1,40(sp)
    9af0:	afb00024 	sw	s0,36(sp)
    9af4:	afa5005c 	sw	a1,92(sp)
    9af8:	afa60060 	sw	a2,96(sp)
    9afc:	afa70064 	sw	a3,100(sp)
    9b00:	8c850000 	lw	a1,0(a0)
    9b04:	00808825 	move	s1,a0
    9b08:	3c060000 	lui	a2,0x0
    9b0c:	24c609a4 	addiu	a2,a2,2468
    9b10:	27a40044 	addiu	a0,sp,68
    9b14:	240722ac 	li	a3,8876
    9b18:	0c000000 	jal	0 <ActorShape_Init>
    9b1c:	00a08025 	move	s0,a1
    9b20:	0c000000 	jal	0 <ActorShape_Init>
    9b24:	8e240000 	lw	a0,0(s1)
    9b28:	8e0202d0 	lw	v0,720(s0)
    9b2c:	3c0fe700 	lui	t7,0xe700
    9b30:	3c19fb00 	lui	t9,0xfb00
    9b34:	244e0008 	addiu	t6,v0,8
    9b38:	ae0e02d0 	sw	t6,720(s0)
    9b3c:	ac4f0000 	sw	t7,0(v0)
    9b40:	ac400004 	sw	zero,4(v0)
    9b44:	8e0202d0 	lw	v0,720(s0)
    9b48:	3c0bdb06 	lui	t3,0xdb06
    9b4c:	356b0030 	ori	t3,t3,0x30
    9b50:	24580008 	addiu	t8,v0,8
    9b54:	ae1802d0 	sw	t8,720(s0)
    9b58:	ac590000 	sw	t9,0(v0)
    9b5c:	87a8006e 	lh	t0,110(sp)
    9b60:	310900ff 	andi	t1,t0,0xff
    9b64:	ac490004 	sw	t1,4(v0)
    9b68:	8e0202d0 	lw	v0,720(s0)
    9b6c:	244a0008 	addiu	t2,v0,8
    9b70:	ae0a02d0 	sw	t2,720(s0)
    9b74:	ac4b0000 	sw	t3,0(v0)
    9b78:	8e240000 	lw	a0,0(s1)
    9b7c:	0c000000 	jal	0 <ActorShape_Init>
    9b80:	afa20038 	sw	v0,56(sp)
    9b84:	8fa30038 	lw	v1,56(sp)
    9b88:	02202025 	move	a0,s1
    9b8c:	ac620004 	sw	v0,4(v1)
    9b90:	8fa2005c 	lw	v0,92(sp)
    9b94:	8fae0068 	lw	t6,104(sp)
    9b98:	8fad0064 	lw	t5,100(sp)
    9b9c:	8fac0060 	lw	t4,96(sp)
    9ba0:	8c450004 	lw	a1,4(v0)
    9ba4:	8c460020 	lw	a2,32(v0)
    9ba8:	90470002 	lbu	a3,2(v0)
    9bac:	afae0018 	sw	t6,24(sp)
    9bb0:	afad0014 	sw	t5,20(sp)
    9bb4:	afac0010 	sw	t4,16(sp)
    9bb8:	8e0f02d0 	lw	t7,720(s0)
    9bbc:	0c000000 	jal	0 <ActorShape_Init>
    9bc0:	afaf001c 	sw	t7,28(sp)
    9bc4:	ae0202d0 	sw	v0,720(s0)
    9bc8:	3c060000 	lui	a2,0x0
    9bcc:	24c609b4 	addiu	a2,a2,2484
    9bd0:	8e250000 	lw	a1,0(s1)
    9bd4:	27a40044 	addiu	a0,sp,68
    9bd8:	0c000000 	jal	0 <ActorShape_Init>
    9bdc:	240722c8 	li	a3,8904
    9be0:	8fbf002c 	lw	ra,44(sp)
    9be4:	8fb00024 	lw	s0,36(sp)
    9be8:	8fb10028 	lw	s1,40(sp)
    9bec:	03e00008 	jr	ra
    9bf0:	27bd0058 	addiu	sp,sp,88

00009bf4 <func_80034DD4>:
    9bf4:	27bdffd8 	addiu	sp,sp,-40
    9bf8:	afbf0024 	sw	ra,36(sp)
    9bfc:	afb00020 	sw	s0,32(sp)
    9c00:	afa5002c 	sw	a1,44(sp)
    9c04:	afa60030 	sw	a2,48(sp)
    9c08:	afa70034 	sw	a3,52(sp)
    9c0c:	90ae1d6c 	lbu	t6,7532(a1)
    9c10:	00a03025 	move	a2,a1
    9c14:	00808025 	move	s0,a0
    9c18:	15c00006 	bnez	t6,9c34 <func_80034DD4+0x40>
    9c1c:	8ca21c44 	lw	v0,7236(a1)
    9c20:	3c0f0000 	lui	t7,0x0
    9c24:	8def0000 	lw	t7,0(t7)
    9c28:	26040024 	addiu	a0,s0,36
    9c2c:	11e0000a 	beqz	t7,9c58 <func_80034DD4+0x64>
    9c30:	00000000 	nop
    9c34:	26040024 	addiu	a0,s0,36
    9c38:	0c000000 	jal	0 <ActorShape_Init>
    9c3c:	24c500e0 	addiu	a1,a2,224
    9c40:	3c013e80 	lui	at,0x3e80
    9c44:	44812000 	mtc1	at,$f4
    9c48:	00000000 	nop
    9c4c:	46040082 	mul.s	$f2,$f0,$f4
    9c50:	10000005 	b	9c68 <func_80034DD4+0x74>
    9c54:	c7a60034 	lwc1	$f6,52(sp)
    9c58:	0c000000 	jal	0 <ActorShape_Init>
    9c5c:	24450024 	addiu	a1,v0,36
    9c60:	46000086 	mov.s	$f2,$f0
    9c64:	c7a60034 	lwc1	$f6,52(sp)
    9c68:	2401fffe 	li	at,-2
    9c6c:	24070014 	li	a3,20
    9c70:	4602303c 	c.lt.s	$f6,$f2
    9c74:	24080001 	li	t0,1
    9c78:	27a40032 	addiu	a0,sp,50
    9c7c:	240500ff 	li	a1,255
    9c80:	4500000b 	bc1f	9cb0 <func_80034DD4+0xbc>
    9c84:	24060006 	li	a2,6
    9c88:	8e180004 	lw	t8,4(s0)
    9c8c:	27a40032 	addiu	a0,sp,50
    9c90:	00002825 	move	a1,zero
    9c94:	0301c824 	and	t9,t8,at
    9c98:	ae190004 	sw	t9,4(s0)
    9c9c:	afa80010 	sw	t0,16(sp)
    9ca0:	0c000000 	jal	0 <ActorShape_Init>
    9ca4:	24060006 	li	a2,6
    9ca8:	10000009 	b	9cd0 <func_80034DD4+0xdc>
    9cac:	8fbf0024 	lw	ra,36(sp)
    9cb0:	8e090004 	lw	t1,4(s0)
    9cb4:	240b0001 	li	t3,1
    9cb8:	24070014 	li	a3,20
    9cbc:	352a0001 	ori	t2,t1,0x1
    9cc0:	ae0a0004 	sw	t2,4(s0)
    9cc4:	0c000000 	jal	0 <ActorShape_Init>
    9cc8:	afab0010 	sw	t3,16(sp)
    9ccc:	8fbf0024 	lw	ra,36(sp)
    9cd0:	87a20032 	lh	v0,50(sp)
    9cd4:	8fb00020 	lw	s0,32(sp)
    9cd8:	03e00008 	jr	ra
    9cdc:	27bd0028 	addiu	sp,sp,40

00009ce0 <func_80034EC0>:
    9ce0:	27bdffd0 	addiu	sp,sp,-48
    9ce4:	00067080 	sll	t6,a2,0x2
    9ce8:	01c67023 	subu	t6,t6,a2
    9cec:	afb00028 	sw	s0,40(sp)
    9cf0:	000e70c0 	sll	t6,t6,0x3
    9cf4:	afbf002c 	sw	ra,44(sp)
    9cf8:	afa40030 	sw	a0,48(sp)
    9cfc:	00ae8021 	addu	s0,a1,t6
    9d00:	c600000c 	lwc1	$f0,12(s0)
    9d04:	44802000 	mtc1	zero,$f4
    9d08:	00000000 	nop
    9d0c:	4600203c 	c.lt.s	$f4,$f0
    9d10:	00000000 	nop
    9d14:	45000003 	bc1f	9d24 <func_80034EC0+0x44>
    9d18:	00000000 	nop
    9d1c:	10000006 	b	9d38 <func_80034EC0+0x58>
    9d20:	46000086 	mov.s	$f2,$f0
    9d24:	0c000000 	jal	0 <ActorShape_Init>
    9d28:	8e040000 	lw	a0,0(s0)
    9d2c:	44823000 	mtc1	v0,$f6
    9d30:	00000000 	nop
    9d34:	468030a0 	cvt.s.w	$f2,$f6
    9d38:	8e050000 	lw	a1,0(s0)
    9d3c:	8e060004 	lw	a2,4(s0)
    9d40:	8e070008 	lw	a3,8(s0)
    9d44:	e7a20010 	swc1	$f2,16(sp)
    9d48:	920f0010 	lbu	t7,16(s0)
    9d4c:	8fa40030 	lw	a0,48(sp)
    9d50:	afaf0014 	sw	t7,20(sp)
    9d54:	c6080014 	lwc1	$f8,20(s0)
    9d58:	0c000000 	jal	0 <ActorShape_Init>
    9d5c:	e7a80018 	swc1	$f8,24(sp)
    9d60:	8fbf002c 	lw	ra,44(sp)
    9d64:	8fb00028 	lw	s0,40(sp)
    9d68:	27bd0030 	addiu	sp,sp,48
    9d6c:	03e00008 	jr	ra
    9d70:	00000000 	nop

00009d74 <func_80034F54>:
    9d74:	27bdffe8 	addiu	sp,sp,-24
    9d78:	3c020001 	lui	v0,0x1
    9d7c:	afb40014 	sw	s4,20(sp)
    9d80:	afb30010 	sw	s3,16(sp)
    9d84:	afb2000c 	sw	s2,12(sp)
    9d88:	afb10008 	sw	s1,8(sp)
    9d8c:	afb00004 	sw	s0,4(sp)
    9d90:	afa60020 	sw	a2,32(sp)
    9d94:	00441021 	addu	v0,v0,a0
    9d98:	8c421de4 	lw	v0,7652(v0)
    9d9c:	18e0005f 	blez	a3,9f1c <func_80034F54+0x1a8>
    9da0:	00001825 	move	v1,zero
    9da4:	30ed0003 	andi	t5,a3,0x3
    9da8:	11a0001a 	beqz	t5,9e14 <func_80034F54+0xa0>
    9dac:	01a06025 	move	t4,t5
    9db0:	00004080 	sll	t0,zero,0x2
    9db4:	01004023 	subu	t0,t0,zero
    9db8:	8fae0020 	lw	t6,32(sp)
    9dbc:	000840c0 	sll	t0,t0,0x3
    9dc0:	00084040 	sll	t0,t0,0x1
    9dc4:	00002040 	sll	a0,zero,0x1
    9dc8:	00a43021 	addu	a2,a1,a0
    9dcc:	25090814 	addiu	t1,t0,2068
    9dd0:	250b0940 	addiu	t3,t0,2368
    9dd4:	01c45021 	addu	t2,t6,a0
    9dd8:	01220019 	multu	t1,v0
    9ddc:	24630001 	addiu	v1,v1,1
    9de0:	25290032 	addiu	t1,t1,50
    9de4:	24c60002 	addiu	a2,a2,2
    9de8:	254a0002 	addiu	t2,t2,2
    9dec:	00007812 	mflo	t7
    9df0:	a4cffffe 	sh	t7,-2(a2)
    9df4:	00000000 	nop
    9df8:	01620019 	multu	t3,v0
    9dfc:	256b0032 	addiu	t3,t3,50
    9e00:	0000c012 	mflo	t8
    9e04:	a558fffe 	sh	t8,-2(t2)
    9e08:	1583fff3 	bne	t4,v1,9dd8 <func_80034F54+0x64>
    9e0c:	00000000 	nop
    9e10:	10670042 	beq	v1,a3,9f1c <func_80034F54+0x1a8>
    9e14:	00034080 	sll	t0,v1,0x2
    9e18:	01034023 	subu	t0,t0,v1
    9e1c:	000840c0 	sll	t0,t0,0x3
    9e20:	01034021 	addu	t0,t0,v1
    9e24:	00084040 	sll	t0,t0,0x1
    9e28:	0007a080 	sll	s4,a3,0x2
    9e2c:	0287a023 	subu	s4,s4,a3
    9e30:	8fb90020 	lw	t9,32(sp)
    9e34:	0014a0c0 	sll	s4,s4,0x3
    9e38:	0287a021 	addu	s4,s4,a3
    9e3c:	00032040 	sll	a0,v1,0x1
    9e40:	0014a040 	sll	s4,s4,0x1
    9e44:	269409d6 	addiu	s4,s4,2518
    9e48:	00a43021 	addu	a2,a1,a0
    9e4c:	25090814 	addiu	t1,t0,2068
    9e50:	250b0940 	addiu	t3,t0,2368
    9e54:	250c0846 	addiu	t4,t0,2118
    9e58:	250d0972 	addiu	t5,t0,2418
    9e5c:	25100878 	addiu	s0,t0,2168
    9e60:	251109a4 	addiu	s1,t0,2468
    9e64:	251208aa 	addiu	s2,t0,2218
    9e68:	251309d6 	addiu	s3,t0,2518
    9e6c:	03245021 	addu	t2,t9,a0
    9e70:	01220019 	multu	t1,v0
    9e74:	252900c8 	addiu	t1,t1,200
    9e78:	24c60008 	addiu	a2,a2,8
    9e7c:	254a0008 	addiu	t2,t2,8
    9e80:	00007012 	mflo	t6
    9e84:	a4cefff8 	sh	t6,-8(a2)
    9e88:	00000000 	nop
    9e8c:	01620019 	multu	t3,v0
    9e90:	256b00c8 	addiu	t3,t3,200
    9e94:	00007812 	mflo	t7
    9e98:	a54ffff8 	sh	t7,-8(t2)
    9e9c:	00000000 	nop
    9ea0:	01820019 	multu	t4,v0
    9ea4:	258c00c8 	addiu	t4,t4,200
    9ea8:	0000c012 	mflo	t8
    9eac:	a4d8fffa 	sh	t8,-6(a2)
    9eb0:	00000000 	nop
    9eb4:	01a20019 	multu	t5,v0
    9eb8:	25ad00c8 	addiu	t5,t5,200
    9ebc:	0000c812 	mflo	t9
    9ec0:	a559fffa 	sh	t9,-6(t2)
    9ec4:	00000000 	nop
    9ec8:	02020019 	multu	s0,v0
    9ecc:	261000c8 	addiu	s0,s0,200
    9ed0:	00007012 	mflo	t6
    9ed4:	a4cefffc 	sh	t6,-4(a2)
    9ed8:	00000000 	nop
    9edc:	02220019 	multu	s1,v0
    9ee0:	263100c8 	addiu	s1,s1,200
    9ee4:	00007812 	mflo	t7
    9ee8:	a54ffffc 	sh	t7,-4(t2)
    9eec:	00000000 	nop
    9ef0:	02420019 	multu	s2,v0
    9ef4:	265200c8 	addiu	s2,s2,200
    9ef8:	0000c012 	mflo	t8
    9efc:	a4d8fffe 	sh	t8,-2(a2)
    9f00:	00000000 	nop
    9f04:	02620019 	multu	s3,v0
    9f08:	267300c8 	addiu	s3,s3,200
    9f0c:	0000c812 	mflo	t9
    9f10:	a559fffe 	sh	t9,-2(t2)
    9f14:	1674ffd6 	bne	s3,s4,9e70 <func_80034F54+0xfc>
    9f18:	00000000 	nop
    9f1c:	8fb00004 	lw	s0,4(sp)
    9f20:	8fb10008 	lw	s1,8(sp)
    9f24:	8fb2000c 	lw	s2,12(sp)
    9f28:	8fb30010 	lw	s3,16(sp)
    9f2c:	8fb40014 	lw	s4,20(sp)
    9f30:	03e00008 	jr	ra
    9f34:	27bd0018 	addiu	sp,sp,24

00009f38 <Actor_Noop>:
    9f38:	afa40000 	sw	a0,0(sp)
    9f3c:	03e00008 	jr	ra
    9f40:	afa50004 	sw	a1,4(sp)

00009f44 <func_80035124>:
    9f44:	27bdffd0 	addiu	sp,sp,-48
    9f48:	afbf0024 	sw	ra,36(sp)
    9f4c:	afb00020 	sw	s0,32(sp)
    9f50:	afa50034 	sw	a1,52(sp)
    9f54:	afa0002c 	sw	zero,44(sp)
    9f58:	8482001c 	lh	v0,28(a0)
    9f5c:	00808025 	move	s0,a0
    9f60:	24010001 	li	at,1
    9f64:	10400005 	beqz	v0,9f7c <func_80035124+0x38>
    9f68:	02002025 	move	a0,s0
    9f6c:	1041002c 	beq	v0,at,a020 <func_80035124+0xdc>
    9f70:	02002025 	move	a0,s0
    9f74:	10000030 	b	a038 <func_80035124+0xf4>
    9f78:	860900aa 	lh	t1,170(s0)
    9f7c:	0c000000 	jal	0 <ActorShape_Init>
    9f80:	8fa50034 	lw	a1,52(sp)
    9f84:	10400003 	beqz	v0,9f94 <func_80035124+0x50>
    9f88:	240e0001 	li	t6,1
    9f8c:	10000029 	b	a034 <func_80035124+0xf0>
    9f90:	a60e001c 	sh	t6,28(s0)
    9f94:	96020088 	lhu	v0,136(s0)
    9f98:	304f0001 	andi	t7,v0,0x1
    9f9c:	15e0000d 	bnez	t7,9fd4 <func_80035124+0x90>
    9fa0:	30580002 	andi	t8,v0,0x2
    9fa4:	0c000000 	jal	0 <ActorShape_Init>
    9fa8:	02002025 	move	a0,s0
    9fac:	44800000 	mtc1	zero,$f0
    9fb0:	3c073dcc 	lui	a3,0x3dcc
    9fb4:	34e7cccd 	ori	a3,a3,0xcccd
    9fb8:	44050000 	mfc1	a1,$f0
    9fbc:	26040068 	addiu	a0,s0,104
    9fc0:	3c063f80 	lui	a2,0x3f80
    9fc4:	0c000000 	jal	0 <ActorShape_Init>
    9fc8:	e7a00010 	swc1	$f0,16(sp)
    9fcc:	1000001a 	b	a038 <func_80035124+0xf4>
    9fd0:	860900aa 	lh	t1,170(s0)
    9fd4:	1300000a 	beqz	t8,a000 <func_80035124+0xbc>
    9fd8:	3c01c080 	lui	at,0xc080
    9fdc:	c6040060 	lwc1	$f4,96(s0)
    9fe0:	44813000 	mtc1	at,$f6
    9fe4:	24190001 	li	t9,1
    9fe8:	4606203c 	c.lt.s	$f4,$f6
    9fec:	00000000 	nop
    9ff0:	45020004 	bc1fl	a004 <func_80035124+0xc0>
    9ff4:	a60000b8 	sh	zero,184(s0)
    9ff8:	1000000e 	b	a034 <func_80035124+0xf0>
    9ffc:	afb9002c 	sw	t9,44(sp)
    a000:	a60000b8 	sh	zero,184(s0)
    a004:	860800b8 	lh	t0,184(s0)
    a008:	02002025 	move	a0,s0
    a00c:	a60800b4 	sh	t0,180(s0)
    a010:	0c000000 	jal	0 <ActorShape_Init>
    a014:	8fa50034 	lw	a1,52(sp)
    a018:	10000007 	b	a038 <func_80035124+0xf4>
    a01c:	860900aa 	lh	t1,170(s0)
    a020:	0c000000 	jal	0 <ActorShape_Init>
    a024:	8fa50034 	lw	a1,52(sp)
    a028:	50400003 	beqzl	v0,a038 <func_80035124+0xf4>
    a02c:	860900aa 	lh	t1,170(s0)
    a030:	a600001c 	sh	zero,28(s0)
    a034:	860900aa 	lh	t1,170(s0)
    a038:	860a00a8 	lh	t2,168(s0)
    a03c:	240b001d 	li	t3,29
    a040:	44894000 	mtc1	t1,$f8
    a044:	448a5000 	mtc1	t2,$f10
    a048:	afab0014 	sw	t3,20(sp)
    a04c:	46804220 	cvt.s.w	$f8,$f8
    a050:	8fa40034 	lw	a0,52(sp)
    a054:	02002825 	move	a1,s0
    a058:	46805020 	cvt.s.w	$f0,$f10
    a05c:	44064000 	mfc1	a2,$f8
    a060:	44070000 	mfc1	a3,$f0
    a064:	0c000000 	jal	0 <ActorShape_Init>
    a068:	e7a00010 	swc1	$f0,16(sp)
    a06c:	8fbf0024 	lw	ra,36(sp)
    a070:	8fa2002c 	lw	v0,44(sp)
    a074:	8fb00020 	lw	s0,32(sp)
    a078:	03e00008 	jr	ra
    a07c:	27bd0030 	addiu	sp,sp,48

0000a080 <Gfx_DrawDListOpa>:
    a080:	27bdffc0 	addiu	sp,sp,-64
    a084:	afbf001c 	sw	ra,28(sp)
    a088:	afb00018 	sw	s0,24(sp)
    a08c:	afa40040 	sw	a0,64(sp)
    a090:	afa50044 	sw	a1,68(sp)
    a094:	8c850000 	lw	a1,0(a0)
    a098:	3c060000 	lui	a2,0x0
    a09c:	24c609c4 	addiu	a2,a2,2500
    a0a0:	27a4002c 	addiu	a0,sp,44
    a0a4:	240700d6 	li	a3,214
    a0a8:	0c000000 	jal	0 <ActorShape_Init>
    a0ac:	00a08025 	move	s0,a1
    a0b0:	8faf0040 	lw	t7,64(sp)
    a0b4:	0c000000 	jal	0 <ActorShape_Init>
    a0b8:	8de40000 	lw	a0,0(t7)
    a0bc:	8e0202c0 	lw	v0,704(s0)
    a0c0:	3c19da38 	lui	t9,0xda38
    a0c4:	37390003 	ori	t9,t9,0x3
    a0c8:	24580008 	addiu	t8,v0,8
    a0cc:	ae1802c0 	sw	t8,704(s0)
    a0d0:	ac590000 	sw	t9,0(v0)
    a0d4:	8fa80040 	lw	t0,64(sp)
    a0d8:	3c050000 	lui	a1,0x0
    a0dc:	24a509d8 	addiu	a1,a1,2520
    a0e0:	8d040000 	lw	a0,0(t0)
    a0e4:	240600d8 	li	a2,216
    a0e8:	0c000000 	jal	0 <ActorShape_Init>
    a0ec:	afa20028 	sw	v0,40(sp)
    a0f0:	8fa30028 	lw	v1,40(sp)
    a0f4:	3c0ade00 	lui	t2,0xde00
    a0f8:	3c060000 	lui	a2,0x0
    a0fc:	ac620004 	sw	v0,4(v1)
    a100:	8e0202c0 	lw	v0,704(s0)
    a104:	24c609ec 	addiu	a2,a2,2540
    a108:	27a4002c 	addiu	a0,sp,44
    a10c:	24490008 	addiu	t1,v0,8
    a110:	ae0902c0 	sw	t1,704(s0)
    a114:	ac4a0000 	sw	t2,0(v0)
    a118:	8fab0044 	lw	t3,68(sp)
    a11c:	240700db 	li	a3,219
    a120:	ac4b0004 	sw	t3,4(v0)
    a124:	8fac0040 	lw	t4,64(sp)
    a128:	0c000000 	jal	0 <ActorShape_Init>
    a12c:	8d850000 	lw	a1,0(t4)
    a130:	8fbf001c 	lw	ra,28(sp)
    a134:	8fb00018 	lw	s0,24(sp)
    a138:	27bd0040 	addiu	sp,sp,64
    a13c:	03e00008 	jr	ra
    a140:	00000000 	nop

0000a144 <Gfx_DrawDListXlu>:
    a144:	27bdffc0 	addiu	sp,sp,-64
    a148:	afbf001c 	sw	ra,28(sp)
    a14c:	afb00018 	sw	s0,24(sp)
    a150:	afa40040 	sw	a0,64(sp)
    a154:	afa50044 	sw	a1,68(sp)
    a158:	8c850000 	lw	a1,0(a0)
    a15c:	3c060000 	lui	a2,0x0
    a160:	24c60a00 	addiu	a2,a2,2560
    a164:	27a4002c 	addiu	a0,sp,44
    a168:	240700e4 	li	a3,228
    a16c:	0c000000 	jal	0 <ActorShape_Init>
    a170:	00a08025 	move	s0,a1
    a174:	8faf0040 	lw	t7,64(sp)
    a178:	0c000000 	jal	0 <ActorShape_Init>
    a17c:	8de40000 	lw	a0,0(t7)
    a180:	8e0202d0 	lw	v0,720(s0)
    a184:	3c19da38 	lui	t9,0xda38
    a188:	37390003 	ori	t9,t9,0x3
    a18c:	24580008 	addiu	t8,v0,8
    a190:	ae1802d0 	sw	t8,720(s0)
    a194:	ac590000 	sw	t9,0(v0)
    a198:	8fa80040 	lw	t0,64(sp)
    a19c:	3c050000 	lui	a1,0x0
    a1a0:	24a50a14 	addiu	a1,a1,2580
    a1a4:	8d040000 	lw	a0,0(t0)
    a1a8:	240600e6 	li	a2,230
    a1ac:	0c000000 	jal	0 <ActorShape_Init>
    a1b0:	afa20028 	sw	v0,40(sp)
    a1b4:	8fa30028 	lw	v1,40(sp)
    a1b8:	3c0ade00 	lui	t2,0xde00
    a1bc:	3c060000 	lui	a2,0x0
    a1c0:	ac620004 	sw	v0,4(v1)
    a1c4:	8e0202d0 	lw	v0,720(s0)
    a1c8:	24c60a28 	addiu	a2,a2,2600
    a1cc:	27a4002c 	addiu	a0,sp,44
    a1d0:	24490008 	addiu	t1,v0,8
    a1d4:	ae0902d0 	sw	t1,720(s0)
    a1d8:	ac4a0000 	sw	t2,0(v0)
    a1dc:	8fab0044 	lw	t3,68(sp)
    a1e0:	240700e9 	li	a3,233
    a1e4:	ac4b0004 	sw	t3,4(v0)
    a1e8:	8fac0040 	lw	t4,64(sp)
    a1ec:	0c000000 	jal	0 <ActorShape_Init>
    a1f0:	8d850000 	lw	a1,0(t4)
    a1f4:	8fbf001c 	lw	ra,28(sp)
    a1f8:	8fb00018 	lw	s0,24(sp)
    a1fc:	27bd0040 	addiu	sp,sp,64
    a200:	03e00008 	jr	ra
    a204:	00000000 	nop

0000a208 <func_800353E8>:
    a208:	8c831c44 	lw	v1,7236(a0)
    a20c:	03e00008 	jr	ra
    a210:	90620845 	lbu	v0,2117(v1)

0000a214 <Actor_FindNearby>:
    a214:	27bdffd0 	addiu	sp,sp,-48
    a218:	afa7003c 	sw	a3,60(sp)
    a21c:	30e700ff 	andi	a3,a3,0xff
    a220:	000770c0 	sll	t6,a3,0x3
    a224:	afbf002c 	sw	ra,44(sp)
    a228:	afb30028 	sw	s3,40(sp)
    a22c:	afb20024 	sw	s2,36(sp)
    a230:	afb10020 	sw	s1,32(sp)
    a234:	afb0001c 	sw	s0,28(sp)
    a238:	f7b40010 	sdc1	$f20,16(sp)
    a23c:	afa60038 	sw	a2,56(sp)
    a240:	008e7821 	addu	t7,a0,t6
    a244:	8df01c34 	lw	s0,7220(t7)
    a248:	00069400 	sll	s2,a2,0x10
    a24c:	00129403 	sra	s2,s2,0x10
    a250:	12000017 	beqz	s0,a2b0 <Actor_FindNearby+0x9c>
    a254:	00a08825 	move	s1,a1
    a258:	c7b40040 	lwc1	$f20,64(sp)
    a25c:	2413ffff 	li	s3,-1
    a260:	12110006 	beq	s0,s1,a27c <Actor_FindNearby+0x68>
    a264:	00000000 	nop
    a268:	12530006 	beq	s2,s3,a284 <Actor_FindNearby+0x70>
    a26c:	02202025 	move	a0,s1
    a270:	86180000 	lh	t8,0(s0)
    a274:	12580003 	beq	s2,t8,a284 <Actor_FindNearby+0x70>
    a278:	00000000 	nop
    a27c:	1000000a 	b	a2a8 <Actor_FindNearby+0x94>
    a280:	8e100124 	lw	s0,292(s0)
    a284:	0c000000 	jal	0 <ActorShape_Init>
    a288:	02002825 	move	a1,s0
    a28c:	4614003e 	c.le.s	$f0,$f20
    a290:	00000000 	nop
    a294:	45020004 	bc1fl	a2a8 <Actor_FindNearby+0x94>
    a298:	8e100124 	lw	s0,292(s0)
    a29c:	10000005 	b	a2b4 <Actor_FindNearby+0xa0>
    a2a0:	02001025 	move	v0,s0
    a2a4:	8e100124 	lw	s0,292(s0)
    a2a8:	1600ffed 	bnez	s0,a260 <Actor_FindNearby+0x4c>
    a2ac:	00000000 	nop
    a2b0:	00001025 	move	v0,zero
    a2b4:	8fbf002c 	lw	ra,44(sp)
    a2b8:	d7b40010 	ldc1	$f20,16(sp)
    a2bc:	8fb0001c 	lw	s0,28(sp)
    a2c0:	8fb10020 	lw	s1,32(sp)
    a2c4:	8fb20024 	lw	s2,36(sp)
    a2c8:	8fb30028 	lw	s3,40(sp)
    a2cc:	03e00008 	jr	ra
    a2d0:	27bd0030 	addiu	sp,sp,48

0000a2d4 <func_800354B4>:
    a2d4:	afa7000c 	sw	a3,12(sp)
    a2d8:	44866000 	mtc1	a2,$f12
    a2dc:	8c821c44 	lw	v0,7236(a0)
    a2e0:	c4a40090 	lwc1	$f4,144(a1)
    a2e4:	84a6008a 	lh	a2,138(a1)
    a2e8:	87a90016 	lh	t1,22(sp)
    a2ec:	845900b6 	lh	t9,182(v0)
    a2f0:	460c203e 	c.le.s	$f4,$f12
    a2f4:	34018000 	li	at,0x8000
    a2f8:	00c1c021 	addu	t8,a2,at
    a2fc:	00c94023 	subu	t0,a2,t1
    a300:	03191823 	subu	v1,t8,t9
    a304:	00073c00 	sll	a3,a3,0x10
    a308:	00031c00 	sll	v1,v1,0x10
    a30c:	00084400 	sll	t0,t0,0x10
    a310:	00073c03 	sra	a3,a3,0x10
    a314:	00031c03 	sra	v1,v1,0x10
    a318:	45000015 	bc1f	a370 <func_800354B4+0x9c>
    a31c:	00084403 	sra	t0,t0,0x10
    a320:	804a0843 	lb	t2,2115(v0)
    a324:	87ab0012 	lh	t3,18(sp)
    a328:	51400012 	beqzl	t2,a374 <func_800354B4+0xa0>
    a32c:	00001025 	move	v0,zero
    a330:	04600003 	bltz	v1,a340 <func_800354B4+0x6c>
    a334:	00031023 	negu	v0,v1
    a338:	10000001 	b	a340 <func_800354B4+0x6c>
    a33c:	00601025 	move	v0,v1
    a340:	0162082a 	slt	at,t3,v0
    a344:	5420000b 	bnezl	at,a374 <func_800354B4+0xa0>
    a348:	00001025 	move	v0,zero
    a34c:	05000003 	bltz	t0,a35c <func_800354B4+0x88>
    a350:	00081023 	negu	v0,t0
    a354:	10000001 	b	a35c <func_800354B4+0x88>
    a358:	01001025 	move	v0,t0
    a35c:	00e2082a 	slt	at,a3,v0
    a360:	54200004 	bnezl	at,a374 <func_800354B4+0xa0>
    a364:	00001025 	move	v0,zero
    a368:	03e00008 	jr	ra
    a36c:	24020001 	li	v0,1
    a370:	00001025 	move	v0,zero
    a374:	03e00008 	jr	ra
    a378:	00000000 	nop

0000a37c <func_8003555C>:
    a37c:	27bdffd8 	addiu	sp,sp,-40
    a380:	afbf001c 	sw	ra,28(sp)
    a384:	240e00c8 	li	t6,200
    a388:	240f00a0 	li	t7,160
    a38c:	24180078 	li	t8,120
    a390:	24190082 	li	t9,130
    a394:	2408005a 	li	t0,90
    a398:	24090032 	li	t1,50
    a39c:	27aa0024 	addiu	t2,sp,36
    a3a0:	27ab0020 	addiu	t3,sp,32
    a3a4:	a3ae0024 	sb	t6,36(sp)
    a3a8:	a3af0025 	sb	t7,37(sp)
    a3ac:	a3b80026 	sb	t8,38(sp)
    a3b0:	a3b90020 	sb	t9,32(sp)
    a3b4:	a3a80021 	sb	t0,33(sp)
    a3b8:	a3a90022 	sb	t1,34(sp)
    a3bc:	afab0014 	sw	t3,20(sp)
    a3c0:	0c000000 	jal	0 <ActorShape_Init>
    a3c4:	afaa0010 	sw	t2,16(sp)
    a3c8:	8fbf001c 	lw	ra,28(sp)
    a3cc:	27bd0028 	addiu	sp,sp,40
    a3d0:	03e00008 	jr	ra
    a3d4:	00000000 	nop

0000a3d8 <func_800355B8>:
    a3d8:	27bdffe8 	addiu	sp,sp,-24
    a3dc:	afbf0014 	sw	ra,20(sp)
    a3e0:	3c060000 	lui	a2,0x0
    a3e4:	3c070000 	lui	a3,0x0
    a3e8:	24e70000 	addiu	a3,a3,0
    a3ec:	0c000000 	jal	0 <ActorShape_Init>
    a3f0:	24c60000 	addiu	a2,a2,0
    a3f4:	8fbf0014 	lw	ra,20(sp)
    a3f8:	27bd0018 	addiu	sp,sp,24
    a3fc:	03e00008 	jr	ra
    a400:	00000000 	nop

0000a404 <func_800355E4>:
    a404:	90ae0011 	lbu	t6,17(a1)
    a408:	8c821c44 	lw	v0,7236(a0)
    a40c:	31cf0008 	andi	t7,t6,0x8
    a410:	51e0000b 	beqzl	t7,a440 <func_800355E4+0x3c>
    a414:	00001025 	move	v0,zero
    a418:	80580843 	lb	t8,2115(v0)
    a41c:	53000008 	beqzl	t8,a440 <func_800355E4+0x3c>
    a420:	00001025 	move	v0,zero
    a424:	80590842 	lb	t9,2114(v0)
    a428:	24010016 	li	at,22
    a42c:	57210004 	bnel	t9,at,a440 <func_800355E4+0x3c>
    a430:	00001025 	move	v0,zero
    a434:	03e00008 	jr	ra
    a438:	24020001 	li	v0,1
    a43c:	00001025 	move	v0,zero
    a440:	03e00008 	jr	ra
    a444:	00000000 	nop

0000a448 <Actor_ApplyDamage>:
    a448:	908200b0 	lbu	v0,176(a0)
    a44c:	908300af 	lbu	v1,175(a0)
    a450:	0043082a 	slt	at,v0,v1
    a454:	14200003 	bnez	at,a464 <Actor_ApplyDamage+0x1c>
    a458:	00627023 	subu	t6,v1,v0
    a45c:	10000002 	b	a468 <Actor_ApplyDamage+0x20>
    a460:	a08000af 	sb	zero,175(a0)
    a464:	a08e00af 	sb	t6,175(a0)
    a468:	03e00008 	jr	ra
    a46c:	908200af 	lbu	v0,175(a0)

0000a470 <func_80035650>:
    a470:	8ca20024 	lw	v0,36(a1)
    a474:	14400003 	bnez	v0,a484 <func_80035650+0x14>
    a478:	00000000 	nop
    a47c:	03e00008 	jr	ra
    a480:	a0800116 	sb	zero,278(a0)
    a484:	50c0000b 	beqzl	a2,a4b4 <func_80035650+0x44>
    a488:	8c430000 	lw	v1,0(v0)
    a48c:	8c4e0000 	lw	t6,0(v0)
    a490:	3c011006 	lui	at,0x1006
    a494:	01c17824 	and	t7,t6,at
    a498:	51e00006 	beqzl	t7,a4b4 <func_80035650+0x44>
    a49c:	8c430000 	lw	v1,0(v0)
    a4a0:	90580005 	lbu	t8,5(v0)
    a4a4:	a0800116 	sb	zero,278(a0)
    a4a8:	03e00008 	jr	ra
    a4ac:	a4980110 	sh	t8,272(a0)
    a4b0:	8c430000 	lw	v1,0(v0)
    a4b4:	24080001 	li	t0,1
    a4b8:	30790800 	andi	t9,v1,0x800
    a4bc:	13200003 	beqz	t9,a4cc <func_80035650+0x5c>
    a4c0:	30691000 	andi	t1,v1,0x1000
    a4c4:	03e00008 	jr	ra
    a4c8:	a0880116 	sb	t0,278(a0)
    a4cc:	11200004 	beqz	t1,a4e0 <func_80035650+0x70>
    a4d0:	306b4000 	andi	t3,v1,0x4000
    a4d4:	240a0002 	li	t2,2
    a4d8:	03e00008 	jr	ra
    a4dc:	a08a0116 	sb	t2,278(a0)
    a4e0:	11600004 	beqz	t3,a4f4 <func_80035650+0x84>
    a4e4:	306d8000 	andi	t5,v1,0x8000
    a4e8:	240c0004 	li	t4,4
    a4ec:	03e00008 	jr	ra
    a4f0:	a08c0116 	sb	t4,278(a0)
    a4f4:	11a00004 	beqz	t5,a508 <func_80035650+0x98>
    a4f8:	00037bc0 	sll	t7,v1,0xf
    a4fc:	240e0008 	li	t6,8
    a500:	03e00008 	jr	ra
    a504:	a08e0116 	sb	t6,278(a0)
    a508:	05e10004 	bgez	t7,a51c <func_80035650+0xac>
    a50c:	30792000 	andi	t9,v1,0x2000
    a510:	24180010 	li	t8,16
    a514:	03e00008 	jr	ra
    a518:	a0980116 	sb	t8,278(a0)
    a51c:	13200004 	beqz	t9,a530 <func_80035650+0xc0>
    a520:	00034b00 	sll	t1,v1,0xc
    a524:	24080020 	li	t0,32
    a528:	03e00008 	jr	ra
    a52c:	a0880116 	sb	t0,278(a0)
    a530:	05210007 	bgez	t1,a550 <func_80035650+0xe0>
    a534:	240b0040 	li	t3,64
    a538:	10c00003 	beqz	a2,a548 <func_80035650+0xd8>
    a53c:	00000000 	nop
    a540:	904a0005 	lbu	t2,5(v0)
    a544:	a48a0110 	sh	t2,272(a0)
    a548:	03e00008 	jr	ra
    a54c:	a08b0116 	sb	t3,278(a0)
    a550:	a0800116 	sb	zero,278(a0)
    a554:	03e00008 	jr	ra
    a558:	00000000 	nop

0000a55c <func_8003573C>:
    a55c:	a0800116 	sb	zero,278(a0)
    a560:	8ca20018 	lw	v0,24(a1)
    a564:	00c03825 	move	a3,a2
    a568:	3c0a0008 	lui	t2,0x8
    a56c:	2442ffff 	addiu	v0,v0,-1
    a570:	0440003a 	bltz	v0,a65c <func_8003573C+0x100>
    a574:	00021980 	sll	v1,v0,0x6
    a578:	3c090001 	lui	t1,0x1
    a57c:	3c081006 	lui	t0,0x1006
    a580:	8cae001c 	lw	t6,28(a1)
    a584:	01c31021 	addu	v0,t6,v1
    a588:	8c460024 	lw	a2,36(v0)
    a58c:	14c00003 	bnez	a2,a59c <func_8003573C+0x40>
    a590:	00000000 	nop
    a594:	1000002c 	b	a648 <func_8003573C+0xec>
    a598:	00001025 	move	v0,zero
    a59c:	50e0000a 	beqzl	a3,a5c8 <func_8003573C+0x6c>
    a5a0:	8cc20000 	lw	v0,0(a2)
    a5a4:	8ccf0000 	lw	t7,0(a2)
    a5a8:	01e8c024 	and	t8,t7,t0
    a5ac:	53000006 	beqzl	t8,a5c8 <func_8003573C+0x6c>
    a5b0:	8cc20000 	lw	v0,0(a2)
    a5b4:	90d90005 	lbu	t9,5(a2)
    a5b8:	00001025 	move	v0,zero
    a5bc:	10000022 	b	a648 <func_8003573C+0xec>
    a5c0:	a4990110 	sh	t9,272(a0)
    a5c4:	8cc20000 	lw	v0,0(a2)
    a5c8:	304b0800 	andi	t3,v0,0x800
    a5cc:	11600003 	beqz	t3,a5dc <func_8003573C+0x80>
    a5d0:	304c1000 	andi	t4,v0,0x1000
    a5d4:	1000001c 	b	a648 <func_8003573C+0xec>
    a5d8:	24020001 	li	v0,1
    a5dc:	11800003 	beqz	t4,a5ec <func_8003573C+0x90>
    a5e0:	304d4000 	andi	t5,v0,0x4000
    a5e4:	10000018 	b	a648 <func_8003573C+0xec>
    a5e8:	24020002 	li	v0,2
    a5ec:	11a00003 	beqz	t5,a5fc <func_8003573C+0xa0>
    a5f0:	304e8000 	andi	t6,v0,0x8000
    a5f4:	10000014 	b	a648 <func_8003573C+0xec>
    a5f8:	24020004 	li	v0,4
    a5fc:	11c00003 	beqz	t6,a60c <func_8003573C+0xb0>
    a600:	00497824 	and	t7,v0,t1
    a604:	10000010 	b	a648 <func_8003573C+0xec>
    a608:	24020008 	li	v0,8
    a60c:	11e00003 	beqz	t7,a61c <func_8003573C+0xc0>
    a610:	30582000 	andi	t8,v0,0x2000
    a614:	1000000c 	b	a648 <func_8003573C+0xec>
    a618:	24020010 	li	v0,16
    a61c:	13000003 	beqz	t8,a62c <func_8003573C+0xd0>
    a620:	004ac824 	and	t9,v0,t2
    a624:	10000008 	b	a648 <func_8003573C+0xec>
    a628:	24020020 	li	v0,32
    a62c:	13200006 	beqz	t9,a648 <func_8003573C+0xec>
    a630:	00001025 	move	v0,zero
    a634:	10e00004 	beqz	a3,a648 <func_8003573C+0xec>
    a638:	24020040 	li	v0,64
    a63c:	90cb0005 	lbu	t3,5(a2)
    a640:	10000001 	b	a648 <func_8003573C+0xec>
    a644:	a48b0110 	sh	t3,272(a0)
    a648:	908c0116 	lbu	t4,278(a0)
    a64c:	2463ffc0 	addiu	v1,v1,-64
    a650:	01826825 	or	t5,t4,v0
    a654:	0461ffca 	bgez	v1,a580 <func_8003573C+0x24>
    a658:	a08d0116 	sb	t5,278(a0)
    a65c:	03e00008 	jr	ra
    a660:	00000000 	nop

0000a664 <func_80035844>:
    a664:	27bdffd8 	addiu	sp,sp,-40
    a668:	afbf0014 	sw	ra,20(sp)
    a66c:	afa60030 	sw	a2,48(sp)
    a670:	c4860000 	lwc1	$f6,0(a0)
    a674:	c4a40000 	lwc1	$f4,0(a1)
    a678:	c48a0008 	lwc1	$f10,8(a0)
    a67c:	c4a80008 	lwc1	$f8,8(a1)
    a680:	46062381 	sub.s	$f14,$f4,$f6
    a684:	10e00006 	beqz	a3,a6a0 <func_80035844+0x3c>
    a688:	460a4301 	sub.s	$f12,$f8,$f10
    a68c:	c4b20004 	lwc1	$f18,4(a1)
    a690:	c4840004 	lwc1	$f4,4(a0)
    a694:	46049181 	sub.s	$f6,$f18,$f4
    a698:	10000005 	b	a6b0 <func_80035844+0x4c>
    a69c:	e7a6001c 	swc1	$f6,28(sp)
    a6a0:	c4880004 	lwc1	$f8,4(a0)
    a6a4:	c4aa0004 	lwc1	$f10,4(a1)
    a6a8:	460a4481 	sub.s	$f18,$f8,$f10
    a6ac:	e7b2001c 	swc1	$f18,28(sp)
    a6b0:	e7ac0020 	swc1	$f12,32(sp)
    a6b4:	0c000000 	jal	0 <ActorShape_Init>
    a6b8:	e7ae0024 	swc1	$f14,36(sp)
    a6bc:	c7a20024 	lwc1	$f2,36(sp)
    a6c0:	c7b00020 	lwc1	$f16,32(sp)
    a6c4:	8fae0030 	lw	t6,48(sp)
    a6c8:	46021102 	mul.s	$f4,$f2,$f2
    a6cc:	a5c20002 	sh	v0,2(t6)
    a6d0:	46108182 	mul.s	$f6,$f16,$f16
    a6d4:	c7ae001c 	lwc1	$f14,28(sp)
    a6d8:	46062000 	add.s	$f0,$f4,$f6
    a6dc:	0c000000 	jal	0 <ActorShape_Init>
    a6e0:	46000304 	sqrt.s	$f12,$f0
    a6e4:	8faf0030 	lw	t7,48(sp)
    a6e8:	a5e20000 	sh	v0,0(t7)
    a6ec:	8fbf0014 	lw	ra,20(sp)
    a6f0:	27bd0028 	addiu	sp,sp,40
    a6f4:	03e00008 	jr	ra
    a6f8:	00000000 	nop

0000a6fc <func_800358DC>:
    a6fc:	27bdffc8 	addiu	sp,sp,-56
    a700:	afa5003c 	sw	a1,60(sp)
    a704:	8fae003c 	lw	t6,60(sp)
    a708:	afbf0034 	sw	ra,52(sp)
    a70c:	afa40038 	sw	a0,56(sp)
    a710:	afa60040 	sw	a2,64(sp)
    a714:	afa70044 	sw	a3,68(sp)
    a718:	c5c40000 	lwc1	$f4,0(t6)
    a71c:	8faf0040 	lw	t7,64(sp)
    a720:	00802825 	move	a1,a0
    a724:	e7a40010 	swc1	$f4,16(sp)
    a728:	c5c60004 	lwc1	$f6,4(t6)
    a72c:	8fa60050 	lw	a2,80(sp)
    a730:	87a90056 	lh	t1,86(sp)
    a734:	e7a60014 	swc1	$f6,20(sp)
    a738:	c5c80008 	lwc1	$f8,8(t6)
    a73c:	24070007 	li	a3,7
    a740:	24c41c24 	addiu	a0,a2,7204
    a744:	e7a80018 	swc1	$f8,24(sp)
    a748:	85f80000 	lh	t8,0(t7)
    a74c:	afb8001c 	sw	t8,28(sp)
    a750:	85f90002 	lh	t9,2(t7)
    a754:	afb90020 	sw	t9,32(sp)
    a758:	80a8001e 	lb	t0,30(a1)
    a75c:	afa50038 	sw	a1,56(sp)
    a760:	afa90028 	sw	t1,40(sp)
    a764:	0c000000 	jal	0 <ActorShape_Init>
    a768:	afa80024 	sw	t0,36(sp)
    a76c:	8fa40044 	lw	a0,68(sp)
    a770:	10400014 	beqz	v0,a7c4 <func_800358DC+0xc8>
    a774:	8fa50038 	lw	a1,56(sp)
    a778:	8cab0050 	lw	t3,80(a1)
    a77c:	240d0002 	li	t5,2
    a780:	ac4b0050 	sw	t3,80(v0)
    a784:	8caa0054 	lw	t2,84(a1)
    a788:	ac4a0054 	sw	t2,84(v0)
    a78c:	8cab0058 	lw	t3,88(a1)
    a790:	ac4b0058 	sw	t3,88(v0)
    a794:	c48a0000 	lwc1	$f10,0(a0)
    a798:	e44a0068 	swc1	$f10,104(v0)
    a79c:	8fac0058 	lw	t4,88(sp)
    a7a0:	a04d014c 	sb	t5,332(v0)
    a7a4:	ac4c0150 	sw	t4,336(v0)
    a7a8:	8fae0048 	lw	t6,72(sp)
    a7ac:	a44e014e 	sh	t6,334(v0)
    a7b0:	c4900004 	lwc1	$f16,4(a0)
    a7b4:	e4500154 	swc1	$f16,340(v0)
    a7b8:	c4920008 	lwc1	$f18,8(a0)
    a7bc:	10000002 	b	a7c8 <func_800358DC+0xcc>
    a7c0:	e4520158 	swc1	$f18,344(v0)
    a7c4:	00001025 	move	v0,zero
    a7c8:	8fbf0034 	lw	ra,52(sp)
    a7cc:	27bd0038 	addiu	sp,sp,56
    a7d0:	03e00008 	jr	ra
    a7d4:	00000000 	nop

0000a7d8 <func_800359B8>:
    a7d8:	27bdffb8 	addiu	sp,sp,-72
    a7dc:	afbf0014 	sw	ra,20(sp)
    a7e0:	afa5004c 	sw	a1,76(sp)
    a7e4:	afa60050 	sw	a2,80(sp)
    a7e8:	8c830078 	lw	v1,120(a0)
    a7ec:	5060004f 	beqzl	v1,a92c <func_800359B8+0x154>
    a7f0:	8fbf0014 	lw	ra,20(sp)
    a7f4:	846e0008 	lh	t6,8(v1)
    a7f8:	3c010000 	lui	at,0x0
    a7fc:	c4200cac 	lwc1	$f0,3244(at)
    a800:	448e2000 	mtc1	t6,$f4
    a804:	87a4004e 	lh	a0,78(sp)
    a808:	468021a0 	cvt.s.w	$f6,$f4
    a80c:	46003202 	mul.s	$f8,$f6,$f0
    a810:	e7a80044 	swc1	$f8,68(sp)
    a814:	846f000a 	lh	t7,10(v1)
    a818:	448f5000 	mtc1	t7,$f10
    a81c:	00000000 	nop
    a820:	46805420 	cvt.s.w	$f16,$f10
    a824:	46008482 	mul.s	$f18,$f16,$f0
    a828:	e7b20040 	swc1	$f18,64(sp)
    a82c:	8478000c 	lh	t8,12(v1)
    a830:	44982000 	mtc1	t8,$f4
    a834:	00000000 	nop
    a838:	468021a0 	cvt.s.w	$f6,$f4
    a83c:	46003202 	mul.s	$f8,$f6,$f0
    a840:	0c000000 	jal	0 <ActorShape_Init>
    a844:	e7a8003c 	swc1	$f8,60(sp)
    a848:	e7a00038 	swc1	$f0,56(sp)
    a84c:	0c000000 	jal	0 <ActorShape_Init>
    a850:	87a4004e 	lh	a0,78(sp)
    a854:	c7aa0044 	lwc1	$f10,68(sp)
    a858:	c7b00038 	lwc1	$f16,56(sp)
    a85c:	c7a6003c 	lwc1	$f6,60(sp)
    a860:	3c013f80 	lui	at,0x3f80
    a864:	46105482 	mul.s	$f18,$f10,$f16
    a868:	c7b00040 	lwc1	$f16,64(sp)
    a86c:	44817000 	mtc1	at,$f14
    a870:	46003202 	mul.s	$f8,$f6,$f0
    a874:	46009107 	neg.s	$f4,$f18
    a878:	46082281 	sub.s	$f10,$f4,$f8
    a87c:	46105302 	mul.s	$f12,$f10,$f16
    a880:	0c000000 	jal	0 <ActorShape_Init>
    a884:	00000000 	nop
    a888:	3c010000 	lui	at,0x0
    a88c:	c4320cb0 	lwc1	$f18,3248(at)
    a890:	8fac0050 	lw	t4,80(sp)
    a894:	46120182 	mul.s	$f6,$f0,$f18
    a898:	4600310d 	trunc.w.s	$f4,$f6
    a89c:	440a2000 	mfc1	t2,$f4
    a8a0:	00000000 	nop
    a8a4:	000a5823 	negu	t3,t2
    a8a8:	a58b0000 	sh	t3,0(t4)
    a8ac:	87a4004e 	lh	a0,78(sp)
    a8b0:	2484c009 	addiu	a0,a0,-16375
    a8b4:	00042400 	sll	a0,a0,0x10
    a8b8:	00042403 	sra	a0,a0,0x10
    a8bc:	0c000000 	jal	0 <ActorShape_Init>
    a8c0:	afa40018 	sw	a0,24(sp)
    a8c4:	8fa40018 	lw	a0,24(sp)
    a8c8:	0c000000 	jal	0 <ActorShape_Init>
    a8cc:	e7a0002c 	swc1	$f0,44(sp)
    a8d0:	c7a80044 	lwc1	$f8,68(sp)
    a8d4:	c7aa002c 	lwc1	$f10,44(sp)
    a8d8:	c7a6003c 	lwc1	$f6,60(sp)
    a8dc:	3c013f80 	lui	at,0x3f80
    a8e0:	460a4402 	mul.s	$f16,$f8,$f10
    a8e4:	c7aa0040 	lwc1	$f10,64(sp)
    a8e8:	44817000 	mtc1	at,$f14
    a8ec:	46003102 	mul.s	$f4,$f6,$f0
    a8f0:	46008487 	neg.s	$f18,$f16
    a8f4:	46049201 	sub.s	$f8,$f18,$f4
    a8f8:	460a4302 	mul.s	$f12,$f8,$f10
    a8fc:	0c000000 	jal	0 <ActorShape_Init>
    a900:	00000000 	nop
    a904:	3c010000 	lui	at,0x0
    a908:	c4300cb4 	lwc1	$f16,3252(at)
    a90c:	8fa80050 	lw	t0,80(sp)
    a910:	46100182 	mul.s	$f6,$f0,$f16
    a914:	4600348d 	trunc.w.s	$f18,$f6
    a918:	44189000 	mfc1	t8,$f18
    a91c:	00000000 	nop
    a920:	0018c823 	negu	t9,t8
    a924:	a5190004 	sh	t9,4(t0)
    a928:	8fbf0014 	lw	ra,20(sp)
    a92c:	27bd0048 	addiu	sp,sp,72
    a930:	03e00008 	jr	ra
    a934:	00000000 	nop

0000a938 <func_80035B18>:
    a938:	27bdffe8 	addiu	sp,sp,-24
    a93c:	afbf0014 	sw	ra,20(sp)
    a940:	afa5001c 	sw	a1,28(sp)
    a944:	afa60020 	sw	a2,32(sp)
    a948:	0c000000 	jal	0 <ActorShape_Init>
    a94c:	97a50022 	lhu	a1,34(sp)
    a950:	97ae0022 	lhu	t6,34(sp)
    a954:	8faf001c 	lw	t7,28(sp)
    a958:	a5ee010e 	sh	t6,270(t7)
    a95c:	8fbf0014 	lw	ra,20(sp)
    a960:	27bd0018 	addiu	sp,sp,24
    a964:	03e00008 	jr	ra
    a968:	00000000 	nop

0000a96c <Flags_GetEventChkInf>:
    a96c:	00047103 	sra	t6,a0,0x4
    a970:	000e7840 	sll	t7,t6,0x1
    a974:	3c180000 	lui	t8,0x0
    a978:	030fc021 	addu	t8,t8,t7
    a97c:	97180ed4 	lhu	t8,3796(t8)
    a980:	3099000f 	andi	t9,a0,0xf
    a984:	24080001 	li	t0,1
    a988:	03284804 	sllv	t1,t0,t9
    a98c:	03e00008 	jr	ra
    a990:	03091024 	and	v0,t8,t1

0000a994 <Flags_SetEventChkInf>:
    a994:	00047103 	sra	t6,a0,0x4
    a998:	3c180000 	lui	t8,0x0
    a99c:	27180000 	addiu	t8,t8,0
    a9a0:	000e7840 	sll	t7,t6,0x1
    a9a4:	01f81021 	addu	v0,t7,t8
    a9a8:	94590ed4 	lhu	t9,3796(v0)
    a9ac:	3088000f 	andi	t0,a0,0xf
    a9b0:	24090001 	li	t1,1
    a9b4:	01095004 	sllv	t2,t1,t0
    a9b8:	032a5825 	or	t3,t9,t2
    a9bc:	03e00008 	jr	ra
    a9c0:	a44b0ed4 	sh	t3,3796(v0)

0000a9c4 <Flags_GetInfTable>:
    a9c4:	00047103 	sra	t6,a0,0x4
    a9c8:	000e7840 	sll	t7,t6,0x1
    a9cc:	3c180000 	lui	t8,0x0
    a9d0:	030fc021 	addu	t8,t8,t7
    a9d4:	97180ef8 	lhu	t8,3832(t8)
    a9d8:	3099000f 	andi	t9,a0,0xf
    a9dc:	24080001 	li	t0,1
    a9e0:	03284804 	sllv	t1,t0,t9
    a9e4:	03e00008 	jr	ra
    a9e8:	03091024 	and	v0,t8,t1

0000a9ec <Flags_SetInfTable>:
    a9ec:	00047103 	sra	t6,a0,0x4
    a9f0:	3c180000 	lui	t8,0x0
    a9f4:	27180000 	addiu	t8,t8,0
    a9f8:	000e7840 	sll	t7,t6,0x1
    a9fc:	01f81021 	addu	v0,t7,t8
    aa00:	94590ef8 	lhu	t9,3832(v0)
    aa04:	3088000f 	andi	t0,a0,0xf
    aa08:	24090001 	li	t1,1
    aa0c:	01095004 	sllv	t2,t1,t0
    aa10:	032a5825 	or	t3,t9,t2
    aa14:	03e00008 	jr	ra
    aa18:	a44b0ef8 	sh	t3,3832(v0)

0000aa1c <func_80035BFC>:
    aa1c:	27bdffe0 	addiu	sp,sp,-32
    aa20:	afa50024 	sw	a1,36(sp)
    aa24:	00052c00 	sll	a1,a1,0x10
    aa28:	00052c03 	sra	a1,a1,0x10
    aa2c:	2ca10049 	sltiu	at,a1,73
    aa30:	afbf0014 	sw	ra,20(sp)
    aa34:	10200486 	beqz	at,bc50 <func_80035BFC+0x1234>
    aa38:	00001825 	move	v1,zero
    aa3c:	00057080 	sll	t6,a1,0x2
    aa40:	3c010000 	lui	at,0x0
    aa44:	002e0821 	addu	at,at,t6
    aa48:	8c2e0cb8 	lw	t6,3256(at)
    aa4c:	01c00008 	jr	t6
    aa50:	00000000 	nop
    aa54:	0c000000 	jal	0 <ActorShape_Init>
    aa58:	24040009 	li	a0,9
    aa5c:	10400009 	beqz	v0,aa84 <func_80035BFC+0x68>
    aa60:	00000000 	nop
    aa64:	0c000000 	jal	0 <ActorShape_Init>
    aa68:	24040005 	li	a0,5
    aa6c:	10400003 	beqz	v0,aa7c <func_80035BFC+0x60>
    aa70:	00000000 	nop
    aa74:	10000476 	b	bc50 <func_80035BFC+0x1234>
    aa78:	24031048 	li	v1,4168
    aa7c:	10000474 	b	bc50 <func_80035BFC+0x1234>
    aa80:	24031047 	li	v1,4167
    aa84:	0c000000 	jal	0 <ActorShape_Init>
    aa88:	24040002 	li	a0,2
    aa8c:	10400009 	beqz	v0,aab4 <func_80035BFC+0x98>
    aa90:	00000000 	nop
    aa94:	0c000000 	jal	0 <ActorShape_Init>
    aa98:	24040003 	li	a0,3
    aa9c:	10400003 	beqz	v0,aaac <func_80035BFC+0x90>
    aaa0:	00000000 	nop
    aaa4:	1000046a 	b	bc50 <func_80035BFC+0x1234>
    aaa8:	24031032 	li	v1,4146
    aaac:	10000468 	b	bc50 <func_80035BFC+0x1234>
    aab0:	24031031 	li	v1,4145
    aab4:	0c000000 	jal	0 <ActorShape_Init>
    aab8:	00002025 	move	a0,zero
    aabc:	10400009 	beqz	v0,aae4 <func_80035BFC+0xc8>
    aac0:	00000000 	nop
    aac4:	0c000000 	jal	0 <ActorShape_Init>
    aac8:	24040001 	li	a0,1
    aacc:	10400003 	beqz	v0,aadc <func_80035BFC+0xc0>
    aad0:	00000000 	nop
    aad4:	1000045e 	b	bc50 <func_80035BFC+0x1234>
    aad8:	24031003 	li	v1,4099
    aadc:	1000045c 	b	bc50 <func_80035BFC+0x1234>
    aae0:	24031002 	li	v1,4098
    aae4:	1000045a 	b	bc50 <func_80035BFC+0x1234>
    aae8:	24031001 	li	v1,4097
    aaec:	3c0f0000 	lui	t7,0x0
    aaf0:	8def0004 	lw	t7,4(t7)
    aaf4:	11e00021 	beqz	t7,ab7c <func_80035BFC+0x160>
    aaf8:	00000000 	nop
    aafc:	0c000000 	jal	0 <ActorShape_Init>
    ab00:	24040009 	li	a0,9
    ab04:	10400009 	beqz	v0,ab2c <func_80035BFC+0x110>
    ab08:	00000000 	nop
    ab0c:	0c000000 	jal	0 <ActorShape_Init>
    ab10:	24040010 	li	a0,16
    ab14:	10400003 	beqz	v0,ab24 <func_80035BFC+0x108>
    ab18:	00000000 	nop
    ab1c:	1000044c 	b	bc50 <func_80035BFC+0x1234>
    ab20:	24031046 	li	v1,4166
    ab24:	1000044a 	b	bc50 <func_80035BFC+0x1234>
    ab28:	24031045 	li	v1,4165
    ab2c:	0c000000 	jal	0 <ActorShape_Init>
    ab30:	24040003 	li	a0,3
    ab34:	10400009 	beqz	v0,ab5c <func_80035BFC+0x140>
    ab38:	00000000 	nop
    ab3c:	0c000000 	jal	0 <ActorShape_Init>
    ab40:	2404000e 	li	a0,14
    ab44:	10400003 	beqz	v0,ab54 <func_80035BFC+0x138>
    ab48:	00000000 	nop
    ab4c:	10000440 	b	bc50 <func_80035BFC+0x1234>
    ab50:	24031034 	li	v1,4148
    ab54:	1000043e 	b	bc50 <func_80035BFC+0x1234>
    ab58:	24031033 	li	v1,4147
    ab5c:	0c000000 	jal	0 <ActorShape_Init>
    ab60:	2404000c 	li	a0,12
    ab64:	10400003 	beqz	v0,ab74 <func_80035BFC+0x158>
    ab68:	00000000 	nop
    ab6c:	10000438 	b	bc50 <func_80035BFC+0x1234>
    ab70:	24031030 	li	v1,4144
    ab74:	10000436 	b	bc50 <func_80035BFC+0x1234>
    ab78:	2403102f 	li	v1,4143
    ab7c:	0c000000 	jal	0 <ActorShape_Init>
    ab80:	2404005c 	li	a0,92
    ab84:	10400009 	beqz	v0,abac <func_80035BFC+0x190>
    ab88:	00000000 	nop
    ab8c:	0c000000 	jal	0 <ActorShape_Init>
    ab90:	24040019 	li	a0,25
    ab94:	10400003 	beqz	v0,aba4 <func_80035BFC+0x188>
    ab98:	00000000 	nop
    ab9c:	1000042c 	b	bc50 <func_80035BFC+0x1234>
    aba0:	24031071 	li	v1,4209
    aba4:	1000042a 	b	bc50 <func_80035BFC+0x1234>
    aba8:	24031070 	li	v1,4208
    abac:	0c000000 	jal	0 <ActorShape_Init>
    abb0:	2404000b 	li	a0,11
    abb4:	10400009 	beqz	v0,abdc <func_80035BFC+0x1c0>
    abb8:	00000000 	nop
    abbc:	0c000000 	jal	0 <ActorShape_Init>
    abc0:	24040017 	li	a0,23
    abc4:	10400003 	beqz	v0,abd4 <func_80035BFC+0x1b8>
    abc8:	00000000 	nop
    abcc:	10000420 	b	bc50 <func_80035BFC+0x1234>
    abd0:	24031068 	li	v1,4200
    abd4:	1000041e 	b	bc50 <func_80035BFC+0x1234>
    abd8:	24031067 	li	v1,4199
    abdc:	0c000000 	jal	0 <ActorShape_Init>
    abe0:	24040015 	li	a0,21
    abe4:	10400003 	beqz	v0,abf4 <func_80035BFC+0x1d8>
    abe8:	00000000 	nop
    abec:	10000418 	b	bc50 <func_80035BFC+0x1234>
    abf0:	24031061 	li	v1,4193
    abf4:	10000416 	b	bc50 <func_80035BFC+0x1234>
    abf8:	24031060 	li	v1,4192
    abfc:	3c180000 	lui	t8,0x0
    ac00:	8f180004 	lw	t8,4(t8)
    ac04:	13000009 	beqz	t8,ac2c <func_80035BFC+0x210>
    ac08:	00000000 	nop
    ac0c:	0c000000 	jal	0 <ActorShape_Init>
    ac10:	24040009 	li	a0,9
    ac14:	10400003 	beqz	v0,ac24 <func_80035BFC+0x208>
    ac18:	00000000 	nop
    ac1c:	1000040c 	b	bc50 <func_80035BFC+0x1234>
    ac20:	24031042 	li	v1,4162
    ac24:	1000040a 	b	bc50 <func_80035BFC+0x1234>
    ac28:	24031004 	li	v1,4100
    ac2c:	0c000000 	jal	0 <ActorShape_Init>
    ac30:	2404005c 	li	a0,92
    ac34:	10400003 	beqz	v0,ac44 <func_80035BFC+0x228>
    ac38:	00000000 	nop
    ac3c:	10000404 	b	bc50 <func_80035BFC+0x1234>
    ac40:	24031072 	li	v1,4210
    ac44:	0c000000 	jal	0 <ActorShape_Init>
    ac48:	24040041 	li	a0,65
    ac4c:	10400003 	beqz	v0,ac5c <func_80035BFC+0x240>
    ac50:	00000000 	nop
    ac54:	100003fe 	b	bc50 <func_80035BFC+0x1234>
    ac58:	24031055 	li	v1,4181
    ac5c:	100003fc 	b	bc50 <func_80035BFC+0x1234>
    ac60:	24031056 	li	v1,4182
    ac64:	3c190000 	lui	t9,0x0
    ac68:	8f390004 	lw	t9,4(t9)
    ac6c:	1320000f 	beqz	t9,acac <func_80035BFC+0x290>
    ac70:	00000000 	nop
    ac74:	0c000000 	jal	0 <ActorShape_Init>
    ac78:	24040009 	li	a0,9
    ac7c:	10400003 	beqz	v0,ac8c <func_80035BFC+0x270>
    ac80:	00000000 	nop
    ac84:	100003f2 	b	bc50 <func_80035BFC+0x1234>
    ac88:	24031043 	li	v1,4163
    ac8c:	0c000000 	jal	0 <ActorShape_Init>
    ac90:	2404001e 	li	a0,30
    ac94:	10400003 	beqz	v0,aca4 <func_80035BFC+0x288>
    ac98:	00000000 	nop
    ac9c:	100003ec 	b	bc50 <func_80035BFC+0x1234>
    aca0:	24031006 	li	v1,4102
    aca4:	100003ea 	b	bc50 <func_80035BFC+0x1234>
    aca8:	24031005 	li	v1,4101
    acac:	0c000000 	jal	0 <ActorShape_Init>
    acb0:	2404005c 	li	a0,92
    acb4:	10400003 	beqz	v0,acc4 <func_80035BFC+0x2a8>
    acb8:	00000000 	nop
    acbc:	100003e4 	b	bc50 <func_80035BFC+0x1234>
    acc0:	24031073 	li	v1,4211
    acc4:	100003e2 	b	bc50 <func_80035BFC+0x1234>
    acc8:	2403105a 	li	v1,4186
    accc:	3c080000 	lui	t0,0x0
    acd0:	8d080004 	lw	t0,4(t0)
    acd4:	11000009 	beqz	t0,acfc <func_80035BFC+0x2e0>
    acd8:	00000000 	nop
    acdc:	0c000000 	jal	0 <ActorShape_Init>
    ace0:	24040009 	li	a0,9
    ace4:	10400003 	beqz	v0,acf4 <func_80035BFC+0x2d8>
    ace8:	00000000 	nop
    acec:	100003d8 	b	bc50 <func_80035BFC+0x1234>
    acf0:	24031042 	li	v1,4162
    acf4:	100003d6 	b	bc50 <func_80035BFC+0x1234>
    acf8:	24031007 	li	v1,4103
    acfc:	0c000000 	jal	0 <ActorShape_Init>
    ad00:	2404005c 	li	a0,92
    ad04:	10400003 	beqz	v0,ad14 <func_80035BFC+0x2f8>
    ad08:	00000000 	nop
    ad0c:	100003d0 	b	bc50 <func_80035BFC+0x1234>
    ad10:	24031072 	li	v1,4210
    ad14:	0c000000 	jal	0 <ActorShape_Init>
    ad18:	24040047 	li	a0,71
    ad1c:	10400003 	beqz	v0,ad2c <func_80035BFC+0x310>
    ad20:	00000000 	nop
    ad24:	100003ca 	b	bc50 <func_80035BFC+0x1234>
    ad28:	2403105e 	li	v1,4190
    ad2c:	100003c8 	b	bc50 <func_80035BFC+0x1234>
    ad30:	2403105d 	li	v1,4189
    ad34:	3c090000 	lui	t1,0x0
    ad38:	8d290004 	lw	t1,4(t1)
    ad3c:	1120000f 	beqz	t1,ad7c <func_80035BFC+0x360>
    ad40:	00000000 	nop
    ad44:	0c000000 	jal	0 <ActorShape_Init>
    ad48:	24040009 	li	a0,9
    ad4c:	10400003 	beqz	v0,ad5c <func_80035BFC+0x340>
    ad50:	00000000 	nop
    ad54:	100003be 	b	bc50 <func_80035BFC+0x1234>
    ad58:	24031044 	li	v1,4164
    ad5c:	0c000000 	jal	0 <ActorShape_Init>
    ad60:	24040022 	li	a0,34
    ad64:	10400003 	beqz	v0,ad74 <func_80035BFC+0x358>
    ad68:	00000000 	nop
    ad6c:	100003b8 	b	bc50 <func_80035BFC+0x1234>
    ad70:	24031009 	li	v1,4105
    ad74:	100003b6 	b	bc50 <func_80035BFC+0x1234>
    ad78:	24031008 	li	v1,4104
    ad7c:	0c000000 	jal	0 <ActorShape_Init>
    ad80:	2404005c 	li	a0,92
    ad84:	10400003 	beqz	v0,ad94 <func_80035BFC+0x378>
    ad88:	00000000 	nop
    ad8c:	100003b0 	b	bc50 <func_80035BFC+0x1234>
    ad90:	24031075 	li	v1,4213
    ad94:	100003ae 	b	bc50 <func_80035BFC+0x1234>
    ad98:	2403105b 	li	v1,4187
    ad9c:	3c0a0000 	lui	t2,0x0
    ada0:	8d4a0004 	lw	t2,4(t2)
    ada4:	1140000f 	beqz	t2,ade4 <func_80035BFC+0x3c8>
    ada8:	00000000 	nop
    adac:	0c000000 	jal	0 <ActorShape_Init>
    adb0:	24040009 	li	a0,9
    adb4:	10400003 	beqz	v0,adc4 <func_80035BFC+0x3a8>
    adb8:	00000000 	nop
    adbc:	100003a4 	b	bc50 <func_80035BFC+0x1234>
    adc0:	24031042 	li	v1,4162
    adc4:	0c000000 	jal	0 <ActorShape_Init>
    adc8:	24040024 	li	a0,36
    adcc:	10400003 	beqz	v0,addc <func_80035BFC+0x3c0>
    add0:	00000000 	nop
    add4:	1000039e 	b	bc50 <func_80035BFC+0x1234>
    add8:	2403100b 	li	v1,4107
    addc:	1000039c 	b	bc50 <func_80035BFC+0x1234>
    ade0:	2403100a 	li	v1,4106
    ade4:	0c000000 	jal	0 <ActorShape_Init>
    ade8:	2404005c 	li	a0,92
    adec:	10400003 	beqz	v0,adfc <func_80035BFC+0x3e0>
    adf0:	00000000 	nop
    adf4:	10000396 	b	bc50 <func_80035BFC+0x1234>
    adf8:	24031056 	li	v1,4182
    adfc:	10000394 	b	bc50 <func_80035BFC+0x1234>
    ae00:	2403105f 	li	v1,4191
    ae04:	3c0b0000 	lui	t3,0x0
    ae08:	8d6b0004 	lw	t3,4(t3)
    ae0c:	1160000f 	beqz	t3,ae4c <func_80035BFC+0x430>
    ae10:	00000000 	nop
    ae14:	0c000000 	jal	0 <ActorShape_Init>
    ae18:	24040009 	li	a0,9
    ae1c:	10400003 	beqz	v0,ae2c <func_80035BFC+0x410>
    ae20:	00000000 	nop
    ae24:	1000038a 	b	bc50 <func_80035BFC+0x1234>
    ae28:	24031043 	li	v1,4163
    ae2c:	0c000000 	jal	0 <ActorShape_Init>
    ae30:	24040026 	li	a0,38
    ae34:	10400003 	beqz	v0,ae44 <func_80035BFC+0x428>
    ae38:	00000000 	nop
    ae3c:	10000384 	b	bc50 <func_80035BFC+0x1234>
    ae40:	2403100d 	li	v1,4109
    ae44:	10000382 	b	bc50 <func_80035BFC+0x1234>
    ae48:	2403100c 	li	v1,4108
    ae4c:	0c000000 	jal	0 <ActorShape_Init>
    ae50:	2404005c 	li	a0,92
    ae54:	10400003 	beqz	v0,ae64 <func_80035BFC+0x448>
    ae58:	00000000 	nop
    ae5c:	1000037c 	b	bc50 <func_80035BFC+0x1234>
    ae60:	24031057 	li	v1,4183
    ae64:	1000037a 	b	bc50 <func_80035BFC+0x1234>
    ae68:	24031057 	li	v1,4183
    ae6c:	3c0c0000 	lui	t4,0x0
    ae70:	8d8c0004 	lw	t4,4(t4)
    ae74:	1180000f 	beqz	t4,aeb4 <func_80035BFC+0x498>
    ae78:	00000000 	nop
    ae7c:	0c000000 	jal	0 <ActorShape_Init>
    ae80:	24040009 	li	a0,9
    ae84:	10400003 	beqz	v0,ae94 <func_80035BFC+0x478>
    ae88:	00000000 	nop
    ae8c:	10000370 	b	bc50 <func_80035BFC+0x1234>
    ae90:	24031043 	li	v1,4163
    ae94:	0c000000 	jal	0 <ActorShape_Init>
    ae98:	24040028 	li	a0,40
    ae9c:	10400003 	beqz	v0,aeac <func_80035BFC+0x490>
    aea0:	00000000 	nop
    aea4:	1000036a 	b	bc50 <func_80035BFC+0x1234>
    aea8:	24031019 	li	v1,4121
    aeac:	10000368 	b	bc50 <func_80035BFC+0x1234>
    aeb0:	2403100e 	li	v1,4110
    aeb4:	0c000000 	jal	0 <ActorShape_Init>
    aeb8:	2404005c 	li	a0,92
    aebc:	10400003 	beqz	v0,aecc <func_80035BFC+0x4b0>
    aec0:	00000000 	nop
    aec4:	10000362 	b	bc50 <func_80035BFC+0x1234>
    aec8:	24031077 	li	v1,4215
    aecc:	0c000000 	jal	0 <ActorShape_Init>
    aed0:	24040051 	li	a0,81
    aed4:	10400003 	beqz	v0,aee4 <func_80035BFC+0x4c8>
    aed8:	00000000 	nop
    aedc:	1000035c 	b	bc50 <func_80035BFC+0x1234>
    aee0:	24031058 	li	v1,4184
    aee4:	1000035a 	b	bc50 <func_80035BFC+0x1234>
    aee8:	24031059 	li	v1,4185
    aeec:	3c0d0000 	lui	t5,0x0
    aef0:	8dad0004 	lw	t5,4(t5)
    aef4:	11a00009 	beqz	t5,af1c <func_80035BFC+0x500>
    aef8:	00000000 	nop
    aefc:	0c000000 	jal	0 <ActorShape_Init>
    af00:	24040009 	li	a0,9
    af04:	10400003 	beqz	v0,af14 <func_80035BFC+0x4f8>
    af08:	00000000 	nop
    af0c:	10000350 	b	bc50 <func_80035BFC+0x1234>
    af10:	24031049 	li	v1,4169
    af14:	1000034e 	b	bc50 <func_80035BFC+0x1234>
    af18:	24031035 	li	v1,4149
    af1c:	0c000000 	jal	0 <ActorShape_Init>
    af20:	2404005c 	li	a0,92
    af24:	10400003 	beqz	v0,af34 <func_80035BFC+0x518>
    af28:	00000000 	nop
    af2c:	10000348 	b	bc50 <func_80035BFC+0x1234>
    af30:	24031079 	li	v1,4217
    af34:	10000346 	b	bc50 <func_80035BFC+0x1234>
    af38:	2403104e 	li	v1,4174
    af3c:	3c0e0000 	lui	t6,0x0
    af40:	8dce0004 	lw	t6,4(t6)
    af44:	11c00009 	beqz	t6,af6c <func_80035BFC+0x550>
    af48:	00000000 	nop
    af4c:	0c000000 	jal	0 <ActorShape_Init>
    af50:	24040009 	li	a0,9
    af54:	10400003 	beqz	v0,af64 <func_80035BFC+0x548>
    af58:	00000000 	nop
    af5c:	1000033c 	b	bc50 <func_80035BFC+0x1234>
    af60:	2403104a 	li	v1,4170
    af64:	1000033a 	b	bc50 <func_80035BFC+0x1234>
    af68:	24031038 	li	v1,4152
    af6c:	0c000000 	jal	0 <ActorShape_Init>
    af70:	2404005c 	li	a0,92
    af74:	10400003 	beqz	v0,af84 <func_80035BFC+0x568>
    af78:	00000000 	nop
    af7c:	10000334 	b	bc50 <func_80035BFC+0x1234>
    af80:	24031079 	li	v1,4217
    af84:	0c000000 	jal	0 <ActorShape_Init>
    af88:	24040059 	li	a0,89
    af8c:	10400003 	beqz	v0,af9c <func_80035BFC+0x580>
    af90:	00000000 	nop
    af94:	1000032e 	b	bc50 <func_80035BFC+0x1234>
    af98:	24031050 	li	v1,4176
    af9c:	1000032c 	b	bc50 <func_80035BFC+0x1234>
    afa0:	2403104f 	li	v1,4175
    afa4:	3c0f0000 	lui	t7,0x0
    afa8:	8def0004 	lw	t7,4(t7)
    afac:	11e00009 	beqz	t7,afd4 <func_80035BFC+0x5b8>
    afb0:	00000000 	nop
    afb4:	0c000000 	jal	0 <ActorShape_Init>
    afb8:	24040009 	li	a0,9
    afbc:	10400003 	beqz	v0,afcc <func_80035BFC+0x5b0>
    afc0:	00000000 	nop
    afc4:	10000322 	b	bc50 <func_80035BFC+0x1234>
    afc8:	2403104b 	li	v1,4171
    afcc:	10000320 	b	bc50 <func_80035BFC+0x1234>
    afd0:	2403103c 	li	v1,4156
    afd4:	0c000000 	jal	0 <ActorShape_Init>
    afd8:	2404005c 	li	a0,92
    afdc:	10400003 	beqz	v0,afec <func_80035BFC+0x5d0>
    afe0:	00000000 	nop
    afe4:	1000031a 	b	bc50 <func_80035BFC+0x1234>
    afe8:	2403107b 	li	v1,4219
    afec:	10000318 	b	bc50 <func_80035BFC+0x1234>
    aff0:	24031051 	li	v1,4177
    aff4:	3c180000 	lui	t8,0x0
    aff8:	8f180004 	lw	t8,4(t8)
    affc:	13000009 	beqz	t8,b024 <func_80035BFC+0x608>
    b000:	00000000 	nop
    b004:	0c000000 	jal	0 <ActorShape_Init>
    b008:	24040009 	li	a0,9
    b00c:	10400003 	beqz	v0,b01c <func_80035BFC+0x600>
    b010:	00000000 	nop
    b014:	1000030e 	b	bc50 <func_80035BFC+0x1234>
    b018:	2403104c 	li	v1,4172
    b01c:	1000030c 	b	bc50 <func_80035BFC+0x1234>
    b020:	2403103d 	li	v1,4157
    b024:	0c000000 	jal	0 <ActorShape_Init>
    b028:	2404005c 	li	a0,92
    b02c:	10400003 	beqz	v0,b03c <func_80035BFC+0x620>
    b030:	00000000 	nop
    b034:	10000306 	b	bc50 <func_80035BFC+0x1234>
    b038:	2403107c 	li	v1,4220
    b03c:	10000304 	b	bc50 <func_80035BFC+0x1234>
    b040:	24031052 	li	v1,4178
    b044:	3c190000 	lui	t9,0x0
    b048:	8f390004 	lw	t9,4(t9)
    b04c:	13200009 	beqz	t9,b074 <func_80035BFC+0x658>
    b050:	00000000 	nop
    b054:	0c000000 	jal	0 <ActorShape_Init>
    b058:	24040009 	li	a0,9
    b05c:	10400003 	beqz	v0,b06c <func_80035BFC+0x650>
    b060:	00000000 	nop
    b064:	100002fa 	b	bc50 <func_80035BFC+0x1234>
    b068:	2403104d 	li	v1,4173
    b06c:	100002f8 	b	bc50 <func_80035BFC+0x1234>
    b070:	2403103e 	li	v1,4158
    b074:	0c000000 	jal	0 <ActorShape_Init>
    b078:	2404005c 	li	a0,92
    b07c:	10400003 	beqz	v0,b08c <func_80035BFC+0x670>
    b080:	00000000 	nop
    b084:	100002f2 	b	bc50 <func_80035BFC+0x1234>
    b088:	2403106e 	li	v1,4206
    b08c:	0c000000 	jal	0 <ActorShape_Init>
    b090:	24040061 	li	a0,97
    b094:	10400003 	beqz	v0,b0a4 <func_80035BFC+0x688>
    b098:	00000000 	nop
    b09c:	100002ec 	b	bc50 <func_80035BFC+0x1234>
    b0a0:	24031053 	li	v1,4179
    b0a4:	100002ea 	b	bc50 <func_80035BFC+0x1234>
    b0a8:	24031054 	li	v1,4180
    b0ac:	0c000000 	jal	0 <ActorShape_Init>
    b0b0:	2404005c 	li	a0,92
    b0b4:	10400003 	beqz	v0,b0c4 <func_80035BFC+0x6a8>
    b0b8:	00000000 	nop
    b0bc:	100002e4 	b	bc50 <func_80035BFC+0x1234>
    b0c0:	24031078 	li	v1,4216
    b0c4:	0c000000 	jal	0 <ActorShape_Init>
    b0c8:	24040066 	li	a0,102
    b0cc:	10400003 	beqz	v0,b0dc <func_80035BFC+0x6c0>
    b0d0:	00000000 	nop
    b0d4:	100002de 	b	bc50 <func_80035BFC+0x1234>
    b0d8:	24031066 	li	v1,4198
    b0dc:	100002dc 	b	bc50 <func_80035BFC+0x1234>
    b0e0:	24031062 	li	v1,4194
    b0e4:	848800a4 	lh	t0,164(a0)
    b0e8:	2401005f 	li	at,95
    b0ec:	15010003 	bne	t0,at,b0fc <func_80035BFC+0x6e0>
    b0f0:	00000000 	nop
    b0f4:	100002d6 	b	bc50 <func_80035BFC+0x1234>
    b0f8:	24037002 	li	v1,28674
    b0fc:	0c000000 	jal	0 <ActorShape_Init>
    b100:	2404006a 	li	a0,106
    b104:	10400003 	beqz	v0,b114 <func_80035BFC+0x6f8>
    b108:	00000000 	nop
    b10c:	100002d0 	b	bc50 <func_80035BFC+0x1234>
    b110:	24037004 	li	v1,28676
    b114:	3c020000 	lui	v0,0x0
    b118:	9442000c 	lhu	v0,12(v0)
    b11c:	28414000 	slti	at,v0,16384
    b120:	14200006 	bnez	at,b13c <func_80035BFC+0x720>
    b124:	3401c556 	li	at,0xc556
    b128:	0041082a 	slt	at,v0,at
    b12c:	10200003 	beqz	at,b13c <func_80035BFC+0x720>
    b130:	00000000 	nop
    b134:	100002c6 	b	bc50 <func_80035BFC+0x1234>
    b138:	24037002 	li	v1,28674
    b13c:	100002c4 	b	bc50 <func_80035BFC+0x1234>
    b140:	24037003 	li	v1,28675
    b144:	24040009 	li	a0,9
    b148:	0c000000 	jal	0 <ActorShape_Init>
    b14c:	a7a3001e 	sh	v1,30(sp)
    b150:	104002bf 	beqz	v0,bc50 <func_80035BFC+0x1234>
    b154:	97a3001e 	lhu	v1,30(sp)
    b158:	24040025 	li	a0,37
    b15c:	0c000000 	jal	0 <ActorShape_Init>
    b160:	a7a3001e 	sh	v1,30(sp)
    b164:	104002ba 	beqz	v0,bc50 <func_80035BFC+0x1234>
    b168:	97a3001e 	lhu	v1,30(sp)
    b16c:	24040037 	li	a0,55
    b170:	0c000000 	jal	0 <ActorShape_Init>
    b174:	a7a3001e 	sh	v1,30(sp)
    b178:	104002b5 	beqz	v0,bc50 <func_80035BFC+0x1234>
    b17c:	97a3001e 	lhu	v1,30(sp)
    b180:	0c000000 	jal	0 <ActorShape_Init>
    b184:	2404006c 	li	a0,108
    b188:	10400003 	beqz	v0,b198 <func_80035BFC+0x77c>
    b18c:	00000000 	nop
    b190:	100002af 	b	bc50 <func_80035BFC+0x1234>
    b194:	24037008 	li	v1,28680
    b198:	100002ad 	b	bc50 <func_80035BFC+0x1234>
    b19c:	24037007 	li	v1,28679
    b1a0:	100002ab 	b	bc50 <func_80035BFC+0x1234>
    b1a4:	2403702d 	li	v1,28717
    b1a8:	0c000000 	jal	0 <ActorShape_Init>
    b1ac:	24040009 	li	a0,9
    b1b0:	1040000b 	beqz	v0,b1e0 <func_80035BFC+0x7c4>
    b1b4:	00000000 	nop
    b1b8:	0c000000 	jal	0 <ActorShape_Init>
    b1bc:	24040025 	li	a0,37
    b1c0:	10400007 	beqz	v0,b1e0 <func_80035BFC+0x7c4>
    b1c4:	00000000 	nop
    b1c8:	0c000000 	jal	0 <ActorShape_Init>
    b1cc:	24040037 	li	a0,55
    b1d0:	10400003 	beqz	v0,b1e0 <func_80035BFC+0x7c4>
    b1d4:	00000000 	nop
    b1d8:	1000029d 	b	bc50 <func_80035BFC+0x1234>
    b1dc:	24037006 	li	v1,28678
    b1e0:	0c000000 	jal	0 <ActorShape_Init>
    b1e4:	24040012 	li	a0,18
    b1e8:	10400009 	beqz	v0,b210 <func_80035BFC+0x7f4>
    b1ec:	00000000 	nop
    b1f0:	0c000000 	jal	0 <ActorShape_Init>
    b1f4:	24040071 	li	a0,113
    b1f8:	10400003 	beqz	v0,b208 <func_80035BFC+0x7ec>
    b1fc:	00000000 	nop
    b200:	10000293 	b	bc50 <func_80035BFC+0x1234>
    b204:	24037072 	li	v1,28786
    b208:	10000291 	b	bc50 <func_80035BFC+0x1234>
    b20c:	24037071 	li	v1,28785
    b210:	1000028f 	b	bc50 <func_80035BFC+0x1234>
    b214:	24037029 	li	v1,28713
    b218:	0c000000 	jal	0 <ActorShape_Init>
    b21c:	24040042 	li	a0,66
    b220:	10400003 	beqz	v0,b230 <func_80035BFC+0x814>
    b224:	00000000 	nop
    b228:	10000289 	b	bc50 <func_80035BFC+0x1234>
    b22c:	24032012 	li	v1,8210
    b230:	0c000000 	jal	0 <ActorShape_Init>
    b234:	24040041 	li	a0,65
    b238:	10400009 	beqz	v0,b260 <func_80035BFC+0x844>
    b23c:	00000000 	nop
    b240:	0c000000 	jal	0 <ActorShape_Init>
    b244:	24040076 	li	a0,118
    b248:	10400003 	beqz	v0,b258 <func_80035BFC+0x83c>
    b24c:	00000000 	nop
    b250:	1000027f 	b	bc50 <func_80035BFC+0x1234>
    b254:	24032011 	li	v1,8209
    b258:	1000027d 	b	bc50 <func_80035BFC+0x1234>
    b25c:	24032010 	li	v1,8208
    b260:	0c000000 	jal	0 <ActorShape_Init>
    b264:	24040040 	li	a0,64
    b268:	10400003 	beqz	v0,b278 <func_80035BFC+0x85c>
    b26c:	00000000 	nop
    b270:	10000277 	b	bc50 <func_80035BFC+0x1234>
    b274:	2403200f 	li	v1,8207
    b278:	10000275 	b	bc50 <func_80035BFC+0x1234>
    b27c:	2403200e 	li	v1,8206
    b280:	0c000000 	jal	0 <ActorShape_Init>
    b284:	24040009 	li	a0,9
    b288:	1040000b 	beqz	v0,b2b8 <func_80035BFC+0x89c>
    b28c:	00000000 	nop
    b290:	0c000000 	jal	0 <ActorShape_Init>
    b294:	24040025 	li	a0,37
    b298:	10400007 	beqz	v0,b2b8 <func_80035BFC+0x89c>
    b29c:	00000000 	nop
    b2a0:	0c000000 	jal	0 <ActorShape_Init>
    b2a4:	24040037 	li	a0,55
    b2a8:	10400003 	beqz	v0,b2b8 <func_80035BFC+0x89c>
    b2ac:	00000000 	nop
    b2b0:	10000267 	b	bc50 <func_80035BFC+0x1234>
    b2b4:	24037044 	li	v1,28740
    b2b8:	10000265 	b	bc50 <func_80035BFC+0x1234>
    b2bc:	24037015 	li	v1,28693
    b2c0:	0c000000 	jal	0 <ActorShape_Init>
    b2c4:	24040009 	li	a0,9
    b2c8:	1040000b 	beqz	v0,b2f8 <func_80035BFC+0x8dc>
    b2cc:	00000000 	nop
    b2d0:	0c000000 	jal	0 <ActorShape_Init>
    b2d4:	24040025 	li	a0,37
    b2d8:	10400007 	beqz	v0,b2f8 <func_80035BFC+0x8dc>
    b2dc:	00000000 	nop
    b2e0:	0c000000 	jal	0 <ActorShape_Init>
    b2e4:	24040037 	li	a0,55
    b2e8:	10400003 	beqz	v0,b2f8 <func_80035BFC+0x8dc>
    b2ec:	00000000 	nop
    b2f0:	10000257 	b	bc50 <func_80035BFC+0x1234>
    b2f4:	24037045 	li	v1,28741
    b2f8:	0c000000 	jal	0 <ActorShape_Init>
    b2fc:	240400c2 	li	a0,194
    b300:	10000253 	b	bc50 <func_80035BFC+0x1234>
    b304:	24037016 	li	v1,28694
    b308:	0c000000 	jal	0 <ActorShape_Init>
    b30c:	24040009 	li	a0,9
    b310:	1040000b 	beqz	v0,b340 <func_80035BFC+0x924>
    b314:	00000000 	nop
    b318:	0c000000 	jal	0 <ActorShape_Init>
    b31c:	24040025 	li	a0,37
    b320:	10400007 	beqz	v0,b340 <func_80035BFC+0x924>
    b324:	00000000 	nop
    b328:	0c000000 	jal	0 <ActorShape_Init>
    b32c:	24040037 	li	a0,55
    b330:	10400003 	beqz	v0,b340 <func_80035BFC+0x924>
    b334:	00000000 	nop
    b338:	10000245 	b	bc50 <func_80035BFC+0x1234>
    b33c:	24037046 	li	v1,28742
    b340:	0c000000 	jal	0 <ActorShape_Init>
    b344:	240400c2 	li	a0,194
    b348:	10000241 	b	bc50 <func_80035BFC+0x1234>
    b34c:	24037018 	li	v1,28696
    b350:	0c000000 	jal	0 <ActorShape_Init>
    b354:	24040009 	li	a0,9
    b358:	1040000b 	beqz	v0,b388 <func_80035BFC+0x96c>
    b35c:	00000000 	nop
    b360:	0c000000 	jal	0 <ActorShape_Init>
    b364:	24040025 	li	a0,37
    b368:	10400007 	beqz	v0,b388 <func_80035BFC+0x96c>
    b36c:	00000000 	nop
    b370:	0c000000 	jal	0 <ActorShape_Init>
    b374:	24040037 	li	a0,55
    b378:	10400003 	beqz	v0,b388 <func_80035BFC+0x96c>
    b37c:	00000000 	nop
    b380:	10000233 	b	bc50 <func_80035BFC+0x1234>
    b384:	24037047 	li	v1,28743
    b388:	0c000000 	jal	0 <ActorShape_Init>
    b38c:	24040014 	li	a0,20
    b390:	10400003 	beqz	v0,b3a0 <func_80035BFC+0x984>
    b394:	00000000 	nop
    b398:	1000022d 	b	bc50 <func_80035BFC+0x1234>
    b39c:	2403701a 	li	v1,28698
    b3a0:	0c000000 	jal	0 <ActorShape_Init>
    b3a4:	24040011 	li	a0,17
    b3a8:	10400009 	beqz	v0,b3d0 <func_80035BFC+0x9b4>
    b3ac:	00000000 	nop
    b3b0:	0c000000 	jal	0 <ActorShape_Init>
    b3b4:	240400c6 	li	a0,198
    b3b8:	10400003 	beqz	v0,b3c8 <func_80035BFC+0x9ac>
    b3bc:	00000000 	nop
    b3c0:	10000223 	b	bc50 <func_80035BFC+0x1234>
    b3c4:	2403701c 	li	v1,28700
    b3c8:	10000221 	b	bc50 <func_80035BFC+0x1234>
    b3cc:	2403701b 	li	v1,28699
    b3d0:	1000021f 	b	bc50 <func_80035BFC+0x1234>
    b3d4:	2403701a 	li	v1,28698
    b3d8:	0c000000 	jal	0 <ActorShape_Init>
    b3dc:	24040009 	li	a0,9
    b3e0:	1040000b 	beqz	v0,b410 <func_80035BFC+0x9f4>
    b3e4:	00000000 	nop
    b3e8:	0c000000 	jal	0 <ActorShape_Init>
    b3ec:	24040025 	li	a0,37
    b3f0:	10400007 	beqz	v0,b410 <func_80035BFC+0x9f4>
    b3f4:	00000000 	nop
    b3f8:	0c000000 	jal	0 <ActorShape_Init>
    b3fc:	24040037 	li	a0,55
    b400:	10400003 	beqz	v0,b410 <func_80035BFC+0x9f4>
    b404:	00000000 	nop
    b408:	10000211 	b	bc50 <func_80035BFC+0x1234>
    b40c:	24037048 	li	v1,28744
    b410:	0c000000 	jal	0 <ActorShape_Init>
    b414:	240400ca 	li	a0,202
    b418:	1000020d 	b	bc50 <func_80035BFC+0x1234>
    b41c:	2403701d 	li	v1,28701
    b420:	0c000000 	jal	0 <ActorShape_Init>
    b424:	24040009 	li	a0,9
    b428:	1040000b 	beqz	v0,b458 <func_80035BFC+0xa3c>
    b42c:	00000000 	nop
    b430:	0c000000 	jal	0 <ActorShape_Init>
    b434:	24040025 	li	a0,37
    b438:	10400007 	beqz	v0,b458 <func_80035BFC+0xa3c>
    b43c:	00000000 	nop
    b440:	0c000000 	jal	0 <ActorShape_Init>
    b444:	24040037 	li	a0,55
    b448:	10400003 	beqz	v0,b458 <func_80035BFC+0xa3c>
    b44c:	00000000 	nop
    b450:	100001ff 	b	bc50 <func_80035BFC+0x1234>
    b454:	24037049 	li	v1,28745
    b458:	0c000000 	jal	0 <ActorShape_Init>
    b45c:	240400cc 	li	a0,204
    b460:	100001fb 	b	bc50 <func_80035BFC+0x1234>
    b464:	2403701f 	li	v1,28703
    b468:	0c000000 	jal	0 <ActorShape_Init>
    b46c:	24040009 	li	a0,9
    b470:	1040000b 	beqz	v0,b4a0 <func_80035BFC+0xa84>
    b474:	00000000 	nop
    b478:	0c000000 	jal	0 <ActorShape_Init>
    b47c:	24040025 	li	a0,37
    b480:	10400007 	beqz	v0,b4a0 <func_80035BFC+0xa84>
    b484:	00000000 	nop
    b488:	0c000000 	jal	0 <ActorShape_Init>
    b48c:	24040037 	li	a0,55
    b490:	10400003 	beqz	v0,b4a0 <func_80035BFC+0xa84>
    b494:	00000000 	nop
    b498:	100001ed 	b	bc50 <func_80035BFC+0x1234>
    b49c:	2403704a 	li	v1,28746
    b4a0:	0c000000 	jal	0 <ActorShape_Init>
    b4a4:	240400ce 	li	a0,206
    b4a8:	100001e9 	b	bc50 <func_80035BFC+0x1234>
    b4ac:	24037021 	li	v1,28705
    b4b0:	0c000000 	jal	0 <ActorShape_Init>
    b4b4:	24040009 	li	a0,9
    b4b8:	1040000b 	beqz	v0,b4e8 <func_80035BFC+0xacc>
    b4bc:	00000000 	nop
    b4c0:	0c000000 	jal	0 <ActorShape_Init>
    b4c4:	24040025 	li	a0,37
    b4c8:	10400007 	beqz	v0,b4e8 <func_80035BFC+0xacc>
    b4cc:	00000000 	nop
    b4d0:	0c000000 	jal	0 <ActorShape_Init>
    b4d4:	24040037 	li	a0,55
    b4d8:	10400003 	beqz	v0,b4e8 <func_80035BFC+0xacc>
    b4dc:	00000000 	nop
    b4e0:	100001db 	b	bc50 <func_80035BFC+0x1234>
    b4e4:	2403704b 	li	v1,28747
    b4e8:	0c000000 	jal	0 <ActorShape_Init>
    b4ec:	240400d0 	li	a0,208
    b4f0:	100001d7 	b	bc50 <func_80035BFC+0x1234>
    b4f4:	24037023 	li	v1,28707
    b4f8:	0c000000 	jal	0 <ActorShape_Init>
    b4fc:	24040009 	li	a0,9
    b500:	1040000b 	beqz	v0,b530 <func_80035BFC+0xb14>
    b504:	00000000 	nop
    b508:	0c000000 	jal	0 <ActorShape_Init>
    b50c:	24040025 	li	a0,37
    b510:	10400007 	beqz	v0,b530 <func_80035BFC+0xb14>
    b514:	00000000 	nop
    b518:	0c000000 	jal	0 <ActorShape_Init>
    b51c:	24040037 	li	a0,55
    b520:	10400003 	beqz	v0,b530 <func_80035BFC+0xb14>
    b524:	00000000 	nop
    b528:	100001c9 	b	bc50 <func_80035BFC+0x1234>
    b52c:	2403704c 	li	v1,28748
    b530:	0c000000 	jal	0 <ActorShape_Init>
    b534:	240400d2 	li	a0,210
    b538:	100001c5 	b	bc50 <func_80035BFC+0x1234>
    b53c:	24037025 	li	v1,28709
    b540:	0c000000 	jal	0 <ActorShape_Init>
    b544:	24040009 	li	a0,9
    b548:	1040000b 	beqz	v0,b578 <func_80035BFC+0xb5c>
    b54c:	00000000 	nop
    b550:	0c000000 	jal	0 <ActorShape_Init>
    b554:	24040025 	li	a0,37
    b558:	10400007 	beqz	v0,b578 <func_80035BFC+0xb5c>
    b55c:	00000000 	nop
    b560:	0c000000 	jal	0 <ActorShape_Init>
    b564:	24040037 	li	a0,55
    b568:	10400003 	beqz	v0,b578 <func_80035BFC+0xb5c>
    b56c:	00000000 	nop
    b570:	100001b7 	b	bc50 <func_80035BFC+0x1234>
    b574:	2403704d 	li	v1,28749
    b578:	0c000000 	jal	0 <ActorShape_Init>
    b57c:	240400d4 	li	a0,212
    b580:	100001b3 	b	bc50 <func_80035BFC+0x1234>
    b584:	24037027 	li	v1,28711
    b588:	0c000000 	jal	0 <ActorShape_Init>
    b58c:	240400d6 	li	a0,214
    b590:	100001af 	b	bc50 <func_80035BFC+0x1234>
    b594:	2403403c 	li	v1,16444
    b598:	0c000000 	jal	0 <ActorShape_Init>
    b59c:	240400d8 	li	a0,216
    b5a0:	10400003 	beqz	v0,b5b0 <func_80035BFC+0xb94>
    b5a4:	00000000 	nop
    b5a8:	100001a9 	b	bc50 <func_80035BFC+0x1234>
    b5ac:	24035029 	li	v1,20521
    b5b0:	100001a7 	b	bc50 <func_80035BFC+0x1234>
    b5b4:	24035028 	li	v1,20520
    b5b8:	100001a5 	b	bc50 <func_80035BFC+0x1234>
    b5bc:	24035002 	li	v1,20482
    b5c0:	3c090000 	lui	t1,0x0
    b5c4:	8d290004 	lw	t1,4(t1)
    b5c8:	11200015 	beqz	t1,b620 <func_80035BFC+0xc04>
    b5cc:	00000000 	nop
    b5d0:	0c000000 	jal	0 <ActorShape_Init>
    b5d4:	24040025 	li	a0,37
    b5d8:	10400003 	beqz	v0,b5e8 <func_80035BFC+0xbcc>
    b5dc:	00000000 	nop
    b5e0:	1000019b 	b	bc50 <func_80035BFC+0x1234>
    b5e4:	24033027 	li	v1,12327
    b5e8:	0c000000 	jal	0 <ActorShape_Init>
    b5ec:	24040023 	li	a0,35
    b5f0:	10400003 	beqz	v0,b600 <func_80035BFC+0xbe4>
    b5f4:	00000000 	nop
    b5f8:	10000195 	b	bc50 <func_80035BFC+0x1234>
    b5fc:	24033021 	li	v1,12321
    b600:	0c000000 	jal	0 <ActorShape_Init>
    b604:	240400e0 	li	a0,224
    b608:	10400003 	beqz	v0,b618 <func_80035BFC+0xbfc>
    b60c:	00000000 	nop
    b610:	1000018f 	b	bc50 <func_80035BFC+0x1234>
    b614:	2403302a 	li	v1,12330
    b618:	1000018d 	b	bc50 <func_80035BFC+0x1234>
    b61c:	24033008 	li	v1,12296
    b620:	0c000000 	jal	0 <ActorShape_Init>
    b624:	24040020 	li	a0,32
    b628:	10400003 	beqz	v0,b638 <func_80035BFC+0xc1c>
    b62c:	00000000 	nop
    b630:	10000187 	b	bc50 <func_80035BFC+0x1234>
    b634:	24034043 	li	v1,16451
    b638:	10000185 	b	bc50 <func_80035BFC+0x1234>
    b63c:	2403302a 	li	v1,12330
    b640:	3c0a0000 	lui	t2,0x0
    b644:	8d4a0004 	lw	t2,4(t2)
    b648:	1140000f 	beqz	t2,b688 <func_80035BFC+0xc6c>
    b64c:	00000000 	nop
    b650:	0c000000 	jal	0 <ActorShape_Init>
    b654:	24040025 	li	a0,37
    b658:	10400003 	beqz	v0,b668 <func_80035BFC+0xc4c>
    b65c:	00000000 	nop
    b660:	1000017b 	b	bc50 <func_80035BFC+0x1234>
    b664:	24033027 	li	v1,12327
    b668:	0c000000 	jal	0 <ActorShape_Init>
    b66c:	24040023 	li	a0,35
    b670:	10400003 	beqz	v0,b680 <func_80035BFC+0xc64>
    b674:	00000000 	nop
    b678:	10000175 	b	bc50 <func_80035BFC+0x1234>
    b67c:	24033026 	li	v1,12326
    b680:	10000173 	b	bc50 <func_80035BFC+0x1234>
    b684:	24033009 	li	v1,12297
    b688:	0c000000 	jal	0 <ActorShape_Init>
    b68c:	2404002a 	li	a0,42
    b690:	10400003 	beqz	v0,b6a0 <func_80035BFC+0xc84>
    b694:	00000000 	nop
    b698:	1000016d 	b	bc50 <func_80035BFC+0x1234>
    b69c:	24034043 	li	v1,16451
    b6a0:	1000016b 	b	bc50 <func_80035BFC+0x1234>
    b6a4:	2403302a 	li	v1,12330
    b6a8:	3c0b0000 	lui	t3,0x0
    b6ac:	8d6b0004 	lw	t3,4(t3)
    b6b0:	11600015 	beqz	t3,b708 <func_80035BFC+0xcec>
    b6b4:	00000000 	nop
    b6b8:	0c000000 	jal	0 <ActorShape_Init>
    b6bc:	24040025 	li	a0,37
    b6c0:	10400003 	beqz	v0,b6d0 <func_80035BFC+0xcb4>
    b6c4:	00000000 	nop
    b6c8:	10000161 	b	bc50 <func_80035BFC+0x1234>
    b6cc:	24033027 	li	v1,12327
    b6d0:	0c000000 	jal	0 <ActorShape_Init>
    b6d4:	24040023 	li	a0,35
    b6d8:	10400003 	beqz	v0,b6e8 <func_80035BFC+0xccc>
    b6dc:	00000000 	nop
    b6e0:	1000015b 	b	bc50 <func_80035BFC+0x1234>
    b6e4:	24033026 	li	v1,12326
    b6e8:	0c000000 	jal	0 <ActorShape_Init>
    b6ec:	240400eb 	li	a0,235
    b6f0:	10400003 	beqz	v0,b700 <func_80035BFC+0xce4>
    b6f4:	00000000 	nop
    b6f8:	10000155 	b	bc50 <func_80035BFC+0x1234>
    b6fc:	2403302b 	li	v1,12331
    b700:	10000153 	b	bc50 <func_80035BFC+0x1234>
    b704:	2403300a 	li	v1,12298
    b708:	0c000000 	jal	0 <ActorShape_Init>
    b70c:	2404002b 	li	a0,43
    b710:	10400003 	beqz	v0,b720 <func_80035BFC+0xd04>
    b714:	00000000 	nop
    b718:	1000014d 	b	bc50 <func_80035BFC+0x1234>
    b71c:	24034043 	li	v1,16451
    b720:	1000014b 	b	bc50 <func_80035BFC+0x1234>
    b724:	2403302a 	li	v1,12330
    b728:	3c0c0000 	lui	t4,0x0
    b72c:	8d8c0004 	lw	t4,4(t4)
    b730:	1180000f 	beqz	t4,b770 <func_80035BFC+0xd54>
    b734:	00000000 	nop
    b738:	0c000000 	jal	0 <ActorShape_Init>
    b73c:	24040025 	li	a0,37
    b740:	10400003 	beqz	v0,b750 <func_80035BFC+0xd34>
    b744:	00000000 	nop
    b748:	10000141 	b	bc50 <func_80035BFC+0x1234>
    b74c:	24033027 	li	v1,12327
    b750:	0c000000 	jal	0 <ActorShape_Init>
    b754:	240400f0 	li	a0,240
    b758:	10400003 	beqz	v0,b768 <func_80035BFC+0xd4c>
    b75c:	00000000 	nop
    b760:	1000013b 	b	bc50 <func_80035BFC+0x1234>
    b764:	24033015 	li	v1,12309
    b768:	10000139 	b	bc50 <func_80035BFC+0x1234>
    b76c:	24033014 	li	v1,12308
    b770:	0c000000 	jal	0 <ActorShape_Init>
    b774:	2404002c 	li	a0,44
    b778:	10400003 	beqz	v0,b788 <func_80035BFC+0xd6c>
    b77c:	00000000 	nop
    b780:	10000133 	b	bc50 <func_80035BFC+0x1234>
    b784:	24034043 	li	v1,16451
    b788:	10000131 	b	bc50 <func_80035BFC+0x1234>
    b78c:	2403302a 	li	v1,12330
    b790:	3c0d0000 	lui	t5,0x0
    b794:	8dad0004 	lw	t5,4(t5)
    b798:	11a0000f 	beqz	t5,b7d8 <func_80035BFC+0xdbc>
    b79c:	00000000 	nop
    b7a0:	0c000000 	jal	0 <ActorShape_Init>
    b7a4:	24040025 	li	a0,37
    b7a8:	10400003 	beqz	v0,b7b8 <func_80035BFC+0xd9c>
    b7ac:	00000000 	nop
    b7b0:	10000127 	b	bc50 <func_80035BFC+0x1234>
    b7b4:	24033027 	li	v1,12327
    b7b8:	0c000000 	jal	0 <ActorShape_Init>
    b7bc:	240400f4 	li	a0,244
    b7c0:	10400003 	beqz	v0,b7d0 <func_80035BFC+0xdb4>
    b7c4:	00000000 	nop
    b7c8:	10000121 	b	bc50 <func_80035BFC+0x1234>
    b7cc:	24033017 	li	v1,12311
    b7d0:	1000011f 	b	bc50 <func_80035BFC+0x1234>
    b7d4:	24033016 	li	v1,12310
    b7d8:	0c000000 	jal	0 <ActorShape_Init>
    b7dc:	2404002c 	li	a0,44
    b7e0:	10400003 	beqz	v0,b7f0 <func_80035BFC+0xdd4>
    b7e4:	00000000 	nop
    b7e8:	10000119 	b	bc50 <func_80035BFC+0x1234>
    b7ec:	24034043 	li	v1,16451
    b7f0:	10000117 	b	bc50 <func_80035BFC+0x1234>
    b7f4:	2403302a 	li	v1,12330
    b7f8:	3c0e0000 	lui	t6,0x0
    b7fc:	8dce0004 	lw	t6,4(t6)
    b800:	11c0000f 	beqz	t6,b840 <func_80035BFC+0xe24>
    b804:	00000000 	nop
    b808:	0c000000 	jal	0 <ActorShape_Init>
    b80c:	24040025 	li	a0,37
    b810:	10400003 	beqz	v0,b820 <func_80035BFC+0xe04>
    b814:	00000000 	nop
    b818:	1000010d 	b	bc50 <func_80035BFC+0x1234>
    b81c:	24033027 	li	v1,12327
    b820:	0c000000 	jal	0 <ActorShape_Init>
    b824:	240400f8 	li	a0,248
    b828:	10400003 	beqz	v0,b838 <func_80035BFC+0xe1c>
    b82c:	00000000 	nop
    b830:	10000107 	b	bc50 <func_80035BFC+0x1234>
    b834:	24033019 	li	v1,12313
    b838:	10000105 	b	bc50 <func_80035BFC+0x1234>
    b83c:	24033018 	li	v1,12312
    b840:	0c000000 	jal	0 <ActorShape_Init>
    b844:	2404002d 	li	a0,45
    b848:	10400003 	beqz	v0,b858 <func_80035BFC+0xe3c>
    b84c:	00000000 	nop
    b850:	100000ff 	b	bc50 <func_80035BFC+0x1234>
    b854:	24034043 	li	v1,16451
    b858:	100000fd 	b	bc50 <func_80035BFC+0x1234>
    b85c:	2403302a 	li	v1,12330
    b860:	0c000000 	jal	0 <ActorShape_Init>
    b864:	24040025 	li	a0,37
    b868:	10400003 	beqz	v0,b878 <func_80035BFC+0xe5c>
    b86c:	00000000 	nop
    b870:	100000f7 	b	bc50 <func_80035BFC+0x1234>
    b874:	24033029 	li	v1,12329
    b878:	0c000000 	jal	0 <ActorShape_Init>
    b87c:	24040020 	li	a0,32
    b880:	10400007 	beqz	v0,b8a0 <func_80035BFC+0xe84>
    b884:	00000000 	nop
    b888:	0c000000 	jal	0 <ActorShape_Init>
    b88c:	24040021 	li	a0,33
    b890:	10400003 	beqz	v0,b8a0 <func_80035BFC+0xe84>
    b894:	00000000 	nop
    b898:	100000ed 	b	bc50 <func_80035BFC+0x1234>
    b89c:	2403301b 	li	v1,12315
    b8a0:	100000eb 	b	bc50 <func_80035BFC+0x1234>
    b8a4:	2403301a 	li	v1,12314
    b8a8:	0c000000 	jal	0 <ActorShape_Init>
    b8ac:	24040037 	li	a0,55
    b8b0:	10400003 	beqz	v0,b8c0 <func_80035BFC+0xea4>
    b8b4:	00000000 	nop
    b8b8:	100000e5 	b	bc50 <func_80035BFC+0x1234>
    b8bc:	2403402d 	li	v1,16429
    b8c0:	0c000000 	jal	0 <ActorShape_Init>
    b8c4:	24040030 	li	a0,48
    b8c8:	10400003 	beqz	v0,b8d8 <func_80035BFC+0xebc>
    b8cc:	00000000 	nop
    b8d0:	100000df 	b	bc50 <func_80035BFC+0x1234>
    b8d4:	24034007 	li	v1,16391
    b8d8:	100000dd 	b	bc50 <func_80035BFC+0x1234>
    b8dc:	24034006 	li	v1,16390
    b8e0:	0c000000 	jal	0 <ActorShape_Init>
    b8e4:	24040037 	li	a0,55
    b8e8:	10400003 	beqz	v0,b8f8 <func_80035BFC+0xedc>
    b8ec:	00000000 	nop
    b8f0:	100000d7 	b	bc50 <func_80035BFC+0x1234>
    b8f4:	2403402e 	li	v1,16430
    b8f8:	0c000000 	jal	0 <ActorShape_Init>
    b8fc:	24040030 	li	a0,48
    b900:	10400009 	beqz	v0,b928 <func_80035BFC+0xf0c>
    b904:	00000000 	nop
    b908:	0c000000 	jal	0 <ActorShape_Init>
    b90c:	24040124 	li	a0,292
    b910:	10400003 	beqz	v0,b920 <func_80035BFC+0xf04>
    b914:	00000000 	nop
    b918:	100000cd 	b	bc50 <func_80035BFC+0x1234>
    b91c:	24034009 	li	v1,16393
    b920:	100000cb 	b	bc50 <func_80035BFC+0x1234>
    b924:	24034008 	li	v1,16392
    b928:	100000c9 	b	bc50 <func_80035BFC+0x1234>
    b92c:	24034006 	li	v1,16390
    b930:	0c000000 	jal	0 <ActorShape_Init>
    b934:	24040037 	li	a0,55
    b938:	10400003 	beqz	v0,b948 <func_80035BFC+0xf2c>
    b93c:	00000000 	nop
    b940:	100000c3 	b	bc50 <func_80035BFC+0x1234>
    b944:	2403402d 	li	v1,16429
    b948:	0c000000 	jal	0 <ActorShape_Init>
    b94c:	24040031 	li	a0,49
    b950:	10400009 	beqz	v0,b978 <func_80035BFC+0xf5c>
    b954:	00000000 	nop
    b958:	0c000000 	jal	0 <ActorShape_Init>
    b95c:	2404012a 	li	a0,298
    b960:	10400003 	beqz	v0,b970 <func_80035BFC+0xf54>
    b964:	00000000 	nop
    b968:	100000b9 	b	bc50 <func_80035BFC+0x1234>
    b96c:	2403400b 	li	v1,16395
    b970:	100000b7 	b	bc50 <func_80035BFC+0x1234>
    b974:	2403402f 	li	v1,16431
    b978:	0c000000 	jal	0 <ActorShape_Init>
    b97c:	24040030 	li	a0,48
    b980:	10400003 	beqz	v0,b990 <func_80035BFC+0xf74>
    b984:	00000000 	nop
    b988:	100000b1 	b	bc50 <func_80035BFC+0x1234>
    b98c:	2403400a 	li	v1,16394
    b990:	100000af 	b	bc50 <func_80035BFC+0x1234>
    b994:	24034006 	li	v1,16390
    b998:	0c000000 	jal	0 <ActorShape_Init>
    b99c:	24040037 	li	a0,55
    b9a0:	10400003 	beqz	v0,b9b0 <func_80035BFC+0xf94>
    b9a4:	00000000 	nop
    b9a8:	100000a9 	b	bc50 <func_80035BFC+0x1234>
    b9ac:	2403402e 	li	v1,16430
    b9b0:	0c000000 	jal	0 <ActorShape_Init>
    b9b4:	24040030 	li	a0,48
    b9b8:	10400003 	beqz	v0,b9c8 <func_80035BFC+0xfac>
    b9bc:	00000000 	nop
    b9c0:	100000a3 	b	bc50 <func_80035BFC+0x1234>
    b9c4:	2403400c 	li	v1,16396
    b9c8:	100000a1 	b	bc50 <func_80035BFC+0x1234>
    b9cc:	24034006 	li	v1,16390
    b9d0:	0c000000 	jal	0 <ActorShape_Init>
    b9d4:	24040037 	li	a0,55
    b9d8:	10400003 	beqz	v0,b9e8 <func_80035BFC+0xfcc>
    b9dc:	00000000 	nop
    b9e0:	1000009b 	b	bc50 <func_80035BFC+0x1234>
    b9e4:	2403402d 	li	v1,16429
    b9e8:	0c000000 	jal	0 <ActorShape_Init>
    b9ec:	24040033 	li	a0,51
    b9f0:	10400003 	beqz	v0,ba00 <func_80035BFC+0xfe4>
    b9f4:	00000000 	nop
    b9f8:	10000095 	b	bc50 <func_80035BFC+0x1234>
    b9fc:	24034010 	li	v1,16400
    ba00:	0c000000 	jal	0 <ActorShape_Init>
    ba04:	24040030 	li	a0,48
    ba08:	10400003 	beqz	v0,ba18 <func_80035BFC+0xffc>
    ba0c:	00000000 	nop
    ba10:	1000008f 	b	bc50 <func_80035BFC+0x1234>
    ba14:	2403400f 	li	v1,16399
    ba18:	1000008d 	b	bc50 <func_80035BFC+0x1234>
    ba1c:	24034006 	li	v1,16390
    ba20:	0c000000 	jal	0 <ActorShape_Init>
    ba24:	24040037 	li	a0,55
    ba28:	10400003 	beqz	v0,ba38 <func_80035BFC+0x101c>
    ba2c:	00000000 	nop
    ba30:	10000087 	b	bc50 <func_80035BFC+0x1234>
    ba34:	2403402e 	li	v1,16430
    ba38:	0c000000 	jal	0 <ActorShape_Init>
    ba3c:	24040030 	li	a0,48
    ba40:	10400003 	beqz	v0,ba50 <func_80035BFC+0x1034>
    ba44:	00000000 	nop
    ba48:	10000081 	b	bc50 <func_80035BFC+0x1234>
    ba4c:	24034011 	li	v1,16401
    ba50:	1000007f 	b	bc50 <func_80035BFC+0x1234>
    ba54:	24034006 	li	v1,16390
    ba58:	3c0f0000 	lui	t7,0x0
    ba5c:	8def0004 	lw	t7,4(t7)
    ba60:	11e0007b 	beqz	t7,bc50 <func_80035BFC+0x1234>
    ba64:	00000000 	nop
    ba68:	0c000000 	jal	0 <ActorShape_Init>
    ba6c:	24040037 	li	a0,55
    ba70:	10400003 	beqz	v0,ba80 <func_80035BFC+0x1064>
    ba74:	00000000 	nop
    ba78:	10000075 	b	bc50 <func_80035BFC+0x1234>
    ba7c:	2403402b 	li	v1,16427
    ba80:	0c000000 	jal	0 <ActorShape_Init>
    ba84:	24040031 	li	a0,49
    ba88:	10400009 	beqz	v0,bab0 <func_80035BFC+0x1094>
    ba8c:	00000000 	nop
    ba90:	0c000000 	jal	0 <ActorShape_Init>
    ba94:	24040138 	li	a0,312
    ba98:	10400003 	beqz	v0,baa8 <func_80035BFC+0x108c>
    ba9c:	00000000 	nop
    baa0:	1000006b 	b	bc50 <func_80035BFC+0x1234>
    baa4:	2403401c 	li	v1,16412
    baa8:	10000069 	b	bc50 <func_80035BFC+0x1234>
    baac:	2403401b 	li	v1,16411
    bab0:	10000067 	b	bc50 <func_80035BFC+0x1234>
    bab4:	2403401a 	li	v1,16410
    bab8:	10000065 	b	bc50 <func_80035BFC+0x1234>
    babc:	2403500f 	li	v1,20495
    bac0:	10000063 	b	bc50 <func_80035BFC+0x1234>
    bac4:	24035010 	li	v1,20496
    bac8:	10000061 	b	bc50 <func_80035BFC+0x1234>
    bacc:	24035012 	li	v1,20498
    bad0:	0c000000 	jal	0 <ActorShape_Init>
    bad4:	24040166 	li	a0,358
    bad8:	10400003 	beqz	v0,bae8 <func_80035BFC+0x10cc>
    badc:	00000000 	nop
    bae0:	1000005b 	b	bc50 <func_80035BFC+0x1234>
    bae4:	24035001 	li	v1,20481
    bae8:	10000059 	b	bc50 <func_80035BFC+0x1234>
    baec:	24035000 	li	v1,20480
    baf0:	10000057 	b	bc50 <func_80035BFC+0x1234>
    baf4:	24035012 	li	v1,20498
    baf8:	0c000000 	jal	0 <ActorShape_Init>
    bafc:	2404016a 	li	a0,362
    bb00:	10400003 	beqz	v0,bb10 <func_80035BFC+0x10f4>
    bb04:	00000000 	nop
    bb08:	10000051 	b	bc50 <func_80035BFC+0x1234>
    bb0c:	24035001 	li	v1,20481
    bb10:	1000004f 	b	bc50 <func_80035BFC+0x1234>
    bb14:	24035000 	li	v1,20480
    bb18:	0c000000 	jal	0 <ActorShape_Init>
    bb1c:	24040016 	li	a0,22
    bb20:	10400003 	beqz	v0,bb30 <func_80035BFC+0x1114>
    bb24:	00000000 	nop
    bb28:	10000049 	b	bc50 <func_80035BFC+0x1234>
    bb2c:	24032049 	li	v1,8265
    bb30:	0c000000 	jal	0 <ActorShape_Init>
    bb34:	24040015 	li	a0,21
    bb38:	10400003 	beqz	v0,bb48 <func_80035BFC+0x112c>
    bb3c:	00000000 	nop
    bb40:	10000043 	b	bc50 <func_80035BFC+0x1234>
    bb44:	24032048 	li	v1,8264
    bb48:	0c000000 	jal	0 <ActorShape_Init>
    bb4c:	24040014 	li	a0,20
    bb50:	10400003 	beqz	v0,bb60 <func_80035BFC+0x1144>
    bb54:	00000000 	nop
    bb58:	1000003d 	b	bc50 <func_80035BFC+0x1234>
    bb5c:	24032047 	li	v1,8263
    bb60:	0c000000 	jal	0 <ActorShape_Init>
    bb64:	24040012 	li	a0,18
    bb68:	10400007 	beqz	v0,bb88 <func_80035BFC+0x116c>
    bb6c:	00000000 	nop
    bb70:	0c000000 	jal	0 <ActorShape_Init>
    bb74:	24040014 	li	a0,20
    bb78:	14400003 	bnez	v0,bb88 <func_80035BFC+0x116c>
    bb7c:	00000000 	nop
    bb80:	10000033 	b	bc50 <func_80035BFC+0x1234>
    bb84:	24032044 	li	v1,8260
    bb88:	0c000000 	jal	0 <ActorShape_Init>
    bb8c:	24040010 	li	a0,16
    bb90:	10400009 	beqz	v0,bbb8 <func_80035BFC+0x119c>
    bb94:	00000000 	nop
    bb98:	0c000000 	jal	0 <ActorShape_Init>
    bb9c:	24040011 	li	a0,17
    bba0:	10400003 	beqz	v0,bbb0 <func_80035BFC+0x1194>
    bba4:	00000000 	nop
    bba8:	10000029 	b	bc50 <func_80035BFC+0x1234>
    bbac:	24032043 	li	v1,8259
    bbb0:	10000027 	b	bc50 <func_80035BFC+0x1234>
    bbb4:	24032042 	li	v1,8258
    bbb8:	10000025 	b	bc50 <func_80035BFC+0x1234>
    bbbc:	24032041 	li	v1,8257
    bbc0:	3c180000 	lui	t8,0x0
    bbc4:	8f180004 	lw	t8,4(t8)
    bbc8:	53000010 	beqzl	t8,bc0c <func_80035BFC+0x11f0>
    bbcc:	24040018 	li	a0,24
    bbd0:	0c000000 	jal	0 <ActorShape_Init>
    bbd4:	24040014 	li	a0,20
    bbd8:	10400003 	beqz	v0,bbe8 <func_80035BFC+0x11cc>
    bbdc:	00000000 	nop
    bbe0:	1000001b 	b	bc50 <func_80035BFC+0x1234>
    bbe4:	24032040 	li	v1,8256
    bbe8:	0c000000 	jal	0 <ActorShape_Init>
    bbec:	24040094 	li	a0,148
    bbf0:	10400003 	beqz	v0,bc00 <func_80035BFC+0x11e4>
    bbf4:	00000000 	nop
    bbf8:	10000015 	b	bc50 <func_80035BFC+0x1234>
    bbfc:	24032040 	li	v1,8256
    bc00:	10000013 	b	bc50 <func_80035BFC+0x1234>
    bc04:	2403203f 	li	v1,8255
    bc08:	24040018 	li	a0,24
    bc0c:	0c000000 	jal	0 <ActorShape_Init>
    bc10:	a7a3001e 	sh	v1,30(sp)
    bc14:	1440000e 	bnez	v0,bc50 <func_80035BFC+0x1234>
    bc18:	97a3001e 	lhu	v1,30(sp)
    bc1c:	3c190000 	lui	t9,0x0
    bc20:	8f390010 	lw	t9,16(t9)
    bc24:	13200003 	beqz	t9,bc34 <func_80035BFC+0x1218>
    bc28:	00000000 	nop
    bc2c:	10000008 	b	bc50 <func_80035BFC+0x1234>
    bc30:	2403204e 	li	v1,8270
    bc34:	0c000000 	jal	0 <ActorShape_Init>
    bc38:	2404009a 	li	a0,154
    bc3c:	50400004 	beqzl	v0,bc50 <func_80035BFC+0x1234>
    bc40:	24032030 	li	v1,8240
    bc44:	10000002 	b	bc50 <func_80035BFC+0x1234>
    bc48:	24032031 	li	v1,8241
    bc4c:	24032030 	li	v1,8240
    bc50:	54600003 	bnezl	v1,bc60 <func_80035BFC+0x1244>
    bc54:	8fbf0014 	lw	ra,20(sp)
    bc58:	24030001 	li	v1,1
    bc5c:	8fbf0014 	lw	ra,20(sp)
    bc60:	27bd0020 	addiu	sp,sp,32
    bc64:	00601025 	move	v0,v1
    bc68:	03e00008 	jr	ra
    bc6c:	00000000 	nop

0000bc70 <func_80036E50>:
    bc70:	27bdffd8 	addiu	sp,sp,-40
    bc74:	afa5002c 	sw	a1,44(sp)
    bc78:	00052c00 	sll	a1,a1,0x10
    bc7c:	00052c03 	sra	a1,a1,0x10
    bc80:	afa40028 	sw	a0,40(sp)
    bc84:	2ca10049 	sltiu	at,a1,73
    bc88:	3084ffff 	andi	a0,a0,0xffff
    bc8c:	10200198 	beqz	at,c2f0 <func_80036E50+0x680>
    bc90:	afbf001c 	sw	ra,28(sp)
    bc94:	00057080 	sll	t6,a1,0x2
    bc98:	3c010000 	lui	at,0x0
    bc9c:	002e0821 	addu	at,at,t6
    bca0:	8c2e0ddc 	lw	t6,3548(at)
    bca4:	01c00008 	jr	t6
    bca8:	00000000 	nop
    bcac:	24011001 	li	at,4097
    bcb0:	10810009 	beq	a0,at,bcd8 <func_80036E50+0x68>
    bcb4:	24011002 	li	at,4098
    bcb8:	1081000b 	beq	a0,at,bce8 <func_80036E50+0x78>
    bcbc:	24011031 	li	at,4145
    bcc0:	1081000d 	beq	a0,at,bcf8 <func_80036E50+0x88>
    bcc4:	24011047 	li	at,4167
    bcc8:	10810011 	beq	a0,at,bd10 <func_80036E50+0xa0>
    bccc:	00000000 	nop
    bcd0:	10000188 	b	c2f4 <func_80036E50+0x684>
    bcd4:	8fbf001c 	lw	ra,28(sp)
    bcd8:	0c000000 	jal	0 <ActorShape_Init>
    bcdc:	00002025 	move	a0,zero
    bce0:	10000184 	b	c2f4 <func_80036E50+0x684>
    bce4:	8fbf001c 	lw	ra,28(sp)
    bce8:	0c000000 	jal	0 <ActorShape_Init>
    bcec:	24040001 	li	a0,1
    bcf0:	10000180 	b	c2f4 <func_80036E50+0x684>
    bcf4:	8fbf001c 	lw	ra,28(sp)
    bcf8:	0c000000 	jal	0 <ActorShape_Init>
    bcfc:	24040003 	li	a0,3
    bd00:	0c000000 	jal	0 <ActorShape_Init>
    bd04:	24040003 	li	a0,3
    bd08:	1000017a 	b	c2f4 <func_80036E50+0x684>
    bd0c:	8fbf001c 	lw	ra,28(sp)
    bd10:	0c000000 	jal	0 <ActorShape_Init>
    bd14:	24040005 	li	a0,5
    bd18:	10000176 	b	c2f4 <func_80036E50+0x684>
    bd1c:	8fbf001c 	lw	ra,28(sp)
    bd20:	2401102f 	li	at,4143
    bd24:	1081000e 	beq	a0,at,bd60 <func_80036E50+0xf0>
    bd28:	24011033 	li	at,4147
    bd2c:	10810012 	beq	a0,at,bd78 <func_80036E50+0x108>
    bd30:	3c070000 	lui	a3,0x0
    bd34:	24011045 	li	at,4165
    bd38:	1081001f 	beq	a0,at,bdb8 <func_80036E50+0x148>
    bd3c:	24011060 	li	at,4192
    bd40:	10810021 	beq	a0,at,bdc8 <func_80036E50+0x158>
    bd44:	24011067 	li	at,4199
    bd48:	10810023 	beq	a0,at,bdd8 <func_80036E50+0x168>
    bd4c:	24011070 	li	at,4208
    bd50:	10810027 	beq	a0,at,bdf0 <func_80036E50+0x180>
    bd54:	00000000 	nop
    bd58:	10000166 	b	c2f4 <func_80036E50+0x684>
    bd5c:	8fbf001c 	lw	ra,28(sp)
    bd60:	0c000000 	jal	0 <ActorShape_Init>
    bd64:	24040002 	li	a0,2
    bd68:	0c000000 	jal	0 <ActorShape_Init>
    bd6c:	2404000c 	li	a0,12
    bd70:	10000160 	b	c2f4 <func_80036E50+0x684>
    bd74:	8fbf001c 	lw	ra,28(sp)
    bd78:	3c0f0000 	lui	t7,0x0
    bd7c:	24e70000 	addiu	a3,a3,0
    bd80:	25ef0000 	addiu	t7,t7,0
    bd84:	3c050000 	lui	a1,0x0
    bd88:	24a50000 	addiu	a1,a1,0
    bd8c:	afaf0014 	sw	t7,20(sp)
    bd90:	afa70010 	sw	a3,16(sp)
    bd94:	24044802 	li	a0,18434
    bd98:	0c000000 	jal	0 <ActorShape_Init>
    bd9c:	24060004 	li	a2,4
    bda0:	0c000000 	jal	0 <ActorShape_Init>
    bda4:	24040004 	li	a0,4
    bda8:	0c000000 	jal	0 <ActorShape_Init>
    bdac:	2404000e 	li	a0,14
    bdb0:	10000150 	b	c2f4 <func_80036E50+0x684>
    bdb4:	8fbf001c 	lw	ra,28(sp)
    bdb8:	0c000000 	jal	0 <ActorShape_Init>
    bdbc:	24040010 	li	a0,16
    bdc0:	1000014c 	b	c2f4 <func_80036E50+0x684>
    bdc4:	8fbf001c 	lw	ra,28(sp)
    bdc8:	0c000000 	jal	0 <ActorShape_Init>
    bdcc:	24040015 	li	a0,21
    bdd0:	10000148 	b	c2f4 <func_80036E50+0x684>
    bdd4:	8fbf001c 	lw	ra,28(sp)
    bdd8:	0c000000 	jal	0 <ActorShape_Init>
    bddc:	2404000a 	li	a0,10
    bde0:	0c000000 	jal	0 <ActorShape_Init>
    bde4:	24040017 	li	a0,23
    bde8:	10000142 	b	c2f4 <func_80036E50+0x684>
    bdec:	8fbf001c 	lw	ra,28(sp)
    bdf0:	0c000000 	jal	0 <ActorShape_Init>
    bdf4:	24040019 	li	a0,25
    bdf8:	1000013e 	b	c2f4 <func_80036E50+0x684>
    bdfc:	8fbf001c 	lw	ra,28(sp)
    be00:	24011056 	li	at,4182
    be04:	5481013b 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    be08:	8fbf001c 	lw	ra,28(sp)
    be0c:	0c000000 	jal	0 <ActorShape_Init>
    be10:	24040041 	li	a0,65
    be14:	10000137 	b	c2f4 <func_80036E50+0x684>
    be18:	8fbf001c 	lw	ra,28(sp)
    be1c:	24011005 	li	at,4101
    be20:	54810134 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    be24:	8fbf001c 	lw	ra,28(sp)
    be28:	0c000000 	jal	0 <ActorShape_Init>
    be2c:	2404001e 	li	a0,30
    be30:	10000130 	b	c2f4 <func_80036E50+0x684>
    be34:	8fbf001c 	lw	ra,28(sp)
    be38:	2401105d 	li	at,4189
    be3c:	5481012d 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    be40:	8fbf001c 	lw	ra,28(sp)
    be44:	0c000000 	jal	0 <ActorShape_Init>
    be48:	24040047 	li	a0,71
    be4c:	10000129 	b	c2f4 <func_80036E50+0x684>
    be50:	8fbf001c 	lw	ra,28(sp)
    be54:	24011008 	li	at,4104
    be58:	54810126 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    be5c:	8fbf001c 	lw	ra,28(sp)
    be60:	0c000000 	jal	0 <ActorShape_Init>
    be64:	24040022 	li	a0,34
    be68:	10000122 	b	c2f4 <func_80036E50+0x684>
    be6c:	8fbf001c 	lw	ra,28(sp)
    be70:	2401100a 	li	at,4106
    be74:	5481011f 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    be78:	8fbf001c 	lw	ra,28(sp)
    be7c:	0c000000 	jal	0 <ActorShape_Init>
    be80:	24040024 	li	a0,36
    be84:	1000011b 	b	c2f4 <func_80036E50+0x684>
    be88:	8fbf001c 	lw	ra,28(sp)
    be8c:	2401100c 	li	at,4108
    be90:	54810118 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    be94:	8fbf001c 	lw	ra,28(sp)
    be98:	0c000000 	jal	0 <ActorShape_Init>
    be9c:	24040026 	li	a0,38
    bea0:	10000114 	b	c2f4 <func_80036E50+0x684>
    bea4:	8fbf001c 	lw	ra,28(sp)
    bea8:	2401100e 	li	at,4110
    beac:	14810005 	bne	a0,at,bec4 <func_80036E50+0x254>
    beb0:	00801025 	move	v0,a0
    beb4:	24040028 	li	a0,40
    beb8:	0c000000 	jal	0 <ActorShape_Init>
    bebc:	afa20020 	sw	v0,32(sp)
    bec0:	8fa20020 	lw	v0,32(sp)
    bec4:	24011059 	li	at,4185
    bec8:	5441010a 	bnel	v0,at,c2f4 <func_80036E50+0x684>
    becc:	8fbf001c 	lw	ra,28(sp)
    bed0:	0c000000 	jal	0 <ActorShape_Init>
    bed4:	24040051 	li	a0,81
    bed8:	10000106 	b	c2f4 <func_80036E50+0x684>
    bedc:	8fbf001c 	lw	ra,28(sp)
    bee0:	2401104f 	li	at,4175
    bee4:	54810103 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    bee8:	8fbf001c 	lw	ra,28(sp)
    beec:	0c000000 	jal	0 <ActorShape_Init>
    bef0:	24040059 	li	a0,89
    bef4:	100000ff 	b	c2f4 <func_80036E50+0x684>
    bef8:	8fbf001c 	lw	ra,28(sp)
    befc:	24011054 	li	at,4180
    bf00:	548100fc 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    bf04:	8fbf001c 	lw	ra,28(sp)
    bf08:	0c000000 	jal	0 <ActorShape_Init>
    bf0c:	24040061 	li	a0,97
    bf10:	100000f8 	b	c2f4 <func_80036E50+0x684>
    bf14:	8fbf001c 	lw	ra,28(sp)
    bf18:	24011062 	li	at,4194
    bf1c:	548100f5 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    bf20:	8fbf001c 	lw	ra,28(sp)
    bf24:	0c000000 	jal	0 <ActorShape_Init>
    bf28:	24040066 	li	a0,102
    bf2c:	100000f1 	b	c2f4 <func_80036E50+0x684>
    bf30:	8fbf001c 	lw	ra,28(sp)
    bf34:	24017002 	li	at,28674
    bf38:	14810005 	bne	a0,at,bf50 <func_80036E50+0x2e0>
    bf3c:	00801025 	move	v0,a0
    bf40:	2404006a 	li	a0,106
    bf44:	0c000000 	jal	0 <ActorShape_Init>
    bf48:	afa20020 	sw	v0,32(sp)
    bf4c:	8fa20020 	lw	v0,32(sp)
    bf50:	24017003 	li	at,28675
    bf54:	544100e7 	bnel	v0,at,c2f4 <func_80036E50+0x684>
    bf58:	8fbf001c 	lw	ra,28(sp)
    bf5c:	0c000000 	jal	0 <ActorShape_Init>
    bf60:	2404006a 	li	a0,106
    bf64:	100000e3 	b	c2f4 <func_80036E50+0x684>
    bf68:	8fbf001c 	lw	ra,28(sp)
    bf6c:	24017007 	li	at,28679
    bf70:	548100e0 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    bf74:	8fbf001c 	lw	ra,28(sp)
    bf78:	0c000000 	jal	0 <ActorShape_Init>
    bf7c:	2404006c 	li	a0,108
    bf80:	100000dc 	b	c2f4 <func_80036E50+0x684>
    bf84:	8fbf001c 	lw	ra,28(sp)
    bf88:	24017071 	li	at,28785
    bf8c:	548100d9 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    bf90:	8fbf001c 	lw	ra,28(sp)
    bf94:	0c000000 	jal	0 <ActorShape_Init>
    bf98:	24040071 	li	a0,113
    bf9c:	100000d5 	b	c2f4 <func_80036E50+0x684>
    bfa0:	8fbf001c 	lw	ra,28(sp)
    bfa4:	24012010 	li	at,8208
    bfa8:	548100d2 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    bfac:	8fbf001c 	lw	ra,28(sp)
    bfb0:	0c000000 	jal	0 <ActorShape_Init>
    bfb4:	24040076 	li	a0,118
    bfb8:	100000ce 	b	c2f4 <func_80036E50+0x684>
    bfbc:	8fbf001c 	lw	ra,28(sp)
    bfc0:	24017016 	li	at,28694
    bfc4:	548100cb 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    bfc8:	8fbf001c 	lw	ra,28(sp)
    bfcc:	0c000000 	jal	0 <ActorShape_Init>
    bfd0:	240400c2 	li	a0,194
    bfd4:	100000c7 	b	c2f4 <func_80036E50+0x684>
    bfd8:	8fbf001c 	lw	ra,28(sp)
    bfdc:	24017018 	li	at,28696
    bfe0:	548100c4 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    bfe4:	8fbf001c 	lw	ra,28(sp)
    bfe8:	0c000000 	jal	0 <ActorShape_Init>
    bfec:	240400c4 	li	a0,196
    bff0:	100000c0 	b	c2f4 <func_80036E50+0x684>
    bff4:	8fbf001c 	lw	ra,28(sp)
    bff8:	2401701d 	li	at,28701
    bffc:	548100bd 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c000:	8fbf001c 	lw	ra,28(sp)
    c004:	0c000000 	jal	0 <ActorShape_Init>
    c008:	240400ca 	li	a0,202
    c00c:	100000b9 	b	c2f4 <func_80036E50+0x684>
    c010:	8fbf001c 	lw	ra,28(sp)
    c014:	2401701f 	li	at,28703
    c018:	548100b6 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c01c:	8fbf001c 	lw	ra,28(sp)
    c020:	0c000000 	jal	0 <ActorShape_Init>
    c024:	240400cc 	li	a0,204
    c028:	100000b2 	b	c2f4 <func_80036E50+0x684>
    c02c:	8fbf001c 	lw	ra,28(sp)
    c030:	24017021 	li	at,28705
    c034:	548100af 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c038:	8fbf001c 	lw	ra,28(sp)
    c03c:	0c000000 	jal	0 <ActorShape_Init>
    c040:	240400ce 	li	a0,206
    c044:	100000ab 	b	c2f4 <func_80036E50+0x684>
    c048:	8fbf001c 	lw	ra,28(sp)
    c04c:	24017023 	li	at,28707
    c050:	548100a8 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c054:	8fbf001c 	lw	ra,28(sp)
    c058:	0c000000 	jal	0 <ActorShape_Init>
    c05c:	240400d0 	li	a0,208
    c060:	100000a4 	b	c2f4 <func_80036E50+0x684>
    c064:	8fbf001c 	lw	ra,28(sp)
    c068:	24017025 	li	at,28709
    c06c:	548100a1 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c070:	8fbf001c 	lw	ra,28(sp)
    c074:	0c000000 	jal	0 <ActorShape_Init>
    c078:	240400d2 	li	a0,210
    c07c:	1000009d 	b	c2f4 <func_80036E50+0x684>
    c080:	8fbf001c 	lw	ra,28(sp)
    c084:	24017027 	li	at,28711
    c088:	5481009a 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c08c:	8fbf001c 	lw	ra,28(sp)
    c090:	0c000000 	jal	0 <ActorShape_Init>
    c094:	240400d4 	li	a0,212
    c098:	10000096 	b	c2f4 <func_80036E50+0x684>
    c09c:	8fbf001c 	lw	ra,28(sp)
    c0a0:	2401403c 	li	at,16444
    c0a4:	54810093 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c0a8:	8fbf001c 	lw	ra,28(sp)
    c0ac:	0c000000 	jal	0 <ActorShape_Init>
    c0b0:	240400d6 	li	a0,214
    c0b4:	1000008f 	b	c2f4 <func_80036E50+0x684>
    c0b8:	8fbf001c 	lw	ra,28(sp)
    c0bc:	24015028 	li	at,20520
    c0c0:	5481008c 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c0c4:	8fbf001c 	lw	ra,28(sp)
    c0c8:	0c000000 	jal	0 <ActorShape_Init>
    c0cc:	240400d8 	li	a0,216
    c0d0:	10000088 	b	c2f4 <func_80036E50+0x684>
    c0d4:	8fbf001c 	lw	ra,28(sp)
    c0d8:	24013008 	li	at,12296
    c0dc:	54810085 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c0e0:	8fbf001c 	lw	ra,28(sp)
    c0e4:	0c000000 	jal	0 <ActorShape_Init>
    c0e8:	240400e0 	li	a0,224
    c0ec:	10000081 	b	c2f4 <func_80036E50+0x684>
    c0f0:	8fbf001c 	lw	ra,28(sp)
    c0f4:	2401300b 	li	at,12299
    c0f8:	5481007e 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c0fc:	8fbf001c 	lw	ra,28(sp)
    c100:	0c000000 	jal	0 <ActorShape_Init>
    c104:	240400eb 	li	a0,235
    c108:	1000007a 	b	c2f4 <func_80036E50+0x684>
    c10c:	8fbf001c 	lw	ra,28(sp)
    c110:	24013014 	li	at,12308
    c114:	54810077 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c118:	8fbf001c 	lw	ra,28(sp)
    c11c:	0c000000 	jal	0 <ActorShape_Init>
    c120:	240400f0 	li	a0,240
    c124:	10000073 	b	c2f4 <func_80036E50+0x684>
    c128:	8fbf001c 	lw	ra,28(sp)
    c12c:	24013016 	li	at,12310
    c130:	54810070 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c134:	8fbf001c 	lw	ra,28(sp)
    c138:	0c000000 	jal	0 <ActorShape_Init>
    c13c:	240400f4 	li	a0,244
    c140:	1000006c 	b	c2f4 <func_80036E50+0x684>
    c144:	8fbf001c 	lw	ra,28(sp)
    c148:	24013018 	li	at,12312
    c14c:	54810069 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c150:	8fbf001c 	lw	ra,28(sp)
    c154:	0c000000 	jal	0 <ActorShape_Init>
    c158:	24040020 	li	a0,32
    c15c:	0c000000 	jal	0 <ActorShape_Init>
    c160:	240400f8 	li	a0,248
    c164:	10000063 	b	c2f4 <func_80036E50+0x684>
    c168:	8fbf001c 	lw	ra,28(sp)
    c16c:	24013020 	li	at,12320
    c170:	54810060 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c174:	8fbf001c 	lw	ra,28(sp)
    c178:	0c000000 	jal	0 <ActorShape_Init>
    c17c:	24040022 	li	a0,34
    c180:	0c000000 	jal	0 <ActorShape_Init>
    c184:	24040113 	li	a0,275
    c188:	1000005a 	b	c2f4 <func_80036E50+0x684>
    c18c:	8fbf001c 	lw	ra,28(sp)
    c190:	24014006 	li	at,16390
    c194:	54810057 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c198:	8fbf001c 	lw	ra,28(sp)
    c19c:	0c000000 	jal	0 <ActorShape_Init>
    c1a0:	24040030 	li	a0,48
    c1a4:	10000053 	b	c2f4 <func_80036E50+0x684>
    c1a8:	8fbf001c 	lw	ra,28(sp)
    c1ac:	24014006 	li	at,16390
    c1b0:	14810005 	bne	a0,at,c1c8 <func_80036E50+0x558>
    c1b4:	00801025 	move	v0,a0
    c1b8:	24040030 	li	a0,48
    c1bc:	0c000000 	jal	0 <ActorShape_Init>
    c1c0:	afa20020 	sw	v0,32(sp)
    c1c4:	8fa20020 	lw	v0,32(sp)
    c1c8:	24014008 	li	at,16392
    c1cc:	54410049 	bnel	v0,at,c2f4 <func_80036E50+0x684>
    c1d0:	8fbf001c 	lw	ra,28(sp)
    c1d4:	0c000000 	jal	0 <ActorShape_Init>
    c1d8:	24040124 	li	a0,292
    c1dc:	10000045 	b	c2f4 <func_80036E50+0x684>
    c1e0:	8fbf001c 	lw	ra,28(sp)
    c1e4:	24014006 	li	at,16390
    c1e8:	14810005 	bne	a0,at,c200 <func_80036E50+0x590>
    c1ec:	00801025 	move	v0,a0
    c1f0:	24040030 	li	a0,48
    c1f4:	0c000000 	jal	0 <ActorShape_Init>
    c1f8:	afa20020 	sw	v0,32(sp)
    c1fc:	8fa20020 	lw	v0,32(sp)
    c200:	2401400a 	li	at,16394
    c204:	14410004 	bne	v0,at,c218 <func_80036E50+0x5a8>
    c208:	24040032 	li	a0,50
    c20c:	0c000000 	jal	0 <ActorShape_Init>
    c210:	afa20020 	sw	v0,32(sp)
    c214:	8fa20020 	lw	v0,32(sp)
    c218:	2401402f 	li	at,16431
    c21c:	54410035 	bnel	v0,at,c2f4 <func_80036E50+0x684>
    c220:	8fbf001c 	lw	ra,28(sp)
    c224:	0c000000 	jal	0 <ActorShape_Init>
    c228:	2404012a 	li	a0,298
    c22c:	10000031 	b	c2f4 <func_80036E50+0x684>
    c230:	8fbf001c 	lw	ra,28(sp)
    c234:	2401401b 	li	at,16411
    c238:	5481002e 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c23c:	8fbf001c 	lw	ra,28(sp)
    c240:	0c000000 	jal	0 <ActorShape_Init>
    c244:	24040033 	li	a0,51
    c248:	0c000000 	jal	0 <ActorShape_Init>
    c24c:	24040138 	li	a0,312
    c250:	10000028 	b	c2f4 <func_80036E50+0x684>
    c254:	8fbf001c 	lw	ra,28(sp)
    c258:	24015000 	li	at,20480
    c25c:	54810025 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c260:	8fbf001c 	lw	ra,28(sp)
    c264:	0c000000 	jal	0 <ActorShape_Init>
    c268:	24040166 	li	a0,358
    c26c:	10000021 	b	c2f4 <func_80036E50+0x684>
    c270:	8fbf001c 	lw	ra,28(sp)
    c274:	24015013 	li	at,20499
    c278:	5481001e 	bnel	a0,at,c2f4 <func_80036E50+0x684>
    c27c:	8fbf001c 	lw	ra,28(sp)
    c280:	0c000000 	jal	0 <ActorShape_Init>
    c284:	2404016a 	li	a0,362
    c288:	1000001a 	b	c2f4 <func_80036E50+0x684>
    c28c:	8fbf001c 	lw	ra,28(sp)
    c290:	24012041 	li	at,8257
    c294:	14810005 	bne	a0,at,c2ac <func_80036E50+0x63c>
    c298:	00801025 	move	v0,a0
    c29c:	24040010 	li	a0,16
    c2a0:	0c000000 	jal	0 <ActorShape_Init>
    c2a4:	afa20020 	sw	v0,32(sp)
    c2a8:	8fa20020 	lw	v0,32(sp)
    c2ac:	24012044 	li	at,8260
    c2b0:	14410004 	bne	v0,at,c2c4 <func_80036E50+0x654>
    c2b4:	24040012 	li	a0,18
    c2b8:	0c000000 	jal	0 <ActorShape_Init>
    c2bc:	afa20020 	sw	v0,32(sp)
    c2c0:	8fa20020 	lw	v0,32(sp)
    c2c4:	24012047 	li	at,8263
    c2c8:	14410004 	bne	v0,at,c2dc <func_80036E50+0x66c>
    c2cc:	24040015 	li	a0,21
    c2d0:	0c000000 	jal	0 <ActorShape_Init>
    c2d4:	afa20020 	sw	v0,32(sp)
    c2d8:	8fa20020 	lw	v0,32(sp)
    c2dc:	24012048 	li	at,8264
    c2e0:	54410004 	bnel	v0,at,c2f4 <func_80036E50+0x684>
    c2e4:	8fbf001c 	lw	ra,28(sp)
    c2e8:	0c000000 	jal	0 <ActorShape_Init>
    c2ec:	24040016 	li	a0,22
    c2f0:	8fbf001c 	lw	ra,28(sp)
    c2f4:	27bd0028 	addiu	sp,sp,40
    c2f8:	03e00008 	jr	ra
    c2fc:	00000000 	nop

0000c300 <func_800374E0>:
    c300:	27bdffd0 	addiu	sp,sp,-48
    c304:	afa60038 	sw	a2,56(sp)
    c308:	30c6ffff 	andi	a2,a2,0xffff
    c30c:	afb00018 	sw	s0,24(sp)
    c310:	28c1300b 	slti	at,a2,12299
    c314:	00808025 	move	s0,a0
    c318:	afbf001c 	sw	ra,28(sp)
    c31c:	afa50034 	sw	a1,52(sp)
    c320:	24030001 	li	v1,1
    c324:	14200013 	bnez	at,c374 <func_800374E0+0x74>
    c328:	00c01025 	move	v0,a2
    c32c:	2401301b 	li	at,12315
    c330:	10c1017f 	beq	a2,at,c930 <func_800374E0+0x630>
    c334:	2401301e 	li	at,12318
    c338:	10c1019a 	beq	a2,at,c9a4 <func_800374E0+0x6a4>
    c33c:	02002025 	move	a0,s0
    c340:	2401400c 	li	at,16396
    c344:	10c1019c 	beq	a2,at,c9b8 <func_800374E0+0x6b8>
    c348:	24017007 	li	at,28679
    c34c:	10c101ad 	beq	a2,at,ca04 <func_800374E0+0x704>
    c350:	02002025 	move	a0,s0
    c354:	2401703e 	li	at,28734
    c358:	10c101af 	beq	a2,at,ca18 <func_800374E0+0x718>
    c35c:	02002025 	move	a0,s0
    c360:	2401703f 	li	at,28735
    c364:	10c101b1 	beq	a2,at,ca2c <func_800374E0+0x72c>
    c368:	02002025 	move	a0,s0
    c36c:	100001b4 	b	ca40 <func_800374E0+0x740>
    c370:	8fbf001c 	lw	ra,28(sp)
    c374:	28411042 	slti	at,v0,4162
    c378:	14200018 	bnez	at,c3dc <func_800374E0+0xdc>
    c37c:	24041035 	li	a0,4149
    c380:	2841205b 	slti	at,v0,8283
    c384:	14200005 	bnez	at,c39c <func_800374E0+0x9c>
    c388:	2401300a 	li	at,12298
    c38c:	50410148 	beql	v0,at,c8b0 <func_800374E0+0x5b0>
    c390:	3401a0d8 	li	at,0xa0d8
    c394:	100001aa 	b	ca40 <func_800374E0+0x740>
    c398:	8fbf001c 	lw	ra,28(sp)
    c39c:	28411063 	slti	at,v0,4195
    c3a0:	14200009 	bnez	at,c3c8 <func_800374E0+0xc8>
    c3a4:	244edfd0 	addiu	t6,v0,-8240
    c3a8:	2dc1002b 	sltiu	at,t6,43
    c3ac:	102001a3 	beqz	at,ca3c <func_800374E0+0x73c>
    c3b0:	000e7080 	sll	t6,t6,0x2
    c3b4:	3c010000 	lui	at,0x0
    c3b8:	002e0821 	addu	at,at,t6
    c3bc:	8c2e0f00 	lw	t6,3840(at)
    c3c0:	01c00008 	jr	t6
    c3c4:	00000000 	nop
    c3c8:	24011062 	li	at,4194
    c3cc:	504100cb 	beql	v0,at,c6fc <func_800374E0+0x3fc>
    c3d0:	3401a0d8 	li	at,0xa0d8
    c3d4:	1000019a 	b	ca40 <func_800374E0+0x740>
    c3d8:	8fbf001c 	lw	ra,28(sp)
    c3dc:	1044000a 	beq	v0,a0,c408 <func_800374E0+0x108>
    c3e0:	3401a0d8 	li	at,0xa0d8
    c3e4:	24011038 	li	at,4152
    c3e8:	10410031 	beq	v0,at,c4b0 <func_800374E0+0x1b0>
    c3ec:	2401103e 	li	at,4158
    c3f0:	10410070 	beq	v0,at,c5b4 <func_800374E0+0x2b4>
    c3f4:	24011041 	li	at,4161
    c3f8:	50410082 	beql	v0,at,c604 <func_800374E0+0x304>
    c3fc:	3401a0d8 	li	at,0xa0d8
    c400:	1000018f 	b	ca40 <func_800374E0+0x740>
    c404:	8fbf001c 	lw	ra,28(sp)
    c408:	02011821 	addu	v1,s0,at
    c40c:	906263e5 	lbu	v0,25573(v1)
    c410:	2404002a 	li	a0,42
    c414:	54400015 	bnezl	v0,c46c <func_800374E0+0x16c>
    c418:	24010001 	li	at,1
    c41c:	0c000000 	jal	0 <ActorShape_Init>
    c420:	afa30020 	sw	v1,32(sp)
    c424:	10400009 	beqz	v0,c44c <func_800374E0+0x14c>
    c428:	8fa30020 	lw	v1,32(sp)
    c42c:	02002025 	move	a0,s0
    c430:	8fa50034 	lw	a1,52(sp)
    c434:	24061036 	li	a2,4150
    c438:	0c000000 	jal	0 <ActorShape_Init>
    c43c:	afa30020 	sw	v1,32(sp)
    c440:	8fa30020 	lw	v1,32(sp)
    c444:	10000008 	b	c468 <func_800374E0+0x168>
    c448:	906263e5 	lbu	v0,25573(v1)
    c44c:	02002025 	move	a0,s0
    c450:	8fa50034 	lw	a1,52(sp)
    c454:	24061041 	li	a2,4161
    c458:	0c000000 	jal	0 <ActorShape_Init>
    c45c:	afa30020 	sw	v1,32(sp)
    c460:	8fa30020 	lw	v1,32(sp)
    c464:	906263e5 	lbu	v0,25573(v1)
    c468:	24010001 	li	at,1
    c46c:	1441000e 	bne	v0,at,c4a8 <func_800374E0+0x1a8>
    c470:	00000000 	nop
    c474:	0c000000 	jal	0 <ActorShape_Init>
    c478:	2404002b 	li	a0,43
    c47c:	10400007 	beqz	v0,c49c <func_800374E0+0x19c>
    c480:	02002025 	move	a0,s0
    c484:	02002025 	move	a0,s0
    c488:	8fa50034 	lw	a1,52(sp)
    c48c:	0c000000 	jal	0 <ActorShape_Init>
    c490:	24061037 	li	a2,4151
    c494:	10000169 	b	ca3c <func_800374E0+0x73c>
    c498:	00001825 	move	v1,zero
    c49c:	8fa50034 	lw	a1,52(sp)
    c4a0:	0c000000 	jal	0 <ActorShape_Init>
    c4a4:	24061041 	li	a2,4161
    c4a8:	10000164 	b	ca3c <func_800374E0+0x73c>
    c4ac:	00001825 	move	v1,zero
    c4b0:	3401a0d8 	li	at,0xa0d8
    c4b4:	02011821 	addu	v1,s0,at
    c4b8:	906263e5 	lbu	v0,25573(v1)
    c4bc:	2404002e 	li	a0,46
    c4c0:	54400015 	bnezl	v0,c518 <func_800374E0+0x218>
    c4c4:	24010001 	li	at,1
    c4c8:	0c000000 	jal	0 <ActorShape_Init>
    c4cc:	afa30020 	sw	v1,32(sp)
    c4d0:	10400009 	beqz	v0,c4f8 <func_800374E0+0x1f8>
    c4d4:	8fa30020 	lw	v1,32(sp)
    c4d8:	02002025 	move	a0,s0
    c4dc:	8fa50034 	lw	a1,52(sp)
    c4e0:	24061039 	li	a2,4153
    c4e4:	0c000000 	jal	0 <ActorShape_Init>
    c4e8:	afa30020 	sw	v1,32(sp)
    c4ec:	8fa30020 	lw	v1,32(sp)
    c4f0:	10000008 	b	c514 <func_800374E0+0x214>
    c4f4:	906263e5 	lbu	v0,25573(v1)
    c4f8:	02002025 	move	a0,s0
    c4fc:	8fa50034 	lw	a1,52(sp)
    c500:	24061041 	li	a2,4161
    c504:	0c000000 	jal	0 <ActorShape_Init>
    c508:	afa30020 	sw	v1,32(sp)
    c50c:	8fa30020 	lw	v1,32(sp)
    c510:	906263e5 	lbu	v0,25573(v1)
    c514:	24010001 	li	at,1
    c518:	14410014 	bne	v0,at,c56c <func_800374E0+0x26c>
    c51c:	2404002f 	li	a0,47
    c520:	0c000000 	jal	0 <ActorShape_Init>
    c524:	afa30020 	sw	v1,32(sp)
    c528:	10400009 	beqz	v0,c550 <func_800374E0+0x250>
    c52c:	8fa30020 	lw	v1,32(sp)
    c530:	02002025 	move	a0,s0
    c534:	8fa50034 	lw	a1,52(sp)
    c538:	2406103a 	li	a2,4154
    c53c:	0c000000 	jal	0 <ActorShape_Init>
    c540:	afa30020 	sw	v1,32(sp)
    c544:	8fa30020 	lw	v1,32(sp)
    c548:	10000008 	b	c56c <func_800374E0+0x26c>
    c54c:	906263e5 	lbu	v0,25573(v1)
    c550:	02002025 	move	a0,s0
    c554:	8fa50034 	lw	a1,52(sp)
    c558:	24061041 	li	a2,4161
    c55c:	0c000000 	jal	0 <ActorShape_Init>
    c560:	afa30020 	sw	v1,32(sp)
    c564:	8fa30020 	lw	v1,32(sp)
    c568:	906263e5 	lbu	v0,25573(v1)
    c56c:	24010002 	li	at,2
    c570:	1441000e 	bne	v0,at,c5ac <func_800374E0+0x2ac>
    c574:	00000000 	nop
    c578:	0c000000 	jal	0 <ActorShape_Init>
    c57c:	24040030 	li	a0,48
    c580:	10400007 	beqz	v0,c5a0 <func_800374E0+0x2a0>
    c584:	02002025 	move	a0,s0
    c588:	02002025 	move	a0,s0
    c58c:	8fa50034 	lw	a1,52(sp)
    c590:	0c000000 	jal	0 <ActorShape_Init>
    c594:	2406103b 	li	a2,4155
    c598:	10000128 	b	ca3c <func_800374E0+0x73c>
    c59c:	00001825 	move	v1,zero
    c5a0:	8fa50034 	lw	a1,52(sp)
    c5a4:	0c000000 	jal	0 <ActorShape_Init>
    c5a8:	24061041 	li	a2,4161
    c5ac:	10000123 	b	ca3c <func_800374E0+0x73c>
    c5b0:	00001825 	move	v1,zero
    c5b4:	3401a0d8 	li	at,0xa0d8
    c5b8:	02011821 	addu	v1,s0,at
    c5bc:	906263e5 	lbu	v0,25573(v1)
    c5c0:	02002025 	move	a0,s0
    c5c4:	8fa50034 	lw	a1,52(sp)
    c5c8:	14400005 	bnez	v0,c5e0 <func_800374E0+0x2e0>
    c5cc:	2406103f 	li	a2,4159
    c5d0:	0c000000 	jal	0 <ActorShape_Init>
    c5d4:	afa30020 	sw	v1,32(sp)
    c5d8:	8fa30020 	lw	v1,32(sp)
    c5dc:	906263e5 	lbu	v0,25573(v1)
    c5e0:	24010001 	li	at,1
    c5e4:	14410004 	bne	v0,at,c5f8 <func_800374E0+0x2f8>
    c5e8:	02002025 	move	a0,s0
    c5ec:	8fa50034 	lw	a1,52(sp)
    c5f0:	0c000000 	jal	0 <ActorShape_Init>
    c5f4:	24061040 	li	a2,4160
    c5f8:	10000110 	b	ca3c <func_800374E0+0x73c>
    c5fc:	00001825 	move	v1,zero
    c600:	3401a0d8 	li	at,0xa0d8
    c604:	02011821 	addu	v1,s0,at
    c608:	946f62fa 	lhu	t7,25338(v1)
    c60c:	548f0017 	bnel	a0,t7,c66c <func_800374E0+0x36c>
    c610:	947862fa 	lhu	t8,25338(v1)
    c614:	906263e5 	lbu	v0,25573(v1)
    c618:	02002025 	move	a0,s0
    c61c:	8fa50034 	lw	a1,52(sp)
    c620:	14400007 	bnez	v0,c640 <func_800374E0+0x340>
    c624:	24061036 	li	a2,4150
    c628:	0c000000 	jal	0 <ActorShape_Init>
    c62c:	afa30020 	sw	v1,32(sp)
    c630:	0c000000 	jal	0 <ActorShape_Init>
    c634:	2404002a 	li	a0,42
    c638:	8fa30020 	lw	v1,32(sp)
    c63c:	906263e5 	lbu	v0,25573(v1)
    c640:	24010001 	li	at,1
    c644:	14410008 	bne	v0,at,c668 <func_800374E0+0x368>
    c648:	02002025 	move	a0,s0
    c64c:	8fa50034 	lw	a1,52(sp)
    c650:	24061037 	li	a2,4151
    c654:	0c000000 	jal	0 <ActorShape_Init>
    c658:	afa30020 	sw	v1,32(sp)
    c65c:	0c000000 	jal	0 <ActorShape_Init>
    c660:	2404002b 	li	a0,43
    c664:	8fa30020 	lw	v1,32(sp)
    c668:	947862fa 	lhu	t8,25338(v1)
    c66c:	24011038 	li	at,4152
    c670:	1701001f 	bne	t8,at,c6f0 <func_800374E0+0x3f0>
    c674:	00000000 	nop
    c678:	906263e5 	lbu	v0,25573(v1)
    c67c:	02002025 	move	a0,s0
    c680:	8fa50034 	lw	a1,52(sp)
    c684:	14400007 	bnez	v0,c6a4 <func_800374E0+0x3a4>
    c688:	24061039 	li	a2,4153
    c68c:	0c000000 	jal	0 <ActorShape_Init>
    c690:	afa30020 	sw	v1,32(sp)
    c694:	0c000000 	jal	0 <ActorShape_Init>
    c698:	2404002e 	li	a0,46
    c69c:	8fa30020 	lw	v1,32(sp)
    c6a0:	906263e5 	lbu	v0,25573(v1)
    c6a4:	24010001 	li	at,1
    c6a8:	14410009 	bne	v0,at,c6d0 <func_800374E0+0x3d0>
    c6ac:	02002025 	move	a0,s0
    c6b0:	8fa50034 	lw	a1,52(sp)
    c6b4:	2406103a 	li	a2,4154
    c6b8:	0c000000 	jal	0 <ActorShape_Init>
    c6bc:	afa30020 	sw	v1,32(sp)
    c6c0:	0c000000 	jal	0 <ActorShape_Init>
    c6c4:	2404002f 	li	a0,47
    c6c8:	8fa30020 	lw	v1,32(sp)
    c6cc:	906263e5 	lbu	v0,25573(v1)
    c6d0:	24010002 	li	at,2
    c6d4:	14410006 	bne	v0,at,c6f0 <func_800374E0+0x3f0>
    c6d8:	02002025 	move	a0,s0
    c6dc:	8fa50034 	lw	a1,52(sp)
    c6e0:	0c000000 	jal	0 <ActorShape_Init>
    c6e4:	2406103b 	li	a2,4155
    c6e8:	0c000000 	jal	0 <ActorShape_Init>
    c6ec:	24040030 	li	a0,48
    c6f0:	100000d2 	b	ca3c <func_800374E0+0x73c>
    c6f4:	00001825 	move	v1,zero
    c6f8:	3401a0d8 	li	at,0xa0d8
    c6fc:	02011821 	addu	v1,s0,at
    c700:	906263e5 	lbu	v0,25573(v1)
    c704:	02002025 	move	a0,s0
    c708:	8fa50034 	lw	a1,52(sp)
    c70c:	14400005 	bnez	v0,c724 <func_800374E0+0x424>
    c710:	24061063 	li	a2,4195
    c714:	0c000000 	jal	0 <ActorShape_Init>
    c718:	afa30020 	sw	v1,32(sp)
    c71c:	8fa30020 	lw	v1,32(sp)
    c720:	906263e5 	lbu	v0,25573(v1)
    c724:	24010001 	li	at,1
    c728:	14410004 	bne	v0,at,c73c <func_800374E0+0x43c>
    c72c:	02002025 	move	a0,s0
    c730:	8fa50034 	lw	a1,52(sp)
    c734:	0c000000 	jal	0 <ActorShape_Init>
    c738:	24061064 	li	a2,4196
    c73c:	100000bf 	b	ca3c <func_800374E0+0x73c>
    c740:	00001825 	move	v1,zero
    c744:	3401a0d8 	li	at,0xa0d8
    c748:	02011821 	addu	v1,s0,at
    c74c:	906263e5 	lbu	v0,25573(v1)
    c750:	3c190000 	lui	t9,0x0
    c754:	54400016 	bnezl	v0,c7b0 <func_800374E0+0x4b0>
    c758:	24010001 	li	at,1
    c75c:	87390034 	lh	t9,52(t9)
    c760:	02002025 	move	a0,s0
    c764:	8fa50034 	lw	a1,52(sp)
    c768:	2b21000a 	slti	at,t9,10
    c76c:	1420000b 	bnez	at,c79c <func_800374E0+0x49c>
    c770:	24062032 	li	a2,8242
    c774:	02002025 	move	a0,s0
    c778:	8fa50034 	lw	a1,52(sp)
    c77c:	24062034 	li	a2,8244
    c780:	0c000000 	jal	0 <ActorShape_Init>
    c784:	afa30020 	sw	v1,32(sp)
    c788:	0c000000 	jal	0 <ActorShape_Init>
    c78c:	2404fff6 	li	a0,-10
    c790:	8fa30020 	lw	v1,32(sp)
    c794:	10000005 	b	c7ac <func_800374E0+0x4ac>
    c798:	906263e5 	lbu	v0,25573(v1)
    c79c:	0c000000 	jal	0 <ActorShape_Init>
    c7a0:	afa30020 	sw	v1,32(sp)
    c7a4:	8fa30020 	lw	v1,32(sp)
    c7a8:	906263e5 	lbu	v0,25573(v1)
    c7ac:	24010001 	li	at,1
    c7b0:	14410004 	bne	v0,at,c7c4 <func_800374E0+0x4c4>
    c7b4:	02002025 	move	a0,s0
    c7b8:	8fa50034 	lw	a1,52(sp)
    c7bc:	0c000000 	jal	0 <ActorShape_Init>
    c7c0:	24062032 	li	a2,8242
    c7c4:	0c000000 	jal	0 <ActorShape_Init>
    c7c8:	2404009a 	li	a0,154
    c7cc:	1000009b 	b	ca3c <func_800374E0+0x73c>
    c7d0:	00001825 	move	v1,zero
    c7d4:	3401a0d8 	li	at,0xa0d8
    c7d8:	02011821 	addu	v1,s0,at
    c7dc:	906263e5 	lbu	v0,25573(v1)
    c7e0:	02002025 	move	a0,s0
    c7e4:	8fa50034 	lw	a1,52(sp)
    c7e8:	14400005 	bnez	v0,c800 <func_800374E0+0x500>
    c7ec:	2406201f 	li	a2,8223
    c7f0:	0c000000 	jal	0 <ActorShape_Init>
    c7f4:	afa30020 	sw	v1,32(sp)
    c7f8:	8fa30020 	lw	v1,32(sp)
    c7fc:	906263e5 	lbu	v0,25573(v1)
    c800:	24010001 	li	at,1
    c804:	14410004 	bne	v0,at,c818 <func_800374E0+0x518>
    c808:	02002025 	move	a0,s0
    c80c:	8fa50034 	lw	a1,52(sp)
    c810:	0c000000 	jal	0 <ActorShape_Init>
    c814:	2406205a 	li	a2,8282
    c818:	10000088 	b	ca3c <func_800374E0+0x73c>
    c81c:	00001825 	move	v1,zero
    c820:	3c020001 	lui	v0,0x1
    c824:	00501021 	addu	v0,v0,s0
    c828:	904204bd 	lbu	v0,1213(v0)
    c82c:	24010001 	li	at,1
    c830:	50400083 	beqzl	v0,ca40 <func_800374E0+0x740>
    c834:	8fbf001c 	lw	ra,28(sp)
    c838:	14410004 	bne	v0,at,c84c <func_800374E0+0x54c>
    c83c:	02002025 	move	a0,s0
    c840:	8fa50034 	lw	a1,52(sp)
    c844:	0c000000 	jal	0 <ActorShape_Init>
    c848:	2406205a 	li	a2,8282
    c84c:	1000007b 	b	ca3c <func_800374E0+0x73c>
    c850:	00001825 	move	v1,zero
    c854:	3c080001 	lui	t0,0x1
    c858:	01104021 	addu	t0,t0,s0
    c85c:	910804bd 	lbu	t0,1213(t0)
    c860:	02002025 	move	a0,s0
    c864:	8fa50034 	lw	a1,52(sp)
    c868:	55000075 	bnezl	t0,ca40 <func_800374E0+0x740>
    c86c:	8fbf001c 	lw	ra,28(sp)
    c870:	0c000000 	jal	0 <ActorShape_Init>
    c874:	24062035 	li	a2,8245
    c878:	10000070 	b	ca3c <func_800374E0+0x73c>
    c87c:	00001825 	move	v1,zero
    c880:	24040012 	li	a0,18
    c884:	0c000000 	jal	0 <ActorShape_Init>
    c888:	afa30028 	sw	v1,40(sp)
    c88c:	1440006b 	bnez	v0,ca3c <func_800374E0+0x73c>
    c890:	8fa30028 	lw	v1,40(sp)
    c894:	02002025 	move	a0,s0
    c898:	8fa50034 	lw	a1,52(sp)
    c89c:	0c000000 	jal	0 <ActorShape_Init>
    c8a0:	24062044 	li	a2,8260
    c8a4:	10000065 	b	ca3c <func_800374E0+0x73c>
    c8a8:	00001825 	move	v1,zero
    c8ac:	3401a0d8 	li	at,0xa0d8
    c8b0:	02011821 	addu	v1,s0,at
    c8b4:	906263e5 	lbu	v0,25573(v1)
    c8b8:	24040022 	li	a0,34
    c8bc:	54400015 	bnezl	v0,c914 <func_800374E0+0x614>
    c8c0:	24010001 	li	at,1
    c8c4:	0c000000 	jal	0 <ActorShape_Init>
    c8c8:	afa30020 	sw	v1,32(sp)
    c8cc:	10400009 	beqz	v0,c8f4 <func_800374E0+0x5f4>
    c8d0:	8fa30020 	lw	v1,32(sp)
    c8d4:	02002025 	move	a0,s0
    c8d8:	8fa50034 	lw	a1,52(sp)
    c8dc:	2406300b 	li	a2,12299
    c8e0:	0c000000 	jal	0 <ActorShape_Init>
    c8e4:	afa30020 	sw	v1,32(sp)
    c8e8:	8fa30020 	lw	v1,32(sp)
    c8ec:	10000008 	b	c910 <func_800374E0+0x610>
    c8f0:	906263e5 	lbu	v0,25573(v1)
    c8f4:	02002025 	move	a0,s0
    c8f8:	8fa50034 	lw	a1,52(sp)
    c8fc:	2406300c 	li	a2,12300
    c900:	0c000000 	jal	0 <ActorShape_Init>
    c904:	afa30020 	sw	v1,32(sp)
    c908:	8fa30020 	lw	v1,32(sp)
    c90c:	906263e5 	lbu	v0,25573(v1)
    c910:	24010001 	li	at,1
    c914:	14410004 	bne	v0,at,c928 <func_800374E0+0x628>
    c918:	02002025 	move	a0,s0
    c91c:	8fa50034 	lw	a1,52(sp)
    c920:	0c000000 	jal	0 <ActorShape_Init>
    c924:	2406300d 	li	a2,12301
    c928:	10000044 	b	ca3c <func_800374E0+0x73c>
    c92c:	00001825 	move	v1,zero
    c930:	3401a0d8 	li	at,0xa0d8
    c934:	02011821 	addu	v1,s0,at
    c938:	906263e5 	lbu	v0,25573(v1)
    c93c:	02002025 	move	a0,s0
    c940:	8fa50034 	lw	a1,52(sp)
    c944:	14400005 	bnez	v0,c95c <func_800374E0+0x65c>
    c948:	2406301d 	li	a2,12317
    c94c:	0c000000 	jal	0 <ActorShape_Init>
    c950:	afa30020 	sw	v1,32(sp)
    c954:	8fa30020 	lw	v1,32(sp)
    c958:	906263e5 	lbu	v0,25573(v1)
    c95c:	24010001 	li	at,1
    c960:	1441000e 	bne	v0,at,c99c <func_800374E0+0x69c>
    c964:	00000000 	nop
    c968:	0c000000 	jal	0 <ActorShape_Init>
    c96c:	24040113 	li	a0,275
    c970:	10400007 	beqz	v0,c990 <func_800374E0+0x690>
    c974:	02002025 	move	a0,s0
    c978:	02002025 	move	a0,s0
    c97c:	8fa50034 	lw	a1,52(sp)
    c980:	0c000000 	jal	0 <ActorShape_Init>
    c984:	2406301f 	li	a2,12319
    c988:	1000002c 	b	ca3c <func_800374E0+0x73c>
    c98c:	00001825 	move	v1,zero
    c990:	8fa50034 	lw	a1,52(sp)
    c994:	0c000000 	jal	0 <ActorShape_Init>
    c998:	2406301e 	li	a2,12318
    c99c:	10000027 	b	ca3c <func_800374E0+0x73c>
    c9a0:	00001825 	move	v1,zero
    c9a4:	8fa50034 	lw	a1,52(sp)
    c9a8:	0c000000 	jal	0 <ActorShape_Init>
    c9ac:	24063020 	li	a2,12320
    c9b0:	10000022 	b	ca3c <func_800374E0+0x73c>
    c9b4:	00001825 	move	v1,zero
    c9b8:	3401a0d8 	li	at,0xa0d8
    c9bc:	02011821 	addu	v1,s0,at
    c9c0:	906263e5 	lbu	v0,25573(v1)
    c9c4:	02002025 	move	a0,s0
    c9c8:	8fa50034 	lw	a1,52(sp)
    c9cc:	14400005 	bnez	v0,c9e4 <func_800374E0+0x6e4>
    c9d0:	2406400d 	li	a2,16397
    c9d4:	0c000000 	jal	0 <ActorShape_Init>
    c9d8:	afa30020 	sw	v1,32(sp)
    c9dc:	8fa30020 	lw	v1,32(sp)
    c9e0:	906263e5 	lbu	v0,25573(v1)
    c9e4:	24010001 	li	at,1
    c9e8:	14410004 	bne	v0,at,c9fc <func_800374E0+0x6fc>
    c9ec:	02002025 	move	a0,s0
    c9f0:	8fa50034 	lw	a1,52(sp)
    c9f4:	0c000000 	jal	0 <ActorShape_Init>
    c9f8:	2406400e 	li	a2,16398
    c9fc:	1000000f 	b	ca3c <func_800374E0+0x73c>
    ca00:	00001825 	move	v1,zero
    ca04:	8fa50034 	lw	a1,52(sp)
    ca08:	0c000000 	jal	0 <ActorShape_Init>
    ca0c:	2406703e 	li	a2,28734
    ca10:	1000000a 	b	ca3c <func_800374E0+0x73c>
    ca14:	00001825 	move	v1,zero
    ca18:	8fa50034 	lw	a1,52(sp)
    ca1c:	0c000000 	jal	0 <ActorShape_Init>
    ca20:	2406703f 	li	a2,28735
    ca24:	10000005 	b	ca3c <func_800374E0+0x73c>
    ca28:	00001825 	move	v1,zero
    ca2c:	8fa50034 	lw	a1,52(sp)
    ca30:	0c000000 	jal	0 <ActorShape_Init>
    ca34:	24067042 	li	a2,28738
    ca38:	00001825 	move	v1,zero
    ca3c:	8fbf001c 	lw	ra,28(sp)
    ca40:	8fb00018 	lw	s0,24(sp)
    ca44:	27bd0030 	addiu	sp,sp,48
    ca48:	03e00008 	jr	ra
    ca4c:	00601025 	move	v0,v1

0000ca50 <func_80037C30>:
    ca50:	27bdffe8 	addiu	sp,sp,-24
    ca54:	afa5001c 	sw	a1,28(sp)
    ca58:	00052c00 	sll	a1,a1,0x10
    ca5c:	afbf0014 	sw	ra,20(sp)
    ca60:	0c000000 	jal	0 <ActorShape_Init>
    ca64:	00052c03 	sra	a1,a1,0x10
    ca68:	8fbf0014 	lw	ra,20(sp)
    ca6c:	27bd0018 	addiu	sp,sp,24
    ca70:	3042ffff 	andi	v0,v0,0xffff
    ca74:	03e00008 	jr	ra
    ca78:	00000000 	nop

0000ca7c <func_80037C5C>:
    ca7c:	27bdffe8 	addiu	sp,sp,-24
    ca80:	afa5001c 	sw	a1,28(sp)
    ca84:	00052c00 	sll	a1,a1,0x10
    ca88:	afbf0014 	sw	ra,20(sp)
    ca8c:	afa40018 	sw	a0,24(sp)
    ca90:	00052c03 	sra	a1,a1,0x10
    ca94:	afa60020 	sw	a2,32(sp)
    ca98:	0c000000 	jal	0 <ActorShape_Init>
    ca9c:	30c4ffff 	andi	a0,a2,0xffff
    caa0:	8fbf0014 	lw	ra,20(sp)
    caa4:	27bd0018 	addiu	sp,sp,24
    caa8:	00001025 	move	v0,zero
    caac:	03e00008 	jr	ra
    cab0:	00000000 	nop

0000cab4 <func_80037C94>:
    cab4:	27bdffe8 	addiu	sp,sp,-24
    cab8:	afbf0014 	sw	ra,20(sp)
    cabc:	afa60020 	sw	a2,32(sp)
    cac0:	0c000000 	jal	0 <ActorShape_Init>
    cac4:	94a6010e 	lhu	a2,270(a1)
    cac8:	8fbf0014 	lw	ra,20(sp)
    cacc:	27bd0018 	addiu	sp,sp,24
    cad0:	03e00008 	jr	ra
    cad4:	00000000 	nop

0000cad8 <func_80037CB8>:
    cad8:	27bdffd0 	addiu	sp,sp,-48
    cadc:	afa40030 	sw	a0,48(sp)
    cae0:	afbf001c 	sw	ra,28(sp)
    cae4:	248420d8 	addiu	a0,a0,8408
    cae8:	afa50034 	sw	a1,52(sp)
    caec:	afa60038 	sw	a2,56(sp)
    caf0:	afa00028 	sw	zero,40(sp)
    caf4:	0c000000 	jal	0 <ActorShape_Init>
    caf8:	afa40020 	sw	a0,32(sp)
    cafc:	24010002 	li	at,2
    cb00:	10410008 	beq	v0,at,cb24 <func_80037CB8+0x4c>
    cb04:	8fa40030 	lw	a0,48(sp)
    cb08:	24010004 	li	at,4
    cb0c:	1041000c 	beq	v0,at,cb40 <func_80037CB8+0x68>
    cb10:	24010005 	li	at,5
    cb14:	1041000a 	beq	v0,at,cb40 <func_80037CB8+0x68>
    cb18:	00000000 	nop
    cb1c:	10000022 	b	cba8 <func_80037CB8+0xd0>
    cb20:	8fbf001c 	lw	ra,28(sp)
    cb24:	8fae0034 	lw	t6,52(sp)
    cb28:	87a5003a 	lh	a1,58(sp)
    cb2c:	0c000000 	jal	0 <ActorShape_Init>
    cb30:	95c6010e 	lhu	a2,270(t6)
    cb34:	240f0001 	li	t7,1
    cb38:	1000001a 	b	cba4 <func_80037CB8+0xcc>
    cb3c:	afaf0028 	sw	t7,40(sp)
    cb40:	0c000000 	jal	0 <ActorShape_Init>
    cb44:	8fa40030 	lw	a0,48(sp)
    cb48:	10400016 	beqz	v0,cba4 <func_80037CB8+0xcc>
    cb4c:	8fa40030 	lw	a0,48(sp)
    cb50:	8fa50034 	lw	a1,52(sp)
    cb54:	0c000000 	jal	0 <ActorShape_Init>
    cb58:	87a6003a 	lh	a2,58(sp)
    cb5c:	10400011 	beqz	v0,cba4 <func_80037CB8+0xcc>
    cb60:	3c070000 	lui	a3,0x0
    cb64:	3c180000 	lui	t8,0x0
    cb68:	24e70000 	addiu	a3,a3,0
    cb6c:	27180000 	addiu	t8,t8,0
    cb70:	3c050000 	lui	a1,0x0
    cb74:	24a50000 	addiu	a1,a1,0
    cb78:	afb80014 	sw	t8,20(sp)
    cb7c:	afa70010 	sw	a3,16(sp)
    cb80:	2404480a 	li	a0,18442
    cb84:	0c000000 	jal	0 <ActorShape_Init>
    cb88:	24060004 	li	a2,4
    cb8c:	8fa80020 	lw	t0,32(sp)
    cb90:	24190036 	li	t9,54
    cb94:	24090001 	li	t1,1
    cb98:	25017fff 	addiu	at,t0,32767
    cb9c:	a0396305 	sb	t9,25349(at)
    cba0:	afa90028 	sw	t1,40(sp)
    cba4:	8fbf001c 	lw	ra,28(sp)
    cba8:	8fa20028 	lw	v0,40(sp)
    cbac:	27bd0030 	addiu	sp,sp,48
    cbb0:	03e00008 	jr	ra
    cbb4:	00000000 	nop

0000cbb8 <func_80037D98>:
    cbb8:	27bdffd0 	addiu	sp,sp,-48
    cbbc:	afb00018 	sw	s0,24(sp)
    cbc0:	afa40030 	sw	a0,48(sp)
    cbc4:	00a08025 	move	s0,a1
    cbc8:	afbf001c 	sw	ra,28(sp)
    cbcc:	00a02025 	move	a0,a1
    cbd0:	afa60038 	sw	a2,56(sp)
    cbd4:	afa7003c 	sw	a3,60(sp)
    cbd8:	0c000000 	jal	0 <ActorShape_Init>
    cbdc:	8fa50030 	lw	a1,48(sp)
    cbe0:	10400005 	beqz	v0,cbf8 <func_80037D98+0x40>
    cbe4:	8fa3003c 	lw	v1,60(sp)
    cbe8:	240e0001 	li	t6,1
    cbec:	ac6e0000 	sw	t6,0(v1)
    cbf0:	10000052 	b	cd3c <func_80037D98+0x184>
    cbf4:	24020001 	li	v0,1
    cbf8:	8c6f0000 	lw	t7,0(v1)
    cbfc:	24010001 	li	at,1
    cc00:	8fa40030 	lw	a0,48(sp)
    cc04:	15e1000a 	bne	t7,at,cc30 <func_80037D98+0x78>
    cc08:	02002825 	move	a1,s0
    cc0c:	8fa40030 	lw	a0,48(sp)
    cc10:	02002825 	move	a1,s0
    cc14:	0c000000 	jal	0 <ActorShape_Init>
    cc18:	87a6003a 	lh	a2,58(sp)
    cc1c:	10400002 	beqz	v0,cc28 <func_80037D98+0x70>
    cc20:	8fa3003c 	lw	v1,60(sp)
    cc24:	ac600000 	sw	zero,0(v1)
    cc28:	10000044 	b	cd3c <func_80037D98+0x184>
    cc2c:	00001025 	move	v0,zero
    cc30:	27a6002c 	addiu	a2,sp,44
    cc34:	0c000000 	jal	0 <ActorShape_Init>
    cc38:	27a7002a 	addiu	a3,sp,42
    cc3c:	87a2002c 	lh	v0,44(sp)
    cc40:	04400007 	bltz	v0,cc60 <func_80037D98+0xa8>
    cc44:	28410141 	slti	at,v0,321
    cc48:	10200005 	beqz	at,cc60 <func_80037D98+0xa8>
    cc4c:	87a2002a 	lh	v0,42(sp)
    cc50:	04400003 	bltz	v0,cc60 <func_80037D98+0xa8>
    cc54:	284100f1 	slti	at,v0,241
    cc58:	54200004 	bnezl	at,cc6c <func_80037D98+0xb4>
    cc5c:	8618008a 	lh	t8,138(s0)
    cc60:	10000036 	b	cd3c <func_80037D98+0x184>
    cc64:	00001025 	move	v0,zero
    cc68:	8618008a 	lh	t8,138(s0)
    cc6c:	861900b6 	lh	t9,182(s0)
    cc70:	03191023 	subu	v0,t8,t9
    cc74:	00021400 	sll	v0,v0,0x10
    cc78:	00021403 	sra	v0,v0,0x10
    cc7c:	04400004 	bltz	v0,cc90 <func_80037D98+0xd8>
    cc80:	00021823 	negu	v1,v0
    cc84:	00021c00 	sll	v1,v0,0x10
    cc88:	10000003 	b	cc98 <func_80037D98+0xe0>
    cc8c:	00031c03 	sra	v1,v1,0x10
    cc90:	00031c00 	sll	v1,v1,0x10
    cc94:	00031c03 	sra	v1,v1,0x10
    cc98:	28614300 	slti	at,v1,17152
    cc9c:	54200004 	bnezl	at,ccb0 <func_80037D98+0xf8>
    cca0:	3c0146c8 	lui	at,0x46c8
    cca4:	10000025 	b	cd3c <func_80037D98+0x184>
    cca8:	00001025 	move	v0,zero
    ccac:	3c0146c8 	lui	at,0x46c8
    ccb0:	44812000 	mtc1	at,$f4
    ccb4:	c600008c 	lwc1	$f0,140(s0)
    ccb8:	3c0145c8 	lui	at,0x45c8
    ccbc:	4600203c 	c.lt.s	$f4,$f0
    ccc0:	00000000 	nop
    ccc4:	45020007 	bc1fl	cce4 <func_80037D98+0x12c>
    ccc8:	44813000 	mtc1	at,$f6
    cccc:	9208010c 	lbu	t0,268(s0)
    ccd0:	55000004 	bnezl	t0,cce4 <func_80037D98+0x12c>
    ccd4:	44813000 	mtc1	at,$f6
    ccd8:	10000018 	b	cd3c <func_80037D98+0x184>
    ccdc:	00001025 	move	v0,zero
    cce0:	44813000 	mtc1	at,$f6
    cce4:	8fa50030 	lw	a1,48(sp)
    cce8:	3c0642a0 	lui	a2,0x42a0
    ccec:	4606003e 	c.le.s	$f0,$f6
    ccf0:	02002025 	move	a0,s0
    ccf4:	45000009 	bc1f	cd1c <func_80037D98+0x164>
    ccf8:	00000000 	nop
    ccfc:	0c000000 	jal	0 <ActorShape_Init>
    cd00:	02002025 	move	a0,s0
    cd04:	1040000c 	beqz	v0,cd38 <func_80037D98+0x180>
    cd08:	8fa40030 	lw	a0,48(sp)
    cd0c:	0c000000 	jal	0 <ActorShape_Init>
    cd10:	87a5003a 	lh	a1,58(sp)
    cd14:	10000008 	b	cd38 <func_80037D98+0x180>
    cd18:	a602010e 	sh	v0,270(s0)
    cd1c:	0c000000 	jal	0 <ActorShape_Init>
    cd20:	8fa50030 	lw	a1,48(sp)
    cd24:	10400004 	beqz	v0,cd38 <func_80037D98+0x180>
    cd28:	8fa40030 	lw	a0,48(sp)
    cd2c:	0c000000 	jal	0 <ActorShape_Init>
    cd30:	87a5003a 	lh	a1,58(sp)
    cd34:	a602010e 	sh	v0,270(s0)
    cd38:	00001025 	move	v0,zero
    cd3c:	8fbf001c 	lw	ra,28(sp)
    cd40:	8fb00018 	lw	s0,24(sp)
    cd44:	27bd0030 	addiu	sp,sp,48
    cd48:	03e00008 	jr	ra
    cd4c:	00000000 	nop

0000cd50 <func_80037F30>:
    cd50:	27bdffe0 	addiu	sp,sp,-32
    cd54:	afbf001c 	sw	ra,28(sp)
    cd58:	afa40020 	sw	a0,32(sp)
    cd5c:	afa50024 	sw	a1,36(sp)
    cd60:	240e0064 	li	t6,100
    cd64:	afae0010 	sw	t6,16(sp)
    cd68:	00002825 	move	a1,zero
    cd6c:	24840002 	addiu	a0,a0,2
    cd70:	24060006 	li	a2,6
    cd74:	0c000000 	jal	0 <ActorShape_Init>
    cd78:	24071838 	li	a3,6200
    cd7c:	240f0064 	li	t7,100
    cd80:	afaf0010 	sw	t7,16(sp)
    cd84:	8fa40020 	lw	a0,32(sp)
    cd88:	00002825 	move	a1,zero
    cd8c:	24060006 	li	a2,6
    cd90:	0c000000 	jal	0 <ActorShape_Init>
    cd94:	24071838 	li	a3,6200
    cd98:	8fa40024 	lw	a0,36(sp)
    cd9c:	24180064 	li	t8,100
    cda0:	afb80010 	sw	t8,16(sp)
    cda4:	00002825 	move	a1,zero
    cda8:	24060006 	li	a2,6
    cdac:	24071838 	li	a3,6200
    cdb0:	0c000000 	jal	0 <ActorShape_Init>
    cdb4:	24840002 	addiu	a0,a0,2
    cdb8:	24190064 	li	t9,100
    cdbc:	afb90010 	sw	t9,16(sp)
    cdc0:	8fa40024 	lw	a0,36(sp)
    cdc4:	00002825 	move	a1,zero
    cdc8:	24060006 	li	a2,6
    cdcc:	0c000000 	jal	0 <ActorShape_Init>
    cdd0:	24071838 	li	a3,6200
    cdd4:	8fbf001c 	lw	ra,28(sp)
    cdd8:	27bd0020 	addiu	sp,sp,32
    cddc:	24020001 	li	v0,1
    cde0:	03e00008 	jr	ra
    cde4:	00000000 	nop

0000cde8 <func_80037FC8>:
    cde8:	27bdffc8 	addiu	sp,sp,-56
    cdec:	afa40038 	sw	a0,56(sp)
    cdf0:	afbf0024 	sw	ra,36(sp)
    cdf4:	afb00020 	sw	s0,32(sp)
    cdf8:	24840038 	addiu	a0,a0,56
    cdfc:	00c08025 	move	s0,a2
    ce00:	afa5003c 	sw	a1,60(sp)
    ce04:	afa70044 	sw	a3,68(sp)
    ce08:	0c000000 	jal	0 <ActorShape_Init>
    ce0c:	afa40028 	sw	a0,40(sp)
    ce10:	8fa40028 	lw	a0,40(sp)
    ce14:	a7a20036 	sh	v0,54(sp)
    ce18:	0c000000 	jal	0 <ActorShape_Init>
    ce1c:	8fa5003c 	lw	a1,60(sp)
    ce20:	8fae0038 	lw	t6,56(sp)
    ce24:	24190001 	li	t9,1
    ce28:	02002025 	move	a0,s0
    ce2c:	85cf0032 	lh	t7,50(t6)
    ce30:	afb90010 	sw	t9,16(sp)
    ce34:	87a50036 	lh	a1,54(sp)
    ce38:	004fc023 	subu	t8,v0,t7
    ce3c:	a7b80034 	sh	t8,52(sp)
    ce40:	24060006 	li	a2,6
    ce44:	0c000000 	jal	0 <ActorShape_Init>
    ce48:	240707d0 	li	a3,2000
    ce4c:	86040000 	lh	a0,0(s0)
    ce50:	24060006 	li	a2,6
    ce54:	240707d0 	li	a3,2000
    ce58:	2881e890 	slti	at,a0,-6000
    ce5c:	10200004 	beqz	at,ce70 <func_80037FC8+0x88>
    ce60:	24090001 	li	t1,1
    ce64:	2408e890 	li	t0,-6000
    ce68:	10000007 	b	ce88 <func_80037FC8+0xa0>
    ce6c:	a6080000 	sh	t0,0(s0)
    ce70:	28811771 	slti	at,a0,6001
    ce74:	14200003 	bnez	at,ce84 <func_80037FC8+0x9c>
    ce78:	00801825 	move	v1,a0
    ce7c:	10000001 	b	ce84 <func_80037FC8+0x9c>
    ce80:	24031770 	li	v1,6000
    ce84:	a6030000 	sh	v1,0(s0)
    ce88:	26040002 	addiu	a0,s0,2
    ce8c:	87a50034 	lh	a1,52(sp)
    ce90:	0c000000 	jal	0 <ActorShape_Init>
    ce94:	afa90010 	sw	t1,16(sp)
    ce98:	86040002 	lh	a0,2(s0)
    ce9c:	240ae0c0 	li	t2,-8000
    cea0:	24060004 	li	a2,4
    cea4:	2881e0c0 	slti	at,a0,-8000
    cea8:	10200003 	beqz	at,ceb8 <func_80037FC8+0xd0>
    ceac:	240707d0 	li	a3,2000
    ceb0:	10000007 	b	ced0 <func_80037FC8+0xe8>
    ceb4:	a60a0002 	sh	t2,2(s0)
    ceb8:	28811f41 	slti	at,a0,8001
    cebc:	14200003 	bnez	at,cecc <func_80037FC8+0xe4>
    cec0:	00801825 	move	v1,a0
    cec4:	10000001 	b	cecc <func_80037FC8+0xe4>
    cec8:	24031f40 	li	v1,8000
    cecc:	a6030002 	sh	v1,2(s0)
    ced0:	1040000b 	beqz	v0,cf00 <func_80037FC8+0x118>
    ced4:	87ab0034 	lh	t3,52(sp)
    ced8:	86040002 	lh	a0,2(s0)
    cedc:	04800003 	bltz	a0,ceec <func_80037FC8+0x104>
    cee0:	00041823 	negu	v1,a0
    cee4:	10000001 	b	ceec <func_80037FC8+0x104>
    cee8:	00801825 	move	v1,a0
    ceec:	28611f40 	slti	at,v1,8000
    cef0:	50200004 	beqzl	at,cf04 <func_80037FC8+0x11c>
    cef4:	860c0002 	lh	t4,2(s0)
    cef8:	10000019 	b	cf60 <func_80037FC8+0x178>
    cefc:	00001025 	move	v0,zero
    cf00:	860c0002 	lh	t4,2(s0)
    cf04:	8fa40044 	lw	a0,68(sp)
    cf08:	240d0001 	li	t5,1
    cf0c:	016c2823 	subu	a1,t3,t4
    cf10:	00052c00 	sll	a1,a1,0x10
    cf14:	00052c03 	sra	a1,a1,0x10
    cf18:	afad0010 	sw	t5,16(sp)
    cf1c:	0c000000 	jal	0 <ActorShape_Init>
    cf20:	24840002 	addiu	a0,a0,2
    cf24:	8fa50044 	lw	a1,68(sp)
    cf28:	240ed120 	li	t6,-12000
    cf2c:	24020001 	li	v0,1
    cf30:	84a40002 	lh	a0,2(a1)
    cf34:	2881d120 	slti	at,a0,-12000
    cf38:	50200004 	beqzl	at,cf4c <func_80037FC8+0x164>
    cf3c:	28812ee1 	slti	at,a0,12001
    cf40:	10000007 	b	cf60 <func_80037FC8+0x178>
    cf44:	a4ae0002 	sh	t6,2(a1)
    cf48:	28812ee1 	slti	at,a0,12001
    cf4c:	14200003 	bnez	at,cf5c <func_80037FC8+0x174>
    cf50:	00801825 	move	v1,a0
    cf54:	10000001 	b	cf5c <func_80037FC8+0x174>
    cf58:	24032ee0 	li	v1,12000
    cf5c:	a4a30002 	sh	v1,2(a1)
    cf60:	8fbf0024 	lw	ra,36(sp)
    cf64:	8fb00020 	lw	s0,32(sp)
    cf68:	27bd0038 	addiu	sp,sp,56
    cf6c:	03e00008 	jr	ra
    cf70:	00000000 	nop

0000cf74 <func_80038154>:
    cf74:	27bdffc0 	addiu	sp,sp,-64
    cf78:	afbf001c 	sw	ra,28(sp)
    cf7c:	afb00018 	sw	s0,24(sp)
    cf80:	8caf0024 	lw	t7,36(a1)
    cf84:	8c891c44 	lw	t1,7236(a0)
    cf88:	8cae0028 	lw	t6,40(a1)
    cf8c:	acaf0038 	sw	t7,56(a1)
    cf90:	8caf002c 	lw	t7,44(a1)
    cf94:	acae003c 	sw	t6,60(a1)
    cf98:	c4a4003c 	lwc1	$f4,60(a1)
    cf9c:	acaf0040 	sw	t7,64(a1)
    cfa0:	c7a60050 	lwc1	$f6,80(sp)
    cfa4:	00a08025 	move	s0,a1
    cfa8:	3c180000 	lui	t8,0x0
    cfac:	46062200 	add.s	$f8,$f4,$f6
    cfb0:	3c190000 	lui	t9,0x0
    cfb4:	e4a8003c 	swc1	$f8,60(a1)
    cfb8:	90881d6c 	lbu	t0,7532(a0)
    cfbc:	15000004 	bnez	t0,cfd0 <func_80038154+0x5c>
    cfc0:	00000000 	nop
    cfc4:	8f180000 	lw	t8,0(t8)
    cfc8:	53000006 	beqzl	t8,cfe4 <func_80038154+0x70>
    cfcc:	860a008a 	lh	t2,138(s0)
    cfd0:	8f390000 	lw	t9,0(t9)
    cfd4:	240100ee 	li	at,238
    cfd8:	13210015 	beq	t9,at,d030 <func_80038154+0xbc>
    cfdc:	00000000 	nop
    cfe0:	860a008a 	lh	t2,138(s0)
    cfe4:	860b00b6 	lh	t3,182(s0)
    cfe8:	00e02825 	move	a1,a3
    cfec:	014b1023 	subu	v0,t2,t3
    cff0:	00021400 	sll	v0,v0,0x10
    cff4:	00021403 	sra	v0,v0,0x10
    cff8:	04400004 	bltz	v0,d00c <func_80038154+0x98>
    cffc:	00021823 	negu	v1,v0
    d000:	00021c00 	sll	v1,v0,0x10
    d004:	10000003 	b	d014 <func_80038154+0xa0>
    d008:	00031c03 	sra	v1,v1,0x10
    d00c:	00031c00 	sll	v1,v1,0x10
    d010:	00031c03 	sra	v1,v1,0x10
    d014:	28614300 	slti	at,v1,17152
    d018:	14200005 	bnez	at,d030 <func_80038154+0xbc>
    d01c:	00000000 	nop
    d020:	0c000000 	jal	0 <ActorShape_Init>
    d024:	00c02025 	move	a0,a2
    d028:	1000001c 	b	d09c <func_80038154+0x128>
    d02c:	00001025 	move	v0,zero
    d030:	15000003 	bnez	t0,d040 <func_80038154+0xcc>
    d034:	3c0c0000 	lui	t4,0x0
    d038:	8d8c0000 	lw	t4,0(t4)
    d03c:	1180000d 	beqz	t4,d074 <func_80038154+0x100>
    d040:	3c0d0000 	lui	t5,0x0
    d044:	8dad0000 	lw	t5,0(t5)
    d048:	240100ee 	li	at,238
    d04c:	55a1000a 	bnel	t5,at,d078 <func_80038154+0x104>
    d050:	8d390038 	lw	t9,56(t1)
    d054:	8c8f00e0 	lw	t7,224(a0)
    d058:	27a5002c 	addiu	a1,sp,44
    d05c:	acaf0000 	sw	t7,0(a1)
    d060:	8c8e00e4 	lw	t6,228(a0)
    d064:	acae0004 	sw	t6,4(a1)
    d068:	8c8f00e8 	lw	t7,232(a0)
    d06c:	10000008 	b	d090 <func_80038154+0x11c>
    d070:	acaf0008 	sw	t7,8(a1)
    d074:	8d390038 	lw	t9,56(t1)
    d078:	27a5002c 	addiu	a1,sp,44
    d07c:	acb90000 	sw	t9,0(a1)
    d080:	8d38003c 	lw	t8,60(t1)
    d084:	acb80004 	sw	t8,4(a1)
    d088:	8d390040 	lw	t9,64(t1)
    d08c:	acb90008 	sw	t9,8(a1)
    d090:	0c000000 	jal	0 <ActorShape_Init>
    d094:	02002025 	move	a0,s0
    d098:	24020001 	li	v0,1
    d09c:	8fbf001c 	lw	ra,28(sp)
    d0a0:	8fb00018 	lw	s0,24(sp)
    d0a4:	27bd0040 	addiu	sp,sp,64
    d0a8:	03e00008 	jr	ra
    d0ac:	00000000 	nop

0000d0b0 <func_80038290>:
    d0b0:	27bdffc8 	addiu	sp,sp,-56
    d0b4:	afbf0014 	sw	ra,20(sp)
    d0b8:	afa5003c 	sw	a1,60(sp)
    d0bc:	27af0048 	addiu	t7,sp,72
    d0c0:	8df90000 	lw	t9,0(t7)
    d0c4:	8c891c44 	lw	t1,7236(a0)
    d0c8:	3c0a0000 	lui	t2,0x0
    d0cc:	acb90038 	sw	t9,56(a1)
    d0d0:	8df80004 	lw	t8,4(t7)
    d0d4:	3c0b0000 	lui	t3,0x0
    d0d8:	acb8003c 	sw	t8,60(a1)
    d0dc:	8df90008 	lw	t9,8(t7)
    d0e0:	acb90040 	sw	t9,64(a1)
    d0e4:	90881d6c 	lbu	t0,7532(a0)
    d0e8:	15000004 	bnez	t0,d0fc <func_80038290+0x4c>
    d0ec:	00000000 	nop
    d0f0:	8d4a0000 	lw	t2,0(t2)
    d0f4:	51400006 	beqzl	t2,d110 <func_80038290+0x60>
    d0f8:	8fac003c 	lw	t4,60(sp)
    d0fc:	8d6b0000 	lw	t3,0(t3)
    d100:	240100ee 	li	at,238
    d104:	11610016 	beq	t3,at,d160 <func_80038290+0xb0>
    d108:	00000000 	nop
    d10c:	8fac003c 	lw	t4,60(sp)
    d110:	00e02825 	move	a1,a3
    d114:	858d008a 	lh	t5,138(t4)
    d118:	858e00b6 	lh	t6,182(t4)
    d11c:	01ae1023 	subu	v0,t5,t6
    d120:	00021400 	sll	v0,v0,0x10
    d124:	00021403 	sra	v0,v0,0x10
    d128:	04400004 	bltz	v0,d13c <func_80038290+0x8c>
    d12c:	00021823 	negu	v1,v0
    d130:	00021c00 	sll	v1,v0,0x10
    d134:	10000003 	b	d144 <func_80038290+0x94>
    d138:	00031c03 	sra	v1,v1,0x10
    d13c:	00031c00 	sll	v1,v1,0x10
    d140:	00031c03 	sra	v1,v1,0x10
    d144:	28614300 	slti	at,v1,17152
    d148:	14200005 	bnez	at,d160 <func_80038290+0xb0>
    d14c:	00000000 	nop
    d150:	0c000000 	jal	0 <ActorShape_Init>
    d154:	00c02025 	move	a0,a2
    d158:	1000001c 	b	d1cc <func_80038290+0x11c>
    d15c:	00001025 	move	v0,zero
    d160:	15000003 	bnez	t0,d170 <func_80038290+0xc0>
    d164:	3c0f0000 	lui	t7,0x0
    d168:	8def0000 	lw	t7,0(t7)
    d16c:	11e0000d 	beqz	t7,d1a4 <func_80038290+0xf4>
    d170:	3c180000 	lui	t8,0x0
    d174:	8f180000 	lw	t8,0(t8)
    d178:	240100ee 	li	at,238
    d17c:	5701000a 	bnel	t8,at,d1a8 <func_80038290+0xf8>
    d180:	8d2c0038 	lw	t4,56(t1)
    d184:	8c8a00e0 	lw	t2,224(a0)
    d188:	27a50024 	addiu	a1,sp,36
    d18c:	acaa0000 	sw	t2,0(a1)
    d190:	8c9900e4 	lw	t9,228(a0)
    d194:	acb90004 	sw	t9,4(a1)
    d198:	8c8a00e8 	lw	t2,232(a0)
    d19c:	10000008 	b	d1c0 <func_80038290+0x110>
    d1a0:	acaa0008 	sw	t2,8(a1)
    d1a4:	8d2c0038 	lw	t4,56(t1)
    d1a8:	27a50024 	addiu	a1,sp,36
    d1ac:	acac0000 	sw	t4,0(a1)
    d1b0:	8d2b003c 	lw	t3,60(t1)
    d1b4:	acab0004 	sw	t3,4(a1)
    d1b8:	8d2c0040 	lw	t4,64(t1)
    d1bc:	acac0008 	sw	t4,8(a1)
    d1c0:	0c000000 	jal	0 <ActorShape_Init>
    d1c4:	8fa4003c 	lw	a0,60(sp)
    d1c8:	24020001 	li	v0,1
    d1cc:	8fbf0014 	lw	ra,20(sp)
    d1d0:	27bd0038 	addiu	sp,sp,56
    d1d4:	03e00008 	jr	ra
    d1d8:	00000000 	nop
    d1dc:	00000000 	nop
