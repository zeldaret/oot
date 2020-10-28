
build/src/overlays/actors/ovl_En_Cow/z_en_cow.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809DEE00>:
       0:	27bdffd8 	addiu	sp,sp,-40
       4:	afb00018 	sw	s0,24(sp)
       8:	00808025 	move	s0,a0
       c:	afbf001c 	sw	ra,28(sp)
      10:	afa5002c 	sw	a1,44(sp)
      14:	0c000000 	jal	0 <func_809DEE00>
      18:	87a4002e 	lh	a0,46(sp)
      1c:	e7a00020 	swc1	$f0,32(sp)
      20:	0c000000 	jal	0 <func_809DEE00>
      24:	87a4002e 	lh	a0,46(sp)
      28:	c7a40020 	lwc1	$f4,32(sp)
      2c:	c6060000 	lwc1	$f6,0(s0)
      30:	c60a0008 	lwc1	$f10,8(s0)
      34:	87a4002e 	lh	a0,46(sp)
      38:	46062202 	mul.s	$f8,$f4,$f6
      3c:	00000000 	nop
      40:	460a0402 	mul.s	$f16,$f0,$f10
      44:	46088480 	add.s	$f18,$f16,$f8
      48:	0c000000 	jal	0 <func_809DEE00>
      4c:	e7b20024 	swc1	$f18,36(sp)
      50:	e7a00020 	swc1	$f0,32(sp)
      54:	0c000000 	jal	0 <func_809DEE00>
      58:	87a4002e 	lh	a0,46(sp)
      5c:	c7a40020 	lwc1	$f4,32(sp)
      60:	c60a0000 	lwc1	$f10,0(s0)
      64:	c6080008 	lwc1	$f8,8(s0)
      68:	46002187 	neg.s	$f6,$f4
      6c:	460a3402 	mul.s	$f16,$f6,$f10
      70:	00000000 	nop
      74:	46080482 	mul.s	$f18,$f0,$f8
      78:	46109100 	add.s	$f4,$f18,$f16
      7c:	e6040008 	swc1	$f4,8(s0)
      80:	c7a60024 	lwc1	$f6,36(sp)
      84:	e6060000 	swc1	$f6,0(s0)
      88:	8fbf001c 	lw	ra,28(sp)
      8c:	8fb00018 	lw	s0,24(sp)
      90:	27bd0028 	addiu	sp,sp,40
      94:	03e00008 	jr	ra
      98:	00000000 	nop

0000009c <func_809DEE9C>:
      9c:	44800000 	mtc1	zero,$f0
      a0:	27bdffd8 	addiu	sp,sp,-40
      a4:	3c0141f0 	lui	at,0x41f0
      a8:	44812000 	mtc1	at,$f4
      ac:	afbf0014 	sw	ra,20(sp)
      b0:	00803025 	move	a2,a0
      b4:	e7a00020 	swc1	$f0,32(sp)
      b8:	e7a0001c 	swc1	$f0,28(sp)
      bc:	e7a40024 	swc1	$f4,36(sp)
      c0:	84c500b6 	lh	a1,182(a2)
      c4:	afa60028 	sw	a2,40(sp)
      c8:	0c000000 	jal	0 <func_809DEE00>
      cc:	27a4001c 	addiu	a0,sp,28
      d0:	8fa60028 	lw	a2,40(sp)
      d4:	c7a8001c 	lwc1	$f8,28(sp)
      d8:	44800000 	mtc1	zero,$f0
      dc:	c4c60024 	lwc1	$f6,36(a2)
      e0:	c4d20028 	lwc1	$f18,40(a2)
      e4:	3c01c1a0 	lui	at,0xc1a0
      e8:	46083280 	add.s	$f10,$f6,$f8
      ec:	c4c6002c 	lwc1	$f6,44(a2)
      f0:	27a4001c 	addiu	a0,sp,28
      f4:	4600910d 	trunc.w.s	$f4,$f18
      f8:	44819000 	mtc1	at,$f18
      fc:	4600540d 	trunc.w.s	$f16,$f10
     100:	44192000 	mfc1	t9,$f4
     104:	440f8000 	mfc1	t7,$f16
     108:	a4d90194 	sh	t9,404(a2)
     10c:	a4cf0192 	sh	t7,402(a2)
     110:	c7a80024 	lwc1	$f8,36(sp)
     114:	46083280 	add.s	$f10,$f6,$f8
     118:	4600540d 	trunc.w.s	$f16,$f10
     11c:	44098000 	mfc1	t1,$f16
     120:	00000000 	nop
     124:	a4c90196 	sh	t1,406(a2)
     128:	e7a0001c 	swc1	$f0,28(sp)
     12c:	e7a00020 	swc1	$f0,32(sp)
     130:	e7b20024 	swc1	$f18,36(sp)
     134:	0c000000 	jal	0 <func_809DEE00>
     138:	84c500b6 	lh	a1,182(a2)
     13c:	8fa60028 	lw	a2,40(sp)
     140:	c7a6001c 	lwc1	$f6,28(sp)
     144:	c4c40024 	lwc1	$f4,36(a2)
     148:	c4d00028 	lwc1	$f16,40(a2)
     14c:	46062200 	add.s	$f8,$f4,$f6
     150:	c4c4002c 	lwc1	$f4,44(a2)
     154:	4600848d 	trunc.w.s	$f18,$f16
     158:	4600428d 	trunc.w.s	$f10,$f8
     15c:	440d9000 	mfc1	t5,$f18
     160:	440b5000 	mfc1	t3,$f10
     164:	a4cd01e0 	sh	t5,480(a2)
     168:	a4cb01de 	sh	t3,478(a2)
     16c:	c7a60024 	lwc1	$f6,36(sp)
     170:	46062200 	add.s	$f8,$f4,$f6
     174:	4600428d 	trunc.w.s	$f10,$f8
     178:	440f5000 	mfc1	t7,$f10
     17c:	00000000 	nop
     180:	a4cf01e2 	sh	t7,482(a2)
     184:	8fbf0014 	lw	ra,20(sp)
     188:	27bd0028 	addiu	sp,sp,40
     18c:	03e00008 	jr	ra
     190:	00000000 	nop

00000194 <func_809DEF94>:
     194:	3c014264 	lui	at,0x4264
     198:	44813000 	mtc1	at,$f6
     19c:	27bdffd8 	addiu	sp,sp,-40
     1a0:	3c01c210 	lui	at,0xc210
     1a4:	44814000 	mtc1	at,$f8
     1a8:	44802000 	mtc1	zero,$f4
     1ac:	afbf0014 	sw	ra,20(sp)
     1b0:	00803025 	move	a2,a0
     1b4:	e7a60020 	swc1	$f6,32(sp)
     1b8:	e7a80024 	swc1	$f8,36(sp)
     1bc:	e7a4001c 	swc1	$f4,28(sp)
     1c0:	84c500b6 	lh	a1,182(a2)
     1c4:	afa60028 	sw	a2,40(sp)
     1c8:	0c000000 	jal	0 <func_809DEE00>
     1cc:	27a4001c 	addiu	a0,sp,28
     1d0:	8fa60028 	lw	a2,40(sp)
     1d4:	c7b0001c 	lwc1	$f16,28(sp)
     1d8:	c4ca0024 	lwc1	$f10,36(a2)
     1dc:	c4c40028 	lwc1	$f4,40(a2)
     1e0:	46105480 	add.s	$f18,$f10,$f16
     1e4:	c4ca002c 	lwc1	$f10,44(a2)
     1e8:	e4d20024 	swc1	$f18,36(a2)
     1ec:	c7a60020 	lwc1	$f6,32(sp)
     1f0:	46062200 	add.s	$f8,$f4,$f6
     1f4:	e4c80028 	swc1	$f8,40(a2)
     1f8:	c7b00024 	lwc1	$f16,36(sp)
     1fc:	46105480 	add.s	$f18,$f10,$f16
     200:	e4d2002c 	swc1	$f18,44(a2)
     204:	8fbf0014 	lw	ra,20(sp)
     208:	27bd0028 	addiu	sp,sp,40
     20c:	03e00008 	jr	ra
     210:	00000000 	nop

00000214 <EnCow_Init>:
     214:	27bdffb0 	addiu	sp,sp,-80
     218:	afb10038 	sw	s1,56(sp)
     21c:	afb00034 	sw	s0,52(sp)
     220:	00808025 	move	s0,a0
     224:	00a08825 	move	s1,a1
     228:	afbf003c 	sw	ra,60(sp)
     22c:	3c060000 	lui	a2,0x0
     230:	24c60000 	addiu	a2,a2,0
     234:	24050000 	li	a1,0
     238:	248400b4 	addiu	a0,a0,180
     23c:	0c000000 	jal	0 <func_809DEE00>
     240:	3c074290 	lui	a3,0x4290
     244:	8602001c 	lh	v0,28(s0)
     248:	02202025 	move	a0,s1
     24c:	260501e4 	addiu	a1,s0,484
     250:	10400006 	beqz	v0,26c <EnCow_Init+0x58>
     254:	3c060000 	lui	a2,0x0
     258:	24010001 	li	at,1
     25c:	1041007f 	beq	v0,at,45c <EnCow_Init+0x248>
     260:	02202025 	move	a0,s1
     264:	100000ee 	b	620 <EnCow_Init+0x40c>
     268:	240b00ff 	li	t3,255
     26c:	260e0228 	addiu	t6,s0,552
     270:	260f024c 	addiu	t7,s0,588
     274:	24180006 	li	t8,6
     278:	afb80018 	sw	t8,24(sp)
     27c:	afaf0014 	sw	t7,20(sp)
     280:	afae0010 	sw	t6,16(sp)
     284:	24c60000 	addiu	a2,a2,0
     288:	00003825 	move	a3,zero
     28c:	0c000000 	jal	0 <func_809DEE00>
     290:	afa50040 	sw	a1,64(sp)
     294:	3c050000 	lui	a1,0x0
     298:	24a50000 	addiu	a1,a1,0
     29c:	0c000000 	jal	0 <func_809DEE00>
     2a0:	8fa40040 	lw	a0,64(sp)
     2a4:	2605014c 	addiu	a1,s0,332
     2a8:	afa50040 	sw	a1,64(sp)
     2ac:	0c000000 	jal	0 <func_809DEE00>
     2b0:	02202025 	move	a0,s1
     2b4:	3c070000 	lui	a3,0x0
     2b8:	8fa50040 	lw	a1,64(sp)
     2bc:	24e70020 	addiu	a3,a3,32
     2c0:	02202025 	move	a0,s1
     2c4:	0c000000 	jal	0 <func_809DEE00>
     2c8:	02003025 	move	a2,s0
     2cc:	26050198 	addiu	a1,s0,408
     2d0:	afa50040 	sw	a1,64(sp)
     2d4:	0c000000 	jal	0 <func_809DEE00>
     2d8:	02202025 	move	a0,s1
     2dc:	3c070000 	lui	a3,0x0
     2e0:	8fa50040 	lw	a1,64(sp)
     2e4:	24e70020 	addiu	a3,a3,32
     2e8:	02202025 	move	a0,s1
     2ec:	0c000000 	jal	0 <func_809DEE00>
     2f0:	02003025 	move	a2,s0
     2f4:	0c000000 	jal	0 <func_809DEE00>
     2f8:	02002025 	move	a0,s0
     2fc:	3c190000 	lui	t9,0x0
     300:	27390000 	addiu	t9,t9,0
     304:	ae19027c 	sw	t9,636(s0)
     308:	862800a4 	lh	t0,164(s1)
     30c:	24010034 	li	at,52
     310:	3c020000 	lui	v0,0x0
     314:	15010010 	bne	t0,at,358 <EnCow_Init+0x144>
     318:	24420000 	addiu	v0,v0,0
     31c:	8c490004 	lw	t1,4(v0)
     320:	51200006 	beqzl	t1,33c <EnCow_Init+0x128>
     324:	944a0ed6 	lhu	t2,3798(v0)
     328:	0c000000 	jal	0 <func_809DEE00>
     32c:	02002025 	move	a0,s0
     330:	100000c2 	b	63c <EnCow_Init+0x428>
     334:	8fbf003c 	lw	ra,60(sp)
     338:	944a0ed6 	lhu	t2,3798(v0)
     33c:	314b4000 	andi	t3,t2,0x4000
     340:	55600006 	bnezl	t3,35c <EnCow_Init+0x148>
     344:	c6040024 	lwc1	$f4,36(s0)
     348:	0c000000 	jal	0 <func_809DEE00>
     34c:	02002025 	move	a0,s0
     350:	100000ba 	b	63c <EnCow_Init+0x428>
     354:	8fbf003c 	lw	ra,60(sp)
     358:	c6040024 	lwc1	$f4,36(s0)
     35c:	240d0001 	li	t5,1
     360:	26241c24 	addiu	a0,s1,7204
     364:	e7a40010 	swc1	$f4,16(sp)
     368:	c6060028 	lwc1	$f6,40(s0)
     36c:	02002825 	move	a1,s0
     370:	02203025 	move	a2,s1
     374:	e7a60014 	swc1	$f6,20(sp)
     378:	c608002c 	lwc1	$f8,44(s0)
     37c:	afa0001c 	sw	zero,28(sp)
     380:	240701c6 	li	a3,454
     384:	e7a80018 	swc1	$f8,24(sp)
     388:	860c00b6 	lh	t4,182(s0)
     38c:	afad0028 	sw	t5,40(sp)
     390:	afa00024 	sw	zero,36(sp)
     394:	0c000000 	jal	0 <func_809DEE00>
     398:	afac0020 	sw	t4,32(sp)
     39c:	3c01447a 	lui	at,0x447a
     3a0:	44816000 	mtc1	at,$f12
     3a4:	0c000000 	jal	0 <func_809DEE00>
     3a8:	00000000 	nop
     3ac:	3c014220 	lui	at,0x4220
     3b0:	44815000 	mtc1	at,$f10
     3b4:	240f0001 	li	t7,1
     3b8:	3c014f00 	lui	at,0x4f00
     3bc:	460a0400 	add.s	$f16,$f0,$f10
     3c0:	24180006 	li	t8,6
     3c4:	3c190000 	lui	t9,0x0
     3c8:	444ef800 	cfc1	t6,$31
     3cc:	44cff800 	ctc1	t7,$31
     3d0:	00000000 	nop
     3d4:	460084a4 	cvt.w.s	$f18,$f16
     3d8:	444ff800 	cfc1	t7,$31
     3dc:	00000000 	nop
     3e0:	31ef0078 	andi	t7,t7,0x78
     3e4:	51e00013 	beqzl	t7,434 <EnCow_Init+0x220>
     3e8:	440f9000 	mfc1	t7,$f18
     3ec:	44819000 	mtc1	at,$f18
     3f0:	240f0001 	li	t7,1
     3f4:	46128481 	sub.s	$f18,$f16,$f18
     3f8:	44cff800 	ctc1	t7,$31
     3fc:	00000000 	nop
     400:	460094a4 	cvt.w.s	$f18,$f18
     404:	444ff800 	cfc1	t7,$31
     408:	00000000 	nop
     40c:	31ef0078 	andi	t7,t7,0x78
     410:	15e00005 	bnez	t7,428 <EnCow_Init+0x214>
     414:	00000000 	nop
     418:	440f9000 	mfc1	t7,$f18
     41c:	3c018000 	lui	at,0x8000
     420:	10000007 	b	440 <EnCow_Init+0x22c>
     424:	01e17825 	or	t7,t7,at
     428:	10000005 	b	440 <EnCow_Init+0x22c>
     42c:	240fffff 	li	t7,-1
     430:	440f9000 	mfc1	t7,$f18
     434:	00000000 	nop
     438:	05e0fffb 	bltz	t7,428 <EnCow_Init+0x214>
     43c:	00000000 	nop
     440:	a60f0278 	sh	t7,632(s0)
     444:	a600027a 	sh	zero,634(s0)
     448:	a218001f 	sb	t8,31(s0)
     44c:	8f390000 	lw	t9,0(t9)
     450:	44cef800 	ctc1	t6,$31
     454:	10000071 	b	61c <EnCow_Init+0x408>
     458:	a72005be 	sh	zero,1470(t9)
     45c:	260501e4 	addiu	a1,s0,484
     460:	3c060000 	lui	a2,0x0
     464:	26080228 	addiu	t0,s0,552
     468:	2609024c 	addiu	t1,s0,588
     46c:	240a0006 	li	t2,6
     470:	afaa0018 	sw	t2,24(sp)
     474:	afa90014 	sw	t1,20(sp)
     478:	afa80010 	sw	t0,16(sp)
     47c:	24c60000 	addiu	a2,a2,0
     480:	afa50040 	sw	a1,64(sp)
     484:	0c000000 	jal	0 <func_809DEE00>
     488:	00003825 	move	a3,zero
     48c:	3c050000 	lui	a1,0x0
     490:	24a50000 	addiu	a1,a1,0
     494:	0c000000 	jal	0 <func_809DEE00>
     498:	8fa40040 	lw	a0,64(sp)
     49c:	3c0b0000 	lui	t3,0x0
     4a0:	3c0c0000 	lui	t4,0x0
     4a4:	3c0d0000 	lui	t5,0x0
     4a8:	256b0000 	addiu	t3,t3,0
     4ac:	258c0000 	addiu	t4,t4,0
     4b0:	25ad0000 	addiu	t5,t5,0
     4b4:	ae0b0130 	sw	t3,304(s0)
     4b8:	ae0c0134 	sw	t4,308(s0)
     4bc:	ae0d027c 	sw	t5,636(s0)
     4c0:	0c000000 	jal	0 <func_809DEE00>
     4c4:	02002025 	move	a0,s0
     4c8:	8e0e0004 	lw	t6,4(s0)
     4cc:	2401fffe 	li	at,-2
     4d0:	01c17824 	and	t7,t6,at
     4d4:	3c01447a 	lui	at,0x447a
     4d8:	44816000 	mtc1	at,$f12
     4dc:	0c000000 	jal	0 <func_809DEE00>
     4e0:	ae0f0004 	sw	t7,4(s0)
     4e4:	4458f800 	cfc1	t8,$31
     4e8:	24190001 	li	t9,1
     4ec:	44d9f800 	ctc1	t9,$31
     4f0:	3c014f00 	lui	at,0x4f00
     4f4:	46000124 	cvt.w.s	$f4,$f0
     4f8:	4459f800 	cfc1	t9,$31
     4fc:	00000000 	nop
     500:	33390078 	andi	t9,t9,0x78
     504:	53200013 	beqzl	t9,554 <EnCow_Init+0x340>
     508:	44192000 	mfc1	t9,$f4
     50c:	44812000 	mtc1	at,$f4
     510:	24190001 	li	t9,1
     514:	46040101 	sub.s	$f4,$f0,$f4
     518:	44d9f800 	ctc1	t9,$31
     51c:	00000000 	nop
     520:	46002124 	cvt.w.s	$f4,$f4
     524:	4459f800 	cfc1	t9,$31
     528:	00000000 	nop
     52c:	33390078 	andi	t9,t9,0x78
     530:	17200005 	bnez	t9,548 <EnCow_Init+0x334>
     534:	00000000 	nop
     538:	44192000 	mfc1	t9,$f4
     53c:	3c018000 	lui	at,0x8000
     540:	10000007 	b	560 <EnCow_Init+0x34c>
     544:	0321c825 	or	t9,t9,at
     548:	10000005 	b	560 <EnCow_Init+0x34c>
     54c:	2419ffff 	li	t9,-1
     550:	44192000 	mfc1	t9,$f4
     554:	00000000 	nop
     558:	0720fffb 	bltz	t9,548 <EnCow_Init+0x334>
     55c:	00000000 	nop
     560:	3328ffff 	andi	t0,t9,0xffff
     564:	44883000 	mtc1	t0,$f6
     568:	44d8f800 	ctc1	t8,$31
     56c:	3c014f80 	lui	at,0x4f80
     570:	05010004 	bgez	t0,584 <EnCow_Init+0x370>
     574:	46803220 	cvt.s.w	$f8,$f6
     578:	44815000 	mtc1	at,$f10
     57c:	00000000 	nop
     580:	460a4200 	add.s	$f8,$f8,$f10
     584:	3c014220 	lui	at,0x4220
     588:	44818000 	mtc1	at,$f16
     58c:	240a0001 	li	t2,1
     590:	3c014f00 	lui	at,0x4f00
     594:	46104480 	add.s	$f18,$f8,$f16
     598:	4449f800 	cfc1	t1,$31
     59c:	44caf800 	ctc1	t2,$31
     5a0:	00000000 	nop
     5a4:	46009124 	cvt.w.s	$f4,$f18
     5a8:	444af800 	cfc1	t2,$31
     5ac:	00000000 	nop
     5b0:	314a0078 	andi	t2,t2,0x78
     5b4:	51400013 	beqzl	t2,604 <EnCow_Init+0x3f0>
     5b8:	440a2000 	mfc1	t2,$f4
     5bc:	44812000 	mtc1	at,$f4
     5c0:	240a0001 	li	t2,1
     5c4:	46049101 	sub.s	$f4,$f18,$f4
     5c8:	44caf800 	ctc1	t2,$31
     5cc:	00000000 	nop
     5d0:	46002124 	cvt.w.s	$f4,$f4
     5d4:	444af800 	cfc1	t2,$31
     5d8:	00000000 	nop
     5dc:	314a0078 	andi	t2,t2,0x78
     5e0:	15400005 	bnez	t2,5f8 <EnCow_Init+0x3e4>
     5e4:	00000000 	nop
     5e8:	440a2000 	mfc1	t2,$f4
     5ec:	3c018000 	lui	at,0x8000
     5f0:	10000007 	b	610 <EnCow_Init+0x3fc>
     5f4:	01415025 	or	t2,t2,at
     5f8:	10000005 	b	610 <EnCow_Init+0x3fc>
     5fc:	240affff 	li	t2,-1
     600:	440a2000 	mfc1	t2,$f4
     604:	00000000 	nop
     608:	0540fffb 	bltz	t2,5f8 <EnCow_Init+0x3e4>
     60c:	00000000 	nop
     610:	44c9f800 	ctc1	t1,$31
     614:	a60a0278 	sh	t2,632(s0)
     618:	00000000 	nop
     61c:	240b00ff 	li	t3,255
     620:	3c053c23 	lui	a1,0x3c23
     624:	a20b00ae 	sb	t3,174(s0)
     628:	34a5d70a 	ori	a1,a1,0xd70a
     62c:	0c000000 	jal	0 <func_809DEE00>
     630:	02002025 	move	a0,s0
     634:	a6000276 	sh	zero,630(s0)
     638:	8fbf003c 	lw	ra,60(sp)
     63c:	8fb00034 	lw	s0,52(sp)
     640:	8fb10038 	lw	s1,56(sp)
     644:	03e00008 	jr	ra
     648:	27bd0050 	addiu	sp,sp,80

0000064c <EnCow_Destroy>:
     64c:	27bdffe8 	addiu	sp,sp,-24
     650:	afbf0014 	sw	ra,20(sp)
     654:	afa5001c 	sw	a1,28(sp)
     658:	848e001c 	lh	t6,28(a0)
     65c:	00803025 	move	a2,a0
     660:	00a02025 	move	a0,a1
     664:	15c00007 	bnez	t6,684 <EnCow_Destroy+0x38>
     668:	24c5014c 	addiu	a1,a2,332
     66c:	0c000000 	jal	0 <func_809DEE00>
     670:	afa60018 	sw	a2,24(sp)
     674:	8fa60018 	lw	a2,24(sp)
     678:	8fa4001c 	lw	a0,28(sp)
     67c:	0c000000 	jal	0 <func_809DEE00>
     680:	24c50198 	addiu	a1,a2,408
     684:	8fbf0014 	lw	ra,20(sp)
     688:	27bd0018 	addiu	sp,sp,24
     68c:	03e00008 	jr	ra
     690:	00000000 	nop

00000694 <func_809DF494>:
     694:	27bdffd0 	addiu	sp,sp,-48
     698:	afbf002c 	sw	ra,44(sp)
     69c:	afb00028 	sw	s0,40(sp)
     6a0:	afa50034 	sw	a1,52(sp)
     6a4:	94820278 	lhu	v0,632(a0)
     6a8:	00808025 	move	s0,a0
     6ac:	3c0143fa 	lui	at,0x43fa
     6b0:	18400003 	blez	v0,6c0 <func_809DF494+0x2c>
     6b4:	244effff 	addiu	t6,v0,-1
     6b8:	1000003a 	b	7a4 <func_809DF494+0x110>
     6bc:	a48e0278 	sh	t6,632(a0)
     6c0:	44816000 	mtc1	at,$f12
     6c4:	0c000000 	jal	0 <func_809DEE00>
     6c8:	00000000 	nop
     6cc:	3c014220 	lui	at,0x4220
     6d0:	44812000 	mtc1	at,$f4
     6d4:	24180001 	li	t8,1
     6d8:	3c040000 	lui	a0,0x0
     6dc:	46040180 	add.s	$f6,$f0,$f4
     6e0:	3c014f00 	lui	at,0x4f00
     6e4:	24840000 	addiu	a0,a0,0
     6e8:	444ff800 	cfc1	t7,$31
     6ec:	44d8f800 	ctc1	t8,$31
     6f0:	00000000 	nop
     6f4:	46003224 	cvt.w.s	$f8,$f6
     6f8:	4458f800 	cfc1	t8,$31
     6fc:	00000000 	nop
     700:	33180078 	andi	t8,t8,0x78
     704:	53000013 	beqzl	t8,754 <func_809DF494+0xc0>
     708:	44184000 	mfc1	t8,$f8
     70c:	44814000 	mtc1	at,$f8
     710:	24180001 	li	t8,1
     714:	46083201 	sub.s	$f8,$f6,$f8
     718:	44d8f800 	ctc1	t8,$31
     71c:	00000000 	nop
     720:	46004224 	cvt.w.s	$f8,$f8
     724:	4458f800 	cfc1	t8,$31
     728:	00000000 	nop
     72c:	33180078 	andi	t8,t8,0x78
     730:	17000005 	bnez	t8,748 <func_809DF494+0xb4>
     734:	00000000 	nop
     738:	44184000 	mfc1	t8,$f8
     73c:	3c018000 	lui	at,0x8000
     740:	10000007 	b	760 <func_809DF494+0xcc>
     744:	0301c025 	or	t8,t8,at
     748:	10000005 	b	760 <func_809DF494+0xcc>
     74c:	2418ffff 	li	t8,-1
     750:	44184000 	mfc1	t8,$f8
     754:	00000000 	nop
     758:	0700fffb 	bltz	t8,748 <func_809DF494+0xb4>
     75c:	00000000 	nop
     760:	44cff800 	ctc1	t7,$31
     764:	0c000000 	jal	0 <func_809DEE00>
     768:	a6180278 	sh	t8,632(s0)
     76c:	44825000 	mtc1	v0,$f10
     770:	3c013f80 	lui	at,0x3f80
     774:	44819000 	mtc1	at,$f18
     778:	46805420 	cvt.s.w	$f16,$f10
     77c:	8e0701fc 	lw	a3,508(s0)
     780:	3c050000 	lui	a1,0x0
     784:	24190002 	li	t9,2
     788:	afb90014 	sw	t9,20(sp)
     78c:	24a50000 	addiu	a1,a1,0
     790:	e7b00010 	swc1	$f16,16(sp)
     794:	260401e4 	addiu	a0,s0,484
     798:	3c063f80 	lui	a2,0x3f80
     79c:	0c000000 	jal	0 <func_809DEE00>
     7a0:	e7b20018 	swc1	$f18,24(sp)
     7a4:	3c014316 	lui	at,0x4316
     7a8:	44813000 	mtc1	at,$f6
     7ac:	c6040090 	lwc1	$f4,144(s0)
     7b0:	4606203c 	c.lt.s	$f4,$f6
     7b4:	00000000 	nop
     7b8:	4502000c 	bc1fl	7ec <func_809DF494+0x158>
     7bc:	960c027a 	lhu	t4,634(s0)
     7c0:	96020276 	lhu	v0,630(s0)
     7c4:	30480002 	andi	t0,v0,0x2
     7c8:	15000007 	bnez	t0,7e8 <func_809DF494+0x154>
     7cc:	34490002 	ori	t1,v0,0x2
     7d0:	8e0b01ec 	lw	t3,492(s0)
     7d4:	3c0a0000 	lui	t2,0x0
     7d8:	254a0000 	addiu	t2,t2,0
     7dc:	154b0002 	bne	t2,t3,7e8 <func_809DF494+0x154>
     7e0:	a6090276 	sh	t1,630(s0)
     7e4:	a6000278 	sh	zero,632(s0)
     7e8:	960c027a 	lhu	t4,634(s0)
     7ec:	258d0001 	addiu	t5,t4,1
     7f0:	31a2ffff 	andi	v0,t5,0xffff
     7f4:	28410031 	slti	at,v0,49
     7f8:	14200003 	bnez	at,808 <func_809DF494+0x174>
     7fc:	a60d027a 	sh	t5,634(s0)
     800:	a600027a 	sh	zero,634(s0)
     804:	3002ffff 	andi	v0,zero,0xffff
     808:	28410020 	slti	at,v0,32
     80c:	1020000f 	beqz	at,84c <func_809DF494+0x1b8>
     810:	00402025 	move	a0,v0
     814:	00042680 	sll	a0,a0,0x1a
     818:	0c000000 	jal	0 <func_809DEE00>
     81c:	00042403 	sra	a0,a0,0x10
     820:	3c010000 	lui	at,0x0
     824:	c4220000 	lwc1	$f2,0(at)
     828:	3c010000 	lui	at,0x0
     82c:	c4280004 	lwc1	$f8,4(at)
     830:	3c013f80 	lui	at,0x3f80
     834:	44818000 	mtc1	at,$f16
     838:	46080282 	mul.s	$f10,$f0,$f8
     83c:	46105480 	add.s	$f18,$f10,$f16
     840:	46029102 	mul.s	$f4,$f18,$f2
     844:	10000004 	b	858 <func_809DF494+0x1c4>
     848:	e6040050 	swc1	$f4,80(s0)
     84c:	3c010000 	lui	at,0x0
     850:	c4220008 	lwc1	$f2,8(at)
     854:	e6020050 	swc1	$f2,80(s0)
     858:	9602027a 	lhu	v0,634(s0)
     85c:	28410011 	slti	at,v0,17
     860:	14200010 	bnez	at,8a4 <func_809DF494+0x210>
     864:	00022280 	sll	a0,v0,0xa
     868:	2484c000 	addiu	a0,a0,-16384
     86c:	00042400 	sll	a0,a0,0x10
     870:	0c000000 	jal	0 <func_809DEE00>
     874:	00042403 	sra	a0,a0,0x10
     878:	3c010000 	lui	at,0x0
     87c:	c422000c 	lwc1	$f2,12(at)
     880:	3c010000 	lui	at,0x0
     884:	c4260010 	lwc1	$f6,16(at)
     888:	3c013f80 	lui	at,0x3f80
     88c:	44815000 	mtc1	at,$f10
     890:	46060202 	mul.s	$f8,$f0,$f6
     894:	460a4400 	add.s	$f16,$f8,$f10
     898:	46028482 	mul.s	$f18,$f16,$f2
     89c:	10000002 	b	8a8 <func_809DF494+0x214>
     8a0:	e6120054 	swc1	$f18,84(s0)
     8a4:	e6020054 	swc1	$f2,84(s0)
     8a8:	8fbf002c 	lw	ra,44(sp)
     8ac:	8fb00028 	lw	s0,40(sp)
     8b0:	27bd0030 	addiu	sp,sp,48
     8b4:	03e00008 	jr	ra
     8b8:	00000000 	nop

000008bc <func_809DF6BC>:
     8bc:	27bdffe8 	addiu	sp,sp,-24
     8c0:	afbf0014 	sw	ra,20(sp)
     8c4:	afa40018 	sw	a0,24(sp)
     8c8:	afa5001c 	sw	a1,28(sp)
     8cc:	0c000000 	jal	0 <func_809DEE00>
     8d0:	24a420d8 	addiu	a0,a1,8408
     8d4:	24010005 	li	at,5
     8d8:	54410012 	bnel	v0,at,924 <func_809DF6BC+0x68>
     8dc:	8fbf0014 	lw	ra,20(sp)
     8e0:	0c000000 	jal	0 <func_809DEE00>
     8e4:	8fa4001c 	lw	a0,28(sp)
     8e8:	5040000e 	beqzl	v0,924 <func_809DF6BC+0x68>
     8ec:	8fbf0014 	lw	ra,20(sp)
     8f0:	8fa20018 	lw	v0,24(sp)
     8f4:	3c01fffe 	lui	at,0xfffe
     8f8:	3421ffff 	ori	at,at,0xffff
     8fc:	8c4e0004 	lw	t6,4(v0)
     900:	01c17824 	and	t7,t6,at
     904:	ac4f0004 	sw	t7,4(v0)
     908:	0c000000 	jal	0 <func_809DEE00>
     90c:	8fa4001c 	lw	a0,28(sp)
     910:	8fb90018 	lw	t9,24(sp)
     914:	3c180000 	lui	t8,0x0
     918:	27180000 	addiu	t8,t8,0
     91c:	af38027c 	sw	t8,636(t9)
     920:	8fbf0014 	lw	ra,20(sp)
     924:	27bd0018 	addiu	sp,sp,24
     928:	03e00008 	jr	ra
     92c:	00000000 	nop

00000930 <func_809DF730>:
     930:	27bdffe8 	addiu	sp,sp,-24
     934:	afbf0014 	sw	ra,20(sp)
     938:	0c000000 	jal	0 <func_809DEE00>
     93c:	afa40018 	sw	a0,24(sp)
     940:	10400009 	beqz	v0,968 <func_809DF730+0x38>
     944:	8fa40018 	lw	a0,24(sp)
     948:	8c8e0004 	lw	t6,4(a0)
     94c:	3c01fffe 	lui	at,0xfffe
     950:	3421ffff 	ori	at,at,0xffff
     954:	3c180000 	lui	t8,0x0
     958:	27180000 	addiu	t8,t8,0
     95c:	01c17824 	and	t7,t6,at
     960:	ac8f0004 	sw	t7,4(a0)
     964:	ac98027c 	sw	t8,636(a0)
     968:	8fbf0014 	lw	ra,20(sp)
     96c:	27bd0018 	addiu	sp,sp,24
     970:	03e00008 	jr	ra
     974:	00000000 	nop

00000978 <func_809DF778>:
     978:	27bdffe0 	addiu	sp,sp,-32
     97c:	afbf001c 	sw	ra,28(sp)
     980:	afa50024 	sw	a1,36(sp)
     984:	0c000000 	jal	0 <func_809DEE00>
     988:	afa40020 	sw	a0,32(sp)
     98c:	10400006 	beqz	v0,9a8 <func_809DF778+0x30>
     990:	8fa40020 	lw	a0,32(sp)
     994:	3c0e0000 	lui	t6,0x0
     998:	25ce0000 	addiu	t6,t6,0
     99c:	ac800118 	sw	zero,280(a0)
     9a0:	10000009 	b	9c8 <func_809DF778+0x50>
     9a4:	ac8e027c 	sw	t6,636(a0)
     9a8:	3c0142c8 	lui	at,0x42c8
     9ac:	44812000 	mtc1	at,$f4
     9b0:	3c07461c 	lui	a3,0x461c
     9b4:	34e74000 	ori	a3,a3,0x4000
     9b8:	8fa50024 	lw	a1,36(sp)
     9bc:	24060050 	li	a2,80
     9c0:	0c000000 	jal	0 <func_809DEE00>
     9c4:	e7a40010 	swc1	$f4,16(sp)
     9c8:	8fbf001c 	lw	ra,28(sp)
     9cc:	27bd0020 	addiu	sp,sp,32
     9d0:	03e00008 	jr	ra
     9d4:	00000000 	nop

000009d8 <func_809DF7D8>:
     9d8:	27bdffe0 	addiu	sp,sp,-32
     9dc:	afbf001c 	sw	ra,28(sp)
     9e0:	afa40020 	sw	a0,32(sp)
     9e4:	afa50024 	sw	a1,36(sp)
     9e8:	0c000000 	jal	0 <func_809DEE00>
     9ec:	24a420d8 	addiu	a0,a1,8408
     9f0:	24010005 	li	at,5
     9f4:	5441001b 	bnel	v0,at,a64 <func_809DF7D8+0x8c>
     9f8:	8fbf001c 	lw	ra,28(sp)
     9fc:	0c000000 	jal	0 <func_809DEE00>
     a00:	8fa40024 	lw	a0,36(sp)
     a04:	50400017 	beqzl	v0,a64 <func_809DF7D8+0x8c>
     a08:	8fbf001c 	lw	ra,28(sp)
     a0c:	8fa20020 	lw	v0,32(sp)
     a10:	3c01fffe 	lui	at,0xfffe
     a14:	3421ffff 	ori	at,at,0xffff
     a18:	8c4e0004 	lw	t6,4(v0)
     a1c:	01c17824 	and	t7,t6,at
     a20:	ac4f0004 	sw	t7,4(v0)
     a24:	0c000000 	jal	0 <func_809DEE00>
     a28:	8fa40024 	lw	a0,36(sp)
     a2c:	8fb90020 	lw	t9,32(sp)
     a30:	3c180000 	lui	t8,0x0
     a34:	27180000 	addiu	t8,t8,0
     a38:	3c0142c8 	lui	at,0x42c8
     a3c:	44812000 	mtc1	at,$f4
     a40:	af38027c 	sw	t8,636(t9)
     a44:	3c07461c 	lui	a3,0x461c
     a48:	34e74000 	ori	a3,a3,0x4000
     a4c:	8fa50024 	lw	a1,36(sp)
     a50:	8fa40020 	lw	a0,32(sp)
     a54:	24060050 	li	a2,80
     a58:	0c000000 	jal	0 <func_809DEE00>
     a5c:	e7a40010 	swc1	$f4,16(sp)
     a60:	8fbf001c 	lw	ra,28(sp)
     a64:	27bd0020 	addiu	sp,sp,32
     a68:	03e00008 	jr	ra
     a6c:	00000000 	nop

00000a70 <func_809DF870>:
     a70:	27bdffe8 	addiu	sp,sp,-24
     a74:	afbf0014 	sw	ra,20(sp)
     a78:	afa40018 	sw	a0,24(sp)
     a7c:	afa5001c 	sw	a1,28(sp)
     a80:	0c000000 	jal	0 <func_809DEE00>
     a84:	24a420d8 	addiu	a0,a1,8408
     a88:	24010005 	li	at,5
     a8c:	54410018 	bnel	v0,at,af0 <func_809DF870+0x80>
     a90:	8fbf0014 	lw	ra,20(sp)
     a94:	0c000000 	jal	0 <func_809DEE00>
     a98:	8fa4001c 	lw	a0,28(sp)
     a9c:	50400014 	beqzl	v0,af0 <func_809DF870+0x80>
     aa0:	8fbf0014 	lw	ra,20(sp)
     aa4:	0c000000 	jal	0 <func_809DEE00>
     aa8:	00000000 	nop
     aac:	10400009 	beqz	v0,ad4 <func_809DF870+0x64>
     ab0:	8fa4001c 	lw	a0,28(sp)
     ab4:	8fa4001c 	lw	a0,28(sp)
     ab8:	0c000000 	jal	0 <func_809DEE00>
     abc:	24052007 	li	a1,8199
     ac0:	8faf0018 	lw	t7,24(sp)
     ac4:	3c0e0000 	lui	t6,0x0
     ac8:	25ce0000 	addiu	t6,t6,0
     acc:	10000007 	b	aec <func_809DF870+0x7c>
     ad0:	adee027c 	sw	t6,636(t7)
     ad4:	0c000000 	jal	0 <func_809DEE00>
     ad8:	24052013 	li	a1,8211
     adc:	8fb90018 	lw	t9,24(sp)
     ae0:	3c180000 	lui	t8,0x0
     ae4:	27180000 	addiu	t8,t8,0
     ae8:	af38027c 	sw	t8,636(t9)
     aec:	8fbf0014 	lw	ra,20(sp)
     af0:	27bd0018 	addiu	sp,sp,24
     af4:	03e00008 	jr	ra
     af8:	00000000 	nop

00000afc <func_809DF8FC>:
     afc:	27bdffe8 	addiu	sp,sp,-24
     b00:	afbf0014 	sw	ra,20(sp)
     b04:	afa5001c 	sw	a1,28(sp)
     b08:	0c000000 	jal	0 <func_809DEE00>
     b0c:	afa40018 	sw	a0,24(sp)
     b10:	10400005 	beqz	v0,b28 <func_809DF8FC+0x2c>
     b14:	8fa40018 	lw	a0,24(sp)
     b18:	3c0e0000 	lui	t6,0x0
     b1c:	25ce0000 	addiu	t6,t6,0
     b20:	1000000c 	b	b54 <func_809DF8FC+0x58>
     b24:	ac8e027c 	sw	t6,636(a0)
     b28:	8c8f0004 	lw	t7,4(a0)
     b2c:	3c010001 	lui	at,0x1
     b30:	3c06432a 	lui	a2,0x432a
     b34:	01e1c025 	or	t8,t7,at
     b38:	ac980004 	sw	t8,4(a0)
     b3c:	afa40018 	sw	a0,24(sp)
     b40:	0c000000 	jal	0 <func_809DEE00>
     b44:	8fa5001c 	lw	a1,28(sp)
     b48:	8fa40018 	lw	a0,24(sp)
     b4c:	24192006 	li	t9,8198
     b50:	a499010e 	sh	t9,270(a0)
     b54:	0c000000 	jal	0 <func_809DEE00>
     b58:	8fa5001c 	lw	a1,28(sp)
     b5c:	8fbf0014 	lw	ra,20(sp)
     b60:	27bd0018 	addiu	sp,sp,24
     b64:	03e00008 	jr	ra
     b68:	00000000 	nop

00000b6c <func_809DF96C>:
     b6c:	27bdffe8 	addiu	sp,sp,-24
     b70:	3c020001 	lui	v0,0x1
     b74:	afbf0014 	sw	ra,20(sp)
     b78:	afa5001c 	sw	a1,28(sp)
     b7c:	00451021 	addu	v0,v0,a1
     b80:	944204c6 	lhu	v0,1222(v0)
     b84:	24010004 	li	at,4
     b88:	10400002 	beqz	v0,b94 <func_809DF96C+0x28>
     b8c:	00000000 	nop
     b90:	14410036 	bne	v0,at,c6c <func_809DF96C+0x100>
     b94:	3c020000 	lui	v0,0x0
     b98:	24420000 	addiu	v0,v0,0
     b9c:	8c470000 	lw	a3,0(v0)
     ba0:	84ef05be 	lh	t7,1470(a3)
     ba4:	51e0002f 	beqzl	t7,c64 <func_809DF96C+0xf8>
     ba8:	94980276 	lhu	t8,630(a0)
     bac:	94850276 	lhu	a1,630(a0)
     bb0:	30b80004 	andi	t8,a1,0x4
     bb4:	13000005 	beqz	t8,bcc <func_809DF96C+0x60>
     bb8:	30b9fffb 	andi	t9,a1,0xfffb
     bbc:	a4990276 	sh	t9,630(a0)
     bc0:	8c480000 	lw	t0,0(v0)
     bc4:	10000029 	b	c6c <func_809DF96C+0x100>
     bc8:	a50005be 	sh	zero,1470(t0)
     bcc:	3c014316 	lui	at,0x4316
     bd0:	44813000 	mtc1	at,$f6
     bd4:	c4840090 	lwc1	$f4,144(a0)
     bd8:	4606203c 	c.lt.s	$f4,$f6
     bdc:	00000000 	nop
     be0:	4502001d 	bc1fl	c58 <func_809DF96C+0xec>
     be4:	34af0004 	ori	t7,a1,0x4
     be8:	8489008a 	lh	t1,138(a0)
     bec:	848a00b6 	lh	t2,182(a0)
     bf0:	3c0b0000 	lui	t3,0x0
     bf4:	256b0000 	addiu	t3,t3,0
     bf8:	012a1023 	subu	v0,t1,t2
     bfc:	00021400 	sll	v0,v0,0x10
     c00:	00021403 	sra	v0,v0,0x10
     c04:	04400003 	bltz	v0,c14 <func_809DF96C+0xa8>
     c08:	00021823 	negu	v1,v0
     c0c:	10000001 	b	c14 <func_809DF96C+0xa8>
     c10:	00401825 	move	v1,v0
     c14:	286161a8 	slti	at,v1,25000
     c18:	1020000e 	beqz	at,c54 <func_809DF96C+0xe8>
     c1c:	3c06432a 	lui	a2,0x432a
     c20:	a4e005be 	sh	zero,1470(a3)
     c24:	8c8c0004 	lw	t4,4(a0)
     c28:	3c010001 	lui	at,0x1
     c2c:	ac8b027c 	sw	t3,636(a0)
     c30:	01816825 	or	t5,t4,at
     c34:	ac8d0004 	sw	t5,4(a0)
     c38:	afa40018 	sw	a0,24(sp)
     c3c:	0c000000 	jal	0 <func_809DEE00>
     c40:	8fa5001c 	lw	a1,28(sp)
     c44:	8fa40018 	lw	a0,24(sp)
     c48:	240e2006 	li	t6,8198
     c4c:	10000007 	b	c6c <func_809DF96C+0x100>
     c50:	a48e010e 	sh	t6,270(a0)
     c54:	34af0004 	ori	t7,a1,0x4
     c58:	10000004 	b	c6c <func_809DF96C+0x100>
     c5c:	a48f0276 	sh	t7,630(a0)
     c60:	94980276 	lhu	t8,630(a0)
     c64:	3319fffb 	andi	t9,t8,0xfffb
     c68:	a4990276 	sh	t9,630(a0)
     c6c:	0c000000 	jal	0 <func_809DEE00>
     c70:	8fa5001c 	lw	a1,28(sp)
     c74:	8fbf0014 	lw	ra,20(sp)
     c78:	27bd0018 	addiu	sp,sp,24
     c7c:	03e00008 	jr	ra
     c80:	00000000 	nop

00000c84 <func_809DFA84>:
     c84:	27bdffd0 	addiu	sp,sp,-48
     c88:	afbf002c 	sw	ra,44(sp)
     c8c:	afb00028 	sw	s0,40(sp)
     c90:	afa50034 	sw	a1,52(sp)
     c94:	94820278 	lhu	v0,632(a0)
     c98:	00808025 	move	s0,a0
     c9c:	3c014348 	lui	at,0x4348
     ca0:	18400003 	blez	v0,cb0 <func_809DFA84+0x2c>
     ca4:	244effff 	addiu	t6,v0,-1
     ca8:	1000003a 	b	d94 <func_809DFA84+0x110>
     cac:	a48e0278 	sh	t6,632(a0)
     cb0:	44816000 	mtc1	at,$f12
     cb4:	0c000000 	jal	0 <func_809DEE00>
     cb8:	00000000 	nop
     cbc:	3c014220 	lui	at,0x4220
     cc0:	44812000 	mtc1	at,$f4
     cc4:	24180001 	li	t8,1
     cc8:	3c040000 	lui	a0,0x0
     ccc:	46040180 	add.s	$f6,$f0,$f4
     cd0:	3c014f00 	lui	at,0x4f00
     cd4:	24840000 	addiu	a0,a0,0
     cd8:	444ff800 	cfc1	t7,$31
     cdc:	44d8f800 	ctc1	t8,$31
     ce0:	00000000 	nop
     ce4:	46003224 	cvt.w.s	$f8,$f6
     ce8:	4458f800 	cfc1	t8,$31
     cec:	00000000 	nop
     cf0:	33180078 	andi	t8,t8,0x78
     cf4:	53000013 	beqzl	t8,d44 <func_809DFA84+0xc0>
     cf8:	44184000 	mfc1	t8,$f8
     cfc:	44814000 	mtc1	at,$f8
     d00:	24180001 	li	t8,1
     d04:	46083201 	sub.s	$f8,$f6,$f8
     d08:	44d8f800 	ctc1	t8,$31
     d0c:	00000000 	nop
     d10:	46004224 	cvt.w.s	$f8,$f8
     d14:	4458f800 	cfc1	t8,$31
     d18:	00000000 	nop
     d1c:	33180078 	andi	t8,t8,0x78
     d20:	17000005 	bnez	t8,d38 <func_809DFA84+0xb4>
     d24:	00000000 	nop
     d28:	44184000 	mfc1	t8,$f8
     d2c:	3c018000 	lui	at,0x8000
     d30:	10000007 	b	d50 <func_809DFA84+0xcc>
     d34:	0301c025 	or	t8,t8,at
     d38:	10000005 	b	d50 <func_809DFA84+0xcc>
     d3c:	2418ffff 	li	t8,-1
     d40:	44184000 	mfc1	t8,$f8
     d44:	00000000 	nop
     d48:	0700fffb 	bltz	t8,d38 <func_809DFA84+0xb4>
     d4c:	00000000 	nop
     d50:	44cff800 	ctc1	t7,$31
     d54:	0c000000 	jal	0 <func_809DEE00>
     d58:	a6180278 	sh	t8,632(s0)
     d5c:	44825000 	mtc1	v0,$f10
     d60:	3c013f80 	lui	at,0x3f80
     d64:	44810000 	mtc1	at,$f0
     d68:	46805420 	cvt.s.w	$f16,$f10
     d6c:	8e0701fc 	lw	a3,508(s0)
     d70:	3c050000 	lui	a1,0x0
     d74:	24190002 	li	t9,2
     d78:	44060000 	mfc1	a2,$f0
     d7c:	afb90014 	sw	t9,20(sp)
     d80:	24a50000 	addiu	a1,a1,0
     d84:	e7b00010 	swc1	$f16,16(sp)
     d88:	260401e4 	addiu	a0,s0,484
     d8c:	0c000000 	jal	0 <func_809DEE00>
     d90:	e7a00018 	swc1	$f0,24(sp)
     d94:	3c014316 	lui	at,0x4316
     d98:	44812000 	mtc1	at,$f4
     d9c:	c6120090 	lwc1	$f18,144(s0)
     da0:	4604903c 	c.lt.s	$f18,$f4
     da4:	00000000 	nop
     da8:	45020018 	bc1fl	e0c <func_809DFA84+0x188>
     dac:	8fbf002c 	lw	ra,44(sp)
     db0:	8608008a 	lh	t0,138(s0)
     db4:	860900b6 	lh	t1,182(s0)
     db8:	01091023 	subu	v0,t0,t1
     dbc:	00021400 	sll	v0,v0,0x10
     dc0:	00021403 	sra	v0,v0,0x10
     dc4:	04400003 	bltz	v0,dd4 <func_809DFA84+0x150>
     dc8:	00021823 	negu	v1,v0
     dcc:	10000001 	b	dd4 <func_809DFA84+0x150>
     dd0:	00401825 	move	v1,v0
     dd4:	286161a9 	slti	at,v1,25001
     dd8:	5420000c 	bnezl	at,e0c <func_809DFA84+0x188>
     ddc:	8fbf002c 	lw	ra,44(sp)
     de0:	96020276 	lhu	v0,630(s0)
     de4:	304a0002 	andi	t2,v0,0x2
     de8:	15400007 	bnez	t2,e08 <func_809DFA84+0x184>
     dec:	344b0002 	ori	t3,v0,0x2
     df0:	8e0d01ec 	lw	t5,492(s0)
     df4:	3c0c0000 	lui	t4,0x0
     df8:	258c0000 	addiu	t4,t4,0
     dfc:	158d0002 	bne	t4,t5,e08 <func_809DFA84+0x184>
     e00:	a60b0276 	sh	t3,630(s0)
     e04:	a6000278 	sh	zero,632(s0)
     e08:	8fbf002c 	lw	ra,44(sp)
     e0c:	8fb00028 	lw	s0,40(sp)
     e10:	27bd0030 	addiu	sp,sp,48
     e14:	03e00008 	jr	ra
     e18:	00000000 	nop

00000e1c <EnCow_Update>:
     e1c:	27bdffb0 	addiu	sp,sp,-80
     e20:	afb00028 	sw	s0,40(sp)
     e24:	afbf002c 	sw	ra,44(sp)
     e28:	8cae1c44 	lw	t6,7236(a1)
     e2c:	00808025 	move	s0,a0
     e30:	3c010001 	lui	at,0x1
     e34:	00a03825 	move	a3,a1
     e38:	34211e60 	ori	at,at,0x1e60
     e3c:	00a02025 	move	a0,a1
     e40:	00a12821 	addu	a1,a1,at
     e44:	afa50034 	sw	a1,52(sp)
     e48:	afa70054 	sw	a3,84(sp)
     e4c:	2606014c 	addiu	a2,s0,332
     e50:	0c000000 	jal	0 <func_809DEE00>
     e54:	afae0040 	sw	t6,64(sp)
     e58:	8fa40054 	lw	a0,84(sp)
     e5c:	8fa50034 	lw	a1,52(sp)
     e60:	0c000000 	jal	0 <func_809DEE00>
     e64:	26060198 	addiu	a2,s0,408
     e68:	0c000000 	jal	0 <func_809DEE00>
     e6c:	02002025 	move	a0,s0
     e70:	44800000 	mtc1	zero,$f0
     e74:	240f0004 	li	t7,4
     e78:	afaf0014 	sw	t7,20(sp)
     e7c:	44060000 	mfc1	a2,$f0
     e80:	44070000 	mfc1	a3,$f0
     e84:	8fa40054 	lw	a0,84(sp)
     e88:	02002825 	move	a1,s0
     e8c:	0c000000 	jal	0 <func_809DEE00>
     e90:	e7a00010 	swc1	$f0,16(sp)
     e94:	260401e4 	addiu	a0,s0,484
     e98:	0c000000 	jal	0 <func_809DEE00>
     e9c:	afa40034 	sw	a0,52(sp)
     ea0:	5040002b 	beqzl	v0,f50 <EnCow_Update+0x134>
     ea4:	8e19027c 	lw	t9,636(s0)
     ea8:	8e1801ec 	lw	t8,492(s0)
     eac:	3c040000 	lui	a0,0x0
     eb0:	24840000 	addiu	a0,a0,0
     eb4:	14980016 	bne	a0,t8,f10 <EnCow_Update+0xf4>
     eb8:	240528df 	li	a1,10463
     ebc:	0c000000 	jal	0 <func_809DEE00>
     ec0:	02002025 	move	a0,s0
     ec4:	3c040000 	lui	a0,0x0
     ec8:	0c000000 	jal	0 <func_809DEE00>
     ecc:	24840000 	addiu	a0,a0,0
     ed0:	44822000 	mtc1	v0,$f4
     ed4:	3c013f80 	lui	at,0x3f80
     ed8:	44810000 	mtc1	at,$f0
     edc:	468021a0 	cvt.s.w	$f6,$f4
     ee0:	3c050000 	lui	a1,0x0
     ee4:	24190002 	li	t9,2
     ee8:	44060000 	mfc1	a2,$f0
     eec:	afb90014 	sw	t9,20(sp)
     ef0:	24a50000 	addiu	a1,a1,0
     ef4:	e7a60010 	swc1	$f6,16(sp)
     ef8:	8fa40034 	lw	a0,52(sp)
     efc:	24070000 	li	a3,0
     f00:	0c000000 	jal	0 <func_809DEE00>
     f04:	e7a00018 	swc1	$f0,24(sp)
     f08:	10000011 	b	f50 <EnCow_Update+0x134>
     f0c:	8e19027c 	lw	t9,636(s0)
     f10:	0c000000 	jal	0 <func_809DEE00>
     f14:	00000000 	nop
     f18:	44824000 	mtc1	v0,$f8
     f1c:	3c013f80 	lui	at,0x3f80
     f20:	44810000 	mtc1	at,$f0
     f24:	468042a0 	cvt.s.w	$f10,$f8
     f28:	3c050000 	lui	a1,0x0
     f2c:	44060000 	mfc1	a2,$f0
     f30:	24a50000 	addiu	a1,a1,0
     f34:	8fa40034 	lw	a0,52(sp)
     f38:	24070000 	li	a3,0
     f3c:	e7aa0010 	swc1	$f10,16(sp)
     f40:	afa00014 	sw	zero,20(sp)
     f44:	0c000000 	jal	0 <func_809DEE00>
     f48:	e7a00018 	swc1	$f0,24(sp)
     f4c:	8e19027c 	lw	t9,636(s0)
     f50:	02002025 	move	a0,s0
     f54:	8fa50054 	lw	a1,84(sp)
     f58:	0320f809 	jalr	t9
     f5c:	00000000 	nop
     f60:	3c014316 	lui	at,0x4316
     f64:	44819000 	mtc1	at,$f18
     f68:	c6100090 	lwc1	$f16,144(s0)
     f6c:	8fa50040 	lw	a1,64(sp)
     f70:	4612803c 	c.lt.s	$f16,$f18
     f74:	24a50024 	addiu	a1,a1,36
     f78:	45000033 	bc1f	1048 <EnCow_Update+0x22c>
     f7c:	26040024 	addiu	a0,s0,36
     f80:	afa40034 	sw	a0,52(sp)
     f84:	0c000000 	jal	0 <func_809DEE00>
     f88:	afa50030 	sw	a1,48(sp)
     f8c:	8fa40034 	lw	a0,52(sp)
     f90:	04400005 	bltz	v0,fa8 <EnCow_Update+0x18c>
     f94:	8fa50030 	lw	a1,48(sp)
     f98:	0c000000 	jal	0 <func_809DEE00>
     f9c:	00000000 	nop
     fa0:	10000004 	b	fb4 <EnCow_Update+0x198>
     fa4:	00401825 	move	v1,v0
     fa8:	0c000000 	jal	0 <func_809DEE00>
     fac:	00000000 	nop
     fb0:	00021823 	negu	v1,v0
     fb4:	3401c000 	li	at,0xc000
     fb8:	0061082a 	slt	at,v1,at
     fbc:	10200022 	beqz	at,1048 <EnCow_Update+0x22c>
     fc0:	8fa50040 	lw	a1,64(sp)
     fc4:	26040038 	addiu	a0,s0,56
     fc8:	24a50038 	addiu	a1,a1,56
     fcc:	afa50030 	sw	a1,48(sp)
     fd0:	0c000000 	jal	0 <func_809DEE00>
     fd4:	afa40034 	sw	a0,52(sp)
     fd8:	8fa40034 	lw	a0,52(sp)
     fdc:	8fa50030 	lw	a1,48(sp)
     fe0:	0c000000 	jal	0 <func_809DEE00>
     fe4:	a7a20046 	sh	v0,70(sp)
     fe8:	860800b6 	lh	t0,182(s0)
     fec:	87a50046 	lh	a1,70(sp)
     ff0:	00481823 	subu	v1,v0,t0
     ff4:	00031c00 	sll	v1,v1,0x10
     ff8:	28a11001 	slti	at,a1,4097
     ffc:	14200003 	bnez	at,100c <EnCow_Update+0x1f0>
    1000:	00031c03 	sra	v1,v1,0x10
    1004:	10000005 	b	101c <EnCow_Update+0x200>
    1008:	24051000 	li	a1,4096
    100c:	28a1f000 	slti	at,a1,-4096
    1010:	50200003 	beqzl	at,1020 <EnCow_Update+0x204>
    1014:	28612501 	slti	at,v1,9473
    1018:	2405f000 	li	a1,-4096
    101c:	28612501 	slti	at,v1,9473
    1020:	54200004 	bnezl	at,1034 <EnCow_Update+0x218>
    1024:	2861db00 	slti	at,v1,-9472
    1028:	10000005 	b	1040 <EnCow_Update+0x224>
    102c:	24032500 	li	v1,9472
    1030:	2861db00 	slti	at,v1,-9472
    1034:	10200002 	beqz	at,1040 <EnCow_Update+0x224>
    1038:	00000000 	nop
    103c:	2403db00 	li	v1,-9472
    1040:	10000003 	b	1050 <EnCow_Update+0x234>
    1044:	a7a30044 	sh	v1,68(sp)
    1048:	a7a00044 	sh	zero,68(sp)
    104c:	00002825 	move	a1,zero
    1050:	2409000a 	li	t1,10
    1054:	afa90010 	sw	t1,16(sp)
    1058:	26040270 	addiu	a0,s0,624
    105c:	2406000a 	li	a2,10
    1060:	0c000000 	jal	0 <func_809DEE00>
    1064:	240700c8 	li	a3,200
    1068:	240a000a 	li	t2,10
    106c:	afaa0010 	sw	t2,16(sp)
    1070:	26040272 	addiu	a0,s0,626
    1074:	87a50044 	lh	a1,68(sp)
    1078:	2406000a 	li	a2,10
    107c:	0c000000 	jal	0 <func_809DEE00>
    1080:	240700c8 	li	a3,200
    1084:	8fbf002c 	lw	ra,44(sp)
    1088:	8fb00028 	lw	s0,40(sp)
    108c:	27bd0050 	addiu	sp,sp,80
    1090:	03e00008 	jr	ra
    1094:	00000000 	nop

00001098 <func_809DFE98>:
    1098:	27bdffc0 	addiu	sp,sp,-64
    109c:	afb00028 	sw	s0,40(sp)
    10a0:	00808025 	move	s0,a0
    10a4:	afbf002c 	sw	ra,44(sp)
    10a8:	248401e4 	addiu	a0,a0,484
    10ac:	afa50044 	sw	a1,68(sp)
    10b0:	0c000000 	jal	0 <func_809DEE00>
    10b4:	afa40030 	sw	a0,48(sp)
    10b8:	50400029 	beqzl	v0,1160 <func_809DFE98+0xc8>
    10bc:	8e19027c 	lw	t9,636(s0)
    10c0:	8e0e01ec 	lw	t6,492(s0)
    10c4:	3c040000 	lui	a0,0x0
    10c8:	24840000 	addiu	a0,a0,0
    10cc:	148e0014 	bne	a0,t6,1120 <func_809DFE98+0x88>
    10d0:	00000000 	nop
    10d4:	3c040000 	lui	a0,0x0
    10d8:	0c000000 	jal	0 <func_809DEE00>
    10dc:	24840000 	addiu	a0,a0,0
    10e0:	44822000 	mtc1	v0,$f4
    10e4:	3c013f80 	lui	at,0x3f80
    10e8:	44810000 	mtc1	at,$f0
    10ec:	468021a0 	cvt.s.w	$f6,$f4
    10f0:	3c050000 	lui	a1,0x0
    10f4:	240f0002 	li	t7,2
    10f8:	44060000 	mfc1	a2,$f0
    10fc:	afaf0014 	sw	t7,20(sp)
    1100:	24a50000 	addiu	a1,a1,0
    1104:	e7a60010 	swc1	$f6,16(sp)
    1108:	8fa40030 	lw	a0,48(sp)
    110c:	24070000 	li	a3,0
    1110:	0c000000 	jal	0 <func_809DEE00>
    1114:	e7a00018 	swc1	$f0,24(sp)
    1118:	10000011 	b	1160 <func_809DFE98+0xc8>
    111c:	8e19027c 	lw	t9,636(s0)
    1120:	0c000000 	jal	0 <func_809DEE00>
    1124:	00000000 	nop
    1128:	44824000 	mtc1	v0,$f8
    112c:	3c013f80 	lui	at,0x3f80
    1130:	44810000 	mtc1	at,$f0
    1134:	468042a0 	cvt.s.w	$f10,$f8
    1138:	3c050000 	lui	a1,0x0
    113c:	44060000 	mfc1	a2,$f0
    1140:	24a50000 	addiu	a1,a1,0
    1144:	8fa40030 	lw	a0,48(sp)
    1148:	24070000 	li	a3,0
    114c:	e7aa0010 	swc1	$f10,16(sp)
    1150:	afa00014 	sw	zero,20(sp)
    1154:	0c000000 	jal	0 <func_809DEE00>
    1158:	e7a00018 	swc1	$f0,24(sp)
    115c:	8e19027c 	lw	t9,636(s0)
    1160:	02002025 	move	a0,s0
    1164:	8fa50044 	lw	a1,68(sp)
    1168:	0320f809 	jalr	t9
    116c:	00000000 	nop
    1170:	8fbf002c 	lw	ra,44(sp)
    1174:	8fb00028 	lw	s0,40(sp)
    1178:	27bd0040 	addiu	sp,sp,64
    117c:	03e00008 	jr	ra
    1180:	00000000 	nop

00001184 <EnCow_OverrideLimbDraw>:
    1184:	24010002 	li	at,2
    1188:	afa40000 	sw	a0,0(sp)
    118c:	14a1000b 	bne	a1,at,11bc <EnCow_OverrideLimbDraw+0x38>
    1190:	afa7000c 	sw	a3,12(sp)
    1194:	8fa20014 	lw	v0,20(sp)
    1198:	8fa30010 	lw	v1,16(sp)
    119c:	844f0272 	lh	t7,626(v0)
    11a0:	846e0002 	lh	t6,2(v1)
    11a4:	84790000 	lh	t9,0(v1)
    11a8:	01cfc021 	addu	t8,t6,t7
    11ac:	a4780002 	sh	t8,2(v1)
    11b0:	84480270 	lh	t0,624(v0)
    11b4:	03284821 	addu	t1,t9,t0
    11b8:	a4690000 	sh	t1,0(v1)
    11bc:	24010005 	li	at,5
    11c0:	14a10002 	bne	a1,at,11cc <EnCow_OverrideLimbDraw+0x48>
    11c4:	00000000 	nop
    11c8:	acc00000 	sw	zero,0(a2)
    11cc:	03e00008 	jr	ra
    11d0:	00001025 	move	v0,zero

000011d4 <EnCow_PostLimbDraw>:
    11d4:	27bdffe8 	addiu	sp,sp,-24
    11d8:	24010002 	li	at,2
    11dc:	afbf0014 	sw	ra,20(sp)
    11e0:	afa40018 	sw	a0,24(sp)
    11e4:	afa60020 	sw	a2,32(sp)
    11e8:	14a10006 	bne	a1,at,1204 <EnCow_PostLimbDraw+0x30>
    11ec:	afa70024 	sw	a3,36(sp)
    11f0:	8fa50028 	lw	a1,40(sp)
    11f4:	3c040000 	lui	a0,0x0
    11f8:	2484004c 	addiu	a0,a0,76
    11fc:	0c000000 	jal	0 <func_809DEE00>
    1200:	24a50038 	addiu	a1,a1,56
    1204:	8fbf0014 	lw	ra,20(sp)
    1208:	27bd0018 	addiu	sp,sp,24
    120c:	03e00008 	jr	ra
    1210:	00000000 	nop

00001214 <EnCow_Draw>:
    1214:	27bdffd8 	addiu	sp,sp,-40
    1218:	afbf0024 	sw	ra,36(sp)
    121c:	afa40028 	sw	a0,40(sp)
    1220:	afa5002c 	sw	a1,44(sp)
    1224:	0c000000 	jal	0 <func_809DEE00>
    1228:	8ca40000 	lw	a0,0(a1)
    122c:	8fa20028 	lw	v0,40(sp)
    1230:	3c0f0000 	lui	t7,0x0
    1234:	3c180000 	lui	t8,0x0
    1238:	8c4501e8 	lw	a1,488(v0)
    123c:	8c460204 	lw	a2,516(v0)
    1240:	904701e6 	lbu	a3,486(v0)
    1244:	27180000 	addiu	t8,t8,0
    1248:	25ef0000 	addiu	t7,t7,0
    124c:	afaf0010 	sw	t7,16(sp)
    1250:	afb80014 	sw	t8,20(sp)
    1254:	8fa4002c 	lw	a0,44(sp)
    1258:	0c000000 	jal	0 <func_809DEE00>
    125c:	afa20018 	sw	v0,24(sp)
    1260:	8fbf0024 	lw	ra,36(sp)
    1264:	27bd0028 	addiu	sp,sp,40
    1268:	03e00008 	jr	ra
    126c:	00000000 	nop

00001270 <func_809E0070>:
    1270:	27bdffd8 	addiu	sp,sp,-40
    1274:	afbf0024 	sw	ra,36(sp)
    1278:	afa40028 	sw	a0,40(sp)
    127c:	afa5002c 	sw	a1,44(sp)
    1280:	0c000000 	jal	0 <func_809DEE00>
    1284:	8ca40000 	lw	a0,0(a1)
    1288:	8fa20028 	lw	v0,40(sp)
    128c:	8fa4002c 	lw	a0,44(sp)
    1290:	8c4501e8 	lw	a1,488(v0)
    1294:	8c460204 	lw	a2,516(v0)
    1298:	904701e6 	lbu	a3,486(v0)
    129c:	afa00014 	sw	zero,20(sp)
    12a0:	afa00010 	sw	zero,16(sp)
    12a4:	0c000000 	jal	0 <func_809DEE00>
    12a8:	afa20018 	sw	v0,24(sp)
    12ac:	8fbf0024 	lw	ra,36(sp)
    12b0:	27bd0028 	addiu	sp,sp,40
    12b4:	03e00008 	jr	ra
    12b8:	00000000 	nop
    12bc:	00000000 	nop
