
build/src/code/z_view.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <View_ViewportToVp>:
       0:	8cae000c 	lw	t6,12(a1)
       4:	8caf0008 	lw	t7,8(a1)
       8:	8cb80004 	lw	t8,4(a1)
       c:	8cb90000 	lw	t9,0(a1)
      10:	01cf1023 	subu	v0,t6,t7
      14:	240601ff 	li	a2,511
      18:	03191823 	subu	v1,t8,t9
      1c:	00024040 	sll	t0,v0,0x1
      20:	00034840 	sll	t1,v1,0x1
      24:	a4880000 	sh	t0,0(a0)
      28:	a4890002 	sh	t1,2(a0)
      2c:	a4860004 	sh	a2,4(a0)
      30:	a4800006 	sh	zero,6(a0)
      34:	8caa0008 	lw	t2,8(a1)
      38:	000a5840 	sll	t3,t2,0x1
      3c:	01626021 	addu	t4,t3,v0
      40:	000c6840 	sll	t5,t4,0x1
      44:	a48d0008 	sh	t5,8(a0)
      48:	8cae0000 	lw	t6,0(a1)
      4c:	a486000c 	sh	a2,12(a0)
      50:	a480000e 	sh	zero,14(a0)
      54:	000e7840 	sll	t7,t6,0x1
      58:	01e3c021 	addu	t8,t7,v1
      5c:	0018c840 	sll	t9,t8,0x1
      60:	03e00008 	jr	ra
      64:	a499000a 	sh	t9,10(a0)

00000068 <View_New>:
      68:	27bdffe0 	addiu	sp,sp,-32
      6c:	afbf0014 	sw	ra,20(sp)
      70:	afa40020 	sw	a0,32(sp)
      74:	3c050000 	lui	a1,0x0
      78:	24a50000 	addiu	a1,a1,0
      7c:	24040128 	li	a0,296
      80:	0c000000 	jal	0 <View_ViewportToVp>
      84:	2406011d 	li	a2,285
      88:	10400008 	beqz	v0,ac <View_New+0x44>
      8c:	afa2001c 	sw	v0,28(sp)
      90:	00402025 	move	a0,v0
      94:	00002825 	move	a1,zero
      98:	0c000000 	jal	0 <View_ViewportToVp>
      9c:	24060128 	li	a2,296
      a0:	8fa4001c 	lw	a0,28(sp)
      a4:	0c000000 	jal	0 <View_ViewportToVp>
      a8:	8fa50020 	lw	a1,32(sp)
      ac:	8fbf0014 	lw	ra,20(sp)
      b0:	8fa2001c 	lw	v0,28(sp)
      b4:	27bd0020 	addiu	sp,sp,32
      b8:	03e00008 	jr	ra
      bc:	00000000 	nop

000000c0 <View_Free>:
      c0:	27bdffe8 	addiu	sp,sp,-24
      c4:	afbf0014 	sw	ra,20(sp)
      c8:	3c050000 	lui	a1,0x0
      cc:	24a5000c 	addiu	a1,a1,12
      d0:	0c000000 	jal	0 <View_ViewportToVp>
      d4:	24060129 	li	a2,297
      d8:	8fbf0014 	lw	ra,20(sp)
      dc:	27bd0018 	addiu	sp,sp,24
      e0:	03e00008 	jr	ra
      e4:	00000000 	nop

000000e8 <View_Init>:
      e8:	27bdffe8 	addiu	sp,sp,-24
      ec:	afbf0014 	sw	ra,20(sp)
      f0:	3c013f80 	lui	at,0x3f80
      f4:	44811000 	mtc1	at,$f2
      f8:	3c014270 	lui	at,0x4270
      fc:	44812000 	mtc1	at,$f4
     100:	3c014120 	lui	at,0x4120
     104:	44800000 	mtc1	zero,$f0
     108:	44813000 	mtc1	at,$f6
     10c:	3c014648 	lui	at,0x4648
     110:	44814000 	mtc1	at,$f8
     114:	3c01bf80 	lui	at,0xbf80
     118:	44815000 	mtc1	at,$f10
     11c:	3c185649 	lui	t8,0x5649
     120:	3c020000 	lui	v0,0x0
     124:	240e00f0 	li	t6,240
     128:	240f0140 	li	t7,320
     12c:	37184557 	ori	t8,t8,0x4557
     130:	24420000 	addiu	v0,v0,0
     134:	ac850004 	sw	a1,4(a0)
     138:	ac800008 	sw	zero,8(a0)
     13c:	ac8e000c 	sw	t6,12(a0)
     140:	ac800010 	sw	zero,16(a0)
     144:	ac8f0014 	sw	t7,20(a0)
     148:	ac980000 	sw	t8,0(a0)
     14c:	e4820024 	swc1	$f2,36(a0)
     150:	e4820044 	swc1	$f2,68(a0)
     154:	e4840018 	swc1	$f4,24(a0)
     158:	e4800028 	swc1	$f0,40(a0)
     15c:	e480002c 	swc1	$f0,44(a0)
     160:	e4800034 	swc1	$f0,52(a0)
     164:	e4800040 	swc1	$f0,64(a0)
     168:	e4800048 	swc1	$f0,72(a0)
     16c:	e486001c 	swc1	$f6,28(a0)
     170:	e4880020 	swc1	$f8,32(a0)
     174:	e48a0030 	swc1	$f10,48(a0)
     178:	8c590000 	lw	t9,0(v0)
     17c:	00803025 	move	a2,a0
     180:	3c040000 	lui	a0,0x0
     184:	13200007 	beqz	t9,1a4 <View_Init+0xbc>
     188:	24840018 	addiu	a0,a0,24
     18c:	0c000000 	jal	0 <View_ViewportToVp>
     190:	afa60018 	sw	a2,24(sp)
     194:	3c020000 	lui	v0,0x0
     198:	24420000 	addiu	v0,v0,0
     19c:	8fa60018 	lw	a2,24(sp)
     1a0:	ac400000 	sw	zero,0(v0)
     1a4:	24080007 	li	t0,7
     1a8:	acc00124 	sw	zero,292(a2)
     1ac:	acc80120 	sw	t0,288(a2)
     1b0:	0c000000 	jal	0 <View_ViewportToVp>
     1b4:	00c02025 	move	a0,a2
     1b8:	8fbf0014 	lw	ra,20(sp)
     1bc:	27bd0018 	addiu	sp,sp,24
     1c0:	03e00008 	jr	ra
     1c4:	00000000 	nop

000001c8 <func_800AA358>:
     1c8:	c4a00000 	lwc1	$f0,0(a1)
     1cc:	c4c40000 	lwc1	$f4,0(a2)
     1d0:	46002032 	c.eq.s	$f4,$f0
     1d4:	00000000 	nop
     1d8:	4502000c 	bc1fl	20c <func_800AA358+0x44>
     1dc:	8caf0000 	lw	t7,0(a1)
     1e0:	c4c60008 	lwc1	$f6,8(a2)
     1e4:	c4a80008 	lwc1	$f8,8(a1)
     1e8:	3c010000 	lui	at,0x0
     1ec:	46083032 	c.eq.s	$f6,$f8
     1f0:	00000000 	nop
     1f4:	45020005 	bc1fl	20c <func_800AA358+0x44>
     1f8:	8caf0000 	lw	t7,0(a1)
     1fc:	c42a0314 	lwc1	$f10,788(at)
     200:	460a0400 	add.s	$f16,$f0,$f10
     204:	e4b00000 	swc1	$f16,0(a1)
     208:	8caf0000 	lw	t7,0(a1)
     20c:	8c8a0120 	lw	t2,288(a0)
     210:	ac8f0028 	sw	t7,40(a0)
     214:	8cae0004 	lw	t6,4(a1)
     218:	354b0001 	ori	t3,t2,0x1
     21c:	ac8e002c 	sw	t6,44(a0)
     220:	8caf0008 	lw	t7,8(a1)
     224:	ac8f0030 	sw	t7,48(a0)
     228:	8cd90000 	lw	t9,0(a2)
     22c:	ac990034 	sw	t9,52(a0)
     230:	8cd80004 	lw	t8,4(a2)
     234:	ac980038 	sw	t8,56(a0)
     238:	8cd90008 	lw	t9,8(a2)
     23c:	ac99003c 	sw	t9,60(a0)
     240:	8ce90000 	lw	t1,0(a3)
     244:	ac890040 	sw	t1,64(a0)
     248:	8ce80004 	lw	t0,4(a3)
     24c:	ac880044 	sw	t0,68(a0)
     250:	8ce90008 	lw	t1,8(a3)
     254:	ac8b0120 	sw	t3,288(a0)
     258:	03e00008 	jr	ra
     25c:	ac890048 	sw	t1,72(a0)

00000260 <func_800AA3F0>:
     260:	8caf0000 	lw	t7,0(a1)
     264:	ac8f0028 	sw	t7,40(a0)
     268:	8cae0004 	lw	t6,4(a1)
     26c:	ac8e002c 	sw	t6,44(a0)
     270:	8caf0008 	lw	t7,8(a1)
     274:	ac8f0030 	sw	t7,48(a0)
     278:	8cd90000 	lw	t9,0(a2)
     27c:	ac990034 	sw	t9,52(a0)
     280:	8cd80004 	lw	t8,4(a2)
     284:	ac980038 	sw	t8,56(a0)
     288:	8cd90008 	lw	t9,8(a2)
     28c:	ac99003c 	sw	t9,60(a0)
     290:	8ce90000 	lw	t1,0(a3)
     294:	ac890040 	sw	t1,64(a0)
     298:	8ce80004 	lw	t0,4(a3)
     29c:	ac880044 	sw	t0,68(a0)
     2a0:	8ce90008 	lw	t1,8(a3)
     2a4:	03e00008 	jr	ra
     2a8:	ac890048 	sw	t1,72(a0)

000002ac <View_SetScale>:
     2ac:	8c8e0120 	lw	t6,288(a0)
     2b0:	44856000 	mtc1	a1,$f12
     2b4:	35cf0004 	ori	t7,t6,0x4
     2b8:	ac8f0120 	sw	t7,288(a0)
     2bc:	03e00008 	jr	ra
     2c0:	e48c0024 	swc1	$f12,36(a0)

000002c4 <View_GetScale>:
     2c4:	c4840024 	lwc1	$f4,36(a0)
     2c8:	03e00008 	jr	ra
     2cc:	e4a40000 	swc1	$f4,0(a1)

000002d0 <func_800AA460>:
     2d0:	44856000 	mtc1	a1,$f12
     2d4:	44867000 	mtc1	a2,$f14
     2d8:	afa7000c 	sw	a3,12(sp)
     2dc:	8c8e0120 	lw	t6,288(a0)
     2e0:	e48c0018 	swc1	$f12,24(a0)
     2e4:	e48e001c 	swc1	$f14,28(a0)
     2e8:	c7a4000c 	lwc1	$f4,12(sp)
     2ec:	35cf0004 	ori	t7,t6,0x4
     2f0:	ac8f0120 	sw	t7,288(a0)
     2f4:	03e00008 	jr	ra
     2f8:	e4840020 	swc1	$f4,32(a0)

000002fc <func_800AA48C>:
     2fc:	c4840018 	lwc1	$f4,24(a0)
     300:	e4a40000 	swc1	$f4,0(a1)
     304:	c486001c 	lwc1	$f6,28(a0)
     308:	e4c60000 	swc1	$f6,0(a2)
     30c:	c4880020 	lwc1	$f8,32(a0)
     310:	03e00008 	jr	ra
     314:	e4e80000 	swc1	$f8,0(a3)

00000318 <func_800AA4A8>:
     318:	44856000 	mtc1	a1,$f12
     31c:	44867000 	mtc1	a2,$f14
     320:	afa7000c 	sw	a3,12(sp)
     324:	8c8e0120 	lw	t6,288(a0)
     328:	3c013f80 	lui	at,0x3f80
     32c:	e48c0018 	swc1	$f12,24(a0)
     330:	e48e001c 	swc1	$f14,28(a0)
     334:	c7a4000c 	lwc1	$f4,12(sp)
     338:	44813000 	mtc1	at,$f6
     33c:	35cf0008 	ori	t7,t6,0x8
     340:	ac8f0120 	sw	t7,288(a0)
     344:	e4840020 	swc1	$f4,32(a0)
     348:	03e00008 	jr	ra
     34c:	e4860024 	swc1	$f6,36(a0)

00000350 <func_800AA4E0>:
     350:	c4840018 	lwc1	$f4,24(a0)
     354:	e4a40000 	swc1	$f4,0(a1)
     358:	c486001c 	lwc1	$f6,28(a0)
     35c:	e4c60000 	swc1	$f6,0(a2)
     360:	c4880020 	lwc1	$f8,32(a0)
     364:	03e00008 	jr	ra
     368:	e4e80000 	swc1	$f8,0(a3)

0000036c <View_SetViewport>:
     36c:	8caf0000 	lw	t7,0(a1)
     370:	8c980120 	lw	t8,288(a0)
     374:	ac8f0008 	sw	t7,8(a0)
     378:	8cae0004 	lw	t6,4(a1)
     37c:	37190002 	ori	t9,t8,0x2
     380:	ac8e000c 	sw	t6,12(a0)
     384:	8caf0008 	lw	t7,8(a1)
     388:	ac8f0010 	sw	t7,16(a0)
     38c:	8cae000c 	lw	t6,12(a1)
     390:	ac990120 	sw	t9,288(a0)
     394:	03e00008 	jr	ra
     398:	ac8e0014 	sw	t6,20(a0)

0000039c <View_GetViewport>:
     39c:	8c8f0008 	lw	t7,8(a0)
     3a0:	acaf0000 	sw	t7,0(a1)
     3a4:	8c8e000c 	lw	t6,12(a0)
     3a8:	acae0004 	sw	t6,4(a1)
     3ac:	8c8f0010 	lw	t7,16(a0)
     3b0:	acaf0008 	sw	t7,8(a1)
     3b4:	8c8e0014 	lw	t6,20(a0)
     3b8:	03e00008 	jr	ra
     3bc:	acae000c 	sw	t6,12(a1)

000003c0 <func_800AA550>:
     3c0:	27bdff90 	addiu	sp,sp,-112
     3c4:	afbf001c 	sw	ra,28(sp)
     3c8:	afb00018 	sw	s0,24(sp)
     3cc:	8c900004 	lw	s0,4(a0)
     3d0:	0c000000 	jal	0 <View_ViewportToVp>
     3d4:	afa40070 	sw	a0,112(sp)
     3d8:	8fa50070 	lw	a1,112(sp)
     3dc:	00401825 	move	v1,v0
     3e0:	04410002 	bgez	v0,3ec <func_800AA550+0x2c>
     3e4:	00002025 	move	a0,zero
     3e8:	00001825 	move	v1,zero
     3ec:	28610079 	slti	at,v1,121
     3f0:	14200002 	bnez	at,3fc <func_800AA550+0x3c>
     3f4:	240601c6 	li	a2,454
     3f8:	24030078 	li	v1,120
     3fc:	8cae0010 	lw	t6,16(a1)
     400:	01c47821 	addu	t7,t6,a0
     404:	afaf0060 	sw	t7,96(sp)
     408:	8cb80008 	lw	t8,8(a1)
     40c:	0303c821 	addu	t9,t8,v1
     410:	afb9005c 	sw	t9,92(sp)
     414:	8ca80014 	lw	t0,20(a1)
     418:	01044823 	subu	t1,t0,a0
     41c:	afa90058 	sw	t1,88(sp)
     420:	8caa000c 	lw	t2,12(a1)
     424:	3c040000 	lui	a0,0x0
     428:	24840030 	addiu	a0,a0,48
     42c:	01435823 	subu	t3,t2,v1
     430:	05e10004 	bgez	t7,444 <func_800AA550+0x84>
     434:	afab0054 	sw	t3,84(sp)
     438:	3c050000 	lui	a1,0x0
     43c:	0c000000 	jal	0 <View_ViewportToVp>
     440:	24a5003c 	addiu	a1,a1,60
     444:	8fad005c 	lw	t5,92(sp)
     448:	3c040000 	lui	a0,0x0
     44c:	24840048 	addiu	a0,a0,72
     450:	05a10004 	bgez	t5,464 <func_800AA550+0xa4>
     454:	3c050000 	lui	a1,0x0
     458:	24a50054 	addiu	a1,a1,84
     45c:	0c000000 	jal	0 <View_ViewportToVp>
     460:	240601c7 	li	a2,455
     464:	8fae0058 	lw	t6,88(sp)
     468:	3c040000 	lui	a0,0x0
     46c:	24840060 	addiu	a0,a0,96
     470:	29c10141 	slti	at,t6,321
     474:	14200004 	bnez	at,488 <func_800AA550+0xc8>
     478:	3c050000 	lui	a1,0x0
     47c:	24a50074 	addiu	a1,a1,116
     480:	0c000000 	jal	0 <View_ViewportToVp>
     484:	240601c8 	li	a2,456
     488:	8faf0054 	lw	t7,84(sp)
     48c:	3c040000 	lui	a0,0x0
     490:	24840080 	addiu	a0,a0,128
     494:	29e100f1 	slti	at,t7,241
     498:	14200004 	bnez	at,4ac <func_800AA550+0xec>
     49c:	3c050000 	lui	a1,0x0
     4a0:	24a50094 	addiu	a1,a1,148
     4a4:	0c000000 	jal	0 <View_ViewportToVp>
     4a8:	240601c9 	li	a2,457
     4ac:	3c060000 	lui	a2,0x0
     4b0:	24c600a0 	addiu	a2,a2,160
     4b4:	27a4003c 	addiu	a0,sp,60
     4b8:	02002825 	move	a1,s0
     4bc:	0c000000 	jal	0 <View_ViewportToVp>
     4c0:	240701cb 	li	a3,459
     4c4:	8e0302c0 	lw	v1,704(s0)
     4c8:	3c06e700 	lui	a2,0xe700
     4cc:	3c014080 	lui	at,0x4080
     4d0:	24780008 	addiu	t8,v1,8
     4d4:	ae1802c0 	sw	t8,704(s0)
     4d8:	ac600004 	sw	zero,4(v1)
     4dc:	ac660000 	sw	a2,0(v1)
     4e0:	8e0302c0 	lw	v1,704(s0)
     4e4:	44810000 	mtc1	at,$f0
     4e8:	3c01ed00 	lui	at,0xed00
     4ec:	24790008 	addiu	t9,v1,8
     4f0:	ae1902c0 	sw	t9,704(s0)
     4f4:	8fa80060 	lw	t0,96(sp)
     4f8:	8fae005c 	lw	t6,92(sp)
     4fc:	240701d8 	li	a3,472
     500:	44882000 	mtc1	t0,$f4
     504:	448e8000 	mtc1	t6,$f16
     508:	468021a0 	cvt.s.w	$f6,$f4
     50c:	468084a0 	cvt.s.w	$f18,$f16
     510:	46003202 	mul.s	$f8,$f6,$f0
     514:	00000000 	nop
     518:	46009102 	mul.s	$f4,$f18,$f0
     51c:	4600428d 	trunc.w.s	$f10,$f8
     520:	4600218d 	trunc.w.s	$f6,$f4
     524:	440a5000 	mfc1	t2,$f10
     528:	44183000 	mfc1	t8,$f6
     52c:	314b0fff 	andi	t3,t2,0xfff
     530:	000b6300 	sll	t4,t3,0xc
     534:	01816825 	or	t5,t4,at
     538:	33190fff 	andi	t9,t8,0xfff
     53c:	01b92025 	or	a0,t5,t9
     540:	ac640000 	sw	a0,0(v1)
     544:	8fa80058 	lw	t0,88(sp)
     548:	8fae0054 	lw	t6,84(sp)
     54c:	44884000 	mtc1	t0,$f8
     550:	448e2000 	mtc1	t6,$f4
     554:	468042a0 	cvt.s.w	$f10,$f8
     558:	468021a0 	cvt.s.w	$f6,$f4
     55c:	46005402 	mul.s	$f16,$f10,$f0
     560:	00000000 	nop
     564:	46003202 	mul.s	$f8,$f6,$f0
     568:	4600848d 	trunc.w.s	$f18,$f16
     56c:	4600428d 	trunc.w.s	$f10,$f8
     570:	440a9000 	mfc1	t2,$f18
     574:	44185000 	mfc1	t8,$f10
     578:	314b0fff 	andi	t3,t2,0xfff
     57c:	000b6300 	sll	t4,t3,0xc
     580:	330d0fff 	andi	t5,t8,0xfff
     584:	018d2825 	or	a1,t4,t5
     588:	ac650004 	sw	a1,4(v1)
     58c:	8e0302d0 	lw	v1,720(s0)
     590:	24790008 	addiu	t9,v1,8
     594:	ae1902d0 	sw	t9,720(s0)
     598:	ac600004 	sw	zero,4(v1)
     59c:	ac660000 	sw	a2,0(v1)
     5a0:	8e0302d0 	lw	v1,720(s0)
     5a4:	3c060000 	lui	a2,0x0
     5a8:	24c600ac 	addiu	a2,a2,172
     5ac:	24680008 	addiu	t0,v1,8
     5b0:	ae0802d0 	sw	t0,720(s0)
     5b4:	ac650004 	sw	a1,4(v1)
     5b8:	ac640000 	sw	a0,0(v1)
     5bc:	27a4003c 	addiu	a0,sp,60
     5c0:	0c000000 	jal	0 <View_ViewportToVp>
     5c4:	02002825 	move	a1,s0
     5c8:	8fbf001c 	lw	ra,28(sp)
     5cc:	8fb00018 	lw	s0,24(sp)
     5d0:	27bd0070 	addiu	sp,sp,112
     5d4:	03e00008 	jr	ra
     5d8:	00000000 	nop

000005dc <func_800AA76C>:
     5dc:	44856000 	mtc1	a1,$f12
     5e0:	44867000 	mtc1	a2,$f14
     5e4:	afa7000c 	sw	a3,12(sp)
     5e8:	e48c00e8 	swc1	$f12,232(a0)
     5ec:	e48e00ec 	swc1	$f14,236(a0)
     5f0:	c7a4000c 	lwc1	$f4,12(sp)
     5f4:	03e00008 	jr	ra
     5f8:	e48400f0 	swc1	$f4,240(a0)

000005fc <func_800AA78C>:
     5fc:	44856000 	mtc1	a1,$f12
     600:	44867000 	mtc1	a2,$f14
     604:	afa7000c 	sw	a3,12(sp)
     608:	e48c00f4 	swc1	$f12,244(a0)
     60c:	e48e00f8 	swc1	$f14,248(a0)
     610:	c7a4000c 	lwc1	$f4,12(sp)
     614:	03e00008 	jr	ra
     618:	e48400fc 	swc1	$f4,252(a0)

0000061c <func_800AA7AC>:
     61c:	44856000 	mtc1	a1,$f12
     620:	03e00008 	jr	ra
     624:	e48c0100 	swc1	$f12,256(a0)

00000628 <func_800AA7B8>:
     628:	44809000 	mtc1	zero,$f18
     62c:	3c013f80 	lui	at,0x3f80
     630:	44818000 	mtc1	at,$f16
     634:	e49200e8 	swc1	$f18,232(a0)
     638:	8c8f00e8 	lw	t7,232(a0)
     63c:	e49000f4 	swc1	$f16,244(a0)
     640:	8c9900f4 	lw	t9,244(a0)
     644:	e49200ec 	swc1	$f18,236(a0)
     648:	8c8e00ec 	lw	t6,236(a0)
     64c:	e49200f0 	swc1	$f18,240(a0)
     650:	e49000f8 	swc1	$f16,248(a0)
     654:	8c9800f8 	lw	t8,248(a0)
     658:	e49000fc 	swc1	$f16,252(a0)
     65c:	ac8f0104 	sw	t7,260(a0)
     660:	8c8f00f0 	lw	t7,240(a0)
     664:	ac990110 	sw	t9,272(a0)
     668:	8c9900fc 	lw	t9,252(a0)
     66c:	ac8e0108 	sw	t6,264(a0)
     670:	ac8f010c 	sw	t7,268(a0)
     674:	ac980114 	sw	t8,276(a0)
     678:	ac990118 	sw	t9,280(a0)
     67c:	03e00008 	jr	ra
     680:	e4920100 	swc1	$f18,256(a0)

00000684 <func_800AA814>:
     684:	44809000 	mtc1	zero,$f18
     688:	3c013f80 	lui	at,0x3f80
     68c:	44818000 	mtc1	at,$f16
     690:	e49200e8 	swc1	$f18,232(a0)
     694:	e49200ec 	swc1	$f18,236(a0)
     698:	e49200f0 	swc1	$f18,240(a0)
     69c:	e49000f4 	swc1	$f16,244(a0)
     6a0:	e49000f8 	swc1	$f16,248(a0)
     6a4:	e49000fc 	swc1	$f16,252(a0)
     6a8:	03e00008 	jr	ra
     6ac:	e4900100 	swc1	$f16,256(a0)

000006b0 <func_800AA840>:
     6b0:	afa50004 	sw	a1,4(sp)
     6b4:	afa60008 	sw	a2,8(sp)
     6b8:	afa7000c 	sw	a3,12(sp)
     6bc:	27ae0004 	addiu	t6,sp,4
     6c0:	8dd80000 	lw	t8,0(t6)
     6c4:	27b90010 	addiu	t9,sp,16
     6c8:	ac9800e8 	sw	t8,232(a0)
     6cc:	8dcf0004 	lw	t7,4(t6)
     6d0:	ac8f00ec 	sw	t7,236(a0)
     6d4:	8dd80008 	lw	t8,8(t6)
     6d8:	ac9800f0 	sw	t8,240(a0)
     6dc:	8f290000 	lw	t1,0(t9)
     6e0:	ac8900f4 	sw	t1,244(a0)
     6e4:	8f280004 	lw	t0,4(t9)
     6e8:	ac8800f8 	sw	t0,248(a0)
     6ec:	8f290008 	lw	t1,8(t9)
     6f0:	ac8900fc 	sw	t1,252(a0)
     6f4:	c7a4001c 	lwc1	$f4,28(sp)
     6f8:	03e00008 	jr	ra
     6fc:	e4840100 	swc1	$f4,256(a0)

00000700 <func_800AA890>:
     700:	27bdff98 	addiu	sp,sp,-104
     704:	afbf001c 	sw	ra,28(sp)
     708:	afb00018 	sw	s0,24(sp)
     70c:	afa5006c 	sw	a1,108(sp)
     710:	44801000 	mtc1	zero,$f2
     714:	c4800100 	lwc1	$f0,256(a0)
     718:	00808025 	move	s0,a0
     71c:	3c013f80 	lui	at,0x3f80
     720:	46001032 	c.eq.s	$f2,$f0
     724:	27a50028 	addiu	a1,sp,40
     728:	45020004 	bc1fl	73c <func_800AA890+0x3c>
     72c:	44812000 	mtc1	at,$f4
     730:	1000005e 	b	8ac <func_800AA890+0x1ac>
     734:	00001025 	move	v0,zero
     738:	44812000 	mtc1	at,$f4
     73c:	00000000 	nop
     740:	46002032 	c.eq.s	$f4,$f0
     744:	00000000 	nop
     748:	45020010 	bc1fl	78c <func_800AA890+0x8c>
     74c:	c6020104 	lwc1	$f2,260(s0)
     750:	8e0f00e8 	lw	t7,232(s0)
     754:	8e1900f4 	lw	t9,244(s0)
     758:	8e0e00ec 	lw	t6,236(s0)
     75c:	ae0f0104 	sw	t7,260(s0)
     760:	ae190110 	sw	t9,272(s0)
     764:	8e0f00f0 	lw	t7,240(s0)
     768:	8e1900fc 	lw	t9,252(s0)
     76c:	8e1800f8 	lw	t8,248(s0)
     770:	e6020100 	swc1	$f2,256(s0)
     774:	ae0e0108 	sw	t6,264(s0)
     778:	ae0f010c 	sw	t7,268(s0)
     77c:	ae190118 	sw	t9,280(s0)
     780:	10000026 	b	81c <func_800AA890+0x11c>
     784:	ae180114 	sw	t8,276(s0)
     788:	c6020104 	lwc1	$f2,260(s0)
     78c:	c60600e8 	lwc1	$f6,232(s0)
     790:	c60c0108 	lwc1	$f12,264(s0)
     794:	c60400ec 	lwc1	$f4,236(s0)
     798:	46023201 	sub.s	$f8,$f6,$f2
     79c:	c60e010c 	lwc1	$f14,268(s0)
     7a0:	c6100110 	lwc1	$f16,272(s0)
     7a4:	460c2181 	sub.s	$f6,$f4,$f12
     7a8:	46004282 	mul.s	$f10,$f8,$f0
     7ac:	460a1480 	add.s	$f18,$f2,$f10
     7b0:	46003202 	mul.s	$f8,$f6,$f0
     7b4:	c6020114 	lwc1	$f2,276(s0)
     7b8:	e6120104 	swc1	$f18,260(s0)
     7bc:	c61200f0 	lwc1	$f18,240(s0)
     7c0:	46086280 	add.s	$f10,$f12,$f8
     7c4:	c60c0118 	lwc1	$f12,280(s0)
     7c8:	460e9101 	sub.s	$f4,$f18,$f14
     7cc:	e60a0108 	swc1	$f10,264(s0)
     7d0:	c60a00f4 	lwc1	$f10,244(s0)
     7d4:	46002182 	mul.s	$f6,$f4,$f0
     7d8:	46105481 	sub.s	$f18,$f10,$f16
     7dc:	46009102 	mul.s	$f4,$f18,$f0
     7e0:	46067200 	add.s	$f8,$f14,$f6
     7e4:	e608010c 	swc1	$f8,268(s0)
     7e8:	46048180 	add.s	$f6,$f16,$f4
     7ec:	c60800f8 	lwc1	$f8,248(s0)
     7f0:	e6060110 	swc1	$f6,272(s0)
     7f4:	46024281 	sub.s	$f10,$f8,$f2
     7f8:	c60600fc 	lwc1	$f6,252(s0)
     7fc:	460c3201 	sub.s	$f8,$f6,$f12
     800:	46005482 	mul.s	$f18,$f10,$f0
     804:	00000000 	nop
     808:	46004282 	mul.s	$f10,$f8,$f0
     80c:	46121100 	add.s	$f4,$f2,$f18
     810:	460a6480 	add.s	$f18,$f12,$f10
     814:	e6040114 	swc1	$f4,276(s0)
     818:	e6120118 	swc1	$f18,280(s0)
     81c:	0c000000 	jal	0 <View_ViewportToVp>
     820:	8fa4006c 	lw	a0,108(sp)
     824:	0c000000 	jal	0 <View_ViewportToVp>
     828:	27a40028 	addiu	a0,sp,40
     82c:	c60c0104 	lwc1	$f12,260(s0)
     830:	0c000000 	jal	0 <View_ViewportToVp>
     834:	24050001 	li	a1,1
     838:	c60c0108 	lwc1	$f12,264(s0)
     83c:	0c000000 	jal	0 <View_ViewportToVp>
     840:	24050001 	li	a1,1
     844:	c60c010c 	lwc1	$f12,268(s0)
     848:	0c000000 	jal	0 <View_ViewportToVp>
     84c:	24050001 	li	a1,1
     850:	c60c0110 	lwc1	$f12,272(s0)
     854:	c60e0114 	lwc1	$f14,276(s0)
     858:	8e060118 	lw	a2,280(s0)
     85c:	0c000000 	jal	0 <View_ViewportToVp>
     860:	24070001 	li	a3,1
     864:	c60c010c 	lwc1	$f12,268(s0)
     868:	24050001 	li	a1,1
     86c:	0c000000 	jal	0 <View_ViewportToVp>
     870:	46006307 	neg.s	$f12,$f12
     874:	c60c0108 	lwc1	$f12,264(s0)
     878:	24050001 	li	a1,1
     87c:	0c000000 	jal	0 <View_ViewportToVp>
     880:	46006307 	neg.s	$f12,$f12
     884:	c60c0104 	lwc1	$f12,260(s0)
     888:	24050001 	li	a1,1
     88c:	0c000000 	jal	0 <View_ViewportToVp>
     890:	46006307 	neg.s	$f12,$f12
     894:	3c050000 	lui	a1,0x0
     898:	24a500b8 	addiu	a1,a1,184
     89c:	8fa4006c 	lw	a0,108(sp)
     8a0:	0c000000 	jal	0 <View_ViewportToVp>
     8a4:	24060236 	li	a2,566
     8a8:	24020001 	li	v0,1
     8ac:	8fbf001c 	lw	ra,28(sp)
     8b0:	8fb00018 	lw	s0,24(sp)
     8b4:	27bd0068 	addiu	sp,sp,104
     8b8:	03e00008 	jr	ra
     8bc:	00000000 	nop

000008c0 <func_800AAA50>:
     8c0:	27bdffe8 	addiu	sp,sp,-24
     8c4:	afbf0014 	sw	ra,20(sp)
     8c8:	8c8e0120 	lw	t6,288(a0)
     8cc:	0005c103 	sra	t8,a1,0x4
     8d0:	01c57824 	and	t7,t6,a1
     8d4:	01f82825 	or	a1,t7,t8
     8d8:	30b90008 	andi	t9,a1,0x8
     8dc:	13200005 	beqz	t9,8f4 <func_800AAA50+0x34>
     8e0:	00000000 	nop
     8e4:	0c000000 	jal	0 <View_ViewportToVp>
     8e8:	00000000 	nop
     8ec:	10000004 	b	900 <func_800AAA50+0x40>
     8f0:	8fbf0014 	lw	ra,20(sp)
     8f4:	0c000000 	jal	0 <View_ViewportToVp>
     8f8:	00000000 	nop
     8fc:	8fbf0014 	lw	ra,20(sp)
     900:	27bd0018 	addiu	sp,sp,24
     904:	03e00008 	jr	ra
     908:	00000000 	nop

0000090c <func_800AAA9C>:
     90c:	27bdfec8 	addiu	sp,sp,-312
     910:	afbf004c 	sw	ra,76(sp)
     914:	afb20048 	sw	s2,72(sp)
     918:	afb10044 	sw	s1,68(sp)
     91c:	afb00040 	sw	s0,64(sp)
     920:	8c920004 	lw	s2,4(a0)
     924:	00808825 	move	s1,a0
     928:	3c060000 	lui	a2,0x0
     92c:	24c600c4 	addiu	a2,a2,196
     930:	27a40108 	addiu	a0,sp,264
     934:	24070254 	li	a3,596
     938:	0c000000 	jal	0 <View_ViewportToVp>
     93c:	02402825 	move	a1,s2
     940:	02402025 	move	a0,s2
     944:	0c000000 	jal	0 <View_ViewportToVp>
     948:	24050010 	li	a1,16
     94c:	3c040000 	lui	a0,0x0
     950:	3c060000 	lui	a2,0x0
     954:	00408025 	move	s0,v0
     958:	24c600d4 	addiu	a2,a2,212
     95c:	248400d0 	addiu	a0,a0,208
     960:	00402825 	move	a1,v0
     964:	0c000000 	jal	0 <View_ViewportToVp>
     968:	24070259 	li	a3,601
     96c:	02002025 	move	a0,s0
     970:	0c000000 	jal	0 <View_ViewportToVp>
     974:	26250008 	addiu	a1,s1,8
     978:	8e0f0000 	lw	t7,0(s0)
     97c:	02202025 	move	a0,s1
     980:	ae2f0050 	sw	t7,80(s1)
     984:	8e0e0004 	lw	t6,4(s0)
     988:	ae2e0054 	sw	t6,84(s1)
     98c:	8e0f0008 	lw	t7,8(s0)
     990:	ae2f0058 	sw	t7,88(s1)
     994:	8e0e000c 	lw	t6,12(s0)
     998:	0c000000 	jal	0 <View_ViewportToVp>
     99c:	ae2e005c 	sw	t6,92(s1)
     9a0:	8e4202c0 	lw	v0,704(s2)
     9a4:	3c04dc08 	lui	a0,0xdc08
     9a8:	34840008 	ori	a0,a0,0x8
     9ac:	24580008 	addiu	t8,v0,8
     9b0:	ae5802c0 	sw	t8,704(s2)
     9b4:	ac500004 	sw	s0,4(v0)
     9b8:	ac440000 	sw	a0,0(v0)
     9bc:	8e4202d0 	lw	v0,720(s2)
     9c0:	24050040 	li	a1,64
     9c4:	24590008 	addiu	t9,v0,8
     9c8:	ae5902d0 	sw	t9,720(s2)
     9cc:	ac440000 	sw	a0,0(v0)
     9d0:	02402025 	move	a0,s2
     9d4:	0c000000 	jal	0 <View_ViewportToVp>
     9d8:	ac500004 	sw	s0,4(v0)
     9dc:	3c040000 	lui	a0,0x0
     9e0:	3c060000 	lui	a2,0x0
     9e4:	afa20124 	sw	v0,292(sp)
     9e8:	24c600ec 	addiu	a2,a2,236
     9ec:	248400e0 	addiu	a0,a0,224
     9f0:	00402825 	move	a1,v0
     9f4:	0c000000 	jal	0 <View_ViewportToVp>
     9f8:	24070268 	li	a3,616
     9fc:	8fa40124 	lw	a0,292(sp)
     a00:	8e2b000c 	lw	t3,12(s1)
     a04:	8e2c0008 	lw	t4,8(s1)
     a08:	3c080000 	lui	t0,0x0
     a0c:	25080000 	addiu	t0,t0,0
     a10:	ae2400e0 	sw	a0,224(s1)
     a14:	8d020000 	lw	v0,0(t0)
     a18:	8e290014 	lw	t1,20(s1)
     a1c:	8e2a0010 	lw	t2,16(s1)
     a20:	016c6823 	subu	t5,t3,t4
     a24:	afad012c 	sw	t5,300(sp)
     a28:	844e1074 	lh	t6,4212(v0)
     a2c:	2403000b 	li	v1,11
     a30:	012a8023 	subu	s0,t1,t2
     a34:	546e0035 	bnel	v1,t6,b0c <func_800AAA9C+0x200>
     a38:	8fad012c 	lw	t5,300(sp)
     a3c:	844f1090 	lh	t7,4240(v0)
     a40:	506f0013 	beql	v1,t7,a90 <func_800AAA9C+0x184>
     a44:	8459107a 	lh	t9,4218(v0)
     a48:	a4431090 	sh	v1,4240(v0)
     a4c:	8d190000 	lw	t9,0(t0)
     a50:	2418003c 	li	t8,60
     a54:	24093415 	li	t1,13333
     a58:	a738107a 	sh	t8,4218(t9)
     a5c:	8d0a0000 	lw	t2,0(t0)
     a60:	240b000a 	li	t3,10
     a64:	240d3200 	li	t5,12800
     a68:	a549107c 	sh	t1,4220(t2)
     a6c:	8d0c0000 	lw	t4,0(t0)
     a70:	240f0064 	li	t7,100
     a74:	a58b107e 	sh	t3,4222(t4)
     a78:	8d0e0000 	lw	t6,0(t0)
     a7c:	a5cd1080 	sh	t5,4224(t6)
     a80:	8d180000 	lw	t8,0(t0)
     a84:	a70f1082 	sh	t7,4226(t8)
     a88:	8d020000 	lw	v0,0(t0)
     a8c:	8459107a 	lh	t9,4218(v0)
     a90:	8449107c 	lh	t1,4220(v0)
     a94:	844a107e 	lh	t2,4222(v0)
     a98:	44992000 	mtc1	t9,$f4
     a9c:	44893000 	mtc1	t1,$f6
     aa0:	448a9000 	mtc1	t2,$f18
     aa4:	46802120 	cvt.s.w	$f4,$f4
     aa8:	3c010000 	lui	at,0x0
     aac:	c42a0318 	lwc1	$f10,792(at)
     ab0:	3c0142c8 	lui	at,0x42c8
     ab4:	2625011c 	addiu	a1,s1,284
     ab8:	46803220 	cvt.s.w	$f8,$f6
     abc:	44062000 	mfc1	a2,$f4
     ac0:	46809120 	cvt.s.w	$f4,$f18
     ac4:	44819000 	mtc1	at,$f18
     ac8:	460a4403 	div.s	$f16,$f8,$f10
     acc:	e7a40010 	swc1	$f4,16(sp)
     ad0:	844b1080 	lh	t3,4224(v0)
     ad4:	448b3000 	mtc1	t3,$f6
     ad8:	00000000 	nop
     adc:	46803220 	cvt.s.w	$f8,$f6
     ae0:	e7a80014 	swc1	$f8,20(sp)
     ae4:	844c1082 	lh	t4,4226(v0)
     ae8:	448c5000 	mtc1	t4,$f10
     aec:	44078000 	mfc1	a3,$f16
     af0:	46805420 	cvt.s.w	$f16,$f10
     af4:	46128103 	div.s	$f4,$f16,$f18
     af8:	0c000000 	jal	0 <View_ViewportToVp>
     afc:	e7a40018 	swc1	$f4,24(sp)
     b00:	10000012 	b	b4c <func_800AAA9C+0x240>
     b04:	00000000 	nop
     b08:	8fad012c 	lw	t5,300(sp)
     b0c:	44903000 	mtc1	s0,$f6
     b10:	c624001c 	lwc1	$f4,28(s1)
     b14:	448d5000 	mtc1	t5,$f10
     b18:	46803220 	cvt.s.w	$f8,$f6
     b1c:	8e260018 	lw	a2,24(s1)
     b20:	e7a40010 	swc1	$f4,16(sp)
     b24:	c6260020 	lwc1	$f6,32(s1)
     b28:	2625011c 	addiu	a1,s1,284
     b2c:	46805420 	cvt.s.w	$f16,$f10
     b30:	e7a60014 	swc1	$f6,20(sp)
     b34:	c62a0024 	lwc1	$f10,36(s1)
     b38:	e7aa0018 	swc1	$f10,24(sp)
     b3c:	46104483 	div.s	$f18,$f8,$f16
     b40:	44079000 	mfc1	a3,$f18
     b44:	0c000000 	jal	0 <View_ViewportToVp>
     b48:	00000000 	nop
     b4c:	3c0e0000 	lui	t6,0x0
     b50:	8dce0000 	lw	t6,0(t6)
     b54:	85cf03c4 	lh	t7,964(t6)
     b58:	31f80001 	andi	t8,t7,0x1
     b5c:	5300003a 	beqzl	t8,c48 <func_800AAA9C+0x33c>
     b60:	8fa50124 	lw	a1,292(sp)
     b64:	c632001c 	lwc1	$f18,28(s1)
     b68:	c6280018 	lwc1	$f8,24(s1)
     b6c:	8fb9012c 	lw	t9,300(sp)
     b70:	46009121 	cvt.d.s	$f4,$f18
     b74:	44909000 	mtc1	s0,$f18
     b78:	f7a40010 	sdc1	$f4,16(sp)
     b7c:	c6260020 	lwc1	$f6,32(s1)
     b80:	46809120 	cvt.s.w	$f4,$f18
     b84:	3c040000 	lui	a0,0x0
     b88:	248400f8 	addiu	a0,a0,248
     b8c:	460032a1 	cvt.d.s	$f10,$f6
     b90:	44993000 	mtc1	t9,$f6
     b94:	f7aa0018 	sdc1	$f10,24(sp)
     b98:	46004421 	cvt.d.s	$f16,$f8
     b9c:	468032a0 	cvt.s.w	$f10,$f6
     ba0:	c6280024 	lwc1	$f8,36(s1)
     ba4:	44078000 	mfc1	a3,$f16
     ba8:	44068800 	mfc1	a2,$f17
     bac:	46004421 	cvt.d.s	$f16,$f8
     bb0:	460a2203 	div.s	$f8,$f4,$f10
     bb4:	f7b00020 	sdc1	$f16,32(sp)
     bb8:	46004421 	cvt.d.s	$f16,$f8
     bbc:	f7b00028 	sdc1	$f16,40(sp)
     bc0:	9629011c 	lhu	t1,284(s1)
     bc4:	0c000000 	jal	0 <View_ViewportToVp>
     bc8:	afa90030 	sw	t1,48(sp)
     bcc:	8fa40124 	lw	a0,292(sp)
     bd0:	0c000000 	jal	0 <View_ViewportToVp>
     bd4:	27a500bc 	addiu	a1,sp,188
     bd8:	3c040000 	lui	a0,0x0
     bdc:	0c000000 	jal	0 <View_ViewportToVp>
     be0:	24840130 	addiu	a0,a0,304
     be4:	27b000bc 	addiu	s0,sp,188
     be8:	c6040004 	lwc1	$f4,4(s0)
     bec:	c6120000 	lwc1	$f18,0(s0)
     bf0:	3c040000 	lui	a0,0x0
     bf4:	460022a1 	cvt.d.s	$f10,$f4
     bf8:	460091a1 	cvt.d.s	$f6,$f18
     bfc:	f7aa0010 	sdc1	$f10,16(sp)
     c00:	c6080008 	lwc1	$f8,8(s0)
     c04:	44073000 	mfc1	a3,$f6
     c08:	44063800 	mfc1	a2,$f7
     c0c:	46004421 	cvt.d.s	$f16,$f8
     c10:	2484013c 	addiu	a0,a0,316
     c14:	f7b00018 	sdc1	$f16,24(sp)
     c18:	c612000c 	lwc1	$f18,12(s0)
     c1c:	460091a1 	cvt.d.s	$f6,$f18
     c20:	0c000000 	jal	0 <View_ViewportToVp>
     c24:	f7a60020 	sdc1	$f6,32(sp)
     c28:	26100010 	addiu	s0,s0,16
     c2c:	27aa00fc 	addiu	t2,sp,252
     c30:	560affee 	bnel	s0,t2,bec <func_800AAA9C+0x2e0>
     c34:	c6040004 	lwc1	$f4,4(s0)
     c38:	3c040000 	lui	a0,0x0
     c3c:	0c000000 	jal	0 <View_ViewportToVp>
     c40:	2484014c 	addiu	a0,a0,332
     c44:	8fa50124 	lw	a1,292(sp)
     c48:	02207025 	move	t6,s1
     c4c:	00a06825 	move	t5,a1
     c50:	24af003c 	addiu	t7,a1,60
     c54:	8dac0000 	lw	t4,0(t5)
     c58:	25ad000c 	addiu	t5,t5,12
     c5c:	25ce000c 	addiu	t6,t6,12
     c60:	adcc0054 	sw	t4,84(t6)
     c64:	8dabfff8 	lw	t3,-8(t5)
     c68:	adcb0058 	sw	t3,88(t6)
     c6c:	8dacfffc 	lw	t4,-4(t5)
     c70:	15affff8 	bne	t5,t7,c54 <func_800AAA9C+0x348>
     c74:	adcc005c 	sw	t4,92(t6)
     c78:	8dac0000 	lw	t4,0(t5)
     c7c:	02202025 	move	a0,s1
     c80:	0c000000 	jal	0 <View_ViewportToVp>
     c84:	adcc0060 	sw	t4,96(t6)
     c88:	8e4202c0 	lw	v0,704(s2)
     c8c:	3c04db0e 	lui	a0,0xdb0e
     c90:	3c05da38 	lui	a1,0xda38
     c94:	24580008 	addiu	t8,v0,8
     c98:	ae5802c0 	sw	t8,704(s2)
     c9c:	ac440000 	sw	a0,0(v0)
     ca0:	9639011c 	lhu	t9,284(s1)
     ca4:	34a50007 	ori	a1,a1,0x7
     ca8:	ac590004 	sw	t9,4(v0)
     cac:	8e4202c0 	lw	v0,704(s2)
     cb0:	24490008 	addiu	t1,v0,8
     cb4:	ae4902c0 	sw	t1,704(s2)
     cb8:	ac450000 	sw	a1,0(v0)
     cbc:	8faa0124 	lw	t2,292(sp)
     cc0:	ac4a0004 	sw	t2,4(v0)
     cc4:	8e4202d0 	lw	v0,720(s2)
     cc8:	244f0008 	addiu	t7,v0,8
     ccc:	ae4f02d0 	sw	t7,720(s2)
     cd0:	ac440000 	sw	a0,0(v0)
     cd4:	962d011c 	lhu	t5,284(s1)
     cd8:	02402025 	move	a0,s2
     cdc:	ac4d0004 	sw	t5,4(v0)
     ce0:	8e4202d0 	lw	v0,720(s2)
     ce4:	244e0008 	addiu	t6,v0,8
     ce8:	ae4e02d0 	sw	t6,720(s2)
     cec:	ac450000 	sw	a1,0(v0)
     cf0:	8fab0124 	lw	t3,292(sp)
     cf4:	24050040 	li	a1,64
     cf8:	0c000000 	jal	0 <View_ViewportToVp>
     cfc:	ac4b0004 	sw	t3,4(v0)
     d00:	3c040000 	lui	a0,0x0
     d04:	3c060000 	lui	a2,0x0
     d08:	afa20120 	sw	v0,288(sp)
     d0c:	24c60158 	addiu	a2,a2,344
     d10:	24840150 	addiu	a0,a0,336
     d14:	00402825 	move	a1,v0
     d18:	0c000000 	jal	0 <View_ViewportToVp>
     d1c:	2407029b 	li	a3,667
     d20:	c62c0028 	lwc1	$f12,40(s1)
     d24:	c6240034 	lwc1	$f4,52(s1)
     d28:	8fac0120 	lw	t4,288(sp)
     d2c:	460c2032 	c.eq.s	$f4,$f12
     d30:	ae2c00e4 	sw	t4,228(s1)
     d34:	45020018 	bc1fl	d98 <func_800AAA9C+0x48c>
     d38:	c62e002c 	lwc1	$f14,44(s1)
     d3c:	c622002c 	lwc1	$f2,44(s1)
     d40:	c62a0038 	lwc1	$f10,56(s1)
     d44:	46025032 	c.eq.s	$f10,$f2
     d48:	00000000 	nop
     d4c:	45020012 	bc1fl	d98 <func_800AAA9C+0x48c>
     d50:	c62e002c 	lwc1	$f14,44(s1)
     d54:	c62e0030 	lwc1	$f14,48(s1)
     d58:	c628003c 	lwc1	$f8,60(s1)
     d5c:	3c013f80 	lui	at,0x3f80
     d60:	460e4032 	c.eq.s	$f8,$f14
     d64:	00000000 	nop
     d68:	4502000b 	bc1fl	d98 <func_800AAA9C+0x48c>
     d6c:	c62e002c 	lwc1	$f14,44(s1)
     d70:	44810000 	mtc1	at,$f0
     d74:	00000000 	nop
     d78:	46006400 	add.s	$f16,$f12,$f0
     d7c:	46001480 	add.s	$f18,$f2,$f0
     d80:	e6300028 	swc1	$f16,40(s1)
     d84:	c62c0028 	lwc1	$f12,40(s1)
     d88:	46007180 	add.s	$f6,$f14,$f0
     d8c:	e632002c 	swc1	$f18,44(s1)
     d90:	e6260030 	swc1	$f6,48(s1)
     d94:	c62e002c 	lwc1	$f14,44(s1)
     d98:	0c000000 	jal	0 <View_ViewportToVp>
     d9c:	8e260030 	lw	a2,48(s1)
     da0:	c6240034 	lwc1	$f4,52(s1)
     da4:	8e250028 	lw	a1,40(s1)
     da8:	8e26002c 	lw	a2,44(s1)
     dac:	8e270030 	lw	a3,48(s1)
     db0:	e7a40010 	swc1	$f4,16(sp)
     db4:	c62a0038 	lwc1	$f10,56(s1)
     db8:	8fa40120 	lw	a0,288(sp)
     dbc:	e7aa0014 	swc1	$f10,20(sp)
     dc0:	c628003c 	lwc1	$f8,60(s1)
     dc4:	e7a80018 	swc1	$f8,24(sp)
     dc8:	c6300040 	lwc1	$f16,64(s1)
     dcc:	e7b0001c 	swc1	$f16,28(sp)
     dd0:	c6320044 	lwc1	$f18,68(s1)
     dd4:	e7b20020 	swc1	$f18,32(sp)
     dd8:	c6260048 	lwc1	$f6,72(s1)
     ddc:	0c000000 	jal	0 <View_ViewportToVp>
     de0:	e7a60024 	swc1	$f6,36(sp)
     de4:	8fa60120 	lw	a2,288(sp)
     de8:	02205025 	move	t2,s1
     dec:	27a50068 	addiu	a1,sp,104
     df0:	00c04825 	move	t1,a2
     df4:	24cf003c 	addiu	t7,a2,60
     df8:	8d390000 	lw	t9,0(t1)
     dfc:	2529000c 	addiu	t1,t1,12
     e00:	254a000c 	addiu	t2,t2,12
     e04:	ad590094 	sw	t9,148(t2)
     e08:	8d38fff8 	lw	t8,-8(t1)
     e0c:	ad580098 	sw	t8,152(t2)
     e10:	8d39fffc 	lw	t9,-4(t1)
     e14:	152ffff8 	bne	t1,t7,df8 <func_800AAA9C+0x4ec>
     e18:	ad59009c 	sw	t9,156(t2)
     e1c:	8d390000 	lw	t9,0(t1)
     e20:	3c0d0000 	lui	t5,0x0
     e24:	ad5900a0 	sw	t9,160(t2)
     e28:	8dad0000 	lw	t5,0(t5)
     e2c:	85ae03c4 	lh	t6,964(t5)
     e30:	31cb0002 	andi	t3,t6,0x2
     e34:	51600020 	beqzl	t3,eb8 <func_800AAA9C+0x5ac>
     e38:	8e4202c0 	lw	v0,704(s2)
     e3c:	0c000000 	jal	0 <View_ViewportToVp>
     e40:	8e2400e4 	lw	a0,228(s1)
     e44:	3c040000 	lui	a0,0x0
     e48:	0c000000 	jal	0 <View_ViewportToVp>
     e4c:	24840164 	addiu	a0,a0,356
     e50:	27b00068 	addiu	s0,sp,104
     e54:	c6080004 	lwc1	$f8,4(s0)
     e58:	c6040000 	lwc1	$f4,0(s0)
     e5c:	3c040000 	lui	a0,0x0
     e60:	46004421 	cvt.d.s	$f16,$f8
     e64:	460022a1 	cvt.d.s	$f10,$f4
     e68:	f7b00010 	sdc1	$f16,16(sp)
     e6c:	c6120008 	lwc1	$f18,8(s0)
     e70:	44075000 	mfc1	a3,$f10
     e74:	44065800 	mfc1	a2,$f11
     e78:	460091a1 	cvt.d.s	$f6,$f18
     e7c:	24840170 	addiu	a0,a0,368
     e80:	f7a60018 	sdc1	$f6,24(sp)
     e84:	c604000c 	lwc1	$f4,12(s0)
     e88:	460022a1 	cvt.d.s	$f10,$f4
     e8c:	0c000000 	jal	0 <View_ViewportToVp>
     e90:	f7aa0020 	sdc1	$f10,32(sp)
     e94:	26100010 	addiu	s0,s0,16
     e98:	27ac00a8 	addiu	t4,sp,168
     e9c:	560cffee 	bnel	s0,t4,e58 <func_800AAA9C+0x54c>
     ea0:	c6080004 	lwc1	$f8,4(s0)
     ea4:	3c040000 	lui	a0,0x0
     ea8:	0c000000 	jal	0 <View_ViewportToVp>
     eac:	24840180 	addiu	a0,a0,384
     eb0:	8fa60120 	lw	a2,288(sp)
     eb4:	8e4202c0 	lw	v0,704(s2)
     eb8:	3c04da38 	lui	a0,0xda38
     ebc:	34840005 	ori	a0,a0,0x5
     ec0:	244f0008 	addiu	t7,v0,8
     ec4:	ae4f02c0 	sw	t7,704(s2)
     ec8:	ac460004 	sw	a2,4(v0)
     ecc:	ac440000 	sw	a0,0(v0)
     ed0:	8e4202d0 	lw	v0,720(s2)
     ed4:	02402825 	move	a1,s2
     ed8:	240702c7 	li	a3,711
     edc:	24490008 	addiu	t1,v0,8
     ee0:	ae4902d0 	sw	t1,720(s2)
     ee4:	ac460004 	sw	a2,4(v0)
     ee8:	3c060000 	lui	a2,0x0
     eec:	ac440000 	sw	a0,0(v0)
     ef0:	27a40108 	addiu	a0,sp,264
     ef4:	0c000000 	jal	0 <View_ViewportToVp>
     ef8:	24c60184 	addiu	a2,a2,388
     efc:	8fbf004c 	lw	ra,76(sp)
     f00:	8fb00040 	lw	s0,64(sp)
     f04:	8fb10044 	lw	s1,68(sp)
     f08:	8fb20048 	lw	s2,72(sp)
     f0c:	27bd0138 	addiu	sp,sp,312
     f10:	03e00008 	jr	ra
     f14:	24020001 	li	v0,1

00000f18 <func_800AB0A8>:
     f18:	27bdff90 	addiu	sp,sp,-112
     f1c:	afbf0034 	sw	ra,52(sp)
     f20:	afb20030 	sw	s2,48(sp)
     f24:	afb1002c 	sw	s1,44(sp)
     f28:	afb00028 	sw	s0,40(sp)
     f2c:	8c900004 	lw	s0,4(a0)
     f30:	00809025 	move	s2,a0
     f34:	3c060000 	lui	a2,0x0
     f38:	24c60190 	addiu	a2,a2,400
     f3c:	27a40050 	addiu	a0,sp,80
     f40:	240702d6 	li	a3,726
     f44:	0c000000 	jal	0 <View_ViewportToVp>
     f48:	02002825 	move	a1,s0
     f4c:	02002025 	move	a0,s0
     f50:	0c000000 	jal	0 <View_ViewportToVp>
     f54:	24050010 	li	a1,16
     f58:	3c040000 	lui	a0,0x0
     f5c:	3c060000 	lui	a2,0x0
     f60:	00408825 	move	s1,v0
     f64:	24c601a0 	addiu	a2,a2,416
     f68:	2484019c 	addiu	a0,a0,412
     f6c:	00402825 	move	a1,v0
     f70:	0c000000 	jal	0 <View_ViewportToVp>
     f74:	240702da 	li	a3,730
     f78:	02202025 	move	a0,s1
     f7c:	0c000000 	jal	0 <View_ViewportToVp>
     f80:	26450008 	addiu	a1,s2,8
     f84:	8e2f0000 	lw	t7,0(s1)
     f88:	02402025 	move	a0,s2
     f8c:	ae4f0050 	sw	t7,80(s2)
     f90:	8e2e0004 	lw	t6,4(s1)
     f94:	ae4e0054 	sw	t6,84(s2)
     f98:	8e2f0008 	lw	t7,8(s1)
     f9c:	ae4f0058 	sw	t7,88(s2)
     fa0:	8e2e000c 	lw	t6,12(s1)
     fa4:	0c000000 	jal	0 <View_ViewportToVp>
     fa8:	ae4e005c 	sw	t6,92(s2)
     fac:	8e0302c0 	lw	v1,704(s0)
     fb0:	3c04dc08 	lui	a0,0xdc08
     fb4:	34840008 	ori	a0,a0,0x8
     fb8:	24780008 	addiu	t8,v1,8
     fbc:	ae1802c0 	sw	t8,704(s0)
     fc0:	ac710004 	sw	s1,4(v1)
     fc4:	ac640000 	sw	a0,0(v1)
     fc8:	8e0302d0 	lw	v1,720(s0)
     fcc:	24050040 	li	a1,64
     fd0:	24790008 	addiu	t9,v1,8
     fd4:	ae1902d0 	sw	t9,720(s0)
     fd8:	ac710004 	sw	s1,4(v1)
     fdc:	ac640000 	sw	a0,0(v1)
     fe0:	8e0302b0 	lw	v1,688(s0)
     fe4:	24680008 	addiu	t0,v1,8
     fe8:	ae0802b0 	sw	t0,688(s0)
     fec:	ac640000 	sw	a0,0(v1)
     ff0:	02002025 	move	a0,s0
     ff4:	0c000000 	jal	0 <View_ViewportToVp>
     ff8:	ac710004 	sw	s1,4(v1)
     ffc:	3c040000 	lui	a0,0x0
    1000:	3c060000 	lui	a2,0x0
    1004:	00408825 	move	s1,v0
    1008:	24c601b8 	addiu	a2,a2,440
    100c:	248401ac 	addiu	a0,a0,428
    1010:	00402825 	move	a1,v0
    1014:	0c000000 	jal	0 <View_ViewportToVp>
    1018:	240702e8 	li	a3,744
    101c:	ae5100e0 	sw	s1,224(s2)
    1020:	3c090000 	lui	t1,0x0
    1024:	8d290000 	lw	t1,0(t1)
    1028:	3c0a0000 	lui	t2,0x0
    102c:	8d4a0000 	lw	t2,0(t2)
    1030:	44892000 	mtc1	t1,$f4
    1034:	3c013f00 	lui	at,0x3f00
    1038:	448a8000 	mtc1	t2,$f16
    103c:	46802020 	cvt.s.w	$f0,$f4
    1040:	44816000 	mtc1	at,$f12
    1044:	02202025 	move	a0,s1
    1048:	468080a0 	cvt.s.w	$f2,$f16
    104c:	46000187 	neg.s	$f6,$f0
    1050:	46001487 	neg.s	$f18,$f2
    1054:	460c3202 	mul.s	$f8,$f6,$f12
    1058:	00000000 	nop
    105c:	460c0282 	mul.s	$f10,$f0,$f12
    1060:	00000000 	nop
    1064:	460c9102 	mul.s	$f4,$f18,$f12
    1068:	44054000 	mfc1	a1,$f8
    106c:	460c1182 	mul.s	$f6,$f2,$f12
    1070:	44065000 	mfc1	a2,$f10
    1074:	44072000 	mfc1	a3,$f4
    1078:	e7a60010 	swc1	$f6,16(sp)
    107c:	c648001c 	lwc1	$f8,28(s2)
    1080:	e7a80014 	swc1	$f8,20(sp)
    1084:	c64a0020 	lwc1	$f10,32(s2)
    1088:	e7aa0018 	swc1	$f10,24(sp)
    108c:	c6500024 	lwc1	$f16,36(s2)
    1090:	0c000000 	jal	0 <View_ViewportToVp>
    1094:	e7b0001c 	swc1	$f16,28(sp)
    1098:	02206825 	move	t5,s1
    109c:	02407025 	move	t6,s2
    10a0:	262f003c 	addiu	t7,s1,60
    10a4:	8dac0000 	lw	t4,0(t5)
    10a8:	25ad000c 	addiu	t5,t5,12
    10ac:	25ce000c 	addiu	t6,t6,12
    10b0:	adcc0054 	sw	t4,84(t6)
    10b4:	8dabfff8 	lw	t3,-8(t5)
    10b8:	adcb0058 	sw	t3,88(t6)
    10bc:	8dacfffc 	lw	t4,-4(t5)
    10c0:	15affff8 	bne	t5,t7,10a4 <func_800AB0A8+0x18c>
    10c4:	adcc005c 	sw	t4,92(t6)
    10c8:	8dac0000 	lw	t4,0(t5)
    10cc:	3c04da38 	lui	a0,0xda38
    10d0:	34840007 	ori	a0,a0,0x7
    10d4:	adcc0060 	sw	t4,96(t6)
    10d8:	8e0302c0 	lw	v1,704(s0)
    10dc:	3c060000 	lui	a2,0x0
    10e0:	24c601c4 	addiu	a2,a2,452
    10e4:	24780008 	addiu	t8,v1,8
    10e8:	ae1802c0 	sw	t8,704(s0)
    10ec:	ac710004 	sw	s1,4(v1)
    10f0:	ac640000 	sw	a0,0(v1)
    10f4:	8e0302d0 	lw	v1,720(s0)
    10f8:	02002825 	move	a1,s0
    10fc:	240702fa 	li	a3,762
    1100:	24790008 	addiu	t9,v1,8
    1104:	ae1902d0 	sw	t9,720(s0)
    1108:	ac640000 	sw	a0,0(v1)
    110c:	27a40050 	addiu	a0,sp,80
    1110:	0c000000 	jal	0 <View_ViewportToVp>
    1114:	ac710004 	sw	s1,4(v1)
    1118:	8fbf0034 	lw	ra,52(sp)
    111c:	8fb00028 	lw	s0,40(sp)
    1120:	8fb1002c 	lw	s1,44(sp)
    1124:	8fb20030 	lw	s2,48(sp)
    1128:	27bd0070 	addiu	sp,sp,112
    112c:	03e00008 	jr	ra
    1130:	24020001 	li	v0,1

00001134 <func_800AB2C4>:
    1134:	27bdff90 	addiu	sp,sp,-112
    1138:	afbf0034 	sw	ra,52(sp)
    113c:	afb20030 	sw	s2,48(sp)
    1140:	afb1002c 	sw	s1,44(sp)
    1144:	afb00028 	sw	s0,40(sp)
    1148:	8c900004 	lw	s0,4(a0)
    114c:	00809025 	move	s2,a0
    1150:	3c060000 	lui	a2,0x0
    1154:	24c601d0 	addiu	a2,a2,464
    1158:	27a40050 	addiu	a0,sp,80
    115c:	24070309 	li	a3,777
    1160:	0c000000 	jal	0 <View_ViewportToVp>
    1164:	02002825 	move	a1,s0
    1168:	02002025 	move	a0,s0
    116c:	0c000000 	jal	0 <View_ViewportToVp>
    1170:	24050010 	li	a1,16
    1174:	3c040000 	lui	a0,0x0
    1178:	3c060000 	lui	a2,0x0
    117c:	00408825 	move	s1,v0
    1180:	24c601e0 	addiu	a2,a2,480
    1184:	248401dc 	addiu	a0,a0,476
    1188:	00402825 	move	a1,v0
    118c:	0c000000 	jal	0 <View_ViewportToVp>
    1190:	2407030d 	li	a3,781
    1194:	02202025 	move	a0,s1
    1198:	0c000000 	jal	0 <View_ViewportToVp>
    119c:	26450008 	addiu	a1,s2,8
    11a0:	8e2f0000 	lw	t7,0(s1)
    11a4:	3c19e700 	lui	t9,0xe700
    11a8:	3c014080 	lui	at,0x4080
    11ac:	ae4f0050 	sw	t7,80(s2)
    11b0:	8e2e0004 	lw	t6,4(s1)
    11b4:	44810000 	mtc1	at,$f0
    11b8:	3c01ed00 	lui	at,0xed00
    11bc:	ae4e0054 	sw	t6,84(s2)
    11c0:	8e2f0008 	lw	t7,8(s1)
    11c4:	02002025 	move	a0,s0
    11c8:	24050040 	li	a1,64
    11cc:	ae4f0058 	sw	t7,88(s2)
    11d0:	8e2e000c 	lw	t6,12(s1)
    11d4:	ae4e005c 	sw	t6,92(s2)
    11d8:	8e0202b0 	lw	v0,688(s0)
    11dc:	24580008 	addiu	t8,v0,8
    11e0:	ae1802b0 	sw	t8,688(s0)
    11e4:	ac400004 	sw	zero,4(v0)
    11e8:	ac590000 	sw	t9,0(v0)
    11ec:	8e0202b0 	lw	v0,688(s0)
    11f0:	24480008 	addiu	t0,v0,8
    11f4:	ae0802b0 	sw	t0,688(s0)
    11f8:	8e490010 	lw	t1,16(s2)
    11fc:	8e4f0008 	lw	t7,8(s2)
    1200:	44892000 	mtc1	t1,$f4
    1204:	448f8000 	mtc1	t7,$f16
    1208:	468021a0 	cvt.s.w	$f6,$f4
    120c:	468084a0 	cvt.s.w	$f18,$f16
    1210:	46003202 	mul.s	$f8,$f6,$f0
    1214:	00000000 	nop
    1218:	46009102 	mul.s	$f4,$f18,$f0
    121c:	4600428d 	trunc.w.s	$f10,$f8
    1220:	4600218d 	trunc.w.s	$f6,$f4
    1224:	440b5000 	mfc1	t3,$f10
    1228:	44193000 	mfc1	t9,$f6
    122c:	316c0fff 	andi	t4,t3,0xfff
    1230:	000c6b00 	sll	t5,t4,0xc
    1234:	01a17025 	or	t6,t5,at
    1238:	33280fff 	andi	t0,t9,0xfff
    123c:	01c84825 	or	t1,t6,t0
    1240:	ac490000 	sw	t1,0(v0)
    1244:	8e4a0014 	lw	t2,20(s2)
    1248:	8e58000c 	lw	t8,12(s2)
    124c:	3c0bdc08 	lui	t3,0xdc08
    1250:	448a4000 	mtc1	t2,$f8
    1254:	44982000 	mtc1	t8,$f4
    1258:	356b0008 	ori	t3,t3,0x8
    125c:	468042a0 	cvt.s.w	$f10,$f8
    1260:	468021a0 	cvt.s.w	$f6,$f4
    1264:	46005402 	mul.s	$f16,$f10,$f0
    1268:	00000000 	nop
    126c:	46003202 	mul.s	$f8,$f6,$f0
    1270:	4600848d 	trunc.w.s	$f18,$f16
    1274:	4600428d 	trunc.w.s	$f10,$f8
    1278:	440c9000 	mfc1	t4,$f18
    127c:	440e5000 	mfc1	t6,$f10
    1280:	318d0fff 	andi	t5,t4,0xfff
    1284:	000d7b00 	sll	t7,t5,0xc
    1288:	31c80fff 	andi	t0,t6,0xfff
    128c:	01e84825 	or	t1,t7,t0
    1290:	ac490004 	sw	t1,4(v0)
    1294:	8e0202b0 	lw	v0,688(s0)
    1298:	244a0008 	addiu	t2,v0,8
    129c:	ae0a02b0 	sw	t2,688(s0)
    12a0:	ac510004 	sw	s1,4(v0)
    12a4:	0c000000 	jal	0 <View_ViewportToVp>
    12a8:	ac4b0000 	sw	t3,0(v0)
    12ac:	3c040000 	lui	a0,0x0
    12b0:	3c060000 	lui	a2,0x0
    12b4:	00408825 	move	s1,v0
    12b8:	24c601f8 	addiu	a2,a2,504
    12bc:	248401ec 	addiu	a0,a0,492
    12c0:	00402825 	move	a1,v0
    12c4:	0c000000 	jal	0 <View_ViewportToVp>
    12c8:	24070317 	li	a3,791
    12cc:	ae5100e0 	sw	s1,224(s2)
    12d0:	3c0c0000 	lui	t4,0x0
    12d4:	8d8c0000 	lw	t4,0(t4)
    12d8:	3c0d0000 	lui	t5,0x0
    12dc:	8dad0000 	lw	t5,0(t5)
    12e0:	448c8000 	mtc1	t4,$f16
    12e4:	3c013f00 	lui	at,0x3f00
    12e8:	448d4000 	mtc1	t5,$f8
    12ec:	46808020 	cvt.s.w	$f0,$f16
    12f0:	44816000 	mtc1	at,$f12
    12f4:	02202025 	move	a0,s1
    12f8:	468040a0 	cvt.s.w	$f2,$f8
    12fc:	46000487 	neg.s	$f18,$f0
    1300:	46001287 	neg.s	$f10,$f2
    1304:	460c9102 	mul.s	$f4,$f18,$f12
    1308:	00000000 	nop
    130c:	460c0182 	mul.s	$f6,$f0,$f12
    1310:	00000000 	nop
    1314:	460c5402 	mul.s	$f16,$f10,$f12
    1318:	44052000 	mfc1	a1,$f4
    131c:	460c1482 	mul.s	$f18,$f2,$f12
    1320:	44063000 	mfc1	a2,$f6
    1324:	44078000 	mfc1	a3,$f16
    1328:	e7b20010 	swc1	$f18,16(sp)
    132c:	c644001c 	lwc1	$f4,28(s2)
    1330:	e7a40014 	swc1	$f4,20(sp)
    1334:	c6460020 	lwc1	$f6,32(s2)
    1338:	e7a60018 	swc1	$f6,24(sp)
    133c:	c6480024 	lwc1	$f8,36(s2)
    1340:	0c000000 	jal	0 <View_ViewportToVp>
    1344:	e7a8001c 	swc1	$f8,28(sp)
    1348:	02207025 	move	t6,s1
    134c:	02407825 	move	t7,s2
    1350:	2628003c 	addiu	t0,s1,60
    1354:	8dd90000 	lw	t9,0(t6)
    1358:	25ce000c 	addiu	t6,t6,12
    135c:	25ef000c 	addiu	t7,t7,12
    1360:	adf90054 	sw	t9,84(t7)
    1364:	8dd8fff8 	lw	t8,-8(t6)
    1368:	adf80058 	sw	t8,88(t7)
    136c:	8dd9fffc 	lw	t9,-4(t6)
    1370:	15c8fff8 	bne	t6,t0,1354 <func_800AB2C4+0x220>
    1374:	adf9005c 	sw	t9,92(t7)
    1378:	8dd90000 	lw	t9,0(t6)
    137c:	3c0ada38 	lui	t2,0xda38
    1380:	354a0007 	ori	t2,t2,0x7
    1384:	adf90060 	sw	t9,96(t7)
    1388:	8e0202b0 	lw	v0,688(s0)
    138c:	3c060000 	lui	a2,0x0
    1390:	24c60204 	addiu	a2,a2,516
    1394:	24490008 	addiu	t1,v0,8
    1398:	ae0902b0 	sw	t1,688(s0)
    139c:	27a40050 	addiu	a0,sp,80
    13a0:	02002825 	move	a1,s0
    13a4:	24070321 	li	a3,801
    13a8:	ac510004 	sw	s1,4(v0)
    13ac:	0c000000 	jal	0 <View_ViewportToVp>
    13b0:	ac4a0000 	sw	t2,0(v0)
    13b4:	8fbf0034 	lw	ra,52(sp)
    13b8:	8fb00028 	lw	s0,40(sp)
    13bc:	8fb1002c 	lw	s1,44(sp)
    13c0:	8fb20030 	lw	s2,48(sp)
    13c4:	27bd0070 	addiu	sp,sp,112
    13c8:	03e00008 	jr	ra
    13cc:	24020001 	li	v0,1

000013d0 <func_800AB560>:
    13d0:	27bdff68 	addiu	sp,sp,-152
    13d4:	afbf0034 	sw	ra,52(sp)
    13d8:	afb10030 	sw	s1,48(sp)
    13dc:	afb0002c 	sw	s0,44(sp)
    13e0:	8c910004 	lw	s1,4(a0)
    13e4:	00808025 	move	s0,a0
    13e8:	3c060000 	lui	a2,0x0
    13ec:	24c60210 	addiu	a2,a2,528
    13f0:	27a40060 	addiu	a0,sp,96
    13f4:	24070330 	li	a3,816
    13f8:	0c000000 	jal	0 <View_ViewportToVp>
    13fc:	02202825 	move	a1,s1
    1400:	02202025 	move	a0,s1
    1404:	0c000000 	jal	0 <View_ViewportToVp>
    1408:	24050010 	li	a1,16
    140c:	3c040000 	lui	a0,0x0
    1410:	3c060000 	lui	a2,0x0
    1414:	afa20080 	sw	v0,128(sp)
    1418:	24c60220 	addiu	a2,a2,544
    141c:	2484021c 	addiu	a0,a0,540
    1420:	00402825 	move	a1,v0
    1424:	0c000000 	jal	0 <View_ViewportToVp>
    1428:	24070335 	li	a3,821
    142c:	8fa40080 	lw	a0,128(sp)
    1430:	0c000000 	jal	0 <View_ViewportToVp>
    1434:	26050008 	addiu	a1,s0,8
    1438:	8fa40080 	lw	a0,128(sp)
    143c:	3c19e700 	lui	t9,0xe700
    1440:	3c014080 	lui	at,0x4080
    1444:	8c8f0000 	lw	t7,0(a0)
    1448:	44810000 	mtc1	at,$f0
    144c:	3c01ed00 	lui	at,0xed00
    1450:	ae0f0050 	sw	t7,80(s0)
    1454:	8c8e0004 	lw	t6,4(a0)
    1458:	24050040 	li	a1,64
    145c:	ae0e0054 	sw	t6,84(s0)
    1460:	8c8f0008 	lw	t7,8(a0)
    1464:	ae0f0058 	sw	t7,88(s0)
    1468:	8c8e000c 	lw	t6,12(a0)
    146c:	ae0e005c 	sw	t6,92(s0)
    1470:	8e2202b0 	lw	v0,688(s1)
    1474:	24580008 	addiu	t8,v0,8
    1478:	ae3802b0 	sw	t8,688(s1)
    147c:	ac400004 	sw	zero,4(v0)
    1480:	ac590000 	sw	t9,0(v0)
    1484:	8e2202b0 	lw	v0,688(s1)
    1488:	24480008 	addiu	t0,v0,8
    148c:	ae2802b0 	sw	t0,688(s1)
    1490:	8e090010 	lw	t1,16(s0)
    1494:	8e0f0008 	lw	t7,8(s0)
    1498:	44892000 	mtc1	t1,$f4
    149c:	448f8000 	mtc1	t7,$f16
    14a0:	468021a0 	cvt.s.w	$f6,$f4
    14a4:	468084a0 	cvt.s.w	$f18,$f16
    14a8:	46003202 	mul.s	$f8,$f6,$f0
    14ac:	00000000 	nop
    14b0:	46009102 	mul.s	$f4,$f18,$f0
    14b4:	4600428d 	trunc.w.s	$f10,$f8
    14b8:	4600218d 	trunc.w.s	$f6,$f4
    14bc:	440b5000 	mfc1	t3,$f10
    14c0:	44193000 	mfc1	t9,$f6
    14c4:	316c0fff 	andi	t4,t3,0xfff
    14c8:	000c6b00 	sll	t5,t4,0xc
    14cc:	01a17025 	or	t6,t5,at
    14d0:	33280fff 	andi	t0,t9,0xfff
    14d4:	01c84825 	or	t1,t6,t0
    14d8:	ac490000 	sw	t1,0(v0)
    14dc:	8e0a0014 	lw	t2,20(s0)
    14e0:	8e18000c 	lw	t8,12(s0)
    14e4:	3c0bdc08 	lui	t3,0xdc08
    14e8:	448a4000 	mtc1	t2,$f8
    14ec:	44982000 	mtc1	t8,$f4
    14f0:	356b0008 	ori	t3,t3,0x8
    14f4:	468042a0 	cvt.s.w	$f10,$f8
    14f8:	468021a0 	cvt.s.w	$f6,$f4
    14fc:	46005402 	mul.s	$f16,$f10,$f0
    1500:	00000000 	nop
    1504:	46003202 	mul.s	$f8,$f6,$f0
    1508:	4600848d 	trunc.w.s	$f18,$f16
    150c:	4600428d 	trunc.w.s	$f10,$f8
    1510:	440c9000 	mfc1	t4,$f18
    1514:	440e5000 	mfc1	t6,$f10
    1518:	318d0fff 	andi	t5,t4,0xfff
    151c:	000d7b00 	sll	t7,t5,0xc
    1520:	31c80fff 	andi	t0,t6,0xfff
    1524:	01e84825 	or	t1,t7,t0
    1528:	ac490004 	sw	t1,4(v0)
    152c:	8e2202b0 	lw	v0,688(s1)
    1530:	244a0008 	addiu	t2,v0,8
    1534:	ae2a02b0 	sw	t2,688(s1)
    1538:	ac440004 	sw	a0,4(v0)
    153c:	02202025 	move	a0,s1
    1540:	0c000000 	jal	0 <View_ViewportToVp>
    1544:	ac4b0000 	sw	t3,0(v0)
    1548:	3c040000 	lui	a0,0x0
    154c:	3c060000 	lui	a2,0x0
    1550:	afa2007c 	sw	v0,124(sp)
    1554:	24c60238 	addiu	a2,a2,568
    1558:	2484022c 	addiu	a0,a0,556
    155c:	00402825 	move	a1,v0
    1560:	0c000000 	jal	0 <View_ViewportToVp>
    1564:	24070341 	li	a3,833
    1568:	8e0c0014 	lw	t4,20(s0)
    156c:	8e0d0010 	lw	t5,16(s0)
    1570:	8e18000c 	lw	t8,12(s0)
    1574:	8e190008 	lw	t9,8(s0)
    1578:	018d1023 	subu	v0,t4,t5
    157c:	44828000 	mtc1	v0,$f16
    1580:	03191823 	subu	v1,t8,t9
    1584:	44832000 	mtc1	v1,$f4
    1588:	468084a0 	cvt.s.w	$f18,$f16
    158c:	8fa4007c 	lw	a0,124(sp)
    1590:	c60a001c 	lwc1	$f10,28(s0)
    1594:	8e060018 	lw	a2,24(s0)
    1598:	ae0400e0 	sw	a0,224(s0)
    159c:	468021a0 	cvt.s.w	$f6,$f4
    15a0:	e7aa0010 	swc1	$f10,16(sp)
    15a4:	c6100020 	lwc1	$f16,32(s0)
    15a8:	2605011c 	addiu	a1,s0,284
    15ac:	e7b00014 	swc1	$f16,20(sp)
    15b0:	46069203 	div.s	$f8,$f18,$f6
    15b4:	c6040024 	lwc1	$f4,36(s0)
    15b8:	e7a40018 	swc1	$f4,24(sp)
    15bc:	44074000 	mfc1	a3,$f8
    15c0:	0c000000 	jal	0 <View_ViewportToVp>
    15c4:	00000000 	nop
    15c8:	8fa4007c 	lw	a0,124(sp)
    15cc:	02004825 	move	t1,s0
    15d0:	00804025 	move	t0,a0
    15d4:	248a003c 	addiu	t2,a0,60
    15d8:	8d0f0000 	lw	t7,0(t0)
    15dc:	2508000c 	addiu	t0,t0,12
    15e0:	2529000c 	addiu	t1,t1,12
    15e4:	ad2f0054 	sw	t7,84(t1)
    15e8:	8d0efff8 	lw	t6,-8(t0)
    15ec:	ad2e0058 	sw	t6,88(t1)
    15f0:	8d0ffffc 	lw	t7,-4(t0)
    15f4:	150afff8 	bne	t0,t2,15d8 <func_800AB560+0x208>
    15f8:	ad2f005c 	sw	t7,92(t1)
    15fc:	8d0f0000 	lw	t7,0(t0)
    1600:	3c0cdb0e 	lui	t4,0xdb0e
    1604:	3c19da38 	lui	t9,0xda38
    1608:	ad2f0060 	sw	t7,96(t1)
    160c:	8e2202b0 	lw	v0,688(s1)
    1610:	37390007 	ori	t9,t9,0x7
    1614:	24050040 	li	a1,64
    1618:	244b0008 	addiu	t3,v0,8
    161c:	ae2b02b0 	sw	t3,688(s1)
    1620:	ac4c0000 	sw	t4,0(v0)
    1624:	960d011c 	lhu	t5,284(s0)
    1628:	ac4d0004 	sw	t5,4(v0)
    162c:	8e2202b0 	lw	v0,688(s1)
    1630:	24580008 	addiu	t8,v0,8
    1634:	ae3802b0 	sw	t8,688(s1)
    1638:	ac440004 	sw	a0,4(v0)
    163c:	02202025 	move	a0,s1
    1640:	0c000000 	jal	0 <View_ViewportToVp>
    1644:	ac590000 	sw	t9,0(v0)
    1648:	3c040000 	lui	a0,0x0
    164c:	3c060000 	lui	a2,0x0
    1650:	afa20078 	sw	v0,120(sp)
    1654:	24c6024c 	addiu	a2,a2,588
    1658:	24840244 	addiu	a0,a0,580
    165c:	00402825 	move	a1,v0
    1660:	0c000000 	jal	0 <View_ViewportToVp>
    1664:	24070350 	li	a3,848
    1668:	c60c0028 	lwc1	$f12,40(s0)
    166c:	c6120034 	lwc1	$f18,52(s0)
    1670:	8faa0078 	lw	t2,120(sp)
    1674:	460c9032 	c.eq.s	$f18,$f12
    1678:	ae0a00e4 	sw	t2,228(s0)
    167c:	45020018 	bc1fl	16e0 <func_800AB560+0x310>
    1680:	c60e002c 	lwc1	$f14,44(s0)
    1684:	c602002c 	lwc1	$f2,44(s0)
    1688:	c6060038 	lwc1	$f6,56(s0)
    168c:	46023032 	c.eq.s	$f6,$f2
    1690:	00000000 	nop
    1694:	45020012 	bc1fl	16e0 <func_800AB560+0x310>
    1698:	c60e002c 	lwc1	$f14,44(s0)
    169c:	c60e0030 	lwc1	$f14,48(s0)
    16a0:	c608003c 	lwc1	$f8,60(s0)
    16a4:	3c013f80 	lui	at,0x3f80
    16a8:	460e4032 	c.eq.s	$f8,$f14
    16ac:	00000000 	nop
    16b0:	4502000b 	bc1fl	16e0 <func_800AB560+0x310>
    16b4:	c60e002c 	lwc1	$f14,44(s0)
    16b8:	44810000 	mtc1	at,$f0
    16bc:	00000000 	nop
    16c0:	46006280 	add.s	$f10,$f12,$f0
    16c4:	46001400 	add.s	$f16,$f2,$f0
    16c8:	e60a0028 	swc1	$f10,40(s0)
    16cc:	c60c0028 	lwc1	$f12,40(s0)
    16d0:	46007100 	add.s	$f4,$f14,$f0
    16d4:	e610002c 	swc1	$f16,44(s0)
    16d8:	e6040030 	swc1	$f4,48(s0)
    16dc:	c60e002c 	lwc1	$f14,44(s0)
    16e0:	0c000000 	jal	0 <View_ViewportToVp>
    16e4:	8e060030 	lw	a2,48(s0)
    16e8:	c6120034 	lwc1	$f18,52(s0)
    16ec:	8e050028 	lw	a1,40(s0)
    16f0:	8e06002c 	lw	a2,44(s0)
    16f4:	8e070030 	lw	a3,48(s0)
    16f8:	e7b20010 	swc1	$f18,16(sp)
    16fc:	c6060038 	lwc1	$f6,56(s0)
    1700:	8fa40078 	lw	a0,120(sp)
    1704:	e7a60014 	swc1	$f6,20(sp)
    1708:	c608003c 	lwc1	$f8,60(s0)
    170c:	e7a80018 	swc1	$f8,24(sp)
    1710:	c60a0040 	lwc1	$f10,64(s0)
    1714:	e7aa001c 	swc1	$f10,28(sp)
    1718:	c6100044 	lwc1	$f16,68(s0)
    171c:	e7b00020 	swc1	$f16,32(sp)
    1720:	c6040048 	lwc1	$f4,72(s0)
    1724:	0c000000 	jal	0 <View_ViewportToVp>
    1728:	e7a40024 	swc1	$f4,36(sp)
    172c:	8fa40078 	lw	a0,120(sp)
    1730:	02007825 	move	t7,s0
    1734:	3c0dda38 	lui	t5,0xda38
    1738:	00807025 	move	t6,a0
    173c:	248b003c 	addiu	t3,a0,60
    1740:	8dc90000 	lw	t1,0(t6)
    1744:	25ce000c 	addiu	t6,t6,12
    1748:	25ef000c 	addiu	t7,t7,12
    174c:	ade90094 	sw	t1,148(t7)
    1750:	8dc8fff8 	lw	t0,-8(t6)
    1754:	ade80098 	sw	t0,152(t7)
    1758:	8dc9fffc 	lw	t1,-4(t6)
    175c:	15cbfff8 	bne	t6,t3,1740 <func_800AB560+0x370>
    1760:	ade9009c 	sw	t1,156(t7)
    1764:	8dc90000 	lw	t1,0(t6)
    1768:	35ad0005 	ori	t5,t5,0x5
    176c:	3c060000 	lui	a2,0x0
    1770:	ade900a0 	sw	t1,160(t7)
    1774:	8e2202b0 	lw	v0,688(s1)
    1778:	24c60258 	addiu	a2,a2,600
    177c:	02202825 	move	a1,s1
    1780:	244c0008 	addiu	t4,v0,8
    1784:	ae2c02b0 	sw	t4,688(s1)
    1788:	ac440004 	sw	a0,4(v0)
    178c:	27a40060 	addiu	a0,sp,96
    1790:	24070367 	li	a3,871
    1794:	0c000000 	jal	0 <View_ViewportToVp>
    1798:	ac4d0000 	sw	t5,0(v0)
    179c:	8fbf0034 	lw	ra,52(sp)
    17a0:	8fb0002c 	lw	s0,44(sp)
    17a4:	8fb10030 	lw	s1,48(sp)
    17a8:	27bd0098 	addiu	sp,sp,152
    17ac:	03e00008 	jr	ra
    17b0:	24020001 	li	v0,1

000017b4 <func_800AB944>:
    17b4:	27bdffb0 	addiu	sp,sp,-80
    17b8:	afb00030 	sw	s0,48(sp)
    17bc:	00808025 	move	s0,a0
    17c0:	afbf0034 	sw	ra,52(sp)
    17c4:	3c060000 	lui	a2,0x0
    17c8:	24c60264 	addiu	a2,a2,612
    17cc:	8e050004 	lw	a1,4(s0)
    17d0:	27a4003c 	addiu	a0,sp,60
    17d4:	0c000000 	jal	0 <View_ViewportToVp>
    17d8:	2407036e 	li	a3,878
    17dc:	c60c0028 	lwc1	$f12,40(s0)
    17e0:	c60e002c 	lwc1	$f14,44(s0)
    17e4:	0c000000 	jal	0 <View_ViewportToVp>
    17e8:	8e060030 	lw	a2,48(s0)
    17ec:	c6040034 	lwc1	$f4,52(s0)
    17f0:	8e0400e4 	lw	a0,228(s0)
    17f4:	8e050028 	lw	a1,40(s0)
    17f8:	8e06002c 	lw	a2,44(s0)
    17fc:	8e070030 	lw	a3,48(s0)
    1800:	e7a40010 	swc1	$f4,16(sp)
    1804:	c6060038 	lwc1	$f6,56(s0)
    1808:	e7a60014 	swc1	$f6,20(sp)
    180c:	c608003c 	lwc1	$f8,60(s0)
    1810:	e7a80018 	swc1	$f8,24(sp)
    1814:	c60a0040 	lwc1	$f10,64(s0)
    1818:	e7aa001c 	swc1	$f10,28(sp)
    181c:	c6100044 	lwc1	$f16,68(s0)
    1820:	e7b00020 	swc1	$f16,32(sp)
    1824:	c6120048 	lwc1	$f18,72(s0)
    1828:	0c000000 	jal	0 <View_ViewportToVp>
    182c:	e7b20024 	swc1	$f18,36(sp)
    1830:	3c060000 	lui	a2,0x0
    1834:	24c60270 	addiu	a2,a2,624
    1838:	27a4003c 	addiu	a0,sp,60
    183c:	8e050004 	lw	a1,4(s0)
    1840:	0c000000 	jal	0 <View_ViewportToVp>
    1844:	24070376 	li	a3,886
    1848:	8fbf0034 	lw	ra,52(sp)
    184c:	8fb00030 	lw	s0,48(sp)
    1850:	27bd0050 	addiu	sp,sp,80
    1854:	03e00008 	jr	ra
    1858:	24020001 	li	v0,1

0000185c <func_800AB9EC>:
    185c:	27bdffb8 	addiu	sp,sp,-72
    1860:	afbf003c 	sw	ra,60(sp)
    1864:	afb20038 	sw	s2,56(sp)
    1868:	afb10034 	sw	s1,52(sp)
    186c:	afb00030 	sw	s0,48(sp)
    1870:	afa5004c 	sw	a1,76(sp)
    1874:	afa60050 	sw	a2,80(sp)
    1878:	8c8f0004 	lw	t7,4(a0)
    187c:	8cd10000 	lw	s1,0(a2)
    1880:	00054903 	sra	t1,a1,0x4
    1884:	afaf0040 	sw	t7,64(sp)
    1888:	8c980120 	lw	t8,288(a0)
    188c:	00808025 	move	s0,a0
    1890:	01e02025 	move	a0,t7
    1894:	03054024 	and	t0,t8,a1
    1898:	01095025 	or	t2,t0,t1
    189c:	314b0002 	andi	t3,t2,0x2
    18a0:	1160004b 	beqz	t3,19d0 <func_800AB9EC+0x174>
    18a4:	afaa004c 	sw	t2,76(sp)
    18a8:	0c000000 	jal	0 <View_ViewportToVp>
    18ac:	24050010 	li	a1,16
    18b0:	3c040000 	lui	a0,0x0
    18b4:	3c060000 	lui	a2,0x0
    18b8:	00409025 	move	s2,v0
    18bc:	24c60000 	addiu	a2,a2,0
    18c0:	24840000 	addiu	a0,a0,0
    18c4:	00402825 	move	a1,v0
    18c8:	0c000000 	jal	0 <View_ViewportToVp>
    18cc:	2407038e 	li	a3,910
    18d0:	02402025 	move	a0,s2
    18d4:	0c000000 	jal	0 <View_ViewportToVp>
    18d8:	26050008 	addiu	a1,s0,8
    18dc:	8e4d0000 	lw	t5,0(s2)
    18e0:	02201025 	move	v0,s1
    18e4:	3c0ee700 	lui	t6,0xe700
    18e8:	ae0d0050 	sw	t5,80(s0)
    18ec:	8e4c0004 	lw	t4,4(s2)
    18f0:	3c014080 	lui	at,0x4080
    18f4:	44810000 	mtc1	at,$f0
    18f8:	ae0c0054 	sw	t4,84(s0)
    18fc:	8e4d0008 	lw	t5,8(s2)
    1900:	3c01ed00 	lui	at,0xed00
    1904:	26310008 	addiu	s1,s1,8
    1908:	ae0d0058 	sw	t5,88(s0)
    190c:	8e4c000c 	lw	t4,12(s2)
    1910:	ae0c005c 	sw	t4,92(s0)
    1914:	ac400004 	sw	zero,4(v0)
    1918:	ac4e0000 	sw	t6,0(v0)
    191c:	8e0f0010 	lw	t7,16(s0)
    1920:	8e0b0008 	lw	t3,8(s0)
    1924:	02201025 	move	v0,s1
    1928:	448f2000 	mtc1	t7,$f4
    192c:	448b8000 	mtc1	t3,$f16
    1930:	26310008 	addiu	s1,s1,8
    1934:	468021a0 	cvt.s.w	$f6,$f4
    1938:	468084a0 	cvt.s.w	$f18,$f16
    193c:	46003202 	mul.s	$f8,$f6,$f0
    1940:	00000000 	nop
    1944:	46009102 	mul.s	$f4,$f18,$f0
    1948:	4600428d 	trunc.w.s	$f10,$f8
    194c:	4600218d 	trunc.w.s	$f6,$f4
    1950:	44195000 	mfc1	t9,$f10
    1954:	440d3000 	mfc1	t5,$f6
    1958:	33280fff 	andi	t0,t9,0xfff
    195c:	00084b00 	sll	t1,t0,0xc
    1960:	01215025 	or	t2,t1,at
    1964:	31ae0fff 	andi	t6,t5,0xfff
    1968:	014e7825 	or	t7,t2,t6
    196c:	ac4f0000 	sw	t7,0(v0)
    1970:	8e180014 	lw	t8,20(s0)
    1974:	8e0c000c 	lw	t4,12(s0)
    1978:	44984000 	mtc1	t8,$f8
    197c:	448c2000 	mtc1	t4,$f4
    1980:	3c18dc08 	lui	t8,0xdc08
    1984:	468042a0 	cvt.s.w	$f10,$f8
    1988:	37180008 	ori	t8,t8,0x8
    198c:	468021a0 	cvt.s.w	$f6,$f4
    1990:	46005402 	mul.s	$f16,$f10,$f0
    1994:	00000000 	nop
    1998:	46003202 	mul.s	$f8,$f6,$f0
    199c:	4600848d 	trunc.w.s	$f18,$f16
    19a0:	4600428d 	trunc.w.s	$f10,$f8
    19a4:	44089000 	mfc1	t0,$f18
    19a8:	440a5000 	mfc1	t2,$f10
    19ac:	31090fff 	andi	t1,t0,0xfff
    19b0:	00095b00 	sll	t3,t1,0xc
    19b4:	314e0fff 	andi	t6,t2,0xfff
    19b8:	016e7825 	or	t7,t3,t6
    19bc:	ac4f0004 	sw	t7,4(v0)
    19c0:	02201025 	move	v0,s1
    19c4:	ac580000 	sw	t8,0(v0)
    19c8:	ac520004 	sw	s2,4(v0)
    19cc:	26310008 	addiu	s1,s1,8
    19d0:	8fb9004c 	lw	t9,76(sp)
    19d4:	8fa40040 	lw	a0,64(sp)
    19d8:	33280008 	andi	t0,t9,0x8
    19dc:	1100003f 	beqz	t0,1adc <func_800AB9EC+0x280>
    19e0:	8fb9004c 	lw	t9,76(sp)
    19e4:	0c000000 	jal	0 <View_ViewportToVp>
    19e8:	24050040 	li	a1,64
    19ec:	3c040000 	lui	a0,0x0
    19f0:	3c060000 	lui	a2,0x0
    19f4:	00409025 	move	s2,v0
    19f8:	24c60000 	addiu	a2,a2,0
    19fc:	24840000 	addiu	a0,a0,0
    1a00:	00402825 	move	a1,v0
    1a04:	0c000000 	jal	0 <View_ViewportToVp>
    1a08:	24070399 	li	a3,921
    1a0c:	ae1200e0 	sw	s2,224(s0)
    1a10:	3c090000 	lui	t1,0x0
    1a14:	8d290000 	lw	t1,0(t1)
    1a18:	3c0c0000 	lui	t4,0x0
    1a1c:	8d8c0000 	lw	t4,0(t4)
    1a20:	44898000 	mtc1	t1,$f16
    1a24:	3c013f00 	lui	at,0x3f00
    1a28:	448c4000 	mtc1	t4,$f8
    1a2c:	46808020 	cvt.s.w	$f0,$f16
    1a30:	44816000 	mtc1	at,$f12
    1a34:	02402025 	move	a0,s2
    1a38:	468040a0 	cvt.s.w	$f2,$f8
    1a3c:	46000487 	neg.s	$f18,$f0
    1a40:	46001287 	neg.s	$f10,$f2
    1a44:	460c9102 	mul.s	$f4,$f18,$f12
    1a48:	00000000 	nop
    1a4c:	460c0182 	mul.s	$f6,$f0,$f12
    1a50:	00000000 	nop
    1a54:	460c5402 	mul.s	$f16,$f10,$f12
    1a58:	44052000 	mfc1	a1,$f4
    1a5c:	460c1482 	mul.s	$f18,$f2,$f12
    1a60:	44063000 	mfc1	a2,$f6
    1a64:	44078000 	mfc1	a3,$f16
    1a68:	e7b20010 	swc1	$f18,16(sp)
    1a6c:	c604001c 	lwc1	$f4,28(s0)
    1a70:	e7a40014 	swc1	$f4,20(sp)
    1a74:	c6060020 	lwc1	$f6,32(s0)
    1a78:	e7a60018 	swc1	$f6,24(sp)
    1a7c:	c6080024 	lwc1	$f8,36(s0)
    1a80:	0c000000 	jal	0 <View_ViewportToVp>
    1a84:	e7a8001c 	swc1	$f8,28(sp)
    1a88:	02405825 	move	t3,s2
    1a8c:	02007025 	move	t6,s0
    1a90:	264f003c 	addiu	t7,s2,60
    1a94:	8d6a0000 	lw	t2,0(t3)
    1a98:	256b000c 	addiu	t3,t3,12
    1a9c:	25ce000c 	addiu	t6,t6,12
    1aa0:	adca0054 	sw	t2,84(t6)
    1aa4:	8d6dfff8 	lw	t5,-8(t3)
    1aa8:	adcd0058 	sw	t5,88(t6)
    1aac:	8d6afffc 	lw	t2,-4(t3)
    1ab0:	156ffff8 	bne	t3,t7,1a94 <func_800AB9EC+0x238>
    1ab4:	adca005c 	sw	t2,92(t6)
    1ab8:	8d6a0000 	lw	t2,0(t3)
    1abc:	02201025 	move	v0,s1
    1ac0:	3c18da38 	lui	t8,0xda38
    1ac4:	37180007 	ori	t8,t8,0x7
    1ac8:	adca0060 	sw	t2,96(t6)
    1acc:	ac520004 	sw	s2,4(v0)
    1ad0:	ac580000 	sw	t8,0(v0)
    1ad4:	10000040 	b	1bd8 <func_800AB9EC+0x37c>
    1ad8:	26310008 	addiu	s1,s1,8
    1adc:	33280006 	andi	t0,t9,0x6
    1ae0:	1100003d 	beqz	t0,1bd8 <func_800AB9EC+0x37c>
    1ae4:	8fa40040 	lw	a0,64(sp)
    1ae8:	0c000000 	jal	0 <View_ViewportToVp>
    1aec:	24050040 	li	a1,64
    1af0:	3c040000 	lui	a0,0x0
    1af4:	3c060000 	lui	a2,0x0
    1af8:	00409025 	move	s2,v0
    1afc:	24c60000 	addiu	a2,a2,0
    1b00:	24840000 	addiu	a0,a0,0
    1b04:	00402825 	move	a1,v0
    1b08:	0c000000 	jal	0 <View_ViewportToVp>
    1b0c:	240703a4 	li	a3,932
    1b10:	8e090014 	lw	t1,20(s0)
    1b14:	8e0c0010 	lw	t4,16(s0)
    1b18:	8e0f000c 	lw	t7,12(s0)
    1b1c:	8e0b0008 	lw	t3,8(s0)
    1b20:	012c1023 	subu	v0,t1,t4
    1b24:	44825000 	mtc1	v0,$f10
    1b28:	01eb1823 	subu	v1,t7,t3
    1b2c:	44839000 	mtc1	v1,$f18
    1b30:	46805420 	cvt.s.w	$f16,$f10
    1b34:	c608001c 	lwc1	$f8,28(s0)
    1b38:	ae1200e0 	sw	s2,224(s0)
    1b3c:	8e060018 	lw	a2,24(s0)
    1b40:	e7a80010 	swc1	$f8,16(sp)
    1b44:	46809120 	cvt.s.w	$f4,$f18
    1b48:	c60a0020 	lwc1	$f10,32(s0)
    1b4c:	02402025 	move	a0,s2
    1b50:	2605011c 	addiu	a1,s0,284
    1b54:	e7aa0014 	swc1	$f10,20(sp)
    1b58:	c6120024 	lwc1	$f18,36(s0)
    1b5c:	46048183 	div.s	$f6,$f16,$f4
    1b60:	e7b20018 	swc1	$f18,24(sp)
    1b64:	44073000 	mfc1	a3,$f6
    1b68:	0c000000 	jal	0 <View_ViewportToVp>
    1b6c:	00000000 	nop
    1b70:	02405025 	move	t2,s2
    1b74:	0200c025 	move	t8,s0
    1b78:	2659003c 	addiu	t9,s2,60
    1b7c:	8d4d0000 	lw	t5,0(t2)
    1b80:	254a000c 	addiu	t2,t2,12
    1b84:	2718000c 	addiu	t8,t8,12
    1b88:	af0d0054 	sw	t5,84(t8)
    1b8c:	8d4efff8 	lw	t6,-8(t2)
    1b90:	af0e0058 	sw	t6,88(t8)
    1b94:	8d4dfffc 	lw	t5,-4(t2)
    1b98:	1559fff8 	bne	t2,t9,1b7c <func_800AB9EC+0x320>
    1b9c:	af0d005c 	sw	t5,92(t8)
    1ba0:	8d4d0000 	lw	t5,0(t2)
    1ba4:	02201025 	move	v0,s1
    1ba8:	3c08db0e 	lui	t0,0xdb0e
    1bac:	af0d0060 	sw	t5,96(t8)
    1bb0:	ac480000 	sw	t0,0(v0)
    1bb4:	9609011c 	lhu	t1,284(s0)
    1bb8:	26310008 	addiu	s1,s1,8
    1bbc:	3c0cda38 	lui	t4,0xda38
    1bc0:	ac490004 	sw	t1,4(v0)
    1bc4:	02201025 	move	v0,s1
    1bc8:	358c0007 	ori	t4,t4,0x7
    1bcc:	ac4c0000 	sw	t4,0(v0)
    1bd0:	ac520004 	sw	s2,4(v0)
    1bd4:	26310008 	addiu	s1,s1,8
    1bd8:	8faf004c 	lw	t7,76(sp)
    1bdc:	8fa40040 	lw	a0,64(sp)
    1be0:	31eb0001 	andi	t3,t7,0x1
    1be4:	51600036 	beqzl	t3,1cc0 <func_800AB9EC+0x464>
    1be8:	ae000120 	sw	zero,288(s0)
    1bec:	0c000000 	jal	0 <View_ViewportToVp>
    1bf0:	24050040 	li	a1,64
    1bf4:	3c040000 	lui	a0,0x0
    1bf8:	3c060000 	lui	a2,0x0
    1bfc:	00409025 	move	s2,v0
    1c00:	24c60000 	addiu	a2,a2,0
    1c04:	24840000 	addiu	a0,a0,0
    1c08:	00402825 	move	a1,v0
    1c0c:	0c000000 	jal	0 <View_ViewportToVp>
    1c10:	240703b4 	li	a3,948
    1c14:	ae1200e4 	sw	s2,228(s0)
    1c18:	c60c0028 	lwc1	$f12,40(s0)
    1c1c:	c60e002c 	lwc1	$f14,44(s0)
    1c20:	0c000000 	jal	0 <View_ViewportToVp>
    1c24:	8e060030 	lw	a2,48(s0)
    1c28:	c6100034 	lwc1	$f16,52(s0)
    1c2c:	8e050028 	lw	a1,40(s0)
    1c30:	8e06002c 	lw	a2,44(s0)
    1c34:	8e070030 	lw	a3,48(s0)
    1c38:	e7b00010 	swc1	$f16,16(sp)
    1c3c:	c6040038 	lwc1	$f4,56(s0)
    1c40:	02402025 	move	a0,s2
    1c44:	e7a40014 	swc1	$f4,20(sp)
    1c48:	c606003c 	lwc1	$f6,60(s0)
    1c4c:	e7a60018 	swc1	$f6,24(sp)
    1c50:	c6080040 	lwc1	$f8,64(s0)
    1c54:	e7a8001c 	swc1	$f8,28(sp)
    1c58:	c60a0044 	lwc1	$f10,68(s0)
    1c5c:	e7aa0020 	swc1	$f10,32(sp)
    1c60:	c6120048 	lwc1	$f18,72(s0)
    1c64:	0c000000 	jal	0 <View_ViewportToVp>
    1c68:	e7b20024 	swc1	$f18,36(sp)
    1c6c:	0240c025 	move	t8,s2
    1c70:	02007025 	move	t6,s0
    1c74:	264d003c 	addiu	t5,s2,60
    1c78:	8f0a0000 	lw	t2,0(t8)
    1c7c:	2718000c 	addiu	t8,t8,12
    1c80:	25ce000c 	addiu	t6,t6,12
    1c84:	adca0094 	sw	t2,148(t6)
    1c88:	8f19fff8 	lw	t9,-8(t8)
    1c8c:	add90098 	sw	t9,152(t6)
    1c90:	8f0afffc 	lw	t2,-4(t8)
    1c94:	170dfff8 	bne	t8,t5,1c78 <func_800AB9EC+0x41c>
    1c98:	adca009c 	sw	t2,156(t6)
    1c9c:	8f0a0000 	lw	t2,0(t8)
    1ca0:	02201025 	move	v0,s1
    1ca4:	3c08da38 	lui	t0,0xda38
    1ca8:	adca00a0 	sw	t2,160(t6)
    1cac:	35080005 	ori	t0,t0,0x5
    1cb0:	ac480000 	sw	t0,0(v0)
    1cb4:	ac520004 	sw	s2,4(v0)
    1cb8:	26310008 	addiu	s1,s1,8
    1cbc:	ae000120 	sw	zero,288(s0)
    1cc0:	8fa90050 	lw	t1,80(sp)
    1cc4:	24020001 	li	v0,1
    1cc8:	ad310000 	sw	s1,0(t1)
    1ccc:	8fbf003c 	lw	ra,60(sp)
    1cd0:	8fb20038 	lw	s2,56(sp)
    1cd4:	8fb10034 	lw	s1,52(sp)
    1cd8:	8fb00030 	lw	s0,48(sp)
    1cdc:	03e00008 	jr	ra
    1ce0:	27bd0048 	addiu	sp,sp,72

00001ce4 <func_800ABE74>:
    1ce4:	27bdffc8 	addiu	sp,sp,-56
    1ce8:	e7ac0038 	swc1	$f12,56(sp)
    1cec:	c7a60038 	lwc1	$f6,56(sp)
    1cf0:	e7ae003c 	swc1	$f14,60(sp)
    1cf4:	c7aa003c 	lwc1	$f10,60(sp)
    1cf8:	46063202 	mul.s	$f8,$f6,$f6
    1cfc:	afa60040 	sw	a2,64(sp)
    1d00:	c7a60040 	lwc1	$f6,64(sp)
    1d04:	460a5402 	mul.s	$f16,$f10,$f10
    1d08:	3c010000 	lui	at,0x0
    1d0c:	c424031c 	lwc1	$f4,796(at)
    1d10:	46063282 	mul.s	$f10,$f6,$f6
    1d14:	3c040000 	lui	a0,0x0
    1d18:	afbf002c 	sw	ra,44(sp)
    1d1c:	00001825 	move	v1,zero
    1d20:	c7a6003c 	lwc1	$f6,60(sp)
    1d24:	46104480 	add.s	$f18,$f8,$f16
    1d28:	c7b00038 	lwc1	$f16,56(sp)
    1d2c:	3c010000 	lui	at,0x0
    1d30:	248402d0 	addiu	a0,a0,720
    1d34:	460a9200 	add.s	$f8,$f18,$f10
    1d38:	c7b20040 	lwc1	$f18,64(sp)
    1d3c:	4608203c 	c.lt.s	$f4,$f8
    1d40:	00000000 	nop
    1d44:	45020004 	bc1fl	1d58 <func_800ABE74+0x74>
    1d48:	44800000 	mtc1	zero,$f0
    1d4c:	10000037 	b	1e2c <func_800ABE74+0x148>
    1d50:	24030003 	li	v1,3
    1d54:	44800000 	mtc1	zero,$f0
    1d58:	c7a20038 	lwc1	$f2,56(sp)
    1d5c:	c7ac003c 	lwc1	$f12,60(sp)
    1d60:	4610003e 	c.le.s	$f0,$f16
    1d64:	00000000 	nop
    1d68:	45020004 	bc1fl	1d7c <func_800ABE74+0x98>
    1d6c:	46001087 	neg.s	$f2,$f2
    1d70:	10000002 	b	1d7c <func_800ABE74+0x98>
    1d74:	46008086 	mov.s	$f2,$f16
    1d78:	46001087 	neg.s	$f2,$f2
    1d7c:	4606003e 	c.le.s	$f0,$f6
    1d80:	00000000 	nop
    1d84:	45020004 	bc1fl	1d98 <func_800ABE74+0xb4>
    1d88:	46006307 	neg.s	$f12,$f12
    1d8c:	10000002 	b	1d98 <func_800ABE74+0xb4>
    1d90:	46003306 	mov.s	$f12,$f6
    1d94:	46006307 	neg.s	$f12,$f12
    1d98:	4612003e 	c.le.s	$f0,$f18
    1d9c:	c7a00040 	lwc1	$f0,64(sp)
    1da0:	45020004 	bc1fl	1db4 <func_800ABE74+0xd0>
    1da4:	46000007 	neg.s	$f0,$f0
    1da8:	10000002 	b	1db4 <func_800ABE74+0xd0>
    1dac:	46009006 	mov.s	$f0,$f18
    1db0:	46000007 	neg.s	$f0,$f0
    1db4:	c42e0320 	lwc1	$f14,800(at)
    1db8:	4602703c 	c.lt.s	$f14,$f2
    1dbc:	00000000 	nop
    1dc0:	45010009 	bc1t	1de8 <func_800ABE74+0x104>
    1dc4:	00000000 	nop
    1dc8:	460c703c 	c.lt.s	$f14,$f12
    1dcc:	00000000 	nop
    1dd0:	45010005 	bc1t	1de8 <func_800ABE74+0x104>
    1dd4:	00000000 	nop
    1dd8:	4600703c 	c.lt.s	$f14,$f0
    1ddc:	3c01467a 	lui	at,0x467a
    1de0:	45020004 	bc1fl	1df4 <func_800ABE74+0x110>
    1de4:	44817000 	mtc1	at,$f14
    1de8:	10000010 	b	1e2c <func_800ABE74+0x148>
    1dec:	24030002 	li	v1,2
    1df0:	44817000 	mtc1	at,$f14
    1df4:	00000000 	nop
    1df8:	4602703c 	c.lt.s	$f14,$f2
    1dfc:	00000000 	nop
    1e00:	4503000a 	bc1tl	1e2c <func_800ABE74+0x148>
    1e04:	24030001 	li	v1,1
    1e08:	460c703c 	c.lt.s	$f14,$f12
    1e0c:	00000000 	nop
    1e10:	45030006 	bc1tl	1e2c <func_800ABE74+0x148>
    1e14:	24030001 	li	v1,1
    1e18:	4600703c 	c.lt.s	$f14,$f0
    1e1c:	00000000 	nop
    1e20:	45000002 	bc1f	1e2c <func_800ABE74+0x148>
    1e24:	00000000 	nop
    1e28:	24030001 	li	v1,1
    1e2c:	50600017 	beqzl	v1,1e8c <func_800ABE74+0x1a8>
    1e30:	8fbf002c 	lw	ra,44(sp)
    1e34:	0c000000 	jal	0 <View_ViewportToVp>
    1e38:	afa30034 	sw	v1,52(sp)
    1e3c:	c7aa0038 	lwc1	$f10,56(sp)
    1e40:	c7a8003c 	lwc1	$f8,60(sp)
    1e44:	c7a60040 	lwc1	$f6,64(sp)
    1e48:	46005121 	cvt.d.s	$f4,$f10
    1e4c:	8fa30034 	lw	v1,52(sp)
    1e50:	46004421 	cvt.d.s	$f16,$f8
    1e54:	460034a1 	cvt.d.s	$f18,$f6
    1e58:	44072000 	mfc1	a3,$f4
    1e5c:	44062800 	mfc1	a2,$f5
    1e60:	3c040000 	lui	a0,0x0
    1e64:	248402d8 	addiu	a0,a0,728
    1e68:	f7b20018 	sdc1	$f18,24(sp)
    1e6c:	f7b00010 	sdc1	$f16,16(sp)
    1e70:	0c000000 	jal	0 <View_ViewportToVp>
    1e74:	afa30020 	sw	v1,32(sp)
    1e78:	3c040000 	lui	a0,0x0
    1e7c:	0c000000 	jal	0 <View_ViewportToVp>
    1e80:	24840310 	addiu	a0,a0,784
    1e84:	8fa30034 	lw	v1,52(sp)
    1e88:	8fbf002c 	lw	ra,44(sp)
    1e8c:	27bd0038 	addiu	sp,sp,56
    1e90:	00601025 	move	v0,v1
    1e94:	03e00008 	jr	ra
    1e98:	00000000 	nop
    1e9c:	00000000 	nop
