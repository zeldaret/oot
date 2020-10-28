
build/src/overlays/actors/ovl_Boss_Mo/z_boss_mo.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8091BB00>:
       0:	3c010000 	lui	at,0x0
       4:	ac240000 	sw	a0,0(at)
       8:	3c010000 	lui	at,0x0
       c:	ac250000 	sw	a1,0(at)
      10:	3c010000 	lui	at,0x0
      14:	03e00008 	jr	ra
      18:	ac260000 	sw	a2,0(at)

0000001c <func_8091BB1C>:
      1c:	3c020000 	lui	v0,0x0
      20:	24420000 	addiu	v0,v0,0
      24:	8c4e0000 	lw	t6,0(v0)
      28:	3c013f80 	lui	at,0x3f80
      2c:	44810000 	mtc1	at,$f0
      30:	000e7880 	sll	t7,t6,0x2
      34:	01ee7823 	subu	t7,t7,t6
      38:	000f7880 	sll	t7,t7,0x2
      3c:	01ee7823 	subu	t7,t7,t6
      40:	000f7880 	sll	t7,t7,0x2
      44:	01ee7823 	subu	t7,t7,t6
      48:	000f7880 	sll	t7,t7,0x2
      4c:	2401763d 	li	at,30269
      50:	01ee7823 	subu	t7,t7,t6
      54:	01e1001a 	div	zero,t7,at
      58:	3c030000 	lui	v1,0x0
      5c:	24630000 	addiu	v1,v1,0
      60:	8c790000 	lw	t9,0(v1)
      64:	00006810 	mfhi	t5
      68:	24017663 	li	at,30307
      6c:	00194080 	sll	t0,t9,0x2
      70:	01194023 	subu	t0,t0,t9
      74:	00084080 	sll	t0,t0,0x2
      78:	01194023 	subu	t0,t0,t9
      7c:	00084080 	sll	t0,t0,0x2
      80:	01194023 	subu	t0,t0,t9
      84:	00084080 	sll	t0,t0,0x2
      88:	0101001a 	div	zero,t0,at
      8c:	3c040000 	lui	a0,0x0
      90:	24840000 	addiu	a0,a0,0
      94:	8c8a0000 	lw	t2,0(a0)
      98:	00007010 	mfhi	t6
      9c:	24017673 	li	at,30323
      a0:	000a5880 	sll	t3,t2,0x2
      a4:	016a5821 	addu	t3,t3,t2
      a8:	000b5880 	sll	t3,t3,0x2
      ac:	016a5821 	addu	t3,t3,t2
      b0:	000b5880 	sll	t3,t3,0x2
      b4:	016a5821 	addu	t3,t3,t2
      b8:	000b5840 	sll	t3,t3,0x1
      bc:	0161001a 	div	zero,t3,at
      c0:	448d2000 	mtc1	t5,$f4
      c4:	448e8000 	mtc1	t6,$f16
      c8:	00007810 	mfhi	t7
      cc:	468021a0 	cvt.s.w	$f6,$f4
      d0:	ac4d0000 	sw	t5,0(v0)
      d4:	ac6e0000 	sw	t6,0(v1)
      d8:	ac8f0000 	sw	t7,0(a0)
      dc:	3c010000 	lui	at,0x0
      e0:	468084a0 	cvt.s.w	$f18,$f16
      e4:	c4280000 	lwc1	$f8,0(at)
      e8:	3c010000 	lui	at,0x0
      ec:	c4240000 	lwc1	$f4,0(at)
      f0:	448f8000 	mtc1	t7,$f16
      f4:	46083283 	div.s	$f10,$f6,$f8
      f8:	3c010000 	lui	at,0x0
      fc:	46049183 	div.s	$f6,$f18,$f4
     100:	c4240000 	lwc1	$f4,0(at)
     104:	468084a0 	cvt.s.w	$f18,$f16
     108:	46065200 	add.s	$f8,$f10,$f6
     10c:	46049283 	div.s	$f10,$f18,$f4
     110:	460a4080 	add.s	$f2,$f8,$f10
     114:	4602003e 	c.le.s	$f0,$f2
     118:	00000000 	nop
     11c:	45000006 	bc1f	138 <func_8091BB1C+0x11c>
     120:	00000000 	nop
     124:	46001081 	sub.s	$f2,$f2,$f0
     128:	4602003e 	c.le.s	$f0,$f2
     12c:	00000000 	nop
     130:	4503fffd 	bc1tl	128 <func_8091BB1C+0x10c>
     134:	46001081 	sub.s	$f2,$f2,$f0
     138:	03e00008 	jr	ra
     13c:	46001005 	abs.s	$f0,$f2

00000140 <func_8091BC40>:
     140:	3c0143e1 	lui	at,0x43e1
     144:	44856000 	mtc1	a1,$f12
     148:	44812000 	mtc1	at,$f4
     14c:	c4820000 	lwc1	$f2,0(a0)
     150:	460c2381 	sub.s	$f14,$f4,$f12
     154:	46001005 	abs.s	$f0,$f2
     158:	4600703e 	c.le.s	$f14,$f0
     15c:	00000000 	nop
     160:	45020004 	bc1fl	174 <func_8091BC40+0x34>
     164:	c4900008 	lwc1	$f16,8(a0)
     168:	03e00008 	jr	ra
     16c:	24020001 	li	v0,1
     170:	c4900008 	lwc1	$f16,8(a0)
     174:	3c014334 	lui	at,0x4334
     178:	46008005 	abs.s	$f0,$f16
     17c:	4600703e 	c.le.s	$f14,$f0
     180:	00000000 	nop
     184:	45020004 	bc1fl	198 <func_8091BC40+0x58>
     188:	44819000 	mtc1	at,$f18
     18c:	03e00008 	jr	ra
     190:	24020001 	li	v0,1
     194:	44819000 	mtc1	at,$f18
     198:	3c0142b4 	lui	at,0x42b4
     19c:	44813000 	mtc1	at,$f6
     1a0:	46121001 	sub.s	$f0,$f2,$f18
     1a4:	3c01c334 	lui	at,0xc334
     1a8:	460c3380 	add.s	$f14,$f6,$f12
     1ac:	46000005 	abs.s	$f0,$f0
     1b0:	460e003c 	c.lt.s	$f0,$f14
     1b4:	00000000 	nop
     1b8:	4503000a 	bc1tl	1e4 <func_8091BC40+0xa4>
     1bc:	46128001 	sub.s	$f0,$f16,$f18
     1c0:	44814000 	mtc1	at,$f8
     1c4:	00000000 	nop
     1c8:	46081001 	sub.s	$f0,$f2,$f8
     1cc:	46000005 	abs.s	$f0,$f0
     1d0:	460e003c 	c.lt.s	$f0,$f14
     1d4:	00000000 	nop
     1d8:	45020015 	bc1fl	230 <func_8091BC40+0xf0>
     1dc:	00001025 	move	v0,zero
     1e0:	46128001 	sub.s	$f0,$f16,$f18
     1e4:	3c01c334 	lui	at,0xc334
     1e8:	46000005 	abs.s	$f0,$f0
     1ec:	460e003c 	c.lt.s	$f0,$f14
     1f0:	00000000 	nop
     1f4:	45020004 	bc1fl	208 <func_8091BC40+0xc8>
     1f8:	44815000 	mtc1	at,$f10
     1fc:	03e00008 	jr	ra
     200:	24020001 	li	v0,1
     204:	44815000 	mtc1	at,$f10
     208:	00000000 	nop
     20c:	460a8001 	sub.s	$f0,$f16,$f10
     210:	46000005 	abs.s	$f0,$f0
     214:	460e003c 	c.lt.s	$f0,$f14
     218:	00000000 	nop
     21c:	45020004 	bc1fl	230 <func_8091BC40+0xf0>
     220:	00001025 	move	v0,zero
     224:	03e00008 	jr	ra
     228:	24020001 	li	v0,1
     22c:	00001025 	move	v0,zero
     230:	03e00008 	jr	ra
     234:	00000000 	nop

00000238 <func_8091BD38>:
     238:	44866000 	mtc1	a2,$f12
     23c:	87a60016 	lh	a2,22(sp)
     240:	44877000 	mtc1	a3,$f14
     244:	00001025 	move	v0,zero
     248:	18c00042 	blez	a2,354 <func_8091BD38+0x11c>
     24c:	00000000 	nop
     250:	908e0024 	lbu	t6,36(a0)
     254:	24420001 	addiu	v0,v0,1
     258:	00021400 	sll	v0,v0,0x10
     25c:	15c0003a 	bnez	t6,348 <func_8091BD38+0x110>
     260:	00021403 	sra	v0,v0,0x10
     264:	3c010000 	lui	at,0x0
     268:	c4200000 	lwc1	$f0,0(at)
     26c:	a0800026 	sb	zero,38(a0)
     270:	93af001b 	lbu	t7,27(sp)
     274:	3c020000 	lui	v0,0x0
     278:	24420000 	addiu	v0,v0,0
     27c:	a08f0024 	sb	t7,36(a0)
     280:	8cb90000 	lw	t9,0(a1)
     284:	46006102 	mul.s	$f4,$f12,$f0
     288:	3c014396 	lui	at,0x4396
     28c:	ac990000 	sw	t9,0(a0)
     290:	8cb80004 	lw	t8,4(a1)
     294:	44814000 	mtc1	at,$f8
     298:	46007182 	mul.s	$f6,$f14,$f0
     29c:	ac980004 	sw	t8,4(a0)
     2a0:	8cb90008 	lw	t9,8(a1)
     2a4:	460c403c 	c.lt.s	$f8,$f12
     2a8:	240e0001 	li	t6,1
     2ac:	ac990008 	sw	t9,8(a0)
     2b0:	8c490000 	lw	t1,0(v0)
     2b4:	3c010000 	lui	at,0x0
     2b8:	ac89000c 	sw	t1,12(a0)
     2bc:	8c480004 	lw	t0,4(v0)
     2c0:	ac880010 	sw	t0,16(a0)
     2c4:	8c490008 	lw	t1,8(v0)
     2c8:	ac890014 	sw	t1,20(a0)
     2cc:	8c4b0000 	lw	t3,0(v0)
     2d0:	ac8b0018 	sw	t3,24(a0)
     2d4:	8c4a0004 	lw	t2,4(v0)
     2d8:	ac8a001c 	sw	t2,28(a0)
     2dc:	8c4b0008 	lw	t3,8(v0)
     2e0:	e4840030 	swc1	$f4,48(a0)
     2e4:	e4860034 	swc1	$f6,52(a0)
     2e8:	4500000d 	bc1f	320 <func_8091BD38+0xe8>
     2ec:	ac8b0020 	sw	t3,32(a0)
     2f0:	a480002a 	sh	zero,42(a0)
     2f4:	87ac0012 	lh	t4,18(sp)
     2f8:	c48a0034 	lwc1	$f10,52(a0)
     2fc:	c4900030 	lwc1	$f16,48(a0)
     300:	a480002c 	sh	zero,44(a0)
     304:	3c010000 	lui	at,0x0
     308:	46105481 	sub.s	$f18,$f10,$f16
     30c:	a48c002e 	sh	t4,46(a0)
     310:	c4240000 	lwc1	$f4,0(at)
     314:	46049182 	mul.s	$f6,$f18,$f4
     318:	03e00008 	jr	ra
     31c:	e4860038 	swc1	$f6,56(a0)
     320:	87ad0012 	lh	t5,18(sp)
     324:	c4880034 	lwc1	$f8,52(a0)
     328:	c48a0030 	lwc1	$f10,48(a0)
     32c:	a48e002c 	sh	t6,44(a0)
     330:	a48d002a 	sh	t5,42(a0)
     334:	460a4401 	sub.s	$f16,$f8,$f10
     338:	c4320000 	lwc1	$f18,0(at)
     33c:	46128102 	mul.s	$f4,$f16,$f18
     340:	03e00008 	jr	ra
     344:	e4840038 	swc1	$f4,56(a0)
     348:	0046082a 	slt	at,v0,a2
     34c:	1420ffc0 	bnez	at,250 <func_8091BD38+0x18>
     350:	24840040 	addiu	a0,a0,64
     354:	03e00008 	jr	ra
     358:	00000000 	nop

0000035c <func_8091BE5C>:
     35c:	27bdfff0 	addiu	sp,sp,-16
     360:	3c0e0000 	lui	t6,0x0
     364:	afa40010 	sw	a0,16(sp)
     368:	25ce0000 	addiu	t6,t6,0
     36c:	8dd80000 	lw	t8,0(t6)
     370:	27a30000 	addiu	v1,sp,0
     374:	00042400 	sll	a0,a0,0x10
     378:	ac780000 	sw	t8,0(v1)
     37c:	8dcf0004 	lw	t7,4(t6)
     380:	00042403 	sra	a0,a0,0x10
     384:	00001025 	move	v0,zero
     388:	ac6f0004 	sw	t7,4(v1)
     38c:	8dd80008 	lw	t8,8(t6)
     390:	ac780008 	sw	t8,8(v1)
     394:	90b90024 	lbu	t9,36(a1)
     398:	24420001 	addiu	v0,v0,1
     39c:	00021400 	sll	v0,v0,0x10
     3a0:	17200020 	bnez	t9,424 <func_8091BE5C+0xc8>
     3a4:	00021403 	sra	v0,v0,0x10
     3a8:	a0a40024 	sb	a0,36(a1)
     3ac:	8cc90000 	lw	t1,0(a2)
     3b0:	24010005 	li	at,5
     3b4:	aca90000 	sw	t1,0(a1)
     3b8:	8cc80004 	lw	t0,4(a2)
     3bc:	aca80004 	sw	t0,4(a1)
     3c0:	8cc90008 	lw	t1,8(a2)
     3c4:	aca90008 	sw	t1,8(a1)
     3c8:	8ceb0000 	lw	t3,0(a3)
     3cc:	acab000c 	sw	t3,12(a1)
     3d0:	8cea0004 	lw	t2,4(a3)
     3d4:	acaa0010 	sw	t2,16(a1)
     3d8:	8ceb0008 	lw	t3,8(a3)
     3dc:	acab0014 	sw	t3,20(a1)
     3e0:	8c6d0000 	lw	t5,0(v1)
     3e4:	acad0018 	sw	t5,24(a1)
     3e8:	8c6c0004 	lw	t4,4(v1)
     3ec:	acac001c 	sw	t4,28(a1)
     3f0:	8c6d0008 	lw	t5,8(v1)
     3f4:	14810004 	bne	a0,at,408 <func_8091BE5C+0xac>
     3f8:	acad0020 	sw	t5,32(a1)
     3fc:	44802000 	mtc1	zero,$f4
     400:	00000000 	nop
     404:	e4a4001c 	swc1	$f4,28(a1)
     408:	3c013f80 	lui	at,0x3f80
     40c:	c7a60020 	lwc1	$f6,32(sp)
     410:	44814000 	mtc1	at,$f8
     414:	a0a00026 	sb	zero,38(a1)
     418:	e4a60030 	swc1	$f6,48(a1)
     41c:	10000004 	b	430 <func_8091BE5C+0xd4>
     420:	e4a80038 	swc1	$f8,56(a1)
     424:	28410122 	slti	at,v0,290
     428:	1420ffda 	bnez	at,394 <func_8091BE5C+0x38>
     42c:	24a50040 	addiu	a1,a1,64
     430:	03e00008 	jr	ra
     434:	27bd0010 	addiu	sp,sp,16

00000438 <func_8091BF38>:
     438:	3c0e0000 	lui	t6,0x0
     43c:	25ce0000 	addiu	t6,t6,0
     440:	8dd80000 	lw	t8,0(t6)
     444:	27bdfff0 	addiu	sp,sp,-16
     448:	27a30000 	addiu	v1,sp,0
     44c:	ac780000 	sw	t8,0(v1)
     450:	8dcf0004 	lw	t7,4(t6)
     454:	44866000 	mtc1	a2,$f12
     458:	00001025 	move	v0,zero
     45c:	ac6f0004 	sw	t7,4(v1)
     460:	8dd80008 	lw	t8,8(t6)
     464:	24080003 	li	t0,3
     468:	24090002 	li	t1,2
     46c:	ac780008 	sw	t8,8(v1)
     470:	90990024 	lbu	t9,36(a0)
     474:	24420001 	addiu	v0,v0,1
     478:	00021400 	sll	v0,v0,0x10
     47c:	1720001a 	bnez	t9,4e8 <func_8091BF38+0xb0>
     480:	00021403 	sra	v0,v0,0x10
     484:	a0880024 	sb	t0,36(a0)
     488:	a0890026 	sb	t1,38(a0)
     48c:	8cab0000 	lw	t3,0(a1)
     490:	3c013f80 	lui	at,0x3f80
     494:	44812000 	mtc1	at,$f4
     498:	ac8b0000 	sw	t3,0(a0)
     49c:	8caa0004 	lw	t2,4(a1)
     4a0:	ac8a0004 	sw	t2,4(a0)
     4a4:	8cab0008 	lw	t3,8(a1)
     4a8:	ac8b0008 	sw	t3,8(a0)
     4ac:	8c6d0000 	lw	t5,0(v1)
     4b0:	ac8d000c 	sw	t5,12(a0)
     4b4:	8c6c0004 	lw	t4,4(v1)
     4b8:	ac8c0010 	sw	t4,16(a0)
     4bc:	8c6d0008 	lw	t5,8(v1)
     4c0:	ac8d0014 	sw	t5,20(a0)
     4c4:	8c6f0000 	lw	t7,0(v1)
     4c8:	ac8f0018 	sw	t7,24(a0)
     4cc:	8c6e0004 	lw	t6,4(v1)
     4d0:	ac8e001c 	sw	t6,28(a0)
     4d4:	8c6f0008 	lw	t7,8(v1)
     4d8:	e48c0030 	swc1	$f12,48(a0)
     4dc:	e4840038 	swc1	$f4,56(a0)
     4e0:	10000004 	b	4f4 <func_8091BF38+0xbc>
     4e4:	ac8f0020 	sw	t7,32(a0)
     4e8:	28410122 	slti	at,v0,290
     4ec:	1420ffe0 	bnez	at,470 <func_8091BF38+0x38>
     4f0:	24840040 	addiu	a0,a0,64
     4f4:	03e00008 	jr	ra
     4f8:	27bd0010 	addiu	sp,sp,16

000004fc <func_8091BFFC>:
     4fc:	00001025 	move	v0,zero
     500:	908e0024 	lbu	t6,36(a0)
     504:	24420001 	addiu	v0,v0,1
     508:	00021400 	sll	v0,v0,0x10
     50c:	15c00023 	bnez	t6,59c <func_8091BFFC+0xa0>
     510:	00021403 	sra	v0,v0,0x10
     514:	8fa20014 	lw	v0,20(sp)
     518:	240f0007 	li	t7,7
     51c:	a08f0024 	sb	t7,36(a0)
     520:	a0800026 	sb	zero,38(a0)
     524:	8cb90000 	lw	t9,0(a1)
     528:	44803000 	mtc1	zero,$f6
     52c:	240c00ff 	li	t4,255
     530:	ac990000 	sw	t9,0(a0)
     534:	8cb80004 	lw	t8,4(a1)
     538:	ac980004 	sw	t8,4(a0)
     53c:	8cb90008 	lw	t9,8(a1)
     540:	ac990008 	sw	t9,8(a0)
     544:	8cc90000 	lw	t1,0(a2)
     548:	ac89000c 	sw	t1,12(a0)
     54c:	8cc80004 	lw	t0,4(a2)
     550:	ac880010 	sw	t0,16(a0)
     554:	8cc90008 	lw	t1,8(a2)
     558:	ac890014 	sw	t1,20(a0)
     55c:	8ceb0000 	lw	t3,0(a3)
     560:	ac8b0018 	sw	t3,24(a0)
     564:	8cea0004 	lw	t2,4(a3)
     568:	ac8a001c 	sw	t2,28(a0)
     56c:	8ceb0008 	lw	t3,8(a3)
     570:	ac8b0020 	sw	t3,32(a0)
     574:	c7a40010 	lwc1	$f4,16(sp)
     578:	ac82003c 	sw	v0,60(a0)
     57c:	e4860034 	swc1	$f6,52(a0)
     580:	14400003 	bnez	v0,590 <func_8091BFFC+0x94>
     584:	e4840030 	swc1	$f4,48(a0)
     588:	10000002 	b	594 <func_8091BFFC+0x98>
     58c:	a48c002a 	sh	t4,42(a0)
     590:	a480002a 	sh	zero,42(a0)
     594:	03e00008 	jr	ra
     598:	a0800025 	sb	zero,37(a0)
     59c:	28410118 	slti	at,v0,280
     5a0:	1420ffd7 	bnez	at,500 <func_8091BFFC+0x4>
     5a4:	24840040 	addiu	a0,a0,64
     5a8:	03e00008 	jr	ra
     5ac:	00000000 	nop

000005b0 <BossMo_Init>:
     5b0:	27bdff98 	addiu	sp,sp,-104
     5b4:	afb10038 	sw	s1,56(sp)
     5b8:	00a08825 	move	s1,a1
     5bc:	afbf003c 	sw	ra,60(sp)
     5c0:	afb00034 	sw	s0,52(sp)
     5c4:	3c050000 	lui	a1,0x0
     5c8:	00808025 	move	s0,a0
     5cc:	0c000000 	jal	0 <func_8091BB00>
     5d0:	24a50000 	addiu	a1,a1,0
     5d4:	44800000 	mtc1	zero,$f0
     5d8:	260400b4 	addiu	a0,s0,180
     5dc:	00003025 	move	a2,zero
     5e0:	44050000 	mfc1	a1,$f0
     5e4:	44070000 	mfc1	a3,$f0
     5e8:	0c000000 	jal	0 <func_8091BB00>
     5ec:	00000000 	nop
     5f0:	860e001c 	lh	t6,28(s0)
     5f4:	24010064 	li	at,100
     5f8:	02002025 	move	a0,s0
     5fc:	11c100a8 	beq	t6,at,8a0 <BossMo_Init+0x2f0>
     600:	3c053c23 	lui	a1,0x3c23
     604:	02202025 	move	a0,s1
     608:	0c000000 	jal	0 <func_8091BB00>
     60c:	24050014 	li	a1,20
     610:	3c010000 	lui	at,0x0
     614:	ac300000 	sw	s0,0(at)
     618:	8e2f07c0 	lw	t7,1984(s1)
     61c:	3c010001 	lui	at,0x1
     620:	02213021 	addu	a2,s1,at
     624:	8df80028 	lw	t8,40(t7)
     628:	3c030000 	lui	v1,0x0
     62c:	240c00a0 	li	t4,160
     630:	87190002 	lh	t9,2(t8)
     634:	24630000 	addiu	v1,v1,0
     638:	00310821 	addu	at,at,s1
     63c:	44992000 	mtc1	t9,$f4
     640:	00001025 	move	v0,zero
     644:	46802020 	cvt.s.w	$f0,$f4
     648:	4600018d 	trunc.w.s	$f6,$f0
     64c:	e60001bc 	swc1	$f0,444(s0)
     650:	8e2a07c0 	lw	t2,1984(s1)
     654:	44093000 	mfc1	t1,$f6
     658:	8d4b0028 	lw	t3,40(t2)
     65c:	a5690002 	sh	t1,2(t3)
     660:	a4cc1d30 	sh	t4,7472(a2)
     664:	ac231e10 	sw	v1,7696(at)
     668:	00026980 	sll	t5,v0,0x6
     66c:	24420001 	addiu	v0,v0,1
     670:	3042ffff 	andi	v0,v0,0xffff
     674:	2841012c 	slti	at,v0,300
     678:	006d7021 	addu	t6,v1,t5
     67c:	1420fffa 	bnez	at,668 <BossMo_Init+0xb8>
     680:	a1c00024 	sb	zero,36(t6)
     684:	3c014348 	lui	at,0x4348
     688:	44814000 	mtc1	at,$f8
     68c:	3c014248 	lui	at,0x4248
     690:	44819000 	mtc1	at,$f18
     694:	e6080024 	swc1	$f8,36(s0)
     698:	8e2f07c0 	lw	t7,1984(s1)
     69c:	3c0140a0 	lui	at,0x40a0
     6a0:	44813000 	mtc1	at,$f6
     6a4:	8df80028 	lw	t8,40(t7)
     6a8:	24080001 	li	t0,1
     6ac:	240a0014 	li	t2,20
     6b0:	87190002 	lh	t9,2(t8)
     6b4:	a20801d1 	sb	t0,465(s0)
     6b8:	a20a00af 	sb	t2,175(s0)
     6bc:	44995000 	mtc1	t9,$f10
     6c0:	a20000ae 	sb	zero,174(s0)
     6c4:	a600001c 	sh	zero,28(s0)
     6c8:	46805420 	cvt.s.w	$f16,$f10
     6cc:	3c053c23 	lui	a1,0x3c23
     6d0:	e606018c 	swc1	$f6,396(s0)
     6d4:	34a5d70a 	ori	a1,a1,0xd70a
     6d8:	02002025 	move	a0,s0
     6dc:	46128100 	add.s	$f4,$f16,$f18
     6e0:	e6040028 	swc1	$f4,40(s0)
     6e4:	0c000000 	jal	0 <func_8091BB00>
     6e8:	afa60044 	sw	a2,68(sp)
     6ec:	260514fc 	addiu	a1,s0,5372
     6f0:	afa50048 	sw	a1,72(sp)
     6f4:	0c000000 	jal	0 <func_8091BB00>
     6f8:	02202025 	move	a0,s1
     6fc:	3c070000 	lui	a3,0x0
     700:	8fa50048 	lw	a1,72(sp)
     704:	24e70000 	addiu	a3,a3,0
     708:	02202025 	move	a0,s1
     70c:	0c000000 	jal	0 <func_8091BB00>
     710:	02003025 	move	a2,s0
     714:	8fa90044 	lw	t1,68(sp)
     718:	02202025 	move	a0,s1
     71c:	0c000000 	jal	0 <func_8091BB00>
     720:	81251cbc 	lb	a1,7356(t1)
     724:	1040002a 	beqz	v0,7d0 <BossMo_Init+0x220>
     728:	3c190000 	lui	t9,0x0
     72c:	0c000000 	jal	0 <func_8091BB00>
     730:	02002025 	move	a0,s0
     734:	44800000 	mtc1	zero,$f0
     738:	3c01c38c 	lui	at,0xc38c
     73c:	44814000 	mtc1	at,$f8
     740:	26241c24 	addiu	a0,s1,7204
     744:	240bffff 	li	t3,-1
     748:	afab0028 	sw	t3,40(sp)
     74c:	afa40048 	sw	a0,72(sp)
     750:	02002825 	move	a1,s0
     754:	02203025 	move	a2,s1
     758:	2407005d 	li	a3,93
     75c:	afa0001c 	sw	zero,28(sp)
     760:	afa00020 	sw	zero,32(sp)
     764:	afa00024 	sw	zero,36(sp)
     768:	e7a00010 	swc1	$f0,16(sp)
     76c:	e7a00018 	swc1	$f0,24(sp)
     770:	0c000000 	jal	0 <func_8091BB00>
     774:	e7a80014 	swc1	$f8,20(sp)
     778:	3c01c38c 	lui	at,0xc38c
     77c:	44815000 	mtc1	at,$f10
     780:	44808000 	mtc1	zero,$f16
     784:	8fa40048 	lw	a0,72(sp)
     788:	02202825 	move	a1,s1
     78c:	2406005f 	li	a2,95
     790:	3c07c348 	lui	a3,0xc348
     794:	afa00018 	sw	zero,24(sp)
     798:	afa0001c 	sw	zero,28(sp)
     79c:	afa00020 	sw	zero,32(sp)
     7a0:	afa00024 	sw	zero,36(sp)
     7a4:	e7aa0010 	swc1	$f10,16(sp)
     7a8:	0c000000 	jal	0 <func_8091BB00>
     7ac:	e7b00014 	swc1	$f16,20(sp)
     7b0:	8fad0044 	lw	t5,68(sp)
     7b4:	240c00ff 	li	t4,255
     7b8:	240efe0c 	li	t6,-500
     7bc:	a5ac1d30 	sh	t4,7472(t5)
     7c0:	8e2f07c0 	lw	t7,1984(s1)
     7c4:	8df80028 	lw	t8,40(t7)
     7c8:	1000006d 	b	980 <BossMo_Init+0x3d0>
     7cc:	a70e0002 	sh	t6,2(t8)
     7d0:	97390ee2 	lhu	t9,3810(t9)
     7d4:	24090001 	li	t1,1
     7d8:	240b0014 	li	t3,20
     7dc:	33280010 	andi	t0,t9,0x10
     7e0:	11000009 	beqz	t0,808 <BossMo_Init+0x258>
     7e4:	3c01447a 	lui	at,0x447a
     7e8:	0c000000 	jal	0 <func_8091BB00>
     7ec:	2404001b 	li	a0,27
     7f0:	3c0140a0 	lui	at,0x40a0
     7f4:	44819000 	mtc1	at,$f18
     7f8:	240a0032 	li	t2,50
     7fc:	a60a017e 	sh	t2,382(s0)
     800:	10000007 	b	820 <BossMo_Init+0x270>
     804:	e6120d64 	swc1	$f18,3428(s0)
     808:	44812000 	mtc1	at,$f4
     80c:	240c003c 	li	t4,60
     810:	a6090f60 	sh	t1,3936(s0)
     814:	a60b0158 	sh	t3,344(s0)
     818:	a60c017e 	sh	t4,382(s0)
     81c:	e6040024 	swc1	$f4,36(s0)
     820:	c6060024 	lwc1	$f6,36(s0)
     824:	26241c24 	addiu	a0,s1,7204
     828:	240d0064 	li	t5,100
     82c:	e7a60010 	swc1	$f6,16(sp)
     830:	c6080028 	lwc1	$f8,40(s0)
     834:	02002825 	move	a1,s0
     838:	02203025 	move	a2,s1
     83c:	e7a80014 	swc1	$f8,20(sp)
     840:	c60a002c 	lwc1	$f10,44(s0)
     844:	afa40048 	sw	a0,72(sp)
     848:	afad0028 	sw	t5,40(sp)
     84c:	afa00024 	sw	zero,36(sp)
     850:	afa00020 	sw	zero,32(sp)
     854:	afa0001c 	sw	zero,28(sp)
     858:	240700c4 	li	a3,196
     85c:	0c000000 	jal	0 <func_8091BB00>
     860:	e7aa0018 	swc1	$f10,24(sp)
     864:	3c010000 	lui	at,0x0
     868:	ac220000 	sw	v0,0(at)
     86c:	3c0f0000 	lui	t7,0x0
     870:	3c0e0000 	lui	t6,0x0
     874:	25ef0000 	addiu	t7,t7,0
     878:	25ce0000 	addiu	t6,t6,0
     87c:	ae0f0134 	sw	t7,308(s0)
     880:	ae0e0130 	sw	t6,304(s0)
     884:	8fa50048 	lw	a1,72(sp)
     888:	02202025 	move	a0,s1
     88c:	02003025 	move	a2,s0
     890:	0c000000 	jal	0 <func_8091BB00>
     894:	24070009 	li	a3,9
     898:	1000003a 	b	984 <BossMo_Init+0x3d4>
     89c:	8fbf003c 	lw	ra,60(sp)
     8a0:	0c000000 	jal	0 <func_8091BB00>
     8a4:	34a5d70a 	ori	a1,a1,0xd70a
     8a8:	02002025 	move	a0,s0
     8ac:	0c000000 	jal	0 <func_8091BB00>
     8b0:	02202825 	move	a1,s1
     8b4:	241800ff 	li	t8,255
     8b8:	a21800ae 	sb	t8,174(s0)
     8bc:	8e2807c0 	lw	t0,1984(s1)
     8c0:	3c0142b4 	lui	at,0x42b4
     8c4:	44818000 	mtc1	at,$f16
     8c8:	8d0a0028 	lw	t2,40(t0)
     8cc:	2419ffce 	li	t9,-50
     8d0:	27a2004c 	addiu	v0,sp,76
     8d4:	a5590002 	sh	t9,2(t2)
     8d8:	e61001c4 	swc1	$f16,452(s0)
     8dc:	8e2907c0 	lw	t1,1984(s1)
     8e0:	8e0f0024 	lw	t7,36(s0)
     8e4:	2605101c 	addiu	a1,s0,4124
     8e8:	8d2b0028 	lw	t3,40(t1)
     8ec:	02202025 	move	a0,s1
     8f0:	856c0002 	lh	t4,2(t3)
     8f4:	448c9000 	mtc1	t4,$f18
     8f8:	00000000 	nop
     8fc:	46809120 	cvt.s.w	$f4,$f18
     900:	e6040028 	swc1	$f4,40(s0)
     904:	ac4f0000 	sw	t7,0(v0)
     908:	8e0d0028 	lw	t5,40(s0)
     90c:	8c580000 	lw	t8,0(v0)
     910:	ac4d0004 	sw	t5,4(v0)
     914:	8e0f002c 	lw	t7,44(s0)
     918:	ac4f0008 	sw	t7,8(v0)
     91c:	ae1801d4 	sw	t8,468(s0)
     920:	8c4e0004 	lw	t6,4(v0)
     924:	ae0e01d8 	sw	t6,472(s0)
     928:	8c580008 	lw	t8,8(v0)
     92c:	ae1801dc 	sw	t8,476(s0)
     930:	8c590000 	lw	t9,0(v0)
     934:	ae190100 	sw	t9,256(s0)
     938:	8c480004 	lw	t0,4(v0)
     93c:	ae080104 	sw	t0,260(s0)
     940:	8c590008 	lw	t9,8(v0)
     944:	ae190108 	sw	t9,264(s0)
     948:	0c000000 	jal	0 <func_8091BB00>
     94c:	afa50048 	sw	a1,72(sp)
     950:	3c070000 	lui	a3,0x0
     954:	260a103c 	addiu	t2,s0,4156
     958:	8fa50048 	lw	a1,72(sp)
     95c:	afaa0010 	sw	t2,16(sp)
     960:	24e70000 	addiu	a3,a3,0
     964:	02202025 	move	a0,s1
     968:	0c000000 	jal	0 <func_8091BB00>
     96c:	02003025 	move	a2,s0
     970:	3c013f80 	lui	at,0x3f80
     974:	44813000 	mtc1	at,$f6
     978:	00000000 	nop
     97c:	e6060d64 	swc1	$f6,3428(s0)
     980:	8fbf003c 	lw	ra,60(sp)
     984:	8fb00034 	lw	s0,52(sp)
     988:	8fb10038 	lw	s1,56(sp)
     98c:	03e00008 	jr	ra
     990:	27bd0068 	addiu	sp,sp,104

00000994 <BossMo_Destroy>:
     994:	27bdffe8 	addiu	sp,sp,-24
     998:	afbf0014 	sw	ra,20(sp)
     99c:	848e001c 	lh	t6,28(a0)
     9a0:	00803025 	move	a2,a0
     9a4:	00a03825 	move	a3,a1
     9a8:	29c10064 	slti	at,t6,100
     9ac:	14200006 	bnez	at,9c8 <BossMo_Destroy+0x34>
     9b0:	00e02025 	move	a0,a3
     9b4:	00a02025 	move	a0,a1
     9b8:	0c000000 	jal	0 <func_8091BB00>
     9bc:	24c5101c 	addiu	a1,a2,4124
     9c0:	10000004 	b	9d4 <BossMo_Destroy+0x40>
     9c4:	8fbf0014 	lw	ra,20(sp)
     9c8:	0c000000 	jal	0 <func_8091BB00>
     9cc:	24c514fc 	addiu	a1,a2,5372
     9d0:	8fbf0014 	lw	ra,20(sp)
     9d4:	27bd0018 	addiu	sp,sp,24
     9d8:	03e00008 	jr	ra
     9dc:	00000000 	nop

000009e0 <func_8091C4E0>:
     9e0:	27bdffe8 	addiu	sp,sp,-24
     9e4:	afbf0014 	sw	ra,20(sp)
     9e8:	afa5001c 	sw	a1,28(sp)
     9ec:	3c0e0000 	lui	t6,0x0
     9f0:	25ce0000 	addiu	t6,t6,0
     9f4:	240f000a 	li	t7,10
     9f8:	3c0141a0 	lui	at,0x41a0
     9fc:	ac8e0150 	sw	t6,336(a0)
     a00:	a48f0158 	sh	t7,344(a0)
     a04:	44816000 	mtc1	at,$f12
     a08:	0c000000 	jal	0 <func_8091BB00>
     a0c:	afa40018 	sw	a0,24(sp)
     a10:	4600010d 	trunc.w.s	$f4,$f0
     a14:	8fa40018 	lw	a0,24(sp)
     a18:	44092000 	mfc1	t1,$f4
     a1c:	00000000 	nop
     a20:	252a0032 	addiu	t2,t1,50
     a24:	a48a017e 	sh	t2,382(a0)
     a28:	8fbf0014 	lw	ra,20(sp)
     a2c:	27bd0018 	addiu	sp,sp,24
     a30:	03e00008 	jr	ra
     a34:	00000000 	nop

00000a38 <func_8091C538>:
     a38:	27bdfe48 	addiu	sp,sp,-440
     a3c:	afbf007c 	sw	ra,124(sp)
     a40:	afb50078 	sw	s5,120(sp)
     a44:	afb40074 	sw	s4,116(sp)
     a48:	afb30070 	sw	s3,112(sp)
     a4c:	afb2006c 	sw	s2,108(sp)
     a50:	afb10068 	sw	s1,104(sp)
     a54:	afb00064 	sw	s0,100(sp)
     a58:	f7be0058 	sdc1	$f30,88(sp)
     a5c:	f7bc0050 	sdc1	$f28,80(sp)
     a60:	f7ba0048 	sdc1	$f26,72(sp)
     a64:	f7b80040 	sdc1	$f24,64(sp)
     a68:	f7b60038 	sdc1	$f22,56(sp)
     a6c:	f7b40030 	sdc1	$f20,48(sp)
     a70:	afa501bc 	sw	a1,444(sp)
     a74:	a7a001b4 	sh	zero,436(sp)
     a78:	8c8f014c 	lw	t7,332(a0)
     a7c:	8cb51c44 	lw	s5,7236(a1)
     a80:	00809025 	move	s2,a0
     a84:	afaf019c 	sw	t7,412(sp)
     a88:	84830158 	lh	v1,344(a0)
     a8c:	00a07025 	move	t6,a1
     a90:	286100cc 	slti	at,v1,204
     a94:	10200009 	beqz	at,abc <func_8091C538+0x84>
     a98:	00000000 	nop
     a9c:	8dd807c0 	lw	t8,1984(t6)
     aa0:	86430158 	lh	v1,344(s2)
     aa4:	8f190028 	lw	t9,40(t8)
     aa8:	87280002 	lh	t0,2(t9)
     aac:	44882000 	mtc1	t0,$f4
     ab0:	00000000 	nop
     ab4:	468021a0 	cvt.s.w	$f6,$f4
     ab8:	e6460028 	swc1	$f6,40(s2)
     abc:	10600009 	beqz	v1,ae4 <func_8091C538+0xac>
     ac0:	286100c8 	slti	at,v1,200
     ac4:	10200007 	beqz	at,ae4 <func_8091C538+0xac>
     ac8:	24010065 	li	at,101
     acc:	10610005 	beq	v1,at,ae4 <func_8091C538+0xac>
     ad0:	24010001 	li	at,1
     ad4:	10610003 	beq	v1,at,ae4 <func_8091C538+0xac>
     ad8:	24010005 	li	at,5
     adc:	54610113 	bnel	v1,at,f2c <func_8091C538+0x4f4>
     ae0:	3c013f80 	lui	at,0x3f80
     ae4:	1460002f 	bnez	v1,ba4 <func_8091C538+0x16c>
     ae8:	24010001 	li	at,1
     aec:	3c090000 	lui	t1,0x0
     af0:	8d290000 	lw	t1,0(t1)
     af4:	3c01447a 	lui	at,0x447a
     af8:	852a0f60 	lh	t2,3936(t1)
     afc:	51400014 	beqzl	t2,b50 <func_8091C538+0x118>
     b00:	44810000 	mtc1	at,$f0
     b04:	3c01447a 	lui	at,0x447a
     b08:	44810000 	mtc1	at,$f0
     b0c:	3c010000 	lui	at,0x0
     b10:	c4220000 	lwc1	$f2,0(at)
     b14:	3c0144fa 	lui	at,0x44fa
     b18:	4481c000 	mtc1	at,$f24
     b1c:	3c010000 	lui	at,0x0
     b20:	c43a0000 	lwc1	$f26,0(at)
     b24:	3c010000 	lui	at,0x0
     b28:	c4280000 	lwc1	$f8,0(at)
     b2c:	3c014120 	lui	at,0x4120
     b30:	4481a000 	mtc1	at,$f20
     b34:	4481b000 	mtc1	at,$f22
     b38:	e7a00190 	swc1	$f0,400(sp)
     b3c:	e7a00184 	swc1	$f0,388(sp)
     b40:	e7a20188 	swc1	$f2,392(sp)
     b44:	10000012 	b	b90 <func_8091C538+0x158>
     b48:	e7a8018c 	swc1	$f8,396(sp)
     b4c:	44810000 	mtc1	at,$f0
     b50:	3c010000 	lui	at,0x0
     b54:	c4220000 	lwc1	$f2,0(at)
     b58:	3c0144fa 	lui	at,0x44fa
     b5c:	4481c000 	mtc1	at,$f24
     b60:	3c010000 	lui	at,0x0
     b64:	c43a0000 	lwc1	$f26,0(at)
     b68:	3c010000 	lui	at,0x0
     b6c:	c42a0000 	lwc1	$f10,0(at)
     b70:	3c0141a0 	lui	at,0x41a0
     b74:	4481a000 	mtc1	at,$f20
     b78:	3c0141f0 	lui	at,0x41f0
     b7c:	4481b000 	mtc1	at,$f22
     b80:	e7a00190 	swc1	$f0,400(sp)
     b84:	e7a00184 	swc1	$f0,388(sp)
     b88:	e7a20188 	swc1	$f2,392(sp)
     b8c:	e7aa018c 	swc1	$f10,396(sp)
     b90:	e7b40180 	swc1	$f20,384(sp)
     b94:	e7b6017c 	swc1	$f22,380(sp)
     b98:	e7b80198 	swc1	$f24,408(sp)
     b9c:	100000b1 	b	e64 <func_8091C538+0x42c>
     ba0:	e7ba0194 	swc1	$f26,404(sp)
     ba4:	14610022 	bne	v1,at,c30 <func_8091C538+0x1f8>
     ba8:	3c010000 	lui	at,0x0
     bac:	c4380000 	lwc1	$f24,0(at)
     bb0:	3c01c47a 	lui	at,0xc47a
     bb4:	4481d000 	mtc1	at,$f26
     bb8:	3c010000 	lui	at,0x0
     bbc:	c4300000 	lwc1	$f16,0(at)
     bc0:	3c010000 	lui	at,0x0
     bc4:	4480f000 	mtc1	zero,$f30
     bc8:	c4320000 	lwc1	$f18,0(at)
     bcc:	e7b80188 	swc1	$f24,392(sp)
     bd0:	e7b00190 	swc1	$f16,400(sp)
     bd4:	e7b2018c 	swc1	$f18,396(sp)
     bd8:	e7be0184 	swc1	$f30,388(sp)
     bdc:	864b017c 	lh	t3,380(s2)
     be0:	3c0141f0 	lui	at,0x41f0
     be4:	4481a000 	mtc1	at,$f20
     be8:	3c014270 	lui	at,0x4270
     bec:	4481b000 	mtc1	at,$f22
     bf0:	316c000f 	andi	t4,t3,0xf
     bf4:	5580000a 	bnezl	t4,c20 <func_8091C538+0x1e8>
     bf8:	e7b40180 	swc1	$f20,384(sp)
     bfc:	864d017e 	lh	t5,382(s2)
     c00:	26441010 	addiu	a0,s2,4112
     c04:	240538f2 	li	a1,14578
     c08:	29a1001e 	slti	at,t5,30
     c0c:	10200003 	beqz	at,c1c <func_8091C538+0x1e4>
     c10:	3c060000 	lui	a2,0x0
     c14:	0c000000 	jal	0 <func_8091BB00>
     c18:	24c60000 	addiu	a2,a2,0
     c1c:	e7b40180 	swc1	$f20,384(sp)
     c20:	e7b6017c 	swc1	$f22,380(sp)
     c24:	e7b80198 	swc1	$f24,408(sp)
     c28:	1000008e 	b	e64 <func_8091C538+0x42c>
     c2c:	e7ba0194 	swc1	$f26,404(sp)
     c30:	24010005 	li	at,5
     c34:	54610059 	bnel	v1,at,d9c <func_8091C538+0x364>
     c38:	24010065 	li	at,101
     c3c:	864f017e 	lh	t7,382(s2)
     c40:	29e10029 	slti	at,t7,41
     c44:	14200029 	bnez	at,cec <func_8091C538+0x2b4>
     c48:	3c010000 	lui	at,0x0
     c4c:	c4220000 	lwc1	$f2,0(at)
     c50:	3c010000 	lui	at,0x0
     c54:	c4380000 	lwc1	$f24,0(at)
     c58:	3c01c548 	lui	at,0xc548
     c5c:	4481d000 	mtc1	at,$f26
     c60:	3c010000 	lui	at,0x0
     c64:	c4240000 	lwc1	$f4,0(at)
     c68:	3c014448 	lui	at,0x4448
     c6c:	44813000 	mtc1	at,$f6
     c70:	3c010000 	lui	at,0x0
     c74:	c4280000 	lwc1	$f8,0(at)
     c78:	e7a20188 	swc1	$f2,392(sp)
     c7c:	e7a40190 	swc1	$f4,400(sp)
     c80:	e7a6018c 	swc1	$f6,396(sp)
     c84:	e7a80184 	swc1	$f8,388(sp)
     c88:	864e017c 	lh	t6,380(s2)
     c8c:	3c0141f0 	lui	at,0x41f0
     c90:	4481a000 	mtc1	at,$f20
     c94:	3c014270 	lui	at,0x4270
     c98:	4481b000 	mtc1	at,$f22
     c9c:	31d8001f 	andi	t8,t6,0x1f
     ca0:	17000010 	bnez	t8,ce4 <func_8091C538+0x2ac>
     ca4:	26441010 	addiu	a0,s2,4112
     ca8:	3c060000 	lui	a2,0x0
     cac:	24c60000 	addiu	a2,a2,0
     cb0:	0c000000 	jal	0 <func_8091BB00>
     cb4:	240538f2 	li	a1,14578
     cb8:	44806000 	mtc1	zero,$f12
     cbc:	24050064 	li	a1,100
     cc0:	24060005 	li	a2,5
     cc4:	0c000000 	jal	0 <func_8091BB00>
     cc8:	24070002 	li	a3,2
     ccc:	8eb90678 	lw	t9,1656(s5)
     cd0:	02a02025 	move	a0,s5
     cd4:	97250092 	lhu	a1,146(t9)
     cd8:	24a56806 	addiu	a1,a1,26630
     cdc:	0c000000 	jal	0 <func_8091BB00>
     ce0:	30a5ffff 	andi	a1,a1,0xffff
     ce4:	10000028 	b	d88 <func_8091C538+0x350>
     ce8:	e7b40180 	swc1	$f20,384(sp)
     cec:	3c01428c 	lui	at,0x428c
     cf0:	4481b000 	mtc1	at,$f22
     cf4:	3c010000 	lui	at,0x0
     cf8:	c4220000 	lwc1	$f2,0(at)
     cfc:	3c0144fa 	lui	at,0x44fa
     d00:	4481c000 	mtc1	at,$f24
     d04:	3c01c47a 	lui	at,0xc47a
     d08:	4481d000 	mtc1	at,$f26
     d0c:	3c010000 	lui	at,0x0
     d10:	c42a0000 	lwc1	$f10,0(at)
     d14:	3c010000 	lui	at,0x0
     d18:	c4300000 	lwc1	$f16,0(at)
     d1c:	3c0142c8 	lui	at,0x42c8
     d20:	44819000 	mtc1	at,$f18
     d24:	e7a20188 	swc1	$f2,392(sp)
     d28:	e7aa0190 	swc1	$f10,400(sp)
     d2c:	e7b0018c 	swc1	$f16,396(sp)
     d30:	e7b20184 	swc1	$f18,388(sp)
     d34:	8648017c 	lh	t0,380(s2)
     d38:	26441010 	addiu	a0,s2,4112
     d3c:	240538f2 	li	a1,14578
     d40:	3109000f 	andi	t1,t0,0xf
     d44:	1520000f 	bnez	t1,d84 <func_8091C538+0x34c>
     d48:	4600b506 	mov.s	$f20,$f22
     d4c:	3c060000 	lui	a2,0x0
     d50:	0c000000 	jal	0 <func_8091BB00>
     d54:	24c60000 	addiu	a2,a2,0
     d58:	44806000 	mtc1	zero,$f12
     d5c:	240500a0 	li	a1,160
     d60:	24060005 	li	a2,5
     d64:	0c000000 	jal	0 <func_8091BB00>
     d68:	24070004 	li	a3,4
     d6c:	8eaa0678 	lw	t2,1656(s5)
     d70:	02a02025 	move	a0,s5
     d74:	95450092 	lhu	a1,146(t2)
     d78:	24a56806 	addiu	a1,a1,26630
     d7c:	0c000000 	jal	0 <func_8091BB00>
     d80:	30a5ffff 	andi	a1,a1,0xffff
     d84:	e7b40180 	swc1	$f20,384(sp)
     d88:	e7b6017c 	swc1	$f22,380(sp)
     d8c:	e7b80198 	swc1	$f24,408(sp)
     d90:	10000034 	b	e64 <func_8091C538+0x42c>
     d94:	e7ba0194 	swc1	$f26,404(sp)
     d98:	24010065 	li	at,101
     d9c:	14610018 	bne	v1,at,e00 <func_8091C538+0x3c8>
     da0:	3c010000 	lui	at,0x0
     da4:	c4220000 	lwc1	$f2,0(at)
     da8:	3c010000 	lui	at,0x0
     dac:	c4380000 	lwc1	$f24,0(at)
     db0:	3c014548 	lui	at,0x4548
     db4:	4481d000 	mtc1	at,$f26
     db8:	3c010000 	lui	at,0x0
     dbc:	c4240000 	lwc1	$f4,0(at)
     dc0:	3c014448 	lui	at,0x4448
     dc4:	44813000 	mtc1	at,$f6
     dc8:	3c010000 	lui	at,0x0
     dcc:	c4280000 	lwc1	$f8,0(at)
     dd0:	3c0141f0 	lui	at,0x41f0
     dd4:	4481a000 	mtc1	at,$f20
     dd8:	4481b000 	mtc1	at,$f22
     ddc:	e7a20188 	swc1	$f2,392(sp)
     de0:	e7b80198 	swc1	$f24,408(sp)
     de4:	e7ba0194 	swc1	$f26,404(sp)
     de8:	e7a40190 	swc1	$f4,400(sp)
     dec:	e7a6018c 	swc1	$f6,396(sp)
     df0:	e7a80184 	swc1	$f8,388(sp)
     df4:	e7b40180 	swc1	$f20,384(sp)
     df8:	1000001a 	b	e64 <func_8091C538+0x42c>
     dfc:	e7b6017c 	swc1	$f22,380(sp)
     e00:	286100c8 	slti	at,v1,200
     e04:	14200017 	bnez	at,e64 <func_8091C538+0x42c>
     e08:	3c01c3c8 	lui	at,0xc3c8
     e0c:	4481c000 	mtc1	at,$f24
     e10:	3c01c548 	lui	at,0xc548
     e14:	4481d000 	mtc1	at,$f26
     e18:	3c010000 	lui	at,0x0
     e1c:	c4300000 	lwc1	$f16,0(at)
     e20:	3c014548 	lui	at,0x4548
     e24:	44819000 	mtc1	at,$f18
     e28:	3c01447a 	lui	at,0x447a
     e2c:	44812000 	mtc1	at,$f4
     e30:	3c0141f0 	lui	at,0x41f0
     e34:	4481a000 	mtc1	at,$f20
     e38:	3c014270 	lui	at,0x4270
     e3c:	44805000 	mtc1	zero,$f10
     e40:	4481b000 	mtc1	at,$f22
     e44:	e7b80198 	swc1	$f24,408(sp)
     e48:	e7ba0194 	swc1	$f26,404(sp)
     e4c:	e7b0018c 	swc1	$f16,396(sp)
     e50:	e7b20188 	swc1	$f18,392(sp)
     e54:	e7a40184 	swc1	$f4,388(sp)
     e58:	e7b40180 	swc1	$f20,384(sp)
     e5c:	e7aa0190 	swc1	$f10,400(sp)
     e60:	e7b6017c 	swc1	$f22,380(sp)
     e64:	3c013f80 	lui	at,0x3f80
     e68:	4481e000 	mtc1	at,$f28
     e6c:	c7b40180 	lwc1	$f20,384(sp)
     e70:	c7b80198 	lwc1	$f24,408(sp)
     e74:	4406e000 	mfc1	a2,$f28
     e78:	4407a000 	mfc1	a3,$f20
     e7c:	4405c000 	mfc1	a1,$f24
     e80:	c7b6017c 	lwc1	$f22,380(sp)
     e84:	c7ba0194 	lwc1	$f26,404(sp)
     e88:	0c000000 	jal	0 <func_8091BB00>
     e8c:	26440190 	addiu	a0,s2,400
     e90:	4405d000 	mfc1	a1,$f26
     e94:	4406e000 	mfc1	a2,$f28
     e98:	26440188 	addiu	a0,s2,392
     e9c:	0c000000 	jal	0 <func_8091BB00>
     ea0:	3c0741f0 	lui	a3,0x41f0
     ea4:	4406e000 	mfc1	a2,$f28
     ea8:	4407b000 	mfc1	a3,$f22
     eac:	2644018c 	addiu	a0,s2,396
     eb0:	0c000000 	jal	0 <func_8091BB00>
     eb4:	8fa50190 	lw	a1,400(sp)
     eb8:	4406e000 	mfc1	a2,$f28
     ebc:	4407a000 	mfc1	a3,$f20
     ec0:	2644019c 	addiu	a0,s2,412
     ec4:	0c000000 	jal	0 <func_8091BB00>
     ec8:	8fa5018c 	lw	a1,396(sp)
     ecc:	4406e000 	mfc1	a2,$f28
     ed0:	26440194 	addiu	a0,s2,404
     ed4:	8fa50188 	lw	a1,392(sp)
     ed8:	0c000000 	jal	0 <func_8091BB00>
     edc:	3c0741f0 	lui	a3,0x41f0
     ee0:	4406e000 	mfc1	a2,$f28
     ee4:	4407b000 	mfc1	a3,$f22
     ee8:	26440198 	addiu	a0,s2,408
     eec:	0c000000 	jal	0 <func_8091BB00>
     ef0:	8fa50184 	lw	a1,388(sp)
     ef4:	c6460190 	lwc1	$f6,400(s2)
     ef8:	c64a019c 	lwc1	$f10,412(s2)
     efc:	864b016e 	lh	t3,366(s2)
     f00:	4600320d 	trunc.w.s	$f8,$f6
     f04:	86590170 	lh	t9,368(s2)
     f08:	86430158 	lh	v1,344(s2)
     f0c:	4600540d 	trunc.w.s	$f16,$f10
     f10:	440e4000 	mfc1	t6,$f8
     f14:	440c8000 	mfc1	t4,$f16
     f18:	016ec021 	addu	t8,t3,t6
     f1c:	a658016e 	sh	t8,366(s2)
     f20:	032c6821 	addu	t5,t9,t4
     f24:	a64d0170 	sh	t5,368(s2)
     f28:	3c013f80 	lui	at,0x3f80
     f2c:	4481e000 	mtc1	at,$f28
     f30:	4480f000 	mtc1	zero,$f30
     f34:	28610066 	slti	at,v1,102
     f38:	14200011 	bnez	at,f80 <func_8091C538+0x548>
     f3c:	00601025 	move	v0,v1
     f40:	28410067 	slti	at,v0,103
     f44:	14200009 	bnez	at,f6c <func_8091C538+0x534>
     f48:	244fff38 	addiu	t7,v0,-200
     f4c:	2de10007 	sltiu	at,t7,7
     f50:	102009b1 	beqz	at,3618 <L8091F118>
     f54:	000f7880 	sll	t7,t7,0x2
     f58:	3c010000 	lui	at,0x0
     f5c:	002f0821 	addu	at,at,t7
     f60:	8c2f0000 	lw	t7,0(at)
     f64:	01e00008 	jr	t7
     f68:	00000000 	nop
     f6c:	24010066 	li	at,102
     f70:	104106b3 	beq	v0,at,2a40 <L8091D918+0xc28>
     f74:	264401a4 	addiu	a0,s2,420
     f78:	100009a8 	b	361c <L8091F118+0x4>
     f7c:	c6400050 	lwc1	$f0,80(s2)
     f80:	28410065 	slti	at,v0,101
     f84:	14200006 	bnez	at,fa0 <func_8091C538+0x568>
     f88:	00025880 	sll	t3,v0,0x2
     f8c:	24010065 	li	at,101
     f90:	5041054e 	beql	v0,at,24cc <L8091D918+0x6b4>
     f94:	86480f62 	lh	t0,3938(s2)
     f98:	100009a0 	b	361c <L8091F118+0x4>
     f9c:	c6400050 	lwc1	$f0,80(s2)
     fa0:	2841000c 	slti	at,v0,12
     fa4:	14200005 	bnez	at,fbc <func_8091C538+0x584>
     fa8:	24010064 	li	at,100
     fac:	104104de 	beq	v0,at,2328 <L8091D918+0x510>
     fb0:	26441010 	addiu	a0,s2,4112
     fb4:	10000999 	b	361c <L8091F118+0x4>
     fb8:	c6400050 	lwc1	$f0,80(s2)
     fbc:	2c41000c 	sltiu	at,v0,12
     fc0:	10200995 	beqz	at,3618 <L8091F118>
     fc4:	3c010000 	lui	at,0x0
     fc8:	002b0821 	addu	at,at,t3
     fcc:	8c2b0000 	lw	t3,0(at)
     fd0:	01600008 	jr	t3
     fd4:	00000000 	nop

00000fd8 <L8091CAD8>:
     fd8:	8e4e0004 	lw	t6,4(s2)
     fdc:	2401fffe 	li	at,-2
     fe0:	3c130000 	lui	s3,0x0
     fe4:	01c1c024 	and	t8,t6,at
     fe8:	26730000 	addiu	s3,s3,0
     fec:	ae580004 	sw	t8,4(s2)
     ff0:	8e680000 	lw	t0,0(s3)
     ff4:	2409000b 	li	t1,11
     ff8:	240a0046 	li	t2,70
     ffc:	16480005 	bne	s2,t0,1014 <L8091CAD8+0x3c>
    1000:	00000000 	nop
    1004:	8659008a 	lh	t9,138(s2)
    1008:	a6490158 	sh	t1,344(s2)
    100c:	a64a017e 	sh	t2,382(s2)
    1010:	a65900b6 	sh	t9,182(s2)
    1014:	10000980 	b	3618 <L8091F118>
    1018:	86430158 	lh	v1,344(s2)

0000101c <L8091CB1C>:
    101c:	864f017e 	lh	t7,382(s2)
    1020:	240c0001 	li	t4,1
    1024:	240d0014 	li	t5,20
    1028:	29e10014 	slti	at,t7,20
    102c:	a24c01d1 	sb	t4,465(s2)
    1030:	1020001a 	beqz	at,109c <L8091CB1C+0x80>
    1034:	a64d01cc 	sh	t5,460(s2)
    1038:	3c010000 	lui	at,0x0
    103c:	c4360000 	lwc1	$f22,0(at)
    1040:	3c053e19 	lui	a1,0x3e19
    1044:	34a5999a 	ori	a1,a1,0x999a
    1048:	4407b000 	mfc1	a3,$f22
    104c:	264401e0 	addiu	a0,s2,480
    1050:	0c000000 	jal	0 <func_8091BB00>
    1054:	3c063f00 	lui	a2,0x3f00
    1058:	3c014316 	lui	at,0x4316
    105c:	4481a000 	mtc1	at,$f20
    1060:	3c0140a0 	lui	at,0x40a0
    1064:	4481d000 	mtc1	at,$f26
    1068:	4406e000 	mfc1	a2,$f28
    106c:	4405a000 	mfc1	a1,$f20
    1070:	4407d000 	mfc1	a3,$f26
    1074:	0c000000 	jal	0 <func_8091BB00>
    1078:	264401a4 	addiu	a0,s2,420
    107c:	c65201a4 	lwc1	$f18,420(s2)
    1080:	240b003c 	li	t3,60
    1084:	4612a03e 	c.le.s	$f20,$f18
    1088:	00000000 	nop
    108c:	45020004 	bc1fl	10a0 <L8091CB1C+0x84>
    1090:	8642017e 	lh	v0,382(s2)
    1094:	a6400158 	sh	zero,344(s2)
    1098:	a64b017e 	sh	t3,382(s2)
    109c:	8642017e 	lh	v0,382(s2)
    10a0:	240e0001 	li	t6,1
    10a4:	28410033 	slti	at,v0,51
    10a8:	54200004 	bnezl	at,10bc <L8091CB1C+0xa0>
    10ac:	28410029 	slti	at,v0,41
    10b0:	10000012 	b	10fc <L8091CB1C+0xe0>
    10b4:	a7ae017a 	sh	t6,378(sp)
    10b8:	28410029 	slti	at,v0,41
    10bc:	14200003 	bnez	at,10cc <L8091CB1C+0xb0>
    10c0:	24180003 	li	t8,3
    10c4:	1000000d 	b	10fc <L8091CB1C+0xe0>
    10c8:	a7b8017a 	sh	t8,378(sp)
    10cc:	2841001f 	slti	at,v0,31
    10d0:	14200003 	bnez	at,10e0 <L8091CB1C+0xc4>
    10d4:	24080005 	li	t0,5
    10d8:	10000008 	b	10fc <L8091CB1C+0xe0>
    10dc:	a7a8017a 	sh	t0,378(sp)
    10e0:	28410015 	slti	at,v0,21
    10e4:	14200004 	bnez	at,10f8 <L8091CB1C+0xdc>
    10e8:	240a0003 	li	t2,3
    10ec:	24090008 	li	t1,8
    10f0:	10000002 	b	10fc <L8091CB1C+0xe0>
    10f4:	a7a9017a 	sh	t1,378(sp)
    10f8:	a7aa017a 	sh	t2,378(sp)
    10fc:	87b9017a 	lh	t9,378(sp)
    1100:	00008825 	move	s1,zero
    1104:	8fb501bc 	lw	s5,444(sp)
    1108:	1b20003e 	blez	t9,1204 <L8091CB1C+0x1e8>
    110c:	3c010001 	lui	at,0x1
    1110:	02a1a821 	addu	s5,s5,at
    1114:	3c0142dc 	lui	at,0x42dc
    1118:	4481e000 	mtc1	at,$f28
    111c:	3c014220 	lui	at,0x4220
    1120:	4481d000 	mtc1	at,$f26
    1124:	3c014780 	lui	at,0x4780
    1128:	4481c000 	mtc1	at,$f24
    112c:	26530024 	addiu	s3,s2,36
    1130:	27b0016c 	addiu	s0,sp,364
    1134:	3c014248 	lui	at,0x4248
    1138:	44816000 	mtc1	at,$f12
    113c:	0c000000 	jal	0 <func_8091BB00>
    1140:	00000000 	nop
    1144:	46000506 	mov.s	$f20,$f0
    1148:	0c000000 	jal	0 <func_8091BB00>
    114c:	4600c306 	mov.s	$f12,$f24
    1150:	8e6d0000 	lw	t5,0(s3)
    1154:	46000586 	mov.s	$f22,$f0
    1158:	46000306 	mov.s	$f12,$f0
    115c:	ae0d0000 	sw	t5,0(s0)
    1160:	8e6c0004 	lw	t4,4(s3)
    1164:	ae0c0004 	sw	t4,4(s0)
    1168:	8e6d0008 	lw	t5,8(s3)
    116c:	0c000000 	jal	0 <func_8091BB00>
    1170:	ae0d0008 	sw	t5,8(s0)
    1174:	46140182 	mul.s	$f6,$f0,$f20
    1178:	c7a4016c 	lwc1	$f4,364(sp)
    117c:	4600b306 	mov.s	$f12,$f22
    1180:	46062200 	add.s	$f8,$f4,$f6
    1184:	0c000000 	jal	0 <func_8091BB00>
    1188:	e7a8016c 	swc1	$f8,364(sp)
    118c:	46140402 	mul.s	$f16,$f0,$f20
    1190:	c7aa0174 	lwc1	$f10,372(sp)
    1194:	8faf01bc 	lw	t7,444(sp)
    1198:	4406d000 	mfc1	a2,$f26
    119c:	4407e000 	mfc1	a3,$f28
    11a0:	24080050 	li	t0,80
    11a4:	24090122 	li	t1,290
    11a8:	46105480 	add.s	$f18,$f10,$f16
    11ac:	240a0001 	li	t2,1
    11b0:	02002825 	move	a1,s0
    11b4:	e7b20174 	swc1	$f18,372(sp)
    11b8:	8deb07c0 	lw	t3,1984(t7)
    11bc:	8d6e0028 	lw	t6,40(t3)
    11c0:	85d80002 	lh	t8,2(t6)
    11c4:	44982000 	mtc1	t8,$f4
    11c8:	00000000 	nop
    11cc:	468021a0 	cvt.s.w	$f6,$f4
    11d0:	e7a60170 	swc1	$f6,368(sp)
    11d4:	8ea41e10 	lw	a0,7696(s5)
    11d8:	afaa0018 	sw	t2,24(sp)
    11dc:	afa90014 	sw	t1,20(sp)
    11e0:	0c000000 	jal	0 <func_8091BB00>
    11e4:	afa80010 	sw	t0,16(sp)
    11e8:	87b9017a 	lh	t9,378(sp)
    11ec:	26310001 	addiu	s1,s1,1
    11f0:	00118c00 	sll	s1,s1,0x10
    11f4:	00118c03 	sra	s1,s1,0x10
    11f8:	0239082a 	slt	at,s1,t9
    11fc:	5420ffce 	bnezl	at,1138 <L8091CB1C+0x11c>
    1200:	3c014248 	lui	at,0x4248
    1204:	10000904 	b	3618 <L8091F118>
    1208:	86430158 	lh	v1,344(s2)

0000120c <L8091CD0C>:
    120c:	3c0c0000 	lui	t4,0x0
    1210:	8d8c0000 	lw	t4,0(t4)
    1214:	26441010 	addiu	a0,s2,4112
    1218:	858d0f60 	lh	t5,3936(t4)
    121c:	55a00004 	bnezl	t5,1230 <L8091CD0C+0x24>
    1220:	3c063dcc 	lui	a2,0x3dcc
    1224:	0c000000 	jal	0 <func_8091BB00>
    1228:	240530f0 	li	a1,12528
    122c:	3c063dcc 	lui	a2,0x3dcc
    1230:	3c073ecc 	lui	a3,0x3ecc
    1234:	34e7cccd 	ori	a3,a3,0xcccd
    1238:	34c6cccd 	ori	a2,a2,0xcccd
    123c:	264401c8 	addiu	a0,s2,456
    1240:	0c000000 	jal	0 <func_8091BB00>
    1244:	3c05c0a0 	lui	a1,0xc0a0
    1248:	3c0140a0 	lui	at,0x40a0
    124c:	4481d000 	mtc1	at,$f26
    1250:	00008825 	move	s1,zero
    1254:	2414000c 	li	s4,12
    1258:	24130006 	li	s3,6
    125c:	c6480188 	lwc1	$f8,392(s2)
    1260:	8649016e 	lh	t1,366(s2)
    1264:	4600428d 	trunc.w.s	$f10,$f8
    1268:	440b5000 	mfc1	t3,$f10
    126c:	00000000 	nop
    1270:	000b7400 	sll	t6,t3,0x10
    1274:	000ec403 	sra	t8,t6,0x10
    1278:	03110019 	multu	t8,s1
    127c:	00004012 	mflo	t0
    1280:	01092021 	addu	a0,t0,t1
    1284:	00042400 	sll	a0,a0,0x10
    1288:	0c000000 	jal	0 <func_8091BB00>
    128c:	00042403 	sra	a0,a0,0x10
    1290:	44918000 	mtc1	s1,$f16
    1294:	c64a0194 	lwc1	$f10,404(s2)
    1298:	3c010000 	lui	at,0x0
    129c:	468084a0 	cvt.s.w	$f18,$f16
    12a0:	c4240000 	lwc1	$f4,0(at)
    12a4:	864b0170 	lh	t3,368(s2)
    12a8:	c646018c 	lwc1	$f6,396(s2)
    12ac:	4600540d 	trunc.w.s	$f16,$f10
    12b0:	46049502 	mul.s	$f20,$f18,$f4
    12b4:	44198000 	mfc1	t9,$f16
    12b8:	00000000 	nop
    12bc:	00196400 	sll	t4,t9,0x10
    12c0:	000c6c03 	sra	t5,t4,0x10
    12c4:	01b10019 	multu	t5,s1
    12c8:	4600a202 	mul.s	$f8,$f20,$f0
    12cc:	00000000 	nop
    12d0:	46083582 	mul.s	$f22,$f6,$f8
    12d4:	00007812 	mflo	t7
    12d8:	01eb2021 	addu	a0,t7,t3
    12dc:	00042400 	sll	a0,a0,0x10
    12e0:	0c000000 	jal	0 <func_8091BB00>
    12e4:	00042403 	sra	a0,a0,0x10
    12e8:	02340019 	multu	s1,s4
    12ec:	4600a782 	mul.s	$f30,$f20,$f0
    12f0:	c65201a0 	lwc1	$f18,416(s2)
    12f4:	c6500198 	lwc1	$f16,408(s2)
    12f8:	3c063dcc 	lui	a2,0x3dcc
    12fc:	461a9482 	mul.s	$f18,$f18,$f26
    1300:	3c073ecc 	lui	a3,0x3ecc
    1304:	34c6cccd 	ori	a2,a2,0xcccd
    1308:	461e8602 	mul.s	$f24,$f16,$f30
    130c:	34e7cccd 	ori	a3,a3,0xcccd
    1310:	00007012 	mflo	t6
    1314:	024e2021 	addu	a0,s2,t6
    1318:	44059000 	mfc1	a1,$f18
    131c:	0c000000 	jal	0 <func_8091BB00>
    1320:	248406ac 	addiu	a0,a0,1708
    1324:	2401001c 	li	at,28
    1328:	56210007 	bnel	s1,at,1348 <L8091CD0C+0x13c>
    132c:	c6500d64 	lwc1	$f16,3428(s2)
    1330:	02330019 	multu	s1,s3
    1334:	0000c012 	mflo	t8
    1338:	02584021 	addu	t0,s2,t8
    133c:	85090c6c 	lh	t1,3180(t0)
    1340:	a7a901b4 	sh	t1,436(sp)
    1344:	c6500d64 	lwc1	$f16,3428(s2)
    1348:	02330019 	multu	s1,s3
    134c:	c6460d68 	lwc1	$f6,3432(s2)
    1350:	4610e483 	div.s	$f18,$f28,$f16
    1354:	4600b28d 	trunc.w.s	$f10,$f22
    1358:	4600320d 	trunc.w.s	$f8,$f6
    135c:	44055000 	mfc1	a1,$f10
    1360:	00005012 	mflo	t2
    1364:	024a8021 	addu	s0,s2,t2
    1368:	44074000 	mfc1	a3,$f8
    136c:	00052c00 	sll	a1,a1,0x10
    1370:	00052c03 	sra	a1,a1,0x10
    1374:	00073c00 	sll	a3,a3,0x10
    1378:	00073c03 	sra	a3,a3,0x10
    137c:	26040c6c 	addiu	a0,s0,3180
    1380:	4600910d 	trunc.w.s	$f4,$f18
    1384:	44062000 	mfc1	a2,$f4
    1388:	00000000 	nop
    138c:	00063400 	sll	a2,a2,0x10
    1390:	0c000000 	jal	0 <func_8091BB00>
    1394:	00063403 	sra	a2,a2,0x10
    1398:	c6500d64 	lwc1	$f16,3428(s2)
    139c:	c6460d68 	lwc1	$f6,3432(s2)
    13a0:	4600c28d 	trunc.w.s	$f10,$f24
    13a4:	26040c70 	addiu	a0,s0,3184
    13a8:	4610e483 	div.s	$f18,$f28,$f16
    13ac:	44055000 	mfc1	a1,$f10
    13b0:	4600320d 	trunc.w.s	$f8,$f6
    13b4:	00052c00 	sll	a1,a1,0x10
    13b8:	00052c03 	sra	a1,a1,0x10
    13bc:	44074000 	mfc1	a3,$f8
    13c0:	00000000 	nop
    13c4:	00073c00 	sll	a3,a3,0x10
    13c8:	00073c03 	sra	a3,a3,0x10
    13cc:	4600910d 	trunc.w.s	$f4,$f18
    13d0:	44062000 	mfc1	a2,$f4
    13d4:	00000000 	nop
    13d8:	00063400 	sll	a2,a2,0x10
    13dc:	0c000000 	jal	0 <func_8091BB00>
    13e0:	00063403 	sra	a2,a2,0x10
    13e4:	26310001 	addiu	s1,s1,1
    13e8:	00118c00 	sll	s1,s1,0x10
    13ec:	00118c03 	sra	s1,s1,0x10
    13f0:	2a210029 	slti	at,s1,41
    13f4:	5420ff9a 	bnezl	at,1260 <L8091CD0C+0x54>
    13f8:	c6480188 	lwc1	$f8,392(s2)
    13fc:	8e480024 	lw	t0,36(s2)
    1400:	8e580028 	lw	t8,40(s2)
    1404:	4406e000 	mfc1	a2,$f28
    1408:	ae4801d4 	sw	t0,468(s2)
    140c:	8e48002c 	lw	t0,44(s2)
    1410:	3c073d23 	lui	a3,0x3d23
    1414:	34e7d70a 	ori	a3,a3,0xd70a
    1418:	26440068 	addiu	a0,s2,104
    141c:	3c053f40 	lui	a1,0x3f40
    1420:	ae5801d8 	sw	t8,472(s2)
    1424:	0c000000 	jal	0 <func_8091BB00>
    1428:	ae4801dc 	sw	t0,476(s2)
    142c:	86490158 	lh	t1,344(s2)
    1430:	24010001 	li	at,1
    1434:	264400b6 	addiu	a0,s2,182
    1438:	5521000a 	bnel	t1,at,1464 <L8091CD0C+0x258>
    143c:	4405e000 	mfc1	a1,$f28
    1440:	864a008a 	lh	t2,138(s2)
    1444:	865901ce 	lh	t9,462(s2)
    1448:	2406000a 	li	a2,10
    144c:	240701f4 	li	a3,500
    1450:	01592821 	addu	a1,t2,t9
    1454:	00052c00 	sll	a1,a1,0x10
    1458:	0c000000 	jal	0 <func_8091BB00>
    145c:	00052c03 	sra	a1,a1,0x10
    1460:	4405e000 	mfc1	a1,$f28
    1464:	3c073d23 	lui	a3,0x3d23
    1468:	34e7d70a 	ori	a3,a3,0xd70a
    146c:	264401a0 	addiu	a0,s2,416
    1470:	0c000000 	jal	0 <func_8091BB00>
    1474:	3c063f00 	lui	a2,0x3f00
    1478:	3c0c0000 	lui	t4,0x0
    147c:	8d8c0000 	lw	t4,0(t4)
    1480:	26440d64 	addiu	a0,s2,3428
    1484:	3c073b03 	lui	a3,0x3b03
    1488:	858d0f60 	lh	t5,3936(t4)
    148c:	51a0000f 	beqzl	t5,14cc <L8091CD0C+0x2c0>
    1490:	4405e000 	mfc1	a1,$f28
    1494:	4405e000 	mfc1	a1,$f28
    1498:	4406e000 	mfc1	a2,$f28
    149c:	3c073a83 	lui	a3,0x3a83
    14a0:	34e7126f 	ori	a3,a3,0x126f
    14a4:	0c000000 	jal	0 <func_8091BB00>
    14a8:	26440d64 	addiu	a0,s2,3428
    14ac:	4406e000 	mfc1	a2,$f28
    14b0:	26440d68 	addiu	a0,s2,3432
    14b4:	3c054370 	lui	a1,0x4370
    14b8:	0c000000 	jal	0 <func_8091BB00>
    14bc:	3c074040 	lui	a3,0x4040
    14c0:	1000000b 	b	14f0 <L8091CD0C+0x2e4>
    14c4:	86430158 	lh	v1,344(s2)
    14c8:	4405e000 	mfc1	a1,$f28
    14cc:	4406e000 	mfc1	a2,$f28
    14d0:	0c000000 	jal	0 <func_8091BB00>
    14d4:	34e7126f 	ori	a3,a3,0x126f
    14d8:	4406e000 	mfc1	a2,$f28
    14dc:	26440d68 	addiu	a0,s2,3432
    14e0:	3c0543c8 	lui	a1,0x43c8
    14e4:	0c000000 	jal	0 <func_8091BB00>
    14e8:	3c0740c0 	lui	a3,0x40c0
    14ec:	86430158 	lh	v1,344(s2)
    14f0:	5460001a 	bnezl	v1,155c <L8091CD0C+0x350>
    14f4:	864a017e 	lh	t2,382(s2)
    14f8:	864f017e 	lh	t7,382(s2)
    14fc:	8fab019c 	lw	t3,412(sp)
    1500:	55e00846 	bnezl	t7,361c <L8091F118+0x4>
    1504:	c6400050 	lwc1	$f0,80(s2)
    1508:	11600006 	beqz	t3,1524 <L8091CD0C+0x318>
    150c:	240e0001 	li	t6,1
    1510:	85620158 	lh	v0,344(t3)
    1514:	24010004 	li	at,4
    1518:	1041083f 	beq	v0,at,3618 <L8091F118>
    151c:	24010005 	li	at,5
    1520:	1041083d 	beq	v0,at,3618 <L8091F118>
    1524:	24180032 	li	t8,50
    1528:	a64e0158 	sh	t6,344(s2)
    152c:	0c000000 	jal	0 <func_8091BB00>
    1530:	a658017e 	sh	t8,382(s2)
    1534:	3c014580 	lui	at,0x4580
    1538:	44816000 	mtc1	at,$f12
    153c:	0c000000 	jal	0 <func_8091BB00>
    1540:	00000000 	nop
    1544:	4600028d 	trunc.w.s	$f10,$f0
    1548:	86430158 	lh	v1,344(s2)
    154c:	44095000 	mfc1	t1,$f10
    1550:	10000831 	b	3618 <L8091F118>
    1554:	a64901ce 	sh	t1,462(s2)
    1558:	864a017e 	lh	t2,382(s2)
    155c:	86420d14 	lh	v0,3348(s2)
    1560:	5540082e 	bnezl	t2,361c <L8091F118+0x4>
    1564:	c6400050 	lwc1	$f0,80(s2)
    1568:	0440082b 	bltz	v0,3618 <L8091F118>
    156c:	87b901b4 	lh	t9,436(sp)
    1570:	07210829 	bgez	t9,3618 <L8091F118>
    1574:	3c100000 	lui	s0,0x0
    1578:	240c0002 	li	t4,2
    157c:	26100000 	addiu	s0,s0,0
    1580:	a64c0158 	sh	t4,344(s2)
    1584:	8e0d0000 	lw	t5,0(s0)
    1588:	240f00af 	li	t7,175
    158c:	240b0037 	li	t3,55
    1590:	564d0005 	bnel	s2,t5,15a8 <L8091CD0C+0x39c>
    1594:	a64b017e 	sh	t3,382(s2)
    1598:	a64f017e 	sh	t7,382(s2)
    159c:	1000081e 	b	3618 <L8091F118>
    15a0:	86430158 	lh	v1,344(s2)
    15a4:	a64b017e 	sh	t3,382(s2)
    15a8:	1000081b 	b	3618 <L8091F118>
    15ac:	86430158 	lh	v1,344(s2)

000015b0 <L8091D0B0>:
    15b0:	8e4e0004 	lw	t6,4(s2)
    15b4:	3c010100 	lui	at,0x100
    15b8:	26441010 	addiu	a0,s2,4112
    15bc:	01c1c025 	or	t8,t6,at
    15c0:	ae580004 	sw	t8,4(s2)
    15c4:	0c000000 	jal	0 <func_8091BB00>
    15c8:	240530f1 	li	a1,12529
    15cc:	3c063dcc 	lui	a2,0x3dcc
    15d0:	3c073ecc 	lui	a3,0x3ecc
    15d4:	34e7cccd 	ori	a3,a3,0xcccd
    15d8:	34c6cccd 	ori	a2,a2,0xcccd
    15dc:	264401c8 	addiu	a0,s2,456
    15e0:	0c000000 	jal	0 <func_8091BB00>
    15e4:	3c05c0a0 	lui	a1,0xc0a0
    15e8:	3c0140a0 	lui	at,0x40a0
    15ec:	4481d000 	mtc1	at,$f26
    15f0:	3c010000 	lui	at,0x0
    15f4:	c4340000 	lwc1	$f20,0(at)
    15f8:	00008825 	move	s1,zero
    15fc:	2414000c 	li	s4,12
    1600:	24130006 	li	s3,6
    1604:	24090028 	li	t1,40
    1608:	01315023 	subu	t2,t1,s1
    160c:	448a8000 	mtc1	t2,$f16
    1610:	3c0141c8 	lui	at,0x41c8
    1614:	44812000 	mtc1	at,$f4
    1618:	468084a0 	cvt.s.w	$f18,$f16
    161c:	3c0142c8 	lui	at,0x42c8
    1620:	44814000 	mtc1	at,$f8
    1624:	02340019 	multu	s1,s4
    1628:	4407a000 	mfc1	a3,$f20
    162c:	3c063f00 	lui	a2,0x3f00
    1630:	46049182 	mul.s	$f6,$f18,$f4
    1634:	c65201a0 	lwc1	$f18,416(s2)
    1638:	46083283 	div.s	$f10,$f6,$f8
    163c:	00004012 	mflo	t0
    1640:	02482021 	addu	a0,s2,t0
    1644:	248406ac 	addiu	a0,a0,1708
    1648:	461a5400 	add.s	$f16,$f10,$f26
    164c:	46109102 	mul.s	$f4,$f18,$f16
    1650:	44052000 	mfc1	a1,$f4
    1654:	0c000000 	jal	0 <func_8091BB00>
    1658:	00000000 	nop
    165c:	c6460d64 	lwc1	$f6,3428(s2)
    1660:	02330019 	multu	s1,s3
    1664:	c6520d68 	lwc1	$f18,3432(s2)
    1668:	4606e203 	div.s	$f8,$f28,$f6
    166c:	00116040 	sll	t4,s1,0x1
    1670:	3c050000 	lui	a1,0x0
    1674:	00ac2821 	addu	a1,a1,t4
    1678:	4600940d 	trunc.w.s	$f16,$f18
    167c:	84a50000 	lh	a1,0(a1)
    1680:	44078000 	mfc1	a3,$f16
    1684:	0000c812 	mflo	t9
    1688:	00052a00 	sll	a1,a1,0x8
    168c:	00052c00 	sll	a1,a1,0x10
    1690:	02598021 	addu	s0,s2,t9
    1694:	00073c00 	sll	a3,a3,0x10
    1698:	00073c03 	sra	a3,a3,0x10
    169c:	26040c6c 	addiu	a0,s0,3180
    16a0:	00052c03 	sra	a1,a1,0x10
    16a4:	4600428d 	trunc.w.s	$f10,$f8
    16a8:	44065000 	mfc1	a2,$f10
    16ac:	00000000 	nop
    16b0:	00063400 	sll	a2,a2,0x10
    16b4:	0c000000 	jal	0 <func_8091BB00>
    16b8:	00063403 	sra	a2,a2,0x10
    16bc:	c6440d64 	lwc1	$f4,3428(s2)
    16c0:	c64a0d68 	lwc1	$f10,3432(s2)
    16c4:	26040c70 	addiu	a0,s0,3184
    16c8:	4604e183 	div.s	$f6,$f28,$f4
    16cc:	00002825 	move	a1,zero
    16d0:	4600548d 	trunc.w.s	$f18,$f10
    16d4:	44079000 	mfc1	a3,$f18
    16d8:	00000000 	nop
    16dc:	00073c00 	sll	a3,a3,0x10
    16e0:	00073c03 	sra	a3,a3,0x10
    16e4:	4600320d 	trunc.w.s	$f8,$f6
    16e8:	44064000 	mfc1	a2,$f8
    16ec:	00000000 	nop
    16f0:	00063400 	sll	a2,a2,0x10
    16f4:	0c000000 	jal	0 <func_8091BB00>
    16f8:	00063403 	sra	a2,a2,0x10
    16fc:	26310001 	addiu	s1,s1,1
    1700:	00118c00 	sll	s1,s1,0x10
    1704:	00118c03 	sra	s1,s1,0x10
    1708:	2a210029 	slti	at,s1,41
    170c:	5420ffbe 	bnezl	at,1608 <L8091D0B0+0x58>
    1710:	24090028 	li	t1,40
    1714:	8e480024 	lw	t0,36(s2)
    1718:	3c010000 	lui	at,0x0
    171c:	c4360000 	lwc1	$f22,0(at)
    1720:	ae4801d4 	sw	t0,468(s2)
    1724:	8e48002c 	lw	t0,44(s2)
    1728:	8e580028 	lw	t8,40(s2)
    172c:	4406e000 	mfc1	a2,$f28
    1730:	4407b000 	mfc1	a3,$f22
    1734:	26440d64 	addiu	a0,s2,3428
    1738:	3c053f00 	lui	a1,0x3f00
    173c:	ae4801dc 	sw	t0,476(s2)
    1740:	0c000000 	jal	0 <func_8091BB00>
    1744:	ae5801d8 	sw	t8,472(s2)
    1748:	4406e000 	mfc1	a2,$f28
    174c:	26440d68 	addiu	a0,s2,3432
    1750:	3c054320 	lui	a1,0x4320
    1754:	0c000000 	jal	0 <func_8091BB00>
    1758:	3c074248 	lui	a3,0x4248
    175c:	8649017e 	lh	t1,382(s2)
    1760:	51200005 	beqzl	t1,1778 <L8091D0B0+0x1c8>
    1764:	c6460e7c 	lwc1	$f6,3708(s2)
    1768:	924a01d2 	lbu	t2,466(s2)
    176c:	1140006e 	beqz	t2,1928 <L8091D0B0+0x378>
    1770:	00000000 	nop
    1774:	c6460e7c 	lwc1	$f6,3708(s2)
    1778:	c6a80028 	lwc1	$f8,40(s5)
    177c:	c6500e78 	lwc1	$f16,3704(s2)
    1780:	c6a40024 	lwc1	$f4,36(s5)
    1784:	46083081 	sub.s	$f2,$f6,$f8
    1788:	3c014248 	lui	at,0x4248
    178c:	c64a0e80 	lwc1	$f10,3712(s2)
    1790:	46048301 	sub.s	$f12,$f16,$f4
    1794:	44818000 	mtc1	at,$f16
    1798:	c6b2002c 	lwc1	$f18,44(s5)
    179c:	46001005 	abs.s	$f0,$f2
    17a0:	8fb9019c 	lw	t9,412(sp)
    17a4:	4610003c 	c.lt.s	$f0,$f16
    17a8:	240a001e 	li	t2,30
    17ac:	46125381 	sub.s	$f14,$f10,$f18
    17b0:	45020029 	bc1fl	1858 <L8091D0B0+0x2a8>
    17b4:	3c014396 	lui	at,0x4396
    17b8:	13200007 	beqz	t9,17d8 <L8091D0B0+0x228>
    17bc:	00000000 	nop
    17c0:	87220158 	lh	v0,344(t9)
    17c4:	24010004 	li	at,4
    17c8:	10410022 	beq	v0,at,1854 <L8091D0B0+0x2a4>
    17cc:	24010005 	li	at,5
    17d0:	50410021 	beql	v0,at,1858 <L8091D0B0+0x2a8>
    17d4:	3c014396 	lui	at,0x4396
    17d8:	460c6102 	mul.s	$f4,$f12,$f12
    17dc:	3c0142f0 	lui	at,0x42f0
    17e0:	44819000 	mtc1	at,$f18
    17e4:	46021182 	mul.s	$f6,$f2,$f2
    17e8:	3c010000 	lui	at,0x0
    17ec:	240c0003 	li	t4,3
    17f0:	460e7282 	mul.s	$f10,$f14,$f14
    17f4:	240d0028 	li	t5,40
    17f8:	46062200 	add.s	$f8,$f4,$f6
    17fc:	460a4000 	add.s	$f0,$f8,$f10
    1800:	46000004 	sqrt.s	$f0,$f0
    1804:	4612003c 	c.lt.s	$f0,$f18
    1808:	00000000 	nop
    180c:	45020012 	bc1fl	1858 <L8091D0B0+0x2a8>
    1810:	3c014396 	lui	at,0x4396
    1814:	864f00b6 	lh	t7,182(s2)
    1818:	864b008a 	lh	t3,138(s2)
    181c:	c4340000 	lwc1	$f20,0(at)
    1820:	a64c0158 	sh	t4,344(s2)
    1824:	01eb7023 	subu	t6,t7,t3
    1828:	000ec400 	sll	t8,t6,0x10
    182c:	00184403 	sra	t0,t8,0x10
    1830:	a64d017e 	sh	t5,382(s2)
    1834:	e65e0d68 	swc1	$f30,3432(s2)
    1838:	05000003 	bltz	t0,1848 <L8091D0B0+0x298>
    183c:	e6540d64 	swc1	$f20,3428(s2)
    1840:	10000039 	b	1928 <L8091D0B0+0x378>
    1844:	a6400176 	sh	zero,374(s2)
    1848:	24090001 	li	t1,1
    184c:	10000036 	b	1928 <L8091D0B0+0x378>
    1850:	a6490176 	sh	t1,374(s2)
    1854:	3c014396 	lui	at,0x4396
    1858:	44811000 	mtc1	at,$f2
    185c:	3c010000 	lui	at,0x0
    1860:	c4340000 	lwc1	$f20,0(at)
    1864:	a6400158 	sh	zero,344(s2)
    1868:	e65e0d68 	swc1	$f30,3432(s2)
    186c:	e65e0190 	swc1	$f30,400(s2)
    1870:	e65e019c 	swc1	$f30,412(s2)
    1874:	e65e018c 	swc1	$f30,396(s2)
    1878:	e65e0198 	swc1	$f30,408(s2)
    187c:	a64a017e 	sh	t2,382(s2)
    1880:	e6540d64 	swc1	$f20,3428(s2)
    1884:	c6b00024 	lwc1	$f16,36(s5)
    1888:	c6440024 	lwc1	$f4,36(s2)
    188c:	8fb901bc 	lw	t9,444(sp)
    1890:	240e0065 	li	t6,101
    1894:	46048001 	sub.s	$f0,$f16,$f4
    1898:	2418004b 	li	t8,75
    189c:	46000005 	abs.s	$f0,$f0
    18a0:	4600103c 	c.lt.s	$f2,$f0
    18a4:	00000000 	nop
    18a8:	4503001e 	bc1tl	1924 <L8091D0B0+0x374>
    18ac:	a64e0158 	sh	t6,344(s2)
    18b0:	8f2c07c0 	lw	t4,1984(t9)
    18b4:	c6a60028 	lwc1	$f6,40(s5)
    18b8:	8fab019c 	lw	t3,412(sp)
    18bc:	8d8d0028 	lw	t5,40(t4)
    18c0:	85af0002 	lh	t7,2(t5)
    18c4:	448f4000 	mtc1	t7,$f8
    18c8:	00000000 	nop
    18cc:	468042a0 	cvt.s.w	$f10,$f8
    18d0:	460a303c 	c.lt.s	$f6,$f10
    18d4:	00000000 	nop
    18d8:	45030012 	bc1tl	1924 <L8091D0B0+0x374>
    18dc:	a64e0158 	sh	t6,344(s2)
    18e0:	51600008 	beqzl	t3,1904 <L8091D0B0+0x354>
    18e4:	c6b2002c 	lwc1	$f18,44(s5)
    18e8:	85620158 	lh	v0,344(t3)
    18ec:	24010004 	li	at,4
    18f0:	1041000b 	beq	v0,at,1920 <L8091D0B0+0x370>
    18f4:	24010005 	li	at,5
    18f8:	5041000a 	beql	v0,at,1924 <L8091D0B0+0x374>
    18fc:	a64e0158 	sh	t6,344(s2)
    1900:	c6b2002c 	lwc1	$f18,44(s5)
    1904:	c650002c 	lwc1	$f16,44(s2)
    1908:	46109001 	sub.s	$f0,$f18,$f16
    190c:	46000005 	abs.s	$f0,$f0
    1910:	4600103c 	c.lt.s	$f2,$f0
    1914:	00000000 	nop
    1918:	45000003 	bc1f	1928 <L8091D0B0+0x378>
    191c:	00000000 	nop
    1920:	a64e0158 	sh	t6,344(s2)
    1924:	a658017e 	sh	t8,382(s2)
    1928:	1000073b 	b	3618 <L8091F118>
    192c:	86430158 	lh	v1,344(s2)

00001930 <L8091D430>:
    1930:	3c063dcc 	lui	a2,0x3dcc
    1934:	3c073ecc 	lui	a3,0x3ecc
    1938:	34e7cccd 	ori	a3,a3,0xcccd
    193c:	34c6cccd 	ori	a2,a2,0xcccd
    1940:	264401c8 	addiu	a0,s2,456
    1944:	0c000000 	jal	0 <func_8091BB00>
    1948:	3c05c0a0 	lui	a1,0xc0a0
    194c:	8648017e 	lh	t0,382(s2)
    1950:	2401007d 	li	at,125
    1954:	00008825 	move	s1,zero
    1958:	15010005 	bne	t0,at,1970 <L8091D430+0x40>
    195c:	24130006 	li	s3,6
    1960:	3c010000 	lui	at,0x0
    1964:	c4340000 	lwc1	$f20,0(at)
    1968:	e65e0d68 	swc1	$f30,3432(s2)
    196c:	e6540d64 	swc1	$f20,3428(s2)
    1970:	3c010000 	lui	at,0x0
    1974:	3c100000 	lui	s0,0x0
    1978:	c4340000 	lwc1	$f20,0(at)
    197c:	26100000 	addiu	s0,s0,0
    1980:	8649017e 	lh	t1,382(s2)
    1984:	2921001a 	slti	at,t1,26
    1988:	54200038 	bnezl	at,1a6c <L8091D430+0x13c>
    198c:	86590176 	lh	t9,374(s2)
    1990:	864a0176 	lh	t2,374(s2)
    1994:	5540001b 	bnezl	t2,1a04 <L8091D430+0xd4>
    1998:	c6500d64 	lwc1	$f16,3428(s2)
    199c:	c6440d64 	lwc1	$f4,3428(s2)
    19a0:	02330019 	multu	s1,s3
    19a4:	c64a0d68 	lwc1	$f10,3432(s2)
    19a8:	4604e203 	div.s	$f8,$f28,$f4
    19ac:	00116040 	sll	t4,s1,0x1
    19b0:	020c6821 	addu	t5,s0,t4
    19b4:	85a50000 	lh	a1,0(t5)
    19b8:	4600548d 	trunc.w.s	$f18,$f10
    19bc:	00052a00 	sll	a1,a1,0x8
    19c0:	00052c00 	sll	a1,a1,0x10
    19c4:	44079000 	mfc1	a3,$f18
    19c8:	0000c812 	mflo	t9
    19cc:	02592021 	addu	a0,s2,t9
    19d0:	00073c00 	sll	a3,a3,0x10
    19d4:	00073c03 	sra	a3,a3,0x10
    19d8:	24840c70 	addiu	a0,a0,3184
    19dc:	00052c03 	sra	a1,a1,0x10
    19e0:	4600418d 	trunc.w.s	$f6,$f8
    19e4:	44063000 	mfc1	a2,$f6
    19e8:	00000000 	nop
    19ec:	00063400 	sll	a2,a2,0x10
    19f0:	0c000000 	jal	0 <func_8091BB00>
    19f4:	00063403 	sra	a2,a2,0x10
    19f8:	10000052 	b	1b44 <L8091D430+0x214>
    19fc:	26310001 	addiu	s1,s1,1
    1a00:	c6500d64 	lwc1	$f16,3428(s2)
    1a04:	02330019 	multu	s1,s3
    1a08:	c6460d68 	lwc1	$f6,3432(s2)
    1a0c:	4610e103 	div.s	$f4,$f28,$f16
    1a10:	0011c040 	sll	t8,s1,0x1
    1a14:	02184021 	addu	t0,s0,t8
    1a18:	85050000 	lh	a1,0(t0)
    1a1c:	4600328d 	trunc.w.s	$f10,$f6
    1a20:	00050823 	negu	at,a1
    1a24:	00202825 	move	a1,at
    1a28:	44075000 	mfc1	a3,$f10
    1a2c:	00007012 	mflo	t6
    1a30:	024e2021 	addu	a0,s2,t6
    1a34:	00052e00 	sll	a1,a1,0x18
    1a38:	00073c00 	sll	a3,a3,0x10
    1a3c:	00073c03 	sra	a3,a3,0x10
    1a40:	00052c03 	sra	a1,a1,0x10
    1a44:	24840c70 	addiu	a0,a0,3184
    1a48:	4600220d 	trunc.w.s	$f8,$f4
    1a4c:	44064000 	mfc1	a2,$f8
    1a50:	00000000 	nop
    1a54:	00063400 	sll	a2,a2,0x10
    1a58:	0c000000 	jal	0 <func_8091BB00>
    1a5c:	00063403 	sra	a2,a2,0x10
    1a60:	10000038 	b	1b44 <L8091D430+0x214>
    1a64:	26310001 	addiu	s1,s1,1
    1a68:	86590176 	lh	t9,374(s2)
    1a6c:	5720001c 	bnezl	t9,1ae0 <L8091D430+0x1b0>
    1a70:	c64a0d64 	lwc1	$f10,3428(s2)
    1a74:	c6520d64 	lwc1	$f18,3428(s2)
    1a78:	02330019 	multu	s1,s3
    1a7c:	c6480d68 	lwc1	$f8,3432(s2)
    1a80:	4612e403 	div.s	$f16,$f28,$f18
    1a84:	00116840 	sll	t5,s1,0x1
    1a88:	3c050000 	lui	a1,0x0
    1a8c:	00ad2821 	addu	a1,a1,t5
    1a90:	4600418d 	trunc.w.s	$f6,$f8
    1a94:	84a50000 	lh	a1,0(a1)
    1a98:	44073000 	mfc1	a3,$f6
    1a9c:	00006012 	mflo	t4
    1aa0:	00052a00 	sll	a1,a1,0x8
    1aa4:	00052c00 	sll	a1,a1,0x10
    1aa8:	024c2021 	addu	a0,s2,t4
    1aac:	00073c00 	sll	a3,a3,0x10
    1ab0:	00073c03 	sra	a3,a3,0x10
    1ab4:	24840c70 	addiu	a0,a0,3184
    1ab8:	00052c03 	sra	a1,a1,0x10
    1abc:	4600810d 	trunc.w.s	$f4,$f16
    1ac0:	44062000 	mfc1	a2,$f4
    1ac4:	00000000 	nop
    1ac8:	00063400 	sll	a2,a2,0x10
    1acc:	0c000000 	jal	0 <func_8091BB00>
    1ad0:	00063403 	sra	a2,a2,0x10
    1ad4:	1000001b 	b	1b44 <L8091D430+0x214>
    1ad8:	26310001 	addiu	s1,s1,1
    1adc:	c64a0d64 	lwc1	$f10,3428(s2)
    1ae0:	02330019 	multu	s1,s3
    1ae4:	c6440d68 	lwc1	$f4,3432(s2)
    1ae8:	460ae483 	div.s	$f18,$f28,$f10
    1aec:	0011c040 	sll	t8,s1,0x1
    1af0:	3c050000 	lui	a1,0x0
    1af4:	00b82821 	addu	a1,a1,t8
    1af8:	4600220d 	trunc.w.s	$f8,$f4
    1afc:	84a50000 	lh	a1,0(a1)
    1b00:	44074000 	mfc1	a3,$f8
    1b04:	00050823 	negu	at,a1
    1b08:	00202825 	move	a1,at
    1b0c:	00007012 	mflo	t6
    1b10:	024e2021 	addu	a0,s2,t6
    1b14:	00052e00 	sll	a1,a1,0x18
    1b18:	00073c00 	sll	a3,a3,0x10
    1b1c:	00073c03 	sra	a3,a3,0x10
    1b20:	00052c03 	sra	a1,a1,0x10
    1b24:	24840c70 	addiu	a0,a0,3184
    1b28:	4600940d 	trunc.w.s	$f16,$f18
    1b2c:	44068000 	mfc1	a2,$f16
    1b30:	00000000 	nop
    1b34:	00063400 	sll	a2,a2,0x10
    1b38:	0c000000 	jal	0 <func_8091BB00>
    1b3c:	00063403 	sra	a2,a2,0x10
    1b40:	26310001 	addiu	s1,s1,1
    1b44:	00118c00 	sll	s1,s1,0x10
    1b48:	00118c03 	sra	s1,s1,0x10
    1b4c:	2a210029 	slti	at,s1,41
    1b50:	5420ff8c 	bnezl	at,1984 <L8091D430+0x54>
    1b54:	8649017e 	lh	t1,382(s2)
    1b58:	3c053dcc 	lui	a1,0x3dcc
    1b5c:	4406e000 	mfc1	a2,$f28
    1b60:	3c073c23 	lui	a3,0x3c23
    1b64:	34e7d70a 	ori	a3,a3,0xd70a
    1b68:	34a5cccd 	ori	a1,a1,0xcccd
    1b6c:	0c000000 	jal	0 <func_8091BB00>
    1b70:	26440d64 	addiu	a0,s2,3428
    1b74:	4406e000 	mfc1	a2,$f28
    1b78:	26440d68 	addiu	a0,s2,3432
    1b7c:	3c054470 	lui	a1,0x4470
    1b80:	0c000000 	jal	0 <func_8091BB00>
    1b84:	3c0741f0 	lui	a3,0x41f0
    1b88:	864a017e 	lh	t2,382(s2)
    1b8c:	264400b6 	addiu	a0,s2,182
    1b90:	24060005 	li	a2,5
    1b94:	2941001e 	slti	at,t2,30
    1b98:	14200003 	bnez	at,1ba8 <L8091D430+0x278>
    1b9c:	240700c8 	li	a3,200
    1ba0:	0c000000 	jal	0 <func_8091BB00>
    1ba4:	8645008a 	lh	a1,138(s2)
    1ba8:	86590158 	lh	t9,344(s2)
    1bac:	24010003 	li	at,3
    1bb0:	5721003a 	bnel	t9,at,1c9c <L8091D430+0x36c>
    1bb4:	86490158 	lh	t1,344(s2)
    1bb8:	8642017e 	lh	v0,382(s2)
    1bbc:	28410005 	slti	at,v0,5
    1bc0:	5420002b 	bnezl	at,1c70 <L8091D430+0x340>
    1bc4:	24010004 	li	at,4
    1bc8:	924c01d2 	lbu	t4,466(s2)
    1bcc:	51800028 	beqzl	t4,1c70 <L8091D430+0x340>
    1bd0:	24010004 	li	at,4
    1bd4:	8ead0118 	lw	t5,280(s5)
    1bd8:	8fa401bc 	lw	a0,444(sp)
    1bdc:	3c190001 	lui	t9,0x1
    1be0:	15a00022 	bnez	t5,1c6c <L8091D430+0x33c>
    1be4:	0324c821 	addu	t9,t9,a0
    1be8:	8f391d4c 	lw	t9,7500(t9)
    1bec:	02a02825 	move	a1,s5
    1bf0:	0320f809 	jalr	t9
    1bf4:	00000000 	nop
    1bf8:	10400013 	beqz	v0,1c48 <L8091D430+0x318>
    1bfc:	2418001e 	li	t8,30
    1c00:	aeb20118 	sw	s2,280(s5)
    1c04:	240b0004 	li	t3,4
    1c08:	a64b0158 	sh	t3,344(s2)
    1c0c:	26441010 	addiu	a0,s2,4112
    1c10:	0c000000 	jal	0 <func_8091BB00>
    1c14:	240538f3 	li	a1,14579
    1c18:	3c070000 	lui	a3,0x0
    1c1c:	3c0e0000 	lui	t6,0x0
    1c20:	24e70000 	addiu	a3,a3,0
    1c24:	25ce0000 	addiu	t6,t6,0
    1c28:	afae0014 	sw	t6,20(sp)
    1c2c:	afa70010 	sw	a3,16(sp)
    1c30:	24046805 	li	a0,26629
    1c34:	26a500e4 	addiu	a1,s5,228
    1c38:	0c000000 	jal	0 <func_8091BB00>
    1c3c:	24060004 	li	a2,4
    1c40:	1000000a 	b	1c6c <L8091D430+0x33c>
    1c44:	8642017e 	lh	v0,382(s2)
    1c48:	a658017e 	sh	t8,382(s2)
    1c4c:	a6400158 	sh	zero,344(s2)
    1c50:	e6540d64 	swc1	$f20,3428(s2)
    1c54:	e65e0d68 	swc1	$f30,3432(s2)
    1c58:	e65e0198 	swc1	$f30,408(s2)
    1c5c:	e65e018c 	swc1	$f30,396(s2)
    1c60:	e65e019c 	swc1	$f30,412(s2)
    1c64:	e65e0190 	swc1	$f30,400(s2)
    1c68:	8642017e 	lh	v0,382(s2)
    1c6c:	24010004 	li	at,4
    1c70:	14410009 	bne	v0,at,1c98 <L8091D430+0x368>
    1c74:	2408001e 	li	t0,30
    1c78:	a6400158 	sh	zero,344(s2)
    1c7c:	e6540d64 	swc1	$f20,3428(s2)
    1c80:	e65e0d68 	swc1	$f30,3432(s2)
    1c84:	e65e0198 	swc1	$f30,408(s2)
    1c88:	e65e018c 	swc1	$f30,396(s2)
    1c8c:	e65e019c 	swc1	$f30,412(s2)
    1c90:	e65e0190 	swc1	$f30,400(s2)
    1c94:	a648017e 	sh	t0,382(s2)
    1c98:	86490158 	lh	t1,344(s2)
    1c9c:	24010004 	li	at,4
    1ca0:	240a000a 	li	t2,10
    1ca4:	1521005a 	bne	t1,at,1e10 <L8091D430+0x4e0>
    1ca8:	26a40024 	addiu	a0,s5,36
    1cac:	a6aa0850 	sh	t2,2128(s5)
    1cb0:	e6be0060 	swc1	$f30,96(s5)
    1cb4:	e6be0068 	swc1	$f30,104(s5)
    1cb8:	8e4501e4 	lw	a1,484(s2)
    1cbc:	3c063f00 	lui	a2,0x3f00
    1cc0:	0c000000 	jal	0 <func_8091BB00>
    1cc4:	3c0741a0 	lui	a3,0x41a0
    1cc8:	26a40028 	addiu	a0,s5,40
    1ccc:	8e4501e8 	lw	a1,488(s2)
    1cd0:	3c063f00 	lui	a2,0x3f00
    1cd4:	0c000000 	jal	0 <func_8091BB00>
    1cd8:	3c0741a0 	lui	a3,0x41a0
    1cdc:	26a4002c 	addiu	a0,s5,44
    1ce0:	8e4501ec 	lw	a1,492(s2)
    1ce4:	3c063f00 	lui	a2,0x3f00
    1ce8:	0c000000 	jal	0 <func_8091BB00>
    1cec:	3c0741a0 	lui	a3,0x41a0
    1cf0:	26a400b4 	addiu	a0,s5,180
    1cf4:	864501f0 	lh	a1,496(s2)
    1cf8:	24060002 	li	a2,2
    1cfc:	0c000000 	jal	0 <func_8091BB00>
    1d00:	240707d0 	li	a3,2000
    1d04:	26a400b6 	addiu	a0,s5,182
    1d08:	864501f2 	lh	a1,498(s2)
    1d0c:	24060002 	li	a2,2
    1d10:	0c000000 	jal	0 <func_8091BB00>
    1d14:	240707d0 	li	a3,2000
    1d18:	26a400b8 	addiu	a0,s5,184
    1d1c:	864501f4 	lh	a1,500(s2)
    1d20:	24060002 	li	a2,2
    1d24:	0c000000 	jal	0 <func_8091BB00>
    1d28:	240707d0 	li	a3,2000
    1d2c:	864c017e 	lh	t4,382(s2)
    1d30:	8fa401bc 	lw	a0,444(sp)
    1d34:	15800036 	bnez	t4,1e10 <L8091D430+0x4e0>
    1d38:	00000000 	nop
    1d3c:	0c000000 	jal	0 <func_8091BB00>
    1d40:	00002825 	move	a1,zero
    1d44:	240d0005 	li	t5,5
    1d48:	240f0096 	li	t7,150
    1d4c:	2419001e 	li	t9,30
    1d50:	00408025 	move	s0,v0
    1d54:	a64d0158 	sh	t5,344(s2)
    1d58:	e6540d64 	swc1	$f20,3428(s2)
    1d5c:	e65e0d68 	swc1	$f30,3432(s2)
    1d60:	e65e0198 	swc1	$f30,408(s2)
    1d64:	e65e018c 	swc1	$f30,396(s2)
    1d68:	e65e019c 	swc1	$f30,412(s2)
    1d6c:	e65e0190 	swc1	$f30,400(s2)
    1d70:	a64f017e 	sh	t7,382(s2)
    1d74:	a6400178 	sh	zero,376(s2)
    1d78:	0c000000 	jal	0 <func_8091BB00>
    1d7c:	a659017c 	sh	t9,380(s2)
    1d80:	8fa401bc 	lw	a0,444(sp)
    1d84:	0c000000 	jal	0 <func_8091BB00>
    1d88:	24851d64 	addiu	a1,a0,7524
    1d8c:	0c000000 	jal	0 <func_8091BB00>
    1d90:	8fa401bc 	lw	a0,444(sp)
    1d94:	a6420f62 	sh	v0,3938(s2)
    1d98:	8fa401bc 	lw	a0,444(sp)
    1d9c:	00002825 	move	a1,zero
    1da0:	0c000000 	jal	0 <func_8091BB00>
    1da4:	24060001 	li	a2,1
    1da8:	8fa401bc 	lw	a0,444(sp)
    1dac:	86450f62 	lh	a1,3938(s2)
    1db0:	0c000000 	jal	0 <func_8091BB00>
    1db4:	24060007 	li	a2,7
    1db8:	8e18005c 	lw	t8,92(s0)
    1dbc:	c64a0024 	lwc1	$f10,36(s2)
    1dc0:	c650002c 	lwc1	$f16,44(s2)
    1dc4:	ae580f68 	sw	t8,3944(s2)
    1dc8:	8e0e0060 	lw	t6,96(s0)
    1dcc:	c6460f68 	lwc1	$f6,3944(s2)
    1dd0:	ae4e0f6c 	sw	t6,3948(s2)
    1dd4:	8e180064 	lw	t8,100(s0)
    1dd8:	460a3301 	sub.s	$f12,$f6,$f10
    1ddc:	ae580f70 	sw	t8,3952(s2)
    1de0:	8e090050 	lw	t1,80(s0)
    1de4:	c6520f70 	lwc1	$f18,3952(s2)
    1de8:	ae490f74 	sw	t1,3956(s2)
    1dec:	8e080054 	lw	t0,84(s0)
    1df0:	46109381 	sub.s	$f14,$f18,$f16
    1df4:	ae480f78 	sw	t0,3960(s2)
    1df8:	8e090058 	lw	t1,88(s0)
    1dfc:	0c000000 	jal	0 <func_8091BB00>
    1e00:	ae490f7c 	sw	t1,3964(s2)
    1e04:	e6401004 	swc1	$f0,4100(s2)
    1e08:	10000003 	b	1e18 <L8091D918>
    1e0c:	e65e1008 	swc1	$f30,4104(s2)
    1e10:	10000601 	b	3618 <L8091F118>
    1e14:	86430158 	lh	v1,344(s2)

00001e18 <L8091D918>:
    1e18:	8642017e 	lh	v0,382(s2)
    1e1c:	264a0d64 	addiu	t2,s2,3428
    1e20:	264c0d68 	addiu	t4,s2,3432
    1e24:	2401008a 	li	at,138
    1e28:	24130006 	li	s3,6
    1e2c:	afac0084 	sw	t4,132(sp)
    1e30:	afaa0088 	sw	t2,136(sp)
    1e34:	14410006 	bne	v0,at,1e50 <L8091D918+0x38>
    1e38:	265001c8 	addiu	s0,s2,456
    1e3c:	0c000000 	jal	0 <func_8091BB00>
    1e40:	00002025 	move	a0,zero
    1e44:	0c000000 	jal	0 <func_8091BB00>
    1e48:	2404000b 	li	a0,11
    1e4c:	8642017e 	lh	v0,382(s2)
    1e50:	304d0007 	andi	t5,v0,0x7
    1e54:	15a00007 	bnez	t5,1e74 <L8091D918+0x5c>
    1e58:	8fa401bc 	lw	a0,444(sp)
    1e5c:	3c190001 	lui	t9,0x1
    1e60:	0324c821 	addu	t9,t9,a0
    1e64:	8f391d58 	lw	t9,7512(t9)
    1e68:	2405ffff 	li	a1,-1
    1e6c:	0320f809 	jalr	t9
    1e70:	00000000 	nop
    1e74:	3c063dcc 	lui	a2,0x3dcc
    1e78:	3c073ecc 	lui	a3,0x3ecc
    1e7c:	34e7cccd 	ori	a3,a3,0xcccd
    1e80:	34c6cccd 	ori	a2,a2,0xcccd
    1e84:	02002025 	move	a0,s0
    1e88:	0c000000 	jal	0 <func_8091BB00>
    1e8c:	3c05c0a0 	lui	a1,0xc0a0
    1e90:	864b0cc6 	lh	t3,3270(s2)
    1e94:	8fae01bc 	lw	t6,444(sp)
    1e98:	3c01ffff 	lui	at,0xffff
    1e9c:	a7ab01b4 	sh	t3,436(sp)
    1ea0:	95c20020 	lhu	v0,32(t6)
    1ea4:	34217fff 	ori	at,at,0x7fff
    1ea8:	00008825 	move	s1,zero
    1eac:	0041c027 	nor	t8,v0,at
    1eb0:	13000004 	beqz	t8,1ec4 <L8091D918+0xac>
    1eb4:	2401bfff 	li	at,-16385
    1eb8:	00414027 	nor	t0,v0,at
    1ebc:	55000005 	bnezl	t0,1ed4 <L8091D918+0xbc>
    1ec0:	3c0140a0 	lui	at,0x40a0
    1ec4:	86490178 	lh	t1,376(s2)
    1ec8:	252a0001 	addiu	t2,t1,1
    1ecc:	a64a0178 	sh	t2,376(s2)
    1ed0:	3c0140a0 	lui	at,0x40a0
    1ed4:	4481d000 	mtc1	at,$f26
    1ed8:	2414000c 	li	s4,12
    1edc:	2a210014 	slti	at,s1,20
    1ee0:	50200067 	beqzl	at,2080 <L8091D918+0x268>
    1ee4:	26310001 	addiu	s1,s1,1
    1ee8:	c6440188 	lwc1	$f4,392(s2)
    1eec:	864e016e 	lh	t6,366(s2)
    1ef0:	4600220d 	trunc.w.s	$f8,$f4
    1ef4:	440d4000 	mfc1	t5,$f8
    1ef8:	00000000 	nop
    1efc:	000d7c00 	sll	t7,t5,0x10
    1f00:	000fcc03 	sra	t9,t7,0x10
    1f04:	03310019 	multu	t9,s1
    1f08:	00005812 	mflo	t3
    1f0c:	016e2021 	addu	a0,t3,t6
    1f10:	00042400 	sll	a0,a0,0x10
    1f14:	0c000000 	jal	0 <func_8091BB00>
    1f18:	00042403 	sra	a0,a0,0x10
    1f1c:	44913000 	mtc1	s1,$f6
    1f20:	c6480194 	lwc1	$f8,404(s2)
    1f24:	3c010000 	lui	at,0x0
    1f28:	468032a0 	cvt.s.w	$f10,$f6
    1f2c:	c4320000 	lwc1	$f18,0(at)
    1f30:	864d0170 	lh	t5,368(s2)
    1f34:	c650018c 	lwc1	$f16,396(s2)
    1f38:	4600418d 	trunc.w.s	$f6,$f8
    1f3c:	46125502 	mul.s	$f20,$f10,$f18
    1f40:	44083000 	mfc1	t0,$f6
    1f44:	00000000 	nop
    1f48:	00084c00 	sll	t1,t0,0x10
    1f4c:	00095403 	sra	t2,t1,0x10
    1f50:	01510019 	multu	t2,s1
    1f54:	4600a102 	mul.s	$f4,$f20,$f0
    1f58:	00000000 	nop
    1f5c:	46048582 	mul.s	$f22,$f16,$f4
    1f60:	00006012 	mflo	t4
    1f64:	018d2021 	addu	a0,t4,t5
    1f68:	00042400 	sll	a0,a0,0x10
    1f6c:	0c000000 	jal	0 <func_8091BB00>
    1f70:	00042403 	sra	a0,a0,0x10
    1f74:	24190028 	li	t9,40
    1f78:	4600a482 	mul.s	$f18,$f20,$f0
    1f7c:	03315823 	subu	t3,t9,s1
    1f80:	448b8000 	mtc1	t3,$f16
    1f84:	c64a0198 	lwc1	$f10,408(s2)
    1f88:	3c0141c8 	lui	at,0x41c8
    1f8c:	44814000 	mtc1	at,$f8
    1f90:	46808120 	cvt.s.w	$f4,$f16
    1f94:	46125602 	mul.s	$f24,$f10,$f18
    1f98:	3c0142c8 	lui	at,0x42c8
    1f9c:	44815000 	mtc1	at,$f10
    1fa0:	02340019 	multu	s1,s4
    1fa4:	3c063dcc 	lui	a2,0x3dcc
    1fa8:	46082182 	mul.s	$f6,$f4,$f8
    1fac:	c64401a0 	lwc1	$f4,416(s2)
    1fb0:	34c6cccd 	ori	a2,a2,0xcccd
    1fb4:	00c03821 	move	a3,a2
    1fb8:	460a3483 	div.s	$f18,$f6,$f10
    1fbc:	00007812 	mflo	t7
    1fc0:	024f2021 	addu	a0,s2,t7
    1fc4:	248406ac 	addiu	a0,a0,1708
    1fc8:	461a9400 	add.s	$f16,$f18,$f26
    1fcc:	46102202 	mul.s	$f8,$f4,$f16
    1fd0:	44054000 	mfc1	a1,$f8
    1fd4:	0c000000 	jal	0 <func_8091BB00>
    1fd8:	00000000 	nop
    1fdc:	c64a0d64 	lwc1	$f10,3428(s2)
    1fe0:	02330019 	multu	s1,s3
    1fe4:	c6500d68 	lwc1	$f16,3432(s2)
    1fe8:	460ae483 	div.s	$f18,$f28,$f10
    1fec:	4600b18d 	trunc.w.s	$f6,$f22
    1ff0:	4600820d 	trunc.w.s	$f8,$f16
    1ff4:	44053000 	mfc1	a1,$f6
    1ff8:	00007012 	mflo	t6
    1ffc:	024e8021 	addu	s0,s2,t6
    2000:	44074000 	mfc1	a3,$f8
    2004:	00052c00 	sll	a1,a1,0x10
    2008:	00052c03 	sra	a1,a1,0x10
    200c:	00073c00 	sll	a3,a3,0x10
    2010:	00073c03 	sra	a3,a3,0x10
    2014:	26040c6c 	addiu	a0,s0,3180
    2018:	4600910d 	trunc.w.s	$f4,$f18
    201c:	44062000 	mfc1	a2,$f4
    2020:	00000000 	nop
    2024:	00063400 	sll	a2,a2,0x10
    2028:	0c000000 	jal	0 <func_8091BB00>
    202c:	00063403 	sra	a2,a2,0x10
    2030:	c64a0d64 	lwc1	$f10,3428(s2)
    2034:	c6500d68 	lwc1	$f16,3432(s2)
    2038:	4600c18d 	trunc.w.s	$f6,$f24
    203c:	26040c70 	addiu	a0,s0,3184
    2040:	460ae483 	div.s	$f18,$f28,$f10
    2044:	44053000 	mfc1	a1,$f6
    2048:	4600820d 	trunc.w.s	$f8,$f16
    204c:	00052c00 	sll	a1,a1,0x10
    2050:	00052c03 	sra	a1,a1,0x10
    2054:	44074000 	mfc1	a3,$f8
    2058:	00000000 	nop
    205c:	00073c00 	sll	a3,a3,0x10
    2060:	00073c03 	sra	a3,a3,0x10
    2064:	4600910d 	trunc.w.s	$f4,$f18
    2068:	44062000 	mfc1	a2,$f4
    206c:	00000000 	nop
    2070:	00063400 	sll	a2,a2,0x10
    2074:	0c000000 	jal	0 <func_8091BB00>
    2078:	00063403 	sra	a2,a2,0x10
    207c:	26310001 	addiu	s1,s1,1
    2080:	00118c00 	sll	s1,s1,0x10
    2084:	00118c03 	sra	s1,s1,0x10
    2088:	2a210029 	slti	at,s1,41
    208c:	5420ff94 	bnezl	at,1ee0 <L8091D918+0xc8>
    2090:	2a210014 	slti	at,s1,20
    2094:	240f000a 	li	t7,10
    2098:	a6af0850 	sh	t7,2128(s5)
    209c:	c64601e4 	lwc1	$f6,484(s2)
    20a0:	3c010000 	lui	at,0x0
    20a4:	4405e000 	mfc1	a1,$f28
    20a8:	e6a60024 	swc1	$f6,36(s5)
    20ac:	c64a01e8 	lwc1	$f10,488(s2)
    20b0:	264401a0 	addiu	a0,s2,416
    20b4:	3c063f00 	lui	a2,0x3f00
    20b8:	e6aa0028 	swc1	$f10,40(s5)
    20bc:	c65201ec 	lwc1	$f18,492(s2)
    20c0:	e6b2002c 	swc1	$f18,44(s5)
    20c4:	864201f0 	lh	v0,496(s2)
    20c8:	a6a200b4 	sh	v0,180(s5)
    20cc:	a6a20030 	sh	v0,48(s5)
    20d0:	864201f2 	lh	v0,498(s2)
    20d4:	a6a200b6 	sh	v0,182(s5)
    20d8:	a6a20032 	sh	v0,50(s5)
    20dc:	864201f4 	lh	v0,500(s2)
    20e0:	a6a200b8 	sh	v0,184(s5)
    20e4:	c4360000 	lwc1	$f22,0(at)
    20e8:	e6be0060 	swc1	$f30,96(s5)
    20ec:	e6be0068 	swc1	$f30,104(s5)
    20f0:	4407b000 	mfc1	a3,$f22
    20f4:	0c000000 	jal	0 <func_8091BB00>
    20f8:	a6a20034 	sh	v0,52(s5)
    20fc:	4406e000 	mfc1	a2,$f28
    2100:	3c073ba3 	lui	a3,0x3ba3
    2104:	34e7d70a 	ori	a3,a3,0xd70a
    2108:	8fa40088 	lw	a0,136(sp)
    210c:	0c000000 	jal	0 <func_8091BB00>
    2110:	3c053f00 	lui	a1,0x3f00
    2114:	4406e000 	mfc1	a2,$f28
    2118:	8fa40084 	lw	a0,132(sp)
    211c:	3c0543f0 	lui	a1,0x43f0
    2120:	0c000000 	jal	0 <func_8091BB00>
    2124:	3c074120 	lui	a3,0x4120
    2128:	3c010000 	lui	at,0x0
    212c:	c4340000 	lwc1	$f20,0(at)
    2130:	3c010000 	lui	at,0x0
    2134:	c4380000 	lwc1	$f24,0(at)
    2138:	4405a000 	mfc1	a1,$f20
    213c:	26440d6c 	addiu	a0,s2,3436
    2140:	4407c000 	mfc1	a3,$f24
    2144:	0c000000 	jal	0 <func_8091BB00>
    2148:	3c063f00 	lui	a2,0x3f00
    214c:	86590178 	lh	t9,376(s2)
    2150:	2b210028 	slti	at,t9,40
    2154:	50200005 	beqzl	at,216c <L8091D918+0x354>
    2158:	86420cc6 	lh	v0,3270(s2)
    215c:	864b017e 	lh	t3,382(s2)
    2160:	55600023 	bnezl	t3,21f0 <L8091D918+0x3d8>
    2164:	864f0f62 	lh	t7,3938(s2)
    2168:	86420cc6 	lh	v0,3270(s2)
    216c:	87ae01b4 	lh	t6,436(sp)
    2170:	0443001f 	bgezl	v0,21f0 <L8091D918+0x3d8>
    2174:	864f0f62 	lh	t7,3938(s2)
    2178:	05c0001c 	bltz	t6,21ec <L8091D918+0x3d4>
    217c:	24180065 	li	t8,101
    2180:	24080032 	li	t0,50
    2184:	a6580158 	sh	t8,344(s2)
    2188:	a6480160 	sh	t0,352(s2)
    218c:	8ea90118 	lw	t1,280(s5)
    2190:	240a0065 	li	t2,101
    2194:	56490014 	bnel	s2,t1,21e8 <L8091D918+0x3d0>
    2198:	240d004b 	li	t5,75
    219c:	a6aa0850 	sh	t2,2128(s5)
    21a0:	aea00118 	sw	zero,280(s5)
    21a4:	a2a00444 	sb	zero,1092(s5)
    21a8:	864c017e 	lh	t4,382(s2)
    21ac:	8fa401bc 	lw	a0,444(sp)
    21b0:	02402825 	move	a1,s2
    21b4:	1580000b 	bnez	t4,21e4 <L8091D918+0x3cc>
    21b8:	3c0641a0 	lui	a2,0x41a0
    21bc:	864700b6 	lh	a3,182(s2)
    21c0:	34018000 	li	at,0x8000
    21c4:	afa00014 	sw	zero,20(sp)
    21c8:	00e13821 	addu	a3,a3,at
    21cc:	3c014120 	lui	at,0x4120
    21d0:	44812000 	mtc1	at,$f4
    21d4:	00073c00 	sll	a3,a3,0x10
    21d8:	00073c03 	sra	a3,a3,0x10
    21dc:	0c000000 	jal	0 <func_8091BB00>
    21e0:	e7a40010 	swc1	$f4,16(sp)
    21e4:	240d004b 	li	t5,75
    21e8:	a64d017e 	sh	t5,382(s2)
    21ec:	864f0f62 	lh	t7,3938(s2)
    21f0:	3c0142c8 	lui	at,0x42c8
    21f4:	26441008 	addiu	a0,s2,4104
    21f8:	11e00049 	beqz	t7,2320 <L8091D918+0x508>
    21fc:	3c073b03 	lui	a3,0x3b03
    2200:	44818000 	mtc1	at,$f16
    2204:	3c014348 	lui	at,0x4348
    2208:	44814000 	mtc1	at,$f8
    220c:	e7be0138 	swc1	$f30,312(sp)
    2210:	e7b0013c 	swc1	$f16,316(sp)
    2214:	e7a80140 	swc1	$f8,320(sp)
    2218:	c6461004 	lwc1	$f6,4100(s2)
    221c:	c64a1008 	lwc1	$f10,4104(s2)
    2220:	4405b000 	mfc1	a1,$f22
    2224:	4406e000 	mfc1	a2,$f28
    2228:	460a3481 	sub.s	$f18,$f6,$f10
    222c:	34e7126f 	ori	a3,a3,0x126f
    2230:	26500f68 	addiu	s0,s2,3944
    2234:	26510f74 	addiu	s1,s2,3956
    2238:	0c000000 	jal	0 <func_8091BB00>
    223c:	e6521004 	swc1	$f18,4100(s2)
    2240:	c64c1004 	lwc1	$f12,4100(s2)
    2244:	0c000000 	jal	0 <func_8091BB00>
    2248:	00002825 	move	a1,zero
    224c:	27a40138 	addiu	a0,sp,312
    2250:	0c000000 	jal	0 <func_8091BB00>
    2254:	27a5012c 	addiu	a1,sp,300
    2258:	c6440024 	lwc1	$f4,36(s2)
    225c:	c7b0012c 	lwc1	$f16,300(sp)
    2260:	3c063dcc 	lui	a2,0x3dcc
    2264:	34c6cccd 	ori	a2,a2,0xcccd
    2268:	46102200 	add.s	$f8,$f4,$f16
    226c:	02002025 	move	a0,s0
    2270:	3c074120 	lui	a3,0x4120
    2274:	44054000 	mfc1	a1,$f8
    2278:	0c000000 	jal	0 <func_8091BB00>
    227c:	00000000 	nop
    2280:	c6460028 	lwc1	$f6,40(s2)
    2284:	c7aa0130 	lwc1	$f10,304(sp)
    2288:	3c063dcc 	lui	a2,0x3dcc
    228c:	34c6cccd 	ori	a2,a2,0xcccd
    2290:	460a3480 	add.s	$f18,$f6,$f10
    2294:	26440f6c 	addiu	a0,s2,3948
    2298:	3c074120 	lui	a3,0x4120
    229c:	44059000 	mfc1	a1,$f18
    22a0:	0c000000 	jal	0 <func_8091BB00>
    22a4:	00000000 	nop
    22a8:	c644002c 	lwc1	$f4,44(s2)
    22ac:	c7b00134 	lwc1	$f16,308(sp)
    22b0:	3c063dcc 	lui	a2,0x3dcc
    22b4:	34c6cccd 	ori	a2,a2,0xcccd
    22b8:	46102200 	add.s	$f8,$f4,$f16
    22bc:	26440f70 	addiu	a0,s2,3952
    22c0:	3c074120 	lui	a3,0x4120
    22c4:	44054000 	mfc1	a1,$f8
    22c8:	0c000000 	jal	0 <func_8091BB00>
    22cc:	00000000 	nop
    22d0:	02202025 	move	a0,s1
    22d4:	8ea50024 	lw	a1,36(s5)
    22d8:	3c063f00 	lui	a2,0x3f00
    22dc:	0c000000 	jal	0 <func_8091BB00>
    22e0:	3c074248 	lui	a3,0x4248
    22e4:	26440f78 	addiu	a0,s2,3960
    22e8:	8ea50028 	lw	a1,40(s5)
    22ec:	3c063f00 	lui	a2,0x3f00
    22f0:	0c000000 	jal	0 <func_8091BB00>
    22f4:	3c074248 	lui	a3,0x4248
    22f8:	26440f7c 	addiu	a0,s2,3964
    22fc:	8ea5002c 	lw	a1,44(s5)
    2300:	3c063f00 	lui	a2,0x3f00
    2304:	0c000000 	jal	0 <func_8091BB00>
    2308:	3c074248 	lui	a3,0x4248
    230c:	8fa401bc 	lw	a0,444(sp)
    2310:	86450f62 	lh	a1,3938(s2)
    2314:	02203025 	move	a2,s1
    2318:	0c000000 	jal	0 <func_8091BB00>
    231c:	02003825 	move	a3,s0
    2320:	100004bd 	b	3618 <L8091F118>
    2324:	86430158 	lh	v1,344(s2)
    2328:	0c000000 	jal	0 <func_8091BB00>
    232c:	24052028 	li	a1,8232
    2330:	8eb90118 	lw	t9,280(s5)
    2334:	240b0065 	li	t3,101
    2338:	3c010000 	lui	at,0x0
    233c:	16590004 	bne	s2,t9,2350 <L8091D918+0x538>
    2340:	264401e0 	addiu	a0,s2,480
    2344:	a6ab0850 	sh	t3,2128(s5)
    2348:	aea00118 	sw	zero,280(s5)
    234c:	a2a00444 	sb	zero,1092(s5)
    2350:	c4360000 	lwc1	$f22,0(at)
    2354:	3c053e19 	lui	a1,0x3e19
    2358:	34a5999a 	ori	a1,a1,0x999a
    235c:	4407b000 	mfc1	a3,$f22
    2360:	0c000000 	jal	0 <func_8091BB00>
    2364:	3c063f00 	lui	a2,0x3f00
    2368:	864e0174 	lh	t6,372(s2)
    236c:	00008025 	move	s0,zero
    2370:	8fb501bc 	lw	s5,444(sp)
    2374:	29c10029 	slti	at,t6,41
    2378:	10200034 	beqz	at,244c <L8091D918+0x634>
    237c:	2414000c 	li	s4,12
    2380:	3c010001 	lui	at,0x1
    2384:	02a1a821 	addu	s5,s5,at
    2388:	3c010000 	lui	at,0x0
    238c:	c4340000 	lwc1	$f20,0(at)
    2390:	27b10120 	addiu	s1,sp,288
    2394:	86580174 	lh	t8,372(s2)
    2398:	3c0141f0 	lui	at,0x41f0
    239c:	44816000 	mtc1	at,$f12
    23a0:	03140019 	multu	t8,s4
    23a4:	00004012 	mflo	t0
    23a8:	02484821 	addu	t1,s2,t0
    23ac:	8d2c0d70 	lw	t4,3440(t1)
    23b0:	ae2c0000 	sw	t4,0(s1)
    23b4:	8d2a0d74 	lw	t2,3444(t1)
    23b8:	ae2a0004 	sw	t2,4(s1)
    23bc:	8d2c0d78 	lw	t4,3448(t1)
    23c0:	0c000000 	jal	0 <func_8091BB00>
    23c4:	ae2c0008 	sw	t4,8(s1)
    23c8:	c7a60120 	lwc1	$f6,288(sp)
    23cc:	3c0141f0 	lui	at,0x41f0
    23d0:	44816000 	mtc1	at,$f12
    23d4:	46003280 	add.s	$f10,$f6,$f0
    23d8:	0c000000 	jal	0 <func_8091BB00>
    23dc:	e7aa0120 	swc1	$f10,288(sp)
    23e0:	c7b20124 	lwc1	$f18,292(sp)
    23e4:	3c0141f0 	lui	at,0x41f0
    23e8:	44816000 	mtc1	at,$f12
    23ec:	46009100 	add.s	$f4,$f18,$f0
    23f0:	0c000000 	jal	0 <func_8091BB00>
    23f4:	e7a40124 	swc1	$f4,292(sp)
    23f8:	c7b00128 	lwc1	$f16,296(sp)
    23fc:	3c010000 	lui	at,0x0
    2400:	c42c0000 	lwc1	$f12,0(at)
    2404:	46008200 	add.s	$f8,$f16,$f0
    2408:	0c000000 	jal	0 <func_8091BB00>
    240c:	e7a80128 	swc1	$f8,296(sp)
    2410:	46140180 	add.s	$f6,$f0,$f20
    2414:	8ea41e10 	lw	a0,7696(s5)
    2418:	02202825 	move	a1,s1
    241c:	44063000 	mfc1	a2,$f6
    2420:	0c000000 	jal	0 <func_8091BB00>
    2424:	00000000 	nop
    2428:	26100001 	addiu	s0,s0,1
    242c:	00108400 	sll	s0,s0,0x10
    2430:	00108403 	sra	s0,s0,0x10
    2434:	2a01000a 	slti	at,s0,10
    2438:	5420ffd7 	bnezl	at,2398 <L8091D918+0x580>
    243c:	86580174 	lh	t8,372(s2)
    2440:	864d0174 	lh	t5,372(s2)
    2444:	25af0001 	addiu	t7,t5,1
    2448:	a64f0174 	sh	t7,372(s2)
    244c:	4405f000 	mfc1	a1,$f30
    2450:	4406e000 	mfc1	a2,$f28
    2454:	3c073e4c 	lui	a3,0x3e4c
    2458:	34e7cccd 	ori	a3,a3,0xcccd
    245c:	0c000000 	jal	0 <func_8091BB00>
    2460:	264401a8 	addiu	a0,s2,424
    2464:	86590174 	lh	t9,372(s2)
    2468:	240e0065 	li	t6,101
    246c:	2418004b 	li	t8,75
    2470:	2b210029 	slti	at,t9,41
    2474:	50200005 	beqzl	at,248c <L8091D918+0x674>
    2478:	a64e0158 	sh	t6,344(s2)
    247c:	864b017e 	lh	t3,382(s2)
    2480:	1560000f 	bnez	t3,24c0 <L8091D918+0x6a8>
    2484:	00000000 	nop
    2488:	a64e0158 	sh	t6,344(s2)
    248c:	a658017e 	sh	t8,382(s2)
    2490:	3c010000 	lui	at,0x0
    2494:	c42a0000 	lwc1	$f10,0(at)
    2498:	3c014248 	lui	at,0x4248
    249c:	44819000 	mtc1	at,$f18
    24a0:	3c010000 	lui	at,0x0
    24a4:	e64a0d64 	swc1	$f10,3428(s2)
    24a8:	e6520d68 	swc1	$f18,3432(s2)
    24ac:	c4240000 	lwc1	$f4,0(at)
    24b0:	3c010000 	lui	at,0x0
    24b4:	e644018c 	swc1	$f4,396(s2)
    24b8:	c4300000 	lwc1	$f16,0(at)
    24bc:	e6500198 	swc1	$f16,408(s2)
    24c0:	10000455 	b	3618 <L8091F118>
    24c4:	86430158 	lh	v1,344(s2)
    24c8:	86480f62 	lh	t0,3938(s2)
    24cc:	26510f74 	addiu	s1,s2,3956
    24d0:	02202025 	move	a0,s1
    24d4:	11000038 	beqz	t0,25b8 <L8091D918+0x7a0>
    24d8:	3c063f00 	lui	a2,0x3f00
    24dc:	8ea50024 	lw	a1,36(s5)
    24e0:	0c000000 	jal	0 <func_8091BB00>
    24e4:	3c074248 	lui	a3,0x4248
    24e8:	26440f78 	addiu	a0,s2,3960
    24ec:	8ea50028 	lw	a1,40(s5)
    24f0:	3c063f00 	lui	a2,0x3f00
    24f4:	0c000000 	jal	0 <func_8091BB00>
    24f8:	3c074248 	lui	a3,0x4248
    24fc:	26440f7c 	addiu	a0,s2,3964
    2500:	8ea5002c 	lw	a1,44(s5)
    2504:	3c063f00 	lui	a2,0x3f00
    2508:	0c000000 	jal	0 <func_8091BB00>
    250c:	3c074248 	lui	a3,0x4248
    2510:	26500f68 	addiu	s0,s2,3944
    2514:	02003825 	move	a3,s0
    2518:	8fa401bc 	lw	a0,444(sp)
    251c:	86450f62 	lh	a1,3938(s2)
    2520:	0c000000 	jal	0 <func_8091BB00>
    2524:	02203025 	move	a2,s1
    2528:	3c014228 	lui	at,0x4228
    252c:	44814000 	mtc1	at,$f8
    2530:	c6a60028 	lwc1	$f6,40(s5)
    2534:	8fa401bc 	lw	a0,444(sp)
    2538:	4608303e 	c.le.s	$f6,$f8
    253c:	00000000 	nop
    2540:	4502001e 	bc1fl	25bc <L8091D918+0x7a4>
    2544:	3c0140a0 	lui	at,0x40a0
    2548:	0c000000 	jal	0 <func_8091BB00>
    254c:	00002825 	move	a1,zero
    2550:	8e0a0000 	lw	t2,0(s0)
    2554:	00003025 	move	a2,zero
    2558:	ac4a005c 	sw	t2,92(v0)
    255c:	8e090004 	lw	t1,4(s0)
    2560:	ac490060 	sw	t1,96(v0)
    2564:	8e0a0008 	lw	t2,8(s0)
    2568:	ac4a0064 	sw	t2,100(v0)
    256c:	8e0d0000 	lw	t5,0(s0)
    2570:	ac4d0074 	sw	t5,116(v0)
    2574:	8e0c0004 	lw	t4,4(s0)
    2578:	ac4c0078 	sw	t4,120(v0)
    257c:	8e0d0008 	lw	t5,8(s0)
    2580:	ac4d007c 	sw	t5,124(v0)
    2584:	8e390000 	lw	t9,0(s1)
    2588:	ac590050 	sw	t9,80(v0)
    258c:	8e2f0004 	lw	t7,4(s1)
    2590:	ac4f0054 	sw	t7,84(v0)
    2594:	8e390008 	lw	t9,8(s1)
    2598:	ac590058 	sw	t9,88(v0)
    259c:	86450f62 	lh	a1,3938(s2)
    25a0:	0c000000 	jal	0 <func_8091BB00>
    25a4:	8fa401bc 	lw	a0,444(sp)
    25a8:	a6400f62 	sh	zero,3938(s2)
    25ac:	8fa401bc 	lw	a0,444(sp)
    25b0:	0c000000 	jal	0 <func_8091BB00>
    25b4:	24851d64 	addiu	a1,a0,7524
    25b8:	3c0140a0 	lui	at,0x40a0
    25bc:	4481d000 	mtc1	at,$f26
    25c0:	00008825 	move	s1,zero
    25c4:	2414000c 	li	s4,12
    25c8:	24130006 	li	s3,6
    25cc:	c64a0188 	lwc1	$f10,392(s2)
    25d0:	864c016e 	lh	t4,366(s2)
    25d4:	4600548d 	trunc.w.s	$f18,$f10
    25d8:	44189000 	mfc1	t8,$f18
    25dc:	00000000 	nop
    25e0:	00184400 	sll	t0,t8,0x10
    25e4:	00084c03 	sra	t1,t0,0x10
    25e8:	01310019 	multu	t1,s1
    25ec:	00005012 	mflo	t2
    25f0:	014c2021 	addu	a0,t2,t4
    25f4:	00042400 	sll	a0,a0,0x10
    25f8:	0c000000 	jal	0 <func_8091BB00>
    25fc:	00042403 	sra	a0,a0,0x10
    2600:	44912000 	mtc1	s1,$f4
    2604:	3c010000 	lui	at,0x0
    2608:	c4280000 	lwc1	$f8,0(at)
    260c:	46802420 	cvt.s.w	$f16,$f4
    2610:	c64a018c 	lwc1	$f10,396(s2)
    2614:	86580170 	lh	t8,368(s2)
    2618:	c64401a0 	lwc1	$f4,416(s2)
    261c:	46088502 	mul.s	$f20,$f16,$f8
    2620:	c6500194 	lwc1	$f16,404(s2)
    2624:	4600820d 	trunc.w.s	$f8,$f16
    2628:	4600a182 	mul.s	$f6,$f20,$f0
    262c:	440f4000 	mfc1	t7,$f8
    2630:	00000000 	nop
    2634:	000fcc00 	sll	t9,t7,0x10
    2638:	00195c03 	sra	t3,t9,0x10
    263c:	01710019 	multu	t3,s1
    2640:	460a3482 	mul.s	$f18,$f6,$f10
    2644:	00000000 	nop
    2648:	46122582 	mul.s	$f22,$f4,$f18
    264c:	00007012 	mflo	t6
    2650:	01d82021 	addu	a0,t6,t8
    2654:	00042400 	sll	a0,a0,0x10
    2658:	0c000000 	jal	0 <func_8091BB00>
    265c:	00042403 	sra	a0,a0,0x10
    2660:	4600a182 	mul.s	$f6,$f20,$f0
    2664:	c64a0198 	lwc1	$f10,408(s2)
    2668:	c64201a0 	lwc1	$f2,416(s2)
    266c:	02340019 	multu	s1,s4
    2670:	3c073e4c 	lui	a3,0x3e4c
    2674:	34e7cccd 	ori	a3,a3,0xcccd
    2678:	3c063f00 	lui	a2,0x3f00
    267c:	460a3102 	mul.s	$f4,$f6,$f10
    2680:	00004012 	mflo	t0
    2684:	46041602 	mul.s	$f24,$f2,$f4
    2688:	02482021 	addu	a0,s2,t0
    268c:	248406ac 	addiu	a0,a0,1708
    2690:	461a1482 	mul.s	$f18,$f2,$f26
    2694:	44059000 	mfc1	a1,$f18
    2698:	0c000000 	jal	0 <func_8091BB00>
    269c:	00000000 	nop
    26a0:	c6480d64 	lwc1	$f8,3428(s2)
    26a4:	02330019 	multu	s1,s3
    26a8:	c6440d68 	lwc1	$f4,3432(s2)
    26ac:	4608e183 	div.s	$f6,$f28,$f8
    26b0:	4600b40d 	trunc.w.s	$f16,$f22
    26b4:	4600248d 	trunc.w.s	$f18,$f4
    26b8:	44058000 	mfc1	a1,$f16
    26bc:	00004812 	mflo	t1
    26c0:	02498021 	addu	s0,s2,t1
    26c4:	44079000 	mfc1	a3,$f18
    26c8:	00052c00 	sll	a1,a1,0x10
    26cc:	00052c03 	sra	a1,a1,0x10
    26d0:	00073c00 	sll	a3,a3,0x10
    26d4:	00073c03 	sra	a3,a3,0x10
    26d8:	26040c6c 	addiu	a0,s0,3180
    26dc:	4600328d 	trunc.w.s	$f10,$f6
    26e0:	44065000 	mfc1	a2,$f10
    26e4:	00000000 	nop
    26e8:	00063400 	sll	a2,a2,0x10
    26ec:	0c000000 	jal	0 <func_8091BB00>
    26f0:	00063403 	sra	a2,a2,0x10
    26f4:	c6480d64 	lwc1	$f8,3428(s2)
    26f8:	c6440d68 	lwc1	$f4,3432(s2)
    26fc:	4600c40d 	trunc.w.s	$f16,$f24
    2700:	26040c70 	addiu	a0,s0,3184
    2704:	4608e183 	div.s	$f6,$f28,$f8
    2708:	44058000 	mfc1	a1,$f16
    270c:	4600248d 	trunc.w.s	$f18,$f4
    2710:	00052c00 	sll	a1,a1,0x10
    2714:	00052c03 	sra	a1,a1,0x10
    2718:	44079000 	mfc1	a3,$f18
    271c:	00000000 	nop
    2720:	00073c00 	sll	a3,a3,0x10
    2724:	00073c03 	sra	a3,a3,0x10
    2728:	4600328d 	trunc.w.s	$f10,$f6
    272c:	44065000 	mfc1	a2,$f10
    2730:	00000000 	nop
    2734:	00063400 	sll	a2,a2,0x10
    2738:	0c000000 	jal	0 <func_8091BB00>
    273c:	00063403 	sra	a2,a2,0x10
    2740:	26310001 	addiu	s1,s1,1
    2744:	00118c00 	sll	s1,s1,0x10
    2748:	00118c03 	sra	s1,s1,0x10
    274c:	2a210029 	slti	at,s1,41
    2750:	5420ff9f 	bnezl	at,25d0 <L8091D918+0x7b8>
    2754:	c64a0188 	lwc1	$f10,392(s2)
    2758:	4405f000 	mfc1	a1,$f30
    275c:	3c073ca3 	lui	a3,0x3ca3
    2760:	34e7d70a 	ori	a3,a3,0xd70a
    2764:	264401a0 	addiu	a0,s2,416
    2768:	0c000000 	jal	0 <func_8091BB00>
    276c:	3c063f00 	lui	a2,0x3f00
    2770:	3c010000 	lui	at,0x0
    2774:	c4360000 	lwc1	$f22,0(at)
    2778:	4406e000 	mfc1	a2,$f28
    277c:	26440d64 	addiu	a0,s2,3428
    2780:	4407b000 	mfc1	a3,$f22
    2784:	0c000000 	jal	0 <func_8091BB00>
    2788:	3c053f00 	lui	a1,0x3f00
    278c:	4406e000 	mfc1	a2,$f28
    2790:	26440d68 	addiu	a0,s2,3432
    2794:	3c0543a0 	lui	a1,0x43a0
    2798:	0c000000 	jal	0 <func_8091BB00>
    279c:	3c074248 	lui	a3,0x4248
    27a0:	864e017e 	lh	t6,382(s2)
    27a4:	2401fffe 	li	at,-2
    27a8:	264401a4 	addiu	a0,s2,420
    27ac:	15c00060 	bnez	t6,2930 <L8091D918+0xb18>
    27b0:	00000000 	nop
    27b4:	8e580004 	lw	t8,4(s2)
    27b8:	4405f000 	mfc1	a1,$f30
    27bc:	4406e000 	mfc1	a2,$f28
    27c0:	4407d000 	mfc1	a3,$f26
    27c4:	03014024 	and	t0,t8,at
    27c8:	0c000000 	jal	0 <func_8091BB00>
    27cc:	ae480004 	sw	t0,4(s2)
    27d0:	3c010000 	lui	at,0x0
    27d4:	c43a0000 	lwc1	$f26,0(at)
    27d8:	3c014700 	lui	at,0x4700
    27dc:	4481c000 	mtc1	at,$f24
    27e0:	3c010000 	lui	at,0x0
    27e4:	c4360000 	lwc1	$f22,0(at)
    27e8:	3c0143a0 	lui	at,0x43a0
    27ec:	3c130000 	lui	s3,0x0
    27f0:	4481a000 	mtc1	at,$f20
    27f4:	26730000 	addiu	s3,s3,0
    27f8:	00008825 	move	s1,zero
    27fc:	0c000000 	jal	0 <func_8091BB00>
    2800:	4600b306 	mov.s	$f12,$f22
    2804:	e7be00fc 	swc1	$f30,252(sp)
    2808:	e7be0100 	swc1	$f30,256(sp)
    280c:	e7be0104 	swc1	$f30,260(sp)
    2810:	86af0032 	lh	t7,50(s5)
    2814:	4600040d 	trunc.w.s	$f16,$f0
    2818:	3c100000 	lui	s0,0x0
    281c:	448f4000 	mtc1	t7,$f8
    2820:	00002825 	move	a1,zero
    2824:	440a8000 	mfc1	t2,$f16
    2828:	468041a0 	cvt.s.w	$f6,$f8
    282c:	000a6400 	sll	t4,t2,0x10
    2830:	000c6c03 	sra	t5,t4,0x10
    2834:	020d8021 	addu	s0,s0,t5
    2838:	92100000 	lbu	s0,0(s0)
    283c:	46183283 	div.s	$f10,$f6,$f24
    2840:	461a5302 	mul.s	$f12,$f10,$f26
    2844:	0c000000 	jal	0 <func_8091BB00>
    2848:	00000000 	nop
    284c:	27a400fc 	addiu	a0,sp,252
    2850:	0c000000 	jal	0 <func_8091BB00>
    2854:	27a500f0 	addiu	a1,sp,240
    2858:	c6a40024 	lwc1	$f4,36(s5)
    285c:	c7b200f0 	lwc1	$f18,240(sp)
    2860:	3c0b0000 	lui	t3,0x0
    2864:	256b0000 	addiu	t3,t3,0
    2868:	46122400 	add.s	$f16,$f4,$f18
    286c:	0010c8c0 	sll	t9,s0,0x3
    2870:	032b1021 	addu	v0,t9,t3
    2874:	c4420000 	lwc1	$f2,0(v0)
    2878:	e7b000f0 	swc1	$f16,240(sp)
    287c:	c7a400f0 	lwc1	$f4,240(sp)
    2880:	c6a8002c 	lwc1	$f8,44(s5)
    2884:	c7a600f8 	lwc1	$f6,248(sp)
    2888:	46022001 	sub.s	$f0,$f4,$f2
    288c:	26310001 	addiu	s1,s1,1
    2890:	00118c00 	sll	s1,s1,0x10
    2894:	46064280 	add.s	$f10,$f8,$f6
    2898:	00118c03 	sra	s1,s1,0x10
    289c:	2a210028 	slti	at,s1,40
    28a0:	46000005 	abs.s	$f0,$f0
    28a4:	e7aa00f8 	swc1	$f10,248(sp)
    28a8:	4614003e 	c.le.s	$f0,$f20
    28ac:	c7b200f8 	lwc1	$f18,248(sp)
    28b0:	4500001d 	bc1f	2928 <L8091D918+0xb10>
    28b4:	00000000 	nop
    28b8:	c4500004 	lwc1	$f16,4(v0)
    28bc:	46109001 	sub.s	$f0,$f18,$f16
    28c0:	46000005 	abs.s	$f0,$f0
    28c4:	4614003e 	c.le.s	$f0,$f20
    28c8:	00000000 	nop
    28cc:	45000016 	bc1f	2928 <L8091D918+0xb10>
    28d0:	00000000 	nop
    28d4:	8e630000 	lw	v1,0(s3)
    28d8:	50600005 	beqzl	v1,28f0 <L8091D918+0xad8>
    28dc:	e64201d4 	swc1	$f2,468(s2)
    28e0:	906e0156 	lbu	t6,342(v1)
    28e4:	120e0010 	beq	s0,t6,2928 <L8091D918+0xb10>
    28e8:	00000000 	nop
    28ec:	e64201d4 	swc1	$f2,468(s2)
    28f0:	c4480004 	lwc1	$f8,4(v0)
    28f4:	3c0141a0 	lui	at,0x41a0
    28f8:	44816000 	mtc1	at,$f12
    28fc:	a2500156 	sb	s0,342(s2)
    2900:	0c000000 	jal	0 <func_8091BB00>
    2904:	e64801dc 	swc1	$f8,476(s2)
    2908:	4600018d 	trunc.w.s	$f6,$f0
    290c:	240d0066 	li	t5,102
    2910:	a64d0158 	sh	t5,344(s2)
    2914:	440a3000 	mfc1	t2,$f6
    2918:	00000000 	nop
    291c:	254c001e 	addiu	t4,t2,30
    2920:	10000003 	b	2930 <L8091D918+0xb18>
    2924:	a64c017e 	sh	t4,382(s2)
    2928:	1420ffb4 	bnez	at,27fc <L8091D918+0x9e4>
    292c:	00000000 	nop
    2930:	3c100000 	lui	s0,0x0
    2934:	26100000 	addiu	s0,s0,0
    2938:	8e0f0000 	lw	t7,0(s0)
    293c:	3c130000 	lui	s3,0x0
    2940:	26730000 	addiu	s3,s3,0
    2944:	164f003c 	bne	s2,t7,2a38 <L8091D918+0xc20>
    2948:	3c190000 	lui	t9,0x0
    294c:	8f390000 	lw	t9,0(t9)
    2950:	932b0155 	lbu	t3,341(t9)
    2954:	29610003 	slti	at,t3,3
    2958:	14200037 	bnez	at,2a38 <L8091D918+0xc20>
    295c:	00000000 	nop
    2960:	8e6e0000 	lw	t6,0(s3)
    2964:	8fa501bc 	lw	a1,444(sp)
    2968:	240600c4 	li	a2,196
    296c:	15c00032 	bnez	t6,2a38 <L8091D918+0xc20>
    2970:	24a41c24 	addiu	a0,a1,7204
    2974:	c64a0028 	lwc1	$f10,40(s2)
    2978:	8e470024 	lw	a3,36(s2)
    297c:	24080064 	li	t0,100
    2980:	e7aa0010 	swc1	$f10,16(sp)
    2984:	c644002c 	lwc1	$f4,44(s2)
    2988:	afa80024 	sw	t0,36(sp)
    298c:	afa00020 	sw	zero,32(sp)
    2990:	afa0001c 	sw	zero,28(sp)
    2994:	afa00018 	sw	zero,24(sp)
    2998:	0c000000 	jal	0 <func_8091BB00>
    299c:	e7a40014 	swc1	$f4,20(sp)
    29a0:	ae620000 	sw	v0,0(s3)
    29a4:	92490156 	lbu	t1,342(s2)
    29a8:	a0490156 	sb	t1,342(v0)
    29ac:	8e630000 	lw	v1,0(s3)
    29b0:	90640156 	lbu	a0,342(v1)
    29b4:	2881000b 	slti	at,a0,11
    29b8:	14200004 	bnez	at,29cc <L8091D918+0xbb4>
    29bc:	248d0001 	addiu	t5,a0,1
    29c0:	248cffff 	addiu	t4,a0,-1
    29c4:	10000002 	b	29d0 <L8091D918+0xbb8>
    29c8:	a06c0156 	sb	t4,342(v1)
    29cc:	a06d0156 	sb	t5,342(v1)
    29d0:	8e630000 	lw	v1,0(s3)
    29d4:	3c010000 	lui	at,0x0
    29d8:	24180064 	li	t8,100
    29dc:	906f0156 	lbu	t7,342(v1)
    29e0:	24090066 	li	t1,102
    29e4:	000fc8c0 	sll	t9,t7,0x3
    29e8:	00390821 	addu	at,at,t9
    29ec:	c4320000 	lwc1	$f18,0(at)
    29f0:	3c010000 	lui	at,0x0
    29f4:	e47201d4 	swc1	$f18,468(v1)
    29f8:	8e630000 	lw	v1,0(s3)
    29fc:	906b0156 	lbu	t3,342(v1)
    2a00:	000b70c0 	sll	t6,t3,0x3
    2a04:	002e0821 	addu	at,at,t6
    2a08:	c4300000 	lwc1	$f16,0(at)
    2a0c:	e47001dc 	swc1	$f16,476(v1)
    2a10:	8e680000 	lw	t0,0(s3)
    2a14:	a518017e 	sh	t8,382(t0)
    2a18:	8e6a0000 	lw	t2,0(s3)
    2a1c:	a5490158 	sh	t1,344(t2)
    2a20:	8e0c0000 	lw	t4,0(s0)
    2a24:	8e6d0000 	lw	t5,0(s3)
    2a28:	adac014c 	sw	t4,332(t5)
    2a2c:	8e190000 	lw	t9,0(s0)
    2a30:	8e6f0000 	lw	t7,0(s3)
    2a34:	af2f014c 	sw	t7,332(t9)
    2a38:	100002f7 	b	3618 <L8091F118>
    2a3c:	86430158 	lh	v1,344(s2)
    2a40:	3c0140a0 	lui	at,0x40a0
    2a44:	4481d000 	mtc1	at,$f26
    2a48:	8e4b0004 	lw	t3,4(s2)
    2a4c:	2401fffe 	li	at,-2
    2a50:	4405f000 	mfc1	a1,$f30
    2a54:	4406e000 	mfc1	a2,$f28
    2a58:	01617024 	and	t6,t3,at
    2a5c:	4407d000 	mfc1	a3,$f26
    2a60:	0c000000 	jal	0 <func_8091BB00>
    2a64:	ae4e0004 	sw	t6,4(s2)
    2a68:	3c013f00 	lui	at,0x3f00
    2a6c:	44814000 	mtc1	at,$f8
    2a70:	c64601a4 	lwc1	$f6,420(s2)
    2a74:	4608303e 	c.le.s	$f6,$f8
    2a78:	00000000 	nop
    2a7c:	45000023 	bc1f	2b0c <L8091D918+0xcf4>
    2a80:	00000000 	nop
    2a84:	8658017e 	lh	t8,382(s2)
    2a88:	240c000a 	li	t4,10
    2a8c:	3c0141a0 	lui	at,0x41a0
    2a90:	1700001e 	bnez	t8,2b0c <L8091D918+0xcf4>
    2a94:	00000000 	nop
    2a98:	c64a01d4 	lwc1	$f10,468(s2)
    2a9c:	c64401dc 	lwc1	$f4,476(s2)
    2aa0:	a6400174 	sh	zero,372(s2)
    2aa4:	e64a0024 	swc1	$f10,36(s2)
    2aa8:	8e490024 	lw	t1,36(s2)
    2aac:	e644002c 	swc1	$f4,44(s2)
    2ab0:	8e480028 	lw	t0,40(s2)
    2ab4:	ae490100 	sw	t1,256(s2)
    2ab8:	8e49002c 	lw	t1,44(s2)
    2abc:	864a0174 	lh	t2,372(s2)
    2ac0:	44816000 	mtc1	at,$f12
    2ac4:	e65c01a8 	swc1	$f28,424(s2)
    2ac8:	a64c0158 	sh	t4,344(s2)
    2acc:	ae480104 	sw	t0,260(s2)
    2ad0:	ae490108 	sw	t1,264(s2)
    2ad4:	0c000000 	jal	0 <func_8091BB00>
    2ad8:	a64a0172 	sh	t2,370(s2)
    2adc:	4600048d 	trunc.w.s	$f18,$f0
    2ae0:	3c010000 	lui	at,0x0
    2ae4:	c4340000 	lwc1	$f20,0(at)
    2ae8:	e65e0d68 	swc1	$f30,3432(s2)
    2aec:	440b9000 	mfc1	t3,$f18
    2af0:	e65e0190 	swc1	$f30,400(s2)
    2af4:	e65e019c 	swc1	$f30,412(s2)
    2af8:	256e000a 	addiu	t6,t3,10
    2afc:	a64e017e 	sh	t6,382(s2)
    2b00:	e65e018c 	swc1	$f30,396(s2)
    2b04:	e65e0198 	swc1	$f30,408(s2)
    2b08:	e6540d64 	swc1	$f20,3428(s2)
    2b0c:	100002c2 	b	3618 <L8091F118>
    2b10:	86430158 	lh	v1,344(s2)

00002b14 <L8091E614>:
    2b14:	24184000 	li	t8,16384
    2b18:	a65800b6 	sh	t8,182(s2)
    2b1c:	100002be 	b	3618 <L8091F118>
    2b20:	86430158 	lh	v1,344(s2)

00002b24 <L8091E624>:
    2b24:	24080014 	li	t0,20
    2b28:	a64801cc 	sh	t0,460(s2)
    2b2c:	3c040000 	lui	a0,0x0
    2b30:	8c840000 	lw	a0,0(a0)
    2b34:	3c063dcc 	lui	a2,0x3dcc
    2b38:	3c073f4c 	lui	a3,0x3f4c
    2b3c:	34e7cccd 	ori	a3,a3,0xcccd
    2b40:	34c6cccd 	ori	a2,a2,0xcccd
    2b44:	3c05c396 	lui	a1,0xc396
    2b48:	0c000000 	jal	0 <func_8091BB00>
    2b4c:	248401bc 	addiu	a0,a0,444
    2b50:	8e490004 	lw	t1,4(s2)
    2b54:	2401fffe 	li	at,-2
    2b58:	00008825 	move	s1,zero
    2b5c:	01215024 	and	t2,t1,at
    2b60:	3c0140a0 	lui	at,0x40a0
    2b64:	4481d000 	mtc1	at,$f26
    2b68:	ae4a0004 	sw	t2,4(s2)
    2b6c:	2414000c 	li	s4,12
    2b70:	24130006 	li	s3,6
    2b74:	c6500188 	lwc1	$f16,392(s2)
    2b78:	864e016e 	lh	t6,366(s2)
    2b7c:	4600820d 	trunc.w.s	$f8,$f16
    2b80:	440d4000 	mfc1	t5,$f8
    2b84:	00000000 	nop
    2b88:	000d7c00 	sll	t7,t5,0x10
    2b8c:	000fcc03 	sra	t9,t7,0x10
    2b90:	03310019 	multu	t9,s1
    2b94:	00005812 	mflo	t3
    2b98:	016e2021 	addu	a0,t3,t6
    2b9c:	00042400 	sll	a0,a0,0x10
    2ba0:	0c000000 	jal	0 <func_8091BB00>
    2ba4:	00042403 	sra	a0,a0,0x10
    2ba8:	44913000 	mtc1	s1,$f6
    2bac:	c6480194 	lwc1	$f8,404(s2)
    2bb0:	3c010000 	lui	at,0x0
    2bb4:	468032a0 	cvt.s.w	$f10,$f6
    2bb8:	c4240000 	lwc1	$f4,0(at)
    2bbc:	864d0170 	lh	t5,368(s2)
    2bc0:	c652018c 	lwc1	$f18,396(s2)
    2bc4:	4600418d 	trunc.w.s	$f6,$f8
    2bc8:	46045502 	mul.s	$f20,$f10,$f4
    2bcc:	44083000 	mfc1	t0,$f6
    2bd0:	00000000 	nop
    2bd4:	00084c00 	sll	t1,t0,0x10
    2bd8:	00095403 	sra	t2,t1,0x10
    2bdc:	01510019 	multu	t2,s1
    2be0:	4600a402 	mul.s	$f16,$f20,$f0
    2be4:	00000000 	nop
    2be8:	46109582 	mul.s	$f22,$f18,$f16
    2bec:	00006012 	mflo	t4
    2bf0:	018d2021 	addu	a0,t4,t5
    2bf4:	00042400 	sll	a0,a0,0x10
    2bf8:	0c000000 	jal	0 <func_8091BB00>
    2bfc:	00042403 	sra	a0,a0,0x10
    2c00:	02340019 	multu	s1,s4
    2c04:	4600a482 	mul.s	$f18,$f20,$f0
    2c08:	c65001a0 	lwc1	$f16,416(s2)
    2c0c:	c64e0198 	lwc1	$f14,408(s2)
    2c10:	3c063dcc 	lui	a2,0x3dcc
    2c14:	461a8402 	mul.s	$f16,$f16,$f26
    2c18:	3c073ecc 	lui	a3,0x3ecc
    2c1c:	34c6cccd 	ori	a2,a2,0xcccd
    2c20:	46127602 	mul.s	$f24,$f14,$f18
    2c24:	34e7cccd 	ori	a3,a3,0xcccd
    2c28:	00007812 	mflo	t7
    2c2c:	024f2021 	addu	a0,s2,t7
    2c30:	44058000 	mfc1	a1,$f16
    2c34:	0c000000 	jal	0 <func_8091BB00>
    2c38:	248406ac 	addiu	a0,a0,1708
    2c3c:	c6460d64 	lwc1	$f6,3428(s2)
    2c40:	02330019 	multu	s1,s3
    2c44:	c6520d68 	lwc1	$f18,3432(s2)
    2c48:	4606e283 	div.s	$f10,$f28,$f6
    2c4c:	4600b20d 	trunc.w.s	$f8,$f22
    2c50:	4600940d 	trunc.w.s	$f16,$f18
    2c54:	44054000 	mfc1	a1,$f8
    2c58:	0000c812 	mflo	t9
    2c5c:	02598021 	addu	s0,s2,t9
    2c60:	44078000 	mfc1	a3,$f16
    2c64:	00052c00 	sll	a1,a1,0x10
    2c68:	00052c03 	sra	a1,a1,0x10
    2c6c:	00073c00 	sll	a3,a3,0x10
    2c70:	00073c03 	sra	a3,a3,0x10
    2c74:	26040c6c 	addiu	a0,s0,3180
    2c78:	4600510d 	trunc.w.s	$f4,$f10
    2c7c:	44062000 	mfc1	a2,$f4
    2c80:	00000000 	nop
    2c84:	00063400 	sll	a2,a2,0x10
    2c88:	0c000000 	jal	0 <func_8091BB00>
    2c8c:	00063403 	sra	a2,a2,0x10
    2c90:	c6460d64 	lwc1	$f6,3428(s2)
    2c94:	c6520d68 	lwc1	$f18,3432(s2)
    2c98:	4600c20d 	trunc.w.s	$f8,$f24
    2c9c:	26040c70 	addiu	a0,s0,3184
    2ca0:	4606e283 	div.s	$f10,$f28,$f6
    2ca4:	44054000 	mfc1	a1,$f8
    2ca8:	4600940d 	trunc.w.s	$f16,$f18
    2cac:	00052c00 	sll	a1,a1,0x10
    2cb0:	00052c03 	sra	a1,a1,0x10
    2cb4:	44078000 	mfc1	a3,$f16
    2cb8:	00000000 	nop
    2cbc:	00073c00 	sll	a3,a3,0x10
    2cc0:	00073c03 	sra	a3,a3,0x10
    2cc4:	4600510d 	trunc.w.s	$f4,$f10
    2cc8:	44062000 	mfc1	a2,$f4
    2ccc:	00000000 	nop
    2cd0:	00063400 	sll	a2,a2,0x10
    2cd4:	0c000000 	jal	0 <func_8091BB00>
    2cd8:	00063403 	sra	a2,a2,0x10
    2cdc:	26310001 	addiu	s1,s1,1
    2ce0:	00118c00 	sll	s1,s1,0x10
    2ce4:	00118c03 	sra	s1,s1,0x10
    2ce8:	2a210029 	slti	at,s1,41
    2cec:	5420ffa2 	bnezl	at,2b78 <L8091E624+0x54>
    2cf0:	c6500188 	lwc1	$f16,392(s2)
    2cf4:	3c054089 	lui	a1,0x4089
    2cf8:	3c073d23 	lui	a3,0x3d23
    2cfc:	e65e0068 	swc1	$f30,104(s2)
    2d00:	34e7d70a 	ori	a3,a3,0xd70a
    2d04:	34a5999a 	ori	a1,a1,0x999a
    2d08:	264401a0 	addiu	a0,s2,416
    2d0c:	0c000000 	jal	0 <func_8091BB00>
    2d10:	3c063f00 	lui	a2,0x3f00
    2d14:	3c010000 	lui	at,0x0
    2d18:	c4360000 	lwc1	$f22,0(at)
    2d1c:	3c053fa6 	lui	a1,0x3fa6
    2d20:	34a56666 	ori	a1,a1,0x6666
    2d24:	4407b000 	mfc1	a3,$f22
    2d28:	26440d6c 	addiu	a0,s2,3436
    2d2c:	0c000000 	jal	0 <func_8091BB00>
    2d30:	3c063f00 	lui	a2,0x3f00
    2d34:	10000238 	b	3618 <L8091F118>
    2d38:	86430158 	lh	v1,344(s2)

00002d3c <L8091E83C>:
    2d3c:	3c020000 	lui	v0,0x0
    2d40:	240c0014 	li	t4,20
    2d44:	240d4000 	li	t5,16384
    2d48:	240f8000 	li	t7,-32768
    2d4c:	24420000 	addiu	v0,v0,0
    2d50:	a64c01cc 	sh	t4,460(s2)
    2d54:	a64d00b6 	sh	t5,182(s2)
    2d58:	a64f00b4 	sh	t7,180(s2)
    2d5c:	8c590000 	lw	t9,0(v0)
    2d60:	3c010000 	lui	at,0x0
    2d64:	c4260000 	lwc1	$f6,0(at)
    2d68:	c72801bc 	lwc1	$f8,444(t9)
    2d6c:	3c063dcc 	lui	a2,0x3dcc
    2d70:	3c073fa6 	lui	a3,0x3fa6
    2d74:	46064280 	add.s	$f10,$f8,$f6
    2d78:	34e76666 	ori	a3,a3,0x6666
    2d7c:	34c6cccd 	ori	a2,a2,0xcccd
    2d80:	3c05c396 	lui	a1,0xc396
    2d84:	e64a0028 	swc1	$f10,40(s2)
    2d88:	8c440000 	lw	a0,0(v0)
    2d8c:	0c000000 	jal	0 <func_8091BB00>
    2d90:	248401bc 	addiu	a0,a0,444
    2d94:	3c0140a0 	lui	at,0x40a0
    2d98:	4481d000 	mtc1	at,$f26
    2d9c:	00008825 	move	s1,zero
    2da0:	2414000c 	li	s4,12
    2da4:	24130006 	li	s3,6
    2da8:	c6440188 	lwc1	$f4,392(s2)
    2dac:	864a016e 	lh	t2,366(s2)
    2db0:	4600248d 	trunc.w.s	$f18,$f4
    2db4:	440e9000 	mfc1	t6,$f18
    2db8:	00000000 	nop
    2dbc:	000ec400 	sll	t8,t6,0x10
    2dc0:	00184403 	sra	t0,t8,0x10
    2dc4:	01110019 	multu	t0,s1
    2dc8:	00004812 	mflo	t1
    2dcc:	012a2021 	addu	a0,t1,t2
    2dd0:	00042400 	sll	a0,a0,0x10
    2dd4:	0c000000 	jal	0 <func_8091BB00>
    2dd8:	00042403 	sra	a0,a0,0x10
    2ddc:	44918000 	mtc1	s1,$f16
    2de0:	c6520194 	lwc1	$f18,404(s2)
    2de4:	3c010000 	lui	at,0x0
    2de8:	46808220 	cvt.s.w	$f8,$f16
    2dec:	c4260000 	lwc1	$f6,0(at)
    2df0:	864e0170 	lh	t6,368(s2)
    2df4:	c64a018c 	lwc1	$f10,396(s2)
    2df8:	4600940d 	trunc.w.s	$f16,$f18
    2dfc:	46064502 	mul.s	$f20,$f8,$f6
    2e00:	440d8000 	mfc1	t5,$f16
    2e04:	00000000 	nop
    2e08:	000d7c00 	sll	t7,t5,0x10
    2e0c:	000fcc03 	sra	t9,t7,0x10
    2e10:	03310019 	multu	t9,s1
    2e14:	4600a102 	mul.s	$f4,$f20,$f0
    2e18:	00000000 	nop
    2e1c:	46045582 	mul.s	$f22,$f10,$f4
    2e20:	00005812 	mflo	t3
    2e24:	016e2021 	addu	a0,t3,t6
    2e28:	00042400 	sll	a0,a0,0x10
    2e2c:	0c000000 	jal	0 <func_8091BB00>
    2e30:	00042403 	sra	a0,a0,0x10
    2e34:	02340019 	multu	s1,s4
    2e38:	4600a482 	mul.s	$f18,$f20,$f0
    2e3c:	c65001a0 	lwc1	$f16,416(s2)
    2e40:	c64e0198 	lwc1	$f14,408(s2)
    2e44:	3c063dcc 	lui	a2,0x3dcc
    2e48:	461a8402 	mul.s	$f16,$f16,$f26
    2e4c:	3c073ecc 	lui	a3,0x3ecc
    2e50:	34c6cccd 	ori	a2,a2,0xcccd
    2e54:	46127602 	mul.s	$f24,$f14,$f18
    2e58:	34e7cccd 	ori	a3,a3,0xcccd
    2e5c:	0000c012 	mflo	t8
    2e60:	02582021 	addu	a0,s2,t8
    2e64:	44058000 	mfc1	a1,$f16
    2e68:	0c000000 	jal	0 <func_8091BB00>
    2e6c:	248406ac 	addiu	a0,a0,1708
    2e70:	c6500d64 	lwc1	$f16,3428(s2)
    2e74:	02330019 	multu	s1,s3
    2e78:	c64a0d68 	lwc1	$f10,3432(s2)
    2e7c:	4610e203 	div.s	$f8,$f28,$f16
    2e80:	4600b48d 	trunc.w.s	$f18,$f22
    2e84:	4600510d 	trunc.w.s	$f4,$f10
    2e88:	44059000 	mfc1	a1,$f18
    2e8c:	00004012 	mflo	t0
    2e90:	02488021 	addu	s0,s2,t0
    2e94:	44072000 	mfc1	a3,$f4
    2e98:	00052c00 	sll	a1,a1,0x10
    2e9c:	00052c03 	sra	a1,a1,0x10
    2ea0:	00073c00 	sll	a3,a3,0x10
    2ea4:	00073c03 	sra	a3,a3,0x10
    2ea8:	26040c6c 	addiu	a0,s0,3180
    2eac:	4600418d 	trunc.w.s	$f6,$f8
    2eb0:	44063000 	mfc1	a2,$f6
    2eb4:	00000000 	nop
    2eb8:	00063400 	sll	a2,a2,0x10
    2ebc:	0c000000 	jal	0 <func_8091BB00>
    2ec0:	00063403 	sra	a2,a2,0x10
    2ec4:	c6500d64 	lwc1	$f16,3428(s2)
    2ec8:	c64a0d68 	lwc1	$f10,3432(s2)
    2ecc:	4600c48d 	trunc.w.s	$f18,$f24
    2ed0:	26040c70 	addiu	a0,s0,3184
    2ed4:	4610e203 	div.s	$f8,$f28,$f16
    2ed8:	44059000 	mfc1	a1,$f18
    2edc:	4600510d 	trunc.w.s	$f4,$f10
    2ee0:	00052c00 	sll	a1,a1,0x10
    2ee4:	00052c03 	sra	a1,a1,0x10
    2ee8:	44072000 	mfc1	a3,$f4
    2eec:	00000000 	nop
    2ef0:	00073c00 	sll	a3,a3,0x10
    2ef4:	00073c03 	sra	a3,a3,0x10
    2ef8:	4600418d 	trunc.w.s	$f6,$f8
    2efc:	44063000 	mfc1	a2,$f6
    2f00:	00000000 	nop
    2f04:	00063400 	sll	a2,a2,0x10
    2f08:	0c000000 	jal	0 <func_8091BB00>
    2f0c:	00063403 	sra	a2,a2,0x10
    2f10:	26310001 	addiu	s1,s1,1
    2f14:	00118c00 	sll	s1,s1,0x10
    2f18:	00118c03 	sra	s1,s1,0x10
    2f1c:	2a210029 	slti	at,s1,41
    2f20:	5420ffa2 	bnezl	at,2dac <L8091E83C+0x70>
    2f24:	c6440188 	lwc1	$f4,392(s2)
    2f28:	3c010000 	lui	at,0x0
    2f2c:	c4360000 	lwc1	$f22,0(at)
    2f30:	3c053fa6 	lui	a1,0x3fa6
    2f34:	e65e0068 	swc1	$f30,104(s2)
    2f38:	4407b000 	mfc1	a3,$f22
    2f3c:	34a56666 	ori	a1,a1,0x6666
    2f40:	26440d6c 	addiu	a0,s2,3436
    2f44:	0c000000 	jal	0 <func_8091BB00>
    2f48:	3c063f00 	lui	a2,0x3f00
    2f4c:	100001b2 	b	3618 <L8091F118>
    2f50:	86430158 	lh	v1,344(s2)

00002f54 <L8091EA54>:
    2f54:	240b0014 	li	t3,20
    2f58:	a64b01cc 	sh	t3,460(s2)
    2f5c:	3c040000 	lui	a0,0x0
    2f60:	8c840000 	lw	a0,0(a0)
    2f64:	3c05c393 	lui	a1,0xc393
    2f68:	3c063dcc 	lui	a2,0x3dcc
    2f6c:	3c073fa6 	lui	a3,0x3fa6
    2f70:	34e76666 	ori	a3,a3,0x6666
    2f74:	34c6cccd 	ori	a2,a2,0xcccd
    2f78:	34a58000 	ori	a1,a1,0x8000
    2f7c:	0c000000 	jal	0 <func_8091BB00>
    2f80:	248401bc 	addiu	a0,a0,444
    2f84:	3c0e0000 	lui	t6,0x0
    2f88:	8dce0000 	lw	t6,0(t6)
    2f8c:	3c010000 	lui	at,0x0
    2f90:	c4300000 	lwc1	$f16,0(at)
    2f94:	c5d201bc 	lwc1	$f18,444(t6)
    2f98:	3c0140a0 	lui	at,0x40a0
    2f9c:	4481d000 	mtc1	at,$f26
    2fa0:	46109200 	add.s	$f8,$f18,$f16
    2fa4:	00008825 	move	s1,zero
    2fa8:	2414000c 	li	s4,12
    2fac:	24130006 	li	s3,6
    2fb0:	e6480028 	swc1	$f8,40(s2)
    2fb4:	c6460188 	lwc1	$f6,392(s2)
    2fb8:	864d016e 	lh	t5,366(s2)
    2fbc:	4600328d 	trunc.w.s	$f10,$f6
    2fc0:	44085000 	mfc1	t0,$f10
    2fc4:	00000000 	nop
    2fc8:	00084c00 	sll	t1,t0,0x10
    2fcc:	00095403 	sra	t2,t1,0x10
    2fd0:	01510019 	multu	t2,s1
    2fd4:	00006012 	mflo	t4
    2fd8:	018d2021 	addu	a0,t4,t5
    2fdc:	00042400 	sll	a0,a0,0x10
    2fe0:	0c000000 	jal	0 <func_8091BB00>
    2fe4:	00042403 	sra	a0,a0,0x10
    2fe8:	44912000 	mtc1	s1,$f4
    2fec:	c64a0194 	lwc1	$f10,404(s2)
    2ff0:	3c010000 	lui	at,0x0
    2ff4:	468024a0 	cvt.s.w	$f18,$f4
    2ff8:	c4300000 	lwc1	$f16,0(at)
    2ffc:	86480170 	lh	t0,368(s2)
    3000:	c648018c 	lwc1	$f8,396(s2)
    3004:	4600510d 	trunc.w.s	$f4,$f10
    3008:	46109502 	mul.s	$f20,$f18,$f16
    300c:	44192000 	mfc1	t9,$f4
    3010:	00000000 	nop
    3014:	00195c00 	sll	t3,t9,0x10
    3018:	000b7403 	sra	t6,t3,0x10
    301c:	01d10019 	multu	t6,s1
    3020:	4600a182 	mul.s	$f6,$f20,$f0
    3024:	00000000 	nop
    3028:	46064582 	mul.s	$f22,$f8,$f6
    302c:	0000c012 	mflo	t8
    3030:	03082021 	addu	a0,t8,t0
    3034:	00042400 	sll	a0,a0,0x10
    3038:	0c000000 	jal	0 <func_8091BB00>
    303c:	00042403 	sra	a0,a0,0x10
    3040:	02340019 	multu	s1,s4
    3044:	4600a482 	mul.s	$f18,$f20,$f0
    3048:	c65001a0 	lwc1	$f16,416(s2)
    304c:	c64e0198 	lwc1	$f14,408(s2)
    3050:	3c063dcc 	lui	a2,0x3dcc
    3054:	461a8402 	mul.s	$f16,$f16,$f26
    3058:	3c073ecc 	lui	a3,0x3ecc
    305c:	34c6cccd 	ori	a2,a2,0xcccd
    3060:	46127602 	mul.s	$f24,$f14,$f18
    3064:	34e7cccd 	ori	a3,a3,0xcccd
    3068:	00004812 	mflo	t1
    306c:	02492021 	addu	a0,s2,t1
    3070:	44058000 	mfc1	a1,$f16
    3074:	0c000000 	jal	0 <func_8091BB00>
    3078:	248406ac 	addiu	a0,a0,1708
    307c:	c6440d64 	lwc1	$f4,3428(s2)
    3080:	02330019 	multu	s1,s3
    3084:	c6480d68 	lwc1	$f8,3432(s2)
    3088:	4604e483 	div.s	$f18,$f28,$f4
    308c:	4600b28d 	trunc.w.s	$f10,$f22
    3090:	4600418d 	trunc.w.s	$f6,$f8
    3094:	44055000 	mfc1	a1,$f10
    3098:	00005012 	mflo	t2
    309c:	024a8021 	addu	s0,s2,t2
    30a0:	44073000 	mfc1	a3,$f6
    30a4:	00052c00 	sll	a1,a1,0x10
    30a8:	00052c03 	sra	a1,a1,0x10
    30ac:	00073c00 	sll	a3,a3,0x10
    30b0:	00073c03 	sra	a3,a3,0x10
    30b4:	26040c6c 	addiu	a0,s0,3180
    30b8:	4600940d 	trunc.w.s	$f16,$f18
    30bc:	44068000 	mfc1	a2,$f16
    30c0:	00000000 	nop
    30c4:	00063400 	sll	a2,a2,0x10
    30c8:	0c000000 	jal	0 <func_8091BB00>
    30cc:	00063403 	sra	a2,a2,0x10
    30d0:	c6440d64 	lwc1	$f4,3428(s2)
    30d4:	c6480d68 	lwc1	$f8,3432(s2)
    30d8:	4600c28d 	trunc.w.s	$f10,$f24
    30dc:	26040c70 	addiu	a0,s0,3184
    30e0:	4604e483 	div.s	$f18,$f28,$f4
    30e4:	44055000 	mfc1	a1,$f10
    30e8:	4600418d 	trunc.w.s	$f6,$f8
    30ec:	00052c00 	sll	a1,a1,0x10
    30f0:	00052c03 	sra	a1,a1,0x10
    30f4:	44073000 	mfc1	a3,$f6
    30f8:	00000000 	nop
    30fc:	00073c00 	sll	a3,a3,0x10
    3100:	00073c03 	sra	a3,a3,0x10
    3104:	4600940d 	trunc.w.s	$f16,$f18
    3108:	44068000 	mfc1	a2,$f16
    310c:	00000000 	nop
    3110:	00063400 	sll	a2,a2,0x10
    3114:	0c000000 	jal	0 <func_8091BB00>
    3118:	00063403 	sra	a2,a2,0x10
    311c:	26310001 	addiu	s1,s1,1
    3120:	00118c00 	sll	s1,s1,0x10
    3124:	00118c03 	sra	s1,s1,0x10
    3128:	2a210029 	slti	at,s1,41
    312c:	5420ffa2 	bnezl	at,2fb8 <L8091EA54+0x64>
    3130:	c6460188 	lwc1	$f6,392(s2)
    3134:	3c010000 	lui	at,0x0
    3138:	c4200000 	lwc1	$f0,0(at)
    313c:	8658017a 	lh	t8,378(s2)
    3140:	3c073cf5 	lui	a3,0x3cf5
    3144:	44050000 	mfc1	a1,$f0
    3148:	44060000 	mfc1	a2,$f0
    314c:	2708ffff 	addiu	t0,t8,-1
    3150:	e65e0068 	swc1	$f30,104(s2)
    3154:	a648017a 	sh	t0,378(s2)
    3158:	34e7c28f 	ori	a3,a3,0xc28f
    315c:	0c000000 	jal	0 <func_8091BB00>
    3160:	264401a0 	addiu	a0,s2,416
    3164:	3c053ca3 	lui	a1,0x3ca3
    3168:	3c073c75 	lui	a3,0x3c75
    316c:	34e7c28f 	ori	a3,a3,0xc28f
    3170:	34a5d70a 	ori	a1,a1,0xd70a
    3174:	26440d6c 	addiu	a0,s2,3436
    3178:	0c000000 	jal	0 <func_8091BB00>
    317c:	3c063f00 	lui	a2,0x3f00
    3180:	8642017e 	lh	v0,382(s2)
    3184:	18400010 	blez	v0,31c8 <L8091EA54+0x274>
    3188:	28410028 	slti	at,v0,40
    318c:	1020000e 	beqz	at,31c8 <L8091EA54+0x274>
    3190:	26440050 	addiu	a0,s2,80
    3194:	3c010000 	lui	at,0x0
    3198:	c4360000 	lwc1	$f22,0(at)
    319c:	3c053d0f 	lui	a1,0x3d0f
    31a0:	34a55c29 	ori	a1,a1,0x5c29
    31a4:	4406b000 	mfc1	a2,$f22
    31a8:	0c000000 	jal	0 <func_8091BB00>
    31ac:	8e4701c0 	lw	a3,448(s2)
    31b0:	8649017e 	lh	t1,382(s2)
    31b4:	24010001 	li	at,1
    31b8:	5521000e 	bnel	t1,at,31f4 <L8091EA54+0x2a0>
    31bc:	3c0539eb 	lui	a1,0x39eb
    31c0:	1000000b 	b	31f0 <L8091EA54+0x29c>
    31c4:	e65e01c0 	swc1	$f30,448(s2)
    31c8:	14400009 	bnez	v0,31f0 <L8091EA54+0x29c>
    31cc:	3c010000 	lui	at,0x0
    31d0:	c4340000 	lwc1	$f20,0(at)
    31d4:	3c010000 	lui	at,0x0
    31d8:	c4360000 	lwc1	$f22,0(at)
    31dc:	4405a000 	mfc1	a1,$f20
    31e0:	26440050 	addiu	a0,s2,80
    31e4:	4406b000 	mfc1	a2,$f22
    31e8:	0c000000 	jal	0 <func_8091BB00>
    31ec:	8e4701c0 	lw	a3,448(s2)
    31f0:	3c0539eb 	lui	a1,0x39eb
    31f4:	3c063dcc 	lui	a2,0x3dcc
    31f8:	3c073727 	lui	a3,0x3727
    31fc:	34e7c5ac 	ori	a3,a3,0xc5ac
    3200:	34c6cccd 	ori	a2,a2,0xcccd
    3204:	34a5edfa 	ori	a1,a1,0xedfa
    3208:	0c000000 	jal	0 <func_8091BB00>
    320c:	264401c0 	addiu	a0,s2,448
    3210:	10000101 	b	3618 <L8091F118>
    3214:	86430158 	lh	v1,344(s2)

00003218 <L8091ED18>:
    3218:	3c0140a0 	lui	at,0x40a0
    321c:	4481d000 	mtc1	at,$f26
    3220:	3c010000 	lui	at,0x0
    3224:	c4360000 	lwc1	$f22,0(at)
    3228:	3c010000 	lui	at,0x0
    322c:	c4340000 	lwc1	$f20,0(at)
    3230:	00008825 	move	s1,zero
    3234:	2414000c 	li	s4,12
    3238:	24130006 	li	s3,6
    323c:	864a017e 	lh	t2,382(s2)
    3240:	1140000d 	beqz	t2,3278 <L8091ED18+0x60>
    3244:	00000000 	nop
    3248:	02340019 	multu	s1,s4
    324c:	c64a01a0 	lwc1	$f10,416(s2)
    3250:	4406b000 	mfc1	a2,$f22
    3254:	8e470d68 	lw	a3,3432(s2)
    3258:	461a5102 	mul.s	$f4,$f10,$f26
    325c:	00006012 	mflo	t4
    3260:	024c2021 	addu	a0,s2,t4
    3264:	44052000 	mfc1	a1,$f4
    3268:	0c000000 	jal	0 <func_8091BB00>
    326c:	248406ac 	addiu	a0,a0,1708
    3270:	1000000b 	b	32a0 <L8091ED18+0x88>
    3274:	00000000 	nop
    3278:	02340019 	multu	s1,s4
    327c:	c65201a0 	lwc1	$f18,416(s2)
    3280:	4406a000 	mfc1	a2,$f20
    3284:	3c0742c8 	lui	a3,0x42c8
    3288:	461a9402 	mul.s	$f16,$f18,$f26
    328c:	00006812 	mflo	t5
    3290:	024d2021 	addu	a0,s2,t5
    3294:	44058000 	mfc1	a1,$f16
    3298:	0c000000 	jal	0 <func_8091BB00>
    329c:	248406ac 	addiu	a0,a0,1708
    32a0:	02330019 	multu	s1,s3
    32a4:	26310001 	addiu	s1,s1,1
    32a8:	00118c00 	sll	s1,s1,0x10
    32ac:	00118c03 	sra	s1,s1,0x10
    32b0:	2a210029 	slti	at,s1,41
    32b4:	00007812 	mflo	t7
    32b8:	024f8021 	addu	s0,s2,t7
    32bc:	a6000c70 	sh	zero,3184(s0)
    32c0:	86190c70 	lh	t9,3184(s0)
    32c4:	1420ffdd 	bnez	at,323c <L8091ED18+0x24>
    32c8:	a6190c6c 	sh	t9,3180(s0)
    32cc:	864b017e 	lh	t3,382(s2)
    32d0:	e65e0d6c 	swc1	$f30,3436(s2)
    32d4:	3c0e0000 	lui	t6,0x0
    32d8:	1160001f 	beqz	t3,3358 <L8091ED18+0x140>
    32dc:	3c010000 	lui	at,0x0
    32e0:	8dce0000 	lw	t6,0(t6)
    32e4:	c4260000 	lwc1	$f6,0(at)
    32e8:	3c013f00 	lui	at,0x3f00
    32ec:	c5c801bc 	lwc1	$f8,444(t6)
    32f0:	44812000 	mtc1	at,$f4
    32f4:	3c053ac4 	lui	a1,0x3ac4
    32f8:	46064280 	add.s	$f10,$f8,$f6
    32fc:	4406b000 	mfc1	a2,$f22
    3300:	34a59ba6 	ori	a1,a1,0x9ba6
    3304:	26440050 	addiu	a0,s2,80
    3308:	e64a0028 	swc1	$f10,40(s2)
    330c:	8e470d64 	lw	a3,3428(s2)
    3310:	0c000000 	jal	0 <func_8091BB00>
    3314:	e64401a0 	swc1	$f4,416(s2)
    3318:	3c0539b7 	lui	a1,0x39b7
    331c:	4406e000 	mfc1	a2,$f28
    3320:	3c073792 	lui	a3,0x3792
    3324:	34e7ccf7 	ori	a3,a3,0xccf7
    3328:	34a58034 	ori	a1,a1,0x8034
    332c:	0c000000 	jal	0 <func_8091BB00>
    3330:	26440d64 	addiu	a0,s2,3428
    3334:	3c053dcc 	lui	a1,0x3dcc
    3338:	4406e000 	mfc1	a2,$f28
    333c:	3c073ba3 	lui	a3,0x3ba3
    3340:	34e7d70a 	ori	a3,a3,0xd70a
    3344:	34a5cccd 	ori	a1,a1,0xcccd
    3348:	0c000000 	jal	0 <func_8091BB00>
    334c:	26440d68 	addiu	a0,s2,3432
    3350:	100000b0 	b	3614 <L8091ED18+0x3fc>
    3354:	e65e0060 	swc1	$f30,96(s2)
    3358:	8644015a 	lh	a0,346(s2)
    335c:	3c010000 	lui	at,0x0
    3360:	c4320000 	lwc1	$f18,0(at)
    3364:	00042340 	sll	a0,a0,0xd
    3368:	00042400 	sll	a0,a0,0x10
    336c:	00042403 	sra	a0,a0,0x10
    3370:	0c000000 	jal	0 <func_8091BB00>
    3374:	e65201a0 	swc1	$f18,416(s2)
    3378:	46160202 	mul.s	$f8,$f0,$f22
    337c:	c65001a0 	lwc1	$f16,416(s2)
    3380:	8644015a 	lh	a0,346(s2)
    3384:	00042340 	sll	a0,a0,0xd
    3388:	00042400 	sll	a0,a0,0x10
    338c:	46088180 	add.s	$f6,$f16,$f8
    3390:	00042403 	sra	a0,a0,0x10
    3394:	0c000000 	jal	0 <func_8091BB00>
    3398:	e64601a0 	swc1	$f6,416(s2)
    339c:	3c010000 	lui	at,0x0
    33a0:	c4220000 	lwc1	$f2,0(at)
    33a4:	3c010000 	lui	at,0x0
    33a8:	c42a0000 	lwc1	$f10,0(at)
    33ac:	46020102 	mul.s	$f4,$f0,$f2
    33b0:	44071000 	mfc1	a3,$f2
    33b4:	26440050 	addiu	a0,s2,80
    33b8:	3c063f00 	lui	a2,0x3f00
    33bc:	46045480 	add.s	$f18,$f10,$f4
    33c0:	44059000 	mfc1	a1,$f18
    33c4:	0c000000 	jal	0 <func_8091BB00>
    33c8:	00000000 	nop
    33cc:	c6400060 	lwc1	$f0,96(s2)
    33d0:	c6500028 	lwc1	$f16,40(s2)
    33d4:	3c01c37a 	lui	at,0xc37a
    33d8:	44811000 	mtc1	at,$f2
    33dc:	46008200 	add.s	$f8,$f16,$f0
    33e0:	241800ce 	li	t8,206
    33e4:	2408003c 	li	t0,60
    33e8:	461c0181 	sub.s	$f6,$f0,$f28
    33ec:	e6480028 	swc1	$f8,40(s2)
    33f0:	c64a0028 	lwc1	$f10,40(s2)
    33f4:	26441010 	addiu	a0,s2,4112
    33f8:	e6460060 	swc1	$f6,96(s2)
    33fc:	4602503c 	c.lt.s	$f10,$f2
    3400:	240538f7 	li	a1,14583
    3404:	45020084 	bc1fl	3618 <L8091F118>
    3408:	86430158 	lh	v1,344(s2)
    340c:	e6420028 	swc1	$f2,40(s2)
    3410:	e65e0060 	swc1	$f30,96(s2)
    3414:	a24001d1 	sb	zero,465(s2)
    3418:	a6580158 	sh	t8,344(s2)
    341c:	0c000000 	jal	0 <func_8091BB00>
    3420:	a648017e 	sh	t0,382(s2)
    3424:	8fa901bc 	lw	t1,444(sp)
    3428:	3c010001 	lui	at,0x1
    342c:	00008825 	move	s1,zero
    3430:	01215021 	addu	t2,t1,at
    3434:	3c0140e0 	lui	at,0x40e0
    3438:	4481e000 	mtc1	at,$f28
    343c:	3c010000 	lui	at,0x0
    3440:	c43a0000 	lwc1	$f26,0(at)
    3444:	3c010000 	lui	at,0x0
    3448:	c4380000 	lwc1	$f24,0(at)
    344c:	3c01c38c 	lui	at,0xc38c
    3450:	4481b000 	mtc1	at,$f22
    3454:	3c014040 	lui	at,0x4040
    3458:	4481a000 	mtc1	at,$f20
    345c:	afaa008c 	sw	t2,140(sp)
    3460:	26530024 	addiu	s3,s2,36
    3464:	27b000e0 	addiu	s0,sp,224
    3468:	44912000 	mtc1	s1,$f4
    346c:	e7be00c8 	swc1	$f30,200(sp)
    3470:	e7be00cc 	swc1	$f30,204(sp)
    3474:	46802020 	cvt.s.w	$f0,$f4
    3478:	00002825 	move	a1,zero
    347c:	46180482 	mul.s	$f18,$f0,$f24
    3480:	e7b200d0 	swc1	$f18,208(sp)
    3484:	461a0302 	mul.s	$f12,$f0,$f26
    3488:	0c000000 	jal	0 <func_8091BB00>
    348c:	00000000 	nop
    3490:	8fb5008c 	lw	s5,140(sp)
    3494:	27a400c8 	addiu	a0,sp,200
    3498:	0c000000 	jal	0 <func_8091BB00>
    349c:	02002825 	move	a1,s0
    34a0:	0c000000 	jal	0 <func_8091BB00>
    34a4:	4600e306 	mov.s	$f12,$f28
    34a8:	3c014080 	lui	at,0x4080
    34ac:	44818000 	mtc1	at,$f16
    34b0:	27a600d4 	addiu	a2,sp,212
    34b4:	3c0141f0 	lui	at,0x41f0
    34b8:	46100200 	add.s	$f8,$f0,$f16
    34bc:	240f012c 	li	t7,300
    34c0:	e7a800e4 	swc1	$f8,228(sp)
    34c4:	8e6d0000 	lw	t5,0(s3)
    34c8:	accd0000 	sw	t5,0(a2)
    34cc:	8e6c0004 	lw	t4,4(s3)
    34d0:	accc0004 	sw	t4,4(a2)
    34d4:	8e6d0008 	lw	t5,8(s3)
    34d8:	accd0008 	sw	t5,8(a2)
    34dc:	c7aa00e0 	lwc1	$f10,224(sp)
    34e0:	c7b000e4 	lwc1	$f16,228(sp)
    34e4:	c7a600d4 	lwc1	$f6,212(sp)
    34e8:	46145102 	mul.s	$f4,$f10,$f20
    34ec:	44815000 	mtc1	at,$f10
    34f0:	46148202 	mul.s	$f8,$f16,$f20
    34f4:	46043480 	add.s	$f18,$f6,$f4
    34f8:	c7a400d8 	lwc1	$f4,216(sp)
    34fc:	460a4181 	sub.s	$f6,$f8,$f10
    3500:	e7b200d4 	swc1	$f18,212(sp)
    3504:	46062480 	add.s	$f18,$f4,$f6
    3508:	4616903c 	c.lt.s	$f18,$f22
    350c:	e7b200d8 	swc1	$f18,216(sp)
    3510:	45020003 	bc1fl	3520 <L8091ED18+0x308>
    3514:	c7a800e8 	lwc1	$f8,232(sp)
    3518:	e7b600d8 	swc1	$f22,216(sp)
    351c:	c7a800e8 	lwc1	$f8,232(sp)
    3520:	01f1c823 	subu	t9,t7,s1
    3524:	44993000 	mtc1	t9,$f6
    3528:	46144282 	mul.s	$f10,$f8,$f20
    352c:	c7b000dc 	lwc1	$f16,220(sp)
    3530:	3c010000 	lui	at,0x0
    3534:	c4280000 	lwc1	$f8,0(at)
    3538:	3c010000 	lui	at,0x0
    353c:	24040003 	li	a0,3
    3540:	468034a0 	cvt.s.w	$f18,$f6
    3544:	02003825 	move	a3,s0
    3548:	460a8100 	add.s	$f4,$f16,$f10
    354c:	46089402 	mul.s	$f16,$f18,$f8
    3550:	c42a0000 	lwc1	$f10,0(at)
    3554:	e7a400dc 	swc1	$f4,220(sp)
    3558:	8ea51e10 	lw	a1,7696(s5)
    355c:	460a8100 	add.s	$f4,$f16,$f10
    3560:	0c000000 	jal	0 <func_8091BB00>
    3564:	e7a40010 	swc1	$f4,16(sp)
    3568:	26310001 	addiu	s1,s1,1
    356c:	00118c00 	sll	s1,s1,0x10
    3570:	00118c03 	sra	s1,s1,0x10
    3574:	2a21012c 	slti	at,s1,300
    3578:	1420ffbb 	bnez	at,3468 <L8091ED18+0x250>
    357c:	afb5008c 	sw	s5,140(sp)
    3580:	c6460024 	lwc1	$f6,36(s2)
    3584:	e7b60014 	swc1	$f22,20(sp)
    3588:	8fa601bc 	lw	a2,444(sp)
    358c:	e7a60010 	swc1	$f6,16(sp)
    3590:	c652002c 	lwc1	$f18,44(s2)
    3594:	240effff 	li	t6,-1
    3598:	24d01c24 	addiu	s0,a2,7204
    359c:	02002025 	move	a0,s0
    35a0:	afae0028 	sw	t6,40(sp)
    35a4:	afa00024 	sw	zero,36(sp)
    35a8:	afa00020 	sw	zero,32(sp)
    35ac:	afa0001c 	sw	zero,28(sp)
    35b0:	02402825 	move	a1,s2
    35b4:	2407005d 	li	a3,93
    35b8:	0c000000 	jal	0 <func_8091BB00>
    35bc:	e7b20018 	swc1	$f18,24(sp)
    35c0:	3c014348 	lui	at,0x4348
    35c4:	44818000 	mtc1	at,$f16
    35c8:	c6480024 	lwc1	$f8,36(s2)
    35cc:	e7b60010 	swc1	$f22,16(sp)
    35d0:	c644002c 	lwc1	$f4,44(s2)
    35d4:	46104280 	add.s	$f10,$f8,$f16
    35d8:	afa00024 	sw	zero,36(sp)
    35dc:	afa00020 	sw	zero,32(sp)
    35e0:	afa0001c 	sw	zero,28(sp)
    35e4:	44075000 	mfc1	a3,$f10
    35e8:	afa00018 	sw	zero,24(sp)
    35ec:	02002025 	move	a0,s0
    35f0:	8fa501bc 	lw	a1,444(sp)
    35f4:	2406005f 	li	a2,95
    35f8:	0c000000 	jal	0 <func_8091BB00>
    35fc:	e7a40014 	swc1	$f4,20(sp)
    3600:	0c000000 	jal	0 <func_8091BB00>
    3604:	24040021 	li	a0,33
    3608:	8fa401bc 	lw	a0,444(sp)
    360c:	0c000000 	jal	0 <func_8091BB00>
    3610:	82a51cbc 	lb	a1,7356(s5)
    3614:	86430158 	lh	v1,344(s2)

00003618 <L8091F118>:
    3618:	c6400050 	lwc1	$f0,80(s2)
    361c:	24010002 	li	at,2
    3620:	2414000c 	li	s4,12
    3624:	e6400058 	swc1	$f0,88(s2)
    3628:	10610008 	beq	v1,at,364c <L8091F118+0x34>
    362c:	e6400054 	swc1	$f0,84(s2)
    3630:	240100ca 	li	at,202
    3634:	10610005 	beq	v1,at,364c <L8091F118+0x34>
    3638:	24010003 	li	at,3
    363c:	10610003 	beq	v1,at,364c <L8091F118+0x34>
    3640:	24010004 	li	at,4
    3644:	5461005f 	bnel	v1,at,37c4 <L8091F118+0x1ac>
    3648:	8fbf007c 	lw	ra,124(sp)
    364c:	0c000000 	jal	0 <func_8091BB00>
    3650:	00000000 	nop
    3654:	3c010000 	lui	at,0x0
    3658:	c4260000 	lwc1	$f6,0(at)
    365c:	3c010000 	lui	at,0x0
    3660:	4606003c 	c.lt.s	$f0,$f6
    3664:	00000000 	nop
    3668:	45020056 	bc1fl	37c4 <L8091F118+0x1ac>
    366c:	8fbf007c 	lw	ra,124(sp)
    3670:	c4320000 	lwc1	$f18,0(at)
    3674:	c6480050 	lwc1	$f8,80(s2)
    3678:	3c180000 	lui	t8,0x0
    367c:	27180000 	addiu	t8,t8,0
    3680:	4608903c 	c.lt.s	$f18,$f8
    3684:	00000000 	nop
    3688:	4502004e 	bc1fl	37c4 <L8091F118+0x1ac>
    368c:	8fbf007c 	lw	ra,124(sp)
    3690:	8f090000 	lw	t1,0(t8)
    3694:	27b300b0 	addiu	s3,sp,176
    3698:	3c010001 	lui	at,0x1
    369c:	ae690000 	sw	t1,0(s3)
    36a0:	8f080004 	lw	t0,4(t8)
    36a4:	ae680004 	sw	t0,4(s3)
    36a8:	8f090008 	lw	t1,8(t8)
    36ac:	ae690008 	sw	t1,8(s3)
    36b0:	8faa01bc 	lw	t2,444(sp)
    36b4:	01416021 	addu	t4,t2,at
    36b8:	afac008c 	sw	t4,140(sp)
    36bc:	864d0158 	lh	t5,344(s2)
    36c0:	29a100ca 	slti	at,t5,202
    36c4:	1420000b 	bnez	at,36f4 <L8091F118+0xdc>
    36c8:	3c010000 	lui	at,0x0
    36cc:	0c000000 	jal	0 <func_8091BB00>
    36d0:	c42c0000 	lwc1	$f12,0(at)
    36d4:	3c010000 	lui	at,0x0
    36d8:	c4300000 	lwc1	$f16,0(at)
    36dc:	c64a0f3c 	lwc1	$f10,3900(s2)
    36e0:	8fb5008c 	lw	s5,140(sp)
    36e4:	265001c8 	addiu	s0,s2,456
    36e8:	46100500 	add.s	$f20,$f0,$f16
    36ec:	1000001c 	b	3760 <L8091F118+0x148>
    36f0:	e7aa00c0 	swc1	$f10,192(sp)
    36f4:	3c0141a0 	lui	at,0x41a0
    36f8:	44816000 	mtc1	at,$f12
    36fc:	0c000000 	jal	0 <func_8091BB00>
    3700:	00000000 	nop
    3704:	4600010d 	trunc.w.s	$f4,$f0
    3708:	3c010000 	lui	at,0x0
    370c:	8fb5008c 	lw	s5,140(sp)
    3710:	c42c0000 	lwc1	$f12,0(at)
    3714:	44112000 	mfc1	s1,$f4
    3718:	00000000 	nop
    371c:	00118c00 	sll	s1,s1,0x10
    3720:	00118c03 	sra	s1,s1,0x10
    3724:	26310012 	addiu	s1,s1,18
    3728:	00118c00 	sll	s1,s1,0x10
    372c:	0c000000 	jal	0 <func_8091BB00>
    3730:	00118c03 	sra	s1,s1,0x10
    3734:	02340019 	multu	s1,s4
    3738:	3c010000 	lui	at,0x0
    373c:	c4260000 	lwc1	$f6,0(at)
    3740:	3c014120 	lui	at,0x4120
    3744:	44814000 	mtc1	at,$f8
    3748:	46060500 	add.s	$f20,$f0,$f6
    374c:	0000c812 	mflo	t9
    3750:	02598021 	addu	s0,s2,t9
    3754:	c6120d74 	lwc1	$f18,3444(s0)
    3758:	46089401 	sub.s	$f16,$f18,$f8
    375c:	e7b000c0 	swc1	$f16,192(sp)
    3760:	3c0142c8 	lui	at,0x42c8
    3764:	44812000 	mtc1	at,$f4
    3768:	c64a0050 	lwc1	$f10,80(s2)
    376c:	3c0141a0 	lui	at,0x41a0
    3770:	44819000 	mtc1	at,$f18
    3774:	46045182 	mul.s	$f6,$f10,$f4
    3778:	00000000 	nop
    377c:	46123582 	mul.s	$f22,$f6,$f18
    3780:	0c000000 	jal	0 <func_8091BB00>
    3784:	4600b306 	mov.s	$f12,$f22
    3788:	c6080d70 	lwc1	$f8,3440(s0)
    378c:	4600b306 	mov.s	$f12,$f22
    3790:	46080400 	add.s	$f16,$f0,$f8
    3794:	0c000000 	jal	0 <func_8091BB00>
    3798:	e7b000bc 	swc1	$f16,188(sp)
    379c:	c60a0d78 	lwc1	$f10,3448(s0)
    37a0:	24040003 	li	a0,3
    37a4:	27a600bc 	addiu	a2,sp,188
    37a8:	460a0100 	add.s	$f4,$f0,$f10
    37ac:	02603825 	move	a3,s3
    37b0:	e7a400c4 	swc1	$f4,196(sp)
    37b4:	8ea51e10 	lw	a1,7696(s5)
    37b8:	0c000000 	jal	0 <func_8091BB00>
    37bc:	e7b40010 	swc1	$f20,16(sp)
    37c0:	8fbf007c 	lw	ra,124(sp)
    37c4:	d7b40030 	ldc1	$f20,48(sp)
    37c8:	d7b60038 	ldc1	$f22,56(sp)
    37cc:	d7b80040 	ldc1	$f24,64(sp)
    37d0:	d7ba0048 	ldc1	$f26,72(sp)
    37d4:	d7bc0050 	ldc1	$f28,80(sp)
    37d8:	d7be0058 	ldc1	$f30,88(sp)
    37dc:	8fb00064 	lw	s0,100(sp)
    37e0:	8fb10068 	lw	s1,104(sp)
    37e4:	8fb2006c 	lw	s2,108(sp)
    37e8:	8fb30070 	lw	s3,112(sp)
    37ec:	8fb40074 	lw	s4,116(sp)
    37f0:	8fb50078 	lw	s5,120(sp)
    37f4:	03e00008 	jr	ra
    37f8:	27bd01b8 	addiu	sp,sp,440

000037fc <func_8091F2FC>:
    37fc:	27bdff68 	addiu	sp,sp,-152
    3800:	afb10054 	sw	s1,84(sp)
    3804:	afbf0064 	sw	ra,100(sp)
    3808:	afb40060 	sw	s4,96(sp)
    380c:	afb3005c 	sw	s3,92(sp)
    3810:	afb20058 	sw	s2,88(sp)
    3814:	afb00050 	sw	s0,80(sp)
    3818:	f7be0048 	sdc1	$f30,72(sp)
    381c:	f7bc0040 	sdc1	$f28,64(sp)
    3820:	f7ba0038 	sdc1	$f26,56(sp)
    3824:	f7b80030 	sdc1	$f24,48(sp)
    3828:	f7b60028 	sdc1	$f22,40(sp)
    382c:	f7b40020 	sdc1	$f20,32(sp)
    3830:	00a08825 	move	s1,a1
    3834:	00803825 	move	a3,a0
    3838:	8c881038 	lw	t0,4152(a0)
    383c:	00003025 	move	a2,zero
    3840:	00062180 	sll	a0,a2,0x6
    3844:	01041021 	addu	v0,t0,a0
    3848:	904e0016 	lbu	t6,22(v0)
    384c:	31cf0002 	andi	t7,t6,0x2
    3850:	11e00079 	beqz	t7,3a38 <func_8091F2FC+0x23c>
    3854:	00008025 	move	s0,zero
    3858:	2405fffd 	li	a1,-3
    385c:	8cf81038 	lw	t8,4152(a3)
    3860:	00101980 	sll	v1,s0,0x6
    3864:	26100001 	addiu	s0,s0,1
    3868:	03031021 	addu	v0,t8,v1
    386c:	90590016 	lbu	t9,22(v0)
    3870:	00108400 	sll	s0,s0,0x10
    3874:	00108403 	sra	s0,s0,0x10
    3878:	03254824 	and	t1,t9,a1
    387c:	a0490016 	sb	t1,22(v0)
    3880:	8cea1038 	lw	t2,4152(a3)
    3884:	2a010013 	slti	at,s0,19
    3888:	01431021 	addu	v0,t2,v1
    388c:	904b0015 	lbu	t3,21(v0)
    3890:	01656024 	and	t4,t3,a1
    3894:	1420fff1 	bnez	at,385c <func_8091F2FC+0x60>
    3898:	a04c0015 	sb	t4,21(v0)
    389c:	8ced1038 	lw	t5,4152(a3)
    38a0:	240f0005 	li	t7,5
    38a4:	3c010d80 	lui	at,0xd80
    38a8:	01a47021 	addu	t6,t5,a0
    38ac:	8dc20024 	lw	v0,36(t6)
    38b0:	a4ef0160 	sh	t7,352(a3)
    38b4:	34210600 	ori	at,at,0x600
    38b8:	8c430000 	lw	v1,0(v0)
    38bc:	24e41010 	addiu	a0,a3,4112
    38c0:	240538f4 	li	a1,14580
    38c4:	0003c380 	sll	t8,v1,0xe
    38c8:	07010013 	bgez	t8,3918 <func_8091F2FC+0x11c>
    38cc:	00616824 	and	t5,v1,at
    38d0:	a7a60096 	sh	a2,150(sp)
    38d4:	0c000000 	jal	0 <func_8091BB00>
    38d8:	afa70098 	sw	a3,152(sp)
    38dc:	8fa70098 	lw	a3,152(sp)
    38e0:	87a60096 	lh	a2,150(sp)
    38e4:	2419000f 	li	t9,15
    38e8:	a4f90172 	sh	t9,370(a3)
    38ec:	84e90172 	lh	t1,370(a3)
    38f0:	3c013f80 	lui	at,0x3f80
    38f4:	44812000 	mtc1	at,$f4
    38f8:	240b0064 	li	t3,100
    38fc:	240c0028 	li	t4,40
    3900:	252a0001 	addiu	t2,t1,1
    3904:	a4ea0174 	sh	t2,372(a3)
    3908:	a4eb0158 	sh	t3,344(a3)
    390c:	a4ec017e 	sh	t4,382(a3)
    3910:	10000004 	b	3924 <func_8091F2FC+0x128>
    3914:	e4e401a8 	swc1	$f4,424(a3)
    3918:	11a00002 	beqz	t5,3924 <func_8091F2FC+0x128>
    391c:	240e0005 	li	t6,5
    3920:	a0ee01d2 	sb	t6,466(a3)
    3924:	3c010000 	lui	at,0x0
    3928:	c4260000 	lwc1	$f6,0(at)
    392c:	3c010001 	lui	at,0x1
    3930:	02219821 	addu	s3,s1,at
    3934:	3c010000 	lui	at,0x0
    3938:	e4e601e0 	swc1	$f6,480(a3)
    393c:	c43e0000 	lwc1	$f30,0(at)
    3940:	3c010000 	lui	at,0x0
    3944:	c43c0000 	lwc1	$f28,0(at)
    3948:	3c014080 	lui	at,0x4080
    394c:	4481d000 	mtc1	at,$f26
    3950:	3c0140e0 	lui	at,0x40e0
    3954:	4481c000 	mtc1	at,$f24
    3958:	00067840 	sll	t7,a2,0x1
    395c:	000fc080 	sll	t8,t7,0x2
    3960:	3c014040 	lui	at,0x4040
    3964:	4481b000 	mtc1	at,$f22
    3968:	030fc023 	subu	t8,t8,t7
    396c:	0018c080 	sll	t8,t8,0x2
    3970:	3c014100 	lui	at,0x4100
    3974:	00f89021 	addu	s2,a3,t8
    3978:	4481a000 	mtc1	at,$f20
    397c:	26520d70 	addiu	s2,s2,3440
    3980:	27b10084 	addiu	s1,sp,132
    3984:	00008025 	move	s0,zero
    3988:	27b40078 	addiu	s4,sp,120
    398c:	0c000000 	jal	0 <func_8091BB00>
    3990:	4600a306 	mov.s	$f12,$f20
    3994:	e7a00078 	swc1	$f0,120(sp)
    3998:	0c000000 	jal	0 <func_8091BB00>
    399c:	4600c306 	mov.s	$f12,$f24
    39a0:	461a0200 	add.s	$f8,$f0,$f26
    39a4:	4600a306 	mov.s	$f12,$f20
    39a8:	0c000000 	jal	0 <func_8091BB00>
    39ac:	e7a8007c 	swc1	$f8,124(sp)
    39b0:	e7a00080 	swc1	$f0,128(sp)
    39b4:	8e490000 	lw	t1,0(s2)
    39b8:	4600e306 	mov.s	$f12,$f28
    39bc:	ae290000 	sw	t1,0(s1)
    39c0:	8e590004 	lw	t9,4(s2)
    39c4:	ae390004 	sw	t9,4(s1)
    39c8:	8e490008 	lw	t1,8(s2)
    39cc:	ae290008 	sw	t1,8(s1)
    39d0:	c7b00078 	lwc1	$f16,120(sp)
    39d4:	c7aa0084 	lwc1	$f10,132(sp)
    39d8:	c7a6008c 	lwc1	$f6,140(sp)
    39dc:	46168482 	mul.s	$f18,$f16,$f22
    39e0:	00000000 	nop
    39e4:	46160202 	mul.s	$f8,$f0,$f22
    39e8:	46125100 	add.s	$f4,$f10,$f18
    39ec:	46083400 	add.s	$f16,$f6,$f8
    39f0:	e7a40084 	swc1	$f4,132(sp)
    39f4:	0c000000 	jal	0 <func_8091BB00>
    39f8:	e7b0008c 	swc1	$f16,140(sp)
    39fc:	461e0280 	add.s	$f10,$f0,$f30
    3a00:	8e651e10 	lw	a1,7696(s3)
    3a04:	24040003 	li	a0,3
    3a08:	02203025 	move	a2,s1
    3a0c:	e7aa0010 	swc1	$f10,16(sp)
    3a10:	0c000000 	jal	0 <func_8091BB00>
    3a14:	02803825 	move	a3,s4
    3a18:	26100001 	addiu	s0,s0,1
    3a1c:	00108400 	sll	s0,s0,0x10
    3a20:	00108403 	sra	s0,s0,0x10
    3a24:	2a01000a 	slti	at,s0,10
    3a28:	1420ffd8 	bnez	at,398c <func_8091F2FC+0x190>
    3a2c:	00000000 	nop
    3a30:	10000010 	b	3a74 <func_8091F2FC+0x278>
    3a34:	8fbf0064 	lw	ra,100(sp)
    3a38:	90430015 	lbu	v1,21(v0)
    3a3c:	24c60001 	addiu	a2,a2,1
    3a40:	00063400 	sll	a2,a2,0x10
    3a44:	306a0002 	andi	t2,v1,0x2
    3a48:	11400006 	beqz	t2,3a64 <func_8091F2FC+0x268>
    3a4c:	00063403 	sra	a2,a2,0x10
    3a50:	306bfffd 	andi	t3,v1,0xfffd
    3a54:	a04b0015 	sb	t3,21(v0)
    3a58:	240c0005 	li	t4,5
    3a5c:	10000004 	b	3a70 <func_8091F2FC+0x274>
    3a60:	a0ec01d2 	sb	t4,466(a3)
    3a64:	28c10013 	slti	at,a2,19
    3a68:	5420ff76 	bnezl	at,3844 <func_8091F2FC+0x48>
    3a6c:	00062180 	sll	a0,a2,0x6
    3a70:	8fbf0064 	lw	ra,100(sp)
    3a74:	d7b40020 	ldc1	$f20,32(sp)
    3a78:	d7b60028 	ldc1	$f22,40(sp)
    3a7c:	d7b80030 	ldc1	$f24,48(sp)
    3a80:	d7ba0038 	ldc1	$f26,56(sp)
    3a84:	d7bc0040 	ldc1	$f28,64(sp)
    3a88:	d7be0048 	ldc1	$f30,72(sp)
    3a8c:	8fb00050 	lw	s0,80(sp)
    3a90:	8fb10054 	lw	s1,84(sp)
    3a94:	8fb20058 	lw	s2,88(sp)
    3a98:	8fb3005c 	lw	s3,92(sp)
    3a9c:	8fb40060 	lw	s4,96(sp)
    3aa0:	03e00008 	jr	ra
    3aa4:	27bd0098 	addiu	sp,sp,152

00003aa8 <func_8091F5A8>:
    3aa8:	27bdff60 	addiu	sp,sp,-160
    3aac:	afb00028 	sw	s0,40(sp)
    3ab0:	afbf002c 	sw	ra,44(sp)
    3ab4:	a3a0009f 	sb	zero,159(sp)
    3ab8:	8cae1c44 	lw	t6,7236(a1)
    3abc:	00808025 	move	s0,a0
    3ac0:	00a03025 	move	a2,a1
    3ac4:	00a02025 	move	a0,a1
    3ac8:	00002825 	move	a1,zero
    3acc:	afa600a4 	sw	a2,164(sp)
    3ad0:	0c000000 	jal	0 <func_8091BB00>
    3ad4:	afae0074 	sw	t6,116(sp)
    3ad8:	afa20070 	sw	v0,112(sp)
    3adc:	86030f60 	lh	v1,3936(s0)
    3ae0:	28610004 	slti	at,v1,4
    3ae4:	10200004 	beqz	at,3af8 <func_8091F5A8+0x50>
    3ae8:	3c0142a0 	lui	at,0x42a0
    3aec:	44812000 	mtc1	at,$f4
    3af0:	86030f60 	lh	v1,3936(s0)
    3af4:	e6040f5c 	swc1	$f4,3932(s0)
    3af8:	246fffff 	addiu	t7,v1,-1
    3afc:	2de10005 	sltiu	at,t7,5
    3b00:	10200365 	beqz	at,4898 <L80920280+0x118>
    3b04:	000f7880 	sll	t7,t7,0x2
    3b08:	3c010000 	lui	at,0x0
    3b0c:	002f0821 	addu	at,at,t7
    3b10:	8c2f0000 	lw	t7,0(at)
    3b14:	01e00008 	jr	t7
    3b18:	00000000 	nop

00003b1c <L8091F61C>:
    3b1c:	8618017e 	lh	t8,382(s0)
    3b20:	24010001 	li	at,1
    3b24:	8fa400a4 	lw	a0,164(sp)
    3b28:	17010003 	bne	t8,at,3b38 <L8091F61C+0x1c>
    3b2c:	2405403f 	li	a1,16447
    3b30:	0c000000 	jal	0 <func_8091BB00>
    3b34:	00003025 	move	a2,zero
    3b38:	8fa20074 	lw	v0,116(sp)
    3b3c:	3c014220 	lui	at,0x4220
    3b40:	44811000 	mtc1	at,$f2
    3b44:	3c014334 	lui	at,0x4334
    3b48:	44813000 	mtc1	at,$f6
    3b4c:	c44c002c 	lwc1	$f12,44(v0)
    3b50:	3c014334 	lui	at,0x4334
    3b54:	46066381 	sub.s	$f14,$f12,$f6
    3b58:	46007385 	abs.s	$f14,$f14
    3b5c:	4602703c 	c.lt.s	$f14,$f2
    3b60:	00000000 	nop
    3b64:	4502000a 	bc1fl	3b90 <L8091F61C+0x74>
    3b68:	3c01c334 	lui	at,0xc334
    3b6c:	c4480024 	lwc1	$f8,36(v0)
    3b70:	44815000 	mtc1	at,$f10
    3b74:	00000000 	nop
    3b78:	460a4001 	sub.s	$f0,$f8,$f10
    3b7c:	46000005 	abs.s	$f0,$f0
    3b80:	4602003c 	c.lt.s	$f0,$f2
    3b84:	00000000 	nop
    3b88:	45010028 	bc1t	3c2c <L8091F61C+0x110>
    3b8c:	3c01c334 	lui	at,0xc334
    3b90:	44819000 	mtc1	at,$f18
    3b94:	3c014334 	lui	at,0x4334
    3b98:	46126401 	sub.s	$f16,$f12,$f18
    3b9c:	46008405 	abs.s	$f16,$f16
    3ba0:	4602803c 	c.lt.s	$f16,$f2
    3ba4:	00000000 	nop
    3ba8:	4502000b 	bc1fl	3bd8 <L8091F61C+0xbc>
    3bac:	4602703c 	c.lt.s	$f14,$f2
    3bb0:	c4440024 	lwc1	$f4,36(v0)
    3bb4:	44813000 	mtc1	at,$f6
    3bb8:	00000000 	nop
    3bbc:	46062001 	sub.s	$f0,$f4,$f6
    3bc0:	46000005 	abs.s	$f0,$f0
    3bc4:	4602003c 	c.lt.s	$f0,$f2
    3bc8:	00000000 	nop
    3bcc:	45030018 	bc1tl	3c30 <L8091F61C+0x114>
    3bd0:	8fa400a4 	lw	a0,164(sp)
    3bd4:	4602703c 	c.lt.s	$f14,$f2
    3bd8:	00000000 	nop
    3bdc:	45020009 	bc1fl	3c04 <L8091F61C+0xe8>
    3be0:	4602803c 	c.lt.s	$f16,$f2
    3be4:	c4480024 	lwc1	$f8,36(v0)
    3be8:	46124001 	sub.s	$f0,$f8,$f18
    3bec:	46000005 	abs.s	$f0,$f0
    3bf0:	4602003c 	c.lt.s	$f0,$f2
    3bf4:	00000000 	nop
    3bf8:	4503000d 	bc1tl	3c30 <L8091F61C+0x114>
    3bfc:	8fa400a4 	lw	a0,164(sp)
    3c00:	4602803c 	c.lt.s	$f16,$f2
    3c04:	00000000 	nop
    3c08:	45000323 	bc1f	4898 <L80920280+0x118>
    3c0c:	00000000 	nop
    3c10:	c44a0024 	lwc1	$f10,36(v0)
    3c14:	46125001 	sub.s	$f0,$f10,$f18
    3c18:	46000005 	abs.s	$f0,$f0
    3c1c:	4602003c 	c.lt.s	$f0,$f2
    3c20:	00000000 	nop
    3c24:	4500031c 	bc1f	4898 <L80920280+0x118>
    3c28:	00000000 	nop
    3c2c:	8fa400a4 	lw	a0,164(sp)
    3c30:	0c000000 	jal	0 <func_8091BB00>
    3c34:	24851d64 	addiu	a1,a0,7524
    3c38:	8fa400a4 	lw	a0,164(sp)
    3c3c:	02002825 	move	a1,s0
    3c40:	0c000000 	jal	0 <func_8091BB00>
    3c44:	24060008 	li	a2,8
    3c48:	0c000000 	jal	0 <func_8091BB00>
    3c4c:	8fa400a4 	lw	a0,164(sp)
    3c50:	a6020f62 	sh	v0,3938(s0)
    3c54:	8fa400a4 	lw	a0,164(sp)
    3c58:	00002825 	move	a1,zero
    3c5c:	0c000000 	jal	0 <func_8091BB00>
    3c60:	24060001 	li	a2,1
    3c64:	8fa400a4 	lw	a0,164(sp)
    3c68:	86050f62 	lh	a1,3938(s0)
    3c6c:	0c000000 	jal	0 <func_8091BB00>
    3c70:	24060007 	li	a2,7
    3c74:	a600015a 	sh	zero,346(s0)
    3c78:	44802000 	mtc1	zero,$f4
    3c7c:	8609015a 	lh	t1,346(s0)
    3c80:	3c030000 	lui	v1,0x0
    3c84:	24190002 	li	t9,2
    3c88:	24080032 	li	t0,50
    3c8c:	240a721a 	li	t2,29210
    3c90:	24630000 	addiu	v1,v1,0
    3c94:	a6190f60 	sh	t9,3936(s0)
    3c98:	a6080182 	sh	t0,386(s0)
    3c9c:	a60a0032 	sh	t2,50(s0)
    3ca0:	e6040068 	swc1	$f4,104(s0)
    3ca4:	a609015c 	sh	t1,348(s0)
    3ca8:	8c6b0000 	lw	t3,0(v1)
    3cac:	240c7530 	li	t4,30000
    3cb0:	3c041032 	lui	a0,0x1032
    3cb4:	a5600158 	sh	zero,344(t3)
    3cb8:	8c6d0000 	lw	t5,0(v1)
    3cbc:	348400ff 	ori	a0,a0,0xff
    3cc0:	0c000000 	jal	0 <func_8091BB00>
    3cc4:	a5ac017e 	sh	t4,382(t5)
    3cc8:	0c000000 	jal	0 <func_8091BB00>
    3ccc:	8fa400a4 	lw	a0,164(sp)

00003cd0 <L8091F7D0>:
    3cd0:	8fa30074 	lw	v1,116(sp)
    3cd4:	3c014334 	lui	at,0x4334
    3cd8:	44813000 	mtc1	at,$f6
    3cdc:	3c01c302 	lui	at,0xc302
    3ce0:	44814000 	mtc1	at,$f8
    3ce4:	3c01c3d4 	lui	at,0xc3d4
    3ce8:	a4600032 	sh	zero,50(v1)
    3cec:	44805000 	mtc1	zero,$f10
    3cf0:	44812000 	mtc1	at,$f4
    3cf4:	846e0032 	lh	t6,50(v1)
    3cf8:	3c01c33e 	lui	at,0xc33e
    3cfc:	e4660024 	swc1	$f6,36(v1)
    3d00:	44813000 	mtc1	at,$f6
    3d04:	e468002c 	swc1	$f8,44(v1)
    3d08:	3c014334 	lui	at,0x4334
    3d0c:	e46a0068 	swc1	$f10,104(v1)
    3d10:	a46e00b6 	sh	t6,182(v1)
    3d14:	44814000 	mtc1	at,$f8
    3d18:	e6040f68 	swc1	$f4,3944(s0)
    3d1c:	e6060f6c 	swc1	$f6,3948(s0)
    3d20:	86020182 	lh	v0,386(s0)
    3d24:	3c01c3a5 	lui	at,0xc3a5
    3d28:	e6080f70 	swc1	$f8,3952(s0)
    3d2c:	44812000 	mtc1	at,$f4
    3d30:	44803000 	mtc1	zero,$f6
    3d34:	c46a0024 	lwc1	$f10,36(v1)
    3d38:	e6040f78 	swc1	$f4,3960(s0)
    3d3c:	e6060f7c 	swc1	$f6,3964(s0)
    3d40:	14400006 	bnez	v0,3d5c <L8091F7D0+0x8c>
    3d44:	e60a0f74 	swc1	$f10,3956(s0)
    3d48:	240f0003 	li	t7,3
    3d4c:	a60f0f60 	sh	t7,3936(s0)
    3d50:	a600015a 	sh	zero,346(s0)
    3d54:	10000020 	b	3dd8 <L8091F7D0+0x108>
    3d58:	86020182 	lh	v0,386(s0)
    3d5c:	28410032 	slti	at,v0,50
    3d60:	1020001d 	beqz	at,3dd8 <L8091F7D0+0x108>
    3d64:	3c0141a0 	lui	at,0x41a0
    3d68:	44815000 	mtc1	at,$f10
    3d6c:	c6080f68 	lwc1	$f8,3944(s0)
    3d70:	3c014120 	lui	at,0x4120
    3d74:	44813000 	mtc1	at,$f6
    3d78:	460a4100 	add.s	$f4,$f8,$f10
    3d7c:	3c01c37a 	lui	at,0xc37a
    3d80:	44815000 	mtc1	at,$f10
    3d84:	3c010000 	lui	at,0x0
    3d88:	46062200 	add.s	$f8,$f4,$f6
    3d8c:	e7aa0068 	swc1	$f10,104(sp)
    3d90:	c42c0000 	lwc1	$f12,0(at)
    3d94:	e7a80064 	swc1	$f8,100(sp)
    3d98:	c6040f70 	lwc1	$f4,3952(s0)
    3d9c:	0c000000 	jal	0 <func_8091BB00>
    3da0:	e7a4006c 	swc1	$f4,108(sp)
    3da4:	3c014248 	lui	at,0x4248
    3da8:	44813000 	mtc1	at,$f6
    3dac:	3c010000 	lui	at,0x0
    3db0:	c4280000 	lwc1	$f8,0(at)
    3db4:	8fa400a4 	lw	a0,164(sp)
    3db8:	27a50064 	addiu	a1,sp,100
    3dbc:	46080280 	add.s	$f10,$f0,$f8
    3dc0:	24060000 	li	a2,0
    3dc4:	3c074120 	lui	a3,0x4120
    3dc8:	e7a60010 	swc1	$f6,16(sp)
    3dcc:	0c000000 	jal	0 <func_8091BB00>
    3dd0:	e7aa0014 	swc1	$f10,20(sp)
    3dd4:	86020182 	lh	v0,386(s0)
    3dd8:	24010028 	li	at,40
    3ddc:	144102ae 	bne	v0,at,4898 <L80920280+0x118>
    3de0:	3c040000 	lui	a0,0x0
    3de4:	24840000 	addiu	a0,a0,0
    3de8:	0c000000 	jal	0 <func_8091BB00>
    3dec:	240538f6 	li	a1,14582
    3df0:	100002a9 	b	4898 <L80920280+0x118>
    3df4:	00000000 	nop

00003df8 <L8091F8F8>:
    3df8:	3c053dcc 	lui	a1,0x3dcc
    3dfc:	3c073b03 	lui	a3,0x3b03
    3e00:	34e7126f 	ori	a3,a3,0x126f
    3e04:	34a5cccd 	ori	a1,a1,0xcccd
    3e08:	2604100c 	addiu	a0,s0,4108
    3e0c:	0c000000 	jal	0 <func_8091BB00>
    3e10:	3c063f80 	lui	a2,0x3f80
    3e14:	86180f64 	lh	t8,3940(s0)
    3e18:	3c080000 	lui	t0,0x0
    3e1c:	25080000 	addiu	t0,t0,0
    3e20:	0018c880 	sll	t9,t8,0x2
    3e24:	0338c823 	subu	t9,t9,t8
    3e28:	0019c880 	sll	t9,t9,0x2
    3e2c:	03284821 	addu	t1,t9,t0
    3e30:	8d2b0000 	lw	t3,0(t1)
    3e34:	860c0f64 	lh	t4,3940(s0)
    3e38:	24010005 	li	at,5
    3e3c:	ae0b01d4 	sw	t3,468(s0)
    3e40:	8d2a0004 	lw	t2,4(t1)
    3e44:	ae0a01d8 	sw	t2,472(s0)
    3e48:	8d2b0008 	lw	t3,8(t1)
    3e4c:	1581000f 	bne	t4,at,3e8c <L8091F8F8+0x94>
    3e50:	ae0b01dc 	sw	t3,476(s0)
    3e54:	8604015a 	lh	a0,346(s0)
    3e58:	00800821 	move	at,a0
    3e5c:	00042080 	sll	a0,a0,0x2
    3e60:	00812021 	addu	a0,a0,at
    3e64:	00042200 	sll	a0,a0,0x8
    3e68:	00042400 	sll	a0,a0,0x10
    3e6c:	0c000000 	jal	0 <func_8091BB00>
    3e70:	00042403 	sra	a0,a0,0x10
    3e74:	3c0141a0 	lui	at,0x41a0
    3e78:	44812000 	mtc1	at,$f4
    3e7c:	00000000 	nop
    3e80:	46040082 	mul.s	$f2,$f0,$f4
    3e84:	1000000f 	b	3ec4 <L8091F8F8+0xcc>
    3e88:	c60801d4 	lwc1	$f8,468(s0)
    3e8c:	8604015a 	lh	a0,346(s0)
    3e90:	00800821 	move	at,a0
    3e94:	00042080 	sll	a0,a0,0x2
    3e98:	00812021 	addu	a0,a0,at
    3e9c:	00042200 	sll	a0,a0,0x8
    3ea0:	00042400 	sll	a0,a0,0x10
    3ea4:	0c000000 	jal	0 <func_8091BB00>
    3ea8:	00042403 	sra	a0,a0,0x10
    3eac:	3c0140a0 	lui	at,0x40a0
    3eb0:	44813000 	mtc1	at,$f6
    3eb4:	00000000 	nop
    3eb8:	46060082 	mul.s	$f2,$f0,$f6
    3ebc:	00000000 	nop
    3ec0:	c60801d4 	lwc1	$f8,468(s0)
    3ec4:	c60a0f68 	lwc1	$f10,3944(s0)
    3ec8:	c60401d8 	lwc1	$f4,472(s0)
    3ecc:	c6060f6c 	lwc1	$f6,3948(s0)
    3ed0:	460a4301 	sub.s	$f12,$f8,$f10
    3ed4:	46062201 	sub.s	$f8,$f4,$f6
    3ed8:	46024280 	add.s	$f10,$f8,$f2
    3edc:	e7aa0094 	swc1	$f10,148(sp)
    3ee0:	c6060f70 	lwc1	$f6,3952(s0)
    3ee4:	c60401dc 	lwc1	$f4,476(s0)
    3ee8:	e7ac0098 	swc1	$f12,152(sp)
    3eec:	46062381 	sub.s	$f14,$f4,$f6
    3ef0:	0c000000 	jal	0 <func_8091BB00>
    3ef4:	e7ae0090 	swc1	$f14,144(sp)
    3ef8:	c7b00098 	lwc1	$f16,152(sp)
    3efc:	c7b20090 	lwc1	$f18,144(sp)
    3f00:	c7ac0094 	lwc1	$f12,148(sp)
    3f04:	46108202 	mul.s	$f8,$f16,$f16
    3f08:	e7a00088 	swc1	$f0,136(sp)
    3f0c:	46129282 	mul.s	$f10,$f18,$f18
    3f10:	460a4100 	add.s	$f4,$f8,$f10
    3f14:	e7a4003c 	swc1	$f4,60(sp)
    3f18:	0c000000 	jal	0 <func_8091BB00>
    3f1c:	46002384 	sqrt.s	$f14,$f4
    3f20:	3c010000 	lui	at,0x0
    3f24:	c7a20088 	lwc1	$f2,136(sp)
    3f28:	c4260000 	lwc1	$f6,0(at)
    3f2c:	e7a0008c 	swc1	$f0,140(sp)
    3f30:	c6041008 	lwc1	$f4,4104(s0)
    3f34:	46061202 	mul.s	$f8,$f2,$f6
    3f38:	26040032 	addiu	a0,s0,50
    3f3c:	24060005 	li	a2,5
    3f40:	4600218d 	trunc.w.s	$f6,$f4
    3f44:	4600428d 	trunc.w.s	$f10,$f8
    3f48:	44073000 	mfc1	a3,$f6
    3f4c:	44055000 	mfc1	a1,$f10
    3f50:	00073c00 	sll	a3,a3,0x10
    3f54:	00073c03 	sra	a3,a3,0x10
    3f58:	00052c00 	sll	a1,a1,0x10
    3f5c:	0c000000 	jal	0 <func_8091BB00>
    3f60:	00052c03 	sra	a1,a1,0x10
    3f64:	3c010000 	lui	at,0x0
    3f68:	c42a0000 	lwc1	$f10,0(at)
    3f6c:	c7a8008c 	lwc1	$f8,140(sp)
    3f70:	26040030 	addiu	a0,s0,48
    3f74:	24060005 	li	a2,5
    3f78:	460a4102 	mul.s	$f4,$f8,$f10
    3f7c:	c6081008 	lwc1	$f8,4104(s0)
    3f80:	4600428d 	trunc.w.s	$f10,$f8
    3f84:	4600218d 	trunc.w.s	$f6,$f4
    3f88:	44075000 	mfc1	a3,$f10
    3f8c:	44053000 	mfc1	a1,$f6
    3f90:	00073c00 	sll	a3,a3,0x10
    3f94:	00073c03 	sra	a3,a3,0x10
    3f98:	00052c00 	sll	a1,a1,0x10
    3f9c:	0c000000 	jal	0 <func_8091BB00>
    3fa0:	00052c03 	sra	a1,a1,0x10
    3fa4:	8603015a 	lh	v1,346(s0)
    3fa8:	24010096 	li	at,150
    3fac:	8fb90074 	lw	t9,116(sp)
    3fb0:	54610014 	bnel	v1,at,4004 <L8091F8F8+0x20c>
    3fb4:	28610096 	slti	at,v1,150
    3fb8:	c6040f74 	lwc1	$f4,3956(s0)
    3fbc:	c7260024 	lwc1	$f6,36(t9)
    3fc0:	c6080f78 	lwc1	$f8,3960(s0)
    3fc4:	8603015a 	lh	v1,346(s0)
    3fc8:	46062001 	sub.s	$f0,$f4,$f6
    3fcc:	c6040f7c 	lwc1	$f4,3964(s0)
    3fd0:	46000005 	abs.s	$f0,$f0
    3fd4:	e6000fb0 	swc1	$f0,4016(s0)
    3fd8:	8fa80074 	lw	t0,116(sp)
    3fdc:	c50a0028 	lwc1	$f10,40(t0)
    3fe0:	460a4001 	sub.s	$f0,$f8,$f10
    3fe4:	46000005 	abs.s	$f0,$f0
    3fe8:	e6000fb4 	swc1	$f0,4020(s0)
    3fec:	8fa90074 	lw	t1,116(sp)
    3ff0:	c526002c 	lwc1	$f6,44(t1)
    3ff4:	46062001 	sub.s	$f0,$f4,$f6
    3ff8:	46000005 	abs.s	$f0,$f0
    3ffc:	e6000fb8 	swc1	$f0,4024(s0)
    4000:	28610096 	slti	at,v1,150
    4004:	5420002f 	bnezl	at,40c4 <L8091F8F8+0x2cc>
    4008:	240100be 	li	at,190
    400c:	c6080fb0 	lwc1	$f8,4016(s0)
    4010:	c60a0fec 	lwc1	$f10,4076(s0)
    4014:	8faa0074 	lw	t2,116(sp)
    4018:	3c063dcc 	lui	a2,0x3dcc
    401c:	460a4102 	mul.s	$f4,$f8,$f10
    4020:	34c6cccd 	ori	a2,a2,0xcccd
    4024:	26040f74 	addiu	a0,s0,3956
    4028:	8d450024 	lw	a1,36(t2)
    402c:	44072000 	mfc1	a3,$f4
    4030:	0c000000 	jal	0 <func_8091BB00>
    4034:	00000000 	nop
    4038:	8fab0074 	lw	t3,116(sp)
    403c:	3c014248 	lui	at,0x4248
    4040:	44814000 	mtc1	at,$f8
    4044:	c5660028 	lwc1	$f6,40(t3)
    4048:	c6040fb4 	lwc1	$f4,4020(s0)
    404c:	3c063dcc 	lui	a2,0x3dcc
    4050:	46083280 	add.s	$f10,$f6,$f8
    4054:	c6060fec 	lwc1	$f6,4076(s0)
    4058:	34c6cccd 	ori	a2,a2,0xcccd
    405c:	26040f78 	addiu	a0,s0,3960
    4060:	46062202 	mul.s	$f8,$f4,$f6
    4064:	44055000 	mfc1	a1,$f10
    4068:	44074000 	mfc1	a3,$f8
    406c:	0c000000 	jal	0 <func_8091BB00>
    4070:	00000000 	nop
    4074:	c60a0fb8 	lwc1	$f10,4024(s0)
    4078:	c6040fec 	lwc1	$f4,4076(s0)
    407c:	8fac0074 	lw	t4,116(sp)
    4080:	3c063dcc 	lui	a2,0x3dcc
    4084:	46045182 	mul.s	$f6,$f10,$f4
    4088:	34c6cccd 	ori	a2,a2,0xcccd
    408c:	26040f7c 	addiu	a0,s0,3964
    4090:	8d85002c 	lw	a1,44(t4)
    4094:	44073000 	mfc1	a3,$f6
    4098:	0c000000 	jal	0 <func_8091BB00>
    409c:	00000000 	nop
    40a0:	3c053ca3 	lui	a1,0x3ca3
    40a4:	3c073a83 	lui	a3,0x3a83
    40a8:	34e7126f 	ori	a3,a3,0x126f
    40ac:	34a5d70a 	ori	a1,a1,0xd70a
    40b0:	26040fec 	addiu	a0,s0,4076
    40b4:	0c000000 	jal	0 <func_8091BB00>
    40b8:	3c063f80 	lui	a2,0x3f80
    40bc:	8603015a 	lh	v1,346(s0)
    40c0:	240100be 	li	at,190
    40c4:	14610005 	bne	v1,at,40dc <L8091F8F8+0x2e4>
    40c8:	3c040000 	lui	a0,0x0
    40cc:	24840000 	addiu	a0,a0,0
    40d0:	0c000000 	jal	0 <func_8091BB00>
    40d4:	240538f6 	li	a1,14582
    40d8:	8603015a 	lh	v1,346(s0)
    40dc:	28610097 	slti	at,v1,151
    40e0:	1420001f 	bnez	at,4160 <L8091F8F8+0x368>
    40e4:	286100b4 	slti	at,v1,180
    40e8:	1020001d 	beqz	at,4160 <L8091F8F8+0x368>
    40ec:	3c0141a0 	lui	at,0x41a0
    40f0:	44815000 	mtc1	at,$f10
    40f4:	c6080f68 	lwc1	$f8,3944(s0)
    40f8:	3c014120 	lui	at,0x4120
    40fc:	44813000 	mtc1	at,$f6
    4100:	460a4100 	add.s	$f4,$f8,$f10
    4104:	3c01c37a 	lui	at,0xc37a
    4108:	44815000 	mtc1	at,$f10
    410c:	3c010000 	lui	at,0x0
    4110:	46062200 	add.s	$f8,$f4,$f6
    4114:	e7aa005c 	swc1	$f10,92(sp)
    4118:	c42c0000 	lwc1	$f12,0(at)
    411c:	e7a80058 	swc1	$f8,88(sp)
    4120:	c6040f70 	lwc1	$f4,3952(s0)
    4124:	0c000000 	jal	0 <func_8091BB00>
    4128:	e7a40060 	swc1	$f4,96(sp)
    412c:	3c014248 	lui	at,0x4248
    4130:	44813000 	mtc1	at,$f6
    4134:	3c010000 	lui	at,0x0
    4138:	c4280000 	lwc1	$f8,0(at)
    413c:	8fa400a4 	lw	a0,164(sp)
    4140:	27a50058 	addiu	a1,sp,88
    4144:	46080280 	add.s	$f10,$f0,$f8
    4148:	24060000 	li	a2,0
    414c:	3c074120 	lui	a3,0x4120
    4150:	e7a60010 	swc1	$f6,16(sp)
    4154:	0c000000 	jal	0 <func_8091BB00>
    4158:	e7aa0014 	swc1	$f10,20(sp)
    415c:	8603015a 	lh	v1,346(s0)
    4160:	3c014580 	lui	at,0x4580
    4164:	44818000 	mtc1	at,$f16
    4168:	3c010000 	lui	at,0x0
    416c:	c42e0000 	lwc1	$f14,0(at)
    4170:	28610065 	slti	at,v1,101
    4174:	14200007 	bnez	at,4194 <L8091F8F8+0x39c>
    4178:	26040188 	addiu	a0,s0,392
    417c:	286100dc 	slti	at,v1,220
    4180:	50200005 	beqzl	at,4198 <L8091F8F8+0x3a0>
    4184:	2861015f 	slti	at,v1,351
    4188:	44806000 	mtc1	zero,$f12
    418c:	10000016 	b	41e8 <L8091F8F8+0x3f0>
    4190:	286100fb 	slti	at,v1,251
    4194:	2861015f 	slti	at,v1,351
    4198:	14200005 	bnez	at,41b0 <L8091F8F8+0x3b8>
    419c:	3c014000 	lui	at,0x4000
    41a0:	44816000 	mtc1	at,$f12
    41a4:	3c010000 	lui	at,0x0
    41a8:	1000000e 	b	41e4 <L8091F8F8+0x3ec>
    41ac:	c42e0000 	lwc1	$f14,0(at)
    41b0:	286100dd 	slti	at,v1,221
    41b4:	14200008 	bnez	at,41d8 <L8091F8F8+0x3e0>
    41b8:	3c0140e0 	lui	at,0x40e0
    41bc:	44816000 	mtc1	at,$f12
    41c0:	3c010000 	lui	at,0x0
    41c4:	c42e0000 	lwc1	$f14,0(at)
    41c8:	3c014600 	lui	at,0x4600
    41cc:	44818000 	mtc1	at,$f16
    41d0:	10000005 	b	41e8 <L8091F8F8+0x3f0>
    41d4:	286100fb 	slti	at,v1,251
    41d8:	3c014080 	lui	at,0x4080
    41dc:	44816000 	mtc1	at,$f12
    41e0:	00000000 	nop
    41e4:	286100fb 	slti	at,v1,251
    41e8:	1420000a 	bnez	at,4214 <L8091F8F8+0x41c>
    41ec:	3c0542c8 	lui	a1,0x42c8
    41f0:	3c063f80 	lui	a2,0x3f80
    41f4:	3c073f80 	lui	a3,0x3f80
    41f8:	e7ac0080 	swc1	$f12,128(sp)
    41fc:	e7ae0078 	swc1	$f14,120(sp)
    4200:	0c000000 	jal	0 <func_8091BB00>
    4204:	e7b0007c 	swc1	$f16,124(sp)
    4208:	c7ac0080 	lwc1	$f12,128(sp)
    420c:	c7ae0078 	lwc1	$f14,120(sp)
    4210:	c7b0007c 	lwc1	$f16,124(sp)
    4214:	86020f64 	lh	v0,3940(s0)
    4218:	44077000 	mfc1	a3,$f14
    421c:	26040068 	addiu	a0,s0,104
    4220:	28410005 	slti	at,v0,5
    4224:	10200011 	beqz	at,426c <L8091F8F8+0x474>
    4228:	3c063f80 	lui	a2,0x3f80
    422c:	c7b20094 	lwc1	$f18,148(sp)
    4230:	c7a4003c 	lwc1	$f4,60(sp)
    4234:	3c014220 	lui	at,0x4220
    4238:	46129182 	mul.s	$f6,$f18,$f18
    423c:	44811000 	mtc1	at,$f2
    4240:	244d0001 	addiu	t5,v0,1
    4244:	46062000 	add.s	$f0,$f4,$f6
    4248:	46000004 	sqrt.s	$f0,$f0
    424c:	4602003c 	c.lt.s	$f0,$f2
    4250:	00000000 	nop
    4254:	4502000b 	bc1fl	4284 <L8091F8F8+0x48c>
    4258:	44056000 	mfc1	a1,$f12
    425c:	44804000 	mtc1	zero,$f8
    4260:	a60d0f64 	sh	t5,3940(s0)
    4264:	10000006 	b	4280 <L8091F8F8+0x488>
    4268:	e6081008 	swc1	$f8,4104(s0)
    426c:	3c013fc0 	lui	at,0x3fc0
    4270:	44816000 	mtc1	at,$f12
    4274:	3c0144c0 	lui	at,0x44c0
    4278:	44818000 	mtc1	at,$f16
    427c:	00000000 	nop
    4280:	44056000 	mfc1	a1,$f12
    4284:	0c000000 	jal	0 <func_8091BB00>
    4288:	e7b0007c 	swc1	$f16,124(sp)
    428c:	c7b0007c 	lwc1	$f16,124(sp)
    4290:	26041008 	addiu	a0,s0,4104
    4294:	3c063f80 	lui	a2,0x3f80
    4298:	44058000 	mfc1	a1,$f16
    429c:	0c000000 	jal	0 <func_8091BB00>
    42a0:	3c074300 	lui	a3,0x4300
    42a4:	8603015a 	lh	v1,346(s0)
    42a8:	2401020d 	li	at,525
    42ac:	8fa400a4 	lw	a0,164(sp)
    42b0:	14610004 	bne	v1,at,42c4 <L8091F8F8+0x4cc>
    42b4:	02002825 	move	a1,s0
    42b8:	0c000000 	jal	0 <func_8091BB00>
    42bc:	24060002 	li	a2,2
    42c0:	8603015a 	lh	v1,346(s0)
    42c4:	2861021d 	slti	at,v1,541
    42c8:	1420003b 	bnez	at,43b8 <L8091F8F8+0x5c0>
    42cc:	240d0cec 	li	t5,3308
    42d0:	240e0004 	li	t6,4
    42d4:	a60e0f60 	sh	t6,3936(s0)
    42d8:	8fa400a4 	lw	a0,164(sp)
    42dc:	02002825 	move	a1,s0
    42e0:	0c000000 	jal	0 <func_8091BB00>
    42e4:	24060001 	li	a2,1
    42e8:	3c180000 	lui	t8,0x0
    42ec:	8f180000 	lw	t8,0(t8)
    42f0:	3c014270 	lui	at,0x4270
    42f4:	44817000 	mtc1	at,$f14
    42f8:	240f0001 	li	t7,1
    42fc:	3c014334 	lui	at,0x4334
    4300:	a30f01d1 	sb	t7,465(t8)
    4304:	8fb90074 	lw	t9,116(sp)
    4308:	44815000 	mtc1	at,$f10
    430c:	3c01c352 	lui	at,0xc352
    4310:	44812000 	mtc1	at,$f4
    4314:	e72a0024 	swc1	$f10,36(t9)
    4318:	8fa80074 	lw	t0,116(sp)
    431c:	24098000 	li	t1,-32768
    4320:	44803000 	mtc1	zero,$f6
    4324:	e504002c 	swc1	$f4,44(t0)
    4328:	8faa0074 	lw	t2,116(sp)
    432c:	3c014316 	lui	at,0x4316
    4330:	3c0d0000 	lui	t5,0x0
    4334:	a5490032 	sh	t1,50(t2)
    4338:	8fab0074 	lw	t3,116(sp)
    433c:	44814000 	mtc1	at,$f8
    4340:	44805000 	mtc1	zero,$f10
    4344:	856c0032 	lh	t4,50(t3)
    4348:	240e00c8 	li	t6,200
    434c:	3c0f0000 	lui	t7,0x0
    4350:	a56c00b6 	sh	t4,182(t3)
    4354:	e606100c 	swc1	$f6,4108(s0)
    4358:	8dad0000 	lw	t5,0(t5)
    435c:	2401fffe 	li	at,-2
    4360:	24080015 	li	t0,21
    4364:	e5a801a4 	swc1	$f8,420(t5)
    4368:	a60e0182 	sh	t6,386(s0)
    436c:	e60e0f5c 	swc1	$f14,3932(s0)
    4370:	e60a0068 	swc1	$f10,104(s0)
    4374:	8def0000 	lw	t7,0(t7)
    4378:	8e090004 	lw	t1,4(s0)
    437c:	3c030000 	lui	v1,0x0
    4380:	8df90024 	lw	t9,36(t7)
    4384:	01215024 	and	t2,t1,at
    4388:	ae190024 	sw	t9,36(s0)
    438c:	8df80028 	lw	t8,40(t7)
    4390:	ae180028 	sw	t8,40(s0)
    4394:	8df9002c 	lw	t9,44(t7)
    4398:	a6080158 	sh	t0,344(s0)
    439c:	ae0a0004 	sw	t2,4(s0)
    43a0:	ae19002c 	sw	t9,44(s0)
    43a4:	8c630000 	lw	v1,0(v1)
    43a8:	8c6c0004 	lw	t4,4(v1)
    43ac:	358b0001 	ori	t3,t4,0x1
    43b0:	10000013 	b	4400 <L8091FF00>
    43b4:	ac6b0004 	sw	t3,4(v1)
    43b8:	3c0e0000 	lui	t6,0x0
    43bc:	8dce0000 	lw	t6,0(t6)
    43c0:	3c0f0000 	lui	t7,0x0
    43c4:	44802000 	mtc1	zero,$f4
    43c8:	a5cd016e 	sh	t5,366(t6)
    43cc:	8def0000 	lw	t7,0(t7)
    43d0:	3c01447a 	lui	at,0x447a
    43d4:	3c180000 	lui	t8,0x0
    43d8:	e5e40190 	swc1	$f4,400(t7)
    43dc:	8f180000 	lw	t8,0(t8)
    43e0:	44813000 	mtc1	at,$f6
    43e4:	3c010000 	lui	at,0x0
    43e8:	3c190000 	lui	t9,0x0
    43ec:	e7060188 	swc1	$f6,392(t8)
    43f0:	8f390000 	lw	t9,0(t9)
    43f4:	c4280000 	lwc1	$f8,0(at)
    43f8:	10000127 	b	4898 <L80920280+0x118>
    43fc:	e728018c 	swc1	$f8,396(t9)

00004400 <L8091FF00>:
    4400:	86020182 	lh	v0,386(s0)
    4404:	3c014270 	lui	at,0x4270
    4408:	44817000 	mtc1	at,$f14
    440c:	284100a0 	slti	at,v0,160
    4410:	1420006d 	bnez	at,45c8 <L8091FF00+0x1c8>
    4414:	240e0001 	li	t6,1
    4418:	3c014316 	lui	at,0x4316
    441c:	44816000 	mtc1	at,$f12
    4420:	3c01c366 	lui	at,0xc366
    4424:	44815000 	mtc1	at,$f10
    4428:	3c01432a 	lui	at,0x432a
    442c:	44812000 	mtc1	at,$f4
    4430:	3c014220 	lui	at,0x4220
    4434:	44813000 	mtc1	at,$f6
    4438:	3c01c38c 	lui	at,0xc38c
    443c:	44814000 	mtc1	at,$f8
    4440:	e60e0f6c 	swc1	$f14,3948(s0)
    4444:	3c090000 	lui	t1,0x0
    4448:	e60c0f68 	swc1	$f12,3944(s0)
    444c:	e60a0f70 	swc1	$f10,3952(s0)
    4450:	e6040f74 	swc1	$f4,3956(s0)
    4454:	e6060f78 	swc1	$f6,3960(s0)
    4458:	e6080f7c 	swc1	$f8,3964(s0)
    445c:	8d290000 	lw	t1,0(t1)
    4460:	24080cec 	li	t0,3308
    4464:	3c0a0000 	lui	t2,0x0
    4468:	a528016e 	sh	t0,366(t1)
    446c:	8d4a0000 	lw	t2,0(t2)
    4470:	44805000 	mtc1	zero,$f10
    4474:	3c01447a 	lui	at,0x447a
    4478:	3c0c0000 	lui	t4,0x0
    447c:	e54a0190 	swc1	$f10,400(t2)
    4480:	8d8c0000 	lw	t4,0(t4)
    4484:	44812000 	mtc1	at,$f4
    4488:	3c010000 	lui	at,0x0
    448c:	3c0b0000 	lui	t3,0x0
    4490:	e5840188 	swc1	$f4,392(t4)
    4494:	8d6b0000 	lw	t3,0(t3)
    4498:	c4260000 	lwc1	$f6,0(at)
    449c:	240100a0 	li	at,160
    44a0:	e566018c 	swc1	$f6,396(t3)
    44a4:	86020182 	lh	v0,386(s0)
    44a8:	14410044 	bne	v0,at,45bc <L8091FF00+0x1bc>
    44ac:	3c010000 	lui	at,0x0
    44b0:	c4220000 	lwc1	$f2,0(at)
    44b4:	3c01c382 	lui	at,0xc382
    44b8:	44818000 	mtc1	at,$f16
    44bc:	c6040f68 	lwc1	$f4,3944(s0)
    44c0:	3c01431b 	lui	at,0x431b
    44c4:	44819000 	mtc1	at,$f18
    44c8:	3c014282 	lui	at,0x4282
    44cc:	460c2001 	sub.s	$f0,$f4,$f12
    44d0:	44814000 	mtc1	at,$f8
    44d4:	3c01c38c 	lui	at,0xc38c
    44d8:	44815000 	mtc1	at,$f10
    44dc:	e6080fd8 	swc1	$f8,4056(s0)
    44e0:	c6080f6c 	lwc1	$f8,3948(s0)
    44e4:	46000005 	abs.s	$f0,$f0
    44e8:	c6040f70 	lwc1	$f4,3952(s0)
    44ec:	46020182 	mul.s	$f6,$f0,$f2
    44f0:	460e4001 	sub.s	$f0,$f8,$f14
    44f4:	e60a0fdc 	swc1	$f10,4060(s0)
    44f8:	c6080f74 	lwc1	$f8,3956(s0)
    44fc:	e60c0fbc 	swc1	$f12,4028(s0)
    4500:	e60e0fc0 	swc1	$f14,4032(s0)
    4504:	46000005 	abs.s	$f0,$f0
    4508:	e6060fa4 	swc1	$f6,4004(s0)
    450c:	46020282 	mul.s	$f10,$f0,$f2
    4510:	46102001 	sub.s	$f0,$f4,$f16
    4514:	c6040f78 	lwc1	$f4,3960(s0)
    4518:	3c010000 	lui	at,0x0
    451c:	e6020fe8 	swc1	$f2,4072(s0)
    4520:	e6020fe4 	swc1	$f2,4068(s0)
    4524:	46000005 	abs.s	$f0,$f0
    4528:	e60a0fa8 	swc1	$f10,4008(s0)
    452c:	46020182 	mul.s	$f6,$f0,$f2
    4530:	46124001 	sub.s	$f0,$f8,$f18
    4534:	e6020fe0 	swc1	$f2,4064(s0)
    4538:	e6020fd0 	swc1	$f2,4048(s0)
    453c:	e6020fcc 	swc1	$f2,4044(s0)
    4540:	e6020fc8 	swc1	$f2,4040(s0)
    4544:	46000005 	abs.s	$f0,$f0
    4548:	e6060fac 	swc1	$f6,4012(s0)
    454c:	46020282 	mul.s	$f10,$f0,$f2
    4550:	c6060fd8 	lwc1	$f6,4056(s0)
    4554:	e6100fc4 	swc1	$f16,4036(s0)
    4558:	e6120fd4 	swc1	$f18,4052(s0)
    455c:	240d0001 	li	t5,1
    4560:	46062001 	sub.s	$f0,$f4,$f6
    4564:	c6040fdc 	lwc1	$f4,4060(s0)
    4568:	e60a0fb0 	swc1	$f10,4016(s0)
    456c:	c60a0f7c 	lwc1	$f10,3964(s0)
    4570:	46000005 	abs.s	$f0,$f0
    4574:	46020202 	mul.s	$f8,$f0,$f2
    4578:	46045001 	sub.s	$f0,$f10,$f4
    457c:	46000005 	abs.s	$f0,$f0
    4580:	e6080fb4 	swc1	$f8,4020(s0)
    4584:	46020182 	mul.s	$f6,$f0,$f2
    4588:	44804000 	mtc1	zero,$f8
    458c:	00000000 	nop
    4590:	e6080fec 	swc1	$f8,4076(s0)
    4594:	e6060fb8 	swc1	$f6,4024(s0)
    4598:	c42a0000 	lwc1	$f10,0(at)
    459c:	3c010000 	lui	at,0x0
    45a0:	44803000 	mtc1	zero,$f6
    45a4:	e60a0ff0 	swc1	$f10,4080(s0)
    45a8:	c4240000 	lwc1	$f4,0(at)
    45ac:	e6060d68 	swc1	$f6,3432(s0)
    45b0:	e6040d64 	swc1	$f4,3428(s0)
    45b4:	a3ad009f 	sb	t5,159(sp)
    45b8:	86020182 	lh	v0,386(s0)
    45bc:	3c010000 	lui	at,0x0
    45c0:	10000004 	b	45d4 <L8091FF00+0x1d4>
    45c4:	c4220000 	lwc1	$f2,0(at)
    45c8:	3c010000 	lui	at,0x0
    45cc:	c4220000 	lwc1	$f2,0(at)
    45d0:	a3ae009f 	sb	t6,159(sp)
    45d4:	24010032 	li	at,50
    45d8:	14410043 	bne	v0,at,46e8 <L8091FF00+0x2e8>
    45dc:	3c0142de 	lui	at,0x42de
    45e0:	44816000 	mtc1	at,$f12
    45e4:	3c014305 	lui	at,0x4305
    45e8:	44817000 	mtc1	at,$f14
    45ec:	3c01c33f 	lui	at,0xc33f
    45f0:	44818000 	mtc1	at,$f16
    45f4:	c6060f68 	lwc1	$f6,3944(s0)
    45f8:	3c014320 	lui	at,0x4320
    45fc:	44814000 	mtc1	at,$f8
    4600:	3c014268 	lui	at,0x4268
    4604:	460c3001 	sub.s	$f0,$f6,$f12
    4608:	44815000 	mtc1	at,$f10
    460c:	e6080fd4 	swc1	$f8,4052(s0)
    4610:	3c01c377 	lui	at,0xc377
    4614:	e60a0fd8 	swc1	$f10,4056(s0)
    4618:	c60a0f6c 	lwc1	$f10,3948(s0)
    461c:	46000005 	abs.s	$f0,$f0
    4620:	44812000 	mtc1	at,$f4
    4624:	46020202 	mul.s	$f8,$f0,$f2
    4628:	460e5001 	sub.s	$f0,$f10,$f14
    462c:	e6040fdc 	swc1	$f4,4060(s0)
    4630:	c6060f70 	lwc1	$f6,3952(s0)
    4634:	c60a0f74 	lwc1	$f10,3956(s0)
    4638:	240f0005 	li	t7,5
    463c:	46000005 	abs.s	$f0,$f0
    4640:	e6080fa4 	swc1	$f8,4004(s0)
    4644:	46020102 	mul.s	$f4,$f0,$f2
    4648:	46103001 	sub.s	$f0,$f6,$f16
    464c:	2418006e 	li	t8,110
    4650:	a60f0f60 	sh	t7,3936(s0)
    4654:	a6180182 	sh	t8,386(s0)
    4658:	3c010000 	lui	at,0x0
    465c:	46000005 	abs.s	$f0,$f0
    4660:	e6040fa8 	swc1	$f4,4008(s0)
    4664:	c6040fd4 	lwc1	$f4,4052(s0)
    4668:	46020202 	mul.s	$f8,$f0,$f2
    466c:	e60c0fbc 	swc1	$f12,4028(s0)
    4670:	46045001 	sub.s	$f0,$f10,$f4
    4674:	c60a0fd8 	lwc1	$f10,4056(s0)
    4678:	e60e0fc0 	swc1	$f14,4032(s0)
    467c:	e6100fc4 	swc1	$f16,4036(s0)
    4680:	46000005 	abs.s	$f0,$f0
    4684:	e6080fac 	swc1	$f8,4012(s0)
    4688:	46020182 	mul.s	$f6,$f0,$f2
    468c:	c6080f78 	lwc1	$f8,3960(s0)
    4690:	86020182 	lh	v0,386(s0)
    4694:	460a4001 	sub.s	$f0,$f8,$f10
    4698:	c6080fdc 	lwc1	$f8,4060(s0)
    469c:	e6060fb0 	swc1	$f6,4016(s0)
    46a0:	c6060f7c 	lwc1	$f6,3964(s0)
    46a4:	46000005 	abs.s	$f0,$f0
    46a8:	46020102 	mul.s	$f4,$f0,$f2
    46ac:	46083001 	sub.s	$f0,$f6,$f8
    46b0:	44804000 	mtc1	zero,$f8
    46b4:	46000005 	abs.s	$f0,$f0
    46b8:	e6040fb4 	swc1	$f4,4020(s0)
    46bc:	46020282 	mul.s	$f10,$f0,$f2
    46c0:	e60a0fb8 	swc1	$f10,4024(s0)
    46c4:	c4240000 	lwc1	$f4,0(at)
    46c8:	3c010000 	lui	at,0x0
    46cc:	e6040fcc 	swc1	$f4,4044(s0)
    46d0:	c4260000 	lwc1	$f6,0(at)
    46d4:	3c010000 	lui	at,0x0
    46d8:	e6080fec 	swc1	$f8,4076(s0)
    46dc:	e6060fe4 	swc1	$f6,4068(s0)
    46e0:	c42a0000 	lwc1	$f10,0(at)
    46e4:	e60a0ff0 	swc1	$f10,4080(s0)
    46e8:	24010096 	li	at,150
    46ec:	54410005 	bnel	v0,at,4704 <L8091FF00+0x304>
    46f0:	24010082 	li	at,130
    46f4:	0c000000 	jal	0 <func_8091BB00>
    46f8:	2404001b 	li	a0,27
    46fc:	86020182 	lh	v0,386(s0)
    4700:	24010082 	li	at,130
    4704:	14410064 	bne	v0,at,4898 <L80920280+0x118>
    4708:	8fa400a4 	lw	a0,164(sp)
    470c:	3c020600 	lui	v0,0x600
    4710:	24421010 	addiu	v0,v0,4112
    4714:	00024100 	sll	t0,v0,0x4
    4718:	00084f02 	srl	t1,t0,0x1c
    471c:	00095080 	sll	t2,t1,0x2
    4720:	3c0c0000 	lui	t4,0x0
    4724:	018a6021 	addu	t4,t4,t2
    4728:	3c0100ff 	lui	at,0xff
    472c:	8d8c0000 	lw	t4,0(t4)
    4730:	3421ffff 	ori	at,at,0xffff
    4734:	00415824 	and	t3,v0,at
    4738:	3c018000 	lui	at,0x8000
    473c:	240d00b4 	li	t5,180
    4740:	240e0080 	li	t6,128
    4744:	240f0028 	li	t7,40
    4748:	018b3021 	addu	a2,t4,t3
    474c:	00c13021 	addu	a2,a2,at
    4750:	afaf0018 	sw	t7,24(sp)
    4754:	afae0014 	sw	t6,20(sp)
    4758:	afad0010 	sw	t5,16(sp)
    475c:	24851d4c 	addiu	a1,a0,7500
    4760:	0c000000 	jal	0 <func_8091BB00>
    4764:	240700a0 	li	a3,160
    4768:	3c020000 	lui	v0,0x0
    476c:	24420000 	addiu	v0,v0,0
    4770:	94580ee2 	lhu	t8,3810(v0)
    4774:	37190010 	ori	t9,t8,0x10
    4778:	10000047 	b	4898 <L80920280+0x118>
    477c:	a4590ee2 	sh	t9,3810(v0)

00004780 <L80920280>:
    4780:	3c0142de 	lui	at,0x42de
    4784:	44816000 	mtc1	at,$f12
    4788:	3c014305 	lui	at,0x4305
    478c:	44817000 	mtc1	at,$f14
    4790:	3c01c33f 	lui	at,0xc33f
    4794:	44818000 	mtc1	at,$f16
    4798:	3c014320 	lui	at,0x4320
    479c:	44812000 	mtc1	at,$f4
    47a0:	24080001 	li	t0,1
    47a4:	a3a8009f 	sb	t0,159(sp)
    47a8:	3c014268 	lui	at,0x4268
    47ac:	44813000 	mtc1	at,$f6
    47b0:	3c01c377 	lui	at,0xc377
    47b4:	44814000 	mtc1	at,$f8
    47b8:	86020182 	lh	v0,386(s0)
    47bc:	24010064 	li	at,100
    47c0:	e60c0fbc 	swc1	$f12,4028(s0)
    47c4:	e60e0fc0 	swc1	$f14,4032(s0)
    47c8:	e6100fc4 	swc1	$f16,4036(s0)
    47cc:	e6040fd4 	swc1	$f4,4052(s0)
    47d0:	e6060fd8 	swc1	$f6,4056(s0)
    47d4:	1441000a 	bne	v0,at,4800 <L80920280+0x80>
    47d8:	e6080fdc 	swc1	$f8,4060(s0)
    47dc:	3c0a0000 	lui	t2,0x0
    47e0:	8d4a0000 	lw	t2,0(t2)
    47e4:	24090065 	li	t1,101
    47e8:	3c0b0000 	lui	t3,0x0
    47ec:	a5490158 	sh	t1,344(t2)
    47f0:	8d6b0000 	lw	t3,0(t3)
    47f4:	240c0032 	li	t4,50
    47f8:	a56c017e 	sh	t4,382(t3)
    47fc:	86020182 	lh	v0,386(s0)
    4800:	24010014 	li	at,20
    4804:	14410024 	bne	v0,at,4898 <L80920280+0x118>
    4808:	8fa400a4 	lw	a0,164(sp)
    480c:	0c000000 	jal	0 <func_8091BB00>
    4810:	00002825 	move	a1,zero
    4814:	26030f68 	addiu	v1,s0,3944
    4818:	8c6e0000 	lw	t6,0(v1)
    481c:	00003025 	move	a2,zero
    4820:	ac4e005c 	sw	t6,92(v0)
    4824:	8c6d0004 	lw	t5,4(v1)
    4828:	ac4d0060 	sw	t5,96(v0)
    482c:	8c6e0008 	lw	t6,8(v1)
    4830:	ac4e0064 	sw	t6,100(v0)
    4834:	8c780000 	lw	t8,0(v1)
    4838:	ac580074 	sw	t8,116(v0)
    483c:	8c6f0004 	lw	t7,4(v1)
    4840:	ac4f0078 	sw	t7,120(v0)
    4844:	8c780008 	lw	t8,8(v1)
    4848:	ac58007c 	sw	t8,124(v0)
    484c:	8e080f74 	lw	t0,3956(s0)
    4850:	ac480050 	sw	t0,80(v0)
    4854:	8e190f78 	lw	t9,3960(s0)
    4858:	ac590054 	sw	t9,84(v0)
    485c:	8e080f7c 	lw	t0,3964(s0)
    4860:	ac480058 	sw	t0,88(v0)
    4864:	86050f62 	lh	a1,3938(s0)
    4868:	0c000000 	jal	0 <func_8091BB00>
    486c:	8fa400a4 	lw	a0,164(sp)
    4870:	8fa400a4 	lw	a0,164(sp)
    4874:	a6000f62 	sh	zero,3938(s0)
    4878:	86090f62 	lh	t1,3938(s0)
    487c:	24851d64 	addiu	a1,a0,7524
    4880:	0c000000 	jal	0 <func_8091BB00>
    4884:	a6090f60 	sh	t1,3936(s0)
    4888:	8fa400a4 	lw	a0,164(sp)
    488c:	02002825 	move	a1,s0
    4890:	0c000000 	jal	0 <func_8091BB00>
    4894:	24060007 	li	a2,7
    4898:	3c020000 	lui	v0,0x0
    489c:	24420000 	addiu	v0,v0,0
    48a0:	8c430000 	lw	v1,0(v0)
    48a4:	3c014334 	lui	at,0x4334
    48a8:	26190f74 	addiu	t9,s0,3956
    48ac:	846a0158 	lh	t2,344(v1)
    48b0:	55400015 	bnezl	t2,4908 <L80920280+0x188>
    48b4:	86180f62 	lh	t8,3938(s0)
    48b8:	44815000 	mtc1	at,$f10
    48bc:	3c01c3b4 	lui	at,0xc3b4
    48c0:	44812000 	mtc1	at,$f4
    48c4:	e46a0024 	swc1	$f10,36(v1)
    48c8:	8c4c0000 	lw	t4,0(v0)
    48cc:	44803000 	mtc1	zero,$f6
    48d0:	e584002c 	swc1	$f4,44(t4)
    48d4:	8c430000 	lw	v1,0(v0)
    48d8:	8c6d0024 	lw	t5,36(v1)
    48dc:	8c6b0028 	lw	t3,40(v1)
    48e0:	ac6d0100 	sw	t5,256(v1)
    48e4:	8c6d002c 	lw	t5,44(v1)
    48e8:	ac6b0104 	sw	t3,260(v1)
    48ec:	ac6d0108 	sw	t5,264(v1)
    48f0:	8c4e0000 	lw	t6,0(v0)
    48f4:	e5c60068 	swc1	$f6,104(t6)
    48f8:	8c430000 	lw	v1,0(v0)
    48fc:	846f008a 	lh	t7,138(v1)
    4900:	a46f00b6 	sh	t7,182(v1)
    4904:	86180f62 	lh	t8,3938(s0)
    4908:	53000096 	beqzl	t8,4b64 <L80920280+0x3e4>
    490c:	86030f60 	lh	v1,3936(s0)
    4910:	93a9009f 	lbu	t1,159(sp)
    4914:	26080f68 	addiu	t0,s0,3944
    4918:	afa80030 	sw	t0,48(sp)
    491c:	11200046 	beqz	t1,4a38 <L80920280+0x2b8>
    4920:	afb90040 	sw	t9,64(sp)
    4924:	c6080fa4 	lwc1	$f8,4004(s0)
    4928:	c60a0fec 	lwc1	$f10,4076(s0)
    492c:	8e050fbc 	lw	a1,4028(s0)
    4930:	8e060fc8 	lw	a2,4040(s0)
    4934:	460a4102 	mul.s	$f4,$f8,$f10
    4938:	260a0f78 	addiu	t2,s0,3960
    493c:	260c0f7c 	addiu	t4,s0,3964
    4940:	260b0fec 	addiu	t3,s0,4076
    4944:	afab0034 	sw	t3,52(sp)
    4948:	afac0038 	sw	t4,56(sp)
    494c:	afaa003c 	sw	t2,60(sp)
    4950:	44072000 	mfc1	a3,$f4
    4954:	0c000000 	jal	0 <func_8091BB00>
    4958:	01002025 	move	a0,t0
    495c:	c6060fa8 	lwc1	$f6,4008(s0)
    4960:	c6080fec 	lwc1	$f8,4076(s0)
    4964:	26040f6c 	addiu	a0,s0,3948
    4968:	8e050fc0 	lw	a1,4032(s0)
    496c:	46083282 	mul.s	$f10,$f6,$f8
    4970:	8e060fcc 	lw	a2,4044(s0)
    4974:	44075000 	mfc1	a3,$f10
    4978:	0c000000 	jal	0 <func_8091BB00>
    497c:	00000000 	nop
    4980:	c6040fac 	lwc1	$f4,4012(s0)
    4984:	c6060fec 	lwc1	$f6,4076(s0)
    4988:	26040f70 	addiu	a0,s0,3952
    498c:	8e050fc4 	lw	a1,4036(s0)
    4990:	46062202 	mul.s	$f8,$f4,$f6
    4994:	8e060fd0 	lw	a2,4048(s0)
    4998:	44074000 	mfc1	a3,$f8
    499c:	0c000000 	jal	0 <func_8091BB00>
    49a0:	00000000 	nop
    49a4:	c60a0fb0 	lwc1	$f10,4016(s0)
    49a8:	c6040fec 	lwc1	$f4,4076(s0)
    49ac:	8fa40040 	lw	a0,64(sp)
    49b0:	8e050fd4 	lw	a1,4052(s0)
    49b4:	46045182 	mul.s	$f6,$f10,$f4
    49b8:	8e060fe0 	lw	a2,4064(s0)
    49bc:	44073000 	mfc1	a3,$f6
    49c0:	0c000000 	jal	0 <func_8091BB00>
    49c4:	00000000 	nop
    49c8:	c6080fb4 	lwc1	$f8,4020(s0)
    49cc:	c60a0fec 	lwc1	$f10,4076(s0)
    49d0:	8fa4003c 	lw	a0,60(sp)
    49d4:	8e050fd8 	lw	a1,4056(s0)
    49d8:	460a4102 	mul.s	$f4,$f8,$f10
    49dc:	8e060fe4 	lw	a2,4068(s0)
    49e0:	44072000 	mfc1	a3,$f4
    49e4:	0c000000 	jal	0 <func_8091BB00>
    49e8:	00000000 	nop
    49ec:	c6060fb8 	lwc1	$f6,4024(s0)
    49f0:	c6080fec 	lwc1	$f8,4076(s0)
    49f4:	8fa40038 	lw	a0,56(sp)
    49f8:	8e050fdc 	lw	a1,4060(s0)
    49fc:	46083282 	mul.s	$f10,$f6,$f8
    4a00:	8e060fe8 	lw	a2,4072(s0)
    4a04:	44075000 	mfc1	a3,$f10
    4a08:	0c000000 	jal	0 <func_8091BB00>
    4a0c:	00000000 	nop
    4a10:	3c013f80 	lui	at,0x3f80
    4a14:	44810000 	mtc1	at,$f0
    4a18:	8fa40034 	lw	a0,52(sp)
    4a1c:	8e070ff0 	lw	a3,4080(s0)
    4a20:	44050000 	mfc1	a1,$f0
    4a24:	44060000 	mfc1	a2,$f0
    4a28:	0c000000 	jal	0 <func_8091BB00>
    4a2c:	00000000 	nop
    4a30:	10000014 	b	4a84 <L80920280+0x304>
    4a34:	860e015c 	lh	t6,348(s0)
    4a38:	860d0f60 	lh	t5,3936(s0)
    4a3c:	29a10004 	slti	at,t5,4
    4a40:	50200010 	beqzl	at,4a84 <L80920280+0x304>
    4a44:	860e015c 	lh	t6,348(s0)
    4a48:	0c000000 	jal	0 <func_8091BB00>
    4a4c:	02002025 	move	a0,s0
    4a50:	c6040f68 	lwc1	$f4,3944(s0)
    4a54:	c606005c 	lwc1	$f6,92(s0)
    4a58:	c60a0f6c 	lwc1	$f10,3948(s0)
    4a5c:	46062200 	add.s	$f8,$f4,$f6
    4a60:	c6040060 	lwc1	$f4,96(s0)
    4a64:	46045180 	add.s	$f6,$f10,$f4
    4a68:	e6080f68 	swc1	$f8,3944(s0)
    4a6c:	c6080f70 	lwc1	$f8,3952(s0)
    4a70:	c60a0064 	lwc1	$f10,100(s0)
    4a74:	e6060f6c 	swc1	$f6,3948(s0)
    4a78:	460a4100 	add.s	$f4,$f8,$f10
    4a7c:	e6040f70 	swc1	$f4,3952(s0)
    4a80:	860e015c 	lh	t6,348(s0)
    4a84:	3c010000 	lui	at,0x0
    4a88:	c42a0000 	lwc1	$f10,0(at)
    4a8c:	448e3000 	mtc1	t6,$f6
    4a90:	00000000 	nop
    4a94:	46803220 	cvt.s.w	$f8,$f6
    4a98:	460a4302 	mul.s	$f12,$f8,$f10
    4a9c:	0c000000 	jal	0 <func_8091BB00>
    4aa0:	00000000 	nop
    4aa4:	c604100c 	lwc1	$f4,4108(s0)
    4aa8:	3c01c000 	lui	at,0xc000
    4aac:	44814000 	mtc1	at,$f8
    4ab0:	46040182 	mul.s	$f6,$f0,$f4
    4ab4:	3c013f80 	lui	at,0x3f80
    4ab8:	44815000 	mtc1	at,$f10
    4abc:	86050f62 	lh	a1,3938(s0)
    4ac0:	260f0f80 	addiu	t7,s0,3968
    4ac4:	e60a0f84 	swc1	$f10,3972(s0)
    4ac8:	46083082 	mul.s	$f2,$f6,$f8
    4acc:	e6020f88 	swc1	$f2,3976(s0)
    4ad0:	e6020f80 	swc1	$f2,3968(s0)
    4ad4:	afaf0010 	sw	t7,16(sp)
    4ad8:	8fa70030 	lw	a3,48(sp)
    4adc:	8fa60040 	lw	a2,64(sp)
    4ae0:	0c000000 	jal	0 <func_8091BB00>
    4ae4:	8fa400a4 	lw	a0,164(sp)
    4ae8:	8fb90030 	lw	t9,48(sp)
    4aec:	8fb80070 	lw	t8,112(sp)
    4af0:	8f290000 	lw	t1,0(t9)
    4af4:	af09005c 	sw	t1,92(t8)
    4af8:	8f280004 	lw	t0,4(t9)
    4afc:	af080060 	sw	t0,96(t8)
    4b00:	8f290008 	lw	t1,8(t9)
    4b04:	af090064 	sw	t1,100(t8)
    4b08:	8fac0030 	lw	t4,48(sp)
    4b0c:	8faa0070 	lw	t2,112(sp)
    4b10:	8d8d0000 	lw	t5,0(t4)
    4b14:	ad4d0074 	sw	t5,116(t2)
    4b18:	8d8b0004 	lw	t3,4(t4)
    4b1c:	ad4b0078 	sw	t3,120(t2)
    4b20:	8d8d0008 	lw	t5,8(t4)
    4b24:	ad4d007c 	sw	t5,124(t2)
    4b28:	8faf0040 	lw	t7,64(sp)
    4b2c:	8fae0070 	lw	t6,112(sp)
    4b30:	8df90000 	lw	t9,0(t7)
    4b34:	add90050 	sw	t9,80(t6)
    4b38:	8df80004 	lw	t8,4(t7)
    4b3c:	add80054 	sw	t8,84(t6)
    4b40:	8df90008 	lw	t9,8(t7)
    4b44:	add90058 	sw	t9,88(t6)
    4b48:	8e060f5c 	lw	a2,3932(s0)
    4b4c:	86050f62 	lh	a1,3938(s0)
    4b50:	0c000000 	jal	0 <func_8091BB00>
    4b54:	8fa400a4 	lw	a0,164(sp)
    4b58:	3c020000 	lui	v0,0x0
    4b5c:	24420000 	addiu	v0,v0,0
    4b60:	86030f60 	lh	v1,3936(s0)
    4b64:	28610003 	slti	at,v1,3
    4b68:	5420000c 	bnezl	at,4b9c <L80920280+0x41c>
    4b6c:	28610002 	slti	at,v1,2
    4b70:	8608015a 	lh	t0,346(s0)
    4b74:	2901021d 	slti	at,t0,541
    4b78:	54200008 	bnezl	at,4b9c <L80920280+0x41c>
    4b7c:	28610002 	slti	at,v1,2
    4b80:	8c440000 	lw	a0,0(v0)
    4b84:	240530f0 	li	a1,12528
    4b88:	0c000000 	jal	0 <func_8091BB00>
    4b8c:	24841010 	addiu	a0,a0,4112
    4b90:	10000008 	b	4bb4 <L80920280+0x434>
    4b94:	8fbf002c 	lw	ra,44(sp)
    4b98:	28610002 	slti	at,v1,2
    4b9c:	14200004 	bnez	at,4bb0 <L80920280+0x430>
    4ba0:	3c040000 	lui	a0,0x0
    4ba4:	24840000 	addiu	a0,a0,0
    4ba8:	0c000000 	jal	0 <func_8091BB00>
    4bac:	240530f5 	li	a1,12533
    4bb0:	8fbf002c 	lw	ra,44(sp)
    4bb4:	8fb00028 	lw	s0,40(sp)
    4bb8:	27bd00a0 	addiu	sp,sp,160
    4bbc:	03e00008 	jr	ra
    4bc0:	00000000 	nop

00004bc4 <func_809206C4>:
    4bc4:	27bdff70 	addiu	sp,sp,-144
    4bc8:	afb10020 	sw	s1,32(sp)
    4bcc:	00808825 	move	s1,a0
    4bd0:	afbf0024 	sw	ra,36(sp)
    4bd4:	afa50094 	sw	a1,148(sp)
    4bd8:	00a02025 	move	a0,a1
    4bdc:	afb0001c 	sw	s0,28(sp)
    4be0:	0c000000 	jal	0 <func_8091BB00>
    4be4:	00002825 	move	a1,zero
    4be8:	afa20060 	sw	v0,96(sp)
    4bec:	86240f60 	lh	a0,3936(s1)
    4bf0:	2881006a 	slti	at,a0,106
    4bf4:	14200006 	bnez	at,4c10 <func_809206C4+0x4c>
    4bf8:	00801825 	move	v1,a0
    4bfc:	24010096 	li	at,150
    4c00:	5061003d 	beql	v1,at,4cf8 <L80920734+0xc4>
    4c04:	862c017e 	lh	t4,382(s1)
    4c08:	1000025c 	b	557c <L8092107C>
    4c0c:	00000000 	nop
    4c10:	246eff9c 	addiu	t6,v1,-100
    4c14:	2dc10006 	sltiu	at,t6,6
    4c18:	10200258 	beqz	at,557c <L8092107C>
    4c1c:	000e7080 	sll	t6,t6,0x2
    4c20:	3c010000 	lui	at,0x0
    4c24:	002e0821 	addu	at,at,t6
    4c28:	8c2e0000 	lw	t6,0(at)
    4c2c:	01c00008 	jr	t6
    4c30:	00000000 	nop

00004c34 <L80920734>:
    4c34:	8fa40094 	lw	a0,148(sp)
    4c38:	0c000000 	jal	0 <func_8091BB00>
    4c3c:	24851d64 	addiu	a1,a0,7524
    4c40:	8fa40094 	lw	a0,148(sp)
    4c44:	02202825 	move	a1,s1
    4c48:	0c000000 	jal	0 <func_8091BB00>
    4c4c:	24060008 	li	a2,8
    4c50:	0c000000 	jal	0 <func_8091BB00>
    4c54:	8fa40094 	lw	a0,148(sp)
    4c58:	a6220f62 	sh	v0,3938(s1)
    4c5c:	8fa40094 	lw	a0,148(sp)
    4c60:	00002825 	move	a1,zero
    4c64:	0c000000 	jal	0 <func_8091BB00>
    4c68:	24060001 	li	a2,1
    4c6c:	8fa40094 	lw	a0,148(sp)
    4c70:	86250f62 	lh	a1,3938(s1)
    4c74:	0c000000 	jal	0 <func_8091BB00>
    4c78:	24060007 	li	a2,7
    4c7c:	24180096 	li	t8,150
    4c80:	a6380f60 	sh	t8,3936(s1)
    4c84:	8fb90060 	lw	t9,96(sp)
    4c88:	c6240024 	lwc1	$f4,36(s1)
    4c8c:	c628002c 	lwc1	$f8,44(s1)
    4c90:	8f2a005c 	lw	t2,92(t9)
    4c94:	240b005a 	li	t3,90
    4c98:	ae2a0f68 	sw	t2,3944(s1)
    4c9c:	8f290060 	lw	t1,96(t9)
    4ca0:	c6260f68 	lwc1	$f6,3944(s1)
    4ca4:	ae290f6c 	sw	t1,3948(s1)
    4ca8:	8f2a0064 	lw	t2,100(t9)
    4cac:	46062301 	sub.s	$f12,$f4,$f6
    4cb0:	a62b017e 	sh	t3,382(s1)
    4cb4:	ae2a0f70 	sw	t2,3952(s1)
    4cb8:	c62a0f70 	lwc1	$f10,3952(s1)
    4cbc:	e7ac0088 	swc1	$f12,136(sp)
    4cc0:	460a4381 	sub.s	$f14,$f8,$f10
    4cc4:	0c000000 	jal	0 <func_8091BB00>
    4cc8:	e7ae0084 	swc1	$f14,132(sp)
    4ccc:	c7ac0088 	lwc1	$f12,136(sp)
    4cd0:	c7ae0084 	lwc1	$f14,132(sp)
    4cd4:	e6201004 	swc1	$f0,4100(s1)
    4cd8:	460c6402 	mul.s	$f16,$f12,$f12
    4cdc:	44802000 	mtc1	zero,$f4
    4ce0:	460e7482 	mul.s	$f18,$f14,$f14
    4ce4:	e6241008 	swc1	$f4,4104(s1)
    4ce8:	46128000 	add.s	$f0,$f16,$f18
    4cec:	46000004 	sqrt.s	$f0,$f0
    4cf0:	e6200ffc 	swc1	$f0,4092(s1)
    4cf4:	862c017e 	lh	t4,382(s1)
    4cf8:	44803000 	mtc1	zero,$f6
    4cfc:	26240050 	addiu	a0,s1,80
    4d00:	318d0004 	andi	t5,t4,0x4
    4d04:	11a00006 	beqz	t5,4d20 <L80920734+0xec>
    4d08:	e62601a4 	swc1	$f6,420(s1)
    4d0c:	3c010000 	lui	at,0x0
    4d10:	c4200000 	lwc1	$f0,0(at)
    4d14:	3c010000 	lui	at,0x0
    4d18:	10000005 	b	4d30 <L80920734+0xfc>
    4d1c:	c4220000 	lwc1	$f2,0(at)
    4d20:	3c010000 	lui	at,0x0
    4d24:	c4200000 	lwc1	$f0,0(at)
    4d28:	3c010000 	lui	at,0x0
    4d2c:	c4220000 	lwc1	$f2,0(at)
    4d30:	44050000 	mfc1	a1,$f0
    4d34:	3c073b03 	lui	a3,0x3b03
    4d38:	34e7126f 	ori	a3,a3,0x126f
    4d3c:	3c063f00 	lui	a2,0x3f00
    4d40:	0c000000 	jal	0 <func_8091BB00>
    4d44:	e7a2007c 	swc1	$f2,124(sp)
    4d48:	c7a2007c 	lwc1	$f2,124(sp)
    4d4c:	c6280050 	lwc1	$f8,80(s1)
    4d50:	3c073b03 	lui	a3,0x3b03
    4d54:	44051000 	mfc1	a1,$f2
    4d58:	34e7126f 	ori	a3,a3,0x126f
    4d5c:	26240054 	addiu	a0,s1,84
    4d60:	3c063f00 	lui	a2,0x3f00
    4d64:	0c000000 	jal	0 <func_8091BB00>
    4d68:	e6280058 	swc1	$f8,88(s1)
    4d6c:	c62a1004 	lwc1	$f10,4100(s1)
    4d70:	c6301008 	lwc1	$f16,4104(s1)
    4d74:	862e017e 	lh	t6,382(s1)
    4d78:	3c010000 	lui	at,0x0
    4d7c:	46105480 	add.s	$f18,$f10,$f16
    4d80:	c4200000 	lwc1	$f0,0(at)
    4d84:	29c1001e 	slti	at,t6,30
    4d88:	14200009 	bnez	at,4db0 <L80920734+0x17c>
    4d8c:	e6321004 	swc1	$f18,4100(s1)
    4d90:	3c053d4c 	lui	a1,0x3d4c
    4d94:	44070000 	mfc1	a3,$f0
    4d98:	34a5cccd 	ori	a1,a1,0xcccd
    4d9c:	26241008 	addiu	a0,s1,4104
    4da0:	0c000000 	jal	0 <func_8091BB00>
    4da4:	3c063f80 	lui	a2,0x3f80
    4da8:	10000007 	b	4dc8 <L80920734+0x194>
    4dac:	3c063d4c 	lui	a2,0x3d4c
    4db0:	44070000 	mfc1	a3,$f0
    4db4:	26241008 	addiu	a0,s1,4104
    4db8:	24050000 	li	a1,0
    4dbc:	0c000000 	jal	0 <func_8091BB00>
    4dc0:	3c063f80 	lui	a2,0x3f80
    4dc4:	3c063d4c 	lui	a2,0x3d4c
    4dc8:	34c6cccd 	ori	a2,a2,0xcccd
    4dcc:	26240028 	addiu	a0,s1,40
    4dd0:	3c054316 	lui	a1,0x4316
    4dd4:	0c000000 	jal	0 <func_8091BB00>
    4dd8:	3c0740a0 	lui	a3,0x40a0
    4ddc:	3c063d4c 	lui	a2,0x3d4c
    4de0:	34c6cccd 	ori	a2,a2,0xcccd
    4de4:	26240f6c 	addiu	a0,s1,3948
    4de8:	3c0542c8 	lui	a1,0x42c8
    4dec:	0c000000 	jal	0 <func_8091BB00>
    4df0:	3c074000 	lui	a3,0x4000
    4df4:	262f0024 	addiu	t7,s1,36
    4df8:	afaf002c 	sw	t7,44(sp)
    4dfc:	8de90000 	lw	t1,0(t7)
    4e00:	27a30038 	addiu	v1,sp,56
    4e04:	02202025 	move	a0,s1
    4e08:	ac690000 	sw	t1,0(v1)
    4e0c:	8df90004 	lw	t9,4(t7)
    4e10:	8c6b0000 	lw	t3,0(v1)
    4e14:	ac790004 	sw	t9,4(v1)
    4e18:	8de90008 	lw	t1,8(t7)
    4e1c:	ac690008 	sw	t1,8(v1)
    4e20:	ae2b0fd4 	sw	t3,4052(s1)
    4e24:	8c6a0004 	lw	t2,4(v1)
    4e28:	8622017e 	lh	v0,382(s1)
    4e2c:	ae2a0fd8 	sw	t2,4056(s1)
    4e30:	8c6b0008 	lw	t3,8(v1)
    4e34:	28410015 	slti	at,v0,21
    4e38:	ae2b0fdc 	sw	t3,4060(s1)
    4e3c:	8c6d0000 	lw	t5,0(v1)
    4e40:	ae2d0f74 	sw	t5,3956(s1)
    4e44:	8c6c0004 	lw	t4,4(v1)
    4e48:	ae2c0f78 	sw	t4,3960(s1)
    4e4c:	8c6d0008 	lw	t5,8(v1)
    4e50:	14200004 	bnez	at,4e64 <L80920734+0x230>
    4e54:	ae2d0f7c 	sw	t5,3964(s1)
    4e58:	0c000000 	jal	0 <func_8091BB00>
    4e5c:	240530f8 	li	a1,12536
    4e60:	8622017e 	lh	v0,382(s1)
    4e64:	24010014 	li	at,20
    4e68:	14410049 	bne	v0,at,4f90 <L80920734+0x35c>
    4e6c:	8fae0094 	lw	t6,148(sp)
    4e70:	3c010001 	lui	at,0x1
    4e74:	01c17821 	addu	t7,t6,at
    4e78:	afaf0030 	sw	t7,48(sp)
    4e7c:	00008025 	move	s0,zero
    4e80:	3c014120 	lui	at,0x4120
    4e84:	44816000 	mtc1	at,$f12
    4e88:	0c000000 	jal	0 <func_8091BB00>
    4e8c:	00000000 	nop
    4e90:	3c014120 	lui	at,0x4120
    4e94:	44816000 	mtc1	at,$f12
    4e98:	0c000000 	jal	0 <func_8091BB00>
    4e9c:	e7a00054 	swc1	$f0,84(sp)
    4ea0:	3c014120 	lui	at,0x4120
    4ea4:	44816000 	mtc1	at,$f12
    4ea8:	0c000000 	jal	0 <func_8091BB00>
    4eac:	e7a00058 	swc1	$f0,88(sp)
    4eb0:	8fb9002c 	lw	t9,44(sp)
    4eb4:	e7a0005c 	swc1	$f0,92(sp)
    4eb8:	27b80048 	addiu	t8,sp,72
    4ebc:	8f2a0000 	lw	t2,0(t9)
    4ec0:	3c010000 	lui	at,0x0
    4ec4:	af0a0000 	sw	t2,0(t8)
    4ec8:	8f290004 	lw	t1,4(t9)
    4ecc:	af090004 	sw	t1,4(t8)
    4ed0:	8f2a0008 	lw	t2,8(t9)
    4ed4:	af0a0008 	sw	t2,8(t8)
    4ed8:	c7a40054 	lwc1	$f4,84(sp)
    4edc:	c7a80048 	lwc1	$f8,72(sp)
    4ee0:	c7b00058 	lwc1	$f16,88(sp)
    4ee4:	46042180 	add.s	$f6,$f4,$f4
    4ee8:	c7a4004c 	lwc1	$f4,76(sp)
    4eec:	c42c0000 	lwc1	$f12,0(at)
    4ef0:	46108480 	add.s	$f18,$f16,$f16
    4ef4:	46064280 	add.s	$f10,$f8,$f6
    4ef8:	c7a60050 	lwc1	$f6,80(sp)
    4efc:	46122200 	add.s	$f8,$f4,$f18
    4f00:	e7aa0048 	swc1	$f10,72(sp)
    4f04:	46000280 	add.s	$f10,$f0,$f0
    4f08:	e7a8004c 	swc1	$f8,76(sp)
    4f0c:	460a3400 	add.s	$f16,$f6,$f10
    4f10:	0c000000 	jal	0 <func_8091BB00>
    4f14:	e7b00050 	swc1	$f16,80(sp)
    4f18:	3c010000 	lui	at,0x0
    4f1c:	c4240000 	lwc1	$f4,0(at)
    4f20:	8fab0030 	lw	t3,48(sp)
    4f24:	24040003 	li	a0,3
    4f28:	46040480 	add.s	$f18,$f0,$f4
    4f2c:	8d651e10 	lw	a1,7696(t3)
    4f30:	27a60048 	addiu	a2,sp,72
    4f34:	27a70054 	addiu	a3,sp,84
    4f38:	0c000000 	jal	0 <func_8091BB00>
    4f3c:	e7b20010 	swc1	$f18,16(sp)
    4f40:	26100001 	addiu	s0,s0,1
    4f44:	00108400 	sll	s0,s0,0x10
    4f48:	00108403 	sra	s0,s0,0x10
    4f4c:	2a01012c 	slti	at,s0,300
    4f50:	5420ffcc 	bnezl	at,4e84 <L80920734+0x250>
    4f54:	3c014120 	lui	at,0x4120
    4f58:	8e2c0004 	lw	t4,4(s1)
    4f5c:	2401fffe 	li	at,-2
    4f60:	a22001d1 	sb	zero,465(s1)
    4f64:	01816824 	and	t5,t4,at
    4f68:	ae2d0004 	sw	t5,4(s1)
    4f6c:	02202025 	move	a0,s1
    4f70:	0c000000 	jal	0 <func_8091BB00>
    4f74:	240538f7 	li	a1,14583
    4f78:	8fa40094 	lw	a0,148(sp)
    4f7c:	8fa5002c 	lw	a1,44(sp)
    4f80:	24060046 	li	a2,70
    4f84:	0c000000 	jal	0 <func_8091BB00>
    4f88:	240738f9 	li	a3,14585
    4f8c:	8622017e 	lh	v0,382(s1)
    4f90:	14400085 	bnez	v0,51a8 <L80920734+0x574>
    4f94:	3c0143f5 	lui	at,0x43f5
    4f98:	44810000 	mtc1	at,$f0
    4f9c:	3c01c47a 	lui	at,0xc47a
    4fa0:	44814000 	mtc1	at,$f8
    4fa4:	3c014170 	lui	at,0x4170
    4fa8:	44813000 	mtc1	at,$f6
    4fac:	3c014248 	lui	at,0x4248
    4fb0:	44801000 	mtc1	zero,$f2
    4fb4:	44815000 	mtc1	at,$f10
    4fb8:	3c01c2c8 	lui	at,0xc2c8
    4fbc:	a620015a 	sh	zero,346(s1)
    4fc0:	44808000 	mtc1	zero,$f16
    4fc4:	44812000 	mtc1	at,$f4
    4fc8:	862f015a 	lh	t7,346(s1)
    4fcc:	240e0065 	li	t6,101
    4fd0:	a62e0f60 	sh	t6,3936(s1)
    4fd4:	3c010000 	lui	at,0x0
    4fd8:	e6200ffc 	swc1	$f0,4092(s1)
    4fdc:	e6200f68 	swc1	$f0,3944(s1)
    4fe0:	e6280028 	swc1	$f8,40(s1)
    4fe4:	e626018c 	swc1	$f6,396(s1)
    4fe8:	e6221004 	swc1	$f2,4100(s1)
    4fec:	e6220f70 	swc1	$f2,3952(s1)
    4ff0:	e6220f7c 	swc1	$f2,3964(s1)
    4ff4:	e62a0f6c 	swc1	$f10,3948(s1)
    4ff8:	e6300f74 	swc1	$f16,3956(s1)
    4ffc:	e6240f78 	swc1	$f4,3960(s1)
    5000:	a62f015c 	sh	t7,348(s1)
    5004:	c4320000 	lwc1	$f18,0(at)
    5008:	3c014080 	lui	at,0x4080
    500c:	44814000 	mtc1	at,$f8
    5010:	3c010000 	lui	at,0x0
    5014:	e6220fec 	swc1	$f2,4076(s1)
    5018:	e6320fe4 	swc1	$f18,4068(s1)
    501c:	e6280fb4 	swc1	$f8,4020(s1)
    5020:	c4260000 	lwc1	$f6,0(at)
    5024:	3c0143a0 	lui	at,0x43a0
    5028:	44815000 	mtc1	at,$f10
    502c:	3c080000 	lui	t0,0x0
    5030:	24180064 	li	t8,100
    5034:	25080000 	addiu	t0,t0,0
    5038:	a638017e 	sh	t8,382(s1)
    503c:	e6260ff0 	swc1	$f6,4080(s1)
    5040:	e62a0fd8 	swc1	$f10,4056(s1)
    5044:	8d090000 	lw	t1,0(t0)
    5048:	24190001 	li	t9,1
    504c:	240a00cb 	li	t2,203
    5050:	a13901d1 	sb	t9,465(t1)
    5054:	8d0b0000 	lw	t3,0(t0)
    5058:	3c01c248 	lui	at,0xc248
    505c:	44810000 	mtc1	at,$f0
    5060:	a56a0158 	sh	t2,344(t3)
    5064:	8d0c0000 	lw	t4,0(t0)
    5068:	3c013f80 	lui	at,0x3f80
    506c:	44816000 	mtc1	at,$f12
    5070:	a58000b4 	sh	zero,180(t4)
    5074:	8d0d0000 	lw	t5,0(t0)
    5078:	3c010000 	lui	at,0x0
    507c:	3c090000 	lui	t1,0x0
    5080:	e5a20024 	swc1	$f2,36(t5)
    5084:	8d0e0000 	lw	t6,0(t0)
    5088:	00008025 	move	s0,zero
    508c:	2402000c 	li	v0,12
    5090:	e5c00028 	swc1	$f0,40(t6)
    5094:	8d0f0000 	lw	t7,0(t0)
    5098:	e5e2002c 	swc1	$f2,44(t7)
    509c:	8d180000 	lw	t8,0(t0)
    50a0:	e70c01a0 	swc1	$f12,416(t8)
    50a4:	8d190000 	lw	t9,0(t0)
    50a8:	c4300000 	lwc1	$f16,0(at)
    50ac:	3c0140a0 	lui	at,0x40a0
    50b0:	e7300d6c 	swc1	$f16,3436(t9)
    50b4:	8d290000 	lw	t1,0(t1)
    50b8:	e52001bc 	swc1	$f0,444(t1)
    50bc:	8d0a0000 	lw	t2,0(t0)
    50c0:	44810000 	mtc1	at,$f0
    50c4:	e54201c0 	swc1	$f2,448(t2)
    50c8:	8d0b0000 	lw	t3,0(t0)
    50cc:	a560017a 	sh	zero,378(t3)
    50d0:	02020019 	multu	s0,v0
    50d4:	8d0c0000 	lw	t4,0(t0)
    50d8:	26100001 	addiu	s0,s0,1
    50dc:	00108400 	sll	s0,s0,0x10
    50e0:	00108403 	sra	s0,s0,0x10
    50e4:	2a010029 	slti	at,s0,41
    50e8:	00006812 	mflo	t5
    50ec:	018d7021 	addu	t6,t4,t5
    50f0:	1420fff7 	bnez	at,50d0 <L80920734+0x49c>
    50f4:	e5c006ac 	swc1	$f0,1708(t6)
    50f8:	3c01c3c8 	lui	at,0xc3c8
    50fc:	44812000 	mtc1	at,$f4
    5100:	8d0f0000 	lw	t7,0(t0)
    5104:	3c01c548 	lui	at,0xc548
    5108:	44819000 	mtc1	at,$f18
    510c:	e5e40190 	swc1	$f4,400(t7)
    5110:	8d180000 	lw	t8,0(t0)
    5114:	44804000 	mtc1	zero,$f8
    5118:	3c010000 	lui	at,0x0
    511c:	e7120188 	swc1	$f18,392(t8)
    5120:	8d190000 	lw	t9,0(t0)
    5124:	3c053c23 	lui	a1,0x3c23
    5128:	34a5d70a 	ori	a1,a1,0xd70a
    512c:	e728018c 	swc1	$f8,396(t9)
    5130:	8d090000 	lw	t1,0(t0)
    5134:	c4260000 	lwc1	$f6,0(at)
    5138:	3c010000 	lui	at,0x0
    513c:	e526019c 	swc1	$f6,412(t1)
    5140:	8d0a0000 	lw	t2,0(t0)
    5144:	c42a0000 	lwc1	$f10,0(at)
    5148:	3c01457a 	lui	at,0x457a
    514c:	44818000 	mtc1	at,$f16
    5150:	e54a0194 	swc1	$f10,404(t2)
    5154:	8d0b0000 	lw	t3,0(t0)
    5158:	3c0146a0 	lui	at,0x46a0
    515c:	44812000 	mtc1	at,$f4
    5160:	e5700198 	swc1	$f16,408(t3)
    5164:	8d0c0000 	lw	t4,0(t0)
    5168:	3c014316 	lui	at,0x4316
    516c:	44819000 	mtc1	at,$f18
    5170:	e58c0d64 	swc1	$f12,3428(t4)
    5174:	8d0d0000 	lw	t5,0(t0)
    5178:	e5a40d68 	swc1	$f4,3432(t5)
    517c:	8d0e0000 	lw	t6,0(t0)
    5180:	e5d201a4 	swc1	$f18,420(t6)
    5184:	8d0f0000 	lw	t7,0(t0)
    5188:	a5e00174 	sh	zero,372(t7)
    518c:	8d030000 	lw	v1,0(t0)
    5190:	84780174 	lh	t8,372(v1)
    5194:	a4780172 	sh	t8,370(v1)
    5198:	8d190000 	lw	t9,0(t0)
    519c:	e72c01a8 	swc1	$f12,424(t9)
    51a0:	0c000000 	jal	0 <func_8091BB00>
    51a4:	8d040000 	lw	a0,0(t0)
    51a8:	100000f4 	b	557c <L8092107C>
    51ac:	86240f60 	lh	a0,3936(s1)

000051b0 <L80920CB0>:
    51b0:	8629017e 	lh	t1,382(s1)
    51b4:	152000f1 	bnez	t1,557c <L8092107C>
    51b8:	3c01c348 	lui	at,0xc348
    51bc:	44814000 	mtc1	at,$f8
    51c0:	3c0143a0 	lui	at,0x43a0
    51c4:	44813000 	mtc1	at,$f6
    51c8:	240a0066 	li	t2,102
    51cc:	a62a0f60 	sh	t2,3936(s1)
    51d0:	3c010000 	lui	at,0x0
    51d4:	e6280f78 	swc1	$f8,3960(s1)
    51d8:	e6260fd8 	swc1	$f6,4056(s1)
    51dc:	c42a0000 	lwc1	$f10,0(at)
    51e0:	3c014080 	lui	at,0x4080
    51e4:	44818000 	mtc1	at,$f16
    51e8:	44802000 	mtc1	zero,$f4
    51ec:	44809000 	mtc1	zero,$f18
    51f0:	3c080000 	lui	t0,0x0
    51f4:	25080000 	addiu	t0,t0,0
    51f8:	e62a0fe4 	swc1	$f10,4068(s1)
    51fc:	e6300fb4 	swc1	$f16,4020(s1)
    5200:	e6240fec 	swc1	$f4,4076(s1)
    5204:	e6320ff0 	swc1	$f18,4080(s1)
    5208:	8d0c0000 	lw	t4,0(t0)
    520c:	240b00c9 	li	t3,201
    5210:	240d007d 	li	t5,125
    5214:	a58b0158 	sh	t3,344(t4)
    5218:	a62d017e 	sh	t5,382(s1)
    521c:	3c010000 	lui	at,0x0
    5220:	c4280000 	lwc1	$f8,0(at)
    5224:	3c013f00 	lui	at,0x3f00
    5228:	8d0e0000 	lw	t6,0(t0)
    522c:	44813000 	mtc1	at,$f6
    5230:	3c014348 	lui	at,0x4348
    5234:	44815000 	mtc1	at,$f10
    5238:	e5c801a0 	swc1	$f8,416(t6)
    523c:	e6261004 	swc1	$f6,4100(s1)
    5240:	1000014a 	b	576c <L8092107C+0x1f0>
    5244:	e62a0ffc 	swc1	$f10,4092(s1)

00005248 <L80920D48>:
    5248:	862f017e 	lh	t7,382(s1)
    524c:	15e0000f 	bnez	t7,528c <L80920D8C>
    5250:	3c010000 	lui	at,0x0
    5254:	c4300000 	lwc1	$f16,0(at)
    5258:	3c080000 	lui	t0,0x0
    525c:	25080000 	addiu	t0,t0,0
    5260:	e6300ff0 	swc1	$f16,4080(s1)
    5264:	8d190000 	lw	t9,0(t0)
    5268:	241800ca 	li	t8,202
    526c:	24090067 	li	t1,103
    5270:	a7380158 	sh	t8,344(t9)
    5274:	a6290f60 	sh	t1,3936(s1)
    5278:	8d0b0000 	lw	t3,0(t0)
    527c:	240a0078 	li	t2,120
    5280:	240c0096 	li	t4,150
    5284:	a56a017e 	sh	t2,382(t3)
    5288:	a62c017e 	sh	t4,382(s1)

0000528c <L80920D8C>:
    528c:	3c063d4c 	lui	a2,0x3d4c
    5290:	3c073b44 	lui	a3,0x3b44
    5294:	34e79ba4 	ori	a3,a3,0x9ba4
    5298:	34c6cccd 	ori	a2,a2,0xcccd
    529c:	26241004 	addiu	a0,s1,4100
    52a0:	0c000000 	jal	0 <func_8091BB00>
    52a4:	24050000 	li	a1,0
    52a8:	3c0143f5 	lui	at,0x43f5
    52ac:	44810000 	mtc1	at,$f0
    52b0:	3c063dcc 	lui	a2,0x3dcc
    52b4:	34c6cccd 	ori	a2,a2,0xcccd
    52b8:	44050000 	mfc1	a1,$f0
    52bc:	26240ffc 	addiu	a0,s1,4092
    52c0:	0c000000 	jal	0 <func_8091BB00>
    52c4:	3c073f80 	lui	a3,0x3f80
    52c8:	862d017e 	lh	t5,382(s1)
    52cc:	240e0068 	li	t6,104
    52d0:	240f008c 	li	t7,140
    52d4:	15a00007 	bnez	t5,52f4 <L80920D8C+0x68>
    52d8:	00000000 	nop
    52dc:	44802000 	mtc1	zero,$f4
    52e0:	44809000 	mtc1	zero,$f18
    52e4:	a62e0f60 	sh	t6,3936(s1)
    52e8:	a62f017e 	sh	t7,382(s1)
    52ec:	e6241008 	swc1	$f4,4104(s1)
    52f0:	e6321000 	swc1	$f18,4096(s1)
    52f4:	100000a1 	b	557c <L8092107C>
    52f8:	86240f60 	lh	a0,3936(s1)

000052fc <L80920DFC>:
    52fc:	8622017e 	lh	v0,382(s1)
    5300:	2404001e 	li	a0,30
    5304:	1482000e 	bne	a0,v0,5340 <L80920DFC+0x44>
    5308:	3c080000 	lui	t0,0x0
    530c:	25080000 	addiu	t0,t0,0
    5310:	8d190000 	lw	t9,0(t0)
    5314:	241800cd 	li	t8,205
    5318:	44804000 	mtc1	zero,$f8
    531c:	a7380158 	sh	t8,344(t9)
    5320:	8d090000 	lw	t1,0(t0)
    5324:	a524017e 	sh	a0,382(t1)
    5328:	8d0a0000 	lw	t2,0(t0)
    532c:	e5480d64 	swc1	$f8,3428(t2)
    5330:	8d030000 	lw	v1,0(t0)
    5334:	c4660d64 	lwc1	$f6,3428(v1)
    5338:	e4660d68 	swc1	$f6,3432(v1)
    533c:	8622017e 	lh	v0,382(s1)
    5340:	3c080000 	lui	t0,0x0
    5344:	1440002f 	bnez	v0,5404 <L80920DFC+0x108>
    5348:	25080000 	addiu	t0,t0,0
    534c:	3c01c2c8 	lui	at,0xc2c8
    5350:	44815000 	mtc1	at,$f10
    5354:	c6300f6c 	lwc1	$f16,3948(s1)
    5358:	3c063dcc 	lui	a2,0x3dcc
    535c:	34c6cccd 	ori	a2,a2,0xcccd
    5360:	4610503c 	c.lt.s	$f10,$f16
    5364:	26240f6c 	addiu	a0,s1,3948
    5368:	3c05c348 	lui	a1,0xc348
    536c:	45000010 	bc1f	53b0 <L80920DFC+0xb4>
    5370:	00000000 	nop
    5374:	8d0b0000 	lw	t3,0(t0)
    5378:	3c0142c8 	lui	at,0x42c8
    537c:	44819000 	mtc1	at,$f18
    5380:	c5640028 	lwc1	$f4,40(t3)
    5384:	3c063dcc 	lui	a2,0x3dcc
    5388:	34c6cccd 	ori	a2,a2,0xcccd
    538c:	46122201 	sub.s	$f8,$f4,$f18
    5390:	26240f6c 	addiu	a0,s1,3948
    5394:	3c0744fa 	lui	a3,0x44fa
    5398:	44054000 	mfc1	a1,$f8
    539c:	0c000000 	jal	0 <func_8091BB00>
    53a0:	00000000 	nop
    53a4:	3c080000 	lui	t0,0x0
    53a8:	10000005 	b	53c0 <L80920DFC+0xc4>
    53ac:	25080000 	addiu	t0,t0,0
    53b0:	0c000000 	jal	0 <func_8091BB00>
    53b4:	3c0744fa 	lui	a3,0x44fa
    53b8:	3c080000 	lui	t0,0x0
    53bc:	25080000 	addiu	t0,t0,0
    53c0:	8d0c0000 	lw	t4,0(t0)
    53c4:	3c014248 	lui	at,0x4248
    53c8:	44815000 	mtc1	at,$f10
    53cc:	c5860028 	lwc1	$f6,40(t4)
    53d0:	3c0141f0 	lui	at,0x41f0
    53d4:	44812000 	mtc1	at,$f4
    53d8:	460a3401 	sub.s	$f16,$f6,$f10
    53dc:	26240f78 	addiu	a0,s1,3960
    53e0:	3c063f00 	lui	a2,0x3f00
    53e4:	3c0744fa 	lui	a3,0x44fa
    53e8:	46048480 	add.s	$f18,$f16,$f4
    53ec:	44059000 	mfc1	a1,$f18
    53f0:	0c000000 	jal	0 <func_8091BB00>
    53f4:	00000000 	nop
    53f8:	c6280f78 	lwc1	$f8,3960(s1)
    53fc:	10000007 	b	541c <L80920DFC+0x120>
    5400:	e6280fd8 	swc1	$f8,4056(s1)
    5404:	3c063d4c 	lui	a2,0x3d4c
    5408:	34c6cccd 	ori	a2,a2,0xcccd
    540c:	26240f6c 	addiu	a0,s1,3948
    5410:	3c054396 	lui	a1,0x4396
    5414:	0c000000 	jal	0 <func_8091BB00>
    5418:	8e271000 	lw	a3,4096(s1)
    541c:	3c05bfc9 	lui	a1,0xbfc9
    5420:	3c063d4c 	lui	a2,0x3d4c
    5424:	34c6cccd 	ori	a2,a2,0xcccd
    5428:	34a50fdb 	ori	a1,a1,0xfdb
    542c:	26241004 	addiu	a0,s1,4100
    5430:	0c000000 	jal	0 <func_8091BB00>
    5434:	8e271008 	lw	a3,4104(s1)
    5438:	3c073d4c 	lui	a3,0x3d4c
    543c:	34e7cccd 	ori	a3,a3,0xcccd
    5440:	26241000 	addiu	a0,s1,4096
    5444:	3c054040 	lui	a1,0x4040
    5448:	0c000000 	jal	0 <func_8091BB00>
    544c:	3c063f80 	lui	a2,0x3f80
    5450:	3c053c54 	lui	a1,0x3c54
    5454:	3c073a03 	lui	a3,0x3a03
    5458:	34e7126f 	ori	a3,a3,0x126f
    545c:	34a5fdf3 	ori	a1,a1,0xfdf3
    5460:	26241008 	addiu	a0,s1,4104
    5464:	0c000000 	jal	0 <func_8091BB00>
    5468:	3c063f80 	lui	a2,0x3f80
    546c:	3c080000 	lui	t0,0x0
    5470:	25080000 	addiu	t0,t0,0
    5474:	8d0d0000 	lw	t5,0(t0)
    5478:	240100ce 	li	at,206
    547c:	85ae0158 	lh	t6,344(t5)
    5480:	15c10037 	bne	t6,at,5560 <L80920DFC+0x264>
    5484:	3c063ca3 	lui	a2,0x3ca3
    5488:	34c6d70a 	ori	a2,a2,0xd70a
    548c:	26240ffc 	addiu	a0,s1,4092
    5490:	3c054348 	lui	a1,0x4348
    5494:	0c000000 	jal	0 <func_8091BB00>
    5498:	8e271000 	lw	a3,4096(s1)
    549c:	3c080000 	lui	t0,0x0
    54a0:	25080000 	addiu	t0,t0,0
    54a4:	8d0f0000 	lw	t7,0(t0)
    54a8:	24190069 	li	t9,105
    54ac:	26300f68 	addiu	s0,s1,3944
    54b0:	85f8017e 	lh	t8,382(t7)
    54b4:	57000031 	bnezl	t8,557c <L8092107C>
    54b8:	86240f60 	lh	a0,3936(s1)
    54bc:	a6390f60 	sh	t9,3936(s1)
    54c0:	8fa90060 	lw	t1,96(sp)
    54c4:	8e0b0000 	lw	t3,0(s0)
    54c8:	00003025 	move	a2,zero
    54cc:	ad2b005c 	sw	t3,92(t1)
    54d0:	8e0a0004 	lw	t2,4(s0)
    54d4:	ad2a0060 	sw	t2,96(t1)
    54d8:	8e0b0008 	lw	t3,8(s0)
    54dc:	ad2b0064 	sw	t3,100(t1)
    54e0:	8fac0060 	lw	t4,96(sp)
    54e4:	8e0e0000 	lw	t6,0(s0)
    54e8:	ad8e0074 	sw	t6,116(t4)
    54ec:	8e0d0004 	lw	t5,4(s0)
    54f0:	ad8d0078 	sw	t5,120(t4)
    54f4:	8e0e0008 	lw	t6,8(s0)
    54f8:	ad8e007c 	sw	t6,124(t4)
    54fc:	8e390f74 	lw	t9,3956(s1)
    5500:	8faf0060 	lw	t7,96(sp)
    5504:	adf90050 	sw	t9,80(t7)
    5508:	8e380f78 	lw	t8,3960(s1)
    550c:	adf80054 	sw	t8,84(t7)
    5510:	8e390f7c 	lw	t9,3964(s1)
    5514:	adf90058 	sw	t9,88(t7)
    5518:	86250f62 	lh	a1,3938(s1)
    551c:	0c000000 	jal	0 <func_8091BB00>
    5520:	8fa40094 	lw	a0,148(sp)
    5524:	a6200f62 	sh	zero,3938(s1)
    5528:	8fa40094 	lw	a0,148(sp)
    552c:	0c000000 	jal	0 <func_8091BB00>
    5530:	24851d64 	addiu	a1,a0,7524
    5534:	8fa40094 	lw	a0,148(sp)
    5538:	02202825 	move	a1,s1
    553c:	0c000000 	jal	0 <func_8091BB00>
    5540:	24060007 	li	a2,7
    5544:	3c080000 	lui	t0,0x0
    5548:	25080000 	addiu	t0,t0,0
    554c:	3c01c47a 	lui	at,0xc47a
    5550:	44813000 	mtc1	at,$f6
    5554:	8d0a0000 	lw	t2,0(t0)
    5558:	10000007 	b	5578 <L80920DFC+0x27c>
    555c:	e5460028 	swc1	$f6,40(t2)
    5560:	3c063d4c 	lui	a2,0x3d4c
    5564:	34c6cccd 	ori	a2,a2,0xcccd
    5568:	26240ffc 	addiu	a0,s1,4092
    556c:	3c054316 	lui	a1,0x4316
    5570:	0c000000 	jal	0 <func_8091BB00>
    5574:	8e271000 	lw	a3,4096(s1)
    5578:	86240f60 	lh	a0,3936(s1)

0000557c <L8092107C>:
    557c:	3c080000 	lui	t0,0x0
    5580:	28810065 	slti	at,a0,101
    5584:	14200022 	bnez	at,5610 <L8092107C+0x94>
    5588:	25080000 	addiu	t0,t0,0
    558c:	28810069 	slti	at,a0,105
    5590:	1020001f 	beqz	at,5610 <L8092107C+0x94>
    5594:	00000000 	nop
    5598:	8622015a 	lh	v0,346(s1)
    559c:	3c100000 	lui	s0,0x0
    55a0:	26040000 	addiu	a0,s0,0
    55a4:	284101f4 	slti	at,v0,500
    55a8:	10200006 	beqz	at,55c4 <L8092107C+0x48>
    55ac:	00000000 	nop
    55b0:	0c000000 	jal	0 <func_8091BB00>
    55b4:	240530f0 	li	a1,12528
    55b8:	3c080000 	lui	t0,0x0
    55bc:	25080000 	addiu	t0,t0,0
    55c0:	8622015a 	lh	v0,346(s1)
    55c4:	3c100000 	lui	s0,0x0
    55c8:	284101ea 	slti	at,v0,490
    55cc:	10200009 	beqz	at,55f4 <L8092107C+0x78>
    55d0:	26100000 	addiu	s0,s0,0
    55d4:	284100e7 	slti	at,v0,231
    55d8:	14200006 	bnez	at,55f4 <L8092107C+0x78>
    55dc:	02002025 	move	a0,s0
    55e0:	0c000000 	jal	0 <func_8091BB00>
    55e4:	24052075 	li	a1,8309
    55e8:	3c080000 	lui	t0,0x0
    55ec:	25080000 	addiu	t0,t0,0
    55f0:	8622015a 	lh	v0,346(s1)
    55f4:	284100dc 	slti	at,v0,220
    55f8:	10200005 	beqz	at,5610 <L8092107C+0x94>
    55fc:	02002025 	move	a0,s0
    5600:	0c000000 	jal	0 <func_8091BB00>
    5604:	24052074 	li	a1,8308
    5608:	3c080000 	lui	t0,0x0
    560c:	25080000 	addiu	t0,t0,0
    5610:	3c0b0000 	lui	t3,0x0
    5614:	8d6b0000 	lw	t3,0(t3)
    5618:	3c01c348 	lui	at,0xc348
    561c:	44818000 	mtc1	at,$f16
    5620:	c56a01bc 	lwc1	$f10,444(t3)
    5624:	8fa20094 	lw	v0,148(sp)
    5628:	3c010001 	lui	at,0x1
    562c:	4610503c 	c.lt.s	$f10,$f16
    5630:	3c180000 	lui	t8,0x0
    5634:	24050000 	li	a1,0
    5638:	3c063f80 	lui	a2,0x3f80
    563c:	4500000a 	bc1f	5668 <L8092107C+0xec>
    5640:	00411021 	addu	v0,v0,at
    5644:	844c1d30 	lh	t4,7472(v0)
    5648:	240f00ff 	li	t7,255
    564c:	258d0001 	addiu	t5,t4,1
    5650:	a44d1d30 	sh	t5,7472(v0)
    5654:	844e1d30 	lh	t6,7472(v0)
    5658:	29c100ff 	slti	at,t6,255
    565c:	14200002 	bnez	at,5668 <L8092107C+0xec>
    5660:	00000000 	nop
    5664:	a44f1d30 	sh	t7,7472(v0)
    5668:	8f180000 	lw	t8,0(t8)
    566c:	3c01c37a 	lui	at,0xc37a
    5670:	44819000 	mtc1	at,$f18
    5674:	c70401bc 	lwc1	$f4,444(t8)
    5678:	4612203c 	c.lt.s	$f4,$f18
    567c:	00000000 	nop
    5680:	45020006 	bc1fl	569c <L8092107C+0x120>
    5684:	3c063dcc 	lui	a2,0x3dcc
    5688:	8d040000 	lw	a0,0(t0)
    568c:	3c074040 	lui	a3,0x4040
    5690:	0c000000 	jal	0 <func_8091BB00>
    5694:	248401c4 	addiu	a0,a0,452
    5698:	3c063dcc 	lui	a2,0x3dcc
    569c:	3c073d4c 	lui	a3,0x3d4c
    56a0:	34e7cccd 	ori	a3,a3,0xcccd
    56a4:	34c6cccd 	ori	a2,a2,0xcccd
    56a8:	2624018c 	addiu	a0,s1,396
    56ac:	0c000000 	jal	0 <func_8091BB00>
    56b0:	24050000 	li	a1,0
    56b4:	44800000 	mtc1	zero,$f0
    56b8:	c6280ffc 	lwc1	$f8,4092(s1)
    56bc:	00002825 	move	a1,zero
    56c0:	e7a00074 	swc1	$f0,116(sp)
    56c4:	e7a80070 	swc1	$f8,112(sp)
    56c8:	e7a00078 	swc1	$f0,120(sp)
    56cc:	0c000000 	jal	0 <func_8091BB00>
    56d0:	c62c1004 	lwc1	$f12,4100(s1)
    56d4:	27a40070 	addiu	a0,sp,112
    56d8:	0c000000 	jal	0 <func_8091BB00>
    56dc:	27a50064 	addiu	a1,sp,100
    56e0:	c6260f74 	lwc1	$f6,3956(s1)
    56e4:	c7aa0064 	lwc1	$f10,100(sp)
    56e8:	c6240f7c 	lwc1	$f4,3964(s1)
    56ec:	86250f62 	lh	a1,3938(s1)
    56f0:	460a3400 	add.s	$f16,$f6,$f10
    56f4:	26390f74 	addiu	t9,s1,3956
    56f8:	e6300f68 	swc1	$f16,3944(s1)
    56fc:	c7b2006c 	lwc1	$f18,108(sp)
    5700:	46122200 	add.s	$f8,$f4,$f18
    5704:	10a00019 	beqz	a1,576c <L8092107C+0x1f0>
    5708:	e6280f70 	swc1	$f8,3952(s1)
    570c:	afb90028 	sw	t9,40(sp)
    5710:	c62a0fec 	lwc1	$f10,4076(s1)
    5714:	c6260fb4 	lwc1	$f6,4020(s1)
    5718:	26300f68 	addiu	s0,s1,3944
    571c:	8e260fe4 	lw	a2,4068(s1)
    5720:	460a3402 	mul.s	$f16,$f6,$f10
    5724:	8e250fd8 	lw	a1,4056(s1)
    5728:	26240f78 	addiu	a0,s1,3960
    572c:	44078000 	mfc1	a3,$f16
    5730:	0c000000 	jal	0 <func_8091BB00>
    5734:	00000000 	nop
    5738:	3c013f80 	lui	at,0x3f80
    573c:	44810000 	mtc1	at,$f0
    5740:	26240fec 	addiu	a0,s1,4076
    5744:	8e270ff0 	lw	a3,4080(s1)
    5748:	44050000 	mfc1	a1,$f0
    574c:	44060000 	mfc1	a2,$f0
    5750:	0c000000 	jal	0 <func_8091BB00>
    5754:	00000000 	nop
    5758:	86250f62 	lh	a1,3938(s1)
    575c:	8fa40094 	lw	a0,148(sp)
    5760:	8fa60028 	lw	a2,40(sp)
    5764:	0c000000 	jal	0 <func_8091BB00>
    5768:	02003825 	move	a3,s0
    576c:	8fbf0024 	lw	ra,36(sp)
    5770:	8fb0001c 	lw	s0,28(sp)
    5774:	8fb10020 	lw	s1,32(sp)
    5778:	03e00008 	jr	ra
    577c:	27bd0090 	addiu	sp,sp,144

00005780 <func_80921280>:
    5780:	27bdff90 	addiu	sp,sp,-112
    5784:	afb10030 	sw	s1,48(sp)
    5788:	afbf0034 	sw	ra,52(sp)
    578c:	afb0002c 	sw	s0,44(sp)
    5790:	f7b60020 	sdc1	$f22,32(sp)
    5794:	f7b40018 	sdc1	$f20,24(sp)
    5798:	afa50074 	sw	a1,116(sp)
    579c:	8caf1c44 	lw	t7,7236(a1)
    57a0:	00808825 	move	s1,a0
    57a4:	3c040000 	lui	a0,0x0
    57a8:	24840000 	addiu	a0,a0,0
    57ac:	0c000000 	jal	0 <func_8091BB00>
    57b0:	afaf0068 	sw	t7,104(sp)
    57b4:	3c040000 	lui	a0,0x0
    57b8:	0c000000 	jal	0 <func_8091BB00>
    57bc:	24840000 	addiu	a0,a0,0
    57c0:	9222150c 	lbu	v0,5388(s1)
    57c4:	3c040000 	lui	a0,0x0
    57c8:	24840000 	addiu	a0,a0,0
    57cc:	30580002 	andi	t8,v0,0x2
    57d0:	5300000b 	beqzl	t8,5800 <func_80921280+0x80>
    57d4:	922b150d 	lbu	t3,5389(s1)
    57d8:	86280158 	lh	t0,344(s1)
    57dc:	3059fffd 	andi	t9,v0,0xfffd
    57e0:	24010002 	li	at,2
    57e4:	15010005 	bne	t0,at,57fc <func_80921280+0x7c>
    57e8:	a239150c 	sb	t9,5388(s1)
    57ec:	24090001 	li	t1,1
    57f0:	240a0096 	li	t2,150
    57f4:	a6290168 	sh	t1,360(s1)
    57f8:	a62a017e 	sh	t2,382(s1)
    57fc:	922b150d 	lbu	t3,5389(s1)
    5800:	316c0002 	andi	t4,t3,0x2
    5804:	118000e5 	beqz	t4,5b9c <func_80921280+0x41c>
    5808:	00000000 	nop
    580c:	0c000000 	jal	0 <func_8091BB00>
    5810:	8e301538 	lw	s0,5432(s1)
    5814:	922d150d 	lbu	t5,5389(s1)
    5818:	3c040000 	lui	a0,0x0
    581c:	31aefffd 	andi	t6,t5,0xfffd
    5820:	a22e150d 	sb	t6,5389(s1)
    5824:	8e0f0000 	lw	t7,0(s0)
    5828:	000fc380 	sll	t8,t7,0xe
    582c:	07010007 	bgez	t8,584c <func_80921280+0xcc>
    5830:	00000000 	nop
    5834:	86390158 	lh	t9,344(s1)
    5838:	2401000a 	li	at,10
    583c:	2408000b 	li	t0,11
    5840:	17210002 	bne	t9,at,584c <func_80921280+0xcc>
    5844:	00000000 	nop
    5848:	a6280158 	sh	t0,344(s1)
    584c:	0c000000 	jal	0 <func_8091BB00>
    5850:	24840000 	addiu	a0,a0,0
    5854:	86290158 	lh	t1,344(s1)
    5858:	24010002 	li	at,2
    585c:	112100cf 	beq	t1,at,5b9c <func_80921280+0x41c>
    5860:	00000000 	nop
    5864:	862a0160 	lh	t2,352(s1)
    5868:	154000cc 	bnez	t2,5b9c <func_80921280+0x41c>
    586c:	00000000 	nop
    5870:	0c000000 	jal	0 <func_8091BB00>
    5874:	8e040000 	lw	a0,0(s0)
    5878:	10400057 	beqz	v0,59d8 <func_80921280+0x258>
    587c:	a3a20063 	sb	v0,99(sp)
    5880:	862b0158 	lh	t3,344(s1)
    5884:	3c040000 	lui	a0,0x0
    5888:	2961000a 	slti	at,t3,10
    588c:	50200053 	beqzl	at,59dc <func_80921280+0x25c>
    5890:	8e020000 	lw	v0,0(s0)
    5894:	0c000000 	jal	0 <func_8091BB00>
    5898:	24840000 	addiu	a0,a0,0
    589c:	862e008a 	lh	t6,138(s1)
    58a0:	3c014170 	lui	at,0x4170
    58a4:	44812000 	mtc1	at,$f4
    58a8:	34018000 	li	at,0x8000
    58ac:	240c0005 	li	t4,5
    58b0:	240d0019 	li	t5,25
    58b4:	2418000f 	li	t8,15
    58b8:	01c17821 	addu	t7,t6,at
    58bc:	a62c0158 	sh	t4,344(s1)
    58c0:	a62d017e 	sh	t5,382(s1)
    58c4:	a62f0032 	sh	t7,50(s1)
    58c8:	a638015e 	sh	t8,350(s1)
    58cc:	02202025 	move	a0,s1
    58d0:	240539ec 	li	a1,14828
    58d4:	0c000000 	jal	0 <func_8091BB00>
    58d8:	e6240068 	swc1	$f4,104(s1)
    58dc:	923900af 	lbu	t9,175(s1)
    58e0:	93a80063 	lbu	t0,99(sp)
    58e4:	922a0155 	lbu	t2,341(s1)
    58e8:	3c100000 	lui	s0,0x0
    58ec:	03284823 	subu	t1,t9,t0
    58f0:	a22900af 	sb	t1,175(s1)
    58f4:	822c00af 	lb	t4,175(s1)
    58f8:	254b0001 	addiu	t3,t2,1
    58fc:	a22b0155 	sb	t3,341(s1)
    5900:	1d800032 	bgtz	t4,59cc <func_80921280+0x24c>
    5904:	26100000 	addiu	s0,s0,0
    5908:	8e0d0000 	lw	t5,0(s0)
    590c:	3c0e0000 	lui	t6,0x0
    5910:	85a20f62 	lh	v0,3938(t5)
    5914:	14400004 	bnez	v0,5928 <func_80921280+0x1a8>
    5918:	00000000 	nop
    591c:	8dce0000 	lw	t6,0(t6)
    5920:	51c0000b 	beqzl	t6,5950 <func_80921280+0x1d0>
    5924:	8fa40074 	lw	a0,116(sp)
    5928:	14400027 	bnez	v0,59c8 <func_80921280+0x248>
    592c:	240e0001 	li	t6,1
    5930:	3c020000 	lui	v0,0x0
    5934:	8c420000 	lw	v0,0(v0)
    5938:	50400024 	beqzl	v0,59cc <func_80921280+0x24c>
    593c:	a22e00af 	sb	t6,175(s1)
    5940:	844f0f62 	lh	t7,3938(v0)
    5944:	55e00021 	bnezl	t7,59cc <func_80921280+0x24c>
    5948:	a22e00af 	sb	t6,175(s1)
    594c:	8fa40074 	lw	a0,116(sp)
    5950:	0c000000 	jal	0 <func_8091BB00>
    5954:	02202825 	move	a1,s1
    5958:	3c041001 	lui	a0,0x1001
    595c:	0c000000 	jal	0 <func_8091BB00>
    5960:	348400ff 	ori	a0,a0,0xff
    5964:	24180064 	li	t8,100
    5968:	a6380f60 	sh	t8,3936(s1)
    596c:	8e190000 	lw	t9,0(s0)
    5970:	240800c8 	li	t0,200
    5974:	44803000 	mtc1	zero,$f6
    5978:	a32001d1 	sb	zero,465(t9)
    597c:	8e090000 	lw	t1,0(s0)
    5980:	3c020000 	lui	v0,0x0
    5984:	240b0001 	li	t3,1
    5988:	a5280158 	sh	t0,344(t1)
    598c:	8e0a0000 	lw	t2,0(s0)
    5990:	240d0065 	li	t5,101
    5994:	e54601a4 	swc1	$f6,420(t2)
    5998:	8c420000 	lw	v0,0(v0)
    599c:	50400003 	beqzl	v0,59ac <func_80921280+0x22c>
    59a0:	8fa20068 	lw	v0,104(sp)
    59a4:	a04b0154 	sb	t3,340(v0)
    59a8:	8fa20068 	lw	v0,104(sp)
    59ac:	8c4c0118 	lw	t4,280(v0)
    59b0:	51800007 	beqzl	t4,59d0 <func_80921280+0x250>
    59b4:	240f000a 	li	t7,10
    59b8:	a44d0850 	sh	t5,2128(v0)
    59bc:	ac400118 	sw	zero,280(v0)
    59c0:	10000002 	b	59cc <func_80921280+0x24c>
    59c4:	a0400444 	sb	zero,1092(v0)
    59c8:	a22e00af 	sb	t6,175(s1)
    59cc:	240f000a 	li	t7,10
    59d0:	10000038 	b	5ab4 <func_80921280+0x334>
    59d4:	a62f0160 	sh	t7,352(s1)
    59d8:	8e020000 	lw	v0,0(s0)
    59dc:	0002c2c0 	sll	t8,v0,0xb
    59e0:	07000034 	bltz	t8,5ab4 <func_80921280+0x334>
    59e4:	30590080 	andi	t9,v0,0x80
    59e8:	53200033 	beqzl	t9,5ab8 <func_80921280+0x338>
    59ec:	8fb90074 	lw	t9,116(sp)
    59f0:	86280158 	lh	t0,344(s1)
    59f4:	3c100000 	lui	s0,0x0
    59f8:	26100000 	addiu	s0,s0,0
    59fc:	2901000a 	slti	at,t0,10
    5a00:	54200025 	bnezl	at,5a98 <func_80921280+0x318>
    5a04:	44805000 	mtc1	zero,$f10
    5a08:	8e040000 	lw	a0,0(s0)
    5a0c:	240538f4 	li	a1,14580
    5a10:	0c000000 	jal	0 <func_8091BB00>
    5a14:	24841010 	addiu	a0,a0,4112
    5a18:	86290164 	lh	t1,356(s1)
    5a1c:	8e0a0000 	lw	t2,0(s0)
    5a20:	8fa30068 	lw	v1,104(sp)
    5a24:	3c013f80 	lui	at,0x3f80
    5a28:	a5490172 	sh	t1,370(t2)
    5a2c:	8e020000 	lw	v0,0(s0)
    5a30:	44814000 	mtc1	at,$f8
    5a34:	240e0064 	li	t6,100
    5a38:	844b0172 	lh	t3,370(v0)
    5a3c:	24180028 	li	t8,40
    5a40:	2401fffe 	li	at,-2
    5a44:	256c0001 	addiu	t4,t3,1
    5a48:	a44c0174 	sh	t4,372(v0)
    5a4c:	8e0d0000 	lw	t5,0(s0)
    5a50:	240c0065 	li	t4,101
    5a54:	e5a801a8 	swc1	$f8,424(t5)
    5a58:	8e0f0000 	lw	t7,0(s0)
    5a5c:	a5ee0158 	sh	t6,344(t7)
    5a60:	8e190000 	lw	t9,0(s0)
    5a64:	a738017e 	sh	t8,382(t9)
    5a68:	8e020000 	lw	v0,0(s0)
    5a6c:	8c480004 	lw	t0,4(v0)
    5a70:	01014824 	and	t1,t0,at
    5a74:	ac490004 	sw	t1,4(v0)
    5a78:	8e0a0000 	lw	t2,0(s0)
    5a7c:	8c6b0118 	lw	t3,280(v1)
    5a80:	554b0005 	bnel	t2,t3,5a98 <func_80921280+0x318>
    5a84:	44805000 	mtc1	zero,$f10
    5a88:	a46c0850 	sh	t4,2128(v1)
    5a8c:	ac600118 	sw	zero,280(v1)
    5a90:	a0600444 	sb	zero,1092(v1)
    5a94:	44805000 	mtc1	zero,$f10
    5a98:	240d0005 	li	t5,5
    5a9c:	240e001e 	li	t6,30
    5aa0:	240f000a 	li	t7,10
    5aa4:	a62d0158 	sh	t5,344(s1)
    5aa8:	a62e017e 	sh	t6,382(s1)
    5aac:	a62f0160 	sh	t7,352(s1)
    5ab0:	e62a0068 	swc1	$f10,104(s1)
    5ab4:	8fb90074 	lw	t9,116(sp)
    5ab8:	3c010001 	lui	at,0x1
    5abc:	26380024 	addiu	t8,s1,36
    5ac0:	03214021 	addu	t0,t9,at
    5ac4:	3c014080 	lui	at,0x4080
    5ac8:	4481b000 	mtc1	at,$f22
    5acc:	3c014040 	lui	at,0x4040
    5ad0:	4481a000 	mtc1	at,$f20
    5ad4:	afa8003c 	sw	t0,60(sp)
    5ad8:	afb80040 	sw	t8,64(sp)
    5adc:	27b10054 	addiu	s1,sp,84
    5ae0:	00008025 	move	s0,zero
    5ae4:	0c000000 	jal	0 <func_8091BB00>
    5ae8:	4600b306 	mov.s	$f12,$f22
    5aec:	3c014000 	lui	at,0x4000
    5af0:	44816000 	mtc1	at,$f12
    5af4:	0c000000 	jal	0 <func_8091BB00>
    5af8:	e7a00048 	swc1	$f0,72(sp)
    5afc:	46140400 	add.s	$f16,$f0,$f20
    5b00:	4600b306 	mov.s	$f12,$f22
    5b04:	0c000000 	jal	0 <func_8091BB00>
    5b08:	e7b0004c 	swc1	$f16,76(sp)
    5b0c:	8fa90040 	lw	t1,64(sp)
    5b10:	e7a00050 	swc1	$f0,80(sp)
    5b14:	3c010000 	lui	at,0x0
    5b18:	8d2b0000 	lw	t3,0(t1)
    5b1c:	ae2b0000 	sw	t3,0(s1)
    5b20:	8d2a0004 	lw	t2,4(t1)
    5b24:	ae2a0004 	sw	t2,4(s1)
    5b28:	8d2b0008 	lw	t3,8(t1)
    5b2c:	ae2b0008 	sw	t3,8(s1)
    5b30:	c7a40048 	lwc1	$f4,72(sp)
    5b34:	c7b20054 	lwc1	$f18,84(sp)
    5b38:	c7aa005c 	lwc1	$f10,92(sp)
    5b3c:	46142182 	mul.s	$f6,$f4,$f20
    5b40:	c42c0000 	lwc1	$f12,0(at)
    5b44:	46140402 	mul.s	$f16,$f0,$f20
    5b48:	46069200 	add.s	$f8,$f18,$f6
    5b4c:	46105100 	add.s	$f4,$f10,$f16
    5b50:	e7a80054 	swc1	$f8,84(sp)
    5b54:	0c000000 	jal	0 <func_8091BB00>
    5b58:	e7a4005c 	swc1	$f4,92(sp)
    5b5c:	3c010000 	lui	at,0x0
    5b60:	c4320000 	lwc1	$f18,0(at)
    5b64:	8fac003c 	lw	t4,60(sp)
    5b68:	24040003 	li	a0,3
    5b6c:	46120180 	add.s	$f6,$f0,$f18
    5b70:	8d851e10 	lw	a1,7696(t4)
    5b74:	02203025 	move	a2,s1
    5b78:	27a70048 	addiu	a3,sp,72
    5b7c:	0c000000 	jal	0 <func_8091BB00>
    5b80:	e7a60010 	swc1	$f6,16(sp)
    5b84:	26100001 	addiu	s0,s0,1
    5b88:	00108400 	sll	s0,s0,0x10
    5b8c:	00108403 	sra	s0,s0,0x10
    5b90:	2a01000a 	slti	at,s0,10
    5b94:	1420ffd3 	bnez	at,5ae4 <func_80921280+0x364>
    5b98:	00000000 	nop
    5b9c:	3c040000 	lui	a0,0x0
    5ba0:	0c000000 	jal	0 <func_8091BB00>
    5ba4:	24840000 	addiu	a0,a0,0
    5ba8:	3c040000 	lui	a0,0x0
    5bac:	0c000000 	jal	0 <func_8091BB00>
    5bb0:	24840000 	addiu	a0,a0,0
    5bb4:	8fbf0034 	lw	ra,52(sp)
    5bb8:	d7b40018 	ldc1	$f20,24(sp)
    5bbc:	d7b60020 	ldc1	$f22,32(sp)
    5bc0:	8fb0002c 	lw	s0,44(sp)
    5bc4:	8fb10030 	lw	s1,48(sp)
    5bc8:	03e00008 	jr	ra
    5bcc:	27bd0070 	addiu	sp,sp,112

00005bd0 <func_809216D0>:
    5bd0:	27bdff18 	addiu	sp,sp,-232
    5bd4:	afbf003c 	sw	ra,60(sp)
    5bd8:	afb20038 	sw	s2,56(sp)
    5bdc:	afb10034 	sw	s1,52(sp)
    5be0:	afb00030 	sw	s0,48(sp)
    5be4:	f7b40028 	sdc1	$f20,40(sp)
    5be8:	afa500ec 	sw	a1,236(sp)
    5bec:	3c01bf80 	lui	at,0xbf80
    5bf0:	44810000 	mtc1	at,$f0
    5bf4:	c48401ac 	lwc1	$f4,428(a0)
    5bf8:	8cb21c44 	lw	s2,7236(a1)
    5bfc:	c48801b0 	lwc1	$f8,432(a0)
    5c00:	46002180 	add.s	$f6,$f4,$f0
    5c04:	3c013f80 	lui	at,0x3f80
    5c08:	c48401b8 	lwc1	$f4,440(a0)
    5c0c:	46004280 	add.s	$f10,$f8,$f0
    5c10:	e48601ac 	swc1	$f6,428(a0)
    5c14:	44813000 	mtc1	at,$f6
    5c18:	c49201b4 	lwc1	$f18,436(a0)
    5c1c:	00808825 	move	s1,a0
    5c20:	46062200 	add.s	$f8,$f4,$f6
    5c24:	e48a01b0 	swc1	$f10,432(a0)
    5c28:	248401a4 	addiu	a0,a0,420
    5c2c:	3c05437f 	lui	a1,0x437f
    5c30:	e4880014 	swc1	$f8,20(a0)
    5c34:	3c063f80 	lui	a2,0x3f80
    5c38:	3c074120 	lui	a3,0x4120
    5c3c:	0c000000 	jal	0 <func_8091BB00>
    5c40:	e4920010 	swc1	$f18,16(a0)
    5c44:	86220f60 	lh	v0,3936(s1)
    5c48:	1040000e 	beqz	v0,5c84 <func_809216D0+0xb4>
    5c4c:	28410064 	slti	at,v0,100
    5c50:	1020000c 	beqz	at,5c84 <func_809216D0+0xb4>
    5c54:	02202025 	move	a0,s1
    5c58:	0c000000 	jal	0 <func_8091BB00>
    5c5c:	8fa500ec 	lw	a1,236(sp)
    5c60:	862f0158 	lh	t7,344(s1)
    5c64:	24010014 	li	at,20
    5c68:	55e1000e 	bnel	t7,at,5ca4 <func_809216D0+0xd4>
    5c6c:	86230158 	lh	v1,344(s1)
    5c70:	8e380004 	lw	t8,4(s1)
    5c74:	2401fffe 	li	at,-2
    5c78:	0301c824 	and	t9,t8,at
    5c7c:	10000565 	b	7214 <L80921B08+0x120c>
    5c80:	ae390004 	sw	t9,4(s1)
    5c84:	28410064 	slti	at,v0,100
    5c88:	14200005 	bnez	at,5ca0 <func_809216D0+0xd0>
    5c8c:	02202025 	move	a0,s1
    5c90:	0c000000 	jal	0 <func_8091BB00>
    5c94:	8fa500ec 	lw	a1,236(sp)
    5c98:	1000055f 	b	7218 <L80921B08+0x1210>
    5c9c:	8fbf003c 	lw	ra,60(sp)
    5ca0:	86230158 	lh	v1,344(s1)
    5ca4:	3c063e4c 	lui	a2,0x3e4c
    5ca8:	34c6cccd 	ori	a2,a2,0xcccd
    5cac:	2861000a 	slti	at,v1,10
    5cb0:	1020001e 	beqz	at,5d2c <func_809216D0+0x15c>
    5cb4:	26240050 	addiu	a0,s1,80
    5cb8:	0460001c 	bltz	v1,5d2c <func_809216D0+0x15c>
    5cbc:	8fa800ec 	lw	t0,236(sp)
    5cc0:	8d0907c0 	lw	t1,1984(t0)
    5cc4:	c6240028 	lwc1	$f4,40(s1)
    5cc8:	8d2a0028 	lw	t2,40(t1)
    5ccc:	854b0002 	lh	t3,2(t2)
    5cd0:	448b5000 	mtc1	t3,$f10
    5cd4:	00000000 	nop
    5cd8:	468054a0 	cvt.s.w	$f18,$f10
    5cdc:	4604903c 	c.lt.s	$f18,$f4
    5ce0:	00000000 	nop
    5ce4:	45000011 	bc1f	5d2c <func_809216D0+0x15c>
    5ce8:	00000000 	nop
    5cec:	4480a000 	mtc1	zero,$f20
    5cf0:	c6260060 	lwc1	$f6,96(s1)
    5cf4:	3c010000 	lui	at,0x0
    5cf8:	4606a03c 	c.lt.s	$f20,$f6
    5cfc:	00000000 	nop
    5d00:	45000006 	bc1f	5d1c <func_809216D0+0x14c>
    5d04:	00000000 	nop
    5d08:	3c010000 	lui	at,0x0
    5d0c:	c4200000 	lwc1	$f0,0(at)
    5d10:	3c010000 	lui	at,0x0
    5d14:	10000009 	b	5d3c <func_809216D0+0x16c>
    5d18:	c4220000 	lwc1	$f2,0(at)
    5d1c:	c4200000 	lwc1	$f0,0(at)
    5d20:	3c010000 	lui	at,0x0
    5d24:	10000005 	b	5d3c <func_809216D0+0x16c>
    5d28:	c4220000 	lwc1	$f2,0(at)
    5d2c:	3c010000 	lui	at,0x0
    5d30:	c4200000 	lwc1	$f0,0(at)
    5d34:	4480a000 	mtc1	zero,$f20
    5d38:	46000086 	mov.s	$f2,$f0
    5d3c:	44050000 	mfc1	a1,$f0
    5d40:	3c073a83 	lui	a3,0x3a83
    5d44:	34e7126f 	ori	a3,a3,0x126f
    5d48:	0c000000 	jal	0 <func_8091BB00>
    5d4c:	e7a200bc 	swc1	$f2,188(sp)
    5d50:	c7a200bc 	lwc1	$f2,188(sp)
    5d54:	c6280050 	lwc1	$f8,80(s1)
    5d58:	3c063e4c 	lui	a2,0x3e4c
    5d5c:	3c073a83 	lui	a3,0x3a83
    5d60:	44051000 	mfc1	a1,$f2
    5d64:	34e7126f 	ori	a3,a3,0x126f
    5d68:	34c6cccd 	ori	a2,a2,0xcccd
    5d6c:	26240054 	addiu	a0,s1,84
    5d70:	0c000000 	jal	0 <func_8091BB00>
    5d74:	e6280058 	swc1	$f8,88(s1)
    5d78:	26240024 	addiu	a0,s1,36
    5d7c:	afa40040 	sw	a0,64(sp)
    5d80:	0c000000 	jal	0 <func_8091BB00>
    5d84:	3c054170 	lui	a1,0x4170
    5d88:	a6220166 	sh	v0,358(s1)
    5d8c:	4405a000 	mfc1	a1,$f20
    5d90:	0c000000 	jal	0 <func_8091BB00>
    5d94:	8fa40040 	lw	a0,64(sp)
    5d98:	8fac00ec 	lw	t4,236(sp)
    5d9c:	a3a200e7 	sb	v0,231(sp)
    5da0:	3c014248 	lui	at,0x4248
    5da4:	8d8d07c0 	lw	t5,1984(t4)
    5da8:	44813000 	mtc1	at,$f6
    5dac:	c64a0028 	lwc1	$f10,40(s2)
    5db0:	8dae0028 	lw	t6,40(t5)
    5db4:	85cf0002 	lh	t7,2(t6)
    5db8:	448f9000 	mtc1	t7,$f18
    5dbc:	00000000 	nop
    5dc0:	46809120 	cvt.s.w	$f4,$f18
    5dc4:	46062201 	sub.s	$f8,$f4,$f6
    5dc8:	4608503c 	c.lt.s	$f10,$f8
    5dcc:	00000000 	nop
    5dd0:	4502000c 	bc1fl	5e04 <func_809216D0+0x234>
    5dd4:	86230158 	lh	v1,344(s1)
    5dd8:	86230158 	lh	v1,344(s1)
    5ddc:	24010001 	li	at,1
    5de0:	24180002 	li	t8,2
    5de4:	50600004 	beqzl	v1,5df8 <func_809216D0+0x228>
    5de8:	a6380158 	sh	t8,344(s1)
    5dec:	54610005 	bnel	v1,at,5e04 <func_809216D0+0x234>
    5df0:	86230158 	lh	v1,344(s1)
    5df4:	a6380158 	sh	t8,344(s1)
    5df8:	e6340068 	swc1	$f20,104(s1)
    5dfc:	a6200168 	sh	zero,360(s1)
    5e00:	86230158 	lh	v1,344(s1)
    5e04:	2479000b 	addiu	t9,v1,11
    5e08:	2f210011 	sltiu	at,t9,17
    5e0c:	1020007e 	beqz	at,6008 <L80921B08>
    5e10:	0019c880 	sll	t9,t9,0x2
    5e14:	3c010000 	lui	at,0x0
    5e18:	00390821 	addu	at,at,t9
    5e1c:	8c390000 	lw	t9,0(at)
    5e20:	03200008 	jr	t9
    5e24:	00000000 	nop

00005e28 <L80921928>:
    5e28:	8e280004 	lw	t0,4(s1)
    5e2c:	862a017e 	lh	t2,382(s1)
    5e30:	35090001 	ori	t1,t0,0x1
    5e34:	15400027 	bnez	t2,5ed4 <L80921928+0xac>
    5e38:	ae290004 	sw	t1,4(s1)
    5e3c:	3c0b0000 	lui	t3,0x0
    5e40:	8d6b0000 	lw	t3,0(t3)
    5e44:	2404000a 	li	a0,10
    5e48:	85620158 	lh	v0,344(t3)
    5e4c:	50820004 	beql	a0,v0,5e60 <L80921928+0x38>
    5e50:	8fac00ec 	lw	t4,236(sp)
    5e54:	1440001f 	bnez	v0,5ed4 <L80921928+0xac>
    5e58:	00000000 	nop
    5e5c:	8fac00ec 	lw	t4,236(sp)
    5e60:	c6320028 	lwc1	$f18,40(s1)
    5e64:	24180001 	li	t8,1
    5e68:	8d8d07c0 	lw	t5,1984(t4)
    5e6c:	3c100000 	lui	s0,0x0
    5e70:	8dae0028 	lw	t6,40(t5)
    5e74:	85cf0002 	lh	t7,2(t6)
    5e78:	448f2000 	mtc1	t7,$f4
    5e7c:	00000000 	nop
    5e80:	468021a0 	cvt.s.w	$f6,$f4
    5e84:	4606903c 	c.lt.s	$f18,$f6
    5e88:	00000000 	nop
    5e8c:	45000011 	bc1f	5ed4 <L80921928+0xac>
    5e90:	00000000 	nop
    5e94:	e6340068 	swc1	$f20,104(s1)
    5e98:	a6380158 	sh	t8,344(s1)
    5e9c:	8e100000 	lw	s0,0(s0)
    5ea0:	2408000b 	li	t0,11
    5ea4:	3c0a0000 	lui	t2,0x0
    5ea8:	86190158 	lh	t9,344(s0)
    5eac:	14990009 	bne	a0,t9,5ed4 <L80921928+0xac>
    5eb0:	00000000 	nop
    5eb4:	a6080158 	sh	t0,344(s0)
    5eb8:	8d4a0000 	lw	t2,0(t2)
    5ebc:	24090046 	li	t1,70
    5ec0:	3c100000 	lui	s0,0x0
    5ec4:	a549017e 	sh	t1,382(t2)
    5ec8:	8e100000 	lw	s0,0(s0)
    5ecc:	860b008a 	lh	t3,138(s0)
    5ed0:	a60b00b6 	sh	t3,182(s0)
    5ed4:	1000004c 	b	6008 <L80921B08>
    5ed8:	86230158 	lh	v1,344(s1)

00005edc <L809219DC>:
    5edc:	3c0c0000 	lui	t4,0x0
    5ee0:	8d8c0000 	lw	t4,0(t4)
    5ee4:	24010066 	li	at,102
    5ee8:	2404000a 	li	a0,10
    5eec:	85820158 	lh	v0,344(t4)
    5ef0:	24100064 	li	s0,100
    5ef4:	3c0f0000 	lui	t7,0x0
    5ef8:	50410004 	beql	v0,at,5f0c <L809219DC+0x30>
    5efc:	240d0046 	li	t5,70
    5f00:	14820008 	bne	a0,v0,5f24 <L809219DC+0x48>
    5f04:	00000000 	nop
    5f08:	240d0046 	li	t5,70
    5f0c:	a6200158 	sh	zero,344(s1)
    5f10:	a62d017e 	sh	t5,382(s1)
    5f14:	3c0e0000 	lui	t6,0x0
    5f18:	8dce0000 	lw	t6,0(t6)
    5f1c:	2404000a 	li	a0,10
    5f20:	85c20158 	lh	v0,344(t6)
    5f24:	16020006 	bne	s0,v0,5f40 <L809219DC+0x64>
    5f28:	24010002 	li	at,2
    5f2c:	a6240158 	sh	a0,344(s1)
    5f30:	a6200164 	sh	zero,356(s1)
    5f34:	a620017e 	sh	zero,382(s1)
    5f38:	8def0000 	lw	t7,0(t7)
    5f3c:	85e20158 	lh	v0,344(t7)
    5f40:	14410005 	bne	v0,at,5f58 <L809219DC+0x7c>
    5f44:	00000000 	nop
    5f48:	a6240158 	sh	a0,344(s1)
    5f4c:	a6200164 	sh	zero,356(s1)
    5f50:	a620017e 	sh	zero,382(s1)
    5f54:	e6340068 	swc1	$f20,104(s1)
    5f58:	1000002b 	b	6008 <L80921B08>
    5f5c:	86230158 	lh	v1,344(s1)

00005f60 <L80921A60>:
    5f60:	8fb800ec 	lw	t8,236(sp)
    5f64:	c64a0028 	lwc1	$f10,40(s2)
    5f68:	8f1907c0 	lw	t9,1984(t8)
    5f6c:	8f280028 	lw	t0,40(t9)
    5f70:	85090002 	lh	t1,2(t0)
    5f74:	44894000 	mtc1	t1,$f8
    5f78:	00000000 	nop
    5f7c:	46804120 	cvt.s.w	$f4,$f8
    5f80:	460a203e 	c.le.s	$f4,$f10
    5f84:	00000000 	nop
    5f88:	45020020 	bc1fl	600c <L80921B08+0x4>
    5f8c:	862a017e 	lh	t2,382(s1)
    5f90:	a6200158 	sh	zero,344(s1)
    5f94:	86230158 	lh	v1,344(s1)
    5f98:	1000001b 	b	6008 <L80921B08>
    5f9c:	e6340068 	swc1	$f20,104(s1)

00005fa0 <L80921AA0>:
    5fa0:	8e2a0004 	lw	t2,4(s1)
    5fa4:	862c017e 	lh	t4,382(s1)
    5fa8:	24080001 	li	t0,1
    5fac:	354b0001 	ori	t3,t2,0x1
    5fb0:	15800004 	bnez	t4,5fc4 <L80921AA0+0x24>
    5fb4:	ae2b0004 	sw	t3,4(s1)
    5fb8:	240d001e 	li	t5,30
    5fbc:	a6200158 	sh	zero,344(s1)
    5fc0:	a62d017e 	sh	t5,382(s1)
    5fc4:	8fae00ec 	lw	t6,236(sp)
    5fc8:	c6320028 	lwc1	$f18,40(s1)
    5fcc:	8dcf07c0 	lw	t7,1984(t6)
    5fd0:	8df80028 	lw	t8,40(t7)
    5fd4:	87190002 	lh	t9,2(t8)
    5fd8:	44993000 	mtc1	t9,$f6
    5fdc:	00000000 	nop
    5fe0:	46803220 	cvt.s.w	$f8,$f6
    5fe4:	4608903c 	c.lt.s	$f18,$f8
    5fe8:	00000000 	nop
    5fec:	45020006 	bc1fl	6008 <L80921B08>
    5ff0:	86230158 	lh	v1,344(s1)
    5ff4:	24090032 	li	t1,50
    5ff8:	a6280158 	sh	t0,344(s1)
    5ffc:	a629017e 	sh	t1,382(s1)
    6000:	e6340068 	swc1	$f20,104(s1)
    6004:	86230158 	lh	v1,344(s1)

00006008 <L80921B08>:
    6008:	862a017e 	lh	t2,382(s1)
    600c:	2404000a 	li	a0,10
    6010:	24100064 	li	s0,100
    6014:	5540006e 	bnezl	t2,61d0 <L80921B08+0x1c8>
    6018:	2861000a 	slti	at,v1,10
    601c:	10640008 	beq	v1,a0,6040 <L80921B08+0x38>
    6020:	00601025 	move	v0,v1
    6024:	2401000b 	li	at,11
    6028:	10610034 	beq	v1,at,60fc <L80921B08+0xf4>
    602c:	24010015 	li	at,21
    6030:	50610041 	beql	v1,at,6138 <L80921B08+0x130>
    6034:	8e2f0004 	lw	t7,4(s1)
    6038:	10000065 	b	61d0 <L80921B08+0x1c8>
    603c:	2861000a 	slti	at,v1,10
    6040:	8e2b0004 	lw	t3,4(s1)
    6044:	862d0164 	lh	t5,356(s1)
    6048:	3c0f0000 	lui	t7,0x0
    604c:	356c0001 	ori	t4,t3,0x1
    6050:	25ae0001 	addiu	t6,t5,1
    6054:	ae2c0004 	sw	t4,4(s1)
    6058:	a62e0164 	sh	t6,356(s1)
    605c:	8def0000 	lw	t7,0(t7)
    6060:	24010002 	li	at,2
    6064:	85f80158 	lh	t8,344(t7)
    6068:	17010017 	bne	t8,at,60c8 <L80921B08+0xc0>
    606c:	00000000 	nop
    6070:	8624015a 	lh	a0,346(s1)
    6074:	00800821 	move	at,a0
    6078:	00042080 	sll	a0,a0,0x2
    607c:	00812023 	subu	a0,a0,at
    6080:	00042200 	sll	a0,a0,0x8
    6084:	00042400 	sll	a0,a0,0x10
    6088:	0c000000 	jal	0 <func_8091BB00>
    608c:	00042403 	sra	a0,a0,0x10
    6090:	3c014120 	lui	at,0x4120
    6094:	44815000 	mtc1	at,$f10
    6098:	86280164 	lh	t0,356(s1)
    609c:	460a0102 	mul.s	$f4,$f0,$f10
    60a0:	4600218d 	trunc.w.s	$f6,$f4
    60a4:	44023000 	mfc1	v0,$f6
    60a8:	00000000 	nop
    60ac:	00021400 	sll	v0,v0,0x10
    60b0:	00021403 	sra	v0,v0,0x10
    60b4:	2442000f 	addiu	v0,v0,15
    60b8:	0102082a 	slt	at,t0,v0
    60bc:	14200002 	bnez	at,60c8 <L80921B08+0xc0>
    60c0:	00000000 	nop
    60c4:	a6220164 	sh	v0,356(s1)
    60c8:	3c090000 	lui	t1,0x0
    60cc:	8d290000 	lw	t1,0(t1)
    60d0:	24010002 	li	at,2
    60d4:	85220158 	lh	v0,344(t1)
    60d8:	10410006 	beq	v0,at,60f4 <L80921B08+0xec>
    60dc:	00000000 	nop
    60e0:	12020004 	beq	s0,v0,60f4 <L80921B08+0xec>
    60e4:	00000000 	nop
    60e8:	240a000b 	li	t2,11
    60ec:	a62a0158 	sh	t2,344(s1)
    60f0:	a620017e 	sh	zero,382(s1)
    60f4:	10000035 	b	61cc <L80921B08+0x1c4>
    60f8:	86230158 	lh	v1,344(s1)
    60fc:	862b0164 	lh	t3,356(s1)
    6100:	256cffff 	addiu	t4,t3,-1
    6104:	a62c0164 	sh	t4,356(s1)
    6108:	862d0164 	lh	t5,356(s1)
    610c:	5da00007 	bgtzl	t5,612c <L80921B08+0x124>
    6110:	a620017e 	sh	zero,382(s1)
    6114:	240e0001 	li	t6,1
    6118:	a62e0158 	sh	t6,344(s1)
    611c:	a630017e 	sh	s0,382(s1)
    6120:	e6340d68 	swc1	$f20,3432(s1)
    6124:	e6340068 	swc1	$f20,104(s1)
    6128:	a620017e 	sh	zero,382(s1)
    612c:	10000027 	b	61cc <L80921B08+0x1c4>
    6130:	86230158 	lh	v1,344(s1)
    6134:	8e2f0004 	lw	t7,4(s1)
    6138:	8624015a 	lh	a0,346(s1)
    613c:	2401fffe 	li	at,-2
    6140:	01e1c024 	and	t8,t7,at
    6144:	00800821 	move	at,a0
    6148:	86390164 	lh	t9,356(s1)
    614c:	00042080 	sll	a0,a0,0x2
    6150:	00812021 	addu	a0,a0,at
    6154:	00042200 	sll	a0,a0,0x8
    6158:	00042400 	sll	a0,a0,0x10
    615c:	27280001 	addiu	t0,t9,1
    6160:	ae380004 	sw	t8,4(s1)
    6164:	a6280164 	sh	t0,356(s1)
    6168:	0c000000 	jal	0 <func_8091BB00>
    616c:	00042403 	sra	a0,a0,0x10
    6170:	3c014120 	lui	at,0x4120
    6174:	44819000 	mtc1	at,$f18
    6178:	862a0164 	lh	t2,356(s1)
    617c:	3c0b0000 	lui	t3,0x0
    6180:	46120202 	mul.s	$f8,$f0,$f18
    6184:	4600428d 	trunc.w.s	$f10,$f8
    6188:	44025000 	mfc1	v0,$f10
    618c:	00000000 	nop
    6190:	00021400 	sll	v0,v0,0x10
    6194:	00021403 	sra	v0,v0,0x10
    6198:	2442000f 	addiu	v0,v0,15
    619c:	0142082a 	slt	at,t2,v0
    61a0:	14200002 	bnez	at,61ac <L80921B08+0x1a4>
    61a4:	00000000 	nop
    61a8:	a6220164 	sh	v0,356(s1)
    61ac:	8d6b0000 	lw	t3,0(t3)
    61b0:	856c0158 	lh	t4,344(t3)
    61b4:	51800005 	beqzl	t4,61cc <L80921B08+0x1c4>
    61b8:	86230158 	lh	v1,344(s1)
    61bc:	240d000b 	li	t5,11
    61c0:	a62d0158 	sh	t5,344(s1)
    61c4:	a620017e 	sh	zero,382(s1)
    61c8:	86230158 	lh	v1,344(s1)
    61cc:	2861000a 	slti	at,v1,10
    61d0:	14200088 	bnez	at,63f4 <L80921B08+0x3ec>
    61d4:	3c100000 	lui	s0,0x0
    61d8:	86240164 	lh	a0,356(s1)
    61dc:	04830005 	bgezl	a0,61f4 <L80921B08+0x1ec>
    61e0:	28810029 	slti	at,a0,41
    61e4:	a6200164 	sh	zero,356(s1)
    61e8:	10000007 	b	6208 <L80921B08+0x200>
    61ec:	86240164 	lh	a0,356(s1)
    61f0:	28810029 	slti	at,a0,41
    61f4:	14200004 	bnez	at,6208 <L80921B08+0x200>
    61f8:	00000000 	nop
    61fc:	240e0028 	li	t6,40
    6200:	a62e0164 	sh	t6,356(s1)
    6204:	86240164 	lh	a0,356(s1)
    6208:	8e100000 	lw	s0,0(s0)
    620c:	2405012c 	li	a1,300
    6210:	00047840 	sll	t7,a0,0x1
    6214:	8619016a 	lh	t9,362(s0)
    6218:	00afc023 	subu	t8,a1,t7
    621c:	00044880 	sll	t1,a0,0x2
    6220:	03194021 	addu	t0,t8,t9
    6224:	0105001a 	div	zero,t0,a1
    6228:	14a00002 	bnez	a1,6234 <L80921B08+0x22c>
    622c:	00000000 	nop
    6230:	0007000d 	break	0x7
    6234:	2401ffff 	li	at,-1
    6238:	14a10004 	bne	a1,at,624c <L80921B08+0x244>
    623c:	3c018000 	lui	at,0x8000
    6240:	15010002 	bne	t0,at,624c <L80921B08+0x244>
    6244:	00000000 	nop
    6248:	0006000d 	break	0x6
    624c:	00001010 	mfhi	v0
    6250:	00021400 	sll	v0,v0,0x10
    6254:	00021403 	sra	v0,v0,0x10
    6258:	00025080 	sll	t2,v0,0x2
    625c:	3c010000 	lui	at,0x0
    6260:	00290821 	addu	at,at,t1
    6264:	020a5821 	addu	t3,s0,t2
    6268:	c56601f8 	lwc1	$f6,504(t3)
    626c:	c4240000 	lwc1	$f4,0(at)
    6270:	2403fffb 	li	v1,-5
    6274:	46062482 	mul.s	$f18,$f4,$f6
    6278:	e7b20088 	swc1	$f18,136(sp)
    627c:	00831021 	addu	v0,a0,v1
    6280:	2442fffe 	addiu	v0,v0,-2
    6284:	00021400 	sll	v0,v0,0x10
    6288:	00021403 	sra	v0,v0,0x10
    628c:	0440001d 	bltz	v0,6304 <L80921B08+0x2fc>
    6290:	28410029 	slti	at,v0,41
    6294:	1020001b 	beqz	at,6304 <L80921B08+0x2fc>
    6298:	00036880 	sll	t5,v1,0x2
    629c:	3c010000 	lui	at,0x0
    62a0:	002d0821 	addu	at,at,t5
    62a4:	c4280000 	lwc1	$f8,0(at)
    62a8:	3c014396 	lui	at,0x4396
    62ac:	44815000 	mtc1	at,$f10
    62b0:	3c0142c8 	lui	at,0x42c8
    62b4:	44813000 	mtc1	at,$f6
    62b8:	460a4102 	mul.s	$f4,$f8,$f10
    62bc:	c7a80088 	lwc1	$f8,136(sp)
    62c0:	00026080 	sll	t4,v0,0x2
    62c4:	01826023 	subu	t4,t4,v0
    62c8:	000c6080 	sll	t4,t4,0x2
    62cc:	020c2021 	addu	a0,s0,t4
    62d0:	24840894 	addiu	a0,a0,2196
    62d4:	46062483 	div.s	$f18,$f4,$f6
    62d8:	3c063f40 	lui	a2,0x3f40
    62dc:	3c0740a0 	lui	a3,0x40a0
    62e0:	a7a3008e 	sh	v1,142(sp)
    62e4:	46089280 	add.s	$f10,$f18,$f8
    62e8:	44055000 	mfc1	a1,$f10
    62ec:	0c000000 	jal	0 <func_8091BB00>
    62f0:	00000000 	nop
    62f4:	3c100000 	lui	s0,0x0
    62f8:	8e100000 	lw	s0,0(s0)
    62fc:	87a3008e 	lh	v1,142(sp)
    6300:	86240164 	lh	a0,356(s1)
    6304:	24630001 	addiu	v1,v1,1
    6308:	00031c00 	sll	v1,v1,0x10
    630c:	00031c03 	sra	v1,v1,0x10
    6310:	28610006 	slti	at,v1,6
    6314:	5420ffda 	bnezl	at,6280 <L80921B08+0x278>
    6318:	00831021 	addu	v0,a0,v1
    631c:	00041080 	sll	v0,a0,0x2
    6320:	00441023 	subu	v0,v0,a0
    6324:	00021080 	sll	v0,v0,0x2
    6328:	02027021 	addu	t6,s0,v0
    632c:	c5c40d70 	lwc1	$f4,3440(t6)
    6330:	3c0f0000 	lui	t7,0x0
    6334:	3c190000 	lui	t9,0x0
    6338:	e62401d4 	swc1	$f4,468(s1)
    633c:	8def0000 	lw	t7,0(t7)
    6340:	28810002 	slti	at,a0,2
    6344:	3c063f00 	lui	a2,0x3f00
    6348:	01e2c021 	addu	t8,t7,v0
    634c:	c7060d74 	lwc1	$f6,3444(t8)
    6350:	e62601d8 	swc1	$f6,472(s1)
    6354:	8f390000 	lw	t9,0(t9)
    6358:	03224021 	addu	t0,t9,v0
    635c:	c5120d78 	lwc1	$f18,3448(t0)
    6360:	10200006 	beqz	at,637c <L80921B08+0x374>
    6364:	e63201dc 	swc1	$f18,476(s1)
    6368:	3c0141a0 	lui	at,0x41a0
    636c:	44815000 	mtc1	at,$f10
    6370:	c62801d8 	lwc1	$f8,472(s1)
    6374:	460a4101 	sub.s	$f4,$f8,$f10
    6378:	e62401d8 	swc1	$f4,472(s1)
    637c:	8fa40040 	lw	a0,64(sp)
    6380:	8e2501d4 	lw	a1,468(s1)
    6384:	0c000000 	jal	0 <func_8091BB00>
    6388:	8e270068 	lw	a3,104(s1)
    638c:	26240028 	addiu	a0,s1,40
    6390:	8e2501d8 	lw	a1,472(s1)
    6394:	3c063f00 	lui	a2,0x3f00
    6398:	0c000000 	jal	0 <func_8091BB00>
    639c:	8e270068 	lw	a3,104(s1)
    63a0:	2624002c 	addiu	a0,s1,44
    63a4:	8e2501dc 	lw	a1,476(s1)
    63a8:	3c063f00 	lui	a2,0x3f00
    63ac:	0c000000 	jal	0 <func_8091BB00>
    63b0:	8e270068 	lw	a3,104(s1)
    63b4:	3c013f80 	lui	at,0x3f80
    63b8:	44810000 	mtc1	at,$f0
    63bc:	26240068 	addiu	a0,s1,104
    63c0:	3c0541f0 	lui	a1,0x41f0
    63c4:	44060000 	mfc1	a2,$f0
    63c8:	44070000 	mfc1	a3,$f0
    63cc:	0c000000 	jal	0 <func_8091BB00>
    63d0:	00000000 	nop
    63d4:	8fa900ec 	lw	t1,236(sp)
    63d8:	c6220028 	lwc1	$f2,40(s1)
    63dc:	8d2a07c0 	lw	t2,1984(t1)
    63e0:	8d4b0028 	lw	t3,40(t2)
    63e4:	856c0002 	lh	t4,2(t3)
    63e8:	448c3000 	mtc1	t4,$f6
    63ec:	1000026d 	b	6da4 <L80921B08+0xd9c>
    63f0:	46803020 	cvt.s.w	$f0,$f6
    63f4:	10600005 	beqz	v1,640c <L80921B08+0x404>
    63f8:	24010005 	li	at,5
    63fc:	10610036 	beq	v1,at,64d8 <L80921B08+0x4d0>
    6400:	00000000 	nop
    6404:	10000047 	b	6524 <L80921B08+0x51c>
    6408:	c6220028 	lwc1	$f2,40(s1)
    640c:	8624015c 	lh	a0,348(s1)
    6410:	000422c0 	sll	a0,a0,0xb
    6414:	00042400 	sll	a0,a0,0x10
    6418:	0c000000 	jal	0 <func_8091BB00>
    641c:	00042403 	sra	a0,a0,0x10
    6420:	3c0142c8 	lui	at,0x42c8
    6424:	44819000 	mtc1	at,$f18
    6428:	00000000 	nop
    642c:	46120202 	mul.s	$f8,$f0,$f18
    6430:	e7a80080 	swc1	$f8,128(sp)
    6434:	8624015c 	lh	a0,348(s1)
    6438:	000422c0 	sll	a0,a0,0xb
    643c:	00042400 	sll	a0,a0,0x10
    6440:	0c000000 	jal	0 <func_8091BB00>
    6444:	00042403 	sra	a0,a0,0x10
    6448:	3c0142c8 	lui	at,0x42c8
    644c:	44815000 	mtc1	at,$f10
    6450:	3c0d0000 	lui	t5,0x0
    6454:	8dad0000 	lw	t5,0(t5)
    6458:	460a0102 	mul.s	$f4,$f0,$f10
    645c:	c7b20080 	lwc1	$f18,128(sp)
    6460:	3c063d4c 	lui	a2,0x3d4c
    6464:	34c6cccd 	ori	a2,a2,0xcccd
    6468:	8fa40040 	lw	a0,64(sp)
    646c:	e7a4007c 	swc1	$f4,124(sp)
    6470:	c5a601d4 	lwc1	$f6,468(t5)
    6474:	8e270068 	lw	a3,104(s1)
    6478:	46123200 	add.s	$f8,$f6,$f18
    647c:	44054000 	mfc1	a1,$f8
    6480:	0c000000 	jal	0 <func_8091BB00>
    6484:	00000000 	nop
    6488:	3c0e0000 	lui	t6,0x0
    648c:	8dce0000 	lw	t6,0(t6)
    6490:	c7a4007c 	lwc1	$f4,124(sp)
    6494:	3c063d4c 	lui	a2,0x3d4c
    6498:	c5ca01dc 	lwc1	$f10,476(t6)
    649c:	34c6cccd 	ori	a2,a2,0xcccd
    64a0:	2624002c 	addiu	a0,s1,44
    64a4:	46045180 	add.s	$f6,$f10,$f4
    64a8:	8e270068 	lw	a3,104(s1)
    64ac:	44053000 	mfc1	a1,$f6
    64b0:	0c000000 	jal	0 <func_8091BB00>
    64b4:	00000000 	nop
    64b8:	26240068 	addiu	a0,s1,104
    64bc:	3c054120 	lui	a1,0x4120
    64c0:	3c063f80 	lui	a2,0x3f80
    64c4:	0c000000 	jal	0 <func_8091BB00>
    64c8:	3c073f00 	lui	a3,0x3f00
    64cc:	86230158 	lh	v1,344(s1)
    64d0:	10000014 	b	6524 <L80921B08+0x51c>
    64d4:	c6220028 	lwc1	$f2,40(s1)
    64d8:	0c000000 	jal	0 <func_8091BB00>
    64dc:	86240032 	lh	a0,50(s1)
    64e0:	c6320068 	lwc1	$f18,104(s1)
    64e4:	86240032 	lh	a0,50(s1)
    64e8:	46120202 	mul.s	$f8,$f0,$f18
    64ec:	0c000000 	jal	0 <func_8091BB00>
    64f0:	e628005c 	swc1	$f8,92(s1)
    64f4:	c62a0068 	lwc1	$f10,104(s1)
    64f8:	c6240024 	lwc1	$f4,36(s1)
    64fc:	c626005c 	lwc1	$f6,92(s1)
    6500:	460a0302 	mul.s	$f12,$f0,$f10
    6504:	c628002c 	lwc1	$f8,44(s1)
    6508:	46062480 	add.s	$f18,$f4,$f6
    650c:	86230158 	lh	v1,344(s1)
    6510:	c6220028 	lwc1	$f2,40(s1)
    6514:	e6320024 	swc1	$f18,36(s1)
    6518:	460c4280 	add.s	$f10,$f8,$f12
    651c:	e62c0064 	swc1	$f12,100(s1)
    6520:	e62a002c 	swc1	$f10,44(s1)
    6524:	10600003 	beqz	v1,6534 <L80921B08+0x52c>
    6528:	24010005 	li	at,5
    652c:	546100de 	bnel	v1,at,68a8 <L80921B08+0x8a0>
    6530:	8faf00ec 	lw	t7,236(sp)
    6534:	c6200060 	lwc1	$f0,96(s1)
    6538:	3c013f80 	lui	at,0x3f80
    653c:	44813000 	mtc1	at,$f6
    6540:	46001100 	add.s	$f4,$f2,$f0
    6544:	3c0142c8 	lui	at,0x42c8
    6548:	44814000 	mtc1	at,$f8
    654c:	46060481 	sub.s	$f18,$f0,$f6
    6550:	e6240028 	swc1	$f4,40(s1)
    6554:	240f0001 	li	t7,1
    6558:	02202825 	move	a1,s1
    655c:	e6320060 	swc1	$f18,96(s1)
    6560:	afaf0014 	sw	t7,20(sp)
    6564:	8fa400ec 	lw	a0,236(sp)
    6568:	3c064248 	lui	a2,0x4248
    656c:	3c0741a0 	lui	a3,0x41a0
    6570:	0c000000 	jal	0 <func_8091BB00>
    6574:	e7a80010 	swc1	$f8,16(sp)
    6578:	8fb800ec 	lw	t8,236(sp)
    657c:	3c010001 	lui	at,0x1
    6580:	e7b400ac 	swc1	$f20,172(sp)
    6584:	0301c821 	addu	t9,t8,at
    6588:	e7b400a8 	swc1	$f20,168(sp)
    658c:	e7b400a4 	swc1	$f20,164(sp)
    6590:	afb9004c 	sw	t9,76(sp)
    6594:	00008025 	move	s0,zero
    6598:	27b200b0 	addiu	s2,sp,176
    659c:	3c0141a0 	lui	at,0x41a0
    65a0:	44816000 	mtc1	at,$f12
    65a4:	0c000000 	jal	0 <func_8091BB00>
    65a8:	00000000 	nop
    65ac:	c62a0024 	lwc1	$f10,36(s1)
    65b0:	3c0141a0 	lui	at,0x41a0
    65b4:	44816000 	mtc1	at,$f12
    65b8:	460a0100 	add.s	$f4,$f0,$f10
    65bc:	0c000000 	jal	0 <func_8091BB00>
    65c0:	e7a400b0 	swc1	$f4,176(sp)
    65c4:	c6260028 	lwc1	$f6,40(s1)
    65c8:	3c0141a0 	lui	at,0x41a0
    65cc:	44816000 	mtc1	at,$f12
    65d0:	46060480 	add.s	$f18,$f0,$f6
    65d4:	0c000000 	jal	0 <func_8091BB00>
    65d8:	e7b200b4 	swc1	$f18,180(sp)
    65dc:	c628002c 	lwc1	$f8,44(s1)
    65e0:	3c010000 	lui	at,0x0
    65e4:	c42c0000 	lwc1	$f12,0(at)
    65e8:	46080280 	add.s	$f10,$f0,$f8
    65ec:	0c000000 	jal	0 <func_8091BB00>
    65f0:	e7aa00b8 	swc1	$f10,184(sp)
    65f4:	3c010000 	lui	at,0x0
    65f8:	c4240000 	lwc1	$f4,0(at)
    65fc:	8fa8004c 	lw	t0,76(sp)
    6600:	24040003 	li	a0,3
    6604:	46040180 	add.s	$f6,$f0,$f4
    6608:	8d051e10 	lw	a1,7696(t0)
    660c:	02403025 	move	a2,s2
    6610:	27a700a4 	addiu	a3,sp,164
    6614:	0c000000 	jal	0 <func_8091BB00>
    6618:	e7a60010 	swc1	$f6,16(sp)
    661c:	26100001 	addiu	s0,s0,1
    6620:	00108400 	sll	s0,s0,0x10
    6624:	00108403 	sra	s0,s0,0x10
    6628:	5a00ffdd 	blezl	s0,65a0 <L80921B08+0x598>
    662c:	3c0141a0 	lui	at,0x41a0
    6630:	93a900e7 	lbu	t1,231(sp)
    6634:	3c014120 	lui	at,0x4120
    6638:	8fad00ec 	lw	t5,236(sp)
    663c:	51200069 	beqzl	t1,67e4 <L80921B08+0x7dc>
    6640:	8dae07c0 	lw	t6,1984(t5)
    6644:	44810000 	mtc1	at,$f0
    6648:	c6220028 	lwc1	$f2,40(s1)
    664c:	3c010000 	lui	at,0x0
    6650:	4600103e 	c.le.s	$f2,$f0
    6654:	00000000 	nop
    6658:	4502005b 	bc1fl	67c8 <L80921B08+0x7c0>
    665c:	8fa900ec 	lw	t1,236(sp)
    6660:	86220180 	lh	v0,384(s1)
    6664:	e6200028 	swc1	$f0,40(s1)
    6668:	c4320000 	lwc1	$f18,0(at)
    666c:	240a0002 	li	t2,2
    6670:	10400009 	beqz	v0,6698 <L80921B08+0x690>
    6674:	e6320060 	swc1	$f18,96(s1)
    6678:	24010001 	li	at,1
    667c:	14410004 	bne	v0,at,6690 <L80921B08+0x688>
    6680:	3c0140c0 	lui	at,0x40c0
    6684:	44814000 	mtc1	at,$f8
    6688:	00000000 	nop
    668c:	e6280060 	swc1	$f8,96(s1)
    6690:	1000004c 	b	67c4 <L80921B08+0x7bc>
    6694:	c6220028 	lwc1	$f2,40(s1)
    6698:	a62a0180 	sh	t2,384(s1)
    669c:	02202025 	move	a0,s1
    66a0:	0c000000 	jal	0 <func_8091BB00>
    66a4:	240538dd 	li	a1,14557
    66a8:	00008025 	move	s0,zero
    66ac:	3c014080 	lui	at,0x4080
    66b0:	44816000 	mtc1	at,$f12
    66b4:	0c000000 	jal	0 <func_8091BB00>
    66b8:	00000000 	nop
    66bc:	3c014000 	lui	at,0x4000
    66c0:	44816000 	mtc1	at,$f12
    66c4:	0c000000 	jal	0 <func_8091BB00>
    66c8:	e7a000a4 	swc1	$f0,164(sp)
    66cc:	3c014040 	lui	at,0x4040
    66d0:	44815000 	mtc1	at,$f10
    66d4:	3c014080 	lui	at,0x4080
    66d8:	44816000 	mtc1	at,$f12
    66dc:	460a0100 	add.s	$f4,$f0,$f10
    66e0:	0c000000 	jal	0 <func_8091BB00>
    66e4:	e7a400a8 	swc1	$f4,168(sp)
    66e8:	8fab0040 	lw	t3,64(sp)
    66ec:	e7a000ac 	swc1	$f0,172(sp)
    66f0:	3c010000 	lui	at,0x0
    66f4:	8d6d0000 	lw	t5,0(t3)
    66f8:	ae4d0000 	sw	t5,0(s2)
    66fc:	8d6c0004 	lw	t4,4(t3)
    6700:	ae4c0004 	sw	t4,4(s2)
    6704:	8d6d0008 	lw	t5,8(t3)
    6708:	ae4d0008 	sw	t5,8(s2)
    670c:	c7a600b0 	lwc1	$f6,176(sp)
    6710:	c7b200a4 	lwc1	$f18,164(sp)
    6714:	c7aa00b8 	lwc1	$f10,184(sp)
    6718:	c42c0000 	lwc1	$f12,0(at)
    671c:	46123200 	add.s	$f8,$f6,$f18
    6720:	46005100 	add.s	$f4,$f10,$f0
    6724:	e7a800b0 	swc1	$f8,176(sp)
    6728:	0c000000 	jal	0 <func_8091BB00>
    672c:	e7a400b8 	swc1	$f4,184(sp)
    6730:	3c010000 	lui	at,0x0
    6734:	c4260000 	lwc1	$f6,0(at)
    6738:	8fae004c 	lw	t6,76(sp)
    673c:	24040003 	li	a0,3
    6740:	46060480 	add.s	$f18,$f0,$f6
    6744:	8dc51e10 	lw	a1,7696(t6)
    6748:	02403025 	move	a2,s2
    674c:	27a700a4 	addiu	a3,sp,164
    6750:	0c000000 	jal	0 <func_8091BB00>
    6754:	e7b20010 	swc1	$f18,16(sp)
    6758:	26100001 	addiu	s0,s0,1
    675c:	00108400 	sll	s0,s0,0x10
    6760:	00108403 	sra	s0,s0,0x10
    6764:	2a01000a 	slti	at,s0,10
    6768:	5420ffd1 	bnezl	at,66b0 <L80921B08+0x6a8>
    676c:	3c014080 	lui	at,0x4080
    6770:	8faf0040 	lw	t7,64(sp)
    6774:	e7b400ac 	swc1	$f20,172(sp)
    6778:	e7b400a8 	swc1	$f20,168(sp)
    677c:	e7b400a4 	swc1	$f20,164(sp)
    6780:	8df90000 	lw	t9,0(t7)
    6784:	3c010000 	lui	at,0x0
    6788:	24040003 	li	a0,3
    678c:	ae590000 	sw	t9,0(s2)
    6790:	8df80004 	lw	t8,4(t7)
    6794:	02403025 	move	a2,s2
    6798:	27a700a4 	addiu	a3,sp,164
    679c:	ae580004 	sw	t8,4(s2)
    67a0:	8df90008 	lw	t9,8(t7)
    67a4:	ae590008 	sw	t9,8(s2)
    67a8:	8fa8004c 	lw	t0,76(sp)
    67ac:	c4280000 	lwc1	$f8,0(at)
    67b0:	e7b400b4 	swc1	$f20,180(sp)
    67b4:	8d051e10 	lw	a1,7696(t0)
    67b8:	0c000000 	jal	0 <func_8091BB00>
    67bc:	e7a80010 	swc1	$f8,16(sp)
    67c0:	c6220028 	lwc1	$f2,40(s1)
    67c4:	8fa900ec 	lw	t1,236(sp)
    67c8:	8d2a07c0 	lw	t2,1984(t1)
    67cc:	8d4b0028 	lw	t3,40(t2)
    67d0:	856c0002 	lh	t4,2(t3)
    67d4:	448c5000 	mtc1	t4,$f10
    67d8:	10000172 	b	6da4 <L80921B08+0xd9c>
    67dc:	46805020 	cvt.s.w	$f0,$f10
    67e0:	8dae07c0 	lw	t6,1984(t5)
    67e4:	c6220028 	lwc1	$f2,40(s1)
    67e8:	8fa40040 	lw	a0,64(sp)
    67ec:	8dcf0028 	lw	t7,40(t6)
    67f0:	85f80002 	lh	t8,2(t7)
    67f4:	44982000 	mtc1	t8,$f4
    67f8:	00000000 	nop
    67fc:	46802020 	cvt.s.w	$f0,$f4
    6800:	4600103c 	c.lt.s	$f2,$f0
    6804:	00000000 	nop
    6808:	45020167 	bc1fl	6da8 <L80921B08+0xda0>
    680c:	4600103c 	c.lt.s	$f2,$f0
    6810:	0c000000 	jal	0 <func_8091BB00>
    6814:	3c054220 	lui	a1,0x4220
    6818:	10400005 	beqz	v0,6830 <L80921B08+0x828>
    681c:	3c0140c0 	lui	at,0x40c0
    6820:	3c014170 	lui	at,0x4170
    6824:	44813000 	mtc1	at,$f6
    6828:	10000004 	b	683c <L80921B08+0x834>
    682c:	e6260060 	swc1	$f6,96(s1)
    6830:	44819000 	mtc1	at,$f18
    6834:	00000000 	nop
    6838:	e6320060 	swc1	$f18,96(s1)
    683c:	8fb900ec 	lw	t9,236(sp)
    6840:	3c014170 	lui	at,0x4170
    6844:	44815000 	mtc1	at,$f10
    6848:	8f2807c0 	lw	t0,1984(t9)
    684c:	c6220028 	lwc1	$f2,40(s1)
    6850:	02202025 	move	a0,s1
    6854:	8d090028 	lw	t1,40(t0)
    6858:	460a1100 	add.s	$f4,$f2,$f10
    685c:	852a0002 	lh	t2,2(t1)
    6860:	448a4000 	mtc1	t2,$f8
    6864:	00000000 	nop
    6868:	46804020 	cvt.s.w	$f0,$f8
    686c:	4604003e 	c.le.s	$f0,$f4
    6870:	00000000 	nop
    6874:	4502014c 	bc1fl	6da8 <L80921B08+0xda0>
    6878:	4600103c 	c.lt.s	$f2,$f0
    687c:	0c000000 	jal	0 <func_8091BB00>
    6880:	240538f7 	li	a1,14583
    6884:	8fab00ec 	lw	t3,236(sp)
    6888:	c6220028 	lwc1	$f2,40(s1)
    688c:	8d6c07c0 	lw	t4,1984(t3)
    6890:	8d8d0028 	lw	t5,40(t4)
    6894:	85ae0002 	lh	t6,2(t5)
    6898:	448e3000 	mtc1	t6,$f6
    689c:	10000141 	b	6da4 <L80921B08+0xd9c>
    68a0:	46803020 	cvt.s.w	$f0,$f6
    68a4:	8faf00ec 	lw	t7,236(sp)
    68a8:	8df807c0 	lw	t8,1984(t7)
    68ac:	8f190028 	lw	t9,40(t8)
    68b0:	87280002 	lh	t0,2(t9)
    68b4:	44889000 	mtc1	t0,$f18
    68b8:	0460013a 	bltz	v1,6da4 <L80921B08+0xd9c>
    68bc:	46809020 	cvt.s.w	$f0,$f18
    68c0:	4600103c 	c.lt.s	$f2,$f0
    68c4:	24010001 	li	at,1
    68c8:	4502010c 	bc1fl	6cfc <L80921B08+0xcf4>
    68cc:	c6200060 	lwc1	$f0,96(s1)
    68d0:	14610016 	bne	v1,at,692c <L80921B08+0x924>
    68d4:	3c090000 	lui	t1,0x0
    68d8:	8d290000 	lw	t1,0(t1)
    68dc:	3c0a0000 	lui	t2,0x0
    68e0:	3c014220 	lui	at,0x4220
    68e4:	c52801d4 	lwc1	$f8,468(t1)
    68e8:	44812000 	mtc1	at,$f4
    68ec:	3c0b0000 	lui	t3,0x0
    68f0:	e62801d4 	swc1	$f8,468(s1)
    68f4:	8d4a0000 	lw	t2,0(t2)
    68f8:	26240068 	addiu	a0,s1,104
    68fc:	3c054120 	lui	a1,0x4120
    6900:	c54a0028 	lwc1	$f10,40(t2)
    6904:	3c063f80 	lui	a2,0x3f80
    6908:	3c073f00 	lui	a3,0x3f00
    690c:	46045181 	sub.s	$f6,$f10,$f4
    6910:	e62601d8 	swc1	$f6,472(s1)
    6914:	8d6b0000 	lw	t3,0(t3)
    6918:	c57201dc 	lwc1	$f18,476(t3)
    691c:	0c000000 	jal	0 <func_8091BB00>
    6920:	e63201dc 	swc1	$f18,476(s1)
    6924:	10000066 	b	6ac0 <L80921B08+0xab8>
    6928:	8628015a 	lh	t0,346(s1)
    692c:	24010002 	li	at,2
    6930:	54610063 	bnel	v1,at,6ac0 <L80921B08+0xab8>
    6934:	8628015a 	lh	t0,346(s1)
    6938:	86220168 	lh	v0,360(s1)
    693c:	24010001 	li	at,1
    6940:	50400006 	beqzl	v0,695c <L80921B08+0x954>
    6944:	8e4d0024 	lw	t5,36(s2)
    6948:	50410046 	beql	v0,at,6a64 <L80921B08+0xa5c>
    694c:	3c013f80 	lui	at,0x3f80
    6950:	1000005b 	b	6ac0 <L80921B08+0xab8>
    6954:	8628015a 	lh	t0,346(s1)
    6958:	8e4d0024 	lw	t5,36(s2)
    695c:	3c0141f0 	lui	at,0x41f0
    6960:	44815000 	mtc1	at,$f10
    6964:	ae2d01d4 	sw	t5,468(s1)
    6968:	8e4c0028 	lw	t4,40(s2)
    696c:	3c0142c8 	lui	at,0x42c8
    6970:	44813000 	mtc1	at,$f6
    6974:	ae2c01d8 	sw	t4,472(s1)
    6978:	c62801d8 	lwc1	$f8,472(s1)
    697c:	8e4d002c 	lw	t5,44(s2)
    6980:	3c014700 	lui	at,0x4700
    6984:	460a4100 	add.s	$f4,$f8,$f10
    6988:	ae2d01dc 	sw	t5,476(s1)
    698c:	44815000 	mtc1	at,$f10
    6990:	3c010000 	lui	at,0x0
    6994:	e62401d8 	swc1	$f4,472(s1)
    6998:	e7b40070 	swc1	$f20,112(sp)
    699c:	e7b40074 	swc1	$f20,116(sp)
    69a0:	e7a60078 	swc1	$f6,120(sp)
    69a4:	864e0032 	lh	t6,50(s2)
    69a8:	c4260000 	lwc1	$f6,0(at)
    69ac:	00002825 	move	a1,zero
    69b0:	448e9000 	mtc1	t6,$f18
    69b4:	26300068 	addiu	s0,s1,104
    69b8:	46809220 	cvt.s.w	$f8,$f18
    69bc:	460a4103 	div.s	$f4,$f8,$f10
    69c0:	46062302 	mul.s	$f12,$f4,$f6
    69c4:	0c000000 	jal	0 <func_8091BB00>
    69c8:	00000000 	nop
    69cc:	27a40070 	addiu	a0,sp,112
    69d0:	0c000000 	jal	0 <func_8091BB00>
    69d4:	27a50064 	addiu	a1,sp,100
    69d8:	c6520024 	lwc1	$f18,36(s2)
    69dc:	c7a80064 	lwc1	$f8,100(sp)
    69e0:	3c013f80 	lui	at,0x3f80
    69e4:	44810000 	mtc1	at,$f0
    69e8:	46089280 	add.s	$f10,$f18,$f8
    69ec:	3c0141f0 	lui	at,0x41f0
    69f0:	44813000 	mtc1	at,$f6
    69f4:	44060000 	mfc1	a2,$f0
    69f8:	e62a01d4 	swc1	$f10,468(s1)
    69fc:	c6440028 	lwc1	$f4,40(s2)
    6a00:	44070000 	mfc1	a3,$f0
    6a04:	02002025 	move	a0,s0
    6a08:	46062480 	add.s	$f18,$f4,$f6
    6a0c:	3c054120 	lui	a1,0x4120
    6a10:	e63201d8 	swc1	$f18,472(s1)
    6a14:	c7aa006c 	lwc1	$f10,108(sp)
    6a18:	c648002c 	lwc1	$f8,44(s2)
    6a1c:	460a4100 	add.s	$f4,$f8,$f10
    6a20:	0c000000 	jal	0 <func_8091BB00>
    6a24:	e62401dc 	swc1	$f4,476(s1)
    6a28:	862f017e 	lh	t7,382(s1)
    6a2c:	24180001 	li	t8,1
    6a30:	3c014248 	lui	at,0x4248
    6a34:	55e00022 	bnezl	t7,6ac0 <L80921B08+0xab8>
    6a38:	8628015a 	lh	t0,346(s1)
    6a3c:	44816000 	mtc1	at,$f12
    6a40:	0c000000 	jal	0 <func_8091BB00>
    6a44:	a6380168 	sh	t8,360(s1)
    6a48:	4600018d 	trunc.w.s	$f6,$f0
    6a4c:	440a3000 	mfc1	t2,$f6
    6a50:	00000000 	nop
    6a54:	254b0032 	addiu	t3,t2,50
    6a58:	10000018 	b	6abc <L80921B08+0xab4>
    6a5c:	a62b017e 	sh	t3,382(s1)
    6a60:	3c013f80 	lui	at,0x3f80
    6a64:	44810000 	mtc1	at,$f0
    6a68:	26240068 	addiu	a0,s1,104
    6a6c:	3c073f00 	lui	a3,0x3f00
    6a70:	44050000 	mfc1	a1,$f0
    6a74:	44060000 	mfc1	a2,$f0
    6a78:	0c000000 	jal	0 <func_8091BB00>
    6a7c:	00000000 	nop
    6a80:	862c017e 	lh	t4,382(s1)
    6a84:	3c0141a0 	lui	at,0x41a0
    6a88:	5580000d 	bnezl	t4,6ac0 <L80921B08+0xab8>
    6a8c:	8628015a 	lh	t0,346(s1)
    6a90:	44816000 	mtc1	at,$f12
    6a94:	0c000000 	jal	0 <func_8091BB00>
    6a98:	a6200168 	sh	zero,360(s1)
    6a9c:	4600048d 	trunc.w.s	$f18,$f0
    6aa0:	02202025 	move	a0,s1
    6aa4:	240538de 	li	a1,14558
    6aa8:	44189000 	mfc1	t8,$f18
    6aac:	00000000 	nop
    6ab0:	27190014 	addiu	t9,t8,20
    6ab4:	0c000000 	jal	0 <func_8091BB00>
    6ab8:	a639017e 	sh	t9,382(s1)
    6abc:	8628015a 	lh	t0,346(s1)
    6ac0:	3c010000 	lui	at,0x0
    6ac4:	c4240000 	lwc1	$f4,0(at)
    6ac8:	44884000 	mtc1	t0,$f8
    6acc:	00000000 	nop
    6ad0:	468042a0 	cvt.s.w	$f10,$f8
    6ad4:	46045182 	mul.s	$f6,$f10,$f4
    6ad8:	4600348d 	trunc.w.s	$f18,$f6
    6adc:	44049000 	mfc1	a0,$f18
    6ae0:	00000000 	nop
    6ae4:	00042400 	sll	a0,a0,0x10
    6ae8:	0c000000 	jal	0 <func_8091BB00>
    6aec:	00042403 	sra	a0,a0,0x10
    6af0:	3c0141f0 	lui	at,0x41f0
    6af4:	44815000 	mtc1	at,$f10
    6af8:	862a015a 	lh	t2,346(s1)
    6afc:	c62801d4 	lwc1	$f8,468(s1)
    6b00:	460a0102 	mul.s	$f4,$f0,$f10
    6b04:	448a9000 	mtc1	t2,$f18
    6b08:	3c014503 	lui	at,0x4503
    6b0c:	468092a0 	cvt.s.w	$f10,$f18
    6b10:	46044180 	add.s	$f6,$f8,$f4
    6b14:	44814000 	mtc1	at,$f8
    6b18:	00000000 	nop
    6b1c:	46085102 	mul.s	$f4,$f10,$f8
    6b20:	e62601d4 	swc1	$f6,468(s1)
    6b24:	4600218d 	trunc.w.s	$f6,$f4
    6b28:	44043000 	mfc1	a0,$f6
    6b2c:	00000000 	nop
    6b30:	00042400 	sll	a0,a0,0x10
    6b34:	0c000000 	jal	0 <func_8091BB00>
    6b38:	00042403 	sra	a0,a0,0x10
    6b3c:	3c0141f0 	lui	at,0x41f0
    6b40:	44815000 	mtc1	at,$f10
    6b44:	862c015a 	lh	t4,346(s1)
    6b48:	c63201d8 	lwc1	$f18,472(s1)
    6b4c:	460a0202 	mul.s	$f8,$f0,$f10
    6b50:	448c3000 	mtc1	t4,$f6
    6b54:	3c010000 	lui	at,0x0
    6b58:	468032a0 	cvt.s.w	$f10,$f6
    6b5c:	46089100 	add.s	$f4,$f18,$f8
    6b60:	e62401d8 	swc1	$f4,472(s1)
    6b64:	c4320000 	lwc1	$f18,0(at)
    6b68:	46125202 	mul.s	$f8,$f10,$f18
    6b6c:	4600410d 	trunc.w.s	$f4,$f8
    6b70:	44042000 	mfc1	a0,$f4
    6b74:	00000000 	nop
    6b78:	00042400 	sll	a0,a0,0x10
    6b7c:	0c000000 	jal	0 <func_8091BB00>
    6b80:	00042403 	sra	a0,a0,0x10
    6b84:	3c0141f0 	lui	at,0x41f0
    6b88:	44815000 	mtc1	at,$f10
    6b8c:	c62601dc 	lwc1	$f6,476(s1)
    6b90:	3c0140a0 	lui	at,0x40a0
    6b94:	460a0482 	mul.s	$f18,$f0,$f10
    6b98:	44812000 	mtc1	at,$f4
    6b9c:	3c01457a 	lui	at,0x457a
    6ba0:	44815000 	mtc1	at,$f10
    6ba4:	e6240d64 	swc1	$f4,3428(s1)
    6ba8:	c6240028 	lwc1	$f4,40(s1)
    6bac:	e62a0d68 	swc1	$f10,3432(s1)
    6bb0:	46123200 	add.s	$f8,$f6,$f18
    6bb4:	c6320024 	lwc1	$f18,36(s1)
    6bb8:	c62601d4 	lwc1	$f6,468(s1)
    6bbc:	e62801dc 	swc1	$f8,476(s1)
    6bc0:	c62801d8 	lwc1	$f8,472(s1)
    6bc4:	46123301 	sub.s	$f12,$f6,$f18
    6bc8:	46044281 	sub.s	$f10,$f8,$f4
    6bcc:	e7aa00d8 	swc1	$f10,216(sp)
    6bd0:	c632002c 	lwc1	$f18,44(s1)
    6bd4:	c62601dc 	lwc1	$f6,476(s1)
    6bd8:	e7ac00dc 	swc1	$f12,220(sp)
    6bdc:	46123381 	sub.s	$f14,$f6,$f18
    6be0:	0c000000 	jal	0 <func_8091BB00>
    6be4:	e7ae00d4 	swc1	$f14,212(sp)
    6be8:	3c010000 	lui	at,0x0
    6bec:	c4280000 	lwc1	$f8,0(at)
    6bf0:	c7a200dc 	lwc1	$f2,220(sp)
    6bf4:	c7b000d4 	lwc1	$f16,212(sp)
    6bf8:	46080102 	mul.s	$f4,$f0,$f8
    6bfc:	c7ac00d8 	lwc1	$f12,216(sp)
    6c00:	46021202 	mul.s	$f8,$f2,$f2
    6c04:	4600228d 	trunc.w.s	$f10,$f4
    6c08:	46108102 	mul.s	$f4,$f16,$f16
    6c0c:	440f5000 	mfc1	t7,$f10
    6c10:	00000000 	nop
    6c14:	000fc400 	sll	t8,t7,0x10
    6c18:	0018cc03 	sra	t9,t8,0x10
    6c1c:	44993000 	mtc1	t9,$f6
    6c20:	46044000 	add.s	$f0,$f8,$f4
    6c24:	468034a0 	cvt.s.w	$f18,$f6
    6c28:	46000384 	sqrt.s	$f14,$f0
    6c2c:	0c000000 	jal	0 <func_8091BB00>
    6c30:	e7b200cc 	swc1	$f18,204(sp)
    6c34:	3c010000 	lui	at,0x0
    6c38:	c42a0000 	lwc1	$f10,0(at)
    6c3c:	26240032 	addiu	a0,s1,50
    6c40:	460a0182 	mul.s	$f6,$f0,$f10
    6c44:	c7aa00cc 	lwc1	$f10,204(sp)
    6c48:	4600348d 	trunc.w.s	$f18,$f6
    6c4c:	4600518d 	trunc.w.s	$f6,$f10
    6c50:	44099000 	mfc1	t1,$f18
    6c54:	00000000 	nop
    6c58:	00095400 	sll	t2,t1,0x10
    6c5c:	000a5c03 	sra	t3,t2,0x10
    6c60:	448b4000 	mtc1	t3,$f8
    6c64:	44053000 	mfc1	a1,$f6
    6c68:	46804120 	cvt.s.w	$f4,$f8
    6c6c:	00052c00 	sll	a1,a1,0x10
    6c70:	00052c03 	sra	a1,a1,0x10
    6c74:	e7a400d0 	swc1	$f4,208(sp)
    6c78:	c6240d68 	lwc1	$f4,3432(s1)
    6c7c:	c6320d64 	lwc1	$f18,3428(s1)
    6c80:	4600228d 	trunc.w.s	$f10,$f4
    6c84:	4600920d 	trunc.w.s	$f8,$f18
    6c88:	44075000 	mfc1	a3,$f10
    6c8c:	44064000 	mfc1	a2,$f8
    6c90:	00073c00 	sll	a3,a3,0x10
    6c94:	00073c03 	sra	a3,a3,0x10
    6c98:	00063400 	sll	a2,a2,0x10
    6c9c:	0c000000 	jal	0 <func_8091BB00>
    6ca0:	00063403 	sra	a2,a2,0x10
    6ca4:	c7a600d0 	lwc1	$f6,208(sp)
    6ca8:	c6280d64 	lwc1	$f8,3428(s1)
    6cac:	c62a0d68 	lwc1	$f10,3432(s1)
    6cb0:	4600348d 	trunc.w.s	$f18,$f6
    6cb4:	26240030 	addiu	a0,s1,48
    6cb8:	4600410d 	trunc.w.s	$f4,$f8
    6cbc:	44059000 	mfc1	a1,$f18
    6cc0:	4600518d 	trunc.w.s	$f6,$f10
    6cc4:	44062000 	mfc1	a2,$f4
    6cc8:	00052c00 	sll	a1,a1,0x10
    6ccc:	00052c03 	sra	a1,a1,0x10
    6cd0:	44073000 	mfc1	a3,$f6
    6cd4:	00063400 	sll	a2,a2,0x10
    6cd8:	00063403 	sra	a2,a2,0x10
    6cdc:	00073c00 	sll	a3,a3,0x10
    6ce0:	0c000000 	jal	0 <func_8091BB00>
    6ce4:	00073c03 	sra	a3,a3,0x10
    6ce8:	0c000000 	jal	0 <func_8091BB00>
    6cec:	02202025 	move	a0,s1
    6cf0:	10000008 	b	6d14 <L80921B08+0xd0c>
    6cf4:	00000000 	nop
    6cf8:	c6200060 	lwc1	$f0,96(s1)
    6cfc:	3c013f80 	lui	at,0x3f80
    6d00:	44814000 	mtc1	at,$f8
    6d04:	46001480 	add.s	$f18,$f2,$f0
    6d08:	46080101 	sub.s	$f4,$f0,$f8
    6d0c:	e6320028 	swc1	$f18,40(s1)
    6d10:	e6240060 	swc1	$f4,96(s1)
    6d14:	0c000000 	jal	0 <func_8091BB00>
    6d18:	02202025 	move	a0,s1
    6d1c:	3c01c348 	lui	at,0xc348
    6d20:	44815000 	mtc1	at,$f10
    6d24:	c6220028 	lwc1	$f2,40(s1)
    6d28:	3c0141a0 	lui	at,0x41a0
    6d2c:	44813000 	mtc1	at,$f6
    6d30:	460a103c 	c.lt.s	$f2,$f10
    6d34:	02202825 	move	a1,s1
    6d38:	3c064248 	lui	a2,0x4248
    6d3c:	3c0741a0 	lui	a3,0x41a0
    6d40:	45000003 	bc1f	6d50 <L80921B08+0xd48>
    6d44:	46061481 	sub.s	$f18,$f2,$f6
    6d48:	10000002 	b	6d54 <L80921B08+0xd4c>
    6d4c:	24020005 	li	v0,5
    6d50:	24020001 	li	v0,1
    6d54:	3c0142c8 	lui	at,0x42c8
    6d58:	44814000 	mtc1	at,$f8
    6d5c:	e6320028 	swc1	$f18,40(s1)
    6d60:	afa20014 	sw	v0,20(sp)
    6d64:	8fa400ec 	lw	a0,236(sp)
    6d68:	0c000000 	jal	0 <func_8091BB00>
    6d6c:	e7a80010 	swc1	$f8,16(sp)
    6d70:	3c0141a0 	lui	at,0x41a0
    6d74:	44815000 	mtc1	at,$f10
    6d78:	c6240028 	lwc1	$f4,40(s1)
    6d7c:	460a2180 	add.s	$f6,$f4,$f10
    6d80:	e6260028 	swc1	$f6,40(s1)
    6d84:	8fa800ec 	lw	t0,236(sp)
    6d88:	c6220028 	lwc1	$f2,40(s1)
    6d8c:	8d0907c0 	lw	t1,1984(t0)
    6d90:	8d2a0028 	lw	t2,40(t1)
    6d94:	854b0002 	lh	t3,2(t2)
    6d98:	448b9000 	mtc1	t3,$f18
    6d9c:	00000000 	nop
    6da0:	46809020 	cvt.s.w	$f0,$f18
    6da4:	4600103c 	c.lt.s	$f2,$f0
    6da8:	27b200b0 	addiu	s2,sp,176
    6dac:	450200d6 	bc1fl	7108 <L80921B08+0x1100>
    6db0:	4600103c 	c.lt.s	$f2,$f0
    6db4:	c6280104 	lwc1	$f8,260(s1)
    6db8:	3c01c0a0 	lui	at,0xc0a0
    6dbc:	4608003e 	c.le.s	$f0,$f8
    6dc0:	00000000 	nop
    6dc4:	450200d0 	bc1fl	7108 <L80921B08+0x1100>
    6dc8:	4600103c 	c.lt.s	$f2,$f0
    6dcc:	c6240060 	lwc1	$f4,96(s1)
    6dd0:	44815000 	mtc1	at,$f10
    6dd4:	240538f7 	li	a1,14583
    6dd8:	02202025 	move	a0,s1
    6ddc:	460a203c 	c.lt.s	$f4,$f10
    6de0:	00000000 	nop
    6de4:	45000005 	bc1f	6dfc <L80921B08+0xdf4>
    6de8:	00000000 	nop
    6dec:	0c000000 	jal	0 <func_8091BB00>
    6df0:	02202025 	move	a0,s1
    6df4:	10000004 	b	6e08 <L80921B08+0xe00>
    6df8:	862c0184 	lh	t4,388(s1)
    6dfc:	0c000000 	jal	0 <func_8091BB00>
    6e00:	240538df 	li	a1,14559
    6e04:	862c0184 	lh	t4,388(s1)
    6e08:	3c100000 	lui	s0,0x0
    6e0c:	8fad00ec 	lw	t5,236(sp)
    6e10:	5580001d 	bnezl	t4,6e88 <L80921B08+0xe80>
    6e14:	8dae07c0 	lw	t6,1984(t5)
    6e18:	8e100000 	lw	s0,0(s0)
    6e1c:	3c010000 	lui	at,0x0
    6e20:	c4260000 	lwc1	$f6,0(at)
    6e24:	c61201a0 	lwc1	$f18,416(s0)
    6e28:	24190008 	li	t9,8
    6e2c:	4612303c 	c.lt.s	$f6,$f18
    6e30:	00000000 	nop
    6e34:	4502001b 	bc1fl	6ea4 <L80921B08+0xe9c>
    6e38:	a6390184 	sh	t9,388(s1)
    6e3c:	c6280024 	lwc1	$f8,36(s1)
    6e40:	c6040024 	lwc1	$f4,36(s0)
    6e44:	3c0141f0 	lui	at,0x41f0
    6e48:	44811000 	mtc1	at,$f2
    6e4c:	46044001 	sub.s	$f0,$f8,$f4
    6e50:	46000005 	abs.s	$f0,$f0
    6e54:	4602003c 	c.lt.s	$f0,$f2
    6e58:	00000000 	nop
    6e5c:	45020011 	bc1fl	6ea4 <L80921B08+0xe9c>
    6e60:	a6390184 	sh	t9,388(s1)
    6e64:	c62a002c 	lwc1	$f10,44(s1)
    6e68:	c606002c 	lwc1	$f6,44(s0)
    6e6c:	46065001 	sub.s	$f0,$f10,$f6
    6e70:	46000005 	abs.s	$f0,$f0
    6e74:	4602003c 	c.lt.s	$f0,$f2
    6e78:	00000000 	nop
    6e7c:	45020009 	bc1fl	6ea4 <L80921B08+0xe9c>
    6e80:	a6390184 	sh	t9,388(s1)
    6e84:	8dae07c0 	lw	t6,1984(t5)
    6e88:	c6220028 	lwc1	$f2,40(s1)
    6e8c:	8dcf0028 	lw	t7,40(t6)
    6e90:	85f80002 	lh	t8,2(t7)
    6e94:	44989000 	mtc1	t8,$f18
    6e98:	1000009a 	b	7104 <L80921B08+0x10fc>
    6e9c:	46809020 	cvt.s.w	$f0,$f18
    6ea0:	a6390184 	sh	t9,388(s1)
    6ea4:	8fa800ec 	lw	t0,236(sp)
    6ea8:	3c010001 	lui	at,0x1
    6eac:	00008025 	move	s0,zero
    6eb0:	01014821 	addu	t1,t0,at
    6eb4:	afa9004c 	sw	t1,76(sp)
    6eb8:	3c010000 	lui	at,0x0
    6ebc:	0c000000 	jal	0 <func_8091BB00>
    6ec0:	c42c0000 	lwc1	$f12,0(at)
    6ec4:	3c010000 	lui	at,0x0
    6ec8:	e7a0005c 	swc1	$f0,92(sp)
    6ecc:	0c000000 	jal	0 <func_8091BB00>
    6ed0:	c42c0000 	lwc1	$f12,0(at)
    6ed4:	44905000 	mtc1	s0,$f10
    6ed8:	3c010000 	lui	at,0x0
    6edc:	c4280000 	lwc1	$f8,0(at)
    6ee0:	468051a0 	cvt.s.w	$f6,$f10
    6ee4:	3c014780 	lui	at,0x4780
    6ee8:	44819000 	mtc1	at,$f18
    6eec:	3c014120 	lui	at,0x4120
    6ef0:	46080100 	add.s	$f4,$f0,$f8
    6ef4:	46123202 	mul.s	$f8,$f6,$f18
    6ef8:	c7a6005c 	lwc1	$f6,92(sp)
    6efc:	e7a40060 	swc1	$f4,96(sp)
    6f00:	44812000 	mtc1	at,$f4
    6f04:	00000000 	nop
    6f08:	46044283 	div.s	$f10,$f8,$f4
    6f0c:	46065480 	add.s	$f18,$f10,$f6
    6f10:	4600920d 	trunc.w.s	$f8,$f18
    6f14:	44044000 	mfc1	a0,$f8
    6f18:	00000000 	nop
    6f1c:	00042400 	sll	a0,a0,0x10
    6f20:	00042403 	sra	a0,a0,0x10
    6f24:	0c000000 	jal	0 <func_8091BB00>
    6f28:	afa40048 	sw	a0,72(sp)
    6f2c:	c7a40060 	lwc1	$f4,96(sp)
    6f30:	8fa40048 	lw	a0,72(sp)
    6f34:	46040282 	mul.s	$f10,$f0,$f4
    6f38:	0c000000 	jal	0 <func_8091BB00>
    6f3c:	e7aa00a4 	swc1	$f10,164(sp)
    6f40:	c7a60060 	lwc1	$f6,96(sp)
    6f44:	3c010000 	lui	at,0x0
    6f48:	c42c0000 	lwc1	$f12,0(at)
    6f4c:	46060482 	mul.s	$f18,$f0,$f6
    6f50:	0c000000 	jal	0 <func_8091BB00>
    6f54:	e7b200ac 	swc1	$f18,172(sp)
    6f58:	3c014040 	lui	at,0x4040
    6f5c:	44811000 	mtc1	at,$f2
    6f60:	8fab0040 	lw	t3,64(sp)
    6f64:	3c010000 	lui	at,0x0
    6f68:	46020200 	add.s	$f8,$f0,$f2
    6f6c:	e7a800a8 	swc1	$f8,168(sp)
    6f70:	8d6d0000 	lw	t5,0(t3)
    6f74:	ae4d0000 	sw	t5,0(s2)
    6f78:	8d6c0004 	lw	t4,4(t3)
    6f7c:	ae4c0004 	sw	t4,4(s2)
    6f80:	8d6d0008 	lw	t5,8(t3)
    6f84:	ae4d0008 	sw	t5,8(s2)
    6f88:	c7aa00a4 	lwc1	$f10,164(sp)
    6f8c:	c7a400b0 	lwc1	$f4,176(sp)
    6f90:	8fae00ec 	lw	t6,236(sp)
    6f94:	46025182 	mul.s	$f6,$f10,$f2
    6f98:	c42c0000 	lwc1	$f12,0(at)
    6f9c:	46062480 	add.s	$f18,$f4,$f6
    6fa0:	c7a600ac 	lwc1	$f6,172(sp)
    6fa4:	c7a400b8 	lwc1	$f4,184(sp)
    6fa8:	e7b200b0 	swc1	$f18,176(sp)
    6fac:	8dcf07c0 	lw	t7,1984(t6)
    6fb0:	46023482 	mul.s	$f18,$f6,$f2
    6fb4:	8df80028 	lw	t8,40(t7)
    6fb8:	87190002 	lh	t9,2(t8)
    6fbc:	44994000 	mtc1	t9,$f8
    6fc0:	00000000 	nop
    6fc4:	468042a0 	cvt.s.w	$f10,$f8
    6fc8:	46122200 	add.s	$f8,$f4,$f18
    6fcc:	e7aa00b4 	swc1	$f10,180(sp)
    6fd0:	0c000000 	jal	0 <func_8091BB00>
    6fd4:	e7a800b8 	swc1	$f8,184(sp)
    6fd8:	3c010000 	lui	at,0x0
    6fdc:	c42a0000 	lwc1	$f10,0(at)
    6fe0:	8fa8004c 	lw	t0,76(sp)
    6fe4:	24040004 	li	a0,4
    6fe8:	460a0180 	add.s	$f6,$f0,$f10
    6fec:	8d051e10 	lw	a1,7696(t0)
    6ff0:	02403025 	move	a2,s2
    6ff4:	27a700a4 	addiu	a3,sp,164
    6ff8:	0c000000 	jal	0 <func_8091BB00>
    6ffc:	e7a60010 	swc1	$f6,16(sp)
    7000:	26100001 	addiu	s0,s0,1
    7004:	00108400 	sll	s0,s0,0x10
    7008:	00108403 	sra	s0,s0,0x10
    700c:	2a01000a 	slti	at,s0,10
    7010:	1420ffa9 	bnez	at,6eb8 <L80921B08+0xeb0>
    7014:	00000000 	nop
    7018:	8fa90040 	lw	t1,64(sp)
    701c:	24190064 	li	t9,100
    7020:	24080122 	li	t0,290
    7024:	8d2b0000 	lw	t3,0(t1)
    7028:	02402825 	move	a1,s2
    702c:	3c0642c8 	lui	a2,0x42c8
    7030:	ae4b0000 	sw	t3,0(s2)
    7034:	8d2a0004 	lw	t2,4(t1)
    7038:	3c074448 	lui	a3,0x4448
    703c:	ae4a0004 	sw	t2,4(s2)
    7040:	8d2b0008 	lw	t3,8(t1)
    7044:	24090001 	li	t1,1
    7048:	ae4b0008 	sw	t3,8(s2)
    704c:	8fac00ec 	lw	t4,236(sp)
    7050:	8fb8004c 	lw	t8,76(sp)
    7054:	8d8d07c0 	lw	t5,1984(t4)
    7058:	8dae0028 	lw	t6,40(t5)
    705c:	85cf0002 	lh	t7,2(t6)
    7060:	448f2000 	mtc1	t7,$f4
    7064:	00000000 	nop
    7068:	468024a0 	cvt.s.w	$f18,$f4
    706c:	e7b200b4 	swc1	$f18,180(sp)
    7070:	8f041e10 	lw	a0,7696(t8)
    7074:	afa90018 	sw	t1,24(sp)
    7078:	afa80014 	sw	t0,20(sp)
    707c:	0c000000 	jal	0 <func_8091BB00>
    7080:	afb90010 	sw	t9,16(sp)
    7084:	8faa004c 	lw	t2,76(sp)
    7088:	240b0046 	li	t3,70
    708c:	240c0122 	li	t4,290
    7090:	8d441e10 	lw	a0,7696(t2)
    7094:	240d0001 	li	t5,1
    7098:	afad0018 	sw	t5,24(sp)
    709c:	afac0014 	sw	t4,20(sp)
    70a0:	afab0010 	sw	t3,16(sp)
    70a4:	02402825 	move	a1,s2
    70a8:	3c064248 	lui	a2,0x4248
    70ac:	0c000000 	jal	0 <func_8091BB00>
    70b0:	3c074416 	lui	a3,0x4416
    70b4:	8fae004c 	lw	t6,76(sp)
    70b8:	240f0032 	li	t7,50
    70bc:	24180122 	li	t8,290
    70c0:	8dc41e10 	lw	a0,7696(t6)
    70c4:	24190001 	li	t9,1
    70c8:	afb90018 	sw	t9,24(sp)
    70cc:	afb80014 	sw	t8,20(sp)
    70d0:	afaf0010 	sw	t7,16(sp)
    70d4:	02402825 	move	a1,s2
    70d8:	24060000 	li	a2,0
    70dc:	0c000000 	jal	0 <func_8091BB00>
    70e0:	3c0743c8 	lui	a3,0x43c8
    70e4:	8fa800ec 	lw	t0,236(sp)
    70e8:	c6220028 	lwc1	$f2,40(s1)
    70ec:	8d0907c0 	lw	t1,1984(t0)
    70f0:	8d2a0028 	lw	t2,40(t1)
    70f4:	854b0002 	lh	t3,2(t2)
    70f8:	448b4000 	mtc1	t3,$f8
    70fc:	00000000 	nop
    7100:	46804020 	cvt.s.w	$f0,$f8
    7104:	4600103c 	c.lt.s	$f2,$f0
    7108:	00000000 	nop
    710c:	45030006 	bc1tl	7128 <L80921B08+0x1120>
    7110:	8fad00ec 	lw	t5,236(sp)
    7114:	862c0158 	lh	t4,344(s1)
    7118:	2981000a 	slti	at,t4,10
    711c:	5420003b 	bnezl	at,720c <L80921B08+0x1204>
    7120:	02202025 	move	a0,s1
    7124:	8fad00ec 	lw	t5,236(sp)
    7128:	3c010001 	lui	at,0x1
    712c:	00008025 	move	s0,zero
    7130:	01a17021 	addu	t6,t5,at
    7134:	afae004c 	sw	t6,76(sp)
    7138:	e7b400a0 	swc1	$f20,160(sp)
    713c:	e7b40098 	swc1	$f20,152(sp)
    7140:	e7b400ac 	swc1	$f20,172(sp)
    7144:	e7b400a8 	swc1	$f20,168(sp)
    7148:	e7b400a4 	swc1	$f20,164(sp)
    714c:	862f0158 	lh	t7,344(s1)
    7150:	29e1000a 	slti	at,t7,10
    7154:	14200004 	bnez	at,7168 <L80921B08+0x1160>
    7158:	3c014120 	lui	at,0x4120
    715c:	44816000 	mtc1	at,$f12
    7160:	10000006 	b	717c <L80921B08+0x1174>
    7164:	e7b4009c 	swc1	$f20,156(sp)
    7168:	3c010000 	lui	at,0x0
    716c:	c42a0000 	lwc1	$f10,0(at)
    7170:	3c0141a0 	lui	at,0x41a0
    7174:	44816000 	mtc1	at,$f12
    7178:	e7aa009c 	swc1	$f10,156(sp)
    717c:	0c000000 	jal	0 <func_8091BB00>
    7180:	e7ac0058 	swc1	$f12,88(sp)
    7184:	c6260024 	lwc1	$f6,36(s1)
    7188:	c7ac0058 	lwc1	$f12,88(sp)
    718c:	46060100 	add.s	$f4,$f0,$f6
    7190:	0c000000 	jal	0 <func_8091BB00>
    7194:	e7a400b0 	swc1	$f4,176(sp)
    7198:	c6320028 	lwc1	$f18,40(s1)
    719c:	c7ac0058 	lwc1	$f12,88(sp)
    71a0:	46120200 	add.s	$f8,$f0,$f18
    71a4:	0c000000 	jal	0 <func_8091BB00>
    71a8:	e7a800b4 	swc1	$f8,180(sp)
    71ac:	c62a002c 	lwc1	$f10,44(s1)
    71b0:	3c010000 	lui	at,0x0
    71b4:	c42c0000 	lwc1	$f12,0(at)
    71b8:	460a0180 	add.s	$f6,$f0,$f10
    71bc:	0c000000 	jal	0 <func_8091BB00>
    71c0:	e7a600b8 	swc1	$f6,184(sp)
    71c4:	3c010000 	lui	at,0x0
    71c8:	c4240000 	lwc1	$f4,0(at)
    71cc:	8fb8004c 	lw	t8,76(sp)
    71d0:	02402825 	move	a1,s2
    71d4:	46040480 	add.s	$f18,$f0,$f4
    71d8:	8f041e10 	lw	a0,7696(t8)
    71dc:	afa00014 	sw	zero,20(sp)
    71e0:	27a600a4 	addiu	a2,sp,164
    71e4:	e7b20010 	swc1	$f18,16(sp)
    71e8:	0c000000 	jal	0 <func_8091BB00>
    71ec:	27a70098 	addiu	a3,sp,152
    71f0:	26100001 	addiu	s0,s0,1
    71f4:	00108400 	sll	s0,s0,0x10
    71f8:	00108403 	sra	s0,s0,0x10
    71fc:	2a010003 	slti	at,s0,3
    7200:	5420ffce 	bnezl	at,713c <L80921B08+0x1134>
    7204:	e7b400a0 	swc1	$f20,160(sp)
    7208:	02202025 	move	a0,s1
    720c:	0c000000 	jal	0 <func_8091BB00>
    7210:	8fa500ec 	lw	a1,236(sp)
    7214:	8fbf003c 	lw	ra,60(sp)
    7218:	d7b40028 	ldc1	$f20,40(sp)
    721c:	8fb00030 	lw	s0,48(sp)
    7220:	8fb10034 	lw	s1,52(sp)
    7224:	8fb20038 	lw	s2,56(sp)
    7228:	03e00008 	jr	ra
    722c:	27bd00e8 	addiu	sp,sp,232

00007230 <func_80922D30>:
    7230:	27bdffc8 	addiu	sp,sp,-56
    7234:	afbf001c 	sw	ra,28(sp)
    7238:	afb10018 	sw	s1,24(sp)
    723c:	afb00014 	sw	s0,20(sp)
    7240:	8cae1c44 	lw	t6,7236(a1)
    7244:	00808025 	move	s0,a0
    7248:	00a08825 	move	s1,a1
    724c:	3c040000 	lui	a0,0x0
    7250:	afae0028 	sw	t6,40(sp)
    7254:	86050158 	lh	a1,344(s0)
    7258:	0c000000 	jal	0 <func_8091BB00>
    725c:	24840000 	addiu	a0,a0,0
    7260:	3c020000 	lui	v0,0x0
    7264:	8c420000 	lw	v0,0(v0)
    7268:	02202825 	move	a1,s1
    726c:	54400014 	bnezl	v0,72c0 <func_80922D30+0x90>
    7270:	c60801bc 	lwc1	$f8,444(s0)
    7274:	c60601bc 	lwc1	$f6,444(s0)
    7278:	3c0f0000 	lui	t7,0x0
    727c:	8def0000 	lw	t7,0(t7)
    7280:	4600320d 	trunc.w.s	$f8,$f6
    7284:	8e2c07c0 	lw	t4,1984(s1)
    7288:	c5e401c8 	lwc1	$f4,456(t7)
    728c:	44194000 	mfc1	t9,$f8
    7290:	8d8d0028 	lw	t5,40(t4)
    7294:	00194400 	sll	t0,t9,0x10
    7298:	00084c03 	sra	t1,t0,0x10
    729c:	44895000 	mtc1	t1,$f10
    72a0:	00000000 	nop
    72a4:	46805420 	cvt.s.w	$f16,$f10
    72a8:	46102480 	add.s	$f18,$f4,$f16
    72ac:	4600918d 	trunc.w.s	$f6,$f18
    72b0:	440b3000 	mfc1	t3,$f6
    72b4:	10000015 	b	730c <func_80922D30+0xdc>
    72b8:	a5ab0002 	sh	t3,2(t5)
    72bc:	c60801bc 	lwc1	$f8,444(s0)
    72c0:	3c080000 	lui	t0,0x0
    72c4:	8d080000 	lw	t0,0(t0)
    72c8:	4600428d 	trunc.w.s	$f10,$f8
    72cc:	c44801c8 	lwc1	$f8,456(v0)
    72d0:	c51201c8 	lwc1	$f18,456(t0)
    72d4:	8e2c07c0 	lw	t4,1984(s1)
    72d8:	440f5000 	mfc1	t7,$f10
    72dc:	8d8b0028 	lw	t3,40(t4)
    72e0:	000fc400 	sll	t8,t7,0x10
    72e4:	0018cc03 	sra	t9,t8,0x10
    72e8:	44992000 	mtc1	t9,$f4
    72ec:	00000000 	nop
    72f0:	46802420 	cvt.s.w	$f16,$f4
    72f4:	46128180 	add.s	$f6,$f16,$f18
    72f8:	46064280 	add.s	$f10,$f8,$f6
    72fc:	4600510d 	trunc.w.s	$f4,$f10
    7300:	440a2000 	mfc1	t2,$f4
    7304:	00000000 	nop
    7308:	a56a0002 	sh	t2,2(t3)
    730c:	8e180024 	lw	t8,36(s0)
    7310:	8e0d0004 	lw	t5,4(s0)
    7314:	8619015c 	lh	t9,348(s0)
    7318:	8602015e 	lh	v0,350(s0)
    731c:	ae180038 	sw	t8,56(s0)
    7320:	8e18002c 	lw	t8,44(s0)
    7324:	8e0f0028 	lw	t7,40(s0)
    7328:	35ae0200 	ori	t6,t5,0x200
    732c:	27280001 	addiu	t0,t9,1
    7330:	ae0e0004 	sw	t6,4(s0)
    7334:	a608015c 	sh	t0,348(s0)
    7338:	ae180040 	sw	t8,64(s0)
    733c:	10400003 	beqz	v0,734c <func_80922D30+0x11c>
    7340:	ae0f003c 	sw	t7,60(s0)
    7344:	2449ffff 	addiu	t1,v0,-1
    7348:	a609015e 	sh	t1,350(s0)
    734c:	86020160 	lh	v0,352(s0)
    7350:	10400002 	beqz	v0,735c <func_80922D30+0x12c>
    7354:	244cffff 	addiu	t4,v0,-1
    7358:	a60c0160 	sh	t4,352(s0)
    735c:	860a015a 	lh	t2,346(s0)
    7360:	00001025 	move	v0,zero
    7364:	254b0001 	addiu	t3,t2,1
    7368:	a60b015a 	sh	t3,346(s0)
    736c:	00026840 	sll	t5,v0,0x1
    7370:	020d1821 	addu	v1,s0,t5
    7374:	8464017e 	lh	a0,382(v1)
    7378:	24420001 	addiu	v0,v0,1
    737c:	00021400 	sll	v0,v0,0x10
    7380:	10800003 	beqz	a0,7390 <func_80922D30+0x160>
    7384:	00021403 	sra	v0,v0,0x10
    7388:	248effff 	addiu	t6,a0,-1
    738c:	a46e017e 	sh	t6,382(v1)
    7390:	28410005 	slti	at,v0,5
    7394:	5420fff6 	bnezl	at,7370 <func_80922D30+0x140>
    7398:	00026840 	sll	t5,v0,0x1
    739c:	0c000000 	jal	0 <func_8091BB00>
    73a0:	02002025 	move	a0,s0
    73a4:	260614fc 	addiu	a2,s0,5372
    73a8:	00c02825 	move	a1,a2
    73ac:	afa60020 	sw	a2,32(sp)
    73b0:	0c000000 	jal	0 <func_8091BB00>
    73b4:	02002025 	move	a0,s0
    73b8:	3c010001 	lui	at,0x1
    73bc:	34211e60 	ori	at,at,0x1e60
    73c0:	02212821 	addu	a1,s1,at
    73c4:	8fa60020 	lw	a2,32(sp)
    73c8:	afa50024 	sw	a1,36(sp)
    73cc:	0c000000 	jal	0 <func_8091BB00>
    73d0:	02202025 	move	a0,s1
    73d4:	860f0158 	lh	t7,344(s0)
    73d8:	24010005 	li	at,5
    73dc:	8fa50024 	lw	a1,36(sp)
    73e0:	15e1000c 	bne	t7,at,7414 <func_80922D30+0x1e4>
    73e4:	8fa60020 	lw	a2,32(sp)
    73e8:	8e3807c0 	lw	t8,1984(s1)
    73ec:	c6100028 	lwc1	$f16,40(s0)
    73f0:	8f190028 	lw	t9,40(t8)
    73f4:	87280002 	lh	t0,2(t9)
    73f8:	44889000 	mtc1	t0,$f18
    73fc:	00000000 	nop
    7400:	46809220 	cvt.s.w	$f8,$f18
    7404:	4608803c 	c.lt.s	$f16,$f8
    7408:	00000000 	nop
    740c:	45000005 	bc1f	7424 <func_80922D30+0x1f4>
    7410:	00000000 	nop
    7414:	0c000000 	jal	0 <func_8091BB00>
    7418:	02202025 	move	a0,s1
    741c:	10000004 	b	7430 <func_80922D30+0x200>
    7420:	02002025 	move	a0,s0
    7424:	0c000000 	jal	0 <func_8091BB00>
    7428:	02202025 	move	a0,s1
    742c:	02002025 	move	a0,s0
    7430:	0c000000 	jal	0 <func_8091BB00>
    7434:	02202825 	move	a1,s1
    7438:	8fa90028 	lw	t1,40(sp)
    743c:	8d2c0118 	lw	t4,280(t1)
    7440:	11800005 	beqz	t4,7458 <func_80922D30+0x228>
    7444:	00000000 	nop
    7448:	8e0a0004 	lw	t2,4(s0)
    744c:	2401fffe 	li	at,-2
    7450:	01415824 	and	t3,t2,at
    7454:	ae0b0004 	sw	t3,4(s0)
    7458:	0c000000 	jal	0 <func_8091BB00>
    745c:	00000000 	nop
    7460:	8fbf001c 	lw	ra,28(sp)
    7464:	8fb00014 	lw	s0,20(sp)
    7468:	8fb10018 	lw	s1,24(sp)
    746c:	03e00008 	jr	ra
    7470:	27bd0038 	addiu	sp,sp,56

00007474 <BossMo_Update>:
    7474:	27bdff48 	addiu	sp,sp,-184
    7478:	afb30038 	sw	s3,56(sp)
    747c:	3c130000 	lui	s3,0x0
    7480:	26730000 	addiu	s3,s3,0
    7484:	8e6e0000 	lw	t6,0(s3)
    7488:	afbf0044 	sw	ra,68(sp)
    748c:	afb50040 	sw	s5,64(sp)
    7490:	afb4003c 	sw	s4,60(sp)
    7494:	afb20034 	sw	s2,52(sp)
    7498:	afb10030 	sw	s1,48(sp)
    749c:	afb0002c 	sw	s0,44(sp)
    74a0:	f7b40020 	sdc1	$f20,32(sp)
    74a4:	00a08825 	move	s1,a1
    74a8:	00809025 	move	s2,a0
    74ac:	148e000f 	bne	a0,t6,74ec <BossMo_Update+0x78>
    74b0:	8cb01c44 	lw	s0,7236(a1)
    74b4:	90820154 	lbu	v0,340(a0)
    74b8:	1040000c 	beqz	v0,74ec <BossMo_Update+0x78>
    74bc:	244f0001 	addiu	t7,v0,1
    74c0:	31f800ff 	andi	t8,t7,0xff
    74c4:	2b010015 	slti	at,t8,21
    74c8:	a08f0154 	sb	t7,340(a0)
    74cc:	142001f3 	bnez	at,7c9c <BossMo_Update+0x828>
    74d0:	ac800134 	sw	zero,308(a0)
    74d4:	0c000000 	jal	0 <func_8091BB00>
    74d8:	00000000 	nop
    74dc:	0c000000 	jal	0 <func_8091BB00>
    74e0:	26441010 	addiu	a0,s2,4112
    74e4:	100001ed 	b	7c9c <BossMo_Update+0x828>
    74e8:	ae600000 	sw	zero,0(s3)
    74ec:	3c010001 	lui	at,0x1
    74f0:	34211d60 	ori	at,at,0x1d60
    74f4:	26461010 	addiu	a2,s2,4112
    74f8:	afa6004c 	sw	a2,76(sp)
    74fc:	02212021 	addu	a0,s1,at
    7500:	26450f50 	addiu	a1,s2,3920
    7504:	264700f0 	addiu	a3,s2,240
    7508:	0c000000 	jal	0 <func_8091BB00>
    750c:	afb100bc 	sw	s1,188(sp)
    7510:	3c040000 	lui	a0,0x0
    7514:	24840000 	addiu	a0,a0,0
    7518:	0c000000 	jal	0 <func_8091BB00>
    751c:	86450158 	lh	a1,344(s2)
    7520:	260400b4 	addiu	a0,s0,180
    7524:	00002825 	move	a1,zero
    7528:	24060005 	li	a2,5
    752c:	0c000000 	jal	0 <func_8091BB00>
    7530:	240703e8 	li	a3,1000
    7534:	260400b8 	addiu	a0,s0,184
    7538:	00002825 	move	a1,zero
    753c:	24060005 	li	a2,5
    7540:	0c000000 	jal	0 <func_8091BB00>
    7544:	240703e8 	li	a3,1000
    7548:	864d016a 	lh	t5,362(s2)
    754c:	8659015c 	lh	t9,348(s2)
    7550:	8649017c 	lh	t1,380(s2)
    7554:	25ae0001 	addiu	t6,t5,1
    7558:	a64e016a 	sh	t6,362(s2)
    755c:	864b015a 	lh	t3,346(s2)
    7560:	8643016a 	lh	v1,362(s2)
    7564:	27280001 	addiu	t0,t9,1
    7568:	252a0001 	addiu	t2,t1,1
    756c:	256c0001 	addiu	t4,t3,1
    7570:	2861012c 	slti	at,v1,300
    7574:	a648015c 	sh	t0,348(s2)
    7578:	a64a017c 	sh	t2,380(s2)
    757c:	14200003 	bnez	at,758c <BossMo_Update+0x118>
    7580:	a64c015a 	sh	t4,346(s2)
    7584:	a640016a 	sh	zero,362(s2)
    7588:	8643016a 	lh	v1,362(s2)
    758c:	864f016c 	lh	t7,364(s2)
    7590:	25f8f448 	addiu	t8,t7,-3000
    7594:	a658016c 	sh	t8,364(s2)
    7598:	8644016c 	lh	a0,364(s2)
    759c:	0c000000 	jal	0 <func_8091BB00>
    75a0:	a7a300b4 	sh	v1,180(sp)
    75a4:	c6420d6c 	lwc1	$f2,3436(s2)
    75a8:	3c013f80 	lui	at,0x3f80
    75ac:	44813000 	mtc1	at,$f6
    75b0:	46020102 	mul.s	$f4,$f0,$f2
    75b4:	87a200b4 	lh	v0,180(sp)
    75b8:	46023200 	add.s	$f8,$f6,$f2
    75bc:	3c013f00 	lui	at,0x3f00
    75c0:	0002c880 	sll	t9,v0,0x2
    75c4:	02594021 	addu	t0,s2,t9
    75c8:	3c140000 	lui	s4,0x0
    75cc:	46082280 	add.s	$f10,$f4,$f8
    75d0:	4481a000 	mtc1	at,$f20
    75d4:	26940000 	addiu	s4,s4,0
    75d8:	00008825 	move	s1,zero
    75dc:	e50a01f8 	swc1	$f10,504(t0)
    75e0:	2415000c 	li	s5,12
    75e4:	2413012c 	li	s3,300
    75e8:	86420158 	lh	v0,344(s2)
    75ec:	00117880 	sll	t7,s1,0x2
    75f0:	284100c8 	slti	at,v0,200
    75f4:	5420005c 	bnezl	at,7768 <BossMo_Update+0x2f4>
    75f8:	864b016a 	lh	t3,362(s2)
    75fc:	284100c9 	slti	at,v0,201
    7600:	1420003c 	bnez	at,76f4 <BossMo_Update+0x280>
    7604:	00116840 	sll	t5,s1,0x1
    7608:	240100cd 	li	at,205
    760c:	14410016 	bne	v0,at,7668 <BossMo_Update+0x1f4>
    7610:	00117040 	sll	t6,s1,0x1
    7614:	8649017e 	lh	t1,382(s2)
    7618:	00115880 	sll	t3,s1,0x2
    761c:	3c010000 	lui	at,0x0
    7620:	11200006 	beqz	t1,763c <BossMo_Update+0x1c8>
    7624:	002b0821 	addu	at,at,t3
    7628:	00115080 	sll	t2,s1,0x2
    762c:	3c010000 	lui	at,0x0
    7630:	002a0821 	addu	at,at,t2
    7634:	10000002 	b	7640 <BossMo_Update+0x1cc>
    7638:	c4200000 	lwc1	$f0,0(at)
    763c:	c4200000 	lwc1	$f0,0(at)
    7640:	02350019 	multu	s1,s5
    7644:	44050000 	mfc1	a1,$f0
    7648:	4406a000 	mfc1	a2,$f20
    764c:	3c0742c8 	lui	a3,0x42c8
    7650:	00006012 	mflo	t4
    7654:	024c8021 	addu	s0,s2,t4
    7658:	0c000000 	jal	0 <func_8091BB00>
    765c:	26040894 	addiu	a0,s0,2196
    7660:	10000062 	b	77ec <BossMo_Update+0x378>
    7664:	864a015c 	lh	t2,348(s2)
    7668:	864d016a 	lh	t5,362(s2)
    766c:	0011c880 	sll	t9,s1,0x2
    7670:	02994021 	addu	t0,s4,t9
    7674:	01ae7821 	addu	t7,t5,t6
    7678:	25f800dc 	addiu	t8,t7,220
    767c:	0313001a 	div	zero,t8,s3
    7680:	00001010 	mfhi	v0
    7684:	c5020000 	lwc1	$f2,0(t0)
    7688:	00021400 	sll	v0,v0,0x10
    768c:	02350019 	multu	s1,s5
    7690:	46021402 	mul.s	$f16,$f2,$f2
    7694:	00021403 	sra	v0,v0,0x10
    7698:	00024880 	sll	t1,v0,0x2
    769c:	02495021 	addu	t2,s2,t1
    76a0:	c55201f8 	lwc1	$f18,504(t2)
    76a4:	16600002 	bnez	s3,76b0 <BossMo_Update+0x23c>
    76a8:	00000000 	nop
    76ac:	0007000d 	break	0x7
    76b0:	2401ffff 	li	at,-1
    76b4:	16610004 	bne	s3,at,76c8 <BossMo_Update+0x254>
    76b8:	3c018000 	lui	at,0x8000
    76bc:	17010002 	bne	t8,at,76c8 <BossMo_Update+0x254>
    76c0:	00000000 	nop
    76c4:	0006000d 	break	0x6
    76c8:	46128000 	add.s	$f0,$f16,$f18
    76cc:	00005812 	mflo	t3
    76d0:	024b8021 	addu	s0,s2,t3
    76d4:	4406a000 	mfc1	a2,$f20
    76d8:	44050000 	mfc1	a1,$f0
    76dc:	3c073e99 	lui	a3,0x3e99
    76e0:	34e7999a 	ori	a3,a3,0x999a
    76e4:	0c000000 	jal	0 <func_8091BB00>
    76e8:	26040894 	addiu	a0,s0,2196
    76ec:	1000003f 	b	77ec <BossMo_Update+0x378>
    76f0:	864a015c 	lh	t2,348(s2)
    76f4:	864c016a 	lh	t4,362(s2)
    76f8:	0011c080 	sll	t8,s1,0x2
    76fc:	0298c821 	addu	t9,s4,t8
    7700:	018d7023 	subu	t6,t4,t5
    7704:	25cf012c 	addiu	t7,t6,300
    7708:	01f3001a 	div	zero,t7,s3
    770c:	00001010 	mfhi	v0
    7710:	00021400 	sll	v0,v0,0x10
    7714:	00021403 	sra	v0,v0,0x10
    7718:	02350019 	multu	s1,s5
    771c:	00024080 	sll	t0,v0,0x2
    7720:	02484821 	addu	t1,s2,t0
    7724:	c52401f8 	lwc1	$f4,504(t1)
    7728:	c7260000 	lwc1	$f6,0(t9)
    772c:	16600002 	bnez	s3,7738 <BossMo_Update+0x2c4>
    7730:	00000000 	nop
    7734:	0007000d 	break	0x7
    7738:	2401ffff 	li	at,-1
    773c:	16610004 	bne	s3,at,7750 <BossMo_Update+0x2dc>
    7740:	3c018000 	lui	at,0x8000
    7744:	15e10002 	bne	t7,at,7750 <BossMo_Update+0x2dc>
    7748:	00000000 	nop
    774c:	0006000d 	break	0x6
    7750:	46043002 	mul.s	$f0,$f6,$f4
    7754:	00005012 	mflo	t2
    7758:	024a8021 	addu	s0,s2,t2
    775c:	10000022 	b	77e8 <BossMo_Update+0x374>
    7760:	e6000894 	swc1	$f0,2196(s0)
    7764:	864b016a 	lh	t3,362(s2)
    7768:	00116040 	sll	t4,s1,0x1
    776c:	028fc021 	addu	t8,s4,t7
    7770:	016c6823 	subu	t5,t3,t4
    7774:	25ae012c 	addiu	t6,t5,300
    7778:	01d3001a 	div	zero,t6,s3
    777c:	00001010 	mfhi	v0
    7780:	00021400 	sll	v0,v0,0x10
    7784:	00021403 	sra	v0,v0,0x10
    7788:	0002c880 	sll	t9,v0,0x2
    778c:	02350019 	multu	s1,s5
    7790:	02594021 	addu	t0,s2,t9
    7794:	c50a01f8 	lwc1	$f10,504(t0)
    7798:	c7080000 	lwc1	$f8,0(t8)
    779c:	16600002 	bnez	s3,77a8 <BossMo_Update+0x334>
    77a0:	00000000 	nop
    77a4:	0007000d 	break	0x7
    77a8:	2401ffff 	li	at,-1
    77ac:	16610004 	bne	s3,at,77c0 <BossMo_Update+0x34c>
    77b0:	3c018000 	lui	at,0x8000
    77b4:	15c10002 	bne	t6,at,77c0 <BossMo_Update+0x34c>
    77b8:	00000000 	nop
    77bc:	0006000d 	break	0x6
    77c0:	460a4002 	mul.s	$f0,$f8,$f10
    77c4:	00004812 	mflo	t1
    77c8:	02498021 	addu	s0,s2,t1
    77cc:	4406a000 	mfc1	a2,$f20
    77d0:	3c073e99 	lui	a3,0x3e99
    77d4:	34e7999a 	ori	a3,a3,0x999a
    77d8:	26040894 	addiu	a0,s0,2196
    77dc:	44050000 	mfc1	a1,$f0
    77e0:	0c000000 	jal	0 <func_8091BB00>
    77e4:	00000000 	nop
    77e8:	864a015c 	lh	t2,348(s2)
    77ec:	44914000 	mtc1	s1,$f8
    77f0:	3c010000 	lui	at,0x0
    77f4:	448a8000 	mtc1	t2,$f16
    77f8:	468042a0 	cvt.s.w	$f10,$f8
    77fc:	c4260000 	lwc1	$f6,0(at)
    7800:	3c010000 	lui	at,0x0
    7804:	468084a0 	cvt.s.w	$f18,$f16
    7808:	c4300000 	lwc1	$f16,0(at)
    780c:	46069102 	mul.s	$f4,$f18,$f6
    7810:	00000000 	nop
    7814:	46105482 	mul.s	$f18,$f10,$f16
    7818:	46122180 	add.s	$f6,$f4,$f18
    781c:	4600320d 	trunc.w.s	$f8,$f6
    7820:	44044000 	mfc1	a0,$f8
    7824:	00000000 	nop
    7828:	00042400 	sll	a0,a0,0x10
    782c:	0c000000 	jal	0 <func_8091BB00>
    7830:	00042403 	sra	a0,a0,0x10
    7834:	c64a01e0 	lwc1	$f10,480(s2)
    7838:	c6020894 	lwc1	$f2,2196(s0)
    783c:	26310001 	addiu	s1,s1,1
    7840:	460a0402 	mul.s	$f16,$f0,$f10
    7844:	e602089c 	swc1	$f2,2204(s0)
    7848:	e6020898 	swc1	$f2,2200(s0)
    784c:	00118c00 	sll	s1,s1,0x10
    7850:	00118c03 	sra	s1,s1,0x10
    7854:	2a210029 	slti	at,s1,41
    7858:	e6100a80 	swc1	$f16,2688(s0)
    785c:	c6020a80 	lwc1	$f2,2688(s0)
    7860:	e6020a88 	swc1	$f2,2696(s0)
    7864:	1420ff60 	bnez	at,75e8 <BossMo_Update+0x174>
    7868:	e6020a84 	swc1	$f2,2692(s0)
    786c:	3c063dcc 	lui	a2,0x3dcc
    7870:	3c073ba3 	lui	a3,0x3ba3
    7874:	34e7d70a 	ori	a3,a3,0xd70a
    7878:	34c6cccd 	ori	a2,a2,0xcccd
    787c:	264401e0 	addiu	a0,s2,480
    7880:	0c000000 	jal	0 <func_8091BB00>
    7884:	24050000 	li	a1,0
    7888:	3c053e4c 	lui	a1,0x3e4c
    788c:	4406a000 	mfc1	a2,$f20
    7890:	3c073c23 	lui	a3,0x3c23
    7894:	34e7d70a 	ori	a3,a3,0xd70a
    7898:	34a5cccd 	ori	a1,a1,0xcccd
    789c:	0c000000 	jal	0 <func_8091BB00>
    78a0:	26440d6c 	addiu	a0,s2,3436
    78a4:	8e590150 	lw	t9,336(s2)
    78a8:	02402025 	move	a0,s2
    78ac:	8fa500bc 	lw	a1,188(sp)
    78b0:	0320f809 	jalr	t9
    78b4:	00000000 	nop
    78b8:	00008825 	move	s1,zero
    78bc:	00116040 	sll	t4,s1,0x1
    78c0:	024c1021 	addu	v0,s2,t4
    78c4:	8443017e 	lh	v1,382(v0)
    78c8:	26310001 	addiu	s1,s1,1
    78cc:	00118c00 	sll	s1,s1,0x10
    78d0:	10600003 	beqz	v1,78e0 <BossMo_Update+0x46c>
    78d4:	00118c03 	sra	s1,s1,0x10
    78d8:	246dffff 	addiu	t5,v1,-1
    78dc:	a44d017e 	sh	t5,382(v0)
    78e0:	2a210005 	slti	at,s1,5
    78e4:	5420fff6 	bnezl	at,78c0 <BossMo_Update+0x44c>
    78e8:	00116040 	sll	t4,s1,0x1
    78ec:	26440032 	addiu	a0,s2,50
    78f0:	8645008a 	lh	a1,138(s2)
    78f4:	2406000a 	li	a2,10
    78f8:	0c000000 	jal	0 <func_8091BB00>
    78fc:	240700c8 	li	a3,200
    7900:	0c000000 	jal	0 <func_8091BB00>
    7904:	02402025 	move	a0,s2
    7908:	4480a000 	mtc1	zero,$f20
    790c:	3c073ca3 	lui	a3,0x3ca3
    7910:	34e7d70a 	ori	a3,a3,0xd70a
    7914:	4405a000 	mfc1	a1,$f20
    7918:	26440068 	addiu	a0,s2,104
    791c:	0c000000 	jal	0 <func_8091BB00>
    7920:	3c063f80 	lui	a2,0x3f80
    7924:	26500024 	addiu	s0,s2,36
    7928:	02002025 	move	a0,s0
    792c:	0c000000 	jal	0 <func_8091BB00>
    7930:	3c054220 	lui	a1,0x4220
    7934:	50400008 	beqzl	v0,7958 <BossMo_Update+0x4e4>
    7938:	8658015c 	lh	t8,348(s2)
    793c:	8e4f0100 	lw	t7,256(s2)
    7940:	ae0f0000 	sw	t7,0(s0)
    7944:	8e4e0104 	lw	t6,260(s2)
    7948:	ae0e0004 	sw	t6,4(s0)
    794c:	8e4f0108 	lw	t7,264(s2)
    7950:	ae0f0008 	sw	t7,8(s0)
    7954:	8658015c 	lh	t8,348(s2)
    7958:	33080007 	andi	t0,t8,0x7
    795c:	5500002e 	bnezl	t0,7a18 <BossMo_Update+0x5a4>
    7960:	864801cc 	lh	t0,460(s2)
    7964:	8e0a0000 	lw	t2,0(s0)
    7968:	27a50094 	addiu	a1,sp,148
    796c:	acaa0000 	sw	t2,0(a1)
    7970:	8e090004 	lw	t1,4(s0)
    7974:	aca90004 	sw	t1,4(a1)
    7978:	8e0a0008 	lw	t2,8(s0)
    797c:	acaa0008 	sw	t2,8(a1)
    7980:	86420158 	lh	v0,344(s2)
    7984:	284100c8 	slti	at,v0,200
    7988:	10200004 	beqz	at,799c <BossMo_Update+0x528>
    798c:	3c0143c8 	lui	at,0x43c8
    7990:	44810000 	mtc1	at,$f0
    7994:	1000000b 	b	79c4 <BossMo_Update+0x550>
    7998:	3c014040 	lui	at,0x4040
    799c:	284100c9 	slti	at,v0,201
    79a0:	14200007 	bnez	at,79c0 <BossMo_Update+0x54c>
    79a4:	4600a006 	mov.s	$f0,$f20
    79a8:	8e590f38 	lw	t9,3896(s2)
    79ac:	acb90000 	sw	t9,0(a1)
    79b0:	8e4b0f3c 	lw	t3,3900(s2)
    79b4:	acab0004 	sw	t3,4(a1)
    79b8:	8e590f40 	lw	t9,3904(s2)
    79bc:	acb90008 	sw	t9,8(a1)
    79c0:	3c014040 	lui	at,0x4040
    79c4:	44812000 	mtc1	at,$f4
    79c8:	3c010000 	lui	at,0x0
    79cc:	c4280000 	lwc1	$f8,0(at)
    79d0:	46040482 	mul.s	$f18,$f0,$f4
    79d4:	c64601a4 	lwc1	$f6,420(s2)
    79d8:	8fac00bc 	lw	t4,188(sp)
    79dc:	3c040001 	lui	a0,0x1
    79e0:	46083282 	mul.s	$f10,$f6,$f8
    79e4:	008c2021 	addu	a0,a0,t4
    79e8:	8c841e10 	lw	a0,7696(a0)
    79ec:	44079000 	mfc1	a3,$f18
    79f0:	44060000 	mfc1	a2,$f0
    79f4:	240f012c 	li	t7,300
    79f8:	24180002 	li	t8,2
    79fc:	4600540d 	trunc.w.s	$f16,$f10
    7a00:	afb80018 	sw	t8,24(sp)
    7a04:	afaf0014 	sw	t7,20(sp)
    7a08:	440e8000 	mfc1	t6,$f16
    7a0c:	0c000000 	jal	0 <func_8091BB00>
    7a10:	afae0010 	sw	t6,16(sp)
    7a14:	864801cc 	lh	t0,460(s2)
    7a18:	3c090000 	lui	t1,0x0
    7a1c:	25290000 	addiu	t1,t1,0
    7a20:	51000053 	beqzl	t0,7b70 <BossMo_Update+0x6fc>
    7a24:	8642015e 	lh	v0,350(s2)
    7a28:	8d2b0000 	lw	t3,0(t1)
    7a2c:	27b40064 	addiu	s4,sp,100
    7a30:	3c0142c8 	lui	at,0x42c8
    7a34:	ae8b0000 	sw	t3,0(s4)
    7a38:	8d2a0004 	lw	t2,4(t1)
    7a3c:	44812000 	mtc1	at,$f4
    7a40:	3c010000 	lui	at,0x0
    7a44:	ae8a0004 	sw	t2,4(s4)
    7a48:	8d2b0008 	lw	t3,8(t1)
    7a4c:	ae8b0008 	sw	t3,8(s4)
    7a50:	865901cc 	lh	t9,460(s2)
    7a54:	272cffff 	addiu	t4,t9,-1
    7a58:	a64c01cc 	sh	t4,460(s2)
    7a5c:	8fb300bc 	lw	s3,188(sp)
    7a60:	c42c0000 	lwc1	$f12,0(at)
    7a64:	3c010001 	lui	at,0x1
    7a68:	e7b40088 	swc1	$f20,136(sp)
    7a6c:	e7b4008c 	swc1	$f20,140(sp)
    7a70:	e7a40090 	swc1	$f4,144(sp)
    7a74:	0c000000 	jal	0 <func_8091BB00>
    7a78:	02619821 	addu	s3,s3,at
    7a7c:	46000306 	mov.s	$f12,$f0
    7a80:	0c000000 	jal	0 <func_8091BB00>
    7a84:	00002825 	move	a1,zero
    7a88:	27a40088 	addiu	a0,sp,136
    7a8c:	0c000000 	jal	0 <func_8091BB00>
    7a90:	27a5007c 	addiu	a1,sp,124
    7a94:	86420158 	lh	v0,344(s2)
    7a98:	284100c9 	slti	at,v0,201
    7a9c:	14200005 	bnez	at,7ab4 <BossMo_Update+0x640>
    7aa0:	240100cb 	li	at,203
    7aa4:	50410004 	beql	v0,at,7ab8 <BossMo_Update+0x644>
    7aa8:	28410064 	slti	at,v0,100
    7aac:	10000007 	b	7acc <BossMo_Update+0x658>
    7ab0:	24110026 	li	s1,38
    7ab4:	28410064 	slti	at,v0,100
    7ab8:	10200004 	beqz	at,7acc <BossMo_Update+0x658>
    7abc:	00008825 	move	s1,zero
    7ac0:	8fa4004c 	lw	a0,76(sp)
    7ac4:	0c000000 	jal	0 <func_8091BB00>
    7ac8:	240530fa 	li	a1,12538
    7acc:	02350019 	multu	s1,s5
    7ad0:	c7a6007c 	lwc1	$f6,124(sp)
    7ad4:	3c0141a0 	lui	at,0x41a0
    7ad8:	44816000 	mtc1	at,$f12
    7adc:	00006812 	mflo	t5
    7ae0:	024d8021 	addu	s0,s2,t5
    7ae4:	c6120d70 	lwc1	$f18,3440(s0)
    7ae8:	46069200 	add.s	$f8,$f18,$f6
    7aec:	0c000000 	jal	0 <func_8091BB00>
    7af0:	e7a80070 	swc1	$f8,112(sp)
    7af4:	8fae00bc 	lw	t6,188(sp)
    7af8:	3c014220 	lui	at,0x4220
    7afc:	44812000 	mtc1	at,$f4
    7b00:	8dcf07c0 	lw	t7,1984(t6)
    7b04:	3c010000 	lui	at,0x0
    7b08:	c42c0000 	lwc1	$f12,0(at)
    7b0c:	8df80028 	lw	t8,40(t7)
    7b10:	87080002 	lh	t0,2(t8)
    7b14:	44885000 	mtc1	t0,$f10
    7b18:	00000000 	nop
    7b1c:	46805420 	cvt.s.w	$f16,$f10
    7b20:	c7aa0084 	lwc1	$f10,132(sp)
    7b24:	46048481 	sub.s	$f18,$f16,$f4
    7b28:	46120180 	add.s	$f6,$f0,$f18
    7b2c:	e7a60074 	swc1	$f6,116(sp)
    7b30:	c6080d78 	lwc1	$f8,3448(s0)
    7b34:	460a4400 	add.s	$f16,$f8,$f10
    7b38:	0c000000 	jal	0 <func_8091BB00>
    7b3c:	e7b00078 	swc1	$f16,120(sp)
    7b40:	3c010000 	lui	at,0x0
    7b44:	c4240000 	lwc1	$f4,0(at)
    7b48:	8e641e10 	lw	a0,7696(s3)
    7b4c:	26090d70 	addiu	t1,s0,3440
    7b50:	46040480 	add.s	$f18,$f0,$f4
    7b54:	afa90014 	sw	t1,20(sp)
    7b58:	27a50070 	addiu	a1,sp,112
    7b5c:	02803025 	move	a2,s4
    7b60:	e7b20010 	swc1	$f18,16(sp)
    7b64:	0c000000 	jal	0 <func_8091BB00>
    7b68:	02803825 	move	a3,s4
    7b6c:	8642015e 	lh	v0,350(s2)
    7b70:	02402025 	move	a0,s2
    7b74:	10400002 	beqz	v0,7b80 <BossMo_Update+0x70c>
    7b78:	244affff 	addiu	t2,v0,-1
    7b7c:	a64a015e 	sh	t2,350(s2)
    7b80:	86420160 	lh	v0,352(s2)
    7b84:	10400002 	beqz	v0,7b90 <BossMo_Update+0x71c>
    7b88:	244bffff 	addiu	t3,v0,-1
    7b8c:	a64b0160 	sh	t3,352(s2)
    7b90:	924201d2 	lbu	v0,466(s2)
    7b94:	10400002 	beqz	v0,7ba0 <BossMo_Update+0x72c>
    7b98:	2459ffff 	addiu	t9,v0,-1
    7b9c:	a25901d2 	sb	t9,466(s2)
    7ba0:	924c01d1 	lbu	t4,465(s2)
    7ba4:	5180002c 	beqzl	t4,7c58 <BossMo_Update+0x7e4>
    7ba8:	86490162 	lh	t1,354(s2)
    7bac:	0c000000 	jal	0 <func_8091BB00>
    7bb0:	8fa500bc 	lw	a1,188(sp)
    7bb4:	864d0160 	lh	t5,352(s2)
    7bb8:	55a0001f 	bnezl	t5,7c38 <BossMo_Update+0x7c4>
    7bbc:	86580172 	lh	t8,370(s2)
    7bc0:	86420158 	lh	v0,344(s2)
    7bc4:	24040004 	li	a0,4
    7bc8:	24050005 	li	a1,5
    7bcc:	5082001a 	beql	a0,v0,7c38 <BossMo_Update+0x7c4>
    7bd0:	86580172 	lh	t8,370(s2)
    7bd4:	50a20018 	beql	a1,v0,7c38 <BossMo_Update+0x7c4>
    7bd8:	86580172 	lh	t8,370(s2)
    7bdc:	8e42014c 	lw	v0,332(s2)
    7be0:	50400007 	beqzl	v0,7c00 <BossMo_Update+0x78c>
    7be4:	864e0172 	lh	t6,370(s2)
    7be8:	84430158 	lh	v1,344(v0)
    7bec:	50830012 	beql	a0,v1,7c38 <BossMo_Update+0x7c4>
    7bf0:	86580172 	lh	t8,370(s2)
    7bf4:	50a30010 	beql	a1,v1,7c38 <BossMo_Update+0x7c4>
    7bf8:	86580172 	lh	t8,370(s2)
    7bfc:	864e0172 	lh	t6,370(s2)
    7c00:	3c010001 	lui	at,0x1
    7c04:	34211e60 	ori	at,at,0x1e60
    7c08:	15c0000a 	bnez	t6,7c34 <BossMo_Update+0x7c0>
    7c0c:	8fa400bc 	lw	a0,188(sp)
    7c10:	00818021 	addu	s0,a0,at
    7c14:	2651101c 	addiu	s1,s2,4124
    7c18:	02203025 	move	a2,s1
    7c1c:	0c000000 	jal	0 <func_8091BB00>
    7c20:	02002825 	move	a1,s0
    7c24:	8fa400bc 	lw	a0,188(sp)
    7c28:	02002825 	move	a1,s0
    7c2c:	0c000000 	jal	0 <func_8091BB00>
    7c30:	02203025 	move	a2,s1
    7c34:	86580172 	lh	t8,370(s2)
    7c38:	3c010001 	lui	at,0x1
    7c3c:	34211e60 	ori	at,at,0x1e60
    7c40:	17000004 	bnez	t8,7c54 <BossMo_Update+0x7e0>
    7c44:	8fa400bc 	lw	a0,188(sp)
    7c48:	00812821 	addu	a1,a0,at
    7c4c:	0c000000 	jal	0 <func_8091BB00>
    7c50:	2646101c 	addiu	a2,s2,4124
    7c54:	86490162 	lh	t1,354(s2)
    7c58:	864b0164 	lh	t3,356(s2)
    7c5c:	864c0166 	lh	t4,358(s2)
    7c60:	864e0168 	lh	t6,360(s2)
    7c64:	3c053dcc 	lui	a1,0x3dcc
    7c68:	3c063e4c 	lui	a2,0x3e4c
    7c6c:	252a0001 	addiu	t2,t1,1
    7c70:	25790001 	addiu	t9,t3,1
    7c74:	258dfffd 	addiu	t5,t4,-3
    7c78:	25cf0001 	addiu	t7,t6,1
    7c7c:	a64a0162 	sh	t2,354(s2)
    7c80:	a6590164 	sh	t9,356(s2)
    7c84:	a64d0166 	sh	t5,358(s2)
    7c88:	a64f0168 	sh	t7,360(s2)
    7c8c:	34c6cccd 	ori	a2,a2,0xcccd
    7c90:	34a5cccd 	ori	a1,a1,0xcccd
    7c94:	0c000000 	jal	0 <func_8091BB00>
    7c98:	264401c8 	addiu	a0,s2,456
    7c9c:	8fbf0044 	lw	ra,68(sp)
    7ca0:	d7b40020 	ldc1	$f20,32(sp)
    7ca4:	8fb0002c 	lw	s0,44(sp)
    7ca8:	8fb10030 	lw	s1,48(sp)
    7cac:	8fb20034 	lw	s2,52(sp)
    7cb0:	8fb30038 	lw	s3,56(sp)
    7cb4:	8fb4003c 	lw	s4,60(sp)
    7cb8:	8fb50040 	lw	s5,64(sp)
    7cbc:	03e00008 	jr	ra
    7cc0:	27bd00b8 	addiu	sp,sp,184

00007cc4 <func_809237C4>:
    7cc4:	c4e40000 	lwc1	$f4,0(a3)
    7cc8:	8cd8001c 	lw	t8,28(a2)
    7ccc:	00051180 	sll	v0,a1,0x6
    7cd0:	4600218d 	trunc.w.s	$f6,$f4
    7cd4:	0302c821 	addu	t9,t8,v0
    7cd8:	440f3000 	mfc1	t7,$f6
    7cdc:	00000000 	nop
    7ce0:	a72f0030 	sh	t7,48(t9)
    7ce4:	c4e80004 	lwc1	$f8,4(a3)
    7ce8:	8cca001c 	lw	t2,28(a2)
    7cec:	4600428d 	trunc.w.s	$f10,$f8
    7cf0:	01425821 	addu	t3,t2,v0
    7cf4:	44095000 	mfc1	t1,$f10
    7cf8:	00000000 	nop
    7cfc:	a5690032 	sh	t1,50(t3)
    7d00:	c4f00008 	lwc1	$f16,8(a3)
    7d04:	8cce001c 	lw	t6,28(a2)
    7d08:	4600848d 	trunc.w.s	$f18,$f16
    7d0c:	01c2c021 	addu	t8,t6,v0
    7d10:	440d9000 	mfc1	t5,$f18
    7d14:	00000000 	nop
    7d18:	a70d0034 	sh	t5,52(t8)
    7d1c:	848f0158 	lh	t7,344(a0)
    7d20:	29e10006 	slti	at,t7,6
    7d24:	5020000e 	beqzl	at,7d60 <func_809237C4+0x9c>
    7d28:	8ccb001c 	lw	t3,28(a2)
    7d2c:	8cd9001c 	lw	t9,28(a2)
    7d30:	03221821 	addu	v1,t9,v0
    7d34:	8468002e 	lh	t0,46(v1)
    7d38:	c4640038 	lwc1	$f4,56(v1)
    7d3c:	44883000 	mtc1	t0,$f6
    7d40:	00000000 	nop
    7d44:	46803220 	cvt.s.w	$f8,$f6
    7d48:	46082282 	mul.s	$f10,$f4,$f8
    7d4c:	4600540d 	trunc.w.s	$f16,$f10
    7d50:	44098000 	mfc1	t1,$f16
    7d54:	03e00008 	jr	ra
    7d58:	a4690036 	sh	t1,54(v1)
    7d5c:	8ccb001c 	lw	t3,28(a2)
    7d60:	01626021 	addu	t4,t3,v0
    7d64:	a5800036 	sh	zero,54(t4)
    7d68:	03e00008 	jr	ra
    7d6c:	00000000 	nop

00007d70 <func_80923870>:
    7d70:	27bdfed0 	addiu	sp,sp,-304
    7d74:	afb60050 	sw	s6,80(sp)
    7d78:	afb00038 	sw	s0,56(sp)
    7d7c:	00808025 	move	s0,a0
    7d80:	afbf005c 	sw	ra,92(sp)
    7d84:	afbe0058 	sw	s8,88(sp)
    7d88:	afb70054 	sw	s7,84(sp)
    7d8c:	afb5004c 	sw	s5,76(sp)
    7d90:	afb40048 	sw	s4,72(sp)
    7d94:	afb30044 	sw	s3,68(sp)
    7d98:	afb20040 	sw	s2,64(sp)
    7d9c:	afb1003c 	sw	s1,60(sp)
    7da0:	f7ba0030 	sdc1	$f26,48(sp)
    7da4:	f7b80028 	sdc1	$f24,40(sp)
    7da8:	f7b60020 	sdc1	$f22,32(sp)
    7dac:	f7b40018 	sdc1	$f20,24(sp)
    7db0:	00a0b025 	move	s6,a1
    7db4:	8ca40000 	lw	a0,0(a1)
    7db8:	0c000000 	jal	0 <func_8091BB00>
    7dbc:	24050a40 	li	a1,2624
    7dc0:	8ec50000 	lw	a1,0(s6)
    7dc4:	3c060000 	lui	a2,0x0
    7dc8:	0040b825 	move	s7,v0
    7dcc:	24c60000 	addiu	a2,a2,0
    7dd0:	27a400fc 	addiu	a0,sp,252
    7dd4:	240718de 	li	a3,6366
    7dd8:	0c000000 	jal	0 <func_8091BB00>
    7ddc:	00a09825 	move	s3,a1
    7de0:	3c010001 	lui	at,0x1
    7de4:	02c11021 	addu	v0,s6,at
    7de8:	804e0a4e 	lb	t6,2638(v0)
    7dec:	448e2000 	mtc1	t6,$f4
    7df0:	00000000 	nop
    7df4:	468021a0 	cvt.s.w	$f6,$f4
    7df8:	e7a60110 	swc1	$f6,272(sp)
    7dfc:	804f0a4f 	lb	t7,2639(v0)
    7e00:	448f4000 	mtc1	t7,$f8
    7e04:	00000000 	nop
    7e08:	468042a0 	cvt.s.w	$f10,$f8
    7e0c:	e7aa0114 	swc1	$f10,276(sp)
    7e10:	80580a50 	lb	t8,2640(v0)
    7e14:	44988000 	mtc1	t8,$f16
    7e18:	00000000 	nop
    7e1c:	468084a0 	cvt.s.w	$f18,$f16
    7e20:	0c000000 	jal	0 <func_8091BB00>
    7e24:	e7b20118 	swc1	$f18,280(sp)
    7e28:	8e6202d0 	lw	v0,720(s3)
    7e2c:	3c08e700 	lui	t0,0xe700
    7e30:	3c0adb06 	lui	t2,0xdb06
    7e34:	24590008 	addiu	t9,v0,8
    7e38:	ae7902d0 	sw	t9,720(s3)
    7e3c:	ac400004 	sw	zero,4(v0)
    7e40:	ac480000 	sw	t0,0(v0)
    7e44:	8e6202d0 	lw	v0,720(s3)
    7e48:	354a0030 	ori	t2,t2,0x30
    7e4c:	00003825 	move	a3,zero
    7e50:	24490008 	addiu	t1,v0,8
    7e54:	ae6902d0 	sw	t1,720(s3)
    7e58:	ac570004 	sw	s7,4(v0)
    7e5c:	ac4a0000 	sw	t2,0(v0)
    7e60:	8e06002c 	lw	a2,44(s0)
    7e64:	c60e0028 	lwc1	$f14,40(s0)
    7e68:	0c000000 	jal	0 <func_8091BB00>
    7e6c:	c60c0024 	lwc1	$f12,36(s0)
    7e70:	860b00b6 	lh	t3,182(s0)
    7e74:	3c014700 	lui	at,0x4700
    7e78:	44814000 	mtc1	at,$f8
    7e7c:	448b2000 	mtc1	t3,$f4
    7e80:	3c010000 	lui	at,0x0
    7e84:	c4300000 	lwc1	$f16,0(at)
    7e88:	468021a0 	cvt.s.w	$f6,$f4
    7e8c:	24050001 	li	a1,1
    7e90:	46083283 	div.s	$f10,$f6,$f8
    7e94:	46105302 	mul.s	$f12,$f10,$f16
    7e98:	0c000000 	jal	0 <func_8091BB00>
    7e9c:	00000000 	nop
    7ea0:	860c00b4 	lh	t4,180(s0)
    7ea4:	3c014700 	lui	at,0x4700
    7ea8:	44813000 	mtc1	at,$f6
    7eac:	448c9000 	mtc1	t4,$f18
    7eb0:	3c010000 	lui	at,0x0
    7eb4:	c42a0000 	lwc1	$f10,0(at)
    7eb8:	46809120 	cvt.s.w	$f4,$f18
    7ebc:	24050001 	li	a1,1
    7ec0:	46062203 	div.s	$f8,$f4,$f6
    7ec4:	460a4302 	mul.s	$f12,$f8,$f10
    7ec8:	0c000000 	jal	0 <func_8091BB00>
    7ecc:	00000000 	nop
    7ed0:	24040001 	li	a0,1
    7ed4:	240571ac 	li	a1,29100
    7ed8:	0c000000 	jal	0 <func_8091BB00>
    7edc:	2406263a 	li	a2,9786
    7ee0:	3c013f00 	lui	at,0x3f00
    7ee4:	4481d000 	mtc1	at,$f26
    7ee8:	4480c000 	mtc1	zero,$f24
    7eec:	00008825 	move	s1,zero
    7ef0:	3c1ede00 	lui	s8,0xde00
    7ef4:	2a210002 	slti	at,s1,2
    7ef8:	1020000d 	beqz	at,7f30 <func_80923870+0x1c0>
    7efc:	24140001 	li	s4,1
    7f00:	0c000000 	jal	0 <func_8091BB00>
    7f04:	00000000 	nop
    7f08:	4406c000 	mfc1	a2,$f24
    7f0c:	4600c306 	mov.s	$f12,$f24
    7f10:	4600c386 	mov.s	$f14,$f24
    7f14:	0c000000 	jal	0 <func_8091BB00>
    7f18:	24070001 	li	a3,1
    7f1c:	00116880 	sll	t5,s1,0x2
    7f20:	01b16823 	subu	t5,t5,s1
    7f24:	000d6880 	sll	t5,t5,0x2
    7f28:	10000050 	b	806c <func_80923870+0x2fc>
    7f2c:	020d9021 	addu	s2,s0,t5
    7f30:	2a210003 	slti	at,s1,3
    7f34:	14200027 	bnez	at,7fd4 <func_80923870+0x264>
    7f38:	00117080 	sll	t6,s1,0x2
    7f3c:	01d17023 	subu	t6,t6,s1
    7f40:	000e7080 	sll	t6,t6,0x2
    7f44:	020e7821 	addu	t7,s0,t6
    7f48:	4406c000 	mfc1	a2,$f24
    7f4c:	c5ee0694 	lwc1	$f14,1684(t7)
    7f50:	4600c306 	mov.s	$f12,$f24
    7f54:	0c000000 	jal	0 <func_8091BB00>
    7f58:	24070001 	li	a3,1
    7f5c:	0011c080 	sll	t8,s1,0x2
    7f60:	0311c023 	subu	t8,t8,s1
    7f64:	0018c040 	sll	t8,t8,0x1
    7f68:	02181021 	addu	v0,s0,t8
    7f6c:	84590c60 	lh	t9,3168(v0)
    7f70:	3c014700 	lui	at,0x4700
    7f74:	44812000 	mtc1	at,$f4
    7f78:	44998000 	mtc1	t9,$f16
    7f7c:	3c010000 	lui	at,0x0
    7f80:	c4280000 	lwc1	$f8,0(at)
    7f84:	468084a0 	cvt.s.w	$f18,$f16
    7f88:	afa20074 	sw	v0,116(sp)
    7f8c:	24050001 	li	a1,1
    7f90:	46049183 	div.s	$f6,$f18,$f4
    7f94:	46083302 	mul.s	$f12,$f6,$f8
    7f98:	0c000000 	jal	0 <func_8091BB00>
    7f9c:	00000000 	nop
    7fa0:	8fa20074 	lw	v0,116(sp)
    7fa4:	3c014700 	lui	at,0x4700
    7fa8:	44819000 	mtc1	at,$f18
    7fac:	84480c64 	lh	t0,3172(v0)
    7fb0:	3c010000 	lui	at,0x0
    7fb4:	c4260000 	lwc1	$f6,0(at)
    7fb8:	44885000 	mtc1	t0,$f10
    7fbc:	24050001 	li	a1,1
    7fc0:	46805420 	cvt.s.w	$f16,$f10
    7fc4:	46128103 	div.s	$f4,$f16,$f18
    7fc8:	46062302 	mul.s	$f12,$f4,$f6
    7fcc:	0c000000 	jal	0 <func_8091BB00>
    7fd0:	00000000 	nop
    7fd4:	00114880 	sll	t1,s1,0x2
    7fd8:	01314823 	subu	t1,t1,s1
    7fdc:	00094880 	sll	t1,t1,0x2
    7fe0:	0c000000 	jal	0 <func_8091BB00>
    7fe4:	02099021 	addu	s2,s0,t1
    7fe8:	c6480a68 	lwc1	$f8,2664(s2)
    7fec:	c64a087c 	lwc1	$f10,2172(s2)
    7ff0:	c6120050 	lwc1	$f18,80(s0)
    7ff4:	c6440a6c 	lwc1	$f4,2668(s2)
    7ff8:	460a4400 	add.s	$f16,$f8,$f10
    7ffc:	c6460880 	lwc1	$f6,2176(s2)
    8000:	c60a0054 	lwc1	$f10,84(s0)
    8004:	24070001 	li	a3,1
    8008:	46128302 	mul.s	$f12,$f16,$f18
    800c:	46062200 	add.s	$f8,$f4,$f6
    8010:	c6520884 	lwc1	$f18,2180(s2)
    8014:	c6500a70 	lwc1	$f16,2672(s2)
    8018:	c6060058 	lwc1	$f6,88(s0)
    801c:	460a4382 	mul.s	$f14,$f8,$f10
    8020:	46128100 	add.s	$f4,$f16,$f18
    8024:	46062202 	mul.s	$f8,$f4,$f6
    8028:	44064000 	mfc1	a2,$f8
    802c:	0c000000 	jal	0 <func_8091BB00>
    8030:	00000000 	nop
    8034:	860a0172 	lh	t2,370(s0)
    8038:	022a082a 	slt	at,s1,t2
    803c:	5420000c 	bnezl	at,8070 <func_80923870+0x300>
    8040:	860c016a 	lh	t4,362(s0)
    8044:	860b0174 	lh	t3,372(s0)
    8048:	0171082a 	slt	at,t3,s1
    804c:	54200008 	bnezl	at,8070 <func_80923870+0x300>
    8050:	860c016a 	lh	t4,362(s0)
    8054:	c60c01a8 	lwc1	$f12,424(s0)
    8058:	24070001 	li	a3,1
    805c:	44066000 	mfc1	a2,$f12
    8060:	0c000000 	jal	0 <func_8091BB00>
    8064:	46006386 	mov.s	$f14,$f12
    8068:	0000a025 	move	s4,zero
    806c:	860c016a 	lh	t4,362(s0)
    8070:	00116840 	sll	t5,s1,0x1
    8074:	2401012c 	li	at,300
    8078:	018d1023 	subu	v0,t4,t5
    807c:	2442012c 	addiu	v0,v0,300
    8080:	0041001a 	div	zero,v0,at
    8084:	860e0158 	lh	t6,344(s0)
    8088:	00001010 	mfhi	v0
    808c:	00021400 	sll	v0,v0,0x10
    8090:	29c100c8 	slti	at,t6,200
    8094:	10200013 	beqz	at,80e4 <func_80923870+0x374>
    8098:	00021403 	sra	v0,v0,0x10
    809c:	00027880 	sll	t7,v0,0x2
    80a0:	020fc021 	addu	t8,s0,t7
    80a4:	3c013f80 	lui	at,0x3f80
    80a8:	44818000 	mtc1	at,$f16
    80ac:	c70a01f8 	lwc1	$f10,504(t8)
    80b0:	c6040d6c 	lwc1	$f4,3436(s0)
    80b4:	3c01447a 	lui	at,0x447a
    80b8:	46105481 	sub.s	$f18,$f10,$f16
    80bc:	44814000 	mtc1	at,$f8
    80c0:	44818000 	mtc1	at,$f16
    80c4:	24050001 	li	a1,1
    80c8:	46049181 	sub.s	$f6,$f18,$f4
    80cc:	c60401a0 	lwc1	$f4,416(s0)
    80d0:	46083282 	mul.s	$f10,$f6,$f8
    80d4:	46105483 	div.s	$f18,$f10,$f16
    80d8:	46122302 	mul.s	$f12,$f4,$f18
    80dc:	0c000000 	jal	0 <func_8091BB00>
    80e0:	00000000 	nop
    80e4:	3c010000 	lui	at,0x0
    80e8:	c42c0000 	lwc1	$f12,0(at)
    80ec:	0c000000 	jal	0 <func_8091BB00>
    80f0:	24050001 	li	a1,1
    80f4:	3c050000 	lui	a1,0x0
    80f8:	24a50000 	addiu	a1,a1,0
    80fc:	02e02025 	move	a0,s7
    8100:	0c000000 	jal	0 <func_8091BB00>
    8104:	24061934 	li	a2,6452
    8108:	8e6202d0 	lw	v0,720(s3)
    810c:	3c08da38 	lui	t0,0xda38
    8110:	35080003 	ori	t0,t0,0x3
    8114:	24590008 	addiu	t9,v0,8
    8118:	ae7902d0 	sw	t9,720(s3)
    811c:	ac570004 	sw	s7,4(v0)
    8120:	16200006 	bnez	s1,813c <func_80923870+0x3cc>
    8124:	ac480000 	sw	t0,0(v0)
    8128:	26440d70 	addiu	a0,s2,3440
    812c:	26c500e0 	addiu	a1,s6,224
    8130:	27a60110 	addiu	a2,sp,272
    8134:	0c000000 	jal	0 <func_8091BB00>
    8138:	8ec70000 	lw	a3,0(s6)
    813c:	16200009 	bnez	s1,8164 <func_80923870+0x3f4>
    8140:	26550d70 	addiu	s5,s2,3440
    8144:	8e6202d0 	lw	v0,720(s3)
    8148:	3c040600 	lui	a0,0x600
    814c:	24847c00 	addiu	a0,a0,31744
    8150:	24490008 	addiu	t1,v0,8
    8154:	ae6902d0 	sw	t1,720(s3)
    8158:	ac440004 	sw	a0,4(v0)
    815c:	1000000a 	b	8188 <func_80923870+0x418>
    8160:	ac5e0000 	sw	s8,0(v0)
    8164:	8e6202d0 	lw	v0,720(s3)
    8168:	00115880 	sll	t3,s1,0x2
    816c:	3c0c0000 	lui	t4,0x0
    8170:	244a0008 	addiu	t2,v0,8
    8174:	ae6a02d0 	sw	t2,720(s3)
    8178:	018b6021 	addu	t4,t4,t3
    817c:	ac5e0000 	sw	s8,0(v0)
    8180:	8d8c0000 	lw	t4,0(t4)
    8184:	ac4c0004 	sw	t4,4(v0)
    8188:	0c000000 	jal	0 <func_8091BB00>
    818c:	00000000 	nop
    8190:	2a210002 	slti	at,s1,2
    8194:	14200073 	bnez	at,8364 <func_80923870+0x5f4>
    8198:	00000000 	nop
    819c:	12800071 	beqz	s4,8364 <func_80923870+0x5f4>
    81a0:	00000000 	nop
    81a4:	860d017a 	lh	t5,378(s0)
    81a8:	3c140600 	lui	s4,0x600
    81ac:	26940140 	addiu	s4,s4,320
    81b0:	25ae0026 	addiu	t6,t5,38
    81b4:	022e082a 	slt	at,s1,t6
    81b8:	1020006a 	beqz	at,8364 <func_80923870+0x5f4>
    81bc:	3c010001 	lui	at,0x1
    81c0:	86020158 	lh	v0,344(s0)
    81c4:	34211da0 	ori	at,at,0x1da0
    81c8:	02c17821 	addu	t7,s6,at
    81cc:	240100c9 	li	at,201
    81d0:	10410004 	beq	v0,at,81e4 <func_80923870+0x474>
    81d4:	afaf0068 	sw	t7,104(sp)
    81d8:	240100ca 	li	at,202
    81dc:	14410019 	bne	v0,at,8244 <func_80923870+0x4d4>
    81e0:	00000000 	nop
    81e4:	8618015a 	lh	t8,346(s0)
    81e8:	3c01c170 	lui	at,0xc170
    81ec:	44814000 	mtc1	at,$f8
    81f0:	33190003 	andi	t9,t8,0x3
    81f4:	44993000 	mtc1	t9,$f6
    81f8:	00000000 	nop
    81fc:	46803520 	cvt.s.w	$f20,$f6
    8200:	4608a502 	mul.s	$f20,$f20,$f8
    8204:	0c000000 	jal	0 <func_8091BB00>
    8208:	00000000 	nop
    820c:	3c010000 	lui	at,0x0
    8210:	c42a0000 	lwc1	$f10,0(at)
    8214:	3c010000 	lui	at,0x0
    8218:	c4240000 	lwc1	$f4,0(at)
    821c:	460a0402 	mul.s	$f16,$f0,$f10
    8220:	c6060050 	lwc1	$f6,80(s0)
    8224:	3c0142c8 	lui	at,0x42c8
    8228:	44815000 	mtc1	at,$f10
    822c:	46048480 	add.s	$f18,$f16,$f4
    8230:	46069202 	mul.s	$f8,$f18,$f6
    8234:	00000000 	nop
    8238:	460a4582 	mul.s	$f22,$f8,$f10
    823c:	10000010 	b	8280 <func_80923870+0x510>
    8240:	00000000 	nop
    8244:	0c000000 	jal	0 <func_8091BB00>
    8248:	4600c506 	mov.s	$f20,$f24
    824c:	3c010000 	lui	at,0x0
    8250:	c4300000 	lwc1	$f16,0(at)
    8254:	3c010000 	lui	at,0x0
    8258:	c4320000 	lwc1	$f18,0(at)
    825c:	46100102 	mul.s	$f4,$f0,$f16
    8260:	c6080050 	lwc1	$f8,80(s0)
    8264:	3c0142c8 	lui	at,0x42c8
    8268:	44818000 	mtc1	at,$f16
    826c:	46122180 	add.s	$f6,$f4,$f18
    8270:	46083282 	mul.s	$f10,$f6,$f8
    8274:	00000000 	nop
    8278:	46105582 	mul.s	$f22,$f10,$f16
    827c:	00000000 	nop
    8280:	0c000000 	jal	0 <func_8091BB00>
    8284:	00000000 	nop
    8288:	0c000000 	jal	0 <func_8091BB00>
    828c:	00000000 	nop
    8290:	0c000000 	jal	0 <func_8091BB00>
    8294:	e7a00078 	swc1	$f0,120(sp)
    8298:	0c000000 	jal	0 <func_8091BB00>
    829c:	e7a0007c 	swc1	$f0,124(sp)
    82a0:	c7b20078 	lwc1	$f18,120(sp)
    82a4:	3c014120 	lui	at,0x4120
    82a8:	44811000 	mtc1	at,$f2
    82ac:	461a9181 	sub.s	$f6,$f18,$f26
    82b0:	c7aa007c 	lwc1	$f10,124(sp)
    82b4:	c644087c 	lwc1	$f4,2172(s2)
    82b8:	3c014040 	lui	at,0x4040
    82bc:	46023202 	mul.s	$f8,$f6,$f2
    82c0:	461a5401 	sub.s	$f16,$f10,$f26
    82c4:	44819000 	mtc1	at,$f18
    82c8:	24070001 	li	a3,1
    82cc:	46082302 	mul.s	$f12,$f4,$f8
    82d0:	461a0201 	sub.s	$f8,$f0,$f26
    82d4:	c6440884 	lwc1	$f4,2180(s2)
    82d8:	46128182 	mul.s	$f6,$f16,$f18
    82dc:	00000000 	nop
    82e0:	46024282 	mul.s	$f10,$f8,$f2
    82e4:	46143380 	add.s	$f14,$f6,$f20
    82e8:	460a2402 	mul.s	$f16,$f4,$f10
    82ec:	44068000 	mfc1	a2,$f16
    82f0:	0c000000 	jal	0 <func_8091BB00>
    82f4:	00000000 	nop
    82f8:	0c000000 	jal	0 <func_8091BB00>
    82fc:	8fa40068 	lw	a0,104(sp)
    8300:	4600b306 	mov.s	$f12,$f22
    8304:	4600b386 	mov.s	$f14,$f22
    8308:	3c063f80 	lui	a2,0x3f80
    830c:	0c000000 	jal	0 <func_8091BB00>
    8310:	24070001 	li	a3,1
    8314:	8e6202c0 	lw	v0,704(s3)
    8318:	3c09da38 	lui	t1,0xda38
    831c:	35290003 	ori	t1,t1,0x3
    8320:	24480008 	addiu	t0,v0,8
    8324:	ae6802c0 	sw	t0,704(s3)
    8328:	ac490000 	sw	t1,0(v0)
    832c:	8ec40000 	lw	a0,0(s6)
    8330:	3c050000 	lui	a1,0x0
    8334:	24a50000 	addiu	a1,a1,0
    8338:	2406196f 	li	a2,6511
    833c:	0c000000 	jal	0 <func_8091BB00>
    8340:	afa200dc 	sw	v0,220(sp)
    8344:	8fa300dc 	lw	v1,220(sp)
    8348:	ac620004 	sw	v0,4(v1)
    834c:	8e6202c0 	lw	v0,704(s3)
    8350:	244a0008 	addiu	t2,v0,8
    8354:	ae6a02c0 	sw	t2,704(s3)
    8358:	ac540004 	sw	s4,4(v0)
    835c:	0c000000 	jal	0 <func_8091BB00>
    8360:	ac5e0000 	sw	s8,0(v0)
    8364:	3c040000 	lui	a0,0x0
    8368:	24840000 	addiu	a0,a0,0
    836c:	0c000000 	jal	0 <func_8091BB00>
    8370:	02a02825 	move	a1,s5
    8374:	24010024 	li	at,36
    8378:	16210004 	bne	s1,at,838c <func_80923870+0x61c>
    837c:	3c040000 	lui	a0,0x0
    8380:	24840000 	addiu	a0,a0,0
    8384:	0c000000 	jal	0 <func_8091BB00>
    8388:	26050038 	addiu	a1,s0,56
    838c:	24010018 	li	at,24
    8390:	16210027 	bne	s1,at,8430 <func_80923870+0x6c0>
    8394:	27ab008c 	addiu	t3,sp,140
    8398:	3c0c0000 	lui	t4,0x0
    839c:	258c0000 	addiu	t4,t4,0
    83a0:	8d8e0000 	lw	t6,0(t4)
    83a4:	8d8d0004 	lw	t5,4(t4)
    83a8:	261201e4 	addiu	s2,s0,484
    83ac:	ad6e0000 	sw	t6,0(t3)
    83b0:	8d8e0008 	lw	t6,8(t4)
    83b4:	ad6d0004 	sw	t5,4(t3)
    83b8:	0c000000 	jal	0 <func_8091BB00>
    83bc:	ad6e0008 	sw	t6,8(t3)
    83c0:	860f0176 	lh	t7,374(s0)
    83c4:	c7b2008c 	lwc1	$f18,140(sp)
    83c8:	3c01bf80 	lui	at,0xbf80
    83cc:	11e00005 	beqz	t7,83e4 <func_80923870+0x674>
    83d0:	27a4008c 	addiu	a0,sp,140
    83d4:	44813000 	mtc1	at,$f6
    83d8:	00000000 	nop
    83dc:	46069202 	mul.s	$f8,$f18,$f6
    83e0:	e7a8008c 	swc1	$f8,140(sp)
    83e4:	0c000000 	jal	0 <func_8091BB00>
    83e8:	02402825 	move	a1,s2
    83ec:	3c010000 	lui	at,0x0
    83f0:	c42c0000 	lwc1	$f12,0(at)
    83f4:	0c000000 	jal	0 <func_8091BB00>
    83f8:	24050001 	li	a1,1
    83fc:	0c000000 	jal	0 <func_8091BB00>
    8400:	27a40098 	addiu	a0,sp,152
    8404:	27a40098 	addiu	a0,sp,152
    8408:	27a50084 	addiu	a1,sp,132
    840c:	0c000000 	jal	0 <func_8091BB00>
    8410:	00003025 	move	a2,zero
    8414:	87b80084 	lh	t8,132(sp)
    8418:	a61801f0 	sh	t8,496(s0)
    841c:	87b90086 	lh	t9,134(sp)
    8420:	a61901f2 	sh	t9,498(s0)
    8424:	87a80088 	lh	t0,136(sp)
    8428:	0c000000 	jal	0 <func_8091BB00>
    842c:	a60801f4 	sh	t0,500(s0)
    8430:	2a210026 	slti	at,s1,38
    8434:	1020000b 	beqz	at,8464 <func_80923870+0x6f4>
    8438:	32290001 	andi	t1,s1,0x1
    843c:	24010001 	li	at,1
    8440:	15210008 	bne	t1,at,8464 <func_80923870+0x6f4>
    8444:	02002025 	move	a0,s0
    8448:	06210003 	bgez	s1,8458 <func_80923870+0x6e8>
    844c:	00112843 	sra	a1,s1,0x1
    8450:	26210001 	addiu	at,s1,1
    8454:	00012843 	sra	a1,at,0x1
    8458:	2606101c 	addiu	a2,s0,4124
    845c:	0c000000 	jal	0 <func_8091BB00>
    8460:	02a03825 	move	a3,s5
    8464:	26310001 	addiu	s1,s1,1
    8468:	00118c00 	sll	s1,s1,0x10
    846c:	00118c03 	sra	s1,s1,0x10
    8470:	2a210029 	slti	at,s1,41
    8474:	1420fe9f 	bnez	at,7ef4 <func_80923870+0x184>
    8478:	26f70040 	addiu	s7,s7,64
    847c:	0c000000 	jal	0 <func_8091BB00>
    8480:	00000000 	nop
    8484:	3c060000 	lui	a2,0x0
    8488:	24c60000 	addiu	a2,a2,0
    848c:	27a400fc 	addiu	a0,sp,252
    8490:	8ec50000 	lw	a1,0(s6)
    8494:	0c000000 	jal	0 <func_8091BB00>
    8498:	240719ab 	li	a3,6571
    849c:	8fbf005c 	lw	ra,92(sp)
    84a0:	d7b40018 	ldc1	$f20,24(sp)
    84a4:	d7b60020 	ldc1	$f22,32(sp)
    84a8:	d7b80028 	ldc1	$f24,40(sp)
    84ac:	d7ba0030 	ldc1	$f26,48(sp)
    84b0:	8fb00038 	lw	s0,56(sp)
    84b4:	8fb1003c 	lw	s1,60(sp)
    84b8:	8fb20040 	lw	s2,64(sp)
    84bc:	8fb30044 	lw	s3,68(sp)
    84c0:	8fb40048 	lw	s4,72(sp)
    84c4:	8fb5004c 	lw	s5,76(sp)
    84c8:	8fb60050 	lw	s6,80(sp)
    84cc:	8fb70054 	lw	s7,84(sp)
    84d0:	8fbe0058 	lw	s8,88(sp)
    84d4:	03e00008 	jr	ra
    84d8:	27bd0130 	addiu	sp,sp,304

000084dc <func_80923FDC>:
    84dc:	27bdff88 	addiu	sp,sp,-120
    84e0:	afbf003c 	sw	ra,60(sp)
    84e4:	afb00038 	sw	s0,56(sp)
    84e8:	afa40078 	sw	a0,120(sp)
    84ec:	afa5007c 	sw	a1,124(sp)
    84f0:	8ca50000 	lw	a1,0(a1)
    84f4:	3c060000 	lui	a2,0x0
    84f8:	24c60000 	addiu	a2,a2,0
    84fc:	27a40060 	addiu	a0,sp,96
    8500:	240719b6 	li	a3,6582
    8504:	0c000000 	jal	0 <func_8091BB00>
    8508:	00a08025 	move	s0,a1
    850c:	0c000000 	jal	0 <func_8091BB00>
    8510:	00000000 	nop
    8514:	8faf007c 	lw	t7,124(sp)
    8518:	0c000000 	jal	0 <func_8091BB00>
    851c:	8de40000 	lw	a0,0(t7)
    8520:	8fb8007c 	lw	t8,124(sp)
    8524:	44806000 	mtc1	zero,$f12
    8528:	00003825 	move	a3,zero
    852c:	8f1907c0 	lw	t9,1984(t8)
    8530:	44066000 	mfc1	a2,$f12
    8534:	8f290028 	lw	t1,40(t9)
    8538:	852a0002 	lh	t2,2(t1)
    853c:	448a2000 	mtc1	t2,$f4
    8540:	0c000000 	jal	0 <func_8091BB00>
    8544:	468023a0 	cvt.s.w	$f14,$f4
    8548:	8e0202d0 	lw	v0,720(s0)
    854c:	8fa80078 	lw	t0,120(sp)
    8550:	3c0cdb06 	lui	t4,0xdb06
    8554:	244b0008 	addiu	t3,v0,8
    8558:	ae0b02d0 	sw	t3,720(s0)
    855c:	358c0034 	ori	t4,t4,0x34
    8560:	ac4c0000 	sw	t4,0(v0)
    8564:	8fad007c 	lw	t5,124(sp)
    8568:	c50a01b0 	lwc1	$f10,432(t0)
    856c:	c50601ac 	lwc1	$f6,428(t0)
    8570:	8da40000 	lw	a0,0(t5)
    8574:	24180020 	li	t8,32
    8578:	24190020 	li	t9,32
    857c:	24090001 	li	t1,1
    8580:	afa90018 	sw	t1,24(sp)
    8584:	afb90014 	sw	t9,20(sp)
    8588:	afb80010 	sw	t8,16(sp)
    858c:	c51201b4 	lwc1	$f18,436(t0)
    8590:	4600320d 	trunc.w.s	$f8,$f6
    8594:	24090020 	li	t1,32
    8598:	240a0020 	li	t2,32
    859c:	4600910d 	trunc.w.s	$f4,$f18
    85a0:	44064000 	mfc1	a2,$f8
    85a4:	00002825 	move	a1,zero
    85a8:	4600540d 	trunc.w.s	$f16,$f10
    85ac:	440b2000 	mfc1	t3,$f4
    85b0:	00063400 	sll	a2,a2,0x10
    85b4:	00063403 	sra	a2,a2,0x10
    85b8:	000b6400 	sll	t4,t3,0x10
    85bc:	000c6c03 	sra	t5,t4,0x10
    85c0:	afad001c 	sw	t5,28(sp)
    85c4:	c50601b8 	lwc1	$f6,440(t0)
    85c8:	44078000 	mfc1	a3,$f16
    85cc:	afaa0028 	sw	t2,40(sp)
    85d0:	4600320d 	trunc.w.s	$f8,$f6
    85d4:	00073c00 	sll	a3,a3,0x10
    85d8:	00073c03 	sra	a3,a3,0x10
    85dc:	afa90024 	sw	t1,36(sp)
    85e0:	440f4000 	mfc1	t7,$f8
    85e4:	afa2005c 	sw	v0,92(sp)
    85e8:	000fc400 	sll	t8,t7,0x10
    85ec:	0018cc03 	sra	t9,t8,0x10
    85f0:	0c000000 	jal	0 <func_8091BB00>
    85f4:	afb90020 	sw	t9,32(sp)
    85f8:	8fa3005c 	lw	v1,92(sp)
    85fc:	3c0ce700 	lui	t4,0xe700
    8600:	3c0efa00 	lui	t6,0xfa00
    8604:	ac620004 	sw	v0,4(v1)
    8608:	8e0202d0 	lw	v0,720(s0)
    860c:	35ceffff 	ori	t6,t6,0xffff
    8610:	3c0f0000 	lui	t7,0x0
    8614:	244b0008 	addiu	t3,v0,8
    8618:	ae0b02d0 	sw	t3,720(s0)
    861c:	ac400004 	sw	zero,4(v0)
    8620:	ac4c0000 	sw	t4,0(v0)
    8624:	8e0202d0 	lw	v0,720(s0)
    8628:	3c01c8ff 	lui	at,0xc8ff
    862c:	3421ff00 	ori	at,at,0xff00
    8630:	244d0008 	addiu	t5,v0,8
    8634:	ae0d02d0 	sw	t5,720(s0)
    8638:	ac4e0000 	sw	t6,0(v0)
    863c:	8def0000 	lw	t7,0(t7)
    8640:	3c0efb00 	lui	t6,0xfb00
    8644:	24070001 	li	a3,1
    8648:	c5ea01c4 	lwc1	$f10,452(t7)
    864c:	3c0f0064 	lui	t7,0x64
    8650:	35efff50 	ori	t7,t7,0xff50
    8654:	4600540d 	trunc.w.s	$f16,$f10
    8658:	440a8000 	mfc1	t2,$f16
    865c:	00000000 	nop
    8660:	314b00ff 	andi	t3,t2,0xff
    8664:	01616025 	or	t4,t3,at
    8668:	ac4c0004 	sw	t4,4(v0)
    866c:	8e0202d0 	lw	v0,720(s0)
    8670:	3c013f00 	lui	at,0x3f00
    8674:	44816000 	mtc1	at,$f12
    8678:	3c013f80 	lui	at,0x3f80
    867c:	244d0008 	addiu	t5,v0,8
    8680:	ae0d02d0 	sw	t5,720(s0)
    8684:	44817000 	mtc1	at,$f14
    8688:	44066000 	mfc1	a2,$f12
    868c:	ac4f0004 	sw	t7,4(v0)
    8690:	0c000000 	jal	0 <func_8091BB00>
    8694:	ac4e0000 	sw	t6,0(v0)
    8698:	8e0202d0 	lw	v0,720(s0)
    869c:	3c19da38 	lui	t9,0xda38
    86a0:	37390003 	ori	t9,t9,0x3
    86a4:	24580008 	addiu	t8,v0,8
    86a8:	ae1802d0 	sw	t8,720(s0)
    86ac:	ac590000 	sw	t9,0(v0)
    86b0:	8fa9007c 	lw	t1,124(sp)
    86b4:	3c050000 	lui	a1,0x0
    86b8:	24a50000 	addiu	a1,a1,0
    86bc:	8d240000 	lw	a0,0(t1)
    86c0:	24061a13 	li	a2,6675
    86c4:	0c000000 	jal	0 <func_8091BB00>
    86c8:	afa2004c 	sw	v0,76(sp)
    86cc:	8fa3004c 	lw	v1,76(sp)
    86d0:	3c0c0600 	lui	t4,0x600
    86d4:	258c4c50 	addiu	t4,t4,19536
    86d8:	ac620004 	sw	v0,4(v1)
    86dc:	8e0202d0 	lw	v0,720(s0)
    86e0:	3c0bde00 	lui	t3,0xde00
    86e4:	244a0008 	addiu	t2,v0,8
    86e8:	ae0a02d0 	sw	t2,720(s0)
    86ec:	ac4c0004 	sw	t4,4(v0)
    86f0:	0c000000 	jal	0 <func_8091BB00>
    86f4:	ac4b0000 	sw	t3,0(v0)
    86f8:	8fad007c 	lw	t5,124(sp)
    86fc:	3c060000 	lui	a2,0x0
    8700:	24c60000 	addiu	a2,a2,0
    8704:	27a40060 	addiu	a0,sp,96
    8708:	24071a18 	li	a3,6680
    870c:	0c000000 	jal	0 <func_8091BB00>
    8710:	8da50000 	lw	a1,0(t5)
    8714:	8fbf003c 	lw	ra,60(sp)
    8718:	8fb00038 	lw	s0,56(sp)
    871c:	27bd0078 	addiu	sp,sp,120
    8720:	03e00008 	jr	ra
    8724:	00000000 	nop

00008728 <func_80924228>:
    8728:	27bdff18 	addiu	sp,sp,-232
    872c:	afbf003c 	sw	ra,60(sp)
    8730:	afb10038 	sw	s1,56(sp)
    8734:	afb00034 	sw	s0,52(sp)
    8738:	afa500ec 	sw	a1,236(sp)
    873c:	8ca50000 	lw	a1,0(a1)
    8740:	00808825 	move	s1,a0
    8744:	3c060000 	lui	a2,0x0
    8748:	24c60000 	addiu	a2,a2,0
    874c:	27a400cc 	addiu	a0,sp,204
    8750:	24071a20 	li	a3,6688
    8754:	0c000000 	jal	0 <func_8091BB00>
    8758:	00a08025 	move	s0,a1
    875c:	8faf00ec 	lw	t7,236(sp)
    8760:	c6280028 	lwc1	$f8,40(s1)
    8764:	02202025 	move	a0,s1
    8768:	8df807c0 	lw	t8,1984(t7)
    876c:	8f190028 	lw	t9,40(t8)
    8770:	872a0002 	lh	t2,2(t9)
    8774:	448a2000 	mtc1	t2,$f4
    8778:	00000000 	nop
    877c:	468021a0 	cvt.s.w	$f6,$f4
    8780:	4608303c 	c.lt.s	$f6,$f8
    8784:	00000000 	nop
    8788:	45020004 	bc1fl	879c <func_80924228+0x74>
    878c:	922b01d1 	lbu	t3,465(s1)
    8790:	0c000000 	jal	0 <func_8091BB00>
    8794:	01e02825 	move	a1,t7
    8798:	922b01d1 	lbu	t3,465(s1)
    879c:	8fac00ec 	lw	t4,236(sp)
    87a0:	51600126 	beqzl	t3,8c3c <func_80924228+0x514>
    87a4:	8fac00ec 	lw	t4,236(sp)
    87a8:	0c000000 	jal	0 <func_8091BB00>
    87ac:	8d840000 	lw	a0,0(t4)
    87b0:	8e0202d0 	lw	v0,720(s0)
    87b4:	3c0edb06 	lui	t6,0xdb06
    87b8:	35ce0020 	ori	t6,t6,0x20
    87bc:	244d0008 	addiu	t5,v0,8
    87c0:	ae0d02d0 	sw	t5,720(s0)
    87c4:	3c190000 	lui	t9,0x0
    87c8:	ac4e0000 	sw	t6,0(v0)
    87cc:	8f390000 	lw	t9,0(t9)
    87d0:	8fb800ec 	lw	t8,236(sp)
    87d4:	240d0020 	li	t5,32
    87d8:	8723015c 	lh	v1,348(t9)
    87dc:	8f040000 	lw	a0,0(t8)
    87e0:	240a0020 	li	t2,32
    87e4:	00030823 	negu	at,v1
    87e8:	00014080 	sll	t0,at,0x2
    87ec:	00033080 	sll	a2,v1,0x2
    87f0:	01014023 	subu	t0,t0,at
    87f4:	240f0020 	li	t7,32
    87f8:	240b0001 	li	t3,1
    87fc:	240c0020 	li	t4,32
    8800:	00c33023 	subu	a2,a2,v1
    8804:	00c03825 	move	a3,a2
    8808:	afac0024 	sw	t4,36(sp)
    880c:	afab0018 	sw	t3,24(sp)
    8810:	afaf0014 	sw	t7,20(sp)
    8814:	afa8001c 	sw	t0,28(sp)
    8818:	afa80020 	sw	t0,32(sp)
    881c:	afaa0010 	sw	t2,16(sp)
    8820:	afad0028 	sw	t5,40(sp)
    8824:	00002825 	move	a1,zero
    8828:	0c000000 	jal	0 <func_8091BB00>
    882c:	afa200c8 	sw	v0,200(sp)
    8830:	8fa900c8 	lw	t1,200(sp)
    8834:	3c18db06 	lui	t8,0xdb06
    8838:	37180024 	ori	t8,t8,0x24
    883c:	ad220004 	sw	v0,4(t1)
    8840:	8e0202d0 	lw	v0,720(s0)
    8844:	3c0a0000 	lui	t2,0x0
    8848:	240f0020 	li	t7,32
    884c:	244e0008 	addiu	t6,v0,8
    8850:	ae0e02d0 	sw	t6,720(s0)
    8854:	ac580000 	sw	t8,0(v0)
    8858:	8d4a0000 	lw	t2,0(t2)
    885c:	8fb900ec 	lw	t9,236(sp)
    8860:	24180020 	li	t8,32
    8864:	8543015c 	lh	v1,348(t2)
    8868:	8f240000 	lw	a0,0(t9)
    886c:	240e0020 	li	t6,32
    8870:	00030823 	negu	at,v1
    8874:	00016880 	sll	t5,at,0x2
    8878:	01a16821 	addu	t5,t5,at
    887c:	000d6840 	sll	t5,t5,0x1
    8880:	240b0020 	li	t3,32
    8884:	240c0001 	li	t4,1
    8888:	00033080 	sll	a2,v1,0x2
    888c:	afac0018 	sw	t4,24(sp)
    8890:	afab0014 	sw	t3,20(sp)
    8894:	afad0020 	sw	t5,32(sp)
    8898:	afae0024 	sw	t6,36(sp)
    889c:	afb80028 	sw	t8,40(sp)
    88a0:	afa0001c 	sw	zero,28(sp)
    88a4:	afaf0010 	sw	t7,16(sp)
    88a8:	00002825 	move	a1,zero
    88ac:	00003825 	move	a3,zero
    88b0:	afa200c4 	sw	v0,196(sp)
    88b4:	0c000000 	jal	0 <func_8091BB00>
    88b8:	00c33021 	addu	a2,a2,v1
    88bc:	8fa800c4 	lw	t0,196(sp)
    88c0:	3c013f00 	lui	at,0x3f00
    88c4:	44812000 	mtc1	at,$f4
    88c8:	ad020004 	sw	v0,4(t0)
    88cc:	8639015a 	lh	t9,346(s1)
    88d0:	24050001 	li	a1,1
    88d4:	44995000 	mtc1	t9,$f10
    88d8:	00000000 	nop
    88dc:	468054a0 	cvt.s.w	$f18,$f10
    88e0:	46049302 	mul.s	$f12,$f18,$f4
    88e4:	0c000000 	jal	0 <func_8091BB00>
    88e8:	00000000 	nop
    88ec:	862a015a 	lh	t2,346(s1)
    88f0:	3c010000 	lui	at,0x0
    88f4:	c42a0000 	lwc1	$f10,0(at)
    88f8:	448a3000 	mtc1	t2,$f6
    88fc:	24050001 	li	a1,1
    8900:	46803220 	cvt.s.w	$f8,$f6
    8904:	460a4302 	mul.s	$f12,$f8,$f10
    8908:	0c000000 	jal	0 <func_8091BB00>
    890c:	00000000 	nop
    8910:	8e0202d0 	lw	v0,720(s0)
    8914:	3c0bda38 	lui	t3,0xda38
    8918:	356b0003 	ori	t3,t3,0x3
    891c:	244f0008 	addiu	t7,v0,8
    8920:	ae0f02d0 	sw	t7,720(s0)
    8924:	ac4b0000 	sw	t3,0(v0)
    8928:	8fac00ec 	lw	t4,236(sp)
    892c:	3c050000 	lui	a1,0x0
    8930:	24a50000 	addiu	a1,a1,0
    8934:	8d840000 	lw	a0,0(t4)
    8938:	24061a4f 	li	a2,6735
    893c:	0c000000 	jal	0 <func_8091BB00>
    8940:	afa200c0 	sw	v0,192(sp)
    8944:	8fa300c0 	lw	v1,192(sp)
    8948:	3c07fa00 	lui	a3,0xfa00
    894c:	34e78080 	ori	a3,a3,0x8080
    8950:	ac620004 	sw	v0,4(v1)
    8954:	8e0202d0 	lw	v0,720(s0)
    8958:	2401ff00 	li	at,-256
    895c:	02202025 	move	a0,s1
    8960:	244d0008 	addiu	t5,v0,8
    8964:	ae0d02d0 	sw	t5,720(s0)
    8968:	ac470000 	sw	a3,0(v0)
    896c:	c63201a4 	lwc1	$f18,420(s1)
    8970:	00003025 	move	a2,zero
    8974:	4600910d 	trunc.w.s	$f4,$f18
    8978:	440a2000 	mfc1	t2,$f4
    897c:	00000000 	nop
    8980:	314f00ff 	andi	t7,t2,0xff
    8984:	01e15825 	or	t3,t7,at
    8988:	ac4b0004 	sw	t3,4(v0)
    898c:	0c000000 	jal	0 <func_8091BB00>
    8990:	8fa500ec 	lw	a1,236(sp)
    8994:	8e0202d0 	lw	v0,720(s0)
    8998:	3c040600 	lui	a0,0x600
    899c:	24846700 	addiu	a0,a0,26368
    89a0:	00047100 	sll	t6,a0,0x4
    89a4:	000ec702 	srl	t8,t6,0x1c
    89a8:	3c060000 	lui	a2,0x0
    89ac:	244c0008 	addiu	t4,v0,8
    89b0:	ae0c02d0 	sw	t4,720(s0)
    89b4:	24c60000 	addiu	a2,a2,0
    89b8:	0018c880 	sll	t9,t8,0x2
    89bc:	3c0dde00 	lui	t5,0xde00
    89c0:	00d95021 	addu	t2,a2,t9
    89c4:	ac4d0000 	sw	t5,0(v0)
    89c8:	8d4f0000 	lw	t7,0(t2)
    89cc:	3c0800ff 	lui	t0,0xff
    89d0:	3508ffff 	ori	t0,t0,0xffff
    89d4:	00885824 	and	t3,a0,t0
    89d8:	3c098000 	lui	t1,0x8000
    89dc:	01eb6021 	addu	t4,t7,t3
    89e0:	01896821 	addu	t5,t4,t1
    89e4:	ac4d0004 	sw	t5,4(v0)
    89e8:	8e0202d0 	lw	v0,720(s0)
    89ec:	3c18e700 	lui	t8,0xe700
    89f0:	3c0f00dc 	lui	t7,0xdc
    89f4:	244e0008 	addiu	t6,v0,8
    89f8:	ae0e02d0 	sw	t6,720(s0)
    89fc:	ac400004 	sw	zero,4(v0)
    8a00:	ac580000 	sw	t8,0(v0)
    8a04:	8e0202d0 	lw	v0,720(s0)
    8a08:	35efff80 	ori	t7,t7,0xff80
    8a0c:	3c0afb00 	lui	t2,0xfb00
    8a10:	24590008 	addiu	t9,v0,8
    8a14:	ae1902d0 	sw	t9,720(s0)
    8a18:	ac4f0004 	sw	t7,4(v0)
    8a1c:	ac4a0000 	sw	t2,0(v0)
    8a20:	862b015e 	lh	t3,350(s1)
    8a24:	3c07fa00 	lui	a3,0xfa00
    8a28:	34e78080 	ori	a3,a3,0x8080
    8a2c:	316c0001 	andi	t4,t3,0x1
    8a30:	11800009 	beqz	t4,8a58 <func_80924228+0x330>
    8a34:	3c0fde00 	lui	t7,0xde00
    8a38:	8e0202d0 	lw	v0,720(s0)
    8a3c:	3c0eff3c 	lui	t6,0xff3c
    8a40:	35ce00ff 	ori	t6,t6,0xff
    8a44:	244d0008 	addiu	t5,v0,8
    8a48:	ae0d02d0 	sw	t5,720(s0)
    8a4c:	ac4e0004 	sw	t6,4(v0)
    8a50:	10000007 	b	8a70 <func_80924228+0x348>
    8a54:	ac470000 	sw	a3,0(v0)
    8a58:	8e0202d0 	lw	v0,720(s0)
    8a5c:	2419ffff 	li	t9,-1
    8a60:	24580008 	addiu	t8,v0,8
    8a64:	ae1802d0 	sw	t8,720(s0)
    8a68:	ac590004 	sw	t9,4(v0)
    8a6c:	ac470000 	sw	a3,0(v0)
    8a70:	8e0202d0 	lw	v0,720(s0)
    8a74:	3c040600 	lui	a0,0x600
    8a78:	24846838 	addiu	a0,a0,26680
    8a7c:	00045900 	sll	t3,a0,0x4
    8a80:	000b6702 	srl	t4,t3,0x1c
    8a84:	244a0008 	addiu	t2,v0,8
    8a88:	ae0a02d0 	sw	t2,720(s0)
    8a8c:	000c6880 	sll	t5,t4,0x2
    8a90:	00cd7021 	addu	t6,a2,t5
    8a94:	ac4f0000 	sw	t7,0(v0)
    8a98:	8dd80000 	lw	t8,0(t6)
    8a9c:	0088c824 	and	t9,a0,t0
    8aa0:	03195021 	addu	t2,t8,t9
    8aa4:	01497821 	addu	t7,t2,t1
    8aa8:	ac4f0004 	sw	t7,4(v0)
    8aac:	862b0166 	lh	t3,358(s1)
    8ab0:	8fac00ec 	lw	t4,236(sp)
    8ab4:	51600009 	beqzl	t3,8adc <func_80924228+0x3b4>
    8ab8:	8d8d07c0 	lw	t5,1984(t4)
    8abc:	c6200028 	lwc1	$f0,40(s1)
    8ac0:	44803000 	mtc1	zero,$f6
    8ac4:	00000000 	nop
    8ac8:	4600303e 	c.le.s	$f6,$f0
    8acc:	00000000 	nop
    8ad0:	4503000d 	bc1tl	8b08 <func_80924228+0x3e0>
    8ad4:	8fb900ec 	lw	t9,236(sp)
    8ad8:	8d8d07c0 	lw	t5,1984(t4)
    8adc:	c6200028 	lwc1	$f0,40(s1)
    8ae0:	8dae0028 	lw	t6,40(t5)
    8ae4:	85d80002 	lh	t8,2(t6)
    8ae8:	44984000 	mtc1	t8,$f8
    8aec:	00000000 	nop
    8af0:	468042a0 	cvt.s.w	$f10,$f8
    8af4:	460a003c 	c.lt.s	$f0,$f10
    8af8:	00000000 	nop
    8afc:	4502004f 	bc1fl	8c3c <func_80924228+0x514>
    8b00:	8fac00ec 	lw	t4,236(sp)
    8b04:	8fb900ec 	lw	t9,236(sp)
    8b08:	3c01c38c 	lui	at,0xc38c
    8b0c:	8fac00ec 	lw	t4,236(sp)
    8b10:	8f2a07c0 	lw	t2,1984(t9)
    8b14:	8d4f0028 	lw	t7,40(t2)
    8b18:	85eb0002 	lh	t3,2(t7)
    8b1c:	448b9000 	mtc1	t3,$f18
    8b20:	00000000 	nop
    8b24:	46809120 	cvt.s.w	$f4,$f18
    8b28:	4604003c 	c.lt.s	$f0,$f4
    8b2c:	00000000 	nop
    8b30:	45020005 	bc1fl	8b48 <func_80924228+0x420>
    8b34:	44807000 	mtc1	zero,$f14
    8b38:	44817000 	mtc1	at,$f14
    8b3c:	10000003 	b	8b4c <func_80924228+0x424>
    8b40:	24050064 	li	a1,100
    8b44:	44807000 	mtc1	zero,$f14
    8b48:	240500a0 	li	a1,160
    8b4c:	8d840000 	lw	a0,0(t4)
    8b50:	e7ae00a0 	swc1	$f14,160(sp)
    8b54:	0c000000 	jal	0 <func_8091BB00>
    8b58:	a7a5009e 	sh	a1,158(sp)
    8b5c:	8e0202d0 	lw	v0,720(s0)
    8b60:	87a5009e 	lh	a1,158(sp)
    8b64:	c7ae00a0 	lwc1	$f14,160(sp)
    8b68:	244d0008 	addiu	t5,v0,8
    8b6c:	ae0d02d0 	sw	t5,720(s0)
    8b70:	3c0efa00 	lui	t6,0xfa00
    8b74:	30b800ff 	andi	t8,a1,0xff
    8b78:	ac580004 	sw	t8,4(v0)
    8b7c:	ac4e0000 	sw	t6,0(v0)
    8b80:	8e26002c 	lw	a2,44(s1)
    8b84:	c62c0024 	lwc1	$f12,36(s1)
    8b88:	0c000000 	jal	0 <func_8091BB00>
    8b8c:	00003825 	move	a3,zero
    8b90:	3c010000 	lui	at,0x0
    8b94:	c42c0000 	lwc1	$f12,0(at)
    8b98:	3c013f80 	lui	at,0x3f80
    8b9c:	44817000 	mtc1	at,$f14
    8ba0:	44066000 	mfc1	a2,$f12
    8ba4:	0c000000 	jal	0 <func_8091BB00>
    8ba8:	24070001 	li	a3,1
    8bac:	8e0202d0 	lw	v0,720(s0)
    8bb0:	3c0ada38 	lui	t2,0xda38
    8bb4:	354a0003 	ori	t2,t2,0x3
    8bb8:	24590008 	addiu	t9,v0,8
    8bbc:	ae1902d0 	sw	t9,720(s0)
    8bc0:	ac4a0000 	sw	t2,0(v0)
    8bc4:	8faf00ec 	lw	t7,236(sp)
    8bc8:	3c050000 	lui	a1,0x0
    8bcc:	24a50000 	addiu	a1,a1,0
    8bd0:	8de40000 	lw	a0,0(t7)
    8bd4:	24061aa4 	li	a2,6820
    8bd8:	0c000000 	jal	0 <func_8091BB00>
    8bdc:	afa20094 	sw	v0,148(sp)
    8be0:	8fa30094 	lw	v1,148(sp)
    8be4:	3c040405 	lui	a0,0x405
    8be8:	24849210 	addiu	a0,a0,-28144
    8bec:	ac620004 	sw	v0,4(v1)
    8bf0:	8e0202d0 	lw	v0,720(s0)
    8bf4:	00046900 	sll	t5,a0,0x4
    8bf8:	000d7702 	srl	t6,t5,0x1c
    8bfc:	244b0008 	addiu	t3,v0,8
    8c00:	ae0b02d0 	sw	t3,720(s0)
    8c04:	000ec080 	sll	t8,t6,0x2
    8c08:	3c0cde00 	lui	t4,0xde00
    8c0c:	3c190000 	lui	t9,0x0
    8c10:	0338c821 	addu	t9,t9,t8
    8c14:	3c0100ff 	lui	at,0xff
    8c18:	ac4c0000 	sw	t4,0(v0)
    8c1c:	8f390000 	lw	t9,0(t9)
    8c20:	3421ffff 	ori	at,at,0xffff
    8c24:	00815024 	and	t2,a0,at
    8c28:	3c018000 	lui	at,0x8000
    8c2c:	032a7821 	addu	t7,t9,t2
    8c30:	01e15821 	addu	t3,t7,at
    8c34:	ac4b0004 	sw	t3,4(v0)
    8c38:	8fac00ec 	lw	t4,236(sp)
    8c3c:	c6260028 	lwc1	$f6,40(s1)
    8c40:	02202025 	move	a0,s1
    8c44:	8d8d07c0 	lw	t5,1984(t4)
    8c48:	8dae0028 	lw	t6,40(t5)
    8c4c:	85d80002 	lh	t8,2(t6)
    8c50:	44984000 	mtc1	t8,$f8
    8c54:	00000000 	nop
    8c58:	468042a0 	cvt.s.w	$f10,$f8
    8c5c:	460a303c 	c.lt.s	$f6,$f10
    8c60:	00000000 	nop
    8c64:	45020004 	bc1fl	8c78 <func_80924228+0x550>
    8c68:	86390f62 	lh	t9,3938(s1)
    8c6c:	0c000000 	jal	0 <func_8091BB00>
    8c70:	01802825 	move	a1,t4
    8c74:	86390f62 	lh	t9,3938(s1)
    8c78:	532000d3 	beqzl	t9,8fc8 <func_80924228+0x8a0>
    8c7c:	8fb800ec 	lw	t8,236(sp)
    8c80:	862a0f60 	lh	t2,3936(s1)
    8c84:	8faf00ec 	lw	t7,236(sp)
    8c88:	29410004 	slti	at,t2,4
    8c8c:	502000ce 	beqzl	at,8fc8 <func_80924228+0x8a0>
    8c90:	8fb800ec 	lw	t8,236(sp)
    8c94:	0c000000 	jal	0 <func_8091BB00>
    8c98:	8de40000 	lw	a0,0(t7)
    8c9c:	8e0202d0 	lw	v0,720(s0)
    8ca0:	3c0dfa00 	lui	t5,0xfa00
    8ca4:	35adffff 	ori	t5,t5,0xffff
    8ca8:	244b0008 	addiu	t3,v0,8
    8cac:	ae0b02d0 	sw	t3,720(s0)
    8cb0:	ac4d0000 	sw	t5,0(v0)
    8cb4:	c6320188 	lwc1	$f18,392(s1)
    8cb8:	3c01c8ff 	lui	at,0xc8ff
    8cbc:	3421ff00 	ori	at,at,0xff00
    8cc0:	4600910d 	trunc.w.s	$f4,$f18
    8cc4:	3c0dfb00 	lui	t5,0xfb00
    8cc8:	3c030000 	lui	v1,0x0
    8ccc:	00002825 	move	a1,zero
    8cd0:	44192000 	mfc1	t9,$f4
    8cd4:	00000000 	nop
    8cd8:	332a00ff 	andi	t2,t9,0xff
    8cdc:	01417825 	or	t7,t2,at
    8ce0:	ac4f0004 	sw	t7,4(v0)
    8ce4:	8e0202d0 	lw	v0,720(s0)
    8ce8:	3c010064 	lui	at,0x64
    8cec:	3421ff00 	ori	at,at,0xff00
    8cf0:	244b0008 	addiu	t3,v0,8
    8cf4:	ae0b02d0 	sw	t3,720(s0)
    8cf8:	ac4d0000 	sw	t5,0(v0)
    8cfc:	c6280188 	lwc1	$f8,392(s1)
    8d00:	3c0ddb06 	lui	t5,0xdb06
    8d04:	35ad0034 	ori	t5,t5,0x34
    8d08:	4600418d 	trunc.w.s	$f6,$f8
    8d0c:	44193000 	mfc1	t9,$f6
    8d10:	00000000 	nop
    8d14:	332a00ff 	andi	t2,t9,0xff
    8d18:	01417825 	or	t7,t2,at
    8d1c:	ac4f0004 	sw	t7,4(v0)
    8d20:	8e0202d0 	lw	v0,720(s0)
    8d24:	240f0001 	li	t7,1
    8d28:	240a0020 	li	t2,32
    8d2c:	244b0008 	addiu	t3,v0,8
    8d30:	ae0b02d0 	sw	t3,720(s0)
    8d34:	ac4d0000 	sw	t5,0(v0)
    8d38:	8c630000 	lw	v1,0(v1)
    8d3c:	8fae00ec 	lw	t6,236(sp)
    8d40:	24190020 	li	t9,32
    8d44:	c46a01ac 	lwc1	$f10,428(v1)
    8d48:	c46401b0 	lwc1	$f4,432(v1)
    8d4c:	8dc40000 	lw	a0,0(t6)
    8d50:	afaf0018 	sw	t7,24(sp)
    8d54:	afaa0014 	sw	t2,20(sp)
    8d58:	afb90010 	sw	t9,16(sp)
    8d5c:	c46601b4 	lwc1	$f6,436(v1)
    8d60:	4600548d 	trunc.w.s	$f18,$f10
    8d64:	240b0020 	li	t3,32
    8d68:	4600328d 	trunc.w.s	$f10,$f6
    8d6c:	44069000 	mfc1	a2,$f18
    8d70:	4600220d 	trunc.w.s	$f8,$f4
    8d74:	440d5000 	mfc1	t5,$f10
    8d78:	00063400 	sll	a2,a2,0x10
    8d7c:	00063403 	sra	a2,a2,0x10
    8d80:	000d7400 	sll	t6,t5,0x10
    8d84:	000ec403 	sra	t8,t6,0x10
    8d88:	afb8001c 	sw	t8,28(sp)
    8d8c:	c47201b8 	lwc1	$f18,440(v1)
    8d90:	44074000 	mfc1	a3,$f8
    8d94:	240d0020 	li	t5,32
    8d98:	4600910d 	trunc.w.s	$f4,$f18
    8d9c:	00073c00 	sll	a3,a3,0x10
    8da0:	00073c03 	sra	a3,a3,0x10
    8da4:	afad0028 	sw	t5,40(sp)
    8da8:	44192000 	mfc1	t9,$f4
    8dac:	afab0024 	sw	t3,36(sp)
    8db0:	afa20054 	sw	v0,84(sp)
    8db4:	00195400 	sll	t2,t9,0x10
    8db8:	000a7c03 	sra	t7,t2,0x10
    8dbc:	0c000000 	jal	0 <func_8091BB00>
    8dc0:	afaf0020 	sw	t7,32(sp)
    8dc4:	8fa80054 	lw	t0,84(sp)
    8dc8:	ad020004 	sw	v0,4(t0)
    8dcc:	c6320f6c 	lwc1	$f18,3948(s1)
    8dd0:	c62a0f78 	lwc1	$f10,3960(s1)
    8dd4:	c6260f68 	lwc1	$f6,3944(s1)
    8dd8:	c6280f74 	lwc1	$f8,3956(s1)
    8ddc:	46125101 	sub.s	$f4,$f10,$f18
    8de0:	46064301 	sub.s	$f12,$f8,$f6
    8de4:	e7a40088 	swc1	$f4,136(sp)
    8de8:	c6260f70 	lwc1	$f6,3952(s1)
    8dec:	c6280f7c 	lwc1	$f8,3964(s1)
    8df0:	e7ac008c 	swc1	$f12,140(sp)
    8df4:	46064381 	sub.s	$f14,$f8,$f6
    8df8:	0c000000 	jal	0 <func_8091BB00>
    8dfc:	e7ae0084 	swc1	$f14,132(sp)
    8e00:	c7b0008c 	lwc1	$f16,140(sp)
    8e04:	c7a20084 	lwc1	$f2,132(sp)
    8e08:	e7a0007c 	swc1	$f0,124(sp)
    8e0c:	46108282 	mul.s	$f10,$f16,$f16
    8e10:	c7ac0088 	lwc1	$f12,136(sp)
    8e14:	46021482 	mul.s	$f18,$f2,$f2
    8e18:	46125000 	add.s	$f0,$f10,$f18
    8e1c:	0c000000 	jal	0 <func_8091BB00>
    8e20:	46000384 	sqrt.s	$f14,$f0
    8e24:	3c014120 	lui	at,0x4120
    8e28:	44804000 	mtc1	zero,$f8
    8e2c:	44803000 	mtc1	zero,$f6
    8e30:	44815000 	mtc1	at,$f10
    8e34:	46000107 	neg.s	$f4,$f0
    8e38:	c7ac007c 	lwc1	$f12,124(sp)
    8e3c:	e7a40078 	swc1	$f4,120(sp)
    8e40:	00002825 	move	a1,zero
    8e44:	e7a8006c 	swc1	$f8,108(sp)
    8e48:	e7a60070 	swc1	$f6,112(sp)
    8e4c:	0c000000 	jal	0 <func_8091BB00>
    8e50:	e7aa0074 	swc1	$f10,116(sp)
    8e54:	c7ac0078 	lwc1	$f12,120(sp)
    8e58:	0c000000 	jal	0 <func_8091BB00>
    8e5c:	24050001 	li	a1,1
    8e60:	27a4006c 	addiu	a0,sp,108
    8e64:	0c000000 	jal	0 <func_8091BB00>
    8e68:	27a50060 	addiu	a1,sp,96
    8e6c:	c6320f68 	lwc1	$f18,3944(s1)
    8e70:	c7a40060 	lwc1	$f4,96(sp)
    8e74:	c62a0f70 	lwc1	$f10,3952(s1)
    8e78:	c6280f6c 	lwc1	$f8,3948(s1)
    8e7c:	46049300 	add.s	$f12,$f18,$f4
    8e80:	c7b20068 	lwc1	$f18,104(sp)
    8e84:	c7a60064 	lwc1	$f6,100(sp)
    8e88:	00003825 	move	a3,zero
    8e8c:	46125080 	add.s	$f2,$f10,$f18
    8e90:	46064380 	add.s	$f14,$f8,$f6
    8e94:	44061000 	mfc1	a2,$f2
    8e98:	0c000000 	jal	0 <func_8091BB00>
    8e9c:	00000000 	nop
    8ea0:	c7ac007c 	lwc1	$f12,124(sp)
    8ea4:	0c000000 	jal	0 <func_8091BB00>
    8ea8:	24050001 	li	a1,1
    8eac:	c7ac0078 	lwc1	$f12,120(sp)
    8eb0:	0c000000 	jal	0 <func_8091BB00>
    8eb4:	24050001 	li	a1,1
    8eb8:	862e015c 	lh	t6,348(s1)
    8ebc:	3c010000 	lui	at,0x0
    8ec0:	c4260000 	lwc1	$f6,0(at)
    8ec4:	448e2000 	mtc1	t6,$f4
    8ec8:	24050001 	li	a1,1
    8ecc:	46802220 	cvt.s.w	$f8,$f4
    8ed0:	46064302 	mul.s	$f12,$f8,$f6
    8ed4:	0c000000 	jal	0 <func_8091BB00>
    8ed8:	46006307 	neg.s	$f12,$f12
    8edc:	8638015c 	lh	t8,348(s1)
    8ee0:	3c010000 	lui	at,0x0
    8ee4:	c4240000 	lwc1	$f4,0(at)
    8ee8:	44985000 	mtc1	t8,$f10
    8eec:	24050001 	li	a1,1
    8ef0:	468054a0 	cvt.s.w	$f18,$f10
    8ef4:	46049302 	mul.s	$f12,$f18,$f4
    8ef8:	0c000000 	jal	0 <func_8091BB00>
    8efc:	00000000 	nop
    8f00:	3c010000 	lui	at,0x0
    8f04:	c42c0000 	lwc1	$f12,0(at)
    8f08:	3c010000 	lui	at,0x0
    8f0c:	c42e0000 	lwc1	$f14,0(at)
    8f10:	44066000 	mfc1	a2,$f12
    8f14:	0c000000 	jal	0 <func_8091BB00>
    8f18:	24070001 	li	a3,1
    8f1c:	862c015c 	lh	t4,348(s1)
    8f20:	3c010000 	lui	at,0x0
    8f24:	c42a0000 	lwc1	$f10,0(at)
    8f28:	448c4000 	mtc1	t4,$f8
    8f2c:	24050001 	li	a1,1
    8f30:	468041a0 	cvt.s.w	$f6,$f8
    8f34:	460a3302 	mul.s	$f12,$f6,$f10
    8f38:	0c000000 	jal	0 <func_8091BB00>
    8f3c:	46006307 	neg.s	$f12,$f12
    8f40:	3c010000 	lui	at,0x0
    8f44:	c42c0000 	lwc1	$f12,0(at)
    8f48:	0c000000 	jal	0 <func_8091BB00>
    8f4c:	24050001 	li	a1,1
    8f50:	3c010000 	lui	at,0x0
    8f54:	c42c0000 	lwc1	$f12,0(at)
    8f58:	3c013f80 	lui	at,0x3f80
    8f5c:	44817000 	mtc1	at,$f14
    8f60:	44066000 	mfc1	a2,$f12
    8f64:	0c000000 	jal	0 <func_8091BB00>
    8f68:	24070001 	li	a3,1
    8f6c:	8e0202d0 	lw	v0,720(s0)
    8f70:	3c0ada38 	lui	t2,0xda38
    8f74:	354a0003 	ori	t2,t2,0x3
    8f78:	24590008 	addiu	t9,v0,8
    8f7c:	ae1902d0 	sw	t9,720(s0)
    8f80:	ac4a0000 	sw	t2,0(v0)
    8f84:	8faf00ec 	lw	t7,236(sp)
    8f88:	3c050000 	lui	a1,0x0
    8f8c:	24a50000 	addiu	a1,a1,0
    8f90:	24061b1d 	li	a2,6941
    8f94:	00408825 	move	s1,v0
    8f98:	0c000000 	jal	0 <func_8091BB00>
    8f9c:	8de40000 	lw	a0,0(t7)
    8fa0:	ae220004 	sw	v0,4(s1)
    8fa4:	8e0202d0 	lw	v0,720(s0)
    8fa8:	3c0e0600 	lui	t6,0x600
    8fac:	25ce4c50 	addiu	t6,t6,19536
    8fb0:	244b0008 	addiu	t3,v0,8
    8fb4:	ae0b02d0 	sw	t3,720(s0)
    8fb8:	3c0dde00 	lui	t5,0xde00
    8fbc:	ac4d0000 	sw	t5,0(v0)
    8fc0:	ac4e0004 	sw	t6,4(v0)
    8fc4:	8fb800ec 	lw	t8,236(sp)
    8fc8:	3c060000 	lui	a2,0x0
    8fcc:	24c60000 	addiu	a2,a2,0
    8fd0:	27a400cc 	addiu	a0,sp,204
    8fd4:	24071b21 	li	a3,6945
    8fd8:	0c000000 	jal	0 <func_8091BB00>
    8fdc:	8f050000 	lw	a1,0(t8)
    8fe0:	8fa500ec 	lw	a1,236(sp)
    8fe4:	3c040001 	lui	a0,0x1
    8fe8:	00852021 	addu	a0,a0,a1
    8fec:	0c000000 	jal	0 <func_8091BB00>
    8ff0:	8c841e10 	lw	a0,7696(a0)
    8ff4:	8fbf003c 	lw	ra,60(sp)
    8ff8:	8fb00034 	lw	s0,52(sp)
    8ffc:	8fb10038 	lw	s1,56(sp)
    9000:	03e00008 	jr	ra
    9004:	27bd00e8 	addiu	sp,sp,232

00009008 <BossMo_Draw>:
    9008:	27bdff80 	addiu	sp,sp,-128
    900c:	afbf003c 	sw	ra,60(sp)
    9010:	afb10038 	sw	s1,56(sp)
    9014:	afb00034 	sw	s0,52(sp)
    9018:	afa50084 	sw	a1,132(sp)
    901c:	8ca50000 	lw	a1,0(a1)
    9020:	00808825 	move	s1,a0
    9024:	3c060000 	lui	a2,0x0
    9028:	24c60000 	addiu	a2,a2,0
    902c:	27a40060 	addiu	a0,sp,96
    9030:	24071b2e 	li	a3,6958
    9034:	0c000000 	jal	0 <func_8091BB00>
    9038:	00a08025 	move	s0,a1
    903c:	8faf0084 	lw	t7,132(sp)
    9040:	0c000000 	jal	0 <func_8091BB00>
    9044:	8de40000 	lw	a0,0(t7)
    9048:	8e0302c0 	lw	v1,704(s0)
    904c:	3c19fa00 	lui	t9,0xfa00
    9050:	3c013fc0 	lui	at,0x3fc0
    9054:	24780008 	addiu	t8,v1,8
    9058:	ae1802c0 	sw	t8,704(s0)
    905c:	ac790000 	sw	t9,0(v1)
    9060:	c62401a4 	lwc1	$f4,420(s1)
    9064:	44813000 	mtc1	at,$f6
    9068:	2401ff00 	li	at,-256
    906c:	3c189696 	lui	t8,0x9696
    9070:	46062202 	mul.s	$f8,$f4,$f6
    9074:	37189600 	ori	t8,t8,0x9600
    9078:	3c0ffb00 	lui	t7,0xfb00
    907c:	4600428d 	trunc.w.s	$f10,$f8
    9080:	440b5000 	mfc1	t3,$f10
    9084:	00000000 	nop
    9088:	316c00ff 	andi	t4,t3,0xff
    908c:	01816825 	or	t5,t4,at
    9090:	ac6d0004 	sw	t5,4(v1)
    9094:	8e0302c0 	lw	v1,704(s0)
    9098:	246e0008 	addiu	t6,v1,8
    909c:	ae0e02c0 	sw	t6,704(s0)
    90a0:	ac780004 	sw	t8,4(v1)
    90a4:	ac6f0000 	sw	t7,0(v1)
    90a8:	8fb90084 	lw	t9,132(sp)
    90ac:	0c000000 	jal	0 <func_8091BB00>
    90b0:	8f240000 	lw	a0,0(t9)
    90b4:	8e0202d0 	lw	v0,720(s0)
    90b8:	3c09db06 	lui	t1,0xdb06
    90bc:	35290020 	ori	t1,t1,0x20
    90c0:	24480008 	addiu	t0,v0,8
    90c4:	ae0802d0 	sw	t0,720(s0)
    90c8:	ac490000 	sw	t1,0(v0)
    90cc:	8faa0084 	lw	t2,132(sp)
    90d0:	86270164 	lh	a3,356(s1)
    90d4:	86260162 	lh	a2,354(s1)
    90d8:	8d440000 	lw	a0,0(t2)
    90dc:	240b0020 	li	t3,32
    90e0:	240c0020 	li	t4,32
    90e4:	240d0001 	li	t5,1
    90e8:	afad0018 	sw	t5,24(sp)
    90ec:	afac0014 	sw	t4,20(sp)
    90f0:	afab0010 	sw	t3,16(sp)
    90f4:	862e0166 	lh	t6,358(s1)
    90f8:	24180020 	li	t8,32
    90fc:	24190020 	li	t9,32
    9100:	afae001c 	sw	t6,28(sp)
    9104:	862f0168 	lh	t7,360(s1)
    9108:	afb90028 	sw	t9,40(sp)
    910c:	afb80024 	sw	t8,36(sp)
    9110:	00002825 	move	a1,zero
    9114:	afa20054 	sw	v0,84(sp)
    9118:	0c000000 	jal	0 <func_8091BB00>
    911c:	afaf0020 	sw	t7,32(sp)
    9120:	8fa30054 	lw	v1,84(sp)
    9124:	3c09fa00 	lui	t1,0xfa00
    9128:	3529ffff 	ori	t1,t1,0xffff
    912c:	ac620004 	sw	v0,4(v1)
    9130:	8e0202d0 	lw	v0,720(s0)
    9134:	3c014140 	lui	at,0x4140
    9138:	44819000 	mtc1	at,$f18
    913c:	24480008 	addiu	t0,v0,8
    9140:	ae0802d0 	sw	t0,720(s0)
    9144:	ac490000 	sw	t1,0(v0)
    9148:	c63001a4 	lwc1	$f16,420(s1)
    914c:	3c014120 	lui	at,0x4120
    9150:	44813000 	mtc1	at,$f6
    9154:	46128102 	mul.s	$f4,$f16,$f18
    9158:	3c01c8ff 	lui	at,0xc8ff
    915c:	3421ff00 	ori	at,at,0xff00
    9160:	3c19fb00 	lui	t9,0xfb00
    9164:	46062203 	div.s	$f8,$f4,$f6
    9168:	4600428d 	trunc.w.s	$f10,$f8
    916c:	440d5000 	mfc1	t5,$f10
    9170:	00000000 	nop
    9174:	31ae00ff 	andi	t6,t5,0xff
    9178:	01c17825 	or	t7,t6,at
    917c:	ac4f0004 	sw	t7,4(v0)
    9180:	8e0202d0 	lw	v0,720(s0)
    9184:	3c010064 	lui	at,0x64
    9188:	3421ff00 	ori	at,at,0xff00
    918c:	24580008 	addiu	t8,v0,8
    9190:	ae1802d0 	sw	t8,720(s0)
    9194:	ac590000 	sw	t9,0(v0)
    9198:	c63001a4 	lwc1	$f16,420(s1)
    919c:	4600848d 	trunc.w.s	$f18,$f16
    91a0:	440b9000 	mfc1	t3,$f18
    91a4:	00000000 	nop
    91a8:	316c00ff 	andi	t4,t3,0xff
    91ac:	01816825 	or	t5,t4,at
    91b0:	ac4d0004 	sw	t5,4(v0)
    91b4:	8624015c 	lh	a0,348(s1)
    91b8:	00800821 	move	at,a0
    91bc:	00042080 	sll	a0,a0,0x2
    91c0:	00812023 	subu	a0,a0,at
    91c4:	00042080 	sll	a0,a0,0x2
    91c8:	00812023 	subu	a0,a0,at
    91cc:	00042200 	sll	a0,a0,0x8
    91d0:	00042400 	sll	a0,a0,0x10
    91d4:	0c000000 	jal	0 <func_8091BB00>
    91d8:	00042403 	sra	a0,a0,0x10
    91dc:	3c0141f0 	lui	at,0x41f0
    91e0:	44812000 	mtc1	at,$f4
    91e4:	8e0202d0 	lw	v0,720(s0)
    91e8:	3c0fd700 	lui	t7,0xd700
    91ec:	46040182 	mul.s	$f6,$f0,$f4
    91f0:	244e0008 	addiu	t6,v0,8
    91f4:	ae0e02d0 	sw	t6,720(s0)
    91f8:	35ef0002 	ori	t7,t7,0x2
    91fc:	ac4f0000 	sw	t7,0(v0)
    9200:	4600320d 	trunc.w.s	$f8,$f6
    9204:	44044000 	mfc1	a0,$f8
    9208:	00000000 	nop
    920c:	00042400 	sll	a0,a0,0x10
    9210:	00042403 	sra	a0,a0,0x10
    9214:	2484015e 	addiu	a0,a0,350
    9218:	3084ffff 	andi	a0,a0,0xffff
    921c:	0004cc00 	sll	t9,a0,0x10
    9220:	03244025 	or	t0,t9,a0
    9224:	ac480004 	sw	t0,4(v0)
    9228:	922901d1 	lbu	t1,465(s1)
    922c:	02202025 	move	a0,s1
    9230:	51200004 	beqzl	t1,9244 <BossMo_Draw+0x23c>
    9234:	8faa0084 	lw	t2,132(sp)
    9238:	0c000000 	jal	0 <func_8091BB00>
    923c:	8fa50084 	lw	a1,132(sp)
    9240:	8faa0084 	lw	t2,132(sp)
    9244:	3c060000 	lui	a2,0x0
    9248:	24c60000 	addiu	a2,a2,0
    924c:	27a40060 	addiu	a0,sp,96
    9250:	24071b6f 	li	a3,7023
    9254:	0c000000 	jal	0 <func_8091BB00>
    9258:	8d450000 	lw	a1,0(t2)
    925c:	8fbf003c 	lw	ra,60(sp)
    9260:	8fb00034 	lw	s0,52(sp)
    9264:	8fb10038 	lw	s1,56(sp)
    9268:	03e00008 	jr	ra
    926c:	27bd0080 	addiu	sp,sp,128

00009270 <func_80924D70>:
    9270:	27bdff40 	addiu	sp,sp,-192
    9274:	afb2004c 	sw	s2,76(sp)
    9278:	f7ba0038 	sdc1	$f26,56(sp)
    927c:	f7b80030 	sdc1	$f24,48(sp)
    9280:	3c0f0000 	lui	t7,0x0
    9284:	afbf005c 	sw	ra,92(sp)
    9288:	afb50058 	sw	s5,88(sp)
    928c:	afb40054 	sw	s4,84(sp)
    9290:	afb30050 	sw	s3,80(sp)
    9294:	afb10048 	sw	s1,72(sp)
    9298:	afb00044 	sw	s0,68(sp)
    929c:	f7b60028 	sdc1	$f22,40(sp)
    92a0:	f7b40020 	sdc1	$f20,32(sp)
    92a4:	afa400c0 	sw	a0,192(sp)
    92a8:	3c010001 	lui	at,0x1
    92ac:	25ef0000 	addiu	t7,t7,0
    92b0:	8df90000 	lw	t9,0(t7)
    92b4:	00a19021 	addu	s2,a1,at
    92b8:	3c01c38c 	lui	at,0xc38c
    92bc:	8e501e10 	lw	s0,7696(s2)
    92c0:	27ae00a0 	addiu	t6,sp,160
    92c4:	4481d000 	mtc1	at,$f26
    92c8:	3c01c1a0 	lui	at,0xc1a0
    92cc:	add90000 	sw	t9,0(t6)
    92d0:	8df90008 	lw	t9,8(t7)
    92d4:	8df80004 	lw	t8,4(t7)
    92d8:	4481c000 	mtc1	at,$f24
    92dc:	3c013f80 	lui	at,0x3f80
    92e0:	4481b000 	mtc1	at,$f22
    92e4:	4480a000 	mtc1	zero,$f20
    92e8:	00a08825 	move	s1,a1
    92ec:	00009825 	move	s3,zero
    92f0:	24140004 	li	s4,4
    92f4:	27b50078 	addiu	s5,sp,120
    92f8:	add90008 	sw	t9,8(t6)
    92fc:	add80004 	sw	t8,4(t6)
    9300:	92080024 	lbu	t0,36(s0)
    9304:	5100018c 	beqzl	t0,9938 <func_80924D70+0x6c8>
    9308:	26730001 	addiu	s3,s3,1
    930c:	92090025 	lbu	t1,37(s0)
    9310:	92020026 	lbu	v0,38(s0)
    9314:	26040030 	addiu	a0,s0,48
    9318:	252a0001 	addiu	t2,t1,1
    931c:	14400017 	bnez	v0,937c <func_80924D70+0x10c>
    9320:	a20a0025 	sb	t2,37(s0)
    9324:	c600000c 	lwc1	$f0,12(s0)
    9328:	c6040000 	lwc1	$f4,0(s0)
    932c:	c6020010 	lwc1	$f2,16(s0)
    9330:	c6080004 	lwc1	$f8,4(s0)
    9334:	c60c0014 	lwc1	$f12,20(s0)
    9338:	c6100008 	lwc1	$f16,8(s0)
    933c:	46002180 	add.s	$f6,$f4,$f0
    9340:	c6040018 	lwc1	$f4,24(s0)
    9344:	46024280 	add.s	$f10,$f8,$f2
    9348:	c608001c 	lwc1	$f8,28(s0)
    934c:	e6060000 	swc1	$f6,0(s0)
    9350:	460c8480 	add.s	$f18,$f16,$f12
    9354:	c6100020 	lwc1	$f16,32(s0)
    9358:	e60a0004 	swc1	$f10,4(s0)
    935c:	46040180 	add.s	$f6,$f0,$f4
    9360:	e6120008 	swc1	$f18,8(s0)
    9364:	46081280 	add.s	$f10,$f2,$f8
    9368:	e606000c 	swc1	$f6,12(s0)
    936c:	46106480 	add.s	$f18,$f12,$f16
    9370:	e60a0010 	swc1	$f10,16(s0)
    9374:	10000003 	b	9384 <func_80924D70+0x114>
    9378:	e6120014 	swc1	$f18,20(s0)
    937c:	244bffff 	addiu	t3,v0,-1
    9380:	a20b0026 	sb	t3,38(s0)
    9384:	92020024 	lbu	v0,36(s0)
    9388:	3c063e4c 	lui	a2,0x3e4c
    938c:	8fac00c0 	lw	t4,192(sp)
    9390:	28410003 	slti	at,v0,3
    9394:	10200028 	beqz	at,9438 <func_80924D70+0x1c8>
    9398:	34c6cccd 	ori	a2,a2,0xcccd
    939c:	858d0f60 	lh	t5,3936(t4)
    93a0:	29a10064 	slti	at,t5,100
    93a4:	54200009 	bnezl	at,93cc <func_80924D70+0x15c>
    93a8:	8e050034 	lw	a1,52(s0)
    93ac:	8e2e07c0 	lw	t6,1984(s1)
    93b0:	8dcf0028 	lw	t7,40(t6)
    93b4:	85f80002 	lh	t8,2(t7)
    93b8:	44982000 	mtc1	t8,$f4
    93bc:	00000000 	nop
    93c0:	468021a0 	cvt.s.w	$f6,$f4
    93c4:	e6060004 	swc1	$f6,4(s0)
    93c8:	8e050034 	lw	a1,52(s0)
    93cc:	0c000000 	jal	0 <func_8091BB00>
    93d0:	8e070038 	lw	a3,56(s0)
    93d4:	8619002c 	lh	t9,44(s0)
    93d8:	5720000f 	bnezl	t9,9418 <func_80924D70+0x1a8>
    93dc:	860d002a 	lh	t5,42(s0)
    93e0:	8608002a 	lh	t0,42(s0)
    93e4:	8602002e 	lh	v0,46(s0)
    93e8:	2509000f 	addiu	t1,t0,15
    93ec:	a609002a 	sh	t1,42(s0)
    93f0:	860a002a 	lh	t2,42(s0)
    93f4:	0142082a 	slt	at,t2,v0
    93f8:	5420014f 	bnezl	at,9938 <func_80924D70+0x6c8>
    93fc:	26730001 	addiu	s3,s3,1
    9400:	860b002c 	lh	t3,44(s0)
    9404:	a602002a 	sh	v0,42(s0)
    9408:	256c0001 	addiu	t4,t3,1
    940c:	10000149 	b	9934 <func_80924D70+0x6c4>
    9410:	a60c002c 	sh	t4,44(s0)
    9414:	860d002a 	lh	t5,42(s0)
    9418:	25aefffb 	addiu	t6,t5,-5
    941c:	a60e002a 	sh	t6,42(s0)
    9420:	860f002a 	lh	t7,42(s0)
    9424:	5de00144 	bgtzl	t7,9938 <func_80924D70+0x6c8>
    9428:	26730001 	addiu	s3,s3,1
    942c:	a600002a 	sh	zero,42(s0)
    9430:	10000140 	b	9934 <func_80924D70+0x6c4>
    9434:	a2000024 	sb	zero,36(s0)
    9438:	24010007 	li	at,7
    943c:	5441006c 	bnel	v0,at,95f0 <func_80924D70+0x380>
    9440:	24010003 	li	at,3
    9444:	8e03003c 	lw	v1,60(s0)
    9448:	54600028 	bnezl	v1,94ec <func_80924D70+0x27c>
    944c:	920c0025 	lbu	t4,37(s0)
    9450:	c608001c 	lwc1	$f8,28(s0)
    9454:	3c014000 	lui	at,0x4000
    9458:	4608a03c 	c.lt.s	$f20,$f8
    945c:	00000000 	nop
    9460:	4502000f 	bc1fl	94a0 <func_80924D70+0x230>
    9464:	44812000 	mtc1	at,$f4
    9468:	8e3807c0 	lw	t8,1984(s1)
    946c:	c60a0004 	lwc1	$f10,4(s0)
    9470:	8f190028 	lw	t9,40(t8)
    9474:	87280002 	lh	t0,2(t9)
    9478:	44888000 	mtc1	t0,$f16
    947c:	00000000 	nop
    9480:	468084a0 	cvt.s.w	$f18,$f16
    9484:	460a903e 	c.le.s	$f18,$f10
    9488:	00000000 	nop
    948c:	45020004 	bc1fl	94a0 <func_80924D70+0x230>
    9490:	44812000 	mtc1	at,$f4
    9494:	10000127 	b	9934 <func_80924D70+0x6c4>
    9498:	a2000024 	sb	zero,36(s0)
    949c:	44812000 	mtc1	at,$f4
    94a0:	c6060010 	lwc1	$f6,16(s0)
    94a4:	3c014000 	lui	at,0x4000
    94a8:	4606203c 	c.lt.s	$f4,$f6
    94ac:	00000000 	nop
    94b0:	45020005 	bc1fl	94c8 <func_80924D70+0x258>
    94b4:	8609002a 	lh	t1,42(s0)
    94b8:	44814000 	mtc1	at,$f8
    94bc:	00000000 	nop
    94c0:	e6080010 	swc1	$f8,16(s0)
    94c4:	8609002a 	lh	t1,42(s0)
    94c8:	252affec 	addiu	t2,t1,-20
    94cc:	a60a002a 	sh	t2,42(s0)
    94d0:	860b002a 	lh	t3,42(s0)
    94d4:	5d600118 	bgtzl	t3,9938 <func_80924D70+0x6c8>
    94d8:	26730001 	addiu	s3,s3,1
    94dc:	a600002a 	sh	zero,42(s0)
    94e0:	10000114 	b	9934 <func_80924D70+0x6c4>
    94e4:	a2000024 	sb	zero,36(s0)
    94e8:	920c0025 	lbu	t4,37(s0)
    94ec:	318d0003 	andi	t5,t4,0x3
    94f0:	55a00015 	bnezl	t5,9548 <func_80924D70+0x2d8>
    94f4:	4406b000 	mfc1	a2,$f22
    94f8:	c4700000 	lwc1	$f16,0(v1)
    94fc:	c60a0000 	lwc1	$f10,0(s0)
    9500:	c4720008 	lwc1	$f18,8(v1)
    9504:	c6040008 	lwc1	$f4,8(s0)
    9508:	c6060034 	lwc1	$f6,52(s0)
    950c:	460a8301 	sub.s	$f12,$f16,$f10
    9510:	e7a600a8 	swc1	$f6,168(sp)
    9514:	0c000000 	jal	0 <func_8091BB00>
    9518:	46049381 	sub.s	$f14,$f18,$f4
    951c:	46000306 	mov.s	$f12,$f0
    9520:	0c000000 	jal	0 <func_8091BB00>
    9524:	00002825 	move	a1,zero
    9528:	27a400a0 	addiu	a0,sp,160
    952c:	0c000000 	jal	0 <func_8091BB00>
    9530:	27a50094 	addiu	a1,sp,148
    9534:	c7a80094 	lwc1	$f8,148(sp)
    9538:	e608000c 	swc1	$f8,12(s0)
    953c:	c7b0009c 	lwc1	$f16,156(sp)
    9540:	e6100014 	swc1	$f16,20(s0)
    9544:	4406b000 	mfc1	a2,$f22
    9548:	26040034 	addiu	a0,s0,52
    954c:	3c0540a0 	lui	a1,0x40a0
    9550:	0c000000 	jal	0 <func_8091BB00>
    9554:	3c073f00 	lui	a3,0x3f00
    9558:	920e0025 	lbu	t6,37(s0)
    955c:	29c10015 	slti	at,t6,21
    9560:	54200019 	bnezl	at,95c8 <func_80924D70+0x358>
    9564:	860b002a 	lh	t3,42(s0)
    9568:	860f002a 	lh	t7,42(s0)
    956c:	3c013fc0 	lui	at,0x3fc0
    9570:	44815000 	mtc1	at,$f10
    9574:	25f8ffe2 	addiu	t8,t7,-30
    9578:	a618002a 	sh	t8,42(s0)
    957c:	8619002a 	lh	t9,42(s0)
    9580:	e60a001c 	swc1	$f10,28(s0)
    9584:	5b20000d 	blezl	t9,95bc <func_80924D70+0x34c>
    9588:	a600002a 	sh	zero,42(s0)
    958c:	8e2807c0 	lw	t0,1984(s1)
    9590:	c6120004 	lwc1	$f18,4(s0)
    9594:	8d090028 	lw	t1,40(t0)
    9598:	852a0002 	lh	t2,2(t1)
    959c:	448a2000 	mtc1	t2,$f4
    95a0:	00000000 	nop
    95a4:	468021a0 	cvt.s.w	$f6,$f4
    95a8:	4612303e 	c.le.s	$f6,$f18
    95ac:	00000000 	nop
    95b0:	450200e1 	bc1fl	9938 <func_80924D70+0x6c8>
    95b4:	26730001 	addiu	s3,s3,1
    95b8:	a600002a 	sh	zero,42(s0)
    95bc:	100000dd 	b	9934 <func_80924D70+0x6c4>
    95c0:	a2000024 	sb	zero,36(s0)
    95c4:	860b002a 	lh	t3,42(s0)
    95c8:	240e00ff 	li	t6,255
    95cc:	256c001e 	addiu	t4,t3,30
    95d0:	a60c002a 	sh	t4,42(s0)
    95d4:	860d002a 	lh	t5,42(s0)
    95d8:	29a100ff 	slti	at,t5,255
    95dc:	542000d6 	bnezl	at,9938 <func_80924D70+0x6c8>
    95e0:	26730001 	addiu	s3,s3,1
    95e4:	100000d3 	b	9934 <func_80924D70+0x6c4>
    95e8:	a60e002a 	sh	t6,42(s0)
    95ec:	24010003 	li	at,3
    95f0:	10410007 	beq	v0,at,9610 <func_80924D70+0x3a0>
    95f4:	26040034 	addiu	a0,s0,52
    95f8:	12820005 	beq	s4,v0,9610 <func_80924D70+0x3a0>
    95fc:	24010005 	li	at,5
    9600:	10410003 	beq	v0,at,9610 <func_80924D70+0x3a0>
    9604:	24010006 	li	at,6
    9608:	544100cb 	bnel	v0,at,9938 <func_80924D70+0x6c8>
    960c:	26730001 	addiu	s3,s3,1
    9610:	920f0025 	lbu	t7,37(s0)
    9614:	4406b000 	mfc1	a2,$f22
    9618:	3c014348 	lui	at,0x4348
    961c:	31f80006 	andi	t8,t7,0x6
    9620:	53000006 	beqzl	t8,963c <func_80924D70+0x3cc>
    9624:	44810000 	mtc1	at,$f0
    9628:	3c0142a0 	lui	at,0x42a0
    962c:	44810000 	mtc1	at,$f0
    9630:	10000004 	b	9644 <func_80924D70+0x3d4>
    9634:	44050000 	mfc1	a1,$f0
    9638:	44810000 	mtc1	at,$f0
    963c:	00000000 	nop
    9640:	44050000 	mfc1	a1,$f0
    9644:	0c000000 	jal	0 <func_8091BB00>
    9648:	3c0742a0 	lui	a3,0x42a0
    964c:	92020024 	lbu	v0,36(s0)
    9650:	24010006 	li	at,6
    9654:	26040030 	addiu	a0,s0,48
    9658:	1441000f 	bne	v0,at,9698 <func_80924D70+0x428>
    965c:	3c063dcc 	lui	a2,0x3dcc
    9660:	3c073f19 	lui	a3,0x3f19
    9664:	34e7999a 	ori	a3,a3,0x999a
    9668:	8e050038 	lw	a1,56(s0)
    966c:	0c000000 	jal	0 <func_8091BB00>
    9670:	34c6cccd 	ori	a2,a2,0xcccd
    9674:	8619002a 	lh	t9,42(s0)
    9678:	2728fff1 	addiu	t0,t9,-15
    967c:	a608002a 	sh	t0,42(s0)
    9680:	8609002a 	lh	t1,42(s0)
    9684:	5d2000ac 	bgtzl	t1,9938 <func_80924D70+0x6c8>
    9688:	26730001 	addiu	s3,s3,1
    968c:	a600002a 	sh	zero,42(s0)
    9690:	100000a8 	b	9934 <func_80924D70+0x6c4>
    9694:	a2000024 	sb	zero,36(s0)
    9698:	c6080034 	lwc1	$f8,52(s0)
    969c:	24010005 	li	at,5
    96a0:	26040030 	addiu	a0,s0,48
    96a4:	4600440d 	trunc.w.s	$f16,$f8
    96a8:	3c073ca3 	lui	a3,0x3ca3
    96ac:	440b8000 	mfc1	t3,$f16
    96b0:	1441000c 	bne	v0,at,96e4 <func_80924D70+0x474>
    96b4:	a60b002a 	sh	t3,42(s0)
    96b8:	4405a000 	mfc1	a1,$f20
    96bc:	4406b000 	mfc1	a2,$f22
    96c0:	0c000000 	jal	0 <func_8091BB00>
    96c4:	34e7d70a 	ori	a3,a3,0xd70a
    96c8:	c60a0030 	lwc1	$f10,48(s0)
    96cc:	4614503e 	c.le.s	$f10,$f20
    96d0:	00000000 	nop
    96d4:	45020098 	bc1fl	9938 <func_80924D70+0x6c8>
    96d8:	26730001 	addiu	s3,s3,1
    96dc:	10000095 	b	9934 <func_80924D70+0x6c4>
    96e0:	a2000024 	sb	zero,36(s0)
    96e4:	1682000f 	bne	s4,v0,9724 <func_80924D70+0x4b4>
    96e8:	3c0c0000 	lui	t4,0x0
    96ec:	258c0000 	addiu	t4,t4,0
    96f0:	8d8e0000 	lw	t6,0(t4)
    96f4:	27a70084 	addiu	a3,sp,132
    96f8:	24040005 	li	a0,5
    96fc:	acee0000 	sw	t6,0(a3)
    9700:	8d8d0004 	lw	t5,4(t4)
    9704:	02003025 	move	a2,s0
    9708:	aced0004 	sw	t5,4(a3)
    970c:	8d8e0008 	lw	t6,8(t4)
    9710:	acee0008 	sw	t6,8(a3)
    9714:	c6040030 	lwc1	$f4,48(s0)
    9718:	8e451e10 	lw	a1,7696(s2)
    971c:	0c000000 	jal	0 <func_8091BB00>
    9720:	e7a40010 	swc1	$f4,16(sp)
    9724:	c6120010 	lwc1	$f18,16(s0)
    9728:	24010001 	li	at,1
    972c:	4618903c 	c.lt.s	$f18,$f24
    9730:	00000000 	nop
    9734:	45020004 	bc1fl	9748 <func_80924D70+0x4d8>
    9738:	92020026 	lbu	v0,38(s0)
    973c:	e6180010 	swc1	$f24,16(s0)
    9740:	e614001c 	swc1	$f20,28(s0)
    9744:	92020026 	lbu	v0,38(s0)
    9748:	14400010 	bnez	v0,978c <func_80924D70+0x51c>
    974c:	00000000 	nop
    9750:	3c01c0a0 	lui	at,0xc0a0
    9754:	44814000 	mtc1	at,$f8
    9758:	c6060010 	lwc1	$f6,16(s0)
    975c:	3c063dcc 	lui	a2,0x3dcc
    9760:	34c6cccd 	ori	a2,a2,0xcccd
    9764:	4608303c 	c.lt.s	$f6,$f8
    9768:	26040038 	addiu	a0,s0,56
    976c:	3c0540a0 	lui	a1,0x40a0
    9770:	3c073e19 	lui	a3,0x3e19
    9774:	45020013 	bc1fl	97c4 <func_80924D70+0x554>
    9778:	c6000004 	lwc1	$f0,4(s0)
    977c:	0c000000 	jal	0 <func_8091BB00>
    9780:	34e7999a 	ori	a3,a3,0x999a
    9784:	1000000f 	b	97c4 <func_80924D70+0x554>
    9788:	c6000004 	lwc1	$f0,4(s0)
    978c:	1441000c 	bne	v0,at,97c0 <func_80924D70+0x550>
    9790:	3c014040 	lui	at,0x4040
    9794:	44816000 	mtc1	at,$f12
    9798:	0c000000 	jal	0 <func_8091BB00>
    979c:	00000000 	nop
    97a0:	3c014040 	lui	at,0x4040
    97a4:	44816000 	mtc1	at,$f12
    97a8:	0c000000 	jal	0 <func_8091BB00>
    97ac:	e600000c 	swc1	$f0,12(s0)
    97b0:	3c01bf80 	lui	at,0xbf80
    97b4:	44818000 	mtc1	at,$f16
    97b8:	e6000014 	swc1	$f0,20(s0)
    97bc:	e610001c 	swc1	$f16,28(s0)
    97c0:	c6000004 	lwc1	$f0,4(s0)
    97c4:	461a003e 	c.le.s	$f0,$f26
    97c8:	00000000 	nop
    97cc:	45030010 	bc1tl	9810 <func_80924D70+0x5a0>
    97d0:	461a003e 	c.le.s	$f0,$f26
    97d4:	4616003e 	c.le.s	$f0,$f22
    97d8:	00000000 	nop
    97dc:	45020022 	bc1fl	9868 <func_80924D70+0x5f8>
    97e0:	8e3907c0 	lw	t9,1984(s1)
    97e4:	4600c03e 	c.le.s	$f24,$f0
    97e8:	00000000 	nop
    97ec:	4502001e 	bc1fl	9868 <func_80924D70+0x5f8>
    97f0:	8e3907c0 	lw	t9,1984(s1)
    97f4:	4405a000 	mfc1	a1,$f20
    97f8:	0c000000 	jal	0 <func_8091BB00>
    97fc:	02002025 	move	a0,s0
    9800:	50400019 	beqzl	v0,9868 <func_80924D70+0x5f8>
    9804:	8e3907c0 	lw	t9,1984(s1)
    9808:	c6000004 	lwc1	$f0,4(s0)
    980c:	461a003e 	c.le.s	$f0,$f26
    9810:	e614001c 	swc1	$f20,28(s0)
    9814:	e6140014 	swc1	$f20,20(s0)
    9818:	e6140010 	swc1	$f20,16(s0)
    981c:	45000003 	bc1f	982c <func_80924D70+0x5bc>
    9820:	e614000c 	swc1	$f20,12(s0)
    9824:	10000002 	b	9830 <func_80924D70+0x5c0>
    9828:	e61a0004 	swc1	$f26,4(s0)
    982c:	e6140004 	swc1	$f20,4(s0)
    9830:	3c014170 	lui	at,0x4170
    9834:	44812000 	mtc1	at,$f4
    9838:	c60a0030 	lwc1	$f10,48(s0)
    983c:	240f0006 	li	t7,6
    9840:	24180096 	li	t8,150
    9844:	46045482 	mul.s	$f18,$f10,$f4
    9848:	a20f0024 	sb	t7,36(s0)
    984c:	a618002a 	sh	t8,42(s0)
    9850:	3c010000 	lui	at,0x0
    9854:	c4260000 	lwc1	$f6,0(at)
    9858:	46069202 	mul.s	$f8,$f18,$f6
    985c:	10000035 	b	9934 <func_80924D70+0x6c4>
    9860:	e6080038 	swc1	$f8,56(s0)
    9864:	8e3907c0 	lw	t9,1984(s1)
    9868:	c6040004 	lwc1	$f4,4(s0)
    986c:	8f280028 	lw	t0,40(t9)
    9870:	85090002 	lh	t1,2(t0)
    9874:	44898000 	mtc1	t1,$f16
    9878:	00000000 	nop
    987c:	468082a0 	cvt.s.w	$f10,$f16
    9880:	460a203e 	c.le.s	$f4,$f10
    9884:	00000000 	nop
    9888:	4502002b 	bc1fl	9938 <func_80924D70+0x6c8>
    988c:	26730001 	addiu	s3,s3,1
    9890:	8e0b0000 	lw	t3,0(s0)
    9894:	24180050 	li	t8,80
    9898:	24190122 	li	t9,290
    989c:	aeab0000 	sw	t3,0(s5)
    98a0:	8e0a0004 	lw	t2,4(s0)
    98a4:	24080001 	li	t0,1
    98a8:	02a02825 	move	a1,s5
    98ac:	aeaa0004 	sw	t2,4(s5)
    98b0:	8e0b0008 	lw	t3,8(s0)
    98b4:	240a0122 	li	t2,290
    98b8:	3c064220 	lui	a2,0x4220
    98bc:	aeab0008 	sw	t3,8(s5)
    98c0:	8e2c07c0 	lw	t4,1984(s1)
    98c4:	240b0001 	li	t3,1
    98c8:	3c0742dc 	lui	a3,0x42dc
    98cc:	8d8d0028 	lw	t5,40(t4)
    98d0:	24090050 	li	t1,80
    98d4:	85ae0002 	lh	t6,2(t5)
    98d8:	448e9000 	mtc1	t6,$f18
    98dc:	00000000 	nop
    98e0:	468091a0 	cvt.s.w	$f6,$f18
    98e4:	e7a6007c 	swc1	$f6,124(sp)
    98e8:	920f0024 	lbu	t7,36(s0)
    98ec:	568f000c 	bnel	s4,t7,9920 <func_80924D70+0x6b0>
    98f0:	8e441e10 	lw	a0,7696(s2)
    98f4:	8e441e10 	lw	a0,7696(s2)
    98f8:	afa80018 	sw	t0,24(sp)
    98fc:	afb90014 	sw	t9,20(sp)
    9900:	afb80010 	sw	t8,16(sp)
    9904:	02a02825 	move	a1,s5
    9908:	3c064270 	lui	a2,0x4270
    990c:	0c000000 	jal	0 <func_8091BB00>
    9910:	3c074320 	lui	a3,0x4320
    9914:	10000007 	b	9934 <func_80924D70+0x6c4>
    9918:	a2000024 	sb	zero,36(s0)
    991c:	8e441e10 	lw	a0,7696(s2)
    9920:	afab0018 	sw	t3,24(sp)
    9924:	afaa0014 	sw	t2,20(sp)
    9928:	0c000000 	jal	0 <func_8091BB00>
    992c:	afa90010 	sw	t1,16(sp)
    9930:	a2000024 	sb	zero,36(s0)
    9934:	26730001 	addiu	s3,s3,1
    9938:	00139c00 	sll	s3,s3,0x10
    993c:	00139c03 	sra	s3,s3,0x10
    9940:	2a61012c 	slti	at,s3,300
    9944:	1420fe6e 	bnez	at,9300 <func_80924D70+0x90>
    9948:	26100040 	addiu	s0,s0,64
    994c:	8fbf005c 	lw	ra,92(sp)
    9950:	d7b40020 	ldc1	$f20,32(sp)
    9954:	d7b60028 	ldc1	$f22,40(sp)
    9958:	d7b80030 	ldc1	$f24,48(sp)
    995c:	d7ba0038 	ldc1	$f26,56(sp)
    9960:	8fb00044 	lw	s0,68(sp)
    9964:	8fb10048 	lw	s1,72(sp)
    9968:	8fb2004c 	lw	s2,76(sp)
    996c:	8fb30050 	lw	s3,80(sp)
    9970:	8fb40054 	lw	s4,84(sp)
    9974:	8fb50058 	lw	s5,88(sp)
    9978:	03e00008 	jr	ra
    997c:	27bd00c0 	addiu	sp,sp,192

00009980 <func_80925480>:
    9980:	27bdff10 	addiu	sp,sp,-240
    9984:	afbf004c 	sw	ra,76(sp)
    9988:	afbe0048 	sw	s8,72(sp)
    998c:	afb70044 	sw	s7,68(sp)
    9990:	afb60040 	sw	s6,64(sp)
    9994:	afb5003c 	sw	s5,60(sp)
    9998:	afb40038 	sw	s4,56(sp)
    999c:	afb30034 	sw	s3,52(sp)
    99a0:	afb20030 	sw	s2,48(sp)
    99a4:	afb1002c 	sw	s1,44(sp)
    99a8:	afb00028 	sw	s0,40(sp)
    99ac:	f7b60020 	sdc1	$f22,32(sp)
    99b0:	f7b40018 	sdc1	$f20,24(sp)
    99b4:	afa500f4 	sw	a1,244(sp)
    99b8:	8cb00000 	lw	s0,0(a1)
    99bc:	00808825 	move	s1,a0
    99c0:	afa400e0 	sw	a0,224(sp)
    99c4:	3c060000 	lui	a2,0x0
    99c8:	0000b025 	move	s6,zero
    99cc:	24c60000 	addiu	a2,a2,0
    99d0:	27a400cc 	addiu	a0,sp,204
    99d4:	24071c60 	li	a3,7264
    99d8:	0c000000 	jal	0 <func_8091BB00>
    99dc:	02002825 	move	a1,s0
    99e0:	0c000000 	jal	0 <func_8091BB00>
    99e4:	00000000 	nop
    99e8:	3c013f80 	lui	at,0x3f80
    99ec:	3c170000 	lui	s7,0x0
    99f0:	3c149b9b 	lui	s4,0x9b9b
    99f4:	4481b000 	mtc1	at,$f22
    99f8:	3694ff00 	ori	s4,s4,0xff00
    99fc:	26f70000 	addiu	s7,s7,0
    9a00:	0000a825 	move	s5,zero
    9a04:	3c1ede00 	lui	s8,0xde00
    9a08:	24130002 	li	s3,2
    9a0c:	922f0024 	lbu	t7,36(s1)
    9a10:	3c120402 	lui	s2,0x402
    9a14:	566f0035 	bnel	s3,t7,9aec <func_80925480+0x16c>
    9a18:	26b50001 	addiu	s5,s5,1
    9a1c:	16c0000b 	bnez	s6,9a4c <func_80925480+0xcc>
    9a20:	265254b0 	addiu	s2,s2,21680
    9a24:	0c000000 	jal	0 <func_8091BB00>
    9a28:	02002025 	move	a0,s0
    9a2c:	8e0202d0 	lw	v0,720(s0)
    9a30:	3c19fb00 	lui	t9,0xfb00
    9a34:	26d60001 	addiu	s6,s6,1
    9a38:	24580008 	addiu	t8,v0,8
    9a3c:	ae1802d0 	sw	t8,720(s0)
    9a40:	32d600ff 	andi	s6,s6,0xff
    9a44:	ac540004 	sw	s4,4(v0)
    9a48:	ac590000 	sw	t9,0(v0)
    9a4c:	8e0202d0 	lw	v0,720(s0)
    9a50:	3c09fa00 	lui	t1,0xfa00
    9a54:	2401ff00 	li	at,-256
    9a58:	24480008 	addiu	t0,v0,8
    9a5c:	ae0802d0 	sw	t0,720(s0)
    9a60:	ac490000 	sw	t1,0(v0)
    9a64:	862a002a 	lh	t2,42(s1)
    9a68:	00003825 	move	a3,zero
    9a6c:	314b00ff 	andi	t3,t2,0xff
    9a70:	01616025 	or	t4,t3,at
    9a74:	ac4c0004 	sw	t4,4(v0)
    9a78:	8e260008 	lw	a2,8(s1)
    9a7c:	c62e0004 	lwc1	$f14,4(s1)
    9a80:	0c000000 	jal	0 <func_8091BB00>
    9a84:	c62c0000 	lwc1	$f12,0(s1)
    9a88:	c6340030 	lwc1	$f20,48(s1)
    9a8c:	4600b386 	mov.s	$f14,$f22
    9a90:	24070001 	li	a3,1
    9a94:	4406a000 	mfc1	a2,$f20
    9a98:	0c000000 	jal	0 <func_8091BB00>
    9a9c:	4600a306 	mov.s	$f12,$f20
    9aa0:	8e0202d0 	lw	v0,720(s0)
    9aa4:	3c0eda38 	lui	t6,0xda38
    9aa8:	35ce0003 	ori	t6,t6,0x3
    9aac:	244d0008 	addiu	t5,v0,8
    9ab0:	ae0d02d0 	sw	t5,720(s0)
    9ab4:	ac4e0000 	sw	t6,0(v0)
    9ab8:	02002025 	move	a0,s0
    9abc:	02e02825 	move	a1,s7
    9ac0:	24061c7e 	li	a2,7294
    9ac4:	0c000000 	jal	0 <func_8091BB00>
    9ac8:	afa200c0 	sw	v0,192(sp)
    9acc:	8fa300c0 	lw	v1,192(sp)
    9ad0:	ac620004 	sw	v0,4(v1)
    9ad4:	8e0202d0 	lw	v0,720(s0)
    9ad8:	244f0008 	addiu	t7,v0,8
    9adc:	ae0f02d0 	sw	t7,720(s0)
    9ae0:	ac520004 	sw	s2,4(v0)
    9ae4:	ac5e0000 	sw	s8,0(v0)
    9ae8:	26b50001 	addiu	s5,s5,1
    9aec:	0015ac00 	sll	s5,s5,0x10
    9af0:	0015ac03 	sra	s5,s5,0x10
    9af4:	2aa1012c 	slti	at,s5,300
    9af8:	1420ffc4 	bnez	at,9a0c <func_80925480+0x8c>
    9afc:	26310040 	addiu	s1,s1,64
    9b00:	3c170000 	lui	s7,0x0
    9b04:	0000b025 	move	s6,zero
    9b08:	8fb100e0 	lw	s1,224(sp)
    9b0c:	26f70000 	addiu	s7,s7,0
    9b10:	0000a825 	move	s5,zero
    9b14:	24130001 	li	s3,1
    9b18:	92380024 	lbu	t8,36(s1)
    9b1c:	3c120402 	lui	s2,0x402
    9b20:	56780036 	bnel	s3,t8,9bfc <func_80925480+0x27c>
    9b24:	26b50001 	addiu	s5,s5,1
    9b28:	16c0000c 	bnez	s6,9b5c <func_80925480+0x1dc>
    9b2c:	2652a0b0 	addiu	s2,s2,-24400
    9b30:	8fb900f4 	lw	t9,244(sp)
    9b34:	0c000000 	jal	0 <func_8091BB00>
    9b38:	8f240000 	lw	a0,0(t9)
    9b3c:	8e0202d0 	lw	v0,720(s0)
    9b40:	3c09fb00 	lui	t1,0xfb00
    9b44:	26d60001 	addiu	s6,s6,1
    9b48:	24480008 	addiu	t0,v0,8
    9b4c:	ae0802d0 	sw	t0,720(s0)
    9b50:	32d600ff 	andi	s6,s6,0xff
    9b54:	ac540004 	sw	s4,4(v0)
    9b58:	ac490000 	sw	t1,0(v0)
    9b5c:	8e0202d0 	lw	v0,720(s0)
    9b60:	3c0bfa00 	lui	t3,0xfa00
    9b64:	2401ff00 	li	at,-256
    9b68:	244a0008 	addiu	t2,v0,8
    9b6c:	ae0a02d0 	sw	t2,720(s0)
    9b70:	ac4b0000 	sw	t3,0(v0)
    9b74:	862c002a 	lh	t4,42(s1)
    9b78:	00003825 	move	a3,zero
    9b7c:	318d00ff 	andi	t5,t4,0xff
    9b80:	01a17025 	or	t6,t5,at
    9b84:	ac4e0004 	sw	t6,4(v0)
    9b88:	8e260008 	lw	a2,8(s1)
    9b8c:	c62e0004 	lwc1	$f14,4(s1)
    9b90:	0c000000 	jal	0 <func_8091BB00>
    9b94:	c62c0000 	lwc1	$f12,0(s1)
    9b98:	c6340030 	lwc1	$f20,48(s1)
    9b9c:	4600b386 	mov.s	$f14,$f22
    9ba0:	24070001 	li	a3,1
    9ba4:	4406a000 	mfc1	a2,$f20
    9ba8:	0c000000 	jal	0 <func_8091BB00>
    9bac:	4600a306 	mov.s	$f12,$f20
    9bb0:	8e0202d0 	lw	v0,720(s0)
    9bb4:	3c18da38 	lui	t8,0xda38
    9bb8:	37180003 	ori	t8,t8,0x3
    9bbc:	244f0008 	addiu	t7,v0,8
    9bc0:	ae0f02d0 	sw	t7,720(s0)
    9bc4:	ac580000 	sw	t8,0(v0)
    9bc8:	02002025 	move	a0,s0
    9bcc:	02e02825 	move	a1,s7
    9bd0:	24061ca2 	li	a2,7330
    9bd4:	0c000000 	jal	0 <func_8091BB00>
    9bd8:	afa200b0 	sw	v0,176(sp)
    9bdc:	8fa300b0 	lw	v1,176(sp)
    9be0:	ac620004 	sw	v0,4(v1)
    9be4:	8e0202d0 	lw	v0,720(s0)
    9be8:	24590008 	addiu	t9,v0,8
    9bec:	ae1902d0 	sw	t9,720(s0)
    9bf0:	ac520004 	sw	s2,4(v0)
    9bf4:	ac5e0000 	sw	s8,0(v0)
    9bf8:	26b50001 	addiu	s5,s5,1
    9bfc:	0015ac00 	sll	s5,s5,0x10
    9c00:	0015ac03 	sra	s5,s5,0x10
    9c04:	2aa1012c 	slti	at,s5,300
    9c08:	1420ffc3 	bnez	at,9b18 <func_80925480+0x198>
    9c0c:	26310040 	addiu	s1,s1,64
    9c10:	0000b025 	move	s6,zero
    9c14:	8fb100e0 	lw	s1,224(sp)
    9c18:	0000a825 	move	s5,zero
    9c1c:	92220024 	lbu	v0,36(s1)
    9c20:	24010003 	li	at,3
    9c24:	8fb700f4 	lw	s7,244(sp)
    9c28:	10410005 	beq	v0,at,9c40 <func_80925480+0x2c0>
    9c2c:	3c080600 	lui	t0,0x600
    9c30:	24010004 	li	at,4
    9c34:	10410002 	beq	v0,at,9c40 <func_80925480+0x2c0>
    9c38:	24010005 	li	at,5
    9c3c:	14410066 	bne	v0,at,9dd8 <func_80925480+0x458>
    9c40:	3c010001 	lui	at,0x1
    9c44:	34211da0 	ori	at,at,0x1da0
    9c48:	25080f70 	addiu	t0,t0,3952
    9c4c:	afa80054 	sw	t0,84(sp)
    9c50:	16c0002b 	bnez	s6,9d00 <func_80925480+0x380>
    9c54:	02e1b821 	addu	s7,s7,at
    9c58:	3c020405 	lui	v0,0x405
    9c5c:	24421db0 	addiu	v0,v0,7600
    9c60:	00024900 	sll	t1,v0,0x4
    9c64:	00095702 	srl	t2,t1,0x1c
    9c68:	3c0c0000 	lui	t4,0x0
    9c6c:	3c0100ff 	lui	at,0xff
    9c70:	3421ffff 	ori	at,at,0xffff
    9c74:	258c0000 	addiu	t4,t4,0
    9c78:	000a5880 	sll	t3,t2,0x2
    9c7c:	3c140600 	lui	s4,0x600
    9c80:	26940f20 	addiu	s4,s4,3872
    9c84:	016c9021 	addu	s2,t3,t4
    9c88:	00419824 	and	s3,v0,at
    9c8c:	8e0402d0 	lw	a0,720(s0)
    9c90:	0c000000 	jal	0 <func_8091BB00>
    9c94:	00002825 	move	a1,zero
    9c98:	ae0202d0 	sw	v0,720(s0)
    9c9c:	244d0008 	addiu	t5,v0,8
    9ca0:	3c0edb06 	lui	t6,0xdb06
    9ca4:	35ce0020 	ori	t6,t6,0x20
    9ca8:	ae0d02d0 	sw	t5,720(s0)
    9cac:	ac4e0000 	sw	t6,0(v0)
    9cb0:	8e4f0000 	lw	t7,0(s2)
    9cb4:	3c018000 	lui	at,0x8000
    9cb8:	3c0bfafa 	lui	t3,0xfafa
    9cbc:	01f3c021 	addu	t8,t7,s3
    9cc0:	0301c821 	addu	t9,t8,at
    9cc4:	ac590004 	sw	t9,4(v0)
    9cc8:	8e0202d0 	lw	v0,720(s0)
    9ccc:	356bff00 	ori	t3,t3,0xff00
    9cd0:	3c0afb00 	lui	t2,0xfb00
    9cd4:	24480008 	addiu	t0,v0,8
    9cd8:	ae0802d0 	sw	t0,720(s0)
    9cdc:	ac540004 	sw	s4,4(v0)
    9ce0:	ac5e0000 	sw	s8,0(v0)
    9ce4:	8e0202d0 	lw	v0,720(s0)
    9ce8:	26d60001 	addiu	s6,s6,1
    9cec:	32d600ff 	andi	s6,s6,0xff
    9cf0:	24490008 	addiu	t1,v0,8
    9cf4:	ae0902d0 	sw	t1,720(s0)
    9cf8:	ac4b0004 	sw	t3,4(v0)
    9cfc:	ac4a0000 	sw	t2,0(v0)
    9d00:	8e0202d0 	lw	v0,720(s0)
    9d04:	3c0dfa00 	lui	t5,0xfa00
    9d08:	00003825 	move	a3,zero
    9d0c:	244c0008 	addiu	t4,v0,8
    9d10:	ae0c02d0 	sw	t4,720(s0)
    9d14:	ac4d0000 	sw	t5,0(v0)
    9d18:	c6240034 	lwc1	$f4,52(s1)
    9d1c:	8629002a 	lh	t1,42(s1)
    9d20:	4600218d 	trunc.w.s	$f6,$f4
    9d24:	312a00ff 	andi	t2,t1,0xff
    9d28:	44043000 	mfc1	a0,$f6
    9d2c:	00000000 	nop
    9d30:	00042400 	sll	a0,a0,0x10
    9d34:	00042403 	sra	a0,a0,0x10
    9d38:	308400ff 	andi	a0,a0,0xff
    9d3c:	00047c00 	sll	t7,a0,0x10
    9d40:	0004c600 	sll	t8,a0,0x18
    9d44:	01f8c825 	or	t9,t7,t8
    9d48:	3728ff00 	ori	t0,t9,0xff00
    9d4c:	010a5825 	or	t3,t0,t2
    9d50:	ac4b0004 	sw	t3,4(v0)
    9d54:	8e260008 	lw	a2,8(s1)
    9d58:	c62e0004 	lwc1	$f14,4(s1)
    9d5c:	0c000000 	jal	0 <func_8091BB00>
    9d60:	c62c0000 	lwc1	$f12,0(s1)
    9d64:	0c000000 	jal	0 <func_8091BB00>
    9d68:	02e02025 	move	a0,s7
    9d6c:	c6340030 	lwc1	$f20,48(s1)
    9d70:	c6200038 	lwc1	$f0,56(s1)
    9d74:	4406b000 	mfc1	a2,$f22
    9d78:	24070001 	li	a3,1
    9d7c:	46140382 	mul.s	$f14,$f0,$f20
    9d80:	0c000000 	jal	0 <func_8091BB00>
    9d84:	4600a303 	div.s	$f12,$f20,$f0
    9d88:	8e0202d0 	lw	v0,720(s0)
    9d8c:	3c0dda38 	lui	t5,0xda38
    9d90:	35ad0003 	ori	t5,t5,0x3
    9d94:	244c0008 	addiu	t4,v0,8
    9d98:	ae0c02d0 	sw	t4,720(s0)
    9d9c:	3c050000 	lui	a1,0x0
    9da0:	ac4d0000 	sw	t5,0(v0)
    9da4:	24a50000 	addiu	a1,a1,0
    9da8:	02002025 	move	a0,s0
    9dac:	24061ccd 	li	a2,7373
    9db0:	0c000000 	jal	0 <func_8091BB00>
    9db4:	afa20098 	sw	v0,152(sp)
    9db8:	8fa30098 	lw	v1,152(sp)
    9dbc:	ac620004 	sw	v0,4(v1)
    9dc0:	8e0202d0 	lw	v0,720(s0)
    9dc4:	244e0008 	addiu	t6,v0,8
    9dc8:	ae0e02d0 	sw	t6,720(s0)
    9dcc:	ac5e0000 	sw	s8,0(v0)
    9dd0:	8faf0054 	lw	t7,84(sp)
    9dd4:	ac4f0004 	sw	t7,4(v0)
    9dd8:	26b50001 	addiu	s5,s5,1
    9ddc:	0015ac00 	sll	s5,s5,0x10
    9de0:	0015ac03 	sra	s5,s5,0x10
    9de4:	2aa1012c 	slti	at,s5,300
    9de8:	1420ff8c 	bnez	at,9c1c <func_80925480+0x29c>
    9dec:	26310040 	addiu	s1,s1,64
    9df0:	0000b025 	move	s6,zero
    9df4:	8fb100e0 	lw	s1,224(sp)
    9df8:	0000a825 	move	s5,zero
    9dfc:	92380024 	lbu	t8,36(s1)
    9e00:	24010006 	li	at,6
    9e04:	3c170600 	lui	s7,0x600
    9e08:	5701005f 	bnel	t8,at,9f88 <func_80925480+0x608>
    9e0c:	26b50001 	addiu	s5,s5,1
    9e10:	16c0002a 	bnez	s6,9ebc <func_80925480+0x53c>
    9e14:	26f70fc8 	addiu	s7,s7,4040
    9e18:	3c020405 	lui	v0,0x405
    9e1c:	24421db0 	addiu	v0,v0,7600
    9e20:	0002c900 	sll	t9,v0,0x4
    9e24:	00194f02 	srl	t1,t9,0x1c
    9e28:	3c0a0000 	lui	t2,0x0
    9e2c:	3c0100ff 	lui	at,0xff
    9e30:	3421ffff 	ori	at,at,0xffff
    9e34:	254a0000 	addiu	t2,t2,0
    9e38:	00094080 	sll	t0,t1,0x2
    9e3c:	3c140600 	lui	s4,0x600
    9e40:	26940f20 	addiu	s4,s4,3872
    9e44:	010a9021 	addu	s2,t0,t2
    9e48:	00419824 	and	s3,v0,at
    9e4c:	0c000000 	jal	0 <func_8091BB00>
    9e50:	02002025 	move	a0,s0
    9e54:	8e0202d0 	lw	v0,720(s0)
    9e58:	3c0cdb06 	lui	t4,0xdb06
    9e5c:	358c0020 	ori	t4,t4,0x20
    9e60:	244b0008 	addiu	t3,v0,8
    9e64:	ae0b02d0 	sw	t3,720(s0)
    9e68:	ac4c0000 	sw	t4,0(v0)
    9e6c:	8e4d0000 	lw	t5,0(s2)
    9e70:	3c018000 	lui	at,0x8000
    9e74:	3c09fafa 	lui	t1,0xfafa
    9e78:	01b37021 	addu	t6,t5,s3
    9e7c:	01c17821 	addu	t7,t6,at
    9e80:	ac4f0004 	sw	t7,4(v0)
    9e84:	8e0202d0 	lw	v0,720(s0)
    9e88:	3529ff00 	ori	t1,t1,0xff00
    9e8c:	3c19fb00 	lui	t9,0xfb00
    9e90:	24580008 	addiu	t8,v0,8
    9e94:	ae1802d0 	sw	t8,720(s0)
    9e98:	ac490004 	sw	t1,4(v0)
    9e9c:	ac590000 	sw	t9,0(v0)
    9ea0:	8e0202d0 	lw	v0,720(s0)
    9ea4:	26d60001 	addiu	s6,s6,1
    9ea8:	32d600ff 	andi	s6,s6,0xff
    9eac:	24480008 	addiu	t0,v0,8
    9eb0:	ae0802d0 	sw	t0,720(s0)
    9eb4:	ac540004 	sw	s4,4(v0)
    9eb8:	ac5e0000 	sw	s8,0(v0)
    9ebc:	8e0202d0 	lw	v0,720(s0)
    9ec0:	3c0bfa00 	lui	t3,0xfa00
    9ec4:	00003825 	move	a3,zero
    9ec8:	244a0008 	addiu	t2,v0,8
    9ecc:	ae0a02d0 	sw	t2,720(s0)
    9ed0:	ac4b0000 	sw	t3,0(v0)
    9ed4:	c6280034 	lwc1	$f8,52(s1)
    9ed8:	8639002a 	lh	t9,42(s1)
    9edc:	4600428d 	trunc.w.s	$f10,$f8
    9ee0:	332900ff 	andi	t1,t9,0xff
    9ee4:	44045000 	mfc1	a0,$f10
    9ee8:	00000000 	nop
    9eec:	00042400 	sll	a0,a0,0x10
    9ef0:	00042403 	sra	a0,a0,0x10
    9ef4:	308400ff 	andi	a0,a0,0xff
    9ef8:	00046c00 	sll	t5,a0,0x10
    9efc:	00047600 	sll	t6,a0,0x18
    9f00:	01ae7825 	or	t7,t5,t6
    9f04:	35f8ff00 	ori	t8,t7,0xff00
    9f08:	03094025 	or	t0,t8,t1
    9f0c:	ac480004 	sw	t0,4(v0)
    9f10:	8e260008 	lw	a2,8(s1)
    9f14:	c62e0004 	lwc1	$f14,4(s1)
    9f18:	0c000000 	jal	0 <func_8091BB00>
    9f1c:	c62c0000 	lwc1	$f12,0(s1)
    9f20:	c6340030 	lwc1	$f20,48(s1)
    9f24:	4600b386 	mov.s	$f14,$f22
    9f28:	24070001 	li	a3,1
    9f2c:	4406a000 	mfc1	a2,$f20
    9f30:	0c000000 	jal	0 <func_8091BB00>
    9f34:	4600a306 	mov.s	$f12,$f20
    9f38:	8e0202d0 	lw	v0,720(s0)
    9f3c:	3c0bda38 	lui	t3,0xda38
    9f40:	356b0003 	ori	t3,t3,0x3
    9f44:	244a0008 	addiu	t2,v0,8
    9f48:	ae0a02d0 	sw	t2,720(s0)
    9f4c:	3c050000 	lui	a1,0x0
    9f50:	ac4b0000 	sw	t3,0(v0)
    9f54:	24a50000 	addiu	a1,a1,0
    9f58:	02002025 	move	a0,s0
    9f5c:	24061d11 	li	a2,7441
    9f60:	0c000000 	jal	0 <func_8091BB00>
    9f64:	afa20080 	sw	v0,128(sp)
    9f68:	8fa30080 	lw	v1,128(sp)
    9f6c:	ac620004 	sw	v0,4(v1)
    9f70:	8e0202d0 	lw	v0,720(s0)
    9f74:	244c0008 	addiu	t4,v0,8
    9f78:	ae0c02d0 	sw	t4,720(s0)
    9f7c:	ac570004 	sw	s7,4(v0)
    9f80:	ac5e0000 	sw	s8,0(v0)
    9f84:	26b50001 	addiu	s5,s5,1
    9f88:	0015ac00 	sll	s5,s5,0x10
    9f8c:	0015ac03 	sra	s5,s5,0x10
    9f90:	2aa1012c 	slti	at,s5,300
    9f94:	1420ff99 	bnez	at,9dfc <func_80925480+0x47c>
    9f98:	26310040 	addiu	s1,s1,64
    9f9c:	3c149696 	lui	s4,0x9696
    9fa0:	0000b025 	move	s6,zero
    9fa4:	8fb100e0 	lw	s1,224(sp)
    9fa8:	36949600 	ori	s4,s4,0x9600
    9fac:	0000a825 	move	s5,zero
    9fb0:	24130007 	li	s3,7
    9fb4:	922d0024 	lbu	t5,36(s1)
    9fb8:	3c010001 	lui	at,0x1
    9fbc:	34211da0 	ori	at,at,0x1da0
    9fc0:	166d0039 	bne	s3,t5,a0a8 <func_80925480+0x728>
    9fc4:	8fae00f4 	lw	t6,244(sp)
    9fc8:	3c120600 	lui	s2,0x600
    9fcc:	26520140 	addiu	s2,s2,320
    9fd0:	16c0000b 	bnez	s6,a000 <func_80925480+0x680>
    9fd4:	01c1b821 	addu	s7,t6,at
    9fd8:	0c000000 	jal	0 <func_8091BB00>
    9fdc:	8dc40000 	lw	a0,0(t6)
    9fe0:	8e0202c0 	lw	v0,704(s0)
    9fe4:	3c19fb00 	lui	t9,0xfb00
    9fe8:	26d60001 	addiu	s6,s6,1
    9fec:	244f0008 	addiu	t7,v0,8
    9ff0:	ae0f02c0 	sw	t7,704(s0)
    9ff4:	32d600ff 	andi	s6,s6,0xff
    9ff8:	ac540004 	sw	s4,4(v0)
    9ffc:	ac590000 	sw	t9,0(v0)
    a000:	8e0202c0 	lw	v0,704(s0)
    a004:	3c09fa00 	lui	t1,0xfa00
    a008:	2401ff00 	li	at,-256
    a00c:	24580008 	addiu	t8,v0,8
    a010:	ae1802c0 	sw	t8,704(s0)
    a014:	ac490000 	sw	t1,0(v0)
    a018:	8628002a 	lh	t0,42(s1)
    a01c:	00003825 	move	a3,zero
    a020:	310a00ff 	andi	t2,t0,0xff
    a024:	01415825 	or	t3,t2,at
    a028:	ac4b0004 	sw	t3,4(v0)
    a02c:	8e260008 	lw	a2,8(s1)
    a030:	c62e0004 	lwc1	$f14,4(s1)
    a034:	0c000000 	jal	0 <func_8091BB00>
    a038:	c62c0000 	lwc1	$f12,0(s1)
    a03c:	0c000000 	jal	0 <func_8091BB00>
    a040:	02e02025 	move	a0,s7
    a044:	c6340030 	lwc1	$f20,48(s1)
    a048:	4406b000 	mfc1	a2,$f22
    a04c:	24070001 	li	a3,1
    a050:	4600a306 	mov.s	$f12,$f20
    a054:	0c000000 	jal	0 <func_8091BB00>
    a058:	4600a386 	mov.s	$f14,$f20
    a05c:	8e0202c0 	lw	v0,704(s0)
    a060:	3c0dda38 	lui	t5,0xda38
    a064:	35ad0003 	ori	t5,t5,0x3
    a068:	244c0008 	addiu	t4,v0,8
    a06c:	ae0c02c0 	sw	t4,704(s0)
    a070:	3c050000 	lui	a1,0x0
    a074:	ac4d0000 	sw	t5,0(v0)
    a078:	24a50000 	addiu	a1,a1,0
    a07c:	02002025 	move	a0,s0
    a080:	24061d34 	li	a2,7476
    a084:	0c000000 	jal	0 <func_8091BB00>
    a088:	afa20070 	sw	v0,112(sp)
    a08c:	8fa30070 	lw	v1,112(sp)
    a090:	ac620004 	sw	v0,4(v1)
    a094:	8e0202c0 	lw	v0,704(s0)
    a098:	244e0008 	addiu	t6,v0,8
    a09c:	ae0e02c0 	sw	t6,704(s0)
    a0a0:	ac520004 	sw	s2,4(v0)
    a0a4:	ac5e0000 	sw	s8,0(v0)
    a0a8:	26b50001 	addiu	s5,s5,1
    a0ac:	0015ac00 	sll	s5,s5,0x10
    a0b0:	0015ac03 	sra	s5,s5,0x10
    a0b4:	2aa1012c 	slti	at,s5,300
    a0b8:	1420ffbe 	bnez	at,9fb4 <func_80925480+0x634>
    a0bc:	26310040 	addiu	s1,s1,64
    a0c0:	0c000000 	jal	0 <func_8091BB00>
    a0c4:	00000000 	nop
    a0c8:	3c060000 	lui	a2,0x0
    a0cc:	24c60000 	addiu	a2,a2,0
    a0d0:	27a400cc 	addiu	a0,sp,204
    a0d4:	02002825 	move	a1,s0
    a0d8:	0c000000 	jal	0 <func_8091BB00>
    a0dc:	24071d3a 	li	a3,7482
    a0e0:	8fbf004c 	lw	ra,76(sp)
    a0e4:	d7b40018 	ldc1	$f20,24(sp)
    a0e8:	d7b60020 	ldc1	$f22,32(sp)
    a0ec:	8fb00028 	lw	s0,40(sp)
    a0f0:	8fb1002c 	lw	s1,44(sp)
    a0f4:	8fb20030 	lw	s2,48(sp)
    a0f8:	8fb30034 	lw	s3,52(sp)
    a0fc:	8fb40038 	lw	s4,56(sp)
    a100:	8fb5003c 	lw	s5,60(sp)
    a104:	8fb60040 	lw	s6,64(sp)
    a108:	8fb70044 	lw	s7,68(sp)
    a10c:	8fbe0048 	lw	s8,72(sp)
    a110:	03e00008 	jr	ra
    a114:	27bd00f0 	addiu	sp,sp,240

0000a118 <func_80925C18>:
    a118:	3c020000 	lui	v0,0x0
    a11c:	8c420000 	lw	v0,0(v0)
    a120:	27bdffe8 	addiu	sp,sp,-24
    a124:	afbf0014 	sw	ra,20(sp)
    a128:	84431314 	lh	v1,4884(v0)
    a12c:	3c041001 	lui	a0,0x1001
    a130:	348400ff 	ori	a0,a0,0xff
    a134:	1060000f 	beqz	v1,a174 <func_80925C18+0x5c>
    a138:	246effff 	addiu	t6,v1,-1
    a13c:	0c000000 	jal	0 <func_8091BB00>
    a140:	a44e1314 	sh	t6,4884(v0)
    a144:	3c0f0000 	lui	t7,0x0
    a148:	8def0000 	lw	t7,0(t7)
    a14c:	3c050000 	lui	a1,0x0
    a150:	3c040000 	lui	a0,0x0
    a154:	85f81316 	lh	t8,4886(t7)
    a158:	24840000 	addiu	a0,a0,0
    a15c:	0018c840 	sll	t9,t8,0x1
    a160:	00b92821 	addu	a1,a1,t9
    a164:	0c000000 	jal	0 <func_8091BB00>
    a168:	94a50000 	lhu	a1,0(a1)
    a16c:	3c020000 	lui	v0,0x0
    a170:	8c420000 	lw	v0,0(v0)
    a174:	84481318 	lh	t0,4888(v0)
    a178:	3c090000 	lui	t1,0x0
    a17c:	51000006 	beqzl	t0,a198 <func_80925C18+0x80>
    a180:	8fbf0014 	lw	ra,20(sp)
    a184:	a4401318 	sh	zero,4888(v0)
    a188:	8d290000 	lw	t1,0(t1)
    a18c:	0c000000 	jal	0 <func_8091BB00>
    a190:	9524131a 	lhu	a0,4890(t1)
    a194:	8fbf0014 	lw	ra,20(sp)
    a198:	27bd0018 	addiu	sp,sp,24
    a19c:	03e00008 	jr	ra
    a1a0:	00000000 	nop
	...
