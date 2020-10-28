
build/src/overlays/actors/ovl_En_Dnt_Jiji/z_en_dnt_jiji.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnDntJiji_Init>:
       0:	44800000 	mtc1	zero,$f0
       4:	27bdffc8 	addiu	sp,sp,-56
       8:	afb00028 	sw	s0,40(sp)
       c:	afa5003c 	sw	a1,60(sp)
      10:	00808025 	move	s0,a0
      14:	afbf002c 	sw	ra,44(sp)
      18:	3c060000 	lui	a2,0x0
      1c:	44050000 	mfc1	a1,$f0
      20:	44070000 	mfc1	a3,$f0
      24:	24c60000 	addiu	a2,a2,0
      28:	0c000000 	jal	0 <EnDntJiji_Init>
      2c:	248400b4 	addiu	a0,a0,180
      30:	3c060600 	lui	a2,0x600
      34:	3c070600 	lui	a3,0x600
      38:	260e0190 	addiu	t6,s0,400
      3c:	260f01de 	addiu	t7,s0,478
      40:	2418000d 	li	t8,13
      44:	afb80018 	sw	t8,24(sp)
      48:	afaf0014 	sw	t7,20(sp)
      4c:	afae0010 	sw	t6,16(sp)
      50:	24e70560 	addiu	a3,a3,1376
      54:	24c633e0 	addiu	a2,a2,13280
      58:	8fa4003c 	lw	a0,60(sp)
      5c:	0c000000 	jal	0 <EnDntJiji_Init>
      60:	2605014c 	addiu	a1,s0,332
      64:	2605025c 	addiu	a1,s0,604
      68:	afa50030 	sw	a1,48(sp)
      6c:	0c000000 	jal	0 <EnDntJiji_Init>
      70:	8fa4003c 	lw	a0,60(sp)
      74:	3c070000 	lui	a3,0x0
      78:	8fa50030 	lw	a1,48(sp)
      7c:	24e70000 	addiu	a3,a3,0
      80:	8fa4003c 	lw	a0,60(sp)
      84:	0c000000 	jal	0 <EnDntJiji_Init>
      88:	02003025 	move	a2,s0
      8c:	8e190118 	lw	t9,280(s0)
      90:	3c040000 	lui	a0,0x0
      94:	24840000 	addiu	a0,a0,0
      98:	0c000000 	jal	0 <EnDntJiji_Init>
      9c:	ae190258 	sw	t9,600(s0)
      a0:	3c040000 	lui	a0,0x0
      a4:	24840000 	addiu	a0,a0,0
      a8:	0c000000 	jal	0 <EnDntJiji_Init>
      ac:	8e050258 	lw	a1,600(s0)
      b0:	8e080004 	lw	t0,4(s0)
      b4:	2401fffe 	li	at,-2
      b8:	3c0c0000 	lui	t4,0x0
      bc:	01014824 	and	t1,t0,at
      c0:	3c01c000 	lui	at,0xc000
      c4:	44812000 	mtc1	at,$f4
      c8:	240a00ff 	li	t2,255
      cc:	240b0006 	li	t3,6
      d0:	258c0000 	addiu	t4,t4,0
      d4:	ae090004 	sw	t1,4(s0)
      d8:	a20a00ae 	sb	t2,174(s0)
      dc:	a20b001f 	sb	t3,31(s0)
      e0:	ae0c022c 	sw	t4,556(s0)
      e4:	e604006c 	swc1	$f4,108(s0)
      e8:	8fbf002c 	lw	ra,44(sp)
      ec:	8fb00028 	lw	s0,40(sp)
      f0:	27bd0038 	addiu	sp,sp,56
      f4:	03e00008 	jr	ra
      f8:	00000000 	nop

000000fc <EnDntJiji_Destroy>:
      fc:	27bdffe8 	addiu	sp,sp,-24
     100:	00803025 	move	a2,a0
     104:	afbf0014 	sw	ra,20(sp)
     108:	00a02025 	move	a0,a1
     10c:	0c000000 	jal	0 <EnDntJiji_Init>
     110:	24c5025c 	addiu	a1,a2,604
     114:	8fbf0014 	lw	ra,20(sp)
     118:	27bd0018 	addiu	sp,sp,24
     11c:	03e00008 	jr	ra
     120:	00000000 	nop

00000124 <func_809F1C04>:
     124:	afa50004 	sw	a1,4(sp)
     128:	948e0088 	lhu	t6,136(a0)
     12c:	3c080000 	lui	t0,0x0
     130:	31cf0001 	andi	t7,t6,0x1
     134:	11e00009 	beqz	t7,15c <func_809F1C04+0x38>
     138:	00000000 	nop
     13c:	8c990024 	lw	t9,36(a0)
     140:	8c980028 	lw	t8,40(a0)
     144:	25080000 	addiu	t0,t0,0
     148:	ac990230 	sw	t9,560(a0)
     14c:	8c99002c 	lw	t9,44(a0)
     150:	ac88022c 	sw	t0,556(a0)
     154:	ac980234 	sw	t8,564(a0)
     158:	ac990238 	sw	t9,568(a0)
     15c:	03e00008 	jr	ra
     160:	00000000 	nop

00000164 <func_809F1C44>:
     164:	27bdffd0 	addiu	sp,sp,-48
     168:	afb00028 	sw	s0,40(sp)
     16c:	00808025 	move	s0,a0
     170:	afbf002c 	sw	ra,44(sp)
     174:	3c040600 	lui	a0,0x600
     178:	afa50034 	sw	a1,52(sp)
     17c:	0c000000 	jal	0 <EnDntJiji_Init>
     180:	24840560 	addiu	a0,a0,1376
     184:	44822000 	mtc1	v0,$f4
     188:	44800000 	mtc1	zero,$f0
     18c:	3c01c120 	lui	at,0xc120
     190:	468021a0 	cvt.s.w	$f6,$f4
     194:	44819000 	mtc1	at,$f18
     198:	3c050600 	lui	a1,0x600
     19c:	44060000 	mfc1	a2,$f0
     1a0:	44070000 	mfc1	a3,$f0
     1a4:	24a50560 	addiu	a1,a1,1376
     1a8:	4600320d 	trunc.w.s	$f8,$f6
     1ac:	2604014c 	addiu	a0,s0,332
     1b0:	440f4000 	mfc1	t7,$f8
     1b4:	00000000 	nop
     1b8:	a60f0248 	sh	t7,584(s0)
     1bc:	86180248 	lh	t8,584(s0)
     1c0:	afa00014 	sw	zero,20(sp)
     1c4:	e7b20018 	swc1	$f18,24(sp)
     1c8:	44985000 	mtc1	t8,$f10
     1cc:	00000000 	nop
     1d0:	46805420 	cvt.s.w	$f16,$f10
     1d4:	0c000000 	jal	0 <EnDntJiji_Init>
     1d8:	e7b00010 	swc1	$f16,16(sp)
     1dc:	3c014100 	lui	at,0x4100
     1e0:	a600023e 	sh	zero,574(s0)
     1e4:	44812000 	mtc1	at,$f4
     1e8:	8619023e 	lh	t9,574(s0)
     1ec:	3c080000 	lui	t0,0x0
     1f0:	25080000 	addiu	t0,t0,0
     1f4:	ae08022c 	sw	t0,556(s0)
     1f8:	e6040164 	swc1	$f4,356(s0)
     1fc:	a219023c 	sb	t9,572(s0)
     200:	8fbf002c 	lw	ra,44(sp)
     204:	8fb00028 	lw	s0,40(sp)
     208:	27bd0030 	addiu	sp,sp,48
     20c:	03e00008 	jr	ra
     210:	00000000 	nop

00000214 <func_809F1CF4>:
     214:	27bdffd0 	addiu	sp,sp,-48
     218:	afbf0024 	sw	ra,36(sp)
     21c:	afb00020 	sw	s0,32(sp)
     220:	afa50034 	sw	a1,52(sp)
     224:	8caf1c44 	lw	t7,7236(a1)
     228:	00808025 	move	s0,a0
     22c:	2484014c 	addiu	a0,a0,332
     230:	0c000000 	jal	0 <EnDntJiji_Init>
     234:	afaf002c 	sw	t7,44(sp)
     238:	86180240 	lh	t8,576(s0)
     23c:	24010001 	li	at,1
     240:	1701001c 	bne	t8,at,2b4 <func_809F1CF4+0xa0>
     244:	3c014316 	lui	at,0x4316
     248:	44813000 	mtc1	at,$f6
     24c:	c6040090 	lwc1	$f4,144(s0)
     250:	4606203c 	c.lt.s	$f4,$f6
     254:	00000000 	nop
     258:	45020017 	bc1fl	2b8 <func_809F1CF4+0xa4>
     25c:	8fbf0024 	lw	ra,36(sp)
     260:	0c000000 	jal	0 <EnDntJiji_Init>
     264:	8fa40034 	lw	a0,52(sp)
     268:	14400012 	bnez	v0,2b4 <func_809F1CF4+0xa0>
     26c:	8fb9002c 	lw	t9,44(sp)
     270:	8f28067c 	lw	t0,1660(t9)
     274:	8fa40034 	lw	a0,52(sp)
     278:	240508b6 	li	a1,2230
     27c:	31090800 	andi	t1,t0,0x800
     280:	1520000c 	bnez	t1,2b4 <func_809F1CF4+0xa0>
     284:	2406ff9d 	li	a2,-99
     288:	02003825 	move	a3,s0
     28c:	0c000000 	jal	0 <EnDntJiji_Init>
     290:	afa00010 	sw	zero,16(sp)
     294:	a6000240 	sh	zero,576(s0)
     298:	8fa40034 	lw	a0,52(sp)
     29c:	00002825 	move	a1,zero
     2a0:	0c000000 	jal	0 <EnDntJiji_Init>
     2a4:	24060008 	li	a2,8
     2a8:	3c0a0000 	lui	t2,0x0
     2ac:	254a0000 	addiu	t2,t2,0
     2b0:	ae0a022c 	sw	t2,556(s0)
     2b4:	8fbf0024 	lw	ra,36(sp)
     2b8:	8fb00020 	lw	s0,32(sp)
     2bc:	27bd0030 	addiu	sp,sp,48
     2c0:	03e00008 	jr	ra
     2c4:	00000000 	nop

000002c8 <func_809F1DA8>:
     2c8:	27bdffc8 	addiu	sp,sp,-56
     2cc:	afb00030 	sw	s0,48(sp)
     2d0:	00808025 	move	s0,a0
     2d4:	afbf0034 	sw	ra,52(sp)
     2d8:	3c040600 	lui	a0,0x600
     2dc:	afa5003c 	sw	a1,60(sp)
     2e0:	0c000000 	jal	0 <EnDntJiji_Init>
     2e4:	248412b0 	addiu	a0,a0,4784
     2e8:	44822000 	mtc1	v0,$f4
     2ec:	3c01c120 	lui	at,0xc120
     2f0:	44819000 	mtc1	at,$f18
     2f4:	468021a0 	cvt.s.w	$f6,$f4
     2f8:	3c050600 	lui	a1,0x600
     2fc:	24190002 	li	t9,2
     300:	24a512b0 	addiu	a1,a1,4784
     304:	2604014c 	addiu	a0,s0,332
     308:	3c063f80 	lui	a2,0x3f80
     30c:	4600320d 	trunc.w.s	$f8,$f6
     310:	24070000 	li	a3,0
     314:	440f4000 	mfc1	t7,$f8
     318:	00000000 	nop
     31c:	a60f0248 	sh	t7,584(s0)
     320:	86180248 	lh	t8,584(s0)
     324:	afb90014 	sw	t9,20(sp)
     328:	e7b20018 	swc1	$f18,24(sp)
     32c:	44985000 	mtc1	t8,$f10
     330:	00000000 	nop
     334:	46805420 	cvt.s.w	$f16,$f10
     338:	0c000000 	jal	0 <EnDntJiji_Init>
     33c:	e7b00010 	swc1	$f16,16(sp)
     340:	2408000f 	li	t0,15
     344:	24090005 	li	t1,5
     348:	240a0014 	li	t2,20
     34c:	240bffff 	li	t3,-1
     350:	240c000a 	li	t4,10
     354:	afac0020 	sw	t4,32(sp)
     358:	afab001c 	sw	t3,28(sp)
     35c:	afaa0018 	sw	t2,24(sp)
     360:	afa90014 	sw	t1,20(sp)
     364:	afa80010 	sw	t0,16(sp)
     368:	8fa4003c 	lw	a0,60(sp)
     36c:	26050024 	addiu	a1,s0,36
     370:	3c0640c0 	lui	a2,0x40c0
     374:	00003825 	move	a3,zero
     378:	0c000000 	jal	0 <EnDntJiji_Init>
     37c:	afa00024 	sw	zero,36(sp)
     380:	02002025 	move	a0,s0
     384:	0c000000 	jal	0 <EnDntJiji_Init>
     388:	2405387c 	li	a1,14460
     38c:	3c0d0000 	lui	t5,0x0
     390:	25ad0000 	addiu	t5,t5,0
     394:	ae0d022c 	sw	t5,556(s0)
     398:	8fbf0034 	lw	ra,52(sp)
     39c:	8fb00030 	lw	s0,48(sp)
     3a0:	27bd0038 	addiu	sp,sp,56
     3a4:	03e00008 	jr	ra
     3a8:	00000000 	nop

000003ac <func_809F1E8C>:
     3ac:	27bdffd8 	addiu	sp,sp,-40
     3b0:	afb00020 	sw	s0,32(sp)
     3b4:	00808025 	move	s0,a0
     3b8:	afbf0024 	sw	ra,36(sp)
     3bc:	afa5002c 	sw	a1,44(sp)
     3c0:	0c000000 	jal	0 <EnDntJiji_Init>
     3c4:	2484014c 	addiu	a0,a0,332
     3c8:	8605008a 	lh	a1,138(s0)
     3cc:	afa00010 	sw	zero,16(sp)
     3d0:	260400b6 	addiu	a0,s0,182
     3d4:	24060003 	li	a2,3
     3d8:	0c000000 	jal	0 <EnDntJiji_Init>
     3dc:	24071388 	li	a3,5000
     3e0:	3c014316 	lui	at,0x4316
     3e4:	44813000 	mtc1	at,$f6
     3e8:	c6040090 	lwc1	$f4,144(s0)
     3ec:	3c0e0000 	lui	t6,0x0
     3f0:	25ce0000 	addiu	t6,t6,0
     3f4:	4606203c 	c.lt.s	$f4,$f6
     3f8:	00000000 	nop
     3fc:	45020003 	bc1fl	40c <func_809F1E8C+0x60>
     400:	8fbf0024 	lw	ra,36(sp)
     404:	ae0e022c 	sw	t6,556(s0)
     408:	8fbf0024 	lw	ra,36(sp)
     40c:	8fb00020 	lw	s0,32(sp)
     410:	27bd0028 	addiu	sp,sp,40
     414:	03e00008 	jr	ra
     418:	00000000 	nop

0000041c <func_809F1EFC>:
     41c:	27bdffc8 	addiu	sp,sp,-56
     420:	afb00030 	sw	s0,48(sp)
     424:	00808025 	move	s0,a0
     428:	afbf0034 	sw	ra,52(sp)
     42c:	3c040600 	lui	a0,0x600
     430:	afa5003c 	sw	a1,60(sp)
     434:	0c000000 	jal	0 <EnDntJiji_Init>
     438:	24840df8 	addiu	a0,a0,3576
     43c:	44822000 	mtc1	v0,$f4
     440:	3c01c120 	lui	at,0xc120
     444:	44819000 	mtc1	at,$f18
     448:	468021a0 	cvt.s.w	$f6,$f4
     44c:	3c050600 	lui	a1,0x600
     450:	24190002 	li	t9,2
     454:	24a50df8 	addiu	a1,a1,3576
     458:	2604014c 	addiu	a0,s0,332
     45c:	3c063f80 	lui	a2,0x3f80
     460:	4600320d 	trunc.w.s	$f8,$f6
     464:	24070000 	li	a3,0
     468:	440f4000 	mfc1	t7,$f8
     46c:	00000000 	nop
     470:	a60f0248 	sh	t7,584(s0)
     474:	86180248 	lh	t8,584(s0)
     478:	afb90014 	sw	t9,20(sp)
     47c:	e7b20018 	swc1	$f18,24(sp)
     480:	44985000 	mtc1	t8,$f10
     484:	00000000 	nop
     488:	46805420 	cvt.s.w	$f16,$f10
     48c:	0c000000 	jal	0 <EnDntJiji_Init>
     490:	e7b00010 	swc1	$f16,16(sp)
     494:	2408000f 	li	t0,15
     498:	24090005 	li	t1,5
     49c:	240a0014 	li	t2,20
     4a0:	240bffff 	li	t3,-1
     4a4:	240c000a 	li	t4,10
     4a8:	afac0020 	sw	t4,32(sp)
     4ac:	afab001c 	sw	t3,28(sp)
     4b0:	afaa0018 	sw	t2,24(sp)
     4b4:	afa90014 	sw	t1,20(sp)
     4b8:	afa80010 	sw	t0,16(sp)
     4bc:	8fa4003c 	lw	a0,60(sp)
     4c0:	26050024 	addiu	a1,s0,36
     4c4:	3c0640c0 	lui	a2,0x40c0
     4c8:	00003825 	move	a3,zero
     4cc:	0c000000 	jal	0 <EnDntJiji_Init>
     4d0:	afa00024 	sw	zero,36(sp)
     4d4:	02002025 	move	a0,s0
     4d8:	0c000000 	jal	0 <EnDntJiji_Init>
     4dc:	2405387c 	li	a1,14460
     4e0:	3c0d0000 	lui	t5,0x0
     4e4:	25ad0000 	addiu	t5,t5,0
     4e8:	ae0d022c 	sw	t5,556(s0)
     4ec:	8fbf0034 	lw	ra,52(sp)
     4f0:	8fb00030 	lw	s0,48(sp)
     4f4:	27bd0038 	addiu	sp,sp,56
     4f8:	03e00008 	jr	ra
     4fc:	00000000 	nop

00000500 <func_809F1FE0>:
     500:	27bdffe0 	addiu	sp,sp,-32
     504:	afbf0014 	sw	ra,20(sp)
     508:	afa40020 	sw	a0,32(sp)
     50c:	afa50024 	sw	a1,36(sp)
     510:	c4840164 	lwc1	$f4,356(a0)
     514:	00802825 	move	a1,a0
     518:	afa50020 	sw	a1,32(sp)
     51c:	2484014c 	addiu	a0,a0,332
     520:	0c000000 	jal	0 <EnDntJiji_Init>
     524:	e7a4001c 	swc1	$f4,28(sp)
     528:	8fa50020 	lw	a1,32(sp)
     52c:	c7a6001c 	lwc1	$f6,28(sp)
     530:	84ae0248 	lh	t6,584(a1)
     534:	448e4000 	mtc1	t6,$f8
     538:	00000000 	nop
     53c:	468042a0 	cvt.s.w	$f10,$f8
     540:	4606503e 	c.le.s	$f10,$f6
     544:	00000000 	nop
     548:	4502000c 	bc1fl	57c <func_809F1FE0+0x7c>
     54c:	8fbf0014 	lw	ra,20(sp)
     550:	84af023e 	lh	t7,574(a1)
     554:	24010003 	li	at,3
     558:	3c190000 	lui	t9,0x0
     55c:	11e10005 	beq	t7,at,574 <func_809F1FE0+0x74>
     560:	27390000 	addiu	t9,t9,0
     564:	3c180000 	lui	t8,0x0
     568:	27180000 	addiu	t8,t8,0
     56c:	10000002 	b	578 <func_809F1FE0+0x78>
     570:	acb8022c 	sw	t8,556(a1)
     574:	acb9022c 	sw	t9,556(a1)
     578:	8fbf0014 	lw	ra,20(sp)
     57c:	27bd0020 	addiu	sp,sp,32
     580:	03e00008 	jr	ra
     584:	00000000 	nop

00000588 <func_809F2068>:
     588:	27bdffd0 	addiu	sp,sp,-48
     58c:	afb00028 	sw	s0,40(sp)
     590:	00808025 	move	s0,a0
     594:	afbf002c 	sw	ra,44(sp)
     598:	3c040600 	lui	a0,0x600
     59c:	afa50034 	sw	a1,52(sp)
     5a0:	0c000000 	jal	0 <EnDntJiji_Init>
     5a4:	248437c0 	addiu	a0,a0,14272
     5a8:	44822000 	mtc1	v0,$f4
     5ac:	3c01c120 	lui	at,0xc120
     5b0:	44819000 	mtc1	at,$f18
     5b4:	468021a0 	cvt.s.w	$f6,$f4
     5b8:	3c050600 	lui	a1,0x600
     5bc:	24a537c0 	addiu	a1,a1,14272
     5c0:	2604014c 	addiu	a0,s0,332
     5c4:	3c063f80 	lui	a2,0x3f80
     5c8:	24070000 	li	a3,0
     5cc:	4600320d 	trunc.w.s	$f8,$f6
     5d0:	440f4000 	mfc1	t7,$f8
     5d4:	00000000 	nop
     5d8:	a60f0248 	sh	t7,584(s0)
     5dc:	86180248 	lh	t8,584(s0)
     5e0:	afa00014 	sw	zero,20(sp)
     5e4:	e7b20018 	swc1	$f18,24(sp)
     5e8:	44985000 	mtc1	t8,$f10
     5ec:	00000000 	nop
     5f0:	46805420 	cvt.s.w	$f16,$f10
     5f4:	0c000000 	jal	0 <EnDntJiji_Init>
     5f8:	e7b00010 	swc1	$f16,16(sp)
     5fc:	3c013f80 	lui	at,0x3f80
     600:	44812000 	mtc1	at,$f4
     604:	3c090000 	lui	t1,0x0
     608:	24190001 	li	t9,1
     60c:	24080001 	li	t0,1
     610:	25290000 	addiu	t1,t1,0
     614:	a219023c 	sb	t9,572(s0)
     618:	a608024a 	sh	t0,586(s0)
     61c:	ae09022c 	sw	t1,556(s0)
     620:	e6040068 	swc1	$f4,104(s0)
     624:	8fbf002c 	lw	ra,44(sp)
     628:	8fb00028 	lw	s0,40(sp)
     62c:	27bd0030 	addiu	sp,sp,48
     630:	03e00008 	jr	ra
     634:	00000000 	nop

00000638 <func_809F2118>:
     638:	27bdffd8 	addiu	sp,sp,-40
     63c:	afb00020 	sw	s0,32(sp)
     640:	00808025 	move	s0,a0
     644:	afbf0024 	sw	ra,36(sp)
     648:	afa5002c 	sw	a1,44(sp)
     64c:	0c000000 	jal	0 <EnDntJiji_Init>
     650:	2484014c 	addiu	a0,a0,332
     654:	8605008a 	lh	a1,138(s0)
     658:	afa00010 	sw	zero,16(sp)
     65c:	260400b6 	addiu	a0,s0,182
     660:	24060005 	li	a2,5
     664:	0c000000 	jal	0 <EnDntJiji_Init>
     668:	240703e8 	li	a3,1000
     66c:	860e00b6 	lh	t6,182(s0)
     670:	3c063e4c 	lui	a2,0x3e4c
     674:	3c073ecc 	lui	a3,0x3ecc
     678:	34e7cccd 	ori	a3,a3,0xcccd
     67c:	34c6cccd 	ori	a2,a2,0xcccd
     680:	26040068 	addiu	a0,s0,104
     684:	3c053f80 	lui	a1,0x3f80
     688:	0c000000 	jal	0 <EnDntJiji_Init>
     68c:	a60e0032 	sh	t6,50(s0)
     690:	860f0242 	lh	t7,578(s0)
     694:	24180005 	li	t8,5
     698:	02002025 	move	a0,s0
     69c:	15e00003 	bnez	t7,6ac <func_809F2118+0x74>
     6a0:	2405387f 	li	a1,14463
     6a4:	0c000000 	jal	0 <EnDntJiji_Init>
     6a8:	a6180242 	sh	t8,578(s0)
     6ac:	96020088 	lhu	v0,136(s0)
     6b0:	3c090000 	lui	t1,0x0
     6b4:	3c0a0000 	lui	t2,0x0
     6b8:	30590008 	andi	t9,v0,0x8
     6bc:	13200008 	beqz	t9,6e0 <func_809F2118+0xa8>
     6c0:	30480001 	andi	t0,v0,0x1
     6c4:	11000006 	beqz	t0,6e0 <func_809F2118+0xa8>
     6c8:	3c014110 	lui	at,0x4110
     6cc:	44812000 	mtc1	at,$f4
     6d0:	3c014040 	lui	at,0x4040
     6d4:	44813000 	mtc1	at,$f6
     6d8:	e6040060 	swc1	$f4,96(s0)
     6dc:	e6060068 	swc1	$f6,104(s0)
     6e0:	3c0142c8 	lui	at,0x42c8
     6e4:	44815000 	mtc1	at,$f10
     6e8:	c6080090 	lwc1	$f8,144(s0)
     6ec:	2418104d 	li	t8,4173
     6f0:	3c0c0000 	lui	t4,0x0
     6f4:	460a403c 	c.lt.s	$f8,$f10
     6f8:	3305ffff 	andi	a1,t8,0xffff
     6fc:	00003025 	move	a2,zero
     700:	45020018 	bc1fl	764 <func_809F2118+0x12c>
     704:	8fbf0024 	lw	ra,36(sp)
     708:	8d2900a0 	lw	t1,160(t1)
     70c:	8d4a0018 	lw	t2,24(t2)
     710:	918c0006 	lbu	t4,6(t4)
     714:	24010001 	li	at,1
     718:	012a5824 	and	t3,t1,t2
     71c:	018b6807 	srav	t5,t3,t4
     720:	15a10004 	bne	t5,at,734 <func_809F2118+0xfc>
     724:	240f0078 	li	t7,120
     728:	240e0077 	li	t6,119
     72c:	10000002 	b	738 <func_809F2118+0x100>
     730:	ae0e0254 	sw	t6,596(s0)
     734:	ae0f0254 	sw	t7,596(s0)
     738:	a618010e 	sh	t8,270(s0)
     73c:	0c000000 	jal	0 <EnDntJiji_Init>
     740:	8fa4002c 	lw	a0,44(sp)
     744:	44808000 	mtc1	zero,$f16
     748:	3c080000 	lui	t0,0x0
     74c:	24190005 	li	t9,5
     750:	25080000 	addiu	t0,t0,0
     754:	a6190250 	sh	t9,592(s0)
     758:	ae08022c 	sw	t0,556(s0)
     75c:	e6100068 	swc1	$f16,104(s0)
     760:	8fbf0024 	lw	ra,36(sp)
     764:	8fb00020 	lw	s0,32(sp)
     768:	27bd0028 	addiu	sp,sp,40
     76c:	03e00008 	jr	ra
     770:	00000000 	nop

00000774 <func_809F2254>:
     774:	27bdffc8 	addiu	sp,sp,-56
     778:	afb00030 	sw	s0,48(sp)
     77c:	00808025 	move	s0,a0
     780:	afbf0034 	sw	ra,52(sp)
     784:	3c040600 	lui	a0,0x600
     788:	afa5003c 	sw	a1,60(sp)
     78c:	0c000000 	jal	0 <EnDntJiji_Init>
     790:	24840560 	addiu	a0,a0,1376
     794:	44822000 	mtc1	v0,$f4
     798:	3c01c120 	lui	at,0xc120
     79c:	44819000 	mtc1	at,$f18
     7a0:	468021a0 	cvt.s.w	$f6,$f4
     7a4:	3c050600 	lui	a1,0x600
     7a8:	24190002 	li	t9,2
     7ac:	24a50560 	addiu	a1,a1,1376
     7b0:	2604014c 	addiu	a0,s0,332
     7b4:	3c063f80 	lui	a2,0x3f80
     7b8:	4600320d 	trunc.w.s	$f8,$f6
     7bc:	24070000 	li	a3,0
     7c0:	440f4000 	mfc1	t7,$f8
     7c4:	00000000 	nop
     7c8:	a60f0248 	sh	t7,584(s0)
     7cc:	86180248 	lh	t8,584(s0)
     7d0:	afb90014 	sw	t9,20(sp)
     7d4:	e7b20018 	swc1	$f18,24(sp)
     7d8:	44985000 	mtc1	t8,$f10
     7dc:	00000000 	nop
     7e0:	46805420 	cvt.s.w	$f16,$f10
     7e4:	0c000000 	jal	0 <EnDntJiji_Init>
     7e8:	e7b00010 	swc1	$f16,16(sp)
     7ec:	2408000f 	li	t0,15
     7f0:	24090005 	li	t1,5
     7f4:	240a0014 	li	t2,20
     7f8:	240bffff 	li	t3,-1
     7fc:	240c000a 	li	t4,10
     800:	afac0020 	sw	t4,32(sp)
     804:	afab001c 	sw	t3,28(sp)
     808:	afaa0018 	sw	t2,24(sp)
     80c:	afa90014 	sw	t1,20(sp)
     810:	afa80010 	sw	t0,16(sp)
     814:	8fa4003c 	lw	a0,60(sp)
     818:	26050024 	addiu	a1,s0,36
     81c:	3c0640c0 	lui	a2,0x40c0
     820:	00003825 	move	a3,zero
     824:	0c000000 	jal	0 <EnDntJiji_Init>
     828:	afa00024 	sw	zero,36(sp)
     82c:	02002025 	move	a0,s0
     830:	0c000000 	jal	0 <EnDntJiji_Init>
     834:	2405387c 	li	a1,14460
     838:	02002025 	move	a0,s0
     83c:	0c000000 	jal	0 <EnDntJiji_Init>
     840:	2405387d 	li	a1,14461
     844:	3c0d0000 	lui	t5,0x0
     848:	25ad0000 	addiu	t5,t5,0
     84c:	ae0d022c 	sw	t5,556(s0)
     850:	8fbf0034 	lw	ra,52(sp)
     854:	8fb00030 	lw	s0,48(sp)
     858:	27bd0038 	addiu	sp,sp,56
     85c:	03e00008 	jr	ra
     860:	00000000 	nop

00000864 <func_809F2344>:
     864:	27bdffe8 	addiu	sp,sp,-24
     868:	afbf0014 	sw	ra,20(sp)
     86c:	afa40018 	sw	a0,24(sp)
     870:	afa5001c 	sw	a1,28(sp)
     874:	0c000000 	jal	0 <EnDntJiji_Init>
     878:	2484014c 	addiu	a0,a0,332
     87c:	8fbf0014 	lw	ra,20(sp)
     880:	27bd0018 	addiu	sp,sp,24
     884:	03e00008 	jr	ra
     888:	00000000 	nop

0000088c <func_809F236C>:
     88c:	27bdffc8 	addiu	sp,sp,-56
     890:	afb00030 	sw	s0,48(sp)
     894:	00808025 	move	s0,a0
     898:	afbf0034 	sw	ra,52(sp)
     89c:	3c040600 	lui	a0,0x600
     8a0:	afa5003c 	sw	a1,60(sp)
     8a4:	0c000000 	jal	0 <EnDntJiji_Init>
     8a8:	24840944 	addiu	a0,a0,2372
     8ac:	44822000 	mtc1	v0,$f4
     8b0:	3c01c120 	lui	at,0xc120
     8b4:	44819000 	mtc1	at,$f18
     8b8:	468021a0 	cvt.s.w	$f6,$f4
     8bc:	3c050600 	lui	a1,0x600
     8c0:	24190002 	li	t9,2
     8c4:	24a50944 	addiu	a1,a1,2372
     8c8:	2604014c 	addiu	a0,s0,332
     8cc:	3c063f80 	lui	a2,0x3f80
     8d0:	4600320d 	trunc.w.s	$f8,$f6
     8d4:	24070000 	li	a3,0
     8d8:	440f4000 	mfc1	t7,$f8
     8dc:	00000000 	nop
     8e0:	a60f0248 	sh	t7,584(s0)
     8e4:	86180248 	lh	t8,584(s0)
     8e8:	afb90014 	sw	t9,20(sp)
     8ec:	e7b20018 	swc1	$f18,24(sp)
     8f0:	44985000 	mtc1	t8,$f10
     8f4:	00000000 	nop
     8f8:	46805420 	cvt.s.w	$f16,$f10
     8fc:	0c000000 	jal	0 <EnDntJiji_Init>
     900:	e7b00010 	swc1	$f16,16(sp)
     904:	24080009 	li	t0,9
     908:	24090003 	li	t1,3
     90c:	240a000a 	li	t2,10
     910:	240bffff 	li	t3,-1
     914:	240c000a 	li	t4,10
     918:	afac0020 	sw	t4,32(sp)
     91c:	afab001c 	sw	t3,28(sp)
     920:	afaa0018 	sw	t2,24(sp)
     924:	afa90014 	sw	t1,20(sp)
     928:	afa80010 	sw	t0,16(sp)
     92c:	8fa4003c 	lw	a0,60(sp)
     930:	26050024 	addiu	a1,s0,36
     934:	3c064040 	lui	a2,0x4040
     938:	00003825 	move	a3,zero
     93c:	0c000000 	jal	0 <EnDntJiji_Init>
     940:	afa00024 	sw	zero,36(sp)
     944:	02002025 	move	a0,s0
     948:	0c000000 	jal	0 <EnDntJiji_Init>
     94c:	2405387c 	li	a1,14460
     950:	3c0d0000 	lui	t5,0x0
     954:	3c0e0000 	lui	t6,0x0
     958:	8dce001c 	lw	t6,28(t6)
     95c:	8dad00a0 	lw	t5,160(t5)
     960:	3c180000 	lui	t8,0x0
     964:	93180007 	lbu	t8,7(t8)
     968:	01ae7824 	and	t7,t5,t6
     96c:	24010001 	li	at,1
     970:	030f1007 	srav	v0,t7,t8
     974:	10410003 	beq	v0,at,984 <func_809F236C+0xf8>
     978:	240b10db 	li	t3,4315
     97c:	14400004 	bnez	v0,990 <func_809F236C+0x104>
     980:	2408007a 	li	t0,122
     984:	24190079 	li	t9,121
     988:	10000002 	b	994 <func_809F236C+0x108>
     98c:	ae190254 	sw	t9,596(s0)
     990:	ae080254 	sw	t0,596(s0)
     994:	8e090004 	lw	t1,4(s0)
     998:	3c0d0000 	lui	t5,0x0
     99c:	240c0005 	li	t4,5
     9a0:	25ad0000 	addiu	t5,t5,0
     9a4:	352a0001 	ori	t2,t1,0x1
     9a8:	ae0a0004 	sw	t2,4(s0)
     9ac:	a60b010e 	sh	t3,270(s0)
     9b0:	a60c0250 	sh	t4,592(s0)
     9b4:	ae0d022c 	sw	t5,556(s0)
     9b8:	8fbf0034 	lw	ra,52(sp)
     9bc:	8fb00030 	lw	s0,48(sp)
     9c0:	27bd0038 	addiu	sp,sp,56
     9c4:	03e00008 	jr	ra
     9c8:	00000000 	nop

000009cc <func_809F24AC>:
     9cc:	27bdffd0 	addiu	sp,sp,-48
     9d0:	afbf0024 	sw	ra,36(sp)
     9d4:	afb00020 	sw	s0,32(sp)
     9d8:	afa50034 	sw	a1,52(sp)
     9dc:	c4840164 	lwc1	$f4,356(a0)
     9e0:	00808025 	move	s0,a0
     9e4:	2484014c 	addiu	a0,a0,332
     9e8:	0c000000 	jal	0 <EnDntJiji_Init>
     9ec:	e7a4002c 	swc1	$f4,44(sp)
     9f0:	8605008a 	lh	a1,138(s0)
     9f4:	afa00010 	sw	zero,16(sp)
     9f8:	260400b6 	addiu	a0,s0,182
     9fc:	24060003 	li	a2,3
     a00:	0c000000 	jal	0 <EnDntJiji_Init>
     a04:	24071388 	li	a3,5000
     a08:	860e0248 	lh	t6,584(s0)
     a0c:	c7a6002c 	lwc1	$f6,44(sp)
     a10:	02002025 	move	a0,s0
     a14:	448e4000 	mtc1	t6,$f8
     a18:	00000000 	nop
     a1c:	468042a0 	cvt.s.w	$f10,$f8
     a20:	4606503e 	c.le.s	$f10,$f6
     a24:	00000000 	nop
     a28:	4502000d 	bc1fl	a60 <func_809F24AC+0x94>
     a2c:	8fbf0024 	lw	ra,36(sp)
     a30:	0c000000 	jal	0 <EnDntJiji_Init>
     a34:	8fa50034 	lw	a1,52(sp)
     a38:	10400005 	beqz	v0,a50 <func_809F24AC+0x84>
     a3c:	02002025 	move	a0,s0
     a40:	3c0f0000 	lui	t7,0x0
     a44:	25ef0000 	addiu	t7,t7,0
     a48:	10000004 	b	a5c <func_809F24AC+0x90>
     a4c:	ae0f022c 	sw	t7,556(s0)
     a50:	8fa50034 	lw	a1,52(sp)
     a54:	0c000000 	jal	0 <EnDntJiji_Init>
     a58:	3c0642c8 	lui	a2,0x42c8
     a5c:	8fbf0024 	lw	ra,36(sp)
     a60:	8fb00020 	lw	s0,32(sp)
     a64:	27bd0030 	addiu	sp,sp,48
     a68:	03e00008 	jr	ra
     a6c:	00000000 	nop

00000a70 <func_809F2550>:
     a70:	27bdffd8 	addiu	sp,sp,-40
     a74:	afa40028 	sw	a0,40(sp)
     a78:	afbf0024 	sw	ra,36(sp)
     a7c:	3c040600 	lui	a0,0x600
     a80:	afa5002c 	sw	a1,44(sp)
     a84:	0c000000 	jal	0 <EnDntJiji_Init>
     a88:	24840bd0 	addiu	a0,a0,3024
     a8c:	44822000 	mtc1	v0,$f4
     a90:	8fa30028 	lw	v1,40(sp)
     a94:	3c01c120 	lui	at,0xc120
     a98:	468021a0 	cvt.s.w	$f6,$f4
     a9c:	44819000 	mtc1	at,$f18
     aa0:	3c050600 	lui	a1,0x600
     aa4:	24a50bd0 	addiu	a1,a1,3024
     aa8:	3c063f80 	lui	a2,0x3f80
     aac:	24070000 	li	a3,0
     ab0:	4600320d 	trunc.w.s	$f8,$f6
     ab4:	2464014c 	addiu	a0,v1,332
     ab8:	440f4000 	mfc1	t7,$f8
     abc:	00000000 	nop
     ac0:	a46f0248 	sh	t7,584(v1)
     ac4:	84780248 	lh	t8,584(v1)
     ac8:	afa00014 	sw	zero,20(sp)
     acc:	e7b20018 	swc1	$f18,24(sp)
     ad0:	44985000 	mtc1	t8,$f10
     ad4:	00000000 	nop
     ad8:	46805420 	cvt.s.w	$f16,$f10
     adc:	0c000000 	jal	0 <EnDntJiji_Init>
     ae0:	e7b00010 	swc1	$f16,16(sp)
     ae4:	8fa30028 	lw	v1,40(sp)
     ae8:	3c190000 	lui	t9,0x0
     aec:	27390000 	addiu	t9,t9,0
     af0:	ac79022c 	sw	t9,556(v1)
     af4:	8fbf0024 	lw	ra,36(sp)
     af8:	27bd0028 	addiu	sp,sp,40
     afc:	03e00008 	jr	ra
     b00:	00000000 	nop

00000b04 <func_809F25E4>:
     b04:	27bdffd8 	addiu	sp,sp,-40
     b08:	afb0001c 	sw	s0,28(sp)
     b0c:	00808025 	move	s0,a0
     b10:	afbf0024 	sw	ra,36(sp)
     b14:	afb10020 	sw	s1,32(sp)
     b18:	00a08825 	move	s1,a1
     b1c:	0c000000 	jal	0 <EnDntJiji_Init>
     b20:	2484014c 	addiu	a0,a0,332
     b24:	8605008a 	lh	a1,138(s0)
     b28:	afa00010 	sw	zero,16(sp)
     b2c:	260400b6 	addiu	a0,s0,182
     b30:	24060003 	li	a2,3
     b34:	0c000000 	jal	0 <EnDntJiji_Init>
     b38:	24071388 	li	a3,5000
     b3c:	0c000000 	jal	0 <EnDntJiji_Init>
     b40:	262420d8 	addiu	a0,s1,8408
     b44:	24010005 	li	at,5
     b48:	5441001d 	bnel	v0,at,bc0 <func_809F25E4+0xbc>
     b4c:	8fbf0024 	lw	ra,36(sp)
     b50:	0c000000 	jal	0 <EnDntJiji_Init>
     b54:	02202025 	move	a0,s1
     b58:	50400019 	beqzl	v0,bc0 <func_809F25E4+0xbc>
     b5c:	8fbf0024 	lw	ra,36(sp)
     b60:	862e07a0 	lh	t6,1952(s1)
     b64:	000e7880 	sll	t7,t6,0x2
     b68:	022fc021 	addu	t8,s1,t7
     b6c:	0c000000 	jal	0 <EnDntJiji_Init>
     b70:	8f040790 	lw	a0,1936(t8)
     b74:	0c000000 	jal	0 <EnDntJiji_Init>
     b78:	02202025 	move	a0,s1
     b7c:	02202025 	move	a0,s1
     b80:	00002825 	move	a1,zero
     b84:	0c000000 	jal	0 <EnDntJiji_Init>
     b88:	24060007 	li	a2,7
     b8c:	3c014348 	lui	at,0x4348
     b90:	44812000 	mtc1	at,$f4
     b94:	ae000118 	sw	zero,280(s0)
     b98:	8e060254 	lw	a2,596(s0)
     b9c:	02002025 	move	a0,s0
     ba0:	02202825 	move	a1,s1
     ba4:	3c0743c8 	lui	a3,0x43c8
     ba8:	0c000000 	jal	0 <EnDntJiji_Init>
     bac:	e7a40010 	swc1	$f4,16(sp)
     bb0:	3c190000 	lui	t9,0x0
     bb4:	27390000 	addiu	t9,t9,0
     bb8:	ae19022c 	sw	t9,556(s0)
     bbc:	8fbf0024 	lw	ra,36(sp)
     bc0:	8fb0001c 	lw	s0,28(sp)
     bc4:	8fb10020 	lw	s1,32(sp)
     bc8:	03e00008 	jr	ra
     bcc:	27bd0028 	addiu	sp,sp,40

00000bd0 <func_809F26B0>:
     bd0:	27bdffd8 	addiu	sp,sp,-40
     bd4:	afb00020 	sw	s0,32(sp)
     bd8:	00808025 	move	s0,a0
     bdc:	afbf0024 	sw	ra,36(sp)
     be0:	afa5002c 	sw	a1,44(sp)
     be4:	0c000000 	jal	0 <EnDntJiji_Init>
     be8:	2484014c 	addiu	a0,a0,332
     bec:	02002025 	move	a0,s0
     bf0:	0c000000 	jal	0 <EnDntJiji_Init>
     bf4:	8fa5002c 	lw	a1,44(sp)
     bf8:	10400005 	beqz	v0,c10 <func_809F26B0+0x40>
     bfc:	02002025 	move	a0,s0
     c00:	3c0e0000 	lui	t6,0x0
     c04:	25ce0000 	addiu	t6,t6,0
     c08:	10000008 	b	c2c <func_809F26B0+0x5c>
     c0c:	ae0e022c 	sw	t6,556(s0)
     c10:	3c014348 	lui	at,0x4348
     c14:	44812000 	mtc1	at,$f4
     c18:	8e060254 	lw	a2,596(s0)
     c1c:	8fa5002c 	lw	a1,44(sp)
     c20:	3c0743c8 	lui	a3,0x43c8
     c24:	0c000000 	jal	0 <EnDntJiji_Init>
     c28:	e7a40010 	swc1	$f4,16(sp)
     c2c:	8fbf0024 	lw	ra,36(sp)
     c30:	8fb00020 	lw	s0,32(sp)
     c34:	27bd0028 	addiu	sp,sp,40
     c38:	03e00008 	jr	ra
     c3c:	00000000 	nop

00000c40 <func_809F2720>:
     c40:	27bdffe0 	addiu	sp,sp,-32
     c44:	afb00018 	sw	s0,24(sp)
     c48:	00808025 	move	s0,a0
     c4c:	afbf001c 	sw	ra,28(sp)
     c50:	afa50024 	sw	a1,36(sp)
     c54:	0c000000 	jal	0 <EnDntJiji_Init>
     c58:	2484014c 	addiu	a0,a0,332
     c5c:	8fa40024 	lw	a0,36(sp)
     c60:	0c000000 	jal	0 <EnDntJiji_Init>
     c64:	248420d8 	addiu	a0,a0,8408
     c68:	24010006 	li	at,6
     c6c:	5441005f 	bnel	v0,at,dec <func_809F2720+0x1ac>
     c70:	8fbf001c 	lw	ra,28(sp)
     c74:	0c000000 	jal	0 <EnDntJiji_Init>
     c78:	8fa40024 	lw	a0,36(sp)
     c7c:	5040005b 	beqzl	v0,dec <func_809F2720+0x1ac>
     c80:	8fbf001c 	lw	ra,28(sp)
     c84:	8e020254 	lw	v0,596(s0)
     c88:	24010079 	li	at,121
     c8c:	3c040000 	lui	a0,0x0
     c90:	10410003 	beq	v0,at,ca0 <func_809F2720+0x60>
     c94:	2401007a 	li	at,122
     c98:	1441001e 	bne	v0,at,d14 <func_809F2720+0xd4>
     c9c:	00000000 	nop
     ca0:	0c000000 	jal	0 <EnDntJiji_Init>
     ca4:	24840000 	addiu	a0,a0,0
     ca8:	3c040000 	lui	a0,0x0
     cac:	0c000000 	jal	0 <EnDntJiji_Init>
     cb0:	24840000 	addiu	a0,a0,0
     cb4:	3c040000 	lui	a0,0x0
     cb8:	0c000000 	jal	0 <EnDntJiji_Init>
     cbc:	24840000 	addiu	a0,a0,0
     cc0:	3c040000 	lui	a0,0x0
     cc4:	0c000000 	jal	0 <EnDntJiji_Init>
     cc8:	24840000 	addiu	a0,a0,0
     ccc:	3c040000 	lui	a0,0x0
     cd0:	0c000000 	jal	0 <EnDntJiji_Init>
     cd4:	24840000 	addiu	a0,a0,0
     cd8:	3c040000 	lui	a0,0x0
     cdc:	0c000000 	jal	0 <EnDntJiji_Init>
     ce0:	24840000 	addiu	a0,a0,0
     ce4:	3c040000 	lui	a0,0x0
     ce8:	0c000000 	jal	0 <EnDntJiji_Init>
     cec:	24840000 	addiu	a0,a0,0
     cf0:	3c040000 	lui	a0,0x0
     cf4:	0c000000 	jal	0 <EnDntJiji_Init>
     cf8:	24840000 	addiu	a0,a0,0
     cfc:	3c020000 	lui	v0,0x0
     d00:	24420000 	addiu	v0,v0,0
     d04:	944e0ef2 	lhu	t6,3826(v0)
     d08:	35cf8000 	ori	t7,t6,0x8000
     d0c:	10000018 	b	d70 <func_809F2720+0x130>
     d10:	a44f0ef2 	sh	t7,3826(v0)
     d14:	3c040000 	lui	a0,0x0
     d18:	0c000000 	jal	0 <EnDntJiji_Init>
     d1c:	24840000 	addiu	a0,a0,0
     d20:	3c040000 	lui	a0,0x0
     d24:	0c000000 	jal	0 <EnDntJiji_Init>
     d28:	24840000 	addiu	a0,a0,0
     d2c:	3c040000 	lui	a0,0x0
     d30:	0c000000 	jal	0 <EnDntJiji_Init>
     d34:	24840000 	addiu	a0,a0,0
     d38:	3c040000 	lui	a0,0x0
     d3c:	0c000000 	jal	0 <EnDntJiji_Init>
     d40:	24840000 	addiu	a0,a0,0
     d44:	3c040000 	lui	a0,0x0
     d48:	0c000000 	jal	0 <EnDntJiji_Init>
     d4c:	24840000 	addiu	a0,a0,0
     d50:	3c040000 	lui	a0,0x0
     d54:	0c000000 	jal	0 <EnDntJiji_Init>
     d58:	24840000 	addiu	a0,a0,0
     d5c:	3c020000 	lui	v0,0x0
     d60:	24420000 	addiu	v0,v0,0
     d64:	94580ef2 	lhu	t8,3826(v0)
     d68:	37194000 	ori	t9,t8,0x4000
     d6c:	a4590ef2 	sh	t9,3826(v0)
     d70:	8e020258 	lw	v0,600(s0)
     d74:	3c190000 	lui	t9,0x0
     d78:	a600010e 	sh	zero,270(s0)
     d7c:	1040000f 	beqz	v0,dbc <func_809F2720+0x17c>
     d80:	27390000 	addiu	t9,t9,0
     d84:	8c480130 	lw	t0,304(v0)
     d88:	5100000d 	beqzl	t0,dc0 <func_809F2720+0x180>
     d8c:	8e0e0004 	lw	t6,4(s0)
     d90:	a440015a 	sh	zero,346(v0)
     d94:	8609024a 	lh	t1,586(s0)
     d98:	55200006 	bnezl	t1,db4 <func_809F2720+0x174>
     d9c:	8e0d0258 	lw	t5,600(s0)
     da0:	8e0b0258 	lw	t3,600(s0)
     da4:	240a0004 	li	t2,4
     da8:	10000004 	b	dbc <func_809F2720+0x17c>
     dac:	a56a0158 	sh	t2,344(t3)
     db0:	8e0d0258 	lw	t5,600(s0)
     db4:	240c0005 	li	t4,5
     db8:	a5ac0158 	sh	t4,344(t5)
     dbc:	8e0e0004 	lw	t6,4(s0)
     dc0:	8618024a 	lh	t8,586(s0)
     dc4:	2401fffe 	li	at,-2
     dc8:	01c17824 	and	t7,t6,at
     dcc:	17000003 	bnez	t8,ddc <func_809F2720+0x19c>
     dd0:	ae0f0004 	sw	t7,4(s0)
     dd4:	10000004 	b	de8 <func_809F2720+0x1a8>
     dd8:	ae19022c 	sw	t9,556(s0)
     ddc:	3c080000 	lui	t0,0x0
     de0:	25080000 	addiu	t0,t0,0
     de4:	ae08022c 	sw	t0,556(s0)
     de8:	8fbf001c 	lw	ra,28(sp)
     dec:	8fb00018 	lw	s0,24(sp)
     df0:	27bd0020 	addiu	sp,sp,32
     df4:	03e00008 	jr	ra
     df8:	00000000 	nop

00000dfc <func_809F28DC>:
     dfc:	27bdffd8 	addiu	sp,sp,-40
     e00:	afa40028 	sw	a0,40(sp)
     e04:	afbf0024 	sw	ra,36(sp)
     e08:	3c040600 	lui	a0,0x600
     e0c:	afa5002c 	sw	a1,44(sp)
     e10:	0c000000 	jal	0 <EnDntJiji_Init>
     e14:	24840a70 	addiu	a0,a0,2672
     e18:	44822000 	mtc1	v0,$f4
     e1c:	8fa30028 	lw	v1,40(sp)
     e20:	3c01c120 	lui	at,0xc120
     e24:	468021a0 	cvt.s.w	$f6,$f4
     e28:	44819000 	mtc1	at,$f18
     e2c:	3c050600 	lui	a1,0x600
     e30:	24190002 	li	t9,2
     e34:	24a50a70 	addiu	a1,a1,2672
     e38:	3c063f80 	lui	a2,0x3f80
     e3c:	4600320d 	trunc.w.s	$f8,$f6
     e40:	24070000 	li	a3,0
     e44:	2464014c 	addiu	a0,v1,332
     e48:	440f4000 	mfc1	t7,$f8
     e4c:	00000000 	nop
     e50:	a46f0248 	sh	t7,584(v1)
     e54:	84780248 	lh	t8,584(v1)
     e58:	afb90014 	sw	t9,20(sp)
     e5c:	e7b20018 	swc1	$f18,24(sp)
     e60:	44985000 	mtc1	t8,$f10
     e64:	00000000 	nop
     e68:	46805420 	cvt.s.w	$f16,$f10
     e6c:	0c000000 	jal	0 <EnDntJiji_Init>
     e70:	e7b00010 	swc1	$f16,16(sp)
     e74:	8fa30028 	lw	v1,40(sp)
     e78:	3c080000 	lui	t0,0x0
     e7c:	25080000 	addiu	t0,t0,0
     e80:	ac68022c 	sw	t0,556(v1)
     e84:	8fbf0024 	lw	ra,36(sp)
     e88:	27bd0028 	addiu	sp,sp,40
     e8c:	03e00008 	jr	ra
     e90:	00000000 	nop

00000e94 <func_809F2974>:
     e94:	27bdffe0 	addiu	sp,sp,-32
     e98:	afbf0014 	sw	ra,20(sp)
     e9c:	afa40020 	sw	a0,32(sp)
     ea0:	afa50024 	sw	a1,36(sp)
     ea4:	c4840164 	lwc1	$f4,356(a0)
     ea8:	00802825 	move	a1,a0
     eac:	afa50020 	sw	a1,32(sp)
     eb0:	2484014c 	addiu	a0,a0,332
     eb4:	0c000000 	jal	0 <EnDntJiji_Init>
     eb8:	e7a4001c 	swc1	$f4,28(sp)
     ebc:	8fa50020 	lw	a1,32(sp)
     ec0:	c7a6001c 	lwc1	$f6,28(sp)
     ec4:	3c0f0000 	lui	t7,0x0
     ec8:	84ae0248 	lh	t6,584(a1)
     ecc:	25ef0000 	addiu	t7,t7,0
     ed0:	448e4000 	mtc1	t6,$f8
     ed4:	00000000 	nop
     ed8:	468042a0 	cvt.s.w	$f10,$f8
     edc:	4606503e 	c.le.s	$f10,$f6
     ee0:	00000000 	nop
     ee4:	45020003 	bc1fl	ef4 <func_809F2974+0x60>
     ee8:	8fbf0014 	lw	ra,20(sp)
     eec:	acaf022c 	sw	t7,556(a1)
     ef0:	8fbf0014 	lw	ra,20(sp)
     ef4:	27bd0020 	addiu	sp,sp,32
     ef8:	03e00008 	jr	ra
     efc:	00000000 	nop

00000f00 <func_809F29E0>:
     f00:	27bdffd0 	addiu	sp,sp,-48
     f04:	afb00028 	sw	s0,40(sp)
     f08:	00808025 	move	s0,a0
     f0c:	afbf002c 	sw	ra,44(sp)
     f10:	3c040600 	lui	a0,0x600
     f14:	afa50034 	sw	a1,52(sp)
     f18:	0c000000 	jal	0 <EnDntJiji_Init>
     f1c:	248437c0 	addiu	a0,a0,14272
     f20:	44822000 	mtc1	v0,$f4
     f24:	3c01c120 	lui	at,0xc120
     f28:	44819000 	mtc1	at,$f18
     f2c:	468021a0 	cvt.s.w	$f6,$f4
     f30:	3c050600 	lui	a1,0x600
     f34:	24a537c0 	addiu	a1,a1,14272
     f38:	2604014c 	addiu	a0,s0,332
     f3c:	3c063f80 	lui	a2,0x3f80
     f40:	24070000 	li	a3,0
     f44:	4600320d 	trunc.w.s	$f8,$f6
     f48:	440f4000 	mfc1	t7,$f8
     f4c:	00000000 	nop
     f50:	a60f0248 	sh	t7,584(s0)
     f54:	86180248 	lh	t8,584(s0)
     f58:	afa00014 	sw	zero,20(sp)
     f5c:	e7b20018 	swc1	$f18,24(sp)
     f60:	44985000 	mtc1	t8,$f10
     f64:	00000000 	nop
     f68:	46805420 	cvt.s.w	$f16,$f10
     f6c:	0c000000 	jal	0 <EnDntJiji_Init>
     f70:	e7b00010 	swc1	$f16,16(sp)
     f74:	24190001 	li	t9,1
     f78:	3c014000 	lui	at,0x4000
     f7c:	a619024a 	sh	t9,586(s0)
     f80:	44812000 	mtc1	at,$f4
     f84:	8608024a 	lh	t0,586(s0)
     f88:	3c090000 	lui	t1,0x0
     f8c:	25290000 	addiu	t1,t1,0
     f90:	ae09022c 	sw	t1,556(s0)
     f94:	e6040068 	swc1	$f4,104(s0)
     f98:	a208023c 	sb	t0,572(s0)
     f9c:	8fbf002c 	lw	ra,44(sp)
     fa0:	8fb00028 	lw	s0,40(sp)
     fa4:	27bd0030 	addiu	sp,sp,48
     fa8:	03e00008 	jr	ra
     fac:	00000000 	nop

00000fb0 <func_809F2A90>:
     fb0:	27bdffd0 	addiu	sp,sp,-48
     fb4:	afb00020 	sw	s0,32(sp)
     fb8:	00808025 	move	s0,a0
     fbc:	afbf0024 	sw	ra,36(sp)
     fc0:	afa50034 	sw	a1,52(sp)
     fc4:	0c000000 	jal	0 <EnDntJiji_Init>
     fc8:	2484014c 	addiu	a0,a0,332
     fcc:	c6040230 	lwc1	$f4,560(s0)
     fd0:	c6060024 	lwc1	$f6,36(s0)
     fd4:	c6080238 	lwc1	$f8,568(s0)
     fd8:	c60a002c 	lwc1	$f10,44(s0)
     fdc:	46062301 	sub.s	$f12,$f4,$f6
     fe0:	460a4381 	sub.s	$f14,$f8,$f10
     fe4:	e7ac002c 	swc1	$f12,44(sp)
     fe8:	0c000000 	jal	0 <EnDntJiji_Init>
     fec:	e7ae0028 	swc1	$f14,40(sp)
     ff0:	3c010000 	lui	at,0x0
     ff4:	c4300000 	lwc1	$f16,0(at)
     ff8:	260400b6 	addiu	a0,s0,182
     ffc:	24060001 	li	a2,1
    1000:	46100482 	mul.s	$f18,$f0,$f16
    1004:	24070bb8 	li	a3,3000
    1008:	afa00010 	sw	zero,16(sp)
    100c:	4600910d 	trunc.w.s	$f4,$f18
    1010:	44052000 	mfc1	a1,$f4
    1014:	00000000 	nop
    1018:	00052c00 	sll	a1,a1,0x10
    101c:	0c000000 	jal	0 <EnDntJiji_Init>
    1020:	00052c03 	sra	a1,a1,0x10
    1024:	96020088 	lhu	v0,136(s0)
    1028:	860f00b6 	lh	t7,182(s0)
    102c:	24090003 	li	t1,3
    1030:	30580008 	andi	t8,v0,0x8
    1034:	13000009 	beqz	t8,105c <func_809F2A90+0xac>
    1038:	a60f0032 	sh	t7,50(s0)
    103c:	30590001 	andi	t9,v0,0x1
    1040:	13200006 	beqz	t9,105c <func_809F2A90+0xac>
    1044:	3c014110 	lui	at,0x4110
    1048:	44813000 	mtc1	at,$f6
    104c:	3c014040 	lui	at,0x4040
    1050:	44814000 	mtc1	at,$f8
    1054:	e6060060 	swc1	$f6,96(s0)
    1058:	e6080068 	swc1	$f8,104(s0)
    105c:	86080242 	lh	t0,578(s0)
    1060:	02002025 	move	a0,s0
    1064:	2405387f 	li	a1,14463
    1068:	55000004 	bnezl	t0,107c <func_809F2A90+0xcc>
    106c:	c7a0002c 	lwc1	$f0,44(sp)
    1070:	0c000000 	jal	0 <EnDntJiji_Init>
    1074:	a6090242 	sh	t1,578(s0)
    1078:	c7a0002c 	lwc1	$f0,44(sp)
    107c:	3c0140a0 	lui	at,0x40a0
    1080:	44811000 	mtc1	at,$f2
    1084:	46000005 	abs.s	$f0,$f0
    1088:	4602003c 	c.lt.s	$f0,$f2
    108c:	c7a00028 	lwc1	$f0,40(sp)
    1090:	45020021 	bc1fl	1118 <func_809F2A90+0x168>
    1094:	8fbf0024 	lw	ra,36(sp)
    1098:	46000005 	abs.s	$f0,$f0
    109c:	4602003c 	c.lt.s	$f0,$f2
    10a0:	00000000 	nop
    10a4:	4502001c 	bc1fl	1118 <func_809F2A90+0x168>
    10a8:	8fbf0024 	lw	ra,36(sp)
    10ac:	860a0252 	lh	t2,594(s0)
    10b0:	c60a0230 	lwc1	$f10,560(s0)
    10b4:	c6100238 	lwc1	$f16,568(s0)
    10b8:	e60a0024 	swc1	$f10,36(s0)
    10bc:	1140000f 	beqz	t2,10fc <func_809F2A90+0x14c>
    10c0:	e610002c 	swc1	$f16,44(s0)
    10c4:	8e020258 	lw	v0,600(s0)
    10c8:	8c4b0130 	lw	t3,304(v0)
    10cc:	5160000c 	beqzl	t3,1100 <func_809F2A90+0x150>
    10d0:	44809000 	mtc1	zero,$f18
    10d4:	844c0158 	lh	t4,344(v0)
    10d8:	240d0004 	li	t5,4
    10dc:	240e0002 	li	t6,2
    10e0:	55800007 	bnezl	t4,1100 <func_809F2A90+0x150>
    10e4:	44809000 	mtc1	zero,$f18
    10e8:	a44d0158 	sh	t5,344(v0)
    10ec:	8e0f0258 	lw	t7,600(s0)
    10f0:	2404081a 	li	a0,2074
    10f4:	0c000000 	jal	0 <EnDntJiji_Init>
    10f8:	a5ee015a 	sh	t6,346(t7)
    10fc:	44809000 	mtc1	zero,$f18
    1100:	3c180000 	lui	t8,0x0
    1104:	27180000 	addiu	t8,t8,0
    1108:	a200023c 	sb	zero,572(s0)
    110c:	ae18022c 	sw	t8,556(s0)
    1110:	e6120068 	swc1	$f18,104(s0)
    1114:	8fbf0024 	lw	ra,36(sp)
    1118:	8fb00020 	lw	s0,32(sp)
    111c:	27bd0030 	addiu	sp,sp,48
    1120:	03e00008 	jr	ra
    1124:	00000000 	nop

00001128 <EnDntJiji_Update>:
    1128:	27bdffc8 	addiu	sp,sp,-56
    112c:	afa5003c 	sw	a1,60(sp)
    1130:	afbf0024 	sw	ra,36(sp)
    1134:	afb00020 	sw	s0,32(sp)
    1138:	3c053c75 	lui	a1,0x3c75
    113c:	00808025 	move	s0,a0
    1140:	0c000000 	jal	0 <EnDntJiji_Init>
    1144:	34a5c28f 	ori	a1,a1,0xc28f
    1148:	860e0246 	lh	t6,582(s0)
    114c:	3c180000 	lui	t8,0x0
    1150:	25cf0001 	addiu	t7,t6,1
    1154:	a60f0246 	sh	t7,582(s0)
    1158:	8f180000 	lw	t8,0(t8)
    115c:	871912d4 	lh	t9,4820(t8)
    1160:	13200004 	beqz	t9,1174 <EnDntJiji_Update+0x4c>
    1164:	3c040000 	lui	a0,0x0
    1168:	24840000 	addiu	a0,a0,0
    116c:	0c000000 	jal	0 <EnDntJiji_Init>
    1170:	86050240 	lh	a1,576(s0)
    1174:	86020240 	lh	v0,576(s0)
    1178:	28410002 	slti	at,v0,2
    117c:	54200005 	bnezl	at,1194 <EnDntJiji_Update+0x6c>
    1180:	86020242 	lh	v0,578(s0)
    1184:	10400002 	beqz	v0,1190 <EnDntJiji_Update+0x68>
    1188:	2448ffff 	addiu	t0,v0,-1
    118c:	a6080240 	sh	t0,576(s0)
    1190:	86020242 	lh	v0,578(s0)
    1194:	10400002 	beqz	v0,11a0 <EnDntJiji_Update+0x78>
    1198:	2449ffff 	addiu	t1,v0,-1
    119c:	a6090242 	sh	t1,578(s0)
    11a0:	86020244 	lh	v0,580(s0)
    11a4:	10400002 	beqz	v0,11b0 <EnDntJiji_Update+0x88>
    11a8:	244affff 	addiu	t2,v0,-1
    11ac:	a60a0244 	sh	t2,580(s0)
    11b0:	8602024e 	lh	v0,590(s0)
    11b4:	24030001 	li	v1,1
    11b8:	02002025 	move	a0,s0
    11bc:	50400019 	beqzl	v0,1224 <EnDntJiji_Update+0xfc>
    11c0:	960f010e 	lhu	t7,270(s0)
    11c4:	10430009 	beq	v0,v1,11ec <EnDntJiji_Update+0xc4>
    11c8:	240b0001 	li	t3,1
    11cc:	24010002 	li	at,2
    11d0:	1041000c 	beq	v0,at,1204 <EnDntJiji_Update+0xdc>
    11d4:	3c0d0000 	lui	t5,0x0
    11d8:	24010003 	li	at,3
    11dc:	1041000e 	beq	v0,at,1218 <EnDntJiji_Update+0xf0>
    11e0:	3c0e0000 	lui	t6,0x0
    11e4:	1000000f 	b	1224 <EnDntJiji_Update+0xfc>
    11e8:	960f010e 	lhu	t7,270(s0)
    11ec:	3c0c0000 	lui	t4,0x0
    11f0:	258c0000 	addiu	t4,t4,0
    11f4:	a20b023c 	sb	t3,572(s0)
    11f8:	a603023e 	sh	v1,574(s0)
    11fc:	10000008 	b	1220 <EnDntJiji_Update+0xf8>
    1200:	ae0c022c 	sw	t4,556(s0)
    1204:	25ad0000 	addiu	t5,t5,0
    1208:	a200023c 	sb	zero,572(s0)
    120c:	a600023e 	sh	zero,574(s0)
    1210:	10000003 	b	1220 <EnDntJiji_Update+0xf8>
    1214:	ae0d022c 	sw	t5,556(s0)
    1218:	25ce0000 	addiu	t6,t6,0
    121c:	ae0e022c 	sw	t6,556(s0)
    1220:	960f010e 	lhu	t7,270(s0)
    1224:	51e00004 	beqzl	t7,1238 <EnDntJiji_Update+0x110>
    1228:	8618024e 	lh	t8,590(s0)
    122c:	0c000000 	jal	0 <EnDntJiji_Init>
    1230:	3c0541f0 	lui	a1,0x41f0
    1234:	8618024e 	lh	t8,590(s0)
    1238:	53000003 	beqzl	t8,1248 <EnDntJiji_Update+0x120>
    123c:	86190244 	lh	t9,580(s0)
    1240:	a600024e 	sh	zero,590(s0)
    1244:	86190244 	lh	t9,580(s0)
    1248:	57200011 	bnezl	t9,1290 <EnDntJiji_Update+0x168>
    124c:	8e19022c 	lw	t9,556(s0)
    1250:	8608024c 	lh	t0,588(s0)
    1254:	25090001 	addiu	t1,t0,1
    1258:	a609024c 	sh	t1,588(s0)
    125c:	860a024c 	lh	t2,588(s0)
    1260:	29410003 	slti	at,t2,3
    1264:	14200009 	bnez	at,128c <EnDntJiji_Update+0x164>
    1268:	3c014270 	lui	at,0x4270
    126c:	44816000 	mtc1	at,$f12
    1270:	0c000000 	jal	0 <EnDntJiji_Init>
    1274:	a600024c 	sh	zero,588(s0)
    1278:	4600010d 	trunc.w.s	$f4,$f0
    127c:	440e2000 	mfc1	t6,$f4
    1280:	00000000 	nop
    1284:	25cf0014 	addiu	t7,t6,20
    1288:	a60f0244 	sh	t7,580(s0)
    128c:	8e19022c 	lw	t9,556(s0)
    1290:	02002025 	move	a0,s0
    1294:	8fa5003c 	lw	a1,60(sp)
    1298:	0320f809 	jalr	t9
    129c:	00000000 	nop
    12a0:	0c000000 	jal	0 <EnDntJiji_Init>
    12a4:	02002025 	move	a0,s0
    12a8:	3c0141a0 	lui	at,0x41a0
    12ac:	44810000 	mtc1	at,$f0
    12b0:	3c014270 	lui	at,0x4270
    12b4:	44813000 	mtc1	at,$f6
    12b8:	2418001d 	li	t8,29
    12bc:	44060000 	mfc1	a2,$f0
    12c0:	44070000 	mfc1	a3,$f0
    12c4:	afb80014 	sw	t8,20(sp)
    12c8:	8fa4003c 	lw	a0,60(sp)
    12cc:	02002825 	move	a1,s0
    12d0:	0c000000 	jal	0 <EnDntJiji_Init>
    12d4:	e7a60010 	swc1	$f6,16(sp)
    12d8:	2606025c 	addiu	a2,s0,604
    12dc:	00c02825 	move	a1,a2
    12e0:	afa60028 	sw	a2,40(sp)
    12e4:	0c000000 	jal	0 <EnDntJiji_Init>
    12e8:	02002025 	move	a0,s0
    12ec:	9208023c 	lbu	t0,572(s0)
    12f0:	8fa60028 	lw	a2,40(sp)
    12f4:	8fa4003c 	lw	a0,60(sp)
    12f8:	11000004 	beqz	t0,130c <EnDntJiji_Update+0x1e4>
    12fc:	3c010001 	lui	at,0x1
    1300:	34211e60 	ori	at,at,0x1e60
    1304:	0c000000 	jal	0 <EnDntJiji_Init>
    1308:	00812821 	addu	a1,a0,at
    130c:	8fbf0024 	lw	ra,36(sp)
    1310:	8fb00020 	lw	s0,32(sp)
    1314:	27bd0038 	addiu	sp,sp,56
    1318:	03e00008 	jr	ra
    131c:	00000000 	nop

00001320 <EnDntJiji_Draw>:
    1320:	27bdffa8 	addiu	sp,sp,-88
    1324:	afb20028 	sw	s2,40(sp)
    1328:	00a09025 	move	s2,a1
    132c:	afbf002c 	sw	ra,44(sp)
    1330:	afb10024 	sw	s1,36(sp)
    1334:	afb00020 	sw	s0,32(sp)
    1338:	8ca50000 	lw	a1,0(a1)
    133c:	00808025 	move	s0,a0
    1340:	3c060000 	lui	a2,0x0
    1344:	24c60000 	addiu	a2,a2,0
    1348:	27a40040 	addiu	a0,sp,64
    134c:	240703fb 	li	a3,1019
    1350:	0c000000 	jal	0 <EnDntJiji_Init>
    1354:	00a08825 	move	s1,a1
    1358:	0c000000 	jal	0 <EnDntJiji_Init>
    135c:	8e440000 	lw	a0,0(s2)
    1360:	0c000000 	jal	0 <EnDntJiji_Init>
    1364:	00000000 	nop
    1368:	8e2202c0 	lw	v0,704(s1)
    136c:	3c0fdb06 	lui	t7,0xdb06
    1370:	35ef0020 	ori	t7,t7,0x20
    1374:	244e0008 	addiu	t6,v0,8
    1378:	ae2e02c0 	sw	t6,704(s1)
    137c:	ac4f0000 	sw	t7,0(v0)
    1380:	8618024c 	lh	t8,588(s0)
    1384:	3c040000 	lui	a0,0x0
    1388:	3c0c0000 	lui	t4,0x0
    138c:	0018c880 	sll	t9,t8,0x2
    1390:	00992021 	addu	a0,a0,t9
    1394:	8c840000 	lw	a0,0(a0)
    1398:	3c0100ff 	lui	at,0xff
    139c:	3421ffff 	ori	at,at,0xffff
    13a0:	00044900 	sll	t1,a0,0x4
    13a4:	00095702 	srl	t2,t1,0x1c
    13a8:	000a5880 	sll	t3,t2,0x2
    13ac:	018b6021 	addu	t4,t4,t3
    13b0:	8d8c0000 	lw	t4,0(t4)
    13b4:	00814024 	and	t0,a0,at
    13b8:	3c018000 	lui	at,0x8000
    13bc:	010c6821 	addu	t5,t0,t4
    13c0:	01a17021 	addu	t6,t5,at
    13c4:	ac4e0004 	sw	t6,4(v0)
    13c8:	8e06016c 	lw	a2,364(s0)
    13cc:	8e050150 	lw	a1,336(s0)
    13d0:	afb00014 	sw	s0,20(sp)
    13d4:	afa00010 	sw	zero,16(sp)
    13d8:	02402025 	move	a0,s2
    13dc:	0c000000 	jal	0 <EnDntJiji_Init>
    13e0:	00003825 	move	a3,zero
    13e4:	0c000000 	jal	0 <EnDntJiji_Init>
    13e8:	00000000 	nop
    13ec:	c60c0230 	lwc1	$f12,560(s0)
    13f0:	c60e0234 	lwc1	$f14,564(s0)
    13f4:	8e060238 	lw	a2,568(s0)
    13f8:	0c000000 	jal	0 <EnDntJiji_Init>
    13fc:	00003825 	move	a3,zero
    1400:	3c010000 	lui	at,0x0
    1404:	c42c0000 	lwc1	$f12,0(at)
    1408:	24070001 	li	a3,1
    140c:	44066000 	mfc1	a2,$f12
    1410:	0c000000 	jal	0 <EnDntJiji_Init>
    1414:	46006386 	mov.s	$f14,$f12
    1418:	8e2202c0 	lw	v0,704(s1)
    141c:	3c18da38 	lui	t8,0xda38
    1420:	37180003 	ori	t8,t8,0x3
    1424:	244f0008 	addiu	t7,v0,8
    1428:	ae2f02c0 	sw	t7,704(s1)
    142c:	3c050000 	lui	a1,0x0
    1430:	ac580000 	sw	t8,0(v0)
    1434:	8e440000 	lw	a0,0(s2)
    1438:	24a50000 	addiu	a1,a1,0
    143c:	24060410 	li	a2,1040
    1440:	0c000000 	jal	0 <EnDntJiji_Init>
    1444:	00408025 	move	s0,v0
    1448:	ae020004 	sw	v0,4(s0)
    144c:	8e2202c0 	lw	v0,704(s1)
    1450:	3c0a0600 	lui	t2,0x600
    1454:	254a2310 	addiu	t2,t2,8976
    1458:	24590008 	addiu	t9,v0,8
    145c:	ae3902c0 	sw	t9,704(s1)
    1460:	3c09de00 	lui	t1,0xde00
    1464:	3c060000 	lui	a2,0x0
    1468:	ac490000 	sw	t1,0(v0)
    146c:	ac4a0004 	sw	t2,4(v0)
    1470:	8e450000 	lw	a1,0(s2)
    1474:	24c60000 	addiu	a2,a2,0
    1478:	27a40040 	addiu	a0,sp,64
    147c:	0c000000 	jal	0 <EnDntJiji_Init>
    1480:	24070413 	li	a3,1043
    1484:	8fbf002c 	lw	ra,44(sp)
    1488:	8fb00020 	lw	s0,32(sp)
    148c:	8fb10024 	lw	s1,36(sp)
    1490:	8fb20028 	lw	s2,40(sp)
    1494:	03e00008 	jr	ra
    1498:	27bd0058 	addiu	sp,sp,88
    149c:	00000000 	nop
