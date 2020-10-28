
build/src/overlays/actors/ovl_Boss_Fd2/z_boss_fd2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808D2670>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afbf0014 	sw	ra,20(sp)
       8:	afa40018 	sw	a0,24(sp)
       c:	00001025 	move	v0,zero
      10:	90ae0024 	lbu	t6,36(a1)
      14:	24420001 	addiu	v0,v0,1
      18:	00021400 	sll	v0,v0,0x10
      1c:	15c00027 	bnez	t6,bc <func_808D2670+0xbc>
      20:	00021403 	sra	v0,v0,0x10
      24:	240f0002 	li	t7,2
      28:	a0af0024 	sb	t7,36(a1)
      2c:	8cd90000 	lw	t9,0(a2)
      30:	3c01447a 	lui	at,0x447a
      34:	44813000 	mtc1	at,$f6
      38:	acb90000 	sw	t9,0(a1)
      3c:	8cd80004 	lw	t8,4(a2)
      40:	3c0142c8 	lui	at,0x42c8
      44:	44816000 	mtc1	at,$f12
      48:	acb80004 	sw	t8,4(a1)
      4c:	8cd90008 	lw	t9,8(a2)
      50:	acb90008 	sw	t9,8(a1)
      54:	8ce90000 	lw	t1,0(a3)
      58:	aca9000c 	sw	t1,12(a1)
      5c:	8ce80004 	lw	t0,4(a3)
      60:	aca80010 	sw	t0,16(a1)
      64:	8ce90008 	lw	t1,8(a3)
      68:	aca90014 	sw	t1,20(a1)
      6c:	8faa0028 	lw	t2,40(sp)
      70:	8d4c0000 	lw	t4,0(t2)
      74:	acac0018 	sw	t4,24(a1)
      78:	8d4b0004 	lw	t3,4(t2)
      7c:	acab001c 	sw	t3,28(a1)
      80:	8d4c0008 	lw	t4,8(t2)
      84:	acac0020 	sw	t4,32(a1)
      88:	c7a4002c 	lwc1	$f4,44(sp)
      8c:	46062203 	div.s	$f8,$f4,$f6
      90:	e4a80030 	swc1	$f8,48(a1)
      94:	0c000000 	jal	0 <func_808D2670>
      98:	afa5001c 	sw	a1,28(sp)
      9c:	8fa5001c 	lw	a1,28(sp)
      a0:	3c0142c8 	lui	at,0x42c8
      a4:	44816000 	mtc1	at,$f12
      a8:	0c000000 	jal	0 <func_808D2670>
      ac:	e4a00034 	swc1	$f0,52(a1)
      b0:	8fa5001c 	lw	a1,28(sp)
      b4:	10000004 	b	c8 <func_808D2670+0xc8>
      b8:	e4a00038 	swc1	$f0,56(a1)
      bc:	284100b4 	slti	at,v0,180
      c0:	1420ffd3 	bnez	at,10 <func_808D2670+0x10>
      c4:	24a5003c 	addiu	a1,a1,60
      c8:	8fbf0014 	lw	ra,20(sp)
      cc:	27bd0018 	addiu	sp,sp,24
      d0:	03e00008 	jr	ra
      d4:	00000000 	nop

000000d8 <func_808D2748>:
      d8:	27bdffe8 	addiu	sp,sp,-24
      dc:	afbf0014 	sw	ra,20(sp)
      e0:	afa40018 	sw	a0,24(sp)
      e4:	00001025 	move	v0,zero
      e8:	90ae0024 	lbu	t6,36(a1)
      ec:	24420001 	addiu	v0,v0,1
      f0:	00021400 	sll	v0,v0,0x10
      f4:	15c00036 	bnez	t6,1d0 <func_808D2748+0xf8>
      f8:	00021403 	sra	v0,v0,0x10
      fc:	240f0004 	li	t7,4
     100:	a0af0024 	sb	t7,36(a1)
     104:	a0a00025 	sb	zero,37(a1)
     108:	8cd90000 	lw	t9,0(a2)
     10c:	3c014120 	lui	at,0x4120
     110:	44816000 	mtc1	at,$f12
     114:	acb90000 	sw	t9,0(a1)
     118:	8cd80004 	lw	t8,4(a2)
     11c:	c4a40000 	lwc1	$f4,0(a1)
     120:	acb80004 	sw	t8,4(a1)
     124:	8cd90008 	lw	t9,8(a2)
     128:	c4aa0004 	lwc1	$f10,4(a1)
     12c:	acb90008 	sw	t9,8(a1)
     130:	8ce90000 	lw	t1,0(a3)
     134:	aca9000c 	sw	t1,12(a1)
     138:	8ce80004 	lw	t0,4(a3)
     13c:	c4a6000c 	lwc1	$f6,12(a1)
     140:	aca80010 	sw	t0,16(a1)
     144:	8ce90008 	lw	t1,8(a3)
     148:	46062201 	sub.s	$f8,$f4,$f6
     14c:	c4b00010 	lwc1	$f16,16(a1)
     150:	aca90014 	sw	t1,20(a1)
     154:	8faa0028 	lw	t2,40(sp)
     158:	c4a60014 	lwc1	$f6,20(a1)
     15c:	c4a40008 	lwc1	$f4,8(a1)
     160:	8d4c0000 	lw	t4,0(t2)
     164:	46105481 	sub.s	$f18,$f10,$f16
     168:	44805000 	mtc1	zero,$f10
     16c:	acac0018 	sw	t4,24(a1)
     170:	8d4b0004 	lw	t3,4(t2)
     174:	acab001c 	sw	t3,28(a1)
     178:	8d4c0008 	lw	t4,8(t2)
     17c:	e4a80000 	swc1	$f8,0(a1)
     180:	46062201 	sub.s	$f8,$f4,$f6
     184:	e4b20004 	swc1	$f18,4(a1)
     188:	e4aa0034 	swc1	$f10,52(a1)
     18c:	acac0020 	sw	t4,32(a1)
     190:	e4a80008 	swc1	$f8,8(a1)
     194:	87ad0032 	lh	t5,50(sp)
     198:	a4ad002a 	sh	t5,42(a1)
     19c:	0c000000 	jal	0 <func_808D2670>
     1a0:	afa5001c 	sw	a1,28(sp)
     1a4:	8fa5001c 	lw	a1,28(sp)
     1a8:	3c0143c8 	lui	at,0x43c8
     1ac:	44819000 	mtc1	at,$f18
     1b0:	e4a00038 	swc1	$f0,56(a1)
     1b4:	a4a0002c 	sh	zero,44(a1)
     1b8:	c7b0002c 	lwc1	$f16,44(sp)
     1bc:	46128103 	div.s	$f4,$f16,$f18
     1c0:	e4a40030 	swc1	$f4,48(a1)
     1c4:	87ae0036 	lh	t6,54(sp)
     1c8:	10000004 	b	1dc <func_808D2748+0x104>
     1cc:	a4ae002e 	sh	t6,46(a1)
     1d0:	284100b4 	slti	at,v0,180
     1d4:	1420ffc4 	bnez	at,e8 <func_808D2748+0x10>
     1d8:	24a5003c 	addiu	a1,a1,60
     1dc:	8fbf0014 	lw	ra,20(sp)
     1e0:	27bd0018 	addiu	sp,sp,24
     1e4:	03e00008 	jr	ra
     1e8:	00000000 	nop

000001ec <func_808D285C>:
     1ec:	27bdffe8 	addiu	sp,sp,-24
     1f0:	afbf0014 	sw	ra,20(sp)
     1f4:	afa40018 	sw	a0,24(sp)
     1f8:	00001025 	move	v0,zero
     1fc:	90ae0024 	lbu	t6,36(a1)
     200:	24420001 	addiu	v0,v0,1
     204:	00021400 	sll	v0,v0,0x10
     208:	15c00026 	bnez	t6,2a4 <func_808D285C+0xb8>
     20c:	00021403 	sra	v0,v0,0x10
     210:	240f0001 	li	t7,1
     214:	a0af0024 	sb	t7,36(a1)
     218:	8cd90000 	lw	t9,0(a2)
     21c:	3c01447a 	lui	at,0x447a
     220:	44813000 	mtc1	at,$f6
     224:	acb90000 	sw	t9,0(a1)
     228:	8cd80004 	lw	t8,4(a2)
     22c:	240d00ff 	li	t5,255
     230:	3c014120 	lui	at,0x4120
     234:	acb80004 	sw	t8,4(a1)
     238:	8cd90008 	lw	t9,8(a2)
     23c:	44816000 	mtc1	at,$f12
     240:	acb90008 	sw	t9,8(a1)
     244:	8ce90000 	lw	t1,0(a3)
     248:	aca9000c 	sw	t1,12(a1)
     24c:	8ce80004 	lw	t0,4(a3)
     250:	aca80010 	sw	t0,16(a1)
     254:	8ce90008 	lw	t1,8(a3)
     258:	aca90014 	sw	t1,20(a1)
     25c:	8faa0028 	lw	t2,40(sp)
     260:	8d4c0000 	lw	t4,0(t2)
     264:	acac0018 	sw	t4,24(a1)
     268:	8d4b0004 	lw	t3,4(t2)
     26c:	acab001c 	sw	t3,28(a1)
     270:	8d4c0008 	lw	t4,8(t2)
     274:	acac0020 	sw	t4,32(a1)
     278:	c7a4002c 	lwc1	$f4,44(sp)
     27c:	a4ad002a 	sh	t5,42(a1)
     280:	46062203 	div.s	$f8,$f4,$f6
     284:	e4a80030 	swc1	$f8,48(a1)
     288:	0c000000 	jal	0 <func_808D2670>
     28c:	afa5001c 	sw	a1,28(sp)
     290:	4600028d 	trunc.w.s	$f10,$f0
     294:	8fa5001c 	lw	a1,28(sp)
     298:	44195000 	mfc1	t9,$f10
     29c:	10000004 	b	2b0 <func_808D285C+0xc4>
     2a0:	a0b90025 	sb	t9,37(a1)
     2a4:	284100b4 	slti	at,v0,180
     2a8:	1420ffd4 	bnez	at,1fc <func_808D285C+0x10>
     2ac:	24a5003c 	addiu	a1,a1,60
     2b0:	8fbf0014 	lw	ra,20(sp)
     2b4:	27bd0018 	addiu	sp,sp,24
     2b8:	03e00008 	jr	ra
     2bc:	00000000 	nop

000002c0 <func_808D2930>:
     2c0:	27bdffe8 	addiu	sp,sp,-24
     2c4:	afbf0014 	sw	ra,20(sp)
     2c8:	afa40018 	sw	a0,24(sp)
     2cc:	00001025 	move	v0,zero
     2d0:	90ae0024 	lbu	t6,36(a1)
     2d4:	24420001 	addiu	v0,v0,1
     2d8:	00021400 	sll	v0,v0,0x10
     2dc:	15c00027 	bnez	t6,37c <func_808D2930+0xbc>
     2e0:	00021403 	sra	v0,v0,0x10
     2e4:	240f0005 	li	t7,5
     2e8:	a0af0024 	sb	t7,36(a1)
     2ec:	8cd90000 	lw	t9,0(a2)
     2f0:	3c01447a 	lui	at,0x447a
     2f4:	44813000 	mtc1	at,$f6
     2f8:	acb90000 	sw	t9,0(a1)
     2fc:	8cd80004 	lw	t8,4(a2)
     300:	3c0142c8 	lui	at,0x42c8
     304:	44816000 	mtc1	at,$f12
     308:	acb80004 	sw	t8,4(a1)
     30c:	8cd90008 	lw	t9,8(a2)
     310:	acb90008 	sw	t9,8(a1)
     314:	8ce90000 	lw	t1,0(a3)
     318:	aca9000c 	sw	t1,12(a1)
     31c:	8ce80004 	lw	t0,4(a3)
     320:	aca80010 	sw	t0,16(a1)
     324:	8ce90008 	lw	t1,8(a3)
     328:	aca90014 	sw	t1,20(a1)
     32c:	8faa0028 	lw	t2,40(sp)
     330:	8d4c0000 	lw	t4,0(t2)
     334:	acac0018 	sw	t4,24(a1)
     338:	8d4b0004 	lw	t3,4(t2)
     33c:	acab001c 	sw	t3,28(a1)
     340:	8d4c0008 	lw	t4,8(t2)
     344:	acac0020 	sw	t4,32(a1)
     348:	c7a4002c 	lwc1	$f4,44(sp)
     34c:	46062203 	div.s	$f8,$f4,$f6
     350:	e4a80030 	swc1	$f8,48(a1)
     354:	0c000000 	jal	0 <func_808D2670>
     358:	afa5001c 	sw	a1,28(sp)
     35c:	8fa5001c 	lw	a1,28(sp)
     360:	3c0142c8 	lui	at,0x42c8
     364:	44816000 	mtc1	at,$f12
     368:	0c000000 	jal	0 <func_808D2670>
     36c:	e4a00034 	swc1	$f0,52(a1)
     370:	8fa5001c 	lw	a1,28(sp)
     374:	10000004 	b	388 <func_808D2930+0xc8>
     378:	e4a00038 	swc1	$f0,56(a1)
     37c:	284100b4 	slti	at,v0,180
     380:	1420ffd3 	bnez	at,2d0 <func_808D2930+0x10>
     384:	24a5003c 	addiu	a1,a1,60
     388:	8fbf0014 	lw	ra,20(sp)
     38c:	27bd0018 	addiu	sp,sp,24
     390:	03e00008 	jr	ra
     394:	00000000 	nop

00000398 <func_808D2A08>:
     398:	00001025 	move	v0,zero
     39c:	908e0024 	lbu	t6,36(a0)
     3a0:	24420001 	addiu	v0,v0,1
     3a4:	00021400 	sll	v0,v0,0x10
     3a8:	15c0001c 	bnez	t6,41c <func_808D2A08+0x84>
     3ac:	00021403 	sra	v0,v0,0x10
     3b0:	240f0003 	li	t7,3
     3b4:	a08f0024 	sb	t7,36(a0)
     3b8:	8cb90000 	lw	t9,0(a1)
     3bc:	3c0143c8 	lui	at,0x43c8
     3c0:	44813000 	mtc1	at,$f6
     3c4:	ac990000 	sw	t9,0(a0)
     3c8:	8cb80004 	lw	t8,4(a1)
     3cc:	ac980004 	sw	t8,4(a0)
     3d0:	8cb90008 	lw	t9,8(a1)
     3d4:	ac990008 	sw	t9,8(a0)
     3d8:	8cc90000 	lw	t1,0(a2)
     3dc:	ac89000c 	sw	t1,12(a0)
     3e0:	8cc80004 	lw	t0,4(a2)
     3e4:	ac880010 	sw	t0,16(a0)
     3e8:	8cc90008 	lw	t1,8(a2)
     3ec:	ac890014 	sw	t1,20(a0)
     3f0:	8ceb0000 	lw	t3,0(a3)
     3f4:	ac8b0018 	sw	t3,24(a0)
     3f8:	8cea0004 	lw	t2,4(a3)
     3fc:	ac8a001c 	sw	t2,28(a0)
     400:	8ceb0008 	lw	t3,8(a3)
     404:	a480002c 	sh	zero,44(a0)
     408:	ac8b0020 	sw	t3,32(a0)
     40c:	c7a40010 	lwc1	$f4,16(sp)
     410:	46062203 	div.s	$f8,$f4,$f6
     414:	03e00008 	jr	ra
     418:	e4880030 	swc1	$f8,48(a0)
     41c:	284100b4 	slti	at,v0,180
     420:	1420ffde 	bnez	at,39c <func_808D2A08+0x4>
     424:	2484003c 	addiu	a0,a0,60
     428:	03e00008 	jr	ra
     42c:	00000000 	nop

00000430 <BossFd2_Init>:
     430:	27bdffc0 	addiu	sp,sp,-64
     434:	afa50044 	sw	a1,68(sp)
     438:	afbf002c 	sw	ra,44(sp)
     43c:	afb00028 	sw	s0,40(sp)
     440:	3c050000 	lui	a1,0x0
     444:	00808025 	move	s0,a0
     448:	0c000000 	jal	0 <func_808D2670>
     44c:	24a50000 	addiu	a1,a1,0
     450:	3c053be5 	lui	a1,0x3be5
     454:	34a56040 	ori	a1,a1,0x6040
     458:	0c000000 	jal	0 <func_808D2670>
     45c:	02002025 	move	a0,s0
     460:	3c010000 	lui	at,0x0
     464:	c4240000 	lwc1	$f4,0(at)
     468:	3c01c411 	lui	at,0xc411
     46c:	44813000 	mtc1	at,$f6
     470:	c6080054 	lwc1	$f8,84(s0)
     474:	260400b4 	addiu	a0,s0,180
     478:	00003025 	move	a2,zero
     47c:	46083283 	div.s	$f10,$f6,$f8
     480:	24070000 	li	a3,0
     484:	e6040028 	swc1	$f4,40(s0)
     488:	44055000 	mfc1	a1,$f10
     48c:	0c000000 	jal	0 <func_808D2670>
     490:	00000000 	nop
     494:	3c060601 	lui	a2,0x601
     498:	3c070601 	lui	a3,0x601
     49c:	24e7c8ec 	addiu	a3,a3,-14100
     4a0:	24c61a78 	addiu	a2,a2,6776
     4a4:	8fa40044 	lw	a0,68(sp)
     4a8:	2605014c 	addiu	a1,s0,332
     4ac:	afa00010 	sw	zero,16(sp)
     4b0:	afa00014 	sw	zero,20(sp)
     4b4:	0c000000 	jal	0 <func_808D2670>
     4b8:	afa00018 	sw	zero,24(sp)
     4bc:	860e001c 	lh	t6,28(s0)
     4c0:	3c0f0000 	lui	t7,0x0
     4c4:	02002025 	move	a0,s0
     4c8:	15c00005 	bnez	t6,4e0 <BossFd2_Init+0xb0>
     4cc:	25ef0000 	addiu	t7,t7,0
     4d0:	0c000000 	jal	0 <func_808D2670>
     4d4:	8fa50044 	lw	a1,68(sp)
     4d8:	10000003 	b	4e8 <BossFd2_Init+0xb8>
     4dc:	2605141c 	addiu	a1,s0,5148
     4e0:	ae0f0190 	sw	t7,400(s0)
     4e4:	2605141c 	addiu	a1,s0,5148
     4e8:	afa50034 	sw	a1,52(sp)
     4ec:	0c000000 	jal	0 <func_808D2670>
     4f0:	8fa40044 	lw	a0,68(sp)
     4f4:	3c070000 	lui	a3,0x0
     4f8:	2618143c 	addiu	t8,s0,5180
     4fc:	8fa50034 	lw	a1,52(sp)
     500:	afb80010 	sw	t8,16(sp)
     504:	24e70000 	addiu	a3,a3,0
     508:	8fa40044 	lw	a0,68(sp)
     50c:	0c000000 	jal	0 <func_808D2670>
     510:	02003025 	move	a2,s0
     514:	8fbf002c 	lw	ra,44(sp)
     518:	8fb00028 	lw	s0,40(sp)
     51c:	27bd0040 	addiu	sp,sp,64
     520:	03e00008 	jr	ra
     524:	00000000 	nop

00000528 <BossFd2_Destroy>:
     528:	27bdffe8 	addiu	sp,sp,-24
     52c:	afbf0014 	sw	ra,20(sp)
     530:	afa40018 	sw	a0,24(sp)
     534:	afa5001c 	sw	a1,28(sp)
     538:	0c000000 	jal	0 <func_808D2670>
     53c:	2484014c 	addiu	a0,a0,332
     540:	8fa50018 	lw	a1,24(sp)
     544:	8fa4001c 	lw	a0,28(sp)
     548:	0c000000 	jal	0 <func_808D2670>
     54c:	24a5141c 	addiu	a1,a1,5148
     550:	8fbf0014 	lw	ra,20(sp)
     554:	27bd0018 	addiu	sp,sp,24
     558:	03e00008 	jr	ra
     55c:	00000000 	nop

00000560 <func_808D2BD0>:
     560:	27bdffd8 	addiu	sp,sp,-40
     564:	afbf001c 	sw	ra,28(sp)
     568:	afb00018 	sw	s0,24(sp)
     56c:	afa5002c 	sw	a1,44(sp)
     570:	8c8e0118 	lw	t6,280(a0)
     574:	00808025 	move	s0,a0
     578:	3c040000 	lui	a0,0x0
     57c:	24840000 	addiu	a0,a0,0
     580:	0c000000 	jal	0 <func_808D2670>
     584:	afae0024 	sw	t6,36(sp)
     588:	3c050601 	lui	a1,0x601
     58c:	24a5c1d0 	addiu	a1,a1,-15920
     590:	0c000000 	jal	0 <func_808D2670>
     594:	2604014c 	addiu	a0,s0,332
     598:	44802000 	mtc1	zero,$f4
     59c:	3c0f0000 	lui	t7,0x0
     5a0:	25ef0000 	addiu	t7,t7,0
     5a4:	ae0f0190 	sw	t7,400(s0)
     5a8:	3c010000 	lui	at,0x0
     5ac:	e6040168 	swc1	$f4,360(s0)
     5b0:	0c000000 	jal	0 <func_808D2670>
     5b4:	c42c0000 	lwc1	$f12,0(at)
     5b8:	4600018d 	trunc.w.s	$f6,$f0
     5bc:	3c0b0000 	lui	t3,0x0
     5c0:	256b0000 	addiu	t3,t3,0
     5c4:	3c040000 	lui	a0,0x0
     5c8:	44193000 	mfc1	t9,$f6
     5cc:	24840000 	addiu	a0,a0,0
     5d0:	00194400 	sll	t0,t9,0x10
     5d4:	00084c03 	sra	t1,t0,0x10
     5d8:	00095080 	sll	t2,t1,0x2
     5dc:	01495023 	subu	t2,t2,t1
     5e0:	000a5080 	sll	t2,t2,0x2
     5e4:	014b1021 	addu	v0,t2,t3
     5e8:	c4480000 	lwc1	$f8,0(v0)
     5ec:	e6080024 	swc1	$f8,36(s0)
     5f0:	c44a0008 	lwc1	$f10,8(v0)
     5f4:	a6000198 	sh	zero,408(s0)
     5f8:	0c000000 	jal	0 <func_808D2670>
     5fc:	e60a002c 	swc1	$f10,44(s0)
     600:	8fa30024 	lw	v1,36(sp)
     604:	240c000a 	li	t4,10
     608:	a60c01bc 	sh	t4,444(s0)
     60c:	50600014 	beqzl	v1,660 <func_808D2BD0+0x100>
     610:	8fbf001c 	lw	ra,28(sp)
     614:	806200af 	lb	v0,175(v1)
     618:	28410012 	slti	at,v0,18
     61c:	54200004 	bnezl	at,630 <func_808D2BD0+0xd0>
     620:	2841000c 	slti	at,v0,12
     624:	1000000d 	b	65c <func_808D2BD0+0xfc>
     628:	a60001ac 	sh	zero,428(s0)
     62c:	2841000c 	slti	at,v0,12
     630:	14200003 	bnez	at,640 <func_808D2BD0+0xe0>
     634:	240d0001 	li	t5,1
     638:	10000008 	b	65c <func_808D2BD0+0xfc>
     63c:	a60d01ac 	sh	t5,428(s0)
     640:	28410006 	slti	at,v0,6
     644:	14200004 	bnez	at,658 <func_808D2BD0+0xf8>
     648:	240f0003 	li	t7,3
     64c:	240e0002 	li	t6,2
     650:	10000002 	b	65c <func_808D2BD0+0xfc>
     654:	a60e01ac 	sh	t6,428(s0)
     658:	a60f01ac 	sh	t7,428(s0)
     65c:	8fbf001c 	lw	ra,28(sp)
     660:	8fb00018 	lw	s0,24(sp)
     664:	27bd0028 	addiu	sp,sp,40
     668:	03e00008 	jr	ra
     66c:	00000000 	nop

00000670 <func_808D2CE0>:
     670:	27bdffc0 	addiu	sp,sp,-64
     674:	afbf0034 	sw	ra,52(sp)
     678:	afb20030 	sw	s2,48(sp)
     67c:	afb1002c 	sw	s1,44(sp)
     680:	afb00028 	sw	s0,40(sp)
     684:	f7b40020 	sdc1	$f20,32(sp)
     688:	afa50044 	sw	a1,68(sp)
     68c:	8c8e0118 	lw	t6,280(a0)
     690:	00809025 	move	s2,a0
     694:	3c040000 	lui	a0,0x0
     698:	afae0038 	sw	t6,56(sp)
     69c:	8cb01c44 	lw	s0,7236(a1)
     6a0:	86450198 	lh	a1,408(s2)
     6a4:	0c000000 	jal	0 <func_808D2670>
     6a8:	24840000 	addiu	a0,a0,0
     6ac:	2651014c 	addiu	s1,s2,332
     6b0:	0c000000 	jal	0 <func_808D2670>
     6b4:	02202025 	move	a0,s1
     6b8:	3c040000 	lui	a0,0x0
     6bc:	0c000000 	jal	0 <func_808D2670>
     6c0:	24840000 	addiu	a0,a0,0
     6c4:	86420198 	lh	v0,408(s2)
     6c8:	3c040000 	lui	a0,0x0
     6cc:	24010001 	li	at,1
     6d0:	10400007 	beqz	v0,6f0 <func_808D2CE0+0x80>
     6d4:	24840000 	addiu	a0,a0,0
     6d8:	1041004f 	beq	v0,at,818 <func_808D2CE0+0x1a8>
     6dc:	24010002 	li	at,2
     6e0:	104100a3 	beq	v0,at,970 <func_808D2CE0+0x300>
     6e4:	264400b6 	addiu	a0,s2,182
     6e8:	100000c2 	b	9f4 <func_808D2CE0+0x384>
     6ec:	00000000 	nop
     6f0:	0c000000 	jal	0 <func_808D2670>
     6f4:	864501bc 	lh	a1,444(s2)
     6f8:	3c040000 	lui	a0,0x0
     6fc:	24840000 	addiu	a0,a0,0
     700:	0c000000 	jal	0 <func_808D2670>
     704:	02002825 	move	a1,s0
     708:	3c040000 	lui	a0,0x0
     70c:	24840000 	addiu	a0,a0,0
     710:	0c000000 	jal	0 <func_808D2670>
     714:	8fa50038 	lw	a1,56(sp)
     718:	865801bc 	lh	t8,444(s2)
     71c:	3c01428c 	lui	at,0x428c
     720:	170000b4 	bnez	t8,9f4 <func_808D2CE0+0x384>
     724:	00000000 	nop
     728:	44812000 	mtc1	at,$f4
     72c:	c6060028 	lwc1	$f6,40(s0)
     730:	3c040000 	lui	a0,0x0
     734:	4606203c 	c.lt.s	$f4,$f6
     738:	00000000 	nop
     73c:	450000ad 	bc1f	9f4 <func_808D2CE0+0x384>
     740:	00000000 	nop
     744:	0c000000 	jal	0 <func_808D2670>
     748:	24840000 	addiu	a0,a0,0
     74c:	8fa20038 	lw	v0,56(sp)
     750:	24050001 	li	a1,1
     754:	24060032 	li	a2,50
     758:	a04002d7 	sb	zero,727(v0)
     75c:	c6480024 	lwc1	$f8,36(s2)
     760:	24075000 	li	a3,20480
     764:	e44802c8 	swc1	$f8,712(v0)
     768:	c64a002c 	lwc1	$f10,44(s2)
     76c:	e44a02d0 	swc1	$f10,720(v0)
     770:	0c000000 	jal	0 <func_808D2670>
     774:	8fa40044 	lw	a0,68(sp)
     778:	864801a8 	lh	t0,424(s2)
     77c:	3c01c348 	lui	at,0xc348
     780:	44818000 	mtc1	at,$f16
     784:	24190001 	li	t9,1
     788:	25090001 	addiu	t1,t0,1
     78c:	a6590198 	sh	t9,408(s2)
     790:	a64901a8 	sh	t1,424(s2)
     794:	e6500028 	swc1	$f16,40(s2)
     798:	8faa0038 	lw	t2,56(sp)
     79c:	24010018 	li	at,24
     7a0:	3c040000 	lui	a0,0x0
     7a4:	814200af 	lb	v0,175(t2)
     7a8:	54410004 	bnel	v0,at,7bc <func_808D2CE0+0x14c>
     7ac:	28410012 	slti	at,v0,18
     7b0:	10000010 	b	7f4 <func_808D2CE0+0x184>
     7b4:	2402001e 	li	v0,30
     7b8:	28410012 	slti	at,v0,18
     7bc:	54200004 	bnezl	at,7d0 <func_808D2CE0+0x160>
     7c0:	2841000c 	slti	at,v0,12
     7c4:	1000000b 	b	7f4 <func_808D2CE0+0x184>
     7c8:	24020019 	li	v0,25
     7cc:	2841000c 	slti	at,v0,12
     7d0:	54200004 	bnezl	at,7e4 <func_808D2CE0+0x174>
     7d4:	28410006 	slti	at,v0,6
     7d8:	10000006 	b	7f4 <func_808D2CE0+0x184>
     7dc:	24020014 	li	v0,20
     7e0:	28410006 	slti	at,v0,6
     7e4:	14200003 	bnez	at,7f4 <func_808D2CE0+0x184>
     7e8:	24020005 	li	v0,5
     7ec:	10000001 	b	7f4 <func_808D2CE0+0x184>
     7f0:	2402000a 	li	v0,10
     7f4:	a64201bc 	sh	v0,444(s2)
     7f8:	864b01bc 	lh	t3,444(s2)
     7fc:	8fad0038 	lw	t5,56(sp)
     800:	24840000 	addiu	a0,a0,0
     804:	256c000a 	addiu	t4,t3,10
     808:	0c000000 	jal	0 <func_808D2670>
     80c:	a5ac0250 	sh	t4,592(t5)
     810:	10000078 	b	9f4 <func_808D2CE0+0x384>
     814:	00000000 	nop
     818:	864e01bc 	lh	t6,444(s2)
     81c:	15c00075 	bnez	t6,9f4 <func_808D2CE0+0x384>
     820:	00000000 	nop
     824:	864201ac 	lh	v0,428(s2)
     828:	3c010000 	lui	at,0x0
     82c:	10400017 	beqz	v0,88c <func_808D2CE0+0x21c>
     830:	244fffff 	addiu	t7,v0,-1
     834:	a64f01ac 	sh	t7,428(s2)
     838:	0c000000 	jal	0 <func_808D2670>
     83c:	c42c0000 	lwc1	$f12,0(at)
     840:	4600048d 	trunc.w.s	$f18,$f0
     844:	3c0b0000 	lui	t3,0x0
     848:	256b0000 	addiu	t3,t3,0
     84c:	240c000a 	li	t4,10
     850:	44199000 	mfc1	t9,$f18
     854:	00000000 	nop
     858:	00194400 	sll	t0,t9,0x10
     85c:	00084c03 	sra	t1,t0,0x10
     860:	00095080 	sll	t2,t1,0x2
     864:	01495023 	subu	t2,t2,t1
     868:	000a5080 	sll	t2,t2,0x2
     86c:	014b1021 	addu	v0,t2,t3
     870:	c4440000 	lwc1	$f4,0(v0)
     874:	e6440024 	swc1	$f4,36(s2)
     878:	c4460008 	lwc1	$f6,8(v0)
     87c:	a6400198 	sh	zero,408(s2)
     880:	a64c01bc 	sh	t4,444(s2)
     884:	1000005b 	b	9f4 <func_808D2CE0+0x384>
     888:	e646002c 	swc1	$f6,44(s2)
     88c:	3c013f80 	lui	at,0x3f80
     890:	44814000 	mtc1	at,$f8
     894:	3c040601 	lui	a0,0x601
     898:	2484c1d0 	addiu	a0,a0,-15920
     89c:	0c000000 	jal	0 <func_808D2670>
     8a0:	e6480168 	swc1	$f8,360(s2)
     8a4:	44825000 	mtc1	v0,$f10
     8a8:	240d0002 	li	t5,2
     8ac:	a64d0198 	sh	t5,408(s2)
     8b0:	46805420 	cvt.s.w	$f16,$f10
     8b4:	02402025 	move	a0,s2
     8b8:	240538d1 	li	a1,14545
     8bc:	0c000000 	jal	0 <func_808D2670>
     8c0:	e65001f0 	swc1	$f16,496(s2)
     8c4:	3c014316 	lui	at,0x4316
     8c8:	44819000 	mtc1	at,$f18
     8cc:	864e008a 	lh	t6,138(s2)
     8d0:	3c0142c8 	lui	at,0x42c8
     8d4:	240f000f 	li	t7,15
     8d8:	4481a000 	mtc1	at,$f20
     8dc:	a64f01bc 	sh	t7,444(s2)
     8e0:	00008825 	move	s1,zero
     8e4:	a64e00b6 	sh	t6,182(s2)
     8e8:	e6520028 	swc1	$f18,40(s2)
     8ec:	0c000000 	jal	0 <func_808D2670>
     8f0:	4600a306 	mov.s	$f12,$f20
     8f4:	0011c080 	sll	t8,s1,0x2
     8f8:	0311c023 	subu	t8,t8,s1
     8fc:	0018c080 	sll	t8,t8,0x2
     900:	02588021 	addu	s0,s2,t8
     904:	c60410c8 	lwc1	$f4,4296(s0)
     908:	4600a306 	mov.s	$f12,$f20
     90c:	46002180 	add.s	$f6,$f4,$f0
     910:	0c000000 	jal	0 <func_808D2670>
     914:	e60610c8 	swc1	$f6,4296(s0)
     918:	c60810d0 	lwc1	$f8,4304(s0)
     91c:	4600a306 	mov.s	$f12,$f20
     920:	46004280 	add.s	$f10,$f8,$f0
     924:	0c000000 	jal	0 <func_808D2670>
     928:	e60a10d0 	swc1	$f10,4304(s0)
     92c:	c6101264 	lwc1	$f16,4708(s0)
     930:	4600a306 	mov.s	$f12,$f20
     934:	46008480 	add.s	$f18,$f16,$f0
     938:	0c000000 	jal	0 <func_808D2670>
     93c:	e6121264 	swc1	$f18,4708(s0)
     940:	c604126c 	lwc1	$f4,4716(s0)
     944:	26310001 	addiu	s1,s1,1
     948:	00118c00 	sll	s1,s1,0x10
     94c:	46002180 	add.s	$f6,$f4,$f0
     950:	00118c03 	sra	s1,s1,0x10
     954:	2a21000a 	slti	at,s1,10
     958:	1420ffe4 	bnez	at,8ec <func_808D2CE0+0x27c>
     95c:	e606126c 	swc1	$f6,4716(s0)
     960:	8fa80038 	lw	t0,56(sp)
     964:	24190005 	li	t9,5
     968:	10000022 	b	9f4 <func_808D2CE0+0x384>
     96c:	a5190240 	sh	t9,576(t0)
     970:	8645008a 	lh	a1,138(s2)
     974:	24060003 	li	a2,3
     978:	0c000000 	jal	0 <func_808D2670>
     97c:	240707d0 	li	a3,2000
     980:	864901bc 	lh	t1,444(s2)
     984:	24010001 	li	at,1
     988:	15210013 	bne	t1,at,9d8 <func_808D2CE0+0x368>
     98c:	3c0142f0 	lui	at,0x42f0
     990:	44815000 	mtc1	at,$f10
     994:	c6480090 	lwc1	$f8,144(s2)
     998:	3c014000 	lui	at,0x4000
     99c:	8fa40044 	lw	a0,68(sp)
     9a0:	460a403c 	c.lt.s	$f8,$f10
     9a4:	02402825 	move	a1,s2
     9a8:	3c064040 	lui	a2,0x4040
     9ac:	240a0020 	li	t2,32
     9b0:	4502000a 	bc1fl	9dc <func_808D2CE0+0x36c>
     9b4:	02202025 	move	a0,s1
     9b8:	44818000 	mtc1	at,$f16
     9bc:	8647008a 	lh	a3,138(s2)
     9c0:	afaa0014 	sw	t2,20(sp)
     9c4:	0c000000 	jal	0 <func_808D2670>
     9c8:	e7b00010 	swc1	$f16,16(sp)
     9cc:	02002025 	move	a0,s0
     9d0:	0c000000 	jal	0 <func_808D2670>
     9d4:	2405083e 	li	a1,2110
     9d8:	02202025 	move	a0,s1
     9dc:	0c000000 	jal	0 <func_808D2670>
     9e0:	8e4501f0 	lw	a1,496(s2)
     9e4:	10400003 	beqz	v0,9f4 <func_808D2CE0+0x384>
     9e8:	02402025 	move	a0,s2
     9ec:	0c000000 	jal	0 <func_808D2670>
     9f0:	8fa50044 	lw	a1,68(sp)
     9f4:	3c040000 	lui	a0,0x0
     9f8:	0c000000 	jal	0 <func_808D2670>
     9fc:	24840000 	addiu	a0,a0,0
     a00:	8fbf0034 	lw	ra,52(sp)
     a04:	d7b40020 	ldc1	$f20,32(sp)
     a08:	8fb00028 	lw	s0,40(sp)
     a0c:	8fb1002c 	lw	s1,44(sp)
     a10:	8fb20030 	lw	s2,48(sp)
     a14:	03e00008 	jr	ra
     a18:	27bd0040 	addiu	sp,sp,64

00000a1c <func_808D308C>:
     a1c:	27bdffe0 	addiu	sp,sp,-32
     a20:	afbf0014 	sw	ra,20(sp)
     a24:	afa40020 	sw	a0,32(sp)
     a28:	afa50024 	sw	a1,36(sp)
     a2c:	8c8f0118 	lw	t7,280(a0)
     a30:	3c040000 	lui	a0,0x0
     a34:	24840000 	addiu	a0,a0,0
     a38:	0c000000 	jal	0 <func_808D2670>
     a3c:	afaf001c 	sw	t7,28(sp)
     a40:	8fa40020 	lw	a0,32(sp)
     a44:	3c050601 	lui	a1,0x601
     a48:	24a5ae90 	addiu	a1,a1,-20848
     a4c:	0c000000 	jal	0 <func_808D2670>
     a50:	2484014c 	addiu	a0,a0,332
     a54:	8fa30020 	lw	v1,32(sp)
     a58:	3c180000 	lui	t8,0x0
     a5c:	27180000 	addiu	t8,t8,0
     a60:	ac780190 	sw	t8,400(v1)
     a64:	8fb9001c 	lw	t9,28(sp)
     a68:	24010018 	li	at,24
     a6c:	832200af 	lb	v0,175(t9)
     a70:	54410004 	bnel	v0,at,a84 <func_808D308C+0x68>
     a74:	28410012 	slti	at,v0,18
     a78:	10000010 	b	abc <func_808D308C+0xa0>
     a7c:	24020032 	li	v0,50
     a80:	28410012 	slti	at,v0,18
     a84:	54200004 	bnezl	at,a98 <func_808D308C+0x7c>
     a88:	2841000c 	slti	at,v0,12
     a8c:	1000000b 	b	abc <func_808D308C+0xa0>
     a90:	24020028 	li	v0,40
     a94:	2841000c 	slti	at,v0,12
     a98:	54200004 	bnezl	at,aac <func_808D308C+0x90>
     a9c:	28410006 	slti	at,v0,6
     aa0:	10000006 	b	abc <func_808D308C+0xa0>
     aa4:	24020028 	li	v0,40
     aa8:	28410006 	slti	at,v0,6
     aac:	14200003 	bnez	at,abc <func_808D308C+0xa0>
     ab0:	24020014 	li	v0,20
     ab4:	10000001 	b	abc <func_808D308C+0xa0>
     ab8:	2402001e 	li	v0,30
     abc:	a46201bc 	sh	v0,444(v1)
     ac0:	8fbf0014 	lw	ra,20(sp)
     ac4:	27bd0020 	addiu	sp,sp,32
     ac8:	03e00008 	jr	ra
     acc:	00000000 	nop

00000ad0 <func_808D3140>:
     ad0:	27bdffc8 	addiu	sp,sp,-56
     ad4:	afb00020 	sw	s0,32(sp)
     ad8:	00808025 	move	s0,a0
     adc:	afbf0024 	sw	ra,36(sp)
     ae0:	2484014c 	addiu	a0,a0,332
     ae4:	afa5003c 	sw	a1,60(sp)
     ae8:	0c000000 	jal	0 <func_808D2670>
     aec:	afa40030 	sw	a0,48(sp)
     af0:	860e0196 	lh	t6,406(s0)
     af4:	260400b6 	addiu	a0,s0,182
     af8:	24060003 	li	a2,3
     afc:	a7ae0036 	sh	t6,54(sp)
     b00:	8605008a 	lh	a1,138(s0)
     b04:	afa00010 	sw	zero,16(sp)
     b08:	0c000000 	jal	0 <func_808D2670>
     b0c:	240707d0 	li	a3,2000
     b10:	a6020196 	sh	v0,406(s0)
     b14:	3c040000 	lui	a0,0x0
     b18:	24840000 	addiu	a0,a0,0
     b1c:	0c000000 	jal	0 <func_808D2670>
     b20:	87a50036 	lh	a1,54(sp)
     b24:	3c040000 	lui	a0,0x0
     b28:	24840000 	addiu	a0,a0,0
     b2c:	0c000000 	jal	0 <func_808D2670>
     b30:	86050196 	lh	a1,406(s0)
     b34:	87af0036 	lh	t7,54(sp)
     b38:	3c01447a 	lui	at,0x447a
     b3c:	44816000 	mtc1	at,$f12
     b40:	448f2000 	mtc1	t7,$f4
     b44:	00000000 	nop
     b48:	468020a0 	cvt.s.w	$f2,$f4
     b4c:	46001085 	abs.s	$f2,$f2
     b50:	460c103e 	c.le.s	$f2,$f12
     b54:	00000000 	nop
     b58:	45020013 	bc1fl	ba8 <func_808D3140+0xd8>
     b5c:	4602603c 	c.lt.s	$f12,$f2
     b60:	86180196 	lh	t8,406(s0)
     b64:	3c050601 	lui	a1,0x601
     b68:	24a5ae90 	addiu	a1,a1,-20848
     b6c:	44983000 	mtc1	t8,$f6
     b70:	8fa40030 	lw	a0,48(sp)
     b74:	3c06c0a0 	lui	a2,0xc0a0
     b78:	46803020 	cvt.s.w	$f0,$f6
     b7c:	46000005 	abs.s	$f0,$f0
     b80:	4600603c 	c.lt.s	$f12,$f0
     b84:	00000000 	nop
     b88:	45020007 	bc1fl	ba8 <func_808D3140+0xd8>
     b8c:	4602603c 	c.lt.s	$f12,$f2
     b90:	0c000000 	jal	0 <func_808D2670>
     b94:	e7a2002c 	swc1	$f2,44(sp)
     b98:	3c01447a 	lui	at,0x447a
     b9c:	44816000 	mtc1	at,$f12
     ba0:	c7a2002c 	lwc1	$f2,44(sp)
     ba4:	4602603c 	c.lt.s	$f12,$f2
     ba8:	00000000 	nop
     bac:	4502000f 	bc1fl	bec <func_808D3140+0x11c>
     bb0:	860801bc 	lh	t0,444(s0)
     bb4:	86190196 	lh	t9,406(s0)
     bb8:	3c050601 	lui	a1,0x601
     bbc:	24a5c8ec 	addiu	a1,a1,-14100
     bc0:	44994000 	mtc1	t9,$f8
     bc4:	8fa40030 	lw	a0,48(sp)
     bc8:	46804020 	cvt.s.w	$f0,$f8
     bcc:	46000005 	abs.s	$f0,$f0
     bd0:	460c003e 	c.le.s	$f0,$f12
     bd4:	00000000 	nop
     bd8:	45020004 	bc1fl	bec <func_808D3140+0x11c>
     bdc:	860801bc 	lh	t0,444(s0)
     be0:	0c000000 	jal	0 <func_808D2670>
     be4:	3c06c0a0 	lui	a2,0xc0a0
     be8:	860801bc 	lh	t0,444(s0)
     bec:	3c014348 	lui	at,0x4348
     bf0:	55000010 	bnezl	t0,c34 <func_808D3140+0x164>
     bf4:	8fbf0024 	lw	ra,36(sp)
     bf8:	c60a0090 	lwc1	$f10,144(s0)
     bfc:	44818000 	mtc1	at,$f16
     c00:	8fa5003c 	lw	a1,60(sp)
     c04:	02002025 	move	a0,s0
     c08:	4610503c 	c.lt.s	$f10,$f16
     c0c:	00000000 	nop
     c10:	45000005 	bc1f	c28 <func_808D3140+0x158>
     c14:	00000000 	nop
     c18:	0c000000 	jal	0 <func_808D2670>
     c1c:	02002025 	move	a0,s0
     c20:	10000004 	b	c34 <func_808D3140+0x164>
     c24:	8fbf0024 	lw	ra,36(sp)
     c28:	0c000000 	jal	0 <func_808D2670>
     c2c:	8fa5003c 	lw	a1,60(sp)
     c30:	8fbf0024 	lw	ra,36(sp)
     c34:	8fb00020 	lw	s0,32(sp)
     c38:	27bd0038 	addiu	sp,sp,56
     c3c:	03e00008 	jr	ra
     c40:	00000000 	nop

00000c44 <func_808D32B4>:
     c44:	27bdffe0 	addiu	sp,sp,-32
     c48:	afbf0014 	sw	ra,20(sp)
     c4c:	afa50024 	sw	a1,36(sp)
     c50:	8c8e0118 	lw	t6,280(a0)
     c54:	00803825 	move	a3,a0
     c58:	3c050601 	lui	a1,0x601
     c5c:	24a59194 	addiu	a1,a1,-28268
     c60:	afa70020 	sw	a3,32(sp)
     c64:	2484014c 	addiu	a0,a0,332
     c68:	3c06c0a0 	lui	a2,0xc0a0
     c6c:	0c000000 	jal	0 <func_808D2670>
     c70:	afae001c 	sw	t6,28(sp)
     c74:	8fa70020 	lw	a3,32(sp)
     c78:	3c0f0000 	lui	t7,0x0
     c7c:	25ef0000 	addiu	t7,t7,0
     c80:	3c040601 	lui	a0,0x601
     c84:	24849194 	addiu	a0,a0,-28268
     c88:	0c000000 	jal	0 <func_808D2670>
     c8c:	acef0190 	sw	t7,400(a3)
     c90:	44822000 	mtc1	v0,$f4
     c94:	8fa70020 	lw	a3,32(sp)
     c98:	2418001e 	li	t8,30
     c9c:	468021a0 	cvt.s.w	$f6,$f4
     ca0:	e4e601f0 	swc1	$f6,496(a3)
     ca4:	8fb9001c 	lw	t9,28(sp)
     ca8:	a7380250 	sh	t8,592(t9)
     cac:	a4e00198 	sh	zero,408(a3)
     cb0:	8fbf0014 	lw	ra,20(sp)
     cb4:	27bd0020 	addiu	sp,sp,32
     cb8:	03e00008 	jr	ra
     cbc:	00000000 	nop

00000cc0 <func_808D3330>:
     cc0:	27bdffd8 	addiu	sp,sp,-40
     cc4:	afbf001c 	sw	ra,28(sp)
     cc8:	afb00018 	sw	s0,24(sp)
     ccc:	afa5002c 	sw	a1,44(sp)
     cd0:	848e0198 	lh	t6,408(a0)
     cd4:	00808025 	move	s0,a0
     cd8:	8c820118 	lw	v0,280(a0)
     cdc:	15c0000d 	bnez	t6,d14 <func_808D3330+0x54>
     ce0:	3c05c2c8 	lui	a1,0xc2c8
     ce4:	2484014c 	addiu	a0,a0,332
     ce8:	0c000000 	jal	0 <func_808D2670>
     cec:	afa40020 	sw	a0,32(sp)
     cf0:	8fa40020 	lw	a0,32(sp)
     cf4:	0c000000 	jal	0 <func_808D2670>
     cf8:	8e0501f0 	lw	a1,496(s0)
     cfc:	1040001f 	beqz	v0,d7c <func_808D3330+0xbc>
     d00:	240f0001 	li	t7,1
     d04:	24180019 	li	t8,25
     d08:	a60f0198 	sh	t7,408(s0)
     d0c:	1000001b 	b	d7c <func_808D3330+0xbc>
     d10:	a61801bc 	sh	t8,444(s0)
     d14:	26040028 	addiu	a0,s0,40
     d18:	3c063f80 	lui	a2,0x3f80
     d1c:	3c074120 	lui	a3,0x4120
     d20:	0c000000 	jal	0 <func_808D2670>
     d24:	afa20024 	sw	v0,36(sp)
     d28:	861901bc 	lh	t9,444(s0)
     d2c:	8fa20024 	lw	v0,36(sp)
     d30:	57200013 	bnezl	t9,d80 <func_808D3330+0xc0>
     d34:	8fbf001c 	lw	ra,28(sp)
     d38:	860801a8 	lh	t0,424(s0)
     d3c:	02002025 	move	a0,s0
     d40:	29010003 	slti	at,t0,3
     d44:	1420000b 	bnez	at,d74 <func_808D3330+0xb4>
     d48:	00000000 	nop
     d4c:	804900af 	lb	t1,175(v0)
     d50:	3c0a0000 	lui	t2,0x0
     d54:	254a0000 	addiu	t2,t2,0
     d58:	29210018 	slti	at,t1,24
     d5c:	10200005 	beqz	at,d74 <func_808D3330+0xb4>
     d60:	240b0001 	li	t3,1
     d64:	a60001a8 	sh	zero,424(s0)
     d68:	ae0a0190 	sw	t2,400(s0)
     d6c:	10000003 	b	d7c <func_808D3330+0xbc>
     d70:	a04b02d8 	sb	t3,728(v0)
     d74:	0c000000 	jal	0 <func_808D2670>
     d78:	8fa5002c 	lw	a1,44(sp)
     d7c:	8fbf001c 	lw	ra,28(sp)
     d80:	8fb00018 	lw	s0,24(sp)
     d84:	27bd0028 	addiu	sp,sp,40
     d88:	03e00008 	jr	ra
     d8c:	00000000 	nop

00000d90 <func_808D3400>:
     d90:	27bdffe8 	addiu	sp,sp,-24
     d94:	afa5001c 	sw	a1,28(sp)
     d98:	afbf0014 	sw	ra,20(sp)
     d9c:	afa40018 	sw	a0,24(sp)
     da0:	3c050600 	lui	a1,0x600
     da4:	24a573cc 	addiu	a1,a1,29644
     da8:	2484014c 	addiu	a0,a0,332
     dac:	0c000000 	jal	0 <func_808D2670>
     db0:	3c06c0a0 	lui	a2,0xc0a0
     db4:	8faf0018 	lw	t7,24(sp)
     db8:	3c0e0000 	lui	t6,0x0
     dbc:	25ce0000 	addiu	t6,t6,0
     dc0:	3c040600 	lui	a0,0x600
     dc4:	248473cc 	addiu	a0,a0,29644
     dc8:	0c000000 	jal	0 <func_808D2670>
     dcc:	adee0190 	sw	t6,400(t7)
     dd0:	44822000 	mtc1	v0,$f4
     dd4:	8fa30018 	lw	v1,24(sp)
     dd8:	468021a0 	cvt.s.w	$f6,$f4
     ddc:	a4600198 	sh	zero,408(v1)
     de0:	e46601f0 	swc1	$f6,496(v1)
     de4:	8fbf0014 	lw	ra,20(sp)
     de8:	27bd0018 	addiu	sp,sp,24
     dec:	03e00008 	jr	ra
     df0:	00000000 	nop

00000df4 <func_808D3464>:
     df4:	27bdff38 	addiu	sp,sp,-200
     df8:	afbf005c 	sw	ra,92(sp)
     dfc:	afb20058 	sw	s2,88(sp)
     e00:	afb10054 	sw	s1,84(sp)
     e04:	afb00050 	sw	s0,80(sp)
     e08:	f7bc0048 	sdc1	$f28,72(sp)
     e0c:	f7ba0040 	sdc1	$f26,64(sp)
     e10:	f7b80038 	sdc1	$f24,56(sp)
     e14:	f7b60030 	sdc1	$f22,48(sp)
     e18:	f7b40028 	sdc1	$f20,40(sp)
     e1c:	a7a000b2 	sh	zero,178(sp)
     e20:	8c8e0118 	lw	t6,280(a0)
     e24:	00808025 	move	s0,a0
     e28:	2491014c 	addiu	s1,a0,332
     e2c:	afae00ac 	sw	t6,172(sp)
     e30:	8caf1c44 	lw	t7,7236(a1)
     e34:	00a09025 	move	s2,a1
     e38:	02202025 	move	a0,s1
     e3c:	0c000000 	jal	0 <func_808D2670>
     e40:	afaf00a8 	sw	t7,168(sp)
     e44:	02202025 	move	a0,s1
     e48:	0c000000 	jal	0 <func_808D2670>
     e4c:	8e0501f0 	lw	a1,496(s0)
     e50:	10400003 	beqz	v0,e60 <func_808D3464+0x6c>
     e54:	02002025 	move	a0,s0
     e58:	0c000000 	jal	0 <func_808D2670>
     e5c:	02402825 	move	a1,s2
     e60:	3c0141c8 	lui	at,0x41c8
     e64:	44811000 	mtc1	at,$f2
     e68:	c6000164 	lwc1	$f0,356(s0)
     e6c:	3c01428c 	lui	at,0x428c
     e70:	2604021e 	addiu	a0,s0,542
     e74:	4600103e 	c.le.s	$f2,$f0
     e78:	00002825 	move	a1,zero
     e7c:	24060005 	li	a2,5
     e80:	45000059 	bc1f	fe8 <func_808D3464+0x1f4>
     e84:	00000000 	nop
     e88:	4481a000 	mtc1	at,$f20
     e8c:	00000000 	nop
     e90:	4614003c 	c.lt.s	$f0,$f20
     e94:	00000000 	nop
     e98:	45000053 	bc1f	fe8 <func_808D3464+0x1f4>
     e9c:	00000000 	nop
     ea0:	46001032 	c.eq.s	$f2,$f0
     ea4:	02002025 	move	a0,s0
     ea8:	45000005 	bc1f	ec0 <func_808D3464+0xcc>
     eac:	00000000 	nop
     eb0:	44802000 	mtc1	zero,$f4
     eb4:	3c010001 	lui	at,0x1
     eb8:	00320821 	addu	at,at,s2
     ebc:	e4240afc 	swc1	$f4,2812(at)
     ec0:	0c000000 	jal	0 <func_808D2670>
     ec4:	240530db 	li	a1,12507
     ec8:	3c014248 	lui	at,0x4248
     ecc:	44813000 	mtc1	at,$f6
     ed0:	c6000164 	lwc1	$f0,356(s0)
     ed4:	3c014140 	lui	at,0x4140
     ed8:	240800ff 	li	t0,255
     edc:	4600303c 	c.lt.s	$f6,$f0
     ee0:	00000000 	nop
     ee4:	4502000a 	bc1fl	f10 <func_808D3464+0x11c>
     ee8:	a7a800b2 	sh	t0,178(sp)
     eec:	4600a201 	sub.s	$f8,$f20,$f0
     ef0:	44815000 	mtc1	at,$f10
     ef4:	00000000 	nop
     ef8:	460a4402 	mul.s	$f16,$f8,$f10
     efc:	4600848d 	trunc.w.s	$f18,$f16
     f00:	44199000 	mfc1	t9,$f18
     f04:	10000002 	b	f10 <func_808D3464+0x11c>
     f08:	a7b900b2 	sh	t9,178(sp)
     f0c:	a7a800b2 	sh	t0,178(sp)
     f10:	8fa200a8 	lw	v0,168(sp)
     f14:	c6060210 	lwc1	$f6,528(s0)
     f18:	c6120218 	lwc1	$f18,536(s0)
     f1c:	c4440024 	lwc1	$f4,36(v0)
     f20:	c450002c 	lwc1	$f16,44(v0)
     f24:	c60a0214 	lwc1	$f10,532(s0)
     f28:	46062501 	sub.s	$f20,$f4,$f6
     f2c:	c4480028 	lwc1	$f8,40(v0)
     f30:	46128581 	sub.s	$f22,$f16,$f18
     f34:	4600a386 	mov.s	$f14,$f20
     f38:	460a4601 	sub.s	$f24,$f8,$f10
     f3c:	0c000000 	jal	0 <func_808D2670>
     f40:	4600b306 	mov.s	$f12,$f22
     f44:	4614a102 	mul.s	$f4,$f20,$f20
     f48:	4600c386 	mov.s	$f14,$f24
     f4c:	a7a200b4 	sh	v0,180(sp)
     f50:	4616b182 	mul.s	$f6,$f22,$f22
     f54:	46062000 	add.s	$f0,$f4,$f6
     f58:	0c000000 	jal	0 <func_808D2670>
     f5c:	46000304 	sqrt.s	$f12,$f0
     f60:	87a500b4 	lh	a1,180(sp)
     f64:	860900b6 	lh	t1,182(s0)
     f68:	00021823 	negu	v1,v0
     f6c:	00608825 	move	s1,v1
     f70:	00a92823 	subu	a1,a1,t1
     f74:	00052c00 	sll	a1,a1,0x10
     f78:	00052c03 	sra	a1,a1,0x10
     f7c:	28a11f41 	slti	at,a1,8001
     f80:	14200002 	bnez	at,f8c <func_808D3464+0x198>
     f84:	2631e4a8 	addiu	s1,s1,-7000
     f88:	24051f40 	li	a1,8000
     f8c:	28a1e0c0 	slti	at,a1,-8000
     f90:	10200002 	beqz	at,f9c <func_808D3464+0x1a8>
     f94:	00118c00 	sll	s1,s1,0x10
     f98:	2405e0c0 	li	a1,-8000
     f9c:	00118c03 	sra	s1,s1,0x10
     fa0:	2a2103e9 	slti	at,s1,1001
     fa4:	14200002 	bnez	at,fb0 <func_808D3464+0x1bc>
     fa8:	2604021e 	addiu	a0,s0,542
     fac:	241103e8 	li	s1,1000
     fb0:	2a21f060 	slti	at,s1,-4000
     fb4:	10200002 	beqz	at,fc0 <func_808D3464+0x1cc>
     fb8:	24060005 	li	a2,5
     fbc:	2411f060 	li	s1,-4000
     fc0:	0c000000 	jal	0 <func_808D2670>
     fc4:	240707d0 	li	a3,2000
     fc8:	00112c00 	sll	a1,s1,0x10
     fcc:	00052c03 	sra	a1,a1,0x10
     fd0:	2604021c 	addiu	a0,s0,540
     fd4:	24060005 	li	a2,5
     fd8:	0c000000 	jal	0 <func_808D2670>
     fdc:	240707d0 	li	a3,2000
     fe0:	10000009 	b	1008 <func_808D3464+0x214>
     fe4:	87aa00b2 	lh	t2,178(sp)
     fe8:	0c000000 	jal	0 <func_808D2670>
     fec:	240707d0 	li	a3,2000
     ff0:	2604021c 	addiu	a0,s0,540
     ff4:	00002825 	move	a1,zero
     ff8:	24060005 	li	a2,5
     ffc:	0c000000 	jal	0 <func_808D2670>
    1000:	240707d0 	li	a3,2000
    1004:	87aa00b2 	lh	t2,178(sp)
    1008:	3c014700 	lui	at,0x4700
    100c:	27ab0090 	addiu	t3,sp,144
    1010:	114000be 	beqz	t2,130c <func_808D3464+0x518>
    1014:	3c0c0000 	lui	t4,0x0
    1018:	258c0000 	addiu	t4,t4,0
    101c:	44810000 	mtc1	at,$f0
    1020:	8d8e0000 	lw	t6,0(t4)
    1024:	3c010000 	lui	at,0x0
    1028:	c4220000 	lwc1	$f2,0(at)
    102c:	ad6e0000 	sw	t6,0(t3)
    1030:	8d8e0008 	lw	t6,8(t4)
    1034:	8d8d0004 	lw	t5,4(t4)
    1038:	3c180000 	lui	t8,0x0
    103c:	27180000 	addiu	t8,t8,0
    1040:	ad6e0008 	sw	t6,8(t3)
    1044:	ad6d0004 	sw	t5,4(t3)
    1048:	8f080000 	lw	t0,0(t8)
    104c:	27af0078 	addiu	t7,sp,120
    1050:	8f190004 	lw	t9,4(t8)
    1054:	ade80000 	sw	t0,0(t7)
    1058:	8f080008 	lw	t0,8(t8)
    105c:	adf90004 	sw	t9,4(t7)
    1060:	3c0141f0 	lui	at,0x41f0
    1064:	ade80008 	sw	t0,8(t7)
    1068:	8faa00ac 	lw	t2,172(sp)
    106c:	44814000 	mtc1	at,$f8
    1070:	24090002 	li	t1,2
    1074:	a1490220 	sb	t1,544(t2)
    1078:	26020210 	addiu	v0,s0,528
    107c:	e7a80098 	swc1	$f8,152(sp)
    1080:	8c4d0000 	lw	t5,0(v0)
    1084:	27ab006c 	addiu	t3,sp,108
    1088:	3c013f00 	lui	at,0x3f00
    108c:	ad6d0000 	sw	t5,0(t3)
    1090:	8c4c0004 	lw	t4,4(v0)
    1094:	00002825 	move	a1,zero
    1098:	ad6c0004 	sw	t4,4(t3)
    109c:	8c4d0008 	lw	t5,8(v0)
    10a0:	ad6d0008 	sw	t5,8(t3)
    10a4:	860f021e 	lh	t7,542(s0)
    10a8:	860e00b6 	lh	t6,182(s0)
    10ac:	8619021c 	lh	t9,540(s0)
    10b0:	afa20064 	sw	v0,100(sp)
    10b4:	01cfc021 	addu	t8,t6,t7
    10b8:	44985000 	mtc1	t8,$f10
    10bc:	44992000 	mtc1	t9,$f4
    10c0:	46805420 	cvt.s.w	$f16,$f10
    10c4:	468021a0 	cvt.s.w	$f6,$f4
    10c8:	46008483 	div.s	$f18,$f16,$f0
    10cc:	44818000 	mtc1	at,$f16
    10d0:	46003203 	div.s	$f8,$f6,$f0
    10d4:	46029302 	mul.s	$f12,$f18,$f2
    10d8:	00000000 	nop
    10dc:	46024282 	mul.s	$f10,$f8,$f2
    10e0:	0c000000 	jal	0 <func_808D2670>
    10e4:	46105580 	add.s	$f22,$f10,$f16
    10e8:	4600b306 	mov.s	$f12,$f22
    10ec:	0c000000 	jal	0 <func_808D2670>
    10f0:	24050001 	li	a1,1
    10f4:	27b10084 	addiu	s1,sp,132
    10f8:	02202825 	move	a1,s1
    10fc:	0c000000 	jal	0 <func_808D2670>
    1100:	27a40090 	addiu	a0,sp,144
    1104:	8604019c 	lh	a0,412(s0)
    1108:	00042340 	sll	a0,a0,0xd
    110c:	00042400 	sll	a0,a0,0x10
    1110:	0c000000 	jal	0 <func_808D2670>
    1114:	00042403 	sra	a0,a0,0x10
    1118:	3c014248 	lui	at,0x4248
    111c:	4481a000 	mtc1	at,$f20
    1120:	3c014396 	lui	at,0x4396
    1124:	4481b000 	mtc1	at,$f22
    1128:	46140482 	mul.s	$f18,$f0,$f20
    112c:	87a900b2 	lh	t1,178(sp)
    1130:	27a80078 	addiu	t0,sp,120
    1134:	afa80010 	sw	t0,16(sp)
    1138:	afa90018 	sw	t1,24(sp)
    113c:	8fa500ac 	lw	a1,172(sp)
    1140:	02402025 	move	a0,s2
    1144:	46169100 	add.s	$f4,$f18,$f22
    1148:	24a51970 	addiu	a1,a1,6512
    114c:	27a6006c 	addiu	a2,sp,108
    1150:	02203825 	move	a3,s1
    1154:	e7a40014 	swc1	$f4,20(sp)
    1158:	860b021e 	lh	t3,542(s0)
    115c:	860a00b6 	lh	t2,182(s0)
    1160:	afa50060 	sw	a1,96(sp)
    1164:	014b6021 	addu	t4,t2,t3
    1168:	0c000000 	jal	0 <func_808D2670>
    116c:	afac001c 	sw	t4,28(sp)
    1170:	3c013f00 	lui	at,0x3f00
    1174:	44810000 	mtc1	at,$f0
    1178:	c7a80084 	lwc1	$f8,132(sp)
    117c:	c7a6006c 	lwc1	$f6,108(sp)
    1180:	c7a40088 	lwc1	$f4,136(sp)
    1184:	46004282 	mul.s	$f10,$f8,$f0
    1188:	c7b20070 	lwc1	$f18,112(sp)
    118c:	46002202 	mul.s	$f8,$f4,$f0
    1190:	460a3400 	add.s	$f16,$f6,$f10
    1194:	c7aa0074 	lwc1	$f10,116(sp)
    1198:	46089180 	add.s	$f6,$f18,$f8
    119c:	e7b0006c 	swc1	$f16,108(sp)
    11a0:	c7b0008c 	lwc1	$f16,140(sp)
    11a4:	e7a60070 	swc1	$f6,112(sp)
    11a8:	46008102 	mul.s	$f4,$f16,$f0
    11ac:	46045480 	add.s	$f18,$f10,$f4
    11b0:	e7b20074 	swc1	$f18,116(sp)
    11b4:	8604019c 	lh	a0,412(s0)
    11b8:	00042340 	sll	a0,a0,0xd
    11bc:	00042400 	sll	a0,a0,0x10
    11c0:	0c000000 	jal	0 <func_808D2670>
    11c4:	00042403 	sra	a0,a0,0x10
    11c8:	46140202 	mul.s	$f8,$f0,$f20
    11cc:	87ae00b2 	lh	t6,178(sp)
    11d0:	27ad0078 	addiu	t5,sp,120
    11d4:	afad0010 	sw	t5,16(sp)
    11d8:	afae0018 	sw	t6,24(sp)
    11dc:	02402025 	move	a0,s2
    11e0:	8fa50060 	lw	a1,96(sp)
    11e4:	46164180 	add.s	$f6,$f8,$f22
    11e8:	27a6006c 	addiu	a2,sp,108
    11ec:	02203825 	move	a3,s1
    11f0:	e7a60014 	swc1	$f6,20(sp)
    11f4:	8618021e 	lh	t8,542(s0)
    11f8:	860f00b6 	lh	t7,182(s0)
    11fc:	01f8c821 	addu	t9,t7,t8
    1200:	0c000000 	jal	0 <func_808D2670>
    1204:	afb9001c 	sw	t9,28(sp)
    1208:	3c014188 	lui	at,0x4188
    120c:	44815000 	mtc1	at,$f10
    1210:	3c010000 	lui	at,0x0
    1214:	c43c0000 	lwc1	$f28,0(at)
    1218:	3c0142c8 	lui	at,0x42c8
    121c:	44808000 	mtc1	zero,$f16
    1220:	44802000 	mtc1	zero,$f4
    1224:	4481d000 	mtc1	at,$f26
    1228:	3c01c120 	lui	at,0xc120
    122c:	4481c000 	mtc1	at,$f24
    1230:	00008025 	move	s0,zero
    1234:	e7aa0094 	swc1	$f10,148(sp)
    1238:	e7b00090 	swc1	$f16,144(sp)
    123c:	e7a40098 	swc1	$f4,152(sp)
    1240:	0c000000 	jal	0 <func_808D2670>
    1244:	4600e306 	mov.s	$f12,$f28
    1248:	46000506 	mov.s	$f20,$f0
    124c:	0c000000 	jal	0 <func_808D2670>
    1250:	4600e306 	mov.s	$f12,$f28
    1254:	46000586 	mov.s	$f22,$f0
    1258:	4600a306 	mov.s	$f12,$f20
    125c:	0c000000 	jal	0 <func_808D2670>
    1260:	00002825 	move	a1,zero
    1264:	4600b306 	mov.s	$f12,$f22
    1268:	0c000000 	jal	0 <func_808D2670>
    126c:	24050001 	li	a1,1
    1270:	27a40090 	addiu	a0,sp,144
    1274:	0c000000 	jal	0 <func_808D2670>
    1278:	02202825 	move	a1,s1
    127c:	c7b20084 	lwc1	$f18,132(sp)
    1280:	c7b00088 	lwc1	$f16,136(sp)
    1284:	3c014000 	lui	at,0x4000
    1288:	46189202 	mul.s	$f8,$f18,$f24
    128c:	c7b2008c 	lwc1	$f18,140(sp)
    1290:	44816000 	mtc1	at,$f12
    1294:	46188282 	mul.s	$f10,$f16,$f24
    1298:	461a4183 	div.s	$f6,$f8,$f26
    129c:	46189202 	mul.s	$f8,$f18,$f24
    12a0:	461a5103 	div.s	$f4,$f10,$f26
    12a4:	e7a60078 	swc1	$f6,120(sp)
    12a8:	461a4183 	div.s	$f6,$f8,$f26
    12ac:	e7a4007c 	swc1	$f4,124(sp)
    12b0:	0c000000 	jal	0 <func_808D2670>
    12b4:	e7a60080 	swc1	$f6,128(sp)
    12b8:	4600040d 	trunc.w.s	$f16,$f0
    12bc:	27a80078 	addiu	t0,sp,120
    12c0:	afa80010 	sw	t0,16(sp)
    12c4:	02402025 	move	a0,s2
    12c8:	440a8000 	mfc1	t2,$f16
    12cc:	8fa50060 	lw	a1,96(sp)
    12d0:	8fa60064 	lw	a2,100(sp)
    12d4:	000a5c00 	sll	t3,t2,0x10
    12d8:	000b6403 	sra	t4,t3,0x10
    12dc:	258d0008 	addiu	t5,t4,8
    12e0:	448d5000 	mtc1	t5,$f10
    12e4:	02203825 	move	a3,s1
    12e8:	46805120 	cvt.s.w	$f4,$f10
    12ec:	0c000000 	jal	0 <func_808D2670>
    12f0:	e7a40014 	swc1	$f4,20(sp)
    12f4:	26100001 	addiu	s0,s0,1
    12f8:	00108400 	sll	s0,s0,0x10
    12fc:	00108403 	sra	s0,s0,0x10
    1300:	2a010006 	slti	at,s0,6
    1304:	1420ffce 	bnez	at,1240 <func_808D3464+0x44c>
    1308:	00000000 	nop
    130c:	8fbf005c 	lw	ra,92(sp)
    1310:	d7b40028 	ldc1	$f20,40(sp)
    1314:	d7b60030 	ldc1	$f22,48(sp)
    1318:	d7b80038 	ldc1	$f24,56(sp)
    131c:	d7ba0040 	ldc1	$f26,64(sp)
    1320:	d7bc0048 	ldc1	$f28,72(sp)
    1324:	8fb00050 	lw	s0,80(sp)
    1328:	8fb10054 	lw	s1,84(sp)
    132c:	8fb20058 	lw	s2,88(sp)
    1330:	03e00008 	jr	ra
    1334:	27bd00c8 	addiu	sp,sp,200

00001338 <func_808D39A8>:
    1338:	27bdffe8 	addiu	sp,sp,-24
    133c:	afa5001c 	sw	a1,28(sp)
    1340:	afbf0014 	sw	ra,20(sp)
    1344:	afa40018 	sw	a0,24(sp)
    1348:	3c050601 	lui	a1,0x601
    134c:	24a5b7a4 	addiu	a1,a1,-18524
    1350:	2484014c 	addiu	a0,a0,332
    1354:	0c000000 	jal	0 <func_808D2670>
    1358:	3c06c0a0 	lui	a2,0xc0a0
    135c:	8faf0018 	lw	t7,24(sp)
    1360:	3c0e0000 	lui	t6,0x0
    1364:	25ce0000 	addiu	t6,t6,0
    1368:	3c040601 	lui	a0,0x601
    136c:	2484b7a4 	addiu	a0,a0,-18524
    1370:	0c000000 	jal	0 <func_808D2670>
    1374:	adee0190 	sw	t6,400(t7)
    1378:	44822000 	mtc1	v0,$f4
    137c:	8fb80018 	lw	t8,24(sp)
    1380:	468021a0 	cvt.s.w	$f6,$f4
    1384:	e70601f0 	swc1	$f6,496(t8)
    1388:	8fbf0014 	lw	ra,20(sp)
    138c:	27bd0018 	addiu	sp,sp,24
    1390:	03e00008 	jr	ra
    1394:	00000000 	nop

00001398 <func_808D3A08>:
    1398:	27bdffd8 	addiu	sp,sp,-40
    139c:	afb00018 	sw	s0,24(sp)
    13a0:	00808025 	move	s0,a0
    13a4:	afbf001c 	sw	ra,28(sp)
    13a8:	2484014c 	addiu	a0,a0,332
    13ac:	afa5002c 	sw	a1,44(sp)
    13b0:	0c000000 	jal	0 <func_808D2670>
    13b4:	afa40024 	sw	a0,36(sp)
    13b8:	8fa40024 	lw	a0,36(sp)
    13bc:	0c000000 	jal	0 <func_808D2670>
    13c0:	3c0540a0 	lui	a1,0x40a0
    13c4:	10400006 	beqz	v0,13e0 <func_808D3A08+0x48>
    13c8:	02002025 	move	a0,s0
    13cc:	0c000000 	jal	0 <func_808D2670>
    13d0:	240538d1 	li	a1,14545
    13d4:	02002025 	move	a0,s0
    13d8:	0c000000 	jal	0 <func_808D2670>
    13dc:	240538d8 	li	a1,14552
    13e0:	8fa40024 	lw	a0,36(sp)
    13e4:	0c000000 	jal	0 <func_808D2670>
    13e8:	8e0501f0 	lw	a1,496(s0)
    13ec:	10400003 	beqz	v0,13fc <func_808D3A08+0x64>
    13f0:	02002025 	move	a0,s0
    13f4:	0c000000 	jal	0 <func_808D2670>
    13f8:	8fa5002c 	lw	a1,44(sp)
    13fc:	8fbf001c 	lw	ra,28(sp)
    1400:	8fb00018 	lw	s0,24(sp)
    1404:	27bd0028 	addiu	sp,sp,40
    1408:	03e00008 	jr	ra
    140c:	00000000 	nop

00001410 <func_808D3A80>:
    1410:	27bdffe8 	addiu	sp,sp,-24
    1414:	afa5001c 	sw	a1,28(sp)
    1418:	afbf0014 	sw	ra,20(sp)
    141c:	00803025 	move	a2,a0
    1420:	3c050601 	lui	a1,0x601
    1424:	24a5a31c 	addiu	a1,a1,-23780
    1428:	afa60018 	sw	a2,24(sp)
    142c:	0c000000 	jal	0 <func_808D2670>
    1430:	2484014c 	addiu	a0,a0,332
    1434:	3c040601 	lui	a0,0x601
    1438:	0c000000 	jal	0 <func_808D2670>
    143c:	2484a31c 	addiu	a0,a0,-23780
    1440:	44822000 	mtc1	v0,$f4
    1444:	8fa60018 	lw	a2,24(sp)
    1448:	3c0e0000 	lui	t6,0x0
    144c:	468021a0 	cvt.s.w	$f6,$f4
    1450:	25ce0000 	addiu	t6,t6,0
    1454:	acce0190 	sw	t6,400(a2)
    1458:	a4c00198 	sh	zero,408(a2)
    145c:	e4c601f0 	swc1	$f6,496(a2)
    1460:	8fbf0014 	lw	ra,20(sp)
    1464:	27bd0018 	addiu	sp,sp,24
    1468:	03e00008 	jr	ra
    146c:	00000000 	nop

00001470 <func_808D3AE0>:
    1470:	27bdff68 	addiu	sp,sp,-152
    1474:	afbf0054 	sw	ra,84(sp)
    1478:	afb40050 	sw	s4,80(sp)
    147c:	afb3004c 	sw	s3,76(sp)
    1480:	afb20048 	sw	s2,72(sp)
    1484:	afb10044 	sw	s1,68(sp)
    1488:	afb00040 	sw	s0,64(sp)
    148c:	f7ba0038 	sdc1	$f26,56(sp)
    1490:	f7b80030 	sdc1	$f24,48(sp)
    1494:	f7b60028 	sdc1	$f22,40(sp)
    1498:	f7b40020 	sdc1	$f20,32(sp)
    149c:	8c8f0004 	lw	t7,4(a0)
    14a0:	00809025 	move	s2,a0
    14a4:	240e0001 	li	t6,1
    14a8:	35f80400 	ori	t8,t7,0x400
    14ac:	8c910118 	lw	s1,280(a0)
    14b0:	a08e0194 	sb	t6,404(a0)
    14b4:	ac980004 	sw	t8,4(a0)
    14b8:	2484014c 	addiu	a0,a0,332
    14bc:	00a08025 	move	s0,a1
    14c0:	0c000000 	jal	0 <func_808D2670>
    14c4:	afa40060 	sw	a0,96(sp)
    14c8:	86430198 	lh	v1,408(s2)
    14cc:	24010001 	li	at,1
    14d0:	8fa40060 	lw	a0,96(sp)
    14d4:	10600005 	beqz	v1,14ec <func_808D3AE0+0x7c>
    14d8:	00000000 	nop
    14dc:	50610061 	beql	v1,at,1664 <func_808D3AE0+0x1f4>
    14e0:	864b019c 	lh	t3,412(s2)
    14e4:	1000006d 	b	169c <func_808D3AE0+0x22c>
    14e8:	8fbf0054 	lw	ra,84(sp)
    14ec:	0c000000 	jal	0 <func_808D2670>
    14f0:	3c054150 	lui	a1,0x4150
    14f4:	10400003 	beqz	v0,1504 <func_808D3AE0+0x94>
    14f8:	02402025 	move	a0,s2
    14fc:	0c000000 	jal	0 <func_808D2670>
    1500:	240538d3 	li	a1,14547
    1504:	3c014040 	lui	at,0x4040
    1508:	44813000 	mtc1	at,$f6
    150c:	c64401f0 	lwc1	$f4,496(s2)
    1510:	8fa40060 	lw	a0,96(sp)
    1514:	46062201 	sub.s	$f8,$f4,$f6
    1518:	44054000 	mfc1	a1,$f8
    151c:	0c000000 	jal	0 <func_808D2670>
    1520:	00000000 	nop
    1524:	10400040 	beqz	v0,1628 <func_808D3AE0+0x1b8>
    1528:	00008025 	move	s0,zero
    152c:	3c014396 	lui	at,0x4396
    1530:	4481d000 	mtc1	at,$f26
    1534:	3c013f00 	lui	at,0x3f00
    1538:	4481c000 	mtc1	at,$f24
    153c:	3c014100 	lui	at,0x4100
    1540:	4481b000 	mtc1	at,$f22
    1544:	3c014120 	lui	at,0x4120
    1548:	26341970 	addiu	s4,s1,6512
    154c:	3c130000 	lui	s3,0x0
    1550:	4481a000 	mtc1	at,$f20
    1554:	26730000 	addiu	s3,s3,0
    1558:	27b10078 	addiu	s1,sp,120
    155c:	8e680000 	lw	t0,0(s3)
    1560:	8e790004 	lw	t9,4(s3)
    1564:	4600b306 	mov.s	$f12,$f22
    1568:	ae280000 	sw	t0,0(s1)
    156c:	8e680008 	lw	t0,8(s3)
    1570:	ae390004 	sw	t9,4(s1)
    1574:	0c000000 	jal	0 <func_808D2670>
    1578:	ae280008 	sw	t0,8(s1)
    157c:	3c013f80 	lui	at,0x3f80
    1580:	44816000 	mtc1	at,$f12
    1584:	0c000000 	jal	0 <func_808D2670>
    1588:	e7a00084 	swc1	$f0,132(sp)
    158c:	e7a00088 	swc1	$f0,136(sp)
    1590:	0c000000 	jal	0 <func_808D2670>
    1594:	4600b306 	mov.s	$f12,$f22
    1598:	e7a0008c 	swc1	$f0,140(sp)
    159c:	e7b8007c 	swc1	$f24,124(sp)
    15a0:	0c000000 	jal	0 <func_808D2670>
    15a4:	4600a306 	mov.s	$f12,$f20
    15a8:	c64a0038 	lwc1	$f10,56(s2)
    15ac:	4600a306 	mov.s	$f12,$f20
    15b0:	460a0400 	add.s	$f16,$f0,$f10
    15b4:	0c000000 	jal	0 <func_808D2670>
    15b8:	e7b0006c 	swc1	$f16,108(sp)
    15bc:	c652003c 	lwc1	$f18,60(s2)
    15c0:	4600a306 	mov.s	$f12,$f20
    15c4:	46120100 	add.s	$f4,$f0,$f18
    15c8:	0c000000 	jal	0 <func_808D2670>
    15cc:	e7a40070 	swc1	$f4,112(sp)
    15d0:	c6460040 	lwc1	$f6,64(s2)
    15d4:	3c0142c8 	lui	at,0x42c8
    15d8:	44816000 	mtc1	at,$f12
    15dc:	46060200 	add.s	$f8,$f0,$f6
    15e0:	0c000000 	jal	0 <func_808D2670>
    15e4:	e7a80074 	swc1	$f8,116(sp)
    15e8:	461a0280 	add.s	$f10,$f0,$f26
    15ec:	02802025 	move	a0,s4
    15f0:	27a5006c 	addiu	a1,sp,108
    15f4:	27a60084 	addiu	a2,sp,132
    15f8:	e7aa0010 	swc1	$f10,16(sp)
    15fc:	0c000000 	jal	0 <func_808D2670>
    1600:	02203825 	move	a3,s1
    1604:	26100001 	addiu	s0,s0,1
    1608:	00108400 	sll	s0,s0,0x10
    160c:	00108403 	sra	s0,s0,0x10
    1610:	2a010019 	slti	at,s0,25
    1614:	5420ffd2 	bnezl	at,1560 <func_808D3AE0+0xf0>
    1618:	8e680000 	lw	t0,0(s3)
    161c:	02402025 	move	a0,s2
    1620:	0c000000 	jal	0 <func_808D2670>
    1624:	24053927 	li	a1,14631
    1628:	8fa40060 	lw	a0,96(sp)
    162c:	0c000000 	jal	0 <func_808D2670>
    1630:	8e4501f0 	lw	a1,496(s2)
    1634:	10400018 	beqz	v0,1698 <func_808D3AE0+0x228>
    1638:	8fa40060 	lw	a0,96(sp)
    163c:	3c050601 	lui	a1,0x601
    1640:	24a5a86c 	addiu	a1,a1,-22420
    1644:	0c000000 	jal	0 <func_808D2670>
    1648:	3c06c0a0 	lui	a2,0xc0a0
    164c:	24090001 	li	t1,1
    1650:	240a003c 	li	t2,60
    1654:	a6490198 	sh	t1,408(s2)
    1658:	1000000f 	b	1698 <func_808D3AE0+0x228>
    165c:	a64a01bc 	sh	t2,444(s2)
    1660:	864b019c 	lh	t3,412(s2)
    1664:	2401000f 	li	at,15
    1668:	02402025 	move	a0,s2
    166c:	316c000f 	andi	t4,t3,0xf
    1670:	55810004 	bnel	t4,at,1684 <func_808D3AE0+0x214>
    1674:	864d01bc 	lh	t5,444(s2)
    1678:	0c000000 	jal	0 <func_808D2670>
    167c:	240538d4 	li	a1,14548
    1680:	864d01bc 	lh	t5,444(s2)
    1684:	02402025 	move	a0,s2
    1688:	55a00004 	bnezl	t5,169c <func_808D3AE0+0x22c>
    168c:	8fbf0054 	lw	ra,84(sp)
    1690:	0c000000 	jal	0 <func_808D2670>
    1694:	02002825 	move	a1,s0
    1698:	8fbf0054 	lw	ra,84(sp)
    169c:	d7b40020 	ldc1	$f20,32(sp)
    16a0:	d7b60028 	ldc1	$f22,40(sp)
    16a4:	d7b80030 	ldc1	$f24,48(sp)
    16a8:	d7ba0038 	ldc1	$f26,56(sp)
    16ac:	8fb00040 	lw	s0,64(sp)
    16b0:	8fb10044 	lw	s1,68(sp)
    16b4:	8fb20048 	lw	s2,72(sp)
    16b8:	8fb3004c 	lw	s3,76(sp)
    16bc:	8fb40050 	lw	s4,80(sp)
    16c0:	03e00008 	jr	ra
    16c4:	27bd0098 	addiu	sp,sp,152

000016c8 <func_808D3D38>:
    16c8:	27bdffe8 	addiu	sp,sp,-24
    16cc:	afa5001c 	sw	a1,28(sp)
    16d0:	afbf0014 	sw	ra,20(sp)
    16d4:	00803025 	move	a2,a0
    16d8:	3c050600 	lui	a1,0x600
    16dc:	24a57850 	addiu	a1,a1,30800
    16e0:	afa60018 	sw	a2,24(sp)
    16e4:	0c000000 	jal	0 <func_808D2670>
    16e8:	2484014c 	addiu	a0,a0,332
    16ec:	3c040600 	lui	a0,0x600
    16f0:	0c000000 	jal	0 <func_808D2670>
    16f4:	24847850 	addiu	a0,a0,30800
    16f8:	44822000 	mtc1	v0,$f4
    16fc:	8fa60018 	lw	a2,24(sp)
    1700:	3c0e0000 	lui	t6,0x0
    1704:	468021a0 	cvt.s.w	$f6,$f4
    1708:	25ce0000 	addiu	t6,t6,0
    170c:	acce0190 	sw	t6,400(a2)
    1710:	a4c00198 	sh	zero,408(a2)
    1714:	e4c601f0 	swc1	$f6,496(a2)
    1718:	8fbf0014 	lw	ra,20(sp)
    171c:	27bd0018 	addiu	sp,sp,24
    1720:	03e00008 	jr	ra
    1724:	00000000 	nop

00001728 <func_808D3D98>:
    1728:	27bdffd8 	addiu	sp,sp,-40
    172c:	afbf001c 	sw	ra,28(sp)
    1730:	afb10018 	sw	s1,24(sp)
    1734:	afb00014 	sw	s0,20(sp)
    1738:	afa5002c 	sw	a1,44(sp)
    173c:	8c8e0118 	lw	t6,280(a0)
    1740:	00808025 	move	s0,a0
    1744:	2491014c 	addiu	s1,a0,332
    1748:	02202025 	move	a0,s1
    174c:	0c000000 	jal	0 <func_808D2670>
    1750:	afae0024 	sw	t6,36(sp)
    1754:	86030198 	lh	v1,408(s0)
    1758:	240f0001 	li	t7,1
    175c:	a20f0194 	sb	t7,404(s0)
    1760:	14600012 	bnez	v1,17ac <func_808D3D98+0x84>
    1764:	24010001 	li	at,1
    1768:	02202025 	move	a0,s1
    176c:	0c000000 	jal	0 <func_808D2670>
    1770:	8e0501f0 	lw	a1,496(s0)
    1774:	10400033 	beqz	v0,1844 <func_808D3D98+0x11c>
    1778:	02202025 	move	a0,s1
    177c:	3c050601 	lui	a1,0x601
    1780:	0c000000 	jal	0 <func_808D2670>
    1784:	24a589dc 	addiu	a1,a1,-30244
    1788:	3c040601 	lui	a0,0x601
    178c:	0c000000 	jal	0 <func_808D2670>
    1790:	248489dc 	addiu	a0,a0,-30244
    1794:	44822000 	mtc1	v0,$f4
    1798:	24180001 	li	t8,1
    179c:	a6180198 	sh	t8,408(s0)
    17a0:	468021a0 	cvt.s.w	$f6,$f4
    17a4:	10000027 	b	1844 <func_808D3D98+0x11c>
    17a8:	e60601f0 	swc1	$f6,496(s0)
    17ac:	14610018 	bne	v1,at,1810 <func_808D3D98+0xe8>
    17b0:	26040028 	addiu	a0,s0,40
    17b4:	02202025 	move	a0,s1
    17b8:	0c000000 	jal	0 <func_808D2670>
    17bc:	3c0540c0 	lui	a1,0x40c0
    17c0:	10400003 	beqz	v0,17d0 <func_808D3D98+0xa8>
    17c4:	02002025 	move	a0,s0
    17c8:	0c000000 	jal	0 <func_808D2670>
    17cc:	240538d6 	li	a1,14550
    17d0:	02202025 	move	a0,s1
    17d4:	0c000000 	jal	0 <func_808D2670>
    17d8:	3c0541a0 	lui	a1,0x41a0
    17dc:	10400004 	beqz	v0,17f0 <func_808D3D98+0xc8>
    17e0:	02202025 	move	a0,s1
    17e4:	8fa80024 	lw	t0,36(sp)
    17e8:	2419001e 	li	t9,30
    17ec:	a5190250 	sh	t9,592(t0)
    17f0:	0c000000 	jal	0 <func_808D2670>
    17f4:	8e0501f0 	lw	a1,496(s0)
    17f8:	10400012 	beqz	v0,1844 <func_808D3D98+0x11c>
    17fc:	24090002 	li	t1,2
    1800:	240a0019 	li	t2,25
    1804:	a6090198 	sh	t1,408(s0)
    1808:	1000000e 	b	1844 <func_808D3D98+0x11c>
    180c:	a60a01bc 	sh	t2,444(s0)
    1810:	3c05c2c8 	lui	a1,0xc2c8
    1814:	3c063f80 	lui	a2,0x3f80
    1818:	0c000000 	jal	0 <func_808D2670>
    181c:	3c074120 	lui	a3,0x4120
    1820:	860b01bc 	lh	t3,444(s0)
    1824:	3c0c0000 	lui	t4,0x0
    1828:	258c0000 	addiu	t4,t4,0
    182c:	55600006 	bnezl	t3,1848 <func_808D3D98+0x120>
    1830:	8fbf001c 	lw	ra,28(sp)
    1834:	ae0c0190 	sw	t4,400(s0)
    1838:	8fae0024 	lw	t6,36(sp)
    183c:	240d0001 	li	t5,1
    1840:	a1cd02d8 	sb	t5,728(t6)
    1844:	8fbf001c 	lw	ra,28(sp)
    1848:	8fb00014 	lw	s0,20(sp)
    184c:	8fb10018 	lw	s1,24(sp)
    1850:	03e00008 	jr	ra
    1854:	27bd0028 	addiu	sp,sp,40

00001858 <func_808D3EC8>:
    1858:	27bdffd0 	addiu	sp,sp,-48
    185c:	afb00028 	sw	s0,40(sp)
    1860:	00808025 	move	s0,a0
    1864:	afbf002c 	sw	ra,44(sp)
    1868:	3c040601 	lui	a0,0x601
    186c:	afa50034 	sw	a1,52(sp)
    1870:	0c000000 	jal	0 <func_808D2670>
    1874:	248489dc 	addiu	a0,a0,-30244
    1878:	44822000 	mtc1	v0,$f4
    187c:	3c01c040 	lui	at,0xc040
    1880:	44813000 	mtc1	at,$f6
    1884:	46802020 	cvt.s.w	$f0,$f4
    1888:	3c050601 	lui	a1,0x601
    188c:	240e0003 	li	t6,3
    1890:	24a589dc 	addiu	a1,a1,-30244
    1894:	2604014c 	addiu	a0,s0,332
    1898:	3c063f80 	lui	a2,0x3f80
    189c:	e60001f0 	swc1	$f0,496(s0)
    18a0:	afae0014 	sw	t6,20(sp)
    18a4:	e7a00010 	swc1	$f0,16(sp)
    18a8:	24070000 	li	a3,0
    18ac:	0c000000 	jal	0 <func_808D2670>
    18b0:	e7a60018 	swc1	$f6,24(sp)
    18b4:	8e180004 	lw	t8,4(s0)
    18b8:	3c0f0000 	lui	t7,0x0
    18bc:	2401fffe 	li	at,-2
    18c0:	25ef0000 	addiu	t7,t7,0
    18c4:	0301c824 	and	t9,t8,at
    18c8:	ae0f0190 	sw	t7,400(s0)
    18cc:	ae190004 	sw	t9,4(s0)
    18d0:	a6001390 	sh	zero,5008(s0)
    18d4:	8fbf002c 	lw	ra,44(sp)
    18d8:	8fb00028 	lw	s0,40(sp)
    18dc:	27bd0030 	addiu	sp,sp,48
    18e0:	03e00008 	jr	ra
    18e4:	00000000 	nop

000018e8 <func_808D3F58>:
    18e8:	27bdffd8 	addiu	sp,sp,-40
    18ec:	afbf001c 	sw	ra,28(sp)
    18f0:	afb00018 	sw	s0,24(sp)
    18f4:	afa5002c 	sw	a1,44(sp)
    18f8:	848e1392 	lh	t6,5010(a0)
    18fc:	00808025 	move	s0,a0
    1900:	51c00051 	beqzl	t6,1a48 <func_808D3F58+0x160>
    1904:	8fbf001c 	lw	ra,28(sp)
    1908:	c60413c4 	lwc1	$f4,5060(s0)
    190c:	c606140c 	lwc1	$f6,5132(s0)
    1910:	24841394 	addiu	a0,a0,5012
    1914:	8e0513dc 	lw	a1,5084(s0)
    1918:	46062202 	mul.s	$f8,$f4,$f6
    191c:	8e0613e8 	lw	a2,5096(s0)
    1920:	afa40024 	sw	a0,36(sp)
    1924:	44074000 	mfc1	a3,$f8
    1928:	0c000000 	jal	0 <func_808D2670>
    192c:	00000000 	nop
    1930:	c60a13c8 	lwc1	$f10,5064(s0)
    1934:	c610140c 	lwc1	$f16,5132(s0)
    1938:	26041398 	addiu	a0,s0,5016
    193c:	8e0513e0 	lw	a1,5088(s0)
    1940:	46105482 	mul.s	$f18,$f10,$f16
    1944:	8e0613ec 	lw	a2,5100(s0)
    1948:	44079000 	mfc1	a3,$f18
    194c:	0c000000 	jal	0 <func_808D2670>
    1950:	00000000 	nop
    1954:	c60413cc 	lwc1	$f4,5068(s0)
    1958:	c606140c 	lwc1	$f6,5132(s0)
    195c:	2604139c 	addiu	a0,s0,5020
    1960:	8e0513e4 	lw	a1,5092(s0)
    1964:	46062202 	mul.s	$f8,$f4,$f6
    1968:	8e0613f0 	lw	a2,5104(s0)
    196c:	44074000 	mfc1	a3,$f8
    1970:	0c000000 	jal	0 <func_808D2670>
    1974:	00000000 	nop
    1978:	c60a13d0 	lwc1	$f10,5072(s0)
    197c:	c610140c 	lwc1	$f16,5132(s0)
    1980:	260413a0 	addiu	a0,s0,5024
    1984:	8e0513f4 	lw	a1,5108(s0)
    1988:	46105482 	mul.s	$f18,$f10,$f16
    198c:	8e061400 	lw	a2,5120(s0)
    1990:	afa40020 	sw	a0,32(sp)
    1994:	44079000 	mfc1	a3,$f18
    1998:	0c000000 	jal	0 <func_808D2670>
    199c:	00000000 	nop
    19a0:	c60413d4 	lwc1	$f4,5076(s0)
    19a4:	c606140c 	lwc1	$f6,5132(s0)
    19a8:	260413a4 	addiu	a0,s0,5028
    19ac:	8e0513f8 	lw	a1,5112(s0)
    19b0:	46062202 	mul.s	$f8,$f4,$f6
    19b4:	8e061404 	lw	a2,5124(s0)
    19b8:	44074000 	mfc1	a3,$f8
    19bc:	0c000000 	jal	0 <func_808D2670>
    19c0:	00000000 	nop
    19c4:	c60a13d8 	lwc1	$f10,5080(s0)
    19c8:	c610140c 	lwc1	$f16,5132(s0)
    19cc:	260413a8 	addiu	a0,s0,5032
    19d0:	8e0513fc 	lw	a1,5116(s0)
    19d4:	46105482 	mul.s	$f18,$f10,$f16
    19d8:	8e061408 	lw	a2,5128(s0)
    19dc:	44079000 	mfc1	a3,$f18
    19e0:	0c000000 	jal	0 <func_808D2670>
    19e4:	00000000 	nop
    19e8:	3c013f80 	lui	at,0x3f80
    19ec:	44810000 	mtc1	at,$f0
    19f0:	2604140c 	addiu	a0,s0,5132
    19f4:	8e071410 	lw	a3,5136(s0)
    19f8:	44050000 	mfc1	a1,$f0
    19fc:	44060000 	mfc1	a2,$f0
    1a00:	0c000000 	jal	0 <func_808D2670>
    1a04:	00000000 	nop
    1a08:	c60413a4 	lwc1	$f4,5028(s0)
    1a0c:	c6061414 	lwc1	$f6,5140(s0)
    1a10:	86051392 	lh	a1,5010(s0)
    1a14:	46062200 	add.s	$f8,$f4,$f6
    1a18:	e60813a4 	swc1	$f8,5028(s0)
    1a1c:	8fa70024 	lw	a3,36(sp)
    1a20:	8fa60020 	lw	a2,32(sp)
    1a24:	0c000000 	jal	0 <func_808D2670>
    1a28:	8fa4002c 	lw	a0,44(sp)
    1a2c:	3c073dcc 	lui	a3,0x3dcc
    1a30:	34e7cccd 	ori	a3,a3,0xcccd
    1a34:	26041414 	addiu	a0,s0,5140
    1a38:	24050000 	li	a1,0
    1a3c:	0c000000 	jal	0 <func_808D2670>
    1a40:	3c063f80 	lui	a2,0x3f80
    1a44:	8fbf001c 	lw	ra,28(sp)
    1a48:	8fb00018 	lw	s0,24(sp)
    1a4c:	27bd0028 	addiu	sp,sp,40
    1a50:	03e00008 	jr	ra
    1a54:	00000000 	nop

00001a58 <func_808D40C8>:
    1a58:	27bdff80 	addiu	sp,sp,-128
    1a5c:	afbf003c 	sw	ra,60(sp)
    1a60:	afb00038 	sw	s0,56(sp)
    1a64:	afa50084 	sw	a1,132(sp)
    1a68:	8c8e0118 	lw	t6,280(a0)
    1a6c:	00808025 	move	s0,a0
    1a70:	00a02025 	move	a0,a1
    1a74:	00002825 	move	a1,zero
    1a78:	0c000000 	jal	0 <func_808D2670>
    1a7c:	afae0060 	sw	t6,96(sp)
    1a80:	2604014c 	addiu	a0,s0,332
    1a84:	afa2005c 	sw	v0,92(sp)
    1a88:	0c000000 	jal	0 <func_808D2670>
    1a8c:	afa40044 	sw	a0,68(sp)
    1a90:	960f1390 	lhu	t7,5008(s0)
    1a94:	2de10006 	sltiu	at,t7,6
    1a98:	10200187 	beqz	at,20b8 <L808D4728>
    1a9c:	000f7880 	sll	t7,t7,0x2
    1aa0:	3c010000 	lui	at,0x0
    1aa4:	002f0821 	addu	at,at,t7
    1aa8:	8c2f0000 	lw	t7,0(at)
    1aac:	01e00008 	jr	t7
    1ab0:	00000000 	nop

00001ab4 <L808D4124>:
    1ab4:	8fa40084 	lw	a0,132(sp)
    1ab8:	24180001 	li	t8,1
    1abc:	a6181390 	sh	t8,5008(s0)
    1ac0:	0c000000 	jal	0 <func_808D2670>
    1ac4:	24851d64 	addiu	a1,a0,7524
    1ac8:	8fa40084 	lw	a0,132(sp)
    1acc:	02002825 	move	a1,s0
    1ad0:	0c000000 	jal	0 <func_808D2670>
    1ad4:	24060001 	li	a2,1
    1ad8:	0c000000 	jal	0 <func_808D2670>
    1adc:	8fa40084 	lw	a0,132(sp)
    1ae0:	a6021392 	sh	v0,5010(s0)
    1ae4:	8fa40084 	lw	a0,132(sp)
    1ae8:	00002825 	move	a1,zero
    1aec:	0c000000 	jal	0 <func_808D2670>
    1af0:	24060001 	li	a2,1
    1af4:	8fa40084 	lw	a0,132(sp)
    1af8:	86051392 	lh	a1,5010(s0)
    1afc:	0c000000 	jal	0 <func_808D2670>
    1b00:	24060007 	li	a2,7
    1b04:	8fa3005c 	lw	v1,92(sp)
    1b08:	3c010000 	lui	at,0x0
    1b0c:	c4200000 	lwc1	$f0,0(at)
    1b10:	8c68005c 	lw	t0,92(v1)
    1b14:	3c0142c8 	lui	at,0x42c8
    1b18:	44811000 	mtc1	at,$f2
    1b1c:	ae081394 	sw	t0,5012(s0)
    1b20:	8c790060 	lw	t9,96(v1)
    1b24:	3c010000 	lui	at,0x0
    1b28:	ae191398 	sw	t9,5016(s0)
    1b2c:	8c680064 	lw	t0,100(v1)
    1b30:	ae08139c 	sw	t0,5020(s0)
    1b34:	8c6a0050 	lw	t2,80(v1)
    1b38:	ae0a13a0 	sw	t2,5024(s0)
    1b3c:	8c690054 	lw	t1,84(v1)
    1b40:	ae0913a4 	sw	t1,5028(s0)
    1b44:	8c6a0058 	lw	t2,88(v1)
    1b48:	e60213c4 	swc1	$f2,5060(s0)
    1b4c:	e60213c8 	swc1	$f2,5064(s0)
    1b50:	e60213cc 	swc1	$f2,5068(s0)
    1b54:	e60213d0 	swc1	$f2,5072(s0)
    1b58:	e60213d4 	swc1	$f2,5076(s0)
    1b5c:	e60213d8 	swc1	$f2,5080(s0)
    1b60:	ae0a13a8 	sw	t2,5032(s0)
    1b64:	c4240000 	lwc1	$f4,0(at)
    1b68:	a60001bc 	sh	zero,444(s0)
    1b6c:	a60001a8 	sh	zero,424(s0)
    1b70:	e60013e8 	swc1	$f0,5096(s0)
    1b74:	e60013ec 	swc1	$f0,5100(s0)
    1b78:	e60013f0 	swc1	$f0,5104(s0)
    1b7c:	e6001400 	swc1	$f0,5120(s0)
    1b80:	e6001404 	swc1	$f0,5124(s0)
    1b84:	e6001408 	swc1	$f0,5128(s0)
    1b88:	e6041410 	swc1	$f4,5136(s0)

00001b8c <L808D41FC>:
    1b8c:	860b01a8 	lh	t3,424(s0)
    1b90:	240d0014 	li	t5,20
    1b94:	256c0001 	addiu	t4,t3,1
    1b98:	a60c01a8 	sh	t4,424(s0)
    1b9c:	860201a8 	lh	v0,424(s0)
    1ba0:	2841000f 	slti	at,v0,15
    1ba4:	10200004 	beqz	at,1bb8 <L808D41FC+0x2c>
    1ba8:	3c013f80 	lui	at,0x3f80
    1bac:	44810000 	mtc1	at,$f0
    1bb0:	1000000b 	b	1be0 <L808D41FC+0x54>
    1bb4:	24010001 	li	at,1
    1bb8:	28410014 	slti	at,v0,20
    1bbc:	10200004 	beqz	at,1bd0 <L808D41FC+0x44>
    1bc0:	3c013f00 	lui	at,0x3f00
    1bc4:	44810000 	mtc1	at,$f0
    1bc8:	10000005 	b	1be0 <L808D41FC+0x54>
    1bcc:	24010001 	li	at,1
    1bd0:	3c013e80 	lui	at,0x3e80
    1bd4:	44810000 	mtc1	at,$f0
    1bd8:	00000000 	nop
    1bdc:	24010001 	li	at,1
    1be0:	10410002 	beq	v0,at,1bec <L808D41FC+0x60>
    1be4:	24010028 	li	at,40
    1be8:	1441000c 	bne	v0,at,1c1c <L808D41FC+0x90>
    1bec:	24010028 	li	at,40
    1bf0:	14410005 	bne	v0,at,1c08 <L808D41FC+0x7c>
    1bf4:	a60d01a4 	sh	t5,420(s0)
    1bf8:	240438d9 	li	a0,14553
    1bfc:	0c000000 	jal	0 <func_808D2670>
    1c00:	e7a0007c 	swc1	$f0,124(sp)
    1c04:	c7a0007c 	lwc1	$f0,124(sp)
    1c08:	02002025 	move	a0,s0
    1c0c:	240538d6 	li	a1,14550
    1c10:	0c000000 	jal	0 <func_808D2670>
    1c14:	e7a0007c 	swc1	$f0,124(sp)
    1c18:	c7a0007c 	lwc1	$f0,124(sp)
    1c1c:	44050000 	mfc1	a1,$f0
    1c20:	26040168 	addiu	a0,s0,360
    1c24:	3c063f80 	lui	a2,0x3f80
    1c28:	0c000000 	jal	0 <func_808D2670>
    1c2c:	3c073f80 	lui	a3,0x3f80
    1c30:	860e008a 	lh	t6,138(s0)
    1c34:	3c014700 	lui	at,0x4700
    1c38:	44815000 	mtc1	at,$f10
    1c3c:	448e3000 	mtc1	t6,$f6
    1c40:	3c010000 	lui	at,0x0
    1c44:	c4320000 	lwc1	$f18,0(at)
    1c48:	46803220 	cvt.s.w	$f8,$f6
    1c4c:	3c010000 	lui	at,0x0
    1c50:	c4260000 	lwc1	$f6,0(at)
    1c54:	00002825 	move	a1,zero
    1c58:	460a4403 	div.s	$f16,$f8,$f10
    1c5c:	46128102 	mul.s	$f4,$f16,$f18
    1c60:	0c000000 	jal	0 <func_808D2670>
    1c64:	46062300 	add.s	$f12,$f4,$f6
    1c68:	44800000 	mtc1	zero,$f0
    1c6c:	3c01437a 	lui	at,0x437a
    1c70:	44814000 	mtc1	at,$f8
    1c74:	27a40070 	addiu	a0,sp,112
    1c78:	27a50064 	addiu	a1,sp,100
    1c7c:	e7a00070 	swc1	$f0,112(sp)
    1c80:	e7a00074 	swc1	$f0,116(sp)
    1c84:	0c000000 	jal	0 <func_808D2670>
    1c88:	e7a80078 	swc1	$f8,120(sp)
    1c8c:	c60a0024 	lwc1	$f10,36(s0)
    1c90:	c7b00064 	lwc1	$f16,100(sp)
    1c94:	3c01430c 	lui	at,0x430c
    1c98:	44812000 	mtc1	at,$f4
    1c9c:	46105480 	add.s	$f18,$f10,$f16
    1ca0:	3c0142b4 	lui	at,0x42b4
    1ca4:	44818000 	mtc1	at,$f16
    1ca8:	c600003c 	lwc1	$f0,60(s0)
    1cac:	e61213dc 	swc1	$f18,5084(s0)
    1cb0:	e60413e0 	swc1	$f4,5088(s0)
    1cb4:	c7a8006c 	lwc1	$f8,108(sp)
    1cb8:	c606002c 	lwc1	$f6,44(s0)
    1cbc:	4600803e 	c.le.s	$f16,$f0
    1cc0:	3c0141a0 	lui	at,0x41a0
    1cc4:	46083280 	add.s	$f10,$f6,$f8
    1cc8:	3c054170 	lui	a1,0x4170
    1ccc:	45000006 	bc1f	1ce8 <L808D41FC+0x15c>
    1cd0:	e60a13e4 	swc1	$f10,5092(s0)
    1cd4:	c6120038 	lwc1	$f18,56(s0)
    1cd8:	c6040040 	lwc1	$f4,64(s0)
    1cdc:	e60013f8 	swc1	$f0,5112(s0)
    1ce0:	e61213f4 	swc1	$f18,5108(s0)
    1ce4:	e60413fc 	swc1	$f4,5116(s0)
    1ce8:	860f01bc 	lh	t7,444(s0)
    1cec:	15e00013 	bnez	t7,1d3c <L808D41FC+0x1b0>
    1cf0:	00000000 	nop
    1cf4:	44811000 	mtc1	at,$f2
    1cf8:	8fa40044 	lw	a0,68(sp)
    1cfc:	44051000 	mfc1	a1,$f2
    1d00:	0c000000 	jal	0 <func_808D2670>
    1d04:	00000000 	nop
    1d08:	10400003 	beqz	v0,1d18 <L808D41FC+0x18c>
    1d0c:	8fb90060 	lw	t9,96(sp)
    1d10:	2418003c 	li	t8,60
    1d14:	a7380250 	sh	t8,592(t9)
    1d18:	860801a8 	lh	t0,424(s0)
    1d1c:	24090002 	li	t1,2
    1d20:	240a0032 	li	t2,50
    1d24:	29010064 	slti	at,t0,100
    1d28:	542000e4 	bnezl	at,20bc <L808D4728+0x4>
    1d2c:	02002025 	move	a0,s0
    1d30:	a6091390 	sh	t1,5008(s0)
    1d34:	100000e0 	b	20b8 <L808D4728>
    1d38:	a60a01bc 	sh	t2,444(s0)
    1d3c:	0c000000 	jal	0 <func_808D2670>
    1d40:	8fa40044 	lw	a0,68(sp)
    1d44:	104000dc 	beqz	v0,20b8 <L808D4728>
    1d48:	8fa40044 	lw	a0,68(sp)
    1d4c:	3c050601 	lui	a1,0x601
    1d50:	24a589dc 	addiu	a1,a1,-30244
    1d54:	0c000000 	jal	0 <func_808D2670>
    1d58:	3c06c120 	lui	a2,0xc120
    1d5c:	100000d7 	b	20bc <L808D4728+0x4>
    1d60:	02002025 	move	a0,s0

00001d64 <L808D43D4>:
    1d64:	860b01bc 	lh	t3,444(s0)
    1d68:	26040028 	addiu	a0,s0,40
    1d6c:	3c05c2c8 	lui	a1,0xc2c8
    1d70:	1560000b 	bnez	t3,1da0 <L808D43D4+0x3c>
    1d74:	3c063f80 	lui	a2,0x3f80
    1d78:	240c0003 	li	t4,3
    1d7c:	ae000134 	sw	zero,308(s0)
    1d80:	a60c1390 	sh	t4,5008(s0)
    1d84:	8fae0060 	lw	t6,96(sp)
    1d88:	44803000 	mtc1	zero,$f6
    1d8c:	240d0002 	li	t5,2
    1d90:	a1cd02d8 	sb	t5,728(t6)
    1d94:	a6000198 	sh	zero,408(s0)
    1d98:	100000c7 	b	20b8 <L808D4728>
    1d9c:	e606140c 	swc1	$f6,5132(s0)
    1da0:	0c000000 	jal	0 <func_808D2670>
    1da4:	3c0740a0 	lui	a3,0x40a0
    1da8:	100000c4 	b	20bc <L808D4728+0x4>
    1dac:	02002025 	move	a0,s0

00001db0 <L808D4420>:
    1db0:	8fa20060 	lw	v0,96(sp)
    1db4:	3c0142a0 	lui	at,0x42a0
    1db8:	44810000 	mtc1	at,$f0
    1dbc:	c4480028 	lwc1	$f8,40(v0)
    1dc0:	260413e0 	addiu	a0,s0,5088
    1dc4:	4600403c 	c.lt.s	$f8,$f0
    1dc8:	00000000 	nop
    1dcc:	45020018 	bc1fl	1e30 <L808D4420+0x80>
    1dd0:	8c490024 	lw	t1,36(v0)
    1dd4:	844f0030 	lh	t7,48(v0)
    1dd8:	29e13001 	slti	at,t7,12289
    1ddc:	54200038 	bnezl	at,1ec0 <L808D4420+0x110>
    1de0:	8fa20060 	lw	v0,96(sp)
    1de4:	8c590024 	lw	t9,36(v0)
    1de8:	3c014316 	lui	at,0x4316
    1dec:	44818000 	mtc1	at,$f16
    1df0:	ae1913f4 	sw	t9,5108(s0)
    1df4:	8c580028 	lw	t8,40(v0)
    1df8:	3c014396 	lui	at,0x4396
    1dfc:	44812000 	mtc1	at,$f4
    1e00:	ae1813f8 	sw	t8,5112(s0)
    1e04:	8c59002c 	lw	t9,44(v0)
    1e08:	e60013f8 	swc1	$f0,5112(s0)
    1e0c:	ae1913fc 	sw	t9,5116(s0)
    1e10:	c44a0024 	lwc1	$f10,36(v0)
    1e14:	e61013e0 	swc1	$f16,5088(s0)
    1e18:	e60a13dc 	swc1	$f10,5084(s0)
    1e1c:	c452002c 	lwc1	$f18,44(v0)
    1e20:	46049180 	add.s	$f6,$f18,$f4
    1e24:	10000025 	b	1ebc <L808D4420+0x10c>
    1e28:	e60613e4 	swc1	$f6,5092(s0)
    1e2c:	8c490024 	lw	t1,36(v0)
    1e30:	c6080024 	lwc1	$f8,36(s0)
    1e34:	3c054348 	lui	a1,0x4348
    1e38:	ae0913f4 	sw	t1,5108(s0)
    1e3c:	8c480028 	lw	t0,40(v0)
    1e40:	3c063f80 	lui	a2,0x3f80
    1e44:	3c074000 	lui	a3,0x4000
    1e48:	ae0813f8 	sw	t0,5112(s0)
    1e4c:	8c49002c 	lw	t1,44(v0)
    1e50:	e60813dc 	swc1	$f8,5084(s0)
    1e54:	0c000000 	jal	0 <func_808D2670>
    1e58:	ae0913fc 	sw	t1,5116(s0)
    1e5c:	8faa0060 	lw	t2,96(sp)
    1e60:	3c014348 	lui	at,0x4348
    1e64:	44818000 	mtc1	at,$f16
    1e68:	c54a002c 	lwc1	$f10,44(t2)
    1e6c:	260413e4 	addiu	a0,s0,5092
    1e70:	3c063f80 	lui	a2,0x3f80
    1e74:	46105480 	add.s	$f18,$f10,$f16
    1e78:	3c074040 	lui	a3,0x4040
    1e7c:	44059000 	mfc1	a1,$f18
    1e80:	0c000000 	jal	0 <func_808D2670>
    1e84:	00000000 	nop
    1e88:	86020198 	lh	v0,408(s0)
    1e8c:	1440000b 	bnez	v0,1ebc <L808D4420+0x10c>
    1e90:	244b0001 	addiu	t3,v0,1
    1e94:	44802000 	mtc1	zero,$f4
    1e98:	a60b0198 	sh	t3,408(s0)
    1e9c:	3c010000 	lui	at,0x0
    1ea0:	e604140c 	swc1	$f4,5132(s0)
    1ea4:	c4260000 	lwc1	$f6,0(at)
    1ea8:	24060001 	li	a2,1
    1eac:	e6061410 	swc1	$f6,5136(s0)
    1eb0:	8fa50060 	lw	a1,96(sp)
    1eb4:	0c000000 	jal	0 <func_808D2670>
    1eb8:	8fa40084 	lw	a0,132(sp)
    1ebc:	8fa20060 	lw	v0,96(sp)
    1ec0:	240100ca 	li	at,202
    1ec4:	844c0222 	lh	t4,546(v0)
    1ec8:	5581007c 	bnel	t4,at,20bc <L808D4728+0x4>
    1ecc:	02002025 	move	a0,s0
    1ed0:	844d0248 	lh	t5,584(v0)
    1ed4:	24010005 	li	at,5
    1ed8:	240e0004 	li	t6,4
    1edc:	55a10077 	bnel	t5,at,20bc <L808D4728+0x4>
    1ee0:	02002025 	move	a0,s0
    1ee4:	44804000 	mtc1	zero,$f8
    1ee8:	a60e1390 	sh	t6,5008(s0)
    1eec:	3c010000 	lui	at,0x0
    1ef0:	e608140c 	swc1	$f8,5132(s0)
    1ef4:	c42a0000 	lwc1	$f10,0(at)
    1ef8:	3c014316 	lui	at,0x4316
    1efc:	44818000 	mtc1	at,$f16
    1f00:	3c014396 	lui	at,0x4396
    1f04:	e60a1410 	swc1	$f10,5136(s0)
    1f08:	e61013e0 	swc1	$f16,5088(s0)
    1f0c:	c452002c 	lwc1	$f18,44(v0)
    1f10:	44812000 	mtc1	at,$f4
    1f14:	00000000 	nop
    1f18:	46049180 	add.s	$f6,$f18,$f4
    1f1c:	10000066 	b	20b8 <L808D4728>
    1f20:	e60613e4 	swc1	$f6,5092(s0)

00001f24 <L808D4594>:
    1f24:	260413f8 	addiu	a0,s0,5112
    1f28:	3c0542c8 	lui	a1,0x42c8
    1f2c:	3c063f80 	lui	a2,0x3f80
    1f30:	0c000000 	jal	0 <func_808D2670>
    1f34:	3c0742c8 	lui	a3,0x42c8
    1f38:	44800000 	mtc1	zero,$f0
    1f3c:	3c01430c 	lui	at,0x430c
    1f40:	44814000 	mtc1	at,$f8
    1f44:	3c073f93 	lui	a3,0x3f93
    1f48:	34e73333 	ori	a3,a3,0x3333
    1f4c:	260413e4 	addiu	a0,s0,5092
    1f50:	3c05435c 	lui	a1,0x435c
    1f54:	3c063f00 	lui	a2,0x3f00
    1f58:	e60013f4 	swc1	$f0,5108(s0)
    1f5c:	e60013fc 	swc1	$f0,5116(s0)
    1f60:	e60013dc 	swc1	$f0,5084(s0)
    1f64:	0c000000 	jal	0 <func_808D2670>
    1f68:	e60813e0 	swc1	$f8,5088(s0)
    1f6c:	8fa30060 	lw	v1,96(sp)
    1f70:	24080005 	li	t0,5
    1f74:	84620242 	lh	v0,578(v1)
    1f78:	10400016 	beqz	v0,1fd4 <L808D4594+0xb0>
    1f7c:	244fffff 	addiu	t7,v0,-1
    1f80:	a46f0242 	sh	t7,578(v1)
    1f84:	84620242 	lh	v0,578(v1)
    1f88:	3c0141a0 	lui	at,0x41a0
    1f8c:	44811000 	mtc1	at,$f2
    1f90:	44825000 	mtc1	v0,$f10
    1f94:	3c013f00 	lui	at,0x3f00
    1f98:	44819000 	mtc1	at,$f18
    1f9c:	46805420 	cvt.s.w	$f16,$f10
    1fa0:	30580001 	andi	t8,v0,0x1
    1fa4:	46128003 	div.s	$f0,$f16,$f18
    1fa8:	4600103e 	c.le.s	$f2,$f0
    1fac:	00000000 	nop
    1fb0:	45000002 	bc1f	1fbc <L808D4594+0x98>
    1fb4:	00000000 	nop
    1fb8:	46001006 	mov.s	$f0,$f2
    1fbc:	53000004 	beqzl	t8,1fd0 <L808D4594+0xac>
    1fc0:	46000107 	neg.s	$f4,$f0
    1fc4:	10000003 	b	1fd4 <L808D4594+0xb0>
    1fc8:	e6001414 	swc1	$f0,5140(s0)
    1fcc:	46000107 	neg.s	$f4,$f0
    1fd0:	e6041414 	swc1	$f4,5140(s0)
    1fd4:	84790222 	lh	t9,546(v1)
    1fd8:	240100cd 	li	at,205
    1fdc:	8fa3005c 	lw	v1,92(sp)
    1fe0:	17210035 	bne	t9,at,20b8 <L808D4728>
    1fe4:	26021394 	addiu	v0,s0,5012
    1fe8:	a6081390 	sh	t0,5008(s0)
    1fec:	8c4a0000 	lw	t2,0(v0)
    1ff0:	00003025 	move	a2,zero
    1ff4:	ac6a005c 	sw	t2,92(v1)
    1ff8:	8c490004 	lw	t1,4(v0)
    1ffc:	ac690060 	sw	t1,96(v1)
    2000:	8c4a0008 	lw	t2,8(v0)
    2004:	ac6a0064 	sw	t2,100(v1)
    2008:	8c4c0000 	lw	t4,0(v0)
    200c:	ac6c0074 	sw	t4,116(v1)
    2010:	8c4b0004 	lw	t3,4(v0)
    2014:	ac6b0078 	sw	t3,120(v1)
    2018:	8c4c0008 	lw	t4,8(v0)
    201c:	ac6c007c 	sw	t4,124(v1)
    2020:	8e0e13a0 	lw	t6,5024(s0)
    2024:	ac6e0050 	sw	t6,80(v1)
    2028:	8e0d13a4 	lw	t5,5028(s0)
    202c:	ac6d0054 	sw	t5,84(v1)
    2030:	8e0e13a8 	lw	t6,5032(s0)
    2034:	ac6e0058 	sw	t6,88(v1)
    2038:	86051392 	lh	a1,5010(s0)
    203c:	0c000000 	jal	0 <func_808D2670>
    2040:	8fa40084 	lw	a0,132(sp)
    2044:	8fa40084 	lw	a0,132(sp)
    2048:	a6001392 	sh	zero,5010(s0)
    204c:	0c000000 	jal	0 <func_808D2670>
    2050:	24851d64 	addiu	a1,a0,7524
    2054:	8fa40084 	lw	a0,132(sp)
    2058:	02002825 	move	a1,s0
    205c:	0c000000 	jal	0 <func_808D2670>
    2060:	24060007 	li	a2,7
    2064:	44800000 	mtc1	zero,$f0
    2068:	3c0142c8 	lui	at,0x42c8
    206c:	8fa60084 	lw	a2,132(sp)
    2070:	44813000 	mtc1	at,$f6
    2074:	240fffff 	li	t7,-1
    2078:	afaf0028 	sw	t7,40(sp)
    207c:	02002825 	move	a1,s0
    2080:	2407005d 	li	a3,93
    2084:	afa0001c 	sw	zero,28(sp)
    2088:	afa00020 	sw	zero,32(sp)
    208c:	afa00024 	sw	zero,36(sp)
    2090:	e7a00010 	swc1	$f0,16(sp)
    2094:	e7a00018 	swc1	$f0,24(sp)
    2098:	24c41c24 	addiu	a0,a2,7204
    209c:	0c000000 	jal	0 <func_808D2670>
    20a0:	e7a60014 	swc1	$f6,20(sp)
    20a4:	8fa40084 	lw	a0,132(sp)
    20a8:	3c050001 	lui	a1,0x1
    20ac:	00a42821 	addu	a1,a1,a0
    20b0:	0c000000 	jal	0 <func_808D2670>
    20b4:	80a51cbc 	lb	a1,7356(a1)

000020b8 <L808D4728>:
    20b8:	02002025 	move	a0,s0
    20bc:	0c000000 	jal	0 <func_808D2670>
    20c0:	8fa50084 	lw	a1,132(sp)
    20c4:	8fbf003c 	lw	ra,60(sp)
    20c8:	8fb00038 	lw	s0,56(sp)
    20cc:	27bd0080 	addiu	sp,sp,128
    20d0:	03e00008 	jr	ra
    20d4:	00000000 	nop

000020d8 <func_808D4748>:
    20d8:	27bdffe8 	addiu	sp,sp,-24
    20dc:	afbf0014 	sw	ra,20(sp)
    20e0:	8c820118 	lw	v0,280(a0)
    20e4:	24010064 	li	at,100
    20e8:	904e02d8 	lbu	t6,728(v0)
    20ec:	55c10009 	bnel	t6,at,2114 <func_808D4748+0x3c>
    20f0:	8fbf0014 	lw	ra,20(sp)
    20f4:	a04002d8 	sb	zero,728(v0)
    20f8:	0c000000 	jal	0 <func_808D2670>
    20fc:	afa40018 	sw	a0,24(sp)
    2100:	8fa40018 	lw	a0,24(sp)
    2104:	240f0014 	li	t7,20
    2108:	a48f01bc 	sh	t7,444(a0)
    210c:	a48001a8 	sh	zero,424(a0)
    2110:	8fbf0014 	lw	ra,20(sp)
    2114:	27bd0018 	addiu	sp,sp,24
    2118:	03e00008 	jr	ra
    211c:	00000000 	nop

00002120 <func_808D4790>:
    2120:	27bdff58 	addiu	sp,sp,-168
    2124:	afbf003c 	sw	ra,60(sp)
    2128:	afb50038 	sw	s5,56(sp)
    212c:	afb40034 	sw	s4,52(sp)
    2130:	afb30030 	sw	s3,48(sp)
    2134:	afb2002c 	sw	s2,44(sp)
    2138:	afb10028 	sw	s1,40(sp)
    213c:	afb00024 	sw	s0,36(sp)
    2140:	f7b40018 	sdc1	$f20,24(sp)
    2144:	8c8e0118 	lw	t6,280(a0)
    2148:	3c0f0000 	lui	t7,0x0
    214c:	25ef0000 	addiu	t7,t7,0
    2150:	afae009c 	sw	t6,156(sp)
    2154:	8c980190 	lw	t8,400(a0)
    2158:	00809825 	move	s3,a0
    215c:	00a0a825 	move	s5,a1
    2160:	15f80014 	bne	t7,t8,21b4 <func_808D4790+0x94>
    2164:	00008025 	move	s0,zero
    2168:	8cb11c44 	lw	s1,7236(a1)
    216c:	2412fffd 	li	s2,-3
    2170:	8e791438 	lw	t9,5176(s3)
    2174:	00104180 	sll	t0,s0,0x6
    2178:	02202025 	move	a0,s1
    217c:	03281021 	addu	v0,t9,t0
    2180:	90430015 	lbu	v1,21(v0)
    2184:	2405083e 	li	a1,2110
    2188:	30690002 	andi	t1,v1,0x2
    218c:	11200003 	beqz	t1,219c <func_808D4790+0x7c>
    2190:	00725024 	and	t2,v1,s2
    2194:	0c000000 	jal	0 <func_808D2670>
    2198:	a04a0015 	sb	t2,21(v0)
    219c:	26100001 	addiu	s0,s0,1
    21a0:	00108400 	sll	s0,s0,0x10
    21a4:	00108403 	sra	s0,s0,0x10
    21a8:	2a010009 	slti	at,s0,9
    21ac:	5420fff1 	bnezl	at,2174 <func_808D4790+0x54>
    21b0:	8e791438 	lw	t9,5176(s3)
    21b4:	8fab009c 	lw	t3,156(sp)
    21b8:	2412fffd 	li	s2,-3
    21bc:	8e621438 	lw	v0,5176(s3)
    21c0:	916c02d7 	lbu	t4,727(t3)
    21c4:	240d0002 	li	t5,2
    21c8:	24030003 	li	v1,3
    21cc:	15800004 	bnez	t4,21e0 <func_808D4790+0xc0>
    21d0:	240e0009 	li	t6,9
    21d4:	a04d0014 	sb	t5,20(v0)
    21d8:	10000003 	b	21e8 <func_808D4790+0xc8>
    21dc:	a26e1430 	sb	t6,5168(s3)
    21e0:	a0430014 	sb	v1,20(v0)
    21e4:	a2631430 	sb	v1,5168(s3)
    21e8:	8e621438 	lw	v0,5176(s3)
    21ec:	90430016 	lbu	v1,22(v0)
    21f0:	306f0002 	andi	t7,v1,0x2
    21f4:	11e000f6 	beqz	t7,25d0 <func_808D4790+0x4b0>
    21f8:	0072c024 	and	t8,v1,s2
    21fc:	a0580016 	sb	t8,22(v0)
    2200:	8fa8009c 	lw	t0,156(sp)
    2204:	8e791438 	lw	t9,5176(s3)
    2208:	00009025 	move	s2,zero
    220c:	910902d7 	lbu	t1,727(t0)
    2210:	8f300024 	lw	s0,36(t9)
    2214:	15200061 	bnez	t1,239c <func_808D4790+0x27c>
    2218:	00000000 	nop
    221c:	8e0a0000 	lw	t2,0(s0)
    2220:	3c014000 	lui	at,0x4000
    2224:	34210040 	ori	at,at,0x40
    2228:	01415824 	and	t3,t2,at
    222c:	116000e8 	beqz	t3,25d0 <func_808D4790+0x4b0>
    2230:	24190001 	li	t9,1
    2234:	910c00af 	lbu	t4,175(t0)
    2238:	24180001 	li	t8,1
    223c:	02602025 	move	a0,s3
    2240:	258dfffe 	addiu	t5,t4,-2
    2244:	a10d00af 	sb	t5,175(t0)
    2248:	8fae009c 	lw	t6,156(sp)
    224c:	81cf00af 	lb	t7,175(t6)
    2250:	29e10003 	slti	at,t7,3
    2254:	50200003 	beqzl	at,2264 <func_808D4790+0x144>
    2258:	8fa9009c 	lw	t1,156(sp)
    225c:	a1d800af 	sb	t8,175(t6)
    2260:	8fa9009c 	lw	t1,156(sp)
    2264:	02a02825 	move	a1,s5
    2268:	0c000000 	jal	0 <func_808D2670>
    226c:	a13902d7 	sb	t9,727(t1)
    2270:	240a001e 	li	t2,30
    2274:	240b0005 	li	t3,5
    2278:	a66a01aa 	sh	t2,426(s3)
    227c:	a66b01a6 	sh	t3,422(s3)
    2280:	02602025 	move	a0,s3
    2284:	0c000000 	jal	0 <func_808D2670>
    2288:	240538d2 	li	a1,14546
    228c:	8fb4009c 	lw	s4,156(sp)
    2290:	3c014120 	lui	at,0x4120
    2294:	4481a000 	mtc1	at,$f20
    2298:	00008025 	move	s0,zero
    229c:	27b20080 	addiu	s2,sp,128
    22a0:	27b1008c 	addiu	s1,sp,140
    22a4:	26941970 	addiu	s4,s4,6512
    22a8:	3c0c0000 	lui	t4,0x0
    22ac:	258c0000 	addiu	t4,t4,0
    22b0:	8d880000 	lw	t0,0(t4)
    22b4:	3c0f0000 	lui	t7,0x0
    22b8:	25ef0000 	addiu	t7,t7,0
    22bc:	ae280000 	sw	t0,0(s1)
    22c0:	8d8d0004 	lw	t5,4(t4)
    22c4:	4600a306 	mov.s	$f12,$f20
    22c8:	ae2d0004 	sw	t5,4(s1)
    22cc:	8d880008 	lw	t0,8(t4)
    22d0:	ae280008 	sw	t0,8(s1)
    22d4:	8dee0000 	lw	t6,0(t7)
    22d8:	ae4e0000 	sw	t6,0(s2)
    22dc:	8df80004 	lw	t8,4(t7)
    22e0:	ae580004 	sw	t8,4(s2)
    22e4:	8dee0008 	lw	t6,8(t7)
    22e8:	0c000000 	jal	0 <func_808D2670>
    22ec:	ae4e0008 	sw	t6,8(s2)
    22f0:	3c0140a0 	lui	at,0x40a0
    22f4:	44816000 	mtc1	at,$f12
    22f8:	0c000000 	jal	0 <func_808D2670>
    22fc:	e7a0008c 	swc1	$f0,140(sp)
    2300:	3c014100 	lui	at,0x4100
    2304:	44812000 	mtc1	at,$f4
    2308:	4600a306 	mov.s	$f12,$f20
    230c:	46040180 	add.s	$f6,$f0,$f4
    2310:	0c000000 	jal	0 <func_808D2670>
    2314:	e7a60090 	swc1	$f6,144(sp)
    2318:	e7a00094 	swc1	$f0,148(sp)
    231c:	c6680038 	lwc1	$f8,56(s3)
    2320:	3c014120 	lui	at,0x4120
    2324:	44816000 	mtc1	at,$f12
    2328:	e7a80074 	swc1	$f8,116(sp)
    232c:	c66a003c 	lwc1	$f10,60(s3)
    2330:	e7aa0078 	swc1	$f10,120(sp)
    2334:	c6700040 	lwc1	$f16,64(s3)
    2338:	0c000000 	jal	0 <func_808D2670>
    233c:	e7b0007c 	swc1	$f16,124(sp)
    2340:	4600048d 	trunc.w.s	$f18,$f0
    2344:	02a02025 	move	a0,s5
    2348:	02802825 	move	a1,s4
    234c:	27a60074 	addiu	a2,sp,116
    2350:	44099000 	mfc1	t1,$f18
    2354:	02203825 	move	a3,s1
    2358:	afb20010 	sw	s2,16(sp)
    235c:	00095400 	sll	t2,t1,0x10
    2360:	000a5c03 	sra	t3,t2,0x10
    2364:	256c000a 	addiu	t4,t3,10
    2368:	448c2000 	mtc1	t4,$f4
    236c:	00000000 	nop
    2370:	468021a0 	cvt.s.w	$f6,$f4
    2374:	0c000000 	jal	0 <func_808D2670>
    2378:	e7a60014 	swc1	$f6,20(sp)
    237c:	26100001 	addiu	s0,s0,1
    2380:	00108400 	sll	s0,s0,0x10
    2384:	00108403 	sra	s0,s0,0x10
    2388:	2a01001e 	slti	at,s0,30
    238c:	1420ffc6 	bnez	at,22a8 <func_808D4790+0x188>
    2390:	00000000 	nop
    2394:	1000008f 	b	25d4 <func_808D4790+0x4b4>
    2398:	8fbf003c 	lw	ra,60(sp)
    239c:	0c000000 	jal	0 <func_808D2670>
    23a0:	8e040000 	lw	a0,0(s0)
    23a4:	14400009 	bnez	v0,23cc <func_808D4790+0x2ac>
    23a8:	305100ff 	andi	s1,v0,0xff
    23ac:	8e020000 	lw	v0,0(s0)
    23b0:	304d1000 	andi	t5,v0,0x1000
    23b4:	11a00003 	beqz	t5,23c4 <func_808D4790+0x2a4>
    23b8:	00000000 	nop
    23bc:	10000005 	b	23d4 <func_808D4790+0x2b4>
    23c0:	24110004 	li	s1,4
    23c4:	10000003 	b	23d4 <func_808D4790+0x2b4>
    23c8:	24110002 	li	s1,2
    23cc:	24120001 	li	s2,1
    23d0:	8e020000 	lw	v0,0(s0)
    23d4:	30480080 	andi	t0,v0,0x80
    23d8:	11000002 	beqz	t0,23e4 <func_808D4790+0x2c4>
    23dc:	8faf009c 	lw	t7,156(sp)
    23e0:	00008825 	move	s1,zero
    23e4:	91e200af 	lbu	v0,175(t7)
    23e8:	02208025 	move	s0,s1
    23ec:	8fa9009c 	lw	t1,156(sp)
    23f0:	0002c600 	sll	t8,v0,0x18
    23f4:	00187603 	sra	t6,t8,0x18
    23f8:	29c10003 	slti	at,t6,3
    23fc:	10200002 	beqz	at,2408 <func_808D4790+0x2e8>
    2400:	0051c823 	subu	t9,v0,s1
    2404:	12400008 	beqz	s2,2428 <func_808D4790+0x308>
    2408:	3c040000 	lui	a0,0x0
    240c:	a13900af 	sb	t9,175(t1)
    2410:	0c000000 	jal	0 <func_808D2670>
    2414:	24840000 	addiu	a0,a0,0
    2418:	3c040000 	lui	a0,0x0
    241c:	24840000 	addiu	a0,a0,0
    2420:	0c000000 	jal	0 <func_808D2670>
    2424:	02002825 	move	a1,s0
    2428:	3c040000 	lui	a0,0x0
    242c:	0c000000 	jal	0 <func_808D2670>
    2430:	24840000 	addiu	a0,a0,0
    2434:	8faa009c 	lw	t2,156(sp)
    2438:	3c040000 	lui	a0,0x0
    243c:	24840000 	addiu	a0,a0,0
    2440:	0c000000 	jal	0 <func_808D2670>
    2444:	914500af 	lbu	a1,175(t2)
    2448:	8fab009c 	lw	t3,156(sp)
    244c:	02602025 	move	a0,s3
    2450:	02a02825 	move	a1,s5
    2454:	816c00af 	lb	t4,175(t3)
    2458:	1d800012 	bgtz	t4,24a4 <func_808D4790+0x384>
    245c:	00000000 	nop
    2460:	0c000000 	jal	0 <func_808D2670>
    2464:	a16000af 	sb	zero,175(t3)
    2468:	240d000a 	li	t5,10
    246c:	24087530 	li	t0,30000
    2470:	3c041001 	lui	a0,0x1001
    2474:	a66d01a6 	sh	t5,422(s3)
    2478:	a66801aa 	sh	t0,426(s3)
    247c:	0c000000 	jal	0 <func_808D2670>
    2480:	348400ff 	ori	a0,a0,0xff
    2484:	02602025 	move	a0,s3
    2488:	0c000000 	jal	0 <func_808D2670>
    248c:	240538d9 	li	a1,14553
    2490:	02a02025 	move	a0,s5
    2494:	0c000000 	jal	0 <func_808D2670>
    2498:	02602825 	move	a1,s3
    249c:	1000000c 	b	24d0 <func_808D4790+0x3b0>
    24a0:	00000000 	nop
    24a4:	1220000a 	beqz	s1,24d0 <func_808D4790+0x3b0>
    24a8:	02602025 	move	a0,s3
    24ac:	0c000000 	jal	0 <func_808D2670>
    24b0:	02a02825 	move	a1,s5
    24b4:	240f000a 	li	t7,10
    24b8:	24180064 	li	t8,100
    24bc:	a66f01a6 	sh	t7,422(s3)
    24c0:	a67801aa 	sh	t8,426(s3)
    24c4:	02602025 	move	a0,s3
    24c8:	0c000000 	jal	0 <func_808D2670>
    24cc:	240538d5 	li	a1,14549
    24d0:	1220003f 	beqz	s1,25d0 <func_808D4790+0x4b0>
    24d4:	00008025 	move	s0,zero
    24d8:	8fb4009c 	lw	s4,156(sp)
    24dc:	3c0140c0 	lui	at,0x40c0
    24e0:	4481a000 	mtc1	at,$f20
    24e4:	27b20058 	addiu	s2,sp,88
    24e8:	27b10064 	addiu	s1,sp,100
    24ec:	26941970 	addiu	s4,s4,6512
    24f0:	3c0e0000 	lui	t6,0x0
    24f4:	25ce0000 	addiu	t6,t6,0
    24f8:	8dc90000 	lw	t1,0(t6)
    24fc:	3c0a0000 	lui	t2,0x0
    2500:	254a0000 	addiu	t2,t2,0
    2504:	ae290000 	sw	t1,0(s1)
    2508:	8dd90004 	lw	t9,4(t6)
    250c:	4600a306 	mov.s	$f12,$f20
    2510:	ae390004 	sw	t9,4(s1)
    2514:	8dc90008 	lw	t1,8(t6)
    2518:	ae290008 	sw	t1,8(s1)
    251c:	8d4b0000 	lw	t3,0(t2)
    2520:	ae4b0000 	sw	t3,0(s2)
    2524:	8d4c0004 	lw	t4,4(t2)
    2528:	ae4c0004 	sw	t4,4(s2)
    252c:	8d4b0008 	lw	t3,8(t2)
    2530:	0c000000 	jal	0 <func_808D2670>
    2534:	ae4b0008 	sw	t3,8(s2)
    2538:	3c014080 	lui	at,0x4080
    253c:	44816000 	mtc1	at,$f12
    2540:	0c000000 	jal	0 <func_808D2670>
    2544:	e7a00064 	swc1	$f0,100(sp)
    2548:	46140200 	add.s	$f8,$f0,$f20
    254c:	4600a306 	mov.s	$f12,$f20
    2550:	0c000000 	jal	0 <func_808D2670>
    2554:	e7a80068 	swc1	$f8,104(sp)
    2558:	e7a0006c 	swc1	$f0,108(sp)
    255c:	c66a0038 	lwc1	$f10,56(s3)
    2560:	4600a306 	mov.s	$f12,$f20
    2564:	e7aa004c 	swc1	$f10,76(sp)
    2568:	c670003c 	lwc1	$f16,60(s3)
    256c:	e7b00050 	swc1	$f16,80(sp)
    2570:	c6720040 	lwc1	$f18,64(s3)
    2574:	0c000000 	jal	0 <func_808D2670>
    2578:	e7b20054 	swc1	$f18,84(sp)
    257c:	4600010d 	trunc.w.s	$f4,$f0
    2580:	02a02025 	move	a0,s5
    2584:	02802825 	move	a1,s4
    2588:	27a6004c 	addiu	a2,sp,76
    258c:	44082000 	mfc1	t0,$f4
    2590:	02203825 	move	a3,s1
    2594:	afb20010 	sw	s2,16(sp)
    2598:	00087c00 	sll	t7,t0,0x10
    259c:	000fc403 	sra	t8,t7,0x10
    25a0:	270e000a 	addiu	t6,t8,10
    25a4:	448e3000 	mtc1	t6,$f6
    25a8:	00000000 	nop
    25ac:	46803220 	cvt.s.w	$f8,$f6
    25b0:	0c000000 	jal	0 <func_808D2670>
    25b4:	e7a80014 	swc1	$f8,20(sp)
    25b8:	26100001 	addiu	s0,s0,1
    25bc:	00108400 	sll	s0,s0,0x10
    25c0:	00108403 	sra	s0,s0,0x10
    25c4:	2a01001e 	slti	at,s0,30
    25c8:	1420ffc9 	bnez	at,24f0 <func_808D4790+0x3d0>
    25cc:	00000000 	nop
    25d0:	8fbf003c 	lw	ra,60(sp)
    25d4:	d7b40018 	ldc1	$f20,24(sp)
    25d8:	8fb00024 	lw	s0,36(sp)
    25dc:	8fb10028 	lw	s1,40(sp)
    25e0:	8fb2002c 	lw	s2,44(sp)
    25e4:	8fb30030 	lw	s3,48(sp)
    25e8:	8fb40034 	lw	s4,52(sp)
    25ec:	8fb50038 	lw	s5,56(sp)
    25f0:	03e00008 	jr	ra
    25f4:	27bd00a8 	addiu	sp,sp,168

000025f8 <func_808D4C68>:
    25f8:	27bdffc8 	addiu	sp,sp,-56
    25fc:	3c0f0000 	lui	t7,0x0
    2600:	afbf001c 	sw	ra,28(sp)
    2604:	afb00018 	sw	s0,24(sp)
    2608:	afa5003c 	sw	a1,60(sp)
    260c:	25ef0000 	addiu	t7,t7,0
    2610:	8df90000 	lw	t9,0(t7)
    2614:	27ae0024 	addiu	t6,sp,36
    2618:	8df80004 	lw	t8,4(t7)
    261c:	add90000 	sw	t9,0(t6)
    2620:	95f90008 	lhu	t9,8(t7)
    2624:	add80004 	sw	t8,4(t6)
    2628:	00808025 	move	s0,a0
    262c:	a5d90008 	sh	t9,8(t6)
    2630:	8488019c 	lh	t0,412(a0)
    2634:	31090007 	andi	t1,t0,0x7
    2638:	5520000c 	bnezl	t1,266c <func_808D4C68+0x74>
    263c:	8e020190 	lw	v0,400(s0)
    2640:	0c000000 	jal	0 <func_808D2670>
    2644:	00000000 	nop
    2648:	3c010000 	lui	at,0x0
    264c:	c4240000 	lwc1	$f4,0(at)
    2650:	240a0004 	li	t2,4
    2654:	4604003c 	c.lt.s	$f0,$f4
    2658:	00000000 	nop
    265c:	45020003 	bc1fl	266c <func_808D4C68+0x74>
    2660:	8e020190 	lw	v0,400(s0)
    2664:	a60a01a2 	sh	t2,418(s0)
    2668:	8e020190 	lw	v0,400(s0)
    266c:	3c0b0000 	lui	t3,0x0
    2670:	256b0000 	addiu	t3,t3,0
    2674:	11620005 	beq	t3,v0,268c <func_808D4C68+0x94>
    2678:	2604138c 	addiu	a0,s0,5004
    267c:	3c0c0000 	lui	t4,0x0
    2680:	258c0000 	addiu	t4,t4,0
    2684:	5582000d 	bnel	t4,v0,26bc <func_808D4C68+0xc4>
    2688:	860201a2 	lh	v0,418(s0)
    268c:	860d019c 	lh	t5,412(s0)
    2690:	240f0001 	li	t7,1
    2694:	24180002 	li	t8,2
    2698:	31ae0010 	andi	t6,t5,0x10
    269c:	51c00004 	beqzl	t6,26b0 <func_808D4C68+0xb8>
    26a0:	a2180223 	sb	t8,547(s0)
    26a4:	10000002 	b	26b0 <func_808D4C68+0xb8>
    26a8:	a20f0223 	sb	t7,547(s0)
    26ac:	a2180223 	sb	t8,547(s0)
    26b0:	10000006 	b	26cc <func_808D4C68+0xd4>
    26b4:	860201a2 	lh	v0,418(s0)
    26b8:	860201a2 	lh	v0,418(s0)
    26bc:	0002c840 	sll	t9,v0,0x1
    26c0:	03b94021 	addu	t0,sp,t9
    26c4:	85080024 	lh	t0,36(t0)
    26c8:	a2080223 	sb	t0,547(s0)
    26cc:	10400003 	beqz	v0,26dc <func_808D4C68+0xe4>
    26d0:	3c063e99 	lui	a2,0x3e99
    26d4:	2449ffff 	addiu	t1,v0,-1
    26d8:	a60901a2 	sh	t1,418(s0)
    26dc:	860a01a4 	lh	t2,420(s0)
    26e0:	3c010000 	lui	at,0x0
    26e4:	51400006 	beqzl	t2,2700 <func_808D4C68+0x108>
    26e8:	860b019c 	lh	t3,412(s0)
    26ec:	c4200000 	lwc1	$f0,0(at)
    26f0:	3c010000 	lui	at,0x0
    26f4:	1000000e 	b	2730 <func_808D4C68+0x138>
    26f8:	c4220000 	lwc1	$f2,0(at)
    26fc:	860b019c 	lh	t3,412(s0)
    2700:	3c01447a 	lui	at,0x447a
    2704:	316c0010 	andi	t4,t3,0x10
    2708:	51800005 	beqzl	t4,2720 <func_808D4C68+0x128>
    270c:	44800000 	mtc1	zero,$f0
    2710:	44810000 	mtc1	at,$f0
    2714:	10000004 	b	2728 <func_808D4C68+0x130>
    2718:	3c01442f 	lui	at,0x442f
    271c:	44800000 	mtc1	zero,$f0
    2720:	00000000 	nop
    2724:	3c01442f 	lui	at,0x442f
    2728:	44811000 	mtc1	at,$f2
    272c:	00000000 	nop
    2730:	44050000 	mfc1	a1,$f0
    2734:	44071000 	mfc1	a3,$f2
    2738:	0c000000 	jal	0 <func_808D2670>
    273c:	34c6999a 	ori	a2,a2,0x999a
    2740:	860201a4 	lh	v0,420(s0)
    2744:	10400002 	beqz	v0,2750 <func_808D4C68+0x158>
    2748:	244dffff 	addiu	t5,v0,-1
    274c:	a60d01a4 	sh	t5,420(s0)
    2750:	8fbf001c 	lw	ra,28(sp)
    2754:	8fb00018 	lw	s0,24(sp)
    2758:	27bd0038 	addiu	sp,sp,56
    275c:	03e00008 	jr	ra
    2760:	00000000 	nop

00002764 <BossFd2_Update>:
    2764:	27bdffc8 	addiu	sp,sp,-56
    2768:	afb00014 	sw	s0,20(sp)
    276c:	00808025 	move	s0,a0
    2770:	afbf001c 	sw	ra,28(sp)
    2774:	afb10018 	sw	s1,24(sp)
    2778:	3c040000 	lui	a0,0x0
    277c:	00a08825 	move	s1,a1
    2780:	0c000000 	jal	0 <func_808D2670>
    2784:	24840000 	addiu	a0,a0,0
    2788:	8618019c 	lh	t8,412(s0)
    278c:	8e0e0004 	lw	t6,4(s0)
    2790:	8608019a 	lh	t0,410(s0)
    2794:	27190001 	addiu	t9,t8,1
    2798:	a619019c 	sh	t9,412(s0)
    279c:	8e190190 	lw	t9,400(s0)
    27a0:	2401fbff 	li	at,-1025
    27a4:	01c17824 	and	t7,t6,at
    27a8:	25090001 	addiu	t1,t0,1
    27ac:	a2000194 	sb	zero,404(s0)
    27b0:	ae0f0004 	sw	t7,4(s0)
    27b4:	a609019a 	sh	t1,410(s0)
    27b8:	02002025 	move	a0,s0
    27bc:	0320f809 	jalr	t9
    27c0:	02202825 	move	a1,s1
    27c4:	00001025 	move	v0,zero
    27c8:	00025040 	sll	t2,v0,0x1
    27cc:	020a1821 	addu	v1,s0,t2
    27d0:	846401bc 	lh	a0,444(v1)
    27d4:	24420001 	addiu	v0,v0,1
    27d8:	00021400 	sll	v0,v0,0x10
    27dc:	10800003 	beqz	a0,27ec <BossFd2_Update+0x88>
    27e0:	00021403 	sra	v0,v0,0x10
    27e4:	248bffff 	addiu	t3,a0,-1
    27e8:	a46b01bc 	sh	t3,444(v1)
    27ec:	28410005 	slti	at,v0,5
    27f0:	5420fff6 	bnezl	at,27cc <BossFd2_Update+0x68>
    27f4:	00025040 	sll	t2,v0,0x1
    27f8:	860201a6 	lh	v0,422(s0)
    27fc:	10400002 	beqz	v0,2808 <BossFd2_Update+0xa4>
    2800:	244cffff 	addiu	t4,v0,-1
    2804:	a60c01a6 	sh	t4,422(s0)
    2808:	860201aa 	lh	v0,426(s0)
    280c:	10400002 	beqz	v0,2818 <BossFd2_Update+0xb4>
    2810:	244dffff 	addiu	t5,v0,-1
    2814:	a60d01aa 	sh	t5,426(s0)
    2818:	860e1390 	lh	t6,5008(s0)
    281c:	55c0001b 	bnezl	t6,288c <BossFd2_Update+0x128>
    2820:	02002025 	move	a0,s0
    2824:	860f01aa 	lh	t7,426(s0)
    2828:	02002025 	move	a0,s0
    282c:	55e00004 	bnezl	t7,2840 <BossFd2_Update+0xdc>
    2830:	3c010001 	lui	at,0x1
    2834:	0c000000 	jal	0 <func_808D2670>
    2838:	02202825 	move	a1,s1
    283c:	3c010001 	lui	at,0x1
    2840:	34211e60 	ori	at,at,0x1e60
    2844:	02212821 	addu	a1,s1,at
    2848:	2606141c 	addiu	a2,s0,5148
    284c:	afa60024 	sw	a2,36(sp)
    2850:	afa50028 	sw	a1,40(sp)
    2854:	0c000000 	jal	0 <func_808D2670>
    2858:	02202025 	move	a0,s1
    285c:	02202025 	move	a0,s1
    2860:	8fa50028 	lw	a1,40(sp)
    2864:	0c000000 	jal	0 <func_808D2670>
    2868:	8fa60024 	lw	a2,36(sp)
    286c:	92180194 	lbu	t8,404(s0)
    2870:	02202025 	move	a0,s1
    2874:	8fa50028 	lw	a1,40(sp)
    2878:	57000004 	bnezl	t8,288c <BossFd2_Update+0x128>
    287c:	02002025 	move	a0,s0
    2880:	0c000000 	jal	0 <func_808D2670>
    2884:	8fa60024 	lw	a2,36(sp)
    2888:	02002025 	move	a0,s0
    288c:	0c000000 	jal	0 <func_808D2670>
    2890:	02202825 	move	a1,s1
    2894:	3c014080 	lui	at,0x4080
    2898:	44813000 	mtc1	at,$f6
    289c:	c60401c8 	lwc1	$f4,456(s0)
    28a0:	3c0142f0 	lui	at,0x42f0
    28a4:	44815000 	mtc1	at,$f10
    28a8:	46062200 	add.s	$f8,$f4,$f6
    28ac:	3c014040 	lui	at,0x4040
    28b0:	44819000 	mtc1	at,$f18
    28b4:	c61001d0 	lwc1	$f16,464(s0)
    28b8:	e60801c8 	swc1	$f8,456(s0)
    28bc:	3c014000 	lui	at,0x4000
    28c0:	46128100 	add.s	$f4,$f16,$f18
    28c4:	44814000 	mtc1	at,$f8
    28c8:	3c0142b4 	lui	at,0x42b4
    28cc:	44819000 	mtc1	at,$f18
    28d0:	c610003c 	lwc1	$f16,60(s0)
    28d4:	c60601d4 	lwc1	$f6,468(s0)
    28d8:	e60a01cc 	swc1	$f10,460(s0)
    28dc:	4612803c 	c.lt.s	$f16,$f18
    28e0:	e60401d0 	swc1	$f4,464(s0)
    28e4:	46083281 	sub.s	$f10,$f6,$f8
    28e8:	45000006 	bc1f	2904 <BossFd2_Update+0x1a0>
    28ec:	e60a01d4 	swc1	$f10,468(s0)
    28f0:	8e080004 	lw	t0,4(s0)
    28f4:	2401fffe 	li	at,-2
    28f8:	01014824 	and	t1,t0,at
    28fc:	10000004 	b	2910 <BossFd2_Update+0x1ac>
    2900:	ae090004 	sw	t1,4(s0)
    2904:	8e190004 	lw	t9,4(s0)
    2908:	372a0001 	ori	t2,t9,0x1
    290c:	ae0a0004 	sw	t2,4(s0)
    2910:	8fbf001c 	lw	ra,28(sp)
    2914:	8fb00014 	lw	s0,20(sp)
    2918:	8fb10018 	lw	s1,24(sp)
    291c:	03e00008 	jr	ra
    2920:	27bd0038 	addiu	sp,sp,56

00002924 <func_808D4F94>:
    2924:	27bdff98 	addiu	sp,sp,-104
    2928:	afa70074 	sw	a3,116(sp)
    292c:	8fa7007c 	lw	a3,124(sp)
    2930:	afbf001c 	sw	ra,28(sp)
    2934:	afb00018 	sw	s0,24(sp)
    2938:	afa40068 	sw	a0,104(sp)
    293c:	afa60070 	sw	a2,112(sp)
    2940:	2401001f 	li	at,31
    2944:	00a08025 	move	s0,a1
    2948:	14a1001a 	bne	a1,at,29b4 <func_808D4F94+0x90>
    294c:	8ce90118 	lw	t1,280(a3)
    2950:	8fa20078 	lw	v0,120(sp)
    2954:	84ef021e 	lh	t7,542(a3)
    2958:	844e0002 	lh	t6,2(v0)
    295c:	448f4000 	mtc1	t7,$f8
    2960:	844a0004 	lh	t2,4(v0)
    2964:	448e2000 	mtc1	t6,$f4
    2968:	468042a0 	cvt.s.w	$f10,$f8
    296c:	468021a0 	cvt.s.w	$f6,$f4
    2970:	448a2000 	mtc1	t2,$f4
    2974:	00000000 	nop
    2978:	46802220 	cvt.s.w	$f8,$f4
    297c:	460a3401 	sub.s	$f16,$f6,$f10
    2980:	4600848d 	trunc.w.s	$f18,$f16
    2984:	44199000 	mfc1	t9,$f18
    2988:	00000000 	nop
    298c:	a4590002 	sh	t9,2(v0)
    2990:	84eb021c 	lh	t3,540(a3)
    2994:	448b3000 	mtc1	t3,$f6
    2998:	00000000 	nop
    299c:	468032a0 	cvt.s.w	$f10,$f6
    29a0:	460a4400 	add.s	$f16,$f8,$f10
    29a4:	4600848d 	trunc.w.s	$f18,$f16
    29a8:	440d9000 	mfc1	t5,$f18
    29ac:	00000000 	nop
    29b0:	a44d0004 	sh	t5,4(v0)
    29b4:	24030020 	li	v1,32
    29b8:	12030012 	beq	s0,v1,2a04 <func_808D4F94+0xe0>
    29bc:	8fa20078 	lw	v0,120(sp)
    29c0:	24040023 	li	a0,35
    29c4:	12040003 	beq	s0,a0,29d4 <func_808D4F94+0xb0>
    29c8:	24010024 	li	at,36
    29cc:	56010019 	bnel	s0,at,2a34 <func_808D4F94+0x110>
    29d0:	912c02d7 	lbu	t4,727(t1)
    29d4:	844e0004 	lh	t6,4(v0)
    29d8:	3c010000 	lui	at,0x0
    29dc:	c4260000 	lwc1	$f6,0(at)
    29e0:	c4e4138c 	lwc1	$f4,5004(a3)
    29e4:	448e5000 	mtc1	t6,$f10
    29e8:	46062202 	mul.s	$f8,$f4,$f6
    29ec:	46805420 	cvt.s.w	$f16,$f10
    29f0:	46088481 	sub.s	$f18,$f16,$f8
    29f4:	4600910d 	trunc.w.s	$f4,$f18
    29f8:	44182000 	mfc1	t8,$f4
    29fc:	1000000c 	b	2a30 <func_808D4F94+0x10c>
    2a00:	a4580004 	sh	t8,4(v0)
    2a04:	84590004 	lh	t9,4(v0)
    2a08:	c4f0138c 	lwc1	$f16,5004(a3)
    2a0c:	24040023 	li	a0,35
    2a10:	44993000 	mtc1	t9,$f6
    2a14:	00000000 	nop
    2a18:	468032a0 	cvt.s.w	$f10,$f6
    2a1c:	46105200 	add.s	$f8,$f10,$f16
    2a20:	4600448d 	trunc.w.s	$f18,$f8
    2a24:	440b9000 	mfc1	t3,$f18
    2a28:	00000000 	nop
    2a2c:	a44b0004 	sh	t3,4(v0)
    2a30:	912c02d7 	lbu	t4,727(t1)
    2a34:	24010001 	li	at,1
    2a38:	3c060000 	lui	a2,0x0
    2a3c:	15810006 	bne	t4,at,2a58 <func_808D4F94+0x134>
    2a40:	24c60000 	addiu	a2,a2,0
    2a44:	16040004 	bne	s0,a0,2a58 <func_808D4F94+0x134>
    2a48:	8fae0070 	lw	t6,112(sp)
    2a4c:	3c0d0600 	lui	t5,0x600
    2a50:	25ad4e38 	addiu	t5,t5,20024
    2a54:	adcd0000 	sw	t5,0(t6)
    2a58:	12030005 	beq	s0,v1,2a70 <func_808D4F94+0x14c>
    2a5c:	8faf0068 	lw	t7,104(sp)
    2a60:	12040003 	beq	s0,a0,2a70 <func_808D4F94+0x14c>
    2a64:	24010024 	li	at,36
    2a68:	16010025 	bne	s0,at,2b00 <func_808D4F94+0x1dc>
    2a6c:	8fab0068 	lw	t3,104(sp)
    2a70:	8de50000 	lw	a1,0(t7)
    2a74:	afa90060 	sw	t1,96(sp)
    2a78:	27a4004c 	addiu	a0,sp,76
    2a7c:	24070875 	li	a3,2165
    2a80:	0c000000 	jal	0 <func_808D2670>
    2a84:	afa5005c 	sw	a1,92(sp)
    2a88:	8fa8005c 	lw	t0,92(sp)
    2a8c:	8fa90060 	lw	t1,96(sp)
    2a90:	3c19e700 	lui	t9,0xe700
    2a94:	8d0302c0 	lw	v1,704(t0)
    2a98:	3c0bfb00 	lui	t3,0xfb00
    2a9c:	2401ff00 	li	at,-256
    2aa0:	24780008 	addiu	t8,v1,8
    2aa4:	ad1802c0 	sw	t8,704(t0)
    2aa8:	ac600004 	sw	zero,4(v1)
    2aac:	ac790000 	sw	t9,0(v1)
    2ab0:	8d0302c0 	lw	v1,704(t0)
    2ab4:	3c060000 	lui	a2,0x0
    2ab8:	24c60000 	addiu	a2,a2,0
    2abc:	246a0008 	addiu	t2,v1,8
    2ac0:	ad0a02c0 	sw	t2,704(t0)
    2ac4:	ac6b0000 	sw	t3,0(v1)
    2ac8:	c5240274 	lwc1	$f4,628(t1)
    2acc:	27a4004c 	addiu	a0,sp,76
    2ad0:	2407087c 	li	a3,2172
    2ad4:	4600218d 	trunc.w.s	$f6,$f4
    2ad8:	440f3000 	mfc1	t7,$f6
    2adc:	00000000 	nop
    2ae0:	31f800ff 	andi	t8,t7,0xff
    2ae4:	0301c825 	or	t9,t8,at
    2ae8:	ac790004 	sw	t9,4(v1)
    2aec:	8faa0068 	lw	t2,104(sp)
    2af0:	0c000000 	jal	0 <func_808D2670>
    2af4:	8d450000 	lw	a1,0(t2)
    2af8:	10000025 	b	2b90 <func_808D4F94+0x26c>
    2afc:	00000000 	nop
    2b00:	8d650000 	lw	a1,0(t3)
    2b04:	3c060000 	lui	a2,0x0
    2b08:	24c60000 	addiu	a2,a2,0
    2b0c:	afa90060 	sw	t1,96(sp)
    2b10:	27a40030 	addiu	a0,sp,48
    2b14:	2407087e 	li	a3,2174
    2b18:	0c000000 	jal	0 <func_808D2670>
    2b1c:	afa50040 	sw	a1,64(sp)
    2b20:	8fa80040 	lw	t0,64(sp)
    2b24:	8fa90060 	lw	t1,96(sp)
    2b28:	3c0de700 	lui	t5,0xe700
    2b2c:	8d0302c0 	lw	v1,704(t0)
    2b30:	3c0ffb00 	lui	t7,0xfb00
    2b34:	2401ff00 	li	at,-256
    2b38:	246c0008 	addiu	t4,v1,8
    2b3c:	ad0c02c0 	sw	t4,704(t0)
    2b40:	ac600004 	sw	zero,4(v1)
    2b44:	ac6d0000 	sw	t5,0(v1)
    2b48:	8d0302c0 	lw	v1,704(t0)
    2b4c:	3c060000 	lui	a2,0x0
    2b50:	24c60000 	addiu	a2,a2,0
    2b54:	246e0008 	addiu	t6,v1,8
    2b58:	ad0e02c0 	sw	t6,704(t0)
    2b5c:	ac6f0000 	sw	t7,0(v1)
    2b60:	c52a0270 	lwc1	$f10,624(t1)
    2b64:	27a40030 	addiu	a0,sp,48
    2b68:	24070885 	li	a3,2181
    2b6c:	4600540d 	trunc.w.s	$f16,$f10
    2b70:	440b8000 	mfc1	t3,$f16
    2b74:	00000000 	nop
    2b78:	316c00ff 	andi	t4,t3,0xff
    2b7c:	01816825 	or	t5,t4,at
    2b80:	ac6d0004 	sw	t5,4(v1)
    2b84:	8fae0068 	lw	t6,104(sp)
    2b88:	0c000000 	jal	0 <func_808D2670>
    2b8c:	8dc50000 	lw	a1,0(t6)
    2b90:	1a000004 	blez	s0,2ba4 <func_808D4F94+0x280>
    2b94:	2a010010 	slti	at,s0,16
    2b98:	10200002 	beqz	at,2ba4 <func_808D4F94+0x280>
    2b9c:	8faf0070 	lw	t7,112(sp)
    2ba0:	ade00000 	sw	zero,0(t7)
    2ba4:	8fbf001c 	lw	ra,28(sp)
    2ba8:	8fb00018 	lw	s0,24(sp)
    2bac:	27bd0068 	addiu	sp,sp,104
    2bb0:	03e00008 	jr	ra
    2bb4:	00001025 	move	v0,zero

00002bb8 <func_808D5228>:
    2bb8:	27bdffe8 	addiu	sp,sp,-24
    2bbc:	24010023 	li	at,35
    2bc0:	afbf0014 	sw	ra,20(sp)
    2bc4:	afa40018 	sw	a0,24(sp)
    2bc8:	afa5001c 	sw	a1,28(sp)
    2bcc:	afa60020 	sw	a2,32(sp)
    2bd0:	14a1001a 	bne	a1,at,2c3c <func_808D5228+0x84>
    2bd4:	afa70024 	sw	a3,36(sp)
    2bd8:	8fa50028 	lw	a1,40(sp)
    2bdc:	3c040000 	lui	a0,0x0
    2be0:	24840000 	addiu	a0,a0,0
    2be4:	0c000000 	jal	0 <func_808D2670>
    2be8:	24a50038 	addiu	a1,a1,56
    2bec:	8fa50028 	lw	a1,40(sp)
    2bf0:	3c040000 	lui	a0,0x0
    2bf4:	24840000 	addiu	a0,a0,0
    2bf8:	0c000000 	jal	0 <func_808D2670>
    2bfc:	24a50210 	addiu	a1,a1,528
    2c00:	8fa50028 	lw	a1,40(sp)
    2c04:	3c040000 	lui	a0,0x0
    2c08:	24840000 	addiu	a0,a0,0
    2c0c:	0c000000 	jal	0 <func_808D2670>
    2c10:	24a51044 	addiu	a1,a1,4164
    2c14:	8fa50028 	lw	a1,40(sp)
    2c18:	3c040000 	lui	a0,0x0
    2c1c:	24840000 	addiu	a0,a0,0
    2c20:	0c000000 	jal	0 <func_808D2670>
    2c24:	24a511e0 	addiu	a1,a1,4576
    2c28:	8fa50028 	lw	a1,40(sp)
    2c2c:	3c040000 	lui	a0,0x0
    2c30:	24840000 	addiu	a0,a0,0
    2c34:	0c000000 	jal	0 <func_808D2670>
    2c38:	24a5137c 	addiu	a1,a1,4988
    2c3c:	8fa50028 	lw	a1,40(sp)
    2c40:	8fa4001c 	lw	a0,28(sp)
    2c44:	0c000000 	jal	0 <func_808D2670>
    2c48:	24a5141c 	addiu	a1,a1,5148
    2c4c:	8fbf0014 	lw	ra,20(sp)
    2c50:	27bd0018 	addiu	sp,sp,24
    2c54:	03e00008 	jr	ra
    2c58:	00000000 	nop

00002c5c <func_808D52CC>:
    2c5c:	27bdfea0 	addiu	sp,sp,-352
    2c60:	3c0f0000 	lui	t7,0x0
    2c64:	afb60060 	sw	s6,96(sp)
    2c68:	25ef0000 	addiu	t7,t7,0
    2c6c:	00c0b025 	move	s6,a2
    2c70:	afbf006c 	sw	ra,108(sp)
    2c74:	afbe0068 	sw	s8,104(sp)
    2c78:	afb70064 	sw	s7,100(sp)
    2c7c:	afb5005c 	sw	s5,92(sp)
    2c80:	afb40058 	sw	s4,88(sp)
    2c84:	afb30054 	sw	s3,84(sp)
    2c88:	afb20050 	sw	s2,80(sp)
    2c8c:	afb1004c 	sw	s1,76(sp)
    2c90:	afb00048 	sw	s0,72(sp)
    2c94:	f7be0040 	sdc1	$f30,64(sp)
    2c98:	f7bc0038 	sdc1	$f28,56(sp)
    2c9c:	f7ba0030 	sdc1	$f26,48(sp)
    2ca0:	f7b80028 	sdc1	$f24,40(sp)
    2ca4:	f7b60020 	sdc1	$f22,32(sp)
    2ca8:	f7b40018 	sdc1	$f20,24(sp)
    2cac:	afa40160 	sw	a0,352(sp)
    2cb0:	afa50164 	sw	a1,356(sp)
    2cb4:	afa7016c 	sw	a3,364(sp)
    2cb8:	25e80024 	addiu	t0,t7,36
    2cbc:	27ae0138 	addiu	t6,sp,312
    2cc0:	8df90000 	lw	t9,0(t7)
    2cc4:	25ef000c 	addiu	t7,t7,12
    2cc8:	25ce000c 	addiu	t6,t6,12
    2ccc:	add9fff4 	sw	t9,-12(t6)
    2cd0:	8df8fff8 	lw	t8,-8(t7)
    2cd4:	add8fff8 	sw	t8,-8(t6)
    2cd8:	8df9fffc 	lw	t9,-4(t7)
    2cdc:	15e8fff8 	bne	t7,t0,2cc0 <func_808D52CC+0x64>
    2ce0:	add9fffc 	sw	t9,-4(t6)
    2ce4:	8df90000 	lw	t9,0(t7)
    2ce8:	3c0a0000 	lui	t2,0x0
    2cec:	254a0000 	addiu	t2,t2,0
    2cf0:	254d0024 	addiu	t5,t2,36
    2cf4:	27a90110 	addiu	t1,sp,272
    2cf8:	add90000 	sw	t9,0(t6)
    2cfc:	8d4c0000 	lw	t4,0(t2)
    2d00:	254a000c 	addiu	t2,t2,12
    2d04:	2529000c 	addiu	t1,t1,12
    2d08:	ad2cfff4 	sw	t4,-12(t1)
    2d0c:	8d4bfff8 	lw	t3,-8(t2)
    2d10:	ad2bfff8 	sw	t3,-8(t1)
    2d14:	8d4cfffc 	lw	t4,-4(t2)
    2d18:	154dfff8 	bne	t2,t5,2cfc <func_808D52CC+0xa0>
    2d1c:	ad2cfffc 	sw	t4,-4(t1)
    2d20:	8d4c0000 	lw	t4,0(t2)
    2d24:	3c0f0000 	lui	t7,0x0
    2d28:	25ef0000 	addiu	t7,t7,0
    2d2c:	25f90024 	addiu	t9,t7,36
    2d30:	27a800e8 	addiu	t0,sp,232
    2d34:	ad2c0000 	sw	t4,0(t1)
    2d38:	8df80000 	lw	t8,0(t7)
    2d3c:	25ef000c 	addiu	t7,t7,12
    2d40:	2508000c 	addiu	t0,t0,12
    2d44:	ad18fff4 	sw	t8,-12(t0)
    2d48:	8deefff8 	lw	t6,-8(t7)
    2d4c:	ad0efff8 	sw	t6,-8(t0)
    2d50:	8df8fffc 	lw	t8,-4(t7)
    2d54:	15f9fff8 	bne	t7,t9,2d38 <func_808D52CC+0xdc>
    2d58:	ad18fffc 	sw	t8,-4(t0)
    2d5c:	8df80000 	lw	t8,0(t7)
    2d60:	3c060000 	lui	a2,0x0
    2d64:	24c60000 	addiu	a2,a2,0
    2d68:	ad180000 	sw	t8,0(t0)
    2d6c:	8fad0164 	lw	t5,356(sp)
    2d70:	27a40098 	addiu	a0,sp,152
    2d74:	24070955 	li	a3,2389
    2d78:	8da50000 	lw	a1,0(t5)
    2d7c:	0c000000 	jal	0 <func_808D2670>
    2d80:	00a0f025 	move	s8,a1
    2d84:	0c000000 	jal	0 <func_808D2670>
    2d88:	00000000 	nop
    2d8c:	8fc302c0 	lw	v1,704(s8)
    2d90:	3c09e700 	lui	t1,0xe700
    2d94:	3c013f80 	lui	at,0x3f80
    2d98:	246a0008 	addiu	t2,v1,8
    2d9c:	afca02c0 	sw	t2,704(s8)
    2da0:	ac600004 	sw	zero,4(v1)
    2da4:	ac690000 	sw	t1,0(v1)
    2da8:	4481a000 	mtc1	at,$f20
    2dac:	8fa2016c 	lw	v0,364(sp)
    2db0:	0000a825 	move	s5,zero
    2db4:	2417000c 	li	s7,12
    2db8:	16a0000b 	bnez	s5,2de8 <func_808D52CC+0x18c>
    2dbc:	00000000 	nop
    2dc0:	02b70019 	multu	s5,s7
    2dc4:	c6c40000 	lwc1	$f4,0(s6)
    2dc8:	00005812 	mflo	t3
    2dcc:	004b8021 	addu	s0,v0,t3
    2dd0:	e6040000 	swc1	$f4,0(s0)
    2dd4:	c6c60004 	lwc1	$f6,4(s6)
    2dd8:	e6060004 	swc1	$f6,4(s0)
    2ddc:	c6c80008 	lwc1	$f8,8(s6)
    2de0:	10000015 	b	2e38 <func_808D52CC+0x1dc>
    2de4:	e6080008 	swc1	$f8,8(s0)
    2de8:	02b70019 	multu	s5,s7
    2dec:	8fb90174 	lw	t9,372(sp)
    2df0:	4406a000 	mfc1	a2,$f20
    2df4:	4407a000 	mfc1	a3,$f20
    2df8:	24050000 	li	a1,0
    2dfc:	00006012 	mflo	t4
    2e00:	01999021 	addu	s2,t4,t9
    2e04:	0c000000 	jal	0 <func_808D2670>
    2e08:	02402025 	move	a0,s2
    2e0c:	4406a000 	mfc1	a2,$f20
    2e10:	4407a000 	mfc1	a3,$f20
    2e14:	26440004 	addiu	a0,s2,4
    2e18:	0c000000 	jal	0 <func_808D2670>
    2e1c:	24050000 	li	a1,0
    2e20:	4406a000 	mfc1	a2,$f20
    2e24:	4407a000 	mfc1	a3,$f20
    2e28:	26440008 	addiu	a0,s2,8
    2e2c:	0c000000 	jal	0 <func_808D2670>
    2e30:	24050000 	li	a1,0
    2e34:	8fa2016c 	lw	v0,364(sp)
    2e38:	26b50001 	addiu	s5,s5,1
    2e3c:	0015ac00 	sll	s5,s5,0x10
    2e40:	0015ac03 	sra	s5,s5,0x10
    2e44:	2aa1000a 	slti	at,s5,10
    2e48:	1420ffdb 	bnez	at,2db8 <func_808D52CC+0x15c>
    2e4c:	00000000 	nop
    2e50:	3c01c1f0 	lui	at,0xc1f0
    2e54:	4481f000 	mtc1	at,$f30
    2e58:	3c0141f0 	lui	at,0x41f0
    2e5c:	4481e000 	mtc1	at,$f28
    2e60:	24150001 	li	s5,1
    2e64:	02b70019 	multu	s5,s7
    2e68:	8fa2016c 	lw	v0,364(sp)
    2e6c:	8faf0174 	lw	t7,372(sp)
    2e70:	3c014000 	lui	at,0x4000
    2e74:	00159880 	sll	s3,s5,0x2
    2e78:	03b34021 	addu	t0,sp,s3
    2e7c:	03b37021 	addu	t6,sp,s3
    2e80:	0000a012 	mflo	s4
    2e84:	02828021 	addu	s0,s4,v0
    2e88:	01f49021 	addu	s2,t7,s4
    2e8c:	c6520000 	lwc1	$f18,0(s2)
    2e90:	c60a0000 	lwc1	$f10,0(s0)
    2e94:	c606fff4 	lwc1	$f6,-12(s0)
    2e98:	c6080004 	lwc1	$f8,4(s0)
    2e9c:	46125100 	add.s	$f4,$f10,$f18
    2ea0:	c64a0004 	lwc1	$f10,4(s2)
    2ea4:	c610fff8 	lwc1	$f16,-8(s0)
    2ea8:	460a4480 	add.s	$f18,$f8,$f10
    2eac:	c5080138 	lwc1	$f8,312(t0)
    2eb0:	c5ca0110 	lwc1	$f10,272(t6)
    2eb4:	46062581 	sub.s	$f22,$f4,$f6
    2eb8:	44812000 	mtc1	at,$f4
    2ebc:	3c010000 	lui	at,0x0
    2ec0:	46105080 	add.s	$f2,$f10,$f16
    2ec4:	46049181 	sub.s	$f6,$f18,$f4
    2ec8:	46064000 	add.s	$f0,$f8,$f6
    2ecc:	4600103c 	c.lt.s	$f2,$f0
    2ed0:	00000000 	nop
    2ed4:	45020003 	bc1fl	2ee4 <func_808D52CC+0x288>
    2ed8:	c6d20004 	lwc1	$f18,4(s6)
    2edc:	46001006 	mov.s	$f0,$f2
    2ee0:	c6d20004 	lwc1	$f18,4(s6)
    2ee4:	c4240000 	lwc1	$f4,0(at)
    2ee8:	3c0142dc 	lui	at,0x42dc
    2eec:	4612203e 	c.le.s	$f4,$f18
    2ef0:	00000000 	nop
    2ef4:	45020009 	bc1fl	2f1c <func_808D52CC+0x2c0>
    2ef8:	c6080008 	lwc1	$f8,8(s0)
    2efc:	44811000 	mtc1	at,$f2
    2f00:	00000000 	nop
    2f04:	4602003c 	c.lt.s	$f0,$f2
    2f08:	00000000 	nop
    2f0c:	45020003 	bc1fl	2f1c <func_808D52CC+0x2c0>
    2f10:	c6080008 	lwc1	$f8,8(s0)
    2f14:	46001006 	mov.s	$f0,$f2
    2f18:	c6080008 	lwc1	$f8,8(s0)
    2f1c:	c6460008 	lwc1	$f6,8(s2)
    2f20:	c612fffc 	lwc1	$f18,-4(s0)
    2f24:	46100601 	sub.s	$f24,$f0,$f16
    2f28:	4600b386 	mov.s	$f14,$f22
    2f2c:	46064280 	add.s	$f10,$f8,$f6
    2f30:	46125501 	sub.s	$f20,$f10,$f18
    2f34:	0c000000 	jal	0 <func_808D2670>
    2f38:	4600a306 	mov.s	$f12,$f20
    2f3c:	4616b102 	mul.s	$f4,$f22,$f22
    2f40:	46000686 	mov.s	$f26,$f0
    2f44:	4600c386 	mov.s	$f14,$f24
    2f48:	4614a202 	mul.s	$f8,$f20,$f20
    2f4c:	46082000 	add.s	$f0,$f4,$f8
    2f50:	0c000000 	jal	0 <func_808D2670>
    2f54:	46000304 	sqrt.s	$f12,$f0
    2f58:	8fb80170 	lw	t8,368(sp)
    2f5c:	44807000 	mtc1	zero,$f14
    2f60:	46000507 	neg.s	$f20,$f0
    2f64:	03148821 	addu	s1,t8,s4
    2f68:	e63afff8 	swc1	$f26,-8(s1)
    2f6c:	e634fff4 	swc1	$f20,-12(s1)
    2f70:	03b36821 	addu	t5,sp,s3
    2f74:	3c0141c8 	lui	at,0x41c8
    2f78:	e7ae00bc 	swc1	$f14,188(sp)
    2f7c:	e7ae00c0 	swc1	$f14,192(sp)
    2f80:	c5a600e8 	lwc1	$f6,232(t5)
    2f84:	44815000 	mtc1	at,$f10
    2f88:	4600d306 	mov.s	$f12,$f26
    2f8c:	00002825 	move	a1,zero
    2f90:	460a3482 	mul.s	$f18,$f6,$f10
    2f94:	0c000000 	jal	0 <func_808D2670>
    2f98:	e7b200c4 	swc1	$f18,196(sp)
    2f9c:	4600a306 	mov.s	$f12,$f20
    2fa0:	0c000000 	jal	0 <func_808D2670>
    2fa4:	24050001 	li	a1,1
    2fa8:	27a400bc 	addiu	a0,sp,188
    2fac:	0c000000 	jal	0 <func_808D2670>
    2fb0:	27a500b0 	addiu	a1,sp,176
    2fb4:	c604fff4 	lwc1	$f4,-12(s0)
    2fb8:	c7a800b0 	lwc1	$f8,176(sp)
    2fbc:	c6160000 	lwc1	$f22,0(s0)
    2fc0:	c60afff8 	lwc1	$f10,-8(s0)
    2fc4:	46082180 	add.s	$f6,$f4,$f8
    2fc8:	c6180004 	lwc1	$f24,4(s0)
    2fcc:	c608fffc 	lwc1	$f8,-4(s0)
    2fd0:	3c0142b0 	lui	at,0x42b0
    2fd4:	e6060000 	swc1	$f6,0(s0)
    2fd8:	c7b200b4 	lwc1	$f18,180(sp)
    2fdc:	44811000 	mtc1	at,$f2
    2fe0:	3c0142c8 	lui	at,0x42c8
    2fe4:	46125100 	add.s	$f4,$f10,$f18
    2fe8:	c6120000 	lwc1	$f18,0(s0)
    2fec:	44816000 	mtc1	at,$f12
    2ff0:	c6140008 	lwc1	$f20,8(s0)
    2ff4:	e6040004 	swc1	$f4,4(s0)
    2ff8:	46169101 	sub.s	$f4,$f18,$f22
    2ffc:	c7a600b8 	lwc1	$f6,184(sp)
    3000:	26b50001 	addiu	s5,s5,1
    3004:	0015ac00 	sll	s5,s5,0x10
    3008:	46064280 	add.s	$f10,$f8,$f6
    300c:	46022202 	mul.s	$f8,$f4,$f2
    3010:	0015ac03 	sra	s5,s5,0x10
    3014:	2aa1000a 	slti	at,s5,10
    3018:	e60a0008 	swc1	$f10,8(s0)
    301c:	460c4183 	div.s	$f6,$f8,$f12
    3020:	e6460000 	swc1	$f6,0(s2)
    3024:	c60a0004 	lwc1	$f10,4(s0)
    3028:	c6400000 	lwc1	$f0,0(s2)
    302c:	46185481 	sub.s	$f18,$f10,$f24
    3030:	4600e03c 	c.lt.s	$f28,$f0
    3034:	46029102 	mul.s	$f4,$f18,$f2
    3038:	460c2203 	div.s	$f8,$f4,$f12
    303c:	e6480004 	swc1	$f8,4(s2)
    3040:	c6060008 	lwc1	$f6,8(s0)
    3044:	46143281 	sub.s	$f10,$f6,$f20
    3048:	46025482 	mul.s	$f18,$f10,$f2
    304c:	460c9103 	div.s	$f4,$f18,$f12
    3050:	45000003 	bc1f	3060 <func_808D52CC+0x404>
    3054:	e6440008 	swc1	$f4,8(s2)
    3058:	e65c0000 	swc1	$f28,0(s2)
    305c:	c6400000 	lwc1	$f0,0(s2)
    3060:	461e003c 	c.lt.s	$f0,$f30
    3064:	00000000 	nop
    3068:	45020003 	bc1fl	3078 <func_808D52CC+0x41c>
    306c:	c6400004 	lwc1	$f0,4(s2)
    3070:	e65e0000 	swc1	$f30,0(s2)
    3074:	c6400004 	lwc1	$f0,4(s2)
    3078:	4600e03c 	c.lt.s	$f28,$f0
    307c:	00000000 	nop
    3080:	45020004 	bc1fl	3094 <func_808D52CC+0x438>
    3084:	461e003c 	c.lt.s	$f0,$f30
    3088:	e65c0004 	swc1	$f28,4(s2)
    308c:	c6400004 	lwc1	$f0,4(s2)
    3090:	461e003c 	c.lt.s	$f0,$f30
    3094:	00000000 	nop
    3098:	45020003 	bc1fl	30a8 <func_808D52CC+0x44c>
    309c:	c6400008 	lwc1	$f0,8(s2)
    30a0:	e65e0004 	swc1	$f30,4(s2)
    30a4:	c6400008 	lwc1	$f0,8(s2)
    30a8:	4600e03c 	c.lt.s	$f28,$f0
    30ac:	00000000 	nop
    30b0:	45020004 	bc1fl	30c4 <func_808D52CC+0x468>
    30b4:	461e003c 	c.lt.s	$f0,$f30
    30b8:	e65c0008 	swc1	$f28,8(s2)
    30bc:	c6400008 	lwc1	$f0,8(s2)
    30c0:	461e003c 	c.lt.s	$f0,$f30
    30c4:	00000000 	nop
    30c8:	45000002 	bc1f	30d4 <func_808D52CC+0x478>
    30cc:	00000000 	nop
    30d0:	e65e0008 	swc1	$f30,8(s2)
    30d4:	1420ff63 	bnez	at,2e64 <func_808D52CC+0x208>
    30d8:	00000000 	nop
    30dc:	3c010000 	lui	at,0x0
    30e0:	c4380000 	lwc1	$f24,0(at)
    30e4:	3c010000 	lui	at,0x0
    30e8:	c4360000 	lwc1	$f22,0(at)
    30ec:	3c010000 	lui	at,0x0
    30f0:	3c120600 	lui	s2,0x600
    30f4:	26524bc8 	addiu	s2,s2,19400
    30f8:	c4340000 	lwc1	$f20,0(at)
    30fc:	0000a825 	move	s5,zero
    3100:	8fb60178 	lw	s6,376(sp)
    3104:	02b70019 	multu	s5,s7
    3108:	8faa016c 	lw	t2,364(sp)
    310c:	00003825 	move	a3,zero
    3110:	0000a012 	mflo	s4
    3114:	028a8021 	addu	s0,s4,t2
    3118:	c60c0000 	lwc1	$f12,0(s0)
    311c:	c60e0004 	lwc1	$f14,4(s0)
    3120:	0c000000 	jal	0 <func_808D2670>
    3124:	8e060008 	lw	a2,8(s0)
    3128:	8fa90170 	lw	t1,368(sp)
    312c:	24050001 	li	a1,1
    3130:	02898821 	addu	s1,s4,t1
    3134:	0c000000 	jal	0 <func_808D2670>
    3138:	c62c0004 	lwc1	$f12,4(s1)
    313c:	c62c0000 	lwc1	$f12,0(s1)
    3140:	0c000000 	jal	0 <func_808D2670>
    3144:	24050001 	li	a1,1
    3148:	44953000 	mtc1	s5,$f6
    314c:	00159880 	sll	s3,s5,0x2
    3150:	03b35821 	addu	t3,sp,s3
    3154:	468032a0 	cvt.s.w	$f10,$f6
    3158:	c56000e8 	lwc1	$f0,232(t3)
    315c:	02d36021 	addu	t4,s6,s3
    3160:	c5880000 	lwc1	$f8,0(t4)
    3164:	24070001 	li	a3,1
    3168:	46165482 	mul.s	$f18,$f10,$f22
    316c:	4612a101 	sub.s	$f4,$f20,$f18
    3170:	46002182 	mul.s	$f6,$f4,$f0
    3174:	00000000 	nop
    3178:	46064302 	mul.s	$f12,$f8,$f6
    317c:	00000000 	nop
    3180:	46140282 	mul.s	$f10,$f0,$f20
    3184:	46006386 	mov.s	$f14,$f12
    3188:	44065000 	mfc1	a2,$f10
    318c:	0c000000 	jal	0 <func_808D2670>
    3190:	00000000 	nop
    3194:	4600c306 	mov.s	$f12,$f24
    3198:	0c000000 	jal	0 <func_808D2670>
    319c:	24050001 	li	a1,1
    31a0:	8fc202d0 	lw	v0,720(s8)
    31a4:	3c0fda38 	lui	t7,0xda38
    31a8:	35ef0003 	ori	t7,t7,0x3
    31ac:	24590008 	addiu	t9,v0,8
    31b0:	afd902d0 	sw	t9,720(s8)
    31b4:	ac4f0000 	sw	t7,0(v0)
    31b8:	8fa80164 	lw	t0,356(sp)
    31bc:	3c050000 	lui	a1,0x0
    31c0:	24a50000 	addiu	a1,a1,0
    31c4:	240609c2 	li	a2,2498
    31c8:	00408025 	move	s0,v0
    31cc:	0c000000 	jal	0 <func_808D2670>
    31d0:	8d040000 	lw	a0,0(t0)
    31d4:	ae020004 	sw	v0,4(s0)
    31d8:	8fc202d0 	lw	v0,720(s8)
    31dc:	26b50001 	addiu	s5,s5,1
    31e0:	0015ac00 	sll	s5,s5,0x10
    31e4:	0015ac03 	sra	s5,s5,0x10
    31e8:	244e0008 	addiu	t6,v0,8
    31ec:	2aa10009 	slti	at,s5,9
    31f0:	afce02d0 	sw	t6,720(s8)
    31f4:	3c18de00 	lui	t8,0xde00
    31f8:	ac580000 	sw	t8,0(v0)
    31fc:	1420ffc1 	bnez	at,3104 <func_808D52CC+0x4a8>
    3200:	ac520004 	sw	s2,4(v0)
    3204:	0c000000 	jal	0 <func_808D2670>
    3208:	00000000 	nop
    320c:	8fad0164 	lw	t5,356(sp)
    3210:	3c060000 	lui	a2,0x0
    3214:	24c60000 	addiu	a2,a2,0
    3218:	27a40098 	addiu	a0,sp,152
    321c:	240709c7 	li	a3,2503
    3220:	0c000000 	jal	0 <func_808D2670>
    3224:	8da50000 	lw	a1,0(t5)
    3228:	8fbf006c 	lw	ra,108(sp)
    322c:	d7b40018 	ldc1	$f20,24(sp)
    3230:	d7b60020 	ldc1	$f22,32(sp)
    3234:	d7b80028 	ldc1	$f24,40(sp)
    3238:	d7ba0030 	ldc1	$f26,48(sp)
    323c:	d7bc0038 	ldc1	$f28,56(sp)
    3240:	d7be0040 	ldc1	$f30,64(sp)
    3244:	8fb00048 	lw	s0,72(sp)
    3248:	8fb1004c 	lw	s1,76(sp)
    324c:	8fb20050 	lw	s2,80(sp)
    3250:	8fb30054 	lw	s3,84(sp)
    3254:	8fb40058 	lw	s4,88(sp)
    3258:	8fb5005c 	lw	s5,92(sp)
    325c:	8fb60060 	lw	s6,96(sp)
    3260:	8fb70064 	lw	s7,100(sp)
    3264:	8fbe0068 	lw	s8,104(sp)
    3268:	03e00008 	jr	ra
    326c:	27bd0160 	addiu	sp,sp,352

00003270 <func_808D58E0>:
    3270:	27bdff58 	addiu	sp,sp,-168
    3274:	afbf006c 	sw	ra,108(sp)
    3278:	afb40068 	sw	s4,104(sp)
    327c:	afb30064 	sw	s3,100(sp)
    3280:	afb20060 	sw	s2,96(sp)
    3284:	afb1005c 	sw	s1,92(sp)
    3288:	afb00058 	sw	s0,88(sp)
    328c:	f7be0050 	sdc1	$f30,80(sp)
    3290:	f7bc0048 	sdc1	$f28,72(sp)
    3294:	f7ba0040 	sdc1	$f26,64(sp)
    3298:	f7b80038 	sdc1	$f24,56(sp)
    329c:	f7b60030 	sdc1	$f22,48(sp)
    32a0:	f7b40028 	sdc1	$f20,40(sp)
    32a4:	afa500ac 	sw	a1,172(sp)
    32a8:	8c8e0118 	lw	t6,280(a0)
    32ac:	00809025 	move	s2,a0
    32b0:	3c060000 	lui	a2,0x0
    32b4:	afae00a0 	sw	t6,160(sp)
    32b8:	8ca50000 	lw	a1,0(a1)
    32bc:	24c60000 	addiu	a2,a2,0
    32c0:	27a40088 	addiu	a0,sp,136
    32c4:	240709d3 	li	a3,2515
    32c8:	0c000000 	jal	0 <func_808D2670>
    32cc:	00a0a025 	move	s4,a1
    32d0:	3c0145b2 	lui	at,0x45b2
    32d4:	4481f000 	mtc1	at,$f30
    32d8:	3c010000 	lui	at,0x0
    32dc:	c43c0000 	lwc1	$f28,0(at)
    32e0:	3c010000 	lui	at,0x0
    32e4:	c43a0000 	lwc1	$f26,0(at)
    32e8:	3c013fc0 	lui	at,0x3fc0
    32ec:	4481c000 	mtc1	at,$f24
    32f0:	3c010000 	lui	at,0x0
    32f4:	c4360000 	lwc1	$f22,0(at)
    32f8:	00008025 	move	s0,zero
    32fc:	24133200 	li	s3,12800
    3300:	02130019 	multu	s0,s3
    3304:	8659019c 	lh	t9,412(s2)
    3308:	44993000 	mtc1	t9,$f6
    330c:	00000000 	nop
    3310:	46803220 	cvt.s.w	$f8,$f6
    3314:	0000c012 	mflo	t8
    3318:	44982000 	mtc1	t8,$f4
    331c:	461a4282 	mul.s	$f10,$f8,$f26
    3320:	46802520 	cvt.s.w	$f20,$f4
    3324:	46145400 	add.s	$f16,$f10,$f20
    3328:	4600848d 	trunc.w.s	$f18,$f16
    332c:	44049000 	mfc1	a0,$f18
    3330:	00000000 	nop
    3334:	00042400 	sll	a0,a0,0x10
    3338:	0c000000 	jal	0 <func_808D2670>
    333c:	00042403 	sra	a0,a0,0x10
    3340:	46160102 	mul.s	$f4,$f0,$f22
    3344:	00104880 	sll	t1,s0,0x2
    3348:	02498821 	addu	s1,s2,t1
    334c:	46182180 	add.s	$f6,$f4,$f24
    3350:	e626101c 	swc1	$f6,4124(s1)
    3354:	864a019c 	lh	t2,412(s2)
    3358:	448a4000 	mtc1	t2,$f8
    335c:	00000000 	nop
    3360:	468042a0 	cvt.s.w	$f10,$f8
    3364:	461c5402 	mul.s	$f16,$f10,$f28
    3368:	46148480 	add.s	$f18,$f16,$f20
    336c:	4600910d 	trunc.w.s	$f4,$f18
    3370:	44042000 	mfc1	a0,$f4
    3374:	00000000 	nop
    3378:	00042400 	sll	a0,a0,0x10
    337c:	0c000000 	jal	0 <func_808D2670>
    3380:	00042403 	sra	a0,a0,0x10
    3384:	46160182 	mul.s	$f6,$f0,$f22
    3388:	46183200 	add.s	$f8,$f6,$f24
    338c:	e62811b8 	swc1	$f8,4536(s1)
    3390:	864c019c 	lh	t4,412(s2)
    3394:	448c5000 	mtc1	t4,$f10
    3398:	00000000 	nop
    339c:	46805420 	cvt.s.w	$f16,$f10
    33a0:	461e8482 	mul.s	$f18,$f16,$f30
    33a4:	46149100 	add.s	$f4,$f18,$f20
    33a8:	4600218d 	trunc.w.s	$f6,$f4
    33ac:	44043000 	mfc1	a0,$f6
    33b0:	00000000 	nop
    33b4:	00042400 	sll	a0,a0,0x10
    33b8:	0c000000 	jal	0 <func_808D2670>
    33bc:	00042403 	sra	a0,a0,0x10
    33c0:	46160202 	mul.s	$f8,$f0,$f22
    33c4:	26100001 	addiu	s0,s0,1
    33c8:	00108400 	sll	s0,s0,0x10
    33cc:	00108403 	sra	s0,s0,0x10
    33d0:	2a01000a 	slti	at,s0,10
    33d4:	46184280 	add.s	$f10,$f8,$f24
    33d8:	1420ffc9 	bnez	at,3300 <func_808D58E0+0x90>
    33dc:	e62a1354 	swc1	$f10,4948(s1)
    33e0:	8fae00ac 	lw	t6,172(sp)
    33e4:	0c000000 	jal	0 <func_808D2670>
    33e8:	8dc40000 	lw	a0,0(t6)
    33ec:	8e8202d0 	lw	v0,720(s4)
    33f0:	3c190600 	lui	t9,0x600
    33f4:	27394b48 	addiu	t9,t9,19272
    33f8:	244f0008 	addiu	t7,v0,8
    33fc:	ae8f02d0 	sw	t7,720(s4)
    3400:	3c18de00 	lui	t8,0xde00
    3404:	ac580000 	sw	t8,0(v0)
    3408:	ac590004 	sw	t9,4(v0)
    340c:	8e8302d0 	lw	v1,720(s4)
    3410:	3c10fa00 	lui	s0,0xfa00
    3414:	444af800 	cfc1	t2,$31
    3418:	24680008 	addiu	t0,v1,8
    341c:	ae8802d0 	sw	t0,720(s4)
    3420:	ac700000 	sw	s0,0(v1)
    3424:	8fa900a0 	lw	t1,160(sp)
    3428:	240b0001 	li	t3,1
    342c:	44cbf800 	ctc1	t3,$31
    3430:	c5300284 	lwc1	$f16,644(t1)
    3434:	3c11ff00 	lui	s1,0xff00
    3438:	3c014f00 	lui	at,0x4f00
    343c:	460084a4 	cvt.w.s	$f18,$f16
    3440:	2648101c 	addiu	t0,s2,4124
    3444:	26590fa4 	addiu	t9,s2,4004
    3448:	26580eb4 	addiu	t8,s2,3764
    344c:	444bf800 	cfc1	t3,$31
    3450:	02402025 	move	a0,s2
    3454:	26461044 	addiu	a2,s2,4164
    3458:	316b0078 	andi	t3,t3,0x78
    345c:	11600012 	beqz	t3,34a8 <func_808D58E0+0x238>
    3460:	26470f2c 	addiu	a3,s2,3884
    3464:	44819000 	mtc1	at,$f18
    3468:	240b0001 	li	t3,1
    346c:	46128481 	sub.s	$f18,$f16,$f18
    3470:	44cbf800 	ctc1	t3,$31
    3474:	00000000 	nop
    3478:	460094a4 	cvt.w.s	$f18,$f18
    347c:	444bf800 	cfc1	t3,$31
    3480:	00000000 	nop
    3484:	316b0078 	andi	t3,t3,0x78
    3488:	15600005 	bnez	t3,34a0 <func_808D58E0+0x230>
    348c:	00000000 	nop
    3490:	440b9000 	mfc1	t3,$f18
    3494:	3c018000 	lui	at,0x8000
    3498:	10000007 	b	34b8 <func_808D58E0+0x248>
    349c:	01615825 	or	t3,t3,at
    34a0:	10000005 	b	34b8 <func_808D58E0+0x248>
    34a4:	240bffff 	li	t3,-1
    34a8:	440b9000 	mfc1	t3,$f18
    34ac:	00000000 	nop
    34b0:	0560fffb 	bltz	t3,34a0 <func_808D58E0+0x230>
    34b4:	00000000 	nop
    34b8:	316c00ff 	andi	t4,t3,0xff
    34bc:	000c6c00 	sll	t5,t4,0x10
    34c0:	01b17025 	or	t6,t5,s1
    34c4:	35cf00ff 	ori	t7,t6,0xff
    34c8:	ac6f0004 	sw	t7,4(v1)
    34cc:	44caf800 	ctc1	t2,$31
    34d0:	afa80018 	sw	t0,24(sp)
    34d4:	afb90014 	sw	t9,20(sp)
    34d8:	afb80010 	sw	t8,16(sp)
    34dc:	0c000000 	jal	0 <func_808D2670>
    34e0:	8fa500ac 	lw	a1,172(sp)
    34e4:	8e8302d0 	lw	v1,720(s4)
    34e8:	444bf800 	cfc1	t3,$31
    34ec:	240c0001 	li	t4,1
    34f0:	24690008 	addiu	t1,v1,8
    34f4:	ae8902d0 	sw	t1,720(s4)
    34f8:	ac700000 	sw	s0,0(v1)
    34fc:	8faa00a0 	lw	t2,160(sp)
    3500:	44ccf800 	ctc1	t4,$31
    3504:	3c014f00 	lui	at,0x4f00
    3508:	c5440288 	lwc1	$f4,648(t2)
    350c:	264911b8 	addiu	t1,s2,4536
    3510:	02402025 	move	a0,s2
    3514:	460021a4 	cvt.w.s	$f6,$f4
    3518:	264611e0 	addiu	a2,s2,4576
    351c:	264710c8 	addiu	a3,s2,4296
    3520:	26591050 	addiu	t9,s2,4176
    3524:	444cf800 	cfc1	t4,$31
    3528:	26481140 	addiu	t0,s2,4416
    352c:	318c0078 	andi	t4,t4,0x78
    3530:	51800013 	beqzl	t4,3580 <func_808D58E0+0x310>
    3534:	440c3000 	mfc1	t4,$f6
    3538:	44813000 	mtc1	at,$f6
    353c:	240c0001 	li	t4,1
    3540:	46062181 	sub.s	$f6,$f4,$f6
    3544:	44ccf800 	ctc1	t4,$31
    3548:	00000000 	nop
    354c:	460031a4 	cvt.w.s	$f6,$f6
    3550:	444cf800 	cfc1	t4,$31
    3554:	00000000 	nop
    3558:	318c0078 	andi	t4,t4,0x78
    355c:	15800005 	bnez	t4,3574 <func_808D58E0+0x304>
    3560:	00000000 	nop
    3564:	440c3000 	mfc1	t4,$f6
    3568:	3c018000 	lui	at,0x8000
    356c:	10000007 	b	358c <func_808D58E0+0x31c>
    3570:	01816025 	or	t4,t4,at
    3574:	10000005 	b	358c <func_808D58E0+0x31c>
    3578:	240cffff 	li	t4,-1
    357c:	440c3000 	mfc1	t4,$f6
    3580:	00000000 	nop
    3584:	0580fffb 	bltz	t4,3574 <func_808D58E0+0x304>
    3588:	00000000 	nop
    358c:	318d00ff 	andi	t5,t4,0xff
    3590:	000d7400 	sll	t6,t5,0x10
    3594:	01d17825 	or	t7,t6,s1
    3598:	35f800ff 	ori	t8,t7,0xff
    359c:	ac780004 	sw	t8,4(v1)
    35a0:	44cbf800 	ctc1	t3,$31
    35a4:	afa90018 	sw	t1,24(sp)
    35a8:	afa80014 	sw	t0,20(sp)
    35ac:	afb90010 	sw	t9,16(sp)
    35b0:	0c000000 	jal	0 <func_808D2670>
    35b4:	8fa500ac 	lw	a1,172(sp)
    35b8:	8e8302d0 	lw	v1,720(s4)
    35bc:	444cf800 	cfc1	t4,$31
    35c0:	240d0001 	li	t5,1
    35c4:	246a0008 	addiu	t2,v1,8
    35c8:	ae8a02d0 	sw	t2,720(s4)
    35cc:	ac700000 	sw	s0,0(v1)
    35d0:	8fab00a0 	lw	t3,160(sp)
    35d4:	44cdf800 	ctc1	t5,$31
    35d8:	3c014f00 	lui	at,0x4f00
    35dc:	c568028c 	lwc1	$f8,652(t3)
    35e0:	264a1354 	addiu	t2,s2,4948
    35e4:	02402025 	move	a0,s2
    35e8:	460042a4 	cvt.w.s	$f10,$f8
    35ec:	2646137c 	addiu	a2,s2,4988
    35f0:	26471264 	addiu	a3,s2,4708
    35f4:	264811ec 	addiu	t0,s2,4588
    35f8:	444df800 	cfc1	t5,$31
    35fc:	264912dc 	addiu	t1,s2,4828
    3600:	31ad0078 	andi	t5,t5,0x78
    3604:	51a00013 	beqzl	t5,3654 <func_808D58E0+0x3e4>
    3608:	440d5000 	mfc1	t5,$f10
    360c:	44815000 	mtc1	at,$f10
    3610:	240d0001 	li	t5,1
    3614:	460a4281 	sub.s	$f10,$f8,$f10
    3618:	44cdf800 	ctc1	t5,$31
    361c:	00000000 	nop
    3620:	460052a4 	cvt.w.s	$f10,$f10
    3624:	444df800 	cfc1	t5,$31
    3628:	00000000 	nop
    362c:	31ad0078 	andi	t5,t5,0x78
    3630:	15a00005 	bnez	t5,3648 <func_808D58E0+0x3d8>
    3634:	00000000 	nop
    3638:	440d5000 	mfc1	t5,$f10
    363c:	3c018000 	lui	at,0x8000
    3640:	10000007 	b	3660 <func_808D58E0+0x3f0>
    3644:	01a16825 	or	t5,t5,at
    3648:	10000005 	b	3660 <func_808D58E0+0x3f0>
    364c:	240dffff 	li	t5,-1
    3650:	440d5000 	mfc1	t5,$f10
    3654:	00000000 	nop
    3658:	05a0fffb 	bltz	t5,3648 <func_808D58E0+0x3d8>
    365c:	00000000 	nop
    3660:	31ae00ff 	andi	t6,t5,0xff
    3664:	000e7c00 	sll	t7,t6,0x10
    3668:	01f1c025 	or	t8,t7,s1
    366c:	371900ff 	ori	t9,t8,0xff
    3670:	ac790004 	sw	t9,4(v1)
    3674:	44ccf800 	ctc1	t4,$31
    3678:	afaa0018 	sw	t2,24(sp)
    367c:	afa90014 	sw	t1,20(sp)
    3680:	afa80010 	sw	t0,16(sp)
    3684:	0c000000 	jal	0 <func_808D2670>
    3688:	8fa500ac 	lw	a1,172(sp)
    368c:	8fab00ac 	lw	t3,172(sp)
    3690:	3c060000 	lui	a2,0x0
    3694:	24c60000 	addiu	a2,a2,0
    3698:	27a40088 	addiu	a0,sp,136
    369c:	24070a29 	li	a3,2601
    36a0:	0c000000 	jal	0 <func_808D2670>
    36a4:	8d650000 	lw	a1,0(t3)
    36a8:	8fbf006c 	lw	ra,108(sp)
    36ac:	d7b40028 	ldc1	$f20,40(sp)
    36b0:	d7b60030 	ldc1	$f22,48(sp)
    36b4:	d7b80038 	ldc1	$f24,56(sp)
    36b8:	d7ba0040 	ldc1	$f26,64(sp)
    36bc:	d7bc0048 	ldc1	$f28,72(sp)
    36c0:	d7be0050 	ldc1	$f30,80(sp)
    36c4:	8fb00058 	lw	s0,88(sp)
    36c8:	8fb1005c 	lw	s1,92(sp)
    36cc:	8fb20060 	lw	s2,96(sp)
    36d0:	8fb30064 	lw	s3,100(sp)
    36d4:	8fb40068 	lw	s4,104(sp)
    36d8:	03e00008 	jr	ra
    36dc:	27bd00a8 	addiu	sp,sp,168

000036e0 <BossFd2_Draw>:
    36e0:	27bdff88 	addiu	sp,sp,-120
    36e4:	afb20040 	sw	s2,64(sp)
    36e8:	00a09025 	move	s2,a1
    36ec:	afbf0044 	sw	ra,68(sp)
    36f0:	afb1003c 	sw	s1,60(sp)
    36f4:	afb00038 	sw	s0,56(sp)
    36f8:	8ca50000 	lw	a1,0(a1)
    36fc:	00808825 	move	s1,a0
    3700:	3c060000 	lui	a2,0x0
    3704:	24c60000 	addiu	a2,a2,0
    3708:	27a4005c 	addiu	a0,sp,92
    370c:	24070a39 	li	a3,2617
    3710:	0c000000 	jal	0 <func_808D2670>
    3714:	00a08025 	move	s0,a1
    3718:	3c040000 	lui	a0,0x0
    371c:	0c000000 	jal	0 <func_808D2670>
    3720:	24840000 	addiu	a0,a0,0
    3724:	8e2f0190 	lw	t7,400(s1)
    3728:	3c0e0000 	lui	t6,0x0
    372c:	25ce0000 	addiu	t6,t6,0
    3730:	11cf0075 	beq	t6,t7,3908 <BossFd2_Draw+0x228>
    3734:	00000000 	nop
    3738:	0c000000 	jal	0 <func_808D2670>
    373c:	8e440000 	lw	a0,0(s2)
    3740:	863801a6 	lh	t8,422(s1)
    3744:	240500ff 	li	a1,255
    3748:	240600ff 	li	a2,255
    374c:	33190002 	andi	t9,t8,0x2
    3750:	13200009 	beqz	t9,3778 <BossFd2_Draw+0x98>
    3754:	240700ff 	li	a3,255
    3758:	8e0402c0 	lw	a0,704(s0)
    375c:	24080384 	li	t0,900
    3760:	2409044b 	li	t1,1099
    3764:	afa90018 	sw	t1,24(sp)
    3768:	afa80014 	sw	t0,20(sp)
    376c:	0c000000 	jal	0 <func_808D2670>
    3770:	afa00010 	sw	zero,16(sp)
    3774:	ae0202c0 	sw	v0,704(s0)
    3778:	8e0202c0 	lw	v0,704(s0)
    377c:	3c0bdb06 	lui	t3,0xdb06
    3780:	356b0024 	ori	t3,t3,0x24
    3784:	244a0008 	addiu	t2,v0,8
    3788:	ae0a02c0 	sw	t2,704(s0)
    378c:	ac4b0000 	sw	t3,0(v0)
    3790:	922c0223 	lbu	t4,547(s1)
    3794:	3c040000 	lui	a0,0x0
    3798:	3c080000 	lui	t0,0x0
    379c:	000c6880 	sll	t5,t4,0x2
    37a0:	008d2021 	addu	a0,a0,t5
    37a4:	8c840000 	lw	a0,0(a0)
    37a8:	3c0100ff 	lui	at,0xff
    37ac:	3421ffff 	ori	at,at,0xffff
    37b0:	00047900 	sll	t7,a0,0x4
    37b4:	000fc702 	srl	t8,t7,0x1c
    37b8:	0018c880 	sll	t9,t8,0x2
    37bc:	01194021 	addu	t0,t0,t9
    37c0:	8d080000 	lw	t0,0(t0)
    37c4:	00817024 	and	t6,a0,at
    37c8:	3c018000 	lui	at,0x8000
    37cc:	01c84821 	addu	t1,t6,t0
    37d0:	01215021 	addu	t2,t1,at
    37d4:	ac4a0004 	sw	t2,4(v0)
    37d8:	8e0202c0 	lw	v0,704(s0)
    37dc:	3c0cdb06 	lui	t4,0xdb06
    37e0:	358c0020 	ori	t4,t4,0x20
    37e4:	244b0008 	addiu	t3,v0,8
    37e8:	ae0b02c0 	sw	t3,704(s0)
    37ec:	ac4c0000 	sw	t4,0(v0)
    37f0:	c62801cc 	lwc1	$f8,460(s1)
    37f4:	c62401c8 	lwc1	$f4,456(s1)
    37f8:	8e440000 	lw	a0,0(s2)
    37fc:	240e0001 	li	t6,1
    3800:	24190020 	li	t9,32
    3804:	24180020 	li	t8,32
    3808:	afb80010 	sw	t8,16(sp)
    380c:	afb90014 	sw	t9,20(sp)
    3810:	afae0018 	sw	t6,24(sp)
    3814:	c63001d0 	lwc1	$f16,464(s1)
    3818:	4600218d 	trunc.w.s	$f6,$f4
    381c:	240e0020 	li	t6,32
    3820:	00002825 	move	a1,zero
    3824:	4600848d 	trunc.w.s	$f18,$f16
    3828:	44063000 	mfc1	a2,$f6
    382c:	4600428d 	trunc.w.s	$f10,$f8
    3830:	44099000 	mfc1	t1,$f18
    3834:	00063400 	sll	a2,a2,0x10
    3838:	00063403 	sra	a2,a2,0x10
    383c:	00095400 	sll	t2,t1,0x10
    3840:	000a5c03 	sra	t3,t2,0x10
    3844:	afab001c 	sw	t3,28(sp)
    3848:	c62401d4 	lwc1	$f4,468(s1)
    384c:	44075000 	mfc1	a3,$f10
    3850:	afae0028 	sw	t6,40(sp)
    3854:	4600218d 	trunc.w.s	$f6,$f4
    3858:	00073c00 	sll	a3,a3,0x10
    385c:	00073c03 	sra	a3,a3,0x10
    3860:	afb90024 	sw	t9,36(sp)
    3864:	440d3000 	mfc1	t5,$f6
    3868:	afa20054 	sw	v0,84(sp)
    386c:	000d7c00 	sll	t7,t5,0x10
    3870:	000fc403 	sra	t8,t7,0x10
    3874:	0c000000 	jal	0 <func_808D2670>
    3878:	afb80020 	sw	t8,32(sp)
    387c:	8fa30054 	lw	v1,84(sp)
    3880:	3c09fa00 	lui	t1,0xfa00
    3884:	240affff 	li	t2,-1
    3888:	ac620004 	sw	v0,4(v1)
    388c:	8e0202c0 	lw	v0,704(s0)
    3890:	3c0cfb00 	lui	t4,0xfb00
    3894:	240dff80 	li	t5,-128
    3898:	24480008 	addiu	t0,v0,8
    389c:	ae0802c0 	sw	t0,704(s0)
    38a0:	ac4a0004 	sw	t2,4(v0)
    38a4:	ac490000 	sw	t1,0(v0)
    38a8:	8e0202c0 	lw	v0,704(s0)
    38ac:	3c0f0000 	lui	t7,0x0
    38b0:	3c180000 	lui	t8,0x0
    38b4:	244b0008 	addiu	t3,v0,8
    38b8:	ae0b02c0 	sw	t3,704(s0)
    38bc:	ac4d0004 	sw	t5,4(v0)
    38c0:	ac4c0000 	sw	t4,0(v0)
    38c4:	9227014e 	lbu	a3,334(s1)
    38c8:	8e26016c 	lw	a2,364(s1)
    38cc:	8e250150 	lw	a1,336(s1)
    38d0:	27180000 	addiu	t8,t8,0
    38d4:	25ef0000 	addiu	t7,t7,0
    38d8:	afaf0010 	sw	t7,16(sp)
    38dc:	afb80014 	sw	t8,20(sp)
    38e0:	afb10018 	sw	s1,24(sp)
    38e4:	0c000000 	jal	0 <func_808D2670>
    38e8:	02402025 	move	a0,s2
    38ec:	02202025 	move	a0,s1
    38f0:	0c000000 	jal	0 <func_808D2670>
    38f4:	02402825 	move	a1,s2
    38f8:	02402025 	move	a0,s2
    38fc:	0c000000 	jal	0 <func_808D2670>
    3900:	8e0502c0 	lw	a1,704(s0)
    3904:	ae0202c0 	sw	v0,704(s0)
    3908:	3c060000 	lui	a2,0x0
    390c:	24c60000 	addiu	a2,a2,0
    3910:	27a4005c 	addiu	a0,sp,92
    3914:	8e450000 	lw	a1,0(s2)
    3918:	0c000000 	jal	0 <func_808D2670>
    391c:	24070a80 	li	a3,2688
    3920:	8fbf0044 	lw	ra,68(sp)
    3924:	8fb00038 	lw	s0,56(sp)
    3928:	8fb1003c 	lw	s1,60(sp)
    392c:	8fb20040 	lw	s2,64(sp)
    3930:	03e00008 	jr	ra
    3934:	27bd0078 	addiu	sp,sp,120
	...
